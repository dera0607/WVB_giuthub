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

//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//    
//    self.MapView.delegate = self;
//    
//    CLLocationCoordinate2D coordinate;
//    coordinate.latitude = 35.68664111;  // 経度
//    coordinate.longitude = 139.6948839;  // 緯度
//    
//    
//    // アノテーションを地図へ追加
//    OwnAnnotation *Annotation = [[OwnAnnotation alloc] init];
//    Annotation.coordinate = coordinate;
//    Annotation.title = @"タイトル";
//    Annotation.subtitle = @"サブタイトル";
//    Annotation.placeImage = [UIImage imageNamed:@"アジア.jpg"];
//    Annotation.selectedArea_Section =[[NSNumber alloc]initWithInteger:1];
//    Annotation.selectedPlace_Row = [[NSNumber alloc] initWithInteger:2];
//
//
//    [self.MapView addAnnotation:Annotation];
//}
//
//
//// アノテーションが表示される時に呼ばれる
//
//-(MKAnnotationView*)mapView:(MKMapView*)mapView viewForAnnotation:(id)annotation{
//  static NSString *PinIdentifier = @"Pin";
//    
//    return annotation;
//    
//    
//    MKPinAnnotationView *PinAnnotationView =
//    (MKPinAnnotationView*)
//    [self.MapView dequeueReusableAnnotationViewWithIdentifier:PinIdentifier];
//    if(PinAnnotationView  == nil){
//        PinAnnotationView  = [[MKPinAnnotationView alloc]
//                              initWithAnnotation:annotation reuseIdentifier:PinIdentifier];
//        PinAnnotationView .animatesDrop = YES;  // アニメーションをする
//        //        PinAnnotationView .pinColor = MKPinAnnotationColorPurple;  // ピンの色を紫にする
//        //        PinAnnotationView.image= [UIImage imageNamed:@"アジア.jpg"];  // アノテーションの画像を指定する？
//        PinAnnotationView .canShowCallout = YES;  // ピンタップ時にコールアウトを表示する
//        PinAnnotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//        //左に画像を表示
//        myImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"アジア.jpg"]];
//        myImageView.frame = CGRectMake (0,0,31,31);
//        PinAnnotationView.leftCalloutAccessoryView = myImageView;
//        
//    }
//    return PinAnnotationView ;
//    
//
//}
//
//-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control{
//    NSLog(@"title: %@", view.annotation.title);
//    NSLog(@"subtitle: %@", view.annotation.subtitle);
//    NSLog(@"coord: %f, %f", view.annotation.coordinate.latitude, view.annotation.coordinate.longitude);
//   
////     DetailViewController *DetailView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewID"];
////    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
////    appDelegete.Pass_NameData = view.annotation.title;
////    appDelegete.Pass_NameImage = myImageView.image;
////    appDelegete.Pass_Area = view.annotation.title;
//    
//    
////        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
//
////    
//////FirstViewと共通のデータを入れていれて遷移？
////    for (int i=1; i<10; i++){
////        if(NameData[i] !=nil){
////            if (view.annotation.subtitle = NameData[i]){
////                for (j=1; j= nil; j++){
////                    if([NameData[i] objectAtIndex:j] !=nil){
////                        if(view.annotation.title = [NameData[i] objectAtIndex:j]){
////                            appDelegate.SelectedSection = i;//ndexPath.section
////                            appDelegate.SelectedRow = j;//indexPath.row
////                            appDelegete.Pass_NameData = [NameData[i] objectAtIndex:j];
////                            appDelegete.Pass_NameImage = [ImageData[i] objectAtIndex:j];
////                            appDelegete.Pass_Area = AreaName[i];
////                        }
////                        else{
////                        }
////                    }
////                    else{
////                        break;
////                    }
////                }
////            }
////            else{
////            }
////        }
////        else{
////            break;
////        }
////    }
////    
//    
// 
//      AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
//    appDelegate.Pass_NameData = view.annotation.title;
//    appDelegate.Pass_NameImage = myImageView.image;
//    appDelegate.Pass_Area = view.annotation.title;
//    
////    
////    NSLog(@"appDelegete.SelectedSection = %d",appDelegete.SelectedSection);
////    NSLog(@"appDelegete.SelectedRow = %d",appDelegete.SelectedRow);
//   
//     [self performSegueWithIdentifier:@"DetailViewID" sender:self];
//}
//
//
//
//
//
//
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//
//
//






- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.MapView.delegate = self;
    
    //    // Annotations
    //    [self.MapView addAnnotations:[self generateAnnotations]];
    
    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];

    
    // アノテーションを地図へ追加
    //Asia1
    OwnAnnotation *An_Asia1_Tibet = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Tibet;
    co_Tibet.latitude = 91.140855;  // 経度
    co_Tibet.longitude = 29.645554;  // 緯度
    An_Asia1_Tibet.coordinate = co_Tibet;
    NSLog(@"co_Tibet.latitude=%f",co_Tibet.latitude);
    
    OwnAnnotation *An_Asia1_Ladakh = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Ladakh;
    co_Ladakh.latitude = 77.474663;  // 経度
    co_Ladakh.longitude = 34.133831;  // 緯度
    An_Asia1_Ladakh.coordinate = co_Ladakh;
    
    OwnAnnotation *An_Asia1_Varanasi = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Varanasi;
    co_Varanasi.latitude = 82.973914;  // 経度
    co_Varanasi.longitude = 25.317645;  // 緯度
    An_Asia1_Varanasi.coordinate = co_Varanasi;
    
    OwnAnnotation *An_Asia1_Jodhpur = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Jodhpur;
    co_Jodhpur.latitude = 73.024309;  // 経度
    co_Jodhpur.longitude = 26.238946;  // 緯度
    An_Asia1_Jodhpur.coordinate = co_Jodhpur;
    
    OwnAnnotation *An_Asia1_Phnompenh = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Phnompenh;
    co_Phnompenh.latitude = 104.917445;  // 経度
    co_Phnompenh.longitude = 11.558830;  // 緯度
    An_Asia1_Phnompenh.coordinate = co_Phnompenh;
    
    _Annotation_Asia1 = [@[An_Asia1_Tibet, An_Asia1_Ladakh, An_Asia1_Varanasi,An_Asia1_Jodhpur,An_Asia1_Phnompenh]mutableCopy];
    
    OwnAnnotation *temp1 = _Annotation_Asia1[1];
    NSLog(@"temp1=%f",temp1.coordinate.latitude);

    
    //NorthAmerica2
    OwnAnnotation *An_NorthAmerica2_Yellowstone = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Yellowstone;
    co_Yellowstone.latitude = -108.434381;  // 経度
    co_Yellowstone.longitude = 45.785657;  // 緯度
    An_NorthAmerica2_Yellowstone.coordinate = co_Yellowstone;
    
    OwnAnnotation *An_NorthAmerica2_MonumentValley = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_MonumentValley;
    co_MonumentValley.latitude = -108.434381;  // 経度
    co_MonumentValley.longitude = 45.785657;  // 緯度
    An_NorthAmerica2_MonumentValley.coordinate = co_MonumentValley;
    
    _Annotation_NorthAmerica2 = [@[An_NorthAmerica2_Yellowstone, An_NorthAmerica2_MonumentValley ]mutableCopy];
 
    
    //SouthAmerica3
    OwnAnnotation *An_SouthAmerica3_Uyuni = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Uyuni;
    co_Uyuni.latitude = -66.824967;  // 経度
    co_Uyuni.longitude = -20.460350;  // 緯度
    An_SouthAmerica3_Uyuni.coordinate = co_Uyuni;
    
    OwnAnnotation *An_SouthAmerica3_MachuPicchu = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_MachuPicchu;
    co_MachuPicchu.latitude = -72.545861;  // 経度
    co_MachuPicchu.longitude = -13.163587;  // 緯度
    An_SouthAmerica3_MachuPicchu.coordinate = co_MachuPicchu;
    
    OwnAnnotation *An_SouthAmerica3_PeritoMoreno = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_PeritoMoreno;
    co_PeritoMoreno.latitude = -73.234167;  // 経度
    co_PeritoMoreno.longitude = -50.330556;  // 緯度
    An_SouthAmerica3_PeritoMoreno.coordinate = co_PeritoMoreno;
    
    OwnAnnotation *An_SouthAmerica3_Atacama = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Atacama;
    co_Atacama.latitude = -70.050315;  // 経度
    co_Atacama.longitude = -27.566056;  // 緯度
    An_SouthAmerica3_Atacama.coordinate = co_Atacama;
    
    OwnAnnotation *An_SouthAmerica3_Roraima = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Roraima;
    co_Roraima.latitude = -60.762500;  // 経度
    co_Roraima.longitude = 5.143333;  // 緯度
    An_SouthAmerica3_Roraima.coordinate = co_Roraima;
    
    _Annotation_SouthAmerica3 = [@[An_SouthAmerica3_Uyuni, An_SouthAmerica3_MachuPicchu, An_SouthAmerica3_PeritoMoreno, An_SouthAmerica3_Atacama, An_SouthAmerica3_Roraima]mutableCopy];

    
    //Eourope4
    OwnAnnotation *An_Eourope4_Alps = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Alps;
    co_Alps.latitude = 8.600803;  // 経度
    co_Alps.longitude = 39.528184;  // 緯度
    An_Eourope4_Alps.coordinate = co_Alps;
    
    OwnAnnotation *An_Eourope4_Navagio = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Navagio;
    co_Navagio.latitude = 20.624900;  // 経度
    co_Navagio.longitude = 37.859464;  // 緯度
    An_Eourope4_Navagio.coordinate = co_Navagio;
    
    OwnAnnotation *An_Eourope4_Dubrovnik = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Dubrovnik;
    co_Dubrovnik.latitude = 18.094423;  // 経度
    co_Dubrovnik.longitude = 42.650660;  // 緯度
    An_Eourope4_Dubrovnik.coordinate = co_Dubrovnik;
    
    _Annotation_Eourope4 = [@[An_Eourope4_Alps, An_Eourope4_Navagio, An_Eourope4_Dubrovnik ]mutableCopy];
    
    
    //Africa5
    OwnAnnotation *An_Africa5_Sahara = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Sahara;
    co_Sahara.latitude = 18.094423;  // 経度
    co_Sahara.longitude = 42.650660;  // 緯度
    An_Africa5_Sahara.coordinate = co_Sahara;
    
    OwnAnnotation *An_Africa5_Baobab = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Baobab;
    co_Baobab.latitude = 44.291896;  // 経度
    co_Baobab.longitude = -20.291494;  // 緯度
    An_Africa5_Baobab.coordinate = co_Baobab;
    
    _Annotation_Africa5 = [@[An_Africa5_Sahara, An_Africa5_Baobab]mutableCopy];

    
    //Oceania6
    OwnAnnotation *An_Oceania6_AyersRock = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_AyersRock;
    co_AyersRock.latitude = 131.034879;  // 経度
    co_AyersRock.longitude = -25.345371;  // 緯度
    An_Oceania6_AyersRock.coordinate = co_AyersRock;
    
    OwnAnnotation *An_Oceania6_GreatOceanRoad = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_GreatOceanRoad;
    co_GreatOceanRoad.latitude = 131.034879;  // 経度
    co_GreatOceanRoad.longitude = -25.345371;  // 緯度
    An_Oceania6_GreatOceanRoad.coordinate = co_GreatOceanRoad;
    
    _Annotation_Oceania6 = [@[An_Oceania6_AyersRock, An_Oceania6_GreatOceanRoad]mutableCopy];
 
    
    _Annotation = [@[_Annotation_Asia1, _Annotation_NorthAmerica2,_Annotation_SouthAmerica3, _Annotation_Eourope4, _Annotation_Africa5, _Annotation_Oceania6]mutableCopy];

    temp1 = [_Annotation[2] objectAtIndex:1];
    NSLog(@"temp1=%f",temp1.coordinate.latitude);
    
//    //AroundTheWorld7
//    OwnAnnotation *An_AroundTheWorld7_AroundtheWorld = [[OwnAnnotation alloc] init];
//    OwnAnnotation *An_AroundTheWorld7_Asia = [[OwnAnnotation alloc] init];
//    
//    _Annotation_AroundTheWorld7 = [@[An_AroundTheWorld7_AroundtheWorld, An_AroundTheWorld7_Asia]mutableCopy];
    

    
    
    
//あとは経度緯度を入れていけば、for文でまわしてなんとかなる？
    for (int i=1; i<10; i++){
        if(_Annotation[i] !=nil){
               for (int j=1; j< 10; j++){
                    if([_Annotation[i] objectAtIndex:j] !=nil){
                        NSLog(@"for文の中はいりました");
                        _Annotation[i][j].title = [appDelegete.NameData[i] objectAtIndex:j];
                        
//                        NSLog(@"appDelegate使ってタイトルいれました");
//                        tempAnnotation[i][j].subtitle = [appDelegete.subNameData[i] objectAtIndex:j];
//                        NSLog(@"appDelegate使ってサブタイトルいれました");
//                        tempAnnotation[i][j].placeImage = [appDelegete.ImageData[i] objectAtIndex:j];
//                        NSLog(@"appDelegate使って画像いれました");
//                        tempAnnotation[i][j].selectedArea_Section =[[NSNumber alloc]initWithInteger:i];
//                        NSLog(@"tempのselectedArea_Sectionにi入れました");
//                        tempAnnotation[i][j].selectedPlace_Row = [[NSNumber alloc] initWithInteger:j];
//                        NSLog(@"tempのselectedArea_Rowにj入れました");
//                        
//                        _Annotation[i][j] = tempAnnotation[i][j];
//                        NSLog(@"tempのselectedArea_Rowにj入れました");
////                       [_Annotation[i] objectAtIndex:j] = tempAnnotation;
                        [self.MapView addAnnotation:_Annotation[i][j]];
                        NSLog(@"for文一周しました");
                        
//                        [_Annotation[i] objectAtIndex:j].subtitle = [[NSString alloc]initWithstring: [appDelegete.subNameData[i] objectAtIndex:j]];
//                        [_Annotation[i] objectAtIndex:j].placeImage = [appDelegete.ImageData[i] objectAtIndex:j];
//                        [_Annotation[i] objectAtIndex:j].selectedArea_Section =[[NSNumber alloc]initWithInteger:i];
//                        [_Annotation[i] objectAtIndex:j].selectedPlace_Row = [[NSNumber alloc] initWithInteger:j];
                        
                        
                        }
                        else{
                            break;
                        }
                    }
        }
        else{
            break;
        }
    }
    
    NSLog(@"データ入れ込みfor文終了！");
    
    
    
//    //例
//    OwnAnnotation *Annotation = [[OwnAnnotation alloc] init];
//    CLLocationCoordinate2D coordinate;
//    coordinate.latitude = 35.68664111;  // 経度
//    coordinate.longitude = 139.6948839;  // 緯度
//    Annotation.coordinate = coordinate;
//    Annotation.title = @"タイトル";
//    Annotation.subtitle = @"サブタイトル";
//    Annotation.placeImage = [UIImage imageNamed:@"アジア.jpg"];
//    Annotation.selectedArea_Section =[[NSNumber alloc]initWithInteger:1];
//    Annotation.selectedPlace_Row = [[NSNumber alloc] initWithInteger:2];
//
//    [self.MapView addAnnotation:Annotation];
//    
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
        //        PinAnnotationView.image= [UIImage imageNamed:@"アジア.jpg"];  // アノテーションの画像を指定する？
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
    //    appDelegete.SelectedSection = indexPath.section;
    //    appDelegete.SelectedRow = indexPath.row;
    
    
    
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
