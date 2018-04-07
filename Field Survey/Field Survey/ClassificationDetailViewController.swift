//
//  ClassificationDetailViewController.swift
//  Field Survey
//
//  Created by Dayton Steffeny on 4/6/18.
//  Copyright © 2018 Dayton Steffeny. All rights reserved.
//

import UIKit

class ClassificationDetailViewController: UIViewController {

    var classification2: classification?
    
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var matchupLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeZone = .medium
        
        if let date = classification2?.date {
            DateLabel.text = dateFormatter.string(from: date)
        }else{
            DateLabel.text = ""
        }
        

        Image.image = classification2?.classification.image
        matchupLabel.text = classification2?.matchup
        
        
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
