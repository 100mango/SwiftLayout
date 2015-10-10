//
//  iPhone6PLayout.swift
//  SwiftLayout
//
//  Created by Mango on 15/10/10.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit

struct iPhone6PLayoutStruct:CommonLayout{
    let buttonLayout:ButtonLayout = iPhone6PButtonStruct()
}

struct iPhone6PButtonStruct:ButtonLayout{
    let buttonSize:CGSize = CGSizeMake(100, 100)
}