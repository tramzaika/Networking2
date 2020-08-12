//
//  ImageViewCintroller.swift
//  Networking2
//
//  Created by 1234 on 26.07.2020.
//  Copyright © 2020 Lisa. All rights reserved.
//

import Foundation
import UIKit

class ImageVievController : UIViewController {
     @IBOutlet weak var imageView: UIImageView!
  //      @IBOutlet weak var label: UILabel!
  //      @IBOutlet weak var getImageButton: UIButton!
        
        @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            activityIndicator.isHidden = true
            activityIndicator.hidesWhenStopped = true
            fetchImage()
        }

    func fetchImage() {
    
    //    @IBAction func getImagePressed(_ sender: Any) {
    //        label.isHidden = true
    //        getImageButton.isEnabled = false
            activityIndicator.isHidden = false
            activityIndicator.startAnimating()
            
            guard  let url = URL(string: "https://i.pinimg.com/564x/5f/27/7e/5f277ea879bf653b04d3cde4b1868f8c.jpg")
                else { return }
            
            let session = URLSession.shared
            
            session.dataTask(with: url) { (data, response, error) in
                if let data = data, let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.activityIndicator.stopAnimating()
                        self.imageView.image = image
                    }
                }
            }.resume()
        }

    }



