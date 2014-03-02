//
//  SecondViewController.m
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import "SecondViewController.h"
#import "JPSThumbnailAnnotation.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.MapView.delegate = self;
    
//    // Annotations
//    [self.MapView addAnnotations:[self generateAnnotations]];

    
    CLLocationCoordinate2D co;
    co.latitude = 35.68664111;  // 経度
    co.longitude = 139.6948839;  // 緯度
    
    // アノテーションを地図へ追加
    HogeAnnotation *ha = [[[HogeAnnotation alloc] init] autorelease];
    ha.coordinate = co;
    ha.title = @"Hoge";
    [mv addAnnotation:ha];

}

//- (NSArray *)generateAnnotations {
//    NSMutableArray *annotations = [[NSMutableArray alloc] initWithCapacity:3];
//    
//    // Empire State Building
//    JPSThumbnail *empire = [[JPSThumbnail alloc] init];
//    empire.image = [UIImage imageNamed:@"アンテロープキャニオン.jpeg"];
//    empire.title = @"Empire State Building";
//    empire.subtitle = @"NYC Landmark";
//    empire.coordinate = CLLocationCoordinate2DMake(40.75, -73.99);
//    empire.disclosureBlock = ^{ NSLog(@"%@", empire.title); };
//    
//    [annotations addObject:[[JPSThumbnailAnnotation alloc] initWithThumbnail:empire]];
//    
//    // Apple HQ
//    JPSThumbnail *apple = [[JPSThumbnail alloc] init];
//    apple.image = [UIImage imageNamed:@"イエローストーン.png"];
//    apple.title = @"Apple HQ";
//    apple.subtitle = @"Apple Headquarters";
//    apple.coordinate = CLLocationCoordinate2DMake(37.33, -122.03);
//    apple.disclosureBlock = ^{ NSLog(@"selected Appple"); };
//    
//    [annotations addObject:[[JPSThumbnailAnnotation alloc] initWithThumbnail:apple]];
//    
//    // Parliament of Canada
//    JPSThumbnail *ottawa = [[JPSThumbnail alloc] init];
//    ottawa.image = [UIImage imageNamed:@"エアーズロック.jpg"];
//    ottawa.title = @"Parliament of Canada";
//    ottawa.subtitle = @"Oh Canada!";
//    ottawa.coordinate = CLLocationCoordinate2DMake(45.43, -75.70);
//    ottawa.disclosureBlock = ^{ NSLog(@"selected Ottawa"); };
//    
//    [annotations addObject:[[JPSThumbnailAnnotation alloc] initWithThumbnail:ottawa]];
//    
//    return annotations;
//}
//
//#pragma mark - MKMapViewDelegate
//
//- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view {
//    if ([view conformsToProtocol:@protocol(JPSThumbnailAnnotationViewProtocol)]) {
//        [((NSObject<JPSThumbnailAnnotationViewProtocol> *)view) didSelectAnnotationViewInMap:mapView];
//    }
//}
//
//- (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)view {
//    if ([view conformsToProtocol:@protocol(JPSThumbnailAnnotationViewProtocol)]) {
//        [((NSObject<JPSThumbnailAnnotationViewProtocol> *)view) didDeselectAnnotationViewInMap:mapView];
//    }
//}
//
//- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation {
//    if ([annotation conformsToProtocol:@protocol(JPSThumbnailAnnotationProtocol)]) {
//        return [((NSObject<JPSThumbnailAnnotationProtocol> *)annotation) annotationViewInMap:mapView];
//    }
//    return nil;
//}




//- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
////    // push the detail view
////    [self performSegueWithIdentifier:@"DetailViewID" sender:self];
//    NSLog(@"annotationView annotation is %@", annotationView.annotation);
//    NSLog(@"annotationView coordinate is %d", annotationView.annotation.coordinate); // アノテーションバルーンのcoordinate(リバースジオコーディングするときの情報)
//    NSLog(@"annotationView title is %@", annotationView.annotation.title); // アノテーションバルーンのtitle
//    NSLog(@" annotationView subtitle is %@", annotationView.annotation.subtitle); // アノテーションバルーンのsubtitle
//}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
