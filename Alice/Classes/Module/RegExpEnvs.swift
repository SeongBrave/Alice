//
//  RegExpEnvs.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation

public extension EnvsProtocol {
    
    ///正则表达式
    static public var regExp: RegExpEnvs {
        return RegExpEnvs()
    }
}

/// 通知key
public struct RegExpEnvs {
    
}

extension RegExpEnvs {
    
    ///用户名
    public var username:String {
        get {
            return "^[a-zA-Z0-9_-]{4,16}$"
        }
    }
    
    ///手机号
    public var phone:String {
        get {
            return "^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$"
        }
    }
    
    ///密码
    public var password:String {
        get {
            return "^[a-zA-Z0-9_-]{6,18}$"
        }
    }
    
    /// email
    public var email:String {
        get {
            return "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
        }
    }
}
