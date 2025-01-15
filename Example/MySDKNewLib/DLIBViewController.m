//
//  DLIBViewController.m
//  MySDKNewLib
//
//  Created by klolage on 01/15/2025.
//  Copyright (c) 2025 klolage. All rights reserved.
//

#import "DLIBViewController.h"
#import <MySDKNewLib/DLNuanceDictationManager.h>

@interface DLIBViewController ()
@property (nonatomic, strong)DLNuanceDictationManager *dictationManager;

@end

@implementation DLIBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.dictationManager = [[DLNuanceDictationManager alloc] init];
    [self.dictationManager openSession];
}

-(void)viewDidAppear:(BOOL)animated {
    [self.dictationManager initVUI:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
