//
//  RegistrationController+SetupLayout.swift
//  Babbel
//
//  Created by Raj Abishek on 28/08/16.
//  Copyright © 2016 Raj Abishek. All rights reserved.
//

import UIKit

extension RegistrationController {
    
    func loginLabelWasClicked() {
        activeSectionHighLightLeftConstraint?.constant = 0
        UIView.animateWithDuration(0.35, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseOut, animations: {
            self.view.layoutIfNeeded()
            }, completion: nil)
        
        self.loginSectionContainer.hidden = false
        self.registerSectionContainer.hidden = true
    }
    
    func registerLabelWasClicked() {
        activeSectionHighLightLeftConstraint?.constant = loginLabel.frame.width + 20
        UIView.animateWithDuration(0.35, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .CurveEaseOut, animations: {
            self.view.layoutIfNeeded()
            }, completion: nil)
        self.loginSectionContainer.hidden = true
        self.registerSectionContainer.hidden = false
    }
    
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
        
        loginInputsContainer.addSubview(loginEmailTextField)
        loginInputsContainer.addSubview(loginPasswordTextField)
        loginInputsContainer.addSubview(loginEmailPasswordLine)
        loginInputsContainer.addSubview(emailIconImageView)
        loginInputsContainer.addSubview(passwordIconImageView)
        
        var allConstraints = [NSLayoutConstraint]()
        
        allConstraints += getConstraintsForRegisterSectionContainer()
        allConstraints += getConstraintsForRegistrationInputsContainer()
        allConstraints += getConstraintsForRegistrationButton()
        allConstraints += getConstraintsForRegisterLabel()
        allConstraints += getConstraintsForActiveSectionHighlight()
        allConstraints += getConstraintsForLoginLabel()
        
        allConstraints += getConstraintsForLoginSectionContainer()
        allConstraints += getConstraintsForLoginInputsContainer()
        allConstraints += getConstraintsForLoginEmailTextField()
        allConstraints += getConstraintsForEmailIconImageView()
        allConstraints += getConstraintsForPasswordIconImageView()
        allConstraints += getConstraintsForLoginPasswordTextField()
        allConstraints += getConstraintsForLoginEmailPasswordLine()
        allConstraints += getConstraintsForLoginButton()
        allConstraints += getConstraintsForForgotPasswordButton()
        
        NSLayoutConstraint.activateConstraints(allConstraints)
        
        registerSectionContainer.hidden = true
    }
    
    func getConstraintsForEmailIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": emailIconImageView])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": emailIconImageView])
        constraints.append(NSLayoutConstraint(item: emailIconImageView, attribute: .Top, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Top, multiplier: 1, constant: 12))
        constraints.append(NSLayoutConstraint(item: emailIconImageView, attribute: .Left, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Left, multiplier: 1, constant: 10))
        return constraints
    }
    
    func getConstraintsForPasswordIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": passwordIconImageView])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": passwordIconImageView])
        constraints.append(NSLayoutConstraint(item: passwordIconImageView, attribute: .Top, relatedBy: .Equal, toItem: loginEmailPasswordLine, attribute: .Top, multiplier: 1, constant: 12))
        constraints.append(NSLayoutConstraint(item: passwordIconImageView, attribute: .Left, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Left, multiplier: 1, constant: 10))
        return constraints
    }
    
    func getConstraintsForLoginEmailPasswordLine() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailPasswordLine])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailPasswordLine])
        constraints.append(NSLayoutConstraint(item: loginEmailPasswordLine, attribute: .Top, relatedBy: .Equal, toItem: loginEmailTextField, attribute: .Bottom, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    
    func getConstraintsForLoginEmailTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailTextField])
        
        constraints.append(NSLayoutConstraint(item: loginEmailTextField, attribute: .Height, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Height, multiplier: 1/2, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginEmailTextField, attribute: .Top, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Top, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginEmailTextField, attribute: .Left, relatedBy: .Equal, toItem: emailIconImageView, attribute: .Right, multiplier: 1, constant: 10))
        
        return constraints
    }
    
    func getConstraintsForLoginPasswordTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginPasswordTextField])
        
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .Height, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Height, multiplier: 1/2, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .Bottom, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Bottom, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .Left, relatedBy: .Equal, toItem: passwordIconImageView, attribute: .Right, multiplier: 1, constant: 10))
        return constraints
    }
    
    func getConstraintsForLoginLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1, constant: 25))
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1, constant: 100))
        
        return constraints
    }
    
    func getConstraintsForActiveSectionHighlight() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        //constraints.append(NSLayoutConstraint(item: activeSectionHighlight, attribute: .Width, relatedBy: .Equal, toItem: loginLabel, attribute: .Width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: activeSectionHighlight, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 0))
        activeSectionHighLightLeftConstraint = NSLayoutConstraint(item: activeSectionHighlight, attribute: .Left, relatedBy: .Equal, toItem: loginLabel, attribute: .Left, multiplier: 1, constant: 0)
        constraints.append(activeSectionHighLightLeftConstraint!)
        
        let width = (loginLabel.frame.width + registerLabel.frame.width) / 2
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(2)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": activeSectionHighlight])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0(\(width))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": activeSectionHighlight])
        
        return constraints
    }
    
    func getConstraintsForRegisterLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: registerLabel, attribute: .Left, relatedBy: .Equal, toItem: loginLabel, attribute: .Right, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: registerLabel, attribute: .Bottom, relatedBy: .Equal, toItem: loginLabel, attribute: .Bottom, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegistrationInputsContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(108)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        
        constraints.append(NSLayoutConstraint(item: registrationInputsContainer, attribute: .Top, relatedBy: .Equal, toItem: registerSectionContainer, attribute: .Top, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForLoginInputsContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginInputsContainer])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(73)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginInputsContainer])
        
        constraints.append(NSLayoutConstraint(item: loginInputsContainer, attribute: .Top, relatedBy: .Equal, toItem: loginSectionContainer, attribute: .Top, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegistrationButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(36)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerButton])
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .Width, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .Top, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Bottom, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .CenterX, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .CenterX, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForLoginButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(36)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginButton])
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
        let contentsHeight = 72 + 20 + 36 + 10 + forgotPasswordButton.frame.height
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(\(contentsHeight))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginSectionContainer])
        constraints.append(NSLayoutConstraint(item: loginSectionContainer, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 20))
        
        return constraints
    }
    
    func getConstraintsForRegisterSectionContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-25-[v0]-25-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerSectionContainer])
        let contentsHeight = 108 + 20 + 36
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(\(contentsHeight))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerSectionContainer])
        constraints.append(NSLayoutConstraint(item: registerSectionContainer, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 20))
        
        return constraints
    }
}