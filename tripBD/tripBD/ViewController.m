//
//  ViewController.m
//  tripBD
//
//  Created by Mahmudul Hassan on 20/2/1440 AH.
//  Copyright © 1440 MCC. All rights reserved.
//

#import "ViewController.h"
#import "ExpandingCell.h"
@interface ViewController ()
{
//    BOOL isSideViewOpen;
    BOOL isTableViewOpen;
    CLLocationManager *mgr;
}

@end

@implementation ViewController
@synthesize tableView,arrimg,arrtitle,arrsubtitle,selectedIndex;

- (void)viewDidLoad {
    [super viewDidLoad];
    selectedIndex= -1;
    arrimg= [[NSMutableArray alloc]init];
    for (int ii=1; ii<=5; ii++)
    {
        NSString *string=[[NSString alloc]initWithFormat:@"%i",ii];
        [arrimg addObject:string];
    }
    
    arrtitle=[[NSMutableArray alloc]initWithObjects:@"Religious",@"Historical",@"Recreational",@"Natural",@"For Kids", nil];
    arrsubtitle=[[NSMutableArray alloc]initWithObjects:@"GoldenTemple",@"rajbon bihar",@"himchori",@"nilgiri",@"ramna park", nil];
    
    
    

//    mapkit
    mgr=[[CLLocationManager alloc]init];
    [mgr requestWhenInUseAuthorization];
//    [_mapView setMapType:MKMapTypeSatellite];
//    mapkit end
    
    
    
//            sidebar adding start
    
    
    tableView.backgroundColor=[UIColor groupTableViewBackgroundColor];
    isTableViewOpen=false;
    
    
    }

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrtitle.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ExpandingCell *cell =(ExpandingCell *)[tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell==nil)
    {
        NSArray *nib=[[NSBundle mainBundle]loadNibNamed:@"ExpandingCell" owner:self options:nil];
        cell=[nib objectAtIndex:0];
    }
    //cell.img.image=arrimg[indexPath.row];
    cell.Title.text=arrtitle[indexPath.row];
    cell.subtitle1.text=arrsubtitle[indexPath.row];
    cell.subtitle2.text=arrsubtitle[indexPath.row];
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (selectedIndex ==indexPath.row) {
        return 100;
    }
    else
    {
        return 44;
    }
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (selectedIndex == indexPath.row)
    {
        selectedIndex = -1;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
        return;
    }
    if (selectedIndex==-1)
    {
        NSIndexPath *prev = [NSIndexPath indexPathForRow:selectedIndex inSection:0];
        selectedIndex = indexPath.row;
        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:prev] withRowAnimation:UITableViewRowAnimationFade];
    }
    selectedIndex=indexPath.row;
    [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    _mapView.centerCoordinate=userLocation.location.coordinate;
    [_mapView setRegion:MKCoordinateRegionMakeWithDistance(userLocation.location.coordinate,800, 800) animated:YES];
    MKPointAnnotation *point=[[MKPointAnnotation alloc]init];
    point.coordinate=userLocation.location.coordinate;
//    point.title="@current";
//    point.subtitle="@location";
    [mapView addAnnotation:point];
}

- (IBAction)menu:(UIButton *)sender
{
    tableView.hidden=NO;
    [self.view bringSubviewToFront:tableView];
    if (!isTableViewOpen)
        
    {
        isTableViewOpen=true;
        [tableView setFrame:CGRectMake(0,64,0,471)];
        [UIView beginAnimations:@"TableAnimation" context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.2];
        [tableView setFrame:CGRectMake(0,64,235,471)];
        [UIView commitAnimations];

        
    }
    else
    {
        isTableViewOpen=false;
        tableView.hidden=YES;
        
        
       
    }
//    side bar adding end
    
    
    
}
@end
