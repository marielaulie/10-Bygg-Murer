//
//  IntroFilm.swift
//  10_Bygg_Murer
//
//  Created by Mariel Aulie Hinderaker on 15/06/2021.
//  Copyright © 2021 Mariel Aulie Hinderaker. All rights reserved.
//

import UIKit
import WebKit

class IntroFilm: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://indd.adobe.com/embed/96e33926-3cf1-4a8a-b3cc-48ed9b61d984?startpage=6&allowFullscreen=true")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
