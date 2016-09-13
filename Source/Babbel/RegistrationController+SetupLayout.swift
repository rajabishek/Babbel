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
        UIView.animate(withDuration: 0.35, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        self.loginLabel.setTitleColor(Color.wildSand, for: UIControlState())
        self.registerLabel.setTitleColor(Color.mediumGray, for: UIControlState())
        self.loginSectionContainer.isHidden = false
        self.registerSectionContainer.isHidden = true
    }
    
    func registerLabelWasClicked() {
        activeSectionHighLightLeftConstraint?.constant = loginLabel.frame.width + 20
        UIView.animate(withDuration: 0.35, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
        self.loginLabel.setTitleColor(Color.mediumGray, for: UIControlState())
        self.registerLabel.setTitleColor(Color.wildSand, for: UIControlState())
        self.loginSectionContainer.isHidden = true
        self.registerSectionContainer.isHidden = false
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
        
        NSLayoutConstraint.activate(allConstraints)
        
        registerSectionContainer.isHidden = true
    }
    
    func getConstraintsForRegisterNameIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameIconImageView])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameIconImageView])
        constraints.append(NSLayoutConstraint(item: registerNameIconImageView, attribute: .top, relatedBy: .equal, toItem: registrationInputsContainer, attribute: .top, multiplier: 1, constant: 12))
        return constraints
    }
    
    func getConstraintsForRegisterEmailIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailIconImageView])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailIconImageView])
        constraints.append(NSLayoutConstraint(item: registerEmailIconImageView, attribute: .top, relatedBy: .equal, toItem: registerNameEmailLine, attribute: .bottom, multiplier: 1, constant: 12))
        return constraints
    }

    
    func getConstraintsForRegisterPasswordIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerPasswordIconImageView])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerPasswordIconImageView])
        constraints.append(NSLayoutConstraint(item: registerPasswordIconImageView, attribute: .top, relatedBy: .equal, toItem: registerEmailPasswordLine, attribute: .bottom, multiplier: 1, constant: 12))
        return constraints
    }

    
    func getConstraintsForLoginEmailIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailIconImageView])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailIconImageView])
        constraints.append(NSLayoutConstraint(item: loginEmailIconImageView, attribute: .top, relatedBy: .equal, toItem: loginInputsContainer, attribute: .top, multiplier: 1, constant: 12))
        return constraints
    }
    
    func getConstraintsForLoginPasswordIconImageView() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginPasswordIconImageView])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(11)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginPasswordIconImageView])
        constraints.append(NSLayoutConstraint(item: loginPasswordIconImageView, attribute: .top, relatedBy: .equal, toItem: loginEmailPasswordLine, attribute: .top, multiplier: 1, constant: 12))
        return constraints
    }
    
    func getConstraintsForRegisterNameTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameTextField])
        
        constraints.append(NSLayoutConstraint(item: registerNameTextField, attribute: .height, relatedBy: .equal, toItem: registrationInputsContainer, attribute: .height, multiplier: 1/3, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerNameTextField, attribute: .top, relatedBy: .equal, toItem: registrationInputsContainer, attribute: .top, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerNameTextField, attribute: .left, relatedBy: .equal, toItem: registerNameIconImageView, attribute: .right, multiplier: 1, constant: 10))
        
        return constraints
    }
    
    func getConstraintsForRegisterNameEmailLine() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameEmailLine])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerNameEmailLine])
        constraints.append(NSLayoutConstraint(item: registerNameEmailLine, attribute: .top, relatedBy: .equal, toItem: registerNameTextField, attribute: .bottom, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegisterEmailPasswordLine() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailPasswordLine])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailPasswordLine])
        constraints.append(NSLayoutConstraint(item: registerEmailPasswordLine, attribute: .top, relatedBy: .equal, toItem: registerEmailTextField, attribute: .bottom, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegisterPasswordTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerPasswordTextField])
        
        constraints.append(NSLayoutConstraint(item: registerPasswordTextField, attribute: .height, relatedBy: .equal, toItem: registrationInputsContainer, attribute: .height, multiplier: 1/3, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerPasswordTextField, attribute: .top, relatedBy: .equal, toItem: registerEmailPasswordLine, attribute: .bottom, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerPasswordTextField, attribute: .left, relatedBy: .equal, toItem: registerPasswordIconImageView, attribute: .right, multiplier: 1, constant: 10))
        return constraints
    }
    
    func getConstraintsForRegisterEmailTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerEmailTextField])
        
        constraints.append(NSLayoutConstraint(item: registerEmailTextField, attribute: .height, relatedBy: .equal, toItem: registrationInputsContainer, attribute: .height, multiplier: 1/3, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerEmailTextField, attribute: .top, relatedBy: .equal, toItem: registerNameEmailLine, attribute: .bottom, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerEmailTextField, attribute: .left, relatedBy: .equal, toItem: registerEmailIconImageView, attribute: .right, multiplier: 1, constant: 10))
        return constraints
    }
    
    func getConstraintsForLoginEmailPasswordLine() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailPasswordLine])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(1)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailPasswordLine])
        constraints.append(NSLayoutConstraint(item: loginEmailPasswordLine, attribute: .top, relatedBy: .equal, toItem: loginEmailTextField, attribute: .bottom, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    
    func getConstraintsForLoginEmailTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginEmailTextField])
        
        constraints.append(NSLayoutConstraint(item: loginEmailTextField, attribute: .height, relatedBy: .equal, toItem: loginInputsContainer, attribute: .height, multiplier: 1/2, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginEmailTextField, attribute: .top, relatedBy: .equal, toItem: loginInputsContainer, attribute: .top, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginEmailTextField, attribute: .left, relatedBy: .equal, toItem: loginEmailIconImageView, attribute: .right, multiplier: 1, constant: 10))
        
        return constraints
    }
    
    func getConstraintsForLoginPasswordTextField() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginPasswordTextField])
        
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .height, relatedBy: .equal, toItem: loginInputsContainer, attribute: .height, multiplier: 1/2, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .bottom, relatedBy: .equal, toItem: loginInputsContainer, attribute: .bottom, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginPasswordTextField, attribute: .left, relatedBy: .equal, toItem: loginPasswordIconImageView, attribute: .right, multiplier: 1, constant: 10))
        return constraints
    }
    
    func getConstraintsForBannerLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: bannerLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: bannerLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 100))
        
        return constraints
    }

    
    func getConstraintsForLoginLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .left, relatedBy: .equal, toItem: view, attribute: .left, multiplier: 1, constant: 35))
        constraints.append(NSLayoutConstraint(item: loginLabel, attribute: .top, relatedBy: .equal, toItem: bannerLabel, attribute: .bottom, multiplier: 1, constant: 10))
        
        return constraints
    }
    
    func getConstraintsForActiveSectionHighlight() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        //constraints.append(NSLayoutConstraint(item: activeSectionHighlight, attribute: .Width, relatedBy: .Equal, toItem: loginLabel, attribute: .Width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: activeSectionHighlight, attribute: .top, relatedBy: .equal, toItem: registerLabel, attribute: .bottom, multiplier: 1, constant: 0))
        activeSectionHighLightLeftConstraint = NSLayoutConstraint(item: activeSectionHighlight, attribute: .left, relatedBy: .equal, toItem: loginLabel, attribute: .left, multiplier: 1, constant: 0)
        constraints.append(activeSectionHighLightLeftConstraint!)
        
        let width = (loginLabel.frame.width + registerLabel.frame.width) / 2
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(2)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": activeSectionHighlight])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(\(width))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": activeSectionHighlight])
        
        return constraints
    }
    
    func getConstraintsForRegisterLabel() -> [NSLayoutConstraint] {
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: registerLabel, attribute: .left, relatedBy: .equal, toItem: loginLabel, attribute: .right, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: registerLabel, attribute: .bottom, relatedBy: .equal, toItem: loginLabel, attribute: .bottom, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegistrationInputsContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(110)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        
        constraints.append(NSLayoutConstraint(item: registrationInputsContainer, attribute: .top, relatedBy: .equal, toItem: registerSectionContainer, attribute: .top, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForLoginInputsContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginInputsContainer])
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(73)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginInputsContainer])
        
        constraints.append(NSLayoutConstraint(item: loginInputsContainer, attribute: .top, relatedBy: .equal, toItem: loginSectionContainer, attribute: .top, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForRegistrationButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(36)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerButton])
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .width, relatedBy: .equal, toItem: registrationInputsContainer, attribute: .width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .top, relatedBy: .equal, toItem: registrationInputsContainer, attribute: .bottom, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: registerButton, attribute: .centerX, relatedBy: .equal, toItem: registrationInputsContainer, attribute: .centerX, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    func getConstraintsForLoginButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(36)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginButton])
        constraints.append(NSLayoutConstraint(item: loginButton, attribute: .width, relatedBy: .equal, toItem: loginInputsContainer, attribute: .width, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: loginInputsContainer, attribute: .bottom, multiplier: 1, constant: 20))
        constraints.append(NSLayoutConstraint(item: loginButton, attribute: .centerX, relatedBy: .equal, toItem: loginInputsContainer, attribute: .centerX, multiplier: 1, constant: 0))
        
        return constraints
    }
    
    
    func getConstraintsForForgotPasswordButton() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(NSLayoutConstraint(item: forgotPasswordButton, attribute: .centerX, relatedBy: .equal, toItem: loginButton, attribute: .centerX, multiplier: 1, constant: 0))
        constraints.append(NSLayoutConstraint(item: forgotPasswordButton, attribute: .top, relatedBy: .equal, toItem: loginButton, attribute: .bottom, multiplier: 1, constant: 10))
        
        return constraints
    }
    
    func getConstraintsForLoginSectionContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-35-[v0]-35-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginSectionContainer])
        let contentsHeight = 73 + 20 + 36 + 10 + forgotPasswordButton.frame.height
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(\(contentsHeight))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": loginSectionContainer])
        constraints.append(NSLayoutConstraint(item: loginSectionContainer, attribute: .top, relatedBy: .equal, toItem: registerLabel, attribute: .bottom, multiplier: 1, constant: 20))
        
        return constraints
    }
    
    func getConstraintsForRegisterSectionContainer() -> [NSLayoutConstraint]{
        
        var constraints = [NSLayoutConstraint]()
        
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "H:|-35-[v0]-35-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerSectionContainer])
        let contentsHeight = 110 + 20 + 36
        constraints += NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(\(contentsHeight))]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registerSectionContainer])
        constraints.append(NSLayoutConstraint(item: registerSectionContainer, attribute: .top, relatedBy: .equal, toItem: registerLabel, attribute: .bottom, multiplier: 1, constant: 20))
        
        return constraints
    }
}
