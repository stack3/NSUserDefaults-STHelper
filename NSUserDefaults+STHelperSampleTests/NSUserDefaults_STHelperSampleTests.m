//
//  NSUserDefaults_STHelperSampleTests.m
//  NSUserDefaults+STHelperSampleTests
//
//  Created by EIMEI on 2013/05/03.
//  Copyright (c) 2013 stack3.net. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import "NSUserDefaults_STHelperSampleTests.h"
#import "NSUserDefaults+STHelper.h"

@implementation NSUserDefaults_STHelperSampleTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)test
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud st_removePersistentMainBundleDomain];
    
    STAssertEquals([ud st_integerForKey:@"integer"], (NSInteger)0, nil);
    STAssertEquals([ud st_integerForKey:@"integer" defaultValue:NSIntegerMin], (NSInteger)NSIntegerMin, nil);
    
    [ud setInteger:NSIntegerMin forKey:@"integer"];
    STAssertEquals([ud st_integerForKey:@"integer"], (NSInteger)NSIntegerMin, nil);
    
    [ud setInteger:NSIntegerMax forKey:@"integer"];
    STAssertEquals([ud st_integerForKey:@"integer"], (NSInteger)NSIntegerMax, nil);
    
    STAssertEquals([ud st_unsignedIntegerForKey:@"unsignedInteger"], (NSUInteger)0, nil);
    STAssertEquals([ud st_unsignedIntegerForKey:@"unsignedInteger" defaultValue:NSUIntegerMax], (NSUInteger)NSUIntegerMax, nil);
    
    [ud st_setUnsignedInteger:0 forKey:@"unsignedInteger"];
    STAssertEquals([ud st_unsignedIntegerForKey:@"unsignedInteger"], (NSUInteger)0, nil);
    
    [ud st_setUnsignedInteger:NSUIntegerMax forKey:@"unsignedInteger"];
    STAssertEquals([ud st_unsignedIntegerForKey:@"unsignedInteger"], (NSUInteger)NSUIntegerMax, nil);

    STAssertEquals([ud st_shortForKey:@"short"], (short)0, nil);
    STAssertEquals([ud st_shortForKey:@"short" defaultValue:SHRT_MIN], (short)SHRT_MIN, nil);
    
    [ud st_setShort:SHRT_MIN forKey:@"short"];
    STAssertEquals([ud st_shortForKey:@"short"], (short)SHRT_MIN, nil);
    
    [ud st_setShort:SHRT_MAX forKey:@"short"];
    STAssertEquals([ud st_shortForKey:@"short"], (short)SHRT_MAX, nil);
    
    STAssertEquals([ud st_unsignedShortForKey:@"unsignedShort"], (unsigned short)0, nil);
    STAssertEquals([ud st_unsignedShortForKey:@"unsignedShort" defaultValue:USHRT_MAX], (unsigned short)USHRT_MAX, nil);
    
    [ud st_setUnsignedShort:0 forKey:@"unsignedShort"];
    STAssertEquals([ud st_unsignedShortForKey:@"unsignedShort"], (unsigned short)0, nil);
    
    [ud st_setUnsignedShort:USHRT_MAX forKey:@"unsignedShort"];
    STAssertEquals([ud st_unsignedShortForKey:@"unsignedShort"], (unsigned short)USHRT_MAX, nil);
    
    STAssertEquals([ud st_longForKey:@"long"], (long)0, nil);
    STAssertEquals([ud st_longForKey:@"long" defaultValue:LONG_MIN], (long)LONG_MIN, nil);
    
    [ud st_setLong:LONG_MIN forKey:@"long"];
    STAssertEquals([ud st_longForKey:@"long"], (long)LONG_MIN, nil);
    
    [ud st_setLong:LONG_MAX forKey:@"long"];
    STAssertEquals([ud st_longForKey:@"long"], (long)LONG_MAX, nil);
    
    STAssertEquals([ud st_unsignedLongForKey:@"unsignedLong"], (unsigned long)0, nil);
    STAssertEquals([ud st_unsignedLongForKey:@"unsignedLong" defaultValue:ULONG_MAX], (unsigned long)ULONG_MAX, nil);
    
    [ud st_setUnsignedLong:LONG_MIN forKey:@"unsignedLong"];
    STAssertEquals([ud st_unsignedLongForKey:@"unsignedLong"], (unsigned long)LONG_MIN, nil);
    
    [ud st_setUnsignedLong:LONG_MAX forKey:@"unsignedLong"];
    STAssertEquals([ud st_unsignedLongForKey:@"unsignedLong"], (unsigned long)LONG_MAX, nil);
    
    STAssertEquals([ud st_longLongForKey:@"longLong"], (long long)0, nil);
    STAssertEquals([ud st_longLongForKey:@"longLong" defaultValue:LLONG_MIN], (long long)LLONG_MIN, nil);
    
    [ud st_setLongLong:LLONG_MIN forKey:@"longLong"];
    STAssertEquals([ud st_longLongForKey:@"longLong"], (long long)LLONG_MIN, nil);
    
    [ud st_setLongLong:LLONG_MAX forKey:@"longLong"];
    STAssertEquals([ud st_longLongForKey:@"longLong"], (long long)LLONG_MAX, nil);
    
    STAssertEquals([ud st_unsignedLongLongForKey:@"unsignedLongLong"], (unsigned long long)0, nil);
    STAssertEquals([ud st_unsignedLongLongForKey:@"unsignedLongLong" defaultValue:ULLONG_MAX], (unsigned long long)ULLONG_MAX, nil);
    
    [ud st_setUnsignedLongLong:0 forKey:@"unsignedLongLong"];
    STAssertEquals([ud st_unsignedLongLongForKey:@"unsignedLongLong"], (unsigned long long)0, nil);
    
    [ud st_setUnsignedLongLong:ULLONG_MAX forKey:@"unsignedLongLong"];
    STAssertEquals([ud st_unsignedLongLongForKey:@"unsignedLongLong"], (unsigned long long)ULLONG_MAX, nil);

    STAssertEquals([ud st_floatForKey:@"float"], (float)0, nil);
    STAssertEquals([ud st_floatForKey:@"float" defaultValue:FLT_MAX], (float)FLT_MAX, nil);
    
    [ud setFloat:FLT_MIN forKey:@"float"];
    STAssertEquals([ud st_floatForKey:@"float"], (float)FLT_MIN, nil);
    
    [ud setFloat:FLT_MAX forKey:@"float"];
    STAssertEquals([ud st_floatForKey:@"float"], (float)FLT_MAX, nil);

    STAssertEquals([ud st_doubleForKey:@"double"], (double)0, nil);
    STAssertEquals([ud st_doubleForKey:@"double" defaultValue:DBL_MAX], (double)DBL_MAX, nil);
    
    [ud setDouble:DBL_MIN forKey:@"double"];
    STAssertEquals([ud st_doubleForKey:@"double"], (double)DBL_MIN, nil);
    
    [ud setDouble:DBL_MAX forKey:@"double"];
    STAssertEquals([ud st_doubleForKey:@"double"], (double)DBL_MAX, nil);

    STAssertEquals([ud st_boolForKey:@"bool"], NO, nil);
    STAssertEquals([ud st_boolForKey:@"bool" defaultValue:YES], YES, nil);
    
    [ud setBool:NO forKey:@"bool"];
    STAssertEquals([ud st_boolForKey:@"bool"], NO, nil);
    
    [ud setBool:YES forKey:@"bool"];
    STAssertEquals([ud st_boolForKey:@"bool"], YES, nil);

    STAssertNil([ud st_stringForKey:@"string"], nil);
    STAssertEqualObjects([ud st_stringForKey:@"string" defaultValue:@"string1"], @"string1", nil);
    
    [ud setObject:@"string1" forKey:@"string"];
    STAssertEqualObjects([ud st_stringForKey:@"string"], @"string1", nil);

    STAssertNil([ud st_arrayForKey:@"array"], nil);
    NSArray *array = @[@1, @2];
    STAssertEqualObjects([ud st_arrayForKey:@"array" defaultValue:array], array, nil);
    
    array = @[@9, @8];
    [ud setObject:array forKey:@"array"];
    STAssertEqualObjects([ud st_arrayForKey:@"array"], array, nil);

    STAssertNil([ud st_dictionaryForKey:@"dictionary"], nil);
    NSDictionary *dictionary = @{@"1" : @1, @"2" : @2};
    STAssertEqualObjects([ud st_dictionaryForKey:@"dictionary" defaultValue:dictionary], dictionary, nil);
    
    dictionary = @{@"1" : @9, @"2" : @8};
    [ud setObject:dictionary forKey:@"dictionary"];
    STAssertEqualObjects([ud st_dictionaryForKey:@"dictionary"], dictionary, nil);

    STAssertNil([ud st_dataForKey:@"data"], nil);
    NSData *data = [@"data1" dataUsingEncoding:NSUTF8StringEncoding];
    STAssertEqualObjects([ud st_dataForKey:@"data" defaultValue:data], data, nil);
    
    data = [@"data2" dataUsingEncoding:NSUTF8StringEncoding];
    [ud setObject:data forKey:@"data"];
    STAssertEqualObjects([ud st_dataForKey:@"data"], data, nil);    

    STAssertNil([ud st_dateForKey:@"date"], nil);
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:0];
    STAssertEqualObjects([ud st_dateForKey:@"date" defaultValue:date], date, nil);
    
    date = [NSDate dateWithTimeIntervalSince1970:24*60*60];
    [ud setObject:date forKey:@"date"];
    STAssertEqualObjects([ud st_dateForKey:@"date"], date, nil);

    STAssertNil([ud st_URLForKey:@"url"], nil);
    NSURL *url = [NSURL URLWithString:@"http://www.google.com/"];
    STAssertEqualObjects([ud st_URLForKey:@"url" defaultValue:url], url, nil);
    
    url = [NSURL URLWithString:@"http://www.yahoo.co.jp/"];
    [ud setURL:url forKey:@"url"];
    STAssertEqualObjects([ud st_URLForKey:@"url"], url, nil);
}

@end
