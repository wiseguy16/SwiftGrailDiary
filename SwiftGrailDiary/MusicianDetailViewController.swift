//
//  MusicianDetailViewController.swift
//  SwiftGrailDiary
//
//  Created by Gregory Weiss on 8/17/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

import UIKit

//let aMusician = Musician.self

class MusicianDetailViewController: UIViewController
{
    
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailMoneyLabel: UILabel!
    @IBOutlet weak var detailBioLabel: UILabel!
    @IBOutlet weak var detailFoundedLabel: UILabel!
    @IBOutlet weak var detailFinePrintLabel: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    
    
    var aMusician = Musician.init(dictionary: <#T##NSDictionary#>)
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureView()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func configureView()
    {
        detailNameLabel.text = aMusician.name
        detailMoneyLabel.text = aMusician.paymentPerShow
        detailBioLabel.text = aMusician.bio
        detailFoundedLabel.text = aMusician.foundedOrBorn
        detailImage.image = UIImage(named: "\(aMusician.musicianImage).jpg")
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
