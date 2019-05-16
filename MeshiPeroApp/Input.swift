//
//  Input.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/15.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class Input {
    
    private let repository: ReadableRepositoryContract
    
    init (repository: ReadableRepositoryContract) {
        self.repository = repository
    }
    
    func inputBaseMenu() -> [String] {
        return self.repository.read()
    }
    
}

