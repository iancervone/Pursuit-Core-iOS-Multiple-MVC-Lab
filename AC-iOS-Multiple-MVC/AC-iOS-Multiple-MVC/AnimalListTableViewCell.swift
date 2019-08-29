//
//  AnimalListTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Ian Cervone on 8/13/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalListTableViewCell: UITableViewCell {

  
  @IBOutlet weak var animalName: UILabel!
  @IBOutlet weak var animalOrigin: UILabel!
  @IBOutlet weak var animalImage: UIImageView!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
