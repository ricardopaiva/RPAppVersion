//
//  RPAppVersion.m
//  Jogo das Palavras
//
//  Created by Ricardo Paiva on 11/03/15.
//
//

#import "RPAppVersion.h"

@implementation RPAppVersion

+ (NSString *)name
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *name = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    return name;
}

+ (NSString *)version
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    return version;
}

+ (NSString *)build
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *build = [infoDictionary objectForKey:@"CFBundleVersion"];
    return build;
}

+ (NSString *)label
{
    NSString *name = [RPAppVersion name];
    NSString *version = [RPAppVersion version];
    NSString *build = [RPAppVersion build];
    NSString *label = [NSString stringWithFormat:@"%@ v%@ (build %@)",
                       name,version,build];
    return label;
}

@end
