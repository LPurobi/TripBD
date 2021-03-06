//
//  ViewController.m
//  tripBD
//
//  Created by Mahmudul Hassan on 20/2/1440 AH.
//  Copyright © 1440 MCC. All rights reserved.
//

#import "ViewController.h"
#import "ExpandingCell.h"
#import "DetailViewController.h"
@interface ViewController ()
{
//    BOOL isSideViewOpen;
    BOOL isTableViewOpen;
    CLLocationManager *mgr;
}

@end

@implementation ViewController
@synthesize tableView,tableViewbar, arrimg,arrtitle,arrsubtitle1,arrsubtitle2,arrsubtitle3,arrsubtitle4,arrsubtitle5,selectedIndex,lblbtn1,lblbtn2,lblbtn3,lblbtn4,lblbtn5;

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
    
    arrsubtitle1=[[NSMutableArray alloc]initWithObjects:@"GoldenTemple",@"Rajbon Bihar",@"Himchori",@"Alu Tila",@"Ramna Park", nil];
    arrsubtitle2=[[NSMutableArray alloc]initWithObjects:@"Tara Masjid",@"Maynamoti",@"Sona Diya",@"Richang Jhorna",@"Nandon Park", nil];
    arrsubtitle3=[[NSMutableArray alloc]initWithObjects:@"Shat Gambuj Mosque",@"Curjon Hall",@"Teknaf",@"Omiyakhum Jhorna",@"Greenland Park", nil];
    arrsubtitle4=[[NSMutableArray alloc]initWithObjects:@"Ahsan Manjil",@"Lalbag Kella",@"Nafakhum Jhorna",@"Boga Lake",@"Rasel Park", nil];
    arrsubtitle5=[[NSMutableArray alloc]initWithObjects:@"Bagha Masjid",@"Bongo Bhobon",@"Jaflong",@"Prantik Lake",@"Jinda Park", nil];
    
    
    

//    mapkit
    mgr=[[CLLocationManager alloc]init];
    [mgr requestWhenInUseAuthorization];
//    [_mapView setMapType:MKMapTypeSatellite];
//    mapkit end
    
    
    
//            sidebar adding start
    
    
    tableView.backgroundColor=[UIColor groupTableViewBackgroundColor];
    tableViewbar.hidden=YES;
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
    cell.subtitle1.text=arrsubtitle1[indexPath.row];
    cell.subtitle2.text=arrsubtitle2[indexPath.row];
    cell.subtitle3.text=arrsubtitle3[indexPath.row];
    cell.subtitle4.text=arrsubtitle4[indexPath.row];
    cell.subtitle5.text=arrsubtitle5[indexPath.row];
    lblbtn1=cell.subbtn1;
    lblbtn2=cell.subbtn2;
    lblbtn3=cell.subbtn3;
    lblbtn4=cell.subbtn4;
    lblbtn5=cell.subbtn5;
    lblbtn1.tag=indexPath.row;
    lblbtn2.tag=indexPath.row;
    lblbtn3.tag=indexPath.row;
    lblbtn4.tag=indexPath.row;
    lblbtn5.tag=indexPath.row;
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (selectedIndex ==indexPath.row) {
        return 200;
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
    
    [lblbtn1 addTarget:self action:@selector(lbl1pressed) forControlEvents:UIControlEventTouchDown];
    [lblbtn2 addTarget:self action:@selector(lbl2pressed) forControlEvents:UIControlEventTouchDown];
    [lblbtn3 addTarget:self action:@selector(lbl3pressed) forControlEvents:UIControlEventTouchDown];
    [lblbtn4 addTarget:self action:@selector(lbl4pressed) forControlEvents:UIControlEventTouchDown];
    [lblbtn5 addTarget:self action:@selector(lbl5pressed) forControlEvents:UIControlEventTouchDown];
    
}


-(void)lbl1pressed
{
    DetailViewController *dec =[[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    dec.selectedRow=lblbtn1.tag;
    dec.isimage1=1;
    dec.istitle1=1;
    [self presentViewController:dec animated:YES completion:nil];
}

-(void)lbl2pressed
{
    DetailViewController *dec =[[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    dec.selectedRow=lblbtn2.tag;
    dec.isimage2=1;
    dec.istitle2=1;
    [self presentViewController:dec animated:YES completion:nil];
    
}

-(void)lbl3pressed
{
    DetailViewController *dec =[[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    dec.selectedRow=lblbtn3.tag;
    dec.isimage3=1;
    dec.istitle3=1;
    [self presentViewController:dec animated:YES completion:nil];
}

-(void)lbl4pressed
{
    DetailViewController *dec =[[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    dec.selectedRow=lblbtn4.tag;
    dec.isimage4=1;
    dec.istitle4=1;
    [self presentViewController:dec animated:YES completion:nil];
}
-(void)lbl5pressed
{
    DetailViewController *dec =[[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    dec.selectedRow=lblbtn5.tag;
    dec.isimage5=1;
    dec.istitle5=1;
    [self presentViewController:dec animated:YES completion:nil];
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
{   tableViewbar.hidden=NO;
    tableView.hidden=NO;
    [self.view bringSubviewToFront:tableViewbar];
    
    if (!isTableViewOpen)
        
    {
        isTableViewOpen=true;
        [tableViewbar setFrame:CGRectMake(0,62,0,490)];
        [tableView setFrame:CGRectMake(0,0,0,474)];
        [UIView beginAnimations:@"TableAnimation" context:NULL];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationDuration:0.2];
        [tableViewbar setFrame:CGRectMake(0,62,245,484)];
        [tableView setFrame:CGRectMake(0,0,235,474)];
        [UIView commitAnimations];

        
    }
    else
    {
        isTableViewOpen=false;
        tableViewbar.hidden=YES;
        tableView.hidden=YES;
        
        
       
    }
//    side bar adding end
    
    
    
}
@end
