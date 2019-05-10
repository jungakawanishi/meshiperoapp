//
//  AddMenuViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/09.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

var menu = [
    Menu(name: "カレーライス").name,
    Menu(name: "チャーハン").name,
    Menu(name: "ラーメン").name,
    Menu(name: "ギョーザ").name,
    Menu(name: "唐揚げ").name,
    Menu(name: "八宝菜").name
]

class AddMenuViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldToAddMenu: UITextField!
    
    var textFieldString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func pushButton(_ sender: UIButton) {
        
        if (textFieldToAddMenu.text != "") {
            
            textFieldString = textFieldToAddMenu.text!
            
            menu.append(Menu(name: textFieldString).name)
            
            textFieldToAddMenu.text = ""
            
            UserDefaults.standard.set( menu, forKey: "Menu" )
            
        }
        
    }
    
}
