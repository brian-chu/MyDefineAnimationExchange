//
//  MyDefineSonUnWind.m
//  MyDefineAnimationExchange
//
//  Created by liqunfei on 15/8/5.
//  Copyright (c) 2015年 chuchengpeng. All rights reserved.
//

#import "MyDefineSonUnWind.h"

@implementation MyDefineSonUnWind

- (void)perform {
    UIViewController *SVC = self.sourceViewController;
    UIViewController *Dvc = self.destinationViewController;
    CGFloat screenHeight = [[UIScreen mainScreen] bounds].size.height;
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window insertSubview:Dvc.view aboveSubview:SVC.view];
    [UIView animateWithDuration:.5 animations:^{
        SVC.view.frame = CGRectOffset(SVC.view.frame, 0.0, screenHeight);
        Dvc.view.frame = CGRectOffset(Dvc.view.frame, 0.0, screenHeight);
    } completion:^(BOOL finished) {
        [self.sourceViewController dismissViewControllerAnimated:NO completion:nil];
    }];
}

@end
