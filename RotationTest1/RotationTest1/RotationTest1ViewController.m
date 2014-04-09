//
//  RotationTest1ViewController.m
//  RotationTest1
//
//  Created by terzeron on 2014. 4. 9..
//  Copyright (c) 2014년 terzeron.net. All rights reserved.
//

#import "RotationTest1ViewController.h"

@interface RotationTest1ViewController ()

@end

@implementation RotationTest1ViewController

// 포트레이트 오리엔테이션만 지원함
// plist 설정 내에서만 값을 선택할 수 있음
-(NSUInteger) supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
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
