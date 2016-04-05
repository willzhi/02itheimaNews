//
//  HMHeadLine.m
//  01-网易新闻
//
//  Created by HM on 16/4/5.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "HMHeadLine.h"
#import "HMApiManager.h"
#import <YYModel/YYModel.h>
@implementation HMHeadLine

+ (void)headLineWithCompletion:(void (^)(NSArray *))completion {
    [[HMApiManager sharedManager]requestHeadLineWithComletionHandle:^(NSDictionary * responseObject, NSError *error) {
        // 判断是否请求成功
        if (responseObject) {
            // 请求成功
            NSString *key = responseObject.keyEnumerator.nextObject;
            
            //取出数组
            NSArray *data = responseObject[key];
            // 把数组(字典)转成模型
            /**
             yy_modelArrayWithClass 就是模型类
             json 就是返回的json数据
             */
            NSArray *headLines = [NSArray yy_modelArrayWithClass:self json:data];
            
            completion(headLines);
        }else {
            completion(nil);
        }
    }];
}
@end
