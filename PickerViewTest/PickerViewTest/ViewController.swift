//
//  ViewController.swift
//  PickerViewTest
//
//  Created by WonIk on 2018. 4. 12..
//  Copyright © 2018년 Walter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    var array = [ "1", "2", "3", "4", "5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //기본 값
        label.text = array[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Coumn의 갯수 - Data source
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //아이템의 갯수 => 배열의 아이템 갯수만큼 표시 - Data source
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    
    //PickerView에 아이템 표시 - Delegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    
    //Label에 선택항목이름 표시 - Delegate
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = array[row]
    }

}

