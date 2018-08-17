//
//  XibViewController.swift
//  DelegateStudy
//
//  Created by Ada 2018 on 10/08/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import UIKit

class XibViewController: UIViewController {

    var myView: MyView?
    var myView2: MyView?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myView = MyView.instanceFromNib()
        myView?.frame = self.view.frame
        myView?.delegate = self
        self.view.addSubview(myView!)
        
    }
}

extension XibViewController : MyViewDelegate {
    
    func actionForButton(_ myView: MyView) {
        if myView == self.myView {
            print("Clicaram na myView1")
        } else if myView == self.myView2 {
            print("Clicaram na myView2")
        }
    }
    
    func textForLabel() -> String {
        return "Texto Teste"
    }
    
    func textForButton() -> String {
        return "Meu botão"
    }
    
    
}
