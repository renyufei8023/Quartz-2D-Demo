//
//  sibianxing.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "sibianxing.h"

@implementation sibianxing


- (void)drawRect:(CGRect)rect {
    
    
    CGContextRef ref = UIGraphicsGetCurrentContext();
    //画一个四边形
    CGContextAddRect(ref, CGRectMake(20, 20, 150, 100));
    // 如果要设置绘图的状态必须在渲染之前
    //    CGContextSetRGBStrokeColor(ctx, 1.0, 0, 0, 1.0);
    // 绘制什么类型的图形(空心或者实心).就要通过什么类型的方法设置状态
    //    CGContextSetRGBFillColor(ctx, 1.0, 0, 0, 1.0);
    // 调用OC的方法设置绘图的颜色
    //    [[UIColor purpleColor] setFill];
    //    [[UIColor blueColor] setStroke];
    // 调用OC的方法设置绘图颜色(同时设置了实心和空心)
    //    [[UIColor greenColor] set];
    [[UIColor redColor]set];
    [[UIColor grayColor]setFill];
    //渲染到屏幕上
    CGContextStrokePath(ref);
//    CGContextClosePath(ref);
    [self huayuanhu2];
}

- (void)huayuan
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    //该方法可以画圆弧
    CGContextAddArc(ref, 100, 100, 50, 0, 2*M_PI, 0);
    
    CGContextFillPath(ref);
}

- (void)huayuan2
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    //只能画圆
    CGContextAddEllipseInRect(ref, CGRectMake(150, 150, 80, 80));
    
    [[UIColor greenColor]set];
    CGContextStrokePath(ref);
}

- (void)tuoyuan
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    //画椭圆
    CGContextAddEllipseInRect(ref, CGRectMake(100, 300, 100, 200));
    [[UIColor purpleColor]set];
    CGContextStrokePath(ref);
}

- (void)huayuanhu
{
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    //画圆弧
    CGContextAddArc(ref, 200, 200, 50, M_PI_2, M_PI, 0);
    
    CGContextClosePath(ref);
    
    CGContextFillPath(ref);
}


- (void)huayuanhu2
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //画半圆的话需要加上两条线，
    CGContextMoveToPoint(ctx, 100, 100);
    CGContextAddLineToPoint(ctx, 100, 150);
    // 画圆弧
    CGContextAddArc(ctx, 100, 100, 50, M_PI_2, M_PI, 0);
    //    CGContextAddArc(ctx, 100, 100, 50, -M_PI, M_PI_2, 1);
    
    // 关闭路径
    CGContextClosePath(ctx);
    [[UIColor brownColor]set];
    
    
    // 3.渲染 (注意, 画线只能通过空心来画)
    CGContextFillPath(ctx);
    //    CGContextStrokePath(ctx);
}

@end
