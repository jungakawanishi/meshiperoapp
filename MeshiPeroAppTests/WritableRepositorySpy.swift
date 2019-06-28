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
    
    private(set) var callArguments: Set<Menu> = []
    
    func write(newMenu: Menu) {
        self.callArguments.insert(newMenu)
    }
    
    func erase(trashMenu: Menu) {
        self.callArguments.remove(trashMenu)
    }
    
}
