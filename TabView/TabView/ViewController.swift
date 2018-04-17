//
//  ViewController.swift
//  TabView
//
//  Created by WonIk on 2018. 4. 17..
//  Copyright © 2018년 Walter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func gotoLicenceTab(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
}

