//
//  SubStudent.h
//  oc_(封装，继承，多态)
//
//  Created by ibokan on 15/12/10.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Student.h"
/*
 oc中使用冒号表示一个类继承与另外一个类，冒号意味着拓展，子类除了继承父类的属性和方法外，还可以拓展出自己特殊的属性和方法
 
 
 */
@interface SubStudent : Student
//@interface SubStudent : NSObject
//@property(nonatomic,copy)NSString *name;
//@property(nonatomic,assign)int age;
//-(void)sayHi;
//-(void)eat;


-(void)kengduiyou;

@end
