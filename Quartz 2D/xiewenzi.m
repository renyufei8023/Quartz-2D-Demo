//
//  xiewenzi.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "xiewenzi.h"

@implementation xiewenzi

- (void)drawRect:(CGRect)rect {
    
    NSString *str = @"的额搜风搜分手了粉色发俄双方说法offFF瓦房你F回复F入会费WFH；飞；FN返回WFH；哦发货；F回复；FHISFHSIFH我皮肤好APIFRHi分红AWFHIOF威锋网i";
    // 1.获取上下文
    //    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 2.绘图
    // 不推荐使用C语言的方法绘制文字, 因为quraz2d中的坐标系和UIkit中的坐标系不一致, 绘制出来的文字是颠倒的, 而且通过C语言的方法绘制文字相当麻烦
    //    CGContextSelectFont(<#CGContextRef c#>, <#const char *name#>, <#CGFloat size#>, <#CGTextEncoding textEncoding#>)
    //    CGContextShowText(ctx, <#const char *string#>, <#size_t length#>)
    
    //画一个四方形是为了把要画出来的文字圈起来
    CGContextRef ref = UIGraphicsGetCurrentContext();
    
    CGContextAddRect(ref, CGRectMake(50, 50, 100, 100));
    
    CGContextStrokePath(ref);
    
    NSDictionary *attribute = @{NSForegroundColorAttributeName:[UIColor redColor],NSBackgroundColorAttributeName:[UIColor greenColor],NSFontAttributeName:[UIFont systemFontOfSize:13]};
    //一行代码即可搞定绘制文字
    [str drawInRect:CGRectMake(50, 50, 100, 100) withAttributes:attribute];
    
    [self huatu];
}

- (void)huatu
{
    
    UIImage *image = [UIImage imageNamed:@"me.jpg"];
    //实现平铺效果
    [image drawAsPatternInRect:CGRectMake(0, 0, 320, 568)];
    //展示到屏幕上
    [image drawInRect:CGRectMake(0, 0, 320, 568)];
    //将图片绘制到指定的位置
    [image drawAtPoint:CGPointMake(100, 100)];
    
}
@end
