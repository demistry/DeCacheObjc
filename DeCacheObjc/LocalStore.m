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

- (instancetype)init
{
    self = [super init];
    if (self) {
        _userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

- (void)saveArray:(nonnull NSArray *)value key:(nonnull NSString *)key { 
    [_userDefaults setValue:value forKey:key];
}

- (void)saveBoolean:(BOOL)value key:(nonnull NSString *)key { 
    [_userDefaults setBool:value forKey:key];
}

- (void)saveFloat:(float)value key:(nonnull NSString *)key { 
    [_userDefaults setFloat:value forKey:key];
}

- (void)saveInt:(NSInteger)value key:(nonnull NSString *)key { 
    [_userDefaults setInteger:value forKey:key];
}

@end
