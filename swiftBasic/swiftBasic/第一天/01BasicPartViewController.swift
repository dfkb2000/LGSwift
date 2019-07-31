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
        let sex = 1
        var age = 25
        // 一行声明多个，使用逗号隔开
        let x = 1,y = 7
        var i = 10,j = 0
        
        // 2.2 类型注解(很少使用)
        let name: String = "swift"
        //    let height,width: Double // -> swift要求常量和变量初始化的时候必须赋值
        
        // 2.3 常量和变量的命名
        // 2.3.1 可以包含任何字符，包括Unicode字符
        let π = 5
        let 我 = "科比"
        let 😝 = "哈哈"
        // 2.3.2 不能包含数学符号，箭头，保留的（或者非法的）Unicode 码位，连线与制表符
        // 2.3.3 不能以数字开头
        
        // 2.4 输出常量和变量
        print(我)
        
        // 注释
        // 分号 -- 如果要在一行内写多条独立的语句，则必须加分号
        
        // 2.5 整数
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
        
        // 2.6 浮点数
        
    }
    


}
