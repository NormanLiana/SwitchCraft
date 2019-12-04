//
//  FirebaseAuthService.swift
//  SwitchCraft
//
//  Created by Liana Norman on 12/3/19.
//  Copyright © 2019 Liana Norman. All rights reserved.
//

import Foundation
import FirebaseAuth

class FirebaseAuthService {
    
    static let manager = FirebaseAuthService()
    
    private let auth = Auth.auth()
    
    var currentUser: User? {
        return auth.currentUser
    }
    
    func createNewUser(email: String, password: String, completion: @escaping (Result<User, Error>) -> () ) {
        auth.createUser(withEmail: email, password: password) { (result, error) in
            if let createdUser = result?.user {
                completion(.success(createdUser))
            } else if let error = error {
                completion(.failure(error))
            }
        }
    }
    
    func logInUser(email: String, password: String, completion: @escaping (Result<(), Error>) -> () ) {
        auth.signIn(withEmail: email, password: password) { (result, error) in
            if let _ = result?.user {
                completion(.success(()))
            } else if let error = error {
                completion(.failure(error))
            }
        }
    }
    
    func signOutUser() {
        do {
            try auth.signOut()
        } catch let error {
            print(error)
        }
    }
    
    func updateUserProfile(userName: String? = nil, photoURL: URL? = nil, completion: @escaping (Result<(), Error>) -> ()) {
        let changeRequest = auth.currentUser?.createProfileChangeRequest()
        if let userName = userName {
            changeRequest?.displayName = userName
        }
        
        if let photoURL = photoURL {
            changeRequest?.photoURL = photoURL
        }
        
        changeRequest?.commitChanges(completion: { (error) in
            if let error = error {
                completion(.failure(error))
            } else {
                completion(.success(()))
            }
        })
    }

    
    private init () {}
}
