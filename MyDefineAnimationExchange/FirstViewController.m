//
//  FirstViewController.m
//  MyDefineAnimationExchange
//
//  Created by liqunfei on 15/8/4.
//  Copyright (c) 2015年 chuchengpeng. All rights reserved.
//

#import "FirstViewController.h"
#import "MyDefineSonUnWind.h"
@implementation FirstViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self createCoreAnimation];
    UISwipeGestureRecognizer *swipGesture = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(showSencondView)];
    swipGesture.direction = UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:swipGesture];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)createCoreAnimation {
    CATransition *ca=[CATransition animation];
    ca.type = @"cube";
    ca.subtype = kCATransitionFromRight;
    ca.duration = 1.0;
    [self.navigationController.view.layer addAnimation:ca forKey:nil];
}

- (void)showSencondView {
    [self performSegueWithIdentifier:@"firstToSecond" sender:self];
}

- (IBAction)sikpbtm:(UIButton *)sender {
}

- (UIStoryboardSegue *)segueForUnwindingToViewController:(UIViewController *)toViewController fromViewController:(UIViewController *)fromViewController identifier:(NSString *)identifier {
    if ([identifier isEqualToString:@"secondToFirst"]) {
        UIStoryboardSegue *segue = [[MyDefineSonUnWind alloc]initWithIdentifier:identifier source:fromViewController destination:toViewController];
        return segue;
    }
    return [super segueForUnwindingToViewController:toViewController fromViewController:fromViewController identifier:identifier];
}

@end
