//
//  ViewController.swift
//  iOS_HelloUISwitch
//
//  Created by 王麒翔 on 2023/7/17.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mySwitch: UISwitch!
    @IBAction func makeAChange(_ sender: UISwitch) {
        // use isOn to check the state of the switch
        if sender.isOn == true {
            print("on !!")
            view.backgroundColor = .white
        } else {
            print("off !!")
            view.backgroundColor = .black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mySwitch.isOn = false
        makeAChange(mySwitch)
        
        
        // new a switch using code
        let codeSwitch = UISwitch(frame: CGRect(x: view.frame.midX - 51/2,
                                                y: view.frame.maxY-100,
                                                width: 51,
                                                height: 31))
        // 加到畫面上
        view.addSubview(codeSwitch)
        codeSwitch.isOn = true
        
        // Associates a target object and action method with the control.
        // 宣告 觸發事件
        codeSwitch.addTarget(self, action: #selector(ViewController.codeSwitchChanges(_:)), for: .valueChanged)
        
    }


}

