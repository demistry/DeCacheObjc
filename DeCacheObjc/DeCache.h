//
//  DeCache.h
//  DeCacheObjc
//
//  Created by David Ilenwabor on 16/08/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeCache : NSObject
+(DeCache *) shared;
+(void) setInt;
@end

NS_ASSUME_NONNULL_END
