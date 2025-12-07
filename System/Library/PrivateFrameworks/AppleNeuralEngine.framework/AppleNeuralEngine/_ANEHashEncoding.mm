@interface _ANEHashEncoding
+ (id)convertToHexString:(char *)string length:(unint64_t)length;
+ (id)hexStringForBytes:(char *)bytes length:(unint64_t)length;
+ (id)hexStringForData:(id)data;
+ (id)hexStringForDataArray:(id)array;
+ (id)hexStringForString:(id)string;
+ (unsigned)hashForString:(id)string seed:(unsigned int)seed;
+ (void)copySHA256For:(id)for toBuffer:(char *)buffer;
@end

@implementation _ANEHashEncoding

+ (id)convertToHexString:(char *)string length:(unint64_t)length
{
  v6 = objc_autoreleasePoolPush();
  for (i = [&stru_1F224D6A0 mutableCopy]; length; --length)
  {
    v8 = *string++;
    [i appendFormat:@"%02X", v8];
  }

  objc_autoreleasePoolPop(v6);

  return i;
}

+ (id)hexStringForBytes:(char *)bytes length:(unint64_t)length
{
  v8 = *MEMORY[0x1E69E9840];
  CC_SHA256(bytes, length, md);
  v5 = [self convertToHexString:md length:32];

  return v5;
}

+ (id)hexStringForString:(id)string
{
  stringCopy = string;
  stringCopy2 = string;
  uTF8String = [stringCopy2 UTF8String];
  v8 = [stringCopy2 length];

  return [self hexStringForBytes:uTF8String length:v8];
}

+ (id)hexStringForData:(id)data
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v8 = [dataCopy2 length];

  return [self hexStringForBytes:bytes length:v8];
}

+ (id)hexStringForDataArray:(id)array
{
  v22 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  data = 0;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, &data, 4u);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = v10;
        CC_SHA256_Update(&c, [v11 bytes], objc_msgSend(v10, "length"));
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v21 count:16];
    }

    while (v7);
  }

  CC_SHA256_Final(md, &c);
  v12 = [self convertToHexString:md length:32];

  return v12;
}

+ (void)copySHA256For:(id)for toBuffer:(char *)buffer
{
  v10 = *MEMORY[0x1E69E9840];
  forCopy = for;
  uTF8String = [forCopy UTF8String];
  if (uTF8String)
  {
    CC_SHA256(uTF8String, [forCopy length], md);
    v7 = v9;
    *buffer = *md;
    *(buffer + 1) = v7;
  }
}

+ (unsigned)hashForString:(id)string seed:(unsigned int)seed
{
  v12 = *MEMORY[0x1E69E9840];
  uTF8String = [string UTF8String];
  if (uTF8String)
  {
    v6 = uTF8String;
    data = bswap32(seed);
    memset(&v9, 0, sizeof(v9));
    CC_SHA256_Init(&v9);
    CC_SHA256_Update(&v9, &data, 4u);
    v7 = strlen(v6);
    CC_SHA256_Update(&v9, v6, v7);
    CC_SHA256_Final(md, &v9);
    LODWORD(uTF8String) = *md;
  }

  return uTF8String;
}

@end