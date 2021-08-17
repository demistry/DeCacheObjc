//
//  DeCache.m
//  DeCacheObjc
//
//  Created by David Ilenwabor on 16/08/2021.
//

#import "DeCache.h"
#import "LocalStore.h"
#import "DeCacheKey.h"

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

+(void) saveInt:(NSInteger)value key:(id<DeCacheKey>)key {
    
    [[LocalStore shared] saveInt:value key:key.keyLiteral];
}

+ (void)saveBoolean:(BOOL)value key:(id<DeCacheKey>)key {
    [[LocalStore shared] saveBoolean:value key:key.keyLiteral];
}

+ (void)saveString:(NSString *)value key:(id<DeCacheKey>)key {
    [[LocalStore shared] saveString:value key:key.keyLiteral];
}

+ (void)saveFloat:(float)value key:(id<DeCacheKey>)key {
    [[LocalStore shared] saveFloat:value key:key.keyLiteral];
}

+ (NSInteger)getInt:(id<DeCacheKey>) key; {
    return [[LocalStore shared] getInt:key.keyLiteral];
}

+ (NSString*)getString:(id<DeCacheKey>) key; {
    return [[LocalStore shared] getString:key.keyLiteral];
}

+ (float)getFloat:(id<DeCacheKey>) key; {
    return [[LocalStore shared] getFloat:key.keyLiteral];
}

@end
