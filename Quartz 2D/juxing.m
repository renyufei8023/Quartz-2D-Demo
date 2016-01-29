//
//  juxing.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "juxing.h"

@implementation juxing

- (void)drawRect:(CGRect)rect {
    
    //画四边形
    //获取图形上下文
    CGContextRef ctx=UIGraphicsGetCurrentContext();
    //矩阵操作
    //注意点：设置矩阵操作必须要在添加绘图信息之前
    //旋转45度  旋转的时候，是整个layer都旋转了。
    CGContextRotateCTM(ctx, M_PI_4);
    
    //矩阵操作
    //注意点：设置矩阵操作必须要在添加绘图信息之前
    //缩放，x方向缩放0.5倍，y方向缩放1.5倍
    CGContextScaleCTM(ctx, 0.5, 0.5);
    
    //平移，x方向移动50，y方向移动100
    CGContextTranslateCTM(ctx, 140, 100);
    //绘图
    CGContextAddRect(ctx, CGRectMake(150, 100, 100, 100));
    //渲染
    CGContextStrokePath(ctx);

}


@end
