//
//  ReadableRepository.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/15.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

import UIKit

class ReadableRepository: ReadableRepositoryContract {
    
    func read() -> [String] {
        return UserDefaults.standard.object(forKey: "Menu") as! [String]
    }
    
}
