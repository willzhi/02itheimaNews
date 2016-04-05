//
//  HMHeadLineController.m
//  01-网易新闻
//
//  Created by HM on 16/4/5.
//  Copyright © 2016年 HM. All rights reserved.
//

#import "HMHeadLineController.h"
#import "HMHeadLine.h"
@interface HMHeadLineController ()
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;

@end

@implementation HMHeadLineController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupCollectionView];
    [self loadData];
}

// 加载数据
- (void)loadData {
    [HMHeadLine headLineWithCompletion:^(NSArray *headline) {
        NSLog(@"%@",headline);
    }];
   
}

- (void)setupCollectionView {
    self.collectionView.backgroundColor = [UIColor whiteColor];
    // 设置Item size
    self.layout.itemSize = self.collectionView.bounds.size;
    // 设置滚动方向
    self.layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    // 设置间隔
    self.layout.minimumLineSpacing = 0;
    // 关闭滚动条
    self.collectionView.showsHorizontalScrollIndicator = NO;
    // 打开分页效果
    self.collectionView.pagingEnabled = YES;
    // 关闭弹簧效果
    self.collectionView.bounces = NO;
}

#pragma mark - 数据源方法
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    // 设置背景色
    cell.backgroundColor =  [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    
    return cell;
}

@end
