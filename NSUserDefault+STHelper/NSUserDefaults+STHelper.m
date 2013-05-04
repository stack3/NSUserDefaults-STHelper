//
//  NSUserDefaults+STHelper.m
//  NSUserDefaults+STHelperSample
//
//  Created by EIMEI on 2013/05/03.
//  Copyright (c) 2013 stack3.net. All rights reserved.
//

#import "NSUserDefaults+STHelper.h"

@implementation NSUserDefaults (STHelper)

- (NSInteger)st_integerForKey:(NSString *)key defaultValue:(NSInteger)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return (NSInteger)[object integerValue];
    } else {
        return defaultValue;
    }
}

- (NSInteger)st_integerForKey:(NSString *)key
{
    return [self st_integerForKey:key defaultValue:0];
}

- (NSUInteger)st_unsignedIntegerForKey:(NSString *)key defaultValue:(NSUInteger)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return (NSUInteger)[object unsignedIntegerValue];
    } else {
        return defaultValue;
    }
}

- (NSUInteger)st_unsignedIntegerForKey:(NSString *)key
{
    return [self st_unsignedIntegerForKey:key defaultValue:0];
}

- (char)st_charForKey:(NSString *)key defaultValue:(char)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [object charValue];
    } else {
        return defaultValue;
    }
}

- (char)st_charForKey:(NSString *)key
{
    return [self st_charForKey:key defaultValue:0];
}

- (unsigned char)st_unsignedCharForKey:(NSString *)key defaultValue:(unsigned char)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [object unsignedCharValue];
    } else {
        return defaultValue;
    }
}

- (unsigned char)st_unsignedCharForKey:(NSString *)key
{
    return [self st_unsignedCharForKey:key defaultValue:0];
}

- (short)st_shortForKey:(NSString *)key defaultValue:(short)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object shortValue];
    } else {
        return defaultValue;
    }
}

- (short)st_shortForKey:(NSString *)key
{
    return [self st_shortForKey:key defaultValue:0];
}

- (unsigned short)st_unsignedShortForKey:(NSString *)key defaultValue:(unsigned short)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object unsignedShortValue];
    } else {
        return defaultValue;
    }
}

- (unsigned short)st_unsignedShortForKey:(NSString *)key
{
    return [self st_unsignedShortForKey:key defaultValue:0];
}

- (long)st_longForKey:(NSString *)key defaultValue:(long)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object longValue];
    } else {
        return defaultValue;
    }
}

- (long)st_longForKey:(NSString *)key
{
    return [self st_longForKey:key defaultValue:0];
}

- (unsigned long)st_unsignedLongForKey:(NSString *)key defaultValue:(unsigned long)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object unsignedLongValue];
    } else {
        return defaultValue;
    }
}

- (unsigned long)st_unsignedLongForKey:(NSString *)key
{
    return [self st_unsignedLongForKey:key defaultValue:0];
}

- (long long)st_longLongForKey:(NSString *)key defaultValue:(long long)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object longLongValue];
    } else {
        return defaultValue;
    }
}

- (long long)st_longLongForKey:(NSString *)key
{
    return [self st_longLongForKey:key defaultValue:0];
}

- (unsigned long long)st_unsignedLongLongForKey:(NSString *)key defaultValue:(unsigned long long)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object unsignedLongLongValue];
    } else {
        return defaultValue;
    }
}

- (unsigned long long)st_unsignedLongLongForKey:(NSString *)key
{
    return [self st_unsignedLongLongForKey:key defaultValue:0];
}

- (int8_t)st_int8ForKey:(NSString *)key defaultValue:(int8_t)defaultValue
{
    return [self st_charForKey:key defaultValue:defaultValue];
}

- (int8_t)st_int8ForKey:(NSString *)key
{
    return [self st_charForKey:key];
}

- (uint8_t)st_uint8ForKey:(NSString *)key defaultValue:(uint8_t)defaultValue
{
    return [self st_unsignedCharForKey:key defaultValue:defaultValue];
}

- (uint8_t)st_uint8ForKey:(NSString *)key
{
    return [self st_unsignedCharForKey:key];
}

- (int16_t)st_int16ForKey:(NSString *)key defaultValue:(int16_t)defaultValue
{
    return [self st_shortForKey:key defaultValue:defaultValue];
}

- (int16_t)st_int16ForKey:(NSString *)key
{
    return [self st_shortForKey:key];
}

- (uint16_t)st_uint16ForKey:(NSString *)key defaultValue:(uint16_t)defaultValue
{
    return [self st_unsignedShortForKey:key defaultValue:defaultValue];
}

- (uint16_t)st_uint16ForKey:(NSString *)key
{
    return [self st_unsignedShortForKey:key];
}

- (int32_t)st_int32ForKey:(NSString *)key defaultValue:(int32_t)defaultValue
{
    return [self st_longForKey:key defaultValue:defaultValue];
}

- (int32_t)st_int32ForKey:(NSString *)key
{
    return [self st_longForKey:key];
}

- (uint32_t)st_uint32ForKey:(NSString *)key defaultValue:(uint32_t)defaultValue
{
    return [self st_unsignedLongForKey:key defaultValue:defaultValue];
}

- (uint32_t)st_uint32ForKey:(NSString *)key
{
    return [self st_unsignedLongForKey:key];
}

- (int64_t)st_int64ForKey:(NSString *)key defaultValue:(int64_t)defaultValue
{
    return [self st_longLongForKey:key defaultValue:defaultValue];
}

- (int64_t)st_int64ForKey:(NSString *)key
{
    return [self st_longLongForKey:key];
}

- (uint64_t)st_uint64ForKey:(NSString *)key defaultValue:(uint64_t)defaultValue
{
    return [self st_unsignedLongLongForKey:key defaultValue:defaultValue];
}

- (uint64_t)st_uint64ForKey:(NSString *)key
{
    return [self st_unsignedLongLongForKey:key];
}

- (float)st_floatForKey:(NSString *)key defaultValue:(float)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object floatValue];
    } else {
        return defaultValue;
    }
}

- (float)st_floatForKey:(NSString *)key
{
    return [self st_floatForKey:key defaultValue:0];
}

- (double)st_doubleForKey:(NSString *)key defaultValue:(double)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object doubleValue];
    } else {
        return defaultValue;
    }
}

- (double)st_doubleForKey:(NSString *)key
{
    return [self st_doubleForKey:key defaultValue:0];
}

- (NSTimeInterval)st_timeIntervalForKey:(NSString *)key defaultValue:(NSTimeInterval)defaultValue
{
    return [self st_doubleForKey:key defaultValue:defaultValue];
}

- (NSTimeInterval)st_timeIntervalForKey:(NSString *)key
{
    return [self st_doubleForKey:key];
}

- (BOOL)st_boolForKey:(NSString *)key defaultValue:(BOOL)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSNumber class]]) {
        return [(NSNumber *)object boolValue];
    } else {
        return defaultValue;
    }
}

- (BOOL)st_boolForKey:(NSString *)key
{
    return [self st_boolForKey:key defaultValue:0];
}

- (NSString *)st_stringForKey:(NSString *)key defaultValue:(NSString *)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSString class]]) {
        return (NSString *)object;
    } else {
        return defaultValue;
    }
}

- (NSString *)st_stringForKey:(NSString *)key
{
    return [self st_stringForKey:key defaultValue:nil];
}

- (NSArray *)st_arrayForKey:(NSString *)key defaultValue:(NSArray *)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSArray class]]) {
        return (NSArray *)object;
    } else {
        return defaultValue;
    }
}

- (NSArray *)st_arrayForKey:(NSString *)key
{
    return [self st_arrayForKey:key defaultValue:nil];
}

- (NSDictionary *)st_dictionaryForKey:(NSString *)key defaultValue:(NSDictionary *)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSDictionary class]]) {
        return (NSDictionary *)object;
    } else {
        return defaultValue;
    }
}

- (NSDictionary *)st_dictionaryForKey:(NSString *)key
{
    return [self st_dictionaryForKey:key defaultValue:nil];
}

- (NSData *)st_dataForKey:(NSString *)key defaultValue:(NSData *)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSData class]]) {
        return (NSData *)object;
    } else {
        return defaultValue;
    }
}

- (NSData *)st_dataForKey:(NSString *)key
{
    return [self st_dataForKey:key defaultValue:nil];
}

- (NSDate *)st_dateForKey:(NSString *)key defaultValue:(NSDate *)defaultValue
{
    id object = [self objectForKey:key];
    if ([object isKindOfClass:[NSDate class]]) {
        return (NSDate *)object;
    } else {
        return defaultValue;
    }
}

- (NSDate *)st_dateForKey:(NSString *)key
{
    return [self st_dateForKey:key defaultValue:nil];
}

- (NSURL *)st_URLForKey:(NSString *)key defaultValue:(NSURL *)defaultValue
{
    NSURL *object = [self URLForKey:key];
    if (object) {
        return object;
    } else {
        return defaultValue;
    }
}

- (NSURL *)st_URLForKey:(NSString *)key
{
    return [self URLForKey:key];
}

- (void)st_setUnsignedInteger:(NSUInteger)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithUnsignedInteger:value] forKey:key];
}

- (void)st_setChar:(char)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithChar:value] forKey:key];
}

- (void)st_setUnsignedChar:(unsigned char)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithUnsignedChar:value] forKey:key];
}

- (void)st_setShort:(short)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithShort:value] forKey:key];
}

- (void)st_setUnsignedShort:(unsigned short)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithUnsignedShort:value] forKey:key];
}

- (void)st_setLong:(long)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithLong:value] forKey:key];
}

- (void)st_setUnsignedLong:(unsigned long)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithUnsignedLong:value] forKey:key];
}

- (void)st_setLongLong:(long long)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithLongLong:value] forKey:key];
}

- (void)st_setUnsignedLongLong:(unsigned long long)value forKey:(NSString *)key
{
    [self setObject:[NSNumber numberWithUnsignedLongLong:value] forKey:key];
}

- (void)st_setInt8:(int8_t)value forKey:(NSString *)key
{
    [self st_setChar:value forKey:key];
}

- (void)st_setUInt8:(uint8_t)value forKey:(NSString *)key
{
    [self st_setUnsignedChar:value forKey:key];
}

- (void)st_setInt16:(int16_t)value forKey:(NSString *)key
{
    [self st_setShort:value forKey:key];
}

- (void)st_setUInt16:(uint16_t)value forKey:(NSString *)key
{
    [self st_setUnsignedShort:value forKey:key];
}

- (void)st_setInt32:(int32_t)value forKey:(NSString *)key
{
    [self st_setLong:value forKey:key];
}

- (void)st_setUInt32:(uint32_t)value forKey:(NSString *)key
{
    [self st_setUnsignedLong:value forKey:key];
}

- (void)st_setInt64:(int64_t)value forKey:(NSString *)key
{
    [self st_setLongLong:value forKey:key];
}

- (void)st_setUInt64:(uint64_t)value forKey:(NSString *)key
{
    [self st_setUnsignedLongLong:value forKey:key];
}

- (void)st_setTimeInterval:(NSTimeInterval)value forKey:(NSString *)key
{
    [self setDouble:value forKey:key];
}

- (void)st_removePersistentMainBundleDomain
{
    NSString *appDomain = [[NSBundle mainBundle] bundleIdentifier];
    [[NSUserDefaults standardUserDefaults] removePersistentDomainForName:appDomain];
}

@end
