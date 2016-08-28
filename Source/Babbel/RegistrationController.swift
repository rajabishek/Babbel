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
        container.backgroundColor = UIColor.clearColor()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    let registerButton: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = Color.baseColor
        button.setTitle("Register", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Medium", size: 13) ?? UIFont.boldSystemFontOfSize(13)
        button.layer.cornerRadius = 3
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let loginInputsContainer: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.clearColor()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    let loginButton: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = Color.baseColor
        button.setTitle("Sign In", forState: .Normal)
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Medium", size: 13) ?? UIFont.boldSystemFontOfSize(13)
        button.layer.cornerRadius = 3
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = .clearColor()
        button.setTitle("Forgot Password?", forState: .Normal)
        button.setTitleColor(Color.wildSand, forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFontOfSize(12)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        return button
    }()
    
    lazy var registerLabel: UIButton = {
        let button = UIButton(type: .System)
        button.backgroundColor = .clearColor()
        button.setTitle("Register", forState: .Normal)
        button.setTitleColor(Color.mediumGray, forState: .Normal)
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
        button.setTitleColor(Color.wildSand, forState: .Normal)
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 13) ?? UIFont.boldSystemFontOfSize(13)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        button.addTarget(self, action: #selector(loginLabelWasClicked), forControlEvents: .TouchUpInside)
        return button
    }()
    
    let loginEmailTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFontOfSize(12)
        return textfield
    }()
    
    let loginEmailPasswordLine: UIView = {
        let line = UIView()
        line.backgroundColor = Color.baseColor
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let loginEmailIconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "email-icon")?.imageWithRenderingMode(.AlwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .ScaleAspectFill
        return imageview
    }()
    
    let loginPasswordIconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "password-icon")?.imageWithRenderingMode(.AlwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .ScaleAspectFill
        return imageview
    }()
    
    let loginPasswordTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFontOfSize(12)
        textfield.secureTextEntry = true
        return textfield
    }()
    
    let registerNameTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFontOfSize(12)
        return textfield
    }()
    
    let registerEmailTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFontOfSize(12)
        return textfield
    }()
    
    let registerPasswordTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFontOfSize(12)
        textfield.secureTextEntry = true
        return textfield
    }()
    
    let registerNameEmailLine: UIView = {
        let line = UIView()
        line.backgroundColor = Color.baseColor
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let registerEmailPasswordLine: UIView = {
        let line = UIView()
        line.backgroundColor = Color.baseColor
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let registerNameIconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "name-icon")?.imageWithRenderingMode(.AlwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .ScaleAspectFill
        return imageview
    }()
    
    let registerEmailIconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "email-icon")?.imageWithRenderingMode(.AlwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .ScaleAspectFill
        return imageview
    }()
    
    let registerPasswordIconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "password-icon")?.imageWithRenderingMode(.AlwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .ScaleAspectFill
        return imageview
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
    
    let bannerLabel: UILabel = {
        let heading = UILabel()
        heading.translatesAutoresizingMaskIntoConstraints = false
        heading.textColor = Color.wildSand
        heading.text = "Babbel"
        heading.textAlignment = .Center
        heading.font = UIFont(name: "FiraSans-Light", size: 25) ?? UIFont.boldSystemFontOfSize(25)
        heading.sizeToFit()
        return heading
    }()
    
    var activeSectionHighLightLeftConstraint: NSLayoutConstraint?
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Color.charade
        setupLayout()
    }
}