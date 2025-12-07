uint64_t CGColorSpaceEqualToColorSpaceIgnoringRange(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    return 1;
  }

  result = 0;
  if (v4 && v5)
  {
    if (*(v4 + 24) == *(v5 + 24) && (v6 = *(*(v4 + 112) + 32)) != 0)
    {
      return v6(v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL icc_md5_equal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2 != 6 || (v2 = *(a2 + 24), v2 != 6))
  {
    _CGHandleAssert("icc_get_icc_md5", 69, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "state->type == kCGColorSpaceICCBased", "Colorspace not ICC based. type = %d", v2);
  }

  v3 = *(a1 + 96);
  v4 = *(a2 + 96);
  if (v3 == v4)
  {
    return 1;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  return v6 == v8 && v5 == v7;
}

uint64_t CGColorSpaceCopyICCProfileDescription(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v2 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  v3 = *(*(a1[3] + 112) + 24);
  if (!v3)
  {
    return 0;
  }

  return v3(a1);
}

uint64_t cs_retain_count(uint64_t a1, uint64_t a2)
{
  if (a1 == -1)
  {
    v4 = *(a2 + 24);
    if ((*(v4 + 8) & 1) == 0 && atomic_fetch_add_explicit((a2 + 16), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      color_space_state_unregister(v4);
      pthread_mutex_destroy((a2 + 32));
      v5 = CFGetAllocator(a2);
      CFAllocatorDeallocate(v5, a2);
    }

    return 0;
  }

  if (a1)
  {
    if (a1 == 1 && (*(*(a2 + 24) + 8) & 1) == 0)
    {
      result = 0;
      atomic_fetch_add_explicit((a2 + 16), 1u, memory_order_relaxed);
      return result;
    }

    return 0;
  }

  if (*(*(a2 + 24) + 8))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(a2 + 16);
  }
}

CGColorSpaceRef CGColorSpaceCreateWithName(CGColorSpaceRef name)
{
  v13 = *MEMORY[0x1E69E9840];
  if (name)
  {
    v1 = name;
    if (CFEqual(name, @"kCGColorSpaceITUR_2020_PQ_EOTF"))
    {
      v1 = @"kCGColorSpaceITUR_2100_PQ";
    }

    if (CFEqual(v1, @"kCGColorSpaceITUR_2020_PQ"))
    {
      v1 = @"kCGColorSpaceITUR_2100_PQ";
    }

    if (CFEqual(v1, @"kCGColorSpaceITUR_2020_HLG"))
    {
      v1 = @"kCGColorSpaceITUR_2100_HLG";
    }

    if (CFEqual(v1, @"kCGColorSpaceDisplayP3_PQ_EOTF"))
    {
      v1 = @"kCGColorSpaceDisplayP3_PQ";
    }

    if (CGColorSpaceCreateWithName_predicate != -1)
    {
      dispatch_once(&CGColorSpaceCreateWithName_predicate, &__block_literal_global_166);
    }

    v2 = CGColorSpaceCreateWithName_name_creator_pair_array;
    v3 = 44;
    if (!CGColorSpaceCreateWithName_name_creator_pair_count)
    {
      v3 = 0;
    }

    while (v3)
    {
      if (*v2 == v1)
      {
        goto LABEL_28;
      }

      v4 = v3;
      v5 = &v2[2 * v3];
      v6 = *(v5 - 2);
      if (v6 == v1)
      {
        v9 = (v5 - 1);
        goto LABEL_29;
      }

      v3 = v4 >> 1;
      v7 = v2[2 * (v4 >> 1)];
      if (v7 == v1)
      {
        v2 += 2 * v3;
LABEL_28:
        v9 = (v2 + 1);
LABEL_29:
        Value = *v9;
        if (*v9)
        {
          goto LABEL_31;
        }

        break;
      }

      if (*v2 >= v1 || v7 <= v1)
      {
        v2 += 2 * v3;
        v3 = v4 - v3;
        if (v6 <= v1 || v7 >= v1)
        {
          break;
        }
      }
    }

    Value = CFDictionaryGetValue(CGColorSpaceCreateWithName_name_creator_pair_dict, v1);
    if (!Value)
    {
      goto LABEL_32;
    }

LABEL_31:
    name = Value();
    if (name)
    {
      return name;
    }

LABEL_32:
    bzero(buffer, 0x401uLL);
    Length = CFStringGetLength(v1);
    if (!CFStringGetCString(v1, buffer, 1024, 0x600u))
    {
      v14.location = 0;
      v14.length = Length;
      CFStringGetBytes(v1, v14, 0x600u, 0x3Fu, 0, buffer, 1024, 0);
    }

    CGPostError("CGColorSpaceCreateWithName failed for %s", buffer);
    return 0;
  }

  return name;
}

uint64_t CGColorSpaceCreateDisplayP3()
{
  if (CGColorSpaceCreateDisplayP3_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateDisplayP3_predicate, &__block_literal_global_191_6607);
  }

  v0 = CGColorSpaceCreateDisplayP3_space;
  if (CGColorSpaceCreateDisplayP3_space)
  {
    CFRetain(CGColorSpaceCreateDisplayP3_space);
  }

  return v0;
}

uint64_t CGImageProviderCreate(int a1, CGColorSpace *a2, uint64_t a3, __int128 *a4, CFDictionaryRef theDict, double a6, double a7)
{
  v7 = 0;
  if (!a2 || !a4)
  {
    return v7;
  }

  if (a6 < 1.0 || a6 != a6 || a7 < 1.0 || a7 != a7)
  {
    CGPostError("%s: invalid image provider size: %g x %g.");
    return 0;
  }

  v19 = *a4;
  if (*a4 > 1)
  {
    if (v19 != 2 && v19 != 3)
    {
      goto LABEL_25;
    }
  }

  else if (v19 >= 2)
  {
LABEL_25:
    CGPostError("%s: invalid image provider callbacks version: %d.");
    return 0;
  }

  if (!*(a4 + 1))
  {
    return 0;
  }

  v20 = *(*(a2 + 3) + 48);
  valuePtr = 0;
  if (theDict)
  {
    if (CFDictionaryContainsKey(theDict, @"kCGImageProviderBitmapInfo"))
    {
      Value = CFDictionaryGetValue(theDict, @"kCGImageProviderBitmapInfo");
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      v22 = 1;
    }

    else
    {
      v23 = CFDictionaryGetValue(theDict, @"kCGImageProviderAlphaIsOne");
      v22 = v23 != 0;
      if (v23)
      {
        v24 = 5;
      }

      else if (CFDictionaryGetValue(theDict, @"kCGImageProviderAlphaIsPremultiplied"))
      {
        v24 = 1;
      }

      else if (CFDictionaryGetValue(theDict, @"kCGImageProviderAlphaIsNotPremultiplied"))
      {
        v24 = 3;
      }

      else
      {
        v24 = 0;
      }

      valuePtr = v24;
    }

    if (CFDictionaryContainsKey(theDict, @"kCGImageProviderBitmapInfo"))
    {
      goto LABEL_51;
    }
  }

  else
  {
    v22 = 0;
  }

  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v25 = valuePtr | 0x2100;
      goto LABEL_50;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        v25 = 204806;
        goto LABEL_50;
      }

LABEL_46:
      CGPostError("%s: invalid image componenttype %d.");
      return 0;
    }

    v26 = valuePtr | 0x100;
LABEL_49:
    v25 = v26 | 0x1000;
    goto LABEL_50;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v25 = valuePtr | 0x2000;
LABEL_50:
        valuePtr = v25;
        goto LABEL_51;
      }

      goto LABEL_46;
    }

    v26 = valuePtr;
    goto LABEL_49;
  }

LABEL_51:
  v27 = valuePtr & 0x1F;
  if ((valuePtr & 0x1F) != 0)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v20;
  }

  Model = CGColorSpaceGetModel(a2);
  if (Model > kCGColorSpaceModelXYZ)
  {
    goto LABEL_80;
  }

  if (((1 << Model) & 0x97) != 0)
  {
    goto LABEL_56;
  }

  if (((1 << Model) & 0x28) == 0)
  {
LABEL_80:
    CGPostError("%s: unsupported image provider color space model.");
    return 0;
  }

  if ((v27 - 1) <= 1)
  {
    CGPostError("%s: unsupported image provider color space and alpha combination.");
    return 0;
  }

LABEL_56:
  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      goto LABEL_71;
    }

    if (a1 != 2)
    {
      if (a1 != 3)
      {
        goto LABEL_81;
      }

      goto LABEL_69;
    }

LABEL_70:
    v28 *= 2;
    goto LABEL_71;
  }

  if (a1 == 4)
  {
LABEL_69:
    v28 *= 4;
    goto LABEL_71;
  }

  if (a1 == 5)
  {
    goto LABEL_70;
  }

  if (a1 != 6)
  {
LABEL_81:
    CGPostError("%s: invalid image provider component type.");
    return 0;
  }

  if (CGColorSpaceGetModel(a2) != kCGColorSpaceModelRGB)
  {
    CGPostError("%s: invalid image provider component type color space type combination.");
    return 0;
  }

  v28 = 4;
LABEL_71:
  if (kCGImageProviderContentAverageLightLevelNits_block_invoke_once != -1)
  {
    dispatch_once(&kCGImageProviderContentAverageLightLevelNits_block_invoke_once, &__block_literal_global_92_3534);
  }

  Instance = CGTypeCreateInstance(CGImageProviderGetTypeID_image_provider_type_id, 136);
  v7 = Instance;
  if (Instance)
  {
    *(Instance + 16) = a6;
    *(Instance + 24) = a7;
    v31 = valuePtr;
    *(Instance + 32) = a1;
    *(Instance + 36) = v31;
    CFRetain(a2);
    *(v7 + 40) = a2;
    *(v7 + 48) = v28;
    *(v7 + 56) = a3;
    v32 = *a4;
    *(v7 + 64) = *a4;
    if (v32 <= 1)
    {
      if (v32 <= 1)
      {
        v33 = *a4;
        *(v7 + 80) = *(a4 + 2);
LABEL_84:
        *(v7 + 64) = v33;
        if (theDict)
        {
          *(v7 + 112) = CFRetain(theDict);
          v35 = CFDictionaryGetValue(theDict, @"kCGImageProviderSupportsMultipleResolutions") != 0;
        }

        else
        {
          v35 = 0;
          *(v7 + 112) = 0;
        }

        *(v7 + 128) = v35;
        *(v7 + 129) = 0;
        *(v7 + 130) = v22;
        *(v7 + 144) = create_debug_string(v7);
        v41 = 0.0;
        Float = CGCFDictionaryGetFloat(theDict, @"kCGImageProviderContentHeadroom", &v41);
        v37 = v41;
        if (!Float)
        {
          v37 = 0.0;
        }

        *(v7 + 132) = v37;
        LODWORD(v41) = 0;
        Integer = CGCFDictionaryGetInteger(theDict, @"kCGImageProviderContentAverageLightLevelNits", &v41);
        v39 = LODWORD(v41);
        if (!Integer)
        {
          v39 = 0;
        }

        *(v7 + 136) = v39;
        return v7;
      }

LABEL_93:
      _CGHandleAssert("CGImageProviderCreate", 383, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageProvider.c", "", "Unimplemented");
    }

    if (v32 == 2)
    {
      v33 = *a4;
      v34 = a4[1];
    }

    else
    {
      if (v32 != 3)
      {
        goto LABEL_93;
      }

      v33 = *a4;
      v34 = a4[1];
      *(v7 + 96) = a4[2];
    }

    *(v7 + 80) = v34;
    goto LABEL_84;
  }

  return v7;
}

uint64_t CGTypeCreateInstance(uint64_t a1, uint64_t a2)
{
  if (a2 > 0xFFFFFFFFLL || (result = _CFRuntimeCreateInstance()) == 0)
  {
    CGPostError("%s: failed to create instance of type %jd.", "CGTypeCreateInstance", a1);
    return 0;
  }

  return result;
}

CFTypeRef icc_create_icc_profile_description(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 24) != 6)
  {
    _CGHandleAssert("icc_create_icc_profile_description", 164, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased", "Colorspace must be ICC based. type = %d", *(v1 + 24));
  }

  v2 = *(v1 + 96);
  result = *(v2 + 32);
  if (result)
  {
    goto LABEL_10;
  }

  v4 = *(v2 + 8);
  if (copy_icc_profile_description_cglibrarypredicate != -1)
  {
    dispatch_once(&copy_icc_profile_description_cglibrarypredicate, &__block_literal_global_55);
  }

  v5 = copy_icc_profile_description_f(v4);
  v6 = 0;
  if (!v5)
  {
    v5 = @"<no description>";
  }

  atomic_compare_exchange_strong_explicit((v2 + 32), &v6, v5, memory_order_relaxed, memory_order_relaxed);
  if (v6)
  {
    CFRelease(v5);
  }

  result = *(v2 + 32);
  if (result)
  {
LABEL_10:

    return CFRetain(result);
  }

  return result;
}

CFStringRef create_debug_string(uint64_t a1)
{
  v27[2] = *MEMORY[0x1E69E9840];
  if (data_provider_debug_info_enabled_predicate != -1)
  {
    dispatch_once(&data_provider_debug_info_enabled_predicate, &__block_literal_global_42);
  }

  v2 = 0;
  if (a1 && (data_provider_debug_info_enabled_enabled & 1) != 0)
  {
    v19 = 0;
    v3 = *(a1 + 64);
    if (v3 >= 2)
    {
      if (v3 == 2)
      {
        v4 = 3;
      }

      else
      {
        if (v3 != 3)
        {
          _CGHandleAssert("create_debug_string", 111, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImageProvider.c", "count != 0 && count <= kMaxCount", "count: %lu", 0);
        }

        v4 = 5;
      }
    }

    else
    {
      v4 = 2;
    }

    v5 = *(a1 + 80);
    v27[0] = *(a1 + 72);
    v27[1] = v5;
    v26[0] = v27[0];
    v26[1] = v5;
    v25[0] = v27[0];
    v25[1] = v5;
    v22[0] = v27[0];
    v22[1] = v5;
    v6 = *(a1 + 88);
    v25[2] = *(a1 + 88);
    v23 = v6;
    v24 = *(a1 + 104);
    bzero(v21, 0x285uLL);
    v7 = create_debug_string_names_v2;
    v8 = v25;
    v9 = v26;
    if (!v3)
    {
      v9 = v27;
    }

    v10 = v22;
    if (v3 != 3)
    {
      v10 = 0;
    }

    v11 = create_debug_string_names_v3;
    if (v3 != 3)
    {
      v11 = 0;
    }

    if (v3 != 2)
    {
      v8 = v10;
      v7 = v11;
    }

    if (v3 >= 2)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    if (v3 >= 2)
    {
      v13 = v7;
    }

    else
    {
      v13 = create_debug_string_names_v1;
    }

    do
    {
      v14 = *v12;
      if (*v12)
      {
        memset(&v18, 0, sizeof(v18));
        if (dladdr(v14, &v18))
        {
          snprintf(__str, 0x80uLL, "%s %s:%s");
        }

        else
        {
          snprintf(__str, 0x80uLL, "%s %p");
        }

        __strcat_chk();
        __strcat_chk();
      }

      ++v13;
      ++v12;
      --v4;
    }

    while (v4);
    if (*(a1 + 129))
    {
      asprintf(&v19, "CGImageProvider: version: %d size: [%f, %f] headroom: %f  averagaLL: %usubImage rect [[%f, %f][%f, %f]]\n%s");
    }

    else
    {
      asprintf(&v19, "CGImageProvider: version: %d size: [%f, %f] headroom: %f averagaLL: %u\n%s");
    }

    if (*(a1 + 129) == 1)
    {
      debug_string = create_debug_string(*(a1 + 152));
    }

    else
    {
      debug_string = 0;
    }

    if (debug_string)
    {
      v16 = debug_string;
    }

    else
    {
      v16 = &stru_1EF244DC0;
    }

    v2 = CFStringCreateWithFormat(0, 0, @"%s%@%@", v19, v16, &stru_1EF244DC0);
    if (debug_string)
    {
      CFRelease(debug_string);
    }

    free(v19);
  }

  return v2;
}

uint64_t CGCFDictionaryGetFloat(CFDictionaryRef theDict, const void *a2, void *a3)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (result)
      {
        v6 = result;
        v7 = CFGetTypeID(result);
        if (v7 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(v6, kCFNumberDoubleType, &valuePtr);
          if (a3)
          {
            *a3 = valuePtr;
          }

          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t CGImageCreateWithImageProvider(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    CGPostError("%s: invalid image provider: NULL.", a2);
    return 0;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v6 < 1.0 || v5 < 1.0 || v6 != v6 || v5 != v5)
  {
    CGPostError("%s: invalid image size: %g x %g.", a2, a3, a4);
    return 0;
  }

  v12 = a4;
  v13 = a3;
  v15 = *(a1 + 120);
  if (!v15 || (Property = CGPropertiesGetProperty(v15, @"kCGImageProviderColorSpaceChangedOnImageCopy")) == 0)
  {
    Property = *(a1 + 40);
  }

  Model = CGColorSpaceGetModel(Property);
  if (Model >= kCGColorSpaceModelPattern && Model != kCGColorSpaceModelXYZ)
  {
    CGPostError("%s: invalid image colorspace.", v18);
    return 0;
  }

  v20 = *(a1 + 36);
  v32 = v20;
  if (Property)
  {
    v21 = *(*(Property + 3) + 48);
  }

  else
  {
    v21 = 0;
  }

  if ((v20 & 0x1F) != 0)
  {
    v22 = v21 + 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(a1 + 32);
  if (v23 > 3)
  {
    if (v23 == 4)
    {
      goto LABEL_39;
    }

    if (v23 != 5)
    {
      if (v23 == 6)
      {
        v24 = 32;
        v25 = 10;
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v32 = v20 | 0x100;
  }

  else
  {
    if (v23 == 1)
    {
      v24 = 8 * v22;
      v25 = 8;
      goto LABEL_44;
    }

    if (v23 != 2)
    {
      if (v23 == 3)
      {
        v32 = v20 | 0x2000;
LABEL_39:
        v24 = 32 * v22;
        v25 = 32;
        goto LABEL_44;
      }

LABEL_41:
      CGPostError("%s: invalid image component type.", v18);
      return 0;
    }
  }

  v24 = 16 * v22;
  v25 = 16;
LABEL_44:
  v30 = 0;
  v29 = 0;
  if (!verify_image_parameters(Property, &v32, v6, v25, v24, (v24 * v6) >> 3, a2, v31, &v29, &v30))
  {
    return 0;
  }

  v28 = v22;
  image_base = create_image_base();
  v10 = image_base;
  if (image_base)
  {
    *(image_base + 40) = v6;
    *(image_base + 48) = v5;
    *(image_base + 56) = v25;
    *(image_base + 64) = v24;
    *(image_base + 72) = (v24 * v6) >> 3;
    *(image_base + 32) = v32;
    if (Property)
    {
      CFRetain(Property);
    }

    *(v10 + 144) = Property;
    *(v10 + 152) = 0;
    CFRetain(a1);
    if (v13)
    {
      v27 = 0x1000000;
    }

    else
    {
      v27 = 0;
    }

    *(v10 + 36) = v27 & 0xFFFF00FF | (v12 << 8) | *(v10 + 36) & 0xF0FF0000 | (v29 << 26) | 1;
    *(v10 + 200) = 0;
    *(v10 + 208) = a1;
    *(v10 + 232) = 0u;
    *(v10 + 248) = 0u;
    cgimage_set_decode_array(v10, a2, v28);
    add_headroom_info_from_image_provider(v10);
  }

  return v10;
}

uint64_t CGColorSpaceGetType(void *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFGetTypeID(a1);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v2 == CGColorSpaceGetTypeID_type_id)
  {
    return *(a1[3] + 24);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

_DWORD *CGPropertiesCreate()
{
  v0 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  v0[1] = 0;
  *v0 = 1;
  *(v0 + 1) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  return v0;
}

void CGPropertiesSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  os_unfair_lock_lock((a1 + 4));
  CFDictionarySetValue(*(a1 + 8), a2, a3);

  os_unfair_lock_unlock((a1 + 4));
}

uint64_t CGCFDictionaryGetInteger(CFDictionaryRef theDict, const void *a2, _DWORD *a3)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (result)
      {
        v6 = result;
        v7 = CFGetTypeID(result);
        if (v7 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          result = CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
          if (result)
          {
            if (a3)
            {
              *a3 = valuePtr;
            }

            return 1;
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void CGImageProviderSetProperty(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (!a1 || !cf1 || !a3)
  {
    return;
  }

  if (CFEqual(cf1, @"kCGImageProviderAlphaIsOne") == 1)
  {
    if (CFEqual(a3, *MEMORY[0x1E695E4D0]))
    {
      v6 = 1;
    }

    else
    {
      if (!CFEqual(a3, *MEMORY[0x1E695E4C0]))
      {
        goto LABEL_11;
      }

      v6 = 0;
    }

    *(a1 + 130) = v6;
  }

LABEL_11:
  if (!*(a1 + 120))
  {
    v7 = CGPropertiesCreate();
    v8 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 120), &v8, v7, memory_order_relaxed, memory_order_relaxed);
    if (v8)
    {
      CGPropertiesRelease(v7);
    }
  }

  v9 = *(a1 + 120);

  CGPropertiesSetProperty(v9, cf1, a3);
}

uint64_t CGColorSpaceGetRenderingIntent(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  Type = CGColorSpaceGetType(a1);
  switch(Type)
  {
    case 11:
      Value = **(a1[3] + 96);
      break;
    case 10:
      v4 = a1[3];
      if (*(v4 + 24) != 10)
      {
        _CGHandleAssert("CGColorSpaceProfileSetsGetSourceProfile", 434, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ProfileSets.c", "s->state->type == kCGColorSpaceProfileSets", "type = %d", *(v4 + 24));
      }

      v5 = *(v4 + 96);
      Value = *(v5 + 8);
      if (Value)
      {
        v6 = CFGetTypeID(*(v5 + 8));
        if (v6 != CFArrayGetTypeID())
        {
          goto LABEL_13;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
        Value = ValueAtIndex;
        if (!ValueAtIndex)
        {
          break;
        }

        v8 = CFGetTypeID(ValueAtIndex);
        if (v8 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(Value, @"ColorSyncProfile");
        }

        else
        {
LABEL_13:
          Value = 0;
        }
      }

      break;
    case 6:
      Value = *(*(a1[3] + 96) + 8);
      break;
    default:
      return 0;
  }

  if (CGColorSpaceGetRenderingIntent_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorSpaceGetRenderingIntent_cglibrarypredicate, &__block_literal_global_23_23446);
  }

  RenderingIntent_f = CGColorSpaceGetRenderingIntent_f(Value);
  if (!RenderingIntent_f)
  {
    return 0;
  }

  v10 = RenderingIntent_f;
  v11 = *(CFDataGetBytePtr(RenderingIntent_f) + 16) - 1;
  if (v11 > 2)
  {
    v12 = 3;
  }

  else
  {
    v12 = dword_184566300[v11];
  }

  CFRelease(v10);
  return v12;
}

void add_headroom_info_from_image_provider(void *a1)
{
  v2 = CFGetTypeID(a1);
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  if (v2 == CGImageGetTypeID_image_type_id)
  {
    ImageProvider = CGImageGetImageProvider(a1);
    if (ImageProvider)
    {
      v4 = ImageProvider;
      ColorSpace = CGImageGetColorSpace(a1);
      if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
      {
        v12 = 0;
        if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || CGColorSpaceUsesExtendedRange(ColorSpace))
        {
          Property = *(v4 + 120);
          if (Property)
          {
            Property = CGPropertiesGetProperty(Property, @"kCGImageCalculateHeadroom");
          }

          if (Property == *MEMORY[0x1E695E4D0])
          {
            ContentHeadroom = calculate_headroom(a1, &v12);
            v8 = v12;
          }

          else
          {
            ContentHeadroom = CGImageProviderGetContentHeadroom(v4);
            v8 = ContentHeadroom != 0.0;
            v9 = *(v4 + 120);
            if (!v9 || (v10 = CGPropertiesGetProperty(v9, @"kCGImageProviderColorSpaceChangedOnImageCopy")) == 0)
            {
              v10 = *(v4 + 40);
            }

            if ((verify_headroom_and_colorspace(v10, ContentHeadroom) & 1) == 0)
            {
              v11 = CGImageGetColorSpace(a1);
              if (CGColorSpaceUsesExtendedRange(v11))
              {
                v8 = 0;
                ContentHeadroom = 0.0;
              }
            }
          }
        }

        else
        {
          ContentHeadroom = 1.0;
          v8 = 1;
        }

        CGImageSetHeadroom(a1, v8, ContentHeadroom);
      }
    }
  }
}

uint64_t CGImageSetHeadroom(uint64_t *image, int a2, float a3)
{
  if (a3 < 1.0 && (a3 != 0.0 || a2 != 0))
  {
    return 0;
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    return 1;
  }

  if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || CGColorSpaceUsesExtendedRange(ColorSpace))
  {
    if (CGColorSpaceContainsFlexGTCInfo(ColorSpace))
    {
      v8 = vabds_f32(CGColorSpaceGetHeadroomInfo(ColorSpace, 0), a3);
      return v8 <= 0.00001;
    }

    if (a2 == 1)
    {
      v9 = image[26];
      if (v9)
      {
        v10 = 0;
LABEL_28:
        CGImageProviderSetContentHeadroom(v9, a3);
LABEL_29:
        v11 = 1;
        if (!v10)
        {
          return v11;
        }

LABEL_30:
        CFRelease(v10);
        return v11;
      }
    }

    valuePtr = a3;
    v13 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v10 = v13;
    if (a2)
    {
      if (a2 != 2)
      {
        if (a2 != 1)
        {
          v11 = 0;
          if (!v13)
          {
            return v11;
          }

          goto LABEL_30;
        }

        v9 = image[26];
        if (!v9)
        {
          set_content_headroom_to_conversion_info(image, @"kCGImageHeadroom", v10);
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      v14 = @"kCGImageEstimatedHeadroom";
    }

    else
    {
      v14 = @"kCGImageUnknownHeadroom";
    }

    set_content_headroom_to_conversion_info(image, v14, v13);
    v9 = image[26];
    if (!v9)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v8 = fabsf(a3 + -1.0);
  return v8 <= 0.00001;
}

uint64_t verify_image_parameters(CGColorSpace *a1, unsigned int *a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t *a8, _BYTE *a9, void *a10)
{
  v18 = *a2;
  if ((v18 & 0x100) != 0)
  {
    if (a4 == 16)
    {
      if ((a5 & 0xF) == 0)
      {
        v19 = v18 & 0x7000;
        v20 = a5 == 16;
        goto LABEL_17;
      }
    }

    else
    {
      if (a4 != 32)
      {
        CGPostError("%s: invalid floating-point bits/component: %lu.");
        return 0;
      }

      if ((a5 & 0x1F) == 0)
      {
        goto LABEL_7;
      }
    }

    CGPostError("%s: invalid floating-point bits/pixel: %lu.");
    return 0;
  }

  if ((a4 - 33) <= 0xFFFFFFFFFFFFFFDFLL)
  {
    CGPostError("%s: invalid integer bits/component: %lu.");
    return 0;
  }

LABEL_7:
  v19 = v18 & 0x7000;
  v20 = a5 == 16;
  if (a4 != 16 && a5 != 16)
  {
    if ((v18 & 0x5000) != 0x1000)
    {
      v20 = 0;
      goto LABEL_23;
    }

    CGPostError("%s: invalid image byte order info for bitsPerPixel != 16 = %u", "verify_image_parameters", v18 & 0x7000);
    v21 = linked_on_sydro_or_later();
    v20 = 0;
    result = 0;
    if (v21)
    {
      return result;
    }

    goto LABEL_22;
  }

LABEL_17:
  if ((v18 & 0x5000) != 0x1000 && v19 != 0)
  {
    CGPostError("%s: invalid image byte order info for bitsPerPixel == 16 = %u", "verify_image_parameters", v19);
    if (linked_on_sydro_or_later())
    {
      return 0;
    }

LABEL_22:
    v19 = 0;
    v18 = *a2 & 0xFFFF8FFF;
    *a2 = v18;
  }

LABEL_23:
  v25 = a4 != 16 && a5 == 32;
  if (a4 == 32 || v25)
  {
    if (v19 == 0x4000 || (v19 & 0x5000) == 0)
    {
      goto LABEL_39;
    }

    CGPostError("%s: invalid image byte order info for bitsPerPixel == 32 = %u");
  }

  else
  {
    if (v19 != 0x4000 && v19 != 0x2000)
    {
      goto LABEL_39;
    }

    CGPostError("%s: invalid image byte order info for bitsPerPixel != 32 = %u");
  }

  if (linked_on_sydro_or_later())
  {
    return 0;
  }

  v19 = 0;
  v18 = *a2 & 0xFFFF8FFF;
  *a2 = v18;
LABEL_39:
  if ((valid_image_colorspace(a1, v18) & 1) == 0)
  {
    CGPostError("%s: invalid image colorspace: NULL.");
    return 0;
  }

  if (a1)
  {
    v26 = *(*(a1 + 3) + 48);
  }

  else
  {
    v26 = 0;
  }

  v34 = v26;
  *a10 = v26;
  v35 = *a2 & 0x1F;
  Model = CGColorSpaceGetModel(a1);
  v28 = Model;
  if (a5 == 32 && a4 == 8 && Model == kCGColorSpaceModelRGB && !v35)
  {
    CGPostError("%s: invalid image alphaInfo: kCGImageAlphaNone. It should be kCGImageAlphaNoneSkipLast", "verify_image_parameters");
    if (linked_on_dawnburst_or_later_predicate != -1)
    {
      dispatch_once(&linked_on_dawnburst_or_later_predicate, &__block_literal_global_310);
    }

    if (linked_on_dawnburst_or_later_linked_on_macOS14_or_later & 1) != 0 || (linked_on_dawnburst_or_later_linked_on_iOS17_or_later & 1) != 0 || (linked_on_dawnburst_or_later_linked_on_tvOS17_or_later & 1) != 0 || (linked_on_dawnburst_or_later_linked_on_watchOS10_or_later & 1) != 0 || (linked_on_dawnburst_or_later_linked_on_borealis_or_later)
    {
      return 0;
    }

    v29 = *a2 & 0xFFFFFFE0 | 5;
    *a2 = v29;
  }

  else
  {
    v29 = *a2;
  }

  *a9 = 0;
  if ((v29 & 0x1F) - 1 < 4)
  {
    *a9 = 1;
    ++*a10;
LABEL_61:
    ++v34;
    v30 = v20;
    goto LABEL_62;
  }

  if ((v29 & 0x1F) - 5 < 2)
  {
    goto LABEL_61;
  }

  v30 = v20;
  if ((v29 & 0x1F) != 0)
  {
    CGPostError("%s: invalid image alphaInfo: %d");
    return 0;
  }

LABEL_62:
  v31 = v29 & 0xF0000;
  v32 = !v30;
  if (a4 != 5)
  {
    v32 = 1;
  }

  if ((v32 & 1) != 0 || v28 != kCGColorSpaceModelRGB)
  {
    if (a5 == 32 && a4 == 10 && v28 == kCGColorSpaceModelRGB)
    {
      if (v31 == 196608)
      {
        if ((v29 & 0x1F) == 0)
        {
          CGPostError("%s: invalid alpha info for kCGImagePixelFormatRGB101010 = %u");
          return 0;
        }
      }

      else
      {
        if (v31 != 0x40000)
        {
          goto LABEL_93;
        }

        if (v35)
        {
          CGPostError("%s: invalid alpha info for kCGImagePixelFormatRGBCIF10 = %u. Use kCGImageAlphaNone instead.");
          return 0;
        }

        if (v19 != 0x2000)
        {
          CGPostError("%s: invalid image byte order info for kCGImagePixelFormatRGBCIF10 = %u");
          return 0;
        }

        if (a7)
        {
          CGPostError("%s: kCGImagePixelFormatRGBCIF10 doesn't not allow decode");
          return 0;
        }
      }
    }

    else
    {
      if (v34 * a4 != a5)
      {
        CGPostError("%s: invalid image bits/component: %lu bits/pixel %lu alpha info = %s");
        return 0;
      }

      if (v31)
      {
        CGPostError("%s: invalid image pixel format info = %u");
        return 0;
      }
    }
  }

  else
  {
    if (v31 != 0x20000)
    {
      if (v31 == 0x10000)
      {
        goto LABEL_70;
      }

      if (!v31)
      {
        v29 |= 0x10000u;
        *a2 = v29;
LABEL_70:
        if ((v29 & 0x1F) <= 2)
        {
          CGPostError("%s: invalid alpha info for kCGImagePixelFormatRGB555 = %u");
          return 0;
        }

        goto LABEL_89;
      }

LABEL_93:
      CGPostError("%s: invalid image bits/component: %lu bits/pixel %lu pixel format = %u");
      return 0;
    }

    if ((v29 & 0x1F) != 0)
    {
      CGPostError("%s: invalid alpha info for kCGImagePixelFormatRGB565 = %u");
      return 0;
    }
  }

LABEL_89:
  if (0xFFFFFFFFFFFFFFF8 / a5 < a3)
  {
    CGPostError("%s: invalid image width.");
    return 0;
  }

  if (0x7FFFFFF8 / a5 < a3)
  {
    CGPostError("%s: unsupported image width: %lu.");
    return 0;
  }

  if (a6 >> 31)
  {
    CGPostError("%s: unsupported image bytes/row: %lu.");
    return 0;
  }

  *a8 = a3 * a5;
  if (!is_mul_ok(a3, a5))
  {
    CGPostError("%s: invalid image bits/pixel or width.");
    return 0;
  }

  v33 = (a3 * a5 + 7) >> 3;
  *a8 = v33;
  if (v33 > a6)
  {
    CGPostError("%s: invalid image bits/pixel or bytes/row.");
    return 0;
  }

  return 1;
}

CGColorSpaceRef CGImageGetColorSpace(CGColorSpaceRef image)
{
  if (image)
  {
    v1 = image;
    v2 = CFGetTypeID(image);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return *(v1 + 18);
    }

    else
    {
      return 0;
    }
  }

  return image;
}

uint64_t create_image_base()
{
  v4 = *MEMORY[0x1E69E9840];
  if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
  }

  Instance = CGTypeCreateInstance(CGImageGetTypeID_image_type_id, 248);
  v1 = Instance;
  if (Instance)
  {
    *(Instance + 24) = atomic_fetch_add_explicit(identifier, 1u, memory_order_relaxed) + 1;
    *(Instance + 28) = 48879;
    v3.__sig = 0;
    *v3.__opaque = 0;
    pthread_mutexattr_init(&v3);
    pthread_mutexattr_settype(&v3, 2);
    pthread_mutex_init((v1 + 80), &v3);
    pthread_mutexattr_destroy(&v3);
  }

  return v1;
}

double cgimage_set_decode_array(void **image, double *a2, unint64_t a3)
{
  if (!a2)
  {
    goto LABEL_39;
  }

  ColorSpace = CGImageGetColorSpace(image);
  v7 = ColorSpace;
  if (ColorSpace)
  {
    v8 = *(*(ColorSpace + 3) + 48);
  }

  else
  {
    v8 = image[8] / image[7];
  }

  v9 = image[4] & 0x1F;
  if (v9 > 6)
  {
    goto LABEL_12;
  }

  if (((1 << v9) & 0x2A) != 0)
  {
    v12 = 0;
    v11 = v8 + 1;
    v10 = 1;
    goto LABEL_14;
  }

  if (((1 << v9) & 0x14) != 0)
  {
    v10 = 0;
    v11 = v8 + 1;
    v12 = 1;
    goto LABEL_14;
  }

  if (v9 == 6)
  {
    v12 = 0;
    v10 = 0;
    v11 = v8 + 1;
  }

  else
  {
LABEL_12:
    if (v9)
    {
      CGPostError("%s: invalid image alphaInfo: %d");
      goto LABEL_39;
    }

    v12 = 0;
    v10 = 0;
    v11 = v8;
  }

LABEL_14:
  if (v8 > a3 || v11 < a3)
  {
    CGPostError("%s: invalid number of decode components: %d");
LABEL_39:
    free(image[20]);
    image[20] = 0;
    return result;
  }

  v14 = v12 | v10;
  if (v11 == a3)
  {
    v14 = 0;
  }

  v42 = v10;
  v43 = v14;
  v41 = v12;
  v15 = v14 & 1 | ((v12 & 1) == 0);
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

  v17 = &a2[v16];
  if (v15 || *a2 == 0.0 && a2[1] == 1.0)
  {
    v18 = 1;
    if (!ColorSpace)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v18 = 0;
    if (!ColorSpace)
    {
LABEL_32:
      if (!v8)
      {
        v26 = 1;
        v25 = v42;
        v24 = v43;
        goto LABEL_73;
      }

      v22 = &a2[v16 + 1];
      v23 = v8;
      v25 = v42;
      v24 = v43;
      while (*(v22 - 1) == 0.0 && *v22 == 1.0)
      {
        v22 += 2;
        if (!--v23)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_72;
    }
  }

  v19 = v18;
  v20 = image[7];
  Type = CGColorSpaceGetType(ColorSpace);
  if (Type <= 5)
  {
    v18 = v19;
    if (Type < 5)
    {
      goto LABEL_32;
    }

    if (Type == 5)
    {
      v46 = 0u;
      v47 = 0u;
      v45 = 0u;
      memset(v44, 0, sizeof(v44));
      CGColorSpaceGetLabData(v7, v44);
      if (*v17 == 0.0)
      {
        v25 = v42;
        v24 = v43;
        v18 = v19;
        if (v17[1] == 100.0 && v17[2] == *&v45 && v17[3] == *(&v45 + 1) && v17[4] == *&v46 && v17[5] == *(&v46 + 1))
        {
LABEL_37:
          v26 = 1;
          goto LABEL_73;
        }

LABEL_72:
        v26 = 0;
        goto LABEL_73;
      }

LABEL_57:
      v26 = 0;
      v25 = v42;
      v24 = v43;
      v18 = v19;
      goto LABEL_73;
    }

LABEL_98:
    abort();
  }

  if (Type > 9)
  {
    if ((Type - 10) > 1)
    {
      goto LABEL_98;
    }

LABEL_48:
    v28 = CGColorSpaceICCGetRange(v7);
    if (v28)
    {
      v25 = v42;
      v18 = v19;
      if (!v8)
      {
        v26 = 1;
        v24 = v43;
        goto LABEL_73;
      }

      v29 = (v28 + 8);
      v30 = &a2[v16 + 1];
      v31 = v8;
      v24 = v43;
      v26 = 1;
      while (*(v30 - 1) == *(v29 - 1) && *v30 == *v29)
      {
        v29 += 2;
        v30 += 2;
        if (!--v31)
        {
          goto LABEL_73;
        }
      }

      goto LABEL_72;
    }

    goto LABEL_57;
  }

  if (Type == 6)
  {
    goto LABEL_48;
  }

  v18 = v19;
  if (Type != 7)
  {
    if (Type == 8)
    {
      goto LABEL_32;
    }

    goto LABEL_98;
  }

  if (v8 != 1)
  {
    _CGHandleAssert("colorspace_indexed_decode_array_is_identity", 159, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "decode_components == 1", "decode components %zu", v8);
  }

  v24 = v43;
  if (v20 >= 0x21)
  {
    _CGHandleAssert("colorspace_indexed_decode_array_is_identity", 160, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGImage.c", "bits_per_component <= 32", "bpc %zu", v20);
  }

  if (*v17 != 0.0)
  {
    goto LABEL_64;
  }

  v32 = ~(-1 << v20);
  if (v20 == 32)
  {
    v32 = 4294967300.0;
  }

  if (v17[1] == v32)
  {
    v26 = 1;
  }

  else
  {
LABEL_64:
    v26 = 0;
  }

  v25 = v42;
LABEL_73:
  v33 = v18 & v26;
  if (v24 & 1 | ((v25 & 1) == 0))
  {
    if (v33)
    {
      goto LABEL_39;
    }

    v34 = 2 * v11;
  }

  else
  {
    v34 = 2 * v11;
    v35 = &a2[2 * v11];
    if (*(v35 - 2) == 0.0)
    {
      if (*(v35 - 1) != 1.0)
      {
        v33 = 0;
      }

      if (v33)
      {
        goto LABEL_39;
      }
    }
  }

  free(image[20]);
  v36 = malloc_type_malloc(v34 * 8, 0x100004000313F17uLL);
  image[20] = v36;
  v37 = v36;
  if (v41)
  {
    if (v24)
    {
      *v36 = 0.0;
      result = 1.0;
    }

    else
    {
      *v36 = *a2;
      result = a2[1];
    }

    v36[1] = result;
    v37 = v36 + 2;
  }

  if (2 * v8)
  {
    v38 = 2 * v8;
    do
    {
      v39 = *v17++;
      result = v39;
      *v37++ = v39;
      --v38;
    }

    while (v38);
  }

  if (v25)
  {
    if (v24)
    {
      v36[v34 - 2] = 0.0;
      result = 1.0;
    }

    else
    {
      v40 = &a2[2 * a3];
      v36[v34 - 2] = *(v40 - 2);
      result = *(v40 - 1);
    }

    v36[v34 - 1] = result;
  }

  if ((image[4] & 0x1F) == 6)
  {
    result = 0.0;
    *&v36[2 * v8] = xmmword_18439C780;
  }

  return result;
}

CGColorRef CGColorCreate(CGColorSpaceRef space, const CGFloat *components)
{
  v2 = 0;
  if (!space || !components)
  {
    return v2;
  }

  if (CGColorSpaceGetType(space) == 9)
  {
    return 0;
  }

  if (CGColorCreate_onceToken != -1)
  {
    dispatch_once(&CGColorCreate_onceToken, &__block_literal_global_2436);
  }

  if (CGColorCreate_supportsTaggedPointers == 1)
  {
    v6 = *(space + 3);
    v7 = *(v6 + 80);
    if (v7)
    {
      v8 = *(v6 + 48);
      Type = CGColorSpaceGetType(space);
      if (Type < 5 && ((0x1Bu >> Type) & 1) != 0)
      {
        v10 = qword_1844D5038[Type];
      }

      else
      {
        v11 = *(*(space + 3) + 48);
        if (v11 == 2)
        {
          if (CFEqual(v7, @"kCGColorSpaceSRGB"))
          {
            v10 = 224;
          }

          else if (CFEqual(v7, @"kCGColorSpaceExtendedSRGB"))
          {
            v10 = 448;
          }

          else if (CFEqual(v7, @"kCGColorSpaceDisplayP3"))
          {
            v10 = 384;
          }

          else if (CFEqual(v7, @"kCGColorSpaceLinearSRGB"))
          {
            v10 = 512;
          }

          else if (CFEqual(v7, @"kCGColorSpaceExtendedLinearSRGB"))
          {
            v10 = 544;
          }

          else if (CFEqual(v7, @"kCGColorSpaceDCIP3"))
          {
            v10 = 416;
          }

          else
          {
            if (!CFEqual(v7, @"kCGColorSpaceAdobeRGB1998"))
            {
              goto LABEL_110;
            }

            v10 = 256;
          }
        }

        else
        {
          if (v11 != 1)
          {
            goto LABEL_110;
          }

          if (CFEqual(v7, @"kCGColorSpaceExtendedGray"))
          {
            v10 = 480;
          }

          else
          {
            if (!CFEqual(v7, @"kCGColorSpaceGenericGrayGamma2_2"))
            {
              goto LABEL_110;
            }

            v10 = 288;
          }
        }
      }

      if (v8 == 1)
      {
        v21 = *components;
        v20 = components[1];
        v22 = (*components * 65535.0);
        if (v22 / 65535.0 == *components)
        {
          v23 = (v20 * 65535.0);
          if (v23 / 65535.0 == v20)
          {
            if (CGTaggedColorCreate_predicate != -1)
            {
              v53 = (v20 * 65535.0);
              dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
              v23 = v53;
            }

            v24 = *MEMORY[0x1E69E5910];
            v2 = ((v22 << 39) | (v23 << 23) | v10) - 0x7AFFFFFFFFFFF7F1;
            goto LABEL_54;
          }
        }

        if (v21 == 1.0 && (v28 = v20 * 100.0, v28 / 100.0 == v20))
        {
          v29 = LODWORD(v28);
          if (CGTaggedColorCreate_predicate != -1)
          {
            dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
          }

          v17 = *MEMORY[0x1E69E5910];
          v30 = v10 | (v29 << 23);
          v31 = 28687;
        }

        else
        {
          if (v21 == 0.0)
          {
            v32 = v20 * 100.0;
            if (v32 / 100.0 == v20)
            {
              v33 = LODWORD(v32);
              if (CGTaggedColorCreate_predicate != -1)
              {
                dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
              }

              v17 = *MEMORY[0x1E69E5910];
              v18 = v10 | (v33 << 23);
              v19 = 28687;
              goto LABEL_71;
            }
          }

          v36 = v21 * 100.0;
          v37 = v36;
          if (v20 == 1.0 && v37 / 100.0 == v21)
          {
            v38 = LODWORD(v36);
            if (CGTaggedColorCreate_predicate != -1)
            {
              dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
            }

            v17 = *MEMORY[0x1E69E5910];
            v39 = v10 | (v38 << 23);
            v40 = 22543;
            goto LABEL_82;
          }

          if (v20 != 0.0 || v37 / 100.0 != v21)
          {
            v47 = v36;
            v48 = v20 * 100.0;
            v49 = v48;
            if (v47 / 100.0 != v21 || v49 / 100.0 != v20)
            {
              goto LABEL_110;
            }

            if (CGTaggedColorCreate_predicate != -1)
            {
              v55 = v48;
              dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
              v49 = v55;
            }

            v24 = *MEMORY[0x1E69E5910];
            v2 = (v47 << 39) | (v49 << 23) | v10 | 0x850000000000180FLL;
            goto LABEL_54;
          }

          v44 = LODWORD(v36);
          if (CGTaggedColorCreate_predicate != -1)
          {
            dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
          }

          v17 = *MEMORY[0x1E69E5910];
          v30 = v10 | (v44 << 23);
          v31 = 22543;
        }
      }

      else
      {
        if (v8 != 3)
        {
          goto LABEL_110;
        }

        v12 = *components;
        v13 = components[1];
        v15 = components[2];
        v14 = components[3];
        if ((*components * 255.0) / 255.0 == *components && (v13 * 255.0) / 255.0 == v13 && (v15 * 255.0) / 255.0 == v15 && (v14 * 255.0) / 255.0 == v14)
        {
          v16 = ((*components * 255.0) << 24) | ((v13 * 255.0) << 16) | ((v15 * 255.0) << 8) | (v14 * 255.0);
          if (CGTaggedColorCreate_predicate != -1)
          {
            dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
          }

          v17 = *MEMORY[0x1E69E5910];
          v18 = v10 | (v16 << 23);
          v19 = 15;
LABEL_71:
          v2 = v18 | v19 & 0xFFFFFFFFFFFFLL | 0x8500000000000000;
          goto LABEL_83;
        }

        if (v12 != v13 || v13 != v15)
        {
          goto LABEL_110;
        }

        v25 = (v12 * 65535.0);
        if (v25 / 65535.0 == v12)
        {
          v26 = (v14 * 65535.0);
          if (v26 / 65535.0 == v14)
          {
            if (CGTaggedColorCreate_predicate != -1)
            {
              v54 = (v14 * 65535.0);
              dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
              v26 = v54;
            }

            v24 = *MEMORY[0x1E69E5910];
            v2 = ((v25 << 39) | (v26 << 23) | v10) - 0x7AFFFFFFFFFFEFF1;
LABEL_54:
            v27 = v24 ^ v2;
LABEL_84:
            if ((~v27 & 0xC000000000000007) == 0 || (v2 = v27 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v27 & 7))) != 0)
            {
              adjusted_headroom(*(v2 + 24), 0.0);
              *(v2 + 64) = v43;
              return v2;
            }

            goto LABEL_110;
          }
        }

        if (v12 == 1.0)
        {
          v34 = v14 * 100.0;
          if (v34 / 100.0 == v14)
          {
            v35 = LODWORD(v34);
            if (CGTaggedColorCreate_predicate != -1)
            {
              dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
            }

            v17 = *MEMORY[0x1E69E5910];
            v18 = v10 | (v35 << 23);
            v19 = 22543;
            goto LABEL_71;
          }
        }

        if (v12 == 0.0)
        {
          v41 = v14 * 100.0;
          if (v41 / 100.0 == v14)
          {
            v42 = LODWORD(v41);
            if (CGTaggedColorCreate_predicate != -1)
            {
              dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
            }

            v17 = *MEMORY[0x1E69E5910];
            v39 = v10 | (v42 << 23);
            v40 = 16399;
LABEL_82:
            v2 = v39 + (v40 & 0xFFFFFFFFFFFFLL | 0x8500000000000000) + 4096;
            goto LABEL_83;
          }
        }

        if (v14 != 1.0 || (v45 = v12 * 100.0, v45 / 100.0 != v12))
        {
          if (v14 != 0.0)
          {
            goto LABEL_110;
          }

          v51 = v12 * 100.0;
          if (v51 / 100.0 != v12)
          {
            goto LABEL_110;
          }

          v52 = LODWORD(v51);
          if (CGTaggedColorCreate_predicate != -1)
          {
            dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
          }

          v17 = *MEMORY[0x1E69E5910];
          v18 = v10 | (v52 << 23);
          v19 = 16399;
          goto LABEL_71;
        }

        v46 = LODWORD(v45);
        if (CGTaggedColorCreate_predicate != -1)
        {
          dispatch_once(&CGTaggedColorCreate_predicate, &__block_literal_global_39_2437);
        }

        v17 = *MEMORY[0x1E69E5910];
        v30 = v10 | (v46 << 23);
        v31 = 16399;
      }

      v2 = v30 + (v31 & 0xFFFFFFFFFFFFLL | 0x8500000000000000) + 2048;
LABEL_83:
      v27 = v17 ^ v2;
      goto LABEL_84;
    }
  }

LABEL_110:

  return create_color(space, components, 0.0);
}

uint64_t create_color(void *a1, void *a2, float a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  v7 = 0;
  if (a2 && v6 == CGColorSpaceGetTypeID_type_id)
  {
    v8 = *(a1[3] + 48) + 1;
    if (kCGColorContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
    }

    Instance = CGTypeCreateInstance(CGColorGetTypeID_color_type_id, 8 * v8 + 56);
    v7 = Instance;
    if (Instance)
    {
      *(Instance + 16) = atomic_fetch_add_explicit(create_color_identifier, 1u, memory_order_relaxed) + 1;
      CFRetain(a1);
      *(v7 + 24) = a1;
      *(v7 + 32) = 0;
      *(v7 + 56) = v8;
      adjusted_headroom(a1, a3);
      *(v7 + 64) = v10;
      memcpy((v7 + 72), a2, 8 * v8);
      CGColorSpaceAdjustColor(*(v7 + 24), a2, (v7 + 72));
    }
  }

  return v7;
}

const void *CGImageGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 216)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

const void *CGPropertiesGetProperty(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 4));
  Value = CFDictionaryGetValue(*(a1 + 8), a2);
  os_unfair_lock_unlock((a1 + 4));
  return Value;
}

uint64_t valid_image_colorspace(uint64_t result, int a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  Type = CGColorSpaceGetType(result);
  switch(Type)
  {
    case 5:
LABEL_6:
      if ((a2 & 0x1Fu) - 1 >= 2)
      {
        break;
      }

      return 0;
    case 9:
      return 0;
    case 7:
      if ((a2 & 0xF00) != 0)
      {
        return 0;
      }

      goto LABEL_6;
  }

  if ((a2 & 0xF0000) == 0x40000)
  {
    v5 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedSRGB");
    result = CFEqual(v3, v5);
    if (!result)
    {
      return result;
    }
  }

  else if ((a2 & 0xF0000) == 0x30000 && (CGColorSpaceUsesExtendedRange(v3) || CGColorSpaceGetModel(v3) != kCGColorSpaceModelRGB))
  {
    return 0;
  }

  return 1;
}

void *CGImageGetImageProvider(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v2 == CGImageGetTypeID_image_type_id)
    {
      return v1[26];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float CGImageGetHeadroomInfo(CGImage *a1, _DWORD *a2)
{
  v27 = 0;
  ColorSpace = CGImageGetColorSpace(a1);
  if (!ColorSpace)
  {
    goto LABEL_42;
  }

  v5 = ColorSpace;
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB)
  {
    goto LABEL_42;
  }

  if (!CGColorSpaceUsesITUR_2100TF(v5) && !CGColorSpaceUsesExtendedRange(v5))
  {
    v27 = 0x13F800000;
    goto LABEL_42;
  }

  if (CGColorSpaceContainsFlexGTCInfo(v5))
  {
    LODWORD(v27) = CGColorSpaceGetHeadroomInfo(v5, &v27 + 1);
    goto LABEL_38;
  }

  v6 = *(a1 + 26);
  if (v6)
  {
    ContentHeadroom = CGImageProviderGetContentHeadroom(v6);
    if (ContentHeadroom >= 0.0)
    {
      v8 = ContentHeadroom;
      *&v27 = ContentHeadroom;
      if (ContentHeadroom <= 0.0)
      {
        HIDWORD(v27) = 1;
        v17 = *(a1 + 28);
        if (!v17)
        {
          goto LABEL_42;
        }

        Property = CGPropertiesGetProperty(v17, @"kCGImageUnknownHeadroom");
        if (Property)
        {
          v19 = Property;
          v20 = CFGetTypeID(Property);
          if (v20 == CFNumberGetTypeID())
          {
            valuePtr = 0.0;
            CFNumberGetValue(v19, kCFNumberFloatType, &valuePtr);
            if (vabds_f32(valuePtr, v8) > 0.00001)
            {
              CGPostError("%s: image and image provider have different unknown origin values: %f, %f");
            }
          }
        }
      }

      else
      {
        v9 = *(a1 + 28);
        if (!v9 || (v10 = CGPropertiesGetProperty(v9, @"kCGImageEstimatedHeadroom")) == 0)
        {
          HIDWORD(v27) = 1;
          goto LABEL_42;
        }

        HIDWORD(v27) = 1;
        valuePtr = 0.0;
        CFNumberGetValue(v10, kCFNumberFloatType, &valuePtr);
        if (vabds_f32(valuePtr, v8) > 0.00001)
        {
          CGPostError("%s: image and image provider have different estimated values: %f, %f");
        }
      }
    }

    goto LABEL_38;
  }

  v11 = *(a1 + 28);
  if (!v11)
  {
    goto LABEL_38;
  }

  v12 = CGPropertiesGetProperty(v11, @"kCGImageHeadroom");
  v13 = *(a1 + 28);
  if (v13)
  {
    v14 = CGPropertiesGetProperty(v13, @"kCGImageEstimatedHeadroom");
    v15 = *(a1 + 28);
    if (v15)
    {
      v16 = CGPropertiesGetProperty(v15, @"kCGImageUnknownHeadroom");
      goto LABEL_28;
    }
  }

  else
  {
    v14 = 0;
  }

  v16 = 0;
LABEL_28:
  if (v12)
  {
    v21 = CFGetTypeID(v12);
    if (v21 == CFNumberGetTypeID())
    {
      HIDWORD(v27) = 1;
      v22 = v12;
LABEL_37:
      CFNumberGetValue(v22, kCFNumberFloatType, &v27);
      goto LABEL_38;
    }
  }

  if (v14)
  {
    v23 = CFGetTypeID(v14);
    if (v23 == CFNumberGetTypeID())
    {
      HIDWORD(v27) = 2;
      v22 = v14;
      goto LABEL_37;
    }
  }

  if (v16)
  {
    v24 = CFGetTypeID(v16);
    if (v24 == CFNumberGetTypeID())
    {
      HIDWORD(v27) = 0;
      v22 = v16;
      goto LABEL_37;
    }
  }

LABEL_38:
  if (!HIDWORD(v27))
  {
    if (CGColorSpaceUsesExtendedRange(v5))
    {
      LODWORD(v27) = 0;
    }

    else
    {
      LODWORD(v27) = CGColorSpaceGetHeadroomInfo(v5, &v27 + 1);
    }
  }

LABEL_42:
  if (a2)
  {
    *a2 = HIDWORD(v27);
  }

  return *&v27;
}

void CGImageSetProperty(uint64_t a1, CFStringRef theString1, const void *a3)
{
  if (a1 && theString1 && a3)
  {
    if (CFStringCompare(theString1, @"com.apple.ImageIO.orientation", 0))
    {
      if (!*(a1 + 216))
      {
        v6 = CGPropertiesCreate();
        v7 = 0;
        atomic_compare_exchange_strong_explicit((a1 + 216), &v7, v6, memory_order_relaxed, memory_order_relaxed);
        if (v7)
        {
          CGPropertiesRelease(v6);
        }
      }

      v8 = *(a1 + 216);

      CGPropertiesSetProperty(v8, theString1, a3);
    }

    else
    {
      valuePtr = 0;
      v9 = CFGetTypeID(a3);
      if (v9 == CFNumberGetTypeID() && CFNumberGetValue(a3, kCFNumberIntType, &valuePtr) && (valuePtr - 1) <= 7)
      {
        *(a1 + 36) = *(a1 + 36) & 0xFF00FFFF | (valuePtr << 16);
      }

      else
      {
        CGLog(1, "%s %s", "CGImageSetProperty", "Invalid orientation value");
      }
    }
  }
}

void check_clients_buffer(const char *a1, const void *a2, size_t a3)
{
  v6 = a1;
  v5 = a2;
  v4 = a3;
  if (a2)
  {
    v3 = 0;
    if ((log_buffer_check_in_crash_reporter() & 1) == 1)
    {
      asprintf(&v3, "%s: %p %zu\n", v6, v5, v4);
      qword_1ED4E0528 = v3;
    }

    ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
    ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
    if ((log_buffer_check_in_crash_reporter() & 1) == 1)
    {
      qword_1ED4E0528 = 0;
      free(v3);
    }
  }
}

CGDataProviderRef CGDataProviderCreateWithData(void *info, const void *data, size_t size, CGDataProviderReleaseDataCallback releaseData)
{
  check_clients_buffer("CGDataProviderCreateWithData", data, size);

  return CGDataProviderCreateWithDataInternal(info, data, size, releaseData, 0);
}

uint64_t log_buffer_check_in_crash_reporter()
{
  if (log_buffer_check_in_crash_reporter_predicate != -1)
  {
    dispatch_once(&log_buffer_check_in_crash_reporter_predicate, &__block_literal_global_7419);
  }

  return log_buffer_check_in_crash_reporter_status;
}

CGDataProviderRef CGDataProviderCreateWithDataInternal(uint64_t a1, uint64_t a2, off_t a3, uint64_t a4, __CFString *a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = malloc_type_malloc(0x20uLL, 0x10C0040176BE1E5uLL);
  *v10 = a1;
  v10[1] = a3;
  v10[2] = a2;
  v10[3] = a4;
  *&callbacks.version = 0;
  callbacks.getBytePointer = data_get_byte_pointer;
  callbacks.releaseBytePointer = 0;
  callbacks.getBytesAtPosition = data_get_bytes_at_position;
  callbacks.releaseInfo = data_release_info;
  v11 = CGDataProviderCreateDirect(v10, a3, &callbacks);
  v12 = v11;
  if (a5 && v11)
  {
    *(v11 + 35) = CGDataProviderCreateDebugString(v11, a5);
  }

  return v12;
}

CGDataProviderRef CGDataProviderCreateDirect(void *info, off_t size, const CGDataProviderDirectCallbacks *callbacks)
{
  if (size <= 0)
  {
    CGPostError("%s: Invalid size = %jd", "CGDataProviderCreateDirect", size);
    if (!callbacks)
    {
      return 0;
    }
  }

  else if (!callbacks)
  {
    return 0;
  }

  result = 0;
  if (size >= 1 && !callbacks->version)
  {
    if (!callbacks->getBytePointer && !callbacks->getBytesAtPosition)
    {
      return 0;
    }

    result = create_provider(info, 0);
    if (result)
    {
      *(result + 4) = size;
      *(result + 5) = *&callbacks->getBytePointer;
      releaseInfo = callbacks->releaseInfo;
      *(result + 12) = callbacks->getBytesAtPosition;
      *(result + 9) = releaseInfo;
    }
  }

  return result;
}

uint64_t create_provider(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  Instance = CGTypeCreateInstance(CGDataProviderGetTypeID_id, 272);
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 48879;
    *(Instance + 20) = a2;
    *(Instance + 24) = a1;
    *(Instance + 32) = -1;
    *(Instance + 248) = 0;
    *(Instance + 252) = 1;
    v7.__sig = 0;
    *v7.__opaque = 0;
    pthread_mutexattr_init(&v7);
    pthread_mutexattr_settype(&v7, 2);
    pthread_mutex_init((v5 + 184), &v7);
    pthread_mutexattr_destroy(&v7);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7.__sig) = 136315138;
    *(&v7.__sig + 4) = "create_provider";
    _os_log_impl(&dword_183EA0000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s failed", &v7, 0xCu);
  }

  return v5;
}

CGImageRef CGImageCreate(size_t width, size_t height, size_t bitsPerComponent, size_t bitsPerPixel, size_t bytesPerRow, CGColorSpaceRef space, CGBitmapInfo bitmapInfo, CGDataProviderRef provider, const CGFloat *decode, BOOL shouldInterpolate, CGColorRenderingIntent intent)
{
  v42 = bitmapInfo;
  if (!width || !height)
  {
    CGPostError("%s: invalid image size: %zu x %zu.");
    return 0;
  }

  v40 = 0;
  v41 = 0;
  v39 = 0;
  if (!verify_image_parameters(space, &v42, width, bitsPerComponent, bitsPerPixel, bytesPerRow, decode, &v41, &v39, &v40))
  {
    return 0;
  }

  if (!provider)
  {
    CGPostError("%s: invalid data provider: NULL.");
    return 0;
  }

  v18 = *(provider + 4);
  if (v18 != -1)
  {
    if (v18 >= 1 && is_mul_ok(height - 1, bytesPerRow))
    {
      v21 = (height - 1) * bytesPerRow;
      v22 = v41 + v21;
      v23 = __CFADD__(v41, v21);
      if (v18 >= v22 && !v23)
      {
        v24 = *(provider + 10);
        if (v24 == getCFDataBytePointer || v24 == data_get_byte_pointer)
        {
          CGDataProviderRetainBytePtr(provider);
          CGDataProviderReleaseBytePtr(provider);
        }

        goto LABEL_21;
      }
    }

    CGPostError("%s: invalid image data size: %zu (height) x %zu (bytesPerRow) data provider size %lli");
    return 0;
  }

LABEL_21:
  image_base = create_image_base();
  v19 = image_base;
  if (image_base)
  {
    image_base[5] = width;
    image_base[6] = height;
    image_base[7] = bitsPerComponent;
    image_base[8] = bitsPerPixel;
    image_base[9] = bytesPerRow;
    v26 = v42;
    Model = CGColorSpaceGetModel(space);
    v28 = v26 | 0x4000;
    v29 = v26 | 0x3000;
    if (bitsPerComponent != 16)
    {
      v29 = v26;
    }

    if (bitsPerComponent != 32)
    {
      v28 = v29;
    }

    if ((v26 & 0x7100) == 0x100)
    {
      v30 = v28;
    }

    else
    {
      v30 = v26;
    }

    if ((v30 & 0xF0000) == 0 && Model == kCGColorSpaceModelRGB && bitsPerPixel == 16 && bitsPerComponent == 5)
    {
      v30 |= 0x10000u;
    }

    *(v19 + 8) = v30;
    if (space)
    {
      CFRetain(space);
    }

    v19[18] = space;
    CGDataProviderRetain(provider);
    v19[19] = provider;
    if (shouldInterpolate)
    {
      v34 = 0x1000000;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34 & 0xFFFF00FF | (intent << 8) | *(v19 + 9) & 0xF0000000 | (v39 << 26);
    v19[25] = 0;
    v19[26] = 0;
    *(v19 + 29) = 0u;
    *(v19 + 31) = 0u;
    *(v19 + 9) = v35 | 0x10001;
    cgimage_set_decode_array(v19, decode, v40);
    v36 = CFGetTypeID(v19);
    if (kCGDefaultHDRImageContentHeadroom_block_invoke_once != -1)
    {
      dispatch_once(&kCGDefaultHDRImageContentHeadroom_block_invoke_once, &__block_literal_global_281);
    }

    if (v36 == CGImageGetTypeID_image_type_id)
    {
      ColorSpace = CGImageGetColorSpace(v19);
      if (CGColorSpaceUsesExtendedRange(ColorSpace))
      {
        v38 = CGImageGetColorSpace(v19);
        if (CGColorSpaceGetModel(v38) == kCGColorSpaceModelRGB)
        {
          CGImageSetHeadroom(v19, 0, 0.0);
        }
      }
    }
  }

  return v19;
}

uint64_t CGDataProviderRetainBytePtr(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 80) && (CGDataProviderIsZombie(result) & 1) == 0)
    {
      pthread_mutex_lock((v1 + 184));
      if (!atomic_fetch_add_explicit((v1 + 248), 1u, memory_order_relaxed))
      {
        v2 = (*(v1 + 80))(*(v1 + 24));
        *(v1 + 264) = v2;
        if (v2)
        {
          v4 = 0;
          DebugString = CGDataProviderGetDebugString(v1);
          if (DebugString)
          {
            asprintf(&v4, "CGDataProvider: %p\n%s\n", v1, DebugString);
            qword_1ED4E0528 = v4;
            ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
            ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
            qword_1ED4E0528 = 0;
            free(v4);
          }

          else
          {
            ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
            ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
          }
        }

        else
        {
          atomic_fetch_add_explicit((v1 + 248), 0xFFFFFFFF, memory_order_relaxed);
        }
      }

      if (*(v1 + 264))
      {
        CFRetain(v1);
      }

      pthread_mutex_unlock((v1 + 184));
      return *(v1 + 264);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void CGDataProviderReleaseBytePtr(uint64_t a1)
{
  if (a1 && *(a1 + 80) && *(a1 + 264))
  {
    pthread_mutex_lock((a1 + 184));
    if (atomic_fetch_add_explicit((a1 + 248), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      v2 = *(a1 + 88);
      if (v2)
      {
        v2(*(a1 + 24), *(a1 + 264));
      }

      *(a1 + 264) = 0;
    }

    pthread_mutex_unlock((a1 + 184));

    CFRelease(a1);
  }
}

uint64_t data_provider_retain_count(uint64_t a1, atomic_uint *a2)
{
  switch(a1)
  {
    case -1:
      if (atomic_fetch_add_explicit(a2 + 63, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        data_provider_finalize(a2);
        v4 = CFGetAllocator(a2);
        CFAllocatorDeallocate(v4, a2);
      }

      break;
    case 0:
      return a2[63];
    case 1:
      return atomic_fetch_add_explicit(a2 + 63, 1u, memory_order_relaxed) + 1;
  }

  return 0;
}

uint64_t CGDataProviderIsZombie(_DWORD *a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = CFGetTypeID(a1);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  if (v2 != CGDataProviderGetTypeID_id)
  {
    return 1;
  }

  v3 = a1[4];
  if (v3 != 48879)
  {
    if (v3 == 57005)
    {
      CGLog(3, "Data Provider %p is over released");
    }

    else
    {
      CGLog(3, "Object %p is not a CGDataProvider");
    }

    if (CGOSAppleInternalBuild_predicate != -1)
    {
      dispatch_once(&CGOSAppleInternalBuild_predicate, &__block_literal_global_18682);
    }

    if (CGOSAppleInternalBuild_is_internal == 1)
    {
      _CGHandleAssert("CGDataProviderIsZombie", 1011, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "0", "");
    }

    return 1;
  }

  return 0;
}

const char *CGDataProviderGetDebugString(uint64_t a1)
{
  if (data_provider_debug_info_enabled_predicate != -1)
  {
    dispatch_once(&data_provider_debug_info_enabled_predicate, &__block_literal_global_42);
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!a1)
  {
    return 0;
  }

LABEL_3:
  if ((data_provider_debug_info_enabled_enabled & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 280);
  if (!v2)
  {
    return 0;
  }

  return CFStringGetCStringPtr(v2, 0x8000100u);
}

void set_content_headroom_to_conversion_info(uint64_t a1, const void *a2, const void *a3)
{
  pthread_mutex_lock((a1 + 80));
  if (!*(a1 + 224))
  {
    v6 = CGPropertiesCreate();
    v7 = 0;
    atomic_compare_exchange_strong_explicit((a1 + 224), &v7, v6, memory_order_relaxed, memory_order_relaxed);
    if (v7)
    {
      CGPropertiesRelease(v6);
    }
  }

  pthread_mutex_unlock((a1 + 80));
  v8 = *(a1 + 224);

  CGPropertiesSetProperty(v8, a2, a3);
}

BOOL CGColorSpaceContainsFlexGTCInfo(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v2 == CGColorSpaceGetTypeID_type_id)
    {
      v3 = *(v1[3] + 24);
      if (v3 == 11)
      {
        return 1;
      }

      if (v3 == 6)
      {
        v4 = CGColorSpaceCopyFlexGTCInfo(v1);
        result = v4 != 0;
        if (!v4)
        {
          return result;
        }

        CFRelease(v4);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

CGDataProviderRef CGDataProviderRetain(CGDataProviderRef provider)
{
  if (provider)
  {
    v2 = CFGetTypeID(provider);
    if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
    {
      dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
    }

    if (v2 == CGDataProviderGetTypeID_id)
    {
      CFRetain(provider);
    }
  }

  return provider;
}

BOOL CGColorSpaceEqualToColorSpace(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    return 1;
  }

  result = 0;
  if (v4 && v5)
  {
    if (*(v4 + 24) == *(v5 + 24))
    {
      v7 = *(v4 + 64);
      v6 = *(v4 + 72);
      v9 = *(v5 + 64);
      v8 = *(v5 + 72);
      return v7 == v9 && v6 == v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void adjusted_headroom(CGColorSpace *a1, float a2)
{
  if (CGColorSpaceContainsFlexGTCInfo(a1))
  {
    HeadroomInfo = CGColorSpaceGetHeadroomInfo(a1, 0);
    v5 = HeadroomInfo;
    if (a2 != 0.0)
    {
      HeadroomInfo = a2;
    }

    if (vabds_f32(v5, HeadroomInfo) > 0.00001)
    {
      CGPostError("Headroom of the color space with adaptive gain curve cannot be overwritten");
    }
  }

  else if (CGColorSpaceUsesITUR_2100TF(a1))
  {
    if (a2 == 0.0)
    {
      CGColorSpaceGetHeadroomInfo(a1, 0);
    }
  }

  else
  {
    if (CGColorSpaceGetModel(a1) == kCGColorSpaceModelRGB)
    {
      if (CGColorSpaceUsesExtendedRange(a1))
      {
        return;
      }
    }

    else
    {
      Model = CGColorSpaceGetModel(a1);
      HIDWORD(v6) = 0;
      if (Model)
      {
        return;
      }
    }

    LODWORD(v6) = 1.0;
    if (a2 != 0.0 && a2 != 1.0)
    {
      CGPostError("Headroom of the SDR color space can be only 1.0", v6);
    }
  }
}

uint64_t CGColorSpaceCopyFlexGTCInfo(void *a1)
{
  v1 = CGColorSpaceCopyColorSyncProfile(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (CGColorSpaceCopyFlexGTCInfo_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorSpaceCopyFlexGTCInfo_cglibrarypredicate, &__block_literal_global_48_6800);
  }

  if (v3 == CGColorSpaceCopyFlexGTCInfo_f())
  {
    if (CGColorSpaceCopyFlexGTCInfo_cglibrarypredicate_51 != -1)
    {
      dispatch_once(&CGColorSpaceCopyFlexGTCInfo_cglibrarypredicate_51, &__block_literal_global_54_6801);
    }

    v4 = CGColorSpaceCopyFlexGTCInfo_f_50(v2);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

CFTypeRef CGColorSpaceCopyColorSyncProfile(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v2 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1[3];
  v5 = *(v4 + 24);
  if (v5 <= 5)
  {
    switch(v5)
    {
      case 3:
        CGColorSpaceGetCalibratedGrayData(a1, v11);
        return CGCMSUtilsCreateProfileForCalGray(v11);
      case 4:
        CGColorSpaceGetCalibratedRGBData(a1, v11);
        return CGCMSUtilsCreateProfileForCalRGB(v11);
      case 5:
        v6 = *(v4 + 96);

        return CGCMSUtilsCreateProfileForCalLab(v6, (v6 + 24));
      default:
        return v3;
    }
  }

  switch(v5)
  {
    case 6:
      FlexGTCProfile = *(*(v4 + 96) + 8);
      if (!FlexGTCProfile)
      {
        return 0;
      }

      break;
    case 10:
      v10 = CGColorSpaceICCCopyData(a1);
      if (CGColorSpaceCopyColorSyncProfile_cglibrarypredicate != -1)
      {
        dispatch_once(&CGColorSpaceCopyColorSyncProfile_cglibrarypredicate, &__block_literal_global_23443);
      }

      v3 = CGColorSpaceCopyColorSyncProfile_f(v10, 0);
      if (v10)
      {
        CFRelease(v10);
      }

      return v3;
    case 11:
      FlexGTCProfile = CGColorSpaceFlexGTCProxyGetFlexGTCProfile(a1);
      if (!FlexGTCProfile)
      {
        return 0;
      }

      break;
    default:
      return v3;
  }

  return CFRetain(FlexGTCProfile);
}

void CGColorSpaceAdjustColor(void *a1, double *DefaultColorComponents, double *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v6 == CGColorSpaceGetTypeID_type_id)
    {
      if (!DefaultColorComponents)
      {
        DefaultColorComponents = CGColorSpaceGetDefaultColorComponents(a1);
      }

      v7 = a1[3];
      v8 = *(v7 + 48);
      v9 = DefaultColorComponents[v8];
      v10 = 0.0;
      if (v9 >= 0.0)
      {
        v10 = DefaultColorComponents[v8];
        if (v9 > 1.0)
        {
          v10 = 1.0;
        }
      }

      if (v10 != a3[v8])
      {
        a3[v8] = v10;
      }

      v11 = *(v7 + 24);
      if (v11 > 8)
      {
        if ((v11 - 10) >= 2)
        {
          if (v11 == 9 && !**(v7 + 96))
          {
            return;
          }

LABEL_35:
          while (v8)
          {
            v17 = 0.0;
            if (*DefaultColorComponents >= 0.0)
            {
              v17 = *DefaultColorComponents;
              if (*DefaultColorComponents > 1.0)
              {
                v17 = 1.0;
              }
            }

            if (v17 != *a3)
            {
              *a3 = v17;
            }

            ++a3;
            ++DefaultColorComponents;
            --v8;
          }

          return;
        }

        goto LABEL_20;
      }

      if (v11 != 5)
      {
        if (v11 != 6)
        {
          if (v11 == 7)
          {
            v12 = (*DefaultColorComponents + 0.5);
            if ((v12 & 0x80000000) != 0)
            {
              v13 = 0.0;
            }

            else
            {
              v13 = v12;
              if (v12 > *(*(v7 + 96) + 8))
              {
                v13 = *(*(v7 + 96) + 8);
              }
            }

            if (v13 != *a3)
            {
              *a3 = v13;
            }

            return;
          }

          goto LABEL_35;
        }

LABEL_20:
        v14 = CGColorSpaceICCGetRange(a1);
        if (!v8)
        {
          return;
        }

        for (i = (v14 + 8); ; i += 2)
        {
          v16 = *(i - 1);
          if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*i & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (*DefaultColorComponents >= v16)
            {
              v16 = *DefaultColorComponents;
              if (*DefaultColorComponents > *i)
              {
                v16 = *i;
              }
            }

            if (v16 == *a3)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v16 = *DefaultColorComponents;
          }

          *a3 = v16;
LABEL_26:
          ++a3;
          ++DefaultColorComponents;
          if (!--v8)
          {
            return;
          }
        }
      }

      v18 = *(v7 + 96);
      v19 = 0.0;
      if (*DefaultColorComponents >= 0.0)
      {
        v19 = *DefaultColorComponents;
        if (*DefaultColorComponents > 100.0)
        {
          v19 = 100.0;
        }
      }

      if (v19 != *a3)
      {
        *a3 = v19;
      }

      v20 = DefaultColorComponents[1];
      v21 = v18[6];
      if (v20 >= v21)
      {
        v21 = DefaultColorComponents[1];
        if (v20 > v18[7])
        {
          v21 = v18[7];
        }
      }

      if (v21 != a3[1])
      {
        a3[1] = v21;
      }

      v22 = DefaultColorComponents[2];
      v23 = v18[8];
      if (v22 >= v23)
      {
        v23 = DefaultColorComponents[2];
        if (v22 > v18[9])
        {
          v23 = v18[9];
        }
      }

      if (v23 != a3[2])
      {
        a3[2] = v23;
      }
    }
  }
}

uint64_t CGColorSpaceICCGetRange(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 24);
  switch(v2)
  {
    case 6:
      v3 = 56;
      break;
    case 10:
      v3 = 64;
      break;
    case 11:
      v3 = 88;
      break;
    default:
      _CGHandleAssert("CGColorSpaceICCGetRange", 566, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_ICC.c", "s->state->type == kCGColorSpaceICCBased || s->state->type == kCGColorSpaceProfileSets || s->state->type == kCGColorSpaceFlexGTCProxy", "Colorspace not ICC. type = %d", v2);
  }

  return *(*(v1 + 96) + v3);
}

BOOL CGColorEqualToColor(CGColorRef color1, CGColorRef color2)
{
  if (color1 == color2)
  {
    LOBYTE(color1) = 1;
  }

  else
  {
    v2 = color1;
    LOBYTE(color1) = 0;
    if ((v2 & 0x8000000000000000) == 0 && (color2 & 0x8000000000000000) == 0)
    {
      LOBYTE(color1) = 0;
      if (v2)
      {
        if (color2)
        {
          v4 = *(v2 + 7);
          if (v4 == *(color2 + 7) && !memcmp(v2 + 72, color2 + 72, 8 * v4))
          {
            LODWORD(color1) = CGPatternEqualToPattern(*(v2 + 4), *(color2 + 4));
            if (color1)
            {
              LODWORD(color1) = CGColorSpaceEqualToColorSpace(*(v2 + 3), *(color2 + 3));
              if (color1)
              {
                LOBYTE(color1) = *(v2 + 16) == *(color2 + 16);
              }
            }
          }

          else
          {
            LOBYTE(color1) = 0;
          }
        }
      }
    }
  }

  return color1;
}

CGColorRef CGColorCreateCopyWithAlpha(CGColorRef color, CGFloat alpha)
{
  v3 = color;
  v14[1] = *MEMORY[0x1E69E9840];
  if ((color & 0x8000000000000000) != 0)
  {
    if (CGTaggedColorGetAlpha(color) != alpha)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(v3);
      MEMORY[0x1EEE9AC00](NumberOfComponents);
      v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v6, v5);
      CGTaggedColorGetComponents(v3, v6);
      *&v6[8 * NumberOfComponents - 8] = alpha;
      ColorSpace = CGTaggedColorGetColorSpace(v3);
      return CGColorCreate(ColorSpace, v6);
    }

LABEL_6:
    CFRetain(v3);
    return v3;
  }

  if (!color)
  {
    return v3;
  }

  if (*(color + *(color + 7) + 8) == alpha)
  {
    goto LABEL_6;
  }

  v9 = *(color + 4);
  if (v9)
  {
    v10 = CGColorCreateWithPattern(*(color + 3), v9, color + 9);
  }

  else
  {
    v11 = *(color + 16);
    v12 = *(color + 3);
    v13 = (v3 + 72);
    if (v11 <= 0.0)
    {
      v10 = CGColorCreate(v12, v13);
    }

    else
    {
      v10 = create_color(v12, v13, v11);
    }
  }

  v3 = v10;
  if (v10)
  {
    *(v10 + 8 * *(v10 + 56) + 64) = alpha;
  }

  return v3;
}

BOOL CGPatternEqualToPattern(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 20);
    if (v5 != *(a2 + 20) || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }

    result = 0;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))) & 1) != 0 && *(a1 + 64) == *(a2 + 64))
    {
      if (*(a1 + 72) == *(a2 + 72))
      {
        if (v5 == 1)
        {
          goto LABEL_12;
        }

        if (v5)
        {
LABEL_16:
          result = CGRectEqualToRect(*(a1 + 104), *(a2 + 104));
          if (result)
          {
            result = 0;
            if (*(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144))
            {
              if (*(a1 + 152) == *(a2 + 152) && *(a1 + 184) == *(a2 + 184) && (!*(a1 + 184) || *(a1 + 80) == *(a2 + 80)) && *(a1 + 185) == *(a2 + 185))
              {
                return *(a1 + 186) == *(a2 + 186);
              }

              return 0;
            }
          }

          return result;
        }

        if (*(a1 + 168) == *(a2 + 168))
        {
LABEL_12:
          if (*(a1 + 80) != *(a2 + 80))
          {
            return 0;
          }

          goto LABEL_16;
        }
      }

      return 0;
    }
  }

  return result;
}

CGImageRef CGImageCreateWithImageInRect(CGImageRef image, CGRect rect)
{
  if (!image || *(image + 24))
  {
    return 0;
  }

  v3 = *(image + 5);
  v4 = *(image + 6);
  v105 = CGRectIntegral(rect);
  v122.origin.x = 0.0;
  v122.origin.y = 0.0;
  v122.size.width = v3;
  v122.size.height = v4;
  v106 = CGRectIntersection(v105, v122);
  x = v106.origin.x;
  if (v106.origin.x == INFINITY || v106.origin.y == INFINITY)
  {
    return 0;
  }

  y = v106.origin.y;
  width = v106.size.width;
  height = v106.size.height;
  v123.origin.x = 0.0;
  v123.origin.y = 0.0;
  v123.size.width = v3;
  v123.size.height = v4;
  if (CGRectEqualToRect(v106, v123))
  {
    CFRetain(image);
    return image;
  }

  if ((*(image + 39) & 2) == 0)
  {
    v13 = fmin(width, height);
    v14 = v13 < 0.0;
    if (v13 < 0.0)
    {
      v107.origin.x = x;
      v107.origin.y = y;
      v107.size.width = width;
      v107.size.height = height;
      v108 = CGRectStandardize(v107);
      v23 = v108.size.width;
      v108.origin.x = x;
      v108.origin.y = y;
      v108.size.width = width;
      v108.size.height = height;
      v109 = CGRectStandardize(v108);
      v24 = v109.size.height;
      v109.origin.x = x;
      v109.origin.y = y;
      v109.size.width = width;
      v109.size.height = height;
      v102 = COERCE_DOUBLE(CGRectStandardize(v109));
      v110.origin.x = x;
      v110.origin.y = y;
      v110.size.width = width;
      v110.size.height = height;
      v111 = CGRectStandardize(v110);
      v25 = v111.origin.y;
    }

    else
    {
      v23 = width;
      v24 = height;
      v25 = y;
      v102 = x;
    }

    v26 = *(image + 26);
    if (v26)
    {
      v27 = CGImageProviderCreateWithImageProviderInRect(v26, *(image + 18), x, y, width, height);
      if (!v27)
      {
        return 0;
      }

      v28 = v27;
      v7 = CGImageCreateWithImageProvider(v27, *(image + 20), HIBYTE(*(image + 9)) & 1, (*(image + 9) >> 8));
      CFRelease(v28);
    }

    else
    {
      *v104 = *(image + 9);
      if ((*(image + 8) & 0x7000) == 0x2000)
      {
        v29 = 4;
      }

      else if ((*(image + 8) & 0x7000) == 0x1000)
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      v103 = v29;
      if (v14)
      {
        v117.origin.x = x;
        v117.origin.y = y;
        v117.size.width = width;
        v117.size.height = height;
        v118 = CGRectStandardize(v117);
        v30 = v118.size.width;
        v118.origin.x = x;
        v118.origin.y = y;
        v118.size.width = width;
        v118.size.height = height;
        v119 = CGRectStandardize(v118);
        v31 = v119.size.height;
        v119.origin.x = x;
        v119.origin.y = y;
        v119.size.width = width;
        v119.size.height = height;
        v32 = COERCE_DOUBLE(CGRectStandardize(v119));
        v120.origin.x = x;
        v120.origin.y = y;
        v120.size.width = width;
        v120.size.height = height;
        v121 = CGRectStandardize(v120);
        y = v121.origin.y;
      }

      else
      {
        v30 = width;
        v31 = height;
        v32 = x;
      }

      DataProviderInternal = CGImageGetDataProviderInternal(image, 0);
      Partial = CGDataProviderCreatePartial(DataProviderInternal, v32, y, v30, v31, *(image + 8), v104, &v103);
      if (!Partial)
      {
        return 0;
      }

      v35 = Partial;
      v36 = CGImageGetBitmapInfo(image);
      if (v103 == 1)
      {
        v37 = v36 & 0xFFFF8FFF;
      }

      else
      {
        v37 = v36;
      }

      bitmapInfoa = v37;
      v38 = *(image + 8);
      v96 = *v104;
      *v98 = *(image + 7);
      v39 = v23;
      ColorSpace = CGImageGetColorSpace(image);
      v41 = v24;
      v42 = CGImageGetDecode(image);
      shouldInterpolate = CGImageGetShouldInterpolate(image);
      intent = CGImageGetRenderingIntent(image);
      decode = v42;
      v24 = v41;
      v45 = ColorSpace;
      v23 = v39;
      v7 = CGImageCreate(v30, v31, *v98, v38, v96, v45, bitmapInfoa, v35, decode, shouldInterpolate, intent);
      CGDataProviderRelease(v35);
    }

    CGImageCopyHeadroomFromOriginal(v7, image);
    if (!v7)
    {
      return v7;
    }

    v46 = v25;
    Mask = CGImageGetMask(image);
    if (!Mask)
    {
LABEL_77:
      if (!*(image + 21))
      {
LABEL_85:
        *(v7 + 36) = *(v7 + 36) & 0xF7FFFFFF | (((*(image + 9) >> 27) & 1) << 27);
        if (!*(image + 23))
        {
LABEL_93:
          if (*(image + 30))
          {
            v92 = *(image + 30);
          }

          else
          {
            v92 = image;
          }

          if (v92)
          {
            CFRetain(v92);
          }

          *(v7 + 240) = v92;
          v93 = *(image + 32) + v46;
          *(v7 + 248) = *(image + 31) + v102;
          *(v7 + 256) = v93;
          *(v7 + 38) = *(image + 19);
          return v7;
        }

        v87 = *(v7 + 144);
        if (v87)
        {
          v88 = *(*(v87 + 24) + 48);
        }

        else
        {
          v88 = 0;
        }

        v89 = malloc_type_malloc(8 * v88, 0x100004000313F17uLL);
        *(v7 + 184) = v89;
        if (v89)
        {
          if (v88)
          {
            v90 = *(image + 23);
            do
            {
              v91 = *v90++;
              *v89++ = v91;
              --v88;
            }

            while (v88);
          }

          goto LABEL_93;
        }

        goto LABEL_99;
      }

      v81 = *(v7 + 144);
      if (v81)
      {
        v82 = *(*(v81 + 24) + 48);
      }

      else
      {
        v82 = 0;
      }

      v83 = malloc_type_malloc(16 * v82, 0x100004000313F17uLL);
      *(v7 + 168) = v83;
      if (v83)
      {
        v84 = 2 * v82;
        if (2 * v82)
        {
          v85 = *(image + 21);
          do
          {
            v86 = *v85++;
            *v83++ = v86;
            --v84;
          }

          while (v84);
        }

        goto LABEL_85;
      }

LABEL_99:
      CFRelease(v7);
      return 0;
    }

    v48 = Mask;
    v49 = *(image + 5);
    v50 = *(Mask + 5);
    if (v49 == v50)
    {
      v51 = *(image + 6);
      v52 = *(Mask + 6);
      if (v51 == v52)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v52 = *(Mask + 6);
      v51 = *(image + 6);
    }

    v53 = v50 / v49;
    v54 = v52 / v51;
    v55 = vcvtpd_u64_f64(v53 * (v102 + v23));
    if (v50 >= v55)
    {
      v23 = v55;
    }

    else
    {
      v23 = *(Mask + 5);
    }

    v56 = vcvtpd_u64_f64(v54 * (v46 + v24));
    v102 = vcvtmd_u64_f64(v53 * v102);
    if (v52 >= v56)
    {
      v24 = v56;
    }

    else
    {
      v24 = v52;
    }

    v46 = vcvtmd_u64_f64(v54 * v46);
LABEL_57:
    *v104 = 0;
    if ((Mask[39] & 2) != 0)
    {
      v103 = *(Mask + 9);
      *v104 = 1;
      v61 = CGImageGetDataProviderInternal(Mask, 0);
      v62 = CGDataProviderCreatePartial(v61, v102, v46, v23, v24, *(v48 + 8), &v103, v104);
      if (!v62)
      {
        goto LABEL_99;
      }

      v63 = v62;
      *bitmapInfo = v46;
      v64 = *(v48 + 7);
      v65 = *(v48 + 8);
      v66 = *(v48 + 9);
      v67 = CGImageGetDecode(v48);
      v68 = CGImageGetShouldInterpolate(v48);
      v69 = mask_create(v23, v24, v64, v65, v66, v63, v67, v68, 4);
    }

    else
    {
      v57 = *(Mask + 26);
      if (v57)
      {
        v58 = CGImageProviderCreateWithImageProviderInRect(v57, *(v48 + 18), v102, v46, v23, v24);
        if (!v58)
        {
          goto LABEL_99;
        }

        v59 = v58;
        *bitmapInfo = v46;
        v60 = CGImageCreateWithImageProvider(v58, *(v48 + 20), HIBYTE(*(v48 + 9)) & 1, (*(v48 + 9) >> 8));
        CFRelease(v59);
        goto LABEL_75;
      }

      v70 = *(v48 + 8);
      v103 = *(v48 + 9);
      if ((v70 & 0x7000) == 0x2000)
      {
        v71 = 4;
      }

      else if ((v70 & 0x7000) == 0x1000)
      {
        v71 = 2;
      }

      else
      {
        v71 = 1;
      }

      *v104 = v71;
      v72 = CGImageGetDataProviderInternal(v48, 0);
      v73 = CGDataProviderCreatePartial(v72, v102, v46, v23, v24, *(v48 + 8), &v103, v104);
      if (!v73)
      {
        goto LABEL_99;
      }

      v63 = v73;
      *bitmapInfo = v46;
      v74 = v103;
      if (*v104 >= 2uLL)
      {
        v75 = v70;
      }

      else
      {
        v75 = v70 & 0xFFFF8FFF;
      }

      v99 = v75;
      v95 = *(v48 + 8);
      v97 = *(v48 + 7);
      v76 = CGImageGetColorSpace(v48);
      v77 = CGImageGetDecode(v48);
      v78 = v23;
      v79 = CGImageGetShouldInterpolate(v48);
      RenderingIntent = CGImageGetRenderingIntent(v48);
      v69 = CGImageCreate(v78, v24, v97, v95, v74, v76, v99, v63, v77, v79, RenderingIntent);
    }

    v60 = v69;
    CGDataProviderRelease(v63);
LABEL_75:
    if (!v60)
    {
      goto LABEL_99;
    }

    *(v7 + 176) = v60;
    v46 = *bitmapInfo;
    goto LABEL_77;
  }

  if (width < 0.0 || height < 0.0)
  {
    v112.origin.x = x;
    v112.origin.y = y;
    v112.size.width = width;
    v112.size.height = height;
    v113 = CGRectStandardize(v112);
    v15 = v113.size.width;
    v113.origin.x = x;
    v113.origin.y = y;
    v113.size.width = width;
    v113.size.height = height;
    v114 = CGRectStandardize(v113);
    v16 = v114.size.height;
    v114.origin.x = x;
    v114.origin.y = y;
    v114.size.width = width;
    v114.size.height = height;
    v17 = COERCE_DOUBLE(CGRectStandardize(v114));
    v115.origin.x = x;
    v115.origin.y = y;
    v115.size.width = width;
    v115.size.height = height;
    v116 = CGRectStandardize(v115);
    y = v116.origin.y;
  }

  else
  {
    v15 = width;
    v16 = height;
    v17 = x;
  }

  v103 = 1;
  v18 = *(image + 8);
  *v104 = *(image + 9);
  v19 = CGDataProviderCreatePartial(*(image + 19), v17, y, v15, v16, v18, v104, &v103);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  v7 = mask_create(v15, v16, *(image + 7), *(image + 8), *v104, v19, *(image + 20), HIBYTE(*(image + 9)) & 1, 4);
  CGDataProviderRelease(v20);
  if (v7)
  {
    if (*(image + 30))
    {
      v21 = *(image + 30);
    }

    else
    {
      v21 = image;
    }

    if (v21)
    {
      CFRetain(v21);
    }

    *(v7 + 240) = v21;
    v22 = *(image + 32) + y;
    *(v7 + 248) = *(image + 31) + v17;
    *(v7 + 256) = v22;
  }

  return v7;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  y = r1.origin.y;
  x = r1.origin.x;
  v4 = 0.0;
  v5 = INFINITY;
  if (x != INFINITY && r1.origin.y != INFINITY)
  {
    v7 = r2.origin.y;
    v8 = r2.origin.x;
    v5 = INFINITY;
    if (r2.origin.x != INFINITY && r2.origin.y != INFINITY)
    {
      width = r2.size.width;
      height = r1.size.height;
      v12 = r1.size.width;
      if (r1.size.width < 0.0 || r1.size.height < 0.0)
      {
        v13 = x;
        v14 = r2.size.height;
        v20 = CGRectStandardize(r1);
        r2.size.height = v14;
        x = v20.origin.x;
        y = v20.origin.y;
        v12 = v20.size.width;
        height = v20.size.height;
      }

      if (width < 0.0 || r2.size.height < 0.0)
      {
        v21.origin.x = v8;
        v21.origin.y = v7;
        v21.size.width = width;
        v21.size.height = r2.size.height;
        v22 = CGRectStandardize(v21);
        v8 = v22.origin.x;
        v7 = v22.origin.y;
        width = v22.size.width;
        r2.size.height = v22.size.height;
      }

      v5 = fmax(x, v8);
      v15 = fmin(x + v12, v8 + width);
      if (v5 <= v15)
      {
        v16 = fmax(y, v7);
        v17 = fmin(y + height, v7 + r2.size.height);
        if (v16 <= v17)
        {
          v4 = v15 - v5;
          v18 = v17 - v16;
          goto LABEL_19;
        }
      }

      v5 = INFINITY;
    }
  }

  v16 = INFINITY;
  v18 = 0.0;
LABEL_19:
  v19 = v4;
  result.size.height = v18;
  result.size.width = v19;
  result.origin.y = v16;
  result.origin.x = v5;
  return result;
}

BOOL CGRectEqualToRect(CGRect rect1, CGRect rect2)
{
  x = rect1.origin.x;
  v3 = rect1.origin.y == INFINITY || rect1.origin.x == INFINITY;
  v4 = rect2.origin.x == INFINITY;
  if (rect2.origin.y == INFINITY)
  {
    v4 = 1;
  }

  result = v3 && v4;
  if (!v3 && !v4)
  {
    height = rect2.size.height;
    width = rect2.size.width;
    y = rect2.origin.y;
    v9 = rect2.origin.x;
    v10 = rect1.size.height;
    v11 = rect1.size.width;
    v12 = rect1.origin.y;
    if (rect1.size.width < 0.0 || rect1.size.height < 0.0)
    {
      v14 = CGRectStandardize(rect1);
      x = v14.origin.x;
      v12 = v14.origin.y;
      v11 = v14.size.width;
      v10 = v14.size.height;
    }

    if (width < 0.0 || height < 0.0)
    {
      v15.origin.x = v9;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      v16 = CGRectStandardize(v15);
      v9 = v16.origin.x;
      y = v16.origin.y;
      width = v16.size.width;
      height = v16.size.height;
    }

    v13 = v10 == height;
    if (v11 != width)
    {
      v13 = 0;
    }

    if (v12 != y)
    {
      v13 = 0;
    }

    return x == v9 && v13;
  }

  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    if (rect.size.width < 0.0 || rect.size.height < 0.0)
    {
      rect = CGRectStandardize(rect);
    }

    v2 = rect.origin.x + rect.size.width;
    rect.origin.x = floor(rect.origin.x);
    v3 = rect.origin.y + rect.size.height;
    rect.origin.y = floor(rect.origin.y);
    rect.size.width = ceil(v2) - rect.origin.x;
    rect.size.height = ceil(v3) - rect.origin.y;
  }

  return rect;
}

uint64_t CGColorSpaceCreateSRGB()
{
  if (CGColorSpaceCreateSRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateSRGB_predicate, &__block_literal_global_218_6598);
  }

  v0 = CGColorSpaceCreateSRGB_space;
  if (CGColorSpaceCreateSRGB_space)
  {
    CFRetain(CGColorSpaceCreateSRGB_space);
  }

  return v0;
}

void data_release_info(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v2(*a1, a1[2], a1[1]);
  }

  free(a1);
}

double data_provider_finalize(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    _CGHandleAssert("data_provider_finalize", 390, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider->byte_pointer == NULL", "byte pointer = %p", v1);
  }

  if (*(a1 + 248))
  {
    _CGHandleAssert("data_provider_finalize", 392, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "CGAtomicGet(&provider->byte_ptr_retain_count) == 0", "retain count %d", *(a1 + 248));
  }

  if (*(a1 + 256))
  {
    _CGHandleAssert("data_provider_finalize", 394, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "CGAtomicGet(&provider->data_retain_count) == 0", "data retain count %d", *(a1 + 256));
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v3(*(a1 + 24));
  }

  v4 = *(a1 + 272);
  if (v4)
  {
    CGPropertiesRelease(v4);
  }

  pthread_mutex_destroy((a1 + 184));
  v5 = *(a1 + 280);
  if (v5)
  {
    CFRelease(v5);
  }

  result = 0.0;
  *(a1 + 20) = 0u;
  v7 = (a1 + 20);
  *(v7 + 252) = 0u;
  v7[14] = 0u;
  v7[15] = 0u;
  v7[12] = 0u;
  v7[13] = 0u;
  v7[10] = 0u;
  v7[11] = 0u;
  v7[8] = 0u;
  v7[9] = 0u;
  v7[6] = 0u;
  v7[7] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[1] = 0u;
  *(v7 - 1) = 57005;
  return result;
}

double image_finalize(uint64_t a1)
{
  if (get_notification_center_onceToken != -1)
  {
    dispatch_once(&get_notification_center_onceToken, &__block_literal_global_389);
  }

  if (get_notification_center_image_notification_center)
  {
    CGNotificationCenterPostNotification(get_notification_center_image_notification_center, @"kCGImageWillDeallocate", a1);
  }

  v2 = *(a1 + 232);
  if (v2)
  {
    CFRelease(v2);
  }

  CGPropertiesRelease(*(a1 + 216));
  CGColorSpaceRelease(*(a1 + 144));
  CGDataProviderRelease(*(a1 + 152));
  v3 = *(a1 + 208);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 192);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 176);
  if (v6)
  {
    CFRelease(v6);
  }

  free(*(a1 + 160));
  free(*(a1 + 168));
  free(*(a1 + 184));
  v7 = *(a1 + 240);
  if (v7)
  {
    CFRelease(v7);
  }

  CGPropertiesRelease(*(a1 + 224));
  pthread_mutex_destroy((a1 + 80));
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  *(a1 + 28) = 57005;
  return result;
}

void CGPropertiesRelease(CFTypeRef *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    CFRelease(a1[1]);

    free(a1);
  }
}

void CGDataProviderRelease(CGDataProviderRef provider)
{
  if (provider)
  {
    v2 = CFGetTypeID(provider);
    if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
    {
      dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
    }

    if (v2 == CGDataProviderGetTypeID_id)
    {

      CFRelease(provider);
    }
  }
}

void *sub_183EA76E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8542A8, &qword_184398528);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

CGFloat *CGColorRef.components.getter()
{
  result = CGColorGetComponents(v0);
  if (result)
  {
    v2 = result;
    NumberOfComponents = CGColorGetNumberOfComponents(v0);
    if (NumberOfComponents)
    {
      v4 = NumberOfComponents;
      v5 = sub_183EA76E4(NumberOfComponents, 0);
      sub_183EA81DC((v5 + 4), v4, v2, v4);
      result = v5;
      if (v6 == v4)
      {
        return result;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

CGColorRef CGColorCreateCopyByMatchingToColorSpace(CGColorSpaceRef a1, CGColorRenderingIntent intent, CGColorRef color, CFDictionaryRef options)
{
  result = 0;
  v35 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = color;
    if (color)
    {
      v8 = *&intent;
      if (!CGColorSpaceSupportsOutput(a1))
      {
        return 0;
      }

      if (create_resolved_device_space_predicate != -1)
      {
        dispatch_once(&create_resolved_device_space_predicate, &__block_literal_global_53_2508);
      }

      *&components[0] = MEMORY[0x1E69E9820];
      *&components[1] = 0x40000000;
      *&v31 = __CGColorSpaceCreateResolved_block_invoke;
      *(&v31 + 1) = &__block_descriptor_tmp_39_23493;
      v32 = create_resolved_device_space_gray;
      v33 = create_resolved_device_space_sRGB;
      v34 = create_resolved_device_space_cmyk;
      ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a1, components);
      if (!options)
      {
        v10 = v6 < 0 ? CGTaggedColorGetColorSpace(v6) : *(v6 + 24);
        if (CGColorSpaceEqualToColorSpace(a1, v10))
        {
          if (ResolvedColorSpace && !CFEqual(ResolvedColorSpace, a1))
          {
            v19 = CGColorGetComponents(v6);
            v20 = CGColorCreate(ResolvedColorSpace, v19);
            *(v20 + 16) = CGColorGetContentHeadroom(v6);
            v6 = v20;
          }

          else
          {
            CFRetain(v6);
          }

          goto LABEL_56;
        }
      }

      ContentHeadroom = 1.0;
      if (CGColorGetContentHeadroom(v6) <= 1.0)
      {
        v17 = color_transform_create(a1, options);
        v6 = CGColorTransformConvertColor(v17, v6, v8);
        if (v17)
        {
          v18 = v17;
LABEL_55:
          CFRelease(v18);
        }

LABEL_56:
        CGColorSpaceRelease(ResolvedColorSpace);
        return v6;
      }

      if (CGColorSpaceSupportsHDR(a1))
      {
        ContentHeadroom = CGColorGetContentHeadroom(v6);
      }

      if (!options)
      {
        v14 = 0;
LABEL_33:
        err = 0;
        if (ContentHeadroom != CGColorGetContentHeadroom(v6) || v14)
        {
          if (v6 < 0)
          {
            ColorSpace = CGTaggedColorGetColorSpace(v6);
          }

          else
          {
            ColorSpace = *(v6 + 24);
          }

          v23 = CGColorGetContentHeadroom(v6);
          v24 = CGColorConversionInfoCreateForToneMapping(ColorSpace, a1, options, v14, &err, v23, ContentHeadroom);
          if (err)
          {
            v25 = CFErrorCopyDescription(err);
            CGLog(2, "%s: %@", "CGColorCreateCopyByMatchingToColorSpace", v25);
            CFRelease(v25);
            CFRelease(err);
            v6 = 0;
            goto LABEL_53;
          }
        }

        else
        {
          if (v6 < 0)
          {
            v21 = CGTaggedColorGetColorSpace(v6);
          }

          else
          {
            v21 = *(v6 + 24);
          }

          v24 = CGColorConversionInfoCreateFromList(0, v21, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, a1, 1, 0, 0);
        }

        *components = 0u;
        v31 = 0u;
        v26 = CGColorGetComponents(v6);
        if (CGColorConversionInfoConvertColorComponents(v24, v26, components))
        {
          if (v6 < 0)
          {
            Alpha = CGTaggedColorGetAlpha(v6);
          }

          else
          {
            Alpha = *(v6 + 8 * *(v6 + 56) + 64);
          }

          *(&v31 + 1) = Alpha;
        }

        else
        {
          for (i = 0; i != 4; ++i)
          {
            components[i] = CGColorGetComponents(v6)[i];
          }
        }

        v6 = CGColorCreate(a1, components);
        *(v6 + 64) = ContentHeadroom;
LABEL_53:
        if (v24)
        {
          v18 = v24;
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      v12 = CFGetTypeID(options);
      if (v12 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(options, @"kCGColorConversionInfoOptions");
        v14 = Value;
        if (!Value)
        {
LABEL_32:
          options = 0;
          goto LABEL_33;
        }

        v15 = CFGetTypeID(Value);
        if (v15 == CFDictionaryGetTypeID())
        {
          v16 = @"kCGApplyReferenceWhiteToneMapping";
          if (CFDictionaryContainsKey(v14, @"kCGApplyReferenceWhiteToneMapping"))
          {
            options = 2;
LABEL_30:
            v14 = CFDictionaryGetValue(v14, v16);
            goto LABEL_33;
          }

          v16 = @"kCGApplyFlexLumaScaling";
          if (CFDictionaryContainsKey(v14, @"kCGApplyFlexLumaScaling"))
          {
            options = 1;
            goto LABEL_30;
          }
        }
      }

      v14 = 0;
      goto LABEL_32;
    }
  }

  return result;
}

void *CGColorSpaceCreateResolvedColorSpace(void *a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  v4 = CFGetTypeID(a1);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v4 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  Type = CGColorSpaceGetType(v2);
  if (Type > 6)
  {
    if (Type > 9)
    {
      if ((Type - 10) > 1)
      {
LABEL_26:
        CFRetain(v2);
        return v2;
      }

      goto LABEL_17;
    }

    if (Type == 7)
    {
      CFRetain(v2);
      v13 = *(v2[3] + 96);
      ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(*v13, a2);
      v9 = ResolvedColorSpace;
      if (*v13 != ResolvedColorSpace)
      {
        Indexed = CGColorSpaceCreateIndexed(ResolvedColorSpace, *(v13 + 8), *(v13 + 16));
        goto LABEL_24;
      }
    }

    else if (Type == 8)
    {
      CFRetain(v2);
      v12 = *(v2[3] + 96);
      v9 = CGColorSpaceCreateResolvedColorSpace(*(v12 + 8), a2);
      if (*(v12 + 8) != v9)
      {
        Indexed = CGColorSpaceCreateDeviceN(*(v2[3] + 48), *v12, v9, *(v12 + 16), *(v12 + 24));
        goto LABEL_24;
      }
    }

    else
    {
      CFRetain(v2);
      v7 = *(v2[3] + 96);
      v8 = CGColorSpaceCreateResolvedColorSpace(*v7, a2);
      v9 = v8;
      if (*v7 != v8)
      {
        Indexed = CGColorSpaceCreatePattern(v8);
LABEL_24:
        v15 = Indexed;
        CGColorSpaceRelease(v9);
        CGColorSpaceRelease(v2);
        return v15;
      }
    }

    CGColorSpaceRelease(v9);
    return v2;
  }

  if (Type >= 5 && Type != 6)
  {
    goto LABEL_26;
  }

LABEL_17:
  v11 = *(a2 + 16);

  return v11(a2, v2);
}

CGColorSpaceRef __CGColorSpaceCreateResolved_block_invoke(CGColorSpaceRef *a1, CGColorSpace *a2)
{
  v2 = a2;
  Type = CGColorSpaceGetType(a2);
  if (Type == 2)
  {
    if (CGColorSpaceGetModel(a1[6]) == kCGColorSpaceModelCMYK)
    {
      v2 = a1[6];
    }
  }

  else if (Type == 1)
  {
    if (CGColorSpaceGetModel(a1[5]) == kCGColorSpaceModelRGB)
    {
      v2 = a1[5];
    }
  }

  else if (!Type && CGColorSpaceGetModel(a1[4]) == kCGColorSpaceModelMonochrome)
  {
    v2 = a1[4];
  }

  if (v2)
  {
    CFRetain(v2);
  }

  return v2;
}

const CGFloat *__cdecl CGColorGetComponents(CGColorRef color)
{
  BytePtr = color;
  v6[1] = *MEMORY[0x1E69E9840];
  if (color)
  {
    if ((color & 0x8000000000000000) != 0)
    {
      NumberOfComponents = CGTaggedColorGetNumberOfComponents(color);
      v3 = 8 * NumberOfComponents;
      MEMORY[0x1EEE9AC00](NumberOfComponents);
      bzero(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      CGTaggedColorGetComponents(BytePtr, v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
      v4 = CFDataCreate(0, v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
      BytePtr = CFDataGetBytePtr(v4);
      CFAutorelease(v4);
    }

    else
    {
      return (color + 72);
    }
  }

  return BytePtr;
}

uint64_t CGColorSpaceCreateGenericRGB()
{
  if (CGColorSpaceCreateGenericRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceCreateGenericRGB_predicate, &__block_literal_global_185);
  }

  v0 = CGColorSpaceCreateGenericRGB_space;
  if (CGColorSpaceCreateGenericRGB_space)
  {
    CFRetain(CGColorSpaceCreateGenericRGB_space);
  }

  return v0;
}

uint64_t verify_headroom_and_colorspace(CGColorSpace *a1, float a2)
{
  if (a2 != 0.0 && a2 < 1.0)
  {
    CGPostError("%s: invalid headroom value: %f");
    return 0;
  }

  if (!CGColorSpaceUsesITUR_2100TF(a1) && !CGColorSpaceUsesExtendedRange(a1))
  {
    CGPostError("%s: invalid color space for image with headroom");
    return 0;
  }

  if (CGColorSpaceContainsFlexGTCInfo(a1) && vabds_f32(CGColorSpaceGetHeadroomInfo(a1, 0), a2) > 0.00001)
  {
    return 0;
  }

  result = 1;
  if (a2 != 0.0 && a2 != 1.0)
  {
    if (CGColorSpaceUsesExtendedRange(a1) || CGColorSpaceUsesITUR_2100TF(a1))
    {
      return 1;
    }

    CGPostError("%s: specified color space cannot be used for CGImage with content headroom %f");
    return 0;
  }

  return result;
}

float CGImageProviderGetContentHeadroom(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = *(a1 + 132);
  if (v2 != 0.0)
  {
    return v2;
  }

  v3 = CGColorSpaceUsesITUR_2100TF(*(a1 + 40));
  v4 = *(a1 + 40);
  if (!v3)
  {
    if (!CGColorSpaceUsesExtendedRange(v4))
    {
      return 1.0;
    }

    return v2;
  }

  return CGColorSpaceGetHeadroomInfo(v4, 0);
}

uint64_t CGImageProviderSetContentHeadroom(uint64_t result, float a2)
{
  if (result)
  {
    v3 = result;
    result = CGColorSpaceUsesITUR_2100TF(*(result + 40));
    if ((result & 1) != 0 || (result = CGColorSpaceUsesExtendedRange(*(v3 + 40)), v4 = 1.0, result))
    {
      v4 = 1.0;
      if (a2 >= 1.0)
      {
        v4 = a2;
      }

      if (a2 == 0.0)
      {
        v4 = 0.0;
      }
    }

    *(v3 + 132) = v4;
  }

  return result;
}

size_t CGColorGetNumberOfComponents(size_t color)
{
  if (color)
  {
    if ((color & 0x8000000000000000) != 0)
    {
      return CGTaggedColorGetNumberOfComponents(color);
    }

    else
    {
      return *(color + 56);
    }
  }

  return color;
}

char *sub_183EA81DC(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 8 * v5);
    v4 += 8 * v5;
  }

  return v4;
}

void image_provider_finalize(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (kCGImageProviderContentAverageLightLevelNits_block_invoke_once != -1)
    {
      dispatch_once(&kCGImageProviderContentAverageLightLevelNits_block_invoke_once, &__block_literal_global_92_3534);
    }

    if (v2 == CGImageProviderGetTypeID_image_provider_type_id)
    {
      v3 = *(a1 + 64);
      if (v3 > 1)
      {
        if (v3 == 2)
        {
          v4 = *(a1 + 88);
          if (!v4)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v3 != 3)
          {
            goto LABEL_13;
          }

          v4 = *(a1 + 104);
          if (!v4)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
        if (v3 > 1)
        {
          goto LABEL_13;
        }

        v4 = *(a1 + 80);
        if (!v4)
        {
          goto LABEL_13;
        }
      }

      v4(*(a1 + 56));
LABEL_13:
      CGColorSpaceRelease(*(a1 + 40));
      v5 = *(a1 + 112);
      if (v5)
      {
        CFRelease(v5);
      }

      CGPropertiesRelease(*(a1 + 120));
      v6 = *(a1 + 144);
      if (v6)
      {

        CFRelease(v6);
      }
    }
  }
}

void registry_entry_release(CFTypeRef *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    CFRelease(a1[2]);

    free(a1);
  }
}

void color_finalize(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    CGColorSpaceRelease(*(a1 + 24));
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

uint64_t CGFontGetParserFont(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 104))(*(result + 112));
  }

  return result;
}

void CGColorSpaceRelease(CGColorSpaceRef space)
{
  if (space)
  {
    v2 = CFGetTypeID(space);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v2 == CGColorSpaceGetTypeID_type_id)
    {

      CFRelease(space);
    }
  }
}

void registry_release(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1;
    do
    {
      registry_entry_release(*v2);
      v2 = v2[1];
    }

    while (v2);
    do
    {
      v3 = v1[1];
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

void CGNotificationCenterPostNotification(uint64_t a1, __CFString *a2, __CFString *a3)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = @"kCGNotificationAnyName";
  }

  pthread_mutex_lock((a1 + 16));
  v6 = *(a1 + 80);
  if (!v6)
  {
    goto LABEL_28;
  }

  v7 = 0;
  do
  {
    v8 = *v6;
    v9 = malloc_type_malloc(0x10uLL, 0xA0040BD48D6D6uLL);
    if (v9)
    {
      *v9 = v8;
      v9[1] = v7;
      v7 = v9;
    }

    v6 = v6[1];
  }

  while (v6);
  if (v7)
  {
    v10 = 0;
    do
    {
      v11 = v7;
      v7 = v7[1];
      v11[1] = v10;
      v10 = v11;
    }

    while (v7);
    v12 = v11;
    do
    {
      if (*v12)
      {
        atomic_fetch_add_explicit(*v12, 1u, memory_order_relaxed);
      }

      v12 = *(v12 + 1);
    }

    while (v12);
    pthread_mutex_unlock((a1 + 16));
    v13 = v11;
    do
    {
      v14 = *v13;
      v15 = *(*v13 + 24);
      if (v15 == @"kCGNotificationAnyObject" || v15 == a3)
      {
        v17 = *(v14 + 16);
        if (v17 == @"kCGNotificationAnyName" || CFEqual(v17, v5))
        {
          (*(v14 + 32))(a1, *(v14 + 8), v5, a3, 0);
          if (*(v14 + 24) != @"kCGNotificationAnyObject")
          {
            pthread_mutex_lock((a1 + 16));
            v18 = x_list_remove(*(a1 + 80), v14);
            registry_entry_release(v14);
            *(a1 + 80) = v18;
            pthread_mutex_unlock((a1 + 16));
          }
        }
      }

      v13 = v13[1];
    }

    while (v13);
  }

  else
  {
LABEL_28:
    pthread_mutex_unlock((a1 + 16));
    v11 = 0;
  }

  registry_release(v11);
}

uint64_t CG::DisplayList::createCGDisplayList(CG::DisplayList *this, const __CFDictionary *a2, const CGRect *a3)
{
  if (_ZZZ22CGDisplayListGetTypeIDEUb_E4once != -1)
  {
    dispatch_once(&_ZZZ22CGDisplayListGetTypeIDEUb_E4once, &__block_literal_global_171_15843);
  }

  Instance = CGTypeCreateInstance(CGDisplayListGetTypeID::display_list2_type_id, 920);
  if (Instance)
  {
    *(Instance + 16) = &unk_1EF23F3D0;
    *(Instance + 24) = Instance;
    *(Instance + 32) = 0;
    v6 = *a2;
    *(Instance + 56) = *(a2 + 1);
    *(Instance + 40) = v6;
    *(Instance + 72) = 16843008;
    *(Instance + 76) = 0;
    *(Instance + 78) = 0;
    *(Instance + 80) = 0;
    *(Instance + 88) = CGRectNull;
    *(Instance + 120) = 0u;
    *(Instance + 136) = 0u;
    *(Instance + 152) = 0u;
    *(Instance + 168) = 0u;
    *(Instance + 184) = 0u;
    *(Instance + 200) = 0u;
    *(Instance + 216) = 0u;
    *(Instance + 232) = 0;
    *(Instance + 248) = 0u;
    *(Instance + 144) = xmmword_18439CDD0;
    *(Instance + 168) = 0x61C8864E7A143579;
    *(Instance + 240) = Instance + 248;
    *(Instance + 272) = 0u;
    *(Instance + 264) = Instance + 272;
    *(Instance + 296) = 0u;
    *(Instance + 288) = Instance + 296;
    *(Instance + 320) = 0u;
    *(Instance + 312) = Instance + 320;
    *(Instance + 344) = 0u;
    *(Instance + 336) = Instance + 344;
    *(Instance + 368) = 0u;
    *(Instance + 360) = Instance + 368;
    *(Instance + 392) = 0u;
    *(Instance + 384) = Instance + 392;
    *(Instance + 416) = 0u;
    *(Instance + 408) = Instance + 416;
    *(Instance + 440) = 0u;
    *(Instance + 432) = Instance + 440;
    *(Instance + 464) = 0u;
    *(Instance + 456) = Instance + 464;
    *(Instance + 488) = 0u;
    *(Instance + 480) = Instance + 488;
    *(Instance + 512) = 0u;
    *(Instance + 504) = Instance + 512;
    *(Instance + 544) = 0u;
    *(Instance + 528) = 0u;
    *(Instance + 560) = 1065353216;
    *(Instance + 576) = 0u;
    *(Instance + 568) = Instance + 576;
    *(Instance + 600) = 0u;
    *(Instance + 592) = Instance + 600;
    *(Instance + 624) = 0u;
    *(Instance + 616) = Instance + 624;
    *(Instance + 648) = 0u;
    *(Instance + 640) = Instance + 648;
    *(Instance + 672) = 0u;
    *(Instance + 664) = Instance + 672;
    *(Instance + 688) = 0u;
    *(Instance + 704) = 0;
    CG::DisplayList::setAuxInfo((Instance + 16), this);
    operator new();
  }

  return 0;
}

void sub_183EA895C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::vector<std::shared_ptr<TextLine>>::__destroy_vector::operator()[abi:fe200100](va);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 672));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 648));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 624));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 600));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 576));
  std::__hash_table<std::shared_ptr<CG::DisplayListResourceDisplayList>,CG::HashResourceDisplayList,CG::EqualsResourceDisplayList,std::allocator<std::shared_ptr<CG::DisplayListResourceDisplayList>>>::~__hash_table(v13);
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 512));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 488));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 464));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 440));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 416));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 392));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 368));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 344));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 320));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 296));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 272));
  std::__tree<std::shared_ptr<CG::DisplayListResourceClip>,CG::CompareResourceClip,std::allocator<std::shared_ptr<CG::DisplayListResourceClip>>>::destroy(*(v11 + 248));
  v15 = *(v11 + 128);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v15);
  }

  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(v12);
  _Unwind_Resume(a1);
}

uint64_t CGDisplayListCreateWithRect(CG::DisplayList *a1, double a2, double a3, double a4, double a5, uint64_t a6, const CGRect *a7)
{
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  return CG::DisplayList::createCGDisplayList(a1, v8, a7);
}

double CG::DisplayList::setAuxInfo(CG::DisplayList *this, const __CFDictionary *a2)
{
  if (a2)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a2);
    v5 = *(this + 2);
    *(this + 2) = Copy;
    if (v5)
    {
      CFRelease(v5);
    }

    v19 = 0;
    v6 = CGCFDictionaryGetBoolean(a2, @"trackShape", &v19) ^ 1;
    if (v19)
    {
      LOBYTE(v6) = 1;
    }

    *(this + 57) = v6;
    v20 = 0;
    v7 = CGCFDictionaryGetBoolean(a2, @"trackDrawing", &v20) ^ 1;
    if (v20)
    {
      LOBYTE(v7) = 1;
    }

    *(this + 58) = v7;
    v21 = 0;
    v8 = CGCFDictionaryGetBoolean(a2, @"trackColors", &v21) ^ 1;
    if (v21)
    {
      LOBYTE(v8) = 1;
    }

    *(this + 59) = v8;
    v22 = 0;
    Boolean = CGCFDictionaryGetBoolean(a2, @"trackGlyphs", &v22);
    if (v22)
    {
      v10 = Boolean;
    }

    else
    {
      v10 = 0;
    }

    *(this + 60) = v10;
    v23 = 0;
    v11 = CGCFDictionaryGetBoolean(a2, @"decodeImages", &v23);
    if (v23)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    *(this + 61) = v12;
    v24 = 0;
    v13 = CGCFDictionaryGetBoolean(a2, @"clipRecordingToFrame", &v24);
    if (v24)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    *(this + 56) = v14;
    v25 = 0;
    v15 = CGCFDictionaryGetBoolean(a2, @"evaluateShadingsOnRecord", &v25);
    if (v25)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    *(this + 62) = v17;
  }

  else
  {
    v18 = *(this + 2);
    *(this + 2) = 0;
    if (v18)
    {
      CFRelease(v18);
    }

    *(this + 30) = 0;
    *&result = 16843008;
    *(this + 14) = 16843008;
    *(this + 62) = 0;
  }

  return result;
}

uint64_t CGDisplayListContextCreate(const void *a1)
{
  if (a1)
  {
    if (CGContextCreateWithDelegateAndInfo(0, 0, 0, 0, 0, 0))
    {
      CG::DisplayList::createContextDelegate(a1);
    }

    CGPostError("Unable to create display list context");
  }

  return 0;
}

uint64_t CGContextCreateWithDelegateAndInfo(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (_block_invoke_once_15726 != -1)
  {
    dispatch_once(&_block_invoke_once_15726, &__block_literal_global_5_15727);
  }

  Instance = CGTypeCreateInstance(CGContextGetTypeID_type_id, 168);
  v13 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 1129601108;
    *(Instance + 20) = atomic_fetch_add_explicit(CGContextCreateWithDelegateAndInfo_unique_identifier, 1u, memory_order_relaxed) + 1;
    *(Instance + 24) = a2;
    *(Instance + 88) = 0;
    *(Instance + 64) = 0;
    *(Instance + 72) = 0;
    if (a3)
    {
      CGRenderingStateCreateCopy(a3);
    }

    else
    {
      v14 = CGRenderingStateCreate();
    }

    *(v13 + 112) = v14;
    if (v14)
    {
      v15 = CGGStackCreateWithGState(a4);
      *(v13 + 104) = v15;
      v16 = v15[1];
      if (v16 == v15)
      {
        v17 = v15;
        v18 = CGGStateCreate();
        v19 = v17[1];
        v17[1] = v18;
        *v18 = v17;
        *v19 = v18;
        *(v18 + 1) = v19;
        v16 = v17[1];
      }

      *(v13 + 96) = v16;
      *(v13 + 120) = CGAffineTransformIdentity;
      *(v13 + 168) = 0;
      if (a1)
      {
        CGContextSetDelegate(v13, a1);
      }

      *(v13 + 32) = a5;
      *(v13 + 48) = a6;
    }

    else
    {
      CFRelease(v13);
      return 0;
    }
  }

  return v13;
}

void *CGGStackCreateWithGState(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x20040A4A59CD2uLL);
  *v2 = v2;
  v2[1] = v2;
  if (a1)
  {
    Copy = CGGStateCreateCopy(a1);
  }

  else
  {
    Copy = CGGStateCreate();
  }

  v4 = v2[1];
  v2[1] = Copy;
  *Copy = v2;
  *v4 = Copy;
  *(Copy + 1) = v4;
  return v2;
}

_DWORD *CGRenderingStateCreate()
{
  v0 = malloc_type_malloc(0x58uLL, 0x1000040931E80BBuLL);
  v1 = v0;
  if (v0)
  {
    *v0 = 1;
    CGRenderingStateReset(v0);
  }

  return v1;
}

CGFloat CGGStateClipReset(uint64_t a1)
{
  CGClipStackRelease(*(a1 + 112));
  v2 = malloc_type_malloc(0x98uLL, 0x10A2040CE17A557uLL);
  *v2 = 1;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  result = CGRectInfinite.origin.x;
  *(v2 + 48) = CGRectInfinite;
  *(v2 + 80) = CGRectInfinite;
  *(v2 + 16) = CGRectInfinite;
  *(v2 + 15) = 0;
  *(v2 + 16) = 0;
  *(v2 + 14) = 3;
  *(a1 + 112) = v2;
  *(a1 + 80) = CGRectInfinite;
  *(a1 + 20) &= ~1u;
  return result;
}

char *CGGStateCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x98uLL, 0x10200404FA37D3AuLL);
  *v0 = v0;
  *(v0 + 1) = v0;
  *(v0 + 4) = 1;
  *(v0 + 24) = CGAffineTransformIdentity;
  CGGStateClipReset(v0);
  CGGStateReset(v0);
  return v0;
}

void CGRenderingStateReset(uint64_t a1)
{
  *(a1 + 8) = vdupq_n_s64(0x4052000000000000uLL);
  *(a1 + 24) = CGAffineTransformIdentity;
  *(a1 + 72) = 0;
  *(a1 + 85) = 257;
  *(a1 + 80) = 16843009;
  if (once != -1)
  {
    dispatch_once_f(&once, 0, get_font_rendering_defaults);
  }

  *(a1 + 84) = allows_font_smoothing;
  *(a1 + 4) = 3;
}

void CGClipStackRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = *(a1 + 15);
    if (*(a1 + 14) == 3)
    {
      if (v2)
      {
        v3 = 0;
        do
        {
          CGClipRelease(*(a1 + v3++ + 16));
        }

        while (v3 < *(a1 + 15));
      }
    }

    else
    {
      if (v2)
      {
        v4 = 0;
        do
        {
          CGClipRelease(*(*(a1 + 16) + 8 * v4++));
        }

        while (v4 < *(a1 + 15));
      }

      free(*(a1 + 16));
    }

    free(a1);
  }
}

void CGGStateSetFillColor(uint64_t a1, void *a2)
{
  v4 = *(a1 + 72);
  if (!CGColorEqualToColor(v4, a2))
  {
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(a1 + 72) = a2;
  }
}

void CGGStateReset(uint64_t a1)
{
  CGGStateSetFillColor(a1, 0);
  device_state_release(*(a1 + 144));
  if (device_state_create_root_predicate != -1)
  {
    dispatch_once(&device_state_create_root_predicate, &__block_literal_global_16772);
  }

  v2 = device_state_create_root_root;
  if (device_state_create_root_root)
  {
    atomic_fetch_add_explicit((device_state_create_root_root + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 144) = v2;
  *(a1 + 20) |= 0x10u;
  text_state_release(*(a1 + 136));
  if (text_state_create_root_predicate != -1)
  {
    dispatch_once(&text_state_create_root_predicate, &__block_literal_global_20369);
  }

  v3 = text_state_create_root_root;
  if (text_state_create_root_root)
  {
    atomic_fetch_add_explicit((text_state_create_root_root + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 136) = v3;
  *(a1 + 20) |= 8u;
  if (*(a1 + 120))
  {
    maybeCopyRenderingState(a1);
    renderingStateReset(*(a1 + 120));
  }

  else
  {
    v4 = malloc_type_calloc(1uLL, 0x50uLL, 0x1060040871B95B4uLL);
    *v4 = 1;
    renderingStateReset(v4);
    *(a1 + 120) = v4;
    *(a1 + 20) &= ~2u;
  }

  stroke_state_release(*(a1 + 128));
  if (stroke_state_create_root_predicate != -1)
  {
    dispatch_once(&stroke_state_create_root_predicate, &__block_literal_global_18288);
  }

  v5 = stroke_state_create_root_root;
  if (stroke_state_create_root_root)
  {
    atomic_fetch_add_explicit((stroke_state_create_root_root + 4), 1u, memory_order_relaxed);
  }

  *(a1 + 128) = v5;
  *(a1 + 20) |= 4u;
}

void text_state_release(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1 + 1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1)
    {
      _CGHandleAssert("text_state_release", 117, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Context/CGGStateText.c", "!ts->is_root", "is root %d", 1);
    }

    v2 = *(a1 + 1);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void device_state_release(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1 + 1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = *(a1 + 4);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 5);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

void renderingStateReset(uint64_t a1)
{
  *(a1 + 8) = 0x3FF0000000000000;
  v2 = *(a1 + 4);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 4) = v2 & 0xFC000000 | 0x1320200;
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 64);
  v6 = (a1 + 64);
  v5 = v7;
  *(v6 - 4) = 0;
  *(v6 - 2) = 0;
  if (v7)
  {
    CFRelease(v5);
  }

  *v6 = 0;
  v6[1] = 0;
}

void stroke_state_release(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1 + 1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    if (*a1 == 1)
    {
      _CGHandleAssert("stroke_state_release", 86, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Context/CGGStateStroke.c", "!ss->is_root", "is root: %d", 1);
    }

    v2 = *(a1 + 4);
    if (v2 && atomic_fetch_add_explicit(v2, 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      free(v2);
    }

    v3 = *(a1 + 5);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t CGContextDelegateCreate(uint64_t a1)
{
  if (_block_invoke_once_8622 != -1)
  {
    dispatch_once(&_block_invoke_once_8622, &__block_literal_global_5_8623);
  }

  result = CGTypeCreateInstance(CGContextDelegateGetTypeID_context_delegate_id, 280);
  if (result)
  {
    *(result + 288) = a1;
    *(result + 280) = 0;
  }

  return result;
}

void *CGContextDelegateSetCallbacks(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = a3;
    if (a3)
    {
      v4 = result;
      v5 = (a2 + 8);
      do
      {
        v6 = *v5;
        result = get_callback_address(v4, *(v5 - 2), "CGContextDelegateSetCallback");
        if (result)
        {
          *result = v6;
        }

        v5 += 2;
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t get_callback_address(uint64_t a1, int a2, const char *a3)
{
  switch(a2)
  {
    case 0:
      result = a1 + 24;
      break;
    case 1:
      result = a1 + 32;
      break;
    case 2:
      result = a1 + 40;
      break;
    case 3:
      result = a1 + 48;
      break;
    case 4:
      result = a1 + 56;
      break;
    case 5:
      result = a1 + 64;
      break;
    case 6:
      result = a1 + 72;
      break;
    case 7:
      result = a1 + 80;
      break;
    case 8:
      result = a1 + 88;
      break;
    case 9:
      result = a1 + 96;
      break;
    case 10:
      result = a1 + 128;
      break;
    case 11:
      result = a1 + 136;
      break;
    case 12:
      result = a1 + 152;
      break;
    case 13:
      result = a1 + 160;
      break;
    case 14:
      result = a1 + 168;
      break;
    case 15:
      result = a1 + 176;
      break;
    case 17:
      result = a1 + 192;
      break;
    case 18:
      result = a1 + 200;
      break;
    case 19:
      result = a1 + 208;
      break;
    case 20:
      result = a1 + 216;
      break;
    case 21:
      result = a1 + 104;
      break;
    case 22:
      result = a1 + 112;
      break;
    case 23:
      result = a1 + 144;
      break;
    case 24:
      result = a1 + 224;
      break;
    case 25:
      result = a1 + 232;
      break;
    case 26:
      result = a1 + 240;
      break;
    case 27:
      result = a1 + 120;
      break;
    case 28:
      result = a1 + 248;
      break;
    case 29:
      result = a1 + 256;
      break;
    case 30:
      result = a1 + 264;
      break;
    case 31:
      result = a1 + 272;
      break;
    default:
      CGPostError("%s: Unsupported delegate callback: %d.", a3, a2);
      result = 0;
      break;
  }

  return result;
}

void CGContextSetDelegate(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v4 = *(a1 + 40);
      if (v4 != cf)
      {
        if (cf)
        {
          CFRetain(cf);
          v4 = *(a1 + 40);
        }

        if (v4)
        {
          CFRelease(v4);
        }

        *(a1 + 40) = cf;
      }

      return;
    }

    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  handle_invalid_context("CGContextSetDelegate", v5);
}

unint64_t CGGStateSetEDRTargetHeadroom(unint64_t result, float a2)
{
  if (*(*(result + 120) + 48) != a2)
  {
    v3 = result;
    maybeCopyRenderingState(result);
    v4 = *(v3 + 120);
    *(v4 + 48) = a2;
    result = calculate_tone_mapping_info_hash(*(v4 + 56), *(v4 + 64), a2);
    *(*(v3 + 120) + 72) = result;
  }

  return result;
}

uint64_t CGContextSetEDRTargetHeadroom(uint64_t a1, float a2)
{
  if (!a1)
  {
    v5 = 0;
LABEL_8:
    handle_invalid_context("CGContextSetEDRTargetHeadroom", v5);
    return 0;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v5 = a1;
    goto LABEL_8;
  }

  ColorSpace = CGContextGetColorSpace(a1);
  if (ColorSpace)
  {
    goto LABEL_4;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v7[4];
    if (v8)
    {
      v7 = v8();
    }

    else
    {
      v7 = 0;
    }
  }

  Cache = CGColorTransformGetCache(v7);
  if (Cache)
  {
    ColorSpace = Cache[2];
    if (ColorSpace)
    {
LABEL_4:
      if (CGColorSpaceIsSDR(ColorSpace))
      {
        return 0;
      }
    }
  }

  v10 = 1.0;
  if (a2 >= 1.0 || a2 <= 0.0)
  {
    v10 = a2;
  }

  if (a2 < 0.0)
  {
    v10 = 0.0;
  }

  CGGStateSetEDRTargetHeadroom(*(a1 + 96), v10);
  return 1;
}

void maybeCopyRenderingState(uint64_t result)
{
  if ((*(result + 20) & 2) != 0)
  {
    v2 = *(result + 120);
    v3 = malloc_type_malloc(0x50uLL, 0x1060040871B95B4uLL);
    *v3 = 1;
    *(v3 + 1) = *(v2 + 8);
    v4 = *(v3 + 1) & 0xFFFF00FF | (*(v2 + 5) << 8);
    *(v3 + 1) = v4;
    v5 = *(v2 + 16);
    if (v5)
    {
      CFRetain(*(v2 + 16));
      v4 = *(v3 + 1);
    }

    *(v3 + 2) = v5;
    *(v3 + 24) = *(v2 + 24);
    v6 = v4 & 0xFFF0FFFF | ((HIWORD(*(v2 + 4)) & 0xF) << 16);
    *(v3 + 1) = v6;
    v7 = v6 & 0xFF0FFFFF | (((*(v2 + 4) >> 20) & 0xF) << 20);
    *(v3 + 1) = v7;
    v8 = v7 & 0xFFFFFF00 | *(v2 + 4);
    *(v3 + 1) = v8;
    v9 = v8 & 0xFEFFFFFF | ((HIBYTE(*(v2 + 4)) & 1) << 24);
    *(v3 + 1) = v9;
    *(v3 + 1) = v9 & 0xFDFFFFFF | (((*(v2 + 4) >> 25) & 1) << 25);
    v10 = *(v2 + 40);
    if (v10)
    {
      CFRetain(*(v2 + 40));
    }

    *(v3 + 5) = v10;
    *(v3 + 12) = *(v2 + 48);
    *(v3 + 14) = *(v2 + 56);
    Copy = CGCFDictionaryCreateCopy(*(v2 + 64));
    v12 = *(v2 + 72);
    *(v3 + 8) = Copy;
    *(v3 + 9) = v12;
    *(result + 120) = v3;
    renderingStateRelease(v2);
    *(result + 20) &= ~2u;
  }
}

uint64_t CGContextGetColorSpace(uint64_t a1)
{
  if (!a1)
  {
    v4 = 0;
LABEL_10:
    handle_invalid_context("CGContextGetColorSpace", v4);
    return 0;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v4 = a1;
    goto LABEL_10;
  }

  v1 = *(a1 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 264);
  if (!v2)
  {
    return 0;
  }

  return v2();
}

unint64_t calculate_tone_mapping_info_hash(CFIndex a1, CFDictionaryRef theDict, float a3)
{
  v4 = a1;
  v24[1] = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    a1 = CFDictionaryGetCount(theDict);
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 16 * v6;
  MEMORY[0x1EEE9AC00](a1);
  v9 = (v24 - ((16 * v6 + 47) & 0xFFFFFFFFFFFFFFF0));
  if (v8 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v8;
  }

  bzero(v24 - ((v7 + 47) & 0xFFFFFFFFFFFFFFF0), v10);
  if (v6 >= 1)
  {
    CFDictionaryGetKeysAndValues(theDict, (v24 - ((v7 + 47) & 0xFFFFFFFFFFFFFFF0)), &v9[v6]);
  }

  v11 = &v9[2 * v6];
  *v11 = a3;
  *(v11 + 4) = v4;
  v12 = v7 + 16;
  if ((v7 + 16) < 0x20)
  {
    v22 = 0x27D4EB2F165667C5;
  }

  else
  {
    v13 = 0;
    v14 = v9 + v12 - 31;
    v15 = 0x61C8864E7A143579;
    v16 = 0x60EA27EEADC0B5D6;
    v17 = 0xC2B2AE3D27D4EB4FLL;
    do
    {
      v18 = __ROR8__(v16 - 0x3D4D51C2D82B14B1 * *v9, 33);
      v16 = 0x9E3779B185EBCA87 * v18;
      v19 = __ROR8__(v17 - 0x3D4D51C2D82B14B1 * v9[1], 33);
      v17 = 0x9E3779B185EBCA87 * v19;
      v20 = __ROR8__(v13 - 0x3D4D51C2D82B14B1 * v9[2], 33);
      v13 = 0x9E3779B185EBCA87 * v20;
      v21 = __ROR8__(v15 - 0x3D4D51C2D82B14B1 * v9[3], 33);
      v15 = 0x9E3779B185EBCA87 * v21;
      v9 += 4;
    }

    while (v9 < v14);
    v22 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v17, 57) + __ROR8__(v16, 63) + __ROR8__(v13, 52) + __ROR8__(v15, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v18, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v19, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v20, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v21, 33))) - 0x7A1435883D4D519DLL;
  }

  return XXH64_finalize(v22 + v12, v9, v12);
}

unint64_t XXH64_finalize(unint64_t a1, uint64_t *a2, char a3)
{
  if (a2)
  {
    v3 = a3 & 0x1F;
    if (v3 >= 8)
    {
      do
      {
        v4 = *a2++;
        a1 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v4, 33)) ^ a1, 37);
        v3 -= 8;
      }

      while (v3 > 7);
    }

    if (v3 >= 4)
    {
      v5 = *a2;
      a2 = (a2 + 4);
      a1 = 0xC2B2AE3D27D4EB4FLL * __ROR8__((0x9E3779B185EBCA87 * v5) ^ a1, 41) + 0x165667B19E3779F9;
      v3 -= 4;
    }

    for (; v3; --v3)
    {
      v6 = *a2;
      a2 = (a2 + 1);
      a1 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v6) ^ a1, 53);
    }
  }

  v7 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (a1 ^ (a1 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (a1 ^ (a1 >> 33))) >> 29));
  return v7 ^ HIDWORD(v7);
}

uint64_t CGColorSpaceCopyDefaultColor(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFGetTypeID(a1);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v2 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 32));
  v3 = *(a1 + 24);
  if (v3)
  {
    if (!*(v3 + 56))
    {
      v4 = *(*(v3 + 112) + 16);
      if (v4)
      {
        v5 = v4(a1);
      }

      else
      {
        DefaultColorComponents = CGColorSpaceGetDefaultColorComponents(a1);
        v5 = CGColorCreate(a1, DefaultColorComponents);
      }

      v8 = 0;
      atomic_compare_exchange_strong_explicit((*(a1 + 24) + 56), &v8, v5, memory_order_relaxed, memory_order_relaxed);
      if (v8)
      {
        if (v5)
        {
          CFRelease(v5);
        }
      }
    }

    v9 = *(a1 + 24);
    v6 = *(v9 + 56);
    if (v6)
    {
      CFRetain(*(v9 + 56));
    }
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock((a1 + 32));
  return v6;
}

void set_fill_color_with_components(CGContext *a1, CGColorSpace *a2, const CGFloat *a3)
{
  if (a2)
  {
    ColorSpace = a2;
    v6 = 0;
    goto LABEL_3;
  }

  FillColor = CGGStateGetFillColor(*(a1 + 12));
  if (!FillColor)
  {
    goto LABEL_21;
  }

  v6 = FillColor;
  if ((FillColor & 0x8000000000000000) == 0)
  {
    ColorSpace = *(FillColor + 24);
    if (ColorSpace)
    {
      goto LABEL_3;
    }

LABEL_21:
    v7 = "No color space specified for fill color.";
    goto LABEL_22;
  }

  ColorSpace = CGTaggedColorGetColorSpace(FillColor);
  if (!ColorSpace)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (!a3)
  {
    v9 = CGColorSpaceCopyDefaultColor(ColorSpace);
    goto LABEL_15;
  }

  if (CGColorSpaceGetType(ColorSpace) == 9)
  {
    v7 = "No pattern specified for pattern color space.";
LABEL_22:

    CGPostError(v7);
    return;
  }

  if (!v6)
  {
    v6 = CGGStateGetFillColor(*(a1 + 12));
  }

  if ((CGColorEqualToColorComponents(v6, ColorSpace, 0, a3) & 1) == 0)
  {
    v9 = CGColorCreate(ColorSpace, a3);
LABEL_15:
    v10 = v9;
    CGContextSetFillColorWithColor(a1, v9);
    if (v10)
    {

      CFRelease(v10);
    }
  }
}

void CGContextSetFillColorSpace(CGContextRef c, CGColorSpaceRef space)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      set_fill_color_with_components(c, space, 0);
    }

    else
    {
      handle_invalid_context("CGContextSetFillColorSpace", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetFillColorSpace", 0);
  }
}

void CGContextSetFillColorWithColor(CGContextRef c, CGColorRef color)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetFillColor(*(c + 12), color);
    }

    else
    {
      handle_invalid_context("CGContextSetFillColorWithColor", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetFillColorWithColor", 0);
  }
}

void set_stroke_color_with_components(CGContext *a1, CGColorSpace *a2, const CGFloat *a3)
{
  if (a2)
  {
    ColorSpace = a2;
    v6 = 0;
    goto LABEL_3;
  }

  StrokeColor = CGGStateGetStrokeColor(*(a1 + 12));
  if (!StrokeColor)
  {
    goto LABEL_21;
  }

  v6 = StrokeColor;
  if ((StrokeColor & 0x8000000000000000) == 0)
  {
    ColorSpace = *(StrokeColor + 24);
    if (ColorSpace)
    {
      goto LABEL_3;
    }

LABEL_21:
    v7 = "No color space specified for stroke color.";
    goto LABEL_22;
  }

  ColorSpace = CGTaggedColorGetColorSpace(StrokeColor);
  if (!ColorSpace)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (!a3)
  {
    v9 = CGColorSpaceCopyDefaultColor(ColorSpace);
    goto LABEL_15;
  }

  if (CGColorSpaceGetType(ColorSpace) == 9)
  {
    v7 = "No pattern specified with pattern color space.";
LABEL_22:

    CGPostError(v7);
    return;
  }

  if (!v6)
  {
    v6 = CGGStateGetStrokeColor(*(a1 + 12));
  }

  if ((CGColorEqualToColorComponents(v6, ColorSpace, 0, a3) & 1) == 0)
  {
    v9 = CGColorCreate(ColorSpace, a3);
LABEL_15:
    v10 = v9;
    CGContextSetStrokeColorWithColor(a1, v9);
    if (v10)
    {

      CFRelease(v10);
    }
  }
}

void CGContextSetStrokeColorSpace(CGContextRef c, CGColorSpaceRef space)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      set_stroke_color_with_components(c, space, 0);
    }

    else
    {
      handle_invalid_context("CGContextSetStrokeColorSpace", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetStrokeColorSpace", 0);
  }
}

void CGGStateSetStrokeColor(uint64_t a1, void *a2)
{
  if (!CGColorEqualToColor(*(*(a1 + 128) + 40), a2))
  {
    maybe_copy_stroke_state(a1);
    v4 = *(*(a1 + 128) + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 128) + 40) = a2;
  }
}

void CGContextSetStrokeColorWithColor(CGContextRef c, CGColorRef color)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetStrokeColor(*(c + 12), color);
    }

    else
    {
      handle_invalid_context("CGContextSetStrokeColorWithColor", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetStrokeColorWithColor", 0);
  }
}

void maybe_copy_stroke_state(uint64_t a1)
{
  if ((*(a1 + 20) & 4) != 0)
  {
    v2 = *(a1 + 128);
    v3 = malloc_type_malloc(0x30uLL, 0x10200406F43DBA9uLL);
    v4 = v3;
    *v3 = 0;
    v3[1] = 1;
    *(v3 + 1) = *(v2 + 8);
    v5 = *(v2 + 2);
    *(v3 + 2) = v5;
    *(v3 + 1) = v5 | (*(v2 + 3) << 8);
    *(v3 + 1) = *(v2 + 16);
    *(v3 + 1) = *(v2 + 1);
    v6 = *(v2 + 32);
    if (v6)
    {
      atomic_fetch_add_explicit(v6, 1u, memory_order_relaxed);
    }

    *(v3 + 4) = v6;
    v7 = *(v2 + 40);
    if (v7)
    {
      CFRetain(*(v2 + 40));
    }

    *(v4 + 5) = v7;
    *(a1 + 128) = v4;
    stroke_state_release(v2);
    *(a1 + 20) &= ~4u;
  }
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  if (!c)
  {
    v13 = 0;
LABEL_6:
    handle_invalid_context("CGContextGetClipBoundingBox", v13);
    v11.n64_f64[0] = 0.0;
    v9.n64_f64[0] = INFINITY;
    v10.n64_f64[0] = INFINITY;
    v12.n64_f64[0] = 0.0;
    goto LABEL_7;
  }

  if (*(c + 4) != 1129601108)
  {
    v13 = c;
    goto LABEL_6;
  }

  v3.n64_f64[0] = get_device_clip_bounding_box(c, v1);
  v4 = *(c + 12);
  v5 = *(v4 + 40);
  v14[0] = *(v4 + 24);
  v14[1] = v5;
  v14[2] = *(v4 + 56);
  v9.n64_u64[0] = CGRectApplyInverseAffineTransform(v14, v3, v6, v7, v8).n64_u64[0];
LABEL_7:
  result.size.height = v12.n64_f64[0];
  result.size.width = v11.n64_f64[0];
  result.origin.y = v10.n64_f64[0];
  result.origin.x = v9.n64_f64[0];
  return result;
}

double get_device_clip_bounding_box(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 96);
  if (v3)
  {
    v5 = *(v3 + 48);
    if (v5)
    {
      a2.n128_f64[0] = v5();
      v6 = a2.n128_u64[0];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v4 = *(a1 + 96);
    }

    else
    {
      v10 = 0x7FEFFFFFFFFFFFFFLL;
      v6 = 0xFFDFFFFFFFFFFFFFLL;
      v8 = 0xFFDFFFFFFFFFFFFFLL;
      v12 = 0x7FEFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = 0;
    v6 = 0x7FF0000000000000;
    v8 = 0x7FF0000000000000;
    v12 = 0;
  }

  v13 = *(v4 + 112);
  if (v13)
  {
    Bounds = CGClipStackGetBounds(v13, a2);
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v16 = 0xFFDFFFFFFFFFFFFFLL;
    v18 = 0x7FEFFFFFFFFFFFFFLL;
    Bounds = -8.98846567e307;
    v20 = 0x7FEFFFFFFFFFFFFFLL;
  }

  v21 = v6;
  v22 = v8;
  v23 = v10;
  v24 = v12;

  *&result = CGRectIntersection(*&v21, *&Bounds);
  return result;
}

CGFloat dlRecorder_GetBounds(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 288)) != 0)
  {
    v2 = CG::DisplayListRecorder::currentDisplayList(v1);
    v3 = &CGRectZero;
    if (v2)
    {
      v3 = (v2 + 40);
    }
  }

  else
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_GetBounds");
    v3 = &CGRectNull;
  }

  return v3->origin.x;
}

double CGContextDelegateGetBounds(uint64_t a1)
{
  if (!a1)
  {
    return INFINITY;
  }

  v1 = *(a1 + 48);
  if (!v1)
  {
    return -8.98846567e307;
  }

  v1();
  return result;
}

const void *CG::DisplayListRecorder::currentDisplayList(CFArrayRef *this)
{
  Count = CFArrayGetCount(this[1]);
  if (Count)
  {
    v3 = Count - 1;
    v4 = this[1];

    return CFArrayGetValueAtIndex(v4, v3);
  }

  else
  {
    CGPostError("%s: displayListStack underflow", "CGDisplayListRef CG::DisplayListRecorder::currentDisplayList()");
    return 0;
  }
}

double CGClipStackGetBounds(double *a1, __n128 a2)
{
  if (!a1)
  {
    return -8.98846567e307;
  }

  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = *(a1 + 15);
  if (*(a1 + 14) == 3)
  {
    if (v7)
    {
      v8 = 0;
      do
      {
        CGClipGetBounds(*&a1[v8 + 16], a2);
        v27.origin.x = v9;
        v27.origin.y = v10;
        v27.size.width = v11;
        v27.size.height = v12;
        v25.origin.x = v4;
        v25.origin.y = v3;
        v25.size.width = v6;
        v25.size.height = v5;
        *a2.n128_u64 = CGRectIntersection(v25, v27);
        v4 = a2.n128_f64[0];
        v3 = v13;
        v6 = v14;
        v5 = v15;
        ++v8;
      }

      while (v8 < *(a1 + 15));
    }
  }

  else if (v7)
  {
    v16 = 0;
    do
    {
      CGClipGetBounds(*(*(a1 + 16) + 8 * v16), a2);
      v28.origin.x = v17;
      v28.origin.y = v18;
      v28.size.width = v19;
      v28.size.height = v20;
      v26.origin.x = v4;
      v26.origin.y = v3;
      v26.size.width = v6;
      v26.size.height = v5;
      *a2.n128_u64 = CGRectIntersection(v26, v28);
      v4 = a2.n128_f64[0];
      v3 = v21;
      v6 = v22;
      v5 = v23;
      ++v16;
    }

    while (v16 < *(a1 + 15));
  }

  return v4;
}

__n64 CGRectApplyInverseAffineTransform(double *a1, __n64 result, float64_t a3, float64_t a4, float64_t a5)
{
  if (result.n64_f64[0] != INFINITY && a3 != INFINITY)
  {
    v8.f64[0] = result.n64_f64[0];
    v8.f64[1] = a3;
    v9.f64[0] = a4;
    v9.f64[1] = a5;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v8, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v9, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v52[3] = v5;
      v52[4] = v6;
      if (a4 < 0.0 || a5 < 0.0)
      {
        *result.n64_u64 = CGRectStandardize(*result.n64_u64);
      }

      v11 = *a1;
      v12 = a1[1];
      v14 = a1[2];
      v13 = a1[3];
      v15 = *a1 * v13 - v12 * v14;
      if (v15 != 0.0)
      {
        v16 = 1.0 / v15;
        v17 = v13 * (1.0 / v15);
        v18 = v16 * -v12;
        v19 = -(v14 * v16);
        v20 = v11 * v16;
        v22 = a1[4];
        v21 = a1[5];
        v23 = v16 * (v14 * v21 - v13 * v22);
        v24 = v16 * (v12 * v22 - v11 * v21);
        v25 = result.n64_f64[0] + a4;
        v26 = a3 + a5;
        v27 = a3 * v20;
        if (v18 == 0.0 && v19 == 0.0)
        {
          v28 = a3 * 0.0 + v17 * result.n64_f64[0] + v23;
          v29 = v27 + result.n64_f64[0] * 0.0 + v24;
          v49 = v29;
          v50 = v28;
          v51 = v29;
          v52[0] = v28;
          v30 = v26 * 0.0 + v17 * v25 + v23;
          v31 = v26 * v20 + v25 * 0.0 + v24;
          if (v30 >= v28)
          {
            if (v30 <= v28)
            {
              goto LABEL_44;
            }

            v32 = &v50;
          }

          else
          {
            v32 = v52;
          }

          *v32 = v30;
LABEL_44:
          v47 = v31 <= v29;
          if (v31 < v29)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        }

        v33 = a3 * v19;
        v34 = v27 + v18 * result.n64_f64[0] + v24;
        v49 = v34;
        v50 = v33 + v17 * result.n64_f64[0] + v23;
        v51 = v34;
        v52[0] = v50;
        v35 = v33 + v17 * v25 + v23;
        v36 = v27 + v18 * v25 + v24;
        if (v35 >= v50)
        {
          if (v35 <= v50)
          {
            goto LABEL_19;
          }

          v37 = &v50;
        }

        else
        {
          v37 = v52;
        }

        *v37 = v35;
LABEL_19:
        if (v36 >= v34)
        {
          if (v36 <= v34)
          {
            goto LABEL_24;
          }

          v38 = &v49;
        }

        else
        {
          v38 = &v51;
        }

        *v38 = v36;
LABEL_24:
        v39 = v26 * v19;
        v40 = v26 * v19 + v17 * v25 + v23;
        v41 = v26 * v20;
        v42 = v41 + v18 * v25 + v24;
        if (v40 >= v52[0])
        {
          if (v40 <= v50)
          {
            goto LABEL_29;
          }

          v43 = &v50;
        }

        else
        {
          v43 = v52;
        }

        *v43 = v40;
LABEL_29:
        if (v42 >= v51)
        {
          if (v42 <= v49)
          {
            goto LABEL_34;
          }

          v44 = &v49;
        }

        else
        {
          v44 = &v51;
        }

        *v44 = v42;
LABEL_34:
        v45 = v39 + v17 * result.n64_f64[0] + v23;
        v31 = v41 + v18 * result.n64_f64[0] + v24;
        if (v45 >= v52[0])
        {
          if (v45 <= v50)
          {
LABEL_39:
            if (v31 < v51)
            {
LABEL_45:
              v48 = &v51;
              goto LABEL_48;
            }

            v47 = v31 <= v49;
LABEL_46:
            if (v47)
            {
              return *&v52[0];
            }

            v48 = &v49;
LABEL_48:
            *v48 = v31;
            return *&v52[0];
          }

          v46 = &v50;
        }

        else
        {
          v46 = v52;
        }

        *v46 = v45;
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t CGContextGetFontRenderingStyle(uint64_t a1)
{
  if (a1 && *(a1 + 16) == 1129601108)
  {
    v1 = *(a1 + 96);

    return CGGStateGetFontRenderingStyle(v1);
  }

  else
  {
    handle_invalid_context("CGContextGetFontRenderingStyle", a1);
    return 0;
  }
}

uint64_t CGGStateGetFontRenderingStyle(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *v1;
  if ((*v1 & 4) != 0)
  {
    if ((v2 & 8) != 0)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    if ((v2 & 0x20) != 0)
    {
      v5 = 12;
    }

    else
    {
      v5 = 4;
    }

    v6 = v4 | v5;
    if ((v2 & 0x10) != 0)
    {
      v3 = v6;
    }

    else
    {
      v3 = v4;
    }

    if ((*(*(a1 + 120) + 7) & 1) == 0)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return *(v1 + 12) | v3 | (*(v1 + 13) | *(v1 + 14));
}

void CGGStateSetFont(uint64_t a1, const void *a2)
{
  if (*(*(a1 + 136) + 8) != a2)
  {
    maybe_copy_text_state(a1);
    v4 = *(*(a1 + 136) + 8);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *(*(a1 + 136) + 8) = a2;
  }
}

void CGContextSetFont(CGContextRef c, CGFontRef font)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetFont(*(c + 12), font);
    }

    else
    {
      handle_invalid_context("CGContextSetFont", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetFont", 0);
  }
}

void maybe_copy_text_state(uint64_t a1)
{
  if ((*(a1 + 20) & 8) != 0)
  {
    v2 = *(a1 + 136);
    v3 = malloc_type_malloc(0x60uLL, 0x1020040FD5D42BBuLL);
    v4 = *v3 & 0xFFFE;
    *v3 = v4;
    *(v3 + 1) = 1;
    v5 = *(v2 + 1);
    if (v5)
    {
      CFRetain(*(v2 + 1));
      LOBYTE(v4) = *v3;
    }

    *(v3 + 1) = v5;
    *(v3 + 1) = *(v2 + 1);
    v6 = v4 | (*(v2 + 1) << 8);
    *v3 = v6;
    *(v3 + 4) = *(v2 + 4);
    v7 = *v2 & 2 | v6 & 0xFFFFFFFD;
    *v3 = v7;
    *(v3 + 14) = *(v2 + 14);
    v8 = *(v2 + 6);
    *(v3 + 5) = *(v2 + 5);
    *(v3 + 6) = v8;
    v9 = *(v2 + 8);
    if (v9)
    {
      CFRetain(*(v2 + 8));
      v7 = *v3;
    }

    *(v3 + 8) = v9;
    *(v3 + 36) = *(v2 + 36);
    *(v3 + 11) = *(v2 + 11);
    v10 = v7 & 0xFFFFFFFB | (4 * ((*v2 >> 2) & 1));
    *v3 = v10;
    v11 = v10 & 0xFFFFFFF7 | (8 * ((*v2 >> 3) & 1));
    *v3 = v11;
    v12 = v11 & 0xFFFFFFEF | (16 * ((*v2 >> 4) & 1));
    *v3 = v12;
    v13 = v12 & 0xFFFFFFDF | (32 * ((*v2 >> 5) & 1));
    *v3 = v13;
    v14 = v13 & 0xFFFFFFBF | (((*v2 >> 6) & 1) << 6);
    *v3 = v14;
    *v3 = v14 & 0xFF7F | *v2 & 0x80;
    *(a1 + 136) = v3;
    text_state_release(v2);
    *(a1 + 20) &= ~8u;
  }
}

void CGContextSetFontSize(CGContextRef c, CGFloat size)
{
  if (c && *(c + 4) == 1129601108)
  {
    v4 = *(c + 12);
    if (*(*(v4 + 136) + 16) != size)
    {
      maybe_copy_text_state(*(c + 12));
      *(*(v4 + 136) + 16) = size;
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFontSize", c);
  }
}

uint64_t CGImageTextureDataGetDataWithBlock(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    if (a5)
    {
      v6 = result;
      v7 = *(result + 40);
      if (v7)
      {
        v8 = a2;
        v9 = *(result + 72);
        v10 = *(result + 80);
        v11 = *(result + 88);
        v16 = 0;
        v17 = 0;
        v15 = 0;
        v12 = v7(*(result + 24), a2, a3, &v17, &v16, &v15, a4);
        if (v12)
        {
          v13 = v12;
          ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
          if (v15)
          {
            ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
            v14 = v15;
          }

          else
          {
            v14 = 0;
          }

          (*(a5 + 16))(a5, v9 >> v8, v10 >> v8, v11 >> v8, v13 + v16, v14);
        }

        return (*(v6 + 48))(*(v6 + 24));
      }
    }
  }

  return result;
}

uint64_t CGImageProviderCopyImageTextureData(uint64_t a1)
{
  if (a1 && *(a1 + 64) == 3 && (v1 = *(a1 + 96)) != 0)
  {
    return v1(*(a1 + 56));
  }

  else
  {
    return 0;
  }
}

void CGGStateSetFontRenderingStyle(uint64_t a1, unsigned int a2)
{
  CGGStateSetShouldAntialiasFonts(a1, a2 & 1);
  CGGStateSetShouldSmoothFonts(a1, (a2 >> 1) & 1);
  CGGStateSetShouldSubpixelPositionFonts(a1, (a2 >> 2) & 1);
  CGGStateSetShouldSubpixelQuantizeFonts(a1, (a2 >> 3) & 1);
  CGGStateSetShouldUsePlatformNativeGlyphs(a1, (a2 >> 9) & 1);
  v4 = a2 & 0xD80;
  if (v4 >> 7 <= 9 && ((1 << (v4 >> 7)) & 0x30F) != 0 && *(*(a1 + 136) + 48) != v4)
  {
    maybe_copy_text_state(a1);
    *(*(a1 + 136) + 48) = v4;
  }

  v5 = a2 & 0x70;
  if (v5 - 16 <= 0x6F && *(*(a1 + 136) + 52) != v5)
  {
    maybe_copy_text_state(a1);
    *(*(a1 + 136) + 52) = v5;
  }
}

void CGContextSetFontRenderingStyle(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetFontRenderingStyle(*(a1 + 96), a2);
    }

    else
    {
      handle_invalid_context("CGContextSetFontRenderingStyle", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetFontRenderingStyle", 0);
  }
}

void CGContextShowGlyphsWithAdvances(CGContextRef c, const CGGlyph *glyphs, const CGSize *advances, size_t count)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!c)
  {
    v21 = 0;
LABEL_21:

    handle_invalid_context("CGContextShowGlyphsWithAdvances", v21);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v21 = c;
    goto LABEL_21;
  }

  if (glyphs)
  {
    v6 = advances;
    if (advances)
    {
      v7 = count;
      if (count)
      {
        v8 = *(*(c + 12) + 136);
        if (*(v8 + 8))
        {
          if (*(v8 + 16) != 0.0)
          {
            v9 = MEMORY[0x1EEE9AC00](16 * count);
            v12 = (&v24 - v10 - 15);
            v13 = v11 <= 0xFFFFFFFFFFFFFFELL ? (&v24 - v10 - 15) : 0;
            if (v11 - 0xFFFFFFFFFFFFFFFLL >= 0xF00000000000003ELL)
            {
              v13 = malloc_type_malloc(v9, 0x9DEBFB6AuLL);
            }

            if (v13)
            {
              v14 = *(c + 136);
              *&v24.a = *(c + 120);
              *&v24.c = v14;
              *&v24.tx = *(c + 152);
              CGAffineTransformInvert(&v25, &v24);
              v15 = 0;
              v16 = *&v25.a;
              v17 = *&v25.c;
              p_height = &v6->height;
              v19 = 0uLL;
              do
              {
                v13[v15] = v19;
                v19 = vaddq_f64(v19, vmlaq_n_f64(vmulq_n_f64(v17, *p_height), v16, *(p_height - 1)));
                ++v15;
                p_height += 2;
              }

              while (v7 != v15);
              v20 = *(*(*(c + 12) + 136) + 1);
              if (v20 < 4)
              {
                draw_glyphs_19159(c, glyphs, v13, v7);
                goto LABEL_27;
              }

              if (v20 - 4 >= 3)
              {
                if (v20 != 7)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                draw_glyphs_19159(c, glyphs, v13, v7);
              }

              clip_to_glyphs(c, glyphs, v13, v7);
LABEL_27:
              v22 = 0uLL;
              do
              {
                v23 = *v6++;
                v22 = vaddq_f64(v22, v23);
                --v7;
              }

              while (v7);
              *(c + 152) = vaddq_f64(v22, *(c + 152));
              if (v13 != v12)
              {
                free(v13);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t CGBitmapContextSetData(uint64_t a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (a1 && *(a1 + 16) == 1129601108 && *(a1 + 24) == 4)
  {
    result = CGBitmapContextInfoCreate(a6, a2, a3, a4, a5, a7, a8, a9, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 32), *(*(a1 + 32) + 40), 0, 0, 0);
    if (!result)
    {
      return result;
    }

    v11 = result;
    if (bitmap_context_delegate_set_data_once != -1)
    {
      dispatch_once_f(&bitmap_context_delegate_set_data_once, 0, load_set_data);
    }

    if (set_data && (set_data() & 1) != 0)
    {
      CGBitmapContextInfoRelease(*(a1 + 32));
      *(a1 + 32) = v11;
      return 1;
    }

    CGPostError("%s: unable to set bitmap context data", "CGBitmapContextSetData");
    CGBitmapContextInfoRelease(v11);
  }

  else
  {
    handle_invalid_context("CGBitmapContextSetData", a1);
  }

  return 0;
}

uint64_t __CGBitmapContextDelegateData(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a1 + 288);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a2 + 24);
  v5 = *(a2 + 28);
  v24 = v4;
  LODWORD(v25) = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v6 >> 31)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 >> 31 == 0;
  }

  if (!v8 || ((HIDWORD(v25) = *(a2 + 8), v26 = v7, v4 <= (v6 ^ 0x7FFFFFFF)) ? (v9 = v5 <= (v7 ^ 0x7FFFFFFF)) : (v9 = 0), !v9 || *(a2 + 88) >> 31))
  {
    CGPostError("Unsupported dimensions - %d x, %d y, %lu width, %lu height, %lu bytes-per-row");
    return 0;
  }

  v28 = 0;
  v27 = 0uLL;
  v10 = RIPGetLayerFormat(a2, &v28);
  v11 = RIPGetDepthForLayerFormat(v10);
  if (!v11)
  {
    CGPostError("Unsupported pixel description - %lu components, %lu bits-per-component, %lu bits-per-pixel");
    return 0;
  }

  if (v28)
  {
    v12 = 1;
  }

  else
  {
    v12 = 16;
  }

  v13 = *(a2 + 64);
  if (v13 && (v14 = *(a2 + 88)) != 0)
  {
    if (*(a2 + 128))
    {
      v15 = *(a2 + 136);
      v16 = *(a2 + 120);
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v18 = RIPLayerCreateWithData(&v24, v12 | 2u, v11, v14, v13, v15, v16, *(a2 + 96));
  }

  else
  {
    v18 = RIPLayerCreate(RIPLayer_ripl_class, &v24, v12, v11, *(a2 + 96));
  }

  v19 = v18;
  if (!v18)
  {
    CGPostError("Unable to create bitmap delegate device");
    return 0;
  }

  v20 = *(v3 + 88);
  if (v20)
  {
    do
    {
      v21 = v20;
      v20 = *v20;
    }

    while (v20);
    v22 = (v21 + 4);
    if ((*(*v21[4] + 72))(v21[4], &v27) && v27 == v24 && *(&v27 + 4) == v25 && HIDWORD(v27) == v26)
    {
      goto LABEL_44;
    }

    v23 = (v21 + 5);
  }

  else
  {
    v22 = (v3 + 48);
    if ((*(**(v3 + 48) + 72))(*(v3 + 48), &v27) && v27 == v24 && *(&v27 + 4) == v25 && HIDWORD(v27) == v26)
    {
      goto LABEL_44;
    }

    v23 = (v3 + 72);
  }

  ripc_ReleaseClipState(v23);
LABEL_44:
  if (*v22)
  {
    (*(**v22 + 24))(*v22);
  }

  *v22 = v19;
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 1u, memory_order_relaxed);
  }

  CGBitmapContextInfoRelease(*(v3 + 8));
  *(v3 + 8) = a2;
  *(v3 + 216) = ripc_component_type_from_info(a2);
  return 1;
}

void ripl_release(char *a1)
{
  pthread_mutex_lock((a1 + 80));
  v2 = *(a1 + 2);
  if (v2 != -1 && v2 != 1)
  {
    *(a1 + 2) = v2 - 1;
LABEL_19:

    pthread_mutex_unlock((a1 + 80));
    return;
  }

  if (*(a1 + 9))
  {
    v3 = *(a1 + 4);
    if (v3 == RIPGetDepthForLayerFormat(0))
    {
      v4 = *(a1 + 9);
      if (v4)
      {
        if (v4 != &the_empty_shape)
        {
          free(v4);
        }
      }
    }

    *(a1 + 9) = 0;
    *(a1 + 16) = 0;
  }

  v5 = *(a1 + 7);
  if (v5)
  {
    if ((a1[28] & 2) == 0)
    {
      free(v5);
    }

    *(a1 + 7) = 0;
    *(a1 + 12) = 0;
  }

  if (v2 == -1)
  {
    *(a1 + 4) = RIPGetDepthForLayerFormat(0);
    *(a1 + 20) = 0;
    *(a1 + 12) = 0;
    goto LABEL_19;
  }

  *a1 = 0;
  pthread_mutex_unlock((a1 + 80));
  pthread_mutex_destroy((a1 + 80));

  free(a1);
}

uint64_t ripc_GetColorSpace(uint64_t a1)
{
  v1 = *(*(a1 + 288) + 8);
  if (!v1 || (v2 = *(v1 + 32)) == 0)
  {
    v3 = *(a1 + 288);
    ripc_InitializeColorTransform(v3);
    Cache = CGColorTransformGetCache(*(v3 + 120));
    if (Cache)
    {
      return Cache[2];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void CGGStateSetShouldSmoothFonts(uint64_t a1, int a2)
{
  if (((((**(a1 + 136) & 8) == 0) ^ a2) & 1) == 0)
  {
    maybe_copy_text_state(a1);
    if (a2)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    **(a1 + 136) = **(a1 + 136) & 0xFFF7 | v4;
  }
}

double CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(double *a1, uint64_t a2, double *a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    Bounds = CGClipStackGetBounds(a3, a5);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    if (a4)
    {
LABEL_3:
      v15 = *(a2 + 40);
      v36 = *(a2 + 24);
      v37 = v15;
      v38 = *(a2 + 56);
      Bounds = CGStyleGetDrawBoundingBoxWithMatrix(a4, &v36, Bounds, v10, v12, v14);
      v10 = v16;
      v12 = v17;
      v14 = v18;
      v19 = *a1;
      v20 = a1[1];
      v21 = a1[2];
      v22 = a1[3];
      v23 = *(a2 + 40);
      v36 = *(a2 + 24);
      v37 = v23;
      v38 = *(a2 + 56);
      DrawBoundingBoxWithMatrix = CGStyleGetDrawBoundingBoxWithMatrix(a4, &v36, v19, v20, v21, v22);
      v26 = v25;
      v28 = v27;
      v30 = v29;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = -8.98846567e307;
    v12 = 1.79769313e308;
    Bounds = -8.98846567e307;
    v14 = 1.79769313e308;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  DrawBoundingBoxWithMatrix = *a1;
  v26 = *(a1 + 1);
  v28 = *(a1 + 2);
  v30 = *(a1 + 3);
LABEL_6:
  v31 = Bounds;
  v32 = v10;
  v33 = v12;
  v34 = v14;

  *&result = CGRectIntersection(*&v31, *&DrawBoundingBoxWithMatrix);
  return result;
}

void CGGStateSetShouldAntialiasFonts(uint64_t a1, int a2)
{
  if (((((**(a1 + 136) & 4) == 0) ^ a2) & 1) == 0)
  {
    maybe_copy_text_state(a1);
    if (a2)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    **(a1 + 136) = **(a1 + 136) & 0xFFFB | v4;
  }
}

void CGGStateSetShouldUsePlatformNativeGlyphs(uint64_t a1, int a2)
{
  if (((((**(a1 + 136) & 0x40) == 0) ^ a2) & 1) == 0)
  {
    maybe_copy_text_state(a1);
    if (a2)
    {
      v4 = 64;
    }

    else
    {
      v4 = 0;
    }

    **(a1 + 136) = **(a1 + 136) & 0xFFBF | v4;
  }
}

void CGGStateSetShouldSubpixelQuantizeFonts(uint64_t a1, int a2)
{
  if (((((**(a1 + 136) & 0x20) == 0) ^ a2) & 1) == 0)
  {
    maybe_copy_text_state(a1);
    if (a2)
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    **(a1 + 136) = **(a1 + 136) & 0xFFDF | v4;
  }
}

void CGGStateSetShouldSubpixelPositionFonts(uint64_t a1, int a2)
{
  if (((((**(a1 + 136) & 0x10) == 0) ^ a2) & 1) == 0)
  {
    maybe_copy_text_state(a1);
    if (a2)
    {
      v4 = 16;
    }

    else
    {
      v4 = 0;
    }

    **(a1 + 136) = **(a1 + 136) & 0xFFEF | v4;
  }
}

CGAffineTransform *__cdecl CGAffineTransformInvert(CGAffineTransform *__return_ptr retstr, CGAffineTransform *t)
{
  v2 = t;
  b = t->b;
  c = t->c;
  d = t->d;
  v7 = t->a * d - b * c;
  if (v7 == 0.0)
  {
    CGPostError("%s: singular matrix.", "CGAffineTransformInvert");
    v8 = *&v2->c;
    *&retstr->a = *&v2->a;
    *&retstr->c = v8;
    *&retstr->tx = *&v2->tx;
  }

  else
  {
    v9 = 1.0 / v7;
    v10 = t->a * v9;
    v11 = b * v9;
    v12 = c * v9;
    v13 = d * v9;
    v14 = -(b * v9);
    v15 = -(c * v9);
    tx = t->tx;
    ty = t->ty;
    retstr->a = v13;
    retstr->b = v14;
    retstr->c = v15;
    retstr->d = v10;
    retstr->tx = v12 * ty - v13 * tx;
    retstr->ty = v11 * tx - v10 * ty;
  }

  return t;
}

uint64_t dlRecorder_DrawGlyphs(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, const CGGlyph *a5, const CGPoint *a6, size_t a7)
{
  if (!a1 || (v7 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawGlyphs");
    return 1000;
  }

  v14 = CG::DisplayListRecorder::currentDisplayList(v7);
  if (!v14)
  {
    return 1000;
  }

  v15 = v14;
  if (v14[5] == INFINITY || v14[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v15[7] != 0.0 && v15[8] != 0.0)
  {
    v18 = *(a3 + 40);
    *&v130.a = *(a3 + 24);
    *&v130.c = v18;
    *&v130.tx = *(a3 + 56);
    v19 = *(a3 + 136);
    v20 = *(v19 + 16);
    v21 = *(v19 + 1);
    if (*(v15 + 73) != 1)
    {
LABEL_75:
      v93 = v15 + 2;
      if (CG::DisplayList::fontResourceForFont((v15 + 2), *(v19 + 8)))
      {
        EntryDrawingState = CG::DisplayList::getEntryDrawingState(v15 + 2, a3, a2);
        v95 = EntryDrawingState[1];
        if (v95)
        {
          v96 = *(v95 + 8);
          v97 = EntryDrawingState[2];
          if (v97)
          {
            v96 |= *(v97 + 8);
          }

          v98 = v96 & 0x1000;
          v99 = EntryDrawingState[3];
          if (v99)
          {
            v98 |= *(v99 + 8) & 0x3400;
          }

          v100 = *(*(a3 + 136) + 64);
          if (v100)
          {
            CG::DisplayList::colorResourceForColor((v15 + 2), v100);
          }

          v101 = 0;
          if (v21 <= 6)
          {
            if (((1 << v21) & 0x11) != 0)
            {
              FillColor = CGGStateGetFillColor(a3);
              v109 = (*(*v93 + 8))(v15 + 2, FillColor);
              v101 = v109;
              if (v109)
              {
                v107 = *(v109 + 8) & 0x3400 | 0x100;
              }

              else
              {
                LOWORD(v107) = 256;
              }

              v106 = 0;
            }

            else
            {
              if (((1 << v21) & 0x22) == 0)
              {
                if (((1 << v21) & 0x44) != 0)
                {
                  v102 = CGGStateGetFillColor(a3);
                  v103 = (*(*v93 + 8))(v15 + 2, v102);
                  v101 = v103;
                  if (v103)
                  {
                    v104 = *(v103 + 8) & 0x3400 | 0x100;
                  }

                  else
                  {
                    LOWORD(v104) = 256;
                  }

                  StrokeColor = CGGStateGetStrokeColor(a3);
                  v106 = (*(*v93 + 8))(v15 + 2, StrokeColor);
                  if (v106)
                  {
                    v111 = *(v106 + 8) & 0x3400 | 0x200;
                  }

                  else
                  {
                    LOWORD(v111) = 512;
                  }

                  LOWORD(v98) = v104 | v111 | v98;
                  goto LABEL_104;
                }

                goto LABEL_93;
              }

              v105 = CGGStateGetStrokeColor(a3);
              v106 = (*(*v93 + 8))(v15 + 2, v105);
              if (v106)
              {
                v107 = *(v106 + 8) & 0x3400 | 0x200;
              }

              else
              {
                LOWORD(v107) = 512;
              }

              v101 = 0;
            }

            LOWORD(v98) = v98 | v107;
            goto LABEL_104;
          }

LABEL_93:
          v106 = 0;
LABEL_104:
          v112 = *(a3 + 120);
          v113 = v98 | 0x1000;
          if (*(v112 + 8) < 1.0)
          {
            LOWORD(v98) = v98 | 0x1000;
          }

          if ((v98 & 0x1000) == 0 && (((*(v112 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
          {
            LOWORD(v98) = v113;
          }

          if ((v98 & 0x3000) != 0)
          {
            *(v15 + 20) |= v98 & 0x3000;
          }

          if (*(v15 + 74) == 1)
          {
            v119 = v106;
            if ((v98 & 0x400) != 0)
            {
              CG::DisplayList::getEntryPatternState((v15 + 2), a3, a2);
            }

            if ((v98 & 0x100) != 0)
            {
              CG::DisplayList::getEntryFillState((v15 + 2), v101);
            }

            if ((v98 & 0x200) != 0)
            {
              CG::DisplayList::getEntryStrokeState((v15 + 2), a3, v119);
            }

            operator new();
          }

          return 0;
        }
      }

      return 1000;
    }

    v115 = *(v19 + 1);
    v22 = *(v19 + 8);
    v23 = *(v15 + 76);
    font_info = get_font_info(v22);
    if (font_info)
    {
      v25 = font_info[2];
    }

    else
    {
      v25 = 0.0;
    }

    v26 = *a4;
    v27 = a4[1];
    v28 = a4[2];
    v29 = a4[3];
    v30 = a4[4];
    v31 = v20 / v25;
    v32 = *a4 * (v20 / v25);
    v33 = v27 * (v20 / v25);
    v34 = v20 / v25 * v28;
    v121 = v31 * v29;
    v122 = v32;
    v123 = v33;
    v126 = a4[5];
    if (v23)
    {
      v120 = v34;
      if (a7 <= 0x7FFFFFFFFFFFFFELL)
      {
        v35 = malloc_type_malloc(32 * a7, 0xDA2CE77DuLL);
      }

      else
      {
        v35 = 0;
      }

      v114 = v35;
      if (CGFontGetGlyphBBoxes(v22, a5, a7, v35))
      {
        if (a7)
        {
          p_size = &v35->size;
          p_y = &a6->y;
          v117 = v27;
          v118 = v26;
          height = 0.0;
          y = INFINITY;
          v54 = a7;
          width = 0.0;
          x = INFINITY;
          v116 = v30;
          do
          {
            v57 = *(p_y - 1);
            v58 = v116 + v28 * *p_y + v118 * v57;
            v59 = v126 + v29 * *p_y + v117 * v57;
            v134 = *&p_size[-1].width;
            p_size += 2;
            v131.a = v122;
            v131.b = v123;
            v131.c = v120;
            v131.d = v121;
            v131.tx = 0.0;
            v131.ty = 0.0;
            v135 = CGRectApplyAffineTransform(v134, &v131);
            v147 = CGRectOffset(v135, v58, v59);
            v136.origin.x = x;
            v136.origin.y = y;
            v136.size.width = width;
            v136.size.height = height;
            v137 = CGRectUnion(v136, v147);
            x = v137.origin.x;
            y = v137.origin.y;
            width = v137.size.width;
            height = v137.size.height;
            p_y += 2;
            --v54;
          }

          while (v54);
        }

        else
        {
          width = 0.0;
          x = INFINITY;
          y = INFINITY;
          height = 0.0;
        }
      }

      else
      {
        v141.origin.x = -v25;
        v141.size.width = v25 + v25;
        v131.a = v122;
        v131.b = v123;
        v131.c = v34;
        v131.d = v121;
        v131.tx = 0.0;
        v131.ty = 0.0;
        v141.origin.y = -v25;
        v141.size.height = v25 + v25;
        v142 = CGRectApplyAffineTransform(v141, &v131);
        v66 = a6->y;
        v67 = v30 + v28 * v66 + v26 * a6->x;
        v68 = v126 + v29 * v66 + v27 * a6->x;
        if (a7 < 2)
        {
          v74 = v30 + v28 * v66 + v26 * a6->x;
          v73 = v68;
        }

        else
        {
          v69 = v30;
          v70 = v27;
          v71 = a7 - 1;
          v72 = &a6[1].y;
          v73 = v126 + v29 * v66 + v27 * a6->x;
          v74 = v67;
          do
          {
            v75 = *(v72 - 1);
            v76 = v69 + v28 * *v72 + v26 * v75;
            v77 = v126 + v29 * *v72 + v70 * v75;
            if (v76 > v74)
            {
              v78 = v76;
            }

            else
            {
              v78 = v74;
            }

            if (v76 < v67)
            {
              v67 = v76;
            }

            else
            {
              v74 = v78;
            }

            if (v77 >= v68)
            {
              if (v77 > v73)
              {
                v73 = v77;
              }
            }

            else
            {
              v68 = v77;
            }

            v72 += 2;
            --v71;
          }

          while (v71);
        }

        v79 = v142.origin.x;
        v80 = v142.origin.y;
        v81 = v142.size.width;
        v82 = v142.size.height;
        v143 = CGRectOffset(v142, v67, v68);
        v83 = v143.origin.x;
        v84 = v143.origin.y;
        v125 = v143.size.height;
        v128 = v143.size.width;
        v143.origin.x = v79;
        v143.origin.y = v80;
        v143.size.width = v81;
        v143.size.height = v82;
        v149 = CGRectOffset(v143, v74, v73);
        v144.origin.x = v83;
        v144.origin.y = v84;
        v144.size.height = v125;
        v144.size.width = v128;
        v145 = CGRectUnion(v144, v149);
        x = v145.origin.x;
        y = v145.origin.y;
        width = v145.size.width;
        height = v145.size.height;
      }

      free(v114);
      v21 = v115;
    }

    else
    {
      FontBBox = CGFontGetFontBBox(v22);
      if (FontBBox.origin.x == INFINITY || FontBBox.origin.y == INFINITY)
      {
        FontBBox.origin.x = -v25;
        FontBBox.size.width = v25 + v25;
        FontBBox.origin.y = -v25;
        FontBBox.size.height = v25 + v25;
      }

      v21 = v115;
      v131.a = v122;
      v131.b = v123;
      v131.c = v34;
      v131.d = v121;
      v131.tx = 0.0;
      v131.ty = 0.0;
      v133 = CGRectApplyAffineTransform(FontBBox, &v131);
      v37 = a6->y;
      v38 = v30 + v28 * v37 + v26 * a6->x;
      v39 = v126 + v29 * v37 + v27 * a6->x;
      if (a7 < 2)
      {
        v45 = v30 + v28 * v37 + v26 * a6->x;
        v44 = v39;
      }

      else
      {
        v40 = v30;
        v41 = v27;
        v42 = a7 - 1;
        v43 = &a6[1].y;
        v44 = v126 + v29 * v37 + v27 * a6->x;
        v45 = v38;
        do
        {
          v46 = *(v43 - 1);
          v47 = v40 + v28 * *v43 + v26 * v46;
          v48 = v126 + v29 * *v43 + v41 * v46;
          if (v47 > v45)
          {
            v49 = v47;
          }

          else
          {
            v49 = v45;
          }

          if (v47 < v38)
          {
            v38 = v47;
          }

          else
          {
            v45 = v49;
          }

          if (v48 >= v39)
          {
            if (v48 > v44)
            {
              v44 = v48;
            }
          }

          else
          {
            v39 = v48;
          }

          v43 += 2;
          --v42;
        }

        while (v42);
      }

      v60 = v133.origin.x;
      v61 = v133.origin.y;
      v62 = v133.size.width;
      v63 = v133.size.height;
      v138 = CGRectOffset(v133, v38, v39);
      v64 = v138.origin.x;
      v65 = v138.origin.y;
      v124 = v138.size.height;
      v127 = v138.size.width;
      v138.origin.x = v60;
      v138.origin.y = v61;
      v138.size.width = v62;
      v138.size.height = v63;
      v148 = CGRectOffset(v138, v45, v44);
      v139.origin.x = v64;
      v139.origin.y = v65;
      v139.size.height = v124;
      v139.size.width = v127;
      v140 = CGRectUnion(v139, v148);
      x = v140.origin.x;
      y = v140.origin.y;
      width = v140.size.width;
      height = v140.size.height;
    }

    v131 = v130;
    v146.origin.x = x;
    v146.origin.y = y;
    v146.size.width = width;
    v146.size.height = height;
    v129 = CGRectApplyAffineTransform(v146, &v131);
    v85.n128_f64[0] = CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(&v129, a3);
    *&v129.origin.x = v85.n128_u64[0];
    v129.origin.y = v86;
    v129.size.width = v87;
    v129.size.height = v88;
    v129.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v129.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16), v85);
    v129.origin.y = v89;
    v129.size.width = v90;
    v129.size.height = v91;
    if (v129.origin.x == INFINITY || v89 == INFINITY)
    {
      return 0;
    }

    result = 0;
    if (v90 != 0.0 && v91 != 0.0)
    {
      v19 = *(a3 + 136);
      goto LABEL_75;
    }
  }

  return result;
}

uint64_t CGContextDelegateDrawGlyphs(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 88);
    if (v1)
    {
      return v1();
    }

    else
    {
      return 1006;
    }
  }

  return result;
}

CGRect CGFontGetFontBBox(CGFontRef font)
{
  if (font)
  {
    v1.origin.x = (*(*(font + 2) + 120))(*(font + 14));
    return CGRectIntegral(v1);
  }

  else
  {
    result.size.width = 0.0;
    result.origin.x = INFINITY;
    result.origin.y = INFINITY;
    result.size.height = 0.0;
  }

  return result;
}

void *get_font_info(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1 + 5;
  explicit = atomic_load_explicit(a1 + 5, memory_order_acquire);
  if (!explicit)
  {
    explicit = malloc_type_calloc(1uLL, 0x70uLL, 0x10000400AC616F7uLL);
    (*(a1[2] + 112))(a1[14], explicit);
    v4 = 0;
    atomic_compare_exchange_strong(v2, &v4, explicit);
    if (v4)
    {
      free(explicit);
      return v4;
    }
  }

  return explicit;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    v5.f64[0] = rect.origin.x;
    v5.f64[1] = rect.origin.y;
    v6.f64[0] = rect.size.width;
    v6.f64[1] = rect.size.height;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v5, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v6, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v41[3] = v2;
      v41[4] = v3;
      if (rect.size.width < 0.0 || rect.size.height < 0.0)
      {
        rect = CGRectStandardize(rect);
      }

      v8 = rect.origin.x + rect.size.width;
      v9 = rect.origin.y + rect.size.height;
      a = t->a;
      b = t->b;
      c = t->c;
      d = t->d;
      tx = t->tx;
      ty = t->ty;
      v16 = rect.origin.y * d;
      if (b == 0.0 && c == 0.0)
      {
        v17 = rect.origin.y * 0.0 + a * rect.origin.x + tx;
        v18 = v16 + rect.origin.x * 0.0 + ty;
        v38 = v18;
        v39 = v17;
        v40 = v18;
        v41[0] = v17;
        v19 = v9 * 0.0 + a * v8 + tx;
        v20 = v9 * d + v8 * 0.0 + ty;
        if (v19 >= v17)
        {
          if (v19 <= v17)
          {
            goto LABEL_43;
          }

          v21 = &v39;
        }

        else
        {
          v21 = v41;
        }

        *v21 = v19;
LABEL_43:
        v36 = v20 <= v18;
        if (v20 < v18)
        {
          goto LABEL_44;
        }

        goto LABEL_45;
      }

      v22 = rect.origin.y * c;
      v23 = v16 + b * rect.origin.x + ty;
      v38 = v23;
      v39 = v22 + a * rect.origin.x + tx;
      v40 = v23;
      v41[0] = v39;
      v24 = v22 + a * v8 + tx;
      v25 = v16 + b * v8 + ty;
      if (v24 >= v39)
      {
        if (v24 <= v39)
        {
          goto LABEL_18;
        }

        v26 = &v39;
      }

      else
      {
        v26 = v41;
      }

      *v26 = v24;
LABEL_18:
      if (v25 >= v23)
      {
        if (v25 <= v23)
        {
          goto LABEL_23;
        }

        v27 = &v38;
      }

      else
      {
        v27 = &v40;
      }

      *v27 = v25;
LABEL_23:
      v28 = v9 * c;
      v29 = v9 * c + a * v8 + tx;
      v30 = v9 * d;
      v31 = v30 + b * v8 + ty;
      if (v29 >= v41[0])
      {
        if (v29 <= v39)
        {
          goto LABEL_28;
        }

        v32 = &v39;
      }

      else
      {
        v32 = v41;
      }

      *v32 = v29;
LABEL_28:
      if (v31 >= v40)
      {
        if (v31 <= v38)
        {
          goto LABEL_33;
        }

        v33 = &v38;
      }

      else
      {
        v33 = &v40;
      }

      *v33 = v31;
LABEL_33:
      v34 = v28 + a * rect.origin.x + tx;
      v20 = v30 + b * rect.origin.x + ty;
      if (v34 >= v41[0])
      {
        if (v34 <= v39)
        {
LABEL_38:
          if (v20 < v40)
          {
LABEL_44:
            v37 = &v40;
            goto LABEL_47;
          }

          v36 = v20 <= v38;
LABEL_45:
          if (v36)
          {
LABEL_48:
            rect.origin.y = v40;
            rect.origin.x = v41[0];
            rect.size.width = v39 - v41[0];
            rect.size.height = v38 - v40;
            return rect;
          }

          v37 = &v38;
LABEL_47:
          *v37 = v20;
          goto LABEL_48;
        }

        v35 = &v39;
      }

      else
      {
        v35 = v41;
      }

      *v35 = v34;
      goto LABEL_38;
    }
  }

  return rect;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    if (rect.size.width < 0.0 || rect.size.height < 0.0)
    {
      rect = CGRectStandardize(rect);
    }

    rect.origin.x = rect.origin.x + dx;
    rect.origin.y = rect.origin.y + dy;
  }

  return rect;
}

void *CGContextDelegateSetCallback(void *result, int a2, uint64_t a3)
{
  if (result)
  {
    result = get_callback_address(result, a2, "CGContextDelegateSetCallback");
    if (result)
    {
      *result = a3;
    }
  }

  return result;
}

void context_finalize(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v2 = *(a1 + 80);
      if (v2)
      {
        CFRelease(v2);
      }

      v3 = *(a1 + 112);
      if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        free(v3);
      }

      v4 = *(a1 + 168);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(a1 + 104);
      if (v5)
      {
        CGGStackReset(*(a1 + 104));
        free(v5);
      }

      CGPropertiesRelease(*(a1 + 176));
      *(a1 + 16) = -1129601109;
      return;
    }

    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  handle_invalid_context("context_finalize", v6);
}

uint64_t *CGGStackReset(uint64_t *a1)
{
  for (result = a1[1]; result != a1; result = a1[1])
  {
    v4 = *result;
    v3 = result[1];
    *(v4 + 8) = v3;
    *v3 = v4;
    *result = result;
    result[1] = result;
    CGGStateRelease(result);
  }

  return result;
}

void CGGStateRelease(uint64_t a1)
{
  if (a1 && atomic_fetch_add_explicit((a1 + 16), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    CGClipStackRelease(*(a1 + 112));
    device_state_release(*(a1 + 144));
    renderingStateRelease(*(a1 + 120));
    stroke_state_release(*(a1 + 128));
    text_state_release(*(a1 + 136));
    v2 = *(a1 + 72);
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void renderingStateRelease(void *a1)
{
  if (a1 && atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[5];
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t RIPGetLayerFormat(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 40);
  *a2 = 0;
  v4 = v3 & 0x7000;
  v5 = *(a1 + 32);
  if (!v5)
  {
LABEL_18:
    if ((v3 & 0x100) == 0 && *(a1 + 72) == 8 && *(a1 + 80) == 8)
    {
      if (*(a1 + 128))
      {
        v11 = 0;
      }

      else
      {
        v11 = v4 == 0;
      }

      v12 = !v11;
      return (v12 << 31 >> 31);
    }

    return 0xFFFFFFFFLL;
  }

  v6 = *(*(v5 + 24) + 48);
  result = 0xFFFFFFFFLL;
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        return result;
      }

      v8 = *(a1 + 128);
      v9 = *(a1 + 80);
      if (v8)
      {
        if (v8 != v9)
        {
          return result;
        }

        *a2 = 1;
        v9 = v8;
      }

      if (v9 != 32)
      {
        if (v9 != 16)
        {
          if (v9 == 8 && (v3 & 0x7100) == 0)
          {
            v10 = *(a1 + 72);
            if (v8 || v10 != 16)
            {
              if (v10 == 8)
              {
                return 1;
              }

              else
              {
                return 0xFFFFFFFFLL;
              }
            }

            else
            {
              if ((v3 & 0x1F) == 5)
              {
                return 2;
              }

              if ((v3 & 0x1F) == 1)
              {
                *a2 = 1;
                return 2;
              }
            }
          }

          return result;
        }

        if (*(a1 + 72) != 16)
        {
          return result;
        }

        if ((v3 & 0x100) == 0)
        {
          result = 11;
          if ((v3 & 0x7000) == 0 || v4 == 12288)
          {
            return result;
          }

          if (v4 == 4096)
          {
            return 12;
          }

          return 0xFFFFFFFFLL;
        }

        v24 = v4 == 4096;
        v25 = 23;
LABEL_145:
        if (v24)
        {
          return v25;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      if ((v3 & 0x100) == 0)
      {
        return result;
      }

      v15 = *(a1 + 72);
      if (v4 == 0x2000)
      {
        v16 = 18;
      }

      else
      {
        v16 = -1;
      }

      v17 = (v3 & 0x3000) == 0;
      v18 = 17;
      goto LABEL_83;
    }

    goto LABEL_18;
  }

  if (v6 != 3)
  {
    if (v6 != 4)
    {
      return result;
    }

    v13 = *(a1 + 128);
    v14 = *(a1 + 80);
    if (v13)
    {
      if (v13 != v14)
      {
        return result;
      }

      *a2 = 1;
      v14 = v13;
    }

    if (v14 == 32)
    {
      if ((v3 & 0x100) == 0)
      {
        return result;
      }

      v27 = *(a1 + 72);
      if (v4 == 0x2000)
      {
        v16 = 22;
      }

      else
      {
        v16 = -1;
      }

      if ((v3 & 0x3000) == 0)
      {
        v16 = 21;
      }

      v26 = v27 == 128;
      goto LABEL_93;
    }

    if (v14 != 16)
    {
      if (v14 != 8 || (v3 & 0x100) != 0)
      {
        return result;
      }

      v15 = *(a1 + 72);
      if (v4 == 0x2000)
      {
        v16 = 10;
      }

      else
      {
        v16 = -1;
      }

      v17 = (v3 & 0x3000) == 0;
      v18 = 9;
LABEL_83:
      if (v17)
      {
        v16 = v18;
      }

      v26 = v15 == 32;
LABEL_93:
      if (v26)
      {
        return v16;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(a1 + 72) != 64)
    {
      return result;
    }

    if ((v3 & 0x100) != 0)
    {
      v24 = v4 == 4096;
      v25 = 25;
      goto LABEL_145;
    }

    result = 15;
    if ((v3 & 0x7000) == 0 || v4 == 12288)
    {
      return result;
    }

    if (v4 == 4096)
    {
      return 16;
    }

    return 0xFFFFFFFFLL;
  }

  v19 = v3 & 0x1F;
  v20 = *(a1 + 80);
  if (v20 <= 9)
  {
    if (v20 != 5)
    {
      if (v20 != 8 || (v3 & 0x100) != 0 || *(a1 + 72) != 32 || *(a1 + 128))
      {
        return result;
      }

      if ((v3 & 0x1Fu) <= 1)
      {
        if ((v3 & 0x1F) != 0)
        {
          *a2 = 1;
          if ((v3 & 0x3000) == 0)
          {
            return 7;
          }

          v24 = v4 == 0x2000;
          v25 = 8;
          goto LABEL_145;
        }
      }

      else
      {
        if (v19 == 2)
        {
          *a2 = 1;
          if (v4 == 0x2000)
          {
            v21 = 6;
          }

          else
          {
            v21 = -1;
          }

          v22 = (v3 & 0x3000) == 0;
          v23 = 5;
          goto LABEL_154;
        }

        if (v19 != 5)
        {
          if (v19 != 6)
          {
            return result;
          }

          if ((v3 & 0x3000) == 0)
          {
            return 5;
          }

          v24 = v4 == 0x2000;
          v25 = 6;
          goto LABEL_145;
        }
      }

      if (v4 == 0x2000)
      {
        v21 = 8;
      }

      else
      {
        v21 = -1;
      }

      v22 = (v3 & 0x3000) == 0;
      v23 = 7;
LABEL_154:
      if (v22)
      {
        return v23;
      }

      else
      {
        return v21;
      }
    }

    v30 = *(a1 + 128);
    if (v30)
    {
      if (v30 != 8)
      {
        return result;
      }

      *a2 = 1;
    }

    if ((v3 & 0x100) == 0 && *(a1 + 72) == 16 && v19 == 6)
    {
      result = 3;
      if ((v3 & 0x7000) != 0 && v4 != 12288)
      {
        if (v4 == 4096)
        {
          return 4;
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    if (v20 == 10)
    {
      if ((v3 & 0x100) != 0)
      {
        return result;
      }

      v28 = *(a1 + 72);
      v24 = (v3 & 0xF5000) == 0x40000 && v28 == 32;
      v25 = 26;
      goto LABEL_145;
    }

    if (v20 != 16)
    {
      if (v20 != 32 || (v3 & 0x100) == 0 || *(a1 + 72) != 128 || *(a1 + 128))
      {
        return result;
      }

      if (v19 != 5)
      {
        if (v19 == 1)
        {
          *a2 = 1;
          if ((v3 & 0x3000) == 0)
          {
            return 19;
          }

          v24 = v4 == 0x2000;
          v25 = 20;
          goto LABEL_145;
        }

        if ((v3 & 0x1F) != 0)
        {
          return result;
        }
      }

      if (v4 == 0x2000)
      {
        v21 = 20;
      }

      else
      {
        v21 = -1;
      }

      v22 = (v3 & 0x3000) == 0;
      v23 = 19;
      goto LABEL_154;
    }

    v29 = *(a1 + 72);
    if ((v3 & 0x100) != 0)
    {
      if (v29 != 64 || *(a1 + 128))
      {
        return result;
      }

      if (v19 != 5)
      {
        if (v19 == 1)
        {
          *a2 = 1;
        }

        else if ((v3 & 0x1F) != 0)
        {
          return result;
        }
      }

      v24 = v4 == 4096;
      v25 = 24;
      goto LABEL_145;
    }

    if (v29 == 64 && !*(a1 + 128))
    {
      if (v19 != 5)
      {
        if (v19 == 1)
        {
          *a2 = 1;
        }

        else if ((v3 & 0x1F) != 0)
        {
          return result;
        }
      }

      result = 13;
      if ((v3 & 0x7000) != 0 && v4 != 12288)
      {
        if (v4 == 4096)
        {
          return 14;
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

BOOL ripl_Geometry(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  v3 = *(a1 + 24);
  if (a2)
  {
    *(a2 + 8) = v2;
    *(a2 + 12) = v3;
    *a2 = *(a1 + 12);
  }

  return v2 > 0 && v3 > 0;
}

_DWORD *CGBitmapContextInfoCreate(uint64_t a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, double a9, double a10, CGColorSpaceRef space, int a12, uint64_t a13, void (*a14)(uint64_t, uint64_t), uint64_t a15)
{
  v24 = space;
  if ((a12 & 0x40000) != 0)
  {
    if (!space || (v26 = CGColorSpaceCreateWithName(@"kCGColorSpaceExtendedSRGB"), !CFEqual(space, v26)))
    {
      CGPostError("%s: CIF10 bitmap context requires extended sRGB color space");
      goto LABEL_18;
    }
  }

  else
  {
    if (!space)
    {
      goto LABEL_9;
    }

    v25 = CGColorSpaceUsesExtendedRange(space);
    if ((a12 & 0x100) == 0 && v25)
    {
      CGPostError("%s: CGColorSpace which uses extended range requires floating point or CIF10 bitmap context");
      goto LABEL_18;
    }
  }

  if (!CGColorSpaceSupportsOutput(space))
  {
    CGPostError("%s: CGColorSpace doesn't support output");
LABEL_18:
    if (!a14)
    {
      return 0;
    }

LABEL_19:
    a14(a15, a1);
    return 0;
  }

LABEL_9:
  v39 = a5;
  v27 = malloc_type_calloc(1uLL, 0x90uLL, 0x10A004001DFD449uLL);
  if (!v27)
  {
    if (!a14)
    {
      return 0;
    }

    goto LABEL_19;
  }

  v28 = v27;
  *v27 = 1;
  v27[6] = a2;
  v27[7] = a3;
  *(v27 + 1) = a4;
  *(v27 + 2) = v39;
  if ((a12 & 0x1F) == 7 || space == 0)
  {
    v24 = 0;
  }

  else
  {
    CFRetain(space);
  }

  *(v28 + 32) = v24;
  *(v28 + 40) = a12;
  *(v28 + 48) = a9;
  *(v28 + 56) = a10;
  *(v28 + 100) = 0;
  *(v28 + 64) = a1;
  *(v28 + 72) = a7;
  *(v28 + 80) = a6;
  *(v28 + 88) = a8;
  *(v28 + 104) = a14;
  *(v28 + 112) = a15;
  if (!a1 && !a8)
  {
    if (a4 >= 0xFFFFFFFFFFFFFFLL)
    {
      goto LABEL_72;
    }

    a8 = (((a7 * a4 + 7) >> 3) + 31) & 0x3FFFFFFFFFFFFFE0;
    *(v28 + 88) = a8;
  }

  *(v28 + 120) = 0;
  *(v28 + 128) = a13;
  *(v28 + 136) = 0;
  *(v28 + 96) = 3;
  if (a13)
  {
    if (a4 >= 0xFFFFFFFFFFFFFFLL)
    {
      goto LABEL_72;
    }

    v30 = *(v28 + 8);
    *(v28 + 136) = a8 + ((a13 * a4 + 7) >> 3) - ((v30 * a7 + 7) >> 3);
    if (!v30)
    {
      goto LABEL_72;
    }
  }

  else if (!*(v28 + 8))
  {
    goto LABEL_72;
  }

  if (!*(v28 + 16))
  {
    goto LABEL_72;
  }

  Type = CGColorSpaceGetType(v24);
  if (Type > 3)
  {
    if ((Type - 10) >= 2)
    {
      if (Type == 4)
      {
        goto LABEL_50;
      }

      if (Type != 6)
      {
        goto LABEL_69;
      }
    }

    if (CGColorSpaceGetModel(*(v28 + 32)) == kCGColorSpaceModelXYZ)
    {
      goto LABEL_68;
    }

    v32 = *(v28 + 32);
    if (!v32)
    {
      goto LABEL_68;
    }

    v33 = *(*(v32 + 24) + 48);
    if (v33 == 4)
    {
      goto LABEL_52;
    }

    if (v33 != 3)
    {
      if (v33 == 1)
      {
        goto LABEL_48;
      }

      goto LABEL_68;
    }

LABEL_50:
    if ((validate_rgb_bitmap_info(v28) & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_53;
  }

  if (Type <= 0)
  {
    if (Type != -1)
    {
      if (!Type)
      {
        goto LABEL_48;
      }

LABEL_69:
      CGPostError("CGBitmapContextCreate: unsupported color space.");
      goto LABEL_72;
    }

    v37 = *(v28 + 40);
    if ((v37 & 0x1F) == 7 && (v37 & 0x7000) == 0 && *(v28 + 80) == 8 && *(v28 + 72) == 8 && (v37 & 0xF0000) == 0)
    {
      if ((check_sizes(v28, 8) & 1) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_53;
    }

LABEL_68:
    unsupported(v28);
    goto LABEL_72;
  }

  if (Type == 1)
  {
    goto LABEL_50;
  }

  if (Type != 2)
  {
LABEL_48:
    if ((validate_gray_bitmap_info(v28) & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_53;
  }

LABEL_52:
  if ((validate_cmyk_bitmap_info(v28) & 1) == 0)
  {
    goto LABEL_72;
  }

LABEL_53:
  if (!a1)
  {
    if (a8 && 0xFFFFFFFFFFFFFFFFLL / a8 <= v39)
    {
      goto LABEL_72;
    }

    Data = CGBitmapAllocateData(a8 * v39);
    if (!Data)
    {
      CGPostError("%s: unable to allocate %zu bytes for bitmap data");
      goto LABEL_72;
    }

    *(v28 + 100) = 1;
    *(v28 + 64) = Data;
  }

  if (a13)
  {
    v35 = *(v28 + 136);
    if (v35 && 0xFFFFFFFFFFFFFFFFLL / v35 <= v39)
    {
      goto LABEL_72;
    }

    v36 = CGBitmapAllocateData(v35 * v39);
    if (v36)
    {
      *(v28 + 120) = v36;
      return v28;
    }

    CGPostError("%s: unable to allocate %zu bytes for alpha data");
LABEL_72:
    CGBitmapContextInfoRelease(v28);
    return 0;
  }

  return v28;
}