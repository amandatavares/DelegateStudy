//
//  MyView.swift
//  DelegateStudy
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

protocol MyViewDelegate: class {
    
    func textForLabel() -> String
    func textForButton() -> String
    func actionForButton(_ myView: MyView)
    
}
class MyView: UIView {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    weak var delegate: MyViewDelegate? {
        didSet {
            self.mainLabel.text = delegate?.textForLabel()
            self.actionButton.setTitle(delegate?.textForButton(), for: .normal)
        }
    }

    class func instanceFromNib() -> MyView? {
        return UINib(nibName: "MyView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as? MyView
    }
    @IBAction func didTapActionButton(_ sender: Any) {
        delegate?.actionForButton(self)
        
        
    }
}
