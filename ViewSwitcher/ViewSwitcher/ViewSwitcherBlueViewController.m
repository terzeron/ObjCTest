//
//  ViewSwitcherBlueViewController.m
//  ViewSwitcher
//
//  Created by terzeron on 2014. 4. 16..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "ViewSwitcherBlueViewController.h"

@interface ViewSwitcherBlueViewController ()

@end

@implementation ViewSwitcherBlueViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) blueButtonPressed {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Blue View Button Pressed"
                                                    message: @"You pressed the button on the blue view"
                                                   delegate: nil
                                          cancelButtonTitle: @"Yep, I did"
                                           otherButtonTitles: nil];
    [alert show];
}

@end
