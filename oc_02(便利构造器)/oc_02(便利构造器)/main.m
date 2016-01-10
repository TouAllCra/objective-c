//
//  main.m
//  oc_02(便利构造器)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Student *stu = [[Student alloc]init];
        Student *stu1 = [Student new];
        stu1->name = @"李四";
        stu1->age = 20;
        stu1->num = 234;
        NSLog(@"%@,%d,%d\n",stu->name,stu->age,stu->num);
        NSLog(@"%@,%d,%d\n",stu1->name,stu1->age,stu1->num);
        
        Student *stu2 = [[Student alloc]initWithName:@"王五" andAge:22 andNum:345];
        NSLog(@"%@,%d,%d\n",stu2->name,stu2->age,stu2->num);
        
        Student *stu3 = [Student studentWithName:@"马六" andAge:24 andNum:456];
        NSLog(@"%@,%d,%d\n",stu3->name,stu3->age,stu3->num);
//        [stu3 sayHi];
        [stu3 description];
    }
    return 0;
}
