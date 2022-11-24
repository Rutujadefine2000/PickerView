//
//  ThirdViewController.swift
//  DatePickerAssignment
//
//  Created by Brahmastra on 15/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    
    @IBOutlet var textFiled: UITextField!
    let pickerData = ["11","22","33"]
    override func viewDidLoad() {
        super.viewDidLoad()
        donePicker()
    }
    
    @IBAction func doneButton(sender: AnyObject){
        let picker: UIPickerView
        picker = UIPickerView(frame: CGRect(x: 0 , y: 200, width: view.frame.width, height: 300))
        picker.backgroundColor = .white
        picker.showsSelectionIndicator = true
//        picker.delegate = self
//        picker.dataSource = self
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
        let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: "donePicker")
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.fixedSpace, target: nil, action: nil)
         let cancelButton = UIBarButtonItem(title: "cancel", style: UIBarButtonItem.Style.plain, target: self, action: "donePicker")
        
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        textFiled.inputView = picker
        textFiled.inputAccessoryView = toolBar
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
       }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textFiled.text = pickerData[row]
    }
    func donePicker(){
        textFiled.resignFirstResponder()
    }
}
