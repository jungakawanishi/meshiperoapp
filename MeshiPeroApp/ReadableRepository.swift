//
//  ReadableRepository.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/15.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import Foundation

class ReadableRepository: ReadableRepositoryContract {
    
    func read() -> [Menu] {
        return UserDefaults.standard.object(forKey: "Menu") as! [Menu]
    }
    
}
