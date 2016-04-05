//
//  HMHTTPManager.h
//  01-网易新闻
//
//  Created by HM on 16/4/5.
//  Copyright © 2016年 HM. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>

@interface HMHTTPManager : AFHTTPSessionManager
+ (instancetype)sharedManager;

/**
 *  自定义GET请求
 *
 *  @param path            路径
 *  @param parasmeters     参数
 *  @param comletionHandle 完成回调
 */
- (void)GET:(NSString *)path parameters:(id)parasmeters comletionHandle:(void(^)(id responseObject, NSError *error))comletionHandle;

/**
 *  自定义POST请求
 *
 *  @param path            路径
 *  @param parasmeters     参数
 *  @param comletionHandle 完成回调
 */
- (void)POST:(NSString *)path parameters:(id)parasmeters comletionHandle:(void(^)(id responseObject, NSError *error))comletionHandle;
@end
