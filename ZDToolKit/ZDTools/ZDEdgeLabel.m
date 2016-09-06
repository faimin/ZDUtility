//
//  ZDEdgeLabel.m
//  ZDToolKitDemo
//
//  Created by Zero.D.Saber on 16/9/6.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import "ZDEdgeLabel.h"

@interface ZDEdgeLabel ()

@end

@implementation ZDEdgeLabel

- (void)setZdAlignment:(ZDAlignment)zdAlignment {
    _zdAlignment = zdAlignment;
    [self setNeedsDisplay];
}

#pragma mark - Change text frame
- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    if (!UIEdgeInsetsEqualToEdgeInsets(self.zd_edgeInsets, UIEdgeInsetsZero)) {
        // 1.先通过添加edge后计算出此时的rect
        UIEdgeInsets edgeInsets = self.zd_edgeInsets;
        CGRect newRect = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds, edgeInsets) limitedToNumberOfLines:numberOfLines];
        // 2.然后再去掉edge
        newRect.origin.x -= edgeInsets.left;
        newRect.origin.y -= edgeInsets.top;
        newRect.size.width += (edgeInsets.left + edgeInsets.right);
        newRect.size.height += (edgeInsets.top + edgeInsets.bottom);
        
        return newRect;
    }
    else {
        CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
        switch (self.zdAlignment) {
            case ZDAlignment_Top: {
                textRect.origin.y = bounds.origin.y;
                break;
            }
            case ZDAlignment_Bottom: {
                textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
                break;
            }
            case ZDAlignment_Middle:
            default: {
                break;
            }
        }
        return textRect;
    }
}

// 绘制文本
- (void)drawTextInRect:(CGRect)rect {
    if (!UIEdgeInsetsEqualToEdgeInsets(self.zd_edgeInsets, UIEdgeInsetsZero)) {
        // 3.再用通过textRectForBounds:方法计算出的rect，经过edge处理后获取到实际的rect，然后绘制到这个实际的rect上
        [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.zd_edgeInsets)];
    }
    else {
        CGRect realRect = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
        [super drawTextInRect:realRect];
    }
}

@end
