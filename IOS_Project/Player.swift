//
//  Player.swift
//  IOS_Project
//
//  Created by Angel Naguit on 2020-03-11.
//  Copyright © 2020 T127-IOS-Project. All rights reserved.
//

import Foundation

class Player  {

    var name : String;

    init(name :String) {
        self.name = name;
    }
    
    
    func playShield()->String{  return "Shield";}
    
    func playSword()->String{  return "Sword";}
    
    func playCape()->String{  return "Cape";}
    
}




