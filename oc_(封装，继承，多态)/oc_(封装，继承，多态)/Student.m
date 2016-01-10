//
//  Student.m
//  oc_(封装，继承，多态)
//
//  Created by ibokan on 15/12/10.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Student.h"

@implementation Student
-(void)sayHi
{
    NSLog(@"hi");
    [self sayHello];
}

-(void)sayHello
{
    NSLog(@"Hello");
}

-(void)eat
{
    NSLog(@"%@在吃东西",_name);
}

-(instancetype)init
{
    NSLog(@"我在重写init");
    return [super init];
    //suoer:告诉子类调用父类的方法
}

+(void)load
{
    NSLog(@"我在重写load");
    [super load];
}
-(NSString *)description
{
    return [super description];
}


@end
