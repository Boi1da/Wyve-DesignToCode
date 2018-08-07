//
//  ViewController.swift
//  Wyve
//
//  Created by Armani on 04/08/2018.
//  Copyright © 2018 Armani Cesar. All rights reserved.
//

import UIKit

class startScreenViewController: UIViewController {
    
    var startImage : UIImageView = {
        var startingImage = UIImageView(image: #imageLiteral(resourceName: "curly_Hair_Yellow"))
        startingImage.translatesAutoresizingMaskIntoConstraints = false
        return startingImage
    }()
    
    var getStartedBtn : UIButton = {
        var btn = UIButton()
    
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        btn.titleLabel?.font = UIFont(name: "Avenir Next", size: 20)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.setTitle("Get Started!", for: UIControlState.normal)
        btn.setTitleColor(.black, for: UIControlState.normal)
        btn.layer.cornerRadius = 26
        btn.backgroundColor = UIColor.white
        
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add imageView to the view
        view.addSubview(startImage)
        view.addSubview(getStartedBtn)
        setUpLayouts()
    }
    
    //To Fix Later, Button Does not appear on Screen. Add programmatically! 17:07 
    
    func setUpLayouts() {
        
        startImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        startImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        startImage.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        startImage.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        //Btn
        getStartedBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
        getStartedBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 120).isActive = true
        getStartedBtn.widthAnchor.constraint(equalToConstant: 146.0).isActive = true
        getStartedBtn.heightAnchor.constraint(equalToConstant: 53.0).isActive = true
    }

    
}

