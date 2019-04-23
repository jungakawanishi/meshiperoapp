//
//  ViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var menuLabel: UILabel!
    
    @IBAction func rightSwiped(_ sender: UISwipeGestureRecognizer) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var menu = ["カレーライス", "チャーハン", "ギョーザ", "ラーメン", "八宝菜", "唐揚げ"]
        let i = Int.random(in: 0..<6)
        menuLabel.text = menu[i]
        
    }


}

