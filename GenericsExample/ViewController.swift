//
//  ViewController.swift
//  GenericsExample
//
//  Created by Ryan on 8/9/16.
//  Copyright © 2016 Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let intNumbers:Array<Int> = [1,3,45,2,3,10,60]
    let floatNumbers:Array<Float> = [1,3,45,2,3,10,60]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let result = filter(floatNumbers) { (number :Float) -> Bool in
            if (number < 100.0) {
                return true
            } else {
                return false
            }
        }
        print(result)
    }
    
    func filter<Type>(numbers :[Type], includeNumbers : (Type) -> Bool) -> [Type] {
        var results = [Type]()
        for number in numbers {
            if includeNumbers(number) {
                results.append(number)
            }
        }
        
        return results
    }
}

