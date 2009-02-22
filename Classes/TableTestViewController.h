//
//  TableTestViewController.h
//  TableTest
//
//  Created by Stephan on 22.02.09.
//  Copyright Coriolis Technologies 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableTestViewController : UIViewController {
	
	IBOutlet UITableView *tableView;
	NSArray *cellList;

}

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, retain) NSArray *cellList;

@end

