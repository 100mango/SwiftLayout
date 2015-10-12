//
//  CommonLayout.swift
//  SwiftLayout
//
//  Created by Mango on 15/10/10.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit

//MARK: CommonLayout
protocol CommonLayout{
    var buttonLayout:ButtonLayout {get}
}

extension CommonLayout{
    var buttonLayout:ButtonLayout {return ButtonLayoutStruct()}
}

struct CommonLayoutStruct:CommonLayout{
}

//MARK: common button layout
protocol ButtonLayout{
    var buttonColor:UIColor {get}
    var buttonSize:CGSize {get}
}

extension ButtonLayout{
    var buttonColor:UIColor {return RGB(0, 255, 0)}
    var buttonSize:CGSize {return CGSizeMake(20, 20)}
}

struct ButtonLayoutStruct:ButtonLayout{
}

//helper
func RGB(red:CGFloat,_ green:CGFloat, _ blue:CGFloat) ->UIColor{
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
}

func RGBA(red:CGFloat,_ green:CGFloat, _ blue:CGFloat, _ alpha:CGFloat) ->UIColor{
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
}