//
//  Menu.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/09.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//


struct Menu: Codable, Equatable {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }

}

struct Menus: Codable, Equatable {
    
    var menus: [Menu]
    
    init(menus: [Menu]) {
        self.menus = menus
    }
    
    mutating func append(_ newMenu: Menu) {
        self.menus.append(newMenu)
    }
    
}
