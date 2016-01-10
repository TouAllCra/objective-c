//
//  Hero.h
//  Game
//
//  Created by ibokan on 15/12/7.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Hero : NSObject
{
    @public
    NSString *name;
    NSInteger *level;
    NSInteger *experience;
    NSInteger *currentLift;
    NSInteger *life;
    CGPoint *currentPoint;
    CGPoint *startPlace;
    
}

-(NSString *)getName;

-(void)setName:(NSString *)aName;

-(void)move:(NSInteger *)aMove;

-(void)attendMonster:(NSInteger *)attend;



@end
