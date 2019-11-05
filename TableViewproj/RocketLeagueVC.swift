//
//  RocketLeagueVC.swift
//  TableViewproj
//
//  Created by Akash Desai on 2019-11-05.
//  Copyright © 2019 Akash Desai. All rights reserved.
//

import UIKit

class RocketLeagueVC: UIViewController {

    var data:String?
    var rkTableView = UITableView()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        super.viewDidLoad()
        configureRKTableView()
        rkTableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
        
    }

    func configureRKTableView() {
        self.view.addSubview(rkTableView)
        rkTableView.pin(to: self.view)
        setDelegates()
    }

    func setDelegates() {
        rkTableView.delegate = self
        rkTableView.dataSource = self
    }
}

struct screen {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

extension RocketLeagueVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = rkTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = data
        return cell
    }
    
    
}


