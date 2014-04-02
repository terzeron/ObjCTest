//
//  ControlTestViewController.h
//  ControlTest
//
//  Created by terzeron on 2014. 4. 2..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ControlTestViewController : UIViewController <UIActionSheetDelegate>
- (IBAction)hide:(UITextField *)sender;
- (IBAction)sliderChanged:(UISlider *)sender;
- (IBAction)segSelected:(UISegmentedControl *)sender;

@property (weak, nonatomic) IBOutlet UITextField *textName;
@property (weak, nonatomic) IBOutlet UITextField *textNumber;
@property (weak, nonatomic) IBOutlet UILabel *sliderValue;
@property (weak, nonatomic) IBOutlet UISwitch *leftSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *rightSwitch;
@property (weak, nonatomic) IBOutlet UIButton *button1;
- (IBAction)switchPressed:(UISwitch *)sender;
- (IBAction)buttonPressed:(UIButton *)sender;

@end
