//
//  SigninVC.swift
//  TableViewproj
//
//  Created by Akash Desai on 2019-11-05.
//  Copyright © 2019 Akash Desai. All rights reserved.
//

import UIKit

class SigninVC: UIViewController {
    
      var verticalStack = UIStackView()
      var emailTextField = UITextField()
      var passwordTextField = UITextField()
      var signInButton = UIButton()
      var errorLabel = UILabel()
        
      var y = screen.height*0.15
      var width = screen.width - 80
      var greenColor = UIColor.init(red: 30, green: 215, blue: 96)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setupSigninForm()
    }
    

    func setupSigninForm() {
        self.view.addSubview(verticalStack)
        verticalStack.axis = .vertical
        verticalStack.spacing = 20
        verticalStack.frame = CGRect(x: 40, y: y, width: width, height: 220)
    
        
        verticalStack.addArrangedSubview(emailTextField)
            emailTextField.placeholder = "Email Address"
        verticalStack.addArrangedSubview(passwordTextField)
            passwordTextField.placeholder = "Password"
            passwordTextField.isSecureTextEntry = true
        verticalStack.addArrangedSubview(signInButton)
            signInButton.setTitle("Sign In", for: .normal)
            signInButton.setTitleColor(greenColor, for: .normal)
            signInButton.layer.borderColor = UIColor.black.cgColor
            signInButton.layer.borderWidth = 2
        
    }

}
