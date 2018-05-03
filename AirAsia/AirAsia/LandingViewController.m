//
//  LandingViewController.m
//  AirAsia
//
//  Created by Vikas Singh on 03/05/18.
//  Copyright © 2018 HackerZone. All rights reserved.
//

#import "LandingViewController.h"

@interface LandingViewController (){
    
    NSArray* topDestinations;
    NSArray * cityArray;
}

@end

@implementation LandingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Setting logo on left
    UIImageView *logoView =[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    logoView.image  = [UIImage imageNamed:@"logo"];
    UIBarButtonItem *logoBar =[[UIBarButtonItem alloc] initWithCustomView:logoView];
    self.navigationItem.leftBarButtonItem = logoBar;
    
    //cityArray = [NSArray arrayWithObjects:
    topDestinations = [NSArray arrayWithObjects:
                      [NSDictionary dictionaryWithObjectsAndKeys:
                       @"Delhi",@"city",
                       @"Rs 4900",@"price",
                       @"Mon May 24",@"date",
                       nil],
                      [NSDictionary dictionaryWithObjectsAndKeys:
                       @"London",@"city",
                       @"Rs 18200",@"price",
                       @"Mon May 24",@"date",
                       nil],
                      [NSDictionary dictionaryWithObjectsAndKeys:
                       @"Singapore",@"city",
                       @"Rs 10900",@"price",
                       @"Mon May 24",@"date",
                       nil],
                    [NSDictionary dictionaryWithObjectsAndKeys:
                     @"Bangalore",@"city",
                     @"Rs 4000",@"price",
                     @"Mon May 24",@"date",
                     nil],
                                
                    [NSDictionary dictionaryWithObjectsAndKeys:
                     @"Pune",@"city",
                     @"Rs 4200",@"price",
                     @"Mon May 24",@"date",
                     nil],
                    
                    [NSDictionary dictionaryWithObjectsAndKeys:
                     @"Varanasi",@"city",
                     @"Rs 5000",@"price",
                     @"Mon May 24",@"date",
                     nil],
                    
                    [NSDictionary dictionaryWithObjectsAndKeys:
                     @"Chennai",@"city",
                     @"Rs 5200",@"price",
                     @"Mon May 24",@"date",
                     nil],
                    
                    [NSDictionary dictionaryWithObjectsAndKeys:
                     @"Kolkata",@"city",
                     @"Rs 8000",@"price",
                     @"Mon May 24",@"date",
                     nil],
                    
                    [NSDictionary dictionaryWithObjectsAndKeys:
                     @"Jaipur",@"city",
                     @"Rs 3000",@"price",
                     @"Mon May 24",@"date",
                     nil],
                      nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return topDestinations.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    
    NSDictionary *dict = [topDestinations objectAtIndex:indexPath.row];
    UILabel *cityLabel = (UILabel *) [cell.contentView viewWithTag:1001];
    cityLabel.text = [dict valueForKey:@"city"];
    UILabel *priceLabel = (UILabel *) [cell.contentView viewWithTag:1002];
    priceLabel.text = [dict valueForKey:@"price"];
    UILabel *dateLabel = (UILabel *) [cell.contentView viewWithTag:1003];
    dateLabel.text = [dict valueForKey:@"date"];
    
    return cell;
}


@end
