void _addContinuousCornerToPath(CGPath *a1, uint64_t a2, int a3, int a4, __n128 a5, double a6, double a7, double a8)
{
  v8 = a3;
  v9 = a2;
  v10 = a5.n128_f64[0];
  if (a7 >= a8)
  {
    v12 = a8;
  }

  else
  {
    v12 = a7;
  }

  v13 = 0.980263;
  if (a4)
  {
    v13 = 1.0;
    v14 = v12;
  }

  else
  {
    v14 = v12 * 0.95;
  }

  v69 = v13;
  v15 = 0.0;
  if ((a2 - 1) <= 3)
  {
    v15 = dbl_1A782D050[(a2 - 1)];
  }

  v16 = v14 * (1.0 - v13);
  if (a3 == 2)
  {
    v17 = -v16;
    v68 = 70.0;
    v18 = *MEMORY[0x1E695EFF8];
  }

  else if (a3 == 1)
  {
    v15 = v15 + 20.0;
    v18 = -v16;
    v68 = 70.0;
    v17 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else if (a3)
  {
    v15 = v15 + 20.0;
    v68 = 50.0;
    v17 = *(MEMORY[0x1E695EFF8] + 8);
    v18 = *MEMORY[0x1E695EFF8];
    v14 = v14 / 1.528665;
  }

  else
  {
    v17 = -v16;
    v68 = 90.0;
    v18 = -v16;
  }

  v19 = _interiorPointForCorner(a2, v18, v17, *MEMORY[0x1E695EFF8]);
  v66 = v20;
  v67 = v19;
  v21 = v14 * 0.33 * 0.666666667;
  v22 = v21 * 1.05304313 + (v14 / 1.05304313 + v21 * 0.33 / 1.05304313) * 0.67;
  v23 = v21 * 1.05304313 + v22;
  v24 = v21 * 1.05304313 + v21 * 1.05304313 + v23;
  v25 = _interiorPointForCorner(v9, 0.0, v22, v10);
  v64 = v26;
  v65 = v25;
  v27 = _interiorPointForCorner(v9, 0.0, v23, v10);
  v62 = v28;
  v63 = v27;
  v29 = _interiorPointForCorner(v9, 0.0, v24, v10);
  v60 = v30;
  v61 = v29;
  v31 = _interiorPointForCorner(v9, v14, v14, v10);
  v70 = v32;
  v71 = v31;
  v33 = _interiorPointForCorner(v9, 0.0, v12, v10);
  v58 = v34;
  v59 = v33;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeTranslation(&m, v67, v66);
  v35 = v69 * v14;
  v36 = (v15 + 0.0) * 0.0174532925;
  v37 = (v68 + v15) * 0.0174532925;
  if (v8)
  {
    v46 = __sincos_stret(v36);
    v47 = _interiorPointForCorner(v9, v22, 0.0, v10);
    v49 = v48;
    v38 = _interiorPointForCorner(v9, v23, 0.0, v10);
    p_m = &m;
    v40 = a1;
    v42 = v47;
    v43 = v49;
    v44 = v71 + v35 * v46.__cosval;
    v45 = v70 + v35 * v46.__sinval;
  }

  else
  {
    v38 = _interiorPointForCorner(v9, v12, 0.0, v10);
    v40 = a1;
    p_m = 0;
    v42 = v38;
    v43 = v39;
    v44 = v38;
    v45 = v39;
  }

  CGPathAddCurveToPoint(v40, p_m, v38, v39, v42, v43, v44, v45);
  CGPathAddArc(a1, &m, v71, v70, v35, v36, v37, 0);
  if ((v8 & 2) != 0)
  {
    v51 = &m;
    v50 = a1;
    v53 = v64;
    v52 = v65;
    v55 = v62;
    v54 = v63;
    v57 = v60;
    v56 = v61;
  }

  else
  {
    v50 = a1;
    v51 = 0;
    v53 = v58;
    v52 = v59;
    v54 = v59;
    v55 = v58;
    v56 = v59;
    v57 = v58;
  }

  CGPathAddCurveToPoint(v50, v51, v52, v53, v54, v55, v56, v57);
}

double _interiorPointForCorner(int a1, double a2, double a3, double a4)
{
  if (a1 > 3)
  {
    v5 = a2 + a4;
    v6 = a4 - a3;
    if (a1 == 8)
    {
      a2 = v6;
    }

    if (a1 == 4)
    {
      return v5;
    }

    else
    {
      return a2;
    }
  }

  else if (a1 == 1)
  {
    return a3 + a4;
  }

  else
  {
    v4 = a4 - a2;
    if (a1 != 2)
    {
      return a2;
    }
  }

  return v4;
}

id hintedShadowBlur(uint64_t a1)
{
  if (hintedShadowBlur_onceToken_0 != -1)
  {
    hintedShadowBlur_cold_1();
  }

  v2 = hintedShadowBlur_value_0;

  return v2;
}

uint64_t __hintedShadowBlur_block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:3];
  v1 = hintedShadowBlur_value_0;
  hintedShadowBlur_value_0 = v0;

  [hintedShadowBlur_value_0 addHintedFloat:1.0 forSize:{16.0, 16.0}];
  v2 = hintedShadowBlur_value_0;

  return [v2 addHintedFloat:6.0 forSize:{512.0, 512.0}];
}

id hintedShadowSpread(uint64_t a1)
{
  if (hintedShadowSpread_onceToken != -1)
  {
    hintedShadowSpread_cold_1();
  }

  v2 = hintedShadowSpread_value;

  return v2;
}

uint64_t __hintedShadowSpread_block_invoke()
{
  v0 = [(ISHintedValue *)[ISHintedFloat alloc] initWithOptions:3];
  v1 = hintedShadowSpread_value;
  hintedShadowSpread_value = v0;

  [hintedShadowSpread_value addHintedFloat:0.0 forSize:{16.0, 16.0}];
  v2 = hintedShadowSpread_value;

  return [v2 addHintedFloat:2.0 forSize:{512.0, 512.0}];
}

void sub_1A77FE86C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = _ISDefaultLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(ISIconResourceLocator *)v2 initWithCoder:v3];
    }

    objc_end_catch();
    JUMPOUT(0x1A77FE830);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ISIsResourceKey(void *a1)
{
  v1 = ISIsResourceKey_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    ISIsResourceKey_cold_1();
  }

  v3 = [ISIsResourceKey_resourceKeys containsObject:v2];

  return v3;
}

void __ISIsResourceKey_block_invoke()
{
  v4[8] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"kISPrimaryResourceKey";
  v4[1] = @"kISSecondaryResourceKey";
  v4[2] = @"kISTertiaryResourceKey";
  v4[3] = @"kISPrimaryDarkResourceKey";
  v4[4] = @"kISBackgroundResourceKey";
  v4[5] = @"kISTintColorResourceKey";
  v4[6] = @"kISTextResourceKey";
  v4[7] = @"kISBadgeResourceKey";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:8];
  v2 = [v0 setWithArray:v1];
  v3 = ISIsResourceKey_resourceKeys;
  ISIsResourceKey_resourceKeys = v2;
}

uint64_t ISAccelerateIconCreateScaledCGImage(CGImage *a1, int a2, int a3)
{
  memset(&src, 0, sizeof(src));
  memset(&v19, 0, sizeof(v19));
  memset(&dest, 0, sizeof(dest));
  v17 = 0;
  v13[0] = 0x2000000008;
  v13[1] = CGImageGetColorSpace(a1);
  v14 = 1;
  v15 = 0;
  v16 = 0;
  v21 = MEMORY[0x1AC55BA20](&src, v13, 0, a1, 0);
  if (v21 || (v21 = MEMORY[0x1AC55BA10](&v19, a3, a2, 32, 0)) != 0)
  {
    v6 = 0;
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  height = src.height;
  width = src.width;
  v11 = (a3 - 1) / (LODWORD(src.height) - 1);
  v6 = NewLanczos2Filter(v11);
  if (!v6)
  {
    goto LABEL_4;
  }

  v21 = MEMORY[0x1AC55BA10](&dest, a3, width, 32, 0);
  if (v21)
  {
    goto LABEL_4;
  }

  v21 = vImageVerticalShear_ARGB8888(&src, &dest, 0, 0, ((height + ~a3) * v11) + 0.5, 0.0, v6, 0, 8u);
  if (v21)
  {
    goto LABEL_4;
  }

  if (width * a3 != height * a2)
  {
    vImageDestroyResamplingFilter(v6);
    v12 = (a2 - 1) / (width - 1);
    v6 = NewLanczos2Filter(v12);
    if (!v6)
    {
      goto LABEL_4;
    }
  }

  v21 = vImageHorizontalShear_ARGB8888(&dest, &v19, 0, 0, 0.5, 0.0, v6, 0, 8u);
  if (v21)
  {
    goto LABEL_4;
  }

  v7 = MEMORY[0x1AC55BA30](&v19, v13, 0, 0, 512, &v21);
LABEL_5:
  if (src.data)
  {
    free(src.data);
  }

  if (dest.data)
  {
    free(dest.data);
  }

  if (v6)
  {
    vImageDestroyResamplingFilter(v6);
  }

  return v7;
}

void *NewLanczos2Filter(float a1)
{
  ResamplingFilterSize = vImageGetResamplingFilterSize(a1, Lanczos2, 2.0, 8u);
  v3 = malloc_type_malloc(ResamplingFilterSize, 0xDE5E31EEuLL);
  v4 = v3;
  if (v3)
  {
    vImageNewResamplingFilterForFunctionUsingBuffer(v3, a1, Lanczos2, 2.0, 0, 8u);
  }

  return v4;
}

void Lanczos2(float *a1, float *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a2;
    v6 = 0.0;
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = *a1;
      v10 = fabsf(*a1);
      v11 = 0.0;
      if (v10 < 2.0)
      {
        v11 = 1.0;
        if (v10 >= 0.000000059605)
        {
          v12 = sinf(v9 * 3.1416);
          v11 = (v12 * sinf((v9 * 3.1416) * 0.5)) / ((v9 * ((v9 * 3.1416) * 3.1416)) * 0.5);
        }
      }

      *v7++ = v11;
      v6 = v6 + v11;
      ++a1;
      --v8;
    }

    while (v8);
    do
    {
      *v4 = (1.0 / v6) * *v4;
      ++v4;
      --v3;
    }

    while (v3);
  }
}

uint64_t ISSegmentationSamples_readUcharSampleOpacity_i(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    a2 += a2 / *a1 * v2;
  }

  if ((*(a1 + 12) | 2) == 3)
  {
    return *(*(a1 + 16) + 4 * a2 + 3);
  }

  else
  {
    return 1;
  }
}

uint64_t ISSegmentationSamples_readUcharSampleOpacity_xy(uint64_t a1, int a2, int a3)
{
  v3 = a2 + *a1 * a3;
  v4 = *(a1 + 8);
  if (v4 >= 1)
  {
    v3 += v3 / *a1 * v4;
  }

  if ((*(a1 + 12) | 2) == 3)
  {
    return *(*(a1 + 16) + 4 * v3 + 3);
  }

  else
  {
    return 1;
  }
}

uint64_t ISSegmentationSamples_readSample_xy(__int128 *a1, int a2, int a3, float32x4_t *a4, _DWORD *a5)
{
  v5 = a2 + *a1 * a3;
  v7 = *a1;
  v8 = *(a1 + 2);
  return ISAccelerateIconSegmentationSamples_readSample_i(&v7, v5, a4, a5, *&v7);
}

int8x8_t ISSegmentationSamples_readOpaqueUcharSample_i(uint64_t a1, int a2, _DWORD *a3, uint8x8_t a4)
{
  v4 = *(a1 + 8);
  if (v4 >= 1)
  {
    a2 += a2 / *a1 * v4;
  }

  a4.i32[0] = *(*(a1 + 16) + 4 * a2);
  result = vmovl_u8(a4).u64[0];
  v7 = result.i8[6] == -1 || *(a1 + 12) == 5;
  if (a3)
  {
    if (v7)
    {
      result = vuzp1_s8(result, result);
      *a3 = result.i32[0];
    }
  }

  return result;
}

uint64_t ISSegmentationSamples_readAlmostOpaqueSample_i(uint64_t a1, int a2, float32x4_t *a3, _DWORD *a4, uint8x8_t a5)
{
  if (a4)
  {
    return ISAccelerateIconSegmentationSamples_readAlmostOpaqueSample_i(a1, a2, a3, a4, a5);
  }

  else
  {
    return ISAccelerateIconSegmentationSamples_readAlmostOpaqueSample_i_NoOpacity(a1, a2, a3, a5);
  }
}

uint64_t ISSegmentationSamples_readAlmostOpaqueSample_xy(__int128 *a1, int a2, int a3, float32x4_t *a4, _DWORD *a5)
{
  v5 = a2 + *a1 * a3;
  v7 = *a1;
  v8 = *(a1 + 2);
  return ISSegmentationSamples_readAlmostOpaqueSample_i(&v7, v5, a4, a5, *&v7);
}

int8x8_t ISSegmentationSamples_writeSample_i(uint64_t a1, int a2, float32x4_t a3, float a4)
{
  v4 = *(a1 + 8);
  if (v4 >= 1)
  {
    a2 += a2 / *a1 * v4;
  }

  *&v5 = vmuls_lane_f32(255.0, a3, 2);
  v6.i64[0] = vmulq_f32(a3, vdupq_n_s32(0x437F0000u)).u64[0];
  v6.i64[1] = v5 | 0x437F000000000000;
  *v6.f32 = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v6, a4)));
  result = vuzp1_s8(*v6.f32, *v6.f32);
  *(*(a1 + 16) + 4 * a2) = result.i32[0];
  return result;
}

int8x8_t ISSegmentationSamples_writeSample_xy(__int128 *a1, int a2, int a3, float32x4_t a4, float a5)
{
  v5 = a2 + *a1 * a3;
  v7 = *a1;
  v8 = *(a1 + 2);
  return ISSegmentationSamples_writeSample_i(&v7, v5, a4, a5);
}

uint64_t ISSegmentationMask_writeMaskValue_xy(uint64_t result, int a2, int a3, char a4)
{
  v4 = a2 + *result * a3;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= 1)
  {
    v4 += v4 / *result * v5;
  }

  v7 = (v6 + v4);
  v8 = v6 + 4 * v4 + 3;
  if (*(result + 12))
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  *v9 = a4;
  return result;
}

__CFData *ISCreateCGImageMaskUchar(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v6 = (a2 * a1);
  result = CFDataCreateMutable(*MEMORY[0x1E695E480], v6);
  if (result)
  {
    v8 = result;
    CFDataSetLength(result, v6);
    MutableBytePtr = CFDataGetMutableBytePtr(v8);
    if (a1 >= 1)
    {
      v10 = 0;
      do
      {
        if (a2 >= 1)
        {
          v11 = 0;
          v12 = a2;
          do
          {
            MutableBytePtr[v11] = ~*(a3 + v11);
            v11 += a1;
            --v12;
          }

          while (v12);
        }

        ++v10;
        ++MutableBytePtr;
        ++a3;
      }

      while (v10 != a1);
    }

    v13 = CGDataProviderCreateWithCFData(v8);
    v14 = CGImageMaskCreate(a1, a2, 8uLL, 8uLL, a1, v13, 0, 0);
    CGDataProviderRelease(v13);
    CFRelease(v8);
    return v14;
  }

  return result;
}

__CFData *ISCreateCGImageUchar4AlphaPremultiplied(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v6 = 4 * (a2 * a1);
  result = CFDataCreateMutable(*MEMORY[0x1E695E480], v6);
  if (result)
  {
    v8 = result;
    CFDataSetLength(result, v6);
    MutableBytePtr = CFDataGetMutableBytePtr(v8);
    if (a1 >= 1)
    {
      v10 = 0;
      do
      {
        if (a2 >= 1)
        {
          v11 = 0;
          v12 = a2;
          do
          {
            *&MutableBytePtr[v11] = *(a3 + v11);
            v11 += 4 * a1;
            --v12;
          }

          while (v12);
        }

        ++v10;
        MutableBytePtr += 4;
        a3 += 4;
      }

      while (v10 != a1);
    }

    v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v14 = CGDataProviderCreateWithCFData(v8);
    v15 = CGImageCreate(a1, a2, 8uLL, 0x20uLL, 4 * a1, v13, 1u, v14, 0, 0, kCGRenderingIntentDefault);
    CGColorSpaceRelease(v13);
    CGDataProviderRelease(v14);
    CFRelease(v8);
    return v15;
  }

  return result;
}

__CFData *ISCreateCGImageSegmentationSamples(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 * v2);
  result = CFDataCreateMutable(*MEMORY[0x1E695E480], 4 * v4);
  if (result)
  {
    v6 = result;
    CFDataSetLength(result, 4 * v4);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = a1[2];
        if (v9 < 1)
        {
          v10 = i;
        }

        else
        {
          v10 = i + i / *a1 * v9;
        }

        *&MutableBytePtr[4 * i] = *(*(a1 + 2) + 4 * v10);
      }
    }

    v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v12 = CGDataProviderCreateWithCFData(v6);
    v13 = CGImageCreate(v2, v3, 8uLL, 0x20uLL, 4 * v2, v11, a1[3], v12, 0, 0, kCGRenderingIntentDefault);
    CGColorSpaceRelease(v11);
    CGDataProviderRelease(v12);
    CFRelease(v6);
    return v13;
  }

  return result;
}

__CFData *ISCreateAlphaPremultipliedCGImageSegmentationMask(int *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v3 * v2);
  result = CFDataCreateMutable(*MEMORY[0x1E695E480], 4 * v4);
  if (result)
  {
    v6 = result;
    CFDataSetLength(result, 4 * v4);
    MutableBytePtr = CFDataGetMutableBytePtr(v6);
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        v9 = a1[2];
        if (v9 < 1)
        {
          v10 = i;
        }

        else
        {
          v10 = i + i / *a1 * v9;
        }

        v11 = *(a1 + 2);
        v12 = v11 + 4 * v10 + 3;
        v13 = (v11 + v10);
        if (a1[3])
        {
          v13 = v12;
        }

        v14 = vld1_dup_s8(v13).u32[0];
        *&MutableBytePtr[4 * i] = v14;
      }
    }

    v15 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v16 = CGDataProviderCreateWithCFData(v6);
    v17 = CGImageCreate(v2, v3, 8uLL, 0x20uLL, 4 * v2, v15, 1u, v16, 0, 0, kCGRenderingIntentDefault);
    CGColorSpaceRelease(v15);
    CGDataProviderRelease(v16);
    CFRelease(v6);
    return v17;
  }

  return result;
}

CGImageRef ISCreateCroppedCGImage(CGImage *a1, int32x4_t a2, float a3)
{
  if (!a1)
  {
    return 0;
  }

  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v7 = Height;
  if (a3 == 0.0)
  {
    v8.i64[0] = 0;
    v8.i64[1] = __PAIR64__(Height, Width);
    if ((vminvq_u32(vceqq_s32(v8, a2)) & 0x80000000) != 0)
    {

      return CGImageRetain(a1);
    }
  }

  ColorSpace = CGImageGetColorSpace(a1);
  v11 = CGBitmapContextCreate(0, a2.i32[2], a2.i32[3], 8uLL, 0, ColorSpace, 1u);
  v12 = a2.i64[0];
  if (!v11)
  {
    return 0;
  }

  v13 = v11;
  if (a3 > 0.0)
  {
    v14 = CGPathCreateWithContinuousRoundedRect();
    CGContextAddPath(v13, v14);
    CGContextClip(v13);
    CGPathRelease(v14);
    v12 = a2.i64[0];
  }

  v18.origin.x = -v12;
  v18.origin.y = (HIDWORD(v12) + a2.i32[3] - v7);
  v18.size.width = Width;
  v18.size.height = v7;
  CGContextDrawImage(v13, v18, a1);
  Image = CGBitmapContextCreateImage(v13);
  CGContextRelease(v13);
  return Image;
}

CGImage *ISCreateScaledCGImage(CGImage *result, int a2, int a3)
{
  if (result)
  {
    v5 = result;
    Width = CGImageGetWidth(result);
    Height = CGImageGetHeight(v5);
    if (Width == a2 && Height == a3)
    {

      return CGImageRetain(v5);
    }

    else
    {
      result = ISAccelerateIconCreateScaledCGImage(v5, a2, a3);
      if (!result)
      {
        ColorSpace = CGImageGetColorSpace(v5);
        result = CGBitmapContextCreate(0, a2, a3, 8uLL, 0, ColorSpace, 1u);
        if (result)
        {
          v9 = result;
          v12.size.width = a2;
          v12.size.height = a3;
          v12.origin.x = 0.0;
          v12.origin.y = 0.0;
          CGContextDrawImage(result, v12, v5);
          Image = CGBitmapContextCreateImage(v9);
          CGContextRelease(v9);
          return Image;
        }
      }
    }
  }

  return result;
}

id _ISURLCacheLog(uint64_t a1)
{
  if (_ISURLCacheLog_onceToken != -1)
  {
    _ISURLCacheLog_cold_1();
  }

  v2 = _ISURLCacheLog_log;

  return v2;
}

void sub_1A780B800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1A780BA94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = ISIconCache;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1A780C168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55)
{
  _Block_object_dispose(&a44, 8);

  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void backgroundIsContinuousGradientVertically_cold_1(int a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1;
  _os_log_debug_impl(&dword_1A77B8000, log, OS_LOG_TYPE_DEBUG, "# non-continuous at x = %d, y = %d", v3, 0xEu);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x1EEE73558](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

vFloat vexpf(vFloat a1)
{
  v1 = MEMORY[0x1EEDB23F0](a1.i64[0], a1.i64[1]);
  result.i64[1] = v2;
  result.i64[0] = v1;
  return result;
}

void gotLoadHelper_x21__OBJC_CLASS___AFSystemAssistantExperienceStatusManager(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_AssistantServices))
  {
    dlopenHelper_AssistantServices(a1);
  }
}

double dlopenHelper_AssistantServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 0);
  atomic_store(1u, &dlopenHelperFlag_AssistantServices);
  return a1;
}