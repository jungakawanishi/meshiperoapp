//
//  OutputBaseMenu.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class Output {
    
    private let repository: WritableRepositoryContract
    
    init(repository: WritableRepositoryContract) {
        self.repository = repository
    }
    
    func writeBaseMenu(bases : [String] ) {
        self.repository.write(bases: bases)
    }
    
}
