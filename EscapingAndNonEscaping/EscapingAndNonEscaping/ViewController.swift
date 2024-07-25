//
//  ViewController.swift
//  EscapingAndNonEscaping
//
//  Created by Prabhat Pankaj on 22/07/24.
//

import UIKit

class ViewController: UIViewController {
    //closure without parameter and return type
    var messsage = {
        print("Hello world")
    }
    
    //closure with parameter and without return type
    var goodMorning = { (name:String) in
        print("Hello, \(name) Good morning ☀️")
    }
    
    //closure with parameter and with return type
    var sumTwoNumber =  { (num1:Int, num2:Int) -> Int in
        return num1+num2
    }
    
    //closure as a function parameter. simple clouse with no parameter and no return type
    func sayNoon(greet:()->()){
        greet()
    }
    
    
    func execute() -> (Int) -> Int {
        var input = 0
        
        return { output in
            input = input + output
            return input
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        //closure without parameter and return type
        messsage()
        
        //closure with parameter and without return type
        goodMorning("Prabhat")
        
        //closure with parameter and with return type
        print(sumTwoNumber(2,4))
        
        //closure as a function parameter.
        sayNoon {
            print("Noon!")
        }
        
        
//        var name = "Prabhat"
//        let closure = {
//            print("I love \(name)")
//        }
//        closure()
        //I love Prabhat
        
        
//        var name = "Prabhat"
//        let closure = {[name]
//            print("I love \(name)")
//        }
//        name = "Pankaj"
//        closure()
        //I love Pankaj
        //we are captruing the value so latest value printed
        
//        var name = "Prabhat"
//        let closure = {[name] in // capture list of the closure creates a copy of 'name' if we use in keyword. it will take previous value.
//            print("I love \(name)")
//        }
//        name = "Pankaj"
//        closure()
        //I love Prabhat
        
        var name = "Prabhat"
        var technology = "iOS"
        let closure = {[name] in // capture list of the closure creates a copy of 'name' if we use in keyword. it will take previous value.
            print("I love \(name)")
            print("I love \(technology)")
        }
        name = "Pankaj"
        technology = "Android"
        closure()
        //I love Prabhat
        //I love Android

        
        let op = execute()
        let a = op(5) // only return snippet will execute
        let b = op(10)
        let c = op(15)
        
        print(c)
        //30
        //closure are refrence type
    }


}

