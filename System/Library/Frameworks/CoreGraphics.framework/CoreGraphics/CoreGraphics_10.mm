void *RIPDataCreate(uint64_t a1)
{
  if (_block_invoke_once_4772 != -1)
  {
    dispatch_once(&_block_invoke_once_4772, &__block_literal_global_4_4773);
  }

  result = CGTypeCreateInstance(RIPDataGetTypeID_data_type_id, 32);
  result[2] = result + 2;
  result[3] = result + 2;
  result[4] = a1;
  result[5] = 0;
  return result;
}

void *RIPCacheEntryCreate(int a1, uint64_t a2)
{
  RIPLockCacheState();
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  if (*(RIPGetCacheState_cache_state + 16) <= *(RIPGetCacheState_cache_state + 24) || (v4 = *(RIPGetCacheState_cache_state + 8), v5 = *v4, *v4 == v4))
  {
    RIPUnlockCacheState();
  }

  else
  {
    v6 = v5 - 2;
    RIPCacheEntryRemove(v5 - 2);
    RIPUnlockCacheState();
    RIPCacheEntryRelease(v6);
  }

  result = malloc_type_malloc(0xA8uLL, 0x10E20404CCF93ECuLL);
  if (result)
  {
    *result = result;
    result[1] = result;
    result[2] = result + 2;
    result[3] = result + 2;
    result[4] = a2;
    result[5] = 0;
    *(result + 13) = 0;
    *(result + 14) = 0;
    *(result + 12) = a1;
  }

  return result;
}

void ripc_AddEntry(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = a1;
  ++*(a1 + 16);
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  v3 = *(RIPGetCacheState_cache_state + 8);
  ++*(RIPGetCacheState_cache_state + 16);
  v4 = *(v3 + 8);
  v6 = *(a2 + 16);
  v5 = (a2 + 16);
  *(v3 + 8) = v5;
  *v5 = v3;
  *v4 = v6;
  *(v6 + 8) = v4;
}

void shading_finalize(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRelease(v2);
  }

  CGColorSpaceRelease(*(a1 + 24));
  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v4 = *(a1 + 192);
      if (!v4)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (v3 == 2)
    {
      v4 = *(a1 + 208);
      if (!v4)
      {
        goto LABEL_16;
      }

LABEL_15:
      CFRelease(v4);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v4 = *(a1 + 168);
    if (v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v3 != 4)
    {
LABEL_12:
      v5 = *(a1 + 120);
      if (v5)
      {
        v5(*(a1 + 80));
      }

      goto LABEL_16;
    }

    v4 = *(a1 + 160);
    if (v4)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
  v6 = *(a1 + 32);

  free(v6);
}

void function_finalize(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  CGPropertiesRelease(*(a1 + 104));
  v3 = *(a1 + 80);
  if (v3)
  {
    v3(*(a1 + 24));
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    free(v5);
  }
}

void *_ripdata_finalize(uint64_t a1)
{
  if (RIPGetCacheState_predicate != -1)
  {
    dispatch_once(&RIPGetCacheState_predicate, &__block_literal_global_10_13792);
  }

  v2 = RIPGetCacheState_cache_state;
  RIPLockCacheState();
  v3 = (a1 + 16);
  v4 = *(a1 + 24);
  if (v4 != (a1 + 16))
  {
    v5 = *(v2 + 16);
    do
    {
      v7 = v4[2];
      v8 = v4[3];
      v6 = v4 + 2;
      *(v7 + 8) = v8;
      *v8 = v7;
      *v6 = v6;
      v6[1] = v6;
      --*(v6[3] + 16);
      --v5;
      v4 = *(v6 - 1);
    }

    while (v4 != v3);
    *(v2 + 16) = v5;
  }

  RIPUnlockCacheState();
  result = *(a1 + 24);
  if (result != v3)
  {
    do
    {
      v10 = result[1];
      RIPCacheEntryRelease(result);
      result = v10;
    }

    while (v10 != v3);
  }

  return result;
}

void RIPCacheEntryRelease(void *a1)
{
  v2 = *(a1 + 12);
  if (v2 == 2 || v2 == 1)
  {
    v3 = *(a1 + 20);
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }
  }

  else if (!v2)
  {
    free(*(a1 + 16));
    free(*(a1 + 17));
  }

  free(a1);
}

void gradient_release_info(CFTypeRef *a1)
{
  CFRelease(*a1);

  free(a1);
}

uint64_t __CGGradientGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGGradientGetTypeID_runtime_class);
  CGGradientGetTypeID_gradient_type_id = result;
  return result;
}

uint64_t __CGFunctionGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGFunctionGetTypeID_runtime_class);
  CGFunctionGetTypeID_function_type_id = result;
  return result;
}

uint64_t __CGShadingGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(CGShadingGetTypeID_class);
  CGShadingGetTypeID_shading_type_id = result;
  return result;
}

uint64_t __RIPDataGetTypeID_block_invoke_2()
{
  result = __CGTypeRegisterInternal(kRIPDataClass);
  RIPDataGetTypeID_data_type_id = result;
  return result;
}

void *CGBitmapContextCreateWithDataAndDictionary(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, CGColorSpaceRef space, int a8, double a9, double a10, void (*a11)(uint64_t, uint64_t), uint64_t a12, uint64_t a13)
{
  result = CGBitmapContextInfoCreate(a1, 0, 0, a2, a3, a4, a5, a6, a9, a10, space, a8, 0, a11, a12);
  if (result)
  {

    return bitmap_context_create(result, a13, "CGBitmapContextCreateWithDataAndDictionary");
  }

  return result;
}

void rip_auto_context_release_buffer_provider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 272);
  if (v8)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(a1 + 100);
      v12 = *(a1 + 116);
      v13 = *(a1 + 104);
      v14 = *(v10 + 16);
      v15 = *(a1 + 108);
      v19[0] = 1;
      v19[1] = v11;
      v19[2] = v12;
      v19[3] = v13;
      v19[4] = v15;
      v16 = *(a1 + 240);
      v18[2] = *(a1 + 224);
      v18[3] = v16;
      v18[4] = *(a1 + 256);
      v17 = *(a1 + 208);
      v18[0] = *(a1 + 192);
      v18[1] = v17;
      v14(v10, v8, v19, v18, a5, a6, a7, a8);
    }

    else
    {
      CFRelease(v8);
    }

    *(a1 + 272) = 0;
  }
}

void sub_183F11E30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void argb32_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v342 = a3;
  v349 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v336 = v3;
  v4 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 > 0x1FFFFFF)
  {
    return;
  }

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 184);
  v347 = *(a1 + 136);
  v348 = v6;
  v9 = *(a2 + 96);
  v345 = *(a2 + 104);
  v346 = v9;
  v11 = *(a1 + 24);
  v10 = *(a1 + 28);
  v12 = *(a1 + 20);
  v343 = *(a1 + 16);
  v13 = *(a1 + 12);
  v344 = *(a1 + 8);
  v341 = a2;
  v14 = *(a2 + 16);
  v15 = (v14 + 6) * v4;
  if (v15 > 65439)
  {
    v18 = malloc_type_calloc(1uLL, v15 + 96, 0xF5B4F9ABuLL);
    v17 = v18;
    v20 = v18;
    v21 = v341;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v17 = &v331 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v20 = 0;
    v21 = v341;
  }

  v333 = v20;
  v22 = a1;
  v23 = ((v8 * 255.0) + 0.5);
  v332 = v7 + (v11 - 1) * v10 + 4 * v12;
  v24 = v10 >> 2;
  v25 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v25 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v14)
  {
    v27 = 4 * v4;
  }

  else
  {
    v27 = 0;
  }

  v28 = v26 + v27;
  v21[18] = v25;
  v21[19] = v26 + v27;
  v21[20] = v26;
  v29 = v7 + 4 * v24 * v343 + 4 * v13;
  v30 = v336;
  v331 = v10 >> 2;
  v340 = v24 - v336;
  v31 = *(v22 + 104);
  v32 = *(v22 + 108);
  v338 = v22;
  v33 = *(v22 + 2);
  if (v33 == 6 || v33 == 1)
  {
    v35 = v345;
    v34 = v346;
    if (!v347)
    {
      goto LABEL_619;
    }

    v36 = 0;
    v37 = 0;
    v38 = *(v338 + 124);
    v39 = v347 + v38 * v32 + v31;
    v30 = v336;
    v339 = v38 - v336;
    v40 = v341;
  }

  else if (v347)
  {
    shape_enum_clip_alloc(v18, v19, v347, 1, 1, 1, v31, v32, v3, v344);
    if (!v41)
    {
      goto LABEL_619;
    }

    v36 = v41;
    v37 = 0;
    v42 = ((v14 * v4 + 15) & 0xFFFFFFF0);
    if (!v14)
    {
      v42 = 4 * v4;
    }

    v339 = -v336;
    v39 = (v28 + v42 + 16);
    v40 = v341;
    v35 = v345;
    v34 = v346;
    while (1)
    {
LABEL_17:
      while (1)
      {
        v43 = *(v39 - 4);
        v44 = v43 - v37;
        if (v43 <= v37)
        {
          break;
        }

        v344 -= v44;
        if (v344 < 1)
        {
          goto LABEL_618;
        }

        v34 += *(v40 + 128) * v44;
        v35 += *(v40 + 136) * v44;
        v29 += 4 * v331 * v44;
        v37 = v43;
      }

      if (v37 < *(v39 - 3) + v43)
      {
        break;
      }

      if (!shape_enum_clip_scan(v36, v39 - 4))
      {
LABEL_618:
        free(v36);
        goto LABEL_619;
      }
    }

    v30 = v336;
  }

  else
  {
    v39 = 0;
    v36 = 0;
    v339 = 0;
    v37 = 0;
    v40 = v341;
    v35 = v345;
    v34 = v346;
  }

  v335 = (v3 - 1);
  v334 = -v30;
  v337 = v332 - 4;
  v45 = v36;
  while (2)
  {
    LODWORD(v343) = v37;
    v36 = v45;
    v46 = *v40;
    v345 = v35;
    v346 = v34;
    v46(v40, v34, v35, v3);
    v47 = *(v40 + 160);
    v48 = *(v40 + 144);
    v50 = *(v40 + 8);
    v49 = *(v40 + 12);
    v347 = v36;
    if (v50 == v49)
    {
      if (v23 != 255)
      {
        v51 = v3;
        v52 = v48;
        v53 = v342;
        do
        {
          if (*v52)
          {
            *v47 = PDM_15068(*v47, v23);
          }

          ++v52;
          v47 += 4;
          --v51;
        }

        while (v51);
        v47 += 4 * v334;
        v48 += v335 + v334 + 1;
LABEL_33:
        v36 = v347;
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v54 = *(v40 + 152);
    if (v50 == 134755160)
    {
      if (v23 == 255)
      {
        v68 = 0;
        do
        {
          if (v48[v68])
          {
            *(v47 + 4 * v68) = BYTE2(*(v54 + 4 * v68)) | *(v54 + 4 * v68) & 0xFF00FF00 | (*(v54 + 4 * v68) << 16);
          }

          ++v68;
        }

        while (v3 != v68);
      }

      else
      {
        v55 = 0;
        do
        {
          if (v48[v55])
          {
            *(v47 + 4 * v55) = PDM_15068(BYTE2(*(v54 + 4 * v55)) | *(v54 + 4 * v55) & 0xFF00FF00 | (*(v54 + 4 * v55) << 16), v23);
          }

          ++v55;
        }

        while (v3 != v55);
      }

      v36 = v347;
LABEL_72:
      v53 = v342;
      goto LABEL_73;
    }

    v56 = HIWORD(v50) & 0x3F;
    if (v56 == 16)
    {
      v53 = v342;
      if (v49 == 134755208)
      {
        if (v23 == 255)
        {
          v317 = 0;
          do
          {
            if (v48[v317])
            {
              *(v47 + 4 * v317) = HIDWORD(*(v54 + 8 * v317)) & 0xFF000000 | BYTE1(*(v54 + 8 * v317)) | (*(v54 + 8 * v317) >> 24) & 0xFF0000 | (BYTE3(*(v54 + 8 * v317)) << 8);
            }

            ++v317;
          }

          while (v3 != v317);
        }

        else
        {
          v74 = 0;
          do
          {
            if (v48[v74])
            {
              *(v47 + 4 * v74) = PDM_15068(HIDWORD(*(v54 + 8 * v74)) & 0xFF000000 | BYTE1(*(v54 + 8 * v74)) | (*(v54 + 8 * v74) >> 24) & 0xFF0000 | (BYTE3(*(v54 + 8 * v74)) << 8), v23);
            }

            ++v74;
          }

          while (v3 != v74);
        }
      }

      else if (v23 == 255)
      {
        v318 = 0;
        do
        {
          if (v48[v318])
          {
            *(v47 + 4 * v318) = (WORD2(*(v54 + 8 * v318)) >> 8) | HIDWORD(*(v54 + 8 * v318)) & 0xFF000000 | (BYTE1(*(v54 + 8 * v318)) << 16) | (BYTE3(*(v54 + 8 * v318)) << 8);
          }

          ++v318;
        }

        while (v3 != v318);
      }

      else
      {
        v87 = 0;
        do
        {
          if (v48[v87])
          {
            *(v47 + 4 * v87) = PDM_15068((WORD2(*(v54 + 8 * v87)) >> 8) | HIDWORD(*(v54 + 8 * v87)) & 0xFF000000 | (BYTE1(*(v54 + 8 * v87)) << 16) | (BYTE3(*(v54 + 8 * v87)) << 8), v23);
          }

          ++v87;
        }

        while (v3 != v87);
      }

      goto LABEL_33;
    }

    v53 = v342;
    if (v56 != 32)
    {
      if (v49 == 134755208)
      {
        if (v23 == 255)
        {
          v319 = 0;
          do
          {
            if (v48[v319])
            {
              *(v47 + 4 * v319) = bswap32(*(v54 + 4 * v319));
            }

            ++v319;
          }

          while (v3 != v319);
        }

        else
        {
          v75 = 0;
          do
          {
            if (v48[v75])
            {
              *(v47 + 4 * v75) = PDM_15068(bswap32(*(v54 + 4 * v75)), v23);
            }

            ++v75;
          }

          while (v3 != v75);
        }
      }

      else if (v23 == 255)
      {
        v320 = 0;
        do
        {
          if (v48[v320])
          {
            HIDWORD(v321) = *(v54 + 4 * v320);
            LODWORD(v321) = HIDWORD(v321);
            *(v47 + 4 * v320) = v321 >> 8;
          }

          ++v320;
        }

        while (v3 != v320);
      }

      else
      {
        v88 = 0;
        do
        {
          if (v48[v88])
          {
            HIDWORD(v89) = *(v54 + 4 * v88);
            LODWORD(v89) = HIDWORD(v89);
            *(v47 + 4 * v88) = PDM_15068(v89 >> 8, v23);
          }

          ++v88;
        }

        while (v3 != v88);
      }

      goto LABEL_33;
    }

    if (v49 == 134755208)
    {
      if (v23 != 255)
      {
        v57 = 0;
        v58 = (v54 + 8);
        do
        {
          if (v48[v57])
          {
            v59 = v58[1];
            if (v59 <= 0.0)
            {
              v67 = 0;
            }

            else
            {
              v60 = *(v58 - 2);
              v61 = *(v58 - 1);
              v62 = *v58;
              v63 = ((v59 * 255.0) + 0.5);
              if (v59 > 1.0)
              {
                v63 = 255;
                v59 = 1.0;
              }

              v64 = ((v60 * 255.0) + 0.5);
              if (v60 < 0.0)
              {
                v64 = 0;
              }

              if (v60 > v59)
              {
                v64 = v63;
              }

              v65 = ((v61 * 255.0) + 0.5);
              if (v61 < 0.0)
              {
                v65 = 0;
              }

              if (v61 > v59)
              {
                v65 = v63;
              }

              v66 = ((v62 * 255.0) + 0.5);
              if (v62 < 0.0)
              {
                v66 = 0;
              }

              if (v62 > v59)
              {
                v66 = v63;
              }

              v67 = PDM_15068(v64 | (v63 << 24) | (v65 << 8) | (v66 << 16), v23);
            }

            *(v47 + 4 * v57) = v67;
          }

          ++v57;
          v58 += 4;
        }

        while (v3 != v57);
        goto LABEL_33;
      }

      v295 = 0;
      v296 = (v54 + 8);
      v36 = v347;
      do
      {
        if (v48[v295])
        {
          v297 = v296[1];
          if (v297 <= 0.0)
          {
            v305 = 0;
          }

          else
          {
            v298 = *(v296 - 2);
            v299 = *(v296 - 1);
            v300 = *v296;
            v301 = ((v297 * 255.0) + 0.5);
            if (v297 > 1.0)
            {
              v301 = 255;
              v297 = 1.0;
            }

            v302 = ((v298 * 255.0) + 0.5);
            if (v298 < 0.0)
            {
              v302 = 0;
            }

            if (v298 > v297)
            {
              v302 = v301;
            }

            v303 = ((v299 * 255.0) + 0.5);
            if (v299 < 0.0)
            {
              v303 = 0;
            }

            if (v299 > v297)
            {
              v303 = v301;
            }

            v304 = ((v300 * 255.0) + 0.5);
            if (v300 < 0.0)
            {
              v304 = 0;
            }

            if (v300 > v297)
            {
              v304 = v301;
            }

            v305 = v302 | (v301 << 24) | (v303 << 8) | (v304 << 16);
          }

          *(v47 + 4 * v295) = v305;
        }

        ++v295;
        v296 += 4;
      }

      while (v3 != v295);
    }

    else
    {
      if (v23 != 255)
      {
        v76 = 0;
        v77 = (v54 + 8);
        do
        {
          if (v48[v76])
          {
            v78 = v77[1];
            if (v78 <= 0.0)
            {
              v86 = 0;
            }

            else
            {
              v79 = *(v77 - 2);
              v80 = *(v77 - 1);
              v81 = *v77;
              v82 = ((v78 * 255.0) + 0.5);
              if (v78 > 1.0)
              {
                v82 = 255;
                v78 = 1.0;
              }

              v83 = ((v79 * 255.0) + 0.5);
              if (v79 < 0.0)
              {
                v83 = 0;
              }

              if (v79 > v78)
              {
                v83 = v82;
              }

              v84 = ((v80 * 255.0) + 0.5);
              if (v80 < 0.0)
              {
                v84 = 0;
              }

              if (v80 > v78)
              {
                v84 = v82;
              }

              v85 = ((v81 * 255.0) + 0.5);
              if (v81 < 0.0)
              {
                v85 = 0;
              }

              if (v81 > v78)
              {
                v85 = v82;
              }

              v86 = PDM_15068((v83 << 16) | (v82 << 24) | (v84 << 8) | v85, v23);
            }

            *(v47 + 4 * v76) = v86;
          }

          ++v76;
          v77 += 4;
        }

        while (v3 != v76);
        goto LABEL_33;
      }

      v306 = 0;
      v307 = (v54 + 8);
      v36 = v347;
      do
      {
        if (v48[v306])
        {
          v308 = v307[1];
          if (v308 <= 0.0)
          {
            v316 = 0;
          }

          else
          {
            v309 = *(v307 - 2);
            v310 = *(v307 - 1);
            v311 = *v307;
            v312 = ((v308 * 255.0) + 0.5);
            if (v308 > 1.0)
            {
              v312 = 255;
              v308 = 1.0;
            }

            v313 = ((v309 * 255.0) + 0.5);
            if (v309 < 0.0)
            {
              v313 = 0;
            }

            if (v309 > v308)
            {
              v313 = v312;
            }

            v314 = ((v310 * 255.0) + 0.5);
            if (v310 < 0.0)
            {
              v314 = 0;
            }

            if (v310 > v308)
            {
              v314 = v312;
            }

            v315 = ((v311 * 255.0) + 0.5);
            if (v311 < 0.0)
            {
              v315 = 0;
            }

            if (v311 > v308)
            {
              v315 = v312;
            }

            v316 = (v313 << 16) | (v312 << 24) | (v314 << 8) | v315;
          }

          *(v47 + 4 * v306) = v316;
        }

        ++v306;
        v307 += 4;
      }

      while (v3 != v306);
    }

LABEL_73:
    switch(v53)
    {
      case 0:
        v69 = v3;
        v70 = v39;
        do
        {
          v71 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v71 = (*v70 * v71 + ((*v70 * v71) >> 8) + 1) >> 8;
            }

            if (v71)
            {
              if (v71 == 255)
              {
                v72 = 0;
              }

              else
              {
                v72 = PDM_15068(*v29, ~v71);
              }

              *v29 = v72;
            }
          }

          ++v48;
          v70 += v39 != 0;
          v29 += 4;
          --v69;
        }

        while (v69);
        v73 = v340;
        v39 = &v70[v339];
        goto LABEL_522;
      case 1:
        v172 = *v48;
        v173 = v48 + 1;
        if (v39)
        {
          v174 = v3;
          do
          {
            if (v172)
            {
              v175 = *v39 * v172 + ((*v39 * v172) >> 8) + 1;
              v176 = v337;
              if (v337 >= v29)
              {
                v176 = v29;
              }

              if (v176 >= *(v338 + 40))
              {
                v177 = v176;
              }

              else
              {
                v177 = *(v338 + 40);
              }

              if (BYTE1(v175))
              {
                if (BYTE1(v175) == 255)
                {
                  *v177 = *v47;
                }

                else
                {
                  DMplusDM_15069(v177, *v47, BYTE1(v175), *v177, ~(v175 >> 8));
                }
              }
            }

            else
            {
              v177 = v29;
            }

            v178 = *v173++;
            v172 = v178;
            v47 += 4;
            ++v39;
            v29 = (v177 + 1);
            --v174;
          }

          while (v174);
          v39 += v339;
          v36 = v347;
        }

        else
        {
          v328 = v3;
          do
          {
            v329 = v337;
            if (v337 >= v29)
            {
              v329 = v29;
            }

            if (v329 >= *(v338 + 40))
            {
              v177 = v329;
            }

            else
            {
              v177 = *(v338 + 40);
            }

            if (v172)
            {
              if (v172 == 255)
              {
                *v177 = *v47;
              }

              else
              {
                DMplusDM_15069(v177, *v47, v172, *v177, ~v172);
              }
            }

            v330 = *v173++;
            v172 = v330;
            v47 += 4;
            v29 = (v177 + 1);
            --v328;
          }

          while (v328);
          v39 = 0;
        }

        v29 = &v177[v340 + 1];
        goto LABEL_616;
      case 2:
        v150 = *v48;
        if (v39)
        {
          v151 = v48 + 1;
          v152 = v3;
          while (1)
          {
            v153 = v29;
            if (!v150)
            {
              goto LABEL_251;
            }

            v154 = *v39 * v150 + ((*v39 * v150) >> 8) + 1;
            if (!BYTE1(v154))
            {
              goto LABEL_251;
            }

            if (BYTE1(v154) == 255)
            {
              v155 = *v47;
              v156 = HIBYTE(*v47);
              if (v156)
              {
                if (v156 != 255)
                {
                  goto LABEL_250;
                }

                *v29 = v155;
              }
            }

            else
            {
              v157 = PDM_15068(*v47, BYTE1(v154));
              if (HIBYTE(v157))
              {
                v155 = v157;
LABEL_250:
                DplusDM_15070(v29, v155, *v29, ~v155 >> 24);
              }
            }

LABEL_251:
            v158 = *v151++;
            v150 = v158;
            v47 += 4;
            ++v39;
            v29 += 4;
            if (!--v152)
            {
              v39 += v339;
              v40 = v341;
              goto LABEL_602;
            }
          }
        }

        v322 = v48 + 1;
        v323 = v3;
        do
        {
          if (!v150)
          {
            goto LABEL_600;
          }

          if (v150 == 255)
          {
            v324 = *v47;
            v325 = HIBYTE(*v47);
            if (!v325)
            {
              goto LABEL_600;
            }

            if (v325 == 255)
            {
              *v29 = v324;
              goto LABEL_600;
            }
          }

          else
          {
            v326 = PDM_15068(*v47, v150);
            if (!HIBYTE(v326))
            {
              goto LABEL_600;
            }

            v324 = v326;
          }

          DplusDM_15070(v29, v324, *v29, ~v324 >> 24);
LABEL_600:
          v327 = *v322++;
          v150 = v327;
          v47 += 4;
          v29 += 4;
          --v323;
        }

        while (v323);
        v39 = 0;
        v153 = v29 - 4;
LABEL_602:
        v29 = v153 + 4 * v340 + 4;
LABEL_523:
        v294 = v345;
        v293 = v346;
        v36 = v347;
LABEL_524:
        if (--v344)
        {
          v45 = 0;
          v37 = v343 + 1;
          v34 = *(v40 + 128) + v293;
          v35 = *(v40 + 136) + v294;
          if (v36)
          {
            goto LABEL_17;
          }

          continue;
        }

        if (v36)
        {
          goto LABEL_618;
        }

LABEL_619:
        if (v333)
        {
          free(v333);
        }

        return;
      case 3:
        v167 = v3;
        v116 = v39;
        do
        {
          v168 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v168 = (*v116 * v168 + ((*v116 * v168) >> 8) + 1) >> 8;
            }

            if (v168)
            {
              if (v168 == 255)
              {
                *v29 = PDM_15068(*v47, *(v29 + 3));
              }

              else
              {
                DMplusDM_15069(v29, *v47, (HIBYTE(*v29) * v168 + 128 + ((HIBYTE(*v29) * v168 + 128) >> 8)) >> 8, *v29, ~v168);
              }
            }
          }

          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          --v167;
        }

        while (v167);
        goto LABEL_506;
      case 4:
        v121 = v3;
        v116 = v39;
        do
        {
          v122 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v122 = (*v116 * v122 + ((*v116 * v122) >> 8) + 1) >> 8;
            }

            if (v122)
            {
              if (v122 == 255)
              {
                *v29 = PDM_15068(*v47, *(v29 + 3) ^ 0xFFu);
              }

              else
              {
                v123 = (~*v29 >> 24) * v122 + 128;
                DMplusDM_15069(v29, *v47, (v123 + (v123 >> 8)) >> 8, *v29, ~v122);
              }
            }
          }

          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          --v121;
        }

        while (v121);
        goto LABEL_506;
      case 5:
        v203 = v3;
        v116 = v39;
        while (1)
        {
          v204 = *v48;
          if (*v48)
          {
            if (!v39)
            {
              goto LABEL_349;
            }

            v205 = *v116 * v204 + ((*v116 * v204) >> 8) + 1;
            if (v205 >= 0x100)
            {
              break;
            }
          }

LABEL_350:
          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          if (!--v203)
          {
            goto LABEL_506;
          }
        }

        v204 = v205 >> 8;
LABEL_349:
        v206 = PDM_15068(*v47, v204);
        DMplusDM_15069(v29, v206, HIBYTE(*v29), *v29, ~v206 >> 24);
        goto LABEL_350;
      case 6:
        v223 = v3;
        v116 = v39;
        while (1)
        {
          v224 = *v48;
          if (*v48)
          {
            if (!v39)
            {
              goto LABEL_385;
            }

            v225 = *v116 * v224 + ((*v116 * v224) >> 8) + 1;
            if (v225 >= 0x100)
            {
              break;
            }
          }

LABEL_389:
          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          if (!--v223)
          {
            goto LABEL_506;
          }
        }

        v224 = v225 >> 8;
LABEL_385:
        if (~HIBYTE(*v29))
        {
          if (~HIBYTE(*v29) == 255)
          {
            *v29 = PDM_15068(*v47, v224);
          }

          else
          {
            DplusDM_15070(v29, *v29, *v47, (~HIBYTE(*v29) * v224 + 128 + ((~HIBYTE(*v29) * v224 + 128) >> 8)) >> 8);
          }
        }

        goto LABEL_389;
      case 7:
        v169 = v3;
        v116 = v39;
        do
        {
          v170 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v170 = (*v116 * v170 + ((*v116 * v170) >> 8) + 1) >> 8;
            }

            if (v170)
            {
              if (v170 == 255)
              {
                *v29 = PDM_15068(*v29, *(v47 + 3));
              }

              else
              {
                v171 = *(v47 + 3) * v170 + 128;
                DMplusDM_15069(v29, *v29, (v171 + (v171 >> 8)) >> 8, *v29, ~v170);
              }
            }
          }

          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          --v169;
        }

        while (v169);
        goto LABEL_506;
      case 8:
        v238 = v3;
        v116 = v39;
        do
        {
          v239 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v239 = (*v116 * v239 + ((*v116 * v239) >> 8) + 1) >> 8;
            }

            if (v239)
            {
              if (v239 == 255)
              {
                *v29 = PDM_15068(*v29, *(v47 + 3) ^ 0xFFu);
              }

              else
              {
                v240 = (~*v47 >> 24) * v239 + 128;
                DMplusDM_15069(v29, *v29, (v240 + (v240 >> 8)) >> 8, *v29, ~v239);
              }
            }
          }

          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          --v238;
        }

        while (v238);
        goto LABEL_506;
      case 9:
        v130 = v3;
        v116 = v39;
        while (1)
        {
          v131 = *v48;
          if (*v48)
          {
            if (!v39)
            {
              goto LABEL_209;
            }

            v132 = *v116 * v131 + ((*v116 * v131) >> 8) + 1;
            if (v132 >= 0x100)
            {
              break;
            }
          }

LABEL_210:
          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          if (!--v130)
          {
            goto LABEL_506;
          }
        }

        v131 = v132 >> 8;
LABEL_209:
        v133 = PDM_15068(*v47, v131);
        DMplusDM_15069(v29, v133, ~*v29 >> 24, *v29, (~v131 + HIBYTE(v133)));
        goto LABEL_210;
      case 10:
        v234 = v3;
        v116 = v39;
        while (1)
        {
          v235 = *v48;
          if (*v48)
          {
            if (!v39)
            {
              goto LABEL_410;
            }

            v236 = *v116 * v235 + ((*v116 * v235) >> 8) + 1;
            if (v236 >= 0x100)
            {
              break;
            }
          }

LABEL_411:
          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          if (!--v234)
          {
            goto LABEL_506;
          }
        }

        v235 = v236 >> 8;
LABEL_410:
        v237 = PDM_15068(*v47, v235);
        DMplusDM_15069(v29, v237, ~*v29 >> 24, *v29, ~v237 >> 24);
        goto LABEL_411;
      case 11:
        v115 = v3;
        v116 = v39;
        while (1)
        {
          v117 = *v48;
          if (*v48)
          {
            if (!v39)
            {
              goto LABEL_181;
            }

            v118 = *v116 * v117 + ((*v116 * v117) >> 8) + 1;
            if (v118 >= 0x100)
            {
              break;
            }
          }

LABEL_184:
          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          if (!--v115)
          {
            goto LABEL_506;
          }
        }

        v117 = v118 >> 8;
LABEL_181:
        v119 = PDM_15068(*v47, v117);
        v120 = HIBYTE(*v29);
        if (!v348)
        {
          LOBYTE(v120) = -1;
        }

        DAplusdDA_15071(v29, *v29, v120, v119, HIBYTE(v119));
        goto LABEL_184;
      case 12:
        v124 = v3;
        v125 = v39;
        while (1)
        {
          v126 = *v48;
          if (*v48)
          {
            if (!v39)
            {
              goto LABEL_201;
            }

            v127 = *v125 * v126 + ((*v125 * v126) >> 8) + 1;
            if (v127 >= 0x100)
            {
              break;
            }
          }

LABEL_202:
          ++v48;
          v47 += 4;
          v125 += v39 != 0;
          v29 += 4;
          if (!--v124)
          {
            v39 = &v125[v339];
            goto LABEL_521;
          }
        }

        v126 = v127 >> 8;
LABEL_201:
        v128 = PDM_15068(*v47, v126);
        v129 = ((*v29 >> 8) & 0xFF00FF) + ((v128 >> 8) & 0xFF00FF);
        *v29 = (v129 << 8) & 0xFF00FF00 | ((*v29 & 0xFF00FF) + (v128 & 0xFF00FF)) & 0xFF00FF | (15 * (v129 & 0x1000100 | (((*v29 & 0xFF00FF) + (v128 & 0xFF00FF)) >> 8) & 0x10001)) | (240 * (v129 & 0x1000100 | (((*v29 & 0xFF00FF) + (v128 & 0xFF00FF)) >> 8) & 0x10001));
        goto LABEL_202;
      case 13:
        v215 = v3;
        v91 = v39;
        while (1)
        {
          v216 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v217 = *v91 * v216 + ((*v91 * v216) >> 8) + 1;
              if (v217 < 0x100)
              {
                goto LABEL_378;
              }

              v216 = v217 >> 8;
            }

            v218 = PDM_15068(*v47, v216);
            v219 = HIBYTE(v218);
            if (HIBYTE(v218))
            {
              v220 = v218;
              v221 = *v29;
              if (v348)
              {
                v222 = HIBYTE(v221);
                if (!HIBYTE(v221))
                {
                  goto LABEL_377;
                }
              }

              else
              {
                v222 = 255;
              }

              v220 = PDAmultiplyPDA_15072(v221, v222, v220, v219);
LABEL_377:
              *v29 = v220;
            }
          }

LABEL_378:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v215)
          {
            goto LABEL_520;
          }
        }

      case 14:
        v107 = v3;
        v91 = v39;
        while (1)
        {
          v108 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v109 = *v91 * v108 + ((*v91 * v108) >> 8) + 1;
              if (v109 < 0x100)
              {
                goto LABEL_174;
              }

              v108 = v109 >> 8;
            }

            v110 = PDM_15068(*v47, v108);
            v111 = HIBYTE(v110);
            if (HIBYTE(v110))
            {
              v112 = v110;
              v113 = *v29;
              if (v348)
              {
                v114 = HIBYTE(v113);
                if (!HIBYTE(v113))
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v114 = 255;
              }

              v112 = PDAscreenPDA_15073(v113, v114, v112, v111);
LABEL_173:
              *v29 = v112;
            }
          }

LABEL_174:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v107)
          {
            goto LABEL_520;
          }
        }

      case 15:
        v159 = v3;
        v91 = v39;
        while (1)
        {
          v160 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v161 = *v91 * v160 + ((*v91 * v160) >> 8) + 1;
              if (v161 < 0x100)
              {
                goto LABEL_265;
              }

              v160 = v161 >> 8;
            }

            v162 = PDM_15068(*v47, v160);
            v163 = HIBYTE(v162);
            if (HIBYTE(v162))
            {
              v164 = v162;
              v165 = *v29;
              if (v348)
              {
                v166 = HIBYTE(v165);
                if (!HIBYTE(v165))
                {
                  goto LABEL_264;
                }
              }

              else
              {
                v166 = 255;
              }

              v164 = PDAoverlayPDA_15074(v165, v166, v164, v163);
LABEL_264:
              *v29 = v164;
            }
          }

LABEL_265:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v159)
          {
            goto LABEL_520;
          }
        }

      case 16:
        v99 = v3;
        v91 = v39;
        while (1)
        {
          v100 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v101 = *v91 * v100 + ((*v91 * v100) >> 8) + 1;
              if (v101 < 0x100)
              {
                goto LABEL_160;
              }

              v100 = v101 >> 8;
            }

            v102 = PDM_15068(*v47, v100);
            v103 = HIBYTE(v102);
            if (HIBYTE(v102))
            {
              v104 = v102;
              v105 = *v29;
              if (v348)
              {
                v106 = HIBYTE(v105);
                if (!HIBYTE(v105))
                {
                  goto LABEL_159;
                }
              }

              else
              {
                v106 = 255;
              }

              v104 = PDAdarkenPDA_15076(v105, v106, v104, v103);
LABEL_159:
              *v29 = v104;
            }
          }

LABEL_160:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v99)
          {
            goto LABEL_520;
          }
        }

      case 17:
        v187 = v3;
        v91 = v39;
        while (1)
        {
          v188 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v189 = *v91 * v188 + ((*v91 * v188) >> 8) + 1;
              if (v189 < 0x100)
              {
                goto LABEL_328;
              }

              v188 = v189 >> 8;
            }

            v190 = PDM_15068(*v47, v188);
            v191 = HIBYTE(v190);
            if (HIBYTE(v190))
            {
              v192 = v190;
              v193 = *v29;
              if (v348)
              {
                v194 = HIBYTE(v193);
                if (!HIBYTE(v193))
                {
                  goto LABEL_327;
                }
              }

              else
              {
                v194 = 255;
              }

              v192 = PDAlightenPDA_15075(v193, v194, v192, v191);
LABEL_327:
              *v29 = v192;
            }
          }

LABEL_328:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v187)
          {
            goto LABEL_520;
          }
        }

      case 18:
        v226 = v3;
        v91 = v39;
        while (1)
        {
          v227 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v228 = *v91 * v227 + ((*v91 * v227) >> 8) + 1;
              if (v228 < 0x100)
              {
                goto LABEL_403;
              }

              v227 = v228 >> 8;
            }

            v229 = PDM_15068(*v47, v227);
            v230 = HIBYTE(v229);
            if (HIBYTE(v229))
            {
              v231 = v229;
              v232 = *v29;
              if (v348)
              {
                v233 = HIBYTE(v232);
                if (!HIBYTE(v232))
                {
                  goto LABEL_402;
                }
              }

              else
              {
                v233 = 255;
              }

              v231 = PDAcolordodgePDA_15077(v232, v233, v231, v230);
LABEL_402:
              *v29 = v231;
            }
          }

LABEL_403:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v226)
          {
            goto LABEL_520;
          }
        }

      case 19:
        v255 = v3;
        v91 = v39;
        while (1)
        {
          v256 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v257 = *v91 * v256 + ((*v91 * v256) >> 8) + 1;
              if (v257 < 0x100)
              {
                goto LABEL_463;
              }

              v256 = v257 >> 8;
            }

            v258 = PDM_15068(*v47, v256);
            v259 = HIBYTE(v258);
            if (HIBYTE(v258))
            {
              v260 = v258;
              v261 = *v29;
              if (v348)
              {
                v262 = HIBYTE(v261);
                if (!HIBYTE(v261))
                {
                  goto LABEL_462;
                }
              }

              else
              {
                v262 = 255;
              }

              v260 = PDAcolorburnPDA_15078(v261, v262, v260, v259);
LABEL_462:
              *v29 = v260;
            }
          }

LABEL_463:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v255)
          {
            goto LABEL_520;
          }
        }

      case 20:
        v195 = v3;
        v91 = v39;
        while (1)
        {
          v196 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v197 = *v91 * v196 + ((*v91 * v196) >> 8) + 1;
              if (v197 < 0x100)
              {
                goto LABEL_342;
              }

              v196 = v197 >> 8;
            }

            v198 = PDM_15068(*v47, v196);
            v199 = HIBYTE(v198);
            if (HIBYTE(v198))
            {
              v200 = v198;
              v201 = *v29;
              if (v348)
              {
                v202 = HIBYTE(v201);
                if (!HIBYTE(v201))
                {
                  goto LABEL_341;
                }
              }

              else
              {
                v202 = 255;
              }

              v200 = PDAsoftlightPDA_15080(v201, v202, v200, v199);
LABEL_341:
              *v29 = v200;
            }
          }

LABEL_342:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v195)
          {
            goto LABEL_520;
          }
        }

      case 21:
        v207 = v3;
        v91 = v39;
        while (1)
        {
          v208 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v209 = *v91 * v208 + ((*v91 * v208) >> 8) + 1;
              if (v209 < 0x100)
              {
                goto LABEL_364;
              }

              v208 = v209 >> 8;
            }

            v210 = PDM_15068(*v47, v208);
            v211 = HIBYTE(v210);
            if (HIBYTE(v210))
            {
              v212 = v210;
              v213 = *v29;
              if (v348)
              {
                v214 = HIBYTE(v213);
                if (!HIBYTE(v213))
                {
                  goto LABEL_363;
                }
              }

              else
              {
                v214 = 255;
              }

              v212 = PDAhardlightPDA_15079(v213, v214, v212, v211);
LABEL_363:
              *v29 = v212;
            }
          }

LABEL_364:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v207)
          {
            goto LABEL_520;
          }
        }

      case 22:
        v247 = v3;
        v91 = v39;
        while (1)
        {
          v248 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v249 = *v91 * v248 + ((*v91 * v248) >> 8) + 1;
              if (v249 < 0x100)
              {
                goto LABEL_449;
              }

              v248 = v249 >> 8;
            }

            v250 = PDM_15068(*v47, v248);
            v251 = HIBYTE(v250);
            if (HIBYTE(v250))
            {
              v252 = v250;
              v253 = *v29;
              if (v348)
              {
                v254 = HIBYTE(v253);
                if (!HIBYTE(v253))
                {
                  goto LABEL_448;
                }
              }

              else
              {
                v254 = 255;
              }

              v252 = PDAdifferencePDA_15081(v253, v254, v252, v251);
LABEL_448:
              *v29 = v252;
            }
          }

LABEL_449:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v247)
          {
            goto LABEL_520;
          }
        }

      case 23:
        v263 = v3;
        v91 = v39;
        while (1)
        {
          v264 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v265 = *v91 * v264 + ((*v91 * v264) >> 8) + 1;
              if (v265 < 0x100)
              {
                goto LABEL_477;
              }

              v264 = v265 >> 8;
            }

            v266 = PDM_15068(*v47, v264);
            v267 = HIBYTE(v266);
            if (HIBYTE(v266))
            {
              v268 = v266;
              v269 = *v29;
              if (v348)
              {
                v270 = HIBYTE(v269);
                if (!HIBYTE(v269))
                {
                  goto LABEL_476;
                }
              }

              else
              {
                v270 = 255;
              }

              v268 = PDAexclusionPDA_15082(v269, v270, v268, v267);
LABEL_476:
              *v29 = v268;
            }
          }

LABEL_477:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v263)
          {
            goto LABEL_520;
          }
        }

      case 24:
        v142 = v3;
        v91 = v39;
        while (1)
        {
          v143 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v144 = *v91 * v143 + ((*v91 * v143) >> 8) + 1;
              if (v144 < 0x100)
              {
                goto LABEL_238;
              }

              v143 = v144 >> 8;
            }

            v145 = PDM_15068(*v47, v143);
            v146 = HIBYTE(v145);
            if (HIBYTE(v145))
            {
              v147 = v145;
              v148 = *v29;
              if (v348)
              {
                v149 = HIBYTE(v148);
                if (!HIBYTE(v148))
                {
                  goto LABEL_237;
                }
              }

              else
              {
                v149 = 255;
              }

              v147 = PDAhuePDA_15083(v148, v149, v147, v146);
LABEL_237:
              *v29 = v147;
            }
          }

LABEL_238:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v142)
          {
            goto LABEL_520;
          }
        }

      case 25:
        v134 = v3;
        v91 = v39;
        while (1)
        {
          v135 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v136 = *v91 * v135 + ((*v91 * v135) >> 8) + 1;
              if (v136 < 0x100)
              {
                goto LABEL_224;
              }

              v135 = v136 >> 8;
            }

            v137 = PDM_15068(*v47, v135);
            v138 = HIBYTE(v137);
            if (HIBYTE(v137))
            {
              v139 = v137;
              v140 = *v29;
              if (v348)
              {
                v141 = HIBYTE(v140);
                if (!HIBYTE(v140))
                {
                  goto LABEL_223;
                }
              }

              else
              {
                v141 = 255;
              }

              v139 = PDAsaturationPDA_15084(v140, v141, v139, v138);
LABEL_223:
              *v29 = v139;
            }
          }

LABEL_224:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v134)
          {
            goto LABEL_520;
          }
        }

      case 26:
        v287 = v3;
        v91 = v39;
        while (1)
        {
          v288 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v289 = *v91 * v288 + ((*v91 * v288) >> 8) + 1;
              if (v289 < 0x100)
              {
                goto LABEL_519;
              }

              v288 = v289 >> 8;
            }

            v290 = PDM_15068(*v47, v288);
            if (HIBYTE(v290))
            {
              v291 = *v29;
              if (v348)
              {
                v292 = HIBYTE(v291);
                if (!HIBYTE(v291))
                {
                  goto LABEL_518;
                }
              }

              else
              {
                v292 = 255;
              }

              v290 = PDAluminosityPDA_15085(v290, HIBYTE(v290), v291, v292);
LABEL_518:
              *v29 = v290;
            }
          }

LABEL_519:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v287)
          {
            goto LABEL_520;
          }
        }

      case 27:
        v90 = v3;
        v91 = v39;
        while (1)
        {
          v92 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v93 = *v91 * v92 + ((*v91 * v92) >> 8) + 1;
              if (v93 < 0x100)
              {
                goto LABEL_146;
              }

              v92 = v93 >> 8;
            }

            v94 = PDM_15068(*v47, v92);
            v95 = HIBYTE(v94);
            if (HIBYTE(v94))
            {
              v96 = v94;
              v97 = *v29;
              if (v348)
              {
                v98 = HIBYTE(v97);
                if (!HIBYTE(v97))
                {
                  goto LABEL_145;
                }
              }

              else
              {
                v98 = 255;
              }

              v96 = PDAluminosityPDA_15085(v97, v98, v96, v95);
LABEL_145:
              *v29 = v96;
            }
          }

LABEL_146:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v90)
          {
            goto LABEL_520;
          }
        }

      case 28:
        v271 = v3;
        v91 = v39;
        while (1)
        {
          v272 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v273 = *v91 * v272 + ((*v91 * v272) >> 8) + 1;
              if (v273 < 0x100)
              {
                goto LABEL_491;
              }

              v272 = v273 >> 8;
            }

            v274 = PDM_15068(*v47, v272);
            v275 = HIBYTE(v274);
            if (HIBYTE(v274))
            {
              v276 = v274;
              v277 = *v29;
              if (v348)
              {
                v278 = HIBYTE(v277);
                if (!HIBYTE(v277))
                {
                  goto LABEL_490;
                }
              }

              else
              {
                v278 = 255;
              }

              v276 = PDAtranspose_huePDA_15086(v277, v278, v276, v275);
LABEL_490:
              *v29 = v276;
            }
          }

LABEL_491:
          ++v48;
          v47 += 4;
          v91 += v39 != 0;
          v29 += 4;
          if (!--v271)
          {
LABEL_520:
            v39 = &v91[v339];
LABEL_521:
            v73 = v340;
            v40 = v341;
LABEL_522:
            v29 += 4 * v73;
            goto LABEL_523;
          }
        }

      case 29:
        v116 = v39;
        v279 = v3;
        while (1)
        {
          v280 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v281 = *v116 * v280 + ((*v116 * v280) >> 8) + 1;
              if (v281 < 0x100)
              {
                goto LABEL_505;
              }

              v280 = v281 >> 8;
            }

            v282 = PDM_15068(*v47, v280);
            v283 = HIBYTE(v282);
            if (HIBYTE(v282))
            {
              v284 = v282;
              v285 = *v29;
              if (v348)
              {
                v286 = HIBYTE(v285);
                if (!HIBYTE(v285))
                {
                  goto LABEL_504;
                }
              }

              else
              {
                v286 = 255;
              }

              v284 = PDAtranspose_saturationPDA_15087(v285, v286, v284, v283);
LABEL_504:
              *v29 = v284;
            }
          }

LABEL_505:
          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          if (!--v279)
          {
            goto LABEL_506;
          }
        }

      case 30:
        v116 = v39;
        v241 = v3;
        while (1)
        {
          v242 = *v48;
          if (*v48)
          {
            if (v39)
            {
              v243 = *v116 * v242 + ((*v116 * v242) >> 8) + 1;
              if (v243 < 0x100)
              {
                goto LABEL_435;
              }

              v242 = v243 >> 8;
            }

            v244 = PDM_15068(*v47, v242);
            if (HIBYTE(v244))
            {
              v245 = *v29;
              if (v348)
              {
                v246 = HIBYTE(v245);
                if (!HIBYTE(v245))
                {
                  goto LABEL_434;
                }
              }

              else
              {
                v246 = 255;
              }

              v244 = PDAtranspose_luminosityPDA_15088(v244, HIBYTE(v244), v245, v246);
LABEL_434:
              *v29 = v244;
            }
          }

LABEL_435:
          ++v48;
          v47 += 4;
          v116 += v39 != 0;
          v29 += 4;
          if (!--v241)
          {
            goto LABEL_506;
          }
        }

      case 31:
        v116 = v39;
        v179 = v3;
        break;
      default:
LABEL_616:
        v294 = v345;
        v293 = v346;
        goto LABEL_524;
    }

    break;
  }

  while (1)
  {
    v180 = *v48;
    if (*v48)
    {
      if (v39)
      {
        v181 = *v116 * v180 + ((*v116 * v180) >> 8) + 1;
        if (v181 < 0x100)
        {
          goto LABEL_314;
        }

        v180 = v181 >> 8;
      }

      v182 = PDM_15068(*v47, v180);
      v183 = HIBYTE(v182);
      if (HIBYTE(v182))
      {
        v184 = v182;
        v185 = *v29;
        if (v348)
        {
          v186 = HIBYTE(v185);
          if (!HIBYTE(v185))
          {
            goto LABEL_313;
          }
        }

        else
        {
          v186 = 255;
        }

        v184 = PDAtranspose_luminosityPDA_15088(v185, v186, v184, v183);
LABEL_313:
        *v29 = v184;
      }
    }

LABEL_314:
    ++v48;
    v47 += 4;
    v116 += v39 != 0;
    v29 += 4;
    if (!--v179)
    {
LABEL_506:
      v39 = &v116[v339];
      goto LABEL_521;
    }
  }
}

void RGBA32_shade_axial_RGB(uint64_t a1, uint64_t a2, unint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x8_t a12)
{
  v12 = *(a1 + 280);
  v13 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v12 * (*(*(a1 + 272) + 4) * a2)));
  v14 = a1 + 368;
  v15 = *(a1 + 368);
  v16 = (a3 >> 4) & 0xF0;
  v17 = v15 + v16;
  if (v15)
  {
    v18 = v15 + v16;
  }

  else
  {
    v18 = a1 + 368;
  }

  if (v15)
  {
    v19 = 15;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a1 + 336);
  v22 = *(a1 + 344);
  v23 = *(a1 + 304);
  v24 = *(a1 + 308);
  v25 = *(a1 + 320);
  v26 = *(a1 + 324);
  v29 = a1 + 144;
  v27 = *(a1 + 144);
  v28 = *(v29 + 8);
  v30 = *(a1 + 376);
  v31 = *(a1 + 360);
  if (v12 != 0.0)
  {
    if (v15)
    {
      v37 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    while (1)
    {
      v38 = v25;
      if (v13 >= v23)
      {
        v38 = v26;
        if (v13 <= v24)
        {
          v38 = (v22 * (v13 - v21));
        }
      }

      if ((v38 & 0x80000000) == 0)
      {
        break;
      }

      v39 = v30;
      if (v30)
      {
        goto LABEL_38;
      }

LABEL_39:
      LOBYTE(v37) = (v37 + 1) & v19;
      v13 = v12 + v13;
      v28 = (v28 + 4);
      *v27 = v39;
      v27 = (v27 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v39 = (v31 + 2 * (4 * v38));
LABEL_38:
    v40 = *(v18 + v37);
    v28->i32[0] = (v40 + v39[1]) & 0xFF00 | ((v40 + *v39) >> 8) | (((v40 + v39[2]) >> 8) << 16) & 0xFFFFFF | (((v40 + v39[3]) >> 8) << 24);
    LOBYTE(v39) = -1;
    goto LABEL_39;
  }

  if (v15)
  {
    v32 = v17;
  }

  else
  {
    v32 = v14;
  }

  if (v15)
  {
    LODWORD(v33) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v33) = 0;
  }

  if (v15)
  {
    LODWORD(v34) = (a2 >> 8) & 0xF;
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v15)
  {
    v35 = 15;
  }

  else
  {
    v35 = 0;
  }

  if (v13 >= v23)
  {
    v25 = v26;
    if (v13 <= v24)
    {
      v25 = (v22 * (v13 - v21));
    }
  }

  if ((v25 & 0x80000000) == 0 || v30)
  {
    v41 = (v31 + 2 * (4 * v25));
    if (v25 >= 0)
    {
      v30 = v41;
    }

    v42 = *v30;
    v43 = v30[1];
    v44 = v30[2];
    v45 = v30[3];
    if (v15)
    {
      v46 = vdup_n_s32(v42);
      v47 = vdup_n_s32(v43);
      v48 = a4 + 4;
      v49 = vdup_n_s32(v44);
      v50 = vdup_n_s32(v45);
      do
      {
        v51 = (v32 + v34);
        v34 = (v34 + 1) & v35;
        a12.i8[0] = *v51;
        a12.i8[4] = *(v32 + v33);
        v52 = vand_s8(a12, 0xFF000000FFLL);
        v53 = vorr_s8(vorr_s8((*&vshr_n_u32(vadd_s32(v46, v52), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), vand_s8(vadd_s32(v47, v52), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v49, v52), 8uLL), 0xFF000000FF0000), (*&vshl_n_s32(vadd_s32(v50, v52), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
        *v28 = v53;
        v33 = (v33 + 1) & v35;
        v53.i8[0] = *(v32 + v34);
        v53.i8[4] = *(v32 + v33);
        v54 = vand_s8(v53, 0xFF000000FFLL);
        a12 = vorr_s8(vorr_s8((*&vshr_n_u32(vadd_s32(v46, v54), 8uLL) & 0xFFFFFEFFFFFFFEFFLL), vand_s8(vadd_s32(v47, v54), 0xFF000000FF00)), vorr_s8(vand_s8(vshl_n_s32(vadd_s32(v49, v54), 8uLL), 0xFF000000FF0000), (*&vshl_n_s32(vadd_s32(v50, v54), 0x10uLL) & 0xFF00FFFFFF00FFFFLL)));
        v28[1] = a12;
        *v27++ = -1;
        v28 += 2;
        v48 -= 4;
      }

      while (v48 > 4);
    }

    else
    {
      v55 = vdupq_n_s32(v43 & 0xFF00 | (v42 >> 8) | (BYTE1(v44) << 16) & 0xFFFFFF | (BYTE1(v45) << 24));
      v56 = a4 + 4;
      do
      {
        *v28->i8 = v55;
        v28 += 2;
        *v27++ = -1;
        v56 -= 4;
      }

      while (v56 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v36 = 4;
    }

    else
    {
      v36 = a4;
    }

    bzero(v27, ((a4 - v36 + 3) & 0xFFFFFFFC) + 4);
  }
}

uint64_t CGPixelComponentMax(uint64_t result, unsigned int a2)
{
  if (result >= 0xA)
  {
    _CGHandleAssert("sort_weight", 280, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "(int)type >= 0 && (int)type <= (int)kCGPixelComponentTypeMax", "invalid pixel component type %d");
  }

  if (a2 >= 0xA)
  {
    _CGHandleAssert("sort_weight", 280, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Images/CGBitmapPixelInfo.c", "(int)type >= 0 && (int)type <= (int)kCGPixelComponentTypeMax", "invalid pixel component type %d");
  }

  if (sort_weight_weight[result] <= sort_weight_weight[a2])
  {
    return a2;
  }

  else
  {
    return result;
  }
}

uint64_t rip_auto_context_contains_transparency(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    if (*(v1 + 16) == 1129601108 && *(v1 + 24) == 4)
    {
      return (*(*(v1 + 32) + 40) & 0x1F) != 0;
    }

    else
    {
      handle_invalid_context("CGBitmapContextGetBitmapInfo", v1);
      return 0;
    }
  }

  else
  {
    v3 = *(a1 + 72);
    if (!v3)
    {
      _CGHandleAssert("rip_auto_context_contains_transparency", 401, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "data->dl != NULL", "display list is missing");
    }

    return CG::DisplayList::containsTransparentContent((v3 + 16), 0);
  }
}

uint64_t CG::DisplayList::containsTransparentContent(CG::DisplayList *this, const CGRect *a2)
{
  if ((*(this + 65) & 0x10) == 0)
  {
    return 0;
  }

  v12[3] = v2;
  v12[4] = v3;
  v5 = *(this + 13);
  if (!*v5)
  {
    return 1;
  }

  if (*(v5 + 48))
  {
    if (*(v5 + 16) == INFINITY || *(v5 + 24) == INFINITY)
    {
      return 0;
    }

    v8 = *(v5 + 32);
    v9 = *(v5 + 40);
  }

  else
  {
    Shape = CG::DisplayListShape::getShape(*(this + 13), a2);
    if (!Shape)
    {
      return 1;
    }

    v11 = 0;
    v12[0] = 0;
    if (!shape_bounds(Shape, v12 + 1, v12, &v11 + 1, &v11))
    {
      return 1;
    }

    v7 = SLODWORD(v12[0]);
    v8 = (HIDWORD(v11) - HIDWORD(v12[0]));
    v9 = (v11 - LODWORD(v12[0]));
    *(v5 + 16) = SHIDWORD(v12[0]);
    *(v5 + 24) = v7;
    *(v5 + 32) = v8;
    *(v5 + 40) = v9;
    *(v5 + 48) |= 1u;
  }

  result = 0;
  if (v8 != 0.0 && v9 != 0.0)
  {
    return 1;
  }

  return result;
}

uint64_t *CG::DisplayListShape::getShape(CG::DisplayListShape *this, const CGRect *a2)
{
  std::mutex::lock((this + 56));
  v3 = *(this + 1);
  if (v3 || (v3 = shape_accum_shape(*this), (*(this + 1) = v3) != 0))
  {
    if (v3 == &the_empty_shape)
    {
      v3 = 0;
    }
  }

  else
  {
    *(this + 1) = &the_empty_shape;
  }

  std::mutex::unlock((this + 56));
  return v3;
}

uint64_t *shape_accum_shape(int *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return &the_empty_shape;
  }

  v1 = &the_empty_shape;
  if (*a1 < 3)
  {
    return v1;
  }

  v1 = 0;
  v2 = *(a1 + 2);
  v3 = v2 + 4 * (4 * *a1);
  v4 = (v2 + 12);
  do
  {
    v6 = *(v4 - 3);
    v5 = *(v4 - 2);
    v7 = v4 - 3;
    if (v6 < v5)
    {
      v8 = *(v4 - 1) <= -2147483647 ? -2147483647 : *(v4 - 1);
      v9 = *v4 >= 2147483646 ? 2147483646 : *v4;
      if (v8 < v9)
      {
        if (v1)
        {
          v15 = 0x280000000;
          v16 = v8;
          v17 = 4;
          v18 = v6;
          v19 = v5;
          v20 = v9;
          v21 = 0x7FFFFFFF00000002;
          a1 = shape_union(a1, v1, &v15);
          v10 = a1;
          if (v1 != &v22 && v1 != &the_empty_shape)
          {
            free(v1);
          }

          v1 = v10;
        }

        else
        {
          v22 = 0x280000000;
          v23 = v8;
          v24 = 4;
          v25 = v6;
          v26 = v5;
          v27 = v9;
          v1 = &v22;
          v28 = 0x7FFFFFFF00000002;
        }
      }
    }

    v4 += 4;
  }

  while ((v7 + 4) < v3);
  if (!v1)
  {
    return &the_empty_shape;
  }

  if (v1 == &v22)
  {
    v11 = malloc_type_malloc(0x200uLL, 0x4C113E60uLL);
    if (v11)
    {
      v12 = *v1;
      v13 = *(v1 + 1);
      v11[8] = *(v1 + 8);
      *v11 = v12;
      *(v11 + 1) = v13;
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t shape_bounds(uint64_t a1, int *a2, _DWORD *a3, signed int *a4, _DWORD *a5)
{
  if (*a1 == 0x80000000 && *(a1 + 4) == 4 && *(a1 + 16) == 0x7FFFFFFF)
  {
    v5 = 0;
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
    *a4 = v6;
    *a2 = v6;
    *a5 = v7;
    *a3 = v7;
  }

  else
  {
    if (a1 == &the_empty_shape)
    {
      goto LABEL_8;
    }

    v8 = (a1 + 4 * *(a1 + 4));
    v9 = *v8;
    if (*v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }

    v10 = v8[1];
    v11 = &v8[v10];
    v12 = *v11;
    if (*v11 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }

    v14 = 0x80000000;
    v15 = 0x7FFFFFFF;
    do
    {
      v16 = v11;
      v17 = v12;
      if (v10 >= 4)
      {
        v18 = v8[2];
        v19 = v8[v10 - 1];
        if (v18 < v15)
        {
          v15 = v18;
        }

        if (v19 > v14)
        {
          v14 = v19;
        }
      }

      v10 = v16[1];
      v11 = &v16[v10];
      v12 = *v11;
      v8 = v16;
    }

    while (*v11 != 0x7FFFFFFF);
    if (v15 >= v14 || v9 >= v17)
    {
LABEL_8:
      v5 = 0;
      *a5 = 0;
      *a3 = 0;
      *a4 = 0;
      *a2 = 0;
    }

    else
    {
      *a2 = v15;
      *a3 = v9;
      *a4 = v14;
      *a5 = v17;
      return ((v16 - a1) >> 2) + 3;
    }
  }

  return v5;
}

uint64_t rip_adaptive_bitmap_context_get_content_type_from_color_space(CGColorSpace *a1)
{
  while (1)
  {
    ProcessColorModel = CGColorSpaceGetProcessColorModel(a1);
    if (ProcessColorModel <= 1)
    {
      if (!ProcessColorModel)
      {
        return 1;
      }

      if (ProcessColorModel == 1)
      {
        return 2;
      }
    }

    else
    {
      switch(ProcessColorModel)
      {
        case 2:
          return 4;
        case 3:
          return 8;
        case 4:
          return 16;
      }
    }

    if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelPattern)
    {
      break;
    }

    result = CGColorSpaceGetBaseColorSpace(a1);
    a1 = result;
    if (!result)
    {
      return result;
    }
  }

  return 0;
}

CGImageRef rip_auto_context_create_image(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 288);
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_lock((v4 + 120));
  v5 = *(v4 + 112);
  v6 = *(a3 + 120);
  if (*(v6 + 48) >= v5)
  {
    v5 = *(v6 + 48);
  }

  *(v4 + 112) = v5;
  v7 = rip_auto_context_rasterization_loop(v4);
  Image = CGBitmapContextCreateImage(v7);
  if (v7)
  {
    CFRelease(v7);
  }

  pthread_mutex_unlock((v4 + 120));
  return Image;
}

uint64_t rip_auto_context_rasterization_loop(uint64_t a1)
{
  values[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  if (v2)
  {
    CFRetain(v2);
    return 0;
  }

  v4 = *(a1 + 80);
  if (!v4)
  {
    return 0;
  }

  CFRelease(v4);
  *(a1 + 80) = 0;
  v5 = *(a1 + 100);
  v6 = *(a1 + 116);
  v7 = *(a1 + 105);
  v130 = *(a1 + 104);
  if (v130)
  {
    v8 = 1;
  }

  else
  {
    if (v5 == 1 && v6 == 1)
    {
      v9 = *(a1 + 96);
      v10 = *(a1 + 112);
      v11 = *(a1 + 105);
      v12 = *a1;
      v133 = *(a1 + 8);
LABEL_17:
      if (v11 == 1)
      {
        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      v14 = &kCGColorSpaceGenericGrayGamma2_2;
      goto LABEL_28;
    }

    if (v5 == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }
  }

  if (*(a1 + 105))
  {
    v11 = v8;
  }

  else
  {
    v11 = 5;
  }

  v9 = *(a1 + 96);
  v10 = *(a1 + 112);
  v12 = *a1;
  v133 = *(a1 + 8);
  if (v6 == 1)
  {
    goto LABEL_17;
  }

  if (v11 == 1)
  {
    v13 = 3;
  }

  else if (v11 == 2)
  {
    v13 = 7;
  }

  else
  {
    v13 = 5;
  }

  v14 = &kCGColorSpaceSRGB;
  if (*(a1 + 104))
  {
    v14 = &kCGColorSpaceExtendedSRGB;
  }

LABEL_28:
  v15 = *(a1 + 108);
  v16 = CGColorSpaceCreateWithName(*v14);
  if (CGColorSpaceIsWideGamutRGB(v16))
  {
    v17 = v9;
  }

  else
  {
    v17 = 1;
  }

  v18 = (v11 - 1) < 2;
  v20 = v13 == 7 || v17 != 1;
  if (v16)
  {
    v21 = *(*(v16 + 3) + 48);
  }

  else
  {
    v21 = 0;
  }

  v128 = v6;
  v129 = v5;
  v127 = v7;
  switch(v17)
  {
    case 1:
      v22 = v17;
      break;
    case 4:
      v22 = 4;
      break;
    case 5:
      v22 = 2;
      break;
    default:
      _CGHandleAssert("rip_auto_context_get_aligned_bytes_per_row_for_info", 1036, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "component_size != 0", "component type not supported (%u)", v17);
  }

  v131 = v13;
  if (v13 != 1)
  {
    ++v21;
  }

  v23 = v22 * v21;
  v24 = (v22 * v21 * v12 + 31) & 0xFFFFFFFFFFFFFFE0;
  if (v10 == 0.0)
  {
    v10 = v15;
  }

  v26 = *(a1 + 192);
  v25 = *(a1 + 200);
  v27 = (a1 + 192);
  v28 = *(a1 + 208);
  v29 = *(a1 + 216);
  v30 = *(a1 + 224);
  v31 = *(a1 + 232);
  v32 = *(a1 + 248);
  v33 = *(a1 + 256);
  v34 = *(a1 + 260);
  v35 = *(a1 + 264);
  v36 = *(a1 + 268);
  v125 = v18;
  v37 = v33 == v18;
  v126 = v12;
  if (v12 == v25 && ((v38.i32[2] = 0, v38.i64[0] = __PAIR64__(v131, v17), v38.i32[3] = *(a1 + 260), v39 = *(a1 + 232), v39.i32[3] = v20, (~vaddvq_s32(vandq_s8(vceqq_s32(v38, v39), xmmword_18439C7E0)) & 0xF) == 0) ? (v40 = v133 != v28) : (v40 = 1), !v40 ? (v41 = v23 != v29) : (v41 = 1), !v41 ? (v42 = v24 == v30) : (v42 = 0), v42 ? (v43 = !v37) : (v43 = 1), !v43 ? (v44 = v10 == v35) : (v44 = 0), v44 && (v45 = v16, v123 = v22 * v21, v119 = (v22 * v21 * v12 + 31) & 0xFFFFFFFFFFFFFFE0, v46 = v20, v47 = *(a1 + 192), v120 = v17, space = v16, v17 = *(a1 + 248), v122 = *(a1 + 232), v48 = *(a1 + 200), v49 = *(a1 + 208), v50 = *(a1 + 224), v118 = *(a1 + 256), v51 = CGColorSpaceEqualToColorSpace(v45, v32), LOBYTE(v33) = v118, v30 = v50, v28 = v49, v25 = v48, v31 = v122, v32 = v17, v27 = (a1 + 192), LODWORD(v17) = v120, v16 = space, v26 = v47, v20 = v46, v24 = v119, v23 = v123, v51) && *(a1 + 40)))
  {
    CGColorSpaceRelease(space);
    v52 = 0;
  }

  else
  {
    v53 = *(a1 + 48);
    v124 = v20;
    if (v53)
    {
      v54 = *(a1 + 272);
      if (v54)
      {
        v55 = *(v53 + 16);
        LODWORD(v135) = 1;
        *(&v135 + 4) = __PAIR64__(v128, v129);
        BYTE12(v135) = v130;
        BYTE13(v135) = v127;
        HIWORD(v135) = 0;
        *&v136 = v15;
        *&v139 = v26;
        *(&v139 + 1) = v25;
        *&v140 = v28;
        *(&v140 + 1) = v29;
        *v141 = v30;
        *&v141[8] = v31;
        *&v141[24] = v32;
        LOBYTE(v142) = v33;
        *(&v142 + 1) = *(v27 + 65);
        BYTE3(v142) = *(v27 + 67);
        *(&v142 + 4) = __PAIR64__(LODWORD(v35), v34);
        HIDWORD(v142) = v36;
        v55(v53, v54, &v135, &v139);
        *(a1 + 272) = 0;
        v32 = *(a1 + 248);
      }
    }

    CGColorSpaceRelease(v32);
    v27[3] = 0u;
    v27[4] = 0u;
    v27[1] = 0u;
    v27[2] = 0u;
    *v27 = 0u;
    if (v16)
    {
      CFRetain(v16);
    }

    *(a1 + 192) = 0;
    *(a1 + 200) = v126;
    *(a1 + 208) = v133;
    *(a1 + 216) = v23;
    *(a1 + 224) = v24;
    *(a1 + 232) = v17;
    *(a1 + 236) = v131;
    *(a1 + 240) = 0;
    *(a1 + 248) = v16;
    *(a1 + 256) = v125;
    *(v27 + 65) = 0;
    *(v27 + 67) = 0;
    *(a1 + 260) = v124;
    *(a1 + 264) = v10;
    *(a1 + 268) = 0;
    v52 = 1;
    v56 = *(a1 + 32);
    if (v56)
    {
      v57 = v27[3];
      *v141 = v27[2];
      *&v141[16] = v57;
      v142 = v27[4];
      v58 = v27[1];
      v139 = *v27;
      v140 = v58;
      v59 = *(v56 + 16);
      LODWORD(v135) = 1;
      *(&v135 + 4) = __PAIR64__(v128, v129);
      BYTE12(v135) = v130;
      BYTE13(v135) = v127;
      HIWORD(v135) = 0;
      *&v136 = v15;
      if ((v59(v56, &v135, &v139) & 1) == 0)
      {
        CGColorSpaceRelease(*(a1 + 248));
        v60 = *&v141[24];
        v138 = *&v141[16];
        v27[3] = 0u;
        v27[4] = 0u;
        v27[1] = 0u;
        v27[2] = 0u;
        *v27 = 0u;
        v135 = v139;
        v136 = v140;
        v137 = *v141;
        *keys = v142;
        if (v60)
        {
          CFRetain(v60);
        }

        v61 = v136;
        *v27 = v135;
        v27[1] = v61;
        v27[2] = v137;
        *(v27 + 6) = v138;
        *(a1 + 248) = v60;
        *(a1 + 256) = *keys;
      }

      v52 = 1;
    }
  }

  v62 = *(a1 + 200);
  v63 = *(a1 + 208);
  v64 = *(a1 + 224);
  v65 = *(a1 + 232);
  v66 = *(a1 + 236);
  v67 = *(a1 + 248);
  v68 = *(a1 + 256);
  v69 = *(a1 + 264);
  v70 = *(a1 + 16);
  v71 = *(a1 + 24);
  v72 = *(a1 + 64);
  if (v66 <= 4)
  {
    if (v66 > 1)
    {
      if (v66 == 2)
      {
        v73 = 1;
      }

      else if (v66 == 3)
      {
        if (*(a1 + 256))
        {
          v73 = 1;
        }

        else
        {
          v73 = 3;
        }
      }

      else if (*(a1 + 256))
      {
        v73 = 2;
      }

      else
      {
        v73 = 4;
      }

      goto LABEL_113;
    }

    if (!v66)
    {
      v73 = 7;
      goto LABEL_113;
    }

    if (v66 != 1)
    {
LABEL_164:
      _CGHandleAssert("rip_auto_context_get_alpha_info_from_bitmap_context_info", 457, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "0", "unhandled context model %d", *(a1 + 236));
    }

LABEL_112:
    v73 = 0;
    goto LABEL_113;
  }

  if (v66 > 6)
  {
    switch(v66)
    {
      case 7:
        if (v65 != 1)
        {
          goto LABEL_112;
        }

        v74 = (v68 & 1) == 0;
        v75 = 8194;
        break;
      case 8:
        if (v65 != 1)
        {
          goto LABEL_112;
        }

        v74 = (v68 & 1) == 0;
        v75 = 8193;
        break;
      case 9:
        goto LABEL_112;
      default:
        goto LABEL_164;
    }

    if (v74)
    {
      v73 = 0;
    }

    else
    {
      v73 = v75;
    }

    goto LABEL_120;
  }

  if (*(a1 + 256))
  {
    v73 = 0;
  }

  else
  {
    v73 = *(a1 + 236);
  }

LABEL_113:
  v76 = @"Provided CGBitmapContextInfo results in bits_per_component equal zero";
  v77 = -1;
  if (v65 > 3)
  {
    if (v65 == 4)
    {
      v78 = 32;
      goto LABEL_122;
    }

    if (v65 != 5)
    {
      goto LABEL_151;
    }

    goto LABEL_119;
  }

  if (v65 == 1)
  {
LABEL_120:
    v78 = 8;
    goto LABEL_122;
  }

  if (v65 != 2)
  {
    goto LABEL_151;
  }

LABEL_119:
  v78 = 16;
LABEL_122:
  v134 = v52;
  if (v67)
  {
    v79 = *(*(v67 + 3) + 48);
  }

  else
  {
    v79 = 0;
  }

  v80 = v73;
  if (v73)
  {
    v81 = v79 + 1;
  }

  else
  {
    v81 = v79;
  }

  if (CGColorSpaceUsesExtendedRange(v67))
  {
    v82 = 4352;
  }

  else
  {
    v82 = 0;
  }

  v83 = *(a1 + 40);
  if (v83)
  {
    v84 = *(a1 + 272);
    v132 = v82;
    if (v134)
    {
      if (v84)
      {
        _CGHandleAssert("rip_auto_context_create_bitmap_context", 522, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "data->current_provider == NULL", "buffer provider is missing");
      }

      v85 = *(a1 + 100);
      v86 = *(a1 + 116);
      v87 = *(a1 + 104);
      v88 = *(v83 + 2);
      v89 = *(a1 + 108);
      LODWORD(v135) = 1;
      *(&v135 + 4) = __PAIR64__(v86, v85);
      HIDWORD(v135) = v87;
      LODWORD(v136) = v89;
      v90 = v27[3];
      *v141 = v27[2];
      *&v141[16] = v90;
      v142 = v27[4];
      v91 = v27[1];
      v139 = *v27;
      v140 = v91;
      v92 = v88(v83, &v135, &v139);
      if (!v92)
      {
        v76 = @"allocate callback returned NULL CGBufferProviderRef";
        v77 = -3;
        goto LABEL_151;
      }

      v84 = v92;
      *(a1 + 272) = v92;
    }

    else if (!v84)
    {
      _CGHandleAssert("rip_auto_context_create_bitmap_context", 540, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "buffer_provider != NULL", "buffer provider is missing2");
    }

    v83 = CGBufferLockBytePtr(v84);
    v93 = rip_auto_context_release_bitmap_context_data;
    if (!v83)
    {
      _CGHandleAssert("rip_auto_context_handle_error", 166, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/AutomaticBitmapContext/RIPAutomaticContext.c", "0", "unhandled error code %d", -4);
    }

    v94 = a1;
    v95 = v64;
    v96 = v62;
    v97 = v63;
    v82 = v132;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v95 = v64;
    v96 = v62;
    v97 = v63;
  }

  v98 = CGBitmapContextCreateWithDataAndDictionary(v83, v96, v97, v78, v81 * v78, v95, v67, v82 | v80, v70, v71, v93, v94, v72);
  if (v98)
  {
    v3 = v98;
    if (CGColorSpaceUsesITUR_2100TF(v67) || CGColorSpaceUsesExtendedRange(v67))
    {
      CGContextSetEDRTargetHeadroom(v3, v69);
    }

    if (v134)
    {
      Count = CFArrayGetCount(*(a1 + 184));
      if (Count)
      {
        v100 = Count;
        for (i = 0; i != v100; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 184), i);
          CGDisplayListDrawInContext(ValueAtIndex, v3);
        }
      }
    }

    goto LABEL_155;
  }

  v76 = @"Failed to create bitmap context when using provided CGBitmapContextInfo";
  v77 = -2;
LABEL_151:
  if (!*(a1 + 56))
  {
    v3 = 0;
LABEL_155:
    CGDisplayListDrawInContext(*(a1 + 72), v3);
    goto LABEL_156;
  }

  keys[0] = *MEMORY[0x1E695E620];
  values[0] = v76;
  v103 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v104 = CFErrorCreate(0, @"CGBitmapContextWithCallbacksDomain", v77, v103);
  CFRelease(v103);
  v105 = *(a1 + 100);
  v106 = *(a1 + 116);
  v107 = *(a1 + 104);
  v108 = *(a1 + 108);
  v109 = *(*(a1 + 56) + 16);
  LODWORD(v135) = 1;
  *(&v135 + 4) = __PAIR64__(v106, v105);
  HIDWORD(v135) = v107;
  LODWORD(v136) = v108;
  v110 = v27[3];
  *v141 = v27[2];
  *&v141[16] = v110;
  v142 = v27[4];
  v111 = v27[1];
  v139 = *v27;
  v140 = v111;
  v109();
  CFRelease(v104);
  v3 = 0;
  if (!*(a1 + 56))
  {
    goto LABEL_155;
  }

LABEL_156:
  CFArrayAppendValue(*(a1 + 184), *(a1 + 72));
  v113 = *(a1 + 72);
  if (v113)
  {
    CFRelease(v113);
  }

  v114 = *a1;
  v115 = *(a1 + 8);
  v139 = 0uLL;
  *&v140 = v114;
  *(&v140 + 1) = v115;
  CGDisplayList = CG::DisplayList::createCGDisplayList(0, &v139, v112);
  *(a1 + 72) = CGDisplayList;
  *(a1 + 80) = CGDisplayListContextCreate(CGDisplayList);
  return v3;
}

uint64_t (*__object_md5_creator_block_invoke())(void)
{
  if (CGLibraryLoadColorSyncDYLD_once != -1)
  {
    dispatch_once(&CGLibraryLoadColorSyncDYLD_once, &__block_literal_global_22095);
  }

  result = CGLibraryLoadColorSyncDYLD_handle;
  if (CGLibraryLoadColorSyncDYLD_handle)
  {
    result = dlsym(CGLibraryLoadColorSyncDYLD_handle, "ColorSyncProfileGetTypeID");
  }

  if (result)
  {
    v1 = result;
  }

  else
  {
    v1 = colorsync_smart_null;
  }

  object_md5_creator_f = v1;
  return result;
}

void *create_default_color_space(const __CFDictionary *a1, const void *a2, int a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (kCGColorSpace_block_invoke_once != -1)
    {
      dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
    }

    if (v6 == CGColorSpaceGetTypeID_type_id && CGColorSpaceGetModel(v5) == a3)
    {
      CFRetain(v5);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t ripc_Operation(uint64_t a1, uint64_t a2, int a3, __CFString *cf1, uint64_t a5)
{
  if (a1)
  {
    v7 = *(a1 + 288);
    if (a5)
    {
      return 1006;
    }
  }

  else
  {
    v7 = 0;
    if (a5)
    {
      return 1006;
    }
  }

  if (cf1 == @"kCGContextFlush")
  {
LABEL_13:
    result = *(v7 + 48);
    if (!result)
    {
      return result;
    }

    v9 = *(*result + 64);
    goto LABEL_18;
  }

  if (cf1 == @"kCGContextSynchronize")
  {
LABEL_16:
    result = *(v7 + 48);
    if (!result)
    {
      return result;
    }

    v9 = *(*result + 64);
    goto LABEL_18;
  }

  if (cf1 == @"kCGContextClear")
  {
    goto LABEL_22;
  }

  if (cf1 == @"kCGContextErase")
  {
    goto LABEL_25;
  }

  if (cf1 == @"kCGContextWait")
  {
    goto LABEL_38;
  }

  if (cf1 == @"kCGContextLog")
  {
LABEL_41:
    RIPPrint();
    return 0;
  }

  if (CFEqual(cf1, @"kCGContextFlush"))
  {
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"kCGContextSynchronize"))
  {
    goto LABEL_16;
  }

  if (CFEqual(cf1, @"kCGContextClear"))
  {
LABEL_22:
    result = *(v7 + 48);
    if (result)
    {
      *(v7 + 104) = 0;
      v10 = v7 + 104;
      *(v10 + 48) = 0x3FF0000000000000;
      *(v10 + 8) = 0;
      *(v10 + 4) = *(a2 + 82);
      RIPLayerBltShape(result, 0, 0, 0, 0, 0, v10);
      return 0;
    }

    return result;
  }

  if (CFEqual(cf1, @"kCGContextErase"))
  {
LABEL_25:
    if (*(v7 + 48))
    {
      ripc_InitializeColorTransform(v7);
      Cache = CGColorTransformGetCache(*(v7 + 120));
      if (Cache)
      {
        v12 = Cache[2];
      }

      else
      {
        v12 = 0;
      }

      v13 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
      v13[1] = 0;
      v13[2] = 0;
      *v13 = &ripc_class;
      Model = CGColorSpaceGetModel(v12);
      *(v13 + 6) = Model;
      if (Model == kCGColorSpaceModelCMYK)
      {
        *(v13 + 36) = 0;
        *(v13 + 28) = 0;
      }

      else if (Model == kCGColorSpaceModelRGB)
      {
        *(v13 + 9) = 1065353216;
        __asm { FMOV            V0.2S, #1.0 }

        *(v13 + 28) = _D0;
      }

      else if (Model)
      {
        *(v13 + 6) = -1;
      }

      else
      {
        *(v13 + 7) = 1065353216;
      }

      *(v13 + 39) = 1065353216;
      *(v7 + 104) = 1;
      *(v7 + 152) = 0x3FF0000000000000;
      *(v7 + 112) = 0;
      *(v7 + 108) = *(a2 + 82);
      RIPLayerBltShape(*(v7 + 48), 0, 0, 0, v13, 0, v7 + 104);
      free(v13);
    }

    return 0;
  }

  if (!CFEqual(cf1, @"kCGContextWait"))
  {
    if (CFEqual(cf1, @"kCGContextLog"))
    {
      goto LABEL_41;
    }

    return 1006;
  }

LABEL_38:
  result = *(v7 + 48);
  if (result)
  {
    v9 = *(*result + 64);
LABEL_18:
    v9();
    return 0;
  }

  return result;
}

uint64_t rip_auto_context_operation(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a1)
  {
    v6 = *(a1 + 288);
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_lock((v6 + 120));
  if (CFEqual(a4, @"kCGContextFlush"))
  {
    v7 = rip_auto_context_rasterization_loop(v6);
    if (v7)
    {
      CFRelease(v7);
    }

    goto LABEL_21;
  }

  if (CFEqual(a4, @"kCGContextClear") || CFEqual(a4, @"kCGContextErase"))
  {
    *(v6 + 104) = 0;
    *(v6 + 105) = CFEqual(a4, @"kCGContextClear") != 0;
    *(v6 + 100) = CFEqual(a4, @"kCGContextClear") == 0;
    CGColorSpaceRelease(*(v6 + 248));
    *(v6 + 240) = 0u;
    *(v6 + 256) = 0u;
    *(v6 + 208) = 0u;
    *(v6 + 224) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 116) = 1;
    rip_auto_context_release_buffer_provider(v6, v8, v9, v10, v11, v12, v13, v14);
    CFArrayRemoveAllValues(*(v6 + 184));
  }

  else if (!v6)
  {
LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  v15 = *(v6 + 88);
  if (!v15)
  {
    v15 = *(v6 + 80);
    if (!v15)
    {
      goto LABEL_21;
    }
  }

  v16 = *(v15 + 40);
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = *(v16 + 168);
  if (!v17)
  {
    v18 = 1006;
    goto LABEL_22;
  }

  v18 = v17();
  if (!v18)
  {
LABEL_28:
    if (CFEqual(a4, @"kCGContextClear") || CFEqual(a4, @"kCGContextErase"))
    {
      v19 = CGGStateCreate();
      ConstantColor = CGColorGetConstantColor(@"kCGColorWhite");
      CGGStateSetFillColor(v19, ConstantColor);
      v21 = CFEqual(a4, @"kCGContextClear") == 0;
      CGGStateSetCompositeOperation(v19, v21);
      v22 = *(v15 + 40);
      if (v22)
      {
        v23 = *(v22 + 64);
        if (v23)
        {
          v23(v22, a2, v19, 0);
        }
      }

      CGGStateRelease(v19);
    }

    goto LABEL_21;
  }

LABEL_22:
  pthread_mutex_unlock((v6 + 120));
  return v18;
}

void CGContextClear(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      v1 = *(a1 + 40);
      if (v1)
      {
        v2 = *(v1 + 168);
        if (v2)
        {
          v2();
        }
      }
    }

    else
    {
      handle_invalid_context("CGContextClear", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextClear", 0);
  }
}

_DWORD *RGBA32_pattern(uint64_t a1, _DWORD *a2, unsigned int a3, uint64_t a4, float *a5, float a6)
{
  v8 = PIXELCONSTANT_15092(*(*a1 + 64), a4, a5, a6);
  if (a2 && a3 > 3 || (a2 = malloc_type_malloc(0x34uLL, 0x1080040E00A32E4uLL)) != 0)
  {
    *a2 = xmmword_18439CD30;
    a2[6] = 0;
    a2[12] = v8 & 0xFF00FF00 | (v8 << 16) | BYTE2(v8);
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

void rip_auto_context_finalize(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    if (v1)
    {
      v2 = *(v1 + 88);
      if (v2)
      {
        CFRelease(v2);
      }

      v3 = *(v1 + 72);
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = *(v1 + 80);
      if (v4)
      {
        CFRelease(v4);
      }

      CGColorSpaceRelease(*(v1 + 248));
      *(v1 + 240) = 0u;
      *(v1 + 256) = 0u;
      *(v1 + 208) = 0u;
      *(v1 + 224) = 0u;
      *(v1 + 192) = 0u;
      v5 = *(v1 + 184);
      if (v5)
      {
        CFRelease(v5);
      }

      pthread_mutex_destroy((v1 + 120));
      rip_auto_context_release_buffer_provider(v1, v6, v7, v8, v9, v10, v11, v12);
      v13 = *(v1 + 280);
      if (v13)
      {
        CFRelease(v13);
      }

      v14 = *(v1 + 304);
      if (v14)
      {
        CFRelease(v14);
      }

      free(v1);
    }
  }
}

void automatic_bitmap_context_context_finalize(uint64_t result)
{
  if (result)
  {
    if (*(result + 16) == 1129601108)
    {
      automatic_bitmap_context_info_release(*(result + 32));
    }

    else
    {
      handle_invalid_context("automatic_bitmap_context_context_finalize", result);
    }
  }
}

void automatic_bitmap_context_info_release(uint64_t a1)
{
  if (!a1)
  {
    _CGHandleAssert("automatic_bitmap_context_info_release", 22, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/API/CGAutomaticBitmapContext.c", "info", "info is NULL");
  }

  _Block_release(*(a1 + 32));
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));
  _Block_release(*(a1 + 56));
  v2 = *(a1 + 64);
  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

CGColorConversionInfoRef CGColorConversionInfoCreateFromListWithArguments(CFDictionaryRef options, CGColorSpaceRef a2, CGColorConversionInfoTransformType a3, CGColorRenderingIntent a4, va_list a5)
{
  v6 = *&a4;
  v10 = *a5;
  if (!*a5)
  {
    goto LABEL_22;
  }

  v11 = *(a5 + 2);
  v12 = CFGetTypeID(v10);
  if (kCGColorSpace_block_invoke_once != -1)
  {
    dispatch_once(&kCGColorSpace_block_invoke_once, &__block_literal_global_75_23302);
  }

  if (v12 != CGColorSpaceGetTypeID_type_id || !CGColorSpaceSupportsHDR(a2) && !CGColorSpaceSupportsHDR(v10) || !options || a3 || v11 != 1)
  {
LABEL_22:
    if (!options)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v13 = CFGetTypeID(options);
  if (v13 != CFDictionaryGetTypeID() || CFDictionaryContainsKey(options, @"kCGContentToneMappingInfo") != 1 || (v28 = 0.0, Float = CGCFDictionaryGetFloat(options, @"kCGTargetHeadroom", &v28), v15 = v28, v28 = 0.0, v16 = CGCFDictionaryGetFloat(options, @"kCGSourceHeadroom", &v28), !Float) || (v17 = v15, v17 <= 0.0) || !v16 || (v18 = v28, v18 <= 0.0))
  {
LABEL_23:
    v26 = CFGetTypeID(options);
    if (v26 == CFDictionaryGetTypeID())
    {
      v27 = CFDictionaryGetValue(options, @"kCGColorTransformBlackPointCompensation") == *MEMORY[0x1E695E4D0];
      return create_from_argument_list(options, v27, a2, a3, v6, a5);
    }

LABEL_25:
    v27 = 0;
    return create_from_argument_list(options, v27, a2, a3, v6, a5);
  }

  v19 = *a5;
  v28 = 0.0;
  v20 = 0.0;
  if (CGCFDictionaryGetFloat(options, @"kCGTargetHeadroom", &v28))
  {
    v21 = v28;
  }

  else
  {
    v21 = 0.0;
  }

  v28 = 0.0;
  if (CGCFDictionaryGetFloat(options, @"kCGSourceHeadroom", &v28))
  {
    v20 = v28;
  }

  Value = CFDictionaryGetValue(options, @"kCGContentToneMappingInfo");
  v23 = CGContentToneMappingInfoCreateFromDictionary(Value);
  return CGColorConversionInfoCreateForToneMapping(a2, v19, v23, v24, 0, v20, v21);
}

uint64_t CGColorTRCPureGammaOriginal(uint64_t a1)
{
  if (CGColorTRCPureGammaOriginal_cglibrarypredicate != -1)
  {
    dispatch_once(&CGColorTRCPureGammaOriginal_cglibrarypredicate, &__block_literal_global_12);
  }

  v2 = CGColorTRCPureGammaOriginal_f;

  return v2(a1);
}

uint64_t CGImageGetComponentType(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1 > 15)
    {
      if (v1 == 16)
      {
        if ((CGImageGetBitmapInfo(result) & 0x100) != 0)
        {
          return 5;
        }

        else
        {
          return 2;
        }
      }

      else if (v1 == 32)
      {
        if ((CGImageGetBitmapInfo(result) & 0x100) != 0)
        {
          return 4;
        }

        else
        {
          return 3;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      if (v1 == 10)
      {
        v2 = 6;
      }

      else
      {
        v2 = 0;
      }

      if (v1 == 8)
      {
        return 1;
      }

      else
      {
        return v2;
      }
    }
  }

  return result;
}

int CGFontGetUnitsPerEm(CGFontRef font)
{
  font_info = get_font_info(font);
  if (font_info)
  {
    LODWORD(font_info) = font_info[2];
  }

  return font_info;
}

__n128 CGColorSpaceGetCalibratedRGBData@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[3];
  v3 = *(v2 + 24);
  if (v3 != 4)
  {
    _CGHandleAssert("CGColorSpaceGetCalibratedRGBData", 161, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/ColorSpaces/CGColorSpace_CalRGB.c", "space->state->type == kCGColorSpaceCalibratedRGB", "Colorspace %p not RGB based. Type = %d", a1, v3);
  }

  v4 = *(v2 + 96);
  v5 = *(v4 + 112);
  *(a2 + 96) = *(v4 + 96);
  *(a2 + 112) = v5;
  *(a2 + 128) = *(v4 + 128);
  v6 = *(v4 + 48);
  *(a2 + 32) = *(v4 + 32);
  *(a2 + 48) = v6;
  v7 = *(v4 + 80);
  *(a2 + 64) = *(v4 + 64);
  *(a2 + 80) = v7;
  result = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = result;
  return result;
}

uint64_t CGCMSUtilsCreateProfileForCalRGB(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  valuePtr = vcvt_f32_f64(*a1);
  v1 = *(a1 + 16);
  v74 = v1;
  v2 = vcvt_f32_f64(*(a1 + 24));
  v3 = *(a1 + 40);
  v72 = v3;
  v69 = *(a1 + 48);
  v70 = *(a1 + 64);
  v71 = v2;
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 104)), *(a1 + 120));
  v66 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 72)), *(a1 + 88));
  v67 = v4;
  v5 = *(a1 + 136);
  v68[0] = v5;
  v63 = xmmword_1E6E05E20;
  v64 = *&off_1E6E05E30;
  v65 = xmmword_1E6E05E40;
  *keys = xmmword_1E6E05DE0;
  v60 = *&off_1E6E05DF0;
  v61 = xmmword_1E6E05E00;
  v62 = *&off_1E6E05E10;
  v58 = 0;
  v57 = 0u;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  v53 = 0u;
  values = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  v51 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr + 4);
  v52 = CFNumberCreate(0, kCFNumberFloatType, &v74);
  v6 = *MEMORY[0x1E695E480];
  v35 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 3, MEMORY[0x1E695E9C0]);
  for (i = 0; i != 24; i += 8)
  {
    v8 = *(&values + i);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, &v71);
  v51 = CFNumberCreate(0, kCFNumberFloatType, &v71 + 4);
  v52 = CFNumberCreate(0, kCFNumberFloatType, &v72);
  v34 = CFArrayCreate(v6, &values, 3, MEMORY[0x1E695E9C0]);
  for (j = 0; j != 24; j += 8)
  {
    v10 = *(&values + j);
    if (v10)
    {
      CFRelease(v10);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, &v66);
  v51 = CFNumberCreate(0, kCFNumberFloatType, &v66.i32[1]);
  v52 = CFNumberCreate(0, kCFNumberFloatType, &v66.u32[2]);
  v33 = CFArrayCreate(v6, &values, 3, MEMORY[0x1E695E9C0]);
  for (k = 0; k != 24; k += 8)
  {
    v12 = *(&values + k);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, (&v66 | 0xC));
  v51 = CFNumberCreate(0, kCFNumberFloatType, &v67);
  v52 = CFNumberCreate(0, kCFNumberFloatType, &v67.i32[1]);
  v32 = CFArrayCreate(v6, &values, 3, MEMORY[0x1E695E9C0]);
  for (m = 0; m != 24; m += 8)
  {
    v14 = *(&values + m);
    if (v14)
    {
      CFRelease(v14);
    }
  }

  values = CFNumberCreate(0, kCFNumberFloatType, &v67.u32[2]);
  v51 = CFNumberCreate(0, kCFNumberFloatType, &v67.u64[1] + 4);
  v52 = CFNumberCreate(0, kCFNumberFloatType, v68);
  v15 = CFArrayCreate(v6, &values, 3, MEMORY[0x1E695E9C0]);
  for (n = 0; n != 24; n += 8)
  {
    v17 = *(&values + n);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  values = CFNumberCreate(0, kCFNumberSInt16Type, &CGCMSUtilsCreateProfileForCalRGB_iccDate);
  v51 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E48A);
  v52 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E48C);
  *&v53 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E48E);
  *(&v53 + 1) = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E490);
  *&v54 = CFNumberCreate(0, kCFNumberSInt16Type, &unk_18446E492);
  v18 = CFArrayCreate(v6, &values, 6, MEMORY[0x1E695E9C0]);
  for (ii = 0; ii != 48; ii += 8)
  {
    v20 = *(&values + ii);
    if (v20)
    {
      CFRelease(v20);
    }
  }

  v21 = 0;
  v48 = 0uLL;
  v49 = 0;
  v22 = MEMORY[0x1E695E9C0];
  do
  {
    v23 = *(&v69 + v21);
    v43 = 0;
    v42 = v23;
    v40 = 0;
    v41 = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v46 = 0u;
    v47 = 0u;
    *v44 = 0u;
    v45 = 0u;
    v44[0] = CFNumberCreate(0, kCFNumberSInt16Type, &v43);
    v44[1] = CFNumberCreate(0, kCFNumberDoubleType, &v42);
    *&v45 = CFNumberCreate(0, kCFNumberDoubleType, &v41);
    *(&v45 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v40);
    *&v46 = CFNumberCreate(0, kCFNumberDoubleType, &v39);
    *(&v46 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v38);
    *&v47 = CFNumberCreate(0, kCFNumberDoubleType, &v37);
    *(&v47 + 1) = CFNumberCreate(0, kCFNumberDoubleType, &v36);
    v24 = 0;
    *(&v48 + v21) = CFArrayCreate(0, v44, 8, v22);
    do
    {
      v25 = v44[v24];
      if (v25)
      {
        CFRelease(v25);
      }

      ++v24;
    }

    while (v24 != 8);
    ++v21;
  }

  while (v21 != 3);
  values = v35;
  v51 = v34;
  v52 = v33;
  *&v53 = v32;
  v54 = v48;
  *(&v53 + 1) = v15;
  *&v55 = v49;
  *(&v55 + 1) = @"CG Cal RGB";
  *&v56 = @"calRGB";
  v26 = *MEMORY[0x1E695E4D0];
  *(&v56 + 1) = @"4.0";
  *&v57 = v26;
  *(&v57 + 1) = v18;
  v58 = v26;
  v27 = CFDictionaryCreate(v6, keys, &values, 14, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  for (jj = 0; jj != 64; jj += 8)
  {
    v29 = *(&values + jj);
    if (v29)
    {
      CFRelease(v29);
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (CGCMSUtilsCreateProfileForCalRGB_cglibrarypredicate != -1)
  {
    dispatch_once(&CGCMSUtilsCreateProfileForCalRGB_cglibrarypredicate, &__block_literal_global_130);
  }

  ProfileForCalRGB_f = CGCMSUtilsCreateProfileForCalRGB_f(v27);
  if (v27)
  {
    CFRelease(v27);
  }

  return ProfileForCalRGB_f;
}

atomic_uint *color_space_state_register(_BYTE *a1)
{
  os_unfair_lock_lock(&colorspace_state_lock);
  if (get_states_cache_predicate != -1)
  {
    dispatch_once(&get_states_cache_predicate, &__block_literal_global_7716);
  }

  v2 = get_states_cache_states;
  Value = CFSetGetValue(get_states_cache_states, a1);
  if (Value)
  {
    v4 = Value;
    atomic_fetch_add_explicit(Value, 1u, memory_order_relaxed);
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    CFSetSetValue(v2, a1);
    a1[11] = 1;
    atomic_fetch_add_explicit(a1, 1u, memory_order_relaxed);
    v4 = a1;
  }

  if (atomic_fetch_add_explicit(a1, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(a1);
  }

LABEL_9:
  os_unfair_lock_unlock(&colorspace_state_lock);
  return v4;
}

int8x8_t *cf_color_space_state_hash(int8x8_t *result)
{
  if (result)
  {
    v1 = veor_s8(result[8], *&vextq_s8(*result[8].i8, *result[8].i8, 8uLL));
    return (v1.i32[0] ^ v1.i32[1]);
  }

  return result;
}

CGColorSpaceRef CGColorSpaceCreateCalibratedRGB(const CGFloat *whitePoint, const CGFloat *blackPoint, const CGFloat *gamma, const CGFloat *matrix)
{
  v34 = *MEMORY[0x1E69E9840];
  if (!whitePoint)
  {
    goto LABEL_39;
  }

  v8 = 1;
  v9 = malloc_type_calloc(0x78uLL, 1uLL, 0x10E00406C354554uLL);
  v10 = v9;
  *v9 = 1;
  *(v9 + 4) = 0;
  if (matrix)
  {
    v8 = matrix[2] * -(matrix[6] * matrix[4]) + *matrix * matrix[4] * matrix[8] + matrix[2] * matrix[3] * matrix[7] + -(matrix[3] * matrix[1]) * matrix[8] + matrix[1] * matrix[5] * matrix[6] + -(*matrix * matrix[5]) * matrix[7] != 0.0;
  }

  *(v9 + 6) = 4;
  v9[10] = v8;
  *(v9 + 11) = 256;
  *(v9 + 7) = 256;
  *(v9 + 14) = &color_space_state_create_calibrated_rgb_calibrated_rgb_vtable;
  *(v9 + 28) = 0x100000001;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  *(v9 + 5) = &calibrated_rgb_get_default_color_components_default_rgb;
  *(v9 + 6) = 3;
  v11 = malloc_type_calloc(0x90uLL, 1uLL, 0x1CA9FDB9uLL);
  *(v10 + 96) = v11;
  if (!v11)
  {
    free(v10);
LABEL_39:
    v30 = CGColorSpaceCreateWithState(0);
    goto LABEL_40;
  }

  for (i = 0; i != 3; ++i)
  {
    *&v11[i * 8] = whitePoint[i];
  }

  v13 = 0;
  v14 = &default_black_point_19329;
  if (blackPoint)
  {
    v14 = blackPoint;
  }

  do
  {
    *&v11[v13 * 8 + 24] = v14[v13];
    ++v13;
  }

  while (v13 != 3);
  v15 = 0;
  v16 = &xmmword_184565908;
  if (gamma)
  {
    v16 = gamma;
  }

  do
  {
    *&v11[v15 * 8 + 48] = v16[v15];
    ++v15;
  }

  while (v15 != 3);
  v17 = 0;
  v18 = color_space_state_create_calibrated_rgb_default_matrix;
  if (matrix)
  {
    v18 = matrix;
  }

  do
  {
    *&v11[v17 * 8 + 72] = v18[v17];
    ++v17;
  }

  while (v17 != 9);
  *md = 0;
  *&md[8] = 0;
  v19 = malloc_type_malloc(0x5CuLL, 0x100004034A301B9uLL);
  CC_MD5_Init(v19);
  if (v19)
  {
    CC_MD5_Update(v19, (v10 + 24), 4u);
  }

  v20 = *(v10 + 96);
  v21 = 3;
  v22 = v20;
  do
  {
    if (v19)
    {
      CC_MD5_Update(v19, v22, 8u);
    }

    v22 += 8;
    --v21;
  }

  while (v21);
  v23 = v20 + 24;
  v24 = 3;
  do
  {
    if (v19)
    {
      CC_MD5_Update(v19, v23, 8u);
    }

    v23 += 8;
    --v24;
  }

  while (v24);
  v25 = v20 + 48;
  v26 = 3;
  do
  {
    if (v19)
    {
      CC_MD5_Update(v19, v25, 8u);
    }

    v25 += 8;
    --v26;
  }

  while (v26);
  v27 = 0;
  v28 = v20 + 72;
  do
  {
    while (v19)
    {
      CC_MD5_Update(v19, &v28[8 * v27++], 8u);
      if (v27 == 9)
      {
        CC_MD5_Final(md, v19);
        v29 = *md;
        goto LABEL_36;
      }
    }

    ++v27;
  }

  while (v27 != 9);
  v29 = 0uLL;
LABEL_36:
  v32 = v29;
  free(v19);
  *(v10 + 64) = v32;
  v30 = CGColorSpaceCreateWithState(v10);
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    color_space_state_dealloc(v10);
  }

LABEL_40:
  if (v30)
  {
    *(v30 + 3) = color_space_state_register(*(v30 + 3));
  }

  return v30;
}

CFMutableSetRef __get_states_cache_block_invoke()
{
  result = CFSetCreateMutable(0, 0, &get_states_cache_callbacks);
  get_states_cache_states = result;
  return result;
}

BOOL cf_color_space_state_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 24) == *(a2 + 24))
    {
      v5 = *(a1 + 64);
      v4 = *(a1 + 72);
      return v5 == *(a2 + 64) && v4 == *(a2 + 72);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t CGColorSpaceCreateWithID(int a1)
{
  if (creator_for_ID_predicate != -1)
  {
    dispatch_once(&creator_for_ID_predicate, &__block_literal_global_297_6626);
  }

  if ((a1 - 1) > 0x1F)
  {
    return 0;
  }

  v2 = creator_for_ID_creators[a1];
  if (!v2)
  {
    return 0;
  }

  return v2();
}

BOOL CGFontGetGlyphBBoxes(CGFontRef font, const CGGlyph *glyphs, size_t count, CGRect *bboxes)
{
  if (font)
  {
    v7 = font;
    font_info = get_font_info(font);
    if (font_info)
    {
      v9 = font_info[104] ^ 1u;
    }

    else
    {
      v9 = 1;
    }

    v10 = *(*(v7 + 2) + 320);
    v11 = *(v7 + 14);

    LOBYTE(font) = v10(v11, 0, v9, glyphs, count, bboxes);
  }

  return font;
}

uint64_t get_glyph_bboxes(uint64_t a1, uint64_t a2, char a3, unsigned __int16 *a4, uint64_t a5, uint64_t a6)
{
  result = 0;
  if (a1 && a6)
  {
    v9 = a5;
    v10 = a4;
    if (a4 || !a5)
    {
      if (a5)
      {
        if (a3)
        {
          if (a2)
          {
            FPFontGetUnitsPerEm();
          }

          v16 = a6 + 16;
          do
          {
            ++v10;
            FPFontGetGlyphIdealBounds();
            v18 = CGRectApplyAffineTransform(v17, &CGAffineTransformIdentity);
            *(v16 - 16) = CGRectIntegral(v18);
            v16 += 32;
            --v9;
          }

          while (v9);
        }

        else
        {
          v11 = (a6 + 16);
          do
          {
            ++v10;
            FPFontGetGlyphDeviceBounds();
            *(v11 - 2) = v12;
            *(v11 - 1) = v13;
            *v11 = v14;
            v11[1] = v15;
            v11 += 4;
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

  return result;
}

void CGContextSetTextDrawingMode(CGContextRef c, CGTextDrawingMode mode)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetTextDrawingMode(*(c + 12), mode);
    }

    else
    {
      handle_invalid_context("CGContextSetTextDrawingMode", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetTextDrawingMode", 0);
  }
}

void CGContextShowGlyphsAtPositions(CGContextRef c, const CGGlyph *glyphs, const CGPoint *Lpositions, size_t count)
{
  if (!c)
  {
    v10 = 0;
LABEL_13:

    handle_invalid_context("CGContextShowGlyphsAtPositions", v10);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v10 = c;
    goto LABEL_13;
  }

  if (glyphs)
  {
    if (Lpositions)
    {
      if (count)
      {
        v8 = *(*(c + 12) + 136);
        if (*(v8 + 8))
        {
          if (*(v8 + 16) != 0.0)
          {
            v9 = *(v8 + 1);
            if (v9 < 4)
            {

              draw_glyphs_19159(c, glyphs, Lpositions, count);
            }

            else
            {
              if (v9 - 4 >= 3)
              {
                if (v9 != 7)
                {
                  return;
                }
              }

              else
              {
                draw_glyphs_19159(c, glyphs, Lpositions, count);
              }

              clip_to_glyphs(c, glyphs, Lpositions, count);
            }
          }
        }
      }
    }
  }
}

BOOL CGClipStackIsInfinite(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 120))
  {
    return 0;
  }

  v2.origin.x = -8.98846567e307;
  v2.size.width = 1.79769313e308;
  v2.origin.y = -8.98846567e307;
  v2.size.height = 1.79769313e308;
  return CGRectEqualToRect(*(a1 + 16), v2);
}

void CGContextSetShouldDrawBitmapRuns(uint64_t a1, int a2)
{
  if (a1)
  {
    if (*(a1 + 16) == 1129601108)
    {
      CGGStateSetShouldDrawBitmapRuns(*(a1 + 96), a2);
    }

    else
    {
      handle_invalid_context("CGContextSetShouldDrawBitmapRuns", a1);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetShouldDrawBitmapRuns", 0);
  }
}

void CGContextSetRGBFillColor(CGContextRef c, CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha)
{
  v8[4] = *MEMORY[0x1E69E9840];
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      v8[0] = red;
      v8[1] = green;
      v8[2] = blue;
      v8[3] = alpha;
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      set_fill_color_with_components(c, DeviceRGB, v8);
      CGColorSpaceRelease(DeviceRGB);
      return;
    }

    v7 = c;
  }

  else
  {
    v7 = 0;
  }

  handle_invalid_context("CGContextSetRGBFillColor", v7);
}

void CGContextClipToRect(CGContextRef c, CGRect rect)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
      {
        CGGStateClipToRect(*(c + 12), rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
        v8 = *(c + 21);
        if (v8)
        {
          CFRelease(v8);
          *(c + 21) = 0;
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

  handle_invalid_context("CGContextClipToRect", v9);
}

void get_glyph_bounding_box(CGFont *a1, float64x2_t *a2)
{
  font_info = get_font_info(a1);
  if (font_info)
  {
    v5 = font_info[2];
  }

  else
  {
    v5 = 0;
  }

  FontBBox = CGFontGetFontBBox(a1);
  v10.origin.x = -v5;
  v10.origin.y = v10.origin.x;
  v10.size.width = (2 * v5);
  v10.size.height = v10.size.width;
  v11 = CGRectUnion(v10, FontBBox);
  v9.tx = 0.0;
  v9.ty = 0.0;
  v6 = vdupq_lane_s64(COERCE__INT64(v5), 0);
  v7 = vdivq_f64(*a2, v6);
  v8 = vdivq_f64(a2[1], v6);
  *&v9.a = v7;
  *&v9.c = v8;
  CGRectApplyAffineTransform(v11, &v9);
}

uint64_t ripr_path_stroke(uint64_t result, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v11 = *v2;
        if (result)
        {
          return (*(result + 24))(*(result + 8), 1, &v11, *(result + 48));
        }
      }
    }

    else
    {
      v11 = *v2;
      if (result)
      {
        return (*(result + 24))(*(result + 8), 0, &v11, *(result + 48));
      }
    }
  }

  else if (v3 == 2)
  {
    if (result)
    {
      v8 = v2[1];
      v11 = *v2;
      v12 = v8;
      return (*(result + 24))(*(result + 8), 2, &v11, *(result + 48));
    }
  }

  else if (v3 == 3)
  {
    if (result)
    {
      v9 = v2[1];
      v10 = v2[2];
      v11 = *v2;
      v12 = v9;
      v13 = v10;
      return (*(result + 24))(*(result + 8), 3, &v11, *(result + 48));
    }
  }

  else if (v3 == 4 && result != 0)
  {
    v5 = *(result + 24);
    v6 = *(result + 48);
    v7 = *(result + 8);

    return v5(v7, 4, 0, v6);
  }

  return result;
}

CGAffineTransform *__cdecl CGAffineTransformMakeTranslation(CGAffineTransform *__return_ptr retstr, CGFloat tx, CGFloat ty)
{
  retstr->a = 1.0;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = 1.0;
  retstr->tx = tx;
  retstr->ty = ty;
  return result;
}

void CGContextSetShouldSmoothFonts(CGContextRef c, BOOL shouldSmoothFonts)
{
  if (c)
  {
    if (*(c + 4) == 1129601108)
    {
      CGGStateSetShouldSmoothFonts(*(c + 12), shouldSmoothFonts);
    }

    else
    {
      handle_invalid_context("CGContextSetShouldSmoothFonts", c);
    }
  }

  else
  {
    handle_invalid_context("CGContextSetShouldSmoothFonts", 0);
  }
}

CGPathRef CGPathCreateCopyByStrokingPath(CGPathRef path, const CGAffineTransform *transform, CGFloat lineWidth, CGLineCap lineCap, CGLineJoin lineJoin, CGFloat miterLimit)
{
  if (!path)
  {
    return 0;
  }

  v7 = *&lineJoin;
  v8 = *&lineCap;
  if ((CGPathDisableTypeValidation & 1) == 0)
  {
    v12 = CFGetTypeID(path);
    if (v12 != CGPathGetTypeID())
    {
      return 0;
    }
  }

  {
    return 0;
  }

  TypeID = CGPathGetTypeID();
  Instance = CGTypeCreateInstance(TypeID, 128);
  v15 = Instance;
  if (Instance)
  {
    CG::Path::Path((Instance + 16), (path + 16), lineWidth, v8, v7, miterLimit, 0.0, 0);
    if (transform)
    {
      CG::Path::apply_transform((v15 + 16), transform);
    }
  }

  return v15;
}

CG::Path *CG::Path::Path(CG::Path *this, const CG::Path *a2, double a3, uint64_t a4, uint64_t a5, double a6, double a7, const CGAffineTransform *a8)
{
  *this = 8;
  if ((*a2 - 10) > 0xFFFFFFF6)
  {
    operator new();
  }

  CG::Path::append(this, a2, a8);
  return this;
}

void CG::Path::apply_iterator(CG::Path *this, path_iterator *a2)
{
  if (a2)
  {
    v4 = *(a2 + 2);
    if (v4)
    {
      v4(*(a2 + 1), 0, *(a2 + 6));
    }
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK2CG4Path14apply_iteratorEP13path_iterator_block_invoke;
  v6[3] = &__block_descriptor_tmp_13981;
  v6[4] = a2;
  CG::Path::apply(this, v6);
  if (a2)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      v5(*(a2 + 1), *(a2 + 6));
    }
  }
}

uint64_t anonymous namespace::begin(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      return v3(v2[1], a2, v2[6]);
    }
  }

  return result;
}

uint64_t ___ZNK2CG4Path14apply_iteratorEP13path_iterator_block_invoke(uint64_t result, int a2, __int128 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_20;
      }

      v7 = *(result + 32);
      v13 = *a3;
      if (v7)
      {
        return (*(v7 + 24))(*(v7 + 8), 1, &v13, *(v7 + 48));
      }
    }

    else
    {
      v12 = *(result + 32);
      v13 = *a3;
      if (v12)
      {
        return (*(v12 + 24))(*(v12 + 8), 0, &v13, *(v12 + 48));
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v8 = *(result + 32);
        if (v8)
        {
          v9 = a3[1];
          v13 = *a3;
          v14 = v9;
          return (*(v8 + 24))(*(v8 + 8), 2, &v13, *(v8 + 48));
        }

        break;
      case 3:
        v10 = *(result + 32);
        if (v10)
        {
          v11 = a3[1];
          v13 = *a3;
          v14 = v11;
          v15 = a3[2];
          return (*(v10 + 24))(*(v10 + 8), 3, &v13, *(v10 + 48));
        }

        break;
      case 4:
        v3 = *(result + 32);
        if (v3)
        {
          v4 = v3[3];
          v5 = v3[1];
          v6 = v3[6];

          return v4(v5, 4, 0, v6);
        }

        return result;
      default:
LABEL_20:
        abort();
    }
  }

  return result;
}

__n128 anonymous namespace::iterate(_anonymous_namespace_ *this, void *a2, float64x2_t *a3, const CGPoint *a4, path_iterator *a5, double a6, double a7, double a8, double a9, double a10, double a11, float64x2_t a12, float64x2_t a13)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_35;
      }

      v19 = *(this + 20);
      if (v19)
      {
        if (v19 == 1)
        {
          *(this + 20) = 2;
        }

        *(this + 184) = *a3;
        v20 = (this + 184);
        if (CG::stroker::add_line_segment(this, (this + 136), this + 46))
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if ((*(this + 20) - 3) <= 1)
      {
        CG::stroker::end_contour(this);
      }

      *(this + 20) = 2;
      *(this + 184) = *a3;
      result = *(this + 184);
      *(this + 136) = result;
      *(this + 88) = result;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v22 = *(this + 20);
        if (v22)
        {
          if (v22 == 1)
          {
            *(this + 20) = 2;
          }

          v23 = *a3;
          v24 = a3[1];
          *(this + 184) = v24;
          v25 = (this + 184);
          __asm { FMOV            V3.2D, #3.0 }

          v31 = vsubq_f64(v23, vdivq_f64(vsubq_f64(v23, *(this + 136)), _Q3));
          v32 = vaddq_f64(v23, vdivq_f64(vsubq_f64(v24, v23), _Q3));
          v51 = *(this + 136);
          v52 = v31;
          v33 = *(this + 184);
          v53 = v32;
          v54 = v33;
          v34 = v33.f64[0];
          v35 = vsubq_f64(v31, v51);
          v36 = vsubq_f64(v32, v31);
          v55 = vmulq_f64(v35, _Q3);
          v56 = vmulq_f64(vsubq_f64(v36, v35), _Q3);
          v37 = vaddq_f64(v36, v36);
          v57 = vaddq_f64(v35, vsubq_f64(vsubq_f64(v54, v32), v37));
          CG::stroker::add_cubic_segment(this, &v51, v57.f64[0], v35.f64[0], v37.f64[0], v55.f64[0], v34, v56.f64[0], a12, a13);
          if (v38)
          {
            result = *v25;
            *(this + 136) = *v25;
          }
        }

        break;
      case 3:
        v39 = *(this + 20);
        if (v39)
        {
          if (v39 == 1)
          {
            *(this + 20) = 2;
          }

          v40 = *a3;
          v41 = a3[1];
          *(this + 184) = a3[2];
          v20 = (this + 184);
          v51 = *(this + 136);
          v52 = v40;
          v42 = *(this + 184);
          v53 = v41;
          v54 = v42;
          v43 = v42.f64[0];
          v44 = vsubq_f64(v40, v51);
          __asm { FMOV            V4.2D, #3.0 }

          v46 = vsubq_f64(v41, v40);
          v55 = vmulq_f64(v44, _Q4);
          v56 = vmulq_f64(vsubq_f64(v46, v44), _Q4);
          v47 = vsubq_f64(v54, v41);
          v57 = vaddq_f64(v44, vsubq_f64(v47, vaddq_f64(v46, v46)));
          CG::stroker::add_cubic_segment(this, &v51, v57.f64[0], v47.f64[0], v44.f64[0], v43, v55.f64[0], v56.f64[0], a12, a13);
          if (v48)
          {
LABEL_28:
            result = *v20;
            *(this + 136) = *v20;
          }
        }

        break;
      case 4:
        v15 = *(this + 20);
        if (v15 >= 2)
        {
          if (v15 == 4)
          {
            CG::stroker::add_line_segment(this, (this + 136), this + 22);
            *(this + 136) = *(this + 88);
            CG::stroker::add_join(this, this + 22, this + 13, this + 15);
            v16 = *(this + 9);
            if (v16)
            {
              (*(v16 + 24))(*(v16 + 8), 4, 0, *(v16 + 48));
              v17 = *(this + 9);
              v51 = *(this + 200);
              if (v17)
              {
                (*(v17 + 24))(*(v17 + 8), 0, &v51, *(v17 + 48));
              }
            }

            CG::stroker::unroll_path(this);
            v18 = *(this + 9);
            if (v18)
            {
              (*(v18 + 24))(*(v18 + 8), 4, 0, *(v18 + 48));
            }
          }

          else
          {
            v49 = (this + 88);
            v50 = vsubq_f64(*(this + 184), *(this + 88));
            CG::stroker::add_point(this, this + 11, v50.f64[0], v50.f64[1]);
            *(this + 136) = *v49;
          }

          *(this + 20) = 1;
          result = *(this + 88);
          *(this + 184) = result;
        }

        return result;
      default:
LABEL_35:
        abort();
    }
  }

  return result;
}

void CG::stroker::add_cubic_segment(CG::stroker *this, float64x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, float64x2_t a9, float64x2_t a10)
{
  v10 = a2;
  v12 = a2 + 1;
  v13 = a2[1].f64[0];
  v14 = a2[1].f64[1];
  if ((v14 - a2->f64[1]) * (v14 - a2->f64[1]) + (v13 - a2->f64[0]) * (v13 - a2->f64[0]) <= 0.00000001)
  {
    v15 = a2[2].f64[0];
    v16 = a2[2].f64[1];
    if ((v16 - v14) * (v16 - v14) + (v15 - v13) * (v15 - v13) <= 0.00000001 && (a2[3].f64[1] - v16) * (a2[3].f64[1] - v16) + (a2[3].f64[0] - v15) * (a2[3].f64[0] - v15) <= 0.00000001)
    {
      if (*(this + 20) == 2)
      {
        *(this + 20) = 3;
      }

      return;
    }
  }

  v17 = *a2;
  v18 = vsubq_f64(a2[1], *a2);
  if (COERCE_DOUBLE(*&vmulq_f64(v18, v18).f64[1]) + v18.f64[0] * v18.f64[0] <= 0.00000001)
  {
    v18 = vsubq_f64(a2[2], v17);
    if (COERCE_DOUBLE(*&vmulq_f64(v18, v18).f64[1]) + v18.f64[0] * v18.f64[0] <= 0.00000001)
    {
      v18 = vsubq_f64(a2[3], v17);
    }
  }

  v89 = v18;
  v19 = *this;
  v20 = *(this + 1);
  v21 = -*(this + 1);
  a9.f64[0] = v21 * v20.f64[0] + *this * *(this + 3);
  a10.f64[0] = 0.0;
  v22 = vextq_s8(v20, *this, 8uLL);
  v23 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(a10, a9).i64[0], 0), vnegq_f64(v22), v22);
  if (a9.f64[0] >= 0.0)
  {
    v24 = -v20.f64[0];
  }

  else
  {
    v21 = *(this + 1);
    v24 = *(this + 2);
  }

  v25 = vmuld_lane_f64(v24, v18, 1) + v18.f64[0] * v23.f64[0];
  v26 = COERCE_DOUBLE(*&vmulq_f64(v18, v23).f64[1]) + v18.f64[0] * v21;
  if (v25 != 0.0 || v26 != 0.0)
  {
    v27 = sqrt(v26 * v26 + v25 * v25);
    v25 = v25 / v27;
    v26 = v26 / v27;
  }

  *&v88 = v25;
  *(&v88 + 1) = v26;
  if (*(this + 20) == 4)
  {
    v74 = v17;
    CG::stroker::add_join(this, &v74, v89.f64, &v88);
  }

  else
  {
    *(this + 20) = 4;
    v28 = v88;
    *(this + 104) = v89;
    *(this + 120) = v28;
    v29 = *(this + 9);
    v74 = vaddq_f64(vmlsq_lane_f64(vmulq_n_f64(v20, v25), v19, v26, 0), *a2);
    if (v29)
    {
      (*(v29 + 24))(*(v29 + 8), 0, &v74, *(v29 + 48));
    }
  }

  v30 = v10[3];
  v31 = vsubq_f64(v30, v10[2]);
  if (COERCE_DOUBLE(*&vmulq_f64(v31, v31).f64[1]) + v31.f64[0] * v31.f64[0] <= 0.00000001)
  {
    v31 = vsubq_f64(v30, *v12);
    if (COERCE_DOUBLE(*&vmulq_f64(v31, v31).f64[1]) + v31.f64[0] * v31.f64[0] <= 0.00000001)
    {
      v31 = vsubq_f64(v30, *v10);
    }
  }

  *(this + 152) = v31;
  v32 = *this;
  v33 = *(this + 1);
  v35 = *(this + 2);
  v34 = *(this + 3);
  if (*this * v34 - v33 * v35 >= 0.0)
  {
    v33 = -v33;
    v35 = -v35;
  }

  else
  {
    v34 = -v34;
    v32 = -v32;
  }

  v36 = v35 * v31.f64[1] + v31.f64[0] * v34;
  v37 = v32 * v31.f64[1] + v31.f64[0] * v33;
  if (v36 != 0.0 || v37 != 0.0)
  {
    v38 = sqrt(v37 * v37 + v36 * v36);
    v36 = v36 / v38;
    v37 = v37 / v38;
  }

  *(this + 21) = v36;
  *(this + 22) = v37;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  std::vector<CG::Point>::push_back[abi:fe200100](&v85, v10);
  std::vector<CG::Point>::push_back[abi:fe200100](&v85, v12);
  std::vector<CG::Point>::push_back[abi:fe200100](&v85, v10[2].f64);
  std::vector<CG::Point>::push_back[abi:fe200100](&v85, v10[3].f64);
  v39 = v85;
  if (((v86 - v85) >> 4) <= 1 || v86 - v85 == 32 || ((v86 - v85) >> 4) <= 3)
  {
    __break(1u);
    return;
  }

  v40 = v85[2];
  if (((v40 - *v85) * (v85[5] - v85[3]) - (v85[3] - v85[1]) * (v85[4] - v40)) * ((v85[4] - v40) * (v85[7] - v85[5]) - (v85[5] - v85[3]) * (v85[6] - v85[4])) > 0.0)
  {
    goto LABEL_55;
  }

  v41 = v10[6].f64[0];
  v42 = -1.0;
  if (v41 == 0.0)
  {
    v46 = 0;
  }

  else
  {
    v43 = v10[5].f64[0];
    v44 = v41 * 3.0;
    v45 = -v43;
    if (v43 < 0.0 && v44 > v45 || (v46 = 0, v43 > 0.0) && v44 < v45)
    {
      v46 = 1;
      v42 = v45 / v44;
    }
  }

  v47 = v10[6].f64[1];
  if (v47 != 0.0)
  {
    if ((v48 = v10[5].f64[1], v49 = v47 * 3.0, v50 = -v48, v48 < 0.0) && v49 > v50 || v48 > 0.0 && v49 < v50)
    {
      v51 = v50 / v49;
      if (v46)
      {
        v52 = -1.0;
        if (vabdd_f64(v42, v51) >= 0.000001)
        {
          v52 = v42 >= v51 ? v42 : v51;
          if (v42 >= v51)
          {
            v42 = v51;
          }
        }

        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  v51 = -1.0;
  v52 = -1.0;
  if ((v46 & 1) == 0)
  {
LABEL_52:
    v52 = -1.0;
    v42 = v51;
  }

LABEL_53:
  if (v42 == -1.0 && v52 == -1.0 || (CG::Cubic::split(&v74, v42, v10), (v76 - v74.f64[1]) * (v76 - v74.f64[1]) + (v75 - v74.f64[0]) * (v75 - v74.f64[0]) <= 0.00000001) && (v78 - v76) * (v78 - v76) + (v77 - v75) * (v77 - v75) <= 0.00000001 && (v80 - v78) * (v80 - v78) + (v79 - v77) * (v79 - v77) <= 0.00000001 || (v82.f64[1] - v81.f64[1]) * (v82.f64[1] - v81.f64[1]) + (v82.f64[0] - v81.f64[0]) * (v82.f64[0] - v81.f64[0]) <= 0.00000001 && (v83.f64[1] - v82.f64[1]) * (v83.f64[1] - v82.f64[1]) + (v83.f64[0] - v82.f64[0]) * (v83.f64[0] - v82.f64[0]) <= 0.00000001 && (v84.f64[1] - v83.f64[1]) * (v84.f64[1] - v83.f64[1]) + (v84.f64[0] - v83.f64[0]) * (v84.f64[0] - v83.f64[0]) <= 0.00000001 || (CG::stroker::path_stroke_round_cube(this, &v74), v10 = &v81, v52 == -1.0))
  {
LABEL_55:
    CG::stroker::path_stroke_round_cube(this, v10);
LABEL_74:
    v86 = v39;
    operator delete(v39);
    return;
  }

  v53 = (v52 - v42) / (1.0 - v42);
  v54 = vaddq_f64(v81, vmulq_n_f64(vsubq_f64(v82, v81), v53));
  v55 = vaddq_f64(v82, vmulq_n_f64(vsubq_f64(v83, v82), v53));
  v56 = vaddq_f64(v54, vmulq_n_f64(vsubq_f64(v55, v54), v53));
  v72[0] = v81;
  v72[1] = v54;
  v57 = vaddq_f64(v83, vmulq_n_f64(vsubq_f64(v84, v83), v53));
  v58 = vaddq_f64(v55, vmulq_n_f64(vsubq_f64(v57, v55), v53));
  v59 = vaddq_f64(v56, vmulq_n_f64(vsubq_f64(v58, v56), v53));
  v72[2] = v56;
  v72[3] = v59;
  v60 = vsubq_f64(v54, v81);
  __asm { FMOV            V3.2D, #3.0 }

  v66 = vsubq_f64(v56, v54);
  v72[4] = vmulq_f64(v60, _Q3);
  v72[5] = vmulq_f64(vsubq_f64(v66, v60), _Q3);
  v67 = vsubq_f64(v59, v56);
  v72[6] = vaddq_f64(v60, vsubq_f64(v67, vaddq_f64(v66, v66)));
  v73[0] = v59;
  v73[1] = v58;
  v73[2] = v57;
  v68 = vsubq_f64(v58, v59);
  v73[3] = v84;
  v73[4] = vmulq_f64(v68, _Q3);
  v69 = vsubq_f64(v57, v58);
  v70 = vmulq_f64(vsubq_f64(v69, v68), _Q3);
  v71 = vsubq_f64(v84, v57);
  v73[5] = v70;
  v73[6] = vaddq_f64(vsubq_f64(v71, vaddq_f64(v69, v69)), v68);
  if ((COERCE_DOUBLE(*&vmulq_f64(v60, v60).f64[1]) + v60.f64[0] * v60.f64[0] > 0.00000001 || (v56.f64[1] - v54.f64[1]) * (v56.f64[1] - v54.f64[1]) + v66.f64[0] * v66.f64[0] > 0.00000001 || (v59.f64[1] - v56.f64[1]) * (v59.f64[1] - v56.f64[1]) + v67.f64[0] * v67.f64[0] > 0.00000001) && ((v58.f64[1] - v59.f64[1]) * (v58.f64[1] - v59.f64[1]) + v68.f64[0] * v68.f64[0] > 0.00000001 || (v57.f64[1] - v58.f64[1]) * (v57.f64[1] - v58.f64[1]) + v69.f64[0] * v69.f64[0] > 0.00000001 || COERCE_DOUBLE(*&vmulq_f64(v71, v71).f64[1]) + v71.f64[0] * v71.f64[0] > 0.00000001))
  {
    CG::stroker::path_stroke_round_cube(this, v72);
    v10 = v73;
  }

  CG::stroker::path_stroke_round_cube(this, v10);
  v39 = v85;
  if (v85)
  {
    goto LABEL_74;
  }
}

void sub_183F184A0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double anonymous namespace::add_element_to_path(_anonymous_namespace_ *this, void *a2, float64x2_t *a3, const CGAffineTransform *a4, const CGAffineTransform *a5)
{
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v13 = *a3;

        *&result = *&CG::Path::add_quad_curve_to_point(this, a3 + 1, 0, a4, v13);
        break;
      case 3:
        v9 = a3 + 1;
        v11 = *a3;
        v10 = a3 + 2;
        v12 = v11;

        *&result = *&CG::Path::add_curve_to_point(this, v9, v10, 0, a5, v12);
        break;
      case 4:

        CG::Path::close_subpath(this);
        break;
      default:
        goto LABEL_24;
    }
  }

  else
  {
    if (a2 == -3)
    {
      v16.origin.x = a3->f64[0];
      v16.origin.y = a3->f64[1];
      v16.size.width = a3[1].f64[0] - a3->f64[0];
      v16.size.height = a3[1].f64[1] - v16.origin.y;
      v14 = CGRectStandardize(v16);
      CG::Path::append_rect(this, &v14, 0);
      return result;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        v6 = *a3;

        *&result = *&CG::Path::add_line_to_point(this, 0, a3, v6);
        return result;
      }

LABEL_24:
      abort();
    }

    v8 = *a3;

    CG::Path::move_to_point(this, 0, a3, v8);
  }

  return result;
}

uint64_t CG::stroker::add_point(uint64_t result, double *a2, double a3, double a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(result + 40);
  if (!v4)
  {
    return result;
  }

  v6 = a3 == 0.0;
  v7 = a4 == 0.0;
  if (v6 && v7)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = a3;
  }

  if (v6 && v7)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = a4;
  }

  v10 = *result;
  v11 = *(result + 8);
  v13 = *(result + 16);
  v12 = *(result + 24);
  if (*result * v12 - v11 * v13 >= 0.0)
  {
    v16 = -v11;
    v17 = -v13;
    v14 = *(result + 24);
    v15 = *result;
  }

  else
  {
    v14 = -v12;
    v15 = -v10;
    v16 = *(result + 8);
    v17 = *(result + 16);
  }

  v18 = v9 * v17 + v8 * v14;
  v19 = v9 * v15 + v8 * v16;
  if (v18 != 0.0 || v19 != 0.0)
  {
    v20 = sqrt(v19 * v19 + v18 * v18);
    v18 = v18 / v20;
    v19 = v19 / v20;
  }

  v21 = v13 * v18 - v19 * v10;
  v22 = v12 * v18 - v19 * v11;
  v23 = v13 * v19 + v18 * v10;
  v24 = v12 * v19 + v18 * v11;
  if (v4 == 2)
  {
    v44 = *a2;
    v45 = a2[1];
    v46 = v21 + *a2;
    v27 = (result + 72);
    v47 = *(result + 72);
    v56 = v46 - v23;
    v57 = v22 + v45 - v24;
    if (v47)
    {
      result = (v47[3])(v47[1], 0, &v56, v47[6]);
      v44 = *a2;
      v45 = a2[1];
      v47 = *v27;
      v56 = v23 + v21 + *a2;
      v57 = v24 + v22 + v45;
      if (v47)
      {
        result = (v47[3])(v47[1], 1, &v56, v47[6]);
        v44 = *a2;
        v45 = a2[1];
        v47 = *v27;
      }
    }

    else
    {
      v56 = v23 + v46;
      v57 = v24 + v22 + v45;
    }

    v48 = v44 - v21;
    v49 = v45 - v22;
    v56 = v23 + v48;
    v57 = v24 + v49;
    if (v47)
    {
      result = (v47[3])(v47[1], 1, &v56, v47[6]);
      v50 = *v27;
      v51 = a2[1] - v22 - v24;
      v56 = *a2 - v21 - v23;
      v57 = v51;
      if (v50)
      {
        result = (v50[3])(v50[1], 1, &v56, v50[6]);
      }
    }

    else
    {
      v56 = v48 - v23;
      v57 = v49 - v24;
    }

    goto LABEL_30;
  }

  if (v4 != 1)
  {
    abort();
  }

  v25 = v22 + a2[1];
  v27 = (result + 72);
  v26 = *(result + 72);
  v56 = v21 + *a2;
  v57 = v25;
  if (v26)
  {
    result = (*(v26 + 24))(*(v26 + 8), 0, &v56, *(v26 + 48));
    v28 = *v27;
    if (*v27)
    {
      v29 = v23 * 0.55228475;
      v30 = v24 * 0.55228475;
      v31 = v21 * 0.55228475;
      v32 = v22 * 0.55228475;
      v33 = a2[1];
      v34 = v23 + *a2;
      v56 = v23 * 0.55228475 + v21 + *a2;
      v57 = v24 * 0.55228475 + v22 + v33;
      v58 = v21 * 0.55228475 + v34;
      v59 = v22 * 0.55228475 + v24 + v33;
      v60 = v34;
      v61 = v24 + v33;
      result = (v28[3])(v28[1], 3, &v56, v28[6]);
      v35 = *v27;
      if (*v27)
      {
        v36 = a2[1];
        v37 = *a2 - v21;
        v56 = v23 + *a2 - v31;
        v57 = v24 + v36 - v32;
        v58 = v29 + v37;
        v59 = v30 + v36 - v22;
        v60 = v37;
        v61 = v36 - v22;
        result = (v35[3])(v35[1], 3, &v56, v35[6]);
        v38 = *v27;
        if (*v27)
        {
          v39 = a2[1];
          v40 = *a2 - v23;
          v56 = *a2 - v21 - v29;
          v57 = v39 - v22 - v30;
          v58 = v40 - v31;
          v59 = v39 - v24 - v32;
          v60 = v40;
          v61 = v39 - v24;
          result = (v38[3])(v38[1], 3, &v56, v38[6]);
          v41 = *v27;
          if (*v27)
          {
            v42 = a2[1];
            v43 = v21 + *a2;
            v56 = v31 + *a2 - v23;
            v57 = v32 + v42 - v24;
            v58 = v43 - v29;
            v59 = v22 + v42 - v30;
            v60 = v43;
            v61 = v22 + v42;
            result = (v41[3])(v41[1], 3, &v56, v41[6]);
LABEL_30:
            v52 = *v27;
            if (*v27)
            {
              v53 = v52[3];
              v54 = v52[1];
              v55 = v52[6];

              return v53(v54, 4, 0, v55);
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *anonymous namespace::end(_DWORD *this, void *a2, path_iterator *a3)
{
  v3 = this;
  if ((this[20] - 3) <= 1)
  {
    this = CG::stroker::end_contour(this);
  }

  v4 = *(v3 + 9);
  if (v4)
  {
    v5 = v4[4];
    if (v5)
    {
      v6 = v4[1];
      v7 = v4[6];

      return v5(v6, v7);
    }
  }

  return this;
}

uint64_t path_iterator::release(uint64_t this)
{
  if (atomic_fetch_add_explicit(this, 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = this;
    v2 = *(this + 40);
    if (v2)
    {
      v2(*(this + 8));
    }

    v3 = *(v1 + 48);
    if (v3)
    {
      path_iterator::release(v3);
    }

    JUMPOUT(0x1865EE610);
  }

  return this;
}

uint64_t anonymous namespace::release_data(uint64_t this, void *a2)
{
  if (this)
  {
    v2 = this;
    v3 = *(this + 72);
    if (v3)
    {
      path_iterator::release(v3);
    }

    v4 = *(v2 + 216);
    if (v4)
    {
      *(v2 + 224) = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1865EE610);
  }

  return this;
}

uint64_t rips_s_BltShape(uint64_t a1, int *a2, uint64_t a3, int *a4, void *a5, uint64_t a6, int32x2_t *a7, double *a8)
{
  v15 = *(a1 + 12);
  if ((v15 & 0x10) != 0)
  {
    v20[0] = 0;
    v20[1] = 0;
    rips_s_BltShapeShadow(a1, a2, a3, a5, a6, a7, a8);
    if (!a3 || (a4 ? (v18 = a4) : (v18 = a5 + 3), CGSBoundsIntersection((a3 + 12), v18, v20)))
    {
      if ((*(a1 + 13) & 0x10) == 0)
      {
        if (a3)
        {
          v19 = v20;
        }

        else
        {
          v19 = a4;
        }

        RIPLayerBltShape(a2, a3, v19, a5, a6, a7, a8);
      }
    }

    return 1;
  }

  if ((v15 & 0x1000) != 0)
  {
    return 1;
  }

  return RIPLayerBltShape(a2, a3, a4, a5, a6, a7, a8);
}

uint64_t A8_shade(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v30 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v7 = !*(v2 + 12) && !*(v3 + 72) && *(v3 + 4) >= 1.0;
  v8 = *(*(*v1 + 56) + 16 * *v2 + 8 * v7 + 4 * (*(v2 + 6) == 0));
  if (v8 > 27)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(v2 + 1) < 1 || *(v2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_shade_initialize(v2, v3, &v14, v26) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(v4 + 3) & 0xF;
  if (v10 <= 4 && ((1 << v10) & 0x1A) != 0)
  {
    if (*(v4 + 16))
    {
      v11 = A8_shade_radial_A;
    }

    else if (*(v4 + 24))
    {
      v11 = A8_shade_conic_A;
    }

    else if (v20 < 2)
    {
      v11 = A8_shade_axial_A;
    }

    else
    {
      v11 = A8_shade_custom_A;
    }

    v14 = v11;
    if (v24)
    {
      v23 = v29;
      _blt_shade_samples_16(v29, 2, 0, v24, v25, 1uLL);
    }

    v12 = v20 * v19;
    if (v20 * v19 <= 1920)
    {
      v13 = v27;
      v21 = v27;
LABEL_28:
      _blt_shade_samples_16(v13, 2, 0, v17, v18, v12);
      if (*(v4 + 1))
      {
        v22 = &_blt_shade_samples_noise;
      }

      goto LABEL_30;
    }

    v13 = malloc_type_malloc(2 * v12 + 32, 0x880464B6uLL);
    if (v13)
    {
      v21 = v13;
      v12 = v20 * v19;
      goto LABEL_28;
    }

    return 0xFFFFFFFFLL;
  }

  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_30:
  v15 = *v6;
  v16 = v15;
  A8_image_mark(v5, &v14, v8);
  if (v21 && (v21 < v27 || &v28 < v21))
  {
    free(v21);
  }

  return 1;
}

void A8_shade_axial_A(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v5 = *(a1 + 280);
  v6 = *(a1 + 296) + ((*(a1 + 288) * (*(*(a1 + 272) + 4) * a3)) + (v5 * (*(*(a1 + 272) + 4) * a2)));
  v7 = *(a1 + 336);
  v8 = *(a1 + 344);
  v9 = *(a1 + 304);
  v10 = *(a1 + 308);
  v11 = *(a1 + 320);
  v12 = *(a1 + 324);
  v15 = a1 + 144;
  v13 = *(a1 + 144);
  v14 = *(v15 + 8);
  v17 = *(a1 + 368);
  v16 = *(a1 + 376);
  v18 = a1 + 368;
  v19 = *(a1 + 360);
  v20 = (a3 >> 4) & 0xF0;
  v21 = v17 + v20;
  LODWORD(v22) = (a2 >> 8) & 0xF;
  if (v17)
  {
    v23 = v17 + v20;
  }

  else
  {
    v23 = v18;
  }

  if (v17)
  {
    v24 = 15;
  }

  else
  {
    v24 = 0;
  }

  if (v5 != 0.0)
  {
    if (v17)
    {
      v29 = (a2 >> 8) & 0xF;
    }

    else
    {
      LOBYTE(v29) = 0;
    }

    while (1)
    {
      v30 = v11;
      if (v6 >= v9)
      {
        v30 = v12;
        if (v6 <= v10)
        {
          v30 = (v8 * (v6 - v7));
        }
      }

      if ((v30 & 0x80000000) == 0)
      {
        break;
      }

      v31 = v16;
      if (v16)
      {
        goto LABEL_35;
      }

LABEL_36:
      LOBYTE(v29) = (v29 + 1) & v24;
      v6 = v5 + v6;
      ++v14;
      *v13 = v31;
      v13 = (v13 + 1);
      if (!--a4)
      {
        return;
      }
    }

    v31 = (v19 + 2 * v30);
LABEL_35:
    *v14 = (*(v23 + v29) + *v31) >> 8;
    LOBYTE(v31) = -1;
    goto LABEL_36;
  }

  if (v17)
  {
    v25 = v21;
  }

  else
  {
    v25 = v18;
  }

  if (v17)
  {
    LODWORD(v26) = ((a2 >> 8) + 1) & 0xF;
  }

  else
  {
    LODWORD(v26) = 0;
  }

  if (v17)
  {
    v27 = 15;
  }

  else
  {
    LODWORD(v22) = 0;
    v27 = 0;
  }

  if (v6 >= v9)
  {
    v11 = v12;
    if (v6 <= v10)
    {
      v11 = (v8 * (v6 - v7));
    }
  }

  if ((v11 & 0x80000000) == 0 || v16)
  {
    v32 = (v19 + 2 * v11);
    if (v11 < 0)
    {
      v33 = v16;
    }

    else
    {
      v33 = v32;
    }

    v34 = *v33;
    if (v17)
    {
      v35 = a4 + 4;
      do
      {
        v36 = *(v25 + v26) + v34;
        *v14 = (*(v25 + v22) + v34) >> 8;
        v22 = (v22 + 1) & v27;
        v14[1] = HIBYTE(v36);
        v26 = (v26 + 1) & v27;
        v37 = *(v25 + v26) + v34;
        v14[2] = (*(v25 + v22) + v34) >> 8;
        v14[3] = HIBYTE(v37);
        *v13++ = -1;
        v14 += 4;
        v35 -= 4;
      }

      while (v35 > 4);
    }

    else
    {
      v38 = a4 + 4;
      v39 = 16843009 * (v34 >> 8);
      do
      {
        *v14 = v39;
        v14 += 4;
        *v13++ = -1;
        v38 -= 4;
      }

      while (v38 > 4);
    }
  }

  else
  {
    if (a4 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = a4;
    }

    bzero(v13, ((a4 - v28 + 3) & 0xFFFFFFFC) + 4);
  }
}

void std::vector<CG::Point>::push_back[abi:fe200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void CG::stroker::path_stroke_round_cube(CG::stroker *this, const CG::Cubic *a2)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  std::vector<CG::Point>::push_back[abi:fe200100](&v43, a2);
  std::vector<CG::Point>::push_back[abi:fe200100](&v43, a2 + 1);
  std::vector<CG::Point>::push_back[abi:fe200100](&v43, a2 + 2);
  std::vector<CG::Point>::push_back[abi:fe200100](&v43, a2 + 3);
  v4 = v43;
  if (((v44 - v43) >> 4) <= 1 || v44 - v43 == 32 || ((v44 - v43) >> 4) <= 3)
  {
    __break(1u);
  }

  else
  {
    v5 = v43[2];
    v6 = v43[3];
    v7 = v5 - *v43;
    v8 = v6 - v43[1];
    v9 = v43[4];
    v10 = v43[5];
    v11 = v9 - v5;
    v12 = v10 - v6;
    if (v8 * v12 + v7 * v11 >= 0.0 && v12 * (v43[7] - v10) + v11 * (v43[6] - v9) >= 0.0)
    {
      CG::stroker::path_stroke_round_cube_offset(this, a2, 4, 1);
      v19 = *(a2 + 2);
      v35 = *(a2 + 3);
      v36 = v19;
      v20 = *a2;
      v37 = *(a2 + 1);
      v38 = v20;
      v21 = vsubq_f64(v36, v35);
      __asm { FMOV            V2.2D, #3.0 }

      v27 = vsubq_f64(v37, v36);
      v39 = vmulq_f64(v21, _Q2);
      v40 = vmulq_f64(vsubq_f64(v27, v21), _Q2);
      v41 = vaddq_f64(v21, vsubq_f64(vsubq_f64(v38, v37), vaddq_f64(v27, v27)));
      CG::stroker::path_stroke_round_cube_offset(this, &v35, 4, -1);
    }

    else
    {
      v14 = *(a2 + 2);
      v13 = *(a2 + 3);
      v16 = *a2;
      v15 = *(a2 + 1);
      if ((v13 - v15) * (v13 - v15) + (v14 - *a2) * (v14 - *a2) <= 0.00000001 && (v17 = *(a2 + 4), v18 = *(a2 + 5), (v18 - v13) * (v18 - v13) + (v17 - v14) * (v17 - v14) <= 0.00000001) && (*(a2 + 7) - v18) * (*(a2 + 7) - v18) + (*(a2 + 6) - v17) * (*(a2 + 6) - v17) <= 0.00000001)
      {
        v35.f64[0] = v16 - CG::stroker::offset_normal(this, a2, 0, 0.0);
        v35.f64[1] = v15 - v28;
        CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, &v35);
        v29 = *(a2 + 6);
        v30 = *(a2 + 7);
        v31 = CG::stroker::offset_normal(this, a2, 0, 1.0);
        v33 = v32;
        v34 = *(this + 9);
        v35.f64[0] = v29 + v31;
        v35.f64[1] = v30 + v32;
        if (v34)
        {
          (*(v34 + 24))(*(v34 + 8), 1, &v35, *(v34 + 48));
        }

        *(this + 25) = v29 - v31;
        *(this + 26) = v30 - v33;
      }

      else
      {
        CG::Cubic::split(&v35, 0.5, a2);
        if (v16 != v35.f64[0] || v15 != v35.f64[1] || v14 != v36.f64[0] || v13 != v36.f64[1] || *(a2 + 4) != v37.f64[0] || *(a2 + 5) != v37.f64[1] || *(a2 + 6) != v38.f64[0] || *(a2 + 7) != v38.f64[1])
        {
          CG::stroker::path_stroke_round_cube(this, &v35);
          if (*a2 != v42[0] || *(a2 + 1) != v42[1] || *(a2 + 2) != v42[2] || *(a2 + 3) != v42[3] || *(a2 + 4) != v42[4] || *(a2 + 5) != v42[5] || *(a2 + 6) != v42[6] || *(a2 + 7) != v42[7])
          {
            CG::stroker::path_stroke_round_cube(this, v42);
          }
        }
      }
    }

    operator delete(v4);
  }
}

void CG::stroker::path_stroke_round_cube_offset(CG::stroker *this, float64x2_t *a2, int a3, int a4)
{
  v137 = *MEMORY[0x1E69E9840];
  v8 = a2[3].f64[0];
  v7 = a2[3].f64[1];
  v9 = a2->f64[0];
  v10 = a2->f64[1];
  if ((v7 - v10) * (v7 - v10) + (v8 - a2->f64[0]) * (v8 - a2->f64[0]) <= 0.00000001)
  {
    v37 = v8 + CG::stroker::offset_normal(this, a2, 0, 1.0);
    v39 = v7 + v38;
    *&v127[0].v = v37;
    v128.f64[0] = v39;
    if (a4 < 0)
    {
      CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v127);
      v101 = a2->f64[0];
      v102 = a2->f64[1];
      *(this + 25) = v101 + CG::stroker::offset_normal(this, a2, 0, 0.0);
      *(this + 26) = v102 + v103;
    }

    else
    {
      v40 = *(this + 9);
      v135[0].f64[0] = v37;
      v135[0].f64[1] = v39;
      if (v40)
      {
        (*(v40 + 24))(*(v40 + 8), 1, v135, *(v40 + 48));
      }
    }

    return;
  }

  v134 = 0uLL;
  v12.f64[0] = v9 + CG::stroker::offset_normal(this, a2, v134.f64, 0.0);
  *&v14 = v10 + v13;
  v113 = v14;
  v114 = v12.f64[0];
  *&v12.f64[1] = v14;
  v108 = v12;
  v133 = 0uLL;
  v15 = v8 + CG::stroker::offset_normal(this, a2, v133.f64, 1.0);
  v17 = v7 + v16;
  __asm { FMOV            V1.2D, #0.5 }

  v22 = a2[4];
  v23 = vaddq_f64(vmulq_f64(a2[6], _Q1), a2[5]);
  *&v132[0].v = v15;
  *&v132[2].v = v17;
  v130 = 0.0;
  v131 = 0.0;
  v120 = vaddq_f64(*a2, vmulq_f64(vaddq_f64(vmulq_f64(v23, _Q1), v22), _Q1));
  v24 = CG::stroker::offset_normal(this, a2, &v130, 0.5);
  *(&v25 + 1) = *(&v113 + 1);
  v26 = v120.f64[0] + v24;
  v28 = v120.f64[1] + v27;
  v29 = v120.f64[0] + v24 + ((v120.f64[0] + v24 - v114) * 0.5 + (v120.f64[0] + v24 - v15) * 0.5) / 3.0;
  v30 = v28 + ((v28 - *&v113) * 0.5 + (v28 - v17) * 0.5) / 3.0;
  v129[0] = v29;
  v129[1] = v30;
  _V0.D[1] = v134.f64[1];
  _D4 = v130;
  v33 = -v131;
  __asm { FMLA            D6, D4, V0.D[1] }

  v35 = &v128;
  if (fabs(_D6) >= 0.0001)
  {
    *(&v25 + 1) = *&v108.f64[1];
    v128 = vaddq_f64(v108, vmulq_n_f64(v134, ((v29 - v114) * v33 + v130 * (v30 - *&v113)) / _D6));
    v36 = 1;
  }

  else
  {
    v36 = 0;
    v128 = 0uLL;
  }

  LOBYTE(v127[0].v) = v36;
  if (!v36)
  {
    v35 = v129;
  }

  *&v126[0].v = *v35;
  _V6.D[1] = v133.f64[1];
  __asm { FMLA            D7, D4, V6.D[1] }

  v43 = &v125;
  if (fabs(_D7) < 0.0001)
  {
    v44 = 0;
    v125 = 0uLL;
  }

  else
  {
    v125 = vaddq_f64(*&v132[0].v, vmulq_n_f64(v133, ((v29 - *&v132[0].v) * v33 + v130 * (v30 - *&v132[2].v)) / _D7));
    v44 = 1;
  }

  v124 = v44;
  if (!v44)
  {
    v43 = v129;
  }

  *&v123[0].v = *v43;
  _VF = __OFSUB__(a3, 1);
  v45 = a3 - 1;
  if (v45 < 0 != _VF)
  {
LABEL_84:
    if (a4 < 0)
    {
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v126);
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v123);
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v132);
      *(this + 200) = v108;
    }

    else
    {
      v100 = *(this + 9);
      if (v100)
      {
        v135[0] = *&v126[0].v;
        v135[1] = *&v123[0].v;
        v135[2] = *&v132[0].v;
        (*(v100 + 24))(*(v100 + 8), 3, v135, *(v100 + 48));
      }
    }

    return;
  }

  v46 = 0;
  v47 = vsubq_f64(*&v126[0].v, v108);
  __asm { FMOV            V5.2D, #3.0 }

  v49 = vmulq_f64(v47, _Q5);
  v50 = vsubq_f64(*&v123[0].v, *&v126[0].v);
  v51 = vmulq_f64(vsubq_f64(v50, v47), _Q5);
  v52 = vaddq_f64(v47, vsubq_f64(vsubq_f64(*&v132[0].v, *&v123[0].v), vaddq_f64(v50, v50)));
  v53 = v51.f64[1];
  v54 = (*&v114 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v113 & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL;
  v55 = v52.f64[1];
  v111 = (v49.f64[1] + (v51.f64[1] + vmuld_lane_f64(0.0, v52, 1)) * 0.0) * 0.0;
  v112 = (v49.f64[0] + (v51.f64[0] + 0.0 * v52.f64[0]) * 0.0) * 0.0;
  v116 = v52.f64[0];
  v117 = v51.f64[0];
  v118 = v49.f64[0];
  *&v110 = *&vaddq_f64(v49, vaddq_f64(v51, v52));
  v64 = !v54 || (*&v126[0].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v126[2].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v123[0].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v123[2].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v132[0].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v132[2].v & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v49.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v51.f64[1] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
  v115 = v49.f64[1];
  v109 = v49.f64[1] + v51.f64[1] + v52.f64[1];
  while (1)
  {
    *&v25 = CG::stroker::path_stroke_round_cube_offset(CG::Cubic const&,int,int)::samples[v46];
    v65 = v28;
    v66 = v26;
    if (v46)
    {
      v119 = vaddq_f64(*a2, vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(a2[6], *&v25), a2[5]), *&v25), a2[4]), *&v25));
      v121 = v25;
      v67 = CG::stroker::offset_normal(this, a2, 0, *&v25);
      v25 = v121;
      v66 = v119.f64[0] + v67;
      v65 = v119.f64[1] + v68;
    }

    if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      v69 = 1;
    }

    else
    {
      v69 = v64;
    }

    if ((v69 & 1) != 0 || (*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_60;
    }

    v70 = *(this + 8) * *(this + 8);
    v71 = v114 - v66;
    v72 = *&v113 - v65;
    v73 = (v72 + v111) * (v72 + v111) + (v114 - v66 + v112) * (v114 - v66 + v112);
    v74 = (v72 + v109) * (v72 + v109) + (v114 - v66 + v110) * (v114 - v66 + v110);
    if (v73 < v70 || v74 < v70)
    {
      goto LABEL_60;
    }

    v76 = v71 + (v118 + (v117 + v116 * *&v25) * *&v25) * *&v25;
    v77 = v72 + (v115 + (v53 + v55 * *&v25) * *&v25) * *&v25;
    v78 = v77 * v77 + v76 * v76;
    if (v78 < v70)
    {
      goto LABEL_60;
    }

    if (v78 >= v73 || v78 >= v74)
    {
      goto LABEL_89;
    }

    {
      v122 = v25;
      v25 = v122;
      if (v99)
      {
        CG::Cubic::is_near(CG::Point const&,double,double)const::G = 0x3FE3C6EF372FE950;
        v25 = v122;
      }
    }

    v80 = 1.0 - *&CG::Cubic::is_near(CG::Point const&,double,double)const::G;
    if (v46 != 2 && v46 != 4)
    {
      break;
    }

    v81 = *&v25 - v80 * *&v25;
    v82 = v71 + v81 * (v118 + v81 * (v117 + v116 * v81));
    v83 = v72 + v81 * (v115 + v81 * (v53 + v55 * v81));
    v84 = v83 * v83 + v82 * v82;
    if (v84 >= v70)
    {
      goto LABEL_74;
    }

LABEL_60:
    if (++v46 == 5)
    {
      goto LABEL_84;
    }
  }

  v81 = *&v25;
  v85 = *&v25 + v80 * (1.0 - *&v25);
  v86 = v71 + v85 * (v118 + v85 * (v117 + v116 * v85));
  v87 = v72 + v85 * (v115 + v85 * (v53 + v55 * v85));
  v88 = v87 * v87;
  v84 = v78;
  v78 = v88 + v86 * v86;
  *&v25 = v85;
  if (v78 < v70)
  {
    goto LABEL_60;
  }

LABEL_74:
  v89 = 1.0;
  if ((v81 + *&v25) * 0.00000003 < 1.0)
  {
    v90 = 0.0;
    do
    {
      if (v78 >= v84)
      {
        v89 = *&v25;
        v93 = v90 * v80 + *&CG::Cubic::is_near(CG::Point const&,double,double)const::G * v81;
        v94 = v71 + v93 * (v118 + v93 * (v117 + v116 * v93));
        v95 = v72 + v93 * (v115 + v93 * (v53 + v55 * v93));
        v78 = v95 * v95 + v94 * v94;
        *&v25 = v93;
        if (v78 <= v70)
        {
          goto LABEL_60;
        }
      }

      else
      {
        v90 = v81;
        v81 = v89 * v80 + *&CG::Cubic::is_near(CG::Point const&,double,double)const::G * *&v25;
        v91 = v71 + v81 * (v118 + v81 * (v117 + v116 * v81));
        v92 = v72 + v81 * (v115 + v81 * (v53 + v55 * v81));
        v84 = v92 * v92 + v91 * v91;
        if (v84 <= v70)
        {
          goto LABEL_60;
        }
      }

      v96 = v78;
      v97 = *&v25;
      v98 = (*&v25 + v81) * 0.00000003;
      v78 = v84;
      v84 = v96;
      *&v25 = v81;
      v81 = v97;
    }

    while (v89 - v90 > v98);
  }

LABEL_89:
  CG::Cubic::split(v135, 0.5, a2);
  if (a4 < 0)
  {
    CG::stroker::path_stroke_round_cube_offset(this, v136, v45, -1);
    v104 = v135;
    v105 = this;
    v106 = v45;
    v107 = -1;
  }

  else
  {
    CG::stroker::path_stroke_round_cube_offset(this, v135, v45, a4);
    v104 = v136;
    v105 = this;
    v106 = v45;
    v107 = a4;
  }

  CG::stroker::path_stroke_round_cube_offset(v105, v104, v106, v107);
}

double CG::stroker::offset_normal(double *a1, float64x2_t *this, double *a3, double a4)
{
  *&v6 = *&CG::Cubic::derivative(this, a4);
  if (a3)
  {
    *a3 = v6;
    a3[1] = v7;
  }

  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  if (*a1 * v10 - v9 * v11 >= 0.0)
  {
    v14 = -v9;
    v15 = -v11;
    v12 = a1[3];
    v13 = *a1;
  }

  else
  {
    v12 = -v10;
    v13 = -v8;
    v14 = a1[1];
    v15 = a1[2];
  }

  v16 = v7 * v15 + v6 * v12;
  v17 = v7 * v13 + v6 * v14;
  v18 = -v17;
  if (v17 != 0.0 || v16 != 0.0)
  {
    v19 = sqrt(v16 * v16 + v17 * v17);
    v18 = v18 / v19;
    v16 = v16 / v19;
  }

  return v11 * v16 + v18 * v8;
}

float64x2_t CG::Cubic::derivative(float64x2_t *this, double a2)
{
  if (a2 == 0.0)
  {
    v2 = *this;
    result = vsubq_f64(this[1], *this);
    if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
    {
      result = vsubq_f64(this[2], v2);
      if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
      {
        return vsubq_f64(this[3], v2);
      }
    }
  }

  else if (a2 == 1.0)
  {
    v4 = this[3];
    result = vsubq_f64(v4, this[2]);
    if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
    {
      result = vsubq_f64(v4, this[1]);
      if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
      {
        return vsubq_f64(v4, *this);
      }
    }
  }

  else
  {
    __asm { FMOV            V2.2D, #3.0 }

    return vaddq_f64(this[4], vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_f64(this[6], _Q2), a2), vaddq_f64(this[5], this[5])), a2));
  }

  return result;
}

void CG::stroker::push_opposite_element(CG::stroker *this, CGPathElementType a2, const Point *a3)
{
  *&v15[4] = *&a3->v;
  v5 = *(this + 28);
  v4 = *(this + 29);
  if (v5 >= v4)
  {
    v7 = *(this + 27);
    v8 = v5 - v7;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v7) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CG::DisplayListResource const*>::__throw_length_error[abi:fe200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fe200100]();
    }

    v13 = 24 * v9;
    *v13 = a2;
    *(v13 + 4) = *v15;
    *(v13 + 20) = *&v15[16];
    v6 = 24 * v9 + 24;
    v14 = v13 - v8;
    memcpy((v13 - v8), v7, v8);
    *(this + 27) = v14;
    *(this + 28) = v6;
    *(this + 29) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = a2;
    *(v5 + 4) = *v15;
    *(v5 + 20) = *&v15[16];
    v6 = v5 + 24;
  }

  *(this + 28) = v6;
}

void CG::stroker::add_join(CG::stroker *this, const Point *a2, double *a3, double *a4)
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = *(this + 11);
  if (v8)
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        abort();
      }

      goto LABEL_10;
    }

    v9 = *(this + 21);
    v10 = *(this + 22);
    v11 = *(this + 2);
    v12 = *(this + 3);
    v14 = *this;
    v13 = *(this + 1);
    v15 = v9 * v11 - v10 * *this;
    v16 = v9 * v12 - v10 * v13;
    v17 = a4[1];
    v18 = v11 * *a4 - v17 * *this;
    v19 = v12 * *a4 - v17 * v13;
    if ((v16 - v19) * (v16 - v19) + (v15 - v18) * (v15 - v18) >= 0.05)
    {
      v20 = -v10;
      v21 = *&a2[2].v - v19;
      *(this + 25) = *&a2->v - v18;
      *(this + 26) = v21;
      v22 = *a4;
      v23 = a4[1];
      v24 = v9 + *a4;
      v25 = v10 + v23;
      v26 = sqrt(v25 * v25 + v24 * v24);
      if (v26 >= 0.001)
      {
        v37 = 2.66666667 / v26;
        if (vabdd_f64(v10, v23) <= vabdd_f64(v9, v22))
        {
          v27 = -(v25 * -1.33333333 + v37 * v25) / (v9 - v22);
        }

        else
        {
          v27 = (v24 * -1.33333333 + v37 * v24) / (v10 - v23);
        }
      }

      else
      {
        v27 = -1.33333333;
      }

      v52 = v9 + v10 * v27;
      v53 = v10 - v9 * v27;
      v54 = v11 * v52 - v53 * v14;
      v55 = v12 * v52 - v53 * v13;
      v56 = v22 * v27;
      v57 = v22 - v23 * v27;
      v58 = v23 + v56;
      v59 = v11 * v57 - v58 * v14;
      v60 = v12 * v57 - v58 * v13;
      if (v22 * v20 + v9 * v23 < 0.0 && v26 >= 0.001)
      {
        v61 = *&a2[2].v - v16;
        *v78 = *&a2->v - v15;
        *&v78[8] = v61;
        CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v78);
        if (sqrt(*(this + 20) * *(this + 20) + *(this + 19) * *(this + 19)) < sqrt(v16 * v16 + v15 * v15) || sqrt(a3[1] * a3[1] + *a3 * *a3) < sqrt(v19 * v19 + v18 * v18))
        {
          CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, a2);
        }

        v62 = *(this + 9);
        if (v62)
        {
          v63 = *&a2[2].v;
          v64 = v18 + *&a2->v;
          v65 = v59 + *&a2->v;
          *v78 = v54 + *&a2->v;
          *&v78[8] = v55 + v63;
          *&v78[16] = v65;
          v79 = v60 + v63;
          v80 = v64;
          v81 = v19 + v63;
          (*(v62 + 24))(*(v62 + 8), 3, v78, *(v62 + 48));
        }

        return;
      }

      v66 = *&a2[2].v - v60;
      *v78 = *&a2->v - v59;
      *&v78[8] = v66;
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v78);
      v67 = *&a2[2].v - v55;
      *v78 = *&a2->v - v54;
      *&v78[8] = v67;
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v78);
      v68 = *&a2[2].v - v16;
      *v78 = *&a2->v - v15;
      *&v78[8] = v68;
      CG::stroker::push_opposite_element(this, kCGPathElementAddCurveToPoint, v78);
      if (sqrt(*(this + 20) * *(this + 20) + *(this + 19) * *(this + 19)) < sqrt(v16 * v16 + v15 * v15) || sqrt(a3[1] * a3[1] + *a3 * *a3) < sqrt(v19 * v19 + v18 * v18))
      {
        v51 = *(this + 9);
        v50 = *&a2->v;
LABEL_32:
        *v78 = v50;
        if (v51)
        {
          (*(v51 + 24))(*(v51 + 8), 1, v78, *(v51 + 48));
        }

        goto LABEL_40;
      }

      goto LABEL_40;
    }

LABEL_10:

    CG::stroker::add_bevel_join(this, a2, a3, a4);
    return;
  }

  v29 = *(this + 21);
  v28 = *(this + 22);
  v30 = *(this + 2);
  v31 = *(this + 3);
  v32 = *(this + 1);
  v33 = v29 * v30 - v28 * *this;
  v34 = v29 * v31 - v28 * v32;
  v35 = a4[1];
  v18 = v30 * *a4 - v35 * *this;
  v19 = v31 * *a4 - v35 * v32;
  if ((v34 - v19) * (v34 - v19) + (v33 - v18) * (v33 - v18) < 0.05)
  {
    goto LABEL_10;
  }

  v36 = *&a2[2].v - v19;
  *(this + 25) = *&a2->v - v18;
  *(this + 26) = v36;
  if (*(this + 6) * *(this + 6) * (v28 * a4[1] + v29 * *a4 + 1.0) < 2.0)
  {
    goto LABEL_10;
  }

  v38 = *&a2[2].v - v34;
  *v78 = *&a2->v - v33;
  *&v78[8] = v38;
  CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v78);
  if (*(this + 21) * a4[1] - *(this + 22) * *a4 >= 0.0)
  {
    _Q0 = *(this + 152);
    _D1 = *a3;
    __asm { FMLA            D3, D1, V0.D[1] }

    if (fabs(_D3) >= 0.0001)
    {
      v72 = *&a2[2].v;
      v73.f64[0] = *&a2->v - v33;
      v73.f64[1] = v72 - v34;
      *&v78[8] = vaddq_f64(v73, vmulq_n_f64(_Q0, ((*&a2->v - v18 - v73.f64[0]) * -a3[1] + _D1 * (v72 - v19 - (v72 - v34))) / _D3));
      v78[0] = 1;
      CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, &v78[8]);
      _Q0 = *(this + 152);
    }

    if (sqrt(COERCE_DOUBLE(*&vmulq_f64(_Q0, _Q0).f64[1]) + _Q0.f64[0] * _Q0.f64[0]) < sqrt(v34 * v34 + v33 * v33) || sqrt(a3[1] * a3[1] + *a3 * *a3) < sqrt(v19 * v19 + v18 * v18))
    {
      v74 = *(this + 9);
      v77 = *&a2->v;
      if (v74)
      {
        (*(v74 + 24))(*(v74 + 8), 1, &v77, *(v74 + 48));
      }
    }

    goto LABEL_40;
  }

  if (sqrt(*(this + 20) * *(this + 20) + *(this + 19) * *(this + 19)) < sqrt(v34 * v34 + v33 * v33) || (_D0 = *a3, v40 = a3[1], sqrt(v40 * v40 + _D0 * _D0) < sqrt(v19 * v19 + v18 * v18)))
  {
    CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, a2);
    _D0 = *a3;
    v40 = a3[1];
  }

  _Q1 = *(this + 152);
  v42 = -v40;
  __asm { FMLA            D3, D0, V1.D[1] }

  if (fabs(_D3) >= 0.0001)
  {
    v48 = *&a2[2].v;
    v49.f64[0] = v33 + *&a2->v;
    v49.f64[1] = v34 + v48;
    v50 = vaddq_f64(v49, vmulq_n_f64(_Q1, ((v18 + *&a2->v - v49.f64[0]) * v42 + _D0 * (v19 + v48 - (v34 + v48))) / _D3));
    v51 = *(this + 9);
    goto LABEL_32;
  }

LABEL_40:
  v75 = v19 + *&a2[2].v;
  v76 = *(this + 9);
  *v78 = v18 + *&a2->v;
  *&v78[8] = v75;
  if (v76)
  {
    (*(v76 + 24))(*(v76 + 8), 1, v78, *(v76 + 48));
  }
}

void CG::stroker::add_bevel_join(uint64_t a1, const Point *a2, double *a3, double *a4)
{
  v5 = *(a1 + 168);
  v4 = *(a1 + 176);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  v9 = v5 * v6 - v4 * *a1;
  v10 = v5 * v7 - v4 * v8;
  v11 = a4[1];
  v12 = v6 * *a4 - v11 * *a1;
  v13 = v7 * *a4 - v11 * v8;
  if ((v10 - v13) * (v10 - v13) + (v9 - v12) * (v9 - v12) >= *(a1 + 64) * *(a1 + 64))
  {
    v18 = *&a2[2].v - v13;
    *(a1 + 200) = *&a2->v - v12;
    *(a1 + 208) = v18;
    v19 = *&a2[2].v - v10;
    *&v23 = *&a2->v - v9;
    *(&v23 + 1) = v19;
    CG::stroker::push_opposite_element(a1, kCGPathElementAddLineToPoint, &v23);
    if (sqrt(*(a1 + 160) * *(a1 + 160) + *(a1 + 152) * *(a1 + 152)) < sqrt(v10 * v10 + v9 * v9) || sqrt(a3[1] * a3[1] + *a3 * *a3) < sqrt(v13 * v13 + v12 * v12))
    {
      if (*(a1 + 168) * a4[1] - *(a1 + 176) * *a4 >= 0.0)
      {
        v20 = *(a1 + 72);
        v23 = *&a2->v;
        if (v20)
        {
          (*(v20 + 24))(*(v20 + 8), 1, &v23, *(v20 + 48));
        }
      }

      else
      {
        CG::stroker::push_opposite_element(a1, kCGPathElementAddLineToPoint, a2);
      }
    }

    v21 = v13 + *&a2[2].v;
    v22 = *(a1 + 72);
    *&v23 = v12 + *&a2->v;
    *(&v23 + 1) = v21;
    if (v22)
    {
      (*(v22 + 24))(*(v22 + 8), 1, &v23, *(v22 + 48));
    }
  }
}

BOOL CG::stroker::add_line_segment(CG::stroker *this, float64x2_t *a2, const Point *a3)
{
  v4 = vsubq_f64(*&a3->v, *a2);
  v31 = v4;
  v5 = vmuld_lane_f64(v4.f64[1], v4, 1) + v4.f64[0] * v4.f64[0];
  if (v5 <= 0.00000001)
  {
    if (*(this + 20) == 2)
    {
      *(this + 20) = 3;
    }
  }

  else
  {
    v8 = *this;
    v9 = *(this + 1);
    v11 = *(this + 2);
    v10 = *(this + 3);
    if (*this * v10 - v9 * v11 >= 0.0)
    {
      v14 = -v9;
      v15 = -v11;
      v12 = *(this + 3);
      v13 = *this;
    }

    else
    {
      v12 = -v10;
      v13 = -v8;
      v14 = *(this + 1);
      v15 = *(this + 2);
    }

    v16 = v4.f64[1] * v15 + v4.f64[0] * v12;
    v17 = v4.f64[1] * v13 + v4.f64[0] * v14;
    if (v16 != 0.0 || v17 != 0.0)
    {
      v18 = sqrt(v17 * v17 + v16 * v16);
      v16 = v16 / v18;
      v17 = v17 / v18;
    }

    *&v30 = v16;
    *(&v30 + 1) = v17;
    v19 = v11 * v16 - v17 * v8;
    v20 = v10 * v16 - v17 * v9;
    if (*(this + 20) == 4)
    {
      CG::stroker::add_join(this, a2, v31.f64, &v30);
      v21 = v30;
      *(this + 152) = v31;
      *(this + 168) = v21;
    }

    else
    {
      *(this + 20) = 4;
      v22 = v30;
      v23 = v31;
      *(this + 152) = v31;
      *(this + 104) = v23;
      *(this + 168) = v22;
      *(this + 120) = v22;
      v23.f64[0] = v20 + a2->f64[1];
      v24 = *(this + 9);
      *&v32[0].v = v19 + a2->f64[0];
      v33 = v23.f64[0];
      if (v24)
      {
        (*(v24 + 24))(*(v24 + 8), 0, v32, *(v24 + 48));
      }
    }

    v25 = a2->f64[1] - v20;
    *&v32[0].v = a2->f64[0] - v19;
    v33 = v25;
    CG::stroker::push_opposite_element(this, kCGPathElementAddLineToPoint, v32);
    v26 = *&a3->v;
    v27 = *&a3[2].v;
    v28 = *(this + 9);
    *&v32[0].v = v19 + *&a3->v;
    v33 = v20 + v27;
    if (v28)
    {
      (*(v28 + 24))(*(v28 + 8), 1, v32, *(v28 + 48));
      v26 = *&a3->v;
      v27 = *&a3[2].v;
    }

    *(this + 25) = v26 - v19;
    *(this + 26) = v27 - v20;
  }

  return v5 > 0.00000001;
}

void *CG::stroker::unroll_path(void *this)
{
  v1 = this;
  v10 = *MEMORY[0x1E69E9840];
  v2 = this[27];
  for (i = this[28]; i != v2; i -= 24)
  {
    v4 = *(i - 24);
    if (v4 == 3)
    {
      v6 = v1[9];
      if (v6)
      {
        v7 = *(i - 40);
        v8 = *(i - 16);
        v9[0] = *(i - 64);
        v9[1] = v7;
        v9[2] = v8;
        this = (*(v6 + 24))(*(v6 + 8), 3, v9, *(v6 + 48));
      }

      i -= 48;
    }

    else if (v4 == 1)
    {
      v5 = v1[9];
      v9[0] = *(i - 16);
      if (v5)
      {
        this = (*(v5 + 24))(*(v5 + 8), 1, v9, *(v5 + 48));
      }
    }

    v2 = v1[27];
  }

  v1[28] = v2;
  return this;
}

void CGContextStrokeRect(CGContextRef c, CGRect rect)
{
  if (!c)
  {
    v16 = 0;
LABEL_31:

    handle_invalid_context("CGContextStrokeRect", v16);
    return;
  }

  if (*(c + 4) != 1129601108)
  {
    v16 = c;
    goto LABEL_31;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (rect.origin.x != INFINITY && rect.origin.y != INFINITY)
  {
    v12 = *(c + 21);
    if (v12)
    {
      CFRelease(v12);
      *(c + 21) = 0;
    }

    v13 = *(*(*(c + 12) + 128) + 8);
    if (v13 > 0.0 || v13 == -1.0905473e16)
    {
      v14 = *(c + 5);
      if (v14)
      {
        v15 = *(v14 + 64);
        if (v15)
        {
          if (v15() != 1006)
          {
            return;
          }

          x = rect.origin.x;
          y = rect.origin.y;
          width = rect.size.width;
          height = rect.size.height;
        }

        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        CGContextAddRect(c, v19);
        CGContextDrawPath(c, kCGPathStroke);
      }
    }
  }
}

void ripc_GetRenderStroke(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  v6 = a3[2];
  *(a2 + 16) = a3[1];
  *(a2 + 32) = v6;
  *a2 = v5;
  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  v10[2] = a3[2];
  *(a2 + 48) = CGGStateGetAdjustedLineWidth(a1, v10);
  v8 = *(a1 + 128);
  *(a2 + 56) = *(v8 + 2);
  *(a2 + 60) = *(v8 + 3);
  *(a2 + 64) = *(v8 + 16);
  v9 = *(v8 + 32);
  if (v9)
  {
    *(a2 + 80) = *(v9 + 8);
    *(a2 + 88) = *(v9 + 16);
    v9 += 24;
  }

  *(a2 + 72) = v9;
}

void ripr_stroke_acquire(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, float32x4_t a7)
{
  v7 = *(a1 + 72);
  if (v7)
  {
    v7 = (a2 + 24);
    v8 = *(a1 + 52);
    if (v8 == 1.0)
    {
      *v7 = *(a1 + 80);
      v10 = *(a1 + 96);
    }

    else
    {
      v9 = 1.0 / v8;
      *v7 = vmulq_n_f64(*(a1 + 80), v9);
      v10 = vmulq_n_f64(*(a1 + 96), v9);
    }

    *(a2 + 40) = v10;
  }

  *(a2 + 16) = v7;
  v11 = *(a1 + 32);
  if (!v11)
  {
    *(a1 + 112) = 0;
    goto LABEL_32;
  }

  v12 = *(a3 + 48);
  if (v12 >= 0.0)
  {
    v14 = *(a3 + 16);
    v15 = vcvt_hight_f32_f64(vcvt_f32_f64(*a3), v14);
    v14.i32[0] = *(a1 + 52);
    a7.i32[0] = 1.0;
    _Q2 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(v14, a7)), 0), vmulq_n_f32(v15, v14.f32[0]), v15);
    *v14.f32 = vceqz_f32(vext_s8(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL), 4uLL));
    if (v14.i32[0] & v14.i32[1])
    {
      v17 = fabsf(*_Q2.i32);
      v18 = fabsf(*&_Q2.i32[3]);
    }

    else
    {
      if (*_Q2.i32 != 0.0 || *&_Q2.i32[3] != 0.0)
      {
        v19 = (*&_Q2.i32[1] * *&_Q2.i32[1]) + (*_Q2.i32 * *_Q2.i32);
        _S6 = _Q2.i32[2];
        __asm
        {
          FMLA            S4, S6, V2.S[2]
          FMLA            S3, S2, V2.S[2]
        }

        if (v19 < (_S4 * 1.002) && (_S3 * _S3) < ((v19 * _S4) * 0.0001))
        {
          v13 = v19 > (_S4 * 0.998);
          v27 = sqrtf(v19) * v12;
          if (v19 > (_S4 * 0.998))
          {
            v12 = v27;
          }
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_25;
      }

      v17 = fabsf(*&_Q2.i32[1]);
      v18 = fabsf(*&_Q2.i32[2]);
    }

    if (v17 == v18)
    {
      v12 = v17 * v12;
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
    v12 = 1.0;
  }

LABEL_25:
  if (v12 > 1.0)
  {
    v13 = 0;
  }

  *(a1 + 112) = v13;
  if (v13)
  {
    v28 = *(a3 + 56);
    *(v11 + 236) = v12;
    *(v11 + 240) = 0;
    if (v28 == 1)
    {
      v29 = 2;
    }

    else
    {
      v29 = v28 == 2;
    }

    *(v11 + 244) = v29;
    operator new();
  }

LABEL_32:
  operator new();
}

void ripr_stroke_iterate(char *a1, int a2, float32x2_t *a3, __n128 a4, double a5, float64x2_t a6, float64x2_t a7, float64x2_t a8)
{
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v21 = *a3;
        v21.f32[0] = *a3;
        v22 = *&a3[1];
        *&a6.f64[0] = a3[2];
        *a6.f64 = a6.f64[0];
        v23 = *&a3[3];

        aa_quadto(a1, v21, v22, a6, v23);
        break;
      case 3:
        v12 = *a3;
        v12.f32[0] = *a3;
        v13 = *&a3[1];
        v14 = *&a3[2];
        *&a7.f64[0] = a3[3];
        *&v14 = v14;
        *a7.f64 = a7.f64[0];
        v15 = *&a3[4];
        *&v15 = v15;
        v16 = *&a3[5];

        aa_cubeto(a1, v12, v13, *&v14, a7, *&v15, v16);
        break;
      case 4:

        aa_close(a1);
        break;
      default:
        goto LABEL_26;
    }
  }

  else if (a2 == -3)
  {
    v17 = *a3;
    v17.f32[0] = *a3;
    v18 = *&a3[1];
    v19 = *&a3[2];
    v20 = *&a3[3];

    aa_rectat(a1, v17, v18, v19, v20, a8);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = *a3;
        v9.f32[0] = *a3;
        v10 = *&a3[1];

        aa_lineto(a1, v9, v10);
        return;
      }

LABEL_26:
      abort();
    }

    a4.n128_u64[0] = *a3;
    a4.n128_f32[0] = *a3;
    v11 = *&a3[1];

    aa_moveto(a1, a4, v11);
  }
}

double CGGStateGetAdjustedLineWidth(uint64_t a1, double *a2)
{
  v2 = *(a1 + 128);
  v3 = *(v2 + 24);
  if (v3 == 0.0)
  {
    return *(v2 + 8);
  }

  v5 = a2[1] * a2[1] + *a2 * *a2;
  result = *(v2 + 8);
  if (v5 <= a2[3] * a2[3] + a2[2] * a2[2])
  {
    v5 = a2[3] * a2[3] + a2[2] * a2[2];
  }

  if (result * result * v5 < v3 * v3)
  {
    return v3 / sqrt(v5);
  }

  return result;
}

uint64_t CGStyleCreateShadowWithColor(uint64_t a1, unint64_t a2)
{
  components[4] = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 24) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a1 + 48) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  style_with_type = create_style_with_type(1);
  *(style_with_type + 32) = 0;
  v6 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(style_with_type + 40) = vmaxnmq_f64(vminnmq_f64(*(a1 + 8), v6), vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL));
  v7 = vmaxnmq_f64(vminnmq_f64(*(a1 + 24), xmmword_18439CE00), 0);
  *(style_with_type + 56) = v7;
  *(style_with_type + 72) = vmaxnmq_f64(vminnmq_f64(*(a1 + 40), v6), 0);
  if (a2)
  {
    CFRetain(a2);
    *(style_with_type + 24) = a2;
    if ((a2 & 0x8000000000000000) != 0)
    {
      Alpha = CGTaggedColorGetAlpha(a2);
    }

    else
    {
      Alpha = *(a2 + 8 * *(a2 + 56) + 64);
    }

    *(style_with_type + 56) = 1.0 - Alpha;
  }

  else
  {
    memset(components, 0, 24);
    components[3] = 1.0 - v7.f64[0];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *(style_with_type + 24) = CGColorCreate(DeviceRGB, components);
    CGColorSpaceRelease(DeviceRGB);
  }

  return style_with_type;
}

uint64_t create_style_with_type(int a1)
{
  if ((a1 - 1) > 3)
  {
    v2 = 184;
  }

  else
  {
    v2 = qword_1844F1C18[a1 - 1];
  }

  if (kCGContextStyleContentEnd_block_invoke_once != -1)
  {
    dispatch_once(&kCGContextStyleContentEnd_block_invoke_once, &__block_literal_global_25_16445);
  }

  result = CGTypeCreateInstance(CGStyleGetTypeID_style_type_id, v2);
  *(result + 16) = atomic_fetch_add_explicit(identifier_16446, 1u, memory_order_relaxed) + 1;
  *(result + 20) = a1;
  return result;
}

uint64_t rips_Create(__n128 a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a1.n128_u64[0];
  v4 = *(a3 + 20);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (RIPStyleGaussianBlur_predicate != -1)
      {
        dispatch_once(&RIPStyleGaussianBlur_predicate, &__block_literal_global_19457);
      }

      v5 = &RIPStyleGaussianBlur_rips_gb_cls;
      goto LABEL_20;
    }

    if (v4 == 4)
    {
      if (RIPStyleColorMatrix_predicate != -1)
      {
        dispatch_once(&RIPStyleColorMatrix_predicate, &__block_literal_global_18543);
      }

      v5 = &RIPStyleColorMatrix_rips_cm_cls;
      goto LABEL_20;
    }

    return 0;
  }

  if (v4 == 1)
  {
    if (RIPStyleShadow_predicate != -1)
    {
      dispatch_once(&RIPStyleShadow_predicate, &__block_literal_global_8365);
    }

    v5 = &RIPStyleShadow_rips_s_cls;
    goto LABEL_20;
  }

  if (v4 != 2)
  {
    return 0;
  }

  if (RIPStyleFocusRing_predicate != -1)
  {
    dispatch_once(&RIPStyleFocusRing_predicate, &__block_literal_global_10277);
  }

  v5 = &RIPStyleFocusRing_rips_f_cls;
LABEL_20:
  v7 = *(v5 + 4);
  a1.n128_u64[0] = v3;

  return v7(a1);
}

double __RIPStyleShadow_block_invoke()
{
  rips_s_cs = CGColorSpaceCreateDeviceGray();
  if (rips_s_cs)
  {
    *algn_1ED4E17F8 = *&off_1EF238420;
    result = *&xmmword_1EF238450;
    *&qword_1ED4E1838 = *off_1EF238460;
    *&RIPStyleShadow_rips_s_cls = rips_s_super;
    *(&RIPStyleShadow_rips_s_cls + 1) = rips_s_size;
    qword_1ED4E1800 = rips_s_release;
    *&xmmword_1ED4E1808 = rips_s_Create;
    *(&xmmword_1ED4E1808 + 1) = rips_s_Growth;
    qword_1ED4E1818 = rips_s_ColorSpace;
    qword_1ED4E1820 = rips_s_BltShape;
    *&xmmword_1ED4E1828 = rips_s_BltGlyph;
    *(&xmmword_1ED4E1828 + 1) = rips_s_BltImage;
    qword_1ED4E1838 = rips_s_BltShade;
  }

  return result;
}

float *rips_s_Create(uint64_t a1, uint64_t a2, float64x2_t *a3, uint64_t a4)
{
  v8 = (*(a1 + 8))();
  v9 = malloc_type_calloc(1uLL, v8, 0x2EACA75AuLL);
  v10 = v9;
  if (v9)
  {
    *v9 = a1;
    *(v9 + 1) = 1;
    *(v9 + 10) = CGGStateCreateCopy(a4);
    if (a2)
    {
      v11 = (a2 + 32);
    }

    else
    {
      v11 = 0;
    }

    if (a2)
    {
      v12 = *(a2 + 24);
      if (v12)
      {
        if (v12 < 1 || !*(v12 + 32))
        {
          CFRetain(v12);
          *(v10 + 11) = v12;
        }
      }
    }

    v13 = v11[3];
    v14 = 1.0;
    v15 = 1.0 - v13;
    v10[30] = v15;
    v10[32] = 0.0;
    v16 = v11[6];
    v10[33] = v16;
    if (a3)
    {
      v14 = sqrt(fabs(a3->f64[0] * a3[1].f64[1] - a3->f64[1] * a3[1].f64[0]));
    }

    else
    {
      a3 = &CGAffineTransformIdentity;
    }

    v17 = v14 * v11[5];
    if (v17 <= 4194300.0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 4194300.0;
    }

    v10[31] = v18;
    if (v13 <= 0.99609375)
    {
      v19 = v11[2] * 3.14159265 / 180.0;
      v20 = v11[1] * 3.14159265 / 180.0;
      v21 = 0.0;
      if (v20 <= 1.569051)
      {
        if (v20 >= 0.00174532925)
        {
          v22 = v11[4];
          v21 = v22 / tan(v20);
        }

        else
        {
          v21 = 1.79769313e308;
        }
      }

      v23 = __sincos_stret(v19);
      *(v10 + 3) = 1777;
      v24 = vmlaq_n_f64(vmulq_n_f64(a3[1], -(v21 * v23.__sinval)), *a3, -(v21 * v23.__cosval));
      v25 = vdupq_n_s64(0xC1CFFFFFFF800000);
      v26 = vdupq_n_s64(0x41CFFFFFFF800000uLL);
      *&v24.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndaq_f64(vbslq_s8(vcgtq_f64(v25, v24), v25, vbslq_s8(vcgtq_f64(v24, v26), v26, v24)))));
      *(v10 + 12) = *&v24.f64[0];
      *&v24.f64[0] = vadd_s32(vdup_n_s32(vcvtms_s32_f32(v18 + 0.5) + 1), vabs_s32(*&v24.f64[0]));
      *(v10 + 13) = vneg_s32(*&v24.f64[0]);
      *(v10 + 14) = vadd_s32(*&v24.f64[0], *&v24.f64[0]);
    }
  }

  return v10;
}

BOOL rips_s_Growth(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 12);
  if (v2)
  {
    *a2 = *(a1 + 104);
  }

  return v2 != 0;
}

uint64_t rips_s_BltShapeShadow(uint64_t result, int *a2, uint64_t a3, void *a4, uint64_t a5, int32x2_t *a6, double *a7)
{
  v13 = result;
  v56 = *MEMORY[0x1E69E9840];
  v50 = 0uLL;
  v49[0] = 0;
  v49[1] = 0;
  v14 = a7[6];
  v15 = *(result + 120) * v14;
  if (a3)
  {
    v50 = vaddq_s32(*(result + 104), *(a4 + 12));
    result = CGSBoundsIntersection((a3 + 12), v50.i32, v49);
    if (!result)
    {
      return result;
    }
  }

  if (v15 <= 0.0039062)
  {
    return result;
  }

  if (a5)
  {
    v16 = *a5;
    if (*a5)
    {
      while (v16 != RIPLayer_ripl_class)
      {
        if (*v16)
        {
          v16 = (*v16)();
          if (v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      if (*(a5 + 64))
      {
        v17 = *(a7 + 1);
        v51 = *a7;
        v52 = v17;
        v18 = *(a7 + 3);
        v53 = *(a7 + 2);
        v54 = v18;
        v19 = *(a7 + 8);
        LODWORD(v51) = 1;
        v55 = v19;
        *&v54 = 0x3FF0000000000000;
        v20 = RIPLayerCreate(*a4, (a4 + 12), 0, 0, a2[13]);
        if (v20)
        {
          v21 = v20;
          v22 = RIPLayerConvertLayer(*a4, *(a5 + 28) & 8, a5, a2[13]);
          if (v22)
          {
            v23 = v22;
            if (RIPLayerBltShape(v21, 0, 0, a4, v22, a6, &v51))
            {
              v24 = *(v13 + 124);
              (*(*v23 + 24))(v23);
              if (v24 < 0.5)
              {
                v14 = 0.0039062;
                goto LABEL_23;
              }

              v45 = RIPLayerGaussianBlur(v21, a2[13], *(v13 + 124));
              (*(*v21 + 24))(v21);
              v14 = 0.0039062;
              v21 = v45;
              if (v45)
              {
LABEL_23:
                v26 = v21 + 3;
                v27 = v21[3];
                v28 = *(v13 + 96);
                if (v27 < 0)
                {
                  if ((0x80000000 - v27) > v28)
                  {
                    return (*(*v21 + 24))(v21, v26);
                  }
                }

                else if ((v27 ^ 0x7FFFFFFF) < v28)
                {
                  return (*(*v21 + 24))(v21, v26);
                }

                v29 = v21[4];
                v30 = *(v13 + 100);
                if ((v29 & 0x80000000) == 0)
                {
                  if ((v29 ^ 0x7FFFFFFF) < v30)
                  {
                    return (*(*v21 + 24))(v21, v26);
                  }

LABEL_31:
                  v21[3] = v28 + v27;
                  v21[4] = v30 + v29;
                  if (a3)
                  {
                    v31 = (a3 + 12);
                  }

                  else
                  {
                    v31 = v21 + 3;
                  }

                  if (!CGSBoundsIntersection(v31, v26, &v50))
                  {
                    return (*(*v21 + 24))(v21, v26);
                  }

                  v55 = 0;
                  v53 = 0u;
                  v54 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  if (*(v13 + 128) != 0.0 || *(v13 + 132) != 1.0)
                  {
                    RIPLayerResample(v21, (v13 + 128));
                  }

                  if (v14 >= 0.99609 && (*(v13 + 13) & 0x10) == 0 && *a7 <= 2 && (!a3 || !*(a3 + 56)))
                  {
                    RIPLayerMask(v21, a4);
                  }

                  v32 = *(v13 + 88);
                  if (!v32)
                  {
                    if (default_shadow_color_predicate != -1)
                    {
                      dispatch_once(&default_shadow_color_predicate, &__block_literal_global_3);
                    }

                    v32 = default_shadow_color_shadow_color;
                  }

                  Cache = CGColorTransformGetCache(*(a7 + 2));
                  if (Cache)
                  {
                    v34 = Cache[2];
                    if (v34)
                    {
                      v35 = *(*(v34 + 24) + 48);
                      if (v35 >> 61)
                      {
                        v48 = &v47;
                        MEMORY[0x1EEE9AC00](Cache);
                        v36 = &v46;
                        v37 = 0;
LABEL_59:
                        v40 = (*(*v13 + 88))(v13);
                        if (RIPColorConvertColorComponents(*(a7 + 2), v37, v32, v40))
                        {
                          RIPColorCreateWithColor(*(a7 + 6), v37, v35, 1.0);
                          v42 = v41;
                        }

                        else
                        {
                          v42 = malloc_type_malloc(0xA8uLL, 0x106004075981032uLL);
                          *v42 = &ripc_class;
                          v42[1] = 0;
                          v42[2] = 0;
                          v42[3] = 0;
                          *(v42 + 39) = 1065353216;
                        }

                        if (v37 != v36)
                        {
                          free(v37);
                        }

                        v43 = *(a7 + 3);
                        v53 = *(a7 + 2);
                        v54 = v43;
                        v55 = *(a7 + 8);
                        v44 = *(a7 + 1);
                        v51 = *a7;
                        v52 = v44;
                        *&v54 = v15;
                        if ((*(v13 + 13) & 0x10) != 0)
                        {
                          RIPLayerDefine(a2, &v50);
                        }

                        RIPLayerBltShape(a2, a3, v50.i32, v21, v42, a6, &v51);
                        free(v42);
                        return (*(*v21 + 24))(v21, v26);
                      }

                      Cache = (8 * v35);
                    }

                    else
                    {
                      v35 = 0;
                      Cache = 0;
                    }
                  }

                  else
                  {
                    v35 = 0;
                  }

                  v48 = &v47;
                  v38 = MEMORY[0x1EEE9AC00](Cache);
                  v36 = (&v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
                  if (v35 <= 0x1FFFFFFFFFFFFFFELL)
                  {
                    v37 = (&v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
                  }

                  else
                  {
                    v37 = 0;
                  }

                  if (v35 - 0x1FFFFFFFFFFFFFFFLL >= 0xE000000000000022)
                  {
                    v37 = malloc_type_malloc(v38, 0xC305E833uLL);
                  }

                  goto LABEL_59;
                }

                if ((0x80000000 - v29) <= v30)
                {
                  goto LABEL_31;
                }

                return (*(*v21 + 24))(v21, v26);
              }

              goto LABEL_19;
            }

            (*(*v23 + 24))(v23);
          }

          (*(*v21 + 24))(v21);
        }

        v14 = 0.0039062;
      }
    }
  }

LABEL_19:
  v25 = *(v13 + 124);
  if (v25 >= 0.5)
  {
    result = RIPLayerGaussianBlur(a4, a2[13], v25);
  }

  else
  {
    result = RIPLayerCreateWithLayer(*a4, (a4 + 12), a4, a2[13]);
  }

  v21 = result;
  if (result)
  {
    goto LABEL_23;
  }

  return result;
}

char *RIPLayerGaussianBlur(uint64_t a1, int a2, double a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  LODWORD(v3) = vcvtpd_s64_f64(fabs(a3));
  if (!*a1 || v3 > 0x7FFFFFF)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v7 = (*v6 >> 8) & 0xF;
  if (v7 != 3 && v7 != 0)
  {
    return 0;
  }

  v9 = HIWORD(*v6) & 0x3F;
  if (v9 != 32 && v9 != 8)
  {
    return 0;
  }

  v12 = RIPGetDepthForLayerFormat(0);
  v30 = *(a1 + 12);
  *&v30 = (v30 - v3) | ((DWORD1(v30) - v3) << 32);
  *(&v30 + 1) = (DWORD2(v30) + 2 * v3) | ((HIDWORD(v30) + 2 * v3) << 32);
  if (v6 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 17;
  }

  if (v6 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(a1 + 32);
  }

  v15 = RIPLayerCreate(*a1, &v30, v13, v14, a2);
  if (v15)
  {
    if (v3 < 9)
    {
      v17 = v31;
      if ((v3 & 0x80000000) != 0)
      {
LABEL_35:
        if ((RIPLayerSymmetricConvolve(v15, a1, v17, v3) & 1) == 0)
        {
          (*(*v15 + 24))(v15);
          v15 = 0;
        }

        if (v17 != v31)
        {
          free(v17);
        }

        return v15;
      }
    }

    else
    {
      v17 = malloc_type_malloc(8 * (v3 + 1), 0x100004000313F17uLL);
    }

    v18 = 0;
    v19 = vcvtd_n_f64_u32(v3, 1uLL);
    v20 = 1.0 / (v19 * 2.50662827);
    v21 = v19 * (v19 + v19);
    v22 = xmmword_18439C670;
    v25 = vdupq_n_s64(v3);
    v26 = vdupq_n_s64(2uLL);
    do
    {
      v29 = v22;
      v28 = vmovn_s64(vcgeq_u64(v25, v22));
      v27 = exp(-(v18 * v18) / v21);
      v23 = exp(-((v18 + 1) * (v18 + 1)) / v21);
      v24.f64[0] = v27;
      v24.f64[1] = v23;
      if (v28.i8[0])
      {
        v17[v18] = v20 * v27;
      }

      if (v28.i8[4])
      {
        v17[v18 + 1] = vmuld_lane_f64(v20, v24, 1);
      }

      v18 += 2;
      v22 = vaddq_s64(v29, v26);
    }

    while ((v3 & 0xFFFFFFFE) + 2 != v18);
    goto LABEL_35;
  }

  return v15;
}

uint64_t symmetric_convolve(unsigned int a1, unsigned int a2, void *a3, unsigned int a4, uint64_t a5, int a6, double *a7, unsigned int a8, unsigned int a9)
{
  v86 = a5;
  v89 = a4;
  v88 = a3;
  v98 = *MEMORY[0x1E69E9840];
  if (a9 <= 7)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v84 = (2 * a8) | 1;
  v15 = MEMORY[0x1EEE9AC00](v84 << v14);
  v17 = (&v78 - v16);
  v18 = (&v78 - v16);
  if (v15 >= 0x201)
  {
    v18 = malloc_type_malloc(v15, 0xE835ED42uLL);
  }

  v19 = 2 * a8;
  v20 = *a7;
  v90 = a8;
  v85 = a6;
  if (a9 > 4)
  {
    v33 = v20;
    v18[a8] = v33;
    if (a8)
    {
      v34 = a8 + 1;
      if (a8 + 1 > 2)
      {
        v35 = a8 + 1;
      }

      else
      {
        v35 = 2;
      }

      v36 = v35 - 1;
      v37 = a8 - 1;
      v38 = a7 + 1;
      do
      {
        v39 = *v38++;
        v40 = v39;
        v18[v34++] = v40;
        v18[v37--] = v40;
        --v36;
      }

      while (v36);
    }

    v91 = 0;
    v92 = v18;
  }

  else if (a8)
  {
    v21 = a8 + 1;
    if (a8 + 1 > 2)
    {
      v22 = a8 + 1;
    }

    else
    {
      v22 = 2;
    }

    v23 = v22 - 1;
    v24 = a7 + 1;
    v25 = v23;
    v26 = v20;
    do
    {
      v27 = *v24++;
      v26 = v26 + v27 * 2.0;
      --v25;
    }

    while (v25);
    v28 = 16384.0 / v26;
    *(v18 + a8) = (v20 * v28);
    v29 = a8 - 1;
    v30 = a7 + 1;
    do
    {
      v31 = *v30++;
      v32 = (v28 * v31);
      *(v18 + v21) = v32;
      *(v18 + v29--) = v32;
      ++v21;
      --v23;
    }

    while (v23);
    v91 = v18;
    v92 = 0;
  }

  else
  {
    v91 = v18;
    v92 = 0;
    *v18 = (v20 * (16384.0 / v20));
  }

  v87 = a2;
  v41 = v19 + a2;
  v82 = 2 * a8;
  v83 = a1;
  v42 = v19 + a1;
  v43 = v42 + v19;
  v44 = malloc_type_calloc(1uLL, (v43 * a9 + 15) & 0xFFFFFFF0, 0xDAFE1B2uLL);
  v45 = malloc_type_malloc((v42 * a9 * v41 + 15) & 0xFFFFFFF0, 0xF1EF6ABEuLL);
  v46 = v45;
  if (v44)
  {
    v47 = v45 == 0;
  }

  else
  {
    v47 = 1;
  }

  if (v47)
  {
    if (v44)
    {
      free(v44);
    }

    if (v46)
    {
      free(v46);
    }

    return 0;
  }

  else
  {
    v81 = v17;
    v79 = v43 * a9;
    v49 = v90;
    v50 = v44;
    v51 = a9 * v90 * v42;
    bzero(v45, v51);
    v78 = v41;
    bzero(&v46[v42 * a9 * (v41 - v49)], v51);
    v94 = v50;
    src.data = v50;
    src.height = 1;
    src.width = v43;
    src.rowBytes = v79;
    v79 = v46;
    dest.data = &v46[v51];
    dest.height = 1;
    dest.width = v42;
    dest.rowBytes = v42 * a9;
    v80 = a9;
    v95 = v42;
    rowBytes = dest.rowBytes;
    if (a9 == 1)
    {
      v52 = v84;
      v53 = v85;
      v54 = v86;
      v55 = v91;
      if (v87)
      {
        v56 = 0;
        v57 = &v94[v82];
        v58 = v83;
        v59 = v90;
        v60 = v87;
        do
        {
          memcpy(v57, (v54 + v56), v58);
          vImageConvolve_Planar8(&src, &dest, 0, v59, 0, v55, 1u, v52, 0x4000, 0, 0x14u);
          dest.data = dest.data + v95;
          v56 += v53;
          --v60;
        }

        while (v60);
      }
    }

    else
    {
      v61 = v86;
      v52 = v84;
      if (a9 == 4)
      {
        v68 = v85;
        v69 = v91;
        if (v87)
        {
          v70 = 0;
          v71 = 8 * v90;
          v72 = 4 * v83;
          v73 = v90;
          v74 = v87;
          do
          {
            memcpy(&v94[v71], (v61 + v70), v72);
            vImageConvolve_ARGB8888(&src, &dest, 0, v73, 0, v69, 1u, v52, 0x4000, 0, 0x14u);
            dest.data = dest.data + rowBytes;
            v70 += v68;
            --v74;
          }

          while (v74);
        }
      }

      else
      {
        v62 = v85;
        if (a9 == 16 && v87)
        {
          v63 = 0;
          v64 = 32 * v90;
          v65 = 16 * v83;
          v66 = v90;
          v67 = v87;
          do
          {
            memcpy(&v94[v64], (v61 + v63), v65);
            vImageConvolve_ARGBFFFF(&src, &dest, 0, v66, 0, v92, 1u, v52, 0, 0x14u);
            dest.data = dest.data + rowBytes;
            v63 += v62;
            --v67;
          }

          while (v67);
        }
      }
    }

    v75 = v79;
    src.data = v79;
    src.height = v78;
    src.width = v95;
    src.rowBytes = rowBytes;
    dest.data = v88;
    dest.height = v78;
    dest.width = v95;
    dest.rowBytes = v89;
    if (v80 == 1)
    {
      vImageConvolve_Planar8(&src, &dest, 0, 0, 0, v91, v52, 1u, 0x4000, 0, 4u);
      v76 = v81;
      v77 = v94;
    }

    else
    {
      v76 = v81;
      v77 = v94;
      if (v80 == 16)
      {
        vImageConvolve_ARGBFFFF(&src, &dest, 0, 0, 0, v92, v52, 1u, 0, 4u);
      }

      else if (v80 == 4)
      {
        vImageConvolve_ARGB8888(&src, &dest, 0, 0, 0, v91, v52, 1u, 0x4000, 0, 4u);
      }
    }

    free(v77);
    free(v75);
    if (v18 != v76)
    {
      free(v18);
    }

    return 1;
  }
}

void *RIPLayerMask(void *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    if (*a2 && result != 0)
    {
      if (*result)
      {
        v5 = result[4];
        if (v5 == a2[4])
        {
          result = RIPGetDepthForLayerFormat(0);
          if (v5 == result)
          {

            return ripl_Combine(v3, a2, -2);
          }
        }
      }
    }
  }

  return result;
}

void A8_image_mark(uint64_t a1, uint64_t a2, int a3)
{
  v130 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  v4 = (v3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v4 > 0x1FFFFFF)
  {
    return;
  }

  v129 = *(a1 + 4);
  v121 = *(a1 + 28);
  v7 = *(a1 + 40);
  v8 = *(a2 + 184);
  v9 = *(a1 + 136);
  v124 = a1;
  v125 = v9;
  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  v12 = *(a1 + 12);
  v13 = *(a1 + 16);
  v14 = *(a1 + 8);
  v126 = *(a2 + 16);
  v127 = v7;
  v15 = (v126 + 3) * v4;
  if (v15 > 65439)
  {
    v18 = malloc_type_calloc(1uLL, v15 + 96, 0xB43A8E49uLL);
    v17 = v18;
    v20 = v18;
    v21 = v124;
    v22 = v129;
    if (!v18)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v20 = 0;
    v21 = v124;
    v22 = v129;
  }

  v119 = v20;
  LODWORD(v123) = a3;
  v128 = ((v8 * 255.0) + 0.5);
  v23 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v23 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v126)
  {
    v25 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v25 = 0;
  }

  v26 = v3;
  v27 = v24 + v25;
  *(a2 + 144) = v23;
  *(a2 + 152) = v24 + v25;
  *(a2 + 160) = v24;
  v28 = (v127 + v13 * v121 + v12);
  v120 = v26;
  v127 = v121 - v26;
  v29 = *(v21 + 104);
  v30 = *(v21 + 108);
  v31 = *(v21 + 2);
  if (v31 != 6 && v31 != 1)
  {
    if (!v125)
    {
      v125 = 0;
      v32 = 0;
      v35 = 0;
      v33 = 0;
      v37 = v123;
      goto LABEL_18;
    }

    shape_enum_clip_alloc(v18, v19, v125, 1, 1, 1, v29, v30, v22, v14);
    if (v38)
    {
      v32 = v38;
      v33 = 0;
      v39 = ((v126 * v4 + 15) & 0xFFFFFFF0);
      if (!v126)
      {
        v39 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
      }

      v125 = -v120;
      v35 = (v27 + v39 + 16);
      v37 = v123;
      goto LABEL_184;
    }

    goto LABEL_193;
  }

  if (!v125)
  {
    goto LABEL_193;
  }

  v32 = 0;
  v33 = 0;
  v34 = *(v21 + 124);
  v35 = v125 + v34 * v30 + v29;
  v36 = v120;
  v125 = (v34 - v120);
  v37 = v123;
  while (2)
  {
    v40 = v128 ^ 0xFF;
    v123 = (v22 - 1);
    v122 = -v36;
    v41 = v32;
    v126 = v37;
LABEL_20:
    v32 = v41;
    (*a2)(a2, v10, v11);
    if (*(a2 + 8) != *(a2 + 12))
    {
      _CGHandleAssert("A8_image_pixel", 3658, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_alpha/blt_alpha.cc", "", "Unimplemented");
    }

    v42 = *(a2 + 144);
    v43 = *(a2 + 160);
    if (v128 == 255)
    {
      v44 = v129;
    }

    else
    {
      v44 = v129;
      v45 = v129;
      v46 = *(a2 + 144);
      do
      {
        if (*v46)
        {
          *v43 -= (*v43 * v40 + ((*v43 * v40) >> 8) + 1) >> 8;
        }

        ++v46;
        ++v43;
        --v45;
      }

      while (v45);
      v43 += v122;
      v42 += v123 + v122 + 1;
    }

    switch(v37)
    {
      case 0u:
        v98 = v44;
        v99 = v35;
        do
        {
          v100 = *v42;
          if (*v42)
          {
            if (v35)
            {
              v100 = ((*v99 * v100 + ((*v99 * v100) >> 8) + 1) >> 8);
            }

            if (v100)
            {
              if (v100 == 255)
              {
                LOBYTE(v101) = 0;
              }

              else
              {
                v101 = *v28 - ((*v28 * v100 + ((*v28 * v100) >> 8) + 1) >> 8);
              }

              *v28 = v101;
            }
          }

          ++v42;
          v99 += v35 != 0;
          ++v28;
          --v98;
        }

        while (v98);
        v35 = v125 + v99;
        goto LABEL_181;
      case 1u:
        goto LABEL_54;
      case 2u:
        goto LABEL_30;
      case 3u:
        v89 = v44;
        v75 = v35;
        do
        {
          v90 = *v42;
          if (*v42)
          {
            if (v35)
            {
              v90 = ((*v75 * v90 + ((*v75 * v90) >> 8) + 1) >> 8);
            }

            if (v90)
            {
              if (v90 == 255)
              {
                v91 = *v43 - (((*v28 ^ 0xFF) * *v43 + (((*v28 ^ 0xFF) * *v43) >> 8) + 1) >> 8);
              }

              else
              {
                v92 = *v28;
                v93 = (v92 * v90 + ((v92 * v90) >> 8) + 1) >> 8;
                v91 = (v92 * (v90 ^ 0xFF) + v93 * *v43 + ((v92 * (v90 ^ 0xFF) + v93 * *v43) >> 8) + 1) >> 8;
              }

              *v28 = v91;
            }
          }

          ++v42;
          ++v43;
          v75 += v35 != 0;
          ++v28;
          --v89;
        }

        while (v89);
        goto LABEL_180;
      case 4u:
        v74 = v44;
        v75 = v35;
        do
        {
          v76 = *v42;
          if (*v42)
          {
            if (v35)
            {
              v76 = ((*v75 * v76 + ((*v75 * v76) >> 8) + 1) >> 8);
            }

            if (v76)
            {
              if (v76 == 255)
              {
                v77 = *v43 - ((*v28 * *v43 + ((*v28 * *v43) >> 8) + 1) >> 8);
              }

              else
              {
                v78 = *v28;
                v79 = ((v78 ^ 0xFF) * v76 + (((v78 ^ 0xFFu) * v76) >> 8) + 1) >> 8;
                v77 = (v78 * (v76 ^ 0xFF) + v79 * *v43 + ((v78 * (v76 ^ 0xFF) + v79 * *v43) >> 8) + 1) >> 8;
              }

              *v28 = v77;
            }
          }

          ++v42;
          ++v43;
          v75 += v35 != 0;
          ++v28;
          --v74;
        }

        while (v74);
        goto LABEL_180;
      case 5u:
        v69 = v35;
        v102 = v44;
        do
        {
          if (*v42 && (!v35 || *v69 * *v42 + ((*v69 * *v42) >> 8) + 1 >= 0x100))
          {
            *v28 = (255 * *v28 + ((255 * *v28) >> 8) + 1) >> 8;
          }

          ++v42;
          ++v43;
          v69 += v35 != 0;
          ++v28;
          --v102;
        }

        while (v102);
        goto LABEL_169;
      case 6u:
        v103 = v44;
        v75 = v35;
        do
        {
          v104 = *v42;
          if (!*v42)
          {
            goto LABEL_160;
          }

          if (v35)
          {
            v105 = *v75 * v104 + ((*v75 * v104) >> 8) + 1;
            if (v105 < 0x100)
            {
              goto LABEL_160;
            }

            v104 = BYTE1(v105);
          }

          v106 = *v28;
          if (v106 != 0xFF)
          {
            if (~v106 == 255)
            {
              v107 = *v43 - ((*v43 * (v104 ^ 0xFF) + ((*v43 * (v104 ^ 0xFFu)) >> 8) + 1) >> 8);
            }

            else
            {
              v108 = ((~v106 * v104 + ((~v106 * v104) >> 8) + 1) >> 8) * *v43;
              v107 = v106 + ((v108 + (v108 >> 8) + 1) >> 8);
            }

            *v28 = v107;
          }

LABEL_160:
          ++v42;
          ++v43;
          v75 += v35 != 0;
          ++v28;
          --v103;
        }

        while (v103);
LABEL_180:
        v35 = v125 + v75;
LABEL_181:
        v28 += v127;
LABEL_182:
        if (--v14)
        {
          v41 = 0;
          ++v33;
          v10 += *(a2 + 128);
          v11 += *(a2 + 136);
          if (v32)
          {
LABEL_184:
            v117 = (v35 - 16);
            while (1)
            {
              while (1)
              {
                v118 = *v117 - v33;
                if (*v117 <= v33)
                {
                  break;
                }

                v14 -= v118;
                if (v14 < 1)
                {
                  goto LABEL_192;
                }

                v10 += *(a2 + 128) * v118;
                v11 += *(a2 + 136) * v118;
                v28 += v121 * v118;
                v33 = *v117;
              }

              if (v33 < *(v35 - 3) + *v117)
              {
                break;
              }

              if (!shape_enum_clip_scan(v32, v35 - 4))
              {
                goto LABEL_192;
              }
            }

            v22 = v129;
LABEL_18:
            v36 = v120;
            continue;
          }

          goto LABEL_20;
        }

        if (v32)
        {
LABEL_192:
          free(v32);
        }

LABEL_193:
        if (v119)
        {
          free(v119);
        }

        return;
      case 7u:
        v94 = v44;
        v75 = v35;
        do
        {
          v95 = *v42;
          if (*v42)
          {
            if (v35)
            {
              v95 = ((*v75 * v95 + ((*v75 * v95) >> 8) + 1) >> 8);
            }

            if (v95)
            {
              if (v95 == 255)
              {
                v96 = *v28 - (((*v43 ^ 0xFF) * *v28 + (((*v43 ^ 0xFF) * *v28) >> 8) + 1) >> 8);
              }

              else
              {
                v97 = *v43 * v95 + ((*v43 * v95) >> 8) + 1;
                v96 = (((v95 ^ 0xFF) + (v97 >> 8)) * *v28 + ((((v95 ^ 0xFF) + (v97 >> 8)) * *v28) >> 8) + 1) >> 8;
              }

              *v28 = v96;
            }
          }

          ++v42;
          ++v43;
          v75 += v35 != 0;
          ++v28;
          --v94;
        }

        while (v94);
        goto LABEL_180;
      case 8u:
        v113 = v44;
        v75 = v35;
        do
        {
          v114 = *v42;
          if (*v42)
          {
            if (v35)
            {
              v114 = ((*v75 * v114 + ((*v75 * v114) >> 8) + 1) >> 8);
            }

            if (v114)
            {
              if (v114 == 255)
              {
                v115 = *v28 - ((*v43 * *v28 + ((*v43 * *v28) >> 8) + 1) >> 8);
              }

              else
              {
                v116 = (*v43 ^ 0xFF) * v114 + (((*v43 ^ 0xFFu) * v114) >> 8) + 1;
                v115 = (((v114 ^ 0xFF) + (v116 >> 8)) * *v28 + ((((v114 ^ 0xFF) + (v116 >> 8)) * *v28) >> 8) + 1) >> 8;
              }

              *v28 = v115;
            }
          }

          ++v42;
          ++v43;
          v75 += v35 != 0;
          ++v28;
          --v113;
        }

        while (v113);
        goto LABEL_180;
      case 9u:
        v69 = v35;
        v84 = v44;
        while (1)
        {
          v85 = *v42;
          if (*v42)
          {
            if (!v35)
            {
              goto LABEL_107;
            }

            v86 = *v69 * v85 + ((*v69 * v85) >> 8) + 1;
            if (v86 >= 0x100)
            {
              break;
            }
          }

LABEL_108:
          ++v42;
          ++v43;
          v69 += v35 != 0;
          ++v28;
          if (!--v84)
          {
            goto LABEL_169;
          }
        }

        v85 = v86 >> 8;
LABEL_107:
        v87 = ~v85;
        v88 = *v43 - ((*v43 * ~v85 + ((*v43 * ~v85) >> 8) + 1) >> 8);
        *v28 = (v88 * (*v28 ^ 0xFF) + (v88 + v87) * *v28 + ((v88 * (*v28 ^ 0xFF) + (v88 + v87) * *v28) >> 8) + 1) >> 8;
        goto LABEL_108;
      case 0xAu:
        v69 = v35;
        v109 = v44;
        while (1)
        {
          v110 = *v42;
          if (*v42)
          {
            if (!v35)
            {
              goto LABEL_167;
            }

            v111 = *v69 * v110 + ((*v69 * v110) >> 8) + 1;
            if (v111 >= 0x100)
            {
              break;
            }
          }

LABEL_168:
          ++v42;
          ++v43;
          v69 += v35 != 0;
          ++v28;
          if (!--v109)
          {
            goto LABEL_169;
          }
        }

        v110 = BYTE1(v111);
LABEL_167:
        v112 = *v43 - ((*v43 * (v110 ^ 0xFF) + ((*v43 * (v110 ^ 0xFFu)) >> 8) + 1) >> 8);
        *v28 = (v112 * (*v28 ^ 0xFF) + ~v112 * *v28 + ((v112 * (*v28 ^ 0xFF) + ~v112 * *v28) >> 8) + 1) >> 8;
        goto LABEL_168;
      case 0xBu:
        v69 = v35;
        v70 = v44;
        while (1)
        {
          v71 = *v42;
          if (*v42)
          {
            if (!v35)
            {
              goto LABEL_76;
            }

            v72 = *v69 * v71 + ((*v69 * v71) >> 8) + 1;
            if (v72 >= 0x100)
            {
              break;
            }
          }

LABEL_79:
          ++v42;
          ++v43;
          v69 += v35 != 0;
          ++v28;
          if (!--v70)
          {
            goto LABEL_169;
          }
        }

        v71 = BYTE1(v72);
LABEL_76:
        v73 = *v28 + (*v43 - ((*v43 * (v71 ^ 0xFF) + ((*v43 * (v71 ^ 0xFFu)) >> 8) + 1) >> 8));
        if (v73 >= 0xFF)
        {
          LOBYTE(v73) = -1;
        }

        *v28 = v73;
        goto LABEL_79;
      case 0xCu:
        v69 = v35;
        v80 = v44;
        while (1)
        {
          v81 = *v42;
          if (*v42)
          {
            if (!v35)
            {
              goto LABEL_97;
            }

            v82 = *v69 * v81 + ((*v69 * v81) >> 8) + 1;
            if (v82 >= 0x100)
            {
              break;
            }
          }

LABEL_100:
          ++v42;
          ++v43;
          v69 += v35 != 0;
          ++v28;
          if (!--v80)
          {
LABEL_169:
            v35 = v125 + v69;
            goto LABEL_181;
          }
        }

        v81 = BYTE1(v82);
LABEL_97:
        v83 = *v28 + (*v43 - ((*v43 * (v81 ^ 0xFF) + ((*v43 * (v81 ^ 0xFFu)) >> 8) + 1) >> 8));
        if (v83 >= 0xFF)
        {
          LOBYTE(v83) = -1;
        }

        *v28 = v83;
        goto LABEL_100;
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x14u:
      case 0x15u:
      case 0x16u:
      case 0x17u:
      case 0x18u:
      case 0x19u:
      case 0x1Au:
      case 0x1Bu:
        if (!*(v124 + 96))
        {
LABEL_54:
          v61 = *v42;
          v62 = v42 + 1;
          v49 = v28 - 1;
          v63 = v44;
          if (v35)
          {
            do
            {
              if (v61)
              {
                v64 = *v35 * v61 + ((*v35 * v61) >> 8) + 1;
                if (BYTE1(v64))
                {
                  if (BYTE1(v64) == 255)
                  {
                    LOBYTE(v65) = *v43;
                  }

                  else
                  {
                    v65 = ((v64 >> 8) * *v43 + ((v64 >> 8) ^ 0xFF) * v49[1] + (((v64 >> 8) * *v43 + ((v64 >> 8) ^ 0xFF) * v49[1]) >> 8) + 1) >> 8;
                  }

                  v49[1] = v65;
                }
              }

              v66 = *v62++;
              v61 = v66;
              ++v43;
              ++v35;
              ++v49;
              --v63;
            }

            while (v63);
LABEL_62:
            v35 = v125 + v35;
            goto LABEL_70;
          }

          do
          {
            if (v61)
            {
              if (v61 == 255)
              {
                LOBYTE(v67) = *v43;
              }

              else
              {
                v67 = (*v43 * v61 + v49[1] * (v61 ^ 0xFF) + ((*v43 * v61 + v49[1] * (v61 ^ 0xFFu)) >> 8) + 1) >> 8;
              }

              v49[1] = v67;
            }

            v68 = *v62++;
            v61 = v68;
            ++v43;
            ++v49;
            --v63;
          }

          while (v63);
LABEL_69:
          v35 = 0;
LABEL_70:
          v28 = &v49[v127 + 1];
          goto LABEL_182;
        }

LABEL_30:
        v47 = *v42;
        v48 = v42 + 1;
        v49 = v28 - 1;
        v50 = v44;
        if (v35)
        {
          while (1)
          {
            if (!v47)
            {
              goto LABEL_41;
            }

            v51 = *v35 * v47 + ((*v35 * v47) >> 8) + 1;
            if (!BYTE1(v51))
            {
              goto LABEL_41;
            }

            if (BYTE1(v51) == 255)
            {
              v52 = *v43;
              if (*v43)
              {
                if (v52 != 255)
                {
LABEL_39:
                  v52 += (v49[1] * ~v52 + ((v49[1] * ~v52) >> 8) + 1) >> 8;
                }

                v49[1] = v52;
              }
            }

            else
            {
              v53 = v51 >> 8;
              v54 = *v43;
              v55 = (v53 ^ 0xFF) * v54 + (((v53 ^ 0xFF) * v54) >> 8) + 1;
              if (v54 != BYTE1(v55))
              {
                v52 = v54 - (v55 >> 8);
                goto LABEL_39;
              }
            }

LABEL_41:
            v56 = *v48++;
            v47 = v56;
            ++v43;
            ++v35;
            ++v49;
            if (!--v50)
            {
              goto LABEL_62;
            }
          }
        }

        break;
      default:
        goto LABEL_182;
    }

    break;
  }

  while (1)
  {
    if (v47)
    {
      if (v47 == 255)
      {
        v57 = *v43;
        if (*v43)
        {
          if (v57 != 255)
          {
LABEL_50:
            v57 += (v49[1] * ~v57 + ((v49[1] * ~v57) >> 8) + 1) >> 8;
          }

          v49[1] = v57;
        }
      }

      else
      {
        v58 = *v43;
        v59 = v58 * (v47 ^ 0xFF) + ((v58 * (v47 ^ 0xFFu)) >> 8) + 1;
        if (v58 != BYTE1(v59))
        {
          v57 = v58 - (v59 >> 8);
          goto LABEL_50;
        }
      }
    }

    v60 = *v48++;
    v47 = v60;
    ++v43;
    ++v49;
    if (!--v50)
    {
      goto LABEL_69;
    }
  }
}