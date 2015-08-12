//
//  SecondViewController.m
//  MyDefineAnimationExchange
//
//  Created by liqunfei on 15/8/5.
//  Copyright (c) 2015年 chuchengpeng. All rights reserved.
//

#import "SecondViewController.h"
#import "MyDefineSonUnWind.h"
@implementation SecondViewController

- (void)viewDidLoad {
    UISwipeGestureRecognizer *swipGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(showFirstView)];
    swipGesture.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipGesture];
}

- (void)showFirstView {
    NSLog(@"1234");
    [self performSegueWithIdentifier:@"secondToFirst" sender:self];
}

- (IBAction)skipBTN:(UIButton *)sender {
}

- (IBAction)returnFromSegueActions:(UIStoryboardSegue *)sender {
    if ([sender.identifier
        isEqualToString:@"secondToFirst"]) {
        UIColor *oranginalColor = self.view.backgroundColor;
        self.view.backgroundColor = [UIColor redColor];
        [UIView animateWithDuration:1.0 animations:^{
            self.view.backgroundColor = oranginalColor;
        } completion:nil];
    }
}

@end
