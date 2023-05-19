//
//  SearchResultTableViewCell.swift
//  Stocks
//
//  Created by ihan carlos on 19/04/23.
//

import UIKit

class SearchResultTableViewCell: UITableViewCell {
    
    static let identifier = "SearchResultTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
