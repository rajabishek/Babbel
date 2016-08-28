//
//  RegistrationController.swift
//  Babbel
//
//  Created by Raj Abishek on 28/08/16.
//  Copyright © 2016 Raj Abishek. All rights reserved.
//

import UIKit

class RegistrationController: UIViewController {

    let registrationInputsContainer: UIView = {
        let container = UIView()
        container.backgroundColor = Color.wildSand
        container.translatesAutoresizingMaskIntoConstraints = false
        container.layer.cornerRadius = 4
        container.layer.masksToBounds = true
        return container
    }()
    
    let registerButton: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = Color.baseColor
        button.setTitle("Register", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Medium", size: 13) ?? UIFont.boldSystemFontOfSize(13)
        button.layer.cornerRadius = 4
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        setupLayout()
    }
    
    func setupLayout() {
        view.addSubview(registrationInputsContainer)
        view.addSubview(registerButton)
        
        var allConstraints = [NSLayoutConstraint]()
        
        allConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-25-[v0]-25-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        allConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(105)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        allConstraints.append(NSLayoutConstraint(item: registrationInputsContainer, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1, constant: 0))
        
        allConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(35)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerButton])
        allConstraints.append(NSLayoutConstraint(item: registerButton, attribute: .Width, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Width, multiplier: 1, constant: 0))
        allConstraints.append(NSLayoutConstraint(item: registerButton, attribute: .Top, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Bottom, multiplier: 1, constant: 20))
        allConstraints.append(NSLayoutConstraint(item: registerButton, attribute: .CenterX, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .CenterX, multiplier: 1, constant: 0))
        
        NSLayoutConstraint.activateConstraints(allConstraints)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .Default
    }
}
