//
//  caijianyuan.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "caijianyuan.h"

@implementation caijianyuan


- (void)drawRect:(CGRect)rect {
    
    
//    CGContextRef ref = UIGraphicsGetCurrentContext();
//    
//    CGContextAddEllipseInRect(ref, CGRectMake(100, 100, 100, 100));
//    
//    //指定上下文可以显示内容的范围就是圆的范围
//    CGContextClip(ref);
//    UIImage *image = [UIImage imageNamed:@"me.jpg"];
//    [image drawAtPoint:CGPointMake(100, 100)];
    
    [self huasanjiaoxing];
}

- (void)huasanjiaoxing
{
    //画三角形，以便以后指定可以显示图片的范围
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(ref, 100, 100);
    CGContextAddLineToPoint(ref, 60, 150);
    CGContextAddLineToPoint(ref, 140, 150);
    CGContextClosePath(ref);
    
    CGContextClip(ref);
    
    CGContextClip(ref);
    UIImage *image = [UIImage imageNamed:@"me.jpg"];
    [image drawAtPoint:CGPointMake(100, 100)];
}

@end
