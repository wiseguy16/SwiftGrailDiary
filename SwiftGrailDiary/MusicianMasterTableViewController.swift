//
//  MusicianMasterTableViewController.swift
//  SwiftGrailDiary
//
//  Created by Gregory Weiss on 8/17/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import UIKit

class MusicianMasterTableViewController: UITableViewController
{
    
    var musicians = [Musician]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadMusicians()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in var navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadMusicians()
    {
            do
            {
                let filePath = Bundle.main.path(forResource: "musicians", ofType: "json")
                let dataFromFile = try? Data(contentsOf: URL(fileURLWithPath: filePath!))
                let musicianData: NSArray! = try JSONSerialization.jsonObject(with: dataFromFile!, options: []) as! NSArray
                for musicianDictionary in musicianData
                {
                    let aMusician = Musician(dictionary: musicianDictionary as! NSDictionary)
                    musicians.append(aMusician)
                }
            }
            catch let error as NSError
            {
                print(error)
            }
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicians.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->  UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MusicianCell", for: indexPath) as! MusicianCustomCell

        // Configure the cell...
        let aMusician = musicians[indexPath.row]
        cell.nameLabel.text = aMusician.name
        cell.moneyLabel.text = aMusician.paymentPerShow
      //  cell.musicianImageView.image = UIImage(named: "\(aMusician.name).jpg")
       // cell.musicianImageView.image = UIImage(named: "\(aMusician.name).jpeg")
        

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
       
      //  tableView.deselectRow(at: indexPath, animated: true)
      //  var newMusicianVC = self.storyboard?.instantiateViewController(withIdentifier: "MusicianDetailVC")
     //   navigationController?.pushViewController(newMusicianVC!, animated: true)
       // let selectedMusician = musicians[indexPath.row]
    //    newMusicianVC = selectedMusician
        
        
        /*
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
        MusicianDetailViewController *newMusicianVC = [self.storyboard instantiateViewControllerWithIdentifier:@"MusicianDetailVC"];
        [[self navigationController] pushViewController:newMusicianVC animated:YES];
        
        Musician *selectedMusician = self.musicians[indexPath.row];
        newMusicianVC.musician = selectedMusician;
 */
    }

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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "MusicianDetailSegue"
        {
            let detailVC = segue.destination as! MusicianDetailViewController
         //   let selectedCell = sender as! UITableViewCell
           // let indexPath = tableView.indexPath(for: selectedCell)
            let indexPath: NSIndexPath = tableView.indexPathForSelectedRow!
            let selectedMusician = musicians[(indexPath.row)]
            detailVC.aMusician = selectedMusician
            
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

 

}














