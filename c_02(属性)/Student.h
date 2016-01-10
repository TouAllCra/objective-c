//
//  Student.h
//  c_02(属性)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    @public
    NSString *name;
    int age;
}

/*
 为了隐藏实例变量我们使用@protected和@private关键字，为了和其他独享交换信息，我们使用@public关键字、但是圭多使用public关键字会暴露类的内部细节，这个时候我们存取方法来解决问题
 通过设置器和访问器间接操作了name变量，即隐藏了变量，又提供了访问方法
 
 对于设置器和访问其来说，有其命名规则：
    1，设置器：-（void）set首字母大写的实例变量名：（实例变量数据类型）实例变量名
    2，访问其：—（实例变量数据类型）get实例变量名
    3，遵循驼峰命名法；
 
 设置器和访问其的作用：
    1，隐藏了实例你变量；
    2，控制实例变量的读写
    3，作正确性的校验
 缺点：
    麻烦
 
 */
//name的get方法
-(NSString *)getName;
//设置Name的set方法
-(void)setNamae:(NSString *)aName;

-(int)getAge;
-(void)setAge:(int)anAge;


@end

