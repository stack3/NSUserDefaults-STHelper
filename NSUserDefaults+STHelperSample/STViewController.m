//
//  STViewController.m
//  NSUserDefaults+STHelperSample
//
//  Created by EIMEI on 2013/05/03.
//  Copyright (c) 2013 stack3.net. All rights reserved.
//

#import "STViewController.h"
#import "NSUserDefaults+STHelper.h"

@implementation STViewController {
    IBOutlet __weak UIButton *_saveButton;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [_saveButton addTarget:self action:@selector(didTapSaveButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didTapSaveButton
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    
    [ud st_setUnsignedInteger:100 forKey:@"Unsigned Integer"];
    [ud setObject:@"String Value" forKey:@"String"];
    [ud setInteger:999 forKey:@"IntegerRaw"];
    
    [ud synchronize];
    
    
}

@end
