//
//  cellShapeIndicatorView.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 3/2/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

class cellShapeIndicatorView: UIView {

  let displayLayer : CALayer = CALayer()
  
  func drawIndicator(state : shapeOutline){
    
    switch state{
    case .square:
      drawSquare()
    case .circle:
      drawCircle()
    }
  }

  func drawSquare(){
    displayLayer.cornerRadius = 0
  }
  
  func drawCircle(){
    displayLayer.cornerRadius = displayLayer.frame.height / 2.0
  }
  
  func setup(){
    self.layer.addSublayer(displayLayer)
    displayLayer.backgroundColor = UIColor.clear.cgColor
    displayLayer.frame = CGRect(x: 4, y: 4, width: 32, height: 32)
    displayLayer.borderWidth = 0.5
    displayLayer.borderColor = UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0).cgColor
  }
}
