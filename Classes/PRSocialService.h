//
//  PRSocialService.h
//  PRSocialDemo
//
//  Created by Elethom Hunter on 5/20/14.
//  Copyright (c) 2014 Project Rhinestone. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PRSocialConfig.h"

typedef void (^PRSocialCallback)(BOOL success, NSDictionary *result);

@interface PRSocialService : NSObject

+ (instancetype)sharedService;

- (void)registerService;

- (void)shareContentWithTitle:(NSString *)title description:(NSString *)description URL:(NSURL *)URL image:(UIImage *)image;
- (void)shareContentWithTitle:(NSString *)title description:(NSString *)description URL:(NSURL *)URL image:(UIImage *)image completion:(PRSocialCallback)completion;

+ (void)handleOpenURL:(NSURL *)URL;
- (void)handleOpenURL:(NSURL *)URL;

@end
