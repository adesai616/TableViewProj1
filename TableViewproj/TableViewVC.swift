//
//  TableViewVC.swift
//  TableViewproj
//
//  Created by Akash Desai on 2019-11-04.
//  Copyright © 2019 Akash Desai. All rights reserved.
//

import UIKit

class TableViewVC: UIViewController {

    var tableView = UITableView()
    var testArray = ["Akash", "Pat","Alex","Chris"]
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        // Do any additional setup after loading the view.
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegate()
        tableView.rowHeight = 50
        tableView.pin(to: view)
    }
    
    func setTableViewDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    

}

extension TableViewVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data = testArray[indexPath.row]
        let viewController = RocketLeagueVC()
        viewController.data = data
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let data = self.testArray[indexPath.row]
        cell.textLabel?.text = data
        cell.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        return cell
    }
    
    
}
