//
//  RemoveMenuViewController.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/06/19.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class RemoveMenuViewController: UIViewController {
    
    @IBOutlet weak var textFieldToRemoveMenu: UITextField!

    var textFieldString = ""
    let output = Output(repository: WritableRepository())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toolBar:UIToolbar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.sizeToFit()
        
        let spacer:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        let doneButton:UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(closeKeyboard))
        doneButton.accessibilityLabel = "closeKeyboardToRemove"
        let toolBarItems = [spacer,doneButton]
        toolBar.setItems(toolBarItems, animated: true)
        
        textFieldToRemoveMenu.inputAccessoryView = toolBar
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pushButton(_ sender: UIButton) {
        
        let trashName = textFieldToRemoveMenu.text!
        
        if (trashName != "") {
            
            textFieldString = trashName
            
            let trashMenu = Menu(name: textFieldString)
            
            output.eraseBaseMenu(trashMenu: trashMenu)
            
            textFieldToRemoveMenu.text = ""
        }
        
    }
    
    @objc func closeKeyboard() {
        textFieldToRemoveMenu.resignFirstResponder()
    }
        
}
