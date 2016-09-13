//
//  ViewController.swift
//  Babbel
//
//  Created by Raj Abishek on 28/08/16.
//  Copyright © 2016 Raj Abishek. All rights reserved.
//

import UIKit

class HomeController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
    }
    
    func getTitleViewForNavigationBar(_ title: String, color: UIColor = .white, fontName: String = "FiraSans-Regular", fontSize: CGFloat = 17) -> UILabel {
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = UIFont(name: fontName, size: fontSize) ?? UIFont.systemFont(ofSize: fontSize)
        titleLabel.numberOfLines = 1
        titleLabel.textAlignment = .center
        titleLabel.textColor = color
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = .clear
        titleLabel.sizeToFit()
        
        return titleLabel
    }
    
    func setupNavigationBar() {
        
        //Set the title for the navigation bar
        navigationItem.titleView = getTitleViewForNavigationBar("Raj Abishek")
        
        //Status bar must be a light content
        navigationController?.navigationBar.barStyle = .black;
        
        //Set the left bar button item for the navigation bar
        let logoutButton = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
        let textAttributes = [NSFontAttributeName: UIFont(name: "FiraSans-Medium", size: 14) ?? UIFont.systemFont(ofSize: 14), NSForegroundColorAttributeName: UIColor.white]
        logoutButton.setTitleTextAttributes(textAttributes, for: UIControlState())
        
        navigationItem.leftBarButtonItem = logoutButton
    }
    
    func handleLogout() {
        let registrationController = RegistrationController()
        present(registrationController, animated: true, completion: nil)
    }
}

