//
//  SettingController.swift
//  Settings
//
//  Created by Leonardo Diaz on 4/18/20.
//  Copyright © 2020 Leonardo Diaz. All rights reserved.
//

import Foundation

class SettingController {
    
    let setting: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "appleMusic"), isON: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isON: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "appleBooks"), isON: true)
        return [music, appStore, iBooks]
    }()
    
    func toggleIsOn(for setting: Setting){
        setting.isOn = !setting.isOn
    }
}
