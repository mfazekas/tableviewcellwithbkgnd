//
//  TableTestAppDelegate.m
//  TableTest
//
//  Created by Stephan on 22.02.09.
//  Copyright Coriolis Technologies 2009. All rights reserved.
//

#import "TableTestAppDelegate.h"
#import "TableTestViewController.h"

@implementation TableTestAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
