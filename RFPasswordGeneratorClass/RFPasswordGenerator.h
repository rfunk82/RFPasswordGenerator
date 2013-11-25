//
//  RFPasswordGenerator.h
//  RFPasswordGenerator
//
//  Created by Ricardo Funk on 11/25/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFPasswordGenerator : NSObject

+(NSString *)generateLowSecurityPassword;
+(NSString *)generateMediumSecurityPassword;
+(NSString *)generateHighSecurityPassword;

@end
