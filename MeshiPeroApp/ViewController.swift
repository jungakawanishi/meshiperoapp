//
//  ViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func tapHandler(sender: AnyObject) {
        menu.text = "カレーライス";
    }

    @IBOutlet weak var menu: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

