//
//  ViewController.swift
//  swift-Alamofire
//
//  Created by mac on 2020/04/13.
//  Copyright © 2020 hoon.com. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        Alamofire.request("https://api.github.com/users/ghkdrmaskfk",
                          method: .get,
                          parameters: [:],
                          encoding: URLEncoding.default,
                          headers: ["Content-Type": "application/json","Accept":"application/json"]).validate(statusCode: 200..<300).responseJSON {
                              response in
                              if let JSON = response.result.value {
                                  print(JSON)
                              }
                          }
    }
}


