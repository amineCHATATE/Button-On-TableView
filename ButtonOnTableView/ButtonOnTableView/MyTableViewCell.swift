//
//  MyTableViewCell.swift
//  ButtonOnTableView
//
//  Created by Amine CHATATE on 10/25/18.
//  Copyright © 2018 Amine CHATATE. All rights reserved.
//

import UIKit

protocol MyTableViewCellDelegate {
    func buttonAction(index: Int)
}
class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    
    var delegate: MyTableViewCellDelegate?
    var index: IndexPath?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func clickMe(_ sender: Any) {
        self.delegate?.buttonAction(index: (index?.row)!)
    }
}
