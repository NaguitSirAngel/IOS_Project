//
//  SaveGameViewController.swift
//  IOS_Project
//
//  Created by Aldrin Jacildo on 2020-03-12.
//  Copyright © 2020 T127-IOS-Project. All rights reserved.
//

import UIKit

class SaveGameViewController: UIViewController {
    
    @IBAction func BackToMain(_ sender: UIButton) {
        performSegue(withIdentifier: "backToMain", sender: self);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
