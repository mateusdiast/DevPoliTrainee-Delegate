//
//  ViewController.swift
//  DevPoliChallenge
//
//  Created by DevPoli on 29/07/23.
//  Copyright © 2023 DevPoli. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func writeNameButtonPressed(_ sender: UIButton) {
        guard let destinationVc = storyboard?.instantiateViewController(identifier: "second") as? SecondViewController else {return}
        destinationVc.delegate = self
        navigationController?.pushViewController(destinationVc, animated: true)
    }
    
}

extension FirstViewController: DataSecondViewDelegate {
    func sendData(data: String) {
        nameLabel.text = data
    }
    
    
}

