double CI::sw_luminosityBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  LODWORD(v15) = HIDWORD(*v11);
  v16 = vmulq_n_f32(*v11, 1.0 / fmaxf(v15, 0.00001));
  v16.f32[3] = v15;
  *v14.i64 = v14.f32[1] * 0.59 + v14.f32[0] * 0.3 + v14.f32[2] * 0.11;
  v14.f32[0] = *v14.i64;
  v17 = v16.f32[1] * 0.59 + v16.f32[0] * 0.3 + v16.f32[2] * 0.11;
  v14.f32[0] = v14.f32[0] - v17;
  v18 = vaddq_f32(v16, vdupq_lane_s32(*v14.f32, 0));
  v20 = v18.f32[2];
  v19 = v18.f32[1] * 0.59 + v18.f32[0] * 0.3 + v18.f32[2] * 0.11;
  *&v19 = v19;
  *&v20 = fminf(fminf(v18.f32[0], v18.f32[1]), v18.f32[2]);
  v21 = fmaxf(fmaxf(v18.f32[0], v18.f32[1]), v18.f32[2]);
  if (*&v20 < 0.0)
  {
    v22 = vdupq_lane_s32(*&v19, 0);
    *&v20 = *&v19 - *&v20;
    v18 = vaddq_f32(v22, vdivq_f32(vmulq_n_f32(vsubq_f32(v18, v22), *&v19), vdupq_lane_s32(*&v20, 0)));
  }

  if (v21 > 1.0)
  {
    v23 = vdupq_lane_s32(*&v19, 0);
    v24 = vmulq_n_f32(vsubq_f32(v18, v23), 1.0 - *&v19);
    *&v19 = v21 - *&v19;
    v18 = vaddq_f32(v23, vdivq_f32(v24, vdupq_lane_s32(*&v19, 0)));
  }

  if (v13 >= 0.000001)
  {
    v18.i32[3] = 1.0;
    __asm { FMOV            V6.4S, #1.0 }

    v12.i64[0] = vaddq_f32(vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v15)), vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v18, 0), _Q6), *v7, 3), v12, 3)).u64[0];
  }

  return *v12.i64;
}

double CI::sw_subtractBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vsubq_f32(vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001)), vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001)));
  v14.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v14, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_divideBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  LODWORD(v12) = HIDWORD(*v7);
  v13 = vmulq_n_f32(*v7, 1.0 / fmaxf(v12, 0.00001));
  v13.f32[3] = v12;
  LODWORD(v14) = HIDWORD(*v11);
  v15 = vdivq_f32(vmulq_n_f32(*v11, 1.0 / fmaxf(v14, 0.00001)), vmaxnmq_f32(v13, vdupq_n_s32(0x33D6BF95u)));
  v15.i32[3] = 1.0;
  __asm { FMOV            V3.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v15, 0), _Q3), *v7, 3), *v11, 3), vaddq_f32(vmulq_n_f32(*v11, 1.0 - v12), vmulq_n_f32(*v7, 1.0 - v14))).u64[0];
  return result;
}

double CI::sw_linearBurnBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  __asm { FMOV            V4.4S, #-1.0 }

  v19 = vaddq_f32(vaddq_f32(vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001)), vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001))), _Q4);
  v19.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v19, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_linearDodgeBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vaddq_f32(vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001)), vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001)));
  v14.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v14, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_vividLightBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  LODWORD(v12) = HIDWORD(*v7);
  v13 = vmulq_n_f32(*v7, 1.0 / fmaxf(v12, 0.00001));
  v13.f32[3] = v12;
  LODWORD(v14) = HIDWORD(*v11);
  v15 = vmulq_n_f32(*v11, 1.0 / fmaxf(v14, 0.00001));
  v15.f32[3] = v14;
  __asm { FMOV            V7.4S, #1.0 }

  v21 = vdupq_n_s32(0x33D6BF95u);
  v22 = vsubq_f32(_Q7, vdivq_f32(vsubq_f32(_Q7, v15), vmaxnmq_f32(vaddq_f32(v13, v13), v21)));
  v23 = vsubq_f32(_Q7, v13);
  v24 = vdivq_f32(v15, vmaxnmq_f32(vaddq_f32(v23, v23), v21));
  v23.i64[0] = 0x3F0000003F000000;
  v23.i64[1] = 0x3F0000003F000000;
  v25 = vbslq_s8(vcgtq_f32(v13, v23), v24, v22);
  v25.i32[3] = 1.0;
  *&result = vaddq_f32(vaddq_f32(vmulq_n_f32(*v11, 1.0 - v12), vmulq_n_f32(*v7, 1.0 - v14)), vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v25, 0), _Q7), *v7, 3), *v11, 3)).u64[0];
  return result;
}

double CI::sw_linearLightBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v15 = vaddq_f32(vaddq_f32(v14, v14), vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001)));
  __asm { FMOV            V4.4S, #-1.0 }

  v21 = vaddq_f32(v15, _Q4);
  v21.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v21, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_pinLightBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  v16 = vaddq_f32(v14, v14);
  __asm { FMOV            V7.4S, #-1.0 }

  v22 = vaddq_f32(v16, _Q7);
  v23 = vbslq_s8(vcgtq_f32(v22, v15), v22, vbslq_s8(vcgtq_f32(v16, v15), v15, v16));
  v23.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v23, 0), _Q4), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_hardMixBlendMode(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14.f32[3] = v13;
  v15 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v15.i32[3] = HIDWORD(*v11);
  __asm { FMOV            V7.4S, #1.0 }

  v21 = vbslq_s8(vcgtq_f32(v14, vsubq_f32(_Q7, v15)), _Q7, 0);
  v21.i32[3] = 1.0;
  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v21, 0), _Q7), *v7, 3), v12, 3), vaddq_f32(vmulq_n_f32(v12, 1.0 - v13), vmulq_n_f32(*v7, 1.0 - v12.f32[3]))).u64[0];
  return result;
}

double CI::sw_darkerColorBlendMode(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x4_t a10, float32x4_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 40);
  v17 = *(v11 + 32);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (v16 == 5)
  {
    v19 = v18;
  }

  LODWORD(v20) = HIDWORD(*v15);
  v21 = vmulq_n_f32(*v15, 1.0 / fmaxf(v20, 0.00001));
  LODWORD(v22) = HIDWORD(*v19);
  v23 = vmulq_n_f32(*v19, 1.0 / fmaxf(v22, 0.00001));
  *a10.i64 = *&v21.i32[1] * 0.59 + *v21.i32 * 0.3 + *&v21.i32[2] * 0.11;
  a10.f32[0] = *a10.i64;
  *a11.i64 = *&v23.i32[1] * 0.59 + *v23.i32 * 0.3 + *&v23.i32[2] * 0.11;
  a11.f32[0] = *a11.i64;
  v24 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a10, a11), 0), v23, v21);
  v24.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v24, 0), _Q4), *v15, 3), *v19, 3), vaddq_f32(vmulq_n_f32(*v19, 1.0 - v20), vmulq_n_f32(*v15, 1.0 - v22))).u64[0];
  return result;
}

double CI::sw_lighterColorBlendMode(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, float32x4_t a10, float32x4_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v11 + 40);
  v17 = *(v11 + 32);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (v16 == 5)
  {
    v19 = v18;
  }

  LODWORD(v20) = HIDWORD(*v15);
  v21 = vmulq_n_f32(*v15, 1.0 / fmaxf(v20, 0.00001));
  LODWORD(v22) = HIDWORD(*v19);
  v23 = vmulq_n_f32(*v19, 1.0 / fmaxf(v22, 0.00001));
  *a10.i64 = *&v21.i32[1] * 0.59 + *v21.i32 * 0.3 + *&v21.i32[2] * 0.11;
  a10.f32[0] = *a10.i64;
  *a11.i64 = *&v23.i32[1] * 0.59 + *v23.i32 * 0.3 + *&v23.i32[2] * 0.11;
  a11.f32[0] = *a11.i64;
  v24 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a11, a10), 0), v23, v21);
  v24.i32[3] = 1.0;
  __asm { FMOV            V4.4S, #1.0 }

  *&result = vaddq_f32(vmulq_laneq_f32(vmulq_laneq_f32(vminnmq_f32(vmaxnmq_f32(v24, 0), _Q4), *v15, 3), *v19, 3), vaddq_f32(vmulq_n_f32(*v19, 1.0 - v20), vmulq_n_f32(*v15, 1.0 - v22))).u64[0];
  return result;
}

unint64_t CI::sw_plusDarker(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = vaddq_f32(*v7, *v11);
  v13 = vsubq_f32(vdupq_laneq_s32(v12, 3), v12);
  v13.i32[3] = v12.i32[3];
  v14 = vmaxnmq_f32(v13, 0);
  __asm { FMOV            V1.4S, #1.0 }

  v20 = vminnmq_f32(v14, _Q1);
  return vsubq_f32(vdupq_laneq_s32(v20, 3), v20).u64[0];
}

double CI::sw_plusLighter(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vaddq_f32(*v7, *v11).u64[0];
  return result;
}

unint64_t CI::sw_hueBlendMode_v0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v15 = v14;
  v15.f32[3] = v13;
  LODWORD(v16) = HIDWORD(*v11);
  v17 = vmulq_n_f32(*v11, 1.0 / fmaxf(v16, 0.00001));
  v18 = v17;
  *&v18.i32[3] = v16;
  v19.i64[0] = vrev64q_s32(v15).u64[0];
  v19.i64[1] = v15.i64[1];
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v14, vdupq_lane_s32(*v14.f32, 1)), 0), v15, v19);
  v21 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v20.i8, 1), vdupq_laneq_s32(v20, 2)), 0), v20, vuzp1q_s32(v20, vrev64q_s32(v20)));
  v22 = v21;
  v22.i32[0] = v21.i32[1];
  v23.i64[0] = vrev64q_s32(v18).u64[0];
  v23.i64[1] = v18.i64[1];
  v24 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v17, vdupq_lane_s32(*v17.f32, 1)), 0), v18, v23);
  v25 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v24.i8, 1), vdupq_laneq_s32(v24, 2)), 0), v24, vuzp1q_s32(v24, vrev64q_s32(v24)));
  v26 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v21, vdupq_lane_s32(*v21.f32, 1)), 0), v21, v22);
  v27 = v25;
  v27.i32[0] = v25.i32[1];
  v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, vdupq_lane_s32(*v25.f32, 1)), 0), v25, v27);
  if (*&v26.i32[2] + 0.00001 <= *v26.i32)
  {
    v29 = vmulq_n_f32(vsubq_f32(v15, vdupq_laneq_s32(v26, 2)), v28.f32[0] - v28.f32[2]);
    *v26.i32 = *v26.i32 - *&v26.i32[2];
    v28 = vaddq_f32(vdupq_laneq_s32(v28, 2), vdivq_f32(v29, vdupq_lane_s32(*v26.i8, 0)));
  }

  else
  {
    v28.i32[1] = v28.i32[2];
  }

  v28.i32[3] = HIDWORD(*v11);
  v30 = vmulq_laneq_f32(v17, v12, 3);
  v30.i32[3] = v28.i32[3];
  v31 = vmlaq_laneq_f32(vmulq_n_f32(v15, 1.0 - v16), v28, v12, 3);
  v31.i32[3] = 1.0;
  return vmlaq_laneq_f32(vmulq_n_f32(v30, 1.0 - v13), v31, *v7, 3).u64[0];
}

unint64_t CI::sw_saturationBlendMode_v0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v15 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v14 = vcgtq_f32(v15, vdupq_lane_s32(*v15.f32, 1)).u64[0];
  v15.f32[3] = v13;
  v16 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v17 = v16;
  v17.i32[3] = HIDWORD(*v11);
  v18.i64[0] = vrev64q_s32(v15).u64[0];
  v18.i64[1] = v15.i64[1];
  v19 = vbslq_s8(vdupq_lane_s32(v14, 0), v15, v18);
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v19.i8, 1), vdupq_laneq_s32(v19, 2)), 0), v19, vuzp1q_s32(v19, vrev64q_s32(v19)));
  v21 = v20;
  v21.i32[0] = v20.i32[1];
  v22 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v20, vdupq_lane_s32(*v20.f32, 1)), 0), v20, v21);
  v18.i64[0] = vrev64q_s32(v17).u64[0];
  v18.i64[1] = v17.i64[1];
  v23 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v16, vdupq_lane_s32(*v16.f32, 1)), 0), v17, v18);
  v24 = *v22.i32 + *&v22.i32[2];
  v25 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v23.i8, 1), vdupq_laneq_s32(v23, 2)), 0), v23, vuzp1q_s32(v23, vrev64q_s32(v23)));
  v26 = v25;
  v26.i32[0] = v25.i32[1];
  v27 = (*v22.i32 + *&v22.i32[2]) * 0.5;
  v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v25, vdupq_lane_s32(*v25.f32, 1)), 0), v25, v26);
  v29 = (*v28.i32 + *&v28.i32[2]) * 0.5;
  v30 = *v22.i32 - *&v22.i32[2];
  v31 = 2.0 - v24;
  if (v27 < 0.5)
  {
    v31 = v24;
  }

  v32 = v30 / fmaxf(v31, 0.000001);
  v33 = v29 + (v29 * v32);
  v34 = (v29 + v32) - (v29 * v32);
  if (v29 > 0.5)
  {
    v33 = v34;
  }

  v35 = -(v33 - v29 * 2.0);
  *&v35 = v35;
  if (*&v28.i32[2] + 0.00001 <= *v28.i32)
  {
    v41 = vmulq_n_f32(vsubq_f32(v17, vdupq_laneq_s32(v28, 2)), v33 - *&v35);
    *v28.i32 = *v28.i32 - *&v28.i32[2];
    _Q6 = vaddq_f32(vdupq_lane_s32(*&v35, 0), vdivq_f32(v41, vdupq_lane_s32(*v28.i8, 0)));
  }

  else
  {
    __asm { FMOV            V6.4S, #1.0 }

    _Q6.i64[0] = __PAIR64__(LODWORD(v35), LODWORD(v33));
    _Q6.i32[2] = LODWORD(v35);
  }

  _Q6.i32[3] = HIDWORD(*v11);
  v42 = vmulq_laneq_f32(v16, v12, 3);
  v42.i32[3] = _Q6.i32[3];
  v43 = vmlaq_laneq_f32(vmulq_n_f32(v15, 1.0 - v12.f32[3]), _Q6, v12, 3);
  v43.i32[3] = 1.0;
  return vmlaq_laneq_f32(vmulq_n_f32(v42, 1.0 - v13), v43, *v7, 3).u64[0];
}

unint64_t CI::sw_colorBlendMode_v0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v15 = v14;
  v15.f32[3] = v13;
  v16 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v17 = vcgtq_f32(v14, vdupq_lane_s32(*v14.f32, 1)).u64[0];
  v18 = v16;
  v18.i32[3] = HIDWORD(*v11);
  v19.i64[0] = vrev64q_s32(v15).u64[0];
  v19.i64[1] = v15.i64[1];
  v20 = vbslq_s8(vdupq_lane_s32(v17, 0), v15, v19);
  v21 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v20.i8, 1), vdupq_laneq_s32(v20, 2)), 0), v20, vuzp1q_s32(v20, vrev64q_s32(v20)));
  v22 = v21;
  v22.i32[0] = v21.i32[1];
  v23 = vdupq_lane_s32(*&vcgtq_f32(v16, vdupq_lane_s32(*v16.f32, 1)), 0);
  v24.i64[0] = vrev64q_s32(v18).u64[0];
  v24.i64[1] = v18.i64[1];
  v25 = vmulq_laneq_f32(v16, *v11, 3);
  v26 = vbslq_s8(v23, v18, v24);
  v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v21, vdupq_lane_s32(*v21.f32, 1)), 0), v21, v22);
  v28 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v26.i8, 1), vdupq_laneq_s32(v26, 2)), 0), v26, vuzp1q_s32(v26, vrev64q_s32(v26)));
  v32 = vdupq_lane_s32(*&vcgtq_f32(v28, vdupq_lane_s32(*v28.f32, 1)), 0);
  v30 = v28;
  LODWORD(v30.f64[0]) = v28.i32[1];
  v29 = vbslq_s8(v32, v28, v30);
  *v30.f64 = *v27.i32 + *&v27.i32[2];
  v31 = (*v29.i32 + *&v29.i32[2]) * 0.5;
  *v32.i32 = *v27.i32 - *&v27.i32[2];
  if (((*v27.i32 + *&v27.i32[2]) * 0.5) >= 0.5)
  {
    *v30.f64 = 2.0 - (*v27.i32 + *&v27.i32[2]);
  }

  v33 = *v32.i32 / fmaxf(*v30.f64, 0.000001);
  v34 = v31;
  v35 = v31 + (v31 * v33);
  v36 = (v31 + v33) - (v31 * v33);
  if (v31 <= 0.5)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v30.f64[0] = v37;
  v38 = -(v37 - v34 * 2.0);
  *&v38 = v38;
  v39 = vdupq_lane_s32(*v32.i8, 0);
  v40 = vdivq_f32(vmulq_n_f32(vsubq_f32(v15, vdupq_laneq_s32(v27, 2)), v37 - *&v38), v39);
  v41 = vdupq_lane_s32(*&v38, 0);
  *v39.i64 = *&v38 + 0.00001;
  v42 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v39, v30).i64[0], 0), v41, vaddq_f32(v41, v40));
  v42.i32[3] = HIDWORD(*v11);
  v25.i32[3] = v42.i32[3];
  v43 = vmlaq_laneq_f32(vmulq_n_f32(v15, 1.0 - v12.f32[3]), v42, v12, 3);
  v43.i32[3] = 1.0;
  return vmlaq_laneq_f32(vmulq_n_f32(v25, 1.0 - v13), v43, *v7, 3).u64[0];
}

unint64_t CI::sw_luminosityBlendMode_v0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v11;
  LODWORD(v13) = HIDWORD(*v7);
  v14 = vmulq_n_f32(*v7, 1.0 / fmaxf(v13, 0.00001));
  v15 = v14;
  *&v15.i32[3] = v13;
  v17 = vmulq_n_f32(v12, 1.0 / fmaxf(v12.f32[3], 0.00001));
  v16 = vcgtq_f32(v17, vdupq_lane_s32(*v17.f32, 1)).u64[0];
  v17.i32[3] = HIDWORD(*v11);
  v18.i64[0] = vrev64q_s32(v17).u64[0];
  v18.i64[1] = v17.i64[1];
  v19 = vbslq_s8(vdupq_lane_s32(v16, 0), v17, v18);
  v20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v19.i8, 1), vdupq_laneq_s32(v19, 2)), 0), v19, vuzp1q_s32(v19, vrev64q_s32(v19)));
  v21 = v20;
  v21.i32[0] = v20.i32[1];
  v22 = vdupq_lane_s32(*&vcgtq_f32(v14, vdupq_lane_s32(*v14.f32, 1)), 0);
  v23.i64[0] = vrev64q_s32(v15).u64[0];
  v23.i64[1] = v15.i64[1];
  v24 = vmulq_laneq_f32(v14, *v7, 3);
  v25 = vbslq_s8(v22, v15, v23);
  v26 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v20, vdupq_lane_s32(*v20.f32, 1)), 0), v20, v21);
  v27 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v25.i8, 1), vdupq_laneq_s32(v25, 2)), 0), v25, vuzp1q_s32(v25, vrev64q_s32(v25)));
  v31 = vdupq_lane_s32(*&vcgtq_f32(v27, vdupq_lane_s32(*v27.f32, 1)), 0);
  v29 = v27;
  LODWORD(v29.f64[0]) = v27.i32[1];
  v28 = vbslq_s8(v31, v27, v29);
  *v29.f64 = *v26.i32 + *&v26.i32[2];
  v30 = (*v28.i32 + *&v28.i32[2]) * 0.5;
  *v31.i32 = *v26.i32 - *&v26.i32[2];
  if (((*v26.i32 + *&v26.i32[2]) * 0.5) >= 0.5)
  {
    *v29.f64 = 2.0 - (*v26.i32 + *&v26.i32[2]);
  }

  v32 = *v31.i32 / fmaxf(*v29.f64, 0.000001);
  v33 = v30;
  v34 = v30 + (v30 * v32);
  v35 = (v30 + v32) - (v30 * v32);
  if (v30 <= 0.5)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  v29.f64[0] = v36;
  v37 = -(v36 - v33 * 2.0);
  *&v37 = v37;
  v38 = vdupq_lane_s32(*v31.i8, 0);
  v39 = vdivq_f32(vmulq_n_f32(vsubq_f32(v17, vdupq_laneq_s32(v26, 2)), v36 - *&v37), v38);
  v40 = vdupq_lane_s32(*&v37, 0);
  *v38.i64 = *&v37 + 0.00001;
  v41 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v38, v29).i64[0], 0), v40, vaddq_f32(v40, v39));
  v41.i32[3] = HIDWORD(*v7);
  v24.i32[3] = v41.i32[3];
  v42 = vmlaq_laneq_f32(vmulq_n_f32(v17, 1.0 - v13), v41, *v7, 3);
  v42.i32[3] = 1.0;
  return vmlaq_laneq_f32(vmulq_n_f32(v24, 1.0 - v12.f32[3]), v42, v12, 3).u64[0];
}

unint64_t CI::sw_linearBurnBlendMode_v0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  LODWORD(v12) = HIDWORD(*v7);
  v13 = vmulq_n_f32(*v7, 1.0 / fmaxf(v12, 0.00001));
  v13.f32[3] = v12;
  LODWORD(v14) = HIDWORD(*v11);
  v15 = vmulq_n_f32(*v11, 1.0 / fmaxf(v14, 0.00001));
  v16 = vmulq_laneq_f32(v15, *v11, 3);
  v15.f32[3] = v14;
  __asm { FMOV            V17.4S, #1.0 }

  v16.f32[3] = v14;
  v22 = vmlaq_laneq_f32(vmulq_n_f32(v13, 1.0 - v14), vminnmq_f32(vmaxnmq_f32(vsubq_f32(v15, vsubq_f32(_Q17, vmulq_laneq_f32(v13, *v7, 3))), 0), _Q17), *v11, 3);
  v22.i32[3] = 1.0;
  return vmlaq_laneq_f32(vmulq_n_f32(v16, 1.0 - v12), v22, *v7, 3).u64[0];
}

__n64 _fillColor(CIImage *a1)
{
  result.n64_u64[0] = 0;
  if (a1)
  {
    v2 = [(CIImage *)a1 _internalRepresentation];
    if ((*(*v2 + 16))(v2) == 9)
    {
      v3 = v2[16];
      result.n64_u64[0] = 0;
      if (v3)
      {
        v4 = v3[9];
        result.n64_f32[0] = v3[6] * v4;
        result.n64_f32[1] = v4 * v3[7];
      }
    }

    else
    {
      v5.i64[0] = 0x3F0000003FLL;
      v5.i64[1] = 0x3F0000003FLL;
      return vnegq_f32(v5).u64[0];
    }
  }

  return result;
}

unint64_t CI::sw_mix(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(a2 + (*(v3 + 56) << 6));
  return vmlaq_n_f32(vmulq_n_f32(*v11, 1.0 - v12), *v7, v12).u64[0];
}

unint64_t CI::sw_blendWithMask(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  return vmlaq_lane_f32(vmulq_n_f32(*v11, 1.0 - COERCE_FLOAT(HIDWORD(*v15))), *v7, *v15, 1).u64[0];
}

double CI::sw_blendWithMaskB0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_lane_f32(*v7, *v11, 1).u64[0];
  return result;
}

unint64_t CI::sw_blendWithRedMask(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  return vmlaq_n_f32(vmulq_n_f32(*v11, 1.0 - COERCE_FLOAT(*v15)), *v7, COERCE_FLOAT(*v15)).u64[0];
}

double CI::sw_blendWithRedMaskB0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_n_f32(*v7, COERCE_FLOAT(*v11)).u64[0];
  return result;
}

unint64_t CI::sw_blendWithBlueMask(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  return vmlaq_laneq_f32(vmulq_n_f32(*v11, 1.0 - COERCE_FLOAT(v15->i64[1])), *v7, *v15, 2).u64[0];
}

double CI::sw_blendWithBlueMaskB0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_laneq_f32(*v7, *v11, 2).u64[0];
  return result;
}

unint64_t CI::sw_blendWithAlphaMask(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  return vmlaq_laneq_f32(vmulq_n_f32(*v11, 1.0 - COERCE_FLOAT(HIDWORD(*v15))), *v7, *v15, 3).u64[0];
}

double CI::sw_blendWithAlphaMaskB0(uint64_t a1, uint64_t a2, uint64_t a3)
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

double CI::sw_bloom(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(a2 + (*(v3 + 56) << 6));
  *&result = vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v12), vmaxnmq_f32(*v7, *v11), v12).u64[0];
  return result;
}

double CI::sw_gloom(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(a2 + (*(v3 + 56) << 6));
  *&result = vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v12), vminnmq_f32(*v7, *v11), v12).u64[0];
  return result;
}

double addPoints(void *a1, void *a2, double x, double y, double width, double height)
{
  for (i = 0; i != 4; ++i)
  {
    [a1 valueAtIndex:i];
    v14 = v13;
    [a2 valueAtIndex:i];
    v16 = v15;
    if (fabs(v14 + 1.0) > 0.001 && fabs(v15 + 1.0) > 0.001)
    {
      v18.origin.x = x;
      v18.origin.y = y;
      v18.size.width = width;
      v18.size.height = height;
      if (CGRectIsNull(v18))
      {
        x = v14 + -0.5;
        y = v16 + -0.5;
        width = 1.0;
        height = 1.0;
      }

      else
      {
        v21.size.width = 1.0;
        v21.size.height = 1.0;
        v19.origin.x = x;
        v19.origin.y = y;
        v19.size.width = width;
        v19.size.height = height;
        v21.origin.x = v14 + -0.5;
        v21.origin.y = v16 + -0.5;
        v20 = CGRectUnion(v19, v21);
        x = v20.origin.x;
        y = v20.origin.y;
        width = v20.size.width;
        height = v20.size.height;
      }
    }
  }

  return x;
}

CIImage *boxBlurImage(CIImage *a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
  v79[2] = *MEMORY[0x1E69E9840];
  if (a2 > 1)
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9u:
          v10 = [CIKernel kernelWithInternalRepresentation:&CI::_boxBlur9];
          [(CIImage *)a1 extent];
          v88 = CGRectInset(v87, (-4 * a3), (-4 * a4));
          x = v88.origin.x;
          y = v88.origin.y;
          width = v88.size.width;
          height = v88.size.height;
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke_4;
          v58[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v59 = a3;
          v60 = a4;
          v76[0] = a1;
          v76[1] = [CIVector vectorWithX:a3 Y:a4];
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:2];
          v16 = v58;
          goto LABEL_21;
        case 0xBu:
          v10 = [CIKernel kernelWithInternalRepresentation:&CI::_boxBlur11];
          [(CIImage *)a1 extent];
          v94 = CGRectInset(v93, (-5 * a3), (-5 * a4));
          x = v94.origin.x;
          y = v94.origin.y;
          width = v94.size.width;
          height = v94.size.height;
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke_5;
          v55[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v56 = a3;
          v57 = a4;
          v75[0] = a1;
          v75[1] = [CIVector vectorWithX:a3 Y:a4];
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
          v16 = v55;
          goto LABEL_21;
        case 0xDu:
          v10 = [CIKernel kernelWithInternalRepresentation:&CI::_boxBlur13];
          [(CIImage *)a1 extent];
          v84 = CGRectInset(v83, (-6 * a3), (-6 * a4));
          x = v84.origin.x;
          y = v84.origin.y;
          width = v84.size.width;
          height = v84.size.height;
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke_6;
          v52[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v53 = a3;
          v54 = a4;
          v74[0] = a1;
          v74[1] = [CIVector vectorWithX:a3 Y:a4];
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
          v16 = v52;
          goto LABEL_21;
      }
    }

    else
    {
      switch(a2)
      {
        case 3u:
          v10 = [CIKernel kernelWithInternalRepresentation:&CI::_boxBlur3];
          [(CIImage *)a1 extent];
          v86 = CGRectInset(v85, -a3, -a4);
          x = v86.origin.x;
          y = v86.origin.y;
          width = v86.size.width;
          height = v86.size.height;
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke;
          v67[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v68 = a3;
          v69 = a4;
          v79[0] = a1;
          v79[1] = [CIVector vectorWithX:a3 Y:a4];
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
          v16 = v67;
          goto LABEL_21;
        case 5u:
          v10 = [CIKernel kernelWithInternalRepresentation:&CI::_boxBlur5];
          [(CIImage *)a1 extent];
          v92 = CGRectInset(v91, (-2 * a3), (-2 * a4));
          x = v92.origin.x;
          y = v92.origin.y;
          width = v92.size.width;
          height = v92.size.height;
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke_2;
          v64[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v65 = a3;
          v66 = a4;
          v78[0] = a1;
          v78[1] = [CIVector vectorWithX:a3 Y:a4];
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
          v16 = v64;
          goto LABEL_21;
        case 7u:
          v10 = [CIKernel kernelWithInternalRepresentation:&CI::_boxBlur7];
          [(CIImage *)a1 extent];
          v82 = CGRectInset(v81, (-3 * a3), (-3 * a4));
          x = v82.origin.x;
          y = v82.origin.y;
          width = v82.size.width;
          height = v82.size.height;
          v61[0] = MEMORY[0x1E69E9820];
          v61[1] = 3221225472;
          v61[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke_3;
          v61[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          v62 = a3;
          v63 = a4;
          v77[0] = a1;
          v77[1] = [CIVector vectorWithX:a3 Y:a4];
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:2];
          v16 = v61;
LABEL_21:
          v27 = v10;
          v28 = x;
          v29 = y;
          v30 = width;
          v31 = height;
          return [(CIKernel *)v27 applyWithExtent:v16 roiCallback:v15 arguments:v28, v29, v30, v31];
      }
    }

    if (a2 < 0x31 || (v17 = a2 / 7, a2 % 7))
    {
      if (a2 < 0x19 || (v32 = a2 / 5, a2 % 5))
      {
        v37 = a2 / 3;
        if (a2 == 3 * (a2 / 3))
        {
          v44 = boxBlurImage(a1, a2 / 3, a3, a4);
          v45 = (v37 * a3);
          v46 = (v37 * a4);
          v47 = [CIVector vectorWithX:v45 Y:v46];
          v22 = [CIKernel kernelWithInternalRepresentation:&CI::_boxCombine3];
          [(CIImage *)v44 extent];
          v100 = CGRectInset(v99, -v45, -v46);
          v23 = v100.origin.x;
          v24 = v100.origin.y;
          v25 = v100.size.width;
          v26 = v100.size.height;
          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke_9;
          v49[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
          *&v49[4] = v45;
          *&v49[5] = v46;
          v71[0] = v44;
          v71[1] = v47;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:2];
          v16 = v49;
        }

        else
        {
          v38 = (a2 >> 1) | 1;
          v39 = boxBlurImage(a1, v38, a3, a4);
          v40 = floor(vcvtd_n_f64_u32(a2, 2uLL) + 0.5);
          v41 = (a3 * v40);
          v42 = (a4 * v40);
          v43 = [CIVector vectorWithX:v41 Y:v42 Z:v38 / a2 W:v38 / a2 * -2.0 + 1.0];
          v22 = [CIKernel kernelWithInternalRepresentation:&CI::_boxCombine2];
          [(CIImage *)v39 extent];
          v98 = CGRectInset(v97, -v41, -v42);
          v23 = v98.origin.x;
          v24 = v98.origin.y;
          v25 = v98.size.width;
          v26 = v98.size.height;
          v70[0] = a1;
          v70[1] = v39;
          v70[2] = v43;
          v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:{3, MEMORY[0x1E69E9820], 3221225472, ___ZL12boxBlurImageP7CIImageiii_block_invoke_10, &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, *&v41, *&v42}];
          v16 = &v48;
        }
      }

      else
      {
        v33 = boxBlurImage(a1, a2 / 5, a3, a4);
        v34 = (v32 * a3);
        v35 = (v32 * a4);
        v36 = [CIVector vectorWithX:v34 Y:v35];
        v22 = [CIKernel kernelWithInternalRepresentation:&CI::_boxCombine5];
        [(CIImage *)v33 extent];
        v96 = CGRectInset(v95, v34 * -2.0, v35 * -2.0);
        v23 = v96.origin.x;
        v24 = v96.origin.y;
        v25 = v96.size.width;
        v26 = v96.size.height;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke_8;
        v50[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v50[4] = v34;
        *&v50[5] = v35;
        v72[0] = v33;
        v72[1] = v36;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:2];
        v16 = v50;
      }
    }

    else
    {
      v18 = boxBlurImage(a1, v17, a3, a4);
      v19 = (v17 * a3);
      v20 = (v17 * a4);
      v21 = [CIVector vectorWithX:v19 Y:v20];
      v22 = [CIKernel kernelWithInternalRepresentation:&CI::_boxCombine7];
      [(CIImage *)v18 extent];
      v90 = CGRectInset(v89, v19 * -3.0, v20 * -3.0);
      v23 = v90.origin.x;
      v24 = v90.origin.y;
      v25 = v90.size.width;
      v26 = v90.size.height;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = ___ZL12boxBlurImageP7CIImageiii_block_invoke_7;
      v51[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      *&v51[4] = v19;
      *&v51[5] = v20;
      v73[0] = v18;
      v73[1] = v21;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:2];
      v16 = v51;
    }

    v27 = v22;
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v31 = v26;
    return [(CIKernel *)v27 applyWithExtent:v16 roiCallback:v15 arguments:v28, v29, v30, v31];
  }

  v5 = a1;

  return v5;
}

double CI::sw_boxBlur3x3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5 = *CI::getDC(a1);
  __asm { FMOV            V0.2S, #1.0 }

  v11.n128_u64[0] = vadd_f32(v5, _D0);
  LODWORD(v12) = *(v4 + 24);
  v13.i32[0] = *(v4 + 36);
  *v14.i32 = vmuls_lane_f32(*(v4 + 32), v11.n128_u64[0], 1);
  *&v15 = *v14.i32 + (v11.n128_f32[0] * *(v4 + 28));
  v11.n128_f32[0] = *&v12 + (vmuls_lane_f32(*(v4 + 20), v11.n128_u64[0], 1) + (v11.n128_f32[0] * *(v4 + 16)));
  *v16.f64 = *v13.i32 + *&v15;
  v11.n128_f32[1] = *v13.i32 + *&v15;
  v19.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v11, v16, v12, v15, v14, v13, v17, v18);
  v50 = v19;
  v19.n128_u64[0] = vadd_f32(v5, 0xBF0000003F800000);
  LODWORD(v20) = *(v4 + 24);
  v21.i32[0] = *(v4 + 36);
  *v22.i32 = vmuls_lane_f32(*(v4 + 32), v19.n128_u64[0], 1);
  *&v23 = *v22.i32 + (v19.n128_f32[0] * *(v4 + 28));
  v19.n128_f32[0] = *&v20 + (vmuls_lane_f32(*(v4 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v4 + 16)));
  *v24.f64 = *v21.i32 + *&v23;
  v19.n128_f32[1] = *v21.i32 + *&v23;
  *v27.i64 = CI::BitmapSampler::read(*(v4 + 8), v19, v24, v20, v23, v22, v21, v25, v26);
  *&v28.f64[0] = vadd_f32(v5, 0x3F800000BF000000);
  *&v29 = vmuls_lane_f32(*(v4 + 20), *&v28.f64[0], 1) + (*v28.f64 * *(v4 + 16));
  LODWORD(v30) = *(v4 + 24);
  v31.i32[0] = *(v4 + 36);
  *v32.i32 = vmuls_lane_f32(*(v4 + 32), *&v28.f64[0], 1);
  v33 = v50;
  v34 = vaddq_f32(v50, vaddq_f32(v27, v27));
  v51 = v34;
  v34.n128_f32[0] = *&v30 + *&v29;
  *v28.f64 = *v31.i32 + (*v32.i32 + (*v28.f64 * *(v4 + 28)));
  v34.n128_u32[1] = LODWORD(v28.f64[0]);
  *v36.i64 = CI::BitmapSampler::read(*(v4 + 8), v34, v28, v29, v30, v33, v32, v31, v35);
  *&v37.f64[0] = vadd_f32(v5, 0xBF000000BF000000);
  *&v38 = vmuls_lane_f32(*(v4 + 20), *&v37.f64[0], 1) + (*v37.f64 * *(v4 + 16));
  LODWORD(v39) = *(v4 + 24);
  v40.i32[0] = *(v4 + 36);
  *v41.i32 = vmuls_lane_f32(*(v4 + 32), *&v37.f64[0], 1);
  v42 = v51;
  v43 = vaddq_f32(v51, vaddq_f32(v36, v36));
  v52 = v43;
  v43.n128_f32[0] = *&v39 + *&v38;
  *v37.f64 = *v40.i32 + (*v41.i32 + (*v37.f64 * *(v4 + 28)));
  v43.n128_u32[1] = LODWORD(v37.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v4 + 8), v43, v37, v38, v39, v42, v41, v40, v44);
  __asm { FMOV            V1.4S, #4.0 }

  v47 = vaddq_f32(v52, vmulq_f32(v45, _Q1));
  __asm { FMOV            V1.4S, #9.0 }

  *&result = vdivq_f32(v47, _Q1).u64[0];
  return result;
}

double ___ZL12boxBlurImageP7CIImageiii_block_invoke_10(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (a2)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 40));
  }

  return result;
}

double CI::sw_boxBlur3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12 = *CI::getDC(a1);
  v13.n128_u64[0] = vsub_f32(v12, v11);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), v13.n128_u64[0], 1);
  *&v17 = *v16.i32 + (v13.n128_f32[0] * *(v10 + 28));
  v13.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v10 + 20), v13.n128_u64[0], 1) + (v13.n128_f32[0] * *(v10 + 16)));
  *v18.f64 = *v15.i32 + *&v17;
  v13.n128_f32[1] = *v15.i32 + *&v17;
  v21.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v13, v18, v14, v17, v16, v15, v19, v20);
  v36 = v21;
  v21.n128_u64[0] = vadd_f32(vmul_f32(v11, 0x3F0000003F000000), v12);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), v21.n128_u64[0], 1);
  *&v25 = *v24.i32 + (v21.n128_f32[0] * *(v10 + 28));
  v21.n128_f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), v21.n128_u64[0], 1) + (v21.n128_f32[0] * *(v10 + 16)));
  *v26.f64 = *v23.i32 + *&v25;
  v21.n128_f32[1] = *v23.i32 + *&v25;
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), v21, v26, v22, v25, v24, v23, v27, v28);
  __asm { FMOV            V1.4S, #3.0 }

  *&result = vdivq_f32(vaddq_f32(v36, vaddq_f32(v29, v29)), _Q1).u64[0];
  return result;
}

double CI::sw_boxBlur5(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12.f64[0] = *CI::getDC(a1);
  v46 = v12;
  __asm { FMOV            V0.2S, #1.5 }

  v18 = vmul_f32(v11, _D0);
  v19.n128_u64[0] = vsub_f32(*&v12.f64[0], v18);
  LODWORD(v20) = *(v10 + 24);
  v21.i32[0] = *(v10 + 36);
  *v22.i32 = vmuls_lane_f32(*(v10 + 32), v19.n128_u64[0], 1);
  *&v23 = *v22.i32 + (v19.n128_f32[0] * *(v10 + 28));
  v19.n128_f32[0] = *&v20 + (vmuls_lane_f32(*(v10 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v21.i32 + *&v23;
  v19.n128_f32[1] = *v21.i32 + *&v23;
  *v26.i64 = CI::BitmapSampler::read(*(v10 + 8), v19, v12, v20, v23, v22, v21, v24, v25);
  v27 = vdupq_n_s32(0x3ECCCCCDu);
  LODWORD(v28) = *(v10 + 28);
  *v29.f64 = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v46.i8, 1) + (*v46.i32 * *(v10 + 16)));
  v30.i32[0] = *(v10 + 36);
  *&v31 = vmuls_lane_f32(*(v10 + 32), *v46.i8, 1) + (*v46.i32 * *&v28);
  v32 = vmulq_f32(v26, v27);
  v44 = v32;
  v45 = v27;
  *(v29.f64 + 1) = *v30.i32 + *&v31;
  v32.n128_u64[0] = *&v29.f64[0];
  *v34.i64 = CI::BitmapSampler::read(*(v10 + 8), v32, v29, v31, v28, v30, v46, v27, v33);
  *&v35.f64[1] = v46.i64[1];
  *&v35.f64[0] = vadd_f32(v18, *v46.i8);
  *&v36 = vmuls_lane_f32(*(v10 + 20), *&v35.f64[0], 1) + (*v35.f64 * *(v10 + 16));
  LODWORD(v37) = *(v10 + 24);
  v38.i32[0] = *(v10 + 36);
  *v39.i32 = vmuls_lane_f32(*(v10 + 32), *&v35.f64[0], 1);
  v40 = vaddq_f32(v44, vmulq_f32(v34, vdupq_n_s32(0x3E4CCCCDu)));
  v47 = v40;
  v40.n128_f32[0] = *&v37 + *&v36;
  *v35.f64 = *v38.i32 + (*v39.i32 + (*v35.f64 * *(v10 + 28)));
  v40.n128_u32[1] = LODWORD(v35.f64[0]);
  *v42.i64 = CI::BitmapSampler::read(*(v10 + 8), v40, v35, v36, v37, v44, v39, v38, v41);
  *&result = vaddq_f32(v47, vmulq_f32(v42, v45)).u64[0];
  return result;
}

double CI::sw_boxBlur7(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12 = *CI::getDC(a1);
  __asm { FMOV            V0.2S, #2.5 }

  v18 = vmul_f32(v11, _D0);
  v19.n128_u64[0] = vsub_f32(v12, v18);
  LODWORD(v20) = *(v10 + 24);
  v21.i32[0] = *(v10 + 36);
  *v22.i32 = vmuls_lane_f32(*(v10 + 32), v19.n128_u64[0], 1);
  *&v23 = *v22.i32 + (v19.n128_f32[0] * *(v10 + 28));
  v19.n128_f32[0] = *&v20 + (vmuls_lane_f32(*(v10 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v10 + 16)));
  *v24.f64 = *v21.i32 + *&v23;
  v19.n128_f32[1] = *v21.i32 + *&v23;
  v27.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v19, v24, v20, v23, v22, v21, v25, v26);
  v58 = v27;
  v27.n128_u64[0] = vsub_f32(v12, v11);
  LODWORD(v28) = *(v10 + 24);
  v29.i32[0] = *(v10 + 36);
  *v30.i32 = vmuls_lane_f32(*(v10 + 32), v27.n128_u64[0], 1);
  *&v31 = *v30.i32 + (v27.n128_f32[0] * *(v10 + 28));
  v27.n128_f32[0] = *&v28 + (vmuls_lane_f32(*(v10 + 20), v27.n128_u64[0], 1) + (v27.n128_f32[0] * *(v10 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  v27.n128_f32[1] = *v29.i32 + *&v31;
  *v35.i64 = CI::BitmapSampler::read(*(v10 + 8), v27, v32, v28, v31, v30, v29, v33, v34);
  *&v36.f64[0] = vadd_f32(vmul_f32(v11, 0x3F0000003F000000), v12);
  *&v37 = vmuls_lane_f32(*(v10 + 20), *&v36.f64[0], 1) + (*v36.f64 * *(v10 + 16));
  LODWORD(v38) = *(v10 + 24);
  v39.i32[0] = *(v10 + 36);
  *v40.i32 = vmuls_lane_f32(*(v10 + 32), *&v36.f64[0], 1);
  v41.i64[0] = 0x3F0000003F000000;
  v41.i64[1] = 0x3F0000003F000000;
  v42 = vmulq_f32(v35, v41);
  v43 = v58;
  v44 = vaddq_f32(v58, v42);
  v59 = v44;
  v44.n128_f32[0] = *&v38 + *&v37;
  *v36.f64 = *v39.i32 + (*v40.i32 + (*v36.f64 * *(v10 + 28)));
  v44.n128_u32[1] = LODWORD(v36.f64[0]);
  *v46.i64 = CI::BitmapSampler::read(*(v10 + 8), v44, v36, v37, v38, v43, v40, v39, v45);
  *&v47.f64[0] = vadd_f32(v18, v12);
  *&v48 = vmuls_lane_f32(*(v10 + 20), *&v47.f64[0], 1) + (*v47.f64 * *(v10 + 16));
  LODWORD(v49) = *(v10 + 24);
  v50.i32[0] = *(v10 + 36);
  *v51.i32 = vmuls_lane_f32(*(v10 + 32), *&v47.f64[0], 1);
  v52 = v59;
  v53 = vaddq_f32(v59, v46);
  v60 = v53;
  v53.n128_f32[0] = *&v49 + *&v48;
  *v47.f64 = *v50.i32 + (*v51.i32 + (*v47.f64 * *(v10 + 28)));
  v53.n128_u32[1] = LODWORD(v47.f64[0]);
  *v55.i64 = CI::BitmapSampler::read(*(v10 + 8), v53, v47, v48, v49, v52, v51, v50, v54);
  __asm { FMOV            V1.4S, #3.5 }

  *&result = vdivq_f32(vaddq_f32(v60, v55), _Q1).u64[0];
  return result;
}

double CI::sw_boxBlur9(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12.f64[0] = *CI::getDC(a1);
  v68 = v12;
  __asm { FMOV            V0.2S, #3.5 }

  v18 = vmul_f32(v11, _D0);
  v19.n128_u64[0] = vsub_f32(*&v12.f64[0], v18);
  LODWORD(v20) = *(v10 + 24);
  v21.i32[0] = *(v10 + 36);
  *v22.i32 = vmuls_lane_f32(*(v10 + 32), v19.n128_u64[0], 1);
  *&v23 = *v22.i32 + (v19.n128_f32[0] * *(v10 + 28));
  v19.n128_f32[0] = *&v20 + (vmuls_lane_f32(*(v10 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v21.i32 + *&v23;
  v19.n128_f32[1] = *v21.i32 + *&v23;
  _Q0.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v19, v12, v20, v23, v22, v21, v24, v25);
  v65 = _Q0;
  __asm { FMOV            V0.2S, #1.5 }

  v27 = vmul_f32(v11, _Q0.n128_u64[0]);
  _Q0.n128_u64[1] = v68.u64[1];
  _Q0.n128_u64[0] = vsub_f32(*v68.i8, v27);
  LODWORD(v28) = *(v10 + 24);
  v29.i32[0] = *(v10 + 36);
  *v30.i32 = vmuls_lane_f32(*(v10 + 32), _Q0.n128_u64[0], 1);
  *&v31 = *v30.i32 + (_Q0.n128_f32[0] * *(v10 + 28));
  _Q0.n128_f32[0] = *&v28 + (vmuls_lane_f32(*(v10 + 20), _Q0.n128_u64[0], 1) + (_Q0.n128_f32[0] * *(v10 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  _Q0.n128_f32[1] = *v29.i32 + *&v31;
  *v35.i64 = CI::BitmapSampler::read(*(v10 + 8), _Q0, v32, v28, v31, v30, v29, v33, v34);
  v36 = v65;
  v37 = vaddq_f32(v65, v35);
  v66 = v37;
  LODWORD(v38) = *(v10 + 28);
  v37.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v68.i8, 1) + (*v68.i32 * *(v10 + 16)));
  LODWORD(v39) = *(v10 + 36);
  *v36.f64 = *&v39 + (vmuls_lane_f32(*(v10 + 32), *v68.i8, 1) + (*v68.i32 * *&v38));
  v37.n128_u32[1] = LODWORD(v36.f64[0]);
  *v43.i64 = CI::BitmapSampler::read(*(v10 + 8), v37, v36, v38, v39, v68, v40, v41, v42);
  *&v44.f64[1] = v68.i64[1];
  *&v44.f64[0] = vadd_f32(v27, *v68.i8);
  *&v45 = vmuls_lane_f32(*(v10 + 20), *&v44.f64[0], 1) + (*v44.f64 * *(v10 + 16));
  LODWORD(v46) = *(v10 + 24);
  v47.i32[0] = *(v10 + 36);
  *v48.i32 = vmuls_lane_f32(*(v10 + 32), *&v44.f64[0], 1);
  v49.i64[0] = 0x3F0000003F000000;
  v49.i64[1] = 0x3F0000003F000000;
  v50 = vmulq_f32(v43, v49);
  v51 = v66;
  v52 = vaddq_f32(v66, v50);
  v67 = v52;
  v52.n128_f32[0] = *&v46 + *&v45;
  *v44.f64 = *v47.i32 + (*v48.i32 + (*v44.f64 * *(v10 + 28)));
  v52.n128_u32[1] = LODWORD(v44.f64[0]);
  *v54.i64 = CI::BitmapSampler::read(*(v10 + 8), v52, v44, v45, v46, v51, v48, v47, v53);
  *&v55.f64[1] = v68.i64[1];
  *&v55.f64[0] = vadd_f32(v18, *v68.i8);
  *&v56 = vmuls_lane_f32(*(v10 + 20), *&v55.f64[0], 1) + (*v55.f64 * *(v10 + 16));
  LODWORD(v57) = *(v10 + 24);
  v58.i32[0] = *(v10 + 36);
  *v59.i32 = vmuls_lane_f32(*(v10 + 32), *&v55.f64[0], 1);
  v60 = vaddq_f32(v67, v54);
  v69 = v60;
  v60.n128_f32[0] = *&v57 + *&v56;
  *v55.f64 = *v58.i32 + (*v59.i32 + (*v55.f64 * *(v10 + 28)));
  v60.n128_u32[1] = LODWORD(v55.f64[0]);
  *v62.i64 = CI::BitmapSampler::read(*(v10 + 8), v60, v55, v56, v57, v67, v59, v58, v61);
  __asm { FMOV            V1.4S, #4.5 }

  *&result = vdivq_f32(vaddq_f32(v69, v62), _Q1).u64[0];
  return result;
}

double CI::sw_boxBlur11(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12 = *CI::getDC(a1);
  __asm { FMOV            V0.2S, #4.5 }

  v18 = vmul_f32(v11, _D0);
  v19.n128_u64[0] = vsub_f32(v12, v18);
  LODWORD(v20) = *(v10 + 24);
  v21.i32[0] = *(v10 + 36);
  *v22.i32 = vmuls_lane_f32(*(v10 + 32), v19.n128_u64[0], 1);
  *&v23 = *v22.i32 + (v19.n128_f32[0] * *(v10 + 28));
  v19.n128_f32[0] = *&v20 + (vmuls_lane_f32(*(v10 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v10 + 16)));
  *v24.f64 = *v21.i32 + *&v23;
  v19.n128_f32[1] = *v21.i32 + *&v23;
  _Q0.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v19, v24, v20, v23, v22, v21, v25, v26);
  v77 = _Q0;
  __asm { FMOV            V0.2S, #2.5 }

  v28 = vmul_f32(v11, _Q0.n128_u64[0]);
  _Q0.n128_u64[0] = vsub_f32(v12, v28);
  LODWORD(v29) = *(v10 + 24);
  v30.i32[0] = *(v10 + 36);
  *v31.i32 = vmuls_lane_f32(*(v10 + 32), _Q0.n128_u64[0], 1);
  *&v32 = *v31.i32 + (_Q0.n128_f32[0] * *(v10 + 28));
  _Q0.n128_f32[0] = *&v29 + (vmuls_lane_f32(*(v10 + 20), _Q0.n128_u64[0], 1) + (_Q0.n128_f32[0] * *(v10 + 16)));
  *v33.f64 = *v30.i32 + *&v32;
  _Q0.n128_f32[1] = *v30.i32 + *&v32;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), _Q0, v33, v29, v32, v31, v30, v34, v35);
  *&v37.f64[0] = vsub_f32(v12, v11);
  *&v38 = vmuls_lane_f32(*(v10 + 20), *&v37.f64[0], 1) + (*v37.f64 * *(v10 + 16));
  LODWORD(v39) = *(v10 + 24);
  v40.i32[0] = *(v10 + 36);
  *v41.i32 = vmuls_lane_f32(*(v10 + 32), *&v37.f64[0], 1);
  v42 = v77;
  v43 = vaddq_f32(v77, v36);
  v78 = v43;
  v43.n128_f32[0] = *&v39 + *&v38;
  *v37.f64 = *v40.i32 + (*v41.i32 + (*v37.f64 * *(v10 + 28)));
  v43.n128_u32[1] = LODWORD(v37.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), v43, v37, v38, v39, v42, v41, v40, v44);
  *&v46.f64[0] = vadd_f32(vmul_f32(v11, 0x3F0000003F000000), v12);
  *&v47 = vmuls_lane_f32(*(v10 + 20), *&v46.f64[0], 1) + (*v46.f64 * *(v10 + 16));
  LODWORD(v48) = *(v10 + 24);
  v49.i32[0] = *(v10 + 36);
  *v50.i32 = vmuls_lane_f32(*(v10 + 32), *&v46.f64[0], 1);
  v51.i64[0] = 0x3F0000003F000000;
  v51.i64[1] = 0x3F0000003F000000;
  v52 = vmulq_f32(v45, v51);
  v53 = v78;
  v54 = vaddq_f32(v78, v52);
  v79 = v54;
  v54.n128_f32[0] = *&v48 + *&v47;
  *v46.f64 = *v49.i32 + (*v50.i32 + (*v46.f64 * *(v10 + 28)));
  v54.n128_u32[1] = LODWORD(v46.f64[0]);
  *v56.i64 = CI::BitmapSampler::read(*(v10 + 8), v54, v46, v47, v48, v53, v50, v49, v55);
  *&v57.f64[0] = vadd_f32(v28, v12);
  *&v58 = vmuls_lane_f32(*(v10 + 20), *&v57.f64[0], 1) + (*v57.f64 * *(v10 + 16));
  LODWORD(v59) = *(v10 + 24);
  v60.i32[0] = *(v10 + 36);
  *v61.i32 = vmuls_lane_f32(*(v10 + 32), *&v57.f64[0], 1);
  v62 = v79;
  v63 = vaddq_f32(v79, v56);
  v80 = v63;
  v63.n128_f32[0] = *&v59 + *&v58;
  *v57.f64 = *v60.i32 + (*v61.i32 + (*v57.f64 * *(v10 + 28)));
  v63.n128_u32[1] = LODWORD(v57.f64[0]);
  *v65.i64 = CI::BitmapSampler::read(*(v10 + 8), v63, v57, v58, v59, v62, v61, v60, v64);
  *&v66.f64[0] = vadd_f32(v18, v12);
  *&v67 = vmuls_lane_f32(*(v10 + 20), *&v66.f64[0], 1) + (*v66.f64 * *(v10 + 16));
  LODWORD(v68) = *(v10 + 24);
  v69.i32[0] = *(v10 + 36);
  *v70.i32 = vmuls_lane_f32(*(v10 + 32), *&v66.f64[0], 1);
  v71 = v80;
  v72 = vaddq_f32(v80, v65);
  v81 = v72;
  v72.n128_f32[0] = *&v68 + *&v67;
  *v66.f64 = *v69.i32 + (*v70.i32 + (*v66.f64 * *(v10 + 28)));
  v72.n128_u32[1] = LODWORD(v66.f64[0]);
  *v74.i64 = CI::BitmapSampler::read(*(v10 + 8), v72, v66, v67, v68, v71, v70, v69, v73);
  __asm { FMOV            V1.4S, #5.5 }

  *&result = vdivq_f32(vaddq_f32(v81, v74), _Q1).u64[0];
  return result;
}

double CI::sw_boxBlur13(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12.f64[0] = *CI::getDC(a1);
  v90 = v12;
  __asm { FMOV            V0.2S, #5.5 }

  v18 = vmul_f32(v11, _D0);
  v19.n128_u64[0] = vsub_f32(*&v12.f64[0], v18);
  LODWORD(v20) = *(v10 + 24);
  v21.i32[0] = *(v10 + 36);
  *v22.i32 = vmuls_lane_f32(*(v10 + 32), v19.n128_u64[0], 1);
  *&v23 = *v22.i32 + (v19.n128_f32[0] * *(v10 + 28));
  v19.n128_f32[0] = *&v20 + (vmuls_lane_f32(*(v10 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v21.i32 + *&v23;
  v19.n128_f32[1] = *v21.i32 + *&v23;
  _Q0.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v19, v12, v20, v23, v22, v21, v24, v25);
  v85 = _Q0;
  __asm { FMOV            V0.2S, #3.5 }

  v27 = vmul_f32(v11, _Q0.n128_u64[0]);
  _Q0.n128_u64[1] = v90.u64[1];
  _Q0.n128_u64[0] = vsub_f32(*v90.i8, v27);
  LODWORD(v28) = *(v10 + 24);
  v29.i32[0] = *(v10 + 36);
  *v30.i32 = vmuls_lane_f32(*(v10 + 32), _Q0.n128_u64[0], 1);
  *&v31 = *v30.i32 + (_Q0.n128_f32[0] * *(v10 + 28));
  _Q0.n128_f32[0] = *&v28 + (vmuls_lane_f32(*(v10 + 20), _Q0.n128_u64[0], 1) + (_Q0.n128_f32[0] * *(v10 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  _Q0.n128_f32[1] = *v29.i32 + *&v31;
  *v35.i64 = CI::BitmapSampler::read(*(v10 + 8), _Q0, v32, v28, v31, v30, v29, v33, v34);
  __asm { FMOV            V1.2S, #1.5 }

  v37 = vmul_f32(v11, _D1);
  *&v38.f64[1] = v90.i64[1];
  *&v38.f64[0] = vsub_f32(*v90.i8, v37);
  *&v39 = vmuls_lane_f32(*(v10 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v10 + 16));
  LODWORD(v40) = *(v10 + 24);
  v41.i32[0] = *(v10 + 36);
  *v42.i32 = vmuls_lane_f32(*(v10 + 32), *&v38.f64[0], 1);
  v43 = v85;
  v44 = vaddq_f32(v85, v35);
  v86 = v44;
  v44.n128_f32[0] = *&v40 + *&v39;
  *v38.f64 = *v41.i32 + (*v42.i32 + (*v38.f64 * *(v10 + 28)));
  v44.n128_u32[1] = LODWORD(v38.f64[0]);
  *v46.i64 = CI::BitmapSampler::read(*(v10 + 8), v44, v38, v39, v40, v43, v42, v41, v45);
  v47 = v86;
  v48 = vaddq_f32(v86, v46);
  v87 = v48;
  LODWORD(v49) = *(v10 + 28);
  v48.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v90.i8, 1) + (*v90.i32 * *(v10 + 16)));
  LODWORD(v50) = *(v10 + 36);
  *v47.f64 = *&v50 + (vmuls_lane_f32(*(v10 + 32), *v90.i8, 1) + (*v90.i32 * *&v49));
  v48.n128_u32[1] = LODWORD(v47.f64[0]);
  *v54.i64 = CI::BitmapSampler::read(*(v10 + 8), v48, v47, v49, v50, v90, v51, v52, v53);
  *&v55.f64[1] = v90.i64[1];
  *&v55.f64[0] = vadd_f32(v37, *v90.i8);
  *&v56 = vmuls_lane_f32(*(v10 + 20), *&v55.f64[0], 1) + (*v55.f64 * *(v10 + 16));
  LODWORD(v57) = *(v10 + 24);
  v58.i32[0] = *(v10 + 36);
  *v59.i32 = vmuls_lane_f32(*(v10 + 32), *&v55.f64[0], 1);
  v60.i64[0] = 0x3F0000003F000000;
  v60.i64[1] = 0x3F0000003F000000;
  v61 = vmulq_f32(v54, v60);
  v62 = v87;
  v63 = vaddq_f32(v87, v61);
  v88 = v63;
  v63.n128_f32[0] = *&v57 + *&v56;
  *v55.f64 = *v58.i32 + (*v59.i32 + (*v55.f64 * *(v10 + 28)));
  v63.n128_u32[1] = LODWORD(v55.f64[0]);
  *v65.i64 = CI::BitmapSampler::read(*(v10 + 8), v63, v55, v56, v57, v62, v59, v58, v64);
  *&v66.f64[1] = v90.i64[1];
  *&v66.f64[0] = vadd_f32(v27, *v90.i8);
  *&v67 = vmuls_lane_f32(*(v10 + 20), *&v66.f64[0], 1) + (*v66.f64 * *(v10 + 16));
  LODWORD(v68) = *(v10 + 24);
  v69.i32[0] = *(v10 + 36);
  *v70.i32 = vmuls_lane_f32(*(v10 + 32), *&v66.f64[0], 1);
  v71 = v88;
  v72 = vaddq_f32(v88, v65);
  v89 = v72;
  v72.n128_f32[0] = *&v68 + *&v67;
  *v66.f64 = *v69.i32 + (*v70.i32 + (*v66.f64 * *(v10 + 28)));
  v72.n128_u32[1] = LODWORD(v66.f64[0]);
  *v74.i64 = CI::BitmapSampler::read(*(v10 + 8), v72, v66, v67, v68, v71, v70, v69, v73);
  *&v75.f64[1] = v90.i64[1];
  *&v75.f64[0] = vadd_f32(v18, *v90.i8);
  *&v76 = vmuls_lane_f32(*(v10 + 20), *&v75.f64[0], 1) + (*v75.f64 * *(v10 + 16));
  LODWORD(v77) = *(v10 + 24);
  v78.i32[0] = *(v10 + 36);
  *v79.i32 = vmuls_lane_f32(*(v10 + 32), *&v75.f64[0], 1);
  v80 = vaddq_f32(v89, v74);
  v91 = v80;
  v80.n128_f32[0] = *&v77 + *&v76;
  *v75.f64 = *v78.i32 + (*v79.i32 + (*v75.f64 * *(v10 + 28)));
  v80.n128_u32[1] = LODWORD(v75.f64[0]);
  *v82.i64 = CI::BitmapSampler::read(*(v10 + 8), v80, v75, v76, v77, v89, v79, v78, v81);
  __asm { FMOV            V1.4S, #6.5 }

  *&result = vdivq_f32(vaddq_f32(v91, v82), _Q1).u64[0];
  return result;
}

double CI::sw_boxCombine7(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12.f64[0] = *CI::getDC(a1);
  v86 = v12;
  __asm { FMOV            V0.2S, #3.0 }

  v18 = vmul_f32(v11, _D0);
  v19.n128_u64[0] = vsub_f32(*&v12.f64[0], v18);
  LODWORD(v20) = *(v10 + 24);
  v21.i32[0] = *(v10 + 36);
  *v22.i32 = vmuls_lane_f32(*(v10 + 32), v19.n128_u64[0], 1);
  *&v23 = *v22.i32 + (v19.n128_f32[0] * *(v10 + 28));
  v19.n128_f32[0] = *&v20 + (vmuls_lane_f32(*(v10 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v21.i32 + *&v23;
  v19.n128_f32[1] = *v21.i32 + *&v23;
  v26.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v19, v12, v20, v23, v22, v21, v24, v25);
  v81 = v26;
  v27 = vadd_f32(v11, v11);
  v26.n128_u64[1] = v86.u64[1];
  v26.n128_u64[0] = vsub_f32(*v86.i8, v27);
  LODWORD(v28) = *(v10 + 24);
  v29.i32[0] = *(v10 + 36);
  *v30.i32 = vmuls_lane_f32(*(v10 + 32), v26.n128_u64[0], 1);
  *&v31 = *v30.i32 + (v26.n128_f32[0] * *(v10 + 28));
  v26.n128_f32[0] = *&v28 + (vmuls_lane_f32(*(v10 + 20), v26.n128_u64[0], 1) + (v26.n128_f32[0] * *(v10 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  v26.n128_f32[1] = *v29.i32 + *&v31;
  *v35.i64 = CI::BitmapSampler::read(*(v10 + 8), v26, v32, v28, v31, v30, v29, v33, v34);
  *&v36.f64[1] = v86.i64[1];
  *&v36.f64[0] = vsub_f32(*v86.i8, v11);
  *&v37 = vmuls_lane_f32(*(v10 + 20), *&v36.f64[0], 1) + (*v36.f64 * *(v10 + 16));
  LODWORD(v38) = *(v10 + 24);
  v39.i32[0] = *(v10 + 36);
  *v40.i32 = vmuls_lane_f32(*(v10 + 32), *&v36.f64[0], 1);
  v41 = v81;
  v42 = vaddq_f32(v81, v35);
  v82 = v42;
  v42.n128_f32[0] = *&v38 + *&v37;
  *v36.f64 = *v39.i32 + (*v40.i32 + (*v36.f64 * *(v10 + 28)));
  v42.n128_u32[1] = LODWORD(v36.f64[0]);
  *v44.i64 = CI::BitmapSampler::read(*(v10 + 8), v42, v36, v37, v38, v41, v40, v39, v43);
  v45 = v82;
  v46 = vaddq_f32(v82, v44);
  v83 = v46;
  LODWORD(v47) = *(v10 + 28);
  v46.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v86.i8, 1) + (*v86.i32 * *(v10 + 16)));
  LODWORD(v48) = *(v10 + 36);
  *v45.f64 = *&v48 + (vmuls_lane_f32(*(v10 + 32), *v86.i8, 1) + (*v86.i32 * *&v47));
  v46.n128_u32[1] = LODWORD(v45.f64[0]);
  *v52.i64 = CI::BitmapSampler::read(*(v10 + 8), v46, v45, v47, v48, v86, v49, v50, v51);
  *&v53.f64[1] = v86.i64[1];
  *&v53.f64[0] = vadd_f32(v11, *v86.i8);
  *&v54 = vmuls_lane_f32(*(v10 + 20), *&v53.f64[0], 1) + (*v53.f64 * *(v10 + 16));
  LODWORD(v55) = *(v10 + 24);
  v56.i32[0] = *(v10 + 36);
  *v57.i32 = vmuls_lane_f32(*(v10 + 32), *&v53.f64[0], 1);
  v58 = v83;
  v59 = vaddq_f32(v83, v52);
  v84 = v59;
  v59.n128_f32[0] = *&v55 + *&v54;
  *v53.f64 = *v56.i32 + (*v57.i32 + (*v53.f64 * *(v10 + 28)));
  v59.n128_u32[1] = LODWORD(v53.f64[0]);
  *v61.i64 = CI::BitmapSampler::read(*(v10 + 8), v59, v53, v54, v55, v58, v57, v56, v60);
  *&v62.f64[1] = v86.i64[1];
  *&v62.f64[0] = vadd_f32(v27, *v86.i8);
  *&v63 = vmuls_lane_f32(*(v10 + 20), *&v62.f64[0], 1) + (*v62.f64 * *(v10 + 16));
  LODWORD(v64) = *(v10 + 24);
  v65.i32[0] = *(v10 + 36);
  *v66.i32 = vmuls_lane_f32(*(v10 + 32), *&v62.f64[0], 1);
  v67 = v84;
  v68 = vaddq_f32(v84, v61);
  v85 = v68;
  v68.n128_f32[0] = *&v64 + *&v63;
  *v62.f64 = *v65.i32 + (*v66.i32 + (*v62.f64 * *(v10 + 28)));
  v68.n128_u32[1] = LODWORD(v62.f64[0]);
  *v70.i64 = CI::BitmapSampler::read(*(v10 + 8), v68, v62, v63, v64, v67, v66, v65, v69);
  *&v71.f64[1] = v86.i64[1];
  *&v71.f64[0] = vadd_f32(v18, *v86.i8);
  *&v72 = vmuls_lane_f32(*(v10 + 20), *&v71.f64[0], 1) + (*v71.f64 * *(v10 + 16));
  LODWORD(v73) = *(v10 + 24);
  v74.i32[0] = *(v10 + 36);
  *v75.i32 = vmuls_lane_f32(*(v10 + 32), *&v71.f64[0], 1);
  v76 = vaddq_f32(v85, v70);
  v87 = v76;
  v76.n128_f32[0] = *&v73 + *&v72;
  *v71.f64 = *v74.i32 + (*v75.i32 + (*v71.f64 * *(v10 + 28)));
  v76.n128_u32[1] = LODWORD(v71.f64[0]);
  *v78.i64 = CI::BitmapSampler::read(*(v10 + 8), v76, v71, v72, v73, v85, v75, v74, v77);
  __asm { FMOV            V1.4S, #7.0 }

  *&result = vdivq_f32(vaddq_f32(v87, v78), _Q1).u64[0];
  return result;
}

double CI::sw_boxCombine5(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12.n128_u64[0] = *CI::getDC(a1);
  v59 = v12;
  v13 = vadd_f32(v11, v11);
  v12.n128_u64[0] = vsub_f32(v12.n128_u64[0], v13);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), v12.n128_u64[0], 1);
  *&v17 = *v16.i32 + (v12.n128_f32[0] * *(v10 + 28));
  v12.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v10 + 20), v12.n128_u64[0], 1) + (v12.n128_f32[0] * *(v10 + 16)));
  *v18.f64 = *v15.i32 + *&v17;
  v12.n128_f32[1] = *v15.i32 + *&v17;
  v21.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v12, v18, v14, v17, v16, v15, v19, v20);
  v56 = v21;
  v21.n128_u64[1] = v59.u64[1];
  v21.n128_u64[0] = vsub_f32(*v59.i8, v11);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), v21.n128_u64[0], 1);
  *&v25 = *v24.i32 + (v21.n128_f32[0] * *(v10 + 28));
  v21.n128_f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), v21.n128_u64[0], 1) + (v21.n128_f32[0] * *(v10 + 16)));
  *v26.f64 = *v23.i32 + *&v25;
  v21.n128_f32[1] = *v23.i32 + *&v25;
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), v21, v26, v22, v25, v24, v23, v27, v28);
  v30 = v56;
  v31 = vaddq_f32(v56, v29);
  v57 = v31;
  LODWORD(v32) = *(v10 + 28);
  v31.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v59.i8, 1) + (*v59.i32 * *(v10 + 16)));
  LODWORD(v33) = *(v10 + 36);
  *v30.f64 = *&v33 + (vmuls_lane_f32(*(v10 + 32), *v59.i8, 1) + (*v59.i32 * *&v32));
  v31.n128_u32[1] = LODWORD(v30.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), v31, v30, v32, v33, v59, v34, v35, v36);
  *&v38.f64[1] = v59.i64[1];
  *&v38.f64[0] = vadd_f32(v11, *v59.i8);
  *&v39 = vmuls_lane_f32(*(v10 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v10 + 16));
  LODWORD(v40) = *(v10 + 24);
  v41.i32[0] = *(v10 + 36);
  *v42.i32 = vmuls_lane_f32(*(v10 + 32), *&v38.f64[0], 1);
  v43 = v57;
  v44 = vaddq_f32(v57, v37);
  v58 = v44;
  v44.n128_f32[0] = *&v40 + *&v39;
  *v38.f64 = *v41.i32 + (*v42.i32 + (*v38.f64 * *(v10 + 28)));
  v44.n128_u32[1] = LODWORD(v38.f64[0]);
  *v46.i64 = CI::BitmapSampler::read(*(v10 + 8), v44, v38, v39, v40, v43, v42, v41, v45);
  *&v47.f64[1] = v59.i64[1];
  *&v47.f64[0] = vadd_f32(v13, *v59.i8);
  *&v48 = vmuls_lane_f32(*(v10 + 20), *&v47.f64[0], 1) + (*v47.f64 * *(v10 + 16));
  LODWORD(v49) = *(v10 + 24);
  v50.i32[0] = *(v10 + 36);
  *v51.i32 = vmuls_lane_f32(*(v10 + 32), *&v47.f64[0], 1);
  v52 = vaddq_f32(v58, v46);
  v60 = v52;
  v52.n128_f32[0] = *&v49 + *&v48;
  *v47.f64 = *v50.i32 + (*v51.i32 + (*v47.f64 * *(v10 + 28)));
  v52.n128_u32[1] = LODWORD(v47.f64[0]);
  *v54.i64 = CI::BitmapSampler::read(*(v10 + 8), v52, v47, v48, v49, v58, v51, v50, v53);
  *&result = vmulq_f32(vaddq_f32(v60, v54), vdupq_n_s32(0x3E4CCCCDu)).u64[0];
  return result;
}

double CI::sw_boxCombine3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  DC = CI::getDC(a1);
  *v13.i8 = *DC;
  v45 = v13;
  LODWORD(v14) = *(v10 + 28);
  v15.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v10 + 16)));
  LODWORD(v16) = *(v10 + 36);
  *v17.f64 = *&v16 + (vmuls_lane_f32(*(v10 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v14));
  v15.n128_u32[1] = LODWORD(v17.f64[0]);
  v21.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v15, v17, v14, v16, v13, v18, v19, v20);
  v44 = v21;
  v21.n128_u64[1] = v45.u64[1];
  v21.n128_u64[0] = vsub_f32(*v45.i8, v11);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), v21.n128_u64[0], 1);
  *&v25 = *v24.i32 + (v21.n128_f32[0] * *(v10 + 28));
  v21.n128_f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), v21.n128_u64[0], 1) + (v21.n128_f32[0] * *(v10 + 16)));
  *v26.f64 = *v23.i32 + *&v25;
  v21.n128_f32[1] = *v23.i32 + *&v25;
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), v21, v26, v22, v25, v24, v23, v27, v28);
  *&v30.f64[1] = v45.i64[1];
  *&v30.f64[0] = vadd_f32(v11, *v45.i8);
  *&v31 = vmuls_lane_f32(*(v10 + 20), *&v30.f64[0], 1) + (*v30.f64 * *(v10 + 16));
  LODWORD(v32) = *(v10 + 24);
  v33.i32[0] = *(v10 + 36);
  *v34.i32 = vmuls_lane_f32(*(v10 + 32), *&v30.f64[0], 1);
  v35 = vaddq_f32(v44, v29);
  v46 = v35;
  v35.n128_f32[0] = *&v32 + *&v31;
  *v30.f64 = *v33.i32 + (*v34.i32 + (*v30.f64 * *(v10 + 28)));
  v35.n128_u32[1] = LODWORD(v30.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), v35, v30, v31, v32, v44, v34, v33, v36);
  __asm { FMOV            V1.4S, #3.0 }

  *&result = vdivq_f32(vaddq_f32(v46, v37), _Q1).u64[0];
  return result;
}

double CI::sw_boxCombine2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v6;
  v12 = a4 + 80 * v5;
  v42 = *v10;
  DC = CI::getDC(a1);
  *v14.i8 = *DC;
  v40 = v14;
  LODWORD(v15) = *(v12 + 28);
  v16.n128_f32[0] = *(v12 + 24) + (vmuls_lane_f32(*(v12 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v12 + 16)));
  LODWORD(v17) = *(v12 + 36);
  *v18.f64 = *&v17 + (vmuls_lane_f32(*(v12 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v15));
  v16.n128_u32[1] = LODWORD(v18.f64[0]);
  *v22.i64 = CI::BitmapSampler::read(*(v12 + 8), v16, v18, v15, v17, v14, v19, v20, v21);
  *&v23.f64[1] = v40.i64[1];
  *&v23.f64[0] = vsub_f32(*v40.i8, *v42.f32);
  *&v24 = vmuls_lane_f32(*(v11 + 20), *&v23.f64[0], 1) + (*v23.f64 * *(v11 + 16));
  LODWORD(v25) = *(v11 + 24);
  v26.i32[0] = *(v11 + 28);
  v27.i32[0] = *(v11 + 36);
  *v28.i32 = vmuls_lane_f32(*(v11 + 32), *&v23.f64[0], 1);
  v29 = vmulq_laneq_f32(v22, v42, 3);
  v39 = v29;
  v29.n128_f32[0] = *&v25 + *&v24;
  *v23.f64 = *v27.i32 + (*v28.i32 + (*v23.f64 * *v26.i32));
  v29.n128_u32[1] = LODWORD(v23.f64[0]);
  *v30.i64 = CI::BitmapSampler::read(*(v11 + 8), v29, v23, v24, v25, v26, v28, v27, v42);
  *&v31.f64[1] = v40.i64[1];
  *&v31.f64[0] = vadd_f32(*v42.f32, *v40.i8);
  *&v32 = vmuls_lane_f32(*(v11 + 20), *&v31.f64[0], 1) + (*v31.f64 * *(v11 + 16));
  LODWORD(v33) = *(v11 + 24);
  v34.i32[0] = *(v11 + 36);
  *v35.i32 = vmuls_lane_f32(*(v11 + 32), *&v31.f64[0], 1);
  v36 = vaddq_f32(v39, vmulq_laneq_f32(v30, v42, 2));
  v41 = v36;
  v36.n128_f32[0] = *&v33 + *&v32;
  *v31.f64 = *v34.i32 + (*v35.i32 + (*v31.f64 * *(v11 + 28)));
  v36.n128_u32[1] = LODWORD(v31.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v11 + 8), v36, v31, v32, v33, v39, v35, v34, v42);
  *&result = vaddq_f32(v41, vmulq_laneq_f32(v37, v42, 2)).u64[0];
  return result;
}

float32x2_t CI::sw_bumpDistortion(CI *a1, uint64_t a2, uint64_t a3)
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

  v16 = *v7;
  DC = CI::getDC(a1);
  v17 = vextq_s8(v16, v16, 8uLL).u64[0];
  v9 = vsub_f32(v17, *DC);
  v10 = 1.0;
  v11 = 1.0 - (sqrtf(vaddv_f32(vmul_f32(v9, v9))) * *v16.i32);
  if (v11 <= 1.0)
  {
    v10 = v11;
  }

  v12 = v11 < 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v10;
  }

  v14 = (v13 * -2.0 + 3.0) * v13 * v13 * *&v16.i32[1] + 1.0;
  return vadd_f32(v17, vmul_n_f32(vsub_f32(*CI::getDC(DC), v17), v14));
}

float32x2_t CI::sw_bumpDistortionLinear(CI *a1, uint64_t a2, uint64_t a3)
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

  v24 = *v7;
  v25 = *v11;
  DC = CI::getDC(a1);
  v13.i64[0] = *DC;
  v13.i64[1] = 1065353216;
  v14 = vmulq_f32(v24, v13);
  v15 = vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)));
  v16 = 1.0;
  v17 = 1.0 - fabsf(v15);
  if (v17 <= 1.0)
  {
    v16 = v17;
  }

  v18 = v17 < 0.0;
  v19 = 0.0;
  if (!v18)
  {
    v19 = v16;
  }

  v20 = (v19 * -2.0 + 3.0) * v19 * v19 * *(&v25 + 2) + 1.0;
  v21 = CI::getDC(DC);
  v22 = (v20 + -1.0) * v15;
  return vadd_f32(*v21, vmul_n_f32(*&v25, v22));
}

double timeElapsedSinceInit()
{
  if (timeElapsedSinceInit_onceToken != -1)
  {
    timeElapsedSinceInit_cold_1();
  }

  v0 = mach_absolute_time();
  LODWORD(v1) = timeElapsedSinceInit_timebase;
  LODWORD(v2) = *algn_1EB00BD34;
  return (v0 - timeElapsedSinceInit_initTime) * v1 / v2 / 1000000000.0;
}

uint64_t __timeElapsedSinceInit_block_invoke()
{
  mach_timebase_info(&timeElapsedSinceInit_timebase);
  result = mach_absolute_time();
  timeElapsedSinceInit_initTime = result;
  return result;
}

double vec2::get_xxy(vec2 *this, int32x4_t a2)
{
  a2.i64[0] = *this;
  a2.i64[0] = vzip1q_s32(a2, a2).u64[0];
  return *a2.i64;
}

double CI::sw_white(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vdupq_laneq_s32(*v7, 3).u64[0];
  return result;
}

double CI::sw_cmyk_convert(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v7;
  v13 = vdupq_laneq_s32(*v7, 3);
  v12.i32[3] = 0;
  v14 = vmaxnmq_f32(v12, 0);
  v14.i32[3] = 0;
  v15 = *v11;
  v13.i32[3] = 0;
  v16 = vminnmq_f32(v14, v13);
  __asm { FMOV            V1.4S, #1.0 }

  v22 = vsubq_f32(_Q1, v16);
  _Q1.f32[0] = vmuls_lane_f32(fminf(fminf(v22.f32[0], v22.f32[1]), v22.f32[2]), *v11, 1);
  *v15.i32 = (_Q1.f32[0] * _Q1.f32[0]) * COERCE_FLOAT(*v11);
  *&result = vsubq_f32(v22, vdupq_lane_s32(v15, 0)).u64[0];
  return result;
}

double CI::sw_cmyk_cyan(CI *a1, uint64_t a2, uint64_t a3)
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

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *v15;
  v41 = *v19;
  v42 = *v7;
  v21 = *(a2 + (*(v3 + 104) << 6));
  v22 = *v11;
  v23 = vsub_f32(*CI::getDC(a1), *v15);
  v24 = vmul_f32(*v41.i8, v23);
  v25 = vmul_f32(*&vextq_s8(v41, v41, 8uLL), v23);
  v26 = vadd_f32(v20, vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25)));
  v27 = vmul_f32(vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), vdup_n_s32(0x3F7FFFFFu)), vdup_n_s32(0x40C90FDBu));
  v41.i32[1] = v27.i32[1];
  v20.i32[0] = sinf(v27.f32[0]);
  v28 = sinf(*&v41.i32[1]);
  v29 = -1.0 / v21 + 0.995;
  v30 = (v20.f32[0] + v28) * 0.25 * v29 + 0.5;
  v31 = (v21 * (v22 - v30)) + 0.5;
  if (v31 <= 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 1.0;
  }

  _NF = v31 < 0.0;
  v34 = 0.0;
  if (!_NF)
  {
    v34 = v32;
  }

  *&v29 = 1.0 - v34;
  v35 = vmaxnmq_f32(vmulq_f32(v42, vmlaq_n_f32(vdupq_lane_s32(*&v29, 0), xmmword_19CF23800, v34)), 0);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(v35, _Q1).u64[0];
  return result;
}

double CI::sw_cmyk_magenta(CI *a1, uint64_t a2, uint64_t a3)
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
  v9 = a3 + 16 * v8;
  v10 = a2 + (v8 << 6);
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

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *v15;
  v41 = *v19;
  v42 = *v7;
  v21 = *(a2 + (*(v3 + 104) << 6));
  v22 = *(v11 + 4);
  v23 = vsub_f32(*CI::getDC(a1), *v15);
  v24 = vmul_f32(*v41.i8, v23);
  v25 = vmul_f32(*&vextq_s8(v41, v41, 8uLL), v23);
  v26 = vadd_f32(v20, vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25)));
  v27 = vmul_f32(vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), vdup_n_s32(0x3F7FFFFFu)), vdup_n_s32(0x40C90FDBu));
  v41.i32[1] = v27.i32[1];
  v20.i32[0] = sinf(v27.f32[0]);
  v28 = sinf(*&v41.i32[1]);
  v29 = -1.0 / v21 + 0.995;
  v30 = (v20.f32[0] + v28) * 0.25 * v29 + 0.5;
  v31 = (v21 * (v22 - v30)) + 0.5;
  if (v31 <= 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 1.0;
  }

  _NF = v31 < 0.0;
  v34 = 0.0;
  if (!_NF)
  {
    v34 = v32;
  }

  *&v29 = 1.0 - v34;
  v35 = vmaxnmq_f32(vmulq_f32(v42, vmlaq_n_f32(vdupq_lane_s32(*&v29, 0), xmmword_19CF23810, v34)), 0);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(v35, _Q1).u64[0];
  return result;
}

double CI::sw_cmyk_yellow(CI *a1, uint64_t a2, uint64_t a3)
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
  v9 = a3 + 16 * v8;
  v10 = a2 + (v8 << 6);
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

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *v15;
  v41 = *v19;
  v42 = *v7;
  v21 = *(a2 + (*(v3 + 104) << 6));
  v22 = *(v11 + 8);
  v23 = vsub_f32(*CI::getDC(a1), *v15);
  v24 = vmul_f32(*v41.i8, v23);
  v25 = vmul_f32(*&vextq_s8(v41, v41, 8uLL), v23);
  v26 = vadd_f32(v20, vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25)));
  v27 = vmul_f32(vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), vdup_n_s32(0x3F7FFFFFu)), vdup_n_s32(0x40C90FDBu));
  v41.i32[1] = v27.i32[1];
  v20.i32[0] = sinf(v27.f32[0]);
  v28 = sinf(*&v41.i32[1]);
  v29 = -1.0 / v21 + 0.995;
  v30 = (v20.f32[0] + v28) * 0.25 * v29 + 0.5;
  v31 = (v21 * (v22 - v30)) + 0.5;
  if (v31 <= 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 1.0;
  }

  _NF = v31 < 0.0;
  v34 = 0.0;
  if (!_NF)
  {
    v34 = v32;
  }

  *&v29 = 1.0 - v34;
  v35 = vmaxnmq_f32(vmulq_f32(v42, vmlaq_n_f32(vdupq_lane_s32(*&v29, 0), xmmword_19CF23820, v34)), 0);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(v35, _Q1).u64[0];
  return result;
}

double CI::sw_cmyk_black(CI *a1, uint64_t a2, uint64_t a3)
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
  v9 = a3 + 16 * v8;
  v10 = a2 + (v8 << 6);
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

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *v15;
  v41 = *v19;
  v42 = *v7;
  v21 = *(a2 + (*(v3 + 104) << 6));
  v22 = *(v11 + 12);
  v23 = vsub_f32(*CI::getDC(a1), *v15);
  v24 = vmul_f32(*v41.i8, v23);
  v25 = vmul_f32(*&vextq_s8(v41, v41, 8uLL), v23);
  v26 = vadd_f32(v20, vadd_f32(vzip1_s32(v24, v25), vzip2_s32(v24, v25)));
  v27 = vmul_f32(vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), vdup_n_s32(0x3F7FFFFFu)), vdup_n_s32(0x40C90FDBu));
  v41.i32[1] = v27.i32[1];
  v20.i32[0] = sinf(v27.f32[0]);
  v28 = sinf(*&v41.i32[1]);
  v29 = -1.0 / v21 + 0.995;
  v30 = (v20.f32[0] + v28) * 0.25 * v29 + 0.5;
  v31 = (v21 * (v22 - v30)) + 0.5;
  if (v31 <= 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 1.0;
  }

  _NF = v31 < 0.0;
  v34 = 0.0;
  if (!_NF)
  {
    v34 = v32;
  }

  *&v29 = 1.0 - v34;
  v35 = vmaxnmq_f32(vmulq_f32(v42, vmlaq_n_f32(vdupq_lane_s32(*&v29, 0), xmmword_19CF22690, v34)), 0);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(v35, _Q1).u64[0];
  return result;
}

double CI::sw_radialLensDistortion(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = a3 + 16 * v8;
  v10 = a2 + (v8 << 6);
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v6;
  v12 = a4 + 80 * v5;
  v38 = *v10;
  v13 = COERCE_FLOAT(*(v10 + 8));
  v14 = COERCE_FLOAT(HIDWORD(*v10)) + -1.0;
  DC = CI::getDC(a1);
  v16 = v38;
  v17.n128_u64[0] = vsub_f32(*&v38.f64[0], *DC);
  *&v18 = ((v14 * sqrtf(vaddv_f32(vmul_f32(v17.n128_u64[0], v17.n128_u64[0])))) / v13) + 0.5;
  v19.i32[0] = *(v11 + 28);
  v17.n128_f32[0] = *(v11 + 24) + ((*(v11 + 20) * 0.5) + (*&v18 * *(v11 + 16)));
  LODWORD(v20) = *(v11 + 32);
  v21.i32[0] = *(v11 + 36);
  *v16.f64 = *v21.i32 + ((*&v20 * 0.5) + (*&v18 * *v19.i32));
  v17.n128_f32[1] = *v16.f64;
  *&v24 = CI::BitmapSampler::read(*(v11 + 8), v17, v16, v18, v20, v19, v21, v22, v23);
  v37 = v24;
  v26 = CI::getDC(v25);
  v27.f64[1] = *(&v37 + 1);
  HIDWORD(v28) = HIDWORD(v38.f64[0]);
  v29 = vsub_f32(*v26, *&v38.f64[0]);
  *&v27.f64[0] = vmul_n_f32(v29, *&v37);
  v30.n128_u64[0] = vadd_f32(*&v38.f64[0], vadd_f32(v29, *&v27.f64[0]));
  LODWORD(v28) = *(v12 + 24);
  v31.i32[0] = *(v12 + 36);
  *v32.i32 = vmuls_lane_f32(*(v12 + 32), v30.n128_u64[0], 1);
  *&v33 = *v32.i32 + (v30.n128_f32[0] * *(v12 + 28));
  v30.n128_f32[0] = *&v28 + (vmuls_lane_f32(*(v12 + 20), v30.n128_u64[0], 1) + (v30.n128_f32[0] * *(v12 + 16)));
  *v27.f64 = *v31.i32 + *&v33;
  v30.n128_f32[1] = *v31.i32 + *&v33;
  return CI::BitmapSampler::read(*(v12 + 8), v30, v27, v28, v33, v32, v31, v34, v35);
}

double CI::sw_cheapBlur(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *v9;
  v12 = *CI::getDC(a1);
  v13 = vmul_f32(v11, 0x40800000BF800000);
  v14.n128_u64[0] = vadd_f32(v13, v12);
  LODWORD(v15) = *(v10 + 24);
  v16.i32[0] = *(v10 + 36);
  *v17.i32 = vmuls_lane_f32(*(v10 + 32), v14.n128_u64[0], 1);
  *&v18 = *v17.i32 + (v14.n128_f32[0] * *(v10 + 28));
  v19 = vmul_f32(v11, 0x3F80000040800000);
  v14.n128_f32[0] = *&v15 + (vmuls_lane_f32(*(v10 + 20), v14.n128_u64[0], 1) + (v14.n128_f32[0] * *(v10 + 16)));
  *v20.f64 = *v16.i32 + *&v18;
  v14.n128_f32[1] = *v16.i32 + *&v18;
  v23.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v14, v20, v15, v18, v17, v16, v21, v22);
  v63 = v23;
  v23.n128_u64[0] = vadd_f32(v19, v12);
  LODWORD(v24) = *(v10 + 24);
  v25.i32[0] = *(v10 + 36);
  *v26.i32 = vmuls_lane_f32(*(v10 + 32), v23.n128_u64[0], 1);
  *&v27 = *v26.i32 + (v23.n128_f32[0] * *(v10 + 28));
  v23.n128_f32[0] = *&v24 + (vmuls_lane_f32(*(v10 + 20), v23.n128_u64[0], 1) + (v23.n128_f32[0] * *(v10 + 16)));
  *v28.f64 = *v25.i32 + *&v27;
  v23.n128_f32[1] = *v25.i32 + *&v27;
  v31.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v23, v28, v24, v27, v26, v25, v29, v30);
  v62 = v31;
  v31.n128_u64[0] = vsub_f32(v12, v19);
  LODWORD(v32) = *(v10 + 24);
  v33.i32[0] = *(v10 + 36);
  *v34.i32 = vmuls_lane_f32(*(v10 + 32), v31.n128_u64[0], 1);
  *&v35 = *v34.i32 + (v31.n128_f32[0] * *(v10 + 28));
  v31.n128_f32[0] = *&v32 + (vmuls_lane_f32(*(v10 + 20), v31.n128_u64[0], 1) + (v31.n128_f32[0] * *(v10 + 16)));
  *v36.f64 = *v33.i32 + *&v35;
  v31.n128_f32[1] = *v33.i32 + *&v35;
  v39.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v31, v36, v32, v35, v34, v33, v37, v38);
  v61 = v39;
  v39.n128_u64[0] = vsub_f32(v12, v13);
  LODWORD(v40) = *(v10 + 24);
  v41.i32[0] = *(v10 + 36);
  *v42.i32 = vmuls_lane_f32(*(v10 + 32), v39.n128_u64[0], 1);
  *&v43 = *v42.i32 + (v39.n128_f32[0] * *(v10 + 28));
  v39.n128_f32[0] = *&v40 + (vmuls_lane_f32(*(v10 + 20), v39.n128_u64[0], 1) + (v39.n128_f32[0] * *(v10 + 16)));
  *v44.f64 = *v41.i32 + *&v43;
  v39.n128_f32[1] = *v41.i32 + *&v43;
  *v47.i64 = CI::BitmapSampler::read(*(v10 + 8), v39, v44, v40, v43, v42, v41, v45, v46);
  v60 = v47;
  DC = CI::getDC(v48);
  LODWORD(v50) = *(v10 + 24);
  v51.i32[0] = *(v10 + 36);
  *v52.i32 = vmuls_lane_f32(*(v10 + 32), *DC, 1);
  *&v53 = *v52.i32 + (COERCE_FLOAT(*DC) * *(v10 + 28));
  v54.n128_f32[0] = *&v50 + (vmuls_lane_f32(*(v10 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v10 + 16)));
  *v55.f64 = *v51.i32 + *&v53;
  v54.n128_f32[1] = *v51.i32 + *&v53;
  *v58.i64 = CI::BitmapSampler::read(*(v10 + 8), v54, v55, v50, v53, v52, v51, v56, v57);
  *&result = vaddq_f32(vmulq_f32(vaddq_f32(v61, vaddq_f32(vaddq_f32(v63, v62), v60)), vdupq_n_s32(0x3E51745Du)), vmulq_f32(v58, vdupq_n_s32(0x3E3A2E8Cu))).u64[0];
  return result;
}

unint64_t CI::sw_lerp(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(a2 + (*(v3 + 56) << 6));
  return vmlaq_n_f32(vmulq_n_f32(*v11, 1.0 - v12), *v7, v12).u64[0];
}

double CI::sw_box4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  __asm { FMOV            V1.2S, #4.0 }

  v11 = vmul_f32(*DC, *&_Q1.f64[0]);
  __asm { FMOV            V9.2S, #-1.0 }

  v13.n128_u64[0] = vadd_f32(v11, *&_D9);
  LODWORD(v14) = *(v4 + 24);
  v15.i32[0] = *(v4 + 36);
  *v16.i32 = vmuls_lane_f32(*(v4 + 32), v13.n128_u64[0], 1);
  *&v17 = *v16.i32 + (v13.n128_f32[0] * *(v4 + 28));
  v13.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v4 + 20), v13.n128_u64[0], 1) + (v13.n128_f32[0] * *(v4 + 16)));
  *_Q1.f64 = *v15.i32 + *&v17;
  v13.n128_f32[1] = *v15.i32 + *&v17;
  v20.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v13, _Q1, v14, v17, v16, v15, v18, v19);
  v50 = v20;
  v20.n128_u64[0] = vadd_f32(v11, COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v21) = *(v4 + 24);
  v22.i32[0] = *(v4 + 36);
  *v23.i32 = vmuls_lane_f32(*(v4 + 32), v20.n128_u64[0], 1);
  *&v24 = *v23.i32 + (v20.n128_f32[0] * *(v4 + 28));
  v20.n128_f32[0] = *&v21 + (vmuls_lane_f32(*(v4 + 20), v20.n128_u64[0], 1) + (v20.n128_f32[0] * *(v4 + 16)));
  *v25.f64 = *v22.i32 + *&v24;
  v20.n128_f32[1] = *v22.i32 + *&v24;
  v28.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v20, v25, v21, v24, v23, v22, v26, v27);
  v49 = v28;
  __asm { FMOV            V9.2S, #1.0 }

  v28.n128_u64[0] = vadd_f32(v11, COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v30) = *(v4 + 24);
  v31.i32[0] = *(v4 + 36);
  *v32.i32 = vmuls_lane_f32(*(v4 + 32), v28.n128_u64[0], 1);
  *&v33 = *v32.i32 + (v28.n128_f32[0] * *(v4 + 28));
  v28.n128_f32[0] = *&v30 + (vmuls_lane_f32(*(v4 + 20), v28.n128_u64[0], 1) + (v28.n128_f32[0] * *(v4 + 16)));
  *v34.f64 = *v31.i32 + *&v33;
  v28.n128_f32[1] = *v31.i32 + *&v33;
  v37.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v28, v34, v30, v33, v32, v31, v35, v36);
  v48 = v37;
  v37.n128_u64[0] = vadd_f32(v11, *&_D9);
  LODWORD(v38) = *(v4 + 24);
  v39.i32[0] = *(v4 + 36);
  *v40.i32 = vmuls_lane_f32(*(v4 + 32), v37.n128_u64[0], 1);
  *&v41 = *v40.i32 + (v37.n128_f32[0] * *(v4 + 28));
  v37.n128_f32[0] = *&v38 + (vmuls_lane_f32(*(v4 + 20), v37.n128_u64[0], 1) + (v37.n128_f32[0] * *(v4 + 16)));
  *v42.f64 = *v39.i32 + *&v41;
  v37.n128_f32[1] = *v39.i32 + *&v41;
  *v45.i64 = CI::BitmapSampler::read(*(v4 + 8), v37, v42, v38, v41, v40, v39, v43, v44);
  __asm { FMOV            V1.4S, #0.25 }

  *&result = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v50, v49), v48), v45), _Q1).u64[0];
  return result;
}

double CI::sw_box6(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  __asm { FMOV            V1.2S, #6.0 }

  v11 = vmul_f32(*DC, *&_Q1.f64[0]);
  v12.n128_u64[0] = vadd_f32(v11, 0xC0000000C0000000);
  LODWORD(v13) = *(v4 + 24);
  v14.i32[0] = *(v4 + 36);
  *v15.i32 = vmuls_lane_f32(*(v4 + 32), v12.n128_u64[0], 1);
  *&v16 = *v15.i32 + (v12.n128_f32[0] * *(v4 + 28));
  v12.n128_f32[0] = *&v13 + (vmuls_lane_f32(*(v4 + 20), v12.n128_u64[0], 1) + (v12.n128_f32[0] * *(v4 + 16)));
  *_Q1.f64 = *v14.i32 + *&v16;
  v12.n128_f32[1] = *v14.i32 + *&v16;
  v19.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v12, _Q1, v13, v16, v15, v14, v17, v18);
  v92 = v19;
  v19.n128_u64[0] = vadd_f32(v11, 0xC000000000000000);
  LODWORD(v20) = *(v4 + 24);
  v21.i32[0] = *(v4 + 36);
  *v22.i32 = vmuls_lane_f32(*(v4 + 32), v19.n128_u64[0], 1);
  *&v23 = *v22.i32 + (v19.n128_f32[0] * *(v4 + 28));
  v19.n128_f32[0] = *&v20 + (vmuls_lane_f32(*(v4 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v4 + 16)));
  *v24.f64 = *v21.i32 + *&v23;
  v19.n128_f32[1] = *v21.i32 + *&v23;
  v27.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v19, v24, v20, v23, v22, v21, v25, v26);
  v91 = v27;
  v27.n128_u64[0] = vadd_f32(v11, COERCE_FLOAT32X2_T(-2.00000048));
  LODWORD(v28) = *(v4 + 24);
  v29.i32[0] = *(v4 + 36);
  *v30.i32 = vmuls_lane_f32(*(v4 + 32), v27.n128_u64[0], 1);
  *&v31 = *v30.i32 + (v27.n128_f32[0] * *(v4 + 28));
  v27.n128_f32[0] = *&v28 + (vmuls_lane_f32(*(v4 + 20), v27.n128_u64[0], 1) + (v27.n128_f32[0] * *(v4 + 16)));
  *v32.f64 = *v29.i32 + *&v31;
  v27.n128_f32[1] = *v29.i32 + *&v31;
  v35.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v27, v32, v28, v31, v30, v29, v33, v34);
  v90 = v35;
  v35.n128_u64[0] = vadd_f32(v11, 3221225472);
  LODWORD(v36) = *(v4 + 24);
  v37.i32[0] = *(v4 + 36);
  *v38.i32 = vmuls_lane_f32(*(v4 + 32), v35.n128_u64[0], 1);
  *&v39 = *v38.i32 + (v35.n128_f32[0] * *(v4 + 28));
  v35.n128_f32[0] = *&v36 + (vmuls_lane_f32(*(v4 + 20), v35.n128_u64[0], 1) + (v35.n128_f32[0] * *(v4 + 16)));
  *v40.f64 = *v37.i32 + *&v39;
  v35.n128_f32[1] = *v37.i32 + *&v39;
  v43.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v35, v40, v36, v39, v38, v37, v41, v42);
  v89 = v43;
  v43.n128_u64[0] = vadd_f32(v11, 0);
  LODWORD(v44) = *(v4 + 24);
  v45.i32[0] = *(v4 + 36);
  *v46.i32 = vmuls_lane_f32(*(v4 + 32), v43.n128_u64[0], 1);
  *&v47 = *v46.i32 + (v43.n128_f32[0] * *(v4 + 28));
  v43.n128_f32[0] = *&v44 + (vmuls_lane_f32(*(v4 + 20), v43.n128_u64[0], 1) + (v43.n128_f32[0] * *(v4 + 16)));
  *v48.f64 = *v45.i32 + *&v47;
  v43.n128_f32[1] = *v45.i32 + *&v47;
  v51.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v43, v48, v44, v47, v46, v45, v49, v50);
  v88 = v51;
  v51.n128_u64[0] = vadd_f32(v11, 0x40000000);
  LODWORD(v52) = *(v4 + 24);
  v53.i32[0] = *(v4 + 36);
  *v54.i32 = vmuls_lane_f32(*(v4 + 32), v51.n128_u64[0], 1);
  *&v55 = *v54.i32 + (v51.n128_f32[0] * *(v4 + 28));
  v51.n128_f32[0] = *&v52 + (vmuls_lane_f32(*(v4 + 20), v51.n128_u64[0], 1) + (v51.n128_f32[0] * *(v4 + 16)));
  *v56.f64 = *v53.i32 + *&v55;
  v51.n128_f32[1] = *v53.i32 + *&v55;
  v59.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v51, v56, v52, v55, v54, v53, v57, v58);
  v87 = v59;
  v59.n128_u64[0] = vadd_f32(v11, COERCE_FLOAT32X2_T(--2.00000143));
  LODWORD(v60) = *(v4 + 24);
  v61.i32[0] = *(v4 + 36);
  *v62.i32 = vmuls_lane_f32(*(v4 + 32), v59.n128_u64[0], 1);
  *&v63 = *v62.i32 + (v59.n128_f32[0] * *(v4 + 28));
  v59.n128_f32[0] = *&v60 + (vmuls_lane_f32(*(v4 + 20), v59.n128_u64[0], 1) + (v59.n128_f32[0] * *(v4 + 16)));
  *v64.f64 = *v61.i32 + *&v63;
  v59.n128_f32[1] = *v61.i32 + *&v63;
  v67.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v59, v64, v60, v63, v62, v61, v65, v66);
  v86 = v67;
  v67.n128_u64[0] = vadd_f32(v11, 0x4000000000000000);
  LODWORD(v68) = *(v4 + 24);
  v69.i32[0] = *(v4 + 36);
  *v70.i32 = vmuls_lane_f32(*(v4 + 32), v67.n128_u64[0], 1);
  *&v71 = *v70.i32 + (v67.n128_f32[0] * *(v4 + 28));
  v67.n128_f32[0] = *&v68 + (vmuls_lane_f32(*(v4 + 20), v67.n128_u64[0], 1) + (v67.n128_f32[0] * *(v4 + 16)));
  *v72.f64 = *v69.i32 + *&v71;
  v67.n128_f32[1] = *v69.i32 + *&v71;
  v75.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v67, v72, v68, v71, v70, v69, v73, v74);
  v85 = v75;
  v75.n128_u64[0] = vadd_f32(v11, 0x4000000040000000);
  LODWORD(v76) = *(v4 + 24);
  v77.i32[0] = *(v4 + 36);
  *v78.i32 = vmuls_lane_f32(*(v4 + 32), v75.n128_u64[0], 1);
  *&v79 = *v78.i32 + (v75.n128_f32[0] * *(v4 + 28));
  v75.n128_f32[0] = *&v76 + (vmuls_lane_f32(*(v4 + 20), v75.n128_u64[0], 1) + (v75.n128_f32[0] * *(v4 + 16)));
  *v80.f64 = *v77.i32 + *&v79;
  v75.n128_f32[1] = *v77.i32 + *&v79;
  *v83.i64 = CI::BitmapSampler::read(*(v4 + 8), v75, v80, v76, v79, v78, v77, v81, v82);
  *&result = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v92, v91), v90), v89), v88), v87), v86), v85), v83), vdupq_n_s32(0x3DE38E39u)).u64[0];
  return result;
}

unint64_t CI::sw_cross4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v53 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  *v7.i8 = *DC;
  v54 = v7;
  LODWORD(v8) = *(v5 + 28);
  v9.n128_f32[0] = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v10) = *(v5 + 36);
  *v11.f64 = *&v10 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v8));
  v9.n128_u32[1] = LODWORD(v11.f64[0]);
  v15.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v9, v11, v8, v10, v7, v12, v13, v14);
  v52 = v15;
  v16 = v54;
  v15.n128_u64[0] = vadd_f32(*&v54.f64[0], 0xBFC00000BF000000);
  LODWORD(v17) = *(v5 + 24);
  v18.i32[0] = *(v5 + 36);
  *v19.i32 = vmuls_lane_f32(*(v5 + 32), v15.n128_u64[0], 1);
  *&v20 = *v19.i32 + (v15.n128_f32[0] * *(v5 + 28));
  v15.n128_f32[0] = *&v17 + (vmuls_lane_f32(*(v5 + 20), v15.n128_u64[0], 1) + (v15.n128_f32[0] * *(v5 + 16)));
  *v16.f64 = *v18.i32 + *&v20;
  v15.n128_f32[1] = *v18.i32 + *&v20;
  v23.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v15, v16, v17, v20, v19, v18, v21, v22);
  v51 = v23;
  v24 = v54;
  v23.n128_u64[0] = vadd_f32(*&v54.f64[0], 0x3FC000003F000000);
  LODWORD(v25) = *(v5 + 24);
  v26.i32[0] = *(v5 + 36);
  *v27.i32 = vmuls_lane_f32(*(v5 + 32), v23.n128_u64[0], 1);
  *&v28 = *v27.i32 + (v23.n128_f32[0] * *(v5 + 28));
  v23.n128_f32[0] = *&v25 + (vmuls_lane_f32(*(v5 + 20), v23.n128_u64[0], 1) + (v23.n128_f32[0] * *(v5 + 16)));
  *v24.f64 = *v26.i32 + *&v28;
  v23.n128_f32[1] = *v26.i32 + *&v28;
  v31.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v23, v24, v25, v28, v27, v26, v29, v30);
  v50 = v31;
  v32 = v54;
  v31.n128_u64[0] = vadd_f32(*&v54.f64[0], 0x3F000000BFC00000);
  LODWORD(v33) = *(v5 + 24);
  v34.i32[0] = *(v5 + 36);
  *v35.i32 = vmuls_lane_f32(*(v5 + 32), v31.n128_u64[0], 1);
  *&v36 = *v35.i32 + (v31.n128_f32[0] * *(v5 + 28));
  v31.n128_f32[0] = *&v33 + (vmuls_lane_f32(*(v5 + 20), v31.n128_u64[0], 1) + (v31.n128_f32[0] * *(v5 + 16)));
  *v32.f64 = *v34.i32 + *&v36;
  v31.n128_f32[1] = *v34.i32 + *&v36;
  v39.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v31, v32, v33, v36, v35, v34, v37, v38);
  v49 = v39;
  v40 = v54;
  v39.n128_u64[0] = vadd_f32(*&v54.f64[0], 0xBF0000003FC00000);
  LODWORD(v41) = *(v5 + 24);
  v42.i32[0] = *(v5 + 36);
  *v43.i32 = vmuls_lane_f32(*(v5 + 32), v39.n128_u64[0], 1);
  *&v44 = *v43.i32 + (v39.n128_f32[0] * *(v5 + 28));
  v39.n128_f32[0] = *&v41 + (vmuls_lane_f32(*(v5 + 20), v39.n128_u64[0], 1) + (v39.n128_f32[0] * *(v5 + 16)));
  *v40.f64 = *v42.i32 + *&v44;
  v39.n128_f32[1] = *v42.i32 + *&v44;
  *v47.i64 = CI::BitmapSampler::read(*(v5 + 8), v39, v40, v41, v44, v43, v42, v45, v46);
  return vmlaq_n_f32(vmulq_n_f32(v52, 1.0 - v53), vaddq_f32(vmulq_f32(v52, vdupq_n_s32(0x3DA3D70Au)), vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v51, v50), v49), v47), vdupq_n_s32(0x3E6B851Fu))), v53).u64[0];
}

unint64_t CI::sw_checker(CI *a1, uint64_t a2, uint64_t a3)
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

  v20 = *(a2 + (*(v3 + 56) << 6));
  v21 = *(a2 + (*(v3 + 32) << 6));
  v19 = *(a2 + (*(v3 + 80) << 6));
  v8 = vmul_n_f32(vsub_f32(*CI::getDC(a1), *v7), *v19.i32);
  v9 = vminnm_f32(vsub_f32(v8, vrndm_f32(v8)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v15 = vminnm_f32(vmaxnm_f32(vadd_f32(vdup_laneq_s32(v19, 2), vmul_lane_f32(vminnm_f32(vsub_f32(_D1, v9), v9), *v19.i8, 1)), 0), _D1);
  __asm { FMOV            V2.2S, #3.0 }

  v17 = vmul_f32(v15, vmul_f32(v15, vsub_f32(_D2, vadd_f32(v15, v15))));
  v17.f32[0] = fminf(v17.f32[0], v17.f32[1]) * 2.0 + 1.0 - vaddv_f32(v17);
  return vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - v17.f32[0]), v21, v17.f32[0]).u64[0];
}

double CI::sw_circle(CI *a1, uint64_t a2, uint64_t a3)
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

  v15 = *v7->f32;
  v16 = *(a2 + (*(v3 + 32) << 6));
  v8 = COERCE_FLOAT(*&v7[1]);
  v9 = vsub_f32(*CI::getDC(a1), *v7);
  v10 = vmuls_lane_f32(v8 - sqrtf(vaddv_f32(vmul_f32(v9, v9))), v15, 3) + 0.5;
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  v12 = v10 < 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  *&result = vmulq_n_f32(v16, v13).u64[0];
  return result;
}

float32x2_t CI::sw_circleSplash(CI *a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  v9 = *(a2 + (*(v3 + 32) << 6));
  v10 = vsub_f32(*CI::getDC(a1), *v7);
  v11 = vmul_f32(v10, v10);
  v12 = vadd_f32(v11, vdup_lane_s32(v11, 1));
  v13 = vrsqrte_f32(v12.u32[0]);
  v14 = vmul_f32(v13, vrsqrts_f32(v12.u32[0], vmul_f32(v13, v13)));
  return vadd_f32(v8, vmul_n_f32(vmul_n_f32(v10, v14.f32[0]), fminf(vmul_f32(v12, v14).f32[0], v9)));
}

__n64 CI::sw_circularWrap(CI *a1, uint64_t a2, uint64_t a3)
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

  v8 = *(a2 + (*(v3 + 32) << 6));
  v9 = *(a2 + (*(v3 + 56) << 6));
  v10 = *(a2 + (*(v3 + 80) << 6));
  v11 = *(a2 + (*(v3 + 104) << 6));
  v12 = vsub_f32(*CI::getDC(a1), *v7);
  v13 = vmul_f32(v12, v12);
  v14 = vadd_f32(v13, vdup_lane_s32(v13, 1));
  v15 = vrsqrte_f32(v14.u32[0]);
  v16 = vmul_f32(v15, vrsqrts_f32(v14.u32[0], vmul_f32(v15, v15)));
  v17 = vmul_n_f32(v12, v16.f32[0]);
  v18 = vabs_f32(v17);
  v19 = vadd_f32(vmul_f32(v18, vadd_f32(vmul_f32(v18, vadd_f32(vmul_f32(v18, vdup_n_s32(0x3F667469u)), vdup_n_s32(0xBF32DEF3))), vdup_n_s32(0x3F932752u))), vdup_n_s32(0x3A9C2CD7u));
  v20 = vbsl_s8(vcltz_f32(v17), vneg_f32(v19), v19);
  v21 = *&v20.i32[1];
  if (v17.f32[0] < 0.0)
  {
    v22 = 3.1415927 - *&v20.i32[1];
    v21 = v22;
  }

  v23 = *v20.i32;
  v24 = v23 + -1.5707963;
  v25 = 1.5707963 - v23;
  if (v17.f32[1] >= 0.0)
  {
    v26 = v25;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26;
  if ((vcgt_f32(vdup_lane_s32(v18, 1), v18).u8[0] & 1) == 0)
  {
    v27 = v21;
  }

  v28 = (v27 - v11) * 0.15915494;
  v29 = (v28 - floorf(v28)) * 6.2831853;
  result.n64_f32[0] = v10 + (v29 * v9);
  result.n64_f32[1] = v8 + vmul_f32(v14, v16).f32[0];
  return result;
}

CGColorSpaceRef ___ZL20GetDefaultColorSpacev_block_invoke(uint64_t a1, uint64_t a2)
{
  if (dyld_program_sdk_at_least())
  {
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  else
  {
    result = CGColorSpaceCreateDeviceRGB();
  }

  GetDefaultColorSpace(void)::cs = result;
  return result;
}

double CI::sw_colorAbsDiff(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = vabdq_f32(*v7, *v11);
  v12.i32[3] = HIDWORD(*v7);
  *&result = vmulq_laneq_f32(v12, *v11, 3).u64[0];
  return result;
}

double CI::sw_colorbalance(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9 = *(v3 + 64);
  v10 = *(v3 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v13 = *(a2 + (v8 << 6));
  v21 = *v12;
  v14 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF23AB0, *v7, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF23AA0, *v7->f32, 1), vmulq_n_f32(xmmword_19CF23A90, COERCE_FLOAT(*v7))));
  v22 = v14;
  v14.f32[0] = fmaxf(v13.f32[3], 0.00001);
  v15 = vdivq_f32(v13, vdupq_lane_s32(*v14.f32, 0));
  v15.i32[3] = 0;
  v16 = vmaxnmq_f32(v15, 0);
  v16.i32[3] = 0;
  v17 = _simd_pow_f4(v16, xmmword_19CF23AC0);
  v18 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF23AF0, v17, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF23AE0, *v17.f32, 1), vmulq_n_f32(xmmword_19CF23AD0, v17.f32[0])));
  v19 = vadd_f32(*&vextq_s8(v22, v22, 4uLL), vmul_n_f32(vmul_laneq_f32(vsub_f32(*v21.f32, *&vextq_s8(v18, v18, 4uLL)), v21, 2), powf(*v22.i32, v21.f32[3])));
  *&result = vaddq_f32(vmulq_lane_f32(xmmword_19CF23B10, v19, 1), vaddq_f32(vdupq_lane_s32(*v22.i8, 0), vmulq_n_f32(xmmword_19CF23B00, v19.f32[0]))).u64[0];
  return result;
}

double CI::sw_colorClamp(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  *&result = vminnmq_f32(vmaxnmq_f32(*v7, *v11), *v15).u64[0];
  return result;
}

double CI::sw_colorClampAP(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  *&result = vminnmq_f32(vmaxnmq_f32(*v7, *v11), *v15).u64[0];
  return result;
}

CIImage *_imageByApplyingColorMatrix(void *a1, float a2, float a3, float a4, float a5, float a6, float a7, double a8, double a9, float a10, float a11, float a12, float a13, float a14, float a15)
{
  v31 = *MEMORY[0x1E69E9840];
  [a1 extent];
  if (CGRectIsEmpty(v33))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v24[0] = a2;
    v24[1] = a3;
    v24[2] = a4;
    v24[3] = 0.0;
    v24[4] = a5;
    v24[5] = a6;
    v24[6] = a7;
    v24[7] = 0.0;
    v24[8] = a10;
    v24[9] = a11;
    v24[10] = a12;
    v24[11] = 0.0;
    v25 = xmmword_19CF23BA0;
    v26 = unk_19CF23BB0;
    v27 = a13;
    v28 = a14;
    v29 = a15;
    v30 = 0;
    if (!CI::ColorMatrixImage::is_identity(v24, v21))
    {
      [a1 _internalRepresentation];
      operator new();
    }

    return a1;
  }
}

id ___ZL11defaultCubev_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[4] = xmmword_19CF23C20;
  v1[5] = unk_19CF23C30;
  v1[6] = xmmword_19CF23C40;
  v1[7] = unk_19CF23C50;
  v1[0] = xmmword_19CF23BE0;
  v1[1] = unk_19CF23BF0;
  v1[2] = xmmword_19CF23C00;
  v1[3] = unk_19CF23C10;
  result = [MEMORY[0x1E695DEF0] dataWithBytes:v1 length:128];
  defaultCube(void)::data = result;
  return result;
}

unint64_t CI::sw_colorcube(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v11 + 32) << 6));
  v17 = *(v11 + 64);
  v18 = *(v11 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (v17 == 5)
  {
    v20 = v19;
  }

  v21 = *v15;
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v21, xmmword_19CF23BC0);
  v22.i32[3] = 0;
  v23 = vmulq_n_f32(vminnmq_f32(v22, xmmword_19CF23060), COERCE_FLOAT(*v20));
  v24 = v23.f32[2];
  v25 = floorf(v23.f32[2]);
  *v23.f32 = vadd_f32(*v23.f32, 0x3F0000003F000000);
  *a8.i64 = COERCE_FLOAT(*v20) + 1.0;
  *&v26 = *a8.i64 * v25;
  a9.i32[0] = 0;
  a10.i32[0] = 0;
  a10.i32[1] = v26;
  v27 = vadd_f32(*v23.f32, *a10.i8);
  v28 = *a8.i64 * fminf(v25 + 1.0, COERCE_FLOAT(*v20));
  *&v28 = v28;
  a9.i32[1] = LODWORD(v28);
  v29 = vadd_f32(*v23.f32, *a9.i8);
  v30 = vextq_s8(*v20, *v20, 8uLL);
  v41 = v30;
  v30.n128_u64[0] = vmul_f32(v30.n128_u64[0], v27);
  v31.n128_f64[0] = CI::BitmapSampler::read(v16, v30, *v20, *&v27, v28, a8, a9, a10, a11);
  v42 = v31;
  v31.n128_u64[1] = v41.n128_u64[1];
  v31.n128_u64[0] = vmul_f32(v41.n128_u64[0], v29);
  *v39.i64 = CI::BitmapSampler::read(v16, v31, v32, v33, v34, v35, v36, v37, v38);
  return vmlaq_n_f32(vmulq_n_f32(v42, 1.0 - (v24 - v25)), v39, v24 - v25).u64[0];
}

unint64_t CI::sw_colorcubeopaque(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v11 + 32) << 6));
  v17 = *(v11 + 64);
  v18 = *(v11 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (v17 == 5)
  {
    v20 = v19;
  }

  v21 = *v15;
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v21, xmmword_19CF23BC0);
  v22.i32[3] = 0;
  v23 = vmulq_n_f32(vminnmq_f32(v22, xmmword_19CF23060), COERCE_FLOAT(*v20));
  v24 = v23.f32[2];
  v25 = floorf(v23.f32[2]);
  *v23.f32 = vadd_f32(*v23.f32, 0x3F0000003F000000);
  *a8.i64 = COERCE_FLOAT(*v20) + 1.0;
  *&v26 = *a8.i64 * v25;
  a9.i32[0] = 0;
  a10.i32[0] = 0;
  a10.i32[1] = v26;
  v27 = vadd_f32(*v23.f32, *a10.i8);
  v28 = *a8.i64 * fminf(v25 + 1.0, COERCE_FLOAT(*v20));
  *&v28 = v28;
  a9.i32[1] = LODWORD(v28);
  v29 = vadd_f32(*v23.f32, *a9.i8);
  v30 = vextq_s8(*v20, *v20, 8uLL);
  v41 = v30;
  v30.n128_u64[0] = vmul_f32(v30.n128_u64[0], v27);
  v31.n128_f64[0] = CI::BitmapSampler::read(v16, v30, *v20, *&v27, v28, a8, a9, a10, a11);
  v42 = v31;
  v31.n128_u64[1] = v41.n128_u64[1];
  v31.n128_u64[0] = vmul_f32(v41.n128_u64[0], v29);
  *v39.i64 = CI::BitmapSampler::read(v16, v31, v32, v33, v34, v35, v36, v37, v38);
  return vmlaq_n_f32(vmulq_n_f32(v42, 1.0 - (v24 - v25)), v39, v24 - v25).u64[0];
}

uint64_t CI::sw_colorcubeopaque_extend(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v11 + 32) << 6));
  v17 = *(v11 + 64);
  v18 = *(v11 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (v17 == 5)
  {
    v20 = v19;
  }

  v22 = vdupq_n_s32(0xBE99999A);
  v23 = vaddq_f32(*v15, v22);
  v21 = *v15;
  v21.i32[3] = 0;
  v24 = vmulq_f32(v23, v23);
  v25 = vmaxnmq_f32(v21, 0);
  v25.i32[3] = 0;
  v26.i64[1] = 1065353216;
  v27 = vaddq_f32(vminnmq_f32(v25, xmmword_19CF23BD0), v22);
  v28 = vmulq_f32(v27, v27);
  *v25.f32 = vadd_f32(vzip1_s32(*&v24.f64[0], *v28.i8), vzip2_s32(*&v24.f64[0], *v28.i8));
  v29 = vextq_s8(v28, v28, 8uLL);
  *v29.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *v29.i8), *v25.f32));
  v72 = v29;
  v30 = vmaxnmq_f32(v21, xmmword_19CF23BC0);
  v30.i32[3] = 0;
  *&v24.f64[1] = 1065353048;
  v31 = vmulq_n_f32(vminnmq_f32(v30, xmmword_19CF23060), COERCE_FLOAT(*v20));
  v32 = v31.f32[2];
  v33 = floorf(v31.f32[2]);
  *v31.f32 = vadd_f32(*v31.f32, 0x3F0000003F000000);
  v26.i64[0] = 1.0;
  v34 = COERCE_FLOAT(*v20) + 1.0;
  *v24.f64 = v34 * v33;
  v25.i32[0] = 0;
  v25.i32[1] = LODWORD(v24.f64[0]);
  *&v24.f64[0] = vadd_f32(*v31.f32, *v25.f32);
  *v21.i64 = v34 * fminf(v33 + 1.0, COERCE_FLOAT(*v20));
  v21.f32[0] = *v21.i64;
  v25.i32[0] = 0;
  v25.i32[1] = v21.i32[0];
  v35 = vadd_f32(*v31.f32, *v25.f32);
  v68 = *v20;
  v36 = vextq_s8(v68, v68, 8uLL);
  v73 = v36;
  v36.n128_u64[0] = vmul_f32(v36.n128_u64[0], *&v24.f64[0]);
  v37.n128_f64[0] = CI::BitmapSampler::read(v16, v36, v24, *v21.i64, *v25.i64, v26, *v20, a10, a11);
  v70 = v37;
  v37.n128_u64[1] = v73.n128_u64[1];
  v37.n128_u64[0] = vmul_f32(v73.n128_u64[0], v35);
  *v45.i64 = CI::BitmapSampler::read(v16, v37, v38, v39, v40, v41, v42, v43, v44);
  v50 = vmlaq_n_f32(vmulq_n_f32(v70, 1.0 - (v32 - v33)), v45, v32 - v33);
  *&v51.f64[1] = v72.i64[1];
  if (vcgt_f32(*v72.i8, vdup_lane_s32(*v72.i8, 1)).u8[0])
  {
    v52 = vmulq_n_f32(vdupq_n_s32(0x3E99999Au), *v68.i32);
    v53 = v52.n128_f32[2];
    v54 = floorf(v52.n128_f32[2]);
    v71 = v50;
    v52.n128_u64[0] = vadd_f32(v52.n128_u64[0], 0x3F0000003F000000);
    *v51.f64 = v34 * v54;
    LODWORD(v55) = 0;
    HIDWORD(v55) = LODWORD(v51.f64[0]);
    *&v51.f64[0] = vadd_f32(v52.n128_u64[0], *&v55);
    v56 = v34 * fminf(v54 + 1.0, *v68.i32);
    *&v56 = v56;
    LODWORD(v55) = 0;
    HIDWORD(v55) = LODWORD(v56);
    v57 = vadd_f32(v52.n128_u64[0], *&v55);
    v52.n128_u64[1] = v73.n128_u64[1];
    v52.n128_u64[0] = vmul_f32(v73.n128_u64[0], *&v51.f64[0]);
    v58.n128_f64[0] = CI::BitmapSampler::read(v16, v52, v51, v56, v55, v46, v47, v48, v49);
    v69 = v58;
    v58.n128_u64[1] = v73.n128_u64[1];
    v58.n128_u64[0] = vmul_f32(v73.n128_u64[0], v57);
    *v66.i64 = CI::BitmapSampler::read(v16, v58, v59, v60, v61, v62, v63, v64, v65);
    v50 = vmlaq_n_f32(vmulq_n_f32(v69, 1.0 - (v53 - v54)), v66, v53 - v54);
    v50.i64[0] = vaddq_f32(v50, vdivq_f32(vmulq_n_f32(vsubq_f32(v71, v50), *v72.i32), vdupq_lane_s32(*v72.i8, 1))).u64[0];
  }

  return v50.i64[0];
}

id ___ZL12defaultTablev_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 0;
  v8 = xmmword_19CF23CD0;
  __asm { FMOV            V0.2S, #1.0 }

  v9 = _D0;
  result = [MEMORY[0x1E695DEF0] dataWithBytes:&v6 length:36];
  defaultTable(void)::data = result;
  return result;
}

unint64_t CI::sw_colorcurves(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, __n128 a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v11 + 32) << 6));
  v17 = *(v11 + 56);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (*(v11 + 64) == 5)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v11 + 88);
  v22 = *(v11 + 80);
  v23 = (a3 + 16 * v22);
  v24 = (a2 + (v22 << 6));
  if (v21 == 5)
  {
    v24 = v23;
  }

  a7.n128_f64[0] = *v24;
  v25 = vsubq_f32(*v15, vdupq_lane_s32(*v20, 0));
  v26 = vdup_lane_s32(*v20, 1);
  v27 = vdivq_f32(v25, vdupq_lane_s32(vsub_f32(v26, *v20), 0));
  v48 = v27;
  v49 = a7;
  LODWORD(v28) = HIDWORD(*v24);
  v27.n128_u32[1] = 1056964608;
  v27.n128_f32[0] = a7.n128_f32[1] + (a7.n128_f32[0] * v27.n128_f32[0]);
  v25.f32[0] = v27.n128_f32[0];
  v29.n128_f64[0] = CI::BitmapSampler::read(v16, v27, v25, *&v26, *v24, a8, a9, a10, a11);
  v47 = v29.n128_u32[0];
  v29.n128_u64[1] = v48.n128_u64[1];
  v30 = v49;
  *v30.f64 = v28 + (v49.n128_f32[0] * v48.n128_f32[1]);
  v29.n128_u32[1] = 1056964608;
  v29.n128_f32[0] = *v30.f64;
  v37.n128_f64[0] = CI::BitmapSampler::read(v16, v29, v30, v31, v32, v33, v34, v35, v36);
  v46 = v37.n128_u32[1];
  v37.n128_u64[1] = v48.n128_u64[1];
  v38 = v49;
  *v38.f64 = v28 + (v49.n128_f32[0] * v48.n128_f32[2]);
  v37.n128_u32[1] = 1056964608;
  v37.n128_f32[0] = *v38.f64;
  CI::BitmapSampler::read(v16, v37, v38, v39, v40, v41, v42, v43, v44);
  return __PAIR64__(v46, v47);
}

double CI::sw_linearToAppleLog(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v11 = *v7;
  v8 = _simd_log2_f4(vaddq_f32(*v7, vdupq_n_s32(0x3C1DF346u)));
  v9 = vaddq_f32(v11, vdupq_n_s32(0x3D670F18u));
  *&result = vbslq_s8(vcltzq_f32(vaddq_f32(v11, vdupq_n_s32(0xBC23D70A))), vbslq_s8(vcltzq_f32(v9), 0, vmulq_f32(v9, vmulq_f32(v9, vdupq_n_s32(0x423D2601u)))), vaddq_f32(vmulq_f32(v8, vdupq_n_s32(0x3DAF1D23u)), vdupq_n_s32(0x3F3180A9u))).u64[0];
  return result;
}

double CI::sw_appleLogToLinear(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8.i64[0] = 0x4000000040000000;
  v8.i64[1] = 0x4000000040000000;
  *&result = vaddq_f32(_simd_pow_f4(v8, vdivq_f32(vaddq_f32(*v7, vdupq_n_s32(0xBF3180A9)), vdupq_n_s32(0x3DAF1D23u))), vdupq_n_s32(0xBC1DF346)).u64[0];
  return result;
}

unint64_t CI::sw_colorMonochrome(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9 = *(a2 + (*(v3 + 56) << 6));
  v10 = vmulq_f32(*v7, xmmword_19CF23D50);
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  v11 = vmulq_n_f32(v8, v10.f32[0] + v10.f32[0]);
  v12 = 1.0 - v10.f32[0] + 1.0 - v10.f32[0];
  __asm { FMOV            V6.4S, #1.0 }

  v18 = vsubq_f32(_Q6, vmulq_n_f32(vsubq_f32(_Q6, v8), v12));
  v19 = vmaxnmq_f32(v8, v18);
  v18.i32[0] = 0.5;
  return vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v9), vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v18, v10), 0), v11, v19), v9).u64[0];
}

double CI::sw_palettize(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = a4 + 80 * v4[4];
  v7 = *(a2 + (v4[7] << 6));
  DC = CI::getDC(a1);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), *DC, 1);
  *&v12 = *v11.i32 + (COERCE_FLOAT(*DC) * *(v5 + 28));
  v13.n128_f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  *v14.f64 = *v10.i32 + *&v12;
  v13.n128_f32[1] = *v10.i32 + *&v12;
  v17.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v13, v14, v9, v12, v11, v10, v15, v16);
  v38 = v17;
  LODWORD(v18) = *(v6 + 28);
  v17.n128_f32[0] = *(v6 + 24) + ((*(v6 + 20) * 0.5) + (*(v6 + 16) * 0.5));
  LODWORD(v19) = *(v6 + 36);
  *v20.f64 = *&v19 + ((*(v6 + 32) * 0.5) + (*&v18 * 0.5));
  v17.n128_f32[1] = *v20.f64;
  v25.n128_f64[0] = CI::BitmapSampler::read(*(v6 + 8), v17, v20, v18, v19, v21, v22, v23, v24);
  if (v7 > 1.0)
  {
    HIDWORD(v30) = v38.i32[1];
    v31 = vsubq_f32(v38, v25);
    v32 = vmulq_f32(v31, v31);
    v33 = vextq_s8(v32, v32, 8uLL);
    *v33.f32 = vadd_f32(*v32.i8, *v33.f32);
    *v27.i32 = vaddv_f32(*v33.f32);
    v34 = 1.0;
    do
    {
      v39 = v27;
      v40 = v25;
      v32.i32[0] = *(v6 + 24);
      v27.i32[0] = *(v6 + 36);
      *v26.i32 = *(v6 + 32) * 0.5;
      *&v30 = *v26.i32 + ((v34 + 0.5) * *(v6 + 28));
      v25.n128_f32[0] = *v32.i32 + ((*(v6 + 20) * 0.5) + ((v34 + 0.5) * *(v6 + 16)));
      v33.f32[0] = *v27.i32 + *&v30;
      v25.n128_f32[1] = *v27.i32 + *&v30;
      *v35.i64 = CI::BitmapSampler::read(*(v6 + 8), v25, v33, *v32.i64, v30, v26, v27, v28, v29);
      HIDWORD(v30) = v38.i32[1];
      v27 = v39;
      v36 = vsubq_f32(v38, v35);
      v33 = vmulq_f32(v36, v36);
      *v33.f32 = vadd_f32(*v33.f32, *&vextq_s8(v33, v33, 8uLL));
      v33.f32[0] = vaddv_f32(*v33.f32);
      v32 = vdupq_lane_s32(*&vcgtq_f32(v39, v33), 0);
      v26 = vbslq_s8(v32, v35, v40);
      v25 = v26;
      if (v33.f32[0] < v39.f32[0])
      {
        *v27.i32 = v33.f32[0];
      }

      v34 = v34 + 1.0;
    }

    while (v34 < v7);
  }

  return v25.n128_f64[0];
}

unint64_t CI::sw_ddither(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = (COERCE_FLOAT(HIDWORD(*v11->f32)) + (COERCE_FLOAT(*&v11[1]) + vaddv_f32(*v11))) * 0.25 + -0.5;
  *&v12 = v12;
  *&v12 = *(a2 + (*(v3 + 56) << 6)) * *&v12;
  return vaddq_f32(*v7, vdupq_lane_s32(*&v12, 0)).u64[0];
}

unint64_t CI::sw_shadowdesat(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9 = *(a2 + (*(v3 + 80) << 6));
  v10 = vmulq_f32(*v7, xmmword_19CF23D60);
  v11 = v10.f32[2] + vaddv_f32(*v10.f32);
  v12 = (v11 - (v8 * v9)) / (v8 - (v8 * v9));
  if (v12 <= 1.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1.0;
  }

  v14 = v12 < 0.0;
  v15 = 0;
  if (!v14)
  {
    *v15.i32 = v13;
  }

  *v15.i32 = *(a2 + (*(v3 + 56) << 6)) * (1.0 - ((*v15.i32 * *v15.i32) * ((*v15.i32 * -2.0) + 3.0)));
  return vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - *v15.i32), vdupq_lane_s32(v15, 0), v11).u64[0];
}

double CI::sw_colorMap(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = a4 + 80 * v4[4];
  v7 = *(a2 + (v4[7] << 6));
  DC = CI::getDC(a1);
  LODWORD(v9) = *(v5 + 24);
  v10.i32[0] = *(v5 + 36);
  *v11.i32 = vmuls_lane_f32(*(v5 + 32), *DC, 1);
  *&v12 = *v11.i32 + (COERCE_FLOAT(*DC) * *(v5 + 28));
  v13.n128_f32[0] = *&v9 + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  *v14.f64 = *v10.i32 + *&v12;
  v13.n128_f32[1] = *v10.i32 + *&v12;
  *v17.i64 = CI::BitmapSampler::read(*(v5 + 8), v13, v14, v9, v12, v11, v10, v15, v16);
  v28 = v17;
  LODWORD(v22.f64[0]) = 1.0;
  v23 = vmulq_n_f32(v17, 1.0 / fmaxf(v17.f32[3], 0.00001));
  HIDWORD(v25) = 1060578420;
  v24 = vmulq_f32(v23, xmmword_19CF23D50);
  *&v25 = vaddv_f32(v24.n128_u64[0]);
  if ((v24.n128_f32[2] + *&v25) <= 1.0)
  {
    *v22.f64 = v24.n128_f32[2] + *&v25;
  }

  v24.n128_u32[0] = 0;
  if ((v24.n128_f32[2] + *&v25) >= 0.0)
  {
    v24.n128_f32[0] = *v22.f64;
  }

  *&v25 = (v7 * v24.n128_f32[0]) + 0.5;
  v18.i32[0] = *(v6 + 28);
  v24.n128_f32[0] = *(v6 + 24) + ((*(v6 + 20) * 0.5) + (*&v25 * *(v6 + 16)));
  v23.i32[0] = *(v6 + 32);
  v19.i32[0] = *(v6 + 36);
  *v22.f64 = *v19.i32 + ((v23.f32[0] * 0.5) + (*&v25 * *v18.i32));
  v24.n128_f32[1] = *v22.f64;
  *v26.i64 = CI::BitmapSampler::read(*(v6 + 8), v24, v22, v25, *v23.i64, v18, v19, v20, v21);
  *&result = vmulq_laneq_f32(v26, v28, 3).u64[0];
  return result;
}

double CI::sw_ciSingleChannelColorMap(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = a4 + 80 * *(v4 + 32);
  DC = CI::getDC(a1);
  LODWORD(v8) = *(v5 + 24);
  v9.i32[0] = *(v5 + 36);
  *v10.i32 = vmuls_lane_f32(*(v5 + 32), *DC, 1);
  *&v11 = *v10.i32 + (COERCE_FLOAT(*DC) * *(v5 + 28));
  v12.n128_f32[0] = *&v8 + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  *v13.f64 = *v9.i32 + *&v11;
  v12.n128_f32[1] = *v9.i32 + *&v11;
  v16.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v12, v13, v8, v11, v10, v9, v14, v15);
  LODWORD(v22.f64[0]) = 1.0;
  if (v16.n128_f32[0] <= 1.0)
  {
    *v22.f64 = v16.n128_f32[0];
  }

  v23 = v16.n128_f32[0] < 0.0;
  v16.n128_u32[0] = 0;
  if (!v23)
  {
    v16.n128_f32[0] = *v22.f64;
  }

  HIDWORD(v22.f64[0]) = 1081073664;
  v24 = 0.5;
  *v22.f64 = v16.n128_f32[0] * 255.0 + 0.5;
  LODWORD(v17) = 0.5;
  v18.i32[0] = *(v6 + 28);
  v16.n128_f32[0] = *(v6 + 24) + ((*(v6 + 20) * 0.5) + (*v22.f64 * *(v6 + 16)));
  v19.i32[0] = *(v6 + 36);
  *&v24 = *(v6 + 32) * 0.5;
  *v22.f64 = *v19.i32 + (*&v24 + (*v22.f64 * *v18.i32));
  v16.n128_u32[1] = LODWORD(v22.f64[0]);
  return CI::BitmapSampler::read(*(v6 + 8), v16, v22, v24, v17, v18, v19, v20, v21);
}

uint64_t CI::sw_ciExtractChannel(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *(a2 + (*(v3 + 32) << 6));
  if (v8 >= 3)
  {
    v8 = 3;
  }

  return *(v7 + 4 * v8);
}

double CI::sw_colorPolynomial(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 112);
  v21 = *(v3 + 104);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (v20 == 5)
  {
    v23 = v22;
  }

  *&result = vaddq_f32(*v11, vmulq_f32(*v7, vaddq_f32(*v15, vmulq_f32(*v7, vaddq_f32(*v19, vmulq_f32(*v7, *v23)))))).u64[0];
  return result;
}

unint64_t CI::sw_colorPolynomialRGB(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 112);
  v21 = *(v3 + 104);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (v20 == 5)
  {
    v23 = v22;
  }

  return vaddq_f32(*v11, vmulq_f32(*v7, vaddq_f32(*v15, vmulq_f32(*v7, vaddq_f32(*v19, vmulq_f32(*v7, *v23)))))).u64[0];
}

uint64_t CI::sw_colorPolynomialInverse(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 112);
  v21 = *(v3 + 104);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (v20 == 5)
  {
    v23 = v22;
  }

  v51 = *v7;
  v52 = *v11;
  v24 = vmulq_f32(*v19, *v19);
  v25 = vmulq_f32(*v19, v24);
  v45 = *v23;
  v46 = v24;
  v50 = *v19;
  __asm { FMOV            V1.4S, #27.0 }

  v53 = vsubq_f32(*v7, *v11);
  __asm { FMOV            V2.4S, #9.0 }

  v32 = vsubq_f32(vaddq_f32(vmulq_f32(*v23, vmulq_f32(*v19, vmulq_f32(*v15, _Q2))), vmulq_f32(v53, vmulq_f32(*v23, vmulq_f32(*v23, _Q1)))), vaddq_f32(v25, v25));
  __asm { FMOV            V1.4S, #3.0 }

  v47 = _Q1;
  v48 = *v15;
  v34 = vsubq_f32(vmulq_f32(vmulq_f32(*v15, _Q1), *v23), v24);
  __asm { FMOV            V3.4S, #4.0 }

  v49 = _Q3;
  v36 = vaddq_f32(v32, vsqrtq_f32(vaddq_f32(vmulq_f32(v34, vmulq_f32(v34, vmulq_f32(v34, _Q3))), vmulq_f32(v32, v32))));
  v34.i64[0] = 0x3F0000003F000000;
  v34.i64[1] = 0x3F0000003F000000;
  v37 = _simd_pow_f4(vmulq_f32(v36, v34), vdupq_n_s64(0x3EAAAAAB3EAAAAABuLL));
  v38 = vmulq_f32(v45, v47);
  v39 = vsubq_f32(vsubq_f32(vdivq_f32(v37, v38), vdivq_f32(vsubq_f32(v48, vdivq_f32(v46, v38)), v37)), vdivq_f32(v50, v38));
  v40 = vsubq_f32(v52, v51);
  v41 = vdivq_f32(vsubq_f32(vsqrtq_f32(vsubq_f32(vmulq_f32(v48, v48), vmulq_f32(v40, vmulq_f32(v50, v49)))), v48), vaddq_f32(v50, v50));
  v42 = vdivq_f32(v53, v48);
  v40.i64[0] = 0;
  LODWORD(v43) = vbslq_s8(vceqq_f32(v45, v40), vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v50, v40), 0), v42, v41), v39).u32[0];
  HIDWORD(v43) = vbslq_s8(vdupq_lane_s32(vceqq_f32(vdupq_lane_s32(*&v45, 1), v40), 0), vbslq_s8(vdupq_lane_s32(vceqq_f32(vdupq_lane_s32(*&v50, 1), v40), 0), v42, v41), v39).i32[1];
  return v43;
}

uint64_t CI::sw_colorPolynomialInverseRGB(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 112);
  v21 = *(v3 + 104);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (v20 == 5)
  {
    v23 = v22;
  }

  v51 = *v7;
  v52 = *v11;
  v24 = vmulq_f32(*v19, *v19);
  v25 = vmulq_f32(*v19, v24);
  v45 = *v23;
  v46 = v24;
  v50 = *v19;
  __asm { FMOV            V1.4S, #27.0 }

  v53 = vsubq_f32(*v7, *v11);
  __asm { FMOV            V2.4S, #9.0 }

  v32 = vsubq_f32(vaddq_f32(vmulq_f32(*v23, vmulq_f32(*v19, vmulq_f32(*v15, _Q2))), vmulq_f32(v53, vmulq_f32(*v23, vmulq_f32(*v23, _Q1)))), vaddq_f32(v25, v25));
  __asm { FMOV            V1.4S, #3.0 }

  v47 = _Q1;
  v48 = *v15;
  v34 = vsubq_f32(vmulq_f32(vmulq_f32(*v15, _Q1), *v23), v24);
  __asm { FMOV            V3.4S, #4.0 }

  v49 = _Q3;
  v36 = vaddq_f32(v32, vsqrtq_f32(vaddq_f32(vmulq_f32(v34, vmulq_f32(v34, vmulq_f32(v34, _Q3))), vmulq_f32(v32, v32))));
  v34.i64[0] = 0x3F0000003F000000;
  v34.i64[1] = 0x3F0000003F000000;
  v37 = _simd_pow_f4(vmulq_f32(v36, v34), vdupq_n_s64(0x3EAAAAAB3EAAAAABuLL));
  v38 = vmulq_f32(v45, v47);
  v39 = vsubq_f32(vsubq_f32(vdivq_f32(v37, v38), vdivq_f32(vsubq_f32(v48, vdivq_f32(v46, v38)), v37)), vdivq_f32(v50, v38));
  v40 = vsubq_f32(v52, v51);
  v41 = vdivq_f32(vsubq_f32(vsqrtq_f32(vsubq_f32(vmulq_f32(v48, v48), vmulq_f32(v40, vmulq_f32(v50, v49)))), v48), vaddq_f32(v50, v50));
  v42 = vdivq_f32(v53, v48);
  v40.i64[0] = 0;
  LODWORD(v43) = vbslq_s8(vceqq_f32(v45, v40), vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v50, v40), 0), v42, v41), v39).u32[0];
  HIDWORD(v43) = vbslq_s8(vdupq_lane_s32(vceqq_f32(vdupq_lane_s32(*&v45, 1), v40), 0), vbslq_s8(vdupq_lane_s32(vceqq_f32(vdupq_lane_s32(*&v50, 1), v40), 0), v42, v41), v39).i32[1];
  return v43;
}

unint64_t CI::sw_colorCrossPolynomial(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  LODWORD(v9) = HIDWORD(v7->i64[0]);
  return vaddq_f32(*(a2 + (*(v3 + 248) << 6)), vaddq_f32(vmulq_n_f32(*(a2 + (*(v3 + 224) << 6)), vmuls_lane_f32(v8.f32[0], v8, 2)), vaddq_f32(vmulq_n_f32(*(a2 + (*(v3 + 200) << 6)), vmuls_lane_f32(v9, *v7, 2)), vaddq_f32(vmulq_n_f32(*(a2 + (*(v3 + 176) << 6)), vmuls_lane_f32(v8.f32[0], *v8.f32, 1)), vaddq_f32(vmulq_n_f32(*(a2 + (*(v3 + 152) << 6)), vmuls_lane_f32(COERCE_FLOAT(v7->i64[1]), *v7, 2)), vaddq_f32(vmulq_n_f32(*(a2 + (*(v3 + 128) << 6)), vmuls_lane_f32(v9, *v7->f32, 1)), vaddq_f32(vmulq_n_f32(*(a2 + (*(v3 + 104) << 6)), vmulq_f32(v8, v8).f32[0]), vaddq_f32(vmulq_laneq_f32(*(a2 + (*(v3 + 80) << 6)), *v7, 2), vaddq_f32(vmulq_n_f32(*(a2 + (*(v3 + 32) << 6)), COERCE_FLOAT(*v7)), vmulq_lane_f32(*(a2 + (*(v3 + 56) << 6)), *v7->f32, 1)))))))))).u64[0];
}

unint64_t CI::sw_colorPosterize(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12.i64[0] = 0x3F0000003F000000;
  v12.i64[1] = 0x3F0000003F000000;
  v13 = vaddq_f32(vmulq_n_f32(*v7, COERCE_FLOAT(*v11)), v12);
  v13.i32[3] = 0;
  return vmulq_lane_f32(vrndmq_f32(v13), *v11, 1).u64[0];
}

double CI::sw_colorThreshold(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = (a2 + (*(v3 + 32) << 6));
  v9 = vld1q_dup_f32(v8);
  __asm { FMOV            V2.4S, #1.0 }

  *&result = vbicq_s8(_Q2, vcgtq_f32(v9, *v7)).u64[0];
  return result;
}

double CI::sw_otsu(uint64_t a1, uint64_t a2, float32x4_t a3, uint64_t a4, uint64_t a5, int8x16_t a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(a2 + (*(v11 + 32) << 6));
  v13 = v12;
  if (v12 < 1)
  {
    v21 = 0uLL;
  }

  else
  {
    v14 = 0;
    v15 = a5 + 80 * *(v11 + 8);
    v16 = 0uLL;
    v17 = 0.0;
    v18 = 0uLL;
    do
    {
      v43 = v18;
      v45 = v16;
      a3.f32[0] = v17 + 0.5;
      LODWORD(a7) = *(v15 + 24);
      a10.i32[0] = *(v15 + 36);
      *a9.i32 = *(v15 + 32) * 0.5;
      *a8.i32 = *a9.i32 + (a3.f32[0] * *(v15 + 28));
      a3.f32[0] = *&a7 + ((*(v15 + 20) * 0.5) + (a3.f32[0] * *(v15 + 16)));
      *a6.i32 = *a10.i32 + *a8.i32;
      a3.f32[1] = *a10.i32 + *a8.i32;
      *v19.i64 = CI::BitmapSampler::read(*(v15 + 8), a3, a6, a7, *a8.i64, a9, a10, a11, v16);
      v16 = vaddq_f32(v45, v19);
      a3 = vmulq_n_f32(v19, v14);
      v18 = vaddq_f32(v43, a3);
      v17 = v17 + 1.0;
      ++v14;
    }

    while (v13 != v14);
    v20 = 0;
    v21 = 0uLL;
    v22 = 0.0;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v44 = v18;
    v46 = v16;
    do
    {
      v39 = v21;
      v40 = v25;
      v41 = v24;
      v42 = v23;
      a3.f32[0] = v22 + 0.5;
      v21.i32[0] = *(v15 + 24);
      a10.i32[0] = *(v15 + 36);
      *a9.i32 = *(v15 + 32) * 0.5;
      *a8.i32 = *a9.i32 + (a3.f32[0] * *(v15 + 28));
      a3.f32[0] = v21.f32[0] + ((*(v15 + 20) * 0.5) + (a3.f32[0] * *(v15 + 16)));
      *a6.i32 = *a10.i32 + *a8.i32;
      a3.f32[1] = *a10.i32 + *a8.i32;
      *v26.i64 = CI::BitmapSampler::read(*(v15 + 8), a3, a6, *v21.i64, *a8.i64, a9, a10, a11, v16);
      v16 = v46;
      v27 = vmulq_f32(v41, vsubq_f32(v46, v41));
      v28 = vmulq_f32(v44, v41);
      v29 = vsubq_f32(vmulq_f32(v46, v42), v28);
      v30 = vdivq_f32(vmulq_f32(v29, v29), v27);
      v28.i64[0] = 0;
      v31 = v30;
      v31.i32[0] = -1.0;
      v32 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v28, v27)), 0), v30, v31);
      v33 = v32;
      v33.i32[1] = -1.0;
      *v27.f32 = vmvn_s8(vclez_f32(*&vextq_s8(v27, v27, 4uLL)));
      v34 = vbslq_s8(vmovl_s16(vdup_lane_s16(*v27.f32, 0)), v32, v33);
      a8 = v34;
      a8.i32[2] = -1.0;
      a6 = vbslq_s8(vmovl_s16(vdup_lane_s16(*v27.f32, 2)), v34, a8);
      *v34.i8 = vmovn_s32(vmvnq_s8(vcgeq_f32(a6, v40)));
      v35 = v39;
      *v35.i32 = v20;
      v36 = vbslq_s8(vmovl_s16(vdup_lane_s16(*v34.i8, 0)), v39, v35);
      v37 = v36;
      *&v37.i32[1] = v20;
      a11 = vmovl_s16(vdup_lane_s16(*v34.i8, 1));
      a9 = vbslq_s8(a11, v36, v37);
      a10 = a9;
      *&a10.i32[2] = v20;
      v21 = vbslq_s8(vmovl_s16(vdup_lane_s16(*v34.i8, 2)), a9, a10);
      v25 = vmaxnmq_f32(v40, a6);
      v24 = vaddq_f32(v41, v26);
      a3 = vmulq_n_f32(v26, v20);
      v23 = vaddq_f32(v42, a3);
      v22 = v22 + 1.0;
      ++v20;
    }

    while (v13 != v20);
  }

  a3.f32[0] = v12 + -1.0;
  a3.i64[0] = vdivq_f32(v21, vdupq_lane_s32(*a3.f32, 0)).u64[0];
  return *a3.i64;
}

unint64_t CI::sw_otsuThresh(uint64_t a1, uint64_t a2, uint64_t a3)
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

  __asm { FMOV            V2.4S, #1.0 }

  return vbicq_s8(_Q2, vcgtq_f32(*v11, *v7)).u64[0];
}

unint64_t CI::sw_sobelEdges(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v101 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  v7 = *(v5 + 16);
  v8 = *(v5 + 20);
  v9.i32[0] = *(v5 + 24);
  v10.i32[0] = *(v5 + 28);
  v11.n128_f32[0] = *v9.i32 + (vmuls_lane_f32(v8, *DC, 1) + (COERCE_FLOAT(*DC) * v7));
  LODWORD(v12) = *(v5 + 32);
  v13.i32[0] = *(v5 + 36);
  v11.n128_f32[1] = *v13.i32 + (vmuls_lane_f32(*&v12, *DC, 1) + (COERCE_FLOAT(*DC) * *v10.i32));
  v14 = vadd_f32(*DC, 1065353216);
  v15.f32[0] = *v9.i32 + (vmuls_lane_f32(v8, v14, 1) + (v14.f32[0] * v7));
  v15.f32[1] = *v13.i32 + (vmuls_lane_f32(*&v12, v14, 1) + (v14.f32[0] * *v10.i32));
  v16 = vsub_f32(v15, v11.n128_u64[0]);
  v17.i64[0] = 0x3F80000000000000;
  v18 = vadd_f32(*DC, 0x3F80000000000000);
  *v19.f64 = *v9.i32 + (vmuls_lane_f32(v8, v18, 1) + (v18.f32[0] * v7));
  *&v20 = vmuls_lane_f32(*&v12, v18, 1);
  *(v19.f64 + 1) = *v13.i32 + (*&v20 + (v18.f32[0] * *v10.i32));
  v102 = v11;
  v21 = vsub_f32(*&v19.f64[0], v11.n128_u64[0]);
  v22 = vadd_f32(v21, v16);
  v23.n128_u64[0] = vadd_f32(v11.n128_u64[0], v22);
  v24.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v23, v19, v20, v12, v9, v10, v13, v17);
  v100 = v24;
  v24.n128_u64[1] = v102.n128_u64[1];
  v24.n128_u64[0] = vsub_f32(v102.n128_u64[0], v22);
  v32.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v24, v25, v26, v27, v28, v29, v30, v31);
  v99 = v32;
  v33 = vsub_f32(v16, v21);
  v32.n128_u64[1] = v102.n128_u64[1];
  v32.n128_u64[0] = vadd_f32(v102.n128_u64[0], v33);
  v41.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v32, v34, v35, v36, v37, v38, v39, v40);
  v98 = v41;
  v41.n128_u64[1] = v102.n128_u64[1];
  v41.n128_u64[0] = vsub_f32(v102.n128_u64[0], v33);
  v49.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v41, v42, v43, v44, v45, v46, v47, v48);
  v97 = v49;
  v49.n128_u64[1] = v102.n128_u64[1];
  v49.n128_u64[0] = vadd_f32(v102.n128_u64[0], v21);
  v57.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v49, v50, v51, v52, v53, v54, v55, v56);
  v96 = v57;
  v57.n128_u64[1] = v102.n128_u64[1];
  v57.n128_u64[0] = vsub_f32(v102.n128_u64[0], v21);
  v65.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v57, v58, v59, v60, v61, v62, v63, v64);
  v95 = v65;
  v65.n128_u64[1] = v102.n128_u64[1];
  v65.n128_u64[0] = vadd_f32(v102.n128_u64[0], v16);
  v73.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v65, v66, v67, v68, v69, v70, v71, v72);
  v94 = v73;
  v73.n128_u64[1] = v102.n128_u64[1];
  v73.n128_u64[0] = vsub_f32(v102.n128_u64[0], v16);
  *v81.i64 = CI::BitmapSampler::read(*(v5 + 8), v73, v74, v75, v76, v77, v78, v79, v80);
  v93 = v81;
  *v89.i64 = CI::BitmapSampler::read(*(v5 + 8), v102, v82, v83, v84, v85, v86, v87, v88);
  v90 = vsubq_f32(vaddq_f32(v98, vaddq_f32(v100, vaddq_f32(v94, v94))), vaddq_f32(v99, vaddq_f32(v97, vaddq_f32(v93, v93))));
  v91 = vsubq_f32(vaddq_f32(v100, vaddq_f32(v97, vaddq_f32(v96, v96))), vaddq_f32(v98, vaddq_f32(v99, vaddq_f32(v95, v95))));
  return vmulq_laneq_f32(vmulq_n_f32(vsqrtq_f32(vaddq_f32(vmulq_f32(v91, v91), vmulq_f32(v90, v90))), v101), v89, 3).u64[0];
}

unint64_t CI::sw_noiseComicReduction(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t a5)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = a4 + 80 * *(v5 + 8);
  a5.i64[0] = *v9;
  v108 = a5;
  v105 = *(a2 + (*(v5 + 56) << 6));
  v106 = *(a2 + (*(v5 + 80) << 6));
  DC = CI::getDC(a1);
  *v12.i8 = *DC;
  v109 = v12;
  LODWORD(v13) = *(v10 + 28);
  v14.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v10 + 16)));
  LODWORD(v15) = *(v10 + 36);
  *v16.f64 = *&v15 + (vmuls_lane_f32(*(v10 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v13));
  v14.n128_u32[1] = LODWORD(v16.f64[0]);
  v20.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v14, v16, v13, v15, v12, v17, v18, v19);
  v104 = v20;
  v20.n128_u64[1] = v108.u64[1];
  v20.n128_u32[0] = 0;
  v20.n128_f32[1] = -*v108.i32;
  v21 = v109;
  v20.n128_u64[0] = vadd_f32(v20.n128_u64[0], *&v109.f64[0]);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), v20.n128_u64[0], 1);
  *&v25 = *v24.i32 + (v20.n128_f32[0] * *(v10 + 28));
  v20.n128_f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), v20.n128_u64[0], 1) + (v20.n128_f32[0] * *(v10 + 16)));
  *v21.f64 = *v23.i32 + *&v25;
  v20.n128_f32[1] = *v23.i32 + *&v25;
  v28.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v20, v21, v22, v25, v24, v23, v26, v27);
  v103 = v28;
  v28.n128_u64[1] = v108.u64[1];
  v29 = v109;
  v28.n128_u64[0] = vadd_f32(vzip1_s32(0, *v108.i8), *&v109.f64[0]);
  LODWORD(v30) = *(v10 + 24);
  v31.i32[0] = *(v10 + 36);
  *v32.i32 = vmuls_lane_f32(*(v10 + 32), v28.n128_u64[0], 1);
  *&v33 = *v32.i32 + (v28.n128_f32[0] * *(v10 + 28));
  v28.n128_f32[0] = *&v30 + (vmuls_lane_f32(*(v10 + 20), v28.n128_u64[0], 1) + (v28.n128_f32[0] * *(v10 + 16)));
  *v29.f64 = *v31.i32 + *&v33;
  v28.n128_f32[1] = *v31.i32 + *&v33;
  v36.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v28, v29, v30, v33, v32, v31, v34, v35);
  v102 = v36;
  *&v37.f64[0] = COERCE_UNSIGNED_INT(-*v108.i32);
  v36.n128_u64[1] = *&v109.f64[1];
  v36.n128_u64[0] = vadd_f32(*&v37.f64[0], *&v109.f64[0]);
  LODWORD(v38) = *(v10 + 24);
  v39.i32[0] = *(v10 + 36);
  *v40.i32 = vmuls_lane_f32(*(v10 + 32), v36.n128_u64[0], 1);
  *&v41 = *v40.i32 + (v36.n128_f32[0] * *(v10 + 28));
  v36.n128_f32[0] = *&v38 + (vmuls_lane_f32(*(v10 + 20), v36.n128_u64[0], 1) + (v36.n128_f32[0] * *(v10 + 16)));
  *v37.f64 = *v39.i32 + *&v41;
  v36.n128_f32[1] = *v39.i32 + *&v41;
  v44.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v36, v37, v38, v41, v40, v39, v42, v43);
  v101 = v44;
  v44.n128_u64[1] = v108.u64[1];
  v45 = v109;
  v44.n128_u64[0] = vadd_f32(v108.u32[0], *&v109.f64[0]);
  LODWORD(v46) = *(v10 + 24);
  v47.i32[0] = *(v10 + 36);
  *v48.i32 = vmuls_lane_f32(*(v10 + 32), v44.n128_u64[0], 1);
  *&v49 = *v48.i32 + (v44.n128_f32[0] * *(v10 + 28));
  v44.n128_f32[0] = *&v46 + (vmuls_lane_f32(*(v10 + 20), v44.n128_u64[0], 1) + (v44.n128_f32[0] * *(v10 + 16)));
  *v45.f64 = *v47.i32 + *&v49;
  v44.n128_f32[1] = *v47.i32 + *&v49;
  v52.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v44, v45, v46, v49, v48, v47, v50, v51);
  v100 = v52;
  *&v53.f64[0] = vdup_lane_s32(*v108.i8, 1);
  v97 = v53;
  v52.n128_u64[1] = *&v109.f64[1];
  v52.n128_u64[0] = vadd_f32(*&v53.f64[0], *&v109.f64[0]);
  LODWORD(v54) = *(v10 + 24);
  v55.i32[0] = *(v10 + 36);
  *v56.i32 = vmuls_lane_f32(*(v10 + 32), v52.n128_u64[0], 1);
  *&v57 = *v56.i32 + (v52.n128_f32[0] * *(v10 + 28));
  v52.n128_f32[0] = *&v54 + (vmuls_lane_f32(*(v10 + 20), v52.n128_u64[0], 1) + (v52.n128_f32[0] * *(v10 + 16)));
  *v53.f64 = *v55.i32 + *&v57;
  v52.n128_f32[1] = *v55.i32 + *&v57;
  v59.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v52, v53, v54, v57, v56, v55, v108, v58);
  v99 = v59;
  v59.n128_f32[0] = -*&v108.i32[1];
  v107 = v59;
  v60 = v97;
  *(v60.f64 + 1) = -*&v108.i32[1];
  v59.n128_u64[1] = *&v109.f64[1];
  v59.n128_u64[0] = vadd_f32(*&v60.f64[0], *&v109.f64[0]);
  LODWORD(v61) = *(v10 + 24);
  v62.i32[0] = *(v10 + 36);
  *v63.i32 = vmuls_lane_f32(*(v10 + 32), v59.n128_u64[0], 1);
  *&v64 = *v63.i32 + (v59.n128_f32[0] * *(v10 + 28));
  v59.n128_f32[0] = *&v61 + (vmuls_lane_f32(*(v10 + 20), v59.n128_u64[0], 1) + (v59.n128_f32[0] * *(v10 + 16)));
  *v60.f64 = *v62.i32 + *&v64;
  v59.n128_f32[1] = *v62.i32 + *&v64;
  v67.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v59, v60, v61, v64, v63, v62, v65, v66);
  v98 = v67;
  v67.n128_u64[1] = v107.n128_u64[1];
  v68 = v109;
  v67.n128_u64[0] = vadd_f32(vdup_lane_s32(v107.n128_u64[0], 0), *&v109.f64[0]);
  LODWORD(v69) = *(v10 + 24);
  v70.i32[0] = *(v10 + 36);
  *v71.i32 = vmuls_lane_f32(*(v10 + 32), v67.n128_u64[0], 1);
  *&v72 = *v71.i32 + (v67.n128_f32[0] * *(v10 + 28));
  v67.n128_f32[0] = *&v69 + (vmuls_lane_f32(*(v10 + 20), v67.n128_u64[0], 1) + (v67.n128_f32[0] * *(v10 + 16)));
  *v68.f64 = *v70.i32 + *&v72;
  v67.n128_f32[1] = *v70.i32 + *&v72;
  *v75.i64 = CI::BitmapSampler::read(*(v10 + 8), v67, v68, v69, v72, v71, v70, v73, v74);
  v96 = v75;
  v76 = v108;
  v76.n128_u32[0] = v107.n128_u32[0];
  v77 = v109;
  v76.n128_u64[0] = vadd_f32(v76.n128_u64[0], *&v109.f64[0]);
  LODWORD(v78) = *(v10 + 24);
  v79.i32[0] = *(v10 + 36);
  *v80.i32 = vmuls_lane_f32(*(v10 + 32), v76.n128_u64[0], 1);
  *&v81 = *v80.i32 + (v76.n128_f32[0] * *(v10 + 28));
  v76.n128_f32[0] = *&v78 + (vmuls_lane_f32(*(v10 + 20), v76.n128_u64[0], 1) + (v76.n128_f32[0] * *(v10 + 16)));
  *v77.f64 = *v79.i32 + *&v81;
  v76.n128_f32[1] = *v79.i32 + *&v81;
  *v84.i64 = CI::BitmapSampler::read(*(v10 + 8), v76, v77, v78, v81, v80, v79, v82, v83);
  _V3.S[1] = DWORD1(v106);
  v86 = vaddq_f32(vmulq_laneq_f32(v104, v105, 2), vaddq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vaddq_f32(v103, v102), v101), v100), v105.f32[0]), vmulq_lane_f32(vaddq_f32(vaddq_f32(vaddq_f32(v99, v98), v96), v84), *v105.f32, 1)));
  _Q1 = vabdq_f32(v86, v104);
  _Q1.f32[0] = _Q1.f32[2] + vaddv_f32(*_Q1.f32);
  __asm { FMLA            S2, S1, V3.S[1] }

  v93 = *(&v106 + 2);
  if (_S2 <= 1.0)
  {
    v94 = _S2;
  }

  else
  {
    v94 = 1.0;
  }

  if (_S2 >= *(&v106 + 2))
  {
    v93 = v94;
  }

  return vmlaq_n_f32(vmulq_n_f32(v104, 1.0 - v93), v86, v93).u64[0];
}

double CI::sw_spotColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 16) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 32);
  v10 = *(v4 + 56);
  v11 = *(v4 + 80);
  v12 = *(v4 + 104);
  v13 = *(v4 + 128);
  v14 = *(v4 + 152);
  v15 = *(v4 + 176);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v4 + 184) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v4 + 208);
  v20 = *(v4 + 200);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (v19 == 5)
  {
    v22 = v21;
  }

  v23 = v14 << 6;
  *v3.i32 = fmaxf(COERCE_FLOAT(HIDWORD(*v8)), 0.00001);
  v24 = vdivq_f32(*v8, vdupq_lane_s32(v3, 0));
  v25 = vsubq_f32(v24, *(a2 + (v9 << 6)));
  v26 = vmulq_f32(v25, v25);
  v27 = ((COERCE_FLOAT(*v18->i8) - sqrtf(v26.f32[2] + vaddv_f32(*v26.f32))) * COERCE_FLOAT(*v22->i8)) + 0.5;
  if (v27 <= 1.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = 1.0;
  }

  if (v27 < 0.0)
  {
    v28 = 0.0;
  }

  v29 = vmulq_n_f32(*(a2 + (v10 << 6)), v28);
  v30 = vsubq_f32(v24, *(a2 + (v11 << 6)));
  v31 = vmulq_f32(v30, v30);
  v32 = vsubq_f32(v24, *(a2 + (v13 << 6)));
  v33 = vmulq_f32(v32, v32);
  v34 = vadd_f32(vmul_f32(vext_s8(*v22, *&vextq_s8(*v22->i8, *v22->i8, 8uLL), 4uLL), vsub_f32(vext_s8(*v18, *&vextq_s8(*v18->i8, *v18->i8, 8uLL), 4uLL), vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v33, v33, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v33.i8), vzip2_s32(*v31.i8, *v33.i8)))))), 0x3F0000003F000000);
  if (*v34.i32 <= 1.0)
  {
    v35 = *v34.i32;
  }

  else
  {
    v35 = 1.0;
  }

  v36 = vcltz_f32(v34);
  if (v36.i8[0])
  {
    v35 = 0.0;
  }

  v37 = vmulq_n_f32(*(a2 + (v12 << 6)), v35);
  v34.i32[0] = v34.i32[1];
  if (*&v34.i32[1] > 1.0)
  {
    *v34.i32 = 1.0;
  }

  if (v36.i8[4])
  {
    *v34.i32 = 0.0;
  }

  v38 = vmulq_n_f32(*(a2 + v23), *v34.i32);
  *v34.i32 = 1.0 - v29.f32[3];
  *&result = vaddq_f32(v38, vmulq_n_f32(vaddq_f32(v37, vmulq_n_f32(vaddq_f32(v29, vdupq_lane_s32(v34, 0)), 1.0 - v37.f32[3])), 1.0 - v38.f32[3])).u64[0];
  return result;
}

void CoreAnalytics(NSString *a1, CIContext *a2)
{
  v9[4] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [(CIContext *)a2 _internalContext];
    v4 = v3;
    if (v3)
    {
      v8[0] = @"cacheIntermediates";
      if ((*(*v3 + 240))(v3) == -1)
      {
        v5 = &unk_1F1081998;
      }

      else
      {
        v5 = &unk_1F10819B0;
      }

      v9[0] = v5;
      v8[1] = @"workingFormat";
      v9[1] = [MEMORY[0x1E696AEC0] stringWithUTF8String:CI::name_for_format(*(v4 + 32))];
      v8[2] = @"backing";
      v9[2] = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*v4 + 312))(v4)];
      v8[3] = @"coreui";
      if (!strcmp((v4 + 236), "CoreUI"))
      {
        v6 = &unk_1F10819B0;
      }

      else
      {
        v6 = &unk_1F1081998;
      }

      v9[3] = v6;
      v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];
    }

    if ((atomic_load_explicit(byte_1ED7C44A0, memory_order_acquire) & 1) == 0)
    {
      CoreAnalytics();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL13CoreAnalyticsP8NSStringP9CIContext_block_invoke;
    block[3] = &unk_1E75C20F8;
    block[4] = v4;
    block[5] = a1;
    dispatch_async(_MergedGlobals_0, block);
  }
}

void OptionIsTrueOrFalse(void *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  if (result && a2)
  {
    result = [result objectForKey:a2];
    v4 = result;
  }

  if (v4 == MEMORY[0x1E695E118] || v4 == &unk_1F10819B0)
  {
    v6 = *(a3 + 16);
    v7 = a3;
    v8 = 1;
  }

  else
  {
    if (v4 != MEMORY[0x1E695E110] && v4 != &unk_1F1081998)
    {
      if (v4)
      {
        v10 = ci_logger_api(result, a2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          OptionIsTrueOrFalse();
        }
      }

      return;
    }

    v6 = *(a3 + 16);
    v7 = a3;
    v8 = 0;
  }

  v6(v7, v8);
}

CI *GetOutputColorSpaceFromOptions(NSDictionary *a1, BOOL *a2)
{
  if (a2)
  {
    *a2 = 1;
  }

  v4 = [(NSDictionary *)a1 valueForKey:@"output_color_space"];
  result = 0;
  if (v4)
  {
    if (v4 != *MEMORY[0x1E695E738])
    {
      is_RGB_or_Gray_and_supports_output = CI::ColorSpace_is_RGB_or_Gray_and_supports_output(v4, v3);
      result = v4;
      if (!is_RGB_or_Gray_and_supports_output)
      {
        v8 = ci_logger_api(v4, v6);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          GetOutputColorSpaceFromOptions();
        }

        result = 0;
        if (a2)
        {
          *a2 = 0;
        }
      }
    }
  }

  return result;
}

CGColorSpaceRef GetWorkingColorSpaceFromOptions(NSDictionary *a1, BOOL *a2)
{
  if (a2)
  {
    *a2 = 1;
  }

  v3 = [(NSDictionary *)a1 valueForKey:@"working_color_space"];
  DeviceRGB = v3;
  if (v3 && v3 != *MEMORY[0x1E695E738])
  {
    if (!CGColorSpaceGetType())
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      CFAutorelease(DeviceRGB);
    }

    is_RGB_and_supports_output = CI::ColorSpace_is_RGB_and_supports_output(DeviceRGB, v5);
    if (!is_RGB_and_supports_output)
    {
      v8 = ci_logger_api(is_RGB_and_supports_output, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        GetWorkingColorSpaceFromOptions();
      }

      DeviceRGB = 0;
      if (a2)
      {
        *a2 = 0;
      }
    }
  }

  return DeviceRGB;
}

uint64_t OptionPriority(NSDictionary *a1)
{
  v1 = MEMORY[0x1E695E118];
  if (!a1)
  {
    return a1 == v1 || a1 == &unk_1F10819B0;
  }

  v2 = a1;
  v3 = [(NSDictionary *)a1 objectForKey:@"priority_request_high"];
  if (v3 == v1 || v3 == &unk_1F10819B0)
  {
    return 3;
  }

  v6 = [(NSDictionary *)v2 objectForKey:@"priority_request_media"];
  result = 2;
  if (v6 != v1 && v6 != &unk_1F10819B0)
  {
    a1 = [(NSDictionary *)v2 objectForKey:@"priority_request_low"];
    return a1 == v1 || a1 == &unk_1F10819B0;
  }

  return result;
}

void *___ZL13CoreAnalyticsP8NSStringP9CIContext_block_invoke_2(uint64_t a1)
{
  v13[8] = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  v4 = CoreAnayticsAppIndentifier(v2);
  v5 = [MEMORY[0x1E6963668] extensionPointRecordForCurrentProcess];
  if (v5)
  {
    v6 = [v5 identifier];
  }

  else
  {
    v6 = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    v12[0] = @"identifier";
    v12[1] = @"extension";
    v8 = &stru_1F1040378;
    if (v2)
    {
      v9 = v2;
    }

    else
    {
      v9 = &stru_1F1040378;
    }

    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = &stru_1F1040378;
    }

    if (!v6)
    {
      v6 = v10;
    }

    v13[0] = v9;
    v13[1] = v6;
    if (v4)
    {
      v8 = v4;
    }

    v12[2] = @"client";
    v12[3] = @"contextMethod";
    v11 = *(a1 + 40);
    v13[2] = v8;
    v13[3] = v11;
    v12[4] = @"cacheIntermediates";
    v13[4] = [result objectForKeyedSubscript:?];
    v12[5] = @"workingFormat";
    v13[5] = [*(a1 + 32) objectForKeyedSubscript:?];
    v12[6] = @"backing";
    v13[6] = [*(a1 + 32) objectForKeyedSubscript:?];
    v12[7] = @"coreui";
    v13[7] = [*(a1 + 32) objectForKeyedSubscript:?];
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:8];
  }

  return result;
}

void *___ZL31defaultIntermediateMemoryTargetv_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (result)
  {
    result = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    if (result)
    {
      v1 = result;
      result = [result objectForKeyedSubscript:@"NSExtension"];
      if (!result)
      {
        result = [v1 objectForKeyedSubscript:@"CFBundlePackageType"];
        if (result)
        {
          result = [result containsString:@"APPL"];
          if (result)
          {
            defaultIntermediateMemoryTarget(void)::targetMB = 1;
          }
        }
      }
    }
  }

  return result;
}

void sub_19CC8EB64(_Unwind_Exception *a1, uint64_t a2)
{
  CI::create_cgimage(CIContext *,CIImage *,CGRect,CGColorSpace *,int,BOOL,CI::Trilean,void({block_pointer})(CGRect,NSError *))::SignpostTimer::~SignpostTimer((v2 - 224), a2);
  _Block_object_dispose((v2 - 256), 8);
  _Unwind_Resume(a1);
}

const __CFString *_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 description];

  return CI::Context::AbortIfUnhandledError(v2, v3);
}

double CI::Affine::applyToRect(CI::Affine *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (!CGRectIsNull(a2))
  {
    v34.origin.x = x;
    v34.origin.y = y;
    v34.size.width = width;
    v34.size.height = height;
    if (!CGRectIsInfinite(v34) && !CI::Affine::isIdentity(this))
    {
      v7 = *(this + 2);
      v8 = *(this + 3);
      v9 = y * v7;
      v11 = *this;
      v10 = *(this + 1);
      v12 = *(this + 4);
      v13 = *(this + 5);
      *&v14 = v12 + y * v7 + *this * x;
      v15 = y * v8;
      v16 = v13 + y * v8 + v10 * x;
      v17 = x + width;
      v18 = (y + height) * v7;
      v19 = v12 + v18 + *this * (x + width);
      v20 = v19 < *&v14;
      v21 = v19 <= *&v14;
      *(&v14 + 1) = v16;
      v32 = v14;
      v33 = v14;
      v22 = (y + height) * v8;
      v23 = v13 + v22 + v10 * (x + width);
      if (v20)
      {
        *&v33 = v19;
      }

      else if (!v21)
      {
        *&v32 = v19;
      }

      if (v16 <= v23)
      {
        if (v16 >= v23)
        {
          goto LABEL_14;
        }

        v24 = &v32;
      }

      else
      {
        v24 = &v33;
      }

      *(v24 | 4) = v23;
LABEL_14:
      v25 = v12 + v9 + v11 * v17;
      v26 = v13 + v15 + v10 * v17;
      if (*&v33 <= v25)
      {
        if (*&v32 < v25)
        {
          *&v32 = v25;
        }
      }

      else
      {
        *&v33 = v25;
      }

      if (*(&v33 + 1) <= v26)
      {
        if (*(&v32 + 1) >= v26)
        {
          goto LABEL_23;
        }

        v27 = &v32;
      }

      else
      {
        v27 = &v33;
      }

      *(v27 | 4) = v26;
LABEL_23:
      v28 = v12 + v18 + v11 * x;
      v29 = v13 + v22 + v10 * x;
      if (*&v33 <= v28)
      {
        if (*&v32 < v28)
        {
          *&v32 = v28;
        }
      }

      else
      {
        *&v33 = v28;
      }

      if (*(&v33 + 1) <= v29)
      {
        if (*(&v32 + 1) >= v29)
        {
          return *&v33;
        }

        v30 = &v32;
      }

      else
      {
        v30 = &v33;
      }

      *(v30 | 4) = v29;
      return *&v33;
    }
  }

  return x;
}

void ___ZN2CIL14create_cgimageEP9CIContextP7CIImage6CGRectP12CGColorSpaceibNS_7TrileanEU13block_pointerFvS4_P7NSErrorE_block_invoke(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  has_alpha = (*(**(a1 + 40) + 280))(*(a1 + 40));
  if ((has_alpha & 1) == 0)
  {
    has_alpha = CI::format_has_alpha(*(a1 + 68));
  }

  v11 = ci_signpost_log_render(has_alpha, v10);
  v12 = (*(**(a1 + 48) + 280))(*(a1 + 48)) << 32;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = 134218240;
    v15 = a4;
    v16 = 2048;
    v17 = a5;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "new_bitmap", "[%zu %zu]", &v14, 0x16u);
  }

  v13 = (*(**(a1 + 48) + 280))(*(a1 + 48));
  TimerBase::TimerBase(&v14, v13, 0, "new_bitmap", 0);
  operator new();
}

void sub_19CC8F5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x19EAF5590](v9, 0x10E1C40ABAAFD7FLL, a3, a4, a5, a6, a7, a8);
  _ZZZN2CIL14create_cgimageEP9CIContextP7CIImage6CGRectP12CGColorSpaceibNS_7TrileanEU13block_pointerFvS4_P7NSErrorEEUb_EN13SignpostTimerD1Ev(&a9, v11);
  _Unwind_Resume(a1);
}

void _ZZZN2CIL14create_cgimageEP9CIContextP7CIImage6CGRectP12CGColorSpaceibNS_7TrileanEU13block_pointerFvS4_P7NSErrorEEUb_EN13SignpostTimerD1Ev(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "new_bitmap", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void CI::create_cgimage(CIContext *,CIImage *,CGRect,CGColorSpace *,int,BOOL,CI::Trilean,void({block_pointer})(CGRect,NSError *))::SignpostTimer::~SignpostTimer(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "create_cgimage_check", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void __CFDictionary::setValue(__CFDictionary *this, __CFDictionary *a2, const __CFString *a3, const void *a4)
{
  v4 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  __CFDictionary::setValue(this, a2, *v4, a4);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t CI::copyImageBlockSetOptsCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v65 = *MEMORY[0x1E69E9840];
  CGImageProviderGetSize();
  v15 = v14;
  v17 = v16;
  v66.origin.x = a4;
  v66.origin.y = a5;
  v66.size.width = a6;
  v66.size.height = a7;
  v72 = CGRectIntegral(v66);
  v67.origin.x = 0.0;
  v67.origin.y = 0.0;
  v67.size.width = v15;
  v67.size.height = v17;
  v68 = CGRectIntersection(v67, v72);
  x = v68.origin.x;
  y = v68.origin.y;
  width = v68.size.width;
  height = v68.size.height;
  v22 = getpagesize();
  v23 = CI::format_bytes_per_pixel(*(a1 + 16));
  v24 = [*a1 _internalContext];
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, *MEMORY[0x1E695F2A0]);
    valuePtr = 0;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
    }

    if (CFDictionaryGetValue(a3, *MEMORY[0x1E695F288]))
    {
      return 0;
    }

    v26 = CFDictionaryGetValue(a3, *MEMORY[0x1E695F290]) == *MEMORY[0x1E695E4D0];
    v27 = CFDictionaryGetValue(a3, *MEMORY[0x1E695F268]);
    v62 = 0;
    if (v27)
    {
      CFNumberGetValue(v27, kCFNumberIntType, &v62);
      if (v62)
      {
        if (v22 % v62)
        {
          return 0;
        }
      }
    }

    v28 = CFDictionaryGetValue(a3, *MEMORY[0x1E695F270]);
  }

  else
  {
    v28 = 0;
    valuePtr = 0;
    v26 = *MEMORY[0x1E695E4D0] == 0;
    v62 = 0;
  }

  v61 = (*(*v24 + 552))(v24, *(a1 + 16));
  if (v28)
  {
    CFNumberGetValue(v28, kCFNumberIntType, &v61);
  }

  if (a3 && CFDictionaryContainsKey(a3, *MEMORY[0x1E695F278]))
  {
    return 0;
  }

  v29 = (width * v23);
  if (v61 >= 1 && v29 % v61)
  {
    v29 = (v61 + v29 - 1) / v61 * v61;
  }

  v30 = (v29 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v31 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = *(a1 + 16) == 259 ? v30 : v31;
  v33 = (((height + 1.0) * v32) + v22 - 1) / v22 * v22;
  v34 = mmap(0, v33, 3, 4098, 1140850688, 0);
  if (v34 == -1)
  {
    return 0;
  }

  v60 = xmmword_1F10308F0;
  v35 = *(MEMORY[0x1E695EFD0] + 16);
  *&v59.a = *MEMORY[0x1E695EFD0];
  *&v59.c = v35;
  *&v59.tx = *(MEMORY[0x1E695EFD0] + 32);
  v36 = x;
  *&v35 = y;
  v37 = width;
  v38 = height;
  v69 = CGRectApplyAffineTransform(*(&v35 - 8), &v59);
  v39 = v69.origin.x;
  v40 = v69.origin.y;
  v41 = v69.size.width;
  v42 = v69.size.height;
  CGAffineTransformMakeTranslation(&v59, *(a1 + 32), *(a1 + 40));
  v70.origin.x = v39;
  v70.origin.y = v40;
  v70.size.width = v41;
  v70.size.height = v42;
  v71 = CGRectApplyAffineTransform(v70, &v59);
  v59.a = 0.0;
  *&v59.b = &v59;
  *&v59.c = 0x2020000000;
  LOBYTE(v59.d) = 0;
  v43 = *(a1 + 64);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CIL29copyImageBlockSetOptsCallbackEPvP15CGImageProvider6CGRect6CGSizePK14__CFDictionary_block_invoke;
  block[3] = &unk_1E75C2190;
  *&block[6] = x;
  *&block[7] = y;
  *&block[8] = width;
  *&block[9] = height;
  block[10] = v32;
  block[11] = a1;
  block[12] = a2;
  block[13] = v24;
  v58 = v71;
  block[4] = &v59;
  block[5] = v34;
  dispatch_sync(v43, block);
  if (*(*&v59.b + 24))
  {
    v44 = malloc_type_calloc(1uLL, 0x10uLL, 0x1080040FC6463CFuLL);
    *v44 = v34;
    v44[1] = v33;
    v64 = CGImageBlockCreate();
    if (v26)
    {
      v45 = mprotect(v34, v33, 1);
      if (v45 == -1)
      {
        v47 = ci_logger_render(v45, v46);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          CI::copyImageBlockSetOptsCallback(v47, v48, v49, v50, v51, v52, v53, v54);
        }
      }
    }

    v55 = CGImageBlockSetCreate();
  }

  else
  {
    munmap(v34, v33);
    v55 = 0;
  }

  _Block_object_dispose(&v59, 8);
  return v55;
}

void sub_19CC8FD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__IOSurface *CI::copyIOSurfaceCallback(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  CGImageProviderGetSize();
  v6 = v5;
  v8 = v7;
  v9 = [*a1 _internalContext];
  if (v6 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v10 > (*(*v9 + 448))())
  {
    return 0;
  }

  v38 = 16;
  if (!a3)
  {
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a3, @"kCGImageSurfaceFormatRequest");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &v38 + 4);
    Value = HIDWORD(v38);
  }

  if (!CI::format_from_PixelFormatType(Value))
  {
    HIDWORD(v38) = 0;
  }

  v14 = CFDictionaryGetValue(a3, @"kCGImageSurfaceBytesPerRowAlignmentRequest");
  if (v14)
  {
    CFNumberGetValue(v14, kCFNumberSInt32Type, &v38);
  }

  v15 = HIDWORD(v38);
  if (!HIDWORD(v38))
  {
LABEL_15:
    v15 = CI::PixelFormatType_from_format(*(a1 + 16));
    if (!v15)
    {
      v15 = CI::PixelFormatType_approx_from_format(*(a1 + 16));
    }
  }

  Surface = 0;
  if (v15 && (v15 & 0xFF000000) != 0x63000000)
  {
    v16 = CI::format_from_PixelFormatType(v15);
    if (!v16)
    {
      return 0;
    }

    v17 = v16;
    Surface = CreateSurface(v6, v8, v38, v15, 1);
    if (Surface)
    {
      default_ycc_color_matrix = CI::format_get_default_ycc_color_matrix(v17);
      if (default_ycc_color_matrix)
      {
        SurfaceSetYCCMatrix(Surface, default_ycc_color_matrix);
      }

      v19 = *(MEMORY[0x1E695EFD0] + 16);
      *&v37.a = *MEMORY[0x1E695EFD0];
      *&v37.c = v19;
      *&v37.tx = *(MEMORY[0x1E695EFD0] + 32);
      v20 = 0;
      *&v19 = 0;
      v21 = v6;
      v22 = v8;
      v39 = CGRectApplyAffineTransform(*(&v19 - 8), &v37);
      x = v39.origin.x;
      y = v39.origin.y;
      width = v39.size.width;
      height = v39.size.height;
      CGAffineTransformMakeTranslation(&v37, *(a1 + 32), *(a1 + 40));
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v41 = CGRectApplyAffineTransform(v40, &v37);
      v27 = v41.origin.x;
      v28 = v41.origin.y;
      v29 = v41.size.width;
      v30 = v41.size.height;
      ColorSpace = CGImageProviderGetColorSpace();
      v32 = ColorSpace;
      if (ColorSpace)
      {
        v33 = CGColorSpaceCopyPropertyList(ColorSpace);
        if (v33)
        {
          v34 = v33;
          IOSurfaceSetValue(Surface, *MEMORY[0x1E696CEE0], v33);
          CFRelease(v34);
        }
      }

      if ([*(a1 + 8) isOpaque] && (CI::format_has_alpha(v17) & 1) != 0 || CI::format_has_x(*(a1 + 16)))
      {
        IOSurfaceSetValue(Surface, @"IOSurfaceAlphaIsOpaque", *MEMORY[0x1E695E4D0]);
      }

      v37.a = 0.0;
      *&v37.b = &v37;
      *&v37.c = 0x2020000000;
      LOBYTE(v37.d) = 0;
      v35 = *(a1 + 64);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = ___ZN2CIL21copyIOSurfaceCallbackEPvP15CGImageProviderPK14__CFDictionary_block_invoke;
      v36[3] = &unk_1E75C21B8;
      v36[6] = v32;
      v36[7] = a1;
      *&v36[8] = v27;
      *&v36[9] = v28;
      *&v36[10] = v29;
      *&v36[11] = v30;
      v36[4] = &v37;
      v36[5] = Surface;
      dispatch_sync(v35, v36);
      if ((*(*&v37.b + 24) & 1) == 0)
      {
        CFRelease(Surface);
        Surface = 0;
      }

      _Block_object_dispose(&v37, 8);
    }
  }

  return Surface;
}

void sub_19CC90088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CI::_providerInfoReleaseCallback(CI *this, void *a2)
{
  dispatch_release(*(this + 8));
  v3 = *(this + 9);
  if (v3)
  {
    _Block_release(v3);
  }

  free(this);
}

void __CFDictionary::setValue(CFMutableDictionaryRef this, const void *key, const void *value, const void *a4)
{
  if (this)
  {
    v4 = key == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  if (value)
  {
    if (v5)
    {
      CFDictionarySetValue(this, key, value);
    }
  }

  else if (v5)
  {
    CFDictionaryRemoveValue(this, key);
  }
}

void CI::_imageBlockReleaseCallback(uint64_t a1)
{
  munmap(*a1, *(a1 + 8));

  free(a1);
}

void ___ZN2CIL29copyImageBlockSetOptsCallbackEPvP15CGImageProvider6CGRect6CGSizePK14__CFDictionary_block_invoke(uint64_t a1)
{
  v26 = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(*(a1 + 88) + 16);
  ColorSpace = CGImageProviderGetColorSpace();
  CI::Bitmap::Bitmap(v20, v2, v3, v4, v5, v6, ColorSpace);
  v8 = CI::PixelFormatType_approx_from_format(*(*(a1 + 88) + 16));
  if (!CI_IOSURFACE_WRAPPING(2u) || !v8 || (*(a1 + 80) & 3) != 0 || (v9 = iosurface_limits(v19), v19[2] < *(a1 + 80)) || ((v10 = *(a1 + 64), v11 = *(a1 + 72), v12 = (*(**(a1 + 104) + 448))(*(a1 + 104), v9), v10 <= v11) ? (v13 = v11) : (v13 = v10), v13 > v12 || (WrappedSurface = CreateWrappedSurface(v22, v23, v8, v24, v25, v21)) == 0 || (v15 = [[CIRenderDestination alloc] initWithIOSurface:WrappedSurface], CFRelease(WrappedSurface), !v15)))
  {
    v16 = [CIRenderDestination alloc];
    v15 = [(CIRenderDestination *)v16 initWithBitmapData:v21 width:v22 height:v23 bytesPerRow:v24 format:*(*(a1 + 88) + 16)];
  }

  [(CIRenderDestination *)v15 setFlipped:0];
  [(CIRenderDestination *)v15 setColorSpace:CGImageProviderGetColorSpace()];
  [(CIRenderDestination *)v15 setAlphaMode:*(*(a1 + 88) + 24)];
  v17 = *(a1 + 88);
  if (*(v17 + 24) == 2)
  {
    [(CIRenderDestination *)v15 setClamped:0];
    v17 = *(a1 + 88);
  }

  v18 = [*v17 startTaskToRender:*(v17 + 8) fromRect:v15 toDestination:&v26 atPoint:*(a1 + 112) error:{*(a1 + 120), *(a1 + 128), *(a1 + 136), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [v18 waitUntilCompletedAndReturnError:&v26];

  (*(*(*(a1 + 88) + 72) + 16))(*(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136));
  if (v18 && !v26)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  CI::Bitmap::~Bitmap(v20);
}

void sub_19CC903A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  CI::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void ___ZN2CIL21copyIOSurfaceCallbackEPvP15CGImageProviderPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v2 = [[CIRenderDestination alloc] initWithIOSurface:*(a1 + 40)];
  [(CIRenderDestination *)v2 setFlipped:0];
  [(CIRenderDestination *)v2 setColorSpace:*(a1 + 48)];
  [(CIRenderDestination *)v2 setAlphaMode:*(*(a1 + 56) + 24)];
  v3 = *(a1 + 56);
  if (*(v3 + 24) == 2)
  {
    [(CIRenderDestination *)v2 setClamped:0];
    v3 = *(a1 + 56);
  }

  v5 = 0;
  v4 = [*v3 startTaskToRender:*(v3 + 8) fromRect:v2 toDestination:&v5 atPoint:*(a1 + 64) error:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  [v4 waitUntilCompletedAndReturnError:&v5];
  (*(*(*(a1 + 56) + 72) + 16))(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));

  if (v4)
  {
    if (!v5)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }
}

void CI::create_cgimage_immediate(CIContext *,CIImage *,CGRect,CGColorSpace *,int,CIRenderDestinationAlphaMode,NSError **)::SignpostTimer::~SignpostTimer(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "new_bitmap", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

CIImage *downScale(CIImage *a1, float a2, float a3)
{
  v4 = fmin(a2, 1.0);
  v5 = fmin(a3, 1.0);
  if (v4 != 1.0 || v5 != 1.0)
  {
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, v4, v5);
    v17 = v18;
    [[(CIImage *)a1 imageByApplyingTransform:&v17] extent];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(CIImage *)a1 imageByClampingToExtent];
    v17 = v18;
    return [[(CIImage *)v15 imageByApplyingTransform:&v17 highQualityDownsample:1] imageByCroppingToRect:v8, v10, v12, v14];
  }

  return a1;
}

void sub_19CC926A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, ...)
{
  va_start(va, a49);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t imageRepError(uint64_t a1, const NSString *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"CINonLocalizedDescriptionKey";
  v6[0] = a2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:a1 userInfo:v3];
}

uint64_t imageRepError(uint64_t a1, const NSString *a2, const NSError *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10[0] = *MEMORY[0x1E696AA08];
    v10[1] = @"CINonLocalizedDescriptionKey";
    v11[0] = a3;
    v11[1] = a2;
    v4 = MEMORY[0x1E695DF20];
    v5 = v11;
    v6 = v10;
    v7 = 2;
  }

  else
  {
    v12 = @"CINonLocalizedDescriptionKey";
    v13[0] = a2;
    v4 = MEMORY[0x1E695DF20];
    v5 = v13;
    v6 = &v12;
    v7 = 1;
  }

  v8 = [v4 dictionaryWithObjects:v5 forKeys:v6 count:v7];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:a1 userInfo:v8];
}

BOOL canCreateDataRepresentation(CIImage *a1, CGColorSpace *a2, uint64_t a3, NSError **a4)
{
  v5 = a3;
  v35[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)a1 extent];
  v37 = CGRectInset(v36, 0.00100000005, 0.00100000005);
  v38 = CGRectIntegral(v37);
  x = v38.origin.x;
  y = v38.origin.y;
  width = v38.size.width;
  height = v38.size.height;
  IsEmpty = CGRectIsEmpty(v38);
  if ((IsEmpty & 1) != 0 || (v39.origin.x = x, v39.origin.y = y, v39.size.width = width, v39.size.height = height, IsEmpty = CGRectIsInfinite(v39), IsEmpty))
  {
    if (a4)
    {
      v34 = @"CINonLocalizedDescriptionKey";
      v35[0] = @"image extent must be finite and non-empty.";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      IsEmpty = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:1 userInfo:v13];
      *a4 = IsEmpty;
    }

    v14 = ci_logger_api(IsEmpty, v12);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (result)
    {
      canCreateDataRepresentation(v14, v16, v17, v18, v19, v20, v21, v22);
      return 0;
    }

    return result;
  }

  if (a2)
  {
    TypeID = CGColorSpaceGetTypeID();
    IsEmpty = CFGetTypeID(a2);
    if (TypeID == IsEmpty)
    {
      IsEmpty = CGColorSpaceSupportsOutput(a2);
      if (IsEmpty)
      {
        if (CI::format_is_luminance(v5))
        {
          v24 = 0;
        }

        else
        {
          IsEmpty = CI::format_is_rgb(v5);
          if (!IsEmpty)
          {
            goto LABEL_16;
          }

          v24 = 1;
        }

        IsEmpty = CGColorSpaceGetModel(a2);
        if (IsEmpty == v24)
        {
          return 1;
        }
      }
    }
  }

LABEL_16:
  if (a4)
  {
    v34 = @"CINonLocalizedDescriptionKey";
    v35[0] = @"unsupported colorspace.";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    IsEmpty = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:2 userInfo:v25];
    *a4 = IsEmpty;
  }

  v26 = ci_logger_api(IsEmpty, v12);
  result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
  if (result)
  {
    canCreateDataRepresentation(v26, v27, v28, v29, v30, v31, v32, v33);
    return 0;
  }

  return result;
}

uint64_t getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURNSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURNSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURNSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN");
    getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURNSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN();
  }

  return *v0;
}

void sub_19CC936C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_CMPhotoCompressionSessionAddAuxiliaryImage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v12 = getCMPhotoCompressionSessionAddAuxiliaryImageSymbolLoc(void)::ptr;
  v18 = getCMPhotoCompressionSessionAddAuxiliaryImageSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionAddAuxiliaryImageSymbolLoc(void)::ptr)
  {
    v13 = CMPhotoLibrary();
    v16[3] = dlsym(v13, "CMPhotoCompressionSessionAddAuxiliaryImage");
    getCMPhotoCompressionSessionAddAuxiliaryImageSymbolLoc(void)::ptr = v16[3];
    v12 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v12)
  {
    soft_CMPhotoCompressionSessionAddAuxiliaryImage();
  }

  return v12(a1, a2, a3, a4, a5, a6, 0);
}

void sub_19CC93804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void MetadataAddVersion(CGImageMetadata *a1, CFStringRef prefix, CFStringRef xmlns, const __CFString *a4, uint64_t a5)
{
  if (CGImageMetadataRegisterNamespaceForPrefix(a1, xmlns, prefix, 0))
  {
    v9 = CFStringCreateWithFormat(0, 0, @"%@:%@", prefix, a4);
    CGImageMetadataSetValueWithPath(a1, 0, v9, [MEMORY[0x1E696AD98] numberWithLong:a5]);

    CFRelease(v9);
  }
}

const char *FigErrorString(int a1)
{
  if (a1 <= -15471)
  {
    if (a1 <= -16998)
    {
      if (a1 <= -17102)
      {
        switch(a1)
        {
          case -17104:
            return "kCMPhotoError_FrameDropped";
          case -17103:
            return "kCMPhotoError_InvalidCropRect";
          case -17102:
            return "kCMPhotoError_InvalidData";
        }

        goto LABEL_54;
      }

      if (a1 <= -17000)
      {
        if (a1 == -17101)
        {
          return "kCMPhotoError_InvalidSession";
        }

        if (a1 == -17100)
        {
          return "kCMPhotoError_UnsupportedQuality";
        }

LABEL_54:
        v2 = (a1 & 0x3FFF) - 736;
        if (v2 > 4)
        {
          return "unknown error";
        }

        else
        {
          return (&off_1E75C2360)[v2];
        }
      }

      if (a1 == -16999)
      {
        return "kCMPhotoError_UnsupportedTiling";
      }

      else
      {
        return "kCMPhotoError_UnsupportedCodec";
      }
    }

    else if (a1 > -16994)
    {
      if (a1 > -16992)
      {
        if (a1 == -16991)
        {
          return "kCMPhotoError_AllocationFailed";
        }

        if (a1 == -16990)
        {
          return "kCMPhotoError_InvalidParameter";
        }

        goto LABEL_54;
      }

      if (a1 == -16993)
      {
        return "kCMPhotoError_ValueNotAvailable";
      }

      else
      {
        return "kCMPhotoError_InternalFailure";
      }
    }

    else if (a1 > -16996)
    {
      if (a1 == -16995)
      {
        return "kCMPhotoError_UnsupportedPixelFormat";
      }

      else
      {
        return "kCMPhotoError_UnsupportedOperation";
      }
    }

    else if (a1 == -16997)
    {
      return "kCMPhotoError_UnsupportedSourceType";
    }

    else
    {
      return "kCMPhotoError_UnsupportedImageType";
    }
  }

  else if (a1 > -12903)
  {
    if (a1 <= -6684)
    {
      if (a1 > -12784)
      {
        if (a1 == -12783)
        {
          return "kCMBaseObjectError_ValueNotAvailable";
        }

        if (a1 == -6684)
        {
          return "kCVReturnPixelBufferNotMetalCompatible";
        }
      }

      else
      {
        if (a1 == -12902)
        {
          return "kVTParameterErr";
        }

        if (a1 == -12848)
        {
          return "kFigFormatReaderError_ParsingFailure";
        }
      }

      goto LABEL_54;
    }

    if (a1 > -6682)
    {
      if (a1 == -6680)
      {
        return "kCVReturnInvalidPixelFormat";
      }

      if (a1 == -6681)
      {
        return "kCVReturnInvalidSize";
      }

      goto LABEL_54;
    }

    if (a1 == -6683)
    {
      return "kCVReturnPixelBufferNotOpenGLCompatible";
    }

    else
    {
      return "kCVReturnInvalidPixelBufferAttributes";
    }
  }

  else if (a1 > -12910)
  {
    if (a1 > -12908)
    {
      if (a1 == -12907)
      {
        return "kVTCouldNotCreateInstanceErr";
      }

      if (a1 == -12906)
      {
        return "kVTCouldNotFindVideoDecoderErr";
      }

      goto LABEL_54;
    }

    if (a1 == -12909)
    {
      return "kVTVideoDecoderBadDataErr";
    }

    else
    {
      return "kVTCouldNotFindVideoEncoderErr";
    }
  }

  else
  {
    if (a1 <= -12912)
    {
      if (a1 == -15470)
      {
        return "kCMPhotoError_XPCError";
      }

      if (a1 == -12912)
      {
        return "kVTVideoEncoderMalfunctionErr";
      }

      goto LABEL_54;
    }

    if (a1 == -12911)
    {
      return "kVTVideoDecoderMalfunctionErr";
    }

    else
    {
      return "kVTVideoDecoderUnsupportedDataFormatErr";
    }
  }
}

void sub_19CC94B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(uint64_t a1, void *a2)
{
  v4[2] = *MEMORY[0x1E69E9840];
  [a2 doubleValue];
  v4[0] = [MEMORY[0x1E696AD98] numberWithLong:llround(v2 * 100000.0)];
  v4[1] = [MEMORY[0x1E696AD98] numberWithLong:100000];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
}

uint64_t getkCMPhotoCompressionOption_ApplyTransform(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_ApplyTransformSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_ApplyTransformSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_ApplyTransformSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_ApplyTransform");
    getkCMPhotoCompressionOption_ApplyTransformSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_ApplyTransform();
  }

  return *v0;
}

void sub_19CC94D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCMPhotoCompressionOption_CodecType(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_CodecTypeSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_CodecTypeSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_CodecTypeSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_CodecType");
    getkCMPhotoCompressionOption_CodecTypeSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_CodecType();
  }

  return *v0;
}

void sub_19CC94E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCMPhotoCompressionOption_QualityControllerType(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_QualityControllerTypeSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_QualityControllerTypeSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_QualityControllerTypeSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_QualityControllerType");
    getkCMPhotoCompressionOption_QualityControllerTypeSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_QualityControllerType();
  }

  return *v0;
}

void sub_19CC94F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCMPhotoCompressionOption_Subsampling(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_SubsamplingSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_SubsamplingSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_SubsamplingSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_Subsampling");
    getkCMPhotoCompressionOption_SubsamplingSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_Subsampling();
  }

  return *v0;
}

void sub_19CC95000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCMPhotoCompressionOption_BitDepth(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_BitDepthSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_BitDepthSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_BitDepthSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_BitDepth");
    getkCMPhotoCompressionOption_BitDepthSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_BitDepth();
  }

  return *v0;
}

void sub_19CC950F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCMPhotoQualityControllerParameter_QualityValue(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoQualityControllerParameter_QualityValueSymbolLoc(void)::ptr;
  v6 = getkCMPhotoQualityControllerParameter_QualityValueSymbolLoc(void)::ptr;
  if (!getkCMPhotoQualityControllerParameter_QualityValueSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoQualityControllerParameter_QualityValue");
    getkCMPhotoQualityControllerParameter_QualityValueSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoQualityControllerParameter_QualityValue();
  }

  return *v0;
}

void sub_19CC951E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCMPhotoCompressionOption_QualityControllerParameters(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_QualityControllerParametersSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_QualityControllerParametersSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_QualityControllerParametersSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_QualityControllerParameters");
    getkCMPhotoCompressionOption_QualityControllerParametersSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_QualityControllerParameters();
  }

  return *v0;
}

void sub_19CC952DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCMPhotoCompressionOption_ImageOrientation(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_ImageOrientationSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_ImageOrientationSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_ImageOrientationSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_ImageOrientation");
    getkCMPhotoCompressionOption_ImageOrientationSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_ImageOrientation();
  }

  return *v0;
}

void sub_19CC953D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getkCMPhotoCompressionOption_ColorSpace(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkCMPhotoCompressionOption_ColorSpaceSymbolLoc(void)::ptr;
  v6 = getkCMPhotoCompressionOption_ColorSpaceSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionOption_ColorSpaceSymbolLoc(void)::ptr)
  {
    v1 = CMPhotoLibrary();
    v4[3] = dlsym(v1, "kCMPhotoCompressionOption_ColorSpace");
    getkCMPhotoCompressionOption_ColorSpaceSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    getkCMPhotoCompressionOption_ColorSpace();
  }

  return *v0;
}

void sub_19CC954C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_CMPhotoCompressionSessionAddTmapImageOneShot(CMPhotoCompressionSession *a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4, const void *a5, const __CFDictionary *a6, unsigned __int8 a7, const CGImageMetadata *a8, uint64_t *a9)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v15 = getCMPhotoCompressionSessionAddTmapImageOneShotSymbolLoc(void)::ptr;
  v25 = getCMPhotoCompressionSessionAddTmapImageOneShotSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionAddTmapImageOneShotSymbolLoc(void)::ptr)
  {
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = ___ZL56getCMPhotoCompressionSessionAddTmapImageOneShotSymbolLocv_block_invoke;
    v21 = &unk_1E75C1E10;
    v16 = CMPhotoLibrary();
    v23[3] = dlsym(v16, "CMPhotoCompressionSessionAddTmapImageOneShot");
    getCMPhotoCompressionSessionAddTmapImageOneShotSymbolLoc(void)::ptr = v23[3];
    v15 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v15)
  {
    soft_CMPhotoCompressionSessionAddTmapImageOneShot();
  }

  return (v15)(a1, a2, a3, a4, a5, a6, 0, 0, 0, v18, v19, v20, v21);
}

void sub_19CC9560C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_CMPhotoCompressionSessionAddImage(CMPhotoCompressionSession *a1, const __CFDictionary *a2, const void *a3, uint64_t *a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v8 = getCMPhotoCompressionSessionAddImageSymbolLoc(void)::ptr;
  v14 = getCMPhotoCompressionSessionAddImageSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionAddImageSymbolLoc(void)::ptr)
  {
    v9 = CMPhotoLibrary();
    v12[3] = dlsym(v9, "CMPhotoCompressionSessionAddImage");
    getCMPhotoCompressionSessionAddImageSymbolLoc(void)::ptr = v12[3];
    v8 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v8)
  {
    soft_CMPhotoCompressionSessionAddImage();
  }

  return v8(a1, a2, a3, a4);
}

void sub_19CC97014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_CMPhotoCompressionSessionAddMetadataFromImageProperties(CMPhotoCompressionSession *a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v7 = getCMPhotoCompressionSessionAddMetadataFromImagePropertiesSymbolLoc(void)::ptr;
  v13 = getCMPhotoCompressionSessionAddMetadataFromImagePropertiesSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionAddMetadataFromImagePropertiesSymbolLoc(void)::ptr)
  {
    v8 = CMPhotoLibrary();
    v11[3] = dlsym(v8, "CMPhotoCompressionSessionAddMetadataFromImageProperties");
    getCMPhotoCompressionSessionAddMetadataFromImagePropertiesSymbolLoc(void)::ptr = v11[3];
    v7 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v7)
  {
    soft_CMPhotoCompressionSessionAddMetadataFromImageProperties();
  }

  return v7(a1, a2, 0, a3);
}

void sub_19CC97230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_CMPhotoCompressionSessionCloseContainerAndCopyBacking(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v4 = getCMPhotoCompressionSessionCloseContainerAndCopyBackingSymbolLoc(void)::ptr;
  v10 = getCMPhotoCompressionSessionCloseContainerAndCopyBackingSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionCloseContainerAndCopyBackingSymbolLoc(void)::ptr)
  {
    v5 = CMPhotoLibrary();
    v8[3] = dlsym(v5, "CMPhotoCompressionSessionCloseContainerAndCopyBacking");
    getCMPhotoCompressionSessionCloseContainerAndCopyBackingSymbolLoc(void)::ptr = v8[3];
    v4 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v4)
  {
    soft_CMPhotoCompressionSessionCloseContainerAndCopyBacking();
  }

  return (v4)(a1, 0, 0, a2);
}

void sub_19CC97344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t canCreateDataRepresentation(CIImage *a1, CGColorSpace *a2, NSError **a3)
{
  v31[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)a1 extent];
  v33 = CGRectInset(v32, 0.00100000005, 0.00100000005);
  v34 = CGRectIntegral(v33);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  result = CGRectIsEmpty(v34);
  if ((result & 1) != 0 || (v35.origin.x = x, v35.origin.y = y, v35.size.width = width, v35.size.height = height, result = CGRectIsInfinite(v35), result))
  {
    if (a3)
    {
      v30 = @"CINonLocalizedDescriptionKey";
      v31[0] = @"image extent must be finite and non-empty.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      result = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:1 userInfo:v11];
      *a3 = result;
    }

    v12 = ci_logger_api(result, v10);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (result)
    {
      canCreateDataRepresentation(v12, v13, v14, v15, v16, v17, v18, v19);
      return 0;
    }
  }

  else
  {
    if (a2)
    {
      TypeID = CGColorSpaceGetTypeID();
      result = CFGetTypeID(a2);
      if (TypeID == result)
      {
        result = CGColorSpaceSupportsOutput(a2);
        if (result)
        {
          if (CGColorSpaceGetModel(a2) == kCGColorSpaceModelMonochrome)
          {
            return 1;
          }

          result = CGColorSpaceGetModel(a2);
          if (result == 1)
          {
            return result;
          }
        }
      }
    }

    if (a3)
    {
      v30 = @"CINonLocalizedDescriptionKey";
      v31[0] = @"unsupported colorspace.";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      result = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:2 userInfo:v21];
      *a3 = result;
    }

    v22 = ci_logger_api(result, v10);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (result)
    {
      canCreateDataRepresentation(v22, v23, v24, v25, v26, v27, v28, v29);
      return 0;
    }
  }

  return result;
}

BOOL canCreateDataRepresentation(CIImage *a1, NSError **a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  [(CIImage *)a1 extent];
  v22 = CGRectInset(v21, 0.00100000005, 0.00100000005);
  v23 = CGRectIntegral(v22);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  IsEmpty = CGRectIsEmpty(v23);
  if ((IsEmpty & 1) == 0)
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    IsEmpty = CGRectIsInfinite(v24);
    if (!IsEmpty)
    {
      return 1;
    }
  }

  if (a2)
  {
    v19 = @"CINonLocalizedDescriptionKey";
    v20[0] = @"image extent must be finite and non-empty.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    IsEmpty = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:1 userInfo:v9];
    *a2 = IsEmpty;
  }

  v10 = ci_logger_api(IsEmpty, v8);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    canCreateDataRepresentation(v10, v12, v13, v14, v15, v16, v17, v18);
    return 0;
  }

  return result;
}

float CI::sw_flexMapLinGain(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12.i32[0] = *(a2 + (*(v3 + 80) << 6));
  v12.i32[1] = *(a2 + (*(v3 + 56) << 6));
  v13 = vadd_f32(v12, vmaxnm_f32(vzip1_s32(*v7, *v11), vmaxnm_f32(vzip2_s32(*v7, *v11), vmaxnm_f32(vzip1_s32(*&vextq_s8(*v7->i8, *v7->i8, 8uLL), *&vextq_s8(*v11->i8, *v11->i8, 8uLL)), 0))));
  LODWORD(result) = vdiv_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
  return result;
}

double CI::sw_flexMapLinGainRGB(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = (a2 + (*(v3 + 56) << 6));
  v13 = (a2 + (*(v3 + 80) << 6));
  v14 = *v7;
  v15 = *v11;
  v14.i32[3] = 0;
  v15.i32[3] = 0;
  v16 = vld1q_dup_f32(v13);
  v17 = vld1q_dup_f32(v12);
  *&result = vdivq_f32(vaddq_f32(v16, vmaxnmq_f32(v14, 0)), vaddq_f32(v17, vmaxnmq_f32(v15, 0))).u64[0];
  return result;
}

double CI::sw_flexMapImageRGB(uint64_t a1, uint64_t a2, uint64_t a3, double a4, int32x2_t a5)
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
  a5.i32[0] = *(a2 + (*(v5 + 32) << 6));
  v17 = a5;
  v11 = *(a2 + (*(v5 + 56) << 6));
  v10.i32[3] = 0;
  v12 = _simd_log2_f4(v10);
  *v13.i32 = v11 - *v17.i32;
  v14 = vdivq_f32(vsubq_f32(v12, vdupq_lane_s32(v17, 0)), vdupq_lane_s32(v13, 0));
  v14.i32[3] = 0;
  v15 = vmaxnmq_f32(v14, 0);
  v15.i32[3] = 0;
  *&result = vminnmq_f32(v15, xmmword_19CF23BD0).u64[0];
  return result;
}

double CI::sw_flexMapImage(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v9 = *(a2 + (*(v3 + 56) << 6));
  v10 = (log2f(*v7) - v8) / (v9 - v8);
  if (v10 <= 1.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = v10 < 0.0;
  v13 = 0;
  if (!v12)
  {
    *v13.i32 = v11;
  }

  *&result = vdupq_lane_s32(v13, 0).u64[0];
  return result;
}

void *___ZL59getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CMPhotoLibrary(void)
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CMPhotoLibraryCore(char **)::frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = ___ZL18CMPhotoLibraryCorePPc_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E75C2348;
    v4 = 0;
    CMPhotoLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = CMPhotoLibraryCore(char **)::frameworkLibrary;
  if (!CMPhotoLibraryCore(char **)::frameworkLibrary)
  {
    CMPhotoLibrary(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t ___ZL18CMPhotoLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CMPhotoLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL59getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL60getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL62getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL58getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL65getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURNSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURNSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getCMPhotoCompressionSessionAddAuxiliaryImageSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoCompressionSessionAddAuxiliaryImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoCompressionSessionAddAuxiliaryImageSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoAuxiliaryImageTypeURN_HDRGainMap");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL52getkCMPhotoCompressionOption_ApplyTransformSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_ApplyTransform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_ApplyTransformSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL47getkCMPhotoCompressionOption_CodecTypeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_CodecType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_CodecTypeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkCMPhotoCompressionOption_QualityControllerTypeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_QualityControllerType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_QualityControllerTypeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getkCMPhotoCompressionOption_SubsamplingSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_Subsampling");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_SubsamplingSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL46getkCMPhotoCompressionOption_BitDepthSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_BitDepth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_BitDepthSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL59getkCMPhotoQualityControllerParameter_QualityValueSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoQualityControllerParameter_QualityValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoQualityControllerParameter_QualityValueSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL65getkCMPhotoCompressionOption_QualityControllerParametersSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_QualityControllerParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_QualityControllerParametersSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL54getkCMPhotoCompressionOption_ImageOrientationSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_ImageOrientation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_ImageOrientationSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL48getkCMPhotoCompressionOption_ColorSpaceSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionOption_ColorSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionOption_ColorSpaceSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL56getCMPhotoCompressionSessionAddTmapImageOneShotSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoCompressionSessionAddTmapImageOneShot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoCompressionSessionAddTmapImageOneShotSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t equivalent_uncompressed_format(uint64_t result)
{
  if ((result & 0xFD000000) == 0x2D000000 || result >> 24 == 124 || result >> 24 == 38)
  {
    v1 = result & 0xFFFFFF | 0x20000000;
    if (v1 <= 543306551)
    {
      if (v1 <= 540571187)
      {
        if (v1 <= 540567089)
        {
          if (v1 > 540292207)
          {
            if (v1 == 540292208)
            {
              return 2016687216;
            }

            if (v1 == 540567088)
            {
              return 875704422;
            }
          }

          else
          {
            if (v1 == 540160056)
            {
              return 843264056;
            }

            if (v1 == 540160104)
            {
              v2 = 843264056;
              return (v2 + 48);
            }
          }

          return 0;
        }

        if (v1 <= 540571183)
        {
          if (v1 == 540567090)
          {
            return 875704934;
          }

          if (v1 == 540567092)
          {
            return 875836518;
          }

          return 0;
        }

        if (v1 != 540571184)
        {
          if (v1 == 540571186)
          {
            return 875704950;
          }

          return 0;
        }

        v6 = 875704422;
        return v6 | 0x10u;
      }

      if (v1 > 541864239)
      {
        if (v1 > 541864245)
        {
          if (v1 == 541864246)
          {
            return 1278226742;
          }

          if (v1 == 542271553)
          {
            return 1380411457;
          }
        }

        else
        {
          if (v1 == 541864240)
          {
            return 1278226736;
          }

          if (v1 == 541864242)
          {
            return 1278226738;
          }
        }

        return 0;
      }

      if (v1 > 541863991)
      {
        if (v1 == 541863992)
        {
          return 1278226488;
        }

        if (v1 == 541864040)
        {
          v2 = 1278226488;
          return (v2 + 48);
        }

        return 0;
      }

      if (v1 == 540571188)
      {
        v6 = 875836518;
        return v6 | 0x10u;
      }

      if (v1 == 541214529)
      {
        return 1111970369;
      }

      return 0;
    }

    if (v1 > 544761391)
    {
      if (v1 <= 544765489)
      {
        if (v1 > 544761395)
        {
          if (v1 == 544761396)
          {
            return 1885746228;
          }

          if (v1 == 544765488)
          {
            return 1882468912;
          }

          return 0;
        }

        if (v1 != 544761392)
        {
          if (v1 == 544761394)
          {
            return 1885745714;
          }

          return 0;
        }

        v3 = 1882468912;
        return (v3 + 3276800);
      }

      if (v1 > 544830821)
      {
        if (v1 == 544830822)
        {
          return 2037741158;
        }

        if (v1 == 544830835)
        {
          return 2037741171;
        }

        return 0;
      }

      if (v1 == 544765490)
      {
        v5 = 1882468912;
        return v5 | 2u;
      }

      if (v1 != 544765492)
      {
        return 0;
      }

      v4 = 1882468912;
    }

    else
    {
      if (v1 <= 543712819)
      {
        if (v1 <= 543712815)
        {
          if (v1 == 543306552)
          {
            return 1647534392;
          }

          if (v1 != 543569008)
          {
            return 0;
          }

          v3 = 2016687216;
          return (v3 + 3276800);
        }

        if (v1 == 543712816)
        {
          return 1751527984;
        }

        if (v1 != 543712818)
        {
          return 0;
        }

        v5 = 1751527984;
        return v5 | 2u;
      }

      if (v1 > 544682865)
      {
        if (v1 == 544682866)
        {
          return 1999843442;
        }

        if (v1 == 544683105)
        {
          return 1999908961;
        }

        return 0;
      }

      if (v1 != 543712820)
      {
        if (v1 == 543961458)
        {
          return 1815162994;
        }

        return 0;
      }

      v4 = 1751527984;
    }

    return (v4 + 516);
  }

  return result;
}

void *___ZL43getCMPhotoCompressionSessionCreateSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoCompressionSessionCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL53getkCMPhotoCompressionContainerOption_FormatSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionContainerOption_Format");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL61getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionContainerOption_ImageCountHint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL58getkCMPhotoCompressionContainerOption_BackingTypeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "kCMPhotoCompressionContainerOption_BackingType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL55getCMPhotoCompressionSessionOpenEmptyContainerSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoCompressionSessionOpenEmptyContainer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL45getCMPhotoCompressionSessionAddImageSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoCompressionSessionAddImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoCompressionSessionAddImageSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL67getCMPhotoCompressionSessionAddMetadataFromImagePropertiesSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoCompressionSessionAddMetadataFromImageProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoCompressionSessionAddMetadataFromImagePropertiesSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL65getCMPhotoCompressionSessionCloseContainerAndCopyBackingSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = CMPhotoLibrary();
  result = dlsym(v2, "CMPhotoCompressionSessionCloseContainerAndCopyBacking");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCMPhotoCompressionSessionCloseContainerAndCopyBackingSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t convert_weights(CIVector *a1, float *a2, unsigned int a3, unsigned int a4)
{
  v4 = a4;
  v5 = a3;
  if (a4)
  {
    v8 = 0;
    v9 = 0;
    v18 = a3;
    v10 = a3 * (a4 - 1);
    do
    {
      v11 = v18;
      v12 = v10;
      v13 = v8;
      if (v5)
      {
        do
        {
          [(CIVector *)a1 valueAtIndex:v12];
          *&v14 = v14;
          a2[v13++] = *&v14;
          ++v12;
          --v11;
        }

        while (v11);
      }

      ++v9;
      v8 += v5;
      v10 -= v5;
    }

    while (v9 != v4);
    if (v5 >= 4 && v4 == 1)
    {
      v15 = &a2[v18 - 1];
      while (fabsf(*a2) < 1.0e-10 && fabsf(*v15) < 1.0e-10)
      {
        ++a2;
        v5 -= 2;
        --v15;
        if (v5 <= 3)
        {
          goto LABEL_12;
        }
      }

      v4 = 1;
    }

    else
    {
LABEL_12:
      if (v4 >= 4 && v5 == 1)
      {
        v16 = &a2[v4 - 1];
        do
        {
          if (fabsf(*a2) >= 1.0e-10)
          {
            break;
          }

          if (fabsf(*v16) >= 1.0e-10)
          {
            break;
          }

          ++a2;
          v4 -= 2;
          --v16;
        }

        while (v4 > 3);
        v5 = 1;
      }
    }
  }

  return v4 * v5;
}

CIImage *apply1DConvolution(CIImage *a1, CIVector *a2, double a3, unsigned int a4, int a5)
{
  v48[4] = *MEMORY[0x1E69E9840];
  v9 = a4 == 0;
  if (a4)
  {
    v10 = 9;
  }

  else
  {
    v10 = 1;
  }

  if (v9)
  {
    v11 = 9;
  }

  else
  {
    v11 = 1;
  }

  v12 = convert_weights(a2, v39, v10, v11);
  if (a4)
  {
    v13 = v12 / 2;
  }

  else
  {
    v13 = 0;
  }

  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12 / 2;
  }

  if (fabs(a3) >= 1.0e-10)
  {
    x = *MEMORY[0x1E695F040];
    y = *(MEMORY[0x1E695F040] + 8);
    width = *(MEMORY[0x1E695F040] + 16);
    height = *(MEMORY[0x1E695F040] + 24);
  }

  else
  {
    [(CIImage *)a1 extent];
    v50 = CGRectInset(v49, -v13, -v14);
    x = v50.origin.x;
    y = v50.origin.y;
    width = v50.size.width;
    height = v50.size.height;
  }

  v19 = a4 ^ 1;
  if (v12 == 5)
  {
    v28 = [CIKernel kernelWithInternalRepresentation:&CI::_convolution5];
    if (a5)
    {
      v29 = &CI::_convolutionrgb5;
LABEL_29:
      v28 = [CIKernel kernelWithInternalRepresentation:v29];
    }

LABEL_30:
    v22 = v28;
    v30 = [CIVector vectorWithX:v40 Y:v41 Z:v42 W:v43];
    v31 = [CIVector vectorWithX:v44 Y:a3 Z:a4 W:v19];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___ZL18apply1DConvolutionP7CIImageP8CIVectordbb_block_invoke_2;
    v33[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v34 = v13;
    v35 = v14;
    v47[0] = a1;
    v47[1] = v30;
    v47[2] = v31;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
    v27 = v33;
    return [(CIKernel *)v22 applyWithExtent:v27 roiCallback:v26 arguments:x, y, width, height];
  }

  if (v12 != 7)
  {
    if (v12 == 9)
    {
      v20 = [CIKernel kernelWithInternalRepresentation:&CI::_convolution9];
      if (a5)
      {
        v21 = &CI::_convolutionrgb9;
LABEL_23:
        v20 = [CIKernel kernelWithInternalRepresentation:v21];
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    v28 = [CIKernel kernelWithInternalRepresentation:&CI::_convolution3];
    if (a5)
    {
      v29 = &CI::_convolutionrgb3;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v20 = [CIKernel kernelWithInternalRepresentation:&CI::_convolution7];
  if (a5)
  {
    v21 = &CI::_convolutionrgb7;
    goto LABEL_23;
  }

LABEL_24:
  v22 = v20;
  v23 = [CIVector vectorWithX:v39[0] Y:v39[1] Z:v40 W:v41];
  v24 = [CIVector vectorWithX:v42 Y:v43 Z:v44 W:v45];
  v25 = [CIVector vectorWithX:v46 Y:a3 Z:a4 W:v19];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = ___ZL18apply1DConvolutionP7CIImageP8CIVectordbb_block_invoke;
  v36[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v37 = v13;
  v38 = v14;
  v48[0] = a1;
  v48[1] = v23;
  v48[2] = v24;
  v48[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:4];
  v27 = v36;
  return [(CIKernel *)v22 applyWithExtent:v27 roiCallback:v26 arguments:x, y, width, height];
}

double CI::sw_convrgb3x3sym(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v60 = *v9;
  DC = CI::getDC(a1);
  v12.f64[0] = *DC;
  v58 = v12;
  v13.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v10 + 16)));
  LODWORD(v14) = *(v10 + 36);
  *v15.f64 = -v60.f32[1];
  HIDWORD(v15.f64[0]) = v60.i32[0];
  v57 = v15;
  *v16.f64 = *&v14 + (vmuls_lane_f32(*(v10 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v10 + 28)));
  v13.n128_u32[1] = LODWORD(v16.f64[0]);
  CI::BitmapSampler::read(*(v10 + 8), v13, v16, v15.f64[0], v14, v60, v17, v18, v19);
  v21 = v57;
  v20.n128_u64[1] = *&v58.f64[1];
  v20.n128_u64[0] = vadd_f32(*&v58.f64[0], *&v57.f64[0]);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), v20.n128_u64[0], 1);
  *&v25 = *v24.i32 + (v20.n128_f32[0] * *(v10 + 28));
  v20.n128_f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), v20.n128_u64[0], 1) + (v20.n128_f32[0] * *(v10 + 16)));
  *v21.f64 = *v23.i32 + *&v25;
  v20.n128_f32[1] = *v23.i32 + *&v25;
  v28.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v20, v21, v22, v25, v24, v23, v26, v27);
  v55 = v28;
  v28.n128_u64[1] = v60.u64[1];
  v29 = v58;
  v28.n128_u64[0] = vadd_f32(*v60.f32, *&v58.f64[0]);
  LODWORD(v30) = *(v10 + 24);
  v31.i32[0] = *(v10 + 36);
  *v32.i32 = vmuls_lane_f32(*(v10 + 32), v28.n128_u64[0], 1);
  *&v33 = *v32.i32 + (v28.n128_f32[0] * *(v10 + 28));
  v28.n128_f32[0] = *&v30 + (vmuls_lane_f32(*(v10 + 20), v28.n128_u64[0], 1) + (v28.n128_f32[0] * *(v10 + 16)));
  *v29.f64 = *v31.i32 + *&v33;
  v28.n128_f32[1] = *v31.i32 + *&v33;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), v28, v29, v30, v33, v32, v31, v34, v35);
  *&v37.f64[1] = v60.i64[1];
  HIDWORD(v38) = HIDWORD(v58.f64[0]);
  *&v37.f64[0] = vsub_f32(*&v58.f64[0], *v60.f32);
  *&v38 = vmuls_lane_f32(*(v10 + 20), *&v37.f64[0], 1) + (*v37.f64 * *(v10 + 16));
  LODWORD(v39) = *(v10 + 24);
  v40.i32[0] = *(v10 + 36);
  *v41.i32 = vmuls_lane_f32(*(v10 + 32), *&v37.f64[0], 1);
  v42 = v55;
  v43 = vaddq_f32(v55, v36);
  v56 = v43;
  v43.n128_f32[0] = *&v39 + *&v38;
  *v37.f64 = *v40.i32 + (*v41.i32 + (*v37.f64 * *(v10 + 28)));
  v43.n128_u32[1] = LODWORD(v37.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), v43, v37, v38, v39, v42, v41, v40, v44);
  HIDWORD(v47) = HIDWORD(v57.f64[0]);
  v46.f64[1] = v58.f64[1];
  *&v46.f64[0] = vsub_f32(*&v58.f64[0], *&v57.f64[0]);
  *&v47 = vmuls_lane_f32(*(v10 + 20), *&v46.f64[0], 1) + (*v46.f64 * *(v10 + 16));
  LODWORD(v48) = *(v10 + 24);
  v49.i32[0] = *(v10 + 36);
  *v50.i32 = vmuls_lane_f32(*(v10 + 32), *&v46.f64[0], 1);
  v51 = vaddq_f32(v56, v45);
  v59 = v51;
  v51.n128_f32[0] = *&v48 + *&v47;
  *v46.f64 = *v49.i32 + (*v50.i32 + (*v46.f64 * *(v10 + 28)));
  v51.n128_u32[1] = LODWORD(v46.f64[0]);
  *v53.i64 = CI::BitmapSampler::read(*(v10 + 8), v51, v46, v47, v48, v56, v50, v49, v52);
  *&result = vaddq_f32(vdupq_laneq_s32(v60, 3), vmulq_laneq_f32(vaddq_f32(v59, v53), v60, 2)).u64[0];
  return result;
}

double CI::sw_conv3x3sym(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = *CI::getDC(a1);
  v12 = v51;
  v13.n128_f32[0] = -v51.f32[1];
  v13.n128_u32[1] = v51.i32[0];
  v49 = v13;
  v13.n128_u64[0] = vadd_f32(v11, v13.n128_u64[0]);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), v13.n128_u64[0], 1);
  *&v17 = *v16.i32 + (v13.n128_f32[0] * *(v10 + 28));
  v13.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v10 + 20), v13.n128_u64[0], 1) + (v13.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v15.i32 + *&v17;
  v13.n128_f32[1] = *v15.i32 + *&v17;
  v20.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v13, v12, v14, v17, v16, v15, v18, v19);
  v47 = v20;
  v20.n128_u64[1] = v51.u64[1];
  v20.n128_u64[0] = vadd_f32(*v51.f32, v11);
  LODWORD(v21) = *(v10 + 24);
  v22.i32[0] = *(v10 + 36);
  *v23.i32 = vmuls_lane_f32(*(v10 + 32), v20.n128_u64[0], 1);
  *&v24 = *v23.i32 + (v20.n128_f32[0] * *(v10 + 28));
  v20.n128_f32[0] = *&v21 + (vmuls_lane_f32(*(v10 + 20), v20.n128_u64[0], 1) + (v20.n128_f32[0] * *(v10 + 16)));
  *v25.f64 = *v22.i32 + *&v24;
  v20.n128_f32[1] = *v22.i32 + *&v24;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), v20, v25, v21, v24, v23, v22, v26, v27);
  *&v29.f64[1] = v51.i64[1];
  *&v29.f64[0] = vsub_f32(v11, *v51.f32);
  *&v30 = vmuls_lane_f32(*(v10 + 20), *&v29.f64[0], 1) + (*v29.f64 * *(v10 + 16));
  LODWORD(v31) = *(v10 + 24);
  v32.i32[0] = *(v10 + 36);
  *v33.i32 = vmuls_lane_f32(*(v10 + 32), *&v29.f64[0], 1);
  v34 = v47;
  v35 = vaddq_f32(v47, v28);
  v48 = v35;
  v35.n128_f32[0] = *&v31 + *&v30;
  *v29.f64 = *v32.i32 + (*v33.i32 + (*v29.f64 * *(v10 + 28)));
  v35.n128_u32[1] = LODWORD(v29.f64[0]);
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), v35, v29, v30, v31, v34, v33, v32, v36);
  *&v38.f64[1] = v49.n128_u64[1];
  *&v38.f64[0] = vsub_f32(v11, v49.n128_u64[0]);
  *&v39 = vmuls_lane_f32(*(v10 + 20), *&v38.f64[0], 1) + (*v38.f64 * *(v10 + 16));
  LODWORD(v40) = *(v10 + 24);
  v41.i32[0] = *(v10 + 36);
  *v42.i32 = vmuls_lane_f32(*(v10 + 32), *&v38.f64[0], 1);
  v43 = vaddq_f32(v48, v37);
  v50 = v43;
  v43.n128_f32[0] = *&v40 + *&v39;
  *v38.f64 = *v41.i32 + (*v42.i32 + (*v38.f64 * *(v10 + 28)));
  v43.n128_u32[1] = LODWORD(v38.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), v43, v38, v39, v40, v48, v42, v41, v44);
  *&result = vaddq_f32(vdupq_laneq_s32(v51, 3), vmulq_laneq_f32(vaddq_f32(v50, v45), v51, 2)).u64[0];
  return result;
}

double CI::sw_convrgb3x3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v104 = *v9;
  v108 = *v13;
  v109 = *v17;
  DC = CI::getDC(a1);
  *v20.i8 = *DC;
  v110 = v20;
  v21.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v18 + 16)));
  LODWORD(v22) = *(v18 + 36);
  v102 = vdupq_lane_s32(*v109.i8, 1);
  *v23.f64 = *&v22 + (vmuls_lane_f32(*(v18 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v18 + 28)));
  v21.n128_u32[1] = LODWORD(v23.f64[0]);
  *v27.i64 = CI::BitmapSampler::read(*(v18 + 8), v21, v23, *v102.i64, v22, v20, v24, v25, v26);
  v101 = v27;
  v28.n128_f32[0] = -*&v109.i32[2];
  v100 = v28;
  v29 = v28;
  v29.n128_f32[1] = -*&v109.i32[3];
  v30 = v110;
  v29.n128_u64[0] = vadd_f32(*&v110.f64[0], v29.n128_u64[0]);
  v28.n128_u32[0] = *(v18 + 24);
  v31.i32[0] = *(v18 + 36);
  *v32.i32 = vmuls_lane_f32(*(v18 + 32), v29.n128_u64[0], 1);
  *&v33 = *v32.i32 + (v29.n128_f32[0] * *(v18 + 28));
  v29.n128_f32[0] = v28.n128_f32[0] + (vmuls_lane_f32(*(v18 + 20), v29.n128_u64[0], 1) + (v29.n128_f32[0] * *(v18 + 16)));
  *v30.f64 = *v31.i32 + *&v33;
  v29.n128_f32[1] = *v31.i32 + *&v33;
  *v36.i64 = CI::BitmapSampler::read(*(v18 + 8), v29, v30, v28.n128_f64[0], v33, v32, v31, v34, v35);
  v37.i32[0] = 0;
  v37.f32[1] = -*&v109.i32[3];
  HIDWORD(v38) = HIDWORD(v110.f64[0]);
  *&v39.f64[0] = vadd_f32(v37, *&v110.f64[0]);
  *&v38 = vmuls_lane_f32(*(v18 + 20), *&v39.f64[0], 1) + (*v39.f64 * *(v18 + 16));
  LODWORD(v40) = *(v18 + 24);
  v41.i32[0] = *(v18 + 36);
  v42 = vaddq_f32(v102, vmulq_n_f32(v36, v104.f32[0]));
  v97 = v42;
  v42.n128_f32[0] = *&v40 + *&v38;
  *v39.f64 = *v41.i32 + (vmuls_lane_f32(*(v18 + 32), *&v39.f64[0], 1) + (*v39.f64 * *(v18 + 28)));
  v42.n128_u32[1] = LODWORD(v39.f64[0]);
  *v44.i64 = CI::BitmapSampler::read(*(v18 + 8), v42, v39, v38, v40, v102, v104, v41, v43);
  v45 = vextq_s8(v109, v109, 8uLL);
  v103 = v45;
  *(v45.f64 + 1) = -*&v109.i32[3];
  HIDWORD(v46) = HIDWORD(v110.f64[0]);
  *&v45.f64[0] = vadd_f32(*&v45.f64[0], *&v110.f64[0]);
  *&v46 = vmuls_lane_f32(*(v18 + 20), *&v45.f64[0], 1) + (*v45.f64 * *(v18 + 16));
  LODWORD(v47) = *(v18 + 24);
  v48.i32[0] = *(v18 + 36);
  *v49.i32 = vmuls_lane_f32(*(v18 + 32), *&v45.f64[0], 1);
  v50 = vaddq_f32(v97, vmulq_lane_f32(v44, *v104.f32, 1));
  v98 = v50;
  v50.n128_f32[0] = *&v47 + *&v46;
  *v45.f64 = *v48.i32 + (*v49.i32 + (*v45.f64 * *(v18 + 28)));
  v50.n128_u32[1] = LODWORD(v45.f64[0]);
  *v52.i64 = CI::BitmapSampler::read(*(v18 + 8), v50, v45, v46, v47, v97, v49, v48, v51);
  *&v53.f64[1] = v100.n128_u64[1];
  HIDWORD(v54) = HIDWORD(v110.f64[0]);
  *&v53.f64[0] = vadd_f32(*&v110.f64[0], v100.n128_u32[0]);
  *&v54 = vmuls_lane_f32(*(v18 + 20), *&v53.f64[0], 1) + (*v53.f64 * *(v18 + 16));
  LODWORD(v55) = *(v18 + 24);
  v56.i32[0] = *(v18 + 36);
  *v57.i32 = vmuls_lane_f32(*(v18 + 32), *&v53.f64[0], 1);
  v58 = v98;
  v59 = vaddq_f32(v98, vmulq_laneq_f32(v52, v104, 2));
  v99 = v59;
  v59.n128_f32[0] = *&v55 + *&v54;
  *v53.f64 = *v56.i32 + (*v57.i32 + (*v53.f64 * *(v18 + 28)));
  v59.n128_u32[1] = LODWORD(v53.f64[0]);
  *v61.i64 = CI::BitmapSampler::read(*(v18 + 8), v59, v53, v54, v55, v58, v57, v56, v60);
  v62.f64[1] = v103.f64[1];
  HIDWORD(v63) = HIDWORD(v110.f64[0]);
  *&v62.f64[0] = vadd_f32(LODWORD(v103.f64[0]), *&v110.f64[0]);
  *&v63 = vmuls_lane_f32(*(v18 + 20), *&v62.f64[0], 1) + (*v62.f64 * *(v18 + 16));
  LODWORD(v64) = *(v18 + 24);
  v65.i32[0] = *(v18 + 36);
  v66 = vmulq_n_f32(v101, v108.f32[0]);
  v67 = vaddq_f32(v66, vaddq_f32(v99, vmulq_laneq_f32(v61, v104, 3)));
  v105 = v67;
  v67.n128_f32[0] = *&v64 + *&v63;
  *v62.f64 = *v65.i32 + (vmuls_lane_f32(*(v18 + 32), *&v62.f64[0], 1) + (*v62.f64 * *(v18 + 28)));
  v67.n128_u32[1] = LODWORD(v62.f64[0]);
  *v69.i64 = CI::BitmapSampler::read(*(v18 + 8), v67, v62, v63, v64, v66, v101, v65, v68);
  HIDWORD(v71) = v109.i32[1];
  v70.f64[1] = v110.f64[1];
  v72 = COERCE_DOUBLE(__PAIR64__(v109.u32[3], v100.n128_u32[0]));
  *&v70.f64[0] = vadd_f32(*&v110.f64[0], __PAIR64__(v109.u32[3], v100.n128_u32[0]));
  *&v72 = vmuls_lane_f32(*(v18 + 20), *&v70.f64[0], 1) + (*v70.f64 * *(v18 + 16));
  LODWORD(v71) = *(v18 + 24);
  v73.i32[0] = *(v18 + 36);
  *v74.i32 = vmuls_lane_f32(*(v18 + 32), *&v70.f64[0], 1);
  v75 = v105;
  v76 = vaddq_f32(v105, vmulq_lane_f32(v69, *v108.f32, 1));
  v106 = v76;
  v76.n128_f32[0] = *&v71 + *&v72;
  *v70.f64 = *v73.i32 + (*v74.i32 + (*v70.f64 * *(v18 + 28)));
  v76.n128_u32[1] = LODWORD(v70.f64[0]);
  *v78.i64 = CI::BitmapSampler::read(*(v18 + 8), v76, v70, v72, v71, v75, v74, v73, v77);
  v79 = v103;
  LODWORD(v79.f64[0]) = 0;
  HIDWORD(v80) = HIDWORD(v110.f64[0]);
  *&v79.f64[0] = vadd_f32(*&v79.f64[0], *&v110.f64[0]);
  *&v80 = vmuls_lane_f32(*(v18 + 20), *&v79.f64[0], 1) + (*v79.f64 * *(v18 + 16));
  LODWORD(v81) = *(v18 + 24);
  v82.i32[0] = *(v18 + 36);
  *v83.i32 = vmuls_lane_f32(*(v18 + 32), *&v79.f64[0], 1);
  v84 = v106;
  v85 = vaddq_f32(v106, vmulq_laneq_f32(v78, v108, 2));
  v107 = v85;
  v85.n128_f32[0] = *&v81 + *&v80;
  *v79.f64 = *v82.i32 + (*v83.i32 + (*v79.f64 * *(v18 + 28)));
  v85.n128_u32[1] = LODWORD(v79.f64[0]);
  *v87.i64 = CI::BitmapSampler::read(*(v18 + 8), v85, v79, v80, v81, v84, v83, v82, v86);
  HIDWORD(v89) = v109.i32[1];
  v88.f64[1] = v110.f64[1];
  v90 = COERCE_DOUBLE(__PAIR64__(v109.u32[3], LODWORD(v103.f64[0])));
  *&v88.f64[0] = vadd_f32(__PAIR64__(v109.u32[3], LODWORD(v103.f64[0])), *&v110.f64[0]);
  *&v90 = vmuls_lane_f32(*(v18 + 20), *&v88.f64[0], 1) + (*v88.f64 * *(v18 + 16));
  LODWORD(v89) = *(v18 + 24);
  v91.i32[0] = *(v18 + 36);
  *v92.i32 = vmuls_lane_f32(*(v18 + 32), *&v88.f64[0], 1);
  v93 = vaddq_f32(v107, vmulq_laneq_f32(v87, v108, 3));
  v111 = v93;
  v93.n128_f32[0] = *&v89 + *&v90;
  *v88.f64 = *v91.i32 + (*v92.i32 + (*v88.f64 * *(v18 + 28)));
  v93.n128_u32[1] = LODWORD(v88.f64[0]);
  *v95.i64 = CI::BitmapSampler::read(*(v18 + 8), v93, v88, v90, v89, v107, v92, v91, v94);
  *&result = vaddq_f32(v111, vmulq_n_f32(v95, *v109.i32)).u64[0];
  return result;
}

double CI::sw_conv3x3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v104 = *v9;
  v109 = *v13;
  v110 = *v17;
  DC = CI::getDC(a1);
  v20 = v110;
  v102 = vdupq_lane_s32(*v110.i8, 1);
  *v21.i8 = *DC;
  v111 = v21;
  v22.n128_f32[0] = -*&v110.i32[2];
  v101 = v22;
  v23 = v22;
  v23.n128_f32[1] = -*&v110.i32[3];
  v23.n128_u64[0] = vadd_f32(*DC, v23.n128_u64[0]);
  v22.n128_u32[0] = *(v18 + 24);
  v24.i32[0] = *(v18 + 36);
  *v25.i32 = vmuls_lane_f32(*(v18 + 32), v23.n128_u64[0], 1);
  *v21.i32 = *v25.i32 + (v23.n128_f32[0] * *(v18 + 28));
  v23.n128_f32[0] = v22.n128_f32[0] + (vmuls_lane_f32(*(v18 + 20), v23.n128_u64[0], 1) + (v23.n128_f32[0] * *(v18 + 16)));
  *v20.f64 = *v24.i32 + *v21.i32;
  v23.n128_f32[1] = *v24.i32 + *v21.i32;
  *v28.i64 = CI::BitmapSampler::read(*(v18 + 8), v23, v20, v22.n128_f64[0], *v21.i64, v25, v24, v26, v27);
  v29.i32[0] = 0;
  v29.f32[1] = -*&v110.i32[3];
  HIDWORD(v30) = v111.i32[1];
  *&v31.f64[0] = vadd_f32(v29, *v111.i8);
  *&v30 = vmuls_lane_f32(*(v18 + 20), *&v31.f64[0], 1) + (*v31.f64 * *(v18 + 16));
  LODWORD(v32) = *(v18 + 24);
  v33.i32[0] = *(v18 + 36);
  v34 = vaddq_f32(v102, vmulq_n_f32(v28, v104.f32[0]));
  v98 = v34;
  v34.n128_f32[0] = *&v32 + *&v30;
  *v31.f64 = *v33.i32 + (vmuls_lane_f32(*(v18 + 32), *&v31.f64[0], 1) + (*v31.f64 * *(v18 + 28)));
  v34.n128_u32[1] = LODWORD(v31.f64[0]);
  *v36.i64 = CI::BitmapSampler::read(*(v18 + 8), v34, v31, v30, v32, v102, v104, v33, v35);
  v37 = vextq_s8(v110, v110, 8uLL);
  v103 = v37;
  *(v37.f64 + 1) = -*&v110.i32[3];
  HIDWORD(v38) = v111.i32[1];
  *&v37.f64[0] = vadd_f32(*&v37.f64[0], *v111.i8);
  *&v38 = vmuls_lane_f32(*(v18 + 20), *&v37.f64[0], 1) + (*v37.f64 * *(v18 + 16));
  LODWORD(v39) = *(v18 + 24);
  v40.i32[0] = *(v18 + 36);
  *v41.i32 = vmuls_lane_f32(*(v18 + 32), *&v37.f64[0], 1);
  v42 = vaddq_f32(v98, vmulq_lane_f32(v36, *v104.f32, 1));
  v99 = v42;
  v42.n128_f32[0] = *&v39 + *&v38;
  *v37.f64 = *v40.i32 + (*v41.i32 + (*v37.f64 * *(v18 + 28)));
  v42.n128_u32[1] = LODWORD(v37.f64[0]);
  *v44.i64 = CI::BitmapSampler::read(*(v18 + 8), v42, v37, v38, v39, v98, v41, v40, v43);
  *&v45.f64[1] = v101.n128_u64[1];
  HIDWORD(v46) = v111.i32[1];
  *&v45.f64[0] = vadd_f32(*v111.i8, v101.n128_u32[0]);
  *&v46 = vmuls_lane_f32(*(v18 + 20), *&v45.f64[0], 1) + (*v45.f64 * *(v18 + 16));
  LODWORD(v47) = *(v18 + 24);
  v48.i32[0] = *(v18 + 36);
  *v49.i32 = vmuls_lane_f32(*(v18 + 32), *&v45.f64[0], 1);
  v50 = v99;
  v51 = vaddq_f32(v99, vmulq_laneq_f32(v44, v104, 2));
  v100 = v51;
  v51.n128_f32[0] = *&v47 + *&v46;
  *v45.f64 = *v48.i32 + (*v49.i32 + (*v45.f64 * *(v18 + 28)));
  v51.n128_u32[1] = LODWORD(v45.f64[0]);
  *v53.i64 = CI::BitmapSampler::read(*(v18 + 8), v51, v45, v46, v47, v50, v49, v48, v52);
  v54 = v100;
  v55 = vaddq_f32(v100, vmulq_laneq_f32(v53, v104, 3));
  v105 = v55;
  LODWORD(v56) = *(v18 + 28);
  v55.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v111.i8, 1) + (*v111.i32 * *(v18 + 16)));
  LODWORD(v57) = *(v18 + 36);
  *v54.f64 = *&v57 + (vmuls_lane_f32(*(v18 + 32), *v111.i8, 1) + (*v111.i32 * *&v56));
  v55.n128_u32[1] = LODWORD(v54.f64[0]);
  *v61.i64 = CI::BitmapSampler::read(*(v18 + 8), v55, v54, v56, v57, v111, v58, v59, v60);
  v62.f64[1] = v103.f64[1];
  HIDWORD(v63) = v111.i32[1];
  *&v62.f64[0] = vadd_f32(LODWORD(v103.f64[0]), *v111.i8);
  *&v63 = vmuls_lane_f32(*(v18 + 20), *&v62.f64[0], 1) + (*v62.f64 * *(v18 + 16));
  LODWORD(v64) = *(v18 + 24);
  v65.i32[0] = *(v18 + 36);
  *v66.i32 = vmuls_lane_f32(*(v18 + 32), *&v62.f64[0], 1);
  v67 = v105;
  v68 = vaddq_f32(v105, vmulq_n_f32(v61, v109.f32[0]));
  v106 = v68;
  v68.n128_f32[0] = *&v64 + *&v63;
  *v62.f64 = *v65.i32 + (*v66.i32 + (*v62.f64 * *(v18 + 28)));
  v68.n128_u32[1] = LODWORD(v62.f64[0]);
  *v70.i64 = CI::BitmapSampler::read(*(v18 + 8), v68, v62, v63, v64, v67, v66, v65, v69);
  HIDWORD(v72) = v110.i32[1];
  *&v71.f64[1] = v111.i64[1];
  v73 = COERCE_DOUBLE(__PAIR64__(v110.u32[3], v101.n128_u32[0]));
  *&v71.f64[0] = vadd_f32(*v111.i8, __PAIR64__(v110.u32[3], v101.n128_u32[0]));
  *&v73 = vmuls_lane_f32(*(v18 + 20), *&v71.f64[0], 1) + (*v71.f64 * *(v18 + 16));
  LODWORD(v72) = *(v18 + 24);
  v74.i32[0] = *(v18 + 36);
  *v75.i32 = vmuls_lane_f32(*(v18 + 32), *&v71.f64[0], 1);
  v76 = v106;
  v77 = vaddq_f32(v106, vmulq_lane_f32(v70, *v109.f32, 1));
  v107 = v77;
  v77.n128_f32[0] = *&v72 + *&v73;
  *v71.f64 = *v74.i32 + (*v75.i32 + (*v71.f64 * *(v18 + 28)));
  v77.n128_u32[1] = LODWORD(v71.f64[0]);
  *v79.i64 = CI::BitmapSampler::read(*(v18 + 8), v77, v71, v73, v72, v76, v75, v74, v78);
  v80 = v103;
  LODWORD(v80.f64[0]) = 0;
  HIDWORD(v81) = v111.i32[1];
  *&v80.f64[0] = vadd_f32(*&v80.f64[0], *v111.i8);
  *&v81 = vmuls_lane_f32(*(v18 + 20), *&v80.f64[0], 1) + (*v80.f64 * *(v18 + 16));
  LODWORD(v82) = *(v18 + 24);
  v83.i32[0] = *(v18 + 36);
  *v84.i32 = vmuls_lane_f32(*(v18 + 32), *&v80.f64[0], 1);
  v85 = v107;
  v86 = vaddq_f32(v107, vmulq_laneq_f32(v79, v109, 2));
  v108 = v86;
  v86.n128_f32[0] = *&v82 + *&v81;
  *v80.f64 = *v83.i32 + (*v84.i32 + (*v80.f64 * *(v18 + 28)));
  v86.n128_u32[1] = LODWORD(v80.f64[0]);
  *v88.i64 = CI::BitmapSampler::read(*(v18 + 8), v86, v80, v81, v82, v85, v84, v83, v87);
  HIDWORD(v90) = v110.i32[1];
  *&v89.f64[1] = v111.i64[1];
  v91 = COERCE_DOUBLE(__PAIR64__(v110.u32[3], LODWORD(v103.f64[0])));
  *&v89.f64[0] = vadd_f32(__PAIR64__(v110.u32[3], LODWORD(v103.f64[0])), *v111.i8);
  *&v91 = vmuls_lane_f32(*(v18 + 20), *&v89.f64[0], 1) + (*v89.f64 * *(v18 + 16));
  LODWORD(v90) = *(v18 + 24);
  v92.i32[0] = *(v18 + 36);
  *v93.i32 = vmuls_lane_f32(*(v18 + 32), *&v89.f64[0], 1);
  v94 = vaddq_f32(v108, vmulq_laneq_f32(v88, v109, 3));
  v112 = v94;
  v94.n128_f32[0] = *&v90 + *&v91;
  *v89.f64 = *v92.i32 + (*v93.i32 + (*v89.f64 * *(v18 + 28)));
  v94.n128_u32[1] = LODWORD(v89.f64[0]);
  *v96.i64 = CI::BitmapSampler::read(*(v18 + 8), v94, v89, v91, v90, v108, v93, v92, v95);
  *&result = vaddq_f32(v112, vmulq_n_f32(v96, *v110.i32)).u64[0];
  return result;
}

double CI::sw_convolution9(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v113 = *v13;
  v106 = *v17;
  v107 = *v9;
  v19.i64[0] = *CI::getDC(a1);
  v114 = v19;
  _Q0 = v106;
  v21 = vextq_s8(_Q0, _Q0, 8uLL);
  v109 = v21;
  __asm { FMOV            V0.2S, #4.0 }

  v26 = vmul_f32(*&v21.f64[0], _Q0.n128_u64[0]);
  _Q0.n128_u64[0] = vsub_f32(*v19.i8, v26);
  v19.i32[0] = *(v18 + 24);
  v27.i32[0] = *(v18 + 36);
  *v28.i32 = vmuls_lane_f32(*(v18 + 32), _Q0.n128_u64[0], 1);
  *&v29 = *v28.i32 + (_Q0.n128_f32[0] * *(v18 + 28));
  _Q0.n128_f32[0] = *v19.i32 + (vmuls_lane_f32(*(v18 + 20), _Q0.n128_u64[0], 1) + (_Q0.n128_f32[0] * *(v18 + 16)));
  *v21.f64 = *v27.i32 + *&v29;
  _Q0.n128_f32[1] = *v27.i32 + *&v29;
  *v32.i64 = CI::BitmapSampler::read(*(v18 + 8), _Q0, v21, *v19.i64, v29, v28, v27, v30, v31);
  __asm { FMOV            V1.2S, #3.0 }

  HIDWORD(v34) = HIDWORD(v109.f64[0]);
  v35 = vmul_f32(*&v109.f64[0], _D1);
  *&v36.f64[1] = v114.i64[1];
  *&v36.f64[0] = vsub_f32(*v114.i8, v35);
  *&v34 = vmuls_lane_f32(*(v18 + 20), *&v36.f64[0], 1) + (*v36.f64 * *(v18 + 16));
  LODWORD(v37) = *(v18 + 24);
  v38.i32[0] = *(v18 + 36);
  *v39.i32 = vmuls_lane_f32(*(v18 + 32), *&v36.f64[0], 1);
  v40 = vdupq_lane_s32(v106.n128_u64[0], 1);
  v41 = vaddq_f32(v40, vmulq_n_f32(v32, v107.f32[0]));
  v103 = v41;
  v41.n128_f32[0] = *&v37 + *&v34;
  *v36.f64 = *v38.i32 + (*v39.i32 + (*v36.f64 * *(v18 + 28)));
  v41.n128_u32[1] = LODWORD(v36.f64[0]);
  *v43.i64 = CI::BitmapSampler::read(*(v18 + 8), v41, v36, v34, v37, v40, v39, v38, v42);
  v44 = vadd_f32(*&v109.f64[0], *&v109.f64[0]);
  *&v45.f64[1] = v114.i64[1];
  *&v45.f64[0] = vsub_f32(*v114.i8, v44);
  *&v46 = vmuls_lane_f32(*(v18 + 20), *&v45.f64[0], 1) + (*v45.f64 * *(v18 + 16));
  LODWORD(v47) = *(v18 + 24);
  v48.i32[0] = *(v18 + 36);
  *v49.i32 = vmuls_lane_f32(*(v18 + 32), *&v45.f64[0], 1);
  v50 = v103;
  v51 = vaddq_f32(v103, vmulq_lane_f32(v43, *v107.f32, 1));
  v104 = v51;
  v51.n128_f32[0] = *&v47 + *&v46;
  *v45.f64 = *v48.i32 + (*v49.i32 + (*v45.f64 * *(v18 + 28)));
  v51.n128_u32[1] = LODWORD(v45.f64[0]);
  *v53.i64 = CI::BitmapSampler::read(*(v18 + 8), v51, v45, v46, v47, v50, v49, v48, v52);
  v54.f64[1] = v109.f64[1];
  HIDWORD(v55) = v114.i32[1];
  *&v54.f64[0] = vsub_f32(*v114.i8, *&v109.f64[0]);
  *&v55 = vmuls_lane_f32(*(v18 + 20), *&v54.f64[0], 1) + (*v54.f64 * *(v18 + 16));
  LODWORD(v56) = *(v18 + 24);
  v57.i32[0] = *(v18 + 36);
  *v58.i32 = vmuls_lane_f32(*(v18 + 32), *&v54.f64[0], 1);
  v59 = v104;
  v60 = vaddq_f32(v104, vmulq_laneq_f32(v53, v107, 2));
  v105 = v60;
  v60.n128_f32[0] = *&v56 + *&v55;
  *v54.f64 = *v57.i32 + (*v58.i32 + (*v54.f64 * *(v18 + 28)));
  v60.n128_u32[1] = LODWORD(v54.f64[0]);
  *v62.i64 = CI::BitmapSampler::read(*(v18 + 8), v60, v54, v55, v56, v59, v58, v57, v61);
  v63 = v105;
  v64 = vaddq_f32(v105, vmulq_laneq_f32(v62, v107, 3));
  v108 = v64;
  LODWORD(v65) = *(v18 + 28);
  v64.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v114.i8, 1) + (*v114.i32 * *(v18 + 16)));
  LODWORD(v66) = *(v18 + 36);
  *v63.f64 = *&v66 + (vmuls_lane_f32(*(v18 + 32), *v114.i8, 1) + (*v114.i32 * *&v65));
  v64.n128_u32[1] = LODWORD(v63.f64[0]);
  *v70.i64 = CI::BitmapSampler::read(*(v18 + 8), v64, v63, v65, v66, v114, v67, v68, v69);
  v71.f64[1] = v109.f64[1];
  HIDWORD(v72) = v114.i32[1];
  *&v71.f64[0] = vadd_f32(*&v109.f64[0], *v114.i8);
  *&v72 = vmuls_lane_f32(*(v18 + 20), *&v71.f64[0], 1) + (*v71.f64 * *(v18 + 16));
  LODWORD(v73) = *(v18 + 24);
  v74.i32[0] = *(v18 + 36);
  *v75.i32 = vmuls_lane_f32(*(v18 + 32), *&v71.f64[0], 1);
  v76 = vaddq_f32(v108, vmulq_n_f32(v70, v113.f32[0]));
  v110 = v76;
  v76.n128_f32[0] = *&v73 + *&v72;
  *v71.f64 = *v74.i32 + (*v75.i32 + (*v71.f64 * *(v18 + 28)));
  v76.n128_u32[1] = LODWORD(v71.f64[0]);
  *v78.i64 = CI::BitmapSampler::read(*(v18 + 8), v76, v71, v72, v73, v108, v75, v74, v77);
  *&v79.f64[1] = v114.i64[1];
  *&v79.f64[0] = vadd_f32(v44, *v114.i8);
  *&v80 = vmuls_lane_f32(*(v18 + 20), *&v79.f64[0], 1) + (*v79.f64 * *(v18 + 16));
  LODWORD(v81) = *(v18 + 24);
  v82.i32[0] = *(v18 + 36);
  v83 = v110;
  v84 = vaddq_f32(v110, vmulq_lane_f32(v78, *v113.f32, 1));
  v111 = v84;
  v84.n128_f32[0] = *&v81 + *&v80;
  *v79.f64 = *v82.i32 + (vmuls_lane_f32(*(v18 + 32), *&v79.f64[0], 1) + (*v79.f64 * *(v18 + 28)));
  v84.n128_u32[1] = LODWORD(v79.f64[0]);
  *v86.i64 = CI::BitmapSampler::read(*(v18 + 8), v84, v79, v80, v81, v83, v113, v82, v85);
  *&v87.f64[1] = v114.i64[1];
  *&v87.f64[0] = vadd_f32(v35, *v114.i8);
  *&v88 = vmuls_lane_f32(*(v18 + 20), *&v87.f64[0], 1) + (*v87.f64 * *(v18 + 16));
  LODWORD(v89) = *(v18 + 24);
  v90.i32[0] = *(v18 + 36);
  v91 = v111;
  v92 = vaddq_f32(v111, vmulq_laneq_f32(v86, v113, 2));
  v112 = v92;
  v92.n128_f32[0] = *&v89 + *&v88;
  *v87.f64 = *v90.i32 + (vmuls_lane_f32(*(v18 + 32), *&v87.f64[0], 1) + (*v87.f64 * *(v18 + 28)));
  v92.n128_u32[1] = LODWORD(v87.f64[0]);
  *v94.i64 = CI::BitmapSampler::read(*(v18 + 8), v92, v87, v88, v89, v91, v113, v90, v93);
  *&v95.f64[1] = v114.i64[1];
  *&v95.f64[0] = vadd_f32(v26, *v114.i8);
  *&v96 = vmuls_lane_f32(*(v18 + 20), *&v95.f64[0], 1) + (*v95.f64 * *(v18 + 16));
  LODWORD(v97) = *(v18 + 24);
  v98.i32[0] = *(v18 + 36);
  v99 = vaddq_f32(v112, vmulq_laneq_f32(v94, v113, 3));
  v115 = v99;
  v99.n128_f32[0] = *&v97 + *&v96;
  *v95.f64 = *v98.i32 + (vmuls_lane_f32(*(v18 + 32), *&v95.f64[0], 1) + (*v95.f64 * *(v18 + 28)));
  v99.n128_u32[1] = LODWORD(v95.f64[0]);
  *v101.i64 = CI::BitmapSampler::read(*(v18 + 8), v99, v95, v96, v97, v112, v113, v98, v100);
  *&result = vaddq_f32(v115, vmulq_n_f32(v101, v106.n128_f32[0])).u64[0];
  return result;
}

double CI::sw_convolution7(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v91 = *v13;
  v85 = *v9;
  v87 = *v17;
  v19.i64[0] = *CI::getDC(a1);
  v92 = v19;
  _Q0 = vdupq_lane_s32(*v87.i8, 1);
  v82 = _Q0;
  v21 = vextq_s8(v87, v87, 8uLL);
  v88 = v21;
  __asm { FMOV            V0.2S, #3.0 }

  v26 = vmul_f32(*&v21.f64[0], _Q0.n128_u64[0]);
  _Q0.n128_u64[0] = vsub_f32(*v19.i8, v26);
  v19.i32[0] = *(v18 + 24);
  v27.i32[0] = *(v18 + 36);
  *v28.i32 = vmuls_lane_f32(*(v18 + 32), _Q0.n128_u64[0], 1);
  *&v29 = *v28.i32 + (_Q0.n128_f32[0] * *(v18 + 28));
  _Q0.n128_f32[0] = *v19.i32 + (vmuls_lane_f32(*(v18 + 20), _Q0.n128_u64[0], 1) + (_Q0.n128_f32[0] * *(v18 + 16)));
  *v21.f64 = *v27.i32 + *&v29;
  _Q0.n128_f32[1] = *v27.i32 + *&v29;
  *v32.i64 = CI::BitmapSampler::read(*(v18 + 8), _Q0, v21, *v19.i64, v29, v28, v27, v30, v31);
  v33 = vadd_f32(*&v88.f64[0], *&v88.f64[0]);
  *&v34.f64[1] = v92.i64[1];
  *&v34.f64[0] = vsub_f32(*v92.i8, v33);
  *&v35 = vmuls_lane_f32(*(v18 + 20), *&v34.f64[0], 1) + (*v34.f64 * *(v18 + 16));
  LODWORD(v36) = *(v18 + 24);
  v37.i32[0] = *(v18 + 36);
  v38 = v82;
  v39 = vaddq_f32(v82, vmulq_lane_f32(v32, *v85.f32, 1));
  v83 = v39;
  v39.n128_f32[0] = *&v36 + *&v35;
  *v34.f64 = *v37.i32 + (vmuls_lane_f32(*(v18 + 32), *&v34.f64[0], 1) + (*v34.f64 * *(v18 + 28)));
  v39.n128_u32[1] = LODWORD(v34.f64[0]);
  *v41.i64 = CI::BitmapSampler::read(*(v18 + 8), v39, v34, v35, v36, v38, v85, v37, v40);
  v42.f64[1] = v88.f64[1];
  HIDWORD(v43) = v92.i32[1];
  *&v42.f64[0] = vsub_f32(*v92.i8, *&v88.f64[0]);
  *&v43 = vmuls_lane_f32(*(v18 + 20), *&v42.f64[0], 1) + (*v42.f64 * *(v18 + 16));
  LODWORD(v44) = *(v18 + 24);
  v45.i32[0] = *(v18 + 36);
  v46 = v83;
  v47 = vaddq_f32(v83, vmulq_laneq_f32(v41, v85, 2));
  v84 = v47;
  v47.n128_f32[0] = *&v44 + *&v43;
  *v42.f64 = *v45.i32 + (vmuls_lane_f32(*(v18 + 32), *&v42.f64[0], 1) + (*v42.f64 * *(v18 + 28)));
  v47.n128_u32[1] = LODWORD(v42.f64[0]);
  *v49.i64 = CI::BitmapSampler::read(*(v18 + 8), v47, v42, v43, v44, v46, v85, v45, v48);
  v50 = v84;
  HIDWORD(v51) = v85.i32[1];
  v52 = vaddq_f32(v84, vmulq_laneq_f32(v49, v85, 3));
  v86 = v52;
  LODWORD(v51) = *(v18 + 28);
  v52.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v92.i8, 1) + (*v92.i32 * *(v18 + 16)));
  LODWORD(v53) = *(v18 + 36);
  *v50.f64 = *&v53 + (vmuls_lane_f32(*(v18 + 32), *v92.i8, 1) + (*v92.i32 * *&v51));
  v52.n128_u32[1] = LODWORD(v50.f64[0]);
  *v57.i64 = CI::BitmapSampler::read(*(v18 + 8), v52, v50, v51, v53, v92, v54, v55, v56);
  v58.f64[1] = v88.f64[1];
  HIDWORD(v59) = v92.i32[1];
  *&v58.f64[0] = vadd_f32(*&v88.f64[0], *v92.i8);
  *&v59 = vmuls_lane_f32(*(v18 + 20), *&v58.f64[0], 1) + (*v58.f64 * *(v18 + 16));
  LODWORD(v60) = *(v18 + 24);
  v61.i32[0] = *(v18 + 36);
  *v62.i32 = vmuls_lane_f32(*(v18 + 32), *&v58.f64[0], 1);
  v63 = vaddq_f32(v86, vmulq_n_f32(v57, v91.f32[0]));
  v89 = v63;
  v63.n128_f32[0] = *&v60 + *&v59;
  *v58.f64 = *v61.i32 + (*v62.i32 + (*v58.f64 * *(v18 + 28)));
  v63.n128_u32[1] = LODWORD(v58.f64[0]);
  *v65.i64 = CI::BitmapSampler::read(*(v18 + 8), v63, v58, v59, v60, v86, v62, v61, v64);
  *&v66.f64[1] = v92.i64[1];
  *&v66.f64[0] = vadd_f32(v33, *v92.i8);
  *&v67 = vmuls_lane_f32(*(v18 + 20), *&v66.f64[0], 1) + (*v66.f64 * *(v18 + 16));
  LODWORD(v68) = *(v18 + 24);
  v69.i32[0] = *(v18 + 36);
  v70 = v89;
  v71 = vaddq_f32(v89, vmulq_lane_f32(v65, *v91.f32, 1));
  v90 = v71;
  v71.n128_f32[0] = *&v68 + *&v67;
  *v66.f64 = *v69.i32 + (vmuls_lane_f32(*(v18 + 32), *&v66.f64[0], 1) + (*v66.f64 * *(v18 + 28)));
  v71.n128_u32[1] = LODWORD(v66.f64[0]);
  *v73.i64 = CI::BitmapSampler::read(*(v18 + 8), v71, v66, v67, v68, v70, v91, v69, v72);
  *&v74.f64[1] = v92.i64[1];
  *&v74.f64[0] = vadd_f32(v26, *v92.i8);
  *&v75 = vmuls_lane_f32(*(v18 + 20), *&v74.f64[0], 1) + (*v74.f64 * *(v18 + 16));
  LODWORD(v76) = *(v18 + 24);
  v77.i32[0] = *(v18 + 36);
  v78 = vaddq_f32(v90, vmulq_laneq_f32(v73, v91, 2));
  v93 = v78;
  v78.n128_f32[0] = *&v76 + *&v75;
  *v74.f64 = *v77.i32 + (vmuls_lane_f32(*(v18 + 32), *&v74.f64[0], 1) + (*v74.f64 * *(v18 + 28)));
  v78.n128_u32[1] = LODWORD(v74.f64[0]);
  *v80.i64 = CI::BitmapSampler::read(*(v18 + 8), v78, v74, v75, v76, v90, v91, v77, v79);
  *&result = vaddq_f32(v93, vmulq_laneq_f32(v80, v91, 3)).u64[0];
  return result;
}

double CI::sw_convolutionrgb9(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v108 = *v9;
  v109 = *v13;
  v107 = *v17;
  DC = CI::getDC(a1);
  *v20.i8 = *DC;
  v114 = v20;
  v21 = vdupq_lane_s32(*v107.i8, 1);
  v102 = v21;
  v21.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v18 + 16)));
  LODWORD(v22) = *(v18 + 36);
  v110 = vextq_s8(v107, v107, 8uLL);
  *v23.f64 = *&v22 + (vmuls_lane_f32(*(v18 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v18 + 28)));
  v21.n128_u32[1] = LODWORD(v23.f64[0]);
  _Q0.n128_f64[0] = CI::BitmapSampler::read(*(v18 + 8), v21, v23, *v110.i64, v22, v107, v20, v24, v25);
  v106 = _Q0;
  __asm { FMOV            V0.2S, #4.0 }

  v31 = v110;
  v32 = vmul_f32(*v110.i8, _Q0.n128_u64[0]);
  _Q0.n128_u64[1] = v114.u64[1];
  _Q0.n128_u64[0] = vsub_f32(*v114.i8, v32);
  LODWORD(v33) = *(v18 + 24);
  v34.i32[0] = *(v18 + 36);
  *v35.i32 = vmuls_lane_f32(*(v18 + 32), _Q0.n128_u64[0], 1);
  *&v36 = *v35.i32 + (_Q0.n128_f32[0] * *(v18 + 28));
  _Q0.n128_f32[0] = *&v33 + (vmuls_lane_f32(*(v18 + 20), _Q0.n128_u64[0], 1) + (_Q0.n128_f32[0] * *(v18 + 16)));
  *v31.f64 = *v34.i32 + *&v36;
  _Q0.n128_f32[1] = *v34.i32 + *&v36;
  *v39.i64 = CI::BitmapSampler::read(*(v18 + 8), _Q0, v31, v33, v36, v35, v34, v37, v38);
  __asm { FMOV            V1.2S, #3.0 }

  HIDWORD(v41) = v110.i32[1];
  v42 = vmul_f32(*v110.i8, _D1);
  *&v43.f64[1] = v114.i64[1];
  *&v43.f64[0] = vsub_f32(*v114.i8, v42);
  *&v41 = vmuls_lane_f32(*(v18 + 20), *&v43.f64[0], 1) + (*v43.f64 * *(v18 + 16));
  LODWORD(v44) = *(v18 + 24);
  v45.i32[0] = *(v18 + 36);
  *v46.i32 = vmuls_lane_f32(*(v18 + 32), *&v43.f64[0], 1);
  v47 = v102;
  v48 = vaddq_f32(v102, vmulq_n_f32(v39, v108.f32[0]));
  v103 = v48;
  v48.n128_f32[0] = *&v44 + *&v41;
  *v43.f64 = *v45.i32 + (*v46.i32 + (*v43.f64 * *(v18 + 28)));
  v48.n128_u32[1] = LODWORD(v43.f64[0]);
  *v50.i64 = CI::BitmapSampler::read(*(v18 + 8), v48, v43, v41, v44, v47, v46, v45, v49);
  v51 = vadd_f32(*v110.i8, *v110.i8);
  *&v52.f64[1] = v114.i64[1];
  *&v52.f64[0] = vsub_f32(*v114.i8, v51);
  *&v53 = vmuls_lane_f32(*(v18 + 20), *&v52.f64[0], 1) + (*v52.f64 * *(v18 + 16));
  LODWORD(v54) = *(v18 + 24);
  v55.i32[0] = *(v18 + 36);
  *v56.i32 = vmuls_lane_f32(*(v18 + 32), *&v52.f64[0], 1);
  v57 = v103;
  v58 = vaddq_f32(v103, vmulq_lane_f32(v50, *v108.f32, 1));
  v104 = v58;
  v58.n128_f32[0] = *&v54 + *&v53;
  *v52.f64 = *v55.i32 + (*v56.i32 + (*v52.f64 * *(v18 + 28)));
  v58.n128_u32[1] = LODWORD(v52.f64[0]);
  *v60.i64 = CI::BitmapSampler::read(*(v18 + 8), v58, v52, v53, v54, v57, v56, v55, v59);
  *&v61.f64[1] = v114.i64[1];
  HIDWORD(v62) = v110.i32[1];
  *&v61.f64[0] = vsub_f32(*v114.i8, *v110.i8);
  *&v62 = vmuls_lane_f32(*(v18 + 20), *&v61.f64[0], 1) + (*v61.f64 * *(v18 + 16));
  LODWORD(v63) = *(v18 + 24);
  v64.i32[0] = *(v18 + 36);
  *v65.i32 = vmuls_lane_f32(*(v18 + 32), *&v61.f64[0], 1);
  v66 = v104;
  v67 = vaddq_f32(v104, vmulq_laneq_f32(v60, v108, 2));
  v105 = v67;
  v67.n128_f32[0] = *&v63 + *&v62;
  *v61.f64 = *v64.i32 + (*v65.i32 + (*v61.f64 * *(v18 + 28)));
  v67.n128_u32[1] = LODWORD(v61.f64[0]);
  *v69.i64 = CI::BitmapSampler::read(*(v18 + 8), v67, v61, v62, v63, v66, v65, v64, v68);
  *&v70.f64[1] = v114.i64[1];
  HIDWORD(v71) = v110.i32[1];
  *&v70.f64[0] = vadd_f32(*v110.i8, *v114.i8);
  *&v71 = vmuls_lane_f32(*(v18 + 20), *&v70.f64[0], 1) + (*v70.f64 * *(v18 + 16));
  LODWORD(v72) = *(v18 + 24);
  v73.i32[0] = *(v18 + 36);
  v74 = vmulq_n_f32(v106, v109.f32[0]);
  v75 = vaddq_f32(v74, vaddq_f32(v105, vmulq_laneq_f32(v69, v108, 3)));
  v111 = v75;
  v75.n128_f32[0] = *&v72 + *&v71;
  *v70.f64 = *v73.i32 + (vmuls_lane_f32(*(v18 + 32), *&v70.f64[0], 1) + (*v70.f64 * *(v18 + 28)));
  v75.n128_u32[1] = LODWORD(v70.f64[0]);
  *v77.i64 = CI::BitmapSampler::read(*(v18 + 8), v75, v70, v71, v72, v74, v106, v73, v76);
  *&v78.f64[1] = v114.i64[1];
  *&v78.f64[0] = vadd_f32(v51, *v114.i8);
  *&v79 = vmuls_lane_f32(*(v18 + 20), *&v78.f64[0], 1) + (*v78.f64 * *(v18 + 16));
  LODWORD(v80) = *(v18 + 24);
  v81.i32[0] = *(v18 + 36);
  v82 = v111;
  v83 = vaddq_f32(v111, vmulq_lane_f32(v77, *v109.f32, 1));
  v112 = v83;
  v83.n128_f32[0] = *&v80 + *&v79;
  *v78.f64 = *v81.i32 + (vmuls_lane_f32(*(v18 + 32), *&v78.f64[0], 1) + (*v78.f64 * *(v18 + 28)));
  v83.n128_u32[1] = LODWORD(v78.f64[0]);
  *v85.i64 = CI::BitmapSampler::read(*(v18 + 8), v83, v78, v79, v80, v82, v109, v81, v84);
  *&v86.f64[1] = v114.i64[1];
  *&v86.f64[0] = vadd_f32(v42, *v114.i8);
  *&v87 = vmuls_lane_f32(*(v18 + 20), *&v86.f64[0], 1) + (*v86.f64 * *(v18 + 16));
  LODWORD(v88) = *(v18 + 24);
  v89.i32[0] = *(v18 + 36);
  v90 = v112;
  v91 = vaddq_f32(v112, vmulq_laneq_f32(v85, v109, 2));
  v113 = v91;
  v91.n128_f32[0] = *&v88 + *&v87;
  *v86.f64 = *v89.i32 + (vmuls_lane_f32(*(v18 + 32), *&v86.f64[0], 1) + (*v86.f64 * *(v18 + 28)));
  v91.n128_u32[1] = LODWORD(v86.f64[0]);
  *v93.i64 = CI::BitmapSampler::read(*(v18 + 8), v91, v86, v87, v88, v90, v109, v89, v92);
  *&v94.f64[1] = v114.i64[1];
  *&v94.f64[0] = vadd_f32(v32, *v114.i8);
  *&v95 = vmuls_lane_f32(*(v18 + 20), *&v94.f64[0], 1) + (*v94.f64 * *(v18 + 16));
  LODWORD(v96) = *(v18 + 24);
  v97.i32[0] = *(v18 + 36);
  v98 = vaddq_f32(v113, vmulq_laneq_f32(v93, v109, 3));
  v115 = v98;
  v98.n128_f32[0] = *&v96 + *&v95;
  *v94.f64 = *v97.i32 + (vmuls_lane_f32(*(v18 + 32), *&v94.f64[0], 1) + (*v94.f64 * *(v18 + 28)));
  v98.n128_u32[1] = LODWORD(v94.f64[0]);
  *v100.i64 = CI::BitmapSampler::read(*(v18 + 8), v98, v94, v95, v96, v113, v109, v97, v99);
  *&result = vaddq_f32(v115, vmulq_n_f32(v100, *v107.i32)).u64[0];
  return result;
}

double CI::sw_convolutionrgb7(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v93 = *v13;
  v88 = *v9;
  v89 = *v17;
  DC = CI::getDC(a1);
  *v20.i8 = *DC;
  v94 = v20;
  v21 = v89;
  v22 = vdupq_lane_s32(*v89.i8, 1);
  v84 = v22;
  v22.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v18 + 16)));
  LODWORD(v23) = *(v18 + 36);
  v90 = vextq_s8(v21, v21, 8uLL);
  *v24.f64 = *&v23 + (vmuls_lane_f32(*(v18 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v18 + 28)));
  v22.n128_u32[1] = LODWORD(v24.f64[0]);
  _Q0.n128_f64[0] = CI::BitmapSampler::read(*(v18 + 8), v22, v24, *v90.i64, v23, v20, v21, v25, v26);
  v87 = _Q0;
  __asm { FMOV            V0.2S, #3.0 }

  v32 = v90;
  v33 = vmul_f32(*v90.i8, _Q0.n128_u64[0]);
  _Q0.n128_u64[1] = v94.u64[1];
  _Q0.n128_u64[0] = vsub_f32(*v94.i8, v33);
  LODWORD(v34) = *(v18 + 24);
  v35.i32[0] = *(v18 + 36);
  *v36.i32 = vmuls_lane_f32(*(v18 + 32), _Q0.n128_u64[0], 1);
  *&v37 = *v36.i32 + (_Q0.n128_f32[0] * *(v18 + 28));
  _Q0.n128_f32[0] = *&v34 + (vmuls_lane_f32(*(v18 + 20), _Q0.n128_u64[0], 1) + (_Q0.n128_f32[0] * *(v18 + 16)));
  *v32.f64 = *v35.i32 + *&v37;
  _Q0.n128_f32[1] = *v35.i32 + *&v37;
  *v40.i64 = CI::BitmapSampler::read(*(v18 + 8), _Q0, v32, v34, v37, v36, v35, v38, v39);
  v41 = vadd_f32(*v90.i8, *v90.i8);
  *&v42.f64[1] = v94.i64[1];
  *&v42.f64[0] = vsub_f32(*v94.i8, v41);
  *&v43 = vmuls_lane_f32(*(v18 + 20), *&v42.f64[0], 1) + (*v42.f64 * *(v18 + 16));
  LODWORD(v44) = *(v18 + 24);
  v45.i32[0] = *(v18 + 36);
  *v46.i32 = vmuls_lane_f32(*(v18 + 32), *&v42.f64[0], 1);
  v47 = v84;
  v48 = vaddq_f32(v84, vmulq_lane_f32(v40, *v88.f32, 1));
  v85 = v48;
  v48.n128_f32[0] = *&v44 + *&v43;
  *v42.f64 = *v45.i32 + (*v46.i32 + (*v42.f64 * *(v18 + 28)));
  v48.n128_u32[1] = LODWORD(v42.f64[0]);
  *v50.i64 = CI::BitmapSampler::read(*(v18 + 8), v48, v42, v43, v44, v47, v46, v45, v49);
  *&v51.f64[1] = v94.i64[1];
  HIDWORD(v52) = v90.i32[1];
  *&v51.f64[0] = vsub_f32(*v94.i8, *v90.i8);
  *&v52 = vmuls_lane_f32(*(v18 + 20), *&v51.f64[0], 1) + (*v51.f64 * *(v18 + 16));
  LODWORD(v53) = *(v18 + 24);
  v54.i32[0] = *(v18 + 36);
  *v55.i32 = vmuls_lane_f32(*(v18 + 32), *&v51.f64[0], 1);
  v56 = v85;
  v57 = vaddq_f32(v85, vmulq_laneq_f32(v50, v88, 2));
  v86 = v57;
  v57.n128_f32[0] = *&v53 + *&v52;
  *v51.f64 = *v54.i32 + (*v55.i32 + (*v51.f64 * *(v18 + 28)));
  v57.n128_u32[1] = LODWORD(v51.f64[0]);
  *v59.i64 = CI::BitmapSampler::read(*(v18 + 8), v57, v51, v52, v53, v56, v55, v54, v58);
  *&v60.f64[1] = v94.i64[1];
  HIDWORD(v61) = v90.i32[1];
  *&v60.f64[0] = vadd_f32(*v90.i8, *v94.i8);
  *&v61 = vmuls_lane_f32(*(v18 + 20), *&v60.f64[0], 1) + (*v60.f64 * *(v18 + 16));
  LODWORD(v62) = *(v18 + 24);
  v63.i32[0] = *(v18 + 36);
  v64 = vmulq_n_f32(v87, v93.f32[0]);
  v65 = vaddq_f32(v64, vaddq_f32(v86, vmulq_laneq_f32(v59, v88, 3)));
  v91 = v65;
  v65.n128_f32[0] = *&v62 + *&v61;
  *v60.f64 = *v63.i32 + (vmuls_lane_f32(*(v18 + 32), *&v60.f64[0], 1) + (*v60.f64 * *(v18 + 28)));
  v65.n128_u32[1] = LODWORD(v60.f64[0]);
  *v67.i64 = CI::BitmapSampler::read(*(v18 + 8), v65, v60, v61, v62, v64, v87, v63, v66);
  *&v68.f64[1] = v94.i64[1];
  *&v68.f64[0] = vadd_f32(v41, *v94.i8);
  *&v69 = vmuls_lane_f32(*(v18 + 20), *&v68.f64[0], 1) + (*v68.f64 * *(v18 + 16));
  LODWORD(v70) = *(v18 + 24);
  v71.i32[0] = *(v18 + 36);
  v72 = v91;
  v73 = vaddq_f32(v91, vmulq_lane_f32(v67, *v93.f32, 1));
  v92 = v73;
  v73.n128_f32[0] = *&v70 + *&v69;
  *v68.f64 = *v71.i32 + (vmuls_lane_f32(*(v18 + 32), *&v68.f64[0], 1) + (*v68.f64 * *(v18 + 28)));
  v73.n128_u32[1] = LODWORD(v68.f64[0]);
  *v75.i64 = CI::BitmapSampler::read(*(v18 + 8), v73, v68, v69, v70, v72, v93, v71, v74);
  *&v76.f64[1] = v94.i64[1];
  *&v76.f64[0] = vadd_f32(v33, *v94.i8);
  *&v77 = vmuls_lane_f32(*(v18 + 20), *&v76.f64[0], 1) + (*v76.f64 * *(v18 + 16));
  LODWORD(v78) = *(v18 + 24);
  v79.i32[0] = *(v18 + 36);
  v80 = vaddq_f32(v92, vmulq_laneq_f32(v75, v93, 2));
  v95 = v80;
  v80.n128_f32[0] = *&v78 + *&v77;
  *v76.f64 = *v79.i32 + (vmuls_lane_f32(*(v18 + 32), *&v76.f64[0], 1) + (*v76.f64 * *(v18 + 28)));
  v80.n128_u32[1] = LODWORD(v76.f64[0]);
  *v82.i64 = CI::BitmapSampler::read(*(v18 + 8), v80, v76, v77, v78, v92, v93, v79, v81);
  *&result = vaddq_f32(v95, vmulq_laneq_f32(v82, v93, 3)).u64[0];
  return result;
}

double CI::sw_convolution5(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v10 = *(v4 + 64);
  v11 = *(v4 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = a4 + 80 * v5;
  v66 = *v9;
  v64 = *v13;
  v15.f64[0] = *CI::getDC(a1);
  v65 = v15;
  v16 = vdupq_lane_s32(*v64.i8, 1);
  v17 = vextq_s8(v64, v64, 8uLL);
  v59 = v16;
  v62 = v17;
  v18 = vadd_f32(v17.n128_u64[0], v17.n128_u64[0]);
  v17.n128_u64[0] = vsub_f32(*&v15.f64[0], v18);
  v16.i32[0] = *(v14 + 24);
  v19.i32[0] = *(v14 + 36);
  *v20.i32 = vmuls_lane_f32(*(v14 + 32), v17.n128_u64[0], 1);
  *&v21 = *v20.i32 + (v17.n128_f32[0] * *(v14 + 28));
  v17.n128_f32[0] = *v16.i32 + (vmuls_lane_f32(*(v14 + 20), v17.n128_u64[0], 1) + (v17.n128_f32[0] * *(v14 + 16)));
  *v15.f64 = *v19.i32 + *&v21;
  v17.n128_f32[1] = *v19.i32 + *&v21;
  *v24.i64 = CI::BitmapSampler::read(*(v14 + 8), v17, v15, *v16.i64, v21, v20, v19, v22, v23);
  *&v25.f64[1] = v62.n128_u64[1];
  HIDWORD(v26) = v65.i32[1];
  *&v25.f64[0] = vsub_f32(*v65.i8, v62.n128_u64[0]);
  *&v26 = vmuls_lane_f32(*(v14 + 20), *&v25.f64[0], 1) + (*v25.f64 * *(v14 + 16));
  LODWORD(v27) = *(v14 + 24);
  v28.i32[0] = *(v14 + 36);
  *v29.i32 = vmuls_lane_f32(*(v14 + 32), *&v25.f64[0], 1);
  v30 = v59;
  v31 = vaddq_f32(v59, vmulq_n_f32(v24, v66.f32[0]));
  v60 = v31;
  v31.n128_f32[0] = *&v27 + *&v26;
  *v25.f64 = *v28.i32 + (*v29.i32 + (*v25.f64 * *(v14 + 28)));
  v31.n128_u32[1] = LODWORD(v25.f64[0]);
  *v33.i64 = CI::BitmapSampler::read(*(v14 + 8), v31, v25, v26, v27, v30, v29, v28, v32);
  v34 = v60;
  v35 = vaddq_f32(v60, vmulq_lane_f32(v33, *v66.f32, 1));
  v61 = v35;
  LODWORD(v36) = *(v14 + 28);
  v35.n128_f32[0] = *(v14 + 24) + (vmuls_lane_f32(*(v14 + 20), *v65.i8, 1) + (*v65.i32 * *(v14 + 16)));
  LODWORD(v37) = *(v14 + 36);
  *v34.f64 = *&v37 + (vmuls_lane_f32(*(v14 + 32), *v65.i8, 1) + (*v65.i32 * *&v36));
  v35.n128_u32[1] = LODWORD(v34.f64[0]);
  *v41.i64 = CI::BitmapSampler::read(*(v14 + 8), v35, v34, v36, v37, v65, v38, v39, v40);
  *&v42.f64[1] = v62.n128_u64[1];
  HIDWORD(v43) = v65.i32[1];
  *&v42.f64[0] = vadd_f32(v62.n128_u64[0], *v65.i8);
  *&v43 = vmuls_lane_f32(*(v14 + 20), *&v42.f64[0], 1) + (*v42.f64 * *(v14 + 16));
  LODWORD(v44) = *(v14 + 24);
  v45.i32[0] = *(v14 + 36);
  *v46.i32 = vmuls_lane_f32(*(v14 + 32), *&v42.f64[0], 1);
  v47 = vaddq_f32(v61, vmulq_laneq_f32(v41, v66, 2));
  v63 = v47;
  v47.n128_f32[0] = *&v44 + *&v43;
  *v42.f64 = *v45.i32 + (*v46.i32 + (*v42.f64 * *(v14 + 28)));
  v47.n128_u32[1] = LODWORD(v42.f64[0]);
  *v49.i64 = CI::BitmapSampler::read(*(v14 + 8), v47, v42, v43, v44, v61, v46, v45, v48);
  *&v50.f64[1] = v65.i64[1];
  *&v50.f64[0] = vadd_f32(v18, *v65.i8);
  *&v51 = vmuls_lane_f32(*(v14 + 20), *&v50.f64[0], 1) + (*v50.f64 * *(v14 + 16));
  LODWORD(v52) = *(v14 + 24);
  v53.i32[0] = *(v14 + 36);
  *v54.i32 = vmuls_lane_f32(*(v14 + 32), *&v50.f64[0], 1);
  v55 = vaddq_f32(v63, vmulq_laneq_f32(v49, v66, 3));
  v67 = v55;
  v55.n128_f32[0] = *&v52 + *&v51;
  *v50.f64 = *v53.i32 + (*v54.i32 + (*v50.f64 * *(v14 + 28)));
  v55.n128_u32[1] = LODWORD(v50.f64[0]);
  *v57.i64 = CI::BitmapSampler::read(*(v14 + 8), v55, v50, v51, v52, v63, v54, v53, v56);
  *&result = vaddq_f32(v67, vmulq_n_f32(v57, *v64.i32)).u64[0];
  return result;
}

double CI::sw_convolution3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v10 = *(v4 + 64);
  v11 = *(v4 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = a4 + 80 * v5;
  v48 = *v9;
  v44 = *v13;
  DC = CI::getDC(a1);
  v16 = v44;
  v17 = vdupq_lane_s32(*v44.i8, 1);
  v18.f64[0] = *DC;
  v46 = v18;
  v19 = vextq_s8(v16, v16, 8uLL);
  v42 = v17;
  v45 = v19;
  v19.n128_u64[0] = vsub_f32(*DC, v19.n128_u64[0]);
  v16.i32[0] = *(v14 + 24);
  v20.i32[0] = *(v14 + 36);
  *v21.i32 = vmuls_lane_f32(*(v14 + 32), v19.n128_u64[0], 1);
  *v17.i32 = *v21.i32 + (v19.n128_f32[0] * *(v14 + 28));
  v19.n128_f32[0] = *v16.i32 + (vmuls_lane_f32(*(v14 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v14 + 16)));
  *v18.f64 = *v20.i32 + *v17.i32;
  v19.n128_f32[1] = *v20.i32 + *v17.i32;
  *v24.i64 = CI::BitmapSampler::read(*(v14 + 8), v19, v18, *v16.i64, *v17.i64, v21, v20, v22, v23);
  v25 = v42;
  v26 = vaddq_f32(v42, vmulq_lane_f32(v24, *v48.f32, 1));
  v43 = v26;
  LODWORD(v27) = *(v14 + 28);
  v26.n128_f32[0] = *(v14 + 24) + (vmuls_lane_f32(*(v14 + 20), *v46.i8, 1) + (*v46.i32 * *(v14 + 16)));
  LODWORD(v28) = *(v14 + 36);
  *v25.f64 = *&v28 + (vmuls_lane_f32(*(v14 + 32), *v46.i8, 1) + (*v46.i32 * *&v27));
  v26.n128_u32[1] = LODWORD(v25.f64[0]);
  *v32.i64 = CI::BitmapSampler::read(*(v14 + 8), v26, v25, v27, v28, v46, v29, v30, v31);
  *&v33.f64[1] = v45.n128_u64[1];
  HIDWORD(v34) = v46.i32[1];
  *&v33.f64[0] = vadd_f32(v45.n128_u64[0], *v46.i8);
  *&v34 = vmuls_lane_f32(*(v14 + 20), *&v33.f64[0], 1) + (*v33.f64 * *(v14 + 16));
  LODWORD(v35) = *(v14 + 24);
  v36.i32[0] = *(v14 + 36);
  *v37.i32 = vmuls_lane_f32(*(v14 + 32), *&v33.f64[0], 1);
  v38 = vaddq_f32(v43, vmulq_laneq_f32(v32, v48, 2));
  v47 = v38;
  v38.n128_f32[0] = *&v35 + *&v34;
  *v33.f64 = *v36.i32 + (*v37.i32 + (*v33.f64 * *(v14 + 28)));
  v38.n128_u32[1] = LODWORD(v33.f64[0]);
  *v40.i64 = CI::BitmapSampler::read(*(v14 + 8), v38, v33, v34, v35, v43, v37, v36, v39);
  *&result = vaddq_f32(v47, vmulq_laneq_f32(v40, v48, 3)).u64[0];
  return result;
}

double CI::sw_convolutionrgb5(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v10 = *(v4 + 64);
  v11 = *(v4 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = a4 + 80 * v5;
  v62 = *v9;
  v59 = *v13;
  DC = CI::getDC(a1);
  *v16.i8 = *DC;
  v63 = v16;
  v17 = vdupq_lane_s32(*v59.i8, 1);
  v56 = v17;
  v17.n128_f32[0] = *(v14 + 24) + (vmuls_lane_f32(*(v14 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v14 + 16)));
  LODWORD(v18) = *(v14 + 36);
  v60 = vextq_s8(v59, v59, 8uLL).u64[0];
  *v19.f64 = *&v18 + (vmuls_lane_f32(*(v14 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v14 + 28)));
  v17.n128_u32[1] = LODWORD(v19.f64[0]);
  v22.n128_f64[0] = CI::BitmapSampler::read(*(v14 + 8), v17, v19, *&v60, v18, v59, v16, v20, v21);
  v58 = v22;
  v23 = vadd_f32(v60, v60);
  v22.n128_u64[1] = v63.u64[1];
  v22.n128_u64[0] = vsub_f32(*v63.i8, v23);
  LODWORD(v24) = *(v14 + 24);
  v25.i32[0] = *(v14 + 36);
  *v26.i32 = vmuls_lane_f32(*(v14 + 32), v22.n128_u64[0], 1);
  *&v27 = *v26.i32 + (v22.n128_f32[0] * *(v14 + 28));
  v22.n128_f32[0] = *&v24 + (vmuls_lane_f32(*(v14 + 20), v22.n128_u64[0], 1) + (v22.n128_f32[0] * *(v14 + 16)));
  *v28.f64 = *v25.i32 + *&v27;
  v22.n128_f32[1] = *v25.i32 + *&v27;
  *v31.i64 = CI::BitmapSampler::read(*(v14 + 8), v22, v28, v24, v27, v26, v25, v29, v30);
  *&v32.f64[1] = v63.i64[1];
  HIDWORD(v33) = v60.i32[1];
  *&v32.f64[0] = vsub_f32(*v63.i8, v60);
  *&v33 = vmuls_lane_f32(*(v14 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v14 + 16));
  LODWORD(v34) = *(v14 + 24);
  v35.i32[0] = *(v14 + 36);
  *v36.i32 = vmuls_lane_f32(*(v14 + 32), *&v32.f64[0], 1);
  v37 = v56;
  v38 = vaddq_f32(v56, vmulq_n_f32(v31, v62.f32[0]));
  v57 = v38;
  v38.n128_f32[0] = *&v34 + *&v33;
  *v32.f64 = *v35.i32 + (*v36.i32 + (*v32.f64 * *(v14 + 28)));
  v38.n128_u32[1] = LODWORD(v32.f64[0]);
  *v40.i64 = CI::BitmapSampler::read(*(v14 + 8), v38, v32, v33, v34, v37, v36, v35, v39);
  *&v41.f64[1] = v63.i64[1];
  HIDWORD(v42) = v60.i32[1];
  *&v41.f64[0] = vadd_f32(v60, *v63.i8);
  *&v42 = vmuls_lane_f32(*(v14 + 20), *&v41.f64[0], 1) + (*v41.f64 * *(v14 + 16));
  LODWORD(v43) = *(v14 + 24);
  v44.i32[0] = *(v14 + 36);
  v45 = vmulq_laneq_f32(v58, v62, 2);
  v46 = vaddq_f32(v45, vaddq_f32(v57, vmulq_lane_f32(v40, *v62.f32, 1)));
  v61 = v46;
  v46.n128_f32[0] = *&v43 + *&v42;
  *v41.f64 = *v44.i32 + (vmuls_lane_f32(*(v14 + 32), *&v41.f64[0], 1) + (*v41.f64 * *(v14 + 28)));
  v46.n128_u32[1] = LODWORD(v41.f64[0]);
  *v47.i64 = CI::BitmapSampler::read(*(v14 + 8), v46, v41, v42, v43, v45, v62, v44, v57);
  *&v48.f64[1] = v63.i64[1];
  *&v48.f64[0] = vadd_f32(v23, *v63.i8);
  *&v49 = vmuls_lane_f32(*(v14 + 20), *&v48.f64[0], 1) + (*v48.f64 * *(v14 + 16));
  LODWORD(v50) = *(v14 + 24);
  v51.i32[0] = *(v14 + 36);
  v52 = vaddq_f32(v61, vmulq_laneq_f32(v47, v62, 3));
  v64 = v52;
  v52.n128_f32[0] = *&v50 + *&v49;
  *v48.f64 = *v51.i32 + (vmuls_lane_f32(*(v14 + 32), *&v48.f64[0], 1) + (*v48.f64 * *(v14 + 28)));
  v52.n128_u32[1] = LODWORD(v48.f64[0]);
  *v54.i64 = CI::BitmapSampler::read(*(v14 + 8), v52, v48, v49, v50, v61, v62, v51, v53);
  *&result = vaddq_f32(v64, vmulq_n_f32(v54, *v59.i32)).u64[0];
  return result;
}

double CI::sw_convolutionrgb3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v10 = *(v4 + 64);
  v11 = *(v4 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (v10 == 5)
  {
    v13 = v12;
  }

  v14 = a4 + 80 * v5;
  v46 = *v9;
  v44 = *v13;
  DC = CI::getDC(a1);
  *v16.i8 = *DC;
  v17 = vdupq_lane_s32(*v44.i8, 1);
  v40 = v17;
  v17.n128_f32[0] = *(v14 + 24) + (vmuls_lane_f32(*(v14 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v14 + 16)));
  LODWORD(v18) = *(v14 + 36);
  v41 = vextq_s8(v44, v44, 8uLL);
  v42 = v16;
  *v19.f64 = *&v18 + (vmuls_lane_f32(*(v14 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v14 + 28)));
  v17.n128_u32[1] = LODWORD(v19.f64[0]);
  v22.n128_f64[0] = CI::BitmapSampler::read(*(v14 + 8), v17, v19, *v41.i64, v18, v16, v44, v20, v21);
  v45 = v22;
  v23 = v41;
  v22.n128_u64[1] = v42.u64[1];
  v22.n128_u64[0] = vsub_f32(*v42.i8, *v41.i8);
  LODWORD(v24) = *(v14 + 24);
  v25.i32[0] = *(v14 + 36);
  *v26.i32 = vmuls_lane_f32(*(v14 + 32), v22.n128_u64[0], 1);
  *&v27 = *v26.i32 + (v22.n128_f32[0] * *(v14 + 28));
  v22.n128_f32[0] = *&v24 + (vmuls_lane_f32(*(v14 + 20), v22.n128_u64[0], 1) + (v22.n128_f32[0] * *(v14 + 16)));
  *v23.f64 = *v25.i32 + *&v27;
  v22.n128_f32[1] = *v25.i32 + *&v27;
  *v30.i64 = CI::BitmapSampler::read(*(v14 + 8), v22, v23, v24, v27, v26, v25, v28, v29);
  HIDWORD(v32) = v41.i32[1];
  *&v31.f64[1] = v42.i64[1];
  *&v31.f64[0] = vadd_f32(*v41.i8, *v42.i8);
  *&v32 = vmuls_lane_f32(*(v14 + 20), *&v31.f64[0], 1) + (*v31.f64 * *(v14 + 16));
  LODWORD(v33) = *(v14 + 24);
  v34.i32[0] = *(v14 + 36);
  v35 = vmulq_laneq_f32(v45, v46, 2);
  v36 = vaddq_f32(v35, vaddq_f32(v40, vmulq_lane_f32(v30, *v46.f32, 1)));
  v43 = v36;
  v36.n128_f32[0] = *&v33 + *&v32;
  *v31.f64 = *v34.i32 + (vmuls_lane_f32(*(v14 + 32), *&v31.f64[0], 1) + (*v31.f64 * *(v14 + 28)));
  v36.n128_u32[1] = LODWORD(v31.f64[0]);
  *v38.i64 = CI::BitmapSampler::read(*(v14 + 8), v36, v31, v32, v33, v35, v46, v34, v37);
  *&result = vaddq_f32(v43, vmulq_laneq_f32(v38, v46, 3)).u64[0];
  return result;
}

double CI::sw_convolutionrgb5x5(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v14 = *(v4 + 80);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (*(v4 + 88) == 5)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v4 + 104);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (*(v4 + 112) == 5)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v4 + 128);
  v23 = (a3 + 16 * v22);
  v24 = (a2 + (v22 << 6));
  if (*(v4 + 136) == 5)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v4 + 152);
  v27 = (a3 + 16 * v26);
  v28 = (a2 + (v26 << 6));
  if (*(v4 + 160) == 5)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v30 = *(v4 + 184);
  v31 = *(v4 + 176);
  v32 = (a3 + 16 * v31);
  v33 = (a2 + (v31 << 6));
  if (v30 == 5)
  {
    v33 = v32;
  }

  v34 = a4 + 80 * v5;
  v256 = *v9;
  v257 = *v13;
  v262 = *v17;
  v266 = *v21;
  v273 = *v25;
  v277 = *v29;
  v280 = *v33;
  DC = CI::getDC(a1);
  v36 = v280;
  v37 = vdupq_lane_s32(v280.n128_u64[0], 1);
  v247 = v37;
  *v38.i8 = *DC;
  v278 = vextq_s8(v36, v36, 8uLL);
  v36.n128_f32[0] = *(v34 + 24) + (vmuls_lane_f32(*(v34 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v34 + 16)));
  LODWORD(v39) = *(v34 + 36);
  *&v40.f64[0] = vadd_f32(*v278.i8, *v278.i8);
  v281 = v40;
  v282 = v38;
  *v37.f64 = *&v39 + (vmuls_lane_f32(*(v34 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *(v34 + 28)));
  v36.n128_u32[1] = LODWORD(v37.f64[0]);
  *v43.i64 = CI::BitmapSampler::read(*(v34 + 8), v36, v37, v40.f64[0], v39, v38, v278, v41, v42);
  v251 = v43;
  v44.n128_f32[0] = -*v281.f64;
  v272 = v44;
  v45 = v44;
  v45.n128_f32[1] = -*(v281.f64 + 1);
  v46 = v282;
  v45.n128_u64[0] = vadd_f32(*&v282.f64[0], v45.n128_u64[0]);
  LODWORD(v47) = *(v34 + 24);
  v48.i32[0] = *(v34 + 36);
  *v49.i32 = vmuls_lane_f32(*(v34 + 32), v45.n128_u64[0], 1);
  *&v50 = *v49.i32 + (v45.n128_f32[0] * *(v34 + 28));
  v45.n128_f32[0] = *&v47 + (vmuls_lane_f32(*(v34 + 20), v45.n128_u64[0], 1) + (v45.n128_f32[0] * *(v34 + 16)));
  *v46.f64 = *v48.i32 + *&v50;
  v45.n128_f32[1] = *v48.i32 + *&v50;
  *v53.i64 = CI::BitmapSampler::read(*(v34 + 8), v45, v46, v47, v50, v49, v48, v51, v52);
  v54 = v280;
  *v54.f64 = -v280.n128_f32[2];
  v271 = v54;
  *(v54.f64 + 1) = -*(v281.f64 + 1);
  HIDWORD(v55) = HIDWORD(v282.f64[0]);
  *&v54.f64[0] = vadd_f32(*&v282.f64[0], *&v54.f64[0]);
  *&v55 = vmuls_lane_f32(*(v34 + 20), *&v54.f64[0], 1) + (*v54.f64 * *(v34 + 16));
  LODWORD(v56) = *(v34 + 24);
  v57.i32[0] = *(v34 + 36);
  *v58.i32 = vmuls_lane_f32(*(v34 + 32), *&v54.f64[0], 1);
  v59 = v247;
  v60 = vaddq_f32(v247, vmulq_n_f32(v53, v256.f32[0]));
  v248 = v60;
  v60.n128_f32[0] = *&v56 + *&v55;
  *v54.f64 = *v57.i32 + (*v58.i32 + (*v54.f64 * *(v34 + 28)));
  v60.n128_u32[1] = LODWORD(v54.f64[0]);
  *v62.i64 = CI::BitmapSampler::read(*(v34 + 8), v60, v54, v55, v56, v59, v58, v57, v61);
  v63.i32[0] = 0;
  v63.f32[1] = -*(v281.f64 + 1);
  HIDWORD(v64) = HIDWORD(v282.f64[0]);
  *&v65.f64[0] = vadd_f32(*&v282.f64[0], v63);
  *&v64 = vmuls_lane_f32(*(v34 + 20), *&v65.f64[0], 1) + (*v65.f64 * *(v34 + 16));
  LODWORD(v66) = *(v34 + 24);
  v67.i32[0] = *(v34 + 36);
  *v68.i32 = vmuls_lane_f32(*(v34 + 32), *&v65.f64[0], 1);
  v69 = v248;
  v70 = vaddq_f32(v248, vmulq_lane_f32(v62, *v256.f32, 1));
  v249 = v70;
  v70.n128_f32[0] = *&v66 + *&v64;
  *v65.f64 = *v67.i32 + (*v68.i32 + (*v65.f64 * *(v34 + 28)));
  v70.n128_u32[1] = LODWORD(v65.f64[0]);
  *v72.i64 = CI::BitmapSampler::read(*(v34 + 8), v70, v65, v64, v66, v69, v68, v67, v71);
  v73 = v278;
  *(v73.f64 + 1) = -*(v281.f64 + 1);
  HIDWORD(v74) = HIDWORD(v282.f64[0]);
  *&v73.f64[0] = vadd_f32(*&v282.f64[0], *&v73.f64[0]);
  *&v74 = vmuls_lane_f32(*(v34 + 20), *&v73.f64[0], 1) + (*v73.f64 * *(v34 + 16));
  LODWORD(v75) = *(v34 + 24);
  v76.i32[0] = *(v34 + 36);
  *v77.i32 = vmuls_lane_f32(*(v34 + 32), *&v73.f64[0], 1);
  v78 = v249;
  v79 = vaddq_f32(v249, vmulq_laneq_f32(v72, v256, 2));
  v250 = v79;
  v79.n128_f32[0] = *&v75 + *&v74;
  *v73.f64 = *v76.i32 + (*v77.i32 + (*v73.f64 * *(v34 + 28)));
  v79.n128_u32[1] = LODWORD(v73.f64[0]);
  *v81.i64 = CI::BitmapSampler::read(*(v34 + 8), v79, v73, v74, v75, v78, v77, v76, v80);
  v82 = v281;
  *(v82.f64 + 1) = -*(v281.f64 + 1);
  HIDWORD(v83) = HIDWORD(v282.f64[0]);
  *&v82.f64[0] = vadd_f32(*&v282.f64[0], *&v82.f64[0]);
  *&v83 = vmuls_lane_f32(*(v34 + 20), *&v82.f64[0], 1) + (*v82.f64 * *(v34 + 16));
  LODWORD(v84) = *(v34 + 24);
  v85.i32[0] = *(v34 + 36);
  *v86.i32 = vmuls_lane_f32(*(v34 + 32), *&v82.f64[0], 1);
  v87 = vaddq_f32(v250, vmulq_laneq_f32(v81, v256, 3));
  v252 = v87;
  v87.n128_f32[0] = *&v84 + *&v83;
  *v82.f64 = *v85.i32 + (*v86.i32 + (*v82.f64 * *(v34 + 28)));
  v87.n128_u32[1] = LODWORD(v82.f64[0]);
  *v89.i64 = CI::BitmapSampler::read(*(v34 + 8), v87, v82, v83, v84, v250, v86, v85, v88);
  v90 = v272;
  *(v90.f64 + 1) = -v280.n128_f32[3];
  HIDWORD(v91) = HIDWORD(v282.f64[0]);
  *&v90.f64[0] = vadd_f32(*&v282.f64[0], *&v90.f64[0]);
  *&v91 = vmuls_lane_f32(*(v34 + 20), *&v90.f64[0], 1) + (*v90.f64 * *(v34 + 16));
  LODWORD(v92) = *(v34 + 24);
  v93.i32[0] = *(v34 + 36);
  *v94.i32 = vmuls_lane_f32(*(v34 + 32), *&v90.f64[0], 1);
  v95 = v252;
  v96 = vaddq_f32(v252, vmulq_n_f32(v89, v257.f32[0]));
  v253 = v96;
  v96.n128_f32[0] = *&v92 + *&v91;
  *v90.f64 = *v93.i32 + (*v94.i32 + (*v90.f64 * *(v34 + 28)));
  v96.n128_u32[1] = LODWORD(v90.f64[0]);
  *v98.i64 = CI::BitmapSampler::read(*(v34 + 8), v96, v90, v91, v92, v95, v94, v93, v97);
  v99 = v271;
  *(v99.f64 + 1) = -v280.n128_f32[3];
  HIDWORD(v100) = HIDWORD(v282.f64[0]);
  *&v99.f64[0] = vadd_f32(*&v282.f64[0], *&v99.f64[0]);
  *&v100 = vmuls_lane_f32(*(v34 + 20), *&v99.f64[0], 1) + (*v99.f64 * *(v34 + 16));
  LODWORD(v101) = *(v34 + 24);
  v102.i32[0] = *(v34 + 36);
  *v103.i32 = vmuls_lane_f32(*(v34 + 32), *&v99.f64[0], 1);
  v104 = v253;
  v105 = vaddq_f32(v253, vmulq_lane_f32(v98, *v257.f32, 1));
  v254 = v105;
  v105.n128_f32[0] = *&v101 + *&v100;
  *v99.f64 = *v102.i32 + (*v103.i32 + (*v99.f64 * *(v34 + 28)));
  v105.n128_u32[1] = LODWORD(v99.f64[0]);
  *v107.i64 = CI::BitmapSampler::read(*(v34 + 8), v105, v99, v100, v101, v104, v103, v102, v106);
  LODWORD(v108) = 0;
  *(&v108 + 1) = -v280.n128_f32[3];
  v109.f64[1] = v282.f64[1];
  *&v109.f64[0] = vadd_f32(*&v108, *&v282.f64[0]);
  *&v108 = vmuls_lane_f32(*(v34 + 20), *&v109.f64[0], 1) + (*v109.f64 * *(v34 + 16));
  LODWORD(v110) = *(v34 + 24);
  v111.i32[0] = *(v34 + 36);
  *v112.i32 = vmuls_lane_f32(*(v34 + 32), *&v109.f64[0], 1);
  v113 = v254;
  v114 = vaddq_f32(v254, vmulq_laneq_f32(v107, v257, 2));
  v255 = v114;
  v114.n128_f32[0] = *&v110 + *&v108;
  *v109.f64 = *v111.i32 + (*v112.i32 + (*v109.f64 * *(v34 + 28)));
  v114.n128_u32[1] = LODWORD(v109.f64[0]);
  *v116.i64 = CI::BitmapSampler::read(*(v34 + 8), v114, v109, v108, v110, v113, v112, v111, v115);
  v117 = v278;
  *(v117.f64 + 1) = -v280.n128_f32[3];
  HIDWORD(v118) = HIDWORD(v282.f64[0]);
  *&v117.f64[0] = vadd_f32(*&v117.f64[0], *&v282.f64[0]);
  *&v118 = vmuls_lane_f32(*(v34 + 20), *&v117.f64[0], 1) + (*v117.f64 * *(v34 + 16));
  LODWORD(v119) = *(v34 + 24);
  v120.i32[0] = *(v34 + 36);
  *v121.i32 = vmuls_lane_f32(*(v34 + 32), *&v117.f64[0], 1);
  v122 = vaddq_f32(v255, vmulq_laneq_f32(v116, v257, 3));
  v258 = v122;
  v122.n128_f32[0] = *&v119 + *&v118;
  *v117.f64 = *v120.i32 + (*v121.i32 + (*v117.f64 * *(v34 + 28)));
  v122.n128_u32[1] = LODWORD(v117.f64[0]);
  *v124.i64 = CI::BitmapSampler::read(*(v34 + 8), v122, v117, v118, v119, v255, v121, v120, v123);
  v125 = v281;
  *(v125.f64 + 1) = -v280.n128_f32[3];
  HIDWORD(v126) = HIDWORD(v282.f64[0]);
  *&v125.f64[0] = vadd_f32(*&v282.f64[0], *&v125.f64[0]);
  *&v126 = vmuls_lane_f32(*(v34 + 20), *&v125.f64[0], 1) + (*v125.f64 * *(v34 + 16));
  LODWORD(v127) = *(v34 + 24);
  v128.i32[0] = *(v34 + 36);
  v129 = v258;
  v130 = vaddq_f32(v258, vmulq_n_f32(v124, v262.f32[0]));
  v259 = v130;
  v130.n128_f32[0] = *&v127 + *&v126;
  *v125.f64 = *v128.i32 + (vmuls_lane_f32(*(v34 + 32), *&v125.f64[0], 1) + (*v125.f64 * *(v34 + 28)));
  v130.n128_u32[1] = LODWORD(v125.f64[0]);
  *v132.i64 = CI::BitmapSampler::read(*(v34 + 8), v130, v125, v126, v127, v129, v262, v128, v131);
  v133.f64[1] = v272.f64[1];
  HIDWORD(v134) = HIDWORD(v282.f64[0]);
  *&v133.f64[0] = vadd_f32(*&v282.f64[0], LODWORD(v272.f64[0]));
  *&v134 = vmuls_lane_f32(*(v34 + 20), *&v133.f64[0], 1) + (*v133.f64 * *(v34 + 16));
  LODWORD(v135) = *(v34 + 24);
  v136.i32[0] = *(v34 + 36);
  v137 = v259;
  v138 = vaddq_f32(v259, vmulq_lane_f32(v132, *v262.f32, 1));
  v260 = v138;
  v138.n128_f32[0] = *&v135 + *&v134;
  *v133.f64 = *v136.i32 + (vmuls_lane_f32(*(v34 + 32), *&v133.f64[0], 1) + (*v133.f64 * *(v34 + 28)));
  v138.n128_u32[1] = LODWORD(v133.f64[0]);
  *v140.i64 = CI::BitmapSampler::read(*(v34 + 8), v138, v133, v134, v135, v137, v262, v136, v139);
  v141.f64[1] = v271.f64[1];
  HIDWORD(v142) = HIDWORD(v282.f64[0]);
  *&v141.f64[0] = vadd_f32(*&v282.f64[0], LODWORD(v271.f64[0]));
  *&v142 = vmuls_lane_f32(*(v34 + 20), *&v141.f64[0], 1) + (*v141.f64 * *(v34 + 16));
  LODWORD(v143) = *(v34 + 24);
  v144.i32[0] = *(v34 + 36);
  v145 = v260;
  v146 = vaddq_f32(v260, vmulq_laneq_f32(v140, v262, 2));
  v261 = v146;
  v146.n128_f32[0] = *&v143 + *&v142;
  *v141.f64 = *v144.i32 + (vmuls_lane_f32(*(v34 + 32), *&v141.f64[0], 1) + (*v141.f64 * *(v34 + 28)));
  v146.n128_u32[1] = LODWORD(v141.f64[0]);
  *v148.i64 = CI::BitmapSampler::read(*(v34 + 8), v146, v141, v142, v143, v145, v262, v144, v147);
  *&v149.f64[1] = v278.i64[1];
  HIDWORD(v150) = HIDWORD(v282.f64[0]);
  *&v149.f64[0] = vadd_f32(v278.u32[0], *&v282.f64[0]);
  *&v150 = vmuls_lane_f32(*(v34 + 20), *&v149.f64[0], 1) + (*v149.f64 * *(v34 + 16));
  LODWORD(v151) = *(v34 + 24);
  v152.i32[0] = *(v34 + 36);
  v153 = vmulq_n_f32(v251, v266.f32[0]);
  v154 = vaddq_f32(v153, vaddq_f32(v261, vmulq_laneq_f32(v148, v262, 3)));
  v263 = v154;
  v154.n128_f32[0] = *&v151 + *&v150;
  *v149.f64 = *v152.i32 + (vmuls_lane_f32(*(v34 + 32), *&v149.f64[0], 1) + (*v149.f64 * *(v34 + 28)));
  v154.n128_u32[1] = LODWORD(v149.f64[0]);
  *v156.i64 = CI::BitmapSampler::read(*(v34 + 8), v154, v149, v150, v151, v153, v266, v152, v155);
  v157.f64[1] = v281.f64[1];
  HIDWORD(v158) = HIDWORD(v282.f64[0]);
  *&v157.f64[0] = vadd_f32(*&v282.f64[0], LODWORD(v281.f64[0]));
  *&v158 = vmuls_lane_f32(*(v34 + 20), *&v157.f64[0], 1) + (*v157.f64 * *(v34 + 16));
  LODWORD(v159) = *(v34 + 24);
  v160.i32[0] = *(v34 + 36);
  v161 = v263;
  v162 = vaddq_f32(v263, vmulq_lane_f32(v156, *v266.f32, 1));
  v264 = v162;
  v162.n128_f32[0] = *&v159 + *&v158;
  *v157.f64 = *v160.i32 + (vmuls_lane_f32(*(v34 + 32), *&v157.f64[0], 1) + (*v157.f64 * *(v34 + 28)));
  v162.n128_u32[1] = LODWORD(v157.f64[0]);
  *v164.i64 = CI::BitmapSampler::read(*(v34 + 8), v162, v157, v158, v159, v161, v266, v160, v163);
  v165 = v272;
  HIDWORD(v165.f64[0]) = v280.n128_u32[3];
  HIDWORD(v166) = HIDWORD(v282.f64[0]);
  *&v165.f64[0] = vadd_f32(*&v282.f64[0], *&v165.f64[0]);
  *&v166 = vmuls_lane_f32(*(v34 + 20), *&v165.f64[0], 1) + (*v165.f64 * *(v34 + 16));
  LODWORD(v167) = *(v34 + 24);
  v168.i32[0] = *(v34 + 36);
  v169 = v264;
  v170 = vaddq_f32(v264, vmulq_laneq_f32(v164, v266, 2));
  v265 = v170;
  v170.n128_f32[0] = *&v167 + *&v166;
  *v165.f64 = *v168.i32 + (vmuls_lane_f32(*(v34 + 32), *&v165.f64[0], 1) + (*v165.f64 * *(v34 + 28)));
  v170.n128_u32[1] = LODWORD(v165.f64[0]);
  *v172.i64 = CI::BitmapSampler::read(*(v34 + 8), v170, v165, v166, v167, v169, v266, v168, v171);
  v173 = v271;
  HIDWORD(v173.f64[0]) = v280.n128_u32[3];
  HIDWORD(v174) = HIDWORD(v282.f64[0]);
  *&v173.f64[0] = vadd_f32(*&v282.f64[0], *&v173.f64[0]);
  *&v174 = vmuls_lane_f32(*(v34 + 20), *&v173.f64[0], 1) + (*v173.f64 * *(v34 + 16));
  LODWORD(v175) = *(v34 + 24);
  v176.i32[0] = *(v34 + 36);
  v177 = v266;
  v178 = vaddq_f32(v265, vmulq_laneq_f32(v172, v266, 3));
  v267 = v178;
  v178.n128_f32[0] = *&v175 + *&v174;
  *v173.f64 = *v176.i32 + (vmuls_lane_f32(*(v34 + 32), *&v173.f64[0], 1) + (*v173.f64 * *(v34 + 28)));
  v178.n128_u32[1] = LODWORD(v173.f64[0]);
  *v180.i64 = CI::BitmapSampler::read(*(v34 + 8), v178, v173, v174, v175, v265, v177, v176, v179);
  v181 = v278;
  LODWORD(v181.f64[0]) = 0;
  HIDWORD(v182) = HIDWORD(v282.f64[0]);
  *&v181.f64[0] = vadd_f32(*&v181.f64[0], *&v282.f64[0]);
  *&v182 = vmuls_lane_f32(*(v34 + 20), *&v181.f64[0], 1) + (*v181.f64 * *(v34 + 16));
  LODWORD(v183) = *(v34 + 24);
  v184.i32[0] = *(v34 + 36);
  *v185.i32 = vmuls_lane_f32(*(v34 + 32), *&v181.f64[0], 1);
  v186 = v267;
  v187 = vaddq_f32(v267, vmulq_n_f32(v180, v273.f32[0]));
  v268 = v187;
  v187.n128_f32[0] = *&v183 + *&v182;
  *v181.f64 = *v184.i32 + (*v185.i32 + (*v181.f64 * *(v34 + 28)));
  v187.n128_u32[1] = LODWORD(v181.f64[0]);
  *v189.i64 = CI::BitmapSampler::read(*(v34 + 8), v187, v181, v182, v183, v186, v185, v184, v188);
  v190 = v278;
  HIDWORD(v190.f64[0]) = v280.n128_u32[3];
  HIDWORD(v191) = HIDWORD(v282.f64[0]);
  *&v190.f64[0] = vadd_f32(*&v190.f64[0], *&v282.f64[0]);
  *&v191 = vmuls_lane_f32(*(v34 + 20), *&v190.f64[0], 1) + (*v190.f64 * *(v34 + 16));
  LODWORD(v192) = *(v34 + 24);
  v193.i32[0] = *(v34 + 36);
  *v194.i32 = vmuls_lane_f32(*(v34 + 32), *&v190.f64[0], 1);
  v195 = v268;
  v196 = vaddq_f32(v268, vmulq_lane_f32(v189, *v273.f32, 1));
  v269 = v196;
  v196.n128_f32[0] = *&v192 + *&v191;
  *v190.f64 = *v193.i32 + (*v194.i32 + (*v190.f64 * *(v34 + 28)));
  v196.n128_u32[1] = LODWORD(v190.f64[0]);
  *v198.i64 = CI::BitmapSampler::read(*(v34 + 8), v196, v190, v191, v192, v195, v194, v193, v197);
  v199 = v281;
  HIDWORD(v199.f64[0]) = v280.n128_u32[3];
  HIDWORD(v200) = HIDWORD(v282.f64[0]);
  *&v199.f64[0] = vadd_f32(*&v282.f64[0], *&v199.f64[0]);
  *&v200 = vmuls_lane_f32(*(v34 + 20), *&v199.f64[0], 1) + (*v199.f64 * *(v34 + 16));
  LODWORD(v201) = *(v34 + 24);
  v202.i32[0] = *(v34 + 36);
  *v203.i32 = vmuls_lane_f32(*(v34 + 32), *&v199.f64[0], 1);
  v204 = v269;
  v205 = vaddq_f32(v269, vmulq_laneq_f32(v198, v273, 2));
  v270 = v205;
  v205.n128_f32[0] = *&v201 + *&v200;
  *v199.f64 = *v202.i32 + (*v203.i32 + (*v199.f64 * *(v34 + 28)));
  v205.n128_u32[1] = LODWORD(v199.f64[0]);
  *v207.i64 = CI::BitmapSampler::read(*(v34 + 8), v205, v199, v200, v201, v204, v203, v202, v206);
  v208 = v281;
  LODWORD(v208.f64[0]) = LODWORD(v272.f64[0]);
  HIDWORD(v209) = HIDWORD(v282.f64[0]);
  *&v208.f64[0] = vadd_f32(*&v282.f64[0], *&v208.f64[0]);
  *&v209 = vmuls_lane_f32(*(v34 + 20), *&v208.f64[0], 1) + (*v208.f64 * *(v34 + 16));
  LODWORD(v210) = *(v34 + 24);
  v211.i32[0] = *(v34 + 36);
  *v212.i32 = vmuls_lane_f32(*(v34 + 32), *&v208.f64[0], 1);
  v213 = vaddq_f32(v270, vmulq_laneq_f32(v207, v273, 3));
  v274 = v213;
  v213.n128_f32[0] = *&v210 + *&v209;
  *v208.f64 = *v211.i32 + (*v212.i32 + (*v208.f64 * *(v34 + 28)));
  v213.n128_u32[1] = LODWORD(v208.f64[0]);
  *v215.i64 = CI::BitmapSampler::read(*(v34 + 8), v213, v208, v209, v210, v270, v212, v211, v214);
  v216 = v281;
  LODWORD(v216.f64[0]) = LODWORD(v271.f64[0]);
  HIDWORD(v217) = HIDWORD(v282.f64[0]);
  *&v216.f64[0] = vadd_f32(*&v282.f64[0], *&v216.f64[0]);
  *&v217 = vmuls_lane_f32(*(v34 + 20), *&v216.f64[0], 1) + (*v216.f64 * *(v34 + 16));
  LODWORD(v218) = *(v34 + 24);
  v219.i32[0] = *(v34 + 36);
  v220 = v274;
  v221 = vaddq_f32(v274, vmulq_n_f32(v215, v277.f32[0]));
  v275 = v221;
  v221.n128_f32[0] = *&v218 + *&v217;
  *v216.f64 = *v219.i32 + (vmuls_lane_f32(*(v34 + 32), *&v216.f64[0], 1) + (*v216.f64 * *(v34 + 28)));
  v221.n128_u32[1] = LODWORD(v216.f64[0]);
  *v223.i64 = CI::BitmapSampler::read(*(v34 + 8), v221, v216, v217, v218, v220, v277, v219, v222);
  v224 = v281;
  HIDWORD(v225) = HIDWORD(v282.f64[0]);
  LODWORD(v224.f64[0]) = 0;
  *&v224.f64[0] = vadd_f32(*&v282.f64[0], *&v224.f64[0]);
  *&v225 = vmuls_lane_f32(*(v34 + 20), *&v224.f64[0], 1) + (*v224.f64 * *(v34 + 16));
  LODWORD(v226) = *(v34 + 24);
  v227.i32[0] = *(v34 + 36);
  v228 = v275;
  v229 = vaddq_f32(v275, vmulq_lane_f32(v223, *v277.f32, 1));
  v276 = v229;
  v229.n128_f32[0] = *&v226 + *&v225;
  *v224.f64 = *v227.i32 + (vmuls_lane_f32(*(v34 + 32), *&v224.f64[0], 1) + (*v224.f64 * *(v34 + 28)));
  v229.n128_u32[1] = LODWORD(v224.f64[0]);
  *v231.i64 = CI::BitmapSampler::read(*(v34 + 8), v229, v224, v225, v226, v228, v277, v227, v230);
  v232 = COERCE_DOUBLE(__PAIR64__(HIDWORD(v281.f64[0]), v278.u32[0]));
  HIDWORD(v234) = HIDWORD(v281.f64[0]);
  v233.f64[1] = v282.f64[1];
  *&v233.f64[0] = vadd_f32(*&v282.f64[0], __PAIR64__(HIDWORD(v281.f64[0]), v278.u32[0]));
  *&v232 = vmuls_lane_f32(*(v34 + 20), *&v233.f64[0], 1) + (*v233.f64 * *(v34 + 16));
  LODWORD(v234) = *(v34 + 24);
  v235.i32[0] = *(v34 + 36);
  v236 = vaddq_f32(v276, vmulq_laneq_f32(v231, v277, 2));
  v279 = v236;
  v236.n128_f32[0] = *&v234 + *&v232;
  *v233.f64 = *v235.i32 + (vmuls_lane_f32(*(v34 + 32), *&v233.f64[0], 1) + (*v233.f64 * *(v34 + 28)));
  v236.n128_u32[1] = LODWORD(v233.f64[0]);
  *v238.i64 = CI::BitmapSampler::read(*(v34 + 8), v236, v233, v232, v234, v276, v277, v235, v237);
  HIDWORD(v240) = HIDWORD(v281.f64[0]);
  v239.f64[1] = v282.f64[1];
  *&v239.f64[0] = vadd_f32(*&v281.f64[0], *&v282.f64[0]);
  *&v240 = vmuls_lane_f32(*(v34 + 20), *&v239.f64[0], 1) + (*v239.f64 * *(v34 + 16));
  LODWORD(v241) = *(v34 + 24);
  v242.i32[0] = *(v34 + 36);
  v243 = vaddq_f32(v279, vmulq_laneq_f32(v238, v277, 3));
  v283 = v243;
  v243.n128_f32[0] = *&v241 + *&v240;
  *v239.f64 = *v242.i32 + (vmuls_lane_f32(*(v34 + 32), *&v239.f64[0], 1) + (*v239.f64 * *(v34 + 28)));
  v243.n128_u32[1] = LODWORD(v239.f64[0]);
  *v245.i64 = CI::BitmapSampler::read(*(v34 + 8), v243, v239, v240, v241, v279, v277, v242, v244);
  *&result = vaddq_f32(v283, vmulq_n_f32(v245, v280.n128_f32[0])).u64[0];
  return result;
}