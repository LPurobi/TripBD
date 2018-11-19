//
//  ExpandingCell.h
//  tripBD
//
//  Created by Purobi Rahman Lira on 18/11/18.
//  Copyright © 2018 MCC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExpandingCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *img;
@property (strong, nonatomic) IBOutlet UILabel *Title;
@property (strong, nonatomic) IBOutlet UILabel *subtitle1;
@property (strong, nonatomic) IBOutlet UILabel *subtitle2;

@property (strong, nonatomic) IBOutlet UIButton *subbtn1;

@property (strong, nonatomic) IBOutlet UIButton *subbtn2;


@end

NS_ASSUME_NONNULL_END
