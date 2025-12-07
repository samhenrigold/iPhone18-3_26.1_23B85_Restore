void sub_183FEE6D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1865EE460](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x183FEE6A4);
}

uint64_t CGPDFBase14GetBase14Name(char *a1)
{
  LODWORD(result) = get_base14_name(a1);
  if (result >= 15)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

unsigned int *get_base14_name(char *a1)
{
  v1 = a1;
  v2 = strchr(a1, 43);
  if (v2)
  {
    v3 = v2;
    if (v2 - v1 == 6)
    {
      if (v2 <= v1)
      {
LABEL_10:
        v1 = v3 + 1;
      }

      else
      {
        v4 = 0;
        v5 = MEMORY[0x1E69E9830];
        while (1)
        {
          v6 = v1[v4];
          if (!((v6 & 0x80000000) != 0 ? __maskrune_l(v6, 0x8000uLL, 0) : *(v5 + 4 * v6 + 60) & 0x8000))
          {
            break;
          }

          if (++v4 == 6)
          {
            goto LABEL_10;
          }
        }
      }
    }

    if (!*v1)
    {
      return 0;
    }
  }

  result = bsearch(v1, &base14_font, 0x35uLL, 0x10uLL, base14_name_compare);
  if (result)
  {
    return result[2];
  }

  return result;
}

char *CGPDFBase14GetInfo(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return off_1E6E05260[a1 - 1];
  }
}

BOOL CGPDFFontNameHasAlias(char *a1, char **a2)
{
  base14_name = get_base14_name(a1);
  if (base14_name - 1 <= 0xD)
  {
    if (a2)
    {
      v5 = *off_1E6E05260[base14_name - 1];
LABEL_7:
      v6 = strdup(v5);
LABEL_8:
      *a2 = v6;
      return 1;
    }

    return 1;
  }

  if (base14_name - 15 <= 0xB)
  {
    if (a2)
    {
      v5 = off_1E6E052D0[base14_name - 15];
      goto LABEL_7;
    }

    return 1;
  }

  v8 = strchr(a1, 44);
  result = v8 != 0;
  if (a2 && v8)
  {
    v6 = strdup(a1);
    if (v6)
    {
      v6[v8 - a1] = 45;
    }

    goto LABEL_8;
  }

  return result;
}

CFTypeRef CGCFRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void CGCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL CGCFEqual(unint64_t cf1, unint64_t a2)
{
  if (!(cf1 | a2))
  {
    return 1;
  }

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

void CGCFArrayApplyBlock(const __CFArray *a1, void *a2)
{
  v4.length = CFArrayGetCount(a1);
  v4.location = 0;

  CFArrayApplyFunction(a1, v4, call_array_block, a2);
}

const void *CGCFArrayGetLastValue(const __CFArray *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(a1, Count - 1);
}

void CGCFArrayRemoveLastValue(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count)
    {

      CFArrayRemoveValueAtIndex(a1, Count - 1);
    }
  }
}

void CGCFArrayAppendInteger(__CFArray *a1, int a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
    }
  }
}

void CGCFArrayAppendInt64(__CFArray *a1, uint64_t a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
    }
  }
}

void CGCFArrayAppendCGFloat(__CFArray *a1, double a2)
{
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a1, v3);
      CFRelease(v4);
    }
  }
}

void CGCFArrayAppendRect(__CFArray *a1, double a2, double a3, double a4, double a5)
{
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  if (a1)
  {
    v6 = CFDataCreate(0, v8, 32);
    if (v6)
    {
      v7 = v6;
      CFArrayAppendValue(a1, v6);
      CFRelease(v7);
    }
  }
}

BOOL CGCFArrayGetRectAtIndex(const __CFArray *a1, CFIndex a2, UInt8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a1, a2);
  if (!ValueAtIndex)
  {
    return 0;
  }

  v5 = ValueAtIndex;
  v6 = CFGetTypeID(ValueAtIndex);
  if (v6 != CFDataGetTypeID())
  {
    return 0;
  }

  return get_value_from_data(v5, a3, 32);
}

CFDictionaryRef CGCFDictionaryCreateWithKeyAndValue(void *a1, const void *a2)
{
  v3 = a2;
  keys = a1;
  return CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
}

CFMutableDictionaryRef CGCFDictionaryCreateMutableCopy(const void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (v2 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  return CFDictionaryCreateMutableCopy(0, 0, a1);
}

CFArrayRef CGCFDictionaryCopyKeys(const __CFDictionary *a1, const CFArrayCallBacks *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  MEMORY[0x1EEE9AC00](Count);
  v8 = (v12 - v7);
  if (v6 <= 0x1FFFFFFFFFFFFFFELL)
  {
    if (v6 > 0x100)
    {
      v9 = malloc_type_calloc(v5, 1uLL, 0xF61BE9DAuLL);
    }

    else
    {
      bzero(v12 - v7, v5);
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  CFDictionaryGetKeysAndValues(a1, v9, 0);
  v10 = CFArrayCreate(0, v9, Count, a2);
  if (v9 != v8)
  {
    free(v9);
  }

  return v10;
}

CFArrayRef CGCFDictionaryCopyValues(const __CFDictionary *a1, const CFArrayCallBacks *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  MEMORY[0x1EEE9AC00](Count);
  v8 = (v12 - v7);
  if (v6 <= 0x1FFFFFFFFFFFFFFELL)
  {
    if (v6 > 0x100)
    {
      v9 = malloc_type_calloc(v5, 1uLL, 0x940A00FDuLL);
    }

    else
    {
      bzero(v12 - v7, v5);
      v9 = v8;
    }
  }

  else
  {
    v9 = 0;
  }

  CFDictionaryGetKeysAndValues(a1, 0, v9);
  v10 = CFArrayCreate(0, v9, Count, a2);
  if (v9 != v8)
  {
    free(v9);
  }

  return v10;
}

void CGCFDictionarySetCString(__CFDictionary *a1, const void *a2, char *cStr)
{
  if (a1)
  {
    if (a2)
    {
      v5 = CFStringCreateWithCString(0, cStr, 0x8000100u);
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(a1, a2, v5);

        CFRelease(v6);
      }
    }
  }
}

void CGCFDictionarySetLongInteger(__CFDictionary *a1, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  if (a1 && a2)
  {
    v5 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (v5)
    {
      v6 = v5;
      CFDictionarySetValue(a1, a2, v5);
      CFRelease(v6);
    }
  }
}

uint64_t CGCFDictionaryGetIntegerWithDefault(const __CFDictionary *a1, const void *a2, unsigned int a3)
{
  v5 = 0;
  if (CGCFDictionaryGetInteger(a1, a2, &v5))
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

void CGCFDictionarySetBoolean(__CFDictionary *a1, const void *a2, int a3)
{
  if (a1 && a2)
  {
    v3 = MEMORY[0x1E695E4D0];
    if (!a3)
    {
      v3 = MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(a1, a2, *v3);
  }
}

uint64_t CGCFDictionaryGetBooleanWithDefault(const __CFDictionary *a1, const void *a2, unsigned int a3)
{
  v5 = 0;
  if (CGCFDictionaryGetBoolean(a1, a2, &v5))
  {
    return v5;
  }

  else
  {
    return a3;
  }
}

void CGCFDictionarySetNumber(__CFDictionary *a1, const void *a2, CFNumberType a3, void *valuePtr)
{
  if (a1 && a2 && valuePtr)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)
    {
      a3 = kCFNumberLongType;
    }

    else if (a3 == -1)
    {
      return;
    }

    v6 = CFNumberCreate(0, a3, valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(a1, a2, v6);

      CFRelease(v7);
    }
  }
}

BOOL CGCFDictionaryGetNumber(const __CFDictionary *a1, const void *a2, CFNumberType a3, void *a4)
{
  v4 = 0;
  if (a1 && a2 && a4)
  {
    v6 = a3;
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)
    {
      v6 = kCFNumberLongType;
    }

    else if (a3 == -1)
    {
      return 0;
    }

    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        return CFNumberGetValue(v8, v6, a4) != 0;
      }
    }

    return 0;
  }

  return v4;
}

void CGCFDictionarySetCFTypeRef(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (theDict && key)
  {
    if (value)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void CGCFDictionarySetPoint(__CFDictionary *a1, const void *a2, double a3, double a4)
{
  *v8 = a3;
  *&v8[1] = a4;
  if (a1 && a2)
  {
    v6 = CFDataCreate(0, v8, 16);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(a1, a2, v6);
      CFRelease(v7);
    }
  }
}

BOOL CGCFDictionaryGetPoint(const __CFDictionary *a1, const void *a2, UInt8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFDataGetTypeID())
  {
    return 0;
  }

  return get_value_from_data(v5, a3, 16);
}

void CGCFDictionarySetSize(__CFDictionary *a1, const void *a2, double a3, double a4)
{
  *v8 = a3;
  *&v8[1] = a4;
  if (a1 && a2)
  {
    v6 = CFDataCreate(0, v8, 16);
    if (v6)
    {
      v7 = v6;
      CFDictionarySetValue(a1, a2, v6);
      CFRelease(v7);
    }
  }
}

BOOL CGCFDictionaryGetSize(const __CFDictionary *a1, const void *a2, UInt8 *a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFDataGetTypeID())
  {
    return 0;
  }

  return get_value_from_data(v5, a3, 16);
}

__CFArray *CGCFArrayCreatePDFRect(CGFloat a1, CGFloat y, double a3, double height)
{
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9C0]);
  v10 = fmin(a3, height) < 0.0;
  v11 = v10;
  *&v12 = a1;
  if (v10)
  {
    v13 = y;
    v14 = a3;
    v15 = height;
    v12 = CGRectStandardize(*&v12);
  }

  valuePtr = *&v12;
  v16 = CFNumberCreate(v8, kCFNumberDoubleType, &valuePtr);
  CFArrayAppendValue(Mutable, v16);
  CFRelease(v16);
  if (v11)
  {
    v26.origin.x = a1;
    v26.origin.y = y;
    v26.size.width = a3;
    v26.size.height = height;
    v27 = CGRectStandardize(v26);
  }

  else
  {
    v27.origin.y = y;
  }

  valuePtr = v27.origin.y;
  v17 = CFNumberCreate(v8, kCFNumberDoubleType, &valuePtr);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v17);
  v18 = a1;
  if (v11)
  {
    v19 = y;
    v20 = a3;
    v21 = height;
    *&v18 = CGRectStandardize(*&v18);
  }

  else
  {
    v28.size.width = a3;
  }

  valuePtr = v18 + v28.size.width;
  v22 = CFNumberCreate(v8, kCFNumberDoubleType, &valuePtr);
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v22);
  if (v11)
  {
    v29.origin.x = a1;
    v29.origin.y = y;
    v29.size.width = a3;
    v29.size.height = height;
    v30 = CGRectStandardize(v29);
    y = v30.origin.y;
    height = v30.size.height;
  }

  valuePtr = y + height;
  v23 = CFNumberCreate(v8, kCFNumberDoubleType, &valuePtr);
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v23);
  return Mutable;
}

uint64_t CGCFDictionaryGetPDFRect(const __CFDictionary *a1, const void *a2, float64x2_t *a3)
{
  v3 = 0;
  if (a1 && a2 && a3)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFArrayGetTypeID() && CFArrayGetCount(v6) >= 4)
      {
        v9 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          v11 = CFGetTypeID(ValueAtIndex);
          if (v11 != CFNumberGetTypeID())
          {
            break;
          }

          if (++v9 == 4)
          {
            v12 = CFArrayGetValueAtIndex(v6, 0);
            CFNumberGetValue(v12, kCFNumberDoubleType, a3);
            v3 = 1;
            v13 = CFArrayGetValueAtIndex(v6, 1);
            CFNumberGetValue(v13, kCFNumberDoubleType, &a3->f64[1]);
            v14 = CFArrayGetValueAtIndex(v6, 2);
            CFNumberGetValue(v14, kCFNumberDoubleType, &a3[1]);
            v15 = CFArrayGetValueAtIndex(v6, 3);
            CFNumberGetValue(v15, kCFNumberDoubleType, &a3[1].f64[1]);
            a3[1] = vsubq_f64(a3[1], *a3);
            return v3;
          }
        }
      }
    }

    return 0;
  }

  return v3;
}

__CFData *CGCFURLCopyFileData(CFURLRef fileURL)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = CFReadStreamCreateWithFile(0, fileURL);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (CFReadStreamOpen(v1))
  {
    for (i = CFDataCreateMutable(0, 0); ; CFDataAppendBytes(i, buffer, v4))
    {
      v4 = CFReadStreamRead(v2, buffer, 1024);
      if (!v4)
      {
        break;
      }
    }

    CFReadStreamClose(v2);
  }

  else
  {
    i = 0;
  }

  CFRelease(v2);
  return i;
}

void add_keys_and_values(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (value && key)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

uint64_t (*__object_md5_creator_block_invoke_2())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetMD5");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null;
  }

  object_md5_creator_f_2 = v1;
  return result;
}

void PDFPatternRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[3];
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = a1[2];
      if (v4)
      {
        PDFContentStreamRelease(v4);
      }

      free(a1);
    }
  }
}

uint64_t CPCopyObject(void *a1, NSZone *a2)
{
  if (!a1)
  {
    return 0;
  }

  Class = object_getClass(a1);
  v5 = [NSAllocateObject(Class 0];
  if (v5)
  {
    CPAssignVariables(Class, a1, v5, a2);
  }

  return v5;
}

void CPAssignVariables(objc_class *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && objc_opt_class() != a1)
  {
    Superclass = class_getSuperclass(a1);
    CPAssignVariables(Superclass, a2, a3, a4);
    outCount = 0;
    v9 = class_copyIvarList(a1, &outCount);
    if (outCount)
    {
      for (i = 0; i < outCount; ++i)
      {
        v11 = v9[i];
        Offset = ivar_getOffset(v11);
        v13 = [objc_msgSend(MEMORY[0x1E696B098] allocWithZone:{a4), "initWithBytes:objCType:", a2 + Offset, ivar_getTypeEncoding(v11)}];
        [v13 getValue:a3 + Offset];
      }
    }

    free(v9);
  }
}

void std::vector<applesauce::CF::ObjectRef<CGPath *>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
        std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPath *>,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(uint64_t a1)
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

void std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPath *>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::vector<applesauce::CF::ObjectRef<CGPath *>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPath *>,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::ObjectRef<CGPath *>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPath *>,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGPath *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGContext *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGDisplayList *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void PageLayoutFactory::ScannerContext::op_Wstar(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    *(v3 + 48) = 0;
    v4 = *(a2 + 3);
    if (v4)
    {
      *(v4 + 48) = 256;
    }
  }
}

void PageLayoutFactory::ScannerContext::op_W(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v3 = *(a2 + 3);
  if (v3)
  {
    *(v3 + 48) = 1;
    v4 = *(a2 + 3);
    if (v4)
    {
      *(v4 + 49) = 0;
    }
  }
}

void PageLayoutFactory::ScannerContext::addCurrentPath(PageLayoutFactory::ScannerContext *this, CGPathDrawingMode a2)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(this + 23);
    if (*(this + 22) == v3)
    {
      goto LABEL_29;
    }

    v4 = *(v3 - 8);
    if (v4 && !CGPathIsEmpty(*(v3 - 8)))
    {
      CGPathCloseSubpath(v4);
    }

    else
    {
      CGPostError("%s: no current point.", "void PageLayoutFactory::ScannerContext::closeCurrentPath()");
    }
  }

  v5 = *(this + 23);
  if (*(this + 22) == v5)
  {
LABEL_29:
    __break(1u);
  }

  v6 = *this;
  v7 = *(v5 - 8);
  if (v7)
  {
    CFRetain(*(v5 - 8));
  }

  if (CGPathIsLine(v7, &v23))
  {
    v8 = *&v23;
    v9 = v24;
    if (*&v23 == v24)
    {
      PageLayout::addVertEdge((*(v6 + 40) + 512), *&v23, *(&v23 + 1), v24, v25);
      goto LABEL_23;
    }

    v15 = *(&v23 + 1);
    v16 = v25;
    if (*(&v23 + 1) == v25)
    {
      v17 = v6 + 40;
LABEL_22:
      PageLayout::addHorzEdge((*v17 + 488), v8, v15, v9, v16);
    }
  }

  else if (CGPathIsRect(v7, &rect))
  {
    x = rect.origin.x;
    y = rect.origin.y;
    width = rect.size.width;
    height = rect.size.height;
    if (!CGRectEqualToRect(rect, *(v6 + 8)))
    {
      if (width < 0.0 || height < 0.0)
      {
        v27.origin.x = x;
        v27.origin.y = y;
        v27.size.width = width;
        v27.size.height = height;
        v28 = CGRectStandardize(v27);
        v9 = v28.origin.x + v28.size.width;
        v28.origin.x = x;
        v28.origin.y = y;
        v28.size.width = width;
        v28.size.height = height;
        *(&v14 - 1) = CGRectStandardize(v28);
        height = v18;
      }

      else
      {
        v9 = x + width;
        v14 = y;
      }

      v15 = v14 + height;
      v19 = *(v6 + 40);
      v17 = v6 + 40;
      PageLayout::addVertEdge((v19 + 512), x, y, x, v15);
      PageLayout::addVertEdge((*v17 + 512), v9, rect.origin.y, v9, v15);
      PageLayout::addHorzEdge((*v17 + 488), rect.origin.x, rect.origin.y, v9, rect.origin.y);
      v8 = rect.origin.x;
      v16 = v15;
      goto LABEL_22;
    }
  }

LABEL_23:
  if (v7)
  {
    CFRelease(v7);
  }

  v20 = *(this + 23);
  if (*(this + 22) == v20)
  {
    goto LABEL_29;
  }

  v21 = *(v20 - 8);
  *(v20 - 8) = 0;
  if (v21)
  {
    CFRelease(v21);
  }
}

void sub_183FF0090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void PageLayoutFactory::ScannerContext::op_n(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v3 = *(a2 + 23);
  if (*(a2 + 22) == v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 - 8);
    *(v3 - 8) = 0;
    if (v4)
    {
      CFRelease(v4);
    }
  }
}

void PageLayoutFactory::ScannerContext::op_re(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v17 = 0.0;
  v18 = 0.0;
  v16 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v16) && CGPDFScannerPopNumber(this, &v17) && CGPDFScannerPopNumber(this, &v18))
  {
    v5 = *(a2 + 3);
    if (!v5)
    {
      v5 = &CGAffineTransformIdentity;
    }

    v7 = *&v5->c;
    v6 = *&v5->tx;
    *&v14.a = *&v5->a;
    *&v14.c = v7;
    *&v14.tx = v6;
    PageLayoutFactory::ScannerContext::ensureCurrentPath(a2);
    v8 = *(a2 + 23);
    if (*(a2 + 22) == v8)
    {
      __break(1u);
    }

    else
    {
      v9 = *(v8 - 8);
      v11 = v16;
      v10 = v17;
      v12 = v18;
      if (v16 < 0.0 || (v13 = value, value < 0.0))
      {
        CGPathMoveToPoint(*(v8 - 8), &v14, v18, v17);
        CGPathAddLineToPoint(v9, &v14, v18 + v16, v17);
        CGPathAddLineToPoint(v9, &v14, v18 + v16, v17 + value);
        CGPathAddLineToPoint(v9, &v14, v18, v17 + value);
        CGPathCloseSubpath(v9);
      }

      else
      {
        CGPathAddRect(*(v8 - 8), &v14, *&v12);
      }
    }
  }
}

void PageLayoutFactory::ScannerContext::ensureCurrentPath(PageLayoutFactory::ScannerContext *this)
{
  v1 = *(this + 23);
  if (*(this + 22) == v1)
  {
    goto LABEL_7;
  }

  if (*(v1 - 8))
  {
    return;
  }

  Mutable = CGPathCreateMutable();
  v4 = *(this + 23);
  if (*(this + 22) == v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = *(v4 - 8);
  *(v4 - 8) = Mutable;
  if (v5)
  {
    CFRelease(v5);
  }
}

void PageLayoutFactory::ScannerContext::op_h(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v3 = *(a2 + 23);
  if (*(a2 + 22) == v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 - 8);
  if (!v4 || CGPathIsEmpty(v4))
  {
    CGPostError("%s: no current point.", "static void PageLayoutFactory::ScannerContext::op_h(CGPDFScannerRef, void *)");
    return;
  }

  v6 = *(a2 + 23);
  if (*(a2 + 22) == v6)
  {
LABEL_9:
    __break(1u);
  }

  else
  {
    v7 = *(v6 - 8);

    CGPathCloseSubpath(v7);
  }
}

void PageLayoutFactory::ScannerContext::op_y(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v14 = 0.0;
  v15 = 0.0;
  value = 0.0;
  v13 = 0.0;
  if (CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v13) && CGPDFScannerPopNumber(this, &v14) && CGPDFScannerPopNumber(this, &v15))
  {
    v5 = *(a2 + 23);
    if (*(a2 + 22) == v5)
    {
      goto LABEL_14;
    }

    v6 = *(v5 - 8);
    if (!v6 || CGPathIsEmpty(v6))
    {
      CGPostError("%s: no current point.", "static void PageLayoutFactory::ScannerContext::op_y(CGPDFScannerRef, void *)");
      return;
    }

    v7 = &CGAffineTransformIdentity;
    if (*(a2 + 3))
    {
      v7 = *(a2 + 3);
    }

    v9 = *&v7->c;
    v8 = *&v7->tx;
    *&m.a = *&v7->a;
    *&m.c = v9;
    *&m.tx = v8;
    v10 = *(a2 + 23);
    if (*(a2 + 22) == v10)
    {
LABEL_14:
      __break(1u);
    }

    else
    {
      CGPathAddCurveToPoint(*(v10 - 8), &m, v15, v14, v13, value, v13, value);
    }
  }
}

void PageLayoutFactory::ScannerContext::op_v(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v17 = 0.0;
  v18 = 0.0;
  value = 0.0;
  v16 = 0.0;
  if (CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v16) && CGPDFScannerPopNumber(this, &v17) && CGPDFScannerPopNumber(this, &v18))
  {
    v5 = *(a2 + 23);
    if (*(a2 + 22) == v5)
    {
      goto LABEL_17;
    }

    v6 = *(v5 - 8);
    if (v6 && !CGPathIsEmpty(*(v5 - 8)))
    {
      CurrentPoint = CGPathGetCurrentPoint(v6);
      v10 = *(a2 + 3);
      if (!v10)
      {
        v10 = &CGAffineTransformIdentity;
      }

      m = *v10;
      v7 = CGPointApplyInverseAffineTransform(&m.a, CurrentPoint.x, CurrentPoint.y);
    }

    else
    {
      CGPostError("%s: no current point.", "CGPoint PageLayoutFactory::ScannerContext::getPathCurrentPoint()");
      v7 = 0.0;
      v8 = 0.0;
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      v11 = &CGAffineTransformIdentity;
    }

    v13 = *&v11->c;
    v12 = *&v11->tx;
    *&m.a = *&v11->a;
    *&m.c = v13;
    *&m.tx = v12;
    v14 = *(a2 + 23);
    if (*(a2 + 22) == v14)
    {
LABEL_17:
      __break(1u);
    }

    else
    {
      CGPathAddCurveToPoint(*(v14 - 8), &m, v7, v8, v18, v17, v16, value);
    }
  }
}

void PageLayoutFactory::ScannerContext::op_c(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v13 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v13) && CGPDFScannerPopNumber(this, &v14) && CGPDFScannerPopNumber(this, &v15) && CGPDFScannerPopNumber(this, &v16) && CGPDFScannerPopNumber(this, &v17))
  {
    v5 = *(a2 + 23);
    if (*(a2 + 22) == v5)
    {
      goto LABEL_16;
    }

    v6 = *(v5 - 8);
    if (!v6 || CGPathIsEmpty(v6))
    {
      CGPostError("%s: no current point.", "static void PageLayoutFactory::ScannerContext::op_c(CGPDFScannerRef, void *)");
      return;
    }

    v7 = &CGAffineTransformIdentity;
    if (*(a2 + 3))
    {
      v7 = *(a2 + 3);
    }

    v9 = *&v7->c;
    v8 = *&v7->tx;
    *&m.a = *&v7->a;
    *&m.c = v9;
    *&m.tx = v8;
    v10 = *(a2 + 23);
    if (*(a2 + 22) == v10)
    {
LABEL_16:
      __break(1u);
    }

    else
    {
      CGPathAddCurveToPoint(*(v10 - 8), &m, v17, v16, v15, v14, v13, value);
    }
  }
}

void PageLayoutFactory::ScannerContext::op_l(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0.0;
  v13 = 0.0;
  if (CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v13))
  {
    v5 = *(a2 + 23);
    if (*(a2 + 22) == v5)
    {
      goto LABEL_12;
    }

    v6 = *(v5 - 8);
    if (!v6 || CGPathIsEmpty(v6))
    {
      CGPostError("%s: no current point.", "static void PageLayoutFactory::ScannerContext::op_l(CGPDFScannerRef, void *)");
      return;
    }

    v7 = &CGAffineTransformIdentity;
    if (*(a2 + 3))
    {
      v7 = *(a2 + 3);
    }

    v9 = *&v7->c;
    v8 = *&v7->tx;
    *&m.a = *&v7->a;
    *&m.c = v9;
    *&m.tx = v8;
    v10 = *(a2 + 23);
    if (*(a2 + 22) == v10)
    {
LABEL_12:
      __break(1u);
    }

    else
    {
      CGPathAddLineToPoint(*(v10 - 8), &m, v13, value);
    }
  }
}

void PageLayoutFactory::ScannerContext::op_m(PageLayoutFactory::ScannerContext *this, const CGAffineTransform **a2, void *a3)
{
  value = 0.0;
  v11 = 0.0;
  if (CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v11))
  {
    PageLayoutFactory::ScannerContext::ensureCurrentPath(a2);
    v5 = &CGAffineTransformIdentity;
    if (a2[3])
    {
      v5 = a2[3];
    }

    v7 = *&v5->c;
    v6 = *&v5->tx;
    *&v9.a = *&v5->a;
    *&v9.c = v7;
    *&v9.tx = v6;
    v8 = a2[23];
    if (a2[22] == v8)
    {
      __break(1u);
    }

    else
    {
      CGPathMoveToPoint(*&v8[-1].ty, &v9, v11, value);
    }
  }
}

void PageLayoutFactory::ScannerContext::op_EMC(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v3 = *(a2 + 9);
  v4 = *(a2 + 10);
  if (v3 == v4)
  {
    v5 = *(a2 + 9);
  }

  else
  {
    v5 = v4 - 8;
    *(a2 + 10) = v5;
  }

  if (*(a2 + 14) == (v5 - v3) >> 3)
  {
    *(a2 + 96) = 0;
    v6 = *(a2 + 13);
    *(a2 + 13) = 0;
  }
}

void PageLayoutFactory::ScannerContext::op_BMC(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v4 = 0;
  if (CGPDFScannerPopName(this, &v4))
  {
    v5 = -1;
    std::vector<unsigned long>::push_back[abi:fe200100](a2 + 72, &v5);
  }
}

void std::vector<unsigned long>::push_back[abi:fe200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void PageLayoutFactory::ScannerContext::op_BDC(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v5 = *(this + 18);
  if (v5 <= 0)
  {

    pdf_error("stack underflow.", a2, a3);
  }

  else
  {
    v6 = *(this + 10) + 40 * v5;
    *(this + 18) = v5 - 1;
    if (v6 == 40)
    {
      return;
    }

    value[5] = v3;
    value[6] = v4;
    v8 = *(v6 - 32);
    if (v8 == 8)
    {
      v10 = 0;
      v9 = *(v6 - 8);
    }

    else
    {
      if (v8 != 5)
      {
        return;
      }

      v9 = 0;
      v10 = *(v6 - 8);
    }

    __s1 = 0;
    if (CGPDFScannerPopName(this, &__s1))
    {
      v11 = __s1;
      if (!v10)
      {
        v15 = a2;
        v16 = __s1;
        v14 = v9;
        goto LABEL_19;
      }

      v12 = **a2;
      if (v12)
      {
        v13 = *(*(v12 + 40) + 16);
        if (v13)
        {
          value[0] = 0;
          if (!CGPDFDictionaryGetDictionary(v13, "Resources", value))
          {
            dict = 0;
            if (CGPDFDictionaryGetDictionary(value[0], "Properties", &dict))
            {
              v18 = 0;
              if (!CGPDFDictionaryGetDictionary(dict, v10, &v18))
              {
                v14 = v18;
                v15 = a2;
                v16 = v11;
LABEL_19:
                PageLayoutFactory::ScannerContext::beginMarkedContentSequence(v15, v16, v14);
              }
            }
          }
        }
      }
    }
  }
}

void PageLayoutFactory::ScannerContext::beginMarkedContentSequence(PageLayoutFactory::ScannerContext *this, const char *__s1, CGPDFDictionaryRef dict)
{
  value = 0;
  if ((*(this + 96) & 1) == 0 && !strcmp(__s1, "Span") && CGPDFDictionaryGetString(dict, "ActualText", &value))
  {
    v5 = CGPDFStringCopyTextString(value);
    v10 = v5;
    if (v5)
    {
      v6 = v5;
      if (CFStringGetLength(v5) == 1)
      {
        *(this + 96) = 1;
        v7 = *(this + 13);
        *(this + 13) = v6;

        *(this + 14) = (*(this + 10) - *(this + 9)) >> 3;
      }

      else
      {
        CFRelease(v6);
      }
    }
  }

  v10 = 0;
  if (!CGPDFDictionaryGetInteger(dict, "MCID", &v10) || (v8 = v10, v10 < 0))
  {
    v8 = -1;
  }

  v9 = v8;
  std::vector<unsigned long>::push_back[abi:fe200100](this + 72, &v9);
}

void sub_183FF0BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void PageLayoutFactory::ScannerContext::op_gs(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopName(this, &value))
  {
    ExtGState = CGPDFContentStreamGetExtGState(*(this + 7), value);
    if (ExtGState)
    {
      array = 0;
      if (CGPDFDictionaryGetArray(ExtGState, "Font", &array))
      {
        v11 = 0;
        if (CGPDFArrayGetDictionary(array, 0, &v11))
        {
          v10 = 0;
          if (CGPDFArrayGetNumber(array, 1uLL, &v10))
          {
            v6 = CGPDFFontCreate(v11);
            if (v6)
            {
              CGPDFGStateSetFont(*(a2 + 3), v6);
              v7 = *(a2 + 3);
              if (v7)
              {
                v8 = v10;
                *(v7 + 144) = v10;
                v9 = *(v7 + 288);
                if (v9)
                {
                  *(v9 + 56) = v8;
                }
              }
            }
          }
        }
      }
    }
  }
}

void PageLayoutFactory::ScannerContext::op_Do(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopName(this, &value))
  {
    v5 = *(this + 7);
    if (v5)
    {
      v6 = value;
      v7 = *(this + 7);
      while (1)
      {
        v8 = CGPDFResourcesCopyXObject(*(v7 + 32), v6);
        if (v8)
        {
          break;
        }

        v7 = *(v7 + 40);
        if (!v7)
        {
          return;
        }
      }

      v9 = v8;
      v10 = *(v8 + 4);
      if (v10 == 2)
      {
        v13 = CGPDFXObjectGetValue(v8);
        if (v13)
        {
          v14 = *v13;
          v15 = *(v13 + 88);
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        v16 = (v13 + 40);
      }

      else
      {
        if (v10 != 1)
        {
          if (v10)
          {
            pdf_error("unrecognized or unsupported XObject subtype.");
          }

          else
          {
            v11 = *(v8 + 3);
            if (v11)
            {
              v12 = *(v11 + 48);
            }

            else
            {
              v12 = 0;
            }

            v38 = 0;
            CStringPtr = CFStringGetCStringPtr(@"kCGPDFImageIsSignature", 0x600u);
            if (!CGPDFDictionaryGetBoolean(v12, CStringPtr, &v38) || !v38)
            {
              v22 = *(a2 + 3);
              if (!v22)
              {
                v22 = &CGAffineTransformIdentity;
              }

              v23 = *&v22->c;
              *&v40.a = *&v22->a;
              *&v40.c = v23;
              *&v40.tx = *&v22->tx;
              v24 = 0;
              *&v23 = 0;
              v25 = 1.0;
              v26 = 1.0;
              v41 = CGRectApplyAffineTransform(*(&v23 - 8), &v40);
              v27 = *(*a2 + 40);
              v28 = v27[59];
              v29 = v27[60];
              if (v28 >= v29)
              {
                v31 = v27[58];
                v32 = v28 - v31;
                v33 = (v28 - v31) >> 5;
                v34 = v33 + 1;
                if ((v33 + 1) >> 59)
                {
                  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
                }

                v35 = v29 - v31;
                if (v35 >> 4 > v34)
                {
                  v34 = v35 >> 4;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v36 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v36 = v34;
                }

                if (v36)
                {
                  std::__allocate_at_least[abi:fe200100]<std::allocator<CGRect>>(v36);
                }

                *(32 * v33) = v41;
                v30 = 32 * v33 + 32;
                memcpy(0, v31, v32);
                v37 = v27[58];
                v27[58] = 0;
                v27[59] = v30;
                v27[60] = 0;
                if (v37)
                {
                  operator delete(v37);
                }
              }

              else
              {
                *v28 = v41;
                v30 = &v28[1];
              }

              v27[59] = v30;
            }
          }

LABEL_30:
          CFRelease(v9);
          return;
        }

        v13 = CGPDFXObjectGetValue(v8);
        if (v13)
        {
          v14 = *(v13 + 16);
          v15 = *(v13 + 104);
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        v16 = (v13 + 56);
      }

      if (!v13)
      {
        v16 = &CGAffineTransformIdentity;
      }

      v17 = *&v16->c;
      *&v40.a = *&v16->a;
      *&v40.c = v17;
      *&v40.tx = *&v16->tx;
      CGPDFRStateGSave(*(a2 + 2));
      CGPDFGStateConcatCTM(*(a2 + 3), &v40.a);
      v18 = CGPDFContentStreamCreateWithStream(v14, v15, v5);
      v19 = CGPDFScannerCreate(v18, *(a2 + 1), a2);
      CGPDFScannerScan(v19);
      if (v19)
      {
        CFRelease(v19);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      CGPDFRStateGRestore(*(a2 + 2));
      v20 = *(a2 + 2);
      if (v20)
      {
        v20 = *v20;
      }

      *(a2 + 3) = v20;
      goto LABEL_30;
    }
  }
}

void PageLayoutFactory::ScannerContext::op_TJ(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopArray(this, &value))
  {
    if (*(a2 + 32))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
      CGPDFTextObjectAppendStrings(TextObject, value);
      CGPDFTextLayoutDrawGlyphs(*(TextObject + 21), PageLayoutFactory::ScannerContext::appendTextLayout(CGPDFTextLayout *)::{lambda(void *,CGPDFFont *,CGAffineTransform,CGPoint const*,double const*,unsigned short const*,unsigned short const*,unsigned char const*,unsigned long)#1}::__invoke, a2);
    }

    else
    {
    }
  }
}

void PageLayoutFactory::ScannerContext::appendTextLayout(CGPDFTextLayout *)::{lambda(void *,CGPDFFont *,CGAffineTransform,CGPoint const*,double const*,unsigned short const*,unsigned short const*,unsigned char const*,unsigned long)#1}::__invoke(float *a1, float64x2_t *a2, double *a3, uint64_t a4, uint64_t a5, CGGlyph *a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  if (!a9)
  {
    return;
  }

  v255 = a3[5];
  v257 = a3[4];
  v251 = a3[3];
  v253 = a3[2];
  v246 = a3[1];
  v248 = *a3;
  Font = CGPDFFontGetFont(a2);
  v13 = *(a1 + 3);
  if (!v13)
  {
    v13 = &CGAffineTransformIdentity;
  }

  v14 = *&v13->c;
  v15 = *&v13->tx;
  v16 = vmlaq_n_f64(vmulq_n_f64(v14, v246), *&v13->a, v248);
  v17 = vmlaq_n_f64(vmulq_n_f64(v14, v251), *&v13->a, v253);
  v18 = vmlaq_n_f64(vmulq_n_f64(v14, v255), *&v13->a, v257);
  memset(&v265, 0, sizeof(v265));
  v256 = v17;
  v258 = v16;
  *&transform.a = v16;
  *&transform.c = v17;
  v254 = vaddq_f64(v15, v18);
  *&transform.tx = v254;
  CGAffineTransformDecompose(&v265, &transform);
  if (v265.horizontalShear < 2.22044605e-16)
  {
    v265.horizontalShear = 0.0;
  }

  if (v265.scale.width >= 0.0)
  {
    rotation = v265.rotation;
  }

  else
  {
    rotation = v265.rotation + 3.14159265;
    v265.scale.width = -v265.scale.width;
    v265.rotation = v265.rotation + 3.14159265;
  }

  scale = v265.scale;
  CMap = CGPDFFontGetCMap(a2);
  if (CMap && *(*(CMap + 16) + 24))
  {
    v238 = 0;
    rotation = rotation + -1.57079633;
    scale = vextq_s8(scale, scale, 8uLL);
  }

  else
  {
    v238 = 1;
  }

  if (a2)
  {
    v21 = &a2[3].f64[1];
  }

  else
  {
    v21 = &CGAffineTransformIdentity;
  }

  d = v21->d;
  v23 = fabs(v21->a);
  if (v21->a == 0.0)
  {
    v23 = 0.001;
  }

  *&v234 = v23;
  v24 = fabs(d);
  if (d == 0.0)
  {
    v25 = 0.001;
  }

  else
  {
    v25 = v24;
  }

  FontDescriptor = CGPDFFontGetFontDescriptor(a2);
  if (FontDescriptor)
  {
    v27 = *(FontDescriptor + 32);
  }

  else
  {
    v27 = 0;
  }

  glyphs = a6;
  font_info = get_font_info(Font);
  if (font_info)
  {
    v29 = font_info[2];
  }

  else
  {
    v29 = 0;
  }

  v240 = v29;
  if (v238)
  {
    transform.a = 0.0;
    v30 = 0.0;
    if (CGPDFDictionaryGetNumber(v27, "Ascent", &transform.a))
    {
      v31 = v25 * transform.a;
    }

    else
    {
      v31 = 0.0;
    }

    _ZF = v31 != 0.0 || Font == 0;
    if (!_ZF && v29 != 0)
    {
      v34 = get_font_info(Font);
      if (v34)
      {
        v30 = v34[3];
      }

      v31 = v30 / v240;
    }

    v35 = 0.0;
    if (CGPDFDictionaryGetNumber(v27, "Descent", &transform.a))
    {
      transform.a = fabs(transform.a);
      v35 = v25 * transform.a;
    }

    v36 = a2;
    if (v35 == 0.0 && Font && v29)
    {
      v37 = get_font_info(Font);
      if (v37)
      {
        v38 = v37[4];
      }

      else
      {
        v38 = 0;
      }

      v35 = -v38 / v240;
    }
  }

  else
  {
    transform.a = 0.0;
    Number = CGPDFDictionaryGetNumber(v27, "DW", &transform.a);
    a = transform.a;
    if (!Number)
    {
      a = 1000.0;
    }

    v35 = *&v234 * a * 0.5;
    v31 = v35;
    v36 = a2;
  }

  v252 = a1;
  if (v31 != 0.0 && v35 != 0.0)
  {
    goto LABEL_126;
  }

  v41 = 0x9DDFEA08EB382D69 * ((8 * (v36 & 0x1FFFFFFF) + 8) ^ HIDWORD(v36));
  v42 = 0x9DDFEA08EB382D69 * (HIDWORD(v36) ^ (v41 >> 47) ^ v41);
  v43 = 0x9DDFEA08EB382D69 * (v42 ^ (v42 >> 47));
  v44 = *(a1 + 32);
  if (v44)
  {
    v45 = vcnt_s8(v44);
    v45.i16[0] = vaddlv_u8(v45);
    if (v45.u32[0] > 1uLL)
    {
      v46 = v43;
      if (v43 >= *&v44)
      {
        v46 = v43 % *&v44;
      }
    }

    else
    {
      v46 = v43 & (*&v44 - 1);
    }

    v47 = *(*(a1 + 15) + 8 * v46);
    if (v47)
    {
      for (i = *v47; i; i = *i)
      {
        v49 = *(i + 1);
        if (v49 == v43)
        {
          if (*(i + 2) == v36)
          {
            v31 = i[3];
            v35 = i[4];
            goto LABEL_126;
          }
        }

        else
        {
          if (v45.u32[0] > 1uLL)
          {
            if (v49 >= *&v44)
            {
              v49 %= *&v44;
            }
          }

          else
          {
            v49 &= *&v44 - 1;
          }

          if (v49 != v46)
          {
            break;
          }
        }
      }
    }
  }

  if (v36)
  {
    v50 = *(v36 + 16);
  }

  else
  {
    v50 = 0;
  }

  value[0] = 0;
  if (!CGPDFDictionaryGetDictionary(v50, "Resources", value))
  {
    value[0] = 0;
  }

  Procedures = CGPDFFontGetProcedures(v36);
  if (Procedures)
  {
    v53 = Procedures;
    v249 = v43;
    v54 = a8;
    v55 = 0;
    v56 = 2.22507386e-308;
    y = 1.79769313e308;
    do
    {
      v58 = v53[v55];
      if (v58)
      {
        if (!*(a1 + 20))
        {
          CGDisplayList = CG::DisplayList::createCGDisplayList(0, &CGRectInfinite, v52);
          v60 = *(a1 + 20);
          *(a1 + 20) = CGDisplayList;
          if (v60)
          {
            CFRelease(v60);
          }
        }

        v61 = *(a1 + 21);
        if (!v61)
        {
          v61 = CGDisplayListContextCreate(*(a1 + 20));
          v62 = *(a1 + 21);
          *(a1 + 21) = v61;
          if (v62)
          {
            CFRelease(v62);
            v61 = *(a1 + 21);
          }
        }

        v63 = *(a1 + 20);
        CGContextSaveGState(v61);
        v64 = *&v21->c;
        *&transform.a = *&v21->a;
        *&transform.c = v64;
        *&transform.tx = *&v21->tx;
        CGContextConcatCTM(v61, &transform);
        v65 = CGPDFDrawingContextCreateWithStream(v58, value[0], 0);
        CGPDFDrawingContextDrawGlyphStream(v65, v58, value[0], v61);
        CGPDFDrawingContextRelease(v65);
        CGContextRestoreGState(v61);
        p_height = &CGRectNull.size.height;
        p_y = &CGRectNull.origin.y;
        p_size = &CGRectNull.size;
        if (v63)
        {
          v69 = (v63 + 88);
          if (*(v63 + 688) == *(v63 + 696))
          {
            v69 = &CGRectNull;
          }

          else
          {
            p_size = (v63 + 104);
            p_y = (v63 + 96);
            p_height = (v63 + 112);
          }
        }

        else
        {
          v69 = &CGRectNull;
        }

        height = *p_height;
        x = v69->origin.x;
        v72 = *p_y;
        width = p_size->width;
        CGDisplayListReset(v63);
        if (x == INFINITY || v72 == INFINITY)
        {
          a1 = v252;
        }

        else
        {
          a1 = v252;
          if (width < 0.0 || height < 0.0)
          {
            v267.origin.x = x;
            v267.origin.y = v72;
            v267.size.width = width;
            v267.size.height = height;
            v268 = CGRectStandardize(v267);
            if (v268.origin.y < y)
            {
              y = v268.origin.y;
            }

            v269.origin.x = x;
            v269.origin.y = v72;
            v269.size.width = width;
            v269.size.height = height;
            v270 = CGRectStandardize(v269);
            v72 = v270.origin.y;
            height = v270.size.height;
          }

          else if (v72 < y)
          {
            y = v72;
          }

          if (v56 < v72 + height)
          {
            v56 = v72 + height;
          }
        }
      }

      ++v55;
    }

    while (v55 != 256);
    v31 = v56 * 1.05;
    v35 = y * -1.25;
    v75 = *(a1 + 32);
    if (v75)
    {
      v76 = vcnt_s8(v75);
      v76.i16[0] = vaddlv_u8(v76);
      a8 = v54;
      if (v76.u32[0] > 1uLL)
      {
        v77 = v249;
        if (v249 >= *&v75)
        {
          v77 = v249 % *&v75;
        }
      }

      else
      {
        v77 = v249 & (*&v75 - 1);
      }

      v78 = *(*(a1 + 15) + 8 * v77);
      if (v78)
      {
        for (j = *v78; j; j = *j)
        {
          v80 = j[1];
          if (v80 == v249)
          {
            if (j[2] == a2)
            {
              goto LABEL_125;
            }
          }

          else
          {
            if (v76.u32[0] > 1uLL)
            {
              if (v80 >= *&v75)
              {
                v80 %= *&v75;
              }
            }

            else
            {
              v80 &= *&v75 - 1;
            }

            if (v80 != v77)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_125:
  v36 = a2;
LABEL_126:
  if (v31 == 0.0 || v35 == 0.0)
  {
    if (v36)
    {
      v89 = *(v36 + 32);
    }

    else
    {
      v89 = 0;
    }

    pdf_error("Failed to determine ascent and decent for font: %s\n", v89);
    return;
  }

  v81 = __sincos_stret(rotation);
  v82 = *a1;
  v83 = 0x9DDFEA08EB382D69 * ((8 * (v36 & 0x1FFFFFFF) + 8) ^ HIDWORD(v36));
  v84 = 0x9DDFEA08EB382D69 * (HIDWORD(v36) ^ (v83 >> 47) ^ v83);
  v85 = 0x9DDFEA08EB382D69 * (v84 ^ (v84 >> 47));
  v86 = v82[18];
  v236 = Font;
  if (!*&v86)
  {
    goto LABEL_149;
  }

  v87 = vcnt_s8(v86);
  v87.i16[0] = vaddlv_u8(v87);
  if (v87.u32[0] > 1uLL)
  {
    v88 = 0x9DDFEA08EB382D69 * (v84 ^ (v84 >> 47));
    if (v85 >= *&v86)
    {
      v88 = v85 % *&v86;
    }
  }

  else
  {
    v88 = v85 & (*&v86 - 1);
  }

  v90 = *(*&v82[17] + 8 * v88);
  if (!v90 || (v91 = *v90) == 0)
  {
LABEL_149:
    operator new();
  }

  while (1)
  {
    v92 = v91[1];
    if (v92 == v85)
    {
      break;
    }

    if (v87.u32[0] > 1uLL)
    {
      if (v92 >= *&v86)
      {
        v92 %= *&v86;
      }
    }

    else
    {
      v92 &= *&v86 - 1;
    }

    if (v92 != v88)
    {
      goto LABEL_149;
    }

LABEL_148:
    v91 = *v91;
    if (!v91)
    {
      goto LABEL_149;
    }
  }

  if (v91[2] != a2)
  {
    goto LABEL_148;
  }

  v93 = v91[3];
  FillColor = CGPDFGStateGetFillColor(*(v252 + 3));
  v95 = FillColor;
  value[0] = v93;
  *&value[1] = (scale.width + scale.height) * 0.5;
  if (FillColor)
  {
    CFRetain(FillColor);
  }

  cf = v95;
  v96 = *(v252 + 10);
  v228 = a8;
  if (*(v252 + 9) == v96)
  {
    v97 = -1;
  }

  else
  {
    v97 = *(v96 - 8);
  }

  v98 = *v252;
  v99 = *(*v252 + 40);
  v100 = *(v99 + 208);
  v101 = *(v99 + 216);
  v102 = v100;
  if (v100 != v101)
  {
    v102 = *(v99 + 208);
    while (*v102 != v93 || *(v102 + 8) != (scale.width + scale.height) * 0.5 || !CGColorEqualToColor(*(v102 + 16), v95))
    {
      v102 += 24;
      if (v102 == v101)
      {
        goto LABEL_163;
      }
    }
  }

  if (v102 == v101)
  {
LABEL_163:
    std::vector<PageLayout::CharacterStyle>::push_back[abi:fe200100]((v99 + 208), value);
    v100 = *(v99 + 208);
    v102 = *(v99 + 216) - 24;
    v98 = *v252;
  }

  v103.f64[0] = v81.__cosval;
  v103.f64[1] = -v81.__sinval;
  _D2 = 0;
  v105 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v81, v254, 1), v103, v254.f64[0]), 0);
  v247 = vmlaq_n_f64(vmulq_laneq_f64(v81, v258, 1), v103, v258.f64[0]);
  v250 = vmlaq_n_f64(vmulq_laneq_f64(v81, v256, 1), v103, v256.f64[0]);
  v245 = v105;
  __asm { FMLA            D0, D2, V5.D[1] }

  v110 = scale.width;
  v111 = vmuld_lane_f64(v31, scale, 1);
  v112 = vmuld_lane_f64(v35, scale, 1);
  v113 = v105.f64[1] + _D0;
  v114 = (v102 - v100) >> 3;
  v116 = *(v98 + 184);
  v115 = *(v98 + 192);
  if (v116 >= v115)
  {
    v121 = *(v98 + 176);
    v122 = 0x34F72C234F72C235 * ((v116 - v121) >> 3);
    v117 = v252;
    v118 = v236;
    if ((v122 + 1) > 0x11A7B9611A7B961)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v123 = 0x34F72C234F72C235 * ((v115 - v121) >> 3);
    v124 = 2 * v123;
    if (2 * v123 <= v122 + 1)
    {
      v124 = v122 + 1;
    }

    if (v123 >= 0x8D3DCB08D3DCB0)
    {
      v125 = 0x11A7B9611A7B961;
    }

    else
    {
      v125 = v124;
    }

    *&transform.tx = v98 + 176;
    if (v125)
    {
      if (v125 <= 0x11A7B9611A7B961)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    transform.a = 0.0;
    *&transform.b = 232 * v122;
    *&transform.c = 232 * v122;
    transform.d = 0.0;
    PageLayoutFactory::TextChunk::TextChunk((232 * v122), a9, v105.f64[1] + _D0 - v112, v111 + v112, v236, rotation, v113, scale, v97, *(v252 + 96), 0xAAAAAAAAAAAAAAABLL * v114);
    *&transform.c += 232;
    v126 = *(v98 + 176);
    v127 = *(v98 + 184);
    v128 = *&transform.b + v126 - v127;
    if (v126 != v127)
    {
      v129 = *&transform.b + v126 - v127;
      v130 = *(v98 + 176);
      do
      {
        *v129 = 0;
        *(v129 + 8) = 0;
        *(v129 + 16) = 0;
        *v129 = *v130;
        *(v129 + 16) = *(v130 + 16);
        *v130 = 0;
        *(v130 + 8) = 0;
        *(v130 + 16) = 0;
        *(v129 + 24) = 0;
        *(v129 + 32) = 0;
        *(v129 + 40) = 0;
        *(v129 + 24) = *(v130 + 24);
        *(v129 + 40) = *(v130 + 40);
        *(v130 + 24) = 0;
        *(v130 + 32) = 0;
        *(v130 + 40) = 0;
        *(v129 + 48) = 0;
        *(v129 + 56) = 0;
        *(v129 + 64) = 0;
        *(v129 + 48) = *(v130 + 48);
        *(v129 + 64) = *(v130 + 64);
        *(v130 + 48) = 0;
        *(v130 + 56) = 0;
        *(v130 + 64) = 0;
        *(v129 + 72) = 0;
        *(v129 + 80) = 0;
        *(v129 + 88) = 0;
        *(v129 + 72) = *(v130 + 72);
        *(v129 + 88) = *(v130 + 88);
        *(v130 + 72) = 0;
        *(v130 + 80) = 0;
        *(v130 + 88) = 0;
        *(v129 + 96) = 0;
        *(v129 + 104) = 0;
        *(v129 + 112) = 0;
        *(v129 + 96) = *(v130 + 96);
        *(v129 + 112) = *(v130 + 112);
        *(v130 + 104) = 0;
        *(v130 + 112) = 0;
        *(v130 + 96) = 0;
        v131 = *(v130 + 184);
        v132 = *(v130 + 200);
        v133 = *(v130 + 216);
        *(v129 + 168) = *(v130 + 168);
        *(v129 + 216) = v133;
        *(v129 + 200) = v132;
        *(v129 + 184) = v131;
        v134 = *(v130 + 136);
        v135 = *(v130 + 152);
        *(v129 + 120) = *(v130 + 120);
        *(v129 + 152) = v135;
        *(v129 + 136) = v134;
        v130 += 232;
        v129 += 232;
      }

      while (v130 != v127);
      do
      {
        std::allocator_traits<std::allocator<PageLayoutFactory::TextChunk>>::destroy[abi:fe200100]<PageLayoutFactory::TextChunk,void,0>(v126);
        v126 += 232;
      }

      while (v126 != v127);
    }

    v136 = *(v98 + 176);
    *(v98 + 176) = v128;
    v137 = *(v98 + 192);
    c = transform.c;
    *(v98 + 184) = *&transform.c;
    transform.c = v136;
    transform.d = v137;
    transform.a = v136;
    transform.b = v136;
    std::__split_buffer<PageLayoutFactory::TextChunk>::~__split_buffer(&transform);
    v120 = c;
  }

  else
  {
    v117 = v252;
    v118 = v236;
    v119 = scale.height;
    PageLayoutFactory::TextChunk::TextChunk(*(v98 + 184), a9, v105.f64[1] + _D0 - v112, v111 + v112, v236, rotation, v113, *&v110, v97, *(v252 + 96), 0xAAAAAAAAAAAAAAABLL * v114);
    *&v120 = v116 + 232;
    *(v98 + 184) = v116 + 232;
  }

  *(v98 + 184) = v120;
  v138 = *(*v117 + 184);
  if (*(*v117 + 176) == v138)
  {
    goto LABEL_363;
  }

  v261 = 0;
  v262 = 0;
  v260 = &v261;
  GlyphBBoxes = CGFontGetGlyphBBoxes(v118, glyphs, a9, *(v138 - 208));
  Advances = CGPDFFontGetAdvances(a2);
  v139 = 0;
  v259[0] = 0;
  v231 = vdupq_lane_s64(v234, 0);
  v237 = vdupq_lane_s64(*&v240, 0);
  if (a9 <= 1)
  {
    v140 = 1;
  }

  else
  {
    v140 = a9;
  }

  v241 = v140;
  v141 = (a4 + 8);
  v142 = 16;
  do
  {
    v143 = *(v138 - 208);
    if (v139 >= (*(v138 - 200) - v143) >> 5)
    {
      goto LABEL_363;
    }

    v144 = *(v138 - 184);
    if (v139 >= (*(v138 - 176) - v144) >> 5)
    {
      goto LABEL_363;
    }

    v145 = v143 + v142;
    v146 = (v143 + v142 - 16);
    if (GlyphBBoxes)
    {
      *v146 = vdivq_f64(*v146, v237);
      *(v143 + v142) = vdivq_f64(*(v143 + v142), v237);
    }

    else
    {
      v147 = *(a5 + 8 * v139);
      v146->f64[0] = 0.0;
      *(v145 - 8) = -v35;
      v148 = v143 + v142;
      *v148 = v147;
      *(v148 + 8) = v31 + v35;
    }

    v149 = v144 + v142 - 16;
    v150 = *(v143 + v142);
    *v149 = *v146;
    *(v149 + 16) = v150;
    v151 = (v143 + v142);
    v152 = v146->f64[0] + *(v141 - 1);
    v153 = *(v143 + v142);
    v154 = *(v143 + v142 + 8);
    *&v150 = *(v145 - 8) + *v141;
    *&transform.a = v258;
    *&transform.c = v256;
    *&transform.tx = v254;
    v271 = CGRectApplyAffineTransform(*(&v150 - 8), &transform);
    if (CGRectIntersectsRect(v271, *(v117 + 40)))
    {
      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v260, v139, v259);
      *v149 = vaddq_f64(*(v141 - 1), *v149);
      v155.f64[0] = *(v141 - 1);
      if (v238)
      {
        v146->f64[0] = v155.f64[0];
        v156 = *v141 + *(v145 - 8);
        *(v145 - 8) = v156;
        v157 = *(a5 + 8 * v139);
        *v151 = v157;
        v158 = v151[1];
      }

      else
      {
        v146->f64[0] = v155.f64[0] + v146->f64[0];
        *(v145 - 8) = *v141;
        v158 = *&v234 * CGPDFAdvancesGetVerticalAdvance(Advances, *(a7 + 2 * v139), &transform);
        v151[1] = v158;
        v155 = vmlaq_f64(*v146, *&transform.a, v231);
        *v146 = v155;
        v156 = v155.f64[1];
        v157 = *v151;
      }

      *&transform.a = v247;
      *&transform.c = v250;
      *&transform.tx = v245;
      v272 = CGRectApplyAffineTransform(*v155.f64, &transform);
      v146->f64[0] = v272.origin.x;
      *(v145 - 8) = v272.origin.y;
      *v151 = v272.size.width;
      v151[1] = v272.size.height;
      v272.origin.x = *v149;
      v272.origin.y = *(v144 + v142 - 8);
      v159 = (v144 + v142);
      v272.size.width = *(v144 + v142);
      v272.size.height = *(v144 + v142 + 8);
      *&transform.a = v247;
      *&transform.c = v250;
      *&transform.tx = v245;
      v273 = CGRectApplyAffineTransform(v272, &transform);
      *v149 = v273.origin.x;
      *(v159 - 1) = v273.origin.y;
      *v159 = v273.size.width;
      v159[1] = v273.size.height;
      v274.origin.x = v146->f64[0];
      v274.origin.y = *(v145 - 8);
      v274.size.width = *v151;
      v274.size.height = v151[1];
      *(v138 - 48) = CGRectUnion(*(v138 - 48), v274);
      v117 = v252;
    }

    v259[0] = ++v139;
    v142 += 32;
    v141 += 2;
  }

  while (v241 != v139);
  if (!v262)
  {
    v166 = *v117;
    v167 = *(*v117 + 184);
    if (*(*v117 + 176) == v167)
    {
      goto LABEL_363;
    }

    v168 = v167 - 232;
    v169 = -232;
    v170 = v167 - 232;
    do
    {
      std::allocator_traits<std::allocator<PageLayoutFactory::TextChunk>>::destroy[abi:fe200100]<PageLayoutFactory::TextChunk,void,0>(v170);
      v169 += 232;
      v170 -= 232;
    }

    while (v169);
    goto LABEL_207;
  }

  v259[0] = v117;
  v259[1] = v138 - 232;
  if (*(v117 + 96) != 1)
  {
    Encoding = CGPDFFontGetEncoding(a2);
    if (Encoding)
    {
      v172 = v260;
      if (v260 != &v261)
      {
        v173 = Encoding;
        do
        {
          v174 = v172[4];
          transform.a = 0.0;
          UnicodesForIndex = CGPDFEncodingGetUnicodesForIndex(v173, *(v228 + v174), &transform);
          PageLayoutFactory::ScannerContext::drawGlyphs(CGPDFFont *,CGAffineTransform,CGPoint const*,double const*,unsigned short const*,unsigned short const*,unsigned char const*,unsigned long)::{lambda(unsigned short const*,unsigned long,unsigned long)#1}::operator()(v259, UnicodesForIndex, v174, *&transform.a);
          v176 = v172[1];
          if (v176)
          {
            do
            {
              v177 = v176;
              v176 = *v176;
            }

            while (v176);
          }

          else
          {
            do
            {
              v177 = v172[2];
              _ZF = *v177 == v172;
              v172 = v177;
            }

            while (!_ZF);
          }

          v172 = v177;
        }

        while (v177 != &v261);
      }

      goto LABEL_244;
    }

    if (a7)
    {
      v178 = CGPDFFontGetToUnicodeCMap(a2);
      if (v178)
      {
        ROSUnicodeCMap = v178;
      }

      else
      {
        ROSUnicodeCMap = CGPDFFontGetROSUnicodeCMap(a2);
        if (!ROSUnicodeCMap)
        {
          v183 = 0;
          goto LABEL_231;
        }
      }

      v183 = *(*(ROSUnicodeCMap + 2) + 48);
      if (v183)
      {
        v183 = *(v183 + 16);
        if (v183)
        {
          v183 = *(v183 + 40);
          if (v183 > 0x7FFFFFFFFFFFFFFELL)
          {
            v184 = 0;
LABEL_232:
            v185 = v260;
            if (v260 != &v261)
            {
              do
              {
                v186 = v185[4];
                if (ROSUnicodeCMap && (v187 = *(*(ROSUnicodeCMap + 2) + 48)) != 0)
                {
                  unichars = cmap_bf_set_get_unichars(*(v187 + 16), *(a7 + 2 * v186), v184);
                }

                else
                {
                  unichars = 0;
                }

                PageLayoutFactory::ScannerContext::drawGlyphs(CGPDFFont *,CGAffineTransform,CGPoint const*,double const*,unsigned short const*,unsigned short const*,unsigned char const*,unsigned long)::{lambda(unsigned short const*,unsigned long,unsigned long)#1}::operator()(v259, v184, v186, unichars);
                v189 = v185[1];
                if (v189)
                {
                  do
                  {
                    v190 = v189;
                    v189 = *v189;
                  }

                  while (v189);
                }

                else
                {
                  do
                  {
                    v190 = v185[2];
                    _ZF = *v190 == v185;
                    v185 = v190;
                  }

                  while (!_ZF);
                }

                v185 = v190;
              }

              while (v190 != &v261);
            }

            free(v184);
            goto LABEL_244;
          }
        }
      }

LABEL_231:
      v184 = malloc_type_malloc(2 * v183, 0x51620685uLL);
      goto LABEL_232;
    }

    v166 = *v117;
    v180 = *(*v117 + 184);
    if (*(*v117 + 176) == v180)
    {
      goto LABEL_363;
    }

    v168 = v180 - 232;
    v181 = -232;
    v182 = v180 - 232;
    do
    {
      std::allocator_traits<std::allocator<PageLayoutFactory::TextChunk>>::destroy[abi:fe200100]<PageLayoutFactory::TextChunk,void,0>(v182);
      v181 += 232;
      v182 -= 232;
    }

    while (v181);
LABEL_207:
    *(v166 + 184) = v168;
    goto LABEL_358;
  }

  v160 = *(v117 + 104);
  if (!v160)
  {
    goto LABEL_203;
  }

  v161 = [v160 length];
  std::vector<unsigned short>::resize((v138 - 136), v161);
  [*(v117 + 104) getCharacters:*(v138 - 136)];
  v162 = *(v138 - 152);
  v163 = *(v138 - 160);
  if (v162 == v163)
  {
LABEL_363:
    __break(1u);
    return;
  }

  *v163 = v161;
  v164 = v163 + 1;
  if (v162 - v164 >= 1)
  {
    bzero(v164, v162 - v164);
  }

  v165 = *(v117 + 104);
  *(v117 + 104) = 0;

LABEL_203:
  *(v117 + 96) = 0;
LABEL_244:
  memmove(*(v138 - 232), glyphs, 2 * a9);
  if (v262 == (*(v138 - 224) - *(v138 - 232)) >> 1)
  {
    goto LABEL_358;
  }

  v191 = v260;
  memset(&transform, 0, 32);
  LODWORD(transform.tx) = 1065353216;
  if (v260 == &v261)
  {
    goto LABEL_269;
  }

  while (2)
  {
    v192 = v191[4];
    if (!*&transform.b)
    {
      goto LABEL_262;
    }

    v193 = vcnt_s8(*&transform.b);
    v193.i16[0] = vaddlv_u8(v193);
    if (v193.u32[0] > 1uLL)
    {
      v194 = v191[4];
      if (v192 >= *&transform.b)
      {
        v194 = v192 % *&transform.b;
      }
    }

    else
    {
      v194 = (*&transform.b - 1) & v192;
    }

    v195 = *(*&transform.a + 8 * v194);
    if (!v195 || (v196 = *v195) == 0)
    {
LABEL_262:
      operator new();
    }

    while (2)
    {
      v197 = v196[1];
      if (v197 != v192)
      {
        if (v193.u32[0] > 1uLL)
        {
          if (v197 >= *&transform.b)
          {
            v197 %= *&transform.b;
          }
        }

        else
        {
          v197 &= *&transform.b - 1;
        }

        if (v197 != v194)
        {
          goto LABEL_262;
        }

        goto LABEL_261;
      }

      if (v196[2] != v192)
      {
LABEL_261:
        v196 = *v196;
        if (!v196)
        {
          goto LABEL_262;
        }

        continue;
      }

      break;
    }

    v198 = v191[1];
    if (v198)
    {
      do
      {
        v199 = v198;
        v198 = *v198;
      }

      while (v198);
    }

    else
    {
      do
      {
        v199 = v191[2];
        _ZF = *v199 == v191;
        v191 = v199;
      }

      while (!_ZF);
    }

    v191 = v199;
    if (v199 != &v261)
    {
      continue;
    }

    break;
  }

LABEL_269:
  v201 = *(v138 - 232);
  v200 = *(v138 - 224);
  if (v201 == v200 || !*&transform.c)
  {
    v202 = *(v138 - 232);
LABEL_279:
    if (v202 == v200)
    {
      goto LABEL_292;
    }

    v204 = v202 + 1;
    if (v202 + 1 != v200)
    {
      v205 = transform.c;
      do
      {
        if (v205 != 0.0)
        {
          v206 = v205;
          while (*(*&v206 + 16) != v204 - v201)
          {
            v206 = **&v206;
            if (v206 == 0.0)
            {
              goto LABEL_288;
            }
          }

          *v202++ = *v204;
        }

LABEL_288:
        ++v204;
      }

      while (v204 != v200);
    }

    if (v202 <= v200)
    {
      if (v202 != v200)
      {
        *(v138 - 224) = v202;
      }

      goto LABEL_292;
    }

    goto LABEL_363;
  }

  v202 = *(v138 - 232);
  do
  {
    v203 = transform.c;
    while (*(*&v203 + 16) != v202 - v201)
    {
      v203 = **&v203;
      if (v203 == 0.0)
      {
        goto LABEL_279;
      }
    }

    ++v202;
  }

  while (v202 != v200);
LABEL_292:
  v208 = *(v138 - 208);
  v207 = *(v138 - 200);
  if (v208 == v207 || !*&transform.c)
  {
LABEL_301:
    if (v208 == v207)
    {
      goto LABEL_313;
    }

    v211 = v208 + 2;
    if (v208 + 2 != v207)
    {
      do
      {
        v212 = transform.c;
        if (*&transform.c)
        {
          while (*(*&v212 + 16) != (v211 - *(v138 - 208)) >> 5)
          {
            v212 = **&v212;
            if (v212 == 0.0)
            {
              goto LABEL_308;
            }
          }

          v213 = v211[1];
          *v208 = *v211;
          v208[1] = v213;
          v208 += 2;
        }

LABEL_308:
        v211 += 2;
      }

      while (v211 != v207);
      v207 = *(v138 - 200);
    }

    if (v208 <= v207)
    {
      if (v208 != v207)
      {
        *(v138 - 200) = v208;
      }

      goto LABEL_313;
    }

    goto LABEL_363;
  }

  v209 = *(v138 - 208);
  do
  {
    v210 = transform.c;
    while (*(*&v210 + 16) != (v209 - v208) >> 5)
    {
      v210 = **&v210;
      if (v210 == 0.0)
      {
        v208 = v209;
        goto LABEL_301;
      }
    }

    v209 += 2;
  }

  while (v209 != v207);
LABEL_313:
  v215 = *(v138 - 184);
  v214 = *(v138 - 176);
  if (v215 == v214 || !*&transform.c)
  {
LABEL_322:
    if (v215 == v214)
    {
      goto LABEL_334;
    }

    v218 = v215 + 2;
    if (v215 + 2 != v214)
    {
      do
      {
        v219 = transform.c;
        if (*&transform.c)
        {
          while (*(*&v219 + 16) != (v218 - *(v138 - 184)) >> 5)
          {
            v219 = **&v219;
            if (v219 == 0.0)
            {
              goto LABEL_329;
            }
          }

          v220 = v218[1];
          *v215 = *v218;
          v215[1] = v220;
          v215 += 2;
        }

LABEL_329:
        v218 += 2;
      }

      while (v218 != v214);
      v214 = *(v138 - 176);
    }

    if (v215 <= v214)
    {
      if (v215 != v214)
      {
        *(v138 - 176) = v215;
      }

      goto LABEL_334;
    }

    goto LABEL_363;
  }

  v216 = *(v138 - 184);
  do
  {
    v217 = transform.c;
    while (*(*&v217 + 16) != (v216 - v215) >> 5)
    {
      v217 = **&v217;
      if (v217 == 0.0)
      {
        v215 = v216;
        goto LABEL_322;
      }
    }

    v216 += 2;
  }

  while (v216 != v214);
LABEL_334:
  v222 = *(v138 - 160);
  v221 = *(v138 - 152);
  if (v222 == v221 || !*&transform.c)
  {
    v223 = *(v138 - 160);
LABEL_344:
    if (v223 == v221)
    {
      goto LABEL_357;
    }

    v225 = v223 + 1;
    if (v223 + 1 != v221)
    {
      v226 = transform.c;
      do
      {
        if (v226 != 0.0)
        {
          v227 = v226;
          while (*(*&v227 + 16) != v225 - v222)
          {
            v227 = **&v227;
            if (v227 == 0.0)
            {
              goto LABEL_353;
            }
          }

          *v223++ = *v225;
        }

LABEL_353:
        ++v225;
      }

      while (v225 != v221);
    }

    if (v223 <= v221)
    {
      if (v223 != v221)
      {
        *(v138 - 152) = v223;
      }

      goto LABEL_357;
    }

    goto LABEL_363;
  }

  v223 = *(v138 - 160);
  do
  {
    v224 = transform.c;
    while (*(*&v224 + 16) != v223 - v222)
    {
      v224 = **&v224;
      if (v224 == 0.0)
      {
        goto LABEL_344;
      }
    }

    ++v223;
  }

  while (v223 != v221);
LABEL_357:
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(&transform);
LABEL_358:
  std::__tree<unsigned long>::destroy(v261);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_183FF2BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, ...)
{
  va_start(va, a49);
  std::__tree<unsigned long>::destroy(a48);
  PageLayout::CharacterStyle::~CharacterStyle(va);
  _Unwind_Resume(a1);
}

PageLayoutFactory::TextChunk *PageLayoutFactory::TextChunk::TextChunk(PageLayoutFactory::TextChunk *this, unint64_t a2, double a3, double a4, CGFont *a5, double a6, double a7, CGSize a8, uint64_t a9, char a10, uint64_t a11)
{
  height = a8.height;
  width = a8.width;
  v23 = std::vector<unsigned short>::vector[abi:fe200100](this, a2);
  std::vector<CGRect>::vector[abi:fe200100](v23 + 3, a2);
  std::vector<CGRect>::vector[abi:fe200100](this + 6, a2);
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:fe200100](this + 9, a2);
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a3;
  *(this + 16) = a4;
  *(this + 17) = a5;
  *(this + 18) = a6;
  *(this + 19) = a7;
  *(this + 20) = width;
  *(this + 21) = height;
  *(this + 22) = a9;
  *(this + 184) = CGRectNull;
  *(this + 216) = a10;
  *(this + 28) = a11;
  std::vector<unsigned short>::reserve(this + 12, 0);
  return this;
}

void sub_183FF2D8C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 24);
  if (v6)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(uint64_t result, unint64_t a2, void *a3)
{
  v3 = *(result + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void std::vector<unsigned short>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 1;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 2 * a2);
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 1)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        v8 = &v7[-v3];
        if (v8 <= a2)
        {
          v9 = a2;
        }

        else
        {
          v9 = v8;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(v10);
      }

      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    bzero(a1[1], 2 * v6);
    v11 = &v4[2 * v6];
  }

  a1[1] = v11;
}

void PageLayoutFactory::ScannerContext::drawGlyphs(CGPDFFont *,CGAffineTransform,CGPoint const*,double const*,unsigned short const*,unsigned short const*,unsigned char const*,unsigned long)::{lambda(unsigned short const*,unsigned long,unsigned long)#1}::operator()(uint64_t *result, unsigned __int16 *a2, unint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = a4;
    v7 = a2;
    v8 = *result;
    v9 = 2 * a4;
    v10 = 2 * a4;
    v11 = a2;
    while (1)
    {
      v12 = MEMORY[0x1865EFD70](*v11);
      if (v12 == 1 || v12 == 13)
      {
        break;
      }

      ++v11;
      v10 -= 2;
      if (!v10)
      {
        v14 = result[1];
        do
        {
          std::vector<unsigned short>::push_back[abi:fe200100](v14 + 96, v7++);
          v9 -= 2;
        }

        while (v9);
        goto LABEL_19;
      }
    }

    *(*(*v8 + 40) + 40) = 1;
    v15 = v6 - 1;
    if (v6 - 1 >= 0)
    {
      v16 = v6;
      do
      {
        if (v15 && (v17 = v16 - 2, v18 = &v7[v16 - 2], (*v18 & 0xFC00) == 0xD800) && (v7[v15] & 0xFC00) == 0xDC00)
        {
          std::vector<unsigned short>::push_back[abi:fe200100](result[1] + 96, v18);
          std::vector<unsigned short>::push_back[abi:fe200100](result[1] + 96, &v7[v15]);
          v15 = v17;
        }

        else
        {
          std::vector<unsigned short>::push_back[abi:fe200100](result[1] + 96, &v7[v15]);
        }

        v16 = v15--;
      }

      while ((v15 & 0x80000000) == 0);
    }

LABEL_19:
    v19 = *(result[1] + 72);
    if (a3 >= (*(result[1] + 80) - v19) >> 3)
    {
      goto LABEL_24;
    }

LABEL_23:
    *(v19 + 8 * a3) = v6;
    return;
  }

  v19 = *(result[1] + 72);
  if (a3 < (*(result[1] + 80) - v19) >> 3)
  {
    v6 = 0;
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
}

void std::__tree<unsigned long>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<unsigned long>::destroy(*a1);
    std::__tree<unsigned long>::destroy(a1[1]);

    operator delete(a1);
  }
}

void PageLayout::CharacterStyle::~CharacterStyle(PageLayout::CharacterStyle *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::vector<unsigned short>::push_back[abi:fe200100](uint64_t a1, unsigned __int16 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(v12);
    }

    v13 = (2 * v9);
    v14 = *a2;
    v15 = &v13[-(v8 >> 1)];
    *v13 = v14;
    v6 = v13 + 1;
    memcpy(v15, v7, v8);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::allocator_traits<std::allocator<PageLayoutFactory::TextChunk>>::destroy[abi:fe200100]<PageLayoutFactory::TextChunk,void,0>(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;

    operator delete(v6);
  }
}

uint64_t std::__split_buffer<PageLayoutFactory::TextChunk>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 232;
    std::allocator_traits<std::allocator<PageLayoutFactory::TextChunk>>::destroy[abi:fe200100]<PageLayoutFactory::TextChunk,void,0>(v3 - 232);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::vector<unsigned short>::vector[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:fe200100](a1, a2);
  }

  return a1;
}

void sub_183FF3404(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<CGRect>::vector[abi:fe200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<CGRect>>(a2);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  return a1;
}

void sub_183FF3494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned short>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(a2);
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<CGRect>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<unsigned short>::__vallocate[abi:fe200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned short>>(a2);
  }

  std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
}

void PageLayoutFactory::ScannerContext::op_doublequote(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v16 = 0.0;
  value = 0;
  v15 = 0.0;
  if (CGPDFScannerPopString(this, &value) && CGPDFScannerPopNumber(this, &v16) && CGPDFScannerPopNumber(this, &v15))
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 3);
      if (v5)
      {
        v6 = v16;
        *(v5 + 88) = v16;
        v7 = *(v5 + 288);
        if (v7)
        {
          *v7 = v6;
        }

        v8 = *(a2 + 3);
        if (v8)
        {
          v9 = v15;
          *(v8 + 96) = v15;
          v10 = *(v8 + 288);
          if (v10)
          {
            *(v10 + 8) = v9;
          }
        }
      }

      TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
      v12 = TextObject;
      v13 = *(a2 + 3);
      if (v13)
      {
        v14 = *(v13 + 112);
      }

      else
      {
        v14 = 0.0;
      }

      CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v14);
      CGPDFTextObjectAppendString(v12, value);
      CGPDFTextLayoutDrawGlyphs(*(v12 + 168), PageLayoutFactory::ScannerContext::appendTextLayout(CGPDFTextLayout *)::{lambda(void *,CGPDFFont *,CGAffineTransform,CGPoint const*,double const*,unsigned short const*,unsigned short const*,unsigned char const*,unsigned long)#1}::__invoke, a2);
    }

    else
    {
    }
  }
}

void PageLayoutFactory::ScannerContext::op_singlequote(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopString(this, &value))
  {
    if (*(a2 + 32))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
      v5 = TextObject;
      v6 = *(a2 + 3);
      if (v6)
      {
        v7 = *(v6 + 112);
      }

      else
      {
        v7 = 0.0;
      }

      CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v7);
      CGPDFTextObjectAppendString(v5, value);
      CGPDFTextLayoutDrawGlyphs(*(v5 + 168), PageLayoutFactory::ScannerContext::appendTextLayout(CGPDFTextLayout *)::{lambda(void *,CGPDFFont *,CGAffineTransform,CGPoint const*,double const*,unsigned short const*,unsigned short const*,unsigned char const*,unsigned long)#1}::__invoke, a2);
    }

    else
    {
    }
  }
}

void PageLayoutFactory::ScannerContext::op_Tj(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopString(this, &value))
  {
    if (*(a2 + 32))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
      CGPDFTextObjectAppendString(TextObject, value);
      CGPDFTextLayoutDrawGlyphs(*(TextObject + 21), PageLayoutFactory::ScannerContext::appendTextLayout(CGPDFTextLayout *)::{lambda(void *,CGPDFFont *,CGAffineTransform,CGPoint const*,double const*,unsigned short const*,unsigned short const*,unsigned char const*,unsigned long)#1}::__invoke, a2);
    }

    else
    {
    }
  }
}

void PageLayoutFactory::ScannerContext::op_Tstar(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  if (*(a2 + 32))
  {
    TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
    v6 = *(a2 + 3);
    if (v6)
    {
      v7 = *(v6 + 112);
    }

    else
    {
      v7 = 0.0;
    }

    CGPDFTextObjectMoveToNextLine(TextObject, 0.0, -v7);
  }

  else
  {
  }
}

void PageLayoutFactory::ScannerContext::op_Tm(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &v12) && CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v14) && CGPDFScannerPopNumber(this, &v15) && CGPDFScannerPopNumber(this, &v16) && CGPDFScannerPopNumber(this, &v17))
  {
    if (*(a2 + 32))
    {
      v5 = v12;
      v6 = value;
      v7 = v14;
      v8 = v15;
      v9 = v16;
      v10 = v17;
      TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
      *(TextObject + 9) = v10;
      *(TextObject + 10) = v9;
      *(TextObject + 11) = v8;
      *(TextObject + 12) = v7;
      *(TextObject + 13) = v6;
      *(TextObject + 14) = v5;
      *(TextObject + 15) = v10;
      *(TextObject + 16) = v9;
      *(TextObject + 17) = v8;
      *(TextObject + 18) = v7;
      *(TextObject + 19) = v6;
      *(TextObject + 20) = v5;
    }

    else
    {
    }
  }
}

void PageLayoutFactory::ScannerContext::op_TD(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v9 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &v9) && CGPDFScannerPopNumber(this, &value))
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 3);
      if (v5)
      {
        v6 = -v9;
        *(v5 + 112) = -v9;
        v7 = *(v5 + 288);
        if (v7)
        {
          *(v7 + 24) = v6;
        }
      }

      TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
      CGPDFTextObjectMoveToNextLine(TextObject, value, v9);
    }

    else
    {
    }
  }
}

void PageLayoutFactory::ScannerContext::op_Td(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v6 = 0.0;
  value = 0.0;
  if (CGPDFScannerPopNumber(this, &v6) && CGPDFScannerPopNumber(this, &value))
  {
    if (*(a2 + 32))
    {
      TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
      CGPDFTextObjectMoveToNextLine(TextObject, value, v6);
    }

    else
    {
    }
  }
}

void PageLayoutFactory::ScannerContext::op_ET(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  if (*(a2 + 32))
  {
    *(a2 + 32) = 0;
  }

  else
  {
  }
}

CGFloat PageLayoutFactory::ScannerContext::op_BT(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  if (*(a2 + 32) == 1)
  {

    pdf_error("warning: already in a text object.");
  }

  else
  {
    *(a2 + 32) = 1;
    TextObject = CGPDFGStateGetTextObject(*(a2 + 3));
    result = CGAffineTransformIdentity.a;
    *(TextObject + 72) = CGAffineTransformIdentity;
    *(TextObject + 120) = CGAffineTransformIdentity;
  }

  return result;
}

BOOL PageLayoutFactory::ScannerContext::op_Ts(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(this, &value);
  if (result)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v6 = value;
      *(v5 + 120) = value;
      v7 = *(v5 + 288);
      if (v7)
      {
        *(v7 + 32) = v6;
      }
    }
  }

  return result;
}

void PageLayoutFactory::ScannerContext::op_Tr(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopInteger(this, &value))
  {
    v4 = value;
    if (value >= 8)
    {
      pdf_error("invalid text drawing mode: %ld.", value);
    }

    else
    {
      v5 = *(a2 + 3);
      if (v5)
      {
        *(v5 + 128) = value;
        v6 = *(v5 + 288);
        if (v6)
        {
          CGPDFTextObjectSetTextDrawingMode(v6, v4);
        }
      }
    }
  }
}

void PageLayoutFactory::ScannerContext::op_Tf(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v22 = 0;
  value[0] = 0.0;
  if (!CGPDFScannerPopNumber(this, value) || !CGPDFScannerPopName(this, &v22))
  {
    return;
  }

  Font = CGPDFContentStreamGetFont(*(this + 7), v22);
  if (!Font)
  {
    return;
  }

  v6 = Font;
  v7 = COERCE_DOUBLE(CGPDFFontGetFont(Font));
  v8 = v7;
  if (v7 == 0.0)
  {
    v24 = 0.0;
    v9 = *a2;
  }

  else
  {
    CFRetain(*&v7);
    v24 = v8;
    v9 = *a2;
    CFRetain(*&v8);
  }

  value[1] = v8;
  value[2] = -1.0;
  v10 = 0x9DDFEA08EB382D69 * ((8 * (LODWORD(v8) & 0x1FFFFFFF) + 8) ^ HIDWORD(*&v8));
  v11 = 0x9DDFEA08EB382D69 * (HIDWORD(*&v8) ^ (v10 >> 47) ^ v10);
  v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
  v13 = v9[13];
  if (!*&v13)
  {
    goto LABEL_25;
  }

  v14 = vcnt_s8(v13);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
    if (v12 >= *&v13)
    {
      v15 = v12 % *&v13;
    }
  }

  else
  {
    v15 = v12 & (*&v13 - 1);
  }

  v16 = *(v9[12] + 8 * v15);
  if (!v16 || (v17 = *v16) == 0)
  {
LABEL_25:
    operator new();
  }

  while (1)
  {
    v18 = v17[1];
    if (v18 == v12)
    {
      break;
    }

    if (v14.u32[0] > 1uLL)
    {
      if (v18 >= *&v13)
      {
        v18 %= *&v13;
      }
    }

    else
    {
      v18 &= *&v13 - 1;
    }

    if (v18 != v15)
    {
      goto LABEL_25;
    }

LABEL_24:
    v17 = *v17;
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  if (v17[2] != *&v8)
  {
    goto LABEL_24;
  }

  if (v8 != 0.0)
  {
    CFRelease(*&v8);
    CFRelease(*&v8);
  }

  CGPDFGStateSetFont(*(a2 + 3), v6);
  v19 = *(a2 + 3);
  if (v19)
  {
    v20 = value[0];
    *(v19 + 144) = value[0];
    v21 = *(v19 + 288);
    if (v21)
    {
      *(v21 + 56) = v20;
    }
  }
}

void sub_183FF4598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, const void *a20, __int16 a22, char a23, char a24)
{
  operator delete(v23);
  applesauce::CF::ObjectRef<CGFont *>::~ObjectRef(&a20);
  _Unwind_Resume(a1);
}

const void **std::pair<applesauce::CF::ObjectRef<CGFont *> const,double>::~pair(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<std::string,unsigned int>>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__split_buffer<std::pair<std::string,unsigned int>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<CGFont *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::ObjectRef<CGFont *>,double>,void *>>>>::~unique_ptr[abi:fe200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:fe200100]<std::pair<applesauce::CF::ObjectRef<CGFont *> const,double>,0>(v2[2]);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:fe200100]<std::pair<applesauce::CF::ObjectRef<CGFont *> const,double>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

BOOL PageLayoutFactory::ScannerContext::op_TL(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(this, &value);
  if (result)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v6 = value;
      *(v5 + 112) = value;
      v7 = *(v5 + 288);
      if (v7)
      {
        *(v7 + 24) = v6;
      }
    }
  }

  return result;
}

BOOL PageLayoutFactory::ScannerContext::op_Tz(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(this, &value);
  if (result)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v6 = value;
      *(v5 + 104) = value;
      v7 = *(v5 + 288);
      if (v7)
      {
        *(v7 + 16) = v6;
      }
    }
  }

  return result;
}

BOOL PageLayoutFactory::ScannerContext::op_Tw(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(this, &value);
  if (result)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v6 = value;
      *(v5 + 96) = value;
      v7 = *(v5 + 288);
      if (v7)
      {
        *(v7 + 8) = v6;
      }
    }
  }

  return result;
}

BOOL PageLayoutFactory::ScannerContext::op_Tc(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0.0;
  result = CGPDFScannerPopNumber(this, &value);
  if (result)
  {
    v5 = *(a2 + 3);
    if (v5)
    {
      v6 = value;
      *(v5 + 88) = value;
      v7 = *(v5 + 288);
      if (v7)
      {
        *v7 = v6;
      }
    }
  }

  return result;
}

void PageLayoutFactory::ScannerContext::op_scn(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  FillColor = CGPDFGStateGetFillColor(*(a2 + 3));
  if (FillColor)
  {
    if ((FillColor & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(FillColor);
    }

    else
    {
      ColorSpace = *(FillColor + 24);
    }
  }

  else
  {
    ColorSpace = 0;
  }

  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelPattern)
  {

    PageLayoutFactory::ScannerContext::set_color(this, a2, ColorSpace, v7);
  }
}

void PageLayoutFactory::ScannerContext::set_color(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, PageLayoutFactory::ScannerContext *a3, CGColorSpace *a4)
{
  ColorSpace = a3;
  if (a3)
  {
LABEL_2:
    v7 = *(*(ColorSpace + 3) + 48);
    v8 = v7 + 1;
    if ((v7 + 1) > 0x1FFFFFFFFFFFFFFELL)
    {
      return;
    }

    goto LABEL_12;
  }

  FillColor = CGPDFGStateGetFillColor(*(a2 + 3));
  if (FillColor)
  {
    if ((FillColor & 0x8000000000000000) != 0)
    {
      ColorSpace = CGTaggedColorGetColorSpace(FillColor);
      if (ColorSpace)
      {
        goto LABEL_2;
      }
    }

    else
    {
      ColorSpace = *(FillColor + 24);
      if (ColorSpace)
      {
        goto LABEL_2;
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = 0;
    ColorSpace = 0;
  }

  v8 = 1;
LABEL_12:
  v10 = malloc_type_malloc(8 * v8, 0x84D48EFBuLL);
  if (v10)
  {
    v11 = v10;
    if (v7)
    {
      v12 = v7 - 1;
      while (1)
      {
        value = 0.0;
        if (!CGPDFScannerPopNumber(this, &value))
        {
          break;
        }

        v11[v12--] = value;
        if (v12 == -1)
        {
          goto LABEL_17;
        }
      }

      pdf_error("missing or invalid arguments for color operator.");
    }

    else
    {
LABEL_17:
      v13 = *(a2 + 3);
      if (v13)
      {
        v14 = *(v13 + 216);
      }

      else
      {
        v14 = 1.0;
      }

      v11[v7] = v14;
      v15 = CGColorCreate(ColorSpace, v11);
      CGPDFGStateSetFillColor(*(a2 + 3), v15);
      if (v15)
      {
        CFRelease(v15);
      }
    }

    free(v11);
  }
}

void PageLayoutFactory::ScannerContext::op_cs(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  value = 0;
  if (CGPDFScannerPopName(this, &value))
  {
    v5 = *(this + 7);
    if (v5)
    {
      v6 = value;
      v7 = v5;
      while (1)
      {
        ColorSpace = CGPDFResourcesGetColorSpace(*(v7 + 32), v6);
        if (ColorSpace)
        {
          break;
        }

        v7 = *(v7 + 40);
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      v9 = ColorSpace;
    }

    else
    {
LABEL_6:
      v9 = 0;
    }

    ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v5, v9);
    if (ResolvedColorSpace)
    {
      v11 = ResolvedColorSpace;
      v12 = CGColorSpaceCopyDefaultColor(ResolvedColorSpace);
      CGPDFGStateSetFillColor(*(a2 + 3), v12);
      CGColorSpaceRelease(v11);
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }
}

void PageLayoutFactory::ScannerContext::op_rg(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + 7);
    while (1)
    {
      ColorSpace = CGPDFResourcesGetColorSpace(*(v6 + 32), "DeviceRGB");
      if (ColorSpace)
      {
        break;
      }

      v6 = *(v6 + 40);
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v8 = ColorSpace;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v5, v8);
  PageLayoutFactory::ScannerContext::set_color(this, a2, ResolvedColorSpace, v10);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void PageLayoutFactory::ScannerContext::op_k(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + 7);
    while (1)
    {
      ColorSpace = CGPDFResourcesGetColorSpace(*(v6 + 32), "DeviceCMYK");
      if (ColorSpace)
      {
        break;
      }

      v6 = *(v6 + 40);
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v8 = ColorSpace;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v5, v8);
  PageLayoutFactory::ScannerContext::set_color(this, a2, ResolvedColorSpace, v10);

  CGColorSpaceRelease(ResolvedColorSpace);
}

void PageLayoutFactory::ScannerContext::op_g(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v5 = *(this + 7);
  if (v5)
  {
    v6 = *(this + 7);
    while (1)
    {
      ColorSpace = CGPDFResourcesGetColorSpace(*(v6 + 32), "DeviceGray");
      if (ColorSpace)
      {
        break;
      }

      v6 = *(v6 + 40);
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v8 = ColorSpace;
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  ResolvedColorSpace = CGPDFContentStreamCreateResolvedColorSpace(v5, v8);
  PageLayoutFactory::ScannerContext::set_color(this, a2, ResolvedColorSpace, v10);

  CGColorSpaceRelease(ResolvedColorSpace);
}

double PageLayoutFactory::ScannerContext::op_cm(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  value = 0.0;
  v9 = 0.0;
  if (CGPDFScannerPopNumber(this, &value) && CGPDFScannerPopNumber(this, &v9) && CGPDFScannerPopNumber(this, &v10) && CGPDFScannerPopNumber(this, &v11) && CGPDFScannerPopNumber(this, &v12) && CGPDFScannerPopNumber(this, &v13))
  {
    v6 = *(a2 + 3);
    v7[0] = v13;
    v7[1] = v12;
    v7[2] = v11;
    v7[3] = v10;
    v7[4] = v9;
    v7[5] = value;
    *&result = *&CGPDFGStateConcatCTM(v6, v7);
  }

  return result;
}

void PageLayoutFactory::ScannerContext::op_Q(PageLayoutFactory::ScannerContext *this, CGPDFScanner *a2, void *a3)
{
  if (*(a2 + 32) == 1)
  {
  }

  else
  {
    v5 = *(a2 + 23);
    v4 = (a2 + 176);
    if (v5 == *(a2 + 22) || (v7 = *(v5 - 8), v6 = v5 - 8, std::__destroy_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPath *>,0>(v7), *(a2 + 23) = v6, *(a2 + 22) == v6))
    {
      pdf_error("warning: gstate path stack underflow.");
      Mutable = CGPathCreateMutable();
      v9 = Mutable;
      v11 = *(a2 + 23);
      v10 = *(a2 + 24);
      if (v11 >= v10)
      {
        v13 = (v11 - *v4) >> 3;
        if ((v13 + 1) >> 61)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v14 = v10 - *v4;
        v15 = v14 >> 2;
        if (v14 >> 2 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        v22 = v4;
        if (v16)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v16);
        }

        v18 = 0;
        v19 = (8 * v13);
        *v19 = v9;
        v20 = 8 * v13 + 8;
        v21 = 0;
        std::vector<applesauce::CF::ObjectRef<CGPath *>>::__swap_out_circular_buffer(v4, &v18);
        v12 = *(a2 + 23);
        std::__split_buffer<applesauce::CF::ObjectRef<CGPath *>>::~__split_buffer(&v18);
      }

      else
      {
        *v11 = Mutable;
        v12 = v11 + 1;
      }

      *(a2 + 23) = v12;
    }

    CGPDFRStateGRestore(*(a2 + 2));
    v17 = *(a2 + 2);
    if (v17)
    {
      v17 = *v17;
    }

    *(a2 + 3) = v17;
  }
}

void PageLayoutFactory::ScannerContext::op_q(PageLayoutFactory::ScannerContext *this, __int128 ***a2, void *a3)
{
  if (*(a2 + 32) == 1)
  {
  }

  else
  {
    CGPDFRStateGSave(a2[2]);
    v4 = a2[2];
    if (v4)
    {
      v4 = *v4;
    }

    a2[3] = v4;
    v5 = a2[23];
    v6 = a2 + 22;
    if (a2[22] == v5)
    {
      __break(1u);
    }

    else
    {
      MutableCopy = CGPathCreateMutableCopy(*(v5 - 1));
      v8 = a2[23];
      v9 = a2[24];
      if (v8 >= v9)
      {
        v11 = (v8 - *v6) >> 3;
        if ((v11 + 1) >> 61)
        {
          std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
        }

        v12 = v9 - *v6;
        v13 = v12 >> 2;
        if (v12 >> 2 <= (v11 + 1))
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        v15[4] = a2 + 22;
        if (v14)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v14);
        }

        v15[0] = 0;
        v15[1] = 8 * v11;
        v15[3] = 0;
        std::construct_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPath *>,applesauce::CF::ObjectRef<CGPath *> const&,applesauce::CF::ObjectRef<CGPath *>*>((8 * v11), MutableCopy);
        v15[2] = 8 * v11 + 8;
        std::vector<applesauce::CF::ObjectRef<CGPath *>>::__swap_out_circular_buffer((a2 + 22), v15);
        v10 = a2[23];
        std::__split_buffer<applesauce::CF::ObjectRef<CGPath *>>::~__split_buffer(v15);
      }

      else
      {
        v10 = (std::construct_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPath *>,applesauce::CF::ObjectRef<CGPath *> const&,applesauce::CF::ObjectRef<CGPath *>*>(v8, MutableCopy) + 1);
      }

      a2[23] = v10;
      if (MutableCopy)
      {
        CFRelease(MutableCopy);
      }
    }
  }
}

void *std::construct_at[abi:fe200100]<applesauce::CF::ObjectRef<CGPath *>,applesauce::CF::ObjectRef<CGPath *> const&,applesauce::CF::ObjectRef<CGPath *>*>(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

uint64_t compareAnchorXIncreasingYDecreasing(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  v4 = *a2;
  v5 = *(*a2 + 96);
  if (v3 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 > v5)
  {
    return 1;
  }

  v7 = *(v2 + 104);
  v8 = *(v4 + 104);
  if (v7 > v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 < v8)
  {
    return 1;
  }

  v9 = *(v2 + 144);
  v10 = *(v4 + 144);
  if (v9 < v10)
  {
    return 0xFFFFFFFFLL;
  }

  return v9 > v10;
}

uint64_t compareAnchorYDecreasingXIncreasing(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = *a2;
  v5 = *(*a2 + 104);
  if (v3 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 < v5)
  {
    return 1;
  }

  v7 = *(v2 + 96);
  v8 = *(v4 + 96);
  if (v7 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 > v8)
  {
    return 1;
  }

  v9 = *(v2 + 144);
  v10 = *(v4 + 144);
  if (v9 < v10)
  {
    return 0xFFFFFFFFLL;
  }

  return v9 > v10;
}

uint64_t compareAnchorYDecreasingXIncreasingApprox(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  v4 = *(*a2 + 96);
  v5 = *(*a2 + 104);
  if (vabdd_f64(v3, v5) > 0.2)
  {
    if (v3 > v5)
    {
      return 0xFFFFFFFFLL;
    }

    if (v3 < v5)
    {
      return 1;
    }
  }

  if (v2 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v4)
  {
    return 1;
  }

  v7 = *(*a1 + 144);
  v8 = *(*a2 + 144);
  if (v7 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  return v7 > v8;
}

void PDFShadingRelease(void *a1)
{
  if (a1)
  {
    if ((*a1)-- == 1)
    {
      v3 = a1[2];
      if (v3)
      {
        CFRelease(v3);
      }

      free(a1);
    }
  }
}

BOOL CGFontGetGlyphAdvances(CGFontRef font, const CGGlyph *glyphs, size_t count, int *advances)
{
  v5 = count;
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1EEE9AC00](16 * count);
  v11 = (&v19[-1] - v9 - 7);
  if (v10 <= 0xFFFFFFFFFFFFFFELL)
  {
    v12 = (&v19[-1] - v9 - 7);
  }

  else
  {
    v12 = 0;
  }

  if (v10 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000042)
  {
    v12 = malloc_type_malloc(v8, 0x4251B57CuLL);
  }

  if (!v12)
  {
    return 0;
  }

  if (font && ((font_info = get_font_info(font)) == 0 ? (v14 = 1) : (v14 = font_info[104] ^ 1u), (*(*(font + 2) + 312))(*(font + 14), 0, v14, glyphs, v5, v12)))
  {
    if (v5)
    {
      v16 = v12;
      do
      {
        v17 = *v16;
        v16 += 2;
        *advances++ = v17;
        --v5;
      }

      while (v5);
    }

    v18 = 1;
    result = 1;
  }

  else
  {
    v18 = 0;
    result = 0;
  }

  if (v12 != v11)
  {
    free(v12);
    return v18;
  }

  return result;
}

void *CGFontGetGlyphBBoxesForStyle(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v11 = result;
    font_info = get_font_info(result);
    if (font_info)
    {
      if (font_info[104])
      {
        a3 = a3 & 0xFFFFFFFE;
      }

      else
      {
        a3 = a3;
      }
    }

    v13 = *(v11[2] + 320);
    v14 = v11[14];

    return v13(v14, a2, a3, a4, a5, a6);
  }

  return result;
}

double CGFontGetContainingBoundingBoxForGlyphs(void *a1, uint64_t a2, uint64_t a3)
{
  width = 0.0;
  x = INFINITY;
  if (a1)
  {
    v5 = a3;
    height = 0.0;
    if (a3)
    {
      memset(&v13, 0, sizeof(v13));
      y = INFINITY;
      x = INFINITY;
      do
      {
        font_info = get_font_info(a1);
        if (font_info)
        {
          v11 = font_info[104] ^ 1u;
        }

        else
        {
          v11 = 1;
        }

        if ((*(a1[2] + 320))(a1[14], 0, v11, a2, 1, &v13))
        {
          v14.origin.x = x;
          v14.origin.y = y;
          v14.size.width = width;
          v14.size.height = height;
          v15 = CGRectUnion(v14, v13);
          x = v15.origin.x;
          y = v15.origin.y;
          width = v15.size.width;
          height = v15.size.height;
        }

        a2 += 2;
        --v5;
      }

      while (v5);
    }
  }

  return x;
}

uint64_t CGFontGetGlyphVerticalAdvances(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 328))(*(result + 112));
  }

  return result;
}

uint64_t CGFontGetGlyphVerticalOffsets(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 336))(*(result + 112));
  }

  return result;
}

CGGlyph CGFontGetGlyphWithGlyphName(CGFontRef font, CFStringRef name)
{
  Length = CFStringGetLength(name);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
  v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x6DD08EF1uLL);
  v9 = v6;
  if (CFStringGetCString(name, v6, MaximumSizeForEncoding + 1, 0x600u))
  {
    v8 = 0;
    if (font)
    {
      (*(*(font + 2) + 288))(*(font + 14), &v9, &v8, 1);
      v6 = v9;
    }

    free(v6);
    return v8;
  }

  else
  {
    free(v6);
    return 0;
  }
}

uint64_t CGFontGetGlyphsForGlyphNames(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 288))(*(result + 112));
  }

  return result;
}

CFStringRef CGFontCopyGlyphNameForGlyph(CGFontRef font, CGGlyph glyph)
{
  if (!font)
  {
    v7 = malloc_type_malloc(1uLL, 0x10D13B9FuLL);
    goto LABEL_7;
  }

  v2 = glyph;
  v4 = (*(*(font + 2) + 296))(*(font + 14));
  v5 = v4 + 1;
  if (v4 != -1)
  {
    v7 = malloc_type_malloc(v4 + 1, 0x10D13B9FuLL);
    if ((*(*(font + 2) + 304))(*(font + 14), v2, v7, v5))
    {
      v6 = CFStringCreateWithCString(0, v7, 0x600u);
LABEL_8:
      free(v7);
      return v6;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t CGFontGetGlyphNameMaxLength(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 296))(*(result + 112));
  }

  return result;
}

uint64_t CGFontGetGlyphNameForGlyph(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 304))(*(result + 112));
  }

  return result;
}

uint64_t CGFontGetGlyphForGlyphName(uint64_t result, uint64_t a2)
{
  v3 = a2;
  v2 = 0;
  if (result)
  {
    (*(*(result + 16) + 288))(*(result + 112), &v3, &v2, 1);
    return v2;
  }

  return result;
}

uint64_t PBPageLayoutPkg::PBRange::formatText(PBPageLayoutPkg::PBRange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "length");
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "location");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t PBPageLayoutPkg::PBRange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 24);
  }

  if (v4)
  {

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t PBPageLayoutPkg::PBRange::readFrom(PBPageLayoutPkg::PBRange *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_67;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 24) |= 1u;
        v30 = *(a2 + 1);
        v2 = *(a2 + 2);
        v31 = *a2;
        if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
        {
          v42 = 0;
          v43 = 0;
          v34 = 0;
          if (v2 <= v30)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v30)
            {
              v34 = 0;
              *(a2 + 24) = 1;
              goto LABEL_62;
            }

            v44 = v30 + 1;
            v45 = *(v31 + v30);
            *(a2 + 1) = v44;
            v34 |= (v45 & 0x7F) << v42;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v30 = v44;
            v14 = v43++ > 8;
            if (v14)
            {
              v34 = 0;
              goto LABEL_61;
            }
          }

          if (*(a2 + 24))
          {
            v34 = 0;
          }

LABEL_61:
          v3 = v44;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          while (1)
          {
            v3 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
              v34 = 0;
              break;
            }
          }
        }

LABEL_62:
        *(this + 1) = v34;
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 2u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v38 = 0;
          v39 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v22)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_58;
            }

            v40 = v22 + 1;
            v41 = *(v23 + v22);
            *(a2 + 1) = v40;
            v26 |= (v41 & 0x7F) << v38;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v22 = v40;
            v14 = v39++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_57;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_57:
          v3 = v40;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_58:
        *(this + 2) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v46 = 0;
          return v46 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_67;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_67:
  v46 = v4 ^ 1;
  return v46 & 1;
}

void PBPageLayoutPkg::PBRange::~PBRange(PBPageLayoutPkg::PBRange *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1865EE610);
}

void *color_space_state_create_generic_lab()
{
  result = color_space_state_create_lab(&xmmword_1844DEA30, default_black_point_19329, generic_lab_range, @"Generic Lab color space", @"Generic Lab Profile");
  if (result)
  {
    result[10] = @"kCGColorSpaceGenericLab";
    *(result + 5) = 5;
  }

  return result;
}

void *color_space_state_create_lab(uint64_t a1, char *a2, __int128 *a3, const void *a4, const void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v10 = malloc_type_calloc(0x78uLL, 1uLL, 0x4DE6FAD8uLL);
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  *v10 = 1;
  v10[12] = 1;
  *(v10 + 2) = 0x10000;
  *(v10 + 7) = 0;
  *(v10 + 6) = 5;
  *(v10 + 14) = color_space_state_create_lab_lab_vtable;
  *(v10 + 28) = 0x300000003;
  *(v10 + 10) = 0;
  *(v10 + 11) = 0;
  *(v10 + 5) = &xmmword_184564878;
  *(v10 + 6) = 3;
  v12 = malloc_type_calloc(0x90uLL, 1uLL, 0xE92B2B6AuLL);
  v11[12] = v12;
  if (!v12)
  {
    free(v11);
    return 0;
  }

  v13 = v12;
  for (i = 0; i != 24; i += 8)
  {
    *&v12[i] = *(a1 + i);
  }

  v15 = 0;
  v16 = &default_black_point_19329;
  if (a2)
  {
    v16 = a2;
  }

  do
  {
    *&v12[v15 + 24] = *&v16[v15];
    v15 += 8;
  }

  while (v15 != 24);
  v17 = 0;
  v18 = &xmmword_184565920;
  if (a3)
  {
    v18 = a3;
  }

  do
  {
    *&v12[v17 + 48] = *(v18 + v17);
    v17 += 8;
  }

  while (v17 != 32);
  if (a4)
  {
    v19 = CFRetain(a4);
  }

  else
  {
    v19 = 0;
  }

  *(v13 + 10) = v19;
  if (a5)
  {
    v20 = CFRetain(a5);
  }

  else
  {
    v20 = 0;
  }

  *(v13 + 11) = v20;
  *md = 0;
  *&md[8] = 0;
  v21 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v21);
  if (v21)
  {
    CC_MD5_Update(v21, v11 + 3, 4u);
  }

  v22 = v11[12];
  v23 = 3;
  v24 = v22;
  do
  {
    if (v21)
    {
      CC_MD5_Update(v21, v24, 8u);
    }

    v24 += 8;
    --v23;
  }

  while (v23);
  v25 = v22 + 24;
  v26 = 3;
  do
  {
    if (v21)
    {
      CC_MD5_Update(v21, v25, 8u);
    }

    v25 += 8;
    --v26;
  }

  while (v26);
  v27 = 0;
  v28 = v22 + 48;
  do
  {
    while (v21)
    {
      CC_MD5_Update(v21, &v28[8 * v27++], 8u);
      if (v27 == 4)
      {
        CC_MD5_Final(md, v21);
        v29 = *md;
        goto LABEL_36;
      }
    }

    ++v27;
  }

  while (v27 != 4);
  v29 = 0uLL;
LABEL_36:
  v31 = v29;
  free(v21);
  *(v11 + 4) = v31;
  return v11;
}

__CFString *lab_create_debug_description(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = *(a1[3] + 96);
  CFStringAppendFormat(Mutable, 0, @"%@; white point [%.4f, %.4f, %.4f] range [%.1f %.1f, %.1f %.1f]", v4[10], *v4, v4[1], v4[2], v4[6], v4[7], v4[8], v4[9]);
  return Mutable;
}

CFTypeRef lab_create_icc_profile_description(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 24);
  if (v3 != 5)
  {
    _CGHandleAssert("lab_create_icc_profile_description", 66, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_Lab.c", "space->state->type == kCGColorSpaceLAB", "Colorspace not of Lab type. type = %d", v3);
  }

  result = *(*(v2 + 96) + 88);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

void lab_finalize(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 != 5)
  {
    _CGHandleAssert("lab_finalize", 40, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_Lab.c", "state->type == kCGColorSpaceLAB", "Colorspace not of Lab type. type = %d", v1);
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 88);
    if (v4)
    {

      CFRelease(v4);
    }
  }
}

CGColorSpaceRef CGColorSpaceCreateLab(const CGFloat *whitePoint, const CGFloat *blackPoint, const CGFloat *range)
{
  if (*whitePoint > 0.9643 || *whitePoint < 0.9641 || (v4 = whitePoint[1], v4 > 1.0001) || v4 < 0.9999 || (v5 = whitePoint[2], v5 > 0.825) || v5 < 0.8248 || blackPoint && (fabs(*blackPoint) > 0.0001 || fabs(blackPoint[1]) > 0.0001 || fabs(blackPoint[2]) > 0.0001) || !range || *range > -127.9999 || *range < -128.0001)
  {
LABEL_25:
    lab = color_space_state_create_lab(whitePoint, blackPoint, range, @"Lab color space", @"Lab Profile");
    v15 = CGColorSpaceCreateWithState(lab);
    if (lab && atomic_fetch_add_explicit(lab, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      color_space_state_dealloc(lab);
    }

    if (v15)
    {
      *(v15 + 3) = color_space_state_register(*(v15 + 3));
    }

    return v15;
  }

  else
  {
    v6 = 1;
    while (v6 != 4)
    {
      v7 = v6;
      v8 = range[v6];
      v9 = generic_lab_range[v6];
      v10 = v9 + 0.0001;
      v11 = v9 + -0.0001;
      ++v6;
      if (v8 > v10 || v8 < v11)
      {
        if ((v7 - 1) < 3)
        {
          goto LABEL_25;
        }

        break;
      }
    }

    return CGColorSpaceCreateWithName(@"kCGColorSpaceGenericLab");
  }
}

__n128 CGColorSpaceGetLabData@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 24);
  if (v3 != 5)
  {
    _CGHandleAssert("CGColorSpaceGetLabData", 210, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_Lab.c", "space->state->type == kCGColorSpaceLAB", "Colorspace not of Lab type. type = %d", v3);
  }

  v4 = *(v2 + 96);
  v5 = *(v4 + 48);
  a2[2] = *(v4 + 32);
  a2[3] = v5;
  v6 = *(v4 + 80);
  a2[4] = *(v4 + 64);
  a2[5] = v6;
  result = *v4;
  v8 = *(v4 + 16);
  *a2 = *v4;
  a2[1] = v8;
  return result;
}

double *CGPDFCharacterCreate(__int16 a1, __int16 a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  result = malloc_type_malloc(0x60uLL, 0x1000040FA0C22F2uLL);
  if (result)
  {
    *result = 1;
    *(result + 4) = a1;
    result[2] = a3;
    result[3] = a4;
    result[4] = a5;
    result[5] = a6;
    result[6] = a7;
    result[7] = a8;
    result[8] = a9;
    result[9] = a10;
    *(result + 40) = a2;
    *(result + 11) = a17;
  }

  return result;
}

void *pdf_source_create_png_filter(const void *a1, CGPDFDictionary *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x10300405CAD4B32uLL);
  v4->i32[2] = 1;
  v4[2].i64[0] = 8;
  v4[1] = vdupq_n_s64(1uLL);
  if (a2)
  {
    value = 0;
    if (CGPDFDictionaryGetInteger(a2, "Predictor", &value))
    {
      if ((value - 10) >= 6 && (value - 1) > 1)
      {
        pdf_error("/%s is outside the range of allowed values.", "Predictor");
      }

      else
      {
        v4->i32[2] = value;
      }
    }

    if (CGPDFDictionaryGetInteger(a2, "Colors", &value))
    {
      if (value < 1)
      {
        pdf_error("/%s is outside the range of allowed values.", "Colors");
      }

      else
      {
        v4[1].i64[0] = value;
      }
    }

    if (CGPDFDictionaryGetInteger(a2, "BitsPerComponent", &value))
    {
      if (value <= 0x10 && ((1 << value) & 0x10116) != 0)
      {
        v4[2].i64[0] = value;
      }

      else
      {
        pdf_error("/%s is outside the range of allowed values.", "BitsPerComponent");
      }
    }

    if (CGPDFDictionaryGetInteger(a2, "Columns", &value))
    {
      if (value < 1)
      {
        pdf_error("/%s is outside the range of allowed values.", "Columns");
        if (!a1)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v4[1].i64[1] = value;
    }
  }

  if (a1)
  {
LABEL_18:
    CFRetain(a1);
  }

LABEL_19:
  v4->i64[0] = a1;
  v5 = v4[1].u64[0];
  v6 = v4[2].u64[0];
  if (v5 <= 0xFFFFFFFFFFFFFFF8 / v6 && (v7 = v6 * v5, v4[2].i64[1] = (v7 + 7) >> 3, v8 = v4[1].u64[1], v8 <= 0xFFFFFFFFFFFFFFF8 / v7) && (v9 = (v8 * v7 + 7) >> 3, v4[3].i64[0] = malloc_type_calloc(1uLL, v9, 0xF8E85256uLL), (result = CGPDFSourceCreateInternal(v9)) != 0))
  {
    *(result + 209) = 1;
    v11 = *&off_1EF236278;
    *(result + 3) = pdf_source_create_png_filter_callbacks;
    *(result + 4) = v11;
    result[10] = v4;
  }

  else
  {
    png_filter_finalize(v4);
    return 0;
  }

  return result;
}

void png_filter_finalize(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1[6]);

    free(a1);
  }
}

unint64_t png_filter_refill(uint64_t a1, char *a2, size_t a3)
{
  v6 = CGPDFSourceGetc(*a1);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v8 = CGPDFSourceRead(*a1, a2, a3);
  result = 0;
  if (a2 && v8)
  {
    if (a3 > v8)
    {
      bzero(&a2[v8], a3 - v8);
    }

    v10 = *(a1 + 40);
    if (v7 <= 1)
    {
      if (!v7)
      {
LABEL_49:
        memmove(*(a1 + 48), a2, a3);
        return v8;
      }

      if (v7 == 1)
      {
        v24 = a3 - v10;
        if (a3 > v10)
        {
          v25 = a2;
          do
          {
            v25[v10] += *v25;
            ++v25;
            --v24;
          }

          while (v24);
        }

        goto LABEL_49;
      }
    }

    else
    {
      v11 = *(a1 + 48);
      switch(v7)
      {
        case 2:
          if (a3)
          {
            v26 = a2;
            v27 = a3;
            do
            {
              v28 = *v11++;
              *v26++ += v28;
              --v27;
            }

            while (v27);
          }

          goto LABEL_49;
        case 3:
          if (v10)
          {
            v29 = a2;
            v30 = *(a1 + 48);
            v31 = *(a1 + 40);
            do
            {
              v32 = *v30++;
              *v29++ += v32 >> 1;
              --v31;
            }

            while (v31);
          }

          v33 = a3 - v10;
          if (a3 > v10)
          {
            v34 = a2;
            do
            {
              v34[v10] += (*v34 + v11[v10]) >> 1;
              ++v34;
              ++v11;
              --v33;
            }

            while (v33);
          }

          goto LABEL_49;
        case 4:
          if (a3)
          {
            v12 = 0;
            v13 = a2;
            v14 = a3;
            do
            {
              if (v12 >= v10)
              {
                v15 = v13[-v10];
                v16 = v11[-v10];
              }

              else
              {
                v15 = 0;
                v16 = 0;
              }

              v18 = *v11++;
              v17 = v18;
              v19 = v15 + v18 - v16;
              v20 = v18 - v16;
              if (v18 - v16 < 0)
              {
                v20 = -v20;
              }

              v21 = v19 - v17;
              if (v19 - v17 < 0)
              {
                v21 = v17 - v19;
              }

              v22 = v19 - v16;
              if (v22 < 0)
              {
                v22 = -v22;
              }

              if (v21 <= v22)
              {
                LOBYTE(v16) = v17;
              }

              if (v20 > v22 || v20 > v21)
              {
                LOBYTE(v15) = v16;
              }

              *v13++ += v15;
              ++v12;
              --v14;
            }

            while (v14);
          }

          goto LABEL_49;
      }
    }

    pdf_error("unrecognized PNG predictor: %d", v7);
    goto LABEL_49;
  }

  return result;
}

uint64_t CGPDFShadingType5Init(void *a1, uint64_t *a2, _OWORD *a3)
{
  if (type5_info_getTypeID_onceToken != -1)
  {
    dispatch_once(&type5_info_getTypeID_onceToken, &__block_literal_global_538);
  }

  result = pdf_create_cftype(type5_info_getTypeID_id, 104);
  if (result)
  {
    v7 = result;
    v14 = 0;
    value = 0;
    format = CGPDFDataFormatRaw;
    *a2 = result;
    *a3 = CGPDFShadingType5Init_type5_callbacks;
    if (a1)
    {
      v8 = a1[3];
    }

    else
    {
      v8 = 0;
    }

    if (!CGPDFDictionaryGetInteger(v8, "BitsPerCoordinate", &value))
    {
      return 0;
    }

    if (value > 0x20 || ((1 << value) & 0x101011116) == 0)
    {
      return 0;
    }

    v7[3] = value;
    if (!CGPDFDictionaryGetInteger(v8, "BitsPerComponent", &value))
    {
      return 0;
    }

    if (value > 0x10 || ((1 << value) & 0x11116) == 0)
    {
      return 0;
    }

    v7[4] = value;
    if (!CGPDFDictionaryGetInteger(v8, "VerticesPerRow", &value))
    {
      return 0;
    }

    if ((value - 0x40000000000000) <= 0xFFC0000000000001)
    {
      return 0;
    }

    v7[5] = value;
    v7[11] = 0;
    if (!CGPDFDictionaryGetObject(v8, "Function", &v14) || (result = CGPDFShadingCreateShadingFunction(v14, 1uLL), (v7[11] = result) != 0))
    {
      if (a1)
      {
        v9 = a1[5];
      }

      else
      {
        v9 = 0;
      }

      if (v7[11] && CGColorSpaceGetType(v9) == 7)
      {
        return 0;
      }

      if (v9)
      {
        CFRetain(v9);
        v7[2] = v9;
        if (v7[11])
        {
          v10 = 2;
        }

        else
        {
          v10 = 2 * *(v9[3] + 48);
        }
      }

      else
      {
        v7[2] = 0;
        v10 = 2 * (v7[11] != 0);
      }

      v11 = malloc_type_malloc(8 * (v10 + 4), 0x100004000313F17uLL);
      __CFSetLastAllocationEventName();
      if (!v11)
      {
        return 0;
      }

      if (!CGPDFDictionaryGetNumbers(v8, "Decode", v11, v10 + 4))
      {
        free(v11);
        return 0;
      }

      v7[6] = *v11;
      v7[8] = v11[1];
      v7[7] = v11[2];
      v7[9] = v11[3];
      memmove(v11, v11 + 4, 8 * v10);
      v7[10] = v11;
      if (a1)
      {
        v12 = a1[4];
      }

      else
      {
        v12 = 0;
      }

      result = CGPDFStreamCopyData(v12, &format);
      v7[12] = result;
      if (result)
      {
        if (format == CGPDFDataFormatRaw)
        {
          return 1;
        }

        pdf_error("invalid shading data format.");
        return 0;
      }
    }
  }

  return result;
}

void type5_release_info(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t type5_create_shading(CGRect *a1, const void *a2)
{
  v3 = &CGRectNull;
  p_height = &CGRectNull.size.height;
  p_y = &CGRectNull.origin.y;
  p_size = &CGRectNull.size;
  if (a1)
  {
    p_size = &a1[2].size;
    p_y = &a1[2].origin.y;
    v3 = a1 + 2;
    p_height = &a1[2].size.height;
  }

  v7 = *p_height;
  x = v3->origin.x;
  v9 = *p_y;
  width = p_size->width;
  v17[0] = *&v3->origin.x;
  *&v17[1] = v9;
  *&v17[2] = width;
  *&v17[3] = v7;
  if (a1)
  {
    y = a1[1].origin.y;
    a1 = *&a1[1].size.width;
  }

  else
  {
    y = 0.0;
  }

  Components = CGColorGetComponents(a1);
  v13 = x == -8.98846567e307;
  if (v9 != -8.98846567e307)
  {
    v13 = 0;
  }

  if (width != 1.79769313e308)
  {
    v13 = 0;
  }

  v14 = v7 == 1.79769313e308 && v13;
  if (a2)
  {
    CFRetain(a2);
    if (y == 0.0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (y == 0.0)
    {
      return result;
    }
  }

  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v17;
  }

  result = CGShadingCreateEmpty(0, *&y, Components, v16);
  *(result + 80) = a2;
  *(result + 104) = type5_create_shading_type5_drawing_callbacks;
  *(result + 120) = off_1EF236328;
  return result;
}

void cg_shading_type5_release(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void cg_shading_type5_draw(uint64_t a1, CGContextRef c)
{
  v125 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) > 0x1000000uLL)
  {
    return;
  }

  v3 = a1;
  v120 = 0;
  memset(&v119, 0, sizeof(v119));
  v118 = 0;
  v123 = 0;
  v124 = 0;
  v122 = 0;
  CGContextSetFillColorSpace(c, *(a1 + 16));
  CGContextSetStrokeColorSpace(c, *(v3 + 16));
  CGContextGetCTM(&v121, c);
  v117 = v121;
  v4 = CGTriangleMeshCreate(*(v3 + 16), *(v3 + 88));
  v113 = v4;
  v108 = c;
  if (v4)
  {
    v5 = v4[1];
  }

  else
  {
    v5 = 0;
  }

  BytePtr = CFDataGetBytePtr(*(v3 + 96));
  Length = CFDataGetLength(*(v3 + 96));
  v109 = &v105;
  v8 = *(v3 + 40);
  is_mul_ok(v8, 0x90uLL);
  v9 = MEMORY[0x1EEE9AC00](144 * v8);
  v12 = &v105 - v11 - 15;
  if (v10 <= 0x1C71C71C71C71C6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v10 - 0x1C71C71C71C71C7 >= 0xFE38E38E38E38E9ELL)
  {
    v13 = malloc_type_malloc(v9, 0x31211094uLL);
  }

  v14 = *(v3 + 40);
  is_mul_ok(v14, 0x90uLL);
  v15 = MEMORY[0x1EEE9AC00](144 * v14);
  v18 = &v105 - v17 - 15;
  if (v16 <= 0x1C71C71C71C71C6)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v16 - 0x1C71C71C71C71C7 >= 0xFE38E38E38E38E9ELL)
  {
    v19 = malloc_type_malloc(v15, 0x27AF5F2uLL);
  }

  if (!v13)
  {
    goto LABEL_84;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = &BytePtr[Length];
  v24 = v13;
  v115 = v13;
  v114 = v19;
  do
  {
    if (!v21 && BytePtr == v23)
    {
      break;
    }

    v25 = *(v3 + 40);
    if (!v25)
    {
      if (v20)
      {
        goto LABEL_77;
      }

      goto LABEL_80;
    }

    v26 = 0;
    v27 = *(v3 + 24);
    v28 = *(v3 + 32);
    v29 = (0xFFFFFFFF >> -v27);
    v30 = v27 - 24;
    do
    {
      if (v27 < 0x19)
      {
        v34 = 0;
        v35 = v27;
        if (!v27)
        {
          v36 = 0;
          goto LABEL_37;
        }
      }

      else
      {
        if (v21 > 0x17)
        {
          v32 = v21;
        }

        else
        {
          do
          {
            v22 <<= 8;
            if (BytePtr < v23)
            {
              v31 = *BytePtr++;
              v22 |= v31;
            }

            v32 = v21 + 8;
            v33 = v21 >= 0x10;
            v21 += 8;
          }

          while (!v33);
        }

        v21 = v32 - 24;
        v34 = ((v22 >> (v32 - 24)) & 0xFFFFFF) << v30;
        v35 = v27 - 24;
      }

      while (v21 < v35)
      {
        v22 <<= 8;
        if (BytePtr < v23)
        {
          v37 = *BytePtr++;
          v22 |= v37;
        }

        v21 += 8;
      }

      v21 -= v35;
      v36 = (v22 >> v21) & (0xFFFFFFFF >> -v35);
LABEL_37:
      v38 = &v24[144 * v26];
      *v38 = *(v3 + 48) + (*(v3 + 64) - *(v3 + 48)) * (v36 | v34) / v29;
      if (v27 < 0x19)
      {
        v41 = 0;
        v42 = v27;
        if (!v27)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v21 > 0x17)
        {
          v40 = v21;
        }

        else
        {
          do
          {
            v22 <<= 8;
            if (BytePtr < v23)
            {
              v39 = *BytePtr++;
              v22 |= v39;
            }

            v40 = v21 + 8;
            v33 = v21 >= 0x10;
            v21 += 8;
          }

          while (!v33);
        }

        v21 = v40 - 24;
        v41 = ((v22 >> (v40 - 24)) & 0xFFFFFF) << v30;
        v42 = v27 - 24;
      }

      while (v21 < v42)
      {
        v22 <<= 8;
        if (BytePtr < v23)
        {
          v43 = *BytePtr++;
          v22 |= v43;
        }

        v21 += 8;
      }

      v21 -= v42;
      LODWORD(v42) = (v22 >> v21) & (0xFFFFFFFF >> -v42);
LABEL_53:
      v38[1] = *(v3 + 56) + (*(v3 + 72) - *(v3 + 56)) * (v42 | v41) / v29;
      if (v5)
      {
        v44 = 0;
        v45 = v38 + 2;
        v46 = *(v3 + 80);
        while (v28 < 0x19)
        {
          v49 = 0;
          v50 = v28;
          if (v28)
          {
            goto LABEL_66;
          }

LABEL_71:
          *v45++ = *(v46 + 16 * v44) + (*(v46 + 16 * v44 + 8) - *(v46 + 16 * v44)) * (v50 | v49) / (0xFFFFFFFF >> -v28);
          if (++v44 == v5)
          {
            goto LABEL_72;
          }
        }

        if (v21 > 0x17)
        {
          v48 = v21;
        }

        else
        {
          do
          {
            v22 <<= 8;
            if (BytePtr < v23)
            {
              v47 = *BytePtr++;
              v22 |= v47;
            }

            v48 = v21 + 8;
            v33 = v21 >= 0x10;
            v21 += 8;
          }

          while (!v33);
        }

        v21 = v48 - 24;
        v49 = ((v22 >> (v48 - 24)) & 0xFFFFFF) << (v28 - 24);
        v50 = v28 - 24;
LABEL_66:
        while (v21 < v50)
        {
          v22 <<= 8;
          if (BytePtr < v23)
          {
            v51 = *BytePtr++;
            v22 |= v51;
          }

          v21 += 8;
        }

        v21 -= v50;
        LODWORD(v50) = (v22 >> v21) & (0xFFFFFFFF >> -v50);
        goto LABEL_71;
      }

LABEL_72:
      v21 &= 0xFFFFFFFFFFFFFFF8;
      ++v26;
    }

    while (v26 != v25);
    if (!v20 || v25 == 1)
    {
      goto LABEL_80;
    }

LABEL_77:
    v52 = 0;
    v116 = v24;
    v53 = v24;
    v54 = v3;
    v55 = v113;
    do
    {
      ++v52;
      v122 = v20;
      v20 += 144;
      v123 = v20;
      v124 = v53;
      CGTriangleMeshAddTriangleWithTrianglePoints(v55, &v117, &v122);
      v122 = v20;
      v123 = v53;
      v53 += 144;
      v124 = v53;
      CGTriangleMeshAddTriangleWithTrianglePoints(v55, &v117, &v122);
    }

    while (v52 < *(v54 + 40) - 1);
    v3 = v54;
    v13 = v115;
    v19 = v114;
    v24 = v116;
LABEL_80:
    if (v24 == v13)
    {
      v56 = v19;
    }

    else
    {
      v56 = v13;
    }

    v20 = v24;
    v24 = v56;
  }

  while (v56);
LABEL_84:
  memset(&v121, 0, 24);
  v57 = v113;
  if (v113)
  {
    v58 = v113[9];
    if (v58)
    {
      v59 = MEMORY[0x1EEE9AC00](16 * v58);
      v62 = &v105 - v60 - 15;
      if (v61 <= 0xFFFFFFFFFFFFFFELL)
      {
        v63 = &v105 - v60 - 15;
      }

      else
      {
        v63 = 0;
      }

      if (v61 - 0xFFFFFFFFFFFFFFFLL >= 0xF000000000000102)
      {
        v63 = malloc_type_malloc(v59, 0x2869DCDuLL);
      }

      is_mul_ok(3 * v58, 0x48uLL);
      v64 = MEMORY[0x1EEE9AC00](216 * v58);
      v67 = &v105 - v66;
      if (v65 <= 0x38E38E38E38E38DLL)
      {
        v68 = &v105 - v66;
      }

      else
      {
        v68 = 0;
      }

      if (v65 - 0x38E38E38E38E38ELL >= 0xFC71C71C71C71F73)
      {
        v68 = malloc_type_malloc(v64, 0xA35D9817uLL);
      }

      v69 = *(v3 + 16);
      v116 = v68;
      if (v69)
      {
        v70 = *(*(v69 + 24) + 48);
        if ((v70 + 1) > 5)
        {
          CGTriangleMeshRelease(v57);
          v71 = v116;
          if (v116 == v67)
          {
            goto LABEL_127;
          }

LABEL_126:
          free(v71);
          goto LABEL_127;
        }

        v105 = v70 + 1;
        v106 = v67;
        v107 = v62;
      }

      else
      {
        v106 = v67;
        v107 = v62;
        v70 = 0;
        v105 = 1;
      }

      v72 = 0;
      v73 = 0;
      v74 = 0;
      v110 = v68 + 32;
      v112 = v63;
      v111 = v58;
      do
      {
        v75 = &v63[16 * v73];
        *(v75 + 3) = 0;
        v76 = v57[9];
        v114 = v73;
        if (v76 > v73)
        {
          v77 = 0;
          v78 = v57[4];
          v79 = v57[7];
          v80 = &v72[v57[10]];
          do
          {
            *(&v121.a + v77) = v79 + v78 * *&v80[v77];
            v77 += 8;
          }

          while (v77 != 24);
        }

        v115 = v72;
        v81 = 0;
        v82 = &v110[72 * v74];
        do
        {
          *&v75[4 * v81] = v74;
          v83 = *(&v121.a + v81);
          v84 = &v68[72 * v74];
          *v84 = *v83;
          *(v84 + 2) = 0;
          *(v84 + 3) = 0;
          v85 = *(v3 + 88);
          if (v85)
          {
            v120 = *(v83 + 16);
            CGFunctionEvaluate(v85, &v120, v84 + 4);
            v68 = v116;
          }

          else if (v70)
          {
            v86 = (v83 + 16);
            v87 = v82;
            v88 = v70;
            do
            {
              v89 = *v86++;
              *v87 = v89;
              v87 += 8;
              --v88;
            }

            while (v88);
          }

          ++v74;
          *&v84[8 * v70 + 32] = 0x3FF0000000000000;
          ++v81;
          v82 += 72;
        }

        while (v81 != 3);
        v73 = (v114 + 1);
        v72 = v115 + 24;
        v90 = v111;
        v57 = v113;
        v63 = v112;
      }

      while (v114 + 1 != v111);
      v91 = v68;
      CGTriangleMeshRelease(v113);
      v92 = v105;
      if (RenderTriangleMesh(v91, v74, v63, v90, v105, &v118, &v119.origin.x))
      {
        v93 = v108;
        CGContextSaveGState(v108);
        CGContextResetCTM(v93);
        size = v119.size;
        origin = v119.origin;
        v96 = v106;
        if (v119.size.width < 0.0 || v119.size.height < 0.0)
        {
          v126 = CGRectStandardize(v119);
          width = v126.size.width;
          v126.origin = origin;
          v126.size = size;
          *(&height - 3) = CGRectStandardize(v126);
        }

        else
        {
          width = v119.size.width;
          height = v119.size.height;
        }

        v99 = height;
        v100 = (8 * v92 * width) >> 3;
        v101 = v118;
        v102 = v100 * height;
        check_clients_buffer("CGDataProviderCreateWithData", v118, v102);
        v103 = CGDataProviderCreateWithDataInternal(0, v101, v102, patch_data_release, 0);
        v104 = CGImageCreate(width, v99, 8uLL, 8 * v92, v100, *(v3 + 16), 3u, v103, 0, 0, kCGRenderingIntentDefault);
        CGDataProviderRelease(v103);
        CGImageSetCachingFlags(v104, 1);
        v127.origin = origin;
        v127.size = size;
        CGContextDrawImage(v93, v127, v104);
        CGContextRestoreGState(v93);
        if (v104)
        {
          CFRelease(v104);
        }

        v71 = v116;
        v62 = v107;
        v63 = v112;
        if (v116 != v96)
        {
          goto LABEL_126;
        }

LABEL_127:
        if (v63 != v62)
        {
LABEL_128:
          free(v63);
        }
      }

      else
      {
        if (v91 != v106)
        {
          free(v91);
        }

        if (v63 != v107)
        {
          goto LABEL_128;
        }
      }
    }
  }
}

uint64_t __type5_info_getTypeID_block_invoke()
{
  result = pdf_register_cftype(&type5_info_getTypeID_class);
  type5_info_getTypeID_id = result;
  return result;
}

void type5_info_finalize(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorSpaceRelease(*(a1 + 16));
  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);

  free(v4);
}

uint64_t DECODE_RANGE(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  if (!a3)
  {
    a5 = 1.0;
  }

  v6 = 0.0;
  if (a3)
  {
    v6 = a4;
  }

  v7 = a5 - v6;
  v8 = v7;
  v9 = v6;
  *result = v9;
  *(result + 4) = v8;
  if (!a2)
  {
    v16 = 0;
    v17 = 0;
    *(result + 16) = 0;
    v18 = 8;
LABEL_32:
    *(result + 12) = v16;
    *(result + v18) = v17;
    return result;
  }

  v10 = v7 * a6;
  if (!a3)
  {
    v19 = ~(-1 << a2);
    v20 = v10 / v19;
    v21 = a6 * 0.0;
    v22 = a6 * 0.0 + v20 * v19;
    v23 = fabs(v20);
    if (v23 <= ~(-1 << (30 - a2)))
    {
      v26 = __clz(v23) - 17;
      if (v23 >= 0x8000)
      {
        v17 = 0;
      }

      else
      {
        v17 = v26;
      }

      v25 = (1 << v17);
    }

    else
    {
      v17 = 0;
      v24 = v20 <= 0.0;
      v20 = -32768.0;
      if (!v24)
      {
        v20 = 32767.0;
      }

      v25 = 1.0;
    }

    if (v22 >= v21)
    {
      if (v21 <= 65535.0)
      {
        if (v22 < 0.0)
        {
LABEL_30:
          v17 = 0;
          v21 = 0.0;
          v20 = 0.0;
          v25 = 0.0;
        }

LABEL_31:
        *(result + 8) = (v21 * v25);
        v16 = (v20 * v25);
        v18 = 16;
        goto LABEL_32;
      }
    }

    else if (v22 <= 65535.0)
    {
      if (v21 >= 0.0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v17 = 0;
    v25 = 1.0;
    v20 = 0.0;
    v21 = 65535.0;
    goto LABEL_31;
  }

  v11 = (1 << a2);
  v12 = v10 / (v11 - 1);
  *(result + 8) = 0;
  v13 = a4 * a6;
  *(result + 16) = 0;
  v14 = (result + 20);
  do
  {
    if (v13 >= 0.0)
    {
      v15 = v13;
      if (v13 > 255.0)
      {
        LOBYTE(v15) = -1;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    *v14++ = v15;
    v13 = v12 + v13;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t decode_byte_8bpc_1(uint64_t result, int a2, int a3, uint64_t a4, int a5, _BYTE *a6, int a7, uint64_t a8, void *a9, int a10)
{
  v10 = a5 - (a3 * result);
  v11 = a7 - result;
  if (a8)
  {
    if (a8 == 2)
    {
      v14 = *a9 + 20;
      do
      {
        v15 = result + 1;
        do
        {
          *a6++ = *(v14 + *(a4 + a10));
          a4 += a3;
          --v15;
        }

        while (v15 > 1);
        a4 += v10;
        a6 += v11;
        v13 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v13 | (a2 == 0)));
    }

    else if (a8 == 1)
    {
      do
      {
        v12 = result + 1;
        do
        {
          *a6++ = ~*(a4 + a10);
          a4 += a3;
          --v12;
        }

        while (v12 > 1);
        a4 += v10;
        a6 += v11;
        v13 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v13 | (a2 == 0)));
    }
  }

  else
  {
    do
    {
      v16 = result + 1;
      do
      {
        *a6++ = *(a4 + a10);
        a4 += a3;
        --v16;
      }

      while (v16 > 1);
      a4 += v10;
      a6 += v11;
      v13 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v13 | (a2 == 0)));
  }

  return result;
}

uint64_t decode_byte_8bpc_3a(uint64_t result, int a2, int a3, int a4, uint64_t a5, int a6, _BYTE *a7, int a8, _BYTE *a9, int a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v15 = a6 - (a3 * result);
  v16 = -3 * result + a8;
  v17 = a10 - result;
  if (a11)
  {
    if (a11 == 2)
    {
      v25 = 8;
      v26 = 16;
      if (a13 > a14)
      {
        v25 = 16;
      }

      v27 = *(a12 + v25);
      v28 = 24;
      if (a13 > a14)
      {
        v26 = 24;
      }

      if (a14 <= a13)
      {
        v28 = 0;
      }

      v29 = *(a12 + v28);
      v30 = *(a12 + 8 * (a13 > a14)) + 20;
      v31 = a13 + a4;
      v32 = 2 * a4;
      v33 = *(a12 + v26) + 20;
      v34 = v32 + a13;
      result = (result + 1);
      do
      {
        v35 = result;
        do
        {
          v36 = *(v30 + *(a5 + a13));
          v37 = *(v27 + 20 + *(a5 + v31));
          v38 = *(v33 + *(a5 + v34));
          *a9++ = *(v29 + 20 + *(a5 + a14));
          *a7 = v36;
          a7[1] = v37;
          a7[2] = v38;
          a5 += a3;
          a7 += 3;
          --v35;
        }

        while (v35 > 1);
        a5 += v15;
        a7 += v16;
        a9 += v17;
        v24 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v24 | (a2 == 0)));
    }

    else if (a11 == 1)
    {
      v18 = a13 + a4;
      v19 = result + 1;
      v20 = 2 * a4 + a13;
      do
      {
        LODWORD(result) = v19;
        do
        {
          v21 = *(a5 + a13);
          v22 = *(a5 + v18);
          v23 = *(a5 + v20);
          *a9++ = ~*(a5 + a14);
          *a7 = ~v21;
          a7[1] = ~v22;
          a7[2] = ~v23;
          a5 += a3;
          a7 += 3;
          result = (result - 1);
        }

        while (result > 1);
        a5 += v15;
        a7 += v16;
        a9 += v17;
        v24 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v24 | (a2 == 0)));
    }
  }

  else
  {
    v39 = a13 + a4;
    v40 = result + 1;
    v41 = 2 * a4 + a13;
    do
    {
      LODWORD(result) = v40;
      do
      {
        v42 = *(a5 + a13);
        v43 = *(a5 + v39);
        v44 = *(a5 + v41);
        *a9++ = *(a5 + a14);
        *a7 = v42;
        a7[1] = v43;
        a7[2] = v44;
        a5 += a3;
        a7 += 3;
        result = (result - 1);
      }

      while (result > 1);
      a5 += v15;
      a7 += v16;
      a9 += v17;
      v24 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v24 | (a2 == 0)));
  }

  return result;
}

uint64_t decode_byte_8bpc_4(uint64_t result, int a2, int a3, int a4, uint64_t a5, int a6, _BYTE *a7, int a8, uint64_t a9, void *a10, int a11)
{
  v11 = a6 - (a3 * result);
  v12 = a8 - 4 * result;
  if (a9)
  {
    if (a9 == 2)
    {
      v22 = *a10 + 20;
      v23 = a10[1] + 20;
      v24 = a10[2] + 20;
      v25 = a10[3] + 20;
      v26 = a11 + a4;
      v27 = 2 * a4 + a11;
      v28 = v27 + a4;
      result = (result + 1);
      do
      {
        v29 = result;
        do
        {
          v30 = *(v23 + *(a5 + v26));
          v31 = *(v24 + *(a5 + v27));
          v32 = *(v25 + *(a5 + v28));
          *a7 = *(v22 + *(a5 + a11));
          a7[1] = v30;
          a7[2] = v31;
          a5 += a3;
          a7[3] = v32;
          a7 += 4;
          --v29;
        }

        while (v29 > 1);
        a5 += v11;
        a7 += v12;
        v21 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v21 | (a2 == 0)));
    }

    else if (a9 == 1)
    {
      v13 = a11 + a4;
      v14 = 2 * a4 + a11;
      v15 = a3;
      v16 = result + 1;
      v17 = v14 + a4;
      do
      {
        v18 = v16;
        do
        {
          result = *(a5 + v13);
          v19 = *(a5 + v14);
          v20 = *(a5 + v17);
          *a7 = ~*(a5 + a11);
          a7[1] = ~result;
          a7[2] = ~v19;
          a5 += v15;
          a7[3] = ~v20;
          a7 += 4;
          --v18;
        }

        while (v18 > 1);
        a5 += v11;
        a7 += v12;
        v21 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v21 | (a2 == 0)));
    }
  }

  else
  {
    v33 = a11 + a4;
    v34 = 2 * a4 + a11;
    v35 = v34 + a4;
    v36 = a3;
    v37 = result + 1;
    do
    {
      v38 = v37;
      do
      {
        result = *(a5 + v33);
        v39 = *(a5 + v34);
        v40 = *(a5 + v35);
        *a7 = *(a5 + a11);
        a7[1] = result;
        a7[2] = v39;
        a5 += v36;
        a7[3] = v40;
        a7 += 4;
        --v38;
      }

      while (v38 > 1);
      a5 += v11;
      a7 += v12;
      v21 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v21 | (a2 == 0)));
  }

  return result;
}

uint64_t decode_byte_8bpc_4a(uint64_t result, int a2, int a3, int a4, uint64_t a5, int a6, _BYTE *a7, int a8, _BYTE *a9, int a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v15 = a6 - (a3 * result);
  v16 = a8 - 4 * result;
  v17 = a10 - result;
  if (a11)
  {
    if (a11 == 2)
    {
      v27 = 8;
      v28 = 16;
      if (a13 > a14)
      {
        v27 = 16;
      }

      v29 = *(a12 + v27);
      v30 = 24;
      if (a13 > a14)
      {
        v28 = 24;
      }

      v31 = *(a12 + v28);
      if (a13 > a14)
      {
        v30 = 32;
      }

      v32 = *(a12 + 8 * (a13 > a14)) + 20;
      v33 = v29 + 20;
      v34 = v31 + 20;
      v35 = *(a12 + v30) + 20;
      v36 = *(a12 + 32 * (a14 > a13)) + 20;
      v37 = a13 + a4;
      result = (result + 1);
      v38 = 2 * a4 + a13;
      v39 = v38 + a4;
      do
      {
        v40 = result;
        do
        {
          v41 = *(v32 + *(a5 + a13));
          v42 = *(v33 + *(a5 + v37));
          v43 = *(v34 + *(a5 + v38));
          v44 = *(v35 + *(a5 + v39));
          *a9++ = *(v36 + *(a5 + a14));
          *a7 = v41;
          a7[1] = v42;
          a7[2] = v43;
          a5 += a3;
          a7[3] = v44;
          a7 += 4;
          --v40;
        }

        while (v40 > 1);
        a5 += v15;
        a7 += v16;
        a9 += v17;
        v26 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v26 | (a2 == 0)));
    }

    else if (a11 == 1)
    {
      v18 = 2 * a4 + a13;
      v19 = a3;
      v20 = result + 1;
      result = v18 + a4;
      do
      {
        v21 = v20;
        do
        {
          v22 = *(a5 + a13);
          v23 = *(a5 + a13 + a4);
          v24 = *(a5 + v18);
          v25 = *(a5 + result);
          *a9++ = ~*(a5 + a14);
          *a7 = ~v22;
          a7[1] = ~v23;
          a7[2] = ~v24;
          a5 += v19;
          a7[3] = ~v25;
          a7 += 4;
          --v21;
        }

        while (v21 > 1);
        a5 += v15;
        a7 += v16;
        a9 += v17;
        v26 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v26 | (a2 == 0)));
    }
  }

  else
  {
    v45 = 2 * a4 + a13;
    v46 = a3;
    v47 = result + 1;
    result = v45 + a4;
    do
    {
      v48 = v47;
      do
      {
        v49 = *(a5 + a13);
        v50 = *(a5 + a13 + a4);
        v51 = *(a5 + v45);
        v52 = *(a5 + result);
        *a9++ = *(a5 + a14);
        *a7 = v49;
        a7[1] = v50;
        a7[2] = v51;
        a5 += v46;
        a7[3] = v52;
        a7 += 4;
        --v48;
      }

      while (v48 > 1);
      a5 += v15;
      a7 += v16;
      a9 += v17;
      v26 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v26 | (a2 == 0)));
  }

  return result;
}

void *decode_byte_nbpc_N(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, void *a8, int a9)
{
  v9 = 0;
  if (a2 >= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = a2;
  }

  v11 = a9 * a1;
  v12 = (a4 + (a5 >> 3));
  v13 = *v12;
  v14 = 8 - (a5 & 7);
  v15 = a9 * a2 - a3;
  result = a8;
  do
  {
    v17 = v14 - v10;
    if (v14 - v10 < 0)
    {
      LODWORD(v18) = -v14 >> 3;
      v19 = -v14 & 0x7FFFFFF8;
      if (v14 >= -7)
      {
        v18 = 0;
      }

      else
      {
        v18 = v18;
      }

      v12 += v18;
      if (v14 >= -7)
      {
        v19 = 0;
      }

      v14 += v19;
      do
      {
        v20 = *++v12;
        v14 += 8;
        v13 = v20 | (v13 << 8);
      }

      while (v14 - v10 < 0);
      v17 = v14 - v10;
    }

    v21 = v9 + 1;
    *(a6 + v9) = *(*result + ((v13 >> v17) & ~(-1 << v10)) + 20);
    if (v9 + 1 >= a9)
    {
      v9 = 0;
    }

    else
    {
      ++v9;
    }

    if (v21 >= a9)
    {
      v22 = v15;
    }

    else
    {
      v22 = 0;
    }

    if (v21 >= a9)
    {
      v23 = a7;
    }

    else
    {
      v23 = 0;
    }

    v14 += v22 - a2;
    a6 += v23;
    result = &a8[v9];
    --v11;
  }

  while (v11);
  return result;
}

uint64_t decode_byte_nbpc_1(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  if (a2 >= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = a2;
  }

  v8 = a6 - 1;
  v9 = (a4 + (a5 >> 3));
  v10 = 8 - (a5 & 7);
  v11 = *v9;
  do
  {
    v12 = v10 - v7;
    if (v10 - v7 < 0)
    {
      LODWORD(v13) = -v10 >> 3;
      v14 = -v10 & 0x7FFFFFF8;
      if (v10 >= -7)
      {
        v13 = 0;
      }

      else
      {
        v13 = v13;
      }

      v9 += v13;
      if (v10 >= -7)
      {
        v14 = 0;
      }

      v10 += v14;
      do
      {
        v15 = *++v9;
        v10 += 8;
        v11 = v15 | (v11 << 8);
      }

      while (v10 - v7 < 0);
      v12 = v10 - v7;
    }

    v10 -= a3;
    *++v8 = *(a7 + 20 + ((v11 >> v12) & ~(-1 << v7)));
    result = (result - 1);
  }

  while (result);
  return result;
}

uint64_t decode_byte_16bpc(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v8 = a8 * result;
  v9 = a4;
  if (a7 == 1)
  {
    while (1)
    {
      v10 = a3 - 2;
      if (v8 >= 5)
      {
        break;
      }

      if (v8 > 0)
      {
        v17 = a5 - 1;
        v16 = v8;
LABEL_8:
        v18 = (v10 + 2);
        v19 = (v17 + 1);
        v20 = v16 + 1;
        do
        {
          v21 = *v18;
          v18 += 2;
          *v19++ = ~v21;
          --v20;
        }

        while (v20 > 1);
      }

      a3 += v9;
      a5 += a6;
      if (!--a2)
      {
        return result;
      }
    }

    v11 = 0;
    v12 = v8 + 4;
    do
    {
      v13 = *(v10 + 8);
      v10 += 8;
      v14 = ~*(v10 - 4);
      result = ~*(v10 - 2);
      v15 = (a5 + v11);
      *v15 = ~*(v10 - 6);
      v15[1] = v14;
      v15[2] = result;
      v15[3] = ~v13;
      v11 += 4;
      v12 -= 4;
    }

    while (v12 > 8);
    v16 = v8 - v11;
    v17 = a5 + v11 - 1;
    goto LABEL_8;
  }

  do
  {
    v22 = a3 - 2;
    if (v8 < 5)
    {
      if (v8 <= 0)
      {
        goto LABEL_20;
      }

      v29 = a5 - 1;
      v28 = v8;
    }

    else
    {
      v23 = 0;
      v24 = v8 + 4;
      do
      {
        v25 = *(v22 + 8);
        v22 += 8;
        v26 = *(v22 - 4);
        result = *(v22 - 2);
        v27 = (a5 + v23);
        *v27 = *(v22 - 6);
        v27[1] = v26;
        v27[2] = result;
        v27[3] = v25;
        v24 -= 4;
        v23 += 4;
      }

      while (v24 > 8);
      v28 = v8 - v23;
      v29 = a5 + v23 - 1;
    }

    v30 = v28 + 1;
    v31 = (v29 + 1);
    v32 = (v22 + 2);
    do
    {
      v33 = *v32;
      v32 += 2;
      *v31++ = v33;
      --v30;
    }

    while (v30 > 1);
LABEL_20:
    a3 += v9;
    a5 += a6;
    --a2;
  }

  while (a2);
  return result;
}

uint64_t decode_byte_8bpc_N(int a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t *a8, int a9)
{
  v9 = 0;
  v10 = a9 * a1;
  v11 = (a4 - a3);
  v12 = a6 - 1;
  v13 = a5 - a9 * a1 * a3;
  v14 = a7 - a9 * a1;
  if (a9 <= 2)
  {
    if (a9 == 1)
    {
      v9 = *a8;
      v15 = *a8;
      v16 = *a8;
      v17 = *a8;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      if (a9 == 2)
      {
        v15 = *a8;
        v9 = a8[1];
        v16 = v9;
        v17 = *a8;
      }
    }

    goto LABEL_10;
  }

  if (a9 == 3)
  {
    goto LABEL_8;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (a9 == 4)
  {
    v9 = a8[3];
LABEL_8:
    v17 = *a8;
    v16 = a8[1];
    v15 = a8[2];
  }

LABEL_10:
  v18 = 0;
  result = (2 * a3);
  v20 = 3 * a3;
  v21 = v16 + 20;
  v22 = v15 + 20;
  do
  {
    if (v9)
    {
      if (v10 < 4)
      {
LABEL_21:
        v29 = v10;
      }

      else
      {
        v23 = v17 + 20;
        v24 = v10;
        do
        {
          v25 = v11[a3];
          v26 = v11[result];
          v27 = v11[v20];
          v11 += 4 * a3;
          v28 = *(v23 + v25);
          LOBYTE(v26) = *(v21 + v26);
          LOBYTE(v27) = *(v22 + v27);
          *(v12 + 4) = *(v9 + 20 + *v11);
          v12 += 4;
          v29 = v24 - 4;
          *(v12 - 3) = v28;
          *(v12 - 2) = v26;
          *(v12 - 1) = v27;
          v30 = v24 > 7;
          v24 -= 4;
        }

        while (v30);
      }

      v17 = a8[v18];
      if (v29 >= 1)
      {
        v34 = v29 + 1;
        do
        {
          v11 += a3;
          *++v12 = *(v17 + *v11 + 20);
          if (v18 + 1 < a9)
          {
            ++v18;
          }

          else
          {
            v18 = 0;
          }

          v17 = a8[v18];
          --v34;
        }

        while (v34 > 1);
      }

      goto LABEL_28;
    }

    if (!v15)
    {
      goto LABEL_21;
    }

    if (v10 >= 1)
    {
      v31 = v10 + 3;
      do
      {
        v32 = v11[a3];
        v33 = v11[result];
        v11 += v20;
        LOBYTE(v32) = *(v17 + 20 + v32);
        LOBYTE(v33) = *(v21 + v33);
        *(v12 + 3) = *(v22 + *v11);
        v12 += 3;
        *(v12 - 2) = v32;
        *(v12 - 1) = v33;
        v31 -= 3;
      }

      while (v31 > 3);
    }

LABEL_28:
    v11 += v13;
    v12 += v14;
    --a2;
  }

  while (a2);
  return result;
}

uint64_t decode_word_16bpc_1(uint64_t result, int a2, int a3, uint64_t a4, int a5, _WORD *a6, int a7, uint64_t a8, uint64_t a9, int a10)
{
  v10 = a5 - (a3 * result);
  v11 = a7 - 2 * result;
  if (a8)
  {
    if (a8 == 2)
    {
      v15 = *(*a9 + 8);
      v14 = *(*a9 + 12);
      v16 = *(*a9 + 16);
      v17 = result + 1;
      do
      {
        v18 = v17;
        do
        {
          v19 = bswap32(*(a4 + a10));
          a4 += a3;
          LODWORD(result) = ((v15 + v14 * HIWORD(v19)) >> v16) & ~((v15 + v14 * HIWORD(v19)) >> v16 >> 31);
          if (result >= 0xFFFF)
          {
            result = 0xFFFFLL;
          }

          else
          {
            result = result;
          }

          *a6++ = result;
          --v18;
        }

        while (v18 > 1);
        a4 += v10;
        a6 = (a6 + v11);
        v13 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v13 | (a2 == 0)));
    }

    else if (a8 == 1)
    {
      do
      {
        v12 = result + 1;
        do
        {
          *a6++ = bswap32(~*(a4 + a10)) >> 16;
          a4 += a3;
          --v12;
        }

        while (v12 > 1);
        a4 += v10;
        a6 = (a6 + v11);
        v13 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v13 | (a2 == 0)));
    }
  }

  else
  {
    do
    {
      v20 = result + 1;
      do
      {
        *a6++ = bswap32(*(a4 + a10)) >> 16;
        a4 += a3;
        --v20;
      }

      while (v20 > 1);
      a4 += v10;
      a6 = (a6 + v11);
      v13 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v13 | (a2 == 0)));
  }

  return result;
}

uint64_t decode_word_16bpc_3(uint64_t result, int a2, int a3, uint64_t a4, int a5, _WORD *a6, int a7, uint64_t a8, void *a9, int a10)
{
  v10 = a5 - (a3 * result);
  v11 = a7 - 6 * result;
  if (a8)
  {
    if (a8 == 2)
    {
      v16 = a9[1];
      v17 = a9[2];
      v18 = a3;
      v20 = *(*a9 + 8);
      v19 = *(*a9 + 12);
      v22 = v16[2];
      v21 = v16[3];
      v24 = v17[2];
      v23 = v17[3];
      v25 = *(*a9 + 16);
      v26 = v16[4];
      v27 = v17[4];
      result = (result + 1);
      do
      {
        v28 = result;
        do
        {
          v29 = bswap32(*(a4 + a10));
          v30 = bswap32(*(a4 + a10 + 2));
          v31 = bswap32(*(a4 + a10 + 4));
          a4 += v18;
          v32 = ((v20 + v19 * HIWORD(v29)) >> v25) & ~((v20 + v19 * HIWORD(v29)) >> v25 >> 31);
          v33 = ((v22 + v21 * HIWORD(v30)) >> v26) & ~((v22 + v21 * HIWORD(v30)) >> v26 >> 31);
          v34 = ((v24 + v23 * HIWORD(v31)) >> v27) & ~((v24 + v23 * HIWORD(v31)) >> v27 >> 31);
          if (v32 >= 0xFFFF)
          {
            LOWORD(v32) = -1;
          }

          if (v33 >= 0xFFFF)
          {
            LOWORD(v33) = -1;
          }

          if (v34 >= 0xFFFF)
          {
            LOWORD(v34) = -1;
          }

          *a6 = v32;
          a6[1] = v33;
          a6[2] = v34;
          a6 += 3;
          --v28;
        }

        while (v28 > 1);
        a4 += v10;
        a6 = (a6 + v11);
        v15 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v15 | (a2 == 0)));
    }

    else if (a8 == 1)
    {
      do
      {
        v12 = result + 1;
        do
        {
          v13 = *(a4 + a10 + 2);
          v14 = *(a4 + a10 + 4);
          *a6 = bswap32(~*(a4 + a10)) >> 16;
          a6[1] = bswap32(~v13) >> 16;
          a6[2] = bswap32(~v14) >> 16;
          a4 += a3;
          a6 += 3;
          --v12;
        }

        while (v12 > 1);
        a4 += v10;
        a6 = (a6 + v11);
        v15 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v15 | (a2 == 0)));
    }
  }

  else
  {
    do
    {
      v35 = result + 1;
      do
      {
        v36 = bswap32(*(a4 + a10 + 2));
        v37 = bswap32(*(a4 + a10 + 4));
        *a6 = bswap32(*(a4 + a10)) >> 16;
        a6[1] = HIWORD(v36);
        a6[2] = HIWORD(v37);
        a4 += a3;
        a6 += 3;
        --v35;
      }

      while (v35 > 1);
      a4 += v10;
      a6 = (a6 + v11);
      v15 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v15 | (a2 == 0)));
  }

  return result;
}

uint64_t decode_word_16bpc_4(uint64_t result, int a2, int a3, uint64_t a4, int a5, int16x4_t *a6, int a7, uint64_t a8, void *a9, int a10)
{
  v10 = a5 - (a3 * result);
  v11 = a7 - 8 * result;
  if (a8)
  {
    if (a8 == 2)
    {
      v15 = a9[1];
      v16 = a9[2];
      v17 = a9[3];
      v18.i32[0] = *(*a9 + 8);
      v19.i32[0] = *(*a9 + 12);
      v18.i32[1] = v15[2];
      v18.i32[2] = v16[2];
      v18.i32[3] = v17[2];
      v19.i32[1] = v15[3];
      v19.i32[2] = v16[3];
      v19.i32[3] = v17[3];
      v20.i32[0] = *(*a9 + 16);
      v20.i32[1] = v15[4];
      v20.i32[2] = v16[4];
      v20.i32[3] = v17[4];
      v21 = vnegq_s32(v20);
      v22.i64[0] = 0xFFFF0000FFFFLL;
      v22.i64[1] = 0xFFFF0000FFFFLL;
      do
      {
        v23 = result + 1;
        do
        {
          v24 = a4 + a3;
          *a6++ = vmovn_s32(vminq_s32(vmaxq_s32(vshlq_s32(vmlaq_s32(v18, v19, vmovl_u16(vrev16_s8(*(a4 + a10)))), v21), 0), v22));
          --v23;
          a4 = v24;
        }

        while (v23 > 1);
        a4 = v24 + v10;
        a6 = (a6 + v11);
        v14 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v14 | (a2 == 0)));
    }

    else if (a8 == 1)
    {
      do
      {
        v12 = result + 1;
        do
        {
          v13 = a4 + a3;
          *a6++ = vrev16_s8(vmvn_s8(*(a4 + a10)));
          --v12;
          a4 = v13;
        }

        while (v12 > 1);
        a4 = v13 + v10;
        a6 = (a6 + v11);
        v14 = __OFSUB__(a2--, 1);
      }

      while (!((a2 < 0) ^ v14 | (a2 == 0)));
    }
  }

  else
  {
    do
    {
      v25 = result + 1;
      do
      {
        v26 = a4 + a3;
        *a6++ = vrev16_s8(*(a4 + a10));
        --v25;
        a4 = v26;
      }

      while (v25 > 1);
      a4 = v26 + v10;
      a6 = (a6 + v11);
      v14 = __OFSUB__(a2--, 1);
    }

    while (!((a2 < 0) ^ v14 | (a2 == 0)));
  }

  return result;
}

void clipper_interpolate_intersection_metadata(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = 0;
  v10 = a5 + 2;
  v11 = *a5;
  v12 = a5[1];
  for (i = 2; i != 6; i += 2)
  {
    v14 = a1[i];
    if (v14 != -1)
    {
      v15 = 0;
      v16 = *&a1[i + 1];
      while (1)
      {
        if (v14 == a2[v15 + 2])
        {
          v17 = *&a2[v15 + 3];
          if (vabdd_f64(v16, v17) <= 1.0 || v17 == 0.0 || v16 == 0.0)
          {
            break;
          }
        }

        v15 += 2;
        if (v15 == 4)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= 2)
      {
        __assert_rtn("clipper_interpolate_intersection_metadata", "CGPathClipping.mm", 59, "intersectionCount < 2");
      }

      v18 = &v10[2 * v9];
      *v18 = v14;
      v19 = v16;
      v20 = v17;
      *(v18 + 1) = interpolate_values_for_point(*a1, a1[1], *a2, a2[1], v11, v12, v19, v20);
      ++v9;
    }

LABEL_12:
    ;
  }

  for (j = 2; j != 6; j += 2)
  {
    v22 = a3[j];
    if (v22 != -1)
    {
      v23 = 0;
      v24 = *&a3[j + 1];
      while (1)
      {
        if (v22 == a4[v23 + 2])
        {
          v25 = *&a4[v23 + 3];
          if (vabdd_f64(v24, v25) <= 1.0 || v25 == 0.0 || v24 == 0.0)
          {
            break;
          }
        }

        v23 += 2;
        if (v23 == 4)
        {
          goto LABEL_24;
        }
      }

      if (v9 >= 2)
      {
        __assert_rtn("clipper_interpolate_intersection_metadata", "CGPathClipping.mm", 74, "intersectionCount < 2");
      }

      v26 = &v10[2 * v9];
      *v26 = v22;
      v27 = v24;
      v28 = v25;
      *(v26 + 1) = interpolate_values_for_point(*a3, a3[1], *a4, a4[1], v11, v12, v27, v28);
      ++v9;
    }

LABEL_24:
    ;
  }
}

float64x2_t clipper_transform_for_bounds(CGRect a1, uint64_t a2)
{
  v22 = CGRectIntegral(a1);
  x = v22.origin.x;
  width = v22.size.width;
  if (v22.size.width < 0.0 || v22.size.height < 0.0)
  {
    y = v22.origin.y;
    height = v22.size.height;
    v23 = CGRectStandardize(v22);
    v6 = v23.size.width;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.height = height;
    v23.size.width = width;
    v24 = CGRectStandardize(v23);
    v7 = v24.size.height;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.height = height;
    v24.size.width = width;
    v25 = CGRectStandardize(v24);
    v18 = v25.size.width;
    v19 = v25.origin.x;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.height = height;
    v25.size.width = width;
    v22 = CGRectStandardize(v25);
    v22.size.width = v18;
    v5.f64[0] = v19;
  }

  else
  {
    v5.f64[0] = v22.origin.x;
    v6 = v22.size.width;
    v7 = v22.size.height;
  }

  v8 = v22.size.height;
  __asm { FMOV            V0.2D, #0.5 }

  v14 = vmulq_f64(v22.size, _Q0);
  v15 = fabs(v7);
  v16 = fabs(v6);
  if (v16 <= v15)
  {
    v16 = v15;
  }

  *a2 = 1063256060.0 / v16;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1063256060.0 / v16;
  v5.f64[1] = v22.origin.y;
  result = vmulq_n_f64(vaddq_f64(v5, v14), -(1063256060.0 / v16));
  *(a2 + 32) = result;
  return result;
}

void append_tree_path_component(void *a1, CGPathRandomAccess *a2, __n128 *a3, float64x2_t *a4, __CFArray *a5)
{
  Mutable = CGPathCreateMutable();
  v30 = cgpoint_null;
  v10 = a3[1];
  v26 = *a3;
  v27 = v10;
  v28 = a3[2];
  v11 = a4[1];
  v23 = *a4;
  v24 = v11;
  v25 = a4[2];
  CGPathRandomAccess::recreate_path_from_clipper(a2, a1 + 1, &v26, &v23, &Mutable, 0);
  v13 = a1[4];
  v12 = a1[5];
  while (v13 != v12)
  {
    v14 = *v13;
    v15 = a3[1];
    v26 = *a3;
    v27 = v15;
    v28 = a3[2];
    v16 = a4[1];
    v23 = *a4;
    v24 = v16;
    v25 = a4[2];
    CGPathRandomAccess::recreate_path_from_clipper(a2, v14 + 1, &v26, &v23, &Mutable, 0);
    v17 = v14[4];
    v18 = v14[5];
    while (v17 != v18)
    {
      v19 = *v17;
      v20 = a3[1];
      v26 = *a3;
      v27 = v20;
      v28 = a3[2];
      v21 = a4[1];
      v23 = *a4;
      v24 = v21;
      v25 = a4[2];
      append_tree_path_component(v19, a2, &v26, &v23, a5);
      ++v17;
    }

    ++v13;
  }

  v22 = CGPathOutputFiltering::cg_path(&Mutable);
  CFArrayAppendValue(a5, v22);
  CGPathOutputFiltering::~CGPathOutputFiltering(&Mutable);
}

void append_tree_path_component_indexes(const ClipperLib::PolyNode *a1, __CFArray *a2)
{
  v4 = [MEMORY[0x1E696AD50] indexSet];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  while (v5 != v6)
  {
    v7 = *(v5 + 32);
    if (*(v5 + 16) != -1)
    {
      [v4 addIndex:?];
    }

    if (v7 != -1)
    {
      [v4 addIndex:v7];
    }

    v5 += 48;
  }

  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  while (v8 != v9)
  {
    v10 = *v8;
    v11 = *(*v8 + 8);
    v12 = *(*v8 + 16);
    while (v11 != v12)
    {
      v13 = *(v11 + 32);
      if (*(v11 + 16) != -1)
      {
        [v4 addIndex:?];
      }

      if (v13 != -1)
      {
        [v4 addIndex:v13];
      }

      v11 += 48;
    }

    v14 = *(v10 + 32);
    v15 = *(v10 + 40);
    while (v14 != v15)
    {
      v16 = *v14++;
      append_tree_path_component_indexes(v16, a2);
    }

    ++v8;
  }

  CFArrayAppendValue(a2, v4);
}

void ClipperLib::Clipper::~Clipper(ClipperLib::Clipper *this)
{
  *this = &unk_1EF23C1F0;
  v2 = (this + 144);
  *(this + 18) = &unk_1EF23C238;
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  ClipperLib::ClipperBase::~ClipperBase(v2);
}

{
  *this = &unk_1EF23C1F0;
  v2 = (this + 144);
  *(this + 18) = &unk_1EF23C238;
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  ClipperLib::ClipperBase::~ClipperBase(v2);

  JUMPOUT(0x1865EE610);
}

{
  *this = &unk_1EF23C1F0;
  *(this + 18) = &unk_1EF23C238;
  v2 = *(this + 11);
  if (v2)
  {
    *(this + 12) = v2;
    operator delete(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    *(this + 8) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }
}

BOOL CGPathIntersectsPath(CGPathRef path1, CGPathRef path2, BOOL evenOddFillRule)
{
  if (!path1)
  {
    return 0;
  }

  v3 = evenOddFillRule;
  if (CGPathDisableTypeValidation)
  {
    if (!path2)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v6 = CFGetTypeID(path1);
  TypeID = CGPathGetTypeID();
  v8 = 0;
  if (path2 && v6 == TypeID)
  {
    if ((CGPathDisableTypeValidation & 1) == 0)
    {
      v9 = CFGetTypeID(path2);
      if (v9 != CGPathGetTypeID())
      {
        return 0;
      }
    }

LABEL_9:
    memset(v15, 0, sizeof(v15));
    v12 = 0;
    v13 = 0;
    v14 = 0;
    clip<std::vector<std::vector<ClipperLib::IntPoint>>>(v11, 0, path1, v3, path2, v3, 0, v15, &v12);
    v8 = v13 != v12;
    *&v11[0] = &v12;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](v11);
    *&v11[0] = v15;
    std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](v11);
  }

  return v8;
}

void sub_183FFAAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](va);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](va);
  _Unwind_Resume(a1);
}

const CGPath *CGPathIntersectsRect(const CGPath *cf, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = cf;
  if (cf)
  {
    if ((CGPathDisableTypeValidation & 1) != 0 || (v10 = CFGetTypeID(cf), v10 == CGPathGetTypeID()))
    {
      v13.origin.x = a2;
      v13.origin.y = a3;
      v13.size.width = a4;
      v13.size.height = a5;
      v11 = CGPathCreateWithRect(v13, 0);
      v5 = CGPathIntersectsPath(v5, v11, 1);
      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

CFTypeRef pathCreateCopyByClippingLineWithPath(int a1, CGPathRef path, const void *a3, int a4)
{
  if (!path)
  {
    return 0;
  }

  if (CGPathDisableTypeValidation)
  {
    if (!a3)
    {
      return 0;
    }
  }

  else
  {
    v8 = CFGetTypeID(path);
    TypeID = CGPathGetTypeID();
    v10 = 0;
    if (!a3 || v8 != TypeID)
    {
      return v10;
    }

    if ((CGPathDisableTypeValidation & 1) == 0)
    {
      v11 = CFGetTypeID(a3);
      if (v11 != CGPathGetTypeID())
      {
        return 0;
      }
    }
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  memset(v55, 0, 29);
  v54 = 0u;
  v53 = 0u;
  v52 = &unk_1EF236340;
  memset(&v55[5], 0, 24);
  memset(&v51, 0, sizeof(v51));
  clip<ClipperLib::PolyTree>(&v51, a1, path, a4, 0, a3, a4, &v56, &v52);
  v49 = v51;
  memset(&v50, 0, sizeof(v50));
  CGAffineTransformInvert(&v50, &v49);
  v15 = *(&v54 + 1);
  v16 = v55[0];
  while (v15 != v16)
  {
    v17 = *v15;
    if (*(*v15 + 68) == 1)
    {
      memset(&v49, 0, 40);
      CGPathRandomAccess::state_at_point(&v49, &v56, *(v17 + 8), *(v17 + 16), 0);
      *&v12 = v49.tx;
      if (v49.d > v49.tx)
      {
        v18 = *(v17 + 8);
        v19 = *(v17 + 16);
        v20 = (v19 - 48);
        if (v18 != v19 && v20 > v18)
        {
          v22 = v18 + 48;
          do
          {
            v23 = *(v22 - 48);
            v12 = *(v22 - 32);
            v13 = *(v22 - 16);
            v24 = v20[1];
            v14 = v20[2];
            *(v22 - 48) = *v20;
            *(v22 - 32) = v24;
            *(v22 - 16) = v14;
            v20[1] = v12;
            v20[2] = v13;
            *v20 = v23;
            v20 -= 3;
            v25 = v22 >= v20;
            v22 += 48;
          }

          while (!v25);
        }
      }
    }

    ++v15;
  }

  if (v57 != v56)
  {
    if (!((0x6DB6DB6DB6DB6DB7 * ((v57 - v56) >> 3)) >> 60))
    {
      operator new();
    }

    std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
  }

  result = *(&v54 + 1);
  if (*(&v54 + 1) == v55[0])
  {
LABEL_39:
    memset(v47, 0, sizeof(v47));
    v48 = 1065353216;
    memset(v45, 0, sizeof(v45));
    v46 = 1065353216;
    v35 = 126 - 2 * __clz((v55[0] - *(&v54 + 1)) >> 3);
    if (v55[0] == *(&v54 + 1))
    {
      v36 = 0;
    }

    else
    {
      v36 = v35;
    }

    std::__introsort<std::_ClassicAlgPolicy,pathCreateCopyByClippingLineWithPath(ClipperLib::ClipType,CGPath const*,CGPath const*,BOOL)::$_0 &,ClipperLib::PolyNode **,false>(*(&v54 + 1), v55[0], v36, 1, 0.0, *&v12, *&v13, *&v14);
    Mutable = CGPathCreateMutable();
    v44 = cgpoint_null;
    v37 = *(&v54 + 1);
    v38 = v55[0];
    while (v37 != v38)
    {
      v39 = *v37;
      if (*(*v37 + 68) == 1 && !std::__hash_table<ClipperLib::PolyNode *,std::hash<ClipperLib::PolyNode *>,std::equal_to<ClipperLib::PolyNode *>,std::allocator<ClipperLib::PolyNode *>>::find<ClipperLib::PolyNode *>(*&v47[0], *(&v47[0] + 1), *v37))
      {
        v49 = v51;
        v42[0] = *&v50.a;
        v42[1] = *&v50.c;
        v42[2] = *&v50.tx;
        v40 = std::__hash_table<ClipperLib::PolyNode *,std::hash<ClipperLib::PolyNode *>,std::equal_to<ClipperLib::PolyNode *>,std::allocator<ClipperLib::PolyNode *>>::find<ClipperLib::PolyNode *>(*&v45[0], *(&v45[0] + 1), v39) == 0;
        CGPathRandomAccess::recreate_path_from_clipper(&v56, (v39 + 8), &v49, v42, &Mutable, v40);
      }

      ++v37;
    }

    v41 = CGPathOutputFiltering::cg_path(&Mutable);
    v10 = v41;
    if (v41)
    {
      CFRetain(v41);
    }

    CGPathOutputFiltering::~CGPathOutputFiltering(&Mutable);
    std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v45);
    std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(v47);
    ClipperLib::PolyTree::~PolyTree(&v52);
    v52 = &v56;
    std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&v52);
    return v10;
  }

  v27 = 0x6DB6DB6DB6DB6DB7 * ((v57 - v56) >> 3);
  v28 = *(&v54 + 1);
  while (1)
  {
    v29 = *v28;
    if (*(*v28 + 68) == 1)
    {
      v31 = *(v29 + 8);
      v30 = *(v29 + 16);
      if (v31 == v30)
      {
        break;
      }

      v32 = *(v31 + 16);
      if (v32 != -1 && (v27 <= v32 || (*(v56 + 56 * v32 + 48) & 1) == 0 && *(v31 + 24) == 0.0))
      {
        break;
      }

      v33 = *(v30 - 32);
      if (v33 != -1)
      {
        if (v27 <= v33)
        {
          break;
        }

        v34 = v56 + 56 * v33;
        if ((*(v34 + 48) & 1) == 0)
        {
          *&v12 = ((*(v34 + 8) - *v34) >> 4);
          if (*(v30 - 24) == *&v12)
          {
            break;
          }
        }
      }
    }

    if (++v28 == v55[0])
    {
      goto LABEL_39;
    }
  }

  __break(1u);
  return result;
}

void sub_183FFB47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(&a23);
  std::__hash_table<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::__unordered_map_hasher<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::hash<CGPDFFont *>,std::equal_to<CGPDFFont *>,true>,std::__unordered_map_equal<CGPDFFont *,std::__hash_value_type<CGPDFFont *,std::pair<double,double>>,std::equal_to<CGPDFFont *>,std::hash<CGPDFFont *>,true>,std::allocator<std::__hash_value_type<CGPDFFont *,std::pair<double,double>>>>::~__hash_table(&a29);
  if (v53)
  {
    operator delete(v53);
  }

  ClipperLib::PolyTree::~PolyTree(&a53);
  a53 = (v54 - 168);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:fe200100](&a53);
  _Unwind_Resume(a1);
}

void clip<ClipperLib::PolyTree>(_OWORD *a1, int a2, CGPathRef path, int a4, uint64_t a5, const CGPath *a6, int a7, CGPathRandomAccess *a8, ClipperLib::PolyTree *a9)
{
  v113 = *MEMORY[0x1E69E9840];
  BoundingBox = CGPathGetBoundingBox(path);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if (a6)
  {
    v120 = CGPathGetBoundingBox(a6);
    v117.origin.x = x;
    v117.origin.y = y;
    v117.size.width = width;
    v117.size.height = height;
    v118 = CGRectUnion(v117, v120);
    x = v118.origin.x;
    y = v118.origin.y;
    width = v118.size.width;
    height = v118.size.height;
  }

  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v119.origin.x = x;
  v119.origin.y = y;
  v119.size.width = width;
  v119.size.height = height;
  clipper_transform_for_bounds(v119, a1);
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v92 = 0u;
  v93 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0;
  v74 = &unk_1EF23C1F0;
  v91 = &unk_1EF23C238;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v94 = 0;
  *v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  __p = 0;
  v79 = 0;
  v87 = 0;
  v89 = 0;
  v90 = clipper_interpolate_intersection_metadata;
  v98 = 1;
  v20 = a1[1];
  *&v73.a = *a1;
  *&v73.c = v20;
  *&v73.tx = a1[2];
  CGPathRandomAccess::add_path(a8, path, &v73, a5);
  v114.length = v21;
  v23 = v22;
  v24 = a1[1];
  *&v73.a = *a1;
  *&v73.c = v24;
  *&v73.tx = a1[2];
  v114.location = a8;
  CGPathRandomAccess::clipper_paths_for_subpath_range(&v71, v114, v23, &v73, a5);
  v25 = v71;
  if (v72 != v71)
  {
    v26 = 0;
    v27 = 0;
    v28 = &v75[-1] + *(v74 - 3);
    do
    {
      (*(*v28 + 16))(v28, v25 + v26, 0, a5);
      ++v27;
      v25 = v71;
      v26 += 24;
    }

    while (v27 < 0xAAAAAAAAAAAAAAABLL * ((v72 - v71) >> 3));
  }

  *&v73.a = &v71;
  std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&v73);
  if (a6)
  {
    v29 = a1[1];
    *&v73.a = *a1;
    *&v73.c = v29;
    *&v73.tx = a1[2];
    CGPathRandomAccess::add_path(a8, a6, &v73, 1);
    v115.length = v30;
    v32 = v31;
    v33 = a1[1];
    *&v73.a = *a1;
    *&v73.c = v33;
    *&v73.tx = a1[2];
    v115.location = a8;
    CGPathRandomAccess::clipper_paths_for_subpath_range(&v71, v115, v32, &v73, 1);
    v34 = v71;
    if (v72 != v71)
    {
      v35 = 0;
      v36 = 0;
      v37 = &v75[-1] + *(v74 - 3);
      do
      {
        (*(*v37 + 16))(v37, v34 + v35, 1, 1);
        ++v36;
        v34 = v71;
        v35 += 24;
      }

      while (v36 < 0xAAAAAAAAAAAAAAABLL * ((v72 - v71) >> 3));
    }

    *&v73.a = &v71;
    std::vector<std::vector<ClipperLib::IntPoint>>::__destroy_vector::operator()[abi:fe200100](&v73);
  }

  if ((v84 & 1) == 0)
  {
    v84 = 1;
    v85 = a7 ^ 1;
    v86 = a4 ^ 1;
    v80[0] = a2;
    v88 = 1;
    if ((*v74)(&v74))
    {
      ClipperLib::PolyTree::Clear(a9);
      std::vector<CGPDFObject *>::reserve(a9 + 10, (*(&__p + *(v74 - 3)) - *(v80 + *(v74 - 3))) >> 3);
      v38 = *(v80 + *(v74 - 3));
      v39 = *(&__p + *(v74 - 3)) - v38;
      if (v39)
      {
        v40 = 0;
        do
        {
          v41 = *(v38 + 8 * v40);
          v42 = *(v41 + 24);
          if (v42)
          {
            v43 = -1;
            v44 = 1;
            v45 = *(v41 + 24);
            do
            {
              v45 = *(v45 + 56);
              ++v43;
              ++v44;
            }

            while (v45 != v42);
            v46 = *(v41 + 5) ? 1 : 2;
            if (v43 >= v46)
            {
              v47 = *(v41 + 8);
              if (v47)
              {
                v48 = *(v41 + 4);
                if (v48 == *(v47 + 4) || !*(v47 + 24))
                {
                  do
                  {
                    if (*(v47 + 4) != v48 && *(v47 + 24))
                    {
                      break;
                    }

                    v47 = *(v47 + 8);
                  }

                  while (v47);
                  *(v41 + 8) = v47;
                }
              }

              operator new();
            }
          }

          ++v40;
          v38 = *(v80 + *(v74 - 3));
          v39 = *(&__p + *(v74 - 3)) - v38;
        }

        while (v40 < v39 >> 3);
      }

      std::vector<CGPDFObject *>::reserve(a9 + 4, v39 >> 3);
      v49 = v74;
      v50 = *(v80 + *(v74 - 3));
      if (*(&__p + *(v74 - 3)) != v50)
      {
        v51 = 0;
        while (1)
        {
          v52 = v50[v51];
          v53 = *(v52 + 16);
          if (v53)
          {
            break;
          }

LABEL_52:
          ++v51;
          v50 = *(v80 + *(v49 - 3));
          if (v51 >= (*(&__p + *(v49 - 3)) - v50) >> 3)
          {
            goto LABEL_55;
          }
        }

        if (*(v52 + 5) == 1)
        {
          *(v53 + 68) = 1;
        }

        else
        {
          v54 = *(v52 + 8);
          if (v54)
          {
            v55 = *(v54 + 16);
            if (v55)
            {
              goto LABEL_39;
            }
          }
        }

        v55 = a9;
LABEL_39:
        v56 = *(v55 + 4);
        v57 = *(v55 + 5);
        v58 = v57 - v56;
        v59 = *(v55 + 6);
        if (v57 >= v59)
        {
          v61 = v58 >> 3;
          v62 = (v58 >> 3) + 1;
          if (v62 >> 61)
          {
            std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
          }

          v63 = v59 - v56;
          v64 = v63 >> 2;
          if (v63 >> 2 <= v62)
          {
            v64 = (v58 >> 3) + 1;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFF8)
          {
            v65 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v64;
          }

          if (v65)
          {
            std::__allocate_at_least[abi:fe200100]<std::allocator<applesauce::CF::ObjectRef<CGPath *>>>(v65);
          }

          *(8 * v61) = v53;
          v60 = 8 * v61 + 8;
          v66 = *(v55 + 4);
          v67 = *(v55 + 5) - v66;
          v68 = (8 * v61 - v67);
          memcpy(v68, v66, v67);
          v69 = *(v55 + 4);
          *(v55 + 4) = v68;
          *(v55 + 5) = v60;
          *(v55 + 6) = 0;
          if (v69)
          {
            operator delete(v69);
          }
        }

        else
        {
          *v57 = v53;
          v60 = (v57 + 1);
        }

        *(v55 + 5) = v60;
        *(v53 + 56) = v55;
        *(v53 + 64) = v58 >> 3;
        v49 = v74;
        goto LABEL_52;
      }
    }

    else
    {
      v49 = v74;
    }

LABEL_55:
    ClipperLib::ClipperBase::DisposeAllOutRecs((&v75[-1] + *(v49 - 3)));
    v84 = 0;
  }

  v74 = &unk_1EF23C1F0;
  v91 = &unk_1EF23C238;
  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v78)
  {
    *(&v78 + 1) = v78;
    operator delete(v78);
  }

  if (*(&v76 + 1))
  {
    *&v77 = *(&v76 + 1);
    operator delete(*(&v76 + 1));
  }

  if (v75[0])
  {
    v75[1] = v75[0];
    operator delete(v75[0]);
  }

  ClipperLib::ClipperBase::~ClipperBase(&v91);
}

void sub_183FFBD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  ClipperLib::Clipper::~Clipper(va);
  _Unwind_Resume(a1);
}

void std::vector<ClipperLib::IntPoint>::__insert_with_size[abi:fe200100]<std::__wrap_iter<ClipperLib::IntPoint*>,std::__wrap_iter<ClipperLib::IntPoint*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
    if (v12 > 0x555555555555555)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x2AAAAAAAAAAAAAALL)
    {
      v14 = 0x555555555555555;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<ClipperLib::IntPoint>>(v14);
    }

    v35 = 16 * ((__dst - v11) >> 4);
    v36 = 48 * a5;
    v37 = v35;
    do
    {
      v38 = *v6;
      v39 = *(v6 + 2);
      v37[1] = *(v6 + 1);
      v37[2] = v39;
      *v37 = v38;
      v37 += 3;
      v6 += 48;
      v36 -= 48;
    }

    while (v36);
    memcpy((v35 + 48 * a5), __dst, a1[1] - __dst);
    v40 = *a1;
    v41 = v35 + 48 * a5 + a1[1] - __dst;
    a1[1] = __dst;
    v42 = (__dst - v40);
    v43 = (v35 - (__dst - v40));
    memcpy(v43, v40, v42);
    v44 = *a1;
    *a1 = v43;
    a1[1] = v41;
    a1[2] = 0;
    if (v44)
    {

      operator delete(v44);
    }

    return;
  }

  v15 = v10 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - __dst) >> 4)) >= a5)
  {
    v29 = 3 * a5;
    v30 = &__dst[48 * a5];
    v31 = (v10 - 48 * a5);
    v32 = a1[1];
    while (v31 < v10)
    {
      v33 = *v31;
      v34 = v31[2];
      v32[1] = v31[1];
      v32[2] = v34;
      *v32 = v33;
      v32 += 3;
      v31 += 3;
    }

    a1[1] = v32;
    if (v10 != v30)
    {
      memmove(&__dst[48 * a5], __dst, v10 - v30);
    }

    v28 = 16 * v29;
    v26 = __dst;
    v27 = v6;
    goto LABEL_28;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(a1[1], &__src[v15], a4 - &__src[v15]);
  }

  v18 = (v10 + v17);
  a1[1] = v10 + v17;
  if (v15 >= 1)
  {
    v19 = &__dst[48 * a5];
    v20 = v10 + v17;
    if (&v18[-48 * a5] < v10)
    {
      v21 = &__dst[a4];
      v22 = &__dst[a4 + -48 * a5];
      do
      {
        v23 = (v21 - v6);
        v24 = *(v22 - v6);
        v25 = *(v22 - v6 + 32);
        v23[1] = *(v22 - v6 + 16);
        v23[2] = v25;
        *v23 = v24;
        v22 += 48;
        v21 += 48;
      }

      while (v22 - v6 < v10);
      v20 = v21 - v6;
    }

    a1[1] = v20;
    if (v18 != v19)
    {
      memmove(&__dst[48 * a5], __dst, v18 - v19);
    }

    v26 = __dst;
    v27 = v6;
    v28 = v10 - __dst;
LABEL_28:

    memmove(v26, v27, v28);
  }
}