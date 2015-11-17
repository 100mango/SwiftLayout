//
//  SwiftTheme.swift
//  SwiftLayout
//
//  Created by Mango on 15/11/7.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit
import Bond

struct Theme {
    static var backgroundColor = Observable<UIColor>(RGB(255, 0, 0))
    static var textColor = Observable<UIColor>(RGB(255, 255, 255))
    static var textFont = Observable<UIFont>(UIFont(name: "Helvetica-Bold", size: 20)!)
    static var backgroundAlpha = Observable<CGFloat>(0.8)
    
    static func nightTheme(){
        backgroundColor.value = RGB(0, 0, 255)
        textColor.value = RGB(200, 200, 200)
        backgroundAlpha.value = 0.9
    }
    
    static func defaultTheme(){
        backgroundColor.value = RGB(255, 0, 0)
        textColor.value = RGB(255, 255, 255)
        backgroundAlpha.value = 0.8
    }
}




