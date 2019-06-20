//
//  MeshiPeroAppTabBarUITests.swift
//  MeshiPeroAppUITests
//
//  Created by qoorus on 2019/06/20.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import XCTest

class MeshiPeroAppTabBarUITests: XCTestCase {

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

    func testTabBarToSwitchView() {
        
        let window = app.windows.element(boundBy: 0)
        let tabBarsQuery = app.tabBars
        
        tabBarsQuery.buttons[tabBarCenterItemName].tap()
        
        let textFieldToAddElement = app.textFields["AddMenuViewController_TextField"]
        let buttonToAddElement = app.buttons["AddMenuViewController_Button"]
        let labelToAddElement = app.staticTexts["AddMenuViewController_Label"]
        
        XCTAssert(window.frame.contains(textFieldToAddElement.frame), "追加の画面に切り替えた時に、入力欄がUIWindow枠内に表示されていない")
        XCTAssert(window.frame.contains(buttonToAddElement.frame), "追加の画面に切り替えた時に、追加ボタンがUIWindow枠内に表示されていない")
        XCTAssert(window.frame.contains(labelToAddElement.frame), "追加の画面に切り替えた時に、labelがUIWindow枠内に表示されていない")
        
        tabBarsQuery.buttons[tabBarRightItemName].tap()
        
        let textFieldToRemoveElement = app.textFields["RemoveMenuViewController_TextField"]
        let buttonToRemoveElement = app.buttons["RemoveMenuViewController_Button"]
        let labelToRemoveElement = app.staticTexts["RemoveMenuViewController_Label"]
        
        XCTAssert(window.frame.contains(textFieldToRemoveElement.frame), "削除の画面に切り替えた時に、入力欄がUIWindow枠内に表示されていない")
        XCTAssert(window.frame.contains(buttonToRemoveElement.frame), "削除の画面に切り替えた時に、削除ボタンがUIWindow枠内に表示されていない")
        XCTAssert(window.frame.contains(labelToRemoveElement.frame), "削除の画面に切り替えた時に、labelがUIWindow枠内に表示されていない")
        
        tabBarsQuery.buttons[tabBarLeftItemName].tap()
        
        let menuLabelElement = app.staticTexts["PeroViewController_MenuLabel"]
        
        XCTAssert(window.frame.contains(menuLabelElement.frame), "めしぺろの画面に切り替えた時に、menuLabelがUIWindow枠内に表示されていない")
        
    }

}
