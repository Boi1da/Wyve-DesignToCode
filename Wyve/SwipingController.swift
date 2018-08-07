//
//  swipingController.swift
//  Wyve
//
//  Created by Armani on 06/08/2018.
//  Copyright © 2018 Armani Cesar. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let pages = [
        Page(imageName : "White_Heels", titleText : "Express.", bodyText : "Eager? So are we, all our products arrive to you’re door the next day."),
        Page(imageName: "Gate_Keeper", titleText: "Define.", bodyText: "Expressive clothing lets you define who you are to the world.  "),
        Page(imageName: "Ice_Cream", titleText: "Realistic.", bodyText: "Fashion made to be worn by you’re average Joe, meaning our prices remain affordable.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cell")
        collectionView?.isPagingEnabled = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PageCell
        let page = pages[indexPath.item]
        
        cell.page = page
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    //Define the size of items within the collection view
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
}
