//
//  MainVC.swift
//  TableViewproj
//
//  Created by Akash Desai on 2019-11-05.
//  Copyright © 2019 Akash Desai. All rights reserved.
//

import UIKit
import QuartzCore

class MainVC: UIViewController {

    var signupButton = UIButton()
    var signinButton = UIButton()
    var x = screen.width
    var y = screen.height*0.85
    var width = screen.width - 80
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setButtonProperties()
        
    }
    
    func setButtonProperties() {
        self.view.addSubview(signupButton)
        self.view.addSubview(signinButton)
        
        signupButton.frame = CGRect(x: 40, y: y, width: width, height: 40)
        signinButton.frame = CGRect(x: 40, y: y-55, width: width, height: 40)
        
        signupButton.layer.cornerRadius = 5
        signinButton.layer.cornerRadius = 5
       
        signupButton.setTitle("Signup", for: UIControl.State.normal)
        signinButton.setTitle("Sign In", for: UIControl.State.normal)
        
        signupButton.titleLabel?.font = UIFont(name: "Arial", size: 18)
        signinButton.titleLabel?.font = UIFont(name: "Arial", size: 18)
        
//        signupButton.titleLabel?.textColor = UIColor.black
//        signinButton.titleLabel?.textColor = UIColor.black.ciColor
        
        signupButton.backgroundColor = .green
        signinButton.backgroundColor = .white
        signinButton.layer.borderColor = UIColor.black.cgColor
        signinButton.layer.borderWidth = 2
        
        
        
        
    }
    

}



