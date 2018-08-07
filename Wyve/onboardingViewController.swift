//
//  onboardingViewController.swift
//  Wyve
//
//  Created by Armani on 05/08/2018.
//  Copyright © 2018 Armani Cesar. All rights reserved.
//

import UIKit

class onboardingViewController : UIViewController {
    
    let onboardingImageView1 : UIImageView = {
        var image1 = UIImageView(image: #imageLiteral(resourceName: "White_Heels"))
        image1.translatesAutoresizingMaskIntoConstraints = false
        return image1
    }()
    
    let descriptionTextView : UITextView = {
        let bigWordLabel = UITextView()
        bigWordLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let attributedText = NSMutableAttributedString(string: "EXPRESS", attributes: [NSAttributedStringKey.font: UIFont.init(name: "Avenir-Heavy", size: 60), NSAttributedStringKey.foregroundColor: UIColor(red:0.27, green:0.25, blue:0.25, alpha:1.00)])
        
        attributedText.append(NSAttributedString(string: "\n\nEager?\nSo are we, all our products arrive to you’re door the next day.", attributes: [NSAttributedStringKey.font: UIFont.init(name: "Avenir-Heavy", size: 24), NSAttributedStringKey.foregroundColor: UIColor(red:0.27, green:0.25, blue:0.25, alpha:1.00)]))
        
        bigWordLabel.attributedText = attributedText
        bigWordLabel.isEditable = false
        bigWordLabel.isScrollEnabled = false
        
        return bigWordLabel
    }()
    
    
    private let prevButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Prev", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 14)
        button.setTitleColor(UIColor.gray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let pageControlUI : UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.numberOfPages = 4
        pageControl.currentPageIndicatorTintColor = .orange
        pageControl.pageIndicatorTintColor = .gray
        return pageControl
    }()
    
    private let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir-Heavy", size: 14)
        button.setTitleColor(UIColor.orange, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(onboardingImageView1)
        view.addSubview(descriptionTextView)
        
        setUpLayout()
        setUpBottomButtons()
    }
    
    func setUpBottomButtons() {
        
        let bottomControlsStackView = UIStackView(arrangedSubviews: [prevButton, pageControlUI, nextButton])
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomControlsStackView.distribution = .fillEqually
        
        view.addSubview(bottomControlsStackView)
        
        NSLayoutConstraint.activate([
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    func setUpLayout() {
        
        onboardingImageView1.contentMode = .scaleAspectFill
        onboardingImageView1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        onboardingImageView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        onboardingImageView1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        onboardingImageView1.heightAnchor.constraint(equalToConstant: 397).isActive = true
        
        //Layout for the descriptionTextView
        descriptionTextView.topAnchor.constraint(equalTo: onboardingImageView1.bottomAnchor, constant: 20).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        descriptionTextView.textAlignment = .center
    }
}
