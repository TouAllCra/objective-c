//
//  CachedDownloadManager.h
//  oc_cacheDown(缓存)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

/* -----------CachedDownloadManager-------------- */

@interface CachedDownloadManager : NSObject
<CacheItemDelegate> {
@public
    id<CachedDownloadManagerDelegate>  delegate;
@private
    //记录缓存数据的字典
    NSMutableDictionary                *cacheDictionary;
    //缓存的路径
    NSString                           *cacheDictionaryPath;
}


@property (nonatomic, assign)
id<CachedDownloadManagerDelegate> delegate;

@property (nonatomic, copy)
NSMutableDictionary *cacheDictionary;

@property (nonatomic, retain)
NSString *cacheDictionaryPath;


/* 保持缓存字典 */

- (BOOL) saveCacheDictionary;

/* 公有方法：下载 */

- (BOOL)         download:(NSString *)paramURLAsString
   urlMustExpireInSeconds:(NSTimeInterval)paramURLMustExpireInSeconds
updateExpiryDateIfInCache:(BOOL)paramUpdateExpiryDateIfInCache;

/* -------------------------- */

@end


@protocol CacheItemDelegate <NSObject>
//下载成功执行该方法
- (void) cacheItemDelegateSucceeded
:(CacheItem *)paramSender
withRemoteURL:(NSURL *)paramRemoteURL
withAboutToBeReleasedData:(NSData *)paramAboutToBeReleasedData;

//下载失败执行该方法
- (void) cacheItemDelegateFailed
:(CacheItem *)paramSender
remoteURL:(NSURL *)paramRemoteURL
withError:(NSError *)paramError;

@end
