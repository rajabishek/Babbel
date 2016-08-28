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
        
        view.addSubview(bannerLabel)
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
        loginInputsContainer.addSubview(loginEmailIconImageView)
        loginInputsContainer.addSubview(loginPasswordIconImageView)
        
        registrationInputsContainer.addSubview(registerNameTextField)
        registrationInputsContainer.addSubview(registerEmailTextField)
        registrationInputsContainer.addSubview(registerPasswordTextField)
        registrationInputsContainer.addSubview(registerNameEmailLine)
        registrationInputsContainer.addSubview(registerEmailPasswordLine)
        registrationInputsContainer.addSubview(registerNameIconImageView)
        registrationInputsContainer.addSubview(registerEmailIconImageView)
        registrationInputsContainer.addSubview(registerPasswordIconImageView)
        
        var allConstraints = [NSLayoutConstraint]()
        
        allConstraints += getConstraintsForBannerLabel()
        allConstraints += getConstraintsForRegisterSectionContainer()
        allConstraints += getConstraintsForRegistrationInputsContainer()
        allConstraints += getConstraintsForRegistrationButton()
        allConstraints += getConstraintsForRegisterLabel()
        allConstraints += getConstraintsForActiveSectionHighlight()
        allConstraints += getConstraintsForLoginLabel()
        
        allConstraints += getConstraintsForRegisterNameTextField()
        allConstraints += getConstraintsForRegisterEmailTextField()
        allConstraints += getConstraintsForRegisterPasswordTextField()
        allConstraints += getConstraintsForRegisterNameEmailLine()
        allConstraints += getConstraintsForRegisterEmailPasswordLine()
        allConstraints += getConstraintsForRegisterNameIconImageView()
        allConstraints += getConstraintsForRegisterEmailIconImageView()
        allConstraints += getConstraintsForRegisterPasswordIconImageView()
        
        allConstraints += getConstraintsForLoginSectionContainer()
        allConstraints += getConstraintsForLoginInputsContainer()
        allConstraints += getConstraintsForLoginEmailTextField()
        allConstraints += getConstraintsForLoginEmailIconImageView()
        allConstraints += getConstraintsForLoginPasswordIconImageView()
        allConstraints += getConstraintsForLoginPasswordTextField()
        allConstraints += getConstraintsForLoginEmailPasswordLine()
        allConstraints += getConstraintsForLoginButton()
        allConstraints += getConstraintsForForgotPasswordButton()
        
        NSLayoutConstraint.activateConstraints(allConstraints)
        
        registerSectionContainer.hidden = true
    }
    
    func getConstraintsForRegisterNameIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameIconImageView])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameIconImageView])
        constraints.append(NSLayoutConstraint(item: registerNameIconImageView, attribute: .Top, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Top, multiplier: 1, constant: 12))
        return constraints
    }
    
    func getConstraintsForRegisterEmailIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailIconImageView])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailIconImageView])
        constraints.append(NSLayoutConstraint(item: registerEmailIconImageView, attribute: .Top, relatedBy: .Equal, toItem: registerNameEmailLine, attribute: .Bottom, multiplier: 1, constant: 12))
        return constraints
    }

    
    func getConstraintsForRegisterPasswordIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerPasswordIconImageView])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerPasswordIconImageView])
        constraints.append(NSLayoutConstraint(item: registerPasswordIconImageView, attribute: .Top, relatedBy: .Equal, toItem: registerEmailPasswordLine, attribute: .Bottom, multiplier: 1, constant: 12))
        return constraints
    }

    
    func getConstraintsForLoginEmailIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailIconImageView])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailIconImageView])
        constraints.append(NSLayoutConstraint(item: loginEmailIconImageView, attribute: .Top, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Top, multiplier: 1, constant: 12))
        return constraints
    }
    
    func getConstraintsForLoginPasswordIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginPasswordIconImageView])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginPasswordIconImageView])
        constraints.append(NSLayoutConstraint(item: loginPasswordIconImageView, attribute: .Top, relatedBy: .Equal, toItem: loginEmailPasswordLine, attribute: .Top, multiplier: 1, constant: 12))
        return constraints
    }
    
    func getConstraintsForRegisterNameTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameTextField])
        
        constraints.append(NSLayoutConstraint(item: registerNameTextField, attribute: .Height, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Height, multiplier: 1/3, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerNameTextField, attribute: .Top, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Top, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerNameTextField, attribute: .Left, relatedBy: .Equal, toItem: registerNameIconImageView, attribute: .Right, multiplier: 1, constant: 10))
        
        return constraints
    }
    
    func getConstraintsForRegisterNameEmailLine() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameEmailLine])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameEmailLine])
        constraints.append(NSLayoutConstraint(item: registerNameEmailLine, attribute: .Top, relatedBy: .Equal, toItem: registerNameTextField, attribute: .Bottom, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegisterEmailPasswordLine() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailPasswordLine])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailPasswordLine])
        constraints.append(NSLayoutConstraint(item: registerEmailPasswordLine, attribute: .Top, relatedBy: .Equal, toItem: registerEmailTextField, attribute: .Bottom, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegisterPasswordTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerPasswordTextField])
        
        constraints.append(NSLayoutConstraint(item: registerPasswordTextField, attribute: .Height, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Height, multiplier: 1/3, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerPasswordTextField, attribute: .Top, relatedBy: .Equal, toItem: registerEmailPasswordLine, attribute: .Bottom, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerPasswordTextField, attribute: .Left, relatedBy: .Equal, toItem: registerPasswordIconImageView, attribute: .Right, multiplier: 1, constant: 10))
        return constraints
    }
    
    func getConstraintsForRegisterEmailTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailTextField])
        
        constraints.append(NSLayoutConstraint(item: registerEmailTextField, attribute: .Height, relatedBy: .Equal, toItem: registrationInputsContainer, attribute: .Height, multiplier: 1/3, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerEmailTextField, attribute: .Top, relatedBy: .Equal, toItem: registerNameEmailLine, attribute: .Bottom, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerEmailTextField, attribute: .Left, relatedBy: .Equal, toItem: registerEmailIconImageView, attribute: .Right, multiplier: 1, constant: 10))
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
        constraints.append(NSLayoutConstraint(item: loginEmailTextField, attribute: .Left, relatedBy: .Equal, toItem: loginEmailIconImageView, attribute: .Right, multiplier: 1, constant: 10))
        
        return constraints
    }
    
    func getConstraintsForLoginPasswordTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginPasswordTextField])
        
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .Height, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Height, multiplier: 1/2, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .Bottom, relatedBy: .Equal, toItem: loginInputsContainer, attribute: .Bottom, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .Left, relatedBy: .Equal, toItem: loginPasswordIconImageView, attribute: .Right, multiplier: 1, constant: 10))
        return constraints
    }
    
    func getConstraintsForBannerLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: bannerLabel, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: bannerLabel, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1, constant: 100))
        
        return constraints
    }

    
    func getConstraintsForLoginLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1, constant: 35))
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .Top, relatedBy: .Equal, toItem: bannerLabel, attribute: .Bottom, multiplier: 1, constant: 10))
        
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
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(110)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        
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
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-35-[v0]-35-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginSectionContainer])
        let contentsHeight = 73 + 20 + 36 + 10 + forgotPasswordButton.frame.height
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(\(contentsHeight))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginSectionContainer])
        constraints.append(NSLayoutConstraint(item: loginSectionContainer, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 20))
        
        return constraints
    }
    
    func getConstraintsForRegisterSectionContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-35-[v0]-35-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerSectionContainer])
        let contentsHeight = 110 + 20 + 36
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(\(contentsHeight))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerSectionContainer])
        constraints.append(NSLayoutConstraint(item: registerSectionContainer, attribute: .Top, relatedBy: .Equal, toItem: registerLabel, attribute: .Bottom, multiplier: 1, constant: 20))
        
        return constraints
    }
}