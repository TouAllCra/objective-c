//
//  Monster.m
//  c_02(属性)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Monster.h"

@implementation Monster
//在实现文件中，通过@synthesize这个语句来代替实现部分。
@synthesize name=_name,defense=_defense,attack=_attack;

-(void)setName:(NSString *)name{
    self.name = @"111";
}
-(void)setName:(NSString *)name
{
    _name = name;
}

@end
