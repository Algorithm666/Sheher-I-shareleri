//
//  ImageViewController.swift
//  Sheher İshareleri
//
//  Created by Yusif Huseynov on 12/31/18.
//  Copyright © 2018 Yusif Huseynov. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelText: UILabel!
    
    
    
    var landmarkName = ""
    var landmarkImage = UIImage()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = landmarkImage
        labelText.text = landmarkName
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
