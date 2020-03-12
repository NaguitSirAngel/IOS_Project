//
//  ViewController.swift
//  IOS_Project
//
//  Created by Angel Naguit on 2020-03-11.
//  Copyright © 2020 T127-IOS-Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var playOutlet: UIButton!
    
    
    @IBOutlet weak var InstructionOutlet: UIButton!
    
    @IBOutlet weak var Highscores: UIButton!
    
    @IBOutlet weak var AboutUs: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       let arr : [UIButton] = [playOutlet,InstructionOutlet,Highscores,AboutUs];
        ViewController.applyRounded(arr: arr)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AboutUsBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "aboutUsSeg", sender: self);
    }
    
    @IBAction func instructionBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "instructionSeg", sender: self);
    }
    
    @IBAction func ArcadeBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "arcadeSeg", sender: self);
    }
    
    @IBAction func highScoreBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "highScoreSeg", sender: self);
    }
    
    static func applyRounded(arr: [UIButton]){
        
        for var i in arr{
            i.layer.cornerRadius = 20;
            i.clipsToBounds = true;
            
        }
        
        
        
        
    }
    
}

