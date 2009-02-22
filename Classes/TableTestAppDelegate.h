//
//  TableTestAppDelegate.h
//  TableTest
//
//  Created by Stephan on 22.02.09.
//  Copyright Coriolis Technologies 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TableTestViewController;

@interface TableTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TableTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TableTestViewController *viewController;

@end

