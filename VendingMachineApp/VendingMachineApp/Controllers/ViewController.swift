//
//  ViewController.swift
//  VendingMachineApp
//
//  Created by 이동건 on 29/10/2018.
//  Copyright © 2018 이동건. All rights reserved.
//

import UIKit

protocol VendingMachineHandlerDelegate: class {
    associatedtype Menu
    func handle(_ menu: Menu, value: Int) throws -> Comment?
}

class ViewController: UIViewController {
    private var vendingMachine = VendingMachine(Stocks(WareHouse.generateBeverages(3)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let beverages = vendingMachine.bundles.display { "\($0)) \($1) \($2)개" }
        
        print(beverages)
    }
}

