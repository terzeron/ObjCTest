//
//  ButtonTestViewController.m
//  ButtonTest
//
//  Created by terzeron on 2014. 4. 2..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "ButtonTestViewController.h"

@interface ButtonTestViewController ()

@end

@implementation ButtonTestViewController
@synthesize statusLabel;

- (IBAction)pressedButton:(UIButton *)sender {
    NSString* title = [sender titleForState:UIControlStateNormal];
    NSString* plainText = [NSString stringWithFormat:@"%@ button pressed", title];
    //statusLabel.text = plainText;
    NSMutableAttributedString* styledText = [[NSMutableAttributedString alloc] initWithString: plainText];
    NSDictionary* attributes = @{NSFontAttributeName: [UIFont boldSystemFontOfSize:statusLabel.font.pointSize]};
    NSRange nameRange = [plainText rangeOfString:title];
    [styledText setAttributes:attributes
                        range:nameRange];
    statusLabel.attributedText = styledText;
}

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

@end
