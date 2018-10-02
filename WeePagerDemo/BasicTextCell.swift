//
//  RootTableViewCell.swift
//  MyTableView
//
//  Created by Federico Gentile on 21/12/16.
//  Copyright © 2016 Federico Gentile. All rights reserved.
//

import UIKit

class BasicTextCell: UITableViewCell {
    
    let cellLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        cellLabel.numberOfLines = 0
        cellLabel.baselineAdjustment = .alignBaselines
        cellLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(cellLabel)
        
        self.contentView.addConstraint(NSLayoutConstraint(item: cellLabel, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1.0, constant: 8))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: cellLabel, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1.0, constant: -8))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: cellLabel, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.top, multiplier: 1.0, constant: 8))
        
        self.contentView.addConstraint(NSLayoutConstraint(item: cellLabel, attribute: NSLayoutConstraint.Attribute.bottom, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.contentView, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 1.0, constant: -8))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func set(text: String) {
        cellLabel.text = text
    }
    
}
