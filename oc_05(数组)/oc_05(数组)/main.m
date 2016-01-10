//
//  main.m
//  oc_05(数组)
//
//  Created by ibokan on 15/12/14.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /*数组
         数组是有序的对象的集合，用来存储对象的有序列表，和C语言不同，数组的成员不可以基本数据类型。成员必须是对象。
         
         
         
        */
        
        //创建
        NSArray *array1 = [NSArray new];
        NSArray *array2 = [NSArray array];
        
        //初始化方法
        //数组以nil为结束的标志
        NSArray *array3 = [[NSArray alloc]initWithObjects:@"ssd",@"fgh",@123,123, nil];
        NSArray *array4 = [NSArray arrayWithObjects:@"asd",@"fgh", nil];
        NSArray *array5 = @[@"asd",@"fgh",@"jkl"];
        
        //从本地中读取一个数组
        NSArray *array6 = [NSArray arrayWithContentsOfFile:@""];
        
        //从网络中读取一个数组
        NSArray *array7 = [NSArray arrayWithContentsOfURL:[NSURL URLWithString:@""]];
        
        //从一个数组读另外一个数组
        NSArray *array8 = [NSArray arrayWithArray:array5];
        
        //数组的操作
        //数组的元素个数
        NSUInteger count = array5.count;
        
        //数组里面取元素
        NSString *string1 = [array5 objectAtIndex:0];
        NSLog(@"string1 = %@",string1);
        
        NSString *string2 = array5[1];
        NSLog(@"string2 = %@",string2);
        
        //访问整个数组
        //数组的越界问题
        for (int i = 0; i < count; i++) {
            NSLog(@"%@",array5[i]);
        }
        
        //通过元素找下标
        NSInteger index = [array5 indexOfObject:@"asd"];
        NSLog(@"index = %ld",index+1);
        
        //判断数组中是否含有某个元素
        BOOL flag = [array5 containsObject:@"asd"];
        BOOL flag2 = [array5 containsObject:@"qerqw"];
        NSLog(@"flag = %d,flag2 = %d",flag,flag2);
        
        //向不可变数组添加一个元素。生成新的数组
        NSArray *array9 = [array5 arrayByAddingObject:@"qwer"];
        for (int i = 0; i < 4; i++) {
            NSLog(@"%@",array9[i]);
        }
        
        //在不可变数组上面添加数组
        NSArray *array10 = [array5 arrayByAddingObjectsFromArray:array5];
        for (int i = 0; i < 6; i++) {
            NSLog(@"%@",array10[i]);
        }
        
        //通过一个字符串将数组元素生成及格新的字符串
        NSString *string3 = [array5 componentsJoinedByString:@""];
        NSLog(@"string3 = %@",string3);
        
        
        //NSMutableArray
        NSMutableArray *mArray1 = [NSMutableArray array];
        NSMutableArray *mArray2 = [NSMutableArray new];
        NSMutableArray *mArray3 = [NSMutableArray arrayWithObjects:@"asd",@"jkl", nil];
        NSMutableArray *mArray4 = [[NSMutableArray alloc]initWithObjects:@"asd",@"jkl" ,nil];
        NSMutableArray *mArray5 = [NSMutableArray arrayWithArray:array5];
        NSMutableArray *mArray6 = [NSMutableArray arrayWithContentsOfFile:@""];
        NSMutableArray *mArray7 = [NSMutableArray arrayWithContentsOfURL:[NSURL URLWithString:@""]];
        
        //可变数组的方法
        
        //添加
        [mArray5 addObject:@"qwer"];
        for (int i = 0; i < 4; i++) {
            NSLog(@"array[%d] = %@",i,mArray5[i]);
        }
        
        //在指定位置上添加
        [mArray5 insertObject:@"sdfg" atIndex:1];
        for (int i = 0; i < 5; i++) {
            NSLog(@"array[%d] = %@",i,mArray5[i]);
        }
        
        //替换
        [mArray5 replaceObjectAtIndex:1 withObject:@"list"];
        for (int i = 0; i < 5; i++) {
            NSLog(@"array[%d] = %@",i,mArray5[i]);
        }
        
        //交换
        [mArray5 exchangeObjectAtIndex:0 withObjectAtIndex:1];
        for (int i = 0; i < 5; i++) {
            NSLog(@"array[%d] = %@",i,mArray5[i]);
        }
        
        //删除
        [mArray5 removeObject:@"asd"];
        //删除指定位置
        [mArray5 removeObjectAtIndex:1];
        //删除最后一个
        [mArray5 removeLastObject];
        //删除全部
        [mArray5 removeAllObjects];
        
        
        //遍历数组方法
        //当我们遍历数组时候不恩能够对数组进行修改
        for (int i = 0 ; i < 3;  i++) {
            NSLog(@"array5 = %@",array5[i]);
        }
        for (id string in array5) {
            NSLog(@"%@",string);
            
            
        }
        
        //系统提供的枚举类
        NSEnumerator *enumerator = [mArray5 objectEnumerator];
        NSString *ele;
        while (ele = [enumerator nextObject]) {
            NSLog(@"ele = %@",ele);
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    return 0;
}
