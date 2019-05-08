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
    
    var fromAppDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var textFieldString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let i = Int.random(in: 0..<fromAppDelegate.menu.count)
        menuLabel.text = fromAppDelegate.menu[i]
        
    }

    @IBAction func pushButton(_ sender: UIButton) {

        textFieldString = menuTextField.text!
        
        menuTextField.text = ""
    }

}

