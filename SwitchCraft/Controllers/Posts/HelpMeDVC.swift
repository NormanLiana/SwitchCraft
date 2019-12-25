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
        return btn
    }()
    
    lazy var directMessageButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Direct Message", for: .normal)
        return btn
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    // MARK: - Constraint Methods
    private func constrainTitleLabel() {
        
    }
}
