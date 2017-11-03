//
//  CellActorsTableViewCell.swift
//  Quiz 3 November 2017
//
//  Created by Ali Abdurrahman Hidayat on 03/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class CellActorsTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var spouseLabel: UILabel!
    @IBOutlet weak var childrenLabel: UILabel!
    @IBOutlet weak var imageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
