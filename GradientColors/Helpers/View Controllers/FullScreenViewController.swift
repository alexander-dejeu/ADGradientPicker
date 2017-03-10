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
  let backgroundView : UIView = UIView()
  let colorTitleLabel : UILabel = UILabel()
  let contentLabel : UILabel = UILabel()
  
  //MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.layer.addSublayer(gradientLayer)
    addAllGestureRecognizers()
    
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
  
  func addAllGestureRecognizers(){
    let tapTouchGesture = UITapGestureRecognizer(target: self, action: #selector(setRandomGradient(_:)))
    self.view.addGestureRecognizer(tapTouchGesture)
    
    let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(_:)))
    swipeRight.direction = UISwipeGestureRecognizerDirection.right
    self.view.addGestureRecognizer(swipeRight)
    
    let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(_:)))
    swipeUp.direction = UISwipeGestureRecognizerDirection.up
    self.view.addGestureRecognizer(swipeUp)
    
    let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(_:)))
    swipeDown.direction = UISwipeGestureRecognizerDirection.down
    self.view.addGestureRecognizer(swipeDown)
    
    addDetailCoverView()

  }
  
  func handleSwipeGesture(_ gestureRecognizer: UISwipeGestureRecognizer){
    switch gestureRecognizer.direction{
    case UISwipeGestureRecognizerDirection.right:
      print("right")
      self.dismiss(animated: true, completion: nil)
//      self.dis
    case UISwipeGestureRecognizerDirection.up:
      print("up")
      UIView.animate(withDuration: 0.3, delay: 0.0, options: [],
                     animations: {
                      self.backgroundView.center.y -= self.view.bounds.height
      }, 
                     completion: nil
      )
    case UISwipeGestureRecognizerDirection.down:
      print("hide it")
      UIView.animate(withDuration: 0.3, delay: 0.0, options: [],
                     animations: {
                      self.backgroundView.center.y += self.view.bounds.height
      },
                     completion: nil
      )
    default:
      print("Yeah some strange swipe")
    }
  }
  
  func addDetailCoverView(){
    backgroundView.backgroundColor = UIColor(red: 74.0/255.0, green: 74.0/255.0, blue: 74.0/255.0, alpha: 0.05)
    backgroundView.frame = CGRect(x: 0, y: self.view.frame.height / 3 , width: self.view.frame.width, height: self.view.frame.height/3*2)
    backgroundView.center.y  += view.bounds.height
    
    colorTitleLabel.frame = CGRect(x: 0, y: 24, width: backgroundView.frame.width, height: 50)
    colorTitleLabel.text = gradient?.title
    colorTitleLabel.font = UIFont(name: "Montserrat-Bold", size: 40.0)
    colorTitleLabel.textColor = .white
    colorTitleLabel.textAlignment = .center
    
    self.view.addSubview(backgroundView)
    backgroundView.addSubview(colorTitleLabel)
  }
  
}
