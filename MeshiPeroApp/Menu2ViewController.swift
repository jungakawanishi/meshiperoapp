//
//  ViewController2.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/04/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

// 一時的にMenu2ViewControllerを設定しているが、後に消す予定
class Menu2ViewController: UIViewController {
    
    @IBOutlet weak var menu2Label: UILabel!

    @IBAction func rightSwiped(_ sender: UISwipeGestureRecognizer) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menu2Label.text = "チャーハン"

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
