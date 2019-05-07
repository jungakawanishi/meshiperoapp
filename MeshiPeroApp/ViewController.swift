//
//  ViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var menuLabel: UILabel!
    
    @IBOutlet weak var menuTextField: UITextField!
    
    @IBAction func rightSwiped(_ sender: UISwipeGestureRecognizer) {
    }
    
    var textFieldString = ""
    
    var menu = ["カレーライス", "チャーハン", "ギョーザ", "ラーメン", "八宝菜", "唐揚げ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let i = Int.random(in: 0..<menu.count)
        menuLabel.text = menu[i]
        
    }

    @IBAction func pushButton(_ sender: UIButton) {

        textFieldString = menuTextField.text!
        
        menu += [textFieldString]
        
        menuTextField.text = ""
    }

}

