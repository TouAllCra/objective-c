//
//  main.m
//  oc_mate_class
//
//  Created by ibokan on 15/12/16.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

//void TestMetaClass(id self,SEL _cmd)
//{
//    NSLog(@"This object is %p",self);
//    NSLog(@"Class is %@,super class is %@",[self class],[self superclass]);
//    
//    Class currentClass = [self class];
//    
//    for (int i = 0; i < 4; i++) {
//        NSLog(@"Following the isa point %d times gives %p",i,currentClass);
//        currentClass = objc_getClass((__bridge void *)currentClass);
//    }
//    NSLog(@"NSObject's class is %p",[NSObject class]);
//    NSLog(@"NSObject's meta class is %p",objc_getClass((__bridge void *)[NSObject class]));
//    
//    
//}
//
//#pragma mark -
//
//@implementation Test : NSObject 
//
//-(void)ex_registerClassPair
//{
//    Class newClass = objc_allocateClassPair([NSError class],"TestClass",0);
//    class_addMeethod(newClass,@selector(testMethodClass),(IMP)TestMetaClass,"v@:");
//    objc_registerClassPair(newClass);
//    
//    id instance = [[newClass alloc]initWithDomain:@"some domain" code:0 userInfo:nil];
//    [instance performSelector:@selector(testMetaClass)];
//    
//}
//
//@end

void TestMetaClass(id self, SEL _cmd) {
    
    
    
    NSLog(@"This objcet is %p", self);
    
    NSLog(@"Class is %@, super class is %@", [self class], [self superclass]);
    
    
    
    Class currentClass = [self class];
    
    for (int i = 0; i < 4; i++) {
        
        NSLog(@"Following the isa pointer %d times gives %p", i, currentClass);
        
        currentClass = objc_getClass((__bridge void *)currentClass);
        
    }
    
    
    
    NSLog(@"NSObject's class is %p", [NSObject class]);
    
    NSLog(@"NSObject's meta class is %p", objc_getClass((__bridge void *)[NSObject class]));
    
}



#pragma mark -



@implementation Test:NSObject



- (void)ex_registerClassPair {
    
    
    
    Class newClass = objc_allocateClassPair([NSError class], "TestClass", 0);
    
    class_addMethod(newClass, @selector(testMetaClass), (IMP)TestMetaClass, "v@:");
    
    objc_registerClassPair(newClass);
    
    
    
    id instance = [[newClass alloc] initWithDomain:@"some domain" code:0 userInfo:nil];
    
    [instance performSelector:@selector(testMetaClass)];
    
}



@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
    }
    return 0;
}
