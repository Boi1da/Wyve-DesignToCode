//
//  SignInViewController.swift
//  Wyve
//
//  Created by Armani on 13/08/2018.
//  Copyright © 2018 Armani Cesar. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    let imageViewForSignIn : UIImageView = {
        var imageView = UIImageView(image: #imageLiteral(resourceName: "Blue_Shirt"))
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let imageViewContainer : UIView = {
        var imageContainer = UIView()
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        return imageContainer
    }()
    
    let usernameTextField : UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Username"
        textField.backgroundColor = UIColor(named: "orangeUniversal")
        textField.textColor = UIColor(named: "empress")
        textField.textAlignment = .center
        textField.layer.cornerRadius = 20
        return textField
    }()
    
    let passwordTextField : UITextField = {
        var textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .center
        textField.backgroundColor = UIColor(named: "orangeUniversal")
        textField.textColor = UIColor(named: "empress")
        textField.placeholder = "Password"
        textField.layer.cornerRadius = 20
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let wyveLabel : UILabel = {
        var label = UILabel()
        let attributedText = NSMutableAttributedString(string: "Wyve", attributes: [NSAttributedStringKey.font: UIFont.init(name: "AvenirNext-Bold", size: 48)])
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.attributedText = attributedText
        label.textColor = UIColor(named: "brownText")

        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setUpLayout()
    }
    
    func setUpLayout() {
        //Add container to the view
        view.addSubview(imageViewContainer)
        
        //Layout for the imageViewContainer
        NSLayoutConstraint.activate([
            
            imageViewContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            imageViewContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageViewContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            
            //Make imageView half the height of the app screen
            imageViewContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)
            ])
        
        //Add imageView to the container
        imageViewContainer.addSubview(imageViewForSignIn)
        
        //Layout for imageView
        NSLayoutConstraint.activate([
            
            imageViewForSignIn.topAnchor.constraint(equalTo: imageViewContainer.topAnchor, constant: 0),
            imageViewForSignIn.centerXAnchor.constraint(equalTo: imageViewContainer.centerXAnchor),
            imageViewForSignIn.heightAnchor.constraint(equalTo: imageViewContainer.heightAnchor),
            imageViewForSignIn.widthAnchor.constraint(equalTo: imageViewContainer.widthAnchor)
            
            ])
        
        //Layout for Username Text Field & Password Text Field
        view.addSubview(usernameTextField)
        view.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([

            usernameTextField.topAnchor.constraint(equalTo: imageViewContainer.bottomAnchor, constant: 100),
            usernameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            usernameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            usernameTextField.heightAnchor.constraint(equalToConstant: 60),
            usernameTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 30),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30)
            ])
        
        view.addSubview(wyveLabel)
        
        //Layout for wyve
        NSLayoutConstraint.activate([
            wyveLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 75),
            wyveLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            wyveLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            wyveLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
}
