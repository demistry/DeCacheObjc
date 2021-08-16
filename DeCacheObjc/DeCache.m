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

+ (void)setIntegerValue {
    NSLog(@"Integer value set");
}

//-(instancetype) init
//{
//    self = [super init];
//    if (self) {
//        self.localStore = [[LocalStore alloc] init];
//    }
//    return self;
//}

@end
