CFMutableDictionaryRef sub_1AF22B4F4(CFMutableDictionaryRef result)
{
  if (!*(result + 2))
  {
    v1 = result;
    v2 = *(result + 4);
    if (v2)
    {
      CFRelease(v2);
    }

    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(v1 + 4) = result;
  }

  return result;
}

const void *sub_1AF22B558(uint64_t a1, unsigned int a2, void *key, __int128 *a4)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a4[1];
    v14 = *a4;
    v15 = v9;
    v16 = a4[2];
    v17 = *(a4 + 6);
    return sub_1AF22B264(v8, a2, key, &v14);
  }

  else
  {
    Value = CFDictionaryGetValue(*(a1 + 32), key);
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(*(a1 + 32), key, Value);
      CFRelease(Value);
    }

    v10 = CFDictionaryGetValue(Value, a2);
    if (!v10)
    {
      v12 = a4[1];
      v14 = *a4;
      v15 = v12;
      v16 = a4[2];
      v17 = *(a4 + 6);
      v10 = sub_1AF223344(key, a2, &v14);
      CFDictionaryAddValue(Value, a2, v10);
      CFRelease(v10);
    }
  }

  return v10;
}

CFIndex sub_1AF22B684(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 40) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  result = *(a1 + 24);
  if (result)
  {
    GlyphRuns = CTLineGetGlyphRuns(result);
    result = CFArrayGetCount(GlyphRuns);
    if (result >= 1)
    {
      v7 = 0;
      v8 = *MEMORY[0x1E6965658];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v7);
        GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
        Attributes = CTRunGetAttributes(ValueAtIndex);
        Value = CFDictionaryGetValue(Attributes, v8);
        if (GlyphCount >= 1)
        {
          v13 = Value;
          for (i = 0; i != GlyphCount; ++i)
          {
            buffer = 0;
            v20.location = i;
            v20.length = 1;
            CTRunGetGlyphs(ValueAtIndex, v20, &buffer);
            v15 = *(a2 + 16);
            v17[0] = *a2;
            v17[1] = v15;
            v17[2] = *(a2 + 32);
            v18 = *(a2 + 48);
            v16 = sub_1AF22B558(a1, buffer, v13, v17);
            CFArrayAppendValue(*(a1 + 40), v16);
          }
        }

        ++v7;
        result = CFArrayGetCount(GlyphRuns);
      }

      while (v7 < result);
    }
  }

  return result;
}

double sub_1AF22B7D0(uint64_t a1, uint64_t a2, unsigned int a3, double result)
{
  if (a1)
  {
    GlyphRuns = CTLineGetGlyphRuns(*(a1 + 24));
    Count = CFArrayGetCount(GlyphRuns);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, i);
        GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
        v13 = GlyphCount;
        v14 = a3 - v9;
        if (a3 > v9)
        {
          if (v14 >= GlyphCount)
          {
            v15.length = GlyphCount;
          }

          else
          {
            v15.length = v14;
          }

          v15.location = 0;
          CTRunGetAdvances(ValueAtIndex, v15, (a2 + 16 * v9));
        }

        v9 += v13;
      }
    }

    if (a3)
    {
      v16 = a3;
      v17 = (a2 + 8);
      result = 0.0;
      do
      {
        v18 = *(v17 - 1);
        v19 = -*v17;
        *(v17 - 1) = result;
        *v17 = v19;
        result = result + v18;
        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }

  return result;
}

CFIndex sub_1AF22B8AC(CFIndex result)
{
  if (result)
  {
    return CFArrayGetCount(*(result + 40));
  }

  return result;
}

CFArrayRef *sub_1AF22B8D0(CFArrayRef *result, CFIndex idx)
{
  if (result)
  {
    return CFArrayGetValueAtIndex(result[5], idx);
  }

  return result;
}

void sub_1AF22B8E8(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[4];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[5];
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

uint64_t sub_1AF22B948()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658708 = result;
  return result;
}

__CFDictionary *sub_1AF22B970(const void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EB658710 != -1)
  {
    sub_1AFDEB0F8();
  }

  v6 = sub_1AF0D160C(qword_1EB658708, 0x20uLL);
  if (a1)
  {
    v7 = CFRetain(a1);
  }

  else
  {
    v7 = 0;
  }

  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  *(v6 + 2) = a3;
  *(v6 + 3) = v7;
  sub_1AF22B4F4(v6);
  v8 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v8;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  sub_1AF22B684(v6, v10);
  return v6;
}

void sub_1AF22BB20(void *a1@<X0>, void *a2@<X8>, const char *a3@<X1>, uint64_t a4@<X2>)
{
  if (a1)
  {
    objc_msgSend__computeViewData(a1, a3, a4);
  }

  else
  {
    bzero(a2, 0x400uLL);
  }
}

double sub_1AF22BD6C@<D0>(uint64_t *__return_ptr a1@<X8>, uint64_t __dst@<X0>, const void *a3@<X1>, uint64_t a4@<X2>, void *a5@<X3>)
{
  v6 = a4;
  v7 = __dst;
  *&v21[5] = *MEMORY[0x1E69E9840];
  if (*(__dst + 8) == -1)
  {
    memcpy(__dst, a3, 0x1A0uLL);
    if (!v6)
    {
      result = 0.0;
      *(a1 + 11) = 0u;
      *(a1 + 12) = 0u;
      *(a1 + 9) = 0u;
      *(a1 + 10) = 0u;
      *(a1 + 7) = 0u;
      *(a1 + 8) = 0u;
      *(a1 + 5) = 0u;
      *(a1 + 6) = 0u;
      *(a1 + 3) = 0u;
      *(a1 + 4) = 0u;
      *(a1 + 1) = 0u;
      *(a1 + 2) = 0u;
      *a1 = 0u;
      return result;
    }

    v10 = (v7 + 24);
    v11 = v6;
    do
    {
      __dst = objc_msgSend_constantOffsetAndSize__::(a5, a3, *(v10 - 4), *(v10 - 3), v10 - 1, v10);
      *(v10 - 11) = __dst;
      if ((__dst & 1) == 0)
      {
        *(v10 - 1) = 0;
        *v10 = 0;
        if ((byte_1EB658720 & 1) == 0)
        {
          byte_1EB658720 = 1;
          v12 = sub_1AF0D5194(__dst, a3);
          __dst = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
          if (__dst)
          {
            sub_1AFDEBFA4(&v16, v17, v12);
          }
        }
      }

      v10 += 4;
      --v11;
    }

    while (v11);
    result = 0.0;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  else
  {
    result = 0.0;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
    if (!a4)
    {
      return result;
    }
  }

  v13 = a1 + 1;
  do
  {
    if ((*(v7 + 13) & 1) == 0)
    {
      v14 = sub_1AF0D5194(__dst, a3);
      __dst = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
      if (__dst)
      {
        sub_1AFDEBFE4(buf, v21, v14);
      }
    }

    *(v13 - 1) = v7;
    if (*(v7 + 13))
    {
      __dst = objc_msgSend_constantData_(a5, a3, *(v7 + 8));
      *v13 = __dst;
    }

    else
    {
      *v13 = 0;
      if ((byte_1EB658721 & 1) == 0)
      {
        byte_1EB658721 = 1;
        v15 = sub_1AF0D5194(__dst, a3);
        __dst = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (__dst)
        {
          sub_1AFDEC034(&v18, v19, v15);
        }
      }
    }

    v7 += 32;
    v13 += 2;
    --v6;
  }

  while (v6);
  return result;
}

void *sub_1AF22BFA0(uint64_t a1, void *a2)
{
  v3 = a1;
  if (!*a1)
  {
    v4 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*v3 + 24) != 4)
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC074();
    }
  }

  v6 = sub_1AF22C83C(v3, a2);
  return memcpy(a2, v6, *(*v3 + 24));
}

void *sub_1AF22C044(uint64_t a1, void *a2)
{
  v3 = a1;
  if (!*a1)
  {
    v4 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*v3 + 24) != 1)
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC0F8();
    }
  }

  v6 = sub_1AF22C83C(v3, a2);
  return memcpy(a2, v6, *(*v3 + 24));
}

void *sub_1AF22C0E8(uint64_t a1, void *a2)
{
  v3 = a1;
  if (!*a1)
  {
    v4 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*v3 + 24) != 16)
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC17C();
    }
  }

  v6 = sub_1AF22C83C(v3, a2);
  return memcpy(a2, v6, *(*v3 + 24));
}

void *sub_1AF22C18C(uint64_t a1, void *a2)
{
  v3 = a1;
  if (!*a1)
  {
    v4 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*v3 + 24) != 2)
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC200();
    }
  }

  v6 = sub_1AF22C83C(v3, a2);
  return memcpy(a2, v6, *(*v3 + 24));
}

void *sub_1AF22C3D0(uint64_t a1, void *a2)
{
  v3 = a1;
  if (!*a1)
  {
    v4 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDEBE1C();
    }
  }

  if (*(*v3 + 24) != 128)
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC308();
    }
  }

  v6 = sub_1AF22C83C(v3, a2);
  return memcpy(a2, v6, *(*v3 + 24));
}

void *sub_1AF22C5C8(uint64_t a1, const void *a2, size_t a3, uint64_t a4)
{
  Alignment = CFXBufferAllocatorGetAlignment(a1, a2);
  CFXBufferAllocatorSetAlignment(a1, a4);
  v9 = CFXBufferAllocatorPerFrameAllocateWithBytes(a1, a2, a3);
  CFXBufferAllocatorSetAlignment(a1, Alignment);
  return v9;
}

void sub_1AF22C73C(void *a1)
{
  CFXBufferSliceGetMTLBuffer();
  if (v2)
  {
    CFXBufferSliceGetMTLBuffer();

    objc_msgSend_addObject_(a1, v4, v3);
  }
}

uint64_t sub_1AF22C83C(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    v3 = sub_1AF0D5194(a1, a2);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (v4)
    {
      sub_1AFDEBE1C();
    }

    if (!*a1)
    {
      v6 = sub_1AF0D5194(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEBE1C();
      }
    }
  }

  if (*(*a1 + 13) == 1 && (v7 = a1[1]) != 0)
  {
    return v7 + *(*a1 + 16);
  }

  else
  {
    return 0;
  }
}

void sub_1AF22C910(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

BOOL sub_1AF22C948(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

void sub_1AF22D344(unint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v2 = a1;
    v3 = a1 + a2;
    while (2)
    {
      switch(*v2)
      {
        case 0:
        case 7:
        case 0xD:
          goto LABEL_14;
        case 1:
        case 2:
        case 3:
        case 4:
          v2 += 2;
          goto LABEL_15;
        case 5:
          v2 += 10;
          goto LABEL_15;
        case 6:
          v2 += 3;
          goto LABEL_15;
        case 8:
        case 0xC:
          v2 += 4;
          goto LABEL_15;
        case 9:
          v2 += 11;
          goto LABEL_15;
        case 0xA:
        case 0x10:
          v2 += 24;
          goto LABEL_15;
        case 0xB:
          v2 += *(v2 + 4) + 8;
          goto LABEL_15;
        case 0xE:
          v2 += 20;
          goto LABEL_15;
        case 0xF:
        case 0x11:
          v2 += 40;
          goto LABEL_15;
        case 0x12:

LABEL_14:
          v2 += 16;
LABEL_15:
          if (v2 >= v3)
          {
            return;
          }

          continue;
        default:
          v4 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDEC488();
          }

          return;
      }
    }
  }
}

void sub_1AF22D428(uint64_t a1)
{
  BytePtr = CFDataGetBytePtr(*(a1 + 16));
  v3 = *(a1 + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF22ED20;
  v4[3] = &unk_1E7A7D918;
  v4[4] = BytePtr;
  sub_1AF22E074(v3, 0, 0, v4);
  CFRelease(*(a1 + 16));
  CFRelease(*(a1 + 24));
}

uint64_t sub_1AF22D4D0()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658730 = result;
  return result;
}

void *sub_1AF22D4F8()
{
  if (qword_1EB658738 != -1)
  {
    sub_1AFDEC4BC();
  }

  v0 = sub_1AF0D160C(qword_1EB658730, 0x30uLL);
  v1 = *MEMORY[0x1E695E480];
  v0[2] = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v0[3] = CFDataCreateMutable(v1, 0);
  v0[6] = -1;
  v0[7] = -1;
  return v0;
}

CFTypeRef sub_1AF22D578(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 32);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

void sub_1AF22D5CC(uint64_t a1)
{
  ++*(a1 + 48);
  CFDataSetLength(*(a1 + 16), 0);
  *(a1 + 40) = 0;
  *(a1 + 56) = -1;
  memset(v2, 0, sizeof(v2));
  CFDataAppendBytes(*(a1 + 16), v2, 144);
}

UInt8 *sub_1AF22D640(uint64_t a1, const char *a2)
{
  objc_msgSend_encodeNewlyRegisteredResources_(*(a1 + 32), a2, a1);
  Length = CFDataGetLength(*(a1 + 16));
  v4 = CFDataGetLength(*(a1 + 24));
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 16);
    BytePtr = CFDataGetBytePtr(*(a1 + 24));
    CFDataAppendBytes(v6, BytePtr, v5);
  }

  CFDataSetLength(*(a1 + 24), 0);
  result = CFDataGetMutableBytePtr(*(a1 + 16));
  *result = *(a1 + 40);
  *(result + 1) = 144;
  *(result + 2) = Length;
  return result;
}

__n128 sub_1AF22D6CC(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9)
{
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 16));
  MutableBytePtr[1] = a2;
  MutableBytePtr[2] = a3;
  MutableBytePtr[3] = a4;
  MutableBytePtr[4] = a5;
  MutableBytePtr[5] = a6;
  MutableBytePtr[6] = a7;
  MutableBytePtr[7] = a8;
  result = a9;
  MutableBytePtr[8] = a9;
  return result;
}

uint64_t sub_1AF22D744(uint64_t a1)
{
  v2 = [CFXRemoteArgumentEncoder alloc];

  return MEMORY[0x1EEE66B58](v2, sel_initWithRemoteFrameBuilder_encoder_, a1);
}

__n128 sub_1AF22D78C(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (*(a1 + 56) == -1)
  {
    v6 = a2;
    *(a1 + 56) = CFDataGetLength(*(a1 + 16));
    v13 = 0;
    *bytes = a3;
    v11 = a4;
    v12 = v6;
    CFDataAppendBytes(*(a1 + 16), bytes, 48);
  }

  else
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC4D0();
    }
  }

  return result;
}

void sub_1AF22D814(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) == -1)
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEC504();
    }
  }

  else
  {
    v3 = &CFDataGetMutableBytePtr(*(a1 + 16))[*(a1 + 56)];
    *(v3 + 9) = CFDataGetLength(*(a1 + 16)) - *(a1 + 56);
    *(a1 + 56) = -1;
    ++*(a1 + 40);
  }
}

void sub_1AF22D89C(uint64_t a1, UInt8 a2)
{
  if (*(a1 + 56) != -1)
  {
    v5 = v2;
    v6 = v3;
    v4[0] = 1;
    v4[1] = a2;
    CFDataAppendBytes(*(a1 + 16), v4, 2);
  }
}

void sub_1AF22D8E4(uint64_t a1, UInt8 a2)
{
  if (*(a1 + 56) != -1)
  {
    v5 = v2;
    v6 = v3;
    v4[0] = 2;
    v4[1] = a2;
    CFDataAppendBytes(*(a1 + 16), v4, 2);
  }
}

void sub_1AF22D92C(uint64_t a1, UInt8 a2)
{
  if (*(a1 + 56) != -1)
  {
    v5 = v2;
    v6 = v3;
    v4[0] = 3;
    v4[1] = a2;
    CFDataAppendBytes(*(a1 + 16), v4, 2);
  }
}

void sub_1AF22D974(uint64_t a1, UInt8 a2)
{
  if (*(a1 + 56) != -1)
  {
    v5 = v2;
    v6 = v3;
    v4[0] = 4;
    v4[1] = a2;
    CFDataAppendBytes(*(a1 + 16), v4, 2);
  }
}

void sub_1AF22D9BC(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 56) != -1)
  {
    v8 = v3;
    v9 = v4;
    bytes = 5;
    v6 = a2;
    v7 = a3;
    CFDataAppendBytes(*(a1 + 16), &bytes, 10);
  }
}

void sub_1AF22DA08(uint64_t a1, UInt8 a2, UInt8 a3)
{
  if (*(a1 + 56) != -1)
  {
    v6 = v3;
    v7 = v4;
    v5[0] = 6;
    v5[1] = a2;
    v5[2] = a3;
    CFDataAppendBytes(*(a1 + 16), v5, 3);
  }
}

void sub_1AF22DA54(uint64_t a1, char a2, char a3, uint64_t a4)
{
  v4[1] = a4;
  v4[0] = 7;
  BYTE1(v4[0]) = a2;
  BYTE2(v4[0]) = a3;
  CFDataAppendBytes(*(a1 + 16), v4, 16);
}

void sub_1AF22DA94(uint64_t a1, UInt8 a2, UInt8 a3, UInt8 a4)
{
  bytes[0] = 8;
  bytes[1] = a2;
  bytes[2] = a3;
  bytes[3] = a4;
  CFDataAppendBytes(*(a1 + 16), bytes, 4);
}

void sub_1AF22DAD4(uint64_t a1, UInt8 a2, UInt8 a3, uint64_t a4)
{
  bytes[0] = 9;
  bytes[1] = a2;
  bytes[2] = a3;
  v5 = a4;
  CFDataAppendBytes(*(a1 + 16), bytes, 11);
}

void sub_1AF22DB14(uint64_t a1, UInt8 a2, UInt8 a3, uint64_t a4, unsigned int a5)
{
  v6 = a4;
  *bytes = 10;
  bytes[1] = a2;
  bytes[2] = a3;
  v7 = a5;
  CFDataAppendBytes(*(a1 + 16), bytes, 24);
}

void sub_1AF22DB5C(uint64_t a1, UInt8 a2, UInt8 a3, UInt8 a4)
{
  bytes[0] = 12;
  bytes[1] = a2;
  bytes[2] = a3;
  bytes[3] = a4;
  CFDataAppendBytes(*(a1 + 16), bytes, 4);
}

void sub_1AF22DB9C(uint64_t a1, UInt8 a2, UInt8 a3, const UInt8 *a4, CFIndex a5)
{
  *bytes = 11;
  bytes[1] = a2;
  bytes[2] = a3;
  *&bytes[4] = a5;
  CFDataAppendBytes(*(a1 + 16), bytes, 8);
  CFDataAppendBytes(*(a1 + 16), a4, a5);
}

void sub_1AF22DC08(uint64_t a1, const char *a2, int a3, int a4)
{
  v8 = objc_msgSend_resourceIDForBuffer_(*(a1 + 32), a2, a2);
  *bytes = 1;
  v9 = a3;
  v10 = a4;
  CFDataAppendBytes(*(a1 + 24), bytes, 24);
}

void sub_1AF22DC6C(uint64_t a1, const char *a2, int a3, unsigned __int8 a4)
{
  v8 = objc_msgSend_resourceIDForBuffer_(*(a1 + 32), a2, a2);
  *bytes = 2;
  v9 = a3;
  v10 = a4;
  CFDataAppendBytes(*(a1 + 24), bytes, 24);
}

void sub_1AF22DCD8(uint64_t a1, const char *a2, unsigned __int8 a3)
{
  v6 = objc_msgSend_resourceIDForTexture_(*(a1 + 32), a2, a2);
  *bytes = 3;
  v7 = a3;
  CFDataAppendBytes(*(a1 + 24), bytes, 24);
}

void sub_1AF22DD34(uint64_t a1, const char *a2, UInt8 a3)
{
  v5 = objc_msgSend_descForSamplerState_(*(a1 + 32), a2, a2);
  bytes[0] = 4;
  bytes[1] = a3;
  v7 = v5 | 0x8000000000000000;
  CFDataAppendBytes(*(a1 + 24), bytes, 10);
}

void sub_1AF22DDC4(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v4[1] = a2;
  v4[0] = 13;
  BYTE1(v4[0]) = a3;
  BYTE2(v4[0]) = a4;
  CFDataAppendBytes(*(a1 + 16), v4, 16);
}

void sub_1AF22DE04(uint64_t a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = a2;
  CFDataAppendBytes(*(a1 + 16), v2, 16);
}

void sub_1AF22DE34(uint64_t a1, UInt8 a2, int a3, int a4, int a5, int a6)
{
  v7 = a3;
  *bytes = 14;
  bytes[1] = a2;
  v8 = a4;
  v9 = a5;
  v10 = a6;
  CFDataAppendBytes(*(a1 + 16), bytes, 20);
}

void sub_1AF22DE78(uint64_t a1, char a2, int a3, char a4, uint64_t a5, int a6, int a7, int a8, unsigned int a9)
{
  v9[0] = 15;
  BYTE1(v9[0]) = a2;
  BYTE2(v9[0]) = a4;
  v9[1] = a5;
  v10 = a6;
  v11 = a3;
  v12 = a7;
  v13 = a8;
  v14 = a9;
  CFDataAppendBytes(*(a1 + 16), v9, 40);
}

void sub_1AF22DED4(uint64_t a1, UInt8 a2, uint64_t a3, unsigned int a4)
{
  v5 = a3;
  *bytes = 16;
  bytes[1] = a2;
  v6 = a4;
  CFDataAppendBytes(*(a1 + 16), bytes, 24);
}

void sub_1AF22DF18(uint64_t a1, char a2, char a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7)
{
  v7[0] = 17;
  BYTE1(v7[0]) = a2;
  BYTE2(v7[0]) = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a7;
  CFDataAppendBytes(*(a1 + 16), v7, 40);
}

void sub_1AF22DF6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = 0;
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, a3, 1, &v16);
  LODWORD(v15) = objc_msgSend_length(v5, v6, v7, 0, a2, 0);
  CFDataAppendBytes(*(a1 + 24), &v14, 24);
  v10 = objc_msgSend_bytes(v5, v8, v9);
  v13 = objc_msgSend_length(v5, v11, v12);
  CFDataAppendBytes(*(a1 + 24), v10, v13);
}

__n128 sub_1AF22E000(const __CFData *a1, _OWORD *a2, uint64_t a3)
{
  BytePtr = CFDataGetBytePtr(a1);
  v6 = *(BytePtr + 4);
  v8 = *(BytePtr + 1);
  v7 = *(BytePtr + 2);
  a2[2] = *(BytePtr + 3);
  a2[3] = v6;
  *a2 = v8;
  a2[1] = v7;
  result = *(BytePtr + 5);
  v10 = *(BytePtr + 6);
  v11 = *(BytePtr + 8);
  *(a3 + 32) = *(BytePtr + 7);
  *(a3 + 48) = v11;
  *a3 = result;
  *(a3 + 16) = v10;
  return result;
}

BOOL sub_1AF22E048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == v3)
  {
    return *(a1 + 8) <= *(a2 + 8);
  }

  else
  {
    return v2 < v3;
  }
}

void sub_1AF22E074(const __CFData *a1, int a2, uint64_t a3, uint64_t a4)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    v8 = BytePtr;
    v9 = *(BytePtr + 1);
    v10 = *(BytePtr + 2);
    if (a2)
    {
      *v11.i64 = MEMORY[0x1EEE9AC00](BytePtr);
      v16 = (v27 - ((v15 + 15) & 0x1FFFFFFFF0));
      if (v9 + 48 <= v10)
      {
        v17 = 0;
        v18 = vabsq_f32(v14);
        v19 = vabsq_f32(v13);
        v20 = vabsq_f32(v12);
        do
        {
          v21 = &v16[3 * v17];
          v22 = *&v8[v9 + 32];
          v23 = *&v8[v9 + 36];
          *v21 = v9;
          *(v21 + 1) = v22;
          v24 = *&v8[v9 + 16];
          v24.i32[1] = v24.i32[0];
          v24.i32[2] = *&v8[v9 + 16];
          v21[2] = -COERCE_FLOAT(vaddq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v11, v12, *(v8 + v9), 2), v13, *(v8 + v9), 1), v14, COERCE_FLOAT(*(v8 + v9))), vmlaq_f32(vmlaq_f32(vmulq_f32(v19, vuzp2q_s32(vdupq_lane_s32(*(v8 + v9 + 16), 1), *(v8 + v9 + 16))), v24, v18), vzip2q_s32(vtrn1q_s32(*(v8 + v9 + 16), *(v8 + v9 + 16)), *(v8 + v9 + 16)), v20)).i32[2]);
          v9 += v23;
          ++v17;
        }

        while (v9 + 48 <= v10);
      }

      qsort(v16, *v8, 0xCuLL, sub_1AF22E048);
      if (*v8)
      {
        v25 = 0;
        do
        {
          v26 = *v16;
          v16 += 3;
          (*(a4 + 16))(a4, *&v8[v26 + 32], *&v8[v26], *&v8[v26 + 16]);
          ++v25;
        }

        while (v25 < *v8);
      }
    }

    else
    {
      for (; v9 + 48 <= v10; v9 += *&v8[v9 + 36])
      {
        (*(a4 + 16))(a4, *&v8[v9 + 32], v9, *&v8[v9], *&v8[v9 + 16]);
      }
    }
  }
}

void sub_1AF22E280(const __CFData *a1, void *a2)
{
  *&v47[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  Length = CFDataGetLength(a1);
  BytePtr = CFDataGetBytePtr(a1);
  v8 = objc_msgSend_clearArgumentBufferDescriptors(a2, v6, v7);
  v10 = *(BytePtr + 2);
  if (Length <= v10)
  {
    v11 = 0;
    goto LABEL_39;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = &BytePtr[Length];
  v15 = &BytePtr[v10];
  do
  {
    v16 = *v15;
    if (v16 <= 2)
    {
      if (!*v15)
      {
        v20 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v9, (v15 + 24), *(v15 + 4), 0);
        v37 = 0;
        v21 = MEMORY[0x1E696ACD0];
        v22 = objc_opt_class();
        v24 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v21, v23, v22, v20, &v37);
        v8 = objc_msgSend_remoteRegisterRenderPipelineDescriptor_remoteID_(a2, v25, v24, *(v15 + 1));
        v15 += *(v15 + 4) + 24;
        continue;
      }

      if (v16 == 1)
      {
        if (v11)
        {
          v27 = sub_1AF0D5194(v8, v9);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC57C(v46, v47, v27);
          }
        }

        v18 = (v15 + 24);

        v8 = objc_alloc_init(CFXRemoteArgumentBufferDescriptor);
        v11 = v8;
        v12 = *(v15 + 1);
        v13 = *(v15 + 4);
      }

      else
      {
        if (v16 != 2)
        {
          continue;
        }

        if (!v11)
        {
          v17 = sub_1AF0D5194(v8, v9);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC538(v44, &v45, v17);
          }
        }

        v18 = (v15 + 24);
        v8 = objc_msgSend_setBuffer_offset_at_(v11, v9, *(v15 + 1), *(v15 + 4), v15[20]);
      }

      goto LABEL_32;
    }

    switch(v16)
    {
      case 3u:
        if (!v11)
        {
          v26 = sub_1AF0D5194(v8, v9);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC538(v42, &v43, v26);
          }
        }

        v18 = (v15 + 24);
        v8 = objc_msgSend_setTexture_at_(v11, v9, *(v15 + 1), v15[16]);
        goto LABEL_32;
      case 4u:
        if (!v11)
        {
          v28 = sub_1AF0D5194(v8, v9);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC538(v40, &v41, v28);
          }
        }

        v18 = (v15 + 10);
        v8 = objc_msgSend_setSampler_at_(v11, v9, *(v15 + 2), v15[1]);
LABEL_32:
        v15 = v18;
        break;
      case 5u:
        if (!v11)
        {
          v19 = sub_1AF0D5194(v8, v9);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEC538(v38, &v39, v19);
          }
        }

        objc_msgSend_remoteRegisterArgumentBufferDescriptor_remoteID_offset_(a2, v9, v11, v12, v13);

        v13 = 0;
        v12 = 0;
        v11 = 0;
        ++v15;
        break;
    }
  }

  while (v15 < v14);
  if (v11)
  {
    v29 = sub_1AF0D5194(v8, v9);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEC5C0(v29, v30, v31, v32, v33, v34, v35, v36);
    }
  }

LABEL_39:
}

void sub_1AF22E5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_bufferForResourceID_(*(a3 + 24), a2, *(a2 + 8));
  ArgumentBufferDescriptorWithRemoteID_offset = objc_msgSend_fetchArgumentBufferDescriptorWithRemoteID_offset_(*(a3 + 24), v7, *(a2 + 8), *(a2 + 16));
  if (ArgumentBufferDescriptorWithRemoteID_offset)
  {
    v10 = ArgumentBufferDescriptorWithRemoteID_offset;
    if (!a1)
    {
      v11 = sub_1AF0D5194(ArgumentBufferDescriptorWithRemoteID_offset, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEC638(v11, v9, v12, v13, v14, v15, v16, v17);
      }
    }

    v20 = objc_msgSend_renderPipelineDescForResourceID_(*(a3 + 24), v9, a1);
    if (!v20)
    {
      v21 = sub_1AF0D5194(0, v18);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEC6B0(v21, v18, v19, v22, v23, v24, v25, v26);
      }
    }

    v28 = objc_msgSend_argumentEncoder(v20, v18, v19);
    if (!v28)
    {
      v29 = sub_1AF0D5194(0, v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDEC728(v29, v30, v31, v32, v33, v34, v35, v36);
      }
    }

    v37 = v28;
    objc_msgSend_setArgumentBuffer_offset_(v28, v38, v6, *(a2 + 16));
    v39 = *(a3 + 16);
    v44[0] = *a3;
    v44[1] = v39;
    ArgumentBufferDescriptorWithRemoteID_offset = objc_msgSend_patchArgumentBufferWithEncoder_encoderContext_(v10, v40, v28, v44);
  }

  if (v6)
  {
    v41 = *(a2 + 1);
    if (v41)
    {
      objc_msgSend_setVertexBuffer_offset_atIndex_(*a3, v9, v6, *(a2 + 16), *(a2 + 2));
      v41 = *(a2 + 1);
    }

    if ((v41 & 2) != 0)
    {
      objc_msgSend_setFragmentBuffer_offset_atIndex_(*a3, v9, v6, *(a2 + 16), *(a2 + 2));
    }
  }

  else
  {
    v42 = sub_1AF0D5194(ArgumentBufferDescriptorWithRemoteID_offset, v9);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a2 + 8);
      LODWORD(v44[0]) = 134217984;
      *(v44 + 4) = v43;
      _os_log_impl(&dword_1AF0CE000, v42, OS_LOG_TYPE_DEFAULT, "Warning: buffer rID:%llu was not found", v44, 0xCu);
    }
  }
}

void sub_1AF22E778(uint64_t a1, unsigned int a2)
{
  v66 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(*(a1 + 8));
  v7 = BytePtr + a2;
  v8 = *(v7 + 36);
  if (v8 >= 0x31)
  {
    v9 = 0;
    v10 = v7 + v8;
    v11 = v7 + 48;
    while (2)
    {
      switch(*v11)
      {
        case 0:
          BytePtr = objc_msgSend_renderPipelineForResourceID_(*(a1 + 24), v6, *(v11 + 8));
          if (BytePtr || (BytePtr = objc_msgSend_makeRenderPipelineForResourceID_(*(a1 + 16), v6, *(v11 + 8))) != 0)
          {
            BytePtr = objc_msgSend_setRenderPipelineState_(*a1, v6, BytePtr);
            v9 = *(v11 + 8);
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_49;
        case 1:
          BytePtr = objc_msgSend_setFrontFacingWinding_(*a1, v6, *(v11 + 1));
          goto LABEL_37;
        case 2:
          BytePtr = objc_msgSend_setCullMode_(*a1, v6, *(v11 + 1));
          goto LABEL_37;
        case 3:
          BytePtr = objc_msgSend_setTriangleFillMode_(*a1, v6, *(v11 + 1));
          goto LABEL_37;
        case 4:
          BytePtr = objc_msgSend_setDepthClipMode_(*a1, v6, *(v11 + 1));
LABEL_37:
          v11 += 2;
          goto LABEL_69;
        case 5:
          v2 = v2 & 0xFFFFFFFFFFFFFF00 | *(v11 + 9);
          v41 = objc_msgSend_depthStencilStateForDepthStencilDesc_(*(a1 + 24), v6, *(v11 + 1), v2);
          BytePtr = objc_msgSend_setDepthStencilState_(*a1, v42, v41);
          v11 += 10;
          goto LABEL_69;
        case 6:
          BytePtr = objc_msgSend_setStencilFrontReferenceValue_backReferenceValue_(*a1, v6, *(v11 + 1), *(v11 + 2));
          v11 += 3;
          goto LABEL_69;
        case 7:
          BytePtr = objc_msgSend_textureForResourceID_(*(a1 + 24), v6, *(v11 + 8));
          v35 = BytePtr;
          v36 = *(v11 + 1);
          if (v36)
          {
            BytePtr = objc_msgSend_setVertexTexture_atIndex_(*a1, v6, BytePtr, *(v11 + 2));
            v36 = *(v11 + 1);
          }

          if ((v36 & 2) != 0)
          {
            BytePtr = objc_msgSend_setFragmentTexture_atIndex_(*a1, v6, v35, *(v11 + 2));
          }

          goto LABEL_49;
        case 8:
          BytePtr = objc_msgSend_textureForBuiltin_(*(a1 + 16), v6, *(v11 + 3));
          v47 = BytePtr;
          v48 = *(v11 + 1);
          if (v48)
          {
            BytePtr = objc_msgSend_setVertexTexture_atIndex_(*a1, v6, BytePtr, *(v11 + 2));
            v48 = *(v11 + 1);
          }

          if ((v48 & 2) != 0)
          {
            BytePtr = objc_msgSend_setFragmentTexture_atIndex_(*a1, v6, v47, *(v11 + 2));
          }

          goto LABEL_55;
        case 9:
          BytePtr = objc_msgSend_samplerStateForSamplerDesc_(*(a1 + 24), v6, *(v11 + 3));
          v24 = BytePtr;
          v25 = *(v11 + 1);
          if (v25)
          {
            BytePtr = objc_msgSend_setVertexSamplerState_atIndex_(*a1, v6, BytePtr, *(v11 + 2));
            v25 = *(v11 + 1);
          }

          if ((v25 & 2) != 0)
          {
            BytePtr = objc_msgSend_setFragmentSamplerState_atIndex_(*a1, v6, v24, *(v11 + 2));
          }

          v11 += 11;
          goto LABEL_69;
        case 0xA:
          v46 = *(a1 + 16);
          *buf = *a1;
          v65 = v46;
          sub_1AF22E5A0(v9, v11, buf);
          goto LABEL_58;
        case 0xB:
          v19 = *(v11 + 1);
          if (v19)
          {
            BytePtr = objc_msgSend_setVertexBytes_length_atIndex_(*a1, v6, v11 + 8, *(v11 + 4), *(v11 + 2));
            v19 = *(v11 + 1);
          }

          if ((v19 & 2) != 0)
          {
            BytePtr = objc_msgSend_setFragmentBytes_length_atIndex_(*a1, v6, v11 + 8, *(v11 + 4), *(v11 + 2));
          }

          v11 += 8 + *(v11 + 4);
          goto LABEL_69;
        case 0xC:
          objc_msgSend_bufferForBuiltin_(*(a1 + 16), v6, *(v11 + 3));
          v21 = v20;
          CFXBufferSliceGetMTLBuffer();
          v22 = BytePtr;
          v23 = *(v11 + 1);
          if (v23)
          {
            BytePtr = objc_msgSend_setVertexBuffer_offset_atIndex_(*a1, v6, BytePtr, v21, *(v11 + 2));
            v23 = *(v11 + 1);
          }

          if ((v23 & 2) != 0)
          {
            BytePtr = objc_msgSend_setFragmentBuffer_offset_atIndex_(*a1, v6, v22, v21, *(v11 + 2));
          }

LABEL_55:
          v11 += 4;
          goto LABEL_69;
        case 0xD:
          v43 = objc_msgSend_textureForResourceID_(*(a1 + 24), v6, *(v11 + 8));
          if (v43 || (v43 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v44, *(v11 + 8))) != 0)
          {
            BytePtr = objc_msgSend_useResource_usage_stages_(*a1, v44, v43, *(v11 + 2), *(v11 + 1));
          }

          else
          {
            v53 = sub_1AF0D5194(0, v44);
            BytePtr = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
            if (BytePtr)
            {
              v54 = *(v11 + 8);
              *buf = 134217984;
              *&buf[4] = v54;
              _os_log_impl(&dword_1AF0CE000, v53, OS_LOG_TYPE_DEFAULT, "Warning: UseResource failed with unknown resourceID: %llu", buf, 0xCu);
            }
          }

          goto LABEL_49;
        case 0xE:
          if (v9)
          {
            v14 = *a1;
            v15 = *(v11 + 1);
            v16 = *(v11 + 4);
            v17 = *(v11 + 8);
            v18 = *(v11 + 12);
            if (*(v11 + 16))
            {
              BytePtr = objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_(v14, v6, v15, v16, v17, v18);
            }

            else
            {
              BytePtr = objc_msgSend_drawPrimitives_vertexStart_vertexCount_instanceCount_(v14, v6, v15, v16, v17, v18);
            }
          }

          else
          {
            v50 = sub_1AF0D5194(BytePtr, v6);
            BytePtr = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
            if (BytePtr)
            {
              sub_1AFDEC824(&v62, v63);
            }
          }

          v11 += 20;
          goto LABEL_69;
        case 0xF:
          if (v9)
          {
            v27 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v6, *(v11 + 8));
            v28 = *a1;
            v29 = *(v11 + 1);
            v30 = *(v11 + 2);
            v32 = *(v11 + 16);
            v31 = *(v11 + 20);
            v33 = *(v11 + 28);
            v34 = *(v11 + 32);
            if (v34)
            {
              BytePtr = objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_(v28, v26, v29, v31, v30, v27, v32, v33, *(v11 + 24), v34);
            }

            else
            {
              BytePtr = objc_msgSend_drawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(v28, v26, v29, v31, v30, v27, v32, v33);
            }
          }

          else
          {
            v51 = sub_1AF0D5194(BytePtr, v6);
            BytePtr = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
            if (BytePtr)
            {
              sub_1AFDEC7F8(&v60, v61);
            }
          }

          goto LABEL_68;
        case 0x10:
          if (v9)
          {
            v12 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v6, *(v11 + 8));
            BytePtr = objc_msgSend_drawPrimitives_indirectBuffer_indirectBufferOffset_(*a1, v13, *(v11 + 1), v12, *(v11 + 16));
          }

          else
          {
            v49 = sub_1AF0D5194(BytePtr, v6);
            BytePtr = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
            if (BytePtr)
            {
              sub_1AFDEC7CC(&v58, v59);
            }
          }

LABEL_58:
          v11 += 24;
          goto LABEL_69;
        case 0x11:
          if (v9)
          {
            v37 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v6, *(v11 + 8));
            v39 = objc_msgSend_bufferForResourceID_(*(a1 + 24), v38, *(v11 + 24));
            BytePtr = objc_msgSend_drawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_(*a1, v40, *(v11 + 1), *(v11 + 2), v37, *(v11 + 16), v39, *(v11 + 32));
          }

          else
          {
            v52 = sub_1AF0D5194(BytePtr, v6);
            BytePtr = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
            if (BytePtr)
            {
              sub_1AFDEC7A0(&v56, v57);
            }
          }

LABEL_68:
          v11 += 40;
          goto LABEL_69;
        case 0x12:
          v45 = *(v11 + 1);
          if (v45)
          {
            BytePtr = objc_msgSend_setVertexTexture_atIndex_(*a1, v6, *(v11 + 8), *(v11 + 2));
            v45 = *(v11 + 1);
          }

          if ((v45 & 2) != 0)
          {
            BytePtr = objc_msgSend_setFragmentTexture_atIndex_(*a1, v6, *(v11 + 8), *(v11 + 2));
          }

LABEL_49:
          v11 += 16;
LABEL_69:
          if (v11 >= v10)
          {
            return;
          }

          continue;
        default:
          v55 = sub_1AF0D5194(BytePtr, v6);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDEC488();
          }

          return;
      }
    }
  }
}

char *sub_1AF232994(_BOOL8 a1, uint64_t a2, void *a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDEDFD8(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDD2B48(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEE050(v20, a2, v21, v22, v23, v24, v25, v26);
    }
  }

  v27 = sub_1AF12DDCC(a2, a2);
  Aligned = CScratchAllocatorAllocateAligned(a3, 0x20uLL, 8, 2);
  *Aligned = a3;
  *(Aligned + 1) = 0;
  *(Aligned + 2) = 0;
  *(Aligned + 3) = Aligned + 32;
  Count = CFArrayGetCount(v5);
  v30 = *(Aligned + 5);
  v31 = Count - v30;
  if (Count > v30)
  {
    sub_1AF2348E0(Aligned, v31, 1);
  }

  v32 = sub_1AF12F518(a2, v31);
  CStackAllocatorPushFrame(v32);
  v33 = CStackAllocatorAllocate(v32, 0x28uLL);
  v41 = v32;
  *v33 = v32;
  sub_1AF234CC4(v33, 32);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      if (sub_1AF1C3FAC(ValueAtIndex, v36) == v27)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = sub_1AF232BBC;
        v42[3] = &unk_1E7A7D938;
        v42[4] = v33;
        sub_1AF1B94AC(ValueAtIndex, v42);
      }
    }
  }

  v37 = v33[9];
  if (v37 != -15)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      if (*(*(v33 + 3) + 2 * v39))
      {
        sub_1AF235000(Aligned, (*(v33 + 2) + v38));
        v37 = v33[9];
      }

      ++v39;
      v38 += 8;
    }

    while (v39 < (v37 + 15));
  }

  CStackAllocatorPopFrame(v41);
  return Aligned;
}

BOOL sub_1AF232BBC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (sub_1AF1BA9A4(a2, a2))
    {
      return 1;
    }

    v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47))) ^ 0x35253C9ADE8F4CA8);
    v5 = *(a1 + 32);
    v7 = a2;
    if (!sub_1AF234D70(v5, (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47), &v7))
    {
      return 1;
    }
  }

  return result;
}

unsigned __int8 *sub_1AF232C58(unsigned __int8 *result, unsigned int a2)
{
  if (result)
  {
    v2 = 0xC6A4A7935BD1E995 * a2;
    if (a2 >= 8)
    {
      v3 = a2 >> 3;
      v4 = &result[8 * v3];
      v5 = 8 * v3;
      do
      {
        v6 = *result;
        result += 8;
        v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))) ^ v2);
        v5 -= 8;
      }

      while (v5);
      result = v4;
    }

    v7 = a2 & 7;
    if (v7 <= 3)
    {
      if ((a2 & 7) <= 1)
      {
        if ((a2 & 7) == 0)
        {
          return ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47));
        }

        goto LABEL_22;
      }

      if (v7 == 2)
      {
LABEL_21:
        v2 ^= result[1] << 8;
LABEL_22:
        v2 = 0xC6A4A7935BD1E995 * (v2 ^ *result);
        return ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47));
      }

LABEL_20:
      v2 ^= result[2] << 16;
      goto LABEL_21;
    }

    if ((a2 & 7) > 5)
    {
      if (v7 != 6)
      {
        v2 ^= result[6] << 48;
      }

      v2 ^= result[5] << 40;
    }

    else if (v7 == 4)
    {
      goto LABEL_19;
    }

    v2 ^= result[4] << 32;
LABEL_19:
    v2 ^= result[3] << 24;
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AF232D3C(uint64_t a1, void *a2)
{
  if ((sub_1AF12EE68(a1) & 0x10000) != 0)
  {
    v8 = sub_1AF103070(a2, v3, v4);
    v9 = 0;
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    while (v9 < objc_msgSend_count(v8, v6, v7))
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(v8, v10, v9);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1AF232E6C;
      v13[3] = &unk_1E7A7D960;
      v13[4] = &v14;
      sub_1AF1B94AC(v11, v13);
      ++v9;
      if (v15[3])
      {
        v5 = 1;
        goto LABEL_8;
      }
    }

    v5 = *(v15 + 24);
LABEL_8:
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1AF232E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF232E6C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (sub_1AF1BA9A4(a2, a2))
  {
    return 1;
  }

  result = sub_1AF1B75A0(a2, v4);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 2;
  }

  return result;
}

uint64_t sub_1AF232ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  *&v18 = a2;
  *(&v18 + 1) = a3;
  if ((atomic_load_explicit(byte_1ED73A488, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE0C8();
  }

  if (byte_1ED73A480)
  {
    v8 = 0xA5BDF038E97191F5;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v8, 0);
  *a1 = &unk_1F24E8D50;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  v9 = *(a4 + 24);
  v10 = *(a4 + 40);
  *(a1 + 520) = *(a4 + 56);
  *(a1 + 488) = v9;
  *(a1 + 504) = v10;
  *&v19 = *(a1 + 432);
  LOBYTE(v23) = 0;
  v25 = 0;
  v21 = 0;
  v20 = 0uLL;
  v26 = xmmword_1AFE42EB0;
  v27 = *(a1 + 440);
  v28 = 2;
  v29 = 8;
  v30 = 2;
  v31 = 1;
  *(a1 + 448) = sub_1AF2330E0(v18, *(&v18 + 1), &v18, &v19, &v20);
  v11 = v18;
  v12 = *(a1 + 432);
  *&v20 = 0;
  WORD4(v20) = 0;
  BYTE10(v20) = *(a1 + 441);
  v21 = 48;
  v22 = 0;
  if ((atomic_load_explicit(byte_1ED73A488, memory_order_acquire) & 1) == 0)
  {
    v17 = v11;
    sub_1AFDEE114();
    v11 = v17;
  }

  if (byte_1ED73A480)
  {
    v13 = 0xA5BDF038E97191F5;
  }

  else
  {
    v13 = 0;
  }

  v23 = v13;
  v24 = -1;
  v19 = v11;
  v14 = sub_1AF23498C(&v19, 0x48u, 8u, 2);
  sub_1AF2603E8(v14, v12, &v20, *(a1 + 448));
  *(a1 + 456) = v15;
  return a1;
}

uint64_t sub_1AF2330E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, __int128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0xA0u, 0x10u, 2);
  return sub_1AF23B34C(v8, *a3, a3[1], *a4, a5);
}

void sub_1AF233140(uint64_t a1, const char *a2, uint64_t a3)
{
  sub_1AF23B424(*(a1 + 448), a2, a3);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5F4(*(a1 + 448), v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 448);
  v12 = *a2;
  v13 = *(a2 + 1);

  sub_1AF23B678(v11, v12, v13);
}

void sub_1AF233194(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 480)) + 12);
  v6 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 504)) + 6);
  v7 = v5;
  v8 = v5 << 32;
  v9 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v4)));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 >> 56))))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ (v8 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ (v8 >> 56))))) >> 47));
  v13 = CFX::CrossFrameResourceManager::get(a2[4], v12);
  *(a1 + 464) = v13;
  if (!v13)
  {
    v15 = HIBYTE(v8);
    *(a1 + 464) = sub_1AF23345C(a2[4], v12);
    v17 = sub_1AF12E2AC(*(a1 + 432), v16);
    v20 = objc_msgSend_resourceManager(v17, v18, v19);
    v21 = sub_1AF225470(0, 12, 0, 1.0, 1.0);
    sub_1AF2334EC((*(a1 + 464) + 40), v21);
    v22 = sub_1AF20E1F8(v20, v21, 1);
    v23 = sub_1AF1305F8(*(a1 + 432), 256);
    v24 = *(a1 + 464);
    v25 = sub_1AFDE868C(v20);
    *&v40 = objc_msgSend_frameworkLibrary(v25, v26, v27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    *(&v40 + 1) = v7;
    *(&v44 + 1) = v6;
    BYTE8(v45) = v15;
    *(&v51 + 1) = sub_1AFDEA004(v22);
    *&v52 = @"debug_probe_vert";
    v29 = @"debug_probe_frag_cube_array";
    if (!v23)
    {
      v29 = @"debug_probe_frag_2d_array";
    }

    *(&v52 + 1) = v29;
    v30 = objc_msgSend_newRenderPipelineStateWithDesc_(v20, v28, v39);
    sub_1AF23355C((v24 + 16), v30);
    sub_1AF2335BC((*(a1 + 464) + 24), v22);
    v31 = sub_1AF1A516C(v21, 1);
    if (v31 && CFArrayGetValueAtIndex(v31, 0))
    {
      v32 = sub_1AFDE7F98(v20);
      sub_1AF2335BC((*(a1 + 464) + 32), v32);
    }

    v33 = *(a1 + 464);
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    memset(v39, 0, sizeof(v39));
    v34 = sub_1AFDE868C(v20);
    *&v40 = objc_msgSend_frameworkLibrary(v34, v35, v36);
    *(&v40 + 1) = v7;
    *(&v44 + 1) = v6;
    BYTE8(v45) = v15;
    *&v52 = @"vfx_draw_fullscreen_triangle_vertex";
    *(&v52 + 1) = @"vfx_draw_fullscreen_fragment";
    v38 = objc_msgSend_newRenderPipelineStateWithDesc_(v20, v37, v39);
    sub_1AF23355C((v33 + 48), v38);
  }

  sub_1AF260410(*(a1 + 456), a2, v14);
}

uint64_t sub_1AF23345C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF2334EC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4 == a2)
  {
    v5 = sub_1AF0D5194(v4, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEE14C(v5);
      if (!a2)
      {
        return;
      }
    }

    else if (!a2)
    {
      return;
    }

    CFRelease(a2);
  }

  else
  {
    if (v4)
    {
      CFRelease(v4);
    }

    *a1 = a2;
  }
}

void sub_1AF23355C(id *a1, id a2)
{
  if (*a1 == a2)
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDEE14C(v4);
    }
  }

  else
  {

    *a1 = a2;
  }
}

id *sub_1AF2335BC(id *a1, id a2)
{
  if (*a1 != a2)
  {

    *a1 = a2;
  }

  return a1;
}

uint64_t sub_1AF2335FC(uint64_t *a1, uint64_t a2, CFX::RG::RenderPassArguments *a3)
{
  v4 = a2;
  v6 = sub_1AF12E2AC(a1[54], a2);
  v9 = objc_msgSend_resourceManager(v6, v7, v8);
  v12 = objc_msgSend_renderEncoder(v6, v10, v11);
  v14 = v12;
  v15 = a1[59];
  if (v15)
  {
    v16 = *(v4 + 24);
    v17 = CFX::RG::Temporal::currentFrame(v12);
    Texture = CFX::GPUResourceManager::getTexture(v16, v15, v17);
    v19 = sub_1AFDE8620(v9);
    objc_msgSend_setDepthStencilState_(*(v14 + 16), v20, v19);
    v22 = sub_1AF2338B0(a1[58] + 48, v21);
    v25 = objc_msgSend_state(v22, v23, v24);
    objc_msgSend_setRenderPipelineState_(*(v14 + 16), v26, v25);
    sub_1AF1F8FCC(v14, Texture, 0);
    sub_1AF2010C8(v14, v27);
  }

  v71 = v9;
  v28 = sub_1AF12DDCC(a1[54], v13);
  v29 = sub_1AF12EE9C(a1[54], 1);
  v31 = sub_1AF1D00B0(v28, v30);
  v33 = sub_1AF13341C(v31, v32);
  v34 = sub_1AF12EE68(a1[54]);
  if ((v34 & 0x200) != 0)
  {
    v36 = sub_1AF1CECF0(v28, v35);
    v34 = sub_1AF159740(v36, v29);
  }

  v37 = *(v4 + 32);
  v38 = sub_1AF23B228(v34, v35);
  v39 = CFX::CrossFrameResourceManager::get(v37, v38);
  if (v39)
  {
    v40 = v39;
    v68 = v28;
    v69 = v4;
    v70 = a3;
    v41 = *(v39 + 16);
    if (v41)
    {
      v42 = *(v41 + 14872);
      if (v42)
      {
        v43 = *(v41 + 14864);
        do
        {
          v44 = *v43++;
          v37 = v37 & 0xFFFFFFFF00000000 | v44;
          v45 = sub_1AF1474D8(v33, v37);
          v46 = sub_1AF146110(v45);
          if (v46)
          {
            sub_1AF0FFEB4(v29, v46);
          }

          --v42;
        }

        while (v42);
      }
    }

    *(v40 + 16) = 0;
    v4 = v69;
    a3 = v70;
  }

  sub_1AF0FE318(v29);
  sub_1AF0FEAB4(v29);
  v47 = sub_1AFDE8620(v71);
  objc_msgSend_setDepthStencilState_(*(v14 + 16), v48, v47);
  sub_1AF0FE920(v29, v51, v49, v50);
  sub_1AF0FEAB4(v29);
  v52 = sub_1AF1C45EC();
  v55 = objc_msgSend_resourceManager(v6, v53, v54);
  v56 = sub_1AFDE7C58(v55);
  objc_msgSend_setDepthStencilState_(*(v14 + 16), v57, v56);
  objc_msgSend_setRasterizerStates_(v6, v58, v52);
  if (v29 && (sub_1AF12EE68(a1[54]) & 8) != 0)
  {
    sub_1AF2338FC(a1, v14);
  }

  if ((objc_msgSend_features(v6, v59, v60, v68, v69, v70) & 0x1000) != 0)
  {
    objc_msgSend_setDepthClipMode_(*(v14 + 16), v61, 1);
  }

  sub_1AF260B04(a1[57], v4, a3, 0);
  sub_1AF0FCF54(v29);
  result = sub_1AF1CF8AC(v28, v62);
  if (result)
  {
    v65 = result;
    v66 = a1[54];
    v67 = sub_1AF20107C(v14, v64);

    return sub_1AF14E52C(v65, v66, v67);
  }

  return result;
}

uint64_t sub_1AF2338B0(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEE190(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *a1;
}

void *sub_1AF2338FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  result = objc_msgSend__clusterInfo(v4, v5, v6);
  v10 = result[11];
  v11 = HIDWORD(v10);
  if (HIDWORD(v10))
  {
    v12 = result;
    v35 = result[11];
    result = objc_msgSend__reflectionProbeArrayTexture(v4, v8, v9);
    if (result)
    {
      v15 = result;
      v16 = objc_msgSend_features(v4, v13, v14);
      objc_msgSend_setCullMode_(*(a2 + 16), v17, 2);
      if ((v16 & 0x1000) != 0)
      {
        objc_msgSend_setDepthClipMode_(*(a2 + 16), v18, 1);
      }

      v19 = sub_1AF2338B0(*(a1 + 464) + 16, v18);
      v22 = objc_msgSend_state(v19, v20, v21);
      objc_msgSend_setRenderPipelineState_(*(a2 + 16), v23, v22);
      sub_1AF1F8FCC(a2, v15, 0);
      objc_msgSend__setWorldBufferAtVertexIndex_fragmentIndex_(v4, v24, 0, -1);
      CFXBufferSliceGetMTLBuffer();
      objc_msgSend_setVertexBuffer_offset_atIndex_(*(a2 + 16), v26, v25, *(v12 + 26) + 368 * v35, 1);
      v28 = sub_1AF2338B0(*(a1 + 464) + 24, v27);
      objc_msgSend__setMeshBuffers_(v4, v29, v28);
      v31 = sub_1AF2338B0(*(a1 + 464) + 32, v30);
      result = objc_msgSend__drawMeshElement_instanceCount_(v4, v32, v31, v11);
      if ((v16 & 0x1000) != 0)
      {
        v34 = *(a2 + 16);

        return objc_msgSend_setDepthClipMode_(v34, v33, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1AF233A70(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, __n128 *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  *&v16 = a2;
  *(&v16 + 1) = a3;
  if ((atomic_load_explicit(byte_1ED73A498, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE208();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A490, 0);
  *a1 = &unk_1F24E8DA8;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *&v17 = *(a1 + 432);
  LOBYTE(v21) = 0;
  v23 = 0;
  v19 = 0;
  v18 = 0uLL;
  v24 = xmmword_1AFE42EB0;
  v25 = *(a1 + 440);
  v26 = 2;
  v27 = 128;
  v28 = 1;
  v29 = 1;
  *(a1 + 448) = sub_1AF2330E0(v16, *(&v16 + 1), &v16, &v17, &v18);
  v10 = v16;
  v11 = *(a1 + 432);
  *&v18 = 0;
  WORD4(v18) = 16;
  BYTE10(v18) = *(a1 + 441);
  v19 = 56;
  v20 = 0;
  if ((atomic_load_explicit(byte_1ED73A498, memory_order_acquire) & 1) == 0)
  {
    v15 = v10;
    sub_1AFDEE264();
    v10 = v15;
  }

  v21 = qword_1ED73A490;
  v22 = -1;
  v17 = v10;
  v12 = sub_1AF23498C(&v17, 0x48u, 8u, 2);
  sub_1AF2603E8(v12, v11, &v18, *(a1 + 448));
  *(a1 + 456) = v13;
  CFX::RG::TextureDescriptorReference::withSampleCount(&v18, &a5[1].n128_i64[1], 1);
  *(a1 + 464) = sub_1AF233CC8(a4, "COLOR_PICKED", &v18);
  CFX::RG::TextureDescriptorReference::withSampleCount(&v18, &a5[11].n128_i64[1], 1);
  *(a1 + 472) = sub_1AF233CC8(a4, "DEPTH_PICKED", &v18);
  CFX::RG::Pass::renderTo(a1, *(a1 + 464), 0x100000002, 0);
  CFX::RG::Pass::renderTo(a1, *(a1 + 472), 0x200000002, -1);
  return a1;
}

CFX::RG::Resource *sub_1AF233CC8(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, _OWORD *a3)
{
  v10 = a2;
  v4 = *a1;
  v5 = *(a1 + 1);
  v9 = 1;
  sub_1AF235154(v4, v5, &v10, a3, &v9);
  v7 = v6;
  CFX::RG::RenderGraphBuilder::appendResource(a1, v6);
  return v7;
}

void sub_1AF233D28(uint64_t *a1, const char **a2)
{
  v4 = sub_1AF12EE9C(a1[54], 0);
  v7 = sub_1AF103070(v4, v5, v6);
  v8 = sub_1AF232994(v7, a1[54], a1[1]);
  v9 = a1[56];
  v9[3].i64[0] = v8;
  sub_1AF23B424(v9, v10, v11);
  sub_1AF23B5E0(a1[56]);
  sub_1AF23B5F4(a1[56], v12, v13, v14, v15, v16, v17);
  v18 = a1[56];
  v19 = *a2;
  v20 = a2[1];

  sub_1AF23B678(v18, v19, v20);
}

uint64_t sub_1AF233DB4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A4A8, memory_order_acquire) & 1) == 0)
  {
    v17 = a2;
    v18 = a3;
    sub_1AFDEE2AC();
    a2 = v17;
    a3 = v18;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A4A0, 0);
  *a1 = &unk_1F24E8E00;
  v8 = *(a5 + 40);
  *(a1 + 448) = *(a5 + 24);
  *(a1 + 464) = v8;
  v9 = *(a5 + 56);
  v10 = *(a5 + 72);
  v11 = *(a5 + 104);
  *(a1 + 512) = *(a5 + 88);
  *(a1 + 528) = v11;
  *(a1 + 480) = v9;
  *(a1 + 496) = v10;
  v12 = *(a5 + 120);
  v13 = *(a5 + 136);
  v14 = *(a5 + 168);
  *(a1 + 576) = *(a5 + 152);
  *(a1 + 592) = v14;
  *(a1 + 544) = v12;
  *(a1 + 560) = v13;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  CFX::RG::TextureDescriptorReference::withSampleCount(v19, (a5 + 24), 1);
  v15 = sub_1AF233CC8(a4, "COLOR_OUTLINE", v19);
  *(a1 + 648) = v15;
  CFX::RG::Pass::renderTo(a1, v15, 0x100000000, 0);
  return a1;
}

void sub_1AF233EDC(uint64_t a1, CFX::CrossFrameResourceManager **a2, uint64_t a3)
{
  v5 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Authoring", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/AuthoringPass.mm", 395, v5 | 0x300000000);
  v6 = CFX::RG::Pass::hash(a1);
  v7 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 648)) + 6);
  v8 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v6)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v10 = *(a1 + 640) != 0;
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v10)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v10)))) >> 47));
  v12 = CFX::CrossFrameResourceManager::get(a2[4], v11);
  *(a1 + 608) = v12;
  if (!v12)
  {
    *(a1 + 608) = sub_1AF2340BC(a2[4], v11);
    v14 = sub_1AF12E2AC(*(a1 + 432), v13);
    v17 = objc_msgSend_resourceManager(v14, v15, v16);
    v18 = objc_alloc_init(MEMORY[0x1E6974060]);
    v33 = *(a1 + 640) != 0;
    objc_msgSend_setConstantValue_type_atIndex_(v18, v19, &v33, 53, 0);
    v20 = *(a1 + 608);
    v21 = sub_1AFDE868C(v17);
    v27 = objc_msgSend_frameworkLibrary(v21, v22, v23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v28 = v7;
    BYTE8(v29) = 1;
    *&v30 = v18;
    v31 = @"vfx_outline_vert";
    v32 = @"vfx_outline_frag";
    v25 = objc_msgSend_newRenderPipelineStateWithDesc_(v17, v24, &v26);
    sub_1AF23355C((v20 + 16), v25);
  }

  prof_endFlame();
}

void *sub_1AF2340BC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF234144(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AF130770(a1[54], a2, a3);
  prof_beginFlameSmallData("Authoring", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/AuthoringPass.mm", 431, v5 | 0x300000000);
  v7 = sub_1AF12E2AC(a1[54], v6);
  v10 = objc_msgSend_renderEncoder(v7, v8, v9);
  v12 = sub_1AF2338B0(a1[76] + 16, v11);
  v15 = objc_msgSend_state(v12, v13, v14);
  v17 = objc_msgSend_setRenderPipelineState_(*(v10 + 16), v16, v15);
  v18 = *(a2 + 24);
  v19 = a1[77];
  v20 = CFX::RG::Temporal::currentFrame(v17);
  Texture = CFX::GPUResourceManager::getTexture(v18, v19, v20);
  v22 = sub_1AF1F8FCC(v10, Texture, 0);
  v23 = *(a2 + 24);
  v24 = a1[79];
  v25 = CFX::RG::Temporal::currentFrame(v22);
  v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
  v27 = sub_1AF1F8FCC(v10, v26, 1);
  v28 = a1[80];
  if (v28)
  {
    v29 = *(a2 + 24);
    v30 = CFX::RG::Temporal::currentFrame(v27);
    v31 = CFX::GPUResourceManager::getTexture(v29, v28, v30);
    v27 = sub_1AF1F8FCC(v10, v31, 2);
  }

  v32 = *(a2 + 24);
  v33 = a1[78];
  v34 = CFX::RG::Temporal::currentFrame(v27);
  v35 = CFX::GPUResourceManager::getTexture(v32, v33, v34);
  sub_1AF1F8FCC(v10, v35, 3);
  sub_1AF2010C8(v10, v36);

  prof_endFlame();
}

CFX::RG::Pass *sub_1AF2342BC(uint64_t **a1, CFX::RG *a2, __int128 *a3, void *a4)
{
  v8 = sub_1AF12EE9C(*(a3 + 1), 0);
  v9 = sub_1AF232D3C(*(a3 + 1), v8);
  v10 = CFX::RG::Resource::constTextureDesc(*a4);
  v11 = v10[1];
  v116 = *v10;
  v117 = v11;
  v12 = v10[5];
  v14 = v10[2];
  v13 = v10[3];
  v120 = v10[4];
  v121 = v12;
  v118 = v14;
  v119 = v13;
  v15 = v10[9];
  v17 = v10[6];
  v16 = v10[7];
  v124 = v10[8];
  v125 = v15;
  v122 = v17;
  v123 = v16;
  v18 = CFX::RG::Resource::constTextureDesc(a4[2]);
  v19 = v18[1];
  v106 = *v18;
  v107 = v19;
  v20 = v18[5];
  v22 = v18[2];
  v21 = v18[3];
  v110 = v18[4];
  v111 = v20;
  v108 = v22;
  v109 = v21;
  v23 = v18[9];
  v25 = v18[6];
  v24 = v18[7];
  v114 = v18[8];
  v115 = v23;
  v112 = v25;
  v113 = v24;
  v26 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a1, *a4) + 3);
  v27 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a1, a4[2]) + 3);
  v29 = sub_1AF12E2AC(*(a3 + 1), v28);
  v32 = objc_msgSend_sampleCount(v29, v30, v31);
  v33 = v32;
  v35 = v27 < 0x2000000 || v32 < 2;
  v99 = *a3;
  v100 = *(a3 + 8);
  v102 = 0;
  v101 = 0;
  v103 = a4[2];
  v104 = 0;
  v105 = 0;
  v36 = sub_1AF234718(a2, &v99);
  v37 = v36;
  if (*(a4 + 32))
  {
    v38 = 0x200000002;
  }

  else
  {
    v38 = 0x200000001;
  }

  CFX::RG::Pass::renderTo(v36, a4[2], v38, -1);
  v39 = a4[1];
  if (v39)
  {
    CFX::RG::Pass::dependsOn(v37, v39);
  }

  if (v9)
  {
    v72 = v27;
    v85 = v122;
    v86 = v123;
    v87 = v124;
    v88 = v125;
    v81 = v118;
    v82 = v119;
    v83 = v120;
    v84 = v121;
    v79 = v116;
    v80 = v117;
    v96 = v113;
    v97 = v114;
    v98 = v115;
    v94 = v111;
    v95 = v112;
    v91 = v108;
    v92 = v109;
    v93 = v110;
    v89 = v106;
    v40 = *(a3 + 1);
    v77.n128_u64[0] = "Picked object";
    v77.n128_u64[1] = v40;
    v78 = 0;
    v90 = v107;
    v41 = sub_1AF23476C(a2, a2, &v77);
    v42 = *a4;
    v43 = a4[1];
    CFX::RG::TextureDescriptorReference::withSampleCount(v74, &v116, 1);
    v45 = CFX::RG::copyIfNeeded(a2, v42, v43, v74, 0, v44);
    v46 = a4[2];
    v47 = a4[3];
    CFX::RG::TextureDescriptorReference::withSampleCount(v74, &v106, 1);
    v49 = CFX::RG::copyIfNeeded(a2, v46, v47, v74, 0, v48);
    v50 = *(a3 + 1);
    v74[0] = "Outline";
    v74[1] = v50;
    v75 = 0;
    CFX::RG::TextureDescriptorReference::withSampleCount(v76, &v116, 1);
    v51 = sub_1AF2347C4(a2, a2, v74);
    v52 = *(v41 + 58);
    *(v51 + 77) = v52;
    v53 = CFX::RG::Temporal::currentFrame(v51);
    CFX::RG::Pass::readFrom(v51, v52, v53);
    v54 = *(v41 + 59);
    *(v51 + 78) = v54;
    v56 = CFX::RG::Temporal::currentFrame(v55);
    CFX::RG::Pass::readFrom(v51, v54, v56);
    *(v51 + 79) = v45;
    v58 = CFX::RG::Temporal::currentFrame(v57);
    CFX::RG::Pass::readFrom(v51, v45, v58);
    if ((a4[4] & 1) == 0)
    {
      *(v51 + 80) = v49;
      v60 = CFX::RG::Temporal::currentFrame(v59);
      CFX::RG::Pass::readFrom(v51, v49, v60);
    }

    CFX::RG::Pass::dependsOn(v51, v41);
    v61 = a4[3];
    if (v61)
    {
      CFX::RG::Pass::dependsOn(v51, v61);
    }

    if (v72 < 0x2000000)
    {
      v62 = 1;
    }

    else
    {
      v62 = v33;
    }

    CFX::RG::TextureDescriptorReference::withSampleCount(v73, &v116, v62);
    v63 = sub_1AF233CC8(a2, "AUTHORING COLOR OUTPUT", v73);
    v64 = *(v51 + 81);
    *(v37 + 59) = v64;
    v65 = CFX::RG::Temporal::currentFrame(v63);
    CFX::RG::Pass::readFrom(v37, v64, v65);
    CFX::RG::Pass::renderTo(v37, v63, 0x100000000, 0);
    *(v37 + 60) = v63;
    CFX::RG::Pass::dependsOn(v37, v51);
  }

  else
  {
    v66 = v26 > 0x1FFFFFF || v35;
    if (v66)
    {
      CFX::RG::Pass::renderTo(v37, *a4, 0x100000001, 0);
      *(v37 + 60) = *a4;
    }

    else
    {
      v67 = CFX::RG::Resource::constTextureDesc(*a4);
      CFX::RG::TextureDescriptorReference::withSampleCount(&v77, v67, v33);
      v68 = sub_1AF233CC8(a2, "AUTHORING COLOR OUTPUT", &v77);
      v69 = *a4;
      *(v37 + 59) = v69;
      v70 = CFX::RG::Temporal::currentFrame(v68);
      CFX::RG::Pass::readFrom(v37, v69, v70);
      CFX::RG::Pass::renderTo(v37, v68, 0x100000000, 0);
      *(v37 + 60) = v68;
    }
  }

  return v37;
}

uint64_t sub_1AF234718(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[0] = sub_1AF235290(v6[0], v4, v6, a2);
  sub_1AF235000(a1 + 22, v6);
  return v6[0];
}

uint64_t sub_1AF23476C(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, __n128 *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2352E0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2347C4(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF235340(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF234820(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF234868(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2348A4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t *sub_1AF2348E0(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 24);
  v5 = (a1 + 32);
  v6 = 1.5;
  if (a3)
  {
    v6 = 1.0;
  }

  v7 = (v6 * (*(a1 + 20) + a2));
  v8 = sub_1AF23498C(a1, 8 * v7, 8u, 2);
  result = memcpy(v8, v4, 8 * *(a1 + 16));
  *(a1 + 24) = v8;
  *(a1 + 20) = v7;
  if (v4 != v5)
  {
    v10 = v4;
    result = *(a1 + 8);
    if (result)
    {
      return sub_1AF234C8C(result, &v10);
    }
  }

  return result;
}

char *sub_1AF23498C(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  result = CScratchAllocatorAllocateAligned(*a1, a2, a3, a4);
  v9 = result;
  if (a1[1])
  {
    LODWORD(v8[128]) = backtrace(v8, 128);
    v6 = a1[1];
    v10 = &v9;
    v7 = sub_1AF234A18(v6, &v9, &unk_1AFE22A40, &v10);
    memcpy(v7 + 3, v8, 0x408uLL);
    return v9;
  }

  return result;
}

void *sub_1AF234A18(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t *sub_1AF234C8C(void *a1, void *a2)
{
  result = sub_1AF144D08(a1, a2);
  if (result)
  {
    sub_1AF145C50(a1, result);
    return 1;
  }

  return result;
}

void sub_1AF234CC4(void *a1, int a2)
{
  *(a1 + 8) = 0;
  *(a1 + 9) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  a1[3] = CStackAllocatorAllocateAligned(*a1, v4, 4, 2);
  v5 = 8 * v3;
  a1[1] = CStackAllocatorAllocateAligned(*a1, v5, 8, 2);
  a1[2] = CStackAllocatorAllocateAligned(*a1, v5, 8, 2);
  memset(a1[1], 255, v5);
  v6 = a1[3];

  bzero(v6, v4);
}

uint64_t sub_1AF234D70(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    sub_1AF234F8C(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

void sub_1AF234F8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  sub_1AF234CC4(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        sub_1AF234D70(a1, *v3, v2);
      }

      ++v3;
      ++v2;
      --v6;
    }

    while (v6);
  }
}

uint64_t *sub_1AF235000(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = *(result + 4);
  v5 = v4 + 1;
  if (v4 + 1 > *(result + 5))
  {
    result = sub_1AF2348E0(result, 1, 0);
    v4 = *(v3 + 4);
    v5 = v4 + 1;
  }

  *(v3[3] + 8 * v4) = *a2;
  *(v3 + 4) = v5;
  return result;
}

uint64_t sub_1AF23505C(uint64_t a1)
{
  *a1 = &unk_1F24E8E58;

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AF2350C8(uint64_t a1)
{
  *a1 = &unk_1F24E8E58;

  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF235154(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4, char *a5)
{
  v17[0] = a1;
  v17[1] = a2;
  v8 = sub_1AF23498C(v17, 0xE0u, 8u, 2);
  v9 = *a3;
  v10 = a4[7];
  v16[6] = a4[6];
  v16[7] = v10;
  v11 = a4[9];
  v16[8] = a4[8];
  v16[9] = v11;
  v12 = a4[3];
  v16[2] = a4[2];
  v16[3] = v12;
  v13 = a4[5];
  v16[4] = a4[4];
  v16[5] = v13;
  v14 = a4[1];
  v16[0] = *a4;
  v16[1] = v14;
  *&result = CFX::RG::Resource::Resource(v8, v9, v16, *a5, 1).n128_u64[0];
  return result;
}

uint64_t sub_1AF2351E0(uint64_t a1)
{
  *a1 = &unk_1F24E8E78;

  return a1;
}

void sub_1AF235228(uint64_t a1)
{
  *a1 = &unk_1F24E8E78;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF235290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x210u, 8u, 2);
  return sub_1AF232ED4(v6, *a3, a3[1], a4);
}

uint64_t sub_1AF2352E0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, __n128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E0u, 8u, 2);
  return sub_1AF233A70(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF235340(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x290u, 8u, 2);
  return sub_1AF233DB4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2353A0(uint64_t a1)
{
  *a1 = &unk_1F24E8E98;

  sub_1AF235C34((a1 + 24), 0);
  return a1;
}

void sub_1AF235410(uint64_t a1)
{
  sub_1AF2353A0(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF235448(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v15.n128_u64[0] = "BackBufferPass";
  v15.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A4B8, memory_order_acquire) & 1) == 0)
  {
    v13 = a2;
    v14 = a3;
    sub_1AFDEE308();
    a2 = v13;
    a3 = v14;
  }

  if (byte_1ED73A4B0)
  {
    v9 = 0x2940D000AB344474;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v15, v9, 0);
  *a1 = &unk_1F24E8EB8;
  v10 = a5[2];
  *(a1 + 440) = *a5;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = v10;
  sub_1AF235544(v11, a4);
  CFX::RG::Pass::writeTo(a1, *(*(a1 + 472) + 24));
  return a1;
}

void sub_1AF235544(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 448));
  v5 = *(v4 + 4);
  v6 = *(v4 + 12);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)));
  v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ (v5 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ (v5 >> 16))));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ (v10 >> 47));
  v12 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 456))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 456))))) ^ ((0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 456))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ *(a1 + 456))))) >> 47)));
  *(a1 + 472) = v12;
  if (!v12)
  {
    operator new();
  }
}

void sub_1AF235800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(va);
  _Unwind_Resume(a1);
}

void sub_1AF235814(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF235854(a1, a2);

  sub_1AF235544(a1, a2);
}

void sub_1AF235854(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 448)) + 6);
  v8 = CFX::RG::Pass::hash(a1);
  v9 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v8)))) >> 47)));
  *(a1 + 464) = v9;
  if (!v9)
  {
    operator new();
  }
}

CFX::RG::Temporal *sub_1AF2359C4(void *a1, uint64_t a2, id *this)
{
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[58] + 16))
  {
    v6 = result;
    v7 = *(a2 + 24);
    v8 = a1[60];
    v9 = CFX::RG::Temporal::currentFrame(result);
    Texture = CFX::GPUResourceManager::getTexture(v7, v8, v9);
    v11 = *(a1[59] + 16);
    objc_msgSend_setTexture_atIndex_(v6, v12, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v6, v13, v11, 1);
    v15 = sub_1AF1403B4(a1[58] + 16, v14);
    v17 = sub_1AFDE323C(v15);

    return objc_msgSend_dispatch_onTexture2D_(v6, v16, v17, v11);
  }

  return result;
}

uint64_t *sub_1AF235A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const CFX::RG::ExternalResourceDesc *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = a2;
  v9 = a4;
  LOBYTE(v8) = 2;
  v8 = sub_1AF235D20(&v10, a3, &v8, &v9);
  result = sub_1AF235000((a1 + 144), &v8);
  *a5 = v8;
  return result;
}

double sub_1AF235B04(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 60) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

uint64_t sub_1AF235B58(CFX::RG::RenderGraphContext *a1, unint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);

  return sub_1AF235B98(v4, a1, a2);
}

uint64_t sub_1AF235B98(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF235DE0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF235BF4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF235C34(CFX::RG::Resource **a1, CFX::RG::Resource *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    CFX::RG::Resource::~Resource(v3);

    free(v4);
  }
}

uint64_t sub_1AF235C70(uint64_t a1)
{
  *a1 = &unk_1F24E8F10;

  return a1;
}

void sub_1AF235CB8(uint64_t a1)
{
  *a1 = &unk_1F24E8F10;

  JUMPOUT(0x1B271C6B0);
}

_OWORD *sub_1AF235D20(uint64_t *a1, const CFX::RG::ExternalResourceDesc *a2, char *a3, char *a4)
{
  v8 = malloc_type_malloc(0xE0uLL, 0xBBD05BDCuLL);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = v9;
  v8[4] = v9;
  v8[5] = v9;
  v8[6] = v9;
  v8[7] = v9;
  v8[8] = v9;
  v8[9] = v9;
  v8[10] = v9;
  v8[11] = v9;
  v8[12] = v9;
  v8[13] = v9;
  v10 = *a1;
  CFX::RG::ExternalResourceDesc::ExternalResourceDesc(v12, a2);
  CFX::RG::Resource::Resource(v8, v10, v12, *a3, *a4);
  CFX::RG::ExternalResourceDesc::~ExternalResourceDesc(v12);
  return v8;
}

uint64_t sub_1AF235DE0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1E8u, 8u, 2);
  return sub_1AF235448(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF235E50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return (*(*result + 56))(result, a2, a4 + 8);
    }

    else if (a3 == 3)
    {
      return (*(*result + 64))(result, a2);
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return (*(*result + 48))(result, a2, a4 + 8);
    }
  }

  else
  {
    return (*(*result + 40))(result, a2, a4 + 8);
  }

  return result;
}

CFX::RG::Pass *sub_1AF235F14(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, _OWORD *a5)
{
  if ((atomic_load_explicit(byte_1ED73A4C8, memory_order_acquire) & 1) == 0)
  {
    v25 = a2;
    v26 = a3;
    sub_1AFDEE354();
    a2 = v25;
    a3 = v26;
  }

  if (byte_1ED73A4C0)
  {
    v8 = 0x3E7754EAF0AF1D07;
  }

  else
  {
    v8 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, *a5, 2, v8, 0);
  *this = &unk_1F24E8F30;
  *(this + 424) = *a5;
  *this = &unk_1F24E8F88;
  v9 = a5[1];
  v10 = a5[3];
  *(this + 456) = a5[2];
  *(this + 472) = v10;
  *(this + 440) = v9;
  v11 = a5[4];
  v12 = a5[5];
  v13 = a5[7];
  *(this + 520) = a5[6];
  *(this + 536) = v13;
  *(this + 488) = v11;
  *(this + 504) = v12;
  v14 = a5[8];
  v15 = a5[9];
  v16 = a5[11];
  *(this + 584) = a5[10];
  *(this + 600) = v16;
  *(this + 552) = v14;
  *(this + 568) = v15;
  *(this + 616) = 0u;
  if (*(this + 440) == 1)
  {
    v17 = *(this + 152);
    if ((*(this + 465) & 1) == 0)
    {
      *(this + 465) = 1;
    }

    *(this + 464) = v17;
    v18 = *(this + 35);
    v27[6] = *(this + 34);
    v27[7] = v18;
    v19 = *(this + 37);
    v27[8] = *(this + 36);
    v27[9] = v19;
    v20 = *(this + 31);
    v27[2] = *(this + 30);
    v27[3] = v20;
    v21 = *(this + 33);
    v27[4] = *(this + 32);
    v27[5] = v21;
    v22 = *(this + 29);
    v27[0] = *(this + 28);
    v27[1] = v22;
    v23 = sub_1AF233CC8(a4, "MIPMAP_OUTPUT", v27);
    *(this + 78) = v23;
    CFX::RG::Pass::writeTo(this, v23);
  }

  return this;
}

uint64_t sub_1AF2360B0(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::BlitPassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = *(a1 + 624);
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v11 = Texture;
  if (*(a1 + 440) == 1)
  {
    v12 = *(a2 + 24);
    v13 = *(a1 + 616);
    v14 = CFX::RG::Temporal::currentFrame(Texture);
    v15 = CFX::GPUResourceManager::getTexture(v12, v13, v14);
    v18 = objc_msgSend_arrayLength(v15, v16, v17);
    if ((objc_msgSend_textureType(v15, v19, v20) - 5) >= 2)
    {
      v23 = v18;
    }

    else
    {
      v23 = 6 * v18;
    }

    v24 = objc_msgSend_width(v15, v21, v22);
    v27 = objc_msgSend_height(v15, v25, v26);
    v30 = objc_msgSend_depth(v15, v28, v29);
    if (v23)
    {
      v31 = v30;
      for (i = 0; i != v23; ++i)
      {
        memset(v36, 0, sizeof(v36));
        v35[0] = v24;
        v35[1] = v27;
        v35[2] = v31;
        memset(v34, 0, sizeof(v34));
        objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v5, v10, v15, i, 0, v36, v35, v11, i, 0, v34);
      }
    }
  }

  return objc_msgSend_generateMipmapsForTexture_(v5, v10, v11);
}

void sub_1AF236200(uint64_t a1, CFX::RG::Resource *a2)
{
  *(a1 + 616) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);
  CFX::RG::Pass::readFrom(a1, a2, v4);
  if ((*(a1 + 440) & 1) == 0)
  {
    *(a1 + 624) = a2;

    CFX::RG::Pass::writeTo(a1, a2);
  }
}

void sub_1AF236270(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2362AC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF2362E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A4D8, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v17 = a3;
    sub_1AFDEE3A0();
    a2 = v16;
    a3 = v17;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A4D0, 0);
  *a1 = &unk_1F24E8FE0;
  v7 = *(a5 + 24);
  v8 = *(a5 + 56);
  *(a1 + 464) = *(a5 + 40);
  *(a1 + 480) = v8;
  *(a1 + 448) = v7;
  v9 = *(a5 + 72);
  v10 = *(a5 + 88);
  v11 = *(a5 + 120);
  *(a1 + 528) = *(a5 + 104);
  *(a1 + 544) = v11;
  *(a1 + 496) = v9;
  *(a1 + 512) = v10;
  v12 = *(a5 + 136);
  v13 = *(a5 + 152);
  v14 = *(a5 + 184);
  *(a1 + 592) = *(a5 + 168);
  *(a1 + 608) = v14;
  *(a1 + 560) = v12;
  *(a1 + 576) = v13;
  result = 0.0;
  *(a1 + 632) = 0u;
  return result;
}

void sub_1AF2363B4(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(a2[4], v4);
  *(a1 + 624) = v5;
  if (!v5)
  {
    *(a1 + 624) = sub_1AF2364E0(a2[4], v4);
    v7 = sub_1AF12E2AC(*(a1 + 432), v6);
    v10 = objc_msgSend_resourceManager(v7, v8, v9);
    v11 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v11, v12, a1 + 616, 53, 20301);
    v13 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 640)) + 12);
    v14 = *(a1 + 624);
    v15 = sub_1AFDE868C(v10);
    v21 = objc_msgSend_frameworkLibrary(v15, v16, v17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v22 = v13;
    BYTE8(v23) = BYTE3(v13);
    *&v24 = v11;
    v25 = @"vertex_draw_quad";
    v26 = @"bloom_threshold";
    v19 = objc_msgSend_newRenderPipelineStateWithDesc_(v10, v18, &v20);
    sub_1AF23355C((v14 + 16), v19);
  }
}

void *sub_1AF2364E0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF236568(uint64_t *a1, uint64_t a2)
{
  prof_beginFlame("Bloom threshold", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/BloomPass.mm", 64);
  v5 = sub_1AF12E2AC(a1[54], v4);
  v8 = objc_msgSend_renderEncoder(v5, v6, v7);
  v10 = sub_1AF2338B0(a1[78] + 16, v9);
  v13 = objc_msgSend_state(v10, v11, v12);
  v15 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13);
  v16 = *(a2 + 24);
  v17 = a1[79];
  v18 = CFX::RG::Temporal::currentFrame(v15);
  Texture = CFX::GPUResourceManager::getTexture(v16, v17, v18);
  sub_1AF1F8FCC(v8, Texture, 0);
  v21 = a1[76];
  v27 = 0.1;
  if (v21)
  {
    v26 = sub_1AF160C84(v21, v20);
    v23 = a1[76];
    if (v23)
    {
      v27 = sub_1AF160D20(v23, v22);
    }

    *&v24 = v26;
  }

  else
  {
    LODWORD(v24) = 1.0;
  }

  *(&v24 + 1) = v27;
  v28 = v24;
  sub_1AF1F905C(v8, &v28, 8uLL, 0);
  sub_1AF2010C8(v8, v25);
  prof_endFlame();
}

uint64_t sub_1AF236694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A4E8, memory_order_acquire) & 1) == 0)
  {
    v18 = a2;
    v19 = a3;
    sub_1AFDEE3FC();
    a2 = v18;
    a3 = v19;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A4E0, 0);
  *a1 = &unk_1F24E9038;
  v7 = *(a5 + 24);
  v8 = *(a5 + 56);
  *(a1 + 464) = *(a5 + 40);
  *(a1 + 480) = v8;
  *(a1 + 448) = v7;
  v9 = *(a5 + 72);
  v10 = *(a5 + 88);
  v11 = *(a5 + 120);
  *(a1 + 528) = *(a5 + 104);
  *(a1 + 544) = v11;
  *(a1 + 496) = v9;
  *(a1 + 512) = v10;
  v12 = *(a5 + 136);
  v13 = *(a5 + 152);
  v14 = *(a5 + 184);
  *(a1 + 592) = *(a5 + 168);
  *(a1 + 608) = v14;
  *(a1 + 560) = v12;
  *(a1 + 576) = v13;
  *(a1 + 632) = 0u;
  v15 = *(a1 + 616);
  *(CFX::RG::Pass::commonRenderParameters(v16) + 274) = v15;
  return a1;
}

void sub_1AF236788(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v6 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 640)) + 12);
  v7 = *(a1 + 608);
  if (v7)
  {
    v8 = sub_1AF1611EC(v7, v5);
  }

  else
  {
    v8 = 1;
  }

  v36 = v8;
  v9 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v8)));
  v10 = v6;
  v11 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v9 >> 47))) ^ v6)));
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = v6 << 32;
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 56))))) ^ ((0x9DDFEA08EB382D69 * (v12 ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 56))))) >> 47));
  v15 = CFX::CrossFrameResourceManager::get(a2[4], v14);
  *(a1 + 624) = v15;
  if (!v15)
  {
    *(a1 + 624) = sub_1AF236938(a2[4], v14);
    v17 = sub_1AF12E2AC(*(a1 + 432), v16);
    v20 = objc_msgSend_resourceManager(v17, v18, v19);
    v21 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v21, v22, &v36, 53, 20300);
    v23 = *(a1 + 624);
    v24 = sub_1AFDE868C(v20);
    v30 = objc_msgSend_frameworkLibrary(v24, v25, v26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v31 = v10;
    BYTE8(v32) = HIBYTE(v13);
    *&v33 = v21;
    v34 = @"vertex_draw_quad";
    v35 = @"bloom_down_sample";
    v28 = objc_msgSend_newRenderPipelineStateWithDesc_(v20, v27, &v29);
    sub_1AF23355C((v23 + 16), v28);
  }
}

void *sub_1AF236938(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF2369C0(uint64_t a1, uint64_t a2)
{
  prof_beginFlame("Bloom downsample", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/BloomPass.mm", 139);
  v5 = sub_1AF12E2AC(*(a1 + 432), v4);
  v8 = objc_msgSend_renderEncoder(v5, v6, v7);
  v10 = sub_1AF2338B0(*(a1 + 624) + 16, v9);
  v13 = objc_msgSend_state(v10, v11, v12);
  v15 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13);
  v16 = *(a2 + 24);
  v17 = *(a1 + 632);
  v18 = CFX::RG::Temporal::currentFrame(v15);
  Texture = CFX::GPUResourceManager::getTexture(v16, v17, v18);
  sub_1AF1F8FCC(v8, Texture, 0);
  v21 = *(a1 + 616) + -1.0;
  sub_1AF1F905C(v8, &v21, 4uLL, 0);
  sub_1AF2010C8(v8, v20);
  prof_endFlame();
}

uint64_t sub_1AF236AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  if ((atomic_load_explicit(byte_1ED73A4F8, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    sub_1AFDEE458();
    a2 = v9;
    a3 = v10;
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A4F0, 0);
  *a1 = &unk_1F24E9090;
  memcpy((a1 + 448), &a5[1].n128_i8[8], 0x150uLL);
  *(a1 + 792) = 0;
  *(a1 + 808) = 0;
  *(a1 + 800) = 0;
  v7 = *(a1 + 776);
  *(CFX::RG::Pass::commonRenderParameters(a1) + 274) = v7;
  return a1;
}

void sub_1AF236B78(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v6 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 808)) + 12);
  v7 = *(a1 + 768);
  if (!v7)
  {
    v15.i64[0] = 0;
    v15.i32[2] = 0;
    goto LABEL_7;
  }

  v9 = sub_1AF162408(v7, v5);
  __asm { FMOV            V1.4S, #1.0 }

  v15 = vmvnq_s8(vceqq_f32(v9, _Q1));
  v16 = *(a1 + 768);
  if (!v16)
  {
LABEL_7:
    v21 = 0;
    v18 = 0;
    v23 = 1;
    goto LABEL_11;
  }

  v46 = v15;
  v18 = sub_1AF1624AC(v16, v8) != 1.0;
  v19 = *(a1 + 768);
  if (!v19)
  {
    v21 = 0;
    goto LABEL_9;
  }

  v21 = sub_1AF162548(v19, v17) != 1.0;
  v22 = *(a1 + 768);
  if (!v22)
  {
LABEL_9:
    v23 = 1;
    goto LABEL_10;
  }

  v23 = sub_1AF1611EC(v22, v20);
LABEL_10:
  v15 = v46;
LABEL_11:
  v66 = v23;
  v15.i32[3] = v15.i32[2];
  v65 = (vmaxvq_u32(v15) & 0x80000000) != 0 || v18 || v21;
  v24 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v23)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ v23)))) >> 47));
  v25 = 0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v24 ^ v65)) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ v65)));
  v26 = v6;
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ v6)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ v6)));
  v28 = 0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47));
  v29 = v6 << 32;
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 56))))) ^ ((0x9DDFEA08EB382D69 * (v28 ^ ((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 56))))) >> 47));
  v31 = CFX::CrossFrameResourceManager::get(a2[4], v30);
  *(a1 + 784) = v31;
  if (!v31)
  {
    *(a1 + 784) = sub_1AF236DF4(a2[4], v30);
    v33 = sub_1AF12E2AC(*(a1 + 432), v32);
    v36 = objc_msgSend_resourceManager(v33, v34, v35);
    v37 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v37, v38, &v66, 53, 20300);
    objc_msgSend_setConstantValue_type_atIndex_(v37, v39, &v65, 53, 20302);
    v40 = *(a1 + 784);
    v63 = 0u;
    v64 = 0u;
    v60 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    memset(v47, 0, sizeof(v47));
    v41 = sub_1AFDE868C(v36);
    v48 = objc_msgSend_frameworkLibrary(v41, v42, v43);
    v49 = v26;
    BYTE8(v54) = HIBYTE(v29);
    *&v60 = v37;
    v61 = @"vertex_draw_quad";
    v62 = @"bloom_up_sample_color_grading";
    v45 = objc_msgSend_newRenderPipelineStateWithDesc_(v36, v44, v47);
    sub_1AF23355C((v40 + 16), v45);
  }
}

void *sub_1AF236DF4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF236E7C(uint64_t a1, uint64_t a2)
{
  prof_beginFlame("Bloom upsample", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/BloomPass.mm", 218);
  v5 = sub_1AF12E2AC(*(a1 + 432), v4);
  v8 = objc_msgSend_renderEncoder(v5, v6, v7);
  v10 = sub_1AF2338B0(*(a1 + 784) + 16, v9);
  v13 = objc_msgSend_state(v10, v11, v12);
  v15 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13);
  v16 = *(a2 + 24);
  v17 = *(a1 + 792);
  v18 = CFX::RG::Temporal::currentFrame(v15);
  Texture = CFX::GPUResourceManager::getTexture(v16, v17, v18);
  v20 = *(a2 + 24);
  v21 = *(a1 + 800);
  v22 = CFX::RG::Temporal::currentFrame(Texture);
  v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
  sub_1AF1F8FCC(v8, v23, 0);
  sub_1AF1F8FCC(v8, Texture, 1);
  v24 = *(a1 + 776);
  *&v25 = (v24 + 1);
  *(&v25 + 1) = v24;
  v45 = v25;
  sub_1AF1F905C(v8, &v45, 8uLL, 0);
  v27 = *(a1 + 768);
  v28 = 1.0;
  if (v27)
  {
    v40 = sub_1AF162408(v27, v26);
    v30 = *(a1 + 768);
    if (v30)
    {
      v32 = sub_1AF1624AC(v30, v29);
      v33 = *(a1 + 768);
      if (v33)
      {
        v28 = sub_1AF162548(v33, v31);
      }
    }

    else
    {
      v32 = 1.0;
    }

    _Q1 = v40;
  }

  else
  {
    __asm { FMOV            V1.4S, #1.0 }

    v32 = 1.0;
  }

  v41[1] = _Q1;
  v44 = 0;
  v41[0] = 0u;
  LODWORD(v41[0]) = 1065353216;
  v42 = v32;
  v43 = v28;
  sub_1AF1F905C(v8, v41, 0x30uLL, 1);
  sub_1AF2010C8(v8, v39);
  prof_endFlame();
}

CFX::RG::Pass *sub_1AF237040(CFX::RG *a1, uint64_t a2, uint64_t *a3, CFX::RG::Resource *a4)
{
  v7 = a3[1];
  if (!v7)
  {
    v7 = sub_1AF12F10C(*a3, a2);
    if (!v7)
    {
      return 0;
    }
  }

  v8 = sub_1AF1BB260(v7, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFX::RG::Resource::constTextureDesc(a3[2]);
  v11 = v10[1];
  v69[0] = *v10;
  v69[1] = v11;
  v12 = v10[5];
  v14 = v10[2];
  v13 = v10[3];
  v69[4] = v10[4];
  v69[5] = v12;
  v69[2] = v14;
  v69[3] = v13;
  v15 = v10[9];
  v17 = v10[6];
  v16 = v10[7];
  v69[8] = v10[8];
  v69[9] = v15;
  v69[6] = v17;
  v69[7] = v16;
  CFX::RG::TextureDescriptorReference::withSampleCount(v68, v69, 1);
  v18 = *(a3 + 6);
  v19 = *(a3 + 28);
  v20 = *(a3 + 11);
  v56 = a3;
  v21 = *(a3 + 10) << 32;
  LODWORD(v22) = (((v19 >> 16) + (((v19 >> 16) & 0x8000) >> 15)) << 16) >> 17;
  if (v22 <= 2)
  {
    v22 = 2;
  }

  else
  {
    v22 = v22;
  }

  v23 = v19 & 0xFFFFFFFF00000000;
  LODWORD(v19) = (v19 + ((v19 & 0x8000) >> 15)) << 16 >> 17;
  if (v19 <= 2)
  {
    v19 = 2;
  }

  else
  {
    v19 = v19;
  }

  v24 = v23 | (v22 << 16) | v19;
  if (v22 > v19)
  {
    LODWORD(v19) = v22;
  }

  v25 = (floorf(log2f(v19)) + 1.0);
  *v57 = v18;
  *&v57[4] = v24;
  v26 = v21 | (v25 << 16) | 0x100005C;
  *&v57[12] = v26;
  v58 = v20;
  v27 = sub_1AF2373FC(a1, "BLOOM OUTPUT", v57);
  *v57 = v18;
  *&v57[4] = v24;
  *&v57[12] = v26;
  v58 = v20;
  v28 = sub_1AF2373FC(a1, "BLOOM TMP", v57);
  v30 = sub_1AF15C7A4(v9, v29);
  v32 = v30;
  if (v30)
  {
    v33 = sub_1AF1625E4(v30, v31);
  }

  else
  {
    v33 = 10;
  }

  v35 = *v56;
  v64[0] = "Bloom threshold";
  v64[1] = v35;
  v65 = 0;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v66);
  v66[20] = v32;
  v67 = 0;
  v36 = sub_1AF23745C(a1, a1, v64);
  v38 = CFX::RG::copyIfNeeded(a1, v56[2], a4, v68, 0, v37);
  *(v36 + 79) = v38;
  v39 = CFX::RG::Temporal::currentFrame(v38);
  CFX::RG::Pass::readFrom(v36, v38, v39);
  *(v36 + 80) = v28;
  CFX::RG::Pass::renderTo(v36, v28, 0x100000000, 0);
  v40 = v25 - 3;
  if (v25 - 3 >= v33)
  {
    v40 = v33;
  }

  if (v40 <= 2)
  {
    v41 = 2;
  }

  else
  {
    v41 = v40;
  }

  for (i = 1; i != v41; ++i)
  {
    v43 = v36;
    v44 = *v56;
    *v57 = "Bloom downsample";
    *&v57[8] = v44;
    *&v57[16] = 0;
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v59);
    v60 = v32;
    v61 = i;
    v36 = sub_1AF2374B4(a1, a1, v57);
    *(v36 + 79) = v28;
    v45 = CFX::RG::Temporal::currentFrame(v36);
    CFX::RG::Pass::readFrom(v36, v28, v45);
    *(v36 + 80) = v28;
    CFX::RG::Pass::renderTo(v36, v28, 0x100000000, 0);
    CFX::RG::Pass::dependsOn(v36, v43);
  }

  v46 = v32;
  v47 = 0;
  v48 = v41 - 1;
  v34 = v36;
  do
  {
    v49 = v34;
    v50 = *v56;
    --v48;
    *v57 = "Bloom upsample";
    *&v57[8] = v50;
    *&v57[16] = 0;
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v59);
    CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v60);
    v62 = v46;
    v63 = v48;
    v34 = sub_1AF23750C(a1, a1, v57);
    *(v34 + 99) = v28;
    v51 = CFX::RG::Temporal::currentFrame(v34);
    CFX::RG::Pass::readFrom(v34, v28, v51);
    if (v47)
    {
      v53 = v27;
    }

    else
    {
      v53 = v28;
    }

    *(v34 + 100) = v53;
    v54 = CFX::RG::Temporal::currentFrame(v52);
    CFX::RG::Pass::readFrom(v34, v53, v54);
    *(v34 + 101) = v27;
    CFX::RG::Pass::renderTo(v34, v27, 0x100000000, 0);
    CFX::RG::Pass::dependsOn(v34, v49);
    if (v49 != v36)
    {
      CFX::RG::Pass::dependsOn(v34, v36);
    }

    ++v47;
  }

  while (v48 > 0);
  return v34;
}

CFX::RG::Resource *sub_1AF2373FC(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t a3)
{
  v10 = a2;
  v4 = *a1;
  v5 = *(a1 + 1);
  v9 = 1;
  sub_1AF2378FC(v4, v5, &v10, a3, &v9);
  v7 = v6;
  CFX::RG::RenderGraphBuilder::appendResource(a1, v6);
  return v7;
}

uint64_t sub_1AF23745C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF237978(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

uint64_t sub_1AF2374B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2379C8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF23750C(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF237A18(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF237568(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2375A4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2375E0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

unsigned __int8 *sub_1AF237618(unsigned __int8 *result, unsigned int a2)
{
  if (result)
  {
    v2 = 0;
    v3 = 0xC6A4A7935BD1E995 * a2;
    do
    {
      v4 = *&result[v2];
      v2 += 8;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v3);
    }

    while (v2 != 16);
    v5 = a2 & 7;
    if (v5 <= 3)
    {
      if ((a2 & 7) <= 1)
      {
        if ((a2 & 7) == 0)
        {
          return ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
        }

        goto LABEL_20;
      }

      if (v5 == 2)
      {
LABEL_19:
        v3 ^= result[17] << 8;
LABEL_20:
        v3 = 0xC6A4A7935BD1E995 * (v3 ^ result[16]);
        return ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
      }

LABEL_18:
      v3 ^= result[18] << 16;
      goto LABEL_19;
    }

    if ((a2 & 7) > 5)
    {
      if (v5 != 6)
      {
        v3 ^= result[22] << 48;
      }

      v3 ^= result[21] << 40;
    }

    else if (v5 == 4)
    {
      goto LABEL_17;
    }

    v3 ^= result[20] << 32;
LABEL_17:
    v3 ^= result[19] << 24;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1AF2376EC(uint64_t a1)
{
  *a1 = &unk_1F24E90E8;

  return a1;
}

void sub_1AF237734(uint64_t a1)
{
  *a1 = &unk_1F24E90E8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23779C(uint64_t a1)
{
  *a1 = &unk_1F24E9108;

  return a1;
}

void sub_1AF2377E4(uint64_t a1)
{
  *a1 = &unk_1F24E9108;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23784C(uint64_t a1)
{
  *a1 = &unk_1F24E9128;

  return a1;
}

void sub_1AF237894(uint64_t a1)
{
  *a1 = &unk_1F24E9128;

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF2378FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v12[0] = a1;
  v12[1] = a2;
  v8 = sub_1AF23498C(v12, 0xE0u, 8u, 2);
  v9 = *a3;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v11, a4);
  *&result = CFX::RG::Resource::Resource(v8, v9, v11, *a5, 1).n128_u64[0];
  return result;
}

double sub_1AF237978(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x288u, 8u, 2);
  return sub_1AF2362E4(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF2379C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x288u, 8u, 2);
  return sub_1AF236694(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF237A18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __n128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x330u, 8u, 2);
  return sub_1AF236AB4(v7, *a3, a3[1], v8, a5);
}

uint64_t sub_1AF237A68(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A510, memory_order_acquire) & 1) == 0)
  {
    v11 = a2;
    v12 = a3;
    sub_1AFDEE4B4();
    a2 = v11;
    a3 = v12;
  }

  sub_1AF239F88(a1, a2, a3, a5, qword_1ED73A508, 0);
  *a1 = &unk_1F24E9148;
  v8 = *(a5 + 32);
  *(a1 + 440) = *(a5 + 16);
  *(a1 + 456) = v8;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  v13 = *(a5 + 24);
  v14 = *(a5 + 40);
  v9 = sub_1AF2373FC(a4, "CHROMATIC_TRANSFORM_COMPOSITE_BLOOM_OUTPUT", &v13);
  *(a1 + 496) = v9;
  CFX::RG::Pass::writeTo(a1, v9);
  return a1;
}

void sub_1AF237B54(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  *(a1 + 59) = v5;
  if (!v5)
  {
    *(a1 + 59) = sub_1AF237BF0(*(a2 + 32), v4);
    v7 = sub_1AF12E2AC(*(a1 + 54), v6);
    v10 = objc_msgSend_resourceManager(v7, v8, v9);
    v11 = *(a1 + 59);
    v13 = objc_msgSend_newComputePipelineStateWithFunctionName_(v10, v12, @"chromatic_transform_composite_bloom");

    sub_1AF23355C((v11 + 16), v13);
  }
}

void *sub_1AF237BF0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF237C78(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = a1[60];
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = a1[61];
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v14 = *(a2 + 24);
  v15 = a1[62];
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  v19 = sub_1AF1BB260(a1[55], v18);
  v21 = sub_1AF15C7A4(v19, v20);
  if (v21)
  {
    v23 = sub_1AF160FEC(v21, v22);
  }

  else
  {
    v23 = 0.0;
  }

  v32 = v23;
  objc_msgSend_setBytes_length_atIndex_(v5, v22, &v32, 4, 0);
  objc_msgSend_setTexture_atIndex_(v5, v24, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v25, v13, 1);
  objc_msgSend_setTexture_atIndex_(v5, v26, v17, 2);
  v28 = sub_1AF1403B4(a1[59] + 16, v27);
  v29 = sub_1AFDE323C(v28);
  return objc_msgSend_dispatch_onTexture2D_(v5, v30, v29, v17);
}

uint64_t sub_1AF237DA4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A518, memory_order_acquire) & 1) == 0)
  {
    v12 = a2;
    v13 = a3;
    sub_1AFDEE510();
    a2 = v12;
    a3 = v13;
  }

  if (byte_1ED73A500)
  {
    v8 = 0x41EC325388DE9425;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v8, 0);
  *a1 = &unk_1F24E91A0;
  v9 = *(a5 + 32);
  *(a1 + 440) = *(a5 + 16);
  *(a1 + 456) = v9;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v14 = *(a5 + 24);
  v15 = *(a5 + 40);
  v10 = sub_1AF2373FC(a4, "CHROMATIC_TRANSFORM_OUTPUT", &v14);
  *(a1 + 488) = v10;
  CFX::RG::Pass::writeTo(a1, v10);
  return a1;
}

void sub_1AF237EA4(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF1BB260(*(a1 + 55), a2);
  v6 = sub_1AF15CC7C(v4, v5);
  v8 = v6;
  if (v6)
  {
    v28 = sub_1AF1633E8(v6, v7);
    LODWORD(v8) = sub_1AF163864(v8, v9);
    v10 = v28;
  }

  else
  {
    v10 = 1;
    v28 = 1;
  }

  v27 = v8;
  v11 = CFX::RG::Pass::hash(a1);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ v10)));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v8)))) >> 47));
  v15 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v14);
  *(a1 + 59) = v15;
  if (!v15)
  {
    *(a1 + 59) = sub_1AF238008(*(a2 + 32), v14);
    v17 = sub_1AF12E2AC(*(a1 + 54), v16);
    v20 = objc_msgSend_resourceManager(v17, v18, v19);
    v21 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v21, v22, &v28, 29, @"sample_count");
    objc_msgSend_setConstantValue_type_withName_(v21, v23, &v27, 53, @"mask_enabled");
    v24 = *(a1 + 59);
    v26 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v20, v25, @"chromatic_transform", v21);
    sub_1AF23355C((v24 + 16), v26);
  }
}

void *sub_1AF238008(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF238090(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v7 = sub_1AF1BB260(a1[55], v6);
  v10 = sub_1AF15CC7C(v7, v8);
  if (!v10)
  {
    v11 = sub_1AF0D5194(0, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEE55C(v11);
    }
  }

  v47 = sub_1AF160D20(v10, v9);
  v48 = vmul_n_f32(vmul_f32(COERCE_FLOAT32X2_T(sub_1AF1634FC(v10, v12)), COERCE_FLOAT32X2_T(-2.00000048)), v47);
  v13 = 1.0 - v47;
  v15 = v13 + (v47 * sub_1AF16158C(v10, v14));
  v49 = v15;
  v17 = (sub_1AF161628(v10, v16) / 180.0) * 3.14159265 * v47;
  v50 = v17;
  v51 = vmul_n_f32(COERCE_FLOAT32X2_T(sub_1AF163598(v10, v18)), v47);
  v20 = v13 + (v47 * sub_1AF1624AC(v10, v19));
  v52 = v20;
  v22 = (sub_1AF162548(v10, v21) / 180.0) * 3.14159265 * v47;
  v53 = v22;
  v54 = vmul_n_f32(COERCE_FLOAT32X2_T(sub_1AF163634(v10, v23)), v47);
  v55 = sub_1AF1628E8(v10, v24);
  v56 = sub_1AF1636D0(v10, v25);
  v57 = sub_1AF162A28(v10, v26);
  v58 = sub_1AF163774(v10, v27);
  v59 = sub_1AF161A84(v10, v28);
  v60 = sub_1AF161BCC(v10, v29);
  v30 = *(a2 + 24);
  v31 = a1[60];
  v33 = CFX::RG::Temporal::currentFrame(v32);
  Texture = CFX::GPUResourceManager::getTexture(v30, v31, v33);
  v35 = *(a2 + 24);
  v36 = a1[61];
  v37 = CFX::RG::Temporal::currentFrame(Texture);
  v38 = CFX::GPUResourceManager::getTexture(v35, v36, v37);
  objc_msgSend_setBytes_length_atIndex_(v5, v39, &v47, 112, 0);
  objc_msgSend_setTexture_atIndex_(v5, v40, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v41, v38, 1);
  v43 = sub_1AF1403B4(a1[59] + 16, v42);
  v44 = sub_1AFDE323C(v43);
  return objc_msgSend_dispatch_onTexture2D_(v5, v45, v44, v38);
}

CFX::RG::Pass *sub_1AF2382EC(CFX::RG *a1, uint64_t **a2, CFX::RG::RenderGraphBuilder **a3, CFX::RG::Resource *a4)
{
  v8 = *(a3 + 8);
  v37[6] = *(a3 + 7);
  v37[7] = v8;
  v9 = *(a3 + 10);
  v37[8] = *(a3 + 9);
  v37[9] = v9;
  v10 = *(a3 + 4);
  v37[2] = *(a3 + 3);
  v37[3] = v10;
  v11 = *(a3 + 6);
  v37[4] = *(a3 + 5);
  v37[5] = v11;
  v12 = *(a3 + 2);
  v37[0] = *(a3 + 1);
  v37[1] = v12;
  CFX::RG::TextureDescriptorReference::withSampleCount(v36, v37, 1);
  v14 = CFX::RG::copyIfNeeded(a1, a3[23], a4, v36, 0, v13);
  v15 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v14);
  v34 = *v15;
  v35 = v15[2];
  if (a3[22])
  {
    v16 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v14);
    v33 = v16[2];
    v32 = *v16;
    v28 = "ChromaticTransformCompositeBloomPass";
    v29 = *a3;
    v30 = v32;
    v31 = v33;
    v17 = sub_1AF2384C8(a1, a1, &v28);
    *(v17 + 60) = v14;
    v18 = CFX::RG::Temporal::currentFrame(v17);
    CFX::RG::Pass::readFrom(v17, v14, v18);
    v19 = *(a3[22] + 101);
    *(v17 + 61) = v19;
    v21 = CFX::RG::Temporal::currentFrame(v20);
    CFX::RG::Pass::readFrom(v17, v19, v21);
    CFX::RG::Pass::dependsOn(v17, a3[22]);
  }

  else
  {
    v17 = 0;
  }

  v28 = "ChromaticTransformPass";
  v29 = *a3;
  v30 = v34;
  v31 = v35;
  v22 = sub_1AF238520(a1, a1, &v28);
  v23 = v22;
  if (a3[22])
  {
    v24 = *(v17 + 62);
    *(v22 + 60) = v24;
    v25 = CFX::RG::Temporal::currentFrame(v22);
    CFX::RG::Pass::readFrom(v23, v24, v25);
    CFX::RG::Pass::dependsOn(v23, v17);
  }

  else
  {
    *(v22 + 60) = v14;
    v26 = CFX::RG::Temporal::currentFrame(v22);
    CFX::RG::Pass::readFrom(v23, v14, v26);
  }

  return v23;
}

uint64_t sub_1AF2384C8(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF238750(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF238520(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2387B0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23857C(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF2385B8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2385F0(uint64_t a1)
{
  *a1 = &unk_1F24E91F8;

  return a1;
}

void sub_1AF238638(uint64_t a1)
{
  *a1 = &unk_1F24E91F8;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2386A0(uint64_t a1)
{
  *a1 = &unk_1F24E9218;

  return a1;
}

void sub_1AF2386E8(uint64_t a1)
{
  *a1 = &unk_1F24E9218;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF238750(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F8u, 8u, 2);
  return sub_1AF237A68(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF2387B0(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F0u, 8u, 2);
  return sub_1AF237DA4(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF238810(uint64_t a1, uint64_t a2, const void *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = sub_1AF12DDCC(a2, a2);
  if (a3 || (a3 = sub_1AF12F10C(a2, v6)) != 0)
  {
    v8 = sub_1AF1BB260(a3, v6);
    if (v8)
    {
      v10 = v8;
      v11 = sub_1AF12E2AC(a2, v9);
      v14 = objc_msgSend_rayMap(v11, v12, v13);
      v16 = sub_1AF12F6A0(a2, v15);
      *a1 = sub_1AF15D690(v10, v17);
      v19 = sub_1AF1D0898(v7, v18);
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v19;
      }

      *(a1 + 2) = v21;
      v22 = sub_1AF15CE6C(v10, v20);
      if (v14)
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      if (v16 == 2)
      {
        v24 = 0;
      }

      *(a1 + 3) = v24;
      *(a1 + 4) = sub_1AF15D070(v10, v23);
      *(a1 + 5) = sub_1AF15CEC0(v10, v25);
      *(a1 + 1) = sub_1AF15CF98(v10, v26);
      *(a1 + 6) = sub_1AF15D25C(v10, v27);
      *(a1 + 7) = sub_1AF15D2C8(v10, v28);
      *(a1 + 16) = a3;
    }
  }

  return a1;
}

uint64_t sub_1AF238920(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = *(a3 + 2);
  if (v5 || (v5 = sub_1AF12F10C(a2, a2)) != 0)
  {
    v6 = sub_1AF1BB260(v5, a2);
    if (v6)
    {
      v8 = v6;
      v9 = *a3;
      if (v9 == 1)
      {
        v35 = sub_1AF15CF2C(v6, v7);
      }

      else
      {
        v35 = 0;
      }

      if (sub_1AF15D1B4(v8, v7))
      {
        v11 = sub_1AF15C6AC(v8, v10) != 0;
      }

      else
      {
        v11 = 0;
      }

      if (sub_1AF15D208(v8, v10))
      {
        v13 = sub_1AF15CA8C(v8, v12);
      }

      else
      {
        v13 = 0;
      }

      if (a3[1] == 1)
      {
        v14 = a3[7] ^ 1;
      }

      else
      {
        v14 = 0;
      }

      v30 = v14 & 1;
      v31 = a3[3];
      v34 = sub_1AF15D0DC(v8, v12);
      v33 = sub_1AF15D004(v8, v15);
      v32 = sub_1AF15D148(v8, v16);
      if (sub_1AF15D070(v8, v17))
      {
        v19 = a3[7] ^ 1;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19 & 1;
      v21 = v13 != 0;
      if (v13)
      {
        v22 = sub_1AF162BF0(v13, v18) != 0;
      }

      else
      {
        v22 = 0;
      }

      v23 = sub_1AF15D2C8(v8, v18);
      v25 = sub_1AF15C2CC(v8, v24);
      *a1 = v9;
      *(a1 + 1) = v35;
      *(a1 + 2) = v11 & v9;
      *(a1 + 3) = v30;
      *(a1 + 4) = a3[5];
      *(a1 + 5) = v31;
      if (v25)
      {
        v27 = v25;
        *(a1 + 6) = sub_1AF160BD4(v25, v26);
        LOBYTE(v25) = sub_1AF160B24(v27, v28);
      }

      else
      {
        *(a1 + 6) = 0;
      }

      *(a1 + 14) = v25;
      *(a1 + 7) = v20;
      *(a1 + 8) = v34;
      *(a1 + 9) = v21;
      *(a1 + 10) = v22;
      *(a1 + 11) = v33;
      *(a1 + 12) = v32;
      *(a1 + 13) = v23;
      *(a1 + 16) = v8;
      *(a1 + 15) = sub_1AF15D5F0(v8, v26);
    }
  }

  return a1;
}

uint64_t sub_1AF238B28(_BYTE *a1)
{
  if (*a1 & 1) != 0 || (a1[1] & 1) != 0 || (a1[2] & 1) != 0 || (a1[3] & 1) != 0 || (a1[5] & 1) != 0 || (a1[8] & 1) != 0 || (a1[9] & 1) != 0 || (a1[11] & 1) != 0 || (a1[12] & 1) != 0 || (a1[7])
  {
    v1 = 1;
  }

  else
  {
    v1 = a1[13];
  }

  return v1 & 1;
}

void sub_1AF238B8C(uint64_t a1, float32x2_t *a2, _BYTE *a3, uint64_t a4)
{
  v9 = sub_1AF12E2AC(a1, a2);
  v10 = a2[2];
  if (v10 || (v10 = sub_1AF12F10C(a1, v8)) != 0)
  {
    v11 = sub_1AF1BB260(v10, v8);
    if (v11)
    {
      v13 = v11;
      v108 = a2[1];
      *(a4 + 240) = 0u;
      *(a4 + 256) = 0u;
      *(a4 + 208) = 0u;
      *(a4 + 224) = 0u;
      *(a4 + 176) = 0u;
      *(a4 + 192) = 0u;
      *(a4 + 144) = 0u;
      *(a4 + 160) = 0u;
      *(a4 + 112) = 0u;
      *(a4 + 128) = 0u;
      *(a4 + 80) = 0u;
      *(a4 + 96) = 0u;
      *(a4 + 48) = 0u;
      *(a4 + 64) = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      v14 = 1.0;
      if (a3[1] == 1)
      {
        v15 = sub_1AF15C5B4(v11, v12);
        if (v15)
        {
          v16 = sub_1AF160FEC(v15, v12);
          v14 = exp2f(v16);
        }
      }

      *(a4 + 28) = v14;
      if ((sub_1AF15D1B4(v13, v12) & 1) != 0 && (v18 = sub_1AF15C6AC(v13, v17)) != 0 && a3[2] == 1)
      {
        sub_1AF161ED0(v18, v19, v109);
      }

      else
      {
        sub_1AF161E9C(v109);
      }

      v21 = v109[2];
      *(a4 + 196) = v109[3];
      v22 = v109[5];
      *(a4 + 212) = v109[4];
      *(a4 + 228) = v22;
      *(a4 + 244) = v110;
      v23 = v109[1];
      *(a4 + 148) = v109[0];
      *(a4 + 164) = v23;
      *(a4 + 180) = v21;
      v24 = sub_1AF15C7A4(v13, v20);
      if (v24)
      {
        v26 = sub_1AF160FEC(v24, v25);
      }

      else
      {
        v26 = 0.0;
      }

      *a4 = v26;
      if (a3[11] == 1 && (v27 = sub_1AF15C89C(v13, v25)) != 0)
      {
        v28 = v27;
        *(a4 + 4) = fminf(fmaxf(sub_1AF160FEC(v27, v25), 0.0), 1.0);
        v29 = vdiv_f32(vdup_lane_s32(v108, 1), v108).f32[0];
        *(a4 + 16) = v29 + (fminf(fmaxf(sub_1AF160C84(v28, v30), 0.0), 1.0) * (1.0 - v29));
        *(a4 + 8) = fminf(fmaxf(1.0 - sub_1AF160D20(v28, v31), 0.0), 1.0);
        v33 = sub_1AF160DBC(v28, v32);
      }

      else
      {
        *(a4 + 16) = 1065353216;
        *(a4 + 4) = 0;
        *(a4 + 8) = 0;
        v33 = 0.0;
      }

      *(a4 + 12) = v33;
      if (a3[8] == 1 && (v34 = sub_1AF15CB84(v13, v25)) != 0)
      {
        v35 = v34;
        *(a4 + 20) = sub_1AF160C84(v34, v25);
        v37 = sub_1AF160FEC(v35, v36);
      }

      else
      {
        *(a4 + 20) = 0;
        v37 = 0.0;
      }

      *(a4 + 24) = v37;
      if (sub_1AF15D208(v13, v25) && (v40 = sub_1AF15CA8C(v13, v38)) != 0)
      {
        v41 = v40;
        *(a4 + 32) = fminf(fmaxf(sub_1AF160FEC(v40, v38), 0.00000011921), 2.0);
        *(a4 + 36) = fminf(fmaxf(sub_1AF160C84(v41, v42), 0.00000011921), 2.0);
        *v44.i32 = sub_1AF1624AC(v41, v43);
        v104 = vaddq_f32(sub_1AF162408(v41, v45), vdupq_lane_s32(v44, 0));
        v47 = vmulq_f32(sub_1AF162408(v41, v46), xmmword_1AFE42ED0);
        v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
        *(a4 + 64) = vsubq_f32(v104, vdupq_lane_s32(*v47.f32, 0));
        *v49.i32 = sub_1AF16298C(v41, v48) + 1.0;
        v105 = vaddq_f32(sub_1AF1628E8(v41, v50), vdupq_lane_s32(v49, 0));
        v52 = vmulq_f32(sub_1AF1628E8(v41, v51), xmmword_1AFE42ED0);
        v52.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
        *(a4 + 80) = vsubq_f32(v105, vdupq_lane_s32(*v52.f32, 0));
        *v54.i32 = sub_1AF162ACC(v41, v53) + 1.0;
        v103 = vaddq_f32(sub_1AF162A28(v41, v55), vdupq_lane_s32(v54, 0));
        v57 = 0;
        v58 = vmulq_f32(sub_1AF162A28(v41, v56), xmmword_1AFE42ED0);
        v58.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
        *(a4 + 96) = vsubq_f32(v103, vdupq_lane_s32(*v58.f32, 0));
      }

      else
      {
        v41 = 0;
        __asm { FMOV            V0.2S, #1.0 }

        *(a4 + 32) = _D0;
        __asm { FMOV            V1.4S, #1.0 }

        *(a4 + 64) = 0u;
        *(a4 + 80) = _Q1;
        *(a4 + 96) = _Q1;
        v57 = 1;
      }

      if (a3[12] == 1)
      {
        v65 = sub_1AF15C4BC(v13, v38);
      }

      else
      {
        v65 = 0;
      }

      objc_msgSend_time(v9, v38, v39, v103.i64[0]);
      v68 = 30.0;
      v69 = floor(v67 * 30.0);
      if (v65)
      {
        *&v70 = 0.00390625 / fmax(sub_1AF160C84(v65, v66), 0.00390625);
        *v70.i32 = *v70.i32;
        v107 = v70;
        v72 = sub_1AF160FEC(v65, v71);
      }

      else
      {
        v72 = 0.0;
        LODWORD(v68) = 998244352;
        v107 = *&v68;
      }

      *(a4 + 112) = v72;
      v106 = sinf((v69 * 0.1) + 0.05);
      v74.f32[0] = sinf(v69 * 0.01);
      v74.f32[1] = v106;
      v75 = vmul_f32(v74, vdup_n_s32(0x45849000u));
      *&v76 = vdup_lane_s32(v107, 0);
      *(&v76 + 1) = vminnm_f32(vsub_f32(v75, vrndm_f32(v75)), vdup_n_s32(0x3F7FFFFFu));
      *(a4 + 128) = v76;
      if (v65)
      {
        v77 = sub_1AF1611EC(v65, v73);
      }

      else
      {
        v77 = 0;
      }

      *(a4 + 116) = v77;
      if ((v57 & 1) == 0 && (sub_1AF160D20(v41, v73) != 0.0 || sub_1AF160DBC(v41, v73) != 0.0))
      {
        v78 = sub_1AF160D20(v41, v73) * -0.1 + 0.31271;
        v80 = v78 * -3.0 * v78 + v78 * 2.87 + -0.275 + sub_1AF160DBC(v41, v79) * 0.1;
        v81 = v78 / v80;
        v82 = (1.0 - v78 - v80) / v80;
        *(a4 + 48) = vdivq_f32(xmmword_1AFE42F10, vmlaq_n_f32(vaddq_f32(vmulq_n_f32(xmmword_1AFE42EE0, v81), xmmword_1AFE42EF0), xmmword_1AFE42F00, v82));
        *(a4 + 40) = 1;
      }

      if (a3[7] == 1)
      {
        v84 = sub_1AF15C994(v13, v73);
        if (!v84)
        {
          v85 = sub_1AF0D5194(0, v83);
          if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDEE5E0(v85, v83, v86, v87, v88, v89, v90, v91);
          }
        }

        v92 = sub_1AF160FEC(v84, v83) * 0.01 * v108.f32[1];
        *(a4 + 144) = v92;
      }

      if (a3[5] == 1)
      {
        v93 = sub_1AF15C2CC(v13, v73);
        sub_1AF15E280(v13, v94, *&v108);
        *(a4 + 248) = v95;
        v97 = sub_1AF160DBC(v93, v96);
        *(a4 + 260) = v97;
        v98 = v97 + -0.0001;
        v101 = sub_1AF160D20(v93, v99);
        if (v98 < v101)
        {
          v101 = v98;
        }

        *(a4 + 256) = v101;
        *(a4 + 264) = sub_1AF160E58(v93, v100);
        *(a4 + 268) = sub_1AF15D9E8(v13, v102);
      }
    }
  }
}

uint64_t sub_1AF23921C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5, CFX::RG::TextureDescriptorReference *a6)
{
  if ((atomic_load_explicit(byte_1ED73A528, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v17 = a3;
    sub_1AFDEE658();
    a2 = v16;
    a3 = v17;
  }

  if (byte_1ED73A520)
  {
    v10 = 0x8D0488668FE8A629;
  }

  else
  {
    v10 = 0;
  }

  sub_1AF250390(a1, a2, a3, a5, v10, 0);
  *a1 = &unk_1F24E9238;
  v11 = *(a5 + 40);
  v12 = *(a5 + 56);
  *(a1 + 448) = *(a5 + 24);
  *(a1 + 464) = v11;
  *(a1 + 480) = v12;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  if (a6)
  {
    CFX::RG::TextureDescriptorReference::withSampleCount(v20, a6, 1);
    v13 = sub_1AF233CC8(a4, "COMPOSITING OUTPUT", v20);
  }

  else
  {
    CFX::RG::TextureDescriptorReference::finalColor(v18);
    CFX::RG::TextureDescriptorReference::withSampleCount(v19, v18, 1);
    v14 = sub_1AF130888(*(a1 + 432));
    CFX::RG::TextureDescriptorReference::withSizeFactor(v20, v19, v14);
    v13 = sub_1AF233CC8(a4, "COMPOSITING OUTPUT", v20);
  }

  *(a1 + 544) = v13;
  CFX::RG::Pass::renderTo(a1, v13, 0x100000000, 0);
  return a1;
}

void sub_1AF239390(uint64_t a1, CFX::GPUResourceManager **a2)
{
  prof_beginFlame("Composite", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CompositePass.mm", 280);
  v65 = sub_1AF12E2AC(*(a1 + 432), v4);
  v66 = objc_msgSend_resourceManager(v65, v5, v6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 544)) + 12);
  v9 = CFX::GPUResourceManager::remappedResource(a2[3], *(a1 + 544));
  v73 = a2;
  if (CFX::RG::Resource::isExternal(v9))
  {
    v11 = CFX::RG::Resource::externalResourceDesc(v9);
    v72 = CFX::RG::ExternalResourceDesc::requireLoad(v11);
  }

  else
  {
    v72 = 0;
  }

  v12 = *(a1 + 477);
  v13 = *(a1 + 478);
  v14 = *(a1 + 487);
  v15 = *(a1 + 486);
  v16 = *(a1 + 475);
  v17 = *(a1 + 479);
  v67 = *(a1 + 480);
  v68 = *(a1 + 483);
  v69 = *(a1 + 484);
  v70 = *(a1 + 481);
  v71 = *(a1 + 482);
  v18 = *(a1 + 488);
  if ((sub_1AF15D1B4(v18, v10) & 1) != 0 && (v20 = sub_1AF15C6AC(v18, v19)) != 0)
  {
    v22 = sub_1AF1618F4(v20, v21);
  }

  else
  {
    v22 = 2;
  }

  v23 = v8;
  v24 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v7)));
  v25 = v8 << 32;
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ (v25 >> 56))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ (v25 >> 56))));
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ v12)));
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ v13)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ v13)));
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ v14)));
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ v15)));
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ v16)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ v16)));
  v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ v17)));
  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ v67)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ v67)));
  v34 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ v68)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ v68)));
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ v69)));
  v36 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ v70)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47))) ^ v70)));
  v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47))) ^ v71)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v36 ^ (v36 >> 47))) ^ v71)));
  v38 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47))) ^ v72)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v37 >> 47))) ^ v72)));
  v39 = 0x9DDFEA08EB382D69 * (v38 ^ (v38 >> 47));
  v91[0] = v22;
  v40 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v22)))) ^ ((0x9DDFEA08EB382D69 * (v39 ^ ((0x9DDFEA08EB382D69 * (v39 ^ v22)) >> 47) ^ (0x9DDFEA08EB382D69 * (v39 ^ v22)))) >> 47));
  v41 = CFX::CrossFrameResourceManager::get(v73[4], v40);
  *(a1 + 496) = v41;
  if (!v41)
  {
    *(a1 + 496) = sub_1AF2398D4(v73[4], v40);
    v42 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v43, a1 + 477, 53, 0);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v44, a1 + 478, 53, 9);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v45, a1 + 486, 49, 10);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v46, a1 + 487, 53, 11);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v47, a1 + 475, 53, 1);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v48, a1 + 479, 53, 2);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v49, a1 + 480, 53, 3);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v50, a1 + 483, 53, 4);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v51, a1 + 484, 53, 5);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v52, a1 + 481, 53, 6);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v53, a1 + 482, 53, 7);
    objc_msgSend_setConstantValue_type_atIndex_(v42, v54, v91, 49, 8);
    v55 = *(a1 + 496);
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    memset(v74, 0, sizeof(v74));
    v56 = sub_1AFDE868C(v66);
    v59 = objc_msgSend_frameworkLibrary(v56, v57, v58);
    v75 = v59;
    v76 = v23;
    BYTE8(v81) = HIBYTE(v25);
    if (v72)
    {
      v61 = sub_1AF15BBC4(v59, v60);
    }

    else
    {
      v61 = 0;
    }

    *&v82 = v61;
    *&v87 = v42;
    *&v88 = @"vfx_draw_fullscreen_triangle_vertex";
    *(&v88 + 1) = @"vfx_post_process";
    v62 = objc_msgSend_newRenderPipelineStateWithDesc_(v66, v60, v74);
    sub_1AF23355C((v55 + 16), v62);
  }

  if (*(a1 + 484) == 1)
  {
    v63 = sub_1AF275A98(v65, v73[4]);
  }

  else
  {
    v63 = 0;
  }

  v64 = *(a1 + 496);
  *(v64 + 24) = v63;
  sub_1AF238B8C(*(a1 + 432), (a1 + 448), (a1 + 472), v64 + 32);
  prof_endFlame();
}

_OWORD *sub_1AF2398D4(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF239984(uint64_t a1, uint64_t a2)
{
  prof_beginFlame("Composite", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CompositePass.mm", 354);
  v5 = sub_1AF12E2AC(*(a1 + 432), v4);
  v8 = objc_msgSend_renderEncoder(v5, v6, v7);
  v10 = sub_1AF2338B0(*(a1 + 496) + 16, v9);
  v13 = objc_msgSend_state(v10, v11, v12);
  v15 = objc_msgSend_setRenderPipelineState_(*(v8 + 16), v14, v13);
  v16 = *(a2 + 24);
  v17 = *(a1 + 504);
  v18 = CFX::RG::Temporal::currentFrame(v15);
  Texture = CFX::GPUResourceManager::getTexture(v16, v17, v18);
  sub_1AF1F8FCC(v8, Texture, 0);
  v20 = sub_1AF1F8FCC(v8, *(*(a1 + 496) + 24), 3);
  if (*(a1 + 477) == 1)
  {
    v22 = *(a2 + 24);
    v23 = *(a1 + 520);
    v24 = CFX::RG::Temporal::currentFrame(v20);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    v26 = *(a2 + 24);
    v27 = *(a1 + 512);
    v28 = CFX::RG::Temporal::currentFrame(v25);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    sub_1AF1F8FCC(v8, v25, 2);
    v20 = sub_1AF1F8FCC(v8, v29, 5);
  }

  if (*(a1 + 475) == 1)
  {
    v30 = *(a2 + 24);
    v31 = *(a1 + 528);
    v32 = CFX::RG::Temporal::currentFrame(v20);
    v33 = CFX::GPUResourceManager::getTexture(v30, v31, v32);
    v20 = sub_1AF1F8FCC(v8, v33, 1);
  }

  if (*(a1 + 479) == 1)
  {
    v34 = *(a2 + 24);
    v35 = *(a1 + 536);
    v36 = CFX::RG::Temporal::currentFrame(v20);
    v37 = CFX::GPUResourceManager::getTexture(v34, v35, v36);
    sub_1AF1F8FCC(v8, v37, 4);
  }

  if (*(a1 + 482) == 1)
  {
    v38 = sub_1AF12F10C(*(a1 + 432), v21);
    if (v38)
    {
      v40 = sub_1AF1BB260(v38, v39);
      if (v40)
      {
        v42 = sub_1AF15CA8C(v40, v41);
        v45 = sub_1AF162BF0(v42, v43);
        if (v45)
        {
          v46 = objc_msgSend_textureForMaterialProperty_(v5, v44, v45);
          if (v46)
          {
            sub_1AF1F8FCC(v8, v46, 6);
          }

          else if ((byte_1EB6587B8 & 1) == 0)
          {
            byte_1EB6587B8 = 1;
            v47 = sub_1AF0D5194(0, 0);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDEE6A4(v47);
            }
          }
        }
      }
    }
  }

  sub_1AF1F905C(v8, (*(a1 + 496) + 32), 0x110uLL, 0);
  sub_1AF2010C8(v8, v48);
  prof_endFlame();
}

double sub_1AF239C0C(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 63) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

double sub_1AF239C54(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 64) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

double sub_1AF239C9C(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 65) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

double sub_1AF239CE4(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 66) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

double sub_1AF239D2C(CFX::RG::Temporal *a1, unint64_t a2)
{
  *(a1 + 67) = a2;
  v4 = CFX::RG::Temporal::currentFrame(a1);

  return CFX::RG::Pass::readFrom(a1, a2, v4);
}

uint64_t sub_1AF239D74(uint64_t *a1, CFX::RG::TextureDescriptorReference **a2, __int128 *a3, __int128 *a4)
{
  v4 = *a2;
  v6[0] = "Composite";
  v6[1] = v4;
  v7 = 0;
  v8 = *a3;
  v9 = *(a3 + 2);
  v10 = *a4;
  v11 = *(a4 + 2);
  return sub_1AF239DD8(a1, a1, v6, a2 + 2);
}

uint64_t sub_1AF239DD8(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3, CFX::RG::TextureDescriptorReference **a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF239F20(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF239E38(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF239E70(uint64_t a1)
{
  *a1 = &unk_1F24E9290;

  return a1;
}

void sub_1AF239EB8(uint64_t a1)
{
  *a1 = &unk_1F24E9290;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF239F20(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5, CFX::RG::TextureDescriptorReference **a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x228u, 8u, 2);
  return sub_1AF23921C(v10, *a3, a3[1], a4, a5, *a6);
}

__n128 sub_1AF239F88(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5, uint64_t a6)
{
  v7 = CFX::RG::Pass::Pass(a1, a2, a3, a4->n128_u64[0], 4, a5, a6);
  *v7 = &unk_1F24E92B0;
  result = *a4;
  *(v7 + 424) = *a4;
  return result;
}

uint64_t sub_1AF239FEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      return (*(*result + 56))(result, a2, a4 + 8);
    }

    else if (a3 == 3)
    {
      return (*(*result + 64))(result, a2);
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return (*(*result + 48))(result, a2, a4 + 8);
    }
  }

  else
  {
    return (*(*result + 40))(result, a2, a4 + 8);
  }

  return result;
}

void sub_1AF23A0B4(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF23A0F4(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = *a4;
  if ((atomic_load_explicit(byte_1ED73A538, memory_order_acquire) & 1) == 0)
  {
    v16 = v6;
    v17 = a3;
    v15 = a2;
    sub_1AFDEE6E8();
    a2 = v15;
    v6 = v16;
    a3 = v17;
  }

  if (byte_1ED73A530)
  {
    v7 = 0x374B7D265F77D55DLL;
  }

  else
  {
    v7 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, v6, 1, v7, 0);
  *this = &unk_1F24E9308;
  *(this + 27) = *a4;
  v8 = a4[1];
  v9 = a4[2];
  v10 = a4[4];
  *(this + 30) = a4[3];
  *(this + 31) = v10;
  *(this + 28) = v8;
  *(this + 29) = v9;
  v11 = a4[5];
  v12 = a4[6];
  v13 = a4[8];
  *(this + 34) = a4[7];
  *(this + 35) = v13;
  *(this + 32) = v11;
  *(this + 33) = v12;
  *(this + 74) = 0;
  result = 0.0;
  *(this + 36) = 0u;
  return result;
}

void sub_1AF23A1CC(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 448))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 448))))));
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v6 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(a1 + 448)))));
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 456))));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 464))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 464))))));
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(a1 + 464)))));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 472))));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v17 = 0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 480))))) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 480))))));
  v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
  v19 = 0x9DDFEA08EB382D69 * (v18 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(HIDWORD(*(a1 + 480)))));
  v20 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) ^ ((0x9DDFEA08EB382D69 * (v18 ^ (v19 >> 47) ^ v19)) >> 47));
  v21 = 0x9DDFEA08EB382D69 * (v20 ^ COERCE_UNSIGNED_INT64(COERCE_FLOAT(*(a1 + 488))));
  v22 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47));
  v23 = *(a1 + 504);
  v24 = 0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ *(a1 + 496))) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ *(a1 + 496))));
  v25 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ v23)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v24 ^ (v24 >> 47))) ^ v23)));
  v26 = 0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47));
  v27 = *(a1 + 512);
  v28 = 0x9DDFEA08EB382D69 * (v26 ^ ((0x9DDFEA08EB382D69 * (v26 ^ v27)) >> 47) ^ (0x9DDFEA08EB382D69 * (v26 ^ v27)));
  v29 = 0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47));
  v30 = 0x9DDFEA08EB382D69 * (v29 ^ COERCE_UNSIGNED_INT64(*(a1 + 520)));
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) ^ ((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 47));
  v32 = 0x9DDFEA08EB382D69 * (v31 ^ COERCE_UNSIGNED_INT64(*(a1 + 524)));
  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) ^ ((0x9DDFEA08EB382D69 * (v31 ^ (v32 >> 47) ^ v32)) >> 47));
  v34 = 0x9DDFEA08EB382D69 * (v33 ^ COERCE_UNSIGNED_INT64(*(a1 + 528)));
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) ^ ((0x9DDFEA08EB382D69 * (v33 ^ (v34 >> 47) ^ v34)) >> 47));
  v36 = 0x9DDFEA08EB382D69 * (v35 ^ COERCE_UNSIGNED_INT64(*(a1 + 532)));
  v37 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) ^ ((0x9DDFEA08EB382D69 * (v35 ^ (v36 >> 47) ^ v36)) >> 47));
  v38 = 0x9DDFEA08EB382D69 * (v37 ^ COERCE_UNSIGNED_INT64(*(a1 + 536)));
  v39 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) ^ ((0x9DDFEA08EB382D69 * (v37 ^ (v38 >> 47) ^ v38)) >> 47));
  v40 = 0x9DDFEA08EB382D69 * (v39 ^ *(a1 + 552));
  v41 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v39 ^ (v40 >> 47) ^ v40)) ^ ((0x9DDFEA08EB382D69 * (v39 ^ (v40 >> 47) ^ v40)) >> 47));
  v42 = *(a1 + 544);
  if (v42 && v23)
  {
    for (i = 0; i != v23; ++i)
    {
      v44 = v42;
      v45 = *(a1 + 512);
      if (v27)
      {
        do
        {
          v41 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ *v44)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ *v44)))) ^ ((0x9DDFEA08EB382D69 * (v41 ^ ((0x9DDFEA08EB382D69 * (v41 ^ *v44)) >> 47) ^ (0x9DDFEA08EB382D69 * (v41 ^ *v44)))) >> 47));
          v44 += v23;
          --v45;
        }

        while (v45);
      }

      ++v42;
    }
  }

  v46 = CFX::CrossFrameResourceManager::get(a2[4], v41);
  *(a1 + 576) = v46;
  if (!v46)
  {
    *(a1 + 576) = sub_1AF23A8A0(a2[4], v41);
    v48 = sub_1AF12E2AC(*(a1 + 560), v47);
    v50 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 584)) + 4);
    v51 = *(a1 + 448);
    v52 = vmvnq_s8(vceqzq_f32(v51));
    v52.i32[3] = v52.i32[2];
    if ((vmaxvq_u32(v52) & 0x80000000) != 0)
    {
      v54 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(*v51.f32, vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v50), xmmword_1AFE42F50), 0x30uLL))))));
      v53 = vmuls_lane_f32(((v50 << 16) >> 48), v51, 2);
    }

    else
    {
      v53 = 0;
      v54 = 0uLL;
    }

    v55 = *(a1 + 464);
    v56 = vmvnq_s8(vceqzq_f32(v55));
    v56.i32[3] = v56.i32[2];
    if ((vmaxvq_u32(v56) & 0x80000000) != 0)
    {
      v57 = *(a1 + 480);
    }

    else
    {
      v57 = *(a1 + 480);
      __asm { FMOV            V2.4S, #1.0 }

      v63 = vmvnq_s8(vceqq_f32(v57, _Q2));
      v63.i32[3] = v63.i32[2];
      if ((vmaxvq_u32(v63) & 0x80000000) == 0)
      {
        v65 = *(MEMORY[0x1E6974448] + 16);
        v64 = *(MEMORY[0x1E6974448] + 32);
        v66 = *MEMORY[0x1E6974448];
        goto LABEL_16;
      }
    }

    v67 = vcvt_f32_f64(vcvtq_f64_s64(vshrq_n_s64(vshlq_u64(vdupq_n_s64(v50), xmmword_1AFE42F50), 0x30uLL)));
    v66 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(*v55.f32, v67)));
    v68 = vrev64_s32(v67);
    v69.i32[1] = v68.i32[1];
    v69.f32[0] = ((v50 << 16) >> 48);
    v65 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *v57.f32), v69)));
    v68.f32[1] = ((v50 << 16) >> 48);
    v64 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(*&vextq_s8(v57, v57, 4uLL), v68)));
LABEL_16:
    v70 = 0;
    v71 = *(a1 + 552);
    v114 = v65;
    v115 = v66;
    v113 = v64;
    if (v71 > 2)
    {
      if (v71 <= 4)
      {
        if (v71 != 3)
        {
          v112 = v54;
          v72 = objc_alloc(MEMORY[0x1E69745C0]);
          v75 = objc_msgSend_device(v48, v73, v74);
          LODWORD(v76) = *(a1 + 520);
          v78 = objc_msgSend_initWithDevice_sigma_(v72, v77, v75, v76);
LABEL_36:
          v54 = v112;
          v70 = v78;
          goto LABEL_39;
        }

        v79 = MEMORY[0x1E6974638];
LABEL_33:
        v112 = v54;
        v92 = [v79 alloc];
        v95 = objc_msgSend_device(v48, v93, v94);
        v78 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_(v92, v96, v95, *(a1 + 504), *(a1 + 512));
        goto LABEL_36;
      }

      if (v71 == 5)
      {
        v80 = MEMORY[0x1E6974610];
        goto LABEL_35;
      }

      if (v71 == 6)
      {
        v80 = MEMORY[0x1E6974588];
LABEL_35:
        v112 = v54;
        v97 = [v80 alloc];
        v100 = objc_msgSend_device(v48, v98, v99);
        v78 = objc_msgSend_initWithDevice_(v97, v101, v100);
        goto LABEL_36;
      }

LABEL_39:
      v116 = v54;
      v117.i64[0] = v53;
      objc_msgSend_setOffset_(v70, v49, &v116, *&v112);
      v116 = v115;
      v117 = v114;
      v118 = v113;
      objc_msgSend_setClipRect_(v70, v110, &v116);
      objc_msgSend_setEdgeMode_(v70, v111, *(a1 + 496));
      sub_1AF23355C((*(a1 + 576) + 16), v70);
      return;
    }

    if (v71)
    {
      if (v71 != 1)
      {
        if (v71 == 2)
        {
          v79 = MEMORY[0x1E6974580];
          goto LABEL_33;
        }

        goto LABEL_39;
      }

      v112 = v54;
      v102 = objc_alloc(MEMORY[0x1E69745F8]);
      v105 = objc_msgSend_device(v48, v103, v104);
      v70 = objc_msgSend_initWithDevice_(v102, v106, v105);
      LODWORD(v107) = *(a1 + 524);
      objc_msgSend_setBias_(v70, v108, v109, v107);
    }

    else
    {
      v112 = v54;
      v81 = *(a1 + 544);
      if (!v81)
      {
        v82 = malloc_type_calloc(1uLL, 4 * *(a1 + 504) * *(a1 + 512), 0x100004052888210uLL);
        v81 = v82;
        v83 = *(a1 + 512) * *(a1 + 504);
        if (v83)
        {
          memset_pattern16(v82, &xmmword_1AFE21160, 4 * v83);
        }
      }

      v84 = objc_alloc(MEMORY[0x1E6974598]);
      v87 = objc_msgSend_device(v48, v85, v86);
      v70 = objc_msgSend_initWithDevice_kernelWidth_kernelHeight_weights_(v84, v88, v87, *(a1 + 504), *(a1 + 512), v81);
      LODWORD(v89) = *(a1 + 524);
      objc_msgSend_setBias_(v70, v90, v91, v89);
      if (!*(a1 + 544))
      {
        free(v81);
      }
    }

    v54 = v112;
    goto LABEL_39;
  }
}

void *sub_1AF23A8A0(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

CFX::RG::Temporal *sub_1AF23A928(CFX::RG::Temporal *a1, uint64_t a2, id *a3)
{
  v6 = *(a2 + 24);
  v7 = *(a1 + 73);
  v8 = CFX::RG::Temporal::currentFrame(a1);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 74);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  result = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  if (Texture != result)
  {
    v14 = *(*(a1 + 72) + 16);
    v15 = CFX::RG::RendererPassArguments::commandBuffer(a3);

    return MEMORY[0x1EEE66B58](v14, sel_encodeToCommandBuffer_sourceTexture_destinationTexture_, v15);
  }

  return result;
}

void sub_1AF23A9EC(uint64_t a1, CFX::CrossFrameResourceManager **a2, int a3, uint64_t a4)
{
  if (a3 == 2)
  {
    sub_1AF23A928(a1, a2, (a4 + 8));
  }

  else if (a3 == 1)
  {
    sub_1AF23A1CC(a1, a2);
  }
}

CFX::RG::Pass *sub_1AF23AA0C(CFX::RG *a1, CFX::RG::Resource *a2, CFX::RG::Resource *a3, _OWORD *a4)
{
  v7 = sub_1AF23AB20(a1, a4);
  v8 = CFX::RG::Resource::constTextureDesc(a2);
  v9 = v8[1];
  v22[0] = *v8;
  v22[1] = v9;
  v10 = v8[5];
  v12 = v8[2];
  v11 = v8[3];
  v23 = v8[4];
  v24 = v10;
  v22[2] = v12;
  v22[3] = v11;
  v13 = v8[9];
  v15 = v8[6];
  v14 = v8[7];
  v27 = v8[8];
  v28 = v13;
  v25 = v15;
  v26 = v14;
  CFX::RG::TextureDescriptorReference::withSampleCount(v21, v22, 1);
  v17 = CFX::RG::copyIfNeeded(a1, a2, a3, v21, "MPSConvolutionPass color input resolve", v16);
  v7[73] = v17;
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(v7, v17, v18);
  if ((v24 & 1) == 0)
  {
    LOBYTE(v24) = 1;
  }

  *(&v23 + 1) = 2;
  CFX::RG::TextureDescriptorReference::withSampleCount(v21, v22, 1);
  v19 = sub_1AF233CC8(a1, "color", v21);
  v7[74] = v19;
  CFX::RG::Pass::writeTo(v7, v19);
  return v7;
}

uint64_t sub_1AF23AB20(uint64_t *a1, _OWORD *a2)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  sub_1AF23AC60(v7[0], v4, v7, a2);
  v7[0] = v5;
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23AB78(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23ABB0(uint64_t a1)
{
  *a1 = &unk_1F24E9340;

  return a1;
}

void sub_1AF23ABF8(uint64_t a1)
{
  *a1 = &unk_1F24E9340;

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF23AC60(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_1AF23498C(v8, 0x260u, 0x10u, 2);
  return sub_1AF23A0F4(v6, *a3, a3[1], a4);
}

__n128 sub_1AF23ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *a5)
{
  if ((atomic_load_explicit(byte_1ED73A548, memory_order_acquire) & 1) == 0)
  {
    v9 = a2;
    v10 = a3;
    sub_1AFDEE734();
    a2 = v9;
    a3 = v10;
  }

  if (byte_1ED73A540)
  {
    v7 = 0x6E138DDE28F25A91;
  }

  else
  {
    v7 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v7, 0);
  *a1 = &unk_1F24E9360;
  result = a5[1];
  *(a1 + 440) = result;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  return result;
}

void sub_1AF23AD5C(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  prof_beginFlame("CopyStereoSideBySidePass", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CopyStereoSideBySidePass.mm", 22);
  v5 = sub_1AF12E2AC(*(a1 + 432), v4);
  v8 = objc_msgSend_resourceManager(v5, v6, v7);
  v9 = CFX::RG::Pass::hash(a1);
  v10 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 472));
  v11 = 0x9DDFEA08EB382D69 * (*(v10 + 12) ^ v9);
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ (v11 >> 47) ^ v11)) ^ ((0x9DDFEA08EB382D69 * (v9 ^ (v11 >> 47) ^ v11)) >> 47));
  v13 = 0x9DDFEA08EB382D69 * (v12 ^ (*(v10 + 12) << 32 >> 56));
  v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) ^ ((0x9DDFEA08EB382D69 * (v12 ^ (v13 >> 47) ^ v13)) >> 47));
  v15 = CFX::CrossFrameResourceManager::get(a2[4], v14);
  *(a1 + 456) = v15;
  if (!v15)
  {
    v16 = sub_1AF23AE8C(a2[4], v14);
    *(a1 + 456) = v16;
    v18 = objc_msgSend_newComputePipelineStateWithFunctionName_(v8, v17, @"copy_array_to_side_by_side");
    sub_1AF23355C(v16 + 2, v18);
  }

  prof_endFlame();
}

void *sub_1AF23AE8C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF23AF14(void *a1, uint64_t a2, id *a3)
{
  prof_beginFlame("CopyStereoSideBySidePass", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CopyStereoSideBySidePass.mm", 42);
  v6 = CFX::RG::ComputePassArguments::encoder(a3);
  v7 = *(a2 + 24);
  v8 = a1[58];
  v9 = CFX::RG::Temporal::currentFrame(v6);
  Texture = CFX::GPUResourceManager::getTexture(v7, v8, v9);
  v11 = *(a2 + 24);
  v12 = a1[59];
  v13 = CFX::RG::Temporal::currentFrame(Texture);
  v14 = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  objc_msgSend_setTexture_atIndex_(v6, v15, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v6, v16, v14, 1);
  v18 = sub_1AF1403B4(a1[57] + 16, v17);
  v19 = sub_1AFDE323C(v18);
  objc_msgSend_dispatch_onTexture2D_(v6, v20, v19, v14);

  prof_endFlame();
}

CFX::RG::Temporal *sub_1AF23B018(uint64_t *a1, unint64_t a2, unint64_t a3, __int128 *a4)
{
  v10[0].n128_u64[0] = a3;
  v10[0].n128_u64[1] = a2;
  v10[1] = *a4;
  v5 = sub_1AF23B094(a1, a1, v10);
  v6 = *a4;
  *(v5 + 58) = *a4;
  v7 = CFX::RG::Temporal::currentFrame(v5);
  CFX::RG::Pass::readFrom(v5, v6, v7);
  v8 = *(a4 + 1);
  *(v5 + 59) = v8;
  CFX::RG::Pass::writeTo(v5, v8);
  return v5;
}

uint64_t sub_1AF23B094(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  sub_1AF23B1D8(v8[0], v5, v8, a2, a3);
  v8[0] = v6;
  sub_1AF235000(a1 + 22, v8);
  return v8[0];
}

void sub_1AF23B0F0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23B128(uint64_t a1)
{
  *a1 = &unk_1F24E93B8;

  return a1;
}

void sub_1AF23B170(uint64_t a1)
{
  *a1 = &unk_1F24E93B8;

  JUMPOUT(0x1B271C6B0);
}

double sub_1AF23B1D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __n128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v7 = sub_1AF23498C(v10, 0x1E0u, 8u, 2);
  *&result = sub_1AF23ACB0(v7, *a3, a3[1], v8, a5).n128_u64[0];
  return result;
}

uint64_t sub_1AF23B228(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1ED73A558, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE780();
  }

  return qword_1ED73A550;
}

unint64_t sub_1AF23B260(unsigned int a1)
{
  v1 = "Main culling context";
  v2 = 0xC6A4A7935BD1E995 * a1;
  if (a1 >= 8)
  {
    v3 = a1 >> 3;
    v1 = &aMainCullingCon[8 * v3];
    v4 = 8 * v3;
    v5 = "Main culling context";
    do
    {
      v6 = *v5;
      v5 += 8;
      v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v6) ^ ((0xC6A4A7935BD1E995 * v6) >> 47))) ^ v2);
      v4 -= 8;
    }

    while (v4);
  }

  v7 = a1 & 7;
  if (v7 > 3)
  {
    if ((a1 & 7) > 5)
    {
      if (v7 != 6)
      {
        v2 ^= v1[6] << 48;
      }

      v2 ^= v1[5] << 40;
    }

    else if (v7 == 4)
    {
      goto LABEL_17;
    }

    v2 ^= v1[4] << 32;
LABEL_17:
    v2 ^= v1[3] << 24;
LABEL_18:
    v2 ^= v1[2] << 16;
    goto LABEL_19;
  }

  if ((a1 & 7) <= 1)
  {
    if ((a1 & 7) == 0)
    {
      return (0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47);
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    goto LABEL_18;
  }

LABEL_19:
  v2 ^= v1[1] << 8;
LABEL_20:
  v2 = 0xC6A4A7935BD1E995 * (v2 ^ *v1);
  return (0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v2 ^ (v2 >> 47))) >> 47);
}

uint64_t sub_1AF23B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v6 = *a5;
  v7 = a5[2];
  *(a1 + 48) = a5[1];
  *(a1 + 64) = v7;
  *(a1 + 32) = v6;
  v8 = a5[3];
  v9 = a5[4];
  v10 = a5[6];
  *(a1 + 112) = a5[5];
  *(a1 + 128) = v10;
  *(a1 + 80) = v8;
  *(a1 + 96) = v9;
  *(a1 + 144) = 0;
  v13[0] = a2;
  v13[1] = a3;
  v11 = sub_1AF23498C(v13, 0x3B20u, 0x10u, 2);
  bzero(v11, 0x3B20uLL);
  *(a1 + 144) = v11;
  return a1;
}

uint64_t sub_1AF23B3CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 144);
  if (v2)
  {
    sub_1AF234C8C(v2, &v4);
  }

  return a1;
}

void sub_1AF23B424(int8x16_t *a1, const char *a2, uint64_t a3)
{
  v4 = sub_1AF130770(a1[1].i64[0], a2, a3);
  prof_beginFlameSmallData("init", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/Culling.mm", 56, v4 | 0x300000000);
  v5 = a1[9].i64[0];
  v6 = a1[1].i64[0];
  v7 = a1[2].i64[0];
  v8 = a1[2].i64[1];
  v10 = sub_1AF12DDCC(v6, v9);
  sub_1AF1243E4(v5, v6, v7, v8, v10);
  v12 = a1[7].i64[1];
  v13 = (v12 >> 3) & 1;
  if (a1[3].i64[0])
  {
    LOBYTE(v13) = 1;
  }

  v14 = a1[9].i64[0];
  *(v14 + 14652) |= v13;
  *(v14 + 14595) = a1[7].i8[0];
  *(v14 + 14648) = (v12 & 4) != 0;
  if ((v12 & 4) != 0)
  {
    v15 = 6;
  }

  else
  {
    v15 = a1[8].i8[4];
  }

  *(v14 + 14592) = v15;
  *(v14 + 14594) = a1[8].i32[0];
  *(v14 + 14655) = BYTE1(v12) & 1;
  *(v14 + 14656) = (v12 & 0x40) != 0;
  *(v14 + 14657) = a1[7].i8[1];
  *(v14 + 14649) = (v12 & 2) != 0;
  *(v14 + 14653) = (v12 & 0x80) != 0;
  if (a1[5].i8[0] == 1)
  {
    v21 = a1[4];
    v16 = sub_1AF125C8C(v14, 0);
    v17 = v21;
    *v18.i8 = vceqz_f32(*&vextq_s8(v17, v17, 8uLL));
    v18.i64[1] = v18.i64[0];
    v17.n128_u64[1] = vbslq_s8(vcltzq_s32(vshlq_n_s32(v18, 0x1FuLL)), *&v16, v21).u64[1];
    sub_1AF124608(a1[9].i64[0], 0, v17);
    v12 = a1[7].i64[1];
    v14 = a1[9].i64[0];
  }

  *(v14 + 14650) = v12 & 1;
  *(v14 + 14651) = (v12 & 0x200) != 0;
  *(v14 + 14664) = a1[6].i64[0];
  v19 = sub_1AF124D80(*(v14 + 14632), v11);
  v20 = a1[9].i64[0];
  *(v20 + 14664) &= v19;
  *(v20 + 14672) = a1[6].i64[1];

  prof_endFlame();
}

uint64_t sub_1AF23B614(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF12DDCC(*(a1 + 16), a2);
  v5 = sub_1AF1D00F8(v3, v4);
  v6 = *(a1 + 144);
  v7 = *(v6 + 14592);
  v8 = *(v6 + 14704);
  v9 = *(v6 + 14712);

  return sub_1AF139198(v5, v6, v8, v9, v7, (v6 + 3072), (v6 + 7168));
}

void sub_1AF23B678(uint64_t *a1, const char *a2, uint64_t a3)
{
  v6 = sub_1AF130770(a1[2], a2, a3);
  prof_beginFlameSmallData("cull", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/Culling.mm", 124, v6 | 0x300000000);
  sub_1AF23B784(a1, a2, a3);
  v8 = a1[6];
  if (v8)
  {
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = *(v8 + 24);
      v11 = &v10[v9];
      do
      {
        v12 = 0;
        v13 = *v10;
        while (v12 < sub_1AF12464C(a1[18], v7))
        {
          if ((*(a1[18] + 15128))())
          {
            sub_1AF1246F4(a1[18], v12, v13);
          }

          ++v12;
        }

        ++v10;
      }

      while (v10 != v11);
    }
  }

  else
  {
    sub_1AF126C60(a1[18]);
  }

  prof_endFlame();
}

uint64_t sub_1AF23B784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF12DDCC(*(a1 + 16), a2);
  v8 = sub_1AF1D00B0(v6, v7);
  v10 = sub_1AF13341C(v8, v9);
  v12 = sub_1AF147440(v10, v11);
  result = sub_1AF12464C(*(a1 + 144), v13);
  if (result)
  {
    v15 = 0;
    v16 = 14876;
    do
    {
      v21[0] = a2;
      v21[1] = a3;
      v17 = sub_1AF23498C(v21, 4 * v12, 2u, 1);
      v18 = *(a1 + 144);
      v19 = &v18[v16];
      *(v19 - 3) = v17;
      *(v19 - 1) = 0;
      *v19 = v12;
      ++v15;
      result = sub_1AF12464C(v18, v20);
      v16 += 16;
    }

    while (v15 < result);
  }

  return result;
}

CFX::RG::Pass *sub_1AF23B83C(CFX::RG::Pass *this, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A568, memory_order_acquire) & 1) == 0)
  {
    v17 = a5;
    sub_1AFDEE7D4();
    a5 = v17;
  }

  if (byte_1ED73A560)
  {
    v9 = 0x11A993FC41E72446;
  }

  else
  {
    v9 = 0;
  }

  CFX::RG::Pass::Pass(this, a2, a3, a5, 1, v9, 0);
  *this = &unk_1F24E93D8;
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[3];
  *(this + 29) = a4[2];
  *(this + 30) = v12;
  *(this + 27) = v10;
  *(this + 28) = v11;
  v13 = a4[4];
  v14 = a4[5];
  v15 = a4[7];
  *(this + 33) = a4[6];
  *(this + 34) = v15;
  *(this + 31) = v13;
  *(this + 32) = v14;
  sub_1AF23B34C(this + 560, a2, a3, *a4, a4 + 1);
  return this;
}

__n128 sub_1AF23B948(int8x16_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1AF23B424(a1 + 35, a2, a3);
  sub_1AF23B5E0(a1[35].i64);
  sub_1AF23B5F4(a1[35].i64, v5, v6, v7, v8, v9, v10);
  sub_1AF23B60C(a1[35].i64, v11);
  if (a1[27].i8[8] == 1)
  {
    sub_1AF23B614(a1[35].i64, v12);
  }

  if ((atomic_load_explicit(byte_1ED73A568, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE7D4();
  }

  if (byte_1ED73A560)
  {
    v13 = 0x11A993FC41E72446;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1AF23B410(a1[35].i64);
  v15 = sub_1AF23BA44(*(a2 + 32), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) ^ ((0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v14)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v14)))) >> 47)));
  a1[45].i64[0] = v15;
  v16 = sub_1AF170BF8(a1[35].i64);
  result = *(v15 + 48);
  v18 = *(v15 + 64);
  v19 = *(v15 + 32);
  *(v16 + 11264) = *(v15 + 16);
  *(v16 + 11312) = v18;
  *(v16 + 11296) = result;
  *(v16 + 11280) = v19;
  return result;
}

uint64_t sub_1AF23BA44(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF23BAE0(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = sub_1AF130770(*(a1 + 432), a2, a3);
  prof_beginFlameSmallData("Perform culling", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/RenderGraphV2/Passes/CullingPass.mm", 38, v5 | 0x300000000);
  sub_1AF23B678((a1 + 560), *a2, *(a2 + 1));
  if (*(a1 + 440) == 1)
  {
    v6 = sub_1AF170BF8(a1 + 560);
    v7 = *(a2 + 4);
    v9 = sub_1AF23B228(v6, v8);
    sub_1AF23BB88(v7, v9)[2] = v6;
  }

  prof_endFlame();
}

void *sub_1AF23BB88(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

__n128 sub_1AF23BC10(int8x16_t *a1, const char *a2, uint64_t a3)
{
  switch(a3)
  {
    case 3:
      v5 = sub_1AF170BF8(a1[35].i64);
      sub_1AF126FA4(v5, v6);
      v7 = sub_1AF170BF8(a1[35].i64);
      v8 = a1[45].i64[0];
      result = *(v7 + 11312);
      v9 = *(v7 + 11296);
      v10 = *(v7 + 11280);
      *(v8 + 16) = *(v7 + 11264);
      *(v8 + 32) = v10;
      *(v8 + 48) = v9;
      *(v8 + 64) = result;
      break;
    case 1:

      sub_1AF23BAE0(a1, a2, a3);
      break;
    case 0:

      result.n128_u64[0] = sub_1AF23B948(a1, a2, a3).n128_u64[0];
      break;
  }

  return result;
}

uint64_t sub_1AF23BCDC(uint64_t *a1, __int128 *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23BE28(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23BD34(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24E93D8;
  sub_1AF23B3CC(a1 + 560);

  CFX::RG::Pass::~Pass(a1);
}

void sub_1AF23BD8C(CFX::RG::Pass *a1)
{
  *a1 = &unk_1F24E93D8;
  sub_1AF23B3CC(a1 + 560);
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

CFX::RG::Pass *sub_1AF23BE28(uint64_t a1, uint64_t a2, uint64_t *a3, __int128 *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E0u, 0x10u, 2);
  return sub_1AF23B83C(v8, *a3, a3[1], a4, *a5);
}

uint64_t *sub_1AF23BE88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, char a6@<W4>)
{
  v12 = malloc_type_malloc(0xE0uLL, 0xBBD05BDCuLL);
  *&v13 = -1;
  *(&v13 + 1) = -1;
  *v12 = v13;
  v12[1] = v13;
  v12[2] = v13;
  v12[3] = v13;
  v12[4] = v13;
  v12[5] = v13;
  v12[6] = v13;
  v12[7] = v13;
  v12[8] = v13;
  v12[9] = v13;
  v12[10] = v13;
  v12[11] = v13;
  v12[12] = v13;
  v12[13] = v13;
  v15 = CFX::RG::Resource::Resource(v12, a3, a4, a5, 2, a6);
  result = sub_1AF235000((a1 + 144), &v15);
  *a2 = v15;
  return result;
}

uint64_t *sub_1AF23BF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v11 = a2;
  v10 = a4;
  LOBYTE(v9) = 2;
  sub_1AF23BFA0(&v11, a3, &v9, &v10);
  v9 = v7;
  result = sub_1AF235000((a1 + 144), &v9);
  *a5 = v9;
  return result;
}

double sub_1AF23BFA0(uint64_t *a1, uint64_t a2, char *a3, char *a4)
{
  v8 = malloc_type_malloc(0xE0uLL, 0xBBD05BDCuLL);
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *v8 = v9;
  v8[1] = v9;
  v8[2] = v9;
  v8[3] = v9;
  v8[4] = v9;
  v8[5] = v9;
  v8[6] = v9;
  v8[7] = v9;
  v8[8] = v9;
  v8[9] = v9;
  v8[10] = v9;
  v8[11] = v9;
  v8[12] = v9;
  v8[13] = v9;
  v10 = *a1;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(v12, a2);
  *&result = CFX::RG::Resource::Resource(v8, v10, v12, *a3, *a4).n128_u64[0];
  return result;
}

uint64_t sub_1AF23C040(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, __n128 *a5)
{
  if ((atomic_load_explicit(byte_1ED73A578, memory_order_acquire) & 1) == 0)
  {
    v17 = a3;
    v16 = a2;
    sub_1AFDEE820();
    a2 = v16;
    a3 = v17;
  }

  sub_1AF239F88(a1, a2, a3, a5, qword_1ED73A570, 0);
  *a1 = &unk_1F24E9450;
  memcpy((a1 + 448), &a5[1], 0x148uLL);
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  v8 = sub_1AF130888(*(a1 + 432));
  v9 = v8 * 0.5 / sub_1AF130864(*(a1 + 432));
  *(a1 + 440) = v9;
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat(&v18, (a1 + 456), 115);
  CFX::RG::TextureDescriptorReference::applyingSizeFactor(&v20, &v18, *(a1 + 440));
  v11 = sub_1AF233CC8(v10, "DOF_DOWNSAMPLE_COLOR_COC", &v20);
  *(a1 + 800) = v11;
  v12 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, v11);
  LODWORD(v10) = *v12;
  v13 = *(v12 + 4);
  v18 = *(v12 + 12);
  v19 = *(v12 + 5);
  v14 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v21 = v13 & 0xFFFFFFFF00000000 | vcvtpd_s64_f64(v13 * 0.0625) | (vcvtpd_s64_f64((v13 >> 16) * 0.0625) << 16);
  v22 = v18;
  v20 = v10;
  v23 = v19;
  *(a1 + 808) = sub_1AF2373FC(v14, "DOF_MAX_COC", &v20);
  CFX::RG::Pass::writeTo(a1, *(a1 + 800));
  CFX::RG::Pass::writeTo(a1, *(a1 + 808));
  return a1;
}

void sub_1AF23C240(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 448);
  if (v3)
  {
    v5 = sub_1AF1BB260(v3, a2);
    if (v5)
    {
      v7 = v5;
      v8 = sub_1AF15C2CC(v5, v6);
      v35 = sub_1AF160B24(v8, v9);
      LODWORD(v7) = sub_1AF15D5F0(v7, v10);
      v34 = v7;
      v11 = CFX::RG::Pass::hash(a1);
      v12 = *(a1 + 440);
      v13 = 0x9DDFEA08EB382D69 * (v11 ^ ((0x9DDFEA08EB382D69 * (v11 ^ COERCE_UNSIGNED_INT64(v12))) >> 47) ^ (0x9DDFEA08EB382D69 * (v11 ^ COERCE_UNSIGNED_INT64(v12))));
      v14 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47))) ^ v12)));
      v15 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v35)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v14 >> 47))) ^ v35)));
      v16 = 0x9DDFEA08EB382D69 * (v15 ^ (v15 >> 47));
      v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v16 ^ ((0x9DDFEA08EB382D69 * (v16 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v16 ^ v7)))) >> 47));
      v18 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v17);
      *(a1 + 776) = v18;
      if (!v18)
      {
        *(a1 + 776) = sub_1AF23C42C(*(a2 + 32), v17);
        v20 = sub_1AF12E2AC(*(a1 + 432), v19);
        v23 = objc_msgSend_resourceManager(v20, v21, v22);
        v24 = objc_alloc_init(MEMORY[0x1E6974060]);
        v33 = (1.0 / *(a1 + 440));
        objc_msgSend_setConstantValue_type_withName_(v24, v25, &v33, 29, @"DownsampleRate");
        v32 = 32;
        objc_msgSend_setConstantValue_type_withName_(v24, v26, &v32, 29, @"MaxRadius");
        objc_msgSend_setConstantValue_type_withName_(v24, v27, &v35, 49, @"Mode");
        objc_msgSend_setConstantValue_type_withName_(v24, v28, &v34, 53, @"IsOrthographic");
        v29 = *(a1 + 776);
        v31 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v23, v30, @"dof_downsample_color_coc", v24);
        sub_1AF23355C((v29 + 16), v31);
      }
    }
  }
}

void *sub_1AF23C42C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

const __CFDictionary *sub_1AF23C4B4(void *a1, uint64_t a2, id *this)
{
  v6 = CFX::RG::ComputePassArguments::encoder(this);
  result = a1[56];
  if (result)
  {
    result = sub_1AF1BB260(result, v5);
    if (result)
    {
      v9 = result;
      v10 = sub_1AF15C2CC(result, v8);
      v11 = *(a2 + 24);
      v12 = a1[98];
      v13 = CFX::RG::Temporal::currentFrame(v10);
      Texture = CFX::GPUResourceManager::getTexture(v11, v12, v13);
      v15 = *(a2 + 24);
      v16 = a1[99];
      v17 = CFX::RG::Temporal::currentFrame(Texture);
      v18 = CFX::GPUResourceManager::getTexture(v15, v16, v17);
      v19 = *(a2 + 24);
      v20 = a1[100];
      v21 = CFX::RG::Temporal::currentFrame(v18);
      v22 = CFX::GPUResourceManager::getTexture(v19, v20, v21);
      v23 = *(a2 + 24);
      v24 = a1[101];
      v25 = CFX::RG::Temporal::currentFrame(v22);
      v26 = CFX::GPUResourceManager::getTexture(v23, v24, v25);
      objc_msgSend_setTexture_atIndex_(v6, v27, Texture, 0);
      objc_msgSend_setTexture_atIndex_(v6, v28, v18, 1);
      objc_msgSend_setTexture_atIndex_(v6, v29, v22, 2);
      objc_msgSend_setTexture_atIndex_(v6, v30, v26, 3);
      v67 = xmmword_1AFE20670;
      v60 = objc_msgSend_width(v22, v31, v32);
      v35 = objc_msgSend_height(v22, v33, v34);
      *&v36 = v60;
      *(&v36 + 1) = v35;
      sub_1AF15E280(v9, v37, v36);
      v66 = v38;
      DWORD1(v68) = sub_1AF160DBC(v10, v39);
      v40 = *(&v68 + 1) + -0.0001;
      v43 = sub_1AF160D20(v10, v41);
      if (v40 < v43)
      {
        v43 = v40;
      }

      v44 = v68;
      *&v44 = v43;
      v61 = v44;
      v45 = sub_1AF160E58(v10, v42);
      v46 = v61;
      *(&v46 + 2) = v45;
      v62 = v46;
      v48 = sub_1AF15D9E8(v9, v47);
      v49 = v62;
      *(&v49 + 3) = v48;
      v68 = v49;
      objc_msgSend_setBytes_length_atIndex_(v6, v50, &v66, 48, 0);
      v52 = sub_1AF1403B4(a1[97] + 16, v51);
      v53 = sub_1AFDE323C(v52);
      objc_msgSend_setComputePipelineState_(v6, v54, v53);
      v65[0] = objc_msgSend_width(v22, v55, v56);
      v65[1] = objc_msgSend_height(v22, v57, v58);
      v65[2] = 1;
      v63 = xmmword_1AFE42F68;
      v64 = 1;
      return objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v6, v59, v65, &v63);
    }
  }

  return result;
}

uint64_t sub_1AF23C708(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A588, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v21 = a3;
    sub_1AFDEE87C();
    a2 = v20;
    a3 = v21;
  }

  sub_1AF239F88(a1, a2, a3, a5, qword_1ED73A580, 0);
  *a1 = &unk_1F24E94A8;
  v8 = *(a5 + 16);
  v9 = *(a5 + 48);
  *(a1 + 464) = *(a5 + 32);
  *(a1 + 480) = v9;
  *(a1 + 448) = v8;
  v10 = *(a5 + 64);
  v11 = *(a5 + 80);
  v12 = *(a5 + 112);
  *(a1 + 528) = *(a5 + 96);
  *(a1 + 544) = v12;
  *(a1 + 496) = v10;
  *(a1 + 512) = v11;
  v13 = *(a5 + 128);
  v14 = *(a5 + 144);
  v15 = *(a5 + 160);
  *(a1 + 608) = *(a5 + 176);
  *(a1 + 576) = v14;
  *(a1 + 592) = v15;
  *(a1 + 560) = v13;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  v16 = sub_1AF130888(*(a1 + 432));
  v17 = v16 * 0.5 / sub_1AF130864(*(a1 + 432));
  *(a1 + 440) = v17;
  CFX::RG::TextureDescriptorReference::withPixelFormat(v22, (a1 + 448), 115);
  CFX::RG::TextureDescriptorReference::applyingSizeFactor(v23, v22, *(a1 + 440));
  v18 = sub_1AF233CC8(a4, "DOF_GATHER", v23);
  *(a1 + 640) = v18;
  CFX::RG::Pass::writeTo(a1, v18);
  return a1;
}

void sub_1AF23C870(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF160A74(*(a1 + 76), a2);
  v5 = CFX::RG::Pass::hash(a1);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v5 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v4)))) >> 47));
  v7 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v6);
  *(a1 + 77) = v7;
  if (!v7)
  {
    *(a1 + 77) = sub_1AF23C9AC(*(a2 + 32), v6);
    v9 = sub_1AF12E2AC(*(a1 + 54), v8);
    v12 = objc_msgSend_resourceManager(v9, v10, v11);
    v13 = objc_alloc_init(MEMORY[0x1E6974060]);
    v15 = v13;
    v20 = 1056964608;
    if (v4)
    {
      if (v4 == 1)
      {
        v16 = 1058642330;
      }

      else
      {
        if (v4 != 2)
        {
LABEL_9:
          objc_msgSend_setConstantValue_type_withName_(v13, v14, &v20, 3, @"RadiusScale");
          v17 = *(a1 + 77);
          v19 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v12, v18, @"dof_gather", v15);
          sub_1AF23355C((v17 + 16), v19);

          return;
        }

        v16 = 1053609165;
      }
    }

    else
    {
      v16 = 1061997773;
    }

    v20 = v16;
    goto LABEL_9;
  }
}

void *sub_1AF23C9AC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF23CA34(void *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = a1[78];
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = a1[79];
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  v14 = *(a2 + 24);
  v15 = a1[80];
  v16 = CFX::RG::Temporal::currentFrame(v13);
  v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
  objc_msgSend_setTexture_atIndex_(v5, v18, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v19, v13, 1);
  objc_msgSend_setTexture_atIndex_(v5, v20, v17, 2);
  v22 = sub_1AF1403B4(a1[77] + 16, v21);
  v24 = sub_1AFDE323C(v22);

  return objc_msgSend_dispatch_onTexture2D_(v5, v23, v24, v17);
}

CFX::RG::Temporal *sub_1AF23CB30(CFX::RG::RenderGraphContext *this, uint64_t a2, CFX::RG::Resource *a3, CFX::RG::Resource *a4)
{
  if (!*(a2 + 32))
  {
    v8 = sub_1AF0D5194(this, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEE8D8(v8);
    }
  }

  v9 = CFX::RG::RenderGraphContext::currentBuilder(this);
  v10 = CFX::RG::Resource::constTextureDesc(*(a2 + 8));
  v11 = v10[1];
  v88[0] = *v10;
  v88[1] = v11;
  v12 = v10[5];
  v14 = v10[2];
  v13 = v10[3];
  v88[4] = v10[4];
  v88[5] = v12;
  v88[2] = v14;
  v88[3] = v13;
  v15 = v10[9];
  v17 = v10[6];
  v16 = v10[7];
  v88[8] = v10[8];
  v88[9] = v15;
  v88[6] = v17;
  v88[7] = v16;
  CFX::RG::TextureDescriptorReference::withSampleCount(&v78, v88, 1);
  v18 = CFX::RG::Resource::constTextureDesc(*(a2 + 16));
  v19 = v18[1];
  v77[0] = *v18;
  v77[1] = v19;
  v20 = v18[5];
  v22 = v18[2];
  v21 = v18[3];
  v77[4] = v18[4];
  v77[5] = v20;
  v77[2] = v22;
  v77[3] = v21;
  v23 = v18[9];
  v25 = v18[6];
  v24 = v18[7];
  v77[8] = v18[8];
  v77[9] = v23;
  v77[6] = v25;
  v77[7] = v24;
  CFX::RG::TextureDescriptorReference::withSampleCount(v76, v77, 1);
  v62 = v84;
  v63 = v85;
  v64 = v86;
  v65 = v87;
  v58 = v80;
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v56 = v78;
  v57 = v79;
  v73 = v76[7];
  v74 = v76[8];
  v75 = v76[9];
  v71 = v76[5];
  v72 = v76[6];
  v68 = v76[2];
  v69 = v76[3];
  v70 = v76[4];
  v66 = v76[0];
  v26 = *a2;
  v54.n128_u64[0] = "DOF downsample color CoC";
  v54.n128_u64[1] = v26;
  v55 = *(a2 + 24);
  v67 = v76[1];
  v27 = sub_1AF23CDEC(v9, this, &v54);
  v29 = CFX::RG::copyIfNeeded(v9, *(a2 + 8), a3, &v78, 0, v28);
  *(v27 + 98) = v29;
  v30 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(v27, v29, v30);
  if (a3)
  {
    CFX::RG::Pass::dependsOn(v27, a3);
  }

  v32 = CFX::RG::copyIfNeeded(v9, *(a2 + 16), a4, v76, 0, v31);
  *(v27 + 99) = v32;
  v33 = CFX::RG::Temporal::currentFrame(v32);
  CFX::RG::Pass::readFrom(v27, v32, v33);
  if (a4)
  {
    CFX::RG::Pass::dependsOn(v27, a4);
  }

  v34 = *a2;
  v42[0] = "DOF Gather";
  v42[1] = v34;
  v49 = v84;
  v50 = v85;
  v51 = v86;
  v52 = v87;
  v45 = v80;
  v46 = v81;
  v47 = v82;
  v48 = v83;
  v43 = v78;
  v44 = v79;
  v53 = *(a2 + 32);
  v35 = sub_1AF23CE44(v9, v9, v42);
  v36 = *(v27 + 100);
  *(v35 + 78) = v36;
  v37 = CFX::RG::Temporal::currentFrame(v35);
  CFX::RG::Pass::readFrom(v35, v36, v37);
  v38 = *(v27 + 101);
  *(v35 + 79) = v38;
  v40 = CFX::RG::Temporal::currentFrame(v39);
  CFX::RG::Pass::readFrom(v35, v38, v40);
  return v35;
}

uint64_t sub_1AF23CDEC(uint64_t *a1, CFX::RG::RenderGraphContext *a2, __n128 *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23D074(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF23CE44(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23D0D4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23CEA0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF23CEDC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23CF14(uint64_t a1)
{
  *a1 = &unk_1F24E9500;

  return a1;
}

void sub_1AF23CF5C(uint64_t a1)
{
  *a1 = &unk_1F24E9500;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23CFC4(uint64_t a1)
{
  *a1 = &unk_1F24E9520;

  return a1;
}

void sub_1AF23D00C(uint64_t a1)
{
  *a1 = &unk_1F24E9520;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23D074(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, __n128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x330u, 8u, 2);
  return sub_1AF23C040(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF23D0D4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x288u, 8u, 2);
  return sub_1AF23C708(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF23D134(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A598, memory_order_acquire) & 1) == 0)
  {
    v19 = a2;
    v20 = a3;
    sub_1AFDEE95C();
    a2 = v19;
    a3 = v20;
  }

  if (byte_1ED73A590)
  {
    v8 = 0x783DB8AC31EF5870;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v8, 0);
  *a1 = &unk_1F24E9540;
  v9 = *(a5 + 16);
  v10 = *(a5 + 48);
  *(a1 + 456) = *(a5 + 32);
  *(a1 + 472) = v10;
  *(a1 + 440) = v9;
  v11 = *(a5 + 64);
  v12 = *(a5 + 80);
  v13 = *(a5 + 112);
  *(a1 + 520) = *(a5 + 96);
  *(a1 + 536) = v13;
  *(a1 + 488) = v11;
  *(a1 + 504) = v12;
  v14 = *(a5 + 128);
  v15 = *(a5 + 144);
  v16 = *(a5 + 160);
  *(a1 + 600) = *(a5 + 176);
  *(a1 + 568) = v15;
  *(a1 + 584) = v16;
  *(a1 + 552) = v14;
  *(a1 + 616) = 0u;
  CFX::RG::TextureDescriptorReference::withSizeFactor(v22, (a5 + 24), 0.5);
  v21[6] = v22[6];
  v21[7] = v22[7];
  v21[8] = v22[8];
  v21[9] = v22[9];
  v21[2] = v22[2];
  v21[3] = v22[3];
  v21[4] = v22[4];
  v21[5] = v22[5];
  v21[0] = v22[0];
  v21[1] = v22[1];
  v17 = sub_1AF233CC8(a4, "DOUGHNUT_BOKEH_OUTPUT", v21);
  *(a1 + 624) = v17;
  CFX::RG::Pass::writeTo(a1, v17);
  return a1;
}

void sub_1AF23D294(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = sub_1AF1BB260(*(a1 + 55), a2);
  v6 = sub_1AF15CD74(v4, v5);
  v8 = sub_1AF163B3C(v6, v7);
  v22 = v8;
  v9 = CFX::RG::Pass::hash(a1);
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v8)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (v9 ^ v8)) >> 47) ^ (0x9DDFEA08EB382D69 * (v9 ^ v8)))) >> 47));
  v11 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v10);
  *(a1 + 76) = v11;
  if (!v11)
  {
    *(a1 + 76) = sub_1AF23D398(*(a2 + 32), v10);
    v13 = sub_1AF12E2AC(*(a1 + 54), v12);
    v16 = objc_msgSend_resourceManager(v13, v14, v15);
    v17 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_withName_(v17, v18, &v22, 53, @"mask_enabled");
    v19 = *(a1 + 76);
    v21 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v16, v20, @"doughnut_bokeh", v17);
    sub_1AF23355C((v19 + 16), v21);
  }
}

void *sub_1AF23D398(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF23D420(uint64_t *a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v7 = sub_1AF1BB260(a1[55], v6);
  v9 = sub_1AF15CD74(v7, v8);
  v11 = v9;
  if (v9)
  {
    v12 = sub_1AF160FEC(v9, v10);
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v12 / 1000.0;
  v32 = v13;
  v33 = sub_1AF163AA0(v11, v10);
  v34 = sub_1AF160E58(v11, v14);
  v15 = *(a2 + 24);
  v16 = a1[77];
  v18 = CFX::RG::Temporal::currentFrame(v17);
  Texture = CFX::GPUResourceManager::getTexture(v15, v16, v18);
  v20 = *(a2 + 24);
  v21 = a1[78];
  v22 = CFX::RG::Temporal::currentFrame(Texture);
  v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
  objc_msgSend_setBytes_length_atIndex_(v5, v24, &v32, 24, 0);
  objc_msgSend_setTexture_atIndex_(v5, v25, Texture, 0);
  objc_msgSend_setTexture_atIndex_(v5, v26, v23, 1);
  v28 = sub_1AF1403B4(a1[76] + 16, v27);
  v29 = sub_1AFDE323C(v28);
  return objc_msgSend_dispatch_onTexture2D_(v5, v30, v29, v23);
}

CFX::RG::Temporal *sub_1AF23D550(CFX::RG *a1, uint64_t **a2, CFX::RG::Resource **a3, CFX::RG::Resource *a4)
{
  v8 = CFX::RG::Resource::constTextureDesc(a3[22]);
  v9 = v8[1];
  v29[0] = *v8;
  v29[1] = v9;
  v10 = v8[5];
  v12 = v8[2];
  v11 = v8[3];
  v29[4] = v8[4];
  v29[5] = v10;
  v29[2] = v12;
  v29[3] = v11;
  v13 = v8[9];
  v15 = v8[6];
  v14 = v8[7];
  v29[8] = v8[8];
  v29[9] = v13;
  v29[6] = v15;
  v29[7] = v14;
  CFX::RG::TextureDescriptorReference::withSampleCount(v28, v29, 1);
  v17 = CFX::RG::copyIfNeeded(a1, a3[22], a4, v28, 0, v16);
  v18 = CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, v17);
  v19 = v18[2];
  v26 = *v18;
  v27 = v19;
  v23 = "DoughnutBokehPass";
  v24 = *a3;
  CFX::RG::TextureDescriptorReference::TextureDescriptorReference(&v25, &v26);
  v20 = sub_1AF23D664(a1, a1, &v23);
  *(v20 + 77) = v17;
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(v20, v17, v21);
  return v20;
}

uint64_t sub_1AF23D664(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23D7A8(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23D6C0(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23D6F8(uint64_t a1)
{
  *a1 = &unk_1F24E9598;

  return a1;
}

void sub_1AF23D740(uint64_t a1)
{
  *a1 = &unk_1F24E9598;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23D7A8(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x278u, 8u, 2);
  return sub_1AF23D134(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF23D808(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4, uint64_t a5)
{
  if ((atomic_load_explicit(byte_1ED73A5A8, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE9A8();
  }

  if (byte_1ED73A5A0)
  {
    v10 = 0xDFD87824203AD5B5;
  }

  else
  {
    v10 = 0;
  }

  sub_1AF250390(a1, a2, a3, a4, v10, a5);
  *a1 = &unk_1F24E95B8;
  *(a1 + 456) = 0;
  v12 = sub_1AF12F10C(*(a1 + 432), v11);
  v14 = sub_1AF1BB260(v12, v13);
  if (v14)
  {
    if (sub_1AF15CEC0(v14, v15))
    {
      v16 = 2560;
    }

    else
    {
      v16 = 512;
    }
  }

  else
  {
    v16 = 512;
  }

  v18 = a4[2].n128_i64[0];
  v17 = a4[2].n128_i64[1];
  *(a1 + 448) = a4[7].n128_u64[0];
  v19 = *(a1 + 432);
  v26 = 0;
  v27 = v16;
  v28 = *(a1 + 441);
  v29 = 50;
  v30 = 0;
  if ((atomic_load_explicit(byte_1ED73A5A8, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEE9A8();
  }

  if (byte_1ED73A5A0)
  {
    v20 = 0xDFD87824203AD5B5;
  }

  else
  {
    v20 = 0;
  }

  v31 = v20;
  v32 = -1;
  v33[0] = a2;
  v33[1] = a3;
  v21 = sub_1AF23498C(v33, 0x48u, 8u, 2);
  sub_1AF2603E8(v21, v19, &v26, *(a1 + 448));
  *(a1 + 456) = v22;
  if (v18)
  {
    CFX::RG::Pass::renderTo(a1, v18, 0x100000002, 0);
  }

  if (v17)
  {
    CFX::RG::Pass::renderTo(a1, v17, 0x200000002, -1);
  }

  CFX::RG::Pass::renderTo(a1, a4[3].n128_i64[0], 0x100000002, 3);
  CFX::RG::Pass::renderTo(a1, a4[3].n128_i64[1], 0x100000002, 1);
  CFX::RG::Pass::renderTo(a1, a4[4].n128_i64[0], 0x100000002, 2);
  CFX::RG::Pass::renderTo(a1, a4[4].n128_i64[1], 0x100000002, 0);
  CFX::RG::Pass::renderTo(a1, a4[5].n128_i64[0], 0x100000002, 4);
  CFX::RG::Pass::renderTo(a1, a4[5].n128_i64[1], 0x100000002, 5);
  CFX::RG::Pass::renderTo(a1, a4[6].n128_i64[0], 0x100000002, 6);
  CFX::RG::Pass::renderTo(a1, a4[6].n128_i64[1], 0x100000002, 7);
  for (i = 0; i != 256; i += 32)
  {
    v24 = ((*(*a1 + 32))(a1) + i);
    *v24 = 0u;
    v24[1] = 0u;
  }

  sub_1AF130538(*(a1 + 432), a4[5].n128_u64[0] != 0);
  return a1;
}

double sub_1AF23DAF0(uint64_t *a1, const char *a2, uint64_t a3)
{
  sub_1AF260410(a1[57], a2, a3);
  v4 = (*(*a1 + 32))(a1);
  v6 = sub_1AF12F10C(a1[54], v5);
  if (v6)
  {
    v9 = sub_1AF1BB260(v6, v7);
    if (v9)
    {
      v11 = sub_1AF15D6DC(v9, v10);
      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      result = v11;
      *(v4 + 32) = 0;
      *(v4 + 56) = result;
    }
  }

  return result;
}

uint64_t sub_1AF23DB6C(void *a1, const char *a2, CFX::RG::RenderPassArguments *a3)
{
  v6 = a1[54];
  v7 = sub_1AF23B41C(a1[56]);
  sub_1AF131034(v6, v7);
  sub_1AF260B04(a1[57], a2, a3, 0);
  v8 = a1[54];

  return sub_1AF131034(v8, 0);
}

uint64_t sub_1AF23DBE0(uint64_t *a1, __n128 *a2)
{
  v4 = sub_1AF12DDCC(a2->n128_i64[1], a2);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v4) ^ ((0x9DDFEA08EB382D69 * v4) >> 47));
  v7 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  return sub_1AF23DC4C(a1, a2, &v7);
}

uint64_t sub_1AF23DC4C(uint64_t *a1, __n128 *a2, uint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23DCE0(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23DCA8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23DCE0(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 *a4, uint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D0u, 8u, 2);
  return sub_1AF23D808(v8, *a3, a3[1], a4, *a5);
}

uint64_t sub_1AF23DD40(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v8 = *a5;
  v64[0].n128_u64[0] = "HybridCompositePass";
  v64[0].n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A5B8, memory_order_acquire) & 1) == 0)
  {
    v62 = a2;
    v63 = a3;
    sub_1AFDEE9F4();
    a2 = v62;
    a3 = v63;
  }

  if (byte_1ED73A5B0)
  {
    v9 = 0x2E8422031D6ACA49;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, v64, v9, 0);
  *a1 = &unk_1F24E9610;
  memcpy((a1 + 440), a5, 0x120uLL);
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  v10 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v64, (a1 + 448), 115);
  *(a1 + 736) = sub_1AF233CC8(v10, "HybridCompositeTmp", v64);
  v11 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v64, (a1 + 448), 115);
  *(a1 + 744) = sub_1AF233CC8(v11, "HybridCompositePassOutput", v64);
  v12 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  CFX::RG::TextureDescriptorReference::withPixelFormat(v64, (a1 + 448), 115);
  v13 = sub_1AF233CC8(v12, "HybridCompositePassOutput", v64);
  *(a1 + 752) = v13;
  v14 = *(a1 + 720);
  v15 = CFX::RG::Temporal::currentFrame(v13);
  CFX::RG::Pass::readFrom(a1, v14, v15);
  v16 = *(a1 + 608);
  v18 = CFX::RG::Temporal::currentFrame(v17);
  CFX::RG::Pass::readFrom(a1, v16, v18);
  v19 = *(a1 + 664);
  v21 = CFX::RG::Temporal::currentFrame(v20);
  CFX::RG::Pass::readFrom(a1, v19, v21);
  v22 = *(a1 + 672);
  v24 = CFX::RG::Temporal::currentFrame(v23);
  CFX::RG::Pass::readFrom(a1, v22, v24);
  v25 = *(a1 + 616);
  v27 = CFX::RG::Temporal::currentFrame(v26);
  CFX::RG::Pass::readFrom(a1, v25, v27);
  v28 = *(a1 + 624);
  v30 = CFX::RG::Temporal::currentFrame(v29);
  CFX::RG::Pass::readFrom(a1, v28, v30);
  v31 = *(a1 + 632);
  v33 = CFX::RG::Temporal::currentFrame(v32);
  CFX::RG::Pass::readFrom(a1, v31, v33);
  v34 = *(a1 + 640);
  v36 = CFX::RG::Temporal::currentFrame(v35);
  CFX::RG::Pass::readFrom(a1, v34, v36);
  v37 = *(a1 + 648);
  v39 = CFX::RG::Temporal::currentFrame(v38);
  CFX::RG::Pass::readFrom(a1, v37, v39);
  v40 = *(a1 + 656);
  v42 = CFX::RG::Temporal::currentFrame(v41);
  CFX::RG::Pass::readFrom(a1, v40, v42);
  v43 = *(a1 + 680);
  v45 = CFX::RG::Temporal::currentFrame(v44);
  CFX::RG::Pass::readFrom(a1, v43, v45);
  v46 = *(a1 + 696);
  v48 = CFX::RG::Temporal::currentFrame(v47);
  CFX::RG::Pass::readFrom(a1, v46, v48);
  v49 = *(a1 + 688);
  v51 = CFX::RG::Temporal::currentFrame(v50);
  CFX::RG::Pass::readFrom(a1, v49, v51);
  v52 = *(a1 + 712);
  v54 = CFX::RG::Temporal::currentFrame(v53);
  CFX::RG::Pass::readFrom(a1, v52, v54);
  v55 = *(a1 + 704);
  v57 = CFX::RG::Temporal::currentFrame(v56);
  CFX::RG::Pass::readFrom(a1, v55, v57);
  v58 = *(a1 + 736);
  v60 = CFX::RG::Temporal::currentFrame(v59);
  CFX::RG::Pass::readFrom(a1, v58, v60);
  CFX::RG::Pass::writeTo(a1, *(a1 + 736));
  CFX::RG::Pass::writeTo(a1, *(a1 + 752));
  CFX::RG::Pass::writeTo(a1, *(a1 + 744));
  return a1;
}

void sub_1AF23E06C(uint64_t a1, CFX::RG::RenderGraphContext *a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  v38 = objc_msgSend_resourceManager(v4, v5, v6);
  v8 = sub_1AF12DDCC(*(a1 + 432), v7);
  v9 = sub_1AF1D0008(v8, 0);
  v11 = objc_msgSend_textureForMaterialProperty_(v4, v10, v9, v38);
  v41 = v9;
  sub_1AF1660D8(v9, v12);
  v14 = *(a1 + 624);
  if (v14)
  {
    LODWORD(v14) = *(a1 + 632) != 0;
  }

  v40 = v14;
  v15 = *(a1 + 640);
  v16 = *(a1 + 648);
  v17 = *(a1 + 656);
  v18 = *(a1 + 696);
  v19 = *(a1 + 712);
  v20 = sub_1AF1D0398(v8, v13);
  v22 = sub_1AF1D02FC(v8, v21);
  v23 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 672)) + 4) << 48;
  v42 = 0;
  if (v15)
  {
    v39 = v23 != *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 640)) + 4) << 48;
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v39 = 0;
  if (v16)
  {
LABEL_5:
    HIBYTE(v42) = v23 != *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 648)) + 4) << 48;
  }

LABEL_6:
  if (v17)
  {
    LOBYTE(v42) = v23 != *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 656)) + 4) << 48;
  }

  v24 = CFX::RG::Pass::hash(a1);
  v25 = 0x9DDFEA08EB382D69 * (v24 ^ ((0x9DDFEA08EB382D69 * (v24 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v24 ^ v41)));
  v26 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ (v11 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v25 ^ (v25 >> 47))) ^ (v11 != 0))));
  v27 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ v40)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47))) ^ v40)));
  v28 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ (v15 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v27 ^ (v27 >> 47))) ^ (v15 != 0))));
  v29 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ (v16 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v28 ^ (v28 >> 47))) ^ (v16 != 0))));
  v30 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ (v17 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v29 ^ (v29 >> 47))) ^ (v17 != 0))));
  v31 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ (v18 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v30 ^ (v30 >> 47))) ^ (v18 != 0))));
  v32 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ (v19 != 0))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v31 ^ (v31 >> 47))) ^ (v19 != 0))));
  v33 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ (v20 != v22))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v32 ^ (v32 >> 47))) ^ (v20 != v22))));
  v34 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ v39)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47))) ^ v39)));
  v35 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ HIBYTE(v42))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v34 ^ (v34 >> 47))) ^ HIBYTE(v42))));
  v36 = 0x9DDFEA08EB382D69 * (v35 ^ (v35 >> 47));
  v37 = CFX::CrossFrameResourceManager::get(*(a2 + 4), 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v36 ^ ((0x9DDFEA08EB382D69 * (v36 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v36 ^ v42)))) ^ ((0x9DDFEA08EB382D69 * (v36 ^ ((0x9DDFEA08EB382D69 * (v36 ^ v42)) >> 47) ^ (0x9DDFEA08EB382D69 * (v36 ^ v42)))) >> 47)));
  *(a1 + 728) = v37;
  if (!v37)
  {
    operator new();
  }
}

void *sub_1AF23E5E4(uint64_t *a1, uint64_t a2, id *this)
{
  v151 = *MEMORY[0x1E69E9840];
  result = CFX::RG::ComputePassArguments::encoder(this);
  if (*(a1[91] + 16))
  {
    v7 = result;
    v8 = sub_1AF12E2AC(a1[54], v6);
    v136 = sub_1AF12DDCC(a1[54], v9);
    v10 = *(a2 + 24);
    v11 = a1[76];
    v12 = CFX::RG::Temporal::currentFrame(v136);
    Texture = CFX::GPUResourceManager::getTexture(v10, v11, v12);
    v14 = *(a2 + 24);
    v15 = a1[84];
    v16 = CFX::RG::Temporal::currentFrame(Texture);
    v17 = CFX::GPUResourceManager::getTexture(v14, v15, v16);
    v18 = *(a2 + 24);
    v19 = a1[77];
    v20 = CFX::RG::Temporal::currentFrame(v17);
    v21 = CFX::GPUResourceManager::getTexture(v18, v19, v20);
    v22 = *(a2 + 24);
    v23 = a1[83];
    v24 = CFX::RG::Temporal::currentFrame(v21);
    v25 = CFX::GPUResourceManager::getTexture(v22, v23, v24);
    v26 = *(a2 + 24);
    v27 = a1[90];
    v28 = CFX::RG::Temporal::currentFrame(v25);
    v29 = CFX::GPUResourceManager::getTexture(v26, v27, v28);
    v32 = objc_msgSend_resourceManager(v8, v30, v31);
    v34 = objc_msgSend_specularDFGDiffuseHammonTextureWithRenderContext_(v32, v33, v8);
    objc_msgSend_setTexture_atIndex_(v7, v35, Texture, 0);
    objc_msgSend_setTexture_atIndex_(v7, v36, v21, 1);
    objc_msgSend_setTexture_atIndex_(v7, v37, v17, 2);
    objc_msgSend_setTexture_atIndex_(v7, v38, v25, 3);
    objc_msgSend_setTexture_atIndex_(v7, v39, v29, 4);
    v41 = objc_msgSend_setTexture_atIndex_(v7, v40, v34, 5);
    v42 = a1[78];
    if (v42)
    {
      v43 = *(a2 + 24);
      v44 = CFX::RG::Temporal::currentFrame(v41);
      v45 = CFX::GPUResourceManager::getTexture(v43, v42, v44);
      v41 = objc_msgSend_setTexture_atIndex_(v7, v46, v45, 7);
    }

    v47 = a1[79];
    if (v47)
    {
      v48 = *(a2 + 24);
      v49 = CFX::RG::Temporal::currentFrame(v41);
      v50 = CFX::GPUResourceManager::getTexture(v48, v47, v49);
      v41 = objc_msgSend_setTexture_atIndex_(v7, v51, v50, 8);
    }

    v52 = a1[80];
    if (v52)
    {
      v53 = *(a2 + 24);
      v54 = CFX::RG::Temporal::currentFrame(v41);
      v55 = CFX::GPUResourceManager::getTexture(v53, v52, v54);
      v41 = objc_msgSend_setTexture_atIndex_(v7, v56, v55, 9);
    }

    v57 = a1[81];
    if (v57)
    {
      v58 = *(a2 + 24);
      v59 = CFX::RG::Temporal::currentFrame(v41);
      v60 = CFX::GPUResourceManager::getTexture(v58, v57, v59);
      v41 = objc_msgSend_setTexture_atIndex_(v7, v61, v60, 10);
    }

    v62 = a1[82];
    if (v62)
    {
      v63 = *(a2 + 24);
      v64 = CFX::RG::Temporal::currentFrame(v41);
      v65 = CFX::GPUResourceManager::getTexture(v63, v62, v64);
      v66 = *(a2 + 24);
      v67 = a1[85];
      v68 = CFX::RG::Temporal::currentFrame(v65);
      v69 = CFX::GPUResourceManager::getTexture(v66, v67, v68);
      objc_msgSend_setTexture_atIndex_(v7, v70, v69, 11);
      v41 = objc_msgSend_setTexture_atIndex_(v7, v71, v65, 12);
    }

    v72 = a1[87];
    if (v72)
    {
      v73 = *(a2 + 24);
      v74 = CFX::RG::Temporal::currentFrame(v41);
      v75 = CFX::GPUResourceManager::getTexture(v73, v72, v74);
      v76 = *(a2 + 24);
      v77 = a1[86];
      v78 = CFX::RG::Temporal::currentFrame(v75);
      v79 = CFX::GPUResourceManager::getTexture(v76, v77, v78);
      objc_msgSend_setTexture_atIndex_(v7, v80, v79, 13);
      v41 = objc_msgSend_setTexture_atIndex_(v7, v81, v75, 14);
    }

    v82 = a1[89];
    if (v82)
    {
      v83 = *(a2 + 24);
      v84 = CFX::RG::Temporal::currentFrame(v41);
      v85 = CFX::GPUResourceManager::getTexture(v83, v82, v84);
      v86 = *(a2 + 24);
      v87 = a1[88];
      v88 = CFX::RG::Temporal::currentFrame(v85);
      v89 = CFX::GPUResourceManager::getTexture(v86, v87, v88);
      objc_msgSend_setTexture_atIndex_(v7, v90, v89, 15);
      objc_msgSend_setTexture_atIndex_(v7, v91, v85, 16);
    }

    memset(v145, 0, sizeof(v145));
    v93 = sub_1AF1D0008(v136, 0);
    if (v93)
    {
      v94 = objc_msgSend_textureForMaterialProperty_(v8, v92, v93);
      if (v94)
      {
        objc_msgSend_setTexture_atIndex_(v7, v95, v94, 6);
      }

      else
      {
        v97 = sub_1AF1660D8(v93, v95);
        if (v97)
        {
          v147 = *v97;
        }
      }

      v98 = sub_1AF167220(v93, v96);
      if (v98)
      {
        v152 = __invert_f4(*v98);
      }

      else
      {
        v152 = **&MEMORY[0x1E69E9B18];
      }

      v145[1] = v152;
    }

    result = sub_1AF12F10C(a1[54], v92);
    if (result)
    {
      result = sub_1AF1BB260(result, v99);
      if (result)
      {
        v101 = result;
        v102 = sub_1AF12F10C(a1[54], v100);
        sub_1AF27F12C(v102, v138);
        v103 = sub_1AF13050C(a1[54], 1);
        v134 = v103[1];
        v135 = *v103;
        v132 = v103[3];
        v133 = v103[2];
        v137 = sub_1AF12FCE8(a1[54], 0);
        v153.columns[1] = v134;
        v153.columns[0] = v135;
        v139[0] = v135;
        v139[1] = v134;
        v153.columns[3] = v132;
        v153.columns[2] = v133;
        v139[2] = v133;
        v139[3] = v132;
        v140 = __invert_f4(v153);
        v104 = sub_1AF15E62C(v138, &v137);
        v105 = *(v104 + 1);
        v106 = *(v104 + 2);
        v107 = *(v104 + 3);
        v141 = *v104;
        v142 = v105;
        v143 = v106;
        v144 = v107;
        v109 = sub_1AF12EF08(a1[54], v108);
        sub_1AF1D04D4(v136, v110, v109);
        v148 = v111;
        v149 = *sub_1AF1D048C(v136, v112);
        v150 = sub_1AF15D6DC(v101, v113);
        if (v93)
        {
          v115 = sub_1AF166598(v93, v114);
        }

        else
        {
          v115 = 0.0;
        }

        v146 = v115;
        v116 = objc_msgSend_setBytes_length_atIndex_(v7, v114, v139, 400, 8, *&v132, *&v133, *&v134, *&v135);
        v117 = *(a2 + 24);
        v118 = a1[94];
        v119 = CFX::RG::Temporal::currentFrame(v116);
        v120 = CFX::GPUResourceManager::getTexture(v117, v118, v119);
        v122 = objc_msgSend_setTexture_atIndex_(v7, v121, v120, 17);
        v123 = *(a2 + 24);
        v124 = a1[93];
        v125 = CFX::RG::Temporal::currentFrame(v122);
        v126 = CFX::GPUResourceManager::getTexture(v123, v124, v125);
        objc_msgSend_setTexture_atIndex_(v7, v127, v126, 18);
        v129 = sub_1AF1403B4(a1[91] + 16, v128);
        v130 = sub_1AFDE323C(v129);
        return objc_msgSend_dispatch_onTexture2D_(v7, v131, v130, v126);
      }
    }
  }

  return result;
}

uint64_t sub_1AF23EB8C(CFX::RG::RenderGraphContext *a1, unint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);

  return sub_1AF23EBCC(v4, a1, a2);
}

uint64_t sub_1AF23EBCC(uint64_t *a1, CFX::RG::RenderGraphContext *a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF23ED20(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF23EC28(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23EC60(uint64_t a1)
{
  *a1 = &unk_1F24E9668;

  return a1;
}

void sub_1AF23ECB0(uint64_t a1)
{
  *a1 = &unk_1F24E9668;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF23ED20(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphContext *a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2F8u, 8u, 2);
  return sub_1AF23DD40(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF23ED80(uint64_t a1, uint64_t a2, uint64_t a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v8 = *a5;
  v32.n128_u64[0] = "IrradianceCachePass";
  v32.n128_u64[1] = v8;
  if ((atomic_load_explicit(byte_1ED73A5C8, memory_order_acquire) & 1) == 0)
  {
    v28 = a2;
    v29 = a3;
    sub_1AFDEEA40();
    a2 = v28;
    a3 = v29;
  }

  if (byte_1ED73A5C0)
  {
    v9 = 0x4C595C7672A6E999;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, &v32, v9, 0);
  *a1 = &unk_1F24E9688;
  memcpy((a1 + 440), a5, 0x108uLL);
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  sub_1AF23EFD8(a1, a4);
  a5[28] = sub_1AF1403B4(*(a1 + 712) + 16, v10);
  a5[29] = sub_1AF1403B4(*(a1 + 712) + 24, v11);
  *(a5 + 60) = *(a1 + 680);
  v12 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a4, a5[23]) + 4);
  *(a1 + 696) = *(a1 + 712) + 80;
  v32 = 0uLL;
  v33 = 0;
  if (((v12 + ((v12 >> 29) & 3)) << 16) >> 18 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = (v12 + ((v12 >> 29) & 3)) >> 2;
  }

  v14 = (((v12 >> 16) + (((v12 >> 16) >> 29) & 3)) << 16) >> 18;
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  CFXTextureDescriptorMake2D(v13, v15, 0x19u, &v32);
  v16 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v30 = v32;
  v31 = v33;
  *(a1 + 720) = sub_1AF2373FC(v16, "Irradiance_Cache_Reactive_Mask_Target", &v30);
  v17 = CFX::RG::RenderGraphContext::currentBuilder(a4);
  v30 = v32;
  v31 = v33;
  v18 = sub_1AF2373FC(v17, "Irradiance_Cache_Reactive_TMP_Mask_Target", &v30);
  *(a1 + 728) = v18;
  v19 = *(a1 + 608);
  v20 = CFX::RG::Temporal::currentFrame(v18);
  CFX::RG::Pass::readFrom(a1, v19, v20);
  v21 = *(a1 + 624);
  v23 = CFX::RG::Temporal::currentFrame(v22);
  CFX::RG::Pass::readFrom(a1, v21, v23);
  v24 = *(a1 + 728);
  v26 = CFX::RG::Temporal::currentFrame(v25);
  CFX::RG::Pass::readFrom(a1, v24, v26);
  CFX::RG::Pass::writeTo(a1, *(a1 + 720));
  CFX::RG::Pass::writeTo(a1, *(a1 + 728));
  if (*(a1 + 689) == 1)
  {
    CFX::RG::Pass::writeTo(a1, *(*(a1 + 712) + 64));
  }

  return a1;
}

void sub_1AF23EFD8(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  v7 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 624)) + 4);
  v8 = CFX::RG::Pass::hash(a1);
  v10 = sub_1AF12DDCC(*(a1 + 432), v9);
  v11 = 0x9DDFEA08EB382D69 * (v8 ^ ((0x9DDFEA08EB382D69 * (v8 ^ v10)) >> 47) ^ (0x9DDFEA08EB382D69 * (v8 ^ v10)));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v7)));
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ (v7 >> 16))) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v12 ^ (v12 >> 47))) ^ (v7 >> 16))));
  v14 = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
  v15 = 0x9DDFEA08EB382D69 * (v14 ^ *(a1 + 689));
  v16 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) ^ ((0x9DDFEA08EB382D69 * (v14 ^ (v15 >> 47) ^ v15)) >> 47));
  v17 = CFX::CrossFrameResourceManager::get(a2[4], v16);
  *(a1 + 712) = v17;
  if (!v17)
  {
    sub_1AF240058(a2[4], v16);
  }

  v19 = sub_1AF12F10C(*(a1 + 432), v18);
  if (v19)
  {
    if (sub_1AF1BB260(v19, v20))
    {
      v22 = sub_1AF12F10C(*(a1 + 432), v21);
      sub_1AF27F12C(v22, &v26);
      v23 = (v27 / 180.0) * 3.14159265;
      v24 = sub_1AF130888(*(a1 + 432));
      v25 = fmax((1.0 / (v7 >> 16)), (v7 >> 16) / (v7 * v7)) * (*(a1 + 684) * v23) / (v24 / sub_1AF130864(*(a1 + 432)));
      *(a1 + 680) = v25;
    }
  }
}

void sub_1AF23F330(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  sub_1AF23EFD8(a1, a2);

  sub_1AF23F370(a1, a2);
}

void sub_1AF23F370(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  objc_msgSend_resourceManager(v4, v5, v6);
  CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 624));
  v8 = sub_1AF12DDCC(*(a1 + 432), v7);
  v10 = sub_1AF1D0140(v8, v9);
  v11 = sub_1AF1D005C(v8, 0) != 0;
  v25 = v11;
  v24 = sub_1AF1449E0(v10);
  v12 = sub_1AF1449F0(v10) != 0;
  v23 = v12;
  v13 = CFX::RG::Pass::hash(a1);
  v15 = sub_1AF12DDCC(*(a1 + 432), v14);
  v16 = 0x9DDFEA08EB382D69 * (v13 ^ ((0x9DDFEA08EB382D69 * (v13 ^ v15)) >> 47) ^ (0x9DDFEA08EB382D69 * (v13 ^ v15)));
  v17 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ v24)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v16 ^ (v16 >> 47))) ^ v24)));
  v18 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ v12)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47))) ^ v12)));
  v19 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ v11)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47))) ^ v11)));
  v20 = 0x9DDFEA08EB382D69 * (v19 ^ (v19 >> 47));
  v21 = 0x9DDFEA08EB382D69 * (v20 ^ *(a1 + 688));
  v22 = CFX::CrossFrameResourceManager::get(a2[4], 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) ^ ((0x9DDFEA08EB382D69 * (v20 ^ (v21 >> 47) ^ v21)) >> 47)));
  *(a1 + 704) = v22;
  if (!v22)
  {
    operator new();
  }
}

void *sub_1AF23F734(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  result = sub_1AF12E2AC(*(a1 + 432), v6);
  v9 = result;
  if (!*(*(a1 + 696) + 592))
  {
    if (!*(*(a1 + 704) + 16))
    {
      return result;
    }

    objc_msgSend_setBuffer_offset_atIndex_(v5, v8, *(*(a1 + 712) + 16), 0, 0);
    v11 = sub_1AF1403B4(*(a1 + 704) + 16, v10);
    v12 = sub_1AFDE323C(v11);
    objc_msgSend_setComputePipelineState_(v5, v13, v12);
    result = objc_msgSend_dispatchOnGrid1D_(v5, v14, 30000);
  }

  if (*(*(a1 + 704) + 48))
  {
    objc_msgSend_setBuffer_offset_atIndex_(v5, v8, *(*(a1 + 712) + 48), 0, 0);
    v16 = sub_1AF1403B4(*(a1 + 704) + 24, v15);
    v17 = sub_1AFDE323C(v16);
    objc_msgSend_dispatchOne_(v5, v18, v17);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v19, *(*(a1 + 712) + 48), 0, 0);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v20, *(*(a1 + 712) + 40), 0, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v21, *(*(a1 + 712) + 16), 0, 10);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v22, *(*(a1 + 712) + 24), 0, 11);
    v24 = sub_1AF1403B4(*(a1 + 704) + 32, v23);
    v25 = sub_1AFDE323C(v24);
    objc_msgSend_setComputePipelineState_(v5, v26, v25);
    objc_msgSend_dispatchOnGrid1D_(v5, v27, 480000);
    v29 = sub_1AF1403B4(*(a1 + 704) + 48, v28);
    v30 = sub_1AFDE323C(v29);
    *v201 = objc_msgSend_threadExecutionWidth(v30, v31, v32);
    *&v201[8] = vdupq_n_s64(1uLL);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v33, *(*(a1 + 712) + 48), 0, 0);
    objc_msgSend_setBytes_length_atIndex_(v5, v34, v201, 24, 1);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v35, *(*(a1 + 712) + 56), 0, 2);
    v37 = sub_1AF1403B4(*(a1 + 704) + 40, v36);
    v38 = sub_1AFDE323C(v37);
    objc_msgSend_dispatchOne_(v5, v39, v38);
    v41 = sub_1AF12DDCC(*(a1 + 432), v40);
    result = sub_1AF12F10C(*(a1 + 432), v42);
    if (result)
    {
      result = sub_1AF1BB260(result, v43);
      if (result)
      {
        v45 = sub_1AF12F10C(*(a1 + 432), v44);
        sub_1AF27F12C(v45, v200);
        v46 = sub_1AF13050C(*(a1 + 432), 1);
        v196 = v46[1];
        v197 = *v46;
        v194 = v46[3];
        v195 = v46[2];
        v199 = sub_1AF12FCE8(*(a1 + 432), 0);
        v48 = sub_1AF1D0140(v41, v47);
        v49 = *(a2 + 24);
        v50 = *(a1 + 608);
        v51 = CFX::RG::Temporal::currentFrame(v48);
        Texture = CFX::GPUResourceManager::getTexture(v49, v50, v51);
        v52 = *(a2 + 24);
        v53 = *(a1 + 616);
        v54 = CFX::RG::Temporal::currentFrame(Texture);
        v193 = CFX::GPUResourceManager::getTexture(v52, v53, v54);
        v55 = *(a2 + 24);
        v56 = *(a1 + 624);
        v57 = CFX::RG::Temporal::currentFrame(v193);
        v58 = CFX::GPUResourceManager::getTexture(v55, v56, v57);
        v59 = *(a2 + 24);
        v60 = *(a1 + 632);
        v61 = CFX::RG::Temporal::currentFrame(v58);
        v62 = CFX::GPUResourceManager::getTexture(v59, v60, v61);
        v64 = v62;
        v65 = *(a1 + 640);
        if (v65)
        {
          v66 = *(a2 + 24);
          v67 = CFX::RG::Temporal::currentFrame(v62);
          v65 = CFX::GPUResourceManager::getTexture(v66, v65, v67);
        }

        objc_msgSend_setTexture_atIndex_(v5, v63, v64, 0);
        objc_msgSend_setTexture_atIndex_(v5, v68, v65, 1);
        objc_msgSend_setTexture_atIndex_(v5, v69, v58, 2);
        v71 = sub_1AF1D005C(v41, 0);
        if (v71)
        {
          v72 = objc_msgSend_textureForMaterialProperty_(v9, v70, v71);
          if (v72)
          {
            objc_msgSend_setTexture_atIndex_(v5, v73, v72, 6);
          }

          v74 = sub_1AF167220(v71, v73);
          v75 = MEMORY[0x1E69E9B18];
          if (v74)
          {
            v75 = v74;
          }

          v76 = *v75;
          v77 = v75[1];
          v78 = v75[2];
          v79 = v75[3];
          v80 = *(a1 + 696);
          v80[32] = v76;
          v80[33] = v77;
          v80[34] = v78;
          v80[35] = v79;
        }

        v81 = *(a1 + 696);
        v81[8] = v197;
        v81[9] = v196;
        v81[10] = v195;
        v81[11] = v194;
        v82 = sub_1AF15E62C(v200, &v199);
        v83 = 0;
        v84 = *(v82 + 1);
        v85 = *(v82 + 2);
        v86 = *(v82 + 3);
        v87 = *(a1 + 696);
        v87[16] = *v82;
        v87[17] = v84;
        v87[18] = v85;
        v87[19] = v86;
        v88 = *(a1 + 712);
        v89 = v88[21];
        v90 = v88[22];
        v91 = v88[23];
        v92 = v88[24];
        v93 = v88[14];
        v94 = v88[15];
        v95 = v88[16];
        v202[0] = v88[13];
        v202[1] = v93;
        v202[2] = v94;
        v202[3] = v95;
        do
        {
          *(&v203 + v83 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, COERCE_FLOAT(v202[v83])), v90, *&v202[v83], 1), v91, v202[v83], 2), v92, v202[v83], 3);
          ++v83;
        }

        while (v83 != 4);
        v96 = v204;
        v97 = v205;
        v98 = v206;
        v99 = *(a1 + 696);
        *v99 = v203;
        v99[1] = v96;
        v99[2] = v97;
        v99[3] = v98;
        *(*(a1 + 696) + 320) = __invert_f4(*(*(a1 + 712) + 336));
        *(*(a1 + 696) + 192) = __invert_f4(*(*(a1 + 712) + 208));
        *(*(a1 + 696) + 384) = __invert_f4(*(*(a1 + 712) + 80));
        if (v71)
        {
          v101 = sub_1AF166598(v71, v100);
        }

        else
        {
          v101 = 0.0;
        }

        v102 = *(a1 + 696);
        *(v102 + 584) = v101;
        *(v102 + 596) = *(a1 + 680);
        objc_msgSend_setBytes_length_atIndex_(v5, v100, *(a1 + 712) + 80, 608, 8);
        sub_1AF144838(v48, v5);
        v103 = sub_1AF1448D8(v48);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v104, v103, 0, 0);
        v105 = sub_1AF1448D0(v48);
        objc_msgSend_setAccelerationStructure_atBufferIndex_(v5, v106, v105, 1);
        if (sub_1AF1449E0(v48))
        {
          v107 = sub_1AF1448E0(v48);
          objc_msgSend_setBuffer_offset_atIndex_(v5, v108, v107, 0, 3);
        }

        if (sub_1AF1449F0(v48))
        {
          v110 = sub_1AF1403B4(*(a1 + 704) + 48, v109);
          v111 = sub_1AFDE323C(v110);
          v112 = sub_1AF144918(v48, v111);
          objc_msgSend_setIntersectionFunctionTable_atBufferIndex_(v5, v113, v112, 4);
        }

        v114 = sub_1AF1448E8(v48);
        v117 = sub_1AF144A00(v48, v115, v116);
        objc_msgSend_useResources_count_usage_(v5, v118, v114, v117, 1);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v119, *(*(a1 + 712) + 48), 0, 5);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v120, *(*(a1 + 712) + 40), 0, 6);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v121, *(*(a1 + 712) + 16), 0, 10);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v122, *(*(a1 + 712) + 24), 0, 11);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v123, *(*(a1 + 712) + 32), 0, 12);
        v125 = *(a1 + 704);
        if (*(*(a1 + 696) + 592))
        {
          v126 = v125 + 48;
        }

        else
        {
          v126 = v125 + 56;
        }

        v127 = sub_1AF1403B4(v126, v124);
        v128 = sub_1AFDE323C(v127);
        objc_msgSend_setComputePipelineState_(v5, v129, v128);
        v130 = *(*(a1 + 712) + 56);
        v203 = *v201;
        *&v204 = *&v201[16];
        v132 = objc_msgSend_dispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(v5, v131, v130, 0, &v203);
        v133 = *(a2 + 24);
        v134 = *(a1 + 720);
        v135 = CFX::RG::Temporal::currentFrame(v132);
        v136 = CFX::GPUResourceManager::getTexture(v133, v134, v135);
        v137 = *(a2 + 24);
        v138 = *(a1 + 720);
        v139 = CFX::RG::Temporal::currentFrame(v136);
        v140 = CFX::GPUResourceManager::getTexture(v137, v138, v139);
        objc_msgSend_setTexture_atIndex_(v5, v141, Texture, 0);
        objc_msgSend_setTexture_atIndex_(v5, v142, v58, 1);
        v143 = sub_1AF2757FC(v9, *(a2 + 32));
        objc_msgSend_setTexture_atIndex_(v5, v144, v143, 3);
        objc_msgSend_setTexture_atIndex_(v5, v145, v136, 10);
        objc_msgSend_setBuffer_offset_atIndex_(v5, v146, *(*(a1 + 712) + 48), 0, 12);
        v148 = sub_1AF1403B4(*(a1 + 704) + 72, v147);
        v149 = sub_1AFDE323C(v148);
        objc_msgSend_dispatch_onTexture2D_(v5, v150, v149, v136);
        objc_msgSend_setTexture_atIndex_(v5, v151, v136, 0);
        objc_msgSend_setTexture_atIndex_(v5, v152, v140, 1);
        *&v203 = COERCE_UNSIGNED_INT(1.0 / objc_msgSend_width(v136, v153, v154));
        objc_msgSend_setBytes_length_atIndex_(v5, v155, &v203, 8, 0);
        v157 = sub_1AF1403B4(*(a1 + 704) + 80, v156);
        v158 = sub_1AFDE323C(v157);
        objc_msgSend_dispatch_onTexture2D_(v5, v159, v158, v140);
        objc_msgSend_setTexture_atIndex_(v5, v160, v140, 0);
        objc_msgSend_setTexture_atIndex_(v5, v161, v136, 1);
        v164 = objc_msgSend_height(v136, v162, v163);
        LODWORD(v165) = 0;
        *(&v165 + 1) = 1.0 / v164;
        *&v203 = v165;
        objc_msgSend_setBytes_length_atIndex_(v5, v166, &v203, 8, 0);
        v168 = sub_1AF1403B4(*(a1 + 704) + 80, v167);
        v169 = sub_1AFDE323C(v168);
        result = objc_msgSend_dispatch_onTexture2D_(v5, v170, v169, v136);
        if (*(a1 + 689) == 1)
        {
          objc_msgSend_setTexture_atIndex_(v5, v171, Texture, 0);
          objc_msgSend_setTexture_atIndex_(v5, v172, v58, 1);
          objc_msgSend_setTexture_atIndex_(v5, v173, v193, 2);
          v174 = sub_1AF2757FC(v9, *(a2 + 32));
          v176 = objc_msgSend_setTexture_atIndex_(v5, v175, v174, 3);
          v177 = *(a2 + 24);
          v178 = *(*(a1 + 712) + 64);
          v179 = CFX::RG::Temporal::currentFrame(v176);
          v180 = CFX::GPUResourceManager::getTexture(v177, v178, v179);
          objc_msgSend_setTexture_atIndex_(v5, v181, v180, 10);
          objc_msgSend_setBuffer_offset_atIndex_(v5, v182, *(*(a1 + 712) + 48), 0, 12);
          v184 = sub_1AF1403B4(*(a1 + 704) + 64, v183);
          v185 = sub_1AFDE323C(v184);
          result = objc_msgSend_dispatch_onTexture2D_(v5, v186, v185, v180);
        }

        v187 = *(a1 + 696);
        v188 = v187[25];
        v187[28] = v187[24];
        v187[29] = v188;
        v189 = v187[27];
        v187[30] = v187[26];
        v187[31] = v189;
        v190 = *(a1 + 696);
        v191 = v190[3];
        v190[6] = v190[2];
        v190[7] = v191;
        v192 = v190[1];
        v190[4] = *v190;
        v190[5] = v192;
        ++*(*(a1 + 712) + 672);
      }
    }
  }

  return result;
}

uint64_t sub_1AF2400F8(CFX::RG::RenderGraphContext *a1, unint64_t *a2)
{
  v4 = CFX::RG::RenderGraphContext::currentBuilder(a1);
  result = sub_1AF24013C(v4, a1, a2);
  v6 = *(*(result + 712) + 64);
  a2[26] = *(result + 720);
  a2[27] = v6;
  return result;
}

uint64_t sub_1AF24013C(uint64_t *a1, CFX::CrossFrameResourceManager **a2, unint64_t *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF240410(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

void sub_1AF240198(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF2401D0(uint64_t a1)
{
  *a1 = &unk_1F24E96E0;

  return a1;
}

void sub_1AF240258(uint64_t a1)
{
  *a1 = &unk_1F24E96E0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF240300(uint64_t a1)
{
  *a1 = &unk_1F24E9700;
  sub_1AF235C34((a1 + 64), 0);

  return a1;
}

void sub_1AF240378(uint64_t a1)
{
  *a1 = &unk_1F24E9700;
  sub_1AF235C34((a1 + 64), 0);

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF240410(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::CrossFrameResourceManager **a4, unint64_t *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x2E0u, 8u, 2);
  return sub_1AF23ED80(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF240470(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v36 = *MEMORY[0x1E69E9840];
  *&v22 = a2;
  *(&v22 + 1) = a3;
  if ((atomic_load_explicit(byte_1ED73A5E0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEA8C();
  }

  sub_1AF250390(a1, a2, a3, a5, qword_1ED73A5D8, 0);
  *a1 = &unk_1F24E9720;
  v10 = *(a5 + 40);
  *(a1 + 464) = *(a5 + 24);
  *(a1 + 440) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = v10;
  *(CFX::RG::Pass::commonRenderParameters(v11) + 277) = 6;
  v20 = 0uLL;
  v21 = 0;
  CFXTextureDescriptorMakeCube(*(a1 + 464), *(a1 + 472), &v20);
  LOBYTE(v21) = 5;
  v24 = v20;
  v25 = v21;
  v12 = sub_1AF2373FC(a4, "IRRADIANCE_PROBE_CUBEMAP_COLOR_TARGET", &v24);
  *(a1 + 488) = v12;
  CFX::RG::Pass::renderTo(a1, v12, 0x100000002, 0);
  v18 = 0uLL;
  v19 = 0;
  CFXTextureDescriptorMakeCube(*(a1 + 464), 0xFCu, &v18);
  LOBYTE(v21) = 4;
  v24 = v18;
  v25 = v19;
  v13 = sub_1AF2373FC(a4, "IRRADIANCE_PROBE_CUBEMAP_DEPTH_TARGET", &v24);
  *(a1 + 496) = v13;
  CFX::RG::Pass::renderTo(a1, v13, 0x200000002, -1);
  *&v23 = *(a1 + 432);
  LOBYTE(v27) = 0;
  v29 = 0;
  v25 = 0;
  v24 = 0uLL;
  v30 = xmmword_1AFE42EB0;
  v31 = *(a1 + 440);
  v32 = 2;
  v33 = 4;
  v34 = 1;
  v35 = 1;
  *(a1 + 448) = sub_1AF2330E0(v22, *(&v22 + 1), &v22, &v23, &v24);
  *&v24 = 0;
  WORD4(v24) = 0;
  BYTE10(v24) = *(a1 + 441);
  v25 = 51;
  v26 = 0;
  if ((atomic_load_explicit(byte_1ED73A5E0, memory_order_acquire) & 1) == 0)
  {
    sub_1AFDEEAE8();
  }

  v27 = qword_1ED73A5D8;
  v28 = -1;
  v14 = *(a1 + 432);
  v23 = v22;
  v15 = sub_1AF23498C(&v23, 0x48u, 8u, 2);
  sub_1AF2603E8(v15, v14, &v24, *(a1 + 448));
  *(a1 + 456) = v16;
  return a1;
}

void sub_1AF240724(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 448);
  *(v5 + 32) = *(a1 + 480);
  v6 = *(a1 + 464);
  if ((*(v5 + 80) & 1) == 0)
  {
    *(v5 + 80) = 1;
  }

  *&v7 = 0;
  *(&v7 + 2) = v6;
  *(&v7 + 3) = v6;
  *(v5 + 64) = v7;
  sub_1AF23B424(*(a1 + 448), a2, a3);
  sub_1AF23B5E0(*(a1 + 448));
  sub_1AF23B5F4(*(a1 + 448), v8, v9, v10, v11, v12, v13);
  sub_1AF23B60C(*(a1 + 448), v14);
  v15 = *(a1 + 448);
  v16 = *a2;
  v17 = *(a2 + 1);

  sub_1AF23B678(v15, v16, v17);
}

void sub_1AF2407BC(uint64_t a1, const char *a2, CFX::RG::RenderPassArguments *this)
{
  v5 = *(a1 + 456);
  v6 = CFX::RG::RenderPassArguments::sliceIndex(this);
  v7 = v6 | (CFX::RG::RenderPassArguments::sliceIndex(this) << 8);

  sub_1AF260B04(v5, a2, this, v7);
}

CFX::RG::Pass *sub_1AF240828(CFX::RG::Pass *a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, __n128 *a5)
{
  if ((atomic_load_explicit(byte_1ED73A5E8, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    v15 = a3;
    sub_1AFDEEB30();
    a2 = v14;
    a3 = v15;
  }

  if (byte_1ED73A5D0)
  {
    v8 = 0x64936801F5A4BA5BLL;
  }

  else
  {
    v8 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v8, 0);
  *a1 = &unk_1F24E9778;
  v9 = a5[1].n128_u64[0];
  *(a1 + 57) = 0;
  *(a1 + 58) = 0;
  *(a1 + 56) = v9;
  RGBufferDescriptorMake();
  Buffer_0 = RGBuilderCreateBuffer_0(a4, "IRRADIANCE_SH", v10, v11);
  *(a1 + 58) = Buffer_0;
  CFX::RG::Pass::writeTo(a1, Buffer_0);
  return a1;
}

CFX::RG::Resource *RGBuilderCreateBuffer_0(CFX::RG::RenderGraphBuilder *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a3;
  v11[1] = a4;
  v10 = a2;
  v5 = *a1;
  v6 = *(a1 + 1);
  v9 = 1;
  v7 = sub_1AF241264(v5, v6, &v10, v11, &v9);
  CFX::RG::RenderGraphBuilder::appendResource(a1, v7);
  return v7;
}

void sub_1AF240990(uint64_t a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ *(a1 + 452));
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v6);
  *(a1 + 440) = v7;
  if (!v7)
  {
    *(a1 + 440) = sub_1AF240AD8(*(a2 + 32), v6);
    v9 = sub_1AF12E2AC(*(a1 + 432), v8);
    v13 = objc_msgSend_resourceManager(v9, v10, v11);
    v14 = *(a1 + 452) ? objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"compute_sh%d_from_cubemap_threadgroup_mem", *(a1 + 448)) : objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"compute_sh%d_from_cubemap", *(a1 + 448));
    v16 = *(a1 + 440);
    v17 = objc_msgSend_newComputePipelineStateWithFunctionName_(v13, v15, v14);
    sub_1AF23355C((v16 + 16), v17);
    if (*(a1 + 452) == 1)
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v18, @"sum_sh%d", *(a1 + 448));
      v20 = *(a1 + 440);
      v22 = objc_msgSend_newComputePipelineStateWithFunctionName_(v13, v21, v19);

      sub_1AF23355C((v20 + 24), v22);
    }
  }
}

void *sub_1AF240AD8(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF240B60(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = *(a1 + 464);
  v8 = CFX::RG::Temporal::currentFrame(v5);
  CFX::GPUResourceManager::getBuffer(v6, v7, v8);
  v10 = v9;
  v12 = v11;
  v13 = *(a2 + 24);
  v14 = *(a1 + 456);
  v15 = CFX::RG::Temporal::currentFrame(v9);
  Texture = CFX::GPUResourceManager::getTexture(v13, v14, v15);
  if (*(a1 + 452) == 1)
  {
    v18 = *(a1 + 448) * *(a1 + 448);
    v19 = sub_1AF239FE4(a1);
    BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v19, 72 * v18, 32);
    objc_msgSend_setBuffer_offset_atIndex_(v5, v21, BufferWithLength, 0, 1);
    v22 = (16 * *(a1 + 448) * *(a1 + 448));
    v24 = sub_1AF1403B4(*(a1 + 440) + 16, v23);
    v25 = sub_1AFDE323C(v24);
    v28 = objc_msgSend_threadExecutionWidth(v25, v26, v27);
    v30 = 0x7FFF / v22;
    if (v28 < v30)
    {
      v30 = v28;
    }

    if (v30 >= 0x40)
    {
      v31 = 64;
    }

    else
    {
      v31 = v30;
    }

    objc_msgSend_setThreadgroupMemoryLength_atIndex_(v5, v29, v31 * v22, 0);
    v33 = sub_1AF1403B4(*(a1 + 440) + 16, v32);
    v34 = sub_1AFDE323C(v33);
    objc_msgSend_setComputePipelineState_(v5, v35, v34);
    objc_msgSend_setTexture_atIndex_(v5, v36, Texture, 0);
    *v52 = 6;
    v50 = vdupq_n_s64(1uLL);
    *&v52[8] = v50;
    *v51 = v31;
    *&v51[8] = v50;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v37, v52, v51);
    v39 = sub_1AF1403B4(*(a1 + 440) + 24, v38);
    v40 = sub_1AFDE323C(v39);
    objc_msgSend_setComputePipelineState_(v5, v41, v40);
    objc_msgSend_setBufferSlice_atIndex_(v5, v42, v10, v12, 0);
    *v52 = v50;
    *&v52[16] = 1;
    *v51 = v50;
    *&v51[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v43, v52, v51);
  }

  else
  {
    objc_msgSend_setBufferSlice_atIndex_(v5, v16, v10, v12, 0);
    objc_msgSend_setTexture_atIndex_(v5, v44, Texture, 0);
    v46 = sub_1AF1403B4(*(a1 + 440) + 16, v45);
    v47 = sub_1AFDE323C(v46);
    objc_msgSend_setComputePipelineState_(v5, v48, v47);
    *v52 = xmmword_1AFE42F80;
    *&v52[16] = 1;
    *v51 = xmmword_1AFE42F80;
    *&v51[16] = 1;
    objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v5, v49, v52, v51);
  }
}

void *sub_1AF240DBC@<X0>(CFX::RG::RenderGraphBuilder *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a2 + 16);
  *a4 = v7;
  a4[1] = 0;
  a4[2] = (a4 + 3);
  result = sub_1AF2622A0(a1, v7, *a3);
  v9 = a3[1];
  if (*(v9 + 8))
  {
    v10 = result;
    v11 = 0;
    do
    {
      v12 = *(*(v9 + 16) + 8 * v11);
      v13 = *a3;
      v24[0] = "Irradiance probe render cubemap pass";
      v24[1] = v13;
      v25 = 0;
      v26 = 1024;
      v27 = 115;
      v28 = v12;
      v14 = sub_1AF2410F4(a1, a1, v24);
      v15 = v14;
      if (v10)
      {
        v16 = *(v10 + 488);
        v17 = CFX::RG::Temporal::currentFrame(v14);
        CFX::RG::Pass::readFrom(v15, v16, v17);
      }

      v18 = *a3;
      v22.n128_u64[0] = "Irradiance probe compute sh pass";
      v22.n128_u64[1] = v18;
      v23 = 0x100000000;
      LODWORD(v23) = *(a3 + 4);
      v19 = sub_1AF24114C(a1, a1, &v22);
      v20 = *(v15 + 488);
      *(v19 + 57) = v20;
      v21 = CFX::RG::Temporal::currentFrame(v19);
      CFX::RG::Pass::readFrom(v19, v20, v21);
      v24[0] = v19;
      result = sub_1AF240F04(a4, v24);
      ++v11;
      v9 = a3[1];
    }

    while (v11 < *(v9 + 8));
  }

  return result;
}

_DWORD *sub_1AF240F04(_DWORD *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = v4 + 1;
  v7 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v8 = ((v5 + 1) * 1.5);
    Aligned = CStackAllocatorAllocateAligned(*result, 8 * v8, 8, 2);
    result = memcpy(Aligned, v7, 8 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v8;
    v4 = v3[2];
    v6 = v4 + 1;
    v7 = Aligned;
  }

  *(v7 + v4) = *a2;
  v3[2] = v6;
  return result;
}

void sub_1AF240FAC(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void sub_1AF240FE8(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

unsigned __int8 *sub_1AF241020(unsigned __int8 *result, unsigned int a2)
{
  if (result)
  {
    v2 = 0;
    v3 = 0xC6A4A7935BD1E995 * a2;
    do
    {
      v4 = *&result[v2];
      v2 += 8;
      v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v3);
    }

    while (v2 != 32);
    v5 = a2 & 7;
    if (v5 <= 3)
    {
      if ((a2 & 7) <= 1)
      {
        if ((a2 & 7) == 0)
        {
          return ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
        }

        goto LABEL_20;
      }

      if (v5 == 2)
      {
LABEL_19:
        v3 ^= result[33] << 8;
LABEL_20:
        v3 = 0xC6A4A7935BD1E995 * (v3 ^ result[32]);
        return ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v3 ^ (v3 >> 47))) >> 47));
      }

LABEL_18:
      v3 ^= result[34] << 16;
      goto LABEL_19;
    }

    if ((a2 & 7) > 5)
    {
      if (v5 != 6)
      {
        v3 ^= result[38] << 48;
      }

      v3 ^= result[37] << 40;
    }

    else if (v5 == 4)
    {
      goto LABEL_17;
    }

    v3 ^= result[36] << 32;
LABEL_17:
    v3 ^= result[35] << 24;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1AF2410F4(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, uint64_t a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF2411A4(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF24114C(uint64_t *a1, CFX::RG::RenderGraphBuilder *a2, __n128 *a3)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[0] = sub_1AF241204(v7[0], v5, v7, a2, a3);
  sub_1AF235000(a1 + 22, v7);
  return v7[0];
}

uint64_t sub_1AF2411A4(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1F8u, 8u, 2);
  return sub_1AF240470(v8, *a3, a3[1], a4, a5);
}

CFX::RG::Pass *sub_1AF241204(uint64_t a1, uint64_t a2, uint64_t *a3, CFX::RG::RenderGraphBuilder *a4, __n128 *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0x1D8u, 8u, 2);
  return sub_1AF240828(v8, *a3, a3[1], a4, a5);
}

uint64_t sub_1AF241264(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, char *a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v8 = sub_1AF23498C(v10, 0xE0u, 8u, 2);
  return CFX::RG::Resource::Resource(v8, *a3, *a4, a4[1], *a5, 1);
}

uint64_t sub_1AF2412C8(uint64_t a1)
{
  *a1 = &unk_1F24E97D0;

  return a1;
}

void sub_1AF241318(uint64_t a1)
{
  *a1 = &unk_1F24E97D0;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF241388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFX::CrossFrameResourceManager *a5, uint64_t a6)
{
  if ((atomic_load_explicit(byte_1ED73A5F8, memory_order_acquire) & 1) == 0)
  {
    v34 = a2;
    sub_1AFDEEB7C();
    a2 = v34;
  }

  if (byte_1ED73A5F0)
  {
    v11 = 0x8C1DCF5E2BFD8933;
  }

  else
  {
    v11 = 0;
  }

  sub_1AF250390(a1, a2, a3, a6, v11, 0);
  *a1 = &unk_1F24E97F0;
  *(a1 + 448) = *(a6 + 24);
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  v12 = *(a6 + 24);
  v13 = CFX::RG::Resource::textureDesc(v12);
  if ((*(v13 + 80) & 1) == 0)
  {
    *(v13 + 80) = 1;
  }

  *(v13 + 72) = 1;
  v14 = *(a6 + 32);
  v15 = CFX::RG::Pass::hash(a1);
  v16 = CFX::CrossFrameResourceManager::get(a5, v15);
  *(a1 + 464) = v16;
  if (!v16)
  {
    v17 = CFX::RG::Pass::hash(a1);
    *(a1 + 464) = sub_1AF24168C(a5, v17);
    v19 = sub_1AF12E2AC(*(a1 + 432), v18);
    *(*(a1 + 464) + 32) = *(*(a1 + 464) + 32) & 0xFD | (objc_msgSend_features(v19, v20, v21) >> 10) & 2;
    CFX::RG::TextureDescriptorReference::finalColor(v35);
    CFX::RG::TextureDescriptorReference::withPixelFormat(v36, v35, 115);
    sub_1AF241720(a4, "pingPongTex", v36, 1, &v37);
    v22 = *(a1 + 464);
    v23 = v37;
    v37 = 0;
    sub_1AF235C34((v22 + 16), v23);
    v24 = v37;
    v37 = 0;
    if (v24)
    {
      CFX::RG::Resource::~Resource(v24);
      free(v25);
    }

    v16 = *(a1 + 464);
    if ((*(v16 + 32) & 2) == 0)
    {
      CFX::RG::TextureDescriptorReference::finalColor(v35);
      CFX::RG::TextureDescriptorReference::withPixelFormat(v36, v35, 115);
      sub_1AF241720(a4, "pingPongTex", v36, 1, &v37);
      v26 = *(a1 + 464);
      v27 = v37;
      v37 = 0;
      sub_1AF235C34((v26 + 24), v27);
      v28 = v37;
      v37 = 0;
      if (v28)
      {
        CFX::RG::Resource::~Resource(v28);
        free(v29);
      }

      v16 = *(a1 + 464);
    }
  }

  if ((*(v16 + 32) & 2) != 0)
  {
    *(v16 + 32) &= ~1u;
    if (sub_1AF1309D4(*(a1 + 432)))
    {
      v31 = 0x100000001;
    }

    else
    {
      v31 = 0x100000002;
    }

    v30 = CFX::RG::Pass::renderTo(a1, *(*(a1 + 464) + 8 * (*(*(a1 + 464) + 32) & 1) + 16), v31, 0);
  }

  else
  {
    *(*(a1 + 464) + 32) = (*(*(a1 + 464) + 32) & 0xFE | sub_1AF1309D4(*(a1 + 432)) & 1) ^ 1;
    v30 = CFX::RG::Pass::renderTo(a1, *(*(a1 + 464) + 8 * (*(*(a1 + 464) + 32) & 1) + 16), 0x100000000, 0);
  }

  v32 = CFX::RG::Temporal::currentFrame(v30);
  CFX::RG::Pass::readFrom(a1, v12, v32);
  if (sub_1AF1309E8(*(a1 + 432)))
  {
    CFX::RG::Pass::renderTo(a1, v14, 0x100000000, 1);
  }

  return a1;
}

uint64_t sub_1AF24168C(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_1AF241720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  v10 = malloc_type_malloc(0xE0uLL, 0xBBD05BDCuLL);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *v10 = v11;
  v10[1] = v11;
  v10[2] = v11;
  v10[3] = v11;
  v10[4] = v11;
  v10[5] = v11;
  v10[6] = v11;
  v10[7] = v11;
  v10[8] = v11;
  v10[9] = v11;
  v10[10] = v11;
  v10[11] = v11;
  v10[12] = v11;
  v10[13] = v11;
  v12 = a3[7];
  v19[6] = a3[6];
  v19[7] = v12;
  v13 = a3[9];
  v19[8] = a3[8];
  v19[9] = v13;
  v14 = a3[3];
  v19[2] = a3[2];
  v19[3] = v14;
  v15 = a3[5];
  v19[4] = a3[4];
  v19[5] = v15;
  v16 = a3[1];
  v19[0] = *a3;
  v19[1] = v16;
  CFX::RG::Resource::Resource(v10, a2, v19, 2, v5);
  *&v19[0] = v17;
  result = sub_1AF235000((a1 + 144), v19);
  *a5 = *&v19[0];
  return result;
}

uint64_t sub_1AF2417EC(uint64_t a1, CFX::CrossFrameResourceManager **a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  v5 = *(*(a1 + 464) + 32);
  v6 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 456)) + 6);
  v7 = CFX::RG::Pass::hash(a1);
  v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v7)))) >> 47));
  v9 = CFX::CrossFrameResourceManager::get(a2[4], v8);
  *(a1 + 472) = v9;
  if (!v9)
  {
    *(a1 + 472) = sub_1AF2419CC(a2[4], v8);
    v12 = objc_msgSend_resourceManager(v4, v10, v11);
    v13 = *(a1 + 472);
    v14 = sub_1AFDE868C(v12);
    *&v31 = objc_msgSend_frameworkLibrary(v14, v15, v16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    *(&v31 + 1) = 115;
    v18 = @"vfx_jittering_color_attachment";
    if ((v5 & 2) == 0)
    {
      v18 = @"vfx_jittering_texture";
    }

    *&v43 = @"vfx_draw_fullscreen_triangle_vertex";
    *(&v43 + 1) = v18;
    if ((v5 & 2) != 0)
    {
      v19 = @"vfx_jittering_color_attachment_drawable";
    }

    else
    {
      v19 = @"vfx_jittering_texture_drawable";
    }

    v20 = objc_msgSend_newRenderPipelineStateWithDesc_(v12, v17, v30);
    sub_1AF23355C((v13 + 24), v20);
    v21 = *(a1 + 472);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    memset(v30, 0, sizeof(v30));
    v22 = sub_1AFDE868C(v12);
    *&v31 = objc_msgSend_frameworkLibrary(v22, v23, v24);
    *(&v31 + 1) = 115;
    *&v32 = v6;
    *&v43 = @"vfx_draw_fullscreen_triangle_vertex";
    *(&v43 + 1) = v19;
    v26 = objc_msgSend_newRenderPipelineStateWithDesc_(v12, v25, v30);
    sub_1AF23355C((v21 + 16), v26);
  }

  v27 = a2[4];
  v28 = CFX::RG::Pass::hash(a1);
  return sub_1AF24168C(v27, v28);
}

void *sub_1AF2419CC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_1AF241A54(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1AF2505C4(a1, a2);
  v5 = a1[56];
  v6 = sub_1AF1309E8(a1[54]);
  v8 = 24;
  if (v6)
  {
    v8 = 16;
  }

  v9 = sub_1AF2338B0(a1[59] + v8, v7);
  v12 = objc_msgSend_state(v9, v10, v11);
  v14 = objc_msgSend_setRenderPipelineState_(*(v4 + 16), v13, v12);
  v15 = *(a2 + 24);
  v16 = CFX::RG::Temporal::currentFrame(v14);
  Texture = CFX::GPUResourceManager::getTexture(v15, v5, v16);
  v18 = sub_1AF1F8FCC(v4, Texture, 0);
  v19 = a1[58];
  if ((*(v19 + 32) & 2) == 0)
  {
    v20 = *(a2 + 24);
    v21 = *(v19 + 8 * ((*(v19 + 32) & 1) == 0) + 16);
    v22 = CFX::RG::Temporal::currentFrame(v18);
    v23 = CFX::GPUResourceManager::getTexture(v20, v21, v22);
    sub_1AF1F8FCC(v4, v23, 1);
  }

  v24 = sub_1AF1309D4(a1[54]);
  v26 = v24 + 1;
  if (v24 == -1)
  {
    v27 = sub_1AF0D5194(v24, v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEEBC8(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  *&v35 = v26 + -1.0;
  *(&v35 + 1) = 1.0 / v26;
  v38 = v35;
  sub_1AF1F905C(v4, &v38, 8uLL, 0);
  return sub_1AF2010C8(v4, v36);
}

uint64_t sub_1AF241BB4(uint64_t *a1, uint64_t a2, CFX::CrossFrameResourceManager *a3, uint64_t a4)
{
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[0] = sub_1AF241DE4(v9[0], v7, v9, a2, a3, a4);
  sub_1AF235000(a1 + 22, v9);
  return v9[0];
}

void sub_1AF241C14(CFX::RG::Pass *a1)
{
  CFX::RG::Pass::~Pass(a1);

  JUMPOUT(0x1B271C6B0);
}

void *sub_1AF241C4C(void *a1)
{
  *a1 = &unk_1F24E9848;
  for (i = 3; i != 1; --i)
  {
    sub_1AF235C34(&a1[i], 0);
  }

  return a1;
}

void sub_1AF241CA8(void *a1)
{
  *a1 = &unk_1F24E9848;
  for (i = 3; i != 1; --i)
  {
    sub_1AF235C34(&a1[i], 0);
  }

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF241D24(uint64_t a1)
{
  *a1 = &unk_1F24E9868;

  return a1;
}

void sub_1AF241D74(uint64_t a1)
{
  *a1 = &unk_1F24E9868;

  JUMPOUT(0x1B271C6B0);
}

uint64_t sub_1AF241DE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, CFX::CrossFrameResourceManager *a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1AF23498C(v12, 0x1E0u, 8u, 2);
  return sub_1AF241388(v10, *a3, a3[1], a4, a5, a6);
}

uint64_t sub_1AF241E4C(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v8 = (a1 + 444);
  if ((atomic_load_explicit(byte_1ED73A610, memory_order_acquire) & 1) == 0)
  {
    v19 = a2;
    v20 = a3;
    sub_1AFDEEC40();
    a2 = v19;
    a3 = v20;
  }

  if (byte_1ED73A600)
  {
    v9 = 0xF406179A13730E78;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v9, 0);
  *a1 = &unk_1F24E9888;
  v10 = *(a5 + 32);
  *(a1 + 440) = *(a5 + 16);
  *(a1 + 456) = v10;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v11 = *v8;
  LODWORD(v12) = (*v8 / *(a1 + 464));
  if (v12 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v12;
  }

  LODWORD(v13) = ((v11 >> 16) / *(a1 + 464));
  if (v13 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v13;
  }

  v14 = *(a1 + 460);
  v15 = v11 & 0xFFFFFFFF00000000 | v12 | (v13 << 16);
  v16 = v8[1] & 0xFFFFFF00FFFF0000;
  v21 = *(a1 + 440);
  v22 = v15;
  v23 = v16 | 0x300000073;
  v24 = v14;
  v17 = sub_1AF2373FC(a4, "LENS_BLUR_DOWNSAMPLE", &v21);
  *(a1 + 488) = v17;
  CFX::RG::Pass::writeTo(a1, v17);
  return a1;
}

void sub_1AF241FA8(CFX::RG::Pass *a1, uint64_t a2)
{
  v4 = CFX::RG::Pass::hash(a1);
  v5 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v4);
  *(a1 + 59) = v5;
  if (!v5)
  {
    *(a1 + 59) = sub_1AF2420AC(*(a2 + 32), v4);
    v7 = sub_1AF12E2AC(*(a1 + 54), v6);
    v10 = objc_msgSend_resourceManager(v7, v8, v9);
    v22 = 0;
    v11 = objc_alloc_init(MEMORY[0x1E6974060]);
    objc_msgSend_setConstantValue_type_atIndex_(v11, v12, &v22, 53, 20501);
    v13 = *(a1 + 59);
    v15 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v10, v14, @"compute_downsample2", v11);
    sub_1AF23355C((v13 + 16), v15);
    v16 = *(a1 + 59);
    v18 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v10, v17, @"compute_downsample4", v11);
    sub_1AF23355C((v16 + 24), v18);
    v19 = *(a1 + 59);
    v21 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v10, v20, @"compute_downsample8", v11);
    sub_1AF23355C((v19 + 32), v21);
  }
}

void *sub_1AF2420AC(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF242138(uint64_t a1, uint64_t a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v6 = *(a2 + 24);
  v7 = *(a1 + 480);
  v8 = CFX::RG::Temporal::currentFrame(v5);
  Texture = CFX::GPUResourceManager::getTexture(v6, v7, v8);
  v10 = *(a2 + 24);
  v11 = *(a1 + 488);
  v12 = CFX::RG::Temporal::currentFrame(Texture);
  v13 = CFX::GPUResourceManager::getTexture(v10, v11, v12);
  objc_msgSend_setTexture_atIndex_(v5, v14, Texture, 0);
  v16 = objc_msgSend_setTexture_atIndex_(v5, v15, v13, 1);
  v24 = 0;
  v18 = *(a1 + 464);
  switch(v18)
  {
    case 8:
      v19 = *(*(a1 + 472) + 32);
      if (v19)
      {
LABEL_9:
        v24 = v19;
      }

      break;
    case 4:
      v19 = *(*(a1 + 472) + 24);
      if (v19)
      {
        goto LABEL_9;
      }

      break;
    case 2:
      v19 = *(*(a1 + 472) + 16);
      if (v19)
      {
        goto LABEL_9;
      }

      break;
    default:
      v20 = sub_1AF0D5194(v16, v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDEEC8C(v20);
      }

      break;
  }

  v21 = sub_1AF1403B4(&v24, v17);
  v22 = sub_1AFDE323C(v21);
  objc_msgSend_dispatch_onTexture2D_(v5, v23, v22, v13);
}

uint64_t sub_1AF2422A4(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v8 = (a1 + 444);
  if ((atomic_load_explicit(byte_1ED73A618, memory_order_acquire) & 1) == 0)
  {
    v23 = a3;
    v24 = a2;
    sub_1AFDEECD0();
    a2 = v24;
    a3 = v23;
  }

  if (byte_1ED73A608)
  {
    v9 = 0x3B7BCF15DA1D0A80;
  }

  else
  {
    v9 = 0;
  }

  sub_1AF239F88(a1, a2, a3, a5, v9, 0);
  *a1 = &unk_1F24E98E0;
  v10 = *(a5 + 16);
  v11 = *(a5 + 32);
  *(a1 + 472) = *(a5 + 48);
  *(a1 + 440) = v10;
  *(a1 + 456) = v11;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0;
  v12 = *v8;
  v13 = v8[1];
  LODWORD(v14) = (*v8 / *(a1 + 464));
  if (v14 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  LODWORD(v15) = ((v12 >> 16) / *(a1 + 464));
  if (v15 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v15;
  }

  v17 = *(a1 + 460);
  v18 = v12 & 0xFFFF00000000 | v14 | (v15 << 16) | (*(a1 + 472) << 48);
  v25 = *(a1 + 440);
  v16 = v25;
  v26 = v18;
  v19 = v13 & 0xFFFFF000FFFF0000 | 0x30300000073;
  v27 = v19;
  v28 = v17;
  v20 = sub_1AF2373FC(a4, "LENS_BLUR_HORIZONTAL_REAL", &v25);
  *(a1 + 496) = v20;
  CFX::RG::Pass::writeTo(a1, v20);
  v25 = v16;
  v26 = v18;
  v27 = v19;
  v28 = v17;
  v21 = sub_1AF2373FC(a4, "LENS_BLUR_HORIZONTAL_IMAGINARY", &v25);
  *(a1 + 504) = v21;
  CFX::RG::Pass::writeTo(a1, v21);
  return a1;
}

uint64_t sub_1AF242458(float *a1, uint64_t a2)
{
  v4 = sub_1AF12E2AC(*(a1 + 54), a2);
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v5);
  *(a1 + 60) = v6;
  if (!v6)
  {
    *(a1 + 60) = sub_1AF242590(*(a2 + 32), v5);
    v9 = objc_msgSend_resourceManager(v4, v7, v8);
    if ([objc_msgSend_device(v4 v10])
    {
      v12 = @"compute_lens_blur_horizontal";
    }

    else
    {
      v12 = @"compute_lens_blur_horizontal_no_array_write";
    }

    v20 = 1;
    do
    {
      v13 = objc_alloc_init(MEMORY[0x1E6974060]);
      objc_msgSend_setConstantValue_type_atIndex_(v13, v14, &v20, 29, 20500);
      v15 = *(a1 + 60) + 8 * v20;
      v17 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v9, v16, v12, v13);
      sub_1AF23355C((v15 + 8), v17);

      v18 = v20++;
    }

    while (v18 < 3);
  }

  result = sub_1AF275E98(v4, *(a2 + 32), *(a1 + 472), 0, a1[117]);
  *(*(a1 + 60) + 40) = result;
  return result;
}

uint64_t sub_1AF242590(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_1AF242628(uint64_t a1, CFX::RG::RenderGraphContext *a2, id *this)
{
  v5 = CFX::RG::ComputePassArguments::encoder(this);
  v7 = sub_1AF12E2AC(*(a1 + 432), v6);
  v8 = *(a2 + 3);
  v9 = *(a1 + 488);
  v10 = CFX::RG::Temporal::currentFrame(v7);
  Texture = CFX::GPUResourceManager::getTexture(v8, v9, v10);
  v11 = *(a2 + 3);
  v12 = *(a1 + 496);
  v13 = CFX::RG::Temporal::currentFrame(Texture);
  v14 = CFX::GPUResourceManager::getTexture(v11, v12, v13);
  v15 = *(a2 + 3);
  v16 = *(a1 + 504);
  v17 = CFX::RG::Temporal::currentFrame(v14);
  v18 = CFX::GPUResourceManager::getTexture(v15, v16, v17);
  v19 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 496)) + 6);
  v20 = *(CFX::RG::RenderGraphContext::resolvedTextureDescriptor(a2, *(a1 + 504)) + 6);
  v42 = vcvtps_s32_f32(*(a1 + 468));
  if ([objc_msgSend_device(v7 v21])
  {
    objc_msgSend_setTexture_atIndex_(v5, v23, v14, 1);
    objc_msgSend_setTexture_atIndex_(v5, v24, v18, 2);
  }

  else if (*(a1 + 472) >= 1)
  {
    v25 = 4;
    do
    {
      v26 = objc_msgSend_newTextureViewWithPixelFormat_(v14, v23, v19);
      v28 = objc_msgSend_newTextureViewWithPixelFormat_(v18, v27, v20);
      v29 = v25 - 3;
      objc_msgSend_setTexture_atIndex_(v5, v30, v26, v25 - 3);
      objc_msgSend_setTexture_atIndex_(v5, v31, v28, v25++);
    }

    while (v29 < *(a1 + 472));
  }

  objc_msgSend_setTexture_atIndex_(v5, v23, Texture, 0);
  objc_msgSend_setBytes_length_atIndex_(v5, v32, v41, 40, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v5, v33, *(*(a1 + 480) + 40), 0, 1);
  v40 = *(*(a1 + 480) + 8 * *(a1 + 472) + 8);
  v34 = v40;
  v36 = sub_1AF1403B4(&v40, v35);
  v37 = sub_1AFDE323C(v36);
  objc_msgSend_dispatch_onTexture2D_(v5, v38, v37, Texture);
}

uint64_t sub_1AF242848(uint64_t a1, uint64_t a2, uint64_t a3, CFX::RG::RenderGraphBuilder *a4, uint64_t a5)
{
  v8 = (a1 + 444);
  if ((atomic_load_explicit(byte_1ED73A628, memory_order_acquire) & 1) == 0)
  {
    v19 = a2;
    v20 = a3;
    sub_1AFDEED1C();
    a2 = v19;
    a3 = v20;
  }

  sub_1AF239F88(a1, a2, a3, a5, qword_1ED73A620, 0);
  *a1 = &unk_1F24E9938;
  v9 = *(a5 + 16);
  v10 = *(a5 + 32);
  *(a1 + 472) = *(a5 + 48);
  *(a1 + 440) = v9;
  *(a1 + 456) = v10;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 488) = 0;
  v11 = *v8;
  LODWORD(v12) = (*v8 / *(a1 + 464));
  if (v12 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = v12;
  }

  LODWORD(v13) = ((v11 >> 16) / *(a1 + 464));
  if (v13 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v13;
  }

  v14 = *(a1 + 460);
  v15 = v11 & 0xFFFFFFFF00000000 | v12 | (v13 << 16);
  v16 = v8[1] & 0xFFFFFF00FFFF0000;
  v21 = *(a1 + 440);
  v22 = v15;
  v23 = v16 | 0x300000073;
  v24 = v14;
  v17 = sub_1AF2373FC(a4, "LENS_BLUR_OUTPUT", &v21);
  *(a1 + 504) = v17;
  CFX::RG::Pass::writeTo(a1, v17);
  return a1;
}

double sub_1AF242998(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = sub_1AF12E2AC(*(a1 + 432), a2);
  v5 = CFX::RG::Pass::hash(a1);
  v6 = CFX::CrossFrameResourceManager::get(*(a2 + 32), v5);
  *(a1 + 480) = v6;
  if (!v6)
  {
    *(a1 + 480) = sub_1AF242B24(*(a2 + 32), v5);
    v9 = objc_msgSend_resourceManager(v4, v7, v8);
    v19.i32[0] = 1;
    do
    {
      v10 = objc_alloc_init(MEMORY[0x1E6974060]);
      objc_msgSend_setConstantValue_type_atIndex_(v10, v11, &v19, 29, 20500);
      v12 = *(a1 + 480) + 8 * v19.i32[0];
      v14 = objc_msgSend_newComputePipelineStateWithFunctionName_constantValues_(v9, v13, @"compute_lens_blur_vertical", v10);
      sub_1AF23355C((v12 + 8), v14);

      v15 = v19.i32[0]++;
    }

    while (v15 < 3);
  }

  v16 = sub_1AF275E98(v4, *(a2 + 32), *(a1 + 472), &v19, *(a1 + 468));
  v17 = *(a1 + 480);
  *(v17 + 40) = v16;
  *&result = vextq_s8(v19, v19, 8uLL).u64[0];
  *(v17 + 48) = result;
  if (*(a1 + 472) >= 2)
  {
    *&result = vextq_s8(v20, v20, 8uLL).u64[0];
    *(*(a1 + 480) + 56) = result;
    if (*(a1 + 472) >= 3)
    {
      *&result = vextq_s8(v21, v21, 8uLL).u64[0];
      *(*(a1 + 480) + 64) = result;
    }
  }

  return result;
}

uint64_t sub_1AF242B24(CFX::CrossFrameResourceManager *a1, uint64_t a2)
{
  v2 = CFX::CrossFrameResourceManager::get(a1, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}