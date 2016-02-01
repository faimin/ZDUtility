//
//  UIImage+ZDUtility.h
//  ZDUtility
//
//  Created by 符现超 on 15/12/26.
//  Copyright © 2015年 Fate.D.Saber. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZDUtility)

- (BOOL)hasAlphaChannel;
- (UIImage *)addAlphaChannle;

///限制最大边的长度为多少,然后进行等比缩放
- (UIImage *)scaleWithLimitLength:(CGFloat)length;
/// Same as 'scale to fill' in IB.
- (UIImage *)scaleToFillSize:(CGSize)newSize;
/// Preserves aspect ratio. Same as 'aspect fit' in IB.
- (UIImage *)scaleToFitSize:(CGSize)newSize;
- (UIImage *)resizeToSize:(CGSize)newSize;
- (UIImage *)thumbnailWithSize:(int)imageWidthOrHeight;

- (UIImage *)fixOrientation;

/// 根据bundle中的文件名读取图片,返回无缓存的图片
+ (UIImage *)imageWithFileName:(NSString *)name;
+ (UIImage *)imageWithColor:(UIColor *)color;

@end
