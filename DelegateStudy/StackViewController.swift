//
//  StackViewController.swift
//  DelegateStudy
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

// Delegate example: A stack view that receives a text from a TextField by the delegate. Delegate protocol is in SecondViewController and it has a function to receiveText 

class StackViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? SecondViewController {
            controller.delegate = self
        }
    }
}

extension StackViewController: SecondViewControllerDelegate {
    func receiveText(_ text: String?) {
        let label = UILabel()
        label.text = text
        stackView.addArrangedSubview(label)
    }
    
    
}
