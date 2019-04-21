//
//  WebVC.swift
//  week-4-sharema
//
//  Created by maxim mironov on 21/04/2019.
//  Copyright © 2019 maxim mironov. All rights reserved.
//

import UIKit
import WebKit
class WebVC: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var url: String!
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: url)
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
}
