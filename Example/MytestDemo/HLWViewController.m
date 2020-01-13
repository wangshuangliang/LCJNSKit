//
//  HLWViewController.m
//  MytestDemo
//
//  Created by 1397871472@qq.com on 01/13/2020.
//  Copyright (c) 2020 1397871472@qq.com. All rights reserved.
//

#import "HLWViewController.h"
#import <WSLView.h>
#import <WSLSFramework/WSLSFramework.h>

@interface HLWViewController ()

@end

@implementation HLWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    WSLView * sv = [[WSLView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:sv];
    
    SPerson * sp = [[SPerson alloc] init];
    [sp goHome];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
