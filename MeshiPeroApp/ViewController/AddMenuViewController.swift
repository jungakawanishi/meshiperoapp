//
//  AddMenuViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/09.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

var menus = [Menu(name: "カレーライス")]

class AddMenuViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldToAddMenu: UITextField!
    
    var textFieldString = ""
    let output = Output(repository: WritableRepository())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toolBar:UIToolbar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.sizeToFit()
        
        let spacer:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        let doneButton:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(closeKeyboard))
        doneButton.accessibilityLabel = "closeKeyboard"
        let toolBarItems = [spacer,doneButton]
        toolBar.setItems(toolBarItems, animated: true)
        
        textFieldToAddMenu.inputAccessoryView = toolBar
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func pushButton(_ sender: UIButton) {
        
        if (textFieldToAddMenu.text != "") {
            
            textFieldString = textFieldToAddMenu.text!
            
            menus.append(Menu(name: textFieldString))
            
            textFieldToAddMenu.text = ""
            
            output.writeBaseMenu(bases: menus) // UserDefaultsの仕様上、保存できるvalueの型は制限されているのか？ここで 'Attempt to insert non-property list object' と出る
            
        }
        
    }
    
    @objc func closeKeyboard() {
        textFieldToAddMenu.resignFirstResponder()
    }
}
