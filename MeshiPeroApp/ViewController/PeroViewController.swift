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
    
    @IBAction func upSwiped(_ sender: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "PeroSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next = segue.destination as? UITabBarController
        let _ = next?.view
        let nextPero = next?.viewControllers!.first{$0 is PeroViewController} as! PeroViewController
        nextPero.presentMenus = nextMenus
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let randomMenu = presentMenus.menus.randomElement()!

        menuLabel.text = randomMenu.name
        
        nextMenus.menus = nextMenus.menus.filter{$0 != randomMenu}
        
    }

}
