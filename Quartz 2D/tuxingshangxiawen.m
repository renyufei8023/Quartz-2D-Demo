//
//  tuxingshangxiawen.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "tuxingshangxiawen.h"

@implementation tuxingshangxiawen


- (void)drawRect:(CGRect)rect {
    
    //清空上下文有两种方式：1，重写之前所有的属性或者把有属性的放到后面去渲染2，刚开始的时候先去保存一下上下文，在需要清空的地方把上下文信息清空即可
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ref);//保存上下文
    CGContextMoveToPoint(ref, 100, 100);
    CGContextAddLineToPoint(ref, 200, 200);
    
    CGContextSetLineWidth(ref, 13);
    CGContextSetLineCap(ref, kCGLineCapButt);
    CGContextStrokePath(ref);
    
    CGContextRestoreGState(ref);//清空上下文
    CGContextMoveToPoint(ref, 40, 200);
    CGContextAddLineToPoint(ref, 80, 100);
    //清空之前的属性，只需重新设置一下即可
//    CGContextSetLineWidth(ref, 5);
    
    CGContextStrokePath(ref);
}


@end
