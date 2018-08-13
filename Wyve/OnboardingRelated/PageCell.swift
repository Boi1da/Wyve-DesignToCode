//
//  PageCell.swift
//  Wyve
//
//  Created by Armani on 06/08/2018.
//  Copyright © 2018 Armani Cesar. All rights reserved.
//

import UIKit

class PageCell : UICollectionViewCell {
    
    var page : Page? {
        didSet {
            
            guard let unWrappedPage = page else {return }
            onboardingImageView1.image = UIImage(named: page!.imageName)
            
            let attributedText = NSMutableAttributedString(string: unWrappedPage.titleText, attributes: [NSAttributedStringKey.font: UIFont.init(name: "AvenirNext-Bold", size: 60), NSAttributedStringKey.foregroundColor: UIColor(red:0.27, green:0.25, blue:0.25, alpha:1.00)])
            
            attributedText.append(NSAttributedString(string: "\n\n\(unWrappedPage.bodyText)", attributes: [NSAttributedStringKey.font: UIFont.init(name: "Avenir-Heavy", size: 24), NSAttributedStringKey.foregroundColor: UIColor(red:0.27, green:0.25, blue:0.25, alpha:1.00)]))
            
            descriptionTextView.attributedText = attributedText
            descriptionTextView.textAlignment = .center
        }
    }
    
    private let onboardingImageView1 : UIImageView = {
        var image1 = UIImageView(image: #imageLiteral(resourceName: "White_Heels"))
        image1.translatesAutoresizingMaskIntoConstraints = false
        return image1
    }()
    
    private let descriptionTextView : UITextView = {
        let bigWordLabel = UITextView()
        bigWordLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let attributedText = NSMutableAttributedString(string: "EXPRESS", attributes: [NSAttributedStringKey.font: UIFont.init(name: "Avenir-Heavy", size: 60), NSAttributedStringKey.foregroundColor: UIColor(red:0.27, green:0.25, blue:0.25, alpha:1.00)])
        
        attributedText.append(NSAttributedString(string: "\n\nEager?\nSo are we, all our products arrive to you’re door the next day.", attributes: [NSAttributedStringKey.font: UIFont.init(name: "Avenir-Heavy", size: 24), NSAttributedStringKey.foregroundColor: UIColor(red:0.27, green:0.25, blue:0.25, alpha:1.00)]))
        
        bigWordLabel.attributedText = attributedText
        bigWordLabel.isEditable = false
        bigWordLabel.isScrollEnabled = false
        
        return bigWordLabel
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpLayout() {
        
        let topImageViewContainer = UIView()
        addSubview(topImageViewContainer)
        
        topImageViewContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topImageViewContainer.topAnchor.constraint(equalTo: topAnchor),
            topImageViewContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            topImageViewContainer.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        topImageViewContainer.addSubview(onboardingImageView1)
        onboardingImageView1.contentMode = .scaleAspectFill
        
        //Layout for the onboardingImage
        NSLayoutConstraint.activate([
            onboardingImageView1.centerXAnchor.constraint(equalTo: topImageViewContainer.centerXAnchor),
            onboardingImageView1.topAnchor.constraint(equalTo: topImageViewContainer.topAnchor, constant: 0),
            onboardingImageView1.widthAnchor.constraint(equalTo: topImageViewContainer.widthAnchor),
            onboardingImageView1.heightAnchor.constraint(equalToConstant: 397)
        ])
        
        //ImageView container should be half the height of the full app screen.
        topImageViewContainer.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5).isActive = true
        
        topImageViewContainer.addSubview(descriptionTextView)
        
        //Layout for the descriptionTextView
        NSLayoutConstraint.activate([
            descriptionTextView.topAnchor.constraint(equalTo: onboardingImageView1.bottomAnchor, constant: 0),
            descriptionTextView.leftAnchor.constraint(equalTo: leftAnchor),
            descriptionTextView.rightAnchor.constraint(equalTo: rightAnchor),
            descriptionTextView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        descriptionTextView.textAlignment = .center
    }
    
    
 
}
