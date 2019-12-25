//
//  HelpMeDVC.swift
//  SwitchCraft
//
//  Created by Liana Norman on 12/24/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class HelpMeDVC: UIViewController {

    // MARK: - UI Objects
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .brown
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var locationLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .brown
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var scopeTextView: UITextView = {
        let tv = UITextView()
        tv.backgroundColor = .brown
        tv.textColor = .black
        return tv
    }()
    
    lazy var timeCompletionLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .brown
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var acceptRequestButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Accept Request", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        return btn
    }()
    
    lazy var directMessageButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Direct Message", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        return btn
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
        setUpVCViews()
    }
    
    // MARK: - Private Methods
    private func addSubviews() {
        view.addSubview(titleLabel)
        view.addSubview(locationLabel)
        view.addSubview(scopeTextView)
        view.addSubview(timeCompletionLabel)
        view.addSubview(acceptRequestButton)
        view.addSubview(directMessageButton)
    }
    
    private func addConstraints() {
        constrainTitleLabel()
        constrainLocationLabel()
        constrainScopeTxtView()
        constrainTimeCompletionLabel()
        constrainDirectMessageBtn()
        constrainAcceptRequestBtn()
    }
    
    private func setUpVCViews() {
        view.backgroundColor = .white
    }
    
    // MARK: - Constraint Methods
    private func constrainTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20), titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor), titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor), titleLabel.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.11)].forEach({$0.isActive = true})
    }
    
    private func constrainLocationLabel() {
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [locationLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5), locationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor), locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor), locationLabel.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.05)].forEach({$0.isActive = true})
    }
    
    private func constrainScopeTxtView() {
        scopeTextView.translatesAutoresizingMaskIntoConstraints = false
        
        [scopeTextView.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 15), scopeTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor), scopeTextView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.80), scopeTextView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.6)].forEach({$0.isActive = true})
    }
    
    private func constrainTimeCompletionLabel() {
        timeCompletionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [timeCompletionLabel.topAnchor.constraint(equalTo: scopeTextView.bottomAnchor, constant: 15), timeCompletionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor), timeCompletionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor), timeCompletionLabel.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.08)].forEach({$0.isActive = true})
    }
    
    private func constrainDirectMessageBtn() {
        directMessageButton.translatesAutoresizingMaskIntoConstraints = false
        
        [directMessageButton.leadingAnchor.constraint(equalTo: view.leadingAnchor), directMessageButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor), directMessageButton.trailingAnchor.constraint(equalTo: view.centerXAnchor), directMessageButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.07)].forEach({$0.isActive = true})
    }
    
    private func constrainAcceptRequestBtn() {
        acceptRequestButton.translatesAutoresizingMaskIntoConstraints = false
        
        [acceptRequestButton.trailingAnchor.constraint(equalTo: view.trailingAnchor), acceptRequestButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor), acceptRequestButton.leadingAnchor.constraint(equalTo: view.centerXAnchor), acceptRequestButton.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.07)].forEach({$0.isActive = true})
    }
}
