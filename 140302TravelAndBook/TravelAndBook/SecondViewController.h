//
//  SecondViewController.h
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface SecondViewController : UIViewController<MKMapViewDelegate>{
    UIImageView *myImageView;
    NSNumber *n_selectedArea_Section;
    NSNumber *n_setSelectedPlace_Row;
    CLLocationCoordinate2D *points;
}

@property (weak, nonatomic) IBOutlet MKMapView *MapView;

@property (nonatomic, retain) NSMutableArray *Annotation;
@property (nonatomic, retain) NSMutableArray *Annotation_Asia1;
@property (nonatomic, retain) NSMutableArray *Annotation_NorthAmerica2;
@property (nonatomic, retain) NSMutableArray *Annotation_SouthAmerica3;
@property (nonatomic, retain) NSMutableArray *Annotation_Eourope4;
@property (nonatomic, retain) NSMutableArray *Annotation_Africa5;
@property (nonatomic, retain) NSMutableArray *Annotation_Oceania6;
@property (nonatomic, retain) NSMutableArray *Annotation_AroundTheWorld7;

@property (nonatomic, retain) NSMutableArray *co_Asia1;
@property (nonatomic, retain) NSMutableArray *co_NorthAmerica2;
@property (nonatomic, retain) NSMutableArray *co_SouthAmerica3;
@property (nonatomic, retain) NSMutableArray *co_Eourope4;
@property (nonatomic, retain) NSMutableArray *co_Africa5;
@property (nonatomic, retain) NSMutableArray *co_Oceania6;
@property (nonatomic, retain) NSMutableArray *co_AroundTheWorld7;

-(void)closeAnnotation:(BOOL)animated;

//@property (nonatomic, retain) NSMutableArray *co_Asia1_latitude;
//@property (nonatomic, retain) NSMutableArray *co_NorthAmerica2_latitude;
//@property (nonatomic, retain) NSMutableArray *co_SouthAmerica3_latitude;
//@property (nonatomic, retain) NSMutableArray *co_Eourope4_latitude;
//@property (nonatomic, retain) NSMutableArray *co_Africa5_latitude;
//@property (nonatomic, retain) NSMutableArray *co_Oceania6_latitude;
//@property (nonatomic, retain) NSMutableArray *co_AroundTheWorld7_latitude;
//
//@property (nonatomic, retain) NSMutableArray *co_Asia1_longitude;
//@property (nonatomic, retain) NSMutableArray *co_NorthAmerica2_longitude;
//@property (nonatomic, retain) NSMutableArray *co_SouthAmerica3_longitude;
//@property (nonatomic, retain) NSMutableArray *co_Eourope4_longitude;
//@property (nonatomic, retain) NSMutableArray *co_Africa5_longitude;
//@property (nonatomic, retain) NSMutableArray *co_Oceania6_longitude;
//@property (nonatomic, retain) NSMutableArray *co_AroundTheWorld7_longitude;




@end
