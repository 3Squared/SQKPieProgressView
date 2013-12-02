//
//  SQKViewController.m
//  SQKPieProgressView
//
//  Created by Luke Stringer on 02/12/2013.
//  Copyright (c) 2013 3Squared. All rights reserved.
//

#import "SQKViewController.h"
#import "SQKPieProgressView.h"

@interface SQKViewController ()
@property (nonatomic, strong) SQKPieProgressView *pieProgressView ;
@end

@implementation SQKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    SQKPieProgressView *pieProgressView = [[SQKPieProgressView alloc] init];
    
    CGFloat width = 60.0f;
    CGFloat height = 60.0f;
    CGFloat xPosition = (CGRectGetWidth(self.view.frame) / 2) - (width / 2);
    CGFloat yPosition = (CGRectGetHeight(self.view.frame) / 2) - (height / 2);
    pieProgressView.frame = CGRectMake(xPosition, yPosition, width, height);
    
    
    self.pieProgressView = pieProgressView;
    [self.view addSubview:self.pieProgressView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self incrementPieProgress];
}

- (void)incrementPieProgress {
    CGFloat newProgress = self.pieProgressView.progress + 0.01;
    [self.pieProgressView setProgress:newProgress];
    
    if (newProgress < 1.0) {
        [self performSelector:@selector(incrementPieProgress) withObject:nil afterDelay:0.1];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
