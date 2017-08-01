//
//  SecondViewController.swift
//  W6D2-LoginScreen
//
//  Created by steve on 2017-07-31.
//  Copyright © 2017 ToyBox Media. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
  var blueView: UIView!
  var orangeView: UIView!
  var insetRect: CGRect!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    blueView = UIView()
    blueView.bounds.size = CGSize(width: 150, height: 150)
    blueView.center = view.center
    blueView.backgroundColor = .blue
    view.addSubview(blueView)
    
    orangeView = UIView()
    orangeView.backgroundColor = .orange
    let inset = UIEdgeInsetsMake(20, 20, 20, 20)
    insetRect = UIEdgeInsetsInsetRect(blueView.bounds, inset)
    orangeView.frame = insetRect
    blueView.addSubview(orangeView)
  }
  @IBAction func buttonTapped() {
    flip()
  }
  
  func flip() {
    UIView.transition(with: blueView, duration: 1.0, options: [.transitionFlipFromRight], animations: {
      
      self.orangeView.removeFromSuperview()
      self.orangeView.alpha = 0.0
      let grayView = UIView(frame: self.insetRect)
      grayView.backgroundColor = .gray
      self.blueView.addSubview(grayView)
      
    }) { _ in
      UIView.animate(withDuration: 1.0, animations: {
        self.blueView.addSubview(self.orangeView)
        self.orangeView.alpha = 1.0
      })
    }
  }
  
  
  
  
  
  
  
}
