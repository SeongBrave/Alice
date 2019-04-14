//
//  Extension+Button.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import Foundation
import UtilCore

/// 扩展label字体设置
extension UIButton
{
    ///默认登录按钮设置
    public func loginTheme(){
        self.changeBorderColor(.clear)
        self.setTitleColor(Theme.btn.title, for: .normal)
        self.setTitleColor(Theme.btn.disabled_Title, for: .disabled)
        self.setTitleColor(Theme.btn.highlighted_Title, for: .highlighted)
        self.changeBackgroundImage(Theme.btn.normal, highlightedColor: Theme.btn.highlighted, disabledColor: Theme.btn.disabled)
    }
    
    public func sendMsgTheme(){
        self.setTitleColor(Theme.btn.normal, for: .normal)
        self.setTitleColor(Theme.btn.disabled_Title, for: .disabled)
        self.setTitleColor(Theme.btn.disabled_Title, for: .highlighted)
    }
}
