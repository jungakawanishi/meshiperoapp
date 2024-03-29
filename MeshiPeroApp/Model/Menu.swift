//
//  Menu.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/09.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

struct Menu: Codable, Equatable, Hashable {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }

}

struct Menus: Codable, Equatable {
    
    var menus = Set<Menu>()
    
    init(menus: Set<Menu>) throws {
        self.menus = menus
        
        if self.menus.count < 2 {
            throw ModelingError.tooLittleMenus
        }
        
    }
    
    mutating func add(_ newMenu: Menu) {
        self.menus.insert(newMenu)
    }
    
    mutating func remove(_ trashMenu: Menu) {
        if self.menus.count > 2 {
            self.menus.remove(trashMenu)
        }
    }
    
}
