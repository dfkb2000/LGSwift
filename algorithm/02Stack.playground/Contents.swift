/*
栈（结构体）
 
isEmpty
count
push -- 入栈
pop -- 出栈
top -- 栈顶

 */

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element:T){
        array.append(element)
    }
    
    public mutating func pop() -> T?{
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
}

var elv = Stack(array: [])

elv.push("小明")
elv.push("小红")
elv.push("小栏")

elv.isEmpty

elv.count

elv.pop()

elv.count

elv.top
