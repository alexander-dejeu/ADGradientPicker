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
  var gradient : gradient? = nil
  var singleFullScreen = false
  
  //MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.layer.addSublayer(gradientLayer)
    
    let tapTouchGesture = UITapGestureRecognizer(target: self, action: #selector(setRandomGradient(_:)))
    self.view.addGestureRecognizer(tapTouchGesture)
    
    let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(_:)))
    swipeRight.direction = UISwipeGestureRecognizerDirection.right
    self.view.addGestureRecognizer(swipeRight)
    
    if !singleFullScreen {
      gradient = gradients.getRandomGradient()
    }
    gradientLayer.frame = self.view.bounds
    gradientLayer.colors = gradient?.colors.map {$0.cgColor}
  }
  
  //MARK: - Helpers
  func setRandomGradient(_ gestureRecognizer: UITapGestureRecognizer){
    if singleFullScreen {
      self.dismiss(animated: true, completion: nil)
    }
    else{
      gradientLayer.colors = gradients.getRandomGradient().colors.map {$0.cgColor}
    }
  }
  
  func handleSwipeGesture(_ gestureRecognizer: UISwipeGestureRecognizer){
    switch gestureRecognizer.direction{
    case UISwipeGestureRecognizerDirection.right:
      print("right")
      self.dismiss(animated: true, completion: nil)
//      self.dis
    case UISwipeGestureRecognizerDirection.up:
      print("up")
    case UISwipeGestureRecognizerDirection.down:
      print("hide it")
    default:
      print("Yeah some strange swipe")
    }
  }
  
}
