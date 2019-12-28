//
//  CreateHelpPostVC.swift
//  SwitchCraft
//
//  Created by Liana Norman on 12/28/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class CreateHelpPostVC: UIViewController {

    // MARK: - UI Objects
    lazy var titleTF: UITextField = {
        let tv = UITextField()
        tv.placeholder = "Enter title"
        return tv
    }()
    
    lazy var locationTF: UITextField = {
        let tv = UITextField()
        tv.placeholder = "Enter location"
        return tv
    }()
    
    lazy var scopeTF: UITextField = {
        let tv = UITextField()
        tv.placeholder = "Enter description or scope of work"
        return tv
    }()
    
    lazy var sliderLabel: UILabel = {
        let label = UILabel()
        label.text = "How long do you think this task will take?"
        return label
    }()
    
    lazy var timeCompletionSlider: UISlider = {
        let slider = UISlider()
        return slider
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Private Methods
    private func addSubviews() {
        view.addSubview(titleTF)
        view.addSubview(locationTF)
        view.addSubview(scopeTF)
        view.addSubview(sliderLabel)
        view.addSubview(timeCompletionSlider)
    }
}
