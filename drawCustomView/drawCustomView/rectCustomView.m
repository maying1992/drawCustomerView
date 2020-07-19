//
//  rectCustomView.m
//  drawCustomView
//
//  Created by reborn on 16/7/26.
//  Copyright © 2016年 reborn. All rights reserved.
//

#import "rectCustomView.h"

@implementation rectCustomView
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    [self drawRectWithContext:context];
    
//    [self drawRectByUIKitWithContext:context];
//    [self drawEllipse:context];
    [self drawArc:context];
    
}

#pragma mark  绘制矩形
- (void)drawRectWithContext:(CGContextRef)context
{
    //添加矩形对象
    CGRect rect = CGRectMake(20, 50, 280, 50);
    CGContextAddRect(context, rect);
    
    //设置属性
    [[UIColor blueColor] set];
    //绘制
    CGContextDrawPath(context, kCGPathFillStroke);
}

#pragma mark 绘制矩形(利用UIKit的封装方法)
- (void)drawRectByUIKitWithContext:(CGContextRef)context
{
    CGRect rect = CGRectMake(20, 150, 280, 50);
    CGRect rect2 = CGRectMake(20, 250, 280, 50);
    
    //设置属性
    [[UIColor yellowColor] set];
    //绘制矩形，相当于创建对象、添加对象到上下文、绘制三个步骤
    UIRectFill(rect);  //绘制矩形(只有填充)
    
    [[UIColor redColor] setStroke];
    
    UIRectFrame(rect2);

}
#pragma mark 绘制椭圆
- (void)drawEllipse:(CGContextRef)context
{
    //添加对象，绘制椭圆(圆形)的过程也是创建一个矩形
    CGRect rect = CGRectMake(50, 50, 220.0, 200.0);
    CGContextAddEllipseInRect(context, rect);
    [[UIColor purpleColor] set];
    CGContextDrawPath(context, kCGPathFillStroke);
}
#pragma mark 绘制弧形
- (void)drawArc:(CGContextRef)context
{
    /*添加弧形对象
     x:中心点x坐标
     y:中心点y坐标
     radius:半径
     startAngle:起始弧度
     endAngle:终止弧度
     closewise:是否逆时针绘制，0则顺时针绘制
     */
    CGContextAddArc(context, 160, 160, 100.0, 0.0, M_PI_2, 1);
    [[UIColor yellowColor] set];
    CGContextDrawPath(context, kCGPathFillStroke);
    
}
@end
