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
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        label.text = "adadasdad"
       super.viewDidLoad()
      //  lable.text = "qweqweq"
//        if senderType == SenderTypeEnum.url{
//            let myURL = URL(string: "https://www.apple.com")
//            let myRequest = URLRequest(url: myURL!)
//            webView.load(myRequest)
//        }
//        if senderType == SenderTypeEnum.text{
//            l
//        }
    //    lable.text = tittle
        // Do any additional setup after loading the view
    }

}

