//
//  main.m
//  oc_01(类和对象)
//
//  Created by ibokan on 15/12/7.
//  Copyright © 2015年 ibokan. All rights reserved.
//
/*
 面向对象和面向过程语言的区别？
    面向过程就是分析出解决问题的步骤，然后通过函数将致谢步骤一步步实现，使用的时候一个个依次调用即可。
    面向对象是把问题事物分为一个个对象，建立对象目的不是为了完成一个步骤，而是为了描述某个事物在整个解决问题的步骤中得行为。
    C语言是面向过程的语言，oc语言是面向对象的语言。
    面向过程的语言以步骤划分问题，面向对象语言以功能划分。
 
我们oc语言的特点：
    1，oc语言是c的超集，所以任何C语言程序都不需要修改就可以通过oc语言的编译器，也允许oc中使用任何C语言的代码。
    2，oc具有完善的面向对象的特征。
    3，oc有一个运行时系统。
    4，oc具有丰富的类库。
 
 
 
 
 
 */
/*
 #important：代替了我们C语言当中的#include来导入头文件
 Foundation框架：开发的基础，和界面无关，其中包含大量的对象构成，这些对象的根对象大多为NSObject，NSObject就出在Foundation框架下。
 
 
 */
#import <Foundation/Foundation.h>
#import "Student.h"


int main(int argc, const char * argv[]) {
    /*
     @autoreleasepool建立自动释放池，方便对象释放
     */
    @autoreleasepool {
        /*
         NSLog（）是系统提供日志函数，用来在控制台打印调试信息，@带一个字符串表示字符串对象的敞亮，我们运行完之后可以在控制台上面看到输出地命令以及一系列的信息，例如时间，工程的名字。
         */
        // insert code here...
        NSLog(@"Hello, World!");
        
        /*
         类与对象
            类就是现实世界中得实体的计算机中得反映，它将数据以及数据上的操作封装在一起
            对象就是具有类类型的变量。类和对象是面向对象编程技术的基本概念、
         类与对象的关系
            类是对象的抽象，而对象就是类的具体实现。类是抽象的，不占内存空间。类用于创建对象蓝图，它是一个定义在特定类型的对象中的方法和变量的软件模板。
         
         我们说类是对象的抽象，所以一个类具有特征和行为，在oc中类的定义分为两部分：
                1，接口部分：声明类的名字，属性，方法和实力变量，以及所属的父类；
                2，实现部分：属性的实现，包含方法的实现。
         
         
         
         
         */
        
        //对象的定义：1，内存分配，为对象动态分配内存地址。2，初始化：在内存中填上初始值。
        Student *stu1 = [[Student alloc]init];
        Student *stu2 = [Student new];
        Student *stu3 = [Student alloc];
        stu3 = [stu3 init];
        
        stu1 -> _name = @"张三";
        stu2 -> _name = @"李四";
        stu1 -> _num = 123456;
        stu1 -> _hobby = @"吃饭";
        stu1 ->_address = @"东莞";
        
        [stu1 sayHi];
        [stu1 eat];
        [stu1 playLOL];
    
        
        //oc中数据类型
        NSInteger age = 25;             //整型
        NSUInteger age2 = 25;           //无符号整型
        CGFloat score = 34.5;           //浮点型
        NSString *string = @"今天天气真好";
        char *string1 = "今天天气真好";
        
        NSRange range;                  //表示范围 结构体
        CGPoint point;                  //表示一个点
        CGSize size;                    //表示一个范围
        CGRect rect;                    //表示一个矩形范围
        
        NSMutableArray *mArray;         //也是数组
        NSDictionary *dic;              //字典
        NSMutableDictionary *mDic;      //也是字典
        
        NSData *data;                   //二进制数据
        NSDate *date;                   //时间
        NSURL *url;                     //url地址
        NSOperation *oper;              //线程
        NSThread *thread;               //线程
        
    }
    
    
    
    
    return 0;
}
