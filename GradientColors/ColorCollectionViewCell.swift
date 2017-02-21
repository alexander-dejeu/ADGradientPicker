//
//  ColorCollectionViewCell.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 2/21/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

class ColorCollectionViewCell: UICollectionViewCell {

  @IBOutlet weak var colorTitleLabel : UILabel!
  @IBOutlet weak var colorView : UIView!
  @IBOutlet weak var colorHexLabel : UILabel!
  
  var gradientColors : [UIColor] = []{
    didSet{
      addGradient()
      setHexLabel()
    }
  }
  
  func addGradient(){
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = colorView.bounds
    gradientLayer.colors = gradientColors.map {$0.cgColor}
    
    colorView.layer.addSublayer(gradientLayer)
  }
  
  func setHexLabel(){
    if gradientColors.count > 2{
      colorHexLabel.text = "many colors"
    }
    else if gradientColors.count == 2 {
      colorHexLabel.text = "\(gradientColors[0].getHexValue()) → \(gradientColors[1].getHexValue())"
    }
  }
}
