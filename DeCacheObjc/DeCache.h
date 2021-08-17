//
//  DeCache.h
//  DeCacheObjc
//
//  Created by David Ilenwabor on 16/08/2021.
//

#import <Foundation/Foundation.h>
#import "DeCacheKey.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeCache : NSObject
+(nonnull instancetype) shared;

+(void) saveString: (NSString*) value
               key: (id<DeCacheKey>) key;

+(void) saveInt: (NSInteger) value
                key: (id<DeCacheKey>) key;

+(void) saveBoolean: (BOOL) value
                key: (id<DeCacheKey>) key;

+(void) saveFloat: (float) value
                key: (id<DeCacheKey>) key;

+(NSInteger) getInt:(id<DeCacheKey>) key;

+(NSString*) getString:(id<DeCacheKey>) key;

+(float) getFloat:(id<DeCacheKey>) key;
@end

NS_ASSUME_NONNULL_END
