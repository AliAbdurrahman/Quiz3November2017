//
//  ActorsTableViewController.swift
//  Quiz 3 November 2017
//
//  Created by Ali Abdurrahman Hidayat on 03/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class ActorsTableViewController: UITableViewController {
    let ActorsURL = " http://www.androidbegin.com/tutorial/jsonparsetutorial.txt"
    var actorS = [Actors]()
    
    var nameSelected:String?
    var descriptionSelected:String?
    var jobSelected:String?
    var countrySelected:String?
    var heightSelected:String?
    var spouseSelected:String?
    var childrenSelected:String?
    var imageSelected:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getLatestActors()
        
        tableView.estimatedRowHeight = 92.0
        tableView.rowHeight = UITableViewAutomaticDimension

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return actorS.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellActors", for: indexPath) as! CellActorsTableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = actorS[indexPath.row].name
        cell.descriptionLabel.text = actorS[indexPath.row].description
        cell.jobLabel.text = actorS[indexPath.row].job
        cell.countryLabel.text = actorS[indexPath.row].country
        cell.heightLabel.text = actorS[indexPath.row].height
        cell.spouseLabel.text = actorS[indexPath.row].spouse
        cell.childrenLabel.text = actorS[indexPath.row].children
        cell.imageLabel.text = actorS[indexPath.row].image
        
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let dataAct = actorS[indexPath.row]
        nameSelected = dataAct.name
        descriptionSelected = dataAct.description
        jobSelected = dataAct.job
        countrySelected = dataAct.country
        heightSelected = dataAct.height
        spouseSelected = dataAct.spouse
        childrenSelected = dataAct.children
        imageSelected = dataAct.image
        
        performSegue(withIdentifier: "segue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue"{
            
            let sendData = segue.destination as! DetailActorsViewController
            sendData.passName = nameSelected
            sendData.passDescription = descriptionSelected
            sendData.passJob = jobSelected
            sendData.passCountry = countrySelected
            sendData.passHeight = heightSelected
            sendData.passSpouse = spouseSelected
            sendData.passChildren = childrenSelected
            sendData.passImage = imageSelected
        }
    }
    func getLatestActors() {
        guard let ActURL = URL(string: ActorsURL) else {
            return
        }
        let request = URLRequest(url: ActURL)
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
            
            if let error = error {
                print(error)
                return
            }
            if let data = data {
                
                self.actorS = self.parseJsonData(data: data)
                
                OperationQueue.main.addOperation({
                    self.tableView.reloadData()
                })
            }
        })
        task.resume()
    }
    func parseJsonData(data: Data) -> [Actors] {
        var Acto = [Actors]()
        
        do{
            
            let jsonResult = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? NSDictionary
            
            let jsonLoans = jsonResult?["Actors"] as! [AnyObject]
            
            for jsonLoan in jsonLoans {
                
                let Actor = Actors()
                Actor.name = jsonLoan["name"] as! String
                Actor.description = jsonLoan["description"] as! String
                Actor.job = jsonLoan["job"] as! String
                Actor.country = jsonLoan["country"] as! String
                Actor.height = jsonLoan["height"] as! String
                Actor.spouse = jsonLoan["spouse"] as! String
                Actor.children = jsonLoan["children"] as! String
                Actor.image = jsonLoan["image"] as! String
                Acto.append(Actor)
            }
        }catch{
            print(error)
        }
        return actorS
    }
}
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


