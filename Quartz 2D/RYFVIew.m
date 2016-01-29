//
//  RYFVIew.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "RYFVIew.h"

@implementation RYFVIew


- (void)drawRect:(CGRect)rect {
    
    //取的当前上下文
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    //设置起点
    CGContextMoveToPoint(ref, 100, 100);
    
    //设置终点
    CGContextAddLineToPoint(ref, 200, 200);
    
    //设置线的颜色
    CGContextSetRGBStrokeColor(ref, 0, 1.0, 0, 1.0);
    
    //设置线的宽度
    CGContextSetLineWidth(ref, 13);
    
    //设置线条起点和终点的样式为圆角
    CGContextSetLineCap(ref, kCGLineCapRound);
    
    //渲染（绘制出一条空心的线）
    CGContextStrokePath(ref);
    
    //第二条线
    CGContextMoveToPoint(ref, 50, 200);
    CGContextAddLineToPoint(ref, 300, 60);
    
    //设置第二条线的颜色
    [[UIColor redColor]set];
    
    //设置第二条线的宽度
    CGContextSetLineWidth(ref, 10);
    
    CGContextSetLineCap(ref, kCGLineCapButt);
    
    CGContextStrokePath(ref);
}


@end
