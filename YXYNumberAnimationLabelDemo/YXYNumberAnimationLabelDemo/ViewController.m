//
//  ViewController.m
//  YXYNumberAnimationLabelDemo
//
//  Created by 杨萧玉 on 14-5-25.
//  Copyright (c) 2014年 杨萧玉. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+YXYNumberAnimationLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.numberLabel setAnimationSpeed:200];
    [self.numberLabel setNumberSizeBlock:^(double number) {
        self.numberLabel.font = [UIFont fontWithName:self.numberLabel.font.fontName size:30.0];
    }];
    [self.numberLabel changeFromNumber:1 toNumber:999999999 withAnimationTime:0.001];
    NSLog(@"%f",self.numberLabel.animationSpeed);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
