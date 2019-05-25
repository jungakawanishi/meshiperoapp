//
//  WritableMenuRepository.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class WritableRepository: WritableRepositoryContract {
    
    let storeManager = StoreManager()
    
    func write(newMenu: Menu) {
        menus.append(newMenu)
        do {
            try storeManager.save(value: menus, key: "Menu")
        } catch let error {
            print(error)
        }
    }
    
}
