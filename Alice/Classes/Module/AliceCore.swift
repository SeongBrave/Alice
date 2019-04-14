//
//  AliceCore.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation
import UIKit


/// 本模块的名称， 本模块的storyboard 名称必须 与模块名称相同 ,已经用于静态资源的加载回用到
let modularName = "Alice"

public  class  AliceCore {
    
    public static var sharedInstance :  AliceCore {
        struct Static {
            static let instance :  AliceCore =  AliceCore()
        }
        return Static.instance
    }
    
    ///供其他模块使用
    public static var bundle:Bundle?{
        get{
            guard let bundleURL = Bundle(for: self).url(forResource: modularName, withExtension: "bundle") else {
                return nil
            }
            guard let bundle = Bundle(url: bundleURL) else {
                return nil
            }
            return bundle
        }
    }
}

