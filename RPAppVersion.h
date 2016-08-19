//
//  RPAppVersion.h
//  Jogo das Palavras
//
//  Created by Ricardo Paiva on 11/03/15.
//
//

#import <Foundation/Foundation.h>

@interface RPAppVersion : NSObject

+ (NSString *)name;
+ (NSString *)version;
+ (NSString *)build;
+ (NSString *)label;

/**
 *  Simple method to compare app version with a received version.
 *
 *  @param version <#version description#>
 *
 *  @return <#return value description#>
 */
+ (BOOL)isOlderThanVersion:(NSString *)version;

@end
