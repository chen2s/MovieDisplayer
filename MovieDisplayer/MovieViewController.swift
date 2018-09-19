//
//  ViewController.swift
//  MovieDisplayer
//
//  Created by novacloud on 19/09/18.
//  Copyright © 2018 Isaac. All rights reserved.
//

import UIKit

class MovieViewController: UIViewController {
    
    
    let titulos   = ["Gladiator","Avatar", "Harry Potter", "Wonder", "Warrior"]
    let imagenes  = ["pelicula","avatar","harryPotter","wonder","warrior"]

    
    @IBOutlet weak var tableView: UITableView! {
        
        didSet {
            
            let nib = UINib(nibName: "MovieCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: "MovieCell")
            tableView.dataSource = self
            tableView.delegate = self
            tableView.reloadData()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension MovieViewController  : UITableViewDataSource, UITableViewDelegate {
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titulos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell") as! MovieCell
        
        cell.configure(titulo: titulos[indexPath.row] , imagen: imagenes[indexPath.row])
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    
}

