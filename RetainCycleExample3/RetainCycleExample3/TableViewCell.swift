//
//  TableViewCell.swift
//  RetainCycleExample3
//
//  Created by Marcus Paze on 3/7/17.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit
public protocol TableViewCellDelegate : NSObjectProtocol {
    func tableViewCellDidSelectCell()
}
class TableViewCell: UITableViewCell {
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var title: UILabel!
    var delegate: TableViewCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected == true {
            self.delegate?.tableViewCellDidSelectCell()
        }
        
        // Configure the view for the selected state
    }
}
