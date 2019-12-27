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
    }
    
}
