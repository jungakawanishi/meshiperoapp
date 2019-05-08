//
//  ViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class PeroViewController: UIViewController {

    
    @IBOutlet weak var menuLabel: UILabel!
    
    @IBAction func rightSwiped(_ sender: UISwipeGestureRecognizer) {
    }
    
    var fromAppDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if UserDefaults.standard.object(forKey: "Menu") != nil {
            fromAppDelegate.menu = UserDefaults.standard.object(forKey: "Menu") as! [String]
        }
        
        let i = Int.random(in: 0..<fromAppDelegate.menu.count)
        menuLabel.text = fromAppDelegate.menu[i]
        
    }

}

class AddMenuViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldToAddMenu: UITextField!
    
    var textFieldString = ""
    
    var fromAppDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pushButton(_ sender: UIButton) {
        
        if (textFieldToAddMenu.text != "") {
            
            textFieldString = textFieldToAddMenu.text!
            
            fromAppDelegate.menu.append(textFieldString)
            
            textFieldToAddMenu.text = ""
            
            UserDefaults.standard.set( fromAppDelegate.menu, forKey: "Menu" )
            
        }
        
    }
}

