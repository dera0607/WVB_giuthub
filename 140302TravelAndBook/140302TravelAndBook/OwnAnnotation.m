//
//  OwnAnnotation.m
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import "OwnAnnotation.h"

@implementation OwnAnnotation

@synthesize coordinate;
@synthesize title;
@synthesize subtitle;

-(id)initWithCoordinate:(CLLocationCoordinate2D)co{
    coordinate = co;
    return self;
}

@end
