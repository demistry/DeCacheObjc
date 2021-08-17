//
//  LocalStore.m
//  DeCacheObjc
//
//  Created by David Ilenwabor on 16/08/2021.
//

#import "LocalStore.h"


@interface LocalStore()
@property (strong, nonnull) NSUserDefaults *userDefaults;
@end

@implementation LocalStore

+ (LocalStore*)shared
{
    //Singleton instance
    static LocalStore *shared;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
        shared.userDefaults = [NSUserDefaults standardUserDefaults];
    });
    
    return shared;
}

- (void)saveArray:(nonnull NSArray *)value key:(nonnull NSString *)key { 
    [self.userDefaults setValue:value forKey:key];
}

- (void)saveBoolean:(BOOL)value key:(nonnull NSString *)key { 
    [self.userDefaults setBool:value forKey:key];
}

- (void)saveString:(NSString *)value key:(NSString *)key {
    [[self userDefaults] setObject:value forKey:key];
}

- (void)saveFloat:(float)value key:(nonnull NSString *)key { 
    [self.userDefaults setFloat:value forKey:key];
}

- (void)saveInt:(NSInteger)value key:(nonnull NSString *)key { 
    [self.userDefaults setInteger:value forKey:key];
}

- (void)saveObject:(NSObject *)value key:(NSString *)key {
    [self.userDefaults setObject:value forKey:key];
}

- (NSInteger)getInt:(NSString *)key {
    return [self.userDefaults integerForKey:key];
}

- (NSString *)getString:(NSString *)key {
    return [[self userDefaults] stringForKey:key];
}

- (NSArray *)getArray:(NSString *)key {
    return (NSArray *) [[self userDefaults] valueForKey:key];
}

- (float)getFloat:(NSString *)key {
    return [[self userDefaults] floatForKey:key];
}

- (NSObject *)getObject:(NSString *)key {
    return [[self userDefaults] objectForKey:key];
}

- (BOOL)getBoolean:(nonnull NSString *)key { 
    return [[self userDefaults] boolForKey:key];
}


@end
