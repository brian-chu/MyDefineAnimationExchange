//
//  ViewController.m
//  MyDefineAnimationExchange
//
//  Created by liqunfei on 15/8/4.
//  Copyright (c) 2015年 chuchengpeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self createCoreAnimation];
}

- (void)createCoreAnimation {
    CATransition *ca=[CATransition animation];
    ca.type = @"cube";
    ca.subtype = kCATransitionFromLeft;
    ca.duration = 1.0;
    [self.navigationController.view.layer addAnimation:ca forKey:nil];
}


@end
