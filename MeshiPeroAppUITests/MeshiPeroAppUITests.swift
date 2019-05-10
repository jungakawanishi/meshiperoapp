//
//  MeshiPeroAppUITests.swift
//  MeshiPeroAppUITests
//
//  Created by EarthCampus, Inc. on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import XCTest

class MeshiPeroAppUITests: XCTestCase {
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

    func testSwipeToOpenAnotherView() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let window = app.windows.element(boundBy: 0)
        let menuLabelElement = app.staticTexts["PeroViewController_MenuLabel"]
        
        XCTAssert(window.frame.contains(menuLabelElement.frame), "初期表示でのUIWindow枠内にラベルが表示されていない")
        
        app.swipeRight()
        XCTAssert(window.frame.contains(menuLabelElement.frame), "一度スワイプした後のUIWindow枠内にラベルが表示されていない")
        
        UserDefaults.standard.removeObject(forKey: "Menu")
    }
    
    func testTabBarToSwitchView() {
        
        let window = app.windows.element(boundBy: 0)
        let tabBarsQuery = app.tabBars
        
        tabBarsQuery.buttons["addMenu"].tap()
        
        let menuTextFieldElement = app.textFields["addMenuViewController_TextFieldToAddMenu"]
        let buttonElement = app.buttons["addMenuViewController_Button"]
        
        XCTAssert(window.frame.contains(menuTextFieldElement.frame), "addMenuに画面を切り替えた時に、textFieldToAddMenuがUIWindow枠内に表示されていない")
        XCTAssert(window.frame.contains(buttonElement.frame), "addMenuに画面を切り替えた時に、追加ボタンがUIWindow枠内に表示されていない")
        
        tabBarsQuery.buttons["pero"].tap()
        
        let menuLabelElement = app.staticTexts["PeroViewController_MenuLabel"]
        
        XCTAssert(window.frame.contains(menuLabelElement.frame), "peroに画面を切り替えた時に、menuLabelがUIWindow枠内に表示されていない")
        
    }
    
    func testCanClearTextField() {
        
        let tabBarsQuery = app.tabBars
        
        tabBarsQuery.buttons["addMenu"].tap()
        
        let menuTextFieldElement = app.textFields["addMenuViewController_TextFieldToAddMenu"]
        let buttonElement = app.buttons["addMenuViewController_Button"]
        
        menuTextFieldElement.tap()
        menuTextFieldElement.typeText("ほげほげ")
        app.buttons["Hide keyboard"].tap()
        buttonElement.forceTapElement()
        XCTAssertEqual(menuTextFieldElement.value as! String, "", "メニューを追加するボタンを押しても入力欄が空欄にならない")
        
    }
    
    func testCanBeIndicatedNewMenu() {
        
        let tabBarsQuery = app.tabBars
        
        tabBarsQuery.buttons["addMenu"].tap()
        
        let menuTextFieldElement = app.textFields["addMenuViewController_TextFieldToAddMenu"]
        let buttonElement = app.buttons["addMenuViewController_Button"]
        
        menuTextFieldElement.tap()
        menuTextFieldElement.typeText("ほげほげ")
        app.buttons["Next keyboard"].tap()
        buttonElement.tap()
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
    
}

/*Sends a tap event to a hittable/unhittable element.*/
extension XCUIElement {
    func forceTapElement() {
        if self.isHittable {
            self.tap()
        }
        else {
            let coordinate: XCUICoordinate = self.coordinate(withNormalizedOffset: CGVector(dx:0.0, dy:0.0))
            coordinate.tap()
        }
    }
}
