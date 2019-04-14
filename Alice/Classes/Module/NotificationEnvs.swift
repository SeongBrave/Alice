//
//  NotificationEnvs.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation

public extension EnvsProtocol {
    ///通知key
    static public var notificationKey: NotificationEnvs {
        return NotificationEnvs()
    }
}

/// 通知key
public struct NotificationEnvs {
    
}

extension NotificationEnvs {
    
    ///网络断开
    public var notReachable:String {
        get {
            return "com.not.reachable.key"
        }
    }
    
    ///网络已连接
    public var reachabled:String {
        get {
            return "com.reachabled.key"
        }
    }
    
    /// 登录成功
    public var loginSuccess:String {
        get {
            return "com.login.success.key"
        }
    }
    
    /// 退出登录
    public var logoutSuccess:String {
        get {
            return "com.logout.success.key"
        }
    }
    
    /// 用户信息改变
    public var useChanged:String {
        get {
            return "com.user.changed.key"
        }
    }
}
