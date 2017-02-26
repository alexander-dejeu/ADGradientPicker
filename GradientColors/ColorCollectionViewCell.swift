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
  
  var cellGradient : gradient? = nil{
    didSet{
      addGradient()
      setHexLabel()
      let formatedID = String(format: "%03d", (cellGradient?.id)!)
      colorTitleLabel.text = "\(formatedID) \((cellGradient?.title)!)"
    }
  }
  
  func addGradient(){
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = colorView.bounds
    gradientLayer.colors = cellGradient?.colors.map {$0.cgColor}
    
    let startAndEndLocations = cellGradient?.direction.getStartEndPoints()
    gradientLayer.startPoint = (startAndEndLocations?[0])!
    gradientLayer.endPoint = (startAndEndLocations?[1])!
    
    print(gradientLayer.startPoint)
    print(gradientLayer.endPoint)
    
    colorView.layer.addSublayer(gradientLayer)
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
