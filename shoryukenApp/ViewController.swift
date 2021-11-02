//
//  ViewController.swift
//  shoryukenApp
//
//  Created by 小倉瑞希 on 2021/10/31.
//

import UIKit

class ViewController: UIViewController {
    
    var imageNameArray : Array<UIImage> = []
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        while let attakImage = UIImage(named: "attak\(imageNameArray.count+1)") {
            imageNameArray.append(attakImage)
        }
    }
    
    @IBAction func tapImageButton(_ sender: Any) {
        imageView.animationImages = imageNameArray
        imageView.animationDuration = 2.5
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
}

