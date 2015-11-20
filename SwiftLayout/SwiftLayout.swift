//
//  SwiftLayout.swift
//  SwiftLayout
//
//  Created by Mango on 15/10/10.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit

enum ScreenModel {
    case Inch35
    case Inch4
    case Bigger
    case BiggerPlus
    
    enum PadModel {
        case Normal
        case Pro
    }
    case iPad(PadModel)
}

let screenModel: ScreenModel = {
    
    let screen = UIScreen.mainScreen()
    let nativeWidth = screen.nativeBounds.size.width
    
    switch nativeWidth {
        
    case 2 * 320:
        let nativeHeight = screen.nativeBounds.size.height
        return nativeHeight > (2 * 480) ? .Inch4 : .Inch35
        
    case 2 * 375:
        return .Bigger
        
    case 3 * 414:
        return .BiggerPlus
        
    case 2 * 768, 768:
        return .iPad(.Normal)
        
    case 2 * 1024:
        return .iPad(.Pro)
        
    default:
        print("Warning: Can NOT detect screenModel!")
        return .Bigger // Default
    }
    
}()

var globalStyle:CommonLayout = {
    
    switch screenModel{
    case .Bigger:
        return iPhone6LayoutStruct()
    case .BiggerPlus:
        return iPhone6PLayoutStruct()
    default:
        return CommonLayoutStruct()
    }
}()


func refreshStyle(){
    globalStyle = {
        switch screenModel{
        case .Bigger:
            return iPhone6LayoutStruct()
        case .BiggerPlus:
            return iPhone6PLayoutStruct()
        default:
            return CommonLayoutStruct()
        }}()
}


//class cluster
class commonStyle
{
    var wechatout:Wechatout = Wechatout()
}

