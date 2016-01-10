//
//  main.m
//  oc_06_01
//
//  Created by ibokan on 15/12/15.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*
         
         字典 NSDictionary / NSMutableDictionary
         1.概念：字典是关键字‘key’及其定义的值'value'所构成的几何，即它使由key-value组成的键值对的集合。通常来讲，‘key’一般是‘NSString’类型的，‘value’是oc中任意对象。对于字典来讲，我们就是通过‘key’来访问‘value’.
         2.为什么在有了数组后，还需要字典？在由大量的数据或者频繁查找信息，使用字典效率更高。因为字典是才哟过键查询的优化存储方法的。
         3.在oc中我们使用‘NSDictionary’和‘NSMutableDictionary’来表示字典。其中‘NSMutableDictionary’是‘NSDictionary’的子类。
         
         
         
         */
        
        
        
        //初始化
        //创建一个空的字典
        NSDictionary *ditionary1 = [[NSDictionary alloc]init];
        
        NSDictionary *dictionary2 = [NSDictionary dictionary];
        
        //创建一个键值对的字典
        NSDictionary *dictionary3 = [NSDictionary dictionaryWithObject:@"Rick" forKey:@"name"];
        //创建对个键值对的字典
        NSDictionary *dictionary4 = [NSDictionary dictionaryWithObjectsAndKeys:@"Rick",@"name",@25,@"age",@"GZ",@"address", nil ];
        
        //字典里面存放的元素都要是对象类型才行。如果是基本数据类型，要先把这些基本数据类型进行封装，然后放在这些集合里。
        
        //在value在前，key在后，value和可以要成双出现
        NSLog(@"dictionary4 = %@",dictionary4);
        
        //注意：在字典中键值是无序的
        
        //根据一个字典创建一个字典
        NSDictionary *dictionary5 = [NSDictionary dictionaryWithDictionary:dictionary4];
        NSLog(@"dictionary5 = %@",dictionary5);
        
        //新语法创建字典
        NSDictionary *dictionary6 = @{};
        //新语法创建一个键值对
        NSDictionary *dictionary7 = @{@"name":@"Rick",@"age":@25,@"address":@"GZ"};
        NSLog(@"dictionary7 = %@",dictionary7);
        //新语法创建对个键值对，同上
        
        //从本地读取字典
        NSDictionary *dictionary9 = [NSDictionary dictionaryWithContentsOfFile:@""];
        //从网络读取字典
        NSDictionary *dictionary10 = [NSDictionary dictionaryWithContentsOfURL:[NSURL URLWithString:@""]];
        //字典中键值对的数量
        NSUInteger count = dictionary4.count;
//        NSLog(@"couont = %lu",count);
        
        //如何访问字典
        //通过key访问字典中对应的值
        NSString *name =   [dictionary4 objectForKey:@"name"];
        NSLog(@"name = %@",name);
        
        
        //新语法
        NSString *newName = dictionary4[@"name"];
        NSLog(@"newName = %@",newName);
        
        //如何遍历字典中所有的值
        //表示字典中所有的key
        NSArray *keyArray =  dictionary4.allKeys;
        NSLog(@"keyArray = %@",keyArray);
        
        //字典中所有的value
        NSArray *vlaueArray = dictionary4.allValues;
        NSLog(@"valueArray = %@",vlaueArray);
        
        //使用for循环来打印
        for (int i = 0; i < dictionary4.count; i++) {
            NSLog(@"%@",[dictionary4 valueForKey:keyArray[i]]);
        }
        
        for (int i = 0; i < dictionary4.count; i++) {
            NSLog(@"%@",dictionary4.keyEnumerator);
        }
        for (int i = 0; i < dictionary4.count; i++) {
            NSLog(@"%@ = %@",keyArray[i],dictionary4[keyArray[i]]);
        }
        
        
        //使用快速枚举
        for (NSString *key in dictionary4.allKeys) {
//            NSLog(@"%@ = %@",key,[dictionary4 objectForKey:key]);
            NSLog(@"%@ = %@",key,dictionary4[key]);
        }
        
        //使用枚举器遍历
        NSEnumerator *enumerator = [keyArray objectEnumerator];
        NSEnumerator *enumerator2 = dictionary4.keyEnumerator;
        NSString *key;
        while (key = [enumerator nextObject]) {
            NSLog(@"%@ =%@",key,dictionary4[key]);
        }
        while (key = [dictionary4.keyEnumerator nextObject]) {
            NSLog(@"%@ = %@",key,dictionary4[key]);
        }
        //在不可变字典中不能存储相同的key，如果相同的key，则只会打印一个key对应的vlaue
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Rick",@"name",@25,@"age",@"GZ",@"address",@"jake",@"name", nil];
        NSLog(@"-----------");
        for (NSString *key in [dictionary allKeys]) {
            NSLog(@"%@  = %@",key,dictionary[key]);
        }
        
        
        
        
        
    }
    return 0;
}
