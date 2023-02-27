//
//  ViewController.swift
//  PragmaCatsApp
//
//  Created by jonathan.perez on 26/02/23.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let homeViewModel = HomeViewModel()
    var cats : [CatsModel]? = []
    var cat: ObservableObject<[CatsModel]?> = ObservableObject(nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "CatTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CatTableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
        
        retrieveData()
        
    }
    
    func retrieveData () {
        homeViewModel.getCats { data in
            DispatchQueue.main.async {
                self.cats = data
                if let data = data {
                    self.cat.value = data
                }
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cats?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CatTableViewCell",
                                                 for: indexPath) as! CatTableViewCell
        let urlImage = "https://cdn2.thecatapi.com/images/\(cats?[indexPath.row].imageUrl ?? "").jpg"
        cell.catName.text = cats?[indexPath.row].breedName
        cell.catOrigin.text = "\(cats?[indexPath.row].origin ?? "")"
        cell.catIntelligence.text = "\(cats?[indexPath.row].intelligence ?? 0)"
        let url = URL(string: urlImage)
        cell.catImage.kf.setImage(with: url)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

