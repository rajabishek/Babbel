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
        
        navigationItem.titleView = getTitleViewForNavigationBar("Raj Abishek")
    }
}

