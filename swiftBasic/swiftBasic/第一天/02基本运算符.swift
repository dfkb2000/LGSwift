//
//  02BasicOperator.swift
//  swiftBasic
//
//  Created by Peanut Lee on 2019/8/1.
//  Copyright © 2019 lee. All rights reserved.
//

import UIKit

class BasicOperator: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: 一、概述
        /*
        
         运算符是检查、改变、合并值的特殊符号或短语
         
         Swift 支持大部分标准 C 语言的运算符，且为了减少常见编码错误做了部分改进。如：赋值符（=）不再有返回值
         
         Swift 还提供了 C 语言没有的区间运算符，例如 a..<b 或 a...b
         */
        
        // MARK: 二、术语
        /*
         * 一元运算符，一元分前置和后置，如a!、a++, !b
         * 二元，a + b, a 和 b 是操作数
         * 三元，和C语言一样，swift只有一个三元运算符，即三目运算符
         
         */
        
        // MARK: 三、赋值运算符
        /*
         
         =
         
         */
        // 注意：与C和OC不同，swift中的赋值运算符不返回任何值
        
        // MARK: 四、算术运算符
        /*
         
         +
         -
         *
         /
         
         */
        // 注意：swift默认不支持 值溢出的运算，但是可以使用溢出运算符 (a &+ b )
        // + 加法运算符可以直接作用于字符串
        
        // 一元负号运算符，直接写在操作数之前，比如：-3 ,中间没有有空格
        
        // MARK: 五、组合赋值运算符
        // 例如：+=, -=，这一点和C语言相同
        
        // MARK: 六、比较运算符
        // 所有标准 C 语言中的比较运算符都可以在 Swift 中使用：
        
        /*
         元组的比较
         如果两个元组的元素相同，且长度相同的话，元组就可以被比较。比较元组大小会按照从左到右、逐值比较的方式，直到发现有两个值不等时停止。如果所有的值都相等，那么这一对元组我们就称它们是相等的
         
         Swift 标准库只能比较七个以内元素的元组比较函数。如果你的元组元素超过七个时，你需要自己实现比较运算符
         */
        
        // 注意：布尔值不能被比较
        
        // MARK: 七、三元运算符
        
        // MARK: 八、空合运算符
        /*
         (a ?? b) --> a必须是可选类型，b必须和a存储的值类型相同
         
         它表示：如果a有值，返回a的值。反之，返回b的值
        
         */
        
        // MARK: 九、区间运算符
        
        // 9.1 闭区间运算符
        // a...b, 范围包括a和b
//        for i in 0...5 {
//            print(i)
//        }
        
        // 9.2 半开区间运算符
        // a..<b  范围不包括b
//        let names = ["weak","tom","tony","marry","kelly"]
//        for i in 0..<names.count {
//            print(names[i])
//        }
        
        // 9.3 单侧区间
        
        // 9.3.1 下标中使用单侧区间
//        for name in names[2...] {
//            print(names)
//        }
        /*
         含义：遍历从下标为2的元素开始到最后的所有元素
         */
        
//        for name in names[...2]{
//            print(name)
//        }
        /*
         含义：遍历从开始到下标为2（包括2）的元素
         */
        
        // ps：[...<2] --> 不包括2
        
        // 9.3.2 其他情景使用单侧区间
//        let range = ...5
//        range.contains(7)   // false
//        range.contains(4)   // true
//        range.contains(-1)  // true
        
        // MARK: 十、逻辑运算符
        
        // 1.逻辑非 (!a) --> 对布尔值取反，前置且不加空格
        
        
        // 2.逻辑与 (a && b)
        
        // 1.逻辑或 (a || b)
        
        // 注意：Swift 逻辑操作符 && 和 || 是左结合的，这意味着拥有多元逻辑操作符的复合表达式优先计算最左边的子表达式
        // 比如：
//        if false && false || true{
//            print("表达式为真")
//        }else{
//            print("表达式为假")
//        }
        
        // 合理使用括号
        // 为了一个复杂表达式更容易读懂，在合适的地方使用括号来明确优先级是很有效的，虽然它并非必要的。
        
    }
    

   

}
