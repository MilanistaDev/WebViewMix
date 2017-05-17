//
//  CheckWKWebViewController.swift
//  WebViewMix
//
//  Created by 麻生 拓弥 on 2017/05/17.
//  Copyright © 2017年 麻生 拓弥. All rights reserved.
//

import UIKit
import WebKit

class CheckWKWebViewController: UIViewController {

    var checkWKWebView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "WKWebView"
        
        let myURL = URL(string: "https://www.apple.com/jp/")
        let myRequest = URLRequest(url: myURL!)
        self.checkWKWebView.load(myRequest)
    }

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        self.checkWKWebView = WKWebView(frame: .zero, configuration: webConfiguration)
        self.checkWKWebView.uiDelegate = self
        view = self.checkWKWebView
    }

    func setUp() {
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension CheckWKWebViewController: WKUIDelegate {

}
