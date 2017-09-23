//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ricardo Lousada on 22/09/17.
//  Copyright © 2017 IT-4-ALL. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!

    @IBOutlet weak var succssImage: UIImageView!
    
    let states = ["Alaska","Arkansas","Alabama","California","Maine","New Yourk"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.purple
        statePicker.dataSource = self
        statePicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    @IBAction func StateButtonPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        //TAG flag with 1 to 4 will be hidden for picker to show
        for index in 1...4 {
            self.view.viewWithTag(index)?.isHidden = true
        }
    }
    
    
    
    @IBAction func BuyButtonPressed(_ sender: Any) {
        
        for view in self.view.subviews  {
            view.isHidden = true
        }
        succssImage.isHidden = false
        
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        for index in 1...4 {
            self.view.viewWithTag(index)?.isHidden = false
        }

    }
    
}

