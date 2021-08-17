//
//  DeCache.h
//  DeCacheObjc
//
//  Created by David Ilenwabor on 16/08/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeCache : NSObject
+(nonnull instancetype) shared;

+(void) saveString: (NSString*) value
               key: (NSString*) key;

+(void) saveInt: (NSInteger) value
               key: (NSString*) key;

+(void) saveBoolean: (BOOL) value
               key: (NSString*) key;

+(void) saveFloat: (float) value
               key: (NSString*) key;
@end

NS_ASSUME_NONNULL_END
