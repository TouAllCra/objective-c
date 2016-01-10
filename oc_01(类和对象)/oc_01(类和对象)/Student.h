//
//  Student.h
//  oc_01(类和对象)
//
//  Created by ibokan on 15/12/7.
//  Copyright © 2015年 ibokan. All rights reserved.
//

//.h文件 接口文件，用来实现属性的声明和方法的声明
//.m文件 实现文件，用来实现属性和方法。

#import <Foundation/Foundation.h>

//@interface和@end两个，我们声明成员变量和发那个发就是在这里面设置的。成员变量和方法去对应我们刚才说一个类的特征和行为。我们现在说首先成员变量用花括号包含，然后就是方法，我们.h文件一般只是作声明，并不对方法进行实现或者变量进行赋值。
//@interface 类名：父类名
@interface Student : NSObject
{
    //声明实力变量的作用于
    /*
     @public 公开的，任何类都可以访问
     @protected 受保护的，只有类和类的子类可以访问，默认
     @private 私有的，只有类本身可以访问
     @package 打包的，包内类可以访问
     
     */
    @public
    NSUInteger _num;
    NSString *_name;
    NSString *_hobby;
    NSString *_address;
    @protected
    NSInteger money;
    @private
    NSString *sexLove;
    
    
    
}
//方法声明
-(void)sayHi;
-(NSString *)eat;
-(NSString *)playLOL;
/*
 方法声明的语法：
 -|+（返回类型）方法名：参数列表{
    方法体；
 }
 一个方法的参数有多个
 例子：
 -(void)insertValue:(id)value atIndex:(NSUInteger)index inPropertyWithKey:(NSString *)key
 -:代表发那个发类型的标识符
 （void）：代表返回类型
 insertValue：atIndex：：代表方法名
 （OBjectType）anObject （NSUInteger）index ：代表参数
 
 oc中方法有两种：实例方法和类方法
 减号开头的方法为实例方法，加号开头为类方法。
 实例方法需要通过实例化对象后调用，实例方法允许调用实例变量和实例方法。
 类方法无需实例化对象，直接通过类来调用。
 
 类方法的规则：
 类方法可以调用类方法。
 类方法不可以调用实例方法，但是类方法可以通过创建对象来访问实例方法
 类方法不可以使用实例变量。但是可以使用self，因为self不是实例变量
 类方法可以通过类调用，不可以通过对象调用
 
 self关键字：self在实例方法中代表当前对象的指针，self在类方法中代表该类的指针。
 
 */


@end



