//
//  cellSizeIndicatorView.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 3/2/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

class cellSizeIndicatorView: UIView {
  
  
  
  func drawIndicator(state : cellSize){
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
    
  }
  
  func drawRectange(){
    
  }
}
