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
    
    func getTitleViewForNavigationBar(title: String, color: UIColor = .whiteColor(), fontName: String = "FiraSans-Regular", fontSize: CGFloat = 17) -> UILabel {
        
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.font = UIFont(name: fontName, size: fontSize) ?? UIFont.systemFontOfSize(fontSize)
        titleLabel.numberOfLines = 1
        titleLabel.textAlignment = .Center
        titleLabel.textColor = color
        titleLabel.textAlignment = .Center
        titleLabel.backgroundColor = .clearColor()
        titleLabel.sizeToFit()
        
        return titleLabel
    }
    
    func setupNavigationBar() {
        
        //Set the title for the navigation bar
        navigationItem.titleView = getTitleViewForNavigationBar("Raj Abishek")
        
        //Status bar must be a light content
        navigationController?.navigationBar.barStyle = .Black;
        
        //Set the left bar button item for the navigation bar
        let logoutButton = UIBarButtonItem(title: "Logout", style: .Plain, target: self, action: #selector(handleLogout))
        let textAttributes = [NSFontAttributeName: UIFont(name: "FiraSans-Medium", size: 14) ?? UIFont.systemFontOfSize(14), NSForegroundColorAttributeName: UIColor.whiteColor()]
        logoutButton.setTitleTextAttributes(textAttributes, forState: UIControlState.Normal)
        
        navigationItem.leftBarButtonItem = logoutButton
    }
    
    func handleLogout() {
        let registrationController = RegistrationController()
        presentViewController(registrationController, animated: true, completion: nil)
    }
}

