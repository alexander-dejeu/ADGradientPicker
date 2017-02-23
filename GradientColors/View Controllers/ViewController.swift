//
//  ViewController.swift
//  GradientColors
//
//  Created by Alexander Dejeu on 2/16/17.
//  Copyright © 2017 Do Good Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var colorCollectionView: UICollectionView!
  
  @IBOutlet weak var collectionViewHeightConstrant: NSLayoutConstraint!
  
  let transition = BubbleTransition()
  
  var bubbleTranstionStartingPoint : CGPoint = CGPoint(x:0, y:0)
  
  //MARK : - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print(colorCollectionView.frame)
    let multiplier = (colorCollectionView.numberOfItems(inSection: 0) / 2) + colorCollectionView.numberOfItems(inSection: 0) % 2
    let height = CGFloat(multiplier) * ((colorCollectionView.cellForItem(at: IndexPath(item: 0, section: 0))?.bounds.height)! + 12) + 32
    collectionViewHeightConstrant.constant = height
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let controller = segue.destination
    controller.transitioningDelegate = self
    controller.modalPresentationStyle = .custom
  }

}

extension ViewController : UICollectionViewDelegate{
  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print(indexPath.item)
  }
}

extension ViewController : UICollectionViewDataSource{
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ColorCell", for: indexPath) as! ColorCollectionViewCell
    
    cell.gradientColors = gradients.getRandomGradient()
    
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }
}

extension ViewController : UICollectionViewDelegateFlowLayout{
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellWidth = collectionView.frame.width / 2.0 - 16.0
    return CGSize(width: cellWidth, height: cellWidth)
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
    return transition
  }
}

