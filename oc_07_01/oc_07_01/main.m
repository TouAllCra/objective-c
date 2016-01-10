//
//  main.m
//  oc_07_01
//
//  Created by ibokan on 15/12/17.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSData NSMutableData
        
        /*
         1.计算机中文件分为哪几种？
            二进制文件和文本文件，其中我们的图片，歌曲，电影等就是二进制文件，像‘.txt’的文件就是文本文件。
         2.客户端与服务器端，或者客户端与客户端数据交流的格式为二进制（字节流）。那么对于传输给客户端的数据，在我们oc中用什么格式储存呢？即为‘NSData’类在‘NSdata’类中，由其实例化的对象，此对象中包含大量的字节，这些字节就是我们客户端想要的信息。

        
         */
        
        //创建一个空的data
        NSData *data1 = [NSData data];
        
        
        //将字符串装换成NSData
        //c语言中字符
        
        //使用const关键字来将一个变量变成常量。const修饰的常量称为if常量（有些地方也称为命名常量），它所修饰的值一旦被设定以后，后期无法更改。
        const char *str = "Hello";
        NSData *data2 = [NSData dataWithBytes:str length:strlen(str)];
        NSLog(@"%@",data2);
        
//        char *name = "Rick";
//        char name1[] = "Rick";
        
        //直接将oc中字符串转成data
        NSString *string = @"你好么";
        NSData *data3 =  [string dataUsingEncoding:NSUTF8StringEncoding];
        NSLog(@"%@",data3);
        
        //将本地文件中得数据转换成data
        NSData *data4 = [NSData dataWithContentsOfFile:@"/Users/ibokan/Desktop/project/oc project/oc_07_01/oc_07_01/1.jpg"];
//        NSLog(@"data4 = %@",data4);
        
        //从网络读取数据转换成data
        NSData *data5 = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.huabian.com/uploadfile/2015/1124/20151124033032915.jpg"]];
//        NSLog(@"data5 = %@",data5);
        
        
        //将数据写入指定文件
//        BOOL flag = [data5 writeToFile:@"/Users/ibokan/Desktop/2.png" atomically:YES];
//        if (flag) {
//            NSLog(@"success");
//        }
        
        //求data字节长度
        NSUInteger length =  data4.length;
        NSLog(@"length = %lu",length);
        
        
        //创建一个空的 NSMutableData
        NSMutableData *mData = [NSMutableData data];
        
        //增加data
        [mData appendData:data4];
        NSLog(@"mdata = %@",mData);
        
        
        
        
    }
    return 0;
}
