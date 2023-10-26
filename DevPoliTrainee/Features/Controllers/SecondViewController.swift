//
//  SecondViewController.swift
//  DevPoliTrainee-Delegate
//
//  Created by mateusdias on 24/10/23.
//  Copyright © 2023 DevPoli. All rights reserved.
//

import UIKit


protocol DataSecondViewDelegate: AnyObject {
    func sendData(data: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    var delegate: DataSecondViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        delegate?.sendData(data: nameTextField.text!)
    }
    
    
}


