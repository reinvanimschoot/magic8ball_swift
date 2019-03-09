//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Rein Van Imschoot on 09/03/2019.
//  Copyright © 2019 Rein Van Imschoot. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballIndex: Int = 0
    
    var ballImagesArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBall()
    }
    
    func updateBall() {
        ballIndex = Int.random(in: 0 ... 4)
        
        ballImage.image = UIImage.init(named: ballImagesArray[ballIndex])
    }
}
