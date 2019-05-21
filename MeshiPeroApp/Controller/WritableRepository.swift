//
//  WritableMenuRepository.swift
//  MeshiPeroApp
//
//  Created by qoorus on 2019/05/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class WritableRepository: WritableRepositoryContract {
    
    func write(newMenu: [String]) {
        UserDefaults.standard.set(newMenu, forKey: "Menu")
    }
    
}
