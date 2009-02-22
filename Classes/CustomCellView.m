//
//  CustomCellView.m
//  TableTest
//
//  Created by Stephan on 22.02.09.
//  Copyright 2009 Coriolis Technologies. All rights reserved.
//

#import "CustomCellView.h"


@implementation CustomCellView

@synthesize textLabel;

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier
{
	if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
		// Initialization code
	}
	return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
	[super setSelected:selected animated:animated];
  // Configure the view for the selected state
}


- (void)dealloc
{
	[textLabel release];
  [super dealloc];
}

@end
