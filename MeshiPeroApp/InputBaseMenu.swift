//
//  Input.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/15.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class InputBaseMenu {
    
    private let menuRepository: ReadableRepositoryContract
    
    init (menuRepository: ReadableRepositoryContract) {
        self.menuRepository = menuRepository
    }
    
    func returnBaseMenu() -> [String] {
        let baseMenu = self.menuRepository.read()
        return baseMenu
    }
    
}
