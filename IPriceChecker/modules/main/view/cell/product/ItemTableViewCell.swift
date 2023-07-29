//
//  ItemTableViewCell.swift
//  IPriceChecker
//
//  Created by yopa bagus on 28/02/23.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var btnDetailProduct: UIButton!
    @IBOutlet weak var txtNameStore: UILabel!
    @IBOutlet weak var txtPrice: UILabel!
    @IBOutlet weak var txtNominal: UILabel!
    @IBOutlet weak var txtNameProduct: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        setUpBtn()

        // Configure the view for the selected state
    }
    
}

extension ItemTableViewCell {
    func setUpBtn(){
        
        btnDetailProduct.addBorder(radius: 10,
                           width: 1,
                           borderColor: UIColor.white.cgColor)
    }
}
