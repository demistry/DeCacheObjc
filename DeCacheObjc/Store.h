//
//  Store.h
//  DeCacheObjc
//
//  Created by David Ilenwabor on 16/08/2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Store <NSObject>
-(void) saveInt: (NSInteger) value
            key: (NSString *) key;

-(void) saveBoolean: (BOOL) value
                key: (NSString *) key;

-(void) saveFloat: (float) value
              key: (NSString *) key;

-(void) saveString: (NSString *) value
               key: (NSString *) key;

-(void) saveArray: (NSArray *) value
              key: (NSString *) key;

-(void) saveObject: (NSObject *) value
               key: (NSString *) key;

-(NSInteger) getInt: (NSString *) key;
-(BOOL) getBoolean: (NSString *) key;
-(NSString *) getString: (NSString *) key;
-(float) getFloat: (NSString *) key;
-(NSArray *) getArray: (NSString *) key;
-(NSObject *) getObject: (NSString *) key;

@end

NS_ASSUME_NONNULL_END
