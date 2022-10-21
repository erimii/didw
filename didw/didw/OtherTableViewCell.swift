//
//  OtherTableViewCell.swift
//  didw
//
//  Created by 이예림 on 2022/09/30.
//

import UIKit

class OtherTableViewCell: UITableViewCell {
    
    @IBOutlet weak var otherLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setOtherLabelCell(text: String) {
        otherLabel.text = text
    }
}
