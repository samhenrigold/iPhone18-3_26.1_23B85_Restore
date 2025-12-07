uint64_t MKFetchMediaSetup(const void *a1, CFBundleRef bundle, CFTypeRef *a3)
{
  v3 = 4294967246;
  if (!a1 || !a3)
  {
    return v3;
  }

  if (!bundle)
  {
    v11 = MKAccessLibrary(0);
    if (!v11)
    {
      return 4294961987;
    }

    v12 = v11;
    v6 = CFBundleCopyResourceURL(v11, @"defaults", @"plist", 0);
    CFRelease(v12);
    if (v6)
    {
      goto LABEL_5;
    }

    return 4294967253;
  }

  v6 = CFBundleCopyResourceURL(bundle, @"defaults", @"plist", 0);
  if (!v6)
  {
    return 4294967253;
  }

LABEL_5:
  v7 = CFReadStreamCreateWithFile(0, v6);
  CFRelease(v6);
  if (!v7)
  {
    return 4294967273;
  }

  if (CFReadStreamOpen(v7))
  {
    v8 = CFPropertyListCreateWithStream(0, v7, 0, 0, 0, 0);
    v9 = v8;
    if (v8)
    {
      Value = CFDictionaryGetValue(v8, a1);
      *a3 = Value;
      if (Value)
      {
        v3 = 0;
        *a3 = CFRetain(Value);
      }

      else
      {
        v3 = 4294966881;
      }
    }

    else
    {
      v3 = 4294967277;
    }
  }

  else
  {
    v9 = 0;
    v3 = 4294967273;
  }

  CFReadStreamClose(v7);
  CFRelease(v7);
  if (v9)
  {
    CFRelease(v9);
  }

  return v3;
}

uint64_t MKGetMediaDefaults(const void *a1, __CFBundle *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  theDict = 0;
  *a4 = 0;
  *a3 = 0;
  if (!a1)
  {
    return 4294967246;
  }

  result = MKFetchMediaSetup(a1, a2, &theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Drivers");
    *a3 = Value;
    if (Value)
    {
      *a3 = CFRetain(Value);
    }

    v8 = CFDictionaryGetValue(theDict, @"Patches");
    *a4 = v8;
    if (v8)
    {
      *a4 = CFRetain(v8);
    }

    result = theDict;
    if (theDict)
    {
      CFRelease(theDict);
      return 0;
    }
  }

  return result;
}

__CFDictionary *MKMakePartDictExtended(int a1, const char *a2, const char *a3, int a4, uint64_t a5, int *a6, int a7)
{
  v26 = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  v22 = a7;
  v23 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v14 = CFStringCreateWithCString(0, a2, 0);
    CFDictionarySetValue(Mutable, @"Partition Name", v14);
    CFRelease(v14);
    if (a1)
    {
      v15 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    }

    else
    {
      v15 = CFStringCreateWithCString(0, a3, 0);
    }

    v17 = v15;
    CFDictionarySetValue(Mutable, @"Partition Type", v15);
    CFRelease(v17);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
    CFDictionarySetValue(Mutable, @"Partition Size", v18);
    CFRelease(v18);
    if (a5)
    {
      OSType2Ascii(a5, cStr, 3);
      v19 = CFStringCreateWithCString(0, cStr, 0);
      CFDictionarySetValue(Mutable, @"Partition Signature", v19);
      CFRelease(v19);
    }

    if (a7)
    {
      v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v22);
      CFDictionarySetValue(Mutable, @"Partition Options", v20);
      CFRelease(v20);
    }

    v16 = 0;
  }

  else
  {
    v16 = *__error();
  }

  *a6 = v16;
  return Mutable;
}

uint64_t MKBuildDrivers(Ptr *a1, CFDictionaryRef theDict, const __CFArray *a3, __CFBundle *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a1;
  LOWORD(a1) = -50;
  if (v8 && theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Drivers");
    if (Value)
    {
      v15 = Value;
      Count = CFArrayGetCount(a3);
      if (Count)
      {
        v17 = 0;
        v18 = Count;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, v17);
          if (!ValueAtIndex)
          {
            break;
          }

          v20 = CFDictionaryGetValue(v15, ValueAtIndex);
          if (!v20)
          {
            break;
          }

          LODWORD(a1) = MKBuildDriver(v8, v20, a4, a5, a7, a8);
          if (a1)
          {
            return a1;
          }

          if (++v17 >= v18)
          {
            goto LABEL_10;
          }
        }

        LOWORD(a1) = -415;
      }

      else
      {
LABEL_10:
        LOWORD(a1) = 0;
      }
    }

    else
    {
      LOWORD(a1) = -417;
    }
  }

  return a1;
}

uint64_t MKBuildDriver(Ptr *a1, CFDictionaryRef theDict, __CFBundle *a3, unsigned int a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v42 = *MEMORY[0x277D85DE8];
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  memset(&v36, 0, sizeof(v36));
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"Partition Name");
  if (!Value || !CFStringGetCString(Value, &v40[2] + 12, 32, 0) || (v13 = CFDictionaryGetValue(theDict, @"Partition Type")) == 0 || !CFStringGetCString(v13, (v40 | 0xC), 32, 0))
  {
    v17 = -1;
    v18 = -417;
    goto LABEL_9;
  }

  v14 = CFDictionaryGetValue(theDict, @"Driver Signature");
  if (v14)
  {
    v15 = v14;
    *buffer = 0;
    v16 = CFGetTypeID(v14);
    if (v16 == CFStringGetTypeID())
    {
      v43.location = 0;
      v43.length = 4;
      CFStringGetBytes(v15, v43, 0, 0, 0, buffer, 4, 0);
    }

    else if (v16 == CFDataGetTypeID())
    {
      v44.location = 0;
      v44.length = 4;
      CFDataGetBytes(v15, v44, buffer);
    }

    DWORD1(v40[0]) = bswap32(*buffer);
  }

  v20 = CFDictionaryGetValue(theDict, @"Driver Present");
  if (v20)
  {
    v21 = CFBooleanGetValue(v20) == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = CFDictionaryGetValue(theDict, @"Cpu");
  if (v22)
  {
    CFStringGetCString(v22, &v40[4] + 12, 16, 0);
  }

  v23 = CFDictionaryGetValue(theDict, @"Chain Compatible");
  if (v23 && CFBooleanGetValue(v23))
  {
    LOWORD(v40[0]) |= 0x100u;
  }

  v24 = CFDictionaryGetValue(theDict, @"Chain Driver");
  if (v24 && CFBooleanGetValue(v24))
  {
    LOWORD(v40[0]) |= 0x200u;
  }

  v25 = CFDictionaryGetValue(theDict, @"Partition Size");
  if (!v25)
  {
    v26 = 0;
    goto LABEL_34;
  }

  CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr);
  v26 = valuePtr;
  if (valuePtr <= 0x7FF)
  {
LABEL_34:
    valuePtr = v26 << 9;
  }

  OSType2Ascii(DWORD1(v40[0]), v38, 2);
  v27 = CFStringCreateWithFormat(0, 0, @"%s.%s", v40 | 0xC, v38, *&v36.st_dev, v36.st_ino, *&v36.st_uid, *&v36.st_rdev, v36.st_atimespec.tv_sec, v36.st_atimespec.tv_nsec, v36.st_mtimespec.tv_sec, v36.st_mtimespec.tv_nsec, v36.st_ctimespec.tv_sec, v36.st_ctimespec.tv_nsec, v36.st_birthtimespec.tv_sec, v36.st_birthtimespec.tv_nsec);
  if (!v27)
  {
    v17 = -1;
    goto LABEL_42;
  }

  v28 = v27;
  v29 = CFBundleCopyResourceURL(a3, v27, @"drvr", 0);
  CFRelease(v28);
  if (!v29)
  {
    v17 = -1;
    if (v21)
    {
LABEL_41:
      v18 = PMWriteDriver(a1, v40, valuePtr, a4, a5, a6);
      goto LABEL_9;
    }

LABEL_42:
    v18 = -43;
    goto LABEL_9;
  }

  CFURLGetFileSystemRepresentation(v29, 1u, buffer, 1024);
  CFRelease(v29);
  v30 = stat(buffer, &v36);
  if (v30 || ((DWORD2(v40[0]) = v36.st_size, v31 = *(*a1 + 1), !(LODWORD(v36.st_size) % v31)) ? (v32 = LODWORD(v36.st_size) / v31) : (v32 = LODWORD(v36.st_size) / v31 + 1), v33 = v32 * v31, v41 = NewPtr(v32 * v31), v30 = MemError(), !v41))
  {
    v18 = v30;
    v17 = -1;
    goto LABEL_9;
  }

  bzero(&v41[DWORD2(v40[0])], (v33 - DWORD2(v40[0])));
  v34 = open(buffer, 0, 0);
  v17 = v34;
  if (v34 != -1)
  {
    v35 = read(v34, v41, DWORD2(v40[0]));
    if (DWORD2(v40[0]) == v35)
    {
      goto LABEL_41;
    }
  }

  v18 = -1;
LABEL_9:
  if (v41)
  {
    DisposePtr(v41);
  }

  if (v17 != -1)
  {
    close(v17);
  }

  if (v18 == -1)
  {
    v18 = *__error();
  }

  return v18;
}

uint64_t MKCreatePatchPartition(char **a1, CFArrayRef theArray, CFDictionaryRef theDict, const __CFArray *a4, __CFBundle *a5, uint64_t a6, int a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, Ptr))
{
  v9 = a1;
  v31 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  strcpy(v30, "Patch Partition");
  LOWORD(a1) = -50;
  if (v9 && theDict)
  {
    v11 = a6;
    v29 = 0;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v15 = Count;
        v16 = 0;
        v17 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
          if (!ValueAtIndex)
          {
            break;
          }

          v19 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"Partition Type");
          if (Value && CFEqual(Value, @"Apple_Patches"))
          {
            v25 = CFDictionaryGetValue(v19, @"Partition Size");
            if (v25)
            {
              CFNumberGetValue(v25, kCFNumberSInt32Type, &valuePtr);
              v23 = valuePtr;
              if (valuePtr)
              {
                goto LABEL_15;
              }
            }

            break;
          }

          v16 = ++v17;
        }

        while (v15 > v17);
      }
    }

    v21 = CFDictionaryGetValue(theDict, @"Patches");
    if (v21)
    {
      v22 = CFDictionaryGetValue(v21, @"Partition Size");
      if (v22)
      {
        CFNumberGetValue(v22, kCFNumberSInt32Type, &valuePtr);
      }
    }

    v23 = valuePtr;
    if (!valuePtr)
    {
      v23 = 128;
      valuePtr = 128;
    }

LABEL_15:
    valuePtr = PMConvertBlocks(v23, 0x200u, *(*v9 + 1));
    LODWORD(a1) = PMNewPartitionExtended(v9, 12544, 0, 0, valuePtr, v30, v11, &v29, 0);
    if (!a1)
    {
      LOWORD(a1) = RebuildPatches(v9, v29, theDict, a4, a5, v11, a8, a9);
    }
  }

  return a1;
}

uint64_t RebuildPatches(uint64_t *a1, int a2, const __CFDictionary *a3, const __CFArray *a4, __CFBundle *a5, unsigned int a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, Ptr))
{
  v57 = *MEMORY[0x277D85DE8];
  if (a2 < 1)
  {
    return 4294967246;
  }

  *(*a1 + 1072 * a2 + 1036) = *(*a1 + 518) >> 9;
  result = VErasePartition(a1, a2, 0, a7, a8);
  if (result)
  {
    return result;
  }

  p = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *buffer = 0u;
  *v50 = 0u;
  Value = CFDictionaryGetValue(a3, @"Patches");
  if (!Value)
  {
    LOWORD(v36) = -417;
    return v36;
  }

  v18 = Value;
  Count = CFArrayGetCount(a4);
  if (Count < 1)
  {
    LOWORD(v20) = 0;
    goto LABEL_57;
  }

  bundle = a5;
  v45 = a6;
  v19 = 0;
  v20 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a4, v19);
    if (!ValueAtIndex)
    {
      break;
    }

    v22 = CFDictionaryGetValue(v18, ValueAtIndex);
    if (!v22)
    {
      break;
    }

    v23 = v22;
    memset(&v47, 0, sizeof(v47));
    *buffer = 0u;
    *v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    p = 0;
    v24 = CFDictionaryGetValue(v22, @"Patch Name");
    if (!v24 || (CFStringGetPascalString(v24, &v50[1] + 4, 33, 0), (v25 = CFDictionaryGetValue(v23, @"Patch Signature")) == 0) || (v58.location = 0, v58.length = 4, CFStringGetBytes(v25, v58, 0, 0, 0, buffer, 4, 0), (v26 = CFDictionaryGetValue(v23, @"Patch Vendor")) == 0) || (CFStringGetPascalString(v26, &v52 + 13, 33, 0), (v27 = CFDictionaryGetValue(v23, @"Major Vers")) == 0))
    {
      v33 = -1;
      v34 = 4294966879;
      goto LABEL_18;
    }

    CFNumberGetValue(v27, kCFNumberSInt16Type, &buffer[4]);
    v28 = CFDictionaryGetValue(v23, @"Minor Vers");
    if (v28)
    {
      CFNumberGetValue(v28, kCFNumberSInt16Type, &buffer[6]);
    }

    v29 = CFDictionaryGetValue(v23, @"Flags");
    if (v29)
    {
      v30 = v29;
      *v48 = -1;
      v31 = CFGetTypeID(v29);
      if (v31 == CFStringGetTypeID())
      {
        CFStringGetCString(v30, __str, 16, 0);
        v32 = strtoul(__str, 0, 0);
      }

      else if (v31 == CFDataGetTypeID())
      {
        v59.location = 0;
        v59.length = 4;
        CFDataGetBytes(v30, v59, v48);
        v32 = bswap32(*v48);
      }

      else
      {
        v32 = -1;
      }

      *&buffer[8] = v32;
    }

    v37 = CFStringCreateWithFormat(0, 0, @"Apple_Patches.%4.4s", buffer);
    v38 = CFBundleCopyResourceURL(bundle, v37, @"ptch", 0);
    CFRelease(v37);
    if (!v38 || (v39 = CFURLGetFileSystemRepresentation(v38, 1u, __str, 1024), CFRelease(v38), !v39))
    {
      v33 = -1;
      v34 = 4294967253;
      goto LABEL_18;
    }

    v40 = stat(__str, &v47);
    if (v40)
    {
      v34 = v40;
      v33 = -1;
      goto LABEL_18;
    }

    LODWORD(v50[0]) = v47.st_size;
    p = NewPtr(LODWORD(v47.st_size));
    v41 = MemError();
    if (p)
    {
      v42 = open(__str, 0, 0);
      v33 = v42;
      if (v42 == -1)
      {
        v34 = 0xFFFFFFFFLL;
LABEL_18:
        if (p)
        {
          DisposePtr(p);
          p = 0;
        }

        goto LABEL_20;
      }

      v43 = read(v42, p, LODWORD(v50[0]));
      if (LODWORD(v50[0]) == v43)
      {
        v34 = 0;
      }

      else
      {
        v34 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v34 = v41;
      v33 = -1;
    }

    if (v34)
    {
      goto LABEL_18;
    }

LABEL_20:
    if (v33 != -1)
    {
      close(v33);
    }

    if (v34 == -1)
    {
      v34 = *__error();
    }

    if (v34)
    {
      v35 = v34;
      LOWORD(v36) = v34;
      if (v34 != 65493)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v36 = PMAddpatch(a1, a2, buffer, p, v45, a7, a8);
      if (p)
      {
        DisposePtr(p);
        p = 0;
      }

      v35 = v20;
      if (v36)
      {
        goto LABEL_54;
      }
    }

    ++v19;
    v20 = v35;
    if (Count == v19)
    {
      LOWORD(v36) = v34;
      LOWORD(v20) = v35;
      goto LABEL_54;
    }
  }

  LOWORD(v36) = -415;
LABEL_54:
  if (p)
  {
    DisposePtr(p);
  }

  if (!v36)
  {
LABEL_57:
    LOWORD(v36) = v20;
  }

  return v36;
}

uint64_t MKMediaLayout(char **a1, const __CFDictionary *a2, __CFBundle *a3, uint64_t a4, char a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v44 = *MEMORY[0x277D85DE8];
  v38 = -50;
  if (!a1)
  {
    return v38;
  }

  v38 = -43;
  v14 = a3;
  if (!a3)
  {
    v14 = MKAccessLibrary(0);
    if (!v14)
    {
      return v38;
    }
  }

  v15 = MKLoadDB(v14, @"inventory", &v38);
  if (!v15)
  {
    v16 = 0;
    goto LABEL_38;
  }

  v34 = a5;
  v36 = a6;
  v37 = a7;
  v16 = MKLoadDB(v14, @"database", &v38);
  v38 = 0;
  Value = CFDictionaryGetValue(a2, @"Drivers");
  v18 = CFDictionaryGetValue(a2, @"Patches");
  v19 = CFDictionaryGetValue(a2, @"Partitions");
  if (Value && (v38 = MKBuildDrivers(a1, v15, Value, v14, a4, 0, v36, v37)) != 0 || v18 && (v38 = MKCreatePatchPartition(a1, v19, v15, v18, v14, a4, 0, v36, v37)) != 0)
  {
LABEL_38:
    if (!a3)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  if (!v19 || (Count = CFArrayGetCount(v19)) == 0)
  {
LABEL_35:
    v38 = 0;
    if (!a3)
    {
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v20 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v20);
    if (!ValueAtIndex)
    {
      break;
    }

    v22 = ValueAtIndex;
    v39 = 0;
    v43 = 0;
    v42 = 0u;
    memset(v41, 0, sizeof(v41));
    v23 = *a1;
    v24 = MKGetPartitionInfo(ValueAtIndex, *(*a1 + 257), v41);
    if (v24)
    {
      goto LABEL_46;
    }

    v25 = DWORD2(v42);
    if (!DWORD2(v42))
    {
      v26 = *(v23 + 261);
      if (v26 >= 2 && (v27 = &v23[1072 * (v26 - 1)], *(v27 + 541) == 24320))
      {
        v25 = *(v27 + 135);
        DWORD2(v42) = v25;
      }

      else
      {
        v25 = 0;
      }
    }

    v28 = WORD2(v43);
    if (WORD2(v43) == 12544)
    {
      if (!PMSpecificIndex(a1, 12544, 0, &v39) && v39)
      {
        goto LABEL_34;
      }

      v28 = WORD2(v43);
      v25 = DWORD2(v42);
    }

    v24 = PMNewPartitionExtended(a1, v28, &v41[2] + 1, HIDWORD(v42), v25, v41, a4, &v39, v43);
    if (v24)
    {
      goto LABEL_24;
    }

    v29 = *a1;
    if (*(*a1 + 257) <= 3)
    {
      v30 = &v29[1072 * v39 + 528];
      if ((v34 & 1) != 0 && *(v29 + 1) == *&v29[1072 * v39 + 540] + *&v29[1072 * v39 + 536])
      {
        v31 = (*(v30 + 3) - PMConvertBlocks(10, 0x200u, *(v29 + 1))) / a4 * a4;
        *(v30 + 3) = v31;
        *(v30 + 21) = v31;
      }

      if (DWORD1(v42))
      {
        *(v30 + 34) = DWORD1(v42);
      }

      v32 = CFDictionaryGetValue(v22, @"Partition Loader");
      if (v32)
      {
        CFStringGetCString(v32, v40, 34, 0);
        v24 = MKCreateLoaderPartition(a1, v14, v15, a4, 0, v39, v40, 1, v36, v37);
        if (v24 != 28)
        {
LABEL_24:
          if (v24)
          {
            goto LABEL_46;
          }
        }
      }
    }

LABEL_34:
    if (Count == ++v20)
    {
      goto LABEL_35;
    }
  }

  v24 = -415;
LABEL_46:
  v38 = v24;
  if (!a3)
  {
LABEL_39:
    CFRelease(v14);
  }

LABEL_40:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v38;
}

void SetHandleSize(Handle h, Size newSize)
{
  if (h)
  {
    if (h[2] < 0)
    {
      v6 = -109;
    }

    else
    {
      v3 = *h;
      if (*h)
      {
        v5 = malloc_type_realloc(v3, newSize, 0x706F1F80uLL);
        if (!newSize || v5)
        {
          v6 = 0;
          *h = v5;
          h[1] = newSize;
        }

        else
        {
          v6 = -108;
        }
      }

      else
      {
        v6 = -111;
      }
    }
  }

  else
  {
    v6 = -109;
  }

  MemErr = v6;
}

Size GetHandleSize(Size h)
{
  if (h)
  {
    v1 = 0;
    h = *(h + 8);
  }

  else
  {
    v1 = -109;
  }

  MemErr = v1;
  return h;
}

void HUnlock(Handle h)
{
  if (h)
  {
    v1 = 0;
    *(h + 16) &= ~0x80u;
  }

  else
  {
    v1 = -109;
  }

  MemErr = v1;
}

Ptr NewPtr(Size byteCount)
{
  result = malloc_type_malloc(byteCount, 0x3C52A2D5uLL);
  if (result)
  {
    v2 = 0;
  }

  else
  {
    v2 = -108;
  }

  MemErr = v2;
  return result;
}

Ptr NewPtrClear(Size byteCount)
{
  v2 = malloc_type_malloc(byteCount, 0x34410FF6uLL);
  v3 = v2;
  if (v2)
  {
    bzero(v2, byteCount);
    MemErr = 0;
  }

  return v3;
}

void DisposePtr(Ptr p)
{
  if (p)
  {
    free(p);
    v1 = 0;
  }

  else
  {
    v1 = -113;
  }

  MemErr = v1;
}

uint64_t MKBlockChecksum2(_DWORD *a1, unsigned __int8 *a2, int a3)
{
  v3 = *a1;
  if (a2 && a3)
  {
    v4 = &a2[a3];
    do
    {
      HIDWORD(v5) = v3;
      LODWORD(v5) = v3;
      v6 = *a2++;
      v3 = (v5 >> 31) + v6;
    }

    while (a2 < v4);
  }

  *a1 = v3;
  return v3;
}

uint64_t MKImageChecksum(_DWORD *a1, unsigned __int8 *a2, int a3)
{
  v3 = *a1;
  if (a2)
  {
    v4 = &a2[a3];
    do
    {
      v5 = *a2++;
      v3 = (v3 + v5);
    }

    while (a2 < v4);
  }

  *a1 = v3;
  return v3;
}

uint64_t DrvrChecksum(unsigned __int8 *a1, int a2)
{
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v2 = 0;
    do
    {
      --a2;
      v3 = *a1++;
      v4 = v2 + v3;
      v2 = (v4 >> 15) & 1 | (2 * v4);
    }

    while (a2);
    if (!v4)
    {
LABEL_6:
      LOWORD(v2) = -1;
    }
  }

  else
  {
    LOWORD(v2) = 0;
  }

  return v2;
}

__CFDictionary *TAOCopyHFSPlusParametersDict(const __CFDictionary *a1, _DWORD *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  *__str = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  Value = CFDictionaryGetValue(a1, @"volume sectors");
  if (!Value)
  {
    goto LABEL_97;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFNumberGetTypeID())
  {
    goto LABEL_97;
  }

  memset(v44, 0, sizeof(v44));
  v40 = 0;
  valuePtr = 0;
  CFNumberGetValue(v5, kCFNumberSInt64Type, &valuePtr);
  v7 = CFDictionaryGetValue(a1, @"journal size");
  v8 = CFDictionaryGetValue(a1, @"block size");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v9, kCFNumberSInt64Type, &v40);
      if (snprintf(__str, 0x20uLL, "%llu", v40) > 0x1F)
      {
        goto LABEL_97;
      }
    }
  }

  v11 = CFDictionaryGetValue(a1, @"attr node size");
  v12 = v11;
  if (v11)
  {
    v13 = CFGetTypeID(v11);
    if (v13 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v12, kCFNumberSInt64Type, &v40);
      LODWORD(v12) = snprintf(v46, 0x40uLL, "a=%llu", v40);
      if (v12 > 0x3F)
      {
        goto LABEL_97;
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }
  }

  v14 = CFDictionaryGetValue(a1, @"cat node size");
  if (v14)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v15, kCFNumberSInt64Type, &v40);
      if (v12)
      {
        v17 = v12 + 1;
        v46[v12] = 44;
      }

      else
      {
        v17 = 0;
      }

      v18 = snprintf(&v46[v17], 64 - v17, "c=%llu", v40);
      if (64 - v17 <= v18)
      {
        goto LABEL_97;
      }

      LODWORD(v12) = v18 + v17;
    }
  }

  v19 = CFDictionaryGetValue(a1, @"ext node size");
  if (v19)
  {
    v20 = v19;
    v21 = CFGetTypeID(v19);
    if (v21 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v20, kCFNumberSInt64Type, &v40);
      if (v12)
      {
        v46[v12] = 44;
        v22 = v12 + 1;
      }

      else
      {
        v22 = 0;
      }

      if (64 - v22 <= snprintf(&v46[v22], 64 - v22, "e=%llu", v40))
      {
LABEL_97:
        Mutable = 0;
        goto LABEL_98;
      }
    }
  }

  *&v44[0] = "/sbin/newfs_hfs";
  if (v7)
  {
    *(&v44[0] + 1) = "-J";
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  if (__str[0])
  {
    v24 = v23 + 1;
    *(v44 + v23) = "-b";
    v23 += 2;
    *(v44 + v24) = __str;
  }

  if (v46[0])
  {
    v25 = v23 + 1;
    *(v44 + v23) = "-n";
    v23 += 2;
    *(v44 + v25) = v46;
  }

  *(v44 + v23) = "-N";
  snprintf(v52, 0x20uLL, "%llub", valuePtr);
  *(v44 + v23 + 1) = v52;
  *(&v44[1] + v23) = 0;
  v26 = dup(2);
  if (v26 < 0)
  {
    Mutable = 0;
    LODWORD(v7) = *__error();
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_100;
  }

  v27 = v26;
  v28 = open("/dev/null", 1, 384);
  if (v28 < 0)
  {
    goto LABEL_94;
  }

  v29 = v28;
  if (dup2(v28, 2) == -1)
  {
    LODWORD(v7) = *__error();
    close(v29);
LABEL_103:
    dup2(v27, 2);
    close(v27);
    Mutable = 0;
    if (!a2)
    {
      return Mutable;
    }

    goto LABEL_100;
  }

  close(v29);
  v30 = TAOpopenv("r", *&v44[0], v44);
  if (!v30)
  {
LABEL_94:
    LODWORD(v7) = *__error();
    goto LABEL_103;
  }

  v31 = v30;
  v32 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (fgets(__s1, 128, *v31))
  {
    while (1)
    {
      v34 = strnlen(__s1, 0x80uLL) - 1;
      if (__s1[v34] == 10)
      {
        __s1[v34] = 0;
        v35 = @"block size";
        if (sscanf(__s1, " block-size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"total blocks";
        if (sscanf(__s1, " total blocks:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"journal size";
        if (sscanf(__s1, " journal-size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"cat node size";
        if (sscanf(__s1, " catalog b-tree node size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"cat clump size";
        if (sscanf(__s1, " initial catalog file size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"ext node size";
        if (sscanf(__s1, " extents b-tree node size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"ext clump size";
        if (sscanf(__s1, " initial extents file size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"alloc clump size";
        if (sscanf(__s1, " initial allocation file size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"data clump size";
        if (sscanf(__s1, " data fork clump size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"resource clump size";
        if (sscanf(__s1, " resource fork clump size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"attr node size";
        if (sscanf(__s1, " attributes b-tree node size:%32s", v53) == 1)
        {
          break;
        }

        v35 = @"attr clump size";
        if (sscanf(__s1, " initial attributes file size:%32s", v53) == 1)
        {
          break;
        }
      }

LABEL_78:
      if (!fgets(__s1, 128, *v31))
      {
        goto LABEL_79;
      }
    }

    __endptr = 0;
    v36 = strtoull(v53, &__endptr, 10);
    v43 = v36;
    if (__endptr)
    {
      v37 = *__endptr;
      if (v37 <= 0x61)
      {
        if (*__endptr <= 0x4Au)
        {
          if (v37 != 66)
          {
            if (v37 != 69)
            {
              if (v37 != 71)
              {
                goto LABEL_76;
              }

              goto LABEL_72;
            }

            goto LABEL_70;
          }

LABEL_69:
          v36 <<= 9;
LABEL_75:
          v43 = v36;
          goto LABEL_76;
        }

        if (v37 != 75)
        {
          if (v37 != 77)
          {
            if (v37 != 80)
            {
              goto LABEL_76;
            }

LABEL_71:
            v36 <<= 10;
            goto LABEL_72;
          }

LABEL_73:
          v36 <<= 10;
        }

LABEL_74:
        v36 <<= 10;
        goto LABEL_75;
      }

      if (*__endptr > 0x6Au)
      {
        switch(v37)
        {
          case 'k':
            goto LABEL_74;
          case 'm':
            goto LABEL_73;
          case 'p':
            goto LABEL_71;
        }
      }

      else
      {
        switch(v37)
        {
          case 'b':
            goto LABEL_69;
          case 'e':
LABEL_70:
            v36 <<= 10;
            goto LABEL_71;
          case 'g':
LABEL_72:
            v36 <<= 10;
            goto LABEL_73;
        }
      }
    }

LABEL_76:
    if (v36)
    {
      v38 = CFNumberCreate(v32, kCFNumberSInt64Type, &v43);
      CFDictionarySetValue(Mutable, v35, v38);
      CFRelease(v38);
    }

    goto LABEL_78;
  }

LABEL_79:
  TAOpclose(v31);
  dup2(v27, 2);
  close(v27);
  if (CFDictionaryGetValue(Mutable, @"block size") && CFDictionaryGetValue(Mutable, @"total blocks") && CFDictionaryGetValue(Mutable, @"cat node size") && CFDictionaryGetValue(Mutable, @"cat clump size") && CFDictionaryGetValue(Mutable, @"ext node size") && CFDictionaryGetValue(Mutable, @"ext clump size") && CFDictionaryGetValue(Mutable, @"alloc clump size") && CFDictionaryGetValue(Mutable, @"data clump size") && CFDictionaryGetValue(Mutable, @"resource clump size"))
  {
    if (!v7)
    {
      goto LABEL_99;
    }

    if (CFDictionaryGetValue(Mutable, @"journal size"))
    {
      LODWORD(v7) = 0;
      if (!a2)
      {
        return Mutable;
      }

      goto LABEL_100;
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    goto LABEL_97;
  }

LABEL_98:
  LODWORD(v7) = 22;
LABEL_99:
  if (a2)
  {
LABEL_100:
    *a2 = v7;
  }

  return Mutable;
}

uint64_t MKFATFSDescriptorIdentity(char *a1)
{
  v1 = fatfsdescriptors[0];
  if (fatfsdescriptors[0])
  {
    v3 = 0;
    do
    {
      if (!strcasecmp(a1, v1))
      {
        break;
      }

      v1 = fatfsdescriptors[++v3];
    }

    while (v1);
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

uint64_t MKFATFSIdentity(unsigned int a1)
{
  if (a1 >= 4)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return fatfsdescriptors[v1];
}

uint64_t MKDetectFATFS(uint64_t a1, unsigned __int8 *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  *a3 = 0;
  if ((*(a2 + 11) & 0x7F) != 0)
  {
    return 0;
  }

  if (*(a2 + 255) != 43605)
  {
    return 0;
  }

  *a3 = 500;
  v8 = *a2;
  if (v8 != 233 && (v8 != 235 || a2[2] != 144))
  {
    return 0;
  }

  *a3 = 1000;
  if (__PAIR64__(a2[1], *a2) == 0xEB000000EBLL && a2[2] == 144)
  {
    return 0;
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v9 = _MKFATFSReadBPB(a1, v11);
  result = 0;
  if (v9 != -123 && v9 != 22)
  {
    if (v9)
    {
      return v9;
    }

    *a3 += 4000;
    if (a4)
    {
      *a4 = v11[0];
    }

    if (a5)
    {
      result = 0;
      *a5 = 3;
      return result;
    }

    return 0;
  }

  return result;
}

uint64_t _MKFATFSReadBPB(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = MKMediaReadSectors(a1, 0, 1uLL, &v31, 0);
  if (result)
  {
    return result;
  }

  if (v31 != 233)
  {
    result = 22;
    if (v31 != 235 || BYTE2(v31) != 144)
    {
      return result;
    }
  }

  v5 = v35;
  *(a2 + 12) = v35;
  v6 = v34;
  *(a2 + 8) = v34;
  v7 = v36;
  *(a2 + 14) = v36;
  v8 = v37;
  *(a2 + 16) = v37;
  v9 = v38;
  *(a2 + 18) = v38;
  v10 = v39;
  v11 = v41;
  v12 = v42;
  *(a2 + 28) = v41;
  *(a2 + 32) = v12;
  *(a2 + 24) = v40;
  *(a2 + 4) = 512;
  v13 = v6 >> 9;
  *(a2 + 6) = v6 >> 9;
  if (!v9)
  {
    if (v10 || v11 | v46)
    {
      return 22;
    }

    *(a2 + 76) = 0x100040FFFFFFFLL;
    v11 = v44;
    *(a2 + 28) = v44;
    if ((v45 & 0x80) != 0)
    {
      *(a2 + 84) = v45 & 0xF;
    }
  }

  v14 = v43;
  if (v10)
  {
    v14 = v10;
  }

  if (!v14 || ((v5 - 1) & 0x80) != 0 || ((v5 - 1) & v5) != 0 || (v6 - 4097) < 0xF1FFu)
  {
    return 22;
  }

  result = 22;
  if (((v6 + 0x1FFF) & v6) != 0)
  {
    return result;
  }

  v15 = v6 * v5;
  if ((v6 * v5) > 0x8000)
  {
    return result;
  }

  v16 = v7 + v11 * v8;
  v17 = *(a2 + 76);
  if (v17 == 0xFFFFFFF)
  {
    v18 = v48;
    v19 = v47;
    *(a2 + 38) = v47;
    v20 = v16 * v13 + ((v19 - 2) << (*(a2 + 64) - *(a2 + 72)));
    *(a2 + 40) = v18;
    *(a2 + 44) = v20;
    *(a2 + 20) = v14 * v13;
    *(a2 + 48) = (v14 - v16) / v5;
    *(a2 + 52) = v16 * v13;
    v21 = 3;
LABEL_31:
    *a2 = v21;
    v24 = 128;
    goto LABEL_32;
  }

  v20 = v16 * v13;
  v22 = (v6 + 32 * v9 - 1) / v6 + v16;
  *(a2 + 20) = v14 * v13;
  v23 = (v14 - v22) / v5;
  *(a2 + 44) = v16 * v13;
  *(a2 + 48) = v23;
  *(a2 + 52) = v22 * v13;
  if (v17 == 0xFFFF)
  {
    goto LABEL_30;
  }

  if (v17 != 4095)
  {
    if (v17)
    {
      *a2 = 0;
      v24 = 128;
      result = 4294967173;
      goto LABEL_32;
    }

    if (v23 <= 0xFF4)
    {
      *(a2 + 76) = 0x2000300000FFFLL;
      goto LABEL_27;
    }

    *(a2 + 76) = 0x100020000FFFFLL;
LABEL_30:
    v21 = 2;
    goto LABEL_31;
  }

LABEL_27:
  *a2 = 1;
  v24 = 96;
LABEL_32:
  *(a2 + 88) = v24 * v6;
  *(a2 + 72) = 9;
  *(a2 + 10) = v15;
  v25 = __clz(__rbit32(v15));
  if (v15)
  {
    v26 = v25 + 1;
  }

  else
  {
    v26 = 0;
  }

  *(a2 + 64) = v26 - 1;
  *(a2 + 68) = v15 - 1;
  if ((v15 & (v15 - 1)) == 0)
  {
    result = MKMediaReadSectors(a1, v20, 1uLL, &v31, 0);
    if (!result)
    {
      if ((v34 & 8) != 0 && v31 && v31 != 229)
      {
        if (v31 == 5)
        {
          LOBYTE(v31) = -27;
        }

        strntrim(&v31, 8);
        strntrim(&v32, 3);
        *(a2 + 92) = v31;
        if (v32)
        {
          v27 = a2 + 92 + strlcat((a2 + 92), ".", 0xCuLL);
          *v27 = v32;
          *(v27 + 2) = v33;
        }
      }

      if (!*(a2 + 40))
      {
        return 0;
      }

      result = MKMediaReadSectors(a1, *(a2 + 40), 1uLL, &v31, 0);
      if (!result)
      {
        if (v31 != 1096897106 || v49 != 1631679090 || v52 != -1437270016)
        {
          return 0;
        }

        result = 0;
        v28 = *(a2 + 12);
        if (v50 == -1)
        {
          v29 = 0;
        }

        else
        {
          v29 = v50 * v28;
        }

        v30 = v51 * v28;
        *(a2 + 56) = v29;
        *(a2 + 60) = v30;
      }
    }
  }

  return result;
}

__CFDictionary *MKFATFSCreateProperties(uint64_t a1, const __CFDictionary *a2, int *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v6 = _MKFATFSReadBPB(a1, v14);
  if (v6)
  {
    Mutable = 0;
    goto LABEL_12;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_11;
  }

  v8 = LOWORD(v14[0]);
  if (LOWORD(v14[0]) >= 4u)
  {
    v8 = 0;
  }

  v9 = CFStringCreateWithCString(0, fatfsdescriptors[v8], 0x8000100u);
  if (v9)
  {
    v10 = v9;
    CFDictionarySetValue(Mutable, @"FAT Variant", v9);
    CFRelease(v10);
    if (MKCFOptionBit(a2, @"High Tide Mark", 1))
    {
      v6 = FATSuperTidemark(v13, 0x40000, v14, a1, 0, 0);
      if (v6)
      {
        goto LABEL_12;
      }

      v11 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &v13[3] + 8);
      CFDictionarySetValue(Mutable, @"High Tide Mark", v11);
      CFRelease(v11);
    }

    v6 = 0;
  }

  else
  {
LABEL_11:
    v6 = -1;
  }

LABEL_12:
  if (a3)
  {
    if (v6 == -1)
    {
      v6 = *__error();
    }

    *a3 = v6;
  }

  return Mutable;
}

uint64_t FATSuperTidemark(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t *), uint64_t a6)
{
  v40 = 0;
  v9 = *(a3 + 56);
  v10 = (*(a3 + 48) << (*(a3 + 64) - *(a3 + 72))) + *(a3 + 52);
  *(a1 + 40) = v10;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10 - 1;
  v11 = malloc_type_calloc(*(a3 + 88), 1uLL, 0x100004077774924uLL);
  if (!v11)
  {
    *(a1 + 72) = *(a1 + 56) / (*(a1 + 40) - *(a1 + 48));
    LOWORD(Sectors) = 12;
    return Sectors;
  }

  v12 = v11;
  v13 = *(a3 + 12);
  v14 = *(a3 + 6);
  LOWORD(v40) = 1;
  v16 = *(a3 + 48);
  v15 = *(a3 + 52);
  v41 = 0;
  v42 = v15;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = v14 * v13;
    Sectors = 12;
    while (1)
    {
      v21 = (v17 + 2) * *(a3 + 80) / *(a3 + 82);
      v22 = *(a3 + 88);
      v23 = v21 / v22;
      v24 = v21 % v22;
      if (!v17 || !v24)
      {
        v25 = v22 / *(a3 + 8);
        v26 = *(a3 + 28);
        v27 = v26 - v23 * v25;
        if (v27 >= v25)
        {
          v27 = v25;
        }

        Sectors = MKMediaReadSectors(a4, (*(a3 + 14) + v26 * *(a3 + 84) + v23 * v25) * *(a3 + 6), v27 * *(a3 + 6), v12, 0);
        if (Sectors)
        {
          break;
        }
      }

      v28 = *(a3 + 76);
      if (v28 == 0xFFFFFFF)
      {
        v29 = *&v12[v24];
      }

      else
      {
        v29 = *&v12[v24];
      }

      if (v28 == 4095 && (v17 & 1) != 0)
      {
        v29 >>= 4;
      }

      v31 = (v29 & v28) != 0;
      v32 = v40;
      v15 = v42;
      if (v40 != v31)
      {
        if (v42)
        {
          if (!v40)
          {
            *(a1 + 48) += v42;
          }

          if ((a2 & 3) != 0 && ((v32 + 1) & a2) != 0)
          {
            Sectors = a5(a6, 1, &v40);
            v15 = v42;
            if (Sectors)
            {
              goto LABEL_33;
            }

            v32 = v40;
          }

          v33 = v41 + v15;
          v41 = v33;
          if (v32 == 1 && v33 > v18)
          {
            v18 = v33;
          }
        }

        v15 = 0;
        LOWORD(v40) = v31;
      }

      v15 += v19;
      v42 = v15;
      if (++v17 >= *(a3 + 48))
      {
        goto LABEL_33;
      }
    }

    if (!v42)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v18 = 0;
    Sectors = 12;
LABEL_33:
    if (!v15)
    {
      goto LABEL_43;
    }
  }

  if (((v40 + 1) & a2) != 0)
  {
    Sectors = a5(a6, 1, &v40);
  }

  if (Sectors)
  {
    v34 = *(a1 + 56);
    goto LABEL_44;
  }

  v35 = v41 + v42;
  v41 = v35;
  v42 = 0;
  if (v35 <= v18)
  {
    LODWORD(v35) = v18;
  }

  Sectors = 0;
  if (v40 == 1)
  {
    v18 = v35;
  }

LABEL_43:
  v34 = v18;
  *(a1 + 56) = v18;
LABEL_44:
  *(a1 + 72) = v34 / (*(a1 + 40) - *(a1 + 48));
  free(v12);
  if (Sectors == -1)
  {
    Sectors = *__error();
  }

  return Sectors;
}

uint64_t MKRecordFATFSRuns(uint64_t a1, int a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t *), uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  memset(v24, 0, sizeof(v24));
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  MKMediaGetGeometry(a1, v24);
  v8 = _MKFATFSReadBPB(a1, &v30);
  if (v8)
  {
    return v8;
  }

  if (a2 < 0)
  {
    v11 = *MEMORY[0x277D85DF8];
    v12 = malloc_type_malloc(0x400uLL, 0xA50DC1F3uLL);
    if (v12)
    {
      v13 = v12;
      FileDescriptor = MKMediaGetFileDescriptor(a1);
      if (fcntl(FileDescriptor, 50, v13) != -1)
      {
        v15 = "s";
        v16 = v33 * WORD6(v30);
        if (v16 == 1)
        {
          v17 = &unk_2586A0C2E;
        }

        else
        {
          v17 = "s";
        }

        if (v33 == 1)
        {
          v15 = &unk_2586A0C2E;
        }

        fprintf(v11, "%s: %u sector%s in %u FAT%u cluster%s (%u bytes/cluster)\n", v13, v16, v17, v33, dword_2586A0880[v30], v15, WORD4(v30) * WORD6(v30));
        fprintf(v11, "bps=%u spc=%u res=%u nft=%u", WORD4(v30), WORD6(v30), HIWORD(v30), v31);
        if (WORD1(v31))
        {
          fprintf(v11, " rde=%u", WORD1(v31));
        }

        if ((v30 - 1) >= 2)
        {
          if (v30 == 3)
          {
            fprintf(v11, " mid=%#x", WORD4(v31));
            fprintf(v11, " spt=%u hds=%u hid=%u", v32, WORD1(v32), WORD2(v32));
            fprintf(v11, " bsec=%u bspf=%u rdcl=%u", DWORD1(v31) / WORD3(v30), HIDWORD(v31), WORD3(v32));
            fwrite(" infs=", 6uLL, 1uLL, v11);
            if (WORD4(v32) == 0xFFFFLL)
            {
              fprintf(v11, "%#x");
            }

            else
            {
              fprintf(v11, "%u");
            }

            fwrite(" bkbs=", 6uLL, 1uLL, v11);
            if (WORD5(v32) == 0xFFFFLL)
            {
              v18 = "%#x";
            }

            else
            {
              v18 = "%u";
            }

            fprintf(v11, v18, WORD5(v32), v22, v23);
          }
        }

        else
        {
          fprintf(v11, " sec=%u mid=%#x spf=%u", DWORD1(v31) / WORD3(v30), WORD4(v31), HIDWORD(v31));
          fprintf(v11, " spt=%u hds=%u hid=%u");
        }

        printf("\nvl=%s\n", &v35 + 12);
      }

      free(v13);
    }
  }

  LOWORD(v25) = 3;
  WORD1(v25) = v30;
  HIDWORD(v25) = WORD3(v30);
  LODWORD(v26) = LODWORD(v24[0]) >> 9;
  v19 = *(&v24[0] + 1);
  *(&v26 + 1) = *(&v24[0] + 1);
  *&v27 = *(&v24[0] + 1);
  v20 = (v33 << (v34 - BYTE8(v34))) + DWORD1(v33);
  *(&v27 + 1) = v20;
  *&v28 = DWORD2(v33);
  *(&v28 + 1) = v20 - 1;
  if (BYTE12(v35))
  {
    uniconvert(v29 + 12, 256, 0x8000100u, 0, &v35 + 12, 12, 0x500u, 1u);
    v19 = *(&v26 + 1);
    v20 = *(&v27 + 1);
  }

  v21 = v19 / v20;
  v9 = 22;
  if (v21 <= 1000.0 && v21 >= 0.001)
  {
    v8 = a3(a4, 0, 0);
    if (v8)
    {
      return v8;
    }

    if ((a2 & 0x40003) == 0 || (v9 = FATSuperTidemark(&v25, a2, &v30, a1, a3, a4), !v9))
    {
      v9 = a3(a4, 3, &v25);
    }

    a3(a4, 4, 0);
  }

  return v9;
}

CFMutableDictionaryRef MKCFCreateFATFSInfo(uint64_t a1, const __CFDictionary *a2, _DWORD *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040CA22B68AuLL);
  if (v6)
  {
    v7 = v6;
    *v6 = FSConvertOptions(a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v7 + 8) = Mutable;
    v9 = MKRecordFATFSRuns(a1, *v7, MKCFRecordFSInfo, v7);
    if (v9)
    {
      v10 = Mutable == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    free(v7);
    if (a3)
    {
      if (v9 != -1)
      {
LABEL_12:
        *a3 = v9;
        return Mutable;
      }

LABEL_11:
      v9 = *__error();
      goto LABEL_12;
    }
  }

  else
  {
    Mutable = 0;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  return Mutable;
}

CFTypeRef CopyDeviceTreeProperty(const __CFString *a1)
{
  v2 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/");
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  CFProperty = IORegistryEntryCreateCFProperty(v2, a1, 0, 0);
  IOObjectRelease(v3);
  return CFProperty;
}

uint64_t DevEntryCopyRegistryProperty(char *bsdName, const __CFString *a2, void *a3)
{
  v5 = *MEMORY[0x277CD2898];
  v6 = IOBSDNameMatching(*MEMORY[0x277CD2898], 0, bsdName);
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, a2, *MEMORY[0x277CBECE8], 0);
    IOObjectRelease(v8);
    result = 0;
  }

  else
  {
    CFProperty = 0;
    result = 2;
  }

  *a3 = CFProperty;
  return result;
}

uint64_t DevEntryCopyPropertiesForChildMatchingClass(char *bsdName, const char *a2, void *a3)
{
  iterator = 0;
  v13 = 0;
  v5 = *MEMORY[0x277CD2898];
  v6 = IOBSDNameMatching(*MEMORY[0x277CD2898], 0, bsdName);
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    v9 = MEMORY[0x259C867A0](MatchingService, "IOService", &iterator);
    if (!v9)
    {
      v10 = IOIteratorNext(iterator);
      if (v10)
      {
        v11 = v10;
        while (!IOObjectConformsTo(v11, a2))
        {
          IOObjectRelease(v11);
          v11 = IOIteratorNext(iterator);
          if (!v11)
          {
            goto LABEL_7;
          }
        }

        IORegistryEntryCreateCFProperties(v11, &v13, *MEMORY[0x277CBECE8], 0);
        v9 = 0;
      }

      else
      {
LABEL_7:
        v9 = 22;
      }
    }

    IOObjectRelease(v8);
  }

  else
  {
    v9 = 2;
  }

  if (iterator)
  {
    IOObjectRelease(iterator);
  }

  *a3 = v13;
  return v9;
}

uint64_t MachineBoots9()
{
  v0 = CopyDeviceTreeProperty(@"compatible");
  BytePtr = CFDataGetBytePtr(v0);
  Length = CFDataGetLength(v0);
  if (Length < 1)
  {
LABEL_6:
    v6 = 0;
  }

  else
  {
    v3 = Length;
    LODWORD(v4) = 0;
    while (strcmp(BytePtr, "MacRISC") && strcmp(BytePtr, "MacRISC2"))
    {
      v5 = strlen(BytePtr);
      BytePtr += v5 + 1;
      v4 = v5 + 1 + v4;
      if (v4 >= v3)
      {
        goto LABEL_6;
      }
    }

    v6 = 1;
  }

  CFRelease(v0);
  return v6;
}

uint64_t MKHFSResizeVolume(unint64_t a1, void *a2, uint64_t a3)
{
  v27 = 0;
  valuePtr = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  v6 = MKMediaCopyProperty(a2, @"Geometry");
  Value = CFDictionaryGetValue(v6, @"Sector Count");
  CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
  v29 = -34;
  if (valuePtr >= a1)
  {
    v29 = MKFileSystemDetect(a2, &v27 + 1, &v27, &v26);
    if (!v29)
    {
      v29 = 22;
      if (v26 == 1)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionaryAddValue(Mutable, @"Record Tidemark", *MEMORY[0x277CBED28]);
        v9 = MKCFCreateHFSInfo(a2, Mutable, &v29);
        CFRelease(Mutable);
        if (v9)
        {
          v10 = CFDictionaryGetValue(v9, @"Tidemark");
          CFNumberGetValue(v10, kCFNumberSInt64Type, &v25);
          ++v25;
          v11 = CFDictionaryGetValue(v9, @"Volume block size");
          CFNumberGetValue(v11, kCFNumberSInt32Type, &v24 + 4);
          if (v27 > 2)
          {
            if (v27 == 3)
            {
              v14 = HIDWORD(v24) >> 9;
              v15 = CFDictionaryGetValue(v9, @"Volume offset");
              CFNumberGetValue(v15, kCFNumberSInt32Type, &v24);
              v16 = CFDictionaryGetValue(v9, @"Container");
              v17 = CFDictionaryGetValue(v16, @"Volume block size");
              CFNumberGetValue(v17, kCFNumberSInt32Type, &v23);
              v29 = -34;
              if (v14 <= 2)
              {
                v18 = 2;
              }

              else
              {
                v18 = v14;
              }

              v19 = v25 - v24 + v18;
              v20 = v23 >> 9;
              if (v19 % v20)
              {
                v21 = v19 / v20 + 1;
              }

              else
              {
                v21 = v19 / v20;
              }

              if (v24 + v21 * v20 + 2 > a1)
              {
                goto LABEL_27;
              }

              v13 = MKHFSWrappedResize(a1, a2, a3);
              goto LABEL_26;
            }

            if (v27 == 4)
            {
              goto LABEL_11;
            }
          }

          else
          {
            if (v27 != 1)
            {
              if (v27 != 2)
              {
                goto LABEL_27;
              }

LABEL_11:
              v29 = -34;
              v12 = 2;
              if (HIDWORD(v24) >= 0x400)
              {
                v12 = HIDWORD(v24) >> 9;
              }

              if (v12 + v25 > a1 || HIDWORD(v24) >> 9 << 32 < a1)
              {
                goto LABEL_27;
              }

              v13 = MKHFSPlusResize(a1, a2);
              goto LABEL_26;
            }

            v29 = -34;
            if (v25 + 2 <= a1)
            {
              v13 = MKHFSStdResize(a1, a2);
LABEL_26:
              v29 = v13;
            }
          }

LABEL_27:
          CFRelease(v9);
        }
      }
    }
  }

  return v29;
}

uint64_t MKHFSStdResize(unint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  Sectors = MKMediaReadSectors(a2, 2uLL, 1uLL, v18, 0);
  if (!Sectors)
  {
    TAO_HFSMasterDirectoryBlock_BigToHost(v18);
    v5 = (v23 - v19) << 12;
    if (v5 >= 0x10000)
    {
      v5 = 0x10000;
    }

    v6 = (v22 >> 9);
    if (((v5 * v6) | 0x15) >= a1)
    {
      v7 = a1 - 2;
      v8 = (a1 - 2 - v23) / v6;
      if ((v8 & 7) != 0)
      {
        v9 = (v8 >> 3) + 1;
      }

      else
      {
        v9 = v8 >> 3;
      }

      v10 = (v9 + (((v9 & 0x1FF) != 0) << 9)) & 0x7E00;
      v11 = malloc_type_calloc(1uLL, v10, 0xFC335C14uLL);
      if (v11)
      {
        v12 = v11;
        v13 = v21;
        if (v8 < v21)
        {
          v13 = v8;
        }

        v14 = v13 >> 12;
        if ((v13 & 0xFFF) != 0)
        {
          v15 = v14 + 1;
        }

        else
        {
          v15 = v14;
        }

        v16 = MKMediaReadSectors(a2, v19, v15, v11, 0);
        if (!v16)
        {
          if (8 * v9 > v8)
          {
            SetBits(v12, v8, 8 * v9 - v8, 0);
          }

          if ((v9 & 0x1FF) != 0)
          {
            bzero(&v12[v9], 512 - (v9 & 0x1FF));
          }

          v24 += v8 - v21;
          v21 = v8;
          if (v8 < v20)
          {
            v20 = 0;
          }

          TAO_HFSMasterDirectoryBlock_BigToHost(v18);
          v16 = MKMediaWriteSectors(a2, 2uLL, 1uLL, v18, 0);
          if (!v16)
          {
            v16 = MKMediaWriteSectors(a2, v7, 1uLL, v18, 0);
            if (!v16)
            {
              TAO_HFSMasterDirectoryBlock_BigToHost(v18);
              v16 = MKMediaWriteSectors(a2, v19, v10, v12, 0);
              if (!v16)
              {
                v16 = MKMediaEraseSectors(a2, v10 + v19, v23 - (v10 + v19), 0);
              }
            }
          }
        }

        Sectors = v16;
        free(v12);
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 4294967262;
    }
  }

  return Sectors;
}

uint64_t MKHFSPlusResize(unint64_t a1, void *a2)
{
  v54[21] = *MEMORY[0x277D85DE8];
  valuePtr = a1;
  memset(v54, 0, 160);
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, sizeof(v52));
  memset(v51, 0, sizeof(v51));
  memset(v50, 0, sizeof(v50));
  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  Sectors = MKMediaReadSectors(a2, 2uLL, 1uLL, v50, 0);
  if (Sectors)
  {
    return Sectors;
  }

  TAO_HFSPlusVolumeHeader_BigToHost(v50);
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v6 = CFNumberCreate(v4, kCFNumberSInt64Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"volume sectors", v6);
  CFRelease(v6);
  if ((v50[1] & 0x2000) != 0)
  {
    v46 = 0;
    v7 = CFNumberCreate(v4, kCFNumberSInt64Type, &v46);
    CFDictionaryAddValue(Mutable, @"journal size", v7);
    CFRelease(v7);
  }

  v8 = CFNumberCreate(v4, kCFNumberSInt32Type, &v50[10]);
  CFDictionaryAddValue(Mutable, @"block size", v8);
  CFRelease(v8);
  Sectors = GetBTreeNodeSize(a2, v54, v50[10], &v45 + 1);
  if (Sectors)
  {
    return Sectors;
  }

  if (HIDWORD(v45))
  {
    v9 = CFNumberCreate(v4, kCFNumberSInt32Type, &v45 + 4);
    CFDictionaryAddValue(Mutable, @"attr node size", v9);
    CFRelease(v9);
  }

  Sectors = GetBTreeNodeSize(a2, v53, v50[10], &v45 + 1);
  if (Sectors)
  {
    return Sectors;
  }

  v10 = CFNumberCreate(v4, kCFNumberSInt32Type, &v45 + 4);
  CFDictionaryAddValue(Mutable, @"cat node size", v10);
  CFRelease(v10);
  Sectors = GetBTreeNodeSize(a2, v52, v50[10], &v45 + 1);
  if (Sectors)
  {
    return Sectors;
  }

  v13 = CFNumberCreate(v4, kCFNumberSInt32Type, &v45 + 4);
  CFDictionaryAddValue(Mutable, @"ext node size", v13);
  CFRelease(v13);
  v14 = TAOCopyHFSPlusParametersDict(Mutable, &v45);
  v15 = v14;
  if (v45)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    Value = CFDictionaryGetValue(v16, @"cat clump size");
    v18 = Value;
    if (!Value)
    {
      goto LABEL_37;
    }

    v19 = CFGetTypeID(Value);
    if (v19 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v18, kCFNumberSInt32Type, &v53[1]);
      v20 = CFDictionaryGetValue(v16, @"ext clump size");
      v18 = v20;
      if (!v20)
      {
        goto LABEL_37;
      }

      v21 = CFGetTypeID(v20);
      if (v21 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v18, kCFNumberSInt32Type, &v52[1]);
        v22 = CFDictionaryGetValue(v16, @"attr clump size");
        if (v54[0])
        {
          v23 = v22;
          if (v22)
          {
            v24 = CFGetTypeID(v22);
            if (v24 != CFNumberGetTypeID())
            {
              goto LABEL_36;
            }

            CFNumberGetValue(v23, kCFNumberSInt32Type, &v54[1]);
          }
        }

        v25 = CFDictionaryGetValue(v16, @"alloc clump size");
        v18 = v25;
        if (!v25)
        {
          goto LABEL_37;
        }

        v26 = CFGetTypeID(v25);
        if (v26 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v18, kCFNumberSInt32Type, &v51[1]);
          v27 = CFDictionaryGetValue(v16, @"data clump size");
          v18 = v27;
          if (!v27)
          {
            goto LABEL_37;
          }

          v28 = CFGetTypeID(v27);
          if (v28 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v18, kCFNumberSInt32Type, &v50[15]);
            v29 = CFDictionaryGetValue(v16, @"resource clump size");
            v18 = v29;
            if (v29)
            {
              v30 = CFGetTypeID(v29);
              if (v30 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v18, kCFNumberSInt32Type, &v50[14]);
                goto LABEL_30;
              }

              goto LABEL_36;
            }

LABEL_37:
            v11 = 22;
            goto LABEL_40;
          }
        }
      }
    }

LABEL_36:
    v18 = 0;
    goto LABEL_37;
  }

LABEL_30:
  v31 = v50[11];
  v32 = valuePtr / (v50[10] >> 9);
  v33 = v32 >> 3;
  if ((v32 & 7) != 0)
  {
    v34 = v33 + 1;
  }

  else
  {
    v34 = v33;
  }

  v18 = malloc_type_calloc(1uLL, v34, 0xF7CCFC61uLL);
  if (!v18)
  {
    v11 = 12;
LABEL_39:
    if (!v16)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v35 = ReadWriteFileToFromBuffer(a2, v18, v34, v51, v50[10] >> 9, 0);
  if (v35)
  {
    goto LABEL_35;
  }

  if (8 * v34 > v32)
  {
    SetBits(v18, v32, 8 * v34 - v32, 0);
  }

  if (v31 < v32)
  {
    v36 = 8 * LODWORD(v51[0]);
    if (8 * v51[0] >= v32)
    {
      v36 = v32;
    }

    SetBits(v18, v31, v36 - v31, 0);
  }

  v50[12] += v32 - v50[11];
  v50[11] = v32;
  if (v50[13] > v32)
  {
    v50[13] = 0;
  }

  if (v50[10] > 0x200u)
  {
    v37 = 1;
  }

  else
  {
    v37 = 2;
  }

  if (v31 < v32)
  {
    SetBits(v18, v31 - v37, 1u, 0);
  }

  SetBits(v18, v32 - v37, 1u, 1);
  if (v51[0] < v34)
  {
    v35 = GrowAllocFile(v50, v18, v32, a2);
    if (v35)
    {
LABEL_35:
      v11 = v35;
      goto LABEL_39;
    }
  }

  if (!v16 || (v50[1] & 0x2000) == 0)
  {
LABEL_60:
    TAO_HFSPlusVolumeHeader_BigToHost(v50);
    v35 = MKMediaWriteSectors(a2, 2uLL, 1uLL, v50, 0);
    if (!v35)
    {
      v35 = MKMediaWriteSectors(a2, valuePtr - 2, 1uLL, v50, 0);
      if (!v35)
      {
        TAO_HFSPlusVolumeHeader_BigToHost(v50);
        v35 = ReadWriteFileToFromBuffer(a2, v18, v34, v51, v50[10] >> 9, 1);
      }
    }

    goto LABEL_35;
  }

  v38 = CFDictionaryGetValue(v16, @"journal size");
  if (!v38)
  {
    goto LABEL_37;
  }

  v39 = v38;
  v40 = CFGetTypeID(v38);
  if (v40 != CFNumberGetTypeID())
  {
    goto LABEL_37;
  }

  CFNumberGetValue(v39, kCFNumberSInt64Type, &v46);
  v41 = MKMediaReadSectors(a2, ((v50[10] >> 9) * v50[3]), 1uLL, v48, 0);
  if (v41)
  {
LABEL_66:
    v11 = v41;
    goto LABEL_40;
  }

  TAO_JournalInfoBlock_BigToHost(v48);
  if (v46 == v49)
  {
    goto LABEL_60;
  }

  ChangeJournalSize(v50, v46, v18, v32, v48);
  v43 = v48;
  LODWORD(v44) = v50[10];
  v42 = ApplyToHFSPlusCatalogRecords(a2, UpdateDotJournalFile, &v43);
  if (v42)
  {
    v11 = v42;
  }

  else
  {
    v11 = 22;
  }

  if (v11 == -128)
  {
    TAO_JournalInfoBlock_BigToHost(v48);
    v41 = MKMediaWriteSectors(a2, ((v50[10] >> 9) * v50[3]), 1uLL, v48, 0);
    if (!v41)
    {
      goto LABEL_60;
    }

    goto LABEL_66;
  }

LABEL_40:
  CFRelease(v15);
LABEL_41:
  if (v18)
  {
    free(v18);
  }

  return v11;
}

uint64_t MKHFSWrappedResize(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
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
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0;
  Sectors = MKMediaReadSectors(a2, 2uLL, 1uLL, &v20, 0);
  if (!Sectors)
  {
    TAO_HFSMasterDirectoryBlock_BigToHost(&v20);
    if ((WORD6(v21) - HIWORD(v20)) << 12 >= 0x10000)
    {
      v7 = 0x10000;
    }

    else
    {
      v7 = (WORD6(v21) - HIWORD(v20)) << 12;
    }

    v8 = DWORD1(v21) >> 9;
    if (WORD6(v21) + v7 * v8 + 2 >= a1)
    {
      v9 = a1 - 2;
      v10 = (a1 - 2 - WORD6(v21)) / v8;
      if ((v10 & 7) != 0)
      {
        v11 = (v10 >> 3) + 1;
      }

      else
      {
        v11 = v10 >> 3;
      }

      v12 = (v11 + (((v11 & 0x1FF) != 0) << 9)) & 0x7E00;
      v13 = malloc_type_malloc(v12, 0xB299BE3FuLL);
      if (v13)
      {
        v14 = v13;
        memset(v13, 255, v11);
        if (8 * v11 > v10)
        {
          SetBits(v14, v10, 8 * v11 - v10, 0);
        }

        if ((v11 & 0x1FF) != 0)
        {
          bzero(&v14[v11], 512 - (v11 & 0x1FF));
        }

        LOWORD(v28) = v10 - WORD1(v21) + v28;
        WORD1(v21) = v10;
        if (v10 < v21)
        {
          LOWORD(v21) = 0;
        }

        TAO_HFSMasterDirectoryBlock_BigToHost(&v20);
        v15 = MKMediaWriteSectors(a2, 2uLL, 1uLL, &v20, 0);
        if (v15 || (v15 = MKMediaWriteSectors(a2, v9, 1uLL, &v20, 0), v15) || (TAO_HFSMasterDirectoryBlock_BigToHost(&v20), v15 = MKMediaWriteSectors(a2, HIWORD(v20), v12, v14, 0), v15) || (v15 = MKMediaEraseSectors(a2, v12 + HIWORD(v20), WORD6(v21) - (v12 + HIWORD(v20)), 0), v15))
        {
          Sectors = v15;
          free(v14);
        }

        else
        {
          v17 = (DWORD1(v21) >> 9) * v28;
          v18 = MKMediaCreateWithSubRange(*MEMORY[0x277CBECE8], a2, WORD6(v21) + (DWORD1(v21) >> 9) * HIWORD(v27), v17, &v19);
          Sectors = v19;
          if (!v19)
          {
            Sectors = MKHFSResizeVolume(v17, v18, a3);
          }

          free(v14);
          if (v18)
          {
            CFRelease(v18);
          }
        }
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 4294967262;
    }
  }

  return Sectors;
}

uint64_t MKHFSGetResizeLimits(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  Sectors = 22;
  if (a1)
  {
    v31 = 0;
    valuePtr = 0;
    v30 = 0;
    v28 = 0;
    Sectors = MKFileSystemDetect(a2, &v31, &v30 + 1, &v30);
    if (!Sectors)
    {
      Sectors = 22;
      if (v30 == 1)
      {
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        CFDictionaryAddValue(Mutable, @"Record Tidemark", *MEMORY[0x277CBED28]);
        v5 = MKCFCreateHFSInfo(a2, Mutable, &Sectors);
        CFRelease(Mutable);
        if (v5)
        {
          Value = CFDictionaryGetValue(v5, @"Tidemark");
          CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
          ++valuePtr;
          v7 = HIDWORD(v30);
          *(a1 + 28) = HIDWORD(v30);
          if (v7 > 2)
          {
            if (v7 != 3)
            {
              if (v7 != 4)
              {
                goto LABEL_33;
              }

              goto LABEL_11;
            }

            Sectors = MKMediaReadSectors(a2, 2uLL, 1uLL, v36, 0);
            if (Sectors)
            {
              goto LABEL_33;
            }

            TAO_HFSMasterDirectoryBlock_BigToHost(v36);
            v18 = CFDictionaryGetValue(v5, @"Volume offset");
            CFNumberGetValue(v18, kCFNumberSInt32Type, &v28);
            Sectors = MKMediaReadSectors(a2, v28 + 2, 1uLL, v33, 0);
            if (Sectors)
            {
              goto LABEL_33;
            }

            TAO_HFSPlusVolumeHeader_BigToHost(v33);
            v19 = v34;
            v20 = v34 >> 9;
            *(a1 + 24) = v34 >> 9;
            v21 = v40;
            v22 = v39 >> 9;
            v23 = (v40 - v37) << 12;
            if (v23 >= 0x10000)
            {
              v23 = 0x10000;
            }

            *a1 = v40 + 2 + v22 * v38;
            *(a1 + 8) = v21 + 2 + v23 * v22;
            if (v19 >= 0x400)
            {
              v24 = v20;
            }

            else
            {
              v24 = 2;
            }

            v25 = valuePtr - v28 + v24;
            if (v25 % v22)
            {
              v26 = v25 / v22 + 1;
            }

            else
            {
              v26 = v25 / v22;
            }

            v17 = v21 + v26 * v22 + v22 * v41;
          }

          else
          {
            if (v7 != 1)
            {
              if (v7 != 2)
              {
                goto LABEL_33;
              }

LABEL_11:
              Sectors = MKMediaReadSectors(a2, 2uLL, 1uLL, v33, 0);
              if (!Sectors)
              {
                TAO_HFSPlusVolumeHeader_BigToHost(v33);
                v8 = v34;
                v9 = v35;
                v10 = v34 >> 9;
                *(a1 + 24) = v10;
                *a1 = (v9 * v10);
                *(a1 + 8) = v10 << 32;
                v11 = v8 >= 0x400;
                v12 = 2;
                if (v11)
                {
                  v12 = v10;
                }

                v13 = valuePtr + v12;
                goto LABEL_32;
              }

LABEL_33:
              CFRelease(v5);
              return Sectors;
            }

            Sectors = MKMediaReadSectors(a2, 2uLL, 1uLL, v36, 0);
            if (Sectors)
            {
              goto LABEL_33;
            }

            TAO_HFSMasterDirectoryBlock_BigToHost(v36);
            v14 = v39 >> 9;
            *(a1 + 24) = v39 >> 9;
            v15 = v40;
            v16 = (v40 - v37) << 12;
            if (v16 >= 0x10000)
            {
              v16 = 0x10000;
            }

            *a1 = v40 + v14 * v38 + 2;
            *(a1 + 8) = (v16 * v14) | 0x15;
            v17 = v15 + valuePtr;
          }

          v13 = v17 + 2;
LABEL_32:
          *(a1 + 16) = v13;
          goto LABEL_33;
        }
      }
    }
  }

  return Sectors;
}

_BYTE *SetBits(_BYTE *result, unsigned int a2, unsigned int a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v7 = result;
  if ((a2 & 7) != 0)
  {
    v8 = 8 - (a2 & 7);
    if (v8 > a3)
    {
      v9 = ~(-1 << (v8 - a3));
    }

    else
    {
      v9 = 0;
    }

    v10 = v9 | (-1 << v8);
    v11 = a2 >> 3;
    v12 = result[v11];
    v13 = v12 & v10;
    v14 = v12 | ~v10;
    if (!a4)
    {
      v14 = v13;
    }

    result[v11] = v14;
    v6 = v8 + a2;
    v15 = a3 >= v8;
    v16 = a3 - v8;
    if (v15)
    {
      v5 = v16;
    }

    else
    {
      v5 = 0;
    }
  }

  v17 = v5 - 8;
  if (v5 >= 8)
  {
    if (a4)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    result = memset(&result[v6 >> 3], v18, (v17 >> 3) + 1);
    v6 += (v17 & 0xFFFFFFF8) + 8;
    v5 &= 7u;
  }

  if (v5)
  {
    v19 = 8 - v5;
    v20 = v6 >> 3;
    if (a4)
    {
      v21 = v7[v20] | (255 << v19);
    }

    else
    {
      v21 = v7[v20] & ~(-1 << v19);
    }

    v7[v20] = v21;
  }

  return result;
}

BOOL BitsClear(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a2 & 7) != 0)
  {
    v3 = 8 - (a2 & 7);
    if (v3 > a3)
    {
      v4 = ~(-1 << (v3 - a3));
    }

    else
    {
      v4 = 0;
    }

    if ((*(a1 + (a2 >> 3)) & ~(v4 | (-1 << v3))) != 0)
    {
      return 0;
    }

    a2 += v3;
    v5 = a3 >= v3;
    v6 = a3 - v3;
    if (v5)
    {
      a3 = v6;
    }

    else
    {
      a3 = 0;
    }
  }

  if (a3 >= 8)
  {
    v7 = (a1 + (a2 >> 3));
    while (!*v7++)
    {
      a2 += 8;
      a3 -= 8;
      if (a3 <= 7)
      {
        return !a3 || !(*(a1 + (a2 >> 3)) >> (8 - a3));
      }
    }

    return 0;
  }

  return !a3 || !(*(a1 + (a2 >> 3)) >> (8 - a3));
}

uint64_t ScanForZeros(uint64_t a1, int a2, int a3)
{
  v3 = (a2 & 0xFFFFFFE0) - a3;
  v4 = 0;
  v8 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (!v8)
  {
    do
    {
      if ((v4 & 0x1F) == 0)
      {
        goto LABEL_49;
      }

      v6 = bswap32(*(a1 + 4 * (v4 >> 5)));
      v7 = 0x80000000 >> (v4 & 0x1F);
      v8 = (v7 & v6) == 0 || v4 >= v5;
      if (!v8)
      {
        do
        {
          v9 = v7;
          v4 = (v4 + 1);
          if ((v6 & (v7 >> 1)) == 0)
          {
            break;
          }

          v7 >>= 1;
        }

        while (v4 < v5);
        if (v9 < 2)
        {
          goto LABEL_49;
        }
      }

      if (v4 >= v5)
      {
LABEL_49:
        while (v4 < v5)
        {
          v10 = *(a1 + 4 * (v4 >> 5));
          if (v10 != -1)
          {
            v11 = bswap32(v10);
            if ((v11 & 0x80000000) != 0 && v4 < v5)
            {
              v12 = 0x80000000;
              do
              {
                v4 = (v4 + 1);
                if ((v11 & (v12 >> 1)) == 0)
                {
                  break;
                }

                v12 >>= 1;
              }

              while (v4 < v5);
            }

            break;
          }

          v4 = (v4 + 32);
        }

        if (v4 >= v5)
        {
          break;
        }
      }

      v13 = v4 + a3;
      v14 = v4;
      v15 = v4 & 0x1F;
      if ((v4 & 0x1F) == 0)
      {
        goto LABEL_34;
      }

      v16 = bswap32(*(a1 + 4 * (v4 >> 5)));
      v17 = 0x80000000 >> v15;
      v14 = v4;
      if (((0x80000000 >> v15) & v16) != 0 || v4 >= v13)
      {
        if (v4 >= v13)
        {
          break;
        }
      }

      else
      {
        do
        {
          v19 = v17;
          v14 = (v14 + 1);
          if (v17 < 2)
          {
            break;
          }

          if ((v16 & (v17 >> 1)) != 0)
          {
            break;
          }

          v17 >>= 1;
        }

        while (v14 < v13);
        if (v14 >= v13)
        {
          break;
        }

        if (v19 < 2)
        {
LABEL_34:
          while (v14 < v13)
          {
            v20 = *(a1 + 4 * (v14 >> 5));
            if (v20)
            {
              v21 = bswap32(v20);
              if ((v21 & 0x80000000) == 0 && v14 < v13)
              {
                v22 = 0x80000000;
                do
                {
                  v14 = (v14 + 1);
                  if ((v21 & (v22 >> 1)) != 0)
                  {
                    break;
                  }

                  v22 >>= 1;
                }

                while (v14 < v13);
              }

              break;
            }

            v14 = (v14 + 32);
          }

          if (v14 >= v13)
          {
            break;
          }
        }
      }

      v4 = v14;
    }

    while (v14 < v5);
  }

  if (v4 >= v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v4;
  }
}

uint64_t GetBTreeNodeSize(uint64_t a1, uint64_t *a2, unsigned int a3, _DWORD *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2)
  {
    result = MKMediaReadSectors(a1, *(a2 + 4) * (a3 >> 9), 1uLL, v7, 0);
    if (result)
    {
      return result;
    }

    TAO_BTHeaderRec_BigToHost(v8);
    LODWORD(v5) = v8[9];
  }

  result = 0;
  *a4 = v5;
  return result;
}

uint64_t GrowAllocFile(uint64_t a1, _BYTE *a2, unsigned int a3, void *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v8 = a3 >> 3;
  if ((a3 & 7) != 0)
  {
    ++v8;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 120);
  if (v8 <= v10)
  {
    v12 = *(a1 + 124);
    v16 = v10 / v9 - v12;
  }

  else
  {
    v11 = v8 / v9;
    if (v8 % v9)
    {
      ++v11;
    }

    v12 = *(a1 + 124);
    v13 = v11 - v12;
    v14 = v10 / v9;
    v15 = v13 / v14;
    if (v13 % v14)
    {
      ++v15;
    }

    v16 = v15 * v14;
  }

  v17 = 0;
  v18 = 0;
  memset(v37, 0, sizeof(v37));
  v35 = 0;
  v36 = 0;
  v19 = (a1 + 128);
  v34 = 0;
  do
  {
    v18 += *(a1 + 132 + v17);
    if (v18 == v12)
    {
      v21 = 0;
      goto LABEL_19;
    }

    v17 += 8;
  }

  while (v17 != 64);
  LODWORD(v34) = 6;
  LODWORD(v35) = v12;
  v36 = v37;
  LODWORD(result) = ApplyToHFSPlusExtentRecords(a4, LastExtentFinder, &v34);
  if (result)
  {
    result = result;
  }

  else
  {
    result = 22;
  }

  if (result == -128)
  {
    v21 = v35;
    v12 = *(a1 + 124);
    v19 = v37;
LABEL_19:
    v22 = 0;
    v23 = 4;
    v24 = v21;
    do
    {
      v24 += *(v19 + v23);
      if (v24 == v12)
      {
        break;
      }

      ++v22;
      v23 += 8;
    }

    while (v22 != 8);
    v25 = v19 + 2 * v22;
    v26 = *v25;
    v27 = v25[1];
    if (BitsClear(a2, v27 + *v25, v16))
    {
      SetBits(a2, v27 + v26, v16, 1);
      v25[1] += v16;
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v28 = 0;
      v29 = v21;
      do
      {
        SetBits(a2, *(v19 + v28), *(v19 + v28 + 4), 0);
        v29 += *(v19 + v28 + 4);
        v30 = *(a1 + 124);
        if (v29 == v30)
        {
          break;
        }

        v31 = v28 == 56;
        v28 += 8;
      }

      while (!v31);
      v32 = v30 - v21 + v16;
      v33 = ScanForZeros(a2, a3, v32);
      if (v33 == -1)
      {
        return 4294967262;
      }

      v19[2] = 0u;
      v19[3] = 0u;
      *v19 = 0u;
      v19[1] = 0u;
      *v19 = v33;
      *(v19 + 1) = v32;
      SetBits(a2, v33, v32, 1);
      if (!v21)
      {
LABEL_35:
        result = 0;
        *(a1 + 124) += v16;
        *(a1 + 112) += *(a1 + 40) * v16;
        *(a1 + 48) -= v16;
        return result;
      }
    }

    LODWORD(result) = ApplyToHFSPlusExtentRecords(a4, LastExtentWriter, &v34);
    if (result)
    {
      result = result;
    }

    else
    {
      result = 22;
    }

    if (result == -128)
    {
      goto LABEL_35;
    }
  }

  return result;
}

_BYTE *ChangeJournalSize(uint64_t a1, unint64_t a2, _BYTE *a3, int a4, uint64_t a5)
{
  v9 = *(a5 + 44);
  v10 = *(a1 + 40);
  if (v9 % v10)
  {
    v11 = v9 / v10 + 1;
  }

  else
  {
    v11 = v9 / v10;
  }

  if (a2 % v10)
  {
    v12 = a2 / v10 + 1;
  }

  else
  {
    v12 = a2 / v10;
  }

  v13 = *(a5 + 36);
  if (v13 % v10)
  {
    v14 = v13 / v10 + 1;
  }

  else
  {
    v14 = v13 / v10;
  }

  if (v9 <= a2)
  {
    if (BitsClear(a3, v14 + v11, v12 - v11))
    {
      *(a5 + 44) = a2;
      v19 = v14 + v11;
      v20 = a3;
      v21 = v12 - v11;
    }

    else
    {
      SetBits(a3, v14, v11, 0);
      v22 = ScanForZeros(a3, a4, v12);
      if (v22 == -1)
      {
        result = SetBits(a3, v14, v11, 1);
        v12 = v11;
        goto LABEL_17;
      }

      v19 = v22;
      *(a5 + 36) = *(a1 + 40) * v22;
      *(a5 + 44) = a2;
      v20 = a3;
      v21 = v12;
    }

    result = SetBits(v20, v19, v21, 1);
LABEL_17:
    v17 = v11 - v12 + *(a1 + 48);
    goto LABEL_18;
  }

  *(a5 + 44) = a2;
  v15 = v11 - v12;
  result = SetBits(a3, v14 + v12, v15, 0);
  v17 = *(a1 + 48) + v15;
LABEL_18:
  *(a1 + 48) = v17;
  *a5 |= 4u;
  return result;
}

uint64_t UpdateDotJournalFile(uint64_t a1, uint64_t a2, unsigned int *a3, char *a4)
{
  if (*(a1 + 2) == 2 && *a2 == 2)
  {
    v7 = CFStringCreateWithCharacters(*MEMORY[0x277CBECE8], (a1 + 8), *(a1 + 6));
    result = CFEqual(v7, @".journal");
    if (result)
    {
      *(a2 + 88) = *(*a3 + 44);
      *(a2 + 100) = *(*a3 + 44) / a3[2];
      *(a2 + 104) = *(*a3 + 36) / a3[2];
      *(a2 + 108) = *(*a3 + 44) / a3[2];
      result = 4294967168;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    result = 0;
  }

  *a4 = v9;
  return result;
}

uint64_t ReadWriteFileToFromBuffer(void *a1, char *a2, unint64_t a3, uint64_t a4, unsigned int a5, int a6)
{
  v9 = a1;
  v47 = *MEMORY[0x277D85DE8];
  v10 = *(a4 + 12);
  v11 = a5 << 9;
  v12 = *(a4 + 32);
  v46[0] = *(a4 + 16);
  v46[1] = v12;
  v13 = *(a4 + 64);
  v40 = a3 / v11;
  if (a3 / v11 <= v10)
  {
    v14 = a3 / v11;
  }

  else
  {
    v14 = v10;
  }

  v46[2] = *(a4 + 48);
  v46[3] = v13;
  v15 = v46;
  if (!v14)
  {
    v17 = 0;
    v20 = 0;
    v16 = 0;
LABEL_22:
    if (v40 >= v10 || (v26 = a3 - v40 * v11) == 0)
    {
      v28 = 0;
      if (!a6)
      {
        goto LABEL_65;
      }

      goto LABEL_36;
    }

    v27 = malloc_type_calloc(1uLL, v11, 0x345CD47DuLL);
    if (!v27)
    {
      return 12;
    }

    v28 = v27;
    if (v20 == *(v15 + 1))
    {
      v17 += 8;
      if (v17 == 64)
      {
        v43 = 6;
        v44 = v16;
        v45 = v46;
        v29 = ApplyToHFSPlusExtentRecords(a1, GetFileExtentRecord, &v43);
        v17 = 0;
        v24 = v29 ? v29 : 22;
        if (v24 != -128)
        {
          goto LABEL_67;
        }
      }

      v20 = 0;
      v9 = a1;
    }

    v30 = *(v46 + v17) + v20;
    if (a6)
    {
      memcpy(v28, a2, v26);
      Sectors = MKMediaWriteSectors(v9, v30 * a5, a5, v28, 0);
      if (!Sectors)
      {
LABEL_64:
        ++v16;
        ++v20;
        v9 = a1;
        if (!a6)
        {
          goto LABEL_65;
        }

LABEL_36:
        v32 = *(a4 + 12);
        if (v16 < v32)
        {
          if (v20 == *(v46 + v17 + 4))
          {
            v17 += 8;
            if (v17 == 64)
            {
              v43 = 6;
              v44 = v16;
              v45 = v46;
              v33 = ApplyToHFSPlusExtentRecords(v9, GetFileExtentRecord, &v43);
              if (v33)
              {
                v24 = v33;
              }

              else
              {
                v24 = 22;
              }

              if (v24 != -128)
              {
                goto LABEL_66;
              }

              v17 = 0;
              v32 = *(a4 + 12);
            }

            v20 = 0;
          }

          if (v16 < v32)
          {
            while (1)
            {
              v34 = v32 - v16;
              v35 = *(v46 + v17 + 4) - v20 >= v34 ? v34 : *(v46 + v17 + 4) - v20;
              v36 = MKMediaEraseSectors(a1, (*(v46 + v17) + v20) * a5, v35 * a5, 0);
              if (v36)
              {
                break;
              }

              v16 += v35;
              v32 = *(a4 + 12);
              if (v16 < v32)
              {
                v17 += 8;
                if (v17 == 64)
                {
                  v43 = 6;
                  v44 = v16;
                  v45 = v46;
                  v37 = ApplyToHFSPlusExtentRecords(a1, GetFileExtentRecord, &v43);
                  if (v37)
                  {
                    v24 = v37;
                  }

                  else
                  {
                    v24 = 22;
                  }

                  if (v24 != -128)
                  {
                    goto LABEL_66;
                  }

                  v17 = 0;
                  v32 = *(a4 + 12);
                }
              }

              v20 = 0;
              v24 = 0;
              if (v16 >= v32)
              {
                goto LABEL_66;
              }
            }

            v24 = v36;
LABEL_66:
            if (!v28)
            {
              return v24;
            }

LABEL_67:
            free(v28);
            return v24;
          }
        }

LABEL_65:
        v24 = 0;
        goto LABEL_66;
      }
    }

    else
    {
      Sectors = MKMediaReadSectors(v9, v30 * a5, a5, v28, 0);
      if (!Sectors)
      {
        memcpy(a2, v28, v26);
        goto LABEL_64;
      }
    }

    v24 = Sectors;
    goto LABEL_67;
  }

  v16 = 0;
  v17 = 0;
  v18 = v46;
  while (1)
  {
    v19 = *(v18 + 1);
    v20 = v19 >= v14 - v16 ? v14 - v16 : v19;
    v21 = *(v46 + v17) * a5;
    v22 = v20 * a5;
    v23 = a6 ? MKMediaWriteSectors(v9, v21, v22, a2, 0) : MKMediaReadSectors(v9, v21, v22, a2, 0);
    v24 = v23;
    if (v23)
    {
      return v24;
    }

    a2 += (v11 * v20);
    v16 += v20;
    if (v16 >= v14)
    {
      v15 = v46 + v17;
      v9 = a1;
      v10 = *(a4 + 12);
      goto LABEL_22;
    }

    v17 += 8;
    if (v17 == 64)
    {
      v43 = 6;
      v44 = v16;
      v45 = v46;
      v25 = ApplyToHFSPlusExtentRecords(a1, GetFileExtentRecord, &v43);
      v17 = 0;
      v24 = v25 ? v25 : 22;
      if (v24 != -128)
      {
        return v24;
      }
    }

    v18 = v46 + v17;
    v9 = a1;
  }
}

uint64_t GetFileExtentRecord(uint64_t a1, __int128 *a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 4) == *a3 && *(a1 + 2) == *(a3 + 4) && *(a3 + 8) == *(a1 + 8))
  {
    v4 = *(a3 + 16);
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[3];
    v4[2] = a2[2];
    v4[3] = v7;
    *v4 = v5;
    v4[1] = v6;
    result = 4294967168;
  }

  else
  {
    result = 0;
  }

  *a4 = 0;
  return result;
}

uint64_t LastExtentFinder(uint64_t a1, __int128 *a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 4) == *a3 && *(a1 + 2) == *(a3 + 4))
  {
    v4 = 4;
    v5 = *(a1 + 8);
    while (1)
    {
      v5 += *(a2 + v4);
      if (v5 == *(a3 + 8))
      {
        break;
      }

      v4 += 8;
      if (v4 == 68)
      {
        goto LABEL_6;
      }
    }

    *(a3 + 8) = *(a1 + 8);
    v7 = *(a3 + 16);
    v8 = *a2;
    v9 = a2[1];
    v10 = a2[3];
    v7[2] = a2[2];
    v7[3] = v10;
    *v7 = v8;
    v7[1] = v9;
    result = 4294967168;
  }

  else
  {
LABEL_6:
    result = 0;
  }

  *a4 = 0;
  return result;
}

uint64_t LastExtentWriter(uint64_t a1, _OWORD *a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 4) == *a3 && *(a1 + 2) == *(a3 + 4) && *(a1 + 8) == *(a3 + 8))
  {
    v4 = *(a3 + 16);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    a2[2] = v4[2];
    a2[3] = v7;
    *a2 = v5;
    a2[1] = v6;
    result = 4294967168;
  }

  else
  {
    result = 0;
  }

  *a4 = 1;
  return result;
}

uint64_t MKReadHFSMDBVHB(uint64_t a1, int *a2, _BYTE *a3, unint64_t *a4, unint64_t *a5)
{
  v22 = *MEMORY[0x277D85DE8];
  result = 4294967246;
  if (!a1 || !a2)
  {
    return result;
  }

  *a2 = 0;
  v11 = a3 ? a3 : v21;
  result = MKMediaReadSectors(a1, 2uLL, 1uLL, v11, 0);
  if (result)
  {
    return result;
  }

  if (*v11 != 17474)
  {
    v15 = 0;
    v17 = 0;
LABEL_18:
    v18 = *v11;
    if (*a2 == 3)
    {
      if (v18 != 11080)
      {
        return 4294967173;
      }

      goto LABEL_28;
    }

    v19 = __rev16(v18);
    if (v19 == 18475)
    {
      v20 = 2;
    }

    else
    {
      if (v19 != 18520)
      {
        if (!*a2)
        {
          return 4294967173;
        }

        goto LABEL_28;
      }

      v20 = 4;
    }

    *a2 = v20;
LABEL_28:
    TAO_HFSPlusVolumeHeader_BigToHost(v11);
    if (*a2 != 3)
    {
      return 0;
    }

    if (a4)
    {
      *a4 = v15;
    }

    if (!a5)
    {
      return 0;
    }

    result = 0;
    *a5 = v17;
    return result;
  }

  TAO_HFSMasterDirectoryBlock_BigToHost(v11);
  v12 = v21;
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = v21;
  }

  if (*(v13 + 62) != 18475)
  {
    result = 0;
    *a2 = 1;
    return result;
  }

  *a2 = 3;
  if (a3)
  {
    v12 = a3;
  }

  v14 = *(v12 + 5) >> 9;
  v15 = *(v12 + 14) + *(v12 + 63) * v14;
  v16 = *(v12 + 64);
  result = MKMediaReadSectors(a1, v15 + 2, 1uLL, v11, 0);
  if (!result)
  {
    v17 = v16 * v14;
    goto LABEL_18;
  }

  return result;
}

uint64_t MKWriteHFSMDBVHB(uint64_t a1, int a2, void *__src, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  result = 4294967246;
  if (a1 && __src)
  {
    memset(v13, 0, sizeof(v13));
    memcpy(__dst, __src, sizeof(__dst));
    MKMediaGetGeometry(a1, v13);
    switch(__dst[0])
    {
      case 0x4858u:
        v10 = *(&v13[0] + 1);
        TAO_HFSPlusVolumeHeader_BigToHost(__dst);
        break;
      case 0x482Bu:
        v11 = a5 + a4;
        if (a2 == 3)
        {
          v12 = a4 + 2;
        }

        else
        {
          v12 = 2;
        }

        if (a2 == 3)
        {
          v10 = v11;
        }

        else
        {
          v10 = *(&v13[0] + 1);
        }

        TAO_HFSPlusVolumeHeader_BigToHost(__dst);
        goto LABEL_16;
      case 0x4244u:
        v10 = *(&v13[0] + 1);
        TAO_HFSMasterDirectoryBlock_BigToHost(__dst);
        break;
      default:
        return 4294967173;
    }

    v12 = 2;
LABEL_16:
    result = MKMediaWriteSectors(a1, v12, 1uLL, __dst, 0);
    if (!result)
    {
      return MKMediaWriteSectors(a1, v10 - 2, 1uLL, __dst, 0);
    }
  }

  return result;
}

uint64_t _MKHFSReadWriteFile(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char *a6, int a7)
{
  v10 = 0;
  v11 = *(a2 + 40);
  if (a4 % v11)
  {
    v12 = a4 / v11 + 1;
  }

  else
  {
    v12 = a4 / v11;
  }

  if (a5 % v11)
  {
    v13 = a5 / v11 + 1;
  }

  else
  {
    v13 = a5 / v11;
  }

  if (a7)
  {
    v14 = MKMediaWriteBlocks;
  }

  else
  {
    v14 = MKMediaReadBlocks;
  }

  v15 = (a3 + 20);
  LODWORD(result) = 22;
  v17 = 8;
  v18 = *(a2 + 40);
  do
  {
    v19 = v12 - v10;
    if (v12 < v10)
    {
      goto LABEL_18;
    }

    v20 = *v15;
    if (v12 >= v10 + v20)
    {
      goto LABEL_18;
    }

    v21 = v20 - v19;
    v22 = v13 >= v21 ? v21 : v13;
    LODWORD(result) = v14(a1, v19 + *(v15 - 1), v22, v18, a6, 0);
    if (result)
    {
      break;
    }

    v12 += v22;
    v13 -= v22;
    v18 = *(a2 + 40);
    a6 += v22 * v18;
LABEL_18:
    v23 = *v15;
    v15 += 2;
    v10 += v23;
    --v17;
  }

  while (v17);
  if (v13)
  {
    v24 = 27;
  }

  else
  {
    v24 = 0;
  }

  if (result)
  {
    return result;
  }

  else
  {
    return v24;
  }
}

uint64_t MKDetectAPFS(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a3 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (*(a2 + 32) == 1112758350)
  {
    *a3 = 5000;
    if (a5)
    {
      *a5 = 2;
    }
  }

  return 0;
}

uint64_t MKRecordAPFSRuns(uint64_t a1, int a2, uint64_t (*a3)(void, uint64_t, void *), uint64_t a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
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
  v42 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v35 = 0;
  v36 = 0;
  v37[0] = 0;
  v37[1] = a1;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  valuePtr = 0;
  Geometry = MKMediaGetGeometry(a1, v38);
  LODWORD(v39) = LODWORD(v38[0]) >> 9;
  LOWORD(v40) = 2;
  LODWORD(v41) = LODWORD(v38[0]) >> 9;
  *(&v41 + 1) = *(&v38[0] + 1);
  v8 = (a3)(a4, 0, 0, Geometry);
  if (!v8)
  {
    FreespaceInfo = APFSContainerGetFreespaceInfo();
    if (!FreespaceInfo)
    {
      return 12;
    }

    v10 = FreespaceInfo;
    Value = CFDictionaryGetValue(FreespaceInfo, *MEMORY[0x277CE4A60]);
    if (CFStringCompare(Value, @"APFS", 1uLL))
    {
      v8 = 4294961996;
LABEL_30:
      CFRelease(v10);
      goto LABEL_31;
    }

    v12 = CFDictionaryGetValue(v10, *MEMORY[0x277CE4A40]);
    CFNumberGetValue(v12, kCFNumberSInt64Type, &valuePtr);
    HIDWORD(v40) = valuePtr >> 9;
    v13 = CFDictionaryGetValue(v10, *MEMORY[0x277CE4A68]);
    CFNumberGetValue(v13, kCFNumberSInt64Type, &v42);
    v14 = CFDictionaryGetValue(v10, *MEMORY[0x277CE4A70]);
    CFNumberGetValue(v14, kCFNumberSInt64Type, &v43 + 8);
    *(&v42 + 1) = v42;
    if (HIDWORD(v40) >= 2)
    {
      *(&v43 + 1) *= HIDWORD(v40);
      *&v42 = v42 * HIDWORD(v40);
      *(&v42 + 1) = v42;
    }

    v15 = CFDictionaryGetValue(v10, *MEMORY[0x277CE4A58]);
    if (!v15)
    {
      v8 = 2;
      goto LABEL_30;
    }

    LOWORD(v35) = 0;
    LOWORD(v32) = 1;
    if ((a2 & 3) != 0)
    {
      v16 = v15;
      Count = CFArrayGetCount(v15);
      if (Count)
      {
        v18 = 0;
        key = *MEMORY[0x277CE4A48];
        v19 = *MEMORY[0x277CE4A50];
        v20 = Count;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v16, v18);
          if (!ValueAtIndex)
          {
            break;
          }

          v22 = ValueAtIndex;
          v23 = CFDictionaryGetValue(ValueAtIndex, key);
          CFNumberGetValue(v23, kCFNumberSInt64Type, &v36);
          v24 = CFDictionaryGetValue(v22, v19);
          CFNumberGetValue(v24, kCFNumberSInt64Type, v37);
          if (HIDWORD(v40) >= 2)
          {
            v36 *= HIDWORD(v40);
            v37[0] *= HIDWORD(v40);
          }

          if (((v32 + 1) & a2) != 0)
          {
            v34 = v36 - v33;
            if (v36 != v33)
            {
              v25 = a3(a4, 1, &v32);
              if (v25)
              {
                goto LABEL_29;
              }

              v26 = v33 + v34;
              v33 = v26;
              if (v26 > *(&v43 + 1))
              {
                *(&v43 + 1) = v26;
              }
            }
          }

          if (((v35 + 1) & a2) != 0)
          {
            v25 = a3(a4, 1, &v35);
            if (v25)
            {
              goto LABEL_29;
            }
          }

          *&v43 = v43 + v37[0];
          v33 = v36 + v37[0];
          ++v18;
        }

        while (v18 < v20);
        v27 = v32 + 1;
      }

      else
      {
        v27 = 2;
      }

      if ((v27 & a2) != 0)
      {
        v34 = v42 - v33;
        if (v42 != v33)
        {
          v25 = a3(a4, 1, &v32);
          if (v25)
          {
            goto LABEL_29;
          }

          v29 = v33 + v34;
          v33 = v29;
          if (v29 > *(&v43 + 1))
          {
            *(&v43 + 1) = v29;
          }
        }
      }
    }

    DWORD2(v44) = *(&v43 + 1) / (*(&v42 + 1) - v43);
    v25 = a3(a4, 3, &v40);
LABEL_29:
    v8 = v25;
    goto LABEL_30;
  }

LABEL_31:
  if (v8 == -1)
  {
    return *__error();
  }

  return v8;
}

uint64_t MKAPFS_IO(uint64_t *a1, int a2, uint64_t a3)
{
  v15 = 0;
  if (!a1)
  {
    return 22;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      return 4294961996;
    }

    if (a3)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      MKMediaGetAttributes(*a1, &v15);
      v5 = MKMediaCopyProperty(*a1, @"Writable");
      if (v5)
      {
        v6 = v5;
        v7 = CFEqual(v5, *MEMORY[0x277CBED28]);
        CFRelease(v6);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *a3 = *(a1 + 2);
      *(a3 + 8) = a1[2] / *(a1 + 10);
      if (v15 & HIDWORD(v15))
      {
        v14 = 1;
      }

      else
      {
        v14 = (v7 == 0) & ((v15 & HIDWORD(v15)) >> 4);
      }

      *(a3 + 20) = v7;
      *(a3 + 24) = v14;
      return result;
    }

    return 22;
  }

  if (!a3)
  {
    return 22;
  }

  v8 = *(a1 + 2);
  v9 = *a3 / v8;
  v10 = *a1;
  v11 = *(a3 + 16);
  v12 = *(a3 + 8) / v8;

  return MKMediaReadBlocks(v10, v9, v12, v8, v11, 0);
}

CFMutableDictionaryRef MKCFCreateAPFSInfo(uint64_t a1, const __CFDictionary *a2, _DWORD *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040CA22B68AuLL);
  if (v6)
  {
    v7 = v6;
    *v6 = FSConvertOptions(a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(v7 + 8) = Mutable;
    v9 = MKRecordAPFSRuns(a1, *v7, MKCFRecordFSInfo, v7);
    if (v9)
    {
      v10 = Mutable == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    free(v7);
    if (a3)
    {
      if (v9 != -1)
      {
LABEL_12:
        *a3 = v9;
        return Mutable;
      }

LABEL_11:
      v9 = *__error();
      goto LABEL_12;
    }
  }

  else
  {
    Mutable = 0;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  return Mutable;
}

uint64_t _MKMediaFileInitialize(uint64_t a1, CFDictionaryRef theDict)
{
  v14 = 0;
  if (!a1 || *a1 != 1296786550)
  {
    return 22;
  }

  if (*(a1 + 4) == -1)
  {
    v12 = *(a1 + 8);
    if (v12)
    {
      v13 = _MKMediaOpenFile(v12, theDict, &v14 + 1, &v14);
      if (v13 < 0)
      {
        return *__error();
      }

      *(a1 + 4) = v13;
      goto LABEL_8;
    }

    return 22;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"Writable");
    if (Value)
    {
      HIDWORD(v14) = CFEqual(Value, *MEMORY[0x277CBED28]);
    }
  }

  *(a1 + 8) = strdup("<unknown file>");
LABEL_8:
  v4 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 16) = Mutable;
  if (!Mutable)
  {
    return 12;
  }

  v6 = *MEMORY[0x277CBED28];
  v7 = *MEMORY[0x277CBED10];
  if (HIDWORD(v14))
  {
    v8 = *MEMORY[0x277CBED28];
  }

  else
  {
    v8 = *MEMORY[0x277CBED10];
  }

  CFDictionaryAddValue(Mutable, @"Writable", v8);
  if (v14)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  CFDictionaryAddValue(*(a1 + 16), @"Shared Writer", v9);
  v10 = CFStringCreateWithCString(v4, *(a1 + 8), 0x8000100u);
  CFDictionaryAddValue(*(a1 + 16), @"Path", v10);
  CFRelease(v10);
  return 0;
}

__CFDictionary *_MKMediaFileCopyProperties(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *MEMORY[0x277CBECE8];
  if (v2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, v2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v5 = MutableCopy;
  _MKMediaFileGetGeoProperties(a1, MutableCopy);
  return v5;
}

CFMutableDictionaryRef _MKMediaBlockDeviceCopyProperties(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *MEMORY[0x277CBECE8];
  if (v2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, v2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v5 = MutableCopy;
  _MKMediaBlockDeviceGetGeoProperties(a1, MutableCopy);
  return v5;
}

__CFDictionary *_MKMediaSubRangeCopyProperties(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CBECE8];
  if (v2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, v2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v5 = MutableCopy;
  _MKMediaSubRangeGetGeoProperties(a1, MutableCopy);
  return v5;
}

CFStringRef _MKMediaCFRuntimeCopyFormattingDesc(uint64_t a1, CFDictionaryRef formatOptions)
{
  v4 = *(a1 + 64);
  if (!v4)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], formatOptions, @"%s <%p>", "MKMedia", a1);
  }

  result = v4(*(a1 + 88), formatOptions, 0);
  if (!result)
  {
    return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], formatOptions, @"%s <%p>", "MKMedia", a1);
  }

  return result;
}

uint64_t MKMediaCreateWithFileDescriptor(uint64_t a1, int a2, const __CFDictionary *a3, _DWORD *a4)
{
  if (a2 == -1)
  {
    result = 0;
    v10 = 22;
    goto LABEL_5;
  }

  memset(&v12, 0, sizeof(v12));
  if (fstat(a2, &v12))
  {
    v8 = __error();
    result = 0;
    v10 = *v8;
    goto LABEL_5;
  }

  if ((v12.st_mode & 0xF000) == 0x8000)
  {
    v11 = &kMKMediaFileVector;
  }

  else if (devname(v12.st_rdev, 0x6000u))
  {
    v11 = &kMKMediaBlockDeviceVector;
  }

  else
  {
    v11 = &kMKMediaCharDeviceVector;
  }

  result = malloc_type_malloc(0x18uLL, 0x10300406712BA52uLL);
  if (!result)
  {
    v10 = 12;
LABEL_5:
    v13 = v10;
    if (!a4)
    {
      return result;
    }

    goto LABEL_6;
  }

  *result = 1296786550;
  *(result + 4) = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v13 = 0;
  result = MKMediaCreate(a1, result, v11, a3, &v13);
  if (a4)
  {
LABEL_6:
    *a4 = v13;
  }

  return result;
}

uint64_t MKMediaCopyProperties(uint64_t result)
{
  if (result)
  {
    return (*(result + 48))(*(result + 88));
  }

  return result;
}

uint64_t MKMediaSetProperty(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    return (*(a1 + 56))(*(a1 + 88));
  }

  else
  {
    return 22;
  }
}

uint64_t _MKMediaBufferPoolGetBuffer(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 48)))
  {
    return 0;
  }

  while (!*(a1 + 116))
  {
    if (pthread_cond_wait(a1, (a1 + 48)))
    {
      return 0;
    }
  }

  v3 = *(a1 + 112);
  if (v3 < 1)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    v4 = 0;
    while (*(*(a1 + 136) + 4 * v4))
    {
      if (v3 == ++v4)
      {
        goto LABEL_12;
      }
    }
  }

  if (v4 == v3)
  {
LABEL_12:
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 128) + (*(a1 + 120) * v4);
    *(*(a1 + 136) + 4 * v4) = 1;
    --*(a1 + 116);
  }

  pthread_mutex_unlock((a1 + 48));
  return v2;
}

uint64_t _MKMediaBufferPoolReturnBuffer(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 48));
  if (!result)
  {
    *(*(a1 + 136) + (((a2 - *(a1 + 128)) / *(a1 + 120)) << 32 >> 30)) = 0;
    ++*(a1 + 116);
    pthread_mutex_unlock((a1 + 48));

    return pthread_cond_signal(a1);
  }

  return result;
}

uint64_t MKMediaGetFileDescriptor(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 88)) != 0 && *v1 == 1296786550)
  {
    return v1[1];
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

double MKMediaGetAttributes(uint64_t a1, double *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = *(a1 + 124);
      *a2 = result;
    }
  }

  return result;
}

uint64_t MKCFCreatePartitions(int a1, const __CFDictionary *a2, CFArrayRef theArray, __CFBundle *a4, const __CFDictionary *a5, const __CFDictionary *a6, uint64_t a7, const __CFDictionary *a8, uint64_t a9)
{
  switch(a1)
  {
    case 16:
      return GPTCFCreatePartitions(a2, theArray, a4, a5, a6, a7, a8, a9);
    case 8:
      return MBRCFCreatePartitions(a2, theArray, a7, a8);
    case 1:
      return APMCFCreatePartitions(a2, theArray, a4, a5, a6, a7, a8, a9, MKMediaDeviceIO);
  }

  return 4294961989;
}

uint64_t MKCFRecordPartitions(uint64_t *a1, const __CFArray *a2)
{
  v4 = 0;
  v2 = *(*a1 + 514);
  if (v2 == 8)
  {
    return MBRCFRecordPartitions(a1, a2, 1, 0xFEu, &v4);
  }

  if (v2 == 1)
  {
    return APMCFRecordPartitions(a1, a2, 0xFEu, &v4);
  }

  return 22;
}

uint64_t MKCFSetPartitionGroupStatus(CFDictionaryRef theDict, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!theDict)
  {
    return 22;
  }

  v26 = 0;
  valuePtr = 0;
  do
  {
    Value = CFDictionaryGetValue(theDict, @"Schemes");
    if (!Value)
    {
      return *__error();
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
  }

  while (!ValueAtIndex);
  v10 = CFDictionaryGetValue(ValueAtIndex, @"Sections");
  if (!v10)
  {
    return *__error();
  }

  v11 = CFArrayDictionarySearchWithIndexOptions(v10, @"ID", @"MAP", 0, 0);
  if (!v11)
  {
    return *__error();
  }

  v12 = CFDictionaryGetValue(v11, @"Partitions");
  if (!v12)
  {
    return *__error();
  }

  v13 = v12;
  if (a4)
  {
    v14 = a4;
  }

  else
  {
    v14 = ~a3;
  }

  Count = CFArrayGetCount(v12);
  if (Count >= 1)
  {
    v16 = Count;
    v17 = 0;
    while (1)
    {
      v18 = CFArrayGetValueAtIndex(v13, v17);
      if (v18)
      {
        break;
      }

LABEL_23:
      if (v16 == ++v17)
      {
        return 0;
      }
    }

    v19 = v18;
    v20 = CFDictionaryGetValue(v18, @"GUID");
    v21 = CFDictionaryGetValue(v19, @"Status");
    v26 = 0;
    valuePtr = 0;
    if (v21)
    {
      CFNumberGetValue(v21, kCFNumberSInt64Type, &valuePtr);
      v22 = valuePtr & v14;
      v26 = valuePtr & v14;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v22 = 0;
      if (!a2)
      {
        goto LABEL_20;
      }
    }

    v23 = CFEqual(v20, a2);
    v22 = v26;
    if (v23)
    {
      v22 = v26 | a3;
      v26 |= a3;
    }

LABEL_20:
    if (v22 != valuePtr)
    {
      result = CFNumberCreate(0, kCFNumberSInt64Type, &v26);
      if (!result)
      {
        return result;
      }

      v25 = result;
      CFDictionarySetValue(v19, @"Status", result);
      CFRelease(v25);
    }

    goto LABEL_23;
  }

  return 0;
}

__CFArray *MKCFCreateMapRuns(const void *a1, uint64_t a2, _DWORD *a3)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__nel = 0u;
  v7 = 0u;
  v19 = MKMediaSchemesDetect(__nel, a2, 0, a1);
  if (v19)
  {
    result = 0;
  }

  else
  {
    qsort(__nel + 4, LOWORD(__nel[0]), 0x30uLL, RankScheme);
    switch(LODWORD(__nel[1]))
    {
      case 0x10:
        result = GPTCFCreateMapRuns(a1, 0, &v19);
        break;
      case 8:
        result = MBRCFCreateMapRuns(a1, 0, &v19);
        break;
      case 1:
        result = APMCFCreateMapRuns(a1, 0, &v19);
        break;
      default:
        result = 0;
        v19 = -5307;
        break;
    }
  }

  *a3 = v19;
  return result;
}

uint64_t MKCFWriteMediaContent(const __CFString *a1, CFDictionaryRef theDict, const __CFString *a3, unint64_t a4, size_t a5, char *a6)
{
  v9 = a3;
  v34 = 0;
  v32 = 0;
  valuePtr = 0;
  v11 = 0uLL;
  memset(v31, 0, sizeof(v31));
  if (a3)
  {
    if (!theDict)
    {
      return 22;
    }

    Value = CFDictionaryGetValue(theDict, @"Schemes");
    if (!Value)
    {
      return 22;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    if (!ValueAtIndex)
    {
      return 22;
    }

    v14 = CFDictionaryGetValue(ValueAtIndex, @"Sections");
    if (!v14)
    {
      return 22;
    }

    v15 = CFArrayDictionarySearchWithIndexOptions(v14, @"ID", @"MAP", 0, 0);
    if (!v15)
    {
      return 22;
    }

    v16 = CFDictionaryGetValue(v15, @"Partitions");
    if (!v16)
    {
      return 22;
    }

    v17 = CFArrayDictionarySearchWithIndexOptions(v16, @"GUID", v9, 0, 0);
    if (!v17)
    {
      return 4294961953;
    }

    v18 = v17;
    MKMediaGetGeometry(a1, v31);
    v19 = CFDictionaryGetValue(v18, @"Offset");
    if (!v19)
    {
      return 22;
    }

    CFNumberGetValue(v19, kCFNumberSInt64Type, &valuePtr);
    v20 = CFDictionaryGetValue(v18, @"Size");
    if (!v20)
    {
      return 22;
    }

    CFNumberGetValue(v20, kCFNumberSInt64Type, &v32);
    a1 = MKMediaCreateWithSubRange(0, a1, valuePtr, v32, &v34);
    v21 = v34;
    v9 = a1;
    v11 = 0uLL;
    if (v34)
    {
      goto LABEL_36;
    }
  }

  v37 = 0;
  *size = v11;
  v36 = v11;
  MKMediaGetGeometry(a1, size);
  v22 = LODWORD(size[0]);
  v23 = malloc_type_calloc(1uLL, LODWORD(size[0]), 0x44B96233uLL);
  if (!v23)
  {
    goto LABEL_35;
  }

  v24 = v23;
  if (!a5)
  {
    free(v23);
    goto LABEL_35;
  }

  v30 = v9;
  while (1)
  {
    v25 = a4 % v22;
    if (!(a4 % v22))
    {
      break;
    }

    Blocks = MKMediaReadBlocks(a1, a4 / v22, 1, v22, v24, 0);
    if (Blocks)
    {
      goto LABEL_33;
    }

    v27 = a5 >= v22 - v25 ? v22 - v25 : a5;
    memcpy(&v24[v25], a6, v27);
    Blocks = MKMediaWriteBlocks(a1, a4 / v22, 1, v22, v24, 0);
    if (Blocks)
    {
      goto LABEL_33;
    }

LABEL_25:
    a6 += v27;
    a4 += v27;
    a5 -= v27;
    if (!a5)
    {
      goto LABEL_26;
    }
  }

  if (a5 >= v22)
  {
    Blocks = MKMediaWriteBlocks(a1, a4 / v22, a5 / v22, v22, a6, &v37);
    if (Blocks)
    {
      goto LABEL_33;
    }

    v27 = v37 * v22;
    goto LABEL_25;
  }

  v28 = MKMediaReadBlocks(a1, a4 / v22, 1, v22, v24, 0);
  v9 = v30;
  if (v28)
  {
    v21 = v28;
    goto LABEL_34;
  }

  memcpy(v24, a6, a5);
  Blocks = MKMediaWriteBlocks(a1, a4 / v22, 1, v22, v24, 0);
  if (!Blocks)
  {
LABEL_26:
    free(v24);
    v21 = 0;
    v9 = v30;
    goto LABEL_36;
  }

LABEL_33:
  v21 = Blocks;
  v9 = v30;
LABEL_34:
  free(v24);
  if (v21 == -1)
  {
LABEL_35:
    v21 = *__error();
  }

LABEL_36:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v21 == -1)
  {
    return *__error();
  }

  return v21;
}

uint64_t MKCFSetBootcode(CFDictionaryRef theDict, uint64_t a2, size_t a3, void *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (theDict)
  {
    while (1)
    {
      Value = CFDictionaryGetValue(theDict, @"Schemes");
      if (!Value)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
      if (ValueAtIndex)
      {
        v10 = ValueAtIndex;
        v11 = CFDictionaryGetValue(ValueAtIndex, @"ID");
        if (v11 && CFStringGetCString(v11, buffer, 32, 0))
        {
          if (PMSchemeSearchByDescriptor(buffer, 0) != 8)
          {
            return 4294967292;
          }

          result = MBRCFSetBootcode(v10, a2, a3, a4);
          if (result == -1)
          {
            return *__error();
          }

          return result;
        }

        return 22;
      }
    }
  }

  return 22;
}

uint64_t MKReportMedia(const __CFDictionary *a1, const __CFDictionary *a2, uint64_t a3, FILE *a4)
{
  v119 = *MEMORY[0x277D85DE8];
  v97 = 0;
  v98 = 0;
  if (!a1)
  {
    return 22;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = *MEMORY[0x277D85E08];
  }

  if (MKCFOptionBit(a2, @"Simple Report", 1))
  {
    v8 = 0;
    LOWORD(v97) = 1;
LABEL_11:
    v9 = v8 | MKCFOptionBit(a2, @"Show Ending Offset", 1);
    v10 = MKCFOptionBit(a2, @"Show UUID", 2);
    v11 = v9 | v10 | MKCFOptionBit(a2, @"Show Freespace", 4);
    HIDWORD(v97) = v11 | MKCFOptionBit(a2, @"Show Shims", 8);
    goto LABEL_12;
  }

  if (MKCFOptionBit(a2, @"Report Format #1", 1))
  {
    v8 = 0;
    LOWORD(v97) = 2;
    goto LABEL_11;
  }

  if (MKCFOptionBit(a2, @"Report Format #2", 1))
  {
    LOWORD(v97) = 3;
    v8 = 5;
    goto LABEL_11;
  }

LABEL_12:
  if (!a3)
  {
    return 22;
  }

  v99 = 0u;
  memset(v100, 0, sizeof(v100));
  v12 = MKMediaCopyProperties(a3);
  if (!v12)
  {
    return 22;
  }

  v13 = v12;
  Value = CFDictionaryGetValue(v12, @"Geometry");
  if (Value)
  {
    v15 = Value;
    v16 = CFDictionaryGetValue(Value, @"Block Size");
    if (v16)
    {
      CFNumberGetValue(v16, kCFNumberSInt32Type, &v99 + 8);
    }

    v17 = CFDictionaryGetValue(v15, @"Sector Count");
    if (v17)
    {
      CFNumberGetValue(v17, kCFNumberSInt64Type, &v99);
    }

    v18 = CFDictionaryGetValue(v15, @"Maximum Transfer Sector Count");
    if (v18)
    {
      CFNumberGetValue(v18, kCFNumberSInt64Type, v100);
    }
  }

  v19 = MKCFOptionBit(v13, @"Writable", 1);
  LODWORD(v100[1]) |= v19;
  v20 = CFDictionaryGetValue(v13, @"Path");
  if (v20)
  {
    CFStringGetCString(v20, &v100[1] + 4, 64, 0);
  }

  CFRelease(v13);
  v21 = DWORD2(v99);
  fputc(10, v7);
  scalenumstr(v99 << 9, v96);
  fprintf(v7, "MEDIA: %s; Size %s", &v100[1] + 4, v96);
  if (v97 > 1u)
  {
    fprintf(v7, " [%lld x %ld]", v99 / (v21 >> 9), DWORD2(v99));
    if ((v100[0] & 0xFFFFFFFFFFFEFFFFLL) != 0)
    {
      fprintf(v7, "; Max Transfer Blocks %lld");
    }
  }

  else
  {
    fprintf(v7, "; Blocksize %ld");
  }

  fputc(10, v7);
  buffer[0] = 0;
  v24 = CFDictionaryGetValue(a1, @"Schemes");
  if (!v24)
  {
    return 0;
  }

  v25 = v24;
  Count = CFArrayGetCount(v24);
  if (!Count)
  {
    return 0;
  }

  v27 = 0;
  v86 = 0;
  v80 = Count;
  v79 = v25;
  do
  {
    while (1)
    {
      v101[0] = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v25, v27);
      if (ValueAtIndex)
      {
        break;
      }

      if (++v27 >= v80)
      {
        goto LABEL_159;
      }
    }

    v29 = ValueAtIndex;
    v30 = CFDictionaryGetValue(ValueAtIndex, @"ID");
    if (!v30)
    {
      goto LABEL_159;
    }

    CFStringGetCString(v30, buffer, 32, 0x600u);
    v31 = PMSchemeSearchByDescriptor(buffer, &v86);
    v32 = CFDictionaryGetValue(v29, @"Name");
    if (!v32)
    {
      goto LABEL_159;
    }

    CFStringGetCString(v32, v101, 32, 0x600u);
    fprintf(v7, "SCHEME: %i %s", v27 + 1, buffer);
    if (v97 >= 2u)
    {
      fprintf(v7, ", %s [%d]", v101, v31);
      v33 = v86;
      if (v86)
      {
        if (strcasecmp(v86, v101))
        {
          fprintf(v7, " **official name varies. %s", v33);
        }
      }
    }

    fputc(10, v7);
    LOWORD(v98) = v31;
    v91 = 0;
    valuePtr = 0;
    v88 = 0;
    v89 = 0;
    v87 = 0;
    v109 = 0;
    memset(v108, 0, sizeof(v108));
    memset(v107, 0, sizeof(v107));
    memset(v106, 0, sizeof(v106));
    memset(out, 0, 38);
    v34 = CFDictionaryGetValue(v29, @"Sections");
    v81 = v27;
    if (v34)
    {
      v35 = v34;
      v36 = CFArrayGetCount(v34);
      if (v36 >= 1)
      {
        v37 = 0;
        memset(uu, 0, sizeof(uu));
        v84 = v36 & 0x7FFFFFFF;
        theArray = v35;
        v83 = v36;
        v82 = v36;
        while (1)
        {
          v38 = CFArrayGetValueAtIndex(theArray, v37);
          UUID = v38;
          if (v38)
          {
            break;
          }

          ++v37;
LABEL_152:
          if (v37 == v84)
          {
            goto LABEL_157;
          }
        }

        if (CFDictionaryGetUUID(v38, @"GUID", uu))
        {
          uuid_clear(uu);
        }

        else
        {
          uuid_unparse(uu, out);
        }

        v39 = CFDictionaryGetValue(UUID, @"ID");
        if (v39)
        {
          CFStringGetCString(v39, v108, 40, 0x600u);
        }

        v40 = CFDictionaryGetValue(UUID, @"Type");
        if (v40)
        {
          CFStringGetCString(v40, v106, 32, 0);
        }

        v41 = CFDictionaryGetValue(UUID, @"Name");
        if (v41)
        {
          CFStringGetCString(v41, v107, 32, 0);
        }

        v42 = CFDictionaryGetValue(UUID, @"Overhead");
        if (v42)
        {
          CFNumberGetValue(v42, kCFNumberSInt32Type, &valuePtr);
        }

        fprintf(v7, "SECTION: %i", ++v37);
        if (v83 != 1)
        {
          fprintf(v7, " of %i", v82);
        }

        fprintf(v7, " Type:'%s'", v108);
        if (strcasecmp("MAP", v108))
        {
          fprintf(v7, "; %s", v108);
          if (LOBYTE(v106[0]))
          {
            fprintf(v7, ", Name:%s", v107);
          }

          if (!strcasecmp("DDM", v108))
          {
            fwrite("\n[ Not implemented ]", 0x14uLL, 1uLL, v7);
          }

          UUID = 0;
          goto LABEL_151;
        }

        v91 = 512;
        v43 = CFDictionaryGetValue(UUID, @"Media Block Size");
        if (v43)
        {
          CFNumberGetValue(v43, kCFNumberSInt16Type, &v91);
        }

        v44 = CFDictionaryGetValue(UUID, @"Media Offset");
        if (v44)
        {
          CFNumberGetValue(v44, kCFNumberSInt64Type, &v87);
        }

        v45 = CFDictionaryGetValue(UUID, @"Media Block Count");
        if (v45)
        {
          CFNumberGetValue(v45, kCFNumberSInt64Type, &v88);
        }

        v46 = CFDictionaryGetValue(UUID, @"Section Block Count");
        if (v46)
        {
          CFNumberGetValue(v46, kCFNumberSInt64Type, &v89);
        }

        if (v88)
        {
          scalenumstr(v88 << 9, v104);
          fprintf(v7, "; Size %s [%lld x %d]", v104, v89, 512);
        }

        if (v97 >= 2u)
        {
          fprintf(v7, "; Offset %lld Blocks (%lld", v87, v88);
          if (valuePtr)
          {
            fprintf(v7, " + %u", valuePtr);
          }

          fwrite(") x 512", 7uLL, 1uLL, v7);
          if (v97 >= 2u && v91 != 512)
          {
            fprintf(v7, "; [Actual Blocksize %i]", v91);
          }
        }

        if ((v97 & 0x200000000) != 0)
        {
          fprintf(v7, "; UUID: %s\n", out);
        }

        fputc(10, v7);
        v47 = CFDictionaryGetValue(UUID, @"Partitions");
        if (v47)
        {
          v48 = v47;
          v49 = CFArrayGetCount(v47);
          UUID = v49;
          if (v49)
          {
            if (v97 < 2u)
            {
              fprintf(v7, "ID Type                 Size   Name             (%d)\n", v49);
              v50 = "-- -------------------- ------ --------------------\n";
              v51 = 52;
            }

            else
            {
              fwrite("ID Type                 Offset       Size         ", 0x32uLL, 1uLL, v7);
              if ((v97 & 0x100000000) != 0)
              {
                fwrite("End          ", 0xDuLL, 1uLL, v7);
              }

              fprintf(v7, "Name                      (%i)\n", UUID);
              fwrite("-- -------------------- ------------ ------------", 0x31uLL, 1uLL, v7);
              if ((v97 & 0x100000000) != 0)
              {
                fwrite(" ------------", 0xDuLL, 1uLL, v7);
              }

              v50 = " -------------------- --------\n";
              v51 = 31;
            }

            fwrite(v50, v51, 1uLL, v7);
            v95 = 0;
            v93 = 0;
            v94 = 0;
            v112 = 0;
            *v111 = 0;
            v92 = 0;
            v52 = v87;
            if (UUID < 1)
            {
              UUID = 0;
LABEL_143:
              if (v97 >= 2u && (v97 & 0x400000000) != 0)
              {
                v77 = v88 + v87;
                v78 = v88 + v87 - v52;
                if (v78 >= 1 && (v78 > 0xF || (v97 & 0x800000000) != 0))
                {
                  fprintf(v7, "   %-20s %12llu %12llu", "Free", v52, v88 + v87 - v52);
                  if ((v97 & 0x100000000) != 0)
                  {
                    fprintf(v7, " %12llu", v77 - 1);
                  }

                  fputc(10, v7);
                }
              }

              goto LABEL_151;
            }

            v53 = 0;
            v54 = UUID & 0x7FFFFFFF;
            while (1)
            {
              LOBYTE(v115) = 0;
              v114[0] = 0;
              v113[0] = 0;
              v95 = 0;
              v93 = 0;
              v94 = 0;
              v92 = 0;
              v55 = CFArrayGetValueAtIndex(v48, v53);
              if (v55)
              {
                break;
              }

              UUID = 0xFFFFFFFFLL;
LABEL_140:
              if (v54 == ++v53)
              {
                goto LABEL_143;
              }
            }

            v56 = v55;
            v57 = CFDictionaryGetValue(v55, @"Partition ID");
            if (v57)
            {
              CFNumberGetValue(v57, kCFNumberIntType, &v95);
            }

            v58 = CFDictionaryGetValue(v56, @"Type");
            if (v58)
            {
              v59 = v58;
              TypeID = CFStringGetTypeID();
              if (TypeID != CFGetTypeID(v59))
              {
                v115 = *"Bad type";
                v116 = unk_2586A08A0;
                v117 = xmmword_2586A08B0;
                v118 = unk_2586A08C0;
                v92 = 7;
                UUID = 0xFFFFFFFFLL;
                goto LABEL_104;
              }

              CFStringGetCString(v59, v114, 64, 0x600u);
              UUID = MKTypeClassify(v98, v59, 0, &v92, 0, 0);
            }

            else
            {
              UUID = 0xFFFFFFFFLL;
            }

            if (v92 == 3)
            {
              v61 = "Explicit Record";
              goto LABEL_108;
            }

LABEL_104:
            v62 = CFDictionaryGetValue(v56, @"Name");
            if (!v62)
            {
              goto LABEL_109;
            }

            v63 = v62;
            v64 = CFStringGetTypeID();
            if (v64 == CFGetTypeID(v63))
            {
              CFStringGetCString(v63, &v115, 64, 0x600u);
              goto LABEL_109;
            }

            v61 = "Bad name";
LABEL_108:
            v65 = *(v61 + 1);
            v115 = *v61;
            v116 = v65;
            v66 = *(v61 + 3);
            v117 = *(v61 + 2);
            v118 = v66;
LABEL_109:
            v67 = CFDictionaryGetValue(v56, @"Offset");
            if (v67)
            {
              v68 = v67;
              v69 = CFNumberGetTypeID();
              if (v69 == CFGetTypeID(v68))
              {
                CFNumberGetValue(v68, kCFNumberSInt64Type, &v94);
              }
            }

            v70 = CFDictionaryGetValue(v56, @"Size");
            if (v70)
            {
              v71 = v70;
              v72 = CFNumberGetTypeID();
              if (v72 == CFGetTypeID(v71))
              {
                CFNumberGetValue(v71, kCFNumberSInt64Type, &v93);
              }
            }

            v73 = v94;
            if (v94 <= v52)
            {
              v74 = v52;
            }

            else
            {
              v74 = v94;
            }

            if (v97 < 2u)
            {
              v76 = v95;
              scalenumstr(v93 << 9, v110);
              fprintf(v7, "%2i %-20.20s %6s", v76, v114, v110);
              if (v115 && strcasecmp("untitled", &v115))
              {
                fprintf(v7, " %-20.20s");
              }
            }

            else
            {
              if ((v97 & 0x400000000) != 0 && (v74 - v52) >= 1 && (v74 - v52 > 0x1F || (v97 & 0x800000000) != 0))
              {
                fprintf(v7, "   %-20s %12llu %12llu", "Free", v52, v74 - v52);
                if ((v97 & 0x100000000) != 0)
                {
                  fprintf(v7, " %12llu", v74 - 1);
                }

                fputc(10, v7);
                v73 = v94;
              }

              fprintf(v7, "%2i %-20.20s %12llu %12llu", v95, v114, v73, v93);
              if ((v97 & 0x100000000) != 0)
              {
                v75 = v93 - 1;
                if (!v93)
                {
                  v75 = 0;
                }

                fprintf(v7, " %12llu", v75 + v94);
              }

              if (v115 && strcasecmp("untitled", &v115))
              {
                fprintf(v7, " %-20.20s", &v115);
              }

              if ((v97 & 0x200000000) != 0)
              {
                UUID = CFDictionaryGetUUID(v56, @"GUID", v111);
                uuid_unparse(v111, v113);
                if (!uuid_is_null(v111))
                {
                  fprintf(v7, " %36s");
                }
              }
            }

            fputc(10, v7);
            v52 = v93 + v94;
            goto LABEL_140;
          }
        }

        else
        {
          UUID = 22;
        }

LABEL_151:
        fputc(10, v7);
        goto LABEL_152;
      }
    }

    UUID = 22;
LABEL_157:
    v27 = v81 + 1;
    v25 = v79;
  }

  while (v81 + 1 < v80);
  if (UUID == -1)
  {
LABEL_159:
    UUID = *__error();
    if (UUID == -1)
    {
      return *__error();
    }
  }

  return UUID;
}

char *scalenumstr(unint64_t a1, char *a2)
{
  if (a1 < 0x401)
  {
    v4 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      if ((a1 & 0x3FF) <= 0x200)
      {
        a1 >>= 10;
      }

      else
      {
        a1 = (a1 >> 10) + 1;
      }

      v3 += 3;
    }

    while (a1 > 0x400);
    v4 = v3 / 3u;
  }

  sprintf(a2, "%hd %s", a1, *(&off_2798A2910 + v4));
  return a2;
}

uint64_t MKShowMedia(const __CFDictionary *a1, uint64_t a2, FILE *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, @"Report Format #2", *MEMORY[0x277CBED28]);
  v7 = MKReportMedia(a1, Mutable, a2, a3);
  CFRelease(Mutable);
  return v7;
}

void *MKMediaCreateWithEmbeddedHFSPlus(void *result, int *a2)
{
  v7 = -50;
  if (result)
  {
    v3 = result;
    v6 = 0;
    v4 = 0;
    v5 = 0;
    v7 = MKReadHFSMDBVHB(result, &v6, 0, &v5, &v4);
    if (v7)
    {
      result = 0;
    }

    else if (v6 == 3)
    {
      result = MKMediaCreateWithSubRange(*MEMORY[0x277CBECE8], v3, v5, v4, &v7);
      if (result)
      {
        v7 = 0;
      }
    }

    else
    {
      result = 0;
      v7 = -123;
    }
  }

  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t MKStartupFileCreate(const void *a1, CFDictionaryRef theDict)
{
  v26[10] = *MEMORY[0x277D85DE8];
  valuePtr = -1;
  if (!theDict)
  {
    return 4294967246;
  }

  Value = CFDictionaryGetValue(theDict, @"Data");
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 != CFDataGetTypeID())
    {
      return 4294967246;
    }
  }

  v7 = CFDictionaryGetValue(theDict, @"Size");
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    if (v9 != CFNumberGetTypeID() || !CFNumberGetValue(v8, kCFNumberSInt64Type, &valuePtr))
    {
      return 4294967246;
    }
  }

  v10 = valuePtr;
  if (v5)
  {
    Length = CFDataGetLength(v5);
    if (v10 != -1)
    {
      if (v10 >= Length)
      {
        v10 = valuePtr;
        goto LABEL_15;
      }

      return 4294967246;
    }

    valuePtr = Length;
    v10 = Length;
  }

  else if (valuePtr == -1)
  {
    return 4294967246;
  }

LABEL_15:
  v23 = 0;
  v20 = 0;
  v21 = 0;
  result = MKReadHFSMDBVHB(a1, &v23, __src, &v21, &v20);
  v22 = result;
  if (result)
  {
    return result;
  }

  if (v23 == 4)
  {
    goto LABEL_19;
  }

  if (v23 != 3)
  {
    if (v23 != 2)
    {
      return 4294967173;
    }

LABEL_19:
    v13 = CFRetain(a1);
    goto LABEL_20;
  }

  v13 = MKMediaCreateWithSubRange(*MEMORY[0x277CBECE8], a1, v21, v20, &v22);
  result = v22;
  if (!v22)
  {
LABEL_20:
    result = HFSAllocateSpace(v13, __src, v26, v10);
    v22 = result;
    if (!result)
    {
      v14 = v10 / v25;
      if (v10 % v25)
      {
        ++v14;
      }

      if (!v14)
      {
        goto LABEL_27;
      }

      v15 = v14 * v25;
      v16 = malloc_type_calloc(v15, 1uLL, 0x100004077774924uLL);
      if (v5)
      {
        BytePtr = CFDataGetBytePtr(v5);
        v18 = CFDataGetLength(v5);
        memcpy(v16, BytePtr, v18);
      }

      result = MKHFSWriteFile(v13, __src, v26, 0, v15, v16);
      v22 = result;
      if (!result)
      {
LABEL_27:
        result = MKWriteHFSMDBVHB(v13, v23, __src, v21, v20);
        v22 = result;
      }
    }
  }

  if (v13)
  {
    CFRelease(v13);
    return v22;
  }

  return result;
}

uint64_t MKBSDMountinfo(const char *a1, statfs **a2)
{
  v9 = 0;
  *a2 = 0;
  v4 = getmntinfo(&v9, 2);
  if (v4 < 1)
  {
LABEL_5:
    v7 = *__error();
  }

  else
  {
    v5 = v9;
    v6 = v4 + 1;
    while (strcmp(v5->f_mntfromname, a1))
    {
      v9 = ++v5;
      if (--v6 <= 1)
      {
        goto LABEL_5;
      }
    }

    LOWORD(v7) = 0;
    *a2 = v5;
  }

  return v7;
}

uint64_t MKBSDMountpoint(const char *a1, char *a2)
{
  v5 = 0;
  v3 = MKBSDMountinfo(a1, &v5);
  if (v5)
  {
    strlcpy(a2, v5->f_mntfromname, 0x400uLL);
  }

  return v3;
}

uint64_t addentry32(const void **a1, const void *a2, size_t size, unsigned int a4, int a5)
{
  if (a1)
  {
    v7 = size;
    v10 = *a1;
    v11 = size;
    if (!v10)
    {
      v10 = malloc_type_calloc(1uLL, size, 0x4CAC8EFBuLL);
      *a1 = v10;
      if (!v10)
      {
        return *__error();
      }
    }

    v12 = a5 & 0xFFFFFFFE;
    v13 = *&v10[v11 - 4];
    if (v13 >= a4)
    {
      v14 = a4;
    }

    else
    {
      v14 = *&v10[v11 - 4];
    }

    v15 = v7 + v14 * v12;
    v16 = moveblockextended(a1, v15, v12, 0, v7 + v13 * v12);
    if (v16)
    {
      v17 = v16 << 16;
      if (v16 << 16 == -65536)
      {
        return *__error();
      }
    }

    else
    {
      memmove(*a1 + v15, a2, v12);
      v17 = 0;
      *(*a1 + v11 - 4) = v13 + 1;
    }
  }

  else
  {
    v17 = 1441792;
  }

  return (v17 >> 16);
}

uint64_t delentry32(const void ***a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a1)
  {
    v6 = *a1;
    v7 = *(v6 + a2 - 4);
    if (v7 <= a3)
    {
      return -110;
    }

    else
    {
      v8 = moveblockextended(v6, a2 + (a4 & 0xFFFFFFFE) * a3, -(a4 & 0xFFFFFFFE), 0, a2 + v7 * (a4 & 0xFFFFFFFE));
      if (!v8)
      {
        v8 = 0;
        *(*a1 + a2 - 4) = v7 - 1;
      }
    }
  }

  else
  {
    return 22;
  }

  return v8;
}

uint64_t ntfs_show_attr(uint64_t a1)
{
  v2 = *(a1 + 8);
  puts("\nAttribute");
  printf("type            %8X\n", *a1);
  printf("record length   %8X\n", *(a1 + 4));
  v3 = "non-resident";
  if (!v2)
  {
    v3 = "resident";
  }

  printf("flags           %8X %12s\n", *(a1 + 8), v3);
  if (*(a1 + 9))
  {
    printf("name %2i        %s\n", *(a1 + 9), (a1 + *(a1 + 10)));
    printf("name length     %8X\n", *(a1 + 9));
    printf("name offset     %8X\n", *(a1 + 10));
  }

  if (*(a1 + 12))
  {
    printf("compression     %8X\n", *(a1 + 12));
  }

  if (*(a1 + 14))
  {
    printf("index           %8X\n", *(a1 + 14));
  }

  if (v2)
  {
    printf("vcnstart        %8lli\n", *(a1 + 16));
    printf("vcnend          %8lli\n", *(a1 + 24));
    result = printf("offset          %8i\n", *(a1 + 32));
    if (*(a1 + 34))
    {
      result = printf("cmpr algo       %8i\n", *(a1 + 34));
    }

    if (*(a1 + 36))
    {
      result = printf("reserved        %8i\n", *(a1 + 36));
    }

    if (*(a1 + 40))
    {
      result = printf("allocated       %8lli\n", *(a1 + 40));
    }

    if (*(a1 + 48))
    {
      result = printf("length          %8lli\n", *(a1 + 48));
    }

    if (*(a1 + 56))
    {
      return printf("initialized     %8lli\n");
    }
  }

  else
  {
    printf("length          %8i\n", *(a1 + 16));
    if (*(a1 + 18))
    {
      printf("reserved        %8i\n", *(a1 + 18));
    }

    result = printf("offset          %8i\n", *(a1 + 20));
    if (*(a1 + 22))
    {
      return printf("indexed         %8i\n");
    }
  }

  return result;
}

uint64_t MKDetectNTFS(uint64_t a1, unsigned __int8 *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  *a3 = 0;
  if (*(a2 + 255) == 43605)
  {
    *a3 = 1000;
    v5 = *a2;
    if ((v5 == 233 || v5 == 235 && a2[2] == 144) && *(a2 + 3) == 0x202020205346544ELL)
    {
      *a3 = 5000;
      if (a5)
      {
        *a5 = 4;
      }
    }
  }

  return 0;
}

uint64_t MKRecordNTFSRuns()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v75 = *MEMORY[0x277D85DE8];
  v58 = 0;
  v59 = 0;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v63 = 0u;
  memset(v64, 0, 272);
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  v52 = 0;
  Blocks = MKMediaReadBlocks(v0, 0, 1, 0x800u, v65, 0);
  if (Blocks)
  {
    goto LABEL_2;
  }

  MKDetectNTFS(Blocks, v65, &v52, 0, 0);
  if (v52 < 5000)
  {
    v10 = 0;
    v9 = 4294967173;
    goto LABEL_6;
  }

  MKMediaGetGeometry(v7, v56);
  v10 = 0;
  LOWORD(v60) = 4;
  LODWORD(v61) = LODWORD(v56[0]) >> 9;
  *(&v61 + 1) = *(&v56[0] + 1) * (LODWORD(v56[0]) >> 9);
  *&v62 = *(&v61 + 1);
  v9 = 22;
  if ((v67 + 0x7FFF) >= 0x81FFu && ((v67 - 1) & v67) == 0)
  {
    if (!v68)
    {
      goto LABEL_3;
    }

    v10 = 0;
    if (v68 <= 0x80u && ((v68 - 1) & v68) == 0)
    {
      v12 = v68 * v67;
      if (v12 > 0x10000)
      {
        goto LABEL_3;
      }

      v13 = v68 / (v67 >> 9);
      v14 = v70 / v68;
      HIDWORD(v60) = v67 >> 9;
      *(&v62 + 1) = v14 * v13;
      if (v14 * v13 < 0x40)
      {
        goto LABEL_3;
      }

      v10 = 0;
      v15 = (*(&v56[0] + 1) * (LODWORD(v56[0]) >> 9)) / (v14 * v13);
      if (v15 <= 1000.0 && v15 >= 0.001)
      {
        v10 = 0;
        if (v71 <= v14 && v72 <= v14)
        {
          if (v73 < 0)
          {
            if (v73 < 0xFFFFFFF2)
            {
              goto LABEL_3;
            }

            v16 = 1 << -v73;
          }

          else
          {
            if (v73 > 0x40)
            {
              goto LABEL_3;
            }

            v16 = v12 * v73;
          }

          if ((v16 & (v16 - 1)) != 0)
          {
            goto LABEL_3;
          }

          if (v74 < 0)
          {
            if (v74 < 0xFFFFFFF0)
            {
              goto LABEL_3;
            }

            v17 = 1 << -v74;
          }

          else
          {
            if (v74 > 0x40)
            {
              goto LABEL_3;
            }

            v17 = v12 * v74;
          }

          if ((v17 & (v17 - 1)) != 0)
          {
            goto LABEL_3;
          }

          v51 = v68 / (v67 >> 9);
          v18 = v71 * v13;
          v19 = v16 / v67;
          if (v16 % v67)
          {
            LOWORD(v19) = v19 + 1;
          }

          v20 = v19;
          v21 = v67;
          Blocks = MKMediaReadBlocks(v7, v18 + 2 * v20 + v19, v20, v67, v65, 0);
          if (Blocks)
          {
            goto LABEL_2;
          }

          v22 = v16;
          if (ntfs_fixup(v65, v16, v21))
          {
            goto LABEL_40;
          }

          v23 = v69;
          v24 = &v65[v16];
          v25 = &v24[-2 * (v66 & 0x7FFF)];
          if (&v65[v69] < v25)
          {
            v26 = v69;
            while (1)
            {
              v27 = &v65[v23];
              v28 = *&v65[v23];
              if (v28 == -1)
              {
                goto LABEL_49;
              }

              if (v28 == 96)
              {
                break;
              }

              v26 += v27[2];
              v23 = v26;
              if (&v65[v26] >= v25)
              {
                goto LABEL_49;
              }
            }

            v29 = v23 + v27[10];
            v30 = v27[8];
            if ((v29 + v30) > 0x8000)
            {
LABEL_40:
              v10 = 0;
              v9 = 22;
              goto LABEL_6;
            }

            uniconvert(&v64[3], 256, 0x8000100u, 0, &v65[v29], v30, 0x14000100u, 1u);
          }

LABEL_49:
          Blocks = MKMediaReadBlocks(v7, v18 + (6 * v20), v20, v21, v65, 0);
          if (Blocks)
          {
LABEL_2:
            v9 = Blocks;
LABEL_3:
            v10 = 0;
            goto LABEL_6;
          }

          if (ntfs_fixup(v65, v22, v21))
          {
            goto LABEL_40;
          }

          v31 = v69;
          v32 = &v24[-2 * (v66 & 0x7FFF)];
          v33 = &v65[v69];
          if (v33 < v32)
          {
            v9 = 2;
            while (1)
            {
              if (*v33 == -1)
              {
                goto LABEL_57;
              }

              if (*v33 == 128)
              {
                break;
              }

              v10 = 0;
              v31 += *(v33 + 2);
              v33 = &v65[v31];
              if (v33 >= v32)
              {
                goto LABEL_6;
              }
            }

            v34 = *(v33 + 16);
            if (*(v33 + 2) <= v34)
            {
              goto LABEL_40;
            }

            ntfs_runtovrun(&v58, &v57, &v59, &v33[v34]);
            v35 = v4(v2, 0, 0);
            v10 = v58;
            if (v35)
            {
              v9 = v35;
              goto LABEL_6;
            }

            v36 = *v58;
            v50 = malloc_type_malloc(0x2000uLL, 0x1497D878uLL);
            if (!v50)
            {
              v9 = 0xFFFFFFFFLL;
              goto LABEL_6;
            }

            v37 = *(v33 + 6);
            if ((v37 & 0x1FF) != 0)
            {
              v38 = ((v37 >> 9) & 0xFFFFFFFFFFFFFLL) + 1;
            }

            else
            {
              v38 = (v37 >> 9) & 0xFFFFFFFFFFFFFLL;
            }

            v49 = v38;
            if ((v6 & 0x40003) == 0)
            {
              goto LABEL_96;
            }

            if (v38)
            {
              v47 = v36 * v51;
              v48 = 0;
LABEL_68:
              v39 = MKMediaReadBlocks(v7, v48 + v47, 16, 0x200u, v50, 0);
              if (v39)
              {
LABEL_99:
                v9 = v39;
LABEL_89:
                if (v55)
                {
                  if (((v53 + 1) & v6) != 0)
                  {
                    v9 = v4(v2, 1, &v53);
                  }

                  if (v9)
                  {
LABEL_97:
                    v4(v2, 4, 0);
                    free(v50);
                    if (v10)
                    {
                      goto LABEL_7;
                    }

                    goto LABEL_8;
                  }

                  v46 = v54 + v55;
                  v54 += v55;
                  v55 = 0;
                  if (v53 == 1 && v46 > *(&v63 + 1))
                  {
                    *(&v63 + 1) = v46;
                  }
                }

LABEL_96:
                v64[2] = *(&v63 + 1) / (*(&v62 + 1) - v63);
                v9 = v4(v2, 3, &v60);
                goto LABEL_97;
              }

              v40 = 0;
              v41 = v53;
              v42 = v55;
LABEL_70:
              v43 = 0;
              while (1)
              {
                v44 = (*&v50[8 * v40] >> v43) & 1;
                if (v44 != v41)
                {
                  if (v42)
                  {
                    if (!v41)
                    {
                      *&v63 = v63 + v42;
                    }

                    if (((v41 + 1) & v6) != 0)
                    {
                      v39 = v4(v2, 1, &v53);
                      if (v39)
                      {
                        goto LABEL_99;
                      }

                      v42 = v55;
                      v41 = v53;
                    }

                    v45 = v54 + v42;
                    v54 = v45;
                    v55 = 0;
                    if (v41 == 1 && v45 > *(&v63 + 1))
                    {
                      *(&v63 + 1) = v45;
                    }
                  }

                  v42 = 0;
                  LOWORD(v53) = v44;
                  v41 = v44;
                }

                if (v42 + v54 >= *(&v62 + 1))
                {
                  break;
                }

                v42 += v51;
                v55 = v42;
                if (++v43 == 64)
                {
                  if (++v40 != 1024)
                  {
                    goto LABEL_70;
                  }

                  v9 = 0;
                  v48 += 16;
                  if (v49 > v48)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_89;
                }
              }
            }

            v9 = 0;
            goto LABEL_89;
          }

LABEL_57:
          v10 = 0;
          v9 = 2;
        }
      }
    }
  }

LABEL_6:
  v4(v2, 4, 0);
  if (v10)
  {
LABEL_7:
    free(v10);
  }

LABEL_8:
  if (v57)
  {
    free(v57);
  }

  if (v9 == -1)
  {
    return *__error();
  }

  return v9;
}

uint64_t ntfs_fixup(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*a1 == 1162627398)
  {
    v3 = *(a1 + 6);
    if ((v3 - 1) * a3 == a2)
    {
      v4 = *(a1 + 4);
      if (v4 >= a2)
      {
        printf("ntfs_fixup: invalid offset: %x", a2, a3);
      }

      else
      {
        if (v3 < 2)
        {
          return 0;
        }

        v5 = (a1 + v4);
        v6 = *v5;
        v7 = (a1 + a3 - 2);
        v8 = 1;
        while (*v7 == v6)
        {
          *v7 = v5[v8];
          v7 = (v7 + a3);
          if (v3 == ++v8)
          {
            return 0;
          }
        }

        printf("ntfs_fixup: fixup %d doesn't match\n", a2, a3);
      }
    }

    else
    {
      printf("ntfs_fixup: bad fixups number: %d for %ld bytes block\n", a2, a3);
    }
  }

  else
  {
    printf("ntfs_fixup: magic doesn't match: %08x != %08x\n", a2, a3);
  }

  return 22;
}

void *ntfs_runtovrun(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = *a4;
  if (*a4)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v10 += (v8 >> 4) + (v8 & 0xF) + 1;
      ++v9;
      v8 = a4[v10];
    }

    while (a4[v10]);
  }

  else
  {
    v9 = 0;
  }

  v11 = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
  result = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  v13 = *a4;
  if (*a4)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    do
    {
      result[v15] = 0;
      if ((v13 & 0xF) != 0)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v18 += a4[++v16] << v17;
          result[v15] = v18;
          v17 += 8;
        }

        while (8 * (v13 & 0xF) != v17);
      }

      v19 = v16 + 1;
      if (v13 >= 0x10)
      {
        v21 = v13 >> 4;
        if (a4[v16 + v21] < 0)
        {
          v26 = 0;
          v23 = -1 << (8 * v21);
          v27 = v19;
          do
          {
            v28 = a4[v27++];
            v23 |= v28 << v26;
            v26 += 8;
          }

          while (8 * v21 != v26);
        }

        else
        {
          v22 = 0;
          v23 = 0;
          v24 = v19;
          do
          {
            v25 = a4[v24++];
            v23 |= v25 << v22;
            v22 += 8;
          }

          while (8 * v21 != v22);
        }

        v19 += v21;
        v14 += v23;
        if (v23)
        {
          v20 = v14;
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }

      v11[v15++] = v20;
      v13 = a4[v19];
      v16 = v19;
    }

    while (a4[v19]);
  }

  else
  {
    v15 = 0;
  }

  *a1 = v11;
  *a2 = result;
  *a3 = v15;
  return result;
}

CFMutableDictionaryRef MKCFCreateNTFSInfo(uint64_t a1, const __CFDictionary *a2, _DWORD *a3)
{
  v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x1020040CA22B68AuLL);
  if (v5)
  {
    v6 = v5;
    *v5 = FSConvertOptions(a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v6[1] = Mutable;
    v8 = MKRecordNTFSRuns();
    if (v8)
    {
      v9 = Mutable == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    free(v6);
    if (a3)
    {
      if (v8 != -1)
      {
LABEL_12:
        *a3 = v8;
        return Mutable;
      }

LABEL_11:
      v8 = *__error();
      goto LABEL_12;
    }
  }

  else
  {
    Mutable = 0;
    if (a3)
    {
      goto LABEL_11;
    }
  }

  return Mutable;
}

uint64_t PMCategoryStr(char *a1, _WORD *a2)
{
  v3 = APMDescriptorSearch(a1);
  v4 = v3;
  result = APMCategorize(v3);
  if (a2)
  {
    *a2 = v4;
  }

  return result;
}

unint64_t PMConvertBlocks64(unint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2)
  {
    if (a2 != a3)
    {
      return (a2 >> 9) * result / (a3 >> 9);
    }
  }

  return result;
}

_DWORD *PMConvertRecord(_DWORD *result, unsigned int a2, int a3, int a4, unsigned int a5)
{
  if (a4 != a5 && a4 && a5)
  {
    result[22] = result[22] & 0xFFBFFFFF | ((a5 == 1) << 22);
    v5 = result[2] * a4;
    v6 = result[3] * a4;
    if (a2 <= 3 && a3 == 4097)
    {
      v7 = (v5 + v6 - 1) / a5;
      result[2] = 1;
      result[3] = v7;
LABEL_14:
      result[21] = v7;
      return result;
    }

    if (v5 % a5)
    {
      v8 = v5 / a5 + 1;
    }

    else
    {
      v8 = v5 / a5;
    }

    if (v6 % a5)
    {
      v7 = v6 / a5 + 1;
    }

    else
    {
      v7 = v6 / a5;
    }

    result[2] = v8;
    result[3] = v7;
    if (result[21])
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t PMSearchBlock(uint64_t *a1, int a2, __int16 *a3)
{
  if (a3)
  {
    *a3 = -1;
  }

  if (!a1)
  {
    return -109;
  }

  v3 = *a1;
  if (!*a1)
  {
    v5 = -1;
    v7 = -50;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_13;
  }

  v4 = *(v3 + 522);
  if (!*(v3 + 522))
  {
LABEL_9:
    v5 = -1;
    v7 = -5343;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_13;
  }

  v5 = 0;
  v6 = v3 + 528;
  while (*(v6 + 1072 * v5 + 8) != a2)
  {
    if (v4 <= ++v5)
    {
      goto LABEL_9;
    }
  }

  v7 = 0;
  if (a3)
  {
LABEL_13:
    *a3 = v5;
  }

  return v7;
}

uint64_t PMIndexCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 506);
  if (v2 == 0xFFFF)
  {
    v2 = *(a1 + 504);
  }

  v3 = *(a2 + 506);
  if (v3 == 0xFFFF)
  {
    v3 = *(a2 + 504);
  }

  if (v2 != 0xFFFF && v3 != 0xFFFF)
  {
    return (v2 - v3);
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v7 = v5 == v6;
  if (v5 > v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t PMISODetect(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  v13 = 0;
  v14 = 0;
  v12 = 0;
  v4 = *(*a1 + 2);
  v5 = MKMediaCreateWithBIOVector(0, a2, a3, 0, &v15);
  v6 = v15;
  if (!v15)
  {
    v6 = MKDetectISO(v5, &v13, &v14, v16);
    v15 = v6;
    if (v13)
    {
      if (!v6)
      {
        v7 = HIDWORD(v17);
        if (WORD4(v17) && WORD4(v17) != v4)
        {
          v7 = HIDWORD(v17) * (WORD4(v17) >> 9) / (v4 >> 9);
        }

        v8 = *a1;
        v9 = PMPSpecificIndex(*a1, 4097, 0, &v12);
        v15 = v9;
        if (v9)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(v8 + 1072 * v12 + 540) + *(v8 + 1072 * v12 + 536);
          v7 -= v10;
        }

        v6 = PMGenPartitionType(a1, 16393, v10, v7, v4, 2097171, v16, 0, 0xFFFF);
        v15 = v6;
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
    return v15;
  }

  return v6;
}

uint64_t VReadPartitions(Handle *a1, unsigned int a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v45 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v44[0] = *"Single Volume";
  v44[1] = unk_2586A0992;
  if (a2 == 0xFFFF)
  {
    v7 = 3584;
  }

  else
  {
    v7 = a2;
  }

  v8 = a4(a3, 15, 0, 0, 0, &v37);
  if (v8)
  {
    goto LABEL_5;
  }

  if ((v7 & 0x400) != 0)
  {
    v12 = v38;
    v11 = HIDWORD(v37);
    if ((v38 * (HIDWORD(v37) >> 9)) >> 32)
    {
      v9 = 0;
      LOWORD(v8) = -5308;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = HIDWORD(v37);
    v12 = v38;
  }

  v13 = v11;
  if (HIDWORD(v12))
  {
    v13 = v11;
    while ((v13 & 0x80000000) == 0)
    {
      v13 *= 2;
      HIDWORD(v37) = v13;
      v14 = v12 >> 33;
      v12 >>= 1;
      v38 = v12;
      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v13 = 0;
    HIDWORD(v37) = 0;
    v38 = 0;
    v43 = 5;
    goto LABEL_18;
  }

LABEL_15:
  LOWORD(v8) = 5;
  v43 = 5;
  if ((v13 & 0x1FF) == 0)
  {
LABEL_18:
    if (v13 <= 0x400)
    {
      v15 = 1024;
    }

    else
    {
      v15 = v13;
    }

    v16 = NewPtr(v15 & 0xFE00);
    LOWORD(v8) = MemError();
    v43 = v8;
    if (!v16)
    {
      goto LABEL_5;
    }

    v17 = a4(a3, 130, v15, 0, 1, v16);
    v43 = v17;
    if (v17)
    {
      v9 = 0;
LABEL_28:
      DisposePtr(v16);
      LOWORD(v8) = v43;
      goto LABEL_6;
    }

    v18 = MKMediaCreateWithBIOVector(0, a3, a4, 0, &v43);
    if (v43)
    {
      v9 = 0;
      goto LABEL_26;
    }

    v9 = NewHandleClear(528);
    v43 = MemError();
    if (!v9)
    {
      goto LABEL_26;
    }

    v19 = *v9;
    *(v19 + 128) = 33554948;
    v20 = WORD2(v37);
    v21 = v38;
    *(v19 + 259) = WORD2(v37);
    if ((v7 & 0x400) != 0)
    {
      v22 = 512;
    }

    else
    {
      v22 = v20;
    }

    *(v19 + 1) = v22;
    v23 = v20 | 0x200;
    v24 = (v20 >> 9) * v21;
    if (v23 == 512)
    {
      v24 = v21;
    }

    *(v19 + 1) = v24;
    *(v19 + 250) = v11 >> 9;
    v40 = 0;
    LODWORD(v41) = 0;
    v43 = GPTSchemeDetect(v16, &v37, v18, &v41);
    if (v43)
    {
      goto LABEL_26;
    }

    v25 = MKMBRSchemeDetect(v16, &v37, a3, a4, &v41);
    v43 = v25;
    if (v25)
    {
      goto LABEL_26;
    }

    if (v41 >= 5000)
    {
      v43 = MKISOSchemeDetect(v18, &v40);
      if (v43)
      {
        goto LABEL_26;
      }

      if (v40 <= 4999 && v41 >= 5000)
      {
        v26 = VReadDosPartitions(v9, v7, 0, &v37, a3, a4);
        v43 = v26;
        if (v26)
        {
          goto LABEL_26;
        }

        if ((v7 & 0x800) == 0)
        {
          goto LABEL_61;
        }

        PMSortMapII(v9, 0);
LABEL_60:
        if ((v7 & 0x10) != 0)
        {
          v35 = PMAccountFreespace(v9, 0, v7);
          v43 = v35;
          if ((v7 & 0x80) == 0 || v35)
          {
LABEL_26:
            if (v18)
            {
              CFRelease(v18);
            }

            goto LABEL_28;
          }

          goto LABEL_65;
        }

LABEL_61:
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_26;
        }

LABEL_65:
        v28 = PMRationalise(v9);
LABEL_71:
        v43 = v28;
        goto LABEL_26;
      }
    }

    LODWORD(v41) = 0;
    v27 = MKAPMSchemeDetect(v16, &v37, a3, a4, &v41);
    v43 = v27;
    if (v27)
    {
      goto LABEL_26;
    }

    if (v41 >= 5000)
    {
      if ((v7 & 0x100) != 0)
      {
        v28 = APMReadRawMediaMap(v9, v7, a3, a4);
      }

      else
      {
        v28 = APMReadMediaMap(v9, v7, a3, a4);
      }

      goto LABEL_71;
    }

    if ((v7 & 0x40) == 0)
    {
      v29 = VReadISOPartitionsII(v9, v7, &v37, a3, a4);
      v43 = v29;
      if (v29)
      {
        v43 = -5345;
        goto LABEL_26;
      }

      goto LABEL_60;
    }

    LODWORD(v41) = 0;
    if ((v7 & 0x400) != 0)
    {
      v38 *= HIDWORD(v37) >> 9;
      HIDWORD(v37) = 512;
    }

    v43 = MKFileSystemDetect(v18, &v41, &v42, &v41 + 1);
    if (v43)
    {
      goto LABEL_26;
    }

    v30 = WORD2(v37);
    v31 = v38;
    v32 = *v9;
    *(v32 + 2) = 0u;
    *(v32 + 3) = 0u;
    *(v32 + 4) = 0u;
    *(v32 + 5) = 0u;
    *(v32 + 6) = 0u;
    *(v32 + 7) = 0u;
    *(v32 + 8) = 0u;
    *(v32 + 9) = 0u;
    *(v32 + 10) = 0u;
    *(v32 + 11) = 0u;
    *(v32 + 12) = 0u;
    *(v32 + 13) = 0u;
    *(v32 + 14) = 0u;
    *(v32 + 15) = 0u;
    *(v32 + 16) = 0u;
    *(v32 + 17) = 0u;
    *(v32 + 18) = 0u;
    *(v32 + 19) = 0u;
    *(v32 + 20) = 0u;
    *(v32 + 21) = 0u;
    *(v32 + 22) = 0u;
    *(v32 + 23) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 25) = 0u;
    *(v32 + 26) = 0u;
    *(v32 + 27) = 0u;
    *(v32 + 28) = 0u;
    *(v32 + 29) = 0u;
    *(v32 + 30) = 0u;
    *(v32 + 31) = 0u;
    *v32 = 0u;
    *(v32 + 1) = 0u;
    v33 = *v9;
    *(v33 + 128) = 8389124;
    *(v33 + 1) = v30;
    *(v33 + 1) = v31;
    *(v33 + 250) = v30 >> 9;
    if (v41 < 5000)
    {
      goto LABEL_69;
    }

    if (SHIDWORD(v41) > 3)
    {
      if (HIDWORD(v41) == 4)
      {
        v34 = 16398;
      }

      else
      {
        if (HIDWORD(v41) != 6)
        {
          goto LABEL_69;
        }

        v34 = 16386;
      }
    }

    else
    {
      if (HIDWORD(v41) != 1)
      {
        if (HIDWORD(v41) == 3)
        {
          v34 = 20225;
          goto LABEL_76;
        }

LABEL_69:
        if (!PMISODetect(v9, a3, a4))
        {
          goto LABEL_26;
        }

        *(*v9 + 257) = 1;
        v28 = PMGenPartitionType(v9, 16394, 0, v38, WORD2(v37), 2097168, "Whole Device", 0, 0xFFFF);
        goto LABEL_71;
      }

      if (v42 == 4)
      {
        v34 = 16395;
      }

      else
      {
        v34 = 0x4000;
      }
    }

LABEL_76:
    v36 = PMGenPartitionType(v9, v34, 0, v38, WORD2(v37), 2097168, v44, 0, 0xFFFF);
    v43 = v36;
    if (!v36)
    {
      PMISODetect(v9, a3, a4);
    }

    goto LABEL_26;
  }

LABEL_5:
  v9 = 0;
LABEL_6:
  *a1 = v9;
  return v8;
}

uint64_t VErasePartition(uint64_t *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void))
{
  if (!a1)
  {
    return -50;
  }

  v5 = *a1;
  if (*(*a1 + 522) <= a2)
  {
    return -5343;
  }

  v7 = *(v5 + 2);
  v8 = (v5 + 1072 * a2);
  v8[154] &= ~0x100000u;
  v9 = v8[134];
  v10 = v8[135];
  if (v10 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  if (a3)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  return a5(a4, 4, v7, v9, v12, 0);
}

uint64_t PMWriteContentExtended(uint64_t *a1, int a2, const char *a3, int a4, unsigned int a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, char *))
{
  if (a1)
  {
    return PMWriteContentInternal(*a1, a2, a3, a4, a5, 0, a6, a7);
  }

  else
  {
    return 4294967246;
  }
}

uint64_t PMMediaWrite(uint64_t *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  if (!a1)
  {
    return -50;
  }

  v6 = *a1;
  if (a2 >= *(*a1 + 522))
  {
    return -50;
  }

  v8 = *(v6 + 2);
  v9 = v6 + 1072 * a2;
  if (a3 % v8)
  {
    v10 = a3 / v8 + 1;
  }

  else
  {
    v10 = a3 / v8;
  }

  if (v10 > *(v9 + 540))
  {
    return -5341;
  }

  return a6(a5, 3);
}

uint64_t FindSTOC(_DWORD *a1, unsigned int a2, unsigned int a3, unsigned __int16 **a4)
{
  if (a2 && *a1 != bswap32(a2))
  {
    return -43;
  }

  else
  {
    v4 = (a1 + 8);
    v5 = a1[1];
    if (v5)
    {
      v6 = (v4 + bswap32(v5));
      v7 = __rev16(a3);
      while (1)
      {
        if (*v4 == v7)
        {
          v8 = 0;
          if (!a4)
          {
            return v8;
          }

          goto LABEL_12;
        }

        if (!v4[1])
        {
          break;
        }

        v4 = (v4 + __rev16(v4[1]));
        if (v4 >= v6)
        {
          goto LABEL_8;
        }
      }

      v8 = -39;
      if (a4)
      {
        goto LABEL_12;
      }
    }

    else
    {
LABEL_8:
      v8 = -192;
      if (a4)
      {
LABEL_12:
        *a4 = v4;
      }
    }
  }

  return v8;
}

uint64_t STOCRead(unsigned int a1, unsigned int a2, _WORD *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void, uint64_t, uint64_t, size_t *))
{
  memset(size, 0, sizeof(size));
  v21 = 0;
  v12 = a6(a5, 15, 0, 0, 0, size);
  v13 = v12;
  if (!v12)
  {
    v14 = malloc_type_malloc(HIDWORD(size[0]), 0x37E7C93CuLL);
    if (v14)
    {
      v15 = v14;
      v16 = a6(a5, 2, WORD2(size[0]), a4, 1, v14);
      if (v16)
      {
        v13 = v16;
      }

      else
      {
        STOC = FindSTOC(v15, a1, a2, &v21);
        v13 = STOC;
        if (!STOC)
        {
          v18 = v21;
          *a3 = bswap32(*v21) >> 16;
          v19 = bswap32(v18[1]) >> 16;
          a3[1] = v19;
          memcpy(a3 + 2, v18 + 2, v19 - 4);
        }
      }

      free(v15);
    }

    else
    {
      return -1;
    }
  }

  return v13;
}

uint64_t STOCWrite(unsigned __int16 *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t, uint64_t, size_t *))
{
  memset(size, 0, sizeof(size));
  v18 = 0;
  v10 = a5(a4, 15, 0, 0, 0, size);
  v11 = v10;
  if (!v10)
  {
    v12 = malloc_type_malloc(HIDWORD(size[0]), 0x4B6A6276uLL);
    if (!v12)
    {
      return -1;
    }

    v13 = v12;
    v14 = a5(a4, 2, WORD2(size[0]), a3, 1, v12);
    if (v14)
    {
      goto LABEL_4;
    }

    STOC = FindSTOC(v13, a2, *a1, &v18);
    if (STOC)
    {
      v11 = STOC;
      if (STOC == 65493)
      {
        *v13 = bswap32(a2);
        *(v13 + 1) = bswap32(HIDWORD(size[0]));
        *(v13 + 2) = 256;
        v13[2] = time(0);
        v17 = (v13 + 4);
        v18 = (v13 + 4);
      }

      else
      {
        if (STOC != 65344)
        {
          goto LABEL_5;
        }

        v17 = v18;
      }

      if (bswap32(*(v13 + 1)) + v13 - v17 < a1[1])
      {
LABEL_14:
        v11 = -5344;
        goto LABEL_5;
      }
    }

    else
    {
      v17 = v18;
      if (a1[1] > v18[1])
      {
        goto LABEL_14;
      }
    }

    *v17 = bswap32(*a1) >> 16;
    v17[1] = bswap32(a1[1]) >> 16;
    memcpy(v17 + 2, a1 + 2, a1[1] - 4);
    v13[3] = bswap32(time(0));
    LOWORD(v14) = a5(a4, 3, WORD2(size[0]), a3, 1, v13);
LABEL_4:
    v11 = v14;
LABEL_5:
    free(v13);
  }

  return v11;
}

uint64_t MKMediaDeviceOpenExtended(char *a1, char a2, uint64_t a3, uint64_t *a4)
{
  v7 = MEMORY[0x277CBED10];
  v13 = 0;
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v10 = Mutable;
  v11 = MEMORY[0x277CBED28];
  if ((a2 & 2) == 0)
  {
    v11 = v7;
  }

  CFDictionaryAddValue(Mutable, @"Writable", *v11);
  *a4 = MKMediaCreateWithPath(v8, a1, v10, &v13);
  return v13;
}

uint64_t MKMediaDeviceClose(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
    return 0;
  }

  else
  {
    return -5327;
  }
}

uint64_t _MKMediaBIOVectorInitialize(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return 22;
  }

  if (*a1 != 1296786038)
  {
    return 22;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(a1 + 24) = Mutable;
  if (!Mutable)
  {
    return 12;
  }

  if (!a2)
  {
    v14 = *MEMORY[0x277CBED28];
    v16 = *MEMORY[0x277CBED10];
    v15 = 1;
LABEL_19:
    v17 = v16;
    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(a2, @"Writable");
  v8 = !Value || (v6 = Value, TypeID = CFBooleanGetTypeID(), TypeID != CFGetTypeID(v6)) || CFEqual(v6, *MEMORY[0x277CBED28]) == 0;
  v10 = CFDictionaryGetValue(a2, @"Shared Writer");
  if (v10)
  {
    v11 = v10;
    v12 = CFBooleanGetTypeID();
    v13 = CFGetTypeID(v11);
    v14 = *MEMORY[0x277CBED28];
    if (v12 == v13)
    {
      v15 = CFEqual(v11, *MEMORY[0x277CBED28]) == 0;
      goto LABEL_18;
    }
  }

  else
  {
    v14 = *MEMORY[0x277CBED28];
  }

  v15 = 1;
LABEL_18:
  Mutable = *(a1 + 24);
  v16 = *MEMORY[0x277CBED10];
  v17 = v14;
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_20:
  CFDictionaryAddValue(Mutable, @"Writable", v17);
  if (v15)
  {
    v18 = v16;
  }

  else
  {
    v18 = v14;
  }

  CFDictionaryAddValue(*(a1 + 24), @"Shared Writer", v18);
  return 0;
}

void _MKMediaBIOVectorDeinitialize(void *a1)
{
  if (a1 && *a1 == 1296786038)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

const void *_MKMediaBIOVectorCopyProperty(uint64_t a1, void *key)
{
  if (!key)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4 && (v5 = CFDictionaryGetValue(v4, key)) != 0)
  {
    Value = v5;
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    _MKMediaBIOVectorGetGeoProperties(a1, Mutable);
    Value = CFDictionaryGetValue(Mutable, key);
    if (!Value)
    {
      goto LABEL_7;
    }
  }

  CFRetain(Value);
LABEL_7:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Value;
}

CFMutableDictionaryRef _MKMediaBIOVectorCopyProperties(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *MEMORY[0x277CBECE8];
  if (v2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, v2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v5 = MutableCopy;
  _MKMediaBIOVectorGetGeoProperties(a1, MutableCopy);
  return v5;
}

CFStringRef _MKMediaBIOVectorDescription(uint64_t a1, const __CFDictionary *a2)
{
  memset(&v8, 0, sizeof(v8));
  v4 = dladdr(*(a1 + 8), &v8);
  dli_sname = v8.dli_sname;
  if (v4)
  {
    v6 = v8.dli_sname == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    dli_sname = "unknown";
    v8.dli_sname = "unknown";
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], a2, @"<MKMediaRef>: [BIOVector %s<%p> refcon %p]", dli_sname, *(a1 + 8), *(a1 + 16));
}

uint64_t _MKMediaBIOVectorReadSectors(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((a3 | a2) >> 32)
  {
    return 22;
  }

  result = (*(a1 + 8))(*(a1 + 16), 2, 512, a2, a3, a4);
  if (a5)
  {
    if (!result)
    {
      *a5 = a3;
    }
  }

  return result;
}

uint64_t _MKMediaBIOVectorWriteSectors(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((a3 | a2) >> 32)
  {
    return 22;
  }

  result = (*(a1 + 8))(*(a1 + 16), 3, 512, a2, a3, a4);
  if (a5)
  {
    if (!result)
    {
      *a5 = a3;
    }
  }

  return result;
}

uint64_t MKMediaCreateWithBIOVector(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, _WORD *a5)
{
  v11 = 22;
  if (a3)
  {
    result = malloc_type_malloc(0x20uLL, 0x10A00402946438FuLL);
    if (result)
    {
      *result = 1296786038;
      *(result + 8) = a3;
      *(result + 16) = a2;
      *(result + 24) = 0;
      v11 = 0;
      result = MKMediaCreate(a1, result, &_MKMediaBIOVectorVector, a4, &v11);
      if (!a5)
      {
        return result;
      }
    }

    else
    {
      v11 = 12;
      if (!a5)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (!a5)
    {
      return result;
    }
  }

  *a5 = v11;
  return result;
}

uint64_t _MKMediaBIOVectorGetGeoProperties(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && *a1 == 1296786038)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v3 = (*(a1 + 8))(*(a1 + 16), 15, 0, 0, 0, &v5);
    if (!v3)
    {
      LOWORD(v3) = _MKMediaSetupGeometry(a2, SHIDWORD(v5), (v6 * HIDWORD(v5)) >> 9, (HIDWORD(v5) * v7) >> 9);
    }

    if (v3 == 0xFFFF)
    {
      return *__error();
    }
  }

  else
  {
    LOWORD(v3) = 22;
  }

  return v3;
}