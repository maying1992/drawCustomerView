//
//  ViewController.m
//  drawCustomView
//
//  Created by reborn on 16/7/26.
//  Copyright © 2016年 reborn. All rights reserved.
//

#import "ViewController.h"
#import "triangleCustomView.h"
#import "rectCustomView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    triangleCustomView *view=[[triangleCustomView alloc]initWithFrame:[UIScreen mainScreen].bounds];
//    view.backgroundColor = [UIColor whiteColor];
//    [self.view addSubview:view];
    
    rectCustomView *rectView=[[rectCustomView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    rectView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:rectView];
    

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
