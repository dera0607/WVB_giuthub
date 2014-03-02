//
//  SecondViewController.m
//  140302TravelAndBook
//
//  Created by NexSeed on 2014/03/02.
//  Copyright (c) 2014年 NexSeed. All rights reserved.
//

#import "SecondViewController.h"
#import "JPSThumbnailAnnotation.h"
#import "OwnAnnotation.h"
#import "DetailViewController.h"
#import "AppDelegate.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.MapView.delegate = self;
    
//    // Annotations
//    [self.MapView addAnnotations:[self generateAnnotations]];

    
    CLLocationCoordinate2D coordinate;
    coordinate.latitude = 35.68664111;  // 経度
    coordinate.longitude = 139.6948839;  // 緯度
    
    
    // アノテーションを地図へ追加
    OwnAnnotation *Annotation = [[OwnAnnotation alloc] init];
    Annotation.coordinate = coordinate;
    Annotation.title = @"タイトル";
    Annotation.subtitle = @"サブタイトル";
    [self.MapView addAnnotation:Annotation];

}

//-(MKAnnotationView*)mapView:(MKMapView*)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
//    
//    MKAnnotationView *annotationView;
//    NSString* identifier = @"Pin";
//    annotationView = (MKAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:identifier];
//    if(nil == annotationView) {
//        annotationView = [[MKAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:identifier];
//    }
//    annotationView.image = [UIImage imageNamed:@"2012.png"];
//    annotationView.canShowCallout = YES;
//    annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//    annotationView.annotation = annotation;
//    
//    return annotationView;  
//}

//- (void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views {
//    // add detail disclosure button to callout
//    [views enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL* stop) {
//        ((MKAnnotationView*)obj).rightCalloutAccessoryView
//        = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//    }];
//}

// アノテーションが表示される時に呼ばれる
-(MKAnnotationView*)mapView:(MKMapView*)mapView
          viewForAnnotation:(id)annotation{
    
    static NSString *PinIdentifier = @"Pin";
//    MKAnnotationView *AnnotationView =(MKAnnotationView*)[self.MapView dequeueReusableAnnotationViewWithIdentifier:PinIdentifier];
//    if(AnnotationView  == nil){
//        AnnotationView  = [[MKAnnotationView alloc]
//               initWithAnnotation:annotation reuseIdentifier:PinIdentifier];
//        AnnotationView .image = [UIImage imageNamed:@"2012.png"];  // アノテーションの画像を指定する
//                AnnotationView .canShowCallout = YES;  // ピンタップ時にコールアウトを表示する
//    }
//    return AnnotationView;
    
    MKPinAnnotationView *PinAnnotationView =
    (MKPinAnnotationView*)
    [self.MapView dequeueReusableAnnotationViewWithIdentifier:PinIdentifier];
    if(PinAnnotationView  == nil){
        PinAnnotationView  = [[MKPinAnnotationView alloc]
                initWithAnnotation:annotation reuseIdentifier:PinIdentifier];
        PinAnnotationView .animatesDrop = YES;  // アニメーションをする
//        PinAnnotationView .pinColor = MKPinAnnotationColorPurple;  // ピンの色を紫にする
        PinAnnotationView.image= [UIImage imageNamed:@"アジア.jpg"];  // アノテーションの画像を指定する？
        PinAnnotationView .canShowCallout = YES;  // ピンタップ時にコールアウトを表示する
        PinAnnotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        //左に画像を表示
        myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"アジア.jpg"]];
        myImageView.frame = CGRectMake (0,0,31,31);
        PinAnnotationView.leftCalloutAccessoryView = myImageView;
        
    }
    return PinAnnotationView ;

}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control{
    NSLog(@"title: %@", view.annotation.title);
    NSLog(@"subtitle: %@", view.annotation.subtitle);
    NSLog(@"coord: %f, %f", view.annotation.coordinate.latitude, view.annotation.coordinate.longitude);
    
    
    DetailViewController *DetailView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewID"];
    //DetailViewControllerクラス（StoryBoardの右で設定）のSecondVewControllerを作成し、IDがsecondVewController（StoryBoardの右で設定）と一致するものと結びつける。セグウェイで繋がっていないので、DetailViewControllerのID一致必要。
    
    
    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
    appDelegete.Pass_NameData = view.annotation.title;
    appDelegete.Pass_NameImage = myImageView.image;
    appDelegete.Pass_Area = view.annotation.title;
    
    
//    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
//    appDelegete.Pass_NameData = [NameData[indexPath.section] objectAtIndex:indexPath.row];
//    appDelegete.Pass_NameImage = [ImageData[indexPath.section] objectAtIndex:indexPath.row];
//    appDelegete.Pass_Area = AreaName[indexPath.section];
//    NSLog(@"indexPath.section = %d",indexPath.section);
//    NSLog(@"indexPath.row = %d",indexPath.row);
    
    //DetailViewControllerの本のデータ取得用
    appDelegete.SelectedSection = indexPath.section;
    appDelegete.SelectedRow = indexPath.row;
    
    
    
    NSLog(@"appDelegete.SelectedSection = %d",appDelegete.SelectedSection);
    NSLog(@"appDelegete.SelectedRow = %d",appDelegete.SelectedRow);
    
     [self performSegueWithIdentifier:@"DetailViewID" sender:self];
}

// class MapViewController？？ビューを外す？フォーカスを外す？
- (void)mapView:(MKMapView *)mapView didDeselectAnnotationView:(MKAnnotationView *)view {
    view.rightCalloutAccessoryView
    = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
}

//// class MapViewController選択されたとき？
//-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
//    // create right accessory view
//    UILabel* sample = [[UILabel alloc] initWithFrame:CGRectMake(0.f, 0.f, 100.f, 32.f)];
//    sample.backgroundColor = [UIColor clearColor];
//    sample.font = [UIFont fontWithName:@"Helvetica" size: 13];
//    sample.text = ((CustomAnnotation*)view.annotation).sample;
//    sample.textColor = [UIColor whiteColor];
//    
//    // add view to callout
//    view.rightCalloutAccessoryView = nil; // ??
//    view.rightCalloutAccessoryView = sample;
//}


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
