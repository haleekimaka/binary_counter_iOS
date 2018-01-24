//
//  NumCell.swift
//  binaryCounter
//
//  Created by Arin Halicki on 1/24/18.
//  Copyright © 2018 Arin Halicki. All rights reserved.
//

import UIKit

class NumCell: UITableViewCell {
    
    var delegate: NumCellDelegate!
    
    var value: Int!
    
    @IBOutlet weak var numLabel: UILabel!
    
    @IBAction func subtractButtonPressed(_ sender: UIButton) {
        delegate.addToTotal(value * -1)
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        delegate.addToTotal(value)
    }
    
}
