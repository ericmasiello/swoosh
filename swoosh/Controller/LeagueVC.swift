//
//  LeagueVC.swift
//  swoosh
//
//  Created by Eric Masiello on 1/4/18.
//  Copyright © 2018 Eric Masiello. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(league: "mens")
    }
    

    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(league: "womens")
    }
    
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(league: "coed")
    }
    
    func selectLeague(league: String) {
        player.desiredLeague = league
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
