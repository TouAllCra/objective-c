//
//  main.m
//  oc_04（字符串）
//
//  Created by ibokan on 15/12/11.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Foundtion框架的基本类
        
        //基本数据类型
        int a = 0;
        float b = 4.5;
        double c = 3.14159;
        char d = 'd';
        NSInteger e = 1;
        NSUInteger f = 3;
        
        
        NSNumber *intNumber = [NSNumber numberWithInt:a];
        NSNumber *floatNumber = [[NSNumber alloc]initWithFloat:b];
        NSNumber *doubleNumber = [NSNumber numberWithDouble:c];
        NSNumber *charNumber  = [NSNumber numberWithChar:d];
        NSNumber *nsintegerNumber = [NSNumber numberWithInteger:e];
        NSNumber *nsuintegerNumber = [NSNumber numberWithUnsignedInteger:f];
        NSNumber *boolNumber = [NSNumber numberWithBool:YES];
        
//        @1.2;
//        等价于NSNumber *number = [NSNumber numberWithDouble:1.2];
        
        int a1 = [intNumber intValue];
        float b1 = [floatNumber floatValue];
        double c1 = [doubleNumber doubleValue];
        char d1 = [charNumber charValue];
        NSInteger e1 = [nsintegerNumber integerValue];
        NSUInteger f1 = [nsuintegerNumber unsignedIntegerValue];
        BOOL g1 = [boolNumber boolValue];
        
//        CGPoint point {10,10};
        CGPoint point = CGPointMake(10, 10);//表示点
//        CGSize size = {10,10};
        CGSize size = CGSizeMake(10, 10);//表示范围
//        CGRect rect = {10,10,10,10};
        CGRect rect = CGRectMake(10, 10, 10, 10);//表示矩形
//        NSRange range = {1,5};
        NSRange rang = NSMakeRange(1, 5);//表示范围
//        NSEdgeInsets edgeInsets = {0,0,0,0};
        NSEdgeInsets edgeUnsets = NSEdgeInsetsMake(0, 0, 0, 0);//表示边界
        
        NSValue *pointValue = [NSValue valueWithPoint:point];
        NSValue *sizeValue = [NSValue valueWithSize:size];
        NSValue *rectValue = [NSValue valueWithRect:rect];
        NSValue *rangValue = [NSValue valueWithRange:rang];
        NSValue *edgeInsetsValue = [NSValue valueWithEdgeInsets:edgeUnsets];
        
        CGPoint p1 = [pointValue pointValue];
        CGSize s1 = [sizeValue sizeValue];
        CGRect r1 = [rectValue rectValue];
        NSRange nr1 = [rangValue rangeValue];
        NSEdgeInsets ed1 = [edgeInsetsValue edgeInsetsValue];
        
        
        NSString *string1 = @"ibokan";
        NSString *string2 = [NSString stringWithString:@"iboken"];
        NSString *string3 = [[NSString alloc]initWithString:@"iboken"];
        NSString *string4 = [NSString stringWithFormat:@"%@%@,%f",string1,string2,5.4];
        //对于格式化方法来讲，其作用不仅仅是创建一个字符串，它还可以做字符串的拼接
        NSString *string5 = @"冯玉坚";
        NSString *string6 = @"666";
//        NSString *string7 = [NSString stringWithFormat:@"%@%@",string5,string6];
//        NSLog(@"%@",string7);
        
        //从本地读取字符串
        NSError *error = nil;
        NSString *string8 = [NSString stringWithContentsOfFile:@"/Users/ibokan/Desktop/DSDT1.dsl" encoding:NSUTF8StringEncoding error:&error];
//        NSLog(@"string8 = %@",string8);
//        NSLog(@"error = %@",error);
        
        //从网络中读取字符串
        NSURL *url = [NSURL URLWithString:@"https://www.github.com"];
        NSString *string9 = [NSString stringWithContentsOfURL:url encoding:4 error:&error];
//        NSLog(@"%@",string9);
        
        //字符串函数
        
        //字符串的基本属性length获取字符串长度
        NSString *string10 = @"abcdefghijklmnopqrstuvwsyz";
        NSUInteger length = string10.length;
        NSLog(@"%ld",length);
        
        //字符串截取函数
        NSString *string11 = [string10 substringToIndex:8];
        NSLog(@"%@",string11);
        NSString *string12 = [string10 substringFromIndex:8];
        NSLog(@"%@",string12);
        NSRange range1 = NSMakeRange(1, 5);
        NSString *string13 = [string10 substringWithRange:NSMakeRange(1, 5)];
        NSLog(@"%@",string13);
        
        //字符串比较
        //如果直接用等号便是两个字符串指针作比较，不是字符串内容作比较
        NSString *string14 = @"sasa";
        NSString *string15 = [NSString stringWithFormat:@"sasa"];
        if (string14 == string15) {
            NSLog(@"两个字符串相等");
        }
        else
        {
            NSLog(@"两个字符串不相等");
        }
        //如果希望比较内容的话，使用isEqualToString:函数
        if ([string14 isEqualToString:string15]) {
            NSLog(@"相等");
        }
        else
        {
            NSLog(@"不相等");
        }
        
        //两个字符串比较还可以使用compare:函数
        NSComparisonResult result =  [string11 compare:string12];
        switch (result) {
            case -1:
                NSLog(@"string11 < string12");
                break;
            case 0:
                NSLog(@"string11 = string12");
                break;
            case 1:
                NSLog(@"string11 > string12");
                break;
            default:
                break;
        }
        
        //字符串拼接
        NSString *string16 = @"http://";
        NSString *string17 = @"www.baidu.com";
        string16 = [string16 stringByAppendingString:string17];
        NSLog(@"%@",string16);
        string16 = [string16 stringByAppendingFormat:@"%@",@"/tupian"];
        NSLog(@"%@",string16);
        //路径拼接
        string16 = [string16 stringByAppendingPathComponent:@"animal"];
        NSLog(@"%@",string16);
        //拓展名拼接
        string16 = [string16 stringByAppendingPathExtension:@"c"];
        NSLog(@"%@",string16);
        
        string16 = [string16 lastPathComponent];
        NSLog(@"%@",string16);
        
        //判断字符串是否含有xxx前缀后xxx后缀
        NSString *string18 = @"www.baidu.com";
        if ([string18 hasPrefix:@"http://"]) {
            NSLog(@"含有http://");
        }
        else
        {
            NSLog(@"不含有http://");
        }
        if ([string18 hasSuffix:@".com"]) {
            NSLog(@"含有.com");
        }
        else
        {
            NSLog(@"不含有.com");
        }
        
        //可变字符串
        //可变字符串是不可变字符串的子类，所以，上面函数不可变字符串都可以使用
        NSMutableString  *mstring = [NSMutableString stringWithCapacity:50];
        NSLog(@"%@",mstring);
        [mstring appendString:@"Hello World!"];
        NSLog(@"%@",mstring);
        [mstring appendFormat:@" code change world %d",3];
        [mstring deleteCharactersInRange:NSMakeRange(6, 6)];
        NSLog(@"%@",mstring);
        
        char str = [string1 characterAtIndex:1];
        NSLog(@"%c",str);
        
        char str1[6];
        for (int i = 0; i < 6; i++) {
            str1[i] = [string1 characterAtIndex:i];
        }
        NSLog(@"%s",str1);
        
//        NSCoder *code = [NSCoder new];
//        [code encodeObject:pointValue];
////        NSString *str2 = [[NSString alloc]initWithCoder:<#(nonnull NSCoder *)#>];
        
        
        
        
    }
    return 0;
}
