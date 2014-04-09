//
//  RotationTest2ViewController.m
//  RotationTest2
//
//  Created by terzeron on 2014. 4. 9..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "RotationTest2ViewController.h"

@interface RotationTest2ViewController ()

@end

@implementation RotationTest2ViewController
@synthesize ImageView1;
@synthesize TextView1;
@synthesize TextView2;
@synthesize TextView3;
@synthesize TextView4;

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIApplication* app = [UIApplication sharedApplication];
    UIInterfaceOrientation currentOrientation = app.statusBarOrientation;
    [self doLayoutForOrientation:currentOrientation];
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation) toInterfaceOrientation duration: (NSTimeInterval) duration {
    [self doLayoutForOrientation:toInterfaceOrientation];
}

- (void) doLayoutForOrientation:(UIInterfaceOrientation)orientation {
    if (UIInterfaceOrientationIsPortrait(orientation)) {
        ImageView1.frame = CGRectMake(20, 20, 280, 280);
        TextView1.frame = CGRectMake(20, 320, 120, 40);
        TextView2.frame = CGRectMake(20, 400, 120, 40);
        TextView3.frame = CGRectMake(180, 320, 120, 40);
        TextView4.frame = CGRectMake(180, 400, 120, 40);
    } else {
        ImageView1.frame = CGRectMake(20, 20, 280, 280);
        TextView1.frame = CGRectMake(320, 20, 120, 40);
        TextView2.frame = CGRectMake(320, 90, 120, 40);
        TextView3.frame = CGRectMake(320, 160, 120, 40);
        TextView4.frame = CGRectMake(320, 230, 120, 40);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
