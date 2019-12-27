//
//  ProfileVC.swift
//  SwitchCraft
//
//  Created by Liana Norman on 12/2/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    // MARK: - UI Objects
    lazy var profileImage: UIImageView = {
        let img = UIImageView()
        img.backgroundColor = .brown
        return img
    }()
    
    lazy var nameLabel: UILabel = {
       let label = UILabel()
       label.backgroundColor = .brown
       return label
    }()
    
    lazy var locationLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .brown
        return label
    }()
    
    lazy var bioTextView: UITextView = {
        let tv = UITextView()
        tv.backgroundColor = .brown
        return tv
    }()
    
    lazy var directMessageButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Send Message", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        return btn
    }()
    
    lazy var serviceRequestButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Send Message", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        return btn
    }()
    
    lazy var availableHoursLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .brown
        return label
    }()
    
    lazy var pendingHoursLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .brown
        return label
    }()

    // MARK: - Properties
    var user: AppUser!
    var isCurrentUser = false
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubviews()
        addConstraints()
    }
    
    // MARK: - Private Methods
    private func addSubviews() {
        view.addSubview(profileImage)
        view.addSubview(nameLabel)
        view.addSubview(locationLabel)
        view.addSubview(bioTextView)
        view.addSubview(directMessageButton)
        view.addSubview(serviceRequestButton)
        view.addSubview(availableHoursLabel)
        view.addSubview(pendingHoursLabel)
    }
    
    private func addConstraints() {
        constrainProfileIMG()
        constrainNameLabel()
        constrainLocationLabel()
        constrainBioTxtView()
        constrainAvailHRSLabel()
    }
    
    private func setUpVCView() {
        view.backgroundColor = .white
    }
    
    // MARK: - Constraint Methods
    private func constrainProfileIMG() {
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        
        [profileImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15), profileImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15), profileImage.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.37), profileImage.heightAnchor.constraint(equalTo: profileImage.widthAnchor)].forEach({$0.isActive = true})
    }
    
    private func constrainNameLabel() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [nameLabel.bottomAnchor.constraint(equalTo: profileImage.centerYAnchor), nameLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 15), nameLabel.widthAnchor.constraint(equalTo: profileImage.widthAnchor, multiplier: 1.4), nameLabel.heightAnchor.constraint(equalTo: profileImage.heightAnchor, multiplier: 0.3)].forEach({$0.isActive = true})
    }
    
    private func constrainLocationLabel() {
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [locationLabel.topAnchor.constraint(equalTo: profileImage.centerYAnchor), locationLabel.leadingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 15), locationLabel.widthAnchor.constraint(equalTo: profileImage.widthAnchor, multiplier: 1.4), locationLabel.heightAnchor.constraint(equalTo: profileImage.heightAnchor, multiplier: 0.3)].forEach({$0.isActive = true})
    }
    
    private func constrainBioTxtView() {
        bioTextView.translatesAutoresizingMaskIntoConstraints = false
        
        [bioTextView.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 25), bioTextView.leadingAnchor.constraint(equalTo: profileImage.leadingAnchor), bioTextView.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor), bioTextView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25)].forEach({$0.isActive = true})
    }
    
    private func constrainAvailHRSLabel() {
        availableHoursLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [availableHoursLabel.topAnchor.constraint(equalTo: bioTextView.bottomAnchor, constant: 10), availableHoursLabel.leadingAnchor.constraint(equalTo: bioTextView.leadingAnchor, constant: 10), availableHoursLabel.trailingAnchor.constraint(equalTo: bioTextView.centerXAnchor), availableHoursLabel.heightAnchor.constraint(equalTo: bioTextView.heightAnchor, multiplier: 0.25)].forEach({$0.isActive = true})
    }
    
}
