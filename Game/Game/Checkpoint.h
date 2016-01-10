//
//  Checkpoint.h
//  Game
//
//  Created by ibokan on 15/12/7.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Checkpoint : NSObject
{
    NSInteger *currentCheckPoint;
    NSString *currentName;
    NSTimer *time;
    NSInteger *monsterNumbers;
}

-(void)describeName:(NSString *)currentName describePoint:(NSInteger *)currentCheckPoint describeNumbers:(NSInteger *)mosterNumbers describeTime:(NSTimer *)time;


@end
