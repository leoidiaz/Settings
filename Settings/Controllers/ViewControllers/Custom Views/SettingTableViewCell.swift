//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Leonardo Diaz on 4/18/20.
//  Copyright © 2020 Leonardo Diaz. All rights reserved.
//

import UIKit

/**
 The protocol we will use to handle the update of the cell when `settingSwitch` has been toggled
 - class: This protocol needs to interact with class level objects
 */

protocol SettingCellDelegate: class {
    // Step 1 Declare Protocol
    /// Protocol method
    func settingSwitchToggled(for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    //MARK: - Outlets
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // Step 2 Create the delegate
    /**
     The delegate or *intern* for the protocol `SettingCellDelegate`
     
     - weak: We mark this method as weak to not create  a retain cycle
     - optional; We do not want  to set the value of the delegate here
     
     */
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
