//
//  SettingController.swift
//  Settings
//
//  Created by Leonardo Diaz on 4/18/20.
//  Copyright © 2020 Leonardo Diaz. All rights reserved.
//

import Foundation
/// Our Models Controller Class
class SettingController {
    /**
     Source of truth
     
     We created a computed property named `settings` and declared the type to be an array of  `Setting` objects
     - Returns: The mock Setting Objects we created in an array
     */
    static let settings: [Setting] = {
        // Marked as static so we can access this array on a seperate file.
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "appleMusic"), isON: false)
        let appStore = Setting(name: "App Store", icon: #imageLiteral(resourceName: "appStore"), isON: false)
        let iBooks = Setting(name: "iBooks", icon: #imageLiteral(resourceName: "appleBooks"), isON: true)
        return [music, appStore, iBooks]
    }()
    /**
     Toggle the `isOn` property on  a `Setting` object to the opposite state
     - Parameter:
        - setting: the Setting Object we wish to chanage the `isOn` of
     */
    static func toggleIsOn(for setting: Setting){
        setting.isOn = !setting.isOn
    }
}
