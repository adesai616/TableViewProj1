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
    var y = screen.height*0.85
    var width = screen.width - 80
    var greenColor = UIColor.init(red: 30, green: 215, blue: 96)
    let signupVC = SignupVC()
    let signinVC = SigninVC()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        setButtonProperties()
        signupButton.addTarget(self, action: #selector(MainVC.signUpButtonPressed(_:)), for: .touchUpInside)
        signinButton.addTarget(self, action: #selector(MainVC.signInButtonPressed(_:)), for: .touchUpInside)
        
    }
    
    func setButtonProperties() {
        self.view.addSubview(signupButton)
        self.view.addSubview(signinButton)
        
        signupButton.frame = CGRect(x: 40, y: y, width: width, height: 40)
        signinButton.frame = CGRect(x: 40, y: y-55, width: width, height: 40)
        
        signupButton.layer.cornerRadius = 5
        signinButton.layer.cornerRadius = 5
       
        signupButton.setTitle("Signup", for: .normal)
        signinButton.setTitle("Sign In", for: .normal)
        
        signupButton.titleLabel?.font = UIFont(name: "Arial", size: 18)
        signinButton.titleLabel?.font = UIFont(name: "Arial", size: 18)
        
        signupButton.setTitleColor(UIColor.white, for: .normal)
        signinButton.setTitleColor(greenColor, for: .normal)
        
        signupButton.backgroundColor   = greenColor
        signinButton.backgroundColor   = .white
       
        signupButton.layer.borderColor = greenColor.cgColor
        signupButton.layer.borderWidth = 2
        signinButton.layer.borderColor = UIColor.black.cgColor
        signinButton.layer.borderWidth = 2
    }
   

    @IBAction func signUpButtonPressed(_ sender:UIButton!) {
        navigationController?.pushViewController(signupVC, animated: true)
    }
    @IBAction func signInButtonPressed(_ sender:UIButton!) {
        navigationController?.pushViewController(signinVC, animated: true)
    }
}



