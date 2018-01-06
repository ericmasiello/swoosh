//
//  SkillVC.swift
//  swoosh
//
//  Created by Eric Masiello on 1/4/18.
//  Copyright © 2018 Eric Masiello. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {
    
    @IBOutlet weak var doneBtn: BorderButton!
    var player: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(player.desiredLeague!)

        // Do any additional setup after loading the view.
    }

    @IBAction func onBallerTapped(_ sender: Any) {
        player.selectedSkillLevel = "beginner"
        doneBtn.isEnabled = true
    }
    
    @IBAction func onBeginnerTapped(_ sender: Any) {
        player.selectedSkillLevel = "baller"
        doneBtn.isEnabled = true
    }

    @IBAction func onDoneTapped(_ sender: Any) {
        print(player.selectedSkillLevel!)
    }
}
