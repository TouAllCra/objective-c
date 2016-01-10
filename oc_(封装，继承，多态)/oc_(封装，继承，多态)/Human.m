//
//  Human.m
//  oc_(封装，继承，多态)
//
//  Created by ibokan on 15/12/10.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Human.h"

@implementation Human

-(void)feed:(Animal *)animal
{
    NSLog(@"铲屎官开始喂动物啦");
    [animal eat];
}


@end
