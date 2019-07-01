//
//  PeroViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class PeroViewController: UIViewController {
    
    var presentMenus = readStore()
    var nextMenus = readStore()
    
    @IBOutlet weak var menuLabel: UILabel!
    
    static func readStore() -> Menus {
        let input = Input(repository: ReadableRepository())
        let store = UserDefaults.standard.object(forKey: "Menu")
        
        if let _ = store {
            return input.readBaseMenu()
        }
        return try! Menus(menus: Set<Menu>([Menu(name: "カレーライス"), Menu(name: "焼きそば")]))
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let randomMenu = presentMenus.menus.randomElement()!

        menuLabel.text = randomMenu.name
        
        nextMenus.menus = nextMenus.menus.filter{$0 != randomMenu}
        
    }

}
