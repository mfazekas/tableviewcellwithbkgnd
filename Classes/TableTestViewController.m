//
//  TableTestViewController.m
//  TableTest
//
//  Created by Stephan on 22.02.09.
//  Copyright Coriolis Technologies 2009. All rights reserved.
//

#import "TableTestViewController.h"
#import "CustomCellBackgroundView.h"
#import "CustomCellView.h"

@implementation TableTestViewController

@synthesize tableView;
@synthesize cellList;


//==========================================================================================
- (void)viewDidLoad
{
	self.cellList = [NSArray arrayWithObjects:
									 [NSArray arrayWithObjects:
										[NSDictionary dictionaryWithObjectsAndKeys:@"Red", @"text",
										 [UIColor redColor], @"color", nil],
										[NSDictionary dictionaryWithObjectsAndKeys:@"Green", @"text",
										 [UIColor greenColor], @"color", nil],
										[NSDictionary dictionaryWithObjectsAndKeys:@"Cyan", @"text",
										 [UIColor cyanColor], @"color", nil],
										nil],
									 [NSArray arrayWithObjects:
										[NSDictionary dictionaryWithObjectsAndKeys:@"Red", @"text",
										 [UIColor redColor], @"color", nil],
										[NSDictionary dictionaryWithObjectsAndKeys:@"Cyan", @"text",
										 [UIColor cyanColor], @"color", nil],
										nil],
									 [NSArray arrayWithObjects:
										[NSDictionary dictionaryWithObjectsAndKeys:@"Cyan", @"text",
										 [UIColor cyanColor], @"color", nil],
										nil],
									 [NSArray arrayWithObjects:
										[NSDictionary dictionaryWithObjectsAndKeys:@"White", @"text",
										 [UIColor whiteColor], @"color", nil],
										nil],
									 nil];
	
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
	// Release anything that's not essential, such as cached data
}

- (void)dealloc
{
	[super dealloc];
}

//==========================================================================================
#pragma mark UITableView delegate methods
//==========================================================================================
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
	return [cellList count];
}

//==========================================================================================
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section 
{
	int count;

	count = [[cellList objectAtIndex:section] count];

	return count;
}

//==========================================================================================
- (UITableViewCell *)tableView:(UITableView *)_tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
	static NSString *CellIdentifier = @"CustomCellView";
	
	CustomCellView *cell = (CustomCellView *)[_tableView dequeueReusableCellWithIdentifier:@"CustomCellView"];
	if (cell == nil) {
		UIViewController* c = [[UIViewController alloc] initWithNibName:CellIdentifier bundle:nil];
		cell = (CustomCellView *)c.view;
	}

	CustomCellBackgroundViewPosition pos;
	
	pos = CustomCellBackgroundViewPositionBottom;
	
	NSArray *cellListForSection = [cellList objectAtIndex:indexPath.section];
	
	if (indexPath.row == 0) {
		pos = CustomCellBackgroundViewPositionTop;
	} else {
		if (indexPath.row < [cellListForSection count]-1) {
			pos = CustomCellBackgroundViewPositionMiddle;
		}
	}
	
	if ([cellListForSection count] == 1) {
		pos = CustomCellBackgroundViewPositionSingle;
	}
	
	CustomCellBackgroundView *bkgView = [[CustomCellBackgroundView alloc] initWithFrame:cell.frame];
	bkgView.fillColor = [[cellListForSection objectAtIndex:indexPath.row] objectForKey:@"color"];
	bkgView.borderColor = [UIColor blackColor];
	bkgView.position = pos;
	cell.backgroundView = bkgView;
	cell.backgroundColor = [UIColor redColor];
	cell.textColor = [UIColor redColor];
	cell.textLabel.text = [[cellListForSection objectAtIndex:indexPath.row] objectForKey:@"text"];
	return cell;		
}

//==========================================================================================
- (void)tableView:(UITableView *)_tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
	
}

//==========================================================================================
// Provide section titles
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
	return [NSString stringWithFormat:@"Section %d", section];
}

@end
