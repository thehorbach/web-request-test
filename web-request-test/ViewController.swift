//
//  ViewController.swift
//  web-request-test
//
//  Created by Vyacheslav Horbach on 10/03/16.
//  Copyright © 2016 Vyacheslav Horbach. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
    }
    
    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadRequest(urlStr: String) {
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)
    }
    
    @IBAction func onPressedShowSwift(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }

    @IBAction func onPressedShowGossip(sender: AnyObject) {
        loadRequest("http://www.tmz.com/")
    }
    
    @IBAction func onPressedShowSteak(sender: AnyObject) {
        loadRequest("https://en.wikipedia.org/wiki/Steak")
    }
    
}

