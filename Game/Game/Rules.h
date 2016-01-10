//
//  Rules.h
//  Game
//
//  Created by ibokan on 15/12/7.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Checkpoint;
@class Hero;

@interface Rules : NSObject
{
    NSString *name;
}
-(void)describe:(Hero *)hero;

@end
