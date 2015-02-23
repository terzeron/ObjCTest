//
//  ViewSwitcherYellowViewController.m
//  ViewSwitcher
//
//  Created by terzeron on 2014. 4. 16..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "ViewSwitcherYellowViewController.h"

@interface ViewSwitcherYellowViewController ()

@end

@implementation ViewSwitcherYellowViewController

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

- (IBAction) yellowButtonPressed {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Yellow View Button Pressed"
                                                    message: @"You pressed the button on the yellow view"
                                                   delegate: nil
                                          cancelButtonTitle: @"Yep, I did"
                                           otherButtonTitles: nil];
    [alert show];
}
@end
