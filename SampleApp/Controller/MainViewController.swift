//
//  MainViewController.swift
//  AlbumFeed
//
//  Created by Saba Toosi on 8/31/20.
//  Copyright © 2020 Saba Shaarbaftoosi. All rights reserved.

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: Variable Declarations
    let tableView = UITableView()
    let IMAGE_CELL = "IMAGECell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
        self.view.backgroundColor = .white
    }
    
    // MARK: UI SetUp
    func setupTableView() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.backgroundColor = .red
        
        self.tableView.register(ImageViewCell.classForCoder(), forCellReuseIdentifier: IMAGE_CELL)
        
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    // MARK: TableView Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: IMAGE_CELL, for: indexPath) as! ImageViewCell
        
        return cell
    }
}
