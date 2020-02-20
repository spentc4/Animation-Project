//
//  ViewController.swift
//  Animation Project
//
//  Created by Spencer Curran on 2/19/20.
//  Copyright © 2020 Spencer Curran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mineView: UIImageView!
    
    @IBOutlet weak var speedSlider: UISlider!
    
    @IBOutlet weak var hideButton: UIButton!
    
    @IBAction func toggleAnimate(_ sender: Any) {
        if (mineView.isAnimating)
        {
            mineView.stopAnimating()
        } else
        {
            mineView.startAnimating()
        }
    }
    
    
    @IBAction func adjustSpeed(_ sender: Any) {
        mineView.animationDuration=TimeInterval(3.0-speedSlider.value)
        mineView.startAnimating()
    }
    
    
    @IBAction func hideToggle(_ sender: Any) {
        if (mineView.isHidden){
            mineView.isHidden = false
        }
    }
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let mineAnimation: [UIImage] = [
        UIImage(named:"Steve.png")!,
        UIImage(named:"steve2.png")!,
        UIImage(named:"steve3.png")!,
        UIImage(named:"armorsteve.png")!,
        UIImage(named:"chicken.png")!,
        UIImage(named:"cow.png")!,
        UIImage(named:"creeper.png")!,
        UIImage(named:"creeper2.png")!,
        UIImage(named:"diamond.png")!,
        UIImage(named:"diamondsword.png")!,
        UIImage(named:"dirt.png")!,
        UIImage(named:"emerald.png")!,
        UIImage(named:"enderman.png")!,
        UIImage(named:"heart.png")!,
        UIImage(named:"herobrine.png")!,
        UIImage(named:"ironpickaxe.png")!,
        UIImage(named:"skeleton.png")!,
        UIImage(named:"spider.png")!,
        UIImage(named:"wolf.png")!,
        UIImage(named:"zombie.png")!,
        ]
        mineView.animationImages = mineAnimation
        mineView.animationDuration=1.0
    }


}

