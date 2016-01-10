//
//  Student.m
//  oc_02(便利构造器)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Student.h"

@implementation Student

//id代表动态数据类型，可以指向任何类的对象，而不关心具体的类型，在运行时检查具体类型，可以对其发送人呵呵存在的消息
//init使用时机，我们为对象初始化实例变量的值不是系统默认的值时。
-(id)init
{
    //self = [super init]代表返回子类对象，此处为了初始化父类对象，如果返回nil的话，说明父类没有alloc成功，即不能alloc对象了。
    //super关键字：子类使用super关键字的时候，实际上就是告诉子类调用父类的方法。如果父类没有这个方法，则继续在继承链行寻找，知道找到为止，如果找到NSObject类任然没有找到就会报错。
    if (self = [super init]) {
        name = @"张三";
        age = 18;
        num = 123;
        
    }
    return self;
}

//通过参数来对对象赋值
-(id)initWithName:(NSString *)aName andAge:(int)anAge andNum:(int)aNum
{
    if (self = [super init]) {
        name = aName;
        age = anAge;
        num = aNum;
    }
    return self;
}

+(id)studentWithName:(NSString *)aName andAge:(int)anAge andNum:(int)aNum
{
    Student *stu = [[Student alloc]initWithName:aName andAge:anAge andNum:aNum];
    return stu;
}

-(void)sayHi
{
    [super description];
}
@end
