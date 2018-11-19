//
//  ViewController.h
//  tripBD
//
//  Created by Mahmudul Hassan on 20/2/1440 AH.
//  Copyright © 1440 MCC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <UITableViewDataSource,UITableViewDelegate, MKMapViewDelegate>

- (IBAction)menu:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

@property (strong, nonatomic) IBOutlet UITableView *tableView;






@property(strong,nonatomic)NSMutableArray *arrimg;
@property(strong,nonatomic)NSMutableArray *arrtitle;
@property(strong,nonatomic)NSMutableArray *arrsubtitle;
@property int  selectedIndex;

@property(strong,nonatomic)UIButton *lblbtn1;
@property(strong,nonatomic)UIButton *lblbtn2;




@end

