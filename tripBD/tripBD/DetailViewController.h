//
//  DetailViewController.h
//  tripBD
//
//  Created by Purobi Rahman Lira on 19/11/18.
//  Copyright © 2018 MCC. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
- (IBAction)backbtn:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UILabel *lbltitle;
@property (strong, nonatomic) IBOutlet UITextView *txtdetail;

@property(strong,nonatomic)NSMutableArray *arrdimg;
@property int isnumber;
@property int isfruit;
@property int selectedRow;

@end

NS_ASSUME_NONNULL_END
