//
//  ViewController.swift
//  W6D2-LoginScreen
//
//  Created by Admin on 2016-10-11.
//  Copyright © 2016 ToyBox Media. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var usernameTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!

  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    animatePasswordTextfield()
  }
  
  private func animatePasswordTextfield() {
    UIView.animate(withDuration: 1, delay: 1, options: [], animations: {
      self.passwordTextField.center.x = self.view.center.x
    })
  }
  
  override func viewDidLayoutSubviews() {
    animateUserNameTextfield()
  }
  
  // when using storyboard make outlets to constraints like this
  @IBOutlet weak var centerXConstraint: NSLayoutConstraint!
  
  private func animateUserNameTextfield() {
  
    for constraint in view.constraints {
      
      // identifier can be set in code or in IB
      if constraint.identifier == "usernameCenterX"{
        
        constraint.isActive = false
        
        usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        UIView.animate(withDuration: 2.0) {
          self.view.layoutIfNeeded()
        }
        
        break
      }
    }
  }
}
