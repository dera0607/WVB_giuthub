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
    
    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];

    
    // アノテーションを地図へ追加
    //Asia1
    OwnAnnotation *An_Asia1_Tibet = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Tibet;
    co_Tibet.longitude = 91.140855;  // 経度
    co_Tibet.latitude = 29.645554;  // 緯度
    An_Asia1_Tibet.coordinate = co_Tibet;
    NSLog(@"co_Tibet.latitude=%f",co_Tibet.latitude);
    
    OwnAnnotation *An_Asia1_Ladakh = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Ladakh;
    co_Ladakh.longitude = 77.474663;  // 経度
    co_Ladakh.latitude = 34.133831;  // 緯度
    An_Asia1_Ladakh.coordinate = co_Ladakh;
    
    OwnAnnotation *An_Asia1_Varanasi = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Varanasi;
    co_Varanasi.longitude = 82.973914;  // 経度
    co_Varanasi.latitude = 25.317645;  // 緯度
    An_Asia1_Varanasi.coordinate = co_Varanasi;
    
    OwnAnnotation *An_Asia1_Jodhpur = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Jodhpur;
    co_Jodhpur.longitude = 73.024309;  // 経度
    co_Jodhpur.latitude = 26.238946;  // 緯度
    An_Asia1_Jodhpur.coordinate = co_Jodhpur;
    
    OwnAnnotation *An_Asia1_Phnompenh = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Phnompenh;
    co_Phnompenh.longitude = 104.917445;  // 経度
    co_Phnompenh.latitude = 11.558830;  // 緯度
    An_Asia1_Phnompenh.coordinate = co_Phnompenh;
    
    _Annotation_Asia1 = [@[An_Asia1_Tibet, An_Asia1_Ladakh, An_Asia1_Varanasi,An_Asia1_Jodhpur,An_Asia1_Phnompenh]mutableCopy];
    
    OwnAnnotation *temp1 = _Annotation_Asia1[1];
    NSLog(@"temp1=%f",temp1.coordinate.latitude);

    
    //NorthAmerica2
    OwnAnnotation *An_NorthAmerica2_Yellowstone = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Yellowstone;
    co_Yellowstone.longitude = -108.434381;  // 経度
    co_Yellowstone.latitude = 45.785657;  // 緯度
    An_NorthAmerica2_Yellowstone.coordinate = co_Yellowstone;
    
    OwnAnnotation *An_NorthAmerica2_MonumentValley = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_MonumentValley;
    co_MonumentValley.longitude = -109.834796;  // 経度
    co_MonumentValley.latitude = 36.988501;  // 緯度
    An_NorthAmerica2_MonumentValley.coordinate = co_MonumentValley;
    
    _Annotation_NorthAmerica2 = [@[An_NorthAmerica2_Yellowstone, An_NorthAmerica2_MonumentValley ]mutableCopy];
 
    
    //SouthAmerica3
    OwnAnnotation *An_SouthAmerica3_Uyuni = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Uyuni;
    co_Uyuni.longitude = -66.824967;  // 経度
    co_Uyuni.latitude = -20.460350;  // 緯度
    An_SouthAmerica3_Uyuni.coordinate = co_Uyuni;
    
    OwnAnnotation *An_SouthAmerica3_MachuPicchu = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_MachuPicchu;
    co_MachuPicchu.longitude = -72.545861;  // 経度
    co_MachuPicchu.latitude = -13.163587;  // 緯度
    An_SouthAmerica3_MachuPicchu.coordinate = co_MachuPicchu;
    
    OwnAnnotation *An_SouthAmerica3_PeritoMoreno = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_PeritoMoreno;
    co_PeritoMoreno.longitude = -73.234167;  // 経度
    co_PeritoMoreno.latitude = -50.330556;  // 緯度
    An_SouthAmerica3_PeritoMoreno.coordinate = co_PeritoMoreno;
    
    OwnAnnotation *An_SouthAmerica3_Atacama = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Atacama;
    co_Atacama.longitude = -70.050315;  // 経度
    co_Atacama.latitude = -27.566056;  // 緯度
    An_SouthAmerica3_Atacama.coordinate = co_Atacama;
    
    OwnAnnotation *An_SouthAmerica3_Roraima = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Roraima;
    co_Roraima.longitude = -60.762500;  // 経度
    co_Roraima.latitude = 5.143333;  // 緯度
    An_SouthAmerica3_Roraima.coordinate = co_Roraima;
    
    _Annotation_SouthAmerica3 = [@[An_SouthAmerica3_Uyuni, An_SouthAmerica3_MachuPicchu, An_SouthAmerica3_PeritoMoreno, An_SouthAmerica3_Atacama, An_SouthAmerica3_Roraima]mutableCopy];

    
    //Eourope4
    OwnAnnotation *An_Eourope4_Alps = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Alps;
    co_Alps.longitude = 8.600803;  // 経度
    co_Alps.latitude = 39.528184;  // 緯度
    An_Eourope4_Alps.coordinate = co_Alps;
    
    OwnAnnotation *An_Eourope4_Navagio = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Navagio;
    co_Navagio.longitude = 20.624900;  // 経度
    co_Navagio.latitude = 37.859464;  // 緯度
    An_Eourope4_Navagio.coordinate = co_Navagio;
    
    OwnAnnotation *An_Eourope4_Dubrovnik = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Dubrovnik;
    co_Dubrovnik.longitude = 18.094423;  // 経度
    co_Dubrovnik.latitude = 42.650660;  // 緯度
    An_Eourope4_Dubrovnik.coordinate = co_Dubrovnik;
    
    _Annotation_Eourope4 = [@[An_Eourope4_Alps, An_Eourope4_Navagio, An_Eourope4_Dubrovnik ]mutableCopy];
    
    
    //Africa5
    OwnAnnotation *An_Africa5_Sahara = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Sahara;
    co_Sahara.longitude = 11.291889;  // 経度
    co_Sahara.latitude = 23.803496;  // 緯度
    An_Africa5_Sahara.coordinate = co_Sahara;
    
    OwnAnnotation *An_Africa5_Baobab = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_Baobab;
    co_Baobab.longitude = 44.291896;  // 経度
    co_Baobab.latitude = -20.291494;  // 緯度
    An_Africa5_Baobab.coordinate = co_Baobab;
    
    _Annotation_Africa5 = [@[An_Africa5_Sahara, An_Africa5_Baobab]mutableCopy];

    
    //Oceania6
    OwnAnnotation *An_Oceania6_AyersRock = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_AyersRock;
    co_AyersRock.longitude = 131.034879;  // 経度
    co_AyersRock.latitude = -25.345371;  // 緯度
    An_Oceania6_AyersRock.coordinate = co_AyersRock;
    
    OwnAnnotation *An_Oceania6_GreatOceanRoad = [[OwnAnnotation alloc] init];
    CLLocationCoordinate2D co_GreatOceanRoad;
    co_GreatOceanRoad.longitude = 143.391405;  // 経度
    co_GreatOceanRoad.latitude = -38.680463;  // 緯度
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
    

    
    
   
//appDelegateのデータをannotationに入れていく！
    for (int i=0; i<[_Annotation count]; i++){
        if(_Annotation[i] !=nil){
               for (int j=0; j< [_Annotation[i] count]; j++){
                    if([_Annotation[i] objectAtIndex:j] !=nil){
                         NSLog(@"i= %d j=%dのfor文の中はいりました", i,j);
//                         [_Annotation[i][j] title] = [appDelegete.NameData[i] objectAtIndex:j];
                        [[_Annotation[i] objectAtIndex:j] setTitle:[appDelegete.NameData[i] objectAtIndex:j]];
                        NSLog(@"appDelegate使ってタイトル%@を入れました", [[_Annotation[i] objectAtIndex:j] title]);
                        [[_Annotation[i] objectAtIndex:j] setSubtitle:[appDelegete.subNameData[i] objectAtIndex:j]];
                        NSLog(@"appDelegate使ってサブタイトル%@いれました",[[_Annotation[i] objectAtIndex:j] subtitle]);
                        [[_Annotation[i] objectAtIndex:j] setPlaceImage:[appDelegete.ImageData[i] objectAtIndex:j]];
                        NSLog(@"appDelegate使って画像いれました");
                        [[_Annotation[i] objectAtIndex:j] setSelectedArea_Section:[[NSNumber alloc]initWithInteger:i]];
                        NSLog(@"アノテーションにSelectedArea_Section i=%dの%@入れました",i,[[_Annotation[i] objectAtIndex:j] selectedArea_Section]);
                         [[_Annotation[i] objectAtIndex:j] setSelectedPlace_Row:[[NSNumber alloc]initWithInteger:j]];
                        NSLog(@"アノテーションにSelectedPlace_Row j=%dの%@入れました",j,[[_Annotation[i] objectAtIndex:j] selectedPlace_Row]);
                        [self.MapView addAnnotation:[_Annotation[i] objectAtIndex:j]];
                        NSLog(@"for文一周しました");
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
//    NSLog(@"%@",[[_Annotation[0] objectAtIndex:0] title]);
//    NSLog(@"%@",[[_Annotation[0] objectAtIndex:0] subtitle]);
//    NSLog(@"%@",[[_Annotation[0] objectAtIndex:0] placeImage]);
//    NSLog(@"%@",[[_Annotation[0] objectAtIndex:0] selectedArea_Section]);
//    NSLog(@"%@",[[_Annotation[0] objectAtIndex:0] selectedPlace_Row]);
//    CLLocationCoordinate2D co_temp;
//    co_temp = [[_Annotation[0] objectAtIndex:0] coordinate];
//    NSLog(@"latitude=%f, longtitude = %f",co_temp.latitude, co_temp.longitude);
    
    
//    OwnAnnotation *temp_Annotation = [[OwnAnnotation alloc] init];
//    temp_Annotation.title = [[_Annotation[0] objectAtIndex:0] title];
//    temp_Annotation.subtitle = [[_Annotation[0] objectAtIndex:0] subtitle];
//    temp_Annotation.placeImage = [[_Annotation[0] objectAtIndex:0] placeImage];
//    temp_Annotation.selectedArea_Section = [[_Annotation[0] objectAtIndex:0] selectedArea_Section];
//    temp_Annotation.selectedPlace_Row = [[_Annotation[0] objectAtIndex:0] selectedPlace_Row];
//    temp_Annotation.coordinate = [[_Annotation[0] objectAtIndex:0] coordinate];
//    [self.MapView addAnnotation:temp_Annotation];
//    NSLog(@"表示されるはずなのにー");
    
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
          viewForAnnotation:(id)OwnAnnotation{
    NSLog(@"viewAnnotationに入りました！");
    
    static NSString *PinIdentifier = @"Pin";
    
    MKPinAnnotationView *PinAnnotationView = (MKPinAnnotationView*)[self.MapView dequeueReusableAnnotationViewWithIdentifier:PinIdentifier];
        NSLog(@"if文入る前");
    if(PinAnnotationView  == nil){
        NSLog(@"PinAnnotationViewがnil");
        PinAnnotationView  = [[MKPinAnnotationView alloc]
                              initWithAnnotation:OwnAnnotation reuseIdentifier:PinIdentifier];
        PinAnnotationView .animatesDrop = YES;  // アニメーションをする
        NSLog(@"アニメーションしましたー");
        //        PinAnnotationView .pinColor = MKPinAnnotationColorPurple;  // ピンの色を紫にする
        PinAnnotationView .canShowCallout = YES;  // ピンタップ時にコールアウトを表示する
        PinAnnotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
        //左に画像を表示
        myImageView = [[UIImageView alloc] initWithImage:[OwnAnnotation placeImage]];
        myImageView.frame = CGRectMake (0,0,31,31);
        PinAnnotationView.leftCalloutAccessoryView = myImageView;
        n_selectedArea_Section = [NSNumber alloc];
        n_setSelectedPlace_Row = [NSNumber alloc];
        n_selectedArea_Section = [OwnAnnotation selectedArea_Section];
        n_setSelectedPlace_Row = [OwnAnnotation selectedPlace_Row];
        NSLog(@"タイトル：%@\n サブタイトル%@\n n_selectedArea_Section=%@, [OwnAnnotation selectedArea_Section]=%@", [OwnAnnotation title], [OwnAnnotation subtitle],n_selectedArea_Section,[OwnAnnotation selectedArea_Section]);
        NSLog(@"n_setSelectedPlace_Row=%@, [OwnAnnotation selectedPlace_Row]=%@", n_setSelectedPlace_Row,[OwnAnnotation selectedPlace_Row]);
        
        NSLog(@"PinView全部終わるー");
        
    }
    else{
    }
    
    return PinAnnotationView ;
    NSLog(@"PinView返しました");
    
}

-(void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control{
    NSLog(@"title: %@", view.annotation.title);
    NSLog(@"subtitle: %@", view.annotation.subtitle);
    NSLog(@"coord: %f, %f", view.annotation.coordinate.latitude, view.annotation.coordinate.longitude);

    
    for (NSMutableArray *AreaAnnotation in _Annotation) {
        for (OwnAnnotation *PlaceAnnotation in AreaAnnotation){
            NSLog(@"%@", [PlaceAnnotation description]);
            if([PlaceAnnotation.title isEqualToString:view.annotation.title]){
                NSLog(@"%@", [PlaceAnnotation description]);
                AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
                appDelegate.SelectedSection = [_Annotation indexOfObject:AreaAnnotation];
                appDelegate.SelectedRow = [AreaAnnotation indexOfObject:PlaceAnnotation];
                appDelegate.Pass_NameData = PlaceAnnotation.title;
                appDelegate.Pass_NameImage = PlaceAnnotation.placeImage;
                appDelegate.Pass_Area = PlaceAnnotation.subtitle;
            }

            
        }
    }
    
        
     
    
    DetailViewController *DetailView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewID"];
    //DetailViewControllerクラス（StoryBoardの右で設定）のSecondVewControllerを作成し、IDがsecondVewController（StoryBoardの右で設定）と一致するものと結びつける。セグウェイで繋がっていないので、DetailViewControllerのID一致必要。
    
//    
//    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
//    appDelegate.Pass_NameData = view.annotation.title;
//    appDelegate.Pass_NameImage = myImageView.image;
//    appDelegate.Pass_Area = view.annotation.subtitle;
////    appDelegate.SelectedSection = n_selectedArea_Section;
////    appDelegate.SelectedSection = [[int alloc] NSNumberiwthint:n_selectedArea_Section];
////    appDelegate.SelectedSection = [[int alloc] initWithNSnumber:[n_selectedArea_Section intValue]];
////    appDelegate.SelectedSection = [int alloc];
//    appDelegate.SelectedSection =[n_selectedArea_Section intValue];
////    appDelegate.SelectedRow = [int alloc]
//    appDelegate.SelectedRow = [n_setSelectedPlace_Row intValue];
////    appDelegate.SelectedRow = n_setSelectedPlace_Row;
//    
//    NSLog(@"appDelegateにデータ移しました！");
//    NSLog(@"appDelegete.Pass_NameData = %@",appDelegate.Pass_NameData);
//    NSLog(@"appDelegete.Pass_NameImage = %@",appDelegate.Pass_NameImage);
//    NSLog(@"appDelegete.Pass_Area = %@",appDelegate.Pass_Area);
//    NSLog(@"appDelegete.SelectedSection = %d",appDelegate.SelectedSection);
//    NSLog(@"appDelegete.SelectedRow = %d",appDelegate.SelectedRow);

    [self.navigationController pushViewController:DetailView animated:YES];
    
    
    //    AppDelegate *appDelegete = [[UIApplication sharedApplication] delegate];
    //    appDelegete.Pass_NameData = [NameData[indexPath.section] objectAtIndex:indexPath.row];
    //    appDelegete.Pass_NameImage = [ImageData[indexPath.section] objectAtIndex:indexPath.row];
    //    appDelegete.Pass_Area = AreaName[indexPath.section];
    //    NSLog(@"indexPath.section = %d",indexPath.section);
    //    NSLog(@"indexPath.row = %d",indexPath.row);
    
    //DetailViewControllerの本のデータ取得用
    //    appDelegete.SelectedSection = indexPath.section;
    //    appDelegete.SelectedRow = indexPath.row;
    
    
  
    
//    //tableViewの遷移のとき
//    DetailViewController *DetailView = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewID"];
//    //DetailViewControllerクラス（StoryBoardの右で設定）のSecondVewControllerを作成し、IDがsecondVewController（StoryBoardの右で設定）と一致するものと結びつける。セグウェイで繋がっていないので、DetailViewControllerのID一致必要。
//    
//    
//    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
//    appDelegate.Pass_NameData = [appDelegate.NameData[indexPath.section] objectAtIndex:indexPath.row];
//    appDelegate.Pass_NameImage = [appDelegate.ImageData[indexPath.section] objectAtIndex:indexPath.row];
//    appDelegate.Pass_Area = appDelegate.AreaName[indexPath.section];
//    
//    NSLog(@"indexPath.section = %d",indexPath.section);
//    NSLog(@"indexPath.row = %d",indexPath.row);
//    
//    //DetailViewControllerの本のデータ取得用
//    appDelegate.SelectedSection = indexPath.section;
//    appDelegate.SelectedRow = indexPath.row;
//    
//    
//    
//    NSLog(@"appDelegete.SelectedSection = %d",appDelegate.SelectedSection);
//    NSLog(@"appDelegete.SelectedRow = %d",appDelegate.SelectedRow);
//    
//    //tabBarを隠す
//    self.hidesBottomBarWhenPushed = YES;
//    
//    [self.navigationController pushViewController:DetailView animated:YES];
//    
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];//選択解除

    
    
    

    
//    [self performSegueWithIdentifier:@"DetailViewID" sender:self];
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
