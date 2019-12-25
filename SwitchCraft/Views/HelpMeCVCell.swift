//
//  HelpMeCVCell.swift
//  SwitchCraft
//
//  Created by Liana Norman on 12/23/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class HelpMeCVCell: UICollectionViewCell {
    
    // MARK: - UI Objects
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.textColor = .black
        label.text = "Yup!"
        return label
    }()
    
    lazy var locationLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.textColor = .black
        label.text = "Nope!"
        return label
    }()
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        addConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    private func addSubviews() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(locationLabel)
    }
    
    private func addConstraints() {
        constrainTitleLabel()
        constrainLocationLabel()
    }
    
    // MARK: - Constraint Methods
    private func constrainTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor), titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor), titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor), titleLabel.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.5)].forEach({$0.isActive = true})
    }
    
    private func constrainLocationLabel() {
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        [locationLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor), locationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor), locationLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor), locationLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)].forEach({$0.isActive = true})
    }
}
