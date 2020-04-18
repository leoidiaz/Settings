//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Leonardo Diaz on 4/18/20.
//  Copyright © 2020 Leonardo Diaz. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {
    
    //MARK: - Outlets
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    
    func updateViews(with setting: Setting) {
        settingNameLabel.text = setting.name
        settingImageView.image = setting.icon
        settingSwitch.isOn = setting.isOn
        // Ternary Operator
        backgroundColor = setting.isOn ? .cyan : .white
    }
    
    //MARK: - Action
    @IBAction func settingSwitchToggled(_ sender: Any) {
    }
    
}
