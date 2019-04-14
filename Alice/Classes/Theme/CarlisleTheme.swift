//
//  CarlisleTheme.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation

public struct CarlisleTheme {
    
}

public extension ThemeProtocol {
    static public var carlisle: CarlisleTheme {
        return CarlisleTheme()
    }
}

extension CarlisleTheme {
    
    ///进货单
    public var login: loginTheme {
        return loginTheme()
    }
    
    ///注册界面
    public var register: registerTheme {
        return registerTheme()
    }
}

///登录模块 ->登录界面
public struct loginTheme {
    
}

///登录模块 ->注册界面
public struct registerTheme {
    
}
