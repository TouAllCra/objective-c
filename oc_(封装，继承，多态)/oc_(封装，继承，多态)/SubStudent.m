//
//  SubStudent.m
//  oc_(封装，继承，多态)
//
//  Created by ibokan on 15/12/10.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "SubStudent.h"

@implementation SubStudent
//-(void)eat
//{
//    NSLog(@"%@在吃东西",_name);
//}
//
//-(void)sayHi
//{
//    NSLog(@"hi");
////    [self sayHello];
//}

/*
编写子类的时候，某些方法（从父类继承的）需要我们自己实现，允许重写父类的方法，调用子类对象的重写方法的时候。就会调用重写后的方法而不会调用父类的方法，父类中被子类所重写的方法则在调用子类被忽略。
 
 
 
 
 */

-(void)sayHi
{
    NSLog(@"你好，我是子类，我是%@",self->kkk);
}

-(void)kengduiyou
{
    NSLog(@"我是小学生，我会坑队友");
}


@end
