//
//  main.m
//  oc_04(复合)
//
//  Created by ibokan on 15/12/11.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cra.h"
#import "Engine.h"
#import "Tire.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        /*
         复合的概念
        什么是复合？
            复合就是一个类的成员由其他类组合而成（一个类包含其他类）
         
         复合和集成区别;
            集成是对象之间isa的关系，复合就是对象之间has-a的关系
         
         依赖关系
            A类导入B类，B类导入C类，这样就会导入一个依赖关系
            甚至是A类导入B类。B类导入A类。这样的话造成编译错误
         
         @class关键字
            导入头文件就会产生依赖关系降低程序的效率甚至无法编译、我们就会通过@class关键字解决。
         
         @class:
            1.@class作用是告诉编译器有这样一个类
            2.在对象复合的时候经常用到@class关键字，因为复合大多情况下只需要在整体声明变量即可
            3.通过#import导入类需要编译这个类，而使用@class则不需要#import一次了
            4.复合时只需要声明变量，不需要再调用这个方法，所以使用@clas即可，如果需要调用给该类的方法时，我们还得使用#import
            5.@class解决循环依赖问题，例如A类导入B类，B类导入A类，如果使用#import的话，每一个头文件都需要对象先编译成功才行，所以出导致编译出错。使用@class就可以解决。
         
         
         */
        
        
        Cra *car = [Cra new];
        Engine *enginr = [Engine new];
        Class **p;
        p = &enginr;
        for (int i = 0; i < 4; i++) {
            Tire *tire = [Tire new];
            [car setTire:tire range:i];
        }
        [car setEngine:enginr];
        
        [car run];
        
        NSRange r1 = NSMakeRange(0, 0);
        [car getEngine:p range:r1];
        
        
        
        
        
        
    }
    return 0;
}
