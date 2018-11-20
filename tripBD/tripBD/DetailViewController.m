//
//  DetailViewController.m
//  tripBD
//
//  Created by Purobi Rahman Lira on 19/11/18.
//  Copyright © 2018 MCC. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize imageView,lbltitle,txtdetail, arrdimg, arrtitle,isimage1,istitle1,isimage2,istitle2,isimage3,istitle3,isimage4,istitle4,isimage5,istitle5,selectedRow;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(void)viewWillAppear:(BOOL)animated
{
    if (isimage1==1) {
        arrdimg=[[NSMutableArray alloc]initWithObjects:@"golden_temple.jpg",@"Rajban.jpg",@"himchori.jpeg",@"Alu.jpg",@"ramna.jpg", nil];
        UIImage *img=[UIImage imageNamed:[arrdimg objectAtIndex:selectedRow]];
        imageView.image=img;
        isimage1=0;
    }
    
    if (istitle1 == 1)
    {
        
        arrtitle=[[NSMutableArray alloc]initWithObjects:@"GoldenTemple",@"Rajbon Bihar",@"Himchori",@"Alu Tila",@"Ramna Park", nil];
        UILabel *lbl=[arrtitle objectAtIndex:selectedRow];
        lbltitle.text=lbl;
        istitle1 =0;
    }
    
    if (isimage2==1) {
        arrdimg=[[NSMutableArray alloc]initWithObjects:@"tara.jpg",@"maynamati.jpg",@"sonadia.jpg",@"rich.jpg",@"nandan.jpg", nil];
        UIImage *img=[UIImage imageNamed:[arrdimg objectAtIndex:selectedRow]];
        imageView.image=img;
        isimage2=0;
    }
    
    
    if (istitle2 == 1)
    {
        
        arrtitle=[[NSMutableArray alloc]initWithObjects:@"Tara Masjid",@"Maynamoti",@"Sona Diya",@"Richang Jhorna",@"Nandon Park", nil];
        UILabel *lbl=[arrtitle objectAtIndex:selectedRow];
        lbltitle.text=lbl;
        istitle2 =0;
    }
    
    
    if (isimage3==1) {
        arrdimg=[[NSMutableArray alloc]initWithObjects:@"shat_gambuj.jpeg",@"Curjon hall.jpeg",@"Teknaf.jpg",@"amiyakhum.jpg",@"greenland.jpg", nil];
        UIImage *img=[UIImage imageNamed:[arrdimg objectAtIndex:selectedRow]];
        imageView.image=img;
        isimage3=0;
    }
    
    if (istitle3 == 1)
    {
        
        arrtitle=[[NSMutableArray alloc]initWithObjects:@"Shat Gambuj Mosque",@"Curjon Hall",@"Teknaf",@"Omiyakhum Jhorna",@"Greenland Park", nil];
        UILabel *lbl=[arrtitle objectAtIndex:selectedRow];
        lbltitle.text=lbl;
        istitle3 =0;
    }
    
    
    if (isimage4==1) {
        arrdimg=[[NSMutableArray alloc]initWithObjects:@"Ahsan_Manzil.jpg",@"lalbagh.JPG",@"nafakhum.jpg",@"boga.jpg",@"rasel.jpg", nil];
        UIImage *img=[UIImage imageNamed:[arrdimg objectAtIndex:selectedRow]];
        imageView.image=img;
        isimage4=0;
    }
    
    if (istitle4 == 1)
    {
        
        arrtitle=[[NSMutableArray alloc]initWithObjects:@"Ahsan Manjil",@"Lalbag Kella",@"Nafakhum Jhorna",@"Boga Lake",@"Rasel Park", nil];
        UILabel *lbl=[arrtitle objectAtIndex:selectedRow];
        lbltitle.text=lbl;
        istitle4 =0;
    }
    
    
    
    if (isimage5==1) {
        arrdimg=[[NSMutableArray alloc]initWithObjects:@"bagha.jpeg",@"Bangabhaban.jpg",@"jaflong.jpg",@"prantik.jpg",@"zinda.jpg", nil];
        UIImage *img=[UIImage imageNamed:[arrdimg objectAtIndex:selectedRow]];
        imageView.image=img;
        isimage5=0;
    }
    
    if (istitle5 == 1)
    {
        
        arrtitle=[[NSMutableArray alloc]initWithObjects:@"Bagha Masjid",@"Bongo Bhobon",@"Jaflong",@"Prantik Lake",@"Jinda Park", nil];
        UILabel *lbl=[arrtitle objectAtIndex:selectedRow];
        lbltitle.text=lbl;
        istitle5 =0;
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backbtn:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
