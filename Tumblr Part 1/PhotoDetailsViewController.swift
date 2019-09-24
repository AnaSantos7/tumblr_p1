//
//  PhotoDetailsViewController.swift
//  Tumblr Part 1
//
//  Created by Ana Santos on 9/24/19.
//  Copyright © 2019 Ana Santos. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var post: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let photos = post["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
            let urlString = originalSize["url"] as! String
            let url = URL(string: urlString)
            
            imageView.af_setImage(withURL: url!)
        }
        
    }
}
