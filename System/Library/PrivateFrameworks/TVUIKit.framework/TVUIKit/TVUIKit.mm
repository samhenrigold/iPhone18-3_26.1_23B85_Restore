id TVUIKitLogObject(uint64_t a1)
{
  if (TVUIKitLogObject_onceToken != -1)
  {
    TVUIKitLogObject_cold_1();
  }

  v2 = TVUIKitLogObject__TVUIKitLogObject;

  return v2;
}

uint64_t __TVUIKitLogObject_block_invoke()
{
  TVUIKitLogObject__TVUIKitLogObject = os_log_create("com.apple.TVUIKit", "System");

  return MEMORY[0x2821F96F8]();
}

id TVUIKitLSMLogObject(uint64_t a1)
{
  if (TVUIKitLSMLogObject_onceToken != -1)
  {
    TVUIKitLSMLogObject_cold_1();
  }

  v2 = TVUIKitLSMLogObject__TVUIKitLogObject;

  return v2;
}

uint64_t __TVUIKitLSMLogObject_block_invoke()
{
  TVUIKitLSMLogObject__TVUIKitLogObject = os_log_create("com.apple.TVUIKit", "LSM");

  return MEMORY[0x2821F96F8]();
}

void sub_26D12A1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t AMPCFStringGetCharacterAtIndex(UniChar *buffer, int64_t a2, uint64_t *a3)
{
  if (a2 < 0 || (v6 = *(buffer + 36), v6 <= a2))
  {
    v9 = 0;
    goto LABEL_6;
  }

  v7 = *(buffer + 33);
  if (v7)
  {
    v8 = *(v7 + 2 * *(buffer + 35) + 2 * a2);
  }

  else
  {
    v12 = *(buffer + 34);
    if (v12)
    {
      v8 = *(v12 + *(buffer + 35) + a2);
    }

    else
    {
      if (*(buffer + 38) <= a2 || (v13 = *(buffer + 37), v13 > a2))
      {
        v14 = a2 - 4;
        if (a2 < 4)
        {
          v14 = 0;
        }

        if (v14 + 128 < v6)
        {
          v6 = v14 + 128;
        }

        *(buffer + 37) = v14;
        *(buffer + 38) = v6;
        v24.length = v6 - v14;
        v24.location = *(buffer + 35) + v14;
        CFStringGetCharacters(*(buffer + 32), v24, buffer);
        v13 = *(buffer + 37);
      }

      v8 = buffer[a2 - v13];
    }
  }

  v9 = v8;
  if (v8 >> 10 != 54 || (v15 = *(buffer + 36), (v15 - 1) <= a2))
  {
LABEL_6:
    v10 = 1;
    if (!a3)
    {
      return v9;
    }

LABEL_7:
    *a3 = v10;
    return v9;
  }

  v16 = a2 + 1;
  v17 = *(buffer + 33);
  if (v17)
  {
    v18 = *(v17 + 2 * *(buffer + 35) + 2 * v16);
  }

  else
  {
    v19 = *(buffer + 34);
    if (v19)
    {
      v18 = *(v19 + *(buffer + 35) + v16);
    }

    else
    {
      if (*(buffer + 38) <= v16 || (v20 = *(buffer + 37), v20 > v16))
      {
        v21 = v16 - 4;
        if (v16 < 4)
        {
          v21 = 0;
        }

        if (v21 + 128 < v15)
        {
          v15 = v21 + 128;
        }

        *(buffer + 37) = v21;
        *(buffer + 38) = v15;
        v25.length = v15 - v21;
        v25.location = *(buffer + 35) + v21;
        CFStringGetCharacters(*(buffer + 32), v25, buffer);
        v20 = *(buffer + 37);
      }

      v18 = buffer[v16 - v20];
    }
  }

  v22 = v18 & 0xFC00;
  v23 = (v9 << 10) + v18 - 56613888;
  v10 = 1;
  if (v22 == 56320)
  {
    v10 = 2;
    v9 = v23;
  }

  else
  {
    v9 = v9;
  }

  if (a3)
  {
    goto LABEL_7;
  }

  return v9;
}

void __defaultParagraphStyle_block_invoke()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:0];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultLTRParagraphStyleAttribute;
  defaultParagraphStyle_defaultLTRParagraphStyleAttribute = v0;
}

void __defaultParagraphStyle_block_invoke_2()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:-1];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultNaturalParagraphStyleAttribute;
  defaultParagraphStyle_defaultNaturalParagraphStyleAttribute = v0;
}

void __defaultParagraphStyle_block_invoke_3()
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:4];
  [v2 setBaseWritingDirection:1];
  [v2 setLineBreakMode:0];
  v0 = [v2 copy];
  v1 = defaultParagraphStyle_defaultRTLParagraphStyleAttribute;
  defaultParagraphStyle_defaultRTLParagraphStyleAttribute = v0;
}

void sub_26D12D058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}