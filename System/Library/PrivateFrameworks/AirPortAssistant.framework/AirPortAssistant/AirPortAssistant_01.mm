uint64_t sub_23EB6FE40(__CFArray *a1, CFMutableDictionaryRef theDict, const void **a3, CFTypeRef cf, void *a5)
{
  if (a1)
  {
    CFArrayAppendValue(a1, cf);
  }

  else if (theDict)
  {
    if (!*a3)
    {
      return 4294960554;
    }

    CFDictionarySetValue(theDict, *a3, cf);
    CFRelease(*a3);
    *a3 = 0;
  }

  else
  {
    CFRetain(cf);
  }

  result = 0;
  if (!*a5)
  {
    *a5 = cf;
  }

  return result;
}

uint64_t sub_23EB6FED4(uint64_t a1, CFDictionaryRef theDict)
{
  v3 = a1;
  v4 = 0;
  CFDictionaryApplyFunction(theDict, sub_23EB7181C, &v3);
  return v4;
}

void sub_23EB6FF40(const __CFString *cf, uint64_t a2, UInt8 *bytes, unsigned int *a4)
{
  v85 = *MEMORY[0x277D85DE8];
  maxBufLen = 0;
  v81 = a4;
  v79 = 0;
  v4 = *bytes;
  if (!*bytes)
  {
    return;
  }

  v5 = bytes;
  v7 = *MEMORY[0x277CBECE8];
  while (1)
  {
    v8 = 0;
      ;
    }

    v10 = &v5[v8];
    v11 = &v5[v8];
    if (i)
    {
      do
      {
        if (i == 46)
        {
          break;
        }

        v12 = *++v11;
        i = v12;
      }

      while (v12);
    }

    if (v4 == 91)
    {
      v14 = v5[1];
      if (v14 == 42)
      {
        if (v5[2] != 93)
        {
          return;
        }

        v15 = v81;
        v81 += 2;
        v16 = *v15;
        if ((v16 & 0x80000000) != 0)
        {
          return;
        }

        v10 = v5 + 3;
      }

      else
      {
        v18 = v14 - 48;
        if (v18 > 9)
        {
          return;
        }

        v16 = 0;
        v10 = v5 + 2;
        do
        {
          v16 = 10 * v16 + v18;
          v20 = *v10++;
          v19 = v20;
          v18 = v20 - 48;
        }

        while ((v20 - 48) < 0xA);
        if (v16 < 0 || v19 != 93)
        {
          return;
        }
      }

      v21 = CFGetTypeID(cf);
      if (v21 != CFArrayGetTypeID() || v16 >= CFArrayGetCount(cf))
      {
        return;
      }

      cf = CFArrayGetValueAtIndex(cf, v16);
      goto LABEL_54;
    }

    if (v4 != 37)
    {
      if (v5 >= v10)
      {
        v10 = v5;
        goto LABEL_54;
      }

      v17 = CFStringCreateWithBytes(v7, v5, v8, 0x8000100u, 0);
      if (!v17)
      {
        return;
      }

      goto LABEL_52;
    }

    if (v5[1] != 107)
    {
      return;
    }

    v13 = v5[2];
    if (v13 <= 0x68)
    {
      if (v13 != 67)
      {
        if (v13 == 79)
        {
          goto LABEL_42;
        }

        if (v13 != 99)
        {
          return;
        }
      }

      v22 = v81;
      v81 += 2;
      *buffer = bswap32(*v22);
      v23 = buffer;
      v24 = v7;
      v25 = 4;
      v26 = 0;
      goto LABEL_49;
    }

    if (v5[2] <= 0x72u)
    {
      if (v13 != 105)
      {
        if (v13 != 111)
        {
          return;
        }

LABEL_42:
        v30 = v81;
        v81 += 2;
        v17 = *v30;
        if (!*v30)
        {
          return;
        }

        CFRetain(*v30);
        goto LABEL_51;
      }

      v31 = v81;
      v81 += 2;
      sub_23EB720C0(cStr, 64, "%llu", *v31);
      v28 = cStr;
      v29 = 0;
      goto LABEL_45;
    }

    if (v13 == 116)
    {
      v33 = v81;
      v81 += 2;
      v23 = *v33;
      if (!*v33)
      {
        return;
      }

      v34 = v81;
      v81 += 2;
      v25 = *v34;
      v24 = v7;
      v26 = 134217984;
LABEL_49:
      v32 = CFStringCreateWithBytes(v24, v23, v25, v26, 0);
      if (!v32)
      {
        return;
      }

      goto LABEL_50;
    }

    if (v13 != 115)
    {
      return;
    }

    v27 = v81;
    v81 += 2;
    v28 = *v27;
    if (!*v27)
    {
      return;
    }

    v29 = v7;
LABEL_45:
    v32 = CFStringCreateWithCString(v29, v28, 0x8000100u);
    if (!v32)
    {
      return;
    }

LABEL_50:
    v17 = v32;
LABEL_51:
    v10 = v5 + 3;
LABEL_52:
    v35 = CFGetTypeID(cf);
    if (v35 != CFDictionaryGetTypeID())
    {
      CFRelease(v17);
      return;
    }

    cf = CFDictionaryGetValue(cf, v17);
    CFRelease(v17);
    if (!cf)
    {
      return;
    }

LABEL_54:
    if (*v10 == 58)
    {
      break;
    }

    if (*v11)
    {
      v5 = v11 + 1;
    }

    else
    {
      v5 = v11;
    }

    v4 = *v5;
    if (!*v5)
    {
      if (!cf)
      {
        return;
      }

LABEL_60:
      if (a2)
      {
        *a2 = cf;
      }

      return;
    }
  }

  v36 = (v10 + 1);
  for (j = v10 + 1; *j; ++j)
  {
    if (*j == 46)
    {
      return;
    }
  }

  if (!cf)
  {
    return;
  }

  if (!strcmp(v10 + 1, "err") || !strcmp(v10 + 1, "int"))
  {
    if (sub_23EB70D14(cf, &v79) || !a2)
    {
      return;
    }

    goto LABEL_96;
  }

  if (!strcmp(v10 + 1, "int8"))
  {
    if (sub_23EB70D14(cf, &v79) || !a2)
    {
      return;
    }

    goto LABEL_99;
  }

  if (!strcmp(v10 + 1, "int16"))
  {
    if (!sub_23EB70D14(cf, &v79) && a2)
    {
      *a2 = v79;
    }

    return;
  }

  if (!strcmp(v10 + 1, "int64"))
  {
    sub_23EB70D14(cf, a2);
    return;
  }

  if (!strcmp(v10 + 1, "int*"))
  {
    if (sub_23EB70D14(cf, &v79))
    {
      return;
    }

    v41 = v81;
    v81 += 2;
    v42 = *v41;
    if (v42 <= 3)
    {
      if (v42 != 1)
      {
        if (v42 == 2)
        {
          *a2 = v79;
        }

        return;
      }

LABEL_99:
      *a2 = v79;
      return;
    }

    if (v42 != 4)
    {
      if (v42 == 8)
      {
        *a2 = v79;
      }

      return;
    }

LABEL_96:
    *a2 = v79;
    return;
  }

  if (!strcmp(v10 + 1, "utf8"))
  {
    v43 = CFGetTypeID(cf);
    if (v43 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(cf);
      maxBufLen = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v45 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
      if (v45)
      {
        v46 = v45;
        v86.location = 0;
        v86.length = Length;
        if (CFStringGetBytes(cf, v86, 0x8000100u, 0, 0, v45, maxBufLen, &maxBufLen) == Length)
        {
          v46[maxBufLen] = 0;
          if (a2)
          {
            *a2 = v46;
          }

          else
          {
            free(v46);
          }
        }

        else
        {
          free(v46);
        }
      }
    }
  }

  else if (!strcmp(v10 + 1, "*utf8"))
  {
    v47 = CFGetTypeID(cf);
    if (v47 == CFStringGetTypeID())
    {
      v48 = v81;
      v81 += 2;
      CFStringGetCString(cf, a2, *v48, 0x8000100u);
    }
  }

  else if (!strcmp(v10 + 1, "obj"))
  {
    if (a2)
    {
      CFRetain(cf);
      *a2 = cf;
    }
  }

  else if (!strcmp(v10 + 1, "BOOL"))
  {
    v49 = CFGetTypeID(cf);
    if (v49 == CFBooleanGetTypeID() && a2)
    {
      *a2 = CFBooleanGetValue(cf);
    }
  }

  else if (!strcmp(v10 + 1, "mac"))
  {
    v50 = CFGetTypeID(cf);
    if (v50 == CFDataGetTypeID())
    {
      if (CFDataGetLength(cf) == 6 && a2)
      {
        BytePtr = CFDataGetBytePtr(cf);
        v52 = *(BytePtr + 2);
        *a2 = *BytePtr;
        *(a2 + 4) = v52;
      }
    }

    else
    {
      v55 = CFGetTypeID(cf);
      if (v55 == CFStringGetTypeID() && CFStringGetCString(cf, cStr, 64, 0x8000100u))
      {
        sub_23EB7E668(cStr, 0xFFFFFFFFFFFFFFFFLL, 6, a2);
      }
    }
  }

  else
  {
    if (!strcmp(v10 + 1, "macStr"))
    {
      v53 = CFGetTypeID(cf);
      if (v53 == CFDataGetTypeID())
      {
        if (CFDataGetLength(cf) != 6)
        {
          return;
        }

        v54 = CFDataGetBytePtr(cf);
      }

      else
      {
        v57 = CFGetTypeID(cf);
        if (v57 != CFStringGetTypeID() || !CFStringGetCString(cf, cStr, 64, 0x8000100u) || sub_23EB7E668(cStr, 0xFFFFFFFFFFFFFFFFLL, 6, buffer))
        {
          return;
        }

        v54 = buffer;
      }

      sub_23EB7E798(v54, 6, a2);
      return;
    }

    if (!strcmp(v10 + 1, "code"))
    {
      *valuePtr = 0;
      v56 = CFGetTypeID(cf);
      if (v56 == CFStringGetTypeID())
      {
        if (CFStringGetLength(cf) != 4)
        {
          return;
        }

        maxBufLen = 0;
        v87.location = 0;
        v87.length = 4;
        CFStringGetBytes(cf, v87, 0x8000100u, 0, 0, buffer, 4, &maxBufLen);
        if (maxBufLen != 4)
        {
          return;
        }

        *valuePtr = sub_23EB7E5D8(buffer, 4uLL);
      }

      else
      {
        v59 = CFGetTypeID(cf);
        if (v59 != CFNumberGetTypeID())
        {
          return;
        }

        CFNumberGetValue(cf, kCFNumberSInt32Type, valuePtr);
      }

      if (a2)
      {
        *a2 = *valuePtr;
      }
    }

    else if (!strcmp(v10 + 1, "ipv4"))
    {
      v58 = CFGetTypeID(cf);
      if (v58 == CFStringGetTypeID() && CFStringGetCString(cf, cStr, 64, 0x8000100u))
      {
        sub_23EB7DE5C(cStr, 0, a2, 0, 0, 0, 0);
      }
    }

    else if (!strcmp(v10 + 1, "vers"))
    {
      v60 = CFGetTypeID(cf);
      if (v60 == CFStringGetTypeID())
      {
        v88.length = CFStringGetLength(cf);
        maxBufLen = 0;
        v88.location = 0;
        CFStringGetBytes(cf, v88, 0x8000100u, 0, 0, cStr, 63, &maxBufLen);
        sub_23EB7E800(cStr, maxBufLen, a2);
      }
    }

    else if (!strcmp(v10 + 1, "svers"))
    {
      v61 = CFGetTypeID(cf);
      if (v61 == CFStringGetTypeID())
      {
        v89.length = CFStringGetLength(cf);
        maxBufLen = 0;
        v89.location = 0;
        CFStringGetBytes(cf, v89, 0x8000100u, 0, 0, cStr, 63, &maxBufLen);
        v62 = sub_23EB7EE20(cStr, maxBufLen);
        if (v62)
        {
          *a2 = v62;
        }
      }
    }

    else if (!strcmp(v10 + 1, "uuid"))
    {
      v63 = CFGetTypeID(cf);
      if (v63 == CFDataGetTypeID())
      {
        if (CFDataGetLength(cf) == 16 && a2)
        {
          *a2 = *CFDataGetBytePtr(cf);
        }
      }

      else
      {
        v71 = CFGetTypeID(cf);
        if (v71 == CFStringGetTypeID() && CFStringGetCString(cf, valuePtr, 64, 0x8000100u))
        {
          sub_23EB7F22C(valuePtr, 0xFFFFFFFFFFFFFFFFLL, 0);
        }
      }
    }

    else if (!strcmp(v10 + 1, "CFStringUUID"))
    {
      v69 = CFGetTypeID(cf);
      if (v69 == CFStringGetTypeID())
      {
        if (CFStringGetCString(cf, cStr, 64, 0x8000100u))
        {
          sub_23EB7F22C(cStr, 0xFFFFFFFFFFFFFFFFLL, 0);
          if (!v70)
          {
            goto LABEL_60;
          }
        }
      }
    }

    else
    {
      v38 = *v36;
      if (v38 == 67 && v10[2] == 70)
      {
        v39 = strchr(v10 + 1, 33);
        if (v39)
        {
          v40 = v39 - v36;
        }

        else
        {
          v40 = strlen(v10 + 1);
        }

        if (sub_23EB7F48C(v10 + 1, v40, "CFArray"))
        {
          if (sub_23EB7F48C(v10 + 1, v40, "CFBoolean"))
          {
            if (sub_23EB7F48C(v10 + 1, v40, "CFData"))
            {
              if (sub_23EB7F48C(v10 + 1, v40, "CFDate"))
              {
                if (sub_23EB7F48C(v10 + 1, v40, "CFDictionary"))
                {
                  if (sub_23EB7F48C(v10 + 1, v40, "CFNumber"))
                  {
                    if (sub_23EB7F48C(v10 + 1, v40, "CFString"))
                    {
                      return;
                    }

                    TypeID = CFStringGetTypeID();
                  }

                  else
                  {
                    TypeID = CFNumberGetTypeID();
                  }
                }

                else
                {
                  TypeID = CFDictionaryGetTypeID();
                }
              }

              else
              {
                TypeID = CFDateGetTypeID();
              }
            }

            else
            {
              TypeID = CFDataGetTypeID();
            }
          }

          else
          {
            TypeID = CFBooleanGetTypeID();
          }
        }

        else
        {
          TypeID = CFArrayGetTypeID();
        }

        if (CFGetTypeID(cf) == TypeID)
        {
          goto LABEL_60;
        }
      }

      else if (!strcmp(v10 + 1, "data*"))
      {
        v72 = CFGetTypeID(cf);
        if (v72 == CFDataGetTypeID())
        {
          v73 = v81;
          v81 += 2;
          v74 = *v73;
          if (CFDataGetLength(cf) == v74)
          {
            if (a2)
            {
              *a2 = CFDataGetBytePtr(cf);
            }
          }
        }
      }

      else
      {
        v64 = v38 - 48;
        if ((v38 - 48) > 9)
        {
          if (v38)
          {
            return;
          }

          v65 = 0;
        }

        else
        {
          v65 = 0;
          v66 = v10 + 2;
          do
          {
            v65 = 10 * v65 + v64;
            v68 = *v66++;
            v67 = v68;
            v64 = v68 - 48;
          }

          while ((v68 - 48) < 0xA);
          if (v67 || (v65 & 0x8000000000000000) != 0)
          {
            return;
          }
        }

        v75 = CFGetTypeID(cf);
        if (v75 == CFDataGetTypeID() && CFDataGetLength(cf) == v65 && a2)
        {
          v76 = CFDataGetBytePtr(cf);
          memcpy(a2, v76, v65);
        }
      }
    }
  }
}

uint64_t sub_23EB70D14(const __CFString *a1, _BOOL8 *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == CFNumberGetTypeID())
  {
    if (!CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr))
    {
      return 4294960540;
    }
  }

  else
  {
    v5 = CFGetTypeID(a1);
    if (v5 == CFStringGetTypeID())
    {
      if (!CFStringGetCString(a1, buffer, 64, 0x8000100u))
      {
        return 4294960545;
      }

      if (sub_23EB7F3B0(buffer, 0xFFFFFFFFFFFFFFFFLL, "%lli", &valuePtr) != 1)
      {
        return 4294960540;
      }
    }

    else
    {
      v6 = CFGetTypeID(a1);
      if (v6 != CFBooleanGetTypeID())
      {
        return 4294960540;
      }

      valuePtr = *MEMORY[0x277CBED28] == a1;
    }
  }

  result = 0;
  if (a2)
  {
    *a2 = valuePtr;
  }

  return result;
}

uint64_t sub_23EB70E50(const char *a1, CFMutableDataRef *a2)
{
  v3 = fopen(a1, "rb");
  if (v3)
  {
    v4 = v3;
    v5 = sub_23EB70EE0(v3, a2);
    fclose(v4);
    return v5;
  }

  else if (*__error())
  {
    result = *__error();
    if (!result)
    {

      return sub_23EB70EE0(0, a2);
    }
  }

  else
  {
    return 4294960596;
  }

  return result;
}

uint64_t sub_23EB70EE0(FILE *a1, CFMutableDataRef *a2)
{
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    return 4294960568;
  }

  v5 = Mutable;
  v6 = malloc_type_malloc(0x20000uLL, 0x100004077774924uLL);
  if (!v6)
  {
    v10 = 4294960568;
LABEL_15:
    CFRelease(v5);
    return v10;
  }

  v7 = v6;
  v8 = fread(v6, 1uLL, 0x20000uLL, a1);
  if (v8)
  {
    v9 = v8;
    do
    {
      CFDataAppendBytes(v5, v7, v9);
      v9 = fread(v7, 1uLL, 0x20000uLL, a1);
    }

    while (v9);
  }

  if (feof(a1))
  {
    goto LABEL_7;
  }

  if (!*__error())
  {
    v10 = 4294960596;
    goto LABEL_14;
  }

  v10 = *__error();
  if (v10)
  {
LABEL_14:
    free(v7);
    goto LABEL_15;
  }

LABEL_7:
  *a2 = v5;
  free(v7);
  return 0;
}

uint64_t sub_23EB70FE4(const __CFString *a1, const char **a2, UInt8 **a3)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v7 = CStringPtr;
    v8 = 0;
  }

  else
  {
    Length = CFStringGetLength(a1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    usedBufLen = MaximumSizeForEncoding;
    v12 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (!v12)
    {
      return 4294960568;
    }

    v8 = v12;
    v14.location = 0;
    v14.length = Length;
    if (CFStringGetBytes(a1, v14, 0x8000100u, 0, 0, v12, MaximumSizeForEncoding, &usedBufLen) != Length)
    {
      free(v8);
      return 4294960596;
    }

    v8[usedBufLen] = 0;
    v7 = v8;
  }

  result = 0;
  *a2 = v7;
  *a3 = v8;
  return result;
}

uint64_t sub_23EB710E8(const __CFString *a1, char **a2)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = strdup(CStringPtr);
    if (!v5)
    {
      return 4294960568;
    }

LABEL_7:
    result = 0;
    *a2 = v5;
    return result;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = MaximumSizeForEncoding;
  v8 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  if (!v8)
  {
    return 4294960568;
  }

  v5 = v8;
  v11.location = 0;
  v11.length = Length;
  if (CFStringGetBytes(a1, v11, 0x8000100u, 0, 0, v8, MaximumSizeForEncoding, &usedBufLen) == Length)
  {
    v5[usedBufLen] = 0;
    goto LABEL_7;
  }

  free(v5);
  return 4294960596;
}

CFNumberRef sub_23EB711E4(uint64_t a1)
{
  valuePtr = a1;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  if (a1 == a1)
  {
    v6 = a1;
    p_valuePtr = &v6;
    v2 = kCFNumberSInt8Type;
  }

  else
  {
    p_valuePtr = &valuePtr;
    v2 = kCFNumberSInt64Type;
  }

  return CFNumberCreate(0, v2, p_valuePtr);
}

const char *sub_23EB71268(const __CFString *cf, char *__dst, size_t __size)
{
  if (!__size)
  {
    return "";
  }

  if (!cf)
  {
    v7 = "";
LABEL_7:
    strlcpy(__dst, v7, __size);
    return __dst;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFStringGetTypeID())
  {
    CFStringGetCString(cf, __dst, __size, 0x8000100u);
    return __dst;
  }

  if (v6 == CFNumberGetTypeID())
  {
    if (CFNumberIsFloatType(cf))
    {
      valuePtr = 0;
      CFNumberGetValue(cf, kCFNumberDoubleType, &valuePtr);
      snprintf(__dst, __size, "%f");
    }

    else
    {
      *&v24[4] = 0;
      CFNumberGetValue(cf, kCFNumberSInt64Type, &v24[4]);
      snprintf(__dst, __size, "%lld");
    }

    return __dst;
  }

  if (*MEMORY[0x277CBED28] == cf)
  {
    v7 = "true";
    goto LABEL_7;
  }

  if (*MEMORY[0x277CBED10] == cf)
  {
    v7 = "false";
    goto LABEL_7;
  }

  if (v6 == CFDataGetTypeID())
  {
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    v10 = __dst;
    if (Length >= 1)
    {
      v10 = __dst;
      if ((__size - 1) >= 2)
      {
        v11 = __size - 3;
        v12 = BytePtr + 1;
        v13 = __dst;
        do
        {
          v14 = *(v12 - 1);
          *v13 = a0123456789abcd[v14 >> 4];
          v15 = a0123456789abcd[v14 & 0xF];
          v10 = v13 + 2;
          v13[1] = v15;
          if (v12 >= &BytePtr[Length])
          {
            break;
          }

          ++v12;
          v13 += 2;
          v16 = v11 <= 1;
          v11 -= 2;
        }

        while (!v16);
      }
    }

    *v10 = 0;
  }

  else if (v6 == CFDateGetTypeID())
  {
    *v24 = 0;
    v23 = 0;
    v22 = 0;
    Default = CFAllocatorGetDefault();
    v18 = CFCalendarCreateWithIdentifier(Default, *MEMORY[0x277CBEE80]);
    if (v18 && (v19 = v18, MEMORY[0x23EF1E1F0](cf), CFCalendarDecomposeAbsoluteTime(v19, v20, "yMdHms", &v24[4], v24, &v23 + 4, &v23, &v22 + 4, &v22), modf(v22, &valuePtr), CFRelease(v19), v23))
    {
      if (v23 > 12)
      {
        LODWORD(v23) = v23 - 12;
      }
    }

    else
    {
      LODWORD(v23) = 12;
    }

    snprintf(__dst, __size, "%04d-%02d-%02d %02d:%02d:%02d.%06d %s", *&v24[4], *v24);
  }

  else if (v6 == CFDictionaryGetTypeID())
  {
    snprintf(__dst, __size, "{}");
  }

  else if (v6 == CFArrayGetTypeID())
  {
    snprintf(__dst, __size, "[]");
  }

  else
  {
    snprintf(__dst, __size, "");
  }

  return __dst;
}

uint64_t sub_23EB71598(void *cf, const UInt8 *a2, const void *a3)
{
  v6 = -1;
  v7 = MEMORY[0x277CBF138];
  v8 = MEMORY[0x277CBF150];
  while (1)
  {
      ;
    }

    if (!a2[i])
    {
      break;
    }

    v10 = &a2[i + 1];
    if (*a2 == 91)
    {
      LODWORD(idx) = 0;
      if (sub_23EB7F3B0(a2 + 1, i - 1, "%i]", &idx) != 1)
      {
        return 4294960579;
      }

      v11 = CFGetTypeID(cf);
      if (v11 != CFArrayGetTypeID())
      {
        return 4294960540;
      }

      v12 = idx;
      if ((idx & 0x80000000) != 0 || CFArrayGetCount(cf) <= v12)
      {
        return 4294960586;
      }

      cf = CFArrayGetValueAtIndex(cf, idx);
      v6 = idx;
      a2 = v10;
    }

    else
    {
      v13 = CFGetTypeID(cf);
      if (v13 != CFDictionaryGetTypeID())
      {
        return 4294960540;
      }

      v14 = CFStringCreateWithBytes(0, a2, i, 0x8000100u, 0);
      if (!v14)
      {
        return 4294960596;
      }

      v15 = v14;
      Value = CFDictionaryGetValue(cf, v14);
      if (!Value)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, v7, v8);
        if (!Mutable)
        {
          CFRelease(v15);
          return 4294960568;
        }

        Value = Mutable;
        CFDictionarySetValue(cf, v15, Mutable);
        CFRelease(Value);
      }

      CFRelease(v15);
      v6 = -1;
      a2 = v10;
      cf = Value;
    }
  }

  v18 = CFGetTypeID(cf);
  if (v18 == CFDictionaryGetTypeID())
  {
    if (i)
    {
      v19 = CFStringCreateWithBytes(0, a2, i, 0x8000100u, 0);
      if (!v19)
      {
        return 4294960596;
      }

      v20 = v19;
      if (a3)
      {
        CFDictionarySetValue(cf, v19, a3);
      }

      else
      {
        CFDictionaryRemoveValue(cf, v19);
      }

      CFRelease(v20);
      return 0;
    }

    return 4294960579;
  }

  v22 = CFGetTypeID(cf);
  if (v22 == CFArrayGetTypeID())
  {
    if (!i)
    {
      if (a3)
      {
        CFArrayAppendValue(cf, a3);
      }

      else
      {
        if ((v6 & 0x80000000) != 0)
        {
          return 4294960579;
        }

        CFArrayRemoveValueAtIndex(cf, v6);
      }

      return 0;
    }

    return 4294960579;
  }

  return 4294960540;
}

void sub_23EB7181C(void *key, void *value, uint64_t a3)
{
  if (!*(a3 + 8))
  {
    CFDictionarySetValue(*a3, key, value);
    *(a3 + 8) = 0;
  }
}

char *sub_23EB71858(const __CFDictionary *a1, const void *a2, char *a3, size_t a4, int *a5)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    v9 = -6727;
    if (!a5)
    {
      return a3;
    }

    goto LABEL_3;
  }

  a3 = sub_23EB71268(Value, a3, a4);
  v9 = 0;
  if (a5)
  {
LABEL_3:
    *a5 = v9;
  }

  return a3;
}

uint64_t sub_23EB718BC(__CFDictionary *a1, const void *a2, char *cStr, CFIndex numBytes)
{
  if (numBytes == -1)
  {
    v6 = CFStringCreateWithCString(0, cStr, 0x8000100u);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = CFStringCreateWithBytes(0, cStr, numBytes, 0x8000100u, 0);
    if (v6)
    {
LABEL_3:
      v7 = v6;
      CFDictionarySetValue(a1, a2, v6);
      CFRelease(v7);
      return 0;
    }
  }

  return 4294960596;
}

uint64_t sub_23EB71950(__CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  v6 = CFDataCreate(0, bytes, length);
  if (!v6)
  {
    return 4294960596;
  }

  v7 = v6;
  CFDictionarySetValue(a1, a2, v6);
  CFRelease(v7);
  return 0;
}

uint64_t sub_23EB719B8(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  v5 = sub_23EB711E4(a3);
  if (!v5)
  {
    return 4294960568;
  }

  v6 = v5;
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v6);
  return 0;
}

uint64_t sub_23EB71A18(const void *a1, const void ***a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294960540;
  }

  Count = CFDictionaryGetCount(a1);
  v6 = malloc_type_malloc(16 * Count + 16, 0xC0040B8AA526DuLL);
  if (!v6)
  {
    return 4294960568;
  }

  v7 = v6;
  *v6 = 0;
  v6[1] = Count;
  CFDictionaryGetKeysAndValues(a1, v6 + 2, &v6[Count + 2]);
  result = 0;
  *a2 = v7;
  return result;
}

void sub_23EB71AB4(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_23EB71AC0(uint64_t *a1, void *a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 >= v4)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = a1[v3 + 2];
  }

  if (a3)
  {
    *a3 = a1[v4 + 2 + v3];
  }

  *a1 = v3 + 1;
  return 1;
}

uint64_t sub_23EB71B08(const Bytef *a1, uLong a2, void *a3, uLongf *a4)
{
  v8 = a2 + a2 / 0xA;
  destLen = v8 + 12;
  v9 = malloc_type_malloc(v8 + 20, 0x100004077774924uLL);
  if (!v9)
  {
    return 4294960568;
  }

  v10 = v9;
  *v9 = 2053924451;
  v9[4] = BYTE3(a2);
  v9[5] = BYTE2(a2);
  v9[6] = BYTE1(a2);
  v9[7] = a2;
  v11 = compress2(v9 + 8, &destLen, a1, a2, 9);
  if (v11)
  {
    v12 = v11;
LABEL_13:
    free(v10);
    return v12;
  }

  v14 = destLen + 8;
  destLen += 8;
  if (a3)
  {
    v15 = malloc_type_realloc(v10, v14, 0x100004077774924uLL);
    if (!v15)
    {
      v12 = 4294960553;
      goto LABEL_13;
    }

    v10 = 0;
    *a3 = v15;
  }

  if (a4)
  {
    *a4 = destLen;
  }

  v12 = 0;
  result = 0;
  if (v10)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_23EB71C30(uint64_t a1, unint64_t a2, void *a3, uLongf *a4)
{
  v4 = a2 - 8;
  if (a2 < 8)
  {
    return 4294960554;
  }

  if (*a1 != 99 && *(a1 + 1) != 102 && *(a1 + 2) != 108 && *(a1 + 3) != 122)
  {
    return 4294960548;
  }

  v8 = (*(a1 + 4) << 24) | (*(a1 + 5) << 16) | (*(a1 + 6) << 8);
  v9 = *(a1 + 7);
  destLen = v8 | v9;
  if (v8 | v9)
  {
    v10 = malloc_type_malloc(v8 | v9, 0xF3D83160uLL);
    if (v10)
    {
      v11 = v10;
      v12 = uncompress(v10, &destLen, (a1 + 8), v4);
      if (v12)
      {
LABEL_17:
        free(v11);
        return v12;
      }

      goto LABEL_12;
    }

    return 4294960568;
  }

  v11 = malloc_type_malloc(1uLL, 0x7AD8C323uLL);
  if (!v11)
  {
    return 4294960568;
  }

LABEL_12:
  if (a3)
  {
    *a3 = v11;
    v11 = 0;
  }

  if (a4)
  {
    *a4 = destLen;
  }

  v12 = 0;
  result = 0;
  if (v11)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_23EB71D64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = a3;
  *(result + 48) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_23EB71D7C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      free(v2);
    }
  }

  v3 = *(a1 + 8);
  *(a1 + 24) = *a1;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
}

uint64_t sub_23EB71DC4(uint64_t a1, char *__s, size_t a3)
{
  v3 = a3;
  if (a3 == -1)
  {
    v3 = strlen(__s);
  }

  __dst = 0;
  v6 = sub_23EB71E54(a1, *(a1 + 32) + v3, &__dst);
  v7 = v6;
  if (v6)
  {
    if (!*(a1 + 52))
    {
      *(a1 + 52) = v6;
    }
  }

  else
  {
    memcpy(__dst, __s, v3);
  }

  return v7;
}

uint64_t sub_23EB71E54(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  result = *(a1 + 52);
  if (!result)
  {
    v7 = *(a1 + 32);
    if (v7 >= a2)
    {
      *(a1 + 32) = a2;
      if (a3)
      {
        result = 0;
        v8 = *(a1 + 24);
LABEL_26:
        *a3 = v8;
        return result;
      }

      return 0;
    }

    if (*(a1 + 40) >= a2)
    {
LABEL_24:
      *(a1 + 32) = a2;
      if (a3)
      {
        result = 0;
        v8 = *(a1 + 24) + v7;
        goto LABEL_26;
      }

      return 0;
    }

    if (*(a1 + 16) < a2)
    {
      result = 4294960545;
LABEL_6:
      *(a1 + 52) = result;
      return result;
    }

    v9 = 4096;
    if (a2 >> 17)
    {
      v10 = (a2 + 0x1FFFF) & 0xFFFFFFFFFFFE0000;
    }

    else
    {
      v10 = (a2 + 0x3FFF) & 0x3C000;
    }

    if (a2 >= 0x1000)
    {
      v9 = v10;
    }

    if (a2 >= 0x100)
    {
      v11 = v9;
    }

    else
    {
      v11 = 256;
    }

    v12 = malloc_type_malloc(v11, 0x100004077774924uLL);
    if (v12)
    {
      v13 = v12;
      v14 = *(a1 + 32);
      if (v14)
      {
        memcpy(v12, *(a1 + 24), v14);
      }

      if (*(a1 + 48))
      {
        v15 = *(a1 + 24);
        if (v15)
        {
          free(v15);
        }
      }

      *(a1 + 40) = v11;
      *(a1 + 24) = v13;
      *(a1 + 48) = 1;
      goto LABEL_24;
    }

    result = 4294960568;
    if (!*(a1 + 52))
    {
      goto LABEL_6;
    }
  }

  return result;
}

char *sub_23EB71F9C(uint64_t __errnum, char *a2, uint64_t a3)
{
  if (__errnum)
  {
    v6 = &off_278C66EC8;
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      v8 = *(v6 - 2);
      v6 += 2;
      if (v8 == __errnum)
      {
        goto LABEL_16;
      }
    }

    if ((byte_27E3833D8 & 1) == 0)
    {
      v9 = dlopen("/System/Library/Frameworks/CoreServices.framework/CoreServices", 5);
      if (v9)
      {
        off_27E3833E0 = dlsym(v9, "GetMacOSStatusErrorString");
      }

      byte_27E3833D8 = 1;
    }

    if (!off_27E3833E0 || (v7 = (off_27E3833E0)(__errnum)) == 0 || !*v7)
    {
      v7 = strerror(__errnum);
      if (!v7)
      {
        v7 = "<< NO ERROR STRING >>";
      }
    }
  }

  else
  {
    v7 = "noErr";
  }

LABEL_16:
  if (!a2 || !a3)
  {
    return v7;
  }

  v10 = a3 - 1;
  v11 = a2;
  if (a3 - 1 >= 1)
  {
    v11 = a2;
    do
    {
      v12 = *v7;
      if (!*v7)
      {
        break;
      }

      ++v7;
      *v11++ = v12;
      --v10;
    }

    while (v10 > 0);
  }

  *v11 = 0;
  return a2;
}

uint64_t sub_23EB720EC(uint64_t a1, uint64_t a2, char *a3, int *a4)
{
  v11 = 0;
  v12 = 0;
  v7 = sub_23EB72150;
  v8 = a1;
  v5 = a2 - 1;
  if (!a2)
  {
    v5 = 0;
  }

  v9 = 0;
  v10 = v5;
  result = sub_23EB721D8(&v7, a3, a4);
  if (a2)
  {
    *(v8 + v9) = 0;
  }

  return result;
}

size_t sub_23EB72150(_BYTE *__src, size_t __n, void *a3)
{
  v4 = __n;
  v5 = a3[2];
  v6 = a3[3] - v5;
  if (v6 >= __n)
  {
    if (!__n)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v6)
  {
    while ((__src[v6] & 0xC0) == 0x80)
    {
      if (!--v6)
      {
        goto LABEL_5;
      }
    }

    v4 = v6;
LABEL_9:
    memcpy((a3[1] + v5), __src, v4);
    v5 = a3[2];
    goto LABEL_10;
  }

LABEL_5:
  v4 = 0;
LABEL_10:
  a3[2] = v5 + v4;
  return v4;
}

uint64_t sub_23EB721D8(uint64_t (**a1)(char *), char *a2, int *a3)
{
  v4 = a1;
  v5 = 0;
  v277 = *MEMORY[0x277D85DE8];
  v268 = a3;
  v266 = 0u;
  v267 = 0u;
  v262 = *MEMORY[0x277CBED28];
  while (2)
  {
    v6 = 0;
    for (i = 0; ; ++i)
    {
      v8 = a2[i];
      if (!a2[i] || v8 == 37)
      {
        break;
      }

      v6 += 0x100000000;
    }

    if (i)
    {
      v9 = v6 >> 32;
      v10 = (*v4)(a2, v6 >> 32, v4);
      if ((v10 & 0x80000000) != 0)
      {
        return v10;
      }

      v5 += v9;
    }

    if (!v8)
    {
      return v5;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v266 = 0u;
    v267 = 0u;
    v15 = &a2[i];
    while (2)
    {
      while (2)
      {
        for (j = v15 + 2; ; ++j)
        {
          LODWORD(v17) = *(j - 1);
          if (v17 <= 0x2A)
          {
            break;
          }

          switch(v17)
          {
            case '+':
              v14 |= 2u;
              break;
            case '-':
              v14 |= 1u;
              break;
            case '0':
              v14 |= 4u;
              break;
            default:
              goto LABEL_31;
          }

          LOBYTE(v266) = v14;
        }

        if (*(j - 1) <= 0x26u)
        {
          if (v17 == 32)
          {
            v11 = 32;
            BYTE4(v266) = 32;
            v15 = j - 1;
            continue;
          }

          if (v17 == 35)
          {
            BYTE3(v266) = ++v12;
            v15 = j - 1;
            continue;
          }

LABEL_31:
          LODWORD(v17) = v17;
          --j;
          if ((v17 - 48) > 9)
          {
            v19 = 0;
          }

          else
          {
            v19 = 0;
            do
            {
              v19 = v17 + 10 * v19 - 48;
              DWORD2(v266) = v19;
              v20 = *++j;
              LODWORD(v17) = v20;
            }

            while ((v20 - 48) < 0xA);
          }

          goto LABEL_36;
        }

        break;
      }

      if (v17 == 39)
      {
        BYTE8(v267) = ++v13;
        v15 = j - 1;
        continue;
      }

      break;
    }

    if (v17 != 42)
    {
      goto LABEL_31;
    }

    v18 = v268;
    v268 += 2;
    v19 = *v18;
    if (*v18 < 0)
    {
      v19 = -v19;
      LOBYTE(v14) = v14 | 1;
      LOBYTE(v266) = v14;
    }

    DWORD2(v266) = v19;
    LODWORD(v17) = *j;
LABEL_36:
    if (v17 == 46)
    {
      v21 = j + 1;
      LODWORD(v17) = j[1];
      if (v17 == 42)
      {
        v17 = v268;
        v268 += 2;
        v22 = *v17;
        *&v267 = v22;
        LODWORD(v17) = j[2];
        v21 = j + 2;
      }

      else if ((v17 - 48) > 9)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        do
        {
          v22 = (v17 - 48) + 10 * v22;
          *&v267 = v22;
          v23 = *++v21;
          LODWORD(v17) = v23;
        }

        while ((v23 - 48) < 0xA);
      }

      LOBYTE(v14) = v14 | 8;
      LOBYTE(v266) = v14;
      j = v21;
      if ((v14 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v22 = 0;
      if ((v14 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    LOBYTE(v14) = v14 & 0xFB;
    LOBYTE(v266) = v14;
LABEL_48:
    v24 = 0;
    v25 = 0;
    for (k = j + 1; ; ++k)
    {
      HIDWORD(v28) = v17 - 104;
      LODWORD(v28) = v17 - 104;
      v27 = v28 >> 1;
      if (v27 > 1)
      {
        break;
      }

      if (v27)
      {
        if (v27 != 1)
        {
          goto LABEL_65;
        }

LABEL_57:
        if (!(v24 | v25))
        {
          v24 = 0;
          v25 = 1;
          BYTE2(v266) = 1;
          LODWORD(v17) = *k;
          goto LABEL_59;
        }

        return 0xFFFFFFFFLL;
      }

      BYTE1(v266) = ++v24;
LABEL_54:
      v29 = *k;
      LODWORD(v17) = v29;
    }

    if (v27 == 2)
    {
      BYTE2(v266) = ++v25;
      goto LABEL_54;
    }

    if (v27 == 6 || v27 == 9)
    {
      goto LABEL_57;
    }

LABEL_65:
    v35 = 0xFFFFFFFFLL;
    if (v24 > 2 || v25 > 2)
    {
      return v35;
    }

    --k;
    if (v24 && v25)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_59:
    if (v17 <= 71)
    {
      if (v17 == 37)
      {
        __str = 37;
LABEL_262:
        LODWORD(v35) = 1;
        goto LABEL_412;
      }

      if (v17 != 64)
      {
        if (v17 == 67)
        {
          v36 = v268;
          v268 += 2;
          v37 = *v36;
          if (v13)
          {
            __str = 39;
            v38 = 1;
          }

          else
          {
            v38 = 0;
          }

          v128 = HIBYTE(v37);
          p_str = &__str;
          v129 = &v271[v38 - 1];
          if (v37 >> 24 < 32 || v128 == 127)
          {
            LOBYTE(v128) = 94;
          }

          *v129 = v128;
          v131 = BYTE2(v37);
          if (BYTE2(v37) - 127 < 0xFFFFFFA1)
          {
            v131 = 94;
          }

          v129[1] = v131;
          v132 = BYTE1(v37);
          if (BYTE1(v37) - 127 < 0xFFFFFFA1)
          {
            v132 = 94;
          }

          v129[2] = v132;
          if ((v37 - 32) >= 0x5F)
          {
            LOBYTE(v37) = 94;
          }

          v129[3] = v37;
          if (v13)
          {
            LODWORD(v35) = v38 + 5;
            v271[(v38 | 4) - 1] = 39;
          }

          else
          {
            LODWORD(v35) = v38 | 4;
          }

          goto LABEL_413;
        }

LABEL_162:
        p_str = &__str;
        v59 = sub_23EB720C0(&__str, 300, "<<UNKNOWN FORMAT CONVERSION CODE %%%c>>");
        goto LABEL_345;
      }

      v91 = v268;
      v268 += 2;
      v92 = *v91;
      if (v92)
      {
        v93 = v92;
      }

      else
      {
        v93 = @"<<NULL>>";
      }

      if (v13)
      {
        if ((v14 & 8) != 0)
        {
          if (v22 < 2)
          {
            *&v267 = 0;
            BYTE8(v267) = 0;
            goto LABEL_420;
          }

          *&v267 = v22 - 2;
        }

        if (v13 == 2)
        {
          v94 = 8738;
        }

        else
        {
          if (v13 != 1)
          {
            goto LABEL_420;
          }

          v94 = 10023;
        }

        *(&v267 + 9) = v94;
      }

LABEL_420:
      v158 = CFGetTypeID(v93);
      if (v158 == CFBooleanGetTypeID())
      {
        if (v262 == v93)
        {
          v159 = "true";
        }

        else
        {
          v159 = "false";
        }

        if (v262 == v93)
        {
          v160 = 4;
        }

        else
        {
          v160 = 5;
        }
      }

      else
      {
        if (v158 != CFNumberGetTypeID())
        {
          if (v158 == CFStringGetTypeID())
          {
            v161 = v5;
            Length = CFStringGetLength(v93);
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
            if (MaximumSizeForEncoding)
            {
              v164 = MaximumSizeForEncoding;
              *valuePtr = 0;
              v165 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
              if (v165)
              {
                v166 = v165;
                *valuePtr = 0;
                v278.location = 0;
                v278.length = Length;
                CFStringGetBytes(v93, v278, 0x8000100u, 0x5Eu, 0, v165, v164, valuePtr);
                v167 = *valuePtr;
                if ((v266 & 8) != 0)
                {
                  v5 = v161;
                  if (*valuePtr > v267)
                  {
                    v167 = v267;
                    *valuePtr = v267;
                    if (v267 >= 1)
                    {
                      while ((v166[v167] & 0xC0) == 0x80)
                      {
                        *valuePtr = v167 - 1;
                        v149 = v167-- < 2;
                        if (v149)
                        {
                          v167 = 0;
                          break;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v5 = v161;
                }

                v35 = sub_23EB75A1C(v4, &v266, v166, v167);
                free(v166);
                goto LABEL_431;
              }

              v35 = 4294960568;
            }

            else
            {
              v35 = sub_23EB75A1C(v4, &v266, "", 0);
            }

            v5 = v161;
          }

          else
          {
            v275 = 0;
            v276 = 0;
            *valuePtr = v4;
            v273 = &v266;
            v274 = DWORD2(v266);
            v35 = sub_23EB75B94(valuePtr, v93, 1, 0);
            if ((v35 & 0x80000000) == 0 && (v158 == CFArrayGetTypeID() || v158 == CFDictionaryGetTypeID()))
            {
              v179 = (*v4)("\n", 1, v4);
              if (v179 <= 0)
              {
                v180 = 0;
              }

              else
              {
                v180 = v35;
              }

              v35 = (v180 + v179);
            }
          }

LABEL_431:
          if ((v35 & 0x80000000) != 0)
          {
            return v35;
          }

          v5 += v35 & ~(v35 >> 31);
          goto LABEL_416;
        }

        *valuePtr = 0;
        if (!CFNumberGetValue(v93, kCFNumberSInt64Type, valuePtr))
        {
          v35 = 4294960559;
          goto LABEL_431;
        }

        v160 = sub_23EB720C0(&__str, 300, "%lld", *valuePtr);
        v159 = &__str;
      }

      v35 = sub_23EB75A1C(v4, &v266, v159, v160);
      goto LABEL_431;
    }

    v30 = 0;
    v31 = 10;
    v32 = "0123456789ABCDEF";
    switch(v17)
    {
      case 'H':
        v259 = v5;
        v66 = v268;
        v268 += 2;
        v67 = *v66;
        v268 = v66 + 4;
        v68 = v66[2];
        v69 = v68;
        v268 = v66 + 6;
        v70 = v66[4];
        if (!v67 && v68)
        {
          v4 = a1;
          v35 = sub_23EB759F0(a1, "<<NULL %zu/%zu>>", v68, v70);
          if ((v35 & 0x80000000) == 0)
          {
            v5 = v259;
            goto LABEL_415;
          }

          return v35;
        }

        if (v68 == -1)
        {
          v69 = strlen(v67);
        }

        if (v22 > 1)
        {
          if (v22 == 2)
          {
            if (!v69)
            {
              v183 = sub_23EB759F0(a1, "(0 bytes)\n");
              goto LABEL_630;
            }

            if (v69 > 0x10)
            {
              v10 = sub_23EB759F0(a1, "\n");
              if ((v10 & 0x80000000) != 0)
              {
                return v10;
              }

              v108 = DWORD2(v266);
              v107 = a1;
            }

            else
            {
              v107 = a1;
              v108 = 0;
            }

LABEL_629:
            v183 = sub_23EB755D8(v107, v108, v67, v69, v70);
            goto LABEL_630;
          }

          if (v22 != 3)
          {
            goto LABEL_467;
          }

          if (v69 >= v70)
          {
            v133 = v70;
          }

          else
          {
            v133 = v69;
          }

          if (v133 >= 1)
          {
            v134 = 0;
            v35 = 0;
            v135 = &v67[v133];
            v136 = v259;
            do
            {
              if (v134 == 64)
              {
                v137 = (*a1)(valuePtr);
                if ((v137 & 0x80000000) != 0)
                {
                  goto LABEL_626;
                }

                v134 = 0;
                v35 = (v137 + v35);
              }

              v138 = &valuePtr[v134];
              v139 = *v67++;
              *v138 = a0123456789abcd[v139 >> 4];
              v134 += 2;
              v138[1] = a0123456789abcd[v139 & 0xF];
            }

            while (v67 < v135);
            if (v134)
            {
              v140 = (*a1)(valuePtr);
              if (v140 >= 0)
              {
                v141 = v35;
              }

              else
              {
                v141 = 0;
              }

LABEL_483:
              v35 = (v141 + v140);
            }

            goto LABEL_632;
          }
        }

        else
        {
          if (v22)
          {
            if (v22 == 1)
            {
              v107 = a1;
              v108 = v19;
              goto LABEL_629;
            }

LABEL_467:
            v183 = sub_23EB759F0(a1, "<< BAD %%H PRECISION >>");
LABEL_630:
            v35 = v183;
LABEL_631:
            v136 = v259;
LABEL_632:
            if ((v35 & 0x80000000) != 0)
            {
              return v35;
            }

            v5 = v136 + v35;
            v4 = a1;
LABEL_416:
            a2 = k + 1;
            continue;
          }

          if (v69 >= v70)
          {
            v69 = v70;
          }

          if (v69)
          {
            v136 = v259;
            if (v12 == 2)
            {
              LODWORD(v35) = 0;
LABEL_473:
              v137 = (*a1)("|", 1);
LABEL_474:
              if ((v137 & 0x80000000) == 0)
              {
                v184 = v137 + v35;
                while (1)
                {
                  v186 = *v67++;
                  v185 = v186;
                  if ((v186 - 127) < 0xFFFFFFA1)
                  {
                    v185 = 94;
                  }

                  LOBYTE(v265.tv_sec) = v185;
                  v187 = (*a1)(&v265, 1);
                  v35 = v187;
                  if ((v187 & 0x80000000) != 0)
                  {
                    goto LABEL_632;
                  }

                  v184 += v187;
                  if (!--v69)
                  {
                    v140 = (*a1)("|", 1);
                    if (v140 >= 0)
                    {
                      v141 = v184;
                    }

                    else
                    {
                      v141 = 0;
                    }

                    goto LABEL_483;
                  }
                }
              }
            }

            else
            {
              v232 = 0;
              LODWORD(v35) = 0;
              while (1)
              {
                if (v232)
                {
                  valuePtr[0] = 32;
                  v233 = 1;
                }

                else
                {
                  v233 = 0;
                }

                v234 = v67[v232];
                v235 = &valuePtr[v233];
                *v235 = a0123456789abcd[v234 >> 4];
                v235[1] = a0123456789abcd[v234 & 0xF];
                v137 = (*a1)(valuePtr, v233 | 2);
                if ((v137 & 0x80000000) != 0)
                {
                  break;
                }

                v35 = (v137 + v35);
                if (v69 == ++v232)
                {
                  if (SBYTE3(v266) < 1)
                  {
                    goto LABEL_632;
                  }

                  if (v35 >= 1)
                  {
                    v137 = (*a1)(" |", 2);
                    goto LABEL_474;
                  }

                  goto LABEL_473;
                }
              }
            }

LABEL_626:
            v35 = v137;
            goto LABEL_632;
          }
        }

        v35 = 0;
        goto LABEL_631;
      case 'N':
        v265.tv_sec = 0;
        *&v265.tv_usec = 0;
        tv_sec = 0;
        gettimeofday(&v265, 0);
        tv_sec = v265.tv_sec;
        v60 = localtime(&tv_sec);
        strftime(valuePtr, 0x18uLL, "%Y-%m-%d %I:%M:%S", v60);
        strftime(v269, 8uLL, "%p", v60);
        p_str = &__str;
        v59 = sub_23EB720C0(&__str, 300, "%s.%06u %s");
        goto LABEL_345;
      case 'S':
        v71 = v268;
        v268 += 2;
        v72 = *v71;
        v73 = (v14 & 8) == 0;
        if (v72)
        {
          if (v13)
          {
            if ((v14 & 8) == 0)
            {
              v73 = 1;
LABEL_366:
              v146 = *v72;
              if (v146 == 255)
              {
                if (v72[1] == 254)
                {
                  v12 = 2;
                  goto LABEL_372;
                }
              }

              else if (v146 == 254 && v72[1] == 255)
              {
                v12 = 1;
LABEL_372:
                BYTE3(v266) = v12;
                v72 += 2;
                *&v267 = --v22;
                goto LABEL_374;
              }

LABEL_373:
              if (v12 - 1 >= 2)
              {
                if (v12)
                {
                  LODWORD(v35) = sub_23EB720C0(&__str, 300, "<< ERROR: %%S with too many #'s (%d) >>", v12);
                  v13 = BYTE8(v267);
LABEL_407:
                  if (v13 == 1)
                  {
                    v157 = 10023;
                  }

                  else
                  {
                    if (v13 != 2)
                    {
                      goto LABEL_412;
                    }

                    v157 = 8738;
                  }

                  *(&v267 + 9) = v157;
LABEL_412:
                  p_str = &__str;
                  goto LABEL_413;
                }

                v152 = v22 > 0 || v73;
                if (v152 == 1)
                {
                  v35 = 0;
                  v153 = 300;
                  do
                  {
                    v154 = *&v72[2 * v35];
                    if (*&v72[2 * v35])
                    {
                      v155 = v153 < 1;
                    }

                    else
                    {
                      v155 = 1;
                    }

                    if (v155)
                    {
                      break;
                    }

                    if ((v154 - 32) >= 0x5F)
                    {
                      LOBYTE(v154) = 94;
                    }

                    v271[v35++ - 1] = v154;
                    v156 = v35 < v22 || v73;
                    --v153;
                  }

                  while (v156);
                  goto LABEL_407;
                }

LABEL_405:
                LODWORD(v35) = 0;
                goto LABEL_407;
              }

LABEL_374:
              if (v73 || v22 >= 1)
              {
                v35 = 0;
                v147 = 300;
                v148 = 2 - v12;
                do
                {
                  if (*&v72[2 * v35])
                  {
                    v149 = v147 < 1;
                  }

                  else
                  {
                    v149 = 1;
                  }

                  if (v149)
                  {
                    break;
                  }

                  v150 = v72[v148];
                  if ((v150 - 32) >= 0x5F)
                  {
                    LOBYTE(v150) = 94;
                  }

                  v271[v35++ - 1] = v150;
                  v151 = v35 < v22 || v73;
                  --v147;
                  v148 += 2;
                }

                while (v151);
                goto LABEL_407;
              }

              goto LABEL_405;
            }

            v77 = v22 >= 2;
            v22 -= 2;
            if (!v77)
            {
              goto LABEL_363;
            }

            v73 = 0;
            *&v267 = v22;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          LODWORD(v35) = 8;
          if ((v14 & 8) == 0 || v22)
          {
            goto LABEL_164;
          }

          if (v13)
          {
LABEL_363:
            v73 = 0;
            v13 = 0;
            v22 = 0;
            *&v267 = 0;
            BYTE8(v267) = 0;
            goto LABEL_364;
          }

          v73 = 0;
          v13 = 0;
          v22 = 0;
        }

LABEL_364:
        if (!v73 && !v22)
        {
          goto LABEL_373;
        }

        goto LABEL_366;
      case 'U':
        v61 = v268;
        v268 += 2;
        v62 = *v61;
        if (!v62)
        {
          goto LABEL_163;
        }

        if (v12)
        {
          v63 = *v62;
          v64 = v62[1];
        }

        else
        {
          v63 = v62[3];
          v64 = v62[2];
        }

        p_str = &__str;
        v59 = sub_23EB720C0(&__str, 300, "%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-%02x%02x%02x%02x%02x%02x", v63, v64);
        goto LABEL_345;
      case 'V':
        v78 = v268;
        v268 += 2;
        v79 = *v78;
        v268 = v78 + 4;
        LODWORD(v35) = 8;
        if (!v79)
        {
          goto LABEL_164;
        }

        v80 = *(v78 + 1);
        if (!v80)
        {
          goto LABEL_164;
        }

        v81 = sub_23EB721D8(v4, v79, *v80);
        goto LABEL_414;
      case 'X':
        goto LABEL_129;
      case 'a':
        v84 = v268;
        v268 += 2;
        v85 = *v84;
        if (!*v84)
        {
LABEL_163:
          LODWORD(v35) = 8;
          goto LABEL_164;
        }

        if (v12 != 2)
        {
          if (v12 == 1)
          {
            if (v22 == 4)
            {
              goto LABEL_614;
            }

            goto LABEL_613;
          }

          v145 = __ROR8__(v22 - 4, 1);
          if (v145 <= 1)
          {
            if (!v145)
            {
LABEL_614:
              p_str = &__str;
              v59 = sub_23EB720C0(&__str, 300, "%u.%u.%u.%u");
              goto LABEL_345;
            }

            if (v145 != 1)
            {
              goto LABEL_613;
            }

            p_str = &__str;
            usedBufLenb = *v85;
            goto LABEL_612;
          }

          if (v145 == 2)
          {
            p_str = &__str;
            v59 = sub_23EB720C0(&__str, 300, "%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X", *v85, v85[1]);
            goto LABEL_345;
          }

          if (v145 != 6)
          {
LABEL_613:
            p_str = &__str;
            v59 = sub_23EB720C0(&__str, 300, "%s");
            goto LABEL_345;
          }

          p_str = &__str;
          v181 = 0;
          v182 = 0;
          goto LABEL_465;
        }

        v144 = v85[1];
        if (v144 > 0x11)
        {
          if (v144 == 18)
          {
            v231 = &v85[v85[5] + 8];
            if (v85[6] != 6)
            {
              p_str = &__str;
              v59 = sub_23EB720C0(&__str, 300, "<< AF_LINK %H >>", v231, v85[6]);
              goto LABEL_345;
            }

            p_str = &__str;
            usedBufLenb = *v231;
LABEL_612:
            v59 = sub_23EB720C0(&__str, 300, "%02X:%02X:%02X:%02X:%02X:%02X", usedBufLenb);
            goto LABEL_345;
          }

          if (v144 == 30)
          {
            v181 = *(v85 + 6);
            v182 = bswap32(*(v85 + 1)) >> 16;
            p_str = &__str;
            v85 += 8;
LABEL_465:
            sub_23EB766C8(v85, v181, v182, &__str);
            goto LABEL_466;
          }
        }

        else
        {
          if (!v85[1])
          {
            p_str = &__str;
            v59 = sub_23EB720C0(&__str, 300, "<< AF_UNSPEC >>", usedBufLen, v257);
            goto LABEL_345;
          }

          if (v144 == 2)
          {
            p_str = &__str;
            sub_23EB765A4(bswap32(*(v85 + 1)), bswap32(*(v85 + 1)) >> 16, &__str);
LABEL_466:
            LODWORD(v35) = strlen(&__str);
            goto LABEL_413;
          }
        }

        p_str = &__str;
        v59 = sub_23EB720C0(&__str, 300, "<< ERROR: %%##a used with unknown family: %d >>");
        goto LABEL_345;
      case 'b':
        v31 = 2;
        v30 = 1;
        goto LABEL_130;
      case 'c':
        v51 = v268;
        v268 += 2;
        v52 = *v51;
        if (!v13)
        {
          __str = v52;
          goto LABEL_262;
        }

        __str = 39;
        if ((v52 - 32) >= 0x5F)
        {
          v53 = 94;
        }

        else
        {
          v53 = v52;
        }

        v271[0] = v53;
        v271[1] = 39;
        LODWORD(v35) = 3;
        goto LABEL_412;
      case 'd':
      case 'i':
        if (v25 == 1 || v25 == 2)
        {
          v33 = v268;
          v268 += 2;
          v34 = *v33;
        }

        else
        {
          v95 = v268;
          v268 += 2;
          v34 = *v95;
        }

        if (v24 == 2)
        {
          v34 = v34;
          if ((v34 & 0x8000000000000000) == 0)
          {
LABEL_170:
            v31 = 10;
            if ((v14 & 2) == 0)
            {
              goto LABEL_175;
            }

            v90 = 43;
            v11 = 43;
LABEL_174:
            BYTE4(v266) = v90;
LABEL_175:
            v89 = v11 != 0;
            v32 = "0123456789ABCDEF";
            if ((v14 & 8) == 0)
            {
LABEL_176:
              if ((v14 & 4) != 0)
              {
                v96 = 2 * (v31 != 10);
                if (v31 == 8)
                {
                  v96 = 1;
                }

                if (!v12)
                {
                  v96 = 0;
                }

                v97 = v96 + v89;
                v77 = v19 >= v97;
                v98 = v19 - v97;
                if (v77)
                {
                  v22 = v98;
                }

                else
                {
                  v22 = 0;
                }

                *&v267 = v22;
              }

              if (!v22)
              {
                v22 = 1;
                goto LABEL_189;
              }
            }

LABEL_186:
            if (v22 < 0x12C)
            {
              goto LABEL_190;
            }

            v22 = 299;
LABEL_189:
            *&v267 = v22;
LABEL_190:
            if (v13)
            {
              v99 = 0;
              v100 = -1;
              v101 = 1;
              for (m = valuePtr; ; m = p_str)
              {
                if (HIDWORD(v34))
                {
                  v103 = v34 / v31;
                  *(m - 1) = v32[v34 % v31];
                  p_str = m - 1;
                  LODWORD(v35) = v99 + 1;
                }

                else
                {
                  v103 = v34 / v31;
                  *(m - 1) = v32[v34 % v31];
                  p_str = m - 1;
                  LODWORD(v35) = v99 + 1;
                  if (v31 > v34)
                  {
                    LODWORD(v22) = v267;
                    goto LABEL_211;
                  }
                }

                v34 = v103;
                if (BYTE8(v267) && !(v100 + 3 * (v101 / 3)))
                {
                  *(m - 2) = 44;
                  LODWORD(v35) = v99 + 2;
                  p_str = m - 2;
                }

                --v100;
                ++v101;
                v99 = v35;
              }
            }

            LODWORD(v35) = 0;
            if (v34)
            {
              p_str = valuePtr;
              do
              {
                if (HIDWORD(v34))
                {
                  v104 = v34 % v31;
                }

                else
                {
                  v104 = v34 % v31;
                }

                if (HIDWORD(v34))
                {
                  v34 /= v31;
                }

                else
                {
                  v34 = v34 / v31;
                }

                *--p_str = v32[v104];
                LODWORD(v35) = v35 + 1;
              }

              while (v34);
            }

            else
            {
              p_str = valuePtr;
            }

LABEL_211:
            if (v35 < v22)
            {
              do
              {
                *--p_str = 48;
                LODWORD(v35) = v35 + 1;
              }

              while (v35 < v267);
            }

            if (!BYTE3(v266))
            {
              goto LABEL_219;
            }

            if (v31 == 8)
            {
              v105 = 1;
              v106 = -1;
            }

            else
            {
              if (v31 == 10)
              {
                goto LABEL_219;
              }

              *(p_str - 1) = v17;
              v105 = 2;
              v106 = -2;
            }

            p_str += v106;
            *p_str = 48;
            LODWORD(v35) = v105 + v35;
LABEL_219:
            if (BYTE4(v266))
            {
              *--p_str = BYTE4(v266);
              LODWORD(v35) = v35 + 1;
            }

            goto LABEL_413;
          }
        }

        else
        {
          if (v24 == 1)
          {
            v34 = v34;
          }

          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_170;
          }
        }

        v34 = -v34;
        v31 = 10;
        v11 = 43;
        v90 = 45;
        goto LABEL_174;
      case 'f':
        v268 += 2;
        if ((v14 & 8) != 0)
        {
          v65 = snprintf(&__str, 0x12CuLL, "%*.*f");
        }

        else
        {
          v65 = snprintf(&__str, 0x12CuLL, "%*f");
        }

        v35 = v65;
        if ((v65 & 0x80000000) == 0)
        {
          goto LABEL_412;
        }

        return v35;
      case 'm':
        v48 = v268;
        v268 += 2;
        v49 = *v48;
        if (v12)
        {
          v50 = sub_23EB720C0(&__str, 300, "%lld/0x%llX ", v49, v49);
        }

        else
        {
          v50 = 0;
        }

        v113 = &__str;
        sub_23EB71F9C(v49, &v271[v50 - 1], 300 - v50);
        LODWORD(v35) = -1;
        do
        {
          v114 = *v113++;
          LODWORD(v35) = v35 + 1;
        }

        while (v114);
        goto LABEL_412;
      case 'n':
        v82 = v268;
        v268 += 2;
        v83 = *v82;
        if (v24 == 2)
        {
          *v83 = v5;
        }

        else if (v24 == 1)
        {
          *v83 = v5;
        }

        else if (v25 == 2 || v25 == 1)
        {
          *v83 = v5;
        }

        else
        {
          *v83 = v5;
        }

        goto LABEL_416;
      case 'o':
        v30 = 0;
        v31 = 8;
        goto LABEL_130;
      case 'p':
        v90 = 0;
        v11 = 0;
        v17 = v268;
        v268 += 2;
        v34 = *v17;
        v22 = 16;
        *&v267 = 16;
        LOBYTE(v14) = v14 | 8;
        LOBYTE(v266) = v14;
        v12 = 1;
        BYTE3(v266) = 1;
        LOBYTE(v17) = 120;
        v31 = 16;
        goto LABEL_174;
      case 's':
        v74 = v268;
        v268 += 2;
        p_str = *v74;
        if (*v74)
        {
          v75 = v14 & 8;
          v76 = v75 == 0;
          if (v13 && v75)
          {
            v77 = v22 >= 2;
            v22 -= 2;
            if (v77)
            {
              v76 = 0;
              *&v267 = v22;
              goto LABEL_505;
            }

            goto LABEL_305;
          }
        }

        else
        {
          LODWORD(v35) = 8;
          if ((v14 & 8) == 0 || v22)
          {
LABEL_164:
            p_str = "<<NULL>>";
            goto LABEL_413;
          }

          if (v13)
          {
LABEL_305:
            v76 = 0;
            LODWORD(v22) = 0;
            *&v267 = 0;
            BYTE8(v267) = 0;
            goto LABEL_505;
          }

          v76 = 0;
          LODWORD(v22) = 0;
        }

LABEL_505:
        if (v12 <= 1u)
        {
          if (!v12)
          {
            if (v76)
            {
              LODWORD(v35) = -1;
              v202 = p_str;
              do
              {
                v203 = *v202++;
                LODWORD(v35) = v35 + 1;
              }

              while (v203);
            }

            else
            {
              if (v22 < 1)
              {
                goto LABEL_645;
              }

              v209 = 0;
              while (p_str[v209])
              {
                if ((v22 & 0x7FFFFFFF) == ++v209)
                {
                  goto LABEL_639;
                }
              }

              LODWORD(v22) = v209;
LABEL_639:
              if (v22)
              {
                v236 = 0;
                v237 = v22;
                while (1)
                {
                  v238 = p_str[v237 - 1];
                  if ((p_str[v237 - 1] & 0x80000000) == 0)
                  {
                    break;
                  }

                  ++v236;
                  v239 = v237 - 1;
                  if (v237 >= 2)
                  {
                    --v237;
                    if ((v238 & 0xC0) == 0x80)
                    {
                      continue;
                    }
                  }

                  goto LABEL_663;
                }

                v239 = v237;
LABEL_663:
                v242 = v236 - 2;
                if ((((255 << (8 - v236)) | (1 << (7 - v236))) & v238) != ((255 << (8 - v236)) & 0xFE))
                {
                  v236 = 0;
                }

                v243 = v236 + v239;
                if (v242 <= 4)
                {
                  LODWORD(v35) = v243;
                }

                else
                {
                  LODWORD(v35) = v239;
                }
              }

              else
              {
LABEL_645:
                LODWORD(v35) = 0;
              }
            }

            goto LABEL_668;
          }

          if (v12 == 1)
          {
            v198 = *p_str++;
            LODWORD(v35) = v198;
            goto LABEL_668;
          }

          goto LABEL_518;
        }

        if (v12 == 2)
        {
          v204 = *p_str;
          if (*p_str)
          {
            v205 = 0;
            v35 = &__str;
            goto LABEL_547;
          }

          __str = 46;
          v204 = *p_str;
          v35 = v271;
          if (*p_str)
          {
            v35 = v271;
            v205 = 1;
            while (1)
            {
LABEL_547:
              if (v204 >= 0x40)
              {
                v219 = sub_23EB720C0(v35, 300 - v205, "<<INVALID DNS LABEL LENGTH %u>>");
                goto LABEL_571;
              }

              v210 = 300 - v205;
              if (v205 + v204 >= 254)
              {
                break;
              }

              v205 += sub_23EB720C0(v35, v210, "%#s.", p_str);
              v211 = &p_str[*p_str];
              v212 = v211[1];
              p_str = v211 + 1;
              v204 = v212;
              v35 = &v271[v205 - 1];
              if (!v212)
              {
                goto LABEL_572;
              }
            }

            v219 = sub_23EB720C0(v35, v210, "<<DNS NAME TOO LONG>>");
LABEL_571:
            LODWORD(v35) = v35 + v219;
          }

LABEL_572:
          p_str = &__str;
          LODWORD(v35) = v35 - &__str;
          goto LABEL_668;
        }

        if (v12 != 3)
        {
LABEL_518:
          p_str = &__str;
          LODWORD(v35) = sub_23EB720C0(&__str, 300, "<< ERROR: %%s with too many #'s (%d) >>", v12);
          goto LABEL_668;
        }

        v199 = p_str + 1;
        v200 = p_str;
        while (2)
        {
          v201 = *(v199 - 1);
          if (v201 == 32)
          {
            v200 = v199;
LABEL_517:
            ++v199;
            continue;
          }

          break;
        }

        if (*(v199 - 1) && v201 != 58)
        {
          goto LABEL_517;
        }

        if (v201 == 58)
        {
          v201 = *v199;
        }

        else
        {
          --v199;
        }

        v206 = p_str;
        if (v201 == 58)
        {
          p_str = v199 + 1;
          v206 = v200;
          goto LABEL_530;
        }

        while (2)
        {
          v208 = *p_str;
          if (v208 == 32)
          {
            v206 = p_str + 1;
LABEL_539:
            ++p_str;
            continue;
          }

          break;
        }

        if (*p_str && v208 != 40)
        {
          goto LABEL_539;
        }

LABEL_530:
        while (1)
        {
          v207 = *p_str;
          if (!*p_str || v207 == 32)
          {
            break;
          }

          if (v207 == 40)
          {
            if (p_str[1] == 41)
            {
              v216 = p_str[2];
              v217 = 3;
              if (v216 != 39)
              {
                v217 = 0;
              }

              v218 = &p_str[v217];
              if (v216 == 40)
              {
                p_str += 2;
              }

              else
              {
                p_str = v218;
              }
            }

            break;
          }

          ++p_str;
        }

        if (v206 < p_str && *v206 == 42)
        {
          ++v206;
        }

        LODWORD(v35) = p_str - v206;
        p_str = v206;
LABEL_668:
        if ((v266 & 8) != 0)
        {
          v244 = v267;
          if (v35 > v267)
          {
            if (v267 >= 1)
            {
              while ((p_str[v244] & 0xC0) == 0x80)
              {
                v245 = __OFSUB__(v244--, 1);
                if ((v244 < 0) ^ v245 | (v244 == 0))
                {
                  LODWORD(v35) = 0;
                  goto LABEL_676;
                }
              }
            }

            LODWORD(v35) = v244;
          }
        }

LABEL_676:
        if (BYTE8(v267) == 2)
        {
          v246 = 8738;
LABEL_680:
          *(&v267 + 9) = v246;
        }

        else if (BYTE8(v267) == 1)
        {
          v246 = 10023;
          goto LABEL_680;
        }

LABEL_413:
        v81 = sub_23EB75A1C(v4, &v266, p_str, v35);
LABEL_414:
        v35 = v81;
        if ((v81 & 0x80000000) == 0)
        {
LABEL_415:
          v5 += v35;
          goto LABEL_416;
        }

        return v35;
      case 'u':
        goto LABEL_130;
      case 'v':
        v39 = v268;
        v268 += 2;
        v40 = *v39;
        v41 = HIWORD(*v39) & 0xF;
        v42 = sub_23EB720C0(&__str, 300, "%u", HIBYTE(*v39));
        v43 = &v271[v42 - 1];
        v44 = sub_23EB720C0(v43, 300 - v42, ".%u", (v40 >> 20) & 0xF);
        v35 = &v43[v44];
        if (v41)
        {
          v35 += sub_23EB720C0(&v43[v44], &valuePtr[-v35], ".%u", HIWORD(v40) & 0xF);
        }

        HIDWORD(v46) = BYTE1(v40) - 32;
        LODWORD(v46) = HIDWORD(v46);
        v45 = v46 >> 5;
        if (v45 > 1)
        {
          if (v45 == 2)
          {
            v47 = sub_23EB720C0(v35, &valuePtr[-v35], "b%u");
          }

          else
          {
            if (v45 != 3)
            {
LABEL_355:
              v47 = sub_23EB720C0(v35, &valuePtr[-v35], "<< ERROR: invalid NumVersion stage: 0x%02X >>");
              goto LABEL_358;
            }

            if (!v40)
            {
              goto LABEL_359;
            }

            v47 = sub_23EB720C0(v35, &valuePtr[-v35], "f%u");
          }
        }

        else
        {
          if (v45)
          {
            if (v45 == 1)
            {
              v47 = sub_23EB720C0(v35, &valuePtr[-v35], "a%u");
              goto LABEL_358;
            }

            goto LABEL_355;
          }

          v47 = sub_23EB720C0(v35, &valuePtr[-v35], "d%u");
        }

LABEL_358:
        LODWORD(v35) = v35 + v47;
LABEL_359:
        p_str = &__str;
        LODWORD(v35) = v35 - &__str;
        goto LABEL_413;
      case 'x':
        v32 = "0123456789abcdef";
LABEL_129:
        v30 = 0;
        v31 = 16;
LABEL_130:
        if (v25 == 2 || v25 == 1)
        {
          v86 = v268;
          v268 += 2;
          v34 = *v86;
        }

        else
        {
          v87 = v268;
          v268 += 2;
          v34 = *v87;
        }

        if (v24 == 2)
        {
          v34 = v34;
        }

        else if (v24 == 1)
        {
          v34 = v34;
        }

        BYTE4(v266) = 0;
        if (v12 > 1)
        {
          v88 = v30;
        }

        else
        {
          v88 = 0;
        }

        if (v88 != 1)
        {
          v89 = 0;
          if ((v14 & 8) == 0)
          {
            goto LABEL_176;
          }

          goto LABEL_186;
        }

        if ((v14 & 8) != 0)
        {
          if (v22 >= 0x41)
          {
            p_str = &__str;
            v59 = sub_23EB720C0(&__str, 300, "ERROR: << precision must be 0-%d >>");
            goto LABEL_345;
          }

          if (v22)
          {
            goto LABEL_241;
          }

          v22 = 1;
        }

        else if (v24 == 1)
        {
          v22 = 16;
        }

        else if (v24 == 2)
        {
          v22 = 8;
        }

        else if (((v25 - 1) & 0xFE) != 0)
        {
          v22 = 32;
        }

        else
        {
          v22 = 64;
        }

        *&v267 = v22;
LABEL_241:
        v109 = (v22 - 1);
        if (v12 == 2)
        {
          LODWORD(v35) = 0;
          do
          {
            if ((v34 >> v109))
            {
              v110 = "";
              if (v35 > 0)
              {
                v110 = " ";
              }

              LODWORD(v35) = sub_23EB720C0(&v271[v35 - 1], 300 - v35, "%s%d", v110, v109) + v35;
            }

            v149 = v109-- <= 0;
          }

          while (!v149);
        }

        else
        {
          v111 = 0;
          LODWORD(v35) = 0;
          do
          {
            if ((v34 >> v109))
            {
              v112 = "";
              if (v35 > 0)
              {
                v112 = " ";
              }

              LODWORD(v35) = sub_23EB720C0(&v271[v35 - 1], 300 - v35, "%s%d", v112, v111) + v35;
            }

            ++v111;
            LOBYTE(v109) = v109 - 1;
          }

          while (v22 != v111);
        }

        goto LABEL_412;
      case '{':
        v54 = 0;
        v55 = (k + 1);
        v56 = 123;
        ++k;
        do
        {
          if (v56 == 125)
          {
            break;
          }

          v57 = *++k;
          v56 = v57;
          ++v54;
        }

        while (v57);
        if (sub_23EB74C04(v55, v54, "ie"))
        {
          if (!sub_23EB74C04(v55, v54, "dur"))
          {
            if (BYTE2(v266) == 2)
            {
              v188 = v268;
              v268 += 2;
              v143 = *v188;
            }

            else
            {
              v142 = v268;
              v268 += 2;
              if (BYTE2(v266) == 1)
              {
                v143 = *v142;
              }

              else
              {
                v143 = *v142;
              }
            }

            if (BYTE1(v266) == 1)
            {
              v143 = v143;
            }

            if (BYTE1(v266) == 2)
            {
              v189 = v143;
            }

            else
            {
              v189 = v143;
            }

            if (v189 >> 7 >= 0x2A3)
            {
              v191 = 0;
              v192 = valuePtr;
              v193 = 1;
              v194 = v189 / 0x15180;
              do
              {
                v195 = v193;
                v196 = v191;
                *v192++ = (v194 % 0xA) | 0x30;
                ++v193;
                ++v191;
                v149 = v194 > 9;
                v194 /= 0xAuLL;
              }

              while (v149);
              if (v192 <= valuePtr)
              {
                v197 = &__str;
              }

              else
              {
                v197 = &__str;
                do
                {
                  *v197++ = v271[v195-- + 298];
                  --v196;
                }

                while (v196 != -1);
              }

              *v197 = 100;
              v190 = v197 + 1;
            }

            else
            {
              v190 = &__str;
            }

            v213 = v189 % 0x15180;
            if (v213 >= 0xE10)
            {
              if (v190 == &__str)
              {
                v214 = &__str;
              }

              else
              {
                *v190 = 32;
                v214 = v190 + 1;
              }

              v221 = valuePtr;
              v222 = v213 / 0xE10;
              do
              {
                *v221++ = (v222 % 0xA) | 0x30;
                v149 = v222 > 9;
                v222 /= 0xAu;
              }

              while (v149);
              while (v221 > valuePtr)
              {
                v223 = *--v221;
                *v214++ = v223;
              }

              *v214 = 104;
              v190 = v214 + 1;
            }

            v224 = v213 % 0xE10;
            if (v224 >= 0x3C)
            {
              if (v190 != &__str)
              {
                *v190++ = 32;
              }

              v225 = valuePtr;
              v226 = v224 / 0x3Cu;
              do
              {
                *v225++ = (v226 % 0xA) | 0x30;
                v149 = v226 > 9;
                v226 /= 0xAu;
              }

              while (v149);
              while (v225 > valuePtr)
              {
                v227 = *--v225;
                *v190++ = v227;
              }

              *v190++ = 109;
            }

            v228 = v224 % 0x3Cu;
            if (v224 % 0x3Cu || v190 == &__str)
            {
              if (v190 != &__str)
              {
                *v190++ = 32;
              }

              v229 = valuePtr;
              do
              {
                *v229++ = (v228 % 0xA) | 0x30;
                v149 = v228 > 9;
                v228 /= 0xAu;
              }

              while (v149);
              while (v229 > valuePtr)
              {
                v230 = *--v229;
                *v190++ = v230;
              }

              *v190++ = 115;
            }

            *v190 = 0;
            p_str = &__str;
            LODWORD(v35) = v190 - &__str;
            goto LABEL_413;
          }

          if (!sub_23EB74C04(v55, v54, "txt"))
          {
            v261 = v5;
            v168 = v268;
            v268 += 2;
            v169 = *v168;
            v268 = v168 + 4;
            v170 = *(v168 + 1);
            v171 = 4 * DWORD2(v266);
            v172 = &v169[v170];
            if (v170 >= 6 && *(v169 + 1) == 1095590263 && v169[5] == 61)
            {
              if (&v169[*v169 + 1] != v172)
              {
                v35 = sub_23EB759F0(v4, "%*s### bad TXT record length byte (%zu, %zu expected)\n", 4 * DWORD2(v266), "", *v169, v170 - 1);
                goto LABEL_651;
              }

              if (v170 < 2)
              {
                v35 = 0;
                goto LABEL_695;
              }

              LODWORD(v35) = 0;
              v247 = v169 + 1;
LABEL_683:
              v248 = valuePtr;
              v249 = v247;
              while (1)
              {
                v251 = *v247++;
                v250 = v251;
                if (v251 == 92)
                {
                  if (v247 >= v172)
                  {
                    v257 = "";
                    v4 = a1;
                    v240 = sub_23EB759F0(a1, "%*s### bad TXT escape: %.*s\n");
LABEL_647:
                    if (v240 >= 0)
                    {
                      v241 = v35;
                    }

                    else
                    {
                      v241 = 0;
                    }

                    v35 = (v241 + v240);
                    goto LABEL_651;
                  }

                  v247 = v249 + 2;
                  LOBYTE(v250) = v249[1];
                }

                else if (v250 == 44)
                {
                  goto LABEL_690;
                }

                *v248++ = v250;
                v249 = v247;
                if (v247 >= v172)
                {
LABEL_690:
                  v252 = sub_23EB759F0(a1, "%*s%.*s\n", v171, "", v248 - valuePtr, valuePtr);
                  if ((v252 & 0x80000000) == 0)
                  {
                    v35 = (v252 + v35);
                    if (v247 >= v172)
                    {
LABEL_695:
                      v4 = a1;
                      goto LABEL_574;
                    }

                    goto LABEL_683;
                  }

                  v35 = v252;
                  v4 = a1;
LABEL_651:
                  v5 = v261;
LABEL_652:
                  if ((v35 & 0x80000000) == 0)
                  {
                    goto LABEL_415;
                  }

                  return v35;
                }
              }
            }

            if (v170 >= 1)
            {
              LODWORD(v35) = 0;
              v174 = v169;
              while (1)
              {
                v177 = *v174;
                v175 = (v174 + 1);
                v176 = v177;
                v178 = &v175[v177];
                if (v178 > v172)
                {
                  break;
                }

                v10 = sub_23EB759F0(v4, "%*s%.*s\n", v171, "", v176, v175);
                if ((v10 & 0x80000000) != 0)
                {
                  return v10;
                }

                v35 = (v10 + v35);
                v174 = v178;
                if (v178 >= v172)
                {
                  goto LABEL_574;
                }
              }

              v257 = "";
              v240 = sub_23EB759F0(v4, "%*s### TXT record length byte too big (%zu, %zu max)\n");
              goto LABEL_647;
            }

            v35 = 0;
LABEL_574:
            v5 = v261;
            if (v170 && *v169)
            {
              goto LABEL_652;
            }

            v215 = sub_23EB759F0(v4, "\n", usedBufLen);
LABEL_577:
            if (v215 >= 0)
            {
              v220 = v35;
            }

            else
            {
              v220 = 0;
            }

            v35 = (v220 + v215);
            goto LABEL_652;
          }

          p_str = &__str;
          v59 = sub_23EB720C0(&__str, 300, "<<UNKNOWN PRINTF EXTENSION '%.*s'>>");
LABEL_345:
          LODWORD(v35) = v59;
          goto LABEL_413;
        }

        v115 = v268;
        v268 += 2;
        v116 = *v115;
        v268 = v115 + 4;
        v117 = *(v115 + 1);
        if (v117 < 1)
        {
          LODWORD(v35) = 0;
          goto LABEL_415;
        }

        LODWORD(v35) = 0;
        v118 = (4 * DWORD2(v266));
        v119 = &v116[v117];
        break;
      default:
        goto LABEL_162;
    }

    break;
  }

  while (1)
  {
    if ((v119 - v116) <= 1)
    {
      v257 = (v119 - v116);
      v215 = sub_23EB759F0(v4, "### bad IE header:\n%2.1H\n", v116);
      goto LABEL_577;
    }

    v120 = v116[1];
    v121 = &v116[v120 + 2];
    if (v121 > v119)
    {
      v257 = (v119 - v116);
      v4 = a1;
      v215 = sub_23EB759F0(a1, "### bad IE length:\n%2.1H\n", v116);
      goto LABEL_577;
    }

    v122 = *v116;
    if (v122 <= 2)
    {
      if (!*v116)
      {
        v10 = sub_23EB759F0(a1, "%*s%3d %-*s '%.*s'\n", v118);
        goto LABEL_281;
      }

      if (v122 == 1)
      {
        goto LABEL_277;
      }
    }

    else
    {
      if (v122 == 3 || v122 == 50)
      {
LABEL_277:
        usedBufLena = v118;
        v126 = a1;
LABEL_278:
        v10 = sub_23EB759F0(v126, "%*s%3d %-*s %2.2H", usedBufLena, "");
        goto LABEL_281;
      }

      if (v122 == 221)
      {
        if (v120 <= 3)
        {
          v257 = (v119 - v116);
          v4 = a1;
          v215 = sub_23EB759F0(a1, "### bad vendor IE:\n%2.1H\n", v116);
          goto LABEL_577;
        }

        v123 = bswap32(*(v116 + 2));
        v124 = v116 + 6;
        v125 = v120 - 4;
        if (v123 > 1569282)
        {
          if (v123 == 1569283)
          {
            v258 = v118;
            v260 = v5;
            v127 = sub_23EB759F0(a1, "%*s%3d %-*s\n", v118, "", 221, 27, "EasyConnect");
            if ((v127 & 0x80000000) != 0)
            {
              return v127;
            }

            v10 = sub_23EB76B40(a1, &v266, v124, v125);
            if ((v10 & 0x80000000) != 0)
            {
              return v10;
            }

            goto LABEL_297;
          }

          if (v123 == 5304836)
          {
            v258 = v118;
            v260 = v5;
            v127 = sub_23EB759F0(a1, "%*s%3d %-*s\n", v118, "", 221, 27, "WPS");
            if ((v127 & 0x80000000) != 0)
            {
              return v127;
            }

            v10 = sub_23EB76D60(a1, &v266, v124, v125);
            if ((v10 & 0x80000000) != 0)
            {
              return v10;
            }

LABEL_297:
            v35 = (v127 + v35 + v10);
            v118 = v258;
            v5 = v260;
            goto LABEL_283;
          }
        }

        else if (v123 == 234241)
        {
          if (v121 - v124 <= 2)
          {
            v257 = (v119 - v116);
            v4 = a1;
            v215 = sub_23EB759F0(a1, "### bad Apple General IE:\n%2.1H\n", v116);
            goto LABEL_577;
          }

          v10 = sub_23EB759F0(a1, "%*s%3d %-*s product ID %d flags 0x%x\n", v118, "", 221, 27, "Apple General IE", v116[6], __rev16(*(v116 + 7)));
          if ((v10 & 0x80000000) != 0)
          {
            return v10;
          }

          goto LABEL_282;
        }

        usedBufLena = v118;
        v126 = a1;
        goto LABEL_278;
      }
    }

    v10 = sub_23EB759F0(a1, "%*s%3d %-*s %2.2H\n", v118, "");
LABEL_281:
    if ((v10 & 0x80000000) != 0)
    {
      return v10;
    }

LABEL_282:
    v35 = (v10 + v35);
LABEL_283:
    v116 = v121;
    v77 = v121 >= v119;
    v4 = a1;
    if (v77)
    {
      goto LABEL_652;
    }
  }
}

void sub_23EB74724(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    free(v4);
  }

  free(a1);
}

void sub_23EB7477C(void *a1)
{
  if (*(a1 + 8) == 2)
  {
    v2 = a1[5];
    if (v2)
    {
      free(v2);
      a1[5] = 0;
    }

    v3 = a1[6];
    if (v3)
    {
      if (v3 != *MEMORY[0x277D85DF8] && v3 != *MEMORY[0x277D85E08])
      {
        fclose(v3);
      }

      a1[6] = 0;
    }

    v5 = a1[10];
    if (v5)
    {
      free(v5);
      a1[10] = 0;
    }
  }

  v6 = a1[2];
  if (v6)
  {
    free(v6);
  }

  free(a1);
}

uint64_t sub_23EB7481C(unsigned __int8 *a1)
{
  if (!a1)
  {
    while (1)
    {
      result = qword_27E3833F0;
      if (!qword_27E3833F0)
      {
        break;
      }

      qword_27E3833F0 = *qword_27E3833F0;
      sub_23EB74724(result);
    }

    return result;
  }

  v1 = a1;
  v2 = *a1;
  if (*a1)
  {
    v3 = &qword_27E3833F0;
    while (2)
    {
      v4 = 0;
      if (!v2)
      {
        return 4294960554;
      }

      while (v2 != 58)
      {
        v2 = v1[++v4];
        if (!v2)
        {
          return 4294960554;
        }
      }

      v5 = 0;
      v6 = &v1[v4];
      while (1)
      {
        if (!v6[v5 + 1])
        {
          return 4294960554;
        }

        if (v6[v5 + 1] == 61)
        {
          break;
        }

        ++v5;
      }

      v7 = 0;
      v8 = &v1[v4 + 2 + v5];
      for (i = v8; ; ++i)
      {
        v10 = *i;
        if (!*i || v10 == 44)
        {
          break;
        }

        ++v7;
      }

      if (v10 == 44)
      {
        v11 = i + 1;
      }

      else
      {
        v11 = i;
      }

      v12 = *v3;
      if (*v3)
      {
        while (1)
        {
          v13 = v12;
          if (!sub_23EB74C04(v1, v4, *(v12 + 8)) && !sub_23EB74C04(v6 + 1, v5, v13[2]))
          {
            break;
          }

          v12 = *v13;
          if (!*v13)
          {
            goto LABEL_25;
          }
        }

        v20 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
        if (v20)
        {
          v21 = v20;
          memcpy(v20, v8, v7);
          v21[v7] = 0;
          free(v13[3]);
          v13[3] = v21;
LABEL_30:
          v2 = *v11;
          v1 = v11;
          if (*v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v13 = v3;
LABEL_25:
        v26 = v11;
        v14 = v3;
        v15 = malloc_type_calloc(1uLL, 0x20uLL, 0x30040E3C0B0CCuLL);
        if (v15)
        {
          v16 = v15;
          v17 = malloc_type_malloc(v4 + 1, 0x100004077774924uLL);
          v16[1] = v17;
          if (v17)
          {
            memcpy(v17, v1, v4);
            *(v16[1] + v4) = 0;
            v18 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
            v16[2] = v18;
            if (v18)
            {
              memcpy(v18, v6 + 1, v5);
              *(v16[2] + v5) = 0;
              v19 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
              v16[3] = v19;
              if (v19)
              {
                memcpy(v19, &v1[v4 + 2 + v5], v7);
                *(v16[3] + v7) = 0;
                *v13 = v16;
                v3 = v14;
                v11 = v26;
                goto LABEL_30;
              }
            }

            v23 = v16[1];
            if (v23)
            {
              free(v23);
            }
          }

          v24 = v16[2];
          if (v24)
          {
            free(v24);
          }

          v25 = v16[3];
          if (v25)
          {
            free(v25);
          }

          free(v16);
        }
      }

      return 4294960568;
    }
  }

  return sub_23EB74C88(0);
}

BOOL sub_23EB74AC8(uint64_t a1, unsigned __int16 a2)
{
  if (byte_27E383808)
  {
    return 0;
  }

  pthread_mutex_lock(&stru_27E381710);
  if (*a1 == -1)
  {
    *a1 = *(a1 + 4);
    v5 = &qword_27E3833E8;
    v6 = qword_27E3833E8;
    if (qword_27E3833E8)
    {
      if (sub_23EB74C04(*(qword_27E3833E8 + 24), -1, *(a1 + 24)) <= 0)
      {
        do
        {
          v7 = v6;
          v6 = *(v6 + 48);
          if (!v6)
          {
            v8 = 0;
            v5 = (v7 + 48);
            goto LABEL_13;
          }
        }

        while (sub_23EB74C04(*(v6 + 24), -1, *(a1 + 24)) < 1);
        v5 = (v7 + 48);
      }

      else
      {
        v5 = &qword_27E3833E8;
      }

      v8 = *v5;
    }

    else
    {
      v8 = 0;
    }

LABEL_13:
    *(a1 + 48) = v8;
    *v5 = a1;
    v9 = *(a1 + 8);
    if (v9)
    {
      sub_23EB7481C(v9);
    }

    sub_23EB74C88(a1);
    v10 = a1 + 56;
    if (!*(a1 + 56))
    {
      sub_23EB7503C("console", (a1 + 56));
      if (*v10)
      {
        ++*(*v10 + 8);
      }
    }
  }

  v11 = *a1;
  pthread_mutex_unlock(&stru_27E381710);
  return v11 <= a2;
}

uint64_t sub_23EB74C04(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    v4 = a2;
    while (1)
    {
      --v4;
      v6 = __tolower(*a1);
      result = __tolower(*a3);
      if (v6 < result)
      {
        return 0xFFFFFFFFLL;
      }

      if (v6 > result)
      {
        return 1;
      }

      if (!result)
      {
        return result;
      }

      ++a1;
      ++a3;
      if (!v4)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    if (*a3)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t *sub_23EB74C88(void *a1)
{
  v1 = qword_27E3833F0;
  if (qword_27E3833F0)
  {
    do
    {
      if (!strcmp(*(v1 + 16), "level"))
      {
        v3 = sub_23EB751D8(*(v1 + 24));
        if (v3 != -1)
        {
          v4 = qword_27E3833E8;
          if (qword_27E3833E8)
          {
            v5 = v3;
            do
            {
              if ((!a1 || v4 == a1) && sub_23EB76EA8(*(v1 + 8), *(v4 + 24)))
              {
                *v4 = v5;
              }

              v4 = *(v4 + 48);
            }

            while (v4);
          }
        }
      }

      v1 = *v1;
    }

    while (v1);
    v6 = qword_27E3833F0;
    if (qword_27E3833F0)
    {
      do
      {
        if (!strcmp(*(v6 + 16), "flags"))
        {
          v7 = *(v6 + 24);
          v8 = 0;
          v9 = &v7[strlen(v7)];
LABEL_17:
          v10 = v7;
          while (v10 < v9)
          {
            if (*v10 == 59)
            {
              v11 = v10;
              v12 = 1;
            }

            else
            {
              v13 = v10 + 1;
              v14 = v9 - 1 - v10;
              while (1)
              {
                v15 = v13;
                if (!v14)
                {
                  break;
                }

                ++v13;
                --v14;
                if (*v15 == 59)
                {
                  v11 = v15;
                  goto LABEL_26;
                }
              }

              v11 = v9;
LABEL_26:
              v12 = v15 < v9;
            }

            v16 = v11 - v10;
            v7 = &v11[v12];
            if (!sub_23EB74C04(v10, v11 - v10, "none"))
            {
              v8 = 0;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "time"))
            {
              v8 |= 1u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "pid"))
            {
              v8 |= 2u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "program"))
            {
              v8 |= 4u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "category"))
            {
              v8 |= 8u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "level"))
            {
              v8 |= 0x10u;
              goto LABEL_17;
            }

            if (!sub_23EB74C04(v10, v16, "prefix"))
            {
              v8 |= 0x20u;
              goto LABEL_17;
            }

            v17 = sub_23EB74C04(v10, v16, "function");
            v10 = v7;
            if (!v17)
            {
              v8 |= 0x40u;
              goto LABEL_17;
            }
          }

          for (i = qword_27E3833E8; i; i = *(i + 48))
          {
            if (!a1 || i == a1)
            {
              v19 = *(i + 24);
              if (sub_23EB76EA8(*(v6 + 8), v19))
              {
                if ((v8 & 0x20) != 0)
                {
                  v20 = strchr(v19, 95);
                  if (!v20)
                  {
                    LODWORD(v20) = v19 + strlen(v19);
                  }

                  *(i + 32) = v19;
                  *(i + 40) = v20 - v19;
                }

                *(i + 16) = v8;
              }
            }
          }
        }

        v6 = *v6;
      }

      while (v6);
      for (j = qword_27E3833F0; j; j = *j)
      {
        if (!strcmp(*(j + 16), "output"))
        {
          for (k = qword_27E3833E8; k; k = *(k + 48))
          {
            if ((!a1 || k == a1) && sub_23EB76EA8(*(j + 8), *(k + 24)))
            {
              v28 = 0;
              result = sub_23EB7503C(*(j + 24), &v28);
              if (result)
              {
                return result;
              }

              v24 = *(k + 56);
              v25 = v28;
              if (v24 != v28)
              {
                if (v24)
                {
                  --*(v24 + 8);
                }

                ++*(v25 + 2);
                *(k + 56) = v25;
              }
            }
          }
        }
      }
    }
  }

  v26 = qword_27E3833F8;
  if (qword_27E3833F8)
  {
    result = &qword_27E3833F8;
    do
    {
      v27 = result;
      result = v26;
      while (1)
      {
        v26 = *result;
        if (*(result + 2))
        {
          break;
        }

        *v27 = v26;
        sub_23EB7477C(result);
        result = *v27;
        if (!*v27)
        {
          return result;
        }
      }
    }

    while (v26);
  }

  return 0;
}

uint64_t sub_23EB7503C(char *__s2, uint64_t **a2)
{
  v4 = &qword_27E3833F8;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (!strcmp(v4[2], __s2))
    {
      v5 = 0;
LABEL_5:
      *a2 = v4;
      return v5;
    }
  }

  v6 = malloc_type_calloc(1uLL, 0x60uLL, 0x10B2040E503BF9DuLL);
  if (v6)
  {
    v4 = v6;
    *(v6 + 2) = 0;
    v7 = strdup(__s2);
    v4[2] = v7;
    if (!v7)
    {
      v5 = 4294960568;
      goto LABEL_26;
    }

      ;
    }

    if (!i)
    {
      v5 = 4294960540;
      goto LABEL_26;
    }

    if (__s2[i])
    {
      v9 = __s2 + 1;
    }

    else
    {
      v9 = __s2;
    }

    if (sub_23EB74C04(__s2, i, "console") && sub_23EB74C04(__s2, i, "file"))
    {
      if (sub_23EB74C04(__s2, i, "syslog"))
      {
        if (sub_23EB74C04(__s2, i, "callback"))
        {
          v5 = 4294960591;
LABEL_26:
          sub_23EB7477C(v4);
          return v5;
        }

        v10 = sub_23EB776A8(v4, &v9[i]);
        if (!v10)
        {
LABEL_29:
          v5 = 0;
          *v4 = qword_27E3833F8;
          qword_27E3833F8 = v4;
          goto LABEL_5;
        }
      }

      else
      {
        v10 = sub_23EB7754C(v4, &v9[i]);
        if (!v10)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v10 = sub_23EB77008(v4, &v9[i]);
      if (!v10)
      {
        goto LABEL_29;
      }
    }

    v5 = v10;
    goto LABEL_26;
  }

  return 4294960568;
}

uint64_t sub_23EB751D8(char *__s1)
{
  v2 = MEMORY[0x277D85DE0];
  v3 = __s1;
  do
  {
    v4 = v3;
    v5 = *v3;
    if (*v3 < 0)
    {
      v6 = __maskrune(*v3, 0x100uLL);
    }

    else
    {
      v6 = *(v2 + 4 * *v3 + 60) & 0x100;
    }

    ++v3;
  }

  while (v6);
  v7 = v4 - __s1;
  if (v4 == __s1)
  {
    v12 = *__s1;
    if ((v12 - 48) > 9)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = __s1 + 1;
      do
      {
        v13 = 10 * v13 + v12 - 48;
        v15 = *v14++;
        v12 = v15;
      }

      while ((v15 - 48) < 0xA);
    }

    if (v12)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v13;
    }
  }

  else
  {
    if (strncmp(__s1, "all", v4 - __s1))
    {
      v8 = &dword_278C68D20;
      v9 = 17;
      while (--v9)
      {
        v10 = v8 + 4;
        v11 = strncmp(__s1, *(v8 + 3), v7);
        v8 = v10;
        if (!v11)
        {
          goto LABEL_17;
        }
      }

      return 0xFFFFFFFFLL;
    }

    v10 = &dword_278C68D20;
LABEL_17:
    result = *v10;
    if (v5 && result != -1)
    {
      v17 = *v3;
      if ((v17 - 48) > 9)
      {
        v18 = 0;
        if (!*v3)
        {
LABEL_29:
          if (v5 == 45)
          {
            return (result - v18);
          }

          if (v5 == 43)
          {
            return (v18 + result);
          }
        }
      }

      else
      {
        v18 = 0;
        v19 = 1;
        do
        {
          v18 = 10 * v18 + v17 - 48;
          v17 = v3[v19++];
        }

        while ((v17 - 48) < 0xA);
        if (!v17)
        {
          goto LABEL_29;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_23EB75374(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  va_start(va, a4);
  v4 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v7 = v6;
  v9 = v8;
  v10 = v4;
  v22 = *MEMORY[0x277D85DE8];
  if (qword_27E383408 != -1)
  {
    sub_23EC18E74();
  }

  if (qword_27E383400)
  {
    v11 = qword_27E383400;
  }

  else
  {
    v11 = MEMORY[0x277D86220];
  }

  if (v9 > 4999)
  {
    if (v9 > 9999)
    {
      if (v9 == 10000 || v9 == 11000)
      {
LABEL_24:
        v12 = OS_LOG_TYPE_FAULT;
        goto LABEL_25;
      }

      v13 = 12000;
    }

    else
    {
      if (v9 == 5000)
      {
        v12 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_25;
      }

      if (v9 == 8000)
      {
        v12 = OS_LOG_TYPE_ERROR;
        goto LABEL_25;
      }

      v13 = 9000;
    }

    if (v9 != v13)
    {
LABEL_36:
      v12 = OS_LOG_TYPE_DEBUG;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v12 = OS_LOG_TYPE_INFO;
  if (v9 > 799)
  {
    if (v9 != 800 && v9 != 1000 && v9 != 3000)
    {
      goto LABEL_36;
    }
  }

  else if (v9 && v9 != 100 && v9 != 500)
  {
    goto LABEL_36;
  }

LABEL_25:
  if (!sub_23EC0D248(v4, v5) || strlen(v7) < 2)
  {
    return 0;
  }

  if ((*(v10 + 16) & 0x40) != 0)
  {
    __sprintf_chk(v16, 0, 0x3E8uLL, "%s: %s");
  }

  else
  {
    __sprintf_chk(v16, 0, 0x3E8uLL, "%s");
  }

  v20 = 0;
  v21 = 0;
  *&buf = sub_23EB72150;
  *(&buf + 1) = v17;
  v19 = xmmword_23EC21C50;
  v14 = sub_23EB721D8(&buf, v16, va);
  *(*(&buf + 1) + v19) = 0;
  if (os_log_type_enabled(v11, v12))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_23EB4A000, v11, v12, "%s", &buf, 0xCu);
  }

  return v14;
}

uint64_t sub_23EB755D8(uint64_t (**a1)(char *), int a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a3;
  result = 0;
  v38 = 0;
  v36 = 0;
  v47 = *MEMORY[0x277D85DE8];
  v41 = a1;
  if (a4 >= a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = a4;
  }

  v9 = (4 * a2);
  v10 = &v45;
  v11 = &v46;
  v12 = "";
  while (1)
  {
    v13 = 0;
    v14 = v8 >= 0x10 ? 16 : v8;
    v43 = v11;
    do
    {
      if (v13 && (v13 & 3) == 0)
      {
        *v11++ = 32;
      }

      if (v13 >= v14)
      {
        v15 = 32;
        *v11 = 32;
      }

      else
      {
        *v11 = a0123456789abcd[*(v5 + v13) >> 4];
        v15 = a0123456789abcd[*(v5 + v13) & 0xF];
      }

      v11[1] = v15;
      v11 += 2;
      ++v13;
    }

    while (v13 != 16);
    v16 = 0;
    *v11 = 0;
    do
    {
      if (v8 <= v16)
      {
        LOBYTE(v17) = 32;
      }

      else
      {
        v17 = *(v5 + v16);
        if ((v17 - 32) >= 0x5F)
        {
          LOBYTE(v17) = 94;
        }
      }

      v44[v16++] = v17;
    }

    while (v16 != 16);
    v44[16] = 0;
    if (a4 > 0x10)
    {
      if (v5 == a3)
      {
        v39 = result;
        v28 = a1;
        v22 = sub_23EB759F0(a1, "%*s", v9, v12);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        result = sub_23EB759F0(v28, "+%04X: %s |%s| (%zu bytes)\n");
      }

      else
      {
        if (*v43 == *v10 && *(v43 + 1) == *(v10 + 1) && *(v43 + 2) == *(v10 + 2) && *(v43 + 3) == *(v10 + 3))
        {
          ++v38;
          v36 += v14;
          goto LABEL_47;
        }

        v39 = result;
        if (v38 >= 1)
        {
          v26 = a1;
          v22 = sub_23EB759F0(a1, "%*s", v9, v12);
          if ((v22 & 0x80000000) != 0)
          {
            return v22;
          }

          result = sub_23EB759F0(v26, "* (%d duplicate lines, %zu duplicate bytes)\n", v38 + 1, v36 + 16);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }

          v36 = 0;
          v38 = 0;
          v39 += v22 + result;
          a1 = v41;
        }

        v27 = a1;
        v22 = sub_23EB759F0(a1, "%*s", v9, v12);
        if ((v22 & 0x80000000) != 0)
        {
          return v22;
        }

        result = sub_23EB759F0(v27, "+%04X: %s |%s|\n");
      }

      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (v22 + v39 + result);
      a1 = v41;
    }

    else
    {
      v40 = v10;
      v18 = result;
      v19 = v12;
      v33 = v9;
      v34 = v12;
      v20 = v9;
      v21 = a1;
      v22 = sub_23EB759F0(a1, "%*s", v33, v34);
      if ((v22 & 0x80000000) != 0)
      {
        return v22;
      }

      result = sub_23EB759F0(v21, "%s |%s| (%zu bytes)\n", v43, v44, a4);
      if ((result & 0x80000000) != 0)
      {
        return result;
      }

      result = (v22 + v18 + result);
      v9 = v20;
      v12 = v19;
      v10 = v40;
      a1 = v41;
    }

LABEL_47:
    v8 -= v14;
    if (!v8)
    {
      break;
    }

    v5 += v14;
    v11 = v10;
    v10 = v43;
  }

  if (v38 < 1)
  {
    goto LABEL_54;
  }

  v29 = result;
  v30 = a1;
  v22 = sub_23EB759F0(a1, "%*s", v9, v12);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  result = sub_23EB759F0(v30, "* (%d duplicate lines, %zu duplicate bytes)\n", v38 + 1, v36 + 16);
  if ((result & 0x80000000) != 0)
  {
    return result;
  }

  result = (v22 + v29 + result);
  a1 = v41;
LABEL_54:
  if (a4 <= a5)
  {
    return result;
  }

  v31 = result;
  v32 = a1;
  v22 = sub_23EB759F0(a1, "%*s", v9, v12);
  if ((v22 & 0x80000000) != 0)
  {
    return v22;
  }

  result = sub_23EB759F0(v32, "... %zu more bytes ...\n", a4 - a5);
  if ((result & 0x80000000) == 0)
  {
    return (v22 + v31 + result);
  }

  return result;
}

uint64_t sub_23EB75A1C(uint64_t (**a1)(const char *, uint64_t, void), uint64_t a2, const char *a3, uint64_t a4)
{
  v8 = (a2 + 25);
  if (*(a2 + 25))
  {
    v9 = a4 + 1;
  }

  else
  {
    v9 = a4;
  }

  v10 = (a2 + 26);
  if (*(a2 + 26))
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v9;
  }

  if ((*a2 & 1) == 0 && v11 < *(a2 + 8))
  {
    v12 = 0;
    while (1)
    {
      v13 = (*a1)(" ", 1, a1);
      if ((v13 & 0x80000000) != 0)
      {
        return v13;
      }

      ++v12;
      v14 = *(a2 + 8) - 1;
      *(a2 + 8) = v14;
      if (v11 >= v14)
      {
        if (*v8)
        {
          goto LABEL_15;
        }

        goto LABEL_17;
      }
    }
  }

  v12 = 0;
  if (*(a2 + 25))
  {
LABEL_15:
    v13 = (*a1)(v8, 1, a1);
    if ((v13 & 0x80000000) != 0)
    {
      return v13;
    }

    ++v12;
  }

LABEL_17:
  v13 = (*a1)(a3, a4, a1);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = (v12 + a4);
  if (!*v10)
  {
    goto LABEL_21;
  }

  v13 = (*a1)(v10, 1, a1);
  if ((v13 & 0x80000000) != 0)
  {
    return v13;
  }

  v15 = (v15 + 1);
LABEL_21:
  if (v11 < *(a2 + 8))
  {
    while (1)
    {
      v13 = (*a1)(" ", 1, a1);
      if ((v13 & 0x80000000) != 0)
      {
        break;
      }

      v15 = (v15 + 1);
      if (++v11 >= *(a2 + 8))
      {
        return v15;
      }
    }

    return v13;
  }

  return v15;
}

uint64_t sub_23EB75B94(uint64_t (***a1)(const char *, ...), const __CFString *a2, uint64_t a3, int a4)
{
  v8 = *(a1[1] + 3);
  if (a3 || v8 != 1)
  {
    if (a3)
    {
      v10 = v8 == 2;
    }

    else
    {
      v10 = 0;
    }

    v9 = v10;
  }

  else
  {
    v9 = 1;
  }

  v11 = CFGetTypeID(a2);
  if (v11 == CFArrayGetTypeID())
  {
    v12 = sub_23EB759F0(*a1, "%*s", 4 * *(a1 + 4), "");
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    Count = CFArrayGetCount(a2);
    v14 = **a1;
    if (Count >= 1)
    {
      v15 = Count;
      v16 = v14("[\n", 2);
      if ((v16 & 0x80000000) == 0)
      {
        v17 = 0;
        v18 = v16 + v12;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, v17);
          ++*(a1 + 4);
          v12 = sub_23EB75B94(a1, ValueAtIndex, a3, 1);
          --*(a1 + 4);
          if ((v12 & 0x80000000) != 0)
          {
            break;
          }

          v16 = (**a1)("\n", 1);
          if ((v16 & 0x80000000) != 0)
          {
            return v16;
          }

          v18 += v12 + v16;
          if (v15 == ++v17)
          {
            v12 = sub_23EB759F0(*a1, "%*s", 4 * *(a1 + 4), "");
            if ((v12 & 0x80000000) != 0)
            {
              return v12;
            }

            v16 = (**a1)("]", 1);
            if ((v16 & 0x80000000) == 0)
            {
              v20 = v12 + v18;
              return (v20 + v16);
            }

            return v16;
          }
        }

        return v12;
      }

      return v16;
    }

    v21 = "[]";
    goto LABEL_34;
  }

  if (v11 == CFBooleanGetTypeID())
  {
    v12 = sub_23EB759F0(*a1, "%*s", 4 * *(a1 + 4), "");
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (!v9)
    {
      if (*MEMORY[0x277CBED28] == a2)
      {
        v22 = 4;
      }

      else
      {
        v22 = 5;
      }

      if (*MEMORY[0x277CBED28] == a2)
      {
        v21 = "true";
      }

      else
      {
        v21 = "false";
      }

      v14 = **a1;
      goto LABEL_42;
    }

    v14 = **a1;
    v21 = "%b";
    goto LABEL_34;
  }

  if (v11 == CFDataGetTypeID())
  {
    if (!v9)
    {
      v23 = *(a1 + 4);
      Length = CFDataGetLength(a2);
      v25 = Length;
      if (a4 || Length >= 0x11)
      {
        v12 = (**a1)("\n", 1);
        if ((v12 & 0x80000000) != 0)
        {
          return v12;
        }

        v26 = v23 + 1;
      }

      else
      {
        v26 = 0;
        LODWORD(v12) = 0;
      }

      *(a1 + 4) = v26;
      v30 = *a1;
      BytePtr = CFDataGetBytePtr(a2);
      v16 = sub_23EB755D8(v30, v26, BytePtr, v25, v25);
      if ((v16 & 0x80000000) == 0)
      {
        v12 = (v16 + v12);
        *(a1 + 4) = v23;
        return v12;
      }

      return v16;
    }

    v12 = sub_23EB759F0(*a1, "%*s", 4 * *(a1 + 4), "");
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v14 = **a1;
    v21 = "%D";
    goto LABEL_34;
  }

  if (v11 == CFDateGetTypeID())
  {
    v12 = sub_23EB759F0(*a1, "%*s", 4 * *(a1 + 4), "");
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    if (!v9)
    {
      LODWORD(valuePtr) = 0;
      LODWORD(v55) = 0;
      v57 = 0;
      v58 = 0;
      Default = CFAllocatorGetDefault();
      v35 = CFCalendarCreateWithIdentifier(Default, *MEMORY[0x277CBEE80]);
      if (v35)
      {
        v36 = v35;
        MEMORY[0x23EF1E1F0](a2);
        CFCalendarDecomposeAbsoluteTime(v36, v37, "yMdHms", &valuePtr, &v55, &v58 + 4, &v58, &v57 + 4, &v57);
        CFRelease(v36);
      }

      LODWORD(v16) = sub_23EB759F0(*a1, "%04d-%02d-%02d %02d:%02d:%02d");
      goto LABEL_43;
    }

    v14 = **a1;
    v21 = "%T";
    goto LABEL_34;
  }

  if (v11 == CFDictionaryGetTypeID())
  {
    v12 = sub_23EB759F0(*a1, "%*s", 4 * *(a1 + 4), "");
    if ((v12 & 0x80000000) != 0)
    {
      return v12;
    }

    v27 = CFDictionaryGetCount(a2);
    v14 = **a1;
    if (v27 >= 1)
    {
      v16 = v14("{\n", 2);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      ++*(a1 + 4);
      *(a1 + 5) = v16 + v12;
      CFDictionaryApplyFunction(a2, sub_23EB76358, a1);
      v12 = *(a1 + 6);
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v28 = *(a1 + 5);
      v29 = *(a1 + 4) - 1;
      *(a1 + 4) = v29;
      v12 = sub_23EB759F0(*a1, "%*s", 4 * v29, "");
      if ((v12 & 0x80000000) != 0)
      {
        return v12;
      }

      v16 = (**a1)("}", 1);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      v20 = v12 + v28;
      return (v20 + v16);
    }

    v21 = "{}";
LABEL_34:
    v22 = 2;
LABEL_42:
    LODWORD(v16) = v14(v21, v22);
    goto LABEL_43;
  }

  if (v11 == CFNumberGetTypeID())
  {
    v32 = sub_23EB759F0(*a1, "%*s", 4 * *(a1 + 4), "");
    v33 = v32;
    if ((v32 & 0x80000000) != 0)
    {
      return v32;
    }

    if (v9)
    {
      LODWORD(v16) = (**a1)("%i", usedBufLen);
    }

    else
    {
      valuePtr = 0;
      if (!CFNumberGetValue(a2, kCFNumberSInt64Type, &valuePtr))
      {
        v55 = 0;
        Value = CFNumberGetValue(a2, kCFNumberDoubleType, &v55);
        v52 = *a1;
        if (Value)
        {
          v53 = sub_23EB759F0(v52, "%f");
        }

        else
        {
          v53 = sub_23EB759F0(v52, "<< BAD NUMBER >>");
        }

        v12 = v53;
        if ((v53 & 0x80000000) == 0)
        {
          return (v53 + v33);
        }

        return v12;
      }

      LODWORD(v16) = sub_23EB759F0(*a1, "%lld", valuePtr);
    }

    if (v16 >= 0)
    {
      v20 = v33;
    }

    else
    {
      v20 = 0;
    }

    return (v20 + v16);
  }

  TypeID = CFStringGetTypeID();
  v39 = sub_23EB759F0(*a1, "%*s", 4 * *(a1 + 4), "");
  v12 = v39;
  if (v11 != TypeID)
  {
    if ((v39 & 0x80000000) != 0)
    {
      return v12;
    }

    v40 = CFCopyDescription(a2);
    v41 = *a1;
    if (v40)
    {
      v42 = sub_23EB759F0(v41, "%@", v40);
      CFRelease(v40);
      if (v42 >= 0)
      {
        v43 = v12;
      }

      else
      {
        v43 = 0;
      }

      return (v43 + v42);
    }

    LODWORD(v16) = sub_23EB759F0(v41, "<<UNKNOWN CF OBJECT TYPE: %d>>");
    goto LABEL_43;
  }

  if ((v39 & 0x80000000) != 0)
  {
    return v12;
  }

  if (v9)
  {
    v14 = **a1;
    if (!a3)
    {
      v21 = "%ks";
      v22 = 3;
      goto LABEL_42;
    }

    v21 = "%s";
    goto LABEL_34;
  }

  if (a3)
  {
    v16 = (**a1)("", 1);
    if ((v16 & 0x80000000) != 0)
    {
      return v16;
    }

    v12 = (v16 + v12);
  }

  v44 = CFStringGetLength(a2);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v44, 0x8000100u);
  if (MaximumSizeForEncoding)
  {
    v46 = MaximumSizeForEncoding;
    v47 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
    if (!v47)
    {
      return 4294960568;
    }

    v48 = v47;
    valuePtr = 0;
    v59.location = 0;
    v59.length = v44;
    CFStringGetBytes(a2, v59, 0x8000100u, 0x5Eu, 0, v47, v46, &valuePtr);
    v49 = (**a1)(v48, valuePtr);
    free(v48);
    if ((v49 & 0x80000000) != 0)
    {
      return v49;
    }

    v12 = (v49 + v12);
  }

  if (a3)
  {
    LODWORD(v16) = (**a1)("", 1);
LABEL_43:
    if (v16 >= 0)
    {
      v20 = v12;
    }

    else
    {
      v20 = 0;
    }

    return (v20 + v16);
  }

  return v12;
}

uint64_t sub_23EB76358(uint64_t result, const __CFString *a2, uint64_t (***a3)(const char *, uint64_t))
{
  if (*(a3 + 6))
  {
    return result;
  }

  result = sub_23EB75B94(a3, result, 0, 0);
  v5 = result;
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

  result = (**a3)("=", 1);
  if ((result & 0x80000000) != 0)
  {
LABEL_21:
    v5 = result;
    goto LABEL_22;
  }

  v6 = result + v5;
  v7 = CFGetTypeID(a2);
  if (v7 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a2);
    v9 = **a3;
    if (Count >= 1)
    {
      result = v9("\n", 1);
      v5 = result;
      if ((result & 0x80000000) == 0)
      {
        v10 = a3;
        v11 = a2;
        v12 = 1;
LABEL_12:
        result = sub_23EB75B94(v10, v11, 1, v12);
        v14 = result;
        if ((result & 0x80000000) != 0)
        {
          v5 = result;
          goto LABEL_22;
        }

        result = (**a3)("\n", 1);
        if ((result & 0x80000000) == 0)
        {
          v15 = v5 + v6 + v14 + result;
LABEL_20:
          *(a3 + 5) += v15;
          return result;
        }

        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v17 = "[]\n";
LABEL_28:
    result = v9(v17, 3);
    goto LABEL_29;
  }

  if (v7 == CFDictionaryGetTypeID())
  {
    v13 = CFDictionaryGetCount(a2);
    v9 = **a3;
    if (v13 >= 1)
    {
      result = v9("\n", 1);
      v5 = result;
      if ((result & 0x80000000) == 0)
      {
        v10 = a3;
        v11 = a2;
        v12 = 0;
        goto LABEL_12;
      }

LABEL_22:
      *(a3 + 5) += v5;
LABEL_23:
      *(a3 + 6) = v5;
      return result;
    }

    v17 = "{}\n";
    goto LABEL_28;
  }

  if (v7 != CFDataGetTypeID() || *(a3[1] + 3) == 2)
  {
    v16 = *(a3 + 4);
    *(a3 + 4) = 0;
    result = sub_23EB75B94(a3, a2, 1, 0);
    v5 = result;
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_22;
    }

    *(a3 + 4) = v16;
    result = (**a3)("\n", 1);
    if ((result & 0x80000000) == 0)
    {
      v15 = v5 + v6 + result;
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  result = sub_23EB75B94(a3, a2, 1, 0);
LABEL_29:
  v5 = result;
  if (result >= 0)
  {
    v18 = v6;
  }

  else
  {
    v18 = 0;
  }

  *(a3 + 5) += result + v18;
  if ((result & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  return result;
}

_BYTE *sub_23EB765A4(unsigned int a1, unsigned int a2, _BYTE *a3)
{
  v3 = 1;
  v13 = *MEMORY[0x277D85DE8];
  for (i = a3; ; ++i)
  {
    v5 = (a1 >> (-8 * v3));
    v6 = v12;
    do
    {
      *v6++ = (v5 % 0xA) | 0x30;
      v7 = v5 > 9;
      v5 /= 0xAu;
    }

    while (v7);
    while (v6 > v12)
    {
      v8 = *--v6;
      *i++ = v8;
    }

    if (v3 == 4)
    {
      break;
    }

    *i = 46;
    ++v3;
  }

  if (a2 >= 1)
  {
    *i = 58;
    v9 = v12;
    do
    {
      *v9++ = (a2 % 0xA) | 0x30;
      v7 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v7);
    ++i;
    while (v9 > v12)
    {
      v10 = *--v9;
      *i++ = v10;
    }
  }

  *i = 0;
  return a3;
}

char *sub_23EB766C8(_BYTE *a1, unsigned int a2, int a3, char *a4)
{
  v5 = a3;
  v6 = a2;
  v45 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3 >= 1)
  {
    *a4 = 91;
    v7 = a4 + 1;
  }

  if (*a1 || a1[1])
  {
    goto LABEL_25;
  }

  if (!a1[2] && !a1[3] && !a1[4] && !a1[5] && !a1[6] && !a1[7] && !a1[8] && !a1[9] && a1[10] == 255 && a1[11] == 255)
  {
    *v7 = 14906;
    v37 = v7 + 6;
    *(v7 + 2) = 1717986918;
    v7 += 7;
    goto LABEL_81;
  }

  if (a1[2] || a1[3] || a1[4] || a1[5] || a1[6] || a1[7] || a1[8] || a1[9] || a1[10] || a1[11] || !a1[12] && !a1[13] && (!a1[14] && !a1[15] || !a1[14] && a1[15] == 1))
  {
LABEL_25:
    v8 = 0;
    v9 = v43;
    while (1)
    {
      v10 = v8 | 1;
      v11 = a1[v8];
      if (v11 >= 0x10)
      {
        *v9 = a0123456789abcd[v11 >> 4];
        LODWORD(v11) = v11 & 0xF;
        v12 = 1;
      }

      else
      {
        if (!a1[v8])
        {
          v14 = 0;
          v16 = 0;
          v8 += 2;
          v15 = a1[v10];
          if (v15 < 0x10)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        v12 = 0;
      }

      v13 = a0123456789abcd[v11];
      v14 = v12 + 1;
      v9[v12] = v13;
      v8 += 2;
      v15 = a1[v10];
LABEL_31:
      v16 = v14 + 1;
      v9[v14] = a0123456789abcd[v15 >> 4];
LABEL_32:
      *&v9[v16] = a0123456789abcd[v15 & 0xF];
      v9 += 5;
      if (v8 >= 16)
      {
        v17 = 0;
        v18 = a1 + 15;
        for (i = 28; i != -4; i -= 4)
        {
          if (*(v18 - 1))
          {
            v17 = 0;
          }

          else if (*v18)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }

          *&v42[i] = v17;
          v18 -= 2;
        }

        v20 = 0;
        v21 = 0;
        v22 = -1;
        do
        {
          if (*&v42[4 * v20] > v21)
          {
            v21 = *&v42[4 * v20];
            v22 = v20;
          }

          ++v20;
        }

        while (v20 != 8);
        v23 = 0;
        while (1)
        {
          if (v23 == v22)
          {
            if (!v22)
            {
              *v7++ = 58;
            }

            *v7 = 58;
            v23 = v22 - 1 + *&v42[4 * v22];
          }

          else
          {
            v24 = v43[5 * v23];
            if (v24)
            {
              v25 = &v43[5 * v23 + 1];
              do
              {
                *v7++ = v24;
                v26 = *v25++;
                v24 = v26;
              }

              while (v26);
            }

            if (v23 == 7)
            {
              goto LABEL_57;
            }

            *v7 = 58;
          }

          ++v7;
          v27 = v23++ < 7;
          if (!v27)
          {
            goto LABEL_57;
          }
        }
      }
    }
  }

  v37 = v7 + 1;
  *v7 = 58;
  v7 += 2;
LABEL_81:
  v38 = 12;
  *v37 = 58;
  while (1)
  {
    v39 = a1[v38];
    v40 = v44;
    do
    {
      *v40++ = (v39 % 0xA) | 0x30;
      v27 = v39 > 9;
      v39 /= 0xAu;
    }

    while (v27);
    while (v40 > v44)
    {
      v41 = *--v40;
      *v7++ = v41;
    }

    if (v38 == 15)
    {
      break;
    }

    *v7++ = 46;
    ++v38;
  }

LABEL_57:
  if (a2)
  {
    *v7++ = 37;
    v28 = if_indextoname(a2, v44);
    if (v28)
    {
      v29 = *v28;
      if (*v28)
      {
        v30 = (v28 + 1);
        do
        {
          *v7++ = v29;
          v31 = *v30++;
          v29 = v31;
        }

        while (v31);
      }
    }

    else
    {
      v35 = v44;
      do
      {
        *v35++ = (v6 % 0xA) | 0x30;
        v27 = v6 > 9;
        v6 /= 0xAu;
      }

      while (v27);
      while (v35 > v44)
      {
        v36 = *--v35;
        *v7++ = v36;
      }
    }
  }

  if (v5 >= 1)
  {
    *v7 = 14941;
    v32 = v44;
    do
    {
      *v32++ = (v5 % 0xA) | 0x30;
      v27 = v5 > 9;
      v5 /= 0xAu;
    }

    while (v27);
    v7 += 2;
    while (v32 > v44)
    {
      v33 = *--v32;
      *v7++ = v33;
    }
  }

  *v7 = 0;
  return a4;
}

uint64_t sub_23EB76B40(uint64_t (**a1)(char *), uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = (4 * *(a2 + 8) + 8);
  v7 = &a3[a4];
  while (1)
  {
    if ((v7 - a3) <= 1)
    {
      v11 = sub_23EB759F0(a1, "### EasyConnect IE too small for header:\n%2.1H\n", a3, v7 - a3, v7 - a3);
      goto LABEL_29;
    }

    v8 = &a3[a3[1] + 2];
    if (v8 > v7)
    {
      break;
    }

    v9 = *a3;
    if (v9 > 3)
    {
      if (*a3 > 5u)
      {
        if (v9 == 6)
        {
          result = sub_23EB759F0(a1, "%*s%-*s %3.2H", v6, "", 23, "AuthorizedMACs", a3 + 2, a3[1], a3[1]);
          goto LABEL_23;
        }

        if (v9 == 7)
        {
          result = sub_23EB759F0(a1, "%*s%-*s %3.2H", v6, "", 23, "ConfigMethods", a3 + 2, a3[1], a3[1]);
          goto LABEL_23;
        }
      }

      else
      {
        if (v9 == 4)
        {
          result = sub_23EB759F0(a1, "%*s%-*s %3.2H", v6, "", 23, "OfferTXT", a3 + 2, a3[1], a3[1]);
          goto LABEL_23;
        }

        if (v9 == 5)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (*a3 <= 1u)
      {
        goto LABEL_18;
      }

      if (v9 == 2)
      {
        result = sub_23EB759F0(a1, "%*s%-*s %3.2H", v6, "", 23, "Flags", a3 + 2, a3[1], a3[1]);
        goto LABEL_23;
      }

      if (v9 == 3)
      {
LABEL_18:
        result = sub_23EB759F0(a1, "%*s%-*s '%.*s'\n");
        goto LABEL_23;
      }
    }

    result = sub_23EB759F0(a1, "%*s%-*s %3.2H", v6, "", 23, "<<UNKNOWN>>", a3 + 2, a3[1], a3[1]);
LABEL_23:
    if ((result & 0x80000000) == 0)
    {
      v5 = (result + v5);
      a3 = v8;
      result = v5;
      if (v8 < v7)
      {
        continue;
      }
    }

    return result;
  }

  v11 = sub_23EB759F0(a1, "### EasyConnect IE bad length:\n%2.1H\n", a3, v7 - a3, v7 - a3);
LABEL_29:
  if (v11 >= 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return (v12 + v11);
}

uint64_t sub_23EB76D60(uint64_t (**a1)(char *), uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  if (a4 < 1)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = (4 * *(a2 + 8) + 8);
  v7 = (a3 + a4);
  while (1)
  {
    if ((v7 - a3) <= 3)
    {
      v11 = sub_23EB759F0(a1, "### WPS TLV too small for header:\n%2.1H\n", a3, v7 - a3, v7 - a3);
      goto LABEL_14;
    }

    v8 = __rev16(a3[1]);
    v9 = (a3 + v8 + 4);
    if (v9 > v7)
    {
      break;
    }

    if (bswap32(*a3) >> 16 == 4104)
    {
      result = sub_23EB759F0(a1, "%*s%-*s %3.2H", v6, "", 23, "ConfigMethods", a3 + 2, v8, v8);
    }

    else
    {
      result = sub_23EB759F0(a1, "%*s%-*s %3.2H", v6, "", 23, "<<UNKNOWN>>", a3 + 2, v8, v8);
    }

    if ((result & 0x80000000) == 0)
    {
      v5 = (result + v5);
      a3 = v9;
      result = v5;
      if (v9 < v7)
      {
        continue;
      }
    }

    return result;
  }

  v11 = sub_23EB759F0(a1, "### WPS TLV bad length:\n%2.1H\n", a3, v7 - a3, v7 - a3);
LABEL_14:
  if (v11 >= 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = 0;
  }

  return (v12 + v11);
}

uint64_t sub_23EB76EA8(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = a2;
  if (*a1 == 94)
  {
    v4 = a1 + 1;

    return sub_23EB76F20(v4, a2);
  }

  else
  {
    while (!sub_23EB76F20(a1, v2))
    {
      if (!*v2++)
      {
        return 0;
      }
    }

    return 1;
  }
}

uint64_t sub_23EB76F20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = a1 + 2; ; ++i)
    {
      v5 = *(i - 1);
      if (v5 == 42)
      {
        break;
      }

      v6 = *a2;
      if (v2 == 36 && !*(i - 1))
      {
        return v6 == 0;
      }

      if (!*a2 || v2 != 46 && v2 != v6)
      {
        return 0;
      }

      ++a2;
      v2 = v5;
      if (!v5)
      {
        return 1;
      }
    }

    while (1)
    {
      result = sub_23EB76F20(i, a2);
      if (result)
      {
        break;
      }

      v8 = *a2++;
      v7 = v8;
      v10 = v2 == 46 || v7 == v2;
      if (!v7 || !v10)
      {
        return result;
      }
    }
  }

  return 1;
}

os_log_t sub_23EB76FD8()
{
  result = os_log_create("com.apple.airportutility", "general");
  qword_27E383400 = result;
  return result;
}

uint64_t sub_23EB77008(uint64_t a1, char *__s1)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *__s1;
  if (!*__s1 || (v4 = __s1, !strcmp(__s1, "stderr")))
  {
    v48 = MEMORY[0x277D85DF8];
  }

  else
  {
    if (strcmp(v4, "stdout"))
    {
      while (1)
      {
        v5 = v4;
        if (!v3)
        {
          return 4294960554;
        }

        while (v3 != 61)
        {
          v6 = *++v5;
          v3 = v6;
          if (!v6)
          {
            return 4294960554;
          }
        }

        v7 = v5 + 1;
        v8 = -1;
        for (i = 1; v5[i] && v5[i] != 59; ++i)
        {
          ++v8;
        }

        v10 = &v5[i];
        if (v5[i])
        {
          v11 = v10 + 1;
        }

        else
        {
          v11 = &v5[i];
        }

        v49 = v11;
        if (sub_23EB74C04(v4, v5 - v4, "path"))
        {
          if (sub_23EB74C04(v4, v5 - v4, "roll"))
          {
            if (sub_23EB74C04(v4, v5 - v4, "backup"))
            {
              return 4294960561;
            }

            if (i < 2)
            {
              v14 = 0;
              v12 = 1;
              v13 = v5 + 1;
            }

            else if (*v7 == 35)
            {
              v12 = 1;
              v13 = v5 + 1;
              v14 = 1;
            }

            else
            {
              v27 = 2;
              while (1)
              {
                v28 = v27;
                if (!v8)
                {
                  break;
                }

                v29 = v5[v27++];
                --v8;
                if (v29 == 35)
                {
                  v12 = v28;
                  goto LABEL_73;
                }
              }

              v12 = i;
LABEL_73:
              v14 = v28 < i;
              v13 = &v5[v28];
            }

            if (v12 != i && *v13 != 35)
            {
              return 4294960591;
            }

            v38 = v12 - 1;
            if (v12 == 1)
            {
              v39 = 0;
            }

            else
            {
              v40 = malloc_type_malloc(v12, 0x100004077774924uLL);
              if (!v40)
              {
                return 4294960568;
              }

              v39 = v40;
              memcpy(v40, v5 + 1, v38);
              v39[v38] = 0;
            }

            v41 = *(a1 + 80);
            if (v41)
            {
              free(v41);
            }

            *(a1 + 80) = v39;
            v42 = &v13[v14];
            if (&v13[v14] >= v10)
            {
              v43 = 0;
            }

            else
            {
              v43 = 0;
              do
              {
                v44 = *v42;
                if ((v44 - 48) > 9)
                {
                  break;
                }

                v43 = v44 + 10 * v43 - 48;
                ++v42;
              }

              while (v42 < v10);
            }

            if (v10 != v42)
            {
              return 4294960591;
            }

            *(a1 + 88) = v43;
          }

          else
          {
            if (i < 2)
            {
              v24 = 0;
            }

            else
            {
              v24 = 0;
              while (1)
              {
                v25 = *v7;
                v26 = v25;
                if ((v25 - 48) > 9)
                {
                  break;
                }

                v24 = v25 + 10 * v24 - 48;
                if (++v7 >= v10)
                {
                  goto LABEL_59;
                }
              }

              v30 = v24 << 10;
              v31 = v24 << 20;
              if (v25 == 77)
              {
                v32 = v7 + 1;
              }

              else
              {
                v32 = v7;
              }

              if (v25 != 77)
              {
                v31 = v24;
              }

              v33 = v25 == 75;
              if (v25 == 75)
              {
                v34 = v7 + 1;
              }

              else
              {
                v34 = v32;
              }

              if (!v33)
              {
                v30 = v31;
              }

              if (v26 == 66)
              {
                ++v7;
              }

              else
              {
                v7 = v34;
              }

              if (v26 != 66)
              {
                v24 = v30;
              }
            }

LABEL_59:
            if (v10 != v7 && *v7 != 35)
            {
              return 4294960591;
            }

            *(a1 + 64) = v24;
            v35 = v7 >= v10 ? v7 : v7 + 1;
            if (v35 >= v10)
            {
              v36 = 0;
            }

            else
            {
              v36 = 0;
              do
              {
                v37 = *v35;
                if ((v37 - 48) > 9)
                {
                  break;
                }

                v36 = v37 + 10 * v36 - 48;
                ++v35;
              }

              while (v35 < v10);
            }

            if (v10 != v35)
            {
              return 4294960591;
            }

            *(a1 + 72) = v36;
          }
        }

        else
        {
          if (i == 1)
          {
            return 4294960592;
          }

          v15 = malloc_type_malloc(i, 0x100004077774924uLL);
          if (!v15)
          {
            return 4294960568;
          }

          v16 = v15;
          memcpy(v15, v5 + 1, i - 1);
          v16[i - 1] = 0;
          v17 = *(a1 + 40);
          if (v17)
          {
            free(v17);
          }

          *(a1 + 40) = v16;
          v18 = strrchr(v16, 47);
          if (v18)
          {
            v19 = v18 - v16;
            if ((v18 - v16) > 0x400)
            {
              return 4294960592;
            }

            __memcpy_chk();
            v51[v19] = 0;
            memset(&v50, 0, sizeof(v50));
            v20 = v52;
            __strlcpy_chk();
            while (1)
            {
              v21 = &v20[strspn(v20, "/")];
              v20 = &v21[strcspn(v21, "/")];
              v22 = *v20;
              *v20 = 0;
              if (mkdir(v52, 0x1F8u) < 0)
              {
                v23 = *__error();
                if (stat(v52, &v50) < 0)
                {
                  goto LABEL_91;
                }

                if ((v50.st_mode & 0xF000) != 0x4000)
                {
                  break;
                }
              }

              if (!v22)
              {
                goto LABEL_92;
              }

              *v20 = 47;
            }

            v23 = 20;
LABEL_91:
            *__error() = v23;
LABEL_92:
            v16 = *(a1 + 40);
          }

          v45 = fopen(v16, "a");
          *(a1 + 48) = v45;
          if (!v45)
          {
            return 4294960541;
          }

          fseeko(v45, 0, 2);
          *(a1 + 56) = ftello(*(a1 + 48));
        }

        v4 = v49;
        v3 = *v49;
        if (!*v49)
        {
          v46 = *(a1 + 48);
          if (v46)
          {
            goto LABEL_100;
          }

          return 4294960591;
        }
      }
    }

    v48 = MEMORY[0x277D85E08];
  }

  v46 = *v48;
  *(a1 + 48) = *v48;
LABEL_100:
  setvbuf(v46, 0, 2, 0);
  result = 0;
  *(a1 + 24) = sub_23EB77894;
  *(a1 + 32) = 2;
  return result;
}

uint64_t sub_23EB7754C(uint64_t a1, unsigned __int8 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *(a1 + 40) = -1;
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    while (1)
    {
      v5 = 1;
      if (!v3)
      {
        return 4294960554;
      }

      while (v3 != 61)
      {
        v3 = v4[v5++];
        if (!v3)
        {
          return 4294960554;
        }
      }

      v6 = 0;
      v7 = &v4[v5];
      while (1)
      {
        v8 = v7[v6];
        if (!v7[v6] || v8 == 59)
        {
          break;
        }

        ++v6;
      }

      if (sub_23EB74C04(v4, v5 - 1, "level"))
      {
        return 4294960561;
      }

      if (v8)
      {
        v9 = v4 + 1;
      }

      else
      {
        v9 = v4;
      }

      v4 = &v9[v5 + v6];
      if (v6 >= 0x1F)
      {
        v10 = 31;
      }

      else
      {
        v10 = v6;
      }

      __memcpy_chk();
      __s1[v10] = 0;
      *(a1 + 40) = sub_23EB751D8(__s1);
      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    result = 0;
    *(a1 + 24) = sub_23EB77C90;
    *(a1 + 32) = 6;
  }

  return result;
}

uint64_t sub_23EB776A8(uint64_t a1, unsigned __int8 *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  *(a1 + 40) = 0;
  v3 = (a1 + 40);
  *(a1 + 48) = 0;
  v4 = a1 + 48;
  v5 = *a2;
  if (!*a2)
  {
LABEL_23:
    result = 0;
    *(a1 + 24) = sub_23EB77D68;
    *(a1 + 32) = 11;
    return result;
  }

  v6 = a2;
  v7 = "func";
  while (1)
  {
    v8 = 1;
    if (!v5)
    {
      return 4294960554;
    }

    while (v5 != 61)
    {
      v5 = v6[v8++];
      if (!v5)
      {
        return 4294960554;
      }
    }

    v9 = 0;
    v10 = &v6[v8];
    while (v10[v9] && v10[v9] != 59)
    {
      ++v9;
    }

    v11 = (v10[v9] ? v6 + 1 : v6);
    v12 = v7;
    if (sub_23EB74C04(v6, v8 - 1, v7))
    {
      break;
    }

    if (v9 > 0x3F)
    {
      return 4294960553;
    }

    __memcpy_chk();
    v15[v9] = 0;
    if (sscanf(v15, "%p", &v14) != 1)
    {
      return 4294960554;
    }

    *v3 = v14;
LABEL_22:
    v6 = (v11 + v8 + v9);
    v5 = *v6;
    v7 = v12;
    if (!*v6)
    {
      goto LABEL_23;
    }
  }

  if (!sub_23EB74C04(v6, v8 - 1, "arg"))
  {
    if (v9 > 0x3F)
    {
      return 4294960553;
    }

    __memcpy_chk();
    v15[v9] = 0;
    if (sscanf(v15, "%p", v4) != 1)
    {
      return 4294960554;
    }

    goto LABEL_22;
  }

  return 4294960561;
}

FILE *sub_23EB77894(uint64_t a1, const void *a2, size_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = *(*a1 + 56);
  result = *(v5 + 48);
  v7 = MEMORY[0x277D85DF8];
  v8 = MEMORY[0x277D85E08];
  if (result != *MEMORY[0x277D85DF8] && result != *MEMORY[0x277D85E08])
  {
    v10 = *(v5 + 64);
    v11 = *(v5 + 56) + a3;
    *(v5 + 56) = v11;
    if (v10 >= 1 && v11 > v10)
    {
      if (*(v5 + 80))
      {
        v13 = *(v5 + 88);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v15 < 0 == v14)
        {
          sub_23EB720C0(&__p, 1025, "%s.%d", *(v5 + 80), v15);
          remove(&__p, v16);
          v17 = *(v5 + 88);
          if (v17 >= 3)
          {
            v18 = v17 - 2;
            do
            {
              sub_23EB720C0(&__p, 1025, "%s.%d", *(v5 + 80), v18);
              sub_23EB720C0(&__to, 1025, "%s.%d", *(v5 + 80), v18 + 1);
              rename(&__p, &__to, v19);
              v20 = v18-- != 0;
            }

            while (v18 != 0 && v20);
          }

          sub_23EB720C0(&__to, 1025, "%s.1", *(v5 + 80));
          rename(*(v5 + 80), &__to, v21);
          sub_23EB720C0(&__to, 1025, "%s", *(v5 + 80));
          v22 = *(v5 + 40);
          v23 = malloc_type_malloc(0x1000uLL, 0x100004077774924uLL);
          if (v23)
          {
            v24 = v23;
            v25 = fopen(v22, "r");
            if (v25 || *__error() && !*__error())
            {
              v26 = fopen(&__to, "w");
              if (v26 || *__error() && !*__error())
              {
                v27 = fread(v24, 1uLL, 0x1000uLL, v25);
                if (v27)
                {
                  v28 = v27;
                  do
                  {
                    if (fwrite(v24, 1uLL, v28, v26) != v28 && (!*__error() || *__error()))
                    {
                      break;
                    }

                    v28 = fread(v24, 1uLL, 0x1000uLL, v25);
                  }

                  while (v28);
                }
              }

              if (v25)
              {
                fclose(v25);
              }

              if (v26)
              {
                fclose(v26);
              }
            }

            free(v24);
          }
        }
      }

      v29 = *(v5 + 48);
      if (v29)
      {
        fwrite("\nLOG ENDED, CONTINUES IN NEXT LOG FILE\n", 0x27uLL, 1uLL, v29);
        fclose(*(v5 + 48));
        *(v5 + 48) = 0;
      }

      snprintf(&__p, 0x401uLL, "%s.%d", *(v5 + 40), *(v5 + 72) - 1);
      remove(&__p, v30);
      v31 = *(v5 + 72);
      if (v31 >= 3)
      {
        v32 = v31 - 2;
        do
        {
          snprintf(&__p, 0x401uLL, "%s.%d", *(v5 + 40), v32);
          snprintf(&__to, 0x401uLL, "%s.%d", *(v5 + 40), v32 + 1);
          rename(&__p, &__to, v33);
          v20 = v32-- != 0;
        }

        while (v32 != 0 && v20);
      }

      snprintf(&__to, 0x401uLL, "%s.%d", *(v5 + 40), 1);
      rename(*(v5 + 40), &__to, v34);
      v35 = fopen(*(v5 + 40), "w");
      *(v5 + 48) = v35;
      if (!v35 && *__error())
      {
        __error();
      }

      *(v5 + 56) = a3;
      result = *(v5 + 48);
    }
  }

  if (result)
  {
    if (result == *v7)
    {
      v36 = 2;
    }

    else if (result == *v8)
    {
      v36 = 1;
    }

    else
    {
      v36 = fileno(result);
    }

    return write(v36, a2, a3);
  }

  return result;
}

void sub_23EB77C90(unsigned __int16 *a1, const char *a2, uint64_t a3)
{
  v3 = *(*(*a1 + 56) + 40);
  if (v3 == -1)
  {
    v3 = a1[4];
  }

  if (v3 >= 501)
  {
    if (v3 >= 0x3E9)
    {
      if (v3 >= 0xBB9)
      {
        if (v3 >= 0x1389)
        {
          if (v3 >= 0x1F41)
          {
            if (v3 >= 0x2329)
            {
              v4 = v3 < 0x2711;
            }

            else
            {
              v4 = 2;
            }
          }

          else
          {
            v4 = 3;
          }
        }

        else
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 5;
      }
    }

    else
    {
      v4 = 6;
    }
  }

  else
  {
    v4 = 7;
  }

  for (; a3; --a3)
  {
    if (a2[a3 - 1] != 10)
    {
      break;
    }
  }

  syslog(v4, "%.*s", a3, a2);
}

uint64_t sub_23EB77D68(uint64_t result)
{
  v1 = *(*(*result + 56) + 40);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_23EB78230(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);

    return MEMORY[0x2821F9670](v5, sel_auUIAlertDestructiveAction_, v4, v3);
  }

  return result;
}

uint64_t sub_23EB7828C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);

    return MEMORY[0x2821F9670](v5, sel_auUIAlertCancelAction_, v4, v3);
  }

  return result;
}

uint64_t sub_23EB782E8(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);

    return MEMORY[0x2821F9670](v5, sel_auUIAlertAlternateAction_, v4, v3);
  }

  return result;
}

uint64_t sub_23EB78344(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);

    return MEMORY[0x2821F9670](v5, sel_auUIAlertOKAction_, v4, v3);
  }

  return result;
}

uint64_t sub_23EB78670(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);

    return MEMORY[0x2821F9670](v5, sel_auUIAlertOKAction_, v4, v3);
  }

  return result;
}

uint64_t sub_23EB78750(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);

    return MEMORY[0x2821F9670](v5, sel_auUIAlertCancelAction_, v4, v3);
  }

  return result;
}

uint64_t sub_23EB78B04(unsigned __int8 *a1, unint64_t a2, int a3, unsigned __int8 **a4, void *a5, unsigned __int8 **a6)
{
  do
  {
    if (a2 - a1 < 2)
    {
      v10 = 4294960569;
      if (!a6)
      {
        return v10;
      }

      goto LABEL_11;
    }

    v6 = a1[1];
    v7 = a1 + 2;
    v8 = &a1[v6 + 2];
    if (v8 > a2)
    {
      v10 = 4294960546;
      if (!a6)
      {
        return v10;
      }

LABEL_11:
      *a6 = a1;
      return v10;
    }

    v9 = *a1;
    a1 += v6 + 2;
  }

  while (v9 != a3);
  if (a4)
  {
    *a4 = v7;
  }

  v10 = 0;
  if (a5)
  {
    *a5 = v6;
  }

  a1 = v8;
  if (a6)
  {
    goto LABEL_11;
  }

  return v10;
}

uint64_t sub_23EB78B74(unsigned __int8 *a1, unint64_t a2, int a3, void *a4, void *a5, unsigned __int8 **a6)
{
  if ((a2 - a1) < 2)
  {
    return 4294960569;
  }

  v6 = a1;
  while (1)
  {
    v7 = v6;
    v8 = *v6;
    v9 = v6[1];
    v6 += v9 + 2;
    if (v8 == 221)
    {
      if (v6 < a1 || v6 > a2)
      {
        return 4294960553;
      }

      if (v9 >= 4 && bswap32(*(v7 + 2)) == a3)
      {
        break;
      }
    }

    if ((a2 - v6) <= 1)
    {
      return 4294960569;
    }
  }

  *a4 = v7 + 6;
  *a5 = v9 - 4;
  result = 0;
  if (a6)
  {
    *a6 = v6;
  }

  return result;
}

uint64_t sub_23EB78C00(unsigned __int8 *a1, unint64_t a2, _BYTE *a3, _WORD *a4)
{
  v8 = 0;
  v9 = 0;
  result = sub_23EB78B74(a1, a2, 234241, &v9, &v8, 0);
  if (!result)
  {
    if (v8 >= 3)
    {
      v7 = *(v9 + 1);
      if (a3)
      {
        *a3 = *v9;
      }

      result = 0;
      if (a4)
      {
        *a4 = bswap32(v7) >> 16;
      }
    }

    else
    {
      return 4294960553;
    }
  }

  return result;
}

uint64_t sub_23EB78C88(unsigned __int8 *a1, unint64_t a2, void *a3, void *a4)
{
  v8 = 0;
  v9 = 0;
  result = sub_23EB78B74(a1, a2, 1569287, &v9, &v8, 0);
  if (!result)
  {
    v7 = v8;
    if (v8 >= 0xA)
    {
      if (*v9)
      {
        return 4294960540;
      }

      else if (v9[1] == 1)
      {
        result = 0;
        *a3 = v9 + 2;
        *a4 = v7 - 2;
      }

      else
      {
        return 4294960581;
      }
    }

    else
    {
      return 4294960553;
    }
  }

  return result;
}

uint64_t sub_23EB78D24(unsigned __int8 *a1, unint64_t a2, int a3, unsigned __int8 **a4, void *a5, unsigned __int8 **a6)
{
  do
  {
    if (a2 - a1 < 2)
    {
      return 4294960569;
    }

    v6 = a1[1];
    v7 = a1 + 2;
    v8 = &a1[v6 + 2];
    if (v8 > a2)
    {
      return 4294960546;
    }

    v9 = *a1;
    a1 += v6 + 2;
  }

  while (v9 != a3);
  *a4 = v7;
  *a5 = v6;
  result = 0;
  if (a6)
  {
    *a6 = v8;
  }

  return result;
}

double sub_23EB78D7C(uint64_t a1)
{
  result = -3.59869635e230;
  *a1 = xmmword_23EC21C70;
  *(a1 + 16) = 0;
  return result;
}

void *sub_23EB78DA0(uint64_t a1, char *__src, size_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = __src;
  v7 = *(a1 + 16);
  *(a1 + 16) = v7 + a3;
  if (__CFADD__(v7, a3))
  {
    ++*(a1 + 20);
  }

  v8 = 64 - (v7 & 0x3F);
  v9 = a3 - v8;
  if (a3 >= v8)
  {
    memcpy((a1 - v8 + 88), __src, v8);
    sub_23EB78F5C(a1, (a1 + 24), v4);
    v11 = &v5[v8];
    if (v9 >= 0x40)
    {
      do
      {
        v12 = *v11;
        v13 = *(v11 + 1);
        v14 = *(v11 + 2);
        *(a1 + 72) = *(v11 + 3);
        *(a1 + 56) = v14;
        *(a1 + 40) = v13;
        *(a1 + 24) = v12;
        sub_23EB78F5C(a1, (a1 + 24), v4);
        v11 += 64;
        v9 -= 64;
      }

      while (v9 > 0x3F);
    }

    v10 = (a1 + 24);
    __src = v11;
    a3 = v9;
  }

  else
  {
    v10 = (a1 - v8 + 88);
  }

  return memcpy(v10, __src, a3);
}

double sub_23EB78E9C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a2 + 16) & 0x3F;
  v7 = (a2 + 24);
  v8 = (a2 + 24 + v6);
  *v8 = 0x80;
  v9 = (v8 + 1);
  if (v6 < 0x38)
  {
    v10 = 55 - v6;
  }

  else
  {
    bzero(v9, v6 ^ 0x3F);
    sub_23EB78F5C(a2, v7, v3);
    v10 = 56;
    v9 = v7;
  }

  bzero(v9, v10);
  *(a2 + 80) = 8 * *(a2 + 16);
  sub_23EB78F5C(a2, v7, v3);
  *a1 = *a2;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

_DWORD *sub_23EB78F5C(_DWORD *result, int *a2, int a3)
{
  v3 = result[1];
  v5 = result[2];
  v4 = result[3];
  v7 = *a2;
  v6 = a2[1];
  HIDWORD(v8) = *result + *a2 - 680876936 + (v5 & v3 | v4 & ~v3);
  LODWORD(v8) = HIDWORD(v8);
  v9 = (v8 >> 25) + v3;
  HIDWORD(v8) = v4 + v6 - 389564586 + (v3 & v9 | v5 & ~v9);
  LODWORD(v8) = HIDWORD(v8);
  v10 = (v8 >> 20) + v9;
  v11 = a2[2];
  v12 = a2[3];
  HIDWORD(v8) = v5 + v11 + 606105819 + (v9 & v10 | v3 & ~v10);
  LODWORD(v8) = HIDWORD(v8);
  v13 = (v8 >> 15) + v10;
  HIDWORD(v8) = v3 + v12 - 1044525330 + (v10 & v13 | v9 & ~v13);
  LODWORD(v8) = HIDWORD(v8);
  v14 = (v8 >> 10) + v13;
  v16 = a2[4];
  v15 = a2[5];
  HIDWORD(v8) = v16 + v9 - 176418897 + (v13 & v14 | v10 & ~v14);
  LODWORD(v8) = HIDWORD(v8);
  v17 = (v8 >> 25) + v14;
  HIDWORD(v8) = v15 + v10 + 1200080426 + (v14 & v17 | v13 & ~v17);
  LODWORD(v8) = HIDWORD(v8);
  v18 = (v8 >> 20) + v17;
  v19 = a2[6];
  v20 = a2[7];
  HIDWORD(v8) = v19 + v13 - 1473231341 + (v17 & v18 | v14 & ~v18);
  LODWORD(v8) = HIDWORD(v8);
  v21 = (v8 >> 15) + v18;
  HIDWORD(v8) = v20 + v14 - 45705983 + (v18 & v21 | v17 & ~v21);
  LODWORD(v8) = HIDWORD(v8);
  v22 = (v8 >> 10) + v21;
  v23 = a2[8];
  v24 = a2[9];
  HIDWORD(v8) = v23 + v17 + 1770035416 + (v21 & v22 | v18 & ~v22);
  LODWORD(v8) = HIDWORD(v8);
  v25 = (v8 >> 25) + v22;
  HIDWORD(v8) = v24 + v18 - 1958414417 + (v22 & v25 | v21 & ~v25);
  LODWORD(v8) = HIDWORD(v8);
  v26 = (v8 >> 20) + v25;
  v28 = a2[10];
  v27 = a2[11];
  HIDWORD(v8) = v28 + v21 - 42063 + (v25 & v26 | v22 & ~v26);
  LODWORD(v8) = HIDWORD(v8);
  v29 = (v8 >> 15) + v26;
  HIDWORD(v8) = v27 + v22 - 1990404162 + (v26 & v29 | v25 & ~v29);
  LODWORD(v8) = HIDWORD(v8);
  v30 = (v8 >> 10) + v29;
  v32 = a2[12];
  v31 = a2[13];
  HIDWORD(v8) = v32 + v25 + 1804603682 + (v29 & v30 | v26 & ~v30);
  LODWORD(v8) = HIDWORD(v8);
  v33 = (v8 >> 25) + v30;
  HIDWORD(v8) = v31 + v26 - 40341101 + (v30 & v33 | v29 & ~v33);
  LODWORD(v8) = HIDWORD(v8);
  v34 = (v8 >> 20) + v33;
  v36 = a2[14];
  v35 = a2[15];
  HIDWORD(v8) = v36 + v29 - 1502002290 + (v33 & v34 | v30 & ~v34);
  LODWORD(v8) = HIDWORD(v8);
  v37 = (v8 >> 15) + v34;
  HIDWORD(v8) = v35 + v30 + 1236535329 + (v34 & v37 | v33 & ~v37);
  LODWORD(v8) = HIDWORD(v8);
  v38 = (v8 >> 10) + v37;
  HIDWORD(v8) = v6 + v33 - 165796510 + (v38 & v34 | v37 & ~v34);
  LODWORD(v8) = HIDWORD(v8);
  v39 = (v8 >> 27) + v38;
  HIDWORD(v8) = v19 + v34 - 1069501632 + (v39 & v37 | v38 & ~v37);
  LODWORD(v8) = HIDWORD(v8);
  v40 = (v8 >> 23) + v39;
  HIDWORD(v8) = v27 + v37 + 643717713 + (v40 & v38 | v39 & ~v38);
  LODWORD(v8) = HIDWORD(v8);
  v41 = (v8 >> 18) + v40;
  HIDWORD(v8) = v7 + v38 - 373897302 + (v41 & v39 | v40 & ~v39);
  LODWORD(v8) = HIDWORD(v8);
  v42 = (v8 >> 12) + v41;
  HIDWORD(v8) = v15 + v39 - 701558691 + (v42 & v40 | v41 & ~v40);
  LODWORD(v8) = HIDWORD(v8);
  v43 = (v8 >> 27) + v42;
  HIDWORD(v8) = v28 + v40 + 38016083 + (v43 & v41 | v42 & ~v41);
  LODWORD(v8) = HIDWORD(v8);
  v44 = (v8 >> 23) + v43;
  HIDWORD(v8) = v35 + v41 - 660478335 + (v44 & v42 | v43 & ~v42);
  LODWORD(v8) = HIDWORD(v8);
  v45 = (v8 >> 18) + v44;
  HIDWORD(v8) = v16 + v42 - 405537848 + (v45 & v43 | v44 & ~v43);
  LODWORD(v8) = HIDWORD(v8);
  v46 = (v8 >> 12) + v45;
  HIDWORD(v8) = v24 + v43 + 568446438 + (v46 & v44 | v45 & ~v44);
  LODWORD(v8) = HIDWORD(v8);
  v47 = (v8 >> 27) + v46;
  HIDWORD(v8) = v36 + v44 - 1019803690 + (v47 & v45 | v46 & ~v45);
  LODWORD(v8) = HIDWORD(v8);
  v48 = (v8 >> 23) + v47;
  HIDWORD(v8) = v12 + v45 - 187363961 + (v48 & v46 | v47 & ~v46);
  LODWORD(v8) = HIDWORD(v8);
  v49 = (v8 >> 18) + v48;
  if (a3 == 1)
  {
    v50 = 1146754285;
  }

  else
  {
    v50 = 1163531501;
  }

  HIDWORD(v51) = v46 + v23 + v50 + (v49 & v47 | v48 & ~v47);
  LODWORD(v51) = HIDWORD(v51);
  v52 = (v51 >> 12) + v49;
  HIDWORD(v51) = v31 + v47 - 1444681467 + (v52 & v48 | v49 & ~v48);
  LODWORD(v51) = HIDWORD(v51);
  v53 = (v51 >> 27) + v52;
  HIDWORD(v51) = v11 + v48 - 51403784 + (v53 & v49 | v52 & ~v49);
  LODWORD(v51) = HIDWORD(v51);
  v54 = (v51 >> 23) + v53;
  HIDWORD(v51) = v20 + v49 + 1735328473 + (v54 & v52 | v53 & ~v52);
  LODWORD(v51) = HIDWORD(v51);
  v55 = (v51 >> 18) + v54;
  HIDWORD(v51) = v32 + v52 - 1926607734 + ((v55 ^ v54) & v53 ^ v54);
  LODWORD(v51) = HIDWORD(v51);
  v56 = (v51 >> 12) + v55;
  HIDWORD(v51) = v15 + v53 - 378558 + (v55 ^ v54 ^ v56);
  LODWORD(v51) = HIDWORD(v51);
  v57 = (v51 >> 28) + v56;
  HIDWORD(v51) = v23 + v54 - 2022574463 + (v56 ^ v55 ^ v57);
  LODWORD(v51) = HIDWORD(v51);
  v58 = (v51 >> 21) + v57;
  HIDWORD(v51) = v27 + v55 + 1839030562 + (v57 ^ v56 ^ v58);
  LODWORD(v51) = HIDWORD(v51);
  v59 = (v51 >> 16) + v58;
  HIDWORD(v51) = v36 + v56 - 35309556 + (v58 ^ v57 ^ v59);
  LODWORD(v51) = HIDWORD(v51);
  v60 = (v51 >> 9) + v59;
  HIDWORD(v51) = v6 + v57 - 1530992060 + (v59 ^ v58 ^ v60);
  LODWORD(v51) = HIDWORD(v51);
  v61 = (v51 >> 28) + v60;
  HIDWORD(v51) = v16 + v58 + 1272893353 + (v60 ^ v59 ^ v61);
  LODWORD(v51) = HIDWORD(v51);
  v62 = (v51 >> 21) + v61;
  HIDWORD(v51) = v20 + v59 - 155497632 + (v61 ^ v60 ^ v62);
  LODWORD(v51) = HIDWORD(v51);
  v63 = (v51 >> 16) + v62;
  HIDWORD(v51) = v28 + v60 - 1094730640 + (v62 ^ v61 ^ v63);
  LODWORD(v51) = HIDWORD(v51);
  v64 = (v51 >> 9) + v63;
  HIDWORD(v51) = v31 + v61 + 681279174 + (v63 ^ v62 ^ v64);
  LODWORD(v51) = HIDWORD(v51);
  v65 = (v51 >> 28) + v64;
  HIDWORD(v51) = v7 + v62 - 358537222 + (v64 ^ v63 ^ v65);
  LODWORD(v51) = HIDWORD(v51);
  v66 = (v51 >> 21) + v65;
  HIDWORD(v51) = v12 + v63 - 722521979 + (v65 ^ v64 ^ v66);
  LODWORD(v51) = HIDWORD(v51);
  v67 = (v51 >> 16) + v66;
  HIDWORD(v51) = v19 + v64 + 76029189 + (v66 ^ v65 ^ v67);
  LODWORD(v51) = HIDWORD(v51);
  v68 = (v51 >> 9) + v67;
  HIDWORD(v51) = v24 + v65 - 640364487 + (v67 ^ v66 ^ v68);
  LODWORD(v51) = HIDWORD(v51);
  v69 = (v51 >> 28) + v68;
  HIDWORD(v51) = v32 + v66 - 421815835 + (v68 ^ v67 ^ v69);
  LODWORD(v51) = HIDWORD(v51);
  v70 = (v51 >> 21) + v69;
  HIDWORD(v51) = v35 + v67 + 530742520 + (v69 ^ v68 ^ v70);
  LODWORD(v51) = HIDWORD(v51);
  v71 = (v51 >> 16) + v70;
  HIDWORD(v51) = v11 + v68 - 995338651 + (v70 ^ v69 ^ v71);
  LODWORD(v51) = HIDWORD(v51);
  v72 = (v51 >> 9) + v71;
  HIDWORD(v51) = v7 + v69 - 198630844 + ((v72 | ~v70) ^ v71);
  LODWORD(v51) = HIDWORD(v51);
  v73 = (v51 >> 26) + v72;
  HIDWORD(v51) = v20 + v70 + 1126891415 + ((v73 | ~v71) ^ v72);
  LODWORD(v51) = HIDWORD(v51);
  v74 = (v51 >> 22) + v73;
  HIDWORD(v51) = v36 + v71 - 1416354905 + ((v74 | ~v72) ^ v73);
  LODWORD(v51) = HIDWORD(v51);
  v75 = (v51 >> 17) + v74;
  HIDWORD(v51) = v15 + v72 - 57434055 + ((v75 | ~v73) ^ v74);
  LODWORD(v51) = HIDWORD(v51);
  v76 = (v51 >> 11) + v75;
  HIDWORD(v51) = v32 + v73 + 1700485571 + ((v76 | ~v74) ^ v75);
  LODWORD(v51) = HIDWORD(v51);
  v77 = (v51 >> 26) + v76;
  HIDWORD(v51) = v12 + v74 - 1894986606 + ((v77 | ~v75) ^ v76);
  LODWORD(v51) = HIDWORD(v51);
  v78 = (v51 >> 22) + v77;
  HIDWORD(v51) = v28 + v75 - 1051523 + ((v78 | ~v76) ^ v77);
  LODWORD(v51) = HIDWORD(v51);
  v79 = (v51 >> 17) + v78;
  HIDWORD(v51) = v6 + v76 - 2054922799 + ((v79 | ~v77) ^ v78);
  LODWORD(v51) = HIDWORD(v51);
  v80 = (v51 >> 11) + v79;
  HIDWORD(v51) = v23 + v77 + 1873313359 + ((v80 | ~v78) ^ v79);
  LODWORD(v51) = HIDWORD(v51);
  v81 = (v51 >> 26) + v80;
  HIDWORD(v51) = v35 + v78 - 30611744 + ((v81 | ~v79) ^ v80);
  LODWORD(v51) = HIDWORD(v51);
  v82 = (v51 >> 22) + v81;
  HIDWORD(v51) = v19 + v79 - 1560198380 + ((v82 | ~v80) ^ v81);
  LODWORD(v51) = HIDWORD(v51);
  v83 = (v51 >> 17) + v82;
  HIDWORD(v51) = v31 + v80 + 1309151649 + ((v83 | ~v81) ^ v82);
  LODWORD(v51) = HIDWORD(v51);
  v84 = (v51 >> 11) + v83;
  HIDWORD(v51) = v16 + v81 - 145523070 + ((v84 | ~v82) ^ v83);
  LODWORD(v51) = HIDWORD(v51);
  v85 = (v51 >> 26) + v84;
  HIDWORD(v51) = v27 + v82 - 1120210379 + ((v85 | ~v83) ^ v84);
  LODWORD(v51) = HIDWORD(v51);
  v86 = (v51 >> 22) + v85;
  HIDWORD(v51) = v11 + v83 + 718787259 + ((v86 | ~v84) ^ v85);
  LODWORD(v51) = HIDWORD(v51);
  v87 = (v51 >> 17) + v86;
  HIDWORD(v51) = v24 + v84 - 343485551 + ((v87 | ~v85) ^ v86);
  LODWORD(v51) = HIDWORD(v51);
  *result += v85;
  result[1] = v87 + v3 + (v51 >> 11);
  result[2] = v87 + v5;
  result[3] = v86 + v4;
  return result;
}

uint64_t sub_23EB79948(unsigned int a1, int a2, unsigned __int8 *a3, unint64_t a4)
{
  if (a2 == -1)
  {
    v4 = 5000;
  }

  else
  {
    v4 = a2;
  }

  if (!a2)
  {
    v4 = 5552;
  }

  v5 = a1;
  for (i = HIWORD(a1); a4; a4 -= v7)
  {
    if (a4 >= v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = a4;
    }

    v8 = v7;
    if (v7 >= 0x10)
    {
      do
      {
        v9 = v5 + *a3;
        v10 = v9 + i;
        v11 = v9 + a3[1];
        v12 = v10 + v11;
        v13 = v11 + a3[2];
        v14 = v12 + v13;
        v15 = v13 + a3[3];
        v16 = v14 + v15;
        v17 = v15 + a3[4];
        v18 = v16 + v17;
        v19 = v17 + a3[5];
        v20 = v18 + v19;
        v21 = v19 + a3[6];
        v22 = v20 + v21;
        v23 = v21 + a3[7];
        v24 = v22 + v23;
        v25 = v23 + a3[8];
        v26 = v24 + v25;
        v27 = v25 + a3[9];
        v28 = v26 + v27;
        v29 = v27 + a3[10];
        v30 = v28 + v29;
        v31 = v29 + a3[11];
        v32 = v30 + v31;
        v33 = v31 + a3[12];
        v34 = v32 + v33;
        v35 = v33 + a3[13];
        v36 = v34 + v35;
        v37 = v35 + a3[14];
        v38 = v36 + v37;
        v5 = v37 + a3[15];
        i = v38 + v5;
        a3 += 16;
        v8 -= 16;
      }

      while (v8 > 0xF);
    }

    v39 = v8;
    v40 = a3;
    if (v8)
    {
      do
      {
        v41 = *v40++;
        v5 += v41;
        i += v5;
        --v39;
      }

      while (v39);
      a3 += v8;
    }

    v5 %= 0xFFF1u;
    i %= 0xFFF1u;
  }

  return v5 | (i << 16);
}

uint64_t sub_23EB7A848(void *a1, double a2, const char *a3, uint64_t a4, uint64_t a5)
{
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(a1, a3, 0, a5);
  objc_msgSend_setNumberOfLines_(a1, v7, 0, v8);
  objc_msgSend_setTextAlignment_(a1, v9, 1, v10);
  objc_msgSend_setLineBreakMode_(a1, v11, 0, v12);
  v16 = objc_msgSend__secondaryLabelColor(MEMORY[0x277D75348], v13, v14, v15);
  objc_msgSend_setTextColor_(a1, v17, v16, v18);
  v22 = objc_msgSend_systemFontOfSize_(MEMORY[0x277D74300], v19, v20, v21, a2);
  objc_msgSend_setFont_(a1, v23, v22, v24);
  objc_msgSend_setAdjustsFontSizeToFitWidth_(a1, v25, 1, v26);
  v30 = objc_msgSend_font(a1, v27, v28, v29);
  objc_msgSend_pointSize(v30, v31, v32, v33);
  v35 = v34 + -4.0;
  v39 = objc_msgSend_font(a1, v36, v37, v38);
  objc_msgSend_pointSize(v39, v40, v41, v42);
  v47 = v35 / v46;

  return objc_msgSend_setMinimumScaleFactor_(a1, v43, v44, v45, v47);
}

double sub_23EB7AD5C(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a3, a4, a5);
  objc_msgSend_scale(v6, v7, v8, v9);
  if (v10 < 2.0)
  {
    v11 = a1;
    return roundf(v11);
  }

  return a1;
}

double sub_23EB7BE9C(double a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_mainScreen(MEMORY[0x277D759A0], a3, a4, a5);
  objc_msgSend_scale(v6, v7, v8, v9);
  if (v10 < 2.0)
  {
    v11 = a1;
    return roundf(v11) + -0.5;
  }

  return a1;
}

uint64_t sub_23EB7C020(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23EC13544(a1, a2, a3, a4);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(a1, v6, 0, v7);
  v10 = objc_msgSend_imageNamed_(ImageStore, v8, @"Reset-Modem", v9);
  v11 = [AUImageView alloc];
  v14 = objc_msgSend_initWithImage_(v11, v12, v10, v13);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v14, v15, 0, v16);
  objc_msgSend_addSubview_(a1, v17, v14, v18);

  v19 = objc_alloc_init(AULabel);
  v20 = sub_23EB6CD3C(@"CyclePower", @"AirPortSettings");
  objc_msgSend_setText_(v19, v21, v20, v22);
  if (v5 == 1)
  {
    v26 = 14.0;
  }

  else
  {
    v26 = 17.0;
  }

  sub_23EB7A848(v19, v26, v23, v24, v25);
  objc_msgSend_sizeToFit(v19, v27, v28, v29);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v19, v30, 0, v31);
  objc_msgSend_frame(v14, v32, v33, v34);
  v36 = v35 * 0.5;
  objc_msgSend_textRectForBounds_limitedToNumberOfLines_(v19, v37, 0, v38, 0.0, 0.0, (floorf(v36) + -10.0), 3.40282347e38);
  v40 = v39;
  objc_msgSend_bounds(v19, v41, v42, v43);
  v49 = v48;
  if (v40 == v48)
  {
    objc_msgSend_frame(v14, v44, v45, v46);
    v51 = v50 * 0.5;
    objc_msgSend_setPreferredMaxLayoutWidth_(v19, v52, v53, v54, (floorf(v51) + -10.0));
  }

  LODWORD(v47) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(v19, v44, 1, v46, v47);
  LODWORD(v55) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(v19, v56, 0, v57, v55);
  objc_msgSend_addSubview_(a1, v58, v19, v59);

  v60 = objc_alloc_init(AULabel);
  v61 = sub_23EB6CD3C(@"RemoveBattery", @"AirPortSettings");
  objc_msgSend_setText_(v60, v62, v61, v63);
  sub_23EB7A848(v60, v26, v64, v65, v66);
  objc_msgSend_setTranslatesAutoresizingMaskIntoConstraints_(v60, v67, 0, v68);
  objc_msgSend_sizeToFit(v60, v69, v70, v71);
  objc_msgSend_frame(v14, v72, v73, v74);
  v76 = v75 * 0.5;
  objc_msgSend_textRectForBounds_limitedToNumberOfLines_(v60, v77, 0, v78, 0.0, 0.0, (floorf(v76) + -10.0), 3.40282347e38);
  v80 = v79;
  objc_msgSend_bounds(v60, v81, v82, v83);
  v89 = v88;
  if (v80 == v88)
  {
    objc_msgSend_frame(v14, v84, v85, v86);
    v91 = v90 * 0.5;
    objc_msgSend_setPreferredMaxLayoutWidth_(v60, v92, v93, v94, (floorf(v91) + -10.0));
  }

  LODWORD(v87) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(v60, v84, 1, v86, v87);
  LODWORD(v95) = 1148846080;
  objc_msgSend_setContentCompressionResistancePriority_forAxis_(v60, v96, 0, v97, v95);
  objc_msgSend_addSubview_(a1, v98, v60, v99);

  v100 = MEMORY[0x277CCAAD0];
  objc_msgSend_size(v10, v101, v102, v103);
  v106 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v100, v104, v14, 7, 0, 0, 0, 1.0, v105);
  objc_msgSend_addConstraint_(a1, v107, v106, v108);
  v109 = MEMORY[0x277CCAAD0];
  objc_msgSend_size(v10, v110, v111, v112);
  v114 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v109, v113, v14, 8, 0, 0, 0, 1.0);
  objc_msgSend_addConstraint_(a1, v115, v114, v116);
  v118 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v117, v14, 9, 0, a1, 9, 1.0, 0.0);
  objc_msgSend_addConstraint_(a1, v119, v118, v120);
  v124 = MEMORY[0x277CCAAD0];
  if (v40 == v49)
  {
    objc_msgSend_frame(v14, v121, v122, v123);
    v126 = v125 * 0.286458343;
    v128 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v124, v127, v19, 9, 0, v14, 1, 1.0, floorf(v126));
    LODWORD(v129) = 1132068864;
    objc_msgSend_setPriority_(v128, v130, v131, v132, v129);
  }

  else
  {
    v135 = _NSDictionaryOfVariableBindings(&cfstr_Cyclelabel.isa, v19, 0);
    v137 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v124, v136, @"H:|-(>=10)-[cycleLabel]", 0x10000, 0, v135);
    objc_msgSend_addConstraints_(a1, v138, v137, v139);
    v128 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v140, v19, 2, 0, v14, 9, 1.0, -14.0);
  }

  objc_msgSend_addConstraint_(a1, v133, v128, v134);
  v141 = MEMORY[0x277CCAAD0];
  v142 = _NSDictionaryOfVariableBindings(&cfstr_CyclelabelImag.isa, v19, v14, 0);
  v144 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v141, v143, @"V:|-20-[cycleLabel]-(>=20)-[imageView]-20-|", 0, 0, v142);
  objc_msgSend_addConstraints_(a1, v145, v144, v146);
  v150 = MEMORY[0x277CCAAD0];
  if (v80 == v89)
  {
    objc_msgSend_frame(v14, v147, v148, v149);
    v152 = v151 * 0.713541667;
    v154 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(v150, v153, v60, 9, 0, v14, 1, 1.0, floorf(v152));
    LODWORD(v155) = 1132068864;
    objc_msgSend_setPriority_(v154, v156, v157, v158, v155);
  }

  else
  {
    v161 = _NSDictionaryOfVariableBindings(&cfstr_Removelabel.isa, v60, 0);
    v163 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v150, v162, @"H:[removeLabel]-(>=10)-|", 0x10000, 0, v161);
    objc_msgSend_addConstraints_(a1, v164, v163, v165);
    v154 = objc_msgSend_constraintWithItem_attribute_relatedBy_toItem_attribute_multiplier_constant_(MEMORY[0x277CCAAD0], v166, v60, 1, 0, v14, 9, 1.0, 14.0);
  }

  objc_msgSend_addConstraint_(a1, v159, v154, v160);
  v167 = MEMORY[0x277CCAAD0];
  v168 = _NSDictionaryOfVariableBindings(&cfstr_RemovelabelIma.isa, v60, v14, 0);
  v170 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v167, v169, @"V:|-20-[removeLabel]-(>=20)-[imageView]-20-|", 0, 0, v168);
  objc_msgSend_addConstraints_(a1, v171, v170, v172);
  v173 = MEMORY[0x277CCAAD0];
  v174 = _NSDictionaryOfVariableBindings(&cfstr_CyclelabelRemo.isa, v19, v60, 0);
  v176 = objc_msgSend_constraintsWithVisualFormat_options_metrics_views_(v173, v175, @"H:[cycleLabel]-(>=12)-[removeLabel]", 65544, 0, v174);
  objc_msgSend_addConstraints_(a1, v177, v176, v178);

  return objc_msgSend_setNeedsLayout(a1, v179, v180, v181);
}

uint64_t sub_23EB7C610(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = malloc_type_calloc(1uLL, 0x80uLL, 0x1090040AE1C4F64uLL);
  if (!v2)
  {
    return 4294960568;
  }

  v3 = v2;
  *v2 = -2441908381;
  *(v2 + 12) = -1;
  if (pipe(v6))
  {
    if (*__error())
    {
      v4 = *__error();
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v4 = 4294960596;
    }

    sub_23EB7CD20(v3);
    return v4;
  }

LABEL_5:
  v4 = 0;
  *(v3 + 12) = vrev64_s32(v6[0]);
  v3[3] = sub_23EB7C738;
  v3[4] = sub_23EB7C8D0;
  v3[5] = sub_23EB7C9D0;
  v3[6] = sub_23EB7CAFC;
  *a1 = v3;
  return v4;
}

uint64_t sub_23EB7C738(uint64_t a1, size_t a2, uint64_t a3, char *__dst, size_t *a5, int a6, uint64_t a7)
{
  if (a1 && *a1 == 1853058915)
  {
    if (*(a1 + 8))
    {
      v9 = 0;
      result = 4294960573;
      goto LABEL_6;
    }

    if ((*(a1 + 4) & 0x80000000) != 0)
    {
      v9 = 0;
      result = 4294960551;
    }

    else
    {
      v11 = a7;
      v13 = __dst;
      v14 = a3;
      v16 = *(a1 + 64);
      v17 = *(a1 + 72) - v16;
      if (v17 < 1)
      {
        v9 = 0;
      }

      else
      {
        if (v17 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = *(a1 + 72) - v16;
        }

        memcpy(__dst, v16, v9);
        *(a1 + 64) += v9;
        v13 += v9;
        v14 -= v9;
      }

      if (v14 >= 1)
      {
        while (1)
        {
          v18 = recv(*(a1 + 4), v13, v14, a6);
          if (v18 >= 1)
          {
            break;
          }

          if (!v18)
          {
            if (v9 >= a2)
            {
              result = 0;
            }

            else
            {
              result = 4294960543;
            }

            goto LABEL_6;
          }

          if (!*__error())
          {
            result = 4294960596;
            goto LABEL_6;
          }

          result = *__error();
          if (result != 4)
          {
            if (result != 35)
            {
              goto LABEL_6;
            }

            if (v9 >= a2)
            {
              goto LABEL_29;
            }

            result = sub_23EB7CFB0(a1, *(a1 + 4), 0, v11);
            if (result)
            {
              goto LABEL_6;
            }

LABEL_27:
            result = 0;
            if (v14 <= 0)
            {
              goto LABEL_6;
            }
          }
        }

        v13 += v18;
        v14 -= v18;
        v9 += v18;
        goto LABEL_27;
      }

LABEL_29:
      result = 0;
    }
  }

  else
  {
    v9 = 0;
    result = 4294960556;
  }

LABEL_6:
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

uint64_t sub_23EB7C8D0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 == 1853058915)
  {
    if (*(a1 + 8))
    {
      return 4294960573;
    }

    if ((*(a1 + 4) & 0x80000000) != 0)
    {
      return 4294960551;
    }

    v6 = a3;
    if (!a3)
    {
      return 0;
    }

    v7 = a4;
    while (1)
    {
      v9 = send(*(a1 + 4), a2, v6, 0);
      if (v9 < 1)
      {
        if (!*__error())
        {
          return 4294960596;
        }

        result = *__error();
        if (result != 4)
        {
          if (result != 35)
          {
            return result;
          }

          result = sub_23EB7CFB0(a1, *(a1 + 4), 1, v7);
          if (result)
          {
            return result;
          }
        }
      }

      else
      {
        a2 += v9;
        v6 -= v9;
      }

      result = 0;
      if (!v6)
      {
        return result;
      }
    }
  }

  return 4294960556;
}

uint64_t sub_23EB7C9D0(uint64_t a1, iovec *a2, int a3, uint64_t a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 == 1853058915)
  {
    if (*(a1 + 8))
    {
      return 4294960573;
    }

    if ((*(a1 + 4) & 0x80000000) != 0)
    {
      return 4294960551;
    }

    v6 = a4;
    while (1)
    {
      while (1)
      {
        v9 = writev(*(a1 + 4), a2, a3);
        if (v9 < 0)
        {
          break;
        }

        v10 = v9;
        if (a3 < 1)
        {
          if (!a3)
          {
            return 0;
          }

          iov_len = a2->iov_len;
        }

        else
        {
          while (1)
          {
            iov_len = a2->iov_len;
            if (v10 < iov_len)
            {
              break;
            }

            result = 0;
            ++a2;
            v10 -= iov_len;
            v12 = __OFSUB__(a3--, 1);
            if ((a3 < 0) ^ v12 | (a3 == 0))
            {
              return result;
            }
          }
        }

        a2->iov_base = a2->iov_base + v10;
        a2->iov_len = iov_len - v10;
LABEL_23:
        result = sub_23EB7CFB0(a1, *(a1 + 4), 1, v6);
        if (result)
        {
          return result;
        }
      }

      if (!*__error())
      {
        return 4294960596;
      }

      result = *__error();
      if (result != 4)
      {
        if (result != 35)
        {
          return result;
        }

        goto LABEL_23;
      }
    }
  }

  return 4294960556;
}

uint64_t sub_23EB7CAFC(uint64_t a1, void *a2, int a3, void *a4, int a5, int a6, off_t a7, uint64_t a8, int a9)
{
  if (!a1 || *a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  if ((*(a1 + 4) & 0x80000000) != 0)
  {
    return 4294960551;
  }

  if (a3 < 1)
  {
LABEL_12:
    if (lseek(a6, a7, 0) != -1)
    {
      goto LABEL_13;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    v10 = *__error();
    if (!v10)
    {
LABEL_13:
      if (a8 < 1)
      {
        v21 = 0;
LABEL_30:
        if (*a1 == 1853058915)
        {
          if (a5 < 1)
          {
LABEL_35:
            v10 = 0;
          }

          else
          {
            v27 = &a4[2 * a5];
            while (1)
            {
              v25 = (*(a1 + 32))(a1, *a4, a4[1], a9);
              if (v25)
              {
                break;
              }

              a4 += 2;
              if (a4 >= v27)
              {
                goto LABEL_35;
              }
            }

LABEL_38:
            v10 = v25;
          }
        }

        else
        {
          v10 = 4294960556;
        }
      }

      else
      {
        v20 = malloc_type_malloc(0x100000uLL, 0x100004077774924uLL);
        if (!v20)
        {
          return 4294960568;
        }

        v21 = v20;
        while (1)
        {
          v22 = a8 >= 0x100000 ? 0x100000 : a8;
          v23 = read(a6, v21, v22);
          v24 = v23;
          if (v23 < 1)
          {
            break;
          }

          v25 = (*(a1 + 32))(a1, v21, v23, a9);
          if (v25)
          {
            goto LABEL_38;
          }

          v26 = a8 <= v24;
          a8 -= v24;
          if (v26)
          {
            goto LABEL_30;
          }
        }

        if (v23)
        {
          if (*__error())
          {
            v10 = *__error();
          }

          else
          {
            v10 = 4294960596;
          }
        }

        else
        {
          v10 = 4294960546;
        }
      }

      if (v21)
      {
        free(v21);
      }
    }
  }

  else
  {
    v17 = a2;
    v18 = &a2[2 * a3];
    while (1)
    {
      v19 = (*(a1 + 32))(a1, *v17, v17[1], a9);
      if (v19)
      {
        return v19;
      }

      v17 += 2;
      if (v17 >= v18)
      {
        goto LABEL_12;
      }
    }
  }

  return v10;
}

uint64_t sub_23EB7CD20(void *a1)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  v2 = a1[7];
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 1);
  if ((v3 & 0x80000000) == 0)
  {
    if (close(v3) && *__error())
    {
      __error();
    }

    *(a1 + 1) = -1;
  }

  v4 = *(a1 + 3);
  if ((v4 & 0x80000000) == 0)
  {
    if (close(v4) && *__error())
    {
      __error();
    }

    *(a1 + 3) = -1;
  }

  v5 = *(a1 + 4);
  if ((v5 & 0x80000000) == 0)
  {
    if (close(v5) && *__error())
    {
      __error();
    }

    *(a1 + 4) = -1;
  }

  v6 = a1[10];
  if (v6)
  {
    free(v6);
    a1[10] = 0;
  }

  v7 = a1[14];
  if (v7)
  {
    free(v7);
  }

  free(a1);
  return 0;
}

uint64_t sub_23EB7CE1C(_DWORD *a1)
{
  if (a1 && *a1 == 1853058915)
  {
    return a1[1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_23EB7CE44(uint64_t a1)
{
  if (!a1 || *a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  *(a1 + 8) = 1;
  if (write(*(a1 + 12), "Q", 1uLL) == 1)
  {
    return 0;
  }

  if (*__error())
  {
    return *__error();
  }

  return 4294960596;
}

uint64_t sub_23EB7CEE4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  v8 = -1;
  result = sub_23EC11214(a3, a4, 6, 1000000000 * a5, -1, -1, 0, 0, &v8);
  if (result == -6722)
  {
    return 4294960543;
  }

  if (!result)
  {
    v7 = v8;
    *(a1 + 4) = v8;
    return (v7 >> 31) & 0xFFFFE59F;
  }

  return result;
}

uint64_t sub_23EB7CFB0(uint64_t a1, unsigned int a2, int a3, unsigned int a4)
{
  if (!a1)
  {
    return 4294960556;
  }

  if (*a1 != 1853058915)
  {
    return 4294960556;
  }

  if (*(a1 + 8))
  {
    return 4294960573;
  }

  v6 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    return 4294960551;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0;
  v18 = 0;
  memset(&v27, 0, sizeof(v27));
  v9 = *(a1 + 16);
  if (__darwin_check_fd_set_overflow(v9, &v27, 0))
  {
    *(v27.fds_bits + ((v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v9;
  }

  if (a3 == 2)
  {
    if (!__darwin_check_fd_set_overflow(v6, &v27, 0))
    {
      goto LABEL_21;
    }

    v12 = v6 >> 5;
    v13 = v27.fds_bits[v6 >> 5] | (1 << v6);
LABEL_20:
    v27.fds_bits[v12] = v13;
LABEL_21:
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = &v19;
    v11 = &v19;
    if (!__darwin_check_fd_set_overflow(v6, &v19, 0))
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (a3 == 1)
  {
    if (!__darwin_check_fd_set_overflow(v6, &v27, 0))
    {
      goto LABEL_21;
    }

    v12 = v6 >> 5;
    v13 = v27.fds_bits[v6 >> 5] & ~(1 << v6);
    goto LABEL_20;
  }

  if (a3)
  {
    return 4294960591;
  }

  v10 = &v27;
  v11 = 0;
  if (__darwin_check_fd_set_overflow(v6, &v27, 0))
  {
LABEL_22:
    v10->fds_bits[v6 >> 5] |= 1 << v6;
  }

LABEL_23:
  if ((a4 & 0x80000000) != 0)
  {
    v14 = 0;
  }

  else
  {
    v17 = a4;
    LODWORD(v18) = 0;
    v14 = &v17;
  }

  if (*(a1 + 16) > v6)
  {
    v6 = *(a1 + 16);
  }

  while (1)
  {
    v15 = select(v6 + 1, &v27, v11, 0, v14);
    if ((v15 & 0x80000000) == 0)
    {
      break;
    }

    if (!*__error())
    {
      return 4294960596;
    }

    result = *__error();
    if (result != 4)
    {
      return result;
    }
  }

  if (v15)
  {
    v16 = *(a1 + 16);
    if (!__darwin_check_fd_set_overflow(v16, &v27, 0) || ((*(v27.fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v16) & 1) == 0)
    {
      return 0;
    }

    return 4294960573;
  }

  return 4294960574;
}

uint64_t sub_23EB7D23C(char *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = 0;
  if (!sub_23EB7DE5C(a1, 0, &v11 + 1, &v11, 0, 0, 0))
  {
    if (a3 >= 0x10)
    {
      *a2 = 0;
      *(a2 + 8) = 0;
      *a2 = 528;
      *(a2 + 2) = bswap32(v11) >> 16;
      *(a2 + 4) = bswap32(HIDWORD(v11));
      result = 0;
      if (!a4)
      {
        return result;
      }

      v9 = 16;
      goto LABEL_9;
    }

    return 4294960553;
  }

  if (a3 < 0x1C)
  {
    return 4294960553;
  }

  v10 = 0;
  result = sub_23EB7D978(a1, 0, &v12, &v10, &v11, 0, 0);
  if (!result)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    *a2 = 7708;
    *(a2 + 2) = bswap32(v11) >> 16;
    *(a2 + 8) = v12;
    *(a2 + 24) = v10;
    result = 0;
    if (a4)
    {
      v9 = 28;
LABEL_9:
      *a4 = v9;
    }
  }

  return result;
}

uint64_t sub_23EB7D380(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30 || v1 == 2)
  {
    return bswap32(*(a1 + 2)) >> 16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_23EB7D3A8(uint64_t result, unsigned int a2)
{
  v2 = *(result + 1);
  if (v2 == 30 || v2 == 2)
  {
    *(result + 2) = bswap32(a2) >> 16;
  }

  return result;
}

uint64_t sub_23EB7D3C8(int a1, int a2)
{
  v3 = a2 != 0;
  v4 = fcntl(a1, 3, 0);
  if (fcntl(a1, 4, v4 & 0xFFFFFFFB | (4 * v3)) != -1)
  {
    return 0;
  }

  if (*__error())
  {
    return *__error();
  }

  return 4294960596;
}

uint64_t sub_23EB7D444(int a1, int a2, int a3)
{
  v13 = a3;
  result = 4294960591;
  if ((a1 & 0x80000000) == 0 && (a2 - 4097) <= 1)
  {
    v12 = 0;
    if (a3 < 1)
    {
      if (a3 == -1)
      {
        return 0;
      }

      else
      {
        v7 = -a3;
        v11 = 4;
        if (sysctlbyname("kern.ipc.maxsockbuf", &v12, &v11, 0, 0) && (!*__error() || *__error()))
        {
          v12 = 0x40000;
        }

        v8 = (85 * v12 / 100 + 4095) & 0xFFFFF000;
        if (v8 >= v7)
        {
          v9 = v7;
        }

        else
        {
          v9 = (85 * v12 / 100 + 4095) & 0xFFFFF000;
        }

        if (a3)
        {
          v8 = v9;
        }

        v12 = v8;
        do
        {
          result = setsockopt(a1, 0xFFFF, a2, &v12, 4u);
          if (!result)
          {
            break;
          }

          if (*__error())
          {
            result = *__error();
            if (!result)
            {
              return result;
            }
          }

          else
          {
            result = 4294960596;
          }

          v10 = v12;
          v12 -= 1024;
        }

        while (v10 > 33791);
      }
    }

    else
    {
      result = setsockopt(a1, 0xFFFF, a2, &v13, 4u);
      if (result)
      {
        if (*__error())
        {
          return *__error();
        }

        else
        {
          return 4294960596;
        }
      }
    }
  }

  return result;
}

uint64_t sub_23EB7D5D0(int a1, int a2)
{
  v3 = a2;
  result = setsockopt(a1, 0xFFFF, 4356, &v3, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t sub_23EB7D624(int a1, int a2, int a3)
{
  v7 = a3;
  if (a1 < 0)
  {
    return 4294960591;
  }

  if (a2 != 30 && a2 != 2 || !a3)
  {
    return 0;
  }

  v3 = a2 == 30;
  if (a2 == 30)
  {
    v4 = 41;
  }

  else
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = 125;
  }

  else
  {
    v5 = 25;
  }

  result = setsockopt(a1, v4, v5, &v7, 4u);
  if (result)
  {
    if (*__error())
    {
      return *__error();
    }

    else
    {
      return 4294960596;
    }
  }

  return result;
}

uint64_t sub_23EB7D6B0(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30)
  {
    v2 = 28;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

unsigned __int8 *sub_23EB7D6D0(unsigned __int8 *__src, void *__dst)
{
  v2 = __src[1];
  if (v2 == 2)
  {
    v3 = 16;
  }

  else
  {
    if (v2 != 30)
    {
      return __src;
    }

    v3 = 28;
  }

  return memcpy(__dst, __src, v3);
}

uint64_t sub_23EB7D704(int a1)
{
  v1 = 0;
  v4 = a1;
  while (!sub_23EB7D768(&v4, &byte_23EC21D18[v1], byte_23EC21D18[v1 + 4]))
  {
    v2 = v1 > 0x45;
    v1 += 5;
    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_23EB7D768(unsigned __int8 *a1, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 >= 8)
  {
    v3 = ((a3 - 8) >> 3) + 1;
    v4 = &a2[v3];
    v5 = &a1[v3];
    while (*a1 == *a2)
    {
      ++a2;
      ++a1;
      LOBYTE(a3) = a3 - 8;
      if (a3 <= 7u)
      {
        a1 = v5;
        a2 = v4;
        return !a3 || 0xFFu >> a3 >= (*a2 ^ *a1);
      }
    }

    return 0;
  }

  return !a3 || 0xFFu >> a3 >= (*a2 ^ *a1);
}

BOOL sub_23EB7D7E4(unsigned __int8 *a1, char a2)
{
  v4 = 0;
  while (!sub_23EB7D768(a1, *(&off_278C68EA8 + v4), *(&off_278C68EA8 + v4 + 8)))
  {
    v4 += 16;
    if (v4 == 400)
    {
      return 0;
    }
  }

  if ((a2 & 1) != 0 && !v4 || (a2 & 2) != 0 && v4 == 320)
  {
    return 0;
  }

  return (a2 & 4) == 0 || v4 != 304;
}

BOOL sub_23EB7D870(unsigned int a1)
{
  result = 0;
  v3 = bswap32(a1);
  if ((v3 & 0xFFFF0000) != 0xA9FE0000 && (v3 + 0x20000000) >> 24 >= 0x21 && (v3 & 0xFF000000) != 0x7F000000)
  {
    result = 0;
    if ((v3 & 0xFFFF0000) != 0xC0A80000 && (v3 & 0xFF000000) != 0xA000000 && (v3 & 0xFFF00000) != 0xAC100000)
    {
      result = 0;
      v4 = v3 >> 8;
      if (v4 != 12582914 && v4 != 12989284)
      {
        return v4 != 13303921;
      }
    }
  }

  return result;
}

uint64_t sub_23EB7D944(unsigned int *a1, unsigned int *a2)
{
  v2 = bswap64(*a1 | (*(a1 + 2) << 32));
  v3 = bswap64(*a2 | (*(a2 + 2) << 32));
  v4 = v2 >= v3;
  v5 = v2 > v3;
  v6 = !v4;
  return (v5 - v6);
}

uint64_t sub_23EB7D978(char *a1, char a2, _OWORD *a3, unsigned int *a4, int *a5, unsigned int *a6, char **a7)
{
  v70 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294960591;
  }

  v12 = a1 + 1;
  if (*a1 != 91)
  {
    v12 = a1;
  }

  *v69 = v12;
  v68 = 0uLL;
  if (*v12 == 58)
  {
    v13 = *++v12;
    *v69 = v12;
    if (v13 != 58)
    {
      return 4294960554;
    }
  }

  v14 = 0;
  v15 = 0;
LABEL_7:
  v16 = 0;
  v17 = &v69[v14 - 16];
  v18 = v12;
  v19 = v15;
  while (2)
  {
    v15 = v19;
    v12 = v18 + 1;
    v20 = 1;
    while (1)
    {
      v21 = *(v12 - 1);
      if ((v21 - 37) <= 0x38 && ((1 << (v21 - 37)) & 0x100000000000401) != 0 || v21 == 0)
      {
        *v69 = v12;
        goto LABEL_32;
      }

      v21 = v21;
      if ((v21 - 97) < 6)
      {
        v21 = v21 - 32;
      }

      v24 = v21 - 48;
      if (v24 >= 0xA && (v21 - 65) > 5)
      {
        break;
      }

      v20 = v16 >> 12;
      if ((v16 >> 12))
      {
        return 4294960586;
      }

      ++v12;
      v16 = (16 * v16) | byte_23EC21DF0[v24];
    }

    if (v21 == 58)
    {
      if (v20)
      {
        v18 = v12;
        v19 = &v69[v14 - 16];
        if (!v15)
        {
          continue;
        }

        return 4294960554;
      }

      *v69 = v12;
      if (*v12)
      {
        if (v14 <= 0xE)
        {
          v69[v14 - 16] = BYTE1(v16);
          v14 += 2;
          v17[1] = v16;
          goto LABEL_7;
        }

        return 4294960545;
      }

      return 4294960546;
    }

    break;
  }

  *v69 = v12;
  if ((a2 & 8) == 0 && v21 == 46 && v14 <= 0xC)
  {
    v32 = a7;
    v31 = sub_23EB7DFF8(v18, &v69[v14 - 16], v69);
    if (v31)
    {
      return v31;
    }

    v17 += 4;
    v12 = ++*v69;
    a7 = v32;
    if (!v15)
    {
      goto LABEL_48;
    }

LABEL_36:
    if (v17 < v69)
    {
      v26 = v17 - v15;
      if (v17 - v15 >= 1)
      {
        v27 = v26 & 0x7FFFFFFF;
        v28 = (v26 + 1) - 1;
        v29 = &v68 + 15;
        v30 = &v15[v27 - 1];
        do
        {
          *v29-- = *v30;
          *v30-- = 0;
          --v28;
        }

        while (v28);
        v12 = *v69;
      }

      goto LABEL_50;
    }

    return 4294960545;
  }

LABEL_32:
  if ((v20 & 1) == 0)
  {
    if (v17 + 2 > v69)
    {
      return 4294960545;
    }

    *v17 = bswap32(v16) >> 16;
    v17 += 2;
  }

  if (v15)
  {
    goto LABEL_36;
  }

LABEL_48:
  if (v17 != v69)
  {
    return 4294960546;
  }

LABEL_50:
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = v12 - 1;
  v41 = a2 & 1;
  v42 = a2 & 4;
LABEL_51:
  while (2)
  {
    v43 = *v40;
    while (1)
    {
      while (v43 == 47)
      {
        if (v37 | a2 & 2)
        {
          v61 = v37 == 0;
          goto LABEL_105;
        }

        v44 = *++v40;
        v43 = v44;
        if ((v44 - 48) <= 9)
        {
          do
          {
            v38 = v43 + 10 * v38 - 48;
            v45 = *++v40;
            v43 = v45;
          }

          while ((v45 - 48) < 0xA);
        }

        v37 = 1;
        if (v38 >= 0x81)
        {
          return 4294960586;
        }
      }

      if (v43 == 93)
      {
        if (v39)
        {
          return 4294960554;
        }

        ++v40;
        v39 = 1;
        goto LABEL_51;
      }

      if (v43 != 58)
      {
        break;
      }

      if (v35 | v41)
      {
        v61 = v35 == 0;
LABEL_105:
        if (v61)
        {
          return 4294960560;
        }

        else
        {
          return 4294960554;
        }
      }

      v46 = *++v40;
      v43 = v46;
      if ((v46 - 48) <= 9)
      {
        do
        {
          v36 = v43 + 10 * v36 - 48;
          v47 = *++v40;
          v43 = v47;
        }

        while ((v47 - 48) < 0xA);
      }

      v31 = 4294960586;
      v35 = 1;
      if (v36 >= 0x10000)
      {
        return v31;
      }
    }

    if (v43 == 37)
    {
      if (v34 | v42)
      {
        v61 = v34 == 0;
        goto LABEL_105;
      }

      for (i = 0; ; ++i)
      {
        v50 = *++v40;
        v49 = v50;
        v51 = (1 << (v50 - 47)) & 0x400000000801;
        v52 = (v50 - 47) > 0x2E || v51 == 0;
        v53 = !v52 || v49 == 0;
        if (v53 || i == 63)
        {
          break;
        }

        v69[i] = v49;
      }

      v63 = a3;
      v64 = a4;
      v65 = a5;
      v66 = a6;
      v67 = a7;
      v69[i] = 0;
      v54 = v39;
      v55 = v41;
      v56 = v42;
      v57 = v35;
      v33 = if_nametoindex(v69);
      v35 = v57;
      v42 = v56;
      v41 = v55;
      v39 = v54;
      if (v33)
      {
        goto LABEL_88;
      }

      v58 = v69[0];
      if (v69[0] - 48 > 9)
      {
        v33 = 0;
        v59 = v69;
      }

      else
      {
        v33 = 0;
        v59 = v69;
        do
        {
          v33 = v58 + 10 * v33 - 48;
          v60 = *++v59;
          v58 = v60;
        }

        while ((v60 - 48) < 0xA);
      }

      if (!v58 && v59 != v69 && (v59 - v69) < 11)
      {
LABEL_88:
        v34 = 1;
        a6 = v66;
        a7 = v67;
        a4 = v64;
        a5 = v65;
        a3 = v63;
        continue;
      }

      return 4294960554;
    }

    break;
  }

  if (a3)
  {
    *a3 = v68;
  }

  if (a4 && v34)
  {
    *a4 = v33;
  }

  if (a5 && v35)
  {
    *a5 = v36;
  }

  if (a6 && v37)
  {
    *a6 = v38;
  }

  v31 = 0;
  if (a7)
  {
    *a7 = v40;
  }

  return v31;
}