//
//  MusicianCustomCell.swift
//  SwiftGrailDiary
//
//  Created by Gregory Weiss on 8/17/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import UIKit

class MusicianCustomCell: UITableViewCell
{
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var moneyLabel: UILabel!
    
    
    @IBOutlet weak var musicianImageView: UIImageView!
    

    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
