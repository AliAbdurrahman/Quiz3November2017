//
//  DetailActorsViewController.swift
//  Quiz 3 November 2017
//
//  Created by Ali Abdurrahman Hidayat on 03/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class DetailActorsViewController: UIViewController {
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var DescriptionLabel: UILabel!
    @IBOutlet weak var JobLabel: UILabel!
    @IBOutlet weak var CountryLabel: UILabel!
    @IBOutlet weak var HeightLabel: UILabel!
    @IBOutlet weak var SpouseLabel: UILabel!
    @IBOutlet weak var ChildrenLabel: UILabel!
    @IBOutlet weak var ImageLabel: UILabel!
    
    var passName : String?
    var passDescription : String?
    var passJob : String?
    var passCountry : String?
    var passHeight : String?
    var passSpouse : String?
    var passChildren : String?
    var passImage : String?
    
    override func viewDidLoad() {
        NameLabel.text = passName!
        DescriptionLabel.text = passDescription!
        JobLabel.text = passJob!
        CountryLabel.text = passCountry!
        HeightLabel.text = passHeight
        SpouseLabel.text = passSpouse!
        ChildrenLabel.text = passChildren!
        ImageLabel.text = passImage!
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
