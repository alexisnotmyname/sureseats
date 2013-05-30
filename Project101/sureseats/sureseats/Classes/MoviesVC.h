//
//  MoviesNC.h
//  sureseats
//
//  Created by Martin on 5/27/13.
//  Copyright (c) 2013 Ripplewave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieDetailsVC.h"

@interface MoviesVC : UIViewController{
    NSMutableArray *movieList;
}

@property (strong, nonatomic) IBOutlet UITableView *movieListTableView;
@end
