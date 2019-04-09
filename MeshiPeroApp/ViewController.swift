//
//  ViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label_1: UILabel!
    
    @IBOutlet weak var label_2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label_1.text = "カレーライス"
        
        label_2.text = "チャーハン"
    }


}

