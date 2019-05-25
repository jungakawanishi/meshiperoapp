//
//  Menu.swift
//  MeshiPeroApp
//
//  Created by EarthCampus, Inc. on 2019/05/09.
//  Copyright © 2019 EarthCampus, Inc. All rights reserved.
//

class Menu: Codable {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
}

class Menus: Codable {
    
    var menus: [Menu]
    
    init(menus: [Menu]) {
        self.menus = menus
    }
    
    func append(_ newMenu: Menu) {
        self.menus.append(newMenu)
    }
    
}
