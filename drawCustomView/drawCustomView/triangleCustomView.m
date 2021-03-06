//
//  triangleCustomView.m
//  drawCustomView
//
//  Created by reborn on 16/7/26.
//  Copyright © 2016年 reborn. All rights reserved.
//

#import "triangleCustomView.h"

@implementation triangleCustomView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

//- (void)drawRect:(CGRect)rect
//{
//    //1.取得图形上下文对象
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    //2.创建路径对象
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathMoveToPoint(path, nil, 20, 50);//移动到指定位置(设置路径起点)
//    CGPathAddLineToPoint(path, nil, 20, 100);//绘制直线(从起始位置开始)
//    CGPathAddLineToPoint(path, nil, 300, 100);//绘制另外一条直线(从上一直线终点开始绘制)
//    
//    //3.添加路径到图形上下文
//    CGContextAddPath(context, path);
//    
//    //4.设置图形上下文状态属性
//    CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1);//设置笔触颜色
//    CGContextSetRGBFillColor(context, 0, 1.0, 0, 1);//设置填充色
//    CGContextSetLineWidth(context, 2.0); //设置线条宽度
//    CGContextSetLineCap(context, kCGLineCapRound); //设置顶点样式，(20,50)和(300,100)是顶点
//    CGContextSetLineJoin(context, kCGLineJoinRound);//设置连接点样式，(20,100)是连接点
//    
//    /*设置线段样式
//     phase:虚线开始的位置
//     lengths:虚线长度间隔
//     count:虚线数组元素个数
//     **/
//    CGFloat lengths[2] = {18,9};
//    CGContextSetLineDash(context, 0, lengths, 2);
//    /*设置阴影
//     context:图形上下文
//     offset:偏移量
//     blur:模糊度
//     color:阴影颜色
//     **/
//    
//    CGColorRef color = [UIColor grayColor].CGColor;
//    CGContextSetShadowWithColor(context, CGSizeMake(2, 2), 0.8, color);
//    
//    //5.绘制图像到指定图形上下文
//    /*CGPathDrawingMode是填充方式，枚举类型
//     kCGPathFill:只有填充，不绘制边框
//     kCGPathEOFill:奇偶规则填充
//     kCGPathStroke:只有边框
//     kCGPathFillStroke:既有边框又有填充
//     kCGPathEOFillStroke:奇偶填充并绘制边框
//     **/
//    CGContextDrawPath(context, kCGPathFillStroke); //最后一个参数是填充类型
//    
//    //6.释放对象
//    CGPathRelease(path);
//    
//}

//简化绘图方式(Core Graphics内部对创建对象添加到上下文这两步操作进行了封装，可以一步完成)
-(void)drawRect:(CGRect)rect
{
    //1.获得图形上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //2.绘制路径(相当于前面创建路径并添加路径到图形上下文两步操作)
    CGContextMoveToPoint(context, 20, 50);
    CGContextAddLineToPoint(context, 20, 100);
    CGContextAddLineToPoint(context, 300, 100);
    
    //封闭路径:a.创建一条起点和终点的线，不推荐
    //CGPathAddLineToPoint(path, nil, 20, 50);
    //封闭路径:b.直接调用路径封闭方法
    CGContextClosePath(context);
    
    //3.设置图形上下文属性
    [[UIColor redColor] setStroke]; //设置红色边框
    [[UIColor greenColor] setFill]; //设置绿色填充
//    [[UIColor blueColor] set]; //同时设置填充和边框色
    
    //4.绘制路径
    CGContextDrawPath(context, kCGPathFillStroke);
    
}



@end
