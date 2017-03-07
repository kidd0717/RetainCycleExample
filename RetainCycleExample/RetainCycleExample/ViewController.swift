//
//  ViewController.swift
//  RetainCycleExample
//
//  Created by Marcus Paze on 3/7/17.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

class ObjA {
    var b: ObjB?
    init() {
        
    }
}
class ObjB {
    var a: ObjA?
    init() {
        
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let a = ObjA()
        let b = ObjB()
        a.b = b
        b.a = a
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

