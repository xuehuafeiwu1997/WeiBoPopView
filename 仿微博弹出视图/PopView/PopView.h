//
//  PopView.h
//  仿微博弹出视图
//
//  Created by 许明洋 on 2019/9/27.
//  Copyright © 2019 许明洋. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopView : UIView

/**
 弹出视图
 
 @param imgs 图片名字集合
 @param titles 文字集合
 @param selectBlock 点击Item的回调
 */
+ (void)showWithImages:(NSArray *)imgs titles:(NSArray *)titles selectBlock:(void (^)(NSInteger index))selectBlock;
@end

NS_ASSUME_NONNULL_END
