//
//  ViewSwitcherViewController.m
//  ViewSwitcher
//
//  Created by terzeron on 2014. 4. 16..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "ViewSwitcherViewController.h"
#import "ViewSwitcherBlueViewController.h"
#import "ViewSwitcherYellowViewController.h"

@interface ViewSwitcherViewController ()

@end

@implementation ViewSwitcherViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.blueViewController = [[ViewSwitcherBlueViewController alloc]
                               initWithNibName: @"ViewSwitcherBlueViewController"
                               bundle: nil];
    [self.view insertSubview: self.blueViewController.view atIndex: 0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) switchViews: (id) sender {
    [UIView beginAnimations: @"View Flip"
                    context: nil];
    [UIView setAnimationDuration: 1.25];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    
    if (self.yellowViewController.view.subviews == nil) {
        if (self.yellowViewController == nil) {
            self.yellowViewController = [[ViewSwitcherYellowViewController alloc]
                                         initWithNibName:@"ViewSwitcherYellowViewController"
                                         bundle:nil];
        }
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromRight
                               forView: self.view
                                 cache: YES];
        [self.blueViewController.view removeFromSuperview];
        [self.view insertSubview: self.yellowViewController.view atIndex:0];
        self.blueViewController = nil;
    } else {
        if (self.blueViewController == nil) {
            self.blueViewController = [[ViewSwitcherBlueViewController alloc]
                                         initWithNibName:@"ViewSwitcherBlueViewController"
                                         bundle:nil];
        }
        [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromLeft
                               forView: self.view
                                 cache: YES];
        [self.yellowViewController.view removeFromSuperview];
        [self.view insertSubview: self.blueViewController.view atIndex:0];
        self.yellowViewController = nil;
    }
    [UIView commitAnimations];
}
@end
