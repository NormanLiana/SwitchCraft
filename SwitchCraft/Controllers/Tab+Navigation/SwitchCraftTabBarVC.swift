//
//  SwitchCraftTabBarVC.swift
//  SwitchCraft
//
//  Created by Liana Norman on 12/2/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import UIKit

class SwitchCraftTabBarVC: UITabBarController {

    // MARK: - UI Objects
    lazy var helpMeVC = UINavigationController(rootViewController: HelpMeVC())
    
    lazy var createPostVC = UINavigationController(rootViewController: CreateHelpPostVC())
    
    lazy var profileVC: UINavigationController = {
        let profileVC = ProfileVC()
        profileVC.user = AppUser(from: FirebaseAuthService.manager.currentUser!)
        profileVC.isCurrentUser = true
        return UINavigationController(rootViewController: profileVC)
    }()
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        helpMeVC.tabBarItem = UITabBarItem(title: "Help Me!", image: UIImage(systemName: "rhombus"), tag: 0)
        createPostVC.tabBarItem = UITabBarItem(title: "Post", image: UIImage(systemName: "plus.square"), tag: 1)
        profileVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 2)
        
        self.viewControllers = [helpMeVC, createPostVC, profileVC]
    }
    


}
