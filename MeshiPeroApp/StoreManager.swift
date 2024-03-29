//
//  StoreManager.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/17.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

protocol Storable {
    func data(forKey: String) -> Data?
    func set(_ data :Any?, forKey: String)
}

extension UserDefaults: Storable{}

struct StoreManager {
    
    let store: Storable
    
    init(store: Storable = UserDefaults.standard) {
        self.store = store
    }
    
    func save<T: Codable>(value: T, key: String) throws {
        do {
            let encodedData = try JSONEncoder().encode(value)
            store.set(encodedData, forKey: key)
        } catch let error {
            throw error
        }
    }
    
    func load<T: Codable>(key: String) -> T? {
        guard let data = store.data(forKey: key) else { return nil }
        do {
            let decode = try JSONDecoder().decode(T.self, from: data)
            return decode
        } catch let error {
            // TODO ロガー検討
            print(error.localizedDescription)
            return nil
        }
        
    }
    
}
