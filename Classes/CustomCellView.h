//
//  CustomCellView.h
//  TableTest
//
//  Created by Stephan on 22.02.09.
//  Copyright 2009 Coriolis Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomCellView : UITableViewCell {
	
	IBOutlet UILabel *textLabel;

}

@property (nonatomic, retain) UILabel *textLabel;

@end
