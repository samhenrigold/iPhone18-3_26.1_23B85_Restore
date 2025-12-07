id PLKLogRendering(uint64_t a1)
{
  if (PLKLogRendering_onceToken != -1)
  {
    PLKLogRendering_cold_1();
  }

  v2 = PLKLogRendering___logObj;

  return v2;
}

id PLKLogCaching(uint64_t a1)
{
  if (PLKLogCaching_onceToken != -1)
  {
    PLKLogCaching_cold_1();
  }

  v2 = PLKLogCaching___logObj;

  return v2;
}

id PLKLogCommon(uint64_t a1)
{
  if (PLKLogCommon_onceToken != -1)
  {
    PLKLogCommon_cold_1();
  }

  v2 = PLKLogCommon___logObj;

  return v2;
}

uint64_t PLKGraphicsContextComponentsCountForType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_21E5F3DB0[a1];
  }
}

id NSStringFromPLKLegibilityFilterOptions(uint64_t a1)
{
  v2 = objc_opt_new();
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __NSStringFromPLKLegibilityFilterOptions_block_invoke;
  v13 = &unk_27835B1B8;
  v3 = v2;
  v14 = v3;
  v4 = &v10;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        v12(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  v8 = [v3 componentsJoinedByString:{v10, v11}];

  return v8;
}

void *__NSStringFromPLKLegibilityFilterOptions_block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return [result addObject:?];
  }

  return result;
}

double PLKDefaultScreenScale(uint64_t a1, uint64_t a2)
{
  if (PLKDefaultScreenScale_onceToken != -1)
  {
    PLKDefaultScreenScale_cold_1();
  }

  return *&PLKDefaultScreenScale_defaultScale;
}

void __PLKDefaultScreenScale_block_invoke()
{
  v1 = [MEMORY[0x277D0AA90] mainConfiguration];
  [v1 pointScale];
  PLKDefaultScreenScale_defaultScale = v0;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x3Au);
}

uint64_t OUTLINED_FUNCTION_2()
{

  return objc_opt_class();
}

void sub_21E5DB56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E5DB7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21E5DC03C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf, int a20, __int16 a21, __int16 a22, uint64_t a23, __int16 a24, __int128 a25)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v26 = objc_begin_catch(a1);
      v27 = PLKLogCaching(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [v25 label];
        v29 = &stru_282F9B218;
        LODWORD(buf) = 138413314;
        v30 = v28;
        if (v28)
        {
          v29 = v28;
        }

        *(&buf + 4) = v29;
        WORD6(buf) = 2048;
        *(&buf + 14) = v25;
        a22 = 2112;
        a24 = 2112;
        WORD1(a25) = 2114;
        *(&a25 + 4) = v26;
        _os_log_error_impl(&dword_21E5D5000, v27, OS_LOG_TYPE_ERROR, "[PLKCachedImageGenerator(%@%p) cacheKeyFutureForObject:%@] exception %{public}@", &buf, 0x34u);
      }

      objc_end_catch();
      JUMPOUT(0x21E5DBE54);
    }

    objc_begin_catch(a1);
    os_unfair_recursive_lock_unlock();
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_21E5DC884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  objc_destroyWeak(&a34);
  objc_destroyWeak((v34 - 176));
  _Unwind_Resume(a1);
}

void sub_21E5DCC10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 buf, int a28, __int16 a29, __int16 a30, id a31)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v32 = objc_begin_catch(a1);
      v33 = PLKLogCaching(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = *(v31 + 56);
        LODWORD(buf) = 138412802;
        *(&buf + 4) = v34;
        WORD6(buf) = 2048;
        *(&buf + 14) = a14;
        a30 = 2114;
        a31 = v32;
        _os_log_error_impl(&dword_21E5D5000, v33, OS_LOG_TYPE_ERROR, "[PLKCachedImageGenerator(%@%p) prewarming] exception thrown: %{public}@", &buf, 0x20u);
      }

      objc_end_catch();
      JUMPOUT(0x21E5DCB2CLL);
    }

    objc_begin_catch(a1);
    os_unfair_recursive_lock_unlock();
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

uint64_t ____generateImageForCacheKey_block_invoke(void *a1, void *a2)
{
  v2 = a1[7];
  if (v2)
  {
    *a2 = *v2;
  }

  return (*(a1[6] + 16))(a1[6], a1[4], a1[5]);
}

uint64_t _UILegibilityStyleForPLKLegibilityStyle(uint64_t a1)
{
  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_21E5E1F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  objc_destroyWeak((v26 + 40));
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v27 - 112));
  _Unwind_Resume(a1);
}

uint64_t __PLKLogCommon_block_invoke()
{
  PLKLogCommon___logObj = os_log_create("com.apple.PosterLegibilityKit", "Common");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLKLogRendering_block_invoke()
{
  PLKLogRendering___logObj = os_log_create("com.apple.PosterLegibilityKit", "Rendering");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLKLogCaching_block_invoke()
{
  PLKLogCaching___logObj = os_log_create("com.apple.PosterLegibilityKit", "Caching");

  return MEMORY[0x2821F96F8]();
}

id PLKLogLabel(uint64_t a1)
{
  if (PLKLogLabel_onceToken != -1)
  {
    PLKLogLabel_cold_1();
  }

  v2 = PLKLogLabel___logObj;

  return v2;
}

uint64_t __PLKLogLabel_block_invoke()
{
  PLKLogLabel___logObj = os_log_create("com.apple.PosterLegibilityKit", "Label");

  return MEMORY[0x2821F96F8]();
}

void sub_21E5E4108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E5E508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t contrast(unint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1 >= 2)
  {
    v8 = a2 / a1;
    v9 = a3 / a1;
    v10 = a4 / a1;
    v11 = 0.0;
    v12 = fmax(a5 / a1 - v8 * v8, 0.0);
    v13 = sqrtf(v12);
    v14 = fmax(a6 / a1 - v9 * v9, 0.0);
    v15 = sqrtf(v14);
    v16 = fmax(a7 / a1 - v10 * v10, 0.0);
    v17 = sqrtf(v16);
    v18 = v13 / v8;
    if (v8 <= 0.0)
    {
      v18 = 0.0;
    }

    v19 = 0.0;
    if (v9 > 0.0)
    {
      v19 = v15 / v9 * 0.7152;
    }

    v20 = v17 / v10;
    if (v10 <= 0.0)
    {
      v20 = 0.0;
    }

    [MEMORY[0x277D75348] _luminanceWithRed:v19 + v18 * 0.2126 + v20 * 0.0722 green:*&v15 blue:?];
    v22 = v21;
    [MEMORY[0x277D75348] _luminanceWithRed:? green:? blue:?];
    if (v22 + v23 > 0.0)
    {
      v11 = (v22 - v23) / (v22 + v23) * 0.4;
    }

    v24 = v29 * v29 + v13 * v13 + v17 * v17;
    v25 = v11 + v28 * 0.4 + sqrtf(v24) / 765.0 * 0.2;
    v26 = llround(fmin(fmax(v25 + v25, 0.0), 1.0) * 255.0);
    v7 = v26 & ~(v26 >> 63);
    if (v7 >= 255)
    {
      LOBYTE(v7) = -1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

uint64_t saturation(unint64_t a1, float64x2_t a2, float64_t a3, double a4, float64x2_t a5, float64_t a6, double a7)
{
  if (a1)
  {
    a2.f64[1] = a3;
    v7 = vdupq_lane_s64(COERCE__INT64(a1), 0);
    v8 = vdivq_f64(a2, v7);
    v9 = a4 / a1;
    v10 = fmax(v8.f64[0] / 255.0, fmax(v8.f64[1] / 255.0, v9 / 255.0));
    v11 = fmin(v8.f64[0] / 255.0, fmin(v8.f64[1] / 255.0, v9 / 255.0));
    v12 = v10 - v11;
    v13 = (v10 - v11) / v10;
    if (v10 <= 0.0)
    {
      v13 = 0.0;
    }

    if (v10 > 0.1)
    {
      v14 = v12 / (v10 + 0.0001) * 0.3 + 0.7;
      if (v13 > 0.7)
      {
        v14 = 1.2;
      }

      v13 = v13 * v14;
    }

    a5.f64[1] = a6;
    v15 = fmax(a7 / a1 - v9 * v9, 0.0);
    v16 = sqrtf(v15);
    v17 = vandq_s8(vdivq_f64(vcvtq_f64_f32(vsqrt_f32(vcvt_f32_f64(vmaxnmq_f64(vmlsq_f64(vdivq_f64(a5, v7), v8, v8), 0)))), v8), vcgtq_f64(v8, vdupq_n_s64(0x3FB999999999999AuLL)));
    if (v9 <= 0.1)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v16 / v9;
    }

    v19 = (vaddvq_f64(v17) + v18) / 3.0;
    v20 = fmin(fmax(v19 + v19, 0.0), 0.3);
    *&v19 = v19 * v20 + v13 * (1.0 - v20);
    v21 = llround(fmin(fmax(powf(*&v19, 0.8) * 255.0, 0.0), 255.0));
    v22 = v21 & ~(v21 >> 63);
    if (v22 >= 255)
    {
      LOBYTE(v22) = -1;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22;
}

id PLKAverageColorFromColorBoxes(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v118 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = v11;
  if (!v11 || !*(v11 + 11) || !*(v11 + 12))
  {
    goto LABEL_90;
  }

  v117 = a6;
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  v16 = v11[1];
  v15 = v11[2];
  v120.origin.x = a2;
  v120.origin.y = a3;
  v120.size.width = a4;
  v120.size.height = a5;
  if (!CGRectEqualToRect(v120, *MEMORY[0x277CBF390]))
  {
    v121.origin.x = a2;
    v121.origin.y = a3;
    v121.size.width = a4;
    v121.size.height = a5;
    v134.origin.x = v13;
    v134.origin.y = v14;
    v134.size.width = v16;
    v134.size.height = v15;
    if (CGRectIntersectsRect(v121, v134))
    {
      v13 = a2;
      v14 = a3;
      v16 = a4;
      v15 = a5;
      goto LABEL_7;
    }

LABEL_90:
    v107 = 0;
    goto LABEL_91;
  }

LABEL_7:
  v122.origin.x = v13;
  v122.origin.y = v14;
  v122.size.width = v16;
  v122.size.height = v15;
  MinY = CGRectGetMinY(v122);
  v123.origin.x = v13;
  v123.origin.y = v14;
  v123.size.width = v16;
  v123.size.height = v15;
  MaxY = CGRectGetMaxY(v123);
  v124.origin.x = v13;
  v124.origin.y = v14;
  v124.size.width = v16;
  v124.size.height = v15;
  MinX = CGRectGetMinX(v124);
  v125.origin.x = v13;
  v125.origin.y = v14;
  v125.size.width = v16;
  v125.size.height = v15;
  MaxX = CGRectGetMaxX(v125);
  v113 = &v109;
  v115 = MaxX;
  v21 = MaxX + v117;
  v22 = *(v12 + 12);
  v23 = *(v12 + 11) - 1;
  v24 = *(v12 + 13);
  v109 = MinY - v117;
  v110 = MinX - v117;
  v25 = (MinY - v117) / v24;
  v26 = vcvtms_u32_f32(v25);
  if (v23 >= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  v111 = MaxY + v117;
  v112 = v21;
  v28 = (MaxY + v117) / v24;
  v29 = vcvtms_u32_f32(v28);
  if (v27 > v29)
  {
    v29 = v27;
  }

  if (v23 >= v29)
  {
    v23 = v29;
  }

  v30 = v22 - 1;
  v31 = (MinX - v117) / v24;
  v32 = vcvtms_u32_f32(v31);
  if (v30 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v30;
  }

  v34 = v21 / v24;
  v35 = vcvtms_u32_f32(v34);
  v116 = v33;
  if (v33 > v35)
  {
    v35 = v33;
  }

  if (v30 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = v30;
  }

  v114 = v27;
  v37 = v23 - v27;
  v38 = v23 - v27 + 1;
  MEMORY[0x28223BE20]();
  v40 = (&v109 - v39);
  v41 = v38 >> 1;
  if (v38 >= 2)
  {
    if (v41 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = v38 >> 1;
    }

    v43 = -v42;
    v44 = v114;
    v45 = v40;
    do
    {
      v126.origin.x = [(PLKColorBoxes *)v12 rectForColorBoxAtRow:v44 col:0];
      x = v126.origin.x;
      y = v126.origin.y;
      width = v126.size.width;
      height = v126.size.height;
      v50 = CGRectGetMinY(v126);
      v127.origin.x = x;
      v127.origin.y = y;
      v127.size.width = width;
      v127.size.height = height;
      v51 = CGRectGetMaxY(v127);
      if (MinY > v50)
      {
        v52 = 0.0;
        if (v117 > 0.00000011920929)
        {
          if (MinY >= v51)
          {
            v53 = v51;
          }

          else
          {
            v53 = MinY;
          }

          v54 = v109;
          if (v109 < v50)
          {
            v54 = v50;
          }

          v52 = (v53 - v54) * ((1.0 - (MinY - v54) / v117 + 1.0 - (MinY - v53) / v117) * 0.5);
        }

        height = fmax(v51 - MinY, 0.0) + v52;
      }

      *v45++ = height / *(v12 + 13);
      ++v44;
      v55 = __CFADD__(v43++, 1);
    }

    while (!v55);
  }

  if (v38)
  {
    do
    {
      v128.origin.x = [(PLKColorBoxes *)v12 rectForColorBoxAtRow:0 col:?];
      v56 = v128.origin.x;
      v57 = v128.origin.y;
      v58 = v128.size.width;
      v59 = v128.size.height;
      v60 = CGRectGetMinY(v128);
      v129.origin.x = v56;
      v129.origin.y = v57;
      v129.size.width = v58;
      v129.size.height = v59;
      v61 = CGRectGetMaxY(v129);
      if (MaxY < v61)
      {
        if (v61 >= MaxY)
        {
          v62 = MaxY;
        }

        else
        {
          v62 = v61;
        }

        v63 = 0.0;
        if (v117 > 0.00000011920929)
        {
          if (MaxY >= v60)
          {
            v64 = MaxY;
          }

          else
          {
            v64 = v60;
          }

          if (v111 < v61)
          {
            v61 = v111;
          }

          v63 = (v61 - v64) * ((1.0 - (v64 - MaxY) / v117 + 1.0 - (v61 - MaxY) / v117) * 0.5);
        }

        v59 = fmax(v62 - v60, 0.0) + v63;
      }

      v40[v41++] = v59 / *(v12 + 13);
    }

    while (v41 < v38);
  }

  v65 = v36 - v116 + 1;
  MEMORY[0x28223BE20]();
  v68 = (&v109 - v67);
  v69 = v65 >> 1;
  if (v65 >= 2)
  {
    if (v69 <= 1)
    {
      v70 = 1;
    }

    else
    {
      v70 = v65 >> 1;
    }

    v71 = -v70;
    v72 = v116;
    v73 = v68;
    do
    {
      v130.origin.x = [(PLKColorBoxes *)v12 rectForColorBoxAtRow:v72 col:?];
      v74 = v130.origin.x;
      v75 = v130.origin.y;
      v76 = v130.size.width;
      v77 = v130.size.height;
      v78 = CGRectGetMinX(v130);
      v131.origin.x = v74;
      v131.origin.y = v75;
      v131.size.width = v76;
      v131.size.height = v77;
      v79 = CGRectGetMaxX(v131);
      if (MinX > v78)
      {
        v80 = 0.0;
        if (v117 > 0.00000011920929)
        {
          if (MinX >= v79)
          {
            v81 = v79;
          }

          else
          {
            v81 = MinX;
          }

          v82 = v110;
          if (v110 < v78)
          {
            v82 = v78;
          }

          v80 = (v81 - v82) * ((1.0 - (MinX - v82) / v117 + 1.0 - (MinX - v81) / v117) * 0.5);
        }

        v76 = fmax(v79 - MinX, 0.0) + v80;
      }

      *v73++ = v76 / *(v12 + 13);
      ++v72;
      v55 = __CFADD__(v71++, 1);
    }

    while (!v55);
  }

  v83 = v117;
  if (v65)
  {
    do
    {
      v132.origin.x = [(PLKColorBoxes *)v12 rectForColorBoxAtRow:v116 + v69 col:?];
      v84 = v132.origin.x;
      v85 = v132.origin.y;
      v86 = v132.size.width;
      v87 = v132.size.height;
      v88 = CGRectGetMinX(v132);
      v133.origin.x = v84;
      v133.origin.y = v85;
      v133.size.width = v86;
      v133.size.height = v87;
      v89 = CGRectGetMaxX(v133);
      if (v115 < v89)
      {
        if (v89 >= v115)
        {
          v90 = v115;
        }

        else
        {
          v90 = v89;
        }

        v91 = 0.0;
        if (v83 > 0.00000011920929)
        {
          if (v115 >= v88)
          {
            v92 = v115;
          }

          else
          {
            v92 = v88;
          }

          if (v112 < v89)
          {
            v89 = v112;
          }

          v91 = (v89 - v92) * ((1.0 - (v92 - v115) / v83 + 1.0 - (v89 - v115) / v83) * 0.5);
        }

        v86 = fmax(v90 - v88, 0.0) + v91;
      }

      v68[v69++] = v86 / *(v12 + 13);
    }

    while (v69 < v65);
  }

  if (v38)
  {
    v93 = 0;
    v94 = 5 * v114;
    v95 = 0.0;
    v96 = 0.0;
    v97 = 0.0;
    v98 = 0.0;
    do
    {
      if (v65)
      {
        v99 = v40[v93];
        v100 = (*(v12 + 10) + 5 * v116 + 1 + *(v12 + 12) * v94);
        v101 = v68;
        v102 = v65;
        do
        {
          v103 = *v101++;
          LOBYTE(v66) = *(v100 - 1);
          *&v104 = v99 * v103 * *&v66 / 255.0;
          v98 = v98 + *&v104;
          LOBYTE(v104) = *v100;
          *&v105 = v99 * v103 * v104 / 255.0;
          v97 = v97 + *&v105;
          LOBYTE(v105) = v100[1];
          v66 = v99 * v103 * v105 / 255.0;
          v96 = v96 + v66;
          v95 = v95 + v99 * v103;
          v100 += 5;
          --v102;
        }

        while (v102);
      }

      v94 += 5;
    }

    while (v93++ != v37);
  }

  v107 = [MEMORY[0x277D75348] colorWithRed:*&v109 green:? blue:? alpha:?];
LABEL_91:

  return v107;
}

double PLKCalculateContrastFromColorBoxes(void *a1, double *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1;
  if (!v13)
  {
    goto LABEL_32;
  }

  v65.origin.x = a4;
  v65.origin.y = a5;
  v65.size.width = a6;
  v65.size.height = a7;
  if (CGRectEqualToRect(v65, *MEMORY[0x277CBF390]))
  {
    BSRectWithSize();
    a4 = v14;
    a5 = v15;
    a6 = v16;
    a7 = v17;
  }

  v18 = a6 == *MEMORY[0x277CBF3A8] && a7 == *(MEMORY[0x277CBF3A8] + 8);
  if (v18)
  {
    goto LABEL_32;
  }

  v19 = v13[11];
  if (!v19)
  {
    goto LABEL_32;
  }

  v20 = v13[12];
  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = v19 - 1;
  v22 = v20 - 1;
  v66.origin.x = a4;
  v66.origin.y = a5;
  v66.size.width = a6;
  v66.size.height = a7;
  v23 = v13[13];
  v24 = CGRectGetMinY(v66) / v23;
  v25 = vcvtms_u32_f32(v24);
  if (v21 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v21;
  }

  v67.origin.x = a4;
  v67.origin.y = a5;
  v67.size.width = a6;
  v67.size.height = a7;
  v27 = CGRectGetMaxY(v67) / v23;
  v28 = vcvtms_u32_f32(v27);
  if (v26 > v28)
  {
    v28 = v26;
  }

  if (v21 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v21;
  }

  v68.origin.x = a4;
  v68.origin.y = a5;
  v68.size.width = a6;
  v68.size.height = a7;
  v30 = CGRectGetMinX(v68) / v23;
  v31 = vcvtms_u32_f32(v30);
  if (v22 >= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v22;
  }

  v69.origin.x = a4;
  v69.origin.y = a5;
  v69.size.width = a6;
  v69.size.height = a7;
  v33 = CGRectGetMaxX(v69) / v23;
  *&v33 = v33;
  v34 = vcvtms_u32_f32(*&v33);
  if (v32 > v34)
  {
    v34 = v32;
  }

  if (v22 >= v34)
  {
    v35 = v34;
  }

  else
  {
    v35 = v22;
  }

  if (a6 < v23 || a7 < v23)
  {
    v41 = 1.0;
    LOBYTE(v41) = *(v13[10] + 5 * v32 + 5 * v13[12] * v26 + 3);
    v39 = fmin(fmin(a6, a7) / v23, 1.0) * (v41 / 255.0);
    if (!a2)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  v36 = v13[10];
  if (!v36)
  {
LABEL_32:
    if (a2)
    {
      *a2 = 0.0;
    }

    v39 = -1.0;
    goto LABEL_35;
  }

  v37 = v29 - v26 + 1;
  v38 = v35 - v32 + 1;
  if (v38 * v37 == 1)
  {
    LOBYTE(v33) = *(v36 + 5 * v32 + 5 * v13[12] * v26 + 3);
    v39 = *&v33 / 255.0;
    if (!a2)
    {
LABEL_35:
      if (a3)
      {
        *a3 = 0.0;
      }

      goto LABEL_37;
    }

LABEL_39:
    *a2 = v39;
    goto LABEL_35;
  }

  v42 = (v38 * v37);
  if (v29 - v26 == -1)
  {
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    v52 = 0.0;
    v58 = 0.0;
    v59 = 0.0;
    v60 = 0.0;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 5 * v32 + v36 + 1;
    v51 = 5 * v26;
    v52 = 0.0;
    do
    {
      if (v38)
      {
        v53 = (v50 + v13[12] * v51);
        v54 = v38;
        do
        {
          v49 += *(v53 - 1);
          v48 += *v53;
          v47 += v53[1];
          v46 += *(v53 - 1) * *(v53 - 1);
          v45 += *v53 * *v53;
          v44 += v53[1] * v53[1];
          LOBYTE(v33) = v53[2];
          v33 = *&v33;
          v52 = v52 + v33;
          v53 += 5;
          --v54;
        }

        while (v54);
      }

      v51 += 5;
      v18 = v43++ == v29 - v26;
    }

    while (!v18);
    v55 = v49;
    v56 = v48;
    v57 = v47;
    v58 = v46;
    v59 = v45;
    v60 = v44;
  }

  v61 = fmin(a6 * a7 / (v23 * v42 * v23), 1.0);
  v62 = v52 / v42;
  if (a2)
  {
    *a2 = v62 / 255.0;
  }

  v63 = v61 * contrast(v42, v55, v56, v57, v58, v59, v60);
  if (a3)
  {
    *a3 = v63 / 255.0;
  }

  v64 = fmin(fmax(1.0 - v61, 0.0), 0.5);
  v39 = (v63 * (1.0 - (v64 + 0.5)) + v62 * (v64 + 0.5)) / (v64 + 0.5 + 1.0 - (v64 + 0.5)) / 255.0;
LABEL_37:

  return v39;
}

double PLKCalculateSaturationFromColorBoxes(void *a1, double *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1;
  if (!v13)
  {
    goto LABEL_35;
  }

  v60.origin.x = a4;
  v60.origin.y = a5;
  v60.size.width = a6;
  v60.size.height = a7;
  if (CGRectEqualToRect(v60, *MEMORY[0x277CBF390]))
  {
    BSRectWithSize();
    a4 = v14;
    a5 = v15;
    a6 = v16;
    a7 = v17;
  }

  v18 = a6 == *MEMORY[0x277CBF3A8] && a7 == *(MEMORY[0x277CBF3A8] + 8);
  if (v18)
  {
    goto LABEL_35;
  }

  v19 = v13[11];
  if (!v19)
  {
    goto LABEL_35;
  }

  v20 = v13[12];
  if (!v20)
  {
    goto LABEL_35;
  }

  v21 = v19 - 1;
  v22 = v20 - 1;
  v61.origin.x = a4;
  v61.origin.y = a5;
  v61.size.width = a6;
  v61.size.height = a7;
  v23 = v13[13];
  v24 = CGRectGetMinY(v61) / v23;
  v25 = vcvtms_u32_f32(v24);
  if (v21 >= v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = v21;
  }

  v62.origin.x = a4;
  v62.origin.y = a5;
  v62.size.width = a6;
  v62.size.height = a7;
  v27 = CGRectGetMaxY(v62) / v23;
  v28 = vcvtms_u32_f32(v27);
  if (v26 > v28)
  {
    v28 = v26;
  }

  if (v21 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v21;
  }

  v63.origin.x = a4;
  v63.origin.y = a5;
  v63.size.width = a6;
  v63.size.height = a7;
  v30 = CGRectGetMinX(v63) / v23;
  v31 = vcvtms_u32_f32(v30);
  if (v22 >= v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = v22;
  }

  v64.origin.x = a4;
  v64.origin.y = a5;
  v64.size.width = a6;
  v64.size.height = a7;
  v34.f64[0] = CGRectGetMaxX(v64) / v23;
  *v34.f64 = v34.f64[0];
  v35 = vcvtms_u32_f32(*v34.f64);
  if (v32 > v35)
  {
    v35 = v32;
  }

  v36 = v22 >= v35 ? v35 : v22;
  v37 = v13[10];
  if (v37)
  {
    v38 = v36 - v32 + 1;
    v39 = (v38 * (v29 - v26 + 1));
    if (v29 - v26 == -1)
    {
      v34.f64[0] = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      v49 = 0.0;
      v33.f64[0] = 0.0;
      v54 = 0.0;
      v55 = 0.0;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 5 * v32 + v37 + 2;
      v48 = 5 * v26;
      v49 = 0.0;
      do
      {
        if (v38)
        {
          v50 = (v47 + v13[12] * v48);
          v51 = v38;
          do
          {
            v46 += *(v50 - 2);
            v45 += *(v50 - 1);
            v44 += *v50;
            v43 += *(v50 - 2) * *(v50 - 2);
            v42 += *(v50 - 1) * *(v50 - 1);
            v41 += *v50 * *v50;
            LOBYTE(v34.f64[0]) = v50[2];
            v34.f64[0] = *&v34.f64[0];
            v49 = v49 + v34.f64[0];
            v50 += 5;
            --v51;
          }

          while (v51);
        }

        v48 += 5;
        v18 = v40++ == v29 - v26;
      }

      while (!v18);
      v34.f64[0] = v46;
      v52 = v45;
      v53 = v44;
      v33.f64[0] = v43;
      v54 = v42;
      v55 = v41;
    }

    v58 = v49 / v39;
    if (a2)
    {
      *a2 = v58 / 255.0;
    }

    v59 = saturation(v39, v34, v52, v53, v33, v54, v55);
    if (a3)
    {
      *a3 = v59 / 255.0;
    }

    if (v58 >= v59)
    {
      v59 = v58;
    }

    v56 = v59 / 255.0;
  }

  else
  {
LABEL_35:
    if (a2)
    {
      *a2 = 0.0;
    }

    v56 = -1.0;
    if (a3)
    {
      *a3 = 0.0;
    }
  }

  return v56;
}

id PLKAverageSaturationFromColorBoxes(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v11 = a1;
  v12 = v11;
  if (!v11 || !*(v11 + 11) || !*(v11 + 12))
  {
    goto LABEL_38;
  }

  v52 = a6;
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  v15 = v11[1];
  v16 = v11[2];
  v54.origin.x = a2;
  v54.origin.y = a3;
  v54.size.width = a4;
  v54.size.height = a5;
  if (CGRectEqualToRect(v54, *MEMORY[0x277CBF390]))
  {
    goto LABEL_7;
  }

  v55.origin.x = a2;
  v55.origin.y = a3;
  v55.size.width = a4;
  v55.size.height = a5;
  v60.origin.x = v13;
  v60.origin.y = v14;
  v60.size.width = v15;
  v60.size.height = v16;
  if (!CGRectIntersectsRect(v55, v60))
  {
LABEL_38:
    v50 = 0;
    goto LABEL_39;
  }

  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
LABEL_7:
  v56.origin.x = v13;
  v56.origin.y = v14;
  v56.size.width = v15;
  v56.size.height = v16;
  MinY = CGRectGetMinY(v56);
  v57.origin.x = v13;
  v57.origin.y = v14;
  v57.size.width = v15;
  v57.size.height = v16;
  MaxY = CGRectGetMaxY(v57);
  v58.origin.x = v13;
  v58.origin.y = v14;
  v58.size.width = v15;
  v58.size.height = v16;
  MinX = CGRectGetMinX(v58);
  v59.origin.x = v13;
  v59.origin.y = v14;
  v59.size.width = v15;
  v59.size.height = v16;
  v20 = CGRectGetMaxX(v59) + v52;
  v22 = *(v12 + 13);
  v23 = (MinY - v52) / v22;
  v24 = vcvtms_u32_f32(v23);
  v25 = *(v12 + 11) - 1;
  v26 = (MaxY + v52) / v22;
  v27 = vcvtms_u32_f32(v26);
  if (v25 >= v24)
  {
    v28 = v24;
  }

  else
  {
    v28 = *(v12 + 11) - 1;
  }

  if (v28 <= v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  if (v25 < v29)
  {
    v29 = *(v12 + 11) - 1;
  }

  v30 = *(v12 + 12) - 1;
  v31 = (MinX - v52) / v22;
  v32 = vcvtms_u32_f32(v31);
  if (v30 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = *(v12 + 12) - 1;
  }

  v34 = v20 / v22;
  v35 = vcvtms_u32_f32(v34);
  if (v33 > v35)
  {
    v35 = v33;
  }

  if (v30 >= v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = *(v12 + 12) - 1;
  }

  v37 = v29 - v28;
  v38 = v29 - v28 + 1;
  if (v38 >= 2)
  {
    PLKAverageSaturationFromColorBoxes_cold_1(v38 >> 1, v28, v12);
  }

  else if (v29 - v28 == -1)
  {
    goto LABEL_25;
  }

  PLKAverageSaturationFromColorBoxes_cold_2();
LABEL_25:
  v39 = v36 - v33 + 1;
  if (v39 >= 2)
  {
    PLKAverageSaturationFromColorBoxes_cold_3(v39 >> 1, v33, v12);
LABEL_45:
    PLKAverageSaturationFromColorBoxes_cold_4();
    if (v38)
    {
      goto LABEL_28;
    }

LABEL_46:
    v49 = MEMORY[0x277D75348];
    goto LABEL_47;
  }

  if (v36 - v33 != -1)
  {
    goto LABEL_45;
  }

  if (!v38)
  {
    goto LABEL_46;
  }

LABEL_28:
  v40 = 0;
  v41 = 5 * v28;
  v42 = 0.0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  do
  {
    if (v36 - v33 != -1)
    {
      v46 = (*(v12 + 10) + 5 * v33 + 2 + *(v12 + 12) * v41);
      v47 = v36 - v33 + 1;
      do
      {
        LOBYTE(v21) = v46[2];
        v21 = *&v21 / 255.0;
        if (v21 > v45)
        {
          LOBYTE(v44) = *(v46 - 2);
          v44 = *&v44 / 255.0;
          LOBYTE(v43) = *(v46 - 1);
          v43 = *&v43 / 255.0;
          LOBYTE(v42) = *v46;
          v45 = v21;
          v42 = *&v42 / 255.0;
        }

        v46 += 5;
        --v47;
      }

      while (v47);
    }

    v41 += 5;
  }

  while (v40++ != v37);
  if (v45 <= 0.0)
  {
    goto LABEL_46;
  }

  v49 = MEMORY[0x277D75348];
LABEL_47:
  v50 = [v49 colorWithRed:? green:? blue:? alpha:?];
LABEL_39:

  return v50;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__CFString *PLKGraphicsContextTypeDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:a1];
  }

  else
  {
    v2 = off_27835B8B0[a1];
  }

  return v2;
}

void sub_21E5EBD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E5EC080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLKIOSurfaceFromCGImage(id a1, int a2)
{
  if (a1)
  {
    Property = CGImageGetProperty();
    if (!Property && CGImageGetImageProvider() && ((CallbackVersion = CGImageProviderGetCallbackVersion(), v7 = CGImageWasCreatedWithIOSurface(), CallbackVersion > 1) ? (v8 = a2) : (v8 = 0), (v7 & 1) != 0 || v8))
    {
      a1 = CGImageProviderCopyIOSurface();
    }

    else
    {
      a1 = Property;
    }

    v2 = vars8;
  }

  return a1;
}

id __PLKCreateCroppedIOSurface(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v11 = a1;
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  if (CGRectIsEmpty(v25) || (BSFloatLessThanOrEqualToFloat() & 1) != 0 || (BSFloatLessThanOrEqualToFloat() & 1) != 0)
  {
    v12 = 0;
    goto LABEL_5;
  }

  texture = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  v14 = *MEMORY[0x277CBECE8];
  v15 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x277CBECE8], v11, 0, &pixelBufferOut);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = pixelBufferOut == 0;
  }

  if (v16 || ((v15 = VTPixelTransferSessionCreate(v14, &pixelTransferSessionOut)) == 0 ? (v17 = pixelTransferSessionOut == 0) : (v17 = 1), v17))
  {
    IOSurfaceBackedCVPixelBufferWithAttributes = v15;
  }

  else
  {
    v26.origin.x = a2;
    v26.origin.y = a3;
    v26.size.width = a4;
    v26.size.height = a5;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v26);
    IOSurfaceBackedCVPixelBufferWithAttributes = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE28B8], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
    if (!IOSurfaceBackedCVPixelBufferWithAttributes)
    {
      IOSurfaceGetPixelFormat(v11);
      IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
      v18 = 0;
      if (IOSurfaceBackedCVPixelBufferWithAttributes || !texture)
      {
        goto LABEL_19;
      }

      IOSurfaceBackedCVPixelBufferWithAttributes = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, texture);
      if (!IOSurfaceBackedCVPixelBufferWithAttributes)
      {
        v18 = CVPixelBufferGetIOSurface(texture);
        goto LABEL_19;
      }
    }
  }

  v18 = 0;
LABEL_19:
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(texture);
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  if (IOSurfaceBackedCVPixelBufferWithAttributes)
  {
    v12 = 0;
  }

  else
  {
    v12 = v18;
  }

LABEL_5:

  return v12;
}

void ___PLKReleaseIOSurface(void *a1)
{
  [a1 unlockWithOptions:? seed:?];
  [a1 decrementUseCount];
}

void PLKAverageSaturationFromColorBoxes_cold_1(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  do
  {
    [(PLKColorBoxes *)a3 rectForColorBoxAtRow:a2 col:0];
    OUTLINED_FUNCTION_1_0();
    CGRectGetMinY(v6);
    v7.origin.x = OUTLINED_FUNCTION_0_0();
    CGRectGetMaxY(v7);
    ++a2;
    --v5;
  }

  while (v5);
}

void PLKAverageSaturationFromColorBoxes_cold_2()
{
  OUTLINED_FUNCTION_7();
  do
  {
    [(PLKColorBoxes *)v1 rectForColorBoxAtRow:0 col:?];
    OUTLINED_FUNCTION_1_0();
    CGRectGetMinY(v4);
    v5.origin.x = OUTLINED_FUNCTION_0_0();
    CGRectGetMaxY(v5);
    ++v3;
  }

  while (v3 < v0);
}

void PLKAverageSaturationFromColorBoxes_cold_3(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  do
  {
    [(PLKColorBoxes *)a3 rectForColorBoxAtRow:a2 col:?];
    OUTLINED_FUNCTION_1_0();
    CGRectGetMinX(v6);
    v7.origin.x = OUTLINED_FUNCTION_0_0();
    CGRectGetMaxX(v7);
    ++a2;
    --v5;
  }

  while (v5);
}

void PLKAverageSaturationFromColorBoxes_cold_4()
{
  OUTLINED_FUNCTION_7();
  do
  {
    [(PLKColorBoxes *)v1 rectForColorBoxAtRow:v2 + v3 col:?];
    OUTLINED_FUNCTION_1_0();
    CGRectGetMinX(v4);
    v5.origin.x = OUTLINED_FUNCTION_0_0();
    CGRectGetMaxX(v5);
    ++v3;
  }

  while (v3 < v0);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}