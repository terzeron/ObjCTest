//
//  ControlTestViewController.m
//  ControlTest
//
//  Created by terzeron on 2014. 4. 2..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "ControlTestViewController.h"

@interface ControlTestViewController ()

@end

@implementation ControlTestViewController
@synthesize textName;
@synthesize textNumber;
@synthesize sliderValue;
@synthesize leftSwitch;
@synthesize rightSwitch;
@synthesize button1;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hide:(UITextField *)sender {
    [textName resignFirstResponder];
}

- (IBAction)sliderChanged:(UISlider *)sender {
    sliderValue.text = [NSString stringWithFormat:@"%f", (sender.value * 100)];
}
- (IBAction)segSelected:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        leftSwitch.hidden = NO;
        rightSwitch.hidden = NO;
        button1.hidden = YES;
    } else {
        leftSwitch.hidden = YES;
        rightSwitch.hidden = YES;
        button1.hidden = NO;
    }
}
- (IBAction)switchPressed:(UISwitch *)sender {
    BOOL isOn = sender.isOn;
    [leftSwitch setOn:isOn animated:YES];
    [rightSwitch setOn:isOn animated:YES];
}

- (IBAction)buttonPressed:(UIButton *)sender {
    UIActionSheet* actionSheet =
    [[UIActionSheet alloc] initWithTitle:@"Are you sure?"
                                delegate:self
                       cancelButtonTitle:@"No"
                  destructiveButtonTitle:@"Yes"
                       otherButtonTitles:nil];
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet*)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != [actionSheet cancelButtonIndex]) {
        NSString* msg = nil;
        if (self.textName.text.length > 0) {
            msg = [NSString stringWithFormat:@"You can breathe easy, %@, everything went OK.",
                   self.textName.text];
        } else {
            msg = @"You can breathe easy, everything went OK";
        }
        UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Something was done"
                                                        message:msg
                                                       delegate:self
                                              cancelButtonTitle:@"Phew"
                                              otherButtonTitles:nil];
        [alert show];
    }
}
@end
