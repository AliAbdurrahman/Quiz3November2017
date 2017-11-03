//
//  CellPopulationTableViewCell.swift
//  Quiz 3 November 2017
//
//  Created by Ali Abdurrahman Hidayat on 03/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class CellPopulationTableViewCell: UITableViewCell {
    @IBOutlet weak var CountryLabel: UILabel!
    @IBOutlet weak var RankLabel: UILabel!
    @IBOutlet weak var PopulationLabel: UILabel!
    @IBOutlet weak var FlagLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
