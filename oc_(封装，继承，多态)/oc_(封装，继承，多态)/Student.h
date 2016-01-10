//
//  Student.h
//  oc_(封装，继承，多态)
//
//  Created by ibokan on 15/12/10.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject
{
//    @protected
    NSString *kkk;
    
    
}
//-(void)sayHi;


@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)int age;
-(void)sayHi;
-(void)eat;

@end
