//
//  SecondViewController.h
//  TravelAndBook
//
//  Created by NexSeed on 2014/02/10.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface SecondViewController : UIViewController<MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *MapView;


@end
