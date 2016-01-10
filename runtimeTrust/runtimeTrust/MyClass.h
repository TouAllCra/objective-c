//
//  MyClass.h
//  runtimeTrust
//
//  Created by ibokan on 15/12/16.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MyClass : NSObject <NSCopying, NSCoding>



@property (nonatomic, strong) NSArray *array;



@property (nonatomic, copy) NSString *string;



- (void)method1;



- (void)method2;



+ (void)classMethod1;



@end

