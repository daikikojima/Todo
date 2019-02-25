//
//  TodoViewCell.swift
//  RealmSample
//
//  Created by Daiki Kojima on 2019/02/22.
//  Copyright © 2019 Daiki Kojima. All rights reserved.
//

import UIKit

class TodoViewCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
