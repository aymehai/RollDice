//
//  ViewController.swift
//  RollDice
//
//  Created by Aymen on 6/20/18.
//  Copyright © 2018 Aymen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnRoll: UIButton!
    @IBOutlet weak var imgDice: UIImageView!
    @IBOutlet weak var imgDice2: UIImageView!
    
    
    @IBAction func btnRollAction(_ sender: Any) {
        let randomNum1:Int = Int(arc4random_uniform(5)) + 1
        let randomNum2:Int = Int(arc4random_uniform(5)) + 1
        var hopAnime: [UIImage] = []
        var hopAnime2: [UIImage] = []
        
        for _ in 0...6 {
            let randomNum:Int = Int(arc4random_uniform(5)) + 1
            let randomNum2:Int = Int(arc4random_uniform(5)) + 1
            hopAnime.append(UIImage(named: "dice\(randomNum).jpg")!)
            hopAnime2.append(UIImage(named: "dice\(randomNum2).jpg")!)
        }

        
        imgDice.animationImages = hopAnime
        imgDice2.animationImages = hopAnime2
        
        imgDice.animationDuration = 1.0
        imgDice2.animationDuration = 1.0
        
        imgDice.animationRepeatCount = 2
        imgDice2.animationRepeatCount = 2
        
        imgDice.startAnimating()
        imgDice2.startAnimating()
        
        imgDice.image = UIImage(named: "dice\(randomNum1).jpg")
        imgDice2.image = UIImage(named: "dice\(randomNum2).jpg")
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

