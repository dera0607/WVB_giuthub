//
//  SecondViewController.h
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface SecondViewController : UIViewController<MKMapViewDelegate>{
    UIImageView *myImageView;
    
    int selectedSection;
}
@property (weak, nonatomic) IBOutlet MKMapView *MapView;



@end
