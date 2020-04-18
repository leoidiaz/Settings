//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Leonardo Diaz on 4/18/20.
//  Copyright © 2020 Leonardo Diaz. All rights reserved.
//

import UIKit

protocol SettingCellDelegate: class {
    // Step 1 Declare Protocol
    func settingSwitchToggled(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    //MARK: - Outlets
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // Step 2 Create the delegate
    
    weak var delegate: SettingCellDelegate?
    
    func updateViews(with setting: Setting) {
        settingNameLabel.text = setting.name
        settingImageView.image = setting.icon
        settingSwitch.isOn = setting.isOn
        // Ternary Operator
        backgroundColor = setting.isOn ? .cyan : .white
    }
    
    //MARK: - Action
    @IBAction func settingSwitchToggled(_ sender: Any) {
        delegate?.settingSwitchToggled(for: self)
    }
    
}
