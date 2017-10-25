//
//  ViewController.swift
//  MockPoint
//
//  Created by Peter Sepstrup on 25/10/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import Cocoa
import Swifter

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let server = HttpServer()
        server["/hello"] = { .ok(.html("You asked for \($0)"))  }
        do {
            try server.start()
        } catch {
            print("fail")
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

