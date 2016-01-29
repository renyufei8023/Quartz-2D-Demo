//
//  sanjiaoxing.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "sanjiaoxing.h"

@implementation sanjiaoxing

- (void)drawRect:(CGRect)rect {
    
    //获取当前的上下文
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    //绘制三角形
    //设置起点
    CGContextMoveToPoint(ref, 20, 100);
    //设置第二个点
    CGContextAddLineToPoint(ref, 40, 300);
    //设置第三个点
    CGContextAddLineToPoint(ref, 200, 200);
    //关闭上下文
    CGContextClosePath(ref);
    //渲染到屏幕上
    CGContextStrokePath(ref);
}


@end
