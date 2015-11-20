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


//Class cluster

class Wechatout{
    //边距
    var topMargin:CGFloat = 10
    //颜色
    var themeColor:UIColor = UIColor.redColor()
    //Size
    var size:CGSize = CGSizeMake(20, 20)
    //图片名字
    var backgroundImageName = "background.png"
    
    class func wechatout()->Wechatout{
        
        var wechatout:Wechatout
        switch screenModel{
        case .Bigger:
            wechatout = WechatoutiPhone6()
        default:
            wechatout = Wechatout()
        }
        return wechatout
    }
}