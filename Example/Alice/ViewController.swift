//
//  ViewController.swift
//  Alice
//
//  Created by Gckit on 2019/04/07.
//  Copyright (c) 2019 SeongBrave. All rights reserved.
//

import UIKit
import Alice
import UtilCore

class ViewController: UIViewController {
    @IBOutlet weak var login_Btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewTheme()
        print(Envs.alertMsg(100001111))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension ViewController {
    func setViewTheme(){
        login_Btn.loginTheme()
    }
}

