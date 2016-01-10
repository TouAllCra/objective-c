//
//  main.m
//  oc_cacheDown(缓存)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CachedDownloadManager.h"
#import "CacheIntem.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *documentsDirectory =
        [self documentsDirectoryWithTrailingSlash:YES];
        //生产缓存字典的路径
        cacheDictionaryPath =
        [[documentsDirectory
          stringByAppendingString:@"CachedDownloads.dic"] retain];
        //创建一个NSFileManager实例
        NSFileManager *fileManager = [[NSFileManager alloc] init];
        //判断是否存在缓存字典的数据
        if ([fileManager
             fileExistsAtPath:self.cacheDictionaryPath] == YES){
            NSLog(self.cacheDictionaryPath);
            //加载缓存字典中的数据
            NSMutableDictionary *dictionary =
            [[NSMutableDictionary alloc]
             initWithContentsOfFile:self.cacheDictionaryPath];
            
            cacheDictionary = [dictionary mutableCopy];
            
            [dictionary release];
            
            //移除没有下载完成的缓存数据
            [self removeCorruptedCachedItems];
            
        } else {
            //创建一个新的缓存字典
            NSMutableDictionary *dictionary =
            [[NSMutableDictionary alloc] init];
            
            cacheDictionary = [dictionary mutableCopy];
            
            [dictionary release];
            
        }
        
        [fileManager release];
    }
    return 0;
}
