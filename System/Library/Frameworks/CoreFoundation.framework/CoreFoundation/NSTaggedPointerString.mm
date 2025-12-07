@interface NSTaggedPointerString
+ (id)allocWithZone:(_NSZone *)zone;
- (BOOL)_getCString:(char *)string maxLength:(unint64_t)length encoding:(unsigned int)encoding;
- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToString:(id)string;
- (const)UTF8String;
- (const)cStringUsingEncoding:(unint64_t)encoding;
- (id)lowercaseStringWithLocale:(id)locale;
- (id)substringWithRange:(_NSRange)range;
- (id)uppercaseStringWithLocale:(id)locale;
- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range locale:(id)locale;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation NSTaggedPointerString

- (const)UTF8String
{
  __src[2] = *MEMORY[0x1E69E9840];
  __src[0] = 0;
  __src[1] = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = (~(v2 ^ self) & 7) == 0;
  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v5 = 0xFFFFFFFFFFFFFLL;
  }

  v6 = (v3 >> 3) & 0xF;
  v7 = (v5 & (v3 >> 3)) >> 4;
  if (v6 < 8)
  {
    __src[0] = v7;
  }

  else
  {
    v8 = (v3 >> 3) & 0xF;
    if (v6 >= 0xA)
    {
      do
      {
        *(&v13 + v8) = sixBitToCharLookup[v7 & 0x1F];
        v7 >>= 5;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        *(&v13 + v8) = sixBitToCharLookup[v7 & 0x3F];
        v7 >>= 6;
        --v8;
      }

      while (v8);
    }
  }

  os_unfair_lock_lock_with_options();
  v9 = nextAvailableCacheSlot;
  if (nextAvailableCacheSlot <= 0)
  {
    os_unfair_lock_unlock(&cacheLock);
LABEL_16:
    v10 = objc_alloc_init(NSTaggedPointerStringCStringContainer);
    goto LABEL_17;
  }

  --nextAvailableCacheSlot;
  v10 = cache[v9 - 1];
  os_unfair_lock_unlock(&cacheLock);
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_17:
  v11 = v10 + 8;
  memmove(v11, __src, v6);
  v11[v6] = 0;
  return v11;
}

- (unint64_t)hash
{
  v11[2] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v11[1] = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ self;
  v4 = (~(v2 ^ self) & 7) == 0;
  v5 = 0xFFFFFFFFFFFFFFFLL;
  if (v4)
  {
    v5 = 0xFFFFFFFFFFFFFLL;
  }

  v6 = (v3 >> 3) & 0xF;
  v7 = (v5 & (v3 >> 3)) >> 4;
  if (v6 < 8)
  {
    v11[0] = v7;
  }

  else
  {
    v8 = (v3 >> 3) & 0xF;
    if (v6 >= 0xA)
    {
      do
      {
        *(&v10 + v8) = sixBitToCharLookup[v7 & 0x1F];
        v7 >>= 5;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        *(&v10 + v8) = sixBitToCharLookup[v7 & 0x3F];
        v7 >>= 6;
        --v8;
      }

      while (v8);
    }
  }

  return CFStringHashISOLatin1CString(v11, v6);
}

- (unint64_t)length
{
  v2 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v2 = 7;
  }

  return ((v2 ^ self) >> 3) & 0xF;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  qword_1EA849A30 = "NSTaggedPointerString cannot be allocated";
  __break(1u);
  return result;
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = 0;
  v3 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ self;
  v5 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v4 & 7) == 0)
  {
    v5 = 0xFFFFFFFFFFFFFLL;
  }

  v6 = v5 & (v4 >> 3);
  v7 = (v4 >> 3) & 0xF;
  v8 = v6 >> 4;
  if (v7 < 8)
  {
    v15 = v8;
  }

  else
  {
    v9 = v7;
    if (v7 >= 0xA)
    {
      do
      {
        *(&v14 + v9 + 7) = sixBitToCharLookup[v8 & 0x1F];
        v8 >>= 5;
        --v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        *(&v14 + v9 + 7) = sixBitToCharLookup[v8 & 0x3F];
        v8 >>= 6;
        --v9;
      }

      while (v9);
    }
  }

  if (v7 <= index)
  {
    v12 = v7;
    v13 = __CFExceptionProem(self, a2);
    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Index %lu out of bounds; string length %lu", v13, index, v12, v15, v16, v17);
  }

  return *(&v15 + index);
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v4 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v4 = 0;
  }

  v5 = v4 ^ self;
  v6 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v5 & 7) == 0)
  {
    v6 = 0xFFFFFFFFFFFFFLL;
  }

  v7 = v6 & (v5 >> 3);
  v8 = (v5 >> 3) & 0xF;
  v9 = v7 >> 4;
  if (v8 < 8)
  {
    v19 = v9;
  }

  else
  {
    v10 = v8;
    if (v8 >= 0xA)
    {
      do
      {
        *(&v18 + v10 + 7) = sixBitToCharLookup[v9 & 0x1F];
        v9 >>= 5;
        --v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        *(&v18 + v10 + 7) = sixBitToCharLookup[v9 & 0x3F];
        v9 >>= 6;
        --v10;
      }

      while (v10);
    }
  }

  if (v8 < range.length || range.location > v8 - range.length)
  {
    length = range.length;
    location = range.location;
    v15 = v8;
    v16 = __CFExceptionProem(self, a2);
    v17 = "";
    if (length == 64)
    {
      v17 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v16, location, length, v15, v17, v19, v20, v21);
  }

  if (range.length)
  {
    v11 = &v19 + range.location;
    do
    {
      v12 = *v11++;
      *characters++ = v12;
      --range.length;
    }

    while (range.length);
  }
}

- (id)substringWithRange:(_NSRange)range
{
  length = range.length;
  v26[2] = *MEMORY[0x1E69E9840];
  v26[0] = 0;
  v26[1] = 0;
  v4 = MEMORY[0x1E69E5910];
  v5 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) != 0)
  {
    v6 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 ^ self;
  v8 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v7 & 7) == 0)
  {
    v8 = 0xFFFFFFFFFFFFFLL;
  }

  v9 = v8 & (v7 >> 3);
  v10 = (v7 >> 3) & 0xF;
  v11 = v9 >> 4;
  if (v10 < 8)
  {
    v26[0] = v11;
  }

  else
  {
    v12 = v10;
    if (v10 >= 0xA)
    {
      do
      {
        *(&v25 + v12 + 7) = sixBitToCharLookup[v11 & 0x1F];
        v11 >>= 5;
        --v12;
      }

      while (v12);
    }

    else
    {
      do
      {
        *(&v25 + v12 + 7) = sixBitToCharLookup[v11 & 0x3F];
        v11 >>= 6;
        --v12;
      }

      while (v12);
    }
  }

  if (v10 < range.length || range.location > v10 - range.length)
  {
    location = range.location;
    v22 = v10;
    v23 = __CFExceptionProem(self, a2);
    v24 = "";
    if (length == 64)
    {
      v24 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v23, location, length, v22, v24);
  }

  if (!range.length)
  {
    return &stru_1EF068AA8;
  }

  v13 = v26 + range.location;
  if (range.length < 8)
  {
    v25 = 0;
    __memmove_chk();
    result = 0;
    if ((v25 & 0x8080808080808080) == 0)
    {
      result = ((8 * length) | (v25 << 7) | 0x8000000000000002);
      v18 = *v4 ^ result;
LABEL_30:
      if ((~v18 & 0xC000000000000007) != 0)
      {
        return (v18 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v18 & 7)));
      }
    }
  }

  else
  {
    if (range.length <= 0xB)
    {
      if (range.length >= 0xA)
      {
        v14 = 0;
        v19 = range.length;
        while (1)
        {
          v20 = charToSixBitLookup[*v13];
          if (v20 > 0x1F)
          {
            break;
          }

          v14 = v20 | (32 * v14);
          ++v13;
          if (!--v19)
          {
LABEL_29:
            result = ((v14 << 7) | (8 * range.length) | 0x8000000000000002);
            v18 = result ^ v5;
            goto LABEL_30;
          }
        }
      }

      else
      {
        v14 = 0;
        v15 = range.length;
        while (1)
        {
          v16 = charToSixBitLookup[*v13];
          if (v16 > 0x3F)
          {
            break;
          }

          v14 = v16 | (v14 << 6);
          ++v13;
          if (!--v15)
          {
            goto LABEL_29;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else if (equal)
  {
    if ((equal & 0x8000000000000000) != 0)
    {

      LOBYTE(v5) = isEqualToTaggedPointer(self, equal);
    }

    else
    {
      v5 = _NSIsNSString(equal);
      if (v5)
      {

        LOBYTE(v5) = isEqualToString(self, equal);
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isEqualToString:(id)string
{
  if (self == string)
  {
    return 1;
  }

  if ((string & 0x8000000000000000) != 0)
  {
    return isEqualToTaggedPointer(self, string);
  }

  return isEqualToString(self, string);
}

- (int64_t)compare:(id)compare options:(unint64_t)options range:(_NSRange)range locale:(id)locale
{
  __s2[2] = *MEMORY[0x1E69E9840];
  if (self == compare)
  {
    return 0;
  }

  length = range.length;
  location = range.location;
  optionsCopy = options;
  if (options > 3 || !compare || locale)
  {
    v37.receiver = self;
    v37.super_class = NSTaggedPointerString;
    return [NSTaggedPointerString compare:sel_compare_options_range_locale_ options:? range:? locale:?];
  }

  __s2[0] = 0;
  __s2[1] = 0;
  v11 = MEMORY[0x1E69E5910];
  if ((compare & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

  v12 = 0;
  v13 = *MEMORY[0x1E69E5910];
  v14 = (~compare & 0xC000000000000007) != 0 ? *MEMORY[0x1E69E5910] : 0;
  v15 = v14 ^ compare;
  v16 = v15 & 7;
  while (v16 != *(MEMORY[0x1E69E5900] + v12))
  {
    if (++v12 == 7)
    {
      goto LABEL_24;
    }
  }

  if (v12 == 2)
  {
    v18 = 0xFFFFFFFFFFFFFFFLL;
    if (v16 == 7)
    {
      v18 = 0xFFFFFFFFFFFFFLL;
    }

    v19 = (v15 >> 3) & 0xF;
    v20 = (v18 & (v15 >> 3)) >> 4;
    if (v19 < 8)
    {
      __s2[0] = v20;
      v22 = __s2;
    }

    else
    {
      v21 = v19;
      if (v19 >= 0xA)
      {
        do
        {
          v22 = __s2;
          *(__s2 + v21 - 1) = sixBitToCharLookup[v20 & 0x1F];
          v20 >>= 5;
          --v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = __s2;
          *(__s2 + v21 - 1) = sixBitToCharLookup[v20 & 0x3F];
          v20 >>= 6;
          --v21;
        }

        while (v21);
      }
    }
  }

  else
  {
LABEL_24:
    CStringPtr = CFStringGetCStringPtr(compare, 0x600u);
    if (!CStringPtr)
    {
      v36.receiver = self;
      v36.super_class = NSTaggedPointerString;
      return [NSTaggedPointerString compare:sel_compare_options_range_locale_ options:? range:? locale:?];
    }

    v22 = CStringPtr;
    v19 = [compare length];
    v13 = *v11;
  }

  v38[0] = 0;
  v38[1] = 0;
  if ((~self & 0xC000000000000007) == 0)
  {
    v13 = 0;
  }

  v24 = v13 ^ self;
  v25 = 0xFFFFFFFFFFFFFFFLL;
  if ((~v24 & 7) == 0)
  {
    v25 = 0xFFFFFFFFFFFFFLL;
  }

  v26 = v25 & (v24 >> 3);
  v27 = (v24 >> 3) & 0xF;
  if (v27 < 8)
  {
    v38[0] = v26 >> 4;
  }

  else
  {
    v28 = v26 >> 4;
    if (v27 >= 0xA)
    {
      do
      {
        *(&v37.super_class + v27 + 7) = sixBitToCharLookup[v28 & 0x1F];
        v28 >>= 5;
        --v27;
      }

      while (v27);
    }

    else
    {
      do
      {
        *(&v37.super_class + v27 + 7) = sixBitToCharLookup[v28 & 0x3F];
        v28 >>= 6;
        --v27;
      }

      while (v27);
    }
  }

  if (length >= v19)
  {
    v29 = v19;
  }

  else
  {
    v29 = length;
  }

  v30 = v38 + location;
  if (optionsCopy)
  {
    v31 = _CFStringCompareASCIICaseInsensitive(v30, v22, v29);
  }

  else
  {
    v31 = memcmp(v30, v22, v29);
  }

  v32 = length - v19;
  if (v31)
  {
    v32 = v31;
  }

  v33 = v32 == 0;
  v34 = v32 < 0;
  v35 = -1;
  if (!v34)
  {
    v35 = 1;
  }

  if (v33)
  {
    return 0;
  }

  else
  {
    return v35;
  }
}

- (const)cStringUsingEncoding:(unint64_t)encoding
{
  v5 = *MEMORY[0x1E69E9840];
  if (encoding <= 5 && ((1 << encoding) & 0x32) != 0)
  {

    return [(NSTaggedPointerString *)self UTF8String];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSTaggedPointerString;
    return [(NSTaggedPointerString *)&v4 cStringUsingEncoding:?];
  }
}

- (BOOL)_getCString:(char *)string maxLength:(unint64_t)length encoding:(unsigned int)encoding
{
  stringCopy = string;
  __src[2] = *MEMORY[0x1E69E9840];
  if (encoding == 513 || encoding == 134217984 || encoding == 1536)
  {
    __src[0] = 0;
    __src[1] = 0;
    v6 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v6 = 0;
    }

    v7 = v6 ^ self;
    v8 = (~(v6 ^ self) & 7) == 0;
    v9 = 0xFFFFFFFFFFFFFFFLL;
    if (v8)
    {
      v9 = 0xFFFFFFFFFFFFFLL;
    }

    v10 = (v7 >> 3) & 0xF;
    v11 = (v9 & (v7 >> 3)) >> 4;
    if (v10 < 8)
    {
      __src[0] = v11;
    }

    else
    {
      v12 = (v7 >> 3) & 0xF;
      if (v10 >= 0xA)
      {
        do
        {
          *(&v15.super_class + v12 + 7) = sixBitToCharLookup[v11 & 0x1F];
          v11 >>= 5;
          --v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          *(&v15.super_class + v12 + 7) = sixBitToCharLookup[v11 & 0x3F];
          v11 >>= 6;
          --v12;
        }

        while (v12);
      }
    }

    v13 = v10 <= length;
    if (v10 <= length)
    {
      memmove(string, __src, v10);
      stringCopy += v10;
    }

    *stringCopy = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NSTaggedPointerString;
    return [(NSTaggedPointerString *)&v15 _getCString:string maxLength:length encoding:?];
  }

  return v13;
}

- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange
{
  v24[2] = *MEMORY[0x1E69E9840];
  if (options || encoding > 5 || ((1 << encoding) & 0x32) == 0)
  {
    v23.receiver = self;
    v23.super_class = NSTaggedPointerString;
    return [(NSTaggedPointerString *)&v23 getBytes:bytes maxLength:length usedLength:usedLength encoding:encoding options:range.location range:range.length remainingRange:remainingRange];
  }

  if (!bytes)
  {
    v18 = *MEMORY[0x1E69E5910];
    if ((~self & 0xC000000000000007) == 0)
    {
      v18 = 7;
    }

    v15 = ((v18 ^ self) >> 3) & 0xF;
    if (v15 >= range.length && range.location <= v15 - range.length)
    {
      length = range.length;
      if (!usedLength)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_35:
    v21 = __CFExceptionProem(self, a2);
    v22 = "";
    if (range.length == 64)
    {
      v22 = " (Note that the indicated range may be smaller than the original range passed to the API)";
    }

    _CFThrowFormattedException(@"NSInvalidArgumentException", @"%@: Range {%lu, %lu} out of bounds; string length %lu%s", v21, range.location, range.length, v15, v22);
  }

  v24[0] = 0;
  v24[1] = 0;
  v11 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) == 0)
  {
    v11 = 0;
  }

  v12 = v11 ^ self;
  v13 = (~(v11 ^ self) & 7) == 0;
  v14 = 0xFFFFFFFFFFFFFFFLL;
  if (v13)
  {
    v14 = 0xFFFFFFFFFFFFFLL;
  }

  v15 = (v12 >> 3) & 0xF;
  v16 = (v14 & (v12 >> 3)) >> 4;
  if (v15 < 8)
  {
    v24[0] = v16;
  }

  else
  {
    v17 = (v12 >> 3) & 0xF;
    if (v15 >= 0xA)
    {
      do
      {
        *(&v23.super_class + v17 + 7) = sixBitToCharLookup[v16 & 0x1F];
        v16 >>= 5;
        --v17;
      }

      while (v17);
    }

    else
    {
      do
      {
        *(&v23.super_class + v17 + 7) = sixBitToCharLookup[v16 & 0x3F];
        v16 >>= 6;
        --v17;
      }

      while (v17);
    }
  }

  if (v15 < range.length || range.location > v15 - range.length)
  {
    goto LABEL_35;
  }

  if (range.length >= length)
  {
    length = length;
  }

  else
  {
    length = range.length;
  }

  memmove(bytes, v24 + range.location, length);
  if (!usedLength)
  {
    goto LABEL_32;
  }

LABEL_31:
  *usedLength = length;
LABEL_32:
  if (remainingRange)
  {
    remainingRange->location = length + range.location;
    remainingRange->length = range.length - length;
  }

  return 1;
}

- (id)lowercaseStringWithLocale:(id)locale
{
  v27[2] = *MEMORY[0x1E69E9840];
  if (locale)
  {
LABEL_2:
    v25.receiver = self;
    v25.super_class = NSTaggedPointerString;
    return [(NSTaggedPointerString *)&v25 lowercaseStringWithLocale:locale];
  }

  v27[0] = 0;
  v27[1] = 0;
  v6 = MEMORY[0x1E69E5910];
  v7 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) != 0)
  {
    v8 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 ^ self;
  v10 = (~(v8 ^ self) & 7) == 0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (v10)
  {
    v11 = 0xFFFFFFFFFFFFFLL;
  }

  v12 = (v9 >> 3) & 0xF;
  v13 = (v11 & (v9 >> 3)) >> 4;
  if (v12 < 8)
  {
    v27[0] = v13;
    if (!v12)
    {
      return &stru_1EF068AA8;
    }
  }

  else
  {
    v14 = (v9 >> 3) & 0xF;
    if (v12 >= 0xA)
    {
      do
      {
        *(&v26 + v14 + 7) = sixBitToCharLookup[v13 & 0x1F];
        v13 >>= 5;
        --v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        *(&v26 + v14 + 7) = sixBitToCharLookup[v13 & 0x3F];
        v13 >>= 6;
        --v14;
      }

      while (v14);
    }
  }

  for (i = 0; i != v12; ++i)
  {
    v16 = *(v27 + i);
    if ((v16 - 65) <= 0x19)
    {
      *(v27 + i) = v16 | 0x20;
    }
  }

  if (v12 >= 8)
  {
    if (v12 <= 0xB)
    {
      if (v12 >= 0xA)
      {
        v17 = 0;
        v22 = v27;
        v23 = v12;
        while (1)
        {
          v24 = charToSixBitLookup[*v22];
          if (v24 > 0x1F)
          {
            break;
          }

          v17 = v24 | (32 * v17);
          ++v22;
          if (!--v23)
          {
LABEL_32:
            result = ((8 * v12) | (v17 << 7) | 0x8000000000000002);
            v21 = result ^ v7;
            goto LABEL_33;
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = v27;
        v19 = v12;
        while (1)
        {
          v20 = charToSixBitLookup[*v18];
          if (v20 > 0x3F)
          {
            break;
          }

          v17 = v20 | (v17 << 6);
          ++v18;
          if (!--v19)
          {
            goto LABEL_32;
          }
        }
      }
    }

    goto LABEL_2;
  }

  v26 = 0;
  __memmove_chk();
  result = 0;
  if ((v26 & 0x8080808080808080) == 0)
  {
    result = ((8 * v12) | (v26 << 7) | 0x8000000000000002);
    v21 = *v6 ^ result;
LABEL_33:
    if ((~v21 & 0xC000000000000007) != 0)
    {
      result = (v21 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v21 & 7)));
    }
  }

  if (!result)
  {
    goto LABEL_2;
  }

  return result;
}

- (id)uppercaseStringWithLocale:(id)locale
{
  v27[2] = *MEMORY[0x1E69E9840];
  if (locale)
  {
LABEL_2:
    v25.receiver = self;
    v25.super_class = NSTaggedPointerString;
    return [(NSTaggedPointerString *)&v25 uppercaseStringWithLocale:locale];
  }

  v27[0] = 0;
  v27[1] = 0;
  v6 = MEMORY[0x1E69E5910];
  v7 = *MEMORY[0x1E69E5910];
  if ((~self & 0xC000000000000007) != 0)
  {
    v8 = *MEMORY[0x1E69E5910];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 ^ self;
  v10 = (~(v8 ^ self) & 7) == 0;
  v11 = 0xFFFFFFFFFFFFFFFLL;
  if (v10)
  {
    v11 = 0xFFFFFFFFFFFFFLL;
  }

  v12 = (v9 >> 3) & 0xF;
  v13 = (v11 & (v9 >> 3)) >> 4;
  if (v12 < 8)
  {
    v27[0] = v13;
    if (!v12)
    {
      return &stru_1EF068AA8;
    }
  }

  else
  {
    v14 = (v9 >> 3) & 0xF;
    if (v12 >= 0xA)
    {
      do
      {
        *(&v26 + v14 + 7) = sixBitToCharLookup[v13 & 0x1F];
        v13 >>= 5;
        --v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        *(&v26 + v14 + 7) = sixBitToCharLookup[v13 & 0x3F];
        v13 >>= 6;
        --v14;
      }

      while (v14);
    }
  }

  for (i = 0; i != v12; ++i)
  {
    v16 = *(v27 + i);
    if ((v16 - 97) <= 0x19)
    {
      *(v27 + i) = v16 - 32;
    }
  }

  if (v12 >= 8)
  {
    if (v12 <= 0xB)
    {
      if (v12 >= 0xA)
      {
        v17 = 0;
        v22 = v27;
        v23 = v12;
        while (1)
        {
          v24 = charToSixBitLookup[*v22];
          if (v24 > 0x1F)
          {
            break;
          }

          v17 = v24 | (32 * v17);
          ++v22;
          if (!--v23)
          {
LABEL_32:
            result = ((8 * v12) | (v17 << 7) | 0x8000000000000002);
            v21 = result ^ v7;
            goto LABEL_33;
          }
        }
      }

      else
      {
        v17 = 0;
        v18 = v27;
        v19 = v12;
        while (1)
        {
          v20 = charToSixBitLookup[*v18];
          if (v20 > 0x3F)
          {
            break;
          }

          v17 = v20 | (v17 << 6);
          ++v18;
          if (!--v19)
          {
            goto LABEL_32;
          }
        }
      }
    }

    goto LABEL_2;
  }

  v26 = 0;
  __memmove_chk();
  result = 0;
  if ((v26 & 0x8080808080808080) == 0)
  {
    result = ((8 * v12) | (v26 << 7) | 0x8000000000000002);
    v21 = *v6 ^ result;
LABEL_33:
    if ((~v21 & 0xC000000000000007) != 0)
    {
      result = (v21 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v21 & 7)));
    }
  }

  if (!result)
  {
    goto LABEL_2;
  }

  return result;
}

@end