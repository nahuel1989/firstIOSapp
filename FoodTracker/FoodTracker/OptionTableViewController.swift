//
//  OptionTableViewController.swift
//  FoodTracker
//
//  Created by Admin on 5/7/16.
//  Copyright © 2016 nahuel. All rights reserved.
//

import UIKit

class OptionTableViewController: UITableViewController {
    // MARK: Properties
    var textoSeleccionado=""
    
    var categoria=""
    
    var options =  [String]()
    
    func loadSampleOptions() {
        let option1: String
        
        let option2: String
        
        let option3: String
        if(self.categoria=="paises"){
            option1 = "Argentina"
            
            option2 = "Brasil"
            
            option3 = "España"
        }else{
            option1 = "Asia"
            
            option2 = "America"
            
            option3 = "Europa"
        }
        
        options += [option1, option2, option3]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSampleOptions()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return options.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
     // Table view cells are reused and should be dequeued using a cell identifier.
     let cellIdentifier = "OptionTableViewCell"
     let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! OptionTableViewCell
     
     // Fetches the appropriate meal for the data source layout.
     let option = options[indexPath.row]
     
     cell.optionText.text=option
     
     return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        //self .dismissViewControllerAnimated(true, completion: nil)
        let selectedOption = options[indexPath.row]
        self.textoSeleccionado=selectedOption
        self.performSegueWithIdentifier("unwindYo", sender: self)
    }

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    


}
