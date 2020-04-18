//
//  Setting.swift
//  Settings
//
//  Created by Leonardo Diaz on 4/18/20.
//  Copyright © 2020 Leonardo Diaz. All rights reserved.
//

import UIKit

class Setting {
    
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isON: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isON
        
    }
}
