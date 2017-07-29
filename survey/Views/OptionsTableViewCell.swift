//
//  OptionsTableViewCell.swift
//  survey
//
//  Created by Deepakkv on 7/29/17.
//  Copyright © 2017 droidinlabs. All rights reserved.
//

import UIKit

class OptionsTableViewCell: UITableViewCell {

    @IBOutlet weak var optionLabel: UILabel!
    @IBOutlet weak var selectImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func set(option: Option, selected: Bool) {
        optionLabel.text = option.value
        if selected {
            self.selectImage.image = UIImage(named: "check")
        } else {
                self.selectImage.image = UIImage(named: "check-none")
        }
    }

}
