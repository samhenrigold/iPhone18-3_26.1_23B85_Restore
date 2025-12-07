@interface NSNumber
+ (id)BOOLFromData:(id)data needNegate:(BOOL)negate;
+ (id)integerFromCInt:(unint64_t)int size:(unint64_t)size isSigned:(BOOL)signed needSwap:(BOOL)swap;
+ (id)integerFromData:(id)data size:(unint64_t)size truncate:(int64_t)truncate isSigned:(BOOL)signed needSwap:(BOOL)swap;
@end

@implementation NSNumber

+ (id)integerFromCInt:(unint64_t)int size:(unint64_t)size isSigned:(BOOL)signed needSwap:(BOOL)swap
{
  swapCopy = swap;
  intCopy = int;
  v10 = 0;
  if (int)
  {
    intCopy2 = int;
    do
    {
      ++v10;
      v12 = intCopy2 >= 0x100;
      intCopy2 >>= 8;
    }

    while (v12);
  }

  if (size > 8 || ((1 << size) & 0x116) == 0)
  {
    v20 = [NSNumber numberWithUnsignedLong:size];
    ZhuGeLog(524800, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSNumber+ZhuGe.m", "+[NSNumber(ZhuGe) integerFromCInt:size:isSigned:needSwap:]", 31, @"Required size is %@, while usually it should be %@ or %@ or %@ or %@", v21, v22, v23, v20);
  }

  if (v10 > size)
  {
    v13 = [NSNumber numberWithUnsignedLong:v10];
    v28 = [NSNumber numberWithUnsignedLong:size];
    ZhuGeLog(524800, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSNumber+ZhuGe.m", "+[NSNumber(ZhuGe) integerFromCInt:size:isSigned:needSwap:]", 36, @"Bits will be truncated since real size is %@, while required size is %@", v14, v15, v16, v13);

    intCopy &= 0xFFFFFFFFFFFFFFFFLL >> (-8 * size);
  }

  if (size > 2)
  {
    if (size - 3 < 2)
    {
      v18 = bswap32(intCopy);
      if (swapCopy)
      {
        v19 = v18;
      }

      else
      {
        v19 = intCopy;
      }

      if (signed)
      {
        [NSNumber numberWithInt:v19];
      }

      else
      {
        [NSNumber numberWithUnsignedInt:v19];
      }

      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (!size)
  {
    v24 = &off_1000176F8;
    goto LABEL_36;
  }

  if (size != 1)
  {
    if (size == 2)
    {
      v17 = bswap32(intCopy) >> 16;
      if (!swapCopy)
      {
        LOWORD(v17) = intCopy;
      }

      if (signed)
      {
        [NSNumber numberWithShort:v17];
      }

      else
      {
        [NSNumber numberWithUnsignedShort:v17];
      }

      goto LABEL_32;
    }

LABEL_27:
    v25 = bswap64(intCopy);
    if (swapCopy)
    {
      v26 = v25;
    }

    else
    {
      v26 = intCopy;
    }

    if (signed)
    {
      [NSNumber numberWithLongLong:v26];
    }

    else
    {
      [NSNumber numberWithUnsignedLongLong:v26];
    }

    goto LABEL_32;
  }

  if (signed)
  {
    [NSNumber numberWithChar:intCopy];
  }

  else
  {
    [NSNumber numberWithUnsignedChar:intCopy];
  }

  v24 = LABEL_32:;
LABEL_36:

  return v24;
}

+ (id)integerFromData:(id)data size:(unint64_t)size truncate:(int64_t)truncate isSigned:(BOOL)signed needSwap:(BOOL)swap
{
  swapCopy = swap;
  signedCopy = signed;
  dataCopy = data;
  v13 = dataCopy;
  v32 = 0;
  if (dataCopy)
  {
    v14 = [dataCopy length];
    v15 = v14;
    v17 = v14 > 8 || v14 > size;
    if (v17)
    {
      v18 = @"LSB";
      if (!truncate)
      {
        v18 = @"MSB";
      }

      v30 = v18;
      [NSNumber numberWithUnsignedLong:v14];
      v19 = v31 = swapCopy;
      v20 = [NSNumber numberWithUnsignedLong:size];
      v29 = [NSNumber numberWithUnsignedLong:8];
      ZhuGeLog(524800, "/Library/Caches/com.apple.xbs/Sources/ZhuGe_Service/ZhuGeCommon/NSNumber+ZhuGe.m", "+[NSNumber(ZhuGe) integerFromData:size:truncate:isSigned:needSwap:]", 122, @"Data %@ might be truncated(data size %@, required size %@, maximum supported size %@)", v21, v22, v23, v30);

      swapCopy = v31;
    }

    sizeCopy = 8;
    if (size < 8)
    {
      sizeCopy = size;
    }

    if (v17)
    {
      v25 = sizeCopy;
    }

    else
    {
      v25 = v15;
    }

    if (truncate == 1)
    {
      v26 = &v15[-v25];
    }

    else
    {
      v26 = 0;
    }

    [v13 getBytes:&v32 range:v26];
    v27 = [self integerFromCInt:v32 size:size isSigned:signedCopy needSwap:swapCopy];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)BOOLFromData:(id)data needNegate:(BOOL)negate
{
  negateCopy = negate;
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    bytes = [dataCopy bytes];
    v8 = [v6 length];
    if (*bytes)
    {
      v9 = 1;
    }

    else
    {
      v9 = memcmp(bytes, bytes + 1, v8 - 1) != 0;
    }
  }

  else
  {
    v9 = 0;
  }

  negateCopy = [NSNumber numberWithBool:v9 ^ negateCopy];

  return negateCopy;
}

@end