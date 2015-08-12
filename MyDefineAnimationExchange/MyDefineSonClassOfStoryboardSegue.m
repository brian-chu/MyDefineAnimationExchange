//
//  MyDefineSonClassOfStoryboardSegue.m
//  MyDefineAnimationExchange
//
//  Created by liqunfei on 15/8/5.
//  Copyright (c) 2015年 chuchengpeng. All rights reserved.
//

#import "MyDefineSonClassOfStoryboardSegue.h"

@implementation MyDefineSonClassOfStoryboardSegue
- (void)perform {
    UIViewController *SVC = self.sourceViewController;
    UIViewController *Dvc = self.destinationViewController;
    CGFloat screenWidth = [[UIScreen mainScreen] bounds].size.width;
    CGFloat screenHeight = [[UIScreen mainScreen] bounds].size.height;
    Dvc.view.frame = CGRectMake(0.0, screenHeight, screenWidth, screenHeight);
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [window insertSubview:Dvc.view aboveSubview:SVC.view];
    [UIView animateWithDuration:.5 animations:^{
        SVC.view.frame = CGRectOffset(SVC.view.frame, 0, -screenHeight);
        Dvc.view.frame = CGRectOffset(Dvc.view.frame, 0, -screenHeight);
    } completion:^(BOOL finished) {
       [self.sourceViewController presentViewController:self.destinationViewController animated:NO completion:nil];
       // [self.sourceViewController pushViewController:self.destinationViewController animated:NO];
    }];
  
}
@end
