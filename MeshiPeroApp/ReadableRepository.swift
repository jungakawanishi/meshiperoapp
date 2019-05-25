//
//  ReadableRepository.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/15.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class ReadableRepository: ReadableRepositoryContract {
    
    let storeManager = StoreManager()
    
    func read() -> Menus {
        
        return storeManager.load(key: "Menu")!
        
    }
    
}
