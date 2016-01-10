//
//  Tool.h
//  oc_07_02
//
//  Created by ibokan on 15/12/17.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Tool : NSObject


//dateString 格式为：2015-12-17 08:08:08
+(NSString *)handleDate:(NSString *)dateString;

/*
 
 传入时间与现在时间 差距60秒以内，输出@“刚刚”
                差距一个小时以内，输出@“xx分钟前”
                差距1-24小时，输出@“xx小时前”
                差距大于一天，输出@“xx天前”
                差距大于30天，输出@“xx个月前”
                差距大于365天，输出@“完整日期”
 
 */



@end
