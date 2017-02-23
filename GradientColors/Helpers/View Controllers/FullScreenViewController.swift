//
//  FullScreenViewController.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 2/23/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

class FullScreenViewController: UIViewController {

  let gradientLayer = CAGradientLayer()
  
  //MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.layer.addSublayer(gradientLayer)
    
    let tapTouchGesture = UITapGestureRecognizer(target: self, action: #selector(setRandomGradient(_:)))
    self.view.addGestureRecognizer(tapTouchGesture)
  }
  
  //MARK: - Helpers
  func setRandomGradient(_ gestureRecognizer: UITapGestureRecognizer){
    gradientLayer.frame = self.view.bounds
    gradientLayer.colors = gradients.getRandomGradient().map {$0.cgColor}
  }
  
  
}
