//
//  ViewController.m
//  advertiseDemo
//
//  Created by zhouhuanqiang on 16/5/22.
//  Copyright © 2016年 zhouhuanqiang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:NO];
    self.title = @"首页";
    
    self.view.backgroundColor = [UIColor greenColor];
}
- (BOOL)shouldAutorotate
{
    return NO;
}

@end
