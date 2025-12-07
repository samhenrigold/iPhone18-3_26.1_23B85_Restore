const char **initialize_skipping_conditional_var(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *(a2 + 132);
    *(a1 + 16) = *(a2 + 148);
    *a1 = v7;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 20) = *(a4 + 88);
  if (a3 && (*(a3 + 39) & 2) != 0)
  {
    result = 0;
  }

  else
  {
    result = *(a4 + 8);
    if (!result)
    {
      if (!*a4)
      {
        _CGHandleAssert("RIPGetDepthForEncoding", 113, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPLayerFormat.c", "enc != NULL", "NULL encoding");
      }

      result = CGBlt_depth(*a4);
    }
  }

  *(a1 + 32) = result;
  *(a1 + 40) = vmovn_s64(*(a4 + 16));
  *(a1 + 48) = *(a4 + 32);
  *(a1 + 64) = *(a4 + 48);
  *(a1 + 72) = *(a4 + 56);
  *(a1 + 88) = *(a4 + 64);
  *(a1 + 80) = *(a4 + 52);
  *(a1 + 96) = vextq_s8(*(a4 + 72), *(a4 + 72), 8uLL);
  if (a3)
  {
    v9 = *(a3 + 24);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a4 + 96);
  *(a1 + 112) = v9;
  *(a1 + 116) = v10;
  *(a1 + 120) = a4;
  return result;
}

float64_t ripc_InitializeImage(uint64_t a1, int32x2_t *a2, double *a3, int a4, unint64_t a5, unint64_t a6, uint64_t a7, double *a8, double a9, double a10, double a11)
{
  *(a1 + 16) = a3;
  *(a1 + 42) = 0;
  if (a7)
  {
    v11 = *(a3 + 14);
    if (v11 == a5 && (v12 = *(a3 + 15), v12 == a6))
    {
      _D0 = a6;
      v14 = (HIDWORD(*a2->i8) + HIDWORD(*a2));
      v15 = *a2->i8;
      *a1 = *a2->i8;
      a11 = v14 - (*(a7 + 40) + *(a7 + 24) * a6);
      _Q4 = *(a7 + 8);
      __asm { FMLA            D1, D0, V4.D[1] }

      *(a7 + 32) = _D1 - v15;
      *(a7 + 40) = a11;
      v22 = vnegq_f64(_Q4);
      *(a7 + 8) = v22;
      *(a1 + 24) = a7;
      *(a1 + 48) = 0;
      if (a4 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = -1;
      }

      *(a1 + 40) = v23;
    }

    else
    {
      a11 = *a7;
      v24 = *(a7 + 8);
      v26 = *(a7 + 16);
      v25 = *(a7 + 24);
      if (a4 == 1)
      {
        *(a1 + 40) = 0;
      }

      else
      {
        *(a1 + 40) = -1;
        v27 = *(a3 + 10);
        if (v27 != a5)
        {
          v28 = a5 / v27;
          a11 = a11 * v28;
          v24 = v24 * v28;
        }

        v29 = *(a3 + 11);
        if (v29 != a6)
        {
          v30 = a6 / v29;
          v26 = v26 * v30;
          v25 = v25 * v30;
        }
      }

      v31 = *(a3 + 13);
      v32 = *(a3 + 12);
      v33 = v11;
      LODWORD(v12) = *(a3 + 15);
      v34 = v12;
      v35 = *(a7 + 32) + a11 * v32 + v26 * v31;
      v36 = *(a7 + 40) + v24 * v32 + v25 * v31;
      v37 = v35 + a11 * v11;
      v38 = v36 + v24 * v11;
      if (v37 > v35)
      {
        v39 = v35 + a11 * v11;
      }

      else
      {
        v39 = v35;
      }

      if (v37 < v35)
      {
        v39 = v35;
        v35 = v35 + a11 * v11;
      }

      if (v38 > v36)
      {
        v40 = v36 + v24 * v11;
      }

      else
      {
        v40 = v36;
      }

      if (v38 < v36)
      {
        v40 = v36;
        v36 = v36 + v24 * v11;
      }

      v41 = v37 + v26 * v34;
      v42 = v38 + v25 * v34;
      if (v41 > v39)
      {
        v43 = v41;
      }

      else
      {
        v43 = v39;
      }

      if (v41 < v35)
      {
        v35 = v41;
      }

      else
      {
        v39 = v43;
      }

      if (v42 > v40)
      {
        v44 = v42;
      }

      else
      {
        v44 = v40;
      }

      if (v42 >= v36)
      {
        v45 = v44;
      }

      else
      {
        v45 = v40;
      }

      if (v42 >= v36)
      {
        v46 = v36;
      }

      else
      {
        v46 = v42;
      }

      v47 = v41 - a11 * v33;
      v48 = v42 - v24 * v33;
      if (v47 >= v35)
      {
        if (v47 > v39)
        {
          v39 = v47;
        }
      }

      else
      {
        v35 = v47;
      }

      if (v48 >= v46)
      {
        if (v48 > v45)
        {
          v45 = v42 - v24 * v33;
        }
      }

      else
      {
        v46 = v42 - v24 * v33;
      }

      v49 = v35 + v39 - v35;
      v50 = v35 + 0.00390625;
      if (v35 + 0.00390625 <= 1073741820.0)
      {
        v52 = vcvtmd_s64_f64(v50);
        if (v50 >= -1073741820.0)
        {
          v51 = v52;
        }

        else
        {
          v51 = -1073741823;
        }
      }

      else
      {
        v51 = 0x3FFFFFFF;
      }

      v53 = v45 - v46;
      *a1 = v51;
      v54 = v49 + -0.00390625;
      if (v54 <= 1073741820.0)
      {
        v56 = vcvtpd_s64_f64(v54);
        if (v54 >= -1073741820.0)
        {
          v55 = v56;
        }

        else
        {
          v55 = -1073741823;
        }
      }

      else
      {
        v55 = 0x3FFFFFFF;
      }

      *(a1 + 8) = v55 - v51;
      v57 = v46 + v53;
      v58 = v46 + 0.00390625;
      if (v58 <= 1073741820.0)
      {
        v60 = vcvtmd_s64_f64(v58);
        if (v58 >= -1073741820.0)
        {
          v59 = v60;
        }

        else
        {
          v59 = -1073741823;
        }
      }

      else
      {
        v59 = 0x3FFFFFFF;
      }

      v61 = -v24;
      *(a1 + 4) = v59;
      v62 = v57 + -0.00390625;
      if (v57 + -0.00390625 <= 1073741820.0)
      {
        if (v62 >= -1073741820.0)
        {
          v63 = vcvtpd_s64_f64(v62);
        }

        else
        {
          v63 = -1073741823;
        }
      }

      else
      {
        v63 = 0x3FFFFFFF;
      }

      *(a1 + 12) = v63 - v59;
      *a7 = a11;
      *(a7 + 8) = v61;
      *(a7 + 16) = -v26;
      *(a7 + 24) = v25;
      v22.f64[0] = v47 - v51;
      _D1 = v63 - v48;
      *(a7 + 32) = v22.f64[0];
      *(a7 + 40) = _D1;
      *(a1 + 24) = a7;
      *(a1 + 48) = 0;
    }
  }

  else
  {
    _D1 = a3[6];
    *&v22.f64[0] = vadd_s32(*&_D1, *a2);
    *a1 = v22.f64[0];
    LODWORD(v12) = *(a3 + 15);
    *(a1 + 8) = *(a3 + 14);
    *(a1 + 12) = v12;
    *(a1 + 48) = 0;
    *(a1 + 24) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 32) = a8;
  if (a8)
  {
    v64 = *(a3 + 12);
    v65 = v12 + *(a3 + 13);
    LODWORD(a11) = *(a3 + 10);
    LODWORD(_D1) = *(a3 + 11);
    v66 = *&_D1;
    v67 = a8[1];
    v68 = v67 + a8[3];
    v69 = v65 - v67 * v66;
    v70 = v65 - v68 * v66;
    v71 = *&a11;
    v72 = -(v64 - *a8 * v71);
    v73 = -(v64 - (*a8 + a8[2]) * v71);
    v74 = v69 - v70;
    *a8 = v72;
    a8[1] = v70;
    v22.f64[0] = v73 - v72;
    a8[2] = v73 - v72;
    a8[3] = v74;
  }

  return v22.f64[0];
}

void ripc_ReleaseRIPImageData(void *value)
{
  if (RIPShouldCacheImages_predicate != -1)
  {
    dispatch_once(&RIPShouldCacheImages_predicate, &__block_literal_global_13807);
  }

  if (RIPShouldCacheImages_should_cache != 1)
  {
    goto LABEL_7;
  }

  if (get_cache_predicate != -1)
  {
    dispatch_once(&get_cache_predicate, &__block_literal_global_1513);
  }

  if (cache_release_value(*(get_cache_image_cache + 64), value))
  {
LABEL_7:

    RIPImageDataRelease(value);
  }
}

void CGSImageDataHandleRelease(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      v2 = malloc_default_purgeable_zone();
    }

    else
    {
      v2 = malloc_default_zone();
    }

    malloc_zone_free(v2, *(a1 + 16));

    free(a1);
  }
}

void CGSImageDataUnlock(uint64_t *a1)
{
  if (a1)
  {
    CGSImageDataHandleRelease(a1[9]);
    v2 = a1[14];
    if (v2)
    {
      CGAccessSessionRelease(v2);
    }

    v3 = a1[16];
    if (v3)
    {
      CGDataProviderRelease(v3);
    }

    v4 = a1[15];
    if (v4)
    {
      CGImageBlockSetRelease(*v4);
      free(v4);
    }

    v5 = a1[13];
    if (v5)
    {
      CGColorSpaceRelease(v5);
    }

    free(a1);
  }
}

CFStringRef CGDataProviderCreateDebugString(uint64_t a1, __CFString *a2)
{
  if (data_provider_debug_info_enabled_predicate != -1)
  {
    dispatch_once(&data_provider_debug_info_enabled_predicate, &__block_literal_global_42);
  }

  if (data_provider_debug_info_enabled_enabled != 1)
  {
    return 0;
  }

  return data_provider_copy_debug_string(a1, a2);
}

char *subImageProviderCopyImageBlockSet(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, const __CFDictionary *a7)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0;
  v59 = CGRectStandardize(*&a2);
  v65 = *(a1 + 160);
  v59.origin.x = v65.origin.x + v59.origin.x;
  v59.origin.y = v59.origin.y + v65.origin.y;
  v60 = CGRectIntersection(v59, v65);
  y = v60.origin.y;
  x = v60.origin.x;
  height = v60.size.height;
  width = v60.size.width;
  v9 = *(a1 + 48);
  v10 = MEMORY[0x1E695E480];
  if (a7)
  {
    Value = CFDictionaryGetValue(a7, @"kCGImageBlockFormatRequest");
    if (Value && CFEqual(Value, @"kCGImageBlockFormatBGRx8"))
    {
      v9 = 4;
    }

    v12 = CFDictionaryGetValue(a7, @"kCGImageBlockBaseAddressAlignmentRequest");
    if (v12)
    {
      CFNumberGetValue(v12, kCFNumberCFIndexType, valuePtr);
    }

    v13 = *v10;
    MutableCopy = CFDictionaryCreateMutableCopy(v13, 0, a7);
  }

  else
  {
    v13 = *MEMORY[0x1E695E480];
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v15 = MutableCopy;
  v57 = 0;
  v16 = CFNumberCreate(v13, kCFNumberLongType, &v57);
  CFDictionarySetValue(v15, @"kCGImageBlockTileRequest", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = CGImageProviderCopyImageBlockSetWithOptions(*(a1 + 152), v15);
  if (v15)
  {
    CFRelease(v15);
  }

  if (!v17)
  {
    v17 = CGImageProviderCopyImageBlockSetWithOptions(*(a1 + 152), a7);
    if (!v17)
    {
      return 0;
    }
  }

  v18 = v17[15];
  v19 = MEMORY[0x1EEE9AC00](8 * v18);
  v22 = (&v52 - v21);
  if (v20 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v23 = (&v52 - v21);
  }

  else
  {
    v23 = 0;
  }

  if (v20 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
  {
    v23 = malloc_type_malloc(v19, 0x5886F8B0uLL);
  }

  if (v18)
  {
    v52 = &v52;
    v24 = 0;
    v25 = 0;
    do
    {
      if (v17[15] > v24)
      {
        v26 = v17[v24 + 16];
        if (v26)
        {
          v28 = *(v26 + 1);
          v27 = *(v26 + 2);
          v30 = *(v26 + 3);
          v29 = *(v26 + 4);
          v31 = *(a1 + 160);
          v32 = *(a1 + 168);
          v66.size.width = *(a1 + 176);
          v66.size.height = *(a1 + 184);
          v61.origin.x = v28;
          v61.origin.y = v27;
          v61.size.width = v30;
          v61.size.height = v29;
          v66.origin.x = v31;
          v66.origin.y = v32;
          v62 = CGRectIntersection(v61, v66);
          v33 = v62.size.width;
          v34 = v62.origin.x == INFINITY || v62.origin.y == INFINITY;
          if (!v34 && *v26)
          {
            v35 = v26[5];
            if (v35 >= v9 * v30)
            {
              v36 = v62.size.height;
              v37 = *v26 + v35 * (v62.origin.y - v27) + v9 * (v62.origin.x - v28);
              if (valuePtr[0] && v37 % valuePtr[0])
              {
                if (v25)
                {
                  v49 = v23;
                  do
                  {
                    v50 = *v49;
                    if (*v49)
                    {
                      v51 = v50[9];
                      if (v51)
                      {
                        v51(v50[7], *v49);
                      }

                      free(v50);
                    }

                    ++v49;
                    --v25;
                  }

                  while (v25);
                }

                goto LABEL_51;
              }

              v38 = v62.origin.x - v31;
              v39 = v62.origin.y - v32;
              v40 = CGImageBlockCreate(v37, v35, 0, 0, v62.origin.x - v31, v62.origin.y - v32, v62.size.width, v62.size.height);
              if (v40)
              {
                v41 = v40;
                if (v25)
                {
                  v63.origin.y = y;
                  v63.origin.x = x;
                  v63.size.height = height;
                  v63.size.width = width;
                  v67.origin.x = v38;
                  v67.origin.y = v39;
                  v67.size.width = v33;
                  v67.size.height = v36;
                  v64 = CGRectUnion(v63, v67);
                  y = v64.origin.y;
                  x = v64.origin.x;
                  v33 = v64.size.width;
                  v36 = v64.size.height;
                }

                else
                {
                  y = v39;
                  x = v38;
                }

                v23[v25++] = v41;
                height = v36;
                width = v33;
              }
            }

            else
            {
              CGPostError("CGImageProviderCopyImageBlockSet: invalid bytes/row.\nCGImageProviderCopyImageBlockSet(<CGImageProvider %p>):\n\t<CGImageBlockSet %p> (count = %ld) [%ld]:\n\t\t<CGImageBlock %p> (size = %ld x %ld, pixel-size = %ld, data = %p, bytes-per-row = %ld)", *(a1 + 152), v17, v18, v24, v26, v30, v29, v9, *v26, v35);
            }
          }
        }
      }

      ++v24;
    }

    while (v18 != v24);
    if (!v25)
    {
      goto LABEL_51;
    }

    v42 = *(a1 + 152);
    if (v42)
    {
      v43 = *(v42 + 36);
    }

    else
    {
      v43 = 0;
    }

    v44 = CGImageBlockSetCreateWithBitmapInfo(v42, 0, v43, 0, 0, v25, v23, v17, *(a1 + 176), *(a1 + 184), x, y, width, height, subImageBlockSetCallbacks);
    if (!v44)
    {
      v45 = v23;
      do
      {
        v46 = *v45;
        if (*v45)
        {
          v47 = v46[9];
          if (v47)
          {
            v47(v46[7], *v45);
          }

          free(v46);
        }

        ++v45;
        --v25;
      }

      while (v25);
      goto LABEL_51;
    }
  }

  else
  {
LABEL_51:
    CGImageBlockSetRelease(v17);
    v44 = 0;
  }

  if (v23 != v22)
  {
    free(v23);
  }

  return v44;
}

uint64_t CGAccessSessionGetBytes(uint64_t *a1, char *a2, unint64_t a3)
{
  if (!*a1)
  {
    _CGHandleAssert("CGDataProviderGetType", 212, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider != NULL", "provider is NULL", v3, v4);
  }

  v5 = *(*a1 + 20);
  if (v5 > 1)
  {
    if (v5 == 3)
    {
LABEL_11:

      return get_chunks_sequential(a1, a3, 0, 1, a2, 0);
    }

    if (v5 != 2)
    {
      return 0;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      return 0;
    }

    goto LABEL_11;
  }

  return get_chunks_direct(a1, a3, 0, 1, a2, 0);
}

__n128 CGDataProviderCreateDirectWithInternalCallbacks(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 0)
  {
    CGPostError("%s: Invalid size = %lld", "CGDataProviderCreateDirectWithInternalCallbacks", a2);
    if (!a3)
    {
      return result;
    }
  }

  else if (!a3)
  {
    return result;
  }

  if (a2 >= 1 && *a3 == 1)
  {
    if (*(a3 + 8))
    {
      if (*(a3 + 40))
      {
        return result;
      }
    }

    else if (!*(a3 + 24))
    {
      return result;
    }

    provider = create_provider(a1, 0);
    if (provider)
    {
      *(provider + 32) = a2;
      *(provider + 80) = *(a3 + 8);
      v8 = *(a3 + 32);
      *(provider + 96) = *(a3 + 24);
      *(provider + 72) = v8;
      *(provider + 128) = *(a3 + 40);
      result = *(a3 + 56);
      *(provider + 160) = result;
    }
  }

  return result;
}

uint64_t CGDataProviderLock(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = CFGetTypeID(a1);
  if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
  {
    dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
  }

  if (v2 != CGDataProviderGetTypeID_id)
  {
    return 0xFFFFFFFFLL;
  }

  CFRetain(a1);
  v3 = *(a1 + 144);
  if (v3)
  {
    v4 = *(a1 + 24);

    return v3(v4);
  }

  else if (*(a1 + 80))
  {
    return 0;
  }

  else
  {

    return pthread_mutex_lock((a1 + 184));
  }
}

uint64_t imageProvider_retain_data(uint64_t result)
{
  if (!*(result + 8))
  {
    v1 = result;
    if (*(result + 80))
    {
      v2 = 0;
    }

    else
    {
      if (get_provider_options_predicate != -1)
      {
        dispatch_once(&get_provider_options_predicate, &__block_literal_global_21791);
      }

      v2 = get_provider_options_options_singleton;
    }

    result = CGImageProviderCopyImageBlockSetWithOptions(*v1, v2);
    v1[1] = result;
    if (!result)
    {
      result = CGImageProviderCopyImageBlockSetWithOptions(*v1, 0);
      v1[1] = result;
    }
  }

  return result;
}

uint64_t CGDataProviderCreateWithImageProvider(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 48);
  v5 = v4 * v3;
  v6 = malloc_type_malloc(0x58uLL, 0x1020040737FDA6EuLL);
  CGDataProviderCreateDirectWithInternalCallbacks(v6, v5 * v2, &imageProvider_callbacks);
  v8 = v7;
  if (v7)
  {
    *(v7 + 260) = *(a1 + 130);
    CFRetain(a1);
    *v6 = a1;
    v6[1] = 0.0;
    v6[2] = 0.0;
    v6[3] = 0.0;
    v6[4] = v3;
    v6[5] = v2;
    *(v6 + 6) = v4;
    *(v6 + 7) = v5;
    *(v6 + 8) = v5 * v2;
    *(v6 + 80) = 1;
    *(v8 + 280) = CGDataProviderCreateDebugString(v8, *(a1 + 144));
    *(v6 + 9) = v8;
  }

  else
  {
    free(v6);
  }

  return v8;
}

void *CGAccessSessionCreate(CGDataProvider *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10E00404CFD562DuLL);
  if (v2)
  {
    v3 = pthread_self();
    if (get_session_key_pred != -1)
    {
      dispatch_once(&get_session_key_pred, &__block_literal_global_20945);
    }

    pthread_setspecific(get_session_key_session_key, v3);
    v4 = CGDataProviderRetain(a1);
    CGDataProviderLock(v4);
    CGDataProviderRetainData(a1);
    *v2 = a1;
    v2[1] = CGDataProviderRetainBytePtr(a1);
    CGAccessSessionRewind(v2);
  }

  return v2;
}

uint64_t CGDataProviderRetainData(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 128))
    {
      pthread_mutex_lock((result + 184));
      CFRetain(v1);
      if (!atomic_fetch_add_explicit((v1 + 256), 1u, memory_order_relaxed))
      {
        (*(v1 + 128))(*(v1 + 24));
      }

      return pthread_mutex_unlock((v1 + 184));
    }
  }

  return result;
}

uint64_t CGAccessSessionRewind(uint64_t result)
{
  if (result)
  {
    v1 = result;
    check_same_thread();
    result = 0;
    v2 = *(*v1 + 20);
    if (v2 > 1)
    {
      if (v2 == 3)
      {
LABEL_9:
        CGDataProviderRewind(*v1);
        return 1;
      }

      if (v2 != 2)
      {
        return result;
      }
    }

    else if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }

      goto LABEL_9;
    }

    v1[2] = 0;
    return 1;
  }

  return result;
}

void check_same_thread()
{
  if (get_session_key_pred != -1)
  {
    dispatch_once(&get_session_key_pred, &__block_literal_global_20945);
  }

  v0 = pthread_getspecific(get_session_key_session_key);
  v1 = pthread_self();
  if (v0 != v1)
  {
    CGPostError("CGAccessSession cannot be shared between threads.Session created on thread %p used by %p", v0, v1);
  }
}

uint64_t get_chunks_direct(void *a1, int64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  check_same_thread();
  v12 = *a1;
  if (!*(*a1 + 96) && !v12[14] && !v12[10])
  {
    _CGHandleAssert("get_chunks_direct", 173, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGAccessSession.c", "CGDataProviderCanGetBytesAtPosition(provider)", "data provider provides no callback to read data at a position");
  }

  v13 = v12[4];
  if (v13 == -1)
  {
    _CGHandleAssert("get_chunks_direct", 177, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGAccessSession.c", "provider_size != (-1UL)", "invalid provider size");
  }

  v14 = 0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v20 = a1[2];
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (a4)
      {
        v14 = 0;
        v15 = a1[2];
        v16 = a2;
        do
        {
          if (v15 + v16 > v13)
          {
            v16 = v13 - v15;
            if ((v13 - v15) < 1)
            {
              break;
            }
          }

          if (v16 >= a2)
          {
            v16 = a2;
          }

          v17 = a1[1];
          if (v17)
          {
            memmove(a5, (v17 + v15), v16);
            BytesAtPositionInternal = v16;
          }

          else
          {
            BytesAtPositionInternal = CGDataProviderDirectGetBytesAtPositionInternal(v12, a5, v15, v16);
            if (!BytesAtPositionInternal)
            {
              return v14;
            }
          }

          v14 += BytesAtPositionInternal;
          v15 = v16 + a3 + a1[2];
          a1[2] = v15;
          if (v15 < 0 || v15 > v13)
          {
            a1[2] = v13;
            if (v14 + v20 > v13)
            {
              return v13 - v20;
            }

            return v14;
          }

          a5 += a2 + a6;
          --a4;
        }

        while (a4);
      }
    }
  }

  return v14;
}

size_t CGDataProviderDirectGetBytesAtPositionInternal(void *a1, char *a2, int64_t a3, size_t a4)
{
  if (a3 < 0)
  {
    _CGHandleAssert("CGDataProviderDirectGetBytesAtPositionInternal", 689, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "pos >= 0", "position (%lld) may not be negative", a3);
  }

  v5 = a4;
  if (a4)
  {
    if (!a1 || (v7 = a1[4], v7 == -1))
    {
      _CGHandleAssert("CGDataProviderDirectGetBytesAtPositionInternal", 693, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "size != (-1)", "size overflow");
    }

    v9 = CGDataProviderRetainBytePtr(a1);
    if (v9)
    {
      if (v7 > a3)
      {
        if (!__CFADD__(a3, v5) && v5 + a3 <= v7 || (v5 = v7 - a3, v7 != a3))
        {
          v10 = a1[10];
          v11 = "CGDataProviderDirectGetBytesAtPositionInternal calling provider created with getBytePtr callback";
          if (v10 == getCFDataBytePointer)
          {
            v11 = "CGDataProviderDirectGetBytesAtPositionInternal calling provider created with CFData";
          }

          if (v10 == data_get_byte_pointer)
          {
            v12 = "CGDataProviderDirectGetBytesAtPositionInternal calling provider created with data";
          }

          else
          {
            v12 = v11;
          }

          qword_1ED4E0528 = v12;
          memcpy(a2, (v9 + a3), v5);
          qword_1ED4E0528 = 0;
        }

        goto LABEL_40;
      }
    }

    else if (a1[12] || a1[14])
    {
      v13 = a1[4];
      if (v13 == -1)
      {
        _CGHandleAssert("provider_get_bytes_at_position", 642, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProvider.c", "provider->size != (off_t)(-1)", "provider size too large");
      }

      v14 = v13 - a3;
      if (v13 > a3)
      {
        v15 = !__CFADD__(a3, v5) && (v5 + a3) <= v13;
        v16 = !v15;
        v17 = v16 ? v14 : v5;
        if (v17 >= 1)
        {
          v18 = 0;
          do
          {
            v5 = v18;
            if (!v17)
            {
              break;
            }

            v19 = a1[12];
            if (!v19)
            {
              v19 = a1[14];
              if (!v19)
              {
                break;
              }
            }

            v20 = v19(a1[3], &a2[v5], v5 + a3, v17);
            v21 = v20 >= v17 ? v17 : v20;
            v17 -= v21;
            v18 = v21 + v5;
          }

          while (v20);
          goto LABEL_40;
        }
      }
    }

    v5 = 0;
LABEL_40:
    CGDataProviderReleaseBytePtr(a1);
  }

  return v5;
}

uint64_t imageProvider_getBytesAtPosition(uint64_t a1, char *a2, uint64_t a3, size_t a4)
{
  if (!a1)
  {
    _CGHandleAssert("imageProvider_getBytesAtPosition", 120, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderImageProvider.c", "imageProvider != NULL", "provider missing");
  }

  v4 = a2;
  if (a2)
  {
    v5 = a4;
    if (a4)
    {
      ERROR_CGBlt_copyBytes_BufferIsNotReadable();
      ERROR_CGBlt_copyBytes_BufferIsNotBigEnough();
      if ((a3 & 0x8000000000000000) == 0)
      {
        v7 = a1;
        if (*(a1 + 64) > a3)
        {
          v8 = *(a1 + 8);
          if (v8)
          {
            v9 = *(v8 + 120);
            if (v9)
            {
              v10 = 0;
              v11 = 0;
              v12 = 0;
              v43 = &v4[v5];
              v13 = *(a1 + 56);
              v14 = a3 / v13;
              v41 = v13;
              v42 = &v4[v5 - 1];
              v15 = a3 % v13;
              v38 = *(a1 + 48);
              v40 = &v4[v5];
LABEL_9:
              if (*(v8 + 120) > v11)
              {
                v16 = *(v8 + 8 * v11 + 128);
                if (v16)
                {
                  v17 = v16[2];
                  v18 = v16[3];
                  v19 = v16[4];
                  v20 = v14 - v17;
                  v21 = v14 >= v17 && v14 < v17 + v19;
                  v22 = v38 * v16[1];
                  v23 = !v21 || v15 < v22;
                  v24 = v38 * v18;
                  if (!v23 && v15 < v22 + v24)
                  {
                    v36 = v22 + v24;
                    v37 = v38 * v18;
                    v39 = v9;
                    v34 = *v16;
                    v35 = v17 + v19;
                    v44 = *(v16 + 5);
                    if (v19 > 0.0 && (v26 = v18 * v38 + (v19 + -1.0) * v44, v26))
                    {
                      v33 = v26;
                      v46 = 0;
                      DebugString = CGDataProviderGetDebugString(*(v7 + 72));
                      if (DebugString)
                      {
                        asprintf(&v46, "CGDataProviderForImageProvider: image provider: %p block set count: %zu block: %p block index %zu block data: %p block bpr: %zu block size: %zu\n%s\n", *a1, v39, v16, v11, v34, v44, v33, DebugString);
                        qword_1ED4E0528 = v46;
                        ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
                        ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
                        qword_1ED4E0528 = 0;
                        free(v46);
                      }

                      else
                      {
                        ERROR_CGDataProviderCreateWithData_BufferIsNotReadable();
                        ERROR_CGDataProviderCreateWithData_BufferIsNotBigEnough();
                      }
                    }

                    else
                    {
                      CGLog(2, "%s - block size = 0", "imageProvider_getBytesAtPosition");
                    }

                    v28 = &v34[v44 * v20 - v22];
                    do
                    {
                      v29 = v37 + v22 - v15;
                      if (v29 >= v5)
                      {
                        v29 = v5;
                      }

                      if (v4 > v42)
                      {
                        v4 = v42;
                      }

                      if (&v4[v29] <= v43)
                      {
                        v30 = v29;
                      }

                      else
                      {
                        v30 = v40 - v4;
                      }

                      memcpy(v4, &v28[v15], v30);
                      v4 += v30;
                      v5 -= v30;
                      v10 += v30;
                      v12 += v30;
                      v15 += v30;
                      if (v15 != v41 || (v15 = 0, ++v14, v41 > v36))
                      {
                        v7 = a1;
                        v9 = v39;
                        goto LABEL_21;
                      }

                      v7 = a1;
                      v9 = v39;
                      if (v22)
                      {
                        break;
                      }

                      v28 += v44;
                    }

                    while (v5 && v14 < v35);
                  }
                }
              }

              while (1)
              {
LABEL_21:
                if (++v11 >= v9 || !v5)
                {
                  if (!v5 || !v12)
                  {
                    return v10;
                  }

                  v11 = 0;
                  v12 = 0;
                }

                v8 = *(v7 + 8);
                if (v8)
                {
                  goto LABEL_9;
                }
              }
            }
          }

          else
          {
            bzero(v4, v5);
          }
        }
      }
    }
  }

  else
  {
    CGPostError("%s: cannot write to a NULL buffer", "imageProvider_getBytesAtPosition");
  }

  return 0;
}

void CGAccessSessionRelease(CGDataProvider **a1)
{
  if (a1)
  {
    CGAccessSessionRewind(a1);
    v2 = *a1;
    CGDataProviderReleaseBytePtr(*a1);
    CGDataProviderReleaseData(v2);
    CGDataProviderUnlock(v2);
    CGDataProviderRelease(v2);

    free(a1);
  }
}

uint64_t CGDataProviderReleaseData(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 128))
    {
      pthread_mutex_lock((result + 184));
      if (atomic_fetch_add_explicit((v1 + 256), 0xFFFFFFFF, memory_order_relaxed) == 1)
      {
        v2 = *(v1 + 136);
        if (v2)
        {
          v2(*(v1 + 24));
        }
      }

      CFRelease(v1);

      return pthread_mutex_unlock((v1 + 184));
    }
  }

  return result;
}

void imageProvider_release_data(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CGImageBlockSetRelease(v2);
    *(a1 + 8) = 0;
  }
}

uint64_t CGDataProviderUnlock(uint64_t a1)
{
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (kCGDataProviderPropertyTrustToken_block_invoke_once != -1)
    {
      dispatch_once(&kCGDataProviderPropertyTrustToken_block_invoke_once, &__block_literal_global_28_6859);
    }

    if (v2 == CGDataProviderGetTypeID_id)
    {
      v3 = *(a1 + 152);
      if (v3)
      {
        v4 = v3(*(a1 + 24));
      }

      else
      {
        if (*(a1 + 80))
        {
          v5 = 0;
          goto LABEL_11;
        }

        v4 = pthread_mutex_unlock((a1 + 184));
      }

      v5 = v4;
LABEL_11:
      CFRelease(a1);
      return v5;
    }
  }

  return 0xFFFFFFFFLL;
}

char *ripc_RenderImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int *a5, uint64_t a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a2 + 81) == 1 && (*(*(a3 + 120) + 7) & 1) != 0)
  {
    *(a1 + 108) = *(a1 + 108) | 0xFF00;
    v12 = -256;
  }

  else
  {
    v12 = 0;
    *(a1 + 108) = *(a1 + 108);
  }

  *(a1 + 108) = v12 | *(a2 + 82);
  v13 = *(a3 + 120);
  *(a1 + 112) = (*(v13 + 4) << 12) >> 28;
  v14 = *(a6 + 16);
  if (*(v14 + 32))
  {
    *(a1 + 104) = (*(v13 + 4) << 16) >> 24;
    v15 = *(v13 + 8);
    *(a1 + 152) = v15;
    v16 = a4[5];
    if (v16 && (v16[12] & 0x40) != 0)
    {
      v28 = *(*v16 + 72);

      return v28();
    }

    else
    {
      v17 = *(a1 + 48);
      v18 = *a4;

      return RIPLayerBltImage(v17, v18, a5, a6, a1 + 104);
    }
  }

  else
  {
    v36 = xmmword_1845629B8;
    v37 = unk_1845629C8;
    v38 = xmmword_1845629D8;
    v32 = xmmword_184562978;
    v33 = unk_184562988;
    v34 = xmmword_184562998;
    v35 = unk_1845629A8;
    v30 = RIPLayerObjectInitializer;
    v31 = unk_184562968;
    v29 = 0;
    v20 = *(a2 + 4);
    if (*a4 || *(v14 + 96) || *(a6 + 24) || *(a6 + 48) || *(a6 + 32) || *(a6 + 8) != *(v14 + 56) || *(a6 + 12) != *(v14 + 60))
    {
      result = RIPLayerCreate(RIPLayer_ripl_class, a5, 0, 0, *(a2 + 4));
      if (!result)
      {
        return result;
      }

      v24 = result;
      *(a1 + 104) = 1;
      *(a1 + 152) = 0x3FF0000000000000;
      RIPLayerBltImage(result, 0, a5, a6, a1 + 104);
    }

    else
    {
      v21 = RIPLayerInitialize(&v30);
      v23 = *(a6 + 16);
      if (v21)
      {
        v24 = &v30;
        RIPLayerReplace(&v30, a6, *(v23 + 64), *(v23 + 72), 0, 0, v22);
        HIDWORD(v31) |= 2u;
      }

      else
      {
        result = RIPLayerCreateWithData(a6, 2, 0, *(v23 + 64), *(v23 + 72), 0, 0, v20);
        v24 = result;
        if (!result)
        {
          return result;
        }
      }
    }

    Color = ripc_GetColor(a1, a2, a3, 2, a5, &v29, (a1 + 152));
    if (Color)
    {
      v26 = Color;
      *(a1 + 104) = (*(*(a3 + 120) + 4) << 16) >> 24;
      v27 = a4[5];
      if (v27 && (v27[12] & 0x10) != 0)
      {
        (*(*v27 + 56))(v27, *(a1 + 48), *a4, a5, v24, v26, &v29, a1 + 104);
      }

      else
      {
        RIPLayerBltShape(*(a1 + 48), *a4, a5, v24, v26, &v29, a1 + 104);
      }

      RIPObjectRelease(v26);
    }

    return (*(*v24 + 24))(v24);
  }
}

uint64_t RIPLayerBltImage(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  v7 = a2;
  v76 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = a4;
  }

  if (a2 && !*(a2 + 72))
  {
    if (*(a2 + 64))
    {
      v44 = (a2 + 12);
      if (v9 == (v7 + 12) || !ripl_IsContained(v9, v44))
      {
        if ((ripl_CreateMask(v7, 0) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else if (!*(a2 + 56) && ripl_IsEnclosed(v9, (a2 + 12)))
    {
      v7 = 0;
    }
  }

  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v10 = *(a1 + 40);
  if (!v10)
  {
    *&v71 = 0;
    v69 = 0uLL;
    v70 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v65 = 0uLL;
    v66 = 0uLL;
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v10 = &v57;
    v57 = 0uLL;
    v58 = 0uLL;
  }

  v47 = 0uLL;
  v48 = 0uLL;
  v45 = 0uLL;
  v46 = 0uLL;
  result = (*(*a1 + 32))(a1, 32, v9);
  if (result)
  {
    if (!*result || !*(*result + 40))
    {
      goto LABEL_30;
    }

    v12 = *(*(a4 + 2) + 32);
    if (!v12)
    {
      v12 = RIPGetDepthForLayerFormat(0);
    }

    if ((*(a1 + 56) || ripl_CreateMask(a1, 1)) && (*v10 = *a5, ripl_BltOpDestination(v10, v9, a1), v13 = *(a4 + 2), v14 = *a4, v15 = a4[1], v16 = a4[2], v17 = a4[3], *(v10 + 1) = 1, *(v10 + 14) = *v9 - v14, *(v10 + 15) = v17 + v15 - (v9[1] + v9[3]), *(v10 + 16) = v16, v18 = *(v13 + 112), *(v10 + 17) = v17, *(v10 + 18) = v18, v19 = *(v13 + 72), v20 = *(v13 + 80), *(v10 + 19) = *(v13 + 64), *(v10 + 20) = v20, v21 = *(v13 + 88), *(v10 + 11) = v19, *(v10 + 12) = v21, ripl_BltOpMask(v10, v9, v7), CGBlt_initialize(v10)))
    {
      *&v47 = *(*(a4 + 2) + 56);
      v22 = *(a4 + 40) | (*(a5 + 4) << 8) | (HIBYTE(*(a5 + 4)) << 16);
      LODWORD(v45) = *v12;
      DWORD1(v45) = v22;
      v23 = *(a5 + 48);
      v24 = 0.0;
      if (v23 >= 0.0)
      {
        v24 = 1.0;
        if (v23 <= 1.0)
        {
          v24 = v23;
        }
      }

      *(&v45 + 2) = v24;
      v25 = *(a4 + 3);
      if (v25)
      {
        v55 = vcvt_hight_f32_f64(vcvt_f32_f64(*v25), v25[1]);
        v56 = vcvt_f32_f64(v25[2]);
        v25 = &v55;
      }

      *(&v46 + 1) = v25;
      v26 = *(a4 + 6);
      if (v26)
      {
        v27 = *(a1 + 24);
        v28 = v27 + *(a1 + 16);
        v29 = *(a1 + 12);
        _D2 = v27;
        v31 = *v26;
        v50 = v31;
        _Q3 = *(v26 + 2);
        v51 = vneg_f32(vcvt_f32_f64(_Q3));
        v33 = *(v26 + 3);
        __asm { FMLA            D5, D2, V3.D[1] }

        *_Q3.f64 = v33;
        v39 = _D5 - v28;
        v52 = LODWORD(_Q3.f64[0]);
        v53 = v39;
        v40 = v29 - (*(v26 + 5) + v33 * v27);
        v54 = v40;
        v26 = &v50;
      }

      *&v46 = v26;
      if (*(a4 + 21))
      {
        *(v10 + 1) = 2;
      }

      v41 = *(a4 + 4);
      if (v41)
      {
        v49 = vcvt_hight_f32_f64(vcvt_f32_f64(*v41), vaddq_f64(*v41, v41[1]));
        v41 = &v49;
      }

      v42 = *(a4 + 2);
      v43 = *(v42 + 96);
      *(&v47 + 1) = v41;
      *&v48 = v43;
      *(&v48 + 1) = *(v42 + 120);
      if (!(*(*a1 + 40))(a1, v10, &v45))
      {
        v9 = 0;
      }
    }

    else
    {
LABEL_30:
      v9 = 0;
    }

    (*(*a1 + 48))(a1, v9);
    return v9 != 0;
  }

  return result;
}

BOOL CGColorTransformConvertRequired(_BOOL8 result, void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
    }

    if (v6 == CGColorTransformGetTypeID_type_id)
    {
      if (CGColorSpaceGetType(a2) - 7 >= 3)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 0x40000000;
        v10[2] = __create_resolved_source_space_block_invoke;
        v10[3] = &__block_descriptor_tmp_36_17670;
        v10[4] = v5;
        ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, v10);
        Cache = CGColorTransformGetCache(v5);
        ConversionType = CGColorTransformCacheGetConversionType(Cache, ResolvedColorSpace, a3);
        CGColorSpaceRelease(ResolvedColorSpace);
        return ConversionType != 3;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *RIPLayerCreate(uint64_t a1, uint64_t *a2, char a3, int *a4, int a5)
{
  v6 = a4;
  if (a2)
  {
    v9 = *(a2 + 2);
    if ((v9 & 0x80000000) != 0)
    {
      return 0;
    }

    v10 = *(a2 + 3);
    if ((v10 & 0x80000000) != 0)
    {
      return 0;
    }

    v11 = *a2;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v39 = v11;
  if (!a4)
  {
    v6 = RIPGetDepthForLayerFormat(0);
  }

  if (v6 != RIPGetDepthForLayerFormat(0))
  {
    if (v9 <= 0x7FFFFE)
    {
      v12 = ((*v6 >> 25) * v9 + 3) & 0x7FFFFFFC;
      v13 = (*v6 >> 2) & 3;
      v14 = ((((HIWORD(*v6) & 0x3F) + 7) >> 3) * v9 + 3) & 0xFFFFFFC;
      v15 = v14 + v12;
      if (v13 != 1)
      {
        v14 = 0;
        v15 = ((*v6 >> 25) * v9 + 3) & 0x7FFFFFFC;
      }

      if (v13 == 2)
      {
        v14 = ((*v6 >> 25) * v9 + 3) & 0x7FFFFFFC;
        v16 = v14;
      }

      else
      {
        v16 = v15;
      }

      v17 = (a3 & 1) != 0 ? v14 : 0;
      v18 = (a3 & 1) != 0 ? v16 : ((*v6 >> 25) * v9 + 3) & 0x7FFFFFFC;
      v19 = v18 * v10;
      v20 = v19 > 0x7FFFFFFB ? 0xFFFFFFFFLL : (v19 + 19) & 0xFFFFFFF0;
      if ((v20 & 0x80000000) == 0)
      {
        v21 = malloc_type_calloc(1uLL, v20, 0xBA0718BDuLL);
        if (v21)
        {
          v38 = a5;
          if (v17)
          {
            v22 = (*v6 >> 2) & 3;
            v23 = &v21[v12 * v10];
            if (v22 != 1)
            {
              v23 = 0;
            }

            v24 = v22 == 2;
            v25 = v21;
            if (v24)
            {
              v26 = v21;
            }

            else
            {
              v26 = v23;
            }
          }

          else
          {
            v25 = v21;
            v26 = 0;
          }

          v37 = v25;
          v30 = initialize_deep_mask(v6) | a3 & 0x3C;
          if (v6[4])
          {
            v28 = v30 | 0x200;
          }

          else
          {
            v28 = v30;
          }

          v36 = v17;
          goto LABEL_44;
        }
      }
    }

    return 0;
  }

  v38 = a5;
  v12 = 0;
  v37 = 0;
  v28 = a3 & 0x3C;
  if (v10 | v9)
  {
    v29 = 12;
  }

  else
  {
    v29 = 0;
  }

  v36 = v29;
  if (v10 | v9)
  {
    v26 = &the_empty_shape;
  }

  else
  {
    v26 = 0;
  }

LABEL_44:
  if ((v28 & 0x10) != 0)
  {
    v31 = 296;
  }

  else
  {
    v31 = 0;
  }

  v32 = (*(a1 + 8))(a1);
  v33 = malloc_type_calloc(1uLL, v31 + v32, 0x29D5F13FuLL);
  v27 = v33;
  *v33 = a1;
  *(v33 + 2) = 1;
  *(v33 + 12) = v39;
  *(v33 + 5) = v9;
  *(v33 + 6) = v10;
  *(v33 + 7) = v28;
  v34 = &v33[v32];
  if ((v28 & 0x10) == 0)
  {
    v34 = 0;
  }

  *(v33 + 4) = v6;
  *(v33 + 5) = v34;
  *(v33 + 12) = v12;
  *(v33 + 13) = v38;
  *(v33 + 7) = v37;
  *(v33 + 16) = v36;
  *(v33 + 9) = v26;
  pthread_mutex_init((v33 + 80), 0);
  return v27;
}

void CGContextSetStyle(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetStyle(*(a1 + 96), a2);
    }

    else
    {
      handle_invalid_context("CGContextSetStyle", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetStyle", 0);
  }
}

uint64_t CGPixelComponentGetBitsPerComponent(int a1)
{
  v3 = a1 - 1;
  if ((a1 - 1) >= 9 || ((0x1DFu >> v3) & 1) == 0)
  {
    _CGHandleAssert("CGPixelComponentGetBitsPerComponent", 38, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "", "Unimplemented", v1, v2);
  }

  return qword_1844E0DA0[v3];
}

uint64_t _blt_image_initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 1) << 8;
  v7 = 4 * (v6 == 512);
  v8 = *(a2 + 32);
  *(a3 + 256) = v8;
  v9 = *(a2 + 24);
  if (v9)
  {
    v10.i32[0] = *v9;
    v11 = vcvtq_f64_f32(*(v9 + 4));
    v10.i32[1] = *(v9 + 12);
    v12 = vcvtq_f64_f32(v10);
    v13 = vmuld_lane_f64(-v11.f64[0], v11, 1) + v12.f64[0] * v12.f64[1];
    if (v13 == 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = 1.0 / v13;
    v15 = (*(a1 + 4) - 1);
    v16 = *(a1 + 8) - 1;
    v17 = vsub_s32(*(a1 + 12), *(a1 + 56));
    v18.i64[0] = v17.i32[0];
    v18.i64[1] = v17.i32[1];
    v19 = vaddq_f64(vcvtq_f64_f32(*(v9 + 16)), vcvtq_f64_s64(v18));
    v20 = vmulq_n_f64(v11, v14);
    v21 = vmulq_n_f64(v12, v14);
    v22.f64[0] = v21.f64[0];
    v22.f64[1] = vnegq_f64(v20).f64[1];
    v23.f64[1] = v21.f64[1];
    v23.f64[0] = -v20.f64[0];
    v24 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v22, HIDWORD(*(a1 + 12)) + 0.5), v23, *(a1 + 12) + 0.5), vmlaq_f64(vmulq_f64(vextq_s8(v19, v19, 8uLL), vnegq_f64(v21)), v19, v20));
    v25 = vcvtq_n_s64_f64(v24, 0x20uLL);
    *(a3 + 96) = vextq_s8(v25, v25, 8uLL);
    *(a3 + 22) = 8224;
    v26 = vcvtq_s64_f64(vmulq_f64(vzip1q_s64(v20, v21), xmmword_18439CED0));
    v27 = v26.i64[1];
    *(a3 + 136) = v26.i64[1];
    v28 = v26.i64[0];
    *(a3 + 120) = v26.i64[0];
    if (!(v26.i32[2] | v26.i32[0]))
    {
      v7 |= 0x20u;
    }

    if (v26.i64[1] >= 0)
    {
      v29 = v26.u64[1];
    }

    else
    {
      v29 = -v26.i64[1];
    }

    if (v26.i64[0] >= 0)
    {
      v30 = v26.i64[0];
    }

    else
    {
      v30 = -v26.i64[0];
    }

    v31 = v29 + v30;
    v32 = *(a2 + 36);
    v33 = v7 | 0x200;
    if (v29 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v29;
    }

    if (v26.i64[0])
    {
      v29 = v34;
    }

    if (!v26.i64[1])
    {
      v29 = v30;
    }

    if (!(v29 >> 34))
    {
      v7 |= 0x2000u;
    }

    if (v32 >= 0x7FFFFFFF)
    {
      v35 = 0x7FFFFFFFLL;
    }

    else
    {
      v35 = v32;
    }

    v36 = v35 << 32;
    if (v32 == 1)
    {
      v7 = v33;
      v37 = 0x100000000;
    }

    else
    {
      v37 = v36;
    }

    if (v31 >= v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = v31;
    }

    if (v38)
    {
      if (v38 < 0x3FFFFFFFFFFFFFFFLL)
      {
        *(a3 + 216) = v38;
        *(a3 + 232) = 0x3FFFFFFFFFFFFFFFLL / v38;
        v39 = v38 >> 1;
        if (v39 <= 0x80000000)
        {
          v39 = 0x80000000;
        }
      }

      else
      {
        *(a3 + 216) = 0x3FFFFFFFFFFFFFFFLL;
        *(a3 + 232) = 1;
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *(a3 + 216) = 0;
      *(a3 + 232) = 0;
      v39 = 0x100000000;
    }

    v58 = v16;
    *(a3 + 224) = v39;
    *(a3 + 56) = v37;
    v51 = v39;
    v59 = v37;
    v60 = *(a2 + 40);
    if (v60)
    {
      v61 = v60[1];
      v62 = v60[3];
      if (v61 < -2147483650.0)
      {
        v61 = -2147483650.0;
      }

      if (v62 > 2147483650.0)
      {
        v62 = 2147483650.0;
      }

      v63 = vcvtd_n_s64_f64(v61, 0x20uLL);
      v59 = vcvtd_n_s64_f64(v62, 0x20uLL);
      if ((v7 & 4) == 0)
      {
        if (v63 < -16777216)
        {
          v63 = 0;
        }

        if ((v37 | 0x1000000) < v59)
        {
          v59 = v37;
        }
      }

      v51 = v63 + v39;
    }

    v64 = vmlaq_n_f64(v24, v23, v15);
    *(a3 + 72) = v51;
    v65 = v59 - v39;
    *(a3 + 88) = v59 - v39;
    v57 = vcvtq_s64_f64(vmulq_f64(vzip2q_s64(v20, v21), xmmword_18439CED0));
    *(a3 + 112) = v57.i64[1];
    *(a3 + 128) = v57.i64[0];
    if (!(v57.i32[2] | v57.i32[0]))
    {
      v7 |= 0x10u;
    }

    if (v57.i64[1] >= 0)
    {
      v66 = v57.u64[1];
    }

    else
    {
      v66 = -v57.i64[1];
    }

    if (v57.i64[0] >= 0)
    {
      v67 = v57.i64[0];
    }

    else
    {
      v67 = -v57.i64[0];
    }

    v68 = v66 + v67;
    v69 = *(a2 + 32);
    v70 = v7 | 0x100;
    if (v66 >= v67)
    {
      v71 = v67;
    }

    else
    {
      v71 = v66;
    }

    if (v57.i64[0])
    {
      v72 = v71;
    }

    else
    {
      v72 = v66;
    }

    if (!v57.i64[1])
    {
      v72 = v67;
    }

    if (!(v72 >> 34))
    {
      v7 |= 0x1000u;
    }

    if (v69 >= 0x7FFFFFFF)
    {
      v73 = 0x7FFFFFFFLL;
    }

    else
    {
      v73 = v69;
    }

    v74 = v73 << 32;
    if (v69 == 1)
    {
      v7 = v70;
      v75 = 0x100000000;
    }

    else
    {
      v75 = v74;
    }

    if (v68 >= v75)
    {
      v76 = v75;
    }

    else
    {
      v76 = v68;
    }

    if (v76)
    {
      if (v76 < 0x3FFFFFFFFFFFFFFFLL)
      {
        *(a3 + 192) = v76;
        *(a3 + 208) = 0x3FFFFFFFFFFFFFFFLL / v76;
        v77 = v76 >> 1;
        if (v77 <= 0x80000000)
        {
          v77 = 0x80000000;
        }
      }

      else
      {
        *(a3 + 192) = 0x3FFFFFFFFFFFFFFFLL;
        *(a3 + 208) = 1;
        v77 = 0x1FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *(a3 + 192) = 0;
      *(a3 + 208) = 0;
      v77 = 0x100000000;
    }

    v78 = vmlaq_n_f64(v64, v22, v58);
    *(a3 + 200) = v77;
    *(a3 + 48) = v75;
    v52 = v77;
    v79 = v75;
    if (v60)
    {
      v80 = *v60;
      v81 = v60[2];
      if (v80 < -2147483650.0)
      {
        v80 = -2147483650.0;
      }

      if (v81 > 2147483650.0)
      {
        v81 = 2147483650.0;
      }

      v82 = vcvtd_n_s64_f64(v80, 0x20uLL);
      v83 = vcvtd_n_s64_f64(v81, 0x20uLL);
      if (v82 >= -16777216)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0;
      }

      if ((v75 | 0x1000000) >= v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = v75;
      }

      if ((v7 & 4) != 0)
      {
        v79 = v83;
      }

      else
      {
        v82 = v84;
        v79 = v85;
      }

      v52 = v82 + v77;
    }

    v46 = vcvtq_n_s64_f64(v78, 0x20uLL);
    *(a3 + 64) = v52;
    *(a3 + 80) = v79 - v77;
    v86 = vmovn_s64(vceqzq_s64(vorrq_s8(v26, v57)));
    v87 = v86.i8[4] | v86.i8[0];
    v40.i64[0] = v75;
    v40.i64[1] = v37;
    v55.i64[0] = v79 - v77;
    v55.i64[1] = v65;
    if (v87)
    {
      if (v57.i64[1] == 0x100000000)
      {
        v88 = 66;
      }

      else
      {
        v88 = 2;
      }

      v89 = v7 | v88;
      if (((v25.i32[2] & 0xF0000000) - 1342177280) >> 29 >= 3)
      {
        v90 = v89;
      }

      else
      {
        v90 = v89 & 0xFFFFEFFF;
      }

      if ((~v7 & 0x1010) != 0)
      {
        v7 = v89;
      }

      else
      {
        v7 = v90;
      }

      if (v27 == 0x100000000)
      {
        v7 |= 0x80u;
      }

      if ((~v7 & 0x2020) == 0 && ((v25.i32[0] & 0xF0000000) - 1342177280) >> 29 < 3)
      {
        v7 &= ~0x2000u;
      }
    }
  }

  else
  {
    v40 = vshll_n_s32(vmin_u32(v8, 0x8000000080000000), 0x20uLL);
    *&v41.f64[0] = 0x8000000080000000;
    *&v41.f64[1] = 0x8000000080000000;
    v42 = vnegq_f64(v41);
    v43 = vorrq_s8(vshll_n_s32(*(a1 + 56), 0x20uLL), v42);
    v25 = vextq_s8(v43, v43, 8uLL);
    *(a3 + 96) = v43;
    *(a3 + 22) = 8224;
    v44 = vdupq_n_s64(0xFFFFFFFF80000000);
    v45 = vaddq_s64(vshll_n_s32(vadd_s32(*(a1 + 4), *(a1 + 56)), 0x20uLL), v44);
    v46 = vextq_s8(v45, v45, 8uLL);
    *(a3 + 128) = 0;
    *(a3 + 136) = 0x100000000;
    *(a3 + 112) = 0x100000000;
    *(a3 + 120) = 0;
    v7 |= 0xF2u;
    *(a3 + 208) = xmmword_18439CEE0;
    *(a3 + 224) = xmmword_18439CEF0;
    *(a3 + 192) = xmmword_18439CF00;
    *(a3 + 48) = v40;
    v47 = *(a2 + 40);
    if (v47)
    {
      v48 = vcvtq_f64_f32(*v47);
      v49 = vdupq_n_s64(0xC1DFFFFFFFC00000);
      v50 = vcvtq_n_s64_f64(vbslq_s8(vcgtq_f64(v49, v48), v49, v48), 0x20uLL);
      v51 = v50.i64[1] + 0x80000000;
      if (v6 == 512)
      {
        v28 = 0;
        a4 = 0;
        v39 = 0x80000000;
        v52 = v50.i64[0] + 0x80000000;
        *(a3 + 64) = v50.i64[0] + 0x80000000;
        *(a3 + 72) = v51;
        v53 = vcvtq_f64_f32(v47[1]);
        v54 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
        v55 = vaddq_s64(vcvtq_n_s64_f64(vbslq_s8(vcgtq_f64(v53, v54), v54, v53), 0x20uLL), vdupq_n_s64(0xFFFFFFFF80000000));
        *(a3 + 80) = v55;
      }

      else
      {
        v28 = 0;
        a4 = 0;
        v91.i64[0] = -16777216;
        v91.i64[1] = -16777216;
        v92 = vcgtq_s64(v91, v50);
        v39 = 0x80000000;
        v50.i64[0] += 0x80000000;
        v50.i64[1] += 0x80000000;
        *&v93.f64[0] = 0x8000000080000000;
        *&v93.f64[1] = 0x8000000080000000;
        v94 = vbslq_s8(v92, vnegq_f64(v93), v50);
        v95 = vcvtq_f64_f32(v47[1]);
        v96 = vdupq_n_s64(0x41DFFFFFFFC00000uLL);
        v97 = vcvtq_n_s64_f64(vbslq_s8(vcgtq_f64(v95, v96), v96, v95), 0x20uLL);
        v55 = vaddq_s64(vbslq_s8(vcgtq_s64(v97, vorrq_s8(v40, vdupq_n_s64(0x1000000uLL))), v40, v97), vdupq_n_s64(0xFFFFFFFF80000000));
        v51 = v94.i64[1];
        *(a3 + 64) = v94;
        *(a3 + 80) = v55;
        v52 = v94.i64[0];
      }

      v57 = xmmword_18439CF10;
      v27 = 0x100000000;
    }

    else
    {
      v28 = 0;
      a4 = 0;
      v55 = vaddq_s64(v40, v44);
      *(a3 + 64) = v42;
      *(a3 + 80) = v55;
      v27 = 0x100000000;
      v57 = xmmword_18439CF10;
      v51 = 0x80000000;
      v52 = 0x80000000;
      v39 = 0x80000000;
    }

    v77 = 0x80000000;
  }

  if (*(a2 + 6) << 16)
  {
    v98 = 0;
  }

  else
  {
    v98 = 0x3FFFFFFF;
  }

  *(a3 + 188) = v98;
  if ((v7 & 2) != 0)
  {
    v99 = vaddvq_s64(v57);
    v100 = v27 + v28;
    v101 = (v27 + v28) >> 1;
    v102 = v99 >> 1 >= 0 ? v25.i64[1] - (v99 >> 1) : v46.i64[1] + (v99 >> 1);
    v103 = v99 >> 1 >= 0 ? v46.i64[1] + (v99 >> 1) : v25.i64[1] - (v99 >> 1);
    v104 = v46.i64[0] + (v100 >> 1);
    v105 = v25.i64[0] - (v100 >> 1);
    v106 = v101 >= 0 ? v25.i64[0] - (v100 >> 1) : v46.i64[0] + (v100 >> 1);
    v107 = v77 + (v77 >> 8);
    v108 = v39 + (v39 >> 8);
    v109 = v52 - v107;
    v110 = v55.i64[0] + v107;
    v111 = v51 - v108;
    v112 = v102 >= v109 && v103 <= v110;
    if (v112 && v106 >= v111)
    {
      if (v101 >= 0)
      {
        v114 = v104;
      }

      else
      {
        v114 = v105;
      }

      v7 |= v114 <= (v55.i64[1] + v108);
    }
  }

  if ((v7 & 4) != 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_148;
    }

    v115 = vmovn_s64(vcgtzq_s64(vbslq_s8(vcgtq_s64(v46, v25), v25, v46)));
    if ((v115.i32[1] & v115.i32[0] & 1) == 0)
    {
      goto LABEL_148;
    }

    v116 = vmovn_s64(vcgtq_s64(vextq_s8(v40, v40, 8uLL), vbslq_s8(vcgtq_s64(v25, v46), v25, v46)));
    if ((v116.i32[1] & v116.i32[0] & 1) == 0)
    {
      goto LABEL_148;
    }

    v7 &= ~4u;
  }

  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
LABEL_148:
  *(a3 + 20) = v7 | 0x20200000;
  v117 = *(a2 + 8);
  *(a3 + 184) = v117;
  v118 = 0.0;
  if (v117 < 0.0 || (v118 = 1.0, v117 > 1.0))
  {
    *(a3 + 184) = v118;
  }

  v119 = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 240) = 0;
  *(a3 + 248) = 0;
  if (a4 && *(a2 + 4))
  {
    v119 = qword_1E6E33190[v7 >> 12];
  }

  *(a3 + 176) = v119;
  v120 = *(a2 + 48);
  if (!v120 || (result = v120(*(a2 + 56), 0, a1 + 88, a1 + 76, a1 + 96, a1 + 80), result != -1))
  {
    *(a3 + 24) = *(a1 + 76);
    *(a3 + 32) = *(a1 + 88);
    return 1;
  }

  return result;
}

void *CGColorTransformConvertNeedsCMS(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
    }

    if (v6 == CGColorTransformGetTypeID_type_id)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 0x40000000;
      v11[2] = __create_resolved_source_space_block_invoke;
      v11[3] = &__block_descriptor_tmp_36_17670;
      v11[4] = v5;
      ResolvedColorSpace = CGColorSpaceCreateResolvedColorSpace(a2, v11);
      Cache = CGColorTransformGetCache(v5);
      ConversionType = CGColorTransformCacheGetConversionType(Cache, ResolvedColorSpace, a3);
      CGColorSpaceRelease(ResolvedColorSpace);
      if (ConversionType)
      {
        v10 = (ConversionType & 0xFFFFFFFD) == 1;
      }

      else
      {
        v10 = 1;
      }

      return !v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CGImageAlphaInfo CGImageGetAlphaInfo(CGImageRef image)
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
      LODWORD(image) = *(v1 + 8) & 0x1F;
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

const CGFloat *__cdecl CGImageGetDecode(const CGFloat *image)
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
      return *(v1 + 20);
    }

    else
    {
      return 0;
    }
  }

  return image;
}

CGBitmapInfo CGImageGetBitmapInfo(CGImageRef image)
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
      LODWORD(image) = *(v1 + 8);
    }

    else
    {
      LODWORD(image) = 0;
    }
  }

  return image;
}

int8x16_t img_stream_stage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 16) = img_raw_read;
  *(a1 + 24) = img_decode_end;
  v3 = 48;
  if ((*(a2 + 28) - 3) >= 3)
  {
    v3 = 0;
  }

  v4 = 8;
  v5 = *(a2 + v3);
  if ((*(a2 + 28) - 3) < 3)
  {
    v4 = 56;
  }

  *(a1 + 48) = v5;
  *(a1 + 52) = *(a2 + v4);
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = *(*(v6 + 24) + 48);
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a2 + 120);
  v9 = **(a2 + 112);
  *(a1 + 36) = v7;
  *(a1 + 40) = HIWORD(v9) & 0x3F;
  *(a1 + 44) = *(a2 + 24);
  v10 = *(a2 + 128);
  *(a1 + 120) = v5;
  *(a1 + 128) = v7;
  result = vextq_s8(*(a2 + 136), *(a2 + 136), 8uLL);
  *(a1 + 136) = result;
  *(a1 + 152) = v8;
  *(a1 + 184) = a3;
  *(a1 + 96) = v10;
  *(a1 + 104) = ((v9 >> 22) * v5 + 7) >> 3;
  return result;
}

void *get_access_session(uint64_t a1)
{
  if (*(a1 + 96))
  {
    return 0;
  }

  result = *(a1 + 184);
  if (!result)
  {
    result = CGAccessSessionCreate(*(a1 + 144));
    if (result)
    {
      v3 = result[1];
      *(a1 + 184) = result;
      *(a1 + 192) = v3;
      *(a1 + 88) = 0;
    }
  }

  return result;
}

unint64_t provider_for_destination_get_bytes_at_position_inner(uint64_t *a1, char *a2, unint64_t a3, unint64_t a4, int a5)
{
  v116 = *MEMORY[0x1E69E9840];
  if ((a3 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_for_destination_get_bytes_at_position_inner", 573, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "pos >= 0", "position = %lld", a3);
  }

  v8 = a1[91];
  v9 = a1[92];
  v100 = a1[94];
  v101 = a1[93];
  memcpy(__dst, a1 + 4, 0x130uLL);
  BitsPerPixel = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  memcpy(__dst, a1 + 45, 0x130uLL);
  v11 = CGBitmapPixelInfoGetBitsPerPixel(__dst);
  __dst[1] = 0;
  *&__dst[3] = 0u;
  __dst[0] = v8;
  __dst[2] = 1;
  v12 = *(a1 + 180);
  LODWORD(__dst[4]) = v12;
  memcpy(&__dst[5], a1 + 4, 0x130uLL);
  if (a1[9])
  {
    __dst[10] = &__dst[11];
  }

  __src[0] = 0u;
  __src[1] = 1uLL;
  *&__src[2] = v12;
  memcpy(&__src[2] + 8, a1 + 45, 0x130uLL);
  if (a1[50])
  {
    *&__src[5] = &__src[5] + 8;
  }

  if (a1[1] >= 8 * a4 / v11)
  {
    v13 = 8 * a4 / v11;
  }

  else
  {
    v13 = a1[1];
  }

  v14 = destination_position_to_source_position(v11, a1[83], a1[84], BitsPerPixel, a1[42], a3);
  if ((v14 & 0x8000000000000000) != 0)
  {
    _CGHandleAssert("provider_for_destination_get_bytes_with_work_buffer", 456, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "src_pos >= 0", "source position (%lld) may not be negative", v14);
  }

  if (!a1[87] && !a1[86] && !a1[89])
  {
    v8 = a2;
    __dst[0] = a2;
  }

  v15 = *a1;
  v16 = byte_count_to_byte_count(v11, a1[83], a1[84], a1[85], BitsPerPixel, a1[42], a4);
  v17 = v16;
  if (v16 > v9)
  {
    CGPostError("%s: bytes_to_read %zd > interim_buffer_size %zd", "provider_for_destination_get_bytes_with_work_buffer", v16, v9);
    _CGHandleAssert("provider_for_destination_get_bytes_with_work_buffer", 474, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "bytes_to_read <= interim_buffer_size", "read size (%lu) exceeds interim space to store the data (%lu)", v17, v9);
  }

  if (v14)
  {
    v18 = a1[42];
    if (v18)
    {
      if (v14 / v18 == a1[2] - 1)
      {
        v17 = (v13 * BitsPerPixel + 7) >> 3;
      }
    }
  }

  BytesAtPositionInternal = CGDataProviderGetBytesAtPositionInternal(v15, *(a1 + 724), v8, v14, v17);
  v21 = BytesAtPositionInternal;
  if (BytesAtPositionInternal > v17)
  {
    _CGHandleAssert("provider_for_destination_get_bytes_with_work_buffer", 487, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "bytes_read <= bytes_to_read", "read size (%lu) exceeds space to store the data (%lu)", BytesAtPositionInternal, v17);
  }

  v22 = 8 * BytesAtPositionInternal / BitsPerPixel;
  if (v13 < v22)
  {
    v22 = v13;
  }

  if (v17 == BytesAtPositionInternal)
  {
    v23 = v13;
  }

  else
  {
    v23 = v22;
  }

  if (!v23)
  {
    goto LABEL_230;
  }

  *(&__src[0] + 1) = v23;
  __dst[1] = v23;
  if (*(a1 + 725) != 1)
  {
    goto LABEL_225;
  }

  v24 = *(a1 + 8);
  v25 = *(a1 + 14);
  v26 = __dst[0];
  if (v25 == 9)
  {
    v27 = 3;
    goto LABEL_31;
  }

  if (v25 == 8)
  {
    v27 = 1;
LABEL_31:
    v28 = v25 - 1;
    v25 = v27;
LABEL_32:
    v29 = qword_1844E0DE8[v28];
    goto LABEL_33;
  }

  v28 = v25 - 1;
  if ((v25 - 1) <= 8)
  {
    goto LABEL_32;
  }

  v29 = 0;
LABEL_33:
  v30 = *(a1 + 15);
  v31 = v29 + a1[6];
  if (v24 <= 3)
  {
    if (v24 == 1)
    {
      switch(v31)
      {
        case 5:
          v65 = 0;
          v66 = vdupq_n_s64(v23 - 1);
          v67 = (__dst[0] + 4 * (v25 == 5) + 40);
          do
          {
            v68 = vdupq_n_s64(v65);
            v69 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_18439C670)));
            if (vuzp1_s8(vuzp1_s16(v69, *v66.i8), *v66.i8).u8[0])
            {
              *(v67 - 40) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v69, *&v66), *&v66).i8[1])
            {
              *(v67 - 35) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_18439C760)))), *&v66).i8[2])
            {
              *(v67 - 30) = -1;
              *(v67 - 25) = -1;
            }

            v70 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_18439C750)));
            if (vuzp1_s8(*&v66, vuzp1_s16(v70, *&v66)).i32[1])
            {
              *(v67 - 20) = -1;
            }

            if (vuzp1_s8(*&v66, vuzp1_s16(v70, *&v66)).i8[5])
            {
              *(v67 - 15) = -1;
            }

            if (vuzp1_s8(*&v66, vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_18439C740))))).i8[6])
            {
              *(v67 - 10) = -1;
              *(v67 - 5) = -1;
            }

            v71 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_18439C730)));
            if (vuzp1_s8(vuzp1_s16(v71, *v66.i8), *v66.i8).u8[0])
            {
              *v67 = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v71, *&v66), *&v66).i8[1])
            {
              v67[5] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_18439C720)))), *&v66).i8[2])
            {
              v67[10] = -1;
              v67[15] = -1;
            }

            v72 = vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_18439C710)));
            if (vuzp1_s8(*&v66, vuzp1_s16(v72, *&v66)).i32[1])
            {
              v67[20] = -1;
            }

            if (vuzp1_s8(*&v66, vuzp1_s16(v72, *&v66)).i8[5])
            {
              v67[25] = -1;
            }

            if (vuzp1_s8(*&v66, vuzp1_s16(*&v66, vmovn_s64(vcgeq_u64(v66, vorrq_s8(v68, xmmword_18439C700))))).i8[6])
            {
              v67[30] = -1;
              v67[35] = -1;
            }

            v65 += 16;
            v67 += 80;
          }

          while (((v23 + 15) & 0xFFFFFFFFFFFFFFF0) != v65);
          break;
        case 4:
          v58 = (v30 & 0xFFFFBFFF) == 0 && v25 == 5;
          *src = __dst[0];
          *&src[8] = 1;
          v59 = v30 == 0x2000 && v25 == 6;
          *&src[16] = v23;
          *&src[24] = 4 * v23;
          if (v59)
          {
            v58 = 1;
          }

          *dest = __dst[0];
          *&dest[8] = 1;
          *&dest[16] = v23;
          *&dest[24] = 4 * v23;
          if (v58)
          {
            v60 = 1;
          }

          else
          {
            v60 = 8;
          }

          vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, src, dest, v60, 0x10u);
          break;
        case 2:
          v44 = 0;
          v45 = vdupq_n_s64(v23 - 1);
          if (v25 == 5)
          {
            v26 = __dst[0] + 1;
          }

          v46 = (v26 + 16);
          do
          {
            v47 = vdupq_n_s64(v44);
            v48 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_18439C670)));
            if (vuzp1_s8(vuzp1_s16(v48, *v45.i8), *v45.i8).u8[0])
            {
              *(v46 - 16) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v48, *&v45), *&v45).i8[1])
            {
              *(v46 - 14) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_18439C760)))), *&v45).i8[2])
            {
              *(v46 - 12) = -1;
              *(v46 - 10) = -1;
            }

            v49 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_18439C750)));
            if (vuzp1_s8(*&v45, vuzp1_s16(v49, *&v45)).i32[1])
            {
              *(v46 - 8) = -1;
            }

            if (vuzp1_s8(*&v45, vuzp1_s16(v49, *&v45)).i8[5])
            {
              *(v46 - 6) = -1;
            }

            if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_18439C740))))).i8[6])
            {
              *(v46 - 4) = -1;
              *(v46 - 2) = -1;
            }

            v50 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_18439C730)));
            if (vuzp1_s8(vuzp1_s16(v50, *v45.i8), *v45.i8).u8[0])
            {
              *v46 = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v50, *&v45), *&v45).i8[1])
            {
              v46[2] = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_18439C720)))), *&v45).i8[2])
            {
              v46[4] = -1;
              v46[6] = -1;
            }

            v51 = vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_18439C710)));
            if (vuzp1_s8(*&v45, vuzp1_s16(v51, *&v45)).i32[1])
            {
              v46[8] = -1;
            }

            if (vuzp1_s8(*&v45, vuzp1_s16(v51, *&v45)).i8[5])
            {
              v46[10] = -1;
            }

            if (vuzp1_s8(*&v45, vuzp1_s16(*&v45, vmovn_s64(vcgeq_u64(v45, vorrq_s8(v47, xmmword_18439C700))))).i8[6])
            {
              v46[12] = -1;
              v46[14] = -1;
            }

            v44 += 16;
            v46 += 32;
          }

          while (((v23 + 15) & 0xFFFFFFFFFFFFFFF0) != v44);
          break;
        default:
          _CGHandleAssert("overwrite_alpha_8bit", 146, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented");
      }

      goto LABEL_225;
    }

    if (v24 == 2)
    {
      if (v31 != 5)
      {
        if (v31 != 4)
        {
          if (v31 != 2)
          {
            _CGHandleAssert("overwrite_alpha_16bitInteger", 215, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented");
          }

          v32 = 0;
          v33 = vdupq_n_s64(v23 - 1);
          v34 = (__dst[0] + 2 * (v25 == 5) + 16);
          do
          {
            v35 = vdupq_n_s64(v32);
            v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_18439C670)));
            if (vuzp1_s8(vuzp1_s16(v36, *v33.i8), *v33.i8).u8[0])
            {
              *(v34 - 8) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(v36, *&v33), *&v33).i8[1])
            {
              *(v34 - 6) = -1;
            }

            if (vuzp1_s8(vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_18439C760)))), *&v33).i8[2])
            {
              *(v34 - 4) = -1;
              *(v34 - 2) = -1;
            }

            v37 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_18439C750)));
            if (vuzp1_s8(*&v33, vuzp1_s16(v37, *&v33)).i32[1])
            {
              *v34 = -1;
            }

            if (vuzp1_s8(*&v33, vuzp1_s16(v37, *&v33)).i8[5])
            {
              v34[2] = -1;
            }

            if (vuzp1_s8(*&v33, vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_18439C740))))).i8[6])
            {
              v34[4] = -1;
              v34[6] = -1;
            }

            v32 += 8;
            v34 += 16;
          }

          while (((v23 + 7) & 0xFFFFFFFFFFFFFFF8) != v32);
          goto LABEL_225;
        }

        *&backgroundColor = -1;
        *permuteMap = 50462976;
        *src = __dst[0];
        *&src[8] = 1;
        *&src[16] = v23;
        *&src[24] = 4 * v23;
        *dest = __dst[0];
        *&dest[8] = 1;
        if (v25 == 5)
        {
          v63 = 1;
        }

        else
        {
          v63 = 8;
        }

        *&dest[16] = v23;
        *&dest[24] = 4 * v23;
LABEL_155:
        vImagePermuteChannelsWithMaskedInsert_ARGB16U(src, dest, permuteMap, v63, &backgroundColor, 0x10u);
        goto LABEL_225;
      }

      v78 = 0;
      v79 = vdupq_n_s64(v23 - 1);
      v80 = (__dst[0] + 8 * (v25 == 5) + 40);
      do
      {
        v81 = vdupq_n_s64(v78);
        v82 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_18439C670)));
        if (vuzp1_s8(vuzp1_s16(v82, *v79.i8), *v79.i8).u8[0])
        {
          *(v80 - 20) = -1;
        }

        if (vuzp1_s8(vuzp1_s16(v82, *&v79), *&v79).i8[1])
        {
          *(v80 - 15) = -1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v79, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_18439C760)))), *&v79).i8[2])
        {
          *(v80 - 10) = -1;
          *(v80 - 5) = -1;
        }

        v83 = vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_18439C750)));
        if (vuzp1_s8(*&v79, vuzp1_s16(v83, *&v79)).i32[1])
        {
          *v80 = -1;
        }

        if (vuzp1_s8(*&v79, vuzp1_s16(v83, *&v79)).i8[5])
        {
          v80[5] = -1;
        }

        if (vuzp1_s8(*&v79, vuzp1_s16(*&v79, vmovn_s64(vcgeq_u64(v79, vorrq_s8(v81, xmmword_18439C740))))).i8[6])
        {
          v80[10] = -1;
          v80[15] = -1;
        }

        v78 += 8;
        v80 += 40;
      }

      while (((v23 + 7) & 0xFFFFFFFFFFFFFFF8) != v78);
      goto LABEL_225;
    }

LABEL_241:
    _CGHandleAssert("overwrite_alpha", 409, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented");
  }

  if (v24 == 4)
  {
    switch(v31)
    {
      case 5:
        v73 = 0;
        v20.i32[0] = 1132462080;
        if (v30 != 0x4000)
        {
          *v20.i32 = 1.0;
        }

        v74 = vdupq_n_s64(v23 - 1);
        v75 = (__dst[0] + 16 * (v25 == 5) + 40);
        do
        {
          v76 = vdupq_n_s64(v73);
          v77 = vmovn_s64(vcgeq_u64(v74, vorrq_s8(v76, xmmword_18439C670)));
          if (vuzp1_s16(v77, v20).u8[0])
          {
            *(v75 - 10) = v20.i32[0];
          }

          if (vuzp1_s16(v77, v20).i8[2])
          {
            *(v75 - 5) = v20.i32[0];
          }

          if (vuzp1_s16(v20, vmovn_s64(vcgeq_u64(v74, vorrq_s8(v76, xmmword_18439C760)))).i32[1])
          {
            *v75 = v20.i32[0];
            v75[5] = v20.i32[0];
          }

          v73 += 4;
          v75 += 20;
        }

        while (((v23 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v73);
        break;
      case 4:
        v61 = 256.0;
        *src = __dst[0];
        *&src[8] = 1;
        if (v30 != 0x4000)
        {
          v61 = 1.0;
        }

        *&src[16] = v23;
        *&src[24] = 4 * v23;
        *dest = __dst[0];
        *&dest[8] = 1;
        *&dest[16] = v23;
        *&dest[24] = 4 * v23;
        if (v25 == 5)
        {
          v62 = 1;
        }

        else
        {
          v62 = 8;
        }

        vImageOverwriteChannelsWithScalar_ARGBFFFF(v61, src, dest, v62, 0x10u);
        break;
      case 2:
        v52 = 0;
        v20.i32[0] = 1132462080;
        if (v30 != 0x4000)
        {
          *v20.i32 = 1.0;
        }

        v53 = vdupq_n_s64(v23 - 1);
        v54 = (__dst[0] + 4 * (v25 == 5) + 16);
        do
        {
          v55 = vdupq_n_s64(v52);
          v56 = vmovn_s64(vcgeq_u64(v53, vorrq_s8(v55, xmmword_18439C670)));
          if (vuzp1_s16(v56, v20).u8[0])
          {
            *(v54 - 4) = v20.i32[0];
          }

          if (vuzp1_s16(v56, v20).i8[2])
          {
            *(v54 - 2) = v20.i32[0];
          }

          if (vuzp1_s16(v20, vmovn_s64(vcgeq_u64(v53, vorrq_s8(v55, xmmword_18439C760)))).i32[1])
          {
            *v54 = v20.i32[0];
            v54[2] = v20.i32[0];
          }

          v52 += 4;
          v54 += 8;
        }

        while (((v23 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v52);
        break;
      default:
        _CGHandleAssert("overwrite_alpha_32bitFloat", 385, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented");
    }

    goto LABEL_225;
  }

  if (v24 != 5)
  {
    goto LABEL_241;
  }

  switch(v31)
  {
    case 5:
      v84 = 0;
      v20.i16[0] = 23552;
      if (v30 != 12288)
      {
        v20.i16[0] = COERCE_UNSIGNED_INT(1.0);
      }

      v85 = vdupq_n_s64(v23 - 1);
      v86 = (__dst[0] + 8 * (v25 == 5) + 40);
      do
      {
        v87 = vdupq_n_s64(v84);
        v88 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(v87, xmmword_18439C670)));
        if (vuzp1_s8(vuzp1_s16(v88, v20), v20).u8[0])
        {
          *(v86 - 20) = v20.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v88, v20), *&v20).i8[1])
        {
          *(v86 - 15) = v20.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v20, vmovn_s64(vcgeq_u64(v85, vorrq_s8(v87, xmmword_18439C760)))), *&v20).i8[2])
        {
          *(v86 - 10) = v20.i16[0];
          *(v86 - 5) = v20.i16[0];
        }

        v89 = vmovn_s64(vcgeq_u64(v85, vorrq_s8(v87, xmmword_18439C750)));
        if (vuzp1_s8(*&v20, vuzp1_s16(v89, v20)).i32[1])
        {
          *v86 = v20.i16[0];
        }

        if (vuzp1_s8(*&v20, vuzp1_s16(v89, v20)).i8[5])
        {
          v86[5] = v20.i16[0];
        }

        if (vuzp1_s8(*&v20, vuzp1_s16(v20, vmovn_s64(vcgeq_u64(v85, vorrq_s8(v87, xmmword_18439C740))))).i8[6])
        {
          v86[10] = v20.i16[0];
          v86[15] = v20.i16[0];
        }

        v84 += 8;
        v86 += 40;
      }

      while (((v23 + 7) & 0xFFFFFFFFFFFFFFF8) != v84);
      break;
    case 4:
      *&backgroundColor = -1;
      v64 = 23552;
      if (v30 != 12288)
      {
        v64 = COERCE_UNSIGNED_INT(1.0);
      }

      LOWORD(backgroundColor) = v64;
      WORD3(backgroundColor) = v64;
      *permuteMap = 50462976;
      *src = __dst[0];
      *&src[8] = 1;
      *&src[16] = v23;
      *&src[24] = 4 * v23;
      *dest = __dst[0];
      *&dest[8] = 1;
      *&dest[16] = v23;
      *&dest[24] = 4 * v23;
      if (v25 == 5)
      {
        v63 = 1;
      }

      else
      {
        v63 = 8;
      }

      goto LABEL_155;
    case 2:
      v38 = 0;
      v20.i16[0] = 23552;
      if (v30 != 12288)
      {
        v20.i16[0] = COERCE_UNSIGNED_INT(1.0);
      }

      v39 = vdupq_n_s64(v23 - 1);
      v40 = (__dst[0] + 2 * (v25 == 5) + 16);
      do
      {
        v41 = vdupq_n_s64(v38);
        v42 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v41, xmmword_18439C670)));
        if (vuzp1_s8(vuzp1_s16(v42, v20), v20).u8[0])
        {
          *(v40 - 8) = v20.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v42, v20), *&v20).i8[1])
        {
          *(v40 - 6) = v20.i16[0];
        }

        if (vuzp1_s8(vuzp1_s16(v20, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v41, xmmword_18439C760)))), *&v20).i8[2])
        {
          *(v40 - 4) = v20.i16[0];
          *(v40 - 2) = v20.i16[0];
        }

        v43 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v41, xmmword_18439C750)));
        if (vuzp1_s8(*&v20, vuzp1_s16(v43, v20)).i32[1])
        {
          *v40 = v20.i16[0];
        }

        if (vuzp1_s8(*&v20, vuzp1_s16(v43, v20)).i8[5])
        {
          v40[2] = v20.i16[0];
        }

        if (vuzp1_s8(*&v20, vuzp1_s16(v20, vmovn_s64(vcgeq_u64(v39, vorrq_s8(v41, xmmword_18439C740))))).i8[6])
        {
          v40[4] = v20.i16[0];
          v40[6] = v20.i16[0];
        }

        v38 += 8;
        v40 += 16;
      }

      while (((v23 + 7) & 0xFFFFFFFFFFFFFFF8) != v38);
      break;
    default:
      _CGHandleAssert("overwrite_alpha_16bitFloat", 302, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestination.c", "", "Unimplemented");
  }

LABEL_225:
  *&__src[0] = a2;
  v90 = a1[86];
  if (v90)
  {
    v91 = *(a1 + 99);
    v113 = *(a1 + 97);
    v92 = a1[88];
    v93 = a1[95];
    v94 = *(a1 + 192);
    v114 = v91;
    v115 = *(a1 + 101);
    v95 = a1[3];
    v96 = *(a1 + 180);
    v97 = a1[87];
    *&backgroundColor = v92;
    *(&backgroundColor + 1) = v101;
    v110 = v100;
    v111 = v93;
    v112 = v94;
    memcpy(src, __dst, sizeof(src));
    memcpy(dest, __src, sizeof(dest));
    if ((CGColorTransformConvertUsingCMSConverter(v90, v95, v96, v97, &backgroundColor, src, dest) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v98 = a1[89];
    if (v98)
    {
      memcpy(src, __dst, sizeof(src));
      memcpy(dest, __src, sizeof(dest));
      if (!vImageConverterConvert(v98, src, dest, v101))
      {
        return 0;
      }
    }
  }

LABEL_230:
  if (v17 == v21)
  {
    result = a4;
  }

  else
  {
    result = (v23 * v11 + 7) >> 3;
  }

  if (a5)
  {
    a1[44] += v21;
    a1[85] += result;
  }

  return result;
}

unint64_t byte_count_to_byte_count(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (!a2)
  {
    _CGHandleAssert("byte_count_to_byte_count", 23, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/DataManagers/CGDataProviderForDestinationUtils.c", "input_bytes_per_row != 0", "0 rowBytes", a6, a7, v7, v8);
  }

  if (a7)
  {
    if (a6)
    {
      if (a7 >= a2)
      {
        v9 = a7 / a2;
      }

      else
      {
        v9 = 0;
      }

      v10 = a7 - v9 * a2;
      v11 = a3 - a4 % a2;
      if (a3 <= a4 % a2)
      {
        v12 = 0;
        v11 = 0;
      }

      else
      {
        v12 = (8 * v11 / a1 * a5 + 7) >> 3;
      }

      if (v10 < v11)
      {
        v12 = 0;
        v11 = 0;
      }

      return v10 + v9 * a6 + v12 - v11;
    }

    else if (a5 != a1)
    {
      return (8 * a5 * a7 / a1 + 7) >> 3;
    }
  }

  return a7;
}

uint64_t img_raw_read(uint64_t a1, int a2, uint64_t a3, void **a4, int *a5)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v7 = a3;
    if (a3 >= 1)
    {
      v11 = *(a1 + 96);
      v12 = *(a1 + 144);
      v13 = *(a1 + 152);
      if (v11 == -1)
      {
        v23 = *(a1 + 184);
        if (!v23)
        {
          v24 = img_blocks_create(*(a1 + 144), 0, *(a1 + 152), 0);
          if (!v24)
          {
            return 0xFFFFFFFFLL;
          }

          v23 = v24;
          *(a1 + 184) = v24;
          *(a1 + 88) = 0;
        }

        v25 = v7 + a2;
        v26 = *(v23 + 15);
        v27 = *(v23 + 17) + v26;
        if (v26 >= v7 + a2 || v27 <= a2)
        {
          return 0;
        }

        v42 = v27 >= v25;
        v29 = v27 - v25;
        if (!v42)
        {
          v7 = v29 + v7;
          if (v7 < 1)
          {
            return 0;
          }
        }

        *(a1 + 88) = a2;
        v134 = 0;
        v135 = a2;
        v136 = *(a1 + 120);
        v137 = v7;
        if (*(v23 + 10) >= 1)
        {
          v30 = 0;
          for (i = 0; i < *(v23 + 10); ++i)
          {
            v132 = 0;
            *v133 = 0;
            v131 = 0uLL;
            v131 = *(v23[9] + v30);
            if (CGSBoundsIntersection(&v134, &v131, &v132))
            {
              v32 = SHIDWORD(v132) - v135;
              v33 = *a5;
              v34 = v32 * v33;
              if (v32 * v33 != v32 * v33)
              {
                return 0;
              }

              if ((v34 & 0x80000000) != 0)
              {
                return 0;
              }

              v35 = v23[4];
              if (v35 != v35)
              {
                return 0;
              }

              v36 = v35 * (v132 - v134);
              if ((v36 - 0x80000000) < 0xFFFFFFFF00000000)
              {
                return 0;
              }

              v37 = v35 * v133[0];
              if (v37 != v37)
              {
                return 0;
              }

              v38 = *(v23[10] + 8 * i);
              v39 = *a4 + v34;
              if (v38)
              {
                v40 = *(v23[11] + 8 * i);
                v41 = v40 * (SHIDWORD(v132) - SDWORD1(v131));
                v42 = v41 == v41 && (v40 - 0x80000000) >= 0xFFFFFFFF00000000;
                if (!v42)
                {
                  return 0;
                }

                if ((v41 & 0x80000000) != 0)
                {
                  return 0;
                }

                v43 = v35 * (v132 - v131);
                if (v43 != v43 || (v43 & 0x80000000) != 0)
                {
                  return 0;
                }

                v44 = v38 + v41;
                v45 = *(a1 + 112);
                if (v45)
                {
                  CGBlt_swapBytes(v37, v133[1], (v44 + v43), &v39[v36], v40, v33, v45);
                }

                else if (v23[6] == v23[5] && v40 == v33)
                {
                  if (v40 * v133[1] != v40 * v133[1])
                  {
                    return 0;
                  }

                  memcpy(&v39[v36], (v44 + v43), v40 * v133[1]);
                }

                else
                {
                  CGBlt_copyBytes(v37, v133[1], (v44 + v43), &v39[v36], v40, v33);
                }
              }

              else
              {
                CGBlt_fillBytes(v37, v133[1], 0, &v39[v36], *a5);
              }
            }

            v30 += 16;
          }
        }

LABEL_185:
        v100 = *(a1 + 88) + v7;
        goto LABEL_186;
      }

      if (!v11)
      {
        if (v11)
        {
          _CGHandleAssert("img_raw_read_with_data_provider", 504, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGSImage.c", "stage->param[IMG_DECODE_NDATA] == 0", "param = %ld", *(a1 + 96));
        }

        image_pointer = get_image_pointer(a1);
        if (image_pointer)
        {
          v15 = *(a1 + 104);
          v16 = *(a1 + 136);
          v17 = *a5;
          if (*a5 >= v16)
          {
            v18 = *(a1 + 136);
          }

          else
          {
            v18 = *a5;
          }

          if (v18 >= v15)
          {
            v19 = *(a1 + 104);
          }

          else
          {
            v19 = v18;
          }

          if (v15 <= 0)
          {
            v20 = v18;
          }

          else
          {
            v20 = v19;
          }

          *(a1 + 88) = a2;
          v21 = v16 * a2;
          if (v21 == v21 && (v21 & 0x80000000) == 0 && v16 >= 1)
          {
            v22 = *(a1 + 112);
            if (v22)
            {
              CGBlt_swapBytes(v20, v7, (image_pointer + v21), *a4, v16, v17, v22);
LABEL_140:
              v78 = v7;
LABEL_141:
              v100 = *(a1 + 88) + v78;
LABEL_186:
              *(a1 + 88) = v100;
              return v7;
            }

            if (v17 != v16)
            {
              CGBlt_copyBytes(v20, v7, (image_pointer + v21), *a4, v16, v17);
              goto LABEL_140;
            }

            v99 = v16 * v7;
            if (!HIDWORD(v99))
            {
              memcpy(*a4, (image_pointer + v21), v99);
              goto LABEL_140;
            }
          }

          return 0;
        }

        access_session = get_access_session(a1);
        v68 = *(a1 + 104);
        v69 = *(a1 + 136);
        v70 = *a5;
        if (*a5 >= v69)
        {
          v71 = *(a1 + 136);
        }

        else
        {
          v71 = *a5;
        }

        if (v71 >= v68)
        {
          v72 = *(a1 + 104);
        }

        else
        {
          v72 = v71;
        }

        if (v68 > 0)
        {
          v71 = v72;
        }

        v73 = *(a1 + 88);
        if (v73 <= a2)
        {
          if (v73 >= a2)
          {
LABEL_98:
            if (v70 == v69)
            {
              v75 = v69;
            }

            else
            {
              v75 = v71;
            }

            ChunksAtPosition = CGAccessSessionGetChunksAtPosition(access_session, v69 * a2, v75, v69 - v75, v7, *a4, v70 - v75);
            v7 = (ChunksAtPosition / v69);
            if (v68 >= 1)
            {
              if (ChunksAtPosition - v7 * v69 < (v68 & 0x7FFFFFFF))
              {
                v7 = v7;
              }

              else
              {
                v7 = (v7 + 1);
              }
            }

            v77 = *(a1 + 112);
            if (v77)
            {
              CGBlt_swapBytes(v75, v7, *a4, *a4, *a5, *a5, v77);
            }

            v78 = v7;
            goto LABEL_141;
          }
        }

        else
        {
          v73 = 0;
        }

        if (v73 >= a2)
        {
          v74 = 0;
        }

        else
        {
          v74 = a2;
        }

        *(a1 + 88) = v74;
        goto LABEL_98;
      }

      if (v13)
      {
        v46 = *(a1 + 136);
        v127 = *(a1 + 144);
        v128 = *(a1 + 128);
        v47 = *(a1 + 40);
        if (v47 >= 0)
        {
          v48 = *(a1 + 40);
        }

        else
        {
          v48 = v47 + 7;
        }

        v49 = a3 + a2;
        v50 = v13[1];
        v51 = v13[3] + v50;
        *(a1 + 88) = a2;
        if (v51 <= a2 || v49 <= v50)
        {
          v50 = 0;
          v49 = 0;
          v129 = 0;
          v53 = 0;
        }

        else
        {
          if (v51 < v49)
          {
            v49 = v51;
          }

          v79 = a2 - v50;
          v80 = v50 - a2;
          v81 = v50 <= a2;
          if (v50 <= a2)
          {
            v50 = a2;
            v80 = 0;
          }

          v129 = v80;
          if (v81)
          {
            v53 = v79;
          }

          else
          {
            v53 = 0;
          }
        }

        v82 = v11 == 2 && a4[1] && (*(a1 + 44) & 0xFFFFFFFE) == 8;
        v83 = (v49 - v50);
        if (v83 != a3 || *(a1 + 120) != v13[2])
        {
          v84 = v53;
          v85 = (v49 - v50);
          if (v82)
          {
            CGBlt_fillBytes(a5[1], a3, 0, a4[1], a5[1]);
          }

          CGBlt_fillBytes(*a5, v7, 0, *a4, *a5);
          v83 = v85;
          v53 = v84;
        }

        v86 = v48 >> 3;
        v87 = *(a1 + 112);
        if (v82)
        {
          v88 = v46[1];
          v89 = v53 * v88;
          if (v89 != v89)
          {
            return 0;
          }

          if ((v89 & 0x80000000) != 0)
          {
            return 0;
          }

          v90 = a5[1];
          v91 = v129 * v90;
          if (v91 != v91)
          {
            return 0;
          }

          if ((v91 & 0x80000000) != 0)
          {
            return 0;
          }

          v92 = *v13 * v86;
          if (v92 != v92)
          {
            return 0;
          }

          if ((v92 & 0x80000000) != 0)
          {
            return 0;
          }

          v93 = v13[2] * v86;
          if (v93 != v93)
          {
            return 0;
          }

          v94 = v127[1];
          v95 = a4[1] + v91;
          if (v47 >= 16 && v87)
          {
            v96 = v83;
            v97 = v53;
            v98 = v48 >> 3;
            CGBlt_swapBytes(v93, v83, (v94 + v89), &v95[v92], v88, v90, *(a1 + 112));
          }

          else
          {
            if ((v88 & 0x80000000) == 0 && v88 == v90)
            {
              v103 = v88 * v83;
              if (v103 != v103)
              {
                return 0;
              }

              v104 = v53;
              v105 = v83;
              memcpy(&v95[v92], (v94 + v89), v103);
              v83 = v105;
              v53 = v104;
              v86 = v48 >> 3;
              goto LABEL_165;
            }

            v96 = v83;
            v97 = v53;
            v98 = v48 >> 3;
            CGBlt_copyBytes(v93, v83, (v94 + v89), &v95[v92], v88, v90);
          }

          v86 = v98;
          v53 = v97;
          v83 = v96;
        }

LABEL_165:
        if (v83 < 1)
        {
          goto LABEL_185;
        }

        if (*a4 == a4[1])
        {
          v118 = v128 + 1;
        }

        else
        {
          v118 = v128;
        }

        v106 = *v46;
        v119 = v53 * v106;
        if (v119 != v119)
        {
          return 0;
        }

        if ((v119 & 0x80000000) != 0)
        {
          return 0;
        }

        v110 = *a5;
        v120 = v129 * *a5;
        if (v120 != v120)
        {
          return 0;
        }

        if ((v120 & 0x80000000) != 0)
        {
          return 0;
        }

        v121 = v118;
        v122 = v118 * *v13;
        if (v122 != v122)
        {
          return 0;
        }

        v123 = v122 * v86;
        if (v123 != v123)
        {
          return 0;
        }

        if ((v123 & 0x80000000) != 0)
        {
          return 0;
        }

        v124 = v121 * v13[2];
        if (v124 != v124)
        {
          return 0;
        }

        v112 = v124 * v86;
        if (v124 * v86 != v124 * v86)
        {
          return 0;
        }

        v125 = *v127;
        v126 = *a4 + v120;
        if (v87)
        {
          v111 = (v125 + v119);
          v109 = &v126[v123];
          LOWORD(v108) = v87;
          goto LABEL_155;
        }

        if (v106 == v110)
        {
          if (v106 < 1)
          {
            goto LABEL_185;
          }

          v113 = v106 * v83;
          if (v106 * v83 != v106 * v83)
          {
            return 0;
          }

          v114 = &v126[v123];
          v115 = (v125 + v119);
          goto LABEL_160;
        }

        v117 = (v125 + v119);
        v116 = &v126[v123];
        goto LABEL_162;
      }

      v54 = *(a1 + 104);
      v55 = *(a1 + 136);
      v56 = *v55;
      if (*v55 >= *a5)
      {
        v56 = *a5;
      }

      if (v56 >= v54)
      {
        v57 = *(a1 + 104);
      }

      else
      {
        v57 = v56;
      }

      if (v54 <= 0)
      {
        v58 = v56;
      }

      else
      {
        v58 = v57;
      }

      *(a1 + 88) = a2;
      if (v11 == 2)
      {
        v60 = a4[1];
        if (v60)
        {
          if ((*(a1 + 44) & 0xFFFFFFFE) == 8)
          {
            v61 = v55[1];
            v62 = v61 * a2;
            if (v62 != v61 * a2)
            {
              return 0;
            }

            v63 = *(a1 + 40);
            v64 = *(a1 + 120) * (v63 / 8);
            if (v64 != v64)
            {
              return 0;
            }

            if (v63 >= 9)
            {
              v65 = *(a1 + 112);
              if (v65)
              {
                v66 = v12;
                CGBlt_swapBytes(v64, a3, (v12[1] + v62), v60, v61, a5[1], v65);
LABEL_151:
                v12 = v66;
                goto LABEL_152;
              }
            }

            v101 = a5[1];
            if (v61 != v101)
            {
              v66 = v12;
              CGBlt_copyBytes(v64, a3, (v12[1] + v62), v60, v61, v101);
              goto LABEL_151;
            }

            if (v61 >= 1)
            {
              v102 = v61 * a3;
              if (v102 != v102)
              {
                return 0;
              }

              v66 = v12;
              memcpy(a4[1], (v12[1] + v62), v102);
              goto LABEL_151;
            }
          }
        }
      }

LABEL_152:
      v106 = *v55;
      v107 = v106 * a2;
      if (v107 != v106 * a2)
      {
        return 0;
      }

      v108 = *(a1 + 112);
      if (v108)
      {
        v109 = *a4;
        v110 = *a5;
        v111 = (*v12 + v107);
        v112 = v58;
        LODWORD(v83) = v7;
LABEL_155:
        CGBlt_swapBytes(v112, v83, v111, v109, v106, v110, v108);
        goto LABEL_185;
      }

      v110 = *a5;
      if (v106 == *a5)
      {
        if (v106 < 1)
        {
          goto LABEL_185;
        }

        v113 = v106 * v7;
        if (v113 != v113)
        {
          return 0;
        }

        v114 = *a4;
        v115 = (*v12 + v107);
LABEL_160:
        memcpy(v114, v115, v113);
        goto LABEL_185;
      }

      v116 = *a4;
      v117 = (*v12 + v107);
      v112 = v58;
      LODWORD(v83) = v7;
LABEL_162:
      CGBlt_copyBytes(v112, v83, v117, v116, v106, v110);
      goto LABEL_185;
    }
  }

  return result;
}

size_t CGDataProviderGetBytesAtPositionInternal(uint64_t a1, int a2, char *a3, int64_t a4, int64_t a5)
{
  v5 = a5;
  v6 = a3;
  if (a2)
  {

    return CGDataProviderDirectGetBytesAtPositionInternal(a1, a3, a4, a5);
  }

  else
  {
    if (a5 < 1 || (*(a1 + 261) & 1) != 0)
    {
      return 0;
    }

    v9 = 0;
    while (1)
    {
      v10 = (*(a1 + 40))(*(a1 + 24), v6, v5, a4);
      if (!v10)
      {
        break;
      }

      if (v10 >= v5)
      {
        v11 = v5;
      }

      else
      {
        v11 = v10;
      }

      v9 += v11;
      v6 += v11;
      v5 -= v11;
      if (!v5)
      {
        return v9;
      }
    }

    *(a1 + 261) = 1;
    return v9;
  }
}

CFDataRef CGColorSpaceCopyICCData(CGColorSpaceRef space)
{
  if (!space)
  {
    return 0;
  }

  v2 = CFGetTypeID(space);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v2 != CGColorSpaceGetTypeID_type_id)
  {
    return 0;
  }

  v3 = 0;
  v4 = *(space + 3);
  v5 = *(v4 + 24);
  if (v5 <= 5)
  {
    switch(v5)
    {
      case 3:
        CGColorSpaceGetCalibratedGrayData(space, v10);
        ProfileForCalGray = CGCMSUtilsCreateProfileForCalGray(v10);
        if (CGCMSUtilsCreateDataForCalGray_cglibrarypredicate != -1)
        {
          dispatch_once(&CGCMSUtilsCreateDataForCalGray_cglibrarypredicate, &__block_literal_global_147);
        }

        v7 = (CGCMSUtilsCreateDataForCalGray_f)(ProfileForCalGray, 0);
        goto LABEL_28;
      case 4:
        CGColorSpaceGetCalibratedRGBData(space, v10);
        ProfileForCalGray = CGCMSUtilsCreateProfileForCalRGB(v10);
        if (CGCMSUtilsCreateDataForCalRGB_cglibrarypredicate[0] != -1)
        {
          dispatch_once(CGCMSUtilsCreateDataForCalRGB_cglibrarypredicate, &__block_literal_global_134);
        }

        v7 = (CGCMSUtilsCreateDataForCalRGB_f)(ProfileForCalGray, 0);
        goto LABEL_28;
      case 5:
        ProfileForCalGray = CGCMSUtilsCreateProfileForCalLab(*(v4 + 96), *(v4 + 96) + 24);
        if (CGCMSUtilsCreateDataForCalLab_cglibrarypredicate[0] != -1)
        {
          dispatch_once(CGCMSUtilsCreateDataForCalLab_cglibrarypredicate, &__block_literal_global_156);
        }

        v7 = (CGCMSUtilsCreateDataForCalLab_f)(ProfileForCalGray, 0);
LABEL_28:
        v3 = v7;
        if (ProfileForCalGray)
        {
          CFRelease(ProfileForCalGray);
        }

        break;
    }

    return v3;
  }

  if ((v5 - 10) >= 2 && v5 != 6)
  {
    return v3;
  }

  return CGColorSpaceICCCopyData(space);
}

uint64_t CGImageProviderCopyIOSurface(uint64_t a1)
{
  if (a1 && ((v1 = *(a1 + 64), v1 == 3) || v1 == 2) && (v2 = *(a1 + 80)) != 0)
  {
    return v2(*(a1 + 56));
  }

  else
  {
    return 0;
  }
}

void vm_allocator_deallocate(unint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x1865F0110](*MEMORY[0x1E69E9A60], -*MEMORY[0x1E69E9AC8] & a1, a2);
    if (v2)
    {
      CGPostError("%s: vm_deallocate failed: status %d.", "release_copied_data", v2);
    }
  }

  else
  {

    free(a1);
  }
}

uint64_t dlRecorder_DrawRects(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const CGRect *a5, unint64_t a6)
{
  if (!a1 || (v6 = *(a1 + 288)) == 0)
  {
    CGPostError("%s: CGContextDelegateGetInfo() returned NULL", "dlRecorder_DrawRects");
    return 1000;
  }

  v9 = a4;
  v12 = CG::DisplayListRecorder::currentDisplayList(v6);
  if (!v12)
  {
    return 1000;
  }

  v13 = v12;
  if (v12[5] == INFINITY || v12[6] == INFINITY)
  {
    return 0;
  }

  result = 0;
  if (v13[7] != 0.0 && v13[8] != 0.0)
  {
    v16 = *(a3 + 40);
    v41 = *(a3 + 24);
    v42 = v16;
    v43 = *(a3 + 56);
    if (*(v13 + 73) != 1)
    {
      goto LABEL_29;
    }

    x = 0.0;
    y = 0.0;
    width = 0.0;
    height = 0.0;
    if (a5)
    {
      if (a6)
      {
        x = a5->origin.x;
        y = a5->origin.y;
        width = a5->size.width;
        height = a5->size.height;
        if (a6 >= 2)
        {
          v21 = a6 - 1;
          p_height = &a5[1].size.height;
          do
          {
            *&x = CGRectUnion(*&x, *(p_height - 24));
            p_height += 32;
            --v21;
          }

          while (v21);
        }
      }
    }

    v23 = *(a3 + 40);
    *&v39.a = *(a3 + 24);
    *&v39.c = v23;
    *&v39.tx = *(a3 + 56);
    v47 = CGRectApplyAffineTransform(*&x, &v39);
    v40 = v47;
    if (v9 >= 2)
    {
      v47.origin.x = CG::DisplayListRecorder::adjustBoundingBoxToIncludeStroke(&v40, a3);
      v40.origin.x = v47.origin.x;
      v40.origin.y = v24;
      v40.size.width = v25;
      v40.size.height = v26;
    }

    v40.origin.x = CG::DisplayListRecorder::intersectRectWithClipConsideringStyle(&v40.origin.x, a2, *(a3 + 112), *(*(a3 + 120) + 16), v47.origin);
    v40.origin.y = v27;
    v40.size.width = v28;
    v40.size.height = v29;
    if (v40.origin.x == INFINITY || v27 == INFINITY)
    {
      return 0;
    }

    result = 0;
    if (v28 != 0.0 && v29 != 0.0)
    {
LABEL_29:
      EntryDrawingState = CG::DisplayList::getEntryDrawingState(v13 + 2, a3, a2);
      v32 = EntryDrawingState[1];
      if (v32)
      {
        v33 = *(v32 + 8);
        v34 = v33 & 0x1000;
        v44 = v34;
        v35 = EntryDrawingState[2];
        if (v35)
        {
          v34 = (*(v35 + 8) | v33) & 0x1000;
          v44 = v34;
        }

        v36 = EntryDrawingState[3];
        if (v36)
        {
          v44 = v34 | *(v36 + 8) & 0x3400;
        }

        v45 = 0;
        v46 = 0;
        CG::DisplayListRecorder::getPathColorResourcesAndUpdateFlags((v13 + 2), a3, v9, &v46, &v45, &v44);
        v37 = *(a3 + 120);
        if (*(v37 + 8) >= 1.0)
        {
          v38 = v44;
        }

        else
        {
          v38 = v44 | 0x1000;
        }

        if ((v38 & 0x1000) == 0 && (((*(v37 + 4) << 16) >> 24) - 3) < 0xFFFFFFFE)
        {
          v38 = v44 | 0x1000;
        }

        if ((v38 & 0x3000) != 0)
        {
          *(v13 + 20) |= v38 & 0x3000;
        }

        if (*(v13 + 74) == 1)
        {
          if ((v38 & 0x400) != 0)
          {
            CG::DisplayList::getEntryPatternState((v13 + 2), a3, a2);
          }

          if ((v38 & 0x100) != 0)
          {
            CG::DisplayList::getEntryFillState((v13 + 2), v46);
          }

          if ((v38 & 0x200) != 0)
          {
            CG::DisplayList::getEntryStrokeState((v13 + 2), a3, v45);
          }

          operator new();
        }

        return 0;
      }

      return 1000;
    }
  }

  return result;
}

CGRect *CG::DisplayListEntryRects::setRects(CG::DisplayListEntryRects *this, const CGRect *a2, uint64_t a3)
{
  result = *(this + 17);
  if (result != a2)
  {
    free(result);
    *(this + 17) = 0;
    result = malloc_type_malloc(32 * a3, 0x1000040E0EAB150uLL);
    *(this + 17) = result;
    if (result)
    {
      result = memcpy(result, a2, 32 * a3);
    }
  }

  *(this + 18) = a3;
  return result;
}

unsigned int *CG::DisplayListEntryRects::_hash(uint64_t a1, unsigned int *a2)
{
  XXH64_update(a2, (a1 + 80), 4uLL);
  XXH64_update(a2, (a1 + 88), 0x30uLL);
  v4 = *(a1 + 136);
  if (v4)
  {
    XXH64_update(a2, v4, 32 * *(a1 + 144));
  }

  return CG::DisplayListEntry::_hash(a1, a2);
}

void CGGStateSetInterpolationQuality(uint64_t result, int a2)
{
  if (*(*(result + 120) + 4) != a2)
  {
    v2 = a2;
    maybeCopyRenderingState(result);
    *(*(result + 120) + 4) = v2;
  }
}

CFDictionaryRef CGRectCreateDictionaryRepresentation(CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  add_number_to_dict(Mutable, @"X", x);
  add_number_to_dict(Mutable, @"Y", y);
  add_number_to_dict(Mutable, @"Width", width);
  add_number_to_dict(Mutable, @"Height", height);
  return Mutable;
}

BOOL CGSizeMakeWithDictionaryRepresentation(CFDictionaryRef dict, CGSize *size)
{
  if (!dict || !size)
  {
    return 0;
  }

  get_size_from_dict(dict, &size->width);
  return result;
}

CFDictionaryRef CGSizeCreateDictionaryRepresentation(CGSize size)
{
  height = size.height;
  width = size.width;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  add_number_to_dict(Mutable, @"Width", width);
  add_number_to_dict(Mutable, @"Height", height);
  return Mutable;
}

void add_number_to_dict(__CFDictionary *a1, const void *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void _CGHandleAssert(const char *a1, int a2, const char *a3, const char *a4, const char *a5, ...)
{
  va_start(va, a5);
  os_unfair_lock_lock(&_CGHandleAssert_assert_lock);
  v10 = snprintf(_CGHandleAssert_assertStr, 0x800uLL, "CoreGraphics assert(%s) failed in %s:\n\t", a4, a1);
  v11 = v10;
  if (v10 >= 0x800)
  {
    v12 = 2048;
  }

  else
  {
    v12 = v10;
  }

  v13 = vsnprintf(&_CGHandleAssert_assertStr[v12], 2048 - v12, a5, va);
  if (v11 <= 0x7FF && !v13)
  {
    _CGHandleAssert_assertStr[v12] = 0;
  }

  CGPostError("%s", _CGHandleAssert_assertStr);
  qword_1ED4E0528 = _CGHandleAssert_assertStr;
  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, a3, a2, a4);
}

const void *CGImageProviderGetProperty(uint64_t a1, const void *a2)
{
  if (a1 && a2 && (v2 = *(a1 + 120)) != 0)
  {
    return CGPropertiesGetProperty(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t CGCFDictionaryGetMD5Digest(const __CFDictionary *a1, unsigned __int8 a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *md = 0;
  v9 = 0;
  v4 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v4);
  context[0] = v4;
  context[1] = a2;
  CFDictionaryApplyFunction(a1, md5_creator, context);
  if (v4)
  {
    CC_MD5_Final(md, v4);
    v5 = *md;
  }

  else
  {
    v5 = 0;
  }

  free(v4);
  return v5;
}

void md5_creator(const __CFString *propertyList, const __CFString *a2, CC_MD5_CTX **a3)
{
  if ((a3[1] & 1) == 0)
  {
    object_md5_creator(*a3, propertyList);
  }

  v5 = *a3;

  object_md5_creator(v5, a2);
}

void object_md5_creator(CC_MD5_CTX *a1, const __CFString *propertyList)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!propertyList)
  {
    goto LABEL_50;
  }

  v4 = CFGetTypeID(propertyList);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v4 == CGColorSpaceGetTypeID_type_id)
  {
    length = propertyList->length;
    if (length)
    {
      v6 = (length + 64);
    }

    else
    {
      v6 = 0;
    }

    data[0] = *v6;
    if (!a1)
    {
      return;
    }

    goto LABEL_16;
  }

  v7 = CFGetTypeID(propertyList);
  if (object_md5_creator_cglibrarypredicate != -1)
  {
    dispatch_once(&object_md5_creator_cglibrarypredicate, &__block_literal_global_262);
  }

  if (v7 != object_md5_creator_f())
  {
    v11 = CFGetTypeID(propertyList);
    if (v11 == CFURLGetTypeID())
    {
      v12 = CFURLCopyAbsoluteURL(propertyList);
      if (v12)
      {
        v13 = v12;
        v14 = CFURLCopyFileSystemPath(v12, kCFURLPOSIXPathStyle);
        if (v14)
        {
          v15 = v14;
          CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
          if (CStringPtr)
          {
            if (a1)
            {
              v17 = CStringPtr;
              v18 = strlen(CStringPtr);
              md5_update(a1, v17, v18);
            }

            CFRelease(v15);
LABEL_53:

            CFRelease(v13);
            return;
          }

          CFRelease(v15);
        }

        CFRelease(v13);
      }

      CGLog(3, "md5_creator failed for CFURL %p");
      return;
    }

    v19 = CFGetTypeID(propertyList);
    if (v19 == CFStringGetTypeID())
    {
      v20 = CFStringGetCStringPtr(propertyList, 0x8000100u);
      if (!v20)
      {
        bzero(data, 0x401uLL);
        v29 = CFStringGetLength(propertyList);
        if (!CFStringGetCString(propertyList, data, 1024, 0x600u))
        {
          v38.location = 0;
          v38.length = v29;
          CFStringGetBytes(propertyList, v38, 0x600u, 0x3Fu, 0, data, 1024, 0);
        }

        v30 = strlen(data);
        if (v30)
        {
          if (a1)
          {
            md5_update(a1, data, v30);
          }
        }

        else
        {
          CGLog(3, "md5_creator failed for CFString %p");
        }

        return;
      }

      if (!a1)
      {
        return;
      }

      v21 = v20;
      v22 = strlen(v20);
      v23 = a1;
      v24 = v21;
LABEL_32:

      md5_update(v23, v24, v22);
      return;
    }

    v25 = CFGetTypeID(propertyList);
    if (v25 == CFDataGetTypeID())
    {
      v26 = CFDataGetLength(propertyList);
      BytePtr = CFDataGetBytePtr(propertyList);
      if (!a1)
      {
        return;
      }

      v24 = BytePtr;
      v23 = a1;
      v22 = v26;
      goto LABEL_32;
    }

    v28 = CFGetTypeID(propertyList);
    if (v28 == CFBooleanGetTypeID())
    {
      LODWORD(data[0]) = *MEMORY[0x1E695E4D0] == propertyList;
      if (!a1)
      {
        return;
      }

      v9 = a1;
      v10 = 4;
LABEL_17:
      CC_MD5_Update(v9, data, v10);
      return;
    }

    v31 = CFGetTypeID(propertyList);
    if (v31 == CFNumberGetTypeID())
    {
      *&data[0] = 0;
      if (CFNumberGetValue(propertyList, kCFNumberDoubleType, data) != 1)
      {
        CGLog(3, "md5_creator failed for CFNumber %p");
        return;
      }

      if (a1)
      {
        v9 = a1;
        v10 = 8;
        goto LABEL_17;
      }

      return;
    }

LABEL_50:
    v32 = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    if (!v32)
    {
      CGLog(3, "md5_creator failed for %p object");
      return;
    }

    v13 = v32;
    v33 = CFDataGetLength(v32);
    v34 = CFDataGetBytePtr(v13);
    if (a1)
    {
      md5_update(a1, v34, v33);
    }

    goto LABEL_53;
  }

  if (object_md5_creator_cglibrarypredicate_3 != -1)
  {
    dispatch_once(&object_md5_creator_cglibrarypredicate_3, &__block_literal_global_6);
  }

  *&data[0] = object_md5_creator_f_2(propertyList);
  *(&data[0] + 1) = v8;
  if (a1)
  {
LABEL_16:
    v9 = a1;
    v10 = 16;
    goto LABEL_17;
  }
}

void cg_options_to_colorsync_options(__CFDictionary *a1, const __CFDictionary *a2)
{
  v159 = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return;
  }

  TypeID = CFBooleanGetTypeID();
  ValueWithType = CGCFDictionaryGetValueWithType(a2, @"kCGPQEOTFTable", TypeID);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEOTFTable", ValueWithType, 0);
  v6 = CFNumberGetTypeID();
  v7 = CGCFDictionaryGetValueWithType(a2, @"kCGPQEOTFTableSize", v6);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEOTFTableSize", v7, kCFNumberSInt32Type);
  v8 = CFBooleanGetTypeID();
  v9 = CGCFDictionaryGetValueWithType(a2, @"kCGPQInvEOTFTable", v8);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQInvEOTFTable", v9, 0);
  v10 = CFDictionaryContainsKey(a2, @"kCGHLGEOTFTable");
  v11 = CFBooleanGetTypeID();
  if (v10 == 1)
  {
    v12 = @"kCGHLGEOTFTable";
  }

  else
  {
    v12 = @"kCGHLGInvOETFTable";
  }

  v13 = CGCFDictionaryGetValueWithType(a2, v12, v11);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGInvOETFTable", v13, 0);
  v14 = CFDictionaryContainsKey(a2, @"kCGHLGEOTFTableSize");
  v15 = CFNumberGetTypeID();
  if (v14)
  {
    v16 = @"kCGHLGEOTFTableSize";
  }

  else
  {
    v16 = @"kCGHLGInvOETFTableSize";
  }

  v17 = CGCFDictionaryGetValueWithType(a2, v16, v15);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGInvOETFTableSize", v17, kCFNumberSInt32Type);
  v18 = CFBooleanGetTypeID();
  v19 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGOETFTable", v18);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGOETFTable", v19, 0);
  v20 = CFNumberGetTypeID();
  v21 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGOOTFGainScale", v20);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGOOTFGainScale", v21, kCFNumberFloatType);
  v22 = CFNumberGetTypeID();
  v23 = CGCFDictionaryGetValueWithType(a2, @"kCGPQEOTFOpticalScale", v22);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEOTFOpticalScale", v23, kCFNumberFloatType);
  v24 = CFNumberGetTypeID();
  v25 = CGCFDictionaryGetValueWithType(a2, @"kCGPQInvEOTFOpticalScale", v24);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQInvEOTFOpticalScale", v25, kCFNumberFloatType);
  v26 = CFNumberGetTypeID();
  v27 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGInvOETFOpticalScale", v26);
  if (!v27)
  {
    v28 = CFNumberGetTypeID();
    v27 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGEOTFOpticalScale", v28);
  }

  sanitize_and_set_options(a1, @"com.apple.cmm.HLGInvOETFOpticalScale", v27, kCFNumberFloatType);
  v29 = CFNumberGetTypeID();
  v30 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGOETFOpticalScale", v29);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGOETFOpticalScale", v30, kCFNumberFloatType);
  v31 = CFNumberGetTypeID();
  v32 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSurroundLuminance", v31);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGSurroundLuminance", v32, kCFNumberFloatType);
  Value = CFDictionaryGetValue(a2, @"kCGHLGLuminanceCoefficients");
  v34 = Value;
  if (Value)
  {
    v35 = CFGetTypeID(Value);
    if (v35 == CFArrayGetTypeID())
    {
      if (CFArrayGetCount(v34) > 3)
      {
        v36 = 0;
        Mutable = 0;
        *keys = 0u;
        v158 = 0u;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v34, v36);
          if (!ValueAtIndex)
          {
            break;
          }

          v39 = ValueAtIndex;
          v40 = CFGetTypeID(ValueAtIndex);
          if (v40 != CFNumberGetTypeID())
          {
            break;
          }

          LODWORD(valuePtr[0]) = 0;
          if (!CFNumberGetValue(v39, kCFNumberFloatType, valuePtr))
          {
            Type = CFNumberGetType(v39);
            v42 = "????";
            if ((Type - 1) <= 0xF)
            {
              v42 = off_1E6E32980[Type - 1];
            }

            CGLog(2, "kCGHLGLuminanceCoefficients has incorrect value type at index %ld type = %s instead of kCFNumberFloatType - rounding errors may occur", v36, v42);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
              if (!Mutable)
              {
                goto LABEL_35;
              }
            }

            keys[v36] = CFNumberCreate(0, kCFNumberFloatType, valuePtr);
          }

          if (++v36 == 4)
          {
            if (Mutable)
            {
              for (i = 0; i != 4; ++i)
              {
                v44 = keys[i];
                if (!v44)
                {
                  v44 = CFArrayGetValueAtIndex(v34, i);
                }

                CFArraySetValueAtIndex(Mutable, i, v44);
              }

              v34 = CFAutorelease(Mutable);
            }

            goto LABEL_35;
          }
        }

        CGLog(2, "kCGHLGLuminanceCoefficients has a non number value at index %ld - coefficients ignored", v36);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

LABEL_35:
        for (j = 0; j != 4; ++j)
        {
          v46 = keys[j];
          if (v46)
          {
            CFRelease(v46);
          }
        }

        goto LABEL_39;
      }

      CGLog(2, "Array count for kCGHLGLuminanceCoefficients is less than 4 - ignored");
    }

    else
    {
      CGLog(2, "Value for kCGHLGLuminanceCoefficients is not a CFArray - ignored");
    }

    v34 = 0;
  }

LABEL_39:
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGLuminanceCoefficients", v34, 0);
  v47 = CFDictionaryGetValue(a2, @"kCGUseHLGReferenceLuminance");
  sanitize_and_set_options(a1, @"com.apple.cmm.kColorSyncUseHLGReferenceLuminance", v47, 0);
  v48 = CFBooleanGetTypeID();
  v49 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSkipOOTF", v48);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipHLGOOTF", v49, 0);
  v50 = CFBooleanGetTypeID();
  v51 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSkipInvOOTF", v50);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipInvHLGOOTF", v51, 0);
  v52 = CFBooleanGetTypeID();
  v53 = CGCFDictionaryGetValueWithType(a2, @"kCGPQSkipPQEETF", v52);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipPQEETF", v53, 0);
  v54 = CFNumberGetTypeID();
  v55 = CGCFDictionaryGetValueWithType(a2, @"kCGPQMasteringDisplayWhite", v54);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQMasteringDisplayWhite", v55, kCFNumberFloatType);
  v56 = CFNumberGetTypeID();
  v57 = CGCFDictionaryGetValueWithType(a2, @"kCGPQMasteringDisplayBlack", v56);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQMasteringDisplayBlack", v57, kCFNumberFloatType);
  v58 = CFNumberGetTypeID();
  v59 = CGCFDictionaryGetValueWithType(a2, @"kCGTargetDisplayWhite", v58);
  sanitize_and_set_options(a1, @"com.apple.cmm.TargetDisplayWhite", v59, kCFNumberFloatType);
  v60 = CFNumberGetTypeID();
  v61 = CGCFDictionaryGetValueWithType(a2, @"kCGTargetDisplayBlack", v60);
  sanitize_and_set_options(a1, @"com.apple.cmm.TargetDisplayBlack", v61, kCFNumberFloatType);
  v62 = CFBooleanGetTypeID();
  v63 = CGCFDictionaryGetValueWithType(a2, @"kCGSkipToneMappingForBT2100", v62);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipToneMappingForBT2100", v63, 0);
  v64 = CFBooleanGetTypeID();
  v65 = CGCFDictionaryGetValueWithType(a2, @"kCGApplyToneMappingForBT2100", v64);
  sanitize_and_set_options(a1, @"com.apple.cmm.ApplyToneMappingForBT2100", v65, 0);
  v66 = CFBooleanGetTypeID();
  v67 = CGCFDictionaryGetValueWithType(a2, @"kCGPQEETF3DLut", v66);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEETF3DLut", v67, 0);
  v68 = CFNumberGetTypeID();
  v69 = CGCFDictionaryGetValueWithType(a2, @"kCGPQEETF3DLutGridPoints", v68);
  sanitize_and_set_options(a1, @"com.apple.cmm.PQEETF3DLutGridPoints", v69, 0);
  v70 = CFBooleanGetTypeID();
  v71 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSceneMapping3DLut", v70);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGSceneMapping3DLut", v71, 0);
  v72 = CFNumberGetTypeID();
  v73 = CGCFDictionaryGetValueWithType(a2, @"kCGHLGSceneMapping3DLutGridPoints", v72);
  sanitize_and_set_options(a1, @"com.apple.cmm.HLGSceneMapping3DLutGridPoints", v73, kCFNumberSInt32Type);
  v74 = CFNumberGetTypeID();
  v75 = CGCFDictionaryGetValueWithType(a2, @"kCGColorConversionTRCSize", v74);
  sanitize_and_set_options(a1, @"com.apple.cmm.TRCSize", v75, kCFNumberSInt32Type);
  v76 = CFBooleanGetTypeID();
  v77 = CGCFDictionaryGetValueWithType(a2, @"kCGApplyYCCGammaScaling", v76);
  sanitize_and_set_options(a1, @"com.apple.cmm.ApplyYCCGammaScaling", v77, kCFNumberFloatType);
  v78 = CFBooleanGetTypeID();
  v79 = CGCFDictionaryGetValueWithType(a2, @"kCGApplyLuminanceScaling", v78);
  sanitize_and_set_options(a1, @"com.apple.cmm.ApplyLuminanceScaling", v79, kCFNumberFloatType);
  v80 = CFBooleanGetTypeID();
  v81 = CGCFDictionaryGetValueWithType(a2, @"kCGUseBT1886ForCoreVideoGamma", v80);
  sanitize_and_set_options(a1, @"com.apple.ColorSync.BT1886ForCoreVideoGamma", v81, 0);
  v82 = CFNumberGetTypeID();
  v83 = CGCFDictionaryGetValueWithType(a2, @"kCGHDRMediaReferenceWhite", v82);
  sanitize_and_set_options(a1, @"com.apple.cmm.kColorSyncHDRMediaReferenceWhite", v83, kCFNumberFloatType);
  v84 = CFBooleanGetTypeID();
  v85 = CGCFDictionaryGetValueWithType(a2, @"kCGUseLegacyHDREcosystem", v84);
  sanitize_and_set_options(a1, @"com.apple.cmm.UseLegacyHDREcosystem", v85, 0);
  v86 = CFBooleanGetTypeID();
  v87 = CGCFDictionaryGetValueWithType(a2, @"kCGSkipBoostToHDR", v86);
  sanitize_and_set_options(a1, @"com.apple.cmm.SkipBoostToHDR", v87, 0);
  v88 = CFBooleanGetTypeID();
  v89 = CGCFDictionaryGetValueWithType(a2, @"kCGUse100nitsHLGOOTF", v88);
  sanitize_and_set_options(a1, @"com.apple.cmm.Use100nitsHLGOOTF", v89, 0);
  v90 = CFDictionaryGetValue(a2, @"kCGApplyReferenceWhiteToneMapping");
  v91 = CFDictionaryGetValue(a2, @"kCGApplyFlexTRC");
  v92 = CFDictionaryGetValue(a2, @"kCGApplyFlexLumaScaling");
  if (v90)
  {
    ResolveReferenceWhiteToneMappingOptions = CGColorTransformCreateResolveReferenceWhiteToneMappingOptions(v90);
    if (!ResolveReferenceWhiteToneMappingOptions)
    {
      return;
    }

    v94 = ResolveReferenceWhiteToneMappingOptions;
    colorsync_reference_white_tone_mapping_options = create_colorsync_reference_white_tone_mapping_options(ResolveReferenceWhiteToneMappingOptions);
    if (!colorsync_reference_white_tone_mapping_options)
    {
      goto LABEL_110;
    }

LABEL_42:
    v96 = colorsync_reference_white_tone_mapping_options;
LABEL_43:
    CFDictionarySetValue(a1, @"com.apple.cmm.ApplyToneMaping", v96);
    v97 = v96;
LABEL_44:
    CFRelease(v97);
LABEL_110:
    CFRelease(v94);
    return;
  }

  if (v92)
  {
    ResolveFlexLumaOptions = CGColorTransformCreateResolveFlexLumaOptions(v92);
    if (!ResolveFlexLumaOptions)
    {
      return;
    }

    v94 = ResolveFlexLumaOptions;
    v99 = CFGetTypeID(ResolveFlexLumaOptions);
    if (v99 != CFDictionaryGetTypeID())
    {
      goto LABEL_110;
    }

    v100 = CFDictionaryGetValue(v94, @"kCGApplyFlexLumaScaling");
    if (!v100)
    {
      goto LABEL_110;
    }

    v101 = v100;
    v102 = CFGetTypeID(v100);
    if (v102 != CFDictionaryGetTypeID())
    {
      goto LABEL_110;
    }

    *keys = 0u;
    v158 = 0u;
    memset(valuePtr, 0, sizeof(valuePtr));
    v103 = CFDictionaryGetValue(v101, @"kCGFlexGTCTargetHeadroom");
    v104 = v103;
    if (v103)
    {
      v105 = CFGetTypeID(v103);
      if (v105 == CFNumberGetTypeID())
      {
        v106 = valuePtr + 1;
        v107 = &keys[1];
        v108 = CFGetTypeID(v104);
        v109 = CFNumberGetTypeID();
        v110 = 0;
        if (v108 == v109)
        {
          LODWORD(v155) = 0;
          CFNumberGetValue(v104, kCFNumberFloatType, &v155);
          v110 = v155;
        }

        keys[0] = @"com.apple.cmm.FlexGTCTargetHeadroom";
        LODWORD(v155) = v110;
        *&valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, &v155);
        v104 = 1;
        goto LABEL_76;
      }

      v104 = 0;
    }

    v107 = keys;
    v106 = valuePtr;
LABEL_76:
    v126 = CFDictionaryGetValue(v101, @"kCGContentEDRStrength");
    if (v126)
    {
      v127 = v126;
      v128 = CFGetTypeID(v126);
      if (v128 == CFNumberGetTypeID())
      {
        v129 = CFGetTypeID(v127);
        v130 = CFNumberGetTypeID();
        v131 = 0;
        if (v129 == v130)
        {
          LODWORD(v155) = 0;
          CFNumberGetValue(v127, kCFNumberFloatType, &v155);
          v131 = v155;
        }

        *v107 = @"com.apple.cmm.ContentEDRStrength";
        LODWORD(v155) = v131;
        *v106 = CFNumberCreate(0, kCFNumberFloatType, &v155);
        ++v104;
      }
    }

    v132 = CFDictionaryGetValue(v101, @"kCGContentAverageLightLevel");
    if (v132)
    {
      v133 = v132;
      v134 = CFGetTypeID(v132);
      if (v134 == CFNumberGetTypeID())
      {
        v135 = CFGetTypeID(v133);
        v136 = 0.0;
        if (v135 == CFNumberGetTypeID())
        {
          LODWORD(v155) = 0;
          CFNumberGetValue(v133, kCFNumberFloatType, &v155);
          v136 = *&v155;
        }

        if (CGImageDefaultReferenceWhite_once != -1)
        {
          dispatch_once(&CGImageDefaultReferenceWhite_once, &__block_literal_global_270);
        }

        v137 = CGImageDefaultReferenceWhite_media_white;
        v138 = 0.0;
        if (CGImageDefaultReferenceWhite_media_white)
        {
          v139 = CFGetTypeID(CGImageDefaultReferenceWhite_media_white);
          if (v139 == CFNumberGetTypeID())
          {
            LODWORD(v155) = 0;
            CFNumberGetValue(v137, kCFNumberFloatType, &v155);
            v138 = *&v155;
          }
        }

        keys[v104] = @"com.apple.cmm.ContentAverageLightLevelNits";
        LODWORD(v155) = vcvtas_u32_f32(v136 / v138);
        *(valuePtr + v104++) = CFNumberCreate(0, kCFNumberSInt32Type, &v155);
      }
    }

    v140 = CFDictionaryGetValue(v101, @"kCGContentAverageLightLevelNits");
    if (v140)
    {
      v141 = v140;
      v142 = CFGetTypeID(v140);
      if (v142 == CFNumberGetTypeID())
      {
        v143 = CFGetTypeID(v141);
        if (v143 == CFNumberGetTypeID())
        {
          LODWORD(v155) = 0;
          CFNumberGetValue(v141, kCFNumberIntType, &v155);
          v144 = v155;
        }

        else
        {
          v144 = 0;
        }

        keys[v104] = @"com.apple.cmm.ContentAverageLightLevelNits";
        LODWORD(v155) = v144;
        *(valuePtr + v104++) = CFNumberCreate(0, kCFNumberSInt32Type, &v155);
      }
    }

    v145 = CFDictionaryGetValue(v101, @"kCGConstrainedDynamicRange");
    if (v145 && (v146 = v145, v147 = CFGetTypeID(v145), v147 == CFNumberGetTypeID()))
    {
      v148 = CFGetTypeID(v146);
      v149 = CFNumberGetTypeID();
      v150 = 0;
      if (v148 == v149)
      {
        LODWORD(v155) = 0;
        CFNumberGetValue(v146, kCFNumberFloatType, &v155);
        v150 = v155;
      }

      keys[v104] = @"com.apple.cmm.ConstrainedDynamicRange";
      LODWORD(v155) = v150;
      *(valuePtr + v104++) = CFNumberCreate(0, kCFNumberFloatType, &v155);
    }

    else if (!v104)
    {
      goto LABEL_110;
    }

    v151 = CFDictionaryCreate(0, keys, valuePtr, v104, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v152 = 0;
    do
    {
      v153 = *(valuePtr + v152);
      if (v153)
      {
        CFRelease(v153);
      }

      ++v152;
    }

    while (v104 != v152);
    values = v151;
    v155 = @"com.apple.cmm.ApplyFlexLumaScaling";
    v96 = CFDictionaryCreate(0, &v155, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v151)
    {
      CFRelease(v151);
    }

    if (!v96)
    {
      goto LABEL_110;
    }

    goto LABEL_43;
  }

  if (v91)
  {
    ResolveFlexTRCOptions = CGColorTransformCreateResolveFlexTRCOptions(v91);
    if (!ResolveFlexTRCOptions)
    {
      return;
    }

    v94 = ResolveFlexTRCOptions;
    v112 = CFGetTypeID(ResolveFlexTRCOptions);
    if (v112 != CFDictionaryGetTypeID())
    {
      goto LABEL_110;
    }

    v113 = CFDictionaryGetValue(v94, @"kCGApplyFlexTRC");
    if (!v113)
    {
      goto LABEL_110;
    }

    v114 = v113;
    v115 = CFGetTypeID(v113);
    if (v115 != CFDictionaryGetTypeID())
    {
      goto LABEL_110;
    }

    v116 = CFDictionaryGetValue(v114, @"kCGFlexGTCTargetHeadroom");
    if (!v116)
    {
      goto LABEL_110;
    }

    v117 = v116;
    v118 = CFGetTypeID(v116);
    if (v118 != CFNumberGetTypeID())
    {
      goto LABEL_110;
    }

    v119 = CFGetTypeID(v117);
    v120 = CFNumberGetTypeID();
    v121 = 0;
    if (v119 == v120)
    {
      LODWORD(v155) = 0;
      CFNumberGetValue(v117, kCFNumberFloatType, &v155);
      v121 = v155;
    }

    keys[0] = @"com.apple.cmm.FlexGTCTargetHeadroom";
    LODWORD(v155) = v121;
    *&valuePtr[0] = CFNumberCreate(0, kCFNumberFloatType, &v155);
    v122 = CFDictionaryCreate(0, keys, valuePtr, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (*&valuePtr[0])
    {
      CFRelease(*&valuePtr[0]);
    }

    values = v122;
    v155 = @"com.apple.cmm.ApplyFlexTRC";
    v123 = CFDictionaryCreate(0, &v155, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v122)
    {
      CFRelease(v122);
    }

    if (!v123)
    {
      goto LABEL_110;
    }

    CFDictionarySetValue(a1, @"com.apple.cmm.ApplyToneMaping", v123);
    v97 = v123;
    goto LABEL_44;
  }

  v124 = CFDictionaryGetValue(a2, @"kCGImageExtendedRangeToneMappingInfo");
  if (v124)
  {
    ResolveExtendedRangeToneMappingOptions = CGColorTransformCreateResolveExtendedRangeToneMappingOptions(v124);
    if (ResolveExtendedRangeToneMappingOptions)
    {
      v94 = ResolveExtendedRangeToneMappingOptions;
      colorsync_reference_white_tone_mapping_options = create_colorsync_extended_range_tone_mapping_options(ResolveExtendedRangeToneMappingOptions);
      if (!colorsync_reference_white_tone_mapping_options)
      {
        goto LABEL_110;
      }

      goto LABEL_42;
    }
  }
}

const void *CGCFDictionaryGetValueWithType(const __CFDictionary *a1, const void *a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    v5 = result;
    if (CFGetTypeID(result) == a3)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sanitize_and_set_options(__CFDictionary *a1, const void *a2, const void *a3, CFNumberType a4)
{
  if (a3 && !CFDictionaryContainsKey(a1, a2))
  {
    if (a4)
    {
      if (a4 != kCFNumberSInt32Type && a4 != kCFNumberFloatType)
      {
        _CGHandleAssert("sanitize_and_set_options", 1430, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Color/CGColorTransform.c", "type == kCFNumberFloatType || type == kCFNumberSInt32Type || type == (CFNumberType)0", "Unexpected number type to verify");
      }

      v8 = CFGetTypeID(a3);
      if (v8 != CFNumberGetTypeID())
      {
        CGLog(2, "Value for %@ is not a number - ignored", a2);
        return;
      }

      valuePtr = 0;
      Value = CFNumberGetValue(a3, a4, &valuePtr);
      if (a4 == kCFNumberSInt32Type && valuePtr < 0)
      {
        CGLog(2, "Value for %@ is negative - ignored", a2);
        return;
      }

      if (!Value)
      {
        Type = CFNumberGetType(a3);
        if ((Type - 1) > 0xF)
        {
          v11 = "????";
        }

        else
        {
          v11 = off_1E6E32980[Type - 1];
        }

        CGLog(2, "%@ has unsupported value type = %s instead of %s - errors may occur", a2, v11, off_1E6E32980[a4 - 1]);
        v12 = CFNumberCreate(0, a4, &valuePtr);
        v13 = v12;
        if (a1 && a2 && v12)
        {
          CFDictionarySetValue(a1, a2, v12);
        }

        else if (!v12)
        {
          return;
        }

        CFRelease(v13);
        return;
      }

      if (a1)
      {
        if (a2)
        {
          CFDictionarySetValue(a1, a2, a3);
        }
      }
    }

    else if (a1 && a2)
    {

      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

uint64_t colorspace_from_ICC_data_data_key_hash(__int128 *a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  return MEMORY[0x1865EEA10](&v2, 16);
}

CFTypeID CGColorGetTypeID(void)
{
  if (kCGColorContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
  }

  return CGColorGetTypeID_color_type_id;
}

uint64_t (*__copy_icc_profile_description_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCopyDescriptionString");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_7548;
  }

  copy_icc_profile_description_f = v1;
  return result;
}

uint64_t cs_hash(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      v2 = veor_s8(v1[8], *&vextq_s8(*v1[8].i8, *v1[8].i8, 8uLL));
      return (v2.i32[0] ^ v2.i32[1]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGColorTransformConvertColor(void *a1, unint64_t a2, uint64_t a3)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (kCGColorTransformDefaultCMYK_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorTransformDefaultCMYK_block_invoke_once, &__block_literal_global_34_17654);
  }

  v7 = 0;
  if (!a2 || v6 != CGColorTransformGetTypeID_type_id)
  {
    return v7;
  }

  Cache = CGColorTransformGetCache(a1);
  if (Cache && (v9 = Cache[2]) != 0)
  {
    v40[0] = Cache[2];
    v10 = *(*(v9 + 3) + 48);
  }

  else
  {
    v40[0] = 0;
    v10 = 0;
  }

  v11 = MEMORY[0x1EEE9AC00](8 * (v10 + 1));
  v14 = (v40 - v13);
  if (v12 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v15 = (v40 - v13);
  }

  else
  {
    v15 = 0;
  }

  if (v12 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
  {
    v15 = malloc_type_malloc(v11, 0x71B97807uLL);
  }

  v16 = CGColorTransformGetCache(a1);
  if (v16)
  {
    v17 = v16[2];
  }

  else
  {
    v17 = 0;
  }

  v40[1] = v40;
  ContentHeadroom = CGColorGetContentHeadroom(a2);
  HeadroomInfo = CGColorSpaceGetHeadroomInfo(v17, 0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    ColorSpace = CGTaggedColorGetColorSpace(a2);
  }

  else
  {
    ColorSpace = *(a2 + 24);
  }

  Attributes = CGColorTransformGetAttributes(a1);
  v22 = Attributes;
  if (!Attributes)
  {
    v25 = 0;
    goto LABEL_34;
  }

  v23 = CFGetTypeID(Attributes);
  if (v23 != CFDictionaryGetTypeID())
  {
LABEL_32:
    v25 = 0;
    goto LABEL_33;
  }

  Value = CFDictionaryGetValue(v22, @"kCGColorConversionInfoOptions");
  v25 = Value;
  if (Value)
  {
    v26 = CFGetTypeID(Value);
    if (v26 == CFDictionaryGetTypeID())
    {
      if (CFDictionaryContainsKey(v25, @"kCGApplyReferenceWhiteToneMapping"))
      {
        v27 = @"kCGApplyReferenceWhiteToneMapping";
        v22 = 2;
LABEL_31:
        v25 = CFDictionaryGetValue(v25, v27);
        goto LABEL_34;
      }

      if (CFDictionaryContainsKey(v25, @"kCGApplyFlexLumaScaling"))
      {
        v27 = @"kCGApplyFlexLumaScaling";
        v22 = 1;
        goto LABEL_31;
      }
    }

    goto LABEL_32;
  }

LABEL_33:
  v22 = 0;
LABEL_34:
  v28 = CGToneMappingConstrainedHeadroomRequested(v22, v25);
  if (ContentHeadroom > 1.0 && HeadroomInfo > 0.0 && (ContentHeadroom > HeadroomInfo) | v28 & 1)
  {
    v41[0] = 0;
    v29 = CGColorConversionInfoCreateForToneMapping(ColorSpace, v17, v22, v25, v41, ContentHeadroom, HeadroomInfo);
    if (v41[0])
    {
      v30 = CFErrorCopyDescription(v41[0]);
      CGLog(2, "convert_color_components failed: %@", v30);
      CFRelease(v30);
      CFRelease(v41[0]);
      v31 = 0;
    }

    else
    {
      Components = CGColorGetComponents(a2);
      v31 = CGColorConversionInfoConvertColorComponents(v29, Components, v15);
    }

    if (v29)
    {
      CFRelease(v29);
    }

    if ((v31 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v32 = CGTaggedColorGetColorSpace(a2);
    }

    else
    {
      v32 = *(a2 + 24);
    }

    v33 = CGColorGetComponents(a2);
    if ((CGColorTransformConvertColorComponents(a1, v32, a3, v33, v15) & 1) == 0)
    {
LABEL_57:
      if (v15 != v14)
      {
        free(v15);
      }

      return 0;
    }
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    Alpha = CGTaggedColorGetAlpha(a2);
  }

  else
  {
    Alpha = *(a2 + 8 * *(a2 + 56) + 64);
  }

  v15[v10] = Alpha;
  v35 = CGColorTransformGetCache(a1);
  if (v35)
  {
    v35 = *(v35 + 2);
  }

  if (CGColorSpaceSupportsHDR(v35))
  {
    v36 = CGColorGetContentHeadroom(a2);
    v37 = CGColorCreateWithContentHeadroom(v40[0], v36, *v15, v15[1], v15[2], v15[3]);
  }

  else
  {
    v37 = CGColorCreate(v40[0], v15);
  }

  v7 = v37;
  if (v15 != v14)
  {
    free(v15);
  }

  return v7;
}

BOOL CGConditionalVarWait(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("CGConditionalVarWait", 43, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Utilities/CGConditionalVar.c", "cvar != NULL", "Conditional variable is NULL");
  }

  if (pthread_mutex_lock(a1))
  {
    return 0;
  }

  while ((*(a1 + 112) & 1) == 0)
  {
    if (pthread_cond_wait((a1 + 64), a1))
    {
      return 0;
    }
  }

  return pthread_mutex_unlock(a1) == 0;
}

void cache_entry_release(char *a1)
{
  if (a1)
  {
    for (i = 24; i != 64; i += 8)
    {
      v3 = *&a1[i];
      if (v3)
      {
        CFRelease(v3);
      }
    }

    free(a1);
  }
}

void converter_finalize(void *a1)
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

    v4 = a1[9];
    if (v4)
    {
      CFRelease(v4);
    }

    CGColorSyncTransformCacheRelease(a1[11]);
    v5 = a1[12];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a1[25];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a1[27];
    if (v7)
    {

      free(v7);
    }
  }
}

void __CGColorSpaceCreateDisplayP3_block_invoke()
{
  CGColorSpaceCreateDisplayP3_space = create_singleton(color_space_state_create_display_p3);
  CGColorSpaceSetProperty(CGColorSpaceCreateDisplayP3_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceCreateDisplayP3_space);
  CGColorSpaceSetProperty(CGColorSpaceCreateDisplayP3_space, @"kCGColorSpaceLinearDerivative", @"kCGColorSpaceLinearDisplayP3");
  CGColorSpaceSetProperty(CGColorSpaceCreateDisplayP3_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedDisplayP3");
  v0 = CGColorSpaceCreateDisplayP3_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearDisplayP3");
}

char *color_space_state_create_display_p3()
{
  if (color_space_state_create_display_p3_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_display_p3_cglibrarypredicate, &__block_literal_global_32_1743);
  }

  v0 = color_space_state_create_display_p3_f;
  if (color_space_state_create_display_p3_cglibrarypredicate_33 != -1)
  {
    dispatch_once(&color_space_state_create_display_p3_cglibrarypredicate_33, &__block_literal_global_36);
  }

  v1 = v0(color_space_state_create_display_p3_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceDisplayP3";
    *(icc_with_profile + 5) = 7;
    *(*(icc_with_profile + 12) + 40) = @"Display P3";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_display_p3_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_display_p3_f = v1;
  return result;
}

uint64_t *__color_space_state_create_display_p3_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncDisplayP3Profile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_display_p3_s = v1;
  return result;
}

CGColorSpaceRef __create_resolved_device_space_block_invoke()
{
  create_resolved_device_space_gray = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericGrayGamma2_2");
  create_resolved_device_space_sRGB = CGColorSpaceCreateWithName(@"kCGColorSpaceSRGB");
  result = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericCMYK");
  create_resolved_device_space_cmyk = result;
  return result;
}

uint64_t CGColorSpaceLinearSRGB()
{
  if (CGColorSpaceLinearSRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceLinearSRGB_predicate, &__block_literal_global_279);
  }

  v0 = CGColorSpaceLinearSRGB_space;
  if (CGColorSpaceLinearSRGB_space)
  {
    CFRetain(CGColorSpaceLinearSRGB_space);
  }

  return v0;
}

CFTypeRef CGCMSUtilsCreateLinearSRGBProfile()
{
  if (CGCMSUtilsCreateLinearSRGBProfile_once != -1)
  {
    dispatch_once(&CGCMSUtilsCreateLinearSRGBProfile_once, &__block_literal_global_159);
  }

  result = CGCMSUtilsCreateLinearSRGBProfile_linear_profile;
  if (CGCMSUtilsCreateLinearSRGBProfile_linear_profile)
  {

    return CFRetain(result);
  }

  return result;
}

char *color_space_state_create_linear_srgb()
{
  LinearSRGBProfile = CGCMSUtilsCreateLinearSRGBProfile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearSRGBProfile, 0);
  if (LinearSRGBProfile)
  {
    CFRelease(LinearSRGBProfile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceLinearSRGB";
    *(icc_with_profile + 5) = 17;
    *(*(icc_with_profile + 12) + 40) = @"sRGB IEC61966-2.1 Linear";
  }

  return icc_with_profile;
}

void __CGColorSpaceLinearSRGB_block_invoke()
{
  CGColorSpaceLinearSRGB_space = create_singleton(color_space_state_create_linear_srgb);
  CGColorSpaceSetProperty(CGColorSpaceLinearSRGB_space, @"kCGColorSpaceStandardRangeOriginal", CGColorSpaceLinearSRGB_space);
  CGColorSpaceSetProperty(CGColorSpaceLinearSRGB_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceLinearSRGB_space);
  CGColorSpaceSetProperty(CGColorSpaceLinearSRGB_space, @"kCGColorSpaceExtendedDerivative", @"kCGColorSpaceExtendedLinearSRGB");
  v0 = CGColorSpaceLinearSRGB_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", @"kCGColorSpaceExtendedLinearSRGB");
}

void __CGCMSUtilsCreateLinearSRGBProfile_block_invoke()
{
  v68 = *MEMORY[0x1E69E9840];
  if (_block_invoke_cglibrarypredicate != -1)
  {
    dispatch_once(&_block_invoke_cglibrarypredicate, &__block_literal_global_162);
  }

  v0 = _block_invoke_f;
  if (_block_invoke_cglibrarypredicate_164 != -1)
  {
    dispatch_once(&_block_invoke_cglibrarypredicate_164, &__block_literal_global_167);
  }

  v1 = v0(_block_invoke_s);
  if (v1)
  {
    v2 = v1;
    v33 = 0x3FE47AE147AE147BLL;
    v32 = 0x3FD51EB851EB851FLL;
    v31 = 0x3FD3333333333333;
    v30 = 0x3FE3333333333333;
    v29 = 0x3FC3333333333333;
    v28 = 0x3FAEB851EB851EB8;
    v27 = 0x3FD40346DC5D6388;
    v26 = 0x3FD50E5604189375;
    keys[10] = xmmword_1E6E062A8;
    keys[11] = *off_1E6E062B8;
    v67 = @"createImmutableCopy";
    keys[6] = xmmword_1E6E06268;
    keys[7] = *&off_1E6E06278;
    keys[8] = xmmword_1E6E06288;
    keys[9] = *&off_1E6E06298;
    keys[2] = xmmword_1E6E06228;
    keys[3] = *&off_1E6E06238;
    keys[4] = xmmword_1E6E06248;
    keys[5] = *&off_1E6E06258;
    keys[0] = xmmword_1E6E06208;
    keys[1] = *&off_1E6E06218;
    valuePtr = 0;
    v23 = 0;
    v24 = 0x3FF0000000000000;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v64 = 0u;
    v65 = 0u;
    *values = 0u;
    v63 = 0u;
    values[0] = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
    values[1] = CFNumberCreate(0, kCFNumberDoubleType, &v24);
    *&v63 = CFNumberCreate(0, kCFNumberDoubleType, &v23);
    *(&v63 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v22);
    *&v64 = CFNumberCreate(0, kCFNumberDoubleType, &v21);
    *(&v64 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v20);
    *&v65 = CFNumberCreate(0, kCFNumberDoubleType, &v19);
    *(&v65 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v18);
    v3 = CFArrayCreate(0, values, 8, MEMORY[0x1E695E9C0]);
    for (i = 0; i != 8; ++i)
    {
      v5 = values[i];
      if (v5)
      {
        CFRelease(v5);
      }
    }

    if (_block_invoke_cglibrarypredicate_209 != -1)
    {
      dispatch_once(&_block_invoke_cglibrarypredicate_209, &__block_literal_global_212);
    }

    v6 = _block_invoke_f_208(v2, @"rXYZ");
    if (_block_invoke_cglibrarypredicate_215 != -1)
    {
      dispatch_once(&_block_invoke_cglibrarypredicate_215, &__block_literal_global_218);
    }

    v7 = _block_invoke_f_214(v2, @"gXYZ");
    if (_block_invoke_cglibrarypredicate_220 != -1)
    {
      dispatch_once(&_block_invoke_cglibrarypredicate_220, &__block_literal_global_223);
    }

    v8 = _block_invoke_f_219(v2, @"bXYZ");
    v60 = 0u;
    v61 = 0u;
    v59[0] = CFNumberCreate(0, kCFNumberSInt16Type, &_block_invoke_iccDate);
    v59[1] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4A2);
    v59[2] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4A4);
    v59[3] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4A6);
    v59[4] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4A8);
    v59[5] = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E4AA);
    v9 = CFArrayCreate(*MEMORY[0x1E695E480], v59, 6, MEMORY[0x1E695E9C0]);
    for (j = 0; j != 6; ++j)
    {
      v11 = v59[j];
      if (v11)
      {
        CFRelease(v11);
      }
    }

    *bytes = 1885563235;
    LODWORD(v35) = 16779265;
    v12 = CFDataCreate(0, bytes, 12);
    *bytes = @"displayRGB";
    v35 = @"4.0";
    v36 = @"sRGB IEC61966-2.1 Linear";
    v37 = v3;
    v38 = v3;
    v39 = v3;
    v40 = v9;
    v41 = CFNumberCreate(0, kCFNumberDoubleType, &v33);
    v42 = CFNumberCreate(0, kCFNumberDoubleType, &v32);
    v43 = CFNumberCreate(0, kCFNumberDoubleType, &v31);
    v44 = CFNumberCreate(0, kCFNumberDoubleType, &v30);
    v45 = CFNumberCreate(0, kCFNumberDoubleType, &v29);
    v46 = CFNumberCreate(0, kCFNumberDoubleType, &v28);
    v47 = CFNumberCreate(0, kCFNumberDoubleType, &v27);
    v13 = CFNumberCreate(0, kCFNumberDoubleType, &v26);
    v14 = *MEMORY[0x1E695E4D0];
    v48 = v13;
    v49 = v14;
    v50 = v14;
    v51 = v14;
    v52 = v14;
    v53 = v14;
    v54 = v6;
    v55 = v7;
    v56 = v8;
    v57 = v12;
    v58 = v14;
    v15 = CFDictionaryCreate(0, keys, bytes, 25, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (_block_invoke_cglibrarypredicate_231 != -1)
    {
      dispatch_once(&_block_invoke_cglibrarypredicate_231, &__block_literal_global_234);
    }

    CGCMSUtilsCreateLinearSRGBProfile_linear_profile = _block_invoke_f_230(v15);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    for (k = 56; k != 120; k += 8)
    {
      v17 = *&bytes[k];
      if (v17)
      {
        CFRelease(v17);
      }
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(v2);
  }
}

uint64_t *__CGCMSUtilsCreateLinearSRGBProfile_block_invoke_3()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncSRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  _block_invoke_s = v1;
  return result;
}

uint64_t CGColorSpaceExtendedLinearSRGB()
{
  if (CGColorSpaceExtendedLinearSRGB_predicate != -1)
  {
    dispatch_once(&CGColorSpaceExtendedLinearSRGB_predicate, &__block_literal_global_282_6556);
  }

  v0 = CGColorSpaceExtendedLinearSRGB_space;
  if (CGColorSpaceExtendedLinearSRGB_space)
  {
    CFRetain(CGColorSpaceExtendedLinearSRGB_space);
  }

  return v0;
}

void __CGColorSpaceExtendedLinearSRGB_block_invoke()
{
  CGColorSpaceExtendedLinearSRGB_space = create_singleton(color_space_state_create_extended_linear_srgb);
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearSRGB_space, @"kCGColorSpaceStandardRangeOriginal", @"kCGColorSpaceLinearSRGB");
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearSRGB_space, @"kCGColorSpaceLinearDerivative", CGColorSpaceExtendedLinearSRGB_space);
  CGColorSpaceSetProperty(CGColorSpaceExtendedLinearSRGB_space, @"kCGColorSpaceExtendedDerivative", CGColorSpaceExtendedLinearSRGB_space);
  v0 = CGColorSpaceExtendedLinearSRGB_space;
  v1 = CGColorSpaceExtendedLinearSRGB_space;

  CGColorSpaceSetProperty(v0, @"kCGColorSpaceExtendedLinearDerivative", v1);
}

char *color_space_state_create_extended_linear_srgb()
{
  LinearSRGBProfile = CGCMSUtilsCreateLinearSRGBProfile();
  icc_with_profile = color_space_state_create_icc_with_profile(LinearSRGBProfile, 1);
  if (LinearSRGBProfile)
  {
    CFRelease(LinearSRGBProfile);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceExtendedLinearSRGB";
    *(icc_with_profile + 5) = 18;
    *(*(icc_with_profile + 12) + 40) = @"sRGB IEC61966-2.1 Linear";
  }

  return icc_with_profile;
}

void *CGFontGetGlyphAdvancesForStyle(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

    v13 = *(v11[2] + 312);
    v14 = v11[14];

    return v13(v14, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t get_glyph_advances(uint64_t a1, float64x2_t *a2, char a3, unsigned __int16 *a4, unint64_t a5, float64x2_t *a6)
{
  result = 0;
  if (a1)
  {
    v8 = a6;
    if (a6)
    {
      v9 = a5;
      v10 = a4;
      if (a4 || !a5)
      {
        if (a5)
        {
          if (a3)
          {
            get_glyph_ideal_advances(a1, a4, a5, a6);
            if (a2)
            {
              v16 = vdupq_lane_s64(COERCE__INT64(FPFontGetUnitsPerEm()), 0);
              v17 = vdivq_f64(*a2, v16);
              v18 = vdivq_f64(a2[1], v16);
              v19 = v8;
              v20 = v9;
              do
              {
                *v19 = vmlaq_n_f64(vmulq_n_f64(v18, v19[1]), v17, *v19);
                v19 += 2;
                --v20;
              }

              while (v20);
            }

            if ((a3 & 4) == 0)
            {
              do
              {
                *v8 = vrndaq_f64(*v8);
                ++v8;
                --v9;
              }

              while (v9);
            }
          }

          else
          {
            v13 = &a6->f64[1];
            do
            {
              ++v10;
              FPFontGetGlyphDeviceAdvance();
              *(v13 - 1) = v14;
              *v13 = v15;
              v13 += 2;
              --v9;
            }

            while (v9);
          }
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void get_glyph_ideal_advances(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v37[64] = *MEMORY[0x1E69E9840];
  v33[1] = *(a1 + 8);
  v6 = (a1 + 16);
  explicit = atomic_load_explicit((a1 + 16), memory_order_acquire);
  v35 = a4;
  if (!explicit)
  {
    v8 = malloc_type_calloc(1uLL, 0x208uLL, 0x1080040036EC52CuLL);
    explicit = v8;
    v9 = 0;
    *v8 = 0x7FFF;
    atomic_compare_exchange_strong(v6, &v9, v8);
    if (v9)
    {
      CGFontIndexMapRelease(v8);
      explicit = v9;
    }

    a4 = v35;
  }

  v10 = 0;
  v11 = 0;
  v34 = 10 * a3;
  v12 = explicit + 4;
  v13 = (a4 + 8);
  v14 = &v36;
  v15 = v37;
  do
  {
    v16 = *(a2 + 2 * v10);
    if (v16 == 0xFFFF)
    {
      v17 = 0;
      goto LABEL_20;
    }

    v17 = *(a2 + 2 * v10);
    if (explicit != -1)
    {
      if (!explicit)
      {
        v17 = -1;
LABEL_20:
        *(v13 - 1) = v17;
        *v13 = 0.0;
        goto LABEL_21;
      }

      v18 = atomic_load((v12 + ((v16 >> 7) & 0x1F8)));
      if (v18)
      {
        v17 = *(v18 + 2 * (v16 & 0x3FF));
      }

      else
      {
        v17 = *explicit;
      }
    }

    if (v17 != 0x7FFF)
    {
      v17 = v17;
      goto LABEL_20;
    }

    if (a3 >= 0x41 && !v11)
    {
      v19 = v12;
      v20 = malloc_type_malloc(v34, 0x100004000313F17uLL);
      v12 = v19;
      v15 = v20;
      v14 = &v20[a3];
    }

    v15[v11] = v10;
    *(v14 + v11++) = v16;
LABEL_21:
    ++v10;
    v13 += 2;
  }

  while (a3 != v10);
  if (v11)
  {
    v21 = MEMORY[0x1EEE9AC00](8 * v11);
    v24 = v33 - v23;
    if (v22 <= 0x1FFFFFFFFFFFFFFELL)
    {
      v25 = v33 - v23;
    }

    else
    {
      v25 = 0;
    }

    if (v22 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000042)
    {
      v25 = malloc_type_malloc(v21, 0x4D13887CuLL);
    }

    FPFontGetGlyphIdealAdvanceWidths();
    v26 = 0;
    v27 = v35;
    do
    {
      v28 = v15[v26];
      v29 = *&v25[8 * v26];
      if (v29 != 32767.0 && v29 >= -32768.0 && v29 <= 32767.0)
      {
        v31 = v29;
        if (v29 == v31)
        {
          CGFontIndexMapAddIndex(explicit, *(a2 + 2 * v28), v29);
          v27 = v35;
          v29 = v31;
        }
      }

      v32 = v27 + 16 * v28;
      *v32 = v29;
      *(v32 + 8) = 0;
      ++v26;
    }

    while (v11 != v26);
    if (v25 != v24)
    {
      free(v25);
    }

    if (v15 != v37)
    {
      free(v15);
    }
  }
}

unsigned __int16 *CGFontIndexMapAddIndex(unsigned __int16 *result, unsigned int a2, unsigned __int16 a3)
{
  if (result + 1 >= 2)
  {
    v4 = a2;
    v5 = result;
    v6 = a2 >> 10;
    v7 = result + 4;
    result = atomic_load_explicit(&result[4 * v6 + 4], memory_order_acquire);
    if (!result)
    {
      result = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
      v8 = 0;
      v9 = *v5;
      do
      {
        atomic_store(v9, &result[v8++]);
      }

      while (v8 != 1024);
      v10 = 0;
      atomic_compare_exchange_strong(&v7[4 * v6], &v10, result);
      if (v10)
      {
        free(result);
        result = v10;
      }
    }

    result[v4 & 0x3FF] = a3;
  }

  return result;
}

uint64_t CGGradientCreateWithColorsAndOptions(CGColorSpace *a1, const __CFArray *a2, double *a3, const __CFDictionary *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    CGPostError("CGGradientCreateWithColors: non-NULL CFArrayRef with colors is required");
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (!validate_gradient_color_space(a1, "CGGradientCreateWithColors"))
  {
    return 0;
  }

  Count = CFArrayGetCount(v6);
  if (!Count)
  {
    CGPostError("CGGradientCreateWithColors: CFArrayRef with colors cannot be empty");
    return 0;
  }

  v9 = Count;
  if (v7)
  {
    CFRetain(v7);
    goto LABEL_11;
  }

  v7 = CGColorSpaceCreateWithName(@"kCGColorSpaceGenericRGB");
  if (!v7)
  {
    return 0;
  }

LABEL_11:
  if (kCGColorContentHeadroom_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorContentHeadroom_block_invoke_once, &__block_literal_global_36_2440);
  }

  v12 = 0;
  v13 = 0;
  v14 = CGColorGetTypeID_color_type_id;
  do
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v13);
      if (!ValueAtIndex)
      {
        goto LABEL_52;
      }

      v16 = ValueAtIndex;
      if (CFGetTypeID(ValueAtIndex) != v14)
      {
        goto LABEL_52;
      }

      v17 = (v16 & 0x8000000000000000) != 0 ? CGTaggedColorGetColorSpace(v16) : *(v16 + 24);
      if (((CFEqual(v17, v7) != 0) & ~v12) == 0)
      {
        break;
      }

      v12 = 0;
      if (++v13 == v9)
      {
        v18 = 0;
        goto LABEL_33;
      }
    }

    if (!CGColorSpaceSupportsOutput(v7))
    {
      Type = CGColorSpaceGetType(v7);
      if (Type > 0xB)
      {
        v20 = "Unknown";
      }

      else
      {
        v20 = off_1E6E34408[Type];
      }

      v37 = CGColorSpaceGetType(v17);
      if (v37 > 0xB)
      {
        v38 = "Unknown";
      }

      else
      {
        v38 = off_1E6E34408[v37];
      }

      CGPostError("CGGradientCreateWithColors: unsupported color conversion from %s type to %s type", v38, v20);
LABEL_52:
      CGColorSpaceRelease(v7);
      return 0;
    }

    ++v13;
    v12 = 1;
  }

  while (v13 != v9);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v18 = Mutable;
  for (i = 0; i != v9; ++i)
  {
    v23 = CFArrayGetValueAtIndex(v6, i);
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v7, kCGRenderingIntentDefault, v23, 0);
    CFArraySetValueAtIndex(v18, i, CopyByMatchingToColorSpace);
    if (CopyByMatchingToColorSpace)
    {
      CFRelease(CopyByMatchingToColorSpace);
    }
  }

  v6 = v18;
LABEL_33:
  v25 = *(*(v7 + 3) + 48) + 1;
  v26 = MEMORY[0x1EEE9AC00](8 * v25 * v9);
  if (v27 <= 0x1FFFFFFFFFFFFFFELL)
  {
    v30 = (&v39 - v28);
  }

  else
  {
    v30 = 0;
  }

  v40 = (&v39 - v28);
  v41 = v29;
  if (v27 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000012)
  {
    v30 = malloc_type_malloc(v26, 0x97B521CAuLL);
  }

  v31 = 0;
  v32 = 8 * v25;
  ContentHeadroom = 0.0;
  v39 = v30;
  do
  {
    v34 = CFArrayGetValueAtIndex(v6, v31);
    if (ContentHeadroom <= CGColorGetContentHeadroom(v34))
    {
      ContentHeadroom = CGColorGetContentHeadroom(v34);
    }

    Components = CGColorGetComponents(v34);
    memmove(v30, Components, v32);
    ++v31;
    v30 = (v30 + v32);
  }

  while (v9 != v31);
  v36 = v39;
  gradient = create_gradient(v7, v39, a3, v9, a4, ContentHeadroom);
  CGColorSpaceRelease(v7);
  if (v36 != v40)
  {
    free(v36);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return gradient;
}

uint64_t __CGColorSpaceCreateGenericRGB_block_invoke()
{
  result = create_singleton(color_space_state_create_generic_rgb);
  CGColorSpaceCreateGenericRGB_space = result;
  return result;
}

char *color_space_state_create_generic_rgb()
{
  if (color_space_state_create_generic_rgb_cglibrarypredicate != -1)
  {
    dispatch_once(&color_space_state_create_generic_rgb_cglibrarypredicate, &__block_literal_global_10_1731);
  }

  v0 = color_space_state_create_generic_rgb_f;
  if (color_space_state_create_generic_rgb_cglibrarypredicate_11 != -1)
  {
    dispatch_once(&color_space_state_create_generic_rgb_cglibrarypredicate_11, &__block_literal_global_14);
  }

  v1 = v0(color_space_state_create_generic_rgb_s);
  icc_with_profile = color_space_state_create_icc_with_profile(v1, 0);
  if (v1)
  {
    CFRelease(v1);
  }

  if (icc_with_profile)
  {
    *(icc_with_profile + 10) = @"kCGColorSpaceGenericRGB";
    *(*(icc_with_profile + 12) + 40) = @"Generic RGB Profile";
  }

  return icc_with_profile;
}

uint64_t (*__color_space_state_create_generic_rgb_block_invoke())()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileCreateWithName");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null_1730;
  }

  color_space_state_create_generic_rgb_f = v1;
  return result;
}

uint64_t *__color_space_state_create_generic_rgb_block_invoke_2()
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle && (result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "kColorSyncGenericRGBProfile")) != 0)
  {
    v1 = *result;
  }

  else
  {
    v1 = 0;
  }

  color_space_state_create_generic_rgb_s = v1;
  return result;
}

void CGPathAddArc(CGMutablePathRef path, const CGAffineTransform *m, CGFloat x, CGFloat y, CGFloat radius, CGFloat startAngle, CGFloat endAngle, BOOL clockwise)
{
  if (path)
  {
    v8 = clockwise;
    if ((CGPathDisableTypeValidation & 1) != 0 || (v16 = CFGetTypeID(path), v16 == CGPathGetTypeID()))
    {
      if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {

        CGFloatPostError();
      }

      {
        if (fabs(startAngle) > 6283.18531 || fabs(endAngle) > 6283.18531)
        {
          CGPostError("%s: invalid value for start or end angle.", "CGPathAddArc");
        }

        else
        {
          v17.x = x;
          v17.y = y;
          CG::Path::add_arc((path + 16), &v17, radius, startAngle, endAngle, v8, m);
        }
      }
    }
  }
}

void CG::Path::add_arc(CG::Path *this, float64x2_t *a2, float64_t a3, double a4, double a5, int a6, CGAffineTransform *a7)
{
  if ((*this - 10) <= 0xFFFFFFF6)
  {
    v8 = a5 + -6.28318531;
    if (a4 == 0.0 && a5 >= 6.28318531 && v8 < 0.000001 && a6 != 0)
    {
      v13.origin = vsubq_f64(*a2, vdupq_lane_s64(*&a3, 0));
      v13.size.width = a3 + a3;
      v13.size.height = a3 + a3;
      v10 = 1;
LABEL_16:
      CG::Path::append_ellipse(this, &v13, 0, v10, a7);
      return;
    }

    if (a4 == 0.0 && fabs(v8) < 0.000001 && a6 == 0)
    {
      v13.origin = vsubq_f64(*a2, vdupq_lane_s64(*&a3, 0));
      v13.size.width = a3 + a3;
      v13.size.height = a3 + a3;
      v10 = 0;
      goto LABEL_16;
    }
  }

  if (a6)
  {
    if (a4 < a5)
    {
      a4 = a4 + ceil((a4 - a5) / -6.28318531) * 6.28318531;
      if (a4 < a5)
      {
        _CGHandleAssert("add_arc", 35, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Paths/path-subpath-arc.cc", "start >= end", "clockwise: start angle %f not less than end angle %f", a4, a5);
      }
    }
  }

  else if (a5 < a4)
  {
    a5 = a5 + ceil((a5 - a4) / -6.28318531) * 6.28318531;
    if (a5 < a4)
    {
      _CGHandleAssert("add_arc", 41, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Paths/path-subpath-arc.cc", "end >= start", "widdershins: end angle %f not less than start angle %f", a5, a4);
    }
  }

  v12 = a5 - a4;

  CG::Path::add_arc_relative(this, a2, a3, a4, v12, a7, 0);
}

void CG::Path::add_arc_relative(CG::Path *this, float64x2_t *a2, float64_t a3, double a4, double a5, float64x2_t *a6, int a7)
{
  v9 = a5;
  v13 = *this;
  if (*this || (v14 = fabs(a5), v14 > 7.85398163))
  {
    v15 = fabs(a5);
    v17 = __sincos_stret(a4);
    v18 = v17.__cosval * a3;
    v19 = v17.__sinval * a3;
    v20.n128_f64[0] = v17.__cosval * a3 + a2->f64[0];
    v20.n128_f64[1] = v17.__sinval * a3 + a2->f64[1];
    v21 = (v13 - 10) >= 0xFFFFFFF7 && a7 == 0;
    v52 = v20;
    if (v21)
    {
      CG::Path::add_line_to_point(this, a6, v16, v20);
    }

    else
    {
      CG::Path::move_to_point(this, a6, v16, v20);
    }

    v23 = 1.57079633;
    if (v15 >= 1.57079633)
    {
      v58 = dbl_18439CF50[v9 >= 0.0];
      v57 = dbl_18439CF60[v9 >= 0.0];
      v54 = v9;
      v55 = -v57;
      v28 = v9;
      v26 = a4;
      v27 = v52;
      do
      {
        v29 = v23;
        if (v54 < 0.0)
        {
          v25 = v19;
        }

        else
        {
          v25 = -v19;
        }

        if (v54 < 0.0)
        {
          v24 = -v18;
        }

        else
        {
          v24 = v18;
        }

        v30.f64[0] = v27.x + v55 * v19;
        v30.f64[1] = v27.y + v57 * v18;
        v31 = v24 + a2->f64[1];
        v61.x = v25 + a2->f64[0];
        v61.y = v31;
        v60.x = v61.x + v57 * v24;
        v60.y = v31 + v55 * v25;
        CG::Path::add_curve_to_point(this, &v60, &v61, a6, v22, v30);
        v23 = v29;
        v26 = v58 + v26;
        v9 = v28 - v58;
        v27 = v61;
        v15 = vabdd_f64(v28, v58);
        v28 = v28 - v58;
        v18 = v25;
        v19 = v24;
      }

      while (v15 >= v23);
    }

    else
    {
      v24 = v17.__sinval * a3;
      v25 = v17.__cosval * a3;
      v26 = a4;
      v27 = v52;
    }

    if (v15 > 0.00000001)
    {
      v32 = v26;
      v53 = v27;
      v33 = __sincos_stret(v9 * 0.5);
      v34 = (1.0 - v33.__cosval) * 4.0 / (v33.__sinval * 3.0);
      v35 = __sincos_stret(v9 + v32);
      v36.f64[0] = v53.x - v34 * v24;
      v36.f64[1] = v53.y + v34 * v25;
      v37 = v35.__sinval * a3 + a2->f64[1];
      v61.x = v35.__cosval * a3 + a2->f64[0];
      v61.y = v37;
      v60.x = v61.x + v34 * (v35.__sinval * a3);
      v60.y = v37 - v34 * (v35.__cosval * a3);
      CG::Path::add_curve_to_point(this, &v60, &v61, a6, v38, v36);
    }
  }

  else
  {
    v39 = v14;
    if (v14 >= 1.57079633)
    {
      v39 = v14;
      do
      {
        v39 = v39 + -1.57079633;
      }

      while (v39 >= 1.57079633);
    }

    v40 = v39 * 0.25;
    v41.f64[0] = 0.0;
    v41.f64[1] = a3;
    v56 = v41;
    v59 = *a2;
    v42 = __sincos_stret(a4);
    v43 = vmlaq_n_f64(vmulq_n_f64(v56, v42.__sinval), *&a3, v42.__cosval);
    v44 = vmlsq_lane_f64(vmulq_n_f64(v56, v42.__cosval), *&a3, v42.__sinval, 0);
    v45 = vaddq_f64(v59, vmlaq_f64(vmulq_f64(v56, 0), 0, *&a3));
    v46 = vdup_n_s32(v9 < 0.0);
    v47.i64[0] = v46.u32[0];
    v47.i64[1] = v46.u32[1];
    v48 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v47, 0x3FuLL)), vnegq_f64(v44), v44);
    *this = 6;
    *(this + 7) = v14;
    if (a6)
    {
      v49 = a6[1];
      v45 = vaddq_f64(a6[2], vmlaq_n_f64(vmulq_laneq_f64(v49, v45, 1), *a6, v45.f64[0]));
      v43 = vmlaq_n_f64(vmulq_laneq_f64(v49, v43, 1), *a6, v43.f64[0]);
      v48 = vmlaq_n_f64(vmulq_laneq_f64(v49, v48, 1), *a6, v48.f64[0]);
    }

    *(this + 8) = v43;
    *(this + 24) = v48;
    *(this + 40) = v45;
    *(this + 8) = cos(v9);
    *(this + 9) = sin(v14);
    *(this + 10) = tan(v40) * 1.33333333;
  }
}

void CGContextSetFlatness(CGContextRef c, CGFloat flatness)
{
  if (c && *(c + 4) == 1129601108)
  {
    if (flatness >= 0.0)
    {
      v3 = *(c + 12);
      if (*(*(v3 + 144) + 8) != flatness)
      {
        maybe_copy_device_state(*(c + 12));
        *(*(v3 + 144) + 8) = flatness;
      }
    }

    else
    {
      CGPostError("%s: invalid flatness: %g", "CGContextSetFlatness", flatness);
    }
  }

  else
  {

    handle_invalid_context("CGContextSetFlatness", c);
  }
}

unint64_t CGBitmapAllocateData(unint64_t a1)
{
  if (a1 > 0x7FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v2 = (a1 + *MEMORY[0x1E69E9AC8] + 48) & -*MEMORY[0x1E69E9AC8];
  v3 = mmap(0, v2, 3, 4098, 872415232, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  result = (v3 + 48) & 0xFFFFFFFFFFFFFFE0;
  *(result - 16) = v2;
  *(result - 8) = result - v4;
  return result;
}

void CGContextClearRect(CGContextRef c, CGRect rect)
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(c);
  CGContextSetCompositeOperation(c, 0);
  v8.origin.x = x;
  v8.origin.y = y;
  v8.size.width = width;
  v8.size.height = height;
  CGContextFillRect(c, v8);

  CGContextRestoreGState(c);
}

void CGContextSetCompositeOperation(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    v4 = 0;

    goto LABEL_9;
  }

  if (*(a1 + 16) != 1129601108)
  {
    v4 = a1;

LABEL_9:
    handle_invalid_context("CGContextSetCompositeOperation", v4);
    return;
  }

  if (a2 >= 0x1C)
  {
    CGPostError("%s: invalid composite operation %d", "CGContextSetCompositeOperation", a2);
  }

  else
  {
    v3 = *(a1 + 96);

    CGGStateSetCompositeOperation(v3, a2);
  }
}

void CGContextFillRects(CGContextRef c, const CGRect *rects, size_t count)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v6 = *(c + 21);
      if (v6)
      {
        CFRelease(v6);
        *(c + 21) = 0;
      }

      if (rects)
      {
        if (count)
        {
          v7 = *(c + 5);
          if (v7)
          {
            v8 = *(v7 + 64);
            if (!v8 || v8() == 1006)
            {
              CGContextAddRects(c, rects, count);

              CGContextDrawPath(c, kCGPathFill);
            }
          }
        }
      }

      return;
    }

    v9 = c;
  }

  else
  {
    v9 = 0;
  }

  handle_invalid_context("CGContextFillRects", v9);
}

uint64_t ripc_DrawRects(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, double *a5, uint64_t a6)
{
  if (a1)
  {
    v10 = *(a1 + 288);
  }

  else
  {
    v10 = 0;
  }

  result = 1000;
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        return result;
      }

      v12 = 0;
      v13 = 4;
    }

    else
    {
      v12 = 0;
      v13 = 2;
    }
  }

  else
  {
    switch(a4)
    {
      case 2:
        v12 = 1;
        v13 = 1;
        break;
      case 3:
        v12 = 0;
        v13 = 3;
        break;
      case 4:
        v12 = 0;
        v13 = 5;
        break;
      default:
        return result;
    }
  }

  memset(v24, 0, sizeof(v24));
  v22 = 0;
  result = ripc_GetRenderingState(v10, a2, a3, v24);
  if (result)
  {
    v14.n128_u64[0] = *(*(a3 + 144) + 8);
    v21 = *(v10 + 24);
    v15 = *(v10 + 40);
    v20[0] = v14.n128_u64[0];
    v20[1] = v15;
    if (a2[81] == 1)
    {
      v16 = *(*(a3 + 120) + 7) & 1;
    }

    else
    {
      v16 = 0;
    }

    LOBYTE(v22) = v16;
    v23 = &v24[1] + 8;
    if ((v12 & 1) == 0)
    {
      v17 = *(v10 + 56);
      if (!v17)
      {
        v17 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
        *v17 = RIPRenderCreate_ripr_class;
        v17[2] = 1;
        *(v17 + 2) = 0;
        *(v10 + 56) = v17;
      }

      RIPRenderRectangles(v17, v20, (a3 + 24), a5, a6, 0);
    }

    if (v13)
    {
      memset(v19, 0, sizeof(v19));
      ripc_GetRenderStroke(a3, v19, (a3 + 24));
      v18 = *(v10 + 64);
      if (!v18)
      {
        v18 = malloc_type_calloc(1uLL, 0xB8uLL, 0x10E00404058A599uLL);
        *v18 = RIPRenderCreate_ripr_class;
        v18[2] = 1;
        *(v18 + 2) = 0;
        *(v10 + 64) = v18;
      }

      RIPRenderRectangles(v18, v20, (a3 + 24), a5, a6, v19);
    }

    ripc_Render(v10, a2, a3, v24, v13, v14);
    return 0;
  }

  return result;
}

void *RIPRenderRectangles(void *result, uint64_t a2, double *a3, double *a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    v6 = a5;
    if (a5)
    {
      if (a4 && a2 && *result)
      {
        v10 = *a3;
        v9 = a3[1];
        v11 = a3[2];
        v12 = a3[3];
        v13 = v12 == 0.0 && *a3 == 0.0;
        if (v13)
        {
          v14 = 0;
          v15 = 1;
        }

        else
        {
          v15 = v11 == 0.0 && v9 == 0.0;
          v14 = v15;
        }

        v16 = a3[4];
        v17 = a3[5];
        if (!a6 && a5 == 1 && v15 && !result[2])
        {
          v31 = *(a2 + 8);
          v32 = v16 * v31;
          v33 = v17 * v31;
          v34 = *a4;
          v35 = a4[1];
          if (v14)
          {
            v36 = v10 * v31;
            v37 = v12 * v31;
            v38 = v32 + v10 * v31 * v34;
            v39 = v33 + v37 * v35;
            v40 = a4[2];
            v41 = a4[3];
          }

          else
          {
            v36 = v11 * v31;
            v37 = v9 * v31;
            v38 = v32 + v11 * v31 * v35;
            v39 = v33 + v37 * v34;
            v41 = a4[2];
            v40 = a4[3];
          }

          v48 = v38 + v36 * v40;
          v49 = v39 + v37 * v41;
          if (v38 <= v48)
          {
            v50 = v48;
          }

          else
          {
            v50 = v38;
          }

          if (v38 > v48)
          {
            v38 = v48;
          }

          if (v38 < -4194303.0)
          {
            v38 = -4194303.0;
          }

          v51.f64[0] = v38 * 256.0 + 0.5;
          if (v50 <= 4194303.0)
          {
            v52 = v50;
          }

          else
          {
            v52 = 4194303.0;
          }

          v53.f64[0] = v52 * 256.0 + 0.5;
          if (v51.f64[0] < v53.f64[0])
          {
            if (v39 <= v49)
            {
              v54 = v39;
            }

            else
            {
              v54 = v39 + v37 * v41;
            }

            if (v39 > v49)
            {
              v49 = v39;
            }

            if (v54 >= -4194303.0)
            {
              v55 = v54;
            }

            else
            {
              v55 = -4194303.0;
            }

            v56 = v55 * 256.0 + 0.5;
            if (v49 > 4194303.0)
            {
              v49 = 4194303.0;
            }

            v57 = v49 * 256.0 + 0.5;
            if (v56 < v57)
            {
              v51.f64[1] = v56;
              v58 = vmovn_s64(vcvtq_s64_f64(v51));
              v53.f64[1] = v57;
              v59 = vmovn_s64(vcvtq_s64_f64(v53));
              v60 = *(a2 + 40);
              if (v60)
              {
                v58 = vmax_s32(vshl_n_s32(*v60, 8uLL), v58);
                v59 = vmin_s32(vshl_n_s32(vadd_s32(v60[1], *v60), 8uLL), v59);
              }

              v61 = *&vadd_s32(v59, 0xFF000000FFLL) & 0xFFFFFF00FFFFFF00;
              if (*(a2 + 32))
              {
                v62 = -1;
              }

              else
              {
                v62 = 0;
              }

              v63 = vdup_n_s32(v62);
              v64 = vbsl_s8(v63, v58, (*&v58 & 0xFFFFFF00FFFFFF00));
              v65 = vbsl_s8(v63, v59, v61);
              v66 = vcgt_s32(v65, v64);
              if (v66.i32[0] & v66.i32[1])
              {
                result[21] = v64;
                result[22] = v65;
                result[2] = result + 21;
              }
            }
          }
        }

        else
        {
          result = ripr_Acquire(result, a2);
          if (result)
          {
            v83 = v17;
            v84 = v16;
            if (a6)
            {
              v86 = 0;
              memset(v85, 0, sizeof(v85));
              ripr_stroke_acquire(result, v85, a6, 0.0, v19, v20, v21);
            }

            v23 = result[3];
            if (v14)
            {
              v24 = a4 + 2;
              do
              {
                v25 = v16 + v10 * *(v24 - 2);
                v26 = v17 + v12 * *(v24 - 1);
                v27 = *v24;
                v28 = v24[1];
                v24 += 4;
                v29 = v25 + v10 * v27;
                v30 = v26 + v12 * v28;
                *&v25 = v25;
                *&v26 = v26;
                *&v29 = v29;
                *&v30 = v30;
                result = aa_rectat(v23, *&v25, *&v26, *&v29, *&v30, v22);
                --v6;
              }

              while (v6);
            }

            else if (v13)
            {
              v42 = a4 + 2;
              do
              {
                v43 = v17 + v9 * *(v42 - 2);
                v44 = v16 + v11 * *(v42 - 1);
                v45 = *v42;
                v46 = v42[1];
                v42 += 4;
                v22.f64[0] = v43 + v9 * v45;
                v47 = v44 + v11 * v46;
                *&v44 = v44;
                *&v45 = v43;
                *&v43 = v47;
                *&v47 = v22.f64[0];
                result = aa_rectat(v23, *&v44, *&v45, *&v43, *&v47, v22);
                --v6;
              }

              while (v6);
            }

            else
            {
              v67 = a4 + 2;
              do
              {
                v18.n128_f64[0] = *(v67 - 2);
                v68 = *(v67 - 1);
                v69 = v84 + v11 * v68 + v10 * v18.n128_f64[0];
                v18.n128_f64[0] = v12 * v68 + v9 * v18.n128_f64[0];
                v70 = v83 + v18.n128_f64[0];
                v71 = *v67;
                v72 = v67[1];
                v67 += 4;
                v18.n128_f32[0] = v69;
                *&v68 = v70;
                v73 = aa_moveto(v23, v18, *&v68);
                v74 = v69 + v10 * v71;
                v75 = v70 + v9 * v71;
                *&v73 = v74;
                v76 = v75;
                aa_lineto(v23, *&v73, v76);
                v77 = v74 + v11 * v72;
                v78 = v75 + v12 * v72;
                v79.f32[0] = v77;
                v80 = v78;
                aa_lineto(v23, v79, v80);
                v81 = v77 + -v10 * v71;
                *&v81 = v81;
                v82 = v78 + -v9 * v71;
                aa_lineto(v23, *&v81, v82);
                result = aa_close(v23);
                --v6;
              }

              while (v6);
            }
          }
        }
      }
    }
  }

  return result;
}

void CGBlt_fillBytes(int a1, unsigned int a2, int a3, char *__b, int a5)
{
  __pattern4 = a3;
  if (a1 >= 1 && a2 >= 1)
  {
    v5 = __b;
    if (a1 == 2)
    {
      if (a2)
      {
        *__b = HIWORD(a3);
        v5 = &__b[a5];
      }

      if (a2 >= 2)
      {
        v7 = a2 >> 1;
        do
        {
          *v5 = HIWORD(a3);
          *&v5[a5] = HIWORD(a3);
          v5 += a5 + a5;
          --v7;
        }

        while (v7);
      }
    }

    else if (a1 == 1)
    {
      if (a2)
      {
        *__b = HIBYTE(a3);
        v5 = &__b[a5];
      }

      if (a2 >= 2)
      {
        v6 = a2 >> 1;
        do
        {
          *v5 = HIBYTE(a3);
          v5[a5] = HIBYTE(a3);
          v5 += a5 + a5;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v8 = a1 == a5;
      v9 = (a1 & 3) == 0;
      v10 = !v9 || !v8;
      if (v9 && v8)
      {
        v11 = a2;
      }

      else
      {
        v11 = 1;
      }

      v12 = v11 * a1;
      if (v10)
      {
        v13 = a2;
      }

      else
      {
        v13 = 1;
      }

      v14 = a5;
      if (a3)
      {
        do
        {
          memset_pattern4(v5, &__pattern4, v12);
          v5 += v14;
          --v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          bzero(v5, v12);
          v5 += v14;
          --v13;
        }

        while (v13);
      }
    }
  }
}

void CGContextFillRect(CGContextRef c, CGRect rect)
{
  v7 = rect;
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    CGContextFillRects(c, &v7, 1uLL);
  }
}

CFHashCode color_hash(CFHashCode result)
{
  v1 = result;
  if ((result & 0x8000000000000000) == 0)
  {
    result = *(result + 48);
    if (!result)
    {
      v2 = CFHash(*(v1 + 24));
      v3 = *(v1 + 56);
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          v2 ^= i + (*(v1 + 72 + 8 * i) * 4294967300.0);
        }
      }

      result = v2 ^ *(v1 + 64);
      *(v1 + 48) = result;
    }
  }

  return result;
}

_DWORD *argb32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_15092(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD30;
    a2[6] = 0;
    a2[12] = v8;
    *(a2 + 2) = 1;
    if (HIBYTE(v8) == 255)
    {
      v9 = 0;
    }

    else
    {
      v9 = a2 + 12;
    }

    *(a2 + 4) = a2 + 12;
    *(a2 + 5) = v9;
  }

  return a2;
}

uint64_t argb32_mark(uint64_t *a1, int *a2, double a3, double a4, double a5, int16x8_t a6)
{
  v6 = a2;
  v7 = *a1;
  if (a2[33])
  {
    if (CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken != -1)
    {
      dispatch_once(&CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::onceToken, &__block_literal_global_15_13920);
    }

    v8 = CGPreferencesCheck<CGImageMarkAllowTemplateMethodInteger>(void)::result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *v6;
  v10 = *(v6 + 12);
  v621 = *(v6 + 6);
  v11 = *(*(v7 + 56) + 16 * *v6 + 8 * (v10 == 0) + 4 * (v621 == 0));
  if (v11 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v6[1];
  v14 = v13 - 1;
  if (v13 < 1)
  {
    return 0;
  }

  v15 = v6[2];
  if (v15 < 1)
  {
    return 0;
  }

  if (v11 >= 24)
  {
    if (*v7 == 134755208)
    {
      v11 = (v11 + 4);
    }

    else
    {
      v11 = v11;
    }
  }

  v16 = *(v6 + 17);
  if ((v9 & 0xFF0000) != 0x50000 && v16)
  {
    v17 = v6[32];
    if ((v17 | 8) == 8)
    {
      if ((*v6 & 0xFF00) == 0x400)
      {
        if (v11 == 1)
        {
          argb32_mark_constcolormask(v6, a3, a4, a5, a6);
        }

        else
        {
          argb32_mark_constmask(v6, v11);
        }
      }

      else if ((v8 & 1) != 0 && ((1 << v11) & 0xFFFFFE) != 0)
      {
        argb32_mark_pixelmask_template(v6, v11);
      }

      else
      {
        argb32_mark_pixelmask(v6, v11);
      }
    }

    else
    {
      v36 = v11 - 1;
      if ((*v6 & 0xFF00) == 0x400 && v17 == 16 && v36 <= 1)
      {
        argb32_mark_constdeep(v7, v6);
      }

      else if (v17 != 16 || (*v6 & 0xFF00) == 0x400 || v36 > 1)
      {
        argb32_mark_bits(v6);
      }

      else
      {
        argb32_mark_pixeldeep(v7, v6);
      }
    }

    return 1;
  }

  v601 = v6;
  v610 = v11;
  if (BYTE1(v9) == 1)
  {
    if ((v8 & 1) != 0 && ((1 << v11) & 0xFFFFFE) != 0)
    {
      argb32_mark_pixelshape_template(v6, v11);
      return 1;
    }

LABEL_29:
    v623 = v6[2];
    v624[0] = v13;
    v25 = *(v6 + 11);
    v26 = v6[7] >> 2;
    v27 = *(v6 + 5) + 4 * v26 * v6[4] + 4 * v6[3];
    v28 = v6[14];
    v29 = v6[15];
    v30 = v6[19] >> 2;
    if ((v9 & 0xFF00) != 0x100)
    {
      v35 = v6[16];
      v603 = v6[17];
      v614 = v25 + 4 * v30 * v603;
      v37 = v10 != 0;
      if (v16)
      {
        v617 = v6[19] >> 2;
        v599 = v6[15];
        v600 = v6[14];
        v34 = 1;
        v619 = *(v6 + 11);
        v38 = v619;
        goto LABEL_60;
      }

      v615 = v26 - v13;
      if (v25)
      {
        v609 = 0;
        v617 = v6[19] >> 2;
        v40 = v25 + 4 * v30 * (v29 % v603);
        v600 = v28 % v35;
        v41 = v40 + 4 * (v28 % v35);
        v38 = v40 + 4 * v35;
        v602 = 1;
        v619 = v41;
        v42 = (*(v6 + 5) + 4 * v26 * v6[4] + 4 * v6[3]);
        v599 = v29 % v603;
        v32 = v621;
        goto LABEL_64;
      }

      v599 = v6[15];
      v600 = v6[14];
      v38 = 0;
      v602 = 1;
      v43 = v13;
      v32 = v621;
      goto LABEL_63;
    }

    v25 += 4 * v30 * v29 + 4 * v28;
    if (v30 == v26)
    {
      v31 = (v27 - v25) >> 2;
      v32 = v621;
      if (v31 >= 1)
      {
        if (v31 <= v13)
        {
          v27 += 4 * v14;
          v34 = -1;
          v35 = v6[7] >> 2;
          v25 += 4 * v14;
          goto LABEL_58;
        }

        v33 = v26 * (v15 - 1);
        if (v27 <= v25 + 4 * v33 + 4 * v13 - 4)
        {
          v27 += 4 * v33;
          v35 = -v26;
          v34 = 1;
          v25 += 4 * v33;
          v26 = -v26;
          goto LABEL_58;
        }
      }

      v34 = 1;
      v35 = v6[7] >> 2;
    }

    else
    {
      v34 = 1;
      v35 = v6[19] >> 2;
      v32 = v621;
    }

LABEL_58:
    v599 = v6[15];
    v600 = v6[14];
    v37 = v10 != 0;
    if (v16)
    {
      v603 = 0;
      v619 = 0;
      v614 = 0;
      v38 = -1;
      v617 = v35;
LABEL_60:
      v602 = v34;
      shape_enum_clip_alloc(a1, a2, v16, v34, v26, 1, v6[26], v6[27], v13, v15);
      v45 = v44;
      if (!v44)
      {
        return 1;
      }

      goto LABEL_766;
    }

    v602 = v34;
    v603 = 0;
    v43 = v34 * v13;
    v615 = v26 - v43;
    v38 = -1;
    v30 = v35;
LABEL_63:
    v609 = 0;
    v614 = 0;
    v617 = v30 - v43;
    v619 = 0;
    v41 = v25;
    v42 = v27;
LABEL_64:
    while (2)
    {
      v611 = v13;
      switch(v11)
      {
        case 0:
          v46 = v42 - 4 * v13 + 4;
          v47 = v615 + v13;
          if (v602 < 0)
          {
            v47 = v615 - v13;
          }

          else
          {
            v46 = v42;
          }

          v48 = (v46 + 4 * ((v47 * (v623 - 1)) & (v47 >> 63)));
          if (v47 < 0)
          {
            v47 = -v47;
          }

          CGBlt_fillBytes(4 * v13, v623, 0, v48, 4 * v47);
          goto LABEL_764;
        case 1:
          if (BYTE1(*v6) == 2)
          {
            if (v13 >= 8 && (4 * v35) <= 0x40)
            {
              LODWORD(a3) = 4 * v35;
              v414 = vcnt_s8(*&a3);
              v414.i16[0] = vaddlv_u8(v414);
              if (v414.i32[0] <= 1u)
              {
                CGSFillDRAM64(v42, 4 * (v13 + v615), 4 * v13, v623, v25, 4 * v617, 4 * v35, v603, 4 * v600, v599);
                goto LABEL_764;
              }
            }
          }

          else if (BYTE1(*v6) == 1)
          {
            if (v32 == 0 || v37)
            {
              if (v602 < 0)
              {
                v191 = v617 - v13;
                v439 = 4 * v13 - 4;
                v41 -= v439;
                v192 = v615 - v13;
                v42 = (v42 - v439);
              }

              else
              {
                v191 = v617 + v13;
                v192 = v615 + v13;
              }

              v440 = (v41 + 4 * ((v191 * (v623 - 1)) & (v191 >> 63)));
              if (v191 >= 0)
              {
                v441 = v191;
              }

              else
              {
                v441 = -v191;
              }

              if (v192 >= 0)
              {
                LODWORD(v442) = v192;
              }

              else
              {
                v442 = -v192;
              }

              v617 = v441;
              CGBlt_copyBytes(4 * v13, v623, v440, v42 + 4 * ((v192 * (v623 - 1)) & (v192 >> 63)), 4 * v441, 4 * v442);
            }

            else
            {
              do
              {
                v423 = v624[0];
                do
                {
                  v42->i32[0] = *v41 | 0xFF000000;
                  v424 = v41 + 4 * v602;
                  if (v424 >= v38)
                  {
                    v425 = -v35;
                  }

                  else
                  {
                    v425 = 0;
                  }

                  v41 = v424 + 4 * v425;
                  v42 = (v42 + 4 * v602);
                  --v423;
                }

                while (v423);
                v42 = (v42 + 4 * v615);
                v426 = v619;
                v427 = v619 + 4 * v617;
                if (v427 >= v614)
                {
                  v428 = -(v617 * v603);
                }

                else
                {
                  v428 = 0;
                }

                v429 = v427 + 4 * v428;
                v430 = v38 + 4 * v428 + 4 * v617;
                if (v614)
                {
                  v38 = v430;
                  v426 = v429;
                }

                v619 = v426;
                if (v614)
                {
                  v41 = v429;
                }

                else
                {
                  v41 += 4 * v617;
                }

                --v623;
              }

              while (v623);
            }

            goto LABEL_764;
          }

          if ((*v6 & 0xFF00) == 0x200)
          {
            blt_bitmap_copy_XXXX32(v13, v623, v42, v615 + v13, v35, v603, v25, v617, v600, v599);
          }

          else if (v32 == 0 || v37)
          {
            do
            {
              v415 = v624[0];
              do
              {
                v42->i32[0] = *v41;
                v416 = v41 + 4 * v602;
                if (v416 >= v38)
                {
                  v417 = -v35;
                }

                else
                {
                  v417 = 0;
                }

                v41 = v416 + 4 * v417;
                v42 = (v42 + 4 * v602);
                --v415;
              }

              while (v415);
              v42 = (v42 + 4 * v615);
              v418 = v619;
              v419 = v619 + 4 * v617;
              if (v419 >= v614)
              {
                v420 = -(v617 * v603);
              }

              else
              {
                v420 = 0;
              }

              v421 = v419 + 4 * v420;
              v422 = v38 + 4 * v420 + 4 * v617;
              if (v614)
              {
                v38 = v422;
                v418 = v421;
              }

              v619 = v418;
              if (v614)
              {
                v41 = v421;
              }

              else
              {
                v41 += 4 * v617;
              }

              --v623;
            }

            while (v623);
          }

          else
          {
            do
            {
              v431 = v624[0];
              do
              {
                v42->i32[0] = *v41 | 0xFF000000;
                v432 = v41 + 4 * v602;
                if (v432 >= v38)
                {
                  v433 = -v35;
                }

                else
                {
                  v433 = 0;
                }

                v41 = v432 + 4 * v433;
                v42 = (v42 + 4 * v602);
                --v431;
              }

              while (v431);
              v42 = (v42 + 4 * v615);
              v434 = v619;
              v435 = v619 + 4 * v617;
              if (v435 >= v614)
              {
                v436 = -(v617 * v603);
              }

              else
              {
                v436 = 0;
              }

              v437 = v435 + 4 * v436;
              v438 = v38 + 4 * v436 + 4 * v617;
              if (v614)
              {
                v38 = v438;
                v434 = v437;
              }

              v619 = v434;
              if (v614)
              {
                v41 = v437;
              }

              else
              {
                v41 += 4 * v617;
              }

              --v623;
            }

            while (v623);
          }

          goto LABEL_764;
        case 2:
          if (*(v6 + 1) << 8 != 512)
          {
            v605 = v25;
            v606 = v26;
            v607 = v27;
            v604 = v35;
            do
            {
              v401 = v624[0];
              do
              {
                v402 = *v41;
                v403 = HIBYTE(*v41);
                if (v403)
                {
                  if (v403 == 255)
                  {
                    v42->i32[0] = v402;
                  }

                  else
                  {
                    DplusDM_15070(v42, v402, v42->i32[0], ~v402 >> 24);
                  }
                }

                v404 = v41 + 4 * v602;
                if (v404 >= v38)
                {
                  v405 = -v35;
                }

                else
                {
                  v405 = 0;
                }

                v41 = v404 + 4 * v405;
                v42 = (v42 + 4 * v602);
                --v401;
              }

              while (v401);
              v42 = (v42 + 4 * v615);
              v406 = v619;
              v407 = v619 + 4 * v617;
              if (v407 >= v614)
              {
                v408 = -(v617 * v603);
              }

              else
              {
                v408 = 0;
              }

              v409 = v407 + 4 * v408;
              v410 = v38 + 4 * v408 + 4 * v617;
              if (v614)
              {
                v38 = v410;
                v406 = v409;
              }

              v619 = v406;
              if (v614)
              {
                v41 = v409;
              }

              else
              {
                v41 += 4 * v617;
              }

              --v623;
            }

            while (v623);
            goto LABEL_762;
          }

          blt_bitmap_blend_AXXX32(v13, v623, v42, v615 + v13, v35, v603, v25, v617, v600, v599);
          goto LABEL_764;
        case 3:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          do
          {
            v171 = v624[0];
            do
            {
              v172 = HIBYTE(v42->i32[0]);
              if (v172 == 255)
              {
                v173 = *v41 & 0xFF000000;
                if (!v37)
                {
                  v173 = -16777216;
                }

                v42->i32[0] = v173 & 0xFF000000 | *v41 & 0xFFFFFF;
              }

              else if (v172)
              {
                v174 = HIBYTE(*v41);
                if (!v37)
                {
                  LOBYTE(v174) = -1;
                }

                DAM(v42, *v41, v174, v172);
              }

              else
              {
                v42->i32[0] = 0;
              }

              v175 = v41 + 4 * v602;
              if (v175 >= v38)
              {
                v176 = -v35;
              }

              else
              {
                v176 = 0;
              }

              v41 = v175 + 4 * v176;
              v42 = (v42 + 4 * v602);
              --v171;
            }

            while (v171);
            v42 = (v42 + 4 * v615);
            v177 = v619;
            v178 = v619 + 4 * v617;
            v179 = -(v617 * v603);
            if (v178 < v614)
            {
              v179 = 0;
            }

            v180 = v178 + 4 * v179;
            v181 = v38 + 4 * v179 + 4 * v617;
            if (v614)
            {
              v38 = v181;
              v177 = v180;
            }

            v619 = v177;
            if (v614)
            {
              v41 = v180;
            }

            else
            {
              v41 += 4 * v617;
            }

            --v623;
          }

          while (v623);
          goto LABEL_762;
        case 4:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          do
          {
            v99 = v624[0];
            do
            {
              v100 = v42->i8[3];
              if (~v100 == 255)
              {
                v101 = *v41 & 0xFF000000;
                if (!v37)
                {
                  v101 = -16777216;
                }

                v42->i32[0] = v101 & 0xFF000000 | *v41 & 0xFFFFFF;
              }

              else if (v100 == -1)
              {
                v42->i32[0] = 0;
              }

              else
              {
                v102 = ~v100;
                v103 = HIBYTE(*v41);
                if (!v37)
                {
                  LOBYTE(v103) = -1;
                }

                DAM(v42, *v41, v103, v102);
              }

              v104 = v41 + 4 * v602;
              if (v104 >= v38)
              {
                v105 = -v35;
              }

              else
              {
                v105 = 0;
              }

              v41 = v104 + 4 * v105;
              v42 = (v42 + 4 * v602);
              --v99;
            }

            while (v99);
            v42 = (v42 + 4 * v615);
            v106 = v619;
            v107 = v619 + 4 * v617;
            v108 = -(v617 * v603);
            if (v107 < v614)
            {
              v108 = 0;
            }

            v109 = v107 + 4 * v108;
            v110 = v38 + 4 * v108 + 4 * v617;
            if (v614)
            {
              v38 = v110;
              v106 = v109;
            }

            v619 = v106;
            if (v614)
            {
              v41 = v109;
            }

            else
            {
              v41 += 4 * v617;
            }

            --v623;
          }

          while (v623);
          goto LABEL_762;
        case 5:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          v232 = -v35;
          v233 = v623;
          do
          {
            v234 = v13;
            do
            {
              DMplusDM_15069(v42, *v41, HIBYTE(v42->i32[0]), v42->i32[0], ~*v41 >> 24);
              v235 = v41 + 4 * v602;
              if (v235 >= v38)
              {
                v236 = v232;
              }

              else
              {
                v236 = 0;
              }

              v41 = v235 + 4 * v236;
              v42 = (v42 + 4 * v602);
              --v234;
            }

            while (v234);
            v42 = (v42 + 4 * v615);
            v237 = v619;
            v238 = v619 + 4 * v617;
            v239 = -(v617 * v603);
            if (v238 < v614)
            {
              v239 = 0;
            }

            v240 = v238 + 4 * v239;
            v241 = v38 + 4 * v239 + 4 * v617;
            if (v614)
            {
              v38 = v241;
              v237 = v240;
            }

            v619 = v237;
            if (v614)
            {
              v41 = v240;
            }

            else
            {
              v41 += 4 * v617;
            }

            v623 = --v233;
            LODWORD(v13) = v611;
          }

          while (v233);
          goto LABEL_762;
        case 6:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          do
          {
            v268 = v624[0];
            do
            {
              if (~HIBYTE(v42->i32[0]))
              {
                if (~HIBYTE(v42->i32[0]) == 255)
                {
                  v269 = *v41 & 0xFF000000;
                  if (!v37)
                  {
                    v269 = -16777216;
                  }

                  v42->i32[0] = v269 & 0xFF000000 | *v41 & 0xFFFFFF;
                }

                else
                {
                  v270 = HIBYTE(*v41);
                  if (!v37)
                  {
                    LOBYTE(v270) = -1;
                  }

                  DplusDAM(v42, v42->i32[0], *v41, v270, ~HIBYTE(v42->i32[0]));
                }
              }

              v271 = v41 + 4 * v602;
              if (v271 >= v38)
              {
                v272 = -v35;
              }

              else
              {
                v272 = 0;
              }

              v41 = v271 + 4 * v272;
              v42 = (v42 + 4 * v602);
              --v268;
            }

            while (v268);
            v42 = (v42 + 4 * v615);
            v273 = v619;
            v274 = v619 + 4 * v617;
            v275 = -(v617 * v603);
            if (v274 < v614)
            {
              v275 = 0;
            }

            v276 = v274 + 4 * v275;
            v277 = v38 + 4 * v275 + 4 * v617;
            if (v614)
            {
              v38 = v277;
              v273 = v276;
            }

            v619 = v273;
            if (v614)
            {
              v41 = v276;
            }

            else
            {
              v41 += 4 * v617;
            }

            --v623;
          }

          while (v623);
          goto LABEL_762;
        case 7:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v182 = v624[0];
            do
            {
              v183 = HIBYTE(*v41);
              if (v183)
              {
                if (v183 == 255)
                {
                  goto LABEL_328;
                }

                v183 = PDM_15068(v42->i32[0], v183);
              }

              v42->i32[0] = v183;
LABEL_328:
              v184 = v41 + 4 * v602;
              if (v184 >= v38)
              {
                v185 = -v35;
              }

              else
              {
                v185 = 0;
              }

              v41 = v184 + 4 * v185;
              v42 = (v42 + 4 * v602);
              --v182;
            }

            while (v182);
            v42 = (v42 + 4 * v615);
            v186 = v619;
            v187 = v619 + 4 * v617;
            if (v187 >= v614)
            {
              v188 = -(v617 * v603);
            }

            else
            {
              v188 = 0;
            }

            v189 = v187 + 4 * v188;
            v190 = v38 + 4 * v188 + 4 * v617;
            if (v614)
            {
              v38 = v190;
              v186 = v189;
            }

            v619 = v186;
            if (v614)
            {
              v41 = v189;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_762;
            }
          }

        case 8:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          do
          {
            v301 = v624[0];
            do
            {
              v302 = *(v41 + 3) ^ 0xFF;
              if (v302)
              {
                if (v302 == 255)
                {
                  goto LABEL_556;
                }

                v302 = PDM_15068(v42->i32[0], v302);
              }

              v42->i32[0] = v302;
LABEL_556:
              v303 = v41 + 4 * v602;
              if (v303 >= v38)
              {
                v304 = -v35;
              }

              else
              {
                v304 = 0;
              }

              v41 = v303 + 4 * v304;
              v42 = (v42 + 4 * v602);
              --v301;
            }

            while (v301);
            v42 = (v42 + 4 * v615);
            v305 = v619;
            v306 = v619 + 4 * v617;
            if (v306 >= v614)
            {
              v307 = -(v617 * v603);
            }

            else
            {
              v307 = 0;
            }

            v308 = v306 + 4 * v307;
            v309 = v38 + 4 * v307 + 4 * v617;
            if (v614)
            {
              v38 = v309;
              v305 = v308;
            }

            v619 = v305;
            if (v614)
            {
              v41 = v308;
            }

            else
            {
              v41 += 4 * v617;
            }

            --v623;
          }

          while (v623);
LABEL_762:
          v6 = v601;
LABEL_763:
          LODWORD(v11) = v610;
          v26 = v606;
          v27 = v607;
          v35 = v604;
          v25 = v605;
LABEL_764:
          v45 = v609;
          if (!v609)
          {
            return 1;
          }

          v622 = 0;
LABEL_766:
          if (!shape_enum_clip_next(v45, &v622 + 1, &v622, v624, &v623))
          {
            v413 = v45;
            goto LABEL_1103;
          }

          v609 = v45;
          if (v614)
          {
            v42 = (v27 + 4 * v26 * v622 + 4 * SHIDWORD(v622));
            LODWORD(v13) = v624[0];
            v411 = v25 + 4 * v617 * ((v622 + v6[15]) % v603);
            v600 = (HIDWORD(v622) + v6[14]) % v35;
            v41 = v411 + 4 * v600;
            v38 = v411 + 4 * v35;
            v619 = v41;
            v412 = v624[0];
            v599 = (v622 + v6[15]) % v603;
          }

          else
          {
            LODWORD(v13) = v624[0];
            v412 = v624[0] * v602;
            v42 = (v27 + 4 * v26 * v622 + 4 * HIDWORD(v622) * v602);
            v41 = v25 + 4 * v622 * v35 + 4 * HIDWORD(v622) * v602;
            v617 = v35 - v624[0] * v602;
          }

          v32 = v621;
          v615 = v26 - v412;
          continue;
        case 9:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          v122 = -v35;
          v123 = v623;
          do
          {
            v124 = v13;
            do
            {
              DMplusDM_15069(v42, *v41, ~v42->i32[0] >> 24, v42->i32[0], HIBYTE(*v41));
              v125 = v41 + 4 * v602;
              if (v125 >= v38)
              {
                v126 = v122;
              }

              else
              {
                v126 = 0;
              }

              v41 = v125 + 4 * v126;
              v42 = (v42 + 4 * v602);
              --v124;
            }

            while (v124);
            v42 = (v42 + 4 * v615);
            v127 = v619;
            v128 = v619 + 4 * v617;
            v129 = -(v617 * v603);
            if (v128 < v614)
            {
              v129 = 0;
            }

            v130 = v128 + 4 * v129;
            v131 = v38 + 4 * v129 + 4 * v617;
            if (v614)
            {
              v38 = v131;
              v127 = v130;
            }

            v619 = v127;
            if (v614)
            {
              v41 = v130;
            }

            else
            {
              v41 += 4 * v617;
            }

            v623 = --v123;
            LODWORD(v13) = v611;
          }

          while (v123);
          goto LABEL_762;
        case 10:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          v291 = -v35;
          v292 = v623;
          do
          {
            v293 = v13;
            do
            {
              DMplusDM_15069(v42, *v41, ~v42->i32[0] >> 24, v42->i32[0], ~*v41 >> 24);
              v294 = v41 + 4 * v602;
              if (v294 >= v38)
              {
                v295 = v291;
              }

              else
              {
                v295 = 0;
              }

              v41 = v294 + 4 * v295;
              v42 = (v42 + 4 * v602);
              --v293;
            }

            while (v293);
            v42 = (v42 + 4 * v615);
            v296 = v619;
            v297 = v619 + 4 * v617;
            v298 = -(v617 * v603);
            if (v297 < v614)
            {
              v298 = 0;
            }

            v299 = v297 + 4 * v298;
            v300 = v38 + 4 * v298 + 4 * v617;
            if (v614)
            {
              v38 = v300;
              v296 = v299;
            }

            v619 = v296;
            if (v614)
            {
              v41 = v299;
            }

            else
            {
              v41 += 4 * v617;
            }

            v623 = --v292;
            LODWORD(v13) = v611;
          }

          while (v292);
          goto LABEL_762;
        case 11:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          v88 = v623;
          do
          {
            v608 = v88;
            v89 = v13;
            do
            {
              v90 = HIBYTE(v42->i32[0]);
              if (!v621)
              {
                LOBYTE(v90) = -1;
              }

              v91 = HIBYTE(*v41);
              if (!v37)
              {
                LOBYTE(v91) = -1;
              }

              DAplusdDA_15071(v42, v42->i32[0], v90, *v41, v91);
              v92 = v41 + 4 * v602;
              if (v92 >= v38)
              {
                v93 = -v35;
              }

              else
              {
                v93 = 0;
              }

              v41 = v92 + 4 * v93;
              v42 = (v42 + 4 * v602);
              --v89;
            }

            while (v89);
            v42 = (v42 + 4 * v615);
            v94 = v619;
            v95 = v619 + 4 * v617;
            v96 = -(v617 * v603);
            if (v95 < v614)
            {
              v96 = 0;
            }

            v97 = v95 + 4 * v96;
            v98 = v38 + 4 * v96 + 4 * v617;
            if (v614)
            {
              v38 = v98;
              v94 = v97;
            }

            v619 = v94;
            if (v614)
            {
              v41 = v97;
            }

            else
            {
              v41 += 4 * v617;
            }

            v88 = v608 - 1;
            v623 = v608 - 1;
            LODWORD(v13) = v611;
          }

          while (v608 != 1);
          goto LABEL_762;
        case 12:
          do
          {
            v111 = v624[0];
            do
            {
              v113 = *v41 >> 8;
              v114 = v113 & 0xFF0000;
              if (!v37)
              {
                v114 = 16711680;
              }

              v112 = (v42->i32[0] >> 8) & 0xFF00FF;
              v42->i32[0] = ((v112 + v113 + v114) << 8) & 0xFF00FF00 | ((*v41 & 0xFF00FF) + (v42->i32[0] & 0xFF00FF)) & 0xFF00FF | (15 * ((v112 + v113 + v114) & 0x1000100 | (((*v41 & 0xFF00FF) + (v42->i32[0] & 0xFF00FFu)) >> 8) & 0x10001)) | (240 * ((v112 + v113 + v114) & 0x1000100 | (((*v41 & 0xFF00FF) + (v42->i32[0] & 0xFF00FFu)) >> 8) & 0x10001));
              v115 = v41 + 4 * v602;
              if (v115 >= v38)
              {
                v116 = -v35;
              }

              else
              {
                v116 = 0;
              }

              v41 = v115 + 4 * v116;
              v42 = (v42 + 4 * v602);
              --v111;
            }

            while (v111);
            v42 = (v42 + 4 * v615);
            v117 = v619;
            v118 = v619 + 4 * v617;
            if (v118 >= v614)
            {
              v119 = -(v617 * v603);
            }

            else
            {
              v119 = 0;
            }

            v120 = v118 + 4 * v119;
            v121 = v38 + 4 * v119 + 4 * v617;
            if (v614)
            {
              v38 = v121;
              v117 = v120;
            }

            v619 = v117;
            if (v614)
            {
              v41 = v120;
            }

            else
            {
              v41 += 4 * v617;
            }

            --v623;
          }

          while (v623);
          goto LABEL_764;
        case 13:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v255 = v624[0];
            do
            {
              if (!v37)
              {
                v256 = 255;
LABEL_468:
                v257 = v42->i32[0];
                if (v32)
                {
                  v258 = HIBYTE(v257);
                  v259 = *v41;
                  if (!HIBYTE(v257))
                  {
                    v260 = v259 & 0xFFFFFF | (v256 << 24);
LABEL_473:
                    v42->i32[0] = v260;
                    goto LABEL_474;
                  }
                }

                else
                {
                  v259 = *v41;
                  v258 = 255;
                }

                v260 = PDAmultiplyPDA_15072(v257, v258, v259, v256);
                v32 = v621;
                goto LABEL_473;
              }

              v256 = HIBYTE(*v41);
              if (v256)
              {
                goto LABEL_468;
              }

LABEL_474:
              v261 = v41 + 4 * v602;
              if (v261 >= v38)
              {
                v262 = -v35;
              }

              else
              {
                v262 = 0;
              }

              v41 = v261 + 4 * v262;
              v42 = (v42 + 4 * v602);
              --v255;
            }

            while (v255);
            v42 = (v42 + 4 * v615);
            v263 = v619;
            v264 = v619 + 4 * v617;
            v265 = -(v617 * v603);
            if (v264 < v614)
            {
              v265 = 0;
            }

            v266 = v264 + 4 * v265;
            v267 = v38 + 4 * v265 + 4 * v617;
            if (v614)
            {
              v38 = v267;
              v263 = v266;
            }

            v619 = v263;
            if (v614)
            {
              v41 = v266;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 14:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v75 = v624[0];
            do
            {
              if (!v37)
              {
                v76 = 255;
LABEL_127:
                v77 = v42->i32[0];
                if (v32)
                {
                  v78 = HIBYTE(v77);
                  v79 = *v41;
                  if (!HIBYTE(v77))
                  {
                    v80 = v79 & 0xFFFFFF | (v76 << 24);
LABEL_132:
                    v42->i32[0] = v80;
                    goto LABEL_133;
                  }
                }

                else
                {
                  v79 = *v41;
                  v78 = 255;
                }

                v80 = PDAscreenPDA_15073(v77, v78, v79, v76);
                v32 = v621;
                goto LABEL_132;
              }

              v76 = HIBYTE(*v41);
              if (v76)
              {
                goto LABEL_127;
              }

LABEL_133:
              v81 = v41 + 4 * v602;
              if (v81 >= v38)
              {
                v82 = -v35;
              }

              else
              {
                v82 = 0;
              }

              v41 = v81 + 4 * v82;
              v42 = (v42 + 4 * v602);
              --v75;
            }

            while (v75);
            v42 = (v42 + 4 * v615);
            v83 = v619;
            v84 = v619 + 4 * v617;
            v85 = -(v617 * v603);
            if (v84 < v614)
            {
              v85 = 0;
            }

            v86 = v84 + 4 * v85;
            v87 = v38 + 4 * v85 + 4 * v617;
            if (v614)
            {
              v38 = v87;
              v83 = v86;
            }

            v619 = v83;
            if (v614)
            {
              v41 = v86;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 15:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v158 = v624[0];
            do
            {
              if (!v37)
              {
                v159 = 255;
LABEL_279:
                v160 = v42->i32[0];
                if (v32)
                {
                  v161 = HIBYTE(v160);
                  v162 = *v41;
                  if (!HIBYTE(v160))
                  {
                    v163 = v162 & 0xFFFFFF | (v159 << 24);
LABEL_284:
                    v42->i32[0] = v163;
                    goto LABEL_285;
                  }
                }

                else
                {
                  v162 = *v41;
                  v161 = 255;
                }

                v163 = PDAoverlayPDA_15074(v160, v161, v162, v159);
                v32 = v621;
                goto LABEL_284;
              }

              v159 = HIBYTE(*v41);
              if (v159)
              {
                goto LABEL_279;
              }

LABEL_285:
              v164 = v41 + 4 * v602;
              if (v164 >= v38)
              {
                v165 = -v35;
              }

              else
              {
                v165 = 0;
              }

              v41 = v164 + 4 * v165;
              v42 = (v42 + 4 * v602);
              --v158;
            }

            while (v158);
            v42 = (v42 + 4 * v615);
            v166 = v619;
            v167 = v619 + 4 * v617;
            v168 = -(v617 * v603);
            if (v167 < v614)
            {
              v168 = 0;
            }

            v169 = v167 + 4 * v168;
            v170 = v38 + 4 * v168 + 4 * v617;
            if (v614)
            {
              v38 = v170;
              v166 = v169;
            }

            v619 = v166;
            if (v614)
            {
              v41 = v169;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 16:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v62 = v624[0];
            do
            {
              if (!v37)
              {
                v63 = 255;
LABEL_102:
                v64 = v42->i32[0];
                if (v32)
                {
                  v65 = HIBYTE(v64);
                  v66 = *v41;
                  if (!HIBYTE(v64))
                  {
                    v67 = v66 & 0xFFFFFF | (v63 << 24);
LABEL_107:
                    v42->i32[0] = v67;
                    goto LABEL_108;
                  }
                }

                else
                {
                  v66 = *v41;
                  v65 = 255;
                }

                v67 = PDAdarkenPDA_15076(v64, v65, v66, v63);
                v32 = v621;
                goto LABEL_107;
              }

              v63 = HIBYTE(*v41);
              if (v63)
              {
                goto LABEL_102;
              }

LABEL_108:
              v68 = v41 + 4 * v602;
              if (v68 >= v38)
              {
                v69 = -v35;
              }

              else
              {
                v69 = 0;
              }

              v41 = v68 + 4 * v69;
              v42 = (v42 + 4 * v602);
              --v62;
            }

            while (v62);
            v42 = (v42 + 4 * v615);
            v70 = v619;
            v71 = v619 + 4 * v617;
            v72 = -(v617 * v603);
            if (v71 < v614)
            {
              v72 = 0;
            }

            v73 = v71 + 4 * v72;
            v74 = v38 + 4 * v72 + 4 * v617;
            if (v614)
            {
              v38 = v74;
              v70 = v73;
            }

            v619 = v70;
            if (v614)
            {
              v41 = v73;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 17:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v206 = v624[0];
            do
            {
              if (!v37)
              {
                v207 = 255;
LABEL_378:
                v208 = v42->i32[0];
                if (v32)
                {
                  v209 = HIBYTE(v208);
                  v210 = *v41;
                  if (!HIBYTE(v208))
                  {
                    v211 = v210 & 0xFFFFFF | (v207 << 24);
LABEL_383:
                    v42->i32[0] = v211;
                    goto LABEL_384;
                  }
                }

                else
                {
                  v210 = *v41;
                  v209 = 255;
                }

                v211 = PDAlightenPDA_15075(v208, v209, v210, v207);
                v32 = v621;
                goto LABEL_383;
              }

              v207 = HIBYTE(*v41);
              if (v207)
              {
                goto LABEL_378;
              }

LABEL_384:
              v212 = v41 + 4 * v602;
              if (v212 >= v38)
              {
                v213 = -v35;
              }

              else
              {
                v213 = 0;
              }

              v41 = v212 + 4 * v213;
              v42 = (v42 + 4 * v602);
              --v206;
            }

            while (v206);
            v42 = (v42 + 4 * v615);
            v214 = v619;
            v215 = v619 + 4 * v617;
            v216 = -(v617 * v603);
            if (v215 < v614)
            {
              v216 = 0;
            }

            v217 = v215 + 4 * v216;
            v218 = v38 + 4 * v216 + 4 * v617;
            if (v614)
            {
              v38 = v218;
              v214 = v217;
            }

            v619 = v214;
            if (v614)
            {
              v41 = v217;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 18:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v278 = v624[0];
            do
            {
              if (!v37)
              {
                v279 = 255;
LABEL_516:
                v280 = v42->i32[0];
                if (v32)
                {
                  v281 = HIBYTE(v280);
                  v282 = *v41;
                  if (!HIBYTE(v280))
                  {
                    v283 = v282 & 0xFFFFFF | (v279 << 24);
LABEL_521:
                    v42->i32[0] = v283;
                    goto LABEL_522;
                  }
                }

                else
                {
                  v282 = *v41;
                  v281 = 255;
                }

                v283 = PDAcolordodgePDA_15077(v280, v281, v282, v279);
                v32 = v621;
                goto LABEL_521;
              }

              v279 = HIBYTE(*v41);
              if (v279)
              {
                goto LABEL_516;
              }

LABEL_522:
              v284 = v41 + 4 * v602;
              if (v284 >= v38)
              {
                v285 = -v35;
              }

              else
              {
                v285 = 0;
              }

              v41 = v284 + 4 * v285;
              v42 = (v42 + 4 * v602);
              --v278;
            }

            while (v278);
            v42 = (v42 + 4 * v615);
            v286 = v619;
            v287 = v619 + 4 * v617;
            v288 = -(v617 * v603);
            if (v287 < v614)
            {
              v288 = 0;
            }

            v289 = v287 + 4 * v288;
            v290 = v38 + 4 * v288 + 4 * v617;
            if (v614)
            {
              v38 = v290;
              v286 = v289;
            }

            v619 = v286;
            if (v614)
            {
              v41 = v289;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 19:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v336 = v624[0];
            do
            {
              if (!v37)
              {
                v337 = 255;
LABEL_625:
                v338 = v42->i32[0];
                if (v32)
                {
                  v339 = HIBYTE(v338);
                  v340 = *v41;
                  if (!HIBYTE(v338))
                  {
                    v341 = v340 & 0xFFFFFF | (v337 << 24);
LABEL_630:
                    v42->i32[0] = v341;
                    goto LABEL_631;
                  }
                }

                else
                {
                  v340 = *v41;
                  v339 = 255;
                }

                v341 = PDAcolorburnPDA_15078(v338, v339, v340, v337);
                v32 = v621;
                goto LABEL_630;
              }

              v337 = HIBYTE(*v41);
              if (v337)
              {
                goto LABEL_625;
              }

LABEL_631:
              v342 = v41 + 4 * v602;
              if (v342 >= v38)
              {
                v343 = -v35;
              }

              else
              {
                v343 = 0;
              }

              v41 = v342 + 4 * v343;
              v42 = (v42 + 4 * v602);
              --v336;
            }

            while (v336);
            v42 = (v42 + 4 * v615);
            v344 = v619;
            v345 = v619 + 4 * v617;
            v346 = -(v617 * v603);
            if (v345 < v614)
            {
              v346 = 0;
            }

            v347 = v345 + 4 * v346;
            v348 = v38 + 4 * v346 + 4 * v617;
            if (v614)
            {
              v38 = v348;
              v344 = v347;
            }

            v619 = v344;
            if (v614)
            {
              v41 = v347;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 20:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v219 = v624[0];
            do
            {
              if (!v37)
              {
                v220 = 255;
LABEL_403:
                v221 = v42->i32[0];
                if (v32)
                {
                  v222 = HIBYTE(v221);
                  v223 = *v41;
                  if (!HIBYTE(v221))
                  {
                    v224 = v223 & 0xFFFFFF | (v220 << 24);
LABEL_408:
                    v42->i32[0] = v224;
                    goto LABEL_409;
                  }
                }

                else
                {
                  v223 = *v41;
                  v222 = 255;
                }

                v224 = PDAsoftlightPDA_15080(v221, v222, v223, v220);
                v32 = v621;
                goto LABEL_408;
              }

              v220 = HIBYTE(*v41);
              if (v220)
              {
                goto LABEL_403;
              }

LABEL_409:
              v225 = v41 + 4 * v602;
              if (v225 >= v38)
              {
                v226 = -v35;
              }

              else
              {
                v226 = 0;
              }

              v41 = v225 + 4 * v226;
              v42 = (v42 + 4 * v602);
              --v219;
            }

            while (v219);
            v42 = (v42 + 4 * v615);
            v227 = v619;
            v228 = v619 + 4 * v617;
            v229 = -(v617 * v603);
            if (v228 < v614)
            {
              v229 = 0;
            }

            v230 = v228 + 4 * v229;
            v231 = v38 + 4 * v229 + 4 * v617;
            if (v614)
            {
              v38 = v231;
              v227 = v230;
            }

            v619 = v227;
            if (v614)
            {
              v41 = v230;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 21:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v242 = v624[0];
            do
            {
              if (!v37)
              {
                v243 = 255;
LABEL_443:
                v244 = v42->i32[0];
                if (v32)
                {
                  v245 = HIBYTE(v244);
                  v246 = *v41;
                  if (!HIBYTE(v244))
                  {
                    v247 = v246 & 0xFFFFFF | (v243 << 24);
LABEL_448:
                    v42->i32[0] = v247;
                    goto LABEL_449;
                  }
                }

                else
                {
                  v246 = *v41;
                  v245 = 255;
                }

                v247 = PDAhardlightPDA_15079(v244, v245, v246, v243);
                v32 = v621;
                goto LABEL_448;
              }

              v243 = HIBYTE(*v41);
              if (v243)
              {
                goto LABEL_443;
              }

LABEL_449:
              v248 = v41 + 4 * v602;
              if (v248 >= v38)
              {
                v249 = -v35;
              }

              else
              {
                v249 = 0;
              }

              v41 = v248 + 4 * v249;
              v42 = (v42 + 4 * v602);
              --v242;
            }

            while (v242);
            v42 = (v42 + 4 * v615);
            v250 = v619;
            v251 = v619 + 4 * v617;
            v252 = -(v617 * v603);
            if (v251 < v614)
            {
              v252 = 0;
            }

            v253 = v251 + 4 * v252;
            v254 = v38 + 4 * v252 + 4 * v617;
            if (v614)
            {
              v38 = v254;
              v250 = v253;
            }

            v619 = v250;
            if (v614)
            {
              v41 = v253;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 22:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v323 = v624[0];
            do
            {
              if (!v37)
              {
                v324 = 255;
LABEL_600:
                v325 = v42->i32[0];
                if (v32)
                {
                  v326 = HIBYTE(v325);
                  v327 = *v41;
                  if (!HIBYTE(v325))
                  {
                    v328 = v327 & 0xFFFFFF | (v324 << 24);
LABEL_605:
                    v42->i32[0] = v328;
                    goto LABEL_606;
                  }
                }

                else
                {
                  v327 = *v41;
                  v326 = 255;
                }

                v328 = PDAdifferencePDA_15081(v325, v326, v327, v324);
                v32 = v621;
                goto LABEL_605;
              }

              v324 = HIBYTE(*v41);
              if (v324)
              {
                goto LABEL_600;
              }

LABEL_606:
              v329 = v41 + 4 * v602;
              if (v329 >= v38)
              {
                v330 = -v35;
              }

              else
              {
                v330 = 0;
              }

              v41 = v329 + 4 * v330;
              v42 = (v42 + 4 * v602);
              --v323;
            }

            while (v323);
            v42 = (v42 + 4 * v615);
            v331 = v619;
            v332 = v619 + 4 * v617;
            v333 = -(v617 * v603);
            if (v332 < v614)
            {
              v333 = 0;
            }

            v334 = v332 + 4 * v333;
            v335 = v38 + 4 * v333 + 4 * v617;
            if (v614)
            {
              v38 = v335;
              v331 = v334;
            }

            v619 = v331;
            if (v614)
            {
              v41 = v334;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 23:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v349 = v624[0];
            do
            {
              if (!v37)
              {
                v350 = 255;
LABEL_650:
                v351 = v42->i32[0];
                if (v32)
                {
                  v352 = HIBYTE(v351);
                  v353 = *v41;
                  if (!HIBYTE(v351))
                  {
                    v354 = v353 & 0xFFFFFF | (v350 << 24);
LABEL_655:
                    v42->i32[0] = v354;
                    goto LABEL_656;
                  }
                }

                else
                {
                  v353 = *v41;
                  v352 = 255;
                }

                v354 = PDAexclusionPDA_15082(v351, v352, v353, v350);
                v32 = v621;
                goto LABEL_655;
              }

              v350 = HIBYTE(*v41);
              if (v350)
              {
                goto LABEL_650;
              }

LABEL_656:
              v355 = v41 + 4 * v602;
              if (v355 >= v38)
              {
                v356 = -v35;
              }

              else
              {
                v356 = 0;
              }

              v41 = v355 + 4 * v356;
              v42 = (v42 + 4 * v602);
              --v349;
            }

            while (v349);
            v42 = (v42 + 4 * v615);
            v357 = v619;
            v358 = v619 + 4 * v617;
            v359 = -(v617 * v603);
            if (v358 < v614)
            {
              v359 = 0;
            }

            v360 = v358 + 4 * v359;
            v361 = v38 + 4 * v359 + 4 * v617;
            if (v614)
            {
              v38 = v361;
              v357 = v360;
            }

            v619 = v357;
            if (v614)
            {
              v41 = v360;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 24:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v145 = v624[0];
            do
            {
              if (!v37)
              {
                v146 = 255;
LABEL_252:
                v147 = v42->i32[0];
                if (v32)
                {
                  v148 = HIBYTE(v147);
                  v149 = *v41;
                  if (!HIBYTE(v147))
                  {
                    v150 = v149 & 0xFFFFFF | (v146 << 24);
LABEL_257:
                    v42->i32[0] = v150;
                    goto LABEL_258;
                  }
                }

                else
                {
                  v149 = *v41;
                  v148 = 255;
                }

                v150 = PDAhuePDA_15083(v147, v148, v149, v146);
                v32 = v621;
                goto LABEL_257;
              }

              v146 = HIBYTE(*v41);
              if (v146)
              {
                goto LABEL_252;
              }

LABEL_258:
              v151 = v41 + 4 * v602;
              if (v151 >= v38)
              {
                v152 = -v35;
              }

              else
              {
                v152 = 0;
              }

              v41 = v151 + 4 * v152;
              v42 = (v42 + 4 * v602);
              --v145;
            }

            while (v145);
            v42 = (v42 + 4 * v615);
            v153 = v619;
            v154 = v619 + 4 * v617;
            v155 = -(v617 * v603);
            if (v154 < v614)
            {
              v155 = 0;
            }

            v156 = v154 + 4 * v155;
            v157 = v38 + 4 * v155 + 4 * v617;
            if (v614)
            {
              v38 = v157;
              v153 = v156;
            }

            v619 = v153;
            if (v614)
            {
              v41 = v156;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 25:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v132 = v624[0];
            do
            {
              if (!v37)
              {
                v133 = 255;
LABEL_227:
                v134 = v42->i32[0];
                if (v32)
                {
                  v135 = HIBYTE(v134);
                  v136 = *v41;
                  if (!HIBYTE(v134))
                  {
                    v137 = v136 & 0xFFFFFF | (v133 << 24);
LABEL_232:
                    v42->i32[0] = v137;
                    goto LABEL_233;
                  }
                }

                else
                {
                  v136 = *v41;
                  v135 = 255;
                }

                v137 = PDAsaturationPDA_15084(v134, v135, v136, v133);
                v32 = v621;
                goto LABEL_232;
              }

              v133 = HIBYTE(*v41);
              if (v133)
              {
                goto LABEL_227;
              }

LABEL_233:
              v138 = v41 + 4 * v602;
              if (v138 >= v38)
              {
                v139 = -v35;
              }

              else
              {
                v139 = 0;
              }

              v41 = v138 + 4 * v139;
              v42 = (v42 + 4 * v602);
              --v132;
            }

            while (v132);
            v42 = (v42 + 4 * v615);
            v140 = v619;
            v141 = v619 + 4 * v617;
            v142 = -(v617 * v603);
            if (v141 < v614)
            {
              v142 = 0;
            }

            v143 = v141 + 4 * v142;
            v144 = v38 + 4 * v142 + 4 * v617;
            if (v614)
            {
              v38 = v144;
              v140 = v143;
            }

            v619 = v140;
            if (v614)
            {
              v41 = v143;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 26:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v388 = v624[0];
            do
            {
              if (v37)
              {
                v389 = HIBYTE(*v41);
                if (!v389)
                {
                  goto LABEL_730;
                }

                if (!v32)
                {
LABEL_727:
                  v392 = *v41;
                  v390 = v42->i32[0];
                  v391 = 255;
LABEL_728:
                  v393 = PDAluminosityPDA_15085(v392, v389, v390, v391);
                  v32 = v621;
                  goto LABEL_729;
                }
              }

              else
              {
                v389 = 255;
                if (!v32)
                {
                  goto LABEL_727;
                }
              }

              v390 = v42->i32[0];
              v391 = HIBYTE(v42->i32[0]);
              v392 = *v41;
              if (v391)
              {
                goto LABEL_728;
              }

              v393 = v392 & 0xFFFFFF | (v389 << 24);
LABEL_729:
              v42->i32[0] = v393;
LABEL_730:
              v394 = v41 + 4 * v602;
              if (v394 >= v38)
              {
                v395 = -v35;
              }

              else
              {
                v395 = 0;
              }

              v41 = v394 + 4 * v395;
              v42 = (v42 + 4 * v602);
              --v388;
            }

            while (v388);
            v42 = (v42 + 4 * v615);
            v396 = v619;
            v397 = v619 + 4 * v617;
            v398 = -(v617 * v603);
            if (v397 < v614)
            {
              v398 = 0;
            }

            v399 = v397 + 4 * v398;
            v400 = v38 + 4 * v398 + 4 * v617;
            if (v614)
            {
              v38 = v400;
              v396 = v399;
            }

            v619 = v396;
            if (v614)
            {
              v41 = v399;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 27:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v49 = v624[0];
            do
            {
              if (!v37)
              {
                v50 = 255;
LABEL_77:
                v51 = v42->i32[0];
                if (v32)
                {
                  v52 = HIBYTE(v51);
                  v53 = *v41;
                  if (!HIBYTE(v51))
                  {
                    v54 = v53 & 0xFFFFFF | (v50 << 24);
LABEL_82:
                    v42->i32[0] = v54;
                    goto LABEL_83;
                  }
                }

                else
                {
                  v53 = *v41;
                  v52 = 255;
                }

                v54 = PDAluminosityPDA_15085(v51, v52, v53, v50);
                v32 = v621;
                goto LABEL_82;
              }

              v50 = HIBYTE(*v41);
              if (v50)
              {
                goto LABEL_77;
              }

LABEL_83:
              v55 = v41 + 4 * v602;
              if (v55 >= v38)
              {
                v56 = -v35;
              }

              else
              {
                v56 = 0;
              }

              v41 = v55 + 4 * v56;
              v42 = (v42 + 4 * v602);
              --v49;
            }

            while (v49);
            v42 = (v42 + 4 * v615);
            v57 = v619;
            v58 = v619 + 4 * v617;
            v59 = -(v617 * v603);
            if (v58 < v614)
            {
              v59 = 0;
            }

            v60 = v58 + 4 * v59;
            v61 = v38 + 4 * v59 + 4 * v617;
            if (v614)
            {
              v38 = v61;
              v57 = v60;
            }

            v619 = v57;
            if (v614)
            {
              v41 = v60;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 28:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v362 = v624[0];
            do
            {
              if (!v37)
              {
                v363 = 255;
LABEL_675:
                v364 = v42->i32[0];
                if (v32)
                {
                  v365 = HIBYTE(v364);
                  v366 = *v41;
                  if (!HIBYTE(v364))
                  {
                    v367 = v366 & 0xFFFFFF | (v363 << 24);
LABEL_680:
                    v42->i32[0] = v367;
                    goto LABEL_681;
                  }
                }

                else
                {
                  v366 = *v41;
                  v365 = 255;
                }

                v367 = PDAtranspose_huePDA_15086(v364, v365, v366, v363);
                v32 = v621;
                goto LABEL_680;
              }

              v363 = HIBYTE(*v41);
              if (v363)
              {
                goto LABEL_675;
              }

LABEL_681:
              v368 = v41 + 4 * v602;
              if (v368 >= v38)
              {
                v369 = -v35;
              }

              else
              {
                v369 = 0;
              }

              v41 = v368 + 4 * v369;
              v42 = (v42 + 4 * v602);
              --v362;
            }

            while (v362);
            v42 = (v42 + 4 * v615);
            v370 = v619;
            v371 = v619 + 4 * v617;
            v372 = -(v617 * v603);
            if (v371 < v614)
            {
              v372 = 0;
            }

            v373 = v371 + 4 * v372;
            v374 = v38 + 4 * v372 + 4 * v617;
            if (v614)
            {
              v38 = v374;
              v370 = v373;
            }

            v619 = v370;
            if (v614)
            {
              v41 = v373;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 29:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v375 = v624[0];
            do
            {
              if (!v37)
              {
                v376 = 255;
LABEL_700:
                v377 = v42->i32[0];
                if (v32)
                {
                  v378 = HIBYTE(v377);
                  v379 = *v41;
                  if (!HIBYTE(v377))
                  {
                    v380 = v379 & 0xFFFFFF | (v376 << 24);
LABEL_705:
                    v42->i32[0] = v380;
                    goto LABEL_706;
                  }
                }

                else
                {
                  v379 = *v41;
                  v378 = 255;
                }

                v380 = PDAtranspose_saturationPDA_15087(v377, v378, v379, v376);
                v32 = v621;
                goto LABEL_705;
              }

              v376 = HIBYTE(*v41);
              if (v376)
              {
                goto LABEL_700;
              }

LABEL_706:
              v381 = v41 + 4 * v602;
              if (v381 >= v38)
              {
                v382 = -v35;
              }

              else
              {
                v382 = 0;
              }

              v41 = v381 + 4 * v382;
              v42 = (v42 + 4 * v602);
              --v375;
            }

            while (v375);
            v42 = (v42 + 4 * v615);
            v383 = v619;
            v384 = v619 + 4 * v617;
            v385 = -(v617 * v603);
            if (v384 < v614)
            {
              v385 = 0;
            }

            v386 = v384 + 4 * v385;
            v387 = v38 + 4 * v385 + 4 * v617;
            if (v614)
            {
              v38 = v387;
              v383 = v386;
            }

            v619 = v383;
            if (v614)
            {
              v41 = v386;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 30:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          while (1)
          {
            v310 = v624[0];
            do
            {
              if (v37)
              {
                v311 = HIBYTE(*v41);
                if (!v311)
                {
                  goto LABEL_581;
                }

                if (!v32)
                {
LABEL_578:
                  v314 = *v41;
                  v312 = v42->i32[0];
                  v313 = 255;
LABEL_579:
                  v315 = PDAtranspose_luminosityPDA_15088(v314, v311, v312, v313);
                  v32 = v621;
                  goto LABEL_580;
                }
              }

              else
              {
                v311 = 255;
                if (!v32)
                {
                  goto LABEL_578;
                }
              }

              v312 = v42->i32[0];
              v313 = HIBYTE(v42->i32[0]);
              v314 = *v41;
              if (v313)
              {
                goto LABEL_579;
              }

              v315 = v314 & 0xFFFFFF | (v311 << 24);
LABEL_580:
              v42->i32[0] = v315;
LABEL_581:
              v316 = v41 + 4 * v602;
              if (v316 >= v38)
              {
                v317 = -v35;
              }

              else
              {
                v317 = 0;
              }

              v41 = v316 + 4 * v317;
              v42 = (v42 + 4 * v602);
              --v310;
            }

            while (v310);
            v42 = (v42 + 4 * v615);
            v318 = v619;
            v319 = v619 + 4 * v617;
            v320 = -(v617 * v603);
            if (v319 < v614)
            {
              v320 = 0;
            }

            v321 = v319 + 4 * v320;
            v322 = v38 + 4 * v320 + 4 * v617;
            if (v614)
            {
              v38 = v322;
              v318 = v321;
            }

            v619 = v318;
            if (v614)
            {
              v41 = v321;
            }

            else
            {
              v41 += 4 * v617;
            }

            if (!--v623)
            {
              goto LABEL_763;
            }
          }

        case 31:
          v605 = v25;
          v606 = v26;
          v607 = v27;
          v604 = v35;
          break;
        default:
          goto LABEL_764;
      }

      break;
    }

LABEL_348:
    v193 = v624[0];
    while (1)
    {
      if (v37)
      {
        v194 = HIBYTE(*v41);
        if (!v194)
        {
          goto LABEL_359;
        }
      }

      else
      {
        v194 = 255;
      }

      v195 = v42->i32[0];
      if (!v32)
      {
        break;
      }

      v196 = HIBYTE(v195);
      v197 = *v41;
      if (HIBYTE(v195))
      {
        goto LABEL_357;
      }

      v198 = v197 & 0xFFFFFF | (v194 << 24);
LABEL_358:
      v42->i32[0] = v198;
LABEL_359:
      v199 = v41 + 4 * v602;
      if (v199 >= v38)
      {
        v200 = -v35;
      }

      else
      {
        v200 = 0;
      }

      v41 = v199 + 4 * v200;
      v42 = (v42 + 4 * v602);
      if (!--v193)
      {
        v42 = (v42 + 4 * v615);
        v201 = v619;
        v202 = v619 + 4 * v617;
        v203 = -(v617 * v603);
        if (v202 < v614)
        {
          v203 = 0;
        }

        v204 = v202 + 4 * v203;
        v205 = v38 + 4 * v203 + 4 * v617;
        if (v614)
        {
          v38 = v205;
          v201 = v204;
        }

        v619 = v201;
        if (v614)
        {
          v41 = v204;
        }

        else
        {
          v41 += 4 * v617;
        }

        if (!--v623)
        {
          goto LABEL_763;
        }

        goto LABEL_348;
      }
    }

    v197 = *v41;
    v196 = 255;
LABEL_357:
    v198 = PDAtranspose_luminosityPDA_15088(v195, v196, v197, v194);
    v32 = v621;
    goto LABEL_358;
  }

  if (BYTE1(v9) != 4)
  {
    goto LABEL_29;
  }

  v623 = v6[2];
  v624[0] = v13;
  v18 = **(v6 + 11);
  v19 = v6[3];
  v613 = v6[7];
  v20 = v613 >> 2;
  v21 = *(v6 + 5) + 4 * (v613 >> 2) * v6[4];
  v22 = v21 + 4 * v19;
  if (v16)
  {
    shape_enum_clip_alloc(a1, a2, v16, 1, 1, 1, v6[26], v6[27], v13, v15);
    v24 = v23;
    if (v23)
    {
      goto LABEL_1100;
    }

    return 1;
  }

  v618 = 0;
  v39 = v21 + 4 * v19;
  while (2)
  {
    v620 = v20 - v13;
    v612 = v13;
    switch(v11)
    {
      case 0:
        v443 = v623;
        v444 = 4 * v13;
        v445 = v613 & 0xFFFFFFFC;
        v446 = 0;
        goto LABEL_950;
      case 1:
        v446 = 0;
        v513 = *(v6 + 11);
        if (v513)
        {
          v446 = *v513;
        }

        v444 = 4 * v13;
        v443 = v623;
        v445 = v613 & 0xFFFFFFFC;
LABEL_950:
        CGBlt_fillBytes(v444, v443, v446, v39, v445);
        goto LABEL_1098;
      case 2:
        v496 = v13 & 3;
        v497 = v623;
        v498 = (v13 >> 2) + 1;
        do
        {
          if (v13 < 4)
          {
            v502 = v13;
          }

          else
          {
            v499 = v498;
            do
            {
              DplusDM_15070(v39, v18, *v39, ~HIBYTE(v18));
              DplusDM_15070((v39 + 4), v18, *(v39 + 4), ~HIBYTE(v18));
              DplusDM_15070((v39 + 8), v18, *(v39 + 8), ~HIBYTE(v18));
              v501 = *(v39 + 12);
              v500 = (v39 + 12);
              DplusDM_15070(v500, v18, v501, ~HIBYTE(v18));
              v39 = (v500 + 1);
              --v499;
            }

            while (v499 > 1);
            v502 = v496;
          }

          if (v502 < 1)
          {
            v504 = v39;
          }

          else
          {
            v503 = v502 + 1;
            v504 = v39;
            do
            {
              v505 = *v504++;
              DplusDM_15070(v39, v18, v505, ~HIBYTE(v18));
              --v503;
              v39 = v504;
            }

            while (v503 > 1);
          }

          v39 = &v504[v620];
          v623 = --v497;
          v6 = v601;
          LODWORD(v13) = v612;
        }

        while (v497);
        goto LABEL_1098;
      case 3:
        do
        {
          v450 = v624[0];
          do
          {
            v451 = HIBYTE(*v39);
            if (v451)
            {
              v452 = v18;
              if (v451 != 255)
              {
                v452 = PDM_15068(v18, v451);
              }
            }

            else
            {
              v452 = 0;
            }

            *v39 = v452;
            v39 += 4;
            --v450;
          }

          while (v450);
          v39 += 4 * v620;
          --v623;
        }

        while (v623);
        goto LABEL_1098;
      case 4:
        do
        {
          v447 = v624[0];
          do
          {
            v448 = *(v39 + 3) ^ 0xFF;
            if (v448)
            {
              v449 = v18;
              if (v448 != 255)
              {
                v449 = PDM_15068(v18, v448);
              }
            }

            else
            {
              v449 = 0;
            }

            *v39 = v449;
            v39 += 4;
            --v447;
          }

          while (v447);
          v39 += 4 * v620;
          --v623;
        }

        while (v623);
        goto LABEL_1098;
      case 5:
        v532 = v623;
        do
        {
          v533 = v13;
          v534 = v39;
          do
          {
            v535 = *v534++;
            DMplusDM_15069(v39, v18, HIBYTE(v535), v535, ~HIBYTE(v18));
            v39 = v534;
            --v533;
          }

          while (v533);
          v39 = &v534[v620];
          v623 = --v532;
          LODWORD(v13) = v612;
        }

        while (v532);
        goto LABEL_1098;
      case 6:
        do
        {
          v548 = v624[0];
          do
          {
            if (~HIBYTE(*v39))
            {
              if (~HIBYTE(*v39) == 255)
              {
                *v39 = v18;
              }

              else
              {
                DplusDM_15070(v39, *v39, v18, ~HIBYTE(*v39));
              }
            }

            v39 += 4;
            --v548;
          }

          while (v548);
          v39 += 4 * v620;
          --v623;
        }

        while (v623);
        goto LABEL_1098;
      case 7:
        do
        {
          v512 = v624[0];
          do
          {
            *v39 = PDM_15068(*v39, HIBYTE(v18));
            v39 += 4;
            --v512;
          }

          while (v512);
          v39 += 4 * v620;
          --v623;
        }

        while (v623);
        goto LABEL_1098;
      case 8:
        do
        {
          v453 = v624[0];
          do
          {
            *v39 = PDM_15068(*v39, ~HIBYTE(v18));
            v39 += 4;
            --v453;
          }

          while (v453);
          v39 += 4 * v620;
          --v623;
        }

        while (v623);
        goto LABEL_1098;
      case 9:
        v480 = v623;
        do
        {
          v481 = v13;
          v482 = v39;
          do
          {
            v483 = *v482++;
            DMplusDM_15069(v39, v18, ~v483 >> 24, v483, HIBYTE(v18));
            v39 = v482;
            --v481;
          }

          while (v481);
          v39 = &v482[v620];
          v623 = --v480;
          LODWORD(v13) = v612;
        }

        while (v480);
        goto LABEL_1098;
      case 10:
        v555 = v623;
        do
        {
          v556 = v13;
          v557 = v39;
          do
          {
            v558 = *v557++;
            DMplusDM_15069(v39, v18, ~v558 >> 24, v558, ~HIBYTE(v18));
            v39 = v557;
            --v556;
          }

          while (v556);
          v39 = &v557[v620];
          v623 = --v555;
          LODWORD(v13) = v612;
        }

        while (v555);
        goto LABEL_1098;
      case 11:
        v472 = v623;
        v616 = v22;
        do
        {
          v473 = v13;
          v474 = v39;
          do
          {
            v476 = *v474++;
            v475 = v476;
            v477 = HIBYTE(v476);
            if (!v621)
            {
              LOBYTE(v477) = -1;
            }

            DAplusdDA_15071(v39, v475, v477, v18, HIBYTE(v18));
            v39 = v474;
            --v473;
          }

          while (v473);
          v39 = &v474[v620];
          v623 = --v472;
          v22 = v616;
          LODWORD(v13) = v612;
        }

        while (v472);
        goto LABEL_1098;
      case 12:
        do
        {
          v479 = v624[0];
          do
          {
            v478 = (v18 >> 8) & 0xFF00FF;
            *v39 = ((((*v39 >> 8) & 0xFF00FF) + v478) << 8) & 0xFF00FF00 | ((*v39 & 0xFF00FF) + (v18 & 0xFF00FF)) & 0xFF00FF | (15 * ((((*v39 >> 8) & 0xFF00FF) + v478) & 0x1000100 | (((*v39 & 0xFF00FF) + (v18 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * ((((*v39 >> 8) & 0xFF00FF) + v478) & 0x1000100 | (((*v39 & 0xFF00FF) + (v18 & 0xFF00FF)) >> 8) & 0x10001));
            v39 += 4;
            --v479;
          }

          while (v479);
          v39 += 4 * v620;
          --v623;
        }

        while (v623);
        goto LABEL_1098;
      case 13:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v542 = v624[0];
          v543 = v621;
          do
          {
            v544 = *v39;
            if (!v543)
            {
              v545 = 255;
LABEL_1002:
              v547 = PDAmultiplyPDA_15072(v544, v545, v18, HIBYTE(v18));
              v543 = v621;
              v546 = v547;
              goto LABEL_1003;
            }

            v545 = HIBYTE(v544);
            v546 = v18;
            if (HIBYTE(v544))
            {
              goto LABEL_1002;
            }

LABEL_1003:
            *v39 = v546;
            v39 += 4;
            --v542;
          }

          while (v542);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 14:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v466 = v624[0];
          v467 = v621;
          do
          {
            v468 = *v39;
            if (!v467)
            {
              v469 = 255;
LABEL_880:
              v471 = PDAscreenPDA_15073(v468, v469, v18, HIBYTE(v18));
              v467 = v621;
              v470 = v471;
              goto LABEL_881;
            }

            v469 = HIBYTE(v468);
            v470 = v18;
            if (HIBYTE(v468))
            {
              goto LABEL_880;
            }

LABEL_881:
            *v39 = v470;
            v39 += 4;
            --v466;
          }

          while (v466);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 15:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v506 = v624[0];
          v507 = v621;
          do
          {
            v508 = *v39;
            if (!v507)
            {
              v509 = 255;
LABEL_939:
              v511 = PDAoverlayPDA_15074(v508, v509, v18, HIBYTE(v18));
              v507 = v621;
              v510 = v511;
              goto LABEL_940;
            }

            v509 = HIBYTE(v508);
            v510 = v18;
            if (HIBYTE(v508))
            {
              goto LABEL_939;
            }

LABEL_940:
            *v39 = v510;
            v39 += 4;
            --v506;
          }

          while (v506);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 16:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v460 = v624[0];
          v461 = v621;
          do
          {
            v462 = *v39;
            if (!v461)
            {
              v463 = 255;
LABEL_870:
              v465 = PDAdarkenPDA_15076(v462, v463, v18, HIBYTE(v18));
              v461 = v621;
              v464 = v465;
              goto LABEL_871;
            }

            v463 = HIBYTE(v462);
            v464 = v18;
            if (HIBYTE(v462))
            {
              goto LABEL_870;
            }

LABEL_871:
            *v39 = v464;
            v39 += 4;
            --v460;
          }

          while (v460);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 17:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v520 = v624[0];
          v521 = v621;
          do
          {
            v522 = *v39;
            if (!v521)
            {
              v523 = 255;
LABEL_967:
              v525 = PDAlightenPDA_15075(v522, v523, v18, HIBYTE(v18));
              v521 = v621;
              v524 = v525;
              goto LABEL_968;
            }

            v523 = HIBYTE(v522);
            v524 = v18;
            if (HIBYTE(v522))
            {
              goto LABEL_967;
            }

LABEL_968:
            *v39 = v524;
            v39 += 4;
            --v520;
          }

          while (v520);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 18:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v549 = v624[0];
          v550 = v621;
          do
          {
            v551 = *v39;
            if (!v550)
            {
              v552 = 255;
LABEL_1020:
              v554 = PDAcolordodgePDA_15077(v551, v552, v18, HIBYTE(v18));
              v550 = v621;
              v553 = v554;
              goto LABEL_1021;
            }

            v552 = HIBYTE(v551);
            v553 = v18;
            if (HIBYTE(v551))
            {
              goto LABEL_1020;
            }

LABEL_1021:
            *v39 = v553;
            v39 += 4;
            --v549;
          }

          while (v549);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 19:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v570 = v624[0];
          v571 = v621;
          do
          {
            v572 = *v39;
            if (!v571)
            {
              v573 = 255;
LABEL_1055:
              v575 = PDAcolorburnPDA_15078(v572, v573, v18, HIBYTE(v18));
              v571 = v621;
              v574 = v575;
              goto LABEL_1056;
            }

            v573 = HIBYTE(v572);
            v574 = v18;
            if (HIBYTE(v572))
            {
              goto LABEL_1055;
            }

LABEL_1056:
            *v39 = v574;
            v39 += 4;
            --v570;
          }

          while (v570);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 20:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v526 = v624[0];
          v527 = v621;
          do
          {
            v528 = *v39;
            if (!v527)
            {
              v529 = 255;
LABEL_977:
              v531 = PDAsoftlightPDA_15080(v528, v529, v18, HIBYTE(v18));
              v527 = v621;
              v530 = v531;
              goto LABEL_978;
            }

            v529 = HIBYTE(v528);
            v530 = v18;
            if (HIBYTE(v528))
            {
              goto LABEL_977;
            }

LABEL_978:
            *v39 = v530;
            v39 += 4;
            --v526;
          }

          while (v526);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 21:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v536 = v624[0];
          v537 = v621;
          do
          {
            v538 = *v39;
            if (!v537)
            {
              v539 = 255;
LABEL_992:
              v541 = PDAhardlightPDA_15079(v538, v539, v18, HIBYTE(v18));
              v537 = v621;
              v540 = v541;
              goto LABEL_993;
            }

            v539 = HIBYTE(v538);
            v540 = v18;
            if (HIBYTE(v538))
            {
              goto LABEL_992;
            }

LABEL_993:
            *v39 = v540;
            v39 += 4;
            --v536;
          }

          while (v536);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 22:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v564 = v624[0];
          v565 = v621;
          do
          {
            v566 = *v39;
            if (!v565)
            {
              v567 = 255;
LABEL_1045:
              v569 = PDAdifferencePDA_15081(v566, v567, v18, HIBYTE(v18));
              v565 = v621;
              v568 = v569;
              goto LABEL_1046;
            }

            v567 = HIBYTE(v566);
            v568 = v18;
            if (HIBYTE(v566))
            {
              goto LABEL_1045;
            }

LABEL_1046:
            *v39 = v568;
            v39 += 4;
            --v564;
          }

          while (v564);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 23:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v576 = v624[0];
          v577 = v621;
          do
          {
            v578 = *v39;
            if (!v577)
            {
              v579 = 255;
LABEL_1065:
              v581 = PDAexclusionPDA_15082(v578, v579, v18, HIBYTE(v18));
              v577 = v621;
              v580 = v581;
              goto LABEL_1066;
            }

            v579 = HIBYTE(v578);
            v580 = v18;
            if (HIBYTE(v578))
            {
              goto LABEL_1065;
            }

LABEL_1066:
            *v39 = v580;
            v39 += 4;
            --v576;
          }

          while (v576);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 24:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v490 = v624[0];
          v491 = v621;
          do
          {
            v492 = *v39;
            if (!v491)
            {
              v493 = 255;
LABEL_916:
              v495 = PDAhuePDA_15083(v492, v493, v18, HIBYTE(v18));
              v491 = v621;
              v494 = v495;
              goto LABEL_917;
            }

            v493 = HIBYTE(v492);
            v494 = v18;
            if (HIBYTE(v492))
            {
              goto LABEL_916;
            }

LABEL_917:
            *v39 = v494;
            v39 += 4;
            --v490;
          }

          while (v490);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 25:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v484 = v624[0];
          v485 = v621;
          do
          {
            v486 = *v39;
            if (!v485)
            {
              v487 = 255;
LABEL_906:
              v489 = PDAsaturationPDA_15084(v486, v487, v18, HIBYTE(v18));
              v485 = v621;
              v488 = v489;
              goto LABEL_907;
            }

            v487 = HIBYTE(v486);
            v488 = v18;
            if (HIBYTE(v486))
            {
              goto LABEL_906;
            }

LABEL_907:
            *v39 = v488;
            v39 += 4;
            --v484;
          }

          while (v484);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 26:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v594 = v624[0];
          v595 = v621;
          do
          {
            v596 = *v39;
            if (!v595)
            {
              v597 = 255;
LABEL_1095:
              v598 = PDAluminosityPDA_15085(v18, HIBYTE(v18), v596, v597);
              v595 = v621;
              goto LABEL_1096;
            }

            v597 = HIBYTE(v596);
            v598 = v18;
            if (HIBYTE(v596))
            {
              goto LABEL_1095;
            }

LABEL_1096:
            *v39 = v598;
            v39 += 4;
            --v594;
          }

          while (v594);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 27:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v454 = v624[0];
          v455 = v621;
          do
          {
            v456 = *v39;
            if (!v455)
            {
              v457 = 255;
LABEL_860:
              v459 = PDAluminosityPDA_15085(v456, v457, v18, HIBYTE(v18));
              v455 = v621;
              v458 = v459;
              goto LABEL_861;
            }

            v457 = HIBYTE(v456);
            v458 = v18;
            if (HIBYTE(v456))
            {
              goto LABEL_860;
            }

LABEL_861:
            *v39 = v458;
            v39 += 4;
            --v454;
          }

          while (v454);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 28:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v582 = v624[0];
          v583 = v621;
          do
          {
            v584 = *v39;
            if (!v583)
            {
              v585 = 255;
LABEL_1075:
              v587 = PDAtranspose_huePDA_15086(v584, v585, v18, HIBYTE(v18));
              v583 = v621;
              v586 = v587;
              goto LABEL_1076;
            }

            v585 = HIBYTE(v584);
            v586 = v18;
            if (HIBYTE(v584))
            {
              goto LABEL_1075;
            }

LABEL_1076:
            *v39 = v586;
            v39 += 4;
            --v582;
          }

          while (v582);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 29:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        do
        {
          v588 = v624[0];
          v589 = v621;
          do
          {
            v590 = *v39;
            if (!v589)
            {
              v591 = 255;
LABEL_1085:
              v593 = PDAtranspose_saturationPDA_15087(v590, v591, v18, HIBYTE(v18));
              v589 = v621;
              v592 = v593;
              goto LABEL_1086;
            }

            v591 = HIBYTE(v590);
            v592 = v18;
            if (HIBYTE(v590))
            {
              goto LABEL_1085;
            }

LABEL_1086:
            *v39 = v592;
            v39 += 4;
            --v588;
          }

          while (v588);
          v39 += 4 * v620;
          --v623;
        }

        while (v623);
LABEL_1098:
        LODWORD(v11) = v610;
        v24 = v618;
        if (!v618)
        {
          return 1;
        }

        v622 = 0;
LABEL_1100:
        if (shape_enum_clip_next(v24, &v622 + 1, &v622, v624, &v623))
        {
          v618 = v24;
          v39 = v22 + 4 * v20 * v622 + 4 * SHIDWORD(v622);
          LODWORD(v13) = v624[0];
          continue;
        }

        v413 = v24;
LABEL_1103:
        free(v413);
        return 1;
      case 30:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        while (1)
        {
          v559 = v624[0];
          v560 = v621;
          do
          {
            v561 = *v39;
            if (!v560)
            {
              v562 = 255;
LABEL_1035:
              v563 = PDAtranspose_luminosityPDA_15088(v18, HIBYTE(v18), v561, v562);
              v560 = v621;
              goto LABEL_1036;
            }

            v562 = HIBYTE(v561);
            v563 = v18;
            if (HIBYTE(v561))
            {
              goto LABEL_1035;
            }

LABEL_1036:
            *v39 = v563;
            v39 += 4;
            --v559;
          }

          while (v559);
          v39 += 4 * v620;
          if (!--v623)
          {
            goto LABEL_1098;
          }
        }

      case 31:
        if (!HIBYTE(v18))
        {
          goto LABEL_1098;
        }

        break;
      default:
        goto LABEL_1098;
    }

    break;
  }

LABEL_952:
  v514 = v624[0];
  v515 = v621;
  while (1)
  {
    v516 = *v39;
    if (v515)
    {
      v517 = HIBYTE(v516);
      v518 = v18;
      if (!HIBYTE(v516))
      {
        goto LABEL_958;
      }
    }

    else
    {
      v517 = 255;
    }

    v519 = PDAtranspose_luminosityPDA_15088(v516, v517, v18, HIBYTE(v18));
    v515 = v621;
    v518 = v519;
LABEL_958:
    *v39 = v518;
    v39 += 4;
    if (!--v514)
    {
      v39 += 4 * v620;
      if (!--v623)
      {
        goto LABEL_1098;
      }

      goto LABEL_952;
    }
  }
}