//
//  SettingsTableViewController.swift
//  Settings
//
//  Created by Leonardo Diaz on 4/18/20.
//  Copyright © 2020 Leonardo Diaz. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    //MARK: - Properties
    private let reuseIdentifier = "settingCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.setting.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? SettingTableViewCell else { return UITableViewCell()}
        let setting = SettingController.setting[indexPath.row]
        cell.delegate = self
        cell.updateViews(with: setting)
        return cell
    }
} // End of class

extension SettingsTableViewController: SettingCellDelegate {
    func settingSwitchToggled(for cell: SettingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingController.setting[indexPath.row]
        SettingController.toggleIsOn(for: setting)
        cell.updateViews(with: setting)
    }
}
