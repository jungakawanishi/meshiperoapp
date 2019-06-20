//
//  MeshiPeroAppRemoveMenuUITests.swift
//  MeshiPeroAppUITests
//
//  Created by qoorus on 2019/06/20.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import XCTest

class MeshiPeroAppRemoveMenuUITests: XCTestCase {

    let app = XCUIApplication()
    let tabBarLeftItemName = "めしぺろ"
    let tabBarCenterItemName = "追加"
    let tabBarRightItemName = "削除"
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCanClearTextFieldToRemove() {
        
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons[tabBarRightItemName].tap()
        
        let menuTextFieldElement = app.textFields["RemoveMenuViewController_TextField"]
        let buttonElement = app.buttons["RemoveMenuViewController_Button"]
        
        menuTextFieldElement.tap()
        menuTextFieldElement.typeText("ほげほげ")
        
        let buttonToHideKeyboardElement = app.buttons["closeKeyboard"]
        buttonElement.tap()
        buttonToHideKeyboardElement.tap()
        XCTAssertEqual(menuTextFieldElement.value as! String, "削除したい献立", "メニューを削除するボタンを押しても入力欄が空欄にならない")
        
    }

}
