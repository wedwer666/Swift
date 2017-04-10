//
//  testTableViewCell.swift
//  ClockPomodoro
//
//  Created by Mitriuc Maria on 4/6/17.
//  Copyright © 2017 ClockPomodoroProject. All rights reserved.
//

import UIKit

class testTableViewCell: UITableViewCell {

    @IBOutlet weak var testNameLabel: UILabel!
    
    @IBOutlet weak var titileLabel: UILabel!
    @IBOutlet weak var shareButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
