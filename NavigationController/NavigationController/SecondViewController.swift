//
//  SecondViewController.swift
//  NavigationController
//
//  Created by WonIk on 2018. 4. 20..
//  Copyright © 2018년 Walter. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var buttonValue: String?
    
    @IBOutlet weak var barORbutton: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        barORbutton.text = buttonValue
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
