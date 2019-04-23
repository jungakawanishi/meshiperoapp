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
        
        XCTAssertEqual(app.staticTexts["MenuViewController_Label"].label, "カレーライス", "ラベルの初期表示がカレーライスになっていない")
        XCTAssert(window.frame.contains(app.staticTexts["MenuViewController_Label"].frame), "初期表示でのUIWindow枠内にラベルが表示されていない")
        
        app.swipeRight()
        XCTAssertEqual(app.staticTexts["Menu2ViewController_Label"].label, "チャーハン", "一度スワイプした後のラベルの表示がチャーハンになっていない")
        XCTAssert(window.frame.contains(app.staticTexts["Menu2ViewController_Label"].frame), "一度スワイプした後のUIWindow枠内にラベルが表示されていない")
        
        app.swipeRight()
        XCTAssertEqual(app.staticTexts["MenuViewController_Label"].label, "カレーライス", "二度スワイプした後のラベルの表示がカレーライスになっていない")
        XCTAssert(window.frame.contains(app.staticTexts["MenuViewController_Label"].frame), "二度スワイプした後のUIWindow枠内にラベルが表示されていない")
        
    }
}
