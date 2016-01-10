//
//  main.m
//  oc_05(歌词)
//
//  Created by ibokan on 15/12/14.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSMutableArray *singInformation = [NSMutableArray arrayWithObjects:
//        @"[ti:如果没有你]",
//        @"[ar:任贤齐]",
//        @"[al:如果没有你]",
//        @"[by:baiyishg]",
//        @"[00:01.00]任贤齐 － 如果没有你",
//        @"[00:05.00]陈湘制作QQ：123154129",
//        @"[00:20.00]www.5ilrc.com",
//        @"[00:25.85]一直把你的手握在手里",
//        @"[00:33.63]舍不得你的我要远行",
//        @"[00:40.61]这是我唯一心愿",
//        @"[00:43.09]就是能陪你到永远",
//        @"[00:47.35]我知道会有一天",
//        @"[00:52.92]如果没有你",
//        @"[00:56.30]如果没有你提醒",
//        @"[01:01.12]在混乱的世界里",
//        @"[01:03.14]会不会淹没了我自己",
//        @"[01:07.03]如果没有你",
//        @"[01:10.35]如果没有你相信",
//        @"[01:15.22]我能不能依旧如此坚定",
//        @"[01:22.20]陈湘制作QQ：123154129",
//        @"[01:43.51]外套总是留着你的香气",
//        @"[01:50.21]彷佛你还在我的怀里",
//        @"[01:58.35]在耳边你的叮咛",
//        @"[02:00.69]总能让我小心翼翼",
//        @"[02:05.24]我的爱请你放心",
//        @"[02:10.67]如果没有你",
//        @"[02:14.00]如果没有你提醒",
//        @"[02:18.45]在悬崖的边缘",
//        @"[02:20.51]我会不会迷失了我自己",
//        @"[02:24.72]如果没有你",
//        @"[02:28.05]如果没有你相信",
//        @"[02:32.64]我会不会依旧如此坚定",
//        @"[02:39.52]感谢老天让我遇见你",
//        @"[02:46.97]生命因此充满惊喜",
//        @"[02:52.26]我相信会有一种美丽",
//        @"[02:58.96]能形容爱情",
//        @"[03:02.49]我最爱的你",
//        @"[03:09.94]如果没有你",
//        @"[03:13.97]如果没有你提醒",
//        @"[03:18.32]在混乱的世界里",
//        @"[03:20.62]会不会淹没了我自己",
//        @"[03:24.74]如果没有你",
//        @"[03:28.02]如果没有你相信",
//        @"[03:32.37]我能不能依旧如此坚定",
//        @"[03:39.21]如果没有你",
//        @"[03:42.44]如果没有你提醒",
//        @"[03:46.94]在悬崖的边缘",
//        @"[03:48.67]我会不会迷失了我自己",
//        @"[03:53.03]如果没有你",
//        @"[03:56.31]如果没有你相信",
//        @"[04:00.95]我能不能依旧如此坚定",
//        @"[04:07.36]陈湘制作QQ：123154129",
//        @"[04:11.68]www.5ilrc.com",
//                                           nil];
        
        
//        NSMutableArray *singInformation = [NSMutableArray arrayWithObjects:@"[ti:如果没有你][ar:任贤齐][al:如果没有你][by:baiyishg][00:01.00]任贤齐 － 如果没有你[00:05.00]陈湘制作QQ：123154129[00:20.00]www.5ilrc.com[00:25.85]一直把你的手握在手里[00:33.63]舍不得你的我要远行[00:40.61]这是我唯一心愿[00:43.09]就是能陪你到永远[00:47.35]我知道会有一天[00:52.92]如果没有你[00:56.30]如果没有你提醒[01:01.12]在混乱的世界里[01:03.14]会不会淹没了我自己[01:07.03]如果没有你        [01:10.35]如果没有你相信[01:15.22]我能不能依旧如此坚定[01:22.20]陈湘制作QQ：123154129[01:43.51]外套总是留着你的香气[01:50.21]彷佛你还在我的怀里[01:58.35]在耳边你的叮咛[02:00.69]总能让我小心翼翼[02:05.24]我的爱请你放心[02:10.67]如果没有你[02:14.00]如果没有你提醒[02:18.45]在悬崖的边缘[02:20.51]我会不会迷失了我自己[02:24.72]如果没有你[02:28.05]如果没有你相信[02:32.64]我会不会依旧如此坚定[02:39.52]感谢老天让我遇见你[02:46.97]生命因此充满惊喜[02:52.26]我相信会有一种美丽[02:58.96]能形容爱情[03:02.49]我最爱的你[03:09.94]如果没有你[03:13.97]如果没有你提醒[03:18.32]在混乱的世界里[03:20.62]会不会淹没了我自己[03:24.74]如果没有你[03:28.02]如果没有你相信[03:32.37]我能不能依旧如此坚定[03:39.21]如果没有你[03:42.44]如果没有你提醒[03:46.94]在悬崖的边缘[03:48.67]我会不会迷失了我自己[03:53.03]如果没有你[03:56.31]如果没有你相信[04:00.95]我能不能依旧如此坚定[04:07.36]陈湘制作QQ：123154129[04:11.68]www.5ilrc.com", nil];
//        
//        NSLog(@"%ld",singInformation.count);
//        [singInformation removeObject:@"["];
//        NSLog(@"%@",singInformation);
//        NSArray *array = [NSArray arrayWithObjects:@"wendy",@"andy",@"tom",@"test", nil];
//        NSIndexSet *index = [array indexesOfObjectsWithOptions:NSEnumerationReverse passingTest: ^ BOOL (id tr, NSUInteger index,BOOL *te){
//            
//            NSString *s = (NSString *)tr;
//            if([s isEqualToString:@"d"]){
//                return YES;
//            }
//            return NO;
//        }];
//        
//        
//        NSLog(@"%@",index);
//[ti:如果没有你][ar:任贤齐][al:如果没有你][by:baiyishg]
        
        NSString *string = [NSMutableString new];
        string = @" [00:01.00]任贤齐 － 如果没有你[00:05.00]陈湘制作QQ：123154129[00:20.00]www.5ilrc.com[00:25.85]一直把你的手握在手里[00:33.63]舍不得你的我要远行[00:40.61]这是我唯一心愿[00:43.09]就是能陪你到永远[00:47.35]我知道会有一天[00:52.92]如果没有你[00:56.30]如果没有你提醒[01:01.12]在混乱的世界里[01:03.14]会不会淹没了我自己[01:07.03]如果没有你        [01:10.35]如果没有你相信[01:15.22]我能不能依旧如此坚定[01:22.20]陈湘制作QQ：123154129[01:43.51]外套总是留着你的香气[01:50.21]彷佛你还在我的怀里[01:58.35]在耳边你的叮咛[02:00.69]总能让我小心翼翼[02:05.24]我的爱请你放心[02:10.67]如果没有你[02:14.00]如果没有你提醒[02:18.45]在悬崖的边缘[02:20.51]我会不会迷失了我自己[02:24.72]如果没有你[02:28.05]如果没有你相信[02:32.64]我会不会依旧如此坚定[02:39.52]感谢老天让我遇见你[02:46.97]生命因此充满惊喜[02:52.26]我相信会有一种美丽[02:58.96]能形容爱情[03:02.49]我最爱的你[03:09.94]如果没有你[03:13.97]如果没有你提醒[03:18.32]在混乱的世界里[03:20.62]会不会淹没了我自己[03:24.74]如果没有你[03:28.02]如果没有你相信[03:32.37]我能不能依旧如此坚定[03:39.21]如果没有你[03:42.44]如果没有你提醒[03:46.94]在悬崖的边缘[03:48.67]我会不会迷失了我自己[03:53.03]如果没有你[03:56.31]如果没有你相信[04:00.95]我能不能依旧如此坚定[04:07.36]陈湘制作QQ：123154129[04:11.68]www.5ilrc.com";

        
//        NSMutableArray *arraySing = [string  componentsSeparatedByString:@"["];
//        
//        NSLog(@"%@",arraySing);
        
        NSString *string1 = @"[";
        NSString *string2 = @"]";
//        char s = '[';
        NSRange range = [string rangeOfString:string1];
        NSRange range2 = [string rangeOfString:string2];
//        NSLog(@"%ld,%ld",range.length,range.location);
//        NSLog(@"%ld,%ld",range2.length,range2.location);
//        NSRange lastRange = NSMakeRange(range.location, range2.location);
//        NSArray *testString = [NSString stringWithString:@"000"];
//         NSString *singsing = [string substringWithRange:lastRange];
//        string = [string stringByReplacingCharactersInRange:lastRange withString:@" "];
       
//        NSLog(@"%@",singsing);
//        
//        [string ]
//        NSLog(@"%@",testString);
//        testString = @" ";
//        NSLog(@"testString = %@",testString);
//        [string stringByReplacingCharactersInRange:lastRange withString:@"00"];
//         string = [string stringByReplacingCharactersInRange:NSMakeRange(range.location, range2.location) withString:@" "];
//        NSLog(@"%@",string);
//        while (range.length != 0) {
////            NSRange range = [string rangeOfString:string1];
////            NSRange range2 = [string rangeOfString:string2];
//            NSRange lastRange = NSMakeRange(range.location, range2.location);
////            NSString *singsing = [string substringWithRange:lastRange];
////            NSLog(@"%@",singsing);
//            string = [string stringByReplacingCharactersInRange:lastRange withString:@" "];
//            
//        }
//        NSString *string1 = @"[";
//        NSString *string2 = @"]";
        for ( int i = 10; i > 0; i--) {

            NSString *string1 = @"[";
            NSString *string2 = @"]";
            NSRange range = NSMakeRange(0, 0);
            range = [string rangeOfString:string1];
            NSRange range2 = NSMakeRange(0, 0);
            range2 = [string rangeOfString:string2];
            NSRange last = NSMakeRange(range.location, range2.location);
//            NSLog(@"%@",[string substringWithRange:last]);
            string = [string stringByReplacingCharactersInRange:last withString:@" "];
//            NSLog(@"%@",string);
        }

        NSLog(@"%@",string);
//        NSLog(@"%@",string);
        
        
//        NSInteger x,y;
//        NSArray
        
        
        
//        if ([string ]) {
//
//        }
//        
////        NSRange singRange = [string rangeOfString:@"]"];
////        NSLog(@"%@",singRange);
        
//        for (int i = 0; i < singInformation.count; i++) {
//            [singInformation removeObject:@"["];
//            NSLog(@"%@",singInformation[i]);
//        }
        
        
    }
    return 0;
}
