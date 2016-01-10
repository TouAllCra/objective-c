//
//  Student.h
//  oc_02(便利构造器)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
    //作用域
    @public
    NSString *name;
    int num;
    int age;
}

//方法的种类
-(void)sayHi;
+(void)sayHello;

//self

//init



/*便利初始化函数
在很多时候，我们不单单需要一个默认值，我们实例化对象与对象之间的值是不同的，这个时候我们就使用便利初始化函数
 注意：命名规范：initWith开头。驼峰命名法。
 
 
*/
-(id)initWithName:(NSString *)aName andAge:(int )anAge andNum:(int )aNum;

/*
 便利构造器;
 在便利初始化函数时候，我们需要alloc方法来分配内存空间。然后对对象进行初始化。其实我们一步到位，将内存分配和初始化组合起来，这种方法称为便利构造器。
 注意：命名规则：className开头+With;例如：studentWith
 */
+(id)studentWithName:(NSString *)aName andAge:(int)anAge andNum:(int)aNum;


@end
