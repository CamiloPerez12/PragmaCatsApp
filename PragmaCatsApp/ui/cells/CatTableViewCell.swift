//
//  CatTableViewCell.swift
//  PragmaCatsApp
//
//  Created by jonathan.perez on 26/02/23.
//

import UIKit

class CatTableViewCell: UITableViewCell {
    
    @IBOutlet var catName: UILabel!
    @IBOutlet var catImage: UIImageView!
    @IBOutlet var catOrigin: UILabel!
    @IBOutlet var catIntelligence: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
