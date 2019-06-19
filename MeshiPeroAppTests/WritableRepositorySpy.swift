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
        self.recordAdd(newMenu)
    }
    
    func erase(trashMenu: Menu) {
        
    }
    
    private func recordAdd(_ arg: Menu) {
        self.callArguments.insert(arg)
    }
    
    private func recordRemove(_ arg: Menu) {
        self.callArguments.remove(arg)
    }
    
}
