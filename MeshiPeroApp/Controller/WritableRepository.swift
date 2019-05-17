//
//  WritableMenuRepository.swift
//  MeshiPeroApp
//
//  Created by qoorus on 2019/05/16.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class WritableRepository: WritableRepositoryContract {
    
    let storeManager = StoreManager(store: UserDefaults())
    func write(bases: [Menu]) {
        storeManager.save(value: bases, key: "Menu") // Generic parameter 'T' could not be inferred のエラーメッセージが出る
    }
    
}
