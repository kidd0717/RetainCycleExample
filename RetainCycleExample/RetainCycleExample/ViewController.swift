//
//  ViewController.swift
//  RetainCycleExample
//
//  Created by Marcus Paze on 3/7/17.
//  Copyright © 2017 test. All rights reserved.
//

import UIKit

class BankAccount {
    weak var owner: Owner?
    init() {
        
    }
}
class Owner {
    var account: BankAccount?
    init() {
        
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let bankAccount = BankAccount()
        let owner = Owner()
        bankAccount.owner = owner
        owner.account = bankAccount
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

