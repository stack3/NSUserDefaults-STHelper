NSUserDefaults+STHelper
=======================

NSUserDefaults category methods to access various types.  
long long, unsigned long long, NSArray, NSDictionary etc.

## Requirements

- iOS 5.0 and later.
- Automatic reference counting. (ARC)

## License

MIT License

## Usage

Just copy 2 files to your project.

- NSUserDefault+STHelper/NSUserDefaults+STHelper.h
- NSUserDefault+STHelper/NSUserDefaults+STHelper.m

And then import NSUserDefaults+STHelper.h

## Samples

```objectivec
NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];

unsigned long long varULongLong = [ud st_unsignedLongForKey:@"unsignedLong"];
varULongLong = [ud st_unsignedLongForKey:@"unsignedLong" defaultValue:ULONG_MAX];   
[ud st_setUnsignedLong:LONG_MIN forKey:@"unsignedLong"];

NSArray *array = @[@1, @2];
array = [ud st_arrayForKey:@"array" defaultValue:array];
    
array = @[@9, @8];
[ud setObject:array forKey:@"array"];
```
