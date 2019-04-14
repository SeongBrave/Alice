//
//  AlertMsgEvns.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation

public extension EnvsProtocol {
    
    ///提示文案信息
    static public func alertMsg(_ msgCode:Int) -> String {
        if Envs.isDebug {
            print("信息码:\(msgCode)，错误信息:\(alertmsg[msgCode]?.msgtitle ?? ""),其它信息:\(alertmsg[msgCode]?.msginfo ?? "")")
        }
        return alertmsg[msgCode]?.msgtitle ?? "此功能未开放"
    }
}
/*
 项目区别码 : 10开始
 ios android h5 区别码分别为 1 ，2 ， 3 不区别为 0
 模块区别码：00App级别区别码 01:登录注册模块 02:商品模块 03: 分类模块 04: 购物车模块 05:我的模块
 界面层级显示码: 0第零级（与模块同级）1第一级 2第二级 3第三级 以及往下排序 应该不会超过10个层级吧
 具体提示码: 00 开始
 eg: 10000199 -> 表示10项目号，0不区分设备类型 00登录注册模块，0 表示第零级（与模块同级吧）99表示网络错误码
 */
let alertmsg :Dictionary<Int,(msgcode:Int,msgtitle:String,msginfo:String)>
    = [
        //App级区别码10000
        10000099 : (msgcode:10000199,msgtitle:"🥶~网络异常",msginfo:"在生产模式时把错误码为1开头的错误信息转换为提示信息"),
        ///登陆注册区别码10001
        10001000 : (msgcode:10001000,msgtitle:"请输入正确的用户名",msginfo:"注册的时候验证用户名"),
        10001001 : (msgcode:10001001,msgtitle:"请输入正确的手机号",msginfo:"注册模块手机号验证"),
        10001002 : (msgcode:10001002,msgtitle:"短信验证码不正确",msginfo:"注册模块验短信验证码验证"),
        10001003 : (msgcode:10001003,msgtitle:"登录密码是由6-20位字母、数字组合而成",msginfo:"注册模块密码验证"),
        10001004 : (msgcode:10001004,msgtitle:"两次密码输入不一致",msginfo:"注册模块密码重复验证"),
        10001005 : (msgcode:10001005,msgtitle:"请输入正确的邮箱号",msginfo:"输入邮箱的时候验证"),
        ///商品模块区别码10002
        10002000 : (msgcode:10002000,msgtitle:"商品模块",msginfo:"商品模块"),
        ///分类模块区别码10003
        10003000 : (msgcode:10003000,msgtitle:"分类模块",msginfo:"分类模块"),
        ///购物车模块区别码10004
        10004000 : (msgcode:10004000,msgtitle:"购物车模块",msginfo:"购物车模块"),
        ///我的模块区别码10005
        10005000 : (msgcode:10005000,msgtitle:"我的模块",msginfo:"我的模块"),
]
