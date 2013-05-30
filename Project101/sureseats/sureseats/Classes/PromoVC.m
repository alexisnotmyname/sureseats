//
//  PromoVC.m
//  sureseats
//
//  Created by Martin on 5/27/13.
//  Copyright (c) 2013 Ripplewave. All rights reserved.
//

#import "PromoVC.h"

@interface PromoVC ()

@end

@implementation PromoVC
@synthesize promoTableVIew;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    promos = [[NSMutableArray alloc] initWithObjects:@"Promo 1", @"Promo 2", @"Promo 3", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return promos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //    if(cell == nil){
    //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    //    }
    cell.textLabel.text = [promos objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"promoDetail"]){
        UITableViewCell *cell = (UITableViewCell *)sender;
        NSIndexPath *ip = [promoTableVIew indexPathForCell:cell];
        
        PromoDetailVC *vc = (PromoDetailVC*)[segue destinationViewController];
        NSString *promoName = [promos objectAtIndex:ip.row];
        [vc.navigationItem setTitle:promoName];
    }
}


@end
