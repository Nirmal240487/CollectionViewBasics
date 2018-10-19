//
//  ViewController.swift
//  CollectionViewTrial
//
//  Created by Nirmal Patel on 2018-10-18.
//  Copyright © 2018 Nirmal Patel. All rights reserved.
//

import UIKit

struct DataSet {
    var title: String
}

class ViewController: UIViewController {

    let model: [DataSet] = [
        DataSet(title: "Title 1"),
        DataSet(title: "Title 2"),
        DataSet(title: "Title 3"),
        DataSet(title: "Title 4"),
        DataSet(title: "Title 5"),
        DataSet(title: "Title 6"),
        DataSet(title: "Title 7")
    ]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as? CollectionViewCell {
            cell.displayContent(text: model[indexPath.row].title)
            
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
