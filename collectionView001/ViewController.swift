//
//  ViewController.swift
//  collectionView001
//
//  Created by David on 11/18/17.
//  Copyright © 2017 Vision Runner. All rights reserved.
// source: https://stackoverflow.com/questions/31735228/how-to-make-a-simple-collection-view-with-swift
//

import UIKit

class ViewController: UIViewController {
    
    let reuseIdentifier = "cell" // also enter this string as the cell identifier in the storyboard
    
    var items = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48"]
}

extension ViewController: UICollectionViewDataSource {
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! MyCollectionViewCell
        
//        // make the image circular
//        if let imageView = cell.imageView {
//            imageView.contentMode = .scaleAspectFit
//            imageView.clipsToBounds = true
//            imageView.layer.cornerRadius = imageView.frame.width / 2
//        }
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 50
        
        // Use the outlet in our custom class to get a reference to the UILabel in the cell
//        cell.myLabel.text = self.items[indexPath.item]
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project

        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
    }
}
