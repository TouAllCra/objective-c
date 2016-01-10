//
//  main.m
//  oc_07_02
//
//  Created by ibokan on 15/12/17.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tool.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        //NSDate NSMutableDate
//        //在oc中，Foundation框架为我们提供了强大的时间操作类‘NSDate’，该类封装了各种处理时间和日期的API
//        
//        
//        //获取系统当前时间（GMT Greenwich Mean Time 格林尼治标准时间，它与北京时间相差8个时区，北京时间= GMT时间+8）
//        NSDate *date1 = [NSDate date];
//        NSLog(@"date1 = %@",date1);
//        
//        //当前系统时间+100秒
//        //NSTimeInterval 是一个以秒为单位的时间片，也叫时间戳
//        NSDate *date2 = [NSDate dateWithTimeIntervalSinceNow:100];
//        NSLog(@"date2 = %@",date2);
//        
//        //1970年1月1日0时+0秒
//        NSDate *date3 =  [NSDate dateWithTimeIntervalSince1970:0];
//        NSLog(@"date3 == %@",date3);
//        
//        //距离sinceDate日期timeInterval时间的时间
//        NSDate *date4 = [NSDate dateWithTimeInterval:1000000 sinceDate:[NSDate date]];
//        NSLog(@"date4 = %@",date4);
//        
//        //通过时间追加创建NSDate,同样地返回second秒后的时间，如果这个seconds为负的话，就是seconds秒前的时间
//        NSDate *date5 = [date4 dateByAddingTimeInterval:100000];
//        NSLog(@"date5 = %@",date5);
//        
//        //日期比较
//        //1.两个日期的时间间隔
//        //将一个日期转换成时间戳，此时间戳是以1970为标准
//        NSTimeInterval timeInterval1970 = [[NSDate date]timeIntervalSince1970];
//        NSLog(@"timeInterval1970 = %f",timeInterval1970);
//        
//        //将一个时间转换成时间戳，此时间戳是以现在为标准
//        NSTimeInterval timeIntervalnow = [[NSDate date]timeIntervalSinceNow];
//        NSLog(@"timeInterval = %f",timeIntervalnow);
//        
//        //2.日期的早晚比较
//        NSDate *dateNow = [NSDate date];
//        NSDate *anHourAgo = [dateNow dateByAddingTimeInterval:-3600];
//        
//        //判断两个日期是否相等
//        if ([dateNow isEqualToDate:anHourAgo]) {
//            NSLog(@"dateNow == anHourAgo");
//        }
//        
//        //判断两个日期的先后,返回较早的日期
//        NSDate *date6 = [dateNow earlierDate:anHourAgo];
//        if ([date6 isEqualToDate:dateNow]) {
//            NSLog(@"较早的时间是dateNow");
//        }
//        else
//        {
//            NSLog(@"较早的时间是anHourAgo");
//        }
//        
//        //判断两个日期的先后，返回较晚日期
//        NSDate *date7 = [anHourAgo laterDate:dateNow];
//        if ([date7 isEqualToDate:dateNow]) {
//            NSLog(@"较晚的时间是dateNow");
//        }
//        else
//        {
//            NSLog(@"较晚的时间是anhourAgo");
//        }
//        NSLog(@"%@",date7);
//        
//        //比较两个日期的早晚也可以使用我们之前学过的compare
//        NSComparisonResult comparisonResult =  [dateNow compare:anHourAgo];
//        switch (comparisonResult) {
//            case 1:
//                NSLog(@"dateNoe < anHourAgo");
//                break;
//            case 0:
//                NSLog(@"dateNow = anHourAgo");
//                break;
//            case -1:
//                NSLog(@"dateNow > anHourAgo");
//                break;
//                
//            default:
//                break;
//        }
//        
//        /*NSCalendar
//        
//         我们通过NSTimeInterval 创建一个时间很方便，但很不直观，Foundation框架为此为我们提供了NSCalendar,NSCalendar由更自然地日期组成，例如日，月，星期，可以使用NSDateCompinents和NSCalendar来创建个NSDate对象。
//         
//        */
//        NSCalendar *currentCalendar = [NSCalendar currentCalendar];
//        NSDateComponents *components = [[NSDateComponents alloc]init];
//        NSLog(@"currentCalent = %@",currentCalendar);
//        components.year = 2015;
//        components.month = 12;
//        components.day = 14;
//        components.hour = 22;
//        components.minute = 46;
//        components.second = 56;
//        
//        //输出日期的小时减8了
//        NSDate *date10 = [currentCalendar dateFromComponents:components];
//        NSLog(@"%@",date10);
//        
//        //NSTimeZone
//        //处理日期和时间经常遇到的一个问题就是时区。Foundation框架提供了NSTimeZone来指定地区日历对象的时区。
//        
////        列出所有时区
//        NSArray *array =  [NSTimeZone knownTimeZoneNames];
////        NSLog(@"array == %@",array);
//        
//        //可以指定名称参数创建一个时区
//        NSTimeZone *timeZone1 = [NSTimeZone timeZoneWithName:@"Asia\Tokyo"];
//        
//        //可以指定时区缩写创建一个时区
//        NSTimeZone *timeZone2 = [NSTimeZone timeZoneWithAbbreviation:@"PRC"];
//        
//        //如何将NSDate 装换成NSString?NSDateFormatter默认装换为本地区时间
//        NSDateFormatter *dateFormatter = [NSDateFormatter new];
//
//        设置时区(默认时区)
//        dateFormatter.timeZone = [NSTimeZone systemTimeZone];
//
//        //设置时间输出格式
//        [dateFormatter setDateFormat:@"yyyy年MM月dd日 aa HH时mm分ss秒"];
//
//        
//        NSString *str2 = [dateFormatter stringFromDate:date10];
//        NSLog(@"%@",str2);
//        
//        //将时间的类型的字符串转化成日期
//        
        NSString *string1  = @"2015-12-17 17:08:08";
        [Tool handleDate:string1];
        
//        
//        [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
//        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//        //这里得到的时间是GMT时间
//        NSDate *date11 = [dateFormatter dateFromString:string1];
//        NSLog(@"%@",date11);
//
//        NSTimeInterval timeInterval =  date11.timeIntervalSinceReferenceDate;
//        NSLog(@"距今已经%f秒了",-timeInterval);
//        
////        NSLog(@"%ld",[currentCalendar component:currentCalendar fromDate:date11]);
//        NSLog(@"%f",[[NSDate date] timeIntervalSince1970 ]);
//        
////        
////        NSDate *datee = [NSDate date];
////        NSCalendar *calendarr = [NSCalendar currentCalendar];
////        NSCalendarUnit *unti = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
////        NSInteger datequer = [calendarr component:unti fromDate:datee];
////        NSLog(@"%ld",datequer);
////        NSLog(@"%@ ",datee);
////        NSLog(@"%@",[NSCalendar currentCalendar]);
//        
//        
//        NSDate *date = [NSDate date];
//        NSCalendar *calen = [NSCalendar currentCalendar];
//        NSCalendarUnit *unti = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
//        NSCalendarUnit *unti1 = NSCalendarUnitSecond;
//         NSDateComponents *datecom =  [calen components:unti1 fromDate:date11 toDate:date options:0];
        
        
        
        
//        
//        NSCalendar *calentt = [NSCalendar currentCalendar];
//        
//        NSDate *date00 = [calen dateFromComponents:datecom];
////        NSLog(@"year:%d,month:%d,day:%d,hour:%d,minute:%d,second:%d",datecom.year,datecom.month,datecom.day,datecom.hour,datecom.minute,datecom.second);
//        NSLog(@"%ld",datecom.second);
//        NSLog(@"%@",date);
//        NSLog(@"%@",date00);
    }
    return 0;
}
