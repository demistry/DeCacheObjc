//
//  DeCache.m
//  DeCacheObjc
//
//  Created by David Ilenwabor on 16/08/2021.
//

#import "DeCache.h"
#import "LocalStore.h"

@interface DeCache ()
@property (strong, nonnull) LocalStore *localStore;
@end

/// 
@implementation DeCache

+ (DeCache*)shared
{
    //Singleton instance
    static DeCache *shared;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
        shared.localStore = [[LocalStore alloc] init];
    });
    
    return shared;
}

+(void) saveInt:(NSInteger)value key: (NSString*) key {
    [[LocalStore shared] saveInt:value key:key];
}

+ (void)saveBoolean:(BOOL)value key:(NSString*)key {
    [[LocalStore shared] saveBoolean:value key:key];
}

+ (void)saveString:(NSString *)value key:(NSString *)key {
    [[LocalStore shared] saveString:value key:key];
}

+ (void)saveFloat:(float)value key:(NSString *)key {
    [[LocalStore shared] saveFloat:value key:key];
}

@end
