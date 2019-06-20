//
//  MeshiPeroAppPeroUITests.swift
//  MeshiPeroAppUITests
//
//  Created by EarthCampus, Inc. on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import XCTest

class MeshiPeroAppPeroUITests: XCTestCase {
    let app = XCUIApplication()
    let tabBarLeftItemName = "めしぺろ"
    let tabBarRightItemName = "追加"
    
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
        
        app.swipeUp()
        XCTAssert(window.frame.contains(menuLabelElement.frame), "一度スワイプした後のUIWindow枠内にラベルが表示されていない")
        
        UserDefaults.standard.removeObject(forKey: "Menu")
    }
    
}
