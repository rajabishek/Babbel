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
        container.backgroundColor = UIColor.whiteColor()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.layer.cornerRadius = 4
        container.layer.masksToBounds = true
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Color.baseColor
        
        setupLayout()
    }
    
    func setupLayout() {
        view.addSubview(registrationInputsContainer)
        
        var allConstraints = [NSLayoutConstraint]()
        
        allConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-16-[v0]-16-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        allConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[v0(80)]", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": registrationInputsContainer])
        allConstraints.append(NSLayoutConstraint(item: registrationInputsContainer, attribute: .CenterY, relatedBy: .Equal, toItem: view, attribute: .CenterY, multiplier: 1, constant: 0))
        
        NSLayoutConstraint.activateConstraints(allConstraints)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}
