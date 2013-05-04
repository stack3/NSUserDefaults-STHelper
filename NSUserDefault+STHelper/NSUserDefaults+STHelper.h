//
//  NSUserDefaults+STHelper.h
//  NSUserDefaults+STHelperSample
//
//  Created by EIMEI on 2013/05/03.
//  Copyright (c) 2013 stack3.net. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (STHelper)

- (NSInteger)st_integerForKey:(NSString *)key defaultValue:(NSInteger)defaultValue;
- (NSInteger)st_integerForKey:(NSString *)key;
- (NSUInteger)st_unsignedIntegerForKey:(NSString *)key defaultValue:(NSUInteger)defaultValue;
- (NSUInteger)st_unsignedIntegerForKey:(NSString *)key;
- (char)st_charForKey:(NSString *)key defaultValue:(char)defaultValue;
- (char)st_charForKey:(NSString *)key;
- (unsigned char)st_unsignedCharForKey:(NSString *)key defaultValue:(unsigned char)defaultValue;
- (unsigned char)st_unsignedCharForKey:(NSString *)key;
- (short)st_shortForKey:(NSString *)key defaultValue:(short)defaultValue;
- (short)st_shortForKey:(NSString *)key;
- (unsigned short)st_unsignedShortForKey:(NSString *)key defaultValue:(unsigned short)defaultValue;
- (unsigned short)st_unsignedShortForKey:(NSString *)key;
- (long)st_longForKey:(NSString *)key defaultValue:(long)defaultValue;
- (long)st_longForKey:(NSString *)key;
- (unsigned long)st_unsignedLongForKey:(NSString *)key defaultValue:(unsigned long)defaultValue;
- (unsigned long)st_unsignedLongForKey:(NSString *)key;
- (long long)st_longLongForKey:(NSString *)key defaultValue:(long long)defaultValue;
- (long long)st_longLongForKey:(NSString *)key;
- (unsigned long long)st_unsignedLongLongForKey:(NSString *)key defaultValue:(unsigned long long)defaultValue;
- (unsigned long long)st_unsignedLongLongForKey:(NSString *)key;
- (int8_t)st_int8ForKey:(NSString *)key defaultValue:(int8_t)defaultValue;
- (int8_t)st_int8ForKey:(NSString *)key;
- (uint8_t)st_uint8ForKey:(NSString *)key defaultValue:(uint8_t)defaultValue;
- (uint8_t)st_uint8ForKey:(NSString *)key;
- (int16_t)st_int16ForKey:(NSString *)key defaultValue:(int16_t)defaultValue;
- (int16_t)st_int16ForKey:(NSString *)key;
- (uint16_t)st_uint16ForKey:(NSString *)key defaultValue:(uint16_t)defaultValue;
- (uint16_t)st_uint16ForKey:(NSString *)key;
- (int32_t)st_int32ForKey:(NSString *)key defaultValue:(int32_t)defaultValue;
- (int32_t)st_int32ForKey:(NSString *)key;
- (uint32_t)st_uint32ForKey:(NSString *)key defaultValue:(uint32_t)defaultValue;
- (uint32_t)st_uint32ForKey:(NSString *)key;
- (int64_t)st_int64ForKey:(NSString *)key defaultValue:(int64_t)defaultValue;
- (int64_t)st_int64ForKey:(NSString *)key;
- (uint64_t)st_uint64ForKey:(NSString *)key defaultValue:(uint64_t)defaultValue;
- (uint64_t)st_uint64ForKey:(NSString *)key;
- (float)st_floatForKey:(NSString *)key defaultValue:(float)defaultValue;
- (float)st_floatForKey:(NSString *)key;
- (double)st_doubleForKey:(NSString *)key defaultValue:(double)defaultValue;
- (double)st_doubleForKey:(NSString *)key;
- (NSTimeInterval)st_timeIntervalForKey:(NSString *)key defaultValue:(NSTimeInterval)defaultValue;
- (NSTimeInterval)st_timeIntervalForKey:(NSString *)key;
- (BOOL)st_boolForKey:(NSString *)key defaultValue:(BOOL)defaultValue;
- (BOOL)st_boolForKey:(NSString *)key;
- (NSString *)st_stringForKey:(NSString *)key defaultValue:(NSString *)defaultValue;
- (NSString *)st_stringForKey:(NSString *)key;
- (NSArray *)st_arrayForKey:(NSString *)key defaultValue:(NSArray *)defaultValue;
- (NSArray *)st_arrayForKey:(NSString *)key;
- (NSDictionary *)st_dictionaryForKey:(NSString *)key defaultValue:(NSDictionary *)defaultValue;
- (NSDictionary *)st_dictionaryForKey:(NSString *)key;
- (NSData *)st_dataForKey:(NSString *)key defaultValue:(NSData *)defaultValue;
- (NSData *)st_dataForKey:(NSString *)key;
- (NSDate *)st_dateForKey:(NSString *)key defaultValue:(NSDate *)defaultValue;
- (NSDate *)st_dateForKey:(NSString *)key;
- (NSURL *)st_URLForKey:(NSString *)key defaultValue:(NSURL *)defaultValue;
- (NSURL *)st_URLForKey:(NSString *)key;
- (void)st_setUnsignedInteger:(NSUInteger)value forKey:(NSString *)key;
- (void)st_setChar:(char)value forKey:(NSString *)key;
- (void)st_setUnsignedChar:(unsigned char)value forKey:(NSString *)key;
- (void)st_setShort:(short)value forKey:(NSString *)key;
- (void)st_setUnsignedShort:(unsigned short)value forKey:(NSString *)key;
- (void)st_setLong:(long)value forKey:(NSString *)key;
- (void)st_setUnsignedLong:(unsigned long)value forKey:(NSString *)key;
- (void)st_setLongLong:(long long)value forKey:(NSString *)key;
- (void)st_setUnsignedLongLong:(unsigned long long)value forKey:(NSString *)key;
- (void)st_setInt8:(int8_t)value forKey:(NSString *)key;
- (void)st_setUInt8:(uint8_t)value forKey:(NSString *)key;
- (void)st_setInt16:(int16_t)value forKey:(NSString *)key;
- (void)st_setUInt16:(uint16_t)value forKey:(NSString *)key;
- (void)st_setInt32:(int32_t)value forKey:(NSString *)key;
- (void)st_setUInt32:(uint32_t)value forKey:(NSString *)key;
- (void)st_setInt64:(int64_t)value forKey:(NSString *)key;
- (void)st_setUInt64:(uint64_t)value forKey:(NSString *)key;
- (void)st_setTimeInterval:(NSTimeInterval)value forKey:(NSString *)key;
- (void)st_removePersistentMainBundleDomain;

@end
