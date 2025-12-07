uint64_t sub_1AF197E50(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA218(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 117);
}

void sub_1AF197E98(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA218(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 117) = v2;
}

BOOL sub_1AF197EEC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA218(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 117) & 0xFC) == 4;
}

void sub_1AF197F40(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA218(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (sub_1AF197E50(a1, a2) != 2)
  {
    v11 = vcvtq_u64_f64(vcvtq_f64_f32(vrnda_f32(COERCE_FLOAT32X2_T(sub_1AF1965C4(a1, v10)))));
    if (v11.i64[1] * v11.i64[0])
    {
      if (!(v11.i64[0] % v11.i64[1]))
      {
        *(a1 + 117) = 2;
      }
    }
  }
}

void sub_1AF197FD0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA218(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!sub_1AF196D70(a1, a2))
  {
    v11 = sub_1AF1965C4(a1, v10);
    v12 = vcvtas_u32_f32(*&v11);
    v13 = vcvtas_u32_f32(*(&v11 + 1));
    if (*&v11 == v12 && *(&v11 + 1) == v13)
    {
      if (6 * v13 == v12)
      {
        v15 = 4;
      }

      else
      {
        if (6 * v12 != v13)
        {
          return;
        }

        v15 = 5;
      }

      *(a1 + 117) = v15;
    }
  }
}

void sub_1AF198078(unsigned int a1, uint64_t a2, uint64_t a3, size_t a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2;
  if (a1 == 5)
  {
    v11 = 0;
    v12 = a3 * a2;
    do
    {
      (*(a7 + 16))(a7, v11++, a6, a4, a5);
      a6 += v12;
    }

    while (v11 != 6);
    return;
  }

  v15 = a1;
  v16 = malloc_type_malloc(a4 * a2, 0x100004077774924uLL);
  v18 = v16;
  if (v15 <= 7 && ((1 << v15) & 0xD0) != 0)
  {
    v19 = 0;
    __src = (a6 + a5 * (v10 - 1 + v10) + a3 * (3 * v10 + v10 - 1));
    v34 = a3 * v10;
    v37 = a7;
    v39 = v10;
    v36 = v15;
    while (1)
    {
      v38 = v19;
      if (v15 == 4)
      {
        v21 = 0;
        v20 = v19;
      }

      else if (v15 == 7)
      {
        if (v19 > 2)
        {
          if (v19 == 3)
          {
            v20 = 1;
            v21 = 2;
          }

          else
          {
            if (v19 != 4)
            {
              if (a5)
              {
                if (v10)
                {
                  v25 = 0;
                  v26 = v18;
                  v27 = __src;
                  v35 = v18;
                  do
                  {
                    v28 = v26;
                    v29 = v39;
                    v30 = v27;
                    do
                    {
                      memcpy(v28, v30, a5);
                      v30 -= a5;
                      v28 += a5;
                      --v29;
                    }

                    while (v29);
                    ++v25;
                    v18 = v35;
                    v27 -= a3;
                    v26 += a4;
                  }

                  while (v25 != v39);
                }
              }

              else
              {
                v31 = sub_1AF0D5194(v16, v17);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDDA8C0(&buf, v41, v31);
                }
              }

              goto LABEL_19;
            }

            v20 = 1;
            v21 = 1;
          }
        }

        else
        {
          v20 = v19 != 1;
          v21 = v19 == 1;
          if (!v19)
          {
            v20 = 2;
            v21 = 1;
          }
        }
      }

      else
      {
        v20 = qword_1AFE21898[v19];
        v21 = qword_1AFE218C8[v19];
      }

      if (v10)
      {
        v22 = (a6 + v20 * a4 + v34 * v21);
        v23 = v18;
        v24 = v39;
        do
        {
          memcpy(v23, v22, a4);
          v23 += a4;
          v22 += a3;
          --v24;
        }

        while (v24);
      }

LABEL_19:
      v16 = (*(v37 + 16))(v37, v38, v18);
      v19 = v38 + 1;
      v10 = v39;
      v15 = v36;
      if (v38 == 5)
      {
        goto LABEL_36;
      }
    }
  }

  v32 = sub_1AF0D5194(v16, v17);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDA900();
  }

LABEL_36:
  free(v18);
}

void sub_1AF19834C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (a1 == 2)
  {
    v14 = malloc_type_malloc(a5 * a2, 0x100004077774924uLL);
    if (a3)
    {
      v15 = 0;
      v20 = a6 * a2;
      do
      {
        v16 = a7;
        v17 = v14;
        for (i = a2; i; --i)
        {
          memcpy(v17, v16, a5);
          v17 += a5;
          v16 += a4;
        }

        (*(a8 + 16))(a8, v15++, v14);
        a7 += v20;
      }

      while (v15 != a3);
    }

    free(v14);
  }

  else
  {
    v19 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDA93C();
    }
  }
}

const void *sub_1AF198494(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDD0208(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1C4990(a1, a2);
  return sub_1AF1C4A5C(v12, v4, 1, a3);
}

uint64_t sub_1AF1984F8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA218(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 116);
  if ((v10 & 0x20) == 0)
  {
    if (*(a1 + 96) == 5)
    {
      v11 = v10 | 0x10;
    }

    else
    {
      sub_1AF1965C4(a1, a2);
      v11 = *(a1 + 116);
    }

    v10 = v11 | 0x20;
    *(a1 + 116) = v10;
  }

  return (v10 >> 4) & 1;
}

uint64_t sub_1AF198570(uint64_t a1, _BYTE *a2)
{
  result = sub_1AF196128(a1);
  if (result)
  {
    v6 = result;
    v7 = sub_1AF196D70(a1, v5);
    v9 = sub_1AF197EEC(a1, v8);
    v10 = *(v6 + 24);
    if (v7 && !v9)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
      v12 = CFGetTypeID(ValueAtIndex);
      if (v12 != CFArrayGetTypeID())
      {
        result = CFArrayGetCount(*(v6 + 24)) / 6;
        if (!a2)
        {
          return result;
        }

LABEL_7:
        *a2 = 1;
        return result;
      }

      v10 = ValueAtIndex;
    }

    result = CFArrayGetCount(v10);
    if (!a2)
    {
      return result;
    }

    goto LABEL_7;
  }

  return result;
}

id sub_1AF198624(void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationImageWillDie", a1, 0, 1u);
  sub_1AF197D10(a1);
  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
    a1[11] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  return sub_1AF16C9A4(a1, v3);
}

CFStringRef sub_1AF1986A4(_DWORD *cf)
{
  v2 = cf[24] - 1;
  if (v2 > 3)
  {
    v3 = @"<%s %p | src:%p [%fx%f]>";
  }

  else
  {
    v3 = off_1E7A7B2D8[v2];
  }

  v4 = CFGetAllocator(cf);
  v5 = sub_1AF3753A8(cf);
  return CFStringCreateWithFormat(v4, 0, v3, v5, cf, *(cf + 11), COERCE_FLOAT(*(cf + 13)), COERCE_FLOAT(HIDWORD(*(cf + 13))));
}

__CFArray *sub_1AF198740(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 96);
  if (v3 == 1)
  {
    v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v7 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v4, @"name", @"url");
    CFDictionarySetValue(v4, @"type", v5);
    CFDictionarySetValue(v4, @"address", v7);
    CFDictionarySetValue(v4, @"semantic", v6);
    CFArrayAppendValue(Mutable, v4);
    CFRelease(v6);
    CFRelease(v4);
    CFRelease(v7);
    CFRelease(v5);
    v3 = *(a1 + 96);
  }

  if (v3 == 2)
  {
    v8 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v11 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v8, @"name", @"data");
    CFDictionarySetValue(v8, @"type", v9);
    CFDictionarySetValue(v8, @"address", v11);
    CFDictionarySetValue(v8, @"semantic", v10);
    CFArrayAppendValue(Mutable, v8);
    CFRelease(v10);
    CFRelease(v8);
    CFRelease(v11);
    CFRelease(v9);
    v3 = *(a1 + 96);
  }

  if (v3 == 3)
  {
    v12 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v15 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v12, @"name", @"cgImage");
    CFDictionarySetValue(v12, @"type", v13);
    CFDictionarySetValue(v12, @"address", v15);
    CFDictionarySetValue(v12, @"semantic", v14);
    CFArrayAppendValue(Mutable, v12);
    CFRelease(v14);
    CFRelease(v12);
    CFRelease(v15);
    CFRelease(v13);
    v3 = *(a1 + 96);
  }

  if (v3 == 4)
  {
    v16 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v41 = 2;
    valuePtr = 5;
    v40 = (a1 + 88);
    v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
    v19 = CFNumberCreate(0, kCFNumberLongType, &v40);
    CFDictionarySetValue(v16, @"name", @"clientImage");
    CFDictionarySetValue(v16, @"type", v17);
    CFDictionarySetValue(v16, @"address", v19);
    CFDictionarySetValue(v16, @"semantic", v18);
    CFArrayAppendValue(Mutable, v16);
    CFRelease(v18);
    CFRelease(v16);
    CFRelease(v19);
    CFRelease(v17);
  }

  v20 = MEMORY[0x1E695E9D8];
  v21 = MEMORY[0x1E695E9E8];
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v41 = 2;
  valuePtr = 5;
  v40 = (a1 + 64);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v22, @"name", @"bitmap");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v39 = *(a1 + 116) & 1;
  v26 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 3;
  v40 = &v39;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v26, @"name", @"hasAlpha");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  CFArrayAppendValue(Mutable, v26);
  CFRelease(v28);
  CFRelease(v26);
  CFRelease(v29);
  CFRelease(v27);
  v30 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 7;
  v40 = (a1 + 104);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v30, @"name", @"size");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(Mutable, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v20, v21);
  v41 = 0;
  valuePtr = 2;
  v40 = (a1 + 117);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v41);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v40);
  CFDictionarySetValue(v34, @"name", @"type");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(Mutable, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  return Mutable;
}

BOOL sub_1AF198F40(uint64_t a1, uint64_t a2)
{
  if (sub_1AF197458(a1, a2))
  {
    return 1;
  }

  v5 = sub_1AF195E38(a1, v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v4 = CFEqual(v5, @"ast") || CFEqual(v6, @"astc");
  CFRelease(v6);
  return v4;
}

uint64_t sub_1AF198FC4(int a1, int a2, int a3)
{
  if (a1 <= 7)
  {
    if (a1 != 4)
    {
      v3 = 205;
      if (a3)
      {
        v3 = 187;
      }

      v4 = 206;
      if (a3)
      {
        v4 = 188;
      }

      if (a2 != 5)
      {
        v4 = 0;
      }

      if (a2 != 4)
      {
        v3 = v4;
      }

      v5 = 207;
      if (a3)
      {
        v5 = 189;
      }

      v6 = 208;
      if (a3)
      {
        v6 = 190;
      }

      if (a2 != 6)
      {
        v6 = 0;
      }

      if (a2 != 5)
      {
        v5 = v6;
      }

      if (a1 != 6)
      {
        v5 = 0;
      }

      v7 = a1 == 5;
LABEL_50:
      if (v7)
      {
        return v3;
      }

      else
      {
        return v5;
      }
    }

    v8 = 204;
    if (a3)
    {
      v8 = 186;
    }

    v10 = a2 == 4;
    goto LABEL_36;
  }

  if (a1 == 8)
  {
    v3 = 210;
    if (a3)
    {
      v3 = 192;
    }

    v5 = 211;
    if (a3)
    {
      v5 = 193;
    }

    v12 = 212;
    if (a3)
    {
      v12 = 194;
    }

    if (a2 != 8)
    {
      v12 = 0;
    }

    if (a2 != 6)
    {
      v5 = v12;
    }

    v7 = a2 == 5;
    goto LABEL_50;
  }

  if (a1 != 10)
  {
    v8 = 217;
    if (a3)
    {
      v8 = 199;
    }

    v9 = 218;
    if (a3)
    {
      v9 = 200;
    }

    if (a2 != 12)
    {
      v9 = 0;
    }

    if (a2 != 10)
    {
      v8 = v9;
    }

    v10 = a1 == 12;
LABEL_36:
    if (v10)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  v13 = 215;
  if (a3)
  {
    v13 = 197;
  }

  v14 = 216;
  if (a3)
  {
    v14 = 198;
  }

  if (a2 != 10)
  {
    v14 = 0;
  }

  if (a2 != 8)
  {
    v13 = v14;
  }

  v15 = 213;
  if (a3)
  {
    v15 = 195;
  }

  v16 = 214;
  if (a3)
  {
    v16 = 196;
  }

  if (a2 != 6)
  {
    v16 = 0;
  }

  if (a2 != 5)
  {
    v15 = v16;
  }

  if (a2 <= 7)
  {
    return v15;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_1AF199160(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF0D5194(a1, a2);
  v4 = os_signpost_id_generate(v3);
  v6 = sub_1AF0D5194(v4, v5);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v6;
    v6 = os_signpost_enabled(v6);
    if (v6)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v4, "LoadImage (ASTC)", &unk_1AFF70A1D, buf, 2u);
    }
  }

  if (!a1)
  {
    v9 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA978(v9);
    }
  }

  v10 = sub_1AF197458(a1, v7);
  if (v10)
  {
    v12 = v10;
    CFRetain(v10);
  }

  else
  {
    v24 = sub_1AF195E98(a1, v11);
    if (!v24 || (v24 = sub_1AF287EF8(v24), (v12 = v24) == 0))
    {
      v23 = 0;
      goto LABEL_17;
    }
  }

  if (CFDataGetLength(v12) >= 16 && (BytePtr = CFDataGetBytePtr(v12), *BytePtr == 1554098963))
  {
    v14 = BytePtr;
    sub_1AF197D10(a1);
    v15 = (v14[9] << 16) | (v14[8] << 8) | v14[7];
    v16 = (v14[12] << 16) | (v14[11] << 8) | v14[10];
    v29 = (v14[15] << 16) | (v14[14] << 8) | v14[13];
    *&v17 = v15;
    *(&v17 + 1) = v16;
    sub_1AF196048(a1, 2, 0, v17);
    v18 = sub_1AF196128(a1);
    v19 = v14[4];
    *(v18 + 4) = v19;
    v20 = v14[5];
    *(v18 + 5) = v20;
    v21 = v14[6];
    *(v18 + 6) = v21;
    *(v18 + 1) = 0x80;
    *(v18 + 20) = sub_1AF198FC4(v19, v20, 0);
    v22 = CFDataCreate(0, v14 + 16, 16 * (v15 + v19 - 1) / v19 * ((v16 + v20 - 1) / v20) * ((v29 + v21 - 1) / v21));
    CFArrayAppendValue(*(v18 + 24), v22);
    CFRelease(v22);
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  CFRelease(v12);
LABEL_17:
  v26 = sub_1AF0D5194(v24, v25);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v27 = v26;
    if (os_signpost_enabled(v26))
    {
      *v30 = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v27, OS_SIGNPOST_INTERVAL_END, v4, "LoadImage (ASTC)", &unk_1AFF70A1D, v30, 2u);
    }
  }

  return v23;
}

uint64_t sub_1AF1993FC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a4 == a3)
  {
    return 0;
  }

  v4 = 0;
  *(a1 + 4) = 257;
  *(a1 + 6) = 1;
  if (a4 <= 36758)
  {
    if (a4 > 35414)
    {
      if (a4 <= 36193)
      {
        if (a4 <= 35900)
        {
          if (a4 <= 35841)
          {
            if (a4 != 35415)
            {
              if (a4 != 35840)
              {
                if (a4 != 35841)
                {
                  return v4;
                }

                goto LABEL_103;
              }

LABEL_106:
              v5 = 212993;
LABEL_114:
              *a1 = v5;
              v11 = 1028;
              goto LABEL_115;
            }

LABEL_108:
            v5 = 17055745;
            goto LABEL_114;
          }

          if (a4 == 35842)
          {
            goto LABEL_108;
          }

          if (a4 != 35843)
          {
            if (a4 != 35898)
            {
              return v4;
            }

            goto LABEL_69;
          }

LABEL_102:
          v12 = 17055745;
LABEL_104:
          *a1 = v12;
          v11 = 1032;
LABEL_115:
          *(a1 + 4) = v11;
          goto LABEL_116;
        }

        if (a4 <= 35917)
        {
          if (a4 == 35901)
          {
LABEL_69:
            *(a1 + 3) = 1;
            v9 = 800;
            goto LABEL_112;
          }

          if (a4 != 35907)
          {
            v8 = 35917;
LABEL_54:
            if (a4 != v8)
            {
              return v4;
            }

            v5 = 17055747;
            goto LABEL_114;
          }

          *(a1 + 3) = 1;
          *(a1 + 1) = 1056;
          v13 = a3 == 32993;
          LODWORD(v4) = 71;
          v14 = 81;
LABEL_187:
          if (v13)
          {
            LODWORD(v4) = v14;
          }

          goto LABEL_219;
        }

        v10 = -35918;
LABEL_82:
        if ((a4 + v10) >= 2)
        {
          return v4;
        }

        v5 = 17072131;
        goto LABEL_114;
      }

      if (a4 <= 36491)
      {
        if ((a4 - 36283) >= 2)
        {
          if ((a4 - 36285) >= 2)
          {
            if (a4 != 36194)
            {
              return v4;
            }

            *(a1 + 3) = 0;
            *(a1 + 1) = 784;
            goto LABEL_157;
          }

          v5 = 163844;
          goto LABEL_114;
        }

        *a1 = 16388;
        *(a1 + 2) = 67371009;
LABEL_116:
        v4 = 1;
        if (a4 > 36755)
        {
          if (a4 <= 36762)
          {
            if (a4 <= 36758)
            {
              if (a4 == 36756)
              {
                LODWORD(v4) = 12;
              }

              else
              {
                if (a4 != 36757)
                {
                  return v4;
                }

                LODWORD(v4) = 32;
              }
            }

            else if (a4 == 36760)
            {
              LODWORD(v4) = 22;
            }

            else
            {
              LODWORD(v4) = 62;
            }
          }

          else
          {
            switch(a4)
            {
              case 37808:
                LODWORD(v4) = 204;
                goto LABEL_219;
              case 37809:
                LODWORD(v4) = 205;
                goto LABEL_219;
              case 37810:
                LODWORD(v4) = 206;
                goto LABEL_219;
              case 37811:
                LODWORD(v4) = 207;
                goto LABEL_219;
              case 37812:
                LODWORD(v4) = 208;
                goto LABEL_219;
              case 37813:
                LODWORD(v4) = 210;
                goto LABEL_219;
              case 37814:
                LODWORD(v4) = 211;
                goto LABEL_219;
              case 37815:
                LODWORD(v4) = 212;
                goto LABEL_219;
              case 37816:
                LODWORD(v4) = 213;
                goto LABEL_219;
              case 37817:
                LODWORD(v4) = 214;
                goto LABEL_219;
              case 37818:
                LODWORD(v4) = 215;
                goto LABEL_219;
              case 37819:
                LODWORD(v4) = 216;
                goto LABEL_219;
              case 37820:
                LODWORD(v4) = 217;
                goto LABEL_219;
              case 37821:
                LODWORD(v4) = 218;
                goto LABEL_219;
              case 37822:
              case 37823:
              case 37824:
              case 37825:
              case 37826:
              case 37827:
              case 37828:
              case 37829:
              case 37830:
              case 37831:
              case 37832:
              case 37833:
              case 37834:
              case 37835:
              case 37836:
              case 37837:
              case 37838:
              case 37839:
                return v4;
              case 37840:
                LODWORD(v4) = 186;
                goto LABEL_219;
              case 37841:
                LODWORD(v4) = 187;
                goto LABEL_219;
              case 37842:
                LODWORD(v4) = 188;
                goto LABEL_219;
              case 37843:
                LODWORD(v4) = 189;
                goto LABEL_219;
              case 37844:
                LODWORD(v4) = 190;
                goto LABEL_219;
              case 37845:
                LODWORD(v4) = 192;
                goto LABEL_219;
              case 37846:
                LODWORD(v4) = 193;
                goto LABEL_219;
              case 37847:
                LODWORD(v4) = 194;
                goto LABEL_219;
              case 37848:
                LODWORD(v4) = 195;
                goto LABEL_219;
              case 37849:
                LODWORD(v4) = 196;
                goto LABEL_219;
              case 37850:
                LODWORD(v4) = 197;
                goto LABEL_219;
              case 37851:
                LODWORD(v4) = 198;
                goto LABEL_219;
              case 37852:
                LODWORD(v4) = 199;
                goto LABEL_219;
              case 37853:
                LODWORD(v4) = 200;
                goto LABEL_219;
              default:
                if (a4 == 36763)
                {
                  LODWORD(v4) = 112;
                }

                else
                {
                  if (a4 != 36975)
                  {
                    return v4;
                  }

                  LODWORD(v4) = 91;
                }

                break;
            }
          }

          goto LABEL_219;
        }

        if (a4 <= 34835)
        {
          v4 = 25;
          switch(a4)
          {
            case 33321:
              LODWORD(v4) = 10;
              goto LABEL_219;
            case 33322:
              LODWORD(v4) = 20;
              goto LABEL_219;
            case 33323:
              LODWORD(v4) = 30;
              goto LABEL_219;
            case 33324:
              LODWORD(v4) = 60;
              goto LABEL_219;
            case 33325:
              goto LABEL_219;
            case 33326:
              goto LABEL_151;
            case 33327:
              goto LABEL_184;
            case 33328:
              goto LABEL_182;
            case 33329:
              LODWORD(v4) = 14;
              goto LABEL_219;
            case 33330:
              LODWORD(v4) = 13;
              goto LABEL_219;
            case 33331:
              LODWORD(v4) = 24;
              goto LABEL_219;
            case 33332:
              LODWORD(v4) = 23;
              goto LABEL_219;
            case 33333:
              LODWORD(v4) = 54;
              goto LABEL_219;
            case 33334:
              LODWORD(v4) = 53;
              goto LABEL_219;
            case 33335:
              LODWORD(v4) = 34;
              goto LABEL_219;
            case 33336:
              LODWORD(v4) = 33;
              goto LABEL_219;
            case 33337:
              LODWORD(v4) = 64;
              goto LABEL_219;
            case 33338:
              LODWORD(v4) = 63;
              goto LABEL_219;
            case 33339:
              LODWORD(v4) = 104;
              goto LABEL_219;
            case 33340:
              LODWORD(v4) = 103;
              goto LABEL_219;
            default:
              if (a4 == 32857)
              {
                LODWORD(v4) = 90;
              }

              else
              {
                if (a4 != 32859)
                {
                  return v4;
                }

                LODWORD(v4) = 110;
              }

              break;
          }

          goto LABEL_219;
        }

        if (a4 > 36207)
        {
          if (a4 > 36225)
          {
            switch(a4)
            {
              case 36226:
                LODWORD(v4) = 124;
                break;
              case 36232:
                LODWORD(v4) = 114;
                break;
              case 36238:
                LODWORD(v4) = 74;
                break;
              default:
                return v4;
            }
          }

          else
          {
            switch(a4)
            {
              case 36208:
                LODWORD(v4) = 123;
                break;
              case 36214:
                LODWORD(v4) = 113;
                break;
              case 36220:
                LODWORD(v4) = 73;
                break;
              default:
                return v4;
            }
          }

          goto LABEL_219;
        }

        if (a4 <= 35900)
        {
          if (a4 != 35898)
          {
            return v4;
          }

          LODWORD(v4) = 92;
          goto LABEL_219;
        }

        if (a4 == 35901)
        {
          LODWORD(v4) = 93;
          goto LABEL_219;
        }

        if (a4 != 36194)
        {
          return v4;
        }

LABEL_157:
        LODWORD(v4) = 40;
        goto LABEL_219;
      }

      if (a4 <= 36755)
      {
        if ((a4 - 36492) < 2)
        {
          v5 = 17072132;
        }

        else
        {
          if ((a4 - 36494) >= 2)
          {
            return v4;
          }

          v5 = 229380;
        }

        goto LABEL_114;
      }

      if (a4 != 36756)
      {
        v6 = 36757;
        goto LABEL_86;
      }

LABEL_107:
      *(a1 + 3) = 0;
      v9 = 264;
      goto LABEL_112;
    }

    if (a4 > 33326)
    {
      if (a4 <= 34835)
      {
        if (a4 <= 33777)
        {
          if (a4 == 33327)
          {
            *(a1 + 3) = 0;
            *(a1 + 1) = 544;
LABEL_184:
            LODWORD(v4) = 65;
            goto LABEL_219;
          }

          if (a4 == 33328)
          {
            *(a1 + 3) = 0;
            *(a1 + 1) = 576;
LABEL_182:
            LODWORD(v4) = 105;
            goto LABEL_219;
          }

          v8 = 33777;
          goto LABEL_54;
        }

        v10 = -33778;
        goto LABEL_82;
      }

      if (a4 > 35411)
      {
        if (a4 == 35412)
        {
LABEL_103:
          v12 = 212993;
          goto LABEL_104;
        }

        if (a4 == 35413)
        {
          goto LABEL_106;
        }

        goto LABEL_102;
      }

      if (a4 == 34836)
      {
        *(a1 + 3) = 1;
        *(a1 + 1) = 1152;
        LODWORD(v4) = 125;
      }

      else
      {
        if (a4 != 34842)
        {
          return v4;
        }

        *(a1 + 3) = 1;
        *(a1 + 1) = 1088;
        LODWORD(v4) = 115;
      }
    }

    else
    {
      if (a4 > 33320)
      {
        if (a4 <= 33323)
        {
          if (a4 == 33321)
          {
            goto LABEL_107;
          }

          if (a4 != 33322)
          {
            v6 = 33323;
LABEL_86:
            if (a4 != v6)
            {
              return v4;
            }

            *(a1 + 3) = 0;
            v9 = 528;
            goto LABEL_112;
          }

LABEL_71:
          *(a1 + 3) = 0;
          v9 = 272;
          goto LABEL_112;
        }

        if (a4 != 33324)
        {
          if (a4 == 33325)
          {
            *(a1 + 3) = 0;
            *(a1 + 1) = 272;
            LODWORD(v4) = 25;
          }

          else
          {
            *(a1 + 3) = 0;
            *(a1 + 1) = 288;
LABEL_151:
            LODWORD(v4) = 55;
          }

          goto LABEL_219;
        }

LABEL_70:
        *(a1 + 3) = 0;
        v9 = 544;
        goto LABEL_112;
      }

      if (a4 > 32855)
      {
        if (a4 == 32856)
        {
          *(a1 + 3) = 1;
          *(a1 + 1) = 1056;
          v13 = a3 == 32993;
          LODWORD(v4) = 70;
          v14 = 80;
          goto LABEL_187;
        }

        if (a4 != 32857)
        {
          if (a4 != 32859)
          {
            return v4;
          }

          goto LABEL_111;
        }

        goto LABEL_62;
      }

      if (a4 == 32854)
      {
        *(a1 + 3) = 1;
        *(a1 + 1) = 1040;
        LODWORD(v4) = 42;
      }

      else
      {
        if (a4 != 32855)
        {
          return v4;
        }

        *(a1 + 3) = 1;
        *(a1 + 1) = 1040;
        LODWORD(v4) = 41;
      }
    }

LABEL_219:
    *(a1 + 20) = v4;
    return 1;
  }

  if (a4 <= 37807)
  {
    if (a4 > 37489)
    {
      v7 = a4 - 116;
      if ((a4 - 37492) > 5)
      {
        if ((a4 - 37490) >= 2)
        {
          return v4;
        }

        v5 = 163845;
      }

      else if (((1 << v7) & 3) != 0)
      {
        v5 = 212997;
      }

      else if (((1 << v7) & 0xC) != 0)
      {
        v5 = 17055749;
      }

      else
      {
        v5 = 17072133;
      }

      goto LABEL_114;
    }

    if (a4 <= 36762)
    {
      if (a4 == 36759)
      {
        *(a1 + 3) = 1;
        *(a1 + 1) = 1056;
        LODWORD(v4) = 72;
        goto LABEL_219;
      }

      if (a4 == 36760)
      {
        goto LABEL_71;
      }

      if (a4 != 36761)
      {
        return v4;
      }

      goto LABEL_70;
    }

    if ((a4 - 37488) < 2)
    {
      v5 = 81925;
      goto LABEL_114;
    }

    if (a4 == 36763)
    {
LABEL_111:
      *(a1 + 3) = 1;
      v9 = 1088;
      goto LABEL_112;
    }

    if (a4 != 36975)
    {
      return v4;
    }

LABEL_62:
    *(a1 + 3) = 1;
    v9 = 1056;
LABEL_112:
    *(a1 + 1) = v9;
    goto LABEL_116;
  }

  switch(a4)
  {
    case 37808:
    case 37840:
      v5 = 17072130;
      goto LABEL_114;
    case 37809:
    case 37841:
      *a1 = 17072130;
      v11 = 1029;
      goto LABEL_115;
    case 37810:
    case 37842:
      *a1 = 17072130;
      v11 = 1285;
      goto LABEL_115;
    case 37811:
    case 37843:
      *a1 = 17072130;
      v11 = 1286;
      goto LABEL_115;
    case 37812:
    case 37844:
      *a1 = 17072130;
      v11 = 1542;
      goto LABEL_115;
    case 37813:
    case 37845:
      *a1 = 17072130;
      v11 = 1288;
      goto LABEL_115;
    case 37814:
    case 37846:
      *a1 = 17072130;
      v11 = 1544;
      goto LABEL_115;
    case 37815:
    case 37847:
      *a1 = 17072130;
      v11 = 2056;
      goto LABEL_115;
    case 37816:
    case 37848:
      *a1 = 17072130;
      v11 = 1290;
      goto LABEL_115;
    case 37817:
    case 37849:
      *a1 = 17072130;
      v11 = 1546;
      goto LABEL_115;
    case 37818:
    case 37850:
      *a1 = 17072130;
      v11 = 2058;
      goto LABEL_115;
    case 37819:
    case 37851:
      *a1 = 17072130;
      v11 = 2570;
      goto LABEL_115;
    case 37820:
    case 37852:
      *a1 = 17072130;
      v11 = 2572;
      goto LABEL_115;
    case 37821:
    case 37853:
      *a1 = 17072130;
      v11 = 3084;
      goto LABEL_115;
    default:
      return v4;
  }

  return v4;
}

BOOL sub_1AF199E9C(uint64_t a1, uint64_t a2)
{
  if (sub_1AF197458(a1, a2))
  {
    return 1;
  }

  v5 = sub_1AF195E38(a1, v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v4 = CFEqual(v5, @"ktx") != 0;
  CFRelease(v6);
  return v4;
}

uint64_t sub_1AF199F04(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = sub_1AF0D5194(a1, a2);
  v4 = os_signpost_id_generate(v3);
  v6 = sub_1AF0D5194(v4, v5);
  v8 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v6;
    v6 = os_signpost_enabled(v6);
    if (v6)
    {
      *buf = 67109120;
      v51 = 1;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v4, "LoadImage (KTX)", "dd %d", buf, 8u);
    }
  }

  if (!a1)
  {
    v10 = sub_1AF0D5194(v6, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDA978(v10);
    }
  }

  v11 = sub_1AF197458(a1, v7);
  if (v11)
  {
    v13 = v11;
    CFRetain(v11);
    goto LABEL_9;
  }

  v29 = sub_1AF195E98(a1, v12);
  if (v29)
  {
    v29 = sub_1AF287EF8(v29);
    v13 = v29;
    if (v29)
    {
LABEL_9:
      Length = CFDataGetLength(v13);
      if (Length > 0x3F)
      {
        v17 = Length;
        BytePtr = CFDataGetBytePtr(v13);
        if (*BytePtr == 0xBB31312058544BABLL && *(BytePtr + 2) == 169478669)
        {
          v21 = BytePtr;
          if (*(BytePtr + 3) == 67305985)
          {
            sub_1AF197D10(a1);
            sub_1AF196048(a1, 0, 0, COERCE_DOUBLE(vcvt_f32_u32(*(v21 + 36))));
            if (*(v21 + 13) == 6)
            {
              sub_1AF197E98(a1, 3);
            }

            v22 = sub_1AF196128(a1);
            v24 = sub_1AF1993FC(v22, v23, *(v21 + 6), *(v21 + 7));
            if (v24)
            {
              v26 = *v22;
              if (!*v22)
              {
                goto LABEL_43;
              }

              if (v26 != 3)
              {
                v24 = v26 != 4;
                if (v26 == 2)
                {
                  v24 = sub_1AF28A070(v24, v25);
                  v26 = *v22;
                }

                if (v26 & 0xFFFFFFFB) != 1 && (v24)
                {
LABEL_43:
                  v37 = 0;
                  v38 = *(v21 + 14);
                  v39 = *(v21 + 15) + 64;
                  if (v38 <= 1)
                  {
                    v38 = 1;
                  }

                  v47 = v38;
                  if (*(v21 + 13) <= 1u)
                  {
                    v40 = 1;
                  }

                  else
                  {
                    v40 = *(v21 + 13);
                  }

                  v48 = v4 - 1;
                  v49 = v4;
                  while (v39 <= v17)
                  {
                    v41 = 0;
                    v42 = *&v21[v39];
                    v39 += 4;
                    while (1)
                    {
                      v43 = v39 + v42;
                      if (v39 + v42 > v17)
                      {
                        break;
                      }

                      v44 = CFDataCreate(0, &v21[v39], v42);
                      CFArrayAppendValue(v22[3], v44);
                      CFRelease(v44);
                      v39 = (v43 + 3) & 0xFFFFFFFFFFFFFFFCLL;
                      if (v40 == ++v41)
                      {
                        goto LABEL_56;
                      }
                    }

                    v45 = sub_1AF0D5194(v24, v25);
                    v24 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
                    if (v24)
                    {
                      *buf = 67109888;
                      v51 = v41;
                      v52 = 1024;
                      *v53 = v37;
                      *&v53[4] = 2048;
                      *&v53[6] = v43;
                      *&v53[14] = 2048;
                      *&v53[16] = v17;
                      _os_log_error_impl(&dword_1AF0CE000, v45, OS_LOG_TYPE_ERROR, "Error: overflow reading slice[%d] / mip[%d] (%zu > %zu)", buf, 0x22u);
                    }

LABEL_56:
                    ++v37;
                    v31 = 1;
                    v8 = v48;
                    v4 = v49;
                    if (v37 == v47)
                    {
                      goto LABEL_34;
                    }
                  }

                  v46 = sub_1AF0D5194(v24, v25);
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109632;
                    v51 = v37;
                    v52 = 2048;
                    *v53 = v39;
                    *&v53[8] = 2048;
                    *&v53[10] = v17;
                    _os_log_error_impl(&dword_1AF0CE000, v46, OS_LOG_TYPE_ERROR, "Error: overflow reading mip[%d] (%zu > %zu)", buf, 0x1Cu);
                  }

                  v31 = 1;
                  goto LABEL_34;
                }
              }

              v27 = sub_1AF0D5194(v24, v25);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *v22;
                *buf = 67109120;
                v51 = v28;
                _os_log_impl(&dword_1AF0CE000, v27, OS_LOG_TYPE_DEFAULT, "Warning: Compression type %d not supported", buf, 8u);
              }
            }

            else
            {
              v33 = sub_1AF0D5194(v24, v25);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDDAA40(v33);
              }
            }

            sub_1AF197D10(a1);
          }

          else
          {
            v32 = sub_1AF0D5194(BytePtr, v19);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDDA9FC(v32);
            }
          }
        }
      }

      else
      {
        v16 = sub_1AF0D5194(Length, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AF0CE000, v16, OS_LOG_TYPE_DEFAULT, "Warning: KTX file seems too small or is not a KTX", buf, 2u);
        }
      }

      v31 = 0;
LABEL_34:
      CFRelease(v13);
      goto LABEL_35;
    }
  }

  v31 = 0;
LABEL_35:
  v34 = sub_1AF0D5194(v29, v30);
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v35 = v34;
    if (os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v35, OS_SIGNPOST_INTERVAL_END, v4, "LoadImage (KTX)", &unk_1AFF70A1D, buf, 2u);
    }
  }

  return v31;
}

uint64_t sub_1AF19A3D0(void *a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v119 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_width(a1, a2, a3);
  v8 = objc_msgSend_height(v4, v6, v7);
  v11 = objc_msgSend_depth(v4, v9, v10);
  if (objc_msgSend_textureType(v4, v12, v13) == 5)
  {
    v16 = 6;
  }

  else
  {
    v16 = 1;
  }

  if (v3)
  {
    v105 = objc_msgSend_mipmapLevelCount(v4, v14, v15);
  }

  else
  {
    v105 = 1;
  }

  if (objc_msgSend_storageMode(v4, v14, v15) == 2)
  {
    v102 = v8;
    v103 = v5;
    v19 = objc_alloc_init(MEMORY[0x1E69741C0]);
    v22 = objc_msgSend_textureType(v4, v20, v21);
    objc_msgSend_setTextureType_(v19, v23, v22);
    v26 = objc_msgSend_pixelFormat(v4, v24, v25);
    objc_msgSend_setPixelFormat_(v19, v27, v26);
    v30 = objc_msgSend_width(v4, v28, v29);
    objc_msgSend_setWidth_(v19, v31, v30);
    v34 = objc_msgSend_height(v4, v32, v33);
    objc_msgSend_setHeight_(v19, v35, v34);
    v38 = objc_msgSend_depth(v4, v36, v37);
    objc_msgSend_setDepth_(v19, v39, v38);
    v42 = objc_msgSend_mipmapLevelCount(v4, v40, v41);
    objc_msgSend_setMipmapLevelCount_(v19, v43, v42);
    objc_msgSend_setUsage_(v19, v44, 0);
    v47 = objc_msgSend_device(v4, v45, v46);
    v49 = objc_msgSend_newTextureWithDescriptor_(v47, v48, v19);
    v52 = objc_msgSend_device(v4, v50, v51);
    v55 = objc_msgSend_newCommandQueue(v52, v53, v54);
    v58 = objc_msgSend_commandBuffer(v55, v56, v57);
    v63 = objc_msgSend_blitCommandEncoder(v58, v59, v60);
    if (v105)
    {
      v65 = 0;
      *&v64 = __PAIR64__(v102, v103);
      v66 = v11;
      do
      {
        v67 = 0;
        v68 = v66;
        v104 = v64;
        *&v69 = v64;
        *(&v69 + 1) = SDWORD1(v64);
        v106 = v69;
        do
        {
          v115 = v106;
          *&v116 = v68;
          v108 = 0;
          v109 = 0;
          v110 = 0;
          memset(v114, 0, sizeof(v114));
          objc_msgSend_copyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(v63, v61, v4, v67, v65, &v108, &v115, v49, v67, v65, v114);
          ++v67;
        }

        while (v16 != v67);
        *(&v64 + 1) = *(&v104 + 1);
        *&v64 = vshl_u32(*&v104, vcgt_s32(*&v104, 0x100000001));
        v66 = v68 >> (v68 > 1);
        ++v65;
      }

      while (v65 != v105);
    }

    objc_msgSend_endEncoding(v63, v61, v62);
    objc_msgSend_commit(v58, v70, v71);
    objc_msgSend_waitUntilCompleted(v58, v72, v73);

    v4 = v49;
    v8 = v102;
    v5 = v103;
  }

  v117 = 0u;
  v118 = 0u;
  v116 = 0u;
  *&v115 = 0xBB31312058544BABLL;
  *(&v115 + 1) = 0x40302010A1A0A0DLL;
  v74 = objc_msgSend_pixelFormat(v4, v17, v18);
  v77 = v74;
  if (v74 > 79)
  {
    switch(v74)
    {
      case 'P':
        v78 = xmmword_1AFE21970;
        goto LABEL_25;
      case 's':
        v78 = xmmword_1AFE219A0;
        v80 = 8;
        goto LABEL_31;
      case 'Q':
        v78 = xmmword_1AFE219C0;
        goto LABEL_25;
    }

LABEL_26:
    v81 = sub_1AF0D5194(v74, v75);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDAB28(v77);
    }

    return 0;
  }

  switch(v74)
  {
    case 10:
      v78 = xmmword_1AFE21990;
      v79 = 1;
      break;
    case 25:
      v78 = xmmword_1AFE21980;
      v79 = 2;
      break;
    case 71:
      v78 = xmmword_1AFE219B0;
LABEL_25:
      v80 = 4;
LABEL_31:
      v107 = v80;
      v82 = 6408;
      goto LABEL_32;
    default:
      goto LABEL_26;
  }

  v107 = v79;
  v82 = 6403;
LABEL_32:
  v116 = v78;
  LODWORD(v117) = v82;
  if (objc_msgSend_textureType(v4, v75, v76) != 2)
  {
    v85 = objc_msgSend_textureType(v4, v83, v84);
    if (v85 != 5)
    {
      v100 = sub_1AF0D5194(v85, v83);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDAA84(v4, v100, v101);
      }

      return 0;
    }
  }

  DWORD1(v117) = objc_msgSend_width(v4, v83, v84);
  *(&v117 + 1) = objc_msgSend_height(v4, v86, v87);
  LODWORD(v118) = 0;
  *(&v118 + 4) = __PAIR64__(v105, v16);
  v89 = objc_msgSend_dataWithCapacity_(MEMORY[0x1E695DF88], v88, 0);
  objc_msgSend_appendBytes_length_(v89, v90, &v115, 64);
  v92 = malloc_type_malloc(v8 * v5 * v107, 0x100004077774924uLL);
  if (v105)
  {
    v93 = 0;
    v94 = v8;
    do
    {
      LODWORD(v114[0]) = v5 * v107 * v94;
      objc_msgSend_appendBytes_length_(v89, v91, v114, 4);
      for (i = 0; i != v16; ++i)
      {
        v108 = 0;
        v109 = 0;
        v110 = 0;
        v111 = v5;
        v112 = v94;
        v113 = 1;
        objc_msgSend_getBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(v4, v91, v92, (v5 * v107), LODWORD(v114[0]), &v108, v93, i);
        objc_msgSend_appendBytes_length_(v89, v96, v92, LODWORD(v114[0]));
      }

      LODWORD(v5) = v5 >> (v5 > 1);
      v94 = v94 >> (v94 > 1);
      ++v93;
    }

    while (v93 != v105);
  }

  free(v92);
  return objc_msgSend_copy(v89, v97, v98);
}

void sub_1AF19A8D8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

size_t sub_1AF19A8F8(uint64_t a1)
{
  v1 = a1 - 1;
  v2 = MEMORY[0x1E69E9830];
  do
  {
    v3 = *(v1 + 1);
    if (v3 < 0)
    {
      result = __maskrune(*(v1 + 1), 0x4000uLL);
    }

    else
    {
      result = *(v2 + 4 * v3 + 60) & 0x4000;
    }

    ++v1;
  }

  while (result);
  if (v3)
  {
    result = strlen(v1);
    v5 = (v1 + result - 1);
    do
    {
      v6 = v5;
      if (v5 <= v1)
      {
        break;
      }

      v7 = *v5;
      result = v7 < 0 ? __maskrune(*v6, 0x4000uLL) : *(v2 + 4 * v7 + 60) & 0x4000u;
      v5 = v6 - 1;
    }

    while (result);
    v6[1] = 0;
  }

  return result;
}

void **sub_1AF19A9A4(uint64_t a1, unint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x128uLL, 0x108004001B6EADBuLL);
  if (!v4)
  {
    v28 = sub_1AF0D5194(0, v5);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDAC50();
    }

    return 0;
  }

  v6 = v4;
  *(v4 + 16) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 14) = 0u;
  *(v4 + 15) = 0u;
  *(v4 + 12) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 10) = 0u;
  *(v4 + 11) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 5) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 69) = 1065353216;
  __asm { FMOV            V0.2S, #1.0 }

  *(v4 + 268) = _D0;
  *(v4 + 36) = 0;
  if (a2)
  {
    v11 = 0;
    v36 = 0;
    v12 = 0;
    v35 = 0;
    v34 = v4 + 280;
    do
    {
      v13 = 0;
      while (1)
      {
        v14 = *(a1 + v11);
        if (v14 == 10 || v13 > 0xFE)
        {
          break;
        }

        ++v11;
        v15 = v13 + 1;
        v39[v13++] = v14;
        if (v11 >= a2)
        {
          goto LABEL_12;
        }
      }

      if (v14 == 10)
      {
        ++v11;
      }

      v15 = v13;
LABEL_12:
      v39[v15] = 0;
      v16 = sub_1AF19A8F8(v39);
      if (v39[0] && v39[0] != 35)
      {
        if (*v39 == 1280592212 && v39[4] == 69)
        {
          sscanf(v39, "TITLE %255[^]");
        }

        else if (*v39 == 0x4D5F4E49414D4F44 && *&v39[8] == 20041)
        {
          sscanf(v39, "DOMAIN_MIN %f %f %f");
        }

        else if (*v39 == 0x4D5F4E49414D4F44 && *&v39[8] == 22593)
        {
          sscanf(v39, "DOMAIN_MAX %f %f %f");
        }

        else
        {
          if (*v39 == 0x535F44315F54554CLL && *&v39[3] == 0x455A49535F44315FLL)
          {
            v30 = sub_1AF0D5194(v16, v17);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDDAC1C();
            }

LABEL_59:
            free(v6);
            return 0;
          }

          if (*v39 == 0x535F44335F54554CLL && *&v39[3] == 0x455A49535F44335FLL)
          {
            sscanf(v39, "LUT_3D_SIZE %d", v34);
            v35 = 3 * *(v6 + 70) * *(v6 + 70) * *(v6 + 70);
            v26 = malloc_type_malloc(4 * v35, 0x100004052888210uLL);
            v6[36] = v26;
            if (!v26)
            {
              v31 = sub_1AF0D5194(0, v27);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                sub_1AFDDABE8();
              }

              goto LABEL_59;
            }
          }

          else if (v36 || (v39[0] - 45) < 2u || (v39[0] - 48) <= 9)
          {
            v38 = 0;
            v37 = 0;
            v23 = sscanf(v39, "%f %f %f", &v38 + 4, &v38, &v37);
            if (v23 == 3)
            {
              if (v12 >= v35)
              {
                v33 = sub_1AF0D5194(v23, v24);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDDABB4();
                }

                free(v6[36]);
                goto LABEL_59;
              }

              v25 = v6[36] + 4 * v12;
              *v25 = HIDWORD(v38);
              v25[1] = v38;
              v12 += 3;
              v25[2] = v37;
              v36 = 1;
            }
          }

          else
          {
            v36 = 0;
          }
        }
      }
    }

    while (v11 < a2);
  }

  return v6;
}

BOOL sub_1AF19ADC4(void *a1, char *a2, void *a3)
{
  v6 = objc_msgSend_bytes(a1, a2, a3);
  v9 = objc_msgSend_length(a1, v7, v8);
  v10 = sub_1AF19A9A4(v6, v9);
  v11 = v10;
  if (v10)
  {
    *a2 = *(v10 + 70);
    *a3 = v10[36];
    free(v10);
  }

  return v11 != 0;
}

void sub_1AF19AE38(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1C3FAC(a1, a2);
  if (v10)
  {
    v12 = v10;
    v13 = sub_1AF1D0140(v10, v11);
    if (v13)
    {
      sub_1AF1443AC(v13);
    }

    v15 = sub_1AF1D00F8(v12, v14);
    if (v15)
    {
      sub_1AF137D98(v15, a1);
    }
  }
}

void sub_1AF19AEAC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(result + 80) == 4)
  {
    ++*(result + 388);
    v10 = sub_1AF1C3FAC(result, a2);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v10, 0, 1u);
  }
}

float sub_1AF19AF30(unsigned int a1)
{
  result = 0.0;
  if (a1 <= 6)
  {
    return flt_1AFE21BC0[a1];
  }

  return result;
}

uint64_t sub_1AF19AF4C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC48 != -1)
  {
    sub_1AFDDACFC();
  }

  return qword_1ED73AC40;
}

double sub_1AF19AF84()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AC40 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"attenuationDistance", 84, 1, 0);
  sub_1AF1DD02C(@"color", 64, 12, 0);
  sub_1AF1DD02C(@"intensity", 88, 1, 0);
  sub_1AF1DD02C(@"orthographicScale", 112, 1, 0);
  sub_1AF1DD02C(@"shadowBias", 264, 6, 0);
  sub_1AF1DD02C(@"shadowIntensity", 96, 1, 0);
  sub_1AF1DD02C(@"shadowRadius", 116, 1, 0);
  sub_1AF1DD02C(@"spotFalloffExponent", 312, 1, 0);
  sub_1AF1DD02C(@"spotInnerAngle", 308, 1, 0);
  sub_1AF1DD02C(@"spotOuterAngle", 304, 1, 0);
  sub_1AF1DD02C(@"temperature", 92, 1, 0);
  sub_1AF1DD02C(@"zFar", 256, 1, 0);
  sub_1AF1DD02C(@"zNear", 252, 1, 0);
  sub_1AF1DD02C(@"shadowCascadeDebugFactor", 128, 1, 0);
  sub_1AF1DD02C(@"areaExtents", 336, 8, 0);
  sub_1AF1DD018();
  qword_1ED72EDA8 = sub_1AF19F068;
  result = *&xmmword_1F24E7D50;
  xmmword_1ED72ED98 = xmmword_1F24E7D50;
  qword_1ED72EDE8 = sub_1AF1A02DC;
  return result;
}

uint64_t sub_1AF19B168(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC48 != -1)
  {
    sub_1AFDDACFC();
  }

  v2 = sub_1AF0D160C(qword_1ED73AC40, 0x180uLL);
  v5[0] = 0;
  v5[1] = 0;
  sub_1AF19B268(v2, 1);
  sub_1AF163FFC(v5, 1.0, 1.0, 1.0, 1.0);
  sub_1AF19B308(v2, v5);
  sub_1AF19B3DC(v2, v3, 1.0);
  *(v2 + 264) = 0x3FF0000000000000;
  *(v2 + 104) = vdup_n_s32(0x44800000u);
  *(v2 + 252) = 0x42C800003DCCCCCDLL;
  *(v2 + 240) = -1;
  *(v2 + 132) = 272;
  *(v2 + 92) = 1170939904;
  *(v2 + 84) = 0x46D2A78541200000;
  *(v2 + 249) = *(v2 + 249) & 0xC7 | 8;
  *(v2 + 128) = 0;
  *(v2 + 112) = xmmword_1AFE21A50;
  sub_1AF19B430(v2);
  return v2;
}

void sub_1AF19B268(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 80) != v2)
  {
    sub_1AF19B5C4(result);
    *(result + 80) = v2;
    sub_1AF19B430(result);
    sub_1AF19AE38(result, v12);
    v14 = sub_1AF1C3FAC(result, v13);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v14, 0, 1u);
  }
}

void sub_1AF19B308(_BOOL8 a1, float *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD6F14(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  if (!sub_1AF163E94(a2, (v3 + 64)))
  {
    v20 = sub_1AF1C3FAC(v3, v19);
    if (v20)
    {
      v22 = sub_1AF1D0140(v20, v21);
      if (v22)
      {
        sub_1AF1443AC(v22);
      }
    }

    v23 = sub_1AF163F54((v3 + 64));
    v24 = sub_1AF163F54(a2);
    *(v3 + 64) = *a2;
    if (v23 || v24)
    {
      sub_1AF19AE38(v3, v25);
    }

    sub_1AF19BB18(v3, v25);
  }
}

void sub_1AF19B3DC(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 96) = a3;
}

double sub_1AF19B430(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 > 4)
  {
    if (v1 == 5)
    {
      *(a1 + 368) = 0;
      *(a1 + 304) = *(a1 + 304) & 0xFC | 2;
      *(a1 + 320) = xmmword_1AFE21B90;
      *(a1 + 336) = unk_1AFE21BA0;
      result = 0.0;
      *(a1 + 352) = xmmword_1AFE21BB0;
    }

    else if (v1 == 6)
    {
      *(a1 + 304) = 0;
      result = 2.19902369e13;
      *(a1 + 312) = 0x42B4000042C80000;
    }
  }

  else if (v1 == 3)
  {
    result = 8.58993629e10;
    *(a1 + 304) = 0x4234000042700000;
    *(a1 + 312) = 0x40000000;
  }

  else if (v1 == 4)
  {
    *(a1 + 304) = 0;
    *(a1 + 392) = 1;
    *(a1 + 384) = 0x1FFFFFFFFLL;
    *(a1 + 396) = 0;
    result = 0.0;
    __asm { FMOV            V1.4S, #10.0 }

    *(a1 + 320) = _Q1;
    *(a1 + 336) = 0u;
    *(a1 + 398) = 0;
    __asm { FMOV            V1.4S, #1.0 }

    *(a1 + 352) = _Q1;
    *(a1 + 368) = 0u;
  }

  return result;
}

uint64_t sub_1AF19B4EC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 272);
  if (v2)
  {
    if (!result)
    {
      result = sub_1AF16578C(a1, 23);
      *(a1 + 272) = result;
    }
  }

  return result;
}

uint64_t sub_1AF19B558(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 280);
  if (v2)
  {
    if (!result)
    {
      result = sub_1AF16578C(a1, 26);
      *(a1 + 280) = result;
    }
  }

  return result;
}

void sub_1AF19B5C4(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 == 4)
  {
LABEL_4:
    v3 = *(a1 + 304);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 304) = 0;
    }

    return;
  }

  if (v2 != 5)
  {
    if (v2 != 6)
    {
      return;
    }

    goto LABEL_4;
  }

  v4 = *(a1 + 368);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 368) = 0;
  }

  if (*(a1 + 320) == 4)
  {
    v5 = *(a1 + 360);

    free(v5);
  }
}

void sub_1AF19B650(uint64_t result, unsigned __int8 *a2, double a3, double a4, double a5, double a6, __n128 a7)
{
  if (!result)
  {
    v9 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if (*(result + 80) == 5)
  {
    v17 = *(result + 320);
    v18 = *a2;
    if (v17 != 4 || v18 == 4)
    {
      if (v18 == 4)
      {
        v20 = a2[32];
        if (v20 > 2)
        {
          v26 = *(a2 + 5);
          if (v17 == 4)
          {
            v27 = *(result + 360);
          }

          else
          {
            v27 = 0;
          }

          v28 = malloc_type_realloc(v27, 8 * a2[32], 0x41966D66uLL);
          *(a2 + 5) = v28;
          v29 = 0.0;
          v30 = 1;
          v31 = v20;
          v32 = v26;
          do
          {
            v33 = *v32++;
            v34 = v33;
            if (v31 == 1)
            {
              v35 = 0;
            }

            else
            {
              v35 = v30;
            }

            LODWORD(a6) = HIDWORD(v26[v35]);
            a7.n128_f32[0] = -*(&v34 + 1);
            v29 = v29 + ((-*(&v34 + 1) * COERCE_FLOAT(v26[v35])) + (*&v34 * *&a6));
            ++v30;
            --v31;
          }

          while (v31);
          if (v29 >= 0.0)
          {
            memcpy(v28, v26, 8 * v20);
          }

          else
          {
            v36 = v20 - 1;
            do
            {
              *v28++ = v26[v36--];
              --v20;
            }

            while (v20);
          }
        }

        else
        {
          *a2 = 1;
          *&v21 = 0x3F0000003F000000;
          *(&v21 + 1) = 0x3F0000003F000000;
          *(a2 + 1) = v21;
        }
      }
    }

    else
    {
      free(*(result + 360));
    }

    v22 = *a2;
    v23 = *(a2 + 1);
    v24 = *(a2 + 2);
    *(result + 336) = v23;
    *(result + 352) = v24;
    *(result + 320) = v22;
    sub_1AF19CDD8(result, *&v22, *&v23, *&v24, a6, a7);
    sub_1AF19D368(result, v25);
  }
}

uint64_t sub_1AF19B7C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  if (v3 == 5)
  {
    v4 = (*(a1 + 320) & 7) << 6;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 272);
  if (v5)
  {
    if (sub_1AF166220(v5, a2))
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 80);
  }

  else
  {
    v6 = 0;
    v7 = v3;
  }

  if ((v7 - 1) < 2)
  {
    goto LABEL_16;
  }

  if (v7 == 3)
  {
    v8 = *(a1 + 304);
  }

  else
  {
    if (v7 != 6)
    {
      goto LABEL_17;
    }

    v8 = *(a1 + 316);
  }

  if (v8 < 180.0)
  {
LABEL_16:
    v9 = sub_1AF19B994(a1, a2);
    goto LABEL_18;
  }

LABEL_17:
  v9 = 0;
LABEL_18:
  v10 = *(a1 + 96);
  v11 = sub_1AF19B9DC(a1, a2);
  v13 = v4 | v6 | v3 & 7u;
  if (v9)
  {
    LOBYTE(v14) = v11;
    v15 = v13 | (32 * (v10 < 1.0)) | 0x10;
    if (v11 && sub_1AF19BA38(a1, v12) == 0.0)
    {
      v14 = fminf(ceilf(sqrtf(v14)), 8.0);
      v15 |= 0x80000u;
    }

    v13 = ((v14 & 0x1F) << 9) | v15;
    if (sub_1AF19BA80(a1, v12))
    {
      v17 = sub_1AF19BAD0(a1, v16);
      v13 = ((v17 & 7) << 14) | v13;
      if (v17 >= 2)
      {
        return v13 | ((*(a1 + 128) != 0.0) << 18) | 0x20000;
      }
    }
  }

  return v13;
}

uint64_t sub_1AF19B934(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 272);
  if (result)
  {
    return sub_1AF166220(result, a2);
  }

  return result;
}

BOOL sub_1AF19B944(uint64_t a1)
{
  v1 = *(a1 + 80);
  if ((v1 - 1) < 2)
  {
    return 1;
  }

  if (v1 == 6)
  {
    v2 = *(a1 + 316);
    return v2 < 180.0;
  }

  if (v1 == 3)
  {
    v2 = *(a1 + 304);
    return v2 < 180.0;
  }

  return 0;
}

uint64_t sub_1AF19B994(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 248);
}

uint64_t sub_1AF19B9DC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 132) >= 0x1Fu)
  {
    v11 = 31;
  }

  else
  {
    v11 = *(a1 + 132);
  }

  if (*(a1 + 132))
  {
    return v11;
  }

  else
  {
    return 1;
  }
}

float sub_1AF19BA38(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 116);
}

BOOL sub_1AF19BA80(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80) == 2;
}

uint64_t sub_1AF19BAD0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 133);
}

void sub_1AF19BB18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1C3FAC(a1, a2);
  if (v3)
  {
    v7 = sub_1AF1D0140(v3, v4);
    if (v7)
    {
      sub_1AF1443AC(v7);
    }
  }

  if (*(a1 + 80) == 5)
  {

    sub_1AF19D174(a1, v5, v6);
  }
}

uint64_t sub_1AF19BB78(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 64;
}

__n128 sub_1AF19BBC0(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[4];
}

__n128 sub_1AF19BC08(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  memset(v12, 0, sizeof(v12));
  sub_1AF19BC90(a1, v12);
  return *sub_1AF15E62C(v12, 0);
}

uint64_t sub_1AF19BC90(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAD10(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  v18 = *(v3 + 80);
  _ZF = v18 == 1 || v18 == 4;
  if (_ZF)
  {
    v20 = 90.0;
  }

  else if (v18 == 6)
  {
    v20 = *(v3 + 316);
  }

  else
  {
    v20 = sub_1AF19BFD8(v3, a2);
    if (v20 >= 180.0 || v20 <= 0.0)
    {
      v20 = 60.0;
    }

    v18 = *(v3 + 80);
  }

  _ZF = v18 == 2;
  v22 = *a2 & 0xC2;
  if (_ZF)
  {
    ++v22;
  }

  *a2 = v22;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(a2 + 32) = _D1;
  v27 = *(v3 + 252);
  v28 = *(v3 + 256);
  if (v28 == 0.0)
  {
    v28 = 100.0;
  }

  *(a2 + 4) = v27;
  *(a2 + 8) = v28;
  if (v27 == 0.0)
  {
    *(a2 + 4) = 1065353216;
  }

  *a2 = v22 & 0xC1;
  *(a2 + 40) = *(v3 + 112);
  *(a2 + 44) = v20;
  return 1;
}

float sub_1AF19BDC0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

void sub_1AF19BE08(uint64_t result, void *cf)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 80) == 6)
  {
    v12 = *(result + 304);
    if (v12 != cf)
    {
      if (v12)
      {
        CFRelease(v12);
        *(result + 304) = 0;
      }

      if (cf)
      {
        v13 = CFRetain(cf);
      }

      else
      {
        v13 = 0;
      }

      *(result + 304) = v13;
    }

    v14 = [cf _infoHangle];
    if (v14)
    {
      *(result + 316) = *(v14 + 5);
      v16 = *(v14 + 1);
    }

    else
    {
      *(result + 316) = 1110704128;
      v16 = 1.0;
    }

    *(result + 312) = v16;
    sub_1AF19AE38(result, v15);
    v18 = sub_1AF1C3FAC(result, v17);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v18, 0, 1u);
  }
}

uint64_t sub_1AF19BEF0(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDAC84(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(v2 + 80) != 6)
  {
    v10 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAD88(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return *(v2 + 304);
}

float sub_1AF19BF64(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDAC84(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(v2 + 80) != 6)
  {
    v10 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAD88(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  return *(v2 + 316);
}

float sub_1AF19BFD8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 3)
  {
    return *(a1 + 304);
  }

  else
  {
    return 60.0;
  }
}

float sub_1AF19C038(uint64_t a1, int a2, float a3)
{
  v3 = *(a1 + 84) * a3;
  v4 = fmaxf(v3, 0.0);
  if (!a2)
  {
    return v4;
  }

  if (v3 <= 0.0)
  {
    return 0.0;
  }

  return -1.0 / v3;
}

void sub_1AF19C0B8(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 == 3)
  {
    v3 = fminf(*(a1 + 304), 180.0);
    v4 = *(a1 + 308);
    if (v4 >= (v3 + -0.1))
    {
      v4 = v3 + -0.1;
    }

    v2 = (v4 * 0.5);
  }

  else
  {
    v2 = 0.0;
    v3 = 0.0;
    if (v1 == 6)
    {
      v3 = *(a1 + 316);
    }
  }

  v5 = v2 / 180.0 * 3.14159265;
  cosf(v5);
  v6 = (v3 * 0.5) / 180.0 * 3.14159265;
  fmaxf(cosf(v6), 0.0);
}

float sub_1AF19C1FC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 84);
}

uint64_t sub_1AF19C244(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 249) & 1;
}

void sub_1AF19C290(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(result + 249);
  if ((v11 & 1) != v2)
  {
    *(result + 249) = v11 & 0xFE | v2;
    sub_1AF19AE38(result, a2);
    v13 = sub_1AF1C3FAC(result, v12);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
  }
}

void sub_1AF19C32C(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (a1[248] != v2)
  {
    a1[248] = v2;
    v11 = sub_1AF1C3FAC(a1, a2);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v11, 0, 1u);
    sub_1AF19AE38(a1, v12);
  }
}

uint64_t sub_1AF19C3BC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 240);
}

void sub_1AF19C404(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (a1[30] != a2)
  {
    a1[30] = a2;
    sub_1AF19AE38(a1, a2);
  }
}

float sub_1AF19C46C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

void sub_1AF19C4B4(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 88) = a3;
  sub_1AF19BB18(a1, a2);
}

float sub_1AF19C510(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 88);
  return v11 / sub_1AF19AF30(*(a1 + 80));
}

float sub_1AF19C56C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 112);
}

void sub_1AF19C5B4(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 112) = a3;
}

double sub_1AF19C608(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 264);
}

void sub_1AF19C650(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 264) = a3;
}

double sub_1AF19C6A4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 104);
}

void sub_1AF19C6EC(float32x2_t *a1, uint64_t a2, float32x2_t a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = vcge_f32(0x3400000034000000, vabd_f32(a3, a1[13]));
  if ((vpmin_u32(v12, v12).u32[0] & 0x80000000) == 0)
  {
    a1[13] = a3;
    v13 = sub_1AF1C3FAC(a1, a2);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
    sub_1AF19AE38(a1, v14);
  }
}

void sub_1AF19C78C(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 116);
  if (v12 != a3)
  {
    *(result + 116) = a3;
    if (a3 == 0.0 || v12 == 0.0)
    {
      v13 = sub_1AF1C3FAC(result, a2);
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
      sub_1AF19AE38(result, v14);
    }

    v15 = sub_1AF1C3FAC(result, a2);
    if (v15)
    {
      v17 = sub_1AF1D0140(v15, v16);
      if (v17)
      {
        sub_1AF1443AC(v17);
      }
    }
  }
}

uint64_t sub_1AF19C844(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 132);
}

void sub_1AF19C88C(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (a1[132] != v2)
  {
    v11 = sub_1AF19B9DC(a1, a2);
    a1[132] = v2;
    if (v11 != sub_1AF19B9DC(a1, v12))
    {
      v14 = sub_1AF1C3FAC(a1, v13);
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v14, 0, 1u);
      sub_1AF19AE38(a1, v15);
    }
  }
}

float sub_1AF19C938(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = 2.0;
  if (*(a1 + 80) == 3)
  {
    return *(a1 + 312);
  }

  return result;
}

void sub_1AF19C990(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 80) == 3)
  {
    *(result + 312) = a3;
  }
}

float sub_1AF19C9F0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 3)
  {
    return *(a1 + 308);
  }

  else
  {
    return 45.0;
  }
}

void sub_1AF19CA50(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 80) == 3)
  {
    *(result + 308) = a3;
  }
}

void sub_1AF19CAB0(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 80) == 3)
  {
    *(result + 304) = a3;
  }
}

float sub_1AF19CB10(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 92);
}

void sub_1AF19CB58(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 92) = a3;
  sub_1AF19BB18(a1, a2);
}

uint64_t sub_1AF19CBB4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

float sub_1AF19CBFC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 256);
}

void sub_1AF19CC44(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 256) = a3;
}

float sub_1AF19CC98(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 252);
}

void sub_1AF19CCE0(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 252) = a3;
}

uint64_t sub_1AF19CD34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) != 5 || (*(a1 + 304) & 2) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 368);
  if (!v3)
  {
    v3 = [VFXModel __createCFObject]_0(a1, a2);
    *(a1 + 368) = v3;
    v6 = sub_1AF1A0BFC(v3, v5);
    v8 = sub_1AF1A1270(v6, v7);
    sub_1AF165A7C(v8, 0);
    sub_1AF1A1310(v6, 1);
    sub_1AF1B32F8(v3, v6);
    if (v6)
    {
      CFRelease(v6);
    }

    sub_1AF19CDD8(a1, v9, v10, v11, v12, v13);
    sub_1AF19D174(a1, v14, v15);
  }

  return v3;
}

void sub_1AF19CDD8(uint64_t a1, double a2, double a3, double a4, double a5, __n128 a6)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 368);
  if (!v6)
  {
    return;
  }

  v8 = *(a1 + 320);
  if (v8 <= 1)
  {
    if (!*(a1 + 320))
    {
      v25 = *(a1 + 336);
      *bytes = -v25;
      v39 = 0;
      *v40 = v25;
      *&v40[4] = 0;
      *v37 = 256;
      v26 = *MEMORY[0x1E695E480];
      v27 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
      values = sub_1AF1ADBE4(v27, 0, 2, 3, 1);
      CFRelease(v27);
      v28 = CFDataCreate(v26, v37, 2);
      cf = sub_1AF1A6834(v28, v29);
      sub_1AF1A6A70(cf, 2, 1, v28, 1);
      CFRelease(v28);
      v34 = 0;
      v30 = MEMORY[0x1E695E9C0];
      v31 = CFArrayCreate(v26, &values, 1, MEMORY[0x1E695E9C0]);
      v32 = CFArrayCreate(v26, &cf, 1, v30);
      v21 = sub_1AF27B22C(v31, v32, &v34);
      sub_1AF16CC34(v21, @"Area Light - Line");
      CFRelease(v32);
      CFRelease(v31);
      v22 = cf;
LABEL_20:
      CFRelease(v22);
LABEL_21:
      sub_1AF1B2C80(v6, v21);
      if (v21)
      {
        CFRelease(v21);
      }

      return;
    }

    if (v8 != 1)
    {
      goto LABEL_24;
    }

    v23 = sub_1AF22917C(0, 1, 1, 0, COERCE_FLOAT(*(a1 + 336)) + COERCE_FLOAT(*(a1 + 336)), COERCE_FLOAT(HIDWORD(*(a1 + 336))) + COERCE_FLOAT(HIDWORD(*(a1 + 336))), 0.0, a5, a6);
    v21 = v23;
    v24 = @"Area light - Rectangle";
LABEL_18:
    sub_1AF16CC34(v23, v24);
    goto LABEL_21;
  }

  switch(v8)
  {
    case 2u:
      v23 = sub_1AF22917C(0, 1, 1, 0, COERCE_FLOAT(*(a1 + 336)) + COERCE_FLOAT(*(a1 + 336)), COERCE_FLOAT(HIDWORD(*(a1 + 336))) + COERCE_FLOAT(HIDWORD(*(a1 + 336))), 0.0, a5, a6);
      v21 = v23;
      v24 = @"Area Light - Ellipse";
      goto LABEL_18;
    case 3u:
      v23 = sub_1AF226914(0, 1, 1, 1, 0, 0, COERCE_FLOAT(*(a1 + 336)) + COERCE_FLOAT(*(a1 + 336)), COERCE_FLOAT(HIDWORD(*(a1 + 336))) + COERCE_FLOAT(HIDWORD(*(a1 + 336))), COERCE_FLOAT(*(a1 + 344)) + COERCE_FLOAT(*(a1 + 344)), 0.0);
      v21 = v23;
      v24 = @"Area Light - Ellipsoid";
      goto LABEL_18;
    case 4u:
      Mutable = CGPathCreateMutable();
      if (*(a1 + 352))
      {
        v10 = 0;
        __asm { FMOV            V0.2S, #-1.0 }

        v16 = -_D0;
        do
        {
          v17 = vmul_f32(*(*(a1 + 360) + 8 * v10), *&v16);
          v18 = v17.f32[0];
          v19 = v17.f32[1];
          if (v10)
          {
            CGPathAddLineToPoint(Mutable, 0, v18, v19);
          }

          else
          {
            CGPathMoveToPoint(Mutable, 0, v18, v19);
          }

          ++v10;
        }

        while (v10 < *(a1 + 352));
      }

      CGPathCloseSubpath(Mutable);
      *bytes = 0.0;
      v39 = 1065353216;
      *v40 = 0;
      *&v40[8] = 2139095039;
      v41 = Mutable;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v20 = sub_1AF21DA64(bytes);
      *bytes = 0.0;
      v39 = 1065353216;
      *v40 = 0;
      *&v40[8] = 2139095039;
      v41 = Mutable;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v21 = sub_1AF22AD8C(v20, bytes);
      sub_1AF16CC34(v21, @"Area light - Polygon");
      CFRelease(v20);
      v22 = Mutable;
      goto LABEL_20;
  }

LABEL_24:
  v33 = *(a1 + 368);

  sub_1AF1B2C80(v33, 0);
}

void sub_1AF19D174(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = *(a1 + 368);
  if (v3)
  {
    sub_1AF19D69C(a1, a2, a3);
    *bytes = v5;
    v19 = v6;
    v7 = sub_1AF1B2030(v3, 0);
    sub_1AF1A11A4(v7, *(a1 + 304) & 1);
    v9 = *(a1 + 320);
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        sub_1AF1A11A4(v7, 1);
        v10 = @"area_shape_ellipsoid_frag";
        goto LABEL_9;
      }

      if (v9 != 4)
      {
        return;
      }
    }

    else if (v9 >= 2)
    {
      v10 = @"area_shape_ellipse_frag";
LABEL_9:
      v12 = sub_1AF1D534C(@"area_shape_vert", v10);
      sub_1AF1A1AB0(v7, v12);
      CFRelease(v12);
      v13 = *MEMORY[0x1E695E480];
      v14 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
      sub_1AF16E2D4(v7, @"color", v14);
      CFRelease(v14);
      v15 = *(a1 + 336);
      HIDWORD(v15) = 0;
      v17 = v15;
      v16 = CFDataCreate(v13, &v17, 16);
      sub_1AF16E2D4(v7, @"halfExtents", v16);
      CFRelease(v16);
      return;
    }

    v11 = sub_1AF1A1270(v7, v8);
    sub_1AF166340(v11, 1, bytes);
  }
}

void sub_1AF19D2D4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 80) == 5)
  {
    if (v2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }

    *(result + 304) = *(result + 304) & 0xFD | v11;
    if ((v2 & 1) == 0)
    {
      v12 = *(result + 368);
      if (v12)
      {
        CFRelease(v12);
        *(result + 368) = 0;
      }
    }

    sub_1AF19D368(result, a2);
  }
}

void sub_1AF19D368(void *a1, uint64_t a2)
{
  sub_1AF19AE38(a1, a2);
  v4 = sub_1AF1C3FAC(a1, v3);

  sub_1AF1CF760(v4, 9, a1, 0);
}

uint64_t sub_1AF19D3B0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 5)
  {
    return (*(a1 + 304) >> 1) & 1;
  }

  else
  {
    return 0;
  }
}

void sub_1AF19D410(__n128 *result, __n128 a2, double a3, double a4, double a5, __n128 a6)
{
  if (result[5].n128_u8[0] == 5)
  {
    result[21] = a2;
    sub_1AF19CDD8(result, a2.n128_f64[0], a3, a4, a5, a6);

    sub_1AF19D368(result, v8);
  }
}

__n128 sub_1AF19D45C(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result.n128_u64[0] = 0;
  if (a1[5].n128_u8[0] == 5)
  {
    return a1[21];
  }

  return result;
}

void sub_1AF19D4B4(uint64_t result, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = a2;
  if (!result)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(result + 80) == 5)
  {
    *(result + 304) = *(result + 304) & 0xFE | v4;
    sub_1AF19D174(result, a3, a4);
    v15 = sub_1AF1C3FAC(result, v14);
    if (v15)
    {
      v17 = sub_1AF1D0140(v15, v16);
      if (v17)
      {
        sub_1AF1443AC(v17);
      }
    }
  }
}

uint64_t sub_1AF19D540(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 5)
  {
    v11 = *(a1 + 304);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

__n128 sub_1AF19D5A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 80) == 5)
  {
    v13 = (a1 + 320);
  }

  else
  {
    v13 = &xmmword_1AFE21B90;
  }

  v14 = v13[1];
  *a3 = *v13;
  *(a3 + 16) = v14;
  result = v13[2];
  *(a3 + 32) = result;
  return result;
}

BOOL sub_1AF19D63C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88) == 0.0 || sub_1AF163F54((a1 + 64));
}

double sub_1AF19D69C(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  a2.i32[0] = a1[5].i32[3];
  if (a2.f32[0] == 0.0)
  {
    v3 = xmmword_1AFE20150;
  }

  else
  {
    a3.i32[0] = 1170939904;
    v4 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(a3, a2)), 0);
    v5 = vaddq_f32(vbslq_s8(v4, xmmword_1AFE21A70, xmmword_1AFE21A60), vdivq_f32(vbslq_s8(v4, xmmword_1AFE21A90, xmmword_1AFE21A80), vaddq_f32(vdupq_lane_s32(*a2.f32, 0), vbslq_s8(v4, xmmword_1AFE21AB0, xmmword_1AFE21AA0))));
    v5.i32[3] = 0;
    v6 = vmaxnmq_f32(v5, 0);
    v6.i32[3] = 0;
    v3 = vminnmq_f32(v6, xmmword_1AFE208C0);
  }

  v7 = vmulq_f32(v3, a1[4]);
  v8 = v7;
  v9 = a1[5].u8[0];
  if (v9 == 6)
  {
    v10 = vmulq_n_f32(v7, a1[19].f32[2] * 0.0014641);
    v10.i32[3] = HIDWORD(*&a1[4]);
    v12 = v10;
  }

  else
  {
    v8.i32[3] = HIDWORD(*&a1[4]);
    v12 = v8;
  }

  *&result = vmulq_n_f32(v12, a1[5].f32[2] / sub_1AF19AF30(v9)).u64[0];
  return result;
}

void sub_1AF19D7B8(float *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[21];
  a1[21] = a3;
  if ((a3 == 0.0) != (v12 == 0.0))
  {
    sub_1AF19AE38(a1, a2);
  }
}

void sub_1AF19D830(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[36];
  if (v11 != cf)
  {
    if (v11)
    {
      CFRelease(v11);
      a1[36] = 0;
    }

    if (cf)
    {
      v12 = CFRetain(cf);
    }

    else
    {
      v12 = 0;
    }

    a1[36] = v12;
    sub_1AF19AE38(a1, cf);
  }
}

uint64_t sub_1AF19D8B8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 288);
}

void sub_1AF19D900(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (a1[80] == 4)
  {
    a1[396] = v2;
    sub_1AF19AE38(a1, a2);
  }
}

uint64_t sub_1AF19D968(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 396);
  }

  else
  {
    return 0;
  }
}

void sub_1AF19D9C4(_BYTE *result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (result[80] == 4 && result[396] == 1 && result[397] != v2)
  {
    result[397] = v2;
    sub_1AF19DA44(result, a2);
  }
}

void sub_1AF19DA44(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (*(result + 80) == 4 && *(result + 396) == 1)
  {
    ++*(result + 392);
    v10 = sub_1AF1C3FAC(result, a2);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v10, 0, 1u);
  }
}

uint64_t sub_1AF19DAD4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 397);
  }

  else
  {
    return 0;
  }
}

void sub_1AF19DB30(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 80) == 4)
  {
    *(result + 398) = v2;
  }
}

uint64_t sub_1AF19DB90(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 4)
  {
    v11 = *(a1 + 398);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_1AF19DBF0(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDDAC84(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  if (result[5].n128_u8[0] == 4)
  {
    result[23] = a3;
  }
}

__n128 sub_1AF19DC58(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result.n128_u64[0] = 0;
  if (a1[5].n128_u8[0] == 4)
  {
    return a1[23];
  }

  return result;
}

void sub_1AF19DCB0(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDDAC84(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  if (result[5].n128_u8[0] == 4)
  {
    result[22] = a3;
  }
}

__n128 sub_1AF19DD18(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (a1[5].n128_u8[0] == 4)
  {
    return a1[22];
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  return result;
}

float32x4_t sub_1AF19DD74(float32x4_t *a1, uint64_t a2, float32x4_t result)
{
  if (!a1)
  {
    v13 = result;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    result = v13;
    if (v5)
    {
      sub_1AFDDAC84(v4, v6, v7, v8, v9, v10, v11, v12);
      result = v13;
    }
  }

  if (a1[5].i8[0] == 4)
  {
    result.i32[3] = 0;
    result = vminnmq_f32(result, xmmword_1AFE21AC0);
    a1[20] = result;
  }

  return result;
}

__n128 sub_1AF19DDEC(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (a1[5].n128_u8[0] == 4)
  {
    return a1[20];
  }

  else
  {
    __asm { FMOV            V0.4S, #10.0 }
  }

  return result;
}

void sub_1AF19DE48(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDDAC84(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  if (result[5].n128_u8[0] == 4)
  {
    result[21] = a3;
  }
}

__n128 sub_1AF19DEB0(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result.n128_u64[0] = 0;
  if (a1[5].n128_u8[0] == 4)
  {
    return a1[21];
  }

  return result;
}

void sub_1AF19DF08(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 80) == 4)
  {
    *(result + 384) = v2;
  }
}

uint64_t sub_1AF19DF68(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 4)
  {
    return *(a1 + 384);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1AF19DFC4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 80) == 4 && *(a1 + 396) == 1)
  {
    return *(a1 + 392);
  }

  else
  {
    return 1;
  }
}

float sub_1AF19E02C(unsigned int a1, float a2)
{
  if (a1 == 6)
  {
    v2 = a2 * 0.683;
  }

  else
  {
    v2 = a2;
  }

  return (v2 * sub_1AF19AF30(a1)) / 1000.0;
}

float sub_1AF19E070(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v4 = sub_1AF1B9B04(a2, a2);
  v5 = *(a1 + 80);
  if ((v5 | 2) != 3)
  {
    return 1.0;
  }

  v6 = vsubq_f32(v4[3], a3);
  v7 = *(a1 + 84);
  v8 = 1.0;
  if (v7 > 0.0)
  {
    *&v9 = v7 * v7;
    v10 = vrecpe_f32(COERCE_UNSIGNED_INT(v7 * v7));
    v11 = vmul_f32(v10, vrecps_f32(v9, v10));
    v11.f32[0] = vmul_f32(v11, vrecps_f32(v9, v11)).f32[0];
    v12 = vmulq_f32(v6, v6);
    v12.f32[0] = v12.f32[2] + vaddv_f32(*v12.f32);
    v11.f32[0] = fminf(fmaxf(1.0 - (v11.f32[0] * v12.f32[0]), 0.0), 1.0);
    v8 = (1.0 / fmaxf(v12.f32[0], 0.0001)) * (v11.f32[0] * v11.f32[0]);
  }

  if (v5 == 3)
  {
    v20 = v6;
    v22 = vnegq_f32(v4[2]);
    sub_1AF19C0B8(a1);
    v13 = vmulq_f32(v20, v20);
    *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
    *v13.f32 = vrsqrte_f32(v14);
    *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
    v15 = vmulq_f32(vmulq_n_f32(v20, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]), v22);
    v18 = fminf(fmaxf(v17 + ((v15.f32[2] + vaddv_f32(*v15.f32)) * v16), 0.0), 1.0);
    return v8 * (v18 * v18);
  }

  return v8;
}

void sub_1AF19E1CC(_BOOL8 a1, uint64_t a2, float32x4_t *a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v97 = *MEMORY[0x1E69E9840];
  if (!a3 && (v11 = sub_1AF0D5194(a1, a2), a1 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAC84(v11, a2, v12, v13, v14, v15, v16, v17);
    if (a4)
    {
      goto LABEL_6;
    }
  }

  else if (a4)
  {
    goto LABEL_6;
  }

  v18 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAE00(v18, a2, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  v25 = sub_1AF1B9B04(a4, a2);
  v78 = *(v25 + 32);
  v79 = *(v25 + 48);
  v27 = sub_1AF1B9AB4(a2, v26);
  v29.i32[0] = a3[5].i32[3];
  if (v29.f32[0] == 0.0)
  {
    v30 = xmmword_1AFE20150;
  }

  else
  {
    v28.i32[0] = 1170939904;
    v31 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v28, v29)), 0);
    v32 = vaddq_f32(vbslq_s8(v31, xmmword_1AFE21A70, xmmword_1AFE21A60), vdivq_f32(vbslq_s8(v31, xmmword_1AFE21A90, xmmword_1AFE21A80), vaddq_f32(vdupq_lane_s32(*v29.f32, 0), vbslq_s8(v31, xmmword_1AFE21AB0, xmmword_1AFE21AA0))));
    v32.i32[3] = 0;
    v33 = vmaxnmq_f32(v32, 0);
    v33.i32[3] = 0;
    v30 = vminnmq_f32(v33, xmmword_1AFE208C0);
  }

  v34 = vmulq_f32(v30, a3[4]);
  v35 = v34;
  v36 = a3[5].u8[0];
  v84 = v27;
  if (v36 == 6)
  {
    v37 = vmulq_n_f32(v34, a3[19].f32[2] * 0.0014641);
    v37.i32[3] = HIDWORD(*&a3[4]);
    v81 = v37;
  }

  else
  {
    v35.i32[3] = HIDWORD(*&a3[4]);
    v81 = v35;
  }

  v38 = vmulq_n_f32(v81, a3[5].f32[2] / sub_1AF19AF30(v36));
  v38.i32[3] = v81.i32[3];
  v40 = vmulq_n_f32(v38, sub_1AF19E070(a3, a4, v84));
  v41 = a3[5].u8[0];
  if (v41 == 1)
  {
    v46.i32[1] = v84.i32[1];
    v44 = vsubq_f32(v79, v84);
    v45 = vmulq_f32(v44, v44);
    *v46.i32 = sqrtf(v45.f32[2] + vaddv_f32(*v45.f32));
    v95 = xmmword_1AFE21AD0;
    v96 = 0x3F88CF6B3F973FD9;
    v82 = v40;
    if (*v46.i32 <= 0.1)
    {
      v47 = 1.5708;
    }

    else
    {
      v85 = v44;
      v80 = v46;
      v47 = asinf(0.1 / *v46.i32);
      v46 = v80;
      v44 = v85;
    }

    v86 = vdivq_f32(v44, vdupq_lane_s32(v46, 0));
    v48 = __sincosf_stret(v47);
    v87[0] = 1.7725 - (v48.__cosval * 1.7725);
    v87[1] = ((v48.__sinval * v48.__sinval) * 3.07) * 0.5;
    if (a5 < 3)
    {
      v53 = v82;
      if (a5 != 2)
      {
        return;
      }

      v88 = 1049652923;
      v54 = v86.f32[2] * 0.488602512;
      v89 = vmuls_lane_f32(-0.4886, *v86.f32, 1);
      v90 = v54;
      v91.f32[0] = -0.4886 * v86.f32[0];
    }

    else
    {
      v87[2] = ((v48.__cosval * -3.9633) * ((v48.__cosval * v48.__cosval) + -1.0)) * 0.5;
      if (a5 == 3)
      {
        v49 = *v86.f32;
        v88 = 1049652923;
        v50 = v86.f32[2] * 0.488602512;
        v51 = vmuls_lane_f32(v86.f32[2], v86, 2) * 0.946174696 + -0.315391565;
        v89 = vmuls_lane_f32(-0.4886, *v86.f32, 1);
        v90 = v50;
        v52 = v86.f32[2] * -1.09254843;
        v92 = vmuls_lane_f32(v52, *v86.f32, 1);
        v93 = v51;
        v91.f32[0] = -0.4886 * v86.f32[0];
        v91.f32[1] = (vmuls_lane_f32(v49.f32[0], v49, 1) + (v86.f32[0] * v86.f32[1])) * 0.54627;
        v94.f32[0] = v52 * v86.f32[0];
        v94.f32[1] = (vmuls_lane_f32(-v86.f32[1], *v86.f32, 1) + (v49.f32[0] * v49.f32[0])) * 0.54627;
      }

      else
      {
        v87[3] = (((v48.__cosval * v48.__cosval) * 3.5171) + (((v48.__cosval * v48.__cosval) * (v48.__cosval * v48.__cosval)) * -2.9309)) + -0.58618;
        if (a5 > 4)
        {
          return;
        }

        sub_1AF1A0314(&v88, v86, v86.f32[1], v86.f32[2]);
      }

      v53 = v82;
    }

    v55 = 0;
    v56 = 0;
    v58 = 1;
    do
    {
      v59 = (2 * (v56 & 0x7FFFFFFF)) | 1;
      v60 = vmulq_n_f32(v53, v87[v56] * *(&v95 + v56));
      v61 = v55;
      do
      {
        v62 = 4 * v61;
        v63 = *(&v88 + v62);
        *(a6 + v62) = *(a6 + v62) + (v63 * v60.f32[0]);
        *(a6 + 4 * a5 * a5 + v62) = *(a6 + 4 * a5 * a5 + v62) + (v63 * v60.f32[1]);
        v57 = a6 + 8 * a5 * a5;
        *(v57 + v62) = *(v57 + v62) + (v63 * v60.f32[2]);
        ++v61;
        --v59;
      }

      while (v59);
      ++v56;
      v55 += v58;
      v58 += 2;
    }

    while (v56 != a5);
  }

  else if (v41 == 2 && a5 - 7 >= 0xFFFFFFFB)
  {
    v42.i32[0] = v78;
    switch(a5)
    {
      case 4u:
        v39.i32[0] = v78;
        v83 = v40;
        sub_1AF1A0314(&v88, v39, *(&v78 + 1), *(&v78 + 2));
        v40 = v83;
        break;
      case 3u:
        v88 = 1049652923;
        v64 = *(&v78 + 2) * 0.488602512;
        v65 = (*(&v78 + 2) * *(&v78 + 2)) * 0.946174696 + -0.315391565;
        v89 = *(&v78 + 1) * -0.4886;
        v90 = v64;
        v66 = *(&v78 + 2) * -1.09254843;
        v92 = *(&v78 + 1) * v66;
        v93 = v65;
        v67.i32[0] = v78;
        v67.f32[1] = (*&v78 * *(&v78 + 1)) + (*&v78 * *(&v78 + 1));
        v91 = vmul_f32(v67, 0x3F0BD8A1BEFA2A1CLL);
        v42.f32[1] = (*&v78 * *&v78) - (*(&v78 + 1) * *(&v78 + 1));
        v68 = &dword_1AFE21AF4;
        v69 = vld1_dup_f32(v68);
        v69.f32[0] = v66;
        v94 = vmul_f32(v42, v69);
        break;
      case 2u:
        v88 = 1049652923;
        v43 = *(&v78 + 2) * 0.488602512;
        v89 = *(&v78 + 1) * -0.4886;
        v90 = v43;
        v91.f32[0] = *&v78 * -0.4886;
        break;
    }

    v70 = 0;
    v71 = 0.75;
    if (a5 > 2)
    {
      v71 = 1.0625;
    }

    if (a5 > 4)
    {
      v71 = v71 + -0.09375;
    }

    v72 = 3.1416 / v71;
    v74 = (3.1416 / v71) * v40.f32[0];
    v75 = vmuls_lane_f32(v72, *v40.f32, 1);
    v76 = vmuls_lane_f32(v72, v40, 2);
    do
    {
      v77 = *(&v88 + v70);
      *(a6 + v70) = *(a6 + v70) + (v77 * v74);
      *(a6 + 4 * a5 * a5 + v70) = *(a6 + 4 * a5 * a5 + v70) + (v77 * v75);
      v73 = a6 + 8 * a5 * a5;
      *(v73 + v70) = *(v73 + v70) + (v77 * v76);
      v70 += 4;
    }

    while (4 * a5 * a5 != v70);
  }
}

void sub_1AF19E858(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(result + 249);
  if (((((v11 & 8) == 0) ^ v2) & 1) == 0)
  {
    if (v2)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    *(result + 249) = v11 & 0xF7 | v12;
    if (sub_1AF19BAD0(result, a2) >= 2)
    {
      v14 = sub_1AF1C3FAC(result, v13);
      sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v14, 0, 1u);
    }
  }
}

uint64_t sub_1AF19E90C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 249) >> 3) & 1;
}

BOOL sub_1AF19E958(unsigned __int8 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF19BA80(a1, a2) && a1[133] > 1u;
  return ((a1[249] & 8) != 0 || v10) && a1[80] == 2;
}

void sub_1AF19E9DC(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v2;
  }

  if (v11 >= 4)
  {
    v11 = 4;
  }

  if (v11 != *(result + 133))
  {
    *(result + 133) = v11;
    sub_1AF19AE38(result, a2);
    v13 = sub_1AF1C3FAC(result, v12);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v13, 0, 1u);
  }
}

void sub_1AF19EA80(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 120) = a3;
}

void sub_1AF19EADC(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 124) = a3;
}

float sub_1AF19EB30(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 124);
}

void sub_1AF19EB78(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 128) != 0.0;
  *(result + 128) = a3;
  if ((a3 != 0.0) != v12)
  {
    sub_1AF19AE38(result, a2);
    v14 = sub_1AF1C3FAC(result, v13);
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", v14, 0, 1u);
  }
}

float sub_1AF19EC18(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 128);
}

void *sub_1AF19EC60(uint64_t a1, uint64_t a2, void *__src)
{
  v4 = a2;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  *(a1 + 136) = v4;
  return memcpy((a1 + 144), __src, 16 * v4);
}

uint64_t sub_1AF19ECC8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 144;
}

uint64_t sub_1AF19ED10(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 136);
}

void sub_1AF19ED58(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  *(result + 249) = *(result + 249) & 0xEF | v12;
}

uint64_t sub_1AF19EDC4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 249) >> 4) & 1;
}

void sub_1AF19EE10(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAC84(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  *(result + 249) = *(result + 249) & 0xDF | v12;
}

id sub_1AF19EE8C(void *a1)
{
  sub_1AF19B5C4(a1);
  v3 = a1[34];
  if (v3)
  {
    CFRelease(v3);
    a1[34] = 0;
  }

  v4 = a1[35];
  if (v4)
  {
    CFRelease(v4);
    a1[35] = 0;
  }

  v5 = a1[36];
  if (v5)
  {
    CFRelease(v5);
    a1[36] = 0;
  }

  return sub_1AF16C9A4(a1, v2);
}

CFStringRef sub_1AF19EEF8(unsigned __int8 *a1)
{
  v2 = a1[248];
  v3 = CFGetAllocator(a1);
  v4 = sub_1AF3753A8(a1);
  v5 = sub_1AF19EF8C(a1);
  if (v2 == 1)
  {
    return CFStringCreateWithFormat(v3, 0, @"<%s %p | Type:%@ CastsShadow(Samples:%d Cascade:%d)>", v4, a1, v5, a1[132], a1[133]);
  }

  else
  {
    return CFStringCreateWithFormat(v3, 0, @"<%s %p | Type:%@>", v4, a1, v5);
  }
}

__CFString *sub_1AF19EF8C(unsigned __int8 *a1)
{
  v1 = a1[80];
  if (v1 <= 2)
  {
    if (!a1[80])
    {
      return @"Ambient";
    }

    if (v1 == 1)
    {
      return @"Omni";
    }

    if (v1 == 2)
    {
      return @"Directional";
    }

    return @"Unknown";
  }

  if (a1[80] > 4u)
  {
    if (v1 == 5)
    {
      v4 = a1[320];
      if (v4 < 5)
      {
        return off_1E7A7B318[v4];
      }
    }

    else if (v1 == 6)
    {
      return @"IES";
    }

    return @"Unknown";
  }

  if (v1 == 3)
  {
    return @"Spot";
  }

  if (v1 != 4)
  {
    return @"Unknown";
  }

  v2 = @"IES";
  if (a1[396] == 1)
  {
    v2 = @"Radiance";
  }

  if (a1[396])
  {
    return v2;
  }

  else
  {
    return @"Irradiance";
  }
}

__CFArray *sub_1AF19F068(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 12;
  v89 = a1 + 64;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v4, @"name", @"Color");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 88;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v8, @"name", @"intensity");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 2;
  v89 = a1 + 80;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v12, @"name", @"type");
  CFDictionarySetValue(v12, @"type", v13);
  CFDictionarySetValue(v12, @"address", v15);
  CFDictionarySetValue(v12, @"semantic", v14);
  CFArrayAppendValue(Mutable, v12);
  CFRelease(v14);
  CFRelease(v12);
  CFRelease(v15);
  CFRelease(v13);
  v16 = MEMORY[0x1E695E9D8];
  v17 = MEMORY[0x1E695E9E8];
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 3;
  v89 = a1 + 248;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v21 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v18, @"name", @"castShadow");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, v16, v17);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 96;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v22, @"name", @"shadowIntensity");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = v16;
  v27 = MEMORY[0x1E695E9E8];
  v28 = CFDictionaryCreateMutable(0, 4, v26, MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 252;
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v28, @"name", @"zNear");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  CFArrayAppendValue(Mutable, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 256;
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v35 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v32, @"name", @"zFar");
  CFDictionarySetValue(v32, @"type", v33);
  CFDictionarySetValue(v32, @"address", v35);
  CFDictionarySetValue(v32, @"semantic", v34);
  CFArrayAppendValue(Mutable, v32);
  CFRelease(v34);
  CFRelease(v32);
  CFRelease(v35);
  CFRelease(v33);
  v36 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 116;
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v39 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v36, @"name", @"shadowSoftenFactor");
  CFDictionarySetValue(v36, @"type", v37);
  CFDictionarySetValue(v36, @"address", v39);
  CFDictionarySetValue(v36, @"semantic", v38);
  CFArrayAppendValue(Mutable, v36);
  CFRelease(v38);
  CFRelease(v36);
  CFRelease(v39);
  CFRelease(v37);
  v40 = MEMORY[0x1E695E9D8];
  v41 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 84;
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v44 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v41, @"name", @"attenuationDistance");
  CFDictionarySetValue(v41, @"type", v42);
  CFDictionarySetValue(v41, @"address", v44);
  CFDictionarySetValue(v41, @"semantic", v43);
  CFArrayAppendValue(Mutable, v41);
  CFRelease(v43);
  CFRelease(v41);
  CFRelease(v44);
  CFRelease(v42);
  v45 = CFDictionaryCreateMutable(0, 4, v40, v27);
  v90 = 0;
  valuePtr = 1;
  v88 = a1;
  v89 = a1 + 308;
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v48 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v45, @"name", @"spotInnerAngle");
  CFDictionarySetValue(v45, @"type", v46);
  CFDictionarySetValue(v45, @"address", v48);
  CFDictionarySetValue(v45, @"semantic", v47);
  CFArrayAppendValue(Mutable, v45);
  CFRelease(v47);
  CFRelease(v45);
  CFRelease(v48);
  CFRelease(v46);
  v49 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = a1 + 304;
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v51 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v52 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v49, @"name", @"spotOuterAngle");
  CFDictionarySetValue(v49, @"type", v50);
  CFDictionarySetValue(v49, @"address", v52);
  CFDictionarySetValue(v49, @"semantic", v51);
  v53 = Mutable;
  CFArrayAppendValue(Mutable, v49);
  CFRelease(v51);
  CFRelease(v49);
  CFRelease(v52);
  CFRelease(v50);
  v54 = MEMORY[0x1E695E9D8];
  v55 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = v88 + 312;
  v56 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v57 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v58 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v55, @"name", @"spotFalloffExponent");
  CFDictionarySetValue(v55, @"type", v56);
  CFDictionarySetValue(v55, @"address", v58);
  CFDictionarySetValue(v55, @"semantic", v57);
  CFArrayAppendValue(v53, v55);
  CFRelease(v57);
  CFRelease(v55);
  CFRelease(v58);
  CFRelease(v56);
  v59 = CFDictionaryCreateMutable(0, 4, v54, v27);
  v90 = 0;
  valuePtr = 6;
  v89 = v88 + 264;
  v60 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v61 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v62 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v59, @"name", @"shadowBias");
  CFDictionarySetValue(v59, @"type", v60);
  CFDictionarySetValue(v59, @"address", v62);
  CFDictionarySetValue(v59, @"semantic", v61);
  CFArrayAppendValue(v53, v59);
  CFRelease(v61);
  CFRelease(v59);
  CFRelease(v62);
  CFRelease(v60);
  v63 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 7;
  v89 = v88 + 104;
  v64 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v65 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v66 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v63, @"name", @"shadowMapSize");
  CFDictionarySetValue(v63, @"type", v64);
  CFDictionarySetValue(v63, @"address", v66);
  CFDictionarySetValue(v63, @"semantic", v65);
  CFArrayAppendValue(v53, v63);
  CFRelease(v65);
  CFRelease(v63);
  CFRelease(v66);
  CFRelease(v64);
  v67 = MEMORY[0x1E695E9D8];
  v68 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v27);
  v90 = 0;
  valuePtr = 1;
  v89 = v88 + 112;
  v69 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v70 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v71 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v68, @"name", @"directionalExtent");
  CFDictionarySetValue(v68, @"type", v69);
  CFDictionarySetValue(v68, @"address", v71);
  CFDictionarySetValue(v68, @"semantic", v70);
  CFArrayAppendValue(v53, v68);
  CFRelease(v70);
  CFRelease(v68);
  CFRelease(v71);
  CFRelease(v69);
  v72 = v67;
  v73 = MEMORY[0x1E695E9E8];
  v74 = CFDictionaryCreateMutable(0, 4, v72, MEMORY[0x1E695E9E8]);
  v90 = 0;
  valuePtr = 1;
  v89 = v88 + 132;
  v75 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v76 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v77 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v74, @"name", @"shadowMaxSampleCount");
  CFDictionarySetValue(v74, @"type", v75);
  CFDictionarySetValue(v74, @"address", v77);
  CFDictionarySetValue(v74, @"semantic", v76);
  CFArrayAppendValue(v53, v74);
  CFRelease(v76);
  CFRelease(v74);
  CFRelease(v77);
  CFRelease(v75);
  v78 = MEMORY[0x1E695E9D8];
  v79 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v73);
  v90 = 0;
  valuePtr = 45;
  v89 = v88 + 240;
  v80 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v81 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v82 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v79, @"name", @"categoryBitMask");
  CFDictionarySetValue(v79, @"type", v80);
  CFDictionarySetValue(v79, @"address", v82);
  CFDictionarySetValue(v79, @"semantic", v81);
  CFArrayAppendValue(v53, v79);
  CFRelease(v81);
  CFRelease(v79);
  CFRelease(v82);
  CFRelease(v80);
  v83 = CFDictionaryCreateMutable(0, 4, v78, v73);
  v90 = 2;
  valuePtr = 5;
  v89 = v88 + 272;
  v84 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v85 = CFNumberCreate(0, kCFNumberSInt32Type, &v90);
  v86 = CFNumberCreate(0, kCFNumberLongType, &v89);
  CFDictionarySetValue(v83, @"name", @"gobo");
  CFDictionarySetValue(v83, @"type", v84);
  CFDictionarySetValue(v83, @"address", v86);
  CFDictionarySetValue(v83, @"semantic", v85);
  CFArrayAppendValue(v53, v83);
  CFRelease(v85);
  CFRelease(v83);
  CFRelease(v86);
  CFRelease(v84);
  return v53;
}

void sub_1AF1A011C(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 248) == __dst)
  {
    v10 = *__src;

    sub_1AF19C32C(a1, v10);
  }

  else if ((a1 + 84) == __dst)
  {
    v11 = *__src;

    sub_1AF19D7B8(a1, __dst, v11);
  }

  else if (a1 + 64 > __dst || a1 + 76 < __dst)
  {
    if (a1 + 336 > __dst || a1 + 384 < __dst)
    {

      memcpy(__dst, __src, __n);
    }

    else
    {
      if (*(a1 + 80) != 5 && (byte_1EB6585F0 & 1) == 0)
      {
        byte_1EB6585F0 = 1;
        v12 = sub_1AF0D5194(a1, __dst);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDAE78(v12);
        }
      }

      memcpy(__dst, __src, __n);
      sub_1AF19CDD8(a1, v13, v14, v15, v16, v17);
      sub_1AF19D368(a1, v18);
    }
  }

  else
  {
    v8 = sub_1AF163F54((a1 + 64));
    memcpy(__dst, __src, __n);
    if (v8 != sub_1AF163F54((a1 + 64)))
    {

      sub_1AF19AE38(a1, v9);
    }
  }
}

uint64_t sub_1AF1A02DC(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

float32_t sub_1AF1A0314(uint64_t a1, float32x4_t a2, float a3, float a4)
{
  v4 = a4 * a4;
  *a1 = 1049652923;
  *&v5 = a4;
  v6 = a4 * 0.488602512;
  v7 = v4;
  v8 = v7 * 0.946174696 + -0.315391565;
  v9 = (v7 * 1.86588166 + -1.119529) * *&v5;
  *(a1 + 4) = a3 * -0.4886;
  *(a1 + 8) = v6;
  v10.f32[0] = *&v5 * -1.09254843;
  *(a1 + 20) = v10.f32[0] * a3;
  *(a1 + 24) = v8;
  v11.f64[0] = v7 * -2.285229 + 0.457045799;
  *&v12 = (a2.f32[0] * a3) + (a2.f32[0] * a3);
  v13.i32[0] = a2.i32[0];
  v13.f32[1] = *&v12;
  v14 = (a2.f32[0] * a2.f32[0]) - (a3 * a3);
  *(a1 + 12) = vmul_f32(v13, 0x3F0BD8A1BEFA2A1CLL);
  v11.f64[1] = *&v5 * 1.44530572;
  *&v11.f64[0] = vcvt_f32_f64(v11);
  *(a1 + 44) = a3 * *v11.f64;
  *(a1 + 48) = v9;
  v5.i32[0] = a2.i32[0];
  v5.f32[1] = v14;
  *(a1 + 52) = vmul_f32(v5, *&v11.f64[0]);
  v10.f32[1] = v14;
  v10.i64[1] = __PAIR64__(v12, (v14 * a3) + (a2.f32[0] * *&v12));
  a2.i32[1] = 1057740961;
  a2.i32[2] = -1089008359;
  a2.i32[3] = HIDWORD(v11.f64[0]);
  *(a1 + 28) = vmulq_f32(v10, a2);
  a2.f32[0] = ((a2.f32[0] * v14) - (*&v12 * a3)) * -0.59004;
  *(a1 + 60) = a2.f32[0];
  return a2.f32[0];
}

uint64_t sub_1AF1A044C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

__CFArray *sub_1AF1A046C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v5, @"name", @"LOD");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v23 = 0;
  valuePtr = 1;
  v22 = a1 + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v9, @"name", @"threshold");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 0;
  valuePtr = 2;
  v22 = a1 + 76;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v13, @"name", @"thresholdType");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v23 = 0;
  valuePtr = 5;
  v22 = a1 + 48;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v17, @"name", @"worldRef");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  return Mutable;
}

uint64_t sub_1AF1A0878(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC58 != -1)
  {
    sub_1AFDDAEBC();
  }

  return qword_1ED73AC50;
}

double sub_1AF1A08B0()
{
  qword_1ED73AC50 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E7D80;
  unk_1ED72EE98 = xmmword_1F24E7D80;
  unk_1ED72EEA8 = *algn_1F24E7D90;
  qword_1ED72EEB8 = qword_1F24E7DA0;
  qword_1ED72EE80 = sub_1AF1A046C;
  return result;
}

uint64_t sub_1AF1A0910(const void *a1, uint64_t a2, float a3)
{
  v4 = a2;
  if (qword_1ED73AC58 != -1)
  {
    sub_1AFDDAEBC();
  }

  v6 = sub_1AF0D160C(qword_1ED73AC50, 0x40uLL);
  *(v6 + 76) = v4;
  *(v6 + 72) = a3;
  v7 = *(v6 + 64);
  if (v7 != a1)
  {
    if (v7)
    {
      CFRelease(v7);
      *(v6 + 64) = 0;
    }

    if (a1)
    {
      v8 = CFRetain(a1);
    }

    else
    {
      v8 = 0;
    }

    *(v6 + 64) = v8;
  }

  return v6;
}

uint64_t sub_1AF1A09B0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAED0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF1A09F8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAED0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 76);
}

float sub_1AF1A0A40(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAED0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

id sub_1AF1A0A8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

  return sub_1AF16C9A4(a1, a2);
}

uint64_t sub_1AF1A0AD8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC38 != -1)
  {
    sub_1AFDDAF48();
  }

  return qword_1ED73AC30;
}

double sub_1AF1A0B10()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AC30 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"doubleSided", 104, 3, 0);
  sub_1AF1DD02C(@"cullMode", 94, 4, 0);
  sub_1AF1DD02C(@"alphaCutoff", 88, 1, 0);
  sub_1AF1DD018();
  qword_1ED72ECD0 = sub_1AF1A1CC4;
  xmmword_1ED72ECC0 = xmmword_1F24E7DC8;
  unk_1ED72ED28 = xmmword_1F24E7DD8;
  result = *&xmmword_1F24E7DE8;
  unk_1ED72ECE8 = xmmword_1F24E7DE8;
  unk_1ED72ECF8 = unk_1F24E7DF8;
  qword_1ED72ED08 = qword_1F24E7E08;
  unk_1ED72ED10 = sub_1AF1A255C;
  return result;
}

uint64_t sub_1AF1A0BFC(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC38 != -1)
  {
    sub_1AFDDAF48();
  }

  v2 = sub_1AF0D160C(qword_1ED73AC30, 0x60uLL);
  *(v2 + 64) = sub_1AF165F90(v2);
  *(v2 + 104) = 0;
  *(v2 + 96) = 3840;
  *(v2 + 92) = 257;
  *(v2 + 88) = -1082130432;
  sub_1AF1A0C78(v2);
  return v2;
}

uint64_t sub_1AF1A0C78(uint64_t a1)
{
  sub_1AF1C4640(*(a1 + 80));
  *v5 = 0;
  *&v5[8] = 0;
  *&v5[13] = 0;
  sub_1AF1C40BC(v5);
  if (*(a1 + 104))
  {
    v2 = 2;
  }

  else
  {
    v2 = *(a1 + 94);
  }

  v5[0] = v2;
  v5[1] = *(a1 + 95);
  v5[2] = *(a1 + 93) != 0;
  v5[3] = *(a1 + 92) != 0;
  *v4 = *v5;
  *&v4[13] = *&v5[13];
  result = sub_1AF1C4354(v4);
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1AF1A0D14(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDAF5C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A0BFC(a1, a2);
  sub_1AF1A0D70(v2, v10);
  return v10;
}

uint64_t sub_1AF1A0D70(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  *(a2 + 104) = *(v3 + 104);
  *(a2 + 92) = *(v3 + 92);
  *(a2 + 97) = *(v3 + 97);
  *(a2 + 88) = *(v3 + 88);
  v19 = *(v3 + 64);
  v20 = *(a2 + 64);
  if (v19)
  {
    sub_1AF165938(v19, v20);
  }

  else if (v20)
  {
    CFRelease(*(a2 + 64));
    *(a2 + 64) = 0;
  }

  sub_1AF16D160(v3, a2);
  v22 = sub_1AF1A0EB0(v3, v21);
  sub_1AF1A0E54(a2, v22);
  return sub_1AF1A0C78(a2);
}

CFStringRef sub_1AF1A0E54(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, theString);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return sub_1AF16CC34(a1, theString);
}

uint64_t sub_1AF1A0EB0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF16CBEC(a1, a2);
}

uint64_t sub_1AF1A0EFC(uint64_t a1, uint64_t a2)
{
  v9 = xmmword_1AFE21160;
  v10 = xmmword_1AFE201A0;
  v3 = sub_1AF1A0BFC(a1, a2);
  sub_1AF165938(*(a1 + 64), *(v3 + 64));
  v4 = 0;
  v5 = *(v3 + 64);
  do
  {
    sub_1AF166480(v5, v4, 0);
    sub_1AF166340(*(v3 + 64), v4++, &v10);
    v5 = *(v3 + 64);
  }

  while (v4 != 18);
  sub_1AF165A7C(v5, 0);
  sub_1AF166480(*(v3 + 64), 1, 0);
  sub_1AF166340(*(v3 + 64), 1, &v9);
  sub_1AF166480(*(v3 + 64), 5, 0);
  sub_1AF166340(*(v3 + 64), 5, &v9);
  sub_1AF1A1014(v3, 1);
  sub_1AF1A10A4(v3, 0);
  sub_1AF1A1124(v3, 15);
  v7 = sub_1AF1A1224(a1, v6);
  sub_1AF1A11A4(v3, v7);
  return v3;
}

void sub_1AF1A1014(_BOOL8 result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDDB04C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 >= 2)
  {
    v11 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB0C4(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (*(v3 + 95) != v2)
  {
    *(v3 + 95) = v2;
    sub_1AF1A0C78(v3);
  }
}

void sub_1AF1A10A4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 96) != v2)
  {
    *(result + 96) = v2;
    v11 = sub_1AF1C3FAC(result, a2);
    sub_1AF1CF760(v11, 3, result, 0);
    sub_1AF1A0C78(result);
  }
}

void sub_1AF1A1124(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 97) != v2)
  {
    *(result + 97) = v2;
    v11 = sub_1AF1C3FAC(result, a2);
    sub_1AF1CF760(v11, 3, result, 0);
    sub_1AF1A0C78(result);
  }
}

void sub_1AF1A11A4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 104) != v2)
  {
    *(result + 104) = v2;
    v11 = sub_1AF1C3FAC(result, a2);
    sub_1AF1CF760(v11, 3, result, 0);
    sub_1AF1A0C78(result);
  }
}

uint64_t sub_1AF1A1224(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 104);
}

uint64_t sub_1AF1A1270(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF1A12B8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 64);
  }
}

void sub_1AF1A1310(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 94) != v2)
  {
    *(result + 94) = v2;
    sub_1AF1A0C78(result);
  }
}

uint64_t sub_1AF1A1378(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 94);
}

uint64_t sub_1AF1A13C0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 95);
}

uint64_t sub_1AF1A1408(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

float sub_1AF1A1450(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

BOOL sub_1AF1A1498(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88) >= 0.0;
}

void sub_1AF1A14E8(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 88);
  if (v12 != a3)
  {
    v13 = v12 < 0.0;
    *(result + 88) = a3;
    sub_1AF1A1580(result, a2);
    if ((((a3 >= 0.0) ^ v13) & 1) == 0)
    {
      v15 = sub_1AF1C3FAC(result, v14);
      sub_1AF1CF760(v15, 3, result, 0);
    }
  }
}

void sub_1AF1A1580(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(result + 100);
}

void sub_1AF1A15D0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 92) != v2)
  {
    *(result + 92) = v2;
    v11 = sub_1AF1C3FAC(result, a2);
    sub_1AF1CF760(v11, 3, result, 0);
    sub_1AF1A0C78(result);
  }
}

BOOL sub_1AF1A1650(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 92) != 0;
}

uint64_t sub_1AF1A16A0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 97);
}

void sub_1AF1A16E8(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 93) != v2)
  {
    *(result + 93) = v2;
    v11 = sub_1AF1C3FAC(result, a2);
    sub_1AF1CF760(v11, 3, result, 0);
    sub_1AF1A0C78(result);
  }
}

BOOL sub_1AF1A1768(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 93) != 0;
}

uint64_t sub_1AF1A17B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1A1828(a1, a2);
  if (v3)
  {

    return sub_1AF1D5EB4(v3, v4);
  }

  else
  {
    v6 = sub_1AF1656E4(*(a1 + 64), 4, 0);
    v7 = sub_1AF166FE0(v6);
    result = 0;
    if (v7)
    {
      return *(a1 + 96) == 0;
    }
  }

  return result;
}

uint64_t sub_1AF1A1828(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

uint64_t sub_1AF1A1870(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = *(a1 + 96);
  if (v5 <= 2)
  {
    if (!*(a1 + 96))
    {
      if (!a2 || (v7 = sub_1AF1656E4(*(a1 + 64), 4, 0), a1 = sub_1AF166FE0(v7), (a1 & 1) == 0))
      {

        return sub_1AF15BBC4(a1, a2);
      }

      return sub_1AF15BC40(a1, a2);
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {

        return sub_1AF15BA5C(a1, a2);
      }

LABEL_25:
      v8 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        sub_1AFDDB22C(v8);
      }

      return sub_1AF15BBC4(a1, a2);
    }

    if (!*(a1 + 64) && (v10 = sub_1AF0D5194(a1, a2), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT), a1))
    {
      sub_1AFDDB13C(v10, a2, v11, v12, v13, v14, v15, v16);
      if (!a5)
      {
LABEL_36:
        v17 = sub_1AF0D5194(a1, a2);
        a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
        if (a1)
        {
          sub_1AFDDB1B4(v17, a2, v18, v19, v20, v21, v22, v23);
        }
      }
    }

    else if (!a5)
    {
      goto LABEL_36;
    }

    return sub_1AF15BBC4(a1, a2);
  }

  if (*(a1 + 96) > 4u)
  {
    if (v5 == 5)
    {

      return sub_1AF15BDA8(a1, a2);
    }

    if (v5 == 6)
    {

      return sub_1AF15BD2C(a1, a2);
    }

    goto LABEL_25;
  }

  if (v5 != 3)
  {
    if (v5 == 4)
    {
      if (a4)
      {

        return sub_1AF15BB4C(a1, a2);
      }

      else
      {

        return sub_1AF15BAD4(a1, a2);
      }
    }

    goto LABEL_25;
  }

  return sub_1AF15BCB4(a1, a2);
}

void sub_1AF1A1A4C(void *a1, uint64_t a2)
{
  v3 = sub_1AF1C3FAC(a1, a2);
  sub_1AF1CF760(v3, 3, a1, 0);
  sub_1AF1A1580(a1, v4);
  v5 = a1[8];

  sub_1AF1BE334(@"kCFXShadableDidChange", v5, 0, 1u);
}

void sub_1AF1A1AB0(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[9];
  if (v11 != cf)
  {
    if (v11)
    {
      CFRelease(v11);
      a1[9] = 0;
    }

    if (cf)
    {
      v12 = CFRetain(cf);
    }

    else
    {
      v12 = 0;
    }

    a1[9] = v12;
  }

  sub_1AF1A1A4C(a1, cf);
}

uint64_t sub_1AF1A1B38(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 100);
}

id sub_1AF1A1B84(uint64_t a1)
{
  sub_1AF1BE334(@"kCFXNotificationMaterialWillDie", a1, 0, 1u);
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 72) = 0;
  }

  sub_1AF1C4640(*(a1 + 80));

  return sub_1AF16C9A4(a1, v4);
}

__CFString *sub_1AF1A1C00(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v5 = sub_1AF16CBEC(a1, v4);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | %@, ", v3, a1, v5);
  v7 = sub_1AF1A12B8(a1, v6);
  if (v7)
  {
    CFStringAppendFormat(Mutable, 0, @"common profile %@", v7);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"custom %@", a1[9]);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1A1CC4(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v47 = 1;
  valuePtr = 5;
  v46 = sub_1AF1A0EB0(a1, v6);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v9 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v5, @"name", @"name");
  CFDictionarySetValue(v5, @"type", v7);
  CFDictionarySetValue(v5, @"address", v9);
  CFDictionarySetValue(v5, @"semantic", v8);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v8);
  CFRelease(v5);
  CFRelease(v9);
  CFRelease(v7);
  v10 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v47 = 1;
  valuePtr = 5;
  v46 = sub_1AF1A1270(a1, v11);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v14 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v10, @"name", @"commonProfile");
  CFDictionarySetValue(v10, @"type", v12);
  CFDictionarySetValue(v10, @"address", v14);
  CFDictionarySetValue(v10, @"semantic", v13);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v13);
  CFRelease(v10);
  CFRelease(v14);
  CFRelease(v12);
  v15 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v47 = 0;
  valuePtr = 4;
  v46 = a1 + 94;
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v18 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v15, @"name", @"cullMode");
  CFDictionarySetValue(v15, @"type", v16);
  CFDictionarySetValue(v15, @"address", v18);
  CFDictionarySetValue(v15, @"semantic", v17);
  CFArrayAppendValue(Mutable, v15);
  CFRelease(v17);
  CFRelease(v15);
  CFRelease(v18);
  CFRelease(v16);
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v47 = 0;
  valuePtr = 4;
  v46 = a1 + 95;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v19, @"name", @"fillMode");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = MEMORY[0x1E695E9D8];
  v24 = MEMORY[0x1E695E9E8];
  v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v47 = 0;
  valuePtr = 1;
  v46 = a1 + 88;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v28 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v25, @"name", @"alphaCutoff");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = CFDictionaryCreateMutable(0, 4, v23, v24);
  v47 = 0;
  valuePtr = 3;
  v46 = a1 + 93;
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v32 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v29, @"name", @"enableReadsFromDepthBuffer");
  CFDictionarySetValue(v29, @"type", v30);
  CFDictionarySetValue(v29, @"address", v32);
  CFDictionarySetValue(v29, @"semantic", v31);
  CFArrayAppendValue(Mutable, v29);
  CFRelease(v31);
  CFRelease(v29);
  CFRelease(v32);
  CFRelease(v30);
  v33 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v24);
  v47 = 0;
  valuePtr = 3;
  v46 = a1 + 92;
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v36 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v33, @"name", @"enableWriteInDepthBuffer");
  CFDictionarySetValue(v33, @"type", v34);
  CFDictionarySetValue(v33, @"address", v36);
  CFDictionarySetValue(v33, @"semantic", v35);
  CFArrayAppendValue(Mutable, v33);
  CFRelease(v35);
  CFRelease(v33);
  CFRelease(v36);
  CFRelease(v34);
  v37 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v24);
  v47 = 0;
  valuePtr = 3;
  v46 = a1 + 104;
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v40 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v37, @"name", @"doubleSided");
  CFDictionarySetValue(v37, @"type", v38);
  CFDictionarySetValue(v37, @"address", v40);
  CFDictionarySetValue(v37, @"semantic", v39);
  CFArrayAppendValue(Mutable, v37);
  CFRelease(v39);
  CFRelease(v37);
  CFRelease(v40);
  CFRelease(v38);
  v41 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v47 = 0;
  valuePtr = 5;
  v46 = a1 + 48;
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &v47);
  v44 = CFNumberCreate(0, kCFNumberLongType, &v46);
  CFDictionarySetValue(v41, @"name", @"worldRef");
  CFDictionarySetValue(v41, @"type", v42);
  CFDictionarySetValue(v41, @"address", v44);
  CFDictionarySetValue(v41, @"semantic", v43);
  CFArrayAppendValue(Mutable, v41);
  CFRelease(v43);
  CFRelease(v41);
  CFRelease(v44);
  CFRelease(v42);
  return Mutable;
}

uint64_t sub_1AF1A255C(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1AF1A2594(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 88) == __dst)
  {
    sub_1AF1A14E8(a1, __dst, *__src);
  }

  else
  {
    memcpy(__dst, __src, __n);
  }
}

const __CFDictionary *sub_1AF1A25B8(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF16CEA0(a1, @"kCoreEntityKey");
}

void sub_1AF1A2610(void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB04C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1C3FAC(a1, a2);
  v13 = sub_1AF1A25B8(a1, v12);
  if (v11 && v13)
  {
    sub_1AF1C3A90(v13, v11);
  }

  sub_1AF16CF28(a1, @"kCoreEntityKey", a2, v11 != 0);
  if (a2)
  {
    if (v11)
    {
      sub_1AF1C3CB4(a2, v11);
    }
  }
}

uint64_t sub_1AF1A26B8(const void *a1, uint64_t a2)
{
  result = sub_1AF1C3858(a1, a2);
  if (result)
  {
    v4 = *(a2 + 16);

    return v4(a2, result);
  }

  return result;
}

void sub_1AF1A270C(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 152) = 0;
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    v4 = a1 + 129;
    v5 = 9;
    do
    {
      *(v4 - 1) = 255;
      v4 += 2;
      --v5;
    }

    while (v5);
    CFRelease(v3);
    *(a1 + 120) = 0;
  }
}

void sub_1AF1A2768(uint64_t a1)
{
  v2 = a1 + 120;
  Count = CFArrayGetCount(*(a1 + 120));
  free(*(a1 + 160));
  *(a1 + 160) = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);

  sub_1AF1A27E0(a1, v2);
}

void sub_1AF1A27E0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *&v36[5] = *MEMORY[0x1E69E9840];
  v5 = a2 + 8;
  do
  {
    *(a2 + v4 + 8) = 255;
    v4 += 2;
  }

  while (v4 != 18);
  *(a1 + 208) &= ~0x80u;
  Count = CFArrayGetCount(*a2);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    v9 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v8);
      v12 = sub_1AF1AE3D8(ValueAtIndex, v11);
      v14 = v12;
      if (v12 == v9)
      {
        if (!v9)
        {
          if (*(a2 + 9))
          {
            v15 = sub_1AF0D5194(v12, v13);
            v12 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
            if (v12)
            {
              sub_1AFDDB2F8(v35, v36, v15);
            }
          }
        }

        v16 = v5 + 2 * v9;
        v17 = *(v16 + 1) + 1;
        *(v16 + 1) = v17;
        if (v9 != 3 && v17 >= 2u)
        {
          v18 = sub_1AF0D5194(v12, v13);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = sub_1AF16CBEC(a1, v13);
            v20 = sub_1AF1ADAF8(v9);
            *buf = 138412546;
            v32 = v19;
            v33 = 2112;
            v34 = v20;
            _os_log_impl(&dword_1AF0CE000, v18, OS_LOG_TYPE_DEFAULT, "Warning: Mesh '%@' : sources of redundant semantic '%@' will be ignored in rendering", buf, 0x16u);
          }
        }
      }

      else
      {
        if (v12 <= v9)
        {
          v21 = sub_1AF0D5194(v12, v13);
          v12 = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);
          if (v12)
          {
            sub_1AFDDB270(v29, &v30, v21);
          }
        }

        v22 = (v5 + 2 * v14);
        if (*v22 != 255)
        {
          v23 = sub_1AF0D5194(v12, v13);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDB2B4(v27, &v28, v23);
          }
        }

        *v22 = v8;
        v22[1] = 1;
        v9 = v14;
      }

      if (v14 == 2)
      {
        v24 = sub_1AF1AEBF4(ValueAtIndex, v13);
        v25 = *(a1 + 208);
        v26 = v25 & 0x80;
        if (v24)
        {
          v26 = 0x80;
        }

        *(a1 + 208) = v26 & 0x80 | v25 & 0x7F;
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

void *sub_1AF1A2A5C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!*(a1 + 120))
  {
    v3 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB33C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!*(v2 + 152))
  {
    v10 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB3B4(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(v2 + 72);
  v19 = *(v2 + 120);
  if (v18 != v19)
  {
    if (v18)
    {
      CFRelease(*(v2 + 72));
      *(v2 + 72) = 0;
      v19 = *(v2 + 120);
    }

    if (v19)
    {
      v19 = CFRetain(v19);
    }

    *(v2 + 72) = v19;
  }

  v20 = *(v2 + 104);
  v21 = *(v2 + 152);
  if (v20 != v21)
  {
    if (v20)
    {
      CFRelease(*(v2 + 104));
      *(v2 + 104) = 0;
      v21 = *(v2 + 152);
    }

    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *(v2 + 104) = v21;
  }

  *(v2 + 80) = *(v2 + 128);
  *(v2 + 96) = *(v2 + 144);
  Count = CFArrayGetCount(*(v2 + 120));
  free(*(v2 + 112));
  v23 = malloc_type_malloc(Count, 0x4F82645FuLL);
  *(v2 + 112) = v23;
  return memcpy(v23, *(v2 + 160), Count);
}

void sub_1AF1A2B70(uint64_t a1)
{
  *(a1 + 208) &= ~4u;
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = sub_1AF1A2CEC;
  v1[3] = &unk_1E7A7B380;
  v1[4] = a1;
  sub_1AF1A2BEC(a1, 0, v1);
}

void sub_1AF1A2BEC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    sub_1AF1AFDA8(result, a2);
    v5 = result + 120;
  }

  else if (a2)
  {
    v6 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = 0;
  }

  else
  {
    v5 = result + 72;
  }

  for (i = 0; i != 9; ++i)
  {
    v15 = (v5 + 8 + 2 * i);
    v16 = *v15;
    if (v16 != -1)
    {
      v17 = v15[1];
      if (v15[1])
      {
        v18 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v5, v16 + v18);
          (*(a3 + 16))(a3, ValueAtIndex, i, v18, *(v16 + v18 + *(v5 + 40)));
          ++v18;
        }

        while (v17 != v18);
      }
    }
  }
}

uint64_t sub_1AF1A2CEC(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1ADBDC(a2);
  v4 = *(a1 + 32);
  v5 = *(v4 + 208);
  if (result | ((v5 & 4) >> 2))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 208) = v6 | v5 & 0xFB;
  return result;
}

uint64_t sub_1AF1A2D3C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC18 != -1)
  {
    sub_1AFDDB4A4();
  }

  return qword_1ED73AC10;
}

double sub_1AF1A2D74()
{
  qword_1ED73AC10 = _CFRuntimeRegisterClass();
  qword_1ED72EBF8 = sub_1AF1A61C0;
  unk_1ED72EC10 = xmmword_1F24E7E30;
  unk_1ED72EC20 = unk_1F24E7E40;
  qword_1ED72EC30 = qword_1F24E7E50;
  unk_1ED72EC38 = sub_1AF1A65CC;
  qword_1ED72EC40 = sub_1AF1A6608;
  result = *&xmmword_1F24E7E58;
  unk_1ED72EC00 = xmmword_1F24E7E58;
  return result;
}

uint64_t sub_1AF1A2E00(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AC18 != -1)
  {
    sub_1AFDDB4A4();
  }

  v2 = sub_1AF0D160C(qword_1ED73AC10, 0xD0uLL);
  v3 = *MEMORY[0x1E695E480];
  v4 = MEMORY[0x1E695E9C0];
  *(v2 + 72) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  *(v2 + 104) = CFArrayCreateMutable(v3, 0, v4);
  *(v2 + 120) = 0;
  *(v2 + 152) = 0;
  *(v2 + 208) = *(v2 + 208) & 0x87 | 0x18;
  sub_1AF1A27E0(v2, v2 + 72);
  return v2;
}

uint64_t sub_1AF1A2EB8(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1A2E00(a1, a2);
  *(result + 208) |= 1u;
  return result;
}

uint64_t sub_1AF1A2EDC(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB4B8(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A2E00(a1, a2);
  sub_1AF1A2F3C(v2, v10, 0);
  return v10;
}

void sub_1AF1A2F3C(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v6, a2, v7, v8, v9, v10, v11, v12);
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
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  sub_1AF1A4A54(v5, a2, a3);
  if (a3)
  {
    v22 = sub_1AF1A3CCC(v5, v21);
    Mutable = CFArrayCreateMutable(0, v22, MEMORY[0x1E695E9C0]);
    if (v22 >= 1)
    {
      for (i = 0; i != v22; ++i)
      {
        v25 = sub_1AF1A3D1C(v5, i, 0);
        v27 = sub_1AF1A6C8C(v25, v26);
        CFArrayAppendValue(Mutable, v27);
        CFRelease(v27);
      }
    }

    sub_1AF1A5208(a2, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    v28 = *(a2 + 104);
    if (v28)
    {
      CFRelease(v28);
      *(a2 + 104) = 0;
    }

    v29 = *(a2 + 152);
    if (v29)
    {
      CFRelease(v29);
      *(a2 + 152) = 0;
    }

    v30 = *MEMORY[0x1E695E480];
    *(a2 + 104) = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(v5 + 104));
    v31 = *(v5 + 152);
    if (v31)
    {
      MutableCopy = CFArrayCreateMutableCopy(v30, 0, v31);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(*MEMORY[0x1E695E498], 0, MEMORY[0x1E695E9C0]);
    }

    *(a2 + 152) = MutableCopy;
  }

  *(a2 + 208) = *(a2 + 208) & 0x87 | *(v5 + 208) & 0x78;
  sub_1AF16D160(v5, a2);
}

uint64_t sub_1AF1A30F0(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB4B8(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A2E00(a1, a2);
  sub_1AF1A2F3C(v2, v10, 1);
  return v10;
}

uint64_t sub_1AF1A3150(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB4B8(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = sub_1AF1A2E00(a1, a2);
  sub_1AF1A2F3C(v2, v10, 1);
  sub_1AF1AFDA8(v10, 1);
  sub_1AF1A2A5C(v10, v11);
  return v10;
}

void sub_1AF1A31C4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 192);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 200);
  if (v12)
  {
    free(v12);
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) &= ~2u;
}

uint64_t sub_1AF1A3234(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 200);
  if (!v14)
  {
    v15 = sub_1AF1A4604(a1, 0, 0, 0);
    if (v15)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      sub_1AF1AE1A8(v15, v16, &v31);
      v18 = v32;
      if (v32)
      {
        v19 = 0uLL;
        if (v31)
        {
          if (BYTE7(v32) == 1)
          {
            v20 = 0;
            v19.i64[0] = 0x80000000800000;
            v19.i64[1] = 0x80000000800000;
            v21 = vnegq_f32(v19);
            do
            {
              v22 = v31 + v20;
              v23.i64[0] = *v22;
              v23.i64[1] = *(v22 + 8);
              v21 = vminnmq_f32(v21, v23);
              v19 = vmaxnmq_f32(v19, v23);
              v20 += BYTE6(v32);
              --v18;
            }

            while (v18);
          }

          else
          {
            v24 = 0;
            v19.i64[0] = 0x80000000800000;
            v19.i64[1] = 0x80000000800000;
            v21 = vnegq_f32(v19);
            do
            {
              v28 = v19;
              v30 = v21;
              *v17.i64 = sub_1AF279750(BYTE4(v32), (v31 + v24 * BYTE6(v32)), v17, v21.f32[0], v19.f32[0]);
              v21 = vminnmq_f32(v30, v17);
              v19 = vmaxnmq_f32(v28, v17);
              ++v24;
            }

            while (v24 < v32);
          }

          v29 = v21;
        }
      }

      else
      {
        v19 = 0uLL;
      }

      v27 = v19;
    }

    else
    {
      v27 = 0u;
      v29 = 0u;
    }

    v25 = sub_1AF288058(0x20uLL);
    *(a1 + 200) = v25;
    *v25 = v29;
    *(*(a1 + 200) + 16) = v27;
    v14 = *(a1 + 200);
  }

  *a2 = *v14;
  *a3 = *(*(a1 + 200) + 16);
  return 1;
}

uint64_t sub_1AF1A33B8(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 192);
  if (!v12)
  {
    v33 = 0uLL;
    v38.i32[2] = 0;
    v38.i64[0] = 0;
    v37.i32[2] = 0;
    v37.i64[0] = 0;
    sub_1AF1A3234(a1, &v38, &v37);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v32 = vmulq_f32(vaddq_f32(v37, v38), v13);
    v36 = v32;
    v14 = sub_1AF1A4604(a1, 0, 0, 0);
    if (v14)
    {
      v34 = 0u;
      v35 = 0u;
      sub_1AF1AE1A8(v14, v15, &v34);
      if (!v34)
      {
        return 0;
      }

      v19 = v35;
      if (BYTE7(v35) == 1)
      {
        if (v35)
        {
          v20 = 0;
          v21 = 0.0;
          do
          {
            v22 = v34 + v20;
            v17.i64[0] = *v22;
            v17.i32[2] = *(v22 + 8);
            v23 = vsubq_f32(v17, v32);
            v17 = vmulq_f32(v23, v23);
            v24 = vaddv_f32(*v17.f32);
            if ((v17.f32[2] + v24) > v21)
            {
              v21 = v17.f32[2] + v24;
            }

            v20 += BYTE6(v35);
            --v19;
          }

          while (v19);
        }

        else
        {
          v21 = 0.0;
        }

        v25 = sqrtf(v21);
      }

      else
      {
        if (v35)
        {
          v27 = 0;
          v28 = 0.0;
          do
          {
            *v29.i64 = sub_1AF279750(BYTE4(v35), (v34 + v27 * BYTE6(v35)), v16, v17.f32[0], v18);
            v30 = vsubq_f32(v29, v32);
            v16 = vmulq_f32(v30, v30);
            v17.f32[0] = vaddv_f32(*v16.f32);
            v16.f32[0] = v16.f32[2] + v17.f32[0];
            if ((v16.f32[2] + v17.f32[0]) > v28)
            {
              v28 = v16.f32[2] + v17.f32[0];
            }

            ++v27;
          }

          while (v27 < v35);
        }

        else
        {
          v28 = 0.0;
        }

        v25 = sqrtf(v28);
      }
    }

    else
    {
      v25 = 0.0;
    }

    sub_1AF1DA1D0(&v33, &v36, v25);
    v31 = sub_1AF288058(0x10uLL);
    *(a1 + 192) = v31;
    *v31 = v33;
    v12 = *(a1 + 192);
  }

  *a2 = *v12;
  return 1;
}

uint64_t sub_1AF1A359C(uint64_t result, uint64_t a2)
{
  v73 = *MEMORY[0x1E69E9840];
  if ((*(result + 208) & 2) == 0)
  {
    v2 = result;
    result = sub_1AF1A3CCC(result, a2);
    if (result >= 1)
    {
      v3 = result;
      v4 = 0;
      while (1)
      {
        v5 = sub_1AF1A3D1C(v2, v4, 0);
        v64 = 0u;
        v65 = 0u;
        memset(v63, 0, sizeof(v63));
        sub_1AF1A767C(v5, 0, v63);
        if (*&v63[0])
        {
          if (sub_1AF1A7EF0(v5) == v5)
          {
            break;
          }
        }

        v5[11] = 0u;
        v5[12] = 0u;
        result = sub_1AF1A510C(v2, v4);
        if (result)
        {
          *(result + 176) = 0u;
          *(result + 192) = 0u;
        }

LABEL_8:
        if (++v4 == v3)
        {
          goto LABEL_88;
        }
      }

      v7 = sub_1AF1A70CC(v5, v6);
      v9 = v7;
      if (*(&v63[0] + 1) % DWORD2(v65) < BYTE3(v64))
      {
        v10 = *(&v63[0] + 1) / BYTE3(v64);
      }

      else
      {
        v10 = *(&v63[0] + 1) / BYTE3(v64) + 1;
      }

      if (v10 >= v7)
      {
        v10 = v7;
      }

      else
      {
        v11 = sub_1AF0D5194(v7, v8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219008;
          *&buf[4] = *(&v63[0] + 1);
          *&buf[12] = 1024;
          *&buf[14] = v9;
          *&buf[18] = 2048;
          *&buf[20] = *(&v65 + 1);
          *&buf[28] = 1024;
          *&buf[30] = v10;
          v71 = 1024;
          v72 = v9;
          _os_log_error_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - element has insufficient data (length %zu for count %d and stride %zu) ; count capped to %d (was %d)", buf, 0x28u);
        }
      }

      result = sub_1AF1A4604(v2, 0, 0, 0);
      if (!result)
      {
        goto LABEL_8;
      }

      memset(buf, 0, 32);
      result = sub_1AF1AE1A8(result, v12, buf);
      if (!*buf)
      {
        goto LABEL_8;
      }

      v15 = *&buf[8] / buf[21];
      if (*&buf[8] % buf[22] >= buf[21])
      {
        LODWORD(v15) = v15 + 1;
      }

      if (*&buf[16] >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = *&buf[16];
      }

      if (buf[23] == 1)
      {
        if (BYTE3(v64) == 4)
        {
          if (v10)
          {
            v39 = 0;
            v40 = *&v63[0];
            v19.i64[0] = 0x80000000800000;
            v19.i64[1] = 0x80000000800000;
            v20 = vnegq_f32(v19);
            do
            {
              v41 = *(v40 + 4 * v65 + 4 * *(&v65 + 1) * v39);
              if (v41 >= v16)
              {
                v53 = v20;
                v60 = v19;
                v44 = sub_1AF0D5194(result, v13);
                result = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);
                if (result)
                {
                  *v66 = 67109376;
                  v67 = v41;
                  v68 = 1024;
                  v69 = v16;
                  _os_log_error_impl(&dword_1AF0CE000, v44, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v66, 0xEu);
                }

                v20 = v53;
                v19 = v60;
              }

              else
              {
                v42 = v41 * buf[22];
                v43.i64[0] = *(*buf + v42);
                v43.i64[1] = *(*buf + v42 + 8);
                v20 = vminnmq_f32(v20, v43);
                v19 = vmaxnmq_f32(v19, v43);
              }

              ++v39;
            }

            while (v10 != v39);
            goto LABEL_86;
          }
        }

        else if (BYTE3(v64) == 2)
        {
          if (v10)
          {
            v29 = 0;
            v30 = *&v63[0];
            v19.i64[0] = 0x80000000800000;
            v19.i64[1] = 0x80000000800000;
            v20 = vnegq_f32(v19);
            do
            {
              v31 = *(v30 + 2 * v65 + 2 * *(&v65 + 1) * v29);
              if (v16 <= v31)
              {
                v51 = v20;
                v58 = v19;
                v34 = sub_1AF0D5194(result, v13);
                result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
                if (result)
                {
                  *v66 = 67109376;
                  v67 = v31;
                  v68 = 1024;
                  v69 = v16;
                  _os_log_error_impl(&dword_1AF0CE000, v34, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v66, 0xEu);
                }

                v20 = v51;
                v19 = v58;
              }

              else
              {
                v32 = *buf + buf[22] * *(v30 + 2 * v65 + 2 * *(&v65 + 1) * v29);
                v33.i64[0] = *v32;
                v33.i64[1] = *(v32 + 8);
                v20 = vminnmq_f32(v20, v33);
                v19 = vmaxnmq_f32(v19, v33);
              }

              ++v29;
            }

            while (v10 != v29);
            goto LABEL_86;
          }
        }

        else if (BYTE3(v64) == 1 && v10)
        {
          v17 = 0;
          v18 = *&v63[0];
          v19.i64[0] = 0x80000000800000;
          v19.i64[1] = 0x80000000800000;
          v20 = vnegq_f32(v19);
          do
          {
            v21 = *(v18 + v65 + *(&v65 + 1) * v17);
            if (v16 <= v21)
            {
              v49 = v20;
              v56 = v19;
              v24 = sub_1AF0D5194(result, v13);
              result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *v66 = 67109376;
                v67 = v21;
                v68 = 1024;
                v69 = v16;
                _os_log_error_impl(&dword_1AF0CE000, v24, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v66, 0xEu);
              }

              v20 = v49;
              v19 = v56;
            }

            else
            {
              v22 = *buf + buf[22] * *(v18 + v65 + *(&v65 + 1) * v17);
              v23.i64[0] = *v22;
              v23.i64[1] = *(v22 + 8);
              v20 = vminnmq_f32(v20, v23);
              v19 = vmaxnmq_f32(v19, v23);
            }

            ++v17;
          }

          while (v10 != v17);
          goto LABEL_86;
        }
      }

      else if (BYTE3(v64) == 4)
      {
        if (v10)
        {
          v45 = 0;
          v46 = *&v63[0];
          v19.i64[0] = 0x80000000800000;
          v19.i64[1] = 0x80000000800000;
          v20 = vnegq_f32(v19);
          do
          {
            v54 = v20;
            v61 = v19;
            v47 = *(v46 + 4 * v65 + 4 * *(&v65 + 1) * v45);
            if (v47 >= v16)
            {
              v48 = sub_1AF0D5194(result, v13);
              result = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *v66 = 67109376;
                v67 = v47;
                v68 = 1024;
                v69 = v16;
                _os_log_error_impl(&dword_1AF0CE000, v48, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v66, 0xEu);
              }

              v20 = v54;
              v19 = v61;
            }

            else
            {
              *v14.i64 = sub_1AF279750(buf[20], (*buf + v47 * buf[22]), v14, v19.f32[0], v20.f32[0]);
              v20 = vminnmq_f32(v54, v14);
              v19 = vmaxnmq_f32(v61, v14);
            }

            ++v45;
          }

          while (v10 != v45);
          goto LABEL_86;
        }
      }

      else if (BYTE3(v64) == 2)
      {
        if (v10)
        {
          v35 = 0;
          v36 = *&v63[0];
          v19.i64[0] = 0x80000000800000;
          v19.i64[1] = 0x80000000800000;
          v20 = vnegq_f32(v19);
          do
          {
            v52 = v20;
            v59 = v19;
            v37 = *(v36 + 2 * v65 + 2 * *(&v65 + 1) * v35);
            if (v16 <= v37)
            {
              v38 = sub_1AF0D5194(result, v13);
              result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *v66 = 67109376;
                v67 = v37;
                v68 = 1024;
                v69 = v16;
                _os_log_error_impl(&dword_1AF0CE000, v38, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v66, 0xEu);
              }

              v20 = v52;
              v19 = v59;
            }

            else
            {
              *v14.i64 = sub_1AF279750(buf[20], (*buf + buf[22] * v37), v14, v19.f32[0], v20.f32[0]);
              v20 = vminnmq_f32(v52, v14);
              v19 = vmaxnmq_f32(v59, v14);
            }

            ++v35;
          }

          while (v10 != v35);
          goto LABEL_86;
        }
      }

      else if (BYTE3(v64) == 1 && v10)
      {
        v25 = 0;
        v26 = *&v63[0];
        v19.i64[0] = 0x80000000800000;
        v19.i64[1] = 0x80000000800000;
        v20 = vnegq_f32(v19);
        do
        {
          v50 = v20;
          v57 = v19;
          v27 = *(v26 + v65 + *(&v65 + 1) * v25);
          if (v16 <= v27)
          {
            v28 = sub_1AF0D5194(result, v13);
            result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *v66 = 67109376;
              v67 = v27;
              v68 = 1024;
              v69 = v16;
              _os_log_error_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_ERROR, "Error: __MeshComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v66, 0xEu);
            }

            v20 = v50;
            v19 = v57;
          }

          else
          {
            *v14.i64 = sub_1AF279750(buf[20], (*buf + buf[22] * v27), v14, v19.f32[0], v20.f32[0]);
            v20 = vminnmq_f32(v50, v14);
            v19 = vmaxnmq_f32(v57, v14);
          }

          ++v25;
        }

        while (v10 != v25);
        goto LABEL_86;
      }

      v19.i64[0] = 0x80000000800000;
      v19.i64[1] = 0x80000000800000;
      v20 = vnegq_f32(v19);
LABEL_86:
      v55 = v20;
      v62 = v19;
      v5[11] = v20;
      v5[12] = v19;
      result = sub_1AF1A510C(v2, v4);
      if (result)
      {
        *(result + 176) = v55;
        *(result + 192) = v62;
      }

      goto LABEL_8;
    }

LABEL_88:
    *(v2 + 208) |= 2u;
  }

  return result;
}

const __CFArray *sub_1AF1A3CCC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = *(a1 + 104);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const void *sub_1AF1A3D1C(_BOOL8 a1, CFIndex idx, int a3)
{
  v5 = a1;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, idx);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB530(v6, idx, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!*(v5 + 104))
  {
    v13 = sub_1AF0D5194(a1, idx);
    a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB5A8(v13, idx, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a3 == 1)
  {
    sub_1AF1AFDA8(v5, 1);
    v20 = *(v5 + 152);
    return CFArrayGetValueAtIndex(v20, idx);
  }

  if (!a3)
  {
    v20 = *(v5 + 104);
    return CFArrayGetValueAtIndex(v20, idx);
  }

  v22 = sub_1AF0D5194(a1, idx);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDB620(v22, v23, v24, v25, v26, v27, v28, v29);
  }

  return 0;
}

void sub_1AF1A3DEC(_BOOL8 a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = a1;
  if (!a1)
  {
    v8 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB530(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (a4 == 1)
  {
    sub_1AF1AFDA8(v7, 1);
    v15 = v7 + 15;
  }

  else if (a4)
  {
    v16 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v15 = 0;
  }

  else
  {
    v15 = v7 + 9;
  }

  v24 = v15 + 2 * v6;
  v27 = v24[8];
  v26 = v24 + 8;
  v25 = v27;
  if (v27 != -1 && v26[1] > a3)
  {
    v28 = v25 + a3;
    Count = CFArrayGetCount(*v15);
    v31 = Count;
    if (v28 >= Count)
    {
      v32 = sub_1AF0D5194(Count, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDB698(v32, v33, v34, v35, v36, v37, v38, v39);
      }
    }

    CFArrayRemoveValueAtIndex(*v15, v28);
    v40 = v7[20];
    if (v40)
    {
      free(v40);
      v7[20] = 0;
    }

    if (a4)
    {
      sub_1AF1A27E0(v7, v15);
    }

    else
    {
      if (v31 - 1 > v28)
      {
        do
        {
          *(v7[14] + v28) = *(v7[14] + v28 + 1);
          ++v28;
        }

        while (v31 - 1 != v28);
      }

      sub_1AF1A27E0(v7, v15);
      sub_1AF1A2B70(v7);
      sub_1AF1A270C(v7);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshWillDie", v7, 0, 1u);
  }
}

uint64_t sub_1AF1A3F8C(_BOOL8 a1, const void *a2, char a3, int a4, uint64_t a5)
{
  v9 = a1;
  if (!a1 && (v10 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDB530(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDD0208(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (a5 == 1)
  {
    sub_1AF1AFDA8(v9, 1);
    v24 = (v9 + 120);
  }

  else if (a5)
  {
    v25 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v25, a2, v26, v27, v28, v29, v30, v31);
    }

    v24 = 0;
  }

  else
  {
    v24 = (v9 + 72);
  }

  v32 = sub_1AF1AE3D8(a2, a2);
  v33 = v32;
  if (v32)
  {
    if (v32 < 0)
    {
LABEL_24:
      v42 = 0;
      goto LABEL_26;
    }

LABEL_21:
    v38 = v24 + 1;
    v39 = v33;
    while (1)
    {
      v40 = *(v38 + 2 * v39);
      if (v40 != -1)
      {
        break;
      }

      v41 = v39--;
      if (v41 < 1)
      {
        goto LABEL_24;
      }
    }

    v42 = *(v38 + 2 * v39 + 1) + v40;
LABEL_26:
    Count = CFArrayGetCount(*v24);
    CFArrayInsertValueAtIndex(*v24, v42, a2);
    if (a5)
    {
      sub_1AF1A2768(v9);
      if (!a4)
      {
        return *(v24 + 2 * v33 + 9) - 1;
      }
    }

    else
    {
      v45 = *(v9 + 160);
      if (v45)
      {
        free(v45);
        *(v9 + 160) = 0;
      }

      v46 = malloc_type_realloc(*(v9 + 112), Count + 1, 0x100004077774924uLL);
      *(v9 + 112) = v46;
      if (Count > v42)
      {
        do
        {
          *(*(v9 + 112) + Count) = *(*(v9 + 112) + Count - 1);
          --Count;
        }

        while (Count > v42);
        v46 = *(v9 + 112);
      }

      v46[v42] = a3;
      sub_1AF1A27E0(v9, v24);
      sub_1AF1A2B70(v9);
      sub_1AF1A270C(v9);
      if (!a4)
      {
        return *(v24 + 2 * v33 + 9) - 1;
      }
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshWillDie", v9, 0, 1u);
    return *(v24 + 2 * v33 + 9) - 1;
  }

  v34 = sub_1AF1A4604(v9, 0, 0, a5);
  if (!v34)
  {
    sub_1AF1A31C4(v9, v35);
    goto LABEL_21;
  }

  v36 = sub_1AF0D5194(v34, v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *v47 = 0;
    _os_log_impl(&dword_1AF0CE000, v36, OS_LOG_TYPE_DEFAULT, "Warning: Can't add two position sources", v47, 2u);
  }

  return -1;
}

uint64_t sub_1AF1A4210(_BOOL8 a1, const void *a2, uint64_t a3, int a4, int a5)
{
  v9 = a1;
  if (!a1 && (v10 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDB530(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDDB710(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (a4 && a5 == 1)
  {
    v24 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB788(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_13;
  }

  if (a5 == 1)
  {
LABEL_13:
    sub_1AF1AFDA8(v9, 1);
    v32 = v9 + 120;
    goto LABEL_14;
  }

  if (a5)
  {
    v60 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v60, a2, v61, v62, v63, v64, v65, v66);
    }

    v32 = 0;
  }

  else
  {
    v32 = v9 + 72;
  }

LABEL_14:
  v33 = sub_1AF1AE3D8(a2, a2);
  v35 = v33;
  v36 = v32 + 8;
  v37 = (v32 + 8 + 2 * v33);
  v38 = *v37;
  if (v38 != -1 && v37[1] > a3)
  {
    v39 = v38 + a3;
    CFArraySetValueAtIndex(*v32, v39, a2);
    if (a4 != 255)
    {
      *(*(v32 + 40) + v39) = a4;
    }

    if (a5)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (a4 == 255)
  {
    v40 = sub_1AF0D5194(v33, v34);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB800(v40, v41, v42, v43, v44, v45, v46, v47);
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_26:
      v51 = 0;
LABEL_27:
      Count = CFArrayGetCount(*v32);
      CFArrayInsertValueAtIndex(*v32, v51, a2);
      if (a5)
      {
        sub_1AF1A2768(v9);
LABEL_40:
        LocalCenter = CFNotificationCenterGetLocalCenter();
        v54 = 1;
        CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationMeshWillDie", v9, 0, 1u);
        return v54;
      }

      v55 = *(v9 + 160);
      if (v55)
      {
        free(v55);
        *(v9 + 160) = 0;
      }

      v56 = malloc_type_realloc(*(v9 + 112), Count + 1, 0x100004077774924uLL);
      *(v9 + 112) = v56;
      if (Count > v51)
      {
        do
        {
          *(*(v9 + 112) + Count) = *(*(v9 + 112) + Count - 1);
          --Count;
        }

        while (Count > v51);
        v56 = *(v9 + 112);
      }

      v56[v51] = a4;
      sub_1AF1A27E0(v9, v32);
LABEL_37:
      sub_1AF1A2B70(v9);
      if (!v35)
      {
        sub_1AF1A31C4(v9, v57);
      }

      sub_1AF1A270C(v9);
      goto LABEL_40;
    }
  }

  if (v35 < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = v35;
  while (1)
  {
    v49 = *(v36 + 2 * v48);
    if (v49 != -1)
    {
      break;
    }

    v50 = v48--;
    if (v50 < 1)
    {
      goto LABEL_26;
    }
  }

  v53 = *(v36 + 2 * v48 + 1);
  if (v53 >= a3)
  {
    v51 = v53 + v49;
    goto LABEL_27;
  }

  return 0;
}

uint64_t sub_1AF1A44E8(_BOOL8 a1, const void *a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDB530(v6, a2, v7, v8, v9, v10, v11, v12);
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
    sub_1AFDD0208(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (a3 == 1)
  {
    sub_1AF1AFDA8(v5, 1);
    v20 = (v5 + 120);
  }

  else if (a3)
  {
    v21 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v21, a2, v22, v23, v24, v25, v26, v27);
    }

    v20 = 0;
  }

  else
  {
    v20 = (v5 + 72);
  }

  v28 = v20 + 2 * sub_1AF1AE3D8(a2, a2);
  v31 = v28[8];
  v29 = v28 + 8;
  v30 = v31;
  if (v31 == -1)
  {
    return -1;
  }

  v32 = v29[1];
  if (!v29[1])
  {
    return -1;
  }

  v33 = 0;
  while (CFArrayGetValueAtIndex(*v20, v30 + v33) != a2)
  {
    if (v32 == ++v33)
    {
      return -1;
    }
  }

  return v33;
}

const void *sub_1AF1A4604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4 == 1)
  {
    sub_1AF1AFDA8(a1, 1);
    v8 = (a1 + 120);
  }

  else if (a4)
  {
    v9 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  else
  {
    v8 = (a1 + 72);
  }

  v17 = sub_1AF1A46BC(a1, a2, a3, v4);
  if (v17 == -1)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(*v8, v17);
  }
}

CFIndex sub_1AF1A46BC(_BOOL8 a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = a1;
  if (!a1)
  {
    v8 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB530(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (a4 == 1)
  {
    sub_1AF1AFDA8(v7, 1);
    v15 = (v7 + 120);
  }

  else if (a4)
  {
    v16 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDB42C(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v15 = 0;
  }

  else
  {
    v15 = (v7 + 72);
  }

  v24 = v15 + 2 * v6;
  v27 = v24[8];
  v26 = v24 + 8;
  v25 = v27;
  if (v27 == -1 || v26[1] <= a3)
  {
    return -1;
  }

  v28 = v25 + a3;
  Count = CFArrayGetCount(*v15);
  if (v28 >= Count)
  {
    v31 = sub_1AF0D5194(Count, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB878(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  return v28;
}

BOOL sub_1AF1A47C0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 != 1)
    {
      sub_1AFDDB8F0(v9, a2);
    }

    if (a4)
    {
      sub_1AF1AFDA8(a1, 1);
    }

    v7 = 120;
  }

  else
  {
    v7 = 72;
  }

  return *(a1 + v7) && sub_1AF1A46BC(a1, a2, 0, a3) != -1;
}

void sub_1AF1A4880(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDB530(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDD0208(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v19 = sub_1AF1A44E8(v3, a2, 0);
  if (v19 != -1)
  {
    v21 = v19;
    v22 = sub_1AF1AE3D8(a2, v20);
    sub_1AF1A3DEC(v3, v22, v21, 0);
  }
}

const void *sub_1AF1A4930(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  while (1)
  {
    result = sub_1AF1A4604(a1, a2, 0, 0);
    if (!result)
    {
      break;
    }

    sub_1AF1A3DEC(a1, a2, 0, 0);
  }

  return result;
}

void sub_1AF1A49AC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        v16 = ValueAtIndex[9];
        if (v16 && (ValueAtIndex[11] & 4) == 0 && !ValueAtIndex[10])
        {
          CFRelease(v16);
          ValueAtIndex[9] = 0;
        }
      }
    }
  }
}

void sub_1AF1A4A54(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDAF5C(v6, a2, v7, v8, v9, v10, v11, v12);
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
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDAFD4(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  sub_1AF1A6638(v5 + 72, a2 + 72, v3);
  sub_1AF1A6638(v5 + 120, a2 + 120, v3);
  v21 = *(v5 + 168);
  *(a2 + 168) = v21;
  if (v21)
  {
    v22 = 4 * v21;
    v23 = malloc_type_realloc(*(a2 + 176), 4 * v21, 0x656A50B7uLL);
    *(a2 + 176) = v23;
    memcpy(v23, *(v5 + 176), v22);
  }

  else
  {
    free(*(a2 + 176));
    *(a2 + 176) = 0;
  }

  if (*(v5 + 184))
  {
    v24 = sub_1AF1A4604(v5, 0, 0, 0);
    v26 = 4 * sub_1AF1AE6EC(v24, v25);
    v27 = malloc_type_realloc(*(a2 + 184), v26, 0x31120012uLL);
    *(a2 + 184) = v27;
    memcpy(v27, *(v5 + 184), v26);
    if (!v3)
    {
      return;
    }

    goto LABEL_11;
  }

  free(*(a2 + 184));
  *(a2 + 184) = 0;
  if (v3)
  {
LABEL_11:
    sub_1AF1A4DC8(v5, a2);
  }
}

CFIndex sub_1AF1A4BA0(uint64_t a1, void *a2)
{
  result = CFArrayGetCount(*(a1 + 72));
  if (result)
  {
    v5 = *(a1 + 112);
    v6 = *v5;
    if (result < 2)
    {
LABEL_6:
      if (a2)
      {
        *a2 = v6;
      }

      return 1;
    }

    else
    {
      v7 = result - 1;
      v8 = v5 + 1;
      while (1)
      {
        v9 = *v8++;
        if (v9 != v6)
        {
          return 0;
        }

        if (!--v7)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF1A4C10(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 112))
  {
    v4 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB93C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 112) + a2);
}

uint64_t sub_1AF1A4C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v7 = sub_1AF1A46BC(a1, a2, a3, 0);
  if (v7 == -1)
  {
    v8 = sub_1AF0D5194(-1, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB9B4(v4, v3, v8);
    }
  }

  return *(*(a1 + 112) + v7);
}

CFArrayRef sub_1AF1A4CF8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, a2, v5, v6, v7, v8, v9, v10);
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_7:
      v11 = 72;
      return CFArrayCreateCopy(*MEMORY[0x1E695E498], *(a1 + v11));
    }
  }

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v2 != 1)
  {
    sub_1AFDDB8F0(v13, a2);
  }

  sub_1AF1AFDA8(a1, 1);
  v11 = 120;
  return CFArrayCreateCopy(*MEMORY[0x1E695E498], *(a1 + v11));
}

void sub_1AF1A4DC8(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 72));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), i);
      v9 = sub_1AF17032C(ValueAtIndex, v8);
      if (v9)
      {
        v10 = *(v9 + 16);
        if (v10 != ValueAtIndex)
        {
          v11 = CFArrayGetCount(*(a1 + 72));
          if (v11 < 1)
          {
            goto LABEL_15;
          }

          v13 = v11;
          v11 = CFArrayGetValueAtIndex(*(a1 + 72), 0);
          if (v11 == v10)
          {
            v16 = 0;
          }

          else
          {
            v14 = 1;
            while (1)
            {
              v15 = v14;
              if (v13 == v14)
              {
                break;
              }

              v11 = CFArrayGetValueAtIndex(*(a1 + 72), v14);
              v14 = v15 + 1;
              if (v11 == v10)
              {
                v16 = v15;
                goto LABEL_13;
              }
            }

            v16 = 0;
LABEL_13:
            if (v15 >= v13)
            {
LABEL_15:
              if ((byte_1EB6585F8 & 1) == 0)
              {
                byte_1EB6585F8 = 1;
                v22 = sub_1AF0D5194(v11, v12);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  sub_1AFDDBA68(&v23, v24, v22);
                }
              }

              continue;
            }
          }

          v17 = CFArrayGetValueAtIndex(*(a2 + 72), i);
          v19 = sub_1AF17032C(v17, v18);
          v20 = CFArrayGetValueAtIndex(*(a2 + 72), v16);
          sub_1AF1CB108(v19, v20, v21);
        }
      }
    }
  }
}

uint64_t sub_1AF1A4F3C(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 81;
  do
  {
    result += *(v4 + v2);
    v2 += 2;
  }

  while (v2 != 18);
  return result;
}

uint64_t sub_1AF1A4F94(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 168);
  }

  return *(a1 + 176);
}

void sub_1AF1A4FB0(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 208) &= ~2u;
  sub_1AF1A270C(a1);
  CFArrayAppendValue(*(a1 + 104), a2);
}

CFIndex sub_1AF1A5020(_BOOL8 a1, const void *a2, int a3)
{
  v5 = a1;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB530(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!*(v5 + 104))
  {
    v13 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB5A8(v13, a2, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a3 == 1)
  {
    sub_1AF1AFDA8(v5, 1);
    v20.length = CFArrayGetCount(*(v5 + 152));
    v21 = *(v5 + 152);
    goto LABEL_11;
  }

  if (!a3)
  {
    v20.length = CFArrayGetCount(*(v5 + 104));
    v21 = *(v5 + 104);
LABEL_11:
    v20.location = 0;
    return CFArrayGetFirstIndexOfValue(v21, v20, a2);
  }

  v23 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDBAA8(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  return -1;
}

const void *sub_1AF1A510C(uint64_t a1, CFIndex idx)
{
  Count = *(a1 + 152);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 0;
  }

  v5 = *(a1 + 152);

  return CFArrayGetValueAtIndex(v5, idx);
}

uint64_t sub_1AF1A516C(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDB530(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 == 1)
  {
    sub_1AF1AFDA8(v3, 1);
    return *(v3 + 152);
  }

  else if (v2)
  {
    v12 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDBB20(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    return 0;
  }

  else
  {
    return *(v3 + 104);
  }
}

void sub_1AF1A5208(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 104);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 104) = 0;
    }

    if (cf)
    {
      v13 = CFGetAllocator(cf);
      *(a1 + 104) = CFArrayCreateMutableCopy(v13, 0, cf);
    }

    *(a1 + 208) &= ~2u;
    sub_1AF1A270C(a1);
  }
}

void sub_1AF1A52A0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 208) &= ~2u;
  sub_1AF1A270C(a1);
  CFArrayRemoveAllValues(*(a1 + 104));
}

void sub_1AF1A5300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1A3CCC(a1, a2);
  if (v4 < 1)
  {
    return;
  }

  v5 = v4;
  v6 = 0;
  v7 = a2 - 4;
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    v8 = sub_1AF1A3D1C(a1, v6, 1);
    v10 = sub_1AF1A7034(v8, v9);
    if (v10 != a2)
    {
      break;
    }

LABEL_27:
    if (++v6 == v5)
    {
      return;
    }
  }

  if (v7 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = sub_1AF1A7034(v8, v11);
    if (v12)
    {
      v14 = sub_1AF0D5194(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *&size[4] = 0;
        _os_log_impl(&dword_1AF0CE000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Can only convert from triangle array to another element type", &size[4], 2u);
      }

      goto LABEL_27;
    }

    *size = 0;
    v15 = sub_1AF1A73C0(v8, size);
    v16 = sub_1AF1A7674(v8);
    v17 = *size;
    BytePtr = CFDataGetBytePtr(v15);
    if (v17 == 2)
    {
      if (a2 == 2)
      {
        v19 = 3 * v16;
        v20 = 6 * v16;
        v21 = malloc_type_calloc(6 * v16, *size, 0x3DDF882BuLL);
        v26 = v21;
        if (v16 >= 1)
        {
          do
          {
            *v26 = *BytePtr;
            v27 = *(BytePtr + 1);
            *(v26 + 1) = v27;
            *(v26 + 2) = v27;
            v28 = *(BytePtr + 2);
            *(v26 + 3) = v28;
            *(v26 + 4) = v28;
            v29 = *BytePtr;
            BytePtr += 6;
            *(v26 + 5) = v29;
            v26 += 12;
            --v16;
          }

          while (v16);
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (v17 != 1)
      {
        v34 = 3 * v16;
        if (a2 == 2)
        {
          v35 = malloc_type_calloc(6 * v16, *size, 0xF8B504A0uLL);
          v36 = v35;
          if (v16 >= 1)
          {
            do
            {
              *v36 = *BytePtr;
              v37 = *(BytePtr + 1);
              *(v36 + 1) = v37;
              *(v36 + 2) = v37;
              v38 = *(BytePtr + 2);
              *(v36 + 3) = v38;
              *(v36 + 4) = v38;
              v39 = *BytePtr;
              BytePtr += 12;
              *(v36 + 5) = v39;
              v36 += 24;
              --v16;
            }

            while (v16);
          }

          v40 = CFDataCreate(allocator, v35, 2 * v34 * *size);
          sub_1AF1A6A70(v8, 2, v34, v40, size[0]);
          CFRelease(v40);
          v31 = v35;
          goto LABEL_23;
        }

        v41 = CFDataCreate(allocator, BytePtr, v34 * *size);
        sub_1AF1A6A70(v8, 3, 3 * v16, v41, size[0]);
        v33 = v41;
LABEL_25:
        CFRelease(v33);
        goto LABEL_26;
      }

      if (a2 == 2)
      {
        v19 = 3 * v16;
        v20 = 6 * v16;
        v21 = malloc_type_calloc(6 * v16, *size, 0xDF492BB9uLL);
        v22 = v21;
        if (v16 >= 1)
        {
          do
          {
            *v22 = *BytePtr;
            v23 = BytePtr[1];
            v22[1] = v23;
            v22[2] = v23;
            v24 = BytePtr[2];
            v22[3] = v24;
            v22[4] = v24;
            v25 = *BytePtr;
            BytePtr += 3;
            v22[5] = v25;
            v22 += 6;
            --v16;
          }

          while (v16);
        }

LABEL_17:
        v30 = CFDataCreate(allocator, v21, v20 * *size);
        sub_1AF1A6A70(v8, 2, v19, v30, size[0]);
        CFRelease(v30);
        v31 = v21;
LABEL_23:
        free(v31);
        v7 = a2 - 4;
LABEL_26:
        sub_1AF1A270C(a1);
        goto LABEL_27;
      }
    }

    v32 = CFDataCreate(allocator, BytePtr, 3 * v16 * *size);
    sub_1AF1A6A70(v8, 3, 3 * v16, v32, size[0]);
    v33 = v32;
    goto LABEL_25;
  }

  v42 = sub_1AF0D5194(v10, v11);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AF0CE000, v42, OS_LOG_TYPE_DEFAULT, "Warning: Can only convert to lines or points element type", buf, 2u);
  }
}