//
//  Theme.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation

public protocol ThemeProtocol {
    
}

/*
 *主要是配置app的皮肤，背景颜色、字体颜色等
 */
public class Theme  : ThemeProtocol{
    
}

public extension ThemeProtocol {
    
    static var btn: BtnTheme {
        return BtnTheme()
    }
    
    static var btn2: BtnTheme2 {
        return BtnTheme2()
    }
    
    static var tf: TfTheme {
        return TfTheme()
    }
    
    static var v: VTheme {
        return VTheme()
    }
    
    ///系统字体类型
    static var font: FontTheme {
        return FontTheme()
    }
}

/// 按钮颜色
public struct BtnTheme {
    
}

/// 按钮颜色2
public struct BtnTheme2 {
    
}

/// 文本颜色
public struct TfTheme {
    
}

/// view颜色
public struct VTheme {
    
}

/// 字体类型
public struct FontTheme {
    
}

extension BtnTheme {
    
}

extension FontTheme {
    
    ///常规字体
    public var normal:String{
        get{
            let floatVersion = (UIDevice.current.systemVersion as NSString).floatValue
            if  floatVersion >= 9.0 {
                return "PingFangSC-Regular"
            }else{
                return "Helvetica"
            }
        }
    }
    
    ///细体
    public var light:String{
        get{
            let floatVersion = (UIDevice.current.systemVersion as NSString).floatValue
            if  floatVersion >= 9.0 {
                return "PingFangSC-Light"
            }else{
                return "Helvetica-Light"
            }
        }
    }
    
    /// 粗体
    public var bold:String{
        get{
            let floatVersion = (UIDevice.current.systemVersion as NSString).floatValue
            if  floatVersion >= 9.0 {
                return "PingFangSC-Medium"
            }else{
                return "Helvetica-Bold"
            }
        }
    }
}

extension BtnTheme {
    
    /// 按钮标题字体颜色
    public var title:UIColor {
        get {
            return .white
        }
    }
    
    /// normal状态 按钮颜色
    public var normal:UIColor {
        get {
            return UIColor(hex: "FF3727")
        }
    }
    
    /// 高亮状态 按钮颜色
    public var highlighted:UIColor {
        get {
            return UIColor(r: 251, g: 173, b: 63, alpha: 0.84)
        }
    }
    
    /// 不可点击状态 按钮颜色
    public var disabled:UIColor {
        get {
            return UIColor(hex: "FF3727",alpha:0.68)
        }
    }
    
    /// 不可点击状态 按钮字体颜色
    public var disabled_Title:UIColor {
        get {
            return UIColor(hex: "9B9B9B")
        }
    }
    
    /// 不可点击状态 按钮字体颜色
    public var highlighted_Title:UIColor {
        get {
            return .white
        }
    }
}

extension BtnTheme2 {
    
    /// 按钮标题字体颜色
    public var title:UIColor {
        get {
            return .black
        }
    }
    
    /// border 按钮颜色
    public var border:UIColor {
        get {
            return UIColor(hex: "FF3727")
        }
    }
    
    /// normal状态 按钮颜色
    public var normal:UIColor {
        get {
           return .white
        }
    }
    
    /// 高亮状态 按钮颜色
    public var highlighted:UIColor {
        get {
            return UIColor(r: 251, g: 173, b: 63, alpha: 0.84)
        }
    }
    
    /// 不可点击状态 按钮颜色
    public var disabled:UIColor {
        get {
            return .white
        }
    }
    
    /// 不可点击状态 按钮字体颜色
    public var disabled_Title:UIColor {
        get {
            return UIColor(hex: "9B9B9B")
        }
    }
    
    /// 不可点击状态 按钮字体颜色
    public var highlighted_Title:UIColor {
        get {
            return .white
        }
    }
}

extension TfTheme {
    
    /// text字体 颜色，类型登陆注册 等的文字颜色
    public var text:UIColor {
        get {
            return UIColor(hex: "333333")
        }
    }
}

extension VTheme {
    
    /// 默认背景的颜色
    public var bg_color:UIColor {
        get {
            return UIColor(hex: "f8f8f8")
        }
    }
    
    /// 默认分割线的颜色
    public var separate_Line:UIColor {
        get {
            return UIColor(hex: "e6e6e6")
        }
    }
    
    /// 头部导航字体颜色、界面大部分字体颜色
    public var text:UIColor {
        get {
            return UIColor(hex: "333333")
        }
    }
}
