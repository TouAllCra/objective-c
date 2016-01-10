//
//  Human.h
//  oc_(封装，继承，多态)
//
//  Created by ibokan on 15/12/10.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cat.h"
#import "Dog.h"
#import "Animal.h"

@interface Human : NSObject
@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)int age;

-(void)feedCat:(Cat *)cat;
-(void)feedDog:(Dog *)dog;
-(void)feed:(Animal *)animal;





@end
