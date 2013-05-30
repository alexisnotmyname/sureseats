//
//  MoviesNC.m
//  sureseats
//
//  Created by Martin on 5/27/13.
//  Copyright (c) 2013 Ripplewave. All rights reserved.
//

#import "MoviesVC.h"

@interface MoviesVC ()

@end

@implementation MoviesVC
@synthesize movieListTableView;

-(void)viewDidLoad{
    [super viewDidLoad];
    movieList = [[NSMutableArray alloc] initWithObjects:@"Movie 1", @"Movie 2", @"Movie 3", @"Movie 4", nil];
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
    return movieList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //    if(cell == nil){
    //        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    //    }
    cell.textLabel.text = [movieList objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"movieDetail"]){
        UITableViewCell *cell = (UITableViewCell *)sender;
        NSIndexPath *ip = [movieListTableView indexPathForCell:cell];
        
        MovieDetailsVC *vc = (MovieDetailsVC*)[segue destinationViewController];
        NSString *movieTite = [movieList objectAtIndex:ip.row];
        vc.movieString = movieTite;
        [vc.navigationItem setTitle:movieTite];
    }
}



@end
