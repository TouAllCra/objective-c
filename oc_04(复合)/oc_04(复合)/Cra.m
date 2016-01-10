//
//  Cra.m
//  oc_04(复合)
//
//  Created by ibokan on 15/12/11.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Cra.h"
#import "Engine.h"
@implementation Cra
@synthesize engine = _engine,tire=_tire;
-(void)run
{
    NSLog(@"%@",engine);
    for (int i = 0; i < 4; i++) {
        NSLog(@"%@",tire[i]);
    }
}

-(void)setEngine:(Engine *)buffer
{
    engine = buffer;
    [engine work];
}

-(Engine *)engine
{
    return engine;
}
//-(void)getTire:(<#object-type#> **)buffer range:(NSRange)inRange
//-(void)getEngine:(Engine **)buffer range:(NSRange)inRange
//{
//    NSLog(@"%@,%@",buffer,inRange);
//    
//}
-(void)setTire:(Tire *)buffer range:(int)inRange
{
    if (inRange < 0 || inRange > 3) {
        NSLog(@"wrong");
    }
    else
    {
        tire[inRange] = buffer;
    }
}

-(Tire *)tire:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"wrong");
    }
    
    return tire[index];
}

@end
