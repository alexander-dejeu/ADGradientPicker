//
//  ViewController.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 2/16/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tabBarBackground: UIView!
  // MARK: - IBOutlets
  @IBOutlet weak var colorCollectionView: UICollectionView!
  @IBOutlet weak var collectionViewHeightConstrant: NSLayoutConstraint!
  @IBOutlet weak var colorPreviewShapeView: cellShapeIndicatorView!
  @IBOutlet weak var cellShapeView: cellSizeIndicatorView!
  
  // MARK: - IBActions
  @IBAction func selectRandomColor(sender: UIButton){
    self.performSegue(withIdentifier: "SegueToFullScreen", sender: nil)
  }
  
  let transition = BubbleTransition()
  
  var bubbleTranstionStartingPoint : CGPoint = CGPoint(x:0, y:0)
  
  var selectedGradient : gradient? = nil
  var singleFullScreen = false
  
  var currentShapeOutline : shapeOutline = .square
  var currentCellShape : cellSize = .quarterSquare
  
  //MARK : - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    let tapTouchGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapForColorPreviewShape(_:)))
    self.colorPreviewShapeView.addGestureRecognizer(tapTouchGesture)
    
    let cellSizeTapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapForCellSize(_:)))
    self.cellShapeView.addGestureRecognizer(cellSizeTapGesture)
    
    cellShapeView.drawIndicator(state:  currentCellShape)
    colorPreviewShapeView.setup()
    colorPreviewShapeView.drawIndicator(state: currentShapeOutline)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    setCollectionViewHeight()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let controller = segue.destination as? FullScreenViewController{
      controller.transitioningDelegate = self
      controller.modalPresentationStyle = .custom
      controller.singleFullScreen = singleFullScreen
      controller.gradient = selectedGradient
    }
  }
  
  func handleTapForColorPreviewShape(_ gestureRecognizer: UITapGestureRecognizer){
    switch currentShapeOutline{
    case .square:
      currentShapeOutline = .circle
    case .circle:
      currentShapeOutline = .square
    }
    colorPreviewShapeView.drawIndicator(state: currentShapeOutline)
    colorCollectionView.reloadData()
  }
  
  func handleTapForCellSize(_ gestureRecognizer: UITapGestureRecognizer){
    switch currentCellShape{
    case .quarterSquare:
      currentCellShape = .rectangle
    case .rectangle:
      currentCellShape = .square
    case .square:
      currentCellShape = .quarterSquare
    }
    cellShapeView.drawIndicator(state:  currentCellShape)
    setCollectionViewHeight()
    colorPreviewShapeView.drawIndicator(state: currentShapeOutline)
    colorCollectionView.reloadData()
  }
  
  func setCollectionViewHeight(){
    var multiplier = (colorCollectionView.numberOfItems(inSection: 0) / 2) + colorCollectionView.numberOfItems(inSection: 0) % 2
    
    var cellHeight : CGFloat = 100
    
    switch currentCellShape {
    case .square:
      multiplier *= 2
      cellHeight = colorCollectionView.frame.width - CGFloat(16.0)
    case .rectangle:
      multiplier *= 2
      cellHeight = (colorCollectionView.frame.width - 16.0) / 2.0
    case .quarterSquare:
      multiplier *= 1
      cellHeight = colorCollectionView.frame.width / 2.0 - CGFloat(16.0)
    }
    let collectionViewHeight = CGFloat(multiplier) * (cellHeight + 12) + 32 + 40
    
    collectionViewHeightConstrant.constant = collectionViewHeight
  }
}

extension ViewController : UICollectionViewDelegate{
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    singleFullScreen = true
    if let selectedCell = collectionView.cellForItem(at: indexPath) as? ColorCollectionViewCell{
      print(selectedCell.colorViewSize)
        selectedGradient = selectedCell.cellGradient
    }
    self.performSegue(withIdentifier: "SegueToFullScreen", sender: nil)
  }
}

extension ViewController : UICollectionViewDataSource{
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ColorCell", for: indexPath) as! ColorCollectionViewCell
    cell.layer.cornerRadius = 10
    cell.clipsToBounds = true
//    print(currentCellShape)
    cell.colorViewSize = currentCellShape
    cell.cellGradient = gradients.allGradients[indexPath.item]
    cell.colorViewOutline = currentShapeOutline
    
    cell.setNeedsLayout()
    cell.layoutIfNeeded()
    
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return gradients.allGradients.count
  }
}

extension ViewController : UICollectionViewDelegateFlowLayout{
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    switch currentCellShape{
    case .quarterSquare:
      let cellWidth = collectionView.frame.width / 2.0 - 16.0
      return CGSize(width: cellWidth, height: cellWidth)
    case .rectangle:
      let cellWidth = collectionView.frame.width - 16.0
      return CGSize(width: cellWidth, height: (collectionView.frame.width - 16.0) / 2.0)
    case .square:
      let cellWidth = collectionView.frame.width - 16.0
      return CGSize(width: cellWidth, height: cellWidth)
    }
  }
}

extension ViewController : UIViewControllerTransitioningDelegate {
  func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    transition.transitionMode = .present
    transition.startingPoint = self.view.center
    return transition
  }
  
  func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
    transition.transitionMode = .dismiss
    transition.startingPoint = self.view.center
    singleFullScreen = false
    return transition
  }
}

