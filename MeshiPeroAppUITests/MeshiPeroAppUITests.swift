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
        let menu = ["カレーライス", "チャーハン", "ギョーザ", "ラーメン", "八宝菜", "唐揚げ"]
        let menuLabelElement = app.staticTexts["MenuViewController_Label"]
        let menu2LabelElement = app.staticTexts["Menu2ViewController_Label"]
        
        // TODO Menu2ViewControllerを削除した後、こちらもmenu2に関わるものを削除
        
        XCTAssert(menu.contains(menuLabelElement.label), "初期表示で意図した献立が表示されていない")
        XCTAssert(window.frame.contains(menuLabelElement.frame), "初期表示でのUIWindow枠内にラベルが表示されていない")
        
        app.swipeRight()
        XCTAssert(menu.contains(menu2LabelElement.label), "一度スワイプした後で意図した献立が表示されていない")
        XCTAssert(window.frame.contains(menu2LabelElement.frame), "一度スワイプした後のUIWindow枠内にラベルが表示されていない")
        
        app.swipeRight()
        XCTAssert(menu.contains(menuLabelElement.label), "二度スワイプした後で意図した献立が表示されていない")
        XCTAssert(window.frame.contains(menuLabelElement.frame), "二度スワイプした後のUIWindow枠内にラベルが表示されていない")
    }
    
}
