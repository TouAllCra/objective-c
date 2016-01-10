//
//  Tool.m
//  oc_07_02
//
//  Created by ibokan on 15/12/17.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import "Tool.h"

@implementation Tool

+(void)handleDate:(NSString *)dateString
{
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:dateString];
    NSDate *currentDate = [NSDate date];
    NSCalendar *calen = [NSCalendar currentCalendar];
    NSCalendarUnit *unti = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *datecom =  [calen components:unti fromDate:date toDate:currentDate options:0];
    if (datecom.year < 1 && datecom.month > 30) {
        NSLog(@"%ld个月前",datecom.month);
    }
    else if (datecom.month < 30 && datecom.day > 1)
    {
        NSLog(@"%ld日前",datecom.day);
    }
    else if (datecom.day < 1 && datecom.minute > 1)
    {
        NSLog(@"%ld分钟前",datecom.minute);
    }
    else if (datecom.minute < 1 && datecom.second > 0)
    {
        NSLog(@"%ld秒前",datecom.second);
    }
    else
    {
        NSLog(@"%@",[dateFormatter stringFromDate:date]);
    }
    NSLog(@"year:%ld,month:%ld,day:%ld,hour:%ld,minute:%ld,second:%ld",datecom.year,datecom.month,datecom.day,datecom.hour,datecom.minute,datecom.second);
    
}




@end
