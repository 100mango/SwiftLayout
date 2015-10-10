//
//  iPhone6PLayout.swift
//  SwiftLayout
//
//  Created by Mango on 15/10/10.
//  Copyright © 2015年 Mango. All rights reserved.
//

import UIKit

struct iPhone6PLayoutStruct:CommonLayout{
    var buttonLayout:ButtonLayout {return iPhone6PButtonStruct()}
}

struct iPhone6PButtonStruct:ButtonLayout{
    var buttonSize:CGSize {return CGSizeMake(100, 100)}
    
}