//
//  Monster.h
//  Game
//
//  Created by ibokan on 15/12/7.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Hero.h"

@interface Monster : NSObject
{
    @public
    NSString *name;
//    NSInteger *currentLift;
    NSInteger *life;
    NSInteger *attend;
    NSInteger *defense;
    NSInteger *move;
    CGPoint *currentPoint;
    NSInteger *level;
}


-(id)initWithName;

-(void)move:(NSInteger *)aMove current:(CGPoint *)currentPoint;

-(void)attendHero:(Hero *)hero;

-(void)running:(NSInteger *)move;

@end
