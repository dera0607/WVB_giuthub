//
//  SafariActivity.m
//  WVB
//
//  Created by NexSeed on 13/12/13.
//  Copyright (c) 2013年 NexSeed. All rights reserved.
//

#import "SafariActivity.h"

@implementation SafariActivity

{
    NSURL *_URL;
}

- (NSString *)activityType
{
    return NSStringFromClass([self class]);
}

- (NSString *)activityTitle
{
    return NSLocalizedStringFromTable(@"Open in Safari", @"TUSafariActivity", nil);
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"Safari.png"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    for (id activityItem in activityItems) {
        if ([activityItem isKindOfClass:[NSURL class]] && [[UIApplication sharedApplication] canOpenURL:activityItem]) {
            return YES;
        }
    }
    
    return NO;
}

- (void)prepareWithActivityItems:(NSArray *)activityItems
{
    for (id activityItem in activityItems) {
        if ([activityItem isKindOfClass:[NSURL class]]) {
            _URL = activityItem;
        }
    }
}

- (void)performActivity
{
    BOOL completed = [[UIApplication sharedApplication] openURL:_URL];
    
    [self activityDidFinish:completed];
}

@end