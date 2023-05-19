//
//  SearshResultsViewController.swift
//  Stocks
//
//  Created by ihan carlos on 12/04/23.
//

import UIKit

class SearchResultsViewController: UIViewController {
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(SearchResultTableViewCell.self, forCellReuseIdentifier: SearchResultTableViewCell.identifier)
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUpTable()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    private func setUpTable() {
        
    }
}
