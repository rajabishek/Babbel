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
        container.backgroundColor = UIColor.clear
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = Color.baseColor
        button.setTitle("Register", for: UIControlState())
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.titleLabel?.font = UIFont(name: "FiraSans-Medium", size: 13) ?? UIFont.boldSystemFont(ofSize: 13)
        button.layer.cornerRadius = 3
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(registerButtonWasClicked), for: .touchUpInside)
        return button
    }()
    
    let loginInputsContainer: UIView = {
        let container = UIView()
        container.backgroundColor = UIColor.clear
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = Color.baseColor
        button.setTitle("Sign In", for: UIControlState())
        button.setTitleColor(UIColor.white, for: UIControlState())
        button.titleLabel?.font = UIFont(name: "FiraSans-Medium", size: 13) ?? UIFont.boldSystemFont(ofSize: 13)
        button.layer.cornerRadius = 3
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(loginButtonWasClicked), for: .touchUpInside)
        return button
    }()
    
    let forgotPasswordButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Forgot Password?", for: UIControlState())
        button.setTitleColor(Color.wildSand, for: UIControlState())
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFont(ofSize: 12)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        return button
    }()
    
    lazy var registerLabel: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Register", for: UIControlState())
        button.setTitleColor(Color.mediumGray, for: UIControlState())
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 13) ?? UIFont.boldSystemFont(ofSize: 13)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        button.addTarget(self, action: #selector(registerLabelWasClicked), for: .touchUpInside)
        return button
    }()
    
    let activeSectionHighlight: UIView = {
        let border = UIView()
        border.translatesAutoresizingMaskIntoConstraints = false
        border.backgroundColor = Color.baseColor
        return border
    }()
    
    lazy var loginLabel: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .clear
        button.setTitle("Sign In", for: UIControlState())
        button.setTitleColor(Color.wildSand, for: UIControlState())
        button.titleLabel?.font = UIFont(name: "FiraSans-Regular", size: 13) ?? UIFont.boldSystemFont(ofSize: 13)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.sizeToFit()
        button.addTarget(self, action: #selector(loginLabelWasClicked), for: .touchUpInside)
        return button
    }()
    
    let loginEmailTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFont(ofSize: 12)
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
        imageview.image = UIImage(named: "email-icon")?.withRenderingMode(.alwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFill
        return imageview
    }()
    
    let loginPasswordIconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "password-icon")?.withRenderingMode(.alwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFill
        return imageview
    }()
    
    let loginPasswordTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFont(ofSize: 12)
        textfield.isSecureTextEntry = true
        return textfield
    }()
    
    let registerNameTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Name", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFont(ofSize: 12)
        return textfield
    }()
    
    let registerEmailTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Email Address", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFont(ofSize: 12)
        return textfield
    }()
    
    let registerPasswordTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSForegroundColorAttributeName : Color.mediumGray])
        textfield.textColor = Color.wildSand
        textfield.font = UIFont(name: "FiraSans-Regular", size: 12) ?? UIFont.boldSystemFont(ofSize: 12)
        textfield.isSecureTextEntry = true
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
        imageview.image = UIImage(named: "name-icon")?.withRenderingMode(.alwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFill
        return imageview
    }()
    
    let registerEmailIconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "email-icon")?.withRenderingMode(.alwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFill
        return imageview
    }()
    
    let registerPasswordIconImageView: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: "password-icon")?.withRenderingMode(.alwaysTemplate)
        imageview.tintColor = Color.mediumGray
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFill
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
        heading.textAlignment = .center
        heading.font = UIFont(name: "FiraSans-Light", size: 25) ?? UIFont.boldSystemFont(ofSize: 25)
        heading.sizeToFit()
        return heading
    }()
    
    var activeSectionHighLightLeftConstraint: NSLayoutConstraint?
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Color.charade
        setupLayout()
    }
    
    func registerButtonWasClicked() {
        print("Start the registration process")
    }
    
    func loginButtonWasClicked() {
        print("Start the login process")
    }
}
