//
//  main.m
//  oc_(封装，继承，多态)
//
//  Created by ibokan on 15/12/10.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "SubStudent.h"
#import "MiddleStudent.h"
#import "Human.h"
#import "Dog.h"
#import "Cat.h"
#import "Animal.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         面向对象的三大特征：
            封装：
                什么是封装
                    封装就是对类中的实例变量，方法进行保护，不被外界访问到
                封装的特点
                    隐藏内部的实现，稳定了外部的接口
         
                属性封装了实例变量
                方法封装了具体的实现的代码
                类封装属性和方法
                
                封装的好处：
                    使用起来简单
                    变量更加安全
                    可以隐藏内部的实现细节
                    开发更加迅速
         
            继承：
                什么是继承？
                    子类可以直接复用父类的成员，子类继承了父类所有的方法的声明和实现，非私有的实例变量和协议，继承需要在.h接口文件中声明，继承具有单根性和传递性。
                    继承的传递性：
                        继承需要符合is-a的关系
                        子类具有父类的属性和行为，以及自身特殊的属性和行为
                    为什么要使用继承？
                        防止子类出现重复的代码，方便开发
                    继承的特点;
                        1.继承可以实现代码的复用，减少代码的冗余
                        2.oc中，使用一个类继承另外一个类，被继承的类叫父类（超类，基类），继承的类叫做子类（派生类，孩子类）
                        3.子类可以直接拥有父类所允许子类继承的属性和方法
                        4.子类可以改变父类已有的方法，执行不同代码的是实现
                        5.oc中允许单一继承
         
         继承中方法的调用
                调用子类方法，首先向子类中询问是否能够调用该方法，如果可以直接调用即可，如果子类中没有该方法，则需要找其父类，父类有该方法就直接调用，如果父类也没有。那么就继续向上寻找，一致持续到NSObject类，如果没找到就会报错了
         
         多态：
                什么是多态？
                    不同对象对同一消息的不同响应。子类重写父类。多态建立继承之上。
                多态的好处：
                    1.允许在多个类中定义同一个消息的接口
                    2.可以定义一个通用的调用方法，以便简便调用
         
         动态类型id：在oc，id类型是一个独特的数据类型，可以转换为任何数据类型
         
         开闭原则和里氏替换原则
            开闭原则：对拓展开发，对修改关闭
            里氏替换原则：继承复用的基石，只有当衍生类可以替换基类的 时候，软件单位的功能不受影响的时候；基类才能真正被复用，而衍生类也能在基类的基础上增加新的行为。
         
         
         */
        
        Student *stu = [[Student alloc]init];
        stu.name = @"张三";
        [stu sayHi];
//        [stu sayHello];
        [stu description];
        
        SubStudent *subStu = [[SubStudent alloc]init];
        subStu.name = @"小张三";
        [subStu sayHi];
        [subStu eat];
        [subStu kengduiyou];
        
        MiddleStudent *middleStu = [[MiddleStudent alloc]init];
        middleStu.name = @"中张三";
        [middleStu sayHi];
        [middleStu eat];
        
        id stusent = nil;
        stusent = [[SubStudent alloc]init];
        
        [stusent sayHi];
        stusent = [[MiddleStudent alloc]init];
        [stusent sayHi];
        
        
        Human *human = [Human new];
        Cat *cat = [Cat new];
        [human feed:cat];
        
        
    }
    return 0;
}
