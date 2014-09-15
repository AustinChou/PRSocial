//
//  PRWeiboOAuth.m
//  PRSocialDemo
//
//  Created by Elethom Hunter on 5/20/14.
//  Copyright (c) 2014 Project Rhinestone. All rights reserved.
//

#import "PRWeiboOAuth.h"

@implementation PRWeiboOAuth

- (NSDictionary *)webViewAuthRequestDictionary
{
    NSMutableDictionary *webViewAuthRequestDictionary = super.webViewAuthRequestDictionary.mutableCopy;
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
        [webViewAuthRequestDictionary setValue:@"mobile" forKey:@"display"];
    } else {
        [webViewAuthRequestDictionary setValue:@"default" forKey:@"display"];
    }
    return webViewAuthRequestDictionary;
}

- (NSDictionary *)codeAuthRequestDictionary
{
    NSDictionary *requestDictionary = @{
                                        @"client_id": self.clientID,
                                        @"client_secret": self.clientSecret,
                                        @"redirect_uri": self.redirectURI,
                                        @"grant_type": @"authorization_code",
                                        @"code": self.code
                                        };
    return requestDictionary;
}

- (NSString *)authorizeLink
{
    return @"https://api.weibo.com/oauth2/authorize";
}

- (NSString *)accessTokenLink
{
    return @"https://api.weibo.com/oauth2/access_token";
}

@end
