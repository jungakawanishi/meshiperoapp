//
//  WritableRepositorySpy.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import XCTest
@testable import MeshiPeroApp

class WritableRepositorySpy: WritableRepositoryContract {
    
    private(set) var callArguments: [Menu] = []
    
    func writeNewMenu(newMenu: Menu) {
        self.record(newMenu)
    }
    
    private func record(_ arg: Menu) {
        self.callArguments.append(arg)
    }
    
}
