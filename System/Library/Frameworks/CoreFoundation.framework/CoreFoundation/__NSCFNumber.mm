@interface __NSCFNumber
- (BOOL)BOOLValue;
- (BOOL)isEqual:(id)equal;
- (__NSCFNumber)retain;
- (char)charValue;
- (const)objCType;
- (double)doubleValue;
- (float)floatValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionWithLocale:(id)locale;
- (id)stringValue;
- (int)intValue;
- (int64_t)_cfNumberType;
- (int64_t)_reverseCompare:(id)compare;
- (int64_t)compare:(id)compare;
- (int64_t)longLongValue;
- (int64_t)longValue;
- (signed)shortValue;
- (unint64_t)unsignedLongLongValue;
- (unint64_t)unsignedLongValue;
- (unsigned)_getValue:(void *)value forType:(int64_t)type;
- (unsigned)unsignedCharValue;
- (unsigned)unsignedIntValue;
- (unsigned)unsignedShortValue;
- (void)getValue:(void *)value;
- (void)release;
@end

@implementation __NSCFNumber

- (int64_t)longValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v3);
  return v3[0];
}

- (__NSCFNumber)retain
{
  if ((self & 0x8000000000000000) == 0)
  {
    return _CFNonObjCRetain(self);
  }

  return self;
}

- (void)release
{
  if ((self & 0x8000000000000000) == 0)
  {
    _CFNonObjCRelease(self);
  }
}

- (const)objCType
{
  result = _CFNumberGetType2(self);
  v3 = result - 1;
  if (result - 1) < 0x11 && ((0x1003Fu >> v3))
  {
    return off_1E6D81DC0[v3];
  }

  __break(1u);
  return result;
}

- (int64_t)longLongValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v3);
  return v3[0];
}

- (double)doubleValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberDoubleType, v3);
  return *v3;
}

- (id)description
{
  v5 = *MEMORY[0x1E69E9840];
  if (objc_lookUpClass("NSNumber"))
  {
    v4.receiver = self;
    v4.super_class = __NSCFNumber;
    return [&v4 description];
  }

  else
  {

    return [(__NSCFNumber *)self descriptionWithLocale:0];
  }
}

- (unint64_t)unsignedLongLongValue
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v4 = 0;
  CFNumberGetValue(self, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
  return v4;
}

- (unint64_t)unsignedLongValue
{
  v5 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  v4 = 0;
  CFNumberGetValue(self, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
  return v4;
}

- (unsigned)unsignedIntValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v3);
  return v3[0];
}

- (unsigned)unsignedCharValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v3);
  return v3[0];
}

- (float)floatValue
{
  v4 = *MEMORY[0x1E69E9840];
  valuePtr = 0.0;
  CFNumberGetValue(self, kCFNumberFloatType, &valuePtr);
  return valuePtr;
}

- (signed)shortValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v3);
  return v3[0];
}

- (BOOL)BOOLValue
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0.0;
  if (CFNumberIsFloatType(self))
  {
    CFNumberGetValue(self, kCFNumberDoubleType, v5);
    v3 = v5[0] == 0.0;
  }

  else
  {
    CFNumberGetValue(self, kCFNumberSInt64Type, v5);
    v3 = *&v5[0] == 0;
  }

  return !v3;
}

- (int)intValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v3);
  return v3[0];
}

- (char)charValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v3);
  return v3[0];
}

- (unsigned)unsignedShortValue
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CFNumberGetValue(self, kCFNumberSInt64Type, v3);
  return v3[0];
}

- (id)stringValue
{
  v6 = *MEMORY[0x1E69E9840];
  if (objc_lookUpClass("NSNumber"))
  {
    v5.receiver = self;
    v5.super_class = __NSCFNumber;
    return [(__NSCFNumber *)&v5 stringValue];
  }

  else
  {
    FormattingDescription = __CFNumberCreateFormattingDescription(&__kCFAllocatorSystemDefault, self);

    return FormattingDescription;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    if (self == equal)
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v5 = _NSIsNSNumber(equal);
      if (v5)
      {

        LOBYTE(v5) = [(__NSCFNumber *)self isEqualToNumber:equal];
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)descriptionWithLocale:(id)locale
{
  v8 = *MEMORY[0x1E69E9840];
  if (objc_lookUpClass("NSNumber"))
  {
    v7.receiver = self;
    v7.super_class = __NSCFNumber;
    return [(__NSCFNumber *)&v7 descriptionWithLocale:locale];
  }

  else
  {
    v6 = __CFNumberCopyFormattingDescription(self);

    return v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ((self & 0x8000000000000000) == 0)
  {
    return _CFNonObjCRetain(self);
  }

  return self;
}

- (void)getValue:(void *)value
{
  v9 = *MEMORY[0x1E69E9840];
  if ((self & 0x8000000000000000) != 0)
  {
    Type = CFNumberGetType(self);
LABEL_8:

    CFNumberGetValue(self, Type, value);
    return;
  }

  Type = _CFNumberGetType2(self);
  if (Type != (kCFNumberMaxType|kCFNumberSInt8Type))
  {
    goto LABEL_8;
  }

  valuePtr = 0;
  v8 = 0;
  CFNumberGetValue(self, kCFNumberMaxType|kCFNumberSInt8Type, &valuePtr);
  if (valuePtr)
  {
    v6 = -1;
  }

  else
  {
    v6 = v8;
  }

  *value = v6;
}

- (int64_t)_cfNumberType
{
  v3 = *[(__NSCFNumber *)self objCType];
  result = 7;
  if (v3 <= 98)
  {
    if (v3 > 75)
    {
      if (v3 != 76)
      {
        if (v3 == 81)
        {
          return 17;
        }

        if (v3 != 83)
        {
          goto LABEL_32;
        }

        return 9;
      }

      if (([(__NSCFNumber *)self unsignedLongValue]& 0x8000000000000000) == 0)
      {
        return 10;
      }

      else
      {
        return 11;
      }
    }

    else if (v3 != 66)
    {
      if (v3 == 67)
      {
        return 8;
      }

      if (v3 != 73)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      if (([(__NSCFNumber *)self unsignedIntValue]& 0x80000000) != 0)
      {
        return 11;
      }

      else
      {
        return 9;
      }
    }
  }

  else
  {
    if (v3 > 104)
    {
      if (v3 <= 112)
      {
        if (v3 != 105)
        {
          if (v3 == 108)
          {
            return 10;
          }

          goto LABEL_32;
        }

        return 9;
      }

      if (v3 == 113)
      {
        return 11;
      }

      if (v3 != 115)
      {
        goto LABEL_32;
      }

      return 8;
    }

    if (v3 != 99)
    {
      if (v3 == 100)
      {
        return 13;
      }

      if (v3 == 102)
      {
        return 12;
      }

      goto LABEL_32;
    }
  }

  return result;
}

- (unsigned)_getValue:(void *)value forType:(int64_t)type
{
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        *value = [(__NSCFNumber *)self longLongValue];
      }

      else
      {
        [(__NSCFNumber *)self floatValue];
        *value = v5;
      }

      goto LABEL_16;
    }

    if (type == 6)
    {
      [(__NSCFNumber *)self doubleValue];
      *value = v7;
      goto LABEL_16;
    }

    if (type == 17)
    {
      longLongValue = [(__NSCFNumber *)self longLongValue];
      *value = longLongValue >> 63;
      *(value + 1) = longLongValue;
      goto LABEL_16;
    }

LABEL_17:
    __break(1u);
    return self;
  }

  if (type == 1)
  {
    *value = [(__NSCFNumber *)self charValue];
    goto LABEL_16;
  }

  if (type == 2)
  {
    *value = [(__NSCFNumber *)self shortValue];
    goto LABEL_16;
  }

  if (type != 3)
  {
    goto LABEL_17;
  }

  *value = [(__NSCFNumber *)self intValue];
LABEL_16:
  LOBYTE(self) = 1;
  return self;
}

- (int64_t)_reverseCompare:(id)compare
{
  v3 = [(__NSCFNumber *)self compare:compare];
  if (v3 == 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  if (v3 == -1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (int64_t)compare:(id)compare
{
  if (!compare)
  {
    [(__NSCFNumber *)self compare:a2];
  }

  if (self == compare)
  {
    return 0;
  }

  v5 = *[compare objCType];
  objCType = [(__NSCFNumber *)self objCType];
  if ((v5 & 0xFFFFFFFD) == 0x64 || (v7 = *objCType, (v7 & 0xFFFFFFFD) == 0x64))
  {
    [(__NSCFNumber *)self doubleValue];
    v13 = v12;
    [compare doubleValue];
    if (v13 >= v14)
    {
      return v14 < v13;
    }

    return -1;
  }

  if (v5 == 81 && v7 == 81)
  {
    unsignedLongLongValue = [(__NSCFNumber *)self unsignedLongLongValue];
    unsignedLongLongValue2 = [compare unsignedLongLongValue];
    if (unsignedLongLongValue >= unsignedLongLongValue2)
    {
      v10 = 0;
    }

    else
    {
      v10 = -1;
    }

    if (unsignedLongLongValue > unsignedLongLongValue2)
    {
      return 1;
    }

    else
    {
      return v10;
    }
  }

  if (v7 == 81 && ([(__NSCFNumber *)self unsignedLongLongValue]& 0x8000000000000000) != 0)
  {
    return 1;
  }

  if (v5 == 81 && [compare unsignedLongLongValue] < 0)
  {
    return -1;
  }

  longLongValue = [(__NSCFNumber *)self longLongValue];
  longLongValue2 = [compare longLongValue];
  if (longLongValue >= longLongValue2)
  {
    v17 = 0;
  }

  else
  {
    v17 = -1;
  }

  if (longLongValue > longLongValue2)
  {
    return 1;
  }

  else
  {
    return v17;
  }
}

@end