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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let input = Input(repository: ReadableRepository())
        let store = UserDefaults.standard.object(forKey: "Menu")
        
        if let _ = store {
            menus = input.readBaseMenu()
        }
        
        let i = Int.random(in: 0..<menus.menus.count)
        menuLabel.text = menus.menus[i].name
        
    }

}
