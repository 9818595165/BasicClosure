# Basic Clousure

Group code that executes together, without creating a named function.

Closures are self-contained blocks of functionality that can be passed around and used in your code.

## Closure without parameter and return type

```swift   
    var messsage = {
        print("Hello Prabhat Pankaj")
    }
```

## Closure with parameter and without return type
```swift   
    var goodMorning = { (name:String) in
        print("Hello, \(name) Good morning ☀️")
    }
```

## Closure with parameter and with return type
```swift   

    var sumTwoNumber =  { (num1:Int, num2:Int) -> Int in
        return num1+num2
    }
```
    
## Closure as a function parameter. simple clouse with no parameter and no return type
```swift   

    func sayNoon(greet:()->()){
        greet()
    }
```
    
## Closure as a function parameter. simple clouse with parameter and return type
```swift    
    func execute() -> (Int) -> Int {
        var input = 0
        
        return { output in
            input = input + output
            return input
        }
    }
```

## Usage

```swift
# Closure without parameter and wihtout return type
        messsage()
        
# Closure with parameter and without return type
        goodMorning("Prabhat")
        
# Closure with parameter and with return type
        print(sumTwoNumber(2,4))
        
# Closure as a function parameter.
        sayNoon {
            print("Noon!")
        }
        var name = "Prabhat"
        let closure = {
           print("I love \(name)")
        }
        closure()
# print 'I love Prabhat'

        var name = "Prabhat"
        let closure = {[name]
            print("I love \(name)")
        }
        name = "Pankaj"
        closure()
# print 'I love Pankaj'
# We are capturing the value without in keyword so latest value printed
     
        var name = "Prabhat"
        let closure = {[name] in # Capture list of the closure creates a copy of 'name' if we use in keyword. it will take previous value.
          print("I love \(name)")
       }
        name = "Pankaj"
        closure()
# print 'I love Prabhat'

        var name = "Prabhat"
        var technology = "iOS"
        let closure = {[name] in # Capture list of the closure creates a copy of 'name' if we use in keyword. it will take previous value.
            print("I love \(name)")
            print("I love \(technology)")
        }
        name = "Pankaj"
        technology = "Android"
        closure()
# print 'I love Prabhat'
# print 'I love Android'

        
        let op = execute()
        let a = op(5) # Only return snippet will execute
        let b = op(10)
        let c = op(15)
        
        print(c)
# print '30'
# Closure are refrence type
```
