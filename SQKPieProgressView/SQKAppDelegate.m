//
//  SQKAppDelegate.m
//  SQKPieProgressView
//
//  Created by Luke Stringer on 02/12/2013.
//  Copyright (c) 2013 3Squared. All rights reserved.
//

#import "SQKAppDelegate.h"
#import "SQKViewController.h"

@implementation SQKAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.viewController = [[SQKViewController alloc] init];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;

    
}

@end
