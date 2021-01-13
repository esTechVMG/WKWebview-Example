//
//  ViewController.swift
//  Webview
//
//  Created by A4-iMAC01 on 12/01/2021.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView()
        webView.navigationDelegate = self
        self.mainView = webView!
        webView.allowsBackForwardNavigationGestures = true
        
        

        
        let url = URL(string: "https://phoronix.com")!
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
        
        // Do any additional setup after loading the view.
    }
    @IBAction func reloadButton(_ sender: Any) {
        //webView.reload()
    }
    @IBAction func endEditing(_ sender: Any) {
        let url = URL(string: addressField.text!)!
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    
}

