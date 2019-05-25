//
//  MeshiPeroAppTests.swift
//  MeshiPeroAppTests
//
//  Created by EarthCampus, Inc. on 2019/03/11.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import XCTest
@testable import MeshiPeroApp

class MeshiPeroAppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testReadBaseMenu() {
        let baseMenu = [Menu(name: "hoge"), Menu(name: "fuga")]
        
        let repositoryStub = ReadableRepositoryStub(baseMenu: baseMenu)
        let input = Input(repository: repositoryStub)
    
        let actualMenu = input.readBaseMenu()
        XCTAssertEqual(actualMenu, baseMenu , "意図したメニューが読み込めていない")
        
    }
    
    func testWriteBaseMenu() {
        let newMenu = Menu(name: "hoge")
        
        let spy = WritableRepositorySpy()
        let output = Output(repository: spy)
        
        output.writeBaseMenu(newMenu: newMenu)
        XCTAssertEqual(newMenu, spy.callArguments.first!, "新しく追加した献立が正しく保存されていない")
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
