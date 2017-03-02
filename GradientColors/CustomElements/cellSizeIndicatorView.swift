//
//  cellSizeIndicatorView.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 3/2/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

class cellSizeIndicatorView: UIView {
  
  
  func clearAllSubviews(){
    if let layers = self.layer.sublayers {
      for layer in layers{
        layer.removeFromSuperlayer()
      }
    }
  }
  
  func drawIndicator(state : cellSize){
    clearAllSubviews()
    switch state{
    case .square:
      drawSingleSquare()
    case .rectangle:
      drawRectange()
    case .quarterSquare:
      drawFourSquares()
    }
  }
  
  func drawFourSquares(){
    let topLeft = CALayer()
    let topRight = CALayer()
    let bottomRight = CALayer()
    let bottomLeft = CALayer()
    
    topLeft.frame = CGRect(x: 4, y: 4, width: 15, height: 15)
    topRight.frame = CGRect(x: topLeft.frame.maxX + 2, y: topLeft.frame.minY , width: topLeft.frame.width, height: topLeft.frame.height)
    bottomRight.frame = CGRect(x: topRight.frame.minX, y: topRight.frame.maxY + 2, width: topRight.frame.width, height: topRight.frame.height)
    bottomLeft.frame = CGRect(x: topLeft.frame.minX, y: topLeft.frame.maxY + 2, width: topLeft.frame.width, height: topLeft.frame.height)
    
    let arrayOfLayers : [CALayer] = [topLeft, topRight, bottomRight, bottomLeft]
    
    for curLayer in arrayOfLayers{
      curLayer.backgroundColor = UIColor.clear.cgColor
      curLayer.borderWidth = 0.5
      curLayer.borderColor = UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0).cgColor
      self.layer.addSublayer(curLayer)
    }
  }
  
  func drawSingleSquare(){
    let bigSquare = CALayer()
    bigSquare.frame = CGRect(x: 4, y: 4, width: 32, height: 32)
    bigSquare.backgroundColor = UIColor.clear.cgColor
    bigSquare.borderWidth = 0.5
    bigSquare.borderColor = UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0).cgColor
    self.layer.addSublayer(bigSquare)
  }
  
  func drawRectange(){
    let rect = CALayer()
    rect.frame = CGRect(x: 4, y: 12, width: 32, height: 16)
    rect.backgroundColor = UIColor.clear.cgColor
    rect.borderWidth = 0.5
    rect.borderColor = UIColor(red: 151.0/255.0, green: 151.0/255.0, blue: 151.0/255.0, alpha: 1.0).cgColor
    self.layer.addSublayer(rect)
  }
}
