//
//  ReadableMenuRepositoryStub.swift
//  MeshiPeroApp
//
//  Created by qoorus on 2019/05/15.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

class ReadableRepositoryStub: ReadableRepositoryContract {
    
    private let baseMenu: [String]
    
    init (baseMenu: [String]) {
        self.baseMenu = baseMenu
    }
    
    func read() -> [String] {
        return self.baseMenu
    }
    
}
