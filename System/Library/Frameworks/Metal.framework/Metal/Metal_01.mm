uint64_t _MTLMessageContextBegin_(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 16) = a3;
  *(result + 40) = 0;
  *(result + 48) = a6;
  *result = 0;
  *(result + 8) = a2;
  return result;
}

uint64_t MTLFailureTypeGetErrorModeType(unint64_t a1)
{
  if (initFailureModes(void)::pred != -1)
  {
    MTLGetWarningMode_cold_1();
  }

  if (a1 >= 5)
  {
    MTLFailureTypeGetErrorModeType_cold_2();
  }

  if (a1 == 4)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  return errorModes[v2];
}

uint64_t _MTLMessageContextEndNSErrorOrAbort(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v51 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 40))
  {
    goto LABEL_22;
  }

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if ([*(v4 + 40) count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [objc_msgSend(*(v4 + 40) objectAtIndex:{v10), "type"}];
      v13 = [*(v4 + 40) objectAtIndex:v10];
      if (v12)
      {
        [v9 addObject:v13];
      }

      v11 |= v12;
      ++v10;
    }

    while ([*(v4 + 40) count] > v10);
  }

  else
  {
    v11 = 0;
  }

  [v8 setObject:v9 forKey:@"MTLMessageArrayKey"];
  v14 = *MEMORY[0x1E696A578];
  [v8 setObject:@"There was an issue with your Metal framework usage. Please see MTLMessageArrayKey for the NSArray of issue strings." forKey:*MEMORY[0x1E696A578]];
  [v8 setObject:@"There was an issue with your Metal framework usage." forKey:*MEMORY[0x1E696A588]];
  [v8 setObject:@"Please address issues included in MTLMessageArrayKey and try again." forKey:*MEMORY[0x1E696A598]];
  v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLValidationError" code:*(v4 + 32) userInfo:v8];
  v16 = [[MTLMessageFilter alloc] init:v11 device:*(v4 + 24)];
  _MTLNotifyMessageObservers(v16, v15);

  if (*(v4 + 40))
  {
    v38 = v14;
    v39 = a3;
    v43 = a2;
    v40 = a4;
    context = objc_autoreleasePoolPush();
    v17 = *(v4 + 40);
    v41 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%s", *(v4 + 48)];
    [v41 appendString:@"\n"];
    v18 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v19 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v44 = v4;
    v45 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v20 = *(v4 + 40);
    v21 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v47;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v46 + 1) + 8 * i);
          v27 = v18;
          if (([v26 type] & 4) != 0 || (v27 = v19, (objc_msgSend(v26, "type") & 8) != 0) || (v27 = v45, (objc_msgSend(v26, "type") & 2) != 0))
          {
            [v27 appendFormat:@"%@\n", objc_msgSend(v26, "string")];
          }

          v23 |= [v26 type];
        }

        v22 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
      }

      while (v22);
    }

    else
    {
      LOBYTE(v23) = 0;
    }

    [v41 appendFormat:@"%@%@%@", v18, v19, v45];
    if (v43)
    {
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObject:v41 forKey:v38];
      v28 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v39 code:v40 userInfo:v33];
      v4 = v44;
      v34 = context;
    }

    else
    {
      v4 = v44;
      v34 = context;
      if ((v23 & 4) != 0)
      {
        MTLReportFailure(0, *(v44 + 8), *(v44 + 16), @"%@", v29, v30, v31, v32, v41);
      }

      else
      {
        v35 = *(v44 + 8);
        v36 = *(v44 + 16);
        if ((v23 & 8) != 0)
        {
          MTLReportFailure(1uLL, v35, v36, @"%@", v29, v30, v31, v32, v41);
        }

        else
        {
          MTLReportFailure(2uLL, v35, v36, @"%@", v29, v30, v31, v32, v41);
        }
      }

      v28 = 0;
    }

    objc_autoreleasePoolPop(v34);
  }

  else
  {
LABEL_22:
    v28 = 0;
  }

  *(v4 + 24) = 0;
  return v28;
}

uint64_t MTLResourceListAddHashValue(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *a1 - 1;
  v4 = (0x9E3779B97F4A7C15 * a2) >> -*(a1 + 4);
  v5 = *(a1 + 8);
  v6 = *(v5 + 8 * (v4 >> 6)) | ~(-1 << v4);
  v7 = 64 - (v4 & 0x3F);
  v8 = v4 >> 6 << 6;
  v9 = (v4 >> 6) + 1;
  while (v6 == -1)
  {
    v2 += v7;
    v6 = *(v5 + 8 * (v9 & ((*a1 >> 6) - 1)));
    v8 += 64;
    ++v9;
    v7 = 64;
    if (v2 >= 0x80)
    {
      return 0;
    }
  }

  v10 = __clz(__rbit64(~v6)) + v8;
  if ((v10 - v4) > 0x7F)
  {
    return 0;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *a1 - 64;
  while ((v10 - v4) >= 0x20)
  {
    v15 = v10 - 31;
    if (v10 < 0x1F)
    {
      v20 = v10;
    }

    else
    {
      v16 = -31;
      while (1)
      {
        v15 = v10 + v16;
        v17 = (v10 + v16) & v3;
        v18 = *(v12 + 4 * v17);
        v19 = __clz(__rbit32(v18));
        v20 = v10 + v16 + v19;
        if (v18 && v20 < v10)
        {
          break;
        }

        if (!__CFADD__(v10, ++v16))
        {
          return 0;
        }
      }

      v22 = *(v13 + 8 * (v20 & v3));
      *(v12 + 4 * v17) = v18 & ~(1 << v19) | (1 << -v16);
      *(v5 + 8 * ((v10 & v14) >> 6)) |= 1 << v10;
      *(v13 + 8 * (v10 & v3)) = v22;
    }

    result = 0;
    v23 = v15 == v10;
    v10 = v20;
    if (v23)
    {
      return result;
    }
  }

  *(v13 + 8 * (v10 & v3)) = a2;
  result = 1;
  *(v12 + 4 * v4) |= 1 << (v10 - v4);
  *(v5 + 8 * ((v10 & v14) >> 6)) |= 1 << v10;
  return result;
}

int32x2_t *MTLResourceListAddResource(int32x2_t *result, uint64_t a2)
{
  v2 = result + 1;
  v3 = (0x9E3779B97F4A7C15 * a2) >> -result[1].u32[1];
  v4 = *(*&result[3] + 4 * v3);
  while (v4)
  {
    v5 = __clz(__rbit32(v4));
    v4 &= ~(1 << v5);
    if (*(*&result[4] + 8 * ((v5 + v3) & (result[1].i32[0] - 1))) == a2)
    {
      return result;
    }
  }

  if ((MTLResourceListAddHashValue(&result[1], a2) & 1) == 0)
  {
    MTLResourceListGrowAndReset(v2);
    MTLResourceListAddHashValue(v2, a2);
  }

  MTLResourceListChunksAddEntry(v2, a2);

  return a2;
}

int *MTLResourceListChunksAddEntry(int *result, uint64_t a2)
{
  v3 = result;
  v4 = result[8];
  v5 = result[14];
  v6 = *(result + 5);
  if (v4 >= v5)
  {
    *(v6 - 24) = v4;
    v7 = v6 - 24;
    *(v7 + 16) = *(result + 6);
    result[8] = 1;
    *(result + 6) = v7;
    result = malloc_type_malloc(8 * v5 + 24, 0x1030040B05087B7uLL);
    *(result + 3) = a2;
    *result = 0;
    *(result + 1) = result + 6;
    *(result + 2) = 0;
    *(v3 + 5) = result + 6;
  }

  else
  {
    *(v6 + 8 * v4) = a2;
    result[8] = v4 + 1;
  }

  return result;
}

void _MTLValidateRenderPassDescriptorCommon(uint64_t a1, void *a2, void *a3, unint64_t *a4, unint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105[56] = *MEMORY[0x1E69E9840];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[21];
  v98 = a2;
  if (v10)
  {
    v11 = a2[2];
    v12 = a2[3];
    if (v8)
    {
      v13 = v9 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      v100 = 0uLL;
      *&v101 = 0;
      objc_msgSend_screenSize(v10);
      v12 = 0;
      v11 = 0;
    }

    v14 = [v10 layerCount];
    if ([v10 mutability] == 1)
    {
      v17 = v12;
      v18 = v11;
    }

    else if (v14)
    {
      v19 = 0;
      v18 = 0.0;
      v17 = 0.0;
      do
      {
        *&v15 = v11;
        *&v16 = v12;
        [v10 mapScreenToPhysicalCoordinates:v19 forLayer:{v15, v16}];
        if (v18 <= *&v15)
        {
          v18 = *&v15;
        }

        if (v17 <= *&v16)
        {
          v17 = *&v16;
        }

        ++v19;
      }

      while (v14 != v19);
    }

    else
    {
      v17 = 0.0;
      v18 = 0.0;
    }

    v8 = vcvtas_u32_f32(v18);
    v9 = vcvtas_u32_f32(v17);
    a2 = v98;
  }

  v20 = 0;
  v21 = 0;
  v96 = 0;
  v99 = 0;
  v91 = v9;
  v92 = v8;
  if (v8)
  {
    v22 = v8;
  }

  else
  {
    v22 = -1;
  }

  if (v9)
  {
    v23 = v9;
  }

  else
  {
    v23 = -1;
  }

  do
  {
    v24 = *(*a2 + 8 + v20);
    if (v24)
    {
      if (*(v24 + 40) >= 3uLL)
      {
        _MTLMessageContextPush_(a1, 4, @"loadAction is not a valid MTLLoadAction.", a4, a5, a6, a7, a8, v90);
      }

      if (*(v24 + 48) >= 5uLL)
      {
        _MTLMessageContextPush_(a1, 4, @"storeAction is not a valid MTLStoreAction.", a4, a5, a6, a7, a8, v90);
      }

      if ((*(v24 + 56) & 0xFFFFFFFFFFFFFFFELL) != 0)
      {
        _MTLMessageContextPush_(a1, 4, @"storeActionOptions contains unrecognized bits (%#x)", a4, a5, a6, a7, a8, *(v24 + 56) & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = v24 + 8;
      v26 = *(v24 + 8);
      if (v26)
      {
        v27 = *(v24 + 16);
        v28 = [*(v24 + 8) width];
        v29 = [v26 height];
        v30 = v28 >> v27;
        v31 = v29 >> v27;
        if (v28 >> v27 <= 1)
        {
          v30 = 1;
        }

        if (v31 <= 1)
        {
          v31 = 1;
        }

        *(v25 + 152) = v30;
        *(v25 + 160) = v31;
        if (v30 < v22)
        {
          v22 = v30;
        }

        if (v31 < v23)
        {
          v23 = v31;
        }

        if (!v96)
        {
          v96 = [*v25 sampleCount];
        }

        v32 = [*v25 pixelFormat];
        v104[v21] = v32;
        MTLPixelFormatGetInfoForDevice(a3, v32, &v100);
        ++v99;
        v33 = &v105[7 * v21++];
        v34 = v101;
        *v33 = v100;
        *(v33 + 1) = v34;
        *(v33 + 2) = v102;
        v33[6] = v103;
      }

      a2 = v98;
    }

    v20 += 8;
  }

  while (v20 != 64);
  v35 = *(*a2 + 72);
  if (v35)
  {
    v36 = *(v35 + 8);
    if (v36)
    {
      v37 = *(v35 + 16);
      v38 = [*(v35 + 8) width];
      v39 = [v36 height];
      v40 = v38 >> v37;
      v41 = v39 >> v37;
      if (v38 >> v37 <= 1)
      {
        v40 = 1;
      }

      if (v41 <= 1)
      {
        v41 = 1;
      }

      *(v35 + 160) = v40;
      *(v35 + 168) = v41;
      if (v40 < v22)
      {
        v22 = v40;
      }

      if (v41 < v23)
      {
        v23 = v41;
      }

      ++v99;
    }

    if (*(v35 + 40) >= 3uLL)
    {
      _MTLMessageContextPush_(a1, 4, @"loadAction is not a valid MTLLoadAction.", a4, a5, a6, a7, a8, v90);
    }

    if (*(v35 + 48) >= 6uLL)
    {
      _MTLMessageContextPush_(a1, 4, @"storeAction is not a valid MTLStoreAction.", a4, a5, a6, a7, a8, v90);
    }

    if ((*(v35 + 56) & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      _MTLMessageContextPush_(a1, 4, @"storeActionOptions contains unrecognized bits (%#x)", a4, a5, a6, a7, a8, *(v35 + 56) & 0xFFFFFFFFFFFFFFFELL);
    }

    if (*(v35 + 152) >= 3uLL)
    {
      _MTLMessageContextPush_(a1, 4, @"resolveFilter is not a valid MTLMultisampleDepthResolveFilter.", a4, a5, a6, a7, a8, v90);
    }

    a2 = v98;
  }

  v42 = *(*a2 + 80);
  if (v42)
  {
    v43 = *(v42 + 8);
    if (v43)
    {
      v44 = *(v42 + 16);
      v45 = [*(v42 + 8) width];
      v46 = [v43 height];
      v47 = v45 >> v44;
      v48 = v46 >> v44;
      if (v45 >> v44 <= 1)
      {
        v47 = 1;
      }

      if (v48 <= 1)
      {
        v48 = 1;
      }

      *(v42 + 160) = v47;
      *(v42 + 168) = v48;
      if (v47 < v22)
      {
        v22 = v47;
      }

      if (v48 < v23)
      {
        v23 = v48;
      }

      ++v99;
    }

    if (*(v42 + 112) >= 2uLL)
    {
      _MTLMessageContextPush_(a1, 4, @"resolveFilter is not a valid MTLMultisampleStencilResolveFilter.", a4, a5, a6, a7, a8, v90);
    }

    if (*(v42 + 48) >= 5uLL)
    {
      _MTLMessageContextPush_(a1, 4, @"storeAction is not a valid MTLStoreAction.", a4, a5, a6, a7, a8, v90);
    }

    v49 = *(v42 + 56);
    if ((v49 & 0xFFFFFFFFFFFFFFFELL) != 0)
    {
      _MTLMessageContextPush_(a1, 4, @"storeActionOptions contains unrecognized bits: %#x", a4, a5, a6, a7, a8, v49 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v49)
    {
      _MTLMessageContextPush_(a1, 4, @"Stencil attachment storeActionOptions (%#x) contains options incompatible with this attachment type: %@", a4, a5, a6, a7, a8, v49);
    }
  }

  if (v99)
  {
    v50 = v23;
  }

  else
  {
    v22 = v92;
    v50 = v91;
  }

  {
    _MTLValidateRenderPassDescriptorCommon::is_dyld_program_sdk_at_least_fall_2025_os_versions = dyld_program_sdk_at_least();
  }

  v51 = v96;
  if (_MTLValidateRenderPassDescriptorCommon::is_dyld_program_sdk_at_least_fall_2025_os_versions != 1)
  {
    v53 = v98;
    v54 = v98[7];
    if (v54)
    {
      v55 = v98[8] * v54;
      if (v96)
      {
LABEL_96:
        v56 = v51;
        v57 = v53[10];
        v58 = v53[11];
        v59 = [a3 maxThreadgroupMemoryLength];
        v60 = v58 + v56 * v55 * v57;
        v61 = v60 > v59;
        if (v60 <= v59)
        {
          v62 = v22;
        }

        else
        {
          v62 = 0;
        }

        if (v61)
        {
          v63 = 0;
        }

        else
        {
          v63 = v50;
        }

        goto LABEL_113;
      }
    }

    else
    {
      v55 = [a3 minTilePixels];
      v53 = v98;
      v51 = v96;
      if (v96)
      {
        goto LABEL_96;
      }
    }

    v51 = v53[9];
    goto LABEL_96;
  }

  if (v96)
  {
    MTLAPIDebugEnabled();
    v52 = v96;
  }

  else
  {
    v64 = v98[9];
    v65 = MTLAPIDebugEnabled();
    v52 = v64;
    if (v64)
    {
      v66 = 0;
    }

    else
    {
      v66 = v65;
    }

    if (v66 == 1)
    {
      v52 = v98[4];
    }
  }

  v67 = v52;
  v68 = MTLPixelFormatComputeTotalSizeUsed(v105, v104, v21, v52 > 1);
  v72 = _MTLValidateRenderPassDescriptorTileProperties(a1, 8 * v68, v67, v98, a3, v69, v70, v71);
  if (v72)
  {
    v62 = v22;
  }

  else
  {
    v62 = 0;
  }

  if (v72)
  {
    v63 = v50;
  }

  else
  {
    v63 = 0;
  }

LABEL_113:
  *a4 = v62;
  *a5 = v63;
  v73 = v98;
  if (v98[20])
  {
    if (([a3 areProgrammableSamplePositionsSupported] & 1) == 0)
    {
      _MTLMessageContextPush_(a1, 4, @"Custom sample positions were specified, but Programmable Sample Positions is not supported on this device.", v74, v75, v76, v77, v78, v90);
    }

    v73 = v98;
    if (v98[20])
    {
      v79 = [a3 supportsTextureSampleCount:?];
      v73 = v98;
      if ((v79 & 1) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"Custom sample positions were specified, but the device does not support the number of samples supplied.", v80, v81, v82, v83, v84, v90);
        v73 = v98;
      }
    }
  }

  if (v73[6])
  {
    if (([a3 supportsLayeredRendering] & 1) == 0)
    {
      _MTLMessageContextPush_(a1, 4, @"renderTargetArrayLength > 0 specified, but Layered Rendering is not supported on this device.", v85, v86, v87, v88, v89, v90);
    }
  }
}

void MTLDispatchListApply(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      (*(*(v1 + 1) + 16))();
      _Block_release(*(v1 + 1));
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t _mtlValidateStrideTextureParameters(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  _MTLMessageContextBegin_(v47, "_mtlValidateStrideTextureParameters", 1927, a1, 0, "Texture Descriptor Validation");
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  MTLPixelFormatGetInfoForDevice(a1, [a2 pixelFormat], &v43);
  if (a6)
  {
    v17 = "IOSurface";
  }

  else
  {
    v17 = "Linear";
  }

  if ((BYTE9(v43) & 4) == 0 && *(&v44 + 1) * a3 > a5)
  {
    _MTLMessageContextPush_(v47, 4, @"%s texture: bytesPerRow (%llu) must be greater or equal to (%llu) bytes", v12, v13, v14, v15, v16, v17);
  }

  if ([a2 textureType] == 9)
  {
    v23 = 1;
LABEL_24:
    v26 = v23;
    goto LABEL_25;
  }

  if (*(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 288) != 7085)
  {
    if (a6)
    {
      if ([a2 usage] == 1)
      {
        v24 = [a1 iosurfaceReadOnlyTextureAlignmentBytes];
      }

      else
      {
        v24 = [a1 iosurfaceTextureAlignmentBytes];
      }
    }

    else
    {
      v24 = [a1 linearTextureAlignmentBytes];
    }

LABEL_23:
    v23 = v24;
    goto LABEL_24;
  }

  if ([a2 textureType] != 3)
  {
    if ([a2 usage] == 1)
    {
      v24 = [a1 deviceLinearReadOnlyTextureAlignmentBytes];
    }

    else
    {
      v24 = [a1 deviceLinearTextureAlignmentBytes];
    }

    goto LABEL_23;
  }

  v23 = [a1 linearTextureArrayAlignmentBytes];
  v25 = [a1 linearTextureArrayAlignmentSlice];
  v26 = v25;
  if (!v23 || !v25)
  {
    _MTLMessageContextPush_(v47, 4, @"2D linear texture array is not supported.", v18, v19, v20, v21, v22, v42);
    if (!v26)
    {
      goto LABEL_24;
    }
  }

LABEL_25:
  if (((v23 - 1) & a5) != 0)
  {
    _MTLMessageContextPush_(v47, 4, @"%s texture: bytesPerRow (%llu) must be aligned to %llu bytes", v18, v19, v20, v21, v22, v17);
  }

  if (((v26 - 1) & a4) != 0)
  {
    _MTLMessageContextPush_(v47, 4, @"%s texture: offset (%llu) must be aligned to %llu bytes", v18, v19, v20, v21, v22, v17);
  }

  if ((WORD4(v43) & 0x4000) == 0 && (BYTE8(v43) & 0x60) != 0)
  {
    _MTLMessageContextPush_(v47, 4, @"%s texture: cannot create compressed, depth, or stencil textures, pixelFormat (%s) disallowed", v18, v19, v20, v21, v22, v17);
  }

  v32 = [a2 descriptorPrivate];
  if (v32[5] != 1)
  {
    _MTLMessageContextPush_(v47, 4, @"%s texture: cannot be mipmapped, mipmapLevelCount (%lu) disallowed", v27, v28, v29, v30, v31, v17);
  }

  if (v32[4] != 1)
  {
    _MTLMessageContextPush_(v47, 4, @"%s texture: must have depth == 1, depth (%lu) disallowed", v27, v28, v29, v30, v31, v17);
  }

  if ([a2 textureType] != 9)
  {
    v33 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 288);
    v34 = *v32;
    if (v33 == 7085)
    {
      if (v34 - 4 < 0xFFFFFFFFFFFFFFFELL)
      {
        v35 = @"%s texture: must be of type MTLTextureType2D or linear MTLTextureType2DArray, textureType (%@) disallowed";
        goto LABEL_43;
      }
    }

    else if (v34 != 2)
    {
      v35 = @"%s texture: must be of type MTLTextureType2D, textureType (%@) disallowed";
LABEL_43:
      MTLTextureTypeString(v34);
      _MTLMessageContextPush_(v47, 4, v35, v37, v38, v39, v40, v41, v17);
    }
  }

  return _MTLMessageContextEnd(v47);
}

uint64_t MTLPixelFormatQuery::supportsFamily(id *this, MTLGPUFamily a2)
{
  if (*this)
  {
    return [*this supportsFamily:a2];
  }

  if (this[1] == -1)
  {
    return 1;
  }

  v3 = this[2];
  v4 = this[3];
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        v3 = this[3];
        return v3 != v4;
      }
    }
  }

  return v3 != v4;
}

void validateMTLResourceOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 >> 4;
  if ((a1 & 0xFu) >= 2uLL)
  {
    _MTLMessageContextPush_(a2, 4, @"invalid cpuCacheMode (%lu)", a4, a5, a6, a7, a8, a1 & 0xF);
  }

  validateMTLStorageMode(v10, a2);
  if ((a1 & 0xFFFFFFFFFFF0FC00) != 0)
  {
    _MTLMessageContextPush_(a2, 4, @"MTLResourceOptions (0x%lx) contains unknown bits.", v11, v12, v13, v14, v15, a1 & 0xFFFFFFFFFFF0FC00);
  }
}

void validateMTLStorageMode(uint64_t result, uint64_t a2)
{
  v3 = 0;
  while (qword_185DE1D60[v3] != result)
  {
    if (++v3 == 3)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalid storageMode (%lu). Must be one of", result];
      for (i = 0; i != 3; ++i)
      {
        v4 = [v4 stringByAppendingFormat:@" %@(%lu)", *(&off_1E6EEB7C8 + qword_185DE1D60[i]), qword_185DE1D60[i]];
      }

      _MTLMessageContextPush_(a2, 4, @"%@", v6, v7, v8, v9, v10, v4);
      return;
    }
  }
}

void MTLGetTextureLevelInfoForDeviceWithOptions(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, unint64_t a8@<X7>, unint64_t *a9@<X8>)
{
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  MTLPixelFormatGetInfoForDevice(a1, a2, &v28);
  v17 = v30;
  v18 = *(&v29 + 1);
  if (a2 <= 252)
  {
    if (a2 == 250 || a2 == 252)
    {
      v19 = 2;
      if (a2 == 252)
      {
        v19 = 4;
      }

      if (a8 <= 1)
      {
        v18 = v19;
      }
    }
  }

  else if (a2 == 253 || a2 == 261)
  {
    if ((a8 | 2) == 2)
    {
      v18 = 1;
    }
  }

  else if (a2 == 260 && a8 < 3)
  {
    v18 = qword_185DE1DC8[a8];
  }

  if ((WORD4(v28) & 0x400) != 0)
  {
    v20 = *(&v30 + 1);
  }

  else
  {
    v20 = 1;
  }

  if ((WORD4(v28) & 0x400) == 0)
  {
    v17 = 1;
  }

  v21 = a3 >> a7;
  if (a3 >> a7 <= 1)
  {
    v21 = 1;
  }

  v22 = a4 >> a7;
  if (a4 >> a7 <= 1)
  {
    v22 = 1;
  }

  *a9 = v21;
  a9[1] = v22;
  v23 = a5 >> a7;
  if (a5 >> a7 <= 1)
  {
    v23 = 1;
  }

  v24 = (v21 + v17 - 1) / v17;
  a9[2] = v23;
  a9[3] = v24;
  v25 = (v22 + v20 - 1) / v20;
  a9[4] = v25;
  a9[5] = v23;
  a9[6] = v24 * v17;
  a9[7] = v25 * v20;
  v26 = v18 * a6;
  a9[8] = v23;
  a9[9] = v26;
  v27 = v24 * v26;
  a9[10] = v27;
  a9[11] = v25 * v27;
  a9[12] = v25 * v27 * v23;
}

uint64_t adjustPixelFormatForiOSDevice(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t *a4, _BYTE *a5, int a6, int a7)
{
  if ((*(a2 + 9) & 4) != 0)
  {
    LOBYTE(v8) = 0;
    v7 = 0;
  }

  else
  {
    v7 = *(a2 + 24);
    LOBYTE(v8) = 4;
    if (a7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 4;
    }

    if (v7 <= v9)
    {
      v7 = v9;
    }

    if (a7)
    {
      v8 = v7 / *(a2 + 32);
      if (v8 <= 1)
      {
        LOBYTE(v8) = 1;
      }
    }
  }

  if (result > 499)
  {
    if (result <= 622)
    {
      v10 = v7;
      switch(result)
      {
        case 500:
        case 501:
        case 502:
        case 503:
        case 504:
        case 505:
        case 506:
        case 507:
        case 508:
        case 509:
        case 510:
        case 520:
        case 521:
        case 522:
        case 523:
        case 524:
        case 525:
        case 526:
        case 527:
        case 528:
        case 529:
        case 530:
        case 540:
        case 541:
        case 542:
        case 543:
        case 544:
        case 545:
        case 546:
        case 547:
        case 548:
        case 550:
        case 551:
        case 554:
        case 555:
        case 560:
        case 562:
        case 586:
        case 587:
          goto LABEL_15;
        case 588:
          v7 = 2;
          if (a7)
          {
            v11 = *(a2 + 32);
            v10 = 2;
            goto LABEL_17;
          }

          LOBYTE(v8) = 4;
          v10 = 2;
          break;
        case 589:
          goto LABEL_83;
        default:
          goto LABEL_19;
      }

      goto LABEL_19;
    }

    if (result > 628)
    {
      v10 = v7;
      if (result != 629)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_15;
  }

  if (result <= 79)
  {
    if (result <= 43)
    {
      if (result <= 41 && result != 40)
      {
        v10 = v7;
        if (result != 41)
        {
          goto LABEL_19;
        }
      }

      goto LABEL_83;
    }

    if (result <= 70)
    {
      if (result != 44)
      {
        v10 = v7;
        if (result != 70)
        {
          goto LABEL_19;
        }

        goto LABEL_83;
      }

LABEL_15:
      v7 = 8;
      if (!a7)
      {
        LOBYTE(v8) = 4;
        v10 = 8;
        goto LABEL_19;
      }

      v11 = *(a2 + 32);
      v10 = 8;
      goto LABEL_17;
    }

    if (result != 71)
    {
      v10 = v7;
      if (result != 72)
      {
        goto LABEL_19;
      }
    }

LABEL_90:
    v10 = 4;
    v7 = 8;
    if (a7)
    {
      LOBYTE(v8) = 4u / *(a2 + 32);
    }

    else
    {
      LOBYTE(v8) = 4;
    }

    goto LABEL_19;
  }

  if (result <= 91)
  {
    if (result > 89)
    {
      if (result == 90)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (result == 80)
      {
LABEL_83:
        v7 = 4;
        if (!a7)
        {
          LOBYTE(v8) = 4;
          v10 = 4;
          goto LABEL_19;
        }

        v11 = *(a2 + 32);
        v10 = 4;
LABEL_17:
        LODWORD(v8) = v7 / v11;
        goto LABEL_19;
      }

      v10 = v7;
      if (result != 81)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_90;
  }

  if (result <= 94)
  {
    goto LABEL_15;
  }

  v10 = v7;
  if (result == 253)
  {
    LOBYTE(v8) = 4;
    if (a7)
    {
      LOBYTE(v8) = *(a2 + 32) == 1;
    }

    v7 = 1;
    v10 = 1;
  }

LABEL_19:
  if (!a6)
  {
    goto LABEL_36;
  }

  if (result <= 42)
  {
    if (result == 40)
    {
      if (a7)
      {
        goto LABEL_60;
      }

      LOBYTE(v8) = 4;
      v7 = 8;
      goto LABEL_75;
    }

    if (result != 41 && result != 42)
    {
      goto LABEL_36;
    }

LABEL_40:
    v7 = 8;
    if (a7)
    {
      v12 = *(a2 + 32);
      goto LABEL_42;
    }

    LOBYTE(v8) = 4;
LABEL_75:
    v10 = 8;
    goto LABEL_76;
  }

  if (result == 43)
  {
    goto LABEL_40;
  }

  if (result == 70 || result == 80)
  {
    if ((a7 & 1) == 0)
    {
      LOBYTE(v8) = 4;
      v7 = 8;
LABEL_62:
      v10 = 4;
      goto LABEL_76;
    }

    goto LABEL_35;
  }

LABEL_36:
  if (!a7)
  {
    goto LABEL_76;
  }

  if (result > 323)
  {
    switch(result)
    {
      case 500:
      case 501:
      case 502:
      case 503:
      case 504:
      case 505:
      case 506:
      case 507:
      case 520:
      case 521:
      case 522:
      case 523:
      case 524:
      case 525:
      case 526:
      case 527:
      case 540:
      case 541:
      case 542:
      case 543:
      case 544:
      case 545:
      case 554:
      case 555:
      case 562:
      case 563:
      case 564:
      case 565:
      case 566:
      case 567:
      case 568:
      case 569:
      case 570:
      case 571:
      case 572:
      case 573:
      case 574:
      case 575:
      case 607:
      case 608:
      case 609:
      case 610:
      case 611:
      case 612:
      case 613:
      case 615:
      case 616:
      case 617:
        v10 = 6;
        v7 = 6;
        LOBYTE(v8) = 6u / *(a2 + 32);
        break;
      case 508:
      case 509:
      case 510:
      case 511:
      case 512:
      case 513:
      case 514:
      case 515:
      case 516:
      case 517:
      case 518:
      case 519:
      case 528:
      case 529:
      case 530:
      case 531:
      case 532:
      case 533:
      case 534:
      case 535:
      case 536:
      case 537:
      case 538:
      case 539:
      case 546:
      case 547:
      case 548:
      case 549:
      case 550:
      case 551:
      case 552:
      case 553:
      case 556:
      case 557:
      case 558:
      case 559:
      case 560:
      case 561:
      case 576:
      case 577:
      case 578:
      case 579:
      case 580:
      case 581:
      case 582:
      case 583:
      case 584:
      case 585:
      case 586:
      case 587:
      case 588:
      case 589:
      case 590:
      case 591:
      case 592:
      case 593:
      case 594:
      case 595:
      case 596:
      case 597:
      case 598:
      case 599:
      case 600:
      case 601:
      case 602:
      case 603:
      case 604:
      case 605:
      case 606:
      case 614:
        goto LABEL_76;
      default:
        if (result == 324 || result == 325)
        {
          goto LABEL_124;
        }

        break;
    }

    goto LABEL_76;
  }

  if (result <= 93)
  {
    if (result <= 80)
    {
      if (result > 70)
      {
        if (result != 71 && result != 72 && result != 80)
        {
          goto LABEL_76;
        }

        goto LABEL_35;
      }

      if (result != 40)
      {
        if (result != 70)
        {
          goto LABEL_76;
        }

        goto LABEL_35;
      }

LABEL_60:
      LOBYTE(v8) = 2;
      v7 = 6;
      v10 = 6;
      goto LABEL_76;
    }

    if (result > 90)
    {
      if (result != 91)
      {
        goto LABEL_117;
      }

      v12 = *(a2 + 32);
      v7 = 8;
LABEL_42:
      v10 = 8;
      goto LABEL_43;
    }

    if (result != 81)
    {
      if (result != 90)
      {
        goto LABEL_76;
      }

      goto LABEL_117;
    }

LABEL_35:
    v12 = *(a2 + 32);
    v7 = 4;
    v10 = 4;
LABEL_43:
    LODWORD(v8) = v7 / v12;
    goto LABEL_76;
  }

  if (result <= 303)
  {
    if (result <= 300)
    {
      if (result == 94)
      {
LABEL_117:
        v7 = 4;
        LOBYTE(v8) = 4;
        goto LABEL_62;
      }

      if (result != 300)
      {
        goto LABEL_76;
      }
    }

    else if (result != 301 && result != 302)
    {
      goto LABEL_121;
    }

    LOBYTE(v8) = 1;
    v7 = 3;
    v10 = 3;
    goto LABEL_76;
  }

  if (result <= 313)
  {
    if (result == 304)
    {
LABEL_121:
      LOBYTE(v8) = 1;
      v10 = 3;
      v7 = 3;
      goto LABEL_76;
    }

    if (result != 313)
    {
      goto LABEL_76;
    }

LABEL_120:
    LOBYTE(v8) = 2;
    v10 = 6;
    v7 = 6;
    goto LABEL_76;
  }

  if (result == 314 || result == 315)
  {
    goto LABEL_120;
  }

  if (result == 323)
  {
LABEL_124:
    LOBYTE(v8) = 4;
    v10 = 12;
    v7 = 12;
  }

LABEL_76:
  if (a3)
  {
    *a3 = v10;
  }

  if (a4)
  {
    *a4 = v7;
  }

  if (a5)
  {
    *a5 = v8;
  }

  return result;
}

void MTLResourceListChunkFreeEntries(MTLResourceListChunk *a1)
{
  if (a1->currentEntry)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      entries = a1->entries;
      _X9 = &entries[v2];
      __asm { PRFM            #4, [X9] }

      v2 += 8;
    }

    while (v3 < a1->currentEntry);
  }
}

void _mtlValidateMTLTextureSwizzleKey(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (result >= 6u)
  {
    MTLReportFailure(0, "_mtlValidateMTLTextureSwizzle", 445, @"swizzle(%u) is not a valid MTLTextureSwizzle.", a5, a6, a7, a8, result);
  }

  if (BYTE1(v8) >= 6u)
  {
    MTLReportFailure(0, "_mtlValidateMTLTextureSwizzle", 445, @"swizzle(%u) is not a valid MTLTextureSwizzle.", a5, a6, a7, a8, BYTE1(v8));
  }

  if (BYTE2(v8) >= 6u)
  {
    MTLReportFailure(0, "_mtlValidateMTLTextureSwizzle", 445, @"swizzle(%u) is not a valid MTLTextureSwizzle.", a5, a6, a7, a8, BYTE2(v8));
  }

  if (v8 >> 25 >= 3)
  {
    MTLReportFailure(0, "_mtlValidateMTLTextureSwizzle", 445, @"swizzle(%u) is not a valid MTLTextureSwizzle.", a5, a6, a7, a8, HIBYTE(v8));
  }
}

uint64_t *std::__tree<std::__value_type<std::string,BOOL>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void MTLValidateFeatureSupport(id *a1, uint64_t a2, unint64_t a3)
{
  if (([a1[44] supportForFeature:a2] & 1) == 0)
  {
    v6 = [a1[44] requirementForFeature:a2];
    if (v6)
    {
      v11 = v6;
      if (([a1 supportsFamily:v6] & 1) == 0)
      {
        v12 = [a1[44] nameForFeature:a2];
        _MTLGPUFamilyString(v11);
        MTLReportFailure(a3, "MTLValidateFeatureSupport", 7979, @"%@ is only supported on %@ and later.", v13, v14, v15, v16, v12);
      }
    }

    else
    {
      v17 = [a1[44] nameForFeature:a2];
      MTLReportFailure(a3, "MTLValidateFeatureSupport", 7974, @"%@ is not supported on this device", v7, v8, v9, v10, v17);
    }
  }
}

void *MTLRangeAllocatorDeallocate(void *result, unint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = ((result[4] + a3) & ~result[4]) + a2;
  v6 = v5 - 1;
  v7 = *(result + 2);
  if (!v7)
  {
    LODWORD(v10) = 0;
LABEL_23:
    result = allocElement(result, v10);
    if (result)
    {
      v19 = (*v4 + 16 * v10);
      *v19 = a2;
      v19[1] = v6;
    }

    return result;
  }

  v8 = *result;
  v9 = **result;
  if (v9 < a2)
  {
    v10 = 0;
    v11 = v8 + 1;
    while (v7 - 1 != v10)
    {
      v9 = v11[1];
      v11 += 2;
      ++v10;
      if (v9 >= a2)
      {
        v12 = *(v11 - 2) + 1 >= a2;
        goto LABEL_9;
      }
    }

    if (*v11 + 1 >= a2)
    {
      v8 = *result;
LABEL_17:
      v14 = &v8[2 * (v7 - 1)];
      v16 = v14[1];
      v15 = v14 + 1;
      if (v6 > v16)
      {
        *v15 = v6;
      }

      return result;
    }

    LODWORD(v10) = *(result + 2);
    goto LABEL_23;
  }

  LODWORD(v10) = 0;
  v12 = 0;
LABEL_9:
  if (!v12)
  {
    if (v5 >= v9)
    {
      v13 = &v8[2 * v10];
      if (*v13 > a2)
      {
        *v13 = a2;
      }

      return result;
    }

    goto LABEL_23;
  }

  if (v5 < v9)
  {
    LODWORD(v7) = v10;
    goto LABEL_17;
  }

  v17 = v7 - 1;
  v18 = &v8[2 * v10];
  v8[2 * (v10 - 1) + 1] = v18[1];
  *(v4 + 2) = v17;

  return memmove(v18, v18 + 2, 16 * (v17 - v10));
}

void _MTLMessageContextPush_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!*(a1 + 40))
  {
    *(a1 + 40) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  }

  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 arguments:&a9];
  v13 = [[MTLMessage alloc] init:a2 message:v12];

  [*(a1 + 40) addObject:v13];
  if ((a2 & 0xC) != 0)
  {
    ++*a1;
  }
}

uint64_t MTLRangeAllocatorAllocate(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (a4)
    {
      v7 = a4 - 1;
      v8 = a1[4];
    }

    else
    {
      v8 = a1[4];
      v7 = v8;
    }

    v9 = *(a1 + 2);
    if (!v9)
    {
      return 0;
    }

    v10 = 0;
    v11 = (v8 + a2) & ~v8;
    v12 = *a1;
    for (i = 1; ; ++i)
    {
      v14 = (v12 + v10);
      v15 = *(v12 + v10);
      v16 = *(v12 + v10 + 8);
      v17 = (v15 + v7) & ~v7;
      v18 = v17 + v11;
      v19 = v17 + v11 - 1;
      if (v19 <= v16)
      {
        break;
      }

      v10 += 16;
      if (16 * v9 == v10)
      {
        return 0;
      }
    }

    if (v17 == v15)
    {
      if (v19 == v16)
      {
        *(a1 + 2) = v9 - 1;
        memmove(v14, (v12 + v10 + 16), 16 * (v9 - i));
      }

      else
      {
        *v14 = v18;
      }
    }

    else if (v19 == v16)
    {
      v14[1] = v17 - 1;
    }

    else
    {
      result = allocElement(a1, i);
      if (!result)
      {
        return result;
      }

      v20 = (*a1 + v10);
      v20[1] = v17 - 1;
      v20[2] = v18;
      v20[3] = v16;
    }

    *a3 = v17;
    return 1;
  }

  return result;
}

uint64_t _mtlValidateArgumentsForTextureViewOnDevice(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, char a9)
{
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  _MTLMessageContextBegin_(v70, "_mtlValidateArgumentsForTextureViewOnDevice", 1866, a1, 0, "Texture Creation");
  v17 = [a2 pixelFormat];
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  v66 = 0u;
  MTLPixelFormatGetInfoForDevice(a1, v17, &v66);
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  MTLPixelFormatGetInfoForDevice(a1, a3, &v62);
  if (a9)
  {
    if ((BYTE9(v66) & 4) == 0)
    {
      _MTLMessageContextPush_(v70, 4, @"source texture (%s) is not a compressed pixel format.", v18, v19, v20, v21, v22, v66);
    }

    if ((BYTE9(v62) & 4) != 0)
    {
      _MTLMessageContextPush_(v70, 4, @"texture view pixelFormat (%s) is a compressed pixel format.", v18, v19, v20, v21, v22, v66);
    }

    if (*(&v67 + 1) != *(&v63 + 1))
    {
      _MTLMessageContextPush_(v70, 4, @"source texture block size (%lu) does not match texture view pixel size (%lu)", v18, v19, v20, v21, v22, *(&v67 + 1));
    }
  }

  else if (v17 != a3)
  {
    if (!v67)
    {
      _MTLMessageContextPush_(v70, 4, @"source texture pixelFormat (%s) not castable.", v18, v19, v20, v21, v22, v66);
    }

    v23 = v63;
    if (!v63)
    {
      _MTLMessageContextPush_(v70, 4, @"texture view pixelFormat (%s) not castable.", v18, v19, v20, v21, v22, v62);
      v23 = v63;
    }

    if (v67 != v23)
    {
      _MTLMessageContextPush_(v70, 4, @"source texture pixelFormat (%s) not compatible with texture view pixelFormat (%s).", v18, v19, v20, v21, v22, v66);
    }
  }

  v29 = [a2 textureType];
  if (a4 >= 0xA)
  {
    _MTLMessageContextPush_(v70, 4, @"type (%lu) is not a valid MTLTextureType.", v24, v25, v26, v27, v28, a4);
  }

  if (v29 >= 0xA || a4 >= 0xA)
  {
    abort();
  }

  if (qword_185DE1D78[v29] == qword_185DE1D78[a4])
  {
    if (a6)
    {
      goto LABEL_21;
    }

LABEL_39:
    _MTLMessageContextPush_(v70, 4, @"newLevelRange.length must not be 0.", v24, v25, v26, v27, v28, v61);
    if (a8)
    {
      goto LABEL_22;
    }

    goto LABEL_40;
  }

  v45 = MTLTextureTypeString(v29);
  MTLTextureTypeString(a4);
  _MTLMessageContextPush_(v70, 4, @"source texture textureType (%@) not compatible with texture view textureType (%@).", v46, v47, v48, v49, v50, v45);
  if (!a6)
  {
    goto LABEL_39;
  }

LABEL_21:
  if (a8)
  {
    goto LABEL_22;
  }

LABEL_40:
  _MTLMessageContextPush_(v70, 4, @"newSliceRange.length must not be 0.", v24, v25, v26, v27, v28, v61);
LABEL_22:
  v30 = a5 + a6;
  if (v30 > [a2 mipmapLevelCount])
  {
    [a2 mipmapLevelCount];
    _MTLMessageContextPush_(v70, 4, @"(newLevelRange.location + newLevelRange.length)(%lu) must be <= [texture mipmapLevelCount](%lu).", v51, v52, v53, v54, v55, v30);
  }

  v31 = a7 + a8;
  v32 = [a2 numFaces];
  if (v31 > [a2 arrayLength] * v32)
  {
    _mtlValidateArgumentsForTextureViewOnDevice_cold_1(a2, v70, v31);
  }

  if (a4 - 5 >= 2)
  {
    v38 = 1;
  }

  else
  {
    v38 = 6;
  }

  if (a8 % v38)
  {
    _MTLMessageContextPush_(v70, 4, @"newSliceRange.length(%lu) must be a multiple of (%lu).", v33, v34, v35, v36, v37, a8);
  }

  if (((1 << a4) & 0x16A) == 0 && a8 != v38)
  {
    MTLTextureTypeString(a4);
    _MTLMessageContextPush_(v70, 4, @"newSliceRange.length(%lu) must equal (%lu) for textureType (%@).", v56, v57, v58, v59, v60, a8);
  }

  if ([a2 sampleCount] != 1 && (WORD4(v62) & 0x100) == 0)
  {
    _MTLMessageContextPush_(v70, 4, @"newPixelFormat(%s) must be MSAA capable to be used to view a texture with sampleCount(%lu).", v39, v40, v41, v42, v43, v62);
  }

  return _MTLMessageContextEnd(v70);
}

uint64_t allocElement(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 != v4 || (v6 = *(a1 + 24)) == 0)
  {
    if (*a1)
    {
      memmove((*a1 + 16 * a2 + 16), (*a1 + 16 * a2), 16 * (v4 - a2));
LABEL_11:
      ++*(a1 + 8);
      return 1;
    }

    v6 = *(a1 + 24);
  }

  v7 = v6 + v5;
  if (v6 + v5)
  {
    result = malloc_type_malloc(16 * v7, 0x1000040451B5BE8uLL);
    if (!result)
    {
      return result;
    }

    v9 = result;
    if (*a1)
    {
      memmove(result, *a1, 16 * a2);
      memmove((v9 + 16 * a2 + 16), (*a1 + 16 * a2), 16 * (*(a1 + 8) - a2));
      free(*a1);
    }

    *a1 = v9;
    *(a1 + 16) = v7;
    goto LABEL_11;
  }

  return 0;
}

MTLStructTypeInternal *newReturnValueFromArray(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if ((v2 - *a1) != 80)
  {
    goto LABEL_4;
  }

  if ((*(v1 + 55) & 0x8000000000000000) != 0)
  {
    if (*(v1 + 40))
    {
      goto LABEL_4;
    }
  }

  else if (*(v1 + 55))
  {
LABEL_4:
    __p = 0;
    v23 = 0;
    v24 = 0;
    if (v1 != v2)
    {
      v4 = (v1 + 32);
      do
      {
        v5 = [MTLStructMemberInternal alloc];
        v6 = v4;
        if (*(v4 + 23) < 0)
        {
          v6 = *v4;
        }

        v7 = -[MTLStructMemberInternal initWithName:offset:dataType:pixelFormat:aluType:indirectArgumentIndex:render_target:raster_order_group:details:](v5, "initWithName:offset:dataType:pixelFormat:aluType:indirectArgumentIndex:render_target:raster_order_group:details:", [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:4], 0, v4[4], 0, 0, 0, 0, 0, 0);
        v8 = v23;
        if (v23 >= v24)
        {
          v10 = (v23 - __p) >> 3;
          if ((v10 + 1) >> 61)
          {
            std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
          }

          v11 = (v24 - __p) >> 2;
          if (v11 <= v10 + 1)
          {
            v11 = v10 + 1;
          }

          if (v24 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&__p, v12);
          }

          v13 = (8 * v10);
          *v13 = v7;
          v9 = 8 * v10 + 8;
          v14 = v13 - (v23 - __p);
          memcpy(v14, __p, v23 - __p);
          v15 = __p;
          __p = v14;
          v23 = v9;
          v24 = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v23 = v7;
          v9 = (v8 + 8);
        }

        v23 = v9;
        v16 = v4 + 6;
        v4 += 10;
      }

      while (v16 != v2);
    }

    v17 = [MTLStructTypeInternal initWithMembers:"initWithMembers:count:" count:?];
    v18 = __p;
    if (__p != v23)
    {
      do
      {
      }

      while (v18 != v23);
      v18 = __p;
    }

    if (v18)
    {
      v23 = v18;
      operator delete(v18);
    }

    return v17;
  }

  v20 = [MTLType alloc];
  v21 = *(*a1 + 64);

  return [(MTLType *)v20 initWithDataType:v21];
}

void sub_185B9E560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLFragmentReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = v5;
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    v13 = *v12;
    if (v13 >= 7 && (!v12[3] ? (v14 = 0) : (v14 = (v7 + v12[3] + *(v7 + v12[3]))), v13 >= 9 && (v15 = v12[4]) != 0 && v14 && *v14))
    {
      v16 = &v14[*(v7 + v15 + *(v7 + v15) + 4)];
      v17 = AirReflection::Node::node_as_FragmentFunction((v16 + v16[1] + 4));
      memset(v44, 0, sizeof(v44));
      *__p = 0u;
      v39 = 0u;
      v41 = 1065353216;
      v37 = 2;
      LOBYTE(v38) = 0;
      v47 = 0u;
      v48 = 0u;
      v49 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v39, &v47);
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v47);
      std::deque<ContextStack>::push_back(v44, &v37);
      ContextStack::~ContextStack(&v37);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v21 = deserializeArguments(a2, v20, v14, v44, (a1 + 8), (*(a1 + 104) & 0x200000) == 0, (a1 + 48));
      v22 = (v7 - *v7);
      if (*v22 >= 0x1Du && (v23 = v22[14]) != 0)
      {
        v24 = (v7 + v23 + *(v7 + v23));
      }

      else
      {
        v24 = 0;
      }

      v25 = deserializeGlobalBindings(a2, v24, v44, v14, (a1 + 24));
      v26 = HIDWORD(v25);
      v27 = (v17 - *v17);
      if (*v27 >= 7u)
      {
        v28 = v27[3];
        if (v28)
        {
          v29 = (v17 + v28 + *(v17 + v28));
          *&v48 = 0;
          v30 = 0uLL;
          v47 = 0u;
          if (*v29)
          {
            v34 = HIDWORD(v25);
            v31 = 0;
            v32 = v29 + 1;
            do
            {
              v43 = 0;
              deserializeReturn(a2, v32, v14, v44, &v43, &v37);
              std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v47, &v37);
              if (v42 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v39) < 0)
              {
                operator delete(v38);
              }

              if (v43)
              {
                if (v43->super._type == 16)
                {
                  *(a1 + 128) = v43;
                  *(a1 + 136) = 1;
                }
              }

              ++v31;
              ++v32;
            }

            while (v31 < *v29);
            v30 = v47;
            v33 = v48;
            v26 = v34;
          }

          else
          {
            v33 = 0;
          }

          v35 = v30;
          v36 = v33;
          *&v48 = 0;
          v47 = 0uLL;
          *(a1 + 120) = newReturnValueFromArray(&v35);
          v37 = &v35;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v37);
          v37 = &v47;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v37);
        }
      }

      *(a1 + 16) = HIDWORD(v21);
      *(a1 + 32) = v26;
      *(a1 + 36) = v21;
      *(a1 + 40) = deserializeUserAnnotation<AirReflection::VertexFunction const*>(v14, v17);
      dispatch_release(v6);
      std::deque<ContextStack>::~deque[abi:ne200100](v44);
    }

    else
    {
      dispatch_release(v5);
    }
  }
}

void sub_185B9E904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void **);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](va);
  v13 = (v11 - 128);
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](va);
  std::deque<ContextStack>::~deque[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(uint64_t a1, unsigned int *a2)
{
  v3 = (a1 + 8);
  result = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__lower_bound<MTLLibraryIdentifier>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = *(result + 8);
  if (*a2 < v5)
  {
    return v3;
  }

  if (*a2 <= v5)
  {
    for (i = 0; i != 7; ++i)
    {
      v7 = a2[i + 1];
      v8 = *(result + i + 9);
      if (v7 < v8)
      {
        if (i <= 6)
        {
          return v3;
        }

        return result;
      }

      if (v7 > v8)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>(void *a1, unint64_t *a2)
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

void std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      MEMORY[0x1865FF1F0](v4, 0x1000C8077774924);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,MTLConstantStorage::ConstantData>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t MTLEnvVarAggregator::isInternalBuild(MTLEnvVarAggregator *this)
{
  if (this)
  {
    v1 = 1;
  }

  else
  {
    {
      MTLEnvVarAggregator::isInternalBuild(BOOL)::isInternalBuild = _MTLIsInternalBuild();
    }

    v1 = MTLEnvVarAggregator::isInternalBuild(BOOL)::isInternalBuild;
  }

  return v1 & 1;
}

void std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(uint64_t result, size_t __n)
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

      std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

uint64_t MTLLibraryData::release(MTLLibraryData *this)
{
  result = MTLAtomicDecrement(this + 20);
  if (this && !result)
  {
    v3 = *(*this + 8);

    return v3(this);
  }

  return result;
}

void MTLLibraryCache::releaseLibraryData(os_unfair_lock_s *this, MTLLibraryData *a2)
{
  os_unfair_lock_lock(this);
  MTLLibraryData::release(a2);

  os_unfair_lock_unlock(this);
}

_MTLLibrary *MTLLibraryBuilder::newLibraryWithFile(_MTLDevice **a1, _MTLDevice *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      MTLLibraryBuilder::newLibraryWithFile(isKindOfClass, v13, v14, v15, v16, v17, v18, v19, *v37.count);
    }
  }

  else
  {
    MTLLibraryBuilder::newLibraryWithFile(a1, a2, 0, a4, a5, a6, a7, a8, *v37.count);
  }

  if (a2)
  {
    objc_opt_class();
    v20 = objc_opt_isKindOfClass();
    if ((v20 & 1) == 0)
    {
      MTLLibraryBuilder::newLibraryWithFile(v20, v21, v22, v23, v24, v25, v26, v27, *v37.count);
    }
  }

  else
  {
    MTLLibraryBuilder::newLibraryWithFile(isKindOfClass, v13, v14, v15, v16, v17, v18, v19, *v37.count);
  }

  if ([objc_alloc_init(MEMORY[0x1E696AC08]) fileExistsAtPath:a3])
  {
    v28 = [a3 lengthOfBytesUsingEncoding:4];
    v29 = malloc_type_malloc(v28 + 1, 0x100004077774924uLL);
    if ([a3 getCString:v29 maxLength:v28 + 1 encoding:4])
    {
      v30 = _MTLGetLibrariesCache(a2);
      v31 = strlen(v29);
      *md = 0u;
      v42 = 0u;
      CC_SHA256_Init(&v37);
      CC_SHA256_Update(&v37, v29, v31);
      CC_SHA256_Final(md, &v37);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v39 = *md;
      v38[2] = ___ZN17MTLLibraryBuilder18newLibraryWithFileEPU19objcproto9MTLDevice11objc_objectP8NSStringPP7NSError_block_invoke;
      v38[3] = &unk_1E6EEBF68;
      v38[6] = a1;
      v38[7] = v29;
      v38[8] = v30;
      v40 = v42;
      v38[4] = a3;
      v38[5] = a2;
      v32 = MTLLibraryBuilder::newLibraryWithArchive(a1, md, a4, v38);
      if (!v29)
      {
        return v32;
      }

      goto LABEL_20;
    }

    if (a4)
    {
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"error while opening the library" forKey:*MEMORY[0x1E696A578]];
      v35 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v34];
      v32 = 0;
      *a4 = v35;
      if (!v29)
      {
        return v32;
      }

      goto LABEL_20;
    }

    v32 = 0;
    if (v29)
    {
LABEL_20:
      free(v29);
    }
  }

  else if (a4)
  {
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"library not found" forKey:*MEMORY[0x1E696A578]];
    v32 = 0;
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:6 userInfo:v33];
  }

  else
  {
    return 0;
  }

  return v32;
}

MTLLibraryData *___ZN17MTLLibraryBuilder18newLibraryWithFileEPU19objcproto9MTLDevice11objc_objectP8NSStringPP7NSError_block_invoke(uint64_t a1, void *a2)
{
  v4 = fopen(*(a1 + 56), "rb");
  if (v4)
  {
    fileno(v4);
    change_fdguard_np();
    operator new();
  }

  v5 = __error();
  v6 = strerror(*v5);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ___ZN17MTLLibraryBuilder18newLibraryWithFileEPU19objcproto9MTLDevice11objc_objectP8NSStringPP7NSError_block_invoke_cold_1(v6);
    if (!a2)
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"metal library file %s failed to open with error: %s", *(a1 + 56), v6];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:*MEMORY[0x1E696A578]];
    *a2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v8];
  }

  return 0;
}

uint64_t LibraryWithFile::LibraryWithFile(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v9 = [+[MTLLoader canonicalURL:](MTLLoader a5)];
  result = MTLLibraryDataWithArchive::MTLLibraryDataWithArchive(a1, a2, a3, v9);
  *a1 = &unk_1EF476ED0;
  a1[81] = a4;
  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

uint64_t LibraryWithFile::getFileSize(LibraryWithFile *this)
{
  v2 = MEMORY[0x1865FF870](*(this + 81));
  fseek(*(this + 81), 0, 2);
  v3 = MEMORY[0x1865FF870](*(this + 81));
  fseek(*(this + 81), v2, 0);
  return v3 - *(this + 30);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__find_equal<MTLLibraryIdentifier>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v8 = *a3;
    v6 = a3 + 1;
    v7 = v8;
    while (1)
    {
      while (1)
      {
        v9 = v4;
        v10 = *(v4 + 32);
        if (v7 >= v10)
        {
          break;
        }

LABEL_4:
        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_23;
        }
      }

      if (v7 <= v10)
      {
        v11 = 0;
        while (v11 != 7)
        {
          v12 = v6[v11];
          v13 = *(v9 + v11 + 9);
          if (v12 < v13)
          {
            if (v11 <= 6)
            {
              goto LABEL_4;
            }

            break;
          }

          ++v11;
          if (v12 > v13)
          {
            break;
          }
        }

        if (v7 <= v10)
        {
          break;
        }
      }

LABEL_20:
      result = v9 + 1;
      v4 = v9[1];
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    v14 = 0;
    while (v14 != 7)
    {
      v15 = *(v9 + v14 + 9);
      v16 = v6[v14];
      if (v15 < v16)
      {
        if (v14 > 6)
        {
          break;
        }

        goto LABEL_20;
      }

      ++v14;
      if (v15 > v16)
      {
        break;
      }
    }
  }

  else
  {
    v9 = result;
  }

LABEL_23:
  *a2 = v9;
  return result;
}

uint64_t *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__lower_bound<MTLLibraryIdentifier>(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  result = a4;
  if (a3)
  {
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    do
    {
      v8 = *(a3 + 8);
      if (v8 >= v6)
      {
        if (v8 <= v6)
        {
          v9 = 0;
          while (v9 != 7)
          {
            v10 = *(a3 + v9 + 9);
            v11 = v5[v9];
            if (v10 < v11)
            {
              v12 = v9 >= 7;
              v13 = v9 < 7;
              if (v12)
              {
                result = a3;
              }

              a3 += v13;
              goto LABEL_11;
            }

            ++v9;
            if (v10 > v11)
            {
              break;
            }
          }
        }

        result = a3;
      }

      else
      {
        ++a3;
      }

LABEL_11:
      a3 = *a3;
    }

    while (a3);
  }

  return result;
}

_MTLLibrary *MTLLibraryBuilder::newLibraryWithArchive(_MTLDevice **a1, __int128 *a2, void *a3, uint64_t a4)
{
  v17 = 0;
  v8 = MTLLibraryBuilder::findOrCreateLibraryContainer(a1, a2, &v17);
  v9 = v8;
  if ((v17 & 1) == 0)
  {
    dispatch_group_wait(*(v8 + 80), 0xFFFFFFFFFFFFFFFFLL);
    if (v9->var3)
    {
      v14 = [[_MTLLibrary alloc] initWithLibraryContainer:v9 device:a1[4]];
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_13;
  }

  v10 = _MTLGetLibrariesCache(a1[4]);
  v16 = 0;
  v11 = MTLLibraryCache::newLibraryData(v10, a2, &v16, a4);
  if (v11)
  {
    v12 = v11;
    v13 = objc_opt_new();
    MTLLibraryContainer::init(v9, v12, v13, 0, v16);
    if (v9->var3)
    {
      v14 = [[_MTLLibrary alloc] initWithLibraryContainer:v9 device:a1[4]];
    }

    else
    {
      v14 = 0;
    }

    (*(*v12 + 24))(v12);
LABEL_13:
    if (a3)
    {
      *a3 = [v9->var8 copy];
    }

    MTLLibraryBuilder::releaseCacheEntry(a1, v9);
    return v14;
  }

  MTLLibraryContainer::init(v9, 0, 0, 0, v16);
  if (a3)
  {
    *a3 = [v9->var8 copy];
  }

  MTLLibraryBuilder::releaseCacheEntry(a1, v9);
  return 0;
}

uint64_t _MTLGetLibrariesCache(_MTLDevice *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZL21_MTLGetLibrariesCacheP10_MTLDevice_block_invoke;
  block[3] = &unk_1E6EEA858;
  block[4] = a1;
  if (_MTLGetLibrariesCache(_MTLDevice *)::onceToken != -1)
  {
    dispatch_once(&_MTLGetLibrariesCache(_MTLDevice *)::onceToken, block);
  }

  return _MTLGetLibrariesCache(_MTLDevice *)::gLibrariesCache;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t MTLLibraryDataWithArchive::parseHeaderExtension(void *a1, uint64_t a2, uint64_t a3, NSError **a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4) != 1)
  {
    return 1;
  }

  if (*(a2 + 6) != 2)
  {
    return 1;
  }

  if (*(a2 + 8) < 3u)
  {
    return 1;
  }

  v4 = *(a2 + 24) + *(a2 + 32);
  if (v4 == -4)
  {
    return 1;
  }

  (*(*a1 + 360))(a1, v4 + 4);
  v15 = 0;
  while ((*(*a1 + 368))(a1, &v15, 4) == 4)
  {
    v8 = v15;
    v9 = bswap32(v15);
    v15 = v9;
    v14 = 0;
    if (v8 != 1413762629)
    {
      if ((*(*a1 + 368))(a1, &v14, 2) != 2)
      {
        break;
      }

      if (v15 > 1380733779)
      {
        if (v15 > 1431652675)
        {
          if (v15 == 1431652676)
          {
            if ((*(*a1 + 368))(a1, v16, 16) != 16)
            {
              break;
            }

            a1[17] = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v16];
            goto LABEL_33;
          }

          if (v15 != 1447842644)
          {
            goto LABEL_39;
          }

          if ((*(*a1 + 368))(a1, a3 + 32, 8) != 8)
          {
            goto LABEL_40;
          }

          v10 = (*(*a1 + 368))(a1, a3 + 40, 8);
        }

        else
        {
          if (v15 == 1380733780)
          {
            if ((*(*a1 + 368))(a1, a3 + 64, 8) != 8)
            {
              goto LABEL_40;
            }

            v10 = (*(*a1 + 368))(a1, a3 + 72, 8);
            goto LABEL_32;
          }

          if (v15 != 1397510996)
          {
            goto LABEL_39;
          }

          if ((*(*a1 + 368))(a1, a3 + 80, 8) != 8)
          {
            goto LABEL_40;
          }

          v10 = (*(*a1 + 368))(a1, a3 + 88, 8);
        }
      }

      else
      {
        if (v15 > 1213420098)
        {
          if ((v15 - 1213420099) < 2)
          {
            if ((*(*a1 + 368))(a1, a3, 8) != 8 || (*(*a1 + 368))(a1, a3 + 8, 8) != 8)
            {
              break;
            }

            goto LABEL_33;
          }

          if (v15 == 1229738836)
          {
            if ((*(*a1 + 368))(a1, a3 + 48, 8) != 8)
            {
              goto LABEL_40;
            }

            v10 = (*(*a1 + 368))(a1, a3 + 56, 8);
            goto LABEL_32;
          }

LABEL_39:
          v11 = (*(*a1 + 392))(a1);
          if (((*(*a1 + 360))(a1, v11 + v14) & 1) == 0)
          {
LABEL_40:
            generateNSError(a4, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_InvalidLibrary_1.isa);
            return 0;
          }

LABEL_33:
          v9 = v15;
          goto LABEL_34;
        }

        if (v15 != 1212438862)
        {
          if (v15 == 1162757204)
          {
            return 1;
          }

          goto LABEL_39;
        }

        if ((*(*a1 + 368))(a1, a3 + 16, 8) != 8)
        {
          goto LABEL_40;
        }

        v10 = (*(*a1 + 368))(a1, a3 + 24, 8);
      }

LABEL_32:
      if (v10 != 8)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    }

LABEL_34:
    if (v9 == 1162757204)
    {
      return 1;
    }
  }

  if (a4)
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v13];
  }

  return 0;
}

uint64_t std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__emplace_unique_key_args<MTLLibraryIdentifier,std::piecewise_construct_t const&,std::tuple<MTLLibraryIdentifier&&>,std::tuple<>>(uint64_t **a1, unsigned int *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__find_equal<MTLLibraryIdentifier>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void MTLLibraryBuilder::releaseCacheEntry(os_unfair_lock_s *this, MTLLibraryContainer *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this);
  if (!MTLAtomicDecrement(&a2->var1))
  {
    v4 = *&a2->var2.var0[16];
    v6[0] = *a2->var2.var0;
    v6[1] = v4;
    v5 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(&this[2], v6);
    if (&this[4] != v5)
    {
      std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__remove_node_pointer(&this[2], v5);
      operator delete(v5);
    }

    MTLLibraryContainer::~MTLLibraryContainer(a2);
    MEMORY[0x1865FF210]();
  }

  os_unfair_lock_unlock(this);
}

uint64_t _MTLGetMTLCompilerLLVMVersionForDevice(void *a1)
{
  if (_MTLIsInternalBuild() && getForcedMTLCompilerLLVMVersion(void)::forcedLLVMVersionOnceToken != -1)
  {
    _MTLGetMTLCompilerLLVMVersionForDevice();
  }

  result = getForcedMTLCompilerLLVMVersion(void)::forcedLLVMVersion;
  if (!getForcedMTLCompilerLLVMVersion(void)::forcedLLVMVersion)
  {
    if (_MTLIsInternalBuild() && _MTLGetMTLCompilerLLVMVersionForDevice(objc_object  {objcproto9MTLDevice}*)::deviceLLVMVersionOnceToken != -1)
    {
      _MTLGetMTLCompilerLLVMVersionForDevice();
    }

    if (_MTLGetMTLCompilerLLVMVersionForDevice(objc_object  {objcproto9MTLDevice}*)::useDeviceForLLVMVersion == 1)
    {
      LODWORD(result) = [a1 llvmVersion];
      if (result <= 32023)
      {
        return 32023;
      }

      else
      {
        return result;
      }
    }

    else if ([a1 featureProfile] >= 8)
    {

      return getMaxSupportedLLVMVersion(0);
    }

    else
    {
      return 32023;
    }
  }

  return result;
}

BOOL validateAIRVersion(int a1, unsigned int a2)
{
  if (a1 > 131073)
  {
    if (a1 <= 131076)
    {
      if (a1 == 131074)
      {
        v5 = 131073;
      }

      else if (a1 == 131075)
      {
        v5 = 131074;
      }

      else
      {
        v5 = 131075;
      }
    }

    else if (a1 > 131078)
    {
      if (a1 == 131079)
      {
        v5 = 131078;
      }

      else
      {
        if (a1 != 131080)
        {
          return 0;
        }

        v5 = 131079;
      }
    }

    else if (a1 == 131077)
    {
      v5 = 131076;
    }

    else
    {
      v5 = 131077;
    }

    v3 = a2 >= v5;
    v4 = a2 == v5;
    return !v4 && v3;
  }

  v2 = 1;
  if (((a1 - 65542) > 5 || a1 == 65543) && a1 != 0x20000)
  {
    if (a1 == 131073)
    {
      v3 = a2 >= 0x20000;
      v4 = a2 == 0x20000;
      return !v4 && v3;
    }

    return 0;
  }

  return v2;
}

BOOL validateLanguageVersion(int a1, unsigned int a2)
{
  if (a1 > 131075)
  {
    if (a1 < 196608)
    {
      if (a1 != 131076)
      {
        if (a1 == 131077)
        {
          return HIWORD(a2) > 2u;
        }

        v4 = 131078;
LABEL_15:
        if (a1 == v4)
        {
          return a2 > 0x30000;
        }

        return 0;
      }

      v5 = 131075;
    }

    else
    {
      v4 = 196609;
      if (a1 <= 196609)
      {
        if (a1 == 196608)
        {
          return HIWORD(a2) > 2u;
        }

        goto LABEL_15;
      }

      if (a1 != 196610)
      {
        if (a1 == 0x40000)
        {
          return (a2 & 0xFFFC0000) != 0;
        }

        return 0;
      }

      v5 = 196609;
    }

    return a2 > v5;
  }

  v2 = 1;
  if (a1 < 0x20000)
  {
    if ((a1 - 0x10000) < 3)
    {
      return v2;
    }

    return 0;
  }

  if (a1 > 131073)
  {
    if (a1 == 131074)
    {
      v5 = 131073;
    }

    else
    {
      v5 = 131074;
    }

    return a2 > v5;
  }

  if (a1 == 0x20000)
  {
    return v2;
  }

  return a2 > 0x20000;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,unsigned long long>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,unsigned long long>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_28;
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
LABEL_28:
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
      goto LABEL_28;
    }

LABEL_27:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (v9[2] != *a2 || v9[3] != a2[1] || v9[4] != a2[2] || v9[5] != a2[3])
  {
    goto LABEL_27;
  }

  return v9;
}

uint64_t MTLLibraryCache::newLibraryData(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1);
  v8 = a2[1];
  v14 = *a2;
  v15 = v8;
  v9 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(a1 + 8, &v14);
  if ((a1 + 16) == v9)
  {
    v10 = (*(a4 + 16))(a4, a3);
    if (v10)
    {
      v11 = a2[1];
      v14 = *a2;
      v15 = v11;
      v13 = &v14;
      *(std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::__emplace_unique_key_args<MTLLibraryIdentifier,std::piecewise_construct_t const&,std::tuple<MTLLibraryIdentifier&&>,std::tuple<>>((a1 + 8), &v14, &std::piecewise_construct, &v13) + 64) = v10;
    }
  }

  else
  {
    v10 = v9[8];
    (*(*v10 + 16))(v10);
  }

  os_unfair_lock_unlock(a1);
  return v10;
}

uint64_t MTLLibraryDataWithArchive::MTLLibraryDataWithArchive(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v7 = MTLLibraryData::MTLLibraryData(a1, a3);
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 144) = a2;
  *v7 = &unk_1EF4765A8;
  *(v7 + 240) = 0u;
  *(v7 + 256) = 0u;
  *(v7 + 272) = 0u;
  *(v7 + 288) = 0u;
  *(v7 + 304) = 0;
  *(v7 + 312) = 1065353216;
  *(v7 + 320) = 0u;
  *(v7 + 336) = 0u;
  *(v7 + 352) = 1065353216;
  *(v7 + 360) = 0u;
  *(v7 + 376) = 0u;
  *(v7 + 392) = 1065353216;
  *(v7 + 408) = 0;
  *(v7 + 416) = 0;
  *(v7 + 400) = v7 + 408;
  *(v7 + 424) = 0u;
  *(v7 + 440) = 0u;
  *(v7 + 456) = 0u;
  *(v7 + 472) = 1065353216;
  *(v7 + 480) = 0u;
  *(v7 + 496) = 0u;
  *(v7 + 512) = 1065353216;
  *(v7 + 616) = 0;
  *(v7 + 620) = 0;
  *(v7 + 632) = 0;
  *(v7 + 640) = a4;
  v8 = a4;
  return a1;
}

void sub_185BA0E80(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v1 + 480);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v1 + 440);
  v4 = *(v1 + 432);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(v1 + 400, *(v1 + 408));
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table(v2);
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v1 + 320);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::~__hash_table((v1 + 280));
  MTLCachedLibraryData::~MTLCachedLibraryData(v1);
  _Unwind_Resume(a1);
}

uint64_t MTLLibraryDataWithArchive::parseArchive(MTLLibraryData *a1, NSError **a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = MTLLibraryData::mutex(a1);
  os_unfair_lock_lock(v8);
  v9 = MTLLibraryDataWithArchive::parseArchiveSync(a1, a2, v5, a4);
  os_unfair_lock_unlock(v8);
  return v9;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

uint64_t MTLLibraryDataWithArchive::parseArchiveSync(MTLLibraryDataWithArchive *a1, NSError **a2, int a3, void *a4)
{
  v76 = a3;
  v95 = *MEMORY[0x1E69E9840];
  (*(*a1 + 360))(a1, 0);
  v7 = [a4 featureProfile];
  if ((*(*a1 + 368))(a1, &v86, 8) != 8)
  {
    if (a2)
    {
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
      v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v15];
LABEL_112:
      v61 = 0;
      *a2 = v16;
      return v61;
    }

    return 0;
  }

  if (v86 >> 1 != 1599962981)
  {
    goto LABEL_24;
  }

  if (_MTLGetMTLCompilerLLVMVersionForDevice(a4) - 32023 >= 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 131080;
  }

  if (!v87)
  {
LABEL_32:
    if (a2)
    {
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Fat library file but no AIR slice" forKey:*MEMORY[0x1E696A578]];
      v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v22];
      goto LABEL_112;
    }

    return 0;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = bswap32(v87);
  if (v12 <= 1)
  {
    v12 = 1;
  }

  v13 = -v12;
  do
  {
    ++v11;
    while (1)
    {
      if ((*(*a1 + 368))(a1, &v89, 20) != 20)
      {
        if (a2)
        {
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
          *a2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v17];
        }

        return 0;
      }

      if (v89 == 385875969)
      {
        v14 = bswap32(DWORD1(v89));
        if (v14 <= v8 && (v10 & (v14 <= v9)) == 0)
        {
          break;
        }
      }

      ++v11;
      if (v13 + v11 == 1)
      {
        if (v10)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }
    }

    *(a1 + 30) = bswap32(DWORD2(v89));
    v10 = 1;
    v9 = v14;
  }

  while (v13 + v11);
LABEL_24:
  (*(*a1 + 360))(a1, 0);
  v18 = (*(*a1 + 368))(a1, a1 + 152, 88);
  v19 = (*(*a1 + 376))(a1);
  v20 = v18 == 88 && *(a1 + 38) == 1112298573;
  if (!v20 || *(a1 + 21) > v19)
  {
    if (a2)
    {
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file" forKey:*MEMORY[0x1E696A578]];
      v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v21];
      goto LABEL_112;
    }

    return 0;
  }

  v23 = *(a1 + 78);
  *(a1 + 78) = v23 & 0x7FFF;
  if ((v23 & 0x7FFF) == 0)
  {
LABEL_37:
    if (a2)
    {
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"This version of metallib is too old and not supported any longer." forKey:*MEMORY[0x1E696A578]];
      v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v25];
      goto LABEL_112;
    }

    return 0;
  }

  if ((v23 & 0x7FFF) != 1)
  {
    goto LABEL_110;
  }

  v24 = *(a1 + 79);
  if (v24 <= 1)
  {
    goto LABEL_37;
  }

  if (v24 != 2)
  {
LABEL_110:
    if (a2)
    {
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"This version of metallib is too recent and not supported." forKey:*MEMORY[0x1E696A578]];
      v16 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v60];
      goto LABEL_112;
    }

    return 0;
  }

  v85 = 0;
  (*(*a1 + 360))(a1, *(a1 + 22));
  if ((*(*a1 + 368))(a1, &v85, 4) != 4)
  {
    generateNSError(a2, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_InvalidLibrary_1.isa);
    return 0;
  }

  v26 = 0uLL;
  memset(v83, 0, sizeof(v83));
  v84 = 1065353216;
  v82[1] = 0;
  v82[0] = 0;
  v81 = v82;
  if (!v85)
  {
    v59 = 0;
    goto LABEL_117;
  }

  v74 = 0;
  v73 = 0;
  v75 = 0;
  v27 = 0;
  v71 = v23;
  while (2)
  {
    v80 = (*(*a1 + 392))(a1);
    v79 = 0;
    v28 = (*(*a1 + 368))(a1, &v79, 4);
    v72 = v27;
    if (v28 != 4)
    {
      if (!a2)
      {
        goto LABEL_137;
      }

      goto LABEL_128;
    }

    v29 = 0;
    v30 = 0;
    v78 = 0;
    v77 = 0;
    do
    {
      v31 = (*(*a1 + 368))(a1, &v78, 4);
      if (v31 != 4)
      {
LABEL_131:
        generateNSError(a2, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_InvalidLibrary_1.isa);
        goto LABEL_137;
      }

      v32 = v78;
      v33 = bswap32(v78);
      v78 = v33;
      if (((v32 == 1413762629) & v30) != 0)
      {
        break;
      }

      if (v32 != 1413762629)
      {
        v31 = (*(*a1 + 368))(a1, &v77, 2);
        if (v31 != 2)
        {
          goto LABEL_131;
        }

        v33 = v78;
      }

      if (v33 <= 1397769032)
      {
        if (v33 <= 1212240711)
        {
          if (v33 == 1095518547)
          {
            v36 = v29;
            v37 = v77;
            MEMORY[0x1EEE9AC00](v31);
            v39 = &v70[-v38];
            if ((*(*a1 + 368))(a1, &v70[-v38], v37) == v37)
            {
              if (!v39[v37 - 1])
              {
                v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v39];
                if (!v40)
                {
                  goto LABEL_136;
                }

LABEL_85:

                v51 = v80;
                std::string::basic_string[abi:ne200100]<0>(&v89, v39);
                v88 = &v89;
                std::__hash_table<std::__hash_value_type<std::string,unsigned long long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 35, &v89, &std::piecewise_construct, &v88)[5] = v51;
                if (SBYTE7(v90) < 0)
                {
                  operator delete(v89);
                }

                v29 = v36 | 1u;
                goto LABEL_106;
              }

              v66 = @"Non zero terminated function name!";
            }

            else
            {
              v66 = @"Invalid library file (unexpected end of file)";
            }

LABEL_134:
            generateNSError(a2, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &v66->isa);
            goto LABEL_137;
          }

          if (v33 == 1162757204)
          {
            goto LABEL_106;
          }
        }

        else
        {
          if (v33 == 1212240712)
          {
            if ((*(*a1 + 368))(a1, &v89, 32) != 32)
            {
              goto LABEL_131;
            }

            v43 = v80;
            v88 = &v89;
            v29 = v29 | 4;
            std::__hash_table<std::__hash_value_type<MTLUINT256_t,unsigned long long>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,unsigned long long>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a1 + 40, &v89, &std::piecewise_construct, &v88)[6] = v43;
            goto LABEL_106;
          }

          if (v33 == 1312902469)
          {
            v36 = v29;
            v49 = v77;
            MEMORY[0x1EEE9AC00](v31);
            v39 = &v70[-v50];
            if ((*(*a1 + 368))(a1, &v70[-v50], v49) == v49)
            {
              if (!v39[v49 - 1])
              {
                v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v39];
                if (!v40)
                {
LABEL_136:
                  generateNSError(a2, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, [MEMORY[0x1E696AEC0] stringWithFormat:@"Corrupted function name: %@!", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s", v39)]);
                  goto LABEL_137;
                }

                goto LABEL_85;
              }

              v66 = @"Non zero terminated function name!";
            }

            else
            {
              v66 = @"Invalid library file (unexpected end of file)";
            }

            goto LABEL_134;
          }
        }

        goto LABEL_88;
      }

      if (v33 <= 1398031176)
      {
        if (v33 == 1397769033)
        {
          v41 = malloc_type_malloc(v77, 0x100004077774924uLL);
          v42 = (*(*a1 + 368))(a1, v41, v77);
          if (v42 != v77)
          {
            goto LABEL_131;
          }

          MTLLibraryDataWithArchive::decodeSPCIToken(a1, v83, v41, v77, v80);
          free(v41);
          goto LABEL_106;
        }

        if (v33 == 1398031173)
        {
          v35 = (*(*a1 + 392))(a1);
          if (!(*(*a1 + 360))(a1, v35 + v77))
          {
            goto LABEL_131;
          }

LABEL_68:
          LOBYTE(v89) = 0;
          if ((*(*a1 + 368))(a1, &v89, 1) == 1)
          {
            v73 |= v89 != 5;
            v74 |= v89 == 5;
            v29 = v29 | 2;
            goto LABEL_106;
          }

          if (!a2)
          {
            goto LABEL_137;
          }

LABEL_128:
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
          *a2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v65];
          goto LABEL_137;
        }

LABEL_88:
        v52 = (*(*a1 + 392))(a1);
        if (((*(*a1 + 360))(a1, v52 + v77) & 1) == 0)
        {
          goto LABEL_131;
        }

        goto LABEL_106;
      }

      if (v33 == 1398031177)
      {
        v44 = malloc_type_malloc(v77, 0x100004077774924uLL);
        v45 = (*(*a1 + 368))(a1, v44, v77);
        if (v45 != v77)
        {
          goto LABEL_131;
        }

        v46 = v29;
        MTLLibraryDataWithArchive::decodeSTCIToken(&v89, v44, v77);
        v88 = &v80;
        v47 = std::__tree<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v81, &v80, &std::piecewise_construct, &v88);
        v48 = *(&v89 + 1);
        v47[5] = v89;
        std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(v47 + 6, v48, v90, (v90 - v48) >> 5);
        free(v44);
        if (v48)
        {
          operator delete(v48);
        }

        v29 = v46;
        goto LABEL_106;
      }

      if (v33 == 1415139397)
      {
        goto LABEL_68;
      }

      if (v33 != 1447383635)
      {
        goto LABEL_88;
      }

      if (v75)
      {
        v34 = (*(*a1 + 392))(a1);
        if (((*(*a1 + 360))(a1, v34 + v77) & 1) == 0)
        {
          goto LABEL_131;
        }

        v75 = 1;
      }

      else
      {
        if ((*(*a1 + 368))(a1, &v89, 8) != 8)
        {
          goto LABEL_131;
        }

        if (dyld_program_sdk_at_least())
        {
          v53 = v29;
          v54 = _MTLGetMTLCompilerLLVMVersionForDevice(a4) - 32023;
          v55 = WORD2(v89);
          v56 = WORD3(v89);
          if (!validateLanguageVersion(WORD3(v89) | (WORD2(v89) << 16), (v54 < 2) << 18))
          {
            v67 = "OS";
            if (v7 < 8)
            {
              v67 = "device";
            }

            v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This library is using language version %u.%u which is not supported on this %s.", v55, v56, v67];
LABEL_147:
            generateNSError(a2, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, v68);
            goto LABEL_137;
          }

          if (v54 >= 2)
          {
            v57 = 0;
          }

          else
          {
            v57 = 131080;
          }

          v29 = WORD1(v89) | (v89 << 16);
          if (!validateAIRVersion(WORD1(v89) | (v89 << 16), v57))
          {
            v69 = "OS";
            if (v7 < 8)
            {
              v69 = "device";
            }

            v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This library is using a deployment target (0x%08X) that is not supported on this %s.", v29, v69];
            goto LABEL_147;
          }
        }

        else
        {
          v53 = v29;
          LODWORD(v29) = WORD1(v89) | (v89 << 16);
        }

        *(a1 + 155) = v29;
        v58 = _os_feature_enabled_impl();
        v29 = v53;
        if (v76)
        {
          if (v58)
          {
            if (v71 < 0)
            {
              goto LABEL_143;
            }
          }

          else if (v71 < 0 && *(a1 + 155) <= 0x20003u)
          {
LABEL_143:
            generateNSError(a2, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_ThisLibraryFor.isa);
            goto LABEL_137;
          }
        }

        v75 = 1;
      }

LABEL_106:
      v30 |= v75 & (v29 == 7);
    }

    while (v78 != 1162757204);
    (*(*a1 + 360))(a1, v80 + v79);
    v27 = v72 + 1;
    if (v72 + 1 < v85)
    {
      continue;
    }

    break;
  }

  v59 = v74;
  v26 = 0uLL;
  if (v73 & v74)
  {
    generateNSError(a2, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_LibraryWithBot.isa);
    goto LABEL_137;
  }

LABEL_117:
  *(a1 + 616) = v59 & 1;
  *(a1 + 520) = v26;
  *(a1 + 536) = v26;
  *(a1 + 552) = v26;
  *(a1 + 568) = v26;
  *(a1 + 584) = v26;
  *(a1 + 600) = v26;
  v63 = *(a1 + 200);
  v91 = *(a1 + 184);
  v92 = v63;
  v93 = *(a1 + 216);
  v94 = *(a1 + 29);
  v64 = *(a1 + 168);
  v89 = *(a1 + 152);
  v90 = v64;
  if (MTLLibraryDataWithArchive::parseHeaderExtension(a1, &v89, a1 + 520, a2) && MTLLibraryDataWithArchive::parseDynamicHeaderSection(a1, a2) && MTLLibraryDataWithArchive::parseImportedSymbolListSection(a1, a2) && MTLLibraryDataWithArchive::parseVariableListSection(a1, a2) && MTLLibraryDataWithArchive::generateHashForSpecializedFunctionScripts(a1, v83, a2) && MTLLibraryDataWithArchive::parseStitchingScript(a1, &v81, a2))
  {
    v61 = MTLLibraryDataWithArchive::parseScriptSection(a1, a2);
    goto LABEL_138;
  }

LABEL_137:
  v61 = 0;
LABEL_138:
  std::__tree<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>>>::destroy(&v81, v82[0]);
  std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::~__hash_table(v83);
  return v61;
}

void sub_185BA28D0(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>>>::destroy(v1 - 280, *(v1 - 272));
  std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::~__hash_table((v1 - 256));
  _Unwind_Resume(a1);
}

uint64_t MTLLibraryDataWithArchive::parseDynamicHeaderSection(MTLLibraryDataWithArchive *this, NSError **a2)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!*(this + 68))
  {
    return 1;
  }

  (*(*this + 360))(this, *(this + 67));
  v47 = 0;
  if ((*(*this + 368))(this, &v47, 4) != 4)
  {
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      MTLLibraryDataWithArchive::parseDynamicHeaderSection(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  v4 = v47;
  v47 = bswap32(v47);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (v4 == 1413762629)
  {
    v5 = 0;
LABEL_5:
    v6 = 1;
    if (v5)
    {
      goto LABEL_38;
    }

    return v6;
  }

  do
  {
    v43 = 0;
    if ((*(*this + 368))(this, &v43, 2) != 2)
    {
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v23)
      {
LABEL_30:
        MTLLibraryDataWithArchive::parseDynamicHeaderSection(v23, v24, v25, v26, v27, v28, v29, v30);
      }

LABEL_36:
      v6 = 0;
      goto LABEL_37;
    }

    if (v47 == 1312902469)
    {
      v18 = v43;
      MEMORY[0x1EEE9AC00](2);
      v20 = &v41 - v19;
      if ((*(*this + 368))(this, &v41 - v19, v18) != v18)
      {
        v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!v23)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v18)
      {
        *(this + 12) = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v20];
      }
    }

    else if (v47 == 1146703436)
    {
      v15 = v43;
      MEMORY[0x1EEE9AC00](2);
      v17 = &v41 - v16;
      if ((*(*this + 368))(this, &v41 - v16, v15) != v15)
      {
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v31)
        {
          MTLLibraryDataWithArchive::parseDynamicHeaderSection(v31, v32, v33, v34, v35, v36, v37, v38);
        }

        goto LABEL_36;
      }

      v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](&v44, &v42);
    }

    else
    {
      v21 = (*(*this + 392))(this);
      if (((*(*this + 360))(this, v21 + v43) & 1) == 0)
      {
        if (a2)
        {
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
          *a2 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v39];
        }

        goto LABEL_36;
      }
    }

    if ((*(*this + 368))(this, &v47, 4) != 4)
    {
      v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        goto LABEL_30;
      }

      goto LABEL_36;
    }

    v22 = v47;
    v47 = bswap32(v47);
  }

  while (v22 != 1413762629);
  v5 = v44;
  if (v45 == v44)
  {
    goto LABEL_5;
  }

  *(this + 13) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
  v6 = 1;
LABEL_37:
  v5 = v44;
  if (v44)
  {
LABEL_38:
    v45 = v5;
    operator delete(v5);
  }

  return v6;
}

void sub_185BA2E78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 120);
  if (v3)
  {
    *(v1 - 112) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLLibraryBuilder::findOrCreateLibraryContainer(os_unfair_lock_s *a1, __int128 *a2, char *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1);
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = std::__tree<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::__map_value_compare<MTLLibraryIdentifier,std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>,std::less<MTLLibraryIdentifier>,true>,std::allocator<std::__value_type<MTLLibraryIdentifier,MTLLibraryData *>>>::find<MTLLibraryIdentifier>(&a1[2], v10);
  if (&a1[4] == v7 || (v8 = v7[8]) == 0)
  {
    operator new();
  }

  MTLAtomicIncrement((v8 + 8));
  *a3 = 0;
  os_unfair_lock_unlock(a1);
  return v8;
}

uint64_t MTLLibraryData::MTLLibraryData(uint64_t result, __int128 *a2)
{
  *result = &unk_1EF474A58;
  v2 = 0uLL;
  *(result + 40) = 0u;
  *(result + 56) = 0u;
  *(result + 72) = 1065353216;
  *(result + 84) = 0;
  *(result + 88) = 0;
  atomic_store(1u, (result + 80));
  if (a2)
  {
    v2 = *a2;
    *(result + 24) = a2[1];
  }

  else
  {
    *(result + 24) = 0uLL;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t getMaxSupportedLLVMVersion(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___Z26getMaxSupportedLLVMVersionb_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v3 = a1;
  if (getMaxSupportedLLVMVersion(BOOL)::onceToken != -1)
  {
    dispatch_once(&getMaxSupportedLLVMVersion(BOOL)::onceToken, block);
  }

  return getMaxSupportedLLVMVersion(BOOL)::llvmVersion;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

uint64_t MTLLibraryDataWithArchive::parseStitchingScript(void *a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a1[76])
  {
    return 1;
  }

  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
    return 1;
  }

  while (1)
  {
    v7 = v4[4];
    v18 = v4[5];
    v20 = 0;
    v21 = 0;
    v19 = 0;
    std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(&v19, v4[6], v4[7], (v4[7] - v4[6]) >> 5);
    (*(*a1 + 360))(a1, v18 + a1[75]);
    v17 = 0;
    v16 = 0;
    if (((*(*a1 + 384))(a1, &v17, &v16, a3) & 1) == 0)
    {
      break;
    }

    v8 = v17;
    v9 = *v17;
    v15 = 0;
    __p = 0uLL;
    std::vector<MTLUINT256_t>::__init_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(&__p, v19, v20, (v20 - v19) >> 5);
    MTLCalculateStitchingHash(&v8[v9], &__p, v23);
    v22 = v23;
    std::__hash_table<std::__hash_value_type<MTLUINT256_t,unsigned long long>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,unsigned long long>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t&&>,std::tuple<>>(a1 + 60, v23, &std::piecewise_construct, &v22)[6] = v7;
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    free(v17);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    v10 = v4[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v4[2];
        v12 = *v11 == v4;
        v4 = v11;
      }

      while (!v12);
    }

    v4 = v11;
    if (v11 == v3)
    {
      return 1;
    }
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  return 0;
}

void sub_185BA33B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,std::vector<std::pair<unsigned long long,unsigned long long>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[6];
      if (v4)
      {
        v2[7] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t MTLLibraryDataWithArchive::parseVariableListSection(MTLLibraryDataWithArchive *this, NSError **a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!*(this + 70))
  {
    return 1;
  }

  (*(*this + 360))(this, *(this + 69));
  v34 = 0;
  if ((*(*this + 368))(this, &v34, 4) != 4)
  {
    if (a2)
    {
      v15 = MEMORY[0x1E695DF20];
      v16 = *MEMORY[0x1E696A578];
      v17 = @"Invalid metallib file, unexpected end of file while parsing the variable list";
      goto LABEL_35;
    }

    return 0;
  }

  v28 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v34];
  if (!v34)
  {
    goto LABEL_30;
  }

  v5 = 0;
  while (2)
  {
    v33 = 0;
    if ((*(*this + 368))(this, &v33, 4) != 4)
    {
LABEL_36:
      v20 = v28;
      if (v28)
      {
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metallib file forKey:{unexpected end of file while parsing the variable list", *MEMORY[0x1E696A578]}];
        *v20 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v21];
      }

      return 0;
    }

    v6 = 0;
    v32 = 0;
    v31 = 0;
    do
    {
      if ((*(*this + 368))(this, &v32, 4) != 4)
      {
        goto LABEL_36;
      }

      v7 = v32;
      v32 = bswap32(v32);
      if (v7 == 1413762629)
      {
        break;
      }

      if ((*(*this + 368))(this, &v31, 2) != 2)
      {
        goto LABEL_36;
      }

      if (v32 <= 1312902468)
      {
        if (v32 == 1212240712)
        {
          if ((*(*this + 368))(this, v36, 32) != 32)
          {
            goto LABEL_36;
          }

          goto LABEL_27;
        }

        if (v32 == 1296323418)
        {
          if ((*(*this + 368))(this, v37, 8) != 8)
          {
            goto LABEL_36;
          }

          goto LABEL_27;
        }
      }

      else
      {
        switch(v32)
        {
          case 1447383635:
            if ((*(*this + 368))(this, &v29, 8) != 8)
            {
              goto LABEL_36;
            }

            v38 = v29;
            *(this + 155) = WORD1(v29) | (v29 << 16);
            goto LABEL_27;
          case 1330005588:
            if ((*(*this + 368))(this, &v29, 24) != 24)
            {
              goto LABEL_36;
            }

            *&v37[8] = v29;
            v36[4] = v30;
            goto LABEL_27;
          case 1312902469:
            v8 = v4;
            v9 = v31;
            MEMORY[0x1EEE9AC00](2);
            v11 = &v27 - v10;
            if ((*(*this + 368))(this, &v27 - v10, v9) == v9)
            {
              v35 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
              v4 = v8;
              [v8 addObject:v35];
              goto LABEL_27;
            }

            v23 = v28;
            if (v28)
            {
              v24 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metallib file forKey:{unexpected end of file while parsing the variable list", *MEMORY[0x1E696A578]}];
              *v23 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v24];
            }

            return 0;
        }
      }

      v12 = (*(*this + 392))(this);
      if (((*(*this + 360))(this, v12 + v31) & 1) == 0)
      {
        v25 = @"Invalid library file (unexpected end of file)";
        v26 = v28;
LABEL_46:
        generateNSError(v26, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &v25->isa);
        return 0;
      }

LABEL_27:
      ++v6;
    }

    while (v32 != 1162757204);
    if (!v6)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to parse variable list, no tokens read"];
      v26 = v28;
      goto LABEL_46;
    }

    if (++v5 < v34)
    {
      continue;
    }

    break;
  }

LABEL_30:
  v13 = [v4 count];
  if (v34 == v13)
  {
    *(this + 15) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4];
    return 1;
  }

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to parse the variable list, expected %u variables, found only %u", v34, v13];
  a2 = v28;
  if (!v28)
  {
    return 0;
  }

  v17 = v22;
  v15 = MEMORY[0x1E695DF20];
  v16 = *MEMORY[0x1E696A578];
LABEL_35:
  v18 = [v15 dictionaryWithObject:v17 forKey:v16];
  v19 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v18];
  result = 0;
  *a2 = v19;
  return result;
}

uint64_t MTLLibraryDataWithArchive::generateHashForSpecializedFunctionScripts(void *a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a1[76])
  {
    return 1;
  }

  v5 = a1[50];
  v6 = a1 + 51;
  if (v5 == a1 + 51)
  {
LABEL_10:
    for (i = *(a2 + 16); i; i = *i)
    {
      v13 = i[6];
      if (i[7] != v13)
      {
        v14 = 0;
        v15 = 1;
        do
        {
          *&v27[0] = v13 + 16 * v14;
          v16 = std::__tree<std::__value_type<unsigned long long,MTLSpecializationScriptData *>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,MTLSpecializationScriptData *>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,MTLSpecializationScriptData *>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 50), *&v27[0], &std::piecewise_construct, v27)[5];
          memset(v27, 0, sizeof(v27));
          v17 = *v16;
          v18 = *(v16 + 8);
          if (*(v16 + 16))
          {
            v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
          }

          else
          {
            v19 = 0;
          }

          createHashForType(15, v17, v18, i + 2, 0, v19, 0, v27);
          v20 = *(i[6] + 16 * v14 + 8);
          v26 = v27;
          std::__hash_table<std::__hash_value_type<MTLUINT256_t,unsigned long long>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,unsigned long long>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,unsigned long long>>>::__emplace_unique_key_args<MTLUINT256_t,std::piecewise_construct_t const&,std::tuple<MTLUINT256_t const&>,std::tuple<>>(a1 + 55, v27, &std::piecewise_construct, &v26)[6] = v20;
          v14 = v15;
          v13 = i[6];
          ++v15;
        }

        while (v14 < (i[7] - v13) >> 4);
      }
    }

    if (a1[52])
    {
      v21 = a1[50];
      if (v21 != v6)
      {
        do
        {
          v22 = v21[5];
          if (*v22)
          {
            free(*v22);
          }

          v23 = *(v22 + 16);
          if (v23)
          {
            free(v23);
          }

          free(v21[5]);
          v24 = v21[1];
          if (v24)
          {
            do
            {
              v25 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v25 = v21[2];
              v11 = *v25 == v21;
              v21 = v25;
            }

            while (!v11);
          }

          v21 = v25;
        }

        while (v25 != v6);
      }
    }

    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy((a1 + 50), a1[51]);
    a1[51] = 0;
    a1[52] = 0;
    result = 1;
    a1[50] = v6;
  }

  else
  {
    while (1)
    {
      (*(*a1 + 360))(a1, v5[4] + a1[75]);
      result = MTLLibraryDataWithArchive::serializeSpecFunctionScript(a1, v5[5], a3);
      if (!result)
      {
        break;
      }

      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
      if (v10 == v6)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t MTLLibraryDataWithArchive::parseImportedSymbolListSection(MTLLibraryDataWithArchive *this, NSError **a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!*(this + 72))
  {
    return 1;
  }

  (*(*this + 360))(this, *(this + 71));
  v29 = 0;
  if ((*(*this + 368))(this, &v29, 4) == 4)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [v4 initWithCapacity:v29];
    if (!v29)
    {
      goto LABEL_18;
    }

    v25 = a2;
    v6 = 0;
    v7 = 0;
LABEL_5:
    v28 = 0;
    if ((*(*this + 368))(this, &v28, 4) == 4)
    {
      v8 = 0;
      v27 = 0;
      while ((*(*this + 368))(this, &v27, 4) == 4)
      {
        v9 = v27;
        v27 = bswap32(v27);
        v26 = 0;
        if (v9 == 1413762629)
        {
          goto LABEL_13;
        }

        if ((*(*this + 368))(this, &v26, 2) != 2)
        {
          break;
        }

        if (v27 != 1312902469)
        {
LABEL_13:
          v13 = (*(*this + 392))(this);
          if (((*(*this + 360))(this, v13 + v26) & 1) == 0)
          {
            v14 = v25;
            if (!v25)
            {
              goto LABEL_27;
            }

            v18 = MEMORY[0x1E695DF20];
            v19 = *MEMORY[0x1E696A578];
            v20 = @"Invalid library file (unexpected end of file)";
LABEL_26:
            v21 = [v18 dictionaryWithObject:v20 forKey:{v19, v25}];
            *v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v21];
            goto LABEL_27;
          }
        }

        else
        {
          v10 = v26;
          MEMORY[0x1EEE9AC00](2);
          v12 = &v25 - v11;
          if ((*(*this + 368))(this, &v25 - v11, v10) != v10)
          {
            v22 = v25;
            if (v25)
            {
              v23 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metallib file forKey:{unexpected end of file while parsing imported symbol names", *MEMORY[0x1E696A578]}];
              *v22 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v23];
            }

            goto LABEL_27;
          }

          [v5 setObject:objc_msgSend(MEMORY[0x1E696AEC0] atIndexedSubscript:{"stringWithUTF8String:", v12), v6}];
          v7 = (v7 + 1);
        }

        --v8;
        if (v27 == 1162757204)
        {
          if (v8)
          {
            if (++v6 < v29)
            {
              goto LABEL_5;
            }

            v14 = v25;
            if (v7 == v29)
            {
LABEL_18:
              *(this + 14) = v5;
              return 1;
            }

            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to parse imported symbol names, expected %u symbols, found only %u", v29, v7];
            if (!v14)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to parse imported symbol names, no tokens read"];
            v14 = v25;
            if (!v25)
            {
              goto LABEL_27;
            }
          }

          v20 = v24;
          v18 = MEMORY[0x1E695DF20];
          v19 = *MEMORY[0x1E696A578];
          goto LABEL_26;
        }
      }
    }

    v14 = v25;
    if (v25)
    {
      v18 = MEMORY[0x1E695DF20];
      v19 = *MEMORY[0x1E696A578];
      v20 = @"Invalid metallib file, unexpected end of file while parsing imported symbol names";
      goto LABEL_26;
    }

LABEL_27:
  }

  else if (a2)
  {
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metallib file forKey:{unexpected end of file while parsing imported symbol names", *MEMORY[0x1E696A578]}];
    v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v16];
    result = 0;
    *a2 = v17;
    return result;
  }

  return 0;
}

uint64_t MTLLibraryDataWithArchive::parseScriptSection(MTLLibraryDataWithArchive *this, NSError **a2)
{
  if (!*(this + 76))
  {
    return 1;
  }

  (*(*this + 360))(this, *(this + 75));
  v10 = 0;
  if ((*(*this + 368))(this, &v10, 4) == 4)
  {
    if (v10)
    {
      v4 = 0;
      while (1)
      {
        *&size[1] = 0;
        size[0] = 0;
        result = (*(*this + 384))(this, &size[1], size, a2);
        if (!result)
        {
          break;
        }

        v6 = *&size[1];
        if (!strncmp((*&size[1] + 4), "AIRC", 4uLL) || !strncmp(v6 + 4, "AIRS", 4uLL))
        {
          free(v6);
        }

        else if (!strncmp(v6 + 4, "MTLP", 4uLL))
        {
          MTLLibraryDataWithArchive::handleMetalScript(this, v6, size[0]);
        }

        if (++v4 >= v10)
        {
          return 1;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  else if (a2)
  {
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid metallib file forKey:{unexpected end of file while parsing the script list", *MEMORY[0x1E696A578]}];
    v8 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v7];
    result = 0;
    *a2 = v8;
  }

  else
  {
    return 0;
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::pair<unsigned long long,std::vector<MTLUINT256_t>>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      a2[7] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void MTLLibraryContainer::init(MTLLibraryContainer *this, MTLLibraryData *a2, NSMutableDictionary *a3, NSArray *a4, NSError *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  this->var3 = a2;
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  this->var4 = a3;
  if (a4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(NSArray *)a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v9)
    {
      goto LABEL_16;
    }

    v10 = v9;
    v11 = 0;
    v12 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(a4);
        }

        if ([objc_msgSend(this->var4 objectForKey:{*(*(&v17 + 1) + 8 * i)), "functionType"}] == 4)
        {
          ++v11;
        }
      }

      v10 = [(NSArray *)a4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
    if (v11)
    {
      if (v11 == [(NSArray *)a4 count])
      {
        this->var6 = a4;
        v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
        v15 = 64;
      }

      else
      {
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Compiler found unsupported library with both qualified functions and extern functions" forKey:*MEMORY[0x1E696A578]];
        v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:2 userInfo:v16];
        v15 = 88;
      }
    }

    else
    {
LABEL_16:
      this->var5 = a4;
      v14 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      v15 = 72;
    }

    *(&this->var0 + v15) = v14;
  }

  if (!this->var8)
  {
    this->var8 = a5;
  }

  dispatch_group_leave(this->var7);
}

uint64_t _MTLConstantDataSize(uint64_t a1)
{
  result = 4;
  if (a1 > 120)
  {
    if (a1 > 122)
    {
      if (a1 == 123)
      {
        return 6;
      }

      else if (a1 == 124)
      {
        return 8;
      }

      else
      {
        return 0;
      }
    }

    else if (a1 == 121)
    {
      return 2;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
      case 17:
      case 29:
      case 33:
      case 38:
      case 42:
      case 48:
      case 52:
      case 56:
        return result;
      case 4:
      case 19:
      case 30:
      case 34:
      case 40:
      case 44:
      case 81:
      case 85:
        return 8;
      case 5:
      case 31:
      case 35:
        result = 12;
        break;
      case 6:
      case 32:
      case 36:
      case 82:
      case 86:
        result = 16;
        break;
      case 16:
      case 37:
      case 41:
      case 46:
      case 50:
      case 54:
        return 2;
      case 18:
      case 39:
      case 43:
        return 6;
      case 45:
      case 49:
      case 53:
        result = 1;
        break;
      case 47:
      case 51:
      case 55:
        result = 3;
        break;
      case 83:
      case 87:
        result = 24;
        break;
      case 84:
      case 88:
        result = 32;
        break;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short &&>,std::tuple<>>(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **std::map<std::string,MTLConstantStorage::ConstantData>::map[abi:ne200100](uint64_t **a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::map<std::string,MTLConstantStorage::ConstantData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__tree_node<std::__value_type<std::string,MTLConstantStorage::ConstantData>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t **std::map<std::string,MTLConstantStorage::ConstantData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__tree_node<std::__value_type<std::string,MTLConstantStorage::ConstantData>,void *> *,long>>>(uint64_t **result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLConstantStorage::ConstantData> const&>(v5, (v5 + 1), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_185BA4DAC(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,MTLConstantStorage::ConstantData> const&>(uint64_t **a1, uint64_t *a2, unsigned __int16 *a3, uint64_t a4)
{
  result = *std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::__find_equal<unsigned short>(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::__construct_node<std::pair<unsigned short const,MTLConstantStorage::ConstantData> const&>();
  }

  return result;
}

uint64_t **std::map<unsigned short,MTLConstantStorage::ConstantData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__tree_node<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,void *> *,long>>>(uint64_t **result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::__emplace_hint_unique_key_args<unsigned short,std::pair<unsigned short const,MTLConstantStorage::ConstantData> const&>(v5, v5 + 1, v4 + 16, (v4 + 16));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::map<unsigned short,MTLConstantStorage::ConstantData>::map[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  std::map<unsigned short,MTLConstantStorage::ConstantData>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__tree_node<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,MTLConstantStorage::ConstantData>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,MTLConstantStorage::ConstantData>>>::__find_equal<unsigned short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 16), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 16) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 16))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::pair<unsigned short const,MTLConstantStorage::ConstantData>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  _MTLConstantDataSize(*(a2 + 8));
  *(a1 + 8) = *(a2 + 8);
  operator new[]();
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(uint64_t a1, _OWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 0xF)
  {
    flatbuffers::vector_downward::reallocate(a1, 0x10uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 16;
  *(v4 - 16) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

dispatch_data_t MTLConstantStorage::constantAirScriptForFunction(MTLConstantStorage *this, _MTLFunction *a2, NSString *a3, NSString *a4, NSString **a5)
{
  v74 = *MEMORY[0x1E69E9840];
  if (MTLConstantStorage::getConstantCountForFunction(this, a2, a5, 0) == -1)
  {
    return 0;
  }

  v63 = 0;
  v64 = 0;
  v65 = xmmword_185DB8250;
  v66 = 0u;
  *buffer = 0u;
  v68 = 0;
  v69 = 1;
  v70 = 256;
  v71 = 0;
  v53 = a4;
  v54 = a3;
  __src = 0;
  v61 = 0;
  v62 = 0;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = [(_MTLFunction *)a2 functionConstants];
  v9 = [obj countByEnumeratingWithState:&v56 objects:v73 count:16];
  v10 = v9;
  if (v9)
  {
    v11 = *v57;
    do
    {
      v12 = 0;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v56 + 1) + 8 * v12);
        ConstantValue = MTLConstantStorage::findConstantValue(this, v13);
        if (ConstantValue)
        {
          v15 = [(MTLFunctionConstant *)v13 index];
          v16 = v15;
          v17 = *ConstantValue;
          Value = MTLConstantStorage::makeValue(v15, &v63, v17, *(ConstantValue + 1));
          BYTE6(v68) = 1;
          v19 = buffer[0];
          v20 = v66;
          v21 = WORD4(v66);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(&v63, 4, v16, 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(&v63, 6, v17, 0);
          flatbuffers::FlatBufferBuilder::AddOffset<void>(&v63, 8, Value);
          v22 = flatbuffers::FlatBufferBuilder::EndTable(&v63, v20 - v19 + v21);
          v23 = v61;
          if (v61 >= v62)
          {
            v25 = __src;
            v26 = v61 - __src;
            v27 = (v61 - __src) >> 2;
            v28 = v27 + 1;
            if ((v27 + 1) >> 62)
            {
              std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
            }

            v29 = v62 - __src;
            if ((v62 - __src) >> 1 > v28)
            {
              v28 = v29 >> 1;
            }

            v30 = v29 >= 0x7FFFFFFFFFFFFFFCLL;
            v31 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v30)
            {
              v31 = v28;
            }

            if (v31)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v31);
            }

            *(4 * v27) = v22;
            v24 = 4 * v27 + 4;
            memcpy(0, v25, v26);
            v32 = __src;
            __src = 0;
            v61 = v24;
            v62 = 0;
            if (v32)
            {
              operator delete(v32);
            }
          }

          else
          {
            *v61 = v22;
            v24 = (v23 + 4);
          }

          v61 = v24;
        }

        v12 = (v12 + 1);
      }

      while (v10 != v12);
      v9 = [obj countByEnumeratingWithState:&v56 objects:v73 count:16];
      v10 = v9;
    }

    while (v9);
  }

  v33 = MTLConstantStorage::addString(v9, &v63, v54);
  v34 = v33;
  v35 = MTLConstantStorage::addString(v33, &v63, v53);
  if (v61 == __src)
  {
    v36 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionConstantValue>,std::allocator<flatbuffers::Offset<Air::FunctionConstantValue>>>(std::vector<flatbuffers::Offset<Air::FunctionConstantValue>> const&)::t;
  }

  else
  {
    v36 = __src;
  }

  v37 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(&v63, v36, (v61 - __src) >> 2);
  BYTE6(v68) = 1;
  v38 = buffer[0];
  v39 = v66;
  v40 = WORD4(v66);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v63, 4, v34);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v63, 6, v35);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v63, 8, v37);
  v41 = flatbuffers::FlatBufferBuilder::EndTable(&v63, v39 - v38 + v40);
  BYTE6(v68) = 1;
  LOWORD(v37) = buffer[0];
  v42 = v66;
  v43 = WORD4(v66);
  v44 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(&v63, 2);
  flatbuffers::FlatBufferBuilder::TrackField(&v63, 6, v44);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(&v63, 8, v41);
  v45 = flatbuffers::FlatBufferBuilder::EndTable(&v63, v42 - v37 + v43);
  flatbuffers::FlatBufferBuilder::Finish(&v63, v45, "AIRC", 0);
  v46 = v63;
  v47 = v64;
  v48 = v66;
  v49 = buffer[0];
  v50 = (v66 + DWORD2(v66) - LODWORD(buffer[0]));
  if (v64 == 1)
  {
    v63 = 0;
    v64 = 0;
  }

  v66 = 0u;
  *buffer = 0u;
  v51 = dispatch_data_create(v49, v50, 0, 0);
  if (!*(&v48 + 1))
  {
    goto LABEL_30;
  }

  if (v46)
  {
    (*(*v46 + 24))(v46, *(&v48 + 1), v48);
LABEL_30:
    if (v47 && v46)
    {
      (*(*v46 + 8))(v46);
    }

    goto LABEL_35;
  }

  v72 = &unk_1EF4742E0;
  MEMORY[0x1865FF1F0](*(&v48 + 1), 0x1000C8077774924);
LABEL_35:
  if (__src)
  {
    v61 = __src;
    operator delete(__src);
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v63);
  return v51;
}

void sub_185BA5674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLConstantStorage::makeValue(MTLConstantStorage *this, flatbuffers::FlatBufferBuilder *a2, MTLDataType a3, uint64_t *a4)
{
  switch(a3)
  {
    case MTLDataTypeFloat:
    case MTLDataTypeInt:
    case MTLDataTypeUInt:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt>(a2, a4);
      break;
    case MTLDataTypeFloat2:
    case MTLDataTypeInt2:
    case MTLDataTypeUInt2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt2>(a2, a4);
      break;
    case MTLDataTypeFloat3:
    case MTLDataTypeInt3:
    case MTLDataTypeUInt3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt3>(a2, a4);
      break;
    case MTLDataTypeFloat4:
    case MTLDataTypeInt4:
    case MTLDataTypeUInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt4>(a2, a4);
      break;
    case MTLDataTypeHalf:
    case MTLDataTypeShort:
    case MTLDataTypeUShort:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort>(a2, a4);
      break;
    case MTLDataTypeHalf2:
    case MTLDataTypeShort2:
    case MTLDataTypeUShort2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort2>(a2, a4);
      break;
    case MTLDataTypeHalf3:
    case MTLDataTypeShort3:
    case MTLDataTypeUShort3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort3>(a2, a4);
      break;
    case MTLDataTypeHalf4:
    case MTLDataTypeShort4:
    case MTLDataTypeUShort4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort4>(a2, a4);
      break;
    case MTLDataTypeChar:
    case MTLDataTypeUChar:
    case MTLDataTypeBool:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(a2, a4);
      break;
    case MTLDataTypeChar2:
    case MTLDataTypeUChar2:
    case MTLDataTypeBool2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(a2, a4);
      break;
    case MTLDataTypeChar3:
    case MTLDataTypeUChar3:
    case MTLDataTypeBool3:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool3>(a2, a4);
      break;
    case MTLDataTypeChar4:
    case MTLDataTypeUChar4:
    case MTLDataTypeBool4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(a2, a4);
      break;
    case MTLDataTypeLong:
    case MTLDataTypeULong:
    case MTLDataTypeULong4|MTLDataTypeStruct:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong>(a2, a4);
      break;
    case MTLDataTypeLong2:
    case MTLDataTypeULong2:
    case MTLDataTypeULong4|MTLDataTypeArray:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong2>(a2, a4);
      break;
    case MTLDataTypeLong3:
    case MTLDataTypeULong3:
    case MTLDataTypeULong4|MTLDataTypeFloat:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong3>(a2, a4);
      break;
    case MTLDataTypeLong4:
    case MTLDataTypeULong4:
    case MTLDataTypeULong4|MTLDataTypeFloat2:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong4>(a2, a4);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat3:
    case MTLDataTypeR16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRG8Snorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt8>(a2, a4);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat4:
    case MTLDataTypeRG8Unorm|MTLDataTypeInt4:
    case MTLDataTypeRG16Unorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantInt16>(a2, a4);
      break;
    case MTLDataTypeULong4|MTLDataTypeFloat2x2:
    case MTLDataTypeRG16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Unorm_sRGB|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort8>(a2, a4);
      break;
    case MTLDataTypeR16Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGBA8Snorm|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantShort16>(a2, a4);
      break;
    case MTLDataTypeRGBA16Unorm|MTLDataTypeInt4:
    case MTLDataTypeRGB10A2Unorm|MTLDataTypeInt4:
    case MTLDataTypeInstanceAccelerationStructure|MTLDataTypeStruct:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool8>(a2, a4);
      break;
    case MTLDataTypeRGBA16Snorm|MTLDataTypeInt4:
    case MTLDataTypeRG11B10Float|MTLDataTypeInt4:
    case MTLDataTypeULong4|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool16>(a2, a4);
      break;
    case MTLDataTypeRGB9E5Float|MTLDataTypeInt4:
    case MTLDataTypeComputePipeline|MTLDataTypeInt4:
    case MTLDataTypeLong|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong8>(a2, a4);
      break;
    case MTLDataTypeRenderPipeline|MTLDataTypeInt4:
    case MTLDataTypeIndirectCommandBuffer|MTLDataTypeInt4:
    case MTLDataTypeLong2|MTLDataTypeInt4:
      result = flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantLong16>(a2, a4);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t MTLConstantStorage::addString(MTLConstantStorage *this, flatbuffers::FlatBufferBuilder *a2, NSString *a3)
{
  if (!a3 || [(NSString *)a3 isEqualToString:&stru_1EF478240])
  {
    return 0;
  }

  v6 = [(NSString *)a3 cStringUsingEncoding:4];
  v7 = strlen(v6);

  return flatbuffers::FlatBufferBuilder::CreateString(a2, v6, v7);
}

uint64_t createHashForType@<X0>(int a1@<W0>, const void *a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, MTLCompilerFunctionRequest *a5@<X4>, void *a6@<X5>, void *a7@<X6>, unsigned __int8 *a8@<X8>)
{
  v52 = *MEMORY[0x1E69E9840];
  data = a1;
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, &data, 4u);
  CC_SHA256_Update(&c, a4, 0x20u);
  if (a3)
  {
    CC_SHA256_Update(&c, a2, a3);
  }

  if (a5)
  {
    v15 = MTLCompilerFunctionRequest::visibleFunctions(a5);
    if (v15)
    {
      v16 = v15;
      if ([v15 count])
      {
        CC_SHA256_Update(&c, "functions", 9u);
        v17 = [objc_msgSend(v16 objectAtIndexedSubscript:{0), "bitCodeHash"}];
        v18 = v17[1];
        v50 = *v17;
        v51 = v18;
        if ([v16 count] >= 2)
        {
          v19 = 1;
          do
          {
            v20 = [objc_msgSend(v16 objectAtIndexedSubscript:{v19), "bitCodeHash"}];
            for (i = 0; i != 32; i += 8)
            {
              *(&v50 + i) ^= *(v20 + i);
            }

            v19 = (v19 + 1);
          }

          while ([v16 count] > v19);
        }

        CC_SHA256_Update(&c, &v50, 0x20u);
      }
    }

    v22 = MTLCompilerFunctionRequest::visibleFunctionGroups(a5);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v44;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v43 + 1) + 8 * j);
          v28 = [v22 objectForKeyedSubscript:v27];
          v29 = [v27 UTF8String];
          if (v28)
          {
            v30 = v29;
            if ([v28 count])
            {
              if (v30)
              {
                v31 = strlen(v30);
                CC_SHA256_Update(&c, v30, v31);
              }

              v32 = [objc_msgSend(v28 objectAtIndexedSubscript:{0), "bitCodeHash"}];
              v33 = v32[1];
              v50 = *v32;
              v51 = v33;
              if ([v28 count] >= 2)
              {
                v34 = 1;
                do
                {
                  v35 = [objc_msgSend(v28 objectAtIndexedSubscript:{v34), "bitCodeHash"}];
                  for (k = 0; k != 32; k += 8)
                  {
                    *(&v50 + k) ^= *(v35 + k);
                  }

                  v34 = (v34 + 1);
                }

                while ([v28 count] > v34);
              }

              CC_SHA256_Update(&c, &v50, 0x20u);
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v24);
    }

    a7 = MTLCompilerFunctionRequest::privateVisibleFunctions(a5);
  }

  if (a7 && [a7 count])
  {
    CC_SHA256_Update(&c, "privateFunctions", 0x10u);
    v37 = [objc_msgSend(a7 objectAtIndexedSubscript:{0), "bitCodeHash"}];
    v38 = v37[1];
    v50 = *v37;
    v51 = v38;
    if ([a7 count] >= 2)
    {
      v39 = 1;
      do
      {
        v40 = [objc_msgSend(a7 objectAtIndexedSubscript:{v39), "bitCodeHash"}];
        for (m = 0; m != 32; m += 8)
        {
          *(&v50 + m) ^= *(v40 + m);
        }

        v39 = (v39 + 1);
      }

      while ([a7 count] > v39);
    }

    CC_SHA256_Update(&c, &v50, 0x20u);
  }

  if (a6)
  {
    *&v50 = [a6 hash];
    CC_SHA256_Update(&c, &v50, 8u);
  }

  if (MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(0, 0))
  {
    *&v50 = 1;
    CC_SHA256_Update(&c, &v50, 8u);
  }

  return CC_SHA256_Final(a8, &c);
}

_DWORD *MTLConstantStorage::serializedConstantDataForFunction(MTLConstantStorage *this, _MTLFunction *a2, unint64_t *a3, NSString **a4)
{
  v34 = *MEMORY[0x1E69E9840];
  ConstantCountForFunction = MTLConstantStorage::getConstantCountForFunction(this, a2, a4, 1);
  if (ConstantCountForFunction == -1)
  {
    return 0;
  }

  v7 = ConstantCountForFunction;
  v8 = [(_MTLFunction *)a2 functionConstants];
  v9 = (20 * v7) + 4;
  v10 = malloc_type_malloc(v9, 0x100004077774924uLL);
  *v10 = v7;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v11 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  v26 = a3;
  if (v11)
  {
    v12 = *v30;
    v13 = 4;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        ConstantValue = MTLConstantStorage::findConstantValue(this, v15);
        if (ConstantValue)
        {
          v17 = [(MTLFunctionConstant *)v15 index];
          if (v13 >= 0xFFFFFFFFFFFFFFFELL)
          {
            goto LABEL_39;
          }

          v18 = v17;
          v19 = v13 + 2;
          if (v9 < v13 + 2)
          {
            if (!v9)
            {
              v9 = 128;
            }

            while (v9 < v19)
            {
              if (v9 >> 1 >= ~v9)
              {
                v9 = v13 + 2;
              }

              else
              {
                v9 += v9 >> 1;
              }
            }

            v10 = malloc_type_realloc(v10, v9, 0x100004077774924uLL);
            if (!v10)
            {
              goto LABEL_39;
            }
          }

          *(v10 + v13) = v18;
          if (v13 == -3)
          {
            goto LABEL_39;
          }

          v20 = *ConstantValue;
          v21 = v13 + 3;
          if (v9 <= v19)
          {
            do
            {
              if (v9 >> 1 >= ~v9)
              {
                v9 = v13 + 3;
              }

              else
              {
                v9 += v9 >> 1;
              }
            }

            while (v9 <= v19);
            v10 = malloc_type_realloc(v10, v9, 0x100004077774924uLL);
            if (!v10)
            {
              goto LABEL_39;
            }
          }

          *(v10 + v19) = v20;
          v22 = *(ConstantValue + 1);
          v23 = _MTLConstantDataSize(*ConstantValue);
          v24 = v23;
          if (-4 - v13 < v23)
          {
            goto LABEL_39;
          }

          v13 = v23 + v21;
          if (v9 < v23 + v21)
          {
            do
            {
              if (v9 >> 1 >= ~v9)
              {
                v9 = v23 + v21;
              }

              else
              {
                v9 += v9 >> 1;
              }
            }

            while (v9 < v13);
            v10 = malloc_type_realloc(v10, v9, 0x100004077774924uLL);
            if (!v10)
            {
LABEL_39:
              abort();
            }
          }

          memcpy(v10 + v21, v22, v24);
        }
      }

      v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 4;
  }

  *v26 = v13;
  return v10;
}

unsigned __int16 *MTLConstantStorage::findConstantValue(MTLConstantStorage *this, MTLFunctionConstant *a2)
{
  v4 = [(MTLFunctionConstant *)a2 index];
  v5 = *(this + 4);
  if (v5)
  {
    v6 = (this + 32);
    do
    {
      v7 = v5[16];
      v8 = v7 >= v4;
      v9 = v7 < v4;
      if (v8)
      {
        v6 = v5;
      }

      v5 = *&v5[4 * v9];
    }

    while (v5);
    if (v6 != (this + 32) && v6[16] <= v4)
    {
      return v6 + 20;
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, -[NSString UTF8String](-[MTLFunctionConstant name](a2, "name"), "UTF8String"));
  v10 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(this, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if ((this + 8) == v10)
  {
    return 0;
  }

  else
  {
    return (v10 + 56);
  }
}

void sub_185BA658C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLLibraryContainer::~MTLLibraryContainer(MTLLibraryContainer *this)
{
  [this->var4 removeAllObjects];

  this->var4 = 0;
  this->var5 = 0;

  this->var6 = 0;
  var3 = this->var3;
  if (var3)
  {
    (*(*var3 + 24))(var3);
  }

  dispatch_release(this->var7);
}

uint64_t validateWithDevice(id *a1, uint64_t a2)
{
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  _MTLMessageContextBegin_(v50, "validateWithDevice", 5018, a1, 3, "Render Pipeline Descriptor Validation");
  validateFunction(v50, a1, *(a2 + 256), "vertexFunction", *(a2 + 288) == 0, v4, v5, v6);
  validateFunction(v50, a1, *(a2 + 264), "fragmentFunction", 0, v7, v8, v9);
  validateFunction(v50, a1, *(a2 + 280), "objectFunction", 0, v10, v11, v12);
  validateFunction(v50, a1, *(a2 + 288), "meshFunction", 0, v13, v14, v15);
  v21 = *(a2 + 256);
  if (v21 && *(a2 + 288))
  {
    _MTLMessageContextPush_(v50, 4, @"vertexFunction must be nil when meshFunction is not nil.", v16, v17, v18, v19, v20, v49);
    v21 = *(a2 + 256);
    if (!v21)
    {
      goto LABEL_14;
    }
  }

  else if (!v21)
  {
    goto LABEL_14;
  }

  if ([v21 patchType])
  {
    MTLValidateFeatureSupport(a1, 78, 0);
    if (*(a2 + 96) > *([a1 limits] + 192))
    {
      _MTLMessageContextPush_(v50, 4, @"maxTessellationFactor(%lu) must be <= %lu.", v22, v23, v24, v25, v26, *(a2 + 96));
    }

    v27 = *(a2 + 88);
    if ((v27 - 2) < 2)
    {
      if (*(a2 + 96))
      {
        _MTLMessageContextPush_(v50, 4, @"maxTessellationFactor(%lu) must be even when using MTLTessellationPartitionModeFractionalOdd or MTLTessellationPartitionModeFractionalEven.", v22, v23, v24, v25, v26, *(a2 + 96));
      }
    }

    else if (v27 != 1)
    {
      if (v27)
      {
        abort();
      }

      if ((*(a2 + 96) & (*(a2 + 96) - 1)) != 0)
      {
        _MTLMessageContextPush_(v50, 4, @"maxTessellationFactor(%lu) must be a power of 2 when using MTLTessellationPartitionModePow2.", v22, v23, v24, v25, v26, *(a2 + 96));
      }
    }
  }

LABEL_14:
  if (*(a2 + 256) && *(a2 + 272))
  {
    v28 = 0;
    while ([objc_msgSend(objc_msgSend(*(a2 + 272) "layouts")] != -1)
    {
      if (++v28 == 31)
      {
        goto LABEL_22;
      }
    }

    if (([a1 supportsDynamicAttributeStride] & 1) == 0)
    {
      _MTLMessageContextPush_(v50, 4, @"MTLBufferLayoutStrideDynamic set on buffer-layout index %u; device does not support dynamic attribute strides.", v29, v30, v31, v32, v33, v28);
    }
  }

LABEL_22:
  if ([*(a2 + 256) renderTargetArrayIndexType])
  {
    if (*(a2 + 216))
    {
      _MTLMessageContextPush_(v50, 4, @"colorSampleCount not 0 but the pipeline vertex function is writing to render_target_array_index.", v34, v35, v36, v37, v38, v49);
    }

    v39 = [a1 supportsTexture2DMultisampleArray];
    if (*(a2 + 184) != 1 && (v39 & 1) == 0)
    {
      _MTLMessageContextPush_(v50, 4, @"Pipeline rasterSampleCount (%u) is greater than 1 but the pipeline vertex function is writing to render_target_array_index.", v34, v35, v36, v37, v38, *(a2 + 184));
    }
  }

  v40 = *(a2 + 112);
  if (v40 && (v40 != 1 || ([a1 supportsFP32TessFactors] & 1) == 0))
  {
    _MTLMessageContextPush_(v50, 4, @"tessellationFactorFormat(%d) is not a valid MTLTessellationFactorFormat.", v34, v35, v36, v37, v38, v40);
  }

  validateRenderRasterAndLater<MTLRenderPipelineDescriptorPrivate>(v50, a1, a2);
  v41 = *(a2 + 616);
  if (v41 > [a1 maxAccelerationStructureTraversalDepth])
  {
    v43 = *(a2 + 616);
    [a1 maxAccelerationStructureTraversalDepth];
    _MTLMessageContextPush_(v50, 4, @"maxAccelerationStructureTraversalDepth (%lu) must be less than or equal to %lu", v44, v45, v46, v47, v48, v43);
  }

  return _MTLMessageContextEnd(v50);
}

void validateFunction(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a3 && a5)
  {
    _MTLMessageContextPush_(a1, 4, @"%s must not be nil.", a4, a5, a6, a7, a8, a4);
  }

  else if (a3)
  {
    if ([a3 device] != a2)
    {
      _MTLMessageContextPush_(a1, 4, @"%s is associated with a different device.", v11, v12, v13, v14, v15, a4);
    }

    if ([a3 needsFunctionConstantValues])
    {
      [a3 name];
      _MTLMessageContextPush_(a1, 4, @"%s %@ cannot be used to build a pipeline state. Use newFunctionWithName:constantValues:... to get the specialized function", v16, v17, v18, v19, v20, a4);
    }
  }
}

void *MultiLevelFunctionCache::newFunctionWithKey(id *this, const MTLHashKey *a2, NSString *a3)
{
  v14 = 0;
  result = [this[6] newSpecializedFunctionWithHash:&a2->var1 libraryPath:a3];
  if (!result)
  {
    if ([this[5] count])
    {
      v7 = 0;
      while (1)
      {
        result = [objc_msgSend(this[5] objectAtIndexedSubscript:{v7), "newSpecializedFunctionWithHash:libraryPath:", &a2->var1, a3}];
        if (result)
        {
          break;
        }

        if (++v7 >= [this[5] count])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      if ((*(*this + 15))(this))
      {
        return 0;
      }

      MultiLevelCacheBase::getElement(this, &a2->var1, &v14);
      v11 = v14;
      if (!v14)
      {
        return 0;
      }

      else
      {
        v12 = MTLLibraryBuilder::newLibraryWithData(*(this[7] + 55), this[7], v14, a3, 0, v8, v9, v10);
        v13 = [(_MTLLibrary *)v12 newFunctionWithName:[(NSArray *)[(_MTLLibrary *)v12 functionNames] objectAtIndex:0]];

        dispatch_release(v11);
        return v13;
      }
    }
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::PreAlign(flatbuffers::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return flatbuffers::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateString(flatbuffers::FlatBufferBuilder *this, const char *a2, unint64_t a3)
{
  flatbuffers::FlatBufferBuilder::PreAlign(this, a3 + 1, 4uLL);
  flatbuffers::vector_downward::fill(this, 1uLL);
  flatbuffers::vector_downward::push(this, a2, a3);
  flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, a3);
  return (*(this + 8) - *(this + 12) + *(this + 10));
}

char *flatbuffers::vector_downward::fill(char *this, unint64_t a2)
{
  v3 = this;
  v4 = *(this + 6);
  if (v4 - *(this + 7) >= a2)
  {
    *(this + 6) = v4 - a2;
    if (!a2)
    {
      return this;
    }
  }

  else
  {
    this = flatbuffers::vector_downward::reallocate(this, a2);
    *(v3 + 6) -= a2;
  }

  v5 = 0;
  do
  {
    *(*(v3 + 6) + v5++) = 0;
  }

  while (a2 != v5);
  return this;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(char *result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 70) = 1;
  v6 = 4 * a3;
  flatbuffers::FlatBufferBuilder::PreAlign(a1, 4 * a3, 4uLL);
  flatbuffers::FlatBufferBuilder::PreAlign(a1, v6, 4uLL);
  if (a3)
  {
    v7 = a2 - 4;
    v8 = a3;
    do
    {
      v9 = v8 - 1;
      flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(a1, *(v7 + 4 * v8));
      v8 = v9;
    }

    while (v9);
  }

  *(a1 + 70) = 0;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, a3);
}

uint64_t flatbuffers::FlatBufferBuilder::Finish(flatbuffers::FlatBufferBuilder *this, int a2, const char *a3, int a4)
{
  *(this + 7) = *(this + 5);
  v8 = 4;
  if (a4)
  {
    v8 = 8;
  }

  flatbuffers::FlatBufferBuilder::PreAlign(this, v8 + 4 * (a3 != 0), *(this + 9));
  if (a3)
  {
    v9 = *(this + 6);
    if ((v9 - *(this + 7)) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v9 = *(this + 6);
    }

    *(this + 6) = v9 - 4;
    *(v9 - 4) = *a3;
  }

  flatbuffers::FlatBufferBuilder::Align(this, 4uLL);
  result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10) - a2 + 4);
  if (a4)
  {
    result = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, *(this + 8) - *(this + 12) + *(this + 10));
  }

  *(this + 71) = 1;
  return result;
}

void flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(flatbuffers::FlatBufferBuilder *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__tree<flatbuffers::Offset<flatbuffers::String>,flatbuffers::FlatBufferBuilder::StringOffsetCompare,std::allocator<flatbuffers::Offset<flatbuffers::String>>>::destroy(*(this + 11), *(v2 + 8));
    MEMORY[0x1865FF210](v2, 0x1060C40C2B13FB5);
  }

  flatbuffers::vector_downward::~vector_downward(this);
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(uint64_t a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 4) = a2;
  v5 = v4 - 4;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH();
  }

  if (MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(BOOL,BOOL)::ev)
  {
    return *MTLEnvVarAggregator::GET_MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH(BOOL,BOOL)::ev == 49;
  }

  return a2;
}

BOOL MultiLevelCacheBase::initialize(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v5 = a1;
  *(a1 + 32) = a4;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (_MTLDebugIgnorePrecompiledBinaries(void)::onceToken != -1)
  {
    _MTLDebugIgnorePrecompiledBinaries();
  }

  if (_MTLDebugIgnorePrecompiledBinaries(void)::ignorePrecompiledBinaries)
  {
LABEL_5:
    *(v5 + 8) = a3;
    *(v5 + 16) = 0;
LABEL_6:
    *(v5 + 24) = a3;
    goto LABEL_7;
  }

  v8 = [a2 cache];
  v9 = *(v5 + 32);
  a1 = [a2 disableRunTimeCompilation];
  *(v5 + 32) = v9 | a1;
  if (!v8)
  {
    if ((v9 | a1))
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *v10 = 0;
      _os_log_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "The pipeline library's cache is nil, but disableRunTimeCompilation was set. Cache lookups will always fail.", v10, 2u);
      return 0;
    }

    goto LABEL_5;
  }

  *(v5 + 8) = v8;
  a1 = [a2 writable];
  if (!a1)
  {
    *(v5 + 16) = a3;
    goto LABEL_6;
  }

  *(v5 + 16) = 0;
  a1 = [a2 cache];
  *(v5 + 24) = a1;
  *(v5 + 32) &= ~1u;
LABEL_7:
  if (!*(v5 + 8))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    MultiLevelCacheBase::initialize();
    return 0;
  }

  if (_MTLDebugIgnoreFailOnMissFlag(a1))
  {
    *(v5 + 32) &= 4u;
  }

  return 1;
}

uint64_t MTLGetCompilerOptions(void *a1, unint64_t a2, unsigned int a3, unint64_t a4, int a5)
{
  if ((a2 & 0x200000) != 0)
  {
    v7 = 129;
  }

  else
  {
    v7 = 0;
  }

  v23 = a2 >> 2;
  v8 = v7 | (a2 >> 10) & 0x100;
  v9 = (a2 >> 22) & 1 | _MTLCompilePerformanceStatisticsEnabled(a1, a2);
  v10 = v9 == 0;
  if (v9)
  {
    v11 = v8 | 0x200;
  }

  else
  {
    v11 = v8;
  }

  if (v10)
  {
    v12 = 0xFFFFFFFD28C7FFFBLL;
  }

  else
  {
    v12 = 0xFFFFFFFD2887FFFBLL;
  }

  if ((a2 & 0x80000) != 0)
  {
    v11 |= 0x11u;
  }

  if ((a2 & 0x100000) != 0)
  {
    v13 = v11 | 0x21;
  }

  else
  {
    v13 = v11;
  }

  v14 = [a1 supportsFamily:1005];
  v15 = 65539;
  if (!v14)
  {
    v15 = v12;
  }

  v16 = (a2 >> 9) & 0x80000 | (a2 >> 12) & 0x1000 | ((v23 & 1) << 14) | (a2 >> 9) & 0x10000 | (a2 >> 13) & 0x2000 | (a2 >> 30 << 24) | (a2 >> 3) & 0x40000000 | ((v15 & a2) != 0) | v13;
  if (a1)
  {
    if ([a1 supportsVertexAmplification])
    {
      v17 = 1024;
    }

    else
    {
      v17 = 2048;
    }

    v18 = v17 | v16;
    if ([a1 supportsUnalignedVertexFetch])
    {
      v16 = v18 | 0x20000;
    }

    else
    {
      v16 = v18;
    }

    if ([a1 requiresRaytracingEmulation] && objc_msgSend(a1, "supportsRaytracing"))
    {
      v16 |= 0x40000u;
    }

    v19 = a4;
    if (a4 <= 1 && ((v16 & 0x80) == 0 || ([a1 supportsTLS] & 1) == 0))
    {
      v16 |= 0x400000u;
    }

    if ([a1 supportsBfloat16Buffers] && objc_msgSend(a1, "requiresBFloat16Emulation"))
    {
      v16 |= 0x80000000;
    }
  }

  else
  {
    v19 = a4;
  }

  v20 = v16 | 2;
  if (!a5)
  {
    v20 = v16;
  }

  v21 = (a3 << 13) & 0x200000 | (((a3 >> 7) & 1) << 15) & 0xFF7FFFFF | (((a3 >> 9) & 1) << 23) | v20;
  if (v19 == 1)
  {
    if (![a1 supportsGlobalVariableRelocationCompute])
    {
      return v21;
    }

    return v21 | 0x4000000;
  }

  if (!v19 && ([a1 supportsGlobalVariableRelocationRender] & 1) != 0)
  {
    return v21 | 0x4000000;
  }

  return v21;
}

char *flatbuffers::vector_downward::reallocate(flatbuffers::vector_downward *this, unint64_t a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  v5 = v3 - *(this + 6) + v4;
  v6 = *(this + 7) - v4;
  if (v3)
  {
    v7 = v3 >> 1;
  }

  else
  {
    v7 = *(this + 2);
  }

  if (v7 <= a2)
  {
    v7 = a2;
  }

  v8 = (*(this + 3) + v3 + v7 - 1) & -*(this + 3);
  *(this + 4) = v8;
  v9 = *this;
  if (v4)
  {
    if (!v9)
    {
      v12 = &unk_1EF4742E0;
      operator new[]();
    }

    result = (*(*v9 + 32))(v9, v4, v3, v8, v5, v6);
  }

  else
  {
    if (!v9)
    {
      v12 = &unk_1EF4742E0;
      operator new[]();
    }

    result = (*(*v9 + 16))(v9, v8);
  }

  v11 = &result[*(this + 4) - v5];
  *(this + 5) = result;
  *(this + 6) = v11;
  *(this + 7) = &result[v6];
  return result;
}

char *flatbuffers::FlatBufferBuilder::Align(flatbuffers::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return flatbuffers::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

uint64_t flatbuffers::FlatBufferBuilder::EndTable(flatbuffers::FlatBufferBuilder *this, __int16 a2)
{
  v4 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  v6 = *(this + 6);
  if (v6 - *(this + 7) < v5)
  {
    flatbuffers::vector_downward::reallocate(this, v5);
    v6 = *(this + 6);
  }

  *(this + 6) = v6 - v5;
  bzero((v6 - v5), v5);
  v7 = v4 - a2;
  v9 = *(this + 6);
  v8 = *(this + 7);
  v9[1] = v7;
  *v9 = *(this + 34);
  v10 = *(this + 16);
  v11 = (v8 - 8 * v10);
  if (v10)
  {
    v12 = (v8 - 8 * v10);
    do
    {
      *(v9 + v12[2]) = v4 - *v12;
      v12 += 4;
    }

    while (v12 < v8);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v13 = *(this + 4);
  v14 = *(this + 5);
  v15 = v13 - v9 + v14;
  if (*(this + 81) == 1 && v14 < v11)
  {
    v17 = *v9;
    v18 = v14 + v13;
    v19 = *(this + 5);
    while (1)
    {
      v20 = *v19;
      if (v17 == *(v18 - v20) && !memcmp((v18 - v20), v9, v17))
      {
        break;
      }

      if (++v19 >= v11)
      {
        v15 = v13 - v9 + v14;
        goto LABEL_19;
      }
    }

    v9 = (v9 + (v13 - v9 + v14 - v4));
    *(this + 6) = v9;
    v15 = v20;
  }

LABEL_19:
  if (v15 == v13 + v14 - v9)
  {
    if ((v9 - v11) <= 3)
    {
      flatbuffers::vector_downward::reallocate(this, 4uLL);
      v11 = *(this + 7);
      v13 = *(this + 4);
      v14 = *(this + 5);
    }

    *v11 = v15;
    *(this + 7) = v11 + 4;
  }

  *(v14 + v13 - v4) = v15 - v4;
  *(this + 70) = 0;
  return v4;
}

flatbuffers::FlatBufferBuilder *flatbuffers::FlatBufferBuilder::AddOffset<void>(flatbuffers::FlatBufferBuilder *result, uint64_t a2, int a3)
{
  if (a3)
  {
    v5 = result;
    flatbuffers::FlatBufferBuilder::Align(result, 4uLL);
    v6 = *(v5 + 8) - *(v5 + 12) + *(v5 + 10) - a3 + 4;

    return flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(v5, a2, v6, 0);
  }

  return result;
}

char *flatbuffers::FlatBufferBuilder::TrackField(char *this, uint64_t a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 7);
  if (*(this + 6) - v6 <= 7uLL)
  {
    this = flatbuffers::vector_downward::reallocate(this, 8uLL);
    v6 = *(v5 + 7);
  }

  *v6 = a3 | (a2 << 32);
  *(v5 + 7) += 8;
  ++*(v5 + 16);
  v7 = *(v5 + 34);
  if (v7 <= a2)
  {
    LOWORD(v7) = a2;
  }

  *(v5 + 34) = v7;
  return this;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<flatbuffers::String>(flatbuffers::FlatBufferBuilder *a1, int a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = *(a1 + 8) - *(a1 + 12) + *(a1 + 10) - a2 + 4;

  return flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(a1, v4);
}

uint64_t MTLCompilerFSCache::openSync(MTLCompilerFSCache *this, uint64_t a2, uint64_t a3, BOOL a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = (this + 48);
  if (*(this + 6))
  {
    return 1;
  }

  if (*(this + 24))
  {
    return 0;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  if (!*(this + 5))
  {
    goto LABEL_12;
  }

  v7 = this + 56;
  if (*(this + 79) < 0)
  {
    v7 = *v7;
  }

  if (!getCacheMainFolder(__s, "com.apple.metal", 1) || v7 && (v8 = strlen(__s), strncat(__s, "/", 1024 - v8), v9 = strlen(__s), strncat(__s, v7, 1024 - v9), stat(__s, &v25)) && mkdir(__s, 0x1FFu))
  {
LABEL_12:
    v5 = 0;
    goto LABEL_30;
  }

  v10 = 0;
  v11 = (this + 80);
  *&v25.st_dev = 0;
  do
  {
    *(this + 4) = *(this + 5);
    *(this + 10) = 2097153;
    v12 = gShaderCachePermissions;
    if (gShaderCachePermissions)
    {
      *(this + 20) = 2;
      *(this + 22) |= 1u;
      *(this + 23) = v12;
    }

    if (v10)
    {
      free(*&v25.st_dev);
      v13 = this + 80;
      if (*(this + 103) < 0)
      {
        v13 = *v11;
      }

      asprintf(&v25, "%s/%s%u", __s, v13, v10);
    }

    else
    {
      v14 = this + 80;
      if (*(this + 103) < 0)
      {
        v14 = *v11;
      }

      asprintf(&v25, "%s/%s", __s, v14);
    }

    v15 = fscache_open_with_key();
    if (v10 > 0xFE)
    {
      break;
    }

    ++v10;
  }

  while (v15 == 206);
  if (!v15)
  {
    if (*v4)
    {
      v5 = 1;
      goto LABEL_29;
    }

    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      MTLCompilerFSCache::openSync(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v5 = 0;
LABEL_29:
  free(*&v25.st_dev);
LABEL_30:
  if (*v4)
  {
    {
      deleteFSCache(void)::resetFSCache = MTLGetEnvDefault("FS_CACHE_RESET", 0) != 0;
    }

    if (deleteFSCache(void)::resetFSCache == 1 && fscache_remove_all())
    {
      MTLCompilerFSCache::invalidateCache(this);
      v5 = 0;
    }

    if (*v4)
    {
      os_unfair_lock_lock(this + 34);
      if (!*(this + 18))
      {
        operator new();
      }

      os_unfair_lock_unlock(this + 34);
    }
  }

  return v5;
}

uint64_t MultiLevelCacheBase::getElement(void *a1, __int128 *a2, dispatch_data_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v6 = a1[1];
  if (v6)
  {
    v7 = a2[1];
    v12 = *a2;
    v13 = v7;
    if ((*(*v6 + 32))(v6, &v12, &v11, &v10))
    {
      goto LABEL_7;
    }
  }

  if ((*(*a1 + 24))(a1))
  {
    return 0;
  }

  result = a1[2];
  if (result)
  {
    v9 = a2[1];
    v12 = *a2;
    v13 = v9;
    result = (*(*result + 32))(result, &v12, &v11, &v10);
    if (result)
    {
LABEL_7:
      *a3 = dispatch_data_create(v11, v10, 0, *MEMORY[0x1E69E9648]);
      return 1;
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,std::__map_value_compare<MTLUINT256_t,std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>,CompareHash,true>,std::allocator<std::__value_type<MTLUINT256_t,std::pair<unsigned int,unsigned long long>>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

flatbuffers::vector_downward *flatbuffers::vector_downward::push(flatbuffers::vector_downward *this, const unsigned __int8 *__src, unint64_t a3)
{
  if (a3)
  {
    v5 = this;
    v6 = *(this + 6);
    if (v6 - *(this + 7) < a3)
    {
      flatbuffers::vector_downward::reallocate(this, a3);
      v6 = *(v5 + 6);
    }

    *(v5 + 6) = v6 - a3;

    return memcpy((v6 - a3), __src, a3);
  }

  return this;
}

__n128 MTLHashKey::MTLHashKey(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 4;
  *a1 = xmmword_185DB8240;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  result = *a2;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 24) = result;
  return result;
}

void MTLLibraryDataWithArchive::allocateFunctionNames(MTLLibraryData *this)
{
  v2 = MTLLibraryData::mutex(this);
  os_unfair_lock_lock(v2);
  if (!*(this + 16))
  {
    operator new[]();
  }

  os_unfair_lock_unlock(v2);
}

void *std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(void *a1, unint64_t *a2)
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
      if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
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

uint64_t _MTLDebugIgnoreFailOnMissFlag(uint64_t a1)
{
  if (_MTLDebugIgnoreFailOnMissFlag(void)::onceToken != -1)
  {
    _MTLDebugIgnoreFailOnMissFlag();
  }

  if (_MTLDebugIgnoreFailOnMissFlag(void)::ignoreFailOnMiss)
  {
    v1 = 1;
  }

  else
  {
    if (_MTLDebugIgnorePrecompiledBinaries(void)::onceToken != -1)
    {
      _MTLDebugIgnorePrecompiledBinaries();
    }

    v1 = _MTLDebugIgnorePrecompiledBinaries(void)::ignorePrecompiledBinaries;
  }

  return v1 & 1;
}

_MTLLibrary *MTLLibraryBuilder::newLibraryWithData(_MTLDevice **a1, _MTLDevice *a2, NSObject *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      MTLLibraryBuilder::newLibraryWithData(isKindOfClass, v14, v15, v16, v17, v18, v19, v20, v28);
    }
  }

  else
  {
    MTLLibraryBuilder::newLibraryWithData(a1, 0, a3, a4, a5, a6, a7, a8, v28);
  }

  if (a3)
  {
    v21 = _MTLGetLibrariesCache(a2);
    v28 = 0;
    buffer_ptr = 0;
    map = dispatch_data_create_map(a3, &buffer_ptr, &v28);
    v23 = buffer_ptr;
    v24 = v28;
    *md = 0u;
    v35 = 0u;
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, v23, v24);
    CC_SHA256_Final(md, &c);
    dispatch_release(map);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v32 = *md;
    v31[2] = ___ZN17MTLLibraryBuilder18newLibraryWithDataEPU19objcproto9MTLDevice11objc_objectPU27objcproto16OS_dispatch_data8NSObjectP8NSStringPP7NSError_block_invoke;
    v31[3] = &unk_1E6EEBF90;
    v31[7] = a1;
    v31[8] = v21;
    v33 = v35;
    v31[4] = a3;
    v31[5] = a4;
    v31[6] = a2;
    return MTLLibraryBuilder::newLibraryWithArchive(a1, md, a5, v31);
  }

  else if (a5)
  {
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"data should not be null" forKey:*MEMORY[0x1E696A578]];
    v27 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v26];
    result = 0;
    *a5 = v27;
  }

  else
  {
    return 0;
  }

  return result;
}

void MTLHashKey::~MTLHashKey(MTLHashKey *this)
{
  var0 = this->var2.var0;
  if (var0)
  {
    this->var2.var1 = var0;
    operator delete(var0);
  }
}

BOOL LibraryWithData::setPosition(LibraryWithData *this, uint64_t a2)
{
  v2 = *(this + 30) + a2;
  v3 = *(this + 82);
  if (v3 >= v2)
  {
    *(this + 83) = v2;
  }

  return v3 >= v2;
}

size_t LibraryWithData::readBytes(LibraryWithData *this, void *__dst, size_t a3)
{
  v3 = *(this + 83);
  if (v3 + a3 > *(this + 82))
  {
    return 0;
  }

  v4 = a3;
  memcpy(__dst, (*(this + 81) + v3), a3);
  *(this + 83) += v4;
  return v4;
}

BOOL MTLLibraryDataWithArchive::getFunctionAtOffset(MTLLibraryDataWithArchive *this, unint64_t a2, MTLFunctionData *a3, void **a4)
{
  v67 = *MEMORY[0x1E69E9840];
  (*(*this + 360))(this, a2);
  MEMORY[0x1865FEFC0](a4 + 1, "");
  *a4 = 0xFFFFFFFFLL;
  v66 = 0;
  if ((*(*this + 368))(this, &v66, 4) != 4)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    MTLLibraryDataWithArchive::parseDynamicHeaderSection(result, v9, v10, v11, v12, v13, v14, v15);
    return 0;
  }

  *&a3->baseFunctionHash.key[8] = 0u;
  *&a3->baseFunctionHash.key[24] = 0u;
  *&a3->pluginData = 0u;
  *&a3->functionInputs = 0u;
  *&a3->bitcodeHash.key[8] = 0u;
  *&a3->bitcodeHash.key[24] = 0u;
  *&a3->airMajorVersion = 0u;
  *&a3->bitCodeOffset = 0u;
  *&a3->publicArgumentsOffset = 0u;
  *&a3->sourceArchiveOffset = 0u;
  a3->sourceArchiveOffset = -1;
  a3->reflectionDataOffset = -1;
  if (*(this + 156))
  {
    v7 = -4;
LABEL_8:
    *(a3 + 105) = v7;
    goto LABEL_9;
  }

  if (dyld_program_sdk_at_least())
  {
    v7 = *(a3 + 105) | 0xFC;
    goto LABEL_8;
  }

LABEL_9:
  v59 = 0;
  v16 = 0;
  v58 = 0;
  v65 = 0;
  do
  {
    if ((*(*this + 368))(this, &v65, 4) != 4)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      goto LABEL_109;
    }

    v17 = v65;
    v18 = bswap32(v65);
    v65 = v18;
    LOWORD(v60) = 0;
    if (v17 == 1413762629)
    {
      continue;
    }

    if ((*(*this + 368))(this, &v60, 2) != 2)
    {
      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return 0;
      }

      goto LABEL_109;
    }

    if (v65 <= 1380338771)
    {
      if (v65 <= 1296323417)
      {
        if (v65 > 1212240711)
        {
          if (v65 == 1212240712)
          {
            if ((*(*this + 368))(this, &a3->bitcodeHash, 32) != 32)
            {
              result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              if (!result)
              {
                return 0;
              }

              goto LABEL_109;
            }

            v16 |= 4u;
          }

          else
          {
            if (v65 != 1279351122)
            {
              goto LABEL_67;
            }

            LOBYTE(v63) = 0;
            if ((*(*this + 368))(this, &v63, 1) != 1)
            {
              result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              if (!result)
              {
                return 0;
              }

              goto LABEL_109;
            }

            a3->renderTargetArrayIndexType = v63;
          }

          goto LABEL_68;
        }

        if (v65 != 1095518547)
        {
          if (v65 == 1162757204)
          {
            break;
          }

          goto LABEL_67;
        }

        v23 = v60;
        MEMORY[0x1EEE9AC00](2);
        v25 = &v57 - v24;
        if ((*(*this + 368))(this, &v57 - v24, v23) == v23)
        {
          std::string::basic_string[abi:ne200100]<0>(&v63, v25);
          if (*(a4 + 55) < 0)
          {
            operator delete(a4[4]);
          }

          *(a4 + 2) = v63;
          a4[6] = v64;
          v26 = strlen(v25);
          std::string::basic_string[abi:ne200100]<0>(&v63, &v25[v26 + 1]);
          goto LABEL_59;
        }

        v42 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v42)
        {
          MTLLibraryDataWithArchive::parseDynamicHeaderSection(v42, v43, v44, v45, v46, v47, v48, v49);
        }

        return 0;
      }

      if (v65 != 1296323418)
      {
        if (v65 != 1312902469)
        {
          if (v65 != 1330005588)
          {
            goto LABEL_67;
          }

          if ((*(*this + 368))(this, &v63, 24) != 24)
          {
            result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return 0;
            }

            goto LABEL_109;
          }

          *&a3->publicArgumentsOffset = v63;
          a3->bitCodeOffset = v64;
          v16 |= 8u;
          goto LABEL_68;
        }

        v30 = v60;
        MEMORY[0x1EEE9AC00](2);
        v32 = &v57 - v31;
        if ((*(*this + 368))(this, &v57 - v31, v30) != v30)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return 0;
          }

          goto LABEL_109;
        }

        std::string::basic_string[abi:ne200100]<0>(&v63, v32);
LABEL_59:
        if (*(a4 + 31) < 0)
        {
          operator delete(a4[1]);
        }

        *(a4 + 1) = v63;
        a4[3] = v64;
        v16 |= 1u;
        goto LABEL_68;
      }

      if ((*(*this + 368))(this, &a3->bitCodeFileSize, 8) == 8)
      {
        goto LABEL_68;
      }

      result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return 0;
      }

LABEL_109:
      MTLLibraryDataWithArchive::parseDynamicHeaderSection(result, v50, v51, v52, v53, v54, v55, v56);
      return 0;
    }

    if (v65 <= 1398031176)
    {
      switch(v65)
      {
        case 1380338772:
          *&v63 = 0;
          if ((*(*this + 368))(this, &v63, 8) != 8)
          {
            result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return 0;
            }

            goto LABEL_109;
          }

          a3->reflectionDataOffset = v63;
          goto LABEL_68;
        case 1397704262:
          *&v63 = 0;
          if ((*(*this + 368))(this, &v63, 8) != 8)
          {
            result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return 0;
            }

            goto LABEL_109;
          }

          a3->sourceArchiveOffset = v63;
          goto LABEL_68;
        case 1397769033:
          v19 = malloc_type_malloc(v60, 0x100004077774924uLL);
          v20 = (*(*this + 368))(this, v19, v60);
          if (v20 != v60)
          {
            result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (!result)
            {
              return 0;
            }

            goto LABEL_109;
          }

          v21 = strnlen(v19, v20);
          v22 = *&v19[v21 + 1];
          *&a3->baseFunctionHash.key[16] = *&v19[v21 + 17];
          *a3->baseFunctionHash.key = v22;
          v58 = *&v19[v21 + 33];
          free(v19);
          goto LABEL_52;
      }

LABEL_67:
      v33 = (*(*this + 392))(this);
      if (((*(*this + 360))(this, v33 + v60) & 1) == 0)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return 0;
        }

        goto LABEL_109;
      }

      goto LABEL_68;
    }

    if (v65 <= 1415139396)
    {
      if (v65 != 1398031177)
      {
        if (v65 != 1413829459)
        {
          goto LABEL_67;
        }

        LOBYTE(v63) = 0;
        if ((*(*this + 368))(this, &v63, 1) != 1)
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return 0;
          }

          goto LABEL_109;
        }

        *(a3 + 105) = v63;
        goto LABEL_68;
      }

      v27 = malloc_type_malloc(v60, 0x100004077774924uLL);
      v28 = (*(*this + 368))(this, v27, v60);
      if (v28 != v60)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return 0;
        }

        goto LABEL_109;
      }

      MTLLibraryDataWithArchive::decodeSTCIToken(&v63, v27, v60);
      v29 = *(&v63 + 1);
      v58 = v63;
      std::vector<MTLUINT256_t>::__assign_with_size[abi:ne200100]<MTLUINT256_t*,MTLUINT256_t*>(a4 + 7, *(&v63 + 1), v64, &v64[-*(&v63 + 1)] >> 5);
      free(v27);
      if (v29)
      {
        operator delete(v29);
      }

LABEL_52:
      v59 = 1;
      goto LABEL_68;
    }

    if (v65 == 1415139397)
    {
      LOBYTE(v63) = 0;
      if ((*(*this + 368))(this, &v63, 1) != 1)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return 0;
        }

        goto LABEL_109;
      }

      if (v63 <= 8u && ((0x1F7u >> v63) & 1) != 0)
      {
        *a4 = qword_185DE2820[v63];
        v16 |= 2u;
      }
    }

    else
    {
      if (v65 != 1447383635)
      {
        goto LABEL_67;
      }

      if ((*(*this + 368))(this, &v62, 8) != 8)
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return 0;
        }

        goto LABEL_109;
      }

      *&a3->airMajorVersion = v62;
    }

LABEL_68:
    v18 = v65;
  }

  while (v18 != 1162757204);
  if ((v16 & 0xF) == 0)
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    MTLLibraryDataWithArchive::getFunctionAtOffset(result, v35, v36, v37, v38, v39, v40, v41);
    return 0;
  }

  a3->airScript = 0;
  if (v59)
  {
    (*(*this + 360))(this, *(this + 75) + v58);
    *&v63 = 0;
    v61 = 0;
    v60 = 0;
    if ((*(*this + 384))(this, &v63, &v61, &v60))
    {
      a3->airScript = dispatch_data_create(v63, v61, 0, 0);
      free(v63);
    }
  }

  privateArgumentsOffset = a3->privateArgumentsOffset;
  a3->publicArgumentsOffset += *(this + 24);
  a3->privateArgumentsOffset = privateArgumentsOffset + *(this + 26);
  a3->bitCodeOffset += *(this + 28);
  return 1;
}

void sub_185BA9708(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (std::equal_to<std::string>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

_MTLFunctionInternal *MTLLibraryDataWithArchive::newFunction(MTLLibraryDataWithArchive *a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(&v30, [a2 UTF8String]);
  v6 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(a1 + 35, &v30);
  v7 = v6;
  if ((SHIBYTE(v30.publicArgumentsOffset) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  operator delete(v30.bitCodeOffset);
  if (!v7)
  {
    return 0;
  }

LABEL_3:
  v8 = v7[5];
  v30.bitcodeType = 0;
  v30.pluginData = 0;
  *&v30.renderTargetArrayIndexType = 0;
  v30.functionInputs = 0;
  v30.airScript = 0;
  memset(&v30, 0, 56);
  v29 = 0;
  *v28 = 0u;
  v27 = 0u;
  *v26 = 0u;
  *v25 = 0u;
  if (MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v8, &v30, &v24))
  {
    if (*(a1 + 48))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, [a2 UTF8String]);
      v9 = std::__hash_table<std::__hash_value_type<std::string,DataBlock>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,DataBlock>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,DataBlock>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,DataBlock>>>::find<std::string>(a1 + 45, __p);
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      if (v9)
      {
        v30.airScript = v9[5];
        std::__hash_table<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,NSObject  {objcproto16OS_dispatch_data}*>>>::erase(a1 + 45, v9);
      }
    }

    if (SHIBYTE(v26[0]) < 0)
    {
      if (v25[1])
      {
        goto LABEL_11;
      }
    }

    else if (HIBYTE(v26[0]))
    {
LABEL_11:
      v10 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (SHIBYTE(v26[0]) >= 0)
      {
        v11 = v25;
      }

      else
      {
        v11 = v25[0];
      }

      v12 = [v10 initWithUTF8String:v11];
      goto LABEL_20;
    }

    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:a2];
LABEL_20:
    v14 = v12;
    v15 = [_MTLFunctionInternal alloc];
    v16 = [(_MTLFunctionInternal *)v15 initWithName:v14 type:v24 libraryData:a1 functionData:&v30 device:a3];
    v13 = v16;
    if (*(a1 + 53))
    {
      v17 = *(a1 + 54);
      v20 = *(a1 + 53);
      v21 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [(_MTLFunctionInternal *)v16 setTrackingData:&v20];
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }

    if (*(a1 + 66))
    {
      if (v13)
      {
        v18 = [(_MTLFunctionInternal *)v13 sourceArchiveOffset];
        if (v18 != -1)
        {
          [(_MTLFunctionInternal *)v13 setSourceArchiveOffset:*(a1 + 65) + v18];
        }
      }
    }

    goto LABEL_29;
  }

  v13 = 0;
LABEL_29:
  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[1]);
  }

  if (SHIBYTE(v26[0]) < 0)
  {
    operator delete(v25[0]);
  }

  return v13;
}

void sub_185BA9B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  MTLLibraryDataWithArchive::AdditionalFunctionData::~AdditionalFunctionData(&a18);
  _Unwind_Resume(a1);
}

void MTLLibraryDataWithArchive::readFunctionPublicOrPrivateMetadata(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v151 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 360))(a1, a2) & 1) == 0)
  {

    MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6595, @"Invalid library file/data (unexpected end of file)", v11, v12, v13, v14, a9);
    return;
  }

  v150 = 0;
  if ((*(*a1 + 368))(a1, &v150, 4) != 4)
  {
    MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6600, @"Invalid library file/data (unexpected end of file)", v15, v16, v17, v18, v140);
    return;
  }

  v19 = 0;
  v20 = 0;
  v149 = 0;
  v148 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  while (1)
  {
    if ((*(*a1 + 368))(a1, &v148, 4) != 4)
    {
      MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6612, @"Invalid library file/data (unexpected end of file)", v21, v22, v23, v24, v140);
      goto LABEL_166;
    }

    v25 = v148;
    v26 = bswap32(v148);
    v148 = v26;
    v144 = 0;
    if (v25 == 1413762629)
    {
      goto LABEL_141;
    }

    if ((*(*a1 + 368))(a1, &v144, 2) != 2)
    {
      v139 = 6619;
      goto LABEL_156;
    }

    if (v148 > 1129206611)
    {
      break;
    }

    if (v148 <= 1095911234)
    {
      if (v148 == 1095192643)
      {
        if ((*(*a1 + 368))(a1, &v149, 2) == 2)
        {
          goto LABEL_140;
        }

        v139 = 6761;
LABEL_156:
        MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", v139, @"Invalid library file/data (unexpected end of file)", v27, v28, v29, v30, v140);
        goto LABEL_166;
      }

      if (v148 == 1095192660)
      {
        MEMORY[0x1EEE9AC00](2);
        v56 = (*(*a1 + 368))(a1);
        if (v56 != v144)
        {
          MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6769, @"Invalid library file/data (unexpected end of file)", v57, v58, v59, v60, v140);
          goto LABEL_166;
        }

        goto LABEL_140;
      }
    }

    else
    {
      switch(v148)
      {
        case 0x41524743u:
          if ((*(*a1 + 368))(a1, &v149, 2) == 2)
          {
            goto LABEL_140;
          }

          v139 = 6744;
          goto LABEL_156;
        case 0x41524752u:
          MEMORY[0x1EEE9AC00](2);
          v69 = &v140 - v68;
          v70 = (*(*a1 + 368))(a1, &v140 - v68, v144);
          if (v70 != v144)
          {
            MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6791, @"Invalid library file/data (unexpected end of file)", v71, v72, v73, v74, v140);
            goto LABEL_166;
          }

          v141 = v19;
          v143 = 0;
          if (v144)
          {
            v75 = *v69;
            v143 = 1;
          }

          else
          {
            v75 = 0;
          }

          v123 = [MEMORY[0x1E695DF70] arrayWithCapacity:v75];
          if (v75)
          {
            for (i = 0; i != v75; ++i)
            {
              v125 = v143;
              if (v143 >= v144)
              {
LABEL_124:
                v127 = 0;
                v143 = v125;
              }

              else
              {
                v126 = v143;
                while (v69[v126])
                {
                  if (++v126 >= v144)
                  {
                    LODWORD(v125) = v144;
                    goto LABEL_124;
                  }
                }

                v143 = v126 + 1;
                v127 = &v69[v125];
              }

              if (v127)
              {
                v128 = v127;
              }

              else
              {
                v128 = "";
              }

              v129 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v128];
              if (v143 >= v144)
              {
                v130 = MTLDataTypeNone;
              }

              else
              {
                v130 = v69[v143++];
              }

              v131 = typeFromBuffer(v130, v69, &v143, v144);
              v132 = [[MTLBindingInternal alloc] initWithName:v129 type:18 access:0 index:0 active:1 arrayLength:1 typeDescription:v131];
              [v123 setObject:v132 atIndexedSubscript:i];
            }
          }

          [a3 setArguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithArray:", v123)}];
          v19 = v141;
          goto LABEL_140;
        case 0x41524754u:
          MEMORY[0x1EEE9AC00](2);
          v41 = (*(*a1 + 368))(a1);
          if (v41 != v144)
          {
            MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6752, @"Invalid library file/data (unexpected end of file)", v42, v43, v44, v45, v140);
            goto LABEL_166;
          }

          goto LABEL_140;
      }
    }

LABEL_137:
    v134 = (*(*a1 + 392))(a1);
    if (((*(*a1 + 360))(a1, v134 + v144) & 1) == 0)
    {
      v139 = 6842;
      goto LABEL_156;
    }

LABEL_140:
    v26 = v148;
LABEL_141:
    if (v26 == 1162757204)
    {
LABEL_149:
      if (v146 != v145)
      {
        v135 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:? count:?];
        [a3 setFunctionConstants:v135];

        v136 = v145;
        v137 = v146;
        while (v136 != v137)
        {
        }
      }

      if (v20)
      {
        v138 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:v19];
        free(v20);
        v20 = 0;
        [a3 setVertexAttributes:v138];
      }

      goto LABEL_166;
    }
  }

  if (v148 <= 1380275281)
  {
    switch(v148)
    {
      case 0x434E5354u:
        v76 = malloc_type_malloc(v144, 0x100004077774924uLL);
        v77 = (*(*a1 + 368))(a1, v76, v144);
        if (v77 != v144)
        {
          MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6630, @"Invalid library file/data (unexpected end of file)", v78, v79, v80, v81, v140);
          goto LABEL_166;
        }

        if (v144 >= 2u && (v82 = *v76, *v76))
        {
          v141 = a3;
          v142 = v20;
          std::vector<NSValue *>::reserve(&v145, ((v146 - v145) >> 3) + v82);
          v83 = 0;
          LODWORD(a3) = 2;
          do
          {
            v84 = v144;
            v85 = a3;
            if (a3 >= v144)
            {
              v86 = v19;
LABEL_60:
              v87 = &stru_1EF478240;
            }

            else
            {
              a3 = a3;
              while (*(v76 + a3))
              {
                if (++a3 >= v144)
                {
                  v86 = v19;
                  LODWORD(a3) = v144;
                  goto LABEL_60;
                }
              }

              v86 = v19;
              v87 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v76 + v85];
              LODWORD(a3) = a3 + 1;
              v84 = v144;
            }

            v88 = a3;
            if (v84 <= a3)
            {
              v89 = 0;
            }

            else
            {
              a3 = (a3 + 1);
              v89 = *(v76 + v88);
              v88 = a3;
            }

            v90 = v88 + 2;
            if (v88 + 2 <= v84)
            {
              v91 = *(v76 + v88);
              v88 = v90;
              LODWORD(a3) = v90;
            }

            else
            {
              v91 = 0;
            }

            if (v88 >= v84)
            {
              v92 = 0;
            }

            else
            {
              LODWORD(a3) = a3 + 1;
              v92 = *(v76 + v88) != 0;
            }

            v93 = [[MTLFunctionConstantInternal alloc] initWithName:v87 type:v89 index:v91 required:v92];
            v94 = v146;
            if (v146 >= v147)
            {
              v96 = (v146 - v145) >> 3;
              if ((v96 + 1) >> 61)
              {
                std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
              }

              v97 = (v147 - v145) >> 2;
              if (v97 <= v96 + 1)
              {
                v97 = v96 + 1;
              }

              if (v147 - v145 >= 0x7FFFFFFFFFFFFFF8)
              {
                v98 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v98 = v97;
              }

              if (v98)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(&v145, v98);
              }

              *(8 * v96) = v93;
              v95 = 8 * v96 + 8;
              v99 = (8 * v96 - (v146 - v145));
              memcpy(v99, v145, v146 - v145);
              v100 = v145;
              v145 = v99;
              v146 = v95;
              v147 = 0;
              if (v100)
              {
                operator delete(v100);
              }
            }

            else
            {
              *v146 = v93;
              v95 = (v94 + 8);
            }

            v19 = v86;
            v146 = v95;
            ++v83;
            v20 = v142;
          }

          while (v83 != v82);
          free(v76);
          a3 = v141;
        }

        else
        {
          free(v76);
        }

        goto LABEL_140;
      case 0x44454249u:
        MEMORY[0x1EEE9AC00](2);
        v47 = (&v140 - v46);
        v48 = (*(*a1 + 368))(a1, &v140 - v46, v144);
        if (v48 != v144)
        {
          MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6821, @"Invalid library file/data (unexpected end of file)", v49, v50, v51, v52, v140);
          goto LABEL_166;
        }

        [a3 setLineNumber:*v47];
        if (v144 >= 5uLL)
        {
          v53 = (v47 + 1);
          v54 = v144 - 4;
          while (*v53++)
          {
            if (!--v54)
            {
              goto LABEL_140;
            }
          }

          [a3 setFilePath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v47 + 1)}];
        }

        goto LABEL_140;
      case 0x454E4454u:
        goto LABEL_149;
    }

    goto LABEL_137;
  }

  if (v148 == 1380275282)
  {
    MEMORY[0x1EEE9AC00](2);
    v102 = &v140 - v101;
    v103 = (*(*a1 + 368))(a1, &v140 - v101, v144);
    if (v103 != v144)
    {
      MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6778, @"Invalid library file/data (unexpected end of file)", v104, v105, v106, v107, v140);
      goto LABEL_166;
    }

    v143 = 0;
    if (v144)
    {
      v108 = *v102;
      v143 = 1;
    }

    else
    {
      v108 = MTLDataTypeNone;
    }

    v133 = typeFromBuffer(v108, v102, &v143, v144);
    [a3 setReturnType:v133];

    goto LABEL_140;
  }

  if (v148 == 1447122004)
  {
    MEMORY[0x1EEE9AC00](2);
    v62 = (&v140 - v61);
    v63 = (*(*a1 + 368))(a1, &v140 - v61, v144);
    if (v63 != v144)
    {
      MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6658, @"Invalid library file/data (unexpected end of file)", v64, v65, v66, v67, v140);
      goto LABEL_166;
    }

    if (v144 > 1u)
    {
      v149 = *v62;
      if (v149 && !v20)
      {
        v20 = malloc_type_malloc(8 * v149, 0x80040B8603338uLL);
        bzero(v20, 8 * v149);
        if (v149)
        {
          v109 = a3;
          v110 = 0;
          v111 = 2;
          do
          {
            if (v111 >= v144)
            {
              v113 = 0;
            }

            else
            {
              v112 = v111;
              while (*(v62 + v112))
              {
                if (v144 <= ++v112)
                {
                  v113 = 0;
                  v111 = v144;
                  goto LABEL_102;
                }
              }

              v113 = v62 + v111;
              v111 = (v112 + 1);
            }

LABEL_102:
            if (v113)
            {
              v114 = v113;
            }

            else
            {
              v114 = "";
            }

            v115 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v114];
            if (v111 + 2 <= v144)
            {
              v116 = *(v62 + v111);
              v111 = (v111 + 2);
              v118 = v116 >> 15;
              v119 = (v116 >> 13) & 3;
              v120 = v118 | 2;
              if (v119 == 2)
              {
                v118 |= 4uLL;
              }

              if (v119 == 1)
              {
                v117 = v120;
              }

              else
              {
                v117 = v118;
              }
            }

            else
            {
              LOWORD(v116) = 0;
              v117 = 0;
            }

            v121 = [v109 functionType];
            v122 = off_1E6EEA270;
            if (v121 != 1)
            {
              v122 = off_1E6EE9E40;
            }

            *(v20 + v110++) = [objc_alloc(*v122) initWithName:v115 attributeIndex:v116 & 0x1FFF attributeType:0 flags:v117];
            v19 = v149;
          }

          while (v110 < v149);
          a3 = v109;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v149 = 0;
    }

    goto LABEL_140;
  }

  if (v148 != 1447122009)
  {
    goto LABEL_137;
  }

  v31 = a3;
  v32 = malloc_type_malloc(v144, 0x100004077774924uLL);
  v33 = (*(*a1 + 368))(a1, v32, v144);
  if (v33 != v144)
  {
    MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6719, @"Invalid library file/data (unexpected end of file)", v34, v35, v36, v37, v140);
    goto LABEL_164;
  }

  if (v144 >= 2u && v20 && *v32 && *v32 == v149)
  {
    v38 = 0;
    v39 = 2;
    do
    {
      if (v39 >= v144)
      {
        v40 = 0;
      }

      else
      {
        v40 = *(v32 + v39++);
      }

      [*(v20 + v38++) setAttributeType:v40];
    }

    while (v38 < v149);
    free(v32);
    a3 = v31;
    goto LABEL_140;
  }

  MTLReportFailure(0, "readFunctionPublicOrPrivateMetadata", 6726, @"Invalid library file/data (bad VATY token)", v34, v35, v36, v37, v140);
LABEL_164:
  if (v32)
  {
    free(v32);
  }

LABEL_166:
  if (v145)
  {
    v146 = v145;
    operator delete(v145);
  }

  if (v20)
  {
    free(v20);
  }
}

void sub_185BAAB60(_Unwind_Exception *exception_object)
{
  *(v3 - 144) = v1;
  if (v2)
  {
    free(v2);
  }

  v5 = *(v3 - 128);
  if (v5)
  {
    *(v3 - 120) = v5;
    operator delete(v5);
  }

  if (*(v3 - 144))
  {
    free(*(v3 - 144));
  }

  _Unwind_Resume(exception_object);
}

void MTLLibraryDataWithArchive::readFunctionMetadata(MTLLibraryDataWithArchive *a1, unint64_t a2, _MTLFunction *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a4 == 2)
  {
    MTLLibraryDataWithArchive::readFunctionSourceArchiveMetadata(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    MTLLibraryDataWithArchive::readFunctionPublicOrPrivateMetadata(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}