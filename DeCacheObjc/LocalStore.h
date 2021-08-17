//
//  LocalStore.h
//  DeCacheObjc
//
//  Created by David Ilenwabor on 16/08/2021.
//

#import <Foundation/Foundation.h>
#import "Store.h"

NS_ASSUME_NONNULL_BEGIN

@interface LocalStore : NSObject<Store>
+(nonnull instancetype) shared;
@end

NS_ASSUME_NONNULL_END
