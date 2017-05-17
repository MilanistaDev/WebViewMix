//
//  ViewController.swift
//  WebViewMix
//
//  Created by 麻生 拓弥 on 2017/05/17.
//  Copyright © 2017年 麻生 拓弥. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func safariWebViewAction(_ sender: Any) {

        let url: URL = URL(string: "https://www.apple.com/jp/")!
        if #available(iOS 9.0, *) {
            let safariWebView = SFSafariViewController(url: url)
            safariWebView.delegate = self
            self.navigationController?.pushViewController(safariWebView, animated: true)
        } else {
            let alert = UIAlertController(title: "確認", message: "SFSafariViewControllerはiOS9以上が対応です。", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: SFSafariViewControllerDelegate {

    @available(iOS 9.0, *)
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        self.dismiss(animated: true, completion: nil)
    }

}
