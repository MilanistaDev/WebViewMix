//
//  CheckWebViewController.swift
//  WebViewMix
//
//  Created by 麻生 拓弥 on 2017/05/17.
//  Copyright © 2017年 麻生 拓弥. All rights reserved.
//

import UIKit

class CheckWebViewController: UIViewController {

    @IBOutlet weak var checkWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "WebView"

        self.checkWebView.delegate = self
        self.checkWebView.scalesPageToFit = true
        let url: URL = URL(string: "https://www.apple.com/jp/")!
        let request: URLRequest = URLRequest(url: url)
        self.checkWebView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension CheckWebViewController: UIWebViewDelegate {

    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }

    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}
