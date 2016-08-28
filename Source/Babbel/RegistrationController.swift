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
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = .clearColor()
        button.setTitle("Forgot Password?", forState: .Normal)
        button.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFontOfSize(12)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        return button
    }()
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .Default
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        setupLayout()
    }
    
    func setupLayout() {
        view.addSubview(registrationInputsContainer)
        view.addSubview(registerButton)
        view.addSubview(forgotPasswordButton)
        
        var allConstraints = [NSLayoutConstraint]()
        
        allConstraints += getConstraintsForRegistrationInputsContainer()
        allConstraints += getConstraintsForRegistrationButton()
        allConstraints += getConstraintsForForgotPasswordButton()
        
        NSLayoutConstraint.activateConstraints(allConstraints)
    }
    
    func getConstraintsForRegistrationInputsContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-25-[v0]-25-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(105)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        
        constraints.append(NSLayoutConstraint(item: registrationInputsContainer, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegistrationButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(35)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerButton])
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .Width, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .Top, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Bottom, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .CenterX, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .CenterX, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForForgotPasswordButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: forgotPasswordButton, attribute: .CenterX, relatedBy: .Equal, toItem: registerButton, attribute: .CenterX, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: forgotPasswordButton, attribute: .Top, relatedBy: .Equal, toItem: registerButton, attribute: .Bottom, multiplier: 1, constant: 10))
        
        return constraints
    }
}
