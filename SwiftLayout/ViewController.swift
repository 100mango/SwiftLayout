//
//  ViewController.swift
//  SwiftLayout
//
//  Created by Mango on 15/10/10.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit
import Bond

class ViewController: UIViewController {
    
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.frame.size = globalStyle.buttonLayout.buttonSize
        button.backgroundColor = globalStyle.buttonLayout.buttonColor
        button.center = self.view.center
        self.view.addSubview(button)
    }
}

class ThemeViewController: UIViewController {
    
    let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.frame.size = globalStyle.buttonLayout.buttonSize
        Theme.backgroundColor.bindTo(button.bnd_backgroundColor)
        button.addTarget(self, action: Selector("nightTheme"), forControlEvents: .TouchUpInside)
        button.center = self.view.center
        self.view.addSubview(button)
    }
    
    func nightTheme(){
        Theme.nightTheme()
    }

}

