//
//  SwiftTheme.swift
//  SwiftLayout
//
//  Created by Mango on 15/11/7.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit
import Bond

struct defaultTheme {
    var color = Observable<UIColor>(RGB(0, 0, 0))
}

func refreshTheme(){
    if theme.color.value == RGB(0, 0, 0) {
        theme.color.value = RGB(255, 255, 255)
    }else{
        theme.color.value = RGB(0, 0, 0)
    }
}

var theme = defaultTheme()

