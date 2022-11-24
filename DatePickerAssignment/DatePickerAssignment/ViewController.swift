//
//  ViewController.swift
//  DatePickerAssignment
//
//  Created by Brahmastra on 14/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let datePicker = UIDatePicker()
    
    
    @IBOutlet weak var dateDisplay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       DatePicker()
      //  (void)drawPlaceHolderInRect:()
    }

    func DatePicker(){
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneBtnTapped))
        let cancelBtn = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelBtnTapped))
        
        
        toolbar.setItems([doneBtn,cancelBtn], animated: true)
        dateDisplay.inputAccessoryView = toolbar
        dateDisplay.inputView = datePicker
        datePicker.datePickerMode = .date
        
        
    }
    @objc func cancelBtnTapped(){
        self.view.endEditing(true)
        
    }
    
    
    
    
    
    
    @objc func doneBtnTapped(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        dateDisplay.text = formatter.string(from: datePicker.date)
    }}

