//
//  AnimalTableViewCell.swift
//  TableViewReview
//
//  Created by Eric Davis on 20/01/2022.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var animalLabel: UILabel!
    @IBOutlet weak var animalNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
