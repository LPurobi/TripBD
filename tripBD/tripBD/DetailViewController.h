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
@property (strong,nonatomic)NSMutableArray *arrtitle;

@property int istitle1;
@property int isimage1;

@property int istitle2;
@property int isimage2;

@property int istitle3;
@property int isimage3;

@property int istitle4;
@property int isimage4;

@property int istitle5;
@property int isimage5;

@property int selectedRow;

@end

NS_ASSUME_NONNULL_END
