//
//  FullScreenViewController.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 2/23/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

enum gradientContentState : String{
  case hex = "Hex"
  case rgb = "RGB"
  case swiftCode = "Swift 3 Code"
  case adCode = "ADGradients Code"
}

class FullScreenViewController: UIViewController {
  
  let gradientLayer = CAGradientLayer()
  var gradient : gradient? = nil
  var singleFullScreen = false
  let backgroundView : UIView = UIView()
  let colorTitleLabel : UILabel = UILabel()
  let contentLabel : UILabel = UILabel()
  let contentPickerView : AKPickerView = AKPickerView()
  
  //MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    contentPickerView.delegate = self
    contentPickerView.dataSource = self
    
    self.view.layer.addSublayer(gradientLayer)
    
    addAllGestureRecognizers()
    
    if !singleFullScreen {
      gradient = gradients.getRandomGradient()
    }
    gradientLayer.frame = self.view.bounds
    gradientLayer.colors = gradient?.colors.map {$0.cgColor}
    colorTitleLabel.text = gradient?.title
    updateContentLabel(index : 0)
  }
  
  //MARK: - Helpers
  func setRandomGradient(_ gestureRecognizer: UITapGestureRecognizer){
    if singleFullScreen {
      self.dismiss(animated: true, completion: nil)
    }
    else{
      gradient = gradients.getRandomGradient()
      gradientLayer.colors = gradient?.colors.map {$0.cgColor}
      colorTitleLabel.text = gradient?.title
      updateContentLabel(index: contentPickerView.selectedItem)
    }
  }
  
  func addAllGestureRecognizers(){
    let tapTouchGesture = UITapGestureRecognizer(target: self, action: #selector(setRandomGradient(_:)))
    tapTouchGesture.delegate  = self
    self.view.addGestureRecognizer(tapTouchGesture)
    
    let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipeGesture(_:)))
    swipeRight.direction = UISwipeGestureRecognizerDirection.right
    swipeRight.delegate  = self
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
      self.dismiss(animated: true, completion: nil)
      
    case UISwipeGestureRecognizerDirection.up:
      print("up")
      if self.backgroundView.center.y >= self.view.bounds.height {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [],
                       animations: {
                        self.backgroundView.center.y -= self.view.bounds.height
        },
                       completion: nil
        )
      }
    case UISwipeGestureRecognizerDirection.down:
      if self.backgroundView.center.y < self.view.bounds.height{
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [],
                       animations: {
                        self.backgroundView.center.y += self.view.bounds.height
        },
                       completion: nil
        )
      }
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
    colorTitleLabel.minimumScaleFactor = 0.5
    colorTitleLabel.textColor = .white
    colorTitleLabel.textAlignment = .center
    
    contentLabel.frame = CGRect(x: 16, y: 32 + colorTitleLabel.bounds.maxY, width: backgroundView.frame.width-32, height: 50)
    contentLabel.font = UIFont(name: "Montserrat-Regular", size: 30.0)
    contentLabel.minimumScaleFactor = 0.5
    contentLabel.numberOfLines = 0
    contentLabel.lineBreakMode = .byWordWrapping
    contentLabel.textColor = .white
    contentLabel.textAlignment = .center
    
    let copyButton : UIButton = UIButton()
    copyButton.frame = CGRect(x: 0, y: backgroundView.frame.height - 55, width: backgroundView.frame.width, height: 55)
    copyButton.titleLabel?.font = UIFont(name: "Montserrat-Regular", size: 30.0)
    copyButton.backgroundColor = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 0.1)
    copyButton.setTitle("copy to clipboard", for: .normal)
    copyButton.setTitleColor(.white, for: .normal)
    copyButton.addTarget(self, action: #selector(FullScreenViewController.copyTextToClipboard), for: .touchUpInside)
    
    
    contentPickerView.frame = CGRect(x: 0, y: backgroundView.frame.height - 55 - 40, width: backgroundView.frame.width, height: 40)
    contentPickerView.font = UIFont(name: "Montserrat-Regular", size: 25.0)!
    contentPickerView.textColor = UIColor(red: 74.0/255.0, green: 74.0/255.0, blue: 74.0/255.0, alpha: 1.0)
    contentPickerView.highlightedFont = UIFont(name: "Montserrat-Regular", size: 25.0)!
    contentPickerView.highlightedTextColor = .black
    contentPickerView.interitemSpacing = 24.0
    contentPickerView.pickerViewStyle = .wheel

    contentPickerView.reloadData()
    
    self.view.addSubview(backgroundView)
    backgroundView.addSubview(colorTitleLabel)
    backgroundView.addSubview(copyButton)
    backgroundView.addSubview(contentPickerView)
    backgroundView.addSubview(contentLabel)
  }
  
  func copyTextToClipboard(){
    let pasteboard = UIPasteboard.general
    pasteboard.string = contentLabel.text
  }
  
  func updateContentLabel(index : Int){
    //Hex
    switch index{
    case 0:
      contentLabel.text = gradient?.getColorHexStringRep()
    case 1:
      contentLabel.text = gradient?.getColorRGBStringRep()
    case 2:
      contentLabel.text = gradient?.getSwift3CodeStringRep()
    case 3:
      contentLabel.text = gradient?.getADGradientsCodeStringRep()
    default:
      print("Well shit")
    }
    
    let rgbString = "color 1 : RGB(202, 210, 102)\ncolor 2: RGB(xyz, yze, wuw)\n\ndirection: left to right"
    switch index{
    case 0, 1:
      contentLabel.font = UIFont(name: "Montserrat-Regular", size: 30.0)
      contentLabel.sizeToFit()
      contentLabel.textAlignment = .center
    case 2, 3:
      contentLabel.font = UIFont(name: "Montserrat-Regular", size: 16.0)
      contentLabel.textAlignment = .left
      contentLabel.sizeToFit()
    default:
      print("Well shit")
    }
    contentLabel.frame = CGRect(x: contentLabel.frame.minX, y: contentLabel.frame.minY, width: self.view.frame.width - 32, height: contentLabel.frame.height)
  }
  
}

extension FullScreenViewController : UIGestureRecognizerDelegate{
  func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
    if touch.view == backgroundView || (touch.view?.isDescendant(of: backgroundView))!{
      return false
    }
    return true
  }
}

extension FullScreenViewController : AKPickerViewDataSource{
  func numberOfItemsInPickerView(_ pickerView: AKPickerView) -> Int {
    return 4
  }
  func pickerView(_ pickerView: AKPickerView, titleForItem item: Int) -> String {
    switch item {
    case 0: return "Hex"
    case 1: return "RGB"
    case 2: return "Swift 3 Code"
    case 3: return "ADGradients"
    default : return "Bad Code"
    }
  }
}

extension FullScreenViewController : AKPickerViewDelegate {
  func pickerView(_ pickerView: AKPickerView, didSelectItem item: Int) {
    print("yeah we selected to: \(item)")
    print("Selected cell is \(pickerView.selectedItem)")
    updateContentLabel(index : item)
  }
}
