//
//  ReadableMenuRepositoryStub.swift
//  MeshiPeroApp
//
//  Created by qoorus on 2019/05/15.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

class ReadableRepositoryStub: ReadableRepositoryContract {
    
    private let baseMenu: [Menu]
    
    init (baseMenu: [Menu]) {
        self.baseMenu = baseMenu
    }
    
    func read() -> [Menu] {
        return self.baseMenu
    }
    
}
