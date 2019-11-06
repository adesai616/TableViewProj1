//
//  UIView_ext.swift
//  TableViewproj
//
//  Created by Akash Desai on 2019-11-04.
//  Copyright © 2019 Akash Desai. All rights reserved.
//

import UIKit

extension UIView {
    
    func pin(to SuperView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: SuperView.topAnchor).isActive = true
        trailingAnchor.constraint(equalTo: SuperView.trailingAnchor).isActive = true
        leadingAnchor.constraint(equalTo: SuperView.leadingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: SuperView.bottomAnchor).isActive = true
    }
    
    func rkConstraints(to SuperView: UIView) {
         translatesAutoresizingMaskIntoConstraints = false
         topAnchor.constraint(equalTo: SuperView.topAnchor, constant: 450).isActive = true
         trailingAnchor.constraint(equalTo: SuperView.trailingAnchor).isActive = true
         leadingAnchor.constraint(equalTo: SuperView.leadingAnchor).isActive = true
         bottomAnchor.constraint(equalTo: SuperView.bottomAnchor).isActive = true
    }

}
extension UIColor {
      convenience init(red: Int, green: Int, blue: Int) {
          let newRed = CGFloat(red)/255
          let newGreen = CGFloat(green)/255
          let newBlue = CGFloat(blue)/255
          
          self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
      }
  }
