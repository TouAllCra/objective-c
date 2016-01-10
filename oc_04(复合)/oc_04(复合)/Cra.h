//
//  Cra.h
//  oc_04(复合)
//
//  Created by ibokan on 15/12/11.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"

@interface Cra : NSObject
{
    @public
    Engine *engine;
    Tire *tire[4];
}
@property(nonatomic,copy)Engine *engine;
@property(nonatomic,copy)Tire *tire;

-(void)run;
-(void)setTire:(Tire *)buffer range:(int)inRange;

-(void)getEngine:(Engine **)buffer range:(NSRange)inRange;




@end
