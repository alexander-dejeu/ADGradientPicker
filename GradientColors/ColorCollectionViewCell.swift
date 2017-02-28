//
//  ColorCollectionViewCell.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 2/21/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

enum shapeOutline {
  case square
  case circle
}

enum cellSize {
  case quarterSquare
  case square
  case rectangle
}

class ColorCollectionViewCell: UICollectionViewCell {

  @IBOutlet weak var colorTitleLabel : UILabel!
  @IBOutlet weak var colorView : UIView!
  @IBOutlet weak var colorHexLabel : UILabel!
  
  var colorViewOutline : shapeOutline = .square
  
  var cellGradient : gradient? = nil{
    didSet{
      addGradient()
      setHexLabel()
      let formatedID = String(format: "%03d", (cellGradient?.id)!)
      colorTitleLabel.text = "\(formatedID) \((cellGradient?.title)!)"
    }
  }
  
  func addGradient(){
    if cellGradient?.direction == .radial {
      let radialLayer = RadialGradientLayer(center: CGPoint(x: colorView.frame.width/2, y: colorView.frame.height/2) , radius: self.colorView.bounds.width, colors: (cellGradient?.colors.map {$0.cgColor})!)
      
      radialLayer.setNeedsDisplay()
      radialLayer.frame = CGRect(x: 0, y: 0, width: colorView.frame.width, height: colorView.frame.height)
      colorView.layer.addSublayer(radialLayer)
      print(radialLayer.frame)
      print(radialLayer.bounds)
      print(radialLayer.center)
      

      
      
    }
    else{
      let gradientLayer = CAGradientLayer()
      gradientLayer.frame = colorView.bounds
      gradientLayer.colors = cellGradient?.colors.map {$0.cgColor}
      
      let startAndEndLocations = cellGradient?.direction.getStartEndPoints()
      gradientLayer.startPoint = (startAndEndLocations?[0])!
      gradientLayer.endPoint = (startAndEndLocations?[1])!
      
      colorView.layer.addSublayer(gradientLayer)
    }
    
    if colorViewOutline == .square{
      colorView.addCornerRadiusAnimation(to: 0, duration: 0.2)
      colorView.clipsToBounds = true
    }
    else if colorViewOutline == .circle{
      colorView.addCornerRadiusAnimation(to: colorView.frame.width / 2.0, duration: 0.2)
      colorView.clipsToBounds = true
    }
    
  }
  
  func setHexLabel(){
    if (cellGradient?.colors.count)! > 2{
      colorHexLabel.text = "many colors"
    }
    else if cellGradient?.colors.count == 2 {
      colorHexLabel.text = "\(cellGradient!.colors[0].getHexValue()) → \(cellGradient!.colors[1].getHexValue())"
    }
  }
}

extension UIView
{
  func addCornerRadiusAnimation(to: CGFloat, duration: CFTimeInterval)
  {
    let animation = CABasicAnimation(keyPath:"cornerRadius")
    animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
    animation.fromValue = self.layer.cornerRadius
    animation.toValue = to
    animation.duration = duration
    self.layer.add(animation, forKey: "cornerRadius")
    self.layer.cornerRadius = to
  }
}
