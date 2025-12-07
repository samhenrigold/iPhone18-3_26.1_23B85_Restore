unint64_t CI::sw_smarttone_highlightcontrast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v23 = *(a2 + (*(v3 + 56) << 6));
  v11 = vmulq_f32(*v7, vdupq_n_s32(0x3EAAA64Cu));
  v9 = *v7;
  v24 = *v7;
  v10 = vaddv_f32(*v11.f32);
  v11.f32[0] = v11.f32[2] + v10;
  if ((v11.f32[2] + v10) <= 1.0)
  {
    v12 = v11.f32[2] + v10;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v11.f32[0] < 0.0;
  v14 = 0;
  if (!v13)
  {
    *v14.i32 = v12;
  }

  v9.i32[3] = 0;
  v22 = v14;
  v15 = vmaxnmq_f32(v9, 0);
  v16 = v8 * -2.0 + 3.0;
  *&v16 = v16;
  v15.i32[3] = 0;
  v17 = vdupq_lane_s32(*&v16, 0);
  v17.i32[3] = 0;
  v18 = vaddq_f32(_simd_pow_f4(v15, v17), vminnmq_f32(v9, 0));
  v19 = v8 * -3.0 + 4.0;
  v20 = (v8 * (v8 * (v8 * v8))) * -3.0 + 4.0;
  *&v20 = v20;
  *&v20 = ((*v22.i32 + -0.8) * *&v20) + 0.8;
  return vmlaq_n_f32(vmulq_n_f32(v24, 1.0 - (*v22.i32 * *v22.i32)), vmlaq_n_f32(vmulq_n_f32(vsubq_f32(vaddq_f32(v18, vdupq_lane_s32(*&v20, 0)), vdupq_lane_s32(v22, 0)), 1.0 - v23), vaddq_f32(vmulq_n_f32(vaddq_f32(v18, vdupq_n_s32(0xBF4CCCCD)), v19), vdupq_n_s32(0x3F4CCCCDu)), v23), *v22.i32 * *v22.i32).u64[0];
}

unint64_t CI::sw_rawHighlights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = vmulq_n_f32(*v7, *(a2 + (*(v3 + 32) << 6)));
  v9 = vmulq_f32(*v7, vdupq_n_s32(0x3EAAA64Cu));
  v10 = v9.f32[2] + vaddv_f32(*v9.f32);
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = v10 < 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  v14 = *v7;
  v14.i32[3] = 0;
  v15 = vmlaq_n_f32(vmulq_n_f32(vmaxnmq_f32(v14, 0), 1.0 - (v13 * v13)), v8, v13 * v13);
  v8.i32[3] = 0;
  return vaddq_f32(vminnmq_f32(v8, 0), v15).u64[0];
}

uint64_t ___ZL22CI_SMART_TONE_USE_CUBEv_block_invoke()
{
  v0 = getenv("CI_SMART_TONE_USE_CUBE");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = CI_SMART_TONE_USE_CUBE(void)::v;
  }

  CI_SMART_TONE_USE_CUBE(void)::v = result;
  return result;
}

unint64_t CI::sw_smartcolor_contrast(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 40);
  v9 = *(v8 + 8);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v8 + 16) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = vmulq_f32(*v12, xmmword_19CF29CD0);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  v14 = vsubq_f32(0, vsubq_f32(*v12, vdupq_lane_s32(*v13.f32, 0)));
  v15 = vmulq_f32(v14, v14);
  v16 = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
  if (v16 > 1.0)
  {
    v16 = 1.0;
  }

  v17 = ((v16 * v16) * ((v16 * -2.0) + 3.0)) * 5.0 * *(a2 + (*(v8 + 32) << 6));
  v18 = *v12;
  v18.i32[3] = 0;
  __asm { FMOV            V7.4S, #-1.0 }

  v24 = vaddq_f32(vmaxnmq_f32(v18, xmmword_19CF23BD0), _Q7);
  v25 = vminnmq_f32(v18, 0);
  v26 = vmaxnmq_f32(v18, 0);
  v26.i32[3] = 0;
  v27 = vminnmq_f32(v26, xmmword_19CF23BD0);
  v28 = fmaxf((v27.f32[2] - v27.f32[1]) * v17, -0.35);
  *&a8 = v28 + 1.0;
  return vaddq_f32(vaddq_f32(v25, v24), vdivq_f32(v27, vsubq_f32(vdupq_lane_s32(*&a8, 0), vmulq_n_f32(v27, v28)))).u64[0];
}

double CI::sw_smartcolor_contrast_darken(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, xmmword_19CF29CD0);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = vsubq_f32(0, vsubq_f32(*v7, vdupq_lane_s32(*v8.f32, 0)));
  v10 = vmulq_f32(v9, v9);
  v11 = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  v12 = *v7;
  v12.i32[3] = 0;
  v13 = ((v11 * v11) * ((v11 * -2.0) + 3.0)) * 5.0 * *(a2 + (*(v3 + 32) << 6));
  v14 = vmaxnmq_f32(v12, 0);
  v14.i32[3] = 0;
  v15 = xmmword_19CF23BD0;
  v16 = vminnmq_f32(v14, xmmword_19CF23BD0);
  v17 = (v16.f32[2] - v16.f32[1]) * v13;
  if (v17 >= 0.0)
  {
    v10.f32[0] = v17 + 1.0;
    v20 = vdivq_f32(v16, vsubq_f32(vdupq_lane_s32(*v10.f32, 0), vmulq_n_f32(v16, v17)));
  }

  else
  {
    v18 = vmulq_f32(v16, xmmword_19CF29CE0);
    v10.f32[0] = 1.0 - ((1.0 - fminf(v18.f32[2] + vaddv_f32(*v18.f32), 1.0)) * v17);
    v16.i32[3] = 0;
    v19 = vdupq_lane_s32(*v10.f32, 0);
    v19.i32[3] = 0;
    v27 = v12;
    v20 = _simd_pow_f4(v16, v19);
    v15 = xmmword_19CF23BD0;
    v12 = v27;
  }

  __asm { FMOV            V3.4S, #-1.0 }

  *&result = vaddq_f32(v20, vaddq_f32(vminnmq_f32(v12, 0), vaddq_f32(vmaxnmq_f32(v12, v15), _Q3))).u64[0];
  return result;
}

unint64_t CI::sw_smartcolor_vibrancy_gt1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = *v7->f32;
  v9.i32[3] = 0;
  v10 = vmaxnmq_f32(v9, 0);
  v10.i32[3] = 0;
  v11 = vminnmq_f32(v10, xmmword_19CF23BD0);
  v12 = vmulq_f32(v11, xmmword_19CF29CF0);
  v13 = (v12.f32[2] + vaddv_f32(*v12.f32));
  v15 = 1.0 / (COERCE_FLOAT(*&v7[1]) + vaddv_f32(*v7));
  v16 = (((v15 * COERCE_FLOAT(*v7->f32)) - vmuls_lane_f32(v15, *v7->f32, 2)) + -0.2) / 0.2;
  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  if (v16 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = ((v17 * v17) * ((v17 * -2.0) + 3.0)) * -0.8 + 1.0;
  v14 = v13 * -4.0 * (1.0 - v13) + 1.0;
  v19 = v14 * v18;
  if (v8 > 2.5)
  {
    v20 = (v8 + -2.5) / 5.0 + v19;
    v19 = fminf(v20, 1.0);
  }

  v21 = vmulq_f32(v11, xmmword_19CF29D00);
  v21.f32[0] = v21.f32[2] + vaddv_f32(*v21.f32);
  v22 = vdupq_lane_s32(*v21.f32, 0);
  return vmlaq_n_f32(vmulq_n_f32(*v7->f32, 1.0 - v19), vaddq_f32(v22, vmulq_n_f32(vsubq_f32(*v7->f32, v22), fminf(v8, 3.0))), v19).u64[0];
}

unint64_t CI::sw_smartcolor_vibrancy_lt1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = vmulq_f32(*v7, vdupq_n_s32(0x3EAAAA9Fu));
  v9.f32[0] = (1.0 - v8) * (v9.f32[2] + vaddv_f32(*v9.f32));
  return vmlaq_n_f32(vdupq_lane_s32(*v9.f32, 0), *v7, v8).u64[0];
}

double CI::sw_smartcolor_cast(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = *(a2 + (*(v3 + 104) << 6));
  v30 = *v7;
  __asm { FMOV            V1.4S, #1.0 }

  v15 = vminnmq_f32(vmaxnmq_f32(*v7, 0), _Q1);
  v15.i32[3] = 0;
  _Q1.i32[0] = *(a2 + (*(v3 + 56) << 6));
  _Q1.i32[1] = *(a2 + (*(v3 + 80) << 6));
  v29 = *_Q1.f32;
  v16 = _simd_pow_f4(v15, xmmword_19CF23AC0);
  v17 = vaddq_f32(vmulq_lane_f32(xmmword_19CF23AA0, *v16.f32, 1), vmulq_n_f32(xmmword_19CF23A90, v16.f32[0]));
  v18 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF23AB0, v16, 2), v17);
  v17.f32[0] = (v9 + -1.0) * (1.0 - v18.f32[0]) + 1.0;
  v19 = vextq_s8(v18, v18, 4uLL);
  *v17.f32 = vadd_f32(*v19.i8, vmul_n_f32(v29, v17.f32[0]));
  v20 = v18.f32[0] / (v8 + 0.00001);
  v21 = fmaxf(fminf(v20, 1.0), 0.0);
  v22 = vmlaq_n_f32(vmulq_n_f32(v18, 1.0 - v21), vextq_s8(v19, v17, 0xCuLL), v21);
  v23 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF23B10, v22, 2), vaddq_f32(vdupq_lane_s32(*v22.f32, 0), vmulq_lane_f32(xmmword_19CF23B00, *v22.f32, 1)));
  v23.i32[3] = 0;
  v24 = vmaxnmq_f32(v23, 0);
  v24.i32[3] = 0;
  v25 = vminnmq_f32(v24, xmmword_19CF23BD0);
  v26 = v30;
  v26.i32[3] = 0;
  __asm { FMOV            V2.4S, #-1.0 }

  *&result = vaddq_f32(vmulq_f32(v25, vmulq_f32(v25, vmulq_f32(v25, v25))), vaddq_f32(vaddq_f32(vminnmq_f32(v26, 0), vmaxnmq_f32(v26, xmmword_19CF23BD0)), _Q2)).u64[0];
  return result;
}

uint64_t ___ZL23CI_SMART_COLOR_USE_CUBEv_block_invoke()
{
  v0 = getenv("CI_SMART_COLOR_USE_CUBE");
  if (v0)
  {
    result = atoi(v0);
  }

  else
  {
    result = CI_SMART_COLOR_USE_CUBE(void)::v;
  }

  CI_SMART_COLOR_USE_CUBE(void)::v = result;
  return result;
}

void downsampleRoiH(CGRect a1, float a2)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsInfinite(a1))
  {
    *&v9.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v9.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (CGRectIsNull(v14))
    {
      *&v9.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v9.var2 = 0uLL;
    }

    else
    {
      v9.var0 = x;
      v9.var1 = y;
      v9.var2 = width;
      v9.var3 = height;
    }
  }

  Rectangle::inset(&v10, &v9, -2.0, -0.0);
  if (fabs(v10.f64[0]) == INFINITY || fabs(v10.f64[1]) == INFINITY)
  {
    *&v12.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v12.var2 = 0.0;
    v12.var3 = 0.0;
  }

  else
  {
    v7 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v8 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v10, v8), vceqq_f64(v11, v7))))))
    {
      v12.var0 = v10.f64[0] * a2;
      v12.var1 = v10.f64[1];
      v12.var2 = a2 * v11.f64[0];
      v12.var3 = v11.f64[1];
    }

    else
    {
      *&v12.var0 = v8;
      *&v12.var2 = v7;
    }
  }

  Rectangle::integralize(&v13, &v12, 0.0001);
}

void downsampleRoiV(CGRect a1, float a2)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsInfinite(a1))
  {
    *&v9.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v9.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    if (CGRectIsNull(v14))
    {
      *&v9.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v9.var2 = 0uLL;
    }

    else
    {
      v9.var0 = x;
      v9.var1 = y;
      v9.var2 = width;
      v9.var3 = height;
    }
  }

  Rectangle::inset(&v10, &v9, -0.0, -2.0);
  if (fabs(v10.f64[0]) == INFINITY || fabs(v10.f64[1]) == INFINITY)
  {
    *&v12.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v12.var2 = 0.0;
    v12.var3 = 0.0;
  }

  else
  {
    v7 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v8 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v10, v8), vceqq_f64(v11, v7))))))
    {
      v12.var0 = v10.f64[0];
      v12.var1 = v10.f64[1] * a2;
      v12.var2 = v11.f64[0];
      v12.var3 = vmuld_lane_f64(a2, v11, 1);
    }

    else
    {
      *&v12.var0 = v8;
      *&v12.var2 = v7;
    }
  }

  Rectangle::integralize(&v13, &v12, 0.0001);
}

double upsampleRoi(float64_t a1, float64_t a2, double a3, double a4, float32x2_t a5)
{
  v8.f64[0] = a1;
  v8.f64[1] = a2;
  *&v8.f64[0] = vadd_f32(vmul_f32(a5, vcvt_f32_f64(v8)), 0xBF000000BF000000);
  v9 = vrndm_f32(*&v8.f64[0]);
  __asm { FMOV            V13.2S, #1.0 }

  v15 = vadd_f32(vsub_f32(v9, *&v8.f64[0]), _D13);
  *&v8.f64[0] = vsub_f32(*&v8.f64[0], v9);
  v16 = vdup_n_s32(0x3E4CCCCDu);
  v17 = vadd_f32(vsub_f32(v9, vmul_f32(v15, vmul_f32(v15, v16))), 0x3F0000003F000000);
  __asm { FMOV            V15.2S, #1.5 }

  v30 = vadd_f32(vadd_f32(v9, vmul_f32(*&v8.f64[0], vmul_f32(*&v8.f64[0], v16))), _D15);
  v8.f64[0] = v17.f32[0];
  v19 = v17.f32[1];
  v20 = 0;
  v21 = 0;
  v34 = CGRectUnion(*MEMORY[0x1E695F050], *v8.f64);
  v39.origin.x = v30.f32[0];
  v39.origin.y = v30.f32[1];
  v39.size.width = 0.0;
  v39.size.height = 0.0;
  v35 = CGRectUnion(v34, v39);
  v22.f32[0] = a1 + a3;
  v23 = a2 + a4;
  v22.f32[1] = v23;
  v24 = vadd_f32(vmul_f32(a5, v22), 0xBF000000BF000000);
  v25 = vrndm_f32(v24);
  v26 = vadd_f32(vsub_f32(v25, v24), _D13);
  v27 = vsub_f32(v24, v25);
  v28 = vadd_f32(vsub_f32(v25, vmul_f32(v26, vmul_f32(v26, v16))), 0x3F0000003F000000);
  v33 = vadd_f32(vadd_f32(v25, vmul_f32(v27, vmul_f32(v27, v16))), _D15);
  v40.origin.x = v28.f32[0];
  v40.origin.y = v28.f32[1];
  v40.size.width = 0.0;
  v40.size.height = 0.0;
  v36 = CGRectUnion(v35, v40);
  v41.origin.x = v33.f32[0];
  v41.origin.y = v33.f32[1];
  v41.size.width = 0.0;
  v41.size.height = 0.0;
  v37 = CGRectUnion(v36, v41);
  v38 = CGRectInset(v37, 0.0001, 0.0001);
  return COERCE_DOUBLE(CGRectIntegral(v38)) + -1.0;
}

double CI::sw_cubicDownsample2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v171 = *v9;
  DC = CI::getDC(a1);
  v12 = vadd_f32(*DC, *DC);
  v13 = vextq_s8(v171, v171, 8uLL);
  v166 = v13;
  v14 = vrev64_s32(v13.n128_u64[0]);
  v13.n128_u64[0] = vneg_f32(v14);
  v167 = v13;
  v13.n128_u64[0] = vadd_f32(vdup_lane_s32(v13.n128_u64[0], 0), v12);
  LODWORD(v15) = *(v10 + 24);
  v16.i32[0] = *(v10 + 36);
  *v17.i32 = vmuls_lane_f32(*(v10 + 32), v13.n128_u64[0], 1);
  *&v18 = *v17.i32 + (v13.n128_f32[0] * *(v10 + 28));
  v13.n128_f32[0] = *&v15 + (vmuls_lane_f32(*(v10 + 20), v13.n128_u64[0], 1) + (v13.n128_f32[0] * *(v10 + 16)));
  *v19.f64 = *v16.i32 + *&v18;
  v13.n128_f32[1] = *v16.i32 + *&v18;
  *v22.i64 = CI::BitmapSampler::read(*(v10 + 8), v13, v19, v15, v18, v17, v16, v20, v21);
  *&v23.f64[1] = v167.n128_u64[1];
  *&v23.f64[0] = vadd_f32(vrev64_s32(v167.n128_u64[0]), v12);
  *&v24 = vmuls_lane_f32(*(v10 + 20), *&v23.f64[0], 1) + (*v23.f64 * *(v10 + 16));
  LODWORD(v25) = *(v10 + 24);
  v26.i32[0] = *(v10 + 36);
  *v27.i32 = vmuls_lane_f32(*(v10 + 32), *&v23.f64[0], 1);
  v28 = vaddq_f32(vmulq_lane_f32(vmulq_lane_f32(v22, *v171.i8, 1), *v171.i8, 1), 0);
  v154 = v28;
  v28.n128_f32[0] = *&v25 + *&v24;
  *v23.f64 = *v26.i32 + (*v27.i32 + (*v23.f64 * *(v10 + 28)));
  v28.n128_u32[1] = LODWORD(v23.f64[0]);
  *v30.i64 = CI::BitmapSampler::read(*(v10 + 8), v28, v23, v24, v25, 0, v27, v26, v29);
  v31 = v166;
  HIDWORD(v32) = v167.n128_u32[1];
  HIDWORD(v31.f64[0]) = v167.n128_u32[0];
  *&v31.f64[0] = vadd_f32(*&v31.f64[0], v12);
  *&v32 = vmuls_lane_f32(*(v10 + 20), *&v31.f64[0], 1) + (*v31.f64 * *(v10 + 16));
  LODWORD(v33) = *(v10 + 24);
  v34.i32[0] = *(v10 + 36);
  *v35.i32 = vmuls_lane_f32(*(v10 + 32), *&v31.f64[0], 1);
  v36 = v154;
  v37 = vaddq_f32(v154, vmulq_lane_f32(vmulq_n_f32(v30, *v171.i32), *v171.i8, 1));
  v155 = v37;
  v37.n128_f32[0] = *&v33 + *&v32;
  *v31.f64 = *v34.i32 + (*v35.i32 + (*v31.f64 * *(v10 + 28)));
  v37.n128_u32[1] = LODWORD(v31.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v10 + 8), v37, v31, v32, v33, v36, v35, v34, v38);
  *&v40.f64[1] = v166.n128_u64[1];
  HIDWORD(v41) = v167.n128_u32[1];
  *&v40.f64[0] = vadd_f32(vext_s8(v166.n128_u64[0], v167.n128_u64[0], 4uLL), v12);
  *&v41 = vmuls_lane_f32(*(v10 + 20), *&v40.f64[0], 1) + (*v40.f64 * *(v10 + 16));
  LODWORD(v42) = *(v10 + 24);
  v43.i32[0] = *(v10 + 36);
  *v44.i32 = vmuls_lane_f32(*(v10 + 32), *&v40.f64[0], 1);
  v45 = v155;
  v46 = vaddq_f32(v155, vmulq_lane_f32(vmulq_n_f32(v39, *v171.i32), *v171.i8, 1));
  v156 = v46;
  v46.n128_f32[0] = *&v42 + *&v41;
  *v40.f64 = *v43.i32 + (*v44.i32 + (*v40.f64 * *(v10 + 28)));
  v46.n128_u32[1] = LODWORD(v40.f64[0]);
  *v48.i64 = CI::BitmapSampler::read(*(v10 + 8), v46, v40, v41, v42, v45, v44, v43, v47);
  *&v49.f64[0] = vsub_f32(v12, v14);
  *&v50 = vmuls_lane_f32(*(v10 + 20), *&v49.f64[0], 1) + (*v49.f64 * *(v10 + 16));
  LODWORD(v51) = *(v10 + 24);
  v52.i32[0] = *(v10 + 36);
  *v53.i32 = vmuls_lane_f32(*(v10 + 32), *&v49.f64[0], 1);
  v54 = v156;
  v55 = vaddq_f32(v156, vmulq_lane_f32(vmulq_lane_f32(v48, *v171.i8, 1), *v171.i8, 1));
  v157 = v55;
  v55.n128_f32[0] = *&v51 + *&v50;
  *v49.f64 = *v52.i32 + (*v53.i32 + (*v49.f64 * *(v10 + 28)));
  v55.n128_u32[1] = LODWORD(v49.f64[0]);
  *v57.i64 = CI::BitmapSampler::read(*(v10 + 8), v55, v49, v50, v51, v54, v53, v52, v56);
  *&v58.f64[1] = v167.n128_u64[1];
  *&v58.f64[0] = vadd_f32(vdup_lane_s32(v167.n128_u64[0], 1), v12);
  *&v59 = vmuls_lane_f32(*(v10 + 20), *&v58.f64[0], 1) + (*v58.f64 * *(v10 + 16));
  LODWORD(v60) = *(v10 + 24);
  v61.i32[0] = *(v10 + 36);
  *v62.i32 = vmuls_lane_f32(*(v10 + 32), *&v58.f64[0], 1);
  v63 = v157;
  v64 = vaddq_f32(v157, vmulq_n_f32(vmulq_lane_f32(v57, *v171.i8, 1), *v171.i32));
  v158 = v64;
  v64.n128_f32[0] = *&v60 + *&v59;
  *v58.f64 = *v61.i32 + (*v62.i32 + (*v58.f64 * *(v10 + 28)));
  v64.n128_u32[1] = LODWORD(v58.f64[0]);
  *v66.i64 = CI::BitmapSampler::read(*(v10 + 8), v64, v58, v59, v60, v63, v62, v61, v65);
  v67 = v166;
  HIDWORD(v68) = v167.n128_u32[1];
  HIDWORD(v67.f64[0]) = v167.n128_u32[1];
  *&v67.f64[0] = vadd_f32(*&v67.f64[0], v12);
  *&v68 = vmuls_lane_f32(*(v10 + 20), *&v67.f64[0], 1) + (*v67.f64 * *(v10 + 16));
  LODWORD(v69) = *(v10 + 24);
  v70.i32[0] = *(v10 + 36);
  *v71.i32 = vmuls_lane_f32(*(v10 + 32), *&v67.f64[0], 1);
  v72 = v158;
  v73 = vaddq_f32(v158, vmulq_n_f32(vmulq_n_f32(v66, *v171.i32), *v171.i32));
  v159 = v73;
  v73.n128_f32[0] = *&v69 + *&v68;
  *v67.f64 = *v70.i32 + (*v71.i32 + (*v67.f64 * *(v10 + 28)));
  v73.n128_u32[1] = LODWORD(v67.f64[0]);
  *v75.i64 = CI::BitmapSampler::read(*(v10 + 8), v73, v67, v68, v69, v72, v71, v70, v74);
  HIDWORD(v77) = v166.n128_u32[1];
  v76 = v167;
  LODWORD(v76.f64[0]) = v166.n128_u32[1];
  *&v76.f64[0] = vadd_f32(*&v76.f64[0], v12);
  *&v77 = vmuls_lane_f32(*(v10 + 20), *&v76.f64[0], 1) + (*v76.f64 * *(v10 + 16));
  LODWORD(v78) = *(v10 + 24);
  v79.i32[0] = *(v10 + 36);
  *v80.i32 = vmuls_lane_f32(*(v10 + 32), *&v76.f64[0], 1);
  v81 = v159;
  v82 = vaddq_f32(v159, vmulq_n_f32(vmulq_n_f32(v75, *v171.i32), *v171.i32));
  v160 = v82;
  v82.n128_f32[0] = *&v78 + *&v77;
  *v76.f64 = *v79.i32 + (*v80.i32 + (*v76.f64 * *(v10 + 28)));
  v82.n128_u32[1] = LODWORD(v76.f64[0]);
  *v84.i64 = CI::BitmapSampler::read(*(v10 + 8), v82, v76, v77, v78, v81, v80, v79, v83);
  *&v85.f64[1] = v166.n128_u64[1];
  HIDWORD(v86) = v167.n128_u32[1];
  *&v85.f64[0] = vadd_f32(vzip1_s32(v167.n128_u64[0], v166.n128_u64[0]), v12);
  *&v86 = vmuls_lane_f32(*(v10 + 20), *&v85.f64[0], 1) + (*v85.f64 * *(v10 + 16));
  LODWORD(v87) = *(v10 + 24);
  v88.i32[0] = *(v10 + 36);
  *v89.i32 = vmuls_lane_f32(*(v10 + 32), *&v85.f64[0], 1);
  v90 = v160;
  v91 = vaddq_f32(v160, vmulq_n_f32(vmulq_lane_f32(v84, *v171.i8, 1), *v171.i32));
  v161 = v91;
  v91.n128_f32[0] = *&v87 + *&v86;
  *v85.f64 = *v88.i32 + (*v89.i32 + (*v85.f64 * *(v10 + 28)));
  v91.n128_u32[1] = LODWORD(v85.f64[0]);
  *v93.i64 = CI::BitmapSampler::read(*(v10 + 8), v91, v85, v86, v87, v90, v89, v88, v92);
  *&v94.f64[1] = v166.n128_u64[1];
  HIDWORD(v95) = v167.n128_u32[1];
  *&v94.f64[0] = vadd_f32(vext_s8(v167.n128_u64[0], v166.n128_u64[0], 4uLL), v12);
  *&v95 = vmuls_lane_f32(*(v10 + 20), *&v94.f64[0], 1) + (*v94.f64 * *(v10 + 16));
  LODWORD(v96) = *(v10 + 24);
  v97.i32[0] = *(v10 + 36);
  *v98.i32 = vmuls_lane_f32(*(v10 + 32), *&v94.f64[0], 1);
  v99 = v161;
  v100 = vaddq_f32(v161, vmulq_n_f32(vmulq_lane_f32(v93, *v171.i8, 1), *v171.i32));
  v162 = v100;
  v100.n128_f32[0] = *&v96 + *&v95;
  *v94.f64 = *v97.i32 + (*v98.i32 + (*v94.f64 * *(v10 + 28)));
  v100.n128_u32[1] = LODWORD(v94.f64[0]);
  *v102.i64 = CI::BitmapSampler::read(*(v10 + 8), v100, v94, v95, v96, v99, v98, v97, v101);
  *&v103.f64[0] = vadd_f32(vdup_laneq_s32(v171, 2), v12);
  *&v104 = vmuls_lane_f32(*(v10 + 20), *&v103.f64[0], 1) + (*v103.f64 * *(v10 + 16));
  LODWORD(v105) = *(v10 + 24);
  v106.i32[0] = *(v10 + 36);
  *v107.i32 = vmuls_lane_f32(*(v10 + 32), *&v103.f64[0], 1);
  v108 = v162;
  v109 = vaddq_f32(v162, vmulq_n_f32(vmulq_n_f32(v102, *v171.i32), *v171.i32));
  v163 = v109;
  v109.n128_f32[0] = *&v105 + *&v104;
  *v103.f64 = *v106.i32 + (*v107.i32 + (*v103.f64 * *(v10 + 28)));
  v109.n128_u32[1] = LODWORD(v103.f64[0]);
  *v110.i64 = CI::BitmapSampler::read(*(v10 + 8), v109, v103, v104, v105, v108, v107, v106, v171);
  *&v111.f64[0] = vadd_f32(v14, v12);
  *&v112 = vmuls_lane_f32(*(v10 + 20), *&v111.f64[0], 1) + (*v111.f64 * *(v10 + 16));
  LODWORD(v113) = *(v10 + 24);
  v114.i32[0] = *(v10 + 36);
  *v115.i32 = vmuls_lane_f32(*(v10 + 32), *&v111.f64[0], 1);
  v116 = v163;
  v117 = vaddq_f32(v163, vmulq_n_f32(vmulq_n_f32(v110, *v171.i32), *v171.i32));
  v164 = v117;
  v117.n128_f32[0] = *&v113 + *&v112;
  *v111.f64 = *v114.i32 + (*v115.i32 + (*v111.f64 * *(v10 + 28)));
  v117.n128_u32[1] = LODWORD(v111.f64[0]);
  *v119.i64 = CI::BitmapSampler::read(*(v10 + 8), v117, v111, v112, v113, v116, v115, v114, v118);
  HIDWORD(v121) = v166.n128_u32[1];
  v120 = v167;
  HIDWORD(v120.f64[0]) = v166.n128_u32[1];
  *&v120.f64[0] = vadd_f32(*&v120.f64[0], v12);
  *&v121 = vmuls_lane_f32(*(v10 + 20), *&v120.f64[0], 1) + (*v120.f64 * *(v10 + 16));
  LODWORD(v122) = *(v10 + 24);
  v123.i32[0] = *(v10 + 36);
  *v124.i32 = vmuls_lane_f32(*(v10 + 32), *&v120.f64[0], 1);
  v125 = v164;
  v126 = vaddq_f32(v164, vmulq_n_f32(vmulq_lane_f32(v119, *v171.i8, 1), *v171.i32));
  v165 = v126;
  v126.n128_f32[0] = *&v122 + *&v121;
  *v120.f64 = *v123.i32 + (*v124.i32 + (*v120.f64 * *(v10 + 28)));
  v126.n128_u32[1] = LODWORD(v120.f64[0]);
  *v128.i64 = CI::BitmapSampler::read(*(v10 + 8), v126, v120, v121, v122, v125, v124, v123, v127);
  *&v129.f64[1] = v166.n128_u64[1];
  HIDWORD(v130) = v167.n128_u32[1];
  *&v129.f64[0] = vadd_f32(vzip2_s32(v167.n128_u64[0], v166.n128_u64[0]), v12);
  *&v130 = vmuls_lane_f32(*(v10 + 20), *&v129.f64[0], 1) + (*v129.f64 * *(v10 + 16));
  LODWORD(v131) = *(v10 + 24);
  v132.i32[0] = *(v10 + 36);
  *v133.i32 = vmuls_lane_f32(*(v10 + 32), *&v129.f64[0], 1);
  v134 = vaddq_f32(v165, vmulq_lane_f32(vmulq_lane_f32(v128, *v171.i8, 1), *v171.i8, 1));
  v168 = v134;
  v134.n128_f32[0] = *&v131 + *&v130;
  *v129.f64 = *v132.i32 + (*v133.i32 + (*v129.f64 * *(v10 + 28)));
  v134.n128_u32[1] = LODWORD(v129.f64[0]);
  *v136.i64 = CI::BitmapSampler::read(*(v10 + 8), v134, v129, v130, v131, v165, v133, v132, v135);
  *&v137.f64[1] = v166.n128_u64[1];
  *&v137.f64[0] = vadd_f32(v166.n128_u64[0], v12);
  *&v138 = vmuls_lane_f32(*(v10 + 20), *&v137.f64[0], 1) + (*v137.f64 * *(v10 + 16));
  LODWORD(v139) = *(v10 + 24);
  v140.i32[0] = *(v10 + 36);
  v141 = v168;
  v142 = vaddq_f32(v168, vmulq_lane_f32(vmulq_n_f32(v136, *v171.i32), *v171.i8, 1));
  v169 = v142;
  v142.n128_f32[0] = *&v139 + *&v138;
  *v137.f64 = *v140.i32 + (vmuls_lane_f32(*(v10 + 32), *&v137.f64[0], 1) + (*v137.f64 * *(v10 + 28)));
  v142.n128_u32[1] = LODWORD(v137.f64[0]);
  *v144.i64 = CI::BitmapSampler::read(*(v10 + 8), v142, v137, v138, v139, v141, v171, v140, v143);
  *&v145.f64[0] = vadd_f32(vdup_laneq_s32(v171, 3), v12);
  *&v146 = vmuls_lane_f32(*(v10 + 20), *&v145.f64[0], 1) + (*v145.f64 * *(v10 + 16));
  LODWORD(v147) = *(v10 + 24);
  v148.i32[0] = *(v10 + 36);
  *v149.i32 = vmuls_lane_f32(*(v10 + 32), *&v145.f64[0], 1);
  v150 = v169;
  v151 = vaddq_f32(v169, vmulq_lane_f32(vmulq_n_f32(v144, *v171.i32), *v171.i8, 1));
  v170 = v151;
  v151.n128_f32[0] = *&v147 + *&v146;
  *v145.f64 = *v148.i32 + (*v149.i32 + (*v145.f64 * *(v10 + 28)));
  v151.n128_u32[1] = LODWORD(v145.f64[0]);
  *v152.i64 = CI::BitmapSampler::read(*(v10 + 8), v151, v145, v146, v147, v150, v149, v148, v171);
  *&result = vaddq_f32(v170, vmulq_lane_f32(vmulq_lane_f32(v152, *v171.i8, 1), *v171.i8, 1)).u64[0];
  return result;
}

double CI::sw_cubicDownsample2h(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v51 = *v9;
  DC = CI::getDC(a1);
  HIDWORD(v12.f64[0]) = 1065353216;
  v13 = vmul_f32(*DC, 0x3F80000040000000);
  v14 = vextq_s8(v51, v51, 8uLL);
  v14.n128_u64[0] = vneg_f32(vrev64_s32(v14.n128_u64[0]));
  v47 = v14;
  v14.n128_u64[0] = vadd_f32(vmul_n_f32(1065353216, v14.n128_f32[0]), v13);
  LODWORD(v15) = *(v10 + 24);
  v16.i32[0] = *(v10 + 36);
  *v17.i32 = vmuls_lane_f32(*(v10 + 32), v14.n128_u64[0], 1);
  *&v18 = *v17.i32 + (v14.n128_f32[0] * *(v10 + 28));
  v14.n128_f32[0] = *&v15 + (vmuls_lane_f32(*(v10 + 20), v14.n128_u64[0], 1) + (v14.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v16.i32 + *&v18;
  v14.n128_f32[1] = *v16.i32 + *&v18;
  *v21.i64 = CI::BitmapSampler::read(*(v10 + 8), v14, v12, v15, v18, v17, v16, v19, v20);
  *&v22.f64[1] = v47.n128_u64[1];
  *&v22.f64[0] = vadd_f32(vmul_lane_f32(1065353216, v47.n128_u64[0], 1), v13);
  *&v23 = vmuls_lane_f32(*(v10 + 20), *&v22.f64[0], 1) + (*v22.f64 * *(v10 + 16));
  LODWORD(v24) = *(v10 + 24);
  v25.i32[0] = *(v10 + 36);
  *v26.i32 = vmuls_lane_f32(*(v10 + 32), *&v22.f64[0], 1);
  v27 = vaddq_f32(vmulq_lane_f32(v21, *v51.f32, 1), 0);
  v48 = v27;
  v27.n128_f32[0] = *&v24 + *&v23;
  *v22.f64 = *v25.i32 + (*v26.i32 + (*v22.f64 * *(v10 + 28)));
  v27.n128_u32[1] = LODWORD(v22.f64[0]);
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), v27, v22, v23, v24, 0, v26, v25, v28);
  *&v30.f64[0] = vadd_f32(vmul_laneq_f32(1065353216, v51, 2), v13);
  *&v31 = vmuls_lane_f32(*(v10 + 20), *&v30.f64[0], 1) + (*v30.f64 * *(v10 + 16));
  LODWORD(v32) = *(v10 + 24);
  v33.i32[0] = *(v10 + 36);
  *v34.i32 = vmuls_lane_f32(*(v10 + 32), *&v30.f64[0], 1);
  v35 = v48;
  v36 = vaddq_f32(v48, vmulq_n_f32(v29, v51.f32[0]));
  v49 = v36;
  v36.n128_f32[0] = *&v32 + *&v31;
  *v30.f64 = *v33.i32 + (*v34.i32 + (*v30.f64 * *(v10 + 28)));
  v36.n128_u32[1] = LODWORD(v30.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), v36, v30, v31, v32, v35, v34, v33, v51);
  *&v38.f64[0] = vadd_f32(vmul_laneq_f32(1065353216, v51, 3), v13);
  *&v39 = vmuls_lane_f32(*(v10 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v10 + 16));
  LODWORD(v40) = *(v10 + 24);
  v41.i32[0] = *(v10 + 36);
  *v42.i32 = vmuls_lane_f32(*(v10 + 32), *&v38.f64[0], 1);
  v43 = v49;
  v44 = vaddq_f32(v49, vmulq_n_f32(v37, v51.f32[0]));
  v50 = v44;
  v44.n128_f32[0] = *&v40 + *&v39;
  *v38.f64 = *v41.i32 + (*v42.i32 + (*v38.f64 * *(v10 + 28)));
  v44.n128_u32[1] = LODWORD(v38.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), v44, v38, v39, v40, v43, v42, v41, v51);
  *&result = vaddq_f32(v50, vmulq_lane_f32(v45, *v51.f32, 1)).u64[0];
  return result;
}

double CI::sw_cubicDownsample2v(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v51 = *v9;
  DC = CI::getDC(a1);
  HIDWORD(v12.f64[0]) = 0x40000000;
  v13 = vmul_f32(*DC, 0x400000003F800000);
  v14 = vextq_s8(v51, v51, 8uLL);
  v14.n128_u64[0] = vneg_f32(vrev64_s32(v14.n128_u64[0]));
  v47 = v14;
  v14.n128_u64[0] = vadd_f32(vmul_n_f32(0x3F80000000000000, v14.n128_f32[0]), v13);
  LODWORD(v15) = *(v10 + 24);
  v16.i32[0] = *(v10 + 36);
  *v17.i32 = vmuls_lane_f32(*(v10 + 32), v14.n128_u64[0], 1);
  *&v18 = *v17.i32 + (v14.n128_f32[0] * *(v10 + 28));
  v14.n128_f32[0] = *&v15 + (vmuls_lane_f32(*(v10 + 20), v14.n128_u64[0], 1) + (v14.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v16.i32 + *&v18;
  v14.n128_f32[1] = *v16.i32 + *&v18;
  *v21.i64 = CI::BitmapSampler::read(*(v10 + 8), v14, v12, v15, v18, v17, v16, v19, v20);
  *&v22.f64[1] = v47.n128_u64[1];
  *&v22.f64[0] = vadd_f32(vmul_lane_f32(0x3F80000000000000, v47.n128_u64[0], 1), v13);
  *&v23 = vmuls_lane_f32(*(v10 + 20), *&v22.f64[0], 1) + (*v22.f64 * *(v10 + 16));
  LODWORD(v24) = *(v10 + 24);
  v25.i32[0] = *(v10 + 36);
  *v26.i32 = vmuls_lane_f32(*(v10 + 32), *&v22.f64[0], 1);
  v27 = vaddq_f32(vmulq_lane_f32(v21, *v51.f32, 1), 0);
  v48 = v27;
  v27.n128_f32[0] = *&v24 + *&v23;
  *v22.f64 = *v25.i32 + (*v26.i32 + (*v22.f64 * *(v10 + 28)));
  v27.n128_u32[1] = LODWORD(v22.f64[0]);
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), v27, v22, v23, v24, 0, v26, v25, v28);
  *&v30.f64[0] = vadd_f32(vmul_laneq_f32(0x3F80000000000000, v51, 2), v13);
  *&v31 = vmuls_lane_f32(*(v10 + 20), *&v30.f64[0], 1) + (*v30.f64 * *(v10 + 16));
  LODWORD(v32) = *(v10 + 24);
  v33.i32[0] = *(v10 + 36);
  *v34.i32 = vmuls_lane_f32(*(v10 + 32), *&v30.f64[0], 1);
  v35 = v48;
  v36 = vaddq_f32(v48, vmulq_n_f32(v29, v51.f32[0]));
  v49 = v36;
  v36.n128_f32[0] = *&v32 + *&v31;
  *v30.f64 = *v33.i32 + (*v34.i32 + (*v30.f64 * *(v10 + 28)));
  v36.n128_u32[1] = LODWORD(v30.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), v36, v30, v31, v32, v35, v34, v33, v51);
  *&v38.f64[0] = vadd_f32(vmul_laneq_f32(0x3F80000000000000, v51, 3), v13);
  *&v39 = vmuls_lane_f32(*(v10 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v10 + 16));
  LODWORD(v40) = *(v10 + 24);
  v41.i32[0] = *(v10 + 36);
  *v42.i32 = vmuls_lane_f32(*(v10 + 32), *&v38.f64[0], 1);
  v43 = v49;
  v44 = vaddq_f32(v49, vmulq_n_f32(v37, v51.f32[0]));
  v50 = v44;
  v44.n128_f32[0] = *&v40 + *&v39;
  *v38.f64 = *v41.i32 + (*v42.i32 + (*v38.f64 * *(v10 + 28)));
  v44.n128_u32[1] = LODWORD(v38.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), v44, v38, v39, v40, v43, v42, v41, v51);
  *&result = vaddq_f32(v50, vmulq_lane_f32(v45, *v51.f32, 1)).u64[0];
  return result;
}

double CI::sw_cubicDownsampleH(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v5 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v5 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v5 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 + 88);
  v16 = *(v5 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (v15 == 5)
  {
    v18 = v17;
  }

  v51 = *v10;
  v45 = *v18;
  v46 = *v14;
  DC = CI::getDC(a1);
  __asm { FMOV            V2.2D, #0.5 }

  *v28.i8 = vcvt_f32_f64(vaddq_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vmul_n_f32(vadd_f32(vdup_lane_s32(*DC, 0), COERCE_FLOAT32X2_T(--2.00000143)), *&v51)), xmmword_19CF29EC0)), _Q2));
  v29 = *&v28.i32[1];
  if (*v28.i32 <= *&v28.i32[1])
  {
    v31 = *(&v51 + 2);
    v32 = a4 + 80 * v6;
    v33 = vmul_f32(*&v51, *DC);
    v34 = v28;
    v34.i32[1] = v33.i32[1];
    v35 = *(&v51 + 2) * vsub_f32(*v28.i8, v33).f32[0];
    v30 = 0uLL;
    v20.i64[0] = 0;
    __asm { FMOV            V2.4S, #1.0 }

    v44 = HIDWORD(_Q2);
    do
    {
      v48 = v34;
      v49 = v20;
      v50 = v30;
      v52 = v28;
      v20.f32[0] = fabsf(v35);
      v37.f32[0] = (v35 * v35) * v20.f32[0];
      v37.f32[1] = v35 * v35;
      v37.i64[1] = __PAIR64__(v44, v20.u32[0]);
      v30.i32[0] = 1.0;
      HIDWORD(v38) = v45.i32[1];
      v39 = vmulq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v30, v20), 0), v46, v45), v37);
      v40 = vextq_s8(v39, v39, 8uLL);
      *&v40.f64[0] = vadd_f32(v39.n128_u64[0], *&v40.f64[0]);
      v39.n128_f32[0] = *(v32 + 24) + (vmuls_lane_f32(*(v32 + 20), *v34.i8, 1) + (*v28.i32 * *(v32 + 16)));
      v28.i32[0] = *(v32 + 36);
      *&v38 = vmuls_lane_f32(*(v32 + 32), *v34.i8, 1) + (*v52.i32 * *(v32 + 28));
      *v37.f32 = vadd_f32(*&v40.f64[0], vdup_lane_s32(*&v40.f64[0], 1));
      v47 = v37.f32[0];
      v41 = vaddv_f32(*&v40.f64[0]);
      *v40.f64 = *v28.i32 + *&v38;
      v39.n128_f32[1] = *v28.i32 + *&v38;
      *v42.i64 = CI::BitmapSampler::read(*(v32 + 8), v39, v40, v38, *v37.i64, v28, v52, v21, v22);
      v34 = v48;
      v28 = v52;
      v30 = vaddq_f32(v50, vmulq_n_f32(v42, v47));
      v20 = v49;
      v20.f32[0] = v49.f32[0] + v41;
      v35 = v31 + v35;
      *v28.i32 = *v52.i32 + 1.0;
      *v34.i32 = *v52.i32 + 1.0;
    }

    while ((*v52.i32 + 1.0) <= v29);
  }

  else
  {
    v20.i64[0] = 0;
    v30 = 0uLL;
  }

  *&result = vdivq_f32(v30, vdupq_lane_s32(*v20.f32, 0)).u64[0];
  return result;
}

double CI::sw_cubicDownsampleV(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v5 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v5 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v5 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 + 88);
  v16 = *(v5 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (v15 == 5)
  {
    v18 = v17;
  }

  v51 = *v10;
  v45 = *v18;
  v46 = *v14;
  DC = CI::getDC(a1);
  __asm { FMOV            V2.2D, #0.5 }

  v29 = vaddq_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vmul_lane_f32(vadd_f32(vdup_lane_s32(*DC, 1), COERCE_FLOAT32X2_T(--2.00000143)), *&v51, 1)), xmmword_19CF29EC0)), _Q2);
  *v29.f32 = vcvt_f32_f64(v29);
  v30 = v29.f32[1];
  if (v29.f32[0] <= v29.f32[1])
  {
    v32 = *(&v51 + 3);
    v33 = a4 + 80 * v6;
    v34 = vmul_f32(*&v51, *DC);
    *v21.i8 = vzip1_s32(v34, *v29.f32);
    v35 = *(&v51 + 3) * vsub_f32(*v29.f32, vdup_lane_s32(v34, 1)).f32[0];
    v31 = 0uLL;
    v20.i64[0] = 0;
    __asm { FMOV            V3.4S, #1.0 }

    v44 = HIDWORD(_Q3);
    do
    {
      v52 = v21;
      v48 = v20;
      v49 = v31;
      v50 = v29;
      v20.f32[0] = fabsf(v35);
      v37.f32[0] = (v35 * v35) * v20.f32[0];
      v37.f32[1] = v35 * v35;
      v37.i64[1] = __PAIR64__(v44, v20.u32[0]);
      v29.i32[0] = 1.0;
      HIDWORD(v38) = v45.i32[1];
      v39 = vmulq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v29, v20), 0), v46, v45), v37);
      v40 = vextq_s8(v39, v39, 8uLL);
      *&v40.f64[0] = vadd_f32(v39.n128_u64[0], *&v40.f64[0]);
      v39.n128_f32[0] = *(v33 + 24) + (vmuls_lane_f32(*(v33 + 20), *v21.i8, 1) + (*v21.i32 * *(v33 + 16)));
      v21.i32[0] = *(v33 + 36);
      *&v38 = vmuls_lane_f32(*(v33 + 32), *v52.i8, 1) + (*v52.i32 * *(v33 + 28));
      *v37.f32 = vadd_f32(*&v40.f64[0], vdup_lane_s32(*&v40.f64[0], 1));
      v47 = v37.f32[0];
      v41 = vaddv_f32(*&v40.f64[0]);
      *v40.f64 = *v21.i32 + *&v38;
      v39.n128_f32[1] = *v21.i32 + *&v38;
      *v42.i64 = CI::BitmapSampler::read(*(v33 + 8), v39, v40, v38, *v37.i64, v21, v52, v22, v23);
      v29 = v50;
      v21 = v52;
      v31 = vaddq_f32(v49, vmulq_n_f32(v42, v47));
      v20 = v48;
      v20.f32[0] = v48.f32[0] + v41;
      v35 = v32 + v35;
      v29.f32[0] = v50.f32[0] + 1.0;
      *&v21.i32[1] = v50.f32[0] + 1.0;
    }

    while ((v50.f32[0] + 1.0) <= v30);
  }

  else
  {
    v20.i64[0] = 0;
    v31 = 0uLL;
  }

  *&result = vdivq_f32(v31, vdupq_lane_s32(*v20.f32, 0)).u64[0];
  return result;
}

double CI::sw_cubicUpsample10(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v11 = vadd_f32(vmul_f32(*v9, *CI::getDC(a1)), 0xBF000000BF000000);
  v12 = vrndm_f32(v11);
  __asm { FMOV            V4.2S, #1.0 }

  v18 = vadd_f32(vsub_f32(v12, v11), _D4);
  v19 = vsub_f32(v11, v12);
  *v20.i8 = vmul_f32(v18, 0x3F0000003F000000);
  *v21.i8 = vmul_f32(v18, *v20.i8);
  v22 = vdup_n_s32(0x3E2AAAABu);
  *v23.i8 = vadd_f32(vadd_f32(*v20.i8, vadd_f32(*v21.i8, vmul_f32(v18, vmul_f32(v18, vmul_f32(v18, vdup_n_s32(0xBEAAAAAB)))))), v22);
  v24.n128_u64[0] = vsub_f32(_D4, *v23.i8);
  v63 = v24;
  *v25.i8 = vadd_f32(vadd_f32(v12, vdiv_f32(vadd_f32(vadd_f32(*v20.i8, vsub_f32(*v21.i8, vmul_f32(v18, *v21.i8))), v22), *v23.i8)), 0xBF000000BF000000);
  __asm { FMOV            V1.2S, #6.0 }

  v27 = vadd_f32(v12, vdiv_f32(vdiv_f32(vmul_f32(v19, vmul_f32(v19, v19)), _D1), v24.n128_u64[0]));
  __asm { FMOV            V1.2S, #1.5 }

  v29.n128_u64[0] = vadd_f32(v27, *&_Q1.f64[0]);
  v60 = v23;
  v61 = v29;
  v29.n128_f32[0] = vmuls_lane_f32(*v23.i32, *v23.i8, 1);
  v56 = v29;
  v58 = v25;
  v30 = v25;
  v12.i32[0] = *(v10 + 28);
  v29.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v25.i8, 1) + (*v25.i32 * *(v10 + 16)));
  v25.i32[0] = *(v10 + 36);
  *_Q1.f64 = *v25.i32 + (vmuls_lane_f32(*(v10 + 32), *v30.i8, 1) + (*v30.i32 * v12.f32[0]));
  v29.n128_u32[1] = LODWORD(_Q1.f64[0]);
  *v31.i64 = CI::BitmapSampler::read(*(v10 + 8), v29, _Q1, *&v12, *v25.i64, v30, v23, v20, v21);
  v32 = v56;
  v33 = vmulq_n_f32(v31, v56.n128_f32[0]);
  v57 = v33;
  v33.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v58.i8, 1) + (*v61.i32 * *(v10 + 16)));
  LODWORD(v34) = *(v10 + 36);
  v35 = v63;
  *v35.i32 = vmuls_lane_f32(v63.n128_f32[0], *v60.i8, 1);
  v55 = v35;
  *v32.f64 = *&v34 + (vmuls_lane_f32(*(v10 + 32), *v58.i8, 1) + (*v61.i32 * *(v10 + 28)));
  v33.n128_u32[1] = LODWORD(v32.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), v33, v32, *v35.i64, v34, v60, v58, v61, v36);
  v38 = v58;
  v39 = vmuls_lane_f32(*(v10 + 20), *v61.i8, 1) + (*v58.i32 * *(v10 + 16));
  LODWORD(v40) = *(v10 + 24);
  v41.i32[0] = *(v10 + 36);
  *&v42 = vmuls_lane_f32(*(v10 + 32), *v61.i8, 1) + (*v58.i32 * *(v10 + 28));
  v59 = vaddq_f32(v57, vmulq_n_f32(v37, *v55.i32));
  v37.i64[1] = v63.n128_i64[1];
  v37.f32[0] = *&v40 + v39;
  *v43.f64 = *v41.i32 + *&v42;
  v37.f32[1] = *v41.i32 + *&v42;
  *v44.i64 = CI::BitmapSampler::read(*(v10 + 8), v37, v43, v40, v42, v60, v41, v55, v38);
  HIDWORD(v45) = v61.i32[1];
  v46 = vmuls_lane_f32(*(v10 + 20), *v61.i8, 1) + (*v61.i32 * *(v10 + 16));
  v47 = v61;
  LODWORD(v48) = *(v10 + 24);
  v49.i32[0] = *(v10 + 36);
  *&v45 = vmuls_lane_f32(*(v10 + 32), *v61.i8, 1) + (*v61.i32 * *(v10 + 28));
  v62 = vaddq_f32(v59, vmulq_n_f32(v44, vmuls_lane_f32(*v60.i32, v63.n128_u64[0], 1)));
  v50 = v63;
  v63.n128_u32[0] = vmuls_lane_f32(v50.n128_f32[0], v50.n128_u64[0], 1);
  v50.n128_f32[0] = *&v48 + v46;
  *v51.f64 = *v49.i32 + *&v45;
  v50.n128_f32[1] = *v49.i32 + *&v45;
  *v53.i64 = CI::BitmapSampler::read(*(v10 + 8), v50, v51, v48, v45, v59, v49, v47, v52);
  *&result = vaddq_f32(v62, vmulq_n_f32(v53, v63.n128_f32[0])).u64[0];
  return result;
}

double CI::sw_cubicUpsampleX0(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v76 = *v13;
  v73 = *v17;
  v19 = vmul_f32(*v9, *CI::getDC(a1));
  v20 = vadd_f32(vrndm_f32(vadd_f32(v19, 0xBF000000BF000000)), 0x3F0000003F000000);
  v21 = vsub_f32(v20, v19);
  __asm { FMOV            V3.2S, #-1.0 }

  v27 = vabs_f32(vadd_f32(v21, _D3));
  v28.i64[1] = v73.i64[1];
  v29 = vdup_laneq_s32(v73, 3);
  v30.i64[1] = v73.i64[1];
  v31 = vabd_f32(v20, v19);
  v32 = vadd_f32(vdup_laneq_s32(v76, 3), vadd_f32(vmul_laneq_f32(v31, v76, 2), vadd_f32(vmul_f32(v31, vmul_lane_f32(v31, *v76.f32, 1)), vmul_f32(v31, vmul_f32(v31, vmul_n_f32(v31, v76.f32[0]))))));
  v33 = vabs_f32(vadd_f32(v21, 0x4000000040000000));
  v34 = vadd_f32(v29, vadd_f32(vmul_laneq_f32(v33, v73, 2), vadd_f32(vmul_f32(v33, vmul_lane_f32(v33, *v73.f32, 1)), vmul_f32(v33, vmul_f32(v33, vmul_n_f32(v33, v73.f32[0]))))));
  *v30.i8 = vadd_f32(v32, vadd_f32(v29, vadd_f32(vmul_laneq_f32(v27, v73, 2), vadd_f32(vmul_f32(v27, vmul_lane_f32(v27, *v73.f32, 1)), vmul_f32(v27, vmul_f32(v27, vmul_n_f32(v27, v73.f32[0])))))));
  __asm { FMOV            V4.2S, #1.0 }

  *v28.i8 = vsub_f32(_D4, *v30.i8);
  *v36.i8 = vdup_n_s32(0xB8D1B717);
  v72 = v30;
  *v37.i8 = vcltz_f32(vadd_f32(*v30.i8, *v36.i8));
  *v38.i8 = vadd_f32(vadd_f32(v20, _D3), vbic_s8(vdiv_f32(v32, *v30.i8), *v37.i8));
  v77 = v28;
  v39 = vdiv_f32(v34, *v28.i8);
  *&v40.f64[0] = vadd_f32(v20, _D4);
  v41.n128_u64[0] = vadd_f32(*&v40.f64[0], vbic_s8(v39, vcltz_f32(vadd_f32(*v28.i8, *v36.i8))));
  v74 = v41;
  v41.n128_f32[0] = vmuls_lane_f32(*v30.i32, *v30.i8, 1);
  v68 = v41;
  v70 = v38;
  v42 = v38;
  v39.i32[0] = *(v18 + 28);
  v41.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v38.i8, 1) + (*v38.i32 * *(v18 + 16)));
  v38.i32[0] = *(v18 + 36);
  *v40.f64 = *v38.i32 + (vmuls_lane_f32(*(v18 + 32), *v42.i8, 1) + (*v42.i32 * *v39.i32));
  v41.n128_u32[1] = LODWORD(v40.f64[0]);
  *v43.i64 = CI::BitmapSampler::read(*(v18 + 8), v41, v40, *&v39, *v38.i64, v42, v36, v37, v28);
  v44 = v68;
  v45 = vmulq_n_f32(v43, v68.n128_f32[0]);
  v69 = v45;
  v45.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v70.i8, 1) + (*v74.i32 * *(v18 + 16)));
  LODWORD(v46) = *(v18 + 36);
  v47 = v77;
  *v47.i32 = vmuls_lane_f32(v77.n128_f32[0], *v72.i8, 1);
  v67 = v47;
  *v44.f64 = *&v46 + (vmuls_lane_f32(*(v18 + 32), *v70.i8, 1) + (*v74.i32 * *(v18 + 28)));
  v45.n128_u32[1] = LODWORD(v44.f64[0]);
  *v49.i64 = CI::BitmapSampler::read(*(v18 + 8), v45, v44, *v47.i64, v46, v72, v70, v74, v48);
  v50 = v70;
  v51 = vmuls_lane_f32(*(v18 + 20), *v74.i8, 1) + (*v70.i32 * *(v18 + 16));
  LODWORD(v52) = *(v18 + 24);
  v53.i32[0] = *(v18 + 36);
  *&v54 = vmuls_lane_f32(*(v18 + 32), *v74.i8, 1) + (*v70.i32 * *(v18 + 28));
  v71 = vaddq_f32(v69, vmulq_n_f32(v49, *v67.i32));
  v49.i64[1] = v77.n128_i64[1];
  v49.f32[0] = *&v52 + v51;
  *v55.f64 = *v53.i32 + *&v54;
  v49.f32[1] = *v53.i32 + *&v54;
  *v56.i64 = CI::BitmapSampler::read(*(v18 + 8), v49, v55, v52, v54, v72, v53, v67, v50);
  HIDWORD(v57) = v74.i32[1];
  v58 = vmuls_lane_f32(*(v18 + 20), *v74.i8, 1) + (*v74.i32 * *(v18 + 16));
  v59 = v74;
  LODWORD(v60) = *(v18 + 24);
  v61.i32[0] = *(v18 + 36);
  *&v57 = vmuls_lane_f32(*(v18 + 32), *v74.i8, 1) + (*v74.i32 * *(v18 + 28));
  v75 = vaddq_f32(v71, vmulq_n_f32(v56, vmuls_lane_f32(*v72.i32, v77.n128_u64[0], 1)));
  v62 = v77;
  v77.n128_u32[0] = vmuls_lane_f32(v62.n128_f32[0], v62.n128_u64[0], 1);
  v62.n128_f32[0] = *&v60 + v58;
  *v63.f64 = *v61.i32 + *&v57;
  v62.n128_f32[1] = *v61.i32 + *&v57;
  *v65.i64 = CI::BitmapSampler::read(*(v18 + 8), v62, v63, v60, v57, v71, v61, v59, v64);
  *&result = vaddq_f32(v75, vmulq_n_f32(v65, v77.n128_f32[0])).u64[0];
  return result;
}

double CI::sw_cubicUpsample(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v177 = *v17;
  v181 = *v13;
  v19 = vmul_f32(*v9, *CI::getDC(a1));
  *v20.i8 = vadd_f32(vrndm_f32(vadd_f32(v19, 0xBF000000BF000000)), 0x3F0000003F000000);
  v21 = vsub_f32(*v20.i8, v19);
  v22 = v20;
  __asm { FMOV            V9.2S, #-1.0 }

  *v20.i8 = vabs_f32(vadd_f32(v21, *&_D9));
  v28.i64[1] = v177.i64[1];
  *v29.i8 = vadd_f32(vdup_laneq_s32(v177, 3), vadd_f32(vmul_laneq_f32(*v20.i8, v177, 2), vadd_f32(vmul_f32(*v20.i8, vmul_lane_f32(*v20.i8, *v177.f32, 1)), vmul_f32(*v20.i8, vmul_f32(*v20.i8, vmul_n_f32(*v20.i8, v177.f32[0]))))));
  v178 = v29;
  v30 = vabd_f32(*v22.i8, v19);
  v183 = v22;
  v31 = v181;
  v32 = vmul_f32(v30, vmul_lane_f32(v30, *v181.f32, 1));
  v33 = vadd_f32(vmul_laneq_f32(v30, v181, 2), vadd_f32(v32, vmul_f32(v30, vmul_f32(v30, vmul_n_f32(v30, v181.f32[0])))));
  __asm { FMOV            V8.2S, #1.0 }

  v35 = vabs_f32(vadd_f32(v21, *&_D8));
  *v20.i8 = vadd_f32(*v22.i8, *&_D9);
  v32.f32[0] = vmuls_lane_f32(*(v18 + 20), *v20.i8, 1) + (*v20.i32 * *(v18 + 16));
  v31.i32[0] = *(v18 + 24);
  v36.i32[0] = *(v18 + 36);
  *v20.i32 = vmuls_lane_f32(*(v18 + 32), *v20.i8, 1) + (*v20.i32 * *(v18 + 28));
  *v28.i8 = vmul_f32(v35, vmul_lane_f32(v35, *v181.f32, 1));
  *v22.i8 = vdup_laneq_s32(v181, 3);
  v37.n128_u64[0] = vadd_f32(*v22.i8, v33);
  *&v38.f64[0] = vadd_f32(*v22.i8, vadd_f32(vmul_laneq_f32(v35, v181, 2), vadd_f32(*v28.i8, vmul_f32(v35, vmul_f32(v35, vmul_n_f32(v35, v181.f32[0]))))));
  v175 = v37;
  v176 = v38;
  v37.n128_u64[0] = vsub_f32(*&_D8, vadd_f32(*&v38.f64[0], vadd_f32(v37.n128_u64[0], *v29.i8)));
  v182 = v37;
  v37.n128_f32[0] = *v31.i32 + v32.f32[0];
  *v38.f64 = *v36.i32 + *v20.i32;
  v37.n128_f32[1] = *v36.i32 + *v20.i32;
  *v39.i64 = CI::BitmapSampler::read(*(v18 + 8), v37, v38, *v20.i64, *&v32, v31, v22, v28, v36);
  HIDWORD(v40) = v183.i32[1];
  *&v41.f64[0] = vadd_f32(*v183.i8, 0xBF80000000000000);
  *&v40 = vmuls_lane_f32(*(v18 + 20), *&v41.f64[0], 1) + (*v41.f64 * *(v18 + 16));
  LODWORD(v42) = *(v18 + 24);
  v43.i32[0] = *(v18 + 36);
  *v44.i32 = vmuls_lane_f32(*(v18 + 32), *&v41.f64[0], 1);
  v45 = vaddq_f32(vmulq_lane_f32(vmulq_n_f32(v39, *v178.i32), *v178.i8, 1), 0);
  v163 = v45;
  v45.n128_f32[0] = *&v42 + *&v40;
  *v41.f64 = *v43.i32 + (*v44.i32 + (*v41.f64 * *(v18 + 28)));
  v45.n128_u32[1] = LODWORD(v41.f64[0]);
  *v47.i64 = CI::BitmapSampler::read(*(v18 + 8), v45, v41, v40, v42, 0, v44, v43, v46);
  HIDWORD(v48) = v183.i32[1];
  *&v49.f64[0] = vadd_f32(*v183.i8, COERCE_FLOAT32X2_T(-_D8));
  *&v48 = vmuls_lane_f32(*(v18 + 20), *&v49.f64[0], 1) + (*v49.f64 * *(v18 + 16));
  LODWORD(v50) = *(v18 + 24);
  v51.i32[0] = *(v18 + 36);
  *v52.i32 = vmuls_lane_f32(*(v18 + 32), *&v49.f64[0], 1);
  v53 = v163;
  v54 = vaddq_f32(v163, vmulq_lane_f32(vmulq_n_f32(v47, *v175.i32), *v178.i8, 1));
  v164 = v54;
  v54.n128_f32[0] = *&v50 + *&v48;
  *v49.f64 = *v51.i32 + (*v52.i32 + (*v49.f64 * *(v18 + 28)));
  v54.n128_u32[1] = LODWORD(v49.f64[0]);
  *v56.i64 = CI::BitmapSampler::read(*(v18 + 8), v54, v49, v48, v50, v53, v52, v51, v55);
  HIDWORD(v57) = v183.i32[1];
  *&v58.f64[0] = vadd_f32(*v183.i8, 0xBF80000040000000);
  *&v57 = vmuls_lane_f32(*(v18 + 20), *&v58.f64[0], 1) + (*v58.f64 * *(v18 + 16));
  LODWORD(v59) = *(v18 + 24);
  v60.i32[0] = *(v18 + 36);
  v61 = v164;
  v62 = vaddq_f32(v164, vmulq_lane_f32(vmulq_n_f32(v56, *v176.i32), *v178.i8, 1));
  v165 = v62;
  v62.n128_f32[0] = *&v59 + *&v57;
  *v58.f64 = *v60.i32 + (vmuls_lane_f32(*(v18 + 32), *&v58.f64[0], 1) + (*v58.f64 * *(v18 + 28)));
  v62.n128_u32[1] = LODWORD(v58.f64[0]);
  *v64.i64 = CI::BitmapSampler::read(*(v18 + 8), v62, v58, v57, v59, v61, v176, v60, v63);
  HIDWORD(v65) = v183.i32[1];
  *&v66.f64[0] = vadd_f32(*v183.i8, 3212836864);
  *&v65 = vmuls_lane_f32(*(v18 + 20), *&v66.f64[0], 1) + (*v66.f64 * *(v18 + 16));
  LODWORD(v67) = *(v18 + 24);
  v68.i32[0] = *(v18 + 36);
  v69 = v165;
  v70 = vaddq_f32(v165, vmulq_lane_f32(vmulq_n_f32(v64, *v182.i32), *v178.i8, 1));
  v166 = v70;
  v70.n128_f32[0] = *&v67 + *&v65;
  *v66.f64 = *v68.i32 + (vmuls_lane_f32(*(v18 + 32), *&v66.f64[0], 1) + (*v66.f64 * *(v18 + 28)));
  v70.n128_u32[1] = LODWORD(v66.f64[0]);
  *v72.i64 = CI::BitmapSampler::read(*(v18 + 8), v70, v66, v65, v67, v69, v182, v68, v71);
  v73 = v166;
  HIDWORD(v74) = v175.i32[1];
  v75 = vaddq_f32(v166, vmulq_lane_f32(vmulq_n_f32(v72, *v178.i32), *v175.i8, 1));
  v167 = v75;
  LODWORD(v74) = *(v18 + 28);
  v75.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v183.i8, 1) + (*v183.i32 * *(v18 + 16)));
  LODWORD(v76) = *(v18 + 36);
  *v73.f64 = *&v76 + (vmuls_lane_f32(*(v18 + 32), *v183.i8, 1) + (*v183.i32 * *&v74));
  v75.n128_u32[1] = LODWORD(v73.f64[0]);
  *v80.i64 = CI::BitmapSampler::read(*(v18 + 8), v75, v73, v74, v76, v183, v77, v78, v79);
  HIDWORD(v81) = v183.i32[1];
  *&v82.f64[0] = vadd_f32(*v183.i8, 1065353216);
  *&v81 = vmuls_lane_f32(*(v18 + 20), *&v82.f64[0], 1) + (*v82.f64 * *(v18 + 16));
  LODWORD(v83) = *(v18 + 24);
  v84.i32[0] = *(v18 + 36);
  v85 = v167;
  v86 = vaddq_f32(v167, vmulq_lane_f32(vmulq_n_f32(v80, *v175.i32), *v175.i8, 1));
  v168 = v86;
  v86.n128_f32[0] = *&v83 + *&v81;
  *v82.f64 = *v84.i32 + (vmuls_lane_f32(*(v18 + 32), *&v82.f64[0], 1) + (*v82.f64 * *(v18 + 28)));
  v86.n128_u32[1] = LODWORD(v82.f64[0]);
  *v88.i64 = CI::BitmapSampler::read(*(v18 + 8), v86, v82, v81, v83, v85, v175, v84, v87);
  HIDWORD(v89) = v183.i32[1];
  *&v90.f64[0] = vadd_f32(*v183.i8, 0x40000000);
  *&v89 = vmuls_lane_f32(*(v18 + 20), *&v90.f64[0], 1) + (*v90.f64 * *(v18 + 16));
  LODWORD(v91) = *(v18 + 24);
  v92.i32[0] = *(v18 + 36);
  v93 = v168;
  v94 = vaddq_f32(v168, vmulq_lane_f32(vmulq_n_f32(v88, *v176.i32), *v175.i8, 1));
  v169 = v94;
  v94.n128_f32[0] = *&v91 + *&v89;
  *v90.f64 = *v92.i32 + (vmuls_lane_f32(*(v18 + 32), *&v90.f64[0], 1) + (*v90.f64 * *(v18 + 28)));
  v94.n128_u32[1] = LODWORD(v90.f64[0]);
  *v96.i64 = CI::BitmapSampler::read(*(v18 + 8), v94, v90, v89, v91, v93, v176, v92, v95);
  HIDWORD(v97) = v183.i32[1];
  *&v98.f64[0] = vadd_f32(*v183.i8, COERCE_FLOAT32X2_T(-_D9));
  *&v97 = vmuls_lane_f32(*(v18 + 20), *&v98.f64[0], 1) + (*v98.f64 * *(v18 + 16));
  LODWORD(v99) = *(v18 + 24);
  v100.i32[0] = *(v18 + 36);
  v101 = v169;
  v102 = vaddq_f32(v169, vmulq_lane_f32(vmulq_n_f32(v96, *v182.i32), *v175.i8, 1));
  v170 = v102;
  v102.n128_f32[0] = *&v99 + *&v97;
  *v98.f64 = *v100.i32 + (vmuls_lane_f32(*(v18 + 32), *&v98.f64[0], 1) + (*v98.f64 * *(v18 + 28)));
  v102.n128_u32[1] = LODWORD(v98.f64[0]);
  *v104.i64 = CI::BitmapSampler::read(*(v18 + 8), v102, v98, v97, v99, v101, v175, v100, v103);
  HIDWORD(v105) = v183.i32[1];
  *&v106.f64[0] = vadd_f32(*v183.i8, 0x3F80000000000000);
  *&v105 = vmuls_lane_f32(*(v18 + 20), *&v106.f64[0], 1) + (*v106.f64 * *(v18 + 16));
  LODWORD(v107) = *(v18 + 24);
  v108.i32[0] = *(v18 + 36);
  v109 = v170;
  v110 = vaddq_f32(v170, vmulq_lane_f32(vmulq_n_f32(v104, *v178.i32), *v176.i8, 1));
  v171 = v110;
  v110.n128_f32[0] = *&v107 + *&v105;
  *v106.f64 = *v108.i32 + (vmuls_lane_f32(*(v18 + 32), *&v106.f64[0], 1) + (*v106.f64 * *(v18 + 28)));
  v110.n128_u32[1] = LODWORD(v106.f64[0]);
  *v112.i64 = CI::BitmapSampler::read(*(v18 + 8), v110, v106, v105, v107, v109, v178, v108, v111);
  *&v113.f64[1] = v183.i64[1];
  *&v113.f64[0] = vadd_f32(*v183.i8, *&_D8);
  *&v114 = vmuls_lane_f32(*(v18 + 20), *&v113.f64[0], 1) + (*v113.f64 * *(v18 + 16));
  LODWORD(v115) = *(v18 + 24);
  v116.i32[0] = *(v18 + 36);
  v117 = v171;
  v118 = vaddq_f32(v171, vmulq_lane_f32(vmulq_n_f32(v112, *v175.i32), *v176.i8, 1));
  v172 = v118;
  v118.n128_f32[0] = *&v115 + *&v114;
  *v113.f64 = *v116.i32 + (vmuls_lane_f32(*(v18 + 32), *&v113.f64[0], 1) + (*v113.f64 * *(v18 + 28)));
  v118.n128_u32[1] = LODWORD(v113.f64[0]);
  *v120.i64 = CI::BitmapSampler::read(*(v18 + 8), v118, v113, v114, v115, v117, v175, v116, v119);
  HIDWORD(v121) = v183.i32[1];
  *&v122.f64[0] = vadd_f32(*v183.i8, 0x3F80000040000000);
  *&v121 = vmuls_lane_f32(*(v18 + 20), *&v122.f64[0], 1) + (*v122.f64 * *(v18 + 16));
  LODWORD(v123) = *(v18 + 24);
  v124.i32[0] = *(v18 + 36);
  *v125.i32 = vmuls_lane_f32(*(v18 + 32), *&v122.f64[0], 1);
  v126 = v172;
  v127 = vaddq_f32(v172, vmulq_lane_f32(vmulq_n_f32(v120, *v176.i32), *v176.i8, 1));
  v173 = v127;
  v127.n128_f32[0] = *&v123 + *&v121;
  *v122.f64 = *v124.i32 + (*v125.i32 + (*v122.f64 * *(v18 + 28)));
  v127.n128_u32[1] = LODWORD(v122.f64[0]);
  *v129.i64 = CI::BitmapSampler::read(*(v18 + 8), v127, v122, v121, v123, v126, v125, v124, v128);
  HIDWORD(v130) = v183.i32[1];
  *&v131.f64[0] = vadd_f32(*v183.i8, 0x40000000BF800000);
  *&v130 = vmuls_lane_f32(*(v18 + 20), *&v131.f64[0], 1) + (*v131.f64 * *(v18 + 16));
  LODWORD(v132) = *(v18 + 24);
  v133.i32[0] = *(v18 + 36);
  *v134.i32 = vmuls_lane_f32(*(v18 + 32), *&v131.f64[0], 1);
  v135 = v173;
  v136 = vaddq_f32(v173, vmulq_lane_f32(vmulq_n_f32(v129, *v182.i32), *v176.i8, 1));
  v174 = v136;
  v136.n128_f32[0] = *&v132 + *&v130;
  *v131.f64 = *v133.i32 + (*v134.i32 + (*v131.f64 * *(v18 + 28)));
  v136.n128_u32[1] = LODWORD(v131.f64[0]);
  *v138.i64 = CI::BitmapSampler::read(*(v18 + 8), v136, v131, v130, v132, v135, v134, v133, v137);
  HIDWORD(v139) = v183.i32[1];
  *&v140.f64[0] = vadd_f32(*v183.i8, 0x4000000000000000);
  *&v139 = vmuls_lane_f32(*(v18 + 20), *&v140.f64[0], 1) + (*v140.f64 * *(v18 + 16));
  LODWORD(v141) = *(v18 + 24);
  v142.i32[0] = *(v18 + 36);
  v143 = v178;
  v144 = vaddq_f32(v174, vmulq_lane_f32(vmulq_n_f32(v138, *v178.i32), *v182.i8, 1));
  v179 = v144;
  v144.n128_f32[0] = *&v141 + *&v139;
  *v140.f64 = *v142.i32 + (vmuls_lane_f32(*(v18 + 32), *&v140.f64[0], 1) + (*v140.f64 * *(v18 + 28)));
  v144.n128_u32[1] = LODWORD(v140.f64[0]);
  *v146.i64 = CI::BitmapSampler::read(*(v18 + 8), v144, v140, v139, v141, v174, v143, v142, v145);
  HIDWORD(v147) = v183.i32[1];
  *&v148.f64[0] = vadd_f32(*v183.i8, 0x400000003F800000);
  *&v147 = vmuls_lane_f32(*(v18 + 20), *&v148.f64[0], 1) + (*v148.f64 * *(v18 + 16));
  LODWORD(v149) = *(v18 + 24);
  v150.i32[0] = *(v18 + 36);
  v151 = v179;
  v152 = vaddq_f32(v179, vmulq_lane_f32(vmulq_n_f32(v146, *v175.i32), *v182.i8, 1));
  v180 = v152;
  v152.n128_f32[0] = *&v149 + *&v147;
  *v148.f64 = *v150.i32 + (vmuls_lane_f32(*(v18 + 32), *&v148.f64[0], 1) + (*v148.f64 * *(v18 + 28)));
  v152.n128_u32[1] = LODWORD(v148.f64[0]);
  *v154.i64 = CI::BitmapSampler::read(*(v18 + 8), v152, v148, v147, v149, v151, v182, v150, v153);
  HIDWORD(v155) = v183.i32[1];
  *&v156.f64[0] = vadd_f32(*v183.i8, 0x4000000040000000);
  *&v155 = vmuls_lane_f32(*(v18 + 20), *&v156.f64[0], 1) + (*v156.f64 * *(v18 + 16));
  LODWORD(v157) = *(v18 + 24);
  v158.i32[0] = *(v18 + 36);
  v159 = vaddq_f32(v180, vmulq_lane_f32(vmulq_n_f32(v154, *v176.i32), *v182.i8, 1));
  v184 = v159;
  v159.n128_f32[0] = *&v157 + *&v155;
  *v156.f64 = *v158.i32 + (vmuls_lane_f32(*(v18 + 32), *&v156.f64[0], 1) + (*v156.f64 * *(v18 + 28)));
  v159.n128_u32[1] = LODWORD(v156.f64[0]);
  *v161.i64 = CI::BitmapSampler::read(*(v18 + 8), v159, v156, v155, v157, v180, v182, v158, v160);
  *&result = vaddq_f32(v184, vmulq_lane_f32(vmulq_n_f32(v161, *v182.i32), *v182.i8, 1)).u64[0];
  return result;
}

double CI::sw_cubicUpsample10v(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7.f64[0] = *CI::getDC(a1);
  v8 = v7;
  v9 = vmuls_lane_f32(v6, *&v7.f64[0], 1) + -0.5;
  *v7.f64 = floorf(v9);
  v10 = (*v7.f64 - v9) + 1.0;
  v11 = v9 - *v7.f64;
  v12 = v10;
  v13.i64[0] = 0.5;
  v14 = v12 * 0.5 * v12;
  v15.i64[0] = 0x3FC5555555555555;
  *v16.f64 = v14 + v12 * -0.333333333 * v12 * v12 + v12 * 0.5 + 0.166666667;
  *v17.i64 = *v16.f64;
  v34 = v16;
  v36 = 1.0 - *v16.f64;
  *v18.i64 = v14 + v12 * -0.5 * v12 * v12;
  v7.f64[0] = *v7.f64;
  v19 = (*v18.i64 + v12 * 0.5 + 0.166666667) / *v16.f64 + v7.f64[0] + -0.5;
  *&v19 = v19;
  v20 = (1.0 - *v16.f64);
  v21.n128_f64[0] = (v11 * (v11 * v11)) / 6.0 / v20 + v7.f64[0];
  v7.f64[0] = 1.5;
  v22 = v21.n128_f64[0] + 1.5;
  v33 = v8;
  LODWORD(v20) = *(v5 + 28);
  v21.n128_f32[0] = *(v5 + 24) + ((*(v5 + 20) * *&v19) + (*v8.f64 * *(v5 + 16)));
  v17.i32[0] = *(v5 + 36);
  *v7.f64 = *v17.i32 + ((*(v5 + 32) * *&v19) + (*v8.f64 * *&v20));
  v21.n128_f32[1] = *v7.f64;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), v21, v7, v19, v20, v17, v13, v18, v15);
  v24 = v34;
  v25 = vmulq_n_f32(v23, *v34.f64);
  v35 = v25;
  LODWORD(v26) = *(v5 + 28);
  v25.n128_f32[0] = *(v5 + 24) + ((*(v5 + 20) * v22) + (*v33.i32 * *(v5 + 16)));
  LODWORD(v27) = *(v5 + 36);
  *v24.f64 = *&v27 + ((*(v5 + 32) * v22) + (*v33.i32 * *&v26));
  v25.n128_f32[1] = *v24.f64;
  *v31.i64 = CI::BitmapSampler::read(*(v5 + 8), v25, v24, v26, v27, v33, v28, v29, v30);
  *&result = vaddq_f32(v35, vmulq_n_f32(v31, v36)).u64[0];
  return result;
}

double CI::sw_cubicUpsample10h(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  *v8.i8 = *DC;
  v9 = (v6 * COERCE_FLOAT(*DC)) + -0.5;
  v10 = floorf(v9);
  v11 = (v10 - v9) + 1.0;
  v12 = v9 - v10;
  v13 = v11;
  v14.i64[0] = 0.5;
  v15 = v13 * 0.5 * v13;
  v16.i64[0] = 0x3FC5555555555555;
  *v17.f64 = v15 + v13 * -0.333333333 * v13 * v13 + v13 * 0.5 + 0.166666667;
  *v18.i64 = *v17.f64;
  v37 = v17;
  v39 = 1.0 - *v17.f64;
  *v19.i64 = v15 + v13 * -0.5 * v13 * v13;
  v20 = v10;
  v21 = (*v19.i64 + v13 * 0.5 + 0.166666667) / *v17.f64 + v20 + -0.5;
  *&v21 = v21;
  v22 = (1.0 - *v17.f64);
  v23.n128_f64[0] = (v12 * (v12 * v12)) / 6.0 / v22 + v20;
  v24.f64[0] = 1.5;
  v25 = v23.n128_f64[0] + 1.5;
  v36 = v8;
  LODWORD(v22) = *(v5 + 28);
  v23.n128_f32[0] = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (*&v21 * *(v5 + 16)));
  v18.i32[0] = *(v5 + 36);
  *v24.f64 = *v18.i32 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (*&v21 * *&v22));
  v23.n128_u32[1] = LODWORD(v24.f64[0]);
  *v26.i64 = CI::BitmapSampler::read(*(v5 + 8), v23, v24, v21, v22, v18, v14, v19, v16);
  v27 = v37;
  v28 = vmulq_n_f32(v26, *v37.f64);
  v38 = v28;
  LODWORD(v29) = *(v5 + 28);
  v28.n128_f32[0] = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *v36.i8, 1) + (v25 * *(v5 + 16)));
  LODWORD(v30) = *(v5 + 36);
  *v27.f64 = *&v30 + (vmuls_lane_f32(*(v5 + 32), *v36.i8, 1) + (v25 * *&v29));
  v28.n128_u32[1] = LODWORD(v27.f64[0]);
  *v34.i64 = CI::BitmapSampler::read(*(v5 + 8), v28, v27, v29, v30, v36, v31, v32, v33);
  *&result = vaddq_f32(v38, vmulq_n_f32(v34, v39)).u64[0];
  return result;
}

double CI::sw_spotLight(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 56);
  v10 = *(v3 + 80);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v3 + 88) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v3 + 112);
  v15 = *(v3 + 104);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v33 = *v7;
  v28 = *(a2 + (v8 << 6));
  v30 = *(a2 + (v9 << 6));
  v32 = *v13;
  LODWORD(v31) = *v17;
  v18.i64[0] = *CI::getDC(a1);
  v18.i32[2] = 0;
  v19 = vsubq_f32(v28, v18);
  v19.i32[3] = 0;
  v20 = vmulq_f32(v19, v19);
  *v20.i8 = vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
  v20.i32[0] = vadd_f32(*v20.i8, vdup_lane_s32(*v20.i8, 1)).u32[0];
  v21 = vrsqrte_f32(v20.u32[0]);
  v29 = vmulq_n_f32(v19, vmul_f32(v21, vrsqrts_f32(v20.u32[0], vmul_f32(v21, v21))).f32[0]);
  v22 = vmulq_f32(v30, v29);
  v23 = v22.f32[2] + vaddv_f32(*v22.f32);
  v24 = 1.0;
  if (v23 <= 1.0)
  {
    v24 = v23;
  }

  v25 = v23 < 0.0;
  v26 = 0.0;
  if (!v25)
  {
    v26 = v24;
  }

  *&result = vmulq_f32(v33, vmulq_laneq_f32(vmulq_n_f32(v32, powf(v26, v31)), v29, 2)).u64[0];
  return result;
}

double CI::sw_starshine(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v29 = *v11;
  v30 = *v15;
  v31 = *(a2 + (*(v3 + 80) << 6));
  v32 = *(a2 + (*(v3 + 104) << 6));
  v16 = vsub_f32(*CI::getDC(a1), *v7);
  v17 = vmul_f32(*v29.i8, v16);
  v18 = vmul_f32(*&vextq_s8(v29, v29, 8uLL), v16);
  v19 = vadd_f32(vzip1_s32(v17, v18), vzip2_s32(v17, v18));
  v16.f32[0] = sqrtf(vaddv_f32(vmul_f32(v16, v16)));
  v20 = v30.f32[0] / v16.f32[0];
  v21 = vdiv_f32(vdup_lane_s32(*v30.f32, 0), vmaxnm_f32(vadd_f32(vdup_laneq_s32(v30, 3), vmul_n_f32(vabs_f32(v19), v31)), vdup_n_s32(0x33D6BF95u)));
  v22 = vmul_f32(vabs_f32(v21), vmul_f32(v21, v21));
  v23 = vmuls_lane_f32(vmul_lane_f32(v22, v22, 1).f32[0], v30, 2);
  v24 = 1.0 - vmuls_lane_f32(v16.f32[0], *v30.f32, 1);
  if (v24 <= 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = v24 < 0.0;
  v27 = 0;
  if (!v26)
  {
    *v27.i32 = v25;
  }

  *v27.i32 = v23 * (*v27.i32 * *v27.i32);
  *&result = vaddq_f32(vmulq_n_f32(v32, v20 * v20), vdupq_lane_s32(v27, 0)).u64[0];
  return result;
}

float32x2_t CI::sw_stretch(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v21 = *v7;
  v22 = *(a2 + (*(v3 + 32) << 6));
  DC = CI::getDC(a1);
  __asm { FMOV            V1.2S, #1.0 }

  v14 = vsub_f32(_D1, vminnm_f32(vmaxnm_f32(vmul_n_f32(vabd_f32(*DC, v21), v22.f32[0]), 0), _D1));
  __asm { FMOV            V2.2S, #3.0 }

  v16 = vmul_f32(v14, vmul_f32(v14, vsub_f32(_D2, vadd_f32(v14, v14))));
  *v17.f32 = vmul_laneq_f32(vsub_f32(*CI::getDC(DC), vdup_lane_s32(v21, 1)), v22, 2);
  v18 = vmul_f32(vmul_lane_f32(*&_simd_sin_f4(v17), *v22.f32, 1), v16);
  return vsub_f32(*CI::getDC(v19), v18);
}

void minMax(double a1, double a2, double a3, double a4, double a5, uint64_t result, double *a7, double *a8)
{
  v10 = result;
  v14 = a2;
  if (a1 >= a3)
  {
    v16 = a4 + a5;
    if (a4 + a5 >= a1)
    {
      if (v16 >= v14)
      {
        *a7 = minForMiddleRange(a1, v14, a3, a4, a5, result);
        v18 = a1;
        goto LABEL_13;
      }

      v17 = minForMiddleRange(a1, v16, a3, a4, a5, result);
    }

    else
    {
      v17 = a1 - a5;
    }

    *a7 = v17;
LABEL_11:
    v14 = v14 - a5;
    goto LABEL_14;
  }

  if (a2 >= a3)
  {
    *a7 = a1;
    if (a4 + a5 >= a2)
    {
      v18 = a3;
LABEL_13:
      v14 = maxForMiddleRange(v18, v14, a3, a4, a5, v10);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  *a7 = a1;
LABEL_14:
  *a8 = v14;
}

float32x2_t CI::sw_stretchcrop(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v19 = *v15;
  v17 = vdiv_f32(vsub_f32(*CI::getDC(a1), *v11), *v7);
  return vmul_f32(v16, vadd_f32(vdiv_f32(v17, vadd_f32(*v19.i8, vmul_f32(*&vextq_s8(v19, v19, 8uLL), vabs_f32(v17)))), 0x3F0000003F000000));
}

float32x2_t CI::sw_ninePartStretched(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v17 = *v11;
  v18 = *v15;
  DC = CI::getDC(a1);
  return vmaxnm_f32(vminnm_f32(*DC, vadd_f32(v16, vmul_f32(v18, vsub_f32(*DC, v16)))), vsub_f32(*DC, v17));
}

int8x8_t CI::sw_ninePartTiledAlt(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v23 = *v7;
  v16 = *v11;
  v17 = *v15;
  DC = CI::getDC(a1);
  v19 = vextq_s8(v23, v23, 8uLL).u64[0];
  v20 = vsub_f32(*DC, v17);
  v21 = vsub_f32(v19, *v23.i8);
  return vbsl_s8(vcgt_f32(vadd_f32(v16, v19), *DC), vbsl_s8(vcgt_f32(*v23.i8, *DC), *DC, vadd_f32(*v23.i8, vsub_f32(v20, vmul_f32(v21, vrndm_f32(vdiv_f32(v20, v21)))))), vsub_f32(*DC, v16));
}

double maxForMiddleRange(double a1, double a2, double a3, double a4, double a5, int a6)
{
  v6 = a4 + a5;
  if (!a6)
  {
    v6 = a3;
  }

  v7 = a1 - v6;
  v8 = a4 - a3;
  v9 = a2 - v6;
  if (vcvtmd_s64_f64(v7 / (a4 - a3)) == vcvtmd_s64_f64((a2 - v6) / (a4 - a3)))
  {
    if (a6)
    {
      v10 = a4;
    }

    else
    {
      v10 = a3;
    }

    v11 = fmod(v7, a4 - a3) + v10;
    v12 = fmod(v9, v8) + v10;
    if (v11 <= v12)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  return a4;
}

double minForMiddleRange(double a1, double a2, double a3, double a4, double a5, int a6)
{
  v6 = a4 + a5;
  if (!a6)
  {
    v6 = a3;
  }

  v7 = a1 - v6;
  v8 = a4 - a3;
  v9 = a2 - v6;
  if (vcvtmd_s64_f64(v7 / (a4 - a3)) == vcvtmd_s64_f64((a2 - v6) / (a4 - a3)))
  {
    if (a6)
    {
      v10 = a4;
    }

    else
    {
      v10 = a3;
    }

    v11 = fmod(v7, a4 - a3) + v10;
    v12 = fmod(v9, v8) + v10;
    if (v11 >= v12)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  return a3;
}

unint64_t CI::sw_stripes(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v22 = COERCE_FLOAT(*v7);
  v24 = *(a2 + (*(v3 + 32) << 6));
  v23 = *(a2 + (*(v3 + 56) << 6));
  v21 = *(a2 + (*(v3 + 80) << 6));
  DC = CI::getDC(a1);
  _V3.S[1] = DWORD1(v21);
  v10 = ((COERCE_FLOAT(*DC) - v22) * *&v21) + -0.25;
  v11 = v10 - floorf(v10);
  _S0 = fminf(1.0 - v11, v11);
  __asm { FMLA            S2, S0, V3.S[1] }

  if (_S2 <= 1.0)
  {
    v18 = _S2;
  }

  else
  {
    v18 = 1.0;
  }

  if (_S2 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = (v18 * -2.0 + 3.0) * v18 * v18;
  return vmlaq_n_f32(vmulq_n_f32(v23, 1.0 - v19), v24, v19).u64[0];
}

double CI::sw_sunbeams(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v4 + 64) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = a4 + 80 * *(v4 + 8);
  v34 = *v8->f32;
  v35 = *v12;
  v36 = *(a2 + (*(v4 + 80) << 6));
  v14 = COERCE_FLOAT(*(v12 + 1));
  LODWORD(v15) = HIDWORD(*v12);
  v16.n128_u64[0] = vsub_f32(*CI::getDC(a1), *v8);
  v17 = vmul_f32(v16.n128_u64[0], v16.n128_u64[0]);
  v18 = vadd_f32(v17, vdup_lane_s32(v17, 1)).u32[0];
  v19 = vaddv_f32(v17);
  v20 = vextq_s8(v34, v34, 8uLL);
  v21 = vrsqrte_f32(v18);
  *v22.i8 = vmul_f32(v21, v21);
  v23 = COERCE_DOUBLE(vmul_f32(v21, vrsqrts_f32(v18, *v22.i8)));
  v24 = vdup_n_s32(0x42480000u);
  *&v20.f64[0] = vadd_f32(*&v20.f64[0], vmul_f32(vmul_n_f32(v16.n128_u64[0], *&v23), v24));
  v24.i32[0] = *(v13 + 28);
  v16.n128_f32[0] = *(v13 + 24) + (vmuls_lane_f32(*(v13 + 20), *&v20.f64[0], 1) + (*v20.f64 * *(v13 + 16)));
  v22.i32[0] = *(v13 + 36);
  *&v23 = vmuls_lane_f32(*(v13 + 32), *&v20.f64[0], 1);
  *v20.f64 = *v22.i32 + (*&v23 + (*v20.f64 * v24.f32[0]));
  v16.n128_u32[1] = LODWORD(v20.f64[0]);
  v28 = CI::BitmapSampler::read(*(v13 + 8), v16, v20, v23, *&v24, v22, v25, v26, v27);
  *&v28 = v15 + (*&v28 * v14);
  v29 = *&v35 / (v19 + 0.0001);
  v30 = vaddq_f32(vmulq_n_f32(v36, v29), vdupq_lane_s32(*&v28, 0));
  v31 = 1.0 - vmuls_lane_f32(sqrtf(v19), *&v35, 1);
  if (v31 <= 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 1.0;
  }

  if (v31 < 0.0)
  {
    v32 = 0.0;
  }

  *&result = vmulq_n_f32(v30, v32).u64[0];
  return result;
}

double CI::sw_swipeTransition(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = *(v3 + 88);
  v14 = *(v3 + 80);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (v13 == 5)
  {
    v16 = v15;
  }

  v27 = *v11;
  v28 = *v7;
  v29 = *(a2 + (v12 << 6));
  v26 = *v16;
  v17.i64[0] = *CI::getDC(a1);
  v17.i64[1] = 1065353216;
  v18 = vmulq_f32(v26, v17);
  v19 = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)));
  if (v19 <= 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = v19 < 0.0;
  v22 = 0.0;
  if (!v21)
  {
    v22 = v20;
  }

  v23 = fminf(1.0 - v22, v22);
  v24 = (v23 + v23) * v26.f32[3];
  *&result = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27, 1.0 - v22), v28, v22), 1.0 - v24), v29, v24).u64[0];
  return result;
}

double get_input_xy(CIVector *a1, double *a2, double *a3)
{
  [(CIVector *)a1 X];
  v7 = v6;
  [(CIVector *)a1 Y];
  v9 = v8;
  result = 1.0;
  if (v7 < 1.0 && (v7 > 0.0 ? (v11 = v9 < 1.0) : (v11 = 0), v11 && v9 > 0.0))
  {
    *a2 = v7;
    *a3 = v9;
  }

  else
  {
    if (v7 < 2000.0 || v7 > 500000.0)
    {
      v12 = 6500.0;
      v9 = 0.0;
    }

    else
    {
      v12 = v7;
    }

    return tempTint_to_xy(v12, v9, a2, a3);
  }

  return result;
}

double tempTint_to_xy(double a1, double a2, double *a3, double *a4)
{
  v4 = &qword_19CF2A198;
  v5 = 29;
  v6 = 1000000.0 / a1;
  do
  {
    v7 = *v4;
    v4 += 4;
    v8 = v7;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v6 >= v8);
  v9 = a2 * -0.000333333333;
  v10 = (v8 - v6) / (v8 - *(v4 - 8));
  v11 = *(v4 - 3) * (1.0 - v10) + *(v4 - 7) * v10;
  v12 = *(v4 - 5);
  v13 = (1.0 - v10) * *(v4 - 2) + *(v4 - 6) * v10;
  v14 = *(v4 - 1);
  v15 = sqrt(v12 * v12 + 1.0);
  v16 = sqrt(v14 * v14 + 1.0);
  v17 = (1.0 - v10) * (1.0 / v16) + 1.0 / v15 * v10;
  v18 = (1.0 - v10) * (v14 / v16) + v12 / v15 * v10;
  v19 = sqrt(v18 * v18 + v17 * v17);
  v20 = v11 + v17 / v19 * v9;
  v21 = v13 + v18 / v19 * v9;
  v22 = v20 * 1.5;
  v23 = v20 + v21 * -4.0 + 2.0;
  *a3 = v22 / v23;
  result = v21 / v23;
  *a4 = result;
  return result;
}

double CI::sw_whitepointadjust(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  *&result = vmulq_f32(*v7, *(a2 + (*(v3 + 32) << 6))).u64[0];
  return result;
}

double CI::sw_falseColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = vmulq_f32(*v7, xmmword_19CF23D50);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  *&result = vmulq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (*(v3 + 32) << 6)), 1.0 - v8.f32[0]), *(a2 + (*(v3 + 56) << 6)), v8.f32[0]), *v7, 3).u64[0];
  return result;
}

void sub_19CDE64EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double makeBoundingBox(void *a1, float a2)
{
  [a1 boundingBox];
  v5 = v4 * a2;
  [a1 boundingBox];
  [a1 boundingBox];
  [a1 boundingBox];
  [a1 boundingBox];
  return v5;
}

CGFloat makeCorners(void *a1, CGPoint *a2, CGPoint *a3, CGPoint *a4, CGPoint *a5, float a6, float a7)
{
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(a1 "corners")], a2);
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(a1 "corners")], a3);
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(a1 "corners")], a5);
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(a1 "corners")], a4);
  v14 = a7;
  v15 = v14 - a2->y * v14;
  a2->x = a2->x * a6;
  a2->y = v15;
  v16 = v14 - a3->y * v14;
  a3->x = a3->x * a6;
  a3->y = v16;
  v17 = v14 - a4->y * v14;
  a4->x = a4->x * a6;
  a4->y = v17;
  result = a5->x * a6;
  v19 = v14 - a5->y * v14;
  a5->x = result;
  a5->y = v19;
  return result;
}

uint64_t FutharkLibraryCore(uint64_t a1)
{
  if (!FutharkLibraryCore_frameworkLibrary)
  {
    FutharkLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return FutharkLibraryCore_frameworkLibrary;
}

uint64_t __FutharkLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FutharkLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFKTextDetectorClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!FutharkLibraryCore(&v3))
  {
    __getFKTextDetectorClass_block_invoke_cold_2(&v3);
  }

  if (v3)
  {
    free(v3);
  }

  result = objc_getClass("FKTextDetector");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFKTextDetectorClass_block_invoke_cold_1();
  }

  getFKTextDetectorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

unint64_t CI::sw_toneCurve(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  v12 = *(a1 + 40);
  v13 = *(v12 + 8);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v12 + 16) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v12 + 56);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (*(v12 + 64) == 5)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v12 + 104);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (*(v12 + 112) == 5)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v12 + 152);
  v26 = (a3 + 16 * v25);
  v27 = (a2 + (v25 << 6));
  if (*(v12 + 160) == 5)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(v12 + 200);
  v30 = (a3 + 16 * v29);
  v31 = (a2 + (v29 << 6));
  if (*(v12 + 208) == 5)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  v33 = *(v12 + 248);
  v34 = (a3 + 16 * v33);
  v35 = (a2 + (v33 << 6));
  if (*(v12 + 256) != 5)
  {
    v34 = v35;
  }

  v36 = *(v12 + 224) << 6;
  v37 = *(v12 + 176) << 6;
  v38 = *(v12 + 128) << 6;
  v39 = *(v12 + 80) << 6;
  v40 = *(v12 + 32) << 6;
  v41 = *v16;
  v42 = *(a2 + v40);
  v43 = *v20;
  a10.i32[0] = *(a2 + v39);
  v44 = *v24;
  v10.i32[0] = *(a2 + v38);
  v45 = *v28;
  v11.i32[0] = *(a2 + v37);
  v46 = *v32;
  a9.i32[0] = *(a2 + v36);
  _Q4 = *v34;
  v48 = *(a2 + (*(v12 + 272) << 6));
  v49 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a9, *v16), 0), *v32, *v34);
  if (COERCE_FLOAT(*v16) >= a9.f32[0])
  {
    v50 = *(a2 + v36);
  }

  else
  {
    v50 = *(a2 + v37);
  }

  v51 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v11, v41), 0), v45, v49);
  if (v41.f32[0] < v11.f32[0])
  {
    v50 = *(a2 + v38);
  }

  v52 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v10, v41), 0), v44, v51);
  if (v41.f32[0] < v10.f32[0])
  {
    v50 = *(a2 + v39);
  }

  _Q20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a10, v41), 0), v43, v52);
  if (v41.f32[0] < a10.f32[0])
  {
    v50 = *(a2 + v40);
  }

  _S21 = v41.f32[0] - v50;
  __asm { FMLA            S22, S21, V20.S[1] }

  v60 = (_S22 + (vmuls_lane_f32(_S21, _Q20, 2) * _S21)) + ((_S21 * vmuls_lane_f32(_S21, _Q20, 3)) * _S21);
  if (v41.f32[0] >= v42)
  {
    v61 = v60;
  }

  else
  {
    LODWORD(v61) = *v20;
  }

  __asm { FMLA            S23, S21, V4.S[1] }

  if (v41.f32[0] <= a9.f32[0])
  {
    _S23 = v61;
  }

  v63 = fmaxf(_S23, 0.0);
  if (v41.f32[0] > a9.f32[0])
  {
    LODWORD(v61) = *v34;
  }

  if (v61 <= 1.0)
  {
    v64 = v61;
  }

  else
  {
    v64 = 1.0;
  }

  if (v61 >= 0.0)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0.0;
  }

  if (v48 >= 0.5)
  {
    v65 = v63;
  }

  v66 = vdupq_lane_s32(*v41.f32, 1);
  v67 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a9, v66), 0), v46, _Q4);
  if (v41.f32[1] >= a9.f32[0])
  {
    v68 = *(a2 + v36);
  }

  else
  {
    v68 = *(a2 + v37);
  }

  v69 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v11, v66), 0), v45, v67);
  if (v41.f32[1] < v11.f32[0])
  {
    v68 = *(a2 + v38);
  }

  v70 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v10, v66), 0), v44, v69);
  if (v41.f32[1] < v10.f32[0])
  {
    v68 = *(a2 + v39);
  }

  _Q24 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a10, v66), 0), v43, v70);
  if (v41.f32[1] >= a10.f32[0])
  {
    v72 = v68;
  }

  else
  {
    v72 = *(a2 + v40);
  }

  _S26 = v41.f32[1] - v72;
  __asm { FMLA            S27, S26, V24.S[1] }

  v75 = (_S27 + (vmuls_lane_f32(_S26, _Q24, 2) * _S26)) + ((_S26 * vmuls_lane_f32(_S26, _Q24, 3)) * _S26);
  if (v41.f32[1] < v42)
  {
    LODWORD(v75) = *v20;
  }

  __asm { FMLA            S27, S26, V4.S[1] }

  if (v41.f32[1] <= a9.f32[0])
  {
    v77 = v75;
  }

  else
  {
    v77 = _S27;
  }

  v78 = fmaxf(v77, 0.0);
  if (v41.f32[1] > a9.f32[0])
  {
    LODWORD(v75) = *v34;
  }

  if (v75 <= 1.0)
  {
    v79 = v75;
  }

  else
  {
    v79 = 1.0;
  }

  if (v75 >= 0.0)
  {
    v80 = v79;
  }

  else
  {
    v80 = 0.0;
  }

  if (v48 >= 0.5)
  {
    v80 = v78;
  }

  v81 = vdupq_laneq_s32(v41, 2);
  v82 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a9, v81), 0), v46, _Q4);
  if (v41.f32[2] >= a9.f32[0])
  {
    v83 = *(a2 + v36);
  }

  else
  {
    v83 = *(a2 + v37);
  }

  v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v11, v81), 0), v45, v82);
  if (v41.f32[2] >= v11.f32[0])
  {
    v85 = v83;
  }

  else
  {
    v85 = *(a2 + v38);
  }

  v86 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v10, v81), 0), v44, v84);
  if (v41.f32[2] >= v10.f32[0])
  {
    v87 = v85;
  }

  else
  {
    v87 = *(a2 + v39);
  }

  _Q7 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a10, v81), 0), v43, v86);
  if (v41.f32[2] >= a10.f32[0])
  {
    v89 = v87;
  }

  else
  {
    v89 = *(a2 + v40);
  }

  _S6 = v41.f32[2] - v89;
  __asm
  {
    FMLA            S16, S6, V7.S[1]
    FMLA            S3, S6, V4.S[1]
  }

  return __PAIR64__(LODWORD(v80), LODWORD(v65));
}

double CI::sw_triangleKaleidoscopeColor(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v25 = *v15;
  v26 = *v7;
  v16 = *(a2 + (*(v3 + 80) << 6));
  v17 = vsub_f32(*CI::getDC(a1), *v11);
  v18 = vaddv_f32(vmul_f32(*v25.i8, v17));
  v19 = vaddv_f32(vmul_f32(*&vextq_s8(v25, v25, 8uLL), v17));
  *&v20 = v18 + 1.0 - v19;
  *&v21 = 2.0 - v18 + v19 * -2.0;
  *&v19 = v18 * -2.0 + 2.0 - v19;
  v22.i64[0] = __PAIR64__(v21, v20);
  v22.i64[1] = LODWORD(v19);
  v23 = vabsq_f32(vrndmq_f32(v22));
  *&result = vmulq_n_f32(v26, powf(v16, v23.f32[2] + vaddv_f32(*v23.f32))).u64[0];
  return result;
}

float32x2_t CI::sw_triangleKaleidoscopeGeom(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v34 = *v11;
  v35 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v34.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v34, v34, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  v23 = vdup_lane_s32(vcgt_f32(v21, vdup_lane_s32(v21, 1)), 0);
  v22 = vbsl_s8(v23, vrev64_s32(v21), v21);
  v23.i32[0] = v22.i32[1];
  v24 = *v22.i32;
  v25 = 2.0 - *v22.i32 - *&v22.i32[1];
  if (v25 < *&v22.i32[1])
  {
    v26 = v25;
    v23.f32[0] = v26;
  }

  v27 = 1.0 - v24 - v23.f32[0];
  if (v27 > v24)
  {
    v28 = v27;
    *v22.i32 = v28;
  }

  v29 = vcgt_f32(v22, v23);
  v22.i32[1] = v23.i32[0];
  v30 = vbsl_s8(vdup_lane_s32(v29, 0), vrev64_s32(v22), v22);
  v31 = vmul_f32(*v35.i8, v30);
  v32 = vmul_f32(*&vextq_s8(v35, v35, 8uLL), v30);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v31, v32), vzip2_s32(v31, v32)));
}

double CI::sw_triangleTile(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v19 = *v9;
  v32 = *v13;
  v33 = *v17;
  v22.n128_u64[0] = vsub_f32(*CI::getDC(a1), *v9);
  *&v23.f64[0] = vmul_f32(*v32.i8, v22.n128_u64[0]);
  v22.n128_u64[0] = vmul_f32(*&vextq_s8(v32, v32, 8uLL), v22.n128_u64[0]);
  v22.n128_u64[0] = vadd_f32(vzip1_s32(*&v23.f64[0], v22.n128_u64[0]), vzip2_s32(*&v23.f64[0], v22.n128_u64[0]));
  v22.n128_u64[0] = vminnm_f32(vsub_f32(v22.n128_u64[0], vrndm_f32(v22.n128_u64[0])), vdup_n_s32(0x3F7FFFFFu));
  *&v23.f64[0] = vdup_lane_s32(vcgt_f32(v22.n128_u64[0], vdup_lane_s32(v22.n128_u64[0], 1)), 0);
  v22.n128_u64[0] = vbsl_s8(*&v23.f64[0], vrev64_s32(v22.n128_u64[0]), v22.n128_u64[0]);
  LODWORD(v23.f64[0]) = v22.n128_u32[1];
  v24 = v22.n128_f32[0];
  *v25.i64 = 2.0 - v22.n128_f32[0] - v22.n128_f32[1];
  *v26.i32 = *v25.i64;
  if (*v25.i64 < v22.n128_f32[1])
  {
    *v23.f64 = *v25.i64;
  }

  *v25.i64 = *v23.f64;
  v27 = 1.0 - v24 - *v23.f64;
  if (v27 > v24)
  {
    v28 = v27;
    v22.n128_f32[0] = v28;
  }

  v29 = vcgt_f32(v22.n128_u64[0], *&v23.f64[0]);
  v22.n128_u32[1] = LODWORD(v23.f64[0]);
  v22.n128_u64[0] = vbsl_s8(vdup_lane_s32(v29, 0), vrev64_s32(v22.n128_u64[0]), v22.n128_u64[0]);
  *&v23.f64[0] = vmul_f32(*v33.i8, v22.n128_u64[0]);
  v22.n128_u64[0] = vmul_f32(*&vextq_s8(v33, v33, 8uLL), v22.n128_u64[0]);
  v30 = vzip1_s32(*&v23.f64[0], v22.n128_u64[0]);
  *&v23.f64[0] = vadd_f32(v19, vadd_f32(v30, vzip2_s32(*&v23.f64[0], v22.n128_u64[0])));
  LODWORD(v24) = *(v18 + 28);
  v22.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *&v23.f64[0], 1) + (*v23.f64 * *(v18 + 16)));
  v25.i32[0] = *(v18 + 36);
  v30.f32[0] = vmuls_lane_f32(*(v18 + 32), *&v23.f64[0], 1);
  *v23.f64 = *v25.i32 + (v30.f32[0] + (*v23.f64 * *&v24));
  v22.n128_u32[1] = LODWORD(v23.f64[0]);
  return CI::BitmapSampler::read(*(v18 + 8), v22, v23, *&v30, v24, v25, v26, v20, v21);
}

float32x2_t CI::sw_twirl(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v17 = *v7;
  DC = CI::getDC(a1);
  v9 = vsub_f32(*DC, *v17.f32);
  v10 = fminf(vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v9, v9))), v17, 2), 1.0);
  if (v10 >= 1.0)
  {
    return *CI::getDC(DC);
  }

  else
  {
    v11 = ((1.0 - v10) * -2.0 + 3.0) * (1.0 - v10) * (1.0 - v10);
    v12 = __sincosf_stret(vmuls_lane_f32(v11, v17, 3));
    v13.f32[0] = -v12.__sinval;
    v13.i32[1] = LODWORD(v12.__cosval);
    v14 = vmul_f32(v9, __PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)));
    v15 = vmul_f32(v9, v13);
    return vadd_f32(*v17.f32, vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)));
  }
}

void twirlTracePoint(double a1, double a2, CGPoint a3, float a4, float a5, CGRect *a6)
{
  v7 = a2;
  v8 = a1;
  v9 = a1 - a3.x;
  v10 = a2 - a3.y;
  v11 = v10 * v10 + v9 * v9;
  v12 = fminf(sqrtf(v11) * a4, 1.0);
  if (v12 < 1.0)
  {
    y = a3.y;
    x = a3.x;
    v15 = ((1.0 - v12) * -2.0 + 3.0) * (1.0 - v12) * (1.0 - v12);
    v16 = __sincosf_stret(v15 * a5);
    v17 = v10 * v16.__sinval + v9 * v16.__cosval;
    v18 = v10 * v16.__cosval - v9 * v16.__sinval;
    v8 = x + v17;
    v7 = y + v18;
  }

  v19.x = v8;
  v19.y = v7;
  if (!CGRectContainsPoint(*a6, v19))
  {
    v20.size.width = 0.0;
    v20.size.height = 0.0;
    v20.origin.x = v8;
    v20.origin.y = v7;
    *a6 = CGRectUnion(*a6, v20);
  }
}

unint64_t CI::sw_unsharpmask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return vaddq_f32(*v7, vmulq_n_f32(vsubq_f32(*v7, vmulq_n_f32(*v11, COERCE_FLOAT(HIDWORD(*v7)) / fmaxf(COERCE_FLOAT(HIDWORD(*v11)), 0.0001))), *(a2 + (*(v3 + 56) << 6)))).u64[0];
}

void sub_19CDEBD68(_Unwind_Exception *a1)
{
  (STACK[0x218])(&STACK[0x208]);
  _Block_object_dispose(&STACK[0x238], 8);
  _Unwind_Resume(a1);
}

Class __getVNFaceObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary_0();
  result = objc_getClass("VNFaceObservation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNFaceObservationClass_block_invoke_cold_1();
  }

  getVNFaceObservationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t VisionLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __VisionLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E75C3D58;
    v4 = 0;
    VisionLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_0;
  if (!VisionLibraryCore_frameworkLibrary_0)
  {
    VisionLibrary_cold_1_0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __VisionLibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getVNFaceAttributeSmilingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_0();
  result = dlsym(v2, "VNFaceAttributeSmiling");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeSmilingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeEyesClosedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_0();
  result = dlsym(v2, "VNFaceAttributeEyesClosed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeEyesClosedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double CI::sw_variableBoxBlur(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v8 = *(v4 + 88);
  v9 = *(v4 + 80);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = a4 + 80 * v6;
  v13 = a4 + 80 * v5;
  v14 = *(a2 + (v7 << 6));
  v198 = *v11;
  DC = CI::getDC(a1);
  LODWORD(v16) = *(v12 + 24);
  v17.i32[0] = *(v12 + 36);
  *v18.i32 = vmuls_lane_f32(*(v12 + 32), *DC, 1);
  *&v19 = *v18.i32 + (COERCE_FLOAT(*DC) * *(v12 + 28));
  v20.n128_f32[0] = *&v16 + (vmuls_lane_f32(*(v12 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v12 + 16)));
  *v21.f64 = *v17.i32 + *&v19;
  v20.n128_f32[1] = *v17.i32 + *&v19;
  *v24.i64 = CI::BitmapSampler::read(*(v12 + 8), v20, v21, v16, v19, v18, v17, v22, v23);
  v25 = vmulq_f32(vmulq_n_f32(v24, 1.0 / fmaxf(v24.f32[3], 0.00001)), xmmword_19CF283E0);
  v25.f32[0] = fmaxf(v14 * (v25.f32[2] + vaddv_f32(*v25.f32)), 0.5);
  v194 = v25;
  v27 = CI::getDC(v26);
  v28.f32[0] = -1.0 - v194.f32[0];
  v29 = v194;
  v28.f32[1] = -v194.f32[0];
  v30 = vadd_f32(*v27, v28);
  v31 = v198;
  v32 = vextq_s8(v31, v31, 8uLL);
  *v32.i8 = vadd_f32(*v32.i8, *v198.i8);
  v33.i64[1] = v198.i64[1];
  *v31.i8 = vminnm_f32(vmaxnm_f32(v30, *v198.i8), *v32.i8);
  *&v29.i32[1] = v194.f32[0] + 1.0;
  *&v34.f64[0] = vminnm_f32(vmaxnm_f32(vadd_f32(*v27, *v29.i8), *v198.i8), *v32.i8);
  v195 = v34;
  v196 = v31;
  v35 = v31;
  v35.n128_u32[1] = HIDWORD(v34.f64[0]);
  v35.n128_u64[0] = vadd_f32(v35.n128_u64[0], 0xBF000000BF000000);
  *v32.i8 = vrndm_f32(v35.n128_u64[0]);
  *&v34.f64[0] = vadd_f32(*v32.i8, 0x3F0000003F000000);
  v36 = v32;
  v190 = v32;
  *v32.i32 = vmuls_lane_f32(*(v13 + 20), *&v34.f64[0], 1) + (*v34.f64 * *(v13 + 16));
  v31.i32[0] = *(v13 + 24);
  v37.i32[0] = *(v13 + 36);
  *v29.i32 = vmuls_lane_f32(*(v13 + 32), *&v34.f64[0], 1);
  __asm { FMOV            V10.2S, #1.0 }

  *v33.i8 = vadd_f32(*v36.i8, _D10);
  v199 = v33;
  v35.n128_u64[0] = vsub_f32(*v33.i8, v35.n128_u64[0]);
  v188 = v35;
  v35.n128_f32[0] = *v31.i32 + *v32.i32;
  *v34.f64 = *v37.i32 + (*v29.i32 + (*v34.f64 * *(v13 + 28)));
  v35.n128_u32[1] = LODWORD(v34.f64[0]);
  v43.n128_f64[0] = CI::BitmapSampler::read(*(v13 + 8), v35, v34, *v32.i64, *v31.i64, v33, v29, v37, v36);
  v185 = v43;
  v43.n128_u64[1] = v199.u64[1];
  v43.n128_u64[0] = vadd_f32(*v199.i8, 0x3F0000003F000000);
  LODWORD(v44) = *(v13 + 24);
  v45.i32[0] = *(v13 + 36);
  *v46.i32 = vmuls_lane_f32(*(v13 + 32), v43.n128_u64[0], 1);
  *&v47 = *v46.i32 + (v43.n128_f32[0] * *(v13 + 28));
  v43.n128_f32[0] = *&v44 + (vmuls_lane_f32(*(v13 + 20), v43.n128_u64[0], 1) + (v43.n128_f32[0] * *(v13 + 16)));
  *v48.f64 = *v45.i32 + *&v47;
  v43.n128_f32[1] = *v45.i32 + *&v47;
  *v51.i64 = CI::BitmapSampler::read(*(v13 + 8), v43, v48, v44, v47, v46, v45, v49, v50);
  v181 = v51;
  v52 = v199;
  v53 = v190;
  v52.n128_u32[1] = v190.u32[1];
  v52.n128_u64[0] = vadd_f32(v52.n128_u64[0], 0x3F0000003F000000);
  LODWORD(v54) = *(v13 + 24);
  v55.i32[0] = *(v13 + 36);
  *v56.i32 = vmuls_lane_f32(*(v13 + 32), v52.n128_u64[0], 1);
  *&v57 = *v56.i32 + (v52.n128_f32[0] * *(v13 + 28));
  v52.n128_f32[0] = *&v54 + (vmuls_lane_f32(*(v13 + 20), v52.n128_u64[0], 1) + (v52.n128_f32[0] * *(v13 + 16)));
  *v53.f64 = *v55.i32 + *&v57;
  v52.n128_f32[1] = *v55.i32 + *&v57;
  *v60.i64 = CI::BitmapSampler::read(*(v13 + 8), v52, v53, v54, v57, v56, v55, v58, v59);
  v177 = v60;
  v61 = v190;
  v62 = v199;
  v61.n128_u32[1] = v199.u32[1];
  v61.n128_u64[0] = vadd_f32(v61.n128_u64[0], 0x3F0000003F000000);
  LODWORD(v63) = *(v13 + 24);
  v64.i32[0] = *(v13 + 36);
  *v65.i32 = vmuls_lane_f32(*(v13 + 32), v61.n128_u64[0], 1);
  *&v66 = *v65.i32 + (v61.n128_f32[0] * *(v13 + 28));
  v61.n128_f32[0] = *&v63 + (vmuls_lane_f32(*(v13 + 20), v61.n128_u64[0], 1) + (v61.n128_f32[0] * *(v13 + 16)));
  *v62.f64 = *v64.i32 + *&v66;
  v61.n128_f32[1] = *v64.i32 + *&v66;
  *v69.i64 = CI::BitmapSampler::read(*(v13 + 8), v61, v62, v63, v66, v65, v64, v67, v68);
  v70.i64[1] = v188.n128_i64[1];
  v71 = vmlaq_n_f32(vmulq_n_f32(v177, 1.0 - v188.n128_f32[0]), v185, v188.n128_f32[0]);
  v72 = v181;
  v73 = vmlaq_n_f32(vmulq_n_f32(v181, 1.0 - v188.n128_f32[0]), v69, v188.n128_f32[0]);
  v189 = vmlaq_lane_f32(vmulq_n_f32(v73, 1.0 - v188.n128_f32[1]), v71, v188.n128_u64[0], 1);
  v69.i64[1] = v195.n128_i64[1];
  *v69.f32 = vadd_f32(v195.n128_u64[0], 0xBF000000BF000000);
  *v71.f32 = vrndm_f32(*v69.f32);
  *v73.f32 = vadd_f32(*v71.f32, 0x3F0000003F000000);
  v74 = v71;
  v191 = v71;
  v71.f32[0] = vmuls_lane_f32(*(v13 + 20), *v73.f32, 1) + (v73.f32[0] * *(v13 + 16));
  LODWORD(v75) = *(v13 + 24);
  v76.i32[0] = *(v13 + 36);
  *v72.i32 = vmuls_lane_f32(*(v13 + 32), *v73.f32, 1);
  *v70.i8 = vadd_f32(*v74.i8, _D10);
  v200 = v70;
  *v69.f32 = vsub_f32(*v70.i8, *v69.f32);
  v186 = v69;
  v69.f32[0] = *&v75 + v71.f32[0];
  v73.f32[0] = *v76.i32 + (*v72.i32 + (v73.f32[0] * *(v13 + 28)));
  v69.i32[1] = v73.i32[0];
  v77.n128_f64[0] = CI::BitmapSampler::read(*(v13 + 8), v69, v73, *v71.i64, v75, v70, v72, v76, v74);
  v182 = v77;
  v77.n128_u64[1] = v200.u64[1];
  v77.n128_u64[0] = vadd_f32(*v200.i8, 0x3F0000003F000000);
  LODWORD(v78) = *(v13 + 24);
  v79.i32[0] = *(v13 + 36);
  *v80.i32 = vmuls_lane_f32(*(v13 + 32), v77.n128_u64[0], 1);
  *&v81 = *v80.i32 + (v77.n128_f32[0] * *(v13 + 28));
  v77.n128_f32[0] = *&v78 + (vmuls_lane_f32(*(v13 + 20), v77.n128_u64[0], 1) + (v77.n128_f32[0] * *(v13 + 16)));
  *v82.f64 = *v79.i32 + *&v81;
  v77.n128_f32[1] = *v79.i32 + *&v81;
  *v85.i64 = CI::BitmapSampler::read(*(v13 + 8), v77, v82, v78, v81, v80, v79, v83, v84);
  v178 = v85;
  v86 = v200;
  v87 = v191;
  v86.n128_u32[1] = v191.u32[1];
  v86.n128_u64[0] = vadd_f32(v86.n128_u64[0], 0x3F0000003F000000);
  LODWORD(v88) = *(v13 + 24);
  v89.i32[0] = *(v13 + 36);
  *v90.i32 = vmuls_lane_f32(*(v13 + 32), v86.n128_u64[0], 1);
  *&v91 = *v90.i32 + (v86.n128_f32[0] * *(v13 + 28));
  v86.n128_f32[0] = *&v88 + (vmuls_lane_f32(*(v13 + 20), v86.n128_u64[0], 1) + (v86.n128_f32[0] * *(v13 + 16)));
  *v87.f64 = *v89.i32 + *&v91;
  v86.n128_f32[1] = *v89.i32 + *&v91;
  *v94.i64 = CI::BitmapSampler::read(*(v13 + 8), v86, v87, v88, v91, v90, v89, v92, v93);
  v174 = v94;
  v95 = v191;
  v96 = v200;
  v95.n128_u32[1] = v200.u32[1];
  v95.n128_u64[0] = vadd_f32(v95.n128_u64[0], 0x3F0000003F000000);
  LODWORD(v97) = *(v13 + 24);
  v98.i32[0] = *(v13 + 36);
  *v99.i32 = vmuls_lane_f32(*(v13 + 32), v95.n128_u64[0], 1);
  *&v100 = *v99.i32 + (v95.n128_f32[0] * *(v13 + 28));
  v95.n128_f32[0] = *&v97 + (vmuls_lane_f32(*(v13 + 20), v95.n128_u64[0], 1) + (v95.n128_f32[0] * *(v13 + 16)));
  *v96.f64 = *v98.i32 + *&v100;
  v95.n128_f32[1] = *v98.i32 + *&v100;
  *v103.i64 = CI::BitmapSampler::read(*(v13 + 8), v95, v96, v97, v100, v99, v98, v101, v102);
  v104.i64[1] = v186.i64[1];
  v105 = vmlaq_n_f32(vmulq_n_f32(v174, 1.0 - v186.f32[0]), v182, v186.f32[0]);
  v106 = v178;
  v107 = vmlaq_n_f32(vmulq_n_f32(v178, 1.0 - v186.f32[0]), v103, v186.f32[0]);
  v187 = vmlaq_lane_f32(vmulq_n_f32(v107, 1.0 - v186.f32[1]), v105, *v186.f32, 1);
  v103.i64[1] = v196.i64[1];
  *v103.f32 = vadd_f32(*v196.i8, 0xBF000000BF000000);
  *v105.f32 = vrndm_f32(*v103.f32);
  *v107.f32 = vadd_f32(*v105.f32, 0x3F0000003F000000);
  v108 = v105;
  v192 = v105;
  v105.f32[0] = vmuls_lane_f32(*(v13 + 20), *v107.f32, 1) + (v107.f32[0] * *(v13 + 16));
  LODWORD(v109) = *(v13 + 24);
  v110.i32[0] = *(v13 + 36);
  *v106.i32 = vmuls_lane_f32(*(v13 + 32), *v107.f32, 1);
  *v104.i8 = vadd_f32(*v108.i8, _D10);
  v201 = v104;
  *v103.f32 = vsub_f32(*v104.i8, *v103.f32);
  v183 = v103;
  v103.f32[0] = *&v109 + v105.f32[0];
  v107.f32[0] = *v110.i32 + (*v106.i32 + (v107.f32[0] * *(v13 + 28)));
  v103.i32[1] = v107.i32[0];
  v111.n128_f64[0] = CI::BitmapSampler::read(*(v13 + 8), v103, v107, *v105.i64, v109, v104, v106, v110, v108);
  v179 = v111;
  v111.n128_u64[1] = v201.u64[1];
  v111.n128_u64[0] = vadd_f32(*v201.i8, 0x3F0000003F000000);
  LODWORD(v112) = *(v13 + 24);
  v113.i32[0] = *(v13 + 36);
  *v114.i32 = vmuls_lane_f32(*(v13 + 32), v111.n128_u64[0], 1);
  *&v115 = *v114.i32 + (v111.n128_f32[0] * *(v13 + 28));
  v111.n128_f32[0] = *&v112 + (vmuls_lane_f32(*(v13 + 20), v111.n128_u64[0], 1) + (v111.n128_f32[0] * *(v13 + 16)));
  *v116.f64 = *v113.i32 + *&v115;
  v111.n128_f32[1] = *v113.i32 + *&v115;
  *v119.i64 = CI::BitmapSampler::read(*(v13 + 8), v111, v116, v112, v115, v114, v113, v117, v118);
  v175 = v119;
  v120 = v201;
  v121 = v192;
  v120.n128_u32[1] = v192.u32[1];
  v120.n128_u64[0] = vadd_f32(v120.n128_u64[0], 0x3F0000003F000000);
  LODWORD(v122) = *(v13 + 24);
  v123.i32[0] = *(v13 + 36);
  *v124.i32 = vmuls_lane_f32(*(v13 + 32), v120.n128_u64[0], 1);
  *&v125 = *v124.i32 + (v120.n128_f32[0] * *(v13 + 28));
  v120.n128_f32[0] = *&v122 + (vmuls_lane_f32(*(v13 + 20), v120.n128_u64[0], 1) + (v120.n128_f32[0] * *(v13 + 16)));
  *v121.f64 = *v123.i32 + *&v125;
  v120.n128_f32[1] = *v123.i32 + *&v125;
  *v128.i64 = CI::BitmapSampler::read(*(v13 + 8), v120, v121, v122, v125, v124, v123, v126, v127);
  v173 = v128;
  v129 = v192;
  v130 = v201;
  v129.n128_u32[1] = v201.u32[1];
  v129.n128_u64[0] = vadd_f32(v129.n128_u64[0], 0x3F0000003F000000);
  LODWORD(v131) = *(v13 + 24);
  v132.i32[0] = *(v13 + 36);
  *v133.i32 = vmuls_lane_f32(*(v13 + 32), v129.n128_u64[0], 1);
  *&v134 = *v133.i32 + (v129.n128_f32[0] * *(v13 + 28));
  v129.n128_f32[0] = *&v131 + (vmuls_lane_f32(*(v13 + 20), v129.n128_u64[0], 1) + (v129.n128_f32[0] * *(v13 + 16)));
  *v130.f64 = *v132.i32 + *&v134;
  v129.n128_f32[1] = *v132.i32 + *&v134;
  *v137.i64 = CI::BitmapSampler::read(*(v13 + 8), v129, v130, v131, v134, v133, v132, v135, v136);
  v138 = v183;
  v139 = vmlaq_n_f32(vmulq_n_f32(v173, 1.0 - v183.f32[0]), v179, v183.f32[0]);
  v193 = vmlaq_lane_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v175, 1.0 - v183.f32[0]), v137, v183.f32[0]), 1.0 - v183.f32[1]), v139, *v183.f32, 1);
  v140 = v195;
  *&v141.f64[1] = v196.i64[1];
  v140.n128_u32[1] = v196.u32[1];
  v140.n128_u64[0] = vadd_f32(v140.n128_u64[0], 0xBF000000BF000000);
  *v139.f32 = vrndm_f32(v140.n128_u64[0]);
  *&v141.f64[0] = vadd_f32(*v139.f32, _D10);
  v197 = v139;
  v202 = v141;
  v195.n128_u64[0] = vsub_f32(*&v141.f64[0], v140.n128_u64[0]);
  *&v141.f64[0] = vadd_f32(*v139.f32, 0x3F0000003F000000);
  LODWORD(v142) = *(v13 + 28);
  v140.n128_f32[0] = *(v13 + 24) + (vmuls_lane_f32(*(v13 + 20), *&v141.f64[0], 1) + (*v141.f64 * *(v13 + 16)));
  v138.i32[0] = *(v13 + 36);
  v139.f32[0] = vmuls_lane_f32(*(v13 + 32), *&v141.f64[0], 1);
  *v141.f64 = *v138.i32 + (v139.f32[0] + (*v141.f64 * *&v142));
  v140.n128_u32[1] = LODWORD(v141.f64[0]);
  v145.n128_f64[0] = CI::BitmapSampler::read(*(v13 + 8), v140, v141, *v139.i64, v142, v138, v175, v143, v144);
  v184 = v145;
  v145.n128_u64[1] = v202.n128_u64[1];
  v145.n128_u64[0] = vadd_f32(v202.n128_u64[0], 0x3F0000003F000000);
  LODWORD(v146) = *(v13 + 24);
  v147.i32[0] = *(v13 + 36);
  *v148.i32 = vmuls_lane_f32(*(v13 + 32), v145.n128_u64[0], 1);
  *&v149 = *v148.i32 + (v145.n128_f32[0] * *(v13 + 28));
  v145.n128_f32[0] = *&v146 + (vmuls_lane_f32(*(v13 + 20), v145.n128_u64[0], 1) + (v145.n128_f32[0] * *(v13 + 16)));
  *v150.f64 = *v147.i32 + *&v149;
  v145.n128_f32[1] = *v147.i32 + *&v149;
  *v153.i64 = CI::BitmapSampler::read(*(v13 + 8), v145, v150, v146, v149, v148, v147, v151, v152);
  v180 = v153;
  v155 = v197;
  v154 = v202;
  v154.n128_u32[1] = v197.u32[1];
  v154.n128_u64[0] = vadd_f32(v154.n128_u64[0], 0x3F0000003F000000);
  LODWORD(v156) = *(v13 + 24);
  v157.i32[0] = *(v13 + 36);
  *v158.i32 = vmuls_lane_f32(*(v13 + 32), v154.n128_u64[0], 1);
  *&v159 = *v158.i32 + (v154.n128_f32[0] * *(v13 + 28));
  v154.n128_f32[0] = *&v156 + (vmuls_lane_f32(*(v13 + 20), v154.n128_u64[0], 1) + (v154.n128_f32[0] * *(v13 + 16)));
  *v155.f64 = *v157.i32 + *&v159;
  v154.n128_f32[1] = *v157.i32 + *&v159;
  v162.n128_f64[0] = CI::BitmapSampler::read(*(v13 + 8), v154, v155, v156, v159, v158, v157, v160, v161);
  v176 = v162;
  v163 = v197;
  v162.n128_u64[1] = v202.n128_u64[1];
  HIDWORD(v163.f64[0]) = v202.n128_u32[1];
  v162.n128_u64[0] = vadd_f32(*&v163.f64[0], 0x3F0000003F000000);
  LODWORD(v164) = *(v13 + 24);
  v165.i32[0] = *(v13 + 36);
  *v166.i32 = vmuls_lane_f32(*(v13 + 32), v162.n128_u64[0], 1);
  *&v167 = *v166.i32 + (v162.n128_f32[0] * *(v13 + 28));
  v162.n128_f32[0] = *&v164 + (vmuls_lane_f32(*(v13 + 20), v162.n128_u64[0], 1) + (v162.n128_f32[0] * *(v13 + 16)));
  *v163.f64 = *v165.i32 + *&v167;
  v162.n128_f32[1] = *v165.i32 + *&v167;
  *v170.i64 = CI::BitmapSampler::read(*(v13 + 8), v162, v163, v164, v167, v166, v165, v168, v169);
  v171 = vsubq_f32(vsubq_f32(vaddq_f32(v189, vmlaq_lane_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v180, 1.0 - v195.n128_f32[0]), v170, v195.n128_f32[0]), 1.0 - v195.n128_f32[1]), vmlaq_n_f32(vmulq_n_f32(v176, 1.0 - v195.n128_f32[0]), v184, v195.n128_f32[0]), v195.n128_u64[0], 1)), v187), v193);
  *&result = vdivq_f32(v171, vdupq_laneq_s32(v171, 3)).u64[0];
  return result;
}

unint64_t CI::sw_vibrance_neg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = vminnmq_f32(vmaxnmq_f32(*v7, vdupq_n_s32(0x38D1B717u)), vdupq_n_s32(0x3F7FF972u));
  v9 = vsubq_f32(*v7, v8);
  v10 = (v8.f32[2] + vaddv_f32(*v8.f32)) * 0.33333;
  *&v10 = v10;
  v11 = 1.0 / *&v10;
  v12 = 1.0 / (1.0 - *&v10);
  v13 = vdupq_lane_s32(*&v10, 0);
  v14 = vsubq_f32(v8, v13);
  v15 = vmulq_n_f32(v14, v12);
  v16 = vmulq_n_f32(vsubq_f32(v13, v8), v11);
  v15.i32[3] = 0;
  v16.i32[3] = 0;
  v17 = vmaxnmq_f32(v15, v16);
  v18 = fmaxf(fmaxf(v17.f32[0], v17.f32[1]), v17.f32[2]);
  v19 = -(v8.f32[2] - v8.f32[1] * 2.0);
  v20 = (1.0 - v17.f32[0]) * (fminf(v8.f32[0] - v8.f32[1], v19) * 4.0) * v11;
  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  _NF = v20 < 0.0;
  v23 = 0.0;
  if (!_NF)
  {
    v23 = v21;
  }

  v24 = v23 * 0.7 + 0.15;
  v25 = (v18 * (v18 + -1.0) + 1.0) * *(a2 + (*(v3 + 32) << 6)) * (1.0 - v24);
  v26 = vmaxnmq_f32(vaddq_f32(v8, vmulq_n_f32(v14, v25)), 0);
  __asm { FMOV            V3.4S, #1.0 }

  return vaddq_f32(v9, vminnmq_f32(v26, _Q3)).u64[0];
}

unint64_t CI::sw_vibrance_pos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = vminnmq_f32(vmaxnmq_f32(*v7, vdupq_n_s32(0x38D1B717u)), vdupq_n_s32(0x3F7FF972u));
  v13 = vsubq_f32(*v7, v12);
  v14.i32[1] = 1070945607;
  *v14.i32 = (v12.f32[2] + vaddv_f32(*v12.f32)) * 0.33333;
  v15 = 1.0 / *v14.i32;
  v16 = 1.0 / (1.0 - *v14.i32);
  v17 = vdupq_lane_s32(v14, 0);
  v18 = vsubq_f32(v12, v17);
  v19 = vmulq_n_f32(v18, v16);
  v20 = vmulq_n_f32(vsubq_f32(v17, v12), v15);
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v21 = vmaxnmq_f32(v19, v20);
  v22 = fmaxf(fmaxf(v21.f32[0], v21.f32[1]), v21.f32[2]);
  v23 = -(v12.f32[2] - v12.f32[1] * 2.0);
  v24 = (1.0 - v21.f32[0]) * (fminf(v12.f32[0] - v12.f32[1], v23) * 4.0) * v15;
  if (v24 <= 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
  }

  _NF = v24 < 0.0;
  v27 = 0.0;
  if (!_NF)
  {
    v27 = v25;
  }

  __asm { FMOV            V17.4S, #1.0 }

  v32.i64[0] = __PAIR64__(LODWORD(v22), _Q17.u32[0]);
  v32.f32[2] = v22 * v22;
  v32.f32[3] = v22 * (v22 * v22);
  v33 = v27 * 0.7 + 0.15;
  v34 = vmulq_f32(*v11, v32);
  *v34.i32 = (1.0 - v33) * vaddv_f32(vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)));
  return vaddq_f32(v13, vminnmq_f32(vmaxnmq_f32(vaddq_f32(v12, vmulq_n_f32(v18, *v34.i32)), 0), _Q17)).u64[0];
}

double CI::sw_vignette(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v14 = *v11->f32;
  v15 = *v7;
  v12 = vsub_f32(*CI::getDC(a1), *v11);
  *&result = vmulq_n_f32(v15, powf(fmaxf(1.0 - vmuls_lane_f32(vaddv_f32(vmul_f32(v12, v12)), v14, 3), 0.0), v14.f32[2])).u64[0];
  return result;
}

double CI::sw_vignetteeffect(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v25 = *v15;
  v26 = *v7;
  v16 = vmul_n_f32(vsub_f32(*CI::getDC(a1), *v11), COERCE_FLOAT(*v15));
  v17 = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v16, v16))) - v25.f32[1], v25, 2);
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = v17 < 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v20 = v18;
  }

  v21 = ((v20 * 6.0 + -15.0) * v20 + 10.0) * (v20 * (v20 * v20));
  v22 = vmuls_lane_f32(v21, v25, 3);
  v23 = ((((1.0 - v22) * -0.120638501 + 0.543878646) * (1.0 - v22) + 0.538772615) * (1.0 - v22) + 0.0376009997) * (1.0 - v22);
  *&result = vmulq_n_f32(v26, v23).u64[0];
  return result;
}

double CI::sw_vignetteeffectneg(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v24 = *v15;
  v25 = *v7;
  v16 = vmul_n_f32(vsub_f32(*CI::getDC(a1), *v11), COERCE_FLOAT(*v15));
  v17 = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v16, v16))) - v24.f32[1], v24, 2);
  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  v19 = v17 < 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v20 = v18;
  }

  v21 = ((v20 * 6.0 + -15.0) * v20 + 10.0) * (v20 * (v20 * v20));
  v22 = v21 * 16.0 * v24.f32[3] + 1.0;
  *&result = vmulq_n_f32(v25, v22).u64[0];
  return result;
}

uint64_t CIVNDetectFaces(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (a3)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v9 = getVNImageOptionCIContextSymbolLoc_ptr;
    v49 = getVNImageOptionCIContextSymbolLoc_ptr;
    if (!getVNImageOptionCIContextSymbolLoc_ptr)
    {
      v51 = MEMORY[0x1E69E9820];
      v52 = 3221225472;
      v53 = __getVNImageOptionCIContextSymbolLoc_block_invoke;
      v54 = &unk_1E75C1E10;
      v55 = &v46;
      v10 = VisionLibrary_1();
      v11 = dlsym(v10, "VNImageOptionCIContext");
      *(*(v55 + 1) + 24) = v11;
      getVNImageOptionCIContextSymbolLoc_ptr = *(*(v55 + 1) + 24);
      v9 = *(v47 + 24);
    }

    _Block_object_dispose(&v46, 8);
    if (!v9)
    {
      CIVNDetectFaces_cold_1();
    }

    [v8 setObject:a3 forKey:*v9];
  }

  if (a4)
  {
    if ([a4 objectForKey:@"kCIVNDetectOptionRequestLandmarks"])
    {
      v12 = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestLandmarks", "BOOLValue"}];
    }

    else
    {
      v12 = 0;
    }

    if ([a4 objectForKey:@"kCIVNDetectOptionRequestAttributes"])
    {
      v14 = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestAttributes", "BOOLValue"}];
    }

    else
    {
      v14 = 0;
    }

    if ([a4 objectForKey:@"kCIVNDetectOptionRequestPose"])
    {
      v15 = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestPose", "BOOLValue"}];
    }

    else
    {
      v15 = 0;
    }

    if ([a4 objectForKey:@"kCIVNDetectOptionRequestFast"])
    {
      v13 = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestFast", "BOOLValue"}];
    }

    else
    {
      v13 = 0;
    }

    if ([a4 objectForKey:@"kCIVNDetectOptionRequestSegments"])
    {
      LODWORD(a4) = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestSegments", "BOOLValue"}];
    }

    else
    {
      LODWORD(a4) = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 0;
  }

  v51 = 0;
  v52 = &v51;
  v53 = 0x3052000000;
  v54 = __Block_byref_object_copy__18;
  v16 = getVNImageRequestHandlerClass_softClass;
  v55 = __Block_byref_object_dispose__18;
  v56 = getVNImageRequestHandlerClass_softClass;
  if (!getVNImageRequestHandlerClass_softClass)
  {
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __getVNImageRequestHandlerClass_block_invoke;
    v49 = &unk_1E75C1E10;
    v50 = &v51;
    __getVNImageRequestHandlerClass_block_invoke(&v46);
    v16 = *(v52 + 40);
  }

  _Block_object_dispose(&v51, 8);
  v17 = [[v16 alloc] initWithCIImage:a1 orientation:a2 options:v8];
  v45 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3052000000;
  v54 = __Block_byref_object_copy__18;
  v18 = getVNDetectFaceRectanglesRequestClass_softClass;
  v55 = __Block_byref_object_dispose__18;
  v56 = getVNDetectFaceRectanglesRequestClass_softClass;
  if (!getVNDetectFaceRectanglesRequestClass_softClass)
  {
    v46 = MEMORY[0x1E69E9820];
    v47 = 3221225472;
    v48 = __getVNDetectFaceRectanglesRequestClass_block_invoke;
    v49 = &unk_1E75C1E10;
    v50 = &v51;
    __getVNDetectFaceRectanglesRequestClass_block_invoke(&v46);
    v18 = *(v52 + 40);
  }

  _Block_object_dispose(&v51, 8);
  v19 = objc_alloc_init(v18);
  [v19 setRevision:3];
  if (v13)
  {
    [v19 setDetectionLevel:2];
  }

  v61[0] = v19;
  v20 = [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", v61, 1, v45, v46), &v45}];
  if (v45)
  {
    v22 = ci_logger_api(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      CIVNDetectFaces_cold_2(&v45);
    }

    v23 = 0;
  }

  else
  {
    v23 = [v19 results];
  }

  if (v14)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3052000000;
    v54 = __Block_byref_object_copy__18;
    v24 = getVNClassifyFaceAttributesRequestClass_softClass;
    v55 = __Block_byref_object_dispose__18;
    v56 = getVNClassifyFaceAttributesRequestClass_softClass;
    if (!getVNClassifyFaceAttributesRequestClass_softClass)
    {
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = __getVNClassifyFaceAttributesRequestClass_block_invoke;
      v49 = &unk_1E75C1E10;
      v50 = &v51;
      __getVNClassifyFaceAttributesRequestClass_block_invoke(&v46);
      v24 = *(v52 + 40);
    }

    _Block_object_dispose(&v51, 8);
    v25 = objc_alloc_init(v24);
    [v25 setRevision:3737841666 error:0];
    [v25 setInputFaceObservations:v23];
    v60 = v25;
    v26 = [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v60, 1), &v45}];
    if (v45)
    {
      v28 = ci_logger_api(v26, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        CIVNDetectFaces_cold_3(&v45);
      }
    }

    else
    {
      v23 = [v25 results];
    }
  }

  if (v12)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3052000000;
    v54 = __Block_byref_object_copy__18;
    v29 = getVNDetectFaceLandmarksRequestClass_softClass;
    v55 = __Block_byref_object_dispose__18;
    v56 = getVNDetectFaceLandmarksRequestClass_softClass;
    if (!getVNDetectFaceLandmarksRequestClass_softClass)
    {
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = __getVNDetectFaceLandmarksRequestClass_block_invoke;
      v49 = &unk_1E75C1E10;
      v50 = &v51;
      __getVNDetectFaceLandmarksRequestClass_block_invoke(&v46);
      v29 = *(v52 + 40);
    }

    _Block_object_dispose(&v51, 8);
    v30 = objc_alloc_init(v29);
    [v30 setRevision:2];
    [v30 setInputFaceObservations:v23];
    v59 = v30;
    v31 = [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v59, 1), &v45}];
    if (v45)
    {
      v33 = ci_logger_api(v31, v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        CIVNDetectFaces_cold_4(&v45);
      }
    }

    else
    {
      v23 = [v30 results];
    }
  }

  if (v15)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3052000000;
    v54 = __Block_byref_object_copy__18;
    v34 = getVNDetectFacePoseRequestClass_softClass;
    v55 = __Block_byref_object_dispose__18;
    v56 = getVNDetectFacePoseRequestClass_softClass;
    if (!getVNDetectFacePoseRequestClass_softClass)
    {
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = __getVNDetectFacePoseRequestClass_block_invoke;
      v49 = &unk_1E75C1E10;
      v50 = &v51;
      __getVNDetectFacePoseRequestClass_block_invoke(&v46);
      v34 = *(v52 + 40);
    }

    _Block_object_dispose(&v51, 8);
    v35 = objc_alloc_init(v34);
    [v35 setRevision:1];
    [v35 setInputFaceObservations:v23];
    v58 = v35;
    v36 = [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v58, 1), &v45}];
    if (v45)
    {
      v38 = ci_logger_api(v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        CIVNDetectFaces_cold_5(&v45);
      }
    }

    else
    {
      v23 = [v35 results];
    }
  }

  if (a4)
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x3052000000;
    v54 = __Block_byref_object_copy__18;
    v39 = getVNGenerateFaceSegmentsRequestClass_softClass;
    v55 = __Block_byref_object_dispose__18;
    v56 = getVNGenerateFaceSegmentsRequestClass_softClass;
    if (!getVNGenerateFaceSegmentsRequestClass_softClass)
    {
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = __getVNGenerateFaceSegmentsRequestClass_block_invoke;
      v49 = &unk_1E75C1E10;
      v50 = &v51;
      __getVNGenerateFaceSegmentsRequestClass_block_invoke(&v46);
      v39 = *(v52 + 40);
    }

    _Block_object_dispose(&v51, 8);
    v40 = objc_alloc_init(v39);
    [v40 setInputFaceObservations:v23];
    v57 = v40;
    v41 = [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v57, 1), &v45}];
    if (v45)
    {
      v43 = ci_logger_api(v41, v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        CIVNDetectFaces_cold_6(&v45);
      }
    }

    else
    {
      v23 = [v40 results];
    }
  }

  return v23;
}

void sub_19CDEFBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CIVNAverage(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 X];
        v6 = v6 + v9;
        [v8 Y];
        v5 = v5 + v10;
      }

      v3 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  else
  {
    v6 = 0.0;
  }

  v11 = [a1 count];
  [a1 count];
  return v6 / v11;
}

double CIVNBoundingRect(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v2)
  {
    return 1.79769313e308;
  }

  v3 = v2;
  v4 = *v21;
  v5 = -1.79769313e308;
  v6 = 1.79769313e308;
  v7 = 1.79769313e308;
  v8 = -1.79769313e308;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v21 != v4)
      {
        objc_enumerationMutation(a1);
      }

      v10 = *(*(&v20 + 1) + 8 * i);
      [v10 X];
      if (v6 >= v11)
      {
        [v10 X];
        v6 = v12;
      }

      [v10 Y];
      if (v7 >= v13)
      {
        [v10 Y];
        v7 = v14;
      }

      [v10 X];
      if (v5 <= v15)
      {
        [v10 X];
        v5 = v16;
      }

      [v10 Y];
      if (v8 <= v17)
      {
        [v10 Y];
        v8 = v18;
      }
    }

    v3 = [a1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v3);
  return v6;
}

id CIVNLandmarkInOrientedImage(void *a1, void *a2)
{
  v4 = [objc_msgSend(a2 "properties")];
  if (!v4)
  {
    v4 = &unk_1F1082388;
  }

  v5 = [v4 intValue];

  return denormalizedOrientatedLandmarkPoints(a1, a2, v5);
}

id denormalizedOrientatedLandmarkPoints(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = [a1 pointCount];
  [a2 extent];
  if ((v3 - 5) >= 4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if ((v3 - 5) >= 4)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = [a1 pointsInImageOfSize:{v9, v10}];
  v12 = 0uLL;
  memset(&v18, 0, sizeof(v18));
  if (a2)
  {
    objc_msgSend_imageTransformForOrientation_(a2);
    v12 = 0uLL;
  }

  *&v17.c = v12;
  *&v17.tx = v12;
  *&v17.a = v12;
  v16 = v18;
  CGAffineTransformInvert(&v17, &v16);
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  if (v6)
  {
    v14 = (v11 + 8);
    do
    {
      [v13 addObject:{+[CIVector vectorWithCGPoint:](CIVector, "vectorWithCGPoint:", vaddq_f64(*&v17.tx, vmlaq_n_f64(vmulq_n_f64(*&v17.c, *v14), *&v17.a, *(v14 - 1))))}];
      v14 += 2;
      --v6;
    }

    while (v6);
  }

  return v13;
}

void CIVNRectInOrientedImage(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [a1 extent];
  v11 = v10;
  v13 = v12;
  v14 = [objc_msgSend(a1 "properties")];
  if (!v14)
  {
    v14 = &unk_1F1082388;
  }

  v15 = [v14 intValue] - 5;
  if (v15 >= 4)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  if (v15 >= 4)
  {
    v17 = v13;
  }

  else
  {
    v17 = v11;
  }

  memset(&v24, 0, sizeof(v24));
  CGAffineTransformMakeScale(&v24, v16, v17);
  v26 = v24;
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v28 = CGRectApplyAffineTransform(v27, &v26);
  x = v28.origin.x;
  y = v28.origin.y;
  width = v28.size.width;
  height = v28.size.height;
  v22 = [objc_msgSend(a1 "properties")];
  if (!v22)
  {
    v22 = &unk_1F1082388;
  }

  [v22 intValue];
  memset(&v26, 0, sizeof(v26));
  if (a1)
  {
    objc_msgSend_imageTransformForOrientation_(a1);
  }

  memset(&v23, 0, sizeof(v23));
  v25 = v26;
  CGAffineTransformInvert(&v23, &v25);
  v26 = v23;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  CGRectApplyAffineTransform(v29, &v26);
}

uint64_t CIVNDenormalizedLandmarks(void *a1, uint64_t a2, void *a3)
{
  v8[13] = *MEMORY[0x1E69E9840];
  v5 = [a3 landmarks];
  v7[0] = @"allPoints";
  v8[0] = denormalizedOrientatedLandmarkPoints([v5 allPoints], a1, a2);
  v7[1] = @"faceContour";
  v8[1] = denormalizedOrientatedLandmarkPoints([v5 faceContour], a1, a2);
  v7[2] = @"innerLips";
  v8[2] = denormalizedOrientatedLandmarkPoints([v5 innerLips], a1, a2);
  v7[3] = @"leftEye";
  v8[3] = denormalizedOrientatedLandmarkPoints([v5 leftEye], a1, a2);
  v7[4] = @"leftEyebrow";
  v8[4] = denormalizedOrientatedLandmarkPoints([v5 leftEyebrow], a1, a2);
  v7[5] = @"leftPupil";
  v8[5] = denormalizedOrientatedLandmarkPoints([v5 leftPupil], a1, a2);
  v7[6] = @"medianLine";
  v8[6] = denormalizedOrientatedLandmarkPoints([v5 medianLine], a1, a2);
  v7[7] = @"nose";
  v8[7] = denormalizedOrientatedLandmarkPoints([v5 nose], a1, a2);
  v7[8] = @"noseCrest";
  v8[8] = denormalizedOrientatedLandmarkPoints([v5 noseCrest], a1, a2);
  v7[9] = @"outerLips";
  v8[9] = denormalizedOrientatedLandmarkPoints([v5 outerLips], a1, a2);
  v7[10] = @"rightEye";
  v8[10] = denormalizedOrientatedLandmarkPoints([v5 rightEye], a1, a2);
  v7[11] = @"rightEyebrow";
  v8[11] = denormalizedOrientatedLandmarkPoints([v5 rightEyebrow], a1, a2);
  v7[12] = @"rightPupil";
  v8[12] = denormalizedOrientatedLandmarkPoints([v5 rightPupil], a1, a2);
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:13];
}

void *__getVNImageOptionCIContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_1();
  result = dlsym(v2, "VNImageOptionCIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNImageOptionCIContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VisionLibrary_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_1)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __VisionLibraryCore_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E75C3DB8;
    v4 = 0;
    VisionLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_1;
  if (!VisionLibraryCore_frameworkLibrary_1)
  {
    VisionLibrary_cold_1_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __VisionLibraryCore_block_invoke_1(uint64_t a1)
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getVNImageRequestHandlerClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNImageRequestHandlerClass_block_invoke_cold_1();
  }

  getVNImageRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNDetectFaceRectanglesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNDetectFaceRectanglesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFaceRectanglesRequestClass_block_invoke_cold_1();
  }

  getVNDetectFaceRectanglesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNClassifyFaceAttributesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNClassifyFaceAttributesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNClassifyFaceAttributesRequestClass_block_invoke_cold_1();
  }

  getVNClassifyFaceAttributesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNDetectFaceLandmarksRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNDetectFaceLandmarksRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFaceLandmarksRequestClass_block_invoke_cold_1();
  }

  getVNDetectFaceLandmarksRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNDetectFacePoseRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNDetectFacePoseRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFacePoseRequestClass_block_invoke_cold_1();
  }

  getVNDetectFacePoseRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNGenerateFaceSegmentsRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNGenerateFaceSegmentsRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNGenerateFaceSegmentsRequestClass_block_invoke_cold_1();
  }

  getVNGenerateFaceSegmentsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

float32x2_t CI::sw_vortexDistortion(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v22 = *v11;
  DC = CI::getDC(a1);
  v14 = vsub_f32(*DC, v12);
  v15 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
  v16 = (v15 * v22.f32[0]) + -1.0;
  if (v16 >= 0.0)
  {
    return *CI::getDC(DC);
  }

  else
  {
    v17 = __sincosf_stret(vmuls_lane_f32(v16 * v16, v22, 1) / v15);
    v18.f32[0] = -v17.__sinval;
    v18.i32[1] = LODWORD(v17.__cosval);
    v19 = vmul_f32(v14, __PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)));
    v20 = vmul_f32(v14, v18);
    return vadd_f32(v12, vadd_f32(vzip1_s32(v19, v20), vzip2_s32(v19, v20)));
  }
}

void vortexTracePoint(CGRect *a1, double a2, float32x2_t a3, float a4, float a5)
{
  v7 = vsub_f32(*&a2, a3);
  v8 = sqrtf(vaddv_f32(vmul_f32(v7, v7)));
  v9 = a4 * v8;
  if (v9 < 1.0)
  {
    v10 = a5 / v8 * ((1.0 - v9) * (1.0 - v9));
    v13 = v7;
    v11 = __sincosf_stret(v10);
    v12 = vmul_f32(v13, __PAIR64__(LODWORD(v11.__sinval), LODWORD(v11.__cosval)));
    v12.i32[0] = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
    *&v12.i32[1] = vmuls_lane_f32(v11.__cosval, v13, 1) - (v11.__sinval * v13.f32[0]);
    a2 = COERCE_DOUBLE(vadd_f32(a3, v12));
  }

  v14.origin.x = *&a2;
  v14.origin.y = *(&a2 + 1);
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  *a1 = CGRectUnion(*a1, v14);
}

float32x2_t CI::sw_wrapMirror(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v11 = *v7;
  DC = CI::getDC(a1);
  v9 = vextq_s8(v11, v11, 8uLL).u64[0];
  return vminnm_f32(vsub_f32(vadd_f32(v9, v9), vsub_f32(*DC, *v11.i8)), vabd_f32(*DC, *v11.i8));
}

uint64_t ci_logger_general(uint64_t a1, uint64_t a2)
{
  if (ci_logger_general_onceToken != -1)
  {
    ci_logger_general_cold_1();
  }

  return ci_logger_general_logger;
}

os_log_t __ci_logger_general_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "general");
  ci_logger_general_logger = result;
  return result;
}

uint64_t ci_logger_api(uint64_t a1, uint64_t a2)
{
  if (ci_logger_api_onceToken != -1)
  {
    ci_logger_api_cold_1();
  }

  return ci_logger_api_logger;
}

os_log_t __ci_logger_api_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "api");
  ci_logger_api_logger = result;
  return result;
}

uint64_t ci_logger_render(uint64_t a1, uint64_t a2)
{
  if (ci_logger_render_onceToken != -1)
  {
    ci_logger_render_cold_1();
  }

  return ci_logger_render_logger;
}

os_log_t __ci_logger_render_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "render");
  ci_logger_render_logger = result;
  return result;
}

uint64_t ci_logger_performance(uint64_t a1, uint64_t a2)
{
  if (ci_logger_performance_onceToken != -1)
  {
    ci_logger_performance_cold_1();
  }

  return ci_logger_performance_logger;
}

os_log_t __ci_logger_performance_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "performance");
  ci_logger_performance_logger = result;
  return result;
}

uint64_t ci_logger_compile(uint64_t a1, uint64_t a2)
{
  if (ci_logger_compile_onceToken != -1)
  {
    ci_logger_compile_cold_1();
  }

  return ci_logger_compile_logger;
}

os_log_t __ci_logger_compile_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "compile");
  ci_logger_compile_logger = result;
  return result;
}

uint64_t ci_logger_cache(uint64_t a1, uint64_t a2)
{
  if (ci_logger_cache_onceToken != -1)
  {
    ci_logger_cache_cold_1();
  }

  return ci_logger_cache_logger;
}

os_log_t __ci_logger_cache_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "cache");
  ci_logger_cache_logger = result;
  return result;
}

uint64_t ci_logger_filter(uint64_t a1, uint64_t a2)
{
  if (ci_logger_filter_onceToken != -1)
  {
    ci_logger_filter_cold_1();
  }

  return ci_logger_filter_logger;
}

os_log_t __ci_logger_filter_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "filter");
  ci_logger_filter_logger = result;
  return result;
}

uint64_t ci_signpost_log_render(uint64_t a1, uint64_t a2)
{
  if (ci_signpost_log_render_onceToken != -1)
  {
    ci_signpost_log_render_cold_1();
  }

  return ci_signpost_log_render_log;
}

os_log_t __ci_signpost_log_render_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_render");
  ci_signpost_log_render_log = result;
  return result;
}

uint64_t ci_signpost_log_compile(uint64_t a1, uint64_t a2)
{
  if (ci_signpost_log_compile_onceToken != -1)
  {
    ci_signpost_log_compile_cold_1();
  }

  return ci_signpost_log_compile_log;
}

os_log_t __ci_signpost_log_compile_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_compile");
  ci_signpost_log_compile_log = result;
  return result;
}

uint64_t ci_signpost_log_cache(uint64_t a1, uint64_t a2)
{
  if (ci_signpost_log_cache_onceToken != -1)
  {
    ci_signpost_log_cache_cold_1();
  }

  return ci_signpost_log_cache_log;
}

os_log_t __ci_signpost_log_cache_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_cache");
  ci_signpost_log_cache_log = result;
  return result;
}

uint64_t ci_signpost_log_detector(uint64_t a1, uint64_t a2)
{
  if (ci_signpost_log_detector_onceToken != -1)
  {
    ci_signpost_log_detector_cold_1();
  }

  return ci_signpost_log_detector_log;
}

os_log_t __ci_signpost_log_detector_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_detector");
  ci_signpost_log_detector_log = result;
  return result;
}

uint64_t ci_signpost_log_filter(uint64_t a1, uint64_t a2)
{
  if (ci_signpost_log_filter_onceToken != -1)
  {
    ci_signpost_log_filter_cold_1();
  }

  return ci_signpost_log_filter_log;
}

os_log_t __ci_signpost_log_filter_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_filter");
  ci_signpost_log_filter_log = result;
  return result;
}

uint64_t ci_signpost_log_kernel(uint64_t a1, uint64_t a2)
{
  if (ci_signpost_log_kernel_onceToken != -1)
  {
    ci_signpost_log_kernel_cold_1();
  }

  return ci_signpost_log_kernel_log;
}

os_log_t __ci_signpost_log_kernel_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_kernel");
  ci_signpost_log_kernel_log = result;
  return result;
}

uint64_t ci_signpost_log_dualredeye(uint64_t a1, uint64_t a2)
{
  if (ci_signpost_log_dualredeye_onceToken != -1)
  {
    ci_signpost_log_dualredeye_cold_1();
  }

  return ci_signpost_log_dualredeye_log;
}

os_log_t __ci_signpost_log_dualredeye_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_dualredeye");
  ci_signpost_log_dualredeye_log = result;
  return result;
}

CFTypeRef linearP3ColorSpace()
{
  if (linearP3ColorSpace::onceToken != -1)
  {
    linearP3ColorSpace_cold_1();
  }

  CGColorSpaceRetain(linearP3ColorSpace::cachedCS);
  v0 = linearP3ColorSpace::cachedCS;

  return CFAutorelease(v0);
}

CGColorSpaceRef __linearP3ColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F0]);
  linearP3ColorSpace::cachedCS = result;
  return result;
}

uint64_t SDOFV2MetalLibURL(uint64_t a1, uint64_t a2)
{
  if (SDOFV2MetalLibURL::onceToken != -1)
  {
    SDOFV2MetalLibURL_cold_1();
  }

  return SDOFV2MetalLibURL::url;
}

void *__SDOFV2MetalLibURL_block_invoke()
{
  result = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreImage"];
  if (result)
  {
    result = [result URLForResource:@"CIPortraitBlurStitchableV2" withExtension:@"metallib"];
    SDOFV2MetalLibURL::url = result;
  }

  return result;
}

void *__SDOFV3MetalLibURL_block_invoke()
{
  result = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreImage"];
  if (result)
  {
    v1 = result;
    if (CI_ENABLE_FUNCTION_STITCHING())
    {
      v2 = @"CIPortraitBlurStitchableV3";
    }

    else
    {
      v2 = @"CIPortraitBlurV3";
    }

    result = [v1 URLForResource:v2 withExtension:@"metallib"];
    SDOFV3MetalLibURL::url = result;
  }

  return result;
}

double shiftmapSize(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a2 * 0.5;
  if (a2 * 0.5 <= a4 * (a6 * 0.5 / a4))
  {
    v6 = a4 * (a6 * 0.5 / a4);
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 <= a4)
  {
    v6 = a4;
  }

  return v6 / (a2 / a1);
}

uint64_t useMetalImage(void *a1)
{
  if (useMetalImage::onceToken != -1)
  {
    useMetalImage_cold_1();
  }

  if (useMetalImage::useNativeImageAlways != 1)
  {
    return 0;
  }

  v2 = [a1 objectForKey:@"kContextInfoIsMetal"];

  return [v2 BOOLValue];
}

const char *__useMetalImage_block_invoke()
{
  result = getenv("CI_METAL_SDOF");
  if (result)
  {
    result = atoi(result);
    if (result)
    {
      useMetalImage::useNativeImageAlways = 1;
    }
  }

  return result;
}

void *SDOFBlurmapSmoothingParameterValue(NSString *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"BlurMapSmoothing"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Blurmapsmoothi.isa, a1);
  }
}

void *SDOFParameterValue(NSString *a1, NSString *a2)
{
  if (SDOFParameterValue(NSString *,NSString *)::onceToken != -1)
  {
    SDOFParameterValue();
  }

  if (SDOFParameterValue(NSString *,NSString *)::onceToken2 != -1)
  {
    SDOFParameterValue();
  }

  result = [SDOFParameterValue(NSString * NSString *):"objectForKeyedSubscript:" :a1sdofParameters];
  if (result)
  {
    v5 = [result objectForKey:a2];
    if (!v5)
    {
      if (-[NSString isEqualToString:](a1, "isEqualToString:", @"RenderingV3") && (v6 = [SDOFParameterValue(NSString * NSString *):"objectForKeyedSubscript:" :@"Rendering"sdofParameters]) != 0)
      {
        v5 = [v6 objectForKey:a2];
      }

      else
      {
        v5 = 0;
      }
    }

    if (SDOFParameterValue(NSString *,NSString *)::sdofParametersOnDevice)
    {
      v7 = [SDOFParameterValue(NSString * NSString *):"objectForKey:" :a1sdofParametersOnDevice];
      if (!v7 || (v8 = [v7 objectForKey:a2]) == 0 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v9 = v5;
        if (!v5)
        {
          if (-[NSString isEqualToString:](a1, "isEqualToString:", @"RenderingV3") && (v10 = [SDOFParameterValue(NSString * NSString *):"objectForKey:" :@"Rendering"sdofParametersOnDevice]) != 0 && (v11 = objc_msgSend(v10, "objectForKey:", a2)) != 0)
          {
            v12 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = v12;
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }
      }
    }

    else
    {
      v9 = v5;
    }

    return [v9 floatValue];
  }

  return result;
}

void *SDOFDisparitySmoothingParameterValue(NSString *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"DisparitySmoothing"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Disparitysmoot.isa, a1);
  }
}

void *SDOFDisparityRefinementParameterValue(NSString *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"DisparityRefinement"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Disparityrefin.isa, a1);
  }
}

void *SDOFRenderingValue(NSString *a1, void *a2)
{
  if (a2 && (v4 = [a2 objectForKey:@"Rendering"]) != 0 && (v5 = objc_msgSend(v4, "objectForKey:", a1)) != 0)
  {

    return [v5 floatValue];
  }

  else
  {
    if ([objc_msgSend(a2 objectForKeyedSubscript:{@"Version", "intValue"}] == 2)
    {
      v7 = @"RenderingV3";
    }

    else
    {
      v7 = @"Rendering";
    }

    return SDOFParameterValue(&v7->isa, a1);
  }
}

void *SDOFSimpleLensModelValue(void *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"SLM"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {
    result = [a1 isEqualToString:@"defaultSimulatedAperture"];
    if ((result & 1) == 0)
    {
      result = [a1 isEqualToString:@"disparityScalingFactor"];
      if ((result & 1) == 0)
      {

        return SDOFParameterValue(&cfstr_Slm.isa, a1);
      }
    }
  }

  return result;
}

void *SDOFFaceMaskValue(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"faces.%@", a1];
  if (a2 && [a2 objectForKey:@"Rendering"] && (v4 = objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"Rendering"), "objectForKey:", v3)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Rendering.isa, v3);
  }
}

void *SDOFHighlightRecoveryValue(NSString *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"HighlightRecovery"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Xhlrb.isa, a1);
  }
}

uint64_t SDOFFusionValue(NSString *a1, NSDictionary *a2)
{
  if (!a2 || (v3 = -[NSDictionary objectForKey:](a2, "objectForKey:", @"Fusion")) == 0 || (v4 = [v3 objectForKey:a1]) == 0)
  {
    v4 = [&unk_1F1082730 objectForKeyedSubscript:a1];
  }

  return [v4 floatValue];
}

CIVector *transformNormalizedMetalToCI(void *a1, unsigned int a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a1 count] >= 8)
  {
    v13 = xmmword_19CF2A7F0;
    v14 = unk_19CF2A800;
    v7 = 4;
  }

  else
  {
    v6 = [a1 count];
    v13 = xmmword_19CF2A7F0;
    v14 = unk_19CF2A800;
    if (v6 < 2)
    {
      return [CIVector vectorWithValues:&v13 count:4];
    }

    v7 = v6 >> 1;
  }

  v8 = 0;
  v9 = 1;
  do
  {
    [a1 valueAtIndex:{a2, v13, v14}];
    *(&v13 + v8) = v10 * a3;
    v8 = v9;
    a2 += 2;
  }

  while (v7 > v9++);
  return [CIVector vectorWithValues:&v13 count:4];
}

uint64_t SDOFBlurMapRefinementValue(NSString *a1, NSDictionary *a2)
{
  if (!a2 || (v3 = -[NSDictionary objectForKey:](a2, "objectForKey:", @"BlurMapRefinement")) == 0 || (v4 = [v3 objectForKey:a1]) == 0)
  {
    v4 = [&unk_1F1082758 objectForKeyedSubscript:a1];
  }

  return [v4 floatValue];
}

void sub_19CDF8BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRenderingParametersFromCGImageMetadata(const CGImageMetadata *a1)
{
  TypeID = CGImageMetadataGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  v3 = CGImageMetadataCopyTagWithPath(a1, 0, @"depthBlurEffect:RenderingParameters");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CGImageMetadataTagGetType(v3) == kCGImageMetadataTypeString)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:CGImageMetadataTagCopyValue(v4) options:0];
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);

  return v6;
}

CFTypeRef metadataFromValue(CFTypeRef cf)
{
  v1 = cf;
  if (!cf)
  {
    return v1;
  }

  v2 = CFGetTypeID(cf);
  if (CGImageMetadataGetTypeID() == v2)
  {
    return v1;
  }

  if (CFStringGetTypeID() != v2)
  {
    if (CFDataGetTypeID() == v2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ([v1 length] <= 1)
  {
    return 0;
  }

  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v1 length:{"UTF8String"), objc_msgSend(v1, "length")}];
  if (!v1)
  {
    return v1;
  }

LABEL_8:
  v3 = CGImageMetadataCreateFromXMPData(v1);
  if (!v3)
  {
    return 0;
  }

  return CFAutorelease(v3);
}

const CGImageMetadata *tuningParametersFromMetaData(const CGImageMetadata *a1)
{
  v548 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return a1;
  }

  v3 = CGImageMetadataCopyTagWithPath(a1, 0, @"depthBlurEffect:RenderingParameters");
  if (!v3)
  {
    return &unk_1F1082780;
  }

  v4 = v3;
  if (CGImageMetadataTagGetType(v3) != kCGImageMetadataTypeString || (v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:CGImageMetadataTagCopyValue(v4) options:0], objc_msgSend(v5, "length") <= 0xB))
  {
    CFRelease(v4);
    return &unk_1F1082780;
  }

  [v5 getBytes:&v356 length:12];
  v7 = HIDWORD(v356);
  v207 = 1;
  v8 = +[CIFilter maxSDOFRenderingVersionSupported];
  if (v8 < 4)
  {
    goto LABEL_15;
  }

  if (v7 > v8)
  {
    v10 = ci_logger_api(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      tuningParametersFromMetaData(v7, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = 1;
    goto LABEL_22;
  }

  if (v7 <= 3)
  {
LABEL_15:
    switch(v7)
    {
      case 3:
        v18 = FigDepthBlurEffectRenderingParametersV3FromCFData(v5, &v208);
        break;
      case 2:
        v18 = FigDepthBlurEffectRenderingParametersV2FromCFData(v5, &v208, &v207);
        break;
      case 1:
        v18 = FigDepthBlurEffectRenderingParametersV1FromCFData(v5, &v208);
        break;
      default:
        v33 = ci_logger_api(v8, v9);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          tuningParametersFromMetaData(v7, v33, v34, v35, v36, v37, v38, v39);
        }

        CFRelease(v4);
        if (v7 < 1)
        {
          return &unk_1F1082780;
        }

        v19 = 1;
        goto LABEL_23;
    }

    v17 = v18;
  }

  else
  {
    v17 = 0;
  }

LABEL_22:
  CFRelease(v4);
  v19 = v17 != 0;
LABEL_23:
  v20 = +[CIFilter maxSDOFRenderingVersionSupported];
  a1 = &unk_1F1082780;
  if (!v19 && v7 <= v20)
  {
    switch(v7)
    {
      case 3:
        v105 = v207;
        v532 = @"BlurMapSmoothing";
        v530[0] = @"nIterations";
        v531[0] = [MEMORY[0x1E696AD98] numberWithInt:v244];
        v530[1] = @"originalBlurValueT0";
        LODWORD(v106) = v268;
        v531[1] = [MEMORY[0x1E696AD98] numberWithFloat:v106];
        v530[2] = @"originalBlurValueT1";
        LODWORD(v107) = v269;
        v531[2] = [MEMORY[0x1E696AD98] numberWithFloat:v107];
        v530[3] = @"localMinimumBlurValueT0";
        LODWORD(v108) = v270;
        v531[3] = [MEMORY[0x1E696AD98] numberWithFloat:v108];
        v530[4] = @"localMinimumBlurValueT1";
        LODWORD(v109) = v271;
        v531[4] = [MEMORY[0x1E696AD98] numberWithFloat:v109];
        v540 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v531 forKeys:v530 count:5];
        v533 = @"DisparityRefinement";
        v496 = @"radius";
        v513 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v208)];
        v497 = @"weightScaling";
        v110 = v233;
        if (!v105)
        {
          v110 = 0.2;
        }

        v514 = [MEMORY[0x1E696AD98] numberWithDouble:v110];
        v498 = @"maxReconstructionWeight";
        v111 = v234;
        if (!v105)
        {
          v111 = 0.1;
        }

        v515 = [MEMORY[0x1E696AD98] numberWithDouble:v111];
        v499 = @"innerSamplingRadius";
        v112 = v235;
        if (!v105)
        {
          v112 = 0.5;
        }

        v516 = [MEMORY[0x1E696AD98] numberWithDouble:v112];
        v500 = @"outerSamplingRadius";
        v113 = v236;
        if (!v105)
        {
          v113 = 2.5;
        }

        v517 = [MEMORY[0x1E696AD98] numberWithDouble:v113];
        v501 = @"nSamples";
        if (v105)
        {
          v114 = v237;
        }

        else
        {
          v114 = 20;
        }

        v518 = [MEMORY[0x1E696AD98] numberWithInt:v114];
        v502 = @"lumaSigma";
        v115 = v238;
        if (!v105)
        {
          v115 = 0.05;
        }

        v519 = [MEMORY[0x1E696AD98] numberWithDouble:v115];
        v503 = @"chromaSigma";
        v116 = v239;
        if (!v105)
        {
          v116 = 0.02;
        }

        v520 = [MEMORY[0x1E696AD98] numberWithDouble:v116];
        v504 = @"disparitySigma";
        v117 = v209;
        if (!v105)
        {
          v117 = 0.03;
        }

        v521 = [MEMORY[0x1E696AD98] numberWithDouble:v117];
        v505 = @"accumulatedWeightT0";
        v118 = v240;
        if (!v105)
        {
          v118 = 0.01;
        }

        v522 = [MEMORY[0x1E696AD98] numberWithDouble:v118];
        v506 = @"accumulatedWeightT1";
        v119 = v241;
        if (!v105)
        {
          v119 = 0.1;
        }

        v523 = [MEMORY[0x1E696AD98] numberWithDouble:v119];
        v507 = @"aaLumaSigma";
        LODWORD(v120) = v210;
        v524 = [MEMORY[0x1E696AD98] numberWithFloat:v120];
        v508 = @"aaChromaSigma";
        LODWORD(v121) = v211;
        v525 = [MEMORY[0x1E696AD98] numberWithFloat:v121];
        v509 = @"aaSpatialSigma";
        LODWORD(v122) = v212;
        v526 = [MEMORY[0x1E696AD98] numberWithFloat:v122];
        v510 = @"segmentationSigma";
        LODWORD(v123) = v273;
        if (!v105)
        {
          *&v123 = 1000.0;
        }

        v527 = [MEMORY[0x1E696AD98] numberWithFloat:v123];
        v511 = @"aaSegmentationSigma";
        v124 = v274;
        if (!v105)
        {
          v124 = 1.4;
        }

        v528 = [MEMORY[0x1E696AD98] numberWithDouble:v124];
        v512 = @"Version";
        if (v105)
        {
          v125 = v275;
        }

        else
        {
          v125 = 0;
        }

        v529 = [MEMORY[0x1E696AD98] numberWithInt:v125];
        v541 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v513 forKeys:&v496 count:17];
        v534 = @"SLM";
        v484 = @"shiftDeadZone";
        LODWORD(v126) = v213;
        v490 = [MEMORY[0x1E696AD98] numberWithFloat:v126];
        v485 = @"zeroShiftPercentile";
        v127 = v242;
        if (!v105)
        {
          v127 = 0.75;
        }

        v491 = [MEMORY[0x1E696AD98] numberWithDouble:v127];
        v486 = @"maxFGBlur";
        v128 = v243;
        if (!v105)
        {
          v128 = 0.0002;
        }

        v492 = [MEMORY[0x1E696AD98] numberWithDouble:v128];
        v487 = @"maximumSimulatedAperture";
        v129 = v272;
        if (!v105)
        {
          v129 = 0.0;
        }

        v493 = [MEMORY[0x1E696AD98] numberWithDouble:v129];
        v488 = @"defaultSimulatedAperture";
        v130 = v276;
        if (!v105)
        {
          v130 = 0.0;
        }

        v494 = [MEMORY[0x1E696AD98] numberWithDouble:v130];
        v489 = @"disparityScalingFactor";
        v131 = v277;
        if (!v105)
        {
          v131 = 0.0;
        }

        v495 = [MEMORY[0x1E696AD98] numberWithDouble:v131];
        v542 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v490 forKeys:&v484 count:6];
        v535 = @"HighlightRecovery";
        v462 = @"iterations";
        v473 = [MEMORY[0x1E696AD98] numberWithInt:v218];
        v463 = @"preFilterGain";
        LODWORD(v132) = v219;
        v474 = [MEMORY[0x1E696AD98] numberWithFloat:v132];
        v464 = @"weightGain";
        LODWORD(v133) = v220;
        v475 = [MEMORY[0x1E696AD98] numberWithFloat:v133];
        v465 = @"intensityGain";
        LODWORD(v134) = v221;
        v476 = [MEMORY[0x1E696AD98] numberWithFloat:v134];
        v466 = @"mode";
        v477 = &unk_1F10823A0;
        v467 = @"blurRadiusT0";
        v135 = v252;
        if (!v105)
        {
          v135 = 0.0025;
        }

        v478 = [MEMORY[0x1E696AD98] numberWithDouble:v135];
        v468 = @"blurRadiusT1";
        v136 = v253;
        if (!v105)
        {
          v136 = 0.0075;
        }

        v479 = [MEMORY[0x1E696AD98] numberWithDouble:v136];
        v469 = @"maxIntensityT0";
        v137 = v254;
        if (!v105)
        {
          v137 = 0.9;
        }

        v480 = [MEMORY[0x1E696AD98] numberWithDouble:v137];
        v470 = @"maxIntensityT1";
        v138 = v255;
        if (!v105)
        {
          v138 = 1.0;
        }

        v481 = [MEMORY[0x1E696AD98] numberWithDouble:v138];
        v471 = @"minIntensityT0";
        v139 = v256;
        if (!v105)
        {
          v139 = 0.0;
        }

        v482 = [MEMORY[0x1E696AD98] numberWithDouble:v139];
        v472 = @"minIntensityT1";
        v140 = v257;
        if (!v105)
        {
          v140 = 0.2;
        }

        v483 = [MEMORY[0x1E696AD98] numberWithDouble:v140];
        v543 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v473 forKeys:&v462 count:11];
        v536 = @"Rendering";
        v406 = @"faces.linearBlurGrowthC";
        LODWORD(v141) = v215;
        v434 = [MEMORY[0x1E696AD98] numberWithFloat:v141];
        v407 = @"faces.linearBlurGrowthM";
        LODWORD(v142) = v214;
        v435 = [MEMORY[0x1E696AD98] numberWithFloat:v142];
        v408 = @"faces.distToBlurScaling";
        LODWORD(v143) = v216;
        v436 = [MEMORY[0x1E696AD98] numberWithFloat:v143];
        v409 = @"faces.eyeToEyebrowRatio";
        LODWORD(v144) = v217;
        v437 = [MEMORY[0x1E696AD98] numberWithFloat:v144];
        v410 = @"faces.maxBlurOnEyes";
        LODWORD(v145) = v258;
        v438 = [MEMORY[0x1E696AD98] numberWithFloat:v145];
        v411 = @"faces.maxBlurDistFromFocus";
        LODWORD(v146) = v259;
        v439 = [MEMORY[0x1E696AD98] numberWithFloat:v146];
        v412 = @"faces.capMultip";
        LODWORD(v147) = v260;
        v440 = [MEMORY[0x1E696AD98] numberWithFloat:v147];
        v413 = @"faces.gainMultip";
        LODWORD(v148) = v261;
        v441 = [MEMORY[0x1E696AD98] numberWithFloat:v148];
        v414 = @"lumaNoiseModelCoeff";
        LODWORD(v149) = v248;
        v442 = [MEMORY[0x1E696AD98] numberWithFloat:v149];
        v415 = @"relativeWeightThreshold";
        LODWORD(v150) = v223;
        v443 = [MEMORY[0x1E696AD98] numberWithFloat:v150];
        v416 = @"highlightBoostGain";
        LODWORD(v151) = v224;
        v444 = [MEMORY[0x1E696AD98] numberWithFloat:v151];
        v417 = @"shapeObstructionCoeff";
        LODWORD(v152) = v225;
        v445 = [MEMORY[0x1E696AD98] numberWithFloat:v152];
        v418 = @"ringAmplitude";
        LODWORD(v153) = v226;
        v446 = [MEMORY[0x1E696AD98] numberWithFloat:v153];
        v419 = @"ringSharpness";
        LODWORD(v154) = v227;
        v447 = [MEMORY[0x1E696AD98] numberWithFloat:v154];
        v420 = @"antiAliasBlurStrength";
        LODWORD(v155) = v229;
        v448 = [MEMORY[0x1E696AD98] numberWithFloat:v155];
        v421 = @"minimumSimulatedAperture";
        LODWORD(v156) = v230;
        v449 = [MEMORY[0x1E696AD98] numberWithFloat:v156];
        v422 = @"antiAliasRadius";
        v450 = [MEMORY[0x1E696AD98] numberWithInt:v249];
        v423 = @"alphaEpsilon";
        LODWORD(v157) = v250;
        v451 = [MEMORY[0x1E696AD98] numberWithFloat:v157];
        v424 = @"alphaGain";
        LODWORD(v158) = v251;
        v452 = [MEMORY[0x1E696AD98] numberWithFloat:v158];
        v425 = @"maxBlur";
        v453 = &unk_1F1085198;
        v426 = @"nRings";
        v454 = [MEMORY[0x1E696AD98] numberWithInt:v222];
        v427 = @"preFilterBlurStrength";
        LODWORD(v159) = v228;
        v455 = [MEMORY[0x1E696AD98] numberWithFloat:v159];
        v428 = @"preFilterRadius";
        v456 = [MEMORY[0x1E696AD98] numberWithInt:v245];
        v429 = @"sharpRadius";
        LODWORD(v160) = v246;
        v457 = [MEMORY[0x1E696AD98] numberWithFloat:v160];
        v430 = @"softRadius";
        v161 = v247;
        if (!v105)
        {
          v161 = 1.0;
        }

        v458 = [MEMORY[0x1E696AD98] numberWithDouble:v161];
        v431 = @"basePixelWeight";
        v459 = &unk_1F10851A8;
        v432 = @"blendingQuarterResAlphaGain";
        v162 = v231;
        if (!v105)
        {
          v162 = 1.0;
        }

        v460 = [MEMORY[0x1E696AD98] numberWithDouble:v162];
        v433 = @"blendingFullResAlphaGain";
        v163 = v232;
        if (!v105)
        {
          v163 = 1.0;
        }

        v461 = [MEMORY[0x1E696AD98] numberWithDouble:v163];
        v544 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v434 forKeys:&v406 count:28];
        v537 = @"Fusion";
        v394 = @"subtractiveLowerAlpha";
        LODWORD(v164) = v262;
        if (!v105)
        {
          *&v164 = 0.8;
        }

        v400 = [MEMORY[0x1E696AD98] numberWithFloat:v164];
        v395 = @"subtractiveUpperAlpha";
        LODWORD(v165) = v263;
        if (!v105)
        {
          *&v165 = 1.0;
        }

        v401 = [MEMORY[0x1E696AD98] numberWithFloat:v165];
        v396 = @"subtractiveMaxBlur";
        v166 = v264;
        if (!v105)
        {
          v166 = 0.0;
        }

        v402 = [MEMORY[0x1E696AD98] numberWithDouble:v166];
        v397 = @"additiveLowerAlpha";
        LODWORD(v167) = v265;
        if (!v105)
        {
          *&v167 = 0.0;
        }

        v403 = [MEMORY[0x1E696AD98] numberWithFloat:v167];
        v398 = @"additiveUpperAlpha";
        LODWORD(v168) = v266;
        if (!v105)
        {
          *&v168 = 0.2;
        }

        v404 = [MEMORY[0x1E696AD98] numberWithFloat:v168];
        v399 = @"additiveMaxBlur";
        v169 = v267;
        if (!v105)
        {
          v169 = 0.0;
        }

        v405 = [MEMORY[0x1E696AD98] numberWithDouble:v169];
        v545 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v400 forKeys:&v394 count:6];
        v538 = @"BlurMapRefinement";
        v318 = @"minimumFocusDistance";
        LODWORD(v170) = v278;
        v356 = [MEMORY[0x1E696AD98] numberWithFloat:v170];
        v319 = @"maximumFocusDistance";
        LODWORD(v171) = v279;
        v357 = [MEMORY[0x1E696AD98] numberWithFloat:v171];
        v320 = @"subjectDistanceScalingFactor";
        LODWORD(v172) = v280;
        v358 = [MEMORY[0x1E696AD98] numberWithFloat:v172];
        v321 = @"subjectDistanceOffset";
        LODWORD(v173) = v281;
        v359 = [MEMORY[0x1E696AD98] numberWithFloat:v173];
        v322 = @"relativeApertureScalingStrength";
        LODWORD(v174) = v301;
        v360 = [MEMORY[0x1E696AD98] numberWithFloat:v174];
        v323 = @"protectBodyStrength";
        LODWORD(v175) = v282;
        v361 = [MEMORY[0x1E696AD98] numberWithFloat:v175];
        v324 = @"distanceAdd";
        LODWORD(v176) = v286;
        v362 = [MEMORY[0x1E696AD98] numberWithFloat:v176];
        v325 = @"hairAdditiveLowerAlpha";
        LODWORD(v177) = v297;
        v363 = [MEMORY[0x1E696AD98] numberWithFloat:v177];
        v326 = @"hairAdditiveUpperAlpha";
        LODWORD(v178) = v298;
        v364 = [MEMORY[0x1E696AD98] numberWithFloat:v178];
        v327 = @"hairAdditiveMaxBlur";
        LODWORD(v179) = v299;
        v365 = [MEMORY[0x1E696AD98] numberWithFloat:v179];
        v328 = @"hairSubtractiveLowerAlpha";
        LODWORD(v180) = v295;
        v366 = [MEMORY[0x1E696AD98] numberWithFloat:v180];
        v329 = @"hairSubtractiveUpperAlpha";
        LODWORD(v181) = v296;
        v367 = [MEMORY[0x1E696AD98] numberWithFloat:v181];
        v330 = @"hairSubtractiveMaxBlur";
        LODWORD(v182) = v300;
        v368 = [MEMORY[0x1E696AD98] numberWithFloat:v182];
        v331 = @"faceMaskAdditiveMaxBlur";
        LODWORD(v183) = v287;
        v369 = [MEMORY[0x1E696AD98] numberWithFloat:v183];
        v332 = @"faceMaskSubtractiveMaxBlur";
        LODWORD(v184) = v288;
        v370 = [MEMORY[0x1E696AD98] numberWithFloat:v184];
        v333 = @"smoothstepMin";
        LODWORD(v185) = v284;
        v371 = [MEMORY[0x1E696AD98] numberWithFloat:v185];
        v334 = @"smoothstepMax";
        LODWORD(v186) = v285;
        v372 = [MEMORY[0x1E696AD98] numberWithFloat:v186];
        v335 = @"maxBlur";
        LODWORD(v187) = v283;
        v373 = [MEMORY[0x1E696AD98] numberWithFloat:v187];
        v336 = @"personDistance";
        LODWORD(v188) = v289;
        v374 = [MEMORY[0x1E696AD98] numberWithFloat:v188];
        v337 = @"personThreshold";
        LODWORD(v189) = v290;
        v375 = [MEMORY[0x1E696AD98] numberWithFloat:v189];
        v338 = @"personMaxBlur";
        LODWORD(v190) = v291;
        v376 = [MEMORY[0x1E696AD98] numberWithFloat:v190];
        v339 = @"hairDistance";
        LODWORD(v191) = v292;
        v377 = [MEMORY[0x1E696AD98] numberWithFloat:v191];
        v340 = @"hairThreshold";
        LODWORD(v192) = v293;
        v378 = [MEMORY[0x1E696AD98] numberWithFloat:v192];
        v341 = @"hairMaxBlur";
        LODWORD(v193) = v294;
        v379 = [MEMORY[0x1E696AD98] numberWithFloat:v193];
        v342 = @"eyeProtectionMaxFaces";
        v380 = [MEMORY[0x1E696AD98] numberWithInt:v302];
        v343 = @"eyeProtectionFaceWeightsSmoothStepMin";
        LODWORD(v194) = v303;
        v381 = [MEMORY[0x1E696AD98] numberWithFloat:v194];
        v344 = @"eyeProtectionFaceWeightsSmoothStepMax";
        LODWORD(v195) = v304;
        v382 = [MEMORY[0x1E696AD98] numberWithFloat:v195];
        v345 = @"eyeProtectionOvalDimsDistanceScale";
        LODWORD(v196) = v305;
        v383 = [MEMORY[0x1E696AD98] numberWithFloat:v196];
        v346 = @"eyeProtectionOvalDimsDistanceOffset";
        LODWORD(v197) = v306;
        v384 = [MEMORY[0x1E696AD98] numberWithFloat:v197];
        v347 = @"eyeProtectionOvalDimsRadiusHorizontal";
        LODWORD(v198) = v307;
        v385 = [MEMORY[0x1E696AD98] numberWithFloat:v198];
        v348 = @"eyeProtectionOvalDimsRadiusVertical";
        LODWORD(v199) = v308;
        v386 = [MEMORY[0x1E696AD98] numberWithFloat:v199];
        v349 = @"eyeProtectionOvalFallOffSmoothStepMin";
        LODWORD(v200) = v309;
        v387 = [MEMORY[0x1E696AD98] numberWithFloat:v200];
        v350 = @"eyeProtectionOvalFallOffSmoothStepMax";
        LODWORD(v201) = v310;
        v388 = [MEMORY[0x1E696AD98] numberWithFloat:v201];
        v351 = @"eyeProtectionPersonMaskSmoothStepMin";
        LODWORD(v202) = v311;
        v389 = [MEMORY[0x1E696AD98] numberWithFloat:v202];
        v352 = @"eyeProtectionPersonMaskSmoothStepMax";
        LODWORD(v203) = v312;
        v390 = [MEMORY[0x1E696AD98] numberWithFloat:v203];
        v353 = @"eyeProtectionPreventStrength";
        LODWORD(v204) = v313;
        v391 = [MEMORY[0x1E696AD98] numberWithFloat:v204];
        v354 = @"eyeProtectionSubtractiveMaxBlur";
        LODWORD(v205) = v314;
        v392 = [MEMORY[0x1E696AD98] numberWithFloat:v205];
        v355 = @"eyeProtectionSubtractiveApertureScaling";
        LODWORD(v206) = v315;
        v393 = [MEMORY[0x1E696AD98] numberWithFloat:v206];
        v546 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v318 count:38];
        v539 = @"Version";
        v547 = &unk_1F1082430;
        v29 = MEMORY[0x1E695DF20];
        v30 = &v540;
        v31 = &v532;
        v32 = 8;
        break;
      case 2:
        v40 = v207;
        v462 = @"BlurMapSmoothing";
        v394 = @"nIterations";
        v400 = [MEMORY[0x1E696AD98] numberWithInt:v244];
        v395 = @"originalBlurValueT0";
        LODWORD(v41) = v268;
        v401 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
        v396 = @"originalBlurValueT1";
        LODWORD(v42) = v269;
        v402 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
        v397 = @"localMinimumBlurValueT0";
        LODWORD(v43) = v270;
        v403 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
        v398 = @"localMinimumBlurValueT1";
        LODWORD(v44) = v271;
        v404 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
        v473 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v400 forKeys:&v394 count:5];
        v463 = @"DisparityRefinement";
        v406 = @"radius";
        v434 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v208)];
        v407 = @"weightScaling";
        v45 = v233;
        if (!v40)
        {
          v45 = 0.2;
        }

        v435 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
        v408 = @"maxReconstructionWeight";
        v46 = v234;
        if (!v40)
        {
          v46 = 0.1;
        }

        v436 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
        v409 = @"innerSamplingRadius";
        v47 = v235;
        if (!v40)
        {
          v47 = 0.5;
        }

        v437 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
        v410 = @"outerSamplingRadius";
        v48 = v236;
        if (!v40)
        {
          v48 = 2.5;
        }

        v438 = [MEMORY[0x1E696AD98] numberWithDouble:v48];
        v411 = @"nSamples";
        if (v40)
        {
          v49 = v237;
        }

        else
        {
          v49 = 20;
        }

        v439 = [MEMORY[0x1E696AD98] numberWithInt:v49];
        v412 = @"lumaSigma";
        v50 = v238;
        if (!v40)
        {
          v50 = 0.05;
        }

        v440 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
        v413 = @"chromaSigma";
        v51 = v239;
        if (!v40)
        {
          v51 = 0.02;
        }

        v441 = [MEMORY[0x1E696AD98] numberWithDouble:v51];
        v414 = @"disparitySigma";
        v52 = v209;
        if (!v40)
        {
          v52 = 0.03;
        }

        v442 = [MEMORY[0x1E696AD98] numberWithDouble:v52];
        v415 = @"accumulatedWeightT0";
        v53 = v240;
        if (!v40)
        {
          v53 = 0.01;
        }

        v443 = [MEMORY[0x1E696AD98] numberWithDouble:v53];
        v416 = @"accumulatedWeightT1";
        v54 = v241;
        if (!v40)
        {
          v54 = 0.1;
        }

        v444 = [MEMORY[0x1E696AD98] numberWithDouble:v54];
        v417 = @"aaLumaSigma";
        LODWORD(v55) = v210;
        v445 = [MEMORY[0x1E696AD98] numberWithFloat:v55];
        v418 = @"aaChromaSigma";
        LODWORD(v56) = v211;
        v446 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
        v419 = @"aaSpatialSigma";
        LODWORD(v57) = v212;
        v447 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
        v420 = @"segmentationSigma";
        LODWORD(v58) = v273;
        if (!v40)
        {
          *&v58 = 1000.0;
        }

        v448 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
        v421 = @"aaSegmentationSigma";
        v59 = v274;
        if (!v40)
        {
          v59 = 1.4;
        }

        v449 = [MEMORY[0x1E696AD98] numberWithDouble:v59];
        v422 = @"Version";
        if (v40)
        {
          v60 = v275;
        }

        else
        {
          v60 = 0;
        }

        v450 = [MEMORY[0x1E696AD98] numberWithInt:v60];
        v474 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v434 forKeys:&v406 count:17];
        v464 = @"SLM";
        v532 = @"shiftDeadZone";
        LODWORD(v61) = v213;
        v540 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
        v533 = @"zeroShiftPercentile";
        v62 = v242;
        if (!v40)
        {
          v62 = 0.75;
        }

        v541 = [MEMORY[0x1E696AD98] numberWithDouble:v62];
        v534 = @"maxFGBlur";
        v63 = v243;
        if (!v40)
        {
          v63 = 0.0002;
        }

        v542 = [MEMORY[0x1E696AD98] numberWithDouble:v63];
        v535 = @"maximumSimulatedAperture";
        v64 = v272;
        if (!v40)
        {
          v64 = 0.0;
        }

        v543 = [MEMORY[0x1E696AD98] numberWithDouble:v64];
        v536 = @"defaultSimulatedAperture";
        v65 = v276;
        if (!v40)
        {
          v65 = 0.0;
        }

        v544 = [MEMORY[0x1E696AD98] numberWithDouble:v65];
        v537 = @"disparityScalingFactor";
        v66 = v277;
        if (!v40)
        {
          v66 = 0.0;
        }

        v545 = [MEMORY[0x1E696AD98] numberWithDouble:v66];
        v475 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v540 forKeys:&v532 count:6];
        v465 = @"HighlightRecovery";
        v496 = @"iterations";
        v513 = [MEMORY[0x1E696AD98] numberWithInt:v218];
        v497 = @"preFilterGain";
        LODWORD(v67) = v219;
        v514 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
        v498 = @"weightGain";
        LODWORD(v68) = v220;
        v515 = [MEMORY[0x1E696AD98] numberWithFloat:v68];
        v499 = @"intensityGain";
        LODWORD(v69) = v221;
        v516 = [MEMORY[0x1E696AD98] numberWithFloat:v69];
        v500 = @"mode";
        v517 = &unk_1F10823A0;
        v501 = @"blurRadiusT0";
        v70 = v252;
        if (!v40)
        {
          v70 = 0.0025;
        }

        v518 = [MEMORY[0x1E696AD98] numberWithDouble:v70];
        v502 = @"blurRadiusT1";
        v71 = v253;
        if (!v40)
        {
          v71 = 0.0075;
        }

        v519 = [MEMORY[0x1E696AD98] numberWithDouble:v71];
        v503 = @"maxIntensityT0";
        v72 = v254;
        if (!v40)
        {
          v72 = 0.9;
        }

        v520 = [MEMORY[0x1E696AD98] numberWithDouble:v72];
        v504 = @"maxIntensityT1";
        v73 = v255;
        if (!v40)
        {
          v73 = 1.0;
        }

        v521 = [MEMORY[0x1E696AD98] numberWithDouble:v73];
        v505 = @"minIntensityT0";
        v74 = v256;
        if (!v40)
        {
          v74 = 0.0;
        }

        v522 = [MEMORY[0x1E696AD98] numberWithDouble:v74];
        v506 = @"minIntensityT1";
        v75 = v257;
        if (!v40)
        {
          v75 = 0.2;
        }

        v523 = [MEMORY[0x1E696AD98] numberWithDouble:v75];
        v476 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v513 forKeys:&v496 count:11];
        v466 = @"Rendering";
        v318 = @"faces.linearBlurGrowthC";
        LODWORD(v76) = v215;
        v356 = [MEMORY[0x1E696AD98] numberWithFloat:v76];
        v319 = @"faces.linearBlurGrowthM";
        LODWORD(v77) = v214;
        v357 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
        v320 = @"faces.distToBlurScaling";
        LODWORD(v78) = v216;
        v358 = [MEMORY[0x1E696AD98] numberWithFloat:v78];
        v321 = @"faces.eyeToEyebrowRatio";
        LODWORD(v79) = v217;
        v359 = [MEMORY[0x1E696AD98] numberWithFloat:v79];
        v322 = @"faces.maxBlurOnEyes";
        LODWORD(v80) = v258;
        v360 = [MEMORY[0x1E696AD98] numberWithFloat:v80];
        v323 = @"faces.maxBlurDistFromFocus";
        LODWORD(v81) = v259;
        v361 = [MEMORY[0x1E696AD98] numberWithFloat:v81];
        v324 = @"faces.capMultip";
        LODWORD(v82) = v260;
        v362 = [MEMORY[0x1E696AD98] numberWithFloat:v82];
        v325 = @"faces.gainMultip";
        LODWORD(v83) = v261;
        v363 = [MEMORY[0x1E696AD98] numberWithFloat:v83];
        v326 = @"lumaNoiseModelCoeff";
        LODWORD(v84) = v248;
        v364 = [MEMORY[0x1E696AD98] numberWithFloat:v84];
        v327 = @"relativeWeightThreshold";
        LODWORD(v85) = v223;
        v365 = [MEMORY[0x1E696AD98] numberWithFloat:v85];
        v328 = @"highlightBoostGain";
        LODWORD(v86) = v224;
        v366 = [MEMORY[0x1E696AD98] numberWithFloat:v86];
        v329 = @"shapeObstructionCoeff";
        LODWORD(v87) = v225;
        v367 = [MEMORY[0x1E696AD98] numberWithFloat:v87];
        v330 = @"ringAmplitude";
        LODWORD(v88) = v226;
        v368 = [MEMORY[0x1E696AD98] numberWithFloat:v88];
        v331 = @"ringSharpness";
        LODWORD(v89) = v227;
        v369 = [MEMORY[0x1E696AD98] numberWithFloat:v89];
        v332 = @"antiAliasBlurStrength";
        LODWORD(v90) = v229;
        v370 = [MEMORY[0x1E696AD98] numberWithFloat:v90];
        v333 = @"minimumSimulatedAperture";
        LODWORD(v91) = v230;
        v371 = [MEMORY[0x1E696AD98] numberWithFloat:v91];
        v334 = @"antiAliasRadius";
        v372 = [MEMORY[0x1E696AD98] numberWithInt:v249];
        v335 = @"alphaEpsilon";
        LODWORD(v92) = v250;
        v373 = [MEMORY[0x1E696AD98] numberWithFloat:v92];
        v336 = @"alphaGain";
        LODWORD(v93) = v251;
        v374 = [MEMORY[0x1E696AD98] numberWithFloat:v93];
        v337 = @"maxBlur";
        v375 = &unk_1F1085198;
        v338 = @"nRings";
        v376 = [MEMORY[0x1E696AD98] numberWithInt:v222];
        v339 = @"preFilterBlurStrength";
        LODWORD(v94) = v228;
        v377 = [MEMORY[0x1E696AD98] numberWithFloat:v94];
        v340 = @"preFilterRadius";
        v378 = [MEMORY[0x1E696AD98] numberWithInt:v245];
        v341 = @"sharpRadius";
        LODWORD(v95) = v246;
        v379 = [MEMORY[0x1E696AD98] numberWithFloat:v95];
        v342 = @"softRadius";
        v96 = v247;
        if (!v40)
        {
          v96 = 1.0;
        }

        v380 = [MEMORY[0x1E696AD98] numberWithDouble:v96];
        v343 = @"basePixelWeight";
        v381 = &unk_1F10851A8;
        v344 = @"blendingQuarterResAlphaGain";
        v97 = v231;
        if (!v40)
        {
          v97 = 1.0;
        }

        v382 = [MEMORY[0x1E696AD98] numberWithDouble:v97];
        v345 = @"blendingFullResAlphaGain";
        v98 = v232;
        if (!v40)
        {
          v98 = 1.0;
        }

        v383 = [MEMORY[0x1E696AD98] numberWithDouble:v98];
        v477 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v318 count:28];
        v467 = @"Fusion";
        v484 = @"subtractiveLowerAlpha";
        LODWORD(v99) = v262;
        if (!v40)
        {
          *&v99 = 0.8;
        }

        v490 = [MEMORY[0x1E696AD98] numberWithFloat:v99];
        v485 = @"subtractiveUpperAlpha";
        LODWORD(v100) = v263;
        if (!v40)
        {
          *&v100 = 1.0;
        }

        v491 = [MEMORY[0x1E696AD98] numberWithFloat:v100];
        v486 = @"subtractiveMaxBlur";
        v101 = v264;
        if (!v40)
        {
          v101 = 0.0;
        }

        v492 = [MEMORY[0x1E696AD98] numberWithDouble:v101];
        v487 = @"additiveLowerAlpha";
        LODWORD(v102) = v265;
        if (!v40)
        {
          *&v102 = 0.0;
        }

        v493 = [MEMORY[0x1E696AD98] numberWithFloat:v102];
        v488 = @"additiveUpperAlpha";
        LODWORD(v103) = v266;
        if (!v40)
        {
          *&v103 = 0.2;
        }

        v494 = [MEMORY[0x1E696AD98] numberWithFloat:v103];
        v489 = @"additiveMaxBlur";
        v104 = v267;
        if (!v40)
        {
          v104 = 0.0;
        }

        v495 = [MEMORY[0x1E696AD98] numberWithDouble:v104];
        v478 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v490 forKeys:&v484 count:6];
        v468 = @"Version";
        v479 = &unk_1F10823B8;
        v29 = MEMORY[0x1E695DF20];
        v30 = &v473;
        v31 = &v462;
        v32 = 7;
        break;
      case 1:
        v406 = @"DisparitySmoothing";
        v462 = @"nIterations";
        v473 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v208)];
        v434 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v473 forKeys:&v462 count:1];
        v407 = @"SLM";
        v496 = @"shiftDeadZone";
        *&v21 = v209;
        v513 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
        v497 = @"maximumSimulatedAperture";
        v514 = &unk_1F1085138;
        v498 = @"defaultSimulatedAperture";
        v515 = &unk_1F1085138;
        v435 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v513 forKeys:&v496 count:3];
        v408 = @"Rendering";
        v318 = @"faces.linearBlurGrowthC";
        LODWORD(v22) = v211;
        v356 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
        v319 = @"faces.linearBlurGrowthM";
        LODWORD(v23) = v210;
        v357 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
        v320 = @"faces.distToBlurScaling";
        LODWORD(v24) = v212;
        v358 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
        v321 = @"faces.eyeToEyebrowRatio";
        LODWORD(v25) = v213;
        v359 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        v322 = @"relativeWeightThreshold";
        LODWORD(v26) = v214;
        v360 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
        v323 = @"highlightBoostGain";
        LODWORD(v27) = v215;
        v361 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
        v324 = @"antiAliasBlurStrength";
        LODWORD(v28) = v216;
        v362 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
        v436 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v356 forKeys:&v318 count:7];
        v409 = @"Version";
        v437 = &unk_1F10823E8;
        v29 = MEMORY[0x1E695DF20];
        v30 = &v434;
        v31 = &v406;
        v32 = 4;
        break;
      default:
        v316 = @"Version";
        v317 = [MEMORY[0x1E696AD98] numberWithInt:v7];
        v29 = MEMORY[0x1E695DF20];
        v30 = &v317;
        v31 = &v316;
        v32 = 1;
        break;
    }

    return [v29 dictionaryWithObjects:v30 forKeys:v31 count:v32];
  }

  return a1;
}

const CGImageMetadata *tuningParametersFromImage(CIImage *a1)
{
  if (!a1)
  {
    return MEMORY[0x1E695E0F8];
  }

  if (![(CIImage *)a1 properties])
  {
    return MEMORY[0x1E695E0F8];
  }

  v2 = [(CIImage *)a1 properties];
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
  if (!v3)
  {
    return MEMORY[0x1E695E0F8];
  }

  return tuningParametersFromMetaData(v3);
}

void getSimulatedAperture(CIImage *a1, const CGImageMetadata *a2, NSNumber *a3, NSDictionary *a4)
{
  [(NSNumber *)a3 floatValue];
  if (*&v7 != 0.0)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    getSimulatedApertureFromAuxMetadata(a2);
    v8 = *&v7;
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0.0;
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  if (v8 == 0.0)
  {
    if ([(CIImage *)a1 properties])
    {
      v9 = [(CIImage *)a1 properties];
      v10 = [(NSDictionary *)v9 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
      a2 = v10;
      if (v10)
      {
        getSimulatedApertureFromAuxMetadata(v10);
LABEL_10:
        v8 = *&v7;
      }
    }
  }

LABEL_11:
  if (v8 == 0.0)
  {
    SDOFSimpleLensModelValue(@"simulatedAperture", 0);
    v8 = *&v7;
  }

  LODWORD(v7) = 4.5;
  if (v8 != 0.0)
  {
    if (a4)
    {
      v11 = [-[NSDictionary objectForKeyedSubscript:](a4 objectForKeyedSubscript:{@"Version", v7), "intValue"}];
      if (v11 >= 2)
      {
        v16 = 1083179008;
        v17 = 1083179008;
        if (v11 > 3)
        {
          if (a2)
          {
            v12 = CGImageMetadataCopyTagWithPath(a2, 0, @"depthBlurEffect:RenderingParameters");
            if (v12)
            {
              v13 = v12;
              if (CGImageMetadataTagGetType(v12) == kCGImageMetadataTypeString)
              {
                v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:CGImageMetadataTagCopyValue(v13) options:0];
                CFRelease(v13);
                if (v14)
                {
                  v15 = 0;
                  [CIFilter getMinMaxSimulatedApertureFrom:v14 minValue:&v17 maxValue:&v16 version:&v15];
                }
              }

              else
              {
                CFRelease(v13);
              }
            }
          }
        }

        else
        {
          SDOFRenderingValue(&cfstr_Minimumsimulat.isa, a4);
          SDOFSimpleLensModelValue(@"maximumSimulatedAperture", a4);
        }
      }
    }
  }
}

uint64_t envCCSDOFMetadataClass(void)
{
  if (CCPBundleEnvar(void)::onceToken != -1)
  {
    envCCSDOFMetadataClass();
  }

  v0 = [CCPBundleEnvar(void)::b classNamed:@"CCSDOFMetadata"];
  if (!v0)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3052000000;
    v6 = __Block_byref_object_copy__19;
    v0 = getCCSDOFMetadataClass(void)::softClass;
    v7 = __Block_byref_object_dispose__19;
    v8 = getCCSDOFMetadataClass(void)::softClass;
    if (!getCCSDOFMetadataClass(void)::softClass)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___ZL22getCCSDOFMetadataClassv_block_invoke;
      v2[3] = &unk_1E75C1E10;
      v2[4] = &v3;
      ___ZL22getCCSDOFMetadataClassv_block_invoke(v2);
      v0 = v4[5];
    }

    _Block_object_dispose(&v3, 8);
  }

  return v0;
}

void sub_19CDFCCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigDepthBlurEffectRenderingParametersV1FromCFData(void *a1, _OWORD *a2)
{
  v4 = [a1 length];
  if (v4 > 0x2F)
  {
    v8 = [a1 getBytes:v14 length:48];
    if (LODWORD(v14[0]) == 1145980242)
    {
      if (DWORD1(v14[0]) == 1)
      {
        if (DWORD2(v14[0]) == 48)
        {
          result = 0;
          v10 = v14[1];
          *a2 = v14[0];
          a2[1] = v10;
          a2[2] = v14[2];
        }

        else
        {
          v13 = ci_logger_api(v8, v9);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            FigDepthBlurEffectRenderingParametersV1FromCFData();
          }

          return 4;
        }
      }

      else
      {
        v12 = ci_logger_api(v8, v9);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          FigDepthBlurEffectRenderingParametersV1FromCFData();
        }

        return 3;
      }
    }

    else
    {
      v11 = ci_logger_api(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        FigDepthBlurEffectRenderingParametersV1FromCFData();
      }

      return 2;
    }
  }

  else
  {
    v6 = ci_logger_api(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      FigDepthBlurEffectRenderingParametersV1FromCFData();
    }

    return 1;
  }

  return result;
}

uint64_t FigDepthBlurEffectRenderingParametersV2FromCFData(void *a1, char *a2, BOOL *a3)
{
  if ([a1 length] == 112 || (v6 = objc_msgSend(a1, "length"), v6 > 0x13F))
  {
    v10 = [a1 getBytes:v16 length:{objc_msgSend(a1, "length")}];
    if (v16[0] == 1145980242)
    {
      if (v16[1] == 2)
      {
        v12 = __n;
        if (__n == 112 || __n == 320)
        {
          *a3 = __n == 320;
          memcpy(a2, v16, v12);
          if (v12 != 320)
          {
            bzero(&a2[v12], 320 - v12);
          }

          return 0;
        }

        else
        {
          v15 = ci_logger_api(v10, v11);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            FigDepthBlurEffectRenderingParametersV1FromCFData();
          }

          return 4;
        }
      }

      else
      {
        v14 = ci_logger_api(v10, v11);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          FigDepthBlurEffectRenderingParametersV1FromCFData();
        }

        return 3;
      }
    }

    else
    {
      v13 = ci_logger_api(v10, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        FigDepthBlurEffectRenderingParametersV1FromCFData();
      }

      return 2;
    }
  }

  else
  {
    v8 = ci_logger_api(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FigDepthBlurEffectRenderingParametersV1FromCFData();
    }

    return 1;
  }
}

uint64_t FigDepthBlurEffectRenderingParametersV3FromCFData(void *a1, void *a2)
{
  v4 = [a1 length];
  if (v4 > 0x1D7)
  {
    v8 = [a1 getBytes:__src length:472];
    if (__src[0] == 1145980242)
    {
      if (__src[1] == 3)
      {
        if (__src[2] == 472)
        {
          memcpy(a2, __src, 0x1D8uLL);
          return 0;
        }

        else
        {
          v12 = ci_logger_api(v8, v9);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            FigDepthBlurEffectRenderingParametersV1FromCFData();
          }

          return 4;
        }
      }

      else
      {
        v11 = ci_logger_api(v8, v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          FigDepthBlurEffectRenderingParametersV1FromCFData();
        }

        return 3;
      }
    }

    else
    {
      v10 = ci_logger_api(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        FigDepthBlurEffectRenderingParametersV1FromCFData();
      }

      return 2;
    }
  }

  else
  {
    v6 = ci_logger_api(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      FigDepthBlurEffectRenderingParametersV1FromCFData();
    }

    return 1;
  }
}

void classLoadUniKernels(objc_class *a1)
{
  v2 = NSSelectorFromString(&cfstr_Initwithmetalq.isa);
  v3 = NSSelectorFromString(&cfstr_Loadshaders.isa);
  v5 = [a1 alloc];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v5 performSelector:v2 withObject:0];
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  if (objc_opt_respondsToSelector())
  {
    [v6 performSelector:v3];
  }
}

uint64_t envCCMakeBlurMapClass(void)
{
  if (CCPBundleEnvar(void)::onceToken != -1)
  {
    envCCSDOFMetadataClass();
  }

  v0 = [CCPBundleEnvar(void)::b classNamed:@"CCMakeBlurMap"];
  if (!v0)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3052000000;
    v6 = __Block_byref_object_copy__19;
    v0 = getCCMakeBlurMapClass(void)::softClass;
    v7 = __Block_byref_object_dispose__19;
    v8 = getCCMakeBlurMapClass(void)::softClass;
    if (!getCCMakeBlurMapClass(void)::softClass)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___ZL21getCCMakeBlurMapClassv_block_invoke;
      v2[3] = &unk_1E75C1E10;
      v2[4] = &v3;
      ___ZL21getCCMakeBlurMapClassv_block_invoke(v2);
      v0 = v4[5];
    }

    _Block_object_dispose(&v3, 8);
  }

  return v0;
}

void sub_19CDFDAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t envCCApplyBlurMapClass(void)
{
  if (CCPBundleEnvar(void)::onceToken != -1)
  {
    envCCSDOFMetadataClass();
  }

  v0 = [CCPBundleEnvar(void)::b classNamed:@"CCApplyBlurMap"];
  if (!v0)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3052000000;
    v6 = __Block_byref_object_copy__19;
    v0 = getCCApplyBlurMapClass(void)::softClass;
    v7 = __Block_byref_object_dispose__19;
    v8 = getCCApplyBlurMapClass(void)::softClass;
    if (!getCCApplyBlurMapClass(void)::softClass)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___ZL22getCCApplyBlurMapClassv_block_invoke;
      v2[3] = &unk_1E75C1E10;
      v2[4] = &v3;
      ___ZL22getCCApplyBlurMapClassv_block_invoke(v2);
      v0 = v4[5];
    }

    _Block_object_dispose(&v3, 8);
  }

  return v0;
}

void sub_19CDFDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___ZL18SDOFParameterValueP8NSStringS0__block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:aXmlVersion10En length:6332];
  SDOFParameterValue(NSString *,NSString *)::sdofParameters = [MEMORY[0x1E696AE40] propertyListWithData:v0 options:0 format:0 error:&v2];
  return SDOFParameterValue(NSString *,NSString *)::sdofParameters;
}

id ___ZL18SDOFParameterValueP8NSStringS0__block_invoke_2()
{
  result = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (result)
  {
    v4 = 0;
    result = [MEMORY[0x1E696AE40] propertyListWithData:result options:0 format:0 error:&v4];
    if (result)
    {
      v1 = v4 == 0;
    }

    else
    {
      v1 = 0;
    }

    if (v1)
    {
      result = [result valueForKey:@"TuningParameters"];
      if (result)
      {
        v2 = result;
        result = [result valueForKey:@"DefaultSensorIDs"];
        if (result)
        {
          result = [result valueForKey:@"PortTypeBackTelephoto"];
          if (result)
          {
            v3 = result;
            result = [v2 valueForKey:@"PortTypeBackTelephoto"];
            if (result)
            {
              result = [result objectForKey:v3];
              if (result)
              {
                result = [result valueForKey:@"SDOFRenderingParameters"];
                if (result)
                {
                  SDOFParameterValue(NSString *,NSString *)::sdofParametersOnDevice = result;
                  return result;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double CI::sw_convertDepthOrDisparity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v8 = *v7;
  *&v8 = 1.0 / fmaxf(COERCE_FLOAT(*v7), 0.000001);
  return *&v8;
}

double CI::sw_segmentationFusion(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  v11 = *(a2 + (*(v3 + 56) << 6));
  v12 = *(a2 + (*(v3 + 80) << 6));
  if (*(v3 + 40) == 5)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(&v11 + 1) + (*&v11 * *v13);
  LODWORD(v11) = DWORD2(v11);
  if (v14 <= *(&v11 + 2))
  {
    *&v11 = v14;
  }

  if (v14 < 0.0)
  {
    *&v11 = 0.0;
  }

  v15 = *(&v12 + 1) + (*&v12 * *v13);
  LODWORD(v12) = DWORD2(v12);
  if (v15 <= *(&v12 + 2))
  {
    *&v12 = v15;
  }

  if (v15 < 0.0)
  {
    *&v12 = 0.0;
  }

  v16 = (*&v11 + (*v7 * *v7)) - *&v12;
  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  if (v16 >= 0.0)
  {
    *&v11 = v17;
  }

  else
  {
    *&v11 = 0.0;
  }

  *&v11 = sqrtf(*&v11);
  *&v11 = vdupq_lane_s32(*&v11, 0).u64[0];
  return *&v11;
}

char *___ZL14CCPBundleEnvarv_block_invoke()
{
  result = getenv("CI_CCPORTRAIT_PATH");
  if (result)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", result)}];
    CCPBundleEnvar(void)::b = v1;

    return [v1 load];
  }

  return result;
}

Class ___ZL20getCCFacePointsClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCFacePoints");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL20getCCFacePointsClassv_block_invoke_cold_1();
  }

  getCCFacePointsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void CCPortraitLibrary(void)
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!CCPortraitLibraryCore(char **)::frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = ___ZL21CCPortraitLibraryCorePPc_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E75C3FF0;
    v2 = 0;
    CCPortraitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!CCPortraitLibraryCore(char **)::frameworkLibrary)
  {
    CCPortraitLibrary(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t ___ZL21CCPortraitLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CCPortraitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL25getCCMakeBlurMapArgsClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCMakeBlurMapArgs");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL25getCCMakeBlurMapArgsClassv_block_invoke_cold_1();
  }

  getCCMakeBlurMapArgsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void getSimulatedApertureFromAuxMetadata(const CGImageMetadata *a1)
{
  v1 = CGImageMetadataCopyTagWithPath(a1, 0, @"depthBlurEffect:SimulatedAperture");
  if (v1)
  {
    v2 = v1;
    [CGImageMetadataTagCopyValue(v1) floatValue];
    CFRelease(v2);
  }
}

uint64_t CI::sw_onlyRG_(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

uint64_t envCCApplyBlurMapArgsClass(void)
{
  if (CCPBundleEnvar(void)::onceToken != -1)
  {
    envCCSDOFMetadataClass();
  }

  v0 = [CCPBundleEnvar(void)::b classNamed:@"CCApplyBlurMapArgs"];
  if (!v0)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3052000000;
    v6 = __Block_byref_object_copy__19;
    v0 = getCCApplyBlurMapArgsClass(void)::softClass;
    v7 = __Block_byref_object_dispose__19;
    v8 = getCCApplyBlurMapArgsClass(void)::softClass;
    if (!getCCApplyBlurMapArgsClass(void)::softClass)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___ZL26getCCApplyBlurMapArgsClassv_block_invoke;
      v2[3] = &unk_1E75C1E10;
      v2[4] = &v3;
      ___ZL26getCCApplyBlurMapArgsClassv_block_invoke(v2);
      v0 = v4[5];
    }

    _Block_object_dispose(&v3, 8);
  }

  return v0;
}

void sub_19CE01004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL26getCCApplyBlurMapArgsClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCApplyBlurMapArgs");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL26getCCApplyBlurMapArgsClassv_block_invoke_cold_1();
  }

  getCCApplyBlurMapArgsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class ___ZL22getCCSDOFMetadataClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCSDOFMetadata");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL22getCCSDOFMetadataClassv_block_invoke_cold_1();
  }

  getCCSDOFMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class ___ZL21getCCMakeBlurMapClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCMakeBlurMap");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL21getCCMakeBlurMapClassv_block_invoke_cold_1();
  }

  getCCMakeBlurMapClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class ___ZL22getCCApplyBlurMapClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCApplyBlurMap");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL22getCCApplyBlurMapClassv_block_invoke_cold_1();
  }

  getCCApplyBlurMapClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void *___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) count];
  if (result)
  {
    v26 = *(a1 + 40);
    if (!v26)
    {
      v41[0] = @"working_format";
      v42[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
      v42[1] = &unk_1F1082448;
      v41[1] = @"kCIContextIntermediateMemoryTarget";
      v41[2] = @"kCIContextCacheIntermediates";
      v41[3] = @"kCIContextUseMetalRenderer";
      v42[2] = MEMORY[0x1E695E110];
      v42[3] = MEMORY[0x1E695E118];
      v26 = +[CIContext contextWithOptions:](CIContext, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:4]);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v3 = *(a1 + 32);
    result = [v3 countByEnumeratingWithState:&v29 objects:v40 count:16];
    v5 = result;
    if (result)
    {
      v6 = *v30;
      *&v4 = 138543362;
      v25 = v4;
      do
      {
        v7 = 0;
        do
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [CIFilter prewarmedFilterFromString:*(*(&v29 + 1) + 8 * v7), v25];
          if (v9)
          {
            v10 = objc_autoreleasePoolPush();
            v12 = [v9 outputImage];
            if (v12)
            {
              v37[0] = 0;
              v37[1] = v37;
              v37[2] = 0x3052000000;
              v37[3] = __Block_byref_object_copy__19;
              v37[4] = __Block_byref_object_dispose__19;
              v37[5] = 0;
              v13 = [CIRenderDestination alloc];
              [v12 extent];
              v15 = v14;
              [v12 extent];
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v36[2] = ___ZL20renderPrewarmedImageP9CIContextP8CIFilter_block_invoke;
              v36[3] = &unk_1E75C4010;
              v36[4] = v37;
              v18 = [(CIRenderDestination *)v13 initWithWidth:v15 height:v16 pixelFormat:70 commandBuffer:0 mtlTextureProvider:v36];
              if (v18)
              {
                v33 = 0;
                [v12 extent];
                v19 = [CIContext prepareRender:v26 fromRect:"prepareRender:fromRect:toDestination:atPoint:error:" toDestination:v12 atPoint:v18 error:&v33];
                if (v33)
                {
                  v21 = ci_logger_api(v19, v20);
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v25;
                    v44 = v33;
                    _os_log_error_impl(&dword_19CC36000, v21, OS_LOG_TYPE_ERROR, "Error asking CI to prepare render = %{public}@", buf, 0xCu);
                  }
                }
              }

              else
              {
                v24 = ci_logger_api(0, v17);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  ___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke_cold_1(&v34, v35);
                }
              }

              _Block_object_dispose(v37, 8);
            }

            else
            {
              v23 = ci_logger_api(0, v11);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                ___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke_cold_2(&v38, v39);
              }
            }

            objc_autoreleasePoolPop(v10);
          }

          else
          {
            v22 = ci_logger_api(0, v8);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              ___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke_cold_3(&v27, v28);
            }
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v29 objects:v40 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

void sub_19CE01570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *OUTLINED_FUNCTION_2_9(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void OUTLINED_FUNCTION_4_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

CIImage *_CUIMappedBlurImageWithSize(CIImage *a1, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  v4 = a1;
  v17 = *MEMORY[0x1E69E9840];
  v5 = vcvtad_u64_f64(a3 * 0.01 * a2);
  if (v5)
  {
    v3 -= v5;
    v4 = -[CIImage filteredImage:keysAndValues:](a1, "filteredImage:keysAndValues:", @"CUIScaleClampFilter", @"inputImage", _CUIMappedBlurImageWithSize(a1, v5, 0), @"inputScale", [MEMORY[0x1E696AD98] numberWithDouble:(v5 * 5.0)], 0);
  }

  v15[2] = xmmword_19CF2A9C0;
  v15[3] = unk_19CF2A9D0;
  v16 = 0x3FB0000000000000;
  v15[0] = xmmword_19CF2A9A0;
  v15[1] = unk_19CF2A9B0;
  v12 = xmmword_19CF2AA08;
  v13 = unk_19CF2AA18;
  v14 = 0x3FBC71C71C71C71CLL;
  HIDWORD(v6) = unk_19CF2A9FC;
  v10 = xmmword_19CF2A9E8;
  v11 = unk_19CF2A9F8;
  if (!v3)
  {
    return v4;
  }

  if (v3 == 1)
  {
    v7 = v15;
LABEL_8:
    v8 = [CIVector vectorWithValues:v7 count:9];
    return [(CIImage *)v4 filteredImage:@"CIConvolution3X3" keysAndValues:@"inputWeights", v8, @"inputBias", &unk_1F10851B8, 0, v10, v11, v12, v13, v14];
  }

  if (v3 <= 2)
  {
    v7 = &v10;
    goto LABEL_8;
  }

  *&v6 = v3 / 2.853;
  return -[CIImage filteredImage:keysAndValues:](v4, "filteredImage:keysAndValues:", @"CIGaussianBlur", @"inputRadius", [MEMORY[0x1E696AD98] numberWithFloat:v6], 0);
}

__n128 convolve(double *a1, const double *a2)
{
  v2 = 0;
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = -1;
  do
  {
    v4 = 0;
    v5 = v3;
    do
    {
      if (v5 <= 8)
      {
        *(&v8 + v5) = *(&v8 + v5) + a1[v2] * a2[v4];
      }

      ++v5;
      ++v4;
    }

    while (v4 != 3);
    ++v2;
    ++v3;
  }

  while (v2 != 9);
  v6 = v11;
  *(a1 + 2) = v10;
  *(a1 + 3) = v6;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 1) = result;
  return result;
}

double CI::sw_scaleClamp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*v7, *(a2 + (*(v3 + 32) << 6))), 0), _Q1).u64[0];
  return result;
}

double CI::sw_innerGorS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = (1.0 - *(v7 + 12)) / *(a2 + (*(v3 + 56) << 6));
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v9 = (1.0 - *(v7 + 12)) / *(a2 + (*(v3 + 56) << 6));
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  *&result = vmulq_n_f32(*(a2 + (*(v3 + 32) << 6)), v11).u64[0];
  return result;
}

double CI::sw_outerGorS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v7 + 12) / *(a2 + (*(v3 + 56) << 6));
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v9 = *(v7 + 12) / *(a2 + (*(v3 + 56) << 6));
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  *&result = vmulq_n_f32(*(a2 + (*(v3 + 32) << 6)), v11).u64[0];
  return result;
}

double CI::sw_shapeEffectBlur_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v6 = v5;
  }

  v7 = *(v3 + 32);
  v8 = a3 + 16 * v7;
  v9 = a2 + (v7 << 6);
  if (*(v3 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v3 + 56);
  v12 = a3 + 16 * v11;
  v13 = a2 + (v11 << 6);
  if (*(v3 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v3 + 80);
  v16 = a3 + 16 * v15;
  v17 = a2 + (v15 << 6);
  if (*(v3 + 88) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v3 + 104);
  v20 = (a3 + 16 * v19);
  v21 = (a2 + (v19 << 6));
  if (*(v3 + 112) == 5)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v3 + 128);
  v24 = *(v3 + 152);
  v25 = *(v3 + 176);
  v26 = *(v3 + 200);
  v27 = *(v3 + 232);
  v28 = *(v3 + 224);
  v29 = (a3 + 16 * v28);
  v30 = (a2 + (v28 << 6));
  if (v27 == 5)
  {
    v30 = v29;
  }

  v31 = v24 << 6;
  v32 = *v30;
  v33 = *(v14 + 12);
  v34 = 1.0 - v33 + 1.0 - v33;
  if (v34 <= 1.0)
  {
    v35 = 1.0 - v33 + 1.0 - v33;
  }

  else
  {
    v35 = 1.0;
  }

  if (v34 < 0.0)
  {
    v35 = 0.0;
  }

  v36 = vmulq_n_f32(*(a2 + (v23 << 6)), v35);
  v37 = v33 + v33;
  if (v37 <= 1.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 1.0;
  }

  if (v37 >= 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = vmulq_n_f32(*(a2 + v31), v39);
  v41 = *(v10 + 12);
  v42 = *(v18 + 12);
  v43 = vmulq_n_f32(*(a2 + (v25 << 6)), ((1.0 - v42) * v32.f32[0]) + ((1.0 - v41) * (1.0 - v32.f32[0])));
  v44 = vmulq_laneq_f32(vaddq_f32(v43, vmulq_n_f32(vaddq_f32(v36, vmulq_n_f32(*v22, 1.0 - v36.f32[3])), 1.0 - v43.f32[3])), *v6, 3);
  *&result = vaddq_f32(v44, vmulq_n_f32(vmulq_n_f32(vaddq_f32(v40, vmulq_n_f32(vmulq_n_f32(*(a2 + (v26 << 6)), vmuls_lane_f32(v42, v32, 1) + (v41 * (1.0 - v32.f32[1]))), 1.0 - v40.f32[3])), 1.0 - COERCE_FLOAT(HIDWORD(*v6))), 1.0 - v44.f32[3])).u64[0];
  return result;
}

double CI::sw_outerBevelEmboss(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 40);
  v8 = *(v5 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v6;
  a5.n128_u64[0] = *v10;
  v54 = a5;
  v12 = *CI::getDC(a1);
  v13.n128_u64[1] = v54.n128_u64[1];
  v13.n128_u64[0] = vadd_f32(vdup_lane_s32(v54.n128_u64[0], 1), v12);
  LODWORD(v14) = *(v11 + 24);
  v15.i32[0] = *(v11 + 36);
  *v16.i32 = vmuls_lane_f32(*(v11 + 32), v13.n128_u64[0], 1);
  *&v17 = *v16.i32 + (v13.n128_f32[0] * *(v11 + 28));
  v13.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v11 + 20), v13.n128_u64[0], 1) + (v13.n128_f32[0] * *(v11 + 16)));
  *v18.f64 = *v15.i32 + *&v17;
  v13.n128_f32[1] = *v15.i32 + *&v17;
  v21.n128_f64[0] = CI::BitmapSampler::read(*(v11 + 8), v13, v18, v14, v17, v16, v15, v19, v20);
  v53 = v21;
  v21.n128_u64[1] = v54.n128_u64[1];
  v21.n128_u64[0] = vadd_f32(v54.n128_u64[0], v12);
  LODWORD(v22) = *(v11 + 24);
  v23.i32[0] = *(v11 + 36);
  *v24.i32 = vmuls_lane_f32(*(v11 + 32), v21.n128_u64[0], 1);
  *&v25 = *v24.i32 + (v21.n128_f32[0] * *(v11 + 28));
  v21.n128_f32[0] = *&v22 + (vmuls_lane_f32(*(v11 + 20), v21.n128_u64[0], 1) + (v21.n128_f32[0] * *(v11 + 16)));
  *v26.f64 = *v23.i32 + *&v25;
  v21.n128_f32[1] = *v23.i32 + *&v25;
  v29.n128_f64[0] = CI::BitmapSampler::read(*(v11 + 8), v21, v26, v22, v25, v24, v23, v27, v28);
  v52 = v29;
  v29.n128_u64[1] = v54.n128_u64[1];
  v29.n128_u64[0] = vadd_f32(vrev64_s32(v54.n128_u64[0]), v12);
  LODWORD(v30) = *(v11 + 24);
  v31.i32[0] = *(v11 + 36);
  *v32.i32 = vmuls_lane_f32(*(v11 + 32), v29.n128_u64[0], 1);
  *&v33 = *v32.i32 + (v29.n128_f32[0] * *(v11 + 28));
  v29.n128_f32[0] = *&v30 + (vmuls_lane_f32(*(v11 + 20), v29.n128_u64[0], 1) + (v29.n128_f32[0] * *(v11 + 16)));
  *v34.f64 = *v31.i32 + *&v33;
  v29.n128_f32[1] = *v31.i32 + *&v33;
  v37.n128_f64[0] = CI::BitmapSampler::read(*(v11 + 8), v29, v34, v30, v33, v32, v31, v35, v36);
  v51 = v37;
  v37.n128_u64[1] = v54.n128_u64[1];
  v37.n128_u64[0] = vadd_f32(vdup_lane_s32(v54.n128_u64[0], 0), v12);
  LODWORD(v38) = *(v11 + 24);
  v39.i32[0] = *(v11 + 36);
  *v40.i32 = vmuls_lane_f32(*(v11 + 32), v37.n128_u64[0], 1);
  *&v41 = *v40.i32 + (v37.n128_f32[0] * *(v11 + 28));
  v37.n128_f32[0] = *&v38 + (vmuls_lane_f32(*(v11 + 20), v37.n128_u64[0], 1) + (v37.n128_f32[0] * *(v11 + 16)));
  *v42.f64 = *v39.i32 + *&v41;
  v37.n128_f32[1] = *v39.i32 + *&v41;
  *v45.i64 = CI::BitmapSampler::read(*(v11 + 8), v37, v42, v38, v41, v40, v39, v43, v44);
  v45.f32[0] = COERCE_FLOAT(vaddq_f32(v53, v52).i32[3]) + COERCE_FLOAT(vaddq_f32(v51, v45).i32[3]) * -1.3;
  v46 = v45.f32[0] * 0.5 + 0.5;
  v47 = 1.0;
  if (v46 <= 1.0)
  {
    v47 = v46;
  }

  v48 = v46 < 0.0;
  v49 = 0;
  if (!v48)
  {
    *v49.i32 = v47;
  }

  *&result = vdupq_lane_s32(v49, 0).u64[0];
  return result;
}

double CI::sw_outerBevelEmbossC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32) << 6;
  v9 = *(v3 + 56) << 6;
  v10 = *(v7 + 12) * 2.0 + -1.0;
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v12 = *(v7 + 12) * 2.0 + -1.0;
  }

  else
  {
    v12 = 1.0;
  }

  if (v10 >= -1.0)
  {
    v11 = -v10;
  }

  v13 = v10 < 0.0;
  v14 = v10 <= 0.0;
  v15 = 0.0;
  if (v13)
  {
    v12 = 0.0;
  }

  v16 = vmulq_n_f32(*(a2 + v8), v12);
  if (v14)
  {
    v15 = v11;
  }

  *&result = vaddq_f32(vmulq_n_f32(*(a2 + v9), v15), v16).u64[0];
  return result;
}

double CI::sw_multiplyByMask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_laneq_f32(*v7, *v11, 3).u64[0];
  return result;
}

double CI::sw_cui_hueSaturation(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 16) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *v9;
  v11 = *(a2 + (*(v5 + 56) << 6));
  if (v11 > 0.0)
  {
    v12 = v11;
    *&a5 = fminf(*v10.i32, fminf(*&v10.i32[1], *&v10.i32[2]));
    v13 = fmaxf(*v10.i32, fmaxf(*&v10.i32[1], *&v10.i32[2]));
    v14 = v13 - *&a5;
    v15 = (v13 - *&a5) / v13;
    v16 = 0.0;
    if (v13 == 0.0)
    {
      v15 = 0.0;
    }

    if (v15 != 0.0)
    {
      v17 = ((*v10.i32 - *&v10.i32[1]) / v14) + 4.0;
      if (*&v10.i32[1] == v13)
      {
        v17 = ((*&v10.i32[2] - *v10.i32) / v14) + 2.0;
      }

      v18 = (*&v10.i32[1] - *&v10.i32[2]) / v14;
      if (*v10.i32 != v13)
      {
        v18 = v17;
      }

      v16 = v18 / 6.0;
      if ((v18 / 6.0) < 0.0)
      {
        v16 = v16 + 1.0;
      }
    }

    v19 = ((v16 * 360.0) - *(a2 + (*(v5 + 32) << 6))) / 6.0;
    v20 = v19 + 360.0;
    if (v19 >= 0.0)
    {
      v20 = ((v16 * 360.0) - *(a2 + (*(v5 + 32) << 6))) / 6.0;
    }

    v21 = v20;
    v22 = v12 * 0.5;
    if (v22 > v20)
    {
      LODWORD(v22) = *(a2 + (*(v5 + 104) << 6));
      LODWORD(v21) = *(a2 + (*(v5 + 128) << 6));
      if (v15 == 0.0)
      {
        v23.i64[0] = 0;
        v23.i32[2] = 0;
LABEL_37:
        v37 = vsub_f32(*v23.i8, vdup_lane_s32(*&a5, 0));
        v38 = vmls_lane_f32(*v23.i8, v37, *&v21, 0);
        *v37.i32 = ((*&v23.i32[2] - ((*&v23.i32[2] - *&a5) * *&v21)) + vaddv_f32(v38)) / 3.0;
        *v10.i8 = vmls_lane_f32(v38, vsub_f32(v38, vdup_lane_s32(v37, 0)), *&v22, 0);
        return *v10.i64;
      }

      v24 = v13;
      v25.f64[0] = v15;
      v26 = *(a2 + (*(v5 + 80) << 6)) + v20;
      if (v26 < 0.0)
      {
        v26 = v26 + 360.0;
      }

      if (v26 > 360.0)
      {
        v26 = v26 + -360.0;
      }

      v27 = v26 / 60.0;
      v28 = v27;
      v29 = v27 - floorf(v27);
      v25.f64[1] = (v15 * v29);
      __asm { FMOV            V5.2D, #1.0 }

      v35 = vmulq_n_f64(vsubq_f64(_Q5, v25), v24);
      *&v35.f64[0] = vcvt_f32_f64(v35);
      v36 = (1.0 - v25.f64[0] * (1.0 - v29)) * v24;
      if (v28 > 1)
      {
        switch(v28)
        {
          case 2:
            HIDWORD(v35.f64[1]) = vextq_s8(*&v10, *&v10, 8uLL).i32[1];
            *(v35.f64 + 1) = v13;
            *&v35.f64[1] = v36;
            break;
          case 3:
            HIDWORD(v35.f64[1]) = vextq_s8(*&v10, *&v10, 8uLL).i32[1];
            *&v35.f64[1] = v13;
            break;
          case 4:
            v10.i64[0] = __PAIR64__(LODWORD(v35.f64[0]), LODWORD(v36));
            *&v10.i32[2] = v13;
LABEL_36:
            v23 = v10;
            goto LABEL_37;
          default:
            goto LABEL_35;
        }

        v23 = v35;
        goto LABEL_37;
      }

      if (!v28)
      {
        v10.i64[0] = __PAIR64__(LODWORD(v36), LODWORD(v13));
        v10.i32[2] = LODWORD(v35.f64[0]);
        goto LABEL_36;
      }

      if (v28 == 1)
      {
        v23.i32[0] = vtrn2q_s32(v35, v10).u32[0];
        *&v23.i32[1] = v13;
        v23.i32[2] = LODWORD(v35.f64[0]);
        goto LABEL_37;
      }

LABEL_35:
      v10.i64[0] = __PAIR64__(LODWORD(v35.f64[0]), LODWORD(v13));
      v10.i32[2] = HIDWORD(v35.f64[0]);
      goto LABEL_36;
    }
  }

  return *v10.i64;
}

void CI::snprintf_cs(CI *this, char *a2, CGColorSpace *a3, CGColorSpace *a4)
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  Type = CGColorSpaceGetType();
  if (!a3)
  {
    v9 = "nil";
    goto LABEL_60;
  }

  if (Type <= 4)
  {
    if (Type <= 1)
    {
      if (!Type)
      {
        v9 = "devicegray";
        goto LABEL_60;
      }

      if (Type != 1)
      {
LABEL_38:
        snprintf(this, a2, "%p");
        return;
      }
    }

    else if (Type != 2)
    {
      if (Type == 3)
      {
        *&v32 = 0;
        v30 = 0u;
        v31 = 0u;
        *buffer = 0u;
        CGColorSpaceGetCalibratedGrayData();
        snprintf(this, a2, "calGray(");
        v13 = 0.96420002 == 0.0 && *&buffer[8] == 1.0;
        if (v13 && *&v30 == 0.824899971)
        {
          v14 = "wp=d50 ";
        }

        else
        {
          *&v25 = v30;
          v23 = *buffer;
          v14 = "wp=%.3f,%.3f,%.3f ";
        }

        CI::snprintfcat(this, a2, v14, v12, 0.0, 0.0, 0.0, v23, v25);
        if (*(&v30 + 1) != 0.0 || *&v31 != 0.0 || *(&v31 + 1) != 0.0)
        {
          CI::snprintfcat(this, a2, "bp=%.3f,%.3f,%.3f ", v17, *(&v30 + 1), v31);
        }

        v18 = *&v32;
        if (*&v32 != 1.0)
        {
          CI::snprintfcat(this, a2, "gamma=%.3f)", v17, *&v32, v32, *(&v24 + 1), v25);
          return;
        }

        v19 = "gamma=1)";
        goto LABEL_66;
      }

      v32 = 0u;
      memset(v33, 0, sizeof(v33));
      v30 = 0u;
      v31 = 0u;
      *buffer = 0u;
      CGColorSpaceGetCalibratedRGBData();
      snprintf(this, a2, "calRGB(");
      if (0.96420002 == 0.0 && *&buffer[8] == 1.0 && *&v30 == 0.824899971)
      {
        snprintf(this, a2, "wp=d50 ", 0.0, 0.0, 0.0);
      }

      else
      {
        CI::snprintfcat(this, a2, "wp=%.3f,%.3f,%.3f ", v10, *buffer, *&buffer[8], v30);
      }

      if (*(&v30 + 1) != 0.0 || *&v31 != 0.0 || *(&v31 + 1) != 0.0)
      {
        CI::snprintfcat(this, a2, "bp=%.3f,%.3f,%.3f ", v11, *(&v30 + 1), v31);
      }

      if (*&v32 == 1.0 && *(&v32 + 1) == 1.0 && *v33 == 1.0)
      {
        v20 = "gamma=1 ";
      }

      else
      {
        if (*&v32 == *(&v32 + 1) && *(&v32 + 1) == *v33)
        {
          CI::snprintfcat(this, a2, "gamma=%.3f ", v11, *(&v32 + 1), *&v32, *v33, *(&v32 + 1), *(&v23 + 1), v25);
LABEL_65:
          v18 = *(v33 + 1);
          v28 = *(&v33[4] + 1);
          v26 = *(&v33[2] + 8);
          v27 = *(&v33[3] + 8);
          v24 = *(v33 + 8);
          v25 = *(&v33[1] + 8);
          v19 = "mtx=%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f)";
LABEL_66:
          CI::snprintfcat(this, a2, v19, v17, v18, v24, v25, v26, v27, v28);
          return;
        }

        *&v25 = *&v33[0];
        v23 = v32;
        v20 = "gamma=%.3f,%.3f,%.3f ";
      }

      CI::snprintfcat(this, a2, v20, v11, *(&v32 + 1), *&v32, *v33, v23, v25);
      goto LABEL_65;
    }

    v9 = "devicergb";
    goto LABEL_60;
  }

  if (Type > 7)
  {
    switch(Type)
    {
      case 8:
        snprintf(this, a2, "DeviceN Colorspace %p");
        return;
      case 9:
        snprintf(this, a2, "Pattern Colorspace %p");
        return;
      case 10:
        snprintf(this, a2, "PlatformSets Colorspace %p");
        return;
    }

    goto LABEL_38;
  }

  if (Type == 5)
  {
    snprintf(this, a2, "Lab Colorspace %p");
    return;
  }

  if (Type != 6)
  {
    snprintf(this, a2, "Indexed Colorspace %p");
    return;
  }

  if ((atomic_load_explicit(byte_1ED7C4528, memory_order_acquire) & 1) == 0)
  {
    CI::snprintf_cs();
  }

  if (_MergedGlobals_4 != a3)
  {
    memset(v33, 0, 64);
    v31 = 0u;
    v32 = 0u;
    *buffer = 0u;
    v30 = 0u;
    Name = CGColorSpaceGetName(a3);
    if (Name)
    {
      v16 = Name;
      CFRetain(Name);
    }

    else
    {
      v16 = CGColorSpaceCopyICCProfileDescription();
      if (!v16)
      {
        v21 = 1;
        goto LABEL_70;
      }
    }

    CFStringGetCString(v16, buffer, 128, 0x8000100u);
    v21 = 0;
LABEL_70:
    v22 = *buffer == 0x726F6C6F4347436BLL && *&buffer[5] == 0x6563617053726F6CLL;
    if (v22 || !v4)
    {
      snprintf(this, a2, "%s");
    }

    else
    {
      snprintf(this, a2, "%s");
    }

    if ((v21 & 1) == 0)
    {
      CFRelease(v16);
    }

    return;
  }

  v9 = "sRGB";
LABEL_60:

  snprintf(this, a2, v9);
}

size_t CI::snprintfcat(CI *this, char *a2, const char *a3, const char *a4, ...)
{
  va_start(va, a4);
  result = strlen(this);
  if (a2 > result)
  {
    return vsnprintf(this + result, &a2[-result], a3, va);
  }

  return result;
}

uint64_t CI::fprintf_cs(FILE *this, __sFILE *a2, CGColorSpace *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  CI::snprintf_cs(v5, 0x100, a2, a3);
  return fputs(v5, this);
}

CGColorSpace *CI::ColorSpace_is_RGB(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CGColorSpaceGetTypeID())
    {
      return (CGColorSpaceGetModel(v2) == kCGColorSpaceModelRGB);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

CGColorSpace *CI::ColorSpace_is_RGB_or_Gray(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CGColorSpaceGetTypeID())
    {
      return (CGColorSpaceGetModel(v2) < kCGColorSpaceModelCMYK);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

BOOL CI::ColorSpace_is_RGB_and_supports_output(_BOOL8 this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CGColorSpaceGetTypeID())
    {
      this = CGColorSpaceSupportsOutput(v2);
      if (this)
      {
        return CGColorSpaceGetModel(v2) == kCGColorSpaceModelRGB;
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

BOOL CI::ColorSpace_is_RGB_or_Gray_and_supports_output(_BOOL8 this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CGColorSpaceGetTypeID())
    {
      this = CGColorSpaceSupportsOutput(v2);
      if (this)
      {
        return CGColorSpaceGetModel(v2) < kCGColorSpaceModelCMYK;
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

CGColorSpace *CI::ColorSpace_is_HDR(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    return CGColorSpaceUsesITUR_2100TF(this);
  }

  return this;
}

CGColorSpace *CI::ColorSpaceCreateSDRCopy(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    if (CGColorSpaceUsesITUR_2100TF(this))
    {
      v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0C8]);
      v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0D0]);
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0C0]);
      v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F190]);
      v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F188]);
      v8 = CGColorSpaceEqualToColorSpace();
      v9 = CGColorSpaceEqualToColorSpace();
      v10 = CGColorSpaceEqualToColorSpace();
      v11 = CGColorSpaceEqualToColorSpace();
      v12 = CGColorSpaceEqualToColorSpace();
      CGColorSpaceRelease(v3);
      CGColorSpaceRelease(v4);
      CGColorSpaceRelease(v5);
      CGColorSpaceRelease(v6);
      CGColorSpaceRelease(v7);
      if ((v8 & 1) != 0 || (v9 & 1) != 0 || v10 || ((v11 | v12) & 1) == 0)
      {
        v13 = MEMORY[0x1E695F0B8];
      }

      else
      {
        v13 = MEMORY[0x1E695F1C0];
      }

      v14 = *v13;

      return CGColorSpaceCreateWithName(v14);
    }

    else
    {

      return CGColorSpaceRetain(v2);
    }
  }

  return this;
}

CGColorSpace *CI::ColorSpaceCreatePQBasedCopy(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    if (CGColorSpaceIsPQBased(this))
    {

      return CGColorSpaceRetain(v2);
    }

    else
    {
      v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F180]);
      v6 = CGColorSpaceEqualToColorSpace();
      v7 = CGColorSpaceEqualToColorSpace();
      v8 = CGColorSpaceEqualToColorSpace();
      CGColorSpaceRelease(v3);
      CGColorSpaceRelease(v4);
      CGColorSpaceRelease(v5);
      if (v6)
      {
        v9 = MEMORY[0x1E695F0C8];
      }

      else if ((v7 | v8))
      {
        v9 = MEMORY[0x1E695F190];
      }

      else
      {
        v9 = MEMORY[0x1E695F178];
      }

      v10 = *v9;

      return CGColorSpaceCreateWithName(v10);
    }
  }

  return this;
}

unsigned __int8 **ConvertYCbCrtoREDEYEFORMAT(unsigned __int8 **result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(result + 2);
  v6 = *(a2 + 8);
  if (v5 != 2 * v6)
  {
    v7 = "ConvertYCbCrtoREDEYEFORMAT: widths do not match";

    return puts(v7);
  }

  if (*(result + 3) != 2 * *(a2 + 12))
  {
    v7 = "ConvertYCbCrtoREDEYEFORMAT: heights do not match";

    return puts(v7);
  }

  if (*(result + 4) < *(result + 7) * v5)
  {
    v7 = "ConvertYCbCrtoREDEYEFORMAT: rowSamples is too small for Y bitmap";

    return puts(v7);
  }

  v8 = *(a2 + 16);
  if (v8 < *(a2 + 28) * v6)
  {
    v7 = "ConvertYCbCrtoREDEYEFORMAT: rowSamples is too small for CbCr bitmap";

    return puts(v7);
  }

  if (*(a3 + 12) >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = *a3;
    v12 = *result;
    while (1)
    {
      if (v9)
      {
        v13 = *(result + 3) - 1;
      }

      else
      {
        v13 = 0;
        v8 = -v8;
      }

      if (v9 == v13)
      {
        v8 = 0;
      }

      v14 = &v10[v8];
      v15 = *v10;
      v16 = v10[1];
      v17 = *v14;
      v18 = v14[1];
      v87 = v11;
      v88 = v10;
      v86 = v12;
      if (*(result + 2) >= 3)
      {
        break;
      }

      v24 = *v10;
      v23 = v10[1];
      v22 = *v14;
      v21 = v14[1];
      v20 = v11;
LABEL_70:
      v55 = *v12;
      v56 = ((9 * v15 + v22 + 3 * (v17 + v24) + 8) >> 4) - 128;
      v57 = ((9 * v16 + v21 + 3 * (v18 + v23) + 8) >> 4) - 128;
      v58 = v55 + ((22970 * v57 + 0x2000) >> 14);
      v59 = v55 + ((-11700 * v57 - 5638 * v56 + 0x2000) >> 14);
      v60 = v55 + ((29032 * v56 + 0x2000) >> 14);
      if (v58 >= 255)
      {
        v61 = 255;
      }

      else
      {
        v61 = v58;
      }

      v62 = v61 & ~(v61 >> 31);
      if (v59 >= 255)
      {
        v59 = 255;
      }

      v63 = v59 & ~(v59 >> 31);
      if (v60 >= 255)
      {
        v60 = 255;
      }

      v64 = v60 & ~(v60 >> 31);
      if (a4)
      {
        v65 = v62;
      }

      else
      {
        v65 = -1;
      }

      if (a4)
      {
        v66 = v63;
      }

      else
      {
        v66 = v62;
      }

      if (a4)
      {
        v67 = v64;
      }

      else
      {
        v67 = v63;
      }

      if (a4)
      {
        v68 = -1;
      }

      else
      {
        v68 = v64;
      }

      if (a4 == 2)
      {
        v65 = v64;
        v66 = v63;
        v67 = v62;
        v68 = -1;
      }

      if (a4 == 3)
      {
        v65 = -1;
      }

      else
      {
        LOBYTE(v64) = v66;
        LOBYTE(v63) = v67;
        LOBYTE(v62) = v68;
      }

      *v20 = v65;
      v20[1] = v64;
      v20[2] = v63;
      v20[3] = v62;
      if (*(a3 + 8) == *(result + 2))
      {
        v69 = v12[1];
        v70 = &v20[*(a3 + 28)];
        v71 = ((9 * *v10 + *v14 + 3 * (*v14 + *v10) + 8) >> 4) - 128;
        v72 = ((9 * v10[1] + v14[1] + 3 * (v14[1] + v10[1]) + 8) >> 4) - 128;
        v73 = v69 + ((22970 * v72 + 0x2000) >> 14);
        v74 = v69 + ((-5638 * v71 - 11700 * v72 + 0x2000) >> 14);
        v75 = v69 + ((29032 * v71 + 0x2000) >> 14);
        if (v73 >= 255)
        {
          v76 = 255;
        }

        else
        {
          v76 = v73;
        }

        v77 = v76 & ~(v76 >> 31);
        if (v74 >= 255)
        {
          v74 = 255;
        }

        v78 = v74 & ~(v74 >> 31);
        if (v75 >= 255)
        {
          v75 = 255;
        }

        v79 = v75 & ~(v75 >> 31);
        if (a4)
        {
          v80 = v77;
        }

        else
        {
          v80 = -1;
        }

        if (a4)
        {
          v81 = v78;
        }

        else
        {
          v81 = v77;
        }

        if (a4)
        {
          v82 = v79;
        }

        else
        {
          v82 = v78;
        }

        if (a4)
        {
          v83 = -1;
        }

        else
        {
          v83 = v79;
        }

        if (a4 == 2)
        {
          v80 = v79;
          v81 = v78;
          v82 = v77;
          v83 = -1;
        }

        if (a4 == 3)
        {
          v80 = -1;
        }

        else
        {
          LOBYTE(v79) = v81;
          LOBYTE(v78) = v82;
        }

        *v70 = v80;
        v70[1] = v79;
        if (a4 == 3)
        {
          v84 = v77;
        }

        else
        {
          v84 = v83;
        }

        v70[2] = v78;
        v70[3] = v84;
      }

      v8 = *(a2 + 16);
      v10 = &v88[v8 * (v9++ & 1)];
      v12 = &v86[*(result + 4)];
      v11 = &v87[*(a3 + 16)];
      if (v9 >= *(a3 + 12))
      {
        return result;
      }
    }

    v85 = v9;
    v19 = 0;
    v20 = v11;
    v21 = v14[1];
    v22 = *v14;
    v23 = v10[1];
    v24 = *v10;
    while (1)
    {
      v25 = *v12;
      v26 = (9 * v16 + v21 + 3 * (v18 + v23) + 8) >> 4;
      v27 = ((9 * v15 + v22 + 3 * (v17 + v24) + 8) >> 4) - 128;
      v28 = v26 - 128;
      v29 = v25 + ((-11700 * v28 - 5638 * v27 + 0x2000) >> 14);
      v30 = v25 + ((29032 * v27 + 0x2000) >> 14);
      v31 = -1;
      if (v25 + ((22970 * v28 + 0x2000) >> 14) >= 255)
      {
        v32 = 255;
      }

      else
      {
        v32 = v25 + ((22970 * v28 + 0x2000) >> 14);
      }

      v33 = v32 & ~(v32 >> 31);
      if (v29 >= 255)
      {
        v34 = 255;
      }

      else
      {
        v34 = v29;
      }

      v35 = v34 & ~(v34 >> 31);
      if (v30 >= 255)
      {
        v36 = 255;
      }

      else
      {
        v36 = v30;
      }

      v37 = v36 & ~(v36 >> 31);
      if (a4 == 3)
      {
        v38 = v35;
        v31 = v33;
        LOBYTE(v33) = -1;
        LOBYTE(v35) = v37;
      }

      else
      {
        if (a4 != 2)
        {
          if (!a4)
          {
            v31 = v37;
            LOBYTE(v37) = v35;
            LOBYTE(v35) = v33;
            LOBYTE(v33) = -1;
          }

          goto LABEL_42;
        }

        v38 = v33;
        LOBYTE(v33) = v37;
      }

      LOBYTE(v37) = v38;
LABEL_42:
      *v20 = v33;
      v20[1] = v35;
      v20[2] = v37;
      v20[3] = v31;
      v39 = v12[1];
      v24 = *v10;
      v23 = v10[1];
      v15 = v10[2];
      v16 = v10[3];
      v22 = *v14;
      v21 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v40 = &v20[*(a3 + 28)];
      v41 = ((9 * v24 + v17 + 3 * (v22 + v15) + 8) >> 4) - 128;
      v42 = ((9 * v23 + v18 + 3 * (v21 + v16) + 8) >> 4) - 128;
      v43 = v39 + ((22970 * v42 + 0x2000) >> 14);
      v44 = v39 + ((-11700 * v42 - 5638 * v41 + 0x2000) >> 14);
      v45 = v39 + ((29032 * v41 + 0x2000) >> 14);
      if (v43 >= 255)
      {
        v43 = 255;
      }

      v46 = v43 & ~(v43 >> 31);
      if (v44 >= 255)
      {
        v44 = 255;
      }

      v47 = v44 & ~(v44 >> 31);
      if (v45 >= 255)
      {
        v45 = 255;
      }

      v48 = v45 & ~(v45 >> 31);
      if (a4)
      {
        v49 = v46;
      }

      else
      {
        v49 = -1;
      }

      if (a4)
      {
        v50 = v47;
      }

      else
      {
        v50 = v46;
      }

      if (a4)
      {
        v51 = v48;
      }

      else
      {
        v51 = v47;
      }

      if (a4)
      {
        v52 = -1;
      }

      else
      {
        v52 = v48;
      }

      if (a4 == 2)
      {
        v49 = v48;
        v50 = v47;
        v51 = v46;
        v52 = -1;
      }

      if (a4 == 3)
      {
        v49 = -1;
        v50 = v48;
        v53 = v47;
      }

      else
      {
        v53 = v51;
      }

      if (a4 != 3)
      {
        LOBYTE(v46) = v52;
      }

      *v40 = v49;
      v40[1] = v50;
      v40[2] = v53;
      v40[3] = v46;
      v54 = *(a2 + 28);
      v10 += v54;
      v14 += v54;
      v19 += 2;
      v12 += 2;
      v20 += 2 * *(a3 + 28);
      if (v19 >= *(result + 2) - 2)
      {
        v9 = v85;
        goto LABEL_70;
      }
    }
  }

  return result;
}

_DWORD *ConvertREDEYEFORMATtoYCbCr(_DWORD *result, uint64_t *a2, uint64_t *a3, int a4)
{
  v75 = result;
  v4 = result[3];
  if (v4 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *a3;
  v19 = *a2;
  v74 = *(a3 + 7);
  v57 = *(a3 + 4);
  v20 = result[7];
  v65 = v20 + 3;
  v21 = result[4];
  v72 = v20 + 2;
  v22 = *(a2 + 7);
  v63 = v20 + v21 + 3;
  v23 = *(a2 + 4);
  v71 = v20 + v21 + 2;
  v70 = v20 + v21 + 1;
  v62 = v20 + v21;
  v56 = 2 * v23;
  v24 = (v18 + 1);
  v25 = *v75;
  v26 = v19 + v22;
  v27 = v19 + v23;
  v28 = v19 + v22 + v23;
  v69 = v20 + 1;
  v61 = v21 + 3;
  v68 = v21 + 2;
  v66 = v75[7];
  v67 = v21 + 1;
  v73 = 2 * v20;
  v29 = v24;
  v64 = v75[4];
  v55 = 2 * v21;
  v30 = v75[2];
  do
  {
    if (v30 < 1)
    {
      goto LABEL_21;
    }

    v60 = v17;
    v31 = v29;
    v32 = 0;
    v33 = 0;
    v58 = v31;
    v59 = v25;
    v34 = v25;
    do
    {
      if (a4 > 1)
      {
        if (a4 == 2)
        {
          v46 = v34 + 2;
          v35 = v34 + 1;
          v36 = v34;
          v44 = v71;
          v37 = v72;
          v43 = v68;
          v39 = v69;
          v41 = v66;
          v38 = v67;
          v40 = v64;
          v45 = v70;
          v42 = v62;
        }

        else
        {
          if (a4 != 3)
          {
            goto LABEL_15;
          }

          v46 = v34 + 3;
          v35 = v34 + 2;
          v36 = v34 + 1;
          v37 = v65;
          v45 = v71;
          v39 = v72;
          v38 = v68;
          v41 = v69;
          v43 = v61;
          v40 = v67;
          v44 = v63;
          v42 = v70;
        }
      }

      else if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_15;
        }

        v35 = v34 + 1;
        v36 = v34 + 2;
        v37 = v66;
        v38 = v67;
        v40 = v68;
        v39 = v69;
        v42 = v71;
        v41 = v72;
        v43 = v64;
        v44 = v62;
        v45 = v70;
        v46 = v34;
      }

      else
      {
        v46 = v34 + 1;
        v35 = v34 + 2;
        v36 = v34 + 3;
        v38 = v68;
        v37 = v69;
        v45 = v71;
        v39 = v72;
        v41 = v65;
        v43 = v67;
        v40 = v61;
        v44 = v70;
        v42 = v63;
      }

      v15 = *v35;
      v16 = *v46;
      v14 = *v36;
      v13 = v34[v37];
      v12 = v34[v39];
      v11 = v34[v41];
      v10 = v34[v43];
      v9 = v34[v38];
      v8 = v34[v40];
      v7 = v34[v44];
      v6 = v34[v45];
      v5 = v34[v42];
LABEL_15:
      v47 = (v16 + v13 + v10 + v7 + 2) >> 2;
      v48 = (v15 + v12 + v9 + v6 + 2) >> 2;
      v49 = -5427 * v48 - 2765 * v47;
      v50 = -6860 * v48 + (v47 << 13);
      v51 = (v14 + v11 + v8 + v5 + 2) >> 2;
      v52 = v50 - 1332 * v51;
      *(v19 + v32) = (9617 * v15 + 4899 * v16 + 1868 * v14 + 0x2000) >> 14;
      *(v26 + v32) = (9617 * v12 + 4899 * v13 + 1868 * v11 + 0x2000) >> 14;
      *(v27 + v32) = (9617 * v9 + 4899 * v10 + 1868 * v8 + 0x2000) >> 14;
      *(v28 + v32) = (9617 * v6 + 4899 * v7 + 1868 * v5 + 0x2000) >> 14;
      v53 = (v49 + (v51 << 13) + 0x2000) >> 14;
      if (v53 >= 127)
      {
        LOBYTE(v53) = 127;
      }

      *(v31 - 1) = v53 ^ 0x80;
      v54 = (v52 + 0x2000) >> 14;
      if (v54 >= 127)
      {
        LOBYTE(v54) = 127;
      }

      *v31 = v54 ^ 0x80;
      v33 += 2;
      v34 += v73;
      v30 = v75[2];
      v31 += v74;
      v32 += 2 * v22;
    }

    while (v33 < v30);
    v4 = v75[3];
    v17 = v60;
    v29 = v58;
    v25 = v59;
LABEL_21:
    v17 += 2;
    v25 += v55;
    v19 += v56;
    result = v57;
    v29 = v57 + v29;
    v26 += v56;
    v27 += v56;
    v28 += v56;
  }

  while (v17 < v4);
  return result;
}

unsigned __int8 **ConvertRedChannel2toY(unsigned __int8 **result, unsigned __int8 **a2, uint64_t a3)
{
  v4 = *(result + 2);
  v5 = *(a2 + 2);
  if (v4 != 2 * v5)
  {
    v7 = "ConvertRedChannel2toY: widths do not match";

    return puts(v7);
  }

  v6 = *(result + 3);
  if (v6 != 2 * *(a2 + 3))
  {
    v7 = "ConvertRedChannel2toY: heights do not match";

    return puts(v7);
  }

  if (*(result + 4) < *(result + 7) * v4)
  {
    v7 = "ConvertRedChannel2toY: rowSamples is too small for Y bitmap";

    return puts(v7);
  }

  v8 = *(a2 + 4);
  if (v8 < *(a2 + 7) * v5)
  {
    v7 = "ConvertRedChannel2toY: rowSamples is too small for CbCr bitmap";

    return puts(v7);
  }

  if (*(a3 + 16) < *(a3 + 28) * *(a3 + 8))
  {
    v7 = "ConvertRedChannel2toY: rowSamples is too small for ARGB bitmap";

    return puts(v7);
  }

  if (v6 >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = *a3;
    v12 = *result;
    do
    {
      v13 = v9 & 1;
      if ((v9 & 1) == 0)
      {
        v8 = -v8;
      }

      if (v9 == ((v9 << 31 >> 31) & (v6 - 1)))
      {
        v8 = 0;
      }

      v14 = &v10[v8];
      v15 = *v10;
      v16 = v10[1];
      v17 = *v14;
      v18 = v14[1];
      if (*(result + 2) < 3)
      {
        v26 = *v10;
        v25 = v10[1];
        v24 = *v14;
        v23 = v14[1];
        v22 = v12;
        v21 = v11;
        v20 = v10;
      }

      else
      {
        v19 = 0;
        v20 = v10;
        v66 = v11;
        v21 = v11;
        v22 = v12;
        v23 = v14[1];
        v24 = *v14;
        v25 = v10[1];
        v26 = *v10;
        do
        {
          v27 = *v22;
          v28 = (9 * v16 + v23 + 3 * (v18 + v25) + 8) >> 4;
          v29 = ((9 * v15 + v24 + 3 * (v17 + v26) + 8) >> 4) - 128;
          v28 -= 128;
          v30 = v27 + ((22970 * v28 + 0x2000) >> 14);
          v31 = v27 + ((-11700 * v28 - 5638 * v29 + 0x2000) >> 14);
          v32 = v27 + ((29032 * v29 + 0x2000) >> 14);
          if (v30 >= 255)
          {
            v30 = 255;
          }

          v33 = v30 & ~(v30 >> 31);
          if (v31 >= 255)
          {
            v31 = 255;
          }

          v34 = v31 & ~(v31 >> 31);
          if (v32 >= 255)
          {
            v32 = 255;
          }

          v35 = v33 - (((v32 & ~(v32 >> 31)) + v34 + 1) >> 1);
          *v21 = v35 & ~(v35 >> 31);
          v36 = v22[1];
          v26 = *v20;
          v25 = v20[1];
          v15 = v20[2];
          v16 = v20[3];
          v24 = *v14;
          v23 = v14[1];
          v17 = v14[2];
          v18 = v14[3];
          v37 = ((9 * v26 + v17 + 3 * (v24 + v15) + 8) >> 4) - 128;
          v38 = ((9 * v25 + v18 + 3 * (v23 + v16) + 8) >> 4) - 128;
          v39 = v36 + ((22970 * v38 + 0x2000) >> 14);
          v40 = v36 + ((-11700 * v38 - 5638 * v37 + 0x2000) >> 14);
          v41 = v36 + ((29032 * v37 + 0x2000) >> 14);
          if (v39 >= 255)
          {
            v42 = 255;
          }

          else
          {
            v42 = v39;
          }

          v43 = v42 & ~(v42 >> 31);
          if (v40 >= 255)
          {
            v40 = 255;
          }

          v44 = v40 & ~(v40 >> 31);
          if (v41 >= 255)
          {
            v41 = 255;
          }

          v21[1] = (v43 - (((v41 & ~(v41 >> 31)) + v44 + 1) >> 1)) & ~((v43 - (((v41 & ~(v41 >> 31)) + v44 + 1) >> 1)) >> 31);
          v45 = *(a2 + 7);
          v20 += v45;
          v14 += v45;
          v19 += 2;
          v22 += 2;
          v21 += 2 * *(a3 + 28);
        }

        while (v19 < *(result + 2) - 2);
        v11 = v66;
        v13 = v9 & 1;
      }

      v46 = *v22;
      v47 = ((9 * v15 + v24 + 3 * (v17 + v26) + 8) >> 4) - 128;
      v48 = ((9 * v16 + v23 + 3 * (v18 + v25) + 8) >> 4) - 128;
      v49 = v46 + ((22970 * v48 + 0x2000) >> 14);
      v50 = v46 + ((-11700 * v48 - 5638 * v47 + 0x2000) >> 14);
      v51 = v46 + ((29032 * v47 + 0x2000) >> 14);
      if (v49 >= 255)
      {
        v52 = 255;
      }

      else
      {
        v52 = v49;
      }

      v53 = v52 & ~(v52 >> 31);
      if (v50 >= 255)
      {
        v50 = 255;
      }

      v54 = v50 & ~(v50 >> 31);
      if (v51 >= 255)
      {
        v51 = 255;
      }

      v55 = v53 - (((v51 & ~(v51 >> 31)) + v54 + 1) >> 1);
      *v21 = v55 & ~(v55 >> 31);
      v56 = v22[1];
      v57 = ((9 * *v20 + *v14 + 3 * (*v14 + *v20) + 8) >> 4) - 128;
      v58 = ((9 * v20[1] + v14[1] + 3 * (v14[1] + v20[1]) + 8) >> 4) - 128;
      v59 = v56 + ((22970 * v58 + 0x2000) >> 14);
      v60 = v56 + ((-11700 * v58 - 5638 * v57 + 0x2000) >> 14);
      v61 = v56 + ((29032 * v57 + 0x2000) >> 14);
      if (v59 >= 255)
      {
        v62 = 255;
      }

      else
      {
        v62 = v59;
      }

      v63 = v62 & ~(v62 >> 31);
      if (v60 >= 255)
      {
        v60 = 255;
      }

      v64 = v60 & ~(v60 >> 31);
      if (v61 >= 255)
      {
        v61 = 255;
      }

      v65 = v63 - (((v61 & ~(v61 >> 31)) + v64 + 1) >> 1);
      v21[1] = v65 & ~(v65 >> 31);
      v8 = *(a2 + 4);
      v10 += v8 * v13;
      ++v9;
      v6 = *(result + 3);
      v12 += *(result + 4);
      v11 += *(a3 + 16);
    }

    while (v9 < v6);
  }

  return result;
}

unsigned __int8 **ConvertRedChannel5toY(unsigned __int8 **result, unsigned __int8 **a2, uint64_t a3)
{
  v4 = *(result + 2);
  v5 = *(a2 + 2);
  if (v4 != 2 * v5)
  {
    v7 = "ConvertRedChannel5toY: widths do not match";

    return puts(v7);
  }

  v6 = *(result + 3);
  if (v6 != 2 * *(a2 + 3))
  {
    v7 = "ConvertRedChannel5toY: heights do not match";

    return puts(v7);
  }

  if (*(result + 4) < *(result + 7) * v4)
  {
    v7 = "ConvertRedChannel5toY: rowSamples is too small for Y bitmap";

    return puts(v7);
  }

  v8 = *(a2 + 4);
  if (v8 < *(a2 + 7) * v5)
  {
    v7 = "ConvertRedChannel5toY: rowSamples is too small for CbCr bitmap";

    return puts(v7);
  }

  if (*(a3 + 16) < *(a3 + 28) * *(a3 + 8))
  {
    v7 = "ConvertRedChannel5toY: rowSamples is too small for ARGB bitmap";

    return puts(v7);
  }

  if (v6 >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = *a3;
    v12 = *result;
    do
    {
      if ((v9 & 1) == 0)
      {
        v8 = -v8;
      }

      if (v9 == ((v9 << 31 >> 31) & (v6 - 1)))
      {
        v8 = 0;
      }

      v13 = &v10[v8];
      v14 = *v10;
      v15 = v10[1];
      v16 = *v13;
      v17 = v13[1];
      if (*(result + 2) < 3)
      {
        v24 = *v10;
        v23 = v10[1];
        v22 = *v13;
        v21 = v13[1];
        v37 = v12;
        v20 = v11;
        v19 = v10;
      }

      else
      {
        v18 = 0;
        v19 = v10;
        v53 = v12;
        v54 = v11;
        v20 = v11;
        v21 = v13[1];
        v22 = *v13;
        v23 = v10[1];
        v24 = *v10;
        do
        {
          v25 = *v12;
          v26 = ((9 * v15 + v21 + 3 * (v17 + v23) + 8) >> 4) - 128;
          v27 = v25 + ((22970 * v26 + 0x2000) >> 14);
          v28 = v25 + ((-5638 * ((9 * v14 + v22 + 3 * (v16 + v24) + 8) >> 4) + 729856 - 11700 * v26) >> 14);
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v29 = v27 & ~(v27 >> 31);
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v30 = v29 - ((v28 & ~(v28 >> 31)) + ((v29 * (v28 & ~(v28 >> 31)) + 128) >> 8));
          *v20 = v30 & ~(v30 >> 31);
          v31 = v12[1];
          v24 = *v19;
          v23 = v19[1];
          v14 = v19[2];
          v15 = v19[3];
          v22 = *v13;
          v21 = v13[1];
          v16 = v13[2];
          v17 = v13[3];
          v32 = ((9 * v23 + v17 + 3 * (v21 + v15) + 8) >> 4) - 128;
          v33 = v31 + ((-5638 * ((9 * v24 + v16 + 3 * (v22 + v14) + 8) >> 4) + 729856 - 11700 * v32) >> 14);
          if (v31 + ((22970 * v32 + 0x2000) >> 14) >= 255)
          {
            v34 = 255;
          }

          else
          {
            v34 = v31 + ((22970 * v32 + 0x2000) >> 14);
          }

          v35 = v34 & ~(v34 >> 31);
          if (v33 >= 255)
          {
            v33 = 255;
          }

          v20[1] = (v35 - ((v33 & ~(v33 >> 31)) + ((v35 * (v33 & ~(v33 >> 31)) + 128) >> 8))) & ~((v35 - ((v33 & ~(v33 >> 31)) + ((v35 * (v33 & ~(v33 >> 31)) + 128) >> 8))) >> 31);
          v36 = *(a2 + 7);
          v19 += v36;
          v13 += v36;
          v18 += 2;
          v12 += 2;
          v20 += 2 * *(a3 + 28);
        }

        while (v18 < *(result + 2) - 2);
        v37 = v53;
        v11 = v54;
      }

      v38 = *v12;
      v39 = ((9 * v15 + v21 + 3 * (v17 + v23) + 8) >> 4) - 128;
      v40 = v38 + ((22970 * v39 + 0x2000) >> 14);
      v41 = v38 + ((-5638 * ((9 * v14 + v22 + 3 * (v16 + v24) + 8) >> 4) + 729856 - 11700 * v39) >> 14);
      if (v40 >= 255)
      {
        v42 = 255;
      }

      else
      {
        v42 = v40;
      }

      v43 = v42 & ~(v42 >> 31);
      if (v41 >= 255)
      {
        v41 = 255;
      }

      v44 = v43 - ((v41 & ~(v41 >> 31)) + ((v43 * (v41 & ~(v41 >> 31)) + 128) >> 8));
      *v20 = v44 & ~(v44 >> 31);
      v45 = v12[1];
      v46 = (9 * *v19 + *v13 + 3 * (*v13 + *v19) + 8) >> 4;
      v47 = ((9 * v19[1] + v13[1] + 3 * (v13[1] + v19[1]) + 8) >> 4) - 128;
      v48 = v45 + ((22970 * v47 + 0x2000) >> 14);
      v49 = v45 + ((-5638 * v46 + 729856 - 11700 * v47) >> 14);
      if (v48 >= 255)
      {
        v50 = 255;
      }

      else
      {
        v50 = v48;
      }

      v51 = v50 & ~(v50 >> 31);
      if (v49 >= 255)
      {
        v49 = 255;
      }

      v52 = v51 - ((v49 & ~(v49 >> 31)) + ((v51 * (v49 & ~(v49 >> 31)) + 128) >> 8));
      v20[1] = v52 & ~(v52 >> 31);
      v8 = *(a2 + 4);
      v10 += v8 * (v9++ & 1);
      v6 = *(result + 3);
      v12 = &v37[*(result + 4)];
      v11 += *(a3 + 16);
    }

    while (v9 < v6);
  }

  return result;
}

void CI::Perspective::EDLinesCPU::EDLinesCPU(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v6 = &CI::Perspective::EDLinesParamsDefault;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  if (a6)
  {
    v6 = a6;
  }

  *a1 = &unk_1F1033038;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  CI::Perspective::EDLinesCPU::createGradMap(a1);
}

void sub_19CE06A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v7 = v3[17];
  if (v7)
  {
    v3[18] = v7;
    operator delete(v7);
  }

  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](va);
  v8 = *v5;
  if (*v5)
  {
    v3[12] = v8;
    operator delete(v8);
  }

  v9 = *v4;
  if (*v4)
  {
    v3[8] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void CI::Perspective::EDLinesCPU::sparseAnchors(CI::Perspective::EDLinesCPU *this)
{
  v2 = *(this + 1);
  v3 = *v2;
  v4 = v2[1];
  std::vector<CI::KernelArgumentType>::reserve(this + 7, (*(*(this + 6) + 8) / v3 * (**(this + 6) / v3)) >> 1);
  v5 = *(this + 6);
  if ((v5[1] - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v6 = 0;
    v7 = *v5;
    v8 = 1;
    v9 = 2;
    while (1)
    {
      v10 = v9;
      v11 = v6;
      v12 = v8;
      if ((v7 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_23:
      v8 = v12 + v3;
      v9 = v10 + v3;
      v6 = v11 + v3;
      if (v5[1] - 1 <= (v12 + v3))
      {
        goto LABEL_26;
      }
    }

    v13 = 8;
    v14 = 1;
    while (1)
    {
      v16 = v5[2];
      v15 = v5[3];
      v17 = v15 + v12 * v16;
      v18 = *(v17 + 4 * v14);
      v19 = -v18;
      if (v18 >= 0.0)
      {
        v19 = *(v17 + 4 * v14);
      }

      if (v19 < 0.001)
      {
        goto LABEL_8;
      }

      if (v18 <= 0.0)
      {
        v22 = *(v17 + v13 - 8);
        if (v22 < 0.0)
        {
          v22 = -v22;
        }

        if ((v19 - v22) < v4)
        {
          goto LABEL_8;
        }

        v21 = *(v17 + v13);
      }

      else
      {
        v20 = *(v15 + v11 * v16 + 4 * v14);
        if (v20 < 0.0)
        {
          v20 = -v20;
        }

        if ((v19 - v20) < v4)
        {
          goto LABEL_8;
        }

        v21 = *(v15 + v10 * v16 + 4 * v14);
      }

      if (v21 < 0.0)
      {
        v21 = -v21;
      }

      if ((v19 - v21) >= v4)
      {
        v38 = v14 | (v12 << 16);
        std::vector<EDAnchor>::push_back[abi:nn200100](this + 56, &v38);
        v5 = *(this + 6);
        v7 = *v5;
      }

LABEL_8:
      ++v14;
      v13 += 4;
      if (v7 - 1 <= v14)
      {
        goto LABEL_23;
      }
    }
  }

  v7 = *v5;
LABEL_26:
  if ((v7 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_49;
  }

  v23 = 1;
  v24 = 1;
  do
  {
    if ((v5[1] - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_48;
    }

    v25 = 0;
    v26 = v24 | 0x10000;
    do
    {
      v28 = v5[2];
      v27 = v5[3];
      v29 = (v27 + v28 + v28 * v25 + 4 * v23);
      v30 = -*v29;
      if (*v29 >= 0.0)
      {
        v30 = *v29;
      }

      if (v30 >= 0.001)
      {
        if (*v29 <= 0.0)
        {
          v34 = *(v29 - 1);
          if (v34 < 0.0)
          {
            v34 = -v34;
          }

          if ((v30 - v34) >= v4)
          {
            v33 = v29[1];
            goto LABEL_44;
          }
        }

        else
        {
          v32 = *(v27 + v28 * v25 + 4 * v23);
          if (v32 < 0.0)
          {
            v32 = -v32;
          }

          if ((v30 - v32) >= v4)
          {
            v33 = *(v27 + v28 * (v25 + 2) + 4 * v23);
LABEL_44:
            if (v33 < 0.0)
            {
              v33 = -v33;
            }

            if ((v30 - v33) >= v4)
            {
              v37 = v26;
              std::vector<EDAnchor>::push_back[abi:nn200100](this + 56, &v37);
              v5 = *(this + 6);
            }
          }
        }
      }

      v31 = v25 + 2;
      ++v25;
      v26 += 0x10000;
    }

    while (v5[1] - 1 > v31);
    v7 = *v5;
LABEL_48:
    v24 += v3;
    v23 = v24;
  }

  while (v7 - 1 > v24);
LABEL_49:
  if (EDLines_Debug(void)::token != -1)
  {
    CI::Perspective::EDLinesCPU::sparseAnchors();
  }

  if (EDLines_Debug(void)::v)
  {
    v35 = (*(*this + 24))(this);
    CI::Perspective::CIImageToFile(v35, @"/tmp/ED_anchors.png", v36, *MEMORY[0x1E695F050]);
  }
}

void sub_19CE07470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void CI::Perspective::EDLinesCPU::extractLines(CI::Perspective::EDLinesCPU *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v65 = (this + 112);
  std::vector<std::vector<CI::Perspective::LSR<EDAnchor>>>::reserve(this + 14, (*(this + 12) - *(this + 11)) >> 4);
  v6 = *(this + 11);
  for (i = *(this + 12); v6 != i; v6 += 16)
  {
    v7 = *(this + 15);
    v8 = *(this + 16);
    if (v7 >= v8)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v65) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v65) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      *&v70 = v65;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<IRect>>>(v65, v13);
      }

      v14 = 24 * v10;
      v9 = 24 * v10 + 24;
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      v15 = *(this + 14);
      v16 = *(this + 15) - v15;
      v17 = v14 - v16;
      memcpy((v14 - v16), v15, v16);
      v18 = *(this + 14);
      *(this + 14) = v17;
      *(this + 15) = v9;
      v19 = *(this + 16);
      *(this + 16) = 0;
      *&v69 = v18;
      *(&v69 + 1) = v19;
      __p[0] = v18;
      __p[1] = v18;
      std::__split_buffer<std::vector<CI::Perspective::LSR<EDAnchor>>>::~__split_buffer(__p);
    }

    else
    {
      v9 = (v7 + 3);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    *(this + 15) = v9;
    if (v3 < *(v6 + 8))
    {
      v20 = 0;
      v21 = (v9 - 24);
      do
      {
        CI::Perspective::LSRInit<EDAnchor>((*v6 + 4 * v20), v3, __p, v5);
        v20 += v3;
        v24 = *(v6 + 8);
        v25 = *(&v73 + 1);
        if (v20 < v24 && *(&v73 + 1) <= v4)
        {
          v27 = __p[1];
          v28 = *(&v69 + 1);
          LODWORD(v29) = v69;
          v30 = *(&v69 + 3);
          v31 = *(&v69 + 2);
          v32 = *(&v70 + 1);
          LODWORD(v33) = v70;
          v34 = *(&v70 + 3);
          v35 = *(&v70 + 2);
          v36 = *&v71;
          v37 = __p[0] + 4 * __p[1] + 2;
          do
          {
            LOWORD(v22) = *(v37 - 1);
            v38 = LODWORD(v22);
            LOWORD(v23) = *v37;
            v23 = LODWORD(v23);
            v29 = v29 + v38;
            v28 = v28 + v23;
            v31 = v31 + (v38 * v38);
            v30 = v30 + (v23 * v23);
            v33 = v33 + (v38 * v23);
            if (v32 >= v38)
            {
              v32 = v38;
            }

            if (v35 <= v38)
            {
              v35 = v38;
            }

            if (v34 >= v23)
            {
              v34 = v23;
            }

            if (v36 <= v23)
            {
              v36 = v23;
            }

            v39 = v25 * v27;
            v40 = v39 + ((((*&v73 + (*(&v72 + 3) * v23)) / *(&v72 + 2)) + v38) * (((*&v73 + (*(&v72 + 3) * v23)) / *(&v72 + 2)) + v38));
            v41 = v39 + ((((*&v73 + (*(&v72 + 2) * v38)) / *(&v72 + 3)) + v23) * (((*&v73 + (*(&v72 + 2) * v38)) / *(&v72 + 3)) + v23));
            if ((v35 - v32) <= (v36 - v34))
            {
              v41 = v40;
            }

            v22 = ++v27;
            v25 = v41 / v27;
            if (++v20 >= v24)
            {
              break;
            }

            v37 += 2;
          }

          while (v25 <= v4);
          __p[1] = v27;
          *&v69 = __PAIR64__(LODWORD(v28), LODWORD(v29));
          *(&v69 + 1) = __PAIR64__(LODWORD(v30), LODWORD(v31));
          *&v70 = __PAIR64__(LODWORD(v32), LODWORD(v33));
          *(&v70 + 1) = __PAIR64__(LODWORD(v34), LODWORD(v35));
          *&v71 = v36;
        }

        *(&v73 + 1) = v25;
        CI::Perspective::LSRUpdateFit<EDAnchor>(__p);
        v42 = *(v9 - 16);
        v43 = *(v9 - 8);
        if (v42 >= v43)
        {
          v45 = 0x2E8BA2E8BA2E8BA3 * ((v42 - *v21) >> 3);
          v46 = v45 + 1;
          if ((v45 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
          }

          v47 = 0x2E8BA2E8BA2E8BA3 * ((v43 - *v21) >> 3);
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          if (v47 >= 0x1745D1745D1745DLL)
          {
            v48 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::LSR<EDAnchor>>>(v9 - 24, v48);
          }

          v49 = 88 * v45;
          *(v49 + 32) = v70;
          *(v49 + 48) = v71;
          *(v49 + 64) = v72;
          *(v49 + 80) = v73;
          *v49 = *__p;
          *(v49 + 16) = v69;
          v44 = 88 * v45 + 88;
          v50 = *(v9 - 24);
          v51 = *(v9 - 16) - v50;
          v52 = 88 * v45 - v51;
          memcpy((v49 - v51), v50, v51);
          v53 = *(v9 - 24);
          *(v9 - 24) = v52;
          *(v9 - 16) = v44;
          *(v9 - 8) = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *(v42 + 32) = v70;
          *(v42 + 48) = v71;
          *(v42 + 64) = v72;
          *(v42 + 80) = v73;
          *v42 = *__p;
          *(v42 + 16) = v69;
          v44 = v42 + 88;
        }

        *(v9 - 16) = v44;
      }

      while (*(v6 + 8) - v20 > v3);
    }
  }

  if (EDLines_Debug(void)::token != -1)
  {
    CI::Perspective::EDLinesCPU::sparseAnchors();
  }

  if (EDLines_Debug(void)::v)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v69 = 0;
    v54 = *(this + 14);
    v55 = *(this + 15);
    while (v54 != v55)
    {
      v56 = *v54;
      v57 = v54[1];
      while (v56 != v57)
      {
        v58 = *(*(this + 6) + 8);
        v59 = *(v56 + 56);
        v60 = *(v56 + 64);
        *(&v59 + 1) = v58 - *(&v59 + 1);
        *(&v60 + 1) = v58 - *(&v60 + 1);
        *&v67 = v59;
        *(&v67 + 1) = v60;
        std::vector<CI::Perspective::Line>::push_back[abi:nn200100](__p, &v67);
        v56 += 88;
      }

      v54 += 3;
    }

    v61 = (*(*this + 32))(this);
    v62 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
    v63 = CI::Perspective::plotLines<CI::Perspective::Line>(v61, v62, __p);
    CI::Perspective::CIImageToFile(v63, @"/tmp/ED_linesExtracted.png", v64, *MEMORY[0x1E695F050]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}