//
//  HMHTTPManager.m
//  01-网易新闻
//
//  Created by HM on 16/4/5.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "HMHTTPManager.h"
#define HMBaseURL [NSURL URLWithString:@"http://c.m.163.com/nc/"]
@implementation HMHTTPManager
+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    static HMHTTPManager *manager;
    dispatch_once(&onceToken, ^{
        
        manager = [[self alloc] initWithBaseURL:HMBaseURL];
    });
    
    return manager;
}

- (void)GET:(NSString *)path parameters:(id)parasmeters comletionHandle:(void (^)(id, NSError *))comletionHandle {
    // 自己定义的方法，然后要去调用封装好的方法
    [self GET:path parameters:parasmeters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        comletionHandle(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        comletionHandle(nil, error);
    }];
    
}

- (void)POST:(NSString *)path parameters:(id)parasmeters comletionHandle:(void (^)(id, NSError *))comletionHandle {
    // 自己定义的方法，然后要去调用封装好的方法
    [self POST:path parameters:parasmeters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        comletionHandle(responseObject, nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        comletionHandle(nil, error);
    }];
}
@end
