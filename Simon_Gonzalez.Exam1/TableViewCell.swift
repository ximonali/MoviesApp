//
//  TableViewCell.swift
//  
//
//  Created by macadmin on 2016-03-19.
//
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblTitlle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imageViewMovie: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageViewMovie.layer.cornerRadius = imageViewMovie.frame.size.width/2
        imageViewMovie.clipsToBounds = true
        imageViewMovie.contentMode = .scaleToFill
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
