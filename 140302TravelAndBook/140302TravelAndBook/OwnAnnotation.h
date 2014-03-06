//
//  OwnAnnotation.h
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface OwnAnnotation : NSObject<MKAnnotation>{
    
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtile;
    NSNumber *selectedArea_Section;
    NSNumber *selectedPlace_Row;
    UIImage *placeImage;

}

@property(nonatomic)CLLocationCoordinate2D coordinate;
@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *subtitle;
@property(nonatomic) NSNumber *selectedArea_Section;
@property(nonatomic) NSNumber *selectedPlace_Row;
@property (strong, nonatomic) UIImage *placeImage;

-(id)initWithCoordinate:(CLLocationCoordinate2D)co;


@end
