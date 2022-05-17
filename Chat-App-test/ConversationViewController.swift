//
//  ViewController.swift
//  Chat-App-test
//
//  Created by KimJongHee on 2022/05/16.
//

import UIKit

class ConversationViewController: UIViewController {

    override func viewDidLoad() {
        print("view did load")
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLoggedIn {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: true)
        }
    }


}

