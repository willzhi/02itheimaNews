//
//  HMApiManager.m
//  01-网易新闻
//
//  Created by HM on 16/4/5.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "HMApiManager.h"
#import "HMHTTPManager.h"
@implementation HMApiManager
+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static HMApiManager *manager;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc]init];
    });
    
    return manager;
}

- (void)requestHeadLineWithComletionHandle:(void (^)(id, NSError *))comletionHandle {
    // 调用网络请求方法
    [[HMHTTPManager sharedManager] GET:@"ad/headline/0-4.html" parameters:nil comletionHandle:comletionHandle];
}
@end
