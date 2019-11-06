//
//  SignupVC.swift
//  TableViewproj
//
//  Created by Akash Desai on 2019-11-05.
//  Copyright © 2019 Akash Desai. All rights reserved.
//

import UIKit
import QuartzCore

class SignupVC: UIViewController {
    
    var verticalStack = UIStackView()
    var firstNameTextField = UITextField()
    var lastNameTextField = UITextField()
    var emailTextField = UITextField()
    var passwordTextField = UITextField()
    var signUpButton = UIButton()
    var errorLabel = UILabel()
    
    var y = screen.height*0.15
    var width = screen.width - 80
    var greenColor = UIColor.init(red: 30, green: 215, blue: 96)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupUserForm()
        
    
    }
    func setupUserForm() {
        self.view.addSubview(verticalStack)
        verticalStack.axis = .vertical
        verticalStack.spacing = 20
        verticalStack.frame = CGRect(x: 40, y: y, width: width, height: 340)
//        verticalStack.layer.borderColor = greenColor.cgColor
//        verticalStack.layer.borderWidth = 2
//        verticalStack.layer.backgroundColor = UIColor.gray.cgColor
        
        
        verticalStack.addArrangedSubview(firstNameTextField)
            firstNameTextField.placeholder = "First Name"
//            firstNameTextField.layer.borderColor = UIColor.black.cgColor
//            firstNameTextField.layer.borderWidth = 2
        verticalStack.addArrangedSubview(lastNameTextField)
            lastNameTextField.placeholder = "Last Name"
//            lastNameTextField.layer.borderColor = UIColor.black.cgColor
//            lastNameTextField.layer.borderWidth = 2
        verticalStack.addArrangedSubview(emailTextField)
            emailTextField.placeholder = "Email Address"
//            emailTextField.layer.borderColor = UIColor.black.cgColor
//            emailTextField.layer.borderWidth = 2
        verticalStack.addArrangedSubview(passwordTextField)
            passwordTextField.placeholder = "Password"
            passwordTextField.isSecureTextEntry = true
//            passwordTextField.layer.borderColor = UIColor.black.cgColor
//            passwordTextField.layer.borderWidth = 2
        verticalStack.addArrangedSubview(signUpButton)
            signUpButton.setTitle("Signup", for: .normal)
            signUpButton.setTitleColor(greenColor, for: .normal)
            signUpButton.layer.borderColor = UIColor.black.cgColor
            signUpButton.layer.borderWidth = 2
        verticalStack.addArrangedSubview(errorLabel)
            errorLabel.alpha = 0
        verticalStack.distribution = .equalSpacing
        
    }

}
