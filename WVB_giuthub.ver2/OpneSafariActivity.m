//
//  OpneSafariActivity.m
//  WVB
//
//  Created by NexSeed on 13/12/12.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import "OpneSafariActivity.h"

@implementation OpneSafariActivity

@end

-(NSString *)activityType {
    return @"OpenSafariActivity";
}

-(NSString *)activityTitle {
    return @"Safari";
}

-(UIImage *)activityImage {
    UIImage *icon = [UIImage imageNamed:@"scshareicon.png"];
    return icon;
}





- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems{
    return YES;
    
}

- (void)prepareWithActivityItems:(NSArray *)activityItems;{
    NSLog(@"prepare!!");
    
    [super prepareWithActivityItems:activityItems];
    
}

- (UIViewController *)activityViewController{
    return nil;
}

- (void)performActivity{
    
    NSLog(@"perform!!");
    
    // do something with activityItems
    
    [self activityDidFinish:YES];
}

- (void)activityDidFinish:(BOOL)completed{
    NSLog(@"finished!!");
    
    [super activityDidFinish:completed];
}
@end

