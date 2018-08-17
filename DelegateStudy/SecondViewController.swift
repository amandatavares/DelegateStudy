//
//  SecondViewController.swift
//  DelegateStudy
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

// Delegate protocol: type class to be implemented by any class, with receive text function

protocol SecondViewControllerDelegate: class {
    func receiveText(_ text: String?)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    weak var delegate: SecondViewControllerDelegate?
    
    // when the button is hitted, the function calls the delegate implementation on StackView, Zib or ViewController
    // where I put the function definition, it will works and receive the text as the class wants.
    @IBAction func didTapButton(_ sender: Any) {
        self.delegate?.receiveText(nameTextField.text)
        self.dismiss(animated: true, completion: nil)
    }
    
}
