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
    var text: String = "привет!"
    var senderType: SenderTypeEnum = SenderTypeEnum.text
    var webView: WKWebView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        if senderType == SenderTypeEnum.url && text.canbeUrl(){
            let url = URL(fileURLWithPath: text)
            let webConfiguration = WKWebViewConfiguration()
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
            let myRequest = URLRequest(url: url)
            webView = WKWebView(frame: .zero, configuration: webConfiguration)
            webView.uiDelegate = self
            view = webView
            webView.load(myRequest)
        }else{
            senderType = SenderTypeEnum.text
            label.text = "не корректный урл"
        }
        if senderType == SenderTypeEnum.text{
            if text == "" {
                label.text = "привет!"
            }
            else{
                label.text = text
            }
        }
       super.viewDidLoad()
    }

}

extension String{
    func canbeUrl() -> Bool {
        if self == ""{
            return false
        }
        let urlRegEx = "(www|http:|https:)+[^\\s]+[\\w]"
        let urlTest = NSPredicate(format:"SELF MATCHES %@", urlRegEx)
        return urlTest.evaluate(with: self) ? true : false
        
    }
}
