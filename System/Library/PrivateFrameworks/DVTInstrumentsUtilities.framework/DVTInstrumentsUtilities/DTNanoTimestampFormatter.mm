@interface DTNanoTimestampFormatter
+ (id)stringForNanoseconds:(unint64_t)nanoseconds;
+ (id)stringForNanoseconds:(unint64_t)nanoseconds highestResolutionTimeEnabled:(BOOL)enabled;
- (id)stringForObjectValue:(id)value;
@end

@implementation DTNanoTimestampFormatter

+ (id)stringForNanoseconds:(unint64_t)nanoseconds
{
  v8 = *MEMORY[0x277D85DE8];
  if (nanoseconds == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = @"--:--.--";
  }

  else
  {
    if (nanoseconds < 0x34630B8A000)
    {
      snprintf(__str, 0xEuLL, "%02llu:%02llu.%03llu.%03llu");
    }

    else
    {
      snprintf(__str, 0x40uLL, "%llu:%02llu:%02llu.%03llu.%03llu");
    }

    v3 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v4, __str, 4, v5);
  }

  return v3;
}

+ (id)stringForNanoseconds:(unint64_t)nanoseconds highestResolutionTimeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_stringForNanoseconds_(DTNanoTimestampFormatter, a2, nanoseconds, enabled, v4);
  v8 = v7;
  if (enabledCopy)
  {
    snprintf(__str, 0x11uLL, ".%03llu", nanoseconds % 0x3E8);
    v11 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v9, __str, 4, v10);
    v15 = objc_msgSend_stringByAppendingString_(v8, v12, v11, v13, v14);
  }

  else
  {
    v15 = v7;
  }

  return v15;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_msgSend_unsignedLongLongValue(valueCopy, v5, v6, v7, v8);

    v13 = objc_msgSend_stringForNanoseconds_(DTNanoTimestampFormatter, v10, v9, v11, v12);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = DTNanoTimestampFormatter;
    v13 = [(DTNanoTimestampFormatter *)&v15 stringForObjectValue:valueCopy];
  }

  return v13;
}

@end