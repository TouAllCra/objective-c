//
//  Student.m
//  oc_01(类和对象)
//
//  Created by ibokan on 15/12/7.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void)sayHi
{
    NSLog(@"hello,I am guy,can we be a friend");
}
-(NSString *)eat
{
    return [NSString stringWithFormat:@"%@is eating rice",_name];
}
-(NSString *)playLOL
{
    return @"LOL!!!!!!!!";
}

@end
