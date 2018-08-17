//
//  ViewController.swift
//  DelegateStudy
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondViewControllerDelegate {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? SecondViewController {
            controller.delegate = self
        }
    }
    
    func receiveText(_ text: String?) {
        textLabel.text = text
    }
}

