//
//  YYView.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "YYView.h"

@implementation YYView

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        //NSTimer一般用于定时的更新一些非界面上的数据,告诉多久调用一次
        //使用定时器,使用该定时器会出现卡顿的现象
        //        [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateImage) userInfo:nil repeats:YES];
        
        //两个定时器
        
        //第一个：
        
        //[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateImage) userInfo:nil repeats:YES];
        
        //说明： NSTimer一般用于定时的更新一些非界面上的数据,告诉多久调用一次
        
        //第二个：
        
        //CADisplayLink *display= [CADisplayLink displayLinkWithTarget:self selector:@selector(updateImage)];
        
        //[display addToRunLoop:[NSRunLoopmainRunLoop] forMode:NSDefaultRunLoopMode];
        
        //说明： CADisplayLink刷帧，默认每秒刷新60次。该定时器创建之后，默认是不会执行的，需要把它加载到消息循环中
        CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(updateImage)];
        [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    }
    return self;
}

- (void)updateImage
{
    [self setNeedsDisplay];
}

- (void)setRadius:(float)radius
{
    //drawRect:方法不能由我们自己手动调用，只能由系统来调用。
    //drawRect:调用的时机：当第一次显示或者一个重绘事件发生时调用。
    //setNeedsDisplay方法：重新绘制，调用这个方法就会通知自定义的view重新绘制画面，调用drawRect:。
    _radius = radius;
    
    //重绘
    [self setNeedsDisplay];
}

- (void)awakeFromNib
{
    self.radius = 20;
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    CGContextAddArc(ref, 100, 100, self.radius, 0, 2*M_PI, 0);
    [[UIColor grayColor]set];
    
    CGContextFillPath(ref);
    
}


@end
