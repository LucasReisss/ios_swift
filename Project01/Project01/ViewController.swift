//
//  ViewController.swift
//  Project01
//
//  Created by Lucas da Silva Reis on 24/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    @IBOutlet var animalTableView: UITableView!
    @IBOutlet var animalCollectionView: UICollectionView!
    
    @IBOutlet var banner: UIImageView!
    
    
    var imagens = ["elefante", "leao", "pantera", "tigre", "zebra"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        banner.layer.cornerRadius = banner.frame.height/5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imagens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = animalTableView.dequeueReusableCell(withIdentifier: "cellA", for: indexPath) as! MyTableViewCell
        
        cell.labelView.text = imagens[indexPath.row]
        cell.liImagemView.image = UIImage(named: imagens[indexPath.row])
        cell.liImagemView.layer.cornerRadius = cell.frame.height/3
        
        return cell
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = animalCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! AnimalCollectionViewCell
        
        cell.imageView.image = UIImage(named: imagens[indexPath.row])
        cell.imageView.layer.cornerRadius = cell.frame.height/2.1
        
        return cell
    }
    
    
}


