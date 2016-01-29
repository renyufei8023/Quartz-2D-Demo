//
//  ViewController.m
//  Quartz 2D
//
//  Created by 任玉飞 on 15/12/18.
//  Copyright © 2015年 任玉飞. All rights reserved.
//

#import "ViewController.h"
#import "YYView.h"
#import "jietu.h"
#define KScreen_Width [UIScreen mainScreen].bounds.size.width
@interface ViewController ()
@property (weak, nonatomic) IBOutlet YYView *yyView;

@end

@implementation ViewController
- (IBAction)jietu:(id)sender {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        //保存到相册当中去
        //获取图形上下文
        UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, YES, 0);
//        UIGraphicsBeginImageContext(self.view.bounds.size);
        [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
        
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIImageWriteToSavedPhotosAlbum(image, self, @selector(image:idFinishSavingWithError:contextInfo:), nil);
        
        //写入到沙盒中
        NSData *data = UIImagePNGRepresentation(image);
        NSString *path = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)lastObject] stringByAppendingPathComponent:@"abc.png"];
        [data writeToFile:path atomically:YES];
        
    });
}

- (void)image:(UIImage *)image idFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error) {
        
        NSLog(@"错误%@",error.localizedDescription);
    }else{
        NSLog(@"保存成果了");
    }
}
/*
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIImage *image = [UIImage imageNamed:@"me.jpg"];
//    UIColor *color = [UIColor colorWithPatternImage:image];
//    self.view.backgroundColor = color;
    
    //获取要画的尺寸
    CGSize size = CGSizeMake(self.view.frame.size.width, 35);
    //获取一个image上下文
    UIGraphicsBeginImageContext(size);
    
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGFloat hegiht = 35;
    CGContextAddRect(ref, CGRectMake(0, 0, self.view.frame.size.width, hegiht));
    [[UIColor whiteColor]set];
    CGContextFillPath(ref);
    
    CGFloat lineWidth = 2;
    CGFloat lineY = hegiht - lineWidth;
    CGFloat lineX = 0;
    CGContextMoveToPoint(ref, lineX, lineY);
    CGContextAddLineToPoint(ref, self.view.frame.size.width, lineY);
    [[UIColor blackColor]set];
    CGContextStrokePath(ref);//划线的时候一定要使用空心的，使用实心可能无法正确绘制出来
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIColor *color = [UIColor colorWithPatternImage:image];
    self.view.backgroundColor = color;
    
}
*/
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //生成一张以后用于平铺的小图片
    CGSize size = CGSizeMake(KScreen_Width, 26);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    //画矩形
    CGContextRef ref = UIGraphicsGetCurrentContext();
    CGFloat height = 26;
    CGContextAddRect(ref, CGRectMake(0, 0, KScreen_Width, height));
    [[UIColor brownColor]set];
    CGContextFillPath(ref);
    
    //画线条
    CGFloat lineWidth = 2;
    CGFloat lineY = height - lineWidth;
    CGFloat lineX = 0;
    CGContextMoveToPoint(ref, lineX, lineY);
    CGContextAddLineToPoint(ref, KScreen_Width, lineY);
    [[UIColor blackColor]set];
    CGContextStrokePath(ref);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIColor *color = [UIColor colorWithPatternImage:image];
    self.view.backgroundColor = color;
    
    
    
    
    
    jietu *imageView = [jietu new];
    imageView.image1 = [UIImage imageNamed:@"me.jpg"];
    imageView.frame = CGRectMake(100, 100, 200, 200);
    [self.view addSubview:imageView];
    
}
@end
