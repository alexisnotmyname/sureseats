//
//  PromoVC.h
//  sureseats
//
//  Created by Martin on 5/27/13.
//  Copyright (c) 2013 Ripplewave. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PromoDetailVC.h"

@interface PromoVC : UIViewController{
    NSMutableArray *promos;
    
}
@property (strong, nonatomic) IBOutlet UITableView *promoTableVIew;

@end
