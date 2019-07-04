/*
 参考链接:
 https://www.jianshu.com/p/ebdf75dbd822
 
 链表:
 链表是由数据项组成的一个序列,其中每个数据项被称为节点
 
 每个节点包含:
    1.该节点的值.
    2.下一个节点的指针
 
 链表有: 单链表 or 双链表
 */

// MARK: 节点
public class Node {
    // weak 防止循环引用
    weak var previous:Node?     // 头节点的上一个指针为空
    var value: String
    var next: Node?             // 尾节点的下一个指针为空
    
    init(value: String) {
        self.value = value
    }
}

extension Node: CustomStringConvertible{
    public var description: String{
        return self.value
    }
}

// MARK: 链表
public class LinkedList {
    // 头
    fileprivate var head: Node?
    // 尾
    private     var tail: Node?
    
    // 链表判空
    public var isEmpty: Bool {
        return head == nil
    }
    
    // 获取头节点
    public var first: Node? {
        return head;
    }
    
    // 获取尾节点
    public var last: Node? {
        return tail;
    }
    
    // MARK: 添加 append
    public func append(node: Node){
        // 1 创建节点
        let newNode = node
        
        // 2 如果 tail 不为空,表明该链表有节点
        if let tailNode = tail {
            // 新节点的 前一个节点指向 当前的 尾部节点
            newNode.previous = tailNode
            // 当前尾部节点的 下一个节点指向新节点
            tailNode.next = newNode
        }
            // 3 如果 tail 为空,表明链表为空
        else{
            head = newNode
        }
        // 4
        tail = newNode
    }
    
    public func append(value: String){
        // 1 创建节点
        let newNode = Node(value: value)
        
        // 2 如果 tail 不为空,表明该链表有节点
        if let tailNode = tail {
            // 新节点的 前一个节点指向 当前的 尾部节点
            newNode.previous = tailNode
            // 当前尾部节点的 下一个节点指向新节点
            tailNode.next = newNode
        }
        // 3 如果 tail 为空,表明链表为空
        else{
            head = newNode
        }
        // 4
        tail = newNode
        
    }
    
    // MARK: 访问节点
    public func nodeAt(index: Int) -> Node?{
        // 1
        if index >= 0 {
            var node = head
            var i = index
            
            // 2
            while node != nil {
                if i == 0 { return node }
                i -= 1
                node = node!.next
            }
        }
        
        // 3
        return nil
    }
    
    // MARK: 删除所有节点
    public func removeAll(){
        head = nil
        tail = nil
    }
    
    // MARK: 删除单个节点
    /*
    3种情况
        1.删除第一个节点
            更新 head & 新head的previous
        2.删除中间节点
            更新前一个节点的 next & 后一个节点的previous
        3.删除最后一个节点
            更新 tail & 新tail的next
     */
    public func remove(node: Node) -> String {
        
        let prev = node.previous
        let next = node.next
        
        if let prev = prev {
            prev.next = next // 1
        } else {
            head = next // 2
        }
        next?.previous = prev // 3

        if next == nil {
            tail = prev // 4
        }

        // 5
        node.previous = nil
        node.next = nil
        
        return node.value
    }
    
    // MARK: 挑战: 泛型
    
}

// MARK: 自定义打印内容
// 1
extension LinkedList: CustomStringConvertible{
    // 2
    public var description: String {
        // 3 创建 文本
        var text = "["
        
        // 4 获取 头节点
        var node = head
        
        // 5 循环 拼接所有节点的文本信息
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil {text += ","}
        }
        
        return text + "]"
    }
    
    // 6 添加文本结尾
    
    
}

// testcode
let menus = LinkedList()

let eggNode = Node(value: "西红柿炒鸡蛋")
let chaoNode = Node(value: "炒饼")
let tofuNode = Node(value: "豆腐脑")
let cowNode = Node(value: "顶级和牛")
let fishNode = Node(value: "乌鱼子")

menus.append(node: eggNode)
menus.append(node: chaoNode)
menus.append(node: tofuNode)
menus.append(node: cowNode)
menus.append(node: fishNode)

print(menus)

menus.remove(node: cowNode)

print("删除后\n", menus)

let testIndex = 2
print(menus.nodeAt(index: testIndex) ?? "第\(testIndex)节点不存在")
