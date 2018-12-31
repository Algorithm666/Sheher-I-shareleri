//
//  ViewController.swift
//  Sheher İshareleri
//
//  Created by Yusif Huseynov on 12/31/18.
//  Copyright © 2018 Yusif Huseynov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var selectedLandmarkImage = UIImage()
    var selectedLandmarkName = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageVC"{
            
            let destinationVC = segue.destination as! ImageViewController
            
            destinationVC.landmarkName = selectedLandmarkName
            destinationVC.landmarkImage = selectedLandmarkImage
            
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedLandmarkName = landmarkNames[indexPath.row]
        selectedLandmarkImage = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toImageVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    

    @IBOutlet weak var tableView: UITableView!
   
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //MARK: - Arrays-Append
        
        landmarkNames.append("Colessium")
        landmarkNames.append("China Great Wall")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Stonehenge")
        landmarkNames.append("Taj Mahal")
        
        landmarkImages.append(UIImage(named: "collesium.jpg")!)
        landmarkImages.append(UIImage(named: "greatwall.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpg")!)
        landmarkImages.append(UIImage(named: "tajmahal.jpg")!)
        
        
        tableView.dataSource = self
        tableView.delegate = self
        



    }


}

