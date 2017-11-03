//
//  DetailPopulationViewController.swift
//  Quiz 3 November 2017
//
//  Created by Ali Abdurrahman Hidayat on 03/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class DetailPopulationViewController: UIViewController {
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var flagLabel: UILabel!
    
    var passRank:String?
    var passPopulation:String?
    var passFlag:String?
    var passCountry:String?

    
    override func viewDidLoad() {
        rankLabel.text = passRank!
        populationLabel.text = passPopulation!
        flagLabel.text = passFlag!
        countryLabel.text = passCountry!
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
