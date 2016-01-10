//
//  CacheIntem.h
//  oc_cacheDown(缓存)
//
//  Created by ibokan on 15/12/8.
//  Copyright © 2015年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

/* ---------缓存项-------------- */

@interface CacheItem : NSObject {
@public
    id<CacheItemDelegate> delegate;
    //web地址
    NSString              *remoteURL;
@private
    //是否正在下载
    BOOL                  isDownloading;
    //NSMutableData对象
    NSMutableData         *connectionData;
    //NSURLConnection对象
    NSURLConnection       *connection;
}

/* -------------------------- */

@property (nonatomic, retain) id<CacheItemDelegate> delegate;
@property (nonatomic, retain) NSString  *remoteURL;
@property (nonatomic, assign) BOOL      isDownloading;
@property (nonatomic, retain) NSMutableData *connectionData;
@property (nonatomic, retain) NSURLConnection *connection;

/* ----------开始下载方法----------- */

- (BOOL) startDownloadingURL:(NSString *)paramRemoteURL;

@end
