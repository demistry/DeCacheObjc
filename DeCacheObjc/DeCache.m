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

-(instancetype) init
{
    self = [super init];
    if (self) {
        self.localStore = [[LocalStore alloc] init];
    }
    return self;
}

@end
