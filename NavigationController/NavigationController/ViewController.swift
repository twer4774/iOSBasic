//
//  ViewController.swift
//  NavigationController
//
//  Created by WonIk on 2018. 4. 20..
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! SecondViewController
        if segue.identifier == "barButtonSegue"{
            //barbutton 클릭
            secondViewController.buttonValue = "바 버튼으로 이동"
        } else if segue.identifier == "buttonSegue"{
            //button 클릭
            secondViewController.buttonValue = "버튼으로 이동"
        }
    }
}

