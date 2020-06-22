//
//  TableViewCell.swift
//  TableView
//
//  Created by Jaedoo Ko on 2020/06/22.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let identifier: String = "TableViewCell"
    
    let label: UILabel = {
        let lb = UILabel()
        lb.font = .systemFont(ofSize: 50)
        lb.textAlignment = .center
        lb.layer.borderWidth = 1
        lb.layer.borderColor = UIColor.black.cgColor
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setLayout() {
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.widthAnchor.constraint(equalTo: self.widthAnchor),
            label.heightAnchor.constraint(equalTo: self.heightAnchor)
        ])
    }
    
}
