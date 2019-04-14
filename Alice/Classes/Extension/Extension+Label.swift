//
//  Extension+Label.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation

/// 扩展label字体设置
extension UILabel
{
    ///扩展label 设置字体类型和字体大小
    public func fontSize(_ name:String = Theme.font.normal ,size:CGFloat = 16){
        self.font = UIFont(name: name, size: size)
    }
    ///扩展label 设置字体类型和字体大小
    public func normal_fontSize(_ size:CGFloat = 16){
        self.fontSize(Theme.font.normal,size: size)
    }
    ///扩展label 设置字体类型和字体大小
    public func light_fontSize(_ size:CGFloat = 16){
        self.fontSize(Theme.font.light,size: size)
    }
    ///扩展label 设置字体类型和字体大小
    public func bold_fontSize(_ size:CGFloat = 16){
        self.fontSize(Theme.font.bold,size: size)
    }
}
