//
//  main.m
//  c_02(属性)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Monster.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        Student *stu = [[Student alloc]init];
        stu->name = @"张三";
        NSString *name = [stu getName];
        NSLog(@"我是%@,我今年%d岁",[stu getName],[stu getAge]);
        
        Monster *mon = [Monster new];
        [mon setName:@"大龙"];
        [mon setAttack:200];
        [mon setDefense:50];
        NSLog(@"%@的攻击力为%ld,防御力为%ld",[mon name],[mon attack],[mon defense]);
        
        //在oc中，我们可以使用点语法来操作对象的属性。这个点语法跟c结构体相似
        Monster *mon1 = [Monster new];
        mon1.name = @"小龙";
        mon1.attack = 100;
        mon1.defense = 25;
        NSLog(@"%@的攻击力为%ld，防御力为%ld",mon1.name,mon1.attack,mon1.defense);
        
        //点语法也被称为糖果语法，知识为了方便书写，我们需要记住其实它只是getter和setter语法的另外一个写法。
        
        
        
    }
    return 0;
}
