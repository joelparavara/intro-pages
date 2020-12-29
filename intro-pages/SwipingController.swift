//
//  SwipingController.swift
//  intro-pages
//
//  Created by Joel Thomson on 6/12/20.
//  Copyright © 2020 Techcrus Labs. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let imageNames = ["bear_first", "welcome.jpg"]
    let headerStrings = ["Discover", "Join & Network"]
    let descriptionStrings = ["Techcrus Find helps you find loacal & global events and get the maximum out of your time", "by finding you the perfect peers to build your network with"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .white
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellId")
        
        collectionView?.isPagingEnabled = true
    }
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return 0
        }
        
        override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return imageNames.count
        }
        
        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! PageCell
            
            let imageName =  imageNames[indexPath.item]
            cell.imageView.image = UIImage(named: imageName)
            cell.descriptionTextView.attributedText = NSMutableAttributedString(string: headerStrings[indexPath.item], attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18)])
            
            cell.descriptionTextView.textAlignment = .center
            
            
            return cell
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: view.frame.width, height: view.frame.height)
        }
}
