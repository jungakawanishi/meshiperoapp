//
//  ViewController2.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/04/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

//  TODO 一時的にMenu2ViewControllerを設定しているが、後に消す予定。全て消すので、変数名も一時的にmenu2とする。

class Menu2ViewController: UIViewController {
    
    @IBOutlet weak var menu2Label: UILabel!

    @IBAction func rightSwiped(_ sender: UISwipeGestureRecognizer) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var menu2 = ["カレーライス", "チャーハン", "ギョーザ", "ラーメン", "八宝菜", "唐揚げ"]
        let i = Int.random(in: 0..<menu2.count)
        menu2Label.text = menu2[i]

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
