//
//  ViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class CurryRiceViewController: UIViewController {

    @IBOutlet weak var curryRiceLabel: UILabel!
    
    @IBAction func rightSwipe(sender: AnyObject) {
        performSegue(withIdentifier: "toFriedRiceViewController", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        curryRiceLabel.text = "カレーライス"
        
    }


}

