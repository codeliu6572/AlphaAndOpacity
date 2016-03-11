//
//  ViewController.m
//  组透明
//
//  Created by 刘浩浩 on 16/3/11.
//  Copyright © 2016年 CodingFire. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (UIButton *)customButton
{
    //create button
    CGRect frame = CGRectMake(0, 0, 150, 50);
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    button.backgroundColor = [UIColor whiteColor];
    button.layer.cornerRadius = 10;
    //add label
    frame = CGRectMake(20, 10, 110, 30);
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = @"Hello World";
    label.backgroundColor=[UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [button addSubview:label];
    return button;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 568)];
    view.backgroundColor=[UIColor blackColor];
//    view.layer.opacity=0.5;
    [self.view addSubview:view];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor colorWithRed:0.75f green:0.75f blue:0.75f alpha:1.00f];
    UIButton *button1 = [self customButton];
    button1.center = CGPointMake(160, 150);
    [view addSubview:button1];
    //create translucent button
    UIButton *button2 = [self customButton];
    button2.center = CGPointMake(160, 250);
    button2.alpha = 0.5;
    [view addSubview:button2];
    //enable rasterization for the translucent button
//    button2.layer.shouldRasterize = YES;
//    button2.layer.rasterizationScale = [UIScreen mainScreen].scale;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
