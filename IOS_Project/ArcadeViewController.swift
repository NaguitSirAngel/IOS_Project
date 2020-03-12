//
//  ArcadeViewController.swift
//  IOS_Project
//
//  Created by Angel Naguit on 2020-03-11.
//  Copyright © 2020 T127-IOS-Project. All rights reserved.
//

import UIKit

class ArcadeViewController: UIViewController {
    
    // VARIABLES
    var player: Player = Player(name: "");
    var score = 0;
    var start_time = 10;
    var gameTimer: Timer?;
    var opponentMove = "";
    var playerMove = "";
    
    // IBO OUTLETS
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var txtOpponentMove: UITextField!
    @IBOutlet weak var lblScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setTimer();
        self.setMove();
        self.lblScore.text = String(self.score);
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func PlaySword(_ sender: UIButton) {
        self.playSword();
    }
    
    @IBAction func PlayShield(_ sender: UIButton) {
        self.playShield();
    }
    
    @IBAction func PlayCape(_ sender: UIButton) {
        self.playCape();
    }
    
    private func setTimer() {
        self.gameTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            if self.start_time == 0 {
                self.gameTimer?.invalidate();
                self.performSegue(withIdentifier: "saveGame", sender: self);
            }
            self.lblTime.text = String(self.start_time);
            self.start_time -= 1;
        });
    }
    
    private func playSword(){
        self.playerMove = self.player.playSword();
        self.compareMove();
        self.updateScore();
    }
    
    private func playShield(){
        self.playerMove = self.player.playShield();
        self.compareMove();
        self.updateScore();
    }
    
    private func playCape(){
        self.playerMove = self.player.playCape();
        self.compareMove();
        self.updateScore();
    }
    
    private func compareMove(){
        // FIRST COMPARISON SHIELD > SWORD > CAPE
        if self.opponentMove == "Sword" && self.playerMove == "Shield"{
            self.score += 2;
        }else if self.opponentMove == "Sword" && self.playerMove == "Cape"{
            self.score -= 5;
        }
        
        // SECOND COMPARISON CAPE > SHIELD > SWORD
        if self.opponentMove == "Shield" && self.playerMove == "Cape"{
            self.score += 1;
        }else if self.opponentMove == "Shield" && self.playerMove == "Sword"{
            self.score -= 5;
        }
        
        // THIRD COMPARISON SWORD > CAPE > SHIELD
        if self.opponentMove == "Cape" && self.playerMove == "Sword"{
            self.score += 3;
        }else if self.opponentMove == "Cape" && self.playerMove == "Shield"{
            self.score -= 5;
        }
        
        self.setMove();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "backToMain", sender: self);
    }
    
    private func updateScore(){
        self.lblScore.text = String(self.score);
    }
    
    private func setMove() {
        let movesets = ["Sword", "Shield", "Cape"];
        let randomIndex = Int(arc4random_uniform(UInt32(movesets.count)));
        self.opponentMove = movesets[randomIndex];
        self.txtOpponentMove.text = self.opponentMove;
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
}
