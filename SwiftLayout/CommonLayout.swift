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
}

extension ButtonLayout{
    var buttonColor:UIColor {return UIColor.blueColor()}
}

struct ButtonLayoutStruct:ButtonLayout{
}
