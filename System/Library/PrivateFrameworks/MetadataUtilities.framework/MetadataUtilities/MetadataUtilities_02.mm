uint64_t _MDPlistDataGetBytePtr(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  if (a2)
  {
    *a2 = *(v2 + v3);
  }

  return v2 + v3 + 4;
}

CFDataRef _MDPlistContainerCopyCSObject(CFAllocatorRef alloc, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 20);
  if (v11 <= 0xF3)
  {
    if (v11 == 240)
    {
      if (*(*a2 + *(a2 + 16) + 4) != 2 || (v60 = 0uLL, v61 = 0, v62 = *a2, v63 = *(a2 + 16), _MDPlistArrayGetPlistObjectAtIndex(&v62, 0, &v60, a3, a4, a5, a6, a7, a8), BYTE4(v61) != 244) || (v37 = v60 + v61, (*v37 - 11) > 0xFFFFFFF5) || strncmp((v37 + 4), "__class:", 8uLL) || strcmp((v37 + 12), "CSLocalizedString") || *(*a2 + *(a2 + 16) + 4) != 2 || (v58 = 0uLL, v59 = 0, v62 = *a2, v63 = *(a2 + 16), _MDPlistArrayGetPlistObjectAtIndex(&v62, 1, &v58, v38, v39, v40, v41, v42, v43), BYTE4(v59) != 241) || (v62 = v58, v63 = v59, (v20 = __MDPlistContainerCopyObjectErrorCode(alloc, &v62, 0, 0, v44, v45, v46, v47)) == 0))
      {
        Mutable = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
        v20 = Mutable;
        if (Mutable)
        {
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 0x40000000;
          v57[2] = ___MDPlistContainerCopyCSObject_block_invoke;
          v57[3] = &__block_descriptor_tmp_6;
          v57[4] = alloc;
          v57[5] = a3;
          v57[6] = Mutable;
          v62 = *a2;
          v63 = *(a2 + 16);
          _MDPlistArrayIterateWithError(&v62, 0, v57, v49, v50, v51, v52, v53);
        }
      }

      return v20;
    }

    if (v11 == 241)
    {
      v20 = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 0x40000000;
      v56[2] = ___MDPlistContainerCopyCSObject_block_invoke_2;
      v56[3] = &__block_descriptor_tmp_15;
      v56[4] = alloc;
      v56[5] = a3;
      v56[6] = v20;
      v62 = *a2;
      v63 = *(a2 + 16);
      _MDPlistDictionaryIterateWithError(&v62, 0, v56, v21, v22, v23, v24, v25);
      return v20;
    }

LABEL_37:
    v62 = *a2;
    v63 = *(a2 + 16);
    return __MDPlistContainerCopyObjectErrorCode(alloc, &v62, 0, 0, a5, a6, a7, a8);
  }

  switch(v11)
  {
    case 0xF6u:
      v26 = (*a2 + *(a2 + 16));
      v29 = *v26;
      v27 = (v26 + 1);
      v28 = v29;
      v30 = *MEMORY[0x1E695E498];

      return CFDataCreateWithBytesNoCopy(alloc, v27, v28, v30);
    case 0xF5u:
      v31 = (*a2 + *(a2 + 16));
      v34 = *v31;
      v32 = (v31 + 1);
      v33 = v34;
      if (v34 >= a3)
      {
        v35 = a3;
      }

      else
      {
        v35 = v33;
      }

      if (a3)
      {
        v33 = v35;
      }

      if (v33 < 2)
      {
        v36 = 0;
        goto LABEL_45;
      }

      v36 = v33 >> 1;
      v54 = *v32;
      if (v54 == 65279)
      {
        v32 = (*a2 + *(a2 + 16) + 6);
        --v36;
        goto LABEL_45;
      }

      if (v54 != 65534)
      {
LABEL_45:
        v55 = *MEMORY[0x1E695E498];

        return CFStringCreateWithCharactersNoCopy(alloc, v32, v36, v55);
      }

      return CFStringCreateWithBytes(alloc, v32, v33, 0x100u, 1u);
    case 0xF4u:
      v12 = (*a2 + *(a2 + 16));
      v14 = *v12;
      v13 = (v12 + 1);
      v15 = (v14 - 1);
      if (v15 >= a3)
      {
        v16 = a3;
      }

      else
      {
        v16 = v15;
      }

      if (a3)
      {
        v17 = v16;
      }

      else
      {
        v17 = v15;
      }

      v18 = *MEMORY[0x1E695E498];

      return CFStringCreateWithBytesNoCopy(alloc, v13, v17, 0x8000100u, 0, v18);
    default:
      goto LABEL_37;
  }
}

uint64_t _MDPlistContainerCreateMutableWithStaticBuffer(uint64_t a1, unsigned __int16 *a2, size_t a3, uint64_t a4)
{

  return _MDPlistContainerCreateCommon(a1, a3, a2, 1, 0, 1, a4, 0);
}

uint64_t _MDPlistContainerCreateWithObject(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  Common = _MDPlistContainerCreateCommon(*MEMORY[0x1E695E480], 0, 0, 1, 0, 1, a3, 0);
  _MDPlistContainerBeginContainer(Common, 0, v5, v6, v7, v8, v9, v10);
  _MDPlistContainerAddObject(Common, a2, 0);
  _MDPlistContainerEndContainer(Common, v11, v12, v13, v14, v15, v16, v17);
  *(Common + 17) = 0;
  return Common;
}

uint64_t _MDPlistContainerCreateWithBytesAndDeallocator(uint64_t a1, unsigned __int16 *a2, size_t a3, const void *a4)
{
  if (!a2 || !a3)
  {
    return 0;
  }

  return _MDPlistContainerCreateCommon(a1, a3, a2, 0, 0, 1, 1, a4);
}

uint64_t _MDPlistContainerCreateWithCopiedBytes(uint64_t a1, unsigned __int16 *a2, size_t a3, uint64_t a4)
{
  if (!a2 || !a3)
  {
    return 0;
  }

  return _MDPlistContainerCreateCommon(a1, a3, a2, 0, 1, 1, a4, 0);
}

uint64_t _MDPlistContainerCreateCopy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 48);
  v5 = *(a2 + 32);
  if (!v4 || v5 == 0)
  {
    return 0;
  }

  return _MDPlistContainerCreateCommon(a1, v5, v4, 0, 1, 1, a3, 0);
}

uint64_t _MDPlistContainerGetBytes(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 48);
    }
  }

  return result;
}

uint64_t _MDPlistContainerGetLength(uint64_t result)
{
  if (result)
  {
    if (*(result + 16))
    {
      return 0;
    }

    else
    {
      return *(result + 32);
    }
  }

  return result;
}

uint64_t _MDPlistContainerGetTypeID()
{
  if (_MDPlistContainerGetTypeID_once != -1)
  {
    _MDPlistContainerCreateCommon_cold_4();
  }

  return __kMDPlistContainerTypeID;
}

uint64_t _MDPlistContainerGetPlistObjectAtKeyPath(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  if (v8 != 47 && v8 != 0)
  {
    return 0;
  }

  v11 = a2;
  v21 = 0uLL;
  v22 = 0;
  MDPlistGetRootPlistObjectFromBuffer((a1 + 32), 0, &v21, a3, a5, a6, a7, a8);
  while (1)
  {
    v12 = v11 + 1;
    if (BYTE4(v22) != 241)
    {
      break;
    }

    v13 = strcspn(v12, "/");
    v19 = v21;
    v20 = v22;
    if (!_MDPlistDictionaryGetPlistObjectForKey(&v19, v12, v13, &v21, v14, v15, v16, v17))
    {
      break;
    }

    v11 = &v12[v13];
    if (!*v11)
    {
      goto LABEL_13;
    }
  }

  if (*v12)
  {
    return 0;
  }

LABEL_13:
  if (a3)
  {
    *a3 = v21;
    *(a3 + 16) = v22;
  }

  return 1;
}

BOOL _MDPlistContainerValidateRootObject(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = 0uLL;
  v18 = 0;
  MDPlistGetRootPlistObjectFromBuffer((a2 + 32), 0, &v17, a3, a5, a6, a7, a8);
  v14 = v17;
  v15 = v18;
  v16 = 0;
  __MDPlistContainerCopyObjectErrorCode(a1, &v14, 0, &v16, v9, v10, v11, v12);
  return v16 == 0;
}

CFDataRef _MDPlistContainerCopyObjectAtKeyPath(const __CFAllocator *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = 0;
  if (!_MDPlistContainerGetPlistObjectAtKeyPath(a2, a3, &v16, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v14 = v16;
  v15 = v17;
  return __MDPlistContainerCopyObjectErrorCode(a1, &v14, 0, 0, v9, v10, v11, v12);
}

CFDataRef _MDPlistContainerCopyObjectAtKeyArray(const __CFAllocator *a1, uint64_t a2, char **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0uLL;
  v17 = 0;
  if (!_MDPlistContainerGetPlistObjectAtKeyArray(a2, a3, &v16, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  v14 = v16;
  v15 = v17;
  return __MDPlistContainerCopyObjectErrorCode(a1, &v14, 0, 0, v9, v10, v11, v12);
}

CFDictionaryRef _MDPlistContainerCopyObjectsAtPlistObject(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v30 = *MEMORY[0x1E69E9840];
  v9 = 8 * v2;
  MEMORY[0x1EEE9AC00](v1);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v10, v9);
  MEMORY[0x1EEE9AC00](v11);
  bzero(v10, v9);
  if (!v3)
  {
    return CFDictionaryCreate(v8, v10, v10, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v12 = 0;
  do
  {
    v27 = 0uLL;
    v28 = 0;
    bzero(v29, 0x1000uLL);
    CStringPtr = CFStringGetCStringPtr(*v5, 0x8000100u);
    if (CStringPtr || (CStringPtr = v29, CFStringGetCString(*v5, v29, 4096, 0x8000100u)))
    {
      v25 = *v7;
      v26 = *(v7 + 16);
      if (_MDPlistDictionaryGetPlistObjectForKey(&v25, CStringPtr, -1, &v27, v13, v14, v15, v16))
      {
        v10[v12] = *v5;
        v25 = v27;
        v26 = v28;
        v10[v12++] = __MDPlistContainerCopyObjectErrorCode(v8, &v25, 0, 0, v18, v19, v20, v21);
      }
    }

    ++v5;
    --v3;
  }

  while (v3);
  v22 = CFDictionaryCreate(v8, v10, v10, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v12 >= 1)
  {
    do
    {
      v23 = *v10++;
      CFRelease(v23);
      --v12;
    }

    while (v12);
  }

  return v22;
}

CFDictionaryRef _MDPlistContainerCopyObjectsAtKeyPath(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0uLL;
  v11 = 0;
  if (_MDPlistContainerGetPlistObjectAtKeyPath(a2, a3, &v10, a4, a5, a6, a7, a8))
  {
    return _MDPlistContainerCopyObjectsAtPlistObject(a1);
  }

  else
  {
    return 0;
  }
}

void _MDPlistContainerAddPlistObject(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 20);
  if (*(a2 + 20) > 0xEFu)
  {
    if ((v10 - 244) < 4)
    {
      v11 = (*a2 + *(a2 + 4));
      v14 = *v11;
      v12 = v11 + 1;
      v13 = v14;
      v15 = 0;
      goto LABEL_27;
    }

    if (v10 == 241)
    {
      _MDPlistContainerBeginDictionary(a1, a2, v10, a4, a5, a6, a7, a8);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 0x40000000;
      v43[2] = ___MDPlistContainerAddPlistObject_block_invoke_2;
      v43[3] = &__block_descriptor_tmp_33;
      v43[4] = a1;
      v45 = *a2;
      v46 = *(a2 + 2);
      _MDPlistDictionaryIterateWithError(&v45, 0, v43, v32, v33, v34, v35, v36);
      _MDPlistContainerEndDictionary(a1, 0, v37, v38, v39, v40, v41, v42);
    }

    else
    {
      if (v10 != 240)
      {
        goto LABEL_32;
      }

      _MDPlistContainerBeginArray(a1, a2, v10, a4, a5, a6, a7, a8);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 0x40000000;
      v44[2] = ___MDPlistContainerAddPlistObject_block_invoke;
      v44[3] = &__block_descriptor_tmp_32;
      v44[4] = a1;
      v45 = *a2;
      v46 = *(a2 + 2);
      _MDPlistArrayIterateWithError(&v45, 0, v44, v21, v22, v23, v24, v25);
      _MDPlistContainerEndArray(a1, 0, v26, v27, v28, v29, v30, v31);
    }
  }

  else
  {
    if (*(a2 + 20) <= 0x32u)
    {
      if (v10 != 11)
      {
        if (v10 == 19)
        {
          v12 = (*a2 + *(a2 + 4));
          v15 = 1;
          v10 = 19;
LABEL_26:
          v13 = 8;
          goto LABEL_27;
        }

        if (v10 != 35)
        {
LABEL_32:
          _MDPlistContainerAddPlistObject_cold_3(a1, a2, v10, a4, a5, a6, a7, a8);
        }

LABEL_25:
        v12 = (*a2 + *(a2 + 4));
        v15 = 1;
        goto LABEL_26;
      }

      v12 = (*a2 + *(a2 + 4));
      v15 = 1;
      v10 = 11;
      v13 = 16;
LABEL_27:

      _addGenericData(a1, v15, v10, v12, v13, 0, a7, a8);
      return;
    }

    if ((v10 - 224) >= 4)
    {
      if (v10 != 51)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

    v16 = *(a1 + 136);
    if (v16 <= 1)
    {
      _MDPlistContainerAddPlistObject_cold_1(a1, a2, v10, a4, a5, a6, a7, a8);
    }

    v17 = *(a1 + 144) + 24 * v16;
    if (*(v17 - 24) == 241 && (*(v17 - 20) & 1) == 0)
    {
      _MDPlistContainerAddPlistObject_cold_2(a1, a2, v10, a4, a5, a6, a7, a8);
    }

    ++*(v17 - 20);
    v19 = MDPlistBufferConsume(a1, a1 + 64, 5uLL);
    if (v19)
    {
      v20 = *(a2 + 4);
      v19[4] = *(a2 + 20);
      *v19 = v20;
    }
  }
}

int *_MDPlistContainerAddBooleanValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return _addInlineData(a1, 225, a2, a3, a5, a6, a7, a8);
}

int *_MDPlistContainerAddFloatValue(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return _addInlineData(a1, 227, LODWORD(a3), a2, a6, a7, a8, a9);
}

_DWORD *_MDPlistContainerAddDateValue(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[1] = *MEMORY[0x1E69E9840];
  *v10 = a3;
  return _addGenericData(a1, 1, 19, v10, 8uLL, a2, a8, a9);
}

_DWORD *_MDPlistContainerAddUUIDValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v9[1] = a3;
  return _addGenericData(a1, 1, 11, v9, 0x10uLL, a4, a7, a8);
}

_DWORD *_MDPlistContainerAddUUID(uint64_t a1, CFUUIDRef uuid, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = CFUUIDGetUUIDBytes(uuid);
  return _addGenericData(a1, 1, 11, &v8, 0x10uLL, a3, v5, v6);
}

CFStringRef MDPropertyCopyXAttrName(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (CFStringCompare(a1, @"kMDItemLastUsedDate", 0))
  {
    if (CFStringCompare(a1, @"com.apple.metadata:", 0))
    {
      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", @"com.apple.metadata:", a1);
    }

    return 0;
  }

  return CFRetain(@"com.apple.lastuseddate#PS");
}

CFStringRef MDPropertyCopyName(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  if (CFStringCompare(a1, @"com.apple.lastuseddate#PS", 0))
  {
    if (CFStringCompare(a1, @"com.apple.favorite-rank.number#PS", 0))
    {
      if (CFStringHasPrefix(a1, @"com.apple.metadata:"))
      {
        Length = CFStringGetLength(a1);
        v3 = CFStringGetLength(@"com.apple.metadata:");
        v4.length = Length - v3;
        if (Length > v3)
        {
          v4.location = v3;
          v5 = *MEMORY[0x1E695E480];

          return CFStringCreateWithSubstring(v5, a1, v4);
        }
      }

      return 0;
    }

    v7 = @"kMDItemFavoriteRank";
  }

  else
  {
    v7 = @"kMDItemLastUsedDate";
  }

  return CFRetain(v7);
}

CFDataRef MDPropertyCopyEncodedData(const __CFString *a1, const void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (CFStringCompare(a1, @"com.apple.lastuseddate#PS", 0) && CFStringCompare(a1, @"kMDItemLastUsedDate", 0))
  {
    if (CFStringCompare(a1, @"com.apple.favorite-rank.number#PS", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemFavoriteRank", 0) == kCFCompareEqualTo)
    {
      v11 = CFGetTypeID(a2);
      if (v11 == CFNumberGetTypeID())
      {
        v12[0] = 0;
        if (CFNumberGetValue(a2, kCFNumberLongLongType, v12))
        {
          return MDPropertyCopyEncodedDataForFavoriteRank(v12[0], 1);
        }
      }

      return 0;
    }

    v4 = CFStringCompare(a1, @"com.apple.metadata:_kMDItemUserTags", 0);
    v5 = CFGetTypeID(a2);
    if (v4)
    {
      if (v5 != CFDictionaryGetTypeID())
      {
        v6 = *MEMORY[0x1E695E480];

        return CFPropertyListCreateData(v6, a2, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      }

      return 0;
    }

    if (v5 != CFArrayGetTypeID())
    {
      return 0;
    }

    return MDPropertyCopyEncodedDataForUserTagStrings(a2);
  }

  else
  {
    v8 = CFGetTypeID(a2);
    if (v8 != CFDateGetTypeID())
    {
      return 0;
    }

    MEMORY[0x1B2747B00](a2);

    return MDPropertyCopyEncodedDataForLastUsedDateWithAsoluteTime(v9, v10);
  }
}

CFDataRef MDPropertyCopyEncodedDataForLastUsedDateWithAsoluteTime(int8x16_t a1, int8x16_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a1.i64 == 0.0)
  {
    return 0;
  }

  *a1.i64 = *MEMORY[0x1E695E468] + *a1.i64;
  v2 = *a1.i64;
  *a2.i64 = *a1.i64 - trunc(*a1.i64);
  v3.f64[0] = NAN;
  v3.f64[1] = NAN;
  v4 = *vbslq_s8(vnegq_f64(v3), a2, a1).i64;
  v5 = (v4 * 1000000000.0);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  *bytes = v2;
  v8 = v5;
  return CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
}

CFDataRef MDPropertyCopyEncodedDataForFavoriteRank(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  valuePtr = a1;
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      Data = CFPropertyListCreateData(v4, v5, kCFPropertyListBinaryFormat_v1_0, 0, 0);
      CFRelease(v6);
      return Data;
    }

    return 0;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__str = 0u;
  v10 = 0u;
  snprintf(__str, 0x100uLL, "%lld", a1);
  v2 = strlen(__str);
  return CFDataCreate(*MEMORY[0x1E695E480], __str, v2 + 1);
}

CFDataRef MDPropertyCopyEncodedDataForUserTagStrings(const __CFArray *a1)
{
  if (!a1 || !CFArrayGetCount(a1))
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];

  return CFPropertyListCreateData(v2, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
}

CFDateRef MDPropertyCopyDecodedValue(const __CFString *a1, const __CFData *a2)
{
  at[1] = *MEMORY[0x1E69E9840];
  if (CFStringCompare(a1, @"com.apple.lastuseddate#PS", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemLastUsedDate", 0) == kCFCompareEqualTo)
  {
    at[0] = 0.0;
    if (MDPropertyDecodedLastUsedDateAbsoluteTime(a2, at))
    {
      return CFDateCreate(*MEMORY[0x1E695E480], at[0]);
    }

    return 0;
  }

  if (CFStringCompare(a1, @"com.apple.favorite-rank.number#PS", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"kMDItemFavoriteRank", 0) == kCFCompareEqualTo)
  {
    at[0] = 0.0;
    if (MDPropertyDecodedFavoritRank(a2, at))
    {
      valuePtr = at[0];
      return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongLongType, &valuePtr);
    }

    return 0;
  }

  if (CFStringCompare(a1, @"com.apple.metadata:_kMDItemUserTags", 0))
  {
    v4 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], a2, 0, 0, 0);
    v5 = v4;
    if (!v4)
    {
      return v5;
    }

    v6 = CFGetTypeID(v4);
    if (v6 != CFDictionaryGetTypeID())
    {
      return v5;
    }

    CFRelease(v5);
    return 0;
  }

  return MDPropertyCopyDecodedUserTags(a2);
}

uint64_t MDPropertyDecodedLastUsedDateAbsoluteTime(const __CFData *a1, double *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0uLL;
  result = MDPropertyDecodedLastUsedDateTimeSpec(a1, &v4);
  if (result)
  {
    if (a2)
    {
      *a2 = *(&v4 + 1) / 1000000000.0 + v4 - *MEMORY[0x1E695E468];
    }

    return 1;
  }

  return result;
}

uint64_t MDPropertyDecodedFavoritRank(CFDataRef theData, uint64_t *a2)
{
  v2 = theData;
  v14 = *MEMORY[0x1E69E9840];
  if (!theData)
  {
    return v2;
  }

  Length = CFDataGetLength(theData);
  if (!Length)
  {
    return 0;
  }

  v5 = Length;
  v6 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], v2, 0, 0, 0);
  if (v6)
  {
    v7 = v6;
    v8 = CFGetTypeID(v6);
    if (v8 == CFNumberGetTypeID() && (*&valuePtr[0] = 0, CFNumberGetValue(v7, kCFNumberSInt64Type, valuePtr)))
    {
      if (a2)
      {
        *a2 = *&valuePtr[0];
      }

      v2 = 1;
    }

    else
    {
      v2 = 0;
    }

    CFRelease(v7);
    return v2;
  }

  if (v5 >= 255)
  {
    v9 = 255;
  }

  else
  {
    v9 = v5;
  }

  CFDataGetBytePtr(v2);
  memset(valuePtr, 0, sizeof(valuePtr));
  __memcpy_chk();
  *(valuePtr + v9) = 0;
  __endptr = 0;
  v10 = strtoll(valuePtr, &__endptr, 0);
  v2 = 0;
  if (v10 < 1 || !__endptr)
  {
    return v2;
  }

  if (*__endptr)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v10;
  }

  return 1;
}

const void *MDPropertyCopyDecodedUserTags(CFDataRef data)
{
  v1 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], data, 0, 0, 0);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 != CFArrayGetTypeID() || !CFArrayGetCount(v2))
    {
      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

CFDataRef MDPropertyCopyEncodedDataForLastUsedDateWithTimeSpec(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *bytes = a1;
  v4 = a2;
  return CFDataCreate(*MEMORY[0x1E695E480], bytes, 16);
}

const __CFData *MDPropertyDecodedLastUsedDateTimeSpec(const __CFData *result, _OWORD *a2)
{
  if (result)
  {
    v3 = result;
    if (CFDataGetLength(result) == 16)
    {
      BytePtr = CFDataGetBytePtr(v3);
      if (a2)
      {
        *a2 = *BytePtr;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFStringRef MDPropertyCopyUserTagString(const __CFString *a1, uint64_t a2)
{
  if (!a1 || !CFStringGetLength(a1))
  {
    return 0;
  }

  location = CFStringFind(a1, @"\n", 0).location;
  if (location == -1)
  {
    v8 = CFRetain(a1);
  }

  else
  {
    v5.length = location;
    if (!location)
    {
      return 0;
    }

    v5.location = 0;
    v8 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v5);
  }

  v9 = v8;
  if ((a2 - 1) > 6)
  {
    return v8;
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@\n%u", v8, a2);
  if (v9)
  {
    CFRelease(v9);
  }

  return v6;
}

__CFArray *MDPropertyCreateUserTagStrings(CFIndex capacity, uint64_t a2)
{
  Mutable = 0;
  v12 = *MEMORY[0x1E69E9840];
  if (capacity <= 1023)
  {
    if (capacity)
    {
      if (a2)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity, MEMORY[0x1E695E9C0]);
        if (Mutable)
        {
          v11 = 0;
          if (capacity >= 1)
          {
            v5 = 0;
            while (1)
            {
              v10 = 0;
              v9 = 0;
              (*(a2 + 16))(a2, v5, &v10, &v9, &v11);
              if (v11)
              {
                goto LABEL_13;
              }

              v6 = MDPropertyCopyUserTagString(v10, v9);
              if (v6)
              {
                v7 = v6;
                CFArrayAppendValue(Mutable, v6);
                CFRelease(v7);
              }

              if (capacity == ++v5)
              {
                if (v11)
                {
                  goto LABEL_13;
                }

                break;
              }
            }
          }

          if (!CFArrayGetCount(Mutable))
          {
LABEL_13:
            CFRelease(Mutable);
            return 0;
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t MDExtendedAttributeBlockList()
{
  if (MDExtendedAttributeBlockList_onceToken != -1)
  {
    MDExtendedAttributeBlockList_cold_1();
  }

  return MDExtendedAttributeBlockList_sBlockList;
}

CFSetRef __MDExtendedAttributeBlockList_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = xmmword_1E7B25920;
  v1[1] = *&off_1E7B25930;
  v1[2] = xmmword_1E7B25940;
  v1[3] = *off_1E7B25950;
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 8, MEMORY[0x1E695E9F8]);
  MDExtendedAttributeBlockList_sBlockList = result;
  return result;
}

void MDMatcherCreate(const char *a1, char *a2, char a3, int a4)
{

  icu_search_context_create(a1, a2, a3, a4);
}

BOOL MDMatch(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{

  return MDMatchWithFuzzyIndicies(a1, a2, a3, 0, 0, 0, 0);
}

BOOL MDMatchWithFuzzyIndicies(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, char *a7)
{
  v18 = *MEMORY[0x1E69E9840];
  bzero(v17, 0x400uLL);
  v16 = 0;
  if (utf8_encodestr(a2, 2 * a3, v17, &v16, 1023, 47, 4))
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  result = icu_search_match(a1, v17, &v16, &v15, 0);
  if (result)
  {
    icu_search_context_fuzzy_match_state(a1, a4, a6, a5, a7);
    return 1;
  }

  return result;
}

BOOL MDMatchUTF8(_BOOL8 result, char *a2, char *a3, uint64_t *a4, int a5)
{

  return icu_search_match(result, a2, a3, a4, a5);
}

BOOL MDMatchWithFuzzyIndiciesRange(uint64_t a1, unsigned __int16 *a2, uint64_t a3, void *a4, void *a5, void *a6, char *a7, char *a8, uint64_t *a9)
{
  v22 = *MEMORY[0x1E69E9840];
  bzero(v21, 0x400uLL);
  v20 = 0;
  if (utf8_encodestr(a2, 2 * a3, v21, &v20, 1023, 47, 4))
  {
    return 0;
  }

  result = icu_search_match(a1, v21, a8, a9, 0);
  if (result)
  {
    v18 = normalizeSizeForUTF8toUnichar(a2, v21, *a8);
    v19 = normalizeSizeForUTF8toUnichar(&a2[v18], &v21[*a8], *a9);
    *a8 = v18;
    *a9 = v19;
    icu_search_context_fuzzy_match_state(a1, a4, a6, a5, a7);
    return 1;
  }

  return result;
}

uint64_t normalizeSizeForUTF8toUnichar(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = a2 + 1;
  do
  {
    v9 = *(a2 + v7);
    v10 = *(a2 + v7) >> 4;
    if ((v9 & 0x80000000) != 0)
    {
      v11 = utf8_byte_length_utf8_len_table_0[v10];
      v12 = v9 & utf8_to_code_point_utf8_first_char_mask_0[v11];
      if ((~v10 & 0xC) != 0)
      {
        v9 &= utf8_to_code_point_utf8_first_char_mask_0[v11];
      }

      else
      {
        if (v11 <= 2)
        {
          v13 = 2;
        }

        else
        {
          v13 = utf8_byte_length_utf8_len_table_0[v10];
        }

        v14 = v13 - 1;
        v15 = (v8 + v7);
        do
        {
          v16 = *v15++;
          v9 = v16 & 0x3F | (v12 << 6);
          v12 = v9;
          --v14;
        }

        while (v14);
      }
    }

    v17 = utf8_byte_length_noerror_utf8_len_table_0[v10];
    v18 = (a1 + 2 * v6);
    if (v9 == *v18)
    {
      ++v6;
    }

    else if (v9 < 0x10000)
    {
      memset(v22, 0, sizeof(v22));
      v21 = 0;
      v19 = utf8_encodestr(v18, 2uLL, v22, &v21, 63, 47, 4);
      v17 = v21;
      if (v19)
      {
        v17 = 0;
      }

      else
      {
        ++v6;
      }
    }

    else
    {
      v6 += 2;
    }

    v7 += v17;
  }

  while (v7 < a3);
  return v6;
}

void MDMatcherDispose(int *a1)
{

  icu_ctx_release(a1);
}

uint64_t _MDBundleUtilsCopyApplicationCategories()
{

  return copyAppCategoryMap();
}

uint64_t copyAppCategoryMap()
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (getCoreTypesBundleURL_onceToken != -1)
  {
    copyAppCategoryMap_cold_1();
  }

  v0 = gCoreTypesInfoPlistURL;
  if (gCoreTypesInfoPlistURL)
  {
    TypeID = CFDictionaryGetTypeID();
    v2 = CFStringGetTypeID();
    v3 = CFArrayGetTypeID();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __copyAppCategoryMap_block_invoke;
    v8[3] = &unk_1E7B25988;
    v8[6] = v3;
    v8[7] = v2;
    v9 = 1;
    v8[4] = &v10;
    v8[5] = TypeID;
    v4 = processMappedPlist(v0, v8);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        copyAppCategoryMap_cold_2(v5);
      }
    }
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t _MDBundleUtilsCopyLocalizedApplicationCategories(CFArrayRef theArray)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_MDBundleUtilsCopyLocalizedApplicationCategories_onceToken != -1)
  {
    _MDBundleUtilsCopyLocalizedApplicationCategories_cold_1();
    if (theArray)
    {
      goto LABEL_3;
    }

LABEL_5:
    Count = 0;
    goto LABEL_6;
  }

  if (!theArray)
  {
    goto LABEL_5;
  }

LABEL_3:
  Count = CFArrayGetCount(theArray);
LABEL_6:
  v3 = 0;
  if (Count && _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap && _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategories && Count >= 1)
  {
    v3 = 0;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (CFDictionaryGetValue(_MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap, ValueAtIndex))
      {
        context = ValueAtIndex;
        v8 = v3;
        CFDictionaryApplyFunction(_MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategories, localizedApplicationCategoriesApplier, &context);
        v3 = v8;
      }
    }
  }

  return v3;
}

void localizedApplicationCategoriesApplier(const void *a1, const __CFDictionary *cf, uint64_t a3)
{
  Value = cf;
  v6 = CFGetTypeID(cf);
  if (v6 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(Value, *a3);
  }

  else
  {
    v7 = CFGetTypeID(Value);
    if (v7 != CFStringGetTypeID())
    {
      return;
    }
  }

  if (Value)
  {
    Mutable = *(a3 + 8);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(a3 + 8) = Mutable;
    }

    v9 = CFDictionaryGetValue(Mutable, a1);
    if (v9)
    {
      v10 = v9;
      if (!CFEqual(v9, Value))
      {
        v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@, %@", v10, Value);
        CFDictionarySetValue(*(a3 + 8), a1, v12);
        if (v12)
        {

          CFRelease(v12);
        }
      }
    }

    else
    {
      v11 = *(a3 + 8);

      CFDictionarySetValue(v11, a1, Value);
    }
  }
}

CFDictionaryRef _MDBundleUtilsCopyLocalizedDescriptionDictionary(const void *a1, const void **a2, const __CFURL *a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = localizedCacheValueCopy(a1);
    if (!a2)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_60;
    }
  }

  if (v8)
  {
    goto LABEL_60;
  }

  if (getCoreTypesBundleURL_onceToken == -1)
  {
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_47:
    v26[0] = a2;
    goto LABEL_48;
  }

  _MDBundleUtilsCopyLocalizedDescriptionDictionary_cold_1();
  if (!a3)
  {
    goto LABEL_47;
  }

LABEL_8:
  v9 = getCoreTypesBundleURL_sCoreTypesBundleURL;
  if (!getCoreTypesBundleURL_sCoreTypesBundleURL || getCoreTypesBundleURL_sCoreTypesBundleURL != a3 && !CFEqual(getCoreTypesBundleURL_sCoreTypesBundleURL, a3) && ((v10 = CFURLGetBaseURL(a3)) == 0 || v10 != v9 && !CFEqual(v9, v10)))
  {
    v11 = CFBundleCopyLocalizationsForURL(a3);
    if (v11)
    {
      v12 = v11;
      if (CFArrayGetCount(v11))
      {
        v27 = 0;
        v28 = &v27;
        v29 = 0x2000000000;
        v30 = 0;
        v13 = CFBundleCopyResourceURLInDirectory(a3, @"InfoPlist", @"loctable", 0);
        if (v13)
        {
          v14 = CFURLCreateWithString(*MEMORY[0x1E695E480], @"Info.plist", a3);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 0x40000000;
          v26[2] = __bundleLocalizedPropertyCopy_block_invoke;
          v26[3] = &unk_1E7B259B0;
          v26[4] = &v27;
          v26[5] = a1;
          v26[6] = a2;
          v15 = processMappedPlist(v14, v26);
          if (v15)
          {
            v16 = v15;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              if (v14)
              {
                v17 = v14;
              }

              else
              {
                v17 = a3;
              }

              *buf = 67109890;
              *&buf[4] = v16;
              *v32 = 2112;
              *&v32[2] = a1;
              v33 = 2112;
              v34 = a2;
              v35 = 2112;
              v36 = v17;
              _os_log_impl(&dword_1B238B000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "bundleLocalizedPropertyCopy error %d resolving %@ %@ for %@", buf, 0x26u);
            }
          }

          if (v14)
          {
            CFRelease(v14);
          }

          v18 = 0;
        }

        else
        {
          Unique = _CFBundleCreateUnique();
          v18 = Unique;
          if (Unique)
          {
            InfoDictionary = CFBundleGetInfoDictionary(Unique);
            if (InfoDictionary)
            {
              v22 = bundleDescriptionCopy(InfoDictionary, a1, a2);
              v28[3] = v22;
            }
          }
        }

        *buf = a2;
        *v32 = 0;
        if (v28[3])
        {
          *v32 = v28[3];
          v19 = 2;
        }

        else
        {
          v19 = 1;
        }

        os_unfair_lock_lock(&bundleLocalizedPropertyCopy_sLocalizePropertyLock);
        if (a4)
        {
          v8 = localizedCacheValueCopy(a1);
          if (!v8)
          {
            v8 = localizedPropertyCopy(buf, v19, v13, v18, v12, 1u);
            if (v8)
            {
              localizedCacheValueSet(a1, v8, 0);
            }
          }
        }

        else
        {
          v8 = localizedPropertyCopy(buf, v19, v13, v18, v12, 1u);
        }

        os_unfair_lock_unlock(&bundleLocalizedPropertyCopy_sLocalizePropertyLock);
        if (v18)
        {
          CFRelease(v18);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        _Block_object_dispose(&v27, 8);
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v12);
      goto LABEL_60;
    }

LABEL_59:
    v8 = 0;
    goto LABEL_60;
  }

  v26[0] = a2;
  if (getCoreTypesBundleURL_onceToken != -1)
  {
    _MDBundleUtilsCopyLocalizedDescriptionDictionary_cold_1();
  }

LABEL_48:
  v23 = gCoreTypesBundleLocalizations;
  if (!gCoreTypesBundleLocalizations || !CFArrayGetCount(gCoreTypesBundleLocalizations))
  {
    goto LABEL_59;
  }

  os_unfair_lock_lock(&coreTypesLocalizedPropertyCopy_sCoreTypesLock);
  if (!a1 || !a4 || (v8 = localizedCacheValueCopy(a1)) == 0)
  {
    if (getCoreTypesBundleURL_onceToken != -1)
    {
      _MDBundleUtilsCopyLocalizedDescriptionDictionary_cold_1();
    }

    v24 = localizedPropertyCopy(v26, 1, gCoreTypesLocTableURL, 0, v23, 1u);
    v8 = v24;
    if (a4 && v24)
    {
      localizedCacheValueSet(a1, v24, 1);
    }
  }

  os_unfair_lock_unlock(&coreTypesLocalizedPropertyCopy_sCoreTypesLock);
LABEL_60:
  if (a2 && a1 && !v8)
  {
    return CFDictionaryCreate(*MEMORY[0x1E695E498], &stru_1F29A61D0.isa, a2, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  return v8;
}

void localizedCacheValueSet(const void *a1, const void *a2, int a3)
{
  if (a1 && a2)
  {
    os_unfair_lock_lock(&gLocalizePropertyCacheLock);
    if (a3)
    {
      v6 = &gCoreTypesLocalizedPropertyCache;
    }

    else
    {
      v6 = &gLocalizedPropertyCache;
    }

    Mutable = *v6;
    if (!*v6)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *v6 = Mutable;
    }

    CFDictionarySetValue(Mutable, a1, a2);

    os_unfair_lock_unlock(&gLocalizePropertyCacheLock);
  }
}

uint64_t processMappedPlist(const __CFURL *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = 22;
  if (a1 && a2)
  {
    bzero(buffer, 0x400uLL);
    if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
    {
      v5 = open(buffer, 0);
      if (v5 == -1)
      {
        return *__error();
      }

      else
      {
        v6 = v5;
        memset(&v13, 0, sizeof(v13));
        if (fstat(v5, &v13))
        {
          v2 = *__error();
        }

        else
        {
          v7 = v13.st_size + *MEMORY[0x1E69E9AC8] - 1;
          v8 = -*MEMORY[0x1E69E9AC8];
          v9 = mmap(0, v7 & v8, 1, 1, v6, 0);
          if (v9 == -1 || (v10 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v9, v13.st_size, *MEMORY[0x1E695E498])) == 0)
          {
            v2 = 0xFFFFFFFFLL;
          }

          else
          {
            v11 = v10;
            v2 = (*(a2 + 16))(a2, v10);
            CFRelease(v11);
          }

          munmap(v9, v7 & v8);
        }

        close(v6);
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v2;
}

uint64_t __copyAppCategoryMap_block_invoke(uint64_t a1, uint64_t a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = @"UTExportedTypeDeclarations";
  v3 = *MEMORY[0x1E695E480];
  v4 = CFSetCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9F8]);
  v39 = 0;
  if (!_CFPropertyListCreateFiltered())
  {
    v29 = 0xFFFFFFFFLL;
    if (v4)
    {
      goto LABEL_38;
    }

    return v29;
  }

  v5 = *(a1 + 40);
  if (v5 != CFGetTypeID(v39))
  {
    goto LABEL_37;
  }

  if (!CFDictionaryGetCount(v39))
  {
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(v39, values[0]);
  if (!Value)
  {
    goto LABEL_37;
  }

  v7 = Value;
  v8 = *(a1 + 48);
  if (v8 != CFGetTypeID(Value))
  {
    goto LABEL_37;
  }

  v38 = v7;
  Count = CFArrayGetCount(v7);
  MEMORY[0x1EEE9AC00](Count);
  bzero(v33 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * Count);
  MEMORY[0x1EEE9AC00](v10);
  v11 = Count;
  bzero(v33 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), 8 * Count);
  if (Count < 1)
  {
    goto LABEL_37;
  }

  v34 = (v33 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v34;
  v33[1] = v33;
  v36 = 0;
  v37 = Count;
  v12 = 0;
  v13 = v38;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v13, v12);
    if (ValueAtIndex)
    {
      v15 = ValueAtIndex;
      if (CFGetTypeID(ValueAtIndex) == *(a1 + 40))
      {
        v16 = CFDictionaryGetValue(v15, @"UTTypeConformsTo");
        if (v16)
        {
          v17 = v16;
          v18 = CFGetTypeID(v16);
          if (v18 == *(a1 + 48))
          {
            v19 = CFArrayGetCount(v17);
            if (v19 < 1)
            {
              goto LABEL_26;
            }

            v20 = v19;
            v21 = 0;
            while (1)
            {
              v22 = CFArrayGetValueAtIndex(v17, v21);
              if (CFGetTypeID(v22) == *(a1 + 56))
              {
                if (CFStringHasPrefix(v22, @"public.app-category"))
                {
                  break;
                }
              }

              if (v20 == ++v21)
              {
                v13 = v38;
                goto LABEL_25;
              }
            }

            v13 = v38;
            if (!v22)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v18 != *(a1 + 56))
            {
              goto LABEL_26;
            }

            if (!CFStringHasPrefix(v17, @"public.app-category"))
            {
LABEL_29:
              v11 = v37;
              goto LABEL_26;
            }
          }

          v23 = CFDictionaryGetValue(v15, @"UTTypeDescription");
          if (v23)
          {
            v24 = v23;
            if (CFGetTypeID(v23) == *(a1 + 56))
            {
              v25 = CFDictionaryGetValue(v15, @"UTTypeIdentifier");
              if (v25)
              {
                v26 = v25;
                if (CFGetTypeID(v25) == *(a1 + 56))
                {
                  v27 = v35;
                  v28 = v36;
                  v34[v36] = v26;
                  v27[v28] = v24;
                  v36 = v28 + 1;
                }
              }
            }
          }

LABEL_25:
          v11 = v37;
        }
      }
    }

LABEL_26:
    ++v12;
  }

  while (v12 != v11);
  v30 = v35;
  if (v36)
  {
    if (*(a1 + 64) == 1)
    {
      v31 = v35;
      v30 = v34;
    }

    else
    {
      v31 = v34;
    }

    *(*(*(a1 + 32) + 8) + 24) = CFDictionaryCreate(v3, v31, v30, v36, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

LABEL_37:
  v29 = 0;
  if (v4)
  {
LABEL_38:
    CFRelease(v4);
  }

  return v29;
}

uint64_t __bundleLocalizedPropertyCopy_block_invoke(void *a1, uint64_t a2)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = @"CFBundleDocumentTypes";
  v3 = CFSetCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9F8]);
  if (!_CFPropertyListCreateFiltered())
  {
    v5 = 0xFFFFFFFFLL;
    if (!v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(0) && CFDictionaryGetCount(0))
  {
    *(*(a1[4] + 8) + 24) = bundleDescriptionCopy(0, a1[5], a1[6]);
  }

  v5 = 0;
  if (v3)
  {
LABEL_8:
    CFRelease(v3);
  }

LABEL_9:
  if (values[0])
  {
    CFRelease(values[0]);
  }

  return v5;
}

const __CFDictionary *bundleDescriptionCopy(const __CFDictionary *result, const void *a2, const void *a3)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, @"CFBundleDocumentTypes");
    TypeID = CFArrayGetTypeID();
    if (Value)
    {
      v7 = TypeID;
      if (TypeID == CFGetTypeID(Value))
      {
        v8 = CFDictionaryGetTypeID();
        v9 = CFStringGetTypeID();
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v11 = Count;
          v21 = v7;
          cf1 = a3;
          v23 = a2;
          v12 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, v12);
            if (v8 != CFGetTypeID(ValueAtIndex))
            {
              goto LABEL_20;
            }

            result = CFDictionaryGetValue(ValueAtIndex, @"CFBundleTypeName");
            if (!result)
            {
              goto LABEL_21;
            }

            v14 = result;
            if (v9 != CFGetTypeID(result))
            {
              goto LABEL_20;
            }

            if (cf1 && CFEqual(cf1, v14))
            {
              return 0;
            }

            result = CFDictionaryGetValue(ValueAtIndex, @"LSItemContentTypes");
            if (result)
            {
              break;
            }

LABEL_21:
            if (v11 <= ++v12 || result)
            {
              return result;
            }
          }

          v15 = result;
          if (v21 == CFGetTypeID(result))
          {
            v16 = CFArrayGetCount(v15);
            if (v16 >= 1)
            {
              v17 = v16;
              v18 = 0;
              while (1)
              {
                v19 = CFArrayGetValueAtIndex(v15, v18);
                if (v19)
                {
                  v20 = v19;
                  if (v9 == CFGetTypeID(v19))
                  {
                    if (CFEqual(v23, v20))
                    {
                      break;
                    }
                  }
                }

                result = 0;
                if (v17 == ++v18)
                {
                  goto LABEL_21;
                }
              }

              result = CFRetain(v14);
              goto LABEL_21;
            }
          }

LABEL_20:
          result = 0;
          goto LABEL_21;
        }
      }
    }

    return 0;
  }

  return result;
}

__CFDictionary *localizedPropertyCopy(const void **a1, CFIndex a2, const __CFURL *a3, uint64_t a4, CFArrayRef theArray, unsigned int a6)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v13 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Count)
    {
      TypeID = CFDictionaryGetTypeID();
      v16 = TypeID;
      if (a3)
      {
        v17 = v13;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 0x40000000;
        v30[2] = __localizedPropertyCopy_block_invoke;
        v30[3] = &__block_descriptor_tmp_45;
        v30[4] = Count;
        v30[5] = theArray;
        v30[6] = a2;
        v30[7] = a1;
        v30[8] = TypeID;
        v30[9] = Mutable;
        v31 = a6;
        v18 = processMappedPlist(a3, v30);
        if (v18)
        {
          v19 = v18;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            localizedPropertyCopy_cold_1(a3, v19);
          }
        }

        v13 = v17;
      }

      else if (a4)
      {
        v28 = a6;
        v27 = v13;
        v29 = a1;
        v22 = CFSetCreate(v13, a1, a2, MEMORY[0x1E695E9F8]);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            FilteredLocalizedInfoPlist = _CFBundleCreateFilteredLocalizedInfoPlist();
            if (FilteredLocalizedInfoPlist)
            {
              v26 = FilteredLocalizedInfoPlist;
              if (v16 == CFGetTypeID(FilteredLocalizedInfoPlist))
              {
                localizedPropertyAdd(Mutable, ValueAtIndex, v26, v29, a2, v28);
              }

              CFRelease(v26);
            }
          }
        }

        if (v22)
        {
          CFRelease(v22);
        }

        a1 = v29;
        a6 = v28;
        v13 = v27;
      }
    }
  }

  else
  {
    v13 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  if (!CFDictionaryGetValue(Mutable, &stru_1F29A61D0))
  {
    if (a6)
    {
      CFDictionarySetValue(Mutable, &stru_1F29A61D0, *a1);
    }

    else
    {
      v20 = CFDictionaryCreate(v13, a1, a1, a2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, &stru_1F29A61D0, v20);
      if (v20)
      {
        CFRelease(v20);
      }
    }
  }

  return Mutable;
}

uint64_t __localizedPropertyCopy_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (*(a1 + 32) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v5);
      if (*(a1 + 48) >= 1)
      {
        v7 = ValueAtIndex;
        v8 = 0;
        do
        {
          v9 = CFStringCreateWithFormat(v3, 0, @"%@:%@", v7, *(*(a1 + 56) + 8 * v8));
          CFSetAddValue(Mutable, v9);
          if (v9)
          {
            CFRelease(v9);
          }

          ++v8;
        }

        while (v8 < *(a1 + 48));
      }

      ++v5;
    }

    while (v5 < *(a1 + 32));
  }

  if ((_CFPropertyListCreateFiltered() & 1) == 0)
  {
    v16 = 0xFFFFFFFFLL;
    if (!Mutable)
    {
      return v16;
    }

LABEL_21:
    CFRelease(Mutable);
    return v16;
  }

  v10 = *(a1 + 64);
  if (v10 == CFGetTypeID(0) && CFDictionaryGetCount(0) && *(a1 + 32) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = CFArrayGetValueAtIndex(*(a1 + 40), v11);
      Value = CFDictionaryGetValue(0, v12);
      if (Value)
      {
        v14 = Value;
        v15 = *(a1 + 64);
        if (v15 == CFGetTypeID(Value))
        {
          localizedPropertyAdd(*(a1 + 72), v12, v14, *(a1 + 56), *(a1 + 48), *(a1 + 80));
        }
      }

      ++v11;
    }

    while (v11 < *(a1 + 32));
  }

  v16 = 0;
  if (Mutable)
  {
    goto LABEL_21;
  }

  return v16;
}

void localizedPropertyAdd(__CFDictionary *a1, const __CFString *a2, const __CFDictionary *a3, const void **a4, uint64_t a5, char a6)
{
  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(*MEMORY[0x1E695E480], a2);
  if (!CanonicalLanguageIdentifierFromString)
  {
    CanonicalLanguageIdentifierFromString = CFRetain(a2);
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_10:
    v17 = a1;
    v18 = CanonicalLanguageIdentifierFromString;
    v19 = a3;
    goto LABEL_11;
  }

  if ((a6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  TypeID = CFStringGetTypeID();
  if (a5 < 1)
  {
    goto LABEL_12;
  }

  v14 = TypeID;
  while (1)
  {
    Value = CFDictionaryGetValue(a3, *a4);
    if (Value)
    {
      v16 = Value;
      if (v14 == CFGetTypeID(Value))
      {
        break;
      }
    }

    ++a4;
    if (!--a5)
    {
      goto LABEL_12;
    }
  }

  v17 = a1;
  v18 = CanonicalLanguageIdentifierFromString;
  v19 = v16;
LABEL_11:
  CFDictionarySetValue(v17, v18, v19);
LABEL_12:

  CFRelease(CanonicalLanguageIdentifierFromString);
}

const __CFURL *__getCoreTypesBundleURL_block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  result = stat("/System/Library/CoreServices/MobileCoreTypes.bundle", &v6);
  if (!result)
  {
    v1 = *MEMORY[0x1E695E480];
    result = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], "/System/Library/CoreServices/MobileCoreTypes.bundle", 51, 1u);
    if (result)
    {
      v2 = result;
      v3 = CFBundleCopyLocalizationsForURL(result);
      v4 = CFBundleCopyResourceURLInDirectory(v2, @"InfoPlist", @"loctable", 0);
      v5 = stat("/System/Library/CoreServices/MobileCoreTypes.bundle/Info.plist", &v6);
      result = 0;
      if (!v5)
      {
        result = CFURLCreateFromFileSystemRepresentation(v1, "/System/Library/CoreServices/MobileCoreTypes.bundle/Info.plist", 62, 1u);
      }

      getCoreTypesBundleURL_sCoreTypesBundleURL = v2;
      gCoreTypesBundleLocalizations = v3;
      gCoreTypesInfoPlistURL = result;
      gCoreTypesLocTableURL = v4;
    }
  }

  return result;
}

uint64_t unicode_decomposeable(unsigned int a1)
{
  if (a1 < 0xC0)
  {
    return 0;
  }

  v1 = __CFUniCharDecomposableBitmap[a1 >> 8];
  if (!__CFUniCharDecomposableBitmap[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (__CFUniCharDecomposableBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

uint64_t utf8_encodestr(unsigned __int16 *a1, unint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v31[0] = 0;
  v31[1] = 0;
  if (a2 < 2)
  {
    result = 0;
    v8 = a3;
    goto LABEL_40;
  }

  result = 0;
  v10 = 0;
  v11 = 0;
  v12 = &a3[a5 - ((a7 & 2) == 0)];
  v13 = a2 >> 1;
  v8 = a3;
  while (1)
  {
    while (1)
    {
      --v13;
      if (v10 < 1)
      {
        v16 = *a1++;
        v14 = v16;
        v17 = bswap32(v16) >> 16;
        if (a7)
        {
          v14 = v17;
        }

        if ((a7 & 4) != 0)
        {
          v18 = v14;
          if (v14 >= 0xC0u)
          {
            v19 = __CFUniCharDecomposableBitmap[v14 >> 8];
            if (!__CFUniCharDecomposableBitmap[v14 >> 8] || v19 != 255 && ((__CFUniCharDecomposableBitmap[32 * v19 + 224 + (v14 >> 3)] >> (v14 & 7)) & 1) == 0)
            {
              goto LABEL_18;
            }

            v30 = result;
            v20 = a4;
            v21 = a3;
            v22 = a6;
            v23 = a7;
            v24 = unicode_decompose(v14, v31);
            a7 = v23;
            a6 = v22;
            a3 = v21;
            a4 = v20;
            v10 = v24 - 1;
            result = v30;
            v13 += v10;
            v14 = LOWORD(v31[0]);
            v11 = v31 + 1;
          }
        }
      }

      else
      {
        v15 = *v11++;
        v14 = v15;
        --v10;
      }

      if (!v14)
      {
        LOBYTE(v14) = 0;
        LOBYTE(v25) = 2;
        LOBYTE(v26) = -112;
        goto LABEL_23;
      }

      if (v14 == 47)
      {
        v14 = a6;
        if (!a6)
        {
          break;
        }
      }

      v18 = v14;
      if (v14 < 0x80u)
      {
        goto LABEL_35;
      }

LABEL_18:
      if (v14 > 0x7FFu)
      {
        v26 = v14 >> 6;
        v25 = v14 >> 12;
        if (v14 >> 10 == 54 && v13)
        {
          v27 = *a1;
          v28 = bswap32(v27) >> 16;
          if (a7)
          {
            LOWORD(v27) = v28;
          }

          if (v27 >> 10 != 55)
          {
            LOBYTE(v25) = 13;
            goto LABEL_23;
          }

          if (v8 + 3 >= v12)
          {
            goto LABEL_39;
          }

          v29 = (v18 << 10) + v27 - 56613888;
          --v13;
          ++a1;
          *v8 = (v29 >> 18) | 0xF0;
          v8[1] = (v29 >> 12) & 0x3F | 0x80;
          v8[2] = (v29 >> 6) & 0x3F | 0x80;
          v8[3] = v27 & 0x3F | 0x80;
          v8 += 4;
          if (!v13)
          {
            goto LABEL_40;
          }
        }

        else
        {
LABEL_23:
          if (v8 + 2 >= v12)
          {
            goto LABEL_39;
          }

          *v8 = v25 | 0xE0;
          v8[1] = v26 & 0x3F | 0x80;
          v8[2] = v14 & 0x3F | 0x80;
          v8 += 3;
          if (!v13)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v8 + 1 >= v12)
        {
          goto LABEL_39;
        }

        *v8 = (v14 >> 6) | 0xC0;
        v8[1] = v14 & 0x3F | 0x80;
        v8 += 2;
        if (!v13)
        {
          goto LABEL_40;
        }
      }
    }

    LOBYTE(v14) = 95;
    result = 22;
LABEL_35:
    if (v8 >= v12)
    {
      break;
    }

    *v8++ = v14;
    if (!v13)
    {
      goto LABEL_40;
    }
  }

LABEL_39:
  result = 63;
LABEL_40:
  *a4 = v8 - a3;
  if ((a7 & 2) == 0)
  {
    *v8 = 0;
  }

  return result;
}

uint64_t unicode_decompose(__int16 a1, _WORD *a2)
{
  v2 = a1 + 21504;
  if ((a1 + 21504) > 0x2BA4u)
  {

    return unicode_recursive_decompose(a1, a2);
  }

  else
  {
    *a2 = ((28533 * (a1 + 21504)) >> 24) | 0x1100;
    a2[1] = v2 % 0x24Cu / 0x1C + 4449;
    if (v2 % 0x1Cu)
    {
      a2[2] = (a1 + 21504) % 0x1Cu + 4519;
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t utf8_decodestr(unsigned __int8 *a1, unint64_t a2, char *a3, void *a4, uint64_t a5, _DWORD *a6, char a7)
{
  v46[2] = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (!a2)
  {
    result = 0;
    v11 = a3;
    goto LABEL_64;
  }

  v9 = a2;
  v10 = &a3[a5];
  v11 = a3;
  v12 = a1;
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    if (!v14)
    {
LABEL_61:
      result = 0;
      goto LABEL_64;
    }

    --v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    v15 = utf_extrabytes[v13 >> 3];
    if (v9 < v15)
    {
      goto LABEL_62;
    }

    v16 = utf_extrabytes[v13 >> 3];
    v9 -= v15;
    if (v16 != 3)
    {
      break;
    }

    v28 = *v12;
    if ((v28 & 0xC0) != 0x80 || (v29 = a1[2], (v29 & 0xC0) != 0x80) || (v30 = a1[3], (v30 & 0xC0) != 0x80) || (v31 = v30 + (((v28 << 6) + (v13 << 12) + v29) << 6) - 63512704, v31 >> 20))
    {
LABEL_62:
      result = 22;
      goto LABEL_64;
    }

    v32 = (v31 >> 10) | 0xFFFFD800;
    if (a7)
    {
      *v11 = bswap32(v32) >> 16;
      v33 = v11 + 2;
      if (v11 + 2 >= v10)
      {
LABEL_65:
        result = 63;
        v11 = v33;
        goto LABEL_64;
      }

      v34 = __rev16(v31 & 0x3FF | 0xDC00);
    }

    else
    {
      *v11 = v32;
      v33 = v11 + 2;
      if (v11 + 2 >= v10)
      {
        goto LABEL_65;
      }

      v34 = v31 & 0x3FF | 0xDC00;
    }

    v12 = a1 + 4;
    *(v11 + 1) = v34;
    v11 += 4;
LABEL_54:
    a1 = v12;
    if (!v9)
    {
      goto LABEL_61;
    }
  }

  if (v16 == 2)
  {
    v19 = *v12;
    if ((v19 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v20 = a1[2];
    if ((v20 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v21 = (v19 << 6) + (v13 << 12) + v20;
    v18 = v21 - 925824;
    if ((v21 - 925824) < 0x800)
    {
      goto LABEL_62;
    }

    v12 = a1 + 3;
    if (v18 >> 11 >= 0x1B)
    {
      result = 22;
      if (v18 < 0xE000 || (v21 & 0x3FFFFE) == 0xF207E)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    if (v16 != 1)
    {
      goto LABEL_62;
    }

    v17 = *v12;
    if ((v17 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v18 = v17 + (v13 << 6) - 12416;
    if (v18 < 0x80)
    {
      goto LABEL_62;
    }

    v12 = a1 + 2;
  }

  if ((a7 & 4) == 0)
  {
    if ((a7 & 8) != 0 && v18 >= 0x300u)
    {
      v23 = __CFUniCharCombiningBitmap[BYTE1(v18)];
      if (__CFUniCharCombiningBitmap[BYTE1(v18)])
      {
        if (v23 == 255 || ((__CFUniCharCombiningBitmap[32 * v23 + 224 + (v18 >> 3)] >> (v18 & 7)) & 1) != 0)
        {
          *a6 = 1;
          if (v11 != a3)
          {
            v24 = *(v11 - 1);
            v25 = bswap32(v24) >> 16;
            if (a7)
            {
              LOWORD(v24) = v25;
            }

            v26 = a4;
            v44 = a6;
            v27 = unicode_combine(v24, v18);
            a6 = v44;
            a4 = v26;
            if (v27)
            {
              v11 -= 2;
              v18 = v27;
            }
          }
        }
      }
    }

LABEL_47:
    if (v18 == 9216)
    {
      LODWORD(v13) = 0;
    }

    else
    {
      LODWORD(v13) = v18;
    }

LABEL_50:
    if (v11 >= v10)
    {
      goto LABEL_63;
    }

    v43 = bswap32(v13) >> 16;
    if (a7)
    {
      LOWORD(v13) = v43;
    }

    *v11 = v13;
    v11 += 2;
    goto LABEL_54;
  }

  if (v18 < 0xC0u)
  {
    goto LABEL_47;
  }

  v35 = __CFUniCharDecomposableBitmap[BYTE1(v18)];
  if (!__CFUniCharDecomposableBitmap[BYTE1(v18)] || v35 != 255 && ((__CFUniCharDecomposableBitmap[32 * v35 + 224 + (v18 >> 3)] >> (v18 & 7)) & 1) == 0)
  {
    goto LABEL_47;
  }

  v45 = a6;
  v46[0] = 0;
  v36 = a4;
  v46[1] = 0;
  v37 = unicode_decompose(v18, v46);
  if (v37 < 1)
  {
    a4 = v36;
    a6 = v45;
    goto LABEL_54;
  }

  v38 = v37;
  v39 = v46;
  a4 = v36;
  a6 = v45;
  while (1)
  {
    v41 = *v39++;
    v40 = v41;
    v42 = bswap32(v41) >> 16;
    if (a7)
    {
      v40 = v42;
    }

    *v11 = v40;
    v11 += 2;
    if (v11 >= v10)
    {
      break;
    }

    if (!--v38)
    {
      goto LABEL_54;
    }
  }

LABEL_63:
  result = 63;
LABEL_64:
  *a4 = v11 - a3;
  return result;
}

uint64_t unicode_combine(unsigned int a1, unsigned int a2)
{
  if (a2 - 4449 > 0x61)
  {
    if ((a2 - 12443) < 0xD265u)
    {
      return 0;
    }
  }

  else
  {
    if (a2 >> 1 <= 0x8BA && (a1 - 4352) <= 0x12u)
    {
      return (28 * a2 + 588 * a1 - 18076);
    }

    if (a2 >> 3 >= 0x235 && ((a1 + 21504) >> 2) <= 0xAE8u)
    {
      HIDWORD(v7) = -1227133513 * a1 - 1840706560;
      LODWORD(v7) = HIDWORD(v7);
      if ((v7 >> 2) <= 0x9249249)
      {
        return (a1 + a2 - 4519);
      }

      else
      {
        return 0;
      }
    }
  }

  v3 = &__CFUniCharPrecompSourceTable;
  v4 = &unk_1B23E0D68;
  while (1)
  {
    v5 = &v3[8 * ((v4 - v3) >> 4)];
    if (*v5 <= a2)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_11:
    if (v3 > v4)
    {
      return 0;
    }
  }

  if (*v5 < a2)
  {
    v3 = v5 + 2;
    goto LABEL_11;
  }

  v8 = v5[1];
  if (v8)
  {
    v9 = &__CFUniCharBMPPrecompDestinationTable + 4 * v8;
    if (*v9 <= a1)
    {
      v10 = &v9[4 * HIWORD(v8) - 4];
      if (*v10 >= a1)
      {
        while (1)
        {
          v11 = &v9[4 * ((v10 - v9) >> 3)];
          v12 = *v11;
          if (v12 <= a1)
          {
            if (v12 >= a1)
            {
              return v11[1];
            }

            v9 = (v11 + 2);
          }

          else
          {
            v10 = v11 - 2;
          }

          v2 = 0;
          if (v9 > v10)
          {
            return v2;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t unicode_recursive_decompose(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  v15 = *MEMORY[0x1E69E9840];
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &__CFUniCharDecompositionTable;
  v4 = &unk_1B23E31A8;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_7:
    if (v3 > v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 2;
    goto LABEL_7;
  }

  v7 = v5[1];
LABEL_9:
  v8 = (v7 >> 12) & 7;
  v14 = v7 & 0xFFF;
  v9 = &__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF);
  v10 = &v14;
  if (v8 != 1)
  {
    v10 = (&__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = unicode_recursive_decompose(*v10, a2);
  if (result)
  {
    --v8;
    v12 = &v14;
    if (v8)
    {
      v12 = v9;
    }

    v10 = (v12 + 1);
    v2 += result;
LABEL_17:
    for (result = (result + v8); v8; --v8)
    {
      v13 = *v10++;
      *v2++ = v13;
    }
  }

  return result;
}

uint64_t check_and_decompose_string(unsigned __int8 *a1, unint64_t a2, unsigned __int8 **a3, unint64_t *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = 0;
  *a3 = a1;
  *a4 = a2;
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v28 = 0;
  v9 = a1;
  while ((*v9 & 0x80000000) == 0)
  {
LABEL_10:
    ++v8;
    ++v9;
    if (v8 >= a2)
    {
      goto LABEL_11;
    }
  }

  v29 = 0;
  v10 = utf8_byte_length_noerror_utf8_len_table_1[*v9 >> 4];
  if (utf8_decodestr(v9, v10, &v29, &v27, 4, &v28, 0))
  {
    return 22;
  }

  if (v29 < 0xC0u || (v11 = __CFUniCharDecomposableBitmap[v29 >> 8]) == 0 || v11 != 255 && ((__CFUniCharDecomposableBitmap[32 * v11 + 224 + (v29 >> 3)] >> (v29 & 7)) & 1) == 0)
  {
    v8 += v10 - 1;
    v9 += v10 - 1;
    goto LABEL_10;
  }

LABEL_11:
  if (v8 >= a2)
  {
    if (v8 <= a2)
    {
      return 0;
    }

    return 22;
  }

  v12 = (a2 >> 1) & 0x7FFFFFFFFFFFFFFELL;
  v13 = malloc_type_malloc(v12 + 2 * a2 + 2, 0x1000040BDFB0063uLL);
  if (v13)
  {
    v14 = 2 * a2 + v12 + 66;
    do
    {
      v15 = utf8_decodestr(a1, a2, v13, &v27, v14 - 64, &v28, 4);
      if (!v15)
      {
        break;
      }

      if (v15 == 22)
      {
        free(v13);
        return 22;
      }

      free(v13);
      v13 = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
      v14 += 64;
    }

    while (v13);
  }

  v16 = v27;
  if (v27 >= 2)
  {
    v17 = 0;
    v18 = v27 >> 1;
    v19 = v13;
    do
    {
      v21 = *v19;
      v19 += 2;
      v20 = v21;
      if (!v21)
      {
        v20 = 9216;
      }

      if (v20 >= 0x80)
      {
        if (v20 >= 0x800)
        {
          if ((v20 & 0xF800) == 0xD800)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v22 = 2;
        }
      }

      else
      {
        v22 = 1;
      }

      v17 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {
    v17 = 0;
  }

  v23 = malloc_type_malloc(v17 + 1, 0xE5333DECuLL);
  v24 = utf8_encodestr(v13, v16, v23, &v27, v17 + 1, 47, 4);
  if (v24)
  {
    v25 = v24;
    free(v13);
    free(v23);
    return v25;
  }

  v23[v17] = 0;
  *a3 = v23;
  *a4 = v17 + 1;
  free(v13);
  return 0;
}

void *MDTrieCreate(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v12 = malloc_type_calloc(1uLL, 0x3368uLL, 0x10B0040EFDB134FuLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 3182) = a1;
    *(v12 + 1592) = a2;
    *(v12 + 3186) = a3;
    *(v12 + 3187) = a4;
    v12[12752] = a5;
    v27 = v12 + 12288;
    v12[12753] = a6;
    *(v12 + 1620) = 766030772;
    *(v12 + 12968) = 0u;
    *(v12 + 12984) = 0u;
    *(v12 + 13000) = 0u;
    *(v12 + 13016) = 0u;
    *(v12 + 13032) = 0u;
    *(v12 + 13048) = 0u;
    *(v12 + 13064) = 0u;
    *(v12 + 13080) = 0u;
    *(v12 + 13096) = 0u;
    *(v12 + 13112) = 0u;
    *(v12 + 13128) = 0u;
    *(v12 + 13144) = 0u;
    *(v12 + 1595) = 766030772;
    *(v12 + 798) = 0u;
    *(v12 + 799) = 0u;
    *(v12 + 800) = 0u;
    *(v12 + 801) = 0u;
    *(v12 + 802) = 0u;
    *(v12 + 803) = 0u;
    *(v12 + 804) = 0u;
    *(v12 + 805) = 0u;
    *(v12 + 806) = 0u;
    *(v12 + 807) = 0u;
    *(v12 + 808) = 0u;
    *(v12 + 809) = 0u;
    v36[0] = 0;
    asprintf(v36, "%s.node", a2);
    v14 = cacheFileExists(a1, v36[0]);
    if (a5)
    {
      v15 = 0;
    }

    else
    {
      v15 = 514;
    }

    v16 = fd_create_protected(a1, v36[0], v15, a3);
    *v13 = v16;
    bzero(v13 + 3, 0x1088uLL);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZL10createTrieiPciibb_block_invoke;
    v34[3] = &__block_descriptor_tmp_9;
    v35 = v14;
    v34[4] = v13;
    storage_array_Init(v13 + 6, 1024, 0, 4392, v16, v14 ^ 1u, a4, a5, 0, 102, 0, v34);
    if ((v14 & 1) == 0 && (a5 & 1) == 0)
    {
      storage_array_FlushHeader(v13 + 3);
    }

    free(v36[0]);
    v33 = 0;
    asprintf(&v33, "%s.container", a2);
    v17 = cacheFileExists(a1, v33);
    v18 = fd_create_protected(a1, v33, v15, a3);
    v13[1] = v18;
    bzero(v13 + 532, 0x1088uLL);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 0x40000000;
    v31[2] = ___ZL10createTrieiPciibb_block_invoke_2;
    v31[3] = &__block_descriptor_tmp_6_0;
    v32 = v17;
    v31[4] = v13;
    storage_array_Init(v13 + 1064, 1024, 0, 528, v18, v17 ^ 1u, a4, a5, 0, 102, 0, v31);
    if ((v17 & 1) == 0 && (a5 & 1) == 0)
    {
      storage_array_FlushHeader(v13 + 532);
    }

    free(v33);
    v30 = 0;
    asprintf(&v30, "%s.payload", a2);
    v19 = cacheFileExists(a1, v30);
    v20 = fd_create_protected(a1, v30, v15, a3);
    v13[2] = v20;
    bzero(v13 + 1061, 0x1088uLL);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = ___ZL10createTrieiPciibb_block_invoke_3;
    v28[3] = &__block_descriptor_tmp_8;
    v29 = v19;
    v28[4] = v13;
    storage_array_Init(v13 + 2122, 1024, 0, 344, v20, v19 ^ 1u, a4, a5, 0, 102, 0, v28);
    if ((v19 & 1) == 0 && (a5 & 1) == 0)
    {
      storage_array_FlushHeader(v13 + 1061);
    }

    free(v30);
    if ((a5 & 1) == 0)
    {
      if (storage_array_ValidPtr((v13 + 3), 0, 1))
      {
        v21 = storage_array_ResolvePtr((v13 + 3), 0, 1);
LABEL_19:
        v13[1590] = v21;
        return v13;
      }

      v22 = storage_array_AllocOffsetFromEnd(v13 + 3);
      if (storage_array_ValidPtr((v13 + 3), v22, 1))
      {
        v21 = storage_array_ResolvePtr((v13 + 3), v22, 1);
        v23 = v27[465];
        *v21 = 0;
        *(v21 + 8) = 0;
        memset((v21 + 16), 255, 0x1000uLL);
        *(v21 + 4116) = 0;
        *(v21 + 4376) = 0;
        *(v21 + 4384) = v23;
        *(v21 + 4385) = 0;
        *(v21 + 4120) = 0u;
        *(v21 + 4136) = 0u;
        *(v21 + 4152) = 0u;
        *(v21 + 4168) = 0u;
        *(v21 + 4184) = 0u;
        *(v21 + 4200) = 0u;
        *(v21 + 4216) = 0u;
        *(v21 + 4232) = 0u;
        *(v21 + 4248) = 0u;
        *(v21 + 4264) = 0u;
        *(v21 + 4280) = 0u;
        *(v21 + 4296) = 0u;
        *(v21 + 4312) = 0u;
        *(v21 + 4328) = 0u;
        *(v21 + 4344) = 0u;
        *(v21 + 4360) = 0u;
        goto LABEL_19;
      }

      v24 = *__error();
      v25 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        MDTrieCreate_cold_1();
      }

      v13 = 0;
      *__error() = v24;
    }
  }

  return v13;
}

void *MDTrieOpenReadOnly(int *a1, const char *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = malloc_type_calloc(1uLL, 0x3368uLL, 0x10B0040EFDB134FuLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 3182) = -1;
    *(v4 + 12752) = 1;
    v12[0] = 0;
    asprintf(v12, "%s.node.shadow", a2);
    only = fd_create_read_only(a1[1], v12[0]);
    *v5 = only;
    storage_array_ReadInit((v5 + 3), only, 1024, 0x105C89E00, 4392, 4096);
    free(v12[0]);
    v11 = 0;
    asprintf(&v11, "%s.container.shadow", a2);
    v7 = fd_create_read_only(a1[2], v11);
    v5[1] = v7;
    storage_array_ReadInit((v5 + 532), v7, 1024, 528001024, 528, 4096);
    free(v11);
    v10 = 0;
    asprintf(&v10, "%s.payload.shadow", a2);
    v8 = fd_create_read_only(a1[3], v10);
    v5[2] = v8;
    storage_array_ReadInit((v5 + 1061), v8, 1024, 344001024, 344, 4096);
    free(v10);
  }

  return v5;
}

BOOL searchLevel(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, int a7, uint64_t a8, void (*a9)(void, double))
{
  v34 = *MEMORY[0x1E69E9840];
  v12 = a4 - a5;
  if (a4 <= a5)
  {
LABEL_5:
    v33 = 1;
    v17 = storage_array_ResolvePtr(a1 + 24, a2, 1);
    if (a7)
    {
      MDTrieNode::removePayload(v17, a6);
    }

    else if (a9 && (*(v17 + 4385) & 1) == 0)
    {
      (a9)(a8, v17 + 4112, 1, *(v17 + 4116), &v33, *(v17 + 4376));
    }

    return 1;
  }

  else
  {
    v15 = a5;
    while (1)
    {
      v16 = storage_array_ResolvePtr(a1 + 24, a2, 1);
      a2 = v16[*(a3 + v15) + 2];
      if (!storage_array_ValidPtr(a1 + 24, a2, 1))
      {
        break;
      }

      ++v15;
      --v12;
      if (v15 == a4)
      {
        goto LABEL_5;
      }
    }

    v19 = v16[*(a3 + v15) + 258];
    if (storage_array_ValidPtr(a1 + 4256, v19, 1))
    {
      v29 = a8;
      v20 = 0;
      v18 = 1;
      v30 = v12;
      do
      {
        v21 = storage_array_ResolvePtr(a1 + 4256, v19, 1);
        v22 = v21[v20 + 1];
        if (storage_array_ValidPtr(a1 + 8488, v22, 1))
        {
          v23 = storage_array_ResolvePtr(a1 + 8488, v22, 1);
          if (a4 - v15 == *(v23 + 8))
          {
            v24 = a3;
            v25 = (v23 + 12);
            v26 = v30;
            while (1)
            {
              v27 = *v25++;
              if (*(v24 + v15) != v27)
              {
                break;
              }

              ++v24;
              if (!--v26)
              {
                if (a7)
                {
                  if (!MDTriePayload::removePayload(v23, a6))
                  {
                    break;
                  }

                  --*v21;
                  if (v18)
                  {
                    --*v16;
                    return 1;
                  }

                  return 0;
                }

                if (a9 && (*(v23 + 337) & 1) == 0)
                {
                  a9(v29, *v23);
                  return v18;
                }

                break;
              }
            }
          }
        }

        v18 = v20++ < 0x3F;
      }

      while (v20 != 64);
    }

    return 0;
  }
}

double *containsKey(double *result, unsigned __int8 *a2, unsigned int a3, int a4, double a5, BOOL *a6)
{
  if (result)
  {
    v11 = result;
    v12 = malloc_type_malloc(a3 + 1, 0x100004077774924uLL);
    *v11 = v12;
    result = memcpy(v12, a2, a3);
    *(*v11 + a3) = 0;
    *(v11 + 2) = a3;
    *(v11 + 3) = a4;
    v11[2] = a5;
    *a6 = 1;
  }

  return result;
}

uint64_t MDTrieInsert(uint64_t result, const void *a2, uint64_t a3, uint64_t a4, double a5)
{
  if (result)
  {
    v5 = result;
    if ((*(result + 12752) & 1) == 0)
    {
      pthread_rwlock_wrlock((result + 12960));
      if (payloadCounter(v5, 0) <= 999999)
      {
        addLevel(v5, 0, a2, a3, 0, a4, a5);
      }

      return pthread_rwlock_unlock((v5 + 12960));
    }
  }

  return result;
}

uint64_t MDTrieCount(uint64_t a1)
{

  return payloadCounter(a1, 0);
}

void *addLevel(uint64_t a1, unint64_t a2, const void *a3, uint64_t a4, unsigned int a5, uint64_t a6, double a7)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v14 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v15 = v29 - ((v14 + 15) & 0x1FFFFFFF0);
  bzero(v15, v14);
  if (a4)
  {
    memcpy(v29 - ((v14 + 15) & 0x1FFFFFFF0), a3, v14);
  }

  v16 = storage_array_ResolvePtr(a1 + 24, a2, 1);
  v17 = v16;
  v18 = a4 - a5;
  if (a4 <= a5)
  {
    result = MDTrieNode::updatePayload(v16, a6, a7);
    ++*v17;
  }

  else
  {
    v19 = &v15[a5];
    v20 = *v19;
    v21 = *(v16 + 8 * v20 + 16);
    if (storage_array_ValidPtr(a1 + 24, v21, 1))
    {
      return addLevel(a1, v21, v15, a4, a5 + 1, a6, a7);
    }

    else
    {
      v23 = *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * v20 + 2064);
      if (storage_array_ValidPtr(a1 + 4256, v23, 1))
      {
        addPayloadToContainer(a1, v23, v19, v18, a6, a7);
        if (*storage_array_ResolvePtr(a1 + 4256, v23, 1) >= 64)
        {
          *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * *v19 + 2064) = -1;
          v24 = burstLevel(a1, v23);
          v25 = storage_array_ResolvePtr(a1 + 24, a2, 1);
          *(v25 + 8 * *v19 + 16) = v24;
          ++*(v25 + 8);
        }
      }

      else
      {
        v26 = storage_array_AllocOffsetFromEnd((a1 + 4256));
        v27 = storage_array_ResolvePtr(a1 + 4256, v26, 1);
        *v27 = 0;
        *&v28 = -1;
        *(&v28 + 1) = -1;
        *(v27 + 24) = v28;
        *(v27 + 40) = v28;
        *(v27 + 56) = v28;
        *(v27 + 72) = v28;
        *(v27 + 88) = v28;
        *(v27 + 104) = v28;
        *(v27 + 120) = v28;
        *(v27 + 136) = v28;
        *(v27 + 152) = v28;
        *(v27 + 168) = v28;
        *(v27 + 184) = v28;
        *(v27 + 200) = v28;
        *(v27 + 216) = v28;
        *(v27 + 232) = v28;
        *(v27 + 248) = v28;
        *(v27 + 520) = 0;
        *(v27 + 8) = v28;
        v27 += 8;
        *(v27 + 256) = v28;
        *(v27 + 272) = v28;
        *(v27 + 288) = v28;
        *(v27 + 304) = v28;
        *(v27 + 320) = v28;
        *(v27 + 336) = v28;
        *(v27 + 352) = v28;
        *(v27 + 368) = v28;
        *(v27 + 384) = v28;
        *(v27 + 400) = v28;
        *(v27 + 416) = v28;
        *(v27 + 432) = v28;
        *(v27 + 448) = v28;
        *(v27 + 464) = v28;
        *(v27 + 480) = v28;
        *(v27 + 496) = v28;
        *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * *v19 + 2064) = v26;
        addPayloadToContainer(a1, v26, v19, v18, a6, a7);
      }

      result = storage_array_ResolvePtr(a1 + 24, a2, 1);
      ++*result;
    }
  }

  return result;
}

uint64_t MDTrieDelete(uint64_t result, uint64_t a2, unsigned int a3, int a4)
{
  if (result)
  {
    v4 = result;
    if ((*(result + 12752) & 1) == 0)
    {
      pthread_rwlock_wrlock((result + 12960));
      searchLevel(v4, 0, a2, a3, 0, a4, 1, 0, 0);

      return pthread_rwlock_unlock((v4 + 12960));
    }
  }

  return result;
}

uint64_t payloadCounter(uint64_t a1, unint64_t a2)
{
  v3 = storage_array_ResolvePtr(a1 + 24, a2, 1);
  v4 = 0;
  v6 = v3 + 2;
  v5 = *v3;
  do
  {
    v7 = v6[v4];
    if (v7 != -1)
    {
      v5 += payloadCounter(a1, v7);
    }

    ++v4;
  }

  while (v4 != 256);
  return v5;
}

uint64_t MDTrieSync(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 12752) & 1) == 0)
    {
      storage_array_FlushHeader((result + 24));
      storage_array_Sync((v1 + 24), 1, 1);
      storage_array_FlushHeader((v1 + 4256));
      storage_array_Sync((v1 + 4256), 1, 1);
      storage_array_FlushHeader((v1 + 8488));
      storage_array_Sync((v1 + 8488), 1, 1);

      return writeToShadowTrie(v1);
    }
  }

  return result;
}

uint64_t storage_array_FlushHeader(void *a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v3, v2);
  v4 = storage_array_FdPtr(a1);
  fd_pread(v4, v3, a1[2], 0);
  v13[0] = v3;
  storage_array_HeaderStore(a1, v13, v5, v6, v7, v8, v9, v10);
  v11 = storage_array_FdPtr(a1);
  return fd_pwrite(v11, v3, a1[2], 0);
}

uint64_t writeToShadowTrie(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(result + 12752) & 1) == 0)
  {
    v1 = result;
    pthread_rwlock_wrlock((result + 12760));
    v21 = 0;
    bzero(v28, 0x400uLL);
    bzero(__str, 0x400uLL);
    bzero(v26, 0x400uLL);
    v2 = faccurate_realpath(*(v1 + 12728), v28);
    Current = CFAbsoluteTimeGetCurrent();
    snprintf(__str, 0x400uLL, "%s/%s.node", v2, *(v1 + 12736));
    snprintf(v26, 0x400uLL, "%s/%s.node.shadow", v2, *(v1 + 12736));
    if (copyFile(*(v1 + 12728), __str, *(v1 + 12728), v26, &v21))
    {
      if (dword_1EB7ABB10 < 5)
      {
        goto LABEL_9;
      }

      v4 = *__error();
      v5 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v1 + 12736);
        v7 = CFAbsoluteTimeGetCurrent() - Current;
        *buf = 136315394;
        v23 = v6;
        v24 = 2048;
        v25 = v7;
        _os_log_impl(&dword_1B238B000, v5, OS_LOG_TYPE_DEFAULT, "%s.node.shadow took %f seconds", buf, 0x16u);
      }
    }

    else
    {
      v4 = *__error();
      v8 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        writeToShadowTrie();
      }
    }

    *__error() = v4;
LABEL_9:
    v9 = CFAbsoluteTimeGetCurrent();
    snprintf(__str, 0x400uLL, "%s/%s.container", v2, *(v1 + 12736));
    snprintf(v26, 0x400uLL, "%s/%s.container.shadow", v2, *(v1 + 12736));
    if (copyFile(*(v1 + 12728), __str, *(v1 + 12728), v26, &v21))
    {
      if (dword_1EB7ABB10 < 5)
      {
        goto LABEL_16;
      }

      v10 = *__error();
      v11 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(v1 + 12736);
        v13 = CFAbsoluteTimeGetCurrent() - v9;
        *buf = 136315394;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        _os_log_impl(&dword_1B238B000, v11, OS_LOG_TYPE_DEFAULT, "%s.container.shadow took %f seconds", buf, 0x16u);
      }
    }

    else
    {
      v10 = *__error();
      v14 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        writeToShadowTrie();
      }
    }

    *__error() = v10;
LABEL_16:
    v15 = CFAbsoluteTimeGetCurrent();
    snprintf(__str, 0x400uLL, "%s/%s.payload", v2, *(v1 + 12736));
    snprintf(v26, 0x400uLL, "%s/%s.payload.shadow", v2, *(v1 + 12736));
    if (copyFile(*(v1 + 12728), __str, *(v1 + 12728), v26, &v21))
    {
      if (dword_1EB7ABB10 < 5)
      {
        return pthread_rwlock_unlock((v1 + 12760));
      }

      v16 = *__error();
      v17 = _SILogForLogForCategory(10);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(v1 + 12736);
        v19 = CFAbsoluteTimeGetCurrent() - v15;
        *buf = 136315394;
        v23 = v18;
        v24 = 2048;
        v25 = v19;
        _os_log_impl(&dword_1B238B000, v17, OS_LOG_TYPE_DEFAULT, "%s.payload.shadow took %f seconds", buf, 0x16u);
      }
    }

    else
    {
      v16 = *__error();
      v20 = _SILogForLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        writeToShadowTrie();
      }
    }

    *__error() = v16;
    return pthread_rwlock_unlock((v1 + 12760));
  }

  return result;
}

void MDTrieClose(uint64_t a1)
{
  if (a1)
  {
    MDTrieSync(a1);
    storage_array_Close(a1 + 24);
    storage_array_Close(a1 + 4256);
    storage_array_Close(a1 + 8488);
    if ((*(a1 + 12752) & 1) == 0)
    {
      pthread_rwlock_destroy((a1 + 12960));

      pthread_rwlock_destroy((a1 + 12760));
    }
  }
}

uint64_t MDTrieGetFd(uint64_t result, _DWORD *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if ((*(result + 12752) & 1) == 0)
    {
      pthread_rwlock_rdlock((result + 12960));
      writeToShadowTrie(v2);
      pthread_rwlock_unlock((v2 + 12960));
      pthread_rwlock_rdlock((v2 + 12760));
      *a2 = 0;
      v6[0] = 0;
      asprintf(v6, "%s.node.shadow", *(v2 + 12736));
      a2[1] = openat(*(v2 + 12728), v6[0], 0);
      free(v6[0]);
      v5 = 0;
      asprintf(&v5, "%s.container.shadow", *(v2 + 12736));
      a2[2] = openat(*(v2 + 12728), v5, 0);
      free(v5);
      v4 = 0;
      asprintf(&v4, "%s.payload.shadow", *(v2 + 12736));
      a2[3] = openat(*(v2 + 12728), v4, 0);
      free(v4);
      return pthread_rwlock_unlock((v2 + 12760));
    }
  }

  return result;
}

void MDTrieEnumerateEntry(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    v5 = 0;
    enumerateNode(result, a2, v6, a3, &v5, a4, a5);
  }
}

void enumerateNode(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t *a5, unsigned int a6, uint64_t a7)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = storage_array_ResolvePtr(a1 + 24, a2, 1);
  if (v12)
  {
    v13 = v12;
    if ((*(v12 + 4385) & 1) == 0)
    {
      v14 = 0;
      v15 = v12 + 2064;
      v45 = v12 + 16;
      v46 = v12 + 2064;
      v47 = v12;
      do
      {
        if (*a5 >= a4)
        {
          return;
        }

        if (*(v15 + 8 * v14) == -1)
        {
          if (*(v45 + 8 * v14) == -1)
          {
            goto LABEL_15;
          }

          v28 = strlen(a3);
          v29 = strncat(a3, (v13 + 4112), 49 - v28);
          v30 = strlen(v29);
          if (v30 >= 0x32)
          {
            enumerateNode(v30, v31, v32, v33, v34, v35, v36, v37);
          }

          v27 = v30;
          enumerateNode(a1, *(v45 + 8 * v14), a3, a4, a5, a6, a7);
          if (!v27)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v16 = strlen(a3);
          v17 = strncat(a3, (v13 + 4112), 49 - v16);
          v18 = strlen(v17);
          if (v18 >= 0x32)
          {
            enumerateNode(v18, v19, v20, v21, v22, v23, v24, v25);
          }

          v48 = v18;
          v26 = *(v15 + 8 * v14);
          if ((*(storage_array_ResolvePtr(a1 + 4256, v26, 1) + 520) & 1) == 0)
          {
            for (i = 0; ; ++i)
            {
              v39 = *(storage_array_ResolvePtr(a1 + 4256, v26, 1) + 8 * i + 8);
              if (v39 != -1)
              {
                v40 = storage_array_ResolvePtr(a1 + 8488, v39, 1);
                if ((*(v40 + 337) & 1) == 0)
                {
                  v41 = v40;
                  v42 = *a5 + 1;
                  *a5 = v42;
                  if (a6)
                  {
                    printf("key: %s%s, payload: %d, score: %f\n", a3, (v40 + 12), *(v40 + 64), *v40);
                    v42 = *a5;
                  }

                  v43 = v42 >= a4;
                  v51 = v43;
                  if (a7)
                  {
                    __s = 0;
                    asprintf(&__s, "%s%s", a3, (v41 + 12));
                    v44 = strlen(__s);
                    (*(a7 + 16))(a7, __s, v44, *(v41 + 64), &v51, *v41);
                    free(__s);
                    v43 = v51;
                  }

                  if (v43)
                  {
                    break;
                  }
                }
              }

              if (i > 0x3E)
              {
                break;
              }
            }
          }

          v15 = v46;
          v13 = v47;
          v27 = v48;
          if (!v48)
          {
            goto LABEL_15;
          }
        }

        a3[v27] = 0;
LABEL_15:
        ++v14;
      }

      while (v14 != 256);
    }
  }
}

uint64_t cacheFileExists(uint64_t a1, char *a2)
{
  v3 = a1;
  v8 = *MEMORY[0x1E69E9840];
  bzero(__filename, 0x400uLL);
  result = faccurate_realpath(v3, __filename);
  if (result)
  {
    v5 = result;
    v6 = strlen(result);
    snprintf((v5 + v6), 1024 - v6, "/%s", a2);
    result = fopen(__filename, "r");
    if (result)
    {
      fclose(result);
      return 1;
    }
  }

  return result;
}

ssize_t ___ZL10createTrieiPciibb_block_invoke(ssize_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    v4 = *v1;
    v2 = v1 + 3;
    v3 = v4;

    return storage_array_RestoreHeader(v2, v3);
  }

  return result;
}

ssize_t storage_array_RestoreHeader(void *a1, _DWORD *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  bzero(v6, 0x400uLL);
  v5 = v6;
  result = fd_pread(a2, v6, 0x400uLL, 0);
  if (result == 1024)
  {
    return storage_array_HeaderRestore(a1, &v5, 1);
  }

  return result;
}

ssize_t ___ZL10createTrieiPciibb_block_invoke_2(ssize_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    v2 = *(v1 + 8);

    return storage_array_RestoreHeader((v1 + 4256), v2);
  }

  return result;
}

ssize_t ___ZL10createTrieiPciibb_block_invoke_3(ssize_t result)
{
  if (*(result + 40) == 1)
  {
    v1 = *(result + 32);
    v2 = *(v1 + 16);

    return storage_array_RestoreHeader((v1 + 8488), v2);
  }

  return result;
}

BOOL MDTriePayload::removePayload(MDTriePayload *this, int a2)
{
  v2 = *(this + 16);
  if (*(this + 336))
  {
    v3 = (v2 & a2) != 0;
  }

  else
  {
    v3 = v2 == a2;
  }

  if (v3)
  {
    if (!*(this + 336))
    {
      *(this + 41) = 0;
LABEL_14:
      *(this + 16) = 0;
      *(this + 337) = 1;
      return v3;
    }

    v4 = 0;
    v5 = this + 72;
    do
    {
      if (((1 << v4) & a2) != 0)
      {
        --*&v5[8 * v4];
        --*(this + 41);
        if (!*&v5[8 * v4])
        {
          v2 &= ~(1 << v4);
          *(this + 16) = v2;
        }
      }

      ++v4;
    }

    while (v4 != 32);
    if (!*(this + 41))
    {
      goto LABEL_14;
    }
  }

  return v3;
}

BOOL MDTrieNode::removePayload(MDTrieNode *this, int a2)
{
  v2 = *(this + 1029);
  if (*(this + 4384))
  {
    v3 = (v2 & a2) != 0;
  }

  else
  {
    v3 = v2 == a2;
  }

  if (v3)
  {
    if (!*(this + 4384))
    {
      *this = 0;
LABEL_14:
      *(this + 1029) = 0;
      *(this + 4385) = 1;
      return v3;
    }

    for (i = 515; i != 547; ++i)
    {
      v5 = 1 << (i - 3);
      if ((v5 & a2) != 0)
      {
        v6 = *(this + i);
        --*this;
        *(this + i) = --v6;
        if (!v6)
        {
          v2 &= ~v5;
          *(this + 1029) = v2;
        }
      }
    }

    if (!*this)
    {
      goto LABEL_14;
    }
  }

  return v3;
}

uint64_t addPayloadToContainer(uint64_t a1, unint64_t a2, char *a3, unsigned int a4, unsigned int a5, double a6)
{
  v10 = 0;
  if (a3)
  {
    v11 = a4 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = a4;
  do
  {
    v14 = storage_array_ResolvePtr(a1 + 4256, a2, 1);
    v15 = v14[v10 + 1];
    if (storage_array_ValidPtr(a1 + 8488, v15, 1))
    {
      v16 = storage_array_ResolvePtr(a1 + 8488, v15, 1);
      if (v12)
      {
        if (*(v16 + 8) == a4)
        {
          v17 = (v16 + 12);
          v18 = a3;
          v19 = v13;
          while (1)
          {
            v21 = *v18++;
            v20 = v21;
            v22 = *v17++;
            if (v20 != v22)
            {
              break;
            }

            if (!--v19)
            {
              ++*v14;

              return MDTriePayload::updatePayload(v16, a5, a6);
            }
          }
        }
      }
    }

    ++v10;
  }

  while (v10 != 64);
  v23 = 8;
  while (1)
  {
    v24 = storage_array_ResolvePtr(a1 + 4256, a2, 1);
    result = storage_array_ValidPtr(a1 + 8488, *(v24 + v23), 1);
    if ((result & 1) == 0)
    {
      break;
    }

    v23 += 8;
    if (v23 == 520)
    {
      return result;
    }
  }

  v26 = storage_array_AllocOffsetFromEnd((a1 + 8488));
  v27 = storage_array_ResolvePtr(a1 + 8488, v26, 1);
  MDTriePayload::initMDTriePayload(v27, a3, a4, a5, a6, *(a1 + 12753));
  result = storage_array_ResolvePtr(a1 + 4256, a2, 1);
  *(result + v23) = v26;
  ++*result;
  return result;
}

unint64_t burstLevel(uint64_t a1, unint64_t a2)
{
  v4 = storage_array_AllocOffsetFromEnd((a1 + 24));
  v5 = storage_array_ResolvePtr(a1 + 24, v4, 1);
  v6 = *(a1 + 12753);
  *v5 = 0;
  *(v5 + 8) = 0;
  memset((v5 + 16), 255, 0x1000uLL);
  *(v5 + 4116) = 0;
  *(v5 + 4376) = 0;
  *(v5 + 4384) = v6;
  *(v5 + 4385) = 0;
  *(v5 + 4120) = 0u;
  *(v5 + 4136) = 0u;
  *(v5 + 4152) = 0u;
  *(v5 + 4168) = 0u;
  *(v5 + 4184) = 0u;
  *(v5 + 4200) = 0u;
  *(v5 + 4216) = 0u;
  *(v5 + 4232) = 0u;
  *(v5 + 4248) = 0u;
  *(v5 + 4264) = 0u;
  *(v5 + 4280) = 0u;
  *(v5 + 4296) = 0u;
  *(v5 + 4312) = 0u;
  *(v5 + 4328) = 0u;
  *(v5 + 4344) = 0u;
  *(v5 + 4360) = 0u;
  for (i = 8; i != 520; i += 8)
  {
    v8 = *(storage_array_ResolvePtr(a1 + 4256, a2, 1) + i);
    if (storage_array_ValidPtr(a1 + 8488, v8, 1))
    {
      addBurstLevel(a1, v4, v8);
    }
  }

  *(storage_array_ResolvePtr(a1 + 4256, a2, 1) + 520) = 1;
  return v4;
}

uint64_t MDTriePayload::updatePayload(uint64_t this, int a2, double a3)
{
  if (*(this + 336) == 1)
  {
    for (i = 0; i != 32; ++i)
    {
      if (((1 << i) & a2) != 0)
      {
        ++*(this + 72 + 8 * i);
        ++*(this + 328);
        *(this + 64) |= 1 << i;
      }
    }
  }

  else
  {
    *(this + 64) = a2;
    *(this + 328) = 1;
  }

  *this = a3;
  *(this + 337) = 0;
  return this;
}

_BYTE *MDTriePayload::initMDTriePayload(MDTriePayload *this, char *a2, unsigned int a3, unsigned int a4, double a5, int a6)
{
  *(this + 2) = a3;
  *this = a5;
  *(this + 16) = a4;
  *(this + 336) = a6;
  if (a6)
  {
    v6 = 0;
    v7 = vdup_n_s32(a4);
    v8 = 0x100000000;
    v9 = vdupq_n_s64(1uLL);
    do
    {
      v10 = vtst_s32(vshl_u32(0x100000001, v8), v7);
      v11.i64[0] = v10.u32[0];
      v11.i64[1] = v10.u32[1];
      *(this + v6 + 72) = vandq_s8(v11, v9);
      v8 = vadd_s32(v8, 0x200000002);
      v6 += 16;
    }

    while (v6 != 256);
  }

  *(this + 12) = 0u;
  result = this + 12;
  *(result + 316) = 1;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *(result + 24) = 0;
  if (a3)
  {
    v13 = a3;
    do
    {
      v14 = *a2++;
      *result++ = v14;
      --v13;
    }

    while (v13);
  }

  return result;
}

unint64_t addBurstLevel(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  result = storage_array_ResolvePtr(a1 + 8488, a3, 1);
  if (result)
  {
    v6 = result;
    v7 = *result;
    v8 = *(result + 64);
    v9 = *(result + 8);
    MEMORY[0x1EEE9AC00](result);
    v10 = v21 - ((v9 + 15) & 0x1FFFFFFF0);
    bzero(v10, v9);
    if (!v9)
    {
      goto LABEL_6;
    }

    for (i = 0; i != v9; ++i)
    {
      v10[i] = *(v6 + 12 + i);
    }

    if (v9 != 1)
    {
      v13 = storage_array_ResolvePtr(a1 + 24, a2, 1);
      *(v13 + 4112) = *v10;
      v15 = v10[1];
      v14 = (v10 + 1);
      v16 = *(v13 + 8 * v15 + 2064);
      if (storage_array_ValidPtr(a1 + 4256, v16, 1))
      {
        addPayloadToContainer(a1, v16, v14, v9 - 1, v8, v7);
        result = storage_array_ResolvePtr(a1 + 4256, v16, 1);
        if (*result >= 64)
        {
          *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * *v14 + 2064) = -1;
          v17 = burstLevel(a1, v16);
          result = storage_array_ResolvePtr(a1 + 24, a2, 1);
          *(result + 8 * *v14 + 16) = v17;
          ++*(result + 8);
        }
      }

      else
      {
        v18 = storage_array_AllocOffsetFromEnd((a1 + 4256));
        v19 = storage_array_ResolvePtr(a1 + 4256, v18, 1);
        *v19 = 0;
        *&v20 = -1;
        *(&v20 + 1) = -1;
        *(v19 + 24) = v20;
        *(v19 + 40) = v20;
        *(v19 + 56) = v20;
        *(v19 + 72) = v20;
        *(v19 + 88) = v20;
        *(v19 + 104) = v20;
        *(v19 + 120) = v20;
        *(v19 + 136) = v20;
        *(v19 + 152) = v20;
        *(v19 + 168) = v20;
        *(v19 + 184) = v20;
        *(v19 + 200) = v20;
        *(v19 + 216) = v20;
        *(v19 + 232) = v20;
        *(v19 + 248) = v20;
        *(v19 + 520) = 0;
        *(v19 + 8) = v20;
        v19 += 8;
        *(v19 + 256) = v20;
        *(v19 + 272) = v20;
        *(v19 + 288) = v20;
        *(v19 + 304) = v20;
        *(v19 + 320) = v20;
        *(v19 + 336) = v20;
        *(v19 + 352) = v20;
        *(v19 + 368) = v20;
        *(v19 + 384) = v20;
        *(v19 + 400) = v20;
        *(v19 + 416) = v20;
        *(v19 + 432) = v20;
        *(v19 + 448) = v20;
        *(v19 + 464) = v20;
        *(v19 + 480) = v20;
        *(v19 + 496) = v20;
        *(storage_array_ResolvePtr(a1 + 24, a2, 1) + 8 * *v14 + 2064) = v18;
        return addPayloadToContainer(a1, v18, v14, v9 - 1, v8, v7);
      }
    }

    else
    {
LABEL_6:
      v12 = storage_array_ResolvePtr(a1 + 24, a2, 1);
      return MDTrieNode::updatePayload(v12, v8, v7);
    }
  }

  return result;
}

uint64_t MDTrieNode::updatePayload(uint64_t this, int a2, double a3)
{
  if (*(this + 4384) == 1)
  {
    for (i = 515; i != 547; ++i)
    {
      v4 = 1 << (i - 3);
      if ((v4 & a2) != 0)
      {
        ++*(this + 8 * i);
        ++*this;
        *(this + 4116) |= v4;
      }
    }
  }

  else
  {
    *(this + 4116) = a2;
    *this = 1;
  }

  *(this + 4376) = a3;
  return this;
}

uint64_t MDDictionaryUIntUIntGetTypeID()
{
  result = __kMDDictionaryUIntUIntTypeID;
  if (!__kMDDictionaryUIntUIntTypeID)
  {
    result = _CFRuntimeRegisterClass();
    __kMDDictionaryUIntUIntTypeID = result;
  }

  return result;
}

uint64_t MDDictionaryUIntUIntCreate(uint64_t a1)
{
  if (!__kMDDictionaryUIntUIntTypeID)
  {
    __kMDDictionaryUIntUIntTypeID = _CFRuntimeRegisterClass();
  }

  return _CFRuntimeCreateInstance();
}

uint64_t MDDictionaryUIntUIntCreateCopy(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x1E69E9840];
  if (!__kMDDictionaryUIntUIntTypeID)
  {
    __kMDDictionaryUIntUIntTypeID = _CFRuntimeRegisterClass();
  }

  Instance = _CFRuntimeCreateInstance();
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(Instance + 16);
  std::unordered_map<unsigned long long,unsigned long long>::unordered_map(v5, a2 + 16);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__move_assign(Instance + 16, v5);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(v5);
  return Instance;
}

BOOL MDDictionaryUIntUIntContainsKey(uint64_t a1, unint64_t a2)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = a2;
  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v3) != 0;
}

void *MDDictionaryUIntUIntAddValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E69E9840];
  *&v4 = a2;
  *(&v4 + 1) = a3;
  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long> const&>((a1 + 16), &v4, &v4);
}

void *MDDictionaryUIntUIntSetValue(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6[0] = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,unsigned long long &>((a1 + 16), v6, v6, &v5);
  if ((v4 & 1) == 0)
  {
    result[3] = v5;
  }

  return result;
}

void *MDDictionaryUIntUIntReplaceValue(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7[0] = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v7);
  if (result)
  {
    result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,unsigned long long &>((a1 + 16), v7, v7, &v6);
    if ((v5 & 1) == 0)
    {
      result[3] = v6;
    }
  }

  return result;
}

void *MDDictionaryUIntUIntGetValue(uint64_t a1, unint64_t a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v5);
  if (result)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v5);
    if (!v4)
    {
      abort();
    }

    return v4[3];
  }

  return result;
}

uint64_t MDDictionaryUIntUIntIncrementValue(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10[0] = a2;
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>((a1 + 16), v10);
  if (v5)
  {
    v6 = v5[3] + a3;
LABEL_5:
    v5[3] = v6;
    return 0;
  }

  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,unsigned long long &>((a1 + 16), v10, v10, &v9);
  if ((v7 & 1) == 0)
  {
    v6 = v9;
    goto LABEL_5;
  }

  return 0;
}

void *MDDictionaryUIntUIntRemoveAllValues(uint64_t a1)
{
  v1 = (a1 + 16);

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(v1);
}

uint64_t MDDictionaryUIntUIntIterateValues(uint64_t result, uint64_t a2)
{
  for (i = *(result + 32); i; i = *i)
  {
    result = (*(a2 + 16))(a2, i[2], i[3]);
  }

  return result;
}

double __MDDictionaryUIntUIntInit(_OWORD *a1)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *(a1 + 12) = 1065353216;
  return result;
}

uint64_t __MDDictionaryUIntUIntFinalize(char *a1)
{
  v1 = a1 + 16;

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(v1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::unordered_map<unsigned long long,unsigned long long>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long> const&>(a1, i + 2, i + 1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long long> const&>(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v3 == v8)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&,unsigned long long &>(void *a1, unint64_t *a2, void *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

CFDataRef MDJournalReaderMDPlistObjectCopy(const __CFAllocator *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *a2;
  v10 = *(a2 + 2);
  return _MDPlistContainerCopyCSObject(a1, &v9, 0x4000uLL, a4, a5, a6, a7, a8);
}

uint64_t __MDJournalReaderProcessRecordBatchWithBytes_block_invoke(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3 == 2 || a3 == 3)
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    v8 = *a5;
    v9 = *(a5 + 2);
    v6(v5, a2, a4, &v8);
  }

  return 1;
}

uint64_t MDJournalReaderProcessWithBytes(int *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v16 = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __MDJournalReaderProcessWithBytes_block_invoke;
  v13[3] = &unk_1E7B25AF0;
  v13[4] = a5;
  v13[5] = v14;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __MDJournalReaderProcessWithBytes_block_invoke_3;
  v12[3] = &unk_1E7B25B18;
  v12[5] = a3;
  v12[6] = v14;
  v12[4] = a4;
  if (a2 < 0xD)
  {
    goto LABEL_15;
  }

  v8 = 0;
  v9 = *a1;
  if (*a1 > -262275348)
  {
    if (v9 > -261161236)
    {
      if (v9 == -260112659)
      {
        goto LABEL_14;
      }

      v10 = -261161235;
    }

    else
    {
      if (v9 == -262275347)
      {
        goto LABEL_14;
      }

      v10 = -262209811;
    }
  }

  else
  {
    if (v9 <= -263323924)
    {
      if (v9 != -264372499)
      {
        v10 = -264306963;
        goto LABEL_13;
      }

LABEL_14:
      v8 = parse_mobile_journal(a1, a2, v13, v12, 0, a6, a7, a8);
      goto LABEL_15;
    }

    if (v9 == -263323923)
    {
      goto LABEL_14;
    }

    v10 = -263258387;
  }

LABEL_13:
  if (v9 == v10)
  {
    goto LABEL_14;
  }

LABEL_15:
  _Block_object_dispose(v14, 8);
  return v8;
}

uint64_t __MDJournalReaderProcessWithBytes_block_invoke(uint64_t a1, int a2, int a3, char *cStr, uint64_t a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  if (a3 == 2)
  {
    *&v29 = 0;
    *(&v29 + 1) = &v29;
    v30 = 0x2000000000;
    Mutable = CFArrayCreateMutable(v8, 0, MEMORY[0x1E695E9C0]);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = __MDJournalReaderProcessWithBytes_block_invoke_2;
    v28[3] = &unk_1E7B25AC8;
    v28[4] = &v29;
    v26 = *a5;
    v27 = *(a5 + 16);
    _MDPlistArrayIterate(&v26, v28, v19, v20, v21, v22, v23, v24);
    if (CFArrayGetCount(*(*(&v29 + 1) + 24)))
    {
      (*(*(a1 + 32) + 16))();
      v18 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
    }

    else
    {
      v18 = 1;
    }

    CFRelease(*(*(&v29 + 1) + 24));
    _Block_object_dispose(&v29, 8);
  }

  else if (a3 == 3 && (v29 = *a5, v30 = *(a5 + 16), (v15 = _MDPlistContainerCopyCSObject(v8, &v29, 0x4000uLL, v9, v10, v11, v12, v13)) != 0))
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFArrayGetTypeID() && CFArrayGetCount(v16))
    {
      (*(*(a1 + 32) + 16))();
      v18 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
    }

    else
    {
      v18 = 1;
    }

    CFRelease(v16);
  }

  else
  {
    v18 = 1;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v18 & 1;
}

void __MDJournalReaderProcessWithBytes_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0uLL;
  v21 = 0;
  v22 = *a2;
  v23 = *(a2 + 16);
  if (_MDPlistDictionaryGetPlistObjectForKey(&v22, "_kMDItemExternalID", 18, &v20, a5, a6, a7, a8))
  {
    v19 = 0;
    v18 = 0;
    v22 = v20;
    v23 = v21;
    if (_MDPlistStringGetValue(&v22, &v19, &v18))
    {
      v14 = *MEMORY[0x1E695E480];
      v22 = v20;
      v23 = v21;
      v15 = _MDPlistContainerCopyCSObject(v14, &v22, 0x4000uLL, v9, v10, v11, v12, v13);
      if (v15)
      {
        v16 = v15;
        v17 = CFGetTypeID(v15);
        if (v17 == CFStringGetTypeID())
        {
          CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v16);
        }

        CFRelease(v16);
      }
    }
  }
}

uint64_t __MDJournalReaderProcessWithBytes_block_invoke_3(uint64_t a1, int a2, char *cStr, uint64_t a4, __int128 *a5, uint64_t a6, __int128 *a7, int a8)
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E695E480];
  v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
  v34 = *a7;
  v35 = *(a7 + 2);
  PlistObjectType = _MDPlistGetPlistObjectType(&v34);
  v34 = *a5;
  v35 = *(a5 + 2);
  v20 = _MDPlistContainerCopyCSObject(v12, &v34, 0, v15, v16, v17, v18, v19);
  if (!v20)
  {
    v32 = 1;
    if (!v13)
    {
      return v32 & 1;
    }

    goto LABEL_11;
  }

  v26 = v20;
  if (PlistObjectType && (v34 = *a7, v35 = *(a7 + 2), (v27 = _MDPlistContainerCopyCSObject(v12, &v34, 0, v21, v22, v23, v24, v25)) != 0))
  {
    v28 = v27;
    MutableCopy = CFDictionaryCreateMutableCopy(v12, 0, v26);
    v30 = MutableCopy;
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, @"kMDItemTextContent", v28);
    }

    CFRelease(v26);
    CFRelease(v28);
  }

  else
  {
    v30 = v26;
  }

  v31 = 40;
  if (a8)
  {
    v31 = 32;
  }

  (*(*(a1 + v31) + 16))();
  v32 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  CFRelease(v30);
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

  return v32 & 1;
}

uint64_t _MDPlistBytesBeginPlist(uint64_t a1)
{
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 72) != -1)
    {
      *(a1 + 32) = 2410;
      v9 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _MDPlistBytesBeginPlist_cold_1();
      }

      return 0;
    }

    v2 = *(a1 + 104);
    if (v2 + 16 < *(a1 + 112))
    {
      goto LABEL_7;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, 0x10u, 0));
  v2 = *(a1 + 104);
LABEL_7:
  v3 = *MEMORY[0x1E69E9AC8];
  v4 = -*MEMORY[0x1E69E9AC8];
  if ((((v2 + 16) ^ v2) & v4) != 0 && (((v2 + 16) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v5 = 16 << *MEMORY[0x1E69E9AC0];
    if (v5 >= 4 * v3)
    {
      madvise(((v3 - 1 + v2) & v4), v5, 3);
      v2 = *(a1 + 104);
    }
  }

  *v2 = 0x6D64303331323334;
  v6 = (v2 + 8);
  *(a1 + 104) = v6;
  *(a1 + 40) = v6;
  v7 = *(a1 + 104);
  *v7 = 0;
  *(a1 + 104) = v7 + 1;
  v8 = 1;
  *(a1 + 56) = 1;
  **(a1 + 48) = 2281701377;
  *(a1 + 72) = 0;
  *(a1 + 96) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  *(a1 + 34) |= 2u;
  return v8;
}

__CFString *_MDPlistBytesCopyPlistAtIndexWithCallbacks(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *MEMORY[0x1E695E480];

  return _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(v8, a1, a2, a3, a4);
}

uint64_t _MDPlistBytesGetTypeID()
{
  if (qword_1ED6F3F50 != -1)
  {
    _MDPlistBytesGetTypeID_cold_1();
  }

  return qword_1ED6F3F58;
}

__CFString *__MDPlistBytesCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 52 * gMDPlistBytesDebugDescriptionDumpMaxLines + 52);
  v3 = Mutable;
  if (gMDPlistBytesDebugDescriptionDumpMaxLines <= 0)
  {
    v4 = "";
  }

  else
  {
    v4 = "[";
  }

  CFStringAppendFormat(Mutable, 0, @"<_MDPlistBytes: %p>%s", a1, v4);
  if (gMDPlistBytesDebugDescriptionDumpMaxLines >= 1)
  {
    v5 = *(a1 + 16) >> 3;
    v36 = v5;
    if (v5 <= gMDPlistBytesDebugDescriptionDumpMaxLines)
    {
      v6 = v5;
    }

    else
    {
      v6 = (gMDPlistBytesDebugDescriptionDumpMaxLines - 1);
    }

    v37 = v6;
    if (v6)
    {
      v7 = (*(a1 + 8) + 3);
      v8 = 0xFFFFFF;
      v9 = MEMORY[0x1E69E9830];
      v10 = v6;
      do
      {
        CFStringAppendFormat(v3, 0, @"\n    0x%016llx, // [0x%06x] - |", *(v7 - 3), v8 & 0xFFFFFF);
        v13 = *(v7 - 3);
        if ((v13 & 0x80000000) != 0)
        {
          v14 = __maskrune(*(v7 - 3), 0x40000uLL);
        }

        else
        {
          v14 = *(v9 + 4 * v13 + 60) & 0x40000;
        }

        if (v14)
        {
          v15 = v13;
        }

        else
        {
          v15 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v15);
        v16 = *(v7 - 2);
        if ((v16 & 0x80000000) != 0)
        {
          v17 = __maskrune(*(v7 - 2), 0x40000uLL);
        }

        else
        {
          v17 = *(v9 + 4 * v16 + 60) & 0x40000;
        }

        if (v17)
        {
          v18 = v16;
        }

        else
        {
          v18 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v18);
        v19 = *(v7 - 1);
        if ((v19 & 0x80000000) != 0)
        {
          v20 = __maskrune(*(v7 - 1), 0x40000uLL);
        }

        else
        {
          v20 = *(v9 + 4 * v19 + 60) & 0x40000;
        }

        if (v20)
        {
          v21 = v19;
        }

        else
        {
          v21 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v21);
        v22 = *v7;
        if ((v22 & 0x80000000) != 0)
        {
          v23 = __maskrune(*v7, 0x40000uLL);
        }

        else
        {
          v23 = *(v9 + 4 * v22 + 60) & 0x40000;
        }

        if (v23)
        {
          v24 = v22;
        }

        else
        {
          v24 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v24);
        v25 = v7[1];
        if ((v25 & 0x80000000) != 0)
        {
          v26 = __maskrune(v7[1], 0x40000uLL);
        }

        else
        {
          v26 = *(v9 + 4 * v25 + 60) & 0x40000;
        }

        if (v26)
        {
          v27 = v25;
        }

        else
        {
          v27 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v27);
        v28 = v7[2];
        if ((v28 & 0x80000000) != 0)
        {
          v29 = __maskrune(v7[2], 0x40000uLL);
        }

        else
        {
          v29 = *(v9 + 4 * v28 + 60) & 0x40000;
        }

        if (v29)
        {
          v30 = v28;
        }

        else
        {
          v30 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v30);
        v31 = v7[3];
        if ((v31 & 0x80000000) != 0)
        {
          v32 = __maskrune(v7[3], 0x40000uLL);
        }

        else
        {
          v32 = *(v9 + 4 * v31 + 60) & 0x40000;
        }

        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v33);
        v34 = v7[4];
        if ((v34 & 0x80000000) != 0)
        {
          v11 = __maskrune(v7[4], 0x40000uLL);
        }

        else
        {
          v11 = *(v9 + 4 * v34 + 60) & 0x40000;
        }

        if (v11)
        {
          v12 = v34;
        }

        else
        {
          v12 = 46;
        }

        CFStringAppendFormat(v3, 0, @"%c", v12);
        CFStringAppendCString(v3, "|", 0x600u);
        ++v8;
        v7 += 8;
        --v10;
      }

      while (v10);
    }

    if (v36 > v37)
    {
      CFStringAppendFormat(v3, 0, @"\n    // ... %i more lines suppressed ...", (v36 - v37));
    }

    CFStringAppendCString(v3, "\n]", 0x600u);
  }

  return v3;
}

uint64_t _MDPlistBytesGetByteVectorCount(uint64_t result)
{
  if (result)
  {
    if (*(result + 32))
    {
      return 0;
    }

    else
    {
      return *(result + 16);
    }
  }

  return result;
}

uint64_t _MDPlistBytesGetByteVector(uint64_t result)
{
  if (result)
  {
    if (*(result + 32))
    {
      return 0;
    }

    else
    {
      return *(result + 8);
    }
  }

  return result;
}

_MDPlistBytes *_MDPlistBytesCreateWithDeallocator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = [[_MDPlistBytes alloc] initWithByteVector:a2 count:a3 trusted:0 deallocator:a4];
    v5 = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    return v5;
  }

  else
  {
    if (qword_1ED6F3FF0 != -1)
    {
      _MDPlistBytesCreateWithDeallocator_cold_1();
    }

    v7 = qword_1ED6F3FE8;

    return CFRetain(v7);
  }
}

_MDPlistBytes *_MDPlistBytesCreateTrustedWithDeallocator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = [[_MDPlistBytes alloc] initWithByteVector:a2 count:a3 trusted:1 deallocator:a4];
    v5 = v4;
    if (v4)
    {
      CFRetain(v4);
    }

    return v5;
  }

  else
  {
    if (qword_1ED6F3FF0 != -1)
    {
      _MDPlistBytesCreateWithDeallocator_cold_1();
    }

    v7 = qword_1ED6F3FE8;

    return CFRetain(v7);
  }
}

BOOL _MDPlistBytesValidate(uint64_t a1)
{

  return __MDPlistBytesValidate(a1);
}

BOOL __MDPlistBytesWriteToFile(uint64_t a1, char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = nosymlink_open(a2, a3, a3, a4, a5, a6, a7, a8, a4);
  if (v9 < 0)
  {
    return 0;
  }

  if (a1 && !*(a1 + 32))
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 8);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v13 = v9;
  v14 = write(v9, v11, v10);
  v15 = close(v13);
  return v14 == v10 && v15 == 0;
}

__CFString *_MDPlistBytesCopyPlistAtIndexWithAllocator(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _MDPlistBytesCopyPlistAtIndexWithCallbacksAndAllocator(a1, a2, a3, &_kMDPlistBytesDeserializationCallbacks, 0);
}

_MDPlistBytes *_MDPlistBytesCopyPlistBytesAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __dst[1] = *MEMORY[0x1E69E9840];
  if (*(a2 + 32))
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 > 0xF)
  {
    v5 = (v4 >> 3) - 2;
    v6 = (*(a2 + 8) + 8);
    *(a2 + 40) = v6;
    v7 = a3 + 1;
    while (--v7 >= 1)
    {
      v8 = *v6 + 1;
      v9 = *v6 < 0x7FFFFFFF;
      v10 = __OFSUB__(v5, v8);
      v5 -= v8;
      if ((v5 < 0) ^ v10 | (v5 == 0))
      {
        v11 = 0;
      }

      else
      {
        v11 = 1;
      }

      v6 += v8;
      v12 = v9 & v11;
      if (v12)
      {
        v13 = v6;
      }

      else
      {
        v13 = 0;
      }

      *(a2 + 40) = v13;
      if ((v12 & 1) == 0)
      {
        v6 = 0;
        break;
      }
    }

    if (!v6)
    {
      return 0;
    }

    v16 = *v6;
    v15 = v6 - 1;
    v14 = v16;
    if (((v16 >> 25) & 0xF) > 6)
    {
      return 0;
    }

    v17 = 8 * v14 + 8;
    if (v17 >= 0x800 && (*(a2 + 34) & 8) == 0)
    {
      __dst[0] = 0;
      v23 = _fast_vm_allocate(__dst, v17, -251658239);
      result = 0;
      if (!v23)
      {
        if (v17 >= 4 * *MEMORY[0x1E69E9AC8])
        {
          madvise(__dst[0], v17, 3);
        }

        memcpy(__dst[0], v15, v17);
        if (__dst[0])
        {
          v24 = [[_MDPlistBytes alloc] initWithByteVector:__dst[0] count:v17 trusted:0 deallocator:&__block_literal_global_108];
          v25 = v24;
          if (v24)
          {
            CFRetain(v24);
          }

          return v25;
        }

        else
        {
          if (qword_1ED6F3FE0 != -1)
          {
            [_MDPlistBytes initWithByteVector:count:trusted:deallocator:];
          }

          return CFRetain(qword_1ED6F3FD8);
        }
      }
    }

    else
    {
      v19 = malloc_type_valloc(v17, 0x821FD845uLL);
      v20 = v19;
      if (v17 >= 4 * *MEMORY[0x1E69E9AC8])
      {
        madvise(v19, v17, 3);
      }

      memcpy(v20, v15, v17);
      if (v20)
      {
        v21 = [[_MDPlistBytes alloc] initWithByteVector:v20 count:v17 trusted:0 deallocator:&__block_literal_global_108];
        v22 = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        result = v22;
      }

      else
      {
        if (qword_1ED6F3FE0 != -1)
        {
          +[_MDPlistBytes enumerateObjectsFromPlistBytes:count:shouldDeallocate:usingBlock:];
        }

        result = CFRetain(qword_1ED6F3FD8);
      }

      *(result + 34) |= 8u;
    }
  }

  else
  {
    result = 0;
    *(a2 + 40) = 0;
  }

  return result;
}

_WORD *_MDChildPlistBytesContextCreate(_WORD *result)
{
  if (result)
  {
    if (result[16])
    {
      return 0;
    }

    v1 = *(result + 4);
    if (v1 < 0x10)
    {
      return 0;
    }

    else
    {
      v2 = (v1 >> 3) - 2;
      v3 = result;
      v4 = (*(result + 1) + 8);
      v5 = -1;
      do
      {
        v6 = v5;
        v7 = *v4 + 1;
        v8 = *v4 > 0x7FFFFFFEu || v2 <= v7;
        v2 -= v7;
        v4 += 2 * v7;
        ++v5;
      }

      while (!v8);
      v9 = v6 + 2;
      result = malloc_type_malloc(8 * (v6 + 2) + 8, 0x100004000313F17uLL);
      *result = v9;
      v10 = *(v3 + 4);
      v11 = (*(v3 + 1) + 8);
      *(result + 1) = v11;
      if (v5)
      {
        v12 = 0;
        v13 = (v10 >> 3) - 2;
        do
        {
          v14 = *v11 + 1;
          if (*v11 > 0x7FFFFFFEu || v13 <= v14)
          {
            _MDChildPlistBytesContextCreate_cold_1();
          }

          v13 -= v14;
          v11 += 2 * v14;
          *&result[4 * v12++ + 8] = v11;
        }

        while (v5 != v12);
      }
    }
  }

  return result;
}

void *_MDPlistBytesSetShouldDeallocate(uint64_t a1, int a2)
{
  if (a2)
  {
    result = &__block_literal_global_108;
  }

  else
  {
    result = 0;
  }

  *(a1 + 24) = result;
  return result;
}

BOOL _MDPlistBytesEndArray(uint64_t a1)
{
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 72) == -1)
  {
    *(a1 + 32) = 2494;
    v3 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_9:
      _MDPlistBytesEndArray_cold_1();
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      *(a1 + 80) = v2 - 1;
      return 1;
    }

    *(a1 + 32) = 2496;
    v4 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

BOOL _MDPlistBytesBeginDictionary(uint64_t a1)
{

  return _MDPlistBytesBeginContainer(a1, 13);
}

BOOL _MDPlistBytesEndDictionary(uint64_t a1)
{
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 72) == -1)
  {
    *(a1 + 32) = 2494;
    v3 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_9:
      _MDPlistBytesEndArray_cold_1();
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      *(a1 + 80) = v2 - 1;
      return 1;
    }

    *(a1 + 32) = 2496;
    v4 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_9;
    }
  }

  return result;
}

_MDMutablePlistBytes *_MDPlistBytesCreateMutableUsingMalloc(uint64_t a1, unsigned int a2)
{
  v2 = [[_MDMutablePlistBytes alloc] initWithCapacity:a2 useMalloc:1];
  if (!v2)
  {
    _MDPlistBytesCreateMutableUsingMalloc_cold_1();
  }

  v3 = v2;
  CFRetain(v2);

  return v3;
}

_MDMutablePlistBytes *_MDPlistBytesCreateMutableUsingMallocWithZone(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = [[_MDMutablePlistBytes alloc] initWithCapacity:a2 useMalloc:1 zone:a3];
  if (!v3)
  {
    _MDPlistBytesCreateMutableUsingMallocWithZone_cold_1();
  }

  v4 = v3;
  CFRetain(v3);

  return v4;
}

_MDMutablePlistBytes *_MDPlistBytesCreateMutableCopy(uint64_t a1, int a2, uint64_t a3)
{
  if (a3 && !*(a3 + 32))
  {
    v4 = *(a3 + 16);
  }

  else
  {
    v4 = 0;
  }

  v5 = [[_MDMutablePlistBytes alloc] initWithCapacity:(v4 + a2) useMalloc:0];
  if (!v5)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v6 = v5;
  CFRetain(v5);

  if (v4 && !_MDPlistBytesAppendPlistBytes(v6, a3))
  {
    CFRelease(v6);
    return 0;
  }

  return v6;
}

BOOL _MDPlistBytesAppendPlistBytes(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    while (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
    {
      if (*(a1 + 72) != -1)
      {
        goto LABEL_27;
      }

      if (*(a2 + 32))
      {
        v4 = 0;
      }

      else
      {
        v4 = *(a2 + 16);
      }

      v5 = v4;
      v6 = v4 >> 3;
      if (*(a1 + 104) + 8 * v6 < *(a1 + 112) || _MDPlistBytesGrowCapacityVM(a1, v4 & 0xFFFFFFF8, 0))
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    while (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
    {
      if (*(a1 + 72) != -1)
      {
LABEL_27:
        *(a1 + 32) = 2904;
        v15 = _MDLogForCategoryDefault();
        result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
        if (result)
        {
          _MDPlistBytesAppendPlistBytes_cold_1();
          return 0;
        }

        return result;
      }

      if (*(a1 + 104) < *(a1 + 112) || _MDPlistBytesGrowCapacityVM(a1, 0, 0))
      {
        v5 = 0;
        v6 = 0;
LABEL_17:
        v7 = *(a1 + 104);
        v8 = v7 + 8 * v6;
        v9 = MEMORY[0x1E69E9AC8];
        v10 = *MEMORY[0x1E69E9AC8];
        v11 = -*MEMORY[0x1E69E9AC8];
        if (((v8 ^ v7) & v11) != 0 && ((v8 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
        {
          v12 = 16 << *MEMORY[0x1E69E9AC0];
          if (v12 >= 4 * v10)
          {
            madvise(((v10 - 1 + v7) & v11), v12, 3);
            v10 = *v9;
          }
        }

        if (v5 >= 4 * v10)
        {
          madvise(*(a1 + 104), v5, 3);
        }

        if (a2 && !*(a2 + 32))
        {
          v13 = *(a2 + 8);
        }

        else
        {
          v13 = 0;
        }

        memcpy(*(a1 + 104), v13, v5);
        v16 = *(a1 + 104) + 8 * v6;
        *(a1 + 104) = v16;
        *(a1 + 16) = v16 - *(a1 + 8);
        return 1;
      }
    }
  }

  return 0;
}

BOOL __MDPlistBytesReadFromFile(uint64_t a1, char *a2, off_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    while (1)
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        return 0;
      }

      if (*(a1 + 72) != -1)
      {
        break;
      }

      v12 = nosymlink_open(a2, 0, a3, a4, a5, a6, a7, a8, 0);
      if (v12 < 0)
      {
        return 0;
      }

      v13 = v12;
      if (a3)
      {
        v14 = *a3;
      }

      else
      {
        v14 = 0;
      }

      memset(&v26, 0, sizeof(v26));
      if (md_fstat_real(v12, &v26) == -1)
      {
LABEL_18:
        v18 = 0;
        goto LABEL_31;
      }

      v15 = LODWORD(v26.st_size) - v14;
      if ((LODWORD(v26.st_size) - v14 - 16) > 0x6FFFFFF0 || (v15 & 7) != 0)
      {
        goto LABEL_30;
      }

      if (v14 >= 1 && lseek(v13, v14, 0) != v14)
      {
        goto LABEL_18;
      }

      v16 = *(a1 + 104);
      v17 = v15 >> 3;
      if (v16 + 8 * v17 < *(a1 + 112))
      {
        goto LABEL_22;
      }

      if (_MDPlistBytesGrowCapacityVM(a1, v15, 0))
      {
        v16 = *(a1 + 104);
LABEL_22:
        v20 = v16 + 8 * v17;
        v21 = *MEMORY[0x1E69E9AC8];
        v22 = -*MEMORY[0x1E69E9AC8];
        if (((v20 ^ v16) & v22) != 0)
        {
          v23 = *MEMORY[0x1E69E9AC0];
          if (((v20 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0 && 16 << v23 >= (4 * v21))
          {
            madvise(((v21 - 1 + v16) & v22), 16 << v23, 3);
            v16 = *(a1 + 104);
          }
        }

        if (read(v13, v16, v15) == v15)
        {
          v24 = *(a1 + 104) + 8 * v17;
          *(a1 + 104) = v24;
          *(a1 + 16) = v24 - *(a1 + 8);
          _maybeSwapPlistBytes(a1, 0);
          v18 = *(a1 + 32) == 0;
          if (a3)
          {
            if (!*(a1 + 32))
            {
              *a3 += v15;
              v18 = 1;
            }
          }
        }

        else
        {
LABEL_30:
          v18 = 0;
          *(a1 + 32) = 2364;
        }

LABEL_31:
        v25 = v18;
        close(v13);
        return v25;
      }

      if (*(a1 + 32))
      {
        return 0;
      }
    }

    *(a1 + 32) = 2331;
    v19 = _MDLogForCategoryDefault();
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    __MDPlistBytesReadFromFile_cold_1();
  }

  return 0;
}

void __MDPlistBytesError(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    *(a1 + 32) = a4;
    v7 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315650;
      v9 = a2;
      v10 = 2080;
      v11 = a3;
      v12 = 2048;
      v13 = a1;
      _os_log_error_impl(&dword_1B238B000, v7, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", &v8, 0x20u);
    }
  }
}

BOOL _MDPlistBytesAddData(uint64_t a1, const void *a2, size_t __n)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v6 = 8 * (__n != 0);
    if ((__n & 7) != 0)
    {
      v6 = __n & 7;
    }

    v7 = (__n + 7) >> 3;
    v33 = v7 + 1;
    v8 = 8 * (v7 + 1);
    v35 = (__n + 7) >> 3;
    v9 = v7;
    v34 = v6 << 32;
    v10 = (v6 << 32) | 0xB000000;
    do
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        return 0;
      }

      if (*(a1 + 80) <= 0)
      {
        *(a1 + 32) = 2535;
        v23 = _MDLogForCategoryDefault();
        result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        _MDPlistBytesAddData_cold_2();
        return 0;
      }

      v11 = *(a1 + 56);
      v12 = *(a1 + 60);
      if (v12 == v11)
      {
        *(a1 + 60) = 2 * v12;
        v13 = malloc_type_realloc(*(a1 + 48), 16 * v12, 0x100004000313F17uLL);
        *(a1 + 48) = v13;
        if (!v13)
        {
          if (*(a1 + 32))
          {
            return 0;
          }

          *(a1 + 32) = 2239;
          v22 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v38 = "_MDPlistBytesGrowUIDTable";
            v39 = 2080;
            v40 = "UID table allocation";
            v41 = 2048;
            v42 = a1;
            _os_log_error_impl(&dword_1B238B000, v22, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
          }

          continue;
        }

        v11 = *(a1 + 56);
      }

      *(a1 + 56) = v11 + 1;
      if (v11 == -1)
      {
        _MDPlistBytesAddData_cold_1();
      }

      v14 = *(a1 + 104);
      if ((v14 + 1) >= *(a1 + 112))
      {
        if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
        {
          continue;
        }

        v14 = *(a1 + 104);
      }

      v15 = *MEMORY[0x1E69E9AC8];
      v16 = -*MEMORY[0x1E69E9AC8];
      if ((((v14 + 1) ^ v14) & v16) != 0 && (((v14 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v17 = 16 << *MEMORY[0x1E69E9AC0];
        if (v17 >= 4 * v15)
        {
          madvise(((v14 + v15 - 1) & v16), v17, 3);
          v14 = *(a1 + 104);
        }
      }

      *v14 = (v11 << 32) | 0x2000001;
      v18 = v14 + 1;
      *(a1 + 104) = v18;
      v19 = *(a1 + 48);
      v19[v11] = ((v18 - *(a1 + 40)) >> 3) & 0xFFFFFF | v10;
      ++*v19;
      *(a1 + 72) = v11;
      v20 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
      v19[v20] += 0x100000000;
      v21 = *(a1 + 104);
      if (&v21[v9 + 1] < *(a1 + 112))
      {
        goto LABEL_29;
      }

      if (_MDPlistBytesGrowCapacityVM(a1, v8, 0))
      {
        v21 = *(a1 + 104);
LABEL_29:
        v24 = &v21[v9 + 1];
        v25 = *MEMORY[0x1E69E9AC8];
        v26 = -*MEMORY[0x1E69E9AC8];
        if (((v24 ^ v21) & v26) != 0)
        {
          v28 = v35;
          v27 = a2;
          v29 = v34;
          v30 = v33;
          if (((v24 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v31 = 16 << *MEMORY[0x1E69E9AC0];
            if (v31 >= 4 * v25)
            {
              madvise(((v21 + v25 - 1) & v26), v31, 3);
              v21 = *(a1 + 104);
            }
          }
        }

        else
        {
          v28 = v35;
          v27 = a2;
          v29 = v34;
          v30 = v33;
        }

        *v21 = v29 | v30 & 0xFFFFFF | 0x7000000;
        v32 = v21 + 1;
        *(a1 + 104) = v21 + 1;
        if (v28 >= 1)
        {
          v21[v28] = 0;
        }

        if (__n >= 4 * *MEMORY[0x1E69E9AC8])
        {
          madvise(v32, __n, 3);
          v32 = *(a1 + 104);
        }

        memcpy(v32, v27, __n);
        *(a1 + 104) += 8 * v28;
        return 1;
      }
    }

    while (!*(a1 + 32));
  }

  return 0;
}

uint64_t _MDPlistBytesAddRawInternedCStringKey(uint64_t a1, int a2)
{
  v3 = ((2 * a2) | 1u);
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2684;
      v11 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _MDPlistBytesAddRawInternedCStringKey_cold_1();
      return 0;
    }

    result = CFDictionaryGetValue(*(a1 + 96), v3);
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
    *(*(a1 + 48) + 8 * v6) += 0x100000000;
    v7 = *(a1 + 104);
    if ((v7 + 1) < *(a1 + 112))
    {
      goto LABEL_9;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0));
  v7 = *(a1 + 104);
LABEL_9:
  v8 = *MEMORY[0x1E69E9AC8];
  v9 = -*MEMORY[0x1E69E9AC8];
  if ((((v7 + 1) ^ v7) & v9) != 0 && (((v7 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v10 = 16 << *MEMORY[0x1E69E9AC0];
    if (v10 >= 4 * v8)
    {
      madvise(((v7 + v8 - 1) & v9), v10, 3);
      v7 = *(a1 + 104);
    }
  }

  *v7 = (v5 << 32) | 0x2000001;
  *(a1 + 104) = v7 + 1;
  return 1;
}

BOOL _MDPlistBytesAddBoolean(uint64_t a1, uint64_t a2)
{
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2720;
      v10 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _MDPlistBytesAddBoolean_cold_1();
      return 0;
    }

    v4 = *(a1 + 104);
    if ((v4 + 1) < *(a1 + 112))
    {
      goto LABEL_7;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0));
  v4 = *(a1 + 104);
LABEL_7:
  v5 = *MEMORY[0x1E69E9AC8];
  v6 = -*MEMORY[0x1E69E9AC8];
  if ((((v4 + 1) ^ v4) & v6) != 0 && (((v4 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v7 = 16 << *MEMORY[0x1E69E9AC0];
    if (v7 >= 4 * v5)
    {
      madvise(((v4 + v5 - 1) & v6), v7, 3);
      v4 = *(a1 + 104);
    }
  }

  *v4 = (a2 << 32) | 0x1000001;
  *(a1 + 104) = v4 + 1;
  v8 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
  *(*(a1 + 48) + 8 * v8) += 0x100000000;
  return 1;
}

BOOL __MDPlistBytesAddUInt64Array(uint64_t a1, uint64_t a2, const void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v5 = 8 * a2;
    v28 = ((8 * a2) >> 3) + 1;
    v30 = (8 * a2) >> 3;
    v6 = (8 * a2) >> 3;
    v29 = (8 * a2 != 0) << 35;
    do
    {
      if ((*(a1 + 34) & 1) == 0)
      {
        return 0;
      }

      if (*(a1 + 80) <= 0)
      {
        *(a1 + 32) = 2778;
        v19 = _MDLogForCategoryDefault();
        result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        __MDPlistBytesAddUInt64Array_cold_2();
        return 0;
      }

      v7 = *(a1 + 56);
      v8 = *(a1 + 60);
      if (v8 == v7)
      {
        *(a1 + 60) = 2 * v8;
        v9 = malloc_type_realloc(*(a1 + 48), 16 * v8, 0x100004000313F17uLL);
        *(a1 + 48) = v9;
        if (!v9)
        {
          if (*(a1 + 32))
          {
            return 0;
          }

          *(a1 + 32) = 2239;
          v18 = _MDLogForCategoryDefault();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v33 = "_MDPlistBytesGrowUIDTable";
            v34 = 2080;
            v35 = "UID table allocation";
            v36 = 2048;
            v37 = a1;
            _os_log_error_impl(&dword_1B238B000, v18, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
          }

          continue;
        }

        v7 = *(a1 + 56);
      }

      *(a1 + 56) = v7 + 1;
      if (v7 == -1)
      {
        __MDPlistBytesAddUInt64Array_cold_1();
      }

      v10 = *(a1 + 104);
      if ((v10 + 1) >= *(a1 + 112))
      {
        if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
        {
          continue;
        }

        v10 = *(a1 + 104);
      }

      v11 = *MEMORY[0x1E69E9AC8];
      v12 = -*MEMORY[0x1E69E9AC8];
      if ((((v10 + 1) ^ v10) & v12) != 0 && (((v10 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v13 = 16 << *MEMORY[0x1E69E9AC0];
        if (v13 >= 4 * v11)
        {
          madvise(((v10 + v11 - 1) & v12), v13, 3);
          v10 = *(a1 + 104);
        }
      }

      *v10 = (v7 << 32) | 0x2000001;
      v14 = v10 + 1;
      *(a1 + 104) = v14;
      v15 = *(a1 + 48);
      v15[v7] = ((v14 - *(a1 + 40)) >> 3) & 0xFFFFFF | v29 | 0xB000000;
      ++*v15;
      *(a1 + 72) = v7;
      v16 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
      v15[v16] += 0x100000000;
      v17 = *(a1 + 104);
      if (&v17[v6 + 1] < *(a1 + 112))
      {
        goto LABEL_27;
      }

      if (_MDPlistBytesGrowCapacityVM(a1, 8 * v28, 0))
      {
        v17 = *(a1 + 104);
LABEL_27:
        v20 = &v17[v6 + 1];
        v21 = *MEMORY[0x1E69E9AC8];
        v22 = -*MEMORY[0x1E69E9AC8];
        if (((v20 ^ v17) & v22) != 0)
        {
          v24 = v30;
          v23 = a3;
          v25 = v29;
          v26 = v28;
          if (((v20 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
          {
            v27 = 16 << *MEMORY[0x1E69E9AC0];
            if (v27 >= 4 * v21)
            {
              madvise(((v17 + v21 - 1) & v22), v27, 3);
              v17 = *(a1 + 104);
            }

            v23 = a3;
          }
        }

        else
        {
          v24 = v30;
          v23 = a3;
          v25 = v29;
          v26 = v28;
        }

        *v17 = v25 | v26 & 0xFFFFFF | 0x7000000;
        *(a1 + 104) = v17 + 1;
        if (v24 >= 1)
        {
          v17[v24] = 0;
        }

        memcpy(v17 + 1, v23, v5);
        *(a1 + 104) += 8 * v24;
        return 1;
      }
    }

    while (!*(a1 + 32));
  }

  return 0;
}

BOOL _MDPlistBytesAddUUID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _MDPlistBytesAddRLETagRoom(a1, 0xEu, 2u);
  if (result)
  {
    v7 = *(a1 + 104);
    *v7 = a2;
    v7[1] = a3;
    *(a1 + 104) += 16;
    return 1;
  }

  return result;
}

uint64_t __MDPlistBytesAddURL(uint64_t a1, const __CFURL *a2)
{
  if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
  {
    return 0;
  }

  v4 = CFURLGetBaseURL(a2);
  if (!v4 || (result = _MDPlistBytesBeginContainer(a1, 17), result) && (result = __MDPlistBytesAddURL(a1, v4), result))
  {
    v6 = CFURLCreateData(*MEMORY[0x1E695E480], a2, 0x8000100u, 0);
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v6);
    v9 = Length;
    if ((Length & 7) != 0)
    {
      v10 = Length & 7;
    }

    else
    {
      v10 = 8 * (Length != 0);
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 60);
    if (v12 == v11)
    {
      if (*(a1 + 32))
      {
        goto LABEL_44;
      }

      if ((*(a1 + 34) & 1) == 0)
      {
        goto LABEL_41;
      }

      *(a1 + 60) = 2 * v12;
      v13 = malloc_type_realloc(*(a1 + 48), 16 * v12, 0x100004000313F17uLL);
      *(a1 + 48) = v13;
      if (!v13)
      {
        if (*(a1 + 32))
        {
          goto LABEL_44;
        }

        *(a1 + 32) = 2239;
        v37 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          addStringBytes_cold_2();
          if (!*(a1 + 32))
          {
LABEL_42:
            *(a1 + 32) = 2853;
            v38 = _MDLogForCategoryDefault();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              __MDPlistBytesAddURL_cold_3();
            }
          }

LABEL_44:
          CFRelease(v6);
          return 0;
        }

        goto LABEL_41;
      }

      v11 = *(a1 + 56);
    }

    __src = BytePtr;
    *(a1 + 56) = v11 + 1;
    if (v11 == -1)
    {
      __MDPlistBytesAddURL_cold_1();
    }

    v14 = *(a1 + 104);
    if ((v14 + 1) >= *(a1 + 112))
    {
      if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
      {
        goto LABEL_41;
      }

      v14 = *(a1 + 104);
    }

    v15 = MEMORY[0x1E69E9AC8];
    v16 = *MEMORY[0x1E69E9AC8];
    v17 = -*MEMORY[0x1E69E9AC8];
    v18 = MEMORY[0x1E69E9AC0];
    if ((((v14 + 1) ^ v14) & v17) != 0 && (((v14 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
    {
      v19 = 16 << *MEMORY[0x1E69E9AC0];
      if (v19 >= 4 * v16)
      {
        v20 = MEMORY[0x1E69E9AC0];
        v21 = MEMORY[0x1E69E9AC8];
        madvise(((v14 + v16 - 1) & v17), v19, 3);
        v15 = v21;
        v18 = v20;
        v14 = *(a1 + 104);
      }
    }

    *v14 = (v11 << 32) | 0x2000001;
    v22 = v14 + 1;
    *(a1 + 104) = v22;
    v23 = v10 << 32;
    v24 = *(a1 + 48);
    v24[v11] = v23 & 0xFFFFFFFFFF000000 | ((v22 - *(a1 + 40)) >> 3) & 0xFFFFFF | 0x10000000;
    ++*v24;
    *(a1 + 72) = v11;
    v25 = *(*(a1 + 88) + 4 * *(a1 + 80) - 4);
    v24[v25] += 0x100000000;
    v26 = ((v9 + 7) >> 3) + 1;
    v27 = *(a1 + 104);
    v28 = (v9 + 7) >> 3;
    if (&v27[v28 + 1] >= *(a1 + 112))
    {
      v41 = v23;
      v29 = v15;
      v30 = v18;
      if (!_MDPlistBytesGrowCapacityVM(a1, 8 * v26, 0))
      {
        goto LABEL_41;
      }

      v27 = *(a1 + 104);
      v18 = v30;
      v15 = v29;
      v23 = v41;
    }

    v31 = (v9 + 7) >> 3;
    v32 = &v27[v28 + 1];
    v33 = *v15;
    v34 = -*v15;
    if (((v32 ^ v27) & v34) != 0 && ((v32 >> *v18) & 0xF) == 0)
    {
      v35 = 16 << *v18;
      if (v35 >= 4 * v33)
      {
        madvise(((v27 + v33 - 1) & v34), v35, 3);
        v27 = *(a1 + 104);
      }
    }

    *v27 = v23 | v26 & 0xFFFFFF | 0x7000000;
    *(a1 + 104) = v27 + 1;
    if (v31 >= 1)
    {
      v27[v31] = 0;
    }

    memcpy(v27 + 1, __src, v9);
    *(a1 + 104) += 8 * v31;
    if (*(a1 + 72))
    {
      CFRelease(v6);
      if (!v4)
      {
        return 1;
      }

      if (!*(a1 + 32) && (*(a1 + 34) & 1) != 0)
      {
        if (*(a1 + 72) == -1)
        {
          v39 = a1;
          v40 = 2494;
        }

        else
        {
          v36 = *(a1 + 80);
          if (v36)
          {
            *(a1 + 80) = v36 - 1;
            return 1;
          }

          v39 = a1;
          v40 = 2496;
        }

        __MDPlistBytesError(v39, "_MDPlistBytesEndContainer", "Sequencing", v40);
      }

      return 0;
    }

LABEL_41:
    if (!*(a1 + 32))
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  return result;
}

BOOL _MDPlistBytesAddStoreOIDArray(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  while (!*(a1 + 32))
  {
    if ((*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 72) == -1)
    {
      *(a1 + 32) = 2867;
      v22 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _MDPlistBytesAddStoreOIDArray_cold_2();
      return 0;
    }

    VectorCount = _MDStoreOIDArrayGetVectorCount(a2);
    v6 = *(a1 + 56);
    v7 = *(a1 + 60);
    if (v7 == v6)
    {
      if (*(a1 + 32))
      {
        return 0;
      }

      if ((*(a1 + 34) & 1) == 0)
      {
        continue;
      }

      *(a1 + 60) = 2 * v7;
      v8 = malloc_type_realloc(*(a1 + 48), 16 * v7, 0x100004000313F17uLL);
      *(a1 + 48) = v8;
      if (!v8)
      {
        if (*(a1 + 32))
        {
          return 0;
        }

        *(a1 + 32) = 2239;
        v21 = _MDLogForCategoryDefault();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v30 = "_MDPlistBytesGrowUIDTable";
          v31 = 2080;
          v32 = "UID table allocation";
          v33 = 2048;
          v34 = a1;
          _os_log_error_impl(&dword_1B238B000, v21, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
        }

        continue;
      }

      v6 = *(a1 + 56);
    }

    *(a1 + 56) = v6 + 1;
    if (v6 == -1)
    {
      _MDPlistBytesAddStoreOIDArray_cold_1();
    }

    v9 = *(a1 + 104);
    if ((v9 + 1) >= *(a1 + 112))
    {
      if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
      {
        continue;
      }

      v9 = *(a1 + 104);
    }

    v10 = *MEMORY[0x1E69E9AC8];
    v11 = -*MEMORY[0x1E69E9AC8];
    if ((((v9 + 1) ^ v9) & v11) != 0 && (((v9 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
    {
      v12 = 16 << *MEMORY[0x1E69E9AC0];
      if (v12 >= 4 * v10)
      {
        madvise(((v9 + v10 - 1) & v11), v12, 3);
        v9 = *(a1 + 104);
      }
    }

    *v9 = (v6 << 32) | 0x2000001;
    v13 = v9 + 1;
    *(a1 + 104) = v13;
    v14 = (VectorCount << 32) | ((v13 - *(a1 + 40)) >> 3) & 0xFFFFFF | 0x1A000000;
    v15 = *(a1 + 48);
    v15[v6] = v14;
    ++*v15;
    *(a1 + 72) = v6;
    v16 = *(a1 + 80);
    if (v16 >= 1)
    {
      v17 = *(*(a1 + 88) + 4 * v16 - 4);
      v15[v17] += 0x100000000;
    }

    v18 = VectorCount + 1;
    v19 = *(a1 + 104);
    v20 = 8 * VectorCount;
    if (&v19[v20 / 8 + 1] < *(a1 + 112))
    {
      goto LABEL_31;
    }

    if (_MDPlistBytesGrowCapacityVM(a1, 8 * v18, 0))
    {
      v19 = *(a1 + 104);
LABEL_31:
      v23 = &v19[v20 / 8 + 1];
      v24 = *MEMORY[0x1E69E9AC8];
      v25 = -*MEMORY[0x1E69E9AC8];
      if (((v23 ^ v19) & v25) != 0 && ((v23 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v26 = 16 << *MEMORY[0x1E69E9AC0];
        if (v26 >= 4 * v24)
        {
          madvise(((v19 + v24 - 1) & v25), v26, 3);
          v19 = *(a1 + 104);
          v24 = *MEMORY[0x1E69E9AC8];
        }
      }

      *v19 = v18 & 0xFFFFFF | 0x887000000;
      v27 = v19 + 1;
      *(a1 + 104) = v27;
      if (v20 >= 4 * v24)
      {
        madvise(v27, 8 * VectorCount, 3);
        v27 = *(a1 + 104);
      }

      Vector = _MDStoreOIDArrayGetVector(a2);
      memcpy(v27, Vector, 8 * VectorCount);
      *(a1 + 104) += 8 * VectorCount;
      return 1;
    }
  }

  return 0;
}

BOOL _MDPlistBytesAddPlistBytes(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  while (!*(a1 + 32))
  {
    if ((*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 80) <= 0)
    {
      *(a1 + 32) = 2885;
      v22 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      _MDPlistBytesAddPlistBytes_cold_2();
      return 0;
    }

    if (a2 && !*(a2 + 32))
    {
      v5 = *(a2 + 16);
      v6 = *(a1 + 56);
      v7 = *(a1 + 60);
      if (v7 != v6)
      {
LABEL_11:
        *(a1 + 56) = v6 + 1;
        if (v6 == -1)
        {
          goto LABEL_44;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v5 = 0;
      v6 = *(a1 + 56);
      v7 = *(a1 + 60);
      if (v7 != v6)
      {
        goto LABEL_11;
      }
    }

    *(a1 + 60) = 2 * v7;
    v8 = malloc_type_realloc(*(a1 + 48), 16 * v7, 0x100004000313F17uLL);
    *(a1 + 48) = v8;
    if (!v8)
    {
      if (*(a1 + 32))
      {
        return 0;
      }

      *(a1 + 32) = 2239;
      v21 = _MDLogForCategoryDefault();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v30 = "_MDPlistBytesGrowUIDTable";
        v31 = 2080;
        v32 = "UID table allocation";
        v33 = 2048;
        v34 = a1;
        _os_log_error_impl(&dword_1B238B000, v21, OS_LOG_TYPE_ERROR, "%s: %s error -- <_MDPlistBytes: %p> marked bad", buf, 0x20u);
      }

      continue;
    }

    v6 = *(a1 + 56);
    *(a1 + 56) = v6 + 1;
    if (v6 == -1)
    {
LABEL_44:
      _MDPlistBytesAddPlistBytes_cold_1();
    }

LABEL_16:
    v9 = *(a1 + 104);
    if ((v9 + 1) >= *(a1 + 112))
    {
      if (!_MDPlistBytesGrowCapacityVM(a1, 8u, 0))
      {
        continue;
      }

      v9 = *(a1 + 104);
    }

    v10 = *MEMORY[0x1E69E9AC8];
    v11 = -*MEMORY[0x1E69E9AC8];
    if ((((v9 + 1) ^ v9) & v11) != 0 && (((v9 + 1) >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
    {
      v12 = 16 << *MEMORY[0x1E69E9AC0];
      if (v12 >= 4 * v10)
      {
        madvise(((v9 + v10 - 1) & v11), v12, 3);
        v9 = *(a1 + 104);
      }
    }

    v13 = v5 >> 3;
    *v9 = (v6 << 32) | 0x2000001;
    v14 = v9 + 1;
    *(a1 + 104) = v14;
    v15 = (v13 << 32) | ((v14 - *(a1 + 40)) >> 3) & 0xFFFFFF | 0x1B000000;
    v16 = *(a1 + 48);
    v16[v6] = v15;
    ++*v16;
    *(a1 + 72) = v6;
    v17 = *(a1 + 80);
    if (v17 >= 1)
    {
      v18 = *(*(a1 + 88) + 4 * v17 - 4);
      v16[v18] += 0x100000000;
    }

    v19 = v13 + 1;
    v20 = *(a1 + 104);
    if (&v20[v13 + 1] < *(a1 + 112))
    {
      goto LABEL_33;
    }

    if (_MDPlistBytesGrowCapacityVM(a1, 8 * v19, 0))
    {
      v20 = *(a1 + 104);
LABEL_33:
      v23 = &v20[v13 + 1];
      v24 = *MEMORY[0x1E69E9AC8];
      v25 = -*MEMORY[0x1E69E9AC8];
      if (((v23 ^ v20) & v25) != 0 && ((v23 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
      {
        v26 = 16 << *MEMORY[0x1E69E9AC0];
        if (v26 >= 4 * v24)
        {
          madvise(((v20 + v24 - 1) & v25), v26, 3);
          v20 = *(a1 + 104);
          v24 = *MEMORY[0x1E69E9AC8];
        }
      }

      *v20 = v19 & 0xFFFFFF | 0x807000000;
      v27 = v20 + 1;
      *(a1 + 104) = v27;
      if (v5 >= (4 * v24))
      {
        madvise(v27, v5, 3);
        v27 = *(a1 + 104);
      }

      if (a2 && !*(a2 + 32))
      {
        v28 = *(a2 + 8);
      }

      else
      {
        v28 = 0;
      }

      memcpy(v27, v28, v5);
      *(a1 + 104) += 8 * v13;
      return 1;
    }
  }

  return 0;
}

void dictionaryApplier(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (CFGetTypeID(a1) == qword_1ED6F3F78)
  {
    Length = CFStringGetLength(a1);
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (CStringPtr)
    {
      v8 = CStringPtr;
      v9 = 1;
    }

    else
    {
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v11 = MaximumSizeForEncoding + 20;
      v9 = MaximumSizeForEncoding + 20 < 4096;
      if (MaximumSizeForEncoding + 20 > 4095)
      {
        v8 = malloc_type_malloc(MaximumSizeForEncoding + 20, 0x100004077774924uLL);
      }

      else
      {
        MEMORY[0x1EEE9AC00](MaximumSizeForEncoding);
        v8 = v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v8, v11);
      }

      if (!CFStringGetCString(a1, v8, v11, 0x8000100u))
      {
        strlcpy(v8, "<Bad UTF-8 string>", v11);
      }
    }

    v12 = *(a3 + 8);
    if (*(a3 + 8))
    {
      v12 = _MDPlistBytesAddCString(*a3, v8, -1);
    }

    *(a3 + 8) = v12;
    if (!v9)
    {
      free(v8);
      v12 = *(a3 + 8);
    }

    if (v12)
    {
      LOBYTE(v12) = __MDPlistBytesAddObject(*a3, a2) != 0;
    }

    *(a3 + 8) = v12;
  }
}

BOOL __MDPlistBytesAppendChunk(uint64_t a1, uint64_t a2)
{
  do
  {
    if (*(a1 + 32) || (*(a1 + 34) & 1) == 0)
    {
      return 0;
    }

    if (*(a1 + 72) != -1)
    {
      *(a1 + 32) = 3139;
      v13 = _MDLogForCategoryDefault();
      result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      __MDPlistBytesAppendChunk_cold_1();
      return 0;
    }

    v4 = *a2;
    v5 = *(a1 + 104);
    if (v5 + 8 * (*a2 >> 3) < *(a1 + 112))
    {
      goto LABEL_7;
    }
  }

  while (!_MDPlistBytesGrowCapacityVM(a1, v4 & 0xFFFFFFF8, 0));
  v5 = *(a1 + 104);
LABEL_7:
  v6 = (v4 >> 3);
  v7 = v5 + 8 * v6;
  v8 = *MEMORY[0x1E69E9AC8];
  v9 = -*MEMORY[0x1E69E9AC8];
  if (((v7 ^ v5) & v9) != 0 && ((v7 >> *MEMORY[0x1E69E9AC0]) & 0xF) == 0)
  {
    v10 = 16 << *MEMORY[0x1E69E9AC0];
    if (v10 >= 4 * v8)
    {
      madvise(((v8 - 1 + v5) & v9), v10, 3);
      v5 = *(a1 + 104);
    }
  }

  memcpy(v5, *(a2 + 8), *a2);
  v11 = *(a1 + 104) + 8 * v6;
  *(a1 + 104) = v11;
  *(a1 + 16) = v11 - *(a1 + 8);
  if (*(a2 + 16))
  {
    _maybeSwapPlistBytes(a1, 0);
  }

  return 1;
}

uint64_t __MDPlistBytesFirstChunk@<X0>(uint64_t result@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  a3[1] = *(result + 8);
  a3[2] = 0;
  if (*(result + 32))
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    v3 = a2 & 0xFFFFFFF8;
    if (v3 < *(result + 16))
    {
      v4 = 0;
    }

    else
    {
      v3 = *(result + 16);
      v4 = 1;
    }
  }

  *a3 = v3;
  *(a3 + 16) = v4;
  return result;
}

uint64_t __MDPlistBytesNextChunk(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 16))
  {
    result = 0;
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v3 = *a2;
    v4 = a2[1] + *a2;
    a2[1] = v4;
    v5 = *(a1 + 8) - v4 + *(a1 + 16);
    result = 1;
    if (v5 <= v3)
    {
      *a2 = v5;
      *(a2 + 16) = 1;
    }
  }

  return result;
}

CFArrayRef copyArray(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, unsigned __int16 a5)
{
  v21 = *MEMORY[0x1E69E9840];
  HIDWORD(v20) = *a3;
  v9 = a2 >> 32;
  v10 = (a2 >> 32) & ~(a2 >> 63);
  if (a2 >> 32 >= 33)
  {
    if (v9 >> 28)
    {
      v11 = 0;
    }

    else
    {
      v11 = malloc_type_zone_malloc(*(a1 + 144), 8 * v10, 0x1173B7C0uLL);
    }

    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v11, v12);
  if (v9 >= 1)
  {
LABEL_7:
    v13 = 0;
    do
    {
      *&v11[8 * v13++] = copyObject(a1, &v20 + 1, a4 + 1, a5);
    }

    while (v9 != v13);
  }

  if (a5)
  {
    v14 = &kCopyArrayArrayCallbacks;
  }

  else
  {
    v14 = MEMORY[0x1E695E9C0];
  }

  v15 = CFArrayCreate(*(a1 + 136), v11, v10, v14);
  if (v9 >= 1 && (a5 & 1) == 0)
  {
    v16 = v11;
    v17 = v9;
    do
    {
      v18 = *v16++;
      CFRelease(v18);
      --v17;
    }

    while (v17);
  }

  if (v9 >= 33)
  {
    free(v11);
  }

  *a3 = HIDWORD(v20);
  if (!v15)
  {
    copyArray_cold_1();
  }

  return v15;
}

CFDictionaryRef copyDictionary(uint64_t a1, unint64_t a2, _DWORD *a3, int a4, unsigned __int16 a5)
{
  v21 = *MEMORY[0x1E69E9840];
  HIDWORD(v20) = *a3;
  v9 = HIDWORD(a2);
  v10 = (SHIDWORD(a2) / 2) & ~((HIDWORD(a2) + (a2 >> 63)) >> 31);
  if (SHIDWORD(a2) < 34)
  {
    MEMORY[0x1EEE9AC00](a1);
    v11 = &v20 - ((8 * v10 + 15) & 0xFFFFFFFF0);
    bzero(v11, 8 * v10);
    MEMORY[0x1EEE9AC00](v13);
    v12 = v11;
    bzero(v11, 8 * v10);
    if (v9 <= 1)
    {
      v14 = CFDictionaryCreate(*(a1 + 136), v11, v11, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      goto LABEL_16;
    }
  }

  else if (v10 - 1 > 0xFFFFFFE)
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_zone_malloc(*(a1 + 144), 8 * v10, 0x1173B7C0uLL);
    v12 = malloc_type_zone_malloc(*(a1 + 144), 8 * v10, 0x1173B7C0uLL);
  }

  v15 = 0;
  if (v10 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  v17 = 8 * v16;
  do
  {
    *&v11[v15] = copyObject(a1, &v20 + 1, a4 + 1, a5);
    v12[v15 / 8] = copyObject(a1, &v20 + 1, a4 + 1, a5);
    v15 += 8;
  }

  while (v17 != v15);
  v14 = CFDictionaryCreate(*(a1 + 136), v11, v12, v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v18 = 0;
  do
  {
    CFRelease(*&v11[v18]);
    CFRelease(v12[v18 / 8]);
    v18 += 8;
  }

  while (v17 != v18);
  if (v9 > 33)
  {
    free(v11);
    free(v12);
  }

LABEL_16:
  *a3 = HIDWORD(v20);
  if (!v14)
  {
    copyDictionary_cold_1();
  }

  return v14;
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_6(unsigned int *a1@<X8>)
{
  *a1 = v1 | 0xC0DE0000;

  abort();
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void __MDSetKeywordsDictionary(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = ____MDSetKeywordsDictionary_block_invoke;
  v1[3] = &__block_descriptor_tmp_11;
  v1[4] = a1;
  if (__MDSetKeywordsDictionary_onceToken != -1)
  {
    dispatch_once(&__MDSetKeywordsDictionary_onceToken, v1);
  }
}

void __MDSetKeywordsToNamesDictionary(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = ____MDSetKeywordsToNamesDictionary_block_invoke;
  v1[3] = &__block_descriptor_tmp_1;
  v1[4] = a1;
  if (__MDSetKeywordsToNamesDictionary_onceToken != -1)
  {
    dispatch_once(&__MDSetKeywordsToNamesDictionary_onceToken, v1);
  }
}

void __MDSetFieldPairToMaxWordCountDictionary(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 0x40000000;
  v1[2] = ____MDSetFieldPairToMaxWordCountDictionary_block_invoke;
  v1[3] = &__block_descriptor_tmp_2_0;
  v1[4] = a1;
  if (__MDSetFieldPairToMaxWordCountDictionary_onceToken != -1)
  {
    dispatch_once(&__MDSetFieldPairToMaxWordCountDictionary_onceToken, v1);
  }
}

void TokenReleaseCallback(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24) - 1;
  *(a2 + 24) = v2;
  if (!v2)
  {

    TokenDestroy(a2);
  }
}

CFStringRef TokenCopyDescriptionCallback(unsigned int *a1)
{
  if (!a1)
  {
    return @"Token: NULL\n";
  }

  v1 = *a1;
  if (v1 > 0xA)
  {
    v2 = "UNKNOWN_TOKEN";
  }

  else
  {
    v2 = off_1E7B26078[v1];
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s %@\n", v2, *(a1 + 1));
}

BOOL TokenEqualCallback(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*a1 == *a2)
  {
    return CFStringCompare(*(a1 + 8), *(a2 + 8), 0) == kCFCompareEqualTo;
  }

  return 0;
}

void TokenDestroy(int *a1)
{
  if (*(a1 + 12))
  {
    TokenDestroy_cold_1();
  }

  v2 = *a1;
  CFRelease(*(a1 + 1));
  if (v2 == 10)
  {
    CFRelease(*(a1 + 2));
  }

  free(a1);
}

const void *TokenListGetTokenAtOffset(uint64_t a1, int a2)
{
  v4 = *(a1 + 8) + a2;
  if (CFArrayGetCount(*a1) <= v4)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 + a2 < 0)
  {
    return 0;
  }

  v6 = *a1;

  return CFArrayGetValueAtIndex(v6, (v5 + a2));
}

CFMutableStringRef mutableEscapedCopy(CFStringRef theString)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
  v3.length = CFStringGetLength(MutableCopy);
  v3.location = 0;
  CFStringFindAndReplace(MutableCopy, @"\, @"\\\, v3, 0);
  v4.length = CFStringGetLength(MutableCopy);
  v4.location = 0;
  CFStringFindAndReplace(MutableCopy, @"*", @"\\*", v4, 0);
  v5.length = CFStringGetLength(MutableCopy);
  v5.location = 0;
  CFStringFindAndReplace(MutableCopy, @"", @"\", v5, 0);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  CFStringFindAndReplace(MutableCopy, @"'", @"\\'", v6, 0);
  return MutableCopy;
}

void renderParseTreeToQuery(uint64_t a1, __CFString *a2, CFStringRef *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v59 = 0;
  memset(v58, 0, sizeof(v58));
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = v58;
  }

  if (!a1)
  {
    return;
  }

  v6 = *(a1 + 8);
  if (v6 > 3)
  {
    if ((v6 - 7) < 2 || v6 == 4)
    {
      if (!**a1)
      {
        if (v6 == 8)
        {
          v11 = 1;
        }

        else
        {
          v11 = 2 * (v6 == 7);
        }

        renderQueryPredicate(a2, *(*a1 + 8), *v3, v11, v3);
      }

      return;
    }

    if (v6 != 5)
    {
      return;
    }

    v22 = *(a1 + 16);
LABEL_45:
    renderParseTreeToQuery(v22, a2, v3);
    return;
  }

  v7 = a3;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      goto LABEL_32;
    }

    v12 = *(a1 + 16);
    if (!v12 || !*v12 || !*(a1 + 24))
    {
      return;
    }

    v13 = v58;
    if (a3)
    {
      v13 = a3;
    }

    *(v13 + 69) = 1;
    allocator = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    reprintParseTree(a1, Mutable);
    v15 = 0;
    v16 = _keywordsDictionary;
    v17 = _keywordsToNamesDictionary;
    if (_keywordsDictionary && _keywordsToNamesDictionary)
    {
      Value = CFDictionaryGetValue(_keywordsDictionary, Mutable);
      v15 = CFDictionaryGetValue(_keywordsToNamesDictionary, Mutable);
      v16 = _keywordsDictionary;
      v17 = _keywordsToNamesDictionary;
    }

    else
    {
      Value = 0;
    }

    if (!Value && v16 && v17)
    {
      v23 = CFStringFind(Mutable, @":", 0);
      if (v23.location == -1 || (v24 = *(a1 + 24)) != 0 && (findDatesInText(*(*v24 + 8), 0, 0, 0) & 1) != 0)
      {
        Value = 0;
      }

      else
      {
        v61.length = v23.location + v23.length;
        v61.location = 0;
        v39 = CFStringCreateWithSubstring(allocator, Mutable, v61);
        Value = CFDictionaryGetValue(_keywordsDictionary, v39);
        v15 = CFDictionaryGetValue(_keywordsToNamesDictionary, v39);
        CFRelease(v39);
        if (v15 && Value)
        {
          goto LABEL_57;
        }
      }

      CFLog();
    }

    if (Value)
    {
LABEL_57:
      v25 = v58;
      if (v7)
      {
        v25 = v7;
      }

      if (v25[7])
      {
        CFStringAppend(a2, @"(true)");
      }

      else
      {
        CFStringAppendFormat(a2, 0, @"(%@)", Value);
      }

      if (!v7)
      {
        v7 = v58;
      }

      if (!Mutable || !v7[3])
      {
        goto LABEL_111;
      }

      v34 = MEMORY[0x1E695E9D8];
      v35 = MEMORY[0x1E695E9E8];
      v36 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v37 = CFDictionaryCreateMutable(allocator, 0, v34, v35);
      CFDictionarySetValue(v37, @"TYPE", v15);
      CFDictionarySetValue(v37, @"QUERY", Value);
      CFDictionarySetValue(v36, Mutable, v37);
      CFArrayAppendValue(v7[3], v36);
      CFRelease(v37);
      v38 = v36;
      goto LABEL_75;
    }

    v26 = v58;
    if (v7)
    {
      v27 = v7;
    }

    else
    {
      v27 = v58;
    }

    v28 = v27[4];
    if (!v28)
    {
      if (v7)
      {
        v26 = v7;
      }

      v40 = v26[1];
      if (!v40 || (v28 = v40(), (v27[4] = v28) == 0))
      {
        v30 = 0;
        goto LABEL_84;
      }
    }

    v29 = CFDictionaryGetValue(v28, *(**(a1 + 16) + 8));
    v30 = v29;
    if (!v29)
    {
LABEL_84:
      v41 = 1;
      goto LABEL_86;
    }

    Count = CFSetGetCount(v29);
    if (!Count)
    {
      v41 = 0;
LABEL_86:
      v42 = *(a1 + 24);
      v43 = v42[2];
      if (v43 == 8)
      {
        v44 = 1;
      }

      else
      {
        v44 = 2 * (v43 == 7);
      }

      renderQueryPredicate(a2, *(*v42 + 8), *(**(a1 + 16) + 8), v44, v3);
      if (v41)
      {
        goto LABEL_111;
      }

      goto LABEL_104;
    }

    v32 = Count;
    v33 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
    CFSetGetValues(v30, v33);
    if (v32 < 2)
    {
      if (v32 != 1)
      {
LABEL_103:
        free(v33);
LABEL_104:
        if (v7)
        {
          v51 = v7;
        }

        else
        {
          v51 = v58;
        }

        if (!Mutable || !v51[3] || !*(**(a1 + 16) + 8))
        {
          goto LABEL_111;
        }

        v52 = MEMORY[0x1E695E9D8];
        v53 = MEMORY[0x1E695E9E8];
        v54 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v55 = CFDictionaryCreateMutable(allocator, 0, v52, v53);
        CFDictionarySetValue(v55, @"ATTRS", v30);
        CFDictionarySetValue(v55, @"TEXT", *(**(a1 + 24) + 8));
        CFDictionarySetValue(v54, Mutable, v55);
        CFArrayAppendValue(v51[3], v54);
        CFRelease(v55);
        v38 = v54;
LABEL_75:
        CFRelease(v38);
LABEL_111:
        CFRelease(Mutable);
        return;
      }
    }

    else
    {
      CFStringAppend(a2, @"(");
    }

    v56 = v30;
    for (i = 0; i != v32; ++i)
    {
      if (i)
      {
        CFStringAppend(a2, @" || ");
      }

      Length = CFStringGetLength(a2);
      v47 = *(a1 + 24);
      v48 = *(*v47 + 8);
      v49 = v47[2];
      if (v49 == 8)
      {
        v50 = 1;
      }

      else
      {
        v50 = 2 * (v49 == 7);
      }

      renderQueryPredicate(a2, v48, v33[i], v50, v3);
      if (CFStringGetLength(a2) == Length)
      {
        CFStringAppend(a2, @" false ");
      }
    }

    v30 = v56;
    if (v32 >= 2)
    {
      CFStringAppend(a2, @""));
    }

    goto LABEL_103;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v8 = v58;
      if (a3)
      {
        v8 = a3;
      }

      *(v8 + 69) = 1;
      if (*(a1 + 16))
      {
        CFStringAppend(a2, @"(!");
        v9 = *(a1 + 16);
LABEL_40:
        renderParseTreeToQuery(v9, a2, v3);
        CFStringAppend(a2, @""));
        return;
      }
    }

    return;
  }

LABEL_32:
  v19 = v58;
  if (a3)
  {
    v19 = a3;
  }

  *(v19 + 69) = 1;
  v20 = *(a1 + 16);
  if (v20)
  {
    if (*(a1 + 24))
    {
      CFStringAppend(a2, @"(");
      renderParseTreeToQuery(*(a1 + 16), a2, v3);
      if (*(a1 + 8))
      {
        v21 = @" || ";
      }

      else
      {
        v21 = @" && ";
      }

      CFStringAppend(a2, v21);
      v9 = *(a1 + 24);
      goto LABEL_40;
    }

    renderParseTreeToQuery(v20, a2, v3);
  }

  v22 = *(a1 + 24);
  if (v22)
  {
    goto LABEL_45;
  }
}

void renderQueryPredicate(__CFString *a1, const __CFString *a2, __CFString *theString2, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v77 = *MEMORY[0x1E69E9840];
  if (a5 && theString2 && (v10 = *(a5 + 56)) != 0)
  {
    if (CFStringCompare(v10, theString2, 0))
    {

      CFStringAppend(a1, @"(true)");
      return;
    }
  }

  else if (!theString2)
  {
    v12 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  v11 = *(a5 + 16);
  if (v11)
  {
    v12 = v11(theString2);
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

LABEL_13:
  if (_keywordsDictionary)
  {
    v14 = _keywordsToNamesDictionary == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14 || !*(a5 + 24))
  {
    goto LABEL_26;
  }

  if (CFDictionaryContainsKey(_keywordsDictionary, a2))
  {
    v15 = CFDictionaryGetValue(_keywordsDictionary, a2);
    v16 = CFDictionaryGetValue(_keywordsToNamesDictionary, a2);
    if (v15)
    {
      if (CFStringGetLength(a1))
      {
        CFStringAppendCString(a1, " || ", 0x8000100u);
      }

      if (*(a5 + 56))
      {
        CFStringAppend(a1, @"(true)");
      }

      else
      {
        CFStringAppendFormat(a1, 0, @"(%@)", v15);
      }
    }

    v48 = *MEMORY[0x1E695E480];
    v49 = MEMORY[0x1E695E9D8];
    v50 = MEMORY[0x1E695E9E8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v52 = CFDictionaryCreateMutable(v48, 0, v49, v50);
    CFDictionarySetValue(v52, @"TYPE", v16);
    CFDictionarySetValue(v52, @"QUERY", v15);
    CFDictionarySetValue(Mutable, a2, v52);
    CFArrayAppendValue(*(a5 + 24), Mutable);
    CFRelease(v52);
    CFRelease(Mutable);
    if (v12)
    {

      CFRelease(v12);
    }

    return;
  }

  v17 = CFStringFind(a2, @":", 0);
  if (v17.location == -1)
  {
LABEL_26:
    v18 = 0;
  }

  else
  {
    v79.length = v17.location + v17.length;
    v79.location = 0;
    v18 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a2, v79);
  }

  at = 0.0;
  v75 = 0.0;
  v72 = 0.0;
  v73 = 0.0;
  v71 = 0;
  if (v12)
  {
    valuePtr = 0;
    v19 = CFDictionaryGetValue(v12, @"kMDAttributeType");
    CFNumberGetValue(v19, kCFNumberLongType, &valuePtr);
    v20 = valuePtr;
    if (v20 != CFNumberGetTypeID())
    {
      v21 = valuePtr;
      if (v21 != CFBooleanGetTypeID())
      {
        goto LABEL_87;
      }
    }

    Length = CFStringGetLength(@"-");
    v23 = CFStringGetLength(a2);
    if (v23 < 1)
    {
LABEL_86:
      valuePtr = CFStringGetTypeID();
      goto LABEL_87;
    }

    v24 = v23;
    value = v6;
    CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
    rangeToCompare = Length;
    if ((CharacterAtIndex | 2) == 0x3E)
    {
      if (v24 == 1)
      {
        v65 = 0;
        v26 = 1;
      }

      else
      {
        v38 = CFStringGetCharacterAtIndex(a2, 1);
        v65 = v38 == 61;
        if (v38 == 61)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }
      }
    }

    else
    {
      v65 = 0;
      v26 = 0;
    }

    v39 = v24 - v26;
    rangep.location = v26;
    rangep.length = v24 - v26;
    NumberFormatter = getNumberFormatter();
    if (!CFNumberFormatterGetValueFromString(NumberFormatter, a2, &rangep, kCFNumberDoubleType, &v73))
    {
      goto LABEL_85;
    }

    if (!rangep.location && (CharacterAtIndex | 2) != 0x3E)
    {
      v54 = v39 - (rangeToCompare + rangep.length);
      if (v39 > rangeToCompare + rangep.length)
      {
        v55 = rangep.length;
        rangep.location = rangeToCompare + rangep.length;
        rangep.length = v54;
        v56 = getNumberFormatter();
        if (!CFNumberFormatterGetValueFromString(v56, a2, &rangep, kCFNumberDoubleType, &v72))
        {
          goto LABEL_85;
        }

        v80.location = v55;
        v80.length = rangeToCompare;
        if (CFStringCompareWithOptions(a2, @"-", v80, 0))
        {
          goto LABEL_85;
        }

        v71 = 5;
        v63 = trunc(v73) == v73;
        if (trunc(v72) != v72)
        {
          v63 = 0;
        }

        if (v13)
        {
          if (v63)
          {
            v64 = @"(InRange(*,%.lf,%.lf))";
          }

          else
          {
            v64 = @"(InRange(*,%lf,%lf))";
          }

          CFStringAppendFormat(a1, 0, v64, *&v73, *&v72);
        }

        else if (v63)
        {
          CFStringAppendFormat(a1, 0, @"(InRange(%@,%.lf,%.lf))", theString2, *&v73, *&v72);
        }

        else
        {
          CFStringAppendFormat(a1, 0, @"(InRange(%@,%lf,%lf))", theString2, *&v73, *&v72);
        }

        v6 = value;
LABEL_87:
        v57 = valuePtr;
        if (v57 != CFDateGetTypeID() || !findDatesInText(a2, &v75, &at, &v71))
        {
          goto LABEL_95;
        }

        if (v71 == 4)
        {
          v58 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
          v59 = CFTimeZoneCopySystem();
          at = v75;
          if (!CFCalendarAddComponents(v58, &at, 0, "dHM", 1, 0, 0))
          {
            renderQueryPredicate_cold_1();
          }

          CFCalendarSetTimeZone(v58, v59);
          CFRelease(v59);
          CFRelease(v58);
        }

        else if (v71 != 5)
        {
          renderQueryPredicateForDate(a1, v71, theString2, v75);
LABEL_95:
          v60 = valuePtr;
          if (v60 == CFStringGetTypeID())
          {
            if (a5)
            {
              v61 = (v6 < 2) & (*(a5 + 64) ^ 1);
              v62 = *(a5 + 65);
            }

            else
            {
              v62 = 0;
              v61 = v6 < 2;
            }

            renderQueryPredicateForText(a1, a2, theString2, v61, v6 > 0, v62, a5);
          }

          CFRelease(v12);
          goto LABEL_101;
        }

        renderQueryPredicateForDateRange(a1, theString2, v75, at);
        goto LABEL_95;
      }
    }

    if (rangep.length + rangep.location != v24)
    {
LABEL_85:
      v6 = value;
      goto LABEL_86;
    }

    if ((rangep.location - 1) > 1)
    {
      goto LABEL_65;
    }

    if (CharacterAtIndex == 60)
    {
      v42 = v73;
      v43 = trunc(v73) == v73;
      v71 = v24 != 1 && v65;
      v44 = @"<";
      if (v71)
      {
        v44 = @"<=";
      }

      goto LABEL_66;
    }

    if (CharacterAtIndex == 62)
    {
      v41 = v65;
      if (v24 == 1)
      {
        v41 = 0;
      }

      if (v41)
      {
        v71 = 3;
        v42 = v73;
        v43 = trunc(v73) == v73;
        v44 = @">=";
      }

      else
      {
        v71 = 2;
        v42 = v73;
        v43 = trunc(v73) == v73;
        v44 = @">";
      }
    }

    else
    {
LABEL_65:
      v71 = 4;
      v42 = v73;
      v43 = trunc(v73) == v73;
      v44 = @"=";
    }

LABEL_66:
    v6 = value;
    if (v13)
    {
      if (v43)
      {
        v47 = @"(* %@ %.lf)";
      }

      else
      {
        v47 = @"(* %@ %lf)";
      }

      CFStringAppendFormat(a1, 0, v47, v44, *&v42);
    }

    else
    {
      if (v43)
      {
        v53 = @"(%@ %@ %.lf)";
      }

      else
      {
        v53 = @"(%@ %@ %lf)";
      }

      CFStringAppendFormat(a1, 0, v53, theString2, v44, *&v42);
    }

    goto LABEL_87;
  }

  if (findDatesInText(a2, &v75, &at, &v71))
  {
    if (v71 == 4)
    {
      v27 = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E4A8], *MEMORY[0x1E695E678]);
      v28 = CFTimeZoneCopySystem();
      at = v75;
      if (!CFCalendarAddComponents(v27, &at, 0, "dHM", 1, 0, 0))
      {
        renderQueryPredicate_cold_2();
      }

      CFCalendarSetTimeZone(v27, v28);
      CFRelease(v28);
      CFRelease(v27);
    }

    CFStringAppendCString(a1, "(", 0x8000100u);
    if ((v71 & 0xFFFFFFFE) == 4)
    {
      renderQueryPredicateForDateRange(a1, theString2, v75, at);
    }

    else
    {
      renderQueryPredicateForDate(a1, v71, theString2, v75);
    }

    CFStringAppendCString(a1, " || ", 0x8000100u);
    if (a5)
    {
      v45 = (v6 < 2) & (*(a5 + 64) ^ 1);
      v46 = *(a5 + 65);
    }

    else
    {
      v46 = 0;
      v45 = v6 < 2;
    }

    renderQueryPredicateForText(a1, a2, theString2, v45, v6 > 0, v46, a5);
    CFStringAppendCString(a1, ")", 0x8000100u);
    goto LABEL_101;
  }

  if (v18 && CFDictionaryContainsKey(_keywordsDictionary, v18))
  {
    valuea = CFDictionaryGetValue(_keywordsToNamesDictionary, v18);
    rangeToComparea = CFDictionaryGetValue(_keywordsDictionary, v18);
    v29 = *MEMORY[0x1E695E480];
    v30 = v6;
    v31 = MEMORY[0x1E695E9D8];
    v32 = MEMORY[0x1E695E9E8];
    v33 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v34 = v31;
    v6 = v30;
    v35 = CFDictionaryCreateMutable(v29, 0, v34, v32);
    CFDictionarySetValue(v35, @"TYPE", valuea);
    CFDictionarySetValue(v35, @"QUERY", rangeToComparea);
    CFDictionarySetValue(v33, a2, v35);
    CFArrayAppendValue(*(a5 + 24), v33);
    CFRelease(v35);
    CFRelease(v33);
  }

  else if (!a5)
  {
    v37 = 0;
    v36 = v6 < 2;
    goto LABEL_81;
  }

  v36 = (v6 < 2) & (*(a5 + 64) ^ 1);
  v37 = *(a5 + 65);
LABEL_81:
  renderQueryPredicateForText(a1, a2, theString2, v36, v6 > 0, v37, a5);
LABEL_101:
  if (v18)
  {
    CFRelease(v18);
  }
}

void reprintParseTree(uint64_t *a1, __CFString *a2)
{
  if (a1)
  {
    v3 = a1;
    do
    {
      if (*(v3 + 2) == 3)
      {
        reprintParseTree(v3[2], a2);
        if (*v3)
        {
          CFStringAppend(a2, *(*v3 + 8));
        }
      }

      else
      {
        v4 = *v3;
        if (*v3 && *v4 != 10)
        {
          CFStringAppend(a2, *(v4 + 8));
        }

        reprintParseTree(v3[2], a2);
      }

      v3 = v3[3];
    }

    while (v3);
  }
}

uint64_t findDatesInText(const __CFString *a1, CFAbsoluteTime *a2, CFAbsoluteTime *a3, int *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = &v41;
  }

  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = &v40;
  }

  Length = CFStringGetLength(@"-");
  v9 = CFStringGetLength(a1);
  if (v9 < 1)
  {
    return 0;
  }

  v10 = v9;
  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
  if ((CharacterAtIndex | 2) == 0x3E)
  {
    if (v10 == 1)
    {
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v14 = CFStringGetCharacterAtIndex(a1, 1);
      v12 = v14 == 61;
      if (v14 == 61)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v15 = v10 - v13;
  v39.location = v13;
  v39.length = v10 - v13;
  AbsoluteTimeFromString = GetAbsoluteTimeFromString(a1, &v39, v6);
  location = v39.location;
  if (AbsoluteTimeFromString)
  {
    if (!v39.location && (CharacterAtIndex | 2) != 0x3E)
    {
      v37 = v39.length;
      if (v15 > v39.length + Length)
      {
        v39.location = v39.length + Length;
        v39.length = v15 - (v39.length + Length);
        if (GetAbsoluteTimeFromString(a1, &v39, v7))
        {
          v50.location = v37;
          v50.length = Length;
          if (CFStringCompareWithOptions(a1, @"-", v50, 0) == kCFCompareEqualTo)
          {
            if (!a4)
            {
              return 1;
            }

LABEL_79:
            v18 = 5;
            goto LABEL_51;
          }
        }
      }
    }

    if ((v39.location - 1) <= 1)
    {
      if (CharacterAtIndex == 60)
      {
        goto LABEL_20;
      }

      if (CharacterAtIndex == 62)
      {
        if (a4)
        {
          if (v10 != 1 && v12)
          {
            v18 = 3;
          }

          else
          {
            v18 = 2;
          }

          goto LABEL_51;
        }

        return 1;
      }
    }

    if (!a4)
    {
      return 1;
    }

LABEL_50:
    v18 = 4;
LABEL_51:
    *a4 = v18;
    return 1;
  }

  v19 = CFStringGetLength(a1) - location;
  if (v19 != 4)
  {
    if (v19 == 9 && (CharacterAtIndex | 2) != 0x3E)
    {
      *buffer = 0;
      v43 = 0;
      v44 = 0;
      Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
      v46.location = location;
      v46.length = 9;
      CFStringGetCharacters(a1, v46, buffer);
      if (v43 == 45)
      {
        v21 = 0;
        do
        {
          IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, buffer[v21]);
          if (v21 > 2)
          {
            break;
          }

          ++v21;
        }

        while (IsCharacterMember);
        if (IsCharacterMember)
        {
          v23 = 5;
          do
          {
            v24 = CFCharacterSetIsCharacterMember(Predefined, buffer[v23]);
            if (v23 > 7)
            {
              break;
            }

            ++v23;
          }

          while (v24);
          if (v24)
          {
            v25 = *MEMORY[0x1E695E480];
            v47.location = location;
            v47.length = 4;
            v26 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v47);
            v48.location = location + 5;
            v48.length = 4;
            v27 = CFStringCreateWithSubstring(v25, a1, v48);
            IntValue = CFStringGetIntValue(v26);
            v29 = CFStringGetIntValue(v27);
            CFRelease(v26);
            CFRelease(v27);
            v30 = IntValue < 1900 || v29 <= IntValue;
            if (!v30 && v29 <= 2050)
            {
              pthread_mutex_lock(&myMutex);
              v31 = myCalendar;
              if (!myCalendar)
              {
                v31 = CFCalendarCopyCurrent();
                myCalendar = v31;
              }

              CFCalendarComposeAbsoluteTime(v31, v6, "y", IntValue);
              CFCalendarComposeAbsoluteTime(myCalendar, v7, "y", v29);
              pthread_mutex_unlock(&myMutex);
              goto LABEL_66;
            }
          }
        }
      }
    }

    return 0;
  }

  v49.location = location;
  v49.length = 4;
  v33 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v49);
  v34 = CFStringGetIntValue(v33);
  if ((v34 - 1901) > 0x94)
  {
    CFRelease(v33);
    return 0;
  }

  v35 = v34;
  pthread_mutex_lock(&myMutex);
  v36 = myCalendar;
  if (!myCalendar)
  {
    v36 = CFCalendarCopyCurrent();
    myCalendar = v36;
  }

  CFCalendarComposeAbsoluteTime(v36, v6, "y", v35);
  if ((CharacterAtIndex | 2) == 0x3E)
  {
    *v7 = *v6;
  }

  else
  {
    CFCalendarComposeAbsoluteTime(myCalendar, v7, "y", (v35 + 1));
  }

  pthread_mutex_unlock(&myMutex);
  CFRelease(v33);
LABEL_66:
  if ((v39.location - 1) > 1)
  {
    if (!v39.location)
    {
      if (!a4)
      {
        return 1;
      }

      if (*v6 != *v7)
      {
        goto LABEL_79;
      }

      goto LABEL_50;
    }

    return 0;
  }

  if (CharacterAtIndex == 60)
  {
LABEL_20:
    if (a4)
    {
      v18 = v10 != 1 && v12;
      goto LABEL_51;
    }

    return 1;
  }

  result = 1;
  if (a4 && CharacterAtIndex == 62)
  {
    if (v10 != 1 && v12)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    *a4 = v38;
  }

  return result;
}

void *parseUserQuery(const void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = malloc_type_malloc(0x10uLL, 0x1060040ADAFC7CAuLL);
  *v4 = CFRetain(a1);
  v4[2] = 0;
  v8[0] = v4;
  v8[1] = a2;
  cf = 0;
  v5 = ParseSpace(v8);
  v6 = v8[0];
  CFRelease(*v8[0]);
  free(v6);
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void *ParseSpace(uint64_t *a1)
{
  if (TokenListGetTokenAtOffset(*a1, 0) && *TokenListGetTokenAtOffset(*a1, 0) == 1)
  {
    v2 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
    v2[2] = 5;
    TokenAtOffset = TokenListGetTokenAtOffset(*a1, 0);
    ++TokenAtOffset[12];
    *v2 = TokenAtOffset;
    v4 = *a1;
    *(v4 + 8) = *(*a1 + 8) + 1;
    TokenListGetTokenAtOffset(v4, 0);
    *(v2 + 2) = ParseOr(a1);
    return v2;
  }

  else
  {

    return ParseOr(a1);
  }
}

CFMutableArrayRef __MDCopyTokensFromString(const __CFString *a1)
{
  if (__MDCopyTokensFromString_once != -1)
  {
    __MDCopyTokensFromString_cold_1();
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &kTokenCallbacks);
  v4.length = CFStringGetLength(a1);
  v4.location = 0;
  QueryTokens(a1, v4, QueryTokenCallback, Mutable);
  return Mutable;
}

const __CFString *copyNonDefaultLocalizedString(uint64_t a1, const __CFString *a2, const void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v5 = CFLocaleCopyCurrent();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  CFLocaleGetValue(v5, *MEMORY[0x1E695E6F0]);
  if (CFBundleGetLocalizationInfoForLocalization())
  {
    v7 = CFBundleCopyLocalizationForLocalizationInfo();
    if (v7)
    {
      v8 = v7;
      v9 = CFBundleCopyLocalizedStringForLocalization();
      if (v9)
      {
        v10 = v9;
        if (!CFStringHasPrefix(v9, a2))
        {
          goto LABEL_13;
        }

        CFRelease(v10);
      }

      CFRelease(v8);
    }
  }

  v11 = CFBundleCopyLocalizationForLocalizationInfo();
  if (!v11)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v8 = v11;
  v12 = CFBundleCopyLocalizedStringForLocalization();
  v10 = v12;
  if (v12 && CFStringHasPrefix(v12, a2))
  {
    CFRelease(v10);
    v10 = 0;
  }

LABEL_13:
  CFRelease(v8);
LABEL_15:
  CFRelease(v6);
  if (a3 && v10 && CFEqual(v10, a3))
  {
    CFRelease(v10);
    return 0;
  }

  return v10;
}

uint64_t QueryTokenCallback(int a1, const UInt8 *a2, unsigned int a3, __CFArray *a4)
{
  v8 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
  *(v8 + 12) = 1;
  *(v8 + 1) = 0;
  *v8 = 0;
  CFArrayAppendValue(a4, v8);
  v9 = *(v8 + 12) - 1;
  *(v8 + 12) = v9;
  if (!v9)
  {
    TokenDestroy(v8);
  }

  v10 = CFStringCreateWithBytes(0, a2, a3, 0x8000100u, 0);
  *(v8 + 1) = v10;
  if (a1 > 263)
  {
    if (a1 <= 265)
    {
      if (a1 == 264)
      {
        v11 = 6;
      }

      else
      {
        v11 = 7;
      }

      goto LABEL_27;
    }

    if (a1 == 266)
    {
      v11 = 8;
      goto LABEL_27;
    }

    if (a1 != 267)
    {
      goto LABEL_29;
    }

    v12 = v10;
    if (TokenMatches(v10, @"AND", _locAndToken))
    {
      v13 = 2;
    }

    else
    {
      if (!TokenMatches(v12, @"OR", _locOrToken))
      {
        if (TokenMatches(v12, @"NOT", _locNotToken))
        {
          v11 = 5;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_27;
      }

      v13 = 3;
    }

    *v8 = v13;
    Count = CFArrayGetCount(a4);
    v15 = Count - 2;
    if (Count < 2)
    {
      return 1;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(a4, v15);
    v23 = *(v8 + 1);
    MutableCopy = CFStringCreateMutableCopy(0, 0, ValueAtIndex[1]);
    *(v8 + 1) = MutableCopy;
    CFStringAppend(MutableCopy, v23);
    CFRelease(v23);
LABEL_34:
    CFArrayRemoveValueAtIndex(a4, v15);
    return 1;
  }

  if (a1 > 260)
  {
    if (a1 == 261)
    {
      v11 = 4;
      goto LABEL_27;
    }

    if (a1 == 263)
    {
      v11 = 9;
      goto LABEL_27;
    }

LABEL_29:
    *v8 = 0;
    return 1;
  }

  if (a1 != 257)
  {
    if (a1 == 260)
    {
      v11 = 5;
LABEL_27:
      *v8 = v11;
      return 1;
    }

    goto LABEL_29;
  }

  *v8 = 1;
  v14 = CFArrayGetCount(a4);
  v15 = v14 - 2;
  if (v14 >= 2)
  {
    v16 = CFArrayGetValueAtIndex(a4, v15);
    v17 = v16;
    v18 = *v16;
    if ((*v16 - 2) < 2)
    {
LABEL_23:
      *v8 = v18;
      v19 = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v17[1]);
      CFStringAppend(v19, *(v8 + 1));
      CFRelease(*(v8 + 1));
      *(v8 + 1) = v19;
      goto LABEL_34;
    }

    if (v18 == 5 && CFStringCompare(v16[1], @"-", 0))
    {
      v18 = *v17;
      goto LABEL_23;
    }
  }

  return 1;
}

void PTNodeDestroy(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = *(v2 + 24) - 1;
      *(v2 + 24) = v3;
      if (!v3)
      {
        TokenDestroy(v2);
      }
    }

    PTNodeDestroy(a1[2]);
    PTNodeDestroy(a1[3]);

    free(a1);
  }
}

void *ParseOr(uint64_t *a1)
{
  v2 = ParseAnd(a1);
  if (v2)
  {
    v3 = ParseOr2(a1);
    if (v3)
    {
      v4 = v3;
      v5 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
      v5[2] = v2;
      v5[3] = v4;
      *(v5 + 2) = 2;
      return v5;
    }
  }

  return v2;
}

int **normalizeParseTree(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  while (1)
  {
    v2 = *(v1 + 2);
    if (v2 > 2)
    {
      break;
    }

    if (v2)
    {
      v3 = v2 == 2;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      v6 = 0;
      if (v2 != 1)
      {
        return v6;
      }

LABEL_25:
      v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
      v6[2] = *(v1 + 2);
      v7 = v1[2];
LABEL_26:
      *(v6 + 2) = normalizeParseTree(v7);
      *(v6 + 3) = normalizeParseTree(v1[3]);
      v8 = *v1;
      *(v8 + 24) = *(*v1 + 24) + 1;
      *v6 = v8;
      return v6;
    }

    v4 = v1[2];
    v5 = v1[3];
    if (v4)
    {
      if (v5)
      {
        v11 = normalizeParseTree(v4);
        v12 = normalizeParseTree(v1[3]);
        v13 = v12;
        if (v11 && v12)
        {
          v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
          v6[2] = *(v1 + 2);
          *(v6 + 2) = v11;
          *(v6 + 3) = v13;
        }

        else if (v11)
        {
          return v11;
        }

        else
        {
          return v12;
        }

        return v6;
      }

      v5 = v1[2];
    }

    else if (!v5)
    {
      return 0;
    }

LABEL_16:
    v1 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  if (v2 <= 5)
  {
    if ((v2 - 4) < 2)
    {
      goto LABEL_25;
    }

    v6 = 0;
    if (v2 != 3)
    {
      return v6;
    }

    v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200405028CB4AuLL);
    v7 = v1[2];
    if (v7)
    {
      if (*v7)
      {
        if (v1[3])
        {
          v6[2] = *(v1 + 2);
          goto LABEL_26;
        }

LABEL_40:
        v6[2] = 4;
        v15 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
        v15[12] = 1;
        *(v15 + 1) = 0;
        *v15 = 0;
        *v6 = v15;
        v17 = v1[2];
        v16 = v1[3];
        if (v17)
        {
          if (!v16)
          {
            v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", *(*v17 + 8), *(*v1 + 8));
LABEL_52:
            *(*v6 + 8) = v18;
            return v6;
          }
        }

        else if (v16)
        {
          v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", *(*v1 + 8), *(*v16 + 8));
          goto LABEL_52;
        }

LABEL_58:
        *(*v6 + 8) = CFRetain(*(*v1 + 8));
        **v6 = 0;
        return v6;
      }

      if (*(v7 + 8) <= 2u)
      {
        v19 = normalizeParseTree(v7);
        normalizeParseTreeAppend(v19, *(*v1 + 8));
        goto LABEL_46;
      }
    }

    else
    {
      v14 = v1[3];
      if (!v14 || *v14)
      {
        goto LABEL_40;
      }
    }

    v19 = 0;
LABEL_46:
    v20 = v1[3];
    if (v20)
    {
      v21 = normalizeParseTree(v20);
      v22 = v21;
      if (v19)
      {
        if (v21)
        {
          v6[2] = 0;
          *(v6 + 2) = v19;
          *(v6 + 3) = v21;
          return v6;
        }

        goto LABEL_54;
      }

      normalizeParseTreePrepend(v21, *(*v1 + 8));
      if (v22)
      {
        PTNodeDestroy(v6);
        return v22;
      }
    }

    else if (v19)
    {
LABEL_54:
      PTNodeDestroy(v6);
      return v19;
    }

    v6[2] = 4;
    v23 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
    v23[12] = 1;
    *(v23 + 1) = 0;
    *v23 = 0;
    *v6 = v23;
    goto LABEL_58;
  }

  if (v2 == 6)
  {
    v5 = v1[2];
    goto LABEL_16;
  }

  v6 = 0;
  if (v2 == 7)
  {
    v9 = normalizeParseTree(v1[2]);
    v6 = v9;
    if (v1[3])
    {
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }

    v9[2] = v10;
  }

  return v6;
}

void normalizeParseTreeAppend(int **a1, const void *a2)
{
  if (!a1)
  {
    return;
  }

  v3 = a1;
  while (1)
  {
    v4 = *(v3 + 2);
    if (v4 > 3)
    {
      break;
    }

    if (v4 <= 1)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return;
        }

        goto LABEL_28;
      }

      goto LABEL_15;
    }

    if (v4 == 2)
    {
      normalizeParseTreeAppend(v3[2], a2);
LABEL_15:
      v5 = v3[3];
      goto LABEL_16;
    }

    v5 = v3[3];
    if (!v5)
    {
      v5 = v3[2];
      if (!v5)
      {
        goto LABEL_28;
      }
    }

LABEL_16:
    v3 = v5;
    if (!v5)
    {
      return;
    }
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      if ((v4 - 6) >= 2)
      {
        return;
      }

LABEL_28:

      nodeAppend(v3, a2);
      return;
    }

    goto LABEL_15;
  }

  v5 = v3[3];
  if (v5)
  {
    goto LABEL_16;
  }

  v5 = v3[2];
  if (v5)
  {
    goto LABEL_16;
  }

  v6 = **v3;
  if (v6 == 10)
  {
    v8 = malloc_type_malloc(0x20uLL, 0x1060040C3D0B2E6uLL);
    v8[12] = 1;
    *(v8 + 1) = 0;
    *v8 = 0;
    *(v8 + 1) = CFRetain(a2);
    *v8 = 0;
    CFArrayAppendValue(*(*v3 + 1), v8);
    v9 = v8[12] - 1;
    v8[12] = v9;
    if (!v9)
    {

      TokenDestroy(v8);
    }
  }

  else if (!v6)
  {
    v7 = *(*v3 + 1);
    *(*v3 + 1) = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@%@", v7, a2);

    CFRelease(v7);
  }
}