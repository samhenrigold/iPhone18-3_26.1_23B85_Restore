int16x8_t *sub_29AB49984(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = (result + 2 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CC0), v13), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = (a3 + 4 * a2 - 32);
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CC0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CC0), v6), 0)));
      v7 = result + 1;
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3 - 1;
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > &v3[-1])
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int8x8_t *sub_29AB49A78(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = (result + a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = (result + 4);
      v12 = vdupq_n_s32(0x437F0000u);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v14, v12), v13), xmmword_29B6C2CA0), v12), 0));
        *v15.i8 = vqmovn_s32(v15);
        v11[-1].i32[1] = vqmovun_s16(v15).u32[0];
        v11 = (v11 + 4);
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = (a3 + 4 * a2 - 32);
    v5 = vdupq_n_s32(0x437F0000u);
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v5), v6), xmmword_29B6C2CA0), v5), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v5), v6), xmmword_29B6C2CA0), v5), 0))));
      v7 = result + 1;
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3 - 1;
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > &v3[-1])
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int8x8_t *sub_29AB49B78(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = (result + a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = (result + 4);
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x437F0000u);
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CA0), v13), 0));
        *v15.i8 = vqmovn_s32(v15);
        v11[-1].i32[1] = vqmovun_s16(v15).u32[0];
        v11 = (v11 + 4);
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = (a3 + 4 * a2 - 32);
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x437F0000u);
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CA0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CA0), v6), 0))));
      v7 = result + 1;
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3 - 1;
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > &v3[-1])
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB49C6C(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = (result + 2 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12 = vdupq_n_s32(0x477FFF00u);
      v13.i64[0] = 0x3F0000003F000000;
      v13.i64[1] = 0x3F0000003F000000;
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v14, v12), v13), xmmword_29B6C2CA0), v12), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = (a3 + 4 * a2 - 32);
    v5 = vdupq_n_s32(0x477FFF00u);
    v6.i64[0] = 0x3F0000003F000000;
    v6.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v5), v6), xmmword_29B6C2CA0), v5), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v5), v6), xmmword_29B6C2CA0), v5), 0)));
      v7 = result + 1;
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3 - 1;
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > &v3[-1])
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB49D6C(int16x8_t *result, int a2, float32x4_t *a3)
{
  v3 = (result + 2 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v11 = &result->i64[1];
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v14 = *a3++;
        *(v11++ - 1) = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CA0), v13), 0)));
      }

      while (v11 <= v3);
    }
  }

  else
  {
    v4 = (a3 + 4 * a2 - 32);
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CA0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CA0), v6), 0)));
      v7 = result + 1;
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3 - 1;
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > &v3[-1])
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int8x8_t *sub_29AB49E60(int8x8_t *result, int a2, float32x4_t *a3, double a4, float32x4_t a5, double a6, double a7, int32x4_t a8)
{
  v8 = (result + a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v17 = vdupq_n_s32(0x437F0000u);
      a5.i64[0] = 0x3F0000003F000000;
      a5.i64[1] = 0x3F0000003F000000;
      do
      {
        v18 = *a3++;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v18, v17), a5), xmmword_29B6C2CB0), v17), 0));
        *a8.i8 = vqmovn_s32(a8);
        *a8.i8 = vqmovun_s16(a8);
        v16 = (result + 4);
        result->i32[0] = a8.i32[0];
        v19 = &result[1] > v8;
        result = (result + 4);
      }

      while (!v19);
    }

    else
    {
      v16 = result;
    }

    if (v16 < v8)
    {
      v20 = vdupq_n_s32(0x437F0000u);
      a5.i32[0] = 1132396544;
      v21.i64[0] = 0x3F0000003F000000;
      v21.i64[1] = 0x3F0000003F000000;
      do
      {
        a8.i32[0] = a3->i32[1];
        v22 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(a8, a5), v21), 0), v20), 0));
        v16->i8[0] = v22.i8[0];
        v23 = a3->i32[0];
        a3 = (a3 + 8);
        v22.i32[0] = v23;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(v22, a5), v21), 0), v20), 0));
        v16->i8[1] = a8.i8[0];
        v16 = (v16 + 2);
      }

      while (v16 < v8);
    }
  }

  else
  {
    v9 = (a3 + 4 * a2 - 32);
    v10 = vdupq_n_s32(0x437F0000u);
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v10), v11), xmmword_29B6C2CB0), v10), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v10), v11), xmmword_29B6C2CB0), v10), 0))));
      v12 = result + 1;
      if (v12 == v8)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8 - 1;
      }

      if (v12 == v8)
      {
        v14 = a3 + 2;
      }

      else
      {
        v14 = v9;
      }

      if (v12 > &v8[-1])
      {
        a3 = v14;
      }

      else
      {
        v13 = v12;
        a3 += 2;
      }

      v15 = v12 == v8;
      result = v13;
    }

    while (!v15);
  }

  return result;
}

int8x8_t *sub_29AB49FD8(int8x8_t *result, int a2, float32x4_t *a3)
{
  v3 = (result + a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x437F0000u);
      do
      {
        v14 = *a3++;
        v15 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CB0), v13), 0));
        *v15.i8 = vqmovn_s32(v15);
        v11 = (result + 4);
        result->i32[0] = vqmovun_s16(v15).u32[0];
        v16 = &result[1] > v3;
        result = (result + 4);
      }

      while (!v16);
    }

    else
    {
      v11 = result;
    }

    for (; v11 < v3; v11 = (v11 + 2))
    {
      v17 = a3->f32[1] + 0.5;
      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      if (v17 > 255.0)
      {
        v17 = 255.0;
      }

      v11->i8[0] = v17;
      v18 = a3->f32[0];
      a3 = (a3 + 8);
      v19 = v18 + 0.5;
      if ((v18 + 0.5) < 0.0)
      {
        v19 = 0.0;
      }

      if (v19 > 255.0)
      {
        v19 = 255.0;
      }

      v11->i8[1] = v19;
    }
  }

  else
  {
    v4 = (a3 + 4 * a2 - 32);
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x437F0000u);
    do
    {
      *result = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CB0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CB0), v6), 0))));
      v7 = result + 1;
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3 - 1;
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > &v3[-1])
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

int16x8_t *sub_29AB4A13C(int16x8_t *result, int a2, float32x4_t *a3, float32x4_t a4, double a5, double a6, double a7, int32x4_t a8)
{
  v8 = (result + 2 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      a4 = vdupq_n_s32(0x477FFF00u);
      v17.i64[0] = 0x3F0000003F000000;
      v17.i64[1] = 0x3F0000003F000000;
      do
      {
        v18 = *a3++;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(v18, a4), v17), xmmword_29B6C2CB0), a4), 0));
        *a8.i8 = vqmovun_s32(a8);
        v16 = &result->u64[1];
        result->i64[0] = a8.i64[0];
        v19 = &result[1] > v8;
        result = (result + 8);
      }

      while (!v19);
    }

    else
    {
      v16 = result;
    }

    if (v16 < v8)
    {
      a4.i32[0] = 1199570688;
      v20.i64[0] = 0x3F0000003F000000;
      v20.i64[1] = 0x3F0000003F000000;
      v21 = vdupq_n_s32(0x477FFF00u);
      do
      {
        a8.i32[0] = a3->i32[1];
        v22 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(a8, a4), v20), 0), v21), 0));
        v16->i16[0] = v22.i16[0];
        v23 = a3->i32[0];
        a3 = (a3 + 8);
        v22.i32[0] = v23;
        a8 = vcvtq_s32_f32(vmaxq_f32(vminq_f32(vdupq_lane_s32(*&vaddq_f32(vmulq_f32(v22, a4), v20), 0), v21), 0));
        v16->i16[1] = a8.i16[0];
        v16 = (v16 + 4);
      }

      while (v16 < v8);
    }
  }

  else
  {
    v9 = (a3 + 4 * a2 - 32);
    v10 = vdupq_n_s32(0x477FFF00u);
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    do
    {
      *result = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(*a3, v10), v11), xmmword_29B6C2CB0), v10), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(vmulq_f32(a3[1], v10), v11), xmmword_29B6C2CB0), v10), 0)));
      v12 = result + 1;
      if (v12 == v8)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8 - 1;
      }

      if (v12 == v8)
      {
        v14 = a3 + 2;
      }

      else
      {
        v14 = v9;
      }

      if (v12 > &v8[-1])
      {
        a3 = v14;
      }

      else
      {
        v13 = v12;
        a3 += 2;
      }

      v15 = v12 == v8;
      result = v13;
    }

    while (!v15);
  }

  return result;
}

int16x4_t *sub_29AB4A2B4(int16x4_t *result, int a2, float32x4_t *a3)
{
  v3 = (result + 2 * a2);
  if (a2 <= 7)
  {
    if (a2 >= 4)
    {
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      v13 = vdupq_n_s32(0x477FFF00u);
      do
      {
        v14 = *a3++;
        v11 = result + 1;
        *result = vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(v14, v12), xmmword_29B6C2CB0), v13), 0)));
        v15 = &result[2] > v3;
        ++result;
      }

      while (!v15);
    }

    else
    {
      v11 = result;
    }

    for (; v11 < v3; v11 = (v11 + 4))
    {
      v17 = a3->f32[0];
      v16 = a3->f32[1];
      a3 = (a3 + 8);
      v18 = v16 + 0.5;
      if (v18 < 0.0)
      {
        v18 = 0.0;
      }

      if (v18 > 65535.0)
      {
        v18 = 65535.0;
      }

      v19 = v18;
      v20 = v17 + 0.5;
      if ((v17 + 0.5) < 0.0)
      {
        v20 = 0.0;
      }

      if (v20 > 65535.0)
      {
        v20 = 65535.0;
      }

      v11->i16[0] = v19;
      v11->i16[1] = v20;
    }
  }

  else
  {
    v4 = (a3 + 4 * a2 - 32);
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FFF00u);
    do
    {
      *result->i8 = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(*a3, v5), xmmword_29B6C2CB0), v6), 0))), vcvtq_s32_f32(vmaxq_f32(vminq_f32(vqtbl1q_s8(vaddq_f32(a3[1], v5), xmmword_29B6C2CB0), v6), 0)));
      v7 = result + 2;
      if (v7 == v3)
      {
        v8 = v7;
      }

      else
      {
        v8 = v3 - 2;
      }

      if (v7 == v3)
      {
        v9 = a3 + 2;
      }

      else
      {
        v9 = v4;
      }

      if (v7 > &v3[-2])
      {
        a3 = v9;
      }

      else
      {
        v8 = v7;
        a3 += 2;
      }

      v10 = v7 == v3;
      result = v8;
    }

    while (!v10);
  }

  return result;
}

_DWORD *sub_29AB4A410(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[124];
  v7 = result[125];
  v8 = byte_29B6C31DC[result[84]];
  v37 = result[22];
  v9 = result[46];
  if ((a2 & 0x80000000) != 0 || v9 <= a2)
  {
    result = (off_2A2071EB0[result[60]])(a2, v9);
    LODWORD(a2) = result;
  }

  v10 = v6 * v8;
  v38 = a2;
  v11 = *(v5 + 38) + v5[80] * a2;
  v12 = a3 - 4 * v5[92] * v7;
  for (i = 372; i < 0x181; i += 12)
  {
    v15 = v5[i / 4 + 3];
    v14 = v5[i / 4 + 4];
    if (v14 < v15)
    {
      break;
    }

    v16 = v14 + 1;
    v17 = (v16 - v15);
    v18 = v12 + 4 * v16 * v7;
    v19 = v5[i / 4 + 5];
    v20 = *(v5 + 43);
    if (v20)
    {
      v21 = v20(v18 - v17 * v10, v11, v17, v19, v38, *(v5 + 44));
    }

    else
    {
      v21 = v11 + v19 * v10;
    }

    v22 = (v17 * v6);
    result = (*(v5 + 53))(v18 - 4 * v22, v22, v21);
    v23 = *(v5 + 54);
    if (v23)
    {
      result = v23(v12 + 4 * v15 * v7, v22);
    }
  }

  if (v37 == 2)
  {
    v24 = v5[94];
    if (*(v5 + 47))
    {
      v25 = 0;
      v26 = v5 + 94;
      v27 = v5[8];
      v39 = v27;
      v40 = -v24;
      v28 = &v40;
      v29 = 1;
      do
      {
        v30 = v29;
        v31 = v26[v25];
        if (v31)
        {
          v32 = *v28;
          v33 = *v28 * v7;
          if (v32 < 0 || v32 >= v27)
          {
            v35 = v32 % v27 + v27;
            if (!(v32 % v27))
            {
              v35 = 0;
            }

            if (v32 >= 0)
            {
              v36 = v32 % v27;
            }

            else
            {
              v36 = v35;
            }

            v34 = v36 * v7;
          }

          else
          {
            v34 = v33;
          }

          result = sub_29AB402A4(v12 + 4 * v33, (v12 + 4 * v34), 4 * v31 * v7);
        }

        v29 = 0;
        v28 = &v39;
        v25 = 1;
      }

      while ((v30 & 1) != 0);
    }
  }

  return result;
}

unint64_t sub_29AB4A608(uint64_t a1, unint64_t a2, char *a3)
{
  v3 = *(a1 + 500);
  if (*(a1 + 68) == 6 && *(a1 + 40) == 1.0)
  {
    return sub_29AB402A4(a2, a3, 4 * v3 * *(a1 + 36));
  }

  else
  {
    return (*(a1 + 440))(a2, *(a1 + 36), &a3[-4 * v3 * *(a1 + 368)], *a1, *(a1 + 8), *(a1 + 92));
  }
}

uint64_t sub_29AB4A66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 36);
  v9 = (*(a1 + 496) * v8);
  v10 = *(a1 + 448);
  if (v10)
  {
    v10(a3, v9);
  }

  if (*(a1 + 360))
  {
    a2 = a3;
  }

  result = (*(a1 + 456))(a2, v9, a3);
  v12 = *(a1 + 360);
  if (v12)
  {
    v13 = *(a1 + 352);

    return v12(a2, v8, a4, v13);
  }

  return result;
}

float32x4_t *sub_29AB4A724(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v5 = *a3;
  v6 = *a2;
  if (*a2 >= 1.0 && v6 <= 1.0)
  {
    return sub_29AB402A4(result, v5, a4 - v5);
  }

  v7 = a4 - v5;
  if ((a4 - v5) >= 64)
  {
    do
    {
      v8 = vmulq_n_f32(v5[1], v6);
      v9 = vmulq_n_f32(v5[2], v6);
      v10 = vmulq_n_f32(v5[3], v6);
      *result = vmulq_n_f32(*v5, v6);
      result[1] = v8;
      result[2] = v9;
      result[3] = v10;
      result += 4;
      v5 += 4;
      v7 -= 64;
    }

    while (v7 > 63);
  }

  if (v7 >= 16)
  {
    v11 = a4 - v5;
    do
    {
      v12 = *v5++;
      *result++ = vmulq_n_f32(v12, v6);
      v11 -= 16;
    }

    while (v11 > 15);
  }

  while (v5 < a4)
  {
    v13 = v5->f32[0];
    v5 = (v5 + 4);
    result->f32[0] = v6 * v13;
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4A7D8(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 - *a3;
  if (v8 >= 64)
  {
    do
    {
      v9 = vaddq_f32(vmulq_n_f32(v4[1], v6), vmulq_n_f32(v5[1], v7));
      v10 = vaddq_f32(vmulq_n_f32(v4[2], v6), vmulq_n_f32(v5[2], v7));
      v11 = vaddq_f32(vmulq_n_f32(v4[3], v6), vmulq_n_f32(v5[3], v7));
      *result = vaddq_f32(vmulq_n_f32(*v4, v6), vmulq_n_f32(*v5, v7));
      result[1] = v9;
      result[2] = v10;
      result[3] = v11;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 -= 64;
    }

    while (v8 > 63);
  }

  if (v8 >= 16)
  {
    v12 = a4 - v4;
    do
    {
      v13 = *v4++;
      v14 = vmulq_n_f32(v13, v6);
      v15 = *v5++;
      *result++ = vaddq_f32(v14, vmulq_n_f32(v15, v7));
      v12 -= 16;
    }

    while (v12 > 15);
  }

  while (v4 < a4)
  {
    v16 = v4->f32[0];
    v4 = (v4 + 4);
    v17 = v16;
    v18 = v5->f32[0];
    v5 = (v5 + 4);
    result->f32[0] = (v6 * v17) + (v7 * v18);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4A8A4(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a2[2];
  v10 = a4 - *a3;
  if (v10 >= 64)
  {
    do
    {
      v11 = vaddq_f32(vaddq_f32(vmulq_n_f32(v4[1], v6), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v9));
      v12 = vaddq_f32(vaddq_f32(vmulq_n_f32(v4[2], v6), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v9));
      v13 = vaddq_f32(vaddq_f32(vmulq_n_f32(v4[3], v6), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v9));
      *result = vaddq_f32(vaddq_f32(vmulq_n_f32(*v4, v6), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v9));
      result[1] = v11;
      result[2] = v12;
      result[3] = v13;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v14 = a4 - v4;
    do
    {
      v15 = *v4++;
      v16 = vmulq_n_f32(v15, v6);
      v17 = *v5++;
      v18 = vaddq_f32(v16, vmulq_n_f32(v17, v7));
      v19 = *v8++;
      *result++ = vaddq_f32(v18, vmulq_n_f32(v19, v9));
      v14 -= 16;
    }

    while (v14 > 15);
  }

  while (v4 < a4)
  {
    v20 = v4->f32[0];
    v4 = (v4 + 4);
    v21 = v6 * v20;
    v22 = v5->f32[0];
    v5 = (v5 + 4);
    v23 = v7 * v22;
    v24 = v8->f32[0];
    v8 = (v8 + 4);
    result->f32[0] = (v21 + v23) + (v9 * v24);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4A9BC(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a4 - *a3;
  if (v12 >= 64)
  {
    do
    {
      v13 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[1], v6), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v10)), vmulq_n_f32(v9[1], v11));
      v14 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[2], v6), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v10)), vmulq_n_f32(v9[2], v11));
      v15 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[3], v6), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v10)), vmulq_n_f32(v9[3], v11));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*v4, v6), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v10)), vmulq_n_f32(*v9, v11));
      result[1] = v13;
      result[2] = v14;
      result[3] = v15;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v12 -= 64;
    }

    while (v12 > 63);
  }

  if (v12 >= 16)
  {
    v16 = a4 - v4;
    do
    {
      v17 = *v4++;
      v18 = vmulq_n_f32(v17, v6);
      v19 = *v5++;
      v20 = vaddq_f32(v18, vmulq_n_f32(v19, v7));
      v21 = *v8++;
      v22 = vaddq_f32(v20, vmulq_n_f32(v21, v10));
      v23 = *v9++;
      *result++ = vaddq_f32(v22, vmulq_n_f32(v23, v11));
      v16 -= 16;
    }

    while (v16 > 15);
  }

  while (v4 < a4)
  {
    v24 = v4->f32[0];
    v4 = (v4 + 4);
    v25 = v6 * v24;
    v26 = v5->f32[0];
    v5 = (v5 + 4);
    v27 = v25 + (v7 * v26);
    v28 = v8->f32[0];
    v8 = (v8 + 4);
    v29 = v10 * v28;
    v30 = v9->f32[0];
    v9 = (v9 + 4);
    result->f32[0] = (v27 + v29) + (v11 * v30);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4AB18(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a2[4];
  v14 = a4 - *a3;
  if (v14 >= 64)
  {
    do
    {
      v15 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[1], v6), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v10)), vmulq_n_f32(v9[1], v11)), vmulq_n_f32(v12[1], v13));
      v16 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[2], v6), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v10)), vmulq_n_f32(v9[2], v11)), vmulq_n_f32(v12[2], v13));
      v17 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v4[3], v6), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v10)), vmulq_n_f32(v9[3], v11)), vmulq_n_f32(v12[3], v13));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*v4, v6), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v10)), vmulq_n_f32(*v9, v11)), vmulq_n_f32(*v12, v13));
      result[1] = v15;
      result[2] = v16;
      result[3] = v17;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v12 += 4;
      v14 -= 64;
    }

    while (v14 > 63);
  }

  if (v14 >= 16)
  {
    v18 = a4 - v4;
    do
    {
      v19 = *v4++;
      v20 = vmulq_n_f32(v19, v6);
      v21 = *v5++;
      v22 = vaddq_f32(v20, vmulq_n_f32(v21, v7));
      v23 = *v8++;
      v24 = vaddq_f32(v22, vmulq_n_f32(v23, v10));
      v25 = *v9++;
      v26 = vaddq_f32(v24, vmulq_n_f32(v25, v11));
      v27 = *v12++;
      *result++ = vaddq_f32(v26, vmulq_n_f32(v27, v13));
      v18 -= 16;
    }

    while (v18 > 15);
  }

  while (v4 < a4)
  {
    v28 = v4->f32[0];
    v4 = (v4 + 4);
    v29 = v28;
    v30 = v5->f32[0];
    v5 = (v5 + 4);
    v31 = (v6 * v29) + (v7 * v30);
    v32 = v8->f32[0];
    v8 = (v8 + 4);
    v33 = v31 + (v10 * v32);
    v34 = v9->f32[0];
    v9 = (v9 + 4);
    v35 = v11 * v34;
    v36 = v12->f32[0];
    v12 = (v12 + 4);
    result->f32[0] = (v33 + v35) + (v13 * v36);
    result = (result + 4);
  }

  return result;
}

float *sub_29AB4ACC0(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a4 - *a3;
  if (v16 >= 64)
  {
    v17 = 0;
    do
    {
      v18 = &result[v17];
      v19 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v17 + 4], v6), vmulq_n_f32(*&v5[v17 + 4], v7)), vmulq_n_f32(*&v8[v17 + 4], v10)), vmulq_n_f32(*&v9[v17 + 4], v11)), vmulq_n_f32(*&v12[v17 + 4], v14)), vmulq_n_f32(*&v13[v17 + 4], v15));
      v20 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v17 + 8], v6), vmulq_n_f32(*&v5[v17 + 8], v7)), vmulq_n_f32(*&v8[v17 + 8], v10)), vmulq_n_f32(*&v9[v17 + 8], v11)), vmulq_n_f32(*&v12[v17 + 8], v14)), vmulq_n_f32(*&v13[v17 + 8], v15));
      v21 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v17 + 12], v6), vmulq_n_f32(*&v5[v17 + 12], v7)), vmulq_n_f32(*&v8[v17 + 12], v10)), vmulq_n_f32(*&v9[v17 + 12], v11)), vmulq_n_f32(*&v12[v17 + 12], v14)), vmulq_n_f32(*&v13[v17 + 12], v15));
      *v18 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v17], v6), vmulq_n_f32(*&v5[v17], v7)), vmulq_n_f32(*&v8[v17], v10)), vmulq_n_f32(*&v9[v17], v11)), vmulq_n_f32(*&v12[v17], v14)), vmulq_n_f32(*&v13[v17], v15));
      *(v18 + 1) = v19;
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      v17 += 16;
      v16 -= 64;
    }

    while (v16 > 63);
    result = (result + v17 * 4);
    v4 = (v4 + v17 * 4);
    v5 = (v5 + v17 * 4);
    v8 = (v8 + v17 * 4);
    v9 = (v9 + v17 * 4);
    v12 = (v12 + v17 * 4);
    v13 = (v13 + v17 * 4);
  }

  if (v16 >= 16)
  {
    v22 = 0;
    v23 = a4 - v4;
    do
    {
      *&result[v22] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v22], v6), vmulq_n_f32(*&v5[v22], v7)), vmulq_n_f32(*&v8[v22], v10)), vmulq_n_f32(*&v9[v22], v11)), vmulq_n_f32(*&v12[v22], v14)), vmulq_n_f32(*&v13[v22], v15));
      v22 += 4;
      v23 -= 16;
    }

    while (v23 > 15);
    result = (result + v22 * 4);
    v4 = (v4 + v22 * 4);
    v5 = (v5 + v22 * 4);
    v8 = (v8 + v22 * 4);
    v9 = (v9 + v22 * 4);
    v12 = (v12 + v22 * 4);
    v13 = (v13 + v22 * 4);
  }

  while (v4 < a4)
  {
    v24 = *v4++;
    v25 = v6 * v24;
    v26 = *v5++;
    v27 = v7 * v26;
    v28 = *v8++;
    v29 = (v25 + v27) + (v10 * v28);
    v30 = *v9++;
    v31 = v29 + (v11 * v30);
    v32 = *v12++;
    v33 = v14 * v32;
    v34 = *v13++;
    *result++ = (v31 + v33) + (v15 * v34);
  }

  return result;
}

float *sub_29AB4AEF8(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a3[6];
  v17 = a2[6];
  v18 = a4 - *a3;
  if (v18 >= 64)
  {
    v19 = 0;
    do
    {
      v20 = &result[v19];
      v21 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v19 + 4], v6), vmulq_n_f32(*&v5[v19 + 4], v7)), vmulq_n_f32(*&v8[v19 + 4], v10)), vmulq_n_f32(*&v9[v19 + 4], v11)), vmulq_n_f32(*&v12[v19 + 4], v14)), vmulq_n_f32(*&v13[v19 + 4], v15)), vmulq_n_f32(*&v16[v19 + 4], v17));
      v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v19 + 8], v6), vmulq_n_f32(*&v5[v19 + 8], v7)), vmulq_n_f32(*&v8[v19 + 8], v10)), vmulq_n_f32(*&v9[v19 + 8], v11)), vmulq_n_f32(*&v12[v19 + 8], v14)), vmulq_n_f32(*&v13[v19 + 8], v15)), vmulq_n_f32(*&v16[v19 + 8], v17));
      v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v19 + 12], v6), vmulq_n_f32(*&v5[v19 + 12], v7)), vmulq_n_f32(*&v8[v19 + 12], v10)), vmulq_n_f32(*&v9[v19 + 12], v11)), vmulq_n_f32(*&v12[v19 + 12], v14)), vmulq_n_f32(*&v13[v19 + 12], v15)), vmulq_n_f32(*&v16[v19 + 12], v17));
      *v20 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v19], v6), vmulq_n_f32(*&v5[v19], v7)), vmulq_n_f32(*&v8[v19], v10)), vmulq_n_f32(*&v9[v19], v11)), vmulq_n_f32(*&v12[v19], v14)), vmulq_n_f32(*&v13[v19], v15)), vmulq_n_f32(*&v16[v19], v17));
      *(v20 + 1) = v21;
      *(v20 + 2) = v22;
      *(v20 + 3) = v23;
      v19 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    result = (result + v19 * 4);
    v4 = (v4 + v19 * 4);
    v5 = (v5 + v19 * 4);
    v8 = (v8 + v19 * 4);
    v9 = (v9 + v19 * 4);
    v12 = (v12 + v19 * 4);
    v13 = (v13 + v19 * 4);
    v16 = (v16 + v19 * 4);
  }

  if (v18 >= 16)
  {
    v24 = 0;
    v25 = a4 - v4;
    do
    {
      *&result[v24] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v24], v6), vmulq_n_f32(*&v5[v24], v7)), vmulq_n_f32(*&v8[v24], v10)), vmulq_n_f32(*&v9[v24], v11)), vmulq_n_f32(*&v12[v24], v14)), vmulq_n_f32(*&v13[v24], v15)), vmulq_n_f32(*&v16[v24], v17));
      v24 += 4;
      v25 -= 16;
    }

    while (v25 > 15);
    result = (result + v24 * 4);
    v4 = (v4 + v24 * 4);
    v5 = (v5 + v24 * 4);
    v8 = (v8 + v24 * 4);
    v9 = (v9 + v24 * 4);
    v12 = (v12 + v24 * 4);
    v13 = (v13 + v24 * 4);
    v16 = (v16 + v24 * 4);
  }

  while (v4 < a4)
  {
    v26 = *v4++;
    v27 = v6 * v26;
    v28 = *v5++;
    v29 = v27 + (v7 * v28);
    v30 = *v8++;
    v31 = v10 * v30;
    v32 = *v9++;
    v33 = (v29 + v31) + (v11 * v32);
    v34 = *v12++;
    v35 = v33 + (v14 * v34);
    v36 = *v13++;
    v37 = v15 * v36;
    v38 = *v16++;
    *result++ = (v35 + v37) + (v17 * v38);
  }

  return result;
}

float *sub_29AB4B18C(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a4 - *a3;
  v19 = a3[6];
  v20 = a3[7];
  if (v18 >= 64)
  {
    v21 = 0;
    do
    {
      v22 = &result[v21];
      v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v21 + 4], v6), vmulq_n_f32(*&v5[v21 + 4], v7)), vmulq_n_f32(*&v8[v21 + 4], v10)), vmulq_n_f32(*&v9[v21 + 4], v11)), vmulq_n_f32(*&v12[v21 + 4], v14)), vmulq_n_f32(*&v13[v21 + 4], v15)), vmulq_n_f32(*&v19[v21 + 4], v16)), vmulq_n_f32(*&v20[v21 + 4], v17));
      v24 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v21 + 8], v6), vmulq_n_f32(*&v5[v21 + 8], v7)), vmulq_n_f32(*&v8[v21 + 8], v10)), vmulq_n_f32(*&v9[v21 + 8], v11)), vmulq_n_f32(*&v12[v21 + 8], v14)), vmulq_n_f32(*&v13[v21 + 8], v15)), vmulq_n_f32(*&v19[v21 + 8], v16)), vmulq_n_f32(*&v20[v21 + 8], v17));
      v25 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v21 + 12], v6), vmulq_n_f32(*&v5[v21 + 12], v7)), vmulq_n_f32(*&v8[v21 + 12], v10)), vmulq_n_f32(*&v9[v21 + 12], v11)), vmulq_n_f32(*&v12[v21 + 12], v14)), vmulq_n_f32(*&v13[v21 + 12], v15)), vmulq_n_f32(*&v19[v21 + 12], v16)), vmulq_n_f32(*&v20[v21 + 12], v17));
      *v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v21], v6), vmulq_n_f32(*&v5[v21], v7)), vmulq_n_f32(*&v8[v21], v10)), vmulq_n_f32(*&v9[v21], v11)), vmulq_n_f32(*&v12[v21], v14)), vmulq_n_f32(*&v13[v21], v15)), vmulq_n_f32(*&v19[v21], v16)), vmulq_n_f32(*&v20[v21], v17));
      *(v22 + 1) = v23;
      *(v22 + 2) = v24;
      *(v22 + 3) = v25;
      v21 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    result = (result + v21 * 4);
    v4 = (v4 + v21 * 4);
    v5 = (v5 + v21 * 4);
    v8 = (v8 + v21 * 4);
    v9 = (v9 + v21 * 4);
    v12 = (v12 + v21 * 4);
    v13 = (v13 + v21 * 4);
    v19 = (v19 + v21 * 4);
    v20 = (v20 + v21 * 4);
  }

  if (v18 >= 16)
  {
    v26 = 0;
    v27 = a4 - v4;
    do
    {
      *&result[v26] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(*&v4[v26], v6), vmulq_n_f32(*&v5[v26], v7)), vmulq_n_f32(*&v8[v26], v10)), vmulq_n_f32(*&v9[v26], v11)), vmulq_n_f32(*&v12[v26], v14)), vmulq_n_f32(*&v13[v26], v15)), vmulq_n_f32(*&v19[v26], v16)), vmulq_n_f32(*&v20[v26], v17));
      v26 += 4;
      v27 -= 16;
    }

    while (v27 > 15);
    result = (result + v26 * 4);
    v4 = (v4 + v26 * 4);
    v5 = (v5 + v26 * 4);
    v8 = (v8 + v26 * 4);
    v9 = (v9 + v26 * 4);
    v12 = (v12 + v26 * 4);
    v13 = (v13 + v26 * 4);
    v19 = (v19 + v26 * 4);
    v20 = (v20 + v26 * 4);
  }

  while (v4 < a4)
  {
    v28 = *v4++;
    v29 = v28;
    v30 = *v5++;
    v31 = (v6 * v29) + (v7 * v30);
    v32 = *v8++;
    v33 = v31 + (v10 * v32);
    v34 = *v9++;
    v35 = v11 * v34;
    v36 = *v12++;
    v37 = (v33 + v35) + (v14 * v36);
    v38 = *v13++;
    v39 = v37 + (v15 * v38);
    v40 = *v19++;
    v41 = v16 * v40;
    v42 = *v20++;
    *result++ = (v39 + v41) + (v17 * v42);
  }

  return result;
}

float32x4_t *sub_29AB4B474(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = *a2;
  v6 = a4 - *a3;
  if (v6 >= 64)
  {
    do
    {
      v7 = vaddq_f32(result[1], vmulq_n_f32(v4[1], v5));
      v8 = vaddq_f32(result[2], vmulq_n_f32(v4[2], v5));
      v9 = vaddq_f32(result[3], vmulq_n_f32(v4[3], v5));
      *result = vaddq_f32(*result, vmulq_n_f32(*v4, v5));
      result[1] = v7;
      result[2] = v8;
      result[3] = v9;
      result += 4;
      v4 += 4;
      v6 -= 64;
    }

    while (v6 > 63);
  }

  if (v6 >= 16)
  {
    v10 = a4 - v4;
    do
    {
      v11 = *v4++;
      *result = vaddq_f32(*result, vmulq_n_f32(v11, v5));
      ++result;
      v10 -= 16;
    }

    while (v10 > 15);
  }

  while (v4 < a4)
  {
    v12 = v4->f32[0];
    v4 = (v4 + 4);
    result->f32[0] = result->f32[0] + (v5 * v12);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4B524(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 - *a3;
  if (v8 >= 64)
  {
    do
    {
      v9 = vaddq_f32(vaddq_f32(result[1], vmulq_n_f32(v4[1], v6)), vmulq_n_f32(v5[1], v7));
      v10 = vaddq_f32(vaddq_f32(result[2], vmulq_n_f32(v4[2], v6)), vmulq_n_f32(v5[2], v7));
      v11 = vaddq_f32(vaddq_f32(result[3], vmulq_n_f32(v4[3], v6)), vmulq_n_f32(v5[3], v7));
      *result = vaddq_f32(vaddq_f32(*result, vmulq_n_f32(*v4, v6)), vmulq_n_f32(*v5, v7));
      result[1] = v9;
      result[2] = v10;
      result[3] = v11;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 -= 64;
    }

    while (v8 > 63);
  }

  if (v8 >= 16)
  {
    v12 = a4 - v4;
    do
    {
      v13 = *v4++;
      v14 = vaddq_f32(*result, vmulq_n_f32(v13, v6));
      v15 = *v5++;
      *result++ = vaddq_f32(v14, vmulq_n_f32(v15, v7));
      v12 -= 16;
    }

    while (v12 > 15);
  }

  while (v4 < a4)
  {
    v16 = v4->f32[0];
    v4 = (v4 + 4);
    v17 = v6 * v16;
    v18 = v5->f32[0];
    v5 = (v5 + 4);
    result->f32[0] = (result->f32[0] + v17) + (v7 * v18);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4B618(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a2[2];
  v10 = a4 - *a3;
  if (v10 >= 64)
  {
    do
    {
      v11 = vaddq_f32(vaddq_f32(vaddq_f32(result[1], vmulq_n_f32(v4[1], v6)), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v9));
      v12 = vaddq_f32(vaddq_f32(vaddq_f32(result[2], vmulq_n_f32(v4[2], v6)), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v9));
      v13 = vaddq_f32(vaddq_f32(vaddq_f32(result[3], vmulq_n_f32(v4[3], v6)), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v9));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(*result, vmulq_n_f32(*v4, v6)), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v9));
      result[1] = v11;
      result[2] = v12;
      result[3] = v13;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v14 = a4 - v4;
    do
    {
      v15 = *v4++;
      v16 = vaddq_f32(*result, vmulq_n_f32(v15, v6));
      v17 = *v5++;
      v18 = vaddq_f32(v16, vmulq_n_f32(v17, v7));
      v19 = *v8++;
      *result++ = vaddq_f32(v18, vmulq_n_f32(v19, v9));
      v14 -= 16;
    }

    while (v14 > 15);
  }

  while (v4 < a4)
  {
    v20 = v4->f32[0];
    v4 = (v4 + 4);
    v21 = result->f32[0] + (v6 * v20);
    v22 = v5->f32[0];
    v5 = (v5 + 4);
    v23 = v7 * v22;
    v24 = v8->f32[0];
    v8 = (v8 + 4);
    result->f32[0] = (v21 + v23) + (v9 * v24);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4B758(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a4 - *a3;
  if (v12 >= 64)
  {
    do
    {
      v13 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[1], vmulq_n_f32(v4[1], v6)), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v10)), vmulq_n_f32(v9[1], v11));
      v14 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[2], vmulq_n_f32(v4[2], v6)), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v10)), vmulq_n_f32(v9[2], v11));
      v15 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[3], vmulq_n_f32(v4[3], v6)), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v10)), vmulq_n_f32(v9[3], v11));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*result, vmulq_n_f32(*v4, v6)), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v10)), vmulq_n_f32(*v9, v11));
      result[1] = v13;
      result[2] = v14;
      result[3] = v15;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v12 -= 64;
    }

    while (v12 > 63);
  }

  if (v12 >= 16)
  {
    v16 = a4 - v4;
    do
    {
      v17 = *v4++;
      v18 = vaddq_f32(*result, vmulq_n_f32(v17, v6));
      v19 = *v5++;
      v20 = vaddq_f32(v18, vmulq_n_f32(v19, v7));
      v21 = *v8++;
      v22 = vaddq_f32(v20, vmulq_n_f32(v21, v10));
      v23 = *v9++;
      *result++ = vaddq_f32(v22, vmulq_n_f32(v23, v11));
      v16 -= 16;
    }

    while (v16 > 15);
  }

  while (v4 < a4)
  {
    v24 = v4->f32[0];
    v4 = (v4 + 4);
    v25 = result->f32[0] + (v6 * v24);
    v26 = v5->f32[0];
    v5 = (v5 + 4);
    v27 = v25 + (v7 * v26);
    v28 = v8->f32[0];
    v8 = (v8 + 4);
    v29 = v10 * v28;
    v30 = v9->f32[0];
    v9 = (v9 + 4);
    result->f32[0] = (v27 + v29) + (v11 * v30);
    result = (result + 4);
  }

  return result;
}

float32x4_t *sub_29AB4B8DC(float32x4_t *result, float *a2, float32x4_t **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a2[4];
  v14 = a4 - *a3;
  if (v14 >= 64)
  {
    do
    {
      v15 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[1], vmulq_n_f32(v4[1], v6)), vmulq_n_f32(v5[1], v7)), vmulq_n_f32(v8[1], v10)), vmulq_n_f32(v9[1], v11)), vmulq_n_f32(v12[1], v13));
      v16 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[2], vmulq_n_f32(v4[2], v6)), vmulq_n_f32(v5[2], v7)), vmulq_n_f32(v8[2], v10)), vmulq_n_f32(v9[2], v11)), vmulq_n_f32(v12[2], v13));
      v17 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(result[3], vmulq_n_f32(v4[3], v6)), vmulq_n_f32(v5[3], v7)), vmulq_n_f32(v8[3], v10)), vmulq_n_f32(v9[3], v11)), vmulq_n_f32(v12[3], v13));
      *result = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*result, vmulq_n_f32(*v4, v6)), vmulq_n_f32(*v5, v7)), vmulq_n_f32(*v8, v10)), vmulq_n_f32(*v9, v11)), vmulq_n_f32(*v12, v13));
      result[1] = v15;
      result[2] = v16;
      result[3] = v17;
      result += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v12 += 4;
      v14 -= 64;
    }

    while (v14 > 63);
  }

  if (v14 >= 16)
  {
    v18 = a4 - v4;
    do
    {
      v19 = *v4++;
      v20 = vaddq_f32(*result, vmulq_n_f32(v19, v6));
      v21 = *v5++;
      v22 = vaddq_f32(v20, vmulq_n_f32(v21, v7));
      v23 = *v8++;
      v24 = vaddq_f32(v22, vmulq_n_f32(v23, v10));
      v25 = *v9++;
      v26 = vaddq_f32(v24, vmulq_n_f32(v25, v11));
      v27 = *v12++;
      *result++ = vaddq_f32(v26, vmulq_n_f32(v27, v13));
      v18 -= 16;
    }

    while (v18 > 15);
  }

  while (v4 < a4)
  {
    v28 = v4->f32[0];
    v4 = (v4 + 4);
    v29 = v6 * v28;
    v30 = v5->f32[0];
    v5 = (v5 + 4);
    v31 = (result->f32[0] + v29) + (v7 * v30);
    v32 = v8->f32[0];
    v8 = (v8 + 4);
    v33 = v31 + (v10 * v32);
    v34 = v9->f32[0];
    v9 = (v9 + 4);
    v35 = v11 * v34;
    v36 = v12->f32[0];
    v12 = (v12 + 4);
    result->f32[0] = (v33 + v35) + (v13 * v36);
    result = (result + 4);
  }

  return result;
}

float *sub_29AB4BAAC(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a4 - *a3;
  if (v16 >= 64)
  {
    v17 = 0;
    do
    {
      v18 = &result[v17];
      v19 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v17 + 4], vmulq_n_f32(*&v4[v17 + 4], v6)), vmulq_n_f32(*&v5[v17 + 4], v7)), vmulq_n_f32(*&v8[v17 + 4], v10)), vmulq_n_f32(*&v9[v17 + 4], v11)), vmulq_n_f32(*&v12[v17 + 4], v14)), vmulq_n_f32(*&v13[v17 + 4], v15));
      v20 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v17 + 8], vmulq_n_f32(*&v4[v17 + 8], v6)), vmulq_n_f32(*&v5[v17 + 8], v7)), vmulq_n_f32(*&v8[v17 + 8], v10)), vmulq_n_f32(*&v9[v17 + 8], v11)), vmulq_n_f32(*&v12[v17 + 8], v14)), vmulq_n_f32(*&v13[v17 + 8], v15));
      v21 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v17 + 12], vmulq_n_f32(*&v4[v17 + 12], v6)), vmulq_n_f32(*&v5[v17 + 12], v7)), vmulq_n_f32(*&v8[v17 + 12], v10)), vmulq_n_f32(*&v9[v17 + 12], v11)), vmulq_n_f32(*&v12[v17 + 12], v14)), vmulq_n_f32(*&v13[v17 + 12], v15));
      *v18 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v17], vmulq_n_f32(*&v4[v17], v6)), vmulq_n_f32(*&v5[v17], v7)), vmulq_n_f32(*&v8[v17], v10)), vmulq_n_f32(*&v9[v17], v11)), vmulq_n_f32(*&v12[v17], v14)), vmulq_n_f32(*&v13[v17], v15));
      *(v18 + 1) = v19;
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      v17 += 16;
      v16 -= 64;
    }

    while (v16 > 63);
    result = (result + v17 * 4);
    v4 = (v4 + v17 * 4);
    v5 = (v5 + v17 * 4);
    v8 = (v8 + v17 * 4);
    v9 = (v9 + v17 * 4);
    v12 = (v12 + v17 * 4);
    v13 = (v13 + v17 * 4);
  }

  if (v16 >= 16)
  {
    v22 = 0;
    v23 = a4 - v4;
    do
    {
      *&result[v22] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v22], vmulq_n_f32(*&v4[v22], v6)), vmulq_n_f32(*&v5[v22], v7)), vmulq_n_f32(*&v8[v22], v10)), vmulq_n_f32(*&v9[v22], v11)), vmulq_n_f32(*&v12[v22], v14)), vmulq_n_f32(*&v13[v22], v15));
      v22 += 4;
      v23 -= 16;
    }

    while (v23 > 15);
    result = (result + v22 * 4);
    v4 = (v4 + v22 * 4);
    v5 = (v5 + v22 * 4);
    v8 = (v8 + v22 * 4);
    v9 = (v9 + v22 * 4);
    v12 = (v12 + v22 * 4);
    v13 = (v13 + v22 * 4);
  }

  while (v4 < a4)
  {
    v24 = *v4++;
    v25 = *result + (v6 * v24);
    v26 = *v5++;
    v27 = v7 * v26;
    v28 = *v8++;
    v29 = (v25 + v27) + (v10 * v28);
    v30 = *v9++;
    v31 = v29 + (v11 * v30);
    v32 = *v12++;
    v33 = v14 * v32;
    v34 = *v13++;
    *result++ = (v31 + v33) + (v15 * v34);
  }

  return result;
}

float *sub_29AB4BD0C(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a3[6];
  v17 = a2[6];
  v18 = a4 - *a3;
  if (v18 >= 64)
  {
    v19 = 0;
    do
    {
      v20 = &result[v19];
      v21 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v19 + 4], vmulq_n_f32(*&v4[v19 + 4], v6)), vmulq_n_f32(*&v5[v19 + 4], v7)), vmulq_n_f32(*&v8[v19 + 4], v10)), vmulq_n_f32(*&v9[v19 + 4], v11)), vmulq_n_f32(*&v12[v19 + 4], v14)), vmulq_n_f32(*&v13[v19 + 4], v15)), vmulq_n_f32(*&v16[v19 + 4], v17));
      v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v19 + 8], vmulq_n_f32(*&v4[v19 + 8], v6)), vmulq_n_f32(*&v5[v19 + 8], v7)), vmulq_n_f32(*&v8[v19 + 8], v10)), vmulq_n_f32(*&v9[v19 + 8], v11)), vmulq_n_f32(*&v12[v19 + 8], v14)), vmulq_n_f32(*&v13[v19 + 8], v15)), vmulq_n_f32(*&v16[v19 + 8], v17));
      v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v19 + 12], vmulq_n_f32(*&v4[v19 + 12], v6)), vmulq_n_f32(*&v5[v19 + 12], v7)), vmulq_n_f32(*&v8[v19 + 12], v10)), vmulq_n_f32(*&v9[v19 + 12], v11)), vmulq_n_f32(*&v12[v19 + 12], v14)), vmulq_n_f32(*&v13[v19 + 12], v15)), vmulq_n_f32(*&v16[v19 + 12], v17));
      *v20 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v19], vmulq_n_f32(*&v4[v19], v6)), vmulq_n_f32(*&v5[v19], v7)), vmulq_n_f32(*&v8[v19], v10)), vmulq_n_f32(*&v9[v19], v11)), vmulq_n_f32(*&v12[v19], v14)), vmulq_n_f32(*&v13[v19], v15)), vmulq_n_f32(*&v16[v19], v17));
      *(v20 + 1) = v21;
      *(v20 + 2) = v22;
      *(v20 + 3) = v23;
      v19 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    result = (result + v19 * 4);
    v4 = (v4 + v19 * 4);
    v5 = (v5 + v19 * 4);
    v8 = (v8 + v19 * 4);
    v9 = (v9 + v19 * 4);
    v12 = (v12 + v19 * 4);
    v13 = (v13 + v19 * 4);
    v16 = (v16 + v19 * 4);
  }

  if (v18 >= 16)
  {
    v24 = 0;
    v25 = a4 - v4;
    do
    {
      *&result[v24] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v24], vmulq_n_f32(*&v4[v24], v6)), vmulq_n_f32(*&v5[v24], v7)), vmulq_n_f32(*&v8[v24], v10)), vmulq_n_f32(*&v9[v24], v11)), vmulq_n_f32(*&v12[v24], v14)), vmulq_n_f32(*&v13[v24], v15)), vmulq_n_f32(*&v16[v24], v17));
      v24 += 4;
      v25 -= 16;
    }

    while (v25 > 15);
    result = (result + v24 * 4);
    v4 = (v4 + v24 * 4);
    v5 = (v5 + v24 * 4);
    v8 = (v8 + v24 * 4);
    v9 = (v9 + v24 * 4);
    v12 = (v12 + v24 * 4);
    v13 = (v13 + v24 * 4);
    v16 = (v16 + v24 * 4);
  }

  while (v4 < a4)
  {
    v26 = *v4++;
    v27 = *result + (v6 * v26);
    v28 = *v5++;
    v29 = v27 + (v7 * v28);
    v30 = *v8++;
    v31 = v10 * v30;
    v32 = *v9++;
    v33 = (v29 + v31) + (v11 * v32);
    v34 = *v12++;
    v35 = v33 + (v14 * v34);
    v36 = *v13++;
    v37 = v15 * v36;
    v38 = *v16++;
    *result++ = (v35 + v37) + (v17 * v38);
  }

  return result;
}

float *sub_29AB4BFC8(float *result, float *a2, float **a3, unint64_t a4)
{
  v4 = *a3;
  v5 = a3[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a3[2];
  v9 = a3[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a3[4];
  v13 = a3[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a4 - *a3;
  v19 = a3[6];
  v20 = a3[7];
  if (v18 >= 64)
  {
    v21 = 0;
    do
    {
      v22 = &result[v21];
      v23 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v21 + 4], vmulq_n_f32(*&v4[v21 + 4], v6)), vmulq_n_f32(*&v5[v21 + 4], v7)), vmulq_n_f32(*&v8[v21 + 4], v10)), vmulq_n_f32(*&v9[v21 + 4], v11)), vmulq_n_f32(*&v12[v21 + 4], v14)), vmulq_n_f32(*&v13[v21 + 4], v15)), vmulq_n_f32(*&v19[v21 + 4], v16)), vmulq_n_f32(*&v20[v21 + 4], v17));
      v24 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v21 + 8], vmulq_n_f32(*&v4[v21 + 8], v6)), vmulq_n_f32(*&v5[v21 + 8], v7)), vmulq_n_f32(*&v8[v21 + 8], v10)), vmulq_n_f32(*&v9[v21 + 8], v11)), vmulq_n_f32(*&v12[v21 + 8], v14)), vmulq_n_f32(*&v13[v21 + 8], v15)), vmulq_n_f32(*&v19[v21 + 8], v16)), vmulq_n_f32(*&v20[v21 + 8], v17));
      v25 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v21 + 12], vmulq_n_f32(*&v4[v21 + 12], v6)), vmulq_n_f32(*&v5[v21 + 12], v7)), vmulq_n_f32(*&v8[v21 + 12], v10)), vmulq_n_f32(*&v9[v21 + 12], v11)), vmulq_n_f32(*&v12[v21 + 12], v14)), vmulq_n_f32(*&v13[v21 + 12], v15)), vmulq_n_f32(*&v19[v21 + 12], v16)), vmulq_n_f32(*&v20[v21 + 12], v17));
      *v22 = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v21], vmulq_n_f32(*&v4[v21], v6)), vmulq_n_f32(*&v5[v21], v7)), vmulq_n_f32(*&v8[v21], v10)), vmulq_n_f32(*&v9[v21], v11)), vmulq_n_f32(*&v12[v21], v14)), vmulq_n_f32(*&v13[v21], v15)), vmulq_n_f32(*&v19[v21], v16)), vmulq_n_f32(*&v20[v21], v17));
      *(v22 + 1) = v23;
      *(v22 + 2) = v24;
      *(v22 + 3) = v25;
      v21 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    result = (result + v21 * 4);
    v4 = (v4 + v21 * 4);
    v5 = (v5 + v21 * 4);
    v8 = (v8 + v21 * 4);
    v9 = (v9 + v21 * 4);
    v12 = (v12 + v21 * 4);
    v13 = (v13 + v21 * 4);
    v19 = (v19 + v21 * 4);
    v20 = (v20 + v21 * 4);
  }

  if (v18 >= 16)
  {
    v26 = 0;
    v27 = a4 - v4;
    do
    {
      *&result[v26] = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(*&result[v26], vmulq_n_f32(*&v4[v26], v6)), vmulq_n_f32(*&v5[v26], v7)), vmulq_n_f32(*&v8[v26], v10)), vmulq_n_f32(*&v9[v26], v11)), vmulq_n_f32(*&v12[v26], v14)), vmulq_n_f32(*&v13[v26], v15)), vmulq_n_f32(*&v19[v26], v16)), vmulq_n_f32(*&v20[v26], v17));
      v26 += 4;
      v27 -= 16;
    }

    while (v27 > 15);
    result = (result + v26 * 4);
    v4 = (v4 + v26 * 4);
    v5 = (v5 + v26 * 4);
    v8 = (v8 + v26 * 4);
    v9 = (v9 + v26 * 4);
    v12 = (v12 + v26 * 4);
    v13 = (v13 + v26 * 4);
    v19 = (v19 + v26 * 4);
    v20 = (v20 + v26 * 4);
  }

  while (v4 < a4)
  {
    v28 = *v4++;
    v29 = v6 * v28;
    v30 = *v5++;
    v31 = (*result + v29) + (v7 * v30);
    v32 = *v8++;
    v33 = v31 + (v10 * v32);
    v34 = *v9++;
    v35 = v11 * v34;
    v36 = *v12++;
    v37 = (v33 + v35) + (v14 * v36);
    v38 = *v13++;
    v39 = v37 + (v15 * v38);
    v40 = *v19++;
    v41 = v16 * v40;
    v42 = *v20++;
    *result++ = (v39 + v41) + (v17 * v42);
  }

  return result;
}

uint64_t sub_29AB4C2D8(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 40) + *(a1 + 328) * *(a2 + 16));
  sub_29AB4A608(a1, *(a2 + 48), v4);
  result = sub_29AB4A66C(a1, *(a1 + 312) + *(a1 + 324) * *(a2 + 8), *(a2 + 48), *(a2 + 8));
  *v4 = 2137108966;
  ++*(a2 + 8);
  v6 = *(a2 + 16);
  if (v6 + 1 == *(a1 + 332))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_29AB4C368(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 40) + *(a1 + 328) * *(a2 + 16));
  result = sub_29AB4A66C(a1, *(a1 + 312) + *(a1 + 324) * *(a2 + 8), v4, *(a2 + 8));
  *v4 = 2137108966;
  ++*(a2 + 8);
  v6 = *(a2 + 16);
  if (v6 + 1 == *(a1 + 332))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 + 1;
  }

  *(a2 + 16) = v7;
  return result;
}

float32x4_t **sub_29AB4C3EC(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = *a2;
  v6 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v7 = vmulq_n_f32(a3[1], v5);
      v8 = vmulq_n_f32(a3[2], v5);
      v9 = vmulq_n_f32(a3[3], v5);
      *v4 = vmulq_n_f32(*a3, v5);
      v4[1] = v7;
      v4[2] = v8;
      v4[3] = v9;
      a3 += 4;
      v4 += 4;
      v6 -= 64;
    }

    while (v6 > 63);
  }

  if (v6 >= 16)
  {
    v10 = a4 - a3;
    do
    {
      v11 = *a3++;
      *v4++ = vmulq_n_f32(v11, v5);
      v10 -= 16;
    }

    while (v10 > 15);
  }

  while (a3 < a4)
  {
    v12 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v5 * v12;
    v4 = (v4 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4C474(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[2];
      v12 = a3[3];
      *v4 = vmulq_n_f32(*a3, v6);
      v4[1] = vmulq_n_f32(v10, v6);
      v4[2] = vmulq_n_f32(v11, v6);
      v4[3] = vmulq_n_f32(v12, v6);
      *v5 = vmulq_n_f32(v9, v7);
      v5[1] = vmulq_n_f32(v10, v7);
      v5[2] = vmulq_n_f32(v11, v7);
      v5[3] = vmulq_n_f32(v12, v7);
      a3 += 4;
      v4 += 4;
      v5 += 4;
      v8 -= 64;
    }

    while (v8 > 63);
  }

  if (v8 >= 16)
  {
    v13 = a4 - a3;
    do
    {
      v14 = *a3++;
      *v4++ = vmulq_n_f32(v14, v6);
      *v5++ = vmulq_n_f32(v14, v7);
      v13 -= 16;
    }

    while (v13 > 15);
  }

  while (a3 < a4)
  {
    v15 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v6 * v15;
    v4 = (v4 + 4);
    v5->f32[0] = v7 * v15;
    v5 = (v5 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4C528(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = a2[2];
  v10 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v11 = *a3;
      v12 = a3[1];
      v13 = a3[2];
      v14 = a3[3];
      *v4 = vmulq_n_f32(*a3, v6);
      v4[1] = vmulq_n_f32(v12, v6);
      v4[2] = vmulq_n_f32(v13, v6);
      v4[3] = vmulq_n_f32(v14, v6);
      *v5 = vmulq_n_f32(v11, v7);
      v5[1] = vmulq_n_f32(v12, v7);
      v5[2] = vmulq_n_f32(v13, v7);
      v5[3] = vmulq_n_f32(v14, v7);
      *v8 = vmulq_n_f32(v11, v9);
      v8[1] = vmulq_n_f32(v12, v9);
      a3 += 4;
      v4 += 4;
      v5 += 4;
      v8[2] = vmulq_n_f32(v13, v9);
      v8[3] = vmulq_n_f32(v14, v9);
      v8 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v15 = a4 - a3;
    do
    {
      v16 = *a3++;
      *v4++ = vmulq_n_f32(v16, v6);
      *v5++ = vmulq_n_f32(v16, v7);
      *v8++ = vmulq_n_f32(v16, v9);
      v15 -= 16;
    }

    while (v15 > 15);
  }

  while (a3 < a4)
  {
    v17 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v6 * v17;
    v4 = (v4 + 4);
    v5->f32[0] = v7 * v17;
    v5 = (v5 + 4);
    v8->f32[0] = v9 * v17;
    v8 = (v8 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4C610(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a4 - a3;
  v11 = a2[2];
  v12 = a2[3];
  if ((a4 - a3) >= 64)
  {
    do
    {
      v13 = *a3;
      v14 = a3[1];
      v15 = a3[2];
      v16 = a3[3];
      *v4 = vmulq_n_f32(*a3, v6);
      v4[1] = vmulq_n_f32(v14, v6);
      v4[2] = vmulq_n_f32(v15, v6);
      v4[3] = vmulq_n_f32(v16, v6);
      *v5 = vmulq_n_f32(v13, v7);
      v5[1] = vmulq_n_f32(v14, v7);
      v5[2] = vmulq_n_f32(v15, v7);
      v5[3] = vmulq_n_f32(v16, v7);
      *v8 = vmulq_n_f32(v13, v11);
      v8[1] = vmulq_n_f32(v14, v11);
      v8[2] = vmulq_n_f32(v15, v11);
      v8[3] = vmulq_n_f32(v16, v11);
      a3 += 4;
      v4 += 4;
      *v9 = vmulq_n_f32(v13, v12);
      v9[1] = vmulq_n_f32(v14, v12);
      v5 += 4;
      v8 += 4;
      v9[2] = vmulq_n_f32(v15, v12);
      v9[3] = vmulq_n_f32(v16, v12);
      v9 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v17 = a4 - a3;
    do
    {
      v18 = *a3++;
      *v4++ = vmulq_n_f32(v18, v6);
      *v5++ = vmulq_n_f32(v18, v7);
      *v8++ = vmulq_n_f32(v18, v11);
      *v9++ = vmulq_n_f32(v18, v12);
      v17 -= 16;
    }

    while (v17 > 15);
  }

  while (a3 < a4)
  {
    v19 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v6 * v19;
    v4 = (v4 + 4);
    v5->f32[0] = v7 * v19;
    v5 = (v5 + 4);
    v8->f32[0] = v11 * v19;
    v8 = (v8 + 4);
    v9->f32[0] = v12 * v19;
    v9 = (v9 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4C724(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a4 - a3;
  v14 = result[4];
  if ((a4 - a3) >= 64)
  {
    do
    {
      v15 = *a3;
      v16 = a3[1];
      v17 = a3[2];
      v18 = a3[3];
      *v4 = vmulq_n_f32(*a3, v6);
      v4[1] = vmulq_n_f32(v16, v6);
      v4[2] = vmulq_n_f32(v17, v6);
      v4[3] = vmulq_n_f32(v18, v6);
      *v5 = vmulq_n_f32(v15, v7);
      v5[1] = vmulq_n_f32(v16, v7);
      v5[2] = vmulq_n_f32(v17, v7);
      v5[3] = vmulq_n_f32(v18, v7);
      *v8 = vmulq_n_f32(v15, v10);
      v8[1] = vmulq_n_f32(v16, v10);
      v8[2] = vmulq_n_f32(v17, v10);
      v8[3] = vmulq_n_f32(v18, v10);
      *v9 = vmulq_n_f32(v15, v11);
      v9[1] = vmulq_n_f32(v16, v11);
      v9[2] = vmulq_n_f32(v17, v11);
      v9[3] = vmulq_n_f32(v18, v11);
      a3 += 4;
      v4 += 4;
      v5 += 4;
      *v14 = vmulq_n_f32(v15, v12);
      v14[1] = vmulq_n_f32(v16, v12);
      v8 += 4;
      v9 += 4;
      v14[2] = vmulq_n_f32(v17, v12);
      v14[3] = vmulq_n_f32(v18, v12);
      v14 += 4;
      v13 -= 64;
    }

    while (v13 > 63);
  }

  if (v13 >= 16)
  {
    v19 = a4 - a3;
    do
    {
      v20 = *a3++;
      *v4++ = vmulq_n_f32(v20, v6);
      *v5++ = vmulq_n_f32(v20, v7);
      *v8++ = vmulq_n_f32(v20, v10);
      *v9++ = vmulq_n_f32(v20, v11);
      *v14++ = vmulq_n_f32(v20, v12);
      v19 -= 16;
    }

    while (v19 > 15);
  }

  while (a3 < a4)
  {
    v21 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = v6 * v21;
    v4 = (v4 + 4);
    v5->f32[0] = v7 * v21;
    v5 = (v5 + 4);
    v8->f32[0] = v10 * v21;
    v8 = (v8 + 4);
    v9->f32[0] = v11 * v21;
    v9 = (v9 + 4);
    v14->f32[0] = v12 * v21;
    v14 = (v14 + 4);
  }

  return result;
}

float32x4_t *sub_29AB4C86C(float32x4_t *result, float *a2, float *a3, unint64_t a4)
{
  v4 = result->i64[0];
  v5 = result->i64[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[1].i64[0];
  v9 = result[1].i64[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a4 - a3;
  v15 = result[2].i64[0];
  v16 = result[2].i64[1];
  if ((a4 - a3) >= 64)
  {
    v17 = 0;
    do
    {
      v18 = &v4[v17];
      v19 = *&a3[v17];
      v20 = *&a3[v17 + 4];
      result = &v5[v17];
      v21 = &v8[v17];
      v22 = &v9[v17];
      v23 = &v15[v17];
      v24 = *&a3[v17 + 8];
      v25 = *&a3[v17 + 12];
      v26 = &v16[v17];
      *v18 = vmulq_n_f32(v19, v6);
      v18[1] = vmulq_n_f32(v20, v6);
      v18[2] = vmulq_n_f32(v24, v6);
      v18[3] = vmulq_n_f32(v25, v6);
      *result = vmulq_n_f32(v19, v7);
      result[1] = vmulq_n_f32(v20, v7);
      result[2] = vmulq_n_f32(v24, v7);
      result[3] = vmulq_n_f32(v25, v7);
      *v21 = vmulq_n_f32(v19, v10);
      v21[1] = vmulq_n_f32(v20, v10);
      v21[2] = vmulq_n_f32(v24, v10);
      v21[3] = vmulq_n_f32(v25, v10);
      *v22 = vmulq_n_f32(v19, v11);
      v22[1] = vmulq_n_f32(v20, v11);
      v22[2] = vmulq_n_f32(v24, v11);
      v22[3] = vmulq_n_f32(v25, v11);
      *v23 = vmulq_n_f32(v19, v12);
      v23[1] = vmulq_n_f32(v20, v12);
      v23[2] = vmulq_n_f32(v24, v12);
      v23[3] = vmulq_n_f32(v25, v12);
      *v26 = vmulq_n_f32(v19, v13);
      v26[1] = vmulq_n_f32(v20, v13);
      v17 += 16;
      v14 -= 64;
      v26[2] = vmulq_n_f32(v24, v13);
      v26[3] = vmulq_n_f32(v25, v13);
    }

    while (v14 > 63);
    a3 = (a3 + v17 * 4);
    v4 = (v4 + v17 * 4);
    v5 = (v5 + v17 * 4);
    v8 = (v8 + v17 * 4);
    v9 = (v9 + v17 * 4);
    v15 = (v15 + v17 * 4);
    v16 = (v16 + v17 * 4);
  }

  if (v14 >= 16)
  {
    v27 = 0;
    v28 = a4 - a3;
    do
    {
      v29 = *&a3[v27];
      *&v4[v27] = vmulq_n_f32(v29, v6);
      *&v5[v27] = vmulq_n_f32(v29, v7);
      *&v8[v27] = vmulq_n_f32(v29, v10);
      *&v9[v27] = vmulq_n_f32(v29, v11);
      *&v15[v27] = vmulq_n_f32(v29, v12);
      *&v16[v27] = vmulq_n_f32(v29, v13);
      v27 += 4;
      v28 -= 16;
    }

    while (v28 > 15);
    a3 = (a3 + v27 * 4);
    v4 = (v4 + v27 * 4);
    v5 = (v5 + v27 * 4);
    v8 = (v8 + v27 * 4);
    v9 = (v9 + v27 * 4);
    v15 = (v15 + v27 * 4);
    v16 = (v16 + v27 * 4);
  }

  while (a3 < a4)
  {
    v30 = *a3++;
    *v4++ = v6 * v30;
    *v5++ = v7 * v30;
    *v8++ = v10 * v30;
    *v9++ = v11 * v30;
    *v15++ = v12 * v30;
    *v16++ = v13 * v30;
  }

  return result;
}

float32x4_t *sub_29AB4CA2C(float32x4_t *result, float *a2, float *a3, unint64_t a4)
{
  v4 = result->i64[0];
  v5 = result->i64[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[1].i64[0];
  v9 = result[1].i64[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = result[2].i64[0];
  v13 = result[2].i64[1];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a4 - a3;
  v18 = result[3].i64[0];
  if ((a4 - a3) >= 64)
  {
    v19 = 0;
    do
    {
      result = &v4[v19];
      v20 = *&a3[v19];
      v21 = *&a3[v19 + 4];
      v22 = &v5[v19];
      v23 = &v8[v19];
      v24 = &v9[v19];
      v25 = &v12[v19];
      v26 = *&a3[v19 + 8];
      v27 = *&a3[v19 + 12];
      v28 = &v13[v19];
      v29 = &v18[v19];
      *result = vmulq_n_f32(v20, v6);
      result[1] = vmulq_n_f32(v21, v6);
      result[2] = vmulq_n_f32(v26, v6);
      result[3] = vmulq_n_f32(v27, v6);
      *v22 = vmulq_n_f32(v20, v7);
      v22[1] = vmulq_n_f32(v21, v7);
      v22[2] = vmulq_n_f32(v26, v7);
      v22[3] = vmulq_n_f32(v27, v7);
      *v23 = vmulq_n_f32(v20, v10);
      v23[1] = vmulq_n_f32(v21, v10);
      v23[2] = vmulq_n_f32(v26, v10);
      v23[3] = vmulq_n_f32(v27, v10);
      *v24 = vmulq_n_f32(v20, v11);
      v24[1] = vmulq_n_f32(v21, v11);
      v24[2] = vmulq_n_f32(v26, v11);
      v24[3] = vmulq_n_f32(v27, v11);
      *v25 = vmulq_n_f32(v20, v14);
      v25[1] = vmulq_n_f32(v21, v14);
      v25[2] = vmulq_n_f32(v26, v14);
      v25[3] = vmulq_n_f32(v27, v14);
      *v28 = vmulq_n_f32(v20, v15);
      v28[1] = vmulq_n_f32(v21, v15);
      v28[2] = vmulq_n_f32(v26, v15);
      v28[3] = vmulq_n_f32(v27, v15);
      *v29 = vmulq_n_f32(v20, v16);
      v29[1] = vmulq_n_f32(v21, v16);
      v19 += 16;
      v17 -= 64;
      v29[2] = vmulq_n_f32(v26, v16);
      v29[3] = vmulq_n_f32(v27, v16);
    }

    while (v17 > 63);
    a3 = (a3 + v19 * 4);
    v4 = (v4 + v19 * 4);
    v5 = (v5 + v19 * 4);
    v8 = (v8 + v19 * 4);
    v9 = (v9 + v19 * 4);
    v12 = (v12 + v19 * 4);
    v13 = (v13 + v19 * 4);
    v18 = (v18 + v19 * 4);
  }

  if (v17 >= 16)
  {
    v30 = 0;
    v31 = a4 - a3;
    do
    {
      v32 = *&a3[v30];
      *&v4[v30] = vmulq_n_f32(v32, v6);
      *&v5[v30] = vmulq_n_f32(v32, v7);
      *&v8[v30] = vmulq_n_f32(v32, v10);
      *&v9[v30] = vmulq_n_f32(v32, v11);
      *&v12[v30] = vmulq_n_f32(v32, v14);
      *&v13[v30] = vmulq_n_f32(v32, v15);
      *&v18[v30] = vmulq_n_f32(v32, v16);
      v30 += 4;
      v31 -= 16;
    }

    while (v31 > 15);
    a3 = (a3 + v30 * 4);
    v4 = (v4 + v30 * 4);
    v5 = (v5 + v30 * 4);
    v8 = (v8 + v30 * 4);
    v9 = (v9 + v30 * 4);
    v12 = (v12 + v30 * 4);
    v13 = (v13 + v30 * 4);
    v18 = (v18 + v30 * 4);
  }

  while (a3 < a4)
  {
    v33 = *a3++;
    *v4++ = v6 * v33;
    *v5++ = v7 * v33;
    *v8++ = v10 * v33;
    *v9++ = v11 * v33;
    *v12++ = v14 * v33;
    *v13++ = v15 * v33;
    *v18++ = v16 * v33;
  }

  return result;
}

float32x4_t *sub_29AB4CC28(float32x4_t *result, float *a2, float *a3, unint64_t a4)
{
  v4 = result->i64[0];
  v5 = result->i64[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[1].i64[0];
  v9 = result[1].i64[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = result[2].i64[0];
  v13 = result[2].i64[1];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a4 - a3;
  v19 = result[3].i64[0];
  v20 = result[3].i64[1];
  if ((a4 - a3) >= 64)
  {
    v21 = 0;
    do
    {
      v22 = &v4[v21];
      v23 = *&a3[v21];
      v24 = *&a3[v21 + 4];
      v25 = &v5[v21];
      v26 = &v8[v21];
      v27 = &v9[v21];
      v28 = &v12[v21];
      v29 = *&a3[v21 + 8];
      v30 = *&a3[v21 + 12];
      v31 = &v13[v21];
      v32 = &v19[v21];
      *v22 = vmulq_n_f32(v23, v6);
      v22[1] = vmulq_n_f32(v24, v6);
      result = &v20[v21];
      v22[2] = vmulq_n_f32(v29, v6);
      v22[3] = vmulq_n_f32(v30, v6);
      *v25 = vmulq_n_f32(v23, v7);
      v25[1] = vmulq_n_f32(v24, v7);
      v25[2] = vmulq_n_f32(v29, v7);
      v25[3] = vmulq_n_f32(v30, v7);
      *v26 = vmulq_n_f32(v23, v10);
      v26[1] = vmulq_n_f32(v24, v10);
      v26[2] = vmulq_n_f32(v29, v10);
      v26[3] = vmulq_n_f32(v30, v10);
      *v27 = vmulq_n_f32(v23, v11);
      v27[1] = vmulq_n_f32(v24, v11);
      v27[2] = vmulq_n_f32(v29, v11);
      v27[3] = vmulq_n_f32(v30, v11);
      *v28 = vmulq_n_f32(v23, v14);
      v28[1] = vmulq_n_f32(v24, v14);
      v28[2] = vmulq_n_f32(v29, v14);
      v28[3] = vmulq_n_f32(v30, v14);
      *v31 = vmulq_n_f32(v23, v15);
      v31[1] = vmulq_n_f32(v24, v15);
      v31[2] = vmulq_n_f32(v29, v15);
      v31[3] = vmulq_n_f32(v30, v15);
      *v32 = vmulq_n_f32(v23, v16);
      v32[1] = vmulq_n_f32(v24, v16);
      v32[2] = vmulq_n_f32(v29, v16);
      v32[3] = vmulq_n_f32(v30, v16);
      *result = vmulq_n_f32(v23, v17);
      result[1] = vmulq_n_f32(v24, v17);
      v21 += 16;
      v18 -= 64;
      result[2] = vmulq_n_f32(v29, v17);
      result[3] = vmulq_n_f32(v30, v17);
    }

    while (v18 > 63);
    a3 = (a3 + v21 * 4);
    v4 = (v4 + v21 * 4);
    v5 = (v5 + v21 * 4);
    v8 = (v8 + v21 * 4);
    v9 = (v9 + v21 * 4);
    v12 = (v12 + v21 * 4);
    v13 = (v13 + v21 * 4);
    v19 = (v19 + v21 * 4);
    v20 = (v20 + v21 * 4);
  }

  if (v18 >= 16)
  {
    v33 = 0;
    v34 = a4 - a3;
    do
    {
      result = &v4[v33];
      v35 = *&a3[v33];
      *&v4[v33] = vmulq_n_f32(v35, v6);
      *&v5[v33] = vmulq_n_f32(v35, v7);
      *&v8[v33] = vmulq_n_f32(v35, v10);
      *&v9[v33] = vmulq_n_f32(v35, v11);
      *&v12[v33] = vmulq_n_f32(v35, v14);
      *&v13[v33] = vmulq_n_f32(v35, v15);
      *&v19[v33] = vmulq_n_f32(v35, v16);
      *&v20[v33] = vmulq_n_f32(v35, v17);
      v33 += 4;
      v34 -= 16;
    }

    while (v34 > 15);
    a3 = (a3 + v33 * 4);
    v4 = (v4 + v33 * 4);
    v5 = (v5 + v33 * 4);
    v8 = (v8 + v33 * 4);
    v9 = (v9 + v33 * 4);
    v12 = (v12 + v33 * 4);
    v13 = (v13 + v33 * 4);
    v19 = (v19 + v33 * 4);
    v20 = (v20 + v33 * 4);
  }

  while (a3 < a4)
  {
    v36 = *a3++;
    *v4++ = v6 * v36;
    *v5++ = v7 * v36;
    *v8++ = v10 * v36;
    *v9++ = v11 * v36;
    *v12++ = v14 * v36;
    *v13++ = v15 * v36;
    *v19++ = v16 * v36;
    *v20++ = v17 * v36;
  }

  return result;
}

float32x4_t **sub_29AB4CE60(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = *a2;
  v6 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v7 = vaddq_f32(vmulq_n_f32(a3[1], v5), v4[1]);
      v8 = vaddq_f32(vmulq_n_f32(a3[2], v5), v4[2]);
      v9 = vaddq_f32(vmulq_n_f32(a3[3], v5), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v5), *v4);
      v4[1] = v7;
      v4[2] = v8;
      v4[3] = v9;
      a3 += 4;
      v4 += 4;
      v6 -= 64;
    }

    while (v6 > 63);
  }

  if (v6 >= 16)
  {
    v10 = a4 - a3;
    do
    {
      v11 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v11, v5));
      ++v4;
      v10 -= 16;
    }

    while (v10 > 15);
  }

  while (a3 < a4)
  {
    v12 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v5 * v12) + v4->f32[0];
    v4 = (v4 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4CF10(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v9 = *a3;
      v10 = a3[1];
      v11 = a3[2];
      v12 = a3[3];
      v13 = vaddq_f32(vmulq_n_f32(v10, v6), v4[1]);
      v14 = vaddq_f32(vmulq_n_f32(v11, v6), v4[2]);
      v15 = vaddq_f32(vmulq_n_f32(v12, v6), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v6), *v4);
      v4[1] = v13;
      v4[2] = v14;
      v4[3] = v15;
      v16 = vaddq_f32(vmulq_n_f32(v10, v7), v5[1]);
      v17 = vaddq_f32(vmulq_n_f32(v11, v7), v5[2]);
      v18 = vaddq_f32(vmulq_n_f32(v12, v7), v5[3]);
      *v5 = vaddq_f32(vmulq_n_f32(v9, v7), *v5);
      v5[1] = v16;
      v5[2] = v17;
      v5[3] = v18;
      a3 += 4;
      v4 += 4;
      v5 += 4;
      v8 -= 64;
    }

    while (v8 > 63);
  }

  if (v8 >= 16)
  {
    v19 = a4 - a3;
    do
    {
      v20 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v20, v6));
      ++v4;
      *v5 = vaddq_f32(vmulq_n_f32(v20, v7), *v5);
      ++v5;
      v19 -= 16;
    }

    while (v19 > 15);
  }

  while (a3 < a4)
  {
    v21 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v6 * v21) + v4->f32[0];
    v4 = (v4 + 4);
    v5->f32[0] = (v7 * v21) + v5->f32[0];
    v5 = (v5 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4D014(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = a2[2];
  v10 = a4 - a3;
  if ((a4 - a3) >= 64)
  {
    do
    {
      v11 = *a3;
      v12 = a3[1];
      v13 = a3[2];
      v14 = a3[3];
      v15 = vaddq_f32(vmulq_n_f32(v12, v6), v4[1]);
      v16 = vaddq_f32(vmulq_n_f32(v13, v6), v4[2]);
      v17 = vaddq_f32(vmulq_n_f32(v14, v6), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v6), *v4);
      v4[1] = v15;
      v4[2] = v16;
      v4[3] = v17;
      v18 = vaddq_f32(vmulq_n_f32(v12, v7), v5[1]);
      v19 = vaddq_f32(vmulq_n_f32(v13, v7), v5[2]);
      v20 = vaddq_f32(vmulq_n_f32(v14, v7), v5[3]);
      *v5 = vaddq_f32(vmulq_n_f32(v11, v7), *v5);
      v5[1] = v18;
      v5[2] = v19;
      v5[3] = v20;
      v21 = vaddq_f32(vmulq_n_f32(v12, v9), v8[1]);
      v22 = vaddq_f32(vmulq_n_f32(v13, v9), v8[2]);
      v23 = vaddq_f32(vmulq_n_f32(v14, v9), v8[3]);
      *v8 = vaddq_f32(vmulq_n_f32(v11, v9), *v8);
      v8[1] = v21;
      v8[2] = v22;
      v8[3] = v23;
      a3 += 4;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v24 = a4 - a3;
    do
    {
      v25 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v25, v6));
      ++v4;
      *v5 = vaddq_f32(vmulq_n_f32(v25, v7), *v5);
      ++v5;
      *v8 = vaddq_f32(vmulq_n_f32(v25, v9), *v8);
      ++v8;
      v24 -= 16;
    }

    while (v24 > 15);
  }

  while (a3 < a4)
  {
    v26 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v6 * v26) + v4->f32[0];
    v4 = (v4 + 4);
    v5->f32[0] = (v7 * v26) + v5->f32[0];
    v5 = (v5 + 4);
    v8->f32[0] = (v9 * v26) + v8->f32[0];
    v8 = (v8 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4D174(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a4 - a3;
  v11 = a2[2];
  v12 = a2[3];
  if ((a4 - a3) >= 64)
  {
    do
    {
      v13 = *a3;
      v14 = a3[1];
      v15 = a3[2];
      v16 = a3[3];
      v17 = vaddq_f32(vmulq_n_f32(v14, v6), v4[1]);
      v18 = vaddq_f32(vmulq_n_f32(v15, v6), v4[2]);
      v19 = vaddq_f32(vmulq_n_f32(v16, v6), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v6), *v4);
      v4[1] = v17;
      v4[2] = v18;
      v4[3] = v19;
      v20 = vaddq_f32(vmulq_n_f32(v14, v7), v5[1]);
      v21 = vaddq_f32(vmulq_n_f32(v15, v7), v5[2]);
      v22 = vaddq_f32(vmulq_n_f32(v16, v7), v5[3]);
      *v5 = vaddq_f32(vmulq_n_f32(v13, v7), *v5);
      v5[1] = v20;
      v5[2] = v21;
      v5[3] = v22;
      v23 = vaddq_f32(vmulq_n_f32(v14, v11), v8[1]);
      v24 = vaddq_f32(vmulq_n_f32(v15, v11), v8[2]);
      v25 = vaddq_f32(vmulq_n_f32(v16, v11), v8[3]);
      *v8 = vaddq_f32(vmulq_n_f32(v13, v11), *v8);
      v8[1] = v23;
      v8[2] = v24;
      v8[3] = v25;
      v26 = vaddq_f32(vmulq_n_f32(v14, v12), v9[1]);
      v27 = vaddq_f32(vmulq_n_f32(v15, v12), v9[2]);
      v28 = vaddq_f32(vmulq_n_f32(v16, v12), v9[3]);
      *v9 = vaddq_f32(vmulq_n_f32(v13, v12), *v9);
      v9[1] = v26;
      a3 += 4;
      v9[2] = v27;
      v9[3] = v28;
      v4 += 4;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v10 -= 64;
    }

    while (v10 > 63);
  }

  if (v10 >= 16)
  {
    v29 = a4 - a3;
    do
    {
      v30 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v30, v6));
      ++v4;
      *v5 = vaddq_f32(vmulq_n_f32(v30, v7), *v5);
      ++v5;
      *v8 = vaddq_f32(vmulq_n_f32(v30, v11), *v8);
      ++v8;
      *v9 = vaddq_f32(vmulq_n_f32(v30, v12), *v9);
      ++v9;
      v29 -= 16;
    }

    while (v29 > 15);
  }

  while (a3 < a4)
  {
    v31 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v6 * v31) + v4->f32[0];
    v4 = (v4 + 4);
    v5->f32[0] = (v7 * v31) + v5->f32[0];
    v5 = (v5 + 4);
    v8->f32[0] = (v11 * v31) + v8->f32[0];
    v8 = (v8 + 4);
    v9->f32[0] = (v12 * v31) + v9->f32[0];
    v9 = (v9 + 4);
  }

  return result;
}

float32x4_t **sub_29AB4D328(float32x4_t **result, float *a2, float32x4_t *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a4 - a3;
  v14 = result[4];
  if ((a4 - a3) >= 64)
  {
    do
    {
      v16 = *a3;
      v15 = a3[1];
      v18 = a3[2];
      v17 = a3[3];
      v19 = vaddq_f32(vmulq_n_f32(v15, v6), v4[1]);
      v20 = vaddq_f32(vmulq_n_f32(v18, v6), v4[2]);
      v21 = vaddq_f32(vmulq_n_f32(v17, v6), v4[3]);
      *v4 = vaddq_f32(vmulq_n_f32(*a3, v6), *v4);
      v4[1] = v19;
      v4[2] = v20;
      v4[3] = v21;
      v22 = vaddq_f32(vmulq_n_f32(v15, v7), v5[1]);
      v23 = vaddq_f32(vmulq_n_f32(v18, v7), v5[2]);
      v24 = vaddq_f32(vmulq_n_f32(v17, v7), v5[3]);
      *v5 = vaddq_f32(vmulq_n_f32(v16, v7), *v5);
      v5[1] = v22;
      v5[2] = v23;
      v5[3] = v24;
      v25 = vaddq_f32(vmulq_n_f32(v15, v10), v8[1]);
      v26 = vaddq_f32(vmulq_n_f32(v18, v10), v8[2]);
      v27 = vaddq_f32(vmulq_n_f32(v17, v10), v8[3]);
      *v8 = vaddq_f32(vmulq_n_f32(v16, v10), *v8);
      v8[1] = v25;
      v8[2] = v26;
      v8[3] = v27;
      v28 = vaddq_f32(vmulq_n_f32(v15, v11), v9[1]);
      v29 = vaddq_f32(vmulq_n_f32(v18, v11), v9[2]);
      v30 = vaddq_f32(vmulq_n_f32(v17, v11), v9[3]);
      *v9 = vaddq_f32(vmulq_n_f32(v16, v11), *v9);
      v9[1] = v28;
      v9[2] = v29;
      v9[3] = v30;
      v31 = vaddq_f32(vmulq_n_f32(v15, v12), v14[1]);
      v32 = vaddq_f32(vmulq_n_f32(v18, v12), v14[2]);
      v33 = vaddq_f32(vmulq_n_f32(v17, v12), v14[3]);
      *v14 = vaddq_f32(vmulq_n_f32(v16, v12), *v14);
      v14[1] = v31;
      a3 += 4;
      v4 += 4;
      v14[2] = v32;
      v14[3] = v33;
      v5 += 4;
      v8 += 4;
      v9 += 4;
      v14 += 4;
      v13 -= 64;
    }

    while (v13 > 63);
  }

  if (v13 >= 16)
  {
    v34 = a4 - a3;
    do
    {
      v35 = *a3++;
      *v4 = vaddq_f32(*v4, vmulq_n_f32(v35, v6));
      ++v4;
      *v5 = vaddq_f32(vmulq_n_f32(v35, v7), *v5);
      ++v5;
      *v8 = vaddq_f32(vmulq_n_f32(v35, v10), *v8);
      ++v8;
      *v9 = vaddq_f32(vmulq_n_f32(v35, v11), *v9);
      ++v9;
      *v14 = vaddq_f32(vmulq_n_f32(v35, v12), *v14);
      ++v14;
      v34 -= 16;
    }

    while (v34 > 15);
  }

  while (a3 < a4)
  {
    v36 = a3->f32[0];
    a3 = (a3 + 4);
    v4->f32[0] = (v6 * v36) + v4->f32[0];
    v4 = (v4 + 4);
    v5->f32[0] = (v7 * v36) + v5->f32[0];
    v5 = (v5 + 4);
    v8->f32[0] = (v10 * v36) + v8->f32[0];
    v8 = (v8 + 4);
    v9->f32[0] = (v11 * v36) + v9->f32[0];
    v9 = (v9 + 4);
    v14->f32[0] = (v12 * v36) + v14->f32[0];
    v14 = (v14 + 4);
  }

  return result;
}

float *sub_29AB4D538(float *result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = *(result + 1);
  v6 = *a2;
  v7 = a2[1];
  v8 = *(result + 2);
  v9 = *(result + 3);
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a4 - a3;
  v15 = *(result + 4);
  v16 = *(result + 5);
  if ((a4 - a3) >= 64)
  {
    v17 = 0;
    do
    {
      v18 = &v4[v17];
      v19 = &v5[v17];
      v20 = &v8[v17];
      result = &v9[v17];
      v21 = &v15[v17];
      v22 = &v16[v17];
      v24 = *&a3[v17];
      v23 = *&a3[v17 + 4];
      v26 = *&a3[v17 + 8];
      v25 = *&a3[v17 + 12];
      v27 = vaddq_f32(vmulq_n_f32(v23, v6), *&v4[v17 + 4]);
      v28 = vaddq_f32(vmulq_n_f32(v26, v6), *&v4[v17 + 8]);
      v29 = vaddq_f32(vmulq_n_f32(v25, v6), *&v4[v17 + 12]);
      *v18 = vaddq_f32(vmulq_n_f32(v24, v6), *&v4[v17]);
      v18[1] = v27;
      v18[2] = v28;
      v18[3] = v29;
      v30 = vaddq_f32(vmulq_n_f32(v23, v7), *&v5[v17 + 4]);
      v31 = vaddq_f32(vmulq_n_f32(v26, v7), *&v5[v17 + 8]);
      v32 = vaddq_f32(vmulq_n_f32(v25, v7), *&v5[v17 + 12]);
      *v19 = vaddq_f32(vmulq_n_f32(v24, v7), *&v5[v17]);
      v19[1] = v30;
      v19[2] = v31;
      v19[3] = v32;
      v33 = vaddq_f32(vmulq_n_f32(v23, v10), *&v8[v17 + 4]);
      v34 = vaddq_f32(vmulq_n_f32(v26, v10), *&v8[v17 + 8]);
      v35 = vaddq_f32(vmulq_n_f32(v25, v10), *&v8[v17 + 12]);
      *v20 = vaddq_f32(vmulq_n_f32(v24, v10), *&v8[v17]);
      v20[1] = v33;
      v20[2] = v34;
      v20[3] = v35;
      v36 = vaddq_f32(vmulq_n_f32(v23, v11), *&v9[v17 + 4]);
      v37 = vaddq_f32(vmulq_n_f32(v26, v11), *&v9[v17 + 8]);
      v38 = vaddq_f32(vmulq_n_f32(v25, v11), *&v9[v17 + 12]);
      *result = vaddq_f32(vmulq_n_f32(v24, v11), *&v9[v17]);
      *(result + 1) = v36;
      *(result + 2) = v37;
      *(result + 3) = v38;
      v39 = vaddq_f32(vmulq_n_f32(v23, v12), *&v15[v17 + 4]);
      v40 = vaddq_f32(vmulq_n_f32(v26, v12), *&v15[v17 + 8]);
      v41 = vaddq_f32(vmulq_n_f32(v25, v12), *&v15[v17 + 12]);
      *v21 = vaddq_f32(vmulq_n_f32(v24, v12), *&v15[v17]);
      v21[1] = v39;
      v21[2] = v40;
      v21[3] = v41;
      v42 = vaddq_f32(vmulq_n_f32(v23, v13), *&v16[v17 + 4]);
      v43 = vaddq_f32(vmulq_n_f32(v26, v13), *&v16[v17 + 8]);
      v44 = vaddq_f32(vmulq_n_f32(v25, v13), *&v16[v17 + 12]);
      *v22 = vaddq_f32(vmulq_n_f32(v24, v13), *&v16[v17]);
      v22[1] = v42;
      v22[2] = v43;
      v22[3] = v44;
      v17 += 16;
      v14 -= 64;
    }

    while (v14 > 63);
    a3 = (a3 + v17 * 4);
    v4 = (v4 + v17 * 4);
    v5 = (v5 + v17 * 4);
    v8 = (v8 + v17 * 4);
    v9 = (v9 + v17 * 4);
    v15 = (v15 + v17 * 4);
    v16 = (v16 + v17 * 4);
  }

  if (v14 >= 16)
  {
    v45 = 0;
    v46 = a4 - a3;
    do
    {
      v47 = *&a3[v45];
      *&v4[v45] = vaddq_f32(*&v4[v45], vmulq_n_f32(v47, v6));
      *&v5[v45] = vaddq_f32(vmulq_n_f32(v47, v7), *&v5[v45]);
      *&v8[v45] = vaddq_f32(vmulq_n_f32(v47, v10), *&v8[v45]);
      *&v9[v45] = vaddq_f32(vmulq_n_f32(v47, v11), *&v9[v45]);
      *&v15[v45] = vaddq_f32(vmulq_n_f32(v47, v12), *&v15[v45]);
      *&v16[v45] = vaddq_f32(vmulq_n_f32(v47, v13), *&v16[v45]);
      v45 += 4;
      v46 -= 16;
    }

    while (v46 > 15);
    a3 = (a3 + v45 * 4);
    v4 = (v4 + v45 * 4);
    v5 = (v5 + v45 * 4);
    v8 = (v8 + v45 * 4);
    v9 = (v9 + v45 * 4);
    v15 = (v15 + v45 * 4);
    v16 = (v16 + v45 * 4);
  }

  while (a3 < a4)
  {
    v48 = *a3++;
    *v4 = (v6 * v48) + *v4;
    ++v4;
    *v5 = (v7 * v48) + *v5;
    ++v5;
    *v8 = (v10 * v48) + *v8;
    ++v8;
    *v9 = (v11 * v48) + *v9;
    ++v9;
    *v15 = (v12 * v48) + *v15;
    ++v15;
    *v16 = (v13 * v48) + *v16;
    ++v16;
  }

  return result;
}

float **sub_29AB4D7E8(float **result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = result[4];
  v13 = result[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a4 - a3;
  v18 = result[6];
  if ((a4 - a3) >= 64)
  {
    v19 = 0;
    do
    {
      v20 = &v4[v19];
      v21 = &v5[v19];
      v22 = &v8[v19];
      v23 = &v9[v19];
      v24 = &v12[v19];
      result = &v13[v19];
      v25 = &v18[v19];
      v27 = *&a3[v19];
      v26 = *&a3[v19 + 4];
      v29 = *&a3[v19 + 8];
      v28 = *&a3[v19 + 12];
      v30 = vaddq_f32(vmulq_n_f32(v26, v6), *&v4[v19 + 4]);
      v31 = vaddq_f32(vmulq_n_f32(v29, v6), *&v4[v19 + 8]);
      v32 = vaddq_f32(vmulq_n_f32(v28, v6), *&v4[v19 + 12]);
      *v20 = vaddq_f32(vmulq_n_f32(v27, v6), *&v4[v19]);
      v20[1] = v30;
      v20[2] = v31;
      v20[3] = v32;
      v33 = vaddq_f32(vmulq_n_f32(v26, v7), *&v5[v19 + 4]);
      v34 = vaddq_f32(vmulq_n_f32(v29, v7), *&v5[v19 + 8]);
      v35 = vaddq_f32(vmulq_n_f32(v28, v7), *&v5[v19 + 12]);
      *v21 = vaddq_f32(vmulq_n_f32(v27, v7), *&v5[v19]);
      v21[1] = v33;
      v21[2] = v34;
      v21[3] = v35;
      v36 = vaddq_f32(vmulq_n_f32(v26, v10), *&v8[v19 + 4]);
      v37 = vaddq_f32(vmulq_n_f32(v29, v10), *&v8[v19 + 8]);
      v38 = vaddq_f32(vmulq_n_f32(v28, v10), *&v8[v19 + 12]);
      *v22 = vaddq_f32(vmulq_n_f32(v27, v10), *&v8[v19]);
      v22[1] = v36;
      v22[2] = v37;
      v22[3] = v38;
      v39 = vaddq_f32(vmulq_n_f32(v26, v11), *&v9[v19 + 4]);
      v40 = vaddq_f32(vmulq_n_f32(v29, v11), *&v9[v19 + 8]);
      v41 = vaddq_f32(vmulq_n_f32(v28, v11), *&v9[v19 + 12]);
      *v23 = vaddq_f32(vmulq_n_f32(v27, v11), *&v9[v19]);
      v23[1] = v39;
      v23[2] = v40;
      v23[3] = v41;
      v42 = vaddq_f32(vmulq_n_f32(v26, v14), *&v12[v19 + 4]);
      v43 = vaddq_f32(vmulq_n_f32(v29, v14), *&v12[v19 + 8]);
      v44 = vaddq_f32(vmulq_n_f32(v28, v14), *&v12[v19 + 12]);
      *v24 = vaddq_f32(vmulq_n_f32(v27, v14), *&v12[v19]);
      v24[1] = v42;
      v24[2] = v43;
      v24[3] = v44;
      v45 = vaddq_f32(vmulq_n_f32(v26, v15), *&v13[v19 + 4]);
      v46 = vaddq_f32(vmulq_n_f32(v29, v15), *&v13[v19 + 8]);
      v47 = vaddq_f32(vmulq_n_f32(v28, v15), *&v13[v19 + 12]);
      *result = vaddq_f32(vmulq_n_f32(v27, v15), *&v13[v19]);
      *(result + 1) = v45;
      *(result + 2) = v46;
      *(result + 3) = v47;
      v48 = vaddq_f32(vmulq_n_f32(v26, v16), *&v18[v19 + 4]);
      v49 = vaddq_f32(vmulq_n_f32(v29, v16), *&v18[v19 + 8]);
      v50 = vaddq_f32(vmulq_n_f32(v28, v16), *&v18[v19 + 12]);
      *v25 = vaddq_f32(vmulq_n_f32(v27, v16), *&v18[v19]);
      v25[1] = v48;
      v25[2] = v49;
      v25[3] = v50;
      v19 += 16;
      v17 -= 64;
    }

    while (v17 > 63);
    a3 = (a3 + v19 * 4);
    v4 = (v4 + v19 * 4);
    v5 = (v5 + v19 * 4);
    v8 = (v8 + v19 * 4);
    v9 = (v9 + v19 * 4);
    v12 = (v12 + v19 * 4);
    v13 = (v13 + v19 * 4);
    v18 = (v18 + v19 * 4);
  }

  if (v17 >= 16)
  {
    v51 = 0;
    v52 = a4 - a3;
    do
    {
      v53 = *&a3[v51];
      *&v4[v51] = vaddq_f32(*&v4[v51], vmulq_n_f32(v53, v6));
      *&v5[v51] = vaddq_f32(vmulq_n_f32(v53, v7), *&v5[v51]);
      *&v8[v51] = vaddq_f32(vmulq_n_f32(v53, v10), *&v8[v51]);
      *&v9[v51] = vaddq_f32(vmulq_n_f32(v53, v11), *&v9[v51]);
      *&v12[v51] = vaddq_f32(vmulq_n_f32(v53, v14), *&v12[v51]);
      *&v13[v51] = vaddq_f32(vmulq_n_f32(v53, v15), *&v13[v51]);
      *&v18[v51] = vaddq_f32(vmulq_n_f32(v53, v16), *&v18[v51]);
      v51 += 4;
      v52 -= 16;
    }

    while (v52 > 15);
    a3 = (a3 + v51 * 4);
    v4 = (v4 + v51 * 4);
    v5 = (v5 + v51 * 4);
    v8 = (v8 + v51 * 4);
    v9 = (v9 + v51 * 4);
    v12 = (v12 + v51 * 4);
    v13 = (v13 + v51 * 4);
    v18 = (v18 + v51 * 4);
  }

  while (a3 < a4)
  {
    v54 = *a3++;
    *v4 = (v6 * v54) + *v4;
    ++v4;
    *v5 = (v7 * v54) + *v5;
    ++v5;
    *v8 = (v10 * v54) + *v8;
    ++v8;
    *v9 = (v11 * v54) + *v9;
    ++v9;
    *v12 = (v14 * v54) + *v12;
    ++v12;
    *v13 = (v15 * v54) + *v13;
    ++v13;
    *v18 = (v16 * v54) + *v18;
    ++v18;
  }

  return result;
}

float **sub_29AB4DB04(float **result, float *a2, float *a3, unint64_t a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = result[2];
  v9 = result[3];
  v10 = a2[2];
  v11 = a2[3];
  v12 = result[4];
  v13 = result[5];
  v14 = a2[4];
  v15 = a2[5];
  v16 = a2[6];
  v17 = a2[7];
  v18 = a4 - a3;
  v19 = result[6];
  v20 = result[7];
  if ((a4 - a3) >= 64)
  {
    v21 = 0;
    do
    {
      v22 = &v4[v21];
      v23 = &v5[v21];
      v24 = &v8[v21];
      v25 = &v9[v21];
      v26 = &v12[v21];
      v27 = &v13[v21];
      v28 = &v19[v21];
      result = &v20[v21];
      v30 = *&a3[v21];
      v29 = *&a3[v21 + 4];
      v32 = *&a3[v21 + 8];
      v31 = *&a3[v21 + 12];
      v33 = vaddq_f32(vmulq_n_f32(v29, v6), *&v4[v21 + 4]);
      v34 = vaddq_f32(vmulq_n_f32(v32, v6), *&v4[v21 + 8]);
      v35 = vaddq_f32(vmulq_n_f32(v31, v6), *&v4[v21 + 12]);
      *v22 = vaddq_f32(vmulq_n_f32(v30, v6), *&v4[v21]);
      v22[1] = v33;
      v22[2] = v34;
      v22[3] = v35;
      v36 = vaddq_f32(vmulq_n_f32(v29, v7), *&v5[v21 + 4]);
      v37 = vaddq_f32(vmulq_n_f32(v32, v7), *&v5[v21 + 8]);
      v38 = vaddq_f32(vmulq_n_f32(v31, v7), *&v5[v21 + 12]);
      *v23 = vaddq_f32(vmulq_n_f32(v30, v7), *&v5[v21]);
      v23[1] = v36;
      v23[2] = v37;
      v23[3] = v38;
      v39 = vaddq_f32(vmulq_n_f32(v29, v10), *&v8[v21 + 4]);
      v40 = vaddq_f32(vmulq_n_f32(v32, v10), *&v8[v21 + 8]);
      v41 = vaddq_f32(vmulq_n_f32(v31, v10), *&v8[v21 + 12]);
      *v24 = vaddq_f32(vmulq_n_f32(v30, v10), *&v8[v21]);
      v24[1] = v39;
      v24[2] = v40;
      v24[3] = v41;
      v42 = vaddq_f32(vmulq_n_f32(v29, v11), *&v9[v21 + 4]);
      v43 = vaddq_f32(vmulq_n_f32(v32, v11), *&v9[v21 + 8]);
      v44 = vaddq_f32(vmulq_n_f32(v31, v11), *&v9[v21 + 12]);
      *v25 = vaddq_f32(vmulq_n_f32(v30, v11), *&v9[v21]);
      v25[1] = v42;
      v25[2] = v43;
      v25[3] = v44;
      v45 = vaddq_f32(vmulq_n_f32(v29, v14), *&v12[v21 + 4]);
      v46 = vaddq_f32(vmulq_n_f32(v32, v14), *&v12[v21 + 8]);
      v47 = vaddq_f32(vmulq_n_f32(v31, v14), *&v12[v21 + 12]);
      *v26 = vaddq_f32(vmulq_n_f32(v30, v14), *&v12[v21]);
      v26[1] = v45;
      v26[2] = v46;
      v26[3] = v47;
      v48 = vaddq_f32(vmulq_n_f32(v29, v15), *&v13[v21 + 4]);
      v49 = vaddq_f32(vmulq_n_f32(v32, v15), *&v13[v21 + 8]);
      v50 = vaddq_f32(vmulq_n_f32(v31, v15), *&v13[v21 + 12]);
      *v27 = vaddq_f32(vmulq_n_f32(v30, v15), *&v13[v21]);
      v27[1] = v48;
      v27[2] = v49;
      v27[3] = v50;
      v51 = vaddq_f32(vmulq_n_f32(v29, v16), *&v19[v21 + 4]);
      v52 = vaddq_f32(vmulq_n_f32(v32, v16), *&v19[v21 + 8]);
      v53 = vaddq_f32(vmulq_n_f32(v31, v16), *&v19[v21 + 12]);
      *v28 = vaddq_f32(vmulq_n_f32(v30, v16), *&v19[v21]);
      v28[1] = v51;
      v28[2] = v52;
      v28[3] = v53;
      v54 = vaddq_f32(vmulq_n_f32(v29, v17), *&v20[v21 + 4]);
      v55 = vaddq_f32(vmulq_n_f32(v32, v17), *&v20[v21 + 8]);
      v56 = vaddq_f32(vmulq_n_f32(v31, v17), *&v20[v21 + 12]);
      *result = vaddq_f32(vmulq_n_f32(v30, v17), *&v20[v21]);
      *(result + 1) = v54;
      *(result + 2) = v55;
      *(result + 3) = v56;
      v21 += 16;
      v18 -= 64;
    }

    while (v18 > 63);
    a3 = (a3 + v21 * 4);
    v4 = (v4 + v21 * 4);
    v5 = (v5 + v21 * 4);
    v8 = (v8 + v21 * 4);
    v9 = (v9 + v21 * 4);
    v12 = (v12 + v21 * 4);
    v13 = (v13 + v21 * 4);
    v19 = (v19 + v21 * 4);
    v20 = (v20 + v21 * 4);
  }

  if (v18 >= 16)
  {
    v57 = 0;
    v58 = a4 - a3;
    do
    {
      result = &v4[v57];
      v59 = *&a3[v57];
      *&v4[v57] = vaddq_f32(*&v4[v57], vmulq_n_f32(v59, v6));
      *&v5[v57] = vaddq_f32(vmulq_n_f32(v59, v7), *&v5[v57]);
      *&v8[v57] = vaddq_f32(vmulq_n_f32(v59, v10), *&v8[v57]);
      *&v9[v57] = vaddq_f32(vmulq_n_f32(v59, v11), *&v9[v57]);
      *&v12[v57] = vaddq_f32(vmulq_n_f32(v59, v14), *&v12[v57]);
      *&v13[v57] = vaddq_f32(vmulq_n_f32(v59, v15), *&v13[v57]);
      *&v19[v57] = vaddq_f32(vmulq_n_f32(v59, v16), *&v19[v57]);
      *&v20[v57] = vaddq_f32(vmulq_n_f32(v59, v17), *&v20[v57]);
      v57 += 4;
      v58 -= 16;
    }

    while (v58 > 15);
    a3 = (a3 + v57 * 4);
    v4 = (v4 + v57 * 4);
    v5 = (v5 + v57 * 4);
    v8 = (v8 + v57 * 4);
    v9 = (v9 + v57 * 4);
    v12 = (v12 + v57 * 4);
    v13 = (v13 + v57 * 4);
    v19 = (v19 + v57 * 4);
    v20 = (v20 + v57 * 4);
  }

  while (a3 < a4)
  {
    v60 = *a3++;
    *v4 = (v6 * v60) + *v4;
    ++v4;
    *v5 = (v7 * v60) + *v5;
    ++v5;
    *v8 = (v10 * v60) + *v8;
    ++v8;
    *v9 = (v11 * v60) + *v9;
    ++v9;
    *v12 = (v14 * v60) + *v12;
    ++v12;
    *v13 = (v15 * v60) + *v13;
    ++v13;
    *v19 = (v16 * v60) + *v19;
    ++v19;
    *v20 = (v17 * v60) + *v20;
    ++v20;
  }

  return result;
}

uint64_t sub_29AB4DE84(uint64_t a1, int *a2, int *a3, int *a4)
{
  result = sub_29AB54174(a1, "S\x80\xF6\x34nvalid width");
  if (!result)
  {
    goto LABEL_23;
  }

  if (*(a1 + 16))
  {
    v9 = *(a1 + 192);
    v10 = *(a1 + 200);
    if (v10 - v9 <= 87)
    {
      *(a1 + 192) = v10;
      (*(a1 + 24))(*(a1 + 40), (88 - (v10 - v9)));
      goto LABEL_7;
    }
  }

  else
  {
    v9 = *(a1 + 192);
  }

  *(a1 + 192) = v9 + 88;
LABEL_7:
  v11 = sub_29AB4FF24(a1);
  v12 = v11;
  if (a2)
  {
    *a2 = v11;
    v12 = 0;
  }

  v13 = sub_29AB4FF24(a1);
  if (a3)
  {
    *a3 = v13;
  }

  else
  {
    v12 = v13;
  }

  if (*(a1 + 16))
  {
    if (!(*(a1 + 32))(*(a1 + 40)))
    {
      goto LABEL_16;
    }

    if (!*(a1 + 48))
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 192) >= *(a1 + 200))
  {
LABEL_22:
    result = 0;
LABEL_23:
    *(a1 + 192) = *(a1 + 208);
    return result;
  }

LABEL_16:
  v14 = v12;
  if (a2)
  {
    v14 = *a2;
  }

  if (v14)
  {
    v15 = 0x10000000 / v14;
    if (a3)
    {
      v12 = *a3;
    }

    if (v15 < v12)
    {
      goto LABEL_22;
    }
  }

  if (!*(a1 + 16))
  {
    v16 = *(a1 + 192);
    goto LABEL_28;
  }

  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  if (v17 - v16 > 7)
  {
LABEL_28:
    *(a1 + 192) = v16 + 8;
    goto LABEL_29;
  }

  *(a1 + 192) = v17;
  (*(a1 + 24))(*(a1 + 40), (8 - (v17 - v16)));
LABEL_29:
  v18 = 0;
  v19 = (a1 + 56);
  v20 = a1 + 57;
  v21 = 11;
  do
  {
    if (!--v21)
    {
      return 0;
    }

    v23 = *(a1 + 192);
    v22 = *(a1 + 200);
    if (v23 >= v22)
    {
      if (*(a1 + 48))
      {
        v25 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v25)
        {
          v22 = &v19[v25];
          v24 = *v19;
        }

        else
        {
          v24 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v22 = (a1 + 57);
        }

        *(a1 + 192) = v20;
        *(a1 + 200) = v22;
        v23 = (a1 + 57);
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      *(a1 + 192) = v23 + 1;
      v24 = *v23++;
    }

    if (v23 >= v22)
    {
      if (*(a1 + 48))
      {
        v27 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v27)
        {
          v22 = &v19[v27];
          v26 = *v19;
        }

        else
        {
          v26 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v22 = (a1 + 57);
        }

        *(a1 + 192) = v20;
        *(a1 + 200) = v22;
        v23 = (a1 + 57);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      *(a1 + 192) = v23 + 1;
      v26 = *v23++;
    }

    if (v23 >= v22)
    {
      if (!*(a1 + 48))
      {
        goto LABEL_55;
      }

      v28 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v28)
      {
        v22 = &v19[v28];
      }

      else
      {
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v22 = (a1 + 57);
      }

      *(a1 + 200) = v22;
      v23 = (a1 + 57);
    }

    else
    {
      ++v23;
    }

    *(a1 + 192) = v23;
LABEL_55:
    if (v23 >= v22)
    {
      if (*(a1 + 48))
      {
        v30 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v30)
        {
          v22 = &v19[v30];
          v29 = *v19;
        }

        else
        {
          v29 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v22 = (a1 + 57);
        }

        *(a1 + 192) = v20;
        *(a1 + 200) = v22;
        v23 = (a1 + 57);
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      *(a1 + 192) = v23 + 1;
      v29 = *v23++;
    }

    if (*(a1 + 16))
    {
      if (!(*(a1 + 32))(*(a1 + 40)))
      {
        goto LABEL_68;
      }

      if (!*(a1 + 48))
      {
        goto LABEL_22;
      }

      v23 = *(a1 + 192);
      v22 = *(a1 + 200);
    }

    if (v23 >= v22)
    {
      goto LABEL_22;
    }

LABEL_68:
    if (v26 != 8)
    {
      goto LABEL_22;
    }

    v18 |= v29;
  }

  while (v24);
  if (a4)
  {
    if ((v18 & 0x10) != 0)
    {
      v31 = 4;
    }

    else
    {
      v31 = 3;
    }

    *a4 = v31;
  }

  return 1;
}

uint64_t sub_29AB4E24C(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v8 = *(a1 + 208);
  v9 = *(a1 + 216);
  *(a1 + 192) = v8;
  *(a1 + 200) = v9;
  if (v8 >= v9)
  {
    if (*(a1 + 48))
    {
      v12 = (a1 + 56);
      v13 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      v8 = *(a1 + 208);
      *(a1 + 184) += *(a1 + 192) - v8;
      if (v13)
      {
        v9 = &v12[v13];
        v11 = *v12;
      }

      else
      {
        v11 = 0;
        *(a1 + 48) = 0;
        v9 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v10 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v9;
    }

    else
    {
      v11 = 0;
      v10 = v8;
    }
  }

  else
  {
    v10 = v8 + 1;
    *(a1 + 192) = v8 + 1;
    v11 = *v8;
  }

  if (v10 >= v9)
  {
    if (!*(a1 + 48))
    {
LABEL_25:
      result = 0;
      v21 = *(a1 + 216);
      *(a1 + 192) = v8;
      *(a1 + 200) = v21;
      return result;
    }

    v16 = (a1 + 56);
    v17 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    v8 = *(a1 + 208);
    *(a1 + 184) += *(a1 + 192) - v8;
    if (v17)
    {
      v9 = &v16[v17];
      v15 = *v16;
    }

    else
    {
      v15 = 0;
      *(a1 + 48) = 0;
      v9 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v14 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v9;
  }

  else
  {
    v14 = v10 + 1;
    *(a1 + 192) = v10 + 1;
    v15 = *v10;
  }

  if (v11 != 80 || (v15 - 55) <= 0xFFFFFFFD)
  {
    goto LABEL_25;
  }

  if (a4)
  {
    if (v15 == 54)
    {
      v18 = 3;
    }

    else
    {
      v18 = 1;
    }

    *a4 = v18;
  }

  if (v14 >= v9)
  {
    v19 = *(a1 + 48);
    if (v19)
    {
      v22 = (a1 + 56);
      v23 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v23)
      {
        v24 = &v22[v23];
        LOBYTE(v19) = *v22;
      }

      else
      {
        LOBYTE(v19) = 0;
        *(a1 + 48) = 0;
        v24 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v24;
    }
  }

  else
  {
    *(a1 + 192) = v14 + 1;
    LOBYTE(v19) = *v14;
  }

  v30 = v19;
  sub_29AB54254(a1, &v30);
  v25 = sub_29AB5442C(a1, &v30);
  if (a2)
  {
    *a2 = v25;
  }

  if (!v25)
  {
    goto LABEL_39;
  }

  sub_29AB54254(a1, &v30);
  v26 = sub_29AB5442C(a1, &v30);
  if (a3)
  {
    *a3 = v26;
  }

  if (!v26)
  {
LABEL_39:
    v28 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v29 = "invalid width";
    goto LABEL_40;
  }

  sub_29AB54254(a1, &v30);
  v27 = sub_29AB5442C(a1, &v30);
  if (v27 >= 0x10000)
  {
    v28 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v29 = "max value > 65535";
LABEL_40:
    *v28 = v29;
    return result;
  }

  if (v27 <= 255)
  {
    return 8;
  }

  else
  {
    return 16;
  }
}

__n128 sub_29AB4E50C(__n128 *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v18[127] = *MEMORY[0x29EDCA608];
  sub_29AB54574(a1);
  if (!v8)
  {
    goto LABEL_25;
  }

  sub_29AB545CC(a1, &v17);
  if (!v17)
  {
    goto LABEL_25;
  }

  v9 = 0;
  do
  {
    if (!(v17 ^ 0x333D54414D524F46 | v18[0] ^ 0x6C725F7469622D32 | *(v18 + 7) ^ 0x656267725F656CLL))
    {
      v9 = 1;
    }

    sub_29AB545CC(a1, &v17);
  }

  while (v17);
  if (!v9)
  {
    goto LABEL_25;
  }

  sub_29AB545CC(a1, &v17);
  if (v17 != 22829 || BYTE2(v17) != 32)
  {
    goto LABEL_25;
  }

  v16 = &v17 + 3;
  v11 = strtol(&v17 + 3, &v16, 10);
  if (a3)
  {
    *a3 = v11;
  }

  v12 = v16 + 2;
  do
  {
    v13 = *(v12 - 2);
    ++v12;
  }

  while (v13 == 32);
  if (v13 == 43 && *(v12 - 2) == 88 && *(v12 - 1) == 32)
  {
    v16 = v12;
    v14 = strtol(v12, 0, 10);
    if (a2)
    {
      *a2 = v14;
    }

    if (a4)
    {
      *a4 = 3;
    }
  }

  else
  {
LABEL_25:
    result = a1[13];
    a1[12] = result;
  }

  return result;
}

uint64_t sub_29AB4E6D0(uint64_t a1, _DWORD *a2, _DWORD *a3, int *a4)
{
  v9 = *(a1 + 192);
  v8 = *(a1 + 200);
  if (v9 >= v8)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_9;
    }

    v10 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v10)
    {
      v8 = a1 + 56 + v10;
    }

    else
    {
      *(a1 + 48) = 0;
      v8 = a1 + 57;
      *(a1 + 56) = 0;
    }

    *(a1 + 200) = v8;
    v9 = (a1 + 57);
  }

  else
  {
    ++v9;
  }

  *(a1 + 192) = v9;
LABEL_9:
  if (v9 >= v8)
  {
    if (!*(a1 + 48))
    {
      v11 = 0;
      goto LABEL_18;
    }

    v12 = (a1 + 56);
    v13 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v13)
    {
      v8 = &v12[v13];
      v11 = *v12;
    }

    else
    {
      v11 = 0;
      *(a1 + 48) = 0;
      v8 = a1 + 57;
      *(a1 + 56) = 0;
    }

    v9 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v8;
  }

  else
  {
    *(a1 + 192) = v9 + 1;
    v11 = *v9++;
  }

  if (v11 >= 2)
  {
    goto LABEL_89;
  }

LABEL_18:
  if (v9 < v8)
  {
    *(a1 + 192) = v9 + 1;
    v14 = *v9++;
    if (!v11)
    {
      goto LABEL_25;
    }

LABEL_32:
    if ((v14 & 0xFFFFFFF7) != 1)
    {
      goto LABEL_89;
    }

    if (*(a1 + 16) && v8 - v9 <= 3)
    {
      *(a1 + 192) = v8;
      (*(a1 + 24))(*(a1 + 40), (4 - (v8 - v9)));
      v19 = *(a1 + 192);
      v8 = *(a1 + 200);
    }

    else
    {
      v19 = v9 + 4;
      *(a1 + 192) = v9 + 4;
    }

    if (v19 >= v8)
    {
      if (!*(a1 + 48))
      {
        goto LABEL_89;
      }

      v21 = (a1 + 56);
      v22 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v22)
      {
        v8 = &v21[v22];
        v17 = *v21;
      }

      else
      {
        v17 = 0;
        *(a1 + 48) = 0;
        v8 = a1 + 57;
        *(a1 + 56) = 0;
      }

      v20 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v8;
    }

    else
    {
      v20 = v19 + 1;
      *(a1 + 192) = v19 + 1;
      v17 = *v19;
    }

    if (v17 > 0x20 || ((1 << v17) & 0x101018100) == 0)
    {
      goto LABEL_89;
    }

    if (*(a1 + 16) && v8 - v20 <= 3)
    {
      *(a1 + 192) = v8;
      (*(a1 + 24))(*(a1 + 40), (4 - (v8 - v20)));
      goto LABEL_51;
    }

    v18 = v20 + 4;
LABEL_50:
    *(a1 + 192) = v18;
    goto LABEL_51;
  }

  if (!*(a1 + 48))
  {
    v14 = 0;
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  v15 = (a1 + 56);
  v16 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
  *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
  if (v16)
  {
    v8 = &v15[v16];
    v14 = *v15;
  }

  else
  {
    v14 = 0;
    *(a1 + 48) = 0;
    v8 = a1 + 57;
    *(a1 + 56) = 0;
  }

  v9 = (a1 + 57);
  *(a1 + 192) = a1 + 57;
  *(a1 + 200) = v8;
  if (v11)
  {
    goto LABEL_32;
  }

LABEL_25:
  if ((v14 & 0xF6) != 2)
  {
    goto LABEL_89;
  }

  if (!*(a1 + 16) || v8 - v9 > 8)
  {
    v17 = 0;
    v18 = v9 + 9;
    goto LABEL_50;
  }

  *(a1 + 192) = v8;
  (*(a1 + 24))(*(a1 + 40), (9 - (v8 - v9)));
  v17 = 0;
LABEL_51:
  result = sub_29AB538DC(a1);
  if (!result)
  {
    goto LABEL_90;
  }

  v24 = result;
  result = sub_29AB538DC(a1);
  if (!result)
  {
    goto LABEL_90;
  }

  v25 = result;
  v27 = *(a1 + 192);
  v26 = *(a1 + 200);
  if (v27 >= v26)
  {
    if (*(a1 + 48))
    {
      v29 = (a1 + 56);
      v30 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v30)
      {
        v26 = &v29[v30];
        v28 = *v29;
      }

      else
      {
        v28 = 0;
        *(a1 + 48) = 0;
        v26 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v27 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v26;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v27 + 1;
    v28 = *v27++;
  }

  if (v27 >= v26)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_69;
    }

    v32 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v32)
    {
      v33 = a1 + 56 + v32;
    }

    else
    {
      *(a1 + 48) = 0;
      v33 = a1 + 57;
      *(a1 + 56) = 0;
    }

    *(a1 + 200) = v33;
    v31 = (a1 + 57);
  }

  else
  {
    v31 = v27 + 1;
  }

  *(a1 + 192) = v31;
LABEL_69:
  if (!v17)
  {
    if (v28 > 15)
    {
      if (v28 == 32 || v28 == 24)
      {
        v34 = v28 >> 3;
        goto LABEL_94;
      }

      if (v28 == 16)
      {
        if ((v14 & 0xFFFFFFF7) == 3)
        {
          v34 = 2;
        }

        else
        {
          v34 = 3;
        }

        goto LABEL_94;
      }

      goto LABEL_89;
    }

    if (v28 != 8)
    {
      if (v28 == 15)
      {
        goto LABEL_86;
      }

      goto LABEL_89;
    }

LABEL_92:
    v34 = 1;
    goto LABEL_94;
  }

  if (v28 != 8 && v28 != 16)
  {
    goto LABEL_89;
  }

  if (v17 <= 15)
  {
    if (v17 != 8)
    {
      if (v17 == 15)
      {
        goto LABEL_86;
      }

LABEL_89:
      result = 0;
LABEL_90:
      *(a1 + 192) = *(a1 + 208);
      return result;
    }

    goto LABEL_92;
  }

  if (v17 == 32 || v17 == 24)
  {
    v34 = v17 >> 3;
    goto LABEL_94;
  }

  if (v17 != 16)
  {
    goto LABEL_89;
  }

LABEL_86:
  v34 = 3;
LABEL_94:
  if (a2)
  {
    *a2 = v24;
  }

  if (a3)
  {
    *a3 = v25;
  }

  if (a4)
  {
    *a4 = v34;
  }

  return 1;
}

uint64_t sub_29AB4EBFC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1 + 2048;
  a1[2313] = 0xFFFFFFFF00000000;
  *(a1 + 18472) = -1;
  if (sub_29AB4ED4C(a1) == 216)
  {
    if (v2 == 1)
    {
      return 1;
    }

    v8 = sub_29AB4ED4C(a1);
    if (v8 == 194)
    {
      goto LABEL_17;
    }

LABEL_8:
    if ((v8 & 0xFE) == 0xC0)
    {
LABEL_17:
      *(v4 + 524) = v8 == 194;

      return sub_29AB4F744(a1, v2);
    }

    else
    {
      result = sub_29AB4EEAC(a1, v8);
      if (result)
      {
        while (1)
        {
          while (1)
          {
            v9 = sub_29AB4ED4C(a1);
            if (v9 != 255)
            {
              v8 = v9;
              if (v9 != 194)
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }

            v10 = *a1;
            if (*(*a1 + 16))
            {
              break;
            }

LABEL_14:
            if (*(v10 + 192) >= *(v10 + 200))
            {
LABEL_20:
              v6 = off_2A1B71BE0(off_2A1B71BE0);
              result = 0;
              v7 = "no SOF";
              goto LABEL_5;
            }
          }

          if ((*(v10 + 32))(*(v10 + 40)))
          {
            if (!*(v10 + 48))
            {
              goto LABEL_20;
            }

            goto LABEL_14;
          }
        }
      }
    }
  }

  else
  {
    v6 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v7 = "no SOI";
LABEL_5:
    *v6 = v7;
  }

  return result;
}

uint64_t sub_29AB4ED4C(unsigned __int8 *a1)
{
  result = a1[18472];
  if (result != 255)
  {
    a1[18472] = -1;
    return result;
  }

  v3 = *a1;
  v4 = *(*a1 + 192);
  if (v4 >= *(*a1 + 200))
  {
    if (!*(v3 + 48))
    {
      return 255;
    }

    v6 = (v3 + 56);
    v7 = (*(v3 + 16))(*(v3 + 40), v3 + 56, *(v3 + 52));
    *(v3 + 184) += *(v3 + 192) - *(v3 + 208);
    if (v7)
    {
      v8 = &v6[v7];
      v5 = *v6;
    }

    else
    {
      v5 = 0;
      *(v3 + 48) = 0;
      v8 = (v3 + 57);
      *(v3 + 56) = 0;
    }

    *(v3 + 192) = v3 + 57;
    *(v3 + 200) = v8;
  }

  else
  {
    *(v3 + 192) = v4 + 1;
    v5 = *v4;
  }

  if (v5 != 255)
  {
    return 255;
  }

  while (1)
  {
    v9 = *a1;
    v10 = *(*a1 + 192);
    if (v10 >= *(*a1 + 200))
    {
      break;
    }

    *(v9 + 192) = v10 + 1;
    result = *v10;
LABEL_18:
    if (result != 255)
    {
      return result;
    }
  }

  if (*(v9 + 48))
  {
    v11 = (v9 + 56);
    result = (*(v9 + 16))(*(v9 + 40), v9 + 56, *(v9 + 52));
    *(v9 + 184) += *(v9 + 192) - *(v9 + 208);
    if (result)
    {
      v12 = &v11[result];
      result = *v11;
    }

    else
    {
      *(v9 + 48) = 0;
      v12 = (v9 + 57);
      *(v9 + 56) = 0;
    }

    *(v9 + 192) = v9 + 57;
    *(v9 + 200) = v12;
    goto LABEL_18;
  }

  return 0;
}

BOOL sub_29AB4EEAC(uint64_t *a1, int a2)
{
  v89 = *MEMORY[0x29EDCA608];
  v4 = a1 + 2048;
  if (a2 > 220)
  {
    if (a2 == 221)
    {
      if (sub_29AB4FF24(*a1) != 4)
      {
        v76 = off_2A1B71BE0(off_2A1B71BE0);
        result = 0;
        v78 = "bad DRI len";
        goto LABEL_141;
      }

      v4[538] = sub_29AB4FF24(*a1);
      return 1;
    }

    if (a2 == 255)
    {
      v76 = off_2A1B71BE0(off_2A1B71BE0);
      result = 0;
      v78 = "expected marker";
      goto LABEL_141;
    }

LABEL_40:
    if (a2 != 254 && (a2 & 0xFFFFFFF0) != 0xE0)
    {
      v76 = off_2A1B71BE0(off_2A1B71BE0);
      result = 0;
      v78 = "unknown marker";
      goto LABEL_141;
    }

    v65 = sub_29AB4FF24(*a1);
    if (v65 <= 1)
    {
      v76 = off_2A1B71BE0(off_2A1B71BE0);
      result = 0;
      if (a2 == 254)
      {
        v78 = "bad COM len";
      }

      else
      {
        v78 = "bad APP len";
      }

LABEL_141:
      *v76 = v78;
      return result;
    }

    v66 = v65;
    if (a2 == 224 && (v67 = v65 - 7, v65 >= 7))
    {
      v68 = 0;
      v69 = 1;
      do
      {
        v70 = *a1;
        v71 = *(*a1 + 192);
        if (v71 >= *(*a1 + 200))
        {
          v72 = *(v70 + 48);
          if (v72)
          {
            v73 = (v70 + 56);
            v74 = (*(v70 + 16))(*(v70 + 40), v70 + 56, *(v70 + 52));
            *(v70 + 184) += *(v70 + 192) - *(v70 + 208);
            if (v74)
            {
              v75 = &v73[v74];
              v72 = *v73;
            }

            else
            {
              v72 = 0;
              *(v70 + 48) = 0;
              v75 = (v70 + 57);
              *(v70 + 56) = 0;
            }

            *(v70 + 192) = v70 + 57;
            *(v70 + 200) = v75;
          }
        }

        else
        {
          *(v70 + 192) = v71 + 1;
          v72 = *v71;
        }

        if (v72 != aJfif_0[v68])
        {
          v69 = 0;
        }

        ++v68;
      }

      while (v68 != 5);
      if (v69)
      {
        v4[530] = 1;
      }
    }

    else
    {
      v67 = v65 - 2;
      if (a2 == 238 && v65 >= 0xE)
      {
        v79 = 0;
        v80 = 1;
        do
        {
          v81 = *a1;
          v82 = *(*a1 + 192);
          if (v82 >= *(*a1 + 200))
          {
            v83 = *(v81 + 48);
            if (v83)
            {
              v84 = (v81 + 56);
              v85 = (*(v81 + 16))(*(v81 + 40), v81 + 56, *(v81 + 52));
              *(v81 + 184) += *(v81 + 192) - *(v81 + 208);
              if (v85)
              {
                v86 = &v84[v85];
                v83 = *v84;
              }

              else
              {
                v83 = 0;
                *(v81 + 48) = 0;
                v86 = (v81 + 57);
                *(v81 + 56) = 0;
              }

              *(v81 + 192) = v81 + 57;
              *(v81 + 200) = v86;
            }
          }

          else
          {
            *(v81 + 192) = v82 + 1;
            v83 = *v82;
          }

          if (v83 != aAdobe_0[v79])
          {
            v80 = 0;
          }

          ++v79;
        }

        while (v79 != 6);
        if (v80)
        {
          sub_29AB4FE84(*a1);
          sub_29AB4FF24(*a1);
          sub_29AB4FF24(*a1);
          v4[531] = sub_29AB4FE84(*a1);
          v67 = v66 - 14;
        }

        else
        {
          v67 = v66 - 8;
        }
      }
    }

    sub_29AB50224(*a1, v67);
    return 1;
  }

  if (a2 != 196)
  {
    if (a2 == 219)
    {
      v5 = sub_29AB4FF24(*a1);
      v6 = v5 - 2;
      if (v5 >= 3)
      {
        do
        {
          v7 = *a1;
          v8 = *(*a1 + 192);
          if (v8 >= *(*a1 + 200))
          {
            v10 = *(v7 + 48);
            if (!v10)
            {
              v14 = 0;
              goto LABEL_19;
            }

            v11 = (v7 + 56);
            v12 = (*(v7 + 16))(*(v7 + 40), v7 + 56, *(v7 + 52));
            *(v7 + 184) += *(v7 + 192) - *(v7 + 208);
            if (v12)
            {
              v13 = &v11[v12];
              v9 = *v11;
            }

            else
            {
              v9 = 0;
              *(v7 + 48) = 0;
              v13 = (v7 + 57);
              *(v7 + 56) = 0;
            }

            *(v7 + 192) = v7 + 57;
            *(v7 + 200) = v13;
          }

          else
          {
            *(v7 + 192) = v8 + 1;
            v9 = *v8;
          }

          v14 = v9 > 0xF;
          if (v9 >= 0x10 && (v9 & 0xF0) != 16)
          {
            v76 = off_2A1B71BE0(off_2A1B71BE0);
            result = 0;
            v78 = "bad DQT type";
            goto LABEL_141;
          }

          v10 = v9 & 0xF;
          if (v10 > 3)
          {
            v76 = off_2A1B71BE0(off_2A1B71BE0);
            result = 0;
            v78 = "bad DQT table";
            goto LABEL_141;
          }

LABEL_19:
          v16 = 0;
          v17 = &a1[16 * v10 + 1681];
          do
          {
            v18 = *a1;
            if (v14)
            {
              LOWORD(v19) = sub_29AB4FF24(*a1);
            }

            else
            {
              v20 = *(v18 + 192);
              if (v20 >= *(v18 + 200))
              {
                if (*(v18 + 48))
                {
                  v21 = (v18 + 56);
                  v19 = (*(v18 + 16))(*(v18 + 40), v18 + 56, *(v18 + 52));
                  *(v18 + 184) += *(v18 + 192) - *(v18 + 208);
                  if (v19)
                  {
                    v22 = &v21[v19];
                    LOWORD(v19) = *v21;
                  }

                  else
                  {
                    *(v18 + 48) = 0;
                    v22 = (v18 + 57);
                    *(v18 + 56) = 0;
                  }

                  *(v18 + 192) = v18 + 57;
                  *(v18 + 200) = v22;
                }

                else
                {
                  LOWORD(v19) = 0;
                }
              }

              else
              {
                *(v18 + 192) = v20 + 1;
                LOWORD(v19) = *v20;
              }
            }

            *(v17 + byte_29B6C3784[v16++]) = v19;
          }

          while (v16 != 64);
          if (v14)
          {
            v23 = -129;
          }

          else
          {
            v23 = -65;
          }

          v24 = __OFADD__(v23, v6);
          v6 += v23;
        }

        while (!((v6 < 0) ^ v24 | (v6 == 0)));
      }

      return v6 == 0;
    }

    goto LABEL_40;
  }

  v26 = sub_29AB4FF24(*a1);
  v27 = v26 - 2;
  if (v26 < 3)
  {
    return v27 == 0;
  }

  v87 = a1 + 841;
  while (1)
  {
    v28 = *a1;
    v29 = *(*a1 + 192);
    if (v29 >= *(*a1 + 200))
    {
      if (*(v28 + 48))
      {
        v31 = (v28 + 56);
        v32 = (*(v28 + 16))(*(v28 + 40), v28 + 56, *(v28 + 52));
        *(v28 + 184) += *(v28 + 192) - *(v28 + 208);
        if (v32)
        {
          v33 = &v31[v32];
          v30 = *v31;
        }

        else
        {
          v30 = 0;
          *(v28 + 48) = 0;
          v33 = (v28 + 57);
          *(v28 + 56) = 0;
        }

        *(v28 + 192) = v28 + 57;
        *(v28 + 200) = v33;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      *(v28 + 192) = v29 + 1;
      v30 = *v29;
    }

    if (v30 > 0x1F)
    {
      break;
    }

    v34 = v30 & 0xF;
    if (v34 > 3)
    {
      break;
    }

    v35 = 0;
    LODWORD(v36) = 0;
    do
    {
      v37 = *a1;
      v38 = *(*a1 + 192);
      if (v38 >= *(*a1 + 200))
      {
        v39 = *(v37 + 48);
        if (v39)
        {
          v40 = (v37 + 56);
          v41 = (*(v37 + 16))(*(v37 + 40), v37 + 56, *(v37 + 52));
          *(v37 + 184) += *(v37 + 192) - *(v37 + 208);
          if (v41)
          {
            v42 = &v40[v41];
            v39 = *v40;
          }

          else
          {
            v39 = 0;
            *(v37 + 48) = 0;
            v42 = (v37 + 57);
            *(v37 + 56) = 0;
          }

          *(v37 + 192) = v37 + 57;
          *(v37 + 200) = v42;
        }
      }

      else
      {
        *(v37 + 192) = v38 + 1;
        v39 = *v38;
      }

      *&v88[v35] = v39;
      v36 = (v36 + v39);
      v35 += 4;
    }

    while (v35 != 64);
    if (v36 > 0x100)
    {
      break;
    }

    if (v30 > 0xF)
    {
      if (!sub_29AB50050(&v87[210 * (v30 & 0xF)], v88))
      {
        return 0;
      }

      v43 = 6728;
      if (v36)
      {
LABEL_71:
        v44 = v43 + 1680 * (v30 & 0xF) + 1024;
        v45 = v36;
        do
        {
          v46 = *a1;
          v47 = *(*a1 + 192);
          if (v47 >= *(*a1 + 200))
          {
            LODWORD(v47) = *(v46 + 48);
            if (v47)
            {
              v48 = (v46 + 56);
              v49 = (*(v46 + 16))(*(v46 + 40), v46 + 56, *(v46 + 52));
              *(v46 + 184) += *(v46 + 192) - *(v46 + 208);
              if (v49)
              {
                v50 = &v48[v49];
                LOBYTE(v47) = *v48;
              }

              else
              {
                LOBYTE(v47) = 0;
                *(v46 + 48) = 0;
                v50 = (v46 + 57);
                *(v46 + 56) = 0;
              }

              *(v46 + 192) = v46 + 57;
              *(v46 + 200) = v50;
            }
          }

          else
          {
            *(v46 + 192) = v47 + 1;
            LOBYTE(v47) = *v47;
          }

          *(a1 + v44++) = v47;
          --v45;
        }

        while (v45);
      }
    }

    else
    {
      if (!sub_29AB50050(&a1[210 * (v30 & 0xF) + 1], v88))
      {
        return 0;
      }

      v43 = 8;
      if (v36)
      {
        goto LABEL_71;
      }
    }

    if (v30 >= 0x10)
    {
      v51 = 0;
      v52 = &a1[128 * v34 + 1745];
      v53 = &v87[210 * (v30 & 0xF)];
      do
      {
        v54 = *(v53 + v51);
        *(v52 + v51) = 0;
        if (v54 != 255)
        {
          v55 = *(v53 + v54 + 1024);
          v56 = v55 & 0xF;
          v57 = *(v53 + v54 + 1280);
          v58 = (v55 & 0xF) + v57;
          if ((v55 & 0xF) != 0 && v58 <= 9)
          {
            v60 = v51 << v57;
            v61 = (v60 & 0x1FF) >> (9 - v56);
            v62 = -1 << v56;
            v63 = (v60 & 0x100) != 0 ? 0 : v62 + 1;
            v64 = v63 + v61;
            if (v64 == v64)
            {
              *(v52 + v51) = v55 & 0xF0 | (v64 << 8) | v58;
            }
          }
        }

        ++v51;
      }

      while (v51 != 512);
    }

    v27 = v27 - 17 - v36;
    if (v27 <= 0)
    {
      return v27 == 0;
    }
  }

  *off_2A1B71BE0(off_2A1B71BE0) = "bad DHT header";
  return 0;
}

uint64_t sub_29AB4F744(int **a1, int a2)
{
  v4 = *a1;
  v5 = sub_29AB4FF24(*a1);
  if (v5 <= 0xA)
  {
    goto LABEL_2;
  }

  v9 = v5;
  v10 = *(v4 + 192);
  if (v10 >= *(v4 + 200))
  {
    if (!*(v4 + 48))
    {
LABEL_15:
      v6 = off_2A1B71BE0(off_2A1B71BE0);
      result = 0;
      v8 = "only 8-bit";
      goto LABEL_78;
    }

    v12 = (v4 + 56);
    v13 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
    *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
    if (v13)
    {
      v14 = &v12[v13];
      v11 = *v12;
    }

    else
    {
      v11 = 0;
      *(v4 + 48) = 0;
      v14 = (v4 + 57);
      *(v4 + 56) = 0;
    }

    *(v4 + 192) = v4 + 57;
    *(v4 + 200) = v14;
  }

  else
  {
    *(v4 + 192) = v10 + 1;
    v11 = *v10;
  }

  if (v11 != 8)
  {
    goto LABEL_15;
  }

  v15 = sub_29AB4FF24(v4);
  *(v4 + 4) = v15;
  if (!v15)
  {
    v6 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v8 = "no header height";
    goto LABEL_78;
  }

  v16 = sub_29AB4FF24(v4);
  *v4 = v16;
  if (!v16)
  {
    v6 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v8 = "0 width";
    goto LABEL_78;
  }

  if (*(v4 + 4) >= 0x1000001u)
  {
LABEL_14:
    v6 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v8 = "too large";
    goto LABEL_78;
  }

  v18 = *(v4 + 192);
  v17 = *(v4 + 200);
  if (v18 >= v17)
  {
    if (!*(v4 + 48))
    {
LABEL_64:
      v6 = off_2A1B71BE0(off_2A1B71BE0);
      result = 0;
      v8 = "bad component count";
      goto LABEL_78;
    }

    v20 = v4 + 56;
    v21 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
    *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
    if (v21)
    {
      v17 = (v20 + v21);
      LODWORD(v20) = *v20;
    }

    else
    {
      LODWORD(v20) = 0;
      *(v4 + 48) = 0;
      v17 = (v4 + 57);
      *(v4 + 56) = 0;
    }

    v19 = (v4 + 57);
    *(v4 + 192) = v4 + 57;
    *(v4 + 200) = v17;
  }

  else
  {
    v19 = v18 + 1;
    *(v4 + 192) = v18 + 1;
    LODWORD(v20) = *v18;
  }

  if (v20 > 4 || ((1 << v20) & 0x1A) == 0)
  {
    goto LABEL_64;
  }

  *(v4 + 8) = v20;
  v23 = v20;
  v24 = a1 + 2269;
  do
  {
    *(v24 - 3) = 0;
    *v24 = 0;
    v24 += 12;
    --v23;
  }

  while (v23);
  if (v9 != 3 * v20 + 8)
  {
LABEL_2:
    v6 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v8 = "bad SOF len";
    goto LABEL_78;
  }

  v25 = 0;
  *(a1 + 4628) = 0;
  v26 = (v4 + 56);
  v27 = v4 + 57;
  v28 = a1 + 4523;
  while (1)
  {
    if (v19 >= v17)
    {
      v29 = *(v4 + 48);
      if (v29)
      {
        v30 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
        *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
        if (v30)
        {
          v17 = &v26[v30];
          v29 = *v26;
        }

        else
        {
          v29 = 0;
          *(v4 + 48) = 0;
          *(v4 + 56) = 0;
          v17 = (v4 + 57);
        }

        *(v4 + 192) = v27;
        *(v4 + 200) = v17;
        v19 = (v4 + 57);
        LODWORD(v20) = *(v4 + 8);
      }
    }

    else
    {
      *(v4 + 192) = v19 + 1;
      v29 = *v19++;
    }

    *(v28 - 3) = v29;
    if (v20 == 3 && v29 == byte_29B6C37D3[v25])
    {
      ++*(a1 + 4628);
    }

    if (v19 >= v17)
    {
      if (!*(v4 + 48))
      {
        *(v28 - 2) = 0;
        goto LABEL_67;
      }

      v32 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
      *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
      if (v32)
      {
        v17 = &v26[v32];
        v31 = *v26;
      }

      else
      {
        v31 = 0;
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        v17 = (v4 + 57);
      }

      *(v4 + 192) = v27;
      *(v4 + 200) = v17;
      v19 = (v4 + 57);
    }

    else
    {
      *(v4 + 192) = v19 + 1;
      v31 = *v19++;
    }

    *(v28 - 2) = v31 >> 4;
    if (v31 - 80 <= 0xFFFFFFBF)
    {
      goto LABEL_67;
    }

    v33 = v31 & 0xF;
    *(v28 - 1) = v33;
    if ((v33 - 5) <= 0xFFFFFFFB)
    {
      break;
    }

    if (v19 < v17)
    {
      *(v4 + 192) = v19 + 1;
      v34 = *v19++;
      goto LABEL_60;
    }

    if (*(v4 + 48))
    {
      v35 = (*(v4 + 16))(*(v4 + 40), v4 + 56, *(v4 + 52));
      *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
      if (v35)
      {
        v17 = &v26[v35];
        v34 = *v26;
      }

      else
      {
        v34 = 0;
        *(v4 + 48) = 0;
        *(v4 + 56) = 0;
        v17 = (v4 + 57);
      }

      *(v4 + 192) = v27;
      *(v4 + 200) = v17;
      v19 = (v4 + 57);
LABEL_60:
      *v28 = v34;
      if (v34 >= 4)
      {
        v6 = off_2A1B71BE0(off_2A1B71BE0);
        result = 0;
        v8 = "bad TQ";
        goto LABEL_78;
      }

      goto LABEL_61;
    }

    *v28 = 0;
LABEL_61:
    ++v25;
    v20 = *(v4 + 8);
    v28 += 24;
    if (v25 >= v20)
    {
      if (a2)
      {
        return 1;
      }

      v60 = *(v4 + 4);
      v61 = *v4;
      if (!sub_29AB50270(*v4, v60, v20, 0))
      {
        goto LABEL_14;
      }

      if (v20 < 1)
      {
        v37 = 0x100000001;
LABEL_80:
        a1[2257] = v37;
        v42 = vshl_n_s32(v37, 3uLL);
        a1[2259] = v42;
        v59 = (v61 + v42 - 1) / v42;
        *(a1 + 4516) = v59;
        v58 = (v60 + HIDWORD(v42) - 1) / HIDWORD(v42);
        *(a1 + 4517) = v58;
        if (v20 >= 1)
        {
          v43 = 0;
          v44 = v37;
          v57 = v37.i32[0] - 1;
          v56 = v37.i32[1] - 1;
          v45 = 1;
          for (i = 18084; ; i += 96)
          {
            v47 = (a1 + i);
            v48 = *(a1 + i);
            v49 = *(a1 + i + 4);
            v47[6] = (v57 + v48 * v61) / v44.i32[0];
            v47[7] = (v56 + v49 * v60) / v44.i32[1];
            v50 = v48 * v59;
            v51 = v49 * v58;
            v47[8] = 8 * v48 * v59;
            v47[9] = 8 * v49 * v58;
            v52 = &a1[v43];
            v53 = sub_29AB502C8(8 * v48 * v59, 8 * v49 * v58, 15);
            v52[2268] = 0;
            v52[2270] = 0;
            v52[2269] = 0;
            v52[2267] = v53;
            if (!v53)
            {
              break;
            }

            v52[2266] = ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
            if (*(a1 + 4620))
            {
              v54 = a1 + i;
              *(v54 + 21) = v50;
              *(v54 + 22) = v51;
              v55 = sub_29AB5037C(8 * v50, 8 * v51, 2u, 15);
              v52[2268] = v55;
              if (!v55)
              {
                break;
              }

              v52[2270] = ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
            }

            ++v45;
            v43 += 12;
            result = 1;
            if (12 * v20 == v43)
            {
              return result;
            }
          }

          *off_2A1B71BE0(off_2A1B71BE0) = "outofmem";
          sub_29AB50308(a1, v45);
          return 0;
        }

        return 1;
      }

      v36 = (a1 + 18084);
      v37 = 0x100000001;
      v38 = v20;
      do
      {
        v39 = *v36;
        v36 += 12;
        v37 = vmax_s32(v39, v37);
        --v38;
      }

      while (v38);
      v40 = a1 + 2261;
      v41 = v20;
      while (!(v37.i32[0] % *(v40 - 1)))
      {
        if (v37.i32[1] % *v40)
        {
          goto LABEL_77;
        }

        v40 += 12;
        if (!--v41)
        {
          goto LABEL_80;
        }
      }

LABEL_67:
      v6 = off_2A1B71BE0(off_2A1B71BE0);
      result = 0;
      v8 = "bad H";
      goto LABEL_78;
    }
  }

LABEL_77:
  v6 = off_2A1B71BE0(off_2A1B71BE0);
  result = 0;
  v8 = "bad V";
LABEL_78:
  *v6 = v8;
  return result;
}

uint64_t sub_29AB4FE84(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2 >= *(a1 + 200))
  {
    if (*(a1 + 48))
    {
      v4 = (a1 + 56);
      result = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (result)
      {
        v5 = &v4[result];
        result = *v4;
      }

      else
      {
        *(a1 + 48) = 0;
        v5 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 192) = v2 + 1;
    return *v2;
  }

  return result;
}

uint64_t sub_29AB4FF24(uint64_t a1)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  if (v3 >= v2)
  {
    if (*(a1 + 48))
    {
      v5 = (a1 + 56);
      v6 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v6)
      {
        v2 = &v5[v6];
        v4 = *v5;
      }

      else
      {
        v4 = 0;
        *(a1 + 48) = 0;
        v2 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v3 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v4 = *v3++;
  }

  if (v3 >= v2)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = (a1 + 56);
      v9 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v9)
      {
        v10 = &v8[v9];
        v7 = *v8;
      }

      else
      {
        v7 = 0;
        *(a1 + 48) = 0;
        v10 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v10;
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v7 = *v3;
  }

  return v7 | (v4 << 8);
}

uint64_t sub_29AB50050(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 1280;
  while (*(a2 + 4 * v2) < 1)
  {
LABEL_10:
    if (++v2 == 16)
    {
      v8 = 0;
      v9 = 0;
      *(v4 + v3) = 0;
      v10 = a1 + 512;
      v11 = 1;
      while (1)
      {
        *(a1 + 1612 + 4 * v11) = v9 - v8;
        if (v11 == *(v4 + v9))
        {
          v12 = (v10 + 2 * v9);
          v13 = (a1 + 1281 + v9);
          do
          {
            *v12++ = v8++;
            v14 = *v13++;
            ++v9;
          }

          while (v11 == v14);
          if ((v8 - 1) >> v11)
          {
            break;
          }
        }

        *(a1 + 1540 + 4 * v11) = v8 << (16 - v11);
        v8 *= 2;
        if (++v11 == 17)
        {
          *(a1 + 1608) = -1;
          *&v15 = -1;
          *(&v15 + 1) = -1;
          *a1 = v15;
          *(a1 + 16) = v15;
          *(a1 + 32) = v15;
          *(a1 + 48) = v15;
          *(a1 + 64) = v15;
          *(a1 + 80) = v15;
          *(a1 + 96) = v15;
          *(a1 + 112) = v15;
          *(a1 + 128) = v15;
          *(a1 + 144) = v15;
          *(a1 + 160) = v15;
          *(a1 + 176) = v15;
          *(a1 + 192) = v15;
          *(a1 + 208) = v15;
          *(a1 + 224) = v15;
          *(a1 + 240) = v15;
          *(a1 + 256) = v15;
          *(a1 + 272) = v15;
          *(a1 + 288) = v15;
          *(a1 + 304) = v15;
          *(a1 + 320) = v15;
          *(a1 + 336) = v15;
          *(a1 + 352) = v15;
          *(a1 + 368) = v15;
          *(a1 + 384) = v15;
          *(a1 + 400) = v15;
          *(a1 + 416) = v15;
          *(a1 + 432) = v15;
          *(a1 + 448) = v15;
          *(a1 + 464) = v15;
          *(a1 + 480) = v15;
          *(a1 + 496) = v15;
          if (v9 < 1)
          {
            return 1;
          }

          v16 = 0;
          v17 = v9;
          do
          {
            v18 = *(v4 + v16);
            if (v18 <= 9)
            {
              v19 = 9 - v18;
              v20 = (a1 + (*(v10 + 2 * v16) << v19));
              v21 = 1;
              do
              {
                *v20++ = v16;
              }

              while (!(v21++ >> v19));
            }

            ++v16;
            v23 = 1;
          }

          while (v16 != v17);
          return v23;
        }
      }

      goto LABEL_24;
    }
  }

  v5 = 0;
  if (v3 <= 256)
  {
    v6 = 256;
  }

  else
  {
    v6 = v3;
  }

  v7 = v3 - v6;
  while (1)
  {
    *(v4 + v3 + v5) = v2 + 1;
    if (!(v7 + v5))
    {
      break;
    }

    if (++v5 >= *(a2 + 4 * v2))
    {
      v3 += v5;
      goto LABEL_10;
    }
  }

LABEL_24:
  v24 = off_2A1B71BE0(off_2A1B71BE0);
  v23 = 0;
  *v24 = v25;
  return v23;
}

uint64_t sub_29AB50224(uint64_t result, int a2)
{
  if (a2)
  {
    if (a2 < 0)
    {
      v4 = *(result + 200);
    }

    else
    {
      if (*(result + 16))
      {
        v2 = *(result + 192);
        v3 = *(result + 200);
        if (a2 > v3 - v2)
        {
          *(result + 192) = v3;
          return (*(result + 24))(*(result + 40), (a2 - (v3 - v2)));
        }
      }

      else
      {
        v2 = *(result + 192);
      }

      v4 = v2 + a2;
    }

    *(result + 192) = v4;
  }

  return result;
}

BOOL sub_29AB50270(signed int a1, unsigned int a2, unsigned int a3, int a4)
{
  if (((a2 | a1) & 0x80000000) != 0 || a2 && (0x7FFFFFFF / a2) < a1)
  {
    return 0;
  }

  v4 = a2 * a1;
  return (((a2 * a1) | a3) & 0x80000000) == 0 && (!a3 || (0x7FFFFFFF / a3) >= v4) && (a4 ^ 0x7FFFFFFF) >= (v4 * a3);
}

void *sub_29AB502C8(signed int a1, unsigned int a2, int a3)
{
  if (((a2 | a1) & 0x80000000) != 0 || a2 && (0x7FFFFFFF / a2) < a1 || (a3 ^ 0x7FFFFFFF) < (a2 * a1))
  {
    return 0;
  }

  else
  {
    return malloc((a2 * a1 + a3));
  }
}

void sub_29AB50308(uint64_t a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v2 = a2;
    v3 = (a1 + 18160);
    do
    {
      v4 = *(v3 - 3);
      if (v4)
      {
        free(v4);
        *(v3 - 4) = 0;
        *(v3 - 3) = 0;
      }

      v5 = *(v3 - 2);
      if (v5)
      {
        free(v5);
        *(v3 - 2) = 0;
        *v3 = 0;
      }

      v6 = *(v3 - 1);
      if (v6)
      {
        free(v6);
        *(v3 - 1) = 0;
      }

      v3 += 12;
      --v2;
    }

    while (v2);
  }
}

void *sub_29AB5037C(signed int a1, unsigned int a2, unsigned int a3, int a4)
{
  if (!sub_29AB50270(a1, a2, a3, a4))
  {
    return 0;
  }

  return malloc((a4 + a2 * a1 * a3));
}

uint64_t sub_29AB503E8(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v284 = *MEMORY[0x29EDCA608];
  v268 = 0;
  v267 = 0;
  v5 = *v1;
  *(v1 + 8) = 0;
  v6 = (v1 + 8);
  *(v1 + 36) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  if (!sub_29AB523AC(v5))
  {
    return 0;
  }

  v7 = 1;
  if (v3 != 1)
  {
    v260 = v3;
    v262 = v4;
    v263 = 0;
    v253 = 0;
    v254 = 0;
    v257 = 0;
    v258 = 0;
    v8 = 0;
    v256 = 0;
    v265 = 0;
    v9 = (v5 + 56);
    v10 = v5 + 57;
    v11 = 1;
    while (1)
    {
      v12 = sub_29AB4FF24(v5);
      v13 = sub_29AB4FF24(v5);
      v14 = v13 | (v12 << 16);
      v15 = sub_29AB4FF24(v5);
      v16 = sub_29AB4FF24(v5);
      v17 = v16 | (v15 << 16);
      if (v17 > 1347179588)
      {
        switch(v17)
        {
          case 1347179589:
            if (v11)
            {
              goto LABEL_146;
            }

            if (v14 >= 0x301 || (v36 = v13 / 3u, 3 * (v13 / 3u) != v14))
            {
              v61 = off_2A1B71BE0(off_2A1B71BE0);
              v7 = 0;
              v62 = "invalid PLTE";
              goto LABEL_147;
            }

            v263 = v13 / 3u;
            if (v13 >= 3)
            {
              v38 = *(v5 + 192);
              v37 = *(v5 + 200);
              v39 = v270;
              do
              {
                if (v38 >= v37)
                {
                  v40 = *(v5 + 48);
                  if (v40)
                  {
                    v41 = (*(v5 + 16))(*(v5 + 40), v5 + 56, *(v5 + 52));
                    *(v5 + 184) += *(v5 + 192) - *(v5 + 208);
                    if (v41)
                    {
                      v37 = &v9[v41];
                      LOBYTE(v40) = *v9;
                    }

                    else
                    {
                      LOBYTE(v40) = 0;
                      *(v5 + 48) = 0;
                      *(v5 + 56) = 0;
                      v37 = (v5 + 57);
                    }

                    *(v5 + 192) = v10;
                    *(v5 + 200) = v37;
                    v38 = (v5 + 57);
                  }
                }

                else
                {
                  *(v5 + 192) = v38 + 1;
                  LOBYTE(v40) = *v38++;
                }

                *(v39 - 3) = v40;
                if (v38 >= v37)
                {
                  v42 = *(v5 + 48);
                  if (v42)
                  {
                    v43 = (*(v5 + 16))(*(v5 + 40), v5 + 56, *(v5 + 52));
                    *(v5 + 184) += *(v5 + 192) - *(v5 + 208);
                    if (v43)
                    {
                      v37 = &v9[v43];
                      LOBYTE(v42) = *v9;
                    }

                    else
                    {
                      LOBYTE(v42) = 0;
                      *(v5 + 48) = 0;
                      *(v5 + 56) = 0;
                      v37 = (v5 + 57);
                    }

                    *(v5 + 192) = v10;
                    *(v5 + 200) = v37;
                    v38 = (v5 + 57);
                  }
                }

                else
                {
                  *(v5 + 192) = v38 + 1;
                  LOBYTE(v42) = *v38++;
                }

                *(v39 - 2) = v42;
                if (v38 >= v37)
                {
                  v44 = *(v5 + 48);
                  if (v44)
                  {
                    v45 = (*(v5 + 16))(*(v5 + 40), v5 + 56, *(v5 + 52));
                    *(v5 + 184) += *(v5 + 192) - *(v5 + 208);
                    if (v45)
                    {
                      v37 = &v9[v45];
                      LOBYTE(v44) = *v9;
                    }

                    else
                    {
                      LOBYTE(v44) = 0;
                      *(v5 + 48) = 0;
                      *(v5 + 56) = 0;
                      v37 = (v5 + 57);
                    }

                    *(v5 + 192) = v10;
                    *(v5 + 200) = v37;
                    v38 = (v5 + 57);
                  }
                }

                else
                {
                  *(v5 + 192) = v38 + 1;
                  LOBYTE(v44) = *v38++;
                }

                *(v39 - 1) = v44;
                *v39 = -1;
                v39 += 4;
                --v36;
              }

              while (v36);
            }

            goto LABEL_134;
          case 1732332865:
            if (v11)
            {
              goto LABEL_146;
            }

            if (v14 != 4)
            {
              v61 = off_2A1B71BE0(off_2A1B71BE0);
              v7 = 0;
              v62 = "invalid gAMA";
              goto LABEL_147;
            }

            v46 = sub_29AB4FF24(v5);
            v11 = 0;
            v262[9] = (sub_29AB4FF24(v5) | (v46 << 16)) / 100000.0;
            break;
          case 1951551059:
            if (v11)
            {
              goto LABEL_146;
            }

            if (*v6)
            {
              v61 = off_2A1B71BE0(off_2A1B71BE0);
              v7 = 0;
              v62 = "tRNS after IDAT";
              goto LABEL_147;
            }

            if (!v265)
            {
              v49 = *(v5 + 8);
              if ((v49 & 1) == 0)
              {
                v61 = off_2A1B71BE0(off_2A1B71BE0);
                v7 = 0;
                v62 = "tRNS with alpha";
                goto LABEL_147;
              }

              if (v14 != 2 * v49)
              {
                goto LABEL_157;
              }

              if (v260 == 2)
              {
                v18 = v49 + 1;
                goto LABEL_425;
              }

              if (*(v262 + 8) == 16)
              {
                if (v49 < 1)
                {
                  goto LABEL_118;
                }

                v50 = 0;
                do
                {
                  v266[v50++] = sub_29AB4FF24(v5);
                }

                while (v50 < *(v5 + 8));
              }

              else
              {
                if (v49 < 1)
                {
LABEL_118:
                  v11 = 0;
                  v265 = 0;
                  v253 = 1;
                  break;
                }

                v55 = 0;
                do
                {
                  *(&v267 + v55++) = byte_29B6C37D6[*(v262 + 8)] * sub_29AB4FF24(v5);
                }

                while (v55 < *(v5 + 8));
              }

              v253 = 1;
LABEL_139:
              v11 = 0;
              v265 = 0;
              break;
            }

            if (v260 == 2)
            {
              v18 = 4;
LABEL_425:
              *(v5 + 8) = v18;
              return 1;
            }

            if (!v263)
            {
              v61 = off_2A1B71BE0(off_2A1B71BE0);
              v7 = 0;
              v62 = "tRNS before PLTE";
              goto LABEL_147;
            }

            if (v263 < v14)
            {
LABEL_157:
              v61 = off_2A1B71BE0(off_2A1B71BE0);
              v7 = 0;
              v62 = "bad tRNS len";
              goto LABEL_147;
            }

            if (v14)
            {
              v23 = *(v5 + 192);
              v22 = *(v5 + 200);
              v24 = v13 + (v12 << 16);
              v25 = v270;
              do
              {
                if (v23 >= v22)
                {
                  v26 = *(v5 + 48);
                  if (v26)
                  {
                    v27 = (*(v5 + 16))(*(v5 + 40), v5 + 56, *(v5 + 52));
                    *(v5 + 184) += *(v5 + 192) - *(v5 + 208);
                    if (v27)
                    {
                      v22 = &v9[v27];
                      LOBYTE(v26) = *v9;
                    }

                    else
                    {
                      LOBYTE(v26) = 0;
                      *(v5 + 48) = 0;
                      *(v5 + 56) = 0;
                      v22 = (v5 + 57);
                    }

                    *(v5 + 192) = v10;
                    *(v5 + 200) = v22;
                    v23 = (v5 + 57);
                  }
                }

                else
                {
                  *(v5 + 192) = v23 + 1;
                  LOBYTE(v26) = *v23++;
                }

                *v25 = v26;
                v25 += 4;
                --v24;
              }

              while (v24);
            }

            v11 = 0;
            v265 = 4;
            break;
          default:
            goto LABEL_96;
        }
      }

      else
      {
        if (v17 > 1229278787)
        {
          if (v17 != 1229472850)
          {
            if (v17 == 1229278788)
            {
              if (v11)
              {
LABEL_146:
                v61 = off_2A1B71BE0(off_2A1B71BE0);
                v7 = 0;
                v62 = "first not IHDR";
                goto LABEL_147;
              }

              if (v260)
              {
                return 1;
              }

              v65 = *v6;
              if (!v65)
              {
                v61 = off_2A1B71BE0(off_2A1B71BE0);
                v7 = 0;
                v62 = "no IDAT";
                goto LABEL_147;
              }

              v66 = v262;
              v67 = (*(v5 + 4) + *(v5 + 8) * *(v5 + 4) * ((*(v262 + 8) * *v5 + 7) >> 3));
              v68 = malloc(v67);
              if (!v68)
              {
                goto LABEL_442;
              }

              v69 = v68;
              v70 = &v65[v258];
              v71 = &v271;
              v271 = v65;
              v272 = v70;
              v275 = v68;
              v276 = v68;
              v277 = &v68[v67];
              v278 = 1;
              if (!v257)
              {
                if (v258 < 1)
                {
                  v201 = 0;
                }

                else
                {
                  v271 = v65 + 1;
                  v201 = *v65++;
                }

                if (v65 >= v70)
                {
                  v204 = 0;
                }

                else
                {
                  v271 = v65 + 1;
                  v204 = *v65++;
                }

                if (v65 < v70 && -1108378657 * (v204 | (v201 << 8)) <= 0x8421084)
                {
                  if ((v204 & 0x20) != 0)
                  {
                    v205 = "no preset dict";
                    v66 = v262;
                  }

                  else
                  {
                    v66 = v262;
                    v71 = &v271;
                    if ((v201 & 0xF) == 8)
                    {
                      goto LABEL_170;
                    }

                    v205 = "bad compression";
                  }
                }

                else
                {
                  v205 = "bad zlib header";
                }

                v206 = off_2A1B71BE0(v205);
                *v206 = v207;
                goto LABEL_441;
              }

LABEL_170:
              v72 = 0;
              v73 = 0;
              v274 = 0;
              v273 = 0;
              v74 = v279;
              v246 = "zlib corrupt";
              while (2)
              {
                if (v73 <= 0)
                {
                  v75 = v271;
                  while (!(v72 >> v73))
                  {
                    if (v75 >= v272)
                    {
                      v76 = 0;
                    }

                    else
                    {
                      v271 = v75 + 1;
                      v76 = *v75++;
                    }

                    v72 |= v76 << v73;
                    v274 = v72;
                    v77 = v73 + 8;
                    LODWORD(v273) = v73 + 8;
                    v21 = v73 < 17;
                    v73 += 8;
                    if (!v21)
                    {
                      v78 = v72 >> 1;
                      v79 = v77 - 1;
                      goto LABEL_189;
                    }
                  }

                  v271 = v272;
                }

                v78 = v72 >> 1;
                v274 = v72 >> 1;
                v79 = v73 - 1;
                LODWORD(v273) = v73 - 1;
                if (v73 <= 2)
                {
                  v80 = v271;
                  while (!(v78 >> v79))
                  {
                    if (v80 >= v272)
                    {
                      v81 = 0;
                    }

                    else
                    {
                      v271 = v80 + 1;
                      v81 = *v80++;
                    }

                    v78 |= v81 << v79;
                    v274 = v78;
                    v82 = v79 + 8;
                    LODWORD(v273) = v79 + 8;
                    v21 = v79 < 17;
                    v79 += 8;
                    if (!v21)
                    {
                      v79 = v82;
                      goto LABEL_189;
                    }
                  }

                  v271 = v272;
                }

LABEL_189:
                v83 = v78 >> 2;
                v274 = v78 >> 2;
                v84 = v79 - 2;
                LODWORD(v273) = v79 - 2;
                if ((v78 & 3) >= 2)
                {
                  if ((v78 & 3) != 2)
                  {
                    goto LABEL_441;
                  }

                  v91 = v271;
                  v90 = v272;
                  if (v79 > 6)
                  {
                    v93 = v79 - 2;
                  }

                  else
                  {
                    while (!(v83 >> v84))
                    {
                      if (v91 >= v272)
                      {
                        v92 = 0;
                      }

                      else
                      {
                        v271 = v91 + 1;
                        v92 = *v91++;
                      }

                      v83 |= v92 << v84;
                      v274 = v83;
                      v93 = v84 + 8;
                      LODWORD(v273) = v84 + 8;
                      v21 = v84 < 17;
                      v84 += 8;
                      if (!v21)
                      {
                        goto LABEL_297;
                      }
                    }

                    v271 = v272;
                    v91 = v272;
                    v93 = v84;
                  }

LABEL_297:
                  v138 = v83 >> 5;
                  v274 = v83 >> 5;
                  v139 = v93 - 5;
                  LODWORD(v273) = v93 - 5;
                  if (v93 <= 9)
                  {
                    while (!(v138 >> v139))
                    {
                      if (v91 >= v272)
                      {
                        v140 = 0;
                      }

                      else
                      {
                        v271 = v91 + 1;
                        v140 = *v91++;
                      }

                      v138 |= v140 << v139;
                      v274 = v138;
                      v141 = v139 + 8;
                      LODWORD(v273) = v139 + 8;
                      v21 = v139 < 17;
                      v139 += 8;
                      if (!v21)
                      {
                        goto LABEL_306;
                      }
                    }

                    v271 = v272;
                    v91 = v272;
                  }

                  v141 = v139;
LABEL_306:
                  v142 = v138 >> 5;
                  v274 = v138 >> 5;
                  v143 = v141 - 5;
                  LODWORD(v273) = v141 - 5;
                  if (v141 < 9)
                  {
                    while (!(v142 >> v143))
                    {
                      if (v91 >= v272)
                      {
                        v144 = 0;
                      }

                      else
                      {
                        v271 = v91 + 1;
                        v144 = *v91++;
                      }

                      v142 |= v144 << v143;
                      v274 = v142;
                      v145 = v143 + 8;
                      LODWORD(v273) = v143 + 8;
                      v21 = v143 < 17;
                      v143 += 8;
                      if (!v21)
                      {
                        goto LABEL_315;
                      }
                    }

                    v271 = v272;
                    v91 = v272;
                  }

                  v145 = v143;
LABEL_315:
                  v146 = 0;
                  v147 = v142 >> 4;
                  v274 = v142 >> 4;
                  v148 = (v83 & 0x1F) + 257;
                  v149 = (v138 & 0x1F) + 1;
                  v150 = v145 - 4;
                  LODWORD(v273) = v145 - 4;
                  memset(v281, 0, 19);
                  v151 = (v142 & 0xF) + 4;
                  do
                  {
                    if (v150 <= 2)
                    {
                      v152 = v91;
                      while (!(v147 >> v150))
                      {
                        if (v152 >= v90)
                        {
                          v153 = 0;
                        }

                        else
                        {
                          v91 = v152 + 1;
                          v271 = v152 + 1;
                          v153 = *v152++;
                        }

                        v147 |= v153 << v150;
                        v274 = v147;
                        v154 = v150 + 8;
                        LODWORD(v273) = v150 + 8;
                        v21 = v150 < 17;
                        v150 += 8;
                        if (!v21)
                        {
                          goto LABEL_326;
                        }
                      }

                      v271 = v90;
                      v91 = v90;
                    }

                    v154 = v150;
LABEL_326:
                    v155 = v147 & 7;
                    v147 >>= 3;
                    v274 = v147;
                    v150 = v154 - 3;
                    v156 = byte_29B6C3927[v146];
                    LODWORD(v273) = v150;
                    v281[v156] = v155;
                    ++v146;
                  }

                  while (v146 != v151);
                  v244 = v74;
                  v157 = sub_29AB52710(__n, v281, 0x13u);
                  v71 = &v271;
                  if (v157)
                  {
                    v158 = 0;
                    v241 = v148;
                    v242 = v149;
                    v159 = (v149 + v148);
                    v160 = v273;
                    v251 = HIDWORD(v273);
                    v161 = v274;
                    v162 = v271;
                    v163 = v272;
                    do
                    {
                      if (v160 > 15)
                      {
                        goto LABEL_341;
                      }

                      if (v162 >= v163)
                      {
                        if (v251)
                        {
                          goto LABEL_431;
                        }

                        v251 = 1;
                        HIDWORD(v273) = 1;
                        v160 += 16;
                      }

                      else
                      {
                        v164 = v162;
                        while (!(v161 >> v160))
                        {
                          if (v164 >= v163)
                          {
                            v165 = 0;
                          }

                          else
                          {
                            v162 = v164 + 1;
                            v271 = v164 + 1;
                            v165 = *v164++;
                          }

                          v161 |= v165 << v160;
                          v274 = v161;
                          v166 = v160 + 8;
                          LODWORD(v273) = v160 + 8;
                          v21 = v160 < 17;
                          v160 += 8;
                          if (!v21)
                          {
                            v160 = v166;
                            goto LABEL_341;
                          }
                        }

                        v271 = v163;
                        v162 = v163;
                      }

LABEL_341:
                      v167 = *(__n + (v161 & 0x1FF));
                      if (*(__n + (v161 & 0x1FF)))
                      {
                        v161 >>= v167 >> 9;
                        v274 = v161;
                        v160 -= v167 >> 9;
                        LODWORD(v273) = v160;
                        v168 = v167 & 0x1FF;
                      }

                      else
                      {
                        v169 = 0;
                        v170 = __rbit32(v161) >> 16;
                        v171 = 1042;
                        do
                        {
                          v172 = __n[v169++ + 274];
                          v171 += 2;
                        }

                        while (v172 <= v170);
                        if ((v169 + 9) > 0xF)
                        {
                          goto LABEL_431;
                        }

                        v173 = *(&__n[25] + v171) - *(__n + v171) + (v170 >> (7 - v169));
                        if (v173 > 287 || *(&__n[289] + v173) - 9 != v169)
                        {
                          goto LABEL_431;
                        }

                        v161 >>= v169 + 9;
                        v274 = v161;
                        v160 = v160 - v169 - 9;
                        LODWORD(v273) = v160;
                        v168 = *(&__n[361] + v173);
                      }

                      if (v168 > 0x12)
                      {
                        goto LABEL_431;
                      }

                      if (v168 > 0xF)
                      {
                        v174 = &v282[v158];
                        if (v168 == 17)
                        {
                          if (v160 <= 2)
                          {
                            v178 = v162;
                            while (!(v161 >> v160))
                            {
                              if (v178 >= v163)
                              {
                                v179 = 0;
                              }

                              else
                              {
                                v162 = v178 + 1;
                                v271 = v178 + 1;
                                v179 = *v178++;
                              }

                              v161 |= v179 << v160;
                              v274 = v161;
                              v180 = v160 + 8;
                              LODWORD(v273) = v160 + 8;
                              v21 = v160 < 17;
                              v160 += 8;
                              if (!v21)
                              {
                                goto LABEL_384;
                              }
                            }

                            v271 = v163;
                            v162 = v163;
                          }

                          v180 = v160;
LABEL_384:
                          v185 = 0;
                          v186 = v161 & 7;
                          v161 >>= 3;
                          v274 = v161;
                          v160 = v180 - 3;
                          LODWORD(v273) = v180 - 3;
                          v184 = v186 + 3;
                        }

                        else if (v168 == 16)
                        {
                          if (v160 <= 1)
                          {
                            v175 = v162;
                            while (!(v161 >> v160))
                            {
                              if (v175 >= v163)
                              {
                                v176 = 0;
                              }

                              else
                              {
                                v162 = v175 + 1;
                                v271 = v175 + 1;
                                v176 = *v175++;
                              }

                              v161 |= v176 << v160;
                              v274 = v161;
                              v177 = v160 + 8;
                              LODWORD(v273) = v160 + 8;
                              v21 = v160 < 17;
                              v160 += 8;
                              if (!v21)
                              {
                                goto LABEL_380;
                              }
                            }

                            v271 = v163;
                            v162 = v163;
                          }

                          v177 = v160;
LABEL_380:
                          v274 = v161 >> 2;
                          v160 = v177 - 2;
                          LODWORD(v273) = v177 - 2;
                          if (!v158)
                          {
                            goto LABEL_431;
                          }

                          v184 = (v161 & 3) + 3;
                          v185 = *(v174 - 1);
                          v161 >>= 2;
                        }

                        else
                        {
                          if (v160 <= 6)
                          {
                            v181 = v162;
                            while (!(v161 >> v160))
                            {
                              if (v181 >= v163)
                              {
                                v182 = 0;
                              }

                              else
                              {
                                v162 = v181 + 1;
                                v271 = v181 + 1;
                                v182 = *v181++;
                              }

                              v161 |= v182 << v160;
                              v274 = v161;
                              v183 = v160 + 8;
                              LODWORD(v273) = v160 + 8;
                              v21 = v160 < 17;
                              v160 += 8;
                              if (!v21)
                              {
                                goto LABEL_387;
                              }
                            }

                            v271 = v163;
                            v162 = v163;
                          }

                          v183 = v160;
LABEL_387:
                          v185 = 0;
                          v187 = v161 & 0x7F;
                          v161 >>= 7;
                          v274 = v161;
                          v160 = v183 - 7;
                          LODWORD(v273) = v183 - 7;
                          v184 = v187 + 11;
                        }

                        if (v159 - v158 < v184)
                        {
                          goto LABEL_431;
                        }

                        v188 = v159;
                        memset(v174, v185, v184);
                        v159 = v188;
                        v158 += v184;
                      }

                      else
                      {
                        v282[v158++] = v168;
                      }
                    }

                    while (v158 < v159);
                    if (v158 == v159)
                    {
                      v189 = sub_29AB52710(v244, v282, v241);
                      v71 = &v271;
                      if (v189)
                      {
                        v190 = sub_29AB52710(v280, &v282[v241], v242);
                        v71 = &v271;
                        v66 = v262;
                        v74 = v244;
                        if (!v190)
                        {
                          goto LABEL_441;
                        }

                        goto LABEL_210;
                      }
                    }

                    else
                    {
LABEL_431:
                      *off_2A1B71BE0(off_2A1B71BE0) = "bad codelengths";
                    }
                  }

                  v66 = v262;
                  goto LABEL_441;
                }

                if ((v78 & 3) != 0)
                {
                  v94 = sub_29AB52710(v74, byte_29B6C37E7, 0x120u);
                  v71 = &v271;
                  if (!v94)
                  {
                    goto LABEL_441;
                  }

                  v95 = sub_29AB52710(v280, byte_29B6C3907, 0x20u);
                  v71 = &v271;
                  if (!v95)
                  {
                    goto LABEL_441;
                  }

LABEL_210:
                  v69 = v275;
                  while (2)
                  {
                    while (2)
                    {
                      v96 = v273;
                      if (v273 > 15)
                      {
LABEL_223:
                        v100 = v96;
                      }

                      else
                      {
                        v97 = v271;
                        if (v271 < v272)
                        {
                          v98 = v274;
                          while (!(v98 >> v96))
                          {
                            if (v97 >= v272)
                            {
                              v99 = 0;
                            }

                            else
                            {
                              v271 = v97 + 1;
                              v99 = *v97++;
                            }

                            v98 |= v99 << v96;
                            v274 = v98;
                            v100 = v96 + 8;
                            LODWORD(v273) = v96 + 8;
                            v21 = v96 < 17;
                            v96 += 8;
                            if (!v21)
                            {
                              goto LABEL_224;
                            }
                          }

                          v271 = v272;
                          goto LABEL_223;
                        }

                        if (HIDWORD(v273))
                        {
                          goto LABEL_430;
                        }

                        v100 = v273 + 16;
                        LODWORD(v273) = v273 + 16;
                        HIDWORD(v273) = 1;
                      }

LABEL_224:
                      v101 = *(v74 + (v274 & 0x1FF));
                      if (*(v74 + (v274 & 0x1FF)))
                      {
                        v102 = v274 >> (v101 >> 9);
                        v274 = v102;
                        v103 = v100 - (v101 >> 9);
                        LODWORD(v273) = v103;
                        v104 = v101 & 0x1FF;
                      }

                      else
                      {
                        v105 = 0;
                        v106 = __rbit32(v274) >> 16;
                        v107 = 1102;
                        do
                        {
                          v108 = *&v279[4 * v105++ + 1096];
                          v107 += 2;
                        }

                        while (v108 <= v106);
                        v109 = v105 + 9;
                        if ((v105 + 9) > 0xF)
                        {
                          goto LABEL_430;
                        }

                        v110 = *&v279[v107 + 40] - *(&v271 + v107) + (v106 >> (7 - v105));
                        if (v110 > 287 || v279[v110 + 1156] - 9 != v105)
                        {
                          goto LABEL_430;
                        }

                        v102 = v274 >> v109;
                        v274 >>= v109;
                        v103 = v100 - v105 - 9;
                        LODWORD(v273) = v103;
                        v104 = *&v279[2 * v110 + 1444];
                      }

                      if (v104 <= 0xFF)
                      {
                        if (v69 >= v277)
                        {
                          v111 = sub_29AB52AC4(&v271, v69, 1);
                          v71 = &v271;
                          if (!v111)
                          {
                            goto LABEL_441;
                          }

                          v69 = v275;
                        }

                        *v69++ = v104;
                        continue;
                      }

                      break;
                    }

                    if (v104 == 256)
                    {
                      v85 = v74;
                      v275 = v69;
                      if (!HIDWORD(v273))
                      {
                        v66 = v262;
                        v71 = &v271;
                        goto LABEL_417;
                      }

                      v66 = v262;
                      v71 = &v271;
                      if (v103 >= 16)
                      {
                        goto LABEL_417;
                      }

LABEL_430:
                      v202 = off_2A1B71BE0(off_2A1B71BE0);
                      *v202 = v203;
LABEL_441:
                      free(v71[5]);
LABEL_442:
                      v7 = 0;
                      *(v66 + 2) = 0;
                      return v7;
                    }

                    if (v104 > 0x11D)
                    {
                      goto LABEL_430;
                    }

                    v112 = v104 - 257;
                    v113 = dword_29B6C393C[v112];
                    if ((v112 - 28) >= 0xFFFFFFFFFFFFFFECLL)
                    {
                      v114 = dword_29B6C39B8[v112];
                      if (v103 < v114)
                      {
                        v115 = v271;
                        while (!(v102 >> v103))
                        {
                          if (v115 >= v272)
                          {
                            v116 = 0;
                          }

                          else
                          {
                            v271 = v115 + 1;
                            v116 = *v115++;
                          }

                          v102 |= v116 << v103;
                          v274 = v102;
                          v117 = v103 + 8;
                          LODWORD(v273) = v103 + 8;
                          v21 = v103 < 17;
                          v103 += 8;
                          if (!v21)
                          {
                            goto LABEL_250;
                          }
                        }

                        v271 = v272;
                      }

                      v117 = v103;
LABEL_250:
                      v118 = v102 & ~(-1 << v114);
                      v102 >>= v114;
                      v274 = v102;
                      v103 = v117 - v114;
                      LODWORD(v273) = v117 - v114;
                      v113 += v118;
                    }

                    if (v103 > 15)
                    {
LABEL_262:
                      v121 = v103;
                    }

                    else
                    {
                      v119 = v271;
                      if (v271 < v272)
                      {
                        while (!(v102 >> v103))
                        {
                          if (v119 >= v272)
                          {
                            v120 = 0;
                          }

                          else
                          {
                            v271 = v119 + 1;
                            v120 = *v119++;
                          }

                          v102 |= v120 << v103;
                          v274 = v102;
                          v121 = v103 + 8;
                          LODWORD(v273) = v103 + 8;
                          v21 = v103 < 17;
                          v103 += 8;
                          if (!v21)
                          {
                            goto LABEL_263;
                          }
                        }

                        v271 = v272;
                        goto LABEL_262;
                      }

                      if (HIDWORD(v273))
                      {
                        goto LABEL_430;
                      }

                      v121 = v103 + 16;
                      LODWORD(v273) = v103 + 16;
                      HIDWORD(v273) = 1;
                    }

LABEL_263:
                    v122 = *(v280 + (v102 & 0x1FF));
                    if (*(v280 + (v102 & 0x1FF)))
                    {
                      v123 = v102 >> (v122 >> 9);
                      v274 = v123;
                      v124 = v121 - (v122 >> 9);
                      LODWORD(v273) = v124;
                      v125 = v122 & 0x1FF;
                    }

                    else
                    {
                      v126 = 0;
                      v127 = __rbit32(v102) >> 16;
                      v128 = 3122;
                      do
                      {
                        v129 = v280[v126++ + 274];
                        v128 += 2;
                      }

                      while (v129 <= v127);
                      if ((v126 + 9) > 0xF)
                      {
                        goto LABEL_430;
                      }

                      v130 = *&v279[v128 + 40] - *(&v271 + v128) + (v127 >> (7 - v126));
                      if (v130 > 287 || *(&v280[289] + v130) - 9 != v126)
                      {
                        goto LABEL_430;
                      }

                      v123 = v102 >> (v126 + 9);
                      v274 = v123;
                      v124 = v121 - v126 - 9;
                      LODWORD(v273) = v124;
                      v125 = *(&v280[361] + v130);
                    }

                    if (v125 > 0x1D)
                    {
                      goto LABEL_430;
                    }

                    v131 = dword_29B6C3A34[v125];
                    if (v125 >= 4)
                    {
                      v132 = dword_29B6C3AB4[v125];
                      if (v124 < v132)
                      {
                        v133 = v271;
                        while (!(v123 >> v124))
                        {
                          if (v133 >= v272)
                          {
                            v134 = 0;
                          }

                          else
                          {
                            v271 = v133 + 1;
                            v134 = *v133++;
                          }

                          v123 |= v134 << v124;
                          v274 = v123;
                          v135 = v124 + 8;
                          LODWORD(v273) = v124 + 8;
                          v21 = v124 < 17;
                          v124 += 8;
                          if (!v21)
                          {
                            goto LABEL_283;
                          }
                        }

                        v271 = v272;
                      }

                      v135 = v124;
LABEL_283:
                      v274 = v123 >> v132;
                      LODWORD(v273) = v135 - v132;
                      v131 += v123 & ~(-1 << v132);
                    }

                    if (v69 - v276 < v131)
                    {
                      goto LABEL_430;
                    }

                    if (v277 - v69 < v113)
                    {
                      v136 = sub_29AB52AC4(&v271, v69, v113);
                      v71 = &v271;
                      if (!v136)
                      {
                        goto LABEL_441;
                      }

                      v69 = v275;
                    }

                    if (v131 == 1)
                    {
                      if (v113)
                      {
                        memset(v69, *(v69 - 1), v113);
                        v69 += (v113 - 1) + 1;
                      }
                    }

                    else if (v113)
                    {
                      v137 = v69;
                      do
                      {
                        v69 = v137 + 1;
                        *v137 = v137[-v131];
                        ++v137;
                        --v113;
                      }

                      while (v113);
                    }

                    continue;
                  }
                }

                v85 = v74;
                v86 = v84 & 7;
                if ((v84 & 7) != 0)
                {
                  if (v79 <= 1)
                  {
                    v87 = v271;
                    while (!(v83 >> v84))
                    {
                      if (v87 >= v272)
                      {
                        v88 = 0;
                      }

                      else
                      {
                        v271 = v87 + 1;
                        v88 = *v87++;
                      }

                      v83 |= v88 << v84;
                      v274 = v83;
                      v89 = v84 + 8;
                      LODWORD(v273) = v84 + 8;
                      v21 = v84 < 17;
                      v84 += 8;
                      if (!v21)
                      {
                        goto LABEL_397;
                      }
                    }

                    v271 = v272;
                  }

                  v89 = v84;
LABEL_397:
                  v83 >>= v86;
                  v274 = v83;
                  v84 = v89 - v86;
                  LODWORD(v273) = v89 - v86;
                }

                v191 = (v84 - 1);
                if (v84 < 1)
                {
                  if (v84 < 0)
                  {
                    goto LABEL_471;
                  }

                  v192 = 0;
                }

                else
                {
                  v192 = (v191 >> 3) + 1;
                  v193 = __n;
                  v194 = 1;
                  do
                  {
                    *v193++ = v83;
                    v83 >>= 8;
                    --v194;
                  }

                  while (-(v191 >> 3) != v194);
                  v195 = v84 - (v191 & 0xFFFFFFF8);
                  v274 = v83;
                  LODWORD(v273) = v195 - 8;
                  if (v195 != 8)
                  {
                    goto LABEL_471;
                  }

                  if (-v194 > 2)
                  {
                    goto LABEL_411;
                  }
                }

                v197 = v271;
                v196 = v272;
                do
                {
                  if (v197 >= v196)
                  {
                    v198 = 0;
                  }

                  else
                  {
                    v271 = v197 + 1;
                    v198 = *v197++;
                  }

                  *(__n + v192++) = v198;
                }

                while (v192 != 4);
LABEL_411:
                v199 = LOWORD(__n[0]);
                if ((HIWORD(__n[0]) ^ LOWORD(__n[0])) != 0xFFFF)
                {
                  goto LABEL_471;
                }

                v200 = v271;
                if (&v271[LOWORD(__n[0])] > v272)
                {
                  v246 = "read past buffer";
LABEL_471:
                  *off_2A1B71BE0(off_2A1B71BE0) = v246;
LABEL_472:
                  v66 = v262;
                  v71 = &v271;
                  goto LABEL_441;
                }

                if (&v69[LOWORD(__n[0])] > v277)
                {
                  if (!sub_29AB52AC4(&v271, v69, LOWORD(__n[0])))
                  {
                    goto LABEL_472;
                  }

                  v69 = v275;
                  v200 = v271;
                }

                v66 = v262;
                memcpy(v69, v200, v199);
                v71 = &v271;
                v271 = &v200[v199];
                v69 += v199;
                v275 = v69;
LABEL_417:
                if (v72)
                {
                  v208 = v276;
                  *(v66 + 2) = v276;
                  if (!v208)
                  {
                    return 0;
                  }

                  v252 = v69 - v208;
                  free(*(v262 + 1));
                  *(v262 + 1) = 0;
                  v209 = *(v5 + 8);
                  v210 = v209 == -1;
                  if (v265)
                  {
                    v210 = 0;
                  }

                  if (v253)
                  {
                    v210 = 1;
                  }

                  if (v210)
                  {
                    ++v209;
                  }

                  v247 = v209;
                  *(v5 + 12) = v209;
                  v250 = *(v262 + 2);
                  v249 = *(v262 + 8);
                  v211 = v249 == 16;
                  if (v254)
                  {
                    v245 = v247 << v211;
                    v243 = sub_29AB5037C(**v262, *(*v262 + 4), v247 << v211, 0);
                    if (v243)
                    {
                      v255 = 0;
                      while (1)
                      {
                        v212 = *v262;
                        v213 = dword_29B6C3B34[v255];
                        v214 = dword_29B6C3B6C[v255];
                        v215 = **v262 + ~v213 + v214;
                        if (v214 <= v215)
                        {
                          v216 = dword_29B6C3B50[v255];
                          v217 = dword_29B6C3B88[v255];
                          v218 = v212[1] + ~v216 + v217;
                          if (v217 <= v218)
                          {
                            v248 = v212[2];
                            v261 = v215 / v214;
                            v264 = v218 / v217;
                            if (!sub_29AB52BA8(v262, v250, v252, v247, v215 / v214, v218 / v217, v249, v256))
                            {
                              free(v243);
                              return 0;
                            }

                            if (v264 >= 1)
                            {
                              v219 = 0;
                              v220 = v245 * v216;
                              v259 = v245 * v217;
                              v221 = v245 * v214;
                              do
                              {
                                if (v261 >= 1)
                                {
                                  v222 = 0;
                                  v223 = *(v262 + 3);
                                  v224 = &v243[v245 * v213 + (**v262 * v220)];
                                  do
                                  {
                                    memcpy(v224, v223 + (v222 + v219 * v261) * v245, v245);
                                    ++v222;
                                    v224 += v221;
                                  }

                                  while (v222 < v261);
                                }

                                ++v219;
                                v220 += v259;
                              }

                              while (v219 < v264);
                            }

                            v225 = v264 + v264 * ((v261 * v249 * v248 + 7) >> 3);
                            free(*(v262 + 3));
                            v250 += v225;
                            v252 -= v225;
                          }
                        }

                        if (++v255 == 7)
                        {
                          *(v262 + 3) = v243;
                          goto LABEL_474;
                        }
                      }
                    }

LABEL_489:
                    v61 = off_2A1B71BE0(off_2A1B71BE0);
                    v7 = 0;
                    v62 = "outofmem";
LABEL_147:
                    *v61 = v62;
                    return v7;
                  }

                  if (!sub_29AB52BA8(v262, v250, v252, v247, **v262, *(*v262 + 4), v249, v256))
                  {
                    return 0;
                  }

LABEL_474:
                  if (v253)
                  {
                    v226 = *(v5 + 12);
                    if (*(v262 + 8) == 16)
                    {
                      sub_29AB52594(v262, v266, v226);
                    }

                    else
                    {
                      sub_29AB52620(v262, &v267, v226);
                    }
                  }

                  if (v257 && byte_2A17482F0 == 1 && *(v5 + 12) >= 3)
                  {
                    sub_29AB526AC(v262);
                  }

                  if (v265)
                  {
                    *(v5 + 8) = v265;
                    *(v5 + 12) = v265;
                    v228 = **v262;
                    v227 = *(*v262 + 4);
                    v229 = (v227 * v228);
                    v230 = *(v262 + 3);
                    v231 = sub_29AB502C8(v227 * v228, v265, 0);
                    if (!v231)
                    {
                      goto LABEL_489;
                    }

                    v232 = v231;
                    if (v265 == 3)
                    {
                      if (v229)
                      {
                        v233 = v230;
                        v234 = v231;
                        do
                        {
                          v235 = *v233++;
                          v236 = &v269[4 * v235];
                          *v234 = *v236;
                          *(v234 + 2) = v236[2];
                          v234 = (v234 + 3);
                          --v229;
                        }

                        while (v229);
                      }
                    }

                    else if (v229)
                    {
                      v238 = v230;
                      v239 = v231;
                      do
                      {
                        v240 = *v238++;
                        *v239++ = *&v269[4 * v240];
                        --v229;
                      }

                      while (v229);
                    }

                    free(v230);
                    *(v262 + 3) = v232;
                  }

                  else if (v253)
                  {
                    ++*(v5 + 8);
                  }

                  free(*(v262 + 2));
                  *(v262 + 2) = 0;
                  sub_29AB4FF24(v5);
                  sub_29AB4FF24(v5);
                  return 1;
                }

                v74 = v85;
                v73 = v273;
                v72 = v274;
                continue;
              }
            }

LABEL_96:
            if (v11)
            {
              goto LABEL_146;
            }

            if ((v15 & 0x2000) == 0)
            {
              aXxxxPngChunkNo[0] = BYTE1(v15);
              aXxxxPngChunkNo[1] = v15;
              aXxxxPngChunkNo[2] = BYTE1(v16);
              aXxxxPngChunkNo[3] = v16;
              v63 = off_2A1B71BE0(off_2A1B71BE0);
              v7 = 0;
              *v63 = v64;
              return v7;
            }

            sub_29AB50224(v5, v14);
LABEL_134:
            v11 = 0;
            goto LABEL_135;
          }

          if (!v11)
          {
            v61 = off_2A1B71BE0(off_2A1B71BE0);
            v7 = 0;
            v62 = "multiple IHDR";
            goto LABEL_147;
          }

          if (v14 != 13)
          {
            v61 = off_2A1B71BE0(off_2A1B71BE0);
            v7 = 0;
            v62 = "bad IHDR len";
            goto LABEL_147;
          }

          v28 = sub_29AB4FF24(v5);
          *v5 = sub_29AB4FF24(v5) | (v28 << 16);
          v29 = sub_29AB4FF24(v5);
          v30 = sub_29AB4FF24(v5) | (v29 << 16);
          *(v5 + 4) = v30;
          if (v30 >= 0x1000001 || *v5 >= 0x1000001u)
          {
LABEL_141:
            v61 = off_2A1B71BE0(off_2A1B71BE0);
            v7 = 0;
            v62 = "too large";
            goto LABEL_147;
          }

          v32 = *(v5 + 192);
          v31 = *(v5 + 200);
          if (v32 >= v31)
          {
            v35 = v262;
            if (!*(v5 + 48))
            {
              v262[8] = 0.0;
LABEL_165:
              v61 = off_2A1B71BE0(off_2A1B71BE0);
              v7 = 0;
              v62 = "1/2/4/8/16-bit only";
              goto LABEL_147;
            }

            v47 = (*(v5 + 16))(*(v5 + 40), v5 + 56, *(v5 + 52));
            *(v5 + 184) += *(v5 + 192) - *(v5 + 208);
            if (v47)
            {
              v31 = &v9[v47];
              v34 = *v9;
            }

            else
            {
              v34 = 0;
              *(v5 + 48) = 0;
              *(v5 + 56) = 0;
              v31 = (v5 + 57);
            }

            *(v5 + 192) = v10;
            *(v5 + 200) = v31;
            v33 = (v5 + 57);
          }

          else
          {
            v33 = v32 + 1;
            *(v5 + 192) = v32 + 1;
            v34 = *v32;
            v35 = v262;
          }

          *(v35 + 8) = v34;
          if (v34 > 0x10 || ((1 << v34) & 0x10116) == 0)
          {
            goto LABEL_165;
          }

          if (v33 >= v31)
          {
            if (*(v5 + 48))
            {
              v52 = (*(v5 + 16))(*(v5 + 40), v5 + 56, *(v5 + 52));
              *(v5 + 184) += *(v5 + 192) - *(v5 + 208);
              if (v52)
              {
                v53 = &v9[v52];
                v51 = *v9;
              }

              else
              {
                v51 = 0;
                *(v5 + 48) = 0;
                *(v5 + 56) = 0;
                v53 = (v5 + 57);
              }

              *(v5 + 192) = v10;
              *(v5 + 200) = v53;
              goto LABEL_121;
            }

            v51 = 0;
            v54 = v265;
          }

          else
          {
            *(v5 + 192) = v33 + 1;
            v51 = *v33;
LABEL_121:
            if (v51 >= 7)
            {
              goto LABEL_144;
            }

            if (v51 == 3)
            {
              if (*(v35 + 8) == 16)
              {
                goto LABEL_144;
              }

              v51 = 3;
              v54 = 3;
            }

            else
            {
              v54 = v265;
              if (v51)
              {
LABEL_144:
                v61 = off_2A1B71BE0(off_2A1B71BE0);
                v7 = 0;
                v62 = "bad ctype";
                goto LABEL_147;
              }
            }
          }

          if (sub_29AB4FE84(v5))
          {
            v61 = off_2A1B71BE0(off_2A1B71BE0);
            v7 = 0;
            v62 = "bad comp method";
            goto LABEL_147;
          }

          if (sub_29AB4FE84(v5))
          {
            v61 = off_2A1B71BE0(off_2A1B71BE0);
            v7 = 0;
            v62 = "bad filter method";
            goto LABEL_147;
          }

          v56 = sub_29AB4FE84(v5);
          if (v56 >= 2)
          {
            v61 = off_2A1B71BE0(off_2A1B71BE0);
            v7 = 0;
            v62 = "bad interlace method";
            goto LABEL_147;
          }

          if (!*v5 || (v57 = *(v5 + 4)) == 0)
          {
            v61 = off_2A1B71BE0(off_2A1B71BE0);
            v7 = 0;
            v62 = "0-pixel image";
            goto LABEL_147;
          }

          v58 = 0x40000000u / *v5;
          v256 = v51;
          v254 = v56;
          if (v54)
          {
            *(v5 + 8) = 1;
            if (v57 > v58 >> 2)
            {
              goto LABEL_141;
            }

            v265 = v54;
            goto LABEL_134;
          }

          v59 = v51 & 2;
          if (v51 > 3)
          {
            ++v59;
          }

          v60 = v59 + 1;
          *(v5 + 8) = v60;
          if (v58 / v60 < v57)
          {
            goto LABEL_141;
          }

          goto LABEL_139;
        }

        if (v17 == 1130840649)
        {
          sub_29AB50224(v5, v14);
          v257 = 1;
          goto LABEL_135;
        }

        if (v17 != 1229209940)
        {
          goto LABEL_96;
        }

        if (v11)
        {
          goto LABEL_146;
        }

        v18 = v265;
        if (v265 && !v263)
        {
          v61 = off_2A1B71BE0(off_2A1B71BE0);
          v7 = 0;
          v62 = "no PLTE";
          goto LABEL_147;
        }

        if (v260 == 2)
        {
          if (!v265)
          {
            return 1;
          }

          goto LABEL_425;
        }

        if (v14 >= 0x40000001)
        {
          v61 = off_2A1B71BE0(off_2A1B71BE0);
          v7 = 0;
          v62 = "IDAT size limit";
          goto LABEL_147;
        }

        v19 = v14 + v258;
        if ((v14 + v258) < v258)
        {
          return 0;
        }

        if (v19 <= v8)
        {
          v48 = *v6;
        }

        else
        {
          if (v14 <= 0x1000)
          {
            v20 = 4096;
          }

          else
          {
            v20 = v13 | (v12 << 16);
          }

          if (v8)
          {
            v20 = v8;
          }

          if (v19 > v20)
          {
            while ((v20 & 0x80000000) == 0)
            {
              v8 = 2 * v20;
              v21 = v19 > 2 * v20;
              v20 *= 2;
              if (!v21)
              {
                goto LABEL_100;
              }
            }

            v61 = off_2A1B71BE0(off_2A1B71BE0);
            v7 = 0;
            v62 = "integer overflow";
            goto LABEL_147;
          }

          v8 = v20;
LABEL_100:
          v48 = realloc(*v6, v8);
          if (!v48)
          {
            goto LABEL_489;
          }

          *v6 = v48;
        }

        if (!sub_29AB524E4(v5, v48 + v258, v14))
        {
          v61 = off_2A1B71BE0(off_2A1B71BE0);
          v7 = 0;
          v62 = "outofdata";
          goto LABEL_147;
        }

        v11 = 0;
        v258 += v14;
      }

LABEL_135:
      sub_29AB4FF24(v5);
      sub_29AB4FF24(v5);
    }
  }

  return v7;
}

uint64_t sub_29AB523AC(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 56);
  v4 = (a1 + 57);
  v6 = *(a1 + 192);
  v5 = *(a1 + 200);
  while (1)
  {
    if (v6 >= v5)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        v8 = (*(a1 + 16))(*(a1 + 40), v3, *(a1 + 52));
        *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
        if (v8)
        {
          v5 = &v3[v8];
          v7 = *v3;
        }

        else
        {
          v7 = 0;
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          v5 = v4;
        }

        *(a1 + 192) = v4;
        *(a1 + 200) = v5;
        v6 = v4;
      }
    }

    else
    {
      *(a1 + 192) = v6 + 1;
      v7 = *v6++;
    }

    if (v7 != byte_29B6C37DF[v2])
    {
      break;
    }

    if (++v2 == 8)
    {
      return 1;
    }
  }

  v10 = off_2A1B71BE0(off_2A1B71BE0);
  result = 0;
  *v10 = "bad png sig";
  return result;
}

BOOL sub_29AB524E4(uint64_t a1, char *__dst, int a3)
{
  if (*(a1 + 16))
  {
    v5 = *(a1 + 192);
    v6 = *(a1 + 200);
    v7 = v6 - v5;
    v8 = (a3 - (v6 - v5));
    if (a3 > v6 - v5)
    {
      memcpy(__dst, v5, v7);
      result = (*(a1 + 16))(*(a1 + 40), &__dst[v7], v8) == v8;
      *(a1 + 192) = *(a1 + 200);
      return result;
    }
  }

  else
  {
    v5 = *(a1 + 192);
    v6 = *(a1 + 200);
  }

  if (v5 + a3 > v6)
  {
    return 0;
  }

  v10 = a3;
  memcpy(__dst, v5, a3);
  *(a1 + 192) += v10;
  return 1;
}

void *sub_29AB52594(void *result, unsigned __int16 *a2, int a3)
{
  v3 = *(*result + 4) * **result;
  v4 = result[3];
  if (a3 == 2)
  {
    for (; v3; --v3)
    {
      if (*v4 == *a2)
      {
        v5 = 0;
      }

      else
      {
        v5 = -1;
      }

      v4[1] = v5;
      v4 += 2;
    }
  }

  else if (v3)
  {
    v6 = v4 + 2;
    do
    {
      if (*(v6 - 2) == *a2 && *(v6 - 1) == a2[1] && *v6 == a2[2])
      {
        v6[1] = 0;
      }

      v6 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_29AB52620(void *result, unsigned __int8 *a2, int a3)
{
  v3 = *(*result + 4) * **result;
  v4 = result[3];
  if (a3 == 2)
  {
    for (; v3; --v3)
    {
      if (*v4 == *a2)
      {
        v5 = 0;
      }

      else
      {
        v5 = -1;
      }

      v4[1] = v5;
      v4 += 2;
    }
  }

  else if (v3)
  {
    v6 = v4 + 1;
    do
    {
      if (*(v6 - 1) == *a2 && *v6 == a2[1] && v6[1] == a2[2])
      {
        v6[2] = 0;
      }

      v6 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *sub_29AB526AC(void *result)
{
  v1 = *(*result + 4) * **result;
  v2 = result[3];
  if (*(*result + 12) == 3)
  {
    for (; v1; --v1)
    {
      v3 = *v2;
      *v2 = v2[2];
      v2[2] = v3;
      v2 += 3;
    }
  }

  else
  {
    for (; v1; --v1)
    {
      v4 = *v2;
      *v2 = v2[2];
      v2[2] = v4;
      v2 += 4;
    }
  }

  return result;
}

uint64_t sub_29AB52710(_DWORD *a1, unsigned __int8 *a2, unsigned int a3)
{
  v44 = *MEMORY[0x29EDCA608];
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  bzero(a1, 0x400uLL);
  if (a3 >= 1)
  {
    v6 = a3;
    v7 = a2;
    do
    {
      v8 = *v7++;
      ++*(v41 + v8);
      --v6;
    }

    while (v6);
  }

  v9 = 1;
  while (*(v41 + v9) <= 1 << v9)
  {
    if (++v9 == 16)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 15;
      for (i = 1026; ; i += 2)
      {
        v43[v10 + 1] = v12;
        v15 = (a1 + i);
        *v15 = v12;
        v16 = *(v41 + v10 + 1);
        v15[50] = v11;
        v17 = v16 + v12;
        if (v16 && v17 > 1 << (v10 + 1))
        {
          break;
        }

        a1[v10 + 265] = v17 << v13;
        v12 = 2 * v17;
        v11 += v16;
        ++v10;
        --v13;
        if (v10 == 15)
        {
          a1[280] = 0x10000;
          if (a3 >= 1)
          {
            v19 = 0;
            v20 = a3;
            do
            {
              v21 = a2[v19];
              if (a2[v19])
              {
                v22 = v43[v21];
                v23 = *(a1 + v21 + 562) + (v22 - *(a1 + v21 + 512));
                *(a1 + v23 + 1156) = v21;
                *(a1 + v23 + 722) = v19;
                if (v21 <= 9)
                {
                  v24 = __rbit32(v22) >> 16 >> (16 - v21);
                  if (v24 <= 0x1FF)
                  {
                    v25 = 0;
                    v26 = v19 | (v21 << 9);
                    v27 = 1 << v21;
                    v28 = (1 << v21) + v24;
                    if (v28 >= 0x200)
                    {
                      v29 = 1;
                    }

                    else
                    {
                      v29 = 2;
                    }

                    if (v28 <= 0x200)
                    {
                      v30 = 512;
                    }

                    else
                    {
                      v30 = (1 << v21) + v24;
                    }

                    v31 = v29 + ((((__PAIR128__(v30, v28) - 0x200) >> 64) - v28) >> v21);
                    v32 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
                    v33 = vdupq_n_s64(v31 - 1);
                    do
                    {
                      v34 = (v25 << v21) + v24;
                      v35 = vdupq_n_s64(v25);
                      v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_29B430070)));
                      if (vuzp1_s8(vuzp1_s16(v36, 6), 6).u8[0])
                      {
                        *(a1 + v34) = v26;
                      }

                      if (vuzp1_s8(vuzp1_s16(v36, 6), 6).i8[1])
                      {
                        *(a1 + v34 + v27) = v26;
                      }

                      if (vuzp1_s8(vuzp1_s16(6, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_29B433E10)))), 6).i8[2])
                      {
                        *(&a1[v27] + v34) = v26;
                        *(a1 + v34 + (3 << v21)) = v26;
                      }

                      v37 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_29B433E00)));
                      if (vuzp1_s8(6, vuzp1_s16(v37, 6)).i32[1])
                      {
                        *(&a1[2 * v27] + v34) = v26;
                      }

                      if (vuzp1_s8(6, vuzp1_s16(v37, 6)).i8[5])
                      {
                        *(a1 + v34 + (5 << v21)) = v26;
                      }

                      if (vuzp1_s8(6, vuzp1_s16(6, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_29B433DF0))))).i8[6])
                      {
                        *(a1 + v34 + (6 << v21)) = v26;
                        *(a1 + v34 + (7 << v21)) = v26;
                      }

                      v25 += 8;
                    }

                    while (v32 != v25);
                  }
                }

                v43[v21] = v22 + 1;
              }

              ++v19;
            }

            while (v19 != v20);
          }

          return 1;
        }
      }

      break;
    }
  }

  v39 = off_2A1B71BE0(off_2A1B71BE0);
  result = 0;
  *v39 = v40;
  return result;
}

uint64_t sub_29AB52AC4(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 32) = a2;
  if (*(a1 + 56))
  {
    v4 = *(a1 + 40);
    v5 = a2 - v4;
    if (!__CFADD__(a2 - v4, a3))
    {
      v6 = *(a1 + 48) - v4;
      if (v5 + a3 <= v6)
      {
        v7 = *(a1 + 48) - v4;
LABEL_9:
        v12 = v7;
        v13 = realloc(v4, v7);
        if (v13)
        {
          *(a1 + 32) = &v13[v5];
          *(a1 + 40) = v13;
          *(a1 + 48) = &v13[v12];
          return 1;
        }
      }

      else
      {
        while ((v6 & 0x80000000) == 0)
        {
          v7 = 2 * v6;
          v8 = v5 + a3 > 2 * v6;
          v6 *= 2;
          if (!v8)
          {
            goto LABEL_9;
          }
        }
      }
    }

    v9 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v11 = "outofmem";
  }

  else
  {
    v9 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v11 = "output buffer limit";
  }

  *v9 = v11;
  return result;
}

uint64_t sub_29AB52BA8(void *a1, unsigned __int8 *a2, unsigned int a3, int a4, uint64_t a5, unsigned int a6, signed int a7, int a8)
{
  v11 = a5;
  v16 = a7 == 16;
  v17 = *(*a1 + 8);
  v18 = sub_29AB5037C(a5, a6, a4 << (a7 == 16), 0);
  a1[3] = v18;
  if (!v18)
  {
    goto LABEL_111;
  }

  if (!sub_29AB50270(v17, v11, a7, 7) || (v96 = a4, (a6 & 0x80000000) != 0) || (v19 = v17 * v11, v20 = (v19 * a7 + 7) >> 3, a6) && 0x7FFFFFFF / a6 < v20 || (v20 ^ 0x7FFFFFFF) < v20 * a6)
  {
    v21 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v23 = "too large";
LABEL_112:
    *v21 = v23;
    return result;
  }

  if (a6 + a6 * v20 > a3)
  {
    v21 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v23 = "not enough pixels";
    goto LABEL_112;
  }

  v93 = malloc(2 * v20);
  if (!v93)
  {
LABEL_111:
    v21 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    v23 = "outofmem";
    goto LABEL_112;
  }

  v87 = a8;
  v24 = (v19 * a7 + 7) >> 3;
  if (a6)
  {
    v25 = 0;
    v26 = 0;
    v95 = (v11 * v96) << v16;
    if (a7 < 8)
    {
      v27 = 1;
    }

    else
    {
      v27 = (v17 << v16);
    }

    if (a7 >= 8)
    {
      v28 = v11;
    }

    else
    {
      v28 = (v19 * a7 + 7) >> 3;
    }

    v29 = v28 * v27;
    v30 = v27;
    v31 = (v28 * v27);
    v90 = a6;
    v91 = v28 * v27;
    v86 = v27 + 1;
    v32 = 1;
    v92 = v27;
    v89 = v31;
    v88 = v17;
    while (1)
    {
      v33 = (v26 & 1) != 0 ? v24 : 0;
      v35 = a2 + 1;
      v34 = *a2;
      if (v34 > 4)
      {
        break;
      }

      if (!v26)
      {
        v34 = byte_29B6C3BA4[*a2];
      }

      v36 = &v93[v24 * (v32 & 1)];
      v37 = &v93[v33];
      v38 = a1[3];
      v94 = v32;
      if (v34 > 2)
      {
        switch(v34)
        {
          case 3:
            if (v30 >= 1)
            {
              v54 = 0;
              do
              {
                *(v37 + v54) = a2[v54 + 1] + (v36[v54] >> 1);
                ++v54;
              }

              while (v27 != v54);
            }

            v55 = v31;
            v56 = v86;
            v57 = v37;
            if (v27 < v29)
            {
              do
              {
                *(v57 + v30) = a2[v56] + ((*v57 + v36[v30]) >> 1);
                v57 = (v57 + 1);
                ++v56;
                ++v36;
                --v55;
              }

              while (v30 != v55);
            }

            break;
          case 5:
            v85 = v25;
            v61 = a1[3];
            memcpy(&v93[v33], a2 + 1, v30);
            v38 = v61;
            v25 = v85;
            v17 = v88;
            v31 = v89;
            v29 = v91;
            v27 = v92;
            if (v92 < v91)
            {
              v62 = v89;
              v63 = v86;
              v64 = v37;
              do
              {
                *(v64 + v30) = a2[v63] + (*v64 >> 1);
                v64 = (v64 + 1);
                ++v63;
                --v62;
              }

              while (v30 != v62);
            }

            break;
          case 4:
            if (v27 >= 1)
            {
              for (i = 0; i != v27; ++i)
              {
                *(v37 + i) = v36[i] + a2[i + 1];
              }
            }

            v42 = v31;
            v43 = v86;
            v44 = v37;
            if (v30 < v31)
            {
              do
              {
                v45 = *v44;
                v46 = v36[v30];
                v48 = *v36++;
                v47 = v48;
                v49 = 3 * v48 - (v46 + v45);
                if (v45 >= v46)
                {
                  v50 = v46;
                }

                else
                {
                  v50 = *v44;
                }

                if (v45 <= v46)
                {
                  v45 = v46;
                }

                if (v45 <= v49)
                {
                  v51 = v50;
                }

                else
                {
                  v51 = v47;
                }

                if (v49 > v50)
                {
                  LOBYTE(v45) = v51;
                }

                *(v44 + v30) = a2[v43] + v45;
                v44 = (v44 + 1);
                ++v43;
                --v42;
              }

              while (v30 != v42);
            }

            break;
        }
      }

      else
      {
        v39 = v25;
        if (v34)
        {
          if (v34 == 1)
          {
            v84 = a1[3];
            memcpy(&v93[v33], a2 + 1, v30);
            v38 = v84;
            v31 = v89;
            v29 = v91;
            v27 = v92;
            v25 = v39;
            v17 = v88;
            if (v30 < v89)
            {
              v58 = v89;
              v59 = v86;
              v60 = v37;
              do
              {
                *(v60 + v30) = *v60 + a2[v59];
                v60 = (v60 + 1);
                ++v59;
                --v58;
              }

              while (v30 != v58);
            }
          }

          else
          {
            v29 = v91;
            v27 = v92;
            v17 = v88;
            if (v31 >= 1)
            {
              v40 = 0;
              do
              {
                *(v37 + v40) = v36[v40] + a2[v40 + 1];
                ++v40;
              }

              while (v91 != v40);
            }
          }
        }

        else
        {
          v52 = a2 + 1;
          v53 = a1[3];
          memcpy(&v93[v33], v52, v31);
          v38 = v53;
          v31 = v89;
          v29 = v91;
          v27 = v92;
          v25 = v39;
          v17 = v88;
        }
      }

      v65 = v25;
      v66 = (v38 + (v95 * v26));
      if (a7 > 7)
      {
        if (a7 == 8)
        {
          v68 = v65;
          if (v17 == v96)
          {
            memcpy(v66, v37, v19);
          }

          else
          {
            sub_29AB532B4(v66, v37, v11, v17);
          }

          v29 = v91;
          v27 = v92;
          v31 = v89;
          LODWORD(v65) = v68;
        }

        else if (a7 == 16)
        {
          if (v17 == v96)
          {
            if (v19)
            {
              v69 = v19;
              do
              {
                v70 = *v37++;
                *v66++ = bswap32(v70) >> 16;
                --v69;
              }

              while (v69);
            }
          }

          else if (v17 == 1)
          {
            if (v11)
            {
              v81 = v11;
              do
              {
                v82 = *v37++;
                *v66 = bswap32(v82) >> 16;
                v66[1] = -1;
                v66 += 2;
                --v81;
              }

              while (v81);
            }
          }

          else
          {
            for (j = v11; j; --j)
            {
              *v66 = bswap32(*v37) >> 16;
              v66[1] = bswap32(v37[1]) >> 16;
              v66[2] = bswap32(v37[2]) >> 16;
              v66[3] = -1;
              v66 += 4;
              v37 += 3;
            }
          }
        }
      }

      else
      {
        if (v87)
        {
          v67 = 1;
        }

        else
        {
          v67 = byte_29B6C37D6[a7];
        }

        if (a7 == 4)
        {
          if (v19)
          {
            v74 = 0;
            v75 = 0;
            do
            {
              if ((v74 & 1) == 0)
              {
                v76 = *v37;
                v37 = (v37 + 1);
                v75 = v76;
              }

              *(v38 + v65 + v74) = (v75 >> 4) * v67;
              v75 *= 16;
              ++v74;
            }

            while (v19 != v74);
          }
        }

        else if (a7 == 2)
        {
          if (v19)
          {
            v71 = 0;
            v72 = 0;
            do
            {
              if ((v71 & 3) == 0)
              {
                v73 = *v37;
                v37 = (v37 + 1);
                v72 = v73;
              }

              *(v38 + v65 + v71) = (v72 >> 6) * v67;
              v72 *= 4;
              ++v71;
            }

            while (v19 != v71);
          }
        }

        else if (v19)
        {
          v77 = 0;
          v78 = 0;
          do
          {
            if ((v77 & 7) == 0)
            {
              v79 = *v37;
              v37 = (v37 + 1);
              v78 = v79;
            }

            *(v38 + v65 + v77) = v67 & (v78 >> 7);
            v78 *= 2;
            ++v77;
          }

          while (v19 != v77);
        }

        if (v17 != v96)
        {
          v80 = v65;
          sub_29AB532B4(v66, v66, v11, v17);
          LODWORD(v65) = v80;
          v31 = v89;
          v29 = v91;
          v27 = v92;
        }
      }

      a2 = &v35[v31];
      ++v26;
      v32 = v94 + 1;
      v25 = v65 + v95;
      v24 = (v19 * a7 + 7) >> 3;
      if (v26 == v90)
      {
        goto LABEL_113;
      }
    }

    *off_2A1B71BE0(off_2A1B71BE0) = "invalid filter";
    free(v93);
    return 0;
  }

  else
  {
LABEL_113:
    free(v93);
    return 1;
  }
}

uint64_t sub_29AB532B4(uint64_t result, uint64_t a2, int a3, int a4)
{
  v4 = (a3 - 1);
  if (a4 == 1)
  {
    if ((v4 & 0x80000000) == 0)
    {
      v5 = (result + 2 * v4 + 1);
      do
      {
        *v5 = -1;
        *(v5 - 1) = *(a2 + v4--);
        v5 -= 2;
      }

      while (v4 != -1);
    }
  }

  else if ((v4 & 0x80000000) == 0)
  {
    v6 = v4 + 1;
    v7 = (result + 4 * v4 + 1);
    v8 = (3 * (a3 - 1) + a2 + 2);
    do
    {
      v7[2] = -1;
      v7[1] = *v8;
      *v7 = *(v8 - 1);
      *(v7 - 1) = *(v8 - 2);
      v7 -= 4;
      v8 -= 3;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_29AB53344(uint64_t a1, int *a2, _DWORD *a3, int a4)
{
  v9 = *(a1 + 192);
  v8 = *(a1 + 200);
  if (v9 >= v8)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v12 = (a1 + 56);
    v13 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v13)
    {
      v8 = &v12[v13];
      v11 = *v12;
    }

    else
    {
      v11 = 0;
      *(a1 + 48) = 0;
      v8 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v10 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v8;
  }

  else
  {
    v10 = v9 + 1;
    *(a1 + 192) = v9 + 1;
    v11 = *v9;
  }

  if (v11 != 71)
  {
    goto LABEL_52;
  }

  if (v10 >= v8)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v16 = (a1 + 56);
    v17 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v17)
    {
      v8 = &v16[v17];
      v15 = *v16;
    }

    else
    {
      v15 = 0;
      *(a1 + 48) = 0;
      v8 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v14 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v8;
  }

  else
  {
    v14 = v10 + 1;
    *(a1 + 192) = v10 + 1;
    v15 = *v10;
  }

  if (v15 != 73)
  {
    goto LABEL_52;
  }

  if (v14 >= v8)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v20 = (a1 + 56);
    v21 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v21)
    {
      v8 = &v20[v21];
      v19 = *v20;
    }

    else
    {
      v19 = 0;
      *(a1 + 48) = 0;
      v8 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v18 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v8;
  }

  else
  {
    v18 = v14 + 1;
    *(a1 + 192) = v14 + 1;
    v19 = *v14;
  }

  if (v19 != 70)
  {
    goto LABEL_52;
  }

  if (v18 >= v8)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v24 = (a1 + 56);
    v25 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v25)
    {
      v8 = &v24[v25];
      v23 = *v24;
    }

    else
    {
      v23 = 0;
      *(a1 + 48) = 0;
      v8 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v22 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v8;
  }

  else
  {
    v22 = v18 + 1;
    *(a1 + 192) = v18 + 1;
    v23 = *v18;
  }

  if (v23 != 56)
  {
    goto LABEL_52;
  }

  if (v22 >= v8)
  {
    if (!*(a1 + 48))
    {
      goto LABEL_52;
    }

    v28 = (a1 + 56);
    v29 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
    *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
    if (v29)
    {
      v8 = &v28[v29];
      v27 = *v28;
    }

    else
    {
      v27 = 0;
      *(a1 + 48) = 0;
      v8 = (a1 + 57);
      *(a1 + 56) = 0;
    }

    v26 = (a1 + 57);
    *(a1 + 192) = a1 + 57;
    *(a1 + 200) = v8;
  }

  else
  {
    v26 = v22 + 1;
    *(a1 + 192) = v22 + 1;
    v27 = *v22;
  }

  if (v27 != 55 && v27 != 57)
  {
    goto LABEL_52;
  }

  if (v26 < v8)
  {
    *(a1 + 192) = v26 + 1;
    v30 = *v26;
    goto LABEL_49;
  }

  if (!*(a1 + 48))
  {
LABEL_52:
    v38 = off_2A1B71BE0(off_2A1B71BE0);
    result = 0;
    *v38 = "not GIF";
    return result;
  }

  v31 = (a1 + 56);
  v32 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
  *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
  if (v32)
  {
    v33 = &v31[v32];
    v30 = *v31;
  }

  else
  {
    v30 = 0;
    *(a1 + 48) = 0;
    v33 = (a1 + 57);
    *(a1 + 56) = 0;
  }

  *(a1 + 192) = a1 + 57;
  *(a1 + 200) = v33;
LABEL_49:
  if (v30 != 97)
  {
    goto LABEL_52;
  }

  v34 = off_2A1B71BE0(off_2A1B71BE0);
  *v34 = "";
  *a2 = sub_29AB538DC(a1);
  a2[1] = sub_29AB538DC(a1);
  v36 = *(a1 + 192);
  v35 = *(a1 + 200);
  if (v36 >= v35)
  {
    v37 = *(a1 + 48);
    if (v37)
    {
      v40 = (a1 + 56);
      v41 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v41)
      {
        v35 = &v40[v41];
        v37 = *v40;
      }

      else
      {
        v37 = 0;
        *(a1 + 48) = 0;
        v35 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v36 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v35;
    }
  }

  else
  {
    *(a1 + 192) = v36 + 1;
    v37 = *v36++;
  }

  a2[8] = v37;
  if (v36 >= v35)
  {
    v42 = *(a1 + 48);
    if (v42)
    {
      v43 = (a1 + 56);
      v44 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v44)
      {
        v35 = &v43[v44];
        v42 = *v43;
      }

      else
      {
        v42 = 0;
        *(a1 + 48) = 0;
        v35 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v36 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v35;
    }
  }

  else
  {
    *(a1 + 192) = v36 + 1;
    v42 = *v36++;
  }

  a2[9] = v42;
  if (v36 >= v35)
  {
    v45 = *(a1 + 48);
    if (v45)
    {
      v46 = (a1 + 56);
      v47 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v47)
      {
        v48 = &v46[v47];
        v45 = *v46;
      }

      else
      {
        v45 = 0;
        *(a1 + 48) = 0;
        v48 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v48;
    }
  }

  else
  {
    *(a1 + 192) = v36 + 1;
    v45 = *v36;
  }

  a2[10] = v45;
  a2[11] = -1;
  if (*a2 < 16777217 && a2[1] < 16777217)
  {
    if (a3)
    {
      *a3 = 4;
    }

    if (!a4)
    {
      v49 = a2[8];
      if ((v49 & 0x80) != 0)
      {
        sub_29AB53A08(a1, (a2 + 13), 2 << (v49 & 7), 0xFFFFFFFF);
      }
    }

    return 1;
  }

  else
  {
    result = 0;
    *v34 = "too large";
  }

  return result;
}

uint64_t sub_29AB538DC(uint64_t a1)
{
  v3 = *(a1 + 192);
  v2 = *(a1 + 200);
  if (v3 >= v2)
  {
    if (*(a1 + 48))
    {
      v5 = (a1 + 56);
      v6 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v6)
      {
        v2 = &v5[v6];
        v4 = *v5;
      }

      else
      {
        v4 = 0;
        *(a1 + 48) = 0;
        v2 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      v3 = (a1 + 57);
      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v4 = *v3++;
  }

  if (v3 >= v2)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = (a1 + 56);
      v9 = (*(a1 + 16))(*(a1 + 40), a1 + 56, *(a1 + 52));
      *(a1 + 184) += *(a1 + 192) - *(a1 + 208);
      if (v9)
      {
        v10 = &v8[v9];
        v7 = *v8;
      }

      else
      {
        v7 = 0;
        *(a1 + 48) = 0;
        v10 = (a1 + 57);
        *(a1 + 56) = 0;
      }

      *(a1 + 192) = a1 + 57;
      *(a1 + 200) = v10;
    }
  }

  else
  {
    *(a1 + 192) = v3 + 1;
    v7 = *v3;
  }

  return v4 | (v7 << 8);
}

uint64_t sub_29AB53A08(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = (result + 56);
    v6 = (result + 57);
    v7 = (a2 + 3);
    v8 = a4;
    v9 = a3;
    do
    {
      v10 = *(v4 + 192);
      if (v10 >= *(v4 + 200))
      {
        LODWORD(v10) = *(v4 + 48);
        if (v10)
        {
          result = (*(v4 + 16))(*(v4 + 40), v5, *(v4 + 52));
          *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
          if (result)
          {
            v11 = &v5[result];
            LOBYTE(v10) = *v5;
          }

          else
          {
            LOBYTE(v10) = 0;
            *(v4 + 48) = 0;
            *(v4 + 56) = 0;
            v11 = v6;
          }

          *(v4 + 192) = v6;
          *(v4 + 200) = v11;
        }
      }

      else
      {
        *(v4 + 192) = v10 + 1;
        LOBYTE(v10) = *v10;
      }

      *(v7 - 1) = v10;
      v12 = *(v4 + 192);
      if (v12 >= *(v4 + 200))
      {
        LODWORD(v12) = *(v4 + 48);
        if (v12)
        {
          result = (*(v4 + 16))(*(v4 + 40), v5, *(v4 + 52));
          *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
          if (result)
          {
            v13 = &v5[result];
            LOBYTE(v12) = *v5;
          }

          else
          {
            LOBYTE(v12) = 0;
            *(v4 + 48) = 0;
            *(v4 + 56) = 0;
            v13 = v6;
          }

          *(v4 + 192) = v6;
          *(v4 + 200) = v13;
        }
      }

      else
      {
        *(v4 + 192) = v12 + 1;
        LOBYTE(v12) = *v12;
      }

      *(v7 - 2) = v12;
      v14 = *(v4 + 192);
      if (v14 >= *(v4 + 200))
      {
        LODWORD(v14) = *(v4 + 48);
        if (v14)
        {
          result = (*(v4 + 16))(*(v4 + 40), v5, *(v4 + 52));
          *(v4 + 184) += *(v4 + 192) - *(v4 + 208);
          if (result)
          {
            v15 = &v5[result];
            LOBYTE(v14) = *v5;
          }

          else
          {
            LOBYTE(v14) = 0;
            *(v4 + 48) = 0;
            *(v4 + 56) = 0;
            v15 = v6;
          }

          *(v4 + 192) = v6;
          *(v4 + 200) = v15;
        }
      }

      else
      {
        *(v4 + 192) = v14 + 1;
        LOBYTE(v14) = *v14;
      }

      *(v7 - 3) = v14;
      v17 = v8-- != 0;
      *v7 = v17 << 31 >> 31;
      v7 += 4;
      --v9;
    }

    while (v9);
  }

  return result;
}