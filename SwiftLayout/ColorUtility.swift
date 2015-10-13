//
//  ColorUtility.swift
//  SwiftLayout
//
//  Created by Mango on 15/10/13.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit

func RGB(red:CGFloat,_ green:CGFloat, _ blue:CGFloat) ->UIColor{
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
}

func RGBA(red:CGFloat,_ green:CGFloat, _ blue:CGFloat, _ alpha:CGFloat) ->UIColor{
    return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
}

func hexColor(hexStr:String) -> UIColor{

    guard (hexStr.hasPrefix("#")) else{
        print("Invalid RGB string, missing '#' as prefix")
        return UIColor.blackColor()
    }
    
    let index   = hexStr.startIndex.advancedBy(1)
    let hex     = hexStr.substringFromIndex(index)
    let scanner = NSScanner(string: hex)
    var hexValue: CUnsignedLongLong = 0
    
    guard (scanner.scanHexLongLong(&hexValue)) else{
        print("Scan hex error")
        return UIColor.blackColor()
    }
    
    var red:   CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue:  CGFloat = 0.0
    var alpha: CGFloat = 1.0
    switch (hex.characters.count) {
    case 3:
        red   = CGFloat((hexValue & 0xF00) >> 8)       / 15.0
        green = CGFloat((hexValue & 0x0F0) >> 4)       / 15.0
        blue  = CGFloat(hexValue & 0x00F)              / 15.0
    case 4:
        red   = CGFloat((hexValue & 0xF000) >> 12)     / 15.0
        green = CGFloat((hexValue & 0x0F00) >> 8)      / 15.0
        blue  = CGFloat((hexValue & 0x00F0) >> 4)      / 15.0
        alpha = CGFloat(hexValue & 0x000F)             / 15.0
    case 6:
        red   = CGFloat((hexValue & 0xFF0000) >> 16)   / 255.0
        green = CGFloat((hexValue & 0x00FF00) >> 8)    / 255.0
        blue  = CGFloat(hexValue & 0x0000FF)           / 255.0
    case 8:
        red   = CGFloat((hexValue & 0xFF000000) >> 24) / 255.0
        green = CGFloat((hexValue & 0x00FF0000) >> 16) / 255.0
        blue  = CGFloat((hexValue & 0x0000FF00) >> 8)  / 255.0
        alpha = CGFloat(hexValue & 0x000000FF)         / 255.0
    default:
        print("Invalid RGB string, number of characters after '#' should be either 3, 4, 6 or 8")
    }
    return UIColor(red: red, green: green, blue: blue, alpha: alpha)
}