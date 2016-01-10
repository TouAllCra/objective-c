//
//  Student.m
//  c_02(属性)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Student.h"

@implementation Student

-(NSString *)getName
{
    return name;
}
-(void)setNamae:(NSString *)aName
{
    name = aName;
}

-(int)getAge
{
    return age;
}
-(void)setAge:(int)anAge
{
    if(anAge > 0)
    {
    age = anAge;
    }
    else
    {
        NSLog(@"你是妖怪啊");
    }
}


@end
