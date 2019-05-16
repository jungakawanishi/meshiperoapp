//
//  WritableRepositorySpy.swift
//  MeshiPeroApp
//
//  Created by qoorus on 2019/05/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class WritableRepositorySpy: WritableRepositoryContract {
    
    private(set) var callArguments: [Menu] = []
    
    func write(menu: [Menu]) {
        self.record(menu)
    }
    
    private func record(_ args: [Menu]) {
        self.callArguments += args
    }
    
}
