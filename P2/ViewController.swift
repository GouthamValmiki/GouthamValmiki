//
//  ViewController.swift
//  P2
//
//  Created by Goutham Valmiki on 15/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var data = ["Lion","Doll","Run","Raj","Tiger"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return   3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell {
            cell.lbl.text = data[indexPath.row]
            cell.imgVw.image = UIImage(named: data[indexPath.row])
            cell.backgroundColor = .lightGray
            return cell
        }
        return UICollectionViewCell()
    }
    

}
