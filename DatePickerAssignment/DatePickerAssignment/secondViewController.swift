//
//  secondViewController.swift
//  DatePickerAssignment
//
//  Created by Brahmastra on 14/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit





class secondViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   @IBOutlet weak var weekDaytxtField: UITextField!
    let Data = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","saturday"]
    let colors: [String] = ["red","green","pink","blue","grey","black","yellow"]
    var weekpickerView = UIPickerView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        weekpickerView.dataSource = self
        weekpickerView.delegate = self
        weekDaytxtField.inputView = weekpickerView
        weekDaytxtField.textAlignment = .center
        weekDaytxtField.placeholder = "select Day"
        //pickerView.setValue(UIColor.white, forKeyPath: "textColor")
        
}
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var weekDayTextFiled = UITextField()
        var mytitle:NSAttributedString
        let titleData = Data[row]
        if pickerView.selectedRow(inComponent: component) == row {
            mytitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.foregroundColor: UIColor.red])
        }
        else{
              mytitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue])
        }
        weekDayTextFiled.attributedText = mytitle
        return weekDayTextFiled
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Data.count
       }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Data[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        weekDaytxtField.text = Data[row]
        weekDaytxtField.resignFirstResponder()
    }
    
    
}

