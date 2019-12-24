//
//  HelpMeVC.swift
//  SwitchCraft
//
//  Created by Liana Norman on 12/2/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class HelpMeVC: UIViewController {
    
    // MARK: - UI Objects
    lazy var helpCV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.register(HelpMeCVCell.self, forCellWithReuseIdentifier: CellIdentifier.helpPostCell.rawValue)
        return cv
    }()

    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
        delegation()
    }
    
    // MARK: - Private Methods
    private func addSubviews() {
        view.addSubview(helpCV)
    }
    
    private func addConstraints() {
        constrainCV()
    }
    
    private func delegation() {
        helpCV.delegate = self
        helpCV.dataSource = self
    }
    
    // MARK: - COnstraint Methods
    private func constrainCV() {
        helpCV.translatesAutoresizingMaskIntoConstraints = false
        
        [helpCV.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor), helpCV.leadingAnchor.constraint(equalTo: view.leadingAnchor), helpCV.trailingAnchor.constraint(equalTo: view.trailingAnchor), helpCV.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)].forEach({$0.isActive = true})
    }
}

extension HelpMeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = helpCV.dequeueReusableCell(withReuseIdentifier: CellIdentifier.helpPostCell.rawValue, for: indexPath) as? HelpMeCVCell {
            cell.backgroundColor = .systemPink
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}

extension HelpMeVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 125, height: 125)
    }
}

extension HelpMeVC: UICollectionViewDelegate {}
