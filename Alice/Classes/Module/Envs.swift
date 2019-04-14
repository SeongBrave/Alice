//
//  Envs.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation

public protocol EnvsProtocol {
    
}

public class Envs : EnvsProtocol {
    
    /// 表示是否 为debug模式
    static public var isDebug:Bool{
        get{
            return Envs.saveDebug
        }
        set(newVal){
            Envs.saveDebug = newVal
        }
    }
    
    ///网络基础配置地址
    static public var baseUrl:[String]{
        get{
            if Envs.isDebug {
                return Envs.save_debug_baseUrl
            }else{
                return ["http://seongbrave.cn/api/v1/"]
            }
        }
        set(newVal){
            Envs.save_debug_baseUrl = newVal
        }
    }
    
    ///缓网络基础配置测试地址
    static private var save_debug_baseUrl = ["http://test.seongbrave.cn/api/v1/"]
    
    /// 是否是debug模式
    static private var saveDebug:Bool = true
}

public extension EnvsProtocol {
    
    ///sharesdk配置
    static public var share: shareEnvs {
        return shareEnvs()
    }
    
    ///极光推送配置
    static public var jpush: JPushEnvs {
        return JPushEnvs()
    }
}

/// sharesdk
public struct shareEnvs {
    
}

extension shareEnvs {
    
    public var appKey:String{
        get{
            return "**********"
        }
    }
    
    public var appSecret:String{
        get{
            return "**********"
        }
    }
    
    /// 微信
    public var wx_app_id:String{
        get{
            return "wx********"
        }
    }
    
    public var wx_app_secret:String{
        get{
            return "wx********"
        }
    }
}

/// 极光推送SDK
public struct JPushEnvs {
    
}

extension JPushEnvs {
    
    /// 极光推送
    public var appKey:String{
        get{
            return "***********"
        }
    }
    
    public var appSecret:String{
        get{
            return "***************"
        }
    }
    
    public var channel:String{
        get{
            return "**********"
        }
    }
    
    /// isProduction 是否生产环境. 如果为开发状态,设置为 NO; 如果为生产状态,应改为 YES.
    public var is_production:Bool{
        get{
            return !Envs.isDebug
        }
    }
}
