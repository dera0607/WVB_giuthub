//
//  SecondViewController.h
//  TravelAndBook
//
//  Created by NexSeed on 2014/02/09.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UINavigationItem *secondNavigationController;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@end
