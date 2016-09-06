//
//  ViewController.m
//  ReactChain
//
//  Created by thor on 16/9/6.
//  Copyright © 2016年 thor. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. 实例
    Calculator *calculator = [[Calculator alloc] init];
    // 2. 链式响应
    Calculator *resultCalculator = calculator.add(5).reduce(3).multiply(20).divided(5);
    
    
    NSLog(@"result == %ld",resultCalculator.result);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
