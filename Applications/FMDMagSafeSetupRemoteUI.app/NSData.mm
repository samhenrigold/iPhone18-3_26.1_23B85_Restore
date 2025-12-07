@interface NSData
+ (NSData)dataWithHexString:(id)string;
+ (NSData)dataWithMACAddressString:(id)string;
- (id)hexString;
@end

@implementation NSData

+ (NSData)dataWithHexString:(id)string
{
  v3 = [NSString sanitizedHexString:string];
  v4 = [v3 length];
  if (v4)
  {
    v10 = sub_10000EE80(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10001F498(v3, v10);
    }

    v6 = 0;
  }

  else
  {
    v13 = 0;
    lowercaseString = [v3 lowercaseString];

    v6 = objc_opt_new();
    v7 = [lowercaseString length];
    if (v7 >= 2)
    {
      v8 = 0;
      v9 = v7 - 1;
      do
      {
        __str[0] = [lowercaseString characterAtIndex:v8];
        __str[1] = [lowercaseString characterAtIndex:v8 + 1];
        HIBYTE(v13) = strtol(__str, 0, 16);
        [v6 appendBytes:&v13 + 1 length:1];
        v8 += 2;
      }

      while (v9 > v8);
    }

    v3 = lowercaseString;
  }

  return v6;
}

+ (NSData)dataWithMACAddressString:(id)string
{
  v3 = [NSString sanitizedHexString:string];
  v4 = [v3 length];
  if (v4 == 12)
  {
    v5 = [NSData dataWithHexString:v3];
  }

  else
  {
    v6 = sub_10000EE80(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10001F510(v3, v6);
    }

    v5 = 0;
  }

  return v5;
}

- (id)hexString
{
  [NSMutableString stringWithCapacity:2 * [(NSData *)self length]];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001D8A0;
  v7 = v6[3] = &unk_100039C70;
  v3 = v7;
  [(NSData *)self enumerateByteRangesUsingBlock:v6];
  v4 = [NSString stringWithString:v3];

  return v4;
}

@end