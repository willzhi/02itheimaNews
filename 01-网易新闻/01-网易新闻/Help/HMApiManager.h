//
//  HMApiManager.h
//  01-网易新闻
//
//  Created by HM on 16/4/5.
//  Copyright © 2016年 HM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMApiManager : NSObject
+ (instancetype)sharedManager;
/**
 *  请求头条数据
 *
 *  @param comletionHandle 完成回调
 */
- (void)requestHeadLineWithComletionHandle:(void(^)(id responseObject, NSError *error))comletionHandle;
@end
