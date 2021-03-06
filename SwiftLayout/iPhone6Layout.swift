//
//  iPhone6Layout.swift
//  SwiftLayout
//
//  Created by Mango on 15/10/10.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit

struct iPhone6LayoutStruct:CommonLayout{
    let buttonLayout:ButtonLayout = iPhone6ButtonStruct()
}

struct iPhone6ButtonStruct:ButtonLayout{
    let buttonColor:UIColor = hexColor("#01b2b2")
}


//class cluster
class WechatoutiPhone6:Wechatout{
    override  init() {
        super.init()
        self.topMargin = 20
    }
}

