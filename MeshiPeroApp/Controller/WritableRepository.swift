//
//  WritableMenuRepository.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class WritableRepository: WritableRepositoryContract {
    
    func write(newMenu: String) {
        menus.append(newMenu)
        UserDefaults.standard.set(menus, forKey: "Menu")
    }
    
}
