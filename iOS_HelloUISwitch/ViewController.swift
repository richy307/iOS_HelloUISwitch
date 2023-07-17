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
    }


}

