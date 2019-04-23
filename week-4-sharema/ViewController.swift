//
//  ViewController.swift
//  week-4-sharema
//
//  Created by maxim mironov on 19/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import UIKit
import  WebKit
class ViewController: UIViewController, WKUIDelegate  {
    var text: String = ""
    var senderType: SenderTypeEnum?
  
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        if senderType == SenderTypeEnum.text{
            label.text = text
        }
       super.viewDidLoad()
    }

}

