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
@synthesize imageView,lbltitle,txtdetail, arrdimg, arrtitle,isimage,istitle,selectedRow;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


-(void)viewWillAppear:(BOOL)animated
{
    if (isimage==1) {
        arrdimg=[[NSMutableArray alloc]initWithObjects:@"golden_temple.jpg",@"tara.jpg",@"shat_gambuj.jpeg",@"Ahsan_Manzil.jpg",@"bagha.jpeg", nil];
        UIImage *img=[UIImage imageNamed:[arrdimg objectAtIndex:selectedRow]];
        imageView.image=img;
        
      
        isimage=0;
    }
    
    if (istitle == 1)
    {
        
        arrtitle=[[NSMutableArray alloc]initWithObjects:@"GoldenTemple",@"Tara Mosque",@"Shat Gambuj Mosque",@"Ahsan Manjil",@"bagha Masjid", nil];
        UILabel *lbl=[arrtitle objectAtIndex:selectedRow];
        lbltitle.text=lbl;
        istitle =0;
        
    
        
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
