//
//  huitulujing.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "huitulujing.h"

@implementation huitulujing


- (void)drawRect:(CGRect)rect {
    
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    //创建一条直线绘图的路径
    //凡是通过Quartz2D中带有create/copy/retain方法创建出来的值都必须要释放
    CGMutablePathRef path = CGPathCreateMutable();
    
    CGPathMoveToPoint(path, NULL, 20, 20);
    CGPathAddLineToPoint(path, NULL, 200, 300);
    CGContextAddPath(ref, path);
    CGContextStrokePath(ref);
    
//    CGContextMoveToPoint(ref, 20, 20);
//    CGContextAddLineToPoint(ref, 200, 200);
//    CGContextStrokePath(ref);
    
    CGMutablePathRef path1 = CGPathCreateMutable();
    CGPathAddEllipseInRect(path1, NULL, CGRectMake(50, 50, 100, 100));
    CGContextAddPath(ref, path1);
    CGContextStrokePath(ref);
    
    //提示：如果是画线，那么就创建一条路径（path）用来保存画线的绘图信息，如果又要重新画一个圆，那么就可以创建一条新的路径来专门保存画圆的绘图信息。
    //释放前面创建的两条路径
    CGPathRelease(path);//第一种方法
    CFRelease(path);//第二种方法
    
    
    /**
     *  画一个四边形
     */
    //第一冲方式
    //CGContextRef ctx = UIGraphicsGetCurrentContext();
    //CGContextMoveToPoint(ctx, 0, 20);
    //CGContextAddLineToPoint(<#CGContextRef c#>, <#CGFloat x#>, <#CGFloat y#>);
    //CGContextAddLineToPoint(<#CGContextRef c#>, <#CGFloat x#>, <#CGFloat y#>);
    //CGContextAddLineToPoint(<#CGContextRef c#>, <#CGFloat x#>, <#CGFloat y#>);
    
    //第二种方式
    CGContextAddRect(ref, CGRectMake(20, 20, 200, 100));
    CGContextStrokePath(ref);
    
    //第三种方式
    //实心
    CGContextStrokeRect(ref, CGRectMake(20, 20, 200, 100));
    //空心
    CGContextFillRect(ref, CGRectMake(20, 20, 200, 100));
    
    //第四种方式
    UIRectFill(CGRectMake(20, 20, 200, 100));
    
    //第五种方式
    CGContextMoveToPoint(ref, 20, 20);
    CGContextAddLineToPoint(ref, 100, 200);
    CGContextSetLineWidth(ref, 50);
    CGContextStrokePath(ref);
    
}


@end
