//
//  BasicPartViewController.swift
//  swiftBasic
//
//  Created by lee on 2019/7/31.
//  Copyright © 2019 lee. All rights reserved.
//

import UIKit

class BasicPartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        https://swiftgg.gitbook.io/swift/swift-jiao-cheng
        
        // MARK: 一、概述
        /*
         与OC相比
         1.增加了oc中没有的高阶数据类型，比如 元组(Tuple)。
         2.增加了 可选类型(Optional)，处理值缺失的情况。
         3.swift是一门类型安全的语言
         */
        
        // MARK: 二、常量 变量
        // 2.1 声明
//        let sex = 1
//        var age = 25
        // 一行声明多个，使用逗号隔开
//        let x = 1,y = 7
//        var i = 10,j = 0
        
        // 2.2 类型注解(很少使用)
//        let name: String = "swift"
        //    let height,width: Double // -> swift要求常量和变量初始化的时候必须赋值
        
        // 2.3 常量和变量的命名
        // 2.3.1 可以包含任何字符，包括Unicode字符
//        let π = 5
//        let 我 = "科比"
//        let 😝 = "哈哈"
        // 2.3.2 不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符
        // 2.3.3 不能以数字开头
        
        // 2.4 输出常量和变量
//        print(我)
        
        // MARK: 三、注释
        // MARK: 四、分号 -- 如果要在一行内写多条独立的语句，则必须加分号
        
        
        // MARK: 五、 整数
        // 2.5.1
        // swift 提供了8，16，32，64位的有符号和无符号整数类型。比如：UInt8,UInt64,Int32,Int16
//        let minValue = Int64.min
//        let maxValue = Int64.max

        // 2.5.2 Int & UInt
        // swift提供了一个特殊的整形 Int 类型，长度与当前平台的原生字长相同。
        // - 在32位平台, Int = Int32
        // - 在64位平台, Int = Int64
        // 即使是在32位平台上，Int 可以存储的整数范围也可以达到 -2,147,483,648 ~ 2,147,483,647，大多数时候这已经足够大了
        
        // UInt 同理
        
        // ps: 最好使用Int（即使你需要一个无符号数据）
        
        // MARK: 六、 浮点数
        // 浮点数是有小数部分的数字 比如 3.14159、0.1 和 -273.15
        /*
         Double 表示64位浮点数。当你需要存储很大或者很高精度的浮点数时请使用此类型。
         Float 表示32位浮点数。精度要求不高的话可以使用此类型
         */
        
        // MARK: 七、 类型安全和类型推断
        
        // 2.8 数值型字面量
//        let oneMillion = 1_000_000
        
        // 2.9 数值类型转换
        // 2.9.1 整数转换
        // 2.9.2 整数和浮点数转换
        // 注意：不同类型的字面量可以直接相加，但是常量不可以
        // 例如: 3 + 3.14
        /*
         let a = 3
         let b = 3.14
         a与b不能直接相加
         */
        
        // MARK: 八、 类型别名
//        typealias age = UInt8
//        let a:age = 5
        
        // MARK: 九、 布尔值
        
        // MARK: 十、 元组 --> 把多个值组合成一个复合值。
        // 元组内可以是任意类型的值
//        let http404Error = (statusCode:404,des:"Not Found")
        
        // MARK: 十一、 可选类型
        
        // MARK: 十二、 错误处理
//        do {
//            try
//        }catch{
//
//        }

        // MARK: 十三、 断言和先决条件
        // 断言 仅在开发换将生效
        // 先决条件作用域 debug 和 release
        
        // 2.15.1 使用断言进行调试
//        assert(<#T##condition: Bool##Bool#>, <#T##message: String##String#>)
//        assertionFailure(<#T##message: String##String#>)

        // 2.15.2 强制执行先决条件
//        precondition(<#T##condition: Bool##Bool#>, <#T##message: String##String#>)
        /*
         注意: 如果使用 unchecked模式编译代码，先决条件将不会进行检查.编译器假设所有的先决条件总是为 true（真），他将优化你的代码。然而，fatalError(_:file:line:) 函数总是中断执行，无论你怎么进行优化设定
         
         搭建框架阶段可以把 fatalError 放在函数实现中，以便在后期完善时知道哪些函数需要实现
         
         */
        
//        fatalError(<#T##message: String##String#>)
    }
    


}
