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
    
    let loginInputsContainer: UIView = {
        let container = UIView()
        container.backgroundColor = Color.wildSand
        container.translatesAutoresizingMaskIntoConstraints = false
        container.layer.cornerRadius = 4
        container.layer.masksToBounds = true
        return container
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = Color.baseColor
        button.setTitle("Login", forState: .Normal)
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
    
    lazy var registerLabel: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = .clearColor()
        button.setTitle("Register", forState: .Normal)
        button.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 13) ?? UIFont.boldSystemFontOfSize(13)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        button.addTarget(self, action: #selector(registerLabelWasClicked), forControlEvents: .TouchUpInside)
        return button
    }()
    
    let activeSectionHighlight: UIView = {
        let border = UIView()
        border.translatesAutoresizingMaskIntoConstraints = false
        border.backgroundColor = Color.baseColor
        return border
    }()
    
    lazy var loginLabel: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = .clearColor()
        button.setTitle("Sign In", forState: .Normal)
        button.setTitleColor(UIColor.darkGrayColor(), forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 13) ?? UIFont.boldSystemFontOfSize(13)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        button.addTarget(self, action: #selector(loginLabelWasClicked), forControlEvents: .TouchUpInside)
        return button
    }()
    
    let registerSectionContainer: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    let loginSectionContainer: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    func loginLabelWasClicked() {
        activeSectionHighLightLeftConstraint?.constant = registerLabel.frame.width + 20
        UIView.animateWithDuration(0.35, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        self.loginSectionContainer.hidden = false
        self.registerSectionContainer.hidden = true
    }
    
    func registerLabelWasClicked() {
        activeSectionHighLightLeftConstraint?.constant = 0
        UIView.animateWithDuration(0.35, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        self.loginSectionContainer.hidden = true
        self.registerSectionContainer.hidden = false
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .Default
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        setupLayout()
    }
    
    var activeSectionHighLightLeftConstraint: NSLayoutConstraint?
    
    func setupLayout() {
        
        view.addSubview(registerLabel)
        view.addSubview(activeSectionHighlight)
        view.addSubview(loginLabel)
        
        view.addSubview(registerSectionContainer)
        registerSectionContainer.addSubview(registrationInputsContainer)
        registerSectionContainer.addSubview(registerButton)
        
        view.addSubview(loginSectionContainer)
        loginSectionContainer.addSubview(loginInputsContainer)
        loginSectionContainer.addSubview(loginButton)
        loginSectionContainer.addSubview(forgotPasswordButton)

        var allConstraints = [NSLayoutConstraint]()
        
        allConstraints += getConstraintsForRegisterSectionContainer()
        allConstraints += getConstraintsForRegistrationInputsContainer()
        allConstraints += getConstraintsForRegistrationButton()
        allConstraints += getConstraintsForRegisterLabel()
        allConstraints += getConstraintsForActiveSectionHighlight()
        allConstraints += getConstraintsForLoginLabel()
        
        allConstraints += getConstraintsForLoginSectionContainer()
        allConstraints += getConstraintsForLoginInputsContainer()
        allConstraints += getConstraintsForLoginButton()
        allConstraints += getConstraintsForForgotPasswordButton()
        
        NSLayoutConstraint.activateConstraints(allConstraints)
        
        loginSectionContainer.hidden = true
    }
    
    func getConstraintsForLoginLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .Left, relatedBy: .Equal, toItem: registerLabel, attribute: .Right, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .Bottom, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Top, multiplier: 1, constant: -20))
        
        return constraints
    }
    
    func getConstraintsForActiveSectionHighlight() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: activeSectionHighlight, attribute: .Width, relatedBy: .Equal, toItem: registerLabel, attribute: .Width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: activeSectionHighlight, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 0))
        activeSectionHighLightLeftConstraint = NSLayoutConstraint(item: activeSectionHighlight, attribute: .Left, relatedBy: .Equal, toItem: registerLabel, attribute: .Left, multiplier: 1, constant: 0)
        constraints.append(activeSectionHighLightLeftConstraint!)
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(2)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": activeSectionHighlight])
        
        return constraints
    }
    
    func getConstraintsForRegisterLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: registerLabel, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1, constant: 25))
        constraints.append(NSLayoutConstraint(item: registerLabel, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1, constant: 100))
        
        return constraints
    }
    
    func getConstraintsForRegistrationInputsContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(140)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        
        constraints.append(NSLayoutConstraint(item: registrationInputsContainer, attribute: .Top, relatedBy: .Equal, toItem: registerSectionContainer, attribute: .Top, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForLoginInputsContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginInputsContainer])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(105)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginInputsContainer])
        
        constraints.append(NSLayoutConstraint(item: loginInputsContainer, attribute: .Top, relatedBy: .Equal, toItem: loginSectionContainer, attribute: .Top, multiplier: 1, constant: 0))
        
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
    
    func getConstraintsForLoginButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(35)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginButton])
        constraints.append(NSLayoutConstraint(item: loginButton, attribute: .Width, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginButton, attribute: .Top, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Bottom, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: loginButton, attribute: .CenterX, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .CenterX, multiplier: 1, constant: 0))
        
        return constraints
    }

    
    func getConstraintsForForgotPasswordButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: forgotPasswordButton, attribute: .CenterX, relatedBy: .Equal, toItem: loginButton, attribute: .CenterX, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: forgotPasswordButton, attribute: .Top, relatedBy: .Equal, toItem: loginButton, attribute: .Bottom, multiplier: 1, constant: 10))
        
        return constraints
    }
    
    func getConstraintsForLoginSectionContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-25-[v0]-25-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginSectionContainer])
        let contentsHeight = 105 + 20 + 35 + 10 + forgotPasswordButton.frame.height
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(\(contentsHeight))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginSectionContainer])
        constraints.append(NSLayoutConstraint(item: loginSectionContainer, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 20))
        
        return constraints
    }
    
    func getConstraintsForRegisterSectionContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-25-[v0]-25-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerSectionContainer])
        let contentsHeight = 140 + 20 + 35
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(\(contentsHeight))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerSectionContainer])
        constraints.append(NSLayoutConstraint(item: registerSectionContainer, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 20))
        
        return constraints
    }
}
