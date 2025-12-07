void sub_1AF1CDDFC(char *a1, uint64_t a2, unsigned int a3)
{
  if (!a3)
  {
    return;
  }

  v10 = sub_1AF2891EC(a1);
  if (a3 < 1)
  {
    return;
  }

  v5 = 0;
  v6 = a3;
  v7 = MEMORY[0x1E69E9830];
  do
  {
    *(a2 + 8 * v5) = strtod(v10, &v10);
    for (i = v10 + 1; ; ++i)
    {
      v9 = *(i - 1);
      if ((v9 & 0x80000000) != 0)
      {
        break;
      }

      if ((*(v7 + 4 * v9 + 60) & 0x4000) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      v10 = i;
    }

    if (__maskrune(*(i - 1), 0x4000uLL))
    {
      goto LABEL_9;
    }

LABEL_10:
    if (v9 == 44)
    {
      v10 = i;
    }

    ++v5;
  }

  while (v5 != v6);
}

CFStringRef sub_1AF1CDEC8(const __CFString *a1, const __CFString *a2)
{
  v3 = CFStringFind(a1, a2, 0);
  if (v3.location == -1)
  {
    return 0;
  }

  v4.length = CFStringGetLength(a1) - (v3.location + v3.length);
  if (v4.length < 1)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];

  v4.location = v3.location + v3.length;
  return CFStringCreateWithSubstring(v5, a1, v4);
}

BOOL sub_1AF1CDF54(uint64_t a1, const __CFString *a2)
{
  v4 = sub_1AF1CDA60(a1, a2);
  v6 = v4;
  v7 = *(a1 + 16);
  if (v7 <= 6)
  {
    switch(v7)
    {
      case 1u:
        DoubleValue = CFStringGetDoubleValue(a2);
        *v6 = DoubleValue;
        break;
      case 2u:
        *v4 = CFStringGetIntValue(a2);
        break;
      case 3u:
        if (CFStringCompare(a2, @"true", 0))
        {
          v10 = 1;
        }

        else if (CFStringCompare(a2, @"false", 0))
        {
          v10 = 0;
        }

        else
        {
          v10 = CFStringGetIntValue(a2) != 0;
        }

        *v6 = v10;
        return 1;
      default:
        goto LABEL_17;
    }

    return 1;
  }

  if (*(a1 + 16) > 8u)
  {
    if (v7 == 9)
    {
      v26 = 0uLL;
      v24 = sub_1AF1CDEC8(a2, @"vec4(");
      if (v24)
      {
        v25 = v24;
        sub_1AF1CDC80(v24, &v26, 4u);
        CFRelease(v25);
      }

      *v6 = v26;
      return 1;
    }

    if (v7 != 45)
    {
      goto LABEL_17;
    }

    *v4 = CFStringGetIntValue(a2);
    return 1;
  }

  if (v7 == 7)
  {
    v21 = 0;
    *&v26 = 0;
    v22 = sub_1AF1CDEC8(a2, @"vec2(");
    if (v22)
    {
      v23 = v22;
      sub_1AF1CDC80(v22, &v26, 2u);
      CFRelease(v23);
      v21 = v26;
    }

    *v6 = v21;
    return 1;
  }

  if (v7 == 8)
  {
    v26 = 0uLL;
    v8 = sub_1AF1CDEC8(a2, @"vec3(");
    if (v8)
    {
      v9 = v8;
      sub_1AF1CDC80(v8, &v26, 3u);
      CFRelease(v9);
    }

    *v6 = v26;
    v6[2] = *(&v26 + 2);
    return 1;
  }

LABEL_17:
  v12 = sub_1AF0D5194(v4, v5);
  result = os_log_type_enabled(v12, OS_LOG_TYPE_FAULT);
  if (result)
  {
    sub_1AFDDFA98(v12, v14, v15, v16, v17, v18, v19, v20);
    return 0;
  }

  return result;
}

float32_t sub_1AF1CE158(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFB10(v6, a2, v7, v8, v9, v10, v11, v12);
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
    sub_1AFDDFB88(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFC00(v20, a2, v21, v22, v23, v24, v25, v26);
    }
  }

  v27 = sub_1AF1CDAAC(v5, a2);
  v29 = sub_1AF1CDAAC(a2, v28);
  if (v27 != v29)
  {
    v31 = sub_1AF0D5194(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFC78(v31, v30, v32, v33, v34, v35, v36, v37);
    }
  }

  v38 = sub_1AF1CDAAC(a3, v30);
  if (v27 != v38)
  {
    v40 = sub_1AF0D5194(v38, v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFCF0(v40, v39, v41, v42, v43, v44, v45, v46);
    }
  }

  v47 = sub_1AF1CDA60(v5, v39);
  v49 = sub_1AF1CDA60(a2, v48);
  v51 = sub_1AF1CDA60(a3, v50);
  return sub_1AF288EA0(v27, v47, v49, v51, v52);
}

CFStringRef sub_1AF1CE2AC(__int16 *a1)
{
  v2 = sub_1AF3753A8(a1);
  v5 = sub_1AF2883D8(a1[8], v3);
  switch(a1[8])
  {
    case 1:
      v14 = *MEMORY[0x1E695E480];
      v15 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(v14, 0, @"<%s %p | %@ %f>", v2, a1, v5, v15);
    case 2:
      v6 = *MEMORY[0x1E695E480];
      v7 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(v6, 0, @"<%s %p | %@ %d>", v2, a1, v5, v7);
    case 3:
    case 15:
      v6 = *MEMORY[0x1E695E480];
      v7 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(v6, 0, @"<%s %p | %@ %d>", v2, a1, v5, v7);
    case 4:
      v6 = *MEMORY[0x1E695E480];
      v7 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(v6, 0, @"<%s %p | %@ %d>", v2, a1, v5, v7);
    case 5:
      v13 = *MEMORY[0x1E695E480];
      v30 = sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(v13, 0, @"<%s %p | %@ %p>", v2, a1, v5, v30);
    case 6:
      v14 = *MEMORY[0x1E695E480];
      v15 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(v14, 0, @"<%s %p | %@ %f>", v2, a1, v5, v15);
    case 7:
      v17 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s %p | %@ [%f %f]>", v2, a1, v5, *&v17, *(&v17 + 1));
    case 8:
      v16 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s %p | %@ [%f %f %f]>", v2, a1, v5, *&v16, *(&v16 + 1), *(&v16 + 2));
    case 9:
    case 12:
      v8 = *sub_1AF1CDA60(a1, v4);
      v9 = *MEMORY[0x1E695E480];
      v32 = *(&v8 + 2);
      v33 = *(&v8 + 3);
      v28 = *&v8;
      v31 = *(&v8 + 1);
      v10 = @"<%s %p | %@ [%f %f %f %f]>";
      v27 = v5;
      return CFStringCreateWithFormat(v9, 0, v10, v2, a1, v27, *&v28, *&v31, *&v32, *&v33, *&v34, *&v35, *&v36, *&v37, *&v38, *&v39, *&v40, *&v41, *&v42, *&v43, *&v44, *&v45);
    case 10:
      v18 = sub_1AF1CDA60(a1, v4);
      v19 = *(v18 + 16);
      v20 = COERCE_FLOAT(*v18);
      v21 = *(v18 + 32);
      v22 = *(v18 + 48);
      v23 = COERCE_FLOAT(HIDWORD(*v18));
      v24 = COERCE_FLOAT(*(v18 + 8));
      v25 = COERCE_FLOAT(HIDWORD(*v18));
      LODWORD(v26) = HIDWORD(*(v18 + 16));
      v9 = *MEMORY[0x1E695E480];
      v44 = *(&v22 + 2);
      v45 = *(&v22 + 3);
      v42 = *&v22;
      v43 = *(&v22 + 1);
      v40 = *(&v21 + 2);
      v41 = *(&v21 + 3);
      v38 = *&v21;
      v39 = *(&v21 + 1);
      v36 = *(&v19 + 2);
      v37 = *(&v19 + 3);
      v34 = *&v19;
      v35 = v26;
      v32 = v24;
      v33 = v25;
      v27 = v5;
      v10 = @"<%s %p | %@ [%f %f %f %f][%f %f %f %f][%f %f %f %f][%f %f %f %f]>";
      v28 = v20;
      v31 = v23;
      return CFStringCreateWithFormat(v9, 0, v10, v2, a1, v27, *&v28, *&v31, *&v32, *&v33, *&v34, *&v35, *&v36, *&v37, *&v38, *&v39, *&v40, *&v41, *&v42, *&v43, *&v44, *&v45);
    case 11:
    case 14:
      goto LABEL_6;
    case 13:
      v6 = *MEMORY[0x1E695E480];
      v7 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(v6, 0, @"<%s %p | %@ %d>", v2, a1, v5, v7);
    case 16:
      v6 = *MEMORY[0x1E695E480];
      v7 = *sub_1AF1CDA60(a1, v4);
      return CFStringCreateWithFormat(v6, 0, @"<%s %p | %@ %d>", v2, a1, v5, v7);
    default:
      if (a1[8] == 45)
      {
        v6 = *MEMORY[0x1E695E480];
        v7 = *sub_1AF1CDA60(a1, v4);
        return CFStringCreateWithFormat(v6, 0, @"<%s %p | %@ %d>", v2, a1, v5, v7);
      }

      else
      {
LABEL_6:
        v11 = *MEMORY[0x1E695E480];
        v29 = sub_1AF1CDA60(a1, v4);
        return CFStringCreateWithFormat(v11, 0, @"<%s %p | %@ ptr:%p>", v2, a1, v5, v29);
      }
  }
}

__CFArray *sub_1AF1CE61C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = 0;
  valuePtr = 2;
  v14 = a1 + 16;
  v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &v15);
  v6 = CFNumberCreate(0, kCFNumberLongType, &v14);
  CFDictionarySetValue(v3, @"name", @"baseType");
  CFDictionarySetValue(v3, @"type", v4);
  CFDictionarySetValue(v3, @"address", v6);
  CFDictionarySetValue(v3, @"semantic", v5);
  CFArrayAppendValue(Mutable, v3);
  CFRelease(v5);
  CFRelease(v3);
  CFRelease(v6);
  CFRelease(v4);
  v7 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = *(a1 + 16);
  v15 = 0;
  valuePtr = v8;
  v14 = sub_1AF1CDA60(a1, v9);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v15);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v14);
  CFDictionarySetValue(v7, @"name", @"value");
  CFDictionarySetValue(v7, @"type", v10);
  CFDictionarySetValue(v7, @"address", v12);
  CFDictionarySetValue(v7, @"semantic", v11);
  CFArrayAppendValue(Mutable, v7);
  CFRelease(v11);
  CFRelease(v7);
  CFRelease(v12);
  CFRelease(v10);
  return Mutable;
}

const __CFDictionary *sub_1AF1CE864(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return sub_1AF16CEA0(a1, @"kCoreEntityKey");
}

void sub_1AF1CE8BC(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1CE864(a1, a2);
  if (v11)
  {
    sub_1AF1C3A90(v11, a1);
  }

  sub_1AF16CF28(a1, @"kCoreEntityKey", a2, 1);
  if (a2)
  {
    sub_1AF1C3CB4(a2, a1);
  }
}

uint64_t sub_1AF1CE94C(uint64_t a1, uint64_t a2)
{
  sub_1AF1CEA20(a1, a2);
  v5 = *(a1 + 200);
  if (v5 == 1)
  {
    v6 = *(a1 + 192);
    v7 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
    *(a1 + 192) = v7;
    *v7 = v6;
    *(*(a1 + 192) + 8) = a2;
    *(a1 + 200) = 2;
  }

  else if (*(a1 + 200))
  {
    v8 = v5 + 1;
    *(a1 + 200) = v8;
    v9 = malloc_type_realloc(*(a1 + 192), 8 * v8, 0x2004093837F09uLL);
    *(a1 + 192) = v9;
    v9[*(a1 + 200) - 1] = a2;
  }

  else
  {
    *(a1 + 200) = 1;
    *(a1 + 192) = a2;
  }

  return sub_1AF1CEA9C(a1, v4);
}

void sub_1AF1CEA20(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  prof_beginFlame("CFXWorldLock", "/Library/Caches/com.apple.xbs/Sources/VFX/sources/VFX/CFX/Core/CFXWorld.m", 892);
  pthread_mutex_lock((a1 + 264));
  prof_endFlame();
}

uint64_t sub_1AF1CEA9C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return pthread_mutex_unlock((a1 + 264));
}

uint64_t sub_1AF1CEAE8(uint64_t result, uint64_t a2)
{
  if (*(result + 200))
  {
    v3 = result;
    sub_1AF1CEA20(result, a2);
    v5 = *(v3 + 200);
    if (*(v3 + 200))
    {
      if (v5 == 1)
      {
        if (*(v3 + 192) == a2)
        {
          *(v3 + 200) = 0;
          *(v3 + 192) = 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = 8;
        do
        {
          v8 = *(v3 + 192);
          if (*&v8[8 * v6] == a2)
          {
            if (v5 == 2)
            {
              v9 = *&v8[v7];
              free(v8);
              *(v3 + 192) = v9;
              LOWORD(v5) = 1;
              *(v3 + 200) = 1;
            }

            else
            {
              LOWORD(v5) = v5 - 1;
              *(v3 + 200) = v5;
              *&v8[8 * v6] = *&v8[8 * v5];
            }
          }

          ++v6;
          v7 -= 8;
        }

        while (v6 < v5);
      }
    }

    return sub_1AF1CEA9C(v3, v4);
  }

  return result;
}

uint64_t sub_1AF1CEBC8(uint64_t a1, uint64_t a2)
{
  sub_1AF1CEA20(a1, a2);
  if (*(a1 + 200))
  {
    if (*(a1 + 200) == 1)
    {
      (*(a2 + 16))(a2, *(a1 + 192));
    }

    else
    {
      v5 = 0;
      do
      {
        (*(a2 + 16))(a2, *(*(a1 + 192) + 8 * v5++));
      }

      while (v5 < *(a1 + 200));
    }
  }

  return sub_1AF1CEA9C(a1, v4);
}

void sub_1AF1CEC60(uint64_t a1, void *a2)
{
  v4 = sub_1AF1BBBCC(a2, a2);
  v6 = sub_1AF1CECF0(a1, v5);
  v7 = CFStringCreateWithFormat(0, 0, @"nodeConstraints-%p", a2);
  sub_1AF158F5C(v6, v4, a2, v7);

  CFRelease(v7);
}

uint64_t sub_1AF1CECF0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

void sub_1AF1CED38(uint64_t a1, void *a2)
{
  if (!*(a1 + 184))
  {
    *(a1 + 184) = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  v4 = sub_1AF1BC054(a2);
  if (v4)
  {
    CFDictionarySetValue(*(a1 + 184), a2, v4);
  }

  else
  {
    v6 = sub_1AF0D5194(0, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDFDE0(v6);
    }
  }

  sub_1AF133EE8(*(a1 + 120), a2);
}

void sub_1AF1CEDD4(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    CFDictionaryRemoveValue(v2, a2);
  }
}

uint64_t sub_1AF1CEDE4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 184);
}

void sub_1AF1CEE2C(_BOOL8 a1, void *value)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, value), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFE24(v4, value, v5, v6, v7, v8, v9, v10);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, value);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDFE9C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  sub_1AF13407C(*(v3 + 120), value);
}

void sub_1AF1CEEB0(_BOOL8 a1, void *value)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, value), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFE24(v4, value, v5, v6, v7, v8, v9, v10);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, value);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDFE9C(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  sub_1AF134150(*(v3 + 120), value);
}

void sub_1AF1CEF34(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFE24(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 260) = v2;
}

BOOL sub_1AF1CEF88(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFE24(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 260) > 0;
}

void sub_1AF1CEFD8(_BOOL8 a1, _DWORD *a2)
{
  v3 = a1;
  *&v31[5] = *MEMORY[0x1E69E9840];
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFD68(v4, a2, v5, v6, v7, v8, v9, v10);
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
    sub_1AFDD137C(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  if (!v3)
  {
    goto LABEL_12;
  }

  v18 = a2[55];
  if ((v18 & 0x2000) != 0)
  {
    sub_1AF1CEC60(v3, a2);
    v18 = a2[55];
    if ((v18 & 0x40) == 0)
    {
LABEL_9:
      if ((v18 & 0x20000) == 0)
      {
        goto LABEL_10;
      }

LABEL_26:
      sub_1AF1CEE2C(v3, a2);
      if ((a2[55] & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v18 & 0x40) == 0)
  {
    goto LABEL_9;
  }

  sub_1AF364F94(v3, a2);
  v18 = a2[55];
  if ((v18 & 0x20000) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v18 & 0x100) != 0)
  {
LABEL_11:
    sub_1AF1378D0(*(v3 + 128), a2);
  }

LABEL_12:
  v19 = sub_1AF1BB518(a2, a2);
  if (v19)
  {
    v20 = v19;
    Count = CFArrayGetCount(v19);
    if (Count >= 1)
    {
      v22 = Count;
      for (i = 0; i != v22; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
        if (!ValueAtIndex)
        {
          v27 = sub_1AF0D5194(0, v24);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDFF14(v30, v31, v27);
          }
        }

        sub_1AF15AB24(ValueAtIndex, v24, v25);
      }
    }
  }

  v28 = *(v3 + 464);
  if (v28)
  {
    sub_1AF108358(v28, a2);
  }

  v29 = *(v3 + 136);
  if (v29)
  {
    sub_1AF143F60(v29, a2);
  }
}

id sub_1AF1CF194(uint64_t a1, void *key)
{
  if (*(a1 + 168))
  {
    v4 = *(a1 + 184);
    if (v4)
    {
      CFDictionaryRemoveValue(v4, key);
    }
  }

  return sub_1AF1CF1E8(a1, key);
}

id sub_1AF1CF1E8(id *a1, void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[15];
  if (v11)
  {
    sub_1AF133A10(v11, a2);
  }

  if (sub_1AF1BBBCC(a2, a2))
  {
    v13 = sub_1AF1CECF0(a1, v12);
    v14 = CFStringCreateWithFormat(0, 0, @"nodeConstraints-%p", a2);
    sub_1AF158F5C(v13, 0, a2, v14);
    CFRelease(v14);
  }

  if (sub_1AF1BBE50(a2, v12))
  {
    sub_1AF36513C(a1, a2);
  }

  if (sub_1AF1BBE9C(a2, v15))
  {
    sub_1AF1CEEB0(a1, a2);
  }

  if (a1[16] && sub_1AF1BB0BC(a2, v16))
  {
    sub_1AF137B54(a1[16], a2);
  }

  sub_1AF1BB79C(a2, v16);
  v17 = a1[58];
  if (v17)
  {
    sub_1AF108360(v17, a2);
  }

  result = a1[17];
  if (result)
  {
    return sub_1AF1441EC(result, a2);
  }

  return result;
}

uint64_t sub_1AF1CF31C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AB60 != -1)
  {
    sub_1AFDDFF64();
  }

  return qword_1ED73AB58;
}

double sub_1AF1CF354()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AB58 = v0;
  v2 = sub_1AF16CB64(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"fogColor", 384, 12, 0);
  sub_1AF1DD02C(@"fogDensityExponent", 368, 1, 0);
  sub_1AF1DD02C(@"fogEndDistance", 364, 1, 0);
  sub_1AF1DD02C(@"fogStartDistance", 360, 1, 0);
  sub_1AF1DD02C(@"wantsSSAO", 400, 3, 0);
  sub_1AF1DD02C(@"screenSpaceAmbientOcclusionIntensity", 404, 1, 0);
  sub_1AF1DD02C(@"screenSpaceAmbientOcclusionRadius", 408, 1, 0);
  sub_1AF1DD02C(@"screenSpaceAmbientOcclusionEnableBentNormal", 412, 3, 0);
  sub_1AF1DD02C(@"screenSpaceAmbientOcclusionQuality", 413, 2, 0);
  sub_1AF1DD02C(@"wantsScreenSpaceReflection", 414, 3, 0);
  sub_1AF1DD02C(@"screenSpaceReflectionQuality", 415, 2, 0);
  sub_1AF1DD02C(@"screenSpaceReflectionThicknessMode", 416, 2, 0);
  sub_1AF1DD02C(@"screenSpaceReflectionObjectThickness", 420, 1, 0);
  sub_1AF1DD018();
  unk_1ED72E2C8 = xmmword_1F24E8508;
  unk_1ED72E2D8 = unk_1F24E8518;
  qword_1ED72E2E8 = qword_1F24E8528;
  unk_1ED72E2F0 = sub_1AF1D1788;
  qword_1ED72E2B0 = sub_1AF1D1824;
  result = *&xmmword_1F24E8530;
  unk_1ED72E308 = xmmword_1F24E8530;
  return result;
}

uint64_t sub_1AF1CF52C(uint64_t a1, const void *a2)
{
  v3 = a1;
  if (qword_1ED73AB60 != -1)
  {
    sub_1AFDDFF64();
  }

  v4 = sub_1AF0D160C(qword_1ED73AB58, 0x1E0uLL);
  v5 = v4;
  if (v4)
  {
    sub_1AF0D169C(v4, v3);
    *(v5 + 224) = 0x3F80000042700000;
    *(v5 + 244) = 1065353216;
    *(v5 + 256) = 1065353216;
    if (a2)
    {
      v6 = CFRetain(a2);
    }

    else
    {
      v6 = 0;
    }

    *(v5 + 80) = v6;
    *(v5 + 360) = 0;
    *(v5 + 368) = 1065353216;
    sub_1AF163FFC((v5 + 384), 1.0, 1.0, 1.0, 1.0);
    *(v5 + 400) = 0;
    *(v5 + 404) = 0x3F8000003F800000;
    *(v5 + 412) = 256;
    *(v5 + 416) = 0;
    *(v5 + 420) = 1048576000;
  }

  return v5;
}

void sub_1AF1CF614(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 64) != a2)
  {
    sub_1AF133C50(*(a1 + 120), a2);
    v12 = *(a1 + 64);
    if (v12)
    {
      v13 = sub_1AF1C3FAC(v12, v11);
      if (v13 == a1)
      {
        sub_1AF1C3A90(*(a1 + 64), a1);
      }

      else
      {
        v15 = sub_1AF0D5194(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_1AF0CE000, v15, OS_LOG_TYPE_DEFAULT, "Warning: CFXWorldSetRootNode - old root node seems to be already connected to another world", v19, 2u);
        }
      }

      v16 = *(a1 + 64);
      if (v16 == a2)
      {
        goto LABEL_19;
      }

      if (v16)
      {
        CFRelease(v16);
        *(a1 + 64) = 0;
      }

      if (!a2)
      {
        v16 = 0;
        goto LABEL_18;
      }
    }

    else if (!a2)
    {
      v16 = 0;
LABEL_19:
      v17 = *(a1 + 432);
      if (v17 != a2)
      {
        if (v17)
        {
          CFRelease(*(a1 + 432));
          *(a1 + 432) = 0;
        }

        if (a2)
        {
          v18 = CFRetain(a2);
        }

        else
        {
          v18 = 0;
        }

        *(a1 + 432) = v18;
        v16 = *(a1 + 64);
      }

      if (v16)
      {
        sub_1AF1C3CB4(v16, a1);
      }

      return;
    }

    v16 = CFRetain(a2);
LABEL_18:
    *(a1 + 64) = v16;
    goto LABEL_19;
  }
}

void sub_1AF1CF760(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  v6 = a2;
  if (!a3 && (v8 = sub_1AF0D5194(a1, a2), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFF78(v8, a2, v9, v10, v11, v12, v13, v14);
    if (!a1)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v15 = sub_1AF1332F8(*(a1 + 120), a2);
  sub_1AF131578(v15, v6, a3, a4);
}

uint64_t sub_1AF1CF7E8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

uint64_t sub_1AF1CF830(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

uint64_t sub_1AF1CF878(uint64_t a1, uint64_t a2)
{
  result = sub_1AF1CF8AC(a1, a2);
  if (result)
  {

    return sub_1AF0FB884(result);
  }

  return result;
}

uint64_t sub_1AF1CF8AC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 168);
}

uint64_t sub_1AF1CF8F4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

double sub_1AF1CF93C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208);
}

double sub_1AF1CF984(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

void sub_1AF1CF9CC(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 208) = a3;
}

void sub_1AF1CFA20(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 216) = a3;
}

float sub_1AF1CFA74(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

void sub_1AF1CFABC(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 224) = a3;
}

float sub_1AF1CFB10(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 228);
}

void sub_1AF1CFB58(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 228) = a3;
}

float sub_1AF1CFBAC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 256);
}

void sub_1AF1CFBF4(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 256) = a3;
}

__n128 sub_1AF1CFC48(__n128 *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1[15];
}

void sub_1AF1CFC90(__n128 *result, uint64_t a2, __n128 a3)
{
  if (!result)
  {
    v13 = a3;
    v4 = sub_1AF0D5194(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v13;
    if (v5)
    {
      sub_1AFDDFD68(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v13;
    }
  }

  result[15] = a3;
}

void sub_1AF1CFCF4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(a1 + 328);
  sub_1AF139158(*(a1 + 128));
  sub_1AF14CED8(*(a1 + 160), v11);
}

void sub_1AF1CFD54(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1AF1CFE48;
  v12[3] = &unk_1E7A7BE60;
  v12[4] = &v13;
  sub_1AF1CEBC8(a1, v12);
  if (*(v14 + 24) == 1)
  {
    sub_1AF14CF24(*(a1 + 160), v11);
  }

  _Block_object_dispose(&v13, 8);
}

void sub_1AF1CFE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1AF1CFE48(uint64_t a1, uint64_t a2)
{
  result = sub_1AF130540(a2);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t sub_1AF1CFE84(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 328);
}

void sub_1AF1CFECC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(result + 332);
}

uint64_t sub_1AF1CFF1C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 332);
}

BOOL sub_1AF1CFF64(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return (v2 & ~*(a1 + 72)) == 0;
}

uint64_t sub_1AF1CFFC0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 104);
}

uint64_t sub_1AF1D0008(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 336))
  {
    v3 = sub_1AF16578C(a1, 25);
    *(a1 + 336) = v3;
    v4 = sub_1AF1C4F88();
    sub_1AF1667E4(v3, v4);
  }

  return *(a1 + 336);
}

uint64_t sub_1AF1D005C(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 344))
  {
    v3 = sub_1AF16578C(a1, 26);
    *(a1 + 344) = v3;
    v4 = sub_1AF1C4F88();
    sub_1AF1667E4(v3, v4);
  }

  return *(a1 + 344);
}

uint64_t sub_1AF1D00B0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 120);
}

uint64_t sub_1AF1D00F8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 128);
}

uint64_t sub_1AF1D0140(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 136);
}

uint64_t sub_1AF1D0188(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 144);
}

uint64_t sub_1AF1D01D0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 152);
}

uint64_t sub_1AF1D0218(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 160);
}

float sub_1AF1D0260(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 368);
}

void sub_1AF1D02A8(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 368) = a3;
}

float sub_1AF1D02FC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 364);
}

void sub_1AF1D0344(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 364) = a3;
}

float sub_1AF1D0398(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 360);
}

void sub_1AF1D03E0(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 360) = a3;
}

__n128 sub_1AF1D0434(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  a1[24] = *a2;
  return result;
}

uint64_t sub_1AF1D048C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 384;
}

void sub_1AF1D04D4(float *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  compute_fog_parameters(a1[90] * a3, a1[91] * a3);
}

uint64_t sub_1AF1D053C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 400);
}

void sub_1AF1D0584(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[400] != v2)
  {
    a1[400] = v2;
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", a1, 0, 1u);
  }
}

float sub_1AF1D0600(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 404);
}

void sub_1AF1D0648(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 404) = a3;
}

float sub_1AF1D069C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 408);
}

void sub_1AF1D06E4(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 408) = a3;
}

uint64_t sub_1AF1D0738(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 412);
}

void sub_1AF1D0780(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[412] != v2)
  {
    a1[412] = v2;
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", a1, 0, 1u);
  }
}

uint64_t sub_1AF1D07FC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 413);
}

void sub_1AF1D0844(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 413) = v2;
}

uint64_t sub_1AF1D0898(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 414);
}

void sub_1AF1D08E0(_BYTE *a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[414] != v2)
  {
    a1[414] = v2;
    sub_1AF1BE334(@"kCFXNotificationEngineContextInvalidatePasses", a1, 0, 1u);
  }
}

uint64_t sub_1AF1D095C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 415);
}

void sub_1AF1D09A4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 415) = v2;
}

uint64_t sub_1AF1D09F8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 416);
}

void sub_1AF1D0A40(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 416) = v2;
}

float sub_1AF1D0A94(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 420);
}

void sub_1AF1D0ADC(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 420) = a3;
}

void sub_1AF1D0B30(__n128 *a1, simd_float4x4 *a2)
{
  v73 = __invert_f4(*a2);
  v63 = v73.columns[2];
  v64 = v73.columns[0];
  v61 = v73.columns[3];
  v62 = v73.columns[1];
  v5 = sub_1AF1CFC48(a1, v4);
  if (v5.n128_f32[2] == 1.0)
  {
    v6 = 0;
    v7 = vrsqrteq_f32(xmmword_1AFE208C0);
    v8 = vmulq_f32(v7, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v7, v7)));
    v9 = vmulq_f32(vmulq_f32(v8, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v8, v8))), xmmword_1AFE20150);
    v10 = vmulq_f32(v9, v9);
    __asm { FMOV            V0.4S, #1.0 }

    v16 = vmlaq_f32(v10, vdupq_n_s32(0xB33BBD2E), vsubq_f32(_Q0, v10));
    v17 = vmuls_lane_f32(v9.f32[0], *v9.f32, 1);
    v18 = vmuls_lane_f32(v9.f32[0], v9, 2);
    v19 = vmuls_lane_f32(v9.f32[1], v9, 2);
    *&v20 = v9.f32[1] + v18;
    *&v21 = v9.f32[2] + v17;
    v22.f32[0] = v18 - v9.f32[1];
    v22.f32[1] = v9.f32[0] + v19;
    v22.i64[1] = v16.u32[2];
    *&v23 = v19 - v9.f32[0];
    v24.i32[0] = v16.i32[0];
    v24.f32[1] = v17 - v9.f32[2];
    v24.i64[1] = v20;
    v25.i64[0] = __PAIR64__(v16.u32[1], v21);
    v25.i64[1] = v23;
    v65 = v64;
    v66 = v62;
    v67 = v63;
    v68 = v61;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    do
    {
      *(&v69 + v6) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(*(&v65 + v6))), v25, *&v65.f32[v6 / 4], 1), v22, *(&v65 + v6), 2), xmmword_1AFE201A0, *(&v65 + v6), 3);
      v6 += 16;
    }

    while (v6 != 64);
LABEL_12:
    v28 = v69;
    v26 = v70;
    v29 = v71;
    v27 = v72;
    goto LABEL_13;
  }

  v27 = v61;
  v26 = v62;
  v29 = v63;
  v28 = v64;
  if (v5.n128_f32[2] == -1.0)
  {
    v30 = 0;
    v31 = vrsqrteq_f32(xmmword_1AFE208C0);
    v32 = vmulq_f32(v31, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v31, v31)));
    v33 = vmulq_f32(vmulq_f32(v32, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v32, v32))), xmmword_1AFE20150);
    v34 = vmulq_f32(v33, v33);
    __asm { FMOV            V1.4S, #1.0 }

    v36 = vmlaq_f32(v34, vdupq_n_s32(0xB33BBD2E), vsubq_f32(_Q1, v34));
    v37 = vmuls_lane_f32(v33.f32[0], *v33.f32, 1);
    v38 = vmuls_lane_f32(v33.f32[0], v33, 2);
    _Q1.f32[0] = vmuls_lane_f32(v33.f32[1], v33, 2);
    v39 = vnegq_f32(v33);
    *&v40 = v39.f32[1] + v38;
    v41.f32[0] = v38 - v39.f32[1];
    v41.f32[1] = v39.f32[0] + _Q1.f32[0];
    v41.i64[1] = v36.u32[2];
    *&v42 = _Q1.f32[0] - v39.f32[0];
    v43.i32[0] = v36.i32[0];
    v43.f32[1] = v37 - v39.f32[2];
    v43.i64[1] = v40;
    v44.f32[0] = v39.f32[2] + v37;
    v44.i32[1] = v36.i32[1];
    v44.i64[1] = v42;
    v65 = v64;
    v66 = v62;
    v67 = v63;
    v68 = v61;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    do
    {
      *(&v69 + v30) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*(&v65 + v30))), v44, *&v65.f32[v30 / 4], 1), v41, *(&v65 + v30), 2), xmmword_1AFE201A0, *(&v65 + v30), 3);
      v30 += 16;
    }

    while (v30 != 64);
    goto LABEL_12;
  }

  if (v5.n128_f32[1] == -1.0)
  {
    v45 = 0;
    v46 = vrsqrteq_f32(xmmword_1AFE208C0);
    v47 = vmulq_f32(v46, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v46, v46)));
    v48 = vmulq_f32(vmulq_f32(v47, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v47, v47))), xmmword_1AFE20150);
    v49 = vmulq_f32(v48, v48);
    __asm
    {
      FMOV            V1.4S, #1.0
      FMOV            V2.4S, #-1.0
    }

    v52 = vmlaq_f32(v49, _Q2, vsubq_f32(_Q1, v49));
    _Q2.f32[0] = vmuls_lane_f32(v48.f32[0], *v48.f32, 1);
    _Q2.f32[0] = _Q2.f32[0] + _Q2.f32[0];
    v53 = vmuls_lane_f32(v48.f32[0], v48, 2);
    v54 = v53 + v53;
    _Q1.f32[0] = vmuls_lane_f32(v48.f32[1], v48, 2);
    _Q1.f32[0] = _Q1.f32[0] + _Q1.f32[0];
    v55 = vmulq_f32(v48, vdupq_n_s32(0x33BBBD2Eu));
    *&v56 = v55.f32[1] + v54;
    v57.f32[0] = v54 - v55.f32[1];
    v57.f32[1] = v55.f32[0] + _Q1.f32[0];
    v57.i64[1] = v52.u32[2];
    *&v58 = _Q1.f32[0] - v55.f32[0];
    v59.i32[0] = v52.i32[0];
    v59.f32[1] = _Q2.f32[0] - v55.f32[2];
    v59.i64[1] = v56;
    v60.f32[0] = v55.f32[2] + _Q2.f32[0];
    v60.i32[1] = v52.i32[1];
    v60.i64[1] = v58;
    v65 = v64;
    v66 = v62;
    v67 = v63;
    v68 = v61;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    do
    {
      *(&v69 + v45) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v65 + v45))), v60, *&v65.f32[v45 / 4], 1), v57, *(&v65 + v45), 2), xmmword_1AFE201A0, *(&v65 + v45), 3);
      v45 += 16;
    }

    while (v45 != 64);
    goto LABEL_12;
  }

LABEL_13:
  a2->columns[0] = v28;
  a2->columns[1] = v26;
  a2->columns[2] = v29;
  a2->columns[3] = v27;
}

double sub_1AF1D0EBC(__n128 *a1, uint64_t a2)
{
  v2 = sub_1AF1CFC48(a1, a2);
  if (v2.n128_f32[2] == 1.0)
  {
    v3 = 0;
    v7 = xmmword_1AFE20150;
    v8 = xmmword_1AFE20160;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = xmmword_1AFE20180;
    v10 = xmmword_1AFE201A0;
    do
    {
      *(&v11 + v3) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v7 + v3))), xmmword_1AFE208E0, *(&v7 + v3), 1), xmmword_1AFE208F0, *(&v7 + v3), 2), xmmword_1AFE201A0, *(&v7 + v3), 3);
      v3 += 16;
    }

    while (v3 != 64);
    return *&v11;
  }

  if (v2.n128_f32[2] == -1.0)
  {
    v4 = 0;
    v7 = xmmword_1AFE20150;
    v8 = xmmword_1AFE20160;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = xmmword_1AFE20180;
    v10 = xmmword_1AFE201A0;
    do
    {
      *(&v11 + v4) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v7 + v4))), xmmword_1AFE20920, *(&v7 + v4), 1), xmmword_1AFE20930, *(&v7 + v4), 2), xmmword_1AFE201A0, *(&v7 + v4), 3);
      v4 += 16;
    }

    while (v4 != 64);
    return *&v11;
  }

  if (v2.n128_f32[1] == -1.0)
  {
    v5 = 0;
    v7 = xmmword_1AFE20150;
    v8 = xmmword_1AFE20160;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v9 = xmmword_1AFE20180;
    v10 = xmmword_1AFE201A0;
    do
    {
      *(&v11 + v5) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(&v7 + v5))), xmmword_1AFE21DD0, *(&v7 + v5), 1), xmmword_1AFE21DE0, *(&v7 + v5), 2), xmmword_1AFE201A0, *(&v7 + v5), 3);
      v5 += 16;
    }

    while (v5 != 64);
    return *&v11;
  }

  *&result = 1065353216;
  return result;
}

VFXAuthoringEnvironment2 *sub_1AF1D1084(VFXAuthoringEnvironment2 *result, const char *a2)
{
  if (result)
  {
    v2 = result;
    result = result[1]._lightModel;
    if (result)
    {
      v3 = 1;
    }

    else
    {
      v3 = a2 == 0;
    }

    if (!v3)
    {
      result = sub_1AF108308(v2, a2);
      v2[1]._lightModel = result;
    }
  }

  return result;
}

void sub_1AF1D10C8(_BOOL8 a1, uint64_t a2, void *cf)
{
  v5 = a1;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDFD68(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (a2 >= 4)
  {
    v13 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFFF0();
    }
  }

  v14 = v5 + 432;
  v15 = *(v5 + 432 + 8 * a2);
  if (v15 != cf)
  {
    if (v15)
    {
      CFRelease(v15);
      *(v14 + 8 * a2) = 0;
    }

    if (cf)
    {
      v16 = CFRetain(cf);
    }

    else
    {
      v16 = 0;
    }

    *(v14 + 8 * a2) = v16;
  }

  sub_1AF1BC258(cf, a2);
  if (cf)
  {
    sub_1AF1C3CB4(cf, v5);
  }
}

uint64_t sub_1AF1D1198(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDFD68(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 >= 4)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFFF0();
    }
  }

  return *(v3 + 8 * v2 + 432);
}

void sub_1AF1D121C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(result + 352);
}

uint64_t sub_1AF1D126C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 352);
}

BOOL sub_1AF1D12B4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 344);
  if (!v11)
  {
    return 0;
  }

  result = sub_1AF167434(v11);
  if (result)
  {
    return sub_1AF166220(v11, v13);
  }

  return result;
}

uint64_t sub_1AF1D131C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 356);
}

void sub_1AF1D1364(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 356) = v2;
}

uint64_t sub_1AF1D13B8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 472);
}

uint64_t sub_1AF1D1400(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 480);
}

uint64_t sub_1AF1D1448(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 484);
}

CFTypeRef sub_1AF1D1490(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFD68(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 176);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 176) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 176) = result;
  }

  return result;
}

id sub_1AF1D1514(uint64_t a1)
{
  sub_1AF1BE334(@"kCFXNotificationWorldWillDie", a1, 0, 1u);
  v3 = *(a1 + 152);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 152) = 0;
  }

  v4 = *(a1 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 160) = 0;
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 128) = 0;
  }

  v6 = *(a1 + 136);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 136) = 0;
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 80) = 0;
  }

  for (i = 432; i != 464; i += 8)
  {
    v9 = *(a1 + i);
    if (v9)
    {
      v10 = sub_1AF1C3F64(v9, v2);
      if (v10 != *(a1 + 48))
      {
        v12 = sub_1AF0D5194(v10, v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v34 = 0;
          _os_log_impl(&dword_1AF0CE000, v12, OS_LOG_TYPE_DEFAULT, "Warning: RootNode is not retained by the world", v34, 2u);
        }
      }

      sub_1AF1C3A90(*(a1 + i), a1);
    }
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    *(v13 + 24) = 0;
  }

  v14 = sub_1AF1CE864(a1, v2);
  if (v14)
  {
    sub_1AF1C3A90(v14, a1);
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 64) = 0;
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 88) = 0;
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 104) = 0;
  }

  v18 = *(a1 + 96);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 96) = 0;
  }

  v19 = *(a1 + 112);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 112) = 0;
  }

  v20 = *(a1 + 184);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 184) = 0;
  }

  v21 = *(a1 + 336);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 336) = 0;
  }

  v22 = *(a1 + 344);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 344) = 0;
  }

  v23 = *(a1 + 144);
  if (v23)
  {
    CFRelease(v23);
    *(a1 + 144) = 0;
  }

  v24 = *(a1 + 464);
  if (v24)
  {
    CFRelease(v24);
    *(a1 + 464) = 0;
  }

  for (j = 432; j != 464; j += 8)
  {
    v26 = *(a1 + j);
    if (v26)
    {
      CFRelease(v26);
      *(a1 + j) = 0;
    }
  }

  v27 = *(a1 + 168);
  if (v27)
  {
    v28 = vfx_counters_null();
    sub_1AF14E478(v27, v28, v29);
    sub_1AF14E520(*(a1 + 168), 0);
    v27 = *(a1 + 168);
  }

  v30 = *(a1 + 176);
  if (v30)
  {
    CFRelease(v30);
    *(a1 + 176) = 0;
  }

  v31 = *(a1 + 120);
  if (v31)
  {
    CFRelease(v31);
    *(a1 + 120) = 0;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  *(a1 + 168) = 0;
  pthread_mutex_destroy((a1 + 264));
  vfx_counters_destroy(*(a1 + 472));
  return sub_1AF16C9A4(a1, v32);
}

uint64_t sub_1AF1D1788(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  v7 = sub_1AF1CF7E8(a1, v5);

  return sub_1AF1C4020(v7, a2);
}

void sub_1AF1D17E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE0070(v2);
  }
}

__CFArray *sub_1AF1D1824(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 64;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v4, @"name", @"root");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v66 = 0;
  valuePtr = 6;
  v65 = a1 + 208;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v8, @"name", @"startTime");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = MEMORY[0x1E695E9E8];
  v13 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v66 = 0;
  valuePtr = 6;
  v65 = a1 + 216;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v13, @"name", @"endTime");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, v3, v12);
  v66 = 0;
  valuePtr = 1;
  v65 = a1 + 224;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v17, @"name", @"frameRate");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 0;
  valuePtr = 1;
  v65 = a1 + 228;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v24 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v21, @"name", @"playbackSpeed");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 232;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v28 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v25, @"name", @"attributes");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = MEMORY[0x1E695E9D8];
  v30 = MEMORY[0x1E695E9E8];
  v31 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 0;
  valuePtr = 8;
  v65 = a1 + 240;
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v33 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v34 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v31, @"name", @"upAxis");
  CFDictionarySetValue(v31, @"type", v32);
  CFDictionarySetValue(v31, @"address", v34);
  CFDictionarySetValue(v31, @"semantic", v33);
  CFArrayAppendValue(Mutable, v31);
  CFRelease(v33);
  CFRelease(v31);
  CFRelease(v34);
  CFRelease(v32);
  v35 = CFDictionaryCreateMutable(0, 4, v29, v30);
  v66 = 0;
  valuePtr = 1;
  v65 = a1 + 256;
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v38 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v35, @"name", @"unit");
  CFDictionarySetValue(v35, @"type", v36);
  CFDictionarySetValue(v35, @"address", v38);
  CFDictionarySetValue(v35, @"semantic", v37);
  CFArrayAppendValue(Mutable, v35);
  CFRelease(v37);
  CFRelease(v35);
  CFRelease(v38);
  CFRelease(v36);
  v39 = CFDictionaryCreateMutable(0, 4, v29, v30);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 88;
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v41 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v42 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v39, @"name", @"animationManager");
  CFDictionarySetValue(v39, @"type", v40);
  CFDictionarySetValue(v39, @"address", v42);
  CFDictionarySetValue(v39, @"semantic", v41);
  CFArrayAppendValue(Mutable, v39);
  CFRelease(v41);
  CFRelease(v39);
  CFRelease(v42);
  CFRelease(v40);
  v43 = MEMORY[0x1E695E9E8];
  v44 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 336;
  v45 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v47 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v44, @"name", @"background");
  CFDictionarySetValue(v44, @"type", v45);
  CFDictionarySetValue(v44, @"address", v47);
  CFDictionarySetValue(v44, @"semantic", v46);
  CFArrayAppendValue(Mutable, v44);
  CFRelease(v46);
  CFRelease(v44);
  CFRelease(v47);
  CFRelease(v45);
  v48 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v43);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 344;
  v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v51 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v48, @"name", @"environment");
  CFDictionarySetValue(v48, @"type", v49);
  CFDictionarySetValue(v48, @"address", v51);
  CFDictionarySetValue(v48, @"semantic", v50);
  CFArrayAppendValue(Mutable, v48);
  CFRelease(v50);
  CFRelease(v48);
  CFRelease(v51);
  CFRelease(v49);
  v52 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v43);
  v66 = 0;
  valuePtr = 5;
  v65 = a1 + 48;
  v53 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v54 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v55 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v52, @"name", @"worldRef");
  CFDictionarySetValue(v52, @"type", v53);
  CFDictionarySetValue(v52, @"address", v55);
  CFDictionarySetValue(v52, @"semantic", v54);
  CFArrayAppendValue(Mutable, v52);
  CFRelease(v54);
  CFRelease(v52);
  CFRelease(v55);
  CFRelease(v53);
  v56 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v43);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 128;
  v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v58 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v59 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v56, @"name", @"lightingSystem");
  CFDictionarySetValue(v56, @"type", v57);
  CFDictionarySetValue(v56, @"address", v59);
  CFDictionarySetValue(v56, @"semantic", v58);
  CFArrayAppendValue(Mutable, v56);
  CFRelease(v58);
  CFRelease(v56);
  CFRelease(v59);
  CFRelease(v57);
  v60 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 136;
  v61 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v62 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v63 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v60, @"name", @"raytracingSystem");
  CFDictionarySetValue(v60, @"type", v61);
  CFDictionarySetValue(v60, @"address", v63);
  CFDictionarySetValue(v60, @"semantic", v62);
  CFArrayAppendValue(Mutable, v60);
  CFRelease(v62);
  CFRelease(v60);
  CFRelease(v63);
  CFRelease(v61);
  return Mutable;
}

uint64_t sub_1AF1D255C()
{
  result = qword_1EB658640;
  if (!qword_1EB658640)
  {
    result = getpagesize();
    qword_1EB658640 = result;
  }

  return result;
}

vm_address_t sub_1AF1D2590(uint64_t size, uint64_t a2)
{
  v2 = size;
  if (!size)
  {
    v3 = sub_1AF0D5194(0, a2);
    size = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (size)
    {
      sub_1AFDE00B4(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = qword_1EB658640;
  if (!qword_1EB658640)
  {
    size = getpagesize();
    v10 = size;
    qword_1EB658640 = size;
  }

  if (v2 % v10)
  {
    v11 = sub_1AF0D5194(size, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE012C(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  address = 0;
  v20 = vm_allocate(*MEMORY[0x1E69E9A60], &address, v2, 1442840577);
  result = address;
  if (v20)
  {
    if (!address)
    {
      v22 = sub_1AF0D5194(0, v19);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDC148(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    return 0;
  }

  return result;
}

void sub_1AF1D2694(uint64_t a1, uint64_t a2)
{
  sub_1AF1D2A38(a1, a2);
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }
}

uint64_t sub_1AF1D26D0()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739978 = result;
  return result;
}

void *sub_1AF1D26F8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED739980[0] != -1)
  {
    sub_1AFDE01A4();
  }

  v4 = sub_1AF0D160C(qword_1ED739978, 0x38uLL);
  v4[5] = sub_1AF1D2E60(v4);
  v4[2] = a1;
  v4[3] = a2;
  return v4;
}

char *sub_1AF1D2760(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE01B8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1D2EB4(*(a1 + 40));
  if (v11 == -1)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      *(a1 + 48) = v12 + 1;
      v13 = malloc_type_realloc(*(a1 + 32), 16 * (v12 + 1), 0x10800409227ACB4uLL);
      *(a1 + 32) = v13;
      v14 = &v13[16 * v12];
      *v14 = malloc_type_malloc(*(a1 + 24) * *(a1 + 16), 0xFF91E109uLL);
      v16 = *(a1 + 24);
      *(v14 + 2) = v16;
      v17 = *(a1 + 40);
      v18 = v16 * v12;
    }

    else
    {
      v19 = malloc_type_calloc(0x10uLL, 1uLL, 0x15CB7973uLL);
      *(a1 + 32) = v19;
      *v19 = malloc_type_malloc(*(a1 + 24) * *(a1 + 16), 0xFF91E109uLL);
      v16 = *(a1 + 24);
      v19[2] = v16;
      *(a1 + 48) = 1;
      v17 = *(a1 + 40);
      v18 = 0;
    }

    sub_1AF1D3458(v17, v18, v16, v15);
    v11 = sub_1AF1D2EB4(*(a1 + 40));
  }

  sub_1AF1D3E98(*(a1 + 40), v11);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32) + 16 * (v11 / v20);
  --*(v21 + 8);
  v22 = *v21;
  if (!*v21)
  {
    v22 = malloc_type_malloc(*(a1 + 16) * v20, 0xFF91E109uLL);
    *v21 = v22;
    *(v21 + 8) = *(a1 + 24) - 1;
    --*(a1 + 56);
  }

  return &v22[*(a1 + 16) * (v11 % v20)];
}

void sub_1AF1D28EC(_BOOL8 a1, unint64_t a2, int64x2_t a3)
{
  v4 = a1;
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDE01B8(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v13 = (v4 + 48);
  v12 = *(v4 + 48);
  if (v12 < 1)
  {
LABEL_11:
    v21 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE0230(v21);
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v16 = *(v4 + 16);
    v17 = *(v4 + 24);
    v18 = (*(v4 + 32) + 8);
    while (1)
    {
      v19 = *(v18 - 1);
      if (v19 <= a2 && v19 + v17 * v16 > a2)
      {
        break;
      }

      ++v15;
      v18 += 4;
      v14 += 16;
      if (!--v12)
      {
        goto LABEL_11;
      }
    }

    sub_1AF1D3E90(*(v4 + 40), (a2 - v19) / v16 + v15 * v17, a3);
    v22 = *v18 + 1;
    *v18 = v22;
    if (*(v4 + 24) == v22 && (!*(v4 + 64) || *v13 >= 2))
    {
      ++*(v4 + 56);
      free(*(*(v4 + 32) + v14));
      v23 = *(v4 + 32);
      *&v23[v14] = 0;
      if (*(v4 + 56) == *(v4 + 48))
      {
        free(v23);
        *(v4 + 32) = 0;
        sub_1AF1D3B54(*(v4 + 40));
        *v13 = 0;
        *(v4 + 56) = 0;
      }
    }
  }
}

void sub_1AF1D2A38(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE01B8(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 48) >= 1)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(a1 + 32);
      free(*(v13 + v11));
      *(v13 + v11) = 0;
      ++v12;
      v11 += 16;
    }

    while (v12 < *(a1 + 48));
  }

  free(*(a1 + 32));
  *(a1 + 32) = 0;
  sub_1AF1D3B54(*(a1 + 40));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
}

BOOL sub_1AF1D2AE0(CFTypeRef cf1, const void *a2)
{
  result = 0;
  if (cf1)
  {
    if (a2)
    {
      return CFEqual(cf1, a2) != 0;
    }
  }

  return result;
}

void sub_1AF1D2B1C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    v1 = *(a1 + 24);
    if (v1)
    {
      free(v1);
    }
  }
}

__CFString *sub_1AF1D2B38(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 256);
  v3 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | ", v3, a1);
  if (*(a1 + 16))
  {
    goto LABEL_15;
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    v4 = *(a1 + 24);
    if (*(v4 + 16))
    {
      v5 = *(v4 + 8);
      CFStringAppendFormat(Mutable, 0, @"[number of indexes: %lu (in %lu ranges), indexes: ("), *(v4 + 16), v5;
      if (v5 < 1)
      {
        v10 = @"]>");
        goto LABEL_16;
      }

      v6 = v4 + 56;
      goto LABEL_8;
    }

LABEL_15:
    v10 = @"(no index)";
    goto LABEL_16;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_15;
  }

  v6 = a1 + 24;
  v5 = 1;
  CFStringAppendFormat(Mutable, 0, @"[number of indexes: %lu (in %lu ranges), indexes: ("), v7, 1;
LABEL_8:
  v8 = 0;
  v9 = (v6 + 8);
  v10 = @"]>");
  do
  {
    if (v8)
    {
      CFStringAppend(Mutable, @" ");
    }

    v11 = *(v9 - 1);
    v12 = *v9;
    CFStringAppendFormat(Mutable, 0, @"%lu", v11);
    if (v12 >= 2)
    {
      CFStringAppendFormat(Mutable, 0, @"-%lu", v11 + v12 - 1);
    }

    ++v8;
    v9 += 2;
  }

  while (v5 != v8);
LABEL_16:
  CFStringAppend(Mutable, v10);
  return Mutable;
}

uint64_t sub_1AF1D2CC8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739938 = result;
  return result;
}

double sub_1AF1D2CF0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 16);
    *(a1 + 16) = v4 | 3;
    if ((*(a2 + 16) & 1) == 0)
    {
      if ((*(a2 + 16) & 2) != 0)
      {
        v6 = *(a2 + 24);
        *(a1 + 24) = v6;
        *(a1 + 16) = v4 & 0xFC | 2;
      }

      else
      {
        *(a1 + 16) = v4 & 0xFC | 2;
        if (*(a2 + 16))
        {
          v5 = 0;
        }

        else if ((*(a2 + 16) & 2) != 0)
        {
          v5 = 1;
        }

        else
        {
          v5 = *(*(a2 + 24) + 8);
        }

        *(a1 + 16) = v4 & 0xFC;
        v7 = malloc_type_calloc(16 * v5 + 56, 1uLL, 0xD6968619uLL);
        *(a1 + 24) = v7;
        v8 = a1 + 24;
        v7[6] = 0;
        **(a1 + 24) = v5;
        *(*(a1 + 24) + 8) = v5;
        *(*(a1 + 24) + 16) = 0;
        v9 = a1 + 24;
        if ((*(a1 + 16) & 2) == 0)
        {
          v9 = *v8 + 56;
        }

        v10 = (a2 + 24);
        if ((*(a2 + 16) & 2) == 0)
        {
          v10 = (*v10 + 56);
        }

        if (v5 >= 1)
        {
          v11 = (v9 + 8);
          do
          {
            v12 = *v10;
            v10 += 2;
            *&v6 = v12;
            *(v11 - 1) = v12;
            *&v12 = *v11;
            v11 += 2;
            *(*v8 + 16) += v12;
            --v5;
          }

          while (v5);
        }
      }
    }
  }

  return *&v6;
}

uint64_t sub_1AF1D2E18(uint64_t a1)
{
  if (qword_1ED739940 != -1)
  {
    sub_1AFDE0274();
  }

  v2 = qword_1ED739938;

  return sub_1AF0D160C(v2, 0x18uLL);
}

uint64_t sub_1AF1D2E60(uint64_t a1)
{
  result = sub_1AF1D2E18(a1);
  *(result + 16) |= 0xBu;
  return result;
}

uint64_t sub_1AF1D2E88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  if ((*(a1 + 16) & 2) != 0)
  {
    v1 = a1 + 32;
  }

  else
  {
    v1 = *(a1 + 24) + 16;
  }

  return *v1;
}

uint64_t sub_1AF1D2EB4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v1 = (a1 + 24);
    if ((*(a1 + 16) & 2) != 0)
    {
      return *v1;
    }

    v2 = *v1;
    if (*(v2 + 8))
    {
      v1 = (v2 + 56);
      return *v1;
    }
  }

  return -1;
}

uint64_t sub_1AF1D2EE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v1 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    v4 = 0;
    return v1[2 * v4];
  }

  v2 = *v1;
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v1 = (v2 + 56);
  v4 = v3 - 1;
  return v1[2 * v4];
}

uint64_t sub_1AF1D2F34(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v5 = a3;
  v6 = a2;
  if ((*(a1 + 16) & 2) != 0)
  {
    v10 = *(a1 + 24);
    v15 = v10 + *(a1 + 32);
    v16 = v15 - 1;
    if (a4)
    {
      if (a3)
      {
        if (v10 < a2)
        {
          if (v15 > a2)
          {
            return v6;
          }

          v8 = 0;
LABEL_47:
          v27 = sub_1AF1D3238(a1, v6);
          if (v27 == -1)
          {
            return -1;
          }

          v28 = (a1 + 24);
          if ((*(a1 + 16) & 2) != 0)
          {
            v29 = (a1 + 24);
          }

          else
          {
            v29 = v10 + 7;
          }

          v30 = v29[2 * v27];
          if (v6 <= v30)
          {
            v16 = v30;
          }

          else
          {
            v16 = v6;
          }

          if (v10[6] == v8)
          {
            v10[4] = v27;
            *(*v28 + 40) = v16 - v30;
            v26 = *v28;
            goto LABEL_56;
          }

          return v16;
        }
      }

      else if (v10 <= a2)
      {
        if (v16 > a2)
        {
          return a2 + 1;
        }

        v8 = 0;
LABEL_45:
        if (v6 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return -1;
        }

        ++v6;
        goto LABEL_47;
      }

      return *(a1 + 24);
    }

    if (a3)
    {
      if (v16 <= a2)
      {
        return v16;
      }

      v16 = a2;
      if (v10 <= a2)
      {
        return v16;
      }

      goto LABEL_32;
    }

    if (v15 <= a2)
    {
      return v16;
    }

    if (v10 < a2)
    {
      return a2 - 1;
    }

    goto LABEL_30;
  }

  v8 = pthread_self();
  v9 = (a1 + 24);
  v10 = *(a1 + 24);
  if (v10[6] == v8 && v10[3] == v6)
  {
    if ((v5 & 1) == 0)
    {
      v11 = v10 + 7;
      if ((*(a1 + 16) & 2) != 0)
      {
        v11 = (a1 + 24);
      }

      if (a4)
      {
        v12 = v10[4];
        if (v11[2 * v12 + 1] - 1 > v10[5])
        {
          v10[3] = v6 + 1;
          v13 = *v9;
          v14 = *(*v9 + 40) + 1;
LABEL_59:
          *(v13 + 40) = v14;
          return *(*v9 + 24);
        }

        if ((*(a1 + 16) & 3) != 0)
        {
          v31 = (*(a1 + 16) & 1) == 0;
        }

        else
        {
          v31 = v10[1];
        }

        v37 = v12 + 1;
        if (v37 < v31)
        {
          v10[4] = v37;
          v38 = v11[2 * *(*v9 + 32)];
          *(*v9 + 40) = 0;
          *(*v9 + 24) = v38;
          return *(*v9 + 24);
        }
      }

      else
      {
        if (v10[5] >= 1)
        {
          v10[3] = v6 - 1;
          v13 = *v9;
          v14 = *(*v9 + 40) - 1;
          goto LABEL_59;
        }

        v32 = v10[4];
        v33 = v32 < 1;
        v34 = v32 - 1;
        if (!v33)
        {
          v10[4] = v34;
          v35 = &v11[2 * *(*v9 + 32)];
          v36 = *v35;
          *(*v9 + 40) = v35[1] - 1;
          *(*v9 + 24) = *(*v9 + 40) + v36;
          return *(*v9 + 24);
        }
      }

      v10[6] = 0;
      return -1;
    }

    return v6;
  }

  if (a4)
  {
    if (v5)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if ((v5 & 1) == 0)
  {
LABEL_30:
    if (!v6)
    {
      return -1;
    }

    --v6;
  }

LABEL_32:
  v17 = sub_1AF1D36C0(a1, v6);
  if (v17 == -1)
  {
    return -1;
  }

  v18 = v17;
  v19 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    v20 = (a1 + 24);
  }

  else
  {
    v20 = v10 + 7;
  }

  v21 = &v20[2 * v17];
  v22 = *v21;
  v23 = v21[1] + *v21;
  if (v6 >= v23)
  {
    v16 = v23 - 1;
  }

  else
  {
    v16 = v6;
  }

  v24 = pthread_self();
  v25 = *(a1 + 24);
  if (*(v25 + 48) == v24)
  {
    *(v25 + 32) = v18;
    *(*v19 + 40) = v16 - v22;
    v26 = *v19;
LABEL_56:
    *(v26 + 24) = v16;
  }

  return v16;
}

unint64_t sub_1AF1D3238(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v2 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    goto LABEL_6;
  }

  v3 = *v2;
  v4 = *(v3 + 8);
  v5 = v4 == 1;
  v6 = v4 < 1;
  v7 = v4 - 1;
  if (v6)
  {
    return -1;
  }

  v2 = (v3 + 56);
  if (!v5)
  {
    v9 = 0;
    v10 = v7;
    do
    {
      result = (v10 + v9) >> 1;
      v11 = &v2[2 * result];
      if (*v11 <= a2)
      {
        if (v11[1] + *v11 > a2)
        {
          return result;
        }

        v9 = result + 1;
      }

      else
      {
        v10 = (v10 + v9) >> 1;
      }
    }

    while (v9 < v10);
    goto LABEL_7;
  }

LABEL_6:
  v7 = 0;
  v9 = 0;
LABEL_7:
  if (v2[2 * v9 + 1] + v2[2 * v9] > a2)
  {
    return v9;
  }

  if (v9 < v7)
  {
    return v9 + 1;
  }

  return -1;
}

BOOL sub_1AF1D32E4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  v4 = a1 + 24;
  if ((*(a1 + 16) & 2) != 0)
  {
    return *v4 <= a2 && *(a1 + 32) + *v4 > a2;
  }

  else
  {
    v5 = *(*v4 + 48);
    if (v5 != pthread_self())
    {
      v6 = *(a1 + 16);
      goto LABEL_5;
    }

    v12 = *v4;
    if (*(*v4 + 24) != a2)
    {
      v6 = *(a1 + 16);
      v13 = v12 + 56;
      if ((v6 & 2) != 0)
      {
        v13 = v4;
      }

      v14 = (v13 + 16 * *(v12 + 32));
      if (*v14 > a2 || v14[1] + *v14 <= a2)
      {
LABEL_5:
        if ((v6 & 1) == 0)
        {
          if ((v6 & 2) != 0)
          {
            goto LABEL_9;
          }

          v7 = *(*v4 + 8);
          if (v7 >= 1)
          {
            v4 = *v4 + 56;
            v8 = v7 - 1;
            if (v7 != 1)
            {
              v15 = 0;
              do
              {
                v9 = (v15 + v8) >> 1;
                v16 = (v4 + 16 * v9);
                if (*v16 <= a2)
                {
                  if (v16[1] + *v16 > a2)
                  {
                    return v9 != -1;
                  }

                  v15 = v9 + 1;
                }

                else
                {
                  v8 = (v15 + v8) >> 1;
                }
              }

              while (v15 < v8);
              v9 = v15;
LABEL_10:
              v10 = (v4 + 16 * v9);
              if (*v10 <= a2 && v10[1] + *v10 > a2)
              {
                return v9 != -1;
              }

              goto LABEL_12;
            }

LABEL_9:
            v9 = 0;
            goto LABEL_10;
          }
        }

LABEL_12:
        v9 = -1;
        return v9 != -1;
      }
    }

    return 1;
  }
}

int64x2_t sub_1AF1D3458(uint64_t a1, uint64_t a2, uint64_t a3, int64x2_t result)
{
  if (a3)
  {
    v4 = a3;
    v7 = a2 + a3;
    v8 = sub_1AF1D36C0(a1, a2);
    if (v8 == -1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = a1 + 24;
    for (i = 16 * v9; ; i += 16)
    {
      v12 = (*(a1 + 16) & 1) == 0;
      if ((*(a1 + 16) & 3) == 0)
      {
        v12 = *(*v10 + 8);
      }

      if (v9 >= v12)
      {
        goto LABEL_25;
      }

      v13 = a1 + 24;
      if ((*(a1 + 16) & 2) == 0)
      {
        v13 = *v10 + 56;
      }

      v14 = (v13 + i);
      v15 = *v14;
      v16 = v7 - *v14;
      if (v7 < *v14)
      {
        break;
      }

      v17 = v14[1] + v15;
      if (a2 < v15)
      {
        v15 = a2;
        if (v7 <= v17)
        {
          v16 = v17 - a2;
        }

        else
        {
          v16 = v4;
        }

        if (v7 <= v17)
        {
          v4 = v17 - a2;
        }

LABEL_24:
        sub_1AF1D3870(a1, v9, v15, v16);
LABEL_25:
        if (*(a1 + 16))
        {
          if (v9)
          {
            goto LABEL_40;
          }

          v19 = 1;
        }

        else
        {
          if ((*(a1 + 16) & 2) == 0)
          {
            v18 = *(*v10 + 8);
            if (v18 == v9)
            {
              v19 = v18 + 1;
              goto LABEL_33;
            }

LABEL_40:
            while (1)
            {
              if (*(a1 + 16))
              {
                v25 = -1;
              }

              else
              {
                v25 = (*(a1 + 16) & 2) != 0 ? 0 : *(*v10 + 8) - 1;
              }

              if (v9 >= v25)
              {
                break;
              }

              v26 = a1 + 24;
              if ((*(a1 + 16) & 2) == 0)
              {
                v26 = *v10 + 56;
              }

              result = *(v26 + 16 * v9);
              v27 = (v26 + 16 * (v9 + 1));
              v28 = vaddvq_s64(result);
              if (v28 < *v27)
              {
                break;
              }

              v29 = v27[1] + *v27;
              if (v28 < v29)
              {
                sub_1AF1D3870(a1, v9, *(v26 + 16 * v9), v29 - result.i64[0]);
                sub_1AF1D3968(a1, ++v9);
              }

              else
              {
                sub_1AF1D3968(a1, v9 + 1);
              }
            }

            return result;
          }

          if (v9 != 1)
          {
            goto LABEL_40;
          }

          v19 = 2;
        }

LABEL_33:
        result.i64[0] = sub_1AF1D3F3C(a1, v19).n128_u64[0];
        v20 = *(a1 + 16);
        if ((v20 & 2) != 0)
        {
          *(a1 + 24) = a2;
          *(a1 + 32) = v4;
        }

        else
        {
          *(*(a1 + 24) + 48) = 0;
          v21 = *(a1 + 24);
          if ((*(a1 + 16) & 2) != 0)
          {
            v22 = a1 + 24;
          }

          else
          {
            v22 = v21 + 56;
          }

          v23 = *(v21 + 8);
          *(v21 + 8) = v23 + 1;
          v24 = (v22 + 16 * v23);
          *v24 = a2;
          v24[1] = v4;
          *(*(a1 + 24) + 16) += v4;
          v20 = *(a1 + 16);
        }

        *(a1 + 16) = v20 & 0xFE;
        goto LABEL_40;
      }

      if (v7 <= v17)
      {
        return result;
      }

      if (v17 >= a2)
      {
        goto LABEL_24;
      }

      ++v9;
    }

    sub_1AF1D375C(a1, a2, v4, v9);
  }

  return result;
}

unint64_t sub_1AF1D36C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    return -1;
  }

  v2 = (a1 + 24);
  if ((*(a1 + 16) & 2) != 0)
  {
    goto LABEL_5;
  }

  v3 = *v2;
  v4 = *(v3 + 8);
  if (v4 < 1)
  {
    return -1;
  }

  v2 = (v3 + 56);
  v5 = v4 - 1;
  if (v4 != 1)
  {
    v6 = 0;
    do
    {
      result = (v5 + v6) >> 1;
      v10 = &v2[2 * result];
      if (*v10 <= a2)
      {
        if (v10[1] + *v10 > a2)
        {
          return result;
        }

        v6 = result + 1;
      }

      else
      {
        v5 = (v5 + v6) >> 1;
      }
    }

    while (v6 < v5);
    goto LABEL_6;
  }

LABEL_5:
  v6 = 0;
LABEL_6:
  v7 = v2[2 * v6];
  v8 = v6 - 1;
  if (v6 <= 0)
  {
    v8 = -1;
  }

  if (v7 > a2)
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

void sub_1AF1D375C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 16))
  {
    v8 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(*(a1 + 24) + 8);
  }

  if (v8 >= a4)
  {
    sub_1AF1D3F3C(a1, v8 + 1);
    v10 = (a1 + 24);
    if ((*(a1 + 16) & 2) == 0)
    {
      v10 = (*v10 + 56);
    }

    if (v8 > a4)
    {
      v11 = &v10[2 * v8];
      do
      {
        --v8;
        *v11 = *(v11 - 1);
        --v11;
      }

      while (v8 > a4);
    }

    v12 = &v10[2 * a4];
    *v12 = a2;
    v12[1] = a3;
    v13 = *(a1 + 16);
    if ((v13 & 2) == 0)
    {
      *(*(a1 + 24) + 48) = 0;
      ++*(*(a1 + 24) + 8);
      *(*(a1 + 24) + 16) += a3;
      v13 = *(a1 + 16);
    }

    *(a1 + 16) = v13 & 0xFE;
  }

  else
  {
    v9 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE0288();
    }
  }
}

void sub_1AF1D3870(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16))
  {
    v4 = 0;
  }

  else if ((*(result + 16) & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*(result + 24) + 8);
  }

  if (a4 <= 0)
  {

    sub_1AF1D3968(result, a2);
  }

  else if (v4 >= a2)
  {
    v6 = result + 24;
    v7 = result + 24;
    if ((*(result + 16) & 2) == 0)
    {
      v7 = *v6 + 56;
    }

    v8 = (v7 + 16 * a2);
    v9 = v8[1];
    *v8 = a3;
    v8[1] = a4;
    if ((*(result + 16) & 2) == 0)
    {
      *(*v6 + 48) = 0;
      *(*v6 + 16) -= v9;
      *(*v6 + 16) += a4;
    }
  }

  else
  {
    v5 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE0288();
    }
  }
}

void sub_1AF1D3968(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
  }

  else if ((*(result + 16) & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*(result + 24) + 8);
  }

  if (v3 >= a2)
  {
    v5 = (result + 24);
    if ((*(result + 16) & 2) == 0)
    {
      v5 = (*v5 + 56);
    }

    v6 = &v5[2 * a2];
    v7 = v6[1];
    if (a2 + 1 < v3)
    {
      v8 = v6 + 2;
      v9 = ~a2 + v3;
      do
      {
        *(v8 - 1) = *v8;
        ++v8;
        --v9;
      }

      while (v9);
      v2 = *(result + 16);
    }

    if ((v2 & 2) != 0)
    {
      v10 = v2 | 1;
    }

    else
    {
      *(*(result + 24) + 48) = 0;
      --*(*(result + 24) + 8);
      *(*(result + 24) + 16) -= v7;
      v10 = *(result + 16) & 0xFE;
      if (!*(*(result + 24) + 8))
      {
        ++v10;
      }
    }

    *(result + 16) = v10;
  }

  else
  {
    v4 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE0288();
    }
  }
}

void sub_1AF1D3A7C(uint64_t a1, uint64_t a2)
{
  if (a2 && a2 != a1)
  {
    if ((*(a1 + 16) & 1) == 0 && ((*(a1 + 16) & 2) != 0 || *(*(a1 + 24) + 8)))
    {
      if (*(a2 + 16))
      {
        return;
      }

      if ((*(a2 + 16) & 2) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = *(*(a2 + 24) + 8);
        if (v4 < 1)
        {
          return;
        }
      }

      for (i = 0; i != v4; ++i)
      {
        v6 = sub_1AF1D3B98(a2, i);
        sub_1AF1D3458(a1, v6, v7, v8);
      }
    }

    else
    {
      sub_1AF1D3B54(a1);

      sub_1AF1D2CF0(a1, a2);
    }
  }
}

void sub_1AF1D3B54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) == 0)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      free(v3);
      v2 = *(a1 + 16);
    }

    *(a1 + 24) = 0;
  }

  *(a1 + 16) = v2 | 3;
}

uint64_t sub_1AF1D3B98(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = 0;
  }

  else if ((*(a1 + 16) & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(*(a1 + 24) + 8);
  }

  if (v4 < a2)
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE02F0();
    }
  }

  v6 = (a1 + 24);
  if ((*(a1 + 16) & 2) == 0)
  {
    v6 = (*v6 + 56);
  }

  return v6[2 * a2];
}

void sub_1AF1D3C34(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2 < 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_1AF1D3238(result, a2);
      if (v6 == -1)
      {
        return;
      }
    }

    v7 = a2 + a3;
    v8 = result + 24;
    while (1)
    {
      if (*(result + 16))
      {
        v9 = 0;
      }

      else
      {
        v9 = (*(result + 16) & 2) != 0 ? 1 : *(*v8 + 8);
      }

      if (v6 >= v9)
      {
        break;
      }

      v10 = result + 24;
      if ((*(result + 16) & 2) == 0)
      {
        v10 = *v8 + 56;
      }

      v11 = (v10 + 16 * v6);
      v12 = *v11;
      if (v7 < *v11)
      {
        break;
      }

      v13 = v11[1] + v12;
      if (a2 > v12)
      {
        if (v13 > v7)
        {
          sub_1AF1D3870(result, v6, v7, v13 - v7);

          sub_1AF1D375C(result, v12, a2 - v12, v6);
          return;
        }

        if (a2 < v13)
        {
          sub_1AF1D3870(result, v6, v12, a2 - v12);
        }

        ++v6;
      }

      else
      {
        if (v13 > v7)
        {

          sub_1AF1D3870(result, v6, v7, v13 - v7);
          return;
        }

        sub_1AF1D3968(result, v6);
      }
    }
  }
}

void sub_1AF1D3DC0(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a1 + 16) & 1) == 0 && ((*(a1 + 16) & 2) != 0 || *(*(a1 + 24) + 8) >= 1))
  {
    if (a2 == a1)
    {

      sub_1AF1D3B54(a1);
    }

    else
    {
      if (*(a2 + 16))
      {
        return;
      }

      if ((*(a2 + 16) & 2) != 0)
      {
        v4 = 1;
      }

      else
      {
        v4 = *(*(a2 + 24) + 8);
        if (v4 < 1)
        {
          return;
        }
      }

      for (i = 0; i != v4; ++i)
      {
        v6 = sub_1AF1D3B98(a2, i);
        sub_1AF1D3C34(a1, v6, v7);
      }
    }
  }
}

uint64_t sub_1AF1D3EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1D2E18(a1);
  *(v4 + 16) |= 0xBu;
  v5 = sub_1AF1D2E18(v4);
  v5[16] |= 0xBu;
  sub_1AF1D3A7C(v4, a1);
  sub_1AF1D3A7C(v5, a1);
  sub_1AF1D3DC0(v5, a2);
  sub_1AF1D3DC0(v4, v5);
  CFRelease(v5);
  return v4;
}

__n128 sub_1AF1D3F3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if ((v3 & 2) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = **(a1 + 24);
  }

  if (v4 < a2)
  {
    if (a2 == 1)
    {
      *(a1 + 16) = v3 | 2;
    }

    else
    {
      v5 = 2 * v4;
      if (v5 <= a2)
      {
        v5 = a2;
      }

      if (a2 >= 4)
      {
        v6 = v5;
      }

      else
      {
        v6 = 4;
      }

      if ((*(a1 + 16) & 2) != 0)
      {
        v8 = !(v3 & 1);
        if (*(a1 + 16))
        {
          v9 = 0;
        }

        else
        {
          v9 = *(a1 + 32);
        }

        v10 = (a1 + 24);
        v12 = *(a1 + 24);
        *(a1 + 16) = v3 & 0xFD;
        v11 = malloc_type_calloc(16 * v6 + 56, 1uLL, 0x8A973CD8uLL);
        *(a1 + 24) = v11;
        v11[6] = 0;
        **(a1 + 24) = v6;
        *(*(a1 + 24) + 8) = v8;
        *(*(a1 + 24) + 16) = v9;
        if ((*(a1 + 16) & 2) == 0)
        {
          v10 = (*v10 + 56);
        }

        result = v12;
        *v10 = v12;
      }

      else
      {
        *(a1 + 24) = malloc_type_realloc(*(a1 + 24), 16 * v6 + 56, 0x1080040EA666AC5uLL);
      }
    }
  }

  return result;
}

void sub_1AF1D4080(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1AF1D40A4(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
    a1[6] = 0;
  }

  v5 = a1[8];

  free(v5);
}

uint64_t sub_1AF1D4110()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739928 = result;
  return result;
}

void *sub_1AF1D4138(uint64_t a1)
{
  if (qword_1ED739930 != -1)
  {
    sub_1AFDE0358();
  }

  v2 = sub_1AF0D160C(qword_1ED739928, 0x40uLL);
  Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
  v2[2] = Mutable;
  v2[3] = sub_1AF1D2E60(Mutable);
  v2[4] = 0;
  v2[5] = a1;
  v2[6] = sub_1AF1D26F8(16, 4096);
  sub_1AF1D3458(v2[3], 0, a1, v4);
  return v2;
}

uint64_t sub_1AF1D41CC(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, key);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    return *Value;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_1AF1D4238(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, key);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    v14 = Value;
    result = *Value;
  }

  else
  {
    v14 = sub_1AF1D2760(*(a1 + 48), v13);
    CFDictionaryAddValue(*(a1 + 16), key, v14);
    *(v14 + 1) = 0;
    result = sub_1AF1D42E8(a1);
    *v14 = result;
    ++*(a1 + 72);
  }

  ++*(v14 + 1);
  return result;
}

uint64_t sub_1AF1D42E8(uint64_t a1)
{
  v3 = sub_1AF1D2EB4(*(a1 + 24));
  if (v3 == -1)
  {
    v5 = sub_1AF0D5194(-1, v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE03E4(v5);
    }
  }

  else
  {
    sub_1AF1D3E98(*(a1 + 24), v3);
    v4 = *(a1 + 32);
    if (v4 <= v3)
    {
      v4 = v3;
    }

    *(a1 + 32) = v4;
    *(a1 + 56) = 0;
  }

  return v3;
}

void sub_1AF1D4364(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, key);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    v13 = Value;
    v14 = Value[1] - 1;
    Value[1] = v14;
    if (!v14)
    {
      v15 = *Value;
      CFDictionaryRemoveValue(*(a1 + 16), key);
      sub_1AF1D28EC(*(a1 + 48), v13, v16);
      *(a1 + 56) = 0;
      sub_1AF1D3E90(*(a1 + 24), v15, v17);
      if (*(a1 + 32) == v15)
      {
        v18 = sub_1AF1D2EE4(*(a1 + 24));
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        *(a1 + 32) = v19 - 1;
      }

      ++*(a1 + 72);
    }
  }
}

CFIndex sub_1AF1D4434(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return CFDictionaryGetCount(*(a1 + 16));
}

void sub_1AF1D4480(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE036C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  sub_1AF1D3B54(*(a1 + 24));
  sub_1AF1D3458(*(a1 + 24), 0, *(a1 + 40), v11);
  CFDictionaryRemoveAllValues(*(a1 + 16));
}

uint64_t sub_1AF1D44EC(uint64_t a1, void *key)
{
  *&v16[5] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 56) & 1) == 0)
  {
    Count = CFDictionaryGetCount(*(a1 + 16));
    v5 = *(a1 + 64);
    if (v5)
    {
      free(v5);
      *(a1 + 64) = 0;
    }

    if (Count >= 1)
    {
      v6 = *(a1 + 32);
      *(a1 + 64) = malloc_type_malloc(8 * v6 + 8, 0x100004000313F17uLL);
      v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(*(a1 + 16), v7, 0);
      qsort(v7, Count, 8uLL, sub_1AF1D46A0);
      v8 = 0;
      while (1)
      {
        Value = CFDictionaryGetValue(*(a1 + 16), v7[v8]);
        if (!Value)
        {
          break;
        }

        v11 = *Value;
        if (*Value < 0 || v11 > v6)
        {
          goto LABEL_11;
        }

LABEL_13:
        *(*(a1 + 64) + 8 * v11) = v8++;
        if (Count == v8)
        {
          free(v7);
          goto LABEL_15;
        }
      }

      v11 = -1;
LABEL_11:
      v12 = sub_1AF0D5194(Value, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE0428(v15, v16, v12);
      }

      goto LABEL_13;
    }

LABEL_15:
    *(a1 + 56) = 1;
  }

  result = sub_1AF1D41CC(a1, key);
  if (result != -1)
  {
    v14 = *(a1 + 64);
    if (v14)
    {
      return *(v14 + 8 * result);
    }
  }

  return result;
}

uint64_t sub_1AF1D46A0(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    v2 = -1;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF1D46CC()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734680 = result;
  return result;
}

uint64_t sub_1AF1D46F4(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED734688 != -1)
  {
    sub_1AFDE0478();
  }

  v4 = sub_1AF0D160C(qword_1ED734680, 0x28uLL);
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *v7 = 0x1000000006;
  v6 = 4;
  if (sysctl(v7, 2u, (v4 + 32), &v6, 0, 0) < 0)
  {
    *(v4 + 32) = 64;
  }

  return v4;
}

void sub_1AF1D47C4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  v5 = *(a1 + 16);
  v4 = (a1 + 16);
  v3 = v5;
  if (v5)
  {
    free(v3);
    *v4 = 0;
    v4[1] = 0;
  }
}

void sub_1AF1D4808(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_1AF1D47C4(*(a1 + 16) + v2);
      ++v3;
      v2 += 40;
    }

    while (v3 < *(a1 + 24));
  }

  free(*(a1 + 16));
  *(a1 + 36) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

_DWORD *sub_1AF1D4870(_DWORD *result, uint64_t a2)
{
  v2 = (result[6] - 1);
  result[6] = v2;
  if (v2 != a2)
  {
    return memmove((*(result + 2) + 8 * a2), (*(result + 2) + 8 * a2 + 8), 8 * (v2 - a2));
  }

  return result;
}

void sub_1AF1D48A0(uint64_t result, unint64_t a2)
{
  v2 = WORD1(a2);
  v3 = result;
  *&v41[5] = *MEMORY[0x1E69E9840];
  v39 = a2;
  if (!HIDWORD(a2))
  {
    v4 = sub_1AF0D5194(result, a2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDE048C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v38 = *(v3 + 24);
  if (!v38)
  {
    v16 = 0;
    v13 = 0;
LABEL_22:
    v27 = *(v3 + 28);
    if (v27 < *(v3 + 24) + 1)
    {
      if (*(v3 + 16))
      {
        v28 = 2 * v27;
        *(v3 + 28) = v28;
        if (!v28)
        {
          v29 = sub_1AF0D5194(result, a2);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDE0554(v29, v30, v31, v32, v33, v34, v35, v36);
          }
        }

        v37 = malloc_type_realloc(*(v3 + 16), 8 * *(v3 + 28), 0x100004000313F17uLL);
      }

      else
      {
        *(v3 + 28) = 8;
        v37 = malloc_type_malloc(0x40uLL, 0x100004000313F17uLL);
      }

      *(v3 + 16) = v37;
    }

    if (HIDWORD(v39) > *(v3 + 32))
    {
      *(v3 + 32) = HIDWORD(v39);
    }

    if (v16)
    {
      memmove((*(v3 + 16) + 8 * v13 + 8), (*(v3 + 16) + 8 * v13), 8 * (v38 - v13));
    }

    *(*(v3 + 16) + 8 * v13) = v39;
    ++*(v3 + 24);
    return;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v2;
  v15 = &v39;
  v16 = 1;
  while (1)
  {
    v17 = (*(v3 + 16) + v11);
    v18 = *(v17 + 1);
    v19 = *(v17 + 1);
    v20 = *(v15 + 1);
    v21 = *(v15 + 1);
    v22 = v17;
    if (v19 + v18 == v20 || (v22 = v15, v21 + v20 == v18))
    {
      v23 = *v22;
      if (v12 == 1)
      {
        result = sub_1AF1D4870(v3, v13);
        v17 = v15;
      }

      v24 = (v21 + v19);
      *v17 = v23 | (v24 << 32);
      if (v24 + WORD1(v23) > *(v3 + 8))
      {
        v25 = sub_1AF0D5194(result, a2);
        result = os_log_type_enabled(v25, OS_LOG_TYPE_FAULT);
        if (result)
        {
          sub_1AFDE0504(buf, v41, v25);
        }
      }

      v26 = *(v17 + 1);
      if (v26 > *(v3 + 32))
      {
        *(v3 + 32) = v26;
      }

      if (++v12 == 2)
      {
        return;
      }

      v18 = *(v17 + 1);
      v14 = WORD1(v39);
      v15 = v17;
    }

    if (v18 > v14)
    {
      break;
    }

    v16 = ++v13 < v38;
    v11 += 8;
    if (v38 == v13)
    {
      v13 = v38;
      break;
    }
  }

  if (!v12)
  {
    goto LABEL_22;
  }
}

unint64_t sub_1AF1D4B3C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (*(a1 + 32) < a2)
  {
    v4 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDE05CC(v2, v4);
    }
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    v6 = 0;
    v7 = *(v3 + 16);
    v8 = 2;
    while (1)
    {
      v9 = (v7 + v8);
      v10 = *(v7 + v8 + 2);
      if (v10 >= v2)
      {
        break;
      }

      ++v6;
      v8 += 8;
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    v20 = *(v9 - 1);
    v19 = *v9;
    if (v19 + v2 > *(v3 + 8))
    {
      v22 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDE0658(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    v30 = *(v3 + 16) + v8;
    v31 = *(v30 + 2) - v2;
    if (v31)
    {
      *v30 += v2;
      *(v30 + 2) = v31;
    }

    else
    {
      sub_1AF1D4870(v3, v6);
    }

    if (*(v3 + 32) == v10)
    {
      v32 = *(v3 + 24);
      if (v32)
      {
        v33 = 0;
        v34 = (*(v3 + 16) + 4);
        do
        {
          v36 = *v34;
          v34 += 2;
          v35 = v36;
          if (v36 > v33)
          {
            v33 = v35;
          }

          --v32;
        }

        while (v32);
        *(v3 + 32) = v33;
      }

      else
      {
        *(v3 + 32) = 0;
      }
    }
  }

  else
  {
LABEL_8:
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE06D0(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v2 = 0;
    v19 = 0xFFFF;
    v20 = 0xFFFF;
  }

  return (v2 << 32) | (v19 << 16) | v20;
}

void sub_1AF1D4CCC(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v7 = a4;
  v8 = *(a1 + 40) * a4;
  v9 = malloc_type_malloc(v8, 0x71C34B1EuLL);
  *a2 = v9;
  bzero(v9, v8);
  *(a2 + 8) = a4;
  *(a2 + 12) = a3;

  sub_1AF1D48A0(a2, a3 | (v7 << 32));
}

uint64_t sub_1AF1D4D58(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = v4 + 1;
    v5 = malloc_type_realloc(*(a1 + 16), 40 * (v4 + 1), 0x10A00408EF24B1CuLL);
    *(a1 + 16) = v5;
  }

  else
  {
    v5 = malloc_type_malloc(0x28uLL, 0x10A00408EF24B1CuLL);
    *(a1 + 16) = v5;
    *(a1 + 24) = 1;
  }

  ++*(a1 + 28);
  v6 = v5 + 40 * v4;
  sub_1AF1D4CCC(a1, v6, v4, a2);
  return v6;
}

unint64_t sub_1AF1D4E00(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = *(a1 + 6);
  if (v6)
  {
    a1 = a1[2];
    v7 = v6;
    while (!*a1 || *(a1 + 8) < a2)
    {
      a1 += 5;
      if (!--v7)
      {
        v8 = 0;
        a1 = 0;
        v9 = 40 * v6;
        do
        {
          v10 = *(v5 + 16);
          v11 = (v10 + v8);
          v12 = *(v10 + v8 + 32);
          if (v12 >= a2)
          {
            if (!*v11)
            {
              sub_1AF1D4CCC(v5, v11, *(v10 + v8 + 12), v12);
            }

            a1 = v11;
          }

          v8 += 40;
        }

        while (v9 != v8);
        if (a1)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }
    }

    goto LABEL_18;
  }

LABEL_13:
  v13 = *(v5 + 48);
  if (v13 >= a2)
  {
    v14 = v13;
  }

  else
  {
    v14 = a2;
  }

  if (v14 <= 0x10000)
  {
    a1 = sub_1AF1D4D58(v5, v14);
LABEL_18:
    if (a3)
    {
      *a3 = a1;
    }

    *(v5 + 36) += a2;

    return sub_1AF1D4B3C(a1, a2);
  }

  v16 = sub_1AF0D5194(a1, v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDE0748(v16);
  }

  return 0xFFFFFFFFLL;
}

void sub_1AF1D4F38(uint64_t a1, unint64_t a2)
{
  v4 = (*(a1 + 16) + 40 * a2);
  if (v4[3] != a2)
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE07C8(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  sub_1AF1D48A0(v4, a2);
  if (v4[8] == v4[2] && *(a1 + 28) >= 2u)
  {
    sub_1AF1D47C4(v4);
    --*(a1 + 28);
  }

  *(a1 + 36) -= HIDWORD(a2);
}

uint64_t sub_1AF1D5010(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDE01B8(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (v4 >= *(v5 + 24))
  {
    v13 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDE0840(v13, a2, v14, v15, v16, v17, v18, v19);
    }
  }

  v20 = *(v5 + 16) + 40 * v4;
  if (*(v20 + 12) != v4 || *(v20 + 8) <= HIWORD(v4))
  {
    v21 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE08B8(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  return *v20 + *(v5 + 40) * (a3 + HIWORD(v4));
}

uint64_t sub_1AF1D50F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v4 = result;
    for (i = 0; i != v2; ++i)
    {
      v6 = *(v4 + 16) + 40 * i;
      if (*(v6 + 24))
      {
        v7 = *(*(v6 + 16) + 2);
        v8 = *(v6 + 8);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = *(v6 + 8);
        v7 = v8;
        if (v8)
        {
LABEL_7:
          v9 = 0;
          for (j = 0; j < v8; ++j)
          {
            if (j == v7)
            {
              v11 = *(v6 + 16);
              j = v7 + *(v11 + 8 * v9++ + 4) - 1;
              if (v9 >= *(v6 + 24))
              {
                v7 = v8;
              }

              else
              {
                v7 = *(v11 + 8 * v9 + 2);
              }
            }

            else
            {
              result = (*(a2 + 16))(a2, *v6 + *(v4 + 40) * j);
            }

            v8 = *(v6 + 8);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AF1D5200(uint64_t a1, uint64_t a2)
{
  if (qword_1ED739920 != -1)
  {
    sub_1AFDE0930();
  }

  return qword_1ED739918;
}

uint64_t sub_1AF1D5238()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739918 = result;
  qword_1ED72DFC0 = sub_1AF1D6124;
  return result;
}

uint64_t sub_1AF1D527C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED739920 != -1)
  {
    sub_1AFDE0930();
  }

  result = sub_1AF0D160C(qword_1ED739918, 0xA8uLL);
  if (result)
  {
    *(result + 64) |= 1u;
    *(result + 80) = 0;
    *(result + 88) = 0;
  }

  return result;
}

CFHashCode sub_1AF1D52CC(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    v4 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0944(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = CFHash(cf);
  v13 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * result) ^ ((0x9DDFEA08EB382D69 * result) >> 47));
  *(a1 + 168) = 0x9DDFEA08EB382D69 * (v13 ^ (v13 >> 47));
  return result;
}

uint64_t sub_1AF1D534C(const void *a1, const void *a2)
{
  v4 = sub_1AF1D527C(a1, a2);
  v5 = *(v4 + 80);
  if (v5 != a1)
  {
    if (v5)
    {
      CFRelease(v5);
      *(v4 + 80) = 0;
    }

    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *(v4 + 80) = v6;
  }

  v7 = *(v4 + 88);
  if (v7 != a2)
  {
    if (v7)
    {
      CFRelease(v7);
      *(v4 + 88) = 0;
    }

    if (a2)
    {
      v8 = CFRetain(a2);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 88) = v8;
  }

  v9 = *(v4 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(v4 + 96) = 0;
  }

  v10 = *(v4 + 104);
  if (v10)
  {
    CFRelease(v10);
    *(v4 + 104) = 0;
  }

  v11 = *(v4 + 112);
  if (v11)
  {
    CFRelease(v11);
    *(v4 + 112) = 0;
  }

  v12 = *(v4 + 120);
  if (v12)
  {
    CFRelease(v12);
    *(v4 + 120) = 0;
  }

  *(v4 + 144) = 0;
  v13 = *(v4 + 152);
  if (v13)
  {
    CFRelease(v13);
    *(v4 + 152) = 0;
  }

  v14 = *(v4 + 160);
  if (v14)
  {
    CFRelease(v14);
    *(v4 + 160) = 0;
  }

  sub_1AF1D5450(v4);
  return v4;
}

CFHashCode sub_1AF1D5450(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    v3 = 0x9DDFEA08EB382D69 * (*(v2 + 16))();
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[10];
  if (v4)
  {
    v5 = CFHash(v4);
  }

  else
  {
    v5 = 0;
  }

  result = a1[11];
  if (result)
  {
    result = CFHash(result);
  }

  v7 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47))) >> 47));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v5 ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * (v5 ^ v7)));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  a1[21] = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (result ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (result ^ v9)))) ^ ((0x9DDFEA08EB382D69 * (v9 ^ ((0x9DDFEA08EB382D69 * (result ^ v9)) >> 47) ^ (0x9DDFEA08EB382D69 * (result ^ v9)))) >> 47));
  return result;
}

uint64_t sub_1AF1D5518(const void *a1, const void *a2, int a3, const void *a4, const void *a5)
{
  v10 = sub_1AF1D527C(a1, a2);
  v11 = *(v10 + 80);
  if (v11 != a1)
  {
    if (v11)
    {
      CFRelease(v11);
      *(v10 + 80) = 0;
    }

    if (a1)
    {
      v12 = CFRetain(a1);
    }

    else
    {
      v12 = 0;
    }

    *(v10 + 80) = v12;
  }

  v13 = *(v10 + 88);
  if (v13 != a2)
  {
    if (v13)
    {
      CFRelease(v13);
      *(v10 + 88) = 0;
    }

    if (a2)
    {
      v14 = CFRetain(a2);
    }

    else
    {
      v14 = 0;
    }

    *(v10 + 88) = v14;
  }

  v15 = *(v10 + 96);
  if (v15)
  {
    CFRelease(v15);
    *(v10 + 96) = 0;
  }

  v16 = *(v10 + 104);
  if (v16)
  {
    CFRelease(v16);
    *(v10 + 104) = 0;
  }

  v17 = *(v10 + 112);
  if (v17)
  {
    CFRelease(v17);
    *(v10 + 112) = 0;
  }

  v18 = *(v10 + 120);
  if (v18)
  {
    CFRelease(v18);
    *(v10 + 120) = 0;
  }

  *(v10 + 144) = a3;
  *(v10 + 152) = _Block_copy(a4);
  *(v10 + 160) = _Block_copy(a5);
  sub_1AF1D5450(v10);
  return v10;
}

uint64_t sub_1AF1D5628(const void *a1, const void *a2, int a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, int a9, char a10)
{
  v18 = sub_1AF1D527C(a1, a2);
  v19 = *(v18 + 80);
  if (v19 != a1)
  {
    if (v19)
    {
      CFRelease(v19);
      *(v18 + 80) = 0;
    }

    if (a1)
    {
      v20 = CFRetain(a1);
    }

    else
    {
      v20 = 0;
    }

    *(v18 + 80) = v20;
  }

  v21 = *(v18 + 88);
  if (v21 != a2)
  {
    if (v21)
    {
      CFRelease(v21);
      *(v18 + 88) = 0;
    }

    if (a2)
    {
      v22 = CFRetain(a2);
    }

    else
    {
      v22 = 0;
    }

    *(v18 + 88) = v22;
  }

  v23 = *(v18 + 96);
  if (v23 != a4)
  {
    if (v23)
    {
      CFRelease(v23);
      *(v18 + 96) = 0;
    }

    if (a4)
    {
      v24 = CFRetain(a4);
    }

    else
    {
      v24 = 0;
    }

    *(v18 + 96) = v24;
  }

  v25 = *(v18 + 104);
  if (v25 != a5)
  {
    if (v25)
    {
      CFRelease(v25);
      *(v18 + 104) = 0;
    }

    if (a5)
    {
      v26 = CFRetain(a5);
    }

    else
    {
      v26 = 0;
    }

    *(v18 + 104) = v26;
  }

  v27 = *(v18 + 112);
  if (v27 != a6)
  {
    if (v27)
    {
      CFRelease(v27);
      *(v18 + 112) = 0;
    }

    if (a6)
    {
      v28 = CFRetain(a6);
    }

    else
    {
      v28 = 0;
    }

    *(v18 + 112) = v28;
  }

  v29 = *(v18 + 120);
  if (v29 != a7)
  {
    if (v29)
    {
      CFRelease(v29);
      *(v18 + 120) = 0;
    }

    if (a7)
    {
      v30 = CFRetain(a7);
    }

    else
    {
      v30 = 0;
    }

    *(v18 + 120) = v30;
  }

  v31 = *(v18 + 128);
  if (v31 != a8)
  {
    if (v31)
    {
      CFRelease(v31);
      *(v18 + 128) = 0;
    }

    if (a8)
    {
      v32 = CFRetain(a8);
    }

    else
    {
      v32 = 0;
    }

    *(v18 + 128) = v32;
  }

  *(v18 + 144) = a3;
  v33 = *(v18 + 152);
  if (v33)
  {
    CFRelease(v33);
    *(v18 + 152) = 0;
  }

  v34 = *(v18 + 160);
  if (v34)
  {
    CFRelease(v34);
    *(v18 + 160) = 0;
  }

  *(v18 + 176) = a9;
  if (a10)
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x4800000000;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    v47 = v18;
    v35 = *(v18 + 80);
    if (v35)
    {
      v35 = CFHash(v35);
    }

    *&v48 = v35;
    v36 = *(v18 + 88);
    if (v36)
    {
      v36 = CFHash(v36);
    }

    *(&v48 + 1) = v36;
    v37 = *(v18 + 96);
    if (v37)
    {
      v37 = CFHash(v37);
    }

    v50 = 0;
    v49 = v37;
    v38 = *(v18 + 112);
    if (v38)
    {
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 0x40000000;
      v43[2] = sub_1AF1D6140;
      v43[3] = &unk_1E7A7BF28;
      v43[4] = &v44;
      sub_1AF28A6DC(v38, v43);
    }

    v39 = 0;
    v40 = 0x3EDF6BA1375BCBF0;
    do
    {
      v41 = v45[v39 + 3];
      ++v39;
      v40 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v41) ^ ((0xC6A4A7935BD1E995 * v41) >> 47))) ^ v40);
    }

    while (v39 != 6);
    *(v18 + 168) = (0xC6A4A7935BD1E995 * (v40 ^ (v40 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v40 ^ (v40 >> 47))) >> 47);
    _Block_object_dispose(&v44, 8);
  }

  return v18;
}

uint64_t sub_1AF1D5940(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(a1 + 8 * v2 + 80);
}

CFHashCode sub_1AF1D5998(void *a1, void *aBlock, const void *a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, aBlock);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1[12];
  if (v14)
  {
    CFRelease(v14);
    a1[12] = 0;
  }

  v15 = a1[19];
  if (v15)
  {
    CFRelease(v15);
    a1[19] = 0;
  }

  v16 = a1[20];
  if (v16)
  {
    CFRelease(v16);
    a1[20] = 0;
  }

  a1[19] = _Block_copy(aBlock);
  a1[20] = _Block_copy(a3);
  return sub_1AF1D5450(a1);
}

CFTypeRef sub_1AF1D5A3C(uint64_t a1, uint64_t a2, CFTypeRef cf)
{
  v4 = a2;
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1 + 80;
  result = *(v14 + 8 * v4);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(v14 + 8 * v4) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(v14 + 8 * v4) = result;
  }

  return result;
}

uint64_t sub_1AF1D5AC4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

uint64_t sub_1AF1D5B0C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 104);
}

uint64_t sub_1AF1D5B54(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 112);
}

uint64_t sub_1AF1D5B9C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 120);
}

uint64_t sub_1AF1D5BE4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 176);
}

uint64_t sub_1AF1D5C2C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 128);
}

uint64_t sub_1AF1D5C74(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 136);
}

void sub_1AF1D5CBC(uint64_t a1, void *key, void *value)
{
  Mutable = *(a1 + 136);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 136) = Mutable;
  }

  if (value)
  {

    CFDictionarySetValue(Mutable, key, value);
  }

  else
  {

    CFDictionaryRemoveValue(Mutable, key);
  }
}

uint64_t sub_1AF1D5D58(unsigned int *cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  v13 = v11;
  if (qword_1ED739920 != -1)
  {
    sub_1AFDE0A34();
  }

  if (v13 != qword_1ED739918)
  {
    v14 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0A5C(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return cf[36];
}

uint64_t sub_1AF1D5DFC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 64) >> 1) & 1;
}

void sub_1AF1D5E48(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(result + 64) = *(result + 64) & 0xFD | v12;
}

uint64_t sub_1AF1D5EB4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE09BC(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 72);
  if (!v10)
  {
    return *(a1 + 64) & 1;
  }

  v11 = *(v10 + 24);
  if (!v11)
  {
    return *(a1 + 64) & 1;
  }

  v12 = sub_1AF1D5F64(v10, a2);
  return v11(v12);
}

uint64_t sub_1AF1D5F1C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0AD4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 16;
}

uint64_t sub_1AF1D5F64(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0AD4(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

id sub_1AF1D5FB0(void *a1)
{
  v2 = 0;
  v3 = a1 + 10;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = v3[v2];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v7 = a1[17];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
    a1[12] = 0;
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
    a1[13] = 0;
  }

  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
    a1[14] = 0;
  }

  v11 = a1[15];
  if (v11)
  {
    CFRelease(v11);
    a1[15] = 0;
  }

  v12 = a1[16];
  if (v12)
  {
    CFRelease(v12);
    a1[16] = 0;
  }

  v13 = a1[19];
  if (v13)
  {
    CFRelease(v13);
    a1[19] = 0;
  }

  v14 = a1[20];
  if (v14)
  {
    CFRelease(v14);
    a1[20] = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kCFXNotificationProgramWillDie", a1, 0, 1u);
  v17 = a1[9];
  if (v17)
  {
    CFRelease(v17);
    a1[9] = 0;
  }

  return sub_1AF16C9A4(a1, v16);
}

CFStringRef sub_1AF1D60C4(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = sub_1AF3753A8(a1);
}

CFHashCode sub_1AF1D6140(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v5 = CFHash(cf);
  result = CFHash(a3);
  v7 = *(*(a1 + 32) + 8);
  v8 = 0x9DDFEA08EB382D69 * (*(v7 + 56) ^ ((0x9DDFEA08EB382D69 * (*(v7 + 56) ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (*(v7 + 56) ^ v5)));
  *(v7 + 56) = 0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47));
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 56);
  *(v9 + 56) = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ result)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ result)))) ^ ((0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ result)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ result)))) >> 47));
  return result;
}

uint64_t sub_1AF1D61FC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB658648 = result;
  return result;
}

uint64_t sub_1AF1D6224(uint64_t a1)
{
  if (qword_1EB658650 != -1)
  {
    sub_1AFDE0B4C();
  }

  v2 = qword_1EB658648;

  return sub_1AF0D160C(v2, 8uLL);
}

CFTypeRef sub_1AF1D626C(uint64_t a1, CFTypeRef a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0B60(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != a2)
  {
    sub_1AF1C4640(result);
    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF1D62E4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE0B60(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF1D632C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *a1;
  }

  v3 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDE0BD8(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  return 0;
}

uint64_t sub_1AF1D6384(const __CFURL *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = CFURLCopyScheme(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFStringCompare(v4, @"file", 0) == kCFCompareEqualTo)
  {
    CFRelease(v5);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      memset(&v7, 0, sizeof(v7));
      if (!stat(buffer, &v7) && (v7.st_mode & 0xF000) == 0x8000)
      {
        return access(buffer, 4) == 0;
      }
    }

    return 0;
  }

  CFStringCompare(v5, @"http", 0);
  CFRelease(v5);
  return a2;
}

__CFDictionary *sub_1AF1D649C(CFDictionaryRef theDict, const __CFURL *a2)
{
  v3 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v5 = MutableCopy;
  Value = CFDictionaryGetValue(MutableCopy, @"kSceneSourceAssetDirectoryURLs");
  if (Value)
  {
    Mutable = CFArrayCreateMutableCopy(v3, 0, Value);
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v8 = Mutable;
  CFDictionarySetValue(v5, @"kSceneSourceAssetDirectoryURLs", Mutable);
  CFRelease(v8);
  v9 = CFURLCopyScheme(a2);
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, a2);
  if (PathComponent)
  {
    v11 = PathComponent;
    CFDictionarySetValue(v5, @"kEnclosingDirectoryURL", PathComponent);
    v13.length = CFArrayGetCount(v8);
    v13.location = 0;
    if (!CFArrayContainsValue(v8, v13, v11))
    {
      CFArrayAppendValue(v8, v11);
    }

    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v5;
}

uint64_t sub_1AF1D6724(void *a1, const char *a2, uint64_t a3)
{
  memset(&v8, 0, sizeof(v8));
  v3 = objc_msgSend_fileSystemRepresentation(a1, a2, a3);
  if (!stat(v3, &v8) && (v8.st_mode & 0xF000) == 0x8000 && v8.st_size >= 1)
  {
    v5 = open(v3, 0, 511);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = v5;
      if (!fstat(v5, &v8) && (v8.st_mode & 0xF000) == 0x8000 && v8.st_size >= 1)
      {
        return v6;
      }

      close(v6);
    }
  }

  return -1;
}

void sub_1AF1D7A30(uint64_t a1, __CFSet *a2, uint64_t a3)
{
  if (a3 != -1)
  {
    v4 = sub_1AF1A4604(a1, 3, a3, 1);
    if (v4)
    {

      CFSetSetValue(a2, v4);
    }
  }
}

BOOL sub_1AF1D7A8C(uint64_t a1)
{
  result = 1;
  if ((sub_1AF1BB2C8(a1) & 1) == 0)
  {
    v3 = sub_1AF1B75E8(a1, v2);
    if (!v3 || (sub_1AF19CBB4(v3, v4) & 0xFE) != 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF1D7ADC(__n128 *a1, CFDictionaryRef theDict, int *a3, float *a4, float *a5)
{
  if (!theDict || (Value = CFDictionaryGetValue(theDict, @"kSceneSourceConvertToYUpIfNeeded")) == 0)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = CFBooleanGetValue(Value) != 0;
  if (a3)
  {
LABEL_6:
    *a3 = 0;
  }

LABEL_7:
  if (a4)
  {
    *a4 = 1.0;
  }

  if (a5)
  {
    *a5 = 0.0;
  }

  if (v11)
  {
    v12 = sub_1AF1CFC48(a1, theDict).n128_u64[0];
    v13 = *(&v12 + 1) <= 0.0001;
    if (a3 && *(&v12 + 1) <= 0.0001)
    {
      if (*&v12 <= 0.0001)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      *a3 = v14;
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  valuePtr = 0.0;
  if (theDict)
  {
    v15 = CFDictionaryGetValue(theDict, @"kVFXSceneSourceConvertToUnit");
    if (v15)
    {
      CFNumberGetValue(v15, kCFNumberFloatType, &valuePtr);
      if (valuePtr != 0.0)
      {
        if (a5)
        {
          *a5 = valuePtr;
        }

        v17 = sub_1AF1CFBAC(a1, v16);
        if (v17 != 0.0 && valuePtr != 0.0)
        {
          v18 = valuePtr / v17;
          v19 = fabs(v18 + -1.0);
          if (v19 > 0.0001)
          {
            v13 = 1;
          }

          else
          {
            v13 = v13;
          }

          if (a4 && v19 > 0.0001)
          {
            *a4 = v18;
            return 1;
          }
        }
      }
    }
  }

  return v13;
}

void sub_1AF1D7C54(void *a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = a1;
  v324 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_worldRef(a1, a2, a3);
  if (v7)
  {
    v9 = v7;
    v10 = sub_1AF1CF7E8(v7, v8);
    if (v10)
    {
      sub_1AF1B94AC(v10, &unk_1F24E8600);
    }

    if (v5)
    {
      Value = CFDictionaryGetValue(v5, @"kSceneSourceCleanupMeshes");
      v278 = v9;
      if (Value)
      {
        if (CFEqual(*MEMORY[0x1E695E4D0], Value))
        {
          v13 = sub_1AF1CF7E8(v9, v12);
          if (v13)
          {
            v14 = sub_1AF1BA4E4(v13, @"model", 0);
            if (v14)
            {
              v15 = v14;
              Count = CFArrayGetCount(v14);
              if (Count <= 0)
              {
                CFRelease(v15);
              }

              else
              {
                v272 = v5;
                v273 = a4;
                v274 = v6;
                v16 = 0;
                allocator = *MEMORY[0x1E695E480];
                v276 = v15;
                do
                {
                  v280 = v16;
                  ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
                  v19 = sub_1AF1B75A0(ValueAtIndex, v18);
                  v21 = sub_1AF1BB464(ValueAtIndex, v20);
                  v23 = sub_1AF1B92C8(ValueAtIndex, v22);
                  v25 = sub_1AF1B2C1C(v19, v24);
                  if (v25)
                  {
                    v26 = v25;
                    v27 = MEMORY[0x1E695E9F8];
                    Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
                    v279 = CFSetCreateMutable(0, 0, v27);
                    valuePtr.i32[0] = 0;
                    if (v21)
                    {
                      v30 = CFDictionaryGetValue(v21, @"uv_set");
                      if (v30)
                      {
                        CFNumberGetValue(v30, kCFNumberIntType, &valuePtr);
                        v31 = valuePtr.i32[0];
                      }

                      else
                      {
                        v31 = 1;
                        valuePtr.i32[0] = 1;
                      }

                      v32 = sub_1AF1A4DBC(v26, 3);
                      if (v31 >= v32)
                      {
                        v35 = sub_1AF0D5194(v32, v33);
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                        {
                          buf.i32[0] = 67109120;
                          buf.i32[1] = valuePtr.i32[0];
                          _os_log_impl(&dword_1AF0CE000, v35, OS_LOG_TYPE_DEFAULT, "Warning: light_map uv_set:%d is pointing to an invalid uv_set(no corresponding source) and was reset to 1", &buf, 8u);
                        }

                        valuePtr.i32[0] = 1;
                        v34 = 1;
                      }

                      else
                      {
                        v34 = valuePtr.u32[0];
                      }

                      v36 = sub_1AF1A4604(v26, 3, v34, 0);
                      if (v36)
                      {
                        CFSetSetValue(Mutable, v36);
                      }
                    }

                    v37 = sub_1AF1B1FE0(v19, v29);
                    if (v37 >= 1)
                    {
                      v38 = v37;
                      for (i = 0; i != v38; ++i)
                      {
                        v40 = sub_1AF1B2030(v19, i);
                        v42 = sub_1AF1A1270(v40, v41);
                        if (v42)
                        {
                          v43 = v42;
                          v44 = sub_1AF16664C(v42, 0);
                          sub_1AF1D7A30(v26, Mutable, v44);
                          v45 = sub_1AF16664C(v43, 1);
                          sub_1AF1D7A30(v26, Mutable, v45);
                          v46 = sub_1AF16664C(v43, 2);
                          sub_1AF1D7A30(v26, Mutable, v46);
                          v47 = sub_1AF16664C(v43, 4);
                          sub_1AF1D7A30(v26, Mutable, v47);
                          v48 = sub_1AF16664C(v43, 6);
                          sub_1AF1D7A30(v26, Mutable, v48);
                          v49 = sub_1AF16664C(v43, 7);
                          sub_1AF1D7A30(v26, Mutable, v49);
                          v50 = sub_1AF16664C(v43, 8);
                          sub_1AF1D7A30(v26, Mutable, v50);
                          v51 = sub_1AF16664C(v43, 9);
                          sub_1AF1D7A30(v26, Mutable, v51);
                          v52 = sub_1AF16664C(v43, 10);
                          sub_1AF1D7A30(v26, Mutable, v52);
                          v53 = sub_1AF16664C(v43, 11);
                          sub_1AF1D7A30(v26, Mutable, v53);
                          v54 = sub_1AF16664C(v43, 12);
                          sub_1AF1D7A30(v26, Mutable, v54);
                          v55 = sub_1AF16664C(v43, 13);
                          sub_1AF1D7A30(v26, Mutable, v55);
                          v56 = sub_1AF16664C(v43, 14);
                          sub_1AF1D7A30(v26, Mutable, v56);
                          v57 = sub_1AF16664C(v43, 15);
                          sub_1AF1D7A30(v26, Mutable, v57);
                          v58 = sub_1AF16664C(v43, 16);
                          sub_1AF1D7A30(v26, Mutable, v58);
                          v59 = sub_1AF16664C(v43, 17);
                          sub_1AF1D7A30(v26, Mutable, v59);
                          v60 = sub_1AF16664C(v43, 18);
                          sub_1AF1D7A30(v26, Mutable, v60);
                          v61 = sub_1AF16664C(v43, 19);
                          sub_1AF1D7A30(v26, Mutable, v61);
                        }
                      }
                    }

                    v62 = sub_1AF1A4DBC(v26, 3);
                    v63 = v279;
                    if (v62 >= 1)
                    {
                      v64 = v62;
                      for (j = 0; j != v64; ++j)
                      {
                        v66 = sub_1AF1A4604(v26, 3, j, 0);
                        if (v66)
                        {
                          v67 = v66;
                          if (!CFSetContainsValue(Mutable, v66))
                          {
                            CFSetSetValue(v279, v67);
                          }
                        }
                      }
                    }

                    v307.columns[0].i64[0] = MEMORY[0x1E69E9820];
                    v307.columns[0].i64[1] = 3221225472;
                    v307.columns[1].i64[0] = sub_1AF1D8F3C;
                    v307.columns[1].i64[1] = &unk_1E7A79938;
                    v307.columns[2].i64[0] = v26;
                    sub_1AF28A5A0(v279, &v307);
                    if (!v23)
                    {
                      v68 = sub_1AF1A4CE8(v26, 1);
                      v282 = v26;
                      v69 = sub_1AF1A4CF8(v26, 1);
                      v71 = sub_1AF1AE6EC(v68, v70);
                      v72 = malloc_type_malloc(8 * v71, 0x100004000313F17uLL);
                      v283 = malloc_type_malloc(8 * v71, 0x100004000313F17uLL);
                      v275 = Mutable;
                      v289 = v72;
                      if (v71 < 1)
                      {
                        v74 = 0;
                      }

                      else
                      {
                        memset(v72, 255, 8 * v71);
                        v73 = 0;
                        v74 = 0;
                        v286 = v71;
                        do
                        {
                          if (v71 <= v73 + 1)
                          {
                            v75 = v73 + 1;
                          }

                          else
                          {
                            v75 = v71;
                          }

                          while (*(v72 + v73) != -1)
                          {
                            if (v75 == ++v73)
                            {
                              v73 = v75 + 1;
                              goto LABEL_54;
                            }
                          }

                          *(v72 + v73) = v74;
                          v76 = v73 + 1;
                          for (k = v74; v76 < v71; ++v76)
                          {
                            if (*(v72 + v76) == -1)
                            {
                              v77 = CFArrayGetCount(v69);
                              if (v77 < 1)
                              {
                                goto LABEL_51;
                              }

                              v78 = v77;
                              v79 = 0;
                              for (m = 0; m != v78; v79 = m >= v78)
                              {
                                v81 = CFArrayGetValueAtIndex(v69, m);
                                v83 = sub_1AF1AF080(v81, v82);
                                if (v83)
                                {
                                  v84 = v83;
                                  v85 = sub_1AF1CAED8(v83);
                                  v87 = sub_1AF288070(v85, v86);
                                  v89 = sub_1AF1CAF40(v84, v73, v88);
                                  v91 = sub_1AF1CAF40(v84, v76, v90);
                                  v92 = sub_1AF1CAED0(v84);
                                  if (memcmp(v89, v91, v92 * v87))
                                  {
                                    break;
                                  }
                                }

                                ++m;
                              }

                              v72 = v289;
                              v74 = k;
                              v71 = v286;
                              if (v79)
                              {
LABEL_51:
                                *(v72 + v76) = v74;
                              }
                            }
                          }

                          v283[v74++] = v73++;
LABEL_54:
                          ;
                        }

                        while (v73 < v71);
                      }

                      v94 = v282;
                      if (CFArrayGetCount(v69) >= 1)
                      {
                        v95 = 0;
                        v292 = v74;
                        do
                        {
                          v96 = CFArrayGetValueAtIndex(v69, v95);
                          v287 = sub_1AF1A44E8(v94, v96, 1);
                          v98 = sub_1AF1AF080(v96, v97);
                          v99 = sub_1AF1CAED8(v98);
                          v284 = v99;
                          v101 = sub_1AF288070(v99, v100);
                          v103 = sub_1AF1CAED0(v98) * v101;
                          v104 = v103 * v74;
                          if (v103 * v74)
                          {
                            v105 = malloc_type_malloc(v103 * v74, 0x100004077774924uLL);
                          }

                          else
                          {
                            v105 = 0;
                          }

                          if (v74 >= 1)
                          {
                            v106 = v283;
                            v107 = v105;
                            v108 = v292;
                            do
                            {
                              v109 = *v106++;
                              v110 = sub_1AF1CAF40(v98, v109, v102);
                              memcpy(v107, v110, v103);
                              v107 += v103;
                              --v108;
                            }

                            while (v108);
                          }

                          v111 = CFDataCreate(allocator, v105, v104);
                          v113 = sub_1AF1AE3D8(v96, v112);
                          v114 = sub_1AF1CAED0(v98);
                          v115 = sub_1AF121B74(v98);
                          v117 = sub_1AF1CB564(v98, v116);
                          v74 = v292;
                          v118 = sub_1AF1ADC58(v113, v111, v284, v114, v292, v115, v117);
                          CFRelease(v111);
                          free(v105);
                          v94 = v282;
                          sub_1AF1A44DC(v282, v118, v287);
                          CFRelease(v118);
                          ++v95;
                        }

                        while (v95 < CFArrayGetCount(v69));
                      }

                      Mutable = v275;
                      if (sub_1AF1A3CCC(v94, v93) >= 1)
                      {
                        v119 = 0;
                        do
                        {
                          v120 = sub_1AF1A3D1C(v94, v119, 1);
                          buf.i32[0] = 0;
                          v121 = sub_1AF1A73C0(v120, &buf);
                          v122 = sub_1AF1A7674(v120);
                          v124 = sub_1AF1A71E0(v120, v123);
                          v126 = v124 * v122;
                          switch(buf.i32[0])
                          {
                            case 4:
                              BytePtr = CFDataGetBytePtr(v121);
                              if (v126 >= 1)
                              {
                                do
                                {
                                  *BytePtr = *(v289 + *BytePtr);
                                  BytePtr += 4;
                                  --v126;
                                }

                                while (v126);
                              }

                              break;
                            case 2:
                              v129 = CFDataGetBytePtr(v121);
                              if (v126 >= 1)
                              {
                                do
                                {
                                  *v129 = *(v289 + *v129);
                                  v129 += 2;
                                  --v126;
                                }

                                while (v126);
                              }

                              break;
                            case 1:
                              v127 = CFDataGetBytePtr(v121);
                              if (v126 >= 1)
                              {
                                do
                                {
                                  *v127 = *(v289 + *v127);
                                  ++v127;
                                  --v126;
                                }

                                while (v126);
                              }

                              break;
                            default:
                              v131 = sub_1AF0D5194(v124, v125);
                              if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
                              {
                                sub_1AFDE0C50(&v299, v300, v131);
                              }

                              break;
                          }

                          ++v119;
                        }

                        while (v119 < sub_1AF1A3CCC(v94, v128));
                      }

                      CFRelease(v69);
                      free(v289);
                      free(v283);
                      v63 = v279;
                    }

                    CFRelease(v63);
                    CFRelease(Mutable);
                  }

                  v16 = v280 + 1;
                  v15 = v276;
                }

                while (v280 + 1 != Count);
                CFRelease(v276);
                a4 = v273;
                v6 = v274;
                v5 = v272;
              }
            }
          }
        }
      }

      v132 = CFDictionaryGetValue(v5, @"kSceneSourceCreateCameraIfAbsent");
      if (v132)
      {
        if (CFEqual(*MEMORY[0x1E695E4D0], v132))
        {
          v134 = sub_1AF1CF7E8(v278, v133);
          if (v134)
          {
            v135 = sub_1AF1BA4E4(v134, @"kCameraKey", 1);
            if (!v135 || (v136 = v135, v137 = CFArrayGetCount(v135), CFRelease(v136), v137 <= 0))
            {
              v138 = sub_1AF27E5F0(v278, 1);
              if (v138)
              {
                v140 = v138;
                v141 = sub_1AF1CF7E8(v278, v139);
                sub_1AF1B8CE8(v141, v140);
                CFRelease(v140);
              }
            }
          }
        }
      }

      v142 = CFDictionaryGetValue(v5, @"kSceneSourceCreateLightIfAbsent");
      v9 = v278;
      if (v142 && CFBooleanGetValue(v142))
      {
        v144 = sub_1AF1CF7E8(v278, v143);
        if (v144)
        {
          v145 = sub_1AF1BA4E4(v144, @"kLightKey", 0);
          if (v145)
          {
            v146 = v145;
            v147 = CFArrayGetCount(v145);
            if (v147 >= 1)
            {
              v148 = v147;
              v149 = 1;
              do
              {
                v150 = CFArrayGetValueAtIndex(v146, v149 - 1);
                v152 = sub_1AF1B75E8(v150, v151);
                v154 = sub_1AF19CBB4(v152, v153);
                if (v149 >= v148)
                {
                  break;
                }

                ++v149;
              }

              while (!v154);
              if (!v154)
              {
                for (n = 0; n != v148; ++n)
                {
                  v156 = CFArrayGetValueAtIndex(v146, n);
                  v158 = sub_1AF1B75E8(v156, v157);
                  v160 = sub_1AF19BB78(v158, v159);
                  if (((*v160 + v160[1]) + v160[2]) >= 1.5)
                  {
                    v307.columns[0] = 0uLL;
                    sub_1AF163FFC(&v307, 0.0, 0.0, 0.0, 0.0);
                    sub_1AF19B308(v158, &v307);
                  }
                }
              }
            }

            CFRelease(v146);
          }
        }

        v9 = v278;
        sub_1AF1CF610(v278, @"defaultLight", *MEMORY[0x1E695E4D0]);
      }

      v161 = CFDictionaryGetValue(v5, @"kSceneSourceCreateNormalsIfAbsent");
      if (v161)
      {
        if (CFEqual(*MEMORY[0x1E695E4D0], v161))
        {
          v163 = sub_1AF1CF7E8(v9, v162);
          if (v163)
          {
            sub_1AF1B94AC(v163, &unk_1F24E8620);
          }
        }
      }

      v164 = CFDictionaryGetValue(v5, @"kSceneSourceAdjustInvalidClippingPlanes");
      if (v164 && CFEqual(*MEMORY[0x1E695E4D0], v164))
      {
        v166 = sub_1AF1CF7E8(v9, v165);
        if (v166)
        {
          v167 = v166;
          v168 = sub_1AF1BA4E4(v166, @"kCameraKey", 0);
          if (v168)
          {
            v169 = v168;
            v170 = CFArrayGetCount(v168);
            if (v170 > 0)
            {
              v171 = v170;
              v172 = a4;
              v173 = v6;
              v174 = 0;
              v175 = 0;
              while (1)
              {
                v313 = 0u;
                v314 = 0u;
                v311 = 0u;
                v312 = 0u;
                v309 = 0u;
                v310 = 0u;
                v308 = 0u;
                memset(&v307, 0, sizeof(v307));
                v176 = CFArrayGetValueAtIndex(v169, v174);
                if (!v176)
                {
                  goto LABEL_135;
                }

                v177 = v176;
                if (!sub_1AF27F12C(v176, &v307))
                {
                  goto LABEL_135;
                }

                v179 = sub_1AF15E550(&v307, v178);
                if (v179 <= sub_1AF15E508(&v307, v180))
                {
                  break;
                }

                if ((v175 & 1) == 0 && !sub_1AF1C3958(v167, 1, &v322, &v323))
                {
                  goto LABEL_134;
                }

                v320 = 0u;
                v321 = 0u;
                v318 = 0u;
                v319 = 0u;
                buf = 0u;
                v317 = 0u;
                sub_1AF27EE18(v177, &buf, xmmword_1AFE20BF0);
                v182 = v322;
                v183 = v323;
                v182.i32[3] = 1.0;
                v183.i32[3] = 1.0;
                v184.i64[0] = 0x3F0000003F000000;
                v184.i64[1] = 0x3F0000003F000000;
                v304 = v319;
                v305 = v320;
                v306 = v321;
                valuePtr = buf;
                v302 = v317;
                v303 = v318;
                v185 = vfx_frustum_classify_aabb(&valuePtr, vmulq_f32(vaddq_f32(v182, v183), v184), vmulq_f32(vsubq_f32(v183, v182), v184));
                if (v185 == 1)
                {
                  v187 = sub_1AF0D5194(v185, v186);
                  if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
                  {
                    valuePtr.i16[0] = 0;
                    _os_log_impl(&dword_1AF0CE000, v187, OS_LOG_TYPE_DEFAULT, "Warning: invalid zRange detected (whole world clipped)", &valuePtr, 2u);
                  }

LABEL_130:
                  v188 = sub_1AF1BB260(v177, v181);
                  if (v188)
                  {
                    v190 = sub_1AF15E428(v188, v189);
                    if (v190)
                    {
                      v192 = v190;
                      v193 = sub_1AF1B9AB4(v177, v191);
                      v194.i64[0] = 0xBF000000BF000000;
                      v194.i64[1] = 0xBF000000BF000000;
                      v195 = vsubq_f32(v322, v323);
                      v196 = vmulq_f32(v195, v195);
                      v197 = vaddq_f32(v193, vmulq_f32(vaddq_f32(v322, v323), v194));
                      v198 = vmulq_f32(v197, v197);
                      v199 = vaddv_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v196, v196, 8uLL), *&vextq_s8(v198, v198, 8uLL)), vadd_f32(vzip1_s32(*v196.i8, *v198.i8), vzip2_s32(*v196.i8, *v198.i8)))));
                      sub_1AF15E10C(v192, v200, v199);
                      sub_1AF15E220(v192, v201, v199 / 250.0);
                    }
                  }
                }

                v175 = 1;
LABEL_135:
                if (v171 == ++v174)
                {
                  CFRelease(v169);
                  v6 = v173;
                  a4 = v172;
                  goto LABEL_138;
                }
              }

              if ((v175 & 1) == 0 && !sub_1AF1C3958(v167, 1, &v322, &v323))
              {
LABEL_134:
                v175 = 0;
                goto LABEL_135;
              }

              goto LABEL_130;
            }

            CFRelease(v169);
          }
        }

LABEL_138:
        v9 = v278;
      }

      v202 = CFDictionaryGetValue(v5, @"kSceneSourceFlattenWorld");
      if (v202 && CFEqual(*MEMORY[0x1E695E4D0], v202))
      {
        v205 = objc_msgSend_rootNode(v6, v203, v204);
        objc_msgSend_transform(v205, v206, v207);
        v290 = v209;
        v293 = v208;
        v285 = v211;
        v288 = v210;
        objc_msgSend_setTransform_(v205, v212, v213, COERCE_DOUBLE(1065353216), unk_1AFE21EC0, 0.0, unk_1AFE21EE0);
        v216 = objc_msgSend_flattenedClone(v205, v214, v215);
        if (v216)
        {
          v219 = v216;
          v220 = a4;
          v221 = v6;
          objc_msgSend_flush(VFXTransaction, v217, v218);
          v224 = objc_msgSend_childNodes(v205, v222, v223);
          v295 = 0u;
          v296 = 0u;
          v297 = 0u;
          v298 = 0u;
          v226 = objc_msgSend_countByEnumeratingWithState_objects_count_(v224, v225, &v295, v315, 16);
          if (v226)
          {
            v229 = v226;
            v230 = *v296;
            do
            {
              for (ii = 0; ii != v229; ++ii)
              {
                if (*v296 != v230)
                {
                  objc_enumerationMutation(v224);
                }

                objc_msgSend_removeFromParentNode(*(*(&v295 + 1) + 8 * ii), v227, v228);
              }

              v229 = objc_msgSend_countByEnumeratingWithState_objects_count_(v224, v227, &v295, v315, 16);
            }

            while (v229);
          }

          v6 = v221;
          v232 = objc_msgSend_rootNode(v221, v227, v228);
          objc_msgSend_addChildNode_(v232, v233, v219);
          a4 = v220;
        }

        objc_msgSend_setTransform_(v205, v217, v218, v293, v290, v288, v285);
        v9 = v278;
      }
    }

    v322.i32[0] = 0;
    v294 = 0;
    v234 = sub_1AF1D7ADC(v9, v5, &v322, &v294 + 1, &v294);
    if (v234)
    {
      v236 = v322.i32[0];
      v237 = *(&v294 + 1);
      if (v322.i32[0] || *(&v294 + 1) != 1.0)
      {
        if (a4 == 1)
        {
          v238 = sub_1AF0D5194(v234, v235);
          if (os_log_type_enabled(v238, OS_LOG_TYPE_INFO))
          {
            v307.columns[0].i16[0] = 0;
            _os_log_impl(&dword_1AF0CE000, v238, OS_LOG_TYPE_INFO, "Info: VFXWorldLoaderConvertUnitsToMetersKey and VFXWorldLoaderConvertToYUpKey have no effect on compressed assets. Use Xcode's compression options instead", &v307, 2u);
          }
        }

        else
        {
          v239 = *&v294;
          v240 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v243 = objc_msgSend_rootNode(v6, v241, v242);
          valuePtr.i64[0] = MEMORY[0x1E69E9820];
          valuePtr.i64[1] = 3221225472;
          v302.i64[0] = sub_1AF1D8FFC;
          v302.i64[1] = &unk_1E7A79780;
          v303.i64[1] = __PAIR64__(LODWORD(v237), v236);
          v303.i64[0] = v240;
          LOBYTE(v304) = 0;
          objc_msgSend_enumerateHierarchyUsingBlock_(v243, v244, &valuePtr);

          if (v236 == 1)
          {
            v247 = vrsqrteq_f32(xmmword_1AFE208C0);
            v248 = vmulq_f32(v247, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v247, v247)));
            v325.columns[0] = vmulq_f32(vmulq_f32(v248, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v248, v248))), xmmword_1AFE20150);
            v249 = vmulq_f32(v325.columns[0], v325.columns[0]);
            __asm { FMOV            V1.4S, #1.0 }

            v254 = vmlaq_f32(v249, vdupq_n_s32(0xB33BBD2E), vsubq_f32(v325.columns[1], v249));
            v255 = vmuls_lane_f32(v325.columns[0].f32[0], *v325.columns[0].f32, 1);
            v256 = vmuls_lane_f32(v325.columns[0].f32[0], v325.columns[0], 2);
            v257 = vmuls_lane_f32(v325.columns[0].f32[1], v325.columns[0], 2);
            *&v258 = v255 - v325.columns[0].f32[2];
            *&v259 = v325.columns[0].f32[1] + v256;
            *&v260 = v325.columns[0].f32[2] + v255;
            *&v261 = v257 - v325.columns[0].f32[0];
            v325.columns[2].f32[0] = v256 - v325.columns[0].f32[1];
            v325.columns[2].f32[1] = v325.columns[0].f32[0] + v257;
            v325.columns[2].i64[1] = v254.u32[2];
            v325.columns[0].i64[0] = __PAIR64__(v258, v254.u32[0]);
            v325.columns[0].i64[1] = v259;
            v325.columns[1].i64[0] = __PAIR64__(v254.u32[1], v260);
            v325.columns[1].i64[1] = v261;
            v325.columns[3] = xmmword_1AFE201A0;
            buf = v325.columns[0];
            v317 = v325.columns[1];
            v318 = v325.columns[2];
            v319 = xmmword_1AFE201A0;
            v307 = __invert_f4(v325);
            v264 = objc_msgSend_rootNode(v6, v262, v263);
            v267 = objc_msgSend_nodeRef(v264, v265, v266);
            sub_1AF1D93E0(v267, &buf, &v307);
          }

          if (v237 != 1.0 && v239 != 0.0)
          {
            v268 = objc_msgSend_worldRef(v6, v245, v246);
            sub_1AF1CFBF4(v268, v269, v239);
          }

          if (v236)
          {
            v270 = objc_msgSend_worldRef(v6, v245, v246);
            sub_1AF1CFC90(v270, v271, xmmword_1AFE20160);
          }
        }
      }
    }
  }
}

uint64_t sub_1AF1D8E6C(const __CFURL *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kSceneSourceCheckConsistency");
    if (Value)
    {
      return CFBooleanGetValue(Value) != 0;
    }
  }

  v5 = sub_1AF289E6C(a1);
  v6 = v5;
  if (a1 && (v5 & 1) == 0 && (v7 = CFURLCopyPath(a1)) != 0 && (v8 = v7, HasPrefix = CFStringHasPrefix(v7, @"/System"), CFRelease(v8), HasPrefix))
  {
    return 0;
  }

  else
  {
    return v6 ^ 1u;
  }
}

uint64_t sub_1AF1D8F10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF1B75A0(a2, a2);
  if (v2)
  {
    sub_1AF27E0C4(v2, 1);
  }

  return 0;
}

uint64_t sub_1AF1D8F44(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF1B75A0(a2, a2);
  if (v2)
  {
    v4 = v2;
    if (!sub_1AF170998(v2, v3))
    {
      v6 = sub_1AF1B2C1C(v4, v5);
      if (v6)
      {
        v7 = v6;
        if (!sub_1AF1A4F84(v6, 0))
        {
          if (sub_1AF1A4CE8(v7, 0))
          {
            v9 = sub_1AF27D340(v7, 0, 0);
            if (v9)
            {
              v10 = v9;
              v11 = sub_1AF1A4C6C(v7, 0, 0);
              sub_1AF1A44D4(v7, v10, 0, v11);
              CFRelease(v10);
              v12 = sub_1AF16CDEC(v7);
              objc_msgSend__rebuildMeshSourcesFromPresentation(v12, v13, v14);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1AF1D8FFC(uint64_t a1, void *a2, float32x4_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  a3.i32[0] = *(a1 + 44);
  v120 = a3;
  objc_msgSend_position(a2, a2, a4);
  if (v6 == 1)
  {
    v10.i64[0] = __PAIR64__(v9.u32[2], v9.u32[0]);
    v10.f32[2] = -v9.f32[1];
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_6;
    }

    v10.f32[0] = -v9.f32[1];
    v10.i32[1] = v9.i32[0];
    v10.i32[2] = v9.i32[2];
  }

  v10.i32[3] = v9.i32[3];
  v9 = v10;
LABEL_6:
  v10.i32[0] = 1.0;
  objc_msgSend_setPosition_(a2, v7, v8, *vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v120, v10)), 0), vmulq_n_f32(v9, v120.f32[0]), v9).i64);
  if (v6)
  {
    objc_msgSend_rotation(a2, v11, v12);
    if (v6 == 1)
    {
      HIDWORD(v15) = v16;
      objc_msgSend_setRotation_(a2, v13, v14, v15);
      objc_msgSend_scale(a2, v23, v24);
      objc_msgSend_setScale_(a2, v26, v27, *vuzp1q_s32(v25, vrev64q_s32(v25)).i64);
    }

    else if (v6 == 2)
    {
      *&v17 = -*(&v15 + 1);
      HIDWORD(v17) = LODWORD(v15);
      objc_msgSend_setRotation_(a2, v13, v14, v17);
      objc_msgSend_scale(a2, v18, v19);
      objc_msgSend_setScale_(a2, v21, v22, *vzip1q_s32(vextq_s8(v20, v20, 4uLL), v20).i64);
    }

    else
    {
      objc_msgSend_setRotation_(a2, v13, v14);
      objc_msgSend_scale(a2, v28, v29);
      objc_msgSend_setScale_(a2, v30, v31, v32);
    }
  }

  if (objc_msgSend_model(a2, v11, v12))
  {
    v35 = *(a1 + 32);
    v36 = objc_msgSend_model(a2, v33, v34);
    if ((objc_msgSend_containsObject_(v35, v37, v36) & 1) == 0)
    {
      v38 = *(a1 + 32);
      v39 = objc_msgSend_model(a2, v33, v34);
      objc_msgSend_addObject_(v38, v40, v39);
      v43 = objc_msgSend_model(a2, v41, v42);
      v46 = objc_msgSend_mesh(v43, v44, v45);
      v49 = objc_msgSend_meshRef(v46, v47, v48);
      v50 = *(a1 + 40);
      v51 = *(a1 + 44);
      v125.n128_u64[0] = MEMORY[0x1E69E9820];
      v125.n128_u64[1] = 3221225472;
      v126.n128_u64[0] = sub_1AF1D954C;
      v126.n128_u64[1] = &unk_1E7A7B0C8;
      v127.n128_u64[0] = __PAIR64__(v51, v50);
      sub_1AF1A2BEC(v49, 0, &v125);
      sub_1AF1A270C(v49);
      sub_1AF1A31C4(v49, v52);
    }
  }

  result = objc_msgSend_skinner(a2, v33, v34);
  if (result)
  {
    v56 = *(a1 + 32);
    v57 = objc_msgSend_skinner(a2, v54, v55);
    result = objc_msgSend_containsObject_(v56, v58, v57);
    if ((result & 1) == 0)
    {
      v59 = *(a1 + 32);
      v60 = objc_msgSend_skinner(a2, v54, v55);
      objc_msgSend_addObject_(v59, v61, v60);
      v64 = objc_msgSend_skinner(a2, v62, v63);
      v67 = objc_msgSend_skinnerRef(v64, v65, v66);
      v68 = sub_1AF15B294(v67);
      v69 = *(a1 + 40);
      v70 = *(a1 + 44);
      v71 = sub_1AF1BA1FC(v68);
      v125 = *v71;
      v126 = *(v71 + 16);
      v127 = *(v71 + 32);
      v128 = *(v71 + 48);
      sub_1AF1D9674(&v125, v69, v70);
      sub_1AF1C7934(v68, v125, v126, v127, v128);
      v72 = sub_1AF15B364(v68);
      v73 = sub_1AF1C7940(v68);
      if (v73 >= 1)
      {
        v74 = v73;
        v75 = v72 + 32;
        do
        {
          v129 = __invert_f4(*(v75 - 32));
          v121 = v129.columns[0];
          v122 = v129.columns[1];
          v123 = v129.columns[2];
          v124 = v129.columns[3];
          sub_1AF1D9674(&v121, v69, v70);
          v130.columns[2] = v123;
          v130.columns[3] = v124;
          v130.columns[0] = v121;
          v130.columns[1] = v122;
          *(v75 - 32) = __invert_f4(v130);
          v75 += 64;
          --v74;
        }

        while (v74);
      }

      result = sub_1AF1C74EC();
    }
  }

  if (*(a1 + 44) != 1.0)
  {
    if (objc_msgSend_light(a2, v54, v55))
    {
      v78 = objc_msgSend_light(a2, v76, v77);
      v79 = *(a1 + 44);
      objc_msgSend_zFar(v78, v80, v81);
      *&v83 = v79 * v82;
      objc_msgSend_setZFar_(v78, v84, v85, v83);
      objc_msgSend_zNear(v78, v86, v87);
      *&v89 = v79 * v88;
      objc_msgSend_setZNear_(v78, v90, v91, v89);
      objc_msgSend_attenuationDistance(v78, v92, v93);
      *&v95 = v79 * v94;
      objc_msgSend_setAttenuationDistance_(v78, v96, v97, v95);
    }

    result = objc_msgSend_camera(a2, v76, v77);
    if (result)
    {
      v100 = objc_msgSend_camera(a2, v98, v99);
      v101 = *(a1 + 44);
      objc_msgSend_focusDistance(v100, v102, v103);
      *&v105 = v101 * v104;
      objc_msgSend_setFocusDistance_(v100, v106, v107, v105);
      objc_msgSend_zFar(v100, v108, v109);
      *&v111 = v101 * v110;
      objc_msgSend_setZFar_(v100, v112, v113, v111);
      objc_msgSend_zNear(v100, v114, v115);
      *&v117 = v101 * v116;
      return objc_msgSend_setZNear_(v100, v118, v119, v117);
    }
  }

  return result;
}

uint64_t sub_1AF1D93E0(uint64_t result, _OWORD *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    if (sub_1AF1D7A8C(result))
    {
      *v13.i64 = sub_1AF1B7F84(v5, v6);
      v17 = 0;
      v18 = a2[1];
      v19 = a2[2];
      v20 = a2[3];
      v23[0] = *a2;
      v23[1] = v18;
      v23[2] = v19;
      v23[3] = v20;
      memset(v24, 0, sizeof(v24));
      do
      {
        *&v24[v17 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v23[v17])), v14, *&v23[v17], 1), v15, v23[v17], 2), v16, v23[v17], 3);
        ++v17;
      }

      while (v17 != 4);
      sub_1AF1BA204(v5, v24, v7, v8, v9, v10, v11, v12);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1AF1D9D04;
      v22[3] = &unk_1E7A7BFB0;
      v22[4] = a3;
      sub_1AF1B7E14(v5, v22);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1AF1D9DA4;
    v21[3] = &unk_1E7A7BFD0;
    v21[4] = a2;
    v21[5] = a3;
    return sub_1AF1B7E14(v5, v21);
  }

  return result;
}

void sub_1AF1D954C(uint64_t result, uint64_t a2, int a3, float32x4_t a4)
{
  if (a3 == 4 || a3 == 1)
  {
    v4 = *(result + 32);
    a4.i32[0] = 1.0;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v4 = *(result + 32);
    a4.i32[0] = *(result + 36);
  }

  sub_1AF1D9584(a2, v4, a4);
}

void sub_1AF1D9584(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  sub_1AF1AE1A8(a1, a2, &v14);
  if (v15)
  {
    v6 = 0;
    v4.i32[0] = 1.0;
    v7 = a3.f32[0];
    v8 = vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a3, v4)), 0);
    v12 = v8;
    do
    {
      *v9.i64 = sub_1AF279750(BYTE4(v15), (v14 + v6 * BYTE6(v15)), v8, v7, v5);
      if (v3 == 1)
      {
        v10 = v9;
        v10.i32[1] = v9.i32[2];
        v10.f32[2] = -v9.f32[1];
      }

      else
      {
        v10 = v9;
        if (v3 == 2)
        {
          v10.f32[0] = -v9.f32[1];
          v10.i32[1] = v9.i32[0];
          v10.i32[2] = v9.i32[2];
        }
      }

      v11 = vbslq_s8(v12, vmulq_n_f32(v10, a3.f32[0]), v10);
      v11.i32[3] = v9.i32[3];
      sub_1AF279B88(BYTE4(v15), v14 + v6 * BYTE6(v15), v11);
      ++v6;
    }

    while (v6 < v15);
  }
}

float32x4_t sub_1AF1D9674(float32x4_t *a1, int a2, float32_t a3)
{
  v3.f32[0] = a3;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), vnegq_f32(v7)), v8, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v10 = vmulq_f32(*a1, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v54 = (v10.f32[2] + vaddv_f32(*v10.f32)) < 0.0;
  v11 = 1.0;
  if (v54)
  {
    v11 = -1.0;
  }

  v12 = vmulq_f32(v6, v6);
  v13 = vmulq_f32(v7, v7);
  v14 = vadd_f32(vzip1_s32(*v12.i8, *v13.i8), vzip2_s32(*v12.i8, *v13.i8));
  v15 = vextq_s8(v12, v12, 8uLL);
  *v15.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v15.f32, *&vextq_s8(v13, v13, 8uLL)), v14));
  v16 = vmulq_f32(v8, v8);
  v15.i32[2] = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
  v17 = vmulq_n_f32(v15, v11);
  v18 = vcltzq_f32(v17);
  v19 = vmvnq_s8(vorrq_s8(v18, vcgezq_f32(v17)));
  v19.i32[3] = v19.i32[2];
  v19.i32[0] = vmaxvq_u32(v19);
  v18.i32[0] = -1;
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v19, v18), 0), v17, 0);
  v21 = vceqzq_f32(v20);
  v21.i32[3] = v21.i32[2];
  v111 = v3;
  if ((vmaxvq_u32(v21) & 0x80000000) != 0)
  {
    v109 = 0u;
    v53 = xmmword_1AFE201A0;
    goto LABEL_23;
  }

  v22 = vdivq_f32(v6, vdupq_lane_s32(*v20.f32, 0));
  v23 = vdivq_f32(v7, vdupq_lane_s32(*v20.f32, 1));
  v24 = vdivq_f32(v8, vdupq_laneq_s32(v20, 2));
  v25 = vmulq_f32(v22, v22);
  v26 = vmulq_f32(v23, v23);
  v27 = vmulq_f32(v24, v24);
  v28 = vzip2q_s32(v25, v27);
  v29 = vzip1q_s32(vzip1q_s32(v25, v27), v26);
  v30 = vtrn2q_s32(v25, v26);
  v30.i32[2] = v27.i32[1];
  v31 = vaddq_f32(vzip1q_s32(v28, vdupq_laneq_s32(v26, 2)), vaddq_f32(v29, v30));
  v30.i64[0] = 0x80000000800000;
  v30.i64[1] = 0x80000000800000;
  v32 = vcgeq_f32(v30, v31);
  v31.i32[3] = 0;
  v33 = vrsqrteq_f32(v31);
  v34 = vmulq_f32(v33, vrsqrtsq_f32(v31, vmulq_f32(v33, v33)));
  v35 = v32;
  v35.i32[3] = 0;
  v36 = vbslq_s8(vcltzq_s32(v35), v31, vmulq_f32(v34, vrsqrtsq_f32(v31, vmulq_f32(v34, v34))));
  v37 = vmulq_n_f32(v22, v36.f32[0]);
  v38 = vmulq_lane_f32(v23, *v36.f32, 1);
  v39 = vmulq_laneq_f32(v24, v36, 2);
  v40 = vuzp1q_s32(v39, v39);
  v41 = vuzp1q_s32(v38, v38);
  v42 = v37;
  if (v32.i32[0])
  {
    v43 = vmlaq_f32(vmulq_f32(vextq_s8(v40, v39, 0xCuLL), vnegq_f32(v38)), v39, vextq_s8(v41, v38, 0xCuLL));
    v42 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
  }

  v44 = vuzp1q_s32(v37, v37);
  v45 = v38;
  if (v32.i32[1])
  {
    v46 = vmlaq_f32(vmulq_f32(vextq_s8(v44, v37, 0xCuLL), vnegq_f32(v39)), v37, vextq_s8(v40, v39, 0xCuLL));
    v45 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
  }

  if (v32.i32[2])
  {
    v47 = vmlaq_f32(vmulq_f32(vextq_s8(v41, v38, 0xCuLL), vnegq_f32(v37)), v38, vextq_s8(v44, v37, 0xCuLL));
    v39 = vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL);
  }

  v48 = (*v42.i32 + *&v45.i32[1]) + v39.f32[2];
  if (v48 <= 0.0)
  {
    v54 = *v42.i32 < *&v45.i32[1] || *v42.i32 < v39.f32[2];
    if (v54)
    {
      if (*&v45.i32[1] <= v39.f32[2])
      {
        v102 = vzip2q_s32(v42, v45).u64[0];
        v103 = __PAIR64__(v42.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v39.f32[2] + 1.0) - *v42.i32) - *&v45.i32[1])));
        v104 = vdup_lane_s32(*v45.i8, 0);
        v105 = vsub_f32(*v42.i8, v104);
        v104.i32[0] = v103.i32[0];
        v45.i32[0] = vmul_f32(v103, v104).u32[0];
        v45.i32[1] = v105.i32[1];
        *v50.f32 = vadd_f32(v102, *v39.f32);
        v50.i64[1] = v45.i64[0];
        v51 = 0.5 / v103.f32[0];
        goto LABEL_12;
      }

      v56 = sqrtf(((*&v45.i32[1] + 1.0) - *v42.i32) - v39.f32[2]);
      v59.f32[0] = *&v42.i32[1] + *v45.i32;
      v55 = vzip2q_s32(v42, v45).u64[0];
      *v45.i8 = vadd_f32(*v39.f32, v55);
      v59.f32[1] = v56 * v56;
      *&v59.u32[2] = vext_s8(*v45.i8, vsub_f32(*v39.f32, v55), 4uLL);
    }

    else
    {
      v56 = sqrtf(((*v42.i32 + 1.0) - *&v45.i32[1]) - v39.f32[2]);
      v59.f32[0] = v56 * v56;
      v57 = *&v42.i32[1] + *v45.i32;
      v58 = vzip2q_s32(v42, v45).u64[0];
      v45.i32[0] = vadd_f32(v58, *v39.f32).u32[0];
      v45.i32[1] = vsub_f32(v58, *&v39).i32[1];
      v59.f32[1] = v57;
      v59.i64[1] = v45.i64[0];
    }

    v52 = vmulq_n_f32(v59, 0.5 / v56);
    goto LABEL_22;
  }

  v49 = sqrtf(v48 + 1.0);
  *v50.f32 = vsub_f32(*&vzip2q_s32(v45, vuzp1q_s32(v45, v39)), *&vtrn2q_s32(v39, vzip2q_s32(v39, v42)));
  v50.f32[2] = *&v42.i32[1] - *v45.i32;
  v50.f32[3] = v49 * v49;
  v51 = 0.5 / v49;
LABEL_12:
  v52 = vmulq_n_f32(v50, v51);
LABEL_22:
  v60 = vmvnq_s8(vceqq_f32(v52, v52));
  v60.i32[0] = vmaxvq_u32(v60);
  v45.i32[0] = -1;
  v53 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v60, v45), 0), v52, xmmword_1AFE201A0);
  v109 = v20;
LABEL_23:
  v61 = vmulq_f32(v53, v53);
  v61.f32[0] = v61.f32[2] + vaddv_f32(*v61.f32);
  v62 = vdupq_lane_s32(*v61.f32, 0);
  v62.i32[3] = 0;
  v63 = vrsqrteq_f32(v62);
  v64 = vmulq_f32(v63, vrsqrtsq_f32(v62, vmulq_f32(v63, v63)));
  v65 = vmulq_f32(v53, vmulq_f32(v64, vrsqrtsq_f32(v62, vmulq_f32(v64, v64))));
  v66 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v61.f32[0] != 0.0)), 0x1FuLL));
  v66.i32[3] = 0;
  v106 = vbslq_s8(vcltzq_s32(v66), v65, v53);
  v107 = a1[3];
  v67 = atan2f(sqrtf(v61.f32[0]), v53.f32[3]);
  v70.f32[0] = v67 + v67;
  v71 = v106;
  v71.i32[3] = v70.i32[0];
  if (a2 == 1)
  {
    v71.i32[1] = v106.i32[2];
    v71.f32[2] = -*&v106.i32[1];
    v72 = v107;
    v72.i32[1] = v107.i32[2];
    v72.f32[2] = -v107.f32[1];
    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v71.f32[0] = -*&v106.i32[1];
    v71.i32[1] = v106.i32[0];
    v70.f32[0] = -v107.f32[1];
    v70.i32[1] = v107.i32[0];
    v70.i32[2] = v107.i32[2];
    v72 = v70;
LABEL_27:
    v74 = v109;
    v73 = v111;
    goto LABEL_29;
  }

  v74 = v109;
  v73 = v111;
  v72 = v107;
LABEL_29:
  if (a2 == 1)
  {
    v70 = vuzp1q_s32(v74, vrev64q_s32(v74));
    goto LABEL_33;
  }

  if (a2 == 2)
  {
    v70 = vzip1q_s32(vextq_s8(v74, v74, 4uLL), v74);
LABEL_33:
    v70.i32[3] = v74.i32[3];
    v74 = v70;
  }

  v70.i32[0] = 1.0;
  v68.f64[0] = fabs(*v74.i32 + -1.0);
  v69.f64[0] = 0.000001;
  v75 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v69, v68)).i64[0], 0);
  v112 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v73, v70)), 0), vmulq_n_f32(v72, v73.f32[0]), v72);
  v76 = v74;
  v76.i32[0] = 1.0;
  v77 = vbslq_s8(v75, v74, v76);
  v78 = v77;
  v78.i32[3] = v74.i32[3];
  *v75.i64 = fabs(*&v77.i32[1] + -1.0);
  v77.i32[1] = 1.0;
  v79 = vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v69, v75)).i64[0], 0), v78, v77);
  *v78.i64 = fabs(*&v79.i32[2] + -1.0);
  v80 = vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v69, v78)).i64[0], 0);
  v81 = v79;
  v81.i32[2] = 1.0;
  v82 = vmulq_f32(v71, v71);
  v82.f32[0] = v82.f32[2] + vaddv_f32(*v82.f32);
  v83 = vdupq_lane_s32(*v82.f32, 0);
  v110 = vbslq_s8(v80, v79, v81);
  v83.i32[3] = 0;
  v84 = vrsqrteq_f32(v83);
  v85 = vmulq_f32(v84, vrsqrtsq_f32(v83, vmulq_f32(v84, v84)));
  v86 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v82.f32[0] != 0.0)), 0x1FuLL));
  v86.i32[3] = 0;
  v108 = vbslq_s8(vcltzq_s32(v86), vmulq_f32(v71, vmulq_f32(v85, vrsqrtsq_f32(v83, vmulq_f32(v85, v85)))), v71);
  v87 = __sincosf_stret(vmuls_lane_f32(0.5, v71, 3));
  v88 = vmulq_n_f32(v108, v87.__sinval);
  v89 = v112;
  v89.i32[3] = 1.0;
  v90 = vabsq_f32(v110);
  v90.i32[3] = 0;
  v91.i64[0] = 0x8000000080000000;
  v91.i64[1] = 0x8000000080000000;
  v92 = vorrq_s8(vandq_s8(v110, v91), vabsq_f32(vmaxnmq_f32(v90, xmmword_1AFE20A30)));
  v93 = vmulq_f32(v88, v88);
  v94 = vmulq_n_f32(v88, v87.__cosval);
  v95 = vmuls_lane_f32(v88.f32[0], *v88.f32, 1);
  v96 = vmuls_lane_f32(v88.f32[1], v88, 2);
  v88.f32[0] = vmuls_lane_f32(v88.f32[0], v88, 2);
  v97 = vaddq_f32(v92, v92);
  v98.i32[3] = 0;
  v98.f32[0] = (0.5 - v93.f32[1]) - v93.f32[2];
  v98.f32[1] = v95 + v94.f32[2];
  v99.i32[3] = 0;
  v98.f32[2] = v88.f32[0] - v94.f32[1];
  v93.f32[0] = 0.5 - v93.f32[0];
  v100.i32[3] = 0;
  v100.f32[0] = v95 - v94.f32[2];
  v100.f32[1] = v93.f32[0] - v93.f32[2];
  v100.f32[2] = v96 + v94.f32[0];
  v99.f32[0] = v88.f32[0] + v94.f32[1];
  v99.f32[1] = v96 - v94.f32[0];
  v99.f32[2] = v93.f32[0] - v93.f32[1];
  *a1 = vmulq_n_f32(v98, v97.f32[0]);
  a1[1] = vmulq_lane_f32(v100, *v97.f32, 1);
  result = vmulq_laneq_f32(v99, v97, 2);
  a1[2] = result;
  a1[3] = v89;
  return result;
}

uint64_t sub_1AF1D9D04(uint64_t a1, uint64_t a2)
{
  *v10.i64 = sub_1AF1B7F84(a2, a2);
  v14 = 0;
  v15 = *(a1 + 32);
  v16 = v15[1];
  v17 = v15[2];
  v18 = v15[3];
  v20[0] = *v15;
  v20[1] = v16;
  v20[2] = v17;
  v20[3] = v18;
  memset(v21, 0, sizeof(v21));
  do
  {
    v21[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v20[v14])), v11, *&v20[v14], 1), v12, v20[v14], 2), v13, v20[v14], 3);
    ++v14;
  }

  while (v14 != 4);
  return sub_1AF1BA204(a2, v21, v4, v5, v6, v7, v8, v9);
}

BOOL sub_1AF1D9DB4(uint64_t a1, int a2, int a3, void *a4)
{
  v8 = a3;
  bzero(a4, 4 * a3);
  if (a2 >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = (a3 + 1);
    v14 = 4 * a2;
    v15 = 4 * (a2 - 1) * a2;
    v16 = v15 + 4;
    v17 = 1;
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = v19 + 1;
      v21 = v19 * a2;
      v22 = v19;
      if (v19 + 1 < a2)
      {
        v23 = v17;
        v22 = v19;
        do
        {
          if (fabsf(*(a1 + 4 * v10 + 4 * v23)) > fabsf(*(a1 + 4 * v21 + 4 * v22)))
          {
            v22 = v23;
          }

          ++v23;
        }

        while (a2 != v23);
      }

      if (v19 != v22 && v19 <= v8)
      {
        v24 = v18 + 4 * v22;
        v25 = v13;
        v26 = a1;
        do
        {
          v27 = *(v26 + v9);
          *(v26 + v9) = *(v26 + v24);
          *(v26 + v24) = v27;
          v26 += v14;
          --v25;
        }

        while (v25);
      }

      v28 = (v19 + v12 * a2);
      if (fabsf(*(a1 + 4 * v28)) >= 0.000001)
      {
        if (v20 < a2)
        {
          v29 = a1 + 4 * v21;
          v30 = v16;
          v31 = v17;
          do
          {
            v32 = a1;
            v33 = a2;
            do
            {
              --v33;
              *(v32 + v30) = *(v32 + v30) - ((*(v32 + v15) * *(v29 + 4 * v31)) / *(a1 + 4 * v28));
              v32 -= 4 * a2;
            }

            while (v33 > v19);
            ++v31;
            v30 += 4;
          }

          while (v31 != a2);
        }
      }

      else if (v19 < v8)
      {
        return v11;
      }

      ++v12;
      --v13;
      ++v17;
      v10 += a2;
      v18 += v14;
      v9 += v14 + 4;
      v16 += 4;
      v15 += 4;
      ++v19;
      v11 = v20 >= a2;
    }

    while (v20 != a2);
  }

  if (a3 >= 1)
  {
    v34 = 0;
    v35 = 4 * a2;
    v36 = a1 + (v35 + 4) * v8 - 4;
    v37 = v8;
    do
    {
      v38 = 0.0;
      if (v37 < v8)
      {
        v39 = v36;
        v40 = v34;
        do
        {
          v38 = v38 + (*v39 * *(a4 + v8 + v40));
          v39 = (v39 + v35);
          ++v40;
        }

        while (v40);
      }

      *(a4 + v37 - 1) = (*(a1 + 4 * a3 * a2 + 4 * (v37 - 1)) - v38) / *(a1 + 4 * (a2 + 1) * (v37 - 1));
      --v34;
      v36 += v35 ^ 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v37-- > 1);
  }

  return 1;
}

float32_t sub_1AF1DA020(__n128 *a1, uint64_t a2, float32x4_t a3, __n128 a4)
{
  if (!a1)
  {
    v9 = a3;
    v10 = a4;
    v5 = sub_1AF0D5194(0, a2);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    a3 = v9;
    a4 = v10;
    if (v6)
    {
      sub_1AFDE0C90(v5);
      a3 = v9;
      a4 = v10;
    }
  }

  v7 = vmulq_f32(a3, a4);
  result = -(v7.f32[2] + vaddv_f32(*v7.f32));
  a4.n128_f32[3] = result;
  *a1 = a4;
  return result;
}

BOOL sub_1AF1DA094(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = vsubq_f32(*a4, *a2);
  v5 = vsubq_f32(*a3, *a2);
  v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL), vnegq_f32(v4)), v5, vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL));
  v7 = vmulq_f32(v6, v6);
  v7.f32[0] = sqrtf(v7.f32[1] + (v7.f32[2] + v7.f32[0]));
  if (v7.f32[0] == 0.0)
  {
    *(a1 + 8) = 0;
    v10 = 0.0;
    *a1 = 0;
  }

  else
  {
    v8 = vdivq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vdupq_lane_s32(*v7.f32, 0));
    *a1 = v8.i64[0];
    *(a1 + 8) = v8.i32[2];
    v9 = vmulq_f32(v8, *a4);
    v10 = -(v9.f32[2] + vaddv_f32(*v9.f32));
  }

  *(a1 + 12) = v10;
  return v7.f32[0] != 0.0;
}

BOOL sub_1AF1DA13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1DA3C4(a2, 0);
  v5 = sub_1AF1DA3C4(a2, 1u);
  v6 = sub_1AF1DA3C4(a2, 2u);

  return sub_1AF1DA094(a1, v4, v5, v6);
}

__n128 sub_1AF1DA1B4(_OWORD *a1, _OWORD *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  a1[1] = *a3;
  return result;
}

void sub_1AF1DA1D0(_BOOL8 result, __int128 *a2, float a3)
{
  v4 = result;
  if (!result && (v9 = a3, v5 = sub_1AF0D5194(0, a2), result = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT), a3 = v9, result))
  {
    sub_1AFDE0C90(v5);
    a3 = v9;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v10 = a3;
  v6 = sub_1AF0D5194(result, a2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
  a3 = v10;
  if (v7)
  {
    sub_1AFDE0D14(v6);
    a3 = v10;
  }

LABEL_6:
  v8 = *a2;
  *(&v8 + 3) = a3;
  *v4 = v8;
}

float32x4_t *sub_1AF1DA274(float32x4_t *result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *a2;
  LODWORD(v4) = HIDWORD(*a2);
  if (v4 < 0.0)
  {
    v5 = *a3;
LABEL_5:
    *result = v5;
    return result;
  }

  v6 = *a3;
  LODWORD(v7) = HIDWORD(*a3);
  if (v7 < 0.0)
  {
    v5 = *a2;
    goto LABEL_5;
  }

  v8 = vsubq_f32(v3, v6);
  v9 = vmulq_f32(v8, v8);
  v10 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
  if ((v4 + v10) >= v7)
  {
    if ((v7 + v10) > v4)
    {
      v3 = vmlaq_n_f32(v3, v8, (v4 - (((v4 + v7) + v10) * 0.5)) / v10);
      v3.f32[3] = ((v4 + v7) + v10) * 0.5;
    }

    v6 = v3;
  }

  *result = v6;
  return result;
}

float32x4_t *sub_1AF1DA304(float32x4_t *result, float32x4_t *a2, float32x4_t *a3)
{
  v3 = *result;
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vnegq_f32(v5)), v6, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v8 = vmulq_f32(*a2, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v9 = (v8.f32[2] + vaddv_f32(*v8.f32)) < 0.0;
  v10 = 1.0;
  if (v9)
  {
    v10 = -1.0;
  }

  v11 = vmulq_f32(v4, v4);
  v12 = vmulq_f32(v5, v5);
  v13 = vadd_f32(vzip1_s32(*v11.i8, *v12.i8), vzip2_s32(*v11.i8, *v12.i8));
  v14 = vextq_s8(v11, v11, 8uLL);
  *v14.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v14.f32, *&vextq_s8(v12, v12, 8uLL)), v13));
  v15 = vmulq_f32(v6, v6);
  v14.i32[2] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  v16 = vmulq_n_f32(v14, v10);
  v17 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(a2[3], v6, v3, 2), v5, *v3.f32, 1), v4, v3.f32[0]);
  v17.i32[3] = vmuls_lane_f32(fmaxf(fmaxf(v16.f32[0], v16.f32[2]), v16.f32[1]), v3, 3);
  *a3 = v17;
  return result;
}

BOOL sub_1AF1DA3CC(_OWORD *a1, __int128 *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  v13 = *a1;
  v14 = DWORD2(v3);
  v15 = 1065353216;
  v16 = v4;
  v17 = DWORD2(v4);
  v18 = 1065353216;
  v5 = a1[2];
  v19 = *(a1 + 4);
  v20 = DWORD2(v5);
  v21 = 1065353216;
  v6 = *a2;
  v22 = *a2;
  v23 = DWORD2(v6);
  v24 = 1065353216;
  v7 = sub_1AF1D9DB4(&v13, 4, 3, a3);
  v9 = v7;
  if (!v7)
  {
    v10 = sub_1AF0D5194(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      _os_log_impl(&dword_1AF0CE000, v10, OS_LOG_TYPE_DEFAULT, "Warning: CFXTriangle3BarycentricCoordinates: unable to solve the equation", &v12, 2u);
    }
  }

  return v9;
}

BOOL sub_1AF1DA4CC(float32x4_t *a1, float32x4_t *a2)
{
  v2 = vsubq_f32(a1[1], *a1);
  v3 = vsubq_f32(a1[2], *a1);
  v4 = vsubq_f32(*a2, *a1);
  v5 = vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL);
  v6 = vextq_s8(vuzp1q_s32(v4, v4), v4, 0xCuLL);
  v7 = vnegq_f32(v3);
  v8 = vmlaq_f32(vmulq_f32(v6, v7), v4, v5);
  v9 = vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL);
  v10 = vmulq_f32(vmlaq_f32(vmulq_f32(v9, v7), v2, v5), v8);
  if ((v10.f32[1] + (v10.f32[2] + v10.f32[0])) < 0.0)
  {
    return 0;
  }

  v11 = vnegq_f32(v2);
  v12 = vmlaq_f32(vmulq_f32(v6, v11), v4, v9);
  v13 = vmlaq_f32(vmulq_f32(v5, v11), v3, v9);
  v14 = vmulq_f32(v13, v12);
  if ((v14.f32[1] + (v14.f32[2] + v14.f32[0])) < 0.0)
  {
    return 0;
  }

  result = 0;
  v16 = vmulq_f32(v13, v13);
  v17 = sqrtf(v16.f32[1] + (v16.f32[2] + v16.f32[0]));
  v18 = vmulq_f32(v8, v8);
  v19 = sqrtf(v18.f32[1] + (v18.f32[2] + v18.f32[0])) / v17;
  if (v19 <= 1.0)
  {
    v20 = vmulq_f32(v12, v12);
    v21 = sqrtf(v20.f32[1] + (v20.f32[2] + v20.f32[0])) / v17;
    if (v21 <= 1.0)
    {
      return (v19 + v21) <= 1.0;
    }
  }

  return result;
}

uint64_t sub_1AF1DA5E0(uint64_t result, int32x4_t *a2, unsigned int a3)
{
  if (a3 + 3 >= 4)
  {
    v3 = 0;
    v4 = a2 + 6;
    v5 = result + 64;
    v6.i64[0] = 0x7F0000007FLL;
    v6.i64[1] = 0x7F0000007FLL;
    v7 = vnegq_f32(v6);
    do
    {
      v8 = 0uLL;
      v9 = 0;
      v10 = 0;
      v11 = v7;
      v12 = 0uLL;
      if (v3 < a3)
      {
        v11 = v4[-6];
        v12 = v4[-5];
        v9.i32[0] = v4[-4].i32[0];
        v10 = v4[-4].i32[1];
      }

      v13 = 0;
      v14 = v7;
      v15 = 0;
      if (v3 + 1 < a3)
      {
        v14 = v4[-3];
        v8 = v4[-2];
        v15 = *v4[-1].i8;
      }

      v16 = 0uLL;
      v17 = 0uLL;
      v18 = v7;
      if (v3 + 2 < a3)
      {
        v18 = *v4;
        v17 = v4[1];
        v13 = v4[2].i64[0];
      }

      v19 = 0;
      v20 = v7;
      if (v3 + 3 < a3)
      {
        v20 = v4[3];
        v16 = v4[4];
        v19 = v4[5].i64[0];
      }

      v21 = vzip1q_s32(v11, v18);
      v32.val[0] = vzip2q_s32(v11, v18).u64[0];
      v22 = vzip1q_s32(v14, v20);
      v32.val[1] = vzip2q_s32(v14, v20).u64[0];
      *&v23 = __PAIR64__(v15.u32[1], v10);
      *(&v23 + 1) = __PAIR64__(HIDWORD(v19), HIDWORD(v13));
      v24 = vzip1q_s32(v12, v17);
      *&v25 = vzip1_s32(v9, v15);
      *(&v25 + 1) = __PAIR64__(v19, v13);
      v26 = (v5 - 64);
      vst2_f32(v26, v21);
      v27 = (v5 - 32);
      vst2_f32(v27, v32);
      v31.val[0] = vzip2q_s32(v12, v17).u64[0];
      v28 = vzip1q_s32(v8, v16);
      v31.val[1] = vzip2q_s32(v8, v16).u64[0];
      v29 = (v5 - 16);
      vst2_f32(v29, v24);
      *(v5 - 48) = vzip2q_s32(v21, v22);
      *v5 = vzip2q_s32(v24, v28);
      v30 = (v5 + 16);
      vst2_f32(v30, v31);
      *(v5 + 32) = v25;
      *(v5 + 48) = v23;
      v3 += 4;
      v4 += 12;
      v5 += 128;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v3);
  }

  return result;
}

float32x4_t *sub_1AF1DA710(float32x4_t *result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v14 = vnegq_f32(v8);
    v15 = vnegq_f32(*a3);
    v16 = vnegq_f32(v7);
    v17 = vnegq_f32(v12);
    v18 = vnegq_f32(*a4);
    v19 = vnegq_f32(v11);
    v20 = result + 4;
    do
    {
      v21 = v20[-4];
      v22 = v20[-3];
      v23 = v20[-2];
      v24 = v20[2];
      v25 = vnegq_f32(v24);
      v26 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v22), v21, v6), v23, v8));
      v27 = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v22), v21, v10), v23, v12));
      if ((vminvq_u32(vornq_s8(vmvnq_s8(vcgeq_f32(v26, v25)), vcgeq_f32(v27, v25))) & 0x80000000) != 0)
      {
        if ((v5 & 1) == 0)
        {
          *(a5 + (v5 >> 1)) = 0;
        }
      }

      else
      {
        v28 = v20[3];
        v29 = v20[1];
        v30 = v20[-1];
        v31 = vmlaq_f32(vmulq_f32(*v20, v14), v29, v7);
        v32 = vmlaq_f32(vmulq_f32(v29, v15), v30, v8);
        v33 = vmlaq_f32(vmulq_f32(v30, v16), *v20, v6);
        v34 = vmlaq_f32(vmulq_f32(*v20, vnegq_f32(v33)), v29, v32);
        v35 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v31)), v30, v33);
        v36 = vmlaq_f32(vmulq_f32(v30, vnegq_f32(v32)), *v20, v31);
        v37 = vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v34, v34), v36, v36);
        v38 = vrsqrteq_f32(v37);
        v39 = vmulq_f32(v38, vrsqrtsq_f32(v37, vmulq_f32(v38, v38)));
        v40 = vbicq_s8(vmulq_f32(v39, vrsqrtsq_f32(v37, vmulq_f32(v39, v39))), vceqzq_f32(v37));
        v41 = vmlaq_f32(v21, v24, v30);
        v42 = vmlaq_f32(v22, v24, *v20);
        v43 = vmlaq_f32(v23, v24, v29);
        v44 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, vmlaq_f32(v42, v28, vmulq_f32(v40, vnegq_f32(v35)))), vmlaq_f32(v41, v28, vmulq_f32(v40, vnegq_f32(v34))), v6), vmlaq_f32(v43, v28, vmulq_f32(v40, vnegq_f32(v36))), v8));
        v45 = vmlaq_f32(vmulq_f32(*v20, v17), v29, v11);
        v46 = vmlaq_f32(vmulq_f32(v29, v18), v30, v12);
        v47 = vmlaq_f32(vmulq_f32(v30, v19), *v20, v10);
        v48 = vmlaq_f32(vmulq_f32(*v20, vnegq_f32(v47)), v29, v46);
        v49 = vmlaq_f32(vmulq_f32(v29, vnegq_f32(v45)), v30, v47);
        v50 = vmlaq_f32(vmulq_f32(v30, vnegq_f32(v46)), *v20, v45);
        v51 = vmlaq_f32(vmlaq_f32(vmulq_f32(v49, v49), v48, v48), v50, v50);
        v52 = vrsqrteq_f32(v51);
        v53 = vmulq_f32(v52, vrsqrtsq_f32(v51, vmulq_f32(v52, v52)));
        v54 = vbicq_s8(vmulq_f32(v53, vrsqrtsq_f32(v51, vmulq_f32(v53, v53))), vceqzq_f32(v51));
        v55 = vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, vmlaq_f32(v42, v28, vmulq_f32(v54, vnegq_f32(v49)))), vmlaq_f32(v41, v28, vmulq_f32(v54, vnegq_f32(v48))), v10), vmlaq_f32(v43, v28, vmulq_f32(v54, vnegq_f32(v50))), v12));
        v56 = vaddvq_s32(vandq_s8(vandq_s8(vorrq_s8(vcltzq_f32(vmulq_f32(v26, v44)), vcgezq_f32(vminnmq_f32(v26, v44))), vorrq_s8(vcltzq_f32(vmulq_f32(v27, v55)), vcgezq_f32(vminnmq_f32(v27, v55)))), xmmword_1AFE20C60));
        v57 = v5 >> 1;
        if (v5)
        {
          v56 = *(a5 + v57) | (16 * v56);
        }

        *(a5 + v57) = v56;
      }

      ++v5;
      v20 += 8;
    }

    while (a2 != v5);
  }

  return result;
}

uint64_t sub_1AF1DA990(uint64_t result, int32x4_t *a2, unsigned int a3)
{
  if (a3 + 3 >= 4)
  {
    v3 = 0;
    v4 = (result + 32);
    v5 = a2 + 2;
    do
    {
      v6 = xmmword_1AFE21F00;
      if (v3 < a3)
      {
        v6 = v5[-2];
      }

      v7 = xmmword_1AFE21F00;
      if (v3 + 1 < a3)
      {
        v7 = v5[-1];
      }

      v8 = xmmword_1AFE21F00;
      if (v3 + 2 < a3)
      {
        v8 = *v5;
      }

      v9 = xmmword_1AFE21F00;
      if (v3 + 3 < a3)
      {
        v9 = v5[1];
      }

      v10 = vzip1q_s32(v6, v8);
      v16.val[0] = vzip2q_s32(v6, v8).u64[0];
      v11 = vzip1q_s32(v7, v9);
      *&v12 = vuzp2q_s32(vuzp2q_s32(v6, v7), v6).u64[0];
      *(&v12 + 1) = __PAIR64__(v9.u32[3], v8.u32[3]);
      v16.val[1] = vzip2q_s32(v7, v9).u64[0];
      v13 = v4 - 8;
      vst2_f32(v13, v10);
      *(v4 - 1) = vzip2q_s32(v10, v11);
      v14 = v4 + 16;
      vst2_f32(v4, v16);
      v15 = v4 + 4;
      *v15 = v12;
      v3 += 4;
      v5 += 4;
      v4 = v14;
    }

    while (((a3 + 3) & 0xFFFFFFFC) != v3);
  }

  return result;
}

float32x4_t *sub_1AF1DAA58(float32x4_t *result, int a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = *a3;
    v7 = a3[1];
    v8 = a3[2];
    v9 = a3[3];
    v10 = *a4;
    v11 = a4[1];
    v12 = a4[2];
    v13 = a4[3];
    v14 = result + 2;
    do
    {
      v15 = vnegq_f32(v14[1]);
      v16 = vaddvq_s32(vandq_s8(vandq_s8(vcgeq_f32(vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v7, v14[-1]), v14[-2], v6), *v14, v8)), v15), vcgeq_f32(vaddq_f32(v13, vmlaq_f32(vmlaq_f32(vmulq_f32(v11, v14[-1]), v14[-2], v10), *v14, v12)), v15)), xmmword_1AFE20C60));
      v17 = v5 >> 1;
      if (v5)
      {
        v16 = *(a5 + v17) | (16 * v16);
      }

      *(a5 + v17) = v16;
      ++v5;
      v14 += 4;
    }

    while (a2 != v5);
  }

  return result;
}

float32x4_t sub_1AF1DAAEC(float32x4_t *a1, float32x4_t *a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = (a3 + 32);
    v5 = a2 + 2;
    v6 = a1 + 2;
    v7 = a4;
    do
    {
      v8 = v5[-2];
      v9 = v5[-1];
      v11 = *v5;
      result = v5[1];
      v5 += 4;
      v12 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *(v4 - 8)), v9, *(v4 - 7)), v11, *(v4 - 6)), result, *(v4 - 5));
      v13 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *(v4 - 4)), v9, *(v4 - 3)), v11, *(v4 - 2)), result, *(v4 - 1));
      v14 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, *v4), v9, v4[1]), v11, v4[2]), result, v4[3]);
      v15 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v8, v4[4]), v9, v4[5]), v11, v4[6]), result, v4[7]);
      v6[-2] = v12;
      v6[-1] = v13;
      *v6 = v14;
      v6[1] = v15;
      v6 += 4;
      v4 += 16;
      --v7;
    }

    while (v7);
  }

  return result;
}

float32x4_t *sub_1AF1DAB80(float32x4_t *result, uint64_t a2, unsigned int a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  if (a3)
  {
    v7 = a3;
    v8 = (a2 + 32);
    v9 = result + 2;
    do
    {
      v9[-2] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, *(v8 - 8)), a5, *(v8 - 7)), a6, *(v8 - 6)), a7, *(v8 - 5));
      v9[-1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, *(v8 - 4)), a5, *(v8 - 3)), a6, *(v8 - 2)), a7, *(v8 - 1));
      *v9 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, *v8), a5, v8[1]), a6, v8[2]), a7, v8[3]);
      v9[1] = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, v8[4]), a5, v8[5]), a6, v8[6]), a7, v8[7]);
      v8 += 16;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x4_t sub_1AF1DAC14(uint64_t a1, int32x4_t *a2, unsigned int a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = (a1 + 32);
    v5 = a2 + 2;
    do
    {
      v6 = v5[-2];
      v7 = v5[-1];
      v8 = *v5;
      v9 = v5[1];
      v5 += 4;
      v10 = v4 - 8;
      v11 = vzip1q_s32(v6, v8);
      v14.val[0] = vzip2q_s32(v6, v8).u64[0];
      v12 = vzip1q_s32(v7, v9);
      v14.val[1] = vzip2q_s32(v7, v9).u64[0];
      result = vzip2q_s32(v11, v12);
      vst2_f32(v10, v11);
      *(v4 - 1) = result;
      vst2_f32(v4, v14);
      v4 += 12;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t vfx_frustum_classify_aabb(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = vmulq_f32(a2, *a1);
  v7 = vmulq_f32(a2, v3);
  v8 = vmulq_f32(a2, v4);
  v9 = vmulq_f32(a2, v5);
  v10 = vzip1q_s32(v6, v8);
  v11 = vzip2q_s32(v6, v8);
  v12 = vzip1q_s32(v7, v9);
  v13 = vzip2q_s32(v7, v9);
  v14 = vaddq_f32(vzip2q_s32(v11, v13), vaddq_f32(vzip1q_s32(v11, v13), vaddq_f32(vzip1q_s32(v10, v12), vzip2q_s32(v10, v12))));
  v15 = vmulq_f32(a3, vabsq_f32(*a1));
  v16 = vmulq_f32(a3, vabsq_f32(v3));
  v17 = vmulq_f32(a3, vabsq_f32(v4));
  v18 = vmulq_f32(a3, vabsq_f32(v5));
  v19 = vzip1q_s32(v15, v17);
  v20 = vzip2q_s32(v15, v17);
  v21 = vzip1q_s32(v16, v18);
  v22 = vzip2q_s32(v16, v18);
  v23 = vmaxnmq_f32(vsubq_f32(vabsq_f32(v14), vaddq_f32(vzip2q_s32(v20, v22), vaddq_f32(vzip1q_s32(v20, v22), vaddq_f32(vzip1q_s32(v19, v21), vzip2q_s32(v19, v21))))), 0);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v24 = vorrq_s8(vandq_s8(v14, v22), vabsq_f32(v23));
  if ((vmaxvq_u32(vcltzq_f32(v24)) & 0x80000000) != 0)
  {
    return 1;
  }

  v26 = a1[4];
  v25 = a1[5];
  v27 = vmulq_f32(a2, v26);
  v28 = vmulq_f32(a2, v25);
  v29 = vzip1q_s32(v27, v28);
  v30 = vzip2q_s32(v27, v28);
  *v30.i8 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), vadd_f32(*v30.i8, vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL))));
  v31 = vmulq_f32(a3, vabsq_f32(v26));
  v32 = vmulq_f32(a3, vabsq_f32(v25));
  v33 = vzip1q_s32(v31, v32);
  v34 = vzip2q_s32(v31, v32);
  v35 = vorr_s8(vand_s8(*v30.i8, 0x8000000080000000), vabs_f32(vmaxnm_f32(vsub_f32(vabs_f32(*v30.i8), vadd_f32(*&vextq_s8(v34, v34, 8uLL), vadd_f32(*v34.i8, vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL))))), 0)));
  *v34.i8 = vcltz_f32(v35);
  if ((vpmax_u32(*v34.i8, *v34.i8).u32[0] & 0x80000000) != 0)
  {
    return 1;
  }

  *v36.f32 = vmul_f32(*v24.f32, v35);
  v36.i64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
  return (vmaxvq_u32(vceqzq_f32(v36)) >> 30) & 2;
}

double sub_1AF1DADD0(float32x4_t a1)
{
  v1 = __sincosf_stret(0.5 * a1.f32[0]);
  v2 = __sincosf_stret(vmuls_lane_f32(0.5, *a1.f32, 1));
  v3 = __sincosf_stret(vmuls_lane_f32(0.5, a1, 2));
  v4.f32[0] = (v3.__cosval * (v1.__sinval * v2.__sinval)) + ((v1.__cosval * v2.__cosval) * v3.__sinval);
  v4.f32[1] = (v3.__sinval * (v1.__cosval * v2.__sinval)) + ((v1.__sinval * v2.__cosval) * v3.__cosval);
  v4.f32[2] = ((v1.__cosval * v2.__sinval) * v3.__cosval) - ((v1.__sinval * v2.__cosval) * v3.__sinval);
  v11 = v4;
  acosf(((v1.__cosval * v2.__cosval) * v3.__cosval) - ((v1.__sinval * v2.__sinval) * v3.__sinval));
  v5 = vmulq_f32(v11, v11);
  *&v6 = v5.f32[2] + vaddv_f32(*v5.f32);
  v7 = vrsqrte_f32(v6);
  v8 = vmul_f32(v7, vrsqrts_f32(v6, vmul_f32(v7, v7)));
  *&result = vmulq_n_f32(v11, vmul_f32(v8, vrsqrts_f32(v6, vmul_f32(v8, v8))).f32[0]).u64[0];
  return result;
}

void sub_1AF1DAEC4(float32x4_t a1)
{
  v1 = a1.f32[3];
  v2 = __sincosf_stret(a1.f32[3]);
  v3 = 1.0 - v2.__cosval;
  v4 = vmulq_f32(a1, a1);
  v4.f32[0] = v4.f32[2] + vaddv_f32(*v4.f32);
  v5 = vdupq_lane_s32(*v4.f32, 0);
  v5.i32[3] = 0;
  v6 = vrsqrteq_f32(v5);
  v7 = vmulq_f32(v6, vrsqrtsq_f32(v5, vmulq_f32(v6, v6)));
  v8 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v4.f32[0] != 0.0)), 0x1FuLL));
  v8.i32[3] = 0;
  v9 = vbslq_s8(vcltzq_s32(v8), vmulq_f32(vmulq_f32(v7, vrsqrtsq_f32(v5, vmulq_f32(v7, v7))), a1), a1);
  v10 = vmuls_lane_f32(v2.__sinval, v9, 2) + (vmuls_lane_f32(v9.f32[0], *v9.f32, 1) * (1.0 - v2.__cosval));
  v16 = v9.f32[0];
  if (v10 <= 0.998)
  {
    if (v10 >= -0.998)
    {
      v13 = v9.f32[1];
      v14 = v9.f32[2];
      atan2f((v3 * -(v9.f32[0] * v9.f32[2])) + (v9.f32[1] * v2.__sinval), 1.0 - (((v14 * v14) + (v13 * v13)) * v3));
      asinf(v10);
      atan2f((v3 * -(v13 * v14)) + (v16 * v2.__sinval), 1.0 - (((v14 * v14) + (v16 * v16)) * v3));
    }

    else
    {
      v12 = __sincosf_stret(v1 * 0.5);
      atan2f(v12.__sinval * v16, v12.__cosval);
    }
  }

  else
  {
    v11 = __sincosf_stret(v1 * 0.5);
    atan2f(v11.__sinval * v16, v11.__cosval);
  }
}

BOOL sub_1AF1DB074(char *cf, const __CFArray *a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_1AF1DE260(a5, cf);
  if (a3 >= a4)
  {
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    return 1;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, a3);
  v13 = sub_1AF1DB1EC(ValueAtIndex);
  if (v13 <= 72)
  {
    if (v13 != 70)
    {
      if (v13 == 71)
      {
        return 0;
      }

LABEL_11:
      if (a6)
      {
        v16 = sub_1AF0D5194(v13, v14);
        result = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        sub_1AFDE0D98();
      }

      return 0;
    }

    v17 = sub_1AF166F98(cf, v14);
    sub_1AF1DB234(v17, a2, a3 + 1, a4, a5);
    return 1;
  }

  if (v13 != 73)
  {
    if (v13 == 74)
    {
      *(a5 + 24) = cf + 80;
      result = 1;
      *(a5 + 32) = 1;
      return result;
    }

    goto LABEL_11;
  }

  v18 = sub_1AF167270(cf, v14);
  if (!v18)
  {
    v26[0] = xmmword_1AFE20150;
    v26[1] = xmmword_1AFE20160;
    v26[2] = xmmword_1AFE20180;
    v26[3] = xmmword_1AFE201A0;
    sub_1AF167444(cf, v26, v19, v20, v21, v22, v23, v24);
    v18 = sub_1AF167270(cf, v25);
  }

  return sub_1AF1DB2F8(v18, a2, (a3 + 1), a4, a5, a6);
}

const void *sub_1AF1DB1EC(void *key)
{
  if (qword_1ED737BE0 != -1)
  {
    sub_1AFDE0E00();
  }

  return CFDictionaryGetValue(qword_1ED737BE8, key);
}

void sub_1AF1DB234(uint64_t result, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = result;
    *(a5 + 32) = 12;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v8 = sub_1AF1DB1EC(ValueAtIndex);
    *(a5 + 32) = 1;
    v10 = v8 - 13;
    if ((v8 - 13) >= 8)
    {
      v13 = sub_1AF0D5194(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE0E14();
      }
    }

    else
    {
      v11 = 0x302010003020100uLL >> (8 * v10);
      v12 = qword_1AFE21F30[v10];
      *(a5 + 35) = v11;
      *(a5 + 24) = result + 4 * v12;
    }
  }
}

BOOL sub_1AF1DB2F8(uint64_t a1, CFArrayRef theArray, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(a5 + 34) = 8;
  *(a5 + 37) = 1;
  if (a3 >= a4)
  {
    *(a5 + 24) = a1;
    *(a5 + 32) = 10;
    return 1;
  }

  v10 = a3;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v13 = sub_1AF1DB1EC(ValueAtIndex);
  if ((v13 - 21) < 0x10)
  {
    v15 = a1;
    v16 = theArray;
    v17 = v10;
LABEL_4:
    sub_1AF1DBB34(v15, v16, v17, a4, a5);
LABEL_5:
    *(a5 + 24) = a1;
    return 1;
  }

  if (v13 <= 7)
  {
    switch(v13)
    {
      case 5:
        v17 = v10 + 1;
        v15 = a1;
        v16 = theArray;
        goto LABEL_4;
      case 6:
        v23 = 0;
        v22 = 0;
        sub_1AF1DBA68(&v22, theArray, v10 + 1, a4, a5);
        *(a5 + 34) = 6;
        goto LABEL_5;
      case 7:
        v20 = v10 + 1;
        v19 = theArray;
        goto LABEL_16;
    }
  }

  else
  {
    if ((v13 - 11) < 2)
    {
      v19 = theArray;
      v20 = v10;
LABEL_16:
      sub_1AF1DDA5C(v19, v20, a4, a5);
      goto LABEL_5;
    }

    if (v13 == 8)
    {
      *(a5 + 34) = 7;
      *(a5 + 32) = 8;
      *(a5 + 35) = sub_1AF1DDBE0(theArray, v10 + 1, a4, a5);
      goto LABEL_5;
    }
  }

  if (!a6)
  {
    return 0;
  }

  v21 = sub_1AF0D5194(v13, v14);
  result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1AFDE0E7C();
    return 0;
  }

  return result;
}

uint64_t sub_1AF1DB4A0(const __CFArray *a1, const void *a2, _BYTE *a3)
{
  if (a1 && CFArrayGetCount(a1) >= 2 && (ValueAtIndex = CFArrayGetValueAtIndex(a1, 0), Length = CFStringGetLength(ValueAtIndex), Length >= 2) && (v8 = Length, CFStringGetCharacterAtIndex(ValueAtIndex, 0) == 47))
  {
    if (a3)
    {
      *a3 = 1;
    }

    v12.length = v8 - 1;
    v12.location = 1;
    v9 = CFStringCreateWithSubstring(0, ValueAtIndex, v12);
    v10 = sub_1AF1C4020(a2, v9);
    CFRelease(v9);
    return v10;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 0;
  }
}

uint64_t sub_1AF1DB564(void *a1, const __CFArray *a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  v13 = 0;
  v6 = sub_1AF1DE1CC(0, 0, 0, 0);
  v7 = sub_1AF1DB4A0(a2, v5, &v13);
  if (v7)
  {
    v5 = v7;
  }

  Count = CFArrayGetCount(a2);
  v9 = Count;
  if (v13 == 1)
  {
    v9 = Count - 1;
    a2 = sub_1AF28A4C4(a2, 1, Count - 1);
  }

  v10 = CFGetTypeID(v5);
  sub_1AF1DBBF0(v5, v10, a2, 0, v9, v6, a3);
  if (*(v6 + 24))
  {
    *(v6 + 36) = sub_1AF288070(*(v6 + 32), v11);
  }

  return v6;
}

char *sub_1AF1DB654(char *result, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v11 = result;
    v12 = CFGetTypeID(result);

    return sub_1AF1DBBF0(v11, v12, a2, a3, a4, a5, a6);
  }

  return result;
}

const __CFArray *sub_1AF1DB6D0(void *a1, CFStringRef theString, uint64_t a3)
{
  result = sub_1AF28A40C(theString);
  if (result)
  {
    v6 = result;
    v7 = sub_1AF1DB564(a1, result, a3);
    CFRelease(v6);
    return v7;
  }

  return result;
}

uint64_t sub_1AF1DB72C(const void *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v8 = sub_1AF1DE1CC(0, 0, 0, 0);
  v9 = CFGetTypeID(a1);
  sub_1AF1DCC5C(a1, v9, a2, a3, v8, v4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = sub_1AF288070(*(v8 + 32), v10);
  }

  return v8;
}

uint64_t sub_1AF1DB7C8(const void *a1, const __CFString *a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a4;
  v8 = sub_1AF1DE1CC(0, 0, 0, 0);
  v9 = CFGetTypeID(a1);
  sub_1AF1DCDF4(a1, v9, a2, a3, v8, v4);
  if (*(v8 + 24))
  {
    *(v8 + 36) = sub_1AF288070(*(v8 + 32), v10);
  }

  return v8;
}

const void *sub_1AF1DB864(void *key)
{
  Mutable = qword_1ED739AD0;
  if (!qword_1ED739AD0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    qword_1ED739AD0 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    CFDictionarySetValue(qword_1ED739AD0, key, Value);
  }

  return Value;
}

uint64_t sub_1AF1DB904(CFArrayRef theArray, int a2, int a3, uint64_t a4)
{
  result = 0;
  v7 = *(a4 + 32);
  if (v7 > 9)
  {
    if (v7 == 10)
    {
      sub_1AF1DBB34(*(a4 + 24), theArray, a2, a3, a4);
    }

    else
    {
      if (v7 != 12)
      {
        return result;
      }

      sub_1AF1DB234(*(a4 + 24), theArray, a2, a3, a4);
    }
  }

  else if (v7 == 8)
  {
    sub_1AF1DBA68(*(a4 + 24), theArray, a2, a3, a4);
  }

  else
  {
    if (v7 != 9)
    {
      return result;
    }

    if (a2 >= a3)
    {
      *(a4 + 32) = 9;
    }

    else
    {
      v8 = *(a4 + 24);
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, a2);
      v10 = sub_1AF1DB1EC(ValueAtIndex);
      *(a4 + 32) = 1;
      if (v10 > 14)
      {
        if (v10 == 15)
        {
          *(a4 + 24) = v8 + 8;
          v12 = 2;
        }

        else
        {
          if (v10 != 16)
          {
LABEL_18:
            v13 = sub_1AF0D5194(v10, v11);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDE0EE4();
            }

            return 1;
          }

          *(a4 + 24) = v8 + 12;
          v12 = 3;
        }

        *(a4 + 35) = v12;
      }

      else
      {
        if (v10 != 13)
        {
          if (v10 == 14)
          {
            *(a4 + 24) = v8 + 4;
            result = 1;
            *(a4 + 35) = 1;
            return result;
          }

          goto LABEL_18;
        }

        *(a4 + 24) = v8;
        *(a4 + 35) = 0;
      }
    }
  }

  return 1;
}

void sub_1AF1DBA68(uint64_t result, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = result;
    *(a5 + 32) = 8;
    return;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
  v8 = sub_1AF1DB1EC(ValueAtIndex);
  *(a5 + 32) = 1;
  switch(v8)
  {
    case 0xD:
      *(a5 + 24) = result;
      break;
    case 0xE:
      *(a5 + 24) = result + 4;
      v10 = 1;
      goto LABEL_8;
    case 0xF:
      *(a5 + 24) = result + 8;
      v10 = 2;
LABEL_8:
      *(a5 + 35) = v10;
      return;
    default:
      v11 = sub_1AF0D5194(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE0F4C();
      }

      break;
  }
}

void sub_1AF1DBB34(uint64_t result, CFArrayRef theArray, int a3, int a4, uint64_t a5)
{
  if (a3 >= a4)
  {
    *(a5 + 24) = result;
    *(a5 + 32) = 10;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v8 = sub_1AF1DB1EC(ValueAtIndex);
    *(a5 + 32) = 1;
    v10 = v8 - 21;
    if ((v8 - 21) >= 0x10)
    {
      v13 = sub_1AF0D5194(v8, v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDE0FB4();
      }
    }

    else
    {
      v11 = byte_1AFE21F20[v10];
      v12 = qword_1AFE21F70[v10];
      *(a5 + 35) = v11;
      *(a5 + 24) = result + 4 * v12;
    }
  }
}

uint64_t sub_1AF1DBBF0(char *a1, void *a2, const __CFArray *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1AF16CB64(a1, a2);
  if (v14 != a2)
  {
    v16 = sub_1AF1B846C(v14, v15);
    if (v16 == a2)
    {
      if (sub_1AF1DC218(a1, a3, a4, a5, a6, a7))
      {
        return 1;
      }

      goto LABEL_24;
    }

    v18 = sub_1AF1A0AD8(v16, v17);
    if (v18 == a2)
    {
      if (sub_1AF1DC52C(a1, a3, a4, a5, a6, a7))
      {
        return 1;
      }

      goto LABEL_24;
    }

    v20 = sub_1AF19AF4C(v18, v19);
    if (v20 == a2)
    {
      if (!a1)
      {
        goto LABEL_24;
      }

      if ((sub_1AF1DC078(a1, a3, a4, a5, a6) & 1) == 0)
      {
        sub_1AF1DE260(a6, a1);
        if (a4 >= a5)
        {
          *(a6 + 24) = 0;
          *(a6 + 32) = 0;
          return 1;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a3, a4);
        v23 = sub_1AF1DB1EC(ValueAtIndex);
        if (v23 <= 81)
        {
          switch(v23)
          {
            case 'N':
              v24 = 1;
              v49 = sub_1AF19B4EC(a1, 1);
              break;
            case 'O':
              v24 = 1;
              v49 = sub_1AF19B558(a1, 1);
              break;
            case 'Q':
              v24 = 1;
              *(a6 + 32) = 1;
              v25 = a1 + 84;
LABEL_69:
              *(a6 + 24) = v25;
              return v24;
            default:
              goto LABEL_24;
          }

          sub_1AF1DB074(v49, a3, a4 + 1, a5, a6, a7);
          return v24;
        }

        switch(v23)
        {
          case 'R':
            v24 = 1;
            *(a6 + 32) = 1;
            v25 = a1 + 308;
            break;
          case 'S':
            v24 = 1;
            *(a6 + 32) = 1;
            v25 = a1 + 304;
            break;
          case 'T':
            v24 = 1;
            *(a6 + 32) = 1;
            v25 = a1 + 312;
            break;
          default:
            goto LABEL_24;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v26 = sub_1AF1B630C(v20, v21);
      if (v26 == a2)
      {
        v28 = sub_1AF15B294(a1);
      }

      else
      {
        v29 = sub_1AF1B42EC(v26, v27);
        if (v29 != a2)
        {
          v43 = sub_1AF1B2A04(v29, v30);
          if (v43 == a2)
          {
            if (sub_1AF1DC800(a1, a3, a4, a5, a6, a7))
            {
              return 1;
            }
          }

          else
          {
            v45 = sub_1AF16FA20(v43, v44);
            if (v45 == a2)
            {
              if (sub_1AF1DC95C(a1, a3, a4, a5, a6))
              {
                return 1;
              }
            }

            else
            {
              v47 = sub_1AF1CF31C(v45, v46);
              if (v47 == a2)
              {
                if (sub_1AF1DCA10(a1, a3, a4, a5, a6, a7))
                {
                  return 1;
                }
              }

              else if (sub_1AF16A528(v47, v48) == a2 && sub_1AF1DCAE8(a1, a3, a4, a5, a6))
              {
                return 1;
              }
            }
          }

          goto LABEL_24;
        }

        v28 = a1;
      }

      if (!sub_1AF1DC620(v28, a3, a4, a5, a6, a7))
      {
        goto LABEL_24;
      }
    }

    return 1;
  }

  if (sub_1AF1DC078(a1, a3, a4, a5, a6))
  {
    return 1;
  }

LABEL_24:
  os_unfair_lock_lock(&unk_1ED731628);
  v31 = sub_1AF1DB864(a2);
  if (a4 >= a5 || (v32 = v31) == 0)
  {
    os_unfair_lock_unlock(&unk_1ED731628);
LABEL_34:
    v24 = 0;
    if (!a7 || a4 + 1 != a5)
    {
      return v24;
    }

    v42 = sub_1AF0D5194(v40, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDE101C();
    }

    return 0;
  }

  v33 = CFArrayGetValueAtIndex(a3, a4);
  Value = CFDictionaryGetValue(v32, v33);
  os_unfair_lock_unlock(&unk_1ED731628);
  if (!Value)
  {
    v40 = CFDictionaryGetValue(v32, @"superClass");
    if (v40)
    {
      v40 = sub_1AF1DBBF0(a1, v40, a3, a4, a5, a6, a7);
      if (v40)
      {
        return 1;
      }
    }

    goto LABEL_34;
  }

  sub_1AF1DE260(a6, a1);
  v35 = *(Value + 4);
  *(a6 + 32) = v35;
  *(a6 + 34) = Value[10];
  v36 = &a1[*Value];
  *(a6 + 24) = v36;
  v37 = (a4 + 1);
  if (v37 >= a5)
  {
    return 1;
  }

  if (v35 == 5)
  {
    if (a1)
    {
      v38 = *v36;

      return sub_1AF1DB654(v38, a3, v37, a5, a6, a7);
    }

    return 0;
  }

  return sub_1AF1DB904(a3, a4 + 1, a5, a6);
}