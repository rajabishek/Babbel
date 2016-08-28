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
    
    let registerLabel: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = .clearColor()
        button.setTitle("Register", forState: .Normal)
        button.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 13) ?? UIFont.boldSystemFontOfSize(13)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        return button
    }()
    
    let activeSectionBorder: UIView = {
        let border = UIView()
        border.translatesAutoresizingMaskIntoConstraints = false
        border.backgroundColor = Color.baseColor
        return border
    }()
    
    let loginLabel: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = .clearColor()
        button.setTitle("Sign In", forState: .Normal)
        button.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 13) ?? UIFont.boldSystemFontOfSize(13)
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
        view.addSubview(registerLabel)
        view.addSubview(activeSectionBorder)
        view.addSubview(loginLabel)

        var allConstraints = [NSLayoutConstraint]()
        
        allConstraints += getConstraintsForRegistrationInputsContainer()
        allConstraints += getConstraintsForRegistrationButton()
        allConstraints += getConstraintsForForgotPasswordButton()
        allConstraints += getConstraintsForRegisterLabel()
        allConstraints += getConstraintsForRegisterLabelBorder()
        allConstraints += getConstraintsForLoginLabel()
        
        NSLayoutConstraint.activateConstraints(allConstraints)
    }
    
    func getConstraintsForLoginLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .Left, relatedBy: .Equal, toItem: registerLabel, attribute: .Right, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .Bottom, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Top, multiplier: 1, constant: -20))
        
        return constraints
    }
    
    func getConstraintsForRegisterLabelBorder() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: activeSectionBorder, attribute: .Width, relatedBy: .Equal, toItem: registerLabel, attribute: .Width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: activeSectionBorder, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: activeSectionBorder, attribute: .Left, relatedBy: .Equal, toItem: registerLabel, attribute: .Left, multiplier: 1, constant: 0))
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(2)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": activeSectionBorder])
        
        return constraints
    }
    
    func getConstraintsForRegisterLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: registerLabel, attribute: .Left, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Left, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerLabel, attribute: .Bottom, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Top, multiplier: 1, constant: -20))
        
        return constraints
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
