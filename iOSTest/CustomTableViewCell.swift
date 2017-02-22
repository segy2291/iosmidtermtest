//
//  CustomTableViewCell.swift
//  iOSTest
// student name : Sagar Ranipa
// student id : 300914091
//  Created by Sagar patel on 2017-02-21.
//  Copyright © 2017 segy. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var listitemtxt: UITextField!
    @IBOutlet weak var quantitylabel: UILabel!
    
    @IBOutlet weak var stepper: UIStepper!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        
        let numberDouble = stepper.value
        
        quantitylabel.text = numberDouble.description
        
    }
    

}
