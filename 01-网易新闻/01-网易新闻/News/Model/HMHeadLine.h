//
//  HMHeadLine.h
//  01-网易新闻
//
//  Created by HM on 16/4/5.
//  Copyright © 2016年 HM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HMHeadLine : NSObject
/**
 *  图片路径
 */
@property (nonatomic, copy) NSString *imgsrc;
/**
 *  标题
 */
@property (nonatomic, copy) NSString *title;

/**
 *  请求头条数据
 *
 *  @param completion 完成回调
 */
+ (void)headLineWithCompletion:(void(^)(NSArray *headline))completion;
@end
