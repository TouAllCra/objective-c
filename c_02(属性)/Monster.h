//
//  Monster.h
//  c_02(属性)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Monster : NSObject
{
    NSString *_name;
    NSInteger _attack;
    NSInteger _defense;
}
//采用设置器和访问其能够很好地解决封装和信息共享的矛盾，但是缺点就是麻烦工作量大。在实际开发中，我们适应属性来帮我们解决这个问题
//@property一条语句就能够起到了getter和setter的方法声明作用了。
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger attack;
@property(nonatomic,assign)NSInteger defense;

/*
 property有关的语法;
    1,存取方法名称
        系统默认存取方法名称是propertyName和setPropertyName,这样方便我们采用点语法。当然我们可以替换默认存取方法，采用方式：
        getter = getterName;
        setter = setterName;
        注意：如果改变了getter和setter方法，则必须提供自定义方法
    2.可读写性
        可读写性确定是否含有setter方法，他们是互斥的
        readwrite 指明属性可读写（默认）
        readonly 指明属性是只读的，不会产生setter方法
    3.内存管理
        strong:表明一个强引用关系，即拥有目标对象的所有权
        weak:表明弱引用关系，即不拥有目标所有权，当目标对象被销毁时，属性值会自动置为nil
        copy:   会通过copy复制对象，之前的对象会接收到释放的信息
        retain:通过retain来持有目标对象
        assign:表明采用简单的赋值方式，常用语基本数据类型（默认）
    4.原子操作
        atomic:原子操作，这个是默认的，在多线程环境中，把 属性设定为原子操作停工了一个可靠地存取方法，而不用担心并发时候产生的问题
        nonatomic:非原子操作，会简单地操作属性值。这回加快属性值的存取速度，但没办法保证在多线程环境中不出错
 */







@end
