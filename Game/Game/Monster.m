//
//  Monster.m
//  Game
//
//  Created by ibokan on 15/12/7.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Monster.h"



@implementation Monster



-(id)initWithName
{
    Monster *moster0 = [[Monster alloc]init];
    moster0 -> name = @"怪物婴儿";
    moster0 -> currentPoint -> x = 100;
    moster0 -> currentPoint -> y = 100;
    moster0 -> life = 100;
    moster0 -> attend = 2;
    moster0 -> move = 5;
    moster0 -> defense = 2;
    
    return moster0;
}


-(void)move:(NSInteger *)aMove current:(CGPoint *)currentPoint
{
    NSLog(@"%@moster is (%f,%f) now!",self->name,self->currentPoint->x,self->currentPoint->y);
}

-(void)attendHero:(Hero *)hero
{
    NSLog(@"怪兽攻击~");
    if (hero->life <= 0) {
        NSLog(@"he is died\n");
        
    }
    else
    {
        hero->life = hero->life - attend;
        NSLog(@"Now,hero's life is %d",hero->life);
        
    }
    
}


@end
