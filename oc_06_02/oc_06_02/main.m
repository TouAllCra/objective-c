//
//  main.m
//  oc_06_02
//
//  Created by ibokan on 15/12/15.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //可变字典 NSMutableDictionary
        //1.初始化方法
        //创建一个空的字典
        NSMutableDictionary *mDictionary1 = [NSMutableDictionary dictionary];
        
        //创建一个有一个键值对的可变字典
        NSMutableDictionary *mDictionary2 = [NSMutableDictionary dictionaryWithObject:@"Rick" forKey:@"name"];
        
        //创建一个有多个键值对的可变字典
        NSMutableDictionary *mDictionary3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Rick",@"name",@25,@"age",@"GZ",@"adress", nil];
        
        //通过另一个字典创建一个字典
        NSMutableDictionary *mDictionary4 = [NSMutableDictionary dictionaryWithDictionary:mDictionary3];
        
        //通过枚举器去遍历
        NSEnumerator *enumerator = mDictionary4.keyEnumerator;
        NSEnumerator *enumerator2 = [[mDictionary4 allKeys]objectEnumerator];
        NSLog(@"%@,%@",enumerator,enumerator2);
        NSLog(@"%@,%@",mDictionary4.keyEnumerator,[[mDictionary4 allKeys]objectEnumerator]);
        for (NSString *key in enumerator) {
            NSLog(@"%@ = %@",key,mDictionary4[key]);
        }
        NSString *key;
        while (key = [enumerator2 nextObject]) {
            NSLog(@"%@ = %@",key,mDictionary4[key]);
        }
        
        //可变字典独有的初始化方法
        NSMutableDictionary *mDictionary5 = [NSMutableDictionary dictionaryWithCapacity:10];
        //创建了初始化大小为10个键值对的可变字典。同样地，参数num只是初始化的大小。提高程序效率，并没有限制字典的大小，如果继续往里面添加数据，字典的元素个数会继续增加。
        
        //从本地读取字典
        NSMutableDictionary *mDictionary6 = [NSMutableDictionary dictionaryWithContentsOfFile:@""];
        
        //从网络读取字典
        NSMutableDictionary *mDictionary7 = [NSMutableDictionary dictionaryWithContentsOfURL:[NSURL URLWithString:@""]];
        
        
        //操作字典
        //增
        [mDictionary5 setValue:@"Rick" forKey:@"name"];
        [mDictionary5 setValue:@25 forKey:@"age"];
        //改(如果原来字典中已有了key之歌关键字，那么这次新加的值就会覆盖原来的关键字（键）key对应的值)
        [mDictionary5 setValue:@"Jack" forKey:@"name"];
        
        //新语法
        mDictionary5[@"name"] = @"Leo";
        
        //删指定key的对象
        [mDictionary5 removeObjectForKey:@"age"];
//        [mDictionary5 removeValueAtIndex:1 fromPropertyWithKey:@"name"];
        [mDictionary5 removeAllObjects];
        
        NSLog(@"mDictionary5 = %@",mDictionary5);
        
        //例子
        NSMutableDictionary *mDictionary8 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"Rick",@"name1",@25,@"age",@"GZ",@"address",@"Rick",@"name2",@"Rick",@"name3", nil];
        NSLog(@"%@ = %@",[mDictionary8 allKeys],[mDictionary8 allValues]);
        
        NSLog(@"%@",[mDictionary8 allKeysForObject:@"Rick"]);
        
//        +superclass 
//        Class *class = mDictionary8->isa;
        NSDictionary *didi = [NSDictionary new];
        id classname = [NSString stringWithUTF8String:object_getClassName(didi)];
        
        NSLog(@"%@",classname);
        
//        if ([mDictionary8 class_isMetaClass()]) {
//            <#statements#>
//        }
        
        
    }
    return 0;
}
