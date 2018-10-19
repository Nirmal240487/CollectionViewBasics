//
//  CollectionViewCell.swift
//  CollectionViewTrial
//
//  Created by Nirmal Patel on 2018-10-18.
//  Copyright © 2018 Nirmal Patel. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    func displayContent(text: String) {
        label.text = text
    }
}
