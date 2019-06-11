//
//  MeshiPeroAppAddMenuUITests.swift
//  MeshiPeroAppUITests
//
//  Created by EarthCampus, Inc. on 2019/05/22.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import XCTest

class MeshiPeroAppAddMenuUITests: XCTestCase {

    let app = XCUIApplication()
    
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

    func testCanClearTextField() {
        
        let tabBarsQuery = app.tabBars
        
        tabBarsQuery.buttons["addMenu"].tap()
        
        let menuTextFieldElement = app.textFields["addMenuViewController_TextFieldToAddMenu"]
        let buttonElement = app.buttons["addMenuViewController_Button"]
        
        menuTextFieldElement.tap()
        menuTextFieldElement.typeText("ほげほげ")
        
        let buttonToHideKeyboardElement = app.buttons["closeKeyboard"]
        buttonElement.tap()
        buttonToHideKeyboardElement.tap()
        XCTAssertEqual(menuTextFieldElement.value as! String, "追加したい献立", "メニューを追加するボタンを押しても入力欄が空欄にならない")
        
    }
    
    func testCanBeIndicatedNewMenu() {
        
        let tabBarsQuery = app.tabBars
        
        tabBarsQuery.buttons["addMenu"].tap()
        
        let menuTextFieldElement = app.textFields["addMenuViewController_TextFieldToAddMenu"]
        let buttonElement = app.buttons["addMenuViewController_Button"]
        
        menuTextFieldElement.tap()
        menuTextFieldElement.typeText("ほげほげ")
        
        let buttonToHideKeyboardElement = app.buttons["closeKeyboard"]
        
        buttonElement.tap()
        buttonToHideKeyboardElement.tap()
        tabBarsQuery.buttons["pero"].tap()
        
        let menuLabelElement = app.staticTexts["PeroViewController_MenuLabel"]
        var count = 0
        var hogeCanBeIndicated = false
        repeat {
            app.swipeRight()
            if (menuLabelElement.label == "ほげほげ") {
                hogeCanBeIndicated = true
                break
            }
            count += 1
        } while (count < 100)
        XCTAssert(hogeCanBeIndicated, "新しい献立を追加して100回スワイプしても、その献立が表示されない")
        
    }

    func testPrevMenu() {

        let tabBarsQuery = app.tabBars

        tabBarsQuery.buttons["addMenu"].tap()

        let menuTextFieldElement = app.textFields["addMenuViewController_TextFieldToAddMenu"]
        let buttonElement = app.buttons["addMenuViewController_Button"]

        menuTextFieldElement.tap()
        menuTextFieldElement.typeText("ほげほげ")

        let buttonToHideKeyboardElement = app.buttons["closeKeyboard"]

        buttonElement.tap()
        buttonToHideKeyboardElement.tap()
        tabBarsQuery.buttons["pero"].tap()

        let menuLabelElement = app.staticTexts["PeroViewController_MenuLabel"]
        var count = 0
        var prevText = ""
        repeat {
            app.swipeRight()
            XCTAssert(prevText != menuLabelElement.label, "前画面：\(prevText)と現在の表示：\(menuLabelElement.label)が同じになっている")
            prevText = menuLabelElement.label
            count += 1
        } while (count < 50)

    }
}
