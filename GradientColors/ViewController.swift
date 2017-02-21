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
  
  //MARK : - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print(colorCollectionView.frame)
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
    
    cell.gradientColors = gradients.amourAmour
    
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
  }
}

extension ViewController : UICollectionViewDelegateFlowLayout{
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let cellWidth = collectionView.frame.width / 2.0 - 16.0
    return CGSize(width: cellWidth, height: cellWidth)
  }
}

