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
    let tabBarLeftItemName      = "めしぺろ"
    let tabBarCenterItemName    = "追加"
    let tabBarRightItemName     = "削除"
    let closeKeyboardToAdd      = "closeKeyboardToAdd"
    let closeKeyboardToRemove   = "closeKeyboardToRemove"
    
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
        
        let buttonToHideKeyboardElement = app.buttons[closeKeyboardToRemove]
        buttonElement.tap()
        buttonToHideKeyboardElement.tap()
        XCTAssertEqual(menuTextFieldElement.value as! String, "削除したい献立", "メニューを削除するボタンを押しても入力欄が空欄にならない")
        
    }
    
    func testCanEraseMenu() {
        
        let tabBarsQuery = app.tabBars
        
        tabBarsQuery.buttons[tabBarCenterItemName].tap()
        
        let menuTextFieldToAddElement = app.textFields["AddMenuViewController_TextField"]
        let buttonToAddElement = app.buttons["AddMenuViewController_Button"]
        
        menuTextFieldToAddElement.tap()
        menuTextFieldToAddElement.typeText("ほげほげ")
        
        let hideKeyboardInAddElement = app.buttons[closeKeyboardToAdd]
        
        buttonToAddElement.tap()
        hideKeyboardInAddElement.tap()
        tabBarsQuery.buttons[tabBarRightItemName].tap()
        
        let menuTextFieldToRemoveElement = app.textFields["RemoveMenuViewController_TextField"]
        let buttonToRemoveElement = app.buttons["RemoveMenuViewController_Button"]
        
        menuTextFieldToRemoveElement.tap()
        menuTextFieldToRemoveElement.typeText("ほげほげ")
        
        let hideKeyboardInRemoveElement = app.buttons[closeKeyboardToRemove]
        
        buttonToRemoveElement.tap()
        hideKeyboardInRemoveElement.tap()
        tabBarsQuery.buttons[tabBarLeftItemName].tap()
        app.swipeUp()
        
        let menuLabelElement = app.staticTexts["PeroViewController_MenuLabel"]
        var count = 0
        var hogeCanErase = true
        repeat {
            app.swipeUp()
            if (menuLabelElement.label == "ほげほげ") {
                hogeCanErase = false
                break
            }
            count += 1
        } while (count < 20)
        XCTAssert(hogeCanErase, "新しい献立を追加して削除して1回スワイプした後の状況で、20回スワイプしているうちに、その献立が表示された")
        
    }

}
