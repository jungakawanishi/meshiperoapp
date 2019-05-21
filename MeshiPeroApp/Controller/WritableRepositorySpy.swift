//
//  WritableRepositorySpy.swift
//  MeshiPeroApp
//
//  Created by qoorus on 2019/05/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class WritableRepositorySpy: WritableRepositoryContract {
    
    private(set) var callArguments: [String] = []
    
    func write(newMenu: String) {
        self.record(newMenu)
    }
    
    private func record(_ arg: String) {
        self.callArguments.append(arg)
    }
    
}
