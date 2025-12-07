double sub_240B76DAC(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v8 = 8;
  v9 = a3;
  sub_240B3F2E8(sub_240B77F24, a1, &v8, 8, &a3[8]);
  v8 = 8;
  v9 = a3;
  v6 = 4;
  v7 = a2;
  sub_240B3F300(&v8, &v6);
  v8 = 4;
  v9 = a3;
  sub_240B41588(4, a2, &v8, a3 + 8);
  v8 = 4;
  v9 = a3;
  v6 = 8;
  v7 = a2;
  *&result = sub_240B404FC(&v8, &v6).u64[0];
  return result;
}

uint64_t sub_240B76E50(uint64_t a1, float32x4_t *a2, int32x4_t *a3, uint64_t a4)
{
  v14 = 4;
  v15 = a3;
  sub_240B414CC(a1, a2, &v14, (a4 + 64));
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = vzip1q_s32(*a3, v7);
  v10 = vzip1q_s32(v6, v8);
  v11 = vzip2q_s32(*a3, v7);
  v12 = vzip2q_s32(v6, v8);
  *a4 = vzip1q_s32(v9, v10);
  *(a4 + 16) = vzip2q_s32(v9, v10);
  *(a4 + 32) = vzip1q_s32(v11, v12);
  *(a4 + 48) = vzip2q_s32(v11, v12);
  v14 = 4;
  v15 = a3;
  return sub_240B414CC(4, a4, &v14, (a4 + 64));
}

void *sub_240B76EE0(void *result, void *a2)
{
  v2 = 0;
  do
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = result[1];
      v6 = *(v5 + 4 * *result * v2 + 4 * v3);
      v7 = *(v5 + 4 * *result * (v2 | 1) + 4 * v3);
      v8 = *(v5 + 4 * *result * (v2 | 2) + 4 * v3);
      v9 = *(v5 + 4 * *result * (v2 | 3) + 4 * v3);
      v10 = vzip1q_s32(v6, v8);
      v11 = vzip1q_s32(v7, v9);
      v12 = (a2[1] + 4 * *a2 * v3 + 4 * v2);
      v13 = vzip2q_s32(v6, v8);
      vst2_f32(v12, v10);
      *(a2[1] + 4 * *a2 * (v3 | 1) + 4 * v2) = vzip2q_s32(v10, v11);
      v14 = vzip2q_s32(v7, v9);
      v15 = (a2[1] + 4 * *a2 * (v3 | 2) + 4 * v2);
      v16 = v4;
      vst2_f32(v15, v13);
      *(a2[1] + 4 * *a2 * (v3 | 3) + 4 * v2) = vzip2q_s32(v13, v14);
      v3 = 4;
      v4 = 0;
    }

    while ((v16 & 1) != 0);
    v17 = v2 >= 0x1C;
    v2 += 4;
  }

  while (!v17);
  return result;
}

uint64_t sub_240B76FC4(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  v9 = 8;
  v10 = a1;
  v7 = 4;
  v8 = a3;
  sub_240B3F300(&v9, &v7);
  sub_240B3F3A8(a3, 4, a1, 4, a3 + 8);
  v9 = 4;
  v10 = a1;
  v7 = 8;
  v8 = a3;
  sub_240B404FC(&v9, &v7);
  v9 = 8;
  v10 = a3;
  return sub_240B3F2E8(sub_240B77454, &v9, a2, 8, &a3[8]);
}

void sub_240B77074(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = a4 + 128;
    v32 = a4 + 255;
    v31 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v11 = 0;
      v13 = *a1;
      v12 = a1[1];
      v14 = *a2;
      v15 = a2[1];
      v16 = (v12 + v8);
      v17 = 8 * *a1;
      do
      {
        a4[v11++] = *v16;
        v16 = (v16 + v17);
      }

      while (v11 != 128);
      v18 = v12 + 4 * v13;
      for (i = 128; i != 256; ++i)
      {
        a4[i] = *(v18 + v8);
        v18 += v17;
      }

      sub_240B3FC4C(a4, 4, a4, 4, a4 + 256);
      v20 = -127;
      v21 = v32;
      v22 = v32;
      do
      {
        v23 = v22[-1];
        --v22;
        *v21 = vaddq_f32(*v21, v23);
        v21 = v22;
      }

      while (!__CFADD__(v20++, 1));
      *v10 = vmulq_f32(*v10, v31);
      sub_240B3FC4C(v10, 4, v10, 4, a4 + 256);
      v26 = 0;
      v27 = v15 + 1020 * v14;
      v28 = a4;
      do
      {
        v25.f32[0] = dword_240C845B0[v26];
        v29 = v28[128];
        v30 = vmlsq_lane_f32(*v28, v29, v25, 0);
        *(v15 + v8) = vmlaq_n_f32(*v28, v29, v25.f32[0]);
        *(v27 + v8) = v30;
        ++v26;
        v27 -= 4 * v14;
        v15 += 4 * v14;
        ++v28;
      }

      while (v26 != 128);
      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void sub_240B77210(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3FC4C((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B77284(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3FD84((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B772F8(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3FEBC((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B7736C(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3F3A8((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B773E0(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B3FFF4((a1[1] + v8), *a1, (a2[1] + v8), *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B77454(uint64_t *a1, uint64_t *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      sub_240B40454((a1[1] + v8), *a1, a2[1] + v8, *a2, a4);
      v8 += 16;
    }
  }
}

void sub_240B774C8(void *result, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v7 = 0;
    v8 = 0;
    v9 = a4 + 256;
    v10 = a4 + 384;
    v11 = a4 + 385;
    v12 = a4 + 1;
    v29 = vdupq_n_s32(0x3B800000u);
    v30 = vdupq_n_s32(0x3FB504F3u);
    do
    {
      v13 = 0;
      v14 = (result[1] + v7);
      v15 = 4 * *result;
      do
      {
        a4[v13++] = *v14;
        v14 = (v14 + v15);
      }

      while (v13 != 256);
      v16 = a4;
      for (i = 255; i != 127; --i)
      {
        v16[256] = vaddq_f32(*v16, a4[i]);
        ++v16;
      }

      sub_240B776C4(v9, a4 + 512);
      v18 = a4;
      for (j = 255; j != 127; --j)
      {
        v18[384] = vsubq_f32(*v18, a4[j]);
        ++v18;
      }

      for (k = 0; k != 128; ++k)
      {
        v10[k] = vmulq_n_f32(v10[k], dword_240C845B0[k]);
      }

      sub_240B776C4(v10, a4 + 512);
      *v10 = vmlaq_f32(*v11, v30, *v10);
      v21 = 126;
      v22 = v11;
      v23 = v11;
      do
      {
        v24 = v23[1];
        ++v23;
        *v22 = vaddq_f32(*v22, v24);
        v22 = v23;
        --v21;
      }

      while (v21);
      v25 = a4;
      do
      {
        *v25 = *(v9 + v21);
        v25 += 2;
        v21 += 16;
      }

      while (v21 != 2048);
      v26 = 0;
      v27 = v12;
      do
      {
        *v27 = v10[v26];
        v27 += 2;
        ++v26;
      }

      while (v26 != 128);
      for (m = 0; m != 256; ++m)
      {
        *(a2[1] + 4 * *a2 * m + 4 * v8) = vmulq_f32(a4[m], v29);
      }

      v8 += 4;
      v7 += 16;
    }

    while (v8 < a3);
  }
}

__n128 sub_240B776C4(uint64_t a1, float32x4_t *a2)
{
  v4 = 0;
  for (i = 2032; i != 1008; i -= 16)
  {
    a2[v4] = vaddq_f32(*(a1 + v4 * 16), *(a1 + i));
    ++v4;
  }

  sub_240B777F8(a2, a2 + 128);
  v6 = 0;
  v7 = a2 + 64;
  v8 = 2032;
  do
  {
    v7[v6] = vsubq_f32(*(a1 + v6 * 16), *(a1 + v8));
    ++v6;
    v8 -= 16;
  }

  while (v6 != 64);
  for (j = 0; j != 64; ++j)
  {
    v7[j] = vmulq_n_f32(v7[j], dword_240C844B0[j]);
  }

  sub_240B777F8(v7, a2 + 128);
  v10 = a2 + 65;
  a2[64] = vmlaq_f32(a2[65], vdupq_n_s32(0x3FB504F3u), a2[64]);
  v11 = 62;
  v12 = a2 + 65;
  do
  {
    v13 = v12[1];
    ++v12;
    *v10 = vaddq_f32(*v10, v13);
    v10 = v12;
    --v11;
  }

  while (v11);
  v14 = 0;
  v15 = a1;
  do
  {
    *v15 = a2[v14];
    v15 += 2;
    ++v14;
  }

  while (v14 != 64);
  v16 = 0;
  v17 = (a1 + 16);
  do
  {
    result = a2[v16 + 64];
    *v17 = result;
    v17 += 2;
    ++v16;
  }

  while (v16 != 64);
  return result;
}

__n128 sub_240B777F8(uint64_t a1, float32x4_t *a2)
{
  v4 = 0;
  for (i = 1008; i != 496; i -= 16)
  {
    a2[v4] = vaddq_f32(*(a1 + v4 * 16), *(a1 + i));
    ++v4;
  }

  sub_240B77928(a2, a2 + 64);
  v6 = 0;
  v7 = a2 + 32;
  v8 = 1008;
  do
  {
    v7[v6] = vsubq_f32(*(a1 + v6 * 16), *(a1 + v8));
    ++v6;
    v8 -= 16;
  }

  while (v6 != 32);
  for (j = 0; j != 32; ++j)
  {
    v7[j] = vmulq_n_f32(v7[j], dword_240C84430[j]);
  }

  sub_240B77928(v7, a2 + 64);
  v10 = a2 + 33;
  a2[32] = vmlaq_f32(a2[33], vdupq_n_s32(0x3FB504F3u), a2[32]);
  v11 = 30;
  v12 = a2 + 33;
  do
  {
    v13 = v12[1];
    ++v12;
    *v10 = vaddq_f32(*v10, v13);
    v10 = v12;
    --v11;
  }

  while (v11);
  v14 = 0;
  v15 = a1;
  do
  {
    *v15 = a2[v14];
    v15 += 2;
    ++v14;
  }

  while (v14 != 32);
  v16 = 0;
  v17 = (a1 + 16);
  do
  {
    result = a2[v16 + 32];
    *v17 = result;
    v17 += 2;
    ++v16;
  }

  while (v16 != 32);
  return result;
}

__n128 sub_240B77928(uint64_t a1, float32x4_t *a2)
{
  v4 = 0;
  for (i = 496; i != 240; i -= 16)
  {
    a2[v4] = vaddq_f32(*(a1 + v4 * 16), *(a1 + i));
    ++v4;
  }

  sub_240B417F4(a2, a2 + 32);
  v6 = 0;
  v7 = a2 + 16;
  v8 = 496;
  do
  {
    v7[v6] = vsubq_f32(*(a1 + v6 * 16), *(a1 + v8));
    ++v6;
    v8 -= 16;
  }

  while (v6 != 16);
  for (j = 0; j != 16; ++j)
  {
    v7[j] = vmulq_n_f32(v7[j], dword_240C83FEC[j]);
  }

  sub_240B417F4(v7, a2 + 32);
  v10 = a2 + 17;
  a2[16] = vmlaq_f32(a2[17], vdupq_n_s32(0x3FB504F3u), a2[16]);
  v11 = 14;
  v12 = a2 + 17;
  do
  {
    v13 = v12[1];
    ++v12;
    *v10 = vaddq_f32(*v10, v13);
    v10 = v12;
    --v11;
  }

  while (v11);
  v14 = 0;
  v15 = a1;
  do
  {
    *v15 = a2[v14];
    v15 += 2;
    ++v14;
  }

  while (v14 != 16);
  v16 = 0;
  v17 = (a1 + 16);
  do
  {
    result = a2[v16 + 16];
    *v17 = result;
    v17 += 2;
    ++v16;
  }

  while (v16 != 16);
  return result;
}

void sub_240B77A58(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 128);
      sub_240B776C4(a4, a4 + 128);
      v13 = 0;
      v14.i64[0] = 0x3C0000003C000000;
      v14.i64[1] = 0x3C0000003C000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 128);
      v8 += 16;
    }
  }
}

void sub_240B77B18(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3C800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 64);
      sub_240B777F8(a4, a4 + 64);
      for (i = 0; i != 64; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void *sub_240B77BEC(void *result, void *a2, unint64_t a3, unint64_t a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 12;
    v7 = 8;
    v8 = 4;
    do
    {
      if (a4)
      {
        v9 = 0;
        for (i = 0; i < a4; i += 4)
        {
          v11 = result[1];
          v12 = *(v11 + v4 * *result + v9);
          v13 = *(v11 + v8 * *result + v9);
          v14 = *(v11 + v7 * *result + v9);
          v15 = *(v11 + v6 * *result + v9);
          v16 = vzip1q_s32(v12, v14);
          v17 = vzip1q_s32(v13, v15);
          v18 = vzip2q_s32(v12, v14);
          v19 = vzip2q_s32(v13, v15);
          v20 = (a2[1] + 4 * *a2 * i + 4 * v5);
          vst2_f32(v20, v16);
          *(a2[1] + 4 * (*a2 + *a2 * i) + 4 * v5) = vzip2q_s32(v16, v17);
          v21 = (a2[1] + 4 * *a2 * (i + 2) + 4 * v5);
          vst2_f32(v21, v18);
          *(a2[1] + 4 * *a2 * (i + 3) + 4 * v5) = vzip2q_s32(v18, v19);
          v9 += 16;
        }
      }

      v5 += 4;
      v6 += 16;
      v7 += 16;
      v8 += 16;
      v4 += 16;
    }

    while (v5 < a3);
  }

  return result;
}

void sub_240B77CD0(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 32);
      sub_240B77928(a4, a4 + 32);
      v13 = 0;
      v14.i64[0] = 0x3D0000003D000000;
      v14.i64[1] = 0x3D0000003D000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 32);
      v8 += 16;
    }
  }
}

void sub_240B77D90(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    for (i = 0; i < a3; i += 4)
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 8);
      sub_240B41928(a4, a4 + 8);
      v13 = 0;
      v14.i64[0] = 0x3E0000003E000000;
      v14.i64[1] = 0x3E0000003E000000;
      do
      {
        *(a2[1] + 4 * *a2 * v13 + 4 * i) = vmulq_f32(a4[v13], v14);
        ++v13;
      }

      while (v13 != 8);
      v8 += 16;
    }
  }
}

void sub_240B77E50(void *a1, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v14 = vdupq_n_s32(0x3D800000u);
    do
    {
      v10 = 0;
      v11 = (a1[1] + v8);
      v12 = 4 * *a1;
      do
      {
        a4[v10++] = *v11;
        v11 = (v11 + v12);
      }

      while (v10 != 16);
      sub_240B417F4(a4, a4 + 16);
      for (i = 0; i != 16; ++i)
      {
        *(a2[1] + 4 * *a2 * i + 4 * v9) = vmulq_f32(a4[i], v14);
      }

      v9 += 4;
      v8 += 16;
    }

    while (v9 < a3);
  }
}

void *sub_240B77F24(void *result, void *a2, unint64_t a3, float32x4_t *a4)
{
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = vdupq_n_s32(0x3F0A8BD4u);
    v7 = vdupq_n_s32(0x3FA73D75u);
    v8 = vdupq_n_s32(0x3FB504F3u);
    __asm { FMOV            V3.4S, #0.25 }

    do
    {
      v14 = 0;
      v15 = (result[1] + v4);
      v16 = 4 * *result;
      do
      {
        a4[v14++] = *v15;
        v15 = (v15 + v16);
      }

      while (v14 != 4);
      v17 = 0;
      v18 = *a4;
      v19 = a4[1];
      v21 = a4[2];
      v20 = a4[3];
      v22 = vaddq_f32(*a4, v20);
      v23 = vaddq_f32(v19, v21);
      v24 = vaddq_f32(v22, v23);
      v25 = vsubq_f32(v22, v23);
      a4[4] = v24;
      a4[5] = v25;
      v26 = vmulq_f32(vsubq_f32(v18, v20), v6);
      v27 = vmulq_f32(vsubq_f32(v19, v21), v7);
      v28 = vaddq_f32(v26, v27);
      v29 = vsubq_f32(v26, v27);
      a4[7] = v29;
      a4[2] = v25;
      a4[3] = v29;
      v30 = vmlaq_f32(v29, v8, v28);
      a4[6] = v30;
      *a4 = v24;
      a4[1] = v30;
      do
      {
        *(a2[1] + 4 * *a2 * v17 + 4 * v5) = vmulq_f32(a4[v17], _Q3);
        ++v17;
      }

      while (v17 != 4);
      v5 += 4;
      v4 += 16;
    }

    while (v5 < a3);
  }

  return result;
}

void sub_240B78008(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float *a7, uint64_t a8, float a9, float a10, uint64_t a11, uint64_t a12, float32x4_t *a13, uint64_t a14)
{
  v97 = *MEMORY[0x277D85DE8];
  if (a1 == 4)
  {
    LODWORD(v19) = 10;
  }

  else
  {
    LODWORD(v19) = 19;
  }

  if (a1 == 4)
  {
    v20 = 11;
  }

  else
  {
    v20 = 20;
  }

  v94 = 1;
  if (a1 == 4)
  {
    v21 = 5;
  }

  else
  {
    v21 = 18;
  }

  if (a1 == 2)
  {
    v19 = 6;
  }

  else
  {
    v19 = v19;
  }

  v22 = v19;
  v93 = v19;
  v92 = 1;
  if (a1 == 2)
  {
    v23 = 7;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23;
  v91 = v23;
  v90 = 1;
  if (a1 == 2)
  {
    v25 = 4;
  }

  else
  {
    v25 = v21;
  }

  v85 = v25;
  v89 = v25;
  v26 = a6 + a4;
  v28 = *(a11 + 16);
  v27 = *(a11 + 24);
  v29 = a5 + a3;
  if (sub_240B73334(a11, a5 + a3, a6 + a4, a5 + a3 + a1) & 1) != 0 || (sub_240B73334(a11, v29, v26 + a1, v29 + a1) & 1) != 0 || (sub_240B733CC(a11, v29, v26, v26 + a1) & 1) != 0 || (sub_240B733CC(a11, v29 + a1, v26, v26 + a1))
  {
    return;
  }

  v84 = a5;
  v30 = a1 >> 1;
  v83 = v27 + v28 * v26;
  v80 = v27 + v28 * (v26 + (a1 >> 1));
  v81 = v29 + (a1 >> 1);
  v82 = sub_240B733CC(a11, v81, v26, v26 + a1);
  v79 = v26 + (a1 >> 1);
  v31 = sub_240B73334(a11, v29, v79, v29 + a1);
  v32 = 0;
  v95 = 0;
  v96 = 0;
  v33 = a6;
  v34 = a12 + 32 * a6 + 4 * v84;
  do
  {
    v35 = 0;
    do
    {
      *(&v95 + 2 * (v32 / v30) + v35 / v30) = *(v34 + 4 * v35) + *(&v95 + 2 * (v32 / v30) + v35 / v30);
      ++v35;
    }

    while (a1 != v35);
    ++v32;
    v34 += 32;
  }

  while (v32 != a1);
  if ((v82 & 1) == 0)
  {
    v39 = v31;
    if (v22 == *(v83 + v29) >> 1)
    {
      v37 = 3.4028e38;
    }

    else
    {
      v37 = sub_240B73474(&v93, 8 * v29, 8 * v26, a7, a8, a13, a14, a9);
    }

    if (v22 == *(v83 + v81) >> 1)
    {
      v36 = 3.4028e38;
    }

    else
    {
      v36 = sub_240B73474(&v93, 8 * v81, 8 * v26, a7, a8, a13, a14, a9);
    }

    v41 = v39;
    v33 = a6;
    if ((v41 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_42:
    v40 = 3.4028e38;
    v38 = 3.4028e38;
    goto LABEL_43;
  }

  v36 = 3.4028e38;
  v37 = 3.4028e38;
  if (v31)
  {
    goto LABEL_42;
  }

LABEL_29:
  if (v24 == *(v83 + v29) >> 1)
  {
    v38 = 3.4028e38;
  }

  else
  {
    v38 = sub_240B73474(&v91, 8 * v29, 8 * v26, a7, a8, a13, a14, a9);
  }

  if (v24 == *(v80 + v29) >> 1)
  {
    v40 = 3.4028e38;
  }

  else
  {
    v40 = sub_240B73474(&v91, 8 * v29, 8 * v79, a7, a8, a13, a14, a9);
  }

LABEL_43:
  if (a2)
  {
    v42 = sub_240B73474(&v89, 8 * v29, 8 * v26, a7, a8, a13, a14, a10);
  }

  else
  {
    v42 = 3.4028e38;
  }

  if ((*&v95 + *&v96) >= v37)
  {
    v43 = v37;
  }

  else
  {
    v43 = *&v95 + *&v96;
  }

  v44 = *(&v95 + 1) + *(&v96 + 1);
  if ((*(&v95 + 1) + *(&v96 + 1)) >= v36)
  {
    v45 = v36;
  }

  else
  {
    v45 = *(&v95 + 1) + *(&v96 + 1);
  }

  v46 = v43 + v45;
  if ((*&v95 + *(&v95 + 1)) >= v38)
  {
    v47 = v38;
  }

  else
  {
    v47 = *&v95 + *(&v95 + 1);
  }

  v48 = *&v96 + *(&v96 + 1);
  if ((*&v96 + *(&v96 + 1)) >= v40)
  {
    v49 = v40;
  }

  else
  {
    v49 = *&v96 + *(&v96 + 1);
  }

  v50 = v47 + v49;
  if (v42 < v46 && v42 < v50)
  {
    sub_240B4541C(a11, v29, v26, v85, 0);
    v63 = byte_240C87EA0[v85];
    if (v63 <= 1)
    {
      v63 = 1;
    }

    v64 = 4 * v63;
    if (byte_240C87EBB[v85] <= 1u)
    {
      v65 = 1;
    }

    else
    {
      v65 = byte_240C87EBB[v85];
    }

    v66 = a12 + 32 * v33;
    v67 = (v66 + 4 * v84);
    do
    {
      bzero(v67, v64);
      v67 += 32;
      --v65;
    }

    while (v65);
    *(v66 + 4 * v84) = v42;
  }

  else if (v46 >= v50)
  {
    if (v38 < (*&v95 + *(&v95 + 1)))
    {
      sub_240B4541C(a11, v29, v26, v24, 0);
      v68 = byte_240C87EA0[v24];
      if (v68 <= 1)
      {
        v68 = 1;
      }

      v69 = 4 * v68;
      if (byte_240C87EBB[v24] <= 1u)
      {
        v70 = 1;
      }

      else
      {
        v70 = byte_240C87EBB[v24];
      }

      v71 = a12 + 32 * v33;
      v72 = (v71 + 4 * v84);
      do
      {
        bzero(v72, v69);
        v72 += 32;
        --v70;
      }

      while (v70);
      *(v71 + 4 * v84) = v38;
      v33 = a6;
    }

    if (v40 < v48)
    {
      sub_240B4541C(a11, v29, v79, v24, 0);
      v73 = v30 + v33;
      v74 = byte_240C87EA0[v24];
      if (v74 <= 1)
      {
        v74 = 1;
      }

      v75 = 4 * v74;
      if (byte_240C87EBB[v24] <= 1u)
      {
        v76 = 1;
      }

      else
      {
        v76 = byte_240C87EBB[v24];
      }

      v77 = a12 + 32 * v73;
      v78 = (v77 + 4 * v84);
      do
      {
        bzero(v78, v75);
        v78 += 32;
        --v76;
      }

      while (v76);
      *(v77 + 4 * v84) = v40;
    }
  }

  else
  {
    if (v37 < (*&v95 + *&v96))
    {
      sub_240B4541C(a11, v29, v26, v22, 0);
      v52 = byte_240C87EA0[v22];
      if (v52 <= 1)
      {
        v52 = 1;
      }

      v53 = 4 * v52;
      if (byte_240C87EBB[v22] <= 1u)
      {
        v54 = 1;
      }

      else
      {
        v54 = byte_240C87EBB[v22];
      }

      v55 = a12 + 32 * v33;
      v56 = (v55 + 4 * v84);
      do
      {
        bzero(v56, v53);
        v56 += 32;
        --v54;
      }

      while (v54);
      *(v55 + 4 * v84) = v37;
      v33 = a6;
    }

    if (v36 < v44)
    {
      sub_240B4541C(a11, v81, v26, v22, 0);
      v57 = v30 + v84;
      v58 = byte_240C87EA0[v22];
      if (v58 <= 1)
      {
        v58 = 1;
      }

      v59 = 4 * v58;
      if (byte_240C87EBB[v22] <= 1u)
      {
        v60 = 1;
      }

      else
      {
        v60 = byte_240C87EBB[v22];
      }

      v61 = a12 + 32 * v33;
      v62 = (v61 + 4 * v57);
      do
      {
        bzero(v62, v59);
        v62 += 32;
        --v60;
      }

      while (v60);
      *(v61 + 4 * v57) = v36;
    }
  }
}

void sub_240B786A0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = a1[1];
    if (v2)
    {
      v2(a1[2], *(v1 - 16));
    }

    else
    {
      v3 = *(v1 - 16);

      free(v3);
    }
  }
}

unsigned int *sub_240B786F4(unsigned int *result, void *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = sub_240B22360(result, 1u);
    v5 = sub_240B22360(v3, 2u) + v4;
    a2[76] = v5 + sub_240B22360(v3, 3u);
    v6 = sub_240B22360(v3, 0xCu);
    a2[77] = sub_240B22360(v3, 0xDu) + v6;
    v7 = sub_240B22360(v3, 0xEu);
    v8 = sub_240B22360(v3, 0xFu) + v7;
    v9 = sub_240B22360(v3, 0x10u);
    a2[78] = v8 + v9 + sub_240B22360(v3, 0x11u);
    a2[79] = sub_240B22360(v3, 0);
    v10 = sub_240B22360(v3, 7u);
    a2[80] = sub_240B22360(v3, 6u) + v10;
    v11 = sub_240B22360(v3, 9u);
    a2[81] = sub_240B22360(v3, 8u) + v11;
    a2[82] = sub_240B22360(v3, 4u);
    v12 = sub_240B22360(v3, 0xBu);
    a2[83] = sub_240B22360(v3, 0xAu) + v12;
    a2[84] = sub_240B22360(v3, 5u);
    v13 = sub_240B22360(v3, 0x14u);
    a2[85] = sub_240B22360(v3, 0x13u) + v13;
    result = sub_240B22360(v3, 0x12u);
    a2[86] = result;
  }

  return result;
}

uint64_t sub_240B78894(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  v5 = 1.0;
  if (*&a5 > 1.5414)
  {
    v5 = ((*&a5 + -1.5414) * -0.56391) + 1.0;
    if (v5 < 0.0)
    {
      v5 = 0.0;
    }
  }

  v6 = a3[3];
  if (v6)
  {
    v7 = 0;
    v8 = *(a4 + 16);
    v9 = *(a4 + 24);
    v11 = *a3;
    v10 = a3[1];
    v12 = a3[2];
    *&a5 = 1.0 - v5;
    v13 = (v9 + v10 * v8 + 4 * *a3);
    v14 = 4 * (v8 >> 2);
    v15 = v13 + 2;
    v16 = vdupq_n_s64(4uLL);
    do
    {
      if (v12)
      {
        v17 = 0;
        v18 = v15;
        v19 = v13;
        do
        {
          v20 = *(a2 + (v10 + v7) * result + v11 + v17);
          if (v20)
          {
            v21 = 0;
            v22 = v20 >> 1;
            v23 = byte_240C87EBB[v22];
            v24 = *(v9 + (v10 + v7) * v8 + 4 * v11 + 4 * v17);
            v25 = byte_240C87EA0[v22];
            if (v25 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = byte_240C87EA0[v22];
            }

            if (v23 <= 1)
            {
              v27 = 1;
            }

            else
            {
              v27 = byte_240C87EBB[v22];
            }

            v28 = 0.0;
            v29 = v19;
            do
            {
              v30 = v29;
              v31 = v26;
              do
              {
                v32 = *v30++;
                v33 = v32;
                v28 = v28 + v32;
                if (v32 >= v24)
                {
                  v24 = v33;
                }

                --v31;
              }

              while (v31);
              ++v21;
              v29 = (v29 + v14);
            }

            while (v21 != v27);
            v34 = v25 * v23;
            if (v34 > 3)
            {
              v24 = (v5 * v24) + (*&a5 * (v28 / v34));
            }

            v35 = 0;
            v36 = (v26 + 3) & 0x1FC;
            v37 = vdupq_n_s64(v26 - 1);
            v38 = v18;
            do
            {
              v39 = v38;
              v40 = v36;
              v41 = xmmword_240C111D0;
              v42 = xmmword_240C111C0;
              do
              {
                v43 = vmovn_s64(vcgeq_u64(v37, v41));
                if (vuzp1_s16(v43, *&a5).u8[0])
                {
                  *(v39 - 2) = v24;
                }

                if (vuzp1_s16(v43, *&a5).i8[2])
                {
                  *(v39 - 1) = v24;
                }

                if (vuzp1_s16(*&a5, vmovn_s64(vcgeq_u64(v37, *&v42))).i32[1])
                {
                  *v39 = v24;
                  v39[1] = v24;
                }

                v42 = vaddq_s64(v42, v16);
                v41 = vaddq_s64(v41, v16);
                v39 += 4;
                v40 -= 4;
              }

              while (v40);
              ++v35;
              v38 = (v38 + v14);
            }

            while (v35 != v27);
          }

          ++v17;
          ++v19;
          ++v18;
        }

        while (v17 != v12);
      }

      ++v7;
      v13 = (v13 + v8);
      v15 = (v15 + v8);
    }

    while (v7 != v6);
  }

  return result;
}

uint64_t sub_240B78AC4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2)
  {
    v4 = a2;
    v10[0] = a3;
    v10[1] = a4;
    if (*result)
    {
      return (*result)(*(result + 8), v10, sub_240B78BB0, sub_240B78E88, 0, a2);
    }

    else
    {
      result = sub_240B78BB0(v10, 1uLL);
      if (!result)
      {
        for (i = 0; i != v4; ++i)
        {
          result = sub_240B78E88(v10, i, 0, v5, v6, v7, v8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_240B78B68(uint64_t a1)
{
  sub_240B22320((a1 + 88));
  sub_240B22320((a1 + 48));
  v3 = a1;
  sub_240B30C38(&v3);
  return a1;
}

uint64_t sub_240B78BB0(uint64_t **a1, unint64_t a2)
{
  v3 = **a1;
  sub_240B23590(&v34, 0x48u, a2);
  v4 = v38;
  if (!v38)
  {
    v6 = v35;
    v5 = v36;
    v36 = 0;
    v7 = v37;
    *(v3 + 64) = v34;
    v8 = *(v3 + 88);
    *(v3 + 80) = v6;
    *(v3 + 88) = v5;
    if (v8)
    {
      atomic_fetch_add(&qword_27E519020, -*(v8 - 24));
      free(*(v8 - 32));
    }

    *(v3 + 96) = v7;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 8) - *v3) >> 3);
    v10 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_21:
      v4 = 0;
    }

    else
    {
      while (1)
      {
        sub_240B23590(&v29, 0x12u, 0x12u);
        v4 = v33;
        if (v33)
        {
          break;
        }

        v12 = v31;
        v11 = v32;
        v31 = 0;
        v13 = *(v3 + 8);
        v14 = *(v3 + 16);
        if (v13 >= v14)
        {
          v16 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - *v3) >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0x666666666666666)
          {
            sub_240B228BC();
          }

          v18 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *v3) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x333333333333333)
          {
            v19 = 0x666666666666666;
          }

          else
          {
            v19 = v17;
          }

          v42 = v3;
          if (v19)
          {
            sub_240B59980(v19);
          }

          v20 = 40 * v16;
          v39 = 0;
          v40 = v20;
          *(&v41 + 1) = 0;
          *v20 = v29;
          *(v20 + 16) = v30;
          *(v20 + 24) = v12;
          *(v20 + 32) = v11;
          *&v41 = 40 * v16 + 40;
          v21 = *(v3 + 8);
          v22 = 40 * v16 + *v3 - v21;
          sub_240B59A2C(*v3, v21, v22);
          v23 = *v3;
          *v3 = v22;
          v24 = *(v3 + 16);
          v28 = v41;
          v40 = v23;
          *&v41 = v23;
          *(v3 + 8) = v28;
          *(&v41 + 1) = v24;
          v39 = v23;
          sub_240B599D8(&v39);
          v15 = v28;
        }

        else
        {
          *v13 = v29;
          *(v13 + 16) = v30;
          *(v13 + 24) = v12;
          *(v13 + 32) = v11;
          v15 = v13 + 40;
        }

        *(v3 + 8) = v15;
        if (!v33)
        {
          v25 = v31;
          v31 = 0;
          if (v25)
          {
            atomic_fetch_add(&qword_27E519020, -*(v25 - 24));
            free(*(v25 - 32));
          }
        }

        if (!--v10)
        {
          goto LABEL_21;
        }
      }
    }

    if (!v38)
    {
      v26 = v36;
      v36 = 0;
      if (v26)
      {
        atomic_fetch_add(&qword_27E519020, -*(v26 - 24));
        free(*(v26 - 32));
      }
    }
  }

  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240B78E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22)
{
  if (!v23 || (atomic_fetch_add(v22, -*(v23 - 24)), free(*(v23 - 32)), !a16))
  {
    if (a14)
    {
      atomic_fetch_add(v22, -*(a14 - 24));
      free(*(a14 - 32));
    }
  }

  if (!a22)
  {
    if (a20)
    {
      atomic_fetch_add(v22, -*(a20 - 24));
      free(*(a20 - 32));
    }
  }

  _Unwind_Resume(a1);
}

unint64_t sub_240B78E88(uint64_t a1, unsigned int a2, int a3, double a4, double a5, double a6, float32x4_t a7)
{
  v9 = *(a1 + 8);
  v10 = **v9;
  v11 = (v10 + 7) >> 3;
  v12 = a2 / v11;
  v13 = v9[6];
  v14 = *v13;
  v15 = v13[1];
  v16 = *v13 + ((a2 % v11) << 6);
  v17 = a2 % v11;
  v280 = 8 * v12;
  if (v17)
  {
    v18 = *v13 + ((a2 % v11) << 6);
  }

  else
  {
    v18 = v16 - 2;
  }

  v263 = *v9[1];
  if (v263 >= 8 * v12 + 8)
  {
    v19 = 8 * v12 + 8;
  }

  else
  {
    v19 = *v9[1];
  }

  v275 = 8 * v17;
  v271 = **v9;
  if (v10 >= 8 * v17 + 8)
  {
    v10 = 8 * v17 + 8;
  }

  v20 = v10 - 8 * v17;
  v21 = v19 - 8 * v12;
  v272 = v9[2];
  v260 = *v9[3];
  v22 = v9[5];
  v253 = *v9[4];
  v252 = *v9[7];
  v23 = *v22;
  v270 = v22;
  v24 = v12 << 6;
  v25 = v15 + (v12 << 6);
  v261 = v21;
  v26 = v17 << 6;
  if (v14)
  {
    v27 = v18;
  }

  else
  {
    v27 = v26;
  }

  v281 = v10;
  v28 = v13[2];
  v29 = v13[3];
  v262 = v20;
  v258 = *v13 + ((a2 % v11) << 6);
  _CF = 8 * v10 != v28 || v28 + v14 >= v23;
  v31 = v16 + 8 * v20 + 2;
  v254 = v9[6];
  v255 = v16 + 8 * v20;
  if (_CF)
  {
    v31 = v16 + 8 * v20;
  }

  v268 = v19;
  v269 = v31;
  v256 = v25;
  v257 = v25 + 8 * v21;
  if (v11 <= a2)
  {
    v32 = v25;
  }

  else
  {
    v32 = v25 - 2;
  }

  if (!v15)
  {
    v32 = v24;
  }

  v278 = v22[1];
  v33 = 8 * v19 != v29 || v29 + v15 >= v22[1];
  v34 = v25 + 8 * v21 + 2;
  if (v33)
  {
    v34 = v25 + 8 * v21;
  }

  v267 = v34;
  if (v32 < v34)
  {
    v265 = *(v22 + 8);
    v266 = *(*v9[8] + 16);
    v35 = *(*v9[8] + 24) + v32 * v266 + 4 * v27;
    v273 = *(v22 + 2);
    v36 = v265 + v32 * v273 + 4 * v27;
    v264 = v265 + 4 * v27;
    a7.i32[0] = -0.25;
    v37 = vdup_n_s32(0x42EFD02Bu);
    v38 = vdup_n_s32(0x3C23D70Au);
    v39 = vdup_n_s32(0x431D2FBDu);
    v40 = vdup_n_s32(0x40ACF18Eu);
    do
    {
      if (v32)
      {
        v41 = v32 - 1;
      }

      else
      {
        v41 = 0;
      }

      v276 = v32 + 1;
      if (v32 + 1 >= v278)
      {
        v42 = v32;
      }

      else
      {
        v42 = v32 + 1;
      }

      if (v27 < v269)
      {
        v43 = 0;
        v44 = v264 + v273 * v41;
        v45 = v265 + v32 * v273;
        v46 = v264 + v42 * v273;
        v47 = v27;
        do
        {
          v48 = v27 + v43;
          if (v27 + v43 + 1 < v23)
          {
            ++v48;
          }

          v49 = (v36 + 4 * v43);
          *&a6 = *v49 + 0.019;
          v50 = (((*(v46 + 4 * v43) + *(v44 + 4 * v43)) + v49[-(v47 != 0)]) + *(v45 + 4 * v48)) * a7.f32[0];
          v51 = vmaxnm_f32(vdup_lane_s32(*&a6, 0), 0);
          v52 = vmul_f32(v51, v51);
          ++v47;
          v53 = log1pf(fabsf((*v49 + v50) * vdiv_f32(vmla_f32(v40, v52, vmul_f32(v51, v39)), vmla_f32(v38, v37, v52)).f32[0]));
          a7.i32[0] = -0.25;
          *(v35 + 4 * v43++) = 1.0 / (v53 + 0.01);
        }

        while (v27 - v269 + v43);
      }

      v35 += v266;
      v36 += v273;
      v32 = v276;
    }

    while (v276 != v267);
  }

  if (v258)
  {
    v54 = v258 - 4;
  }

  else
  {
    v54 = 0;
  }

  if (v255 == v23)
  {
    v55 = v255;
  }

  else
  {
    v55 = v255 + 4;
  }

  v56 = v256 - 4;
  if (!v256)
  {
    v56 = 0;
  }

  if (v257 == v278)
  {
    v57 = v257;
  }

  else
  {
    v57 = v257 + 4;
  }

  v58 = *v272;
  v59 = (*v272 + 40 * a3);
  result = (v55 - v54) >> 2;
  v61 = (v57 - v56) >> 2;
  *v59 = result;
  v59[1] = v61;
  if (v57 > v56)
  {
    v62 = 0;
    if (result <= 1)
    {
      v63 = 1;
    }

    else
    {
      v63 = (v55 - v54) >> 2;
    }

    *a7.f32 = vdup_n_s32(0x42EFD02Bu);
    v64 = vdup_n_s32(0x3C23D70Au);
    v65 = vdup_n_s32(0x431D2FBDu);
    v66 = vdup_n_s32(0x40ACF18Eu);
    v67 = vdup_n_s32(0x480E0877u);
    v68 = vdupq_n_s32(0x3C9BA5E3u);
    v69 = vdup_n_s32(0x41DFC37Bu);
    __asm { FMOV            V19.4S, #0.25 }

    v74 = vdupq_n_s32(0x42EFD02Bu);
    v75 = vdupq_n_s32(0x3C23D70Au);
    v76 = vdupq_n_s32(0x431D2FBDu);
    v77 = vdupq_n_s32(0x40ACF18Eu);
    v78 = vdupq_n_s32(0x3E4CCCCDu);
    v79 = vdupq_n_s32(0x480E0877u);
    v7 = vdupq_n_s32(0x41DFC37Bu);
    v80 = v56;
    do
    {
      if (v80)
      {
        v81 = v80 - 1;
      }

      else
      {
        v81 = 0;
      }

      v82 = v80 + 1;
      if (v80 + 1 >= v278)
      {
        v83 = v80;
      }

      else
      {
        v83 = v80 + 1;
      }

      v84 = v270[2];
      v85 = v270[8];
      v86 = (v85 + v84 * v80);
      v87 = v84 * v81;
      v88 = v83 * v84;
      v89 = (v85 + v83 * v84);
      v90 = v272[11];
      v91 = v272[10] * a3;
      if (v54)
      {
        v92 = v80 & 3;
        v93 = v258 - 4;
      }

      else
      {
        v8.f32[0] = *v86 + 0.019;
        v94 = vmaxnm_f32(vdup_lane_s32(*v8.f32, 0), 0);
        v95 = vmul_f32(v94, v94);
        *v8.f32 = vdiv_f32(vmla_f32(v66, v95, vmul_f32(v94, v65)), vmla_f32(v64, *a7.f32, v95));
        v96 = (*v86 - ((((*v89 + *(v85 + v87)) + *v86) + v86[v23 > 1]) * 0.25)) * v8.f32[0];
        v97 = v96 * v96;
        if (v97 >= 0.2)
        {
          v97 = 0.2;
        }

        v98 = 0.25 * vsqrt_f32(vmla_n_f32(v69, v67, v97)).f32[0];
        v92 = v80 & 3;
        if ((v80 & 3) != 0)
        {
          v98 = v98 + *(v90 + v91);
        }

        *(v90 + v91) = v98;
        v93 = 1;
      }

      if (v93 + 5 >= v55)
      {
        v107 = v93;
      }

      else
      {
        v99 = (v90 - 4 * v54 + v91 + 4 * v93);
        v100 = (v85 + v87 + 4 * v93);
        v101 = (v85 + v88 + 4 * v93);
        v102 = v85 + v84 * v80 + 4 * v93;
        do
        {
          v103 = vmaxnmq_f32(vaddq_f32(*v102, v68), 0);
          v104 = vmulq_f32(v103, v103);
          v8 = vdivq_f32(vmlaq_f32(v77, v104, vmulq_f32(v103, v76)), vmlaq_f32(v75, v74, v104));
          v105 = vmulq_f32(v8, vsubq_f32(*v102, vmulq_f32(vaddq_f32(vaddq_f32(*(v102 + 4), *(v102 - 4)), vaddq_f32(*v101, *v100)), _Q19)));
          v106 = vmulq_f32(vsqrtq_f32(vmlaq_f32(v7, v79, vminnmq_f32(vmulq_f32(v105, v105), v78))), _Q19);
          if (v92)
          {
            v106 = vaddq_f32(v106, *v99);
          }

          *v99++ = v106;
          v107 = v93 + 4;
          v108 = v93 + 9;
          ++v100;
          ++v101;
          v102 += 16;
          v93 += 4;
        }

        while (v108 < v55);
      }

      if (v107 < v55)
      {
        v109 = v90 - 4 * v54 + v91;
        v110 = v85 + v84 * v81;
        do
        {
          v111 = v107 + 1;
          if (v107 + 1 >= v23)
          {
            v112 = v107;
          }

          else
          {
            v112 = v107 + 1;
          }

          v113 = &v86[v107];
          v8.f32[0] = *v113 + 0.019;
          v114 = vmaxnm_f32(vdup_lane_s32(*v8.f32, 0), 0);
          v115 = vmul_f32(v114, v114);
          *v8.f32 = vdiv_f32(vmla_f32(v66, v115, vmul_f32(v114, v65)), vmla_f32(v64, *a7.f32, v115));
          v116 = (*v113 - ((((v89[v107] + *(v110 + 4 * v107)) + v113[-(v107 != 0)]) + v86[v112]) * 0.25)) * v8.f32[0];
          v117 = v116 * v116;
          if (v117 >= 0.2)
          {
            v117 = 0.2;
          }

          v118 = 0.25 * vsqrt_f32(vmla_n_f32(v69, v67, v117)).f32[0];
          if (v92)
          {
            v118 = v118 + *(v109 + 4 * v107);
          }

          *(v109 + 4 * v107++) = v118;
        }

        while (v55 != v111);
      }

      if (v92 == 3 && v55 - v54 >= 4)
      {
        v119 = (*(*v272 + 40 * a3 + 24) + *(*v272 + 40 * a3 + 16) * (v62 >> 2));
        v120 = (v90 + v91 + 8);
        v121 = v63;
        do
        {
          v122 = *(v120 - 2) + *(v120 - 1);
          v123 = *v120;
          v124 = v120[1];
          v120 += 4;
          *v119++ = ((v122 + v123) + v124) * 0.25;
          --v121;
        }

        while (v121);
      }

      ++v62;
      v80 = v82;
    }

    while (v82 != v57);
    v58 = *v272;
    v125 = (*v272 + 40 * a3);
    result = *v125;
    LODWORD(v61) = v125[1];
  }

  v126 = (v54 & 7) != 0;
  v127 = (v56 & 7) != 0;
  v128 = (2.0 - v260) * 0.5;
  if (v260 >= 2.0)
  {
    v128 = 0.0;
  }

  if (v263 != v280)
  {
    v129 = 0;
    v130 = result;
    v131 = (v128 * 0.0) + 0.125;
    v132 = (v128 * -0.1) + 0.1;
    v133 = (v128 * -0.09) + 0.09;
    v134 = (v128 * -0.06) + 0.06;
    v135 = 0.2996 / (v134 + (v133 + (v131 + v132)));
    v136 = v131 * v135;
    v137 = v132 * v135;
    v138 = v133 * v135;
    v139 = v134 * v135;
    v140 = v58 + 40 * a3;
    v141 = *(v140 + 16);
    v142 = *(v140 + 24);
    v144 = v272[5];
    v143 = v272[6];
    v145 = v142 + 4 * v126;
    v146 = v142 + v141 * v127 + 4 * v126;
    v147 = v127;
    do
    {
      if (v147)
      {
        v148 = v147 - 1;
      }

      else
      {
        v148 = 0;
      }

      v149 = v129 + v127;
      if (v129 + v127)
      {
        v150 = v129 + v127 - 1;
      }

      else
      {
        v150 = 0;
      }

      if (v149 + 1 >= v61)
      {
        v151 = v129 + v127;
      }

      else
      {
        v151 = v149 + 1;
      }

      if (v271 != v275)
      {
        v152 = 0;
        v153 = v145 + v141 * v148;
        v154 = v142 + v150 * v141;
        v155 = v142 + v149 * v141;
        v156 = v151 * v141;
        v157 = v142 + v151 * v141;
        v158 = v143 + (v280 + (v129 >> 1)) * v144 + 4 * v275;
        v159 = v145 + v156;
        v160 = v126;
        do
        {
          v161 = v160 != 0;
          if (v126 + v152 + 1 >= v130)
          {
            v162 = v126 + v152;
          }

          else
          {
            v162 = v126 + v152 + 1;
          }

          v163 = (v146 + 4 * v152);
          v164 = *v163;
          v166 = *(v155 + 4 * v162);
          v284 = v163[-v161];
          v165 = v284;
          *v285 = v164;
          v167 = *(v153 - 4 * v161 + 4 * v152);
          v282 = v167;
          v283 = v166;
          if (v164 <= v284)
          {
            v168 = v284;
            v165 = v164;
          }

          else
          {
            v284 = v164;
            *v285 = v165;
            v168 = v164;
          }

          if (v165 <= v166)
          {
            v169 = v166;
            v166 = v165;
          }

          else
          {
            *v285 = v166;
            v283 = v165;
            v169 = v165;
          }

          if (v166 <= v167)
          {
            v170 = v166;
            v166 = v167;
          }

          else
          {
            *v285 = v167;
            v282 = v166;
            v170 = v167;
          }

          if (v168 <= v169)
          {
            v171 = v169;
            v169 = v168;
          }

          else
          {
            v283 = v168;
            v284 = v169;
            v171 = v168;
          }

          if (v169 <= v166)
          {
            v172 = v169;
            v169 = v166;
          }

          else
          {
            v284 = v166;
            v282 = v169;
            v172 = v166;
          }

          if (v171 <= v169)
          {
            v173 = v171;
            v171 = v169;
          }

          else
          {
            v282 = v171;
            v283 = v169;
            v173 = v169;
          }

          v174 = *(v153 + 4 * v152);
          if (v171 > v174)
          {
            if (v170 <= v174)
            {
              if (v172 <= v174)
              {
                if (v173 <= v174)
                {
                  v175 = &v282;
                }

                else
                {
                  v282 = v173;
                  v175 = &v283;
                }
              }

              else
              {
                v282 = v173;
                v283 = v172;
                v175 = &v284;
              }
            }

            else
            {
              v282 = v173;
              v283 = v172;
              v175 = v285;
              v284 = v170;
            }

            *v175 = v174;
            v171 = v282;
            v170 = *v285;
          }

          v176 = *(v154 + 4 * v162);
          if (v171 > v176)
          {
            if (v170 <= v176)
            {
              if (v284 <= v176)
              {
                if (v283 <= v176)
                {
                  v177 = &v282;
                }

                else
                {
                  v282 = v283;
                  v177 = &v283;
                }
              }

              else
              {
                v282 = v283;
                v283 = v284;
                v177 = &v284;
              }
            }

            else
            {
              v282 = v283;
              v283 = v284;
              v284 = v170;
              v177 = v285;
            }

            *v177 = v176;
            v171 = v282;
            v170 = *v285;
          }

          v178 = *(v159 - 4 * v161 + 4 * v152);
          if (v171 > v178)
          {
            if (v170 <= v178)
            {
              if (v284 <= v178)
              {
                if (v283 <= v178)
                {
                  v179 = &v282;
                }

                else
                {
                  v282 = v283;
                  v179 = &v283;
                }
              }

              else
              {
                v282 = v283;
                v283 = v284;
                v179 = &v284;
              }
            }

            else
            {
              v282 = v283;
              v283 = v284;
              v284 = v170;
              v179 = v285;
            }

            *v179 = v178;
            v171 = v282;
            v170 = *v285;
          }

          v180 = *(v159 + 4 * v152);
          if (v171 > v180)
          {
            if (v170 <= v180)
            {
              if (v284 <= v180)
              {
                if (v283 <= v180)
                {
                  v181 = &v282;
                }

                else
                {
                  v282 = v283;
                  v181 = &v283;
                }
              }

              else
              {
                v282 = v283;
                v283 = v284;
                v181 = &v284;
              }
            }

            else
            {
              v282 = v283;
              v283 = v284;
              v284 = v170;
              v181 = v285;
            }

            *v181 = v180;
            v171 = v282;
            v170 = *v285;
          }

          v182 = *(v157 + 4 * v162);
          if (v171 > v182)
          {
            if (v170 <= v182)
            {
              if (v284 <= v182)
              {
                if (v283 <= v182)
                {
                  v183 = &v282;
                }

                else
                {
                  v282 = v283;
                  v183 = &v283;
                }
              }

              else
              {
                v282 = v283;
                v283 = v284;
                v183 = &v284;
              }
            }

            else
            {
              v282 = v283;
              v283 = v284;
              v284 = v170;
              v183 = v285;
            }

            *v183 = v182;
            v170 = *v285;
            v171 = v282;
          }

          v184 = (((v137 * v284) + (v136 * v170)) + (v138 * v283)) + (v139 * v171);
          v185 = v152 >> 1;
          if ((v152 | v129))
          {
            v184 = v184 + *(v158 + 4 * v185);
          }

          *(v158 + 4 * v185) = v184;
          ++v152;
          ++v160;
        }

        while (2 * v262 != v152);
      }

      ++v129;
      ++v147;
      v146 += v141;
    }

    while (v129 != 2 * v261);
    v186 = 0;
    v188 = *(v252 + 16);
    v187 = *(v252 + 24);
    result = v261;
    do
    {
      if (v271 != v275)
      {
        v189 = 0;
        v190 = v262;
        do
        {
          *(v187 + (v186 + v280) * v188 + 4 * v275 + 4 * v189) = 1.0 / (*(v143 + (v186 + v280) * v144 + 4 * v275 + 4 * v189) + 0.001);
          ++v189;
          --v190;
        }

        while (v190);
      }

      ++v186;
    }

    while (v186 != v261);
  }

  v191 = 1.0;
  if (v260 >= 2.0)
  {
    v191 = ((v260 + -2.0) / -12.0) + 1.0;
    if (v191 < 0.0)
    {
      v191 = 0.0;
    }
  }

  if (v263 > v280)
  {
    v192 = v253 * v191;
    v193 = (v253 * 0.48) * (1.0 - v191);
    v277 = v272[5];
    v279 = v272[6];
    v195 = v270[7];
    v194 = v270[8];
    v196 = *v254;
    v274 = v254[1];
    v198 = v270[2];
    v197 = v270[3];
    v199 = vdupq_n_s32(0x3A83126Fu);
    a7.i32[0] = 1062008135;
    v200 = vdupq_n_s32(0x406DF31Du);
    v201 = vdupq_n_s32(0x3CA8C6FBu);
    v202 = vdupq_n_s32(0x43974C46u);
    v203 = vdupq_n_s32(0x3E23D70Au);
    v204 = vdupq_n_s32(0x42EFD02Bu);
    v205 = vdupq_n_s32(0x3C23D70Au);
    v206 = vdupq_n_s32(0x431D2FBDu);
    v207 = vdupq_n_s32(0x40ACF18Eu);
    v208.i64[0] = 0x3F0000003F000000;
    v208.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V22.4S, #1.0 }

    v210 = vdupq_n_s32(0x40D96B1Cu);
    v211 = vdupq_n_s32(0x418ACD8Cu);
    v212.i64[0] = 0x7F0000007FLL;
    v212.i64[1] = 0x7F0000007FLL;
    do
    {
      if (v271 > v275)
      {
        v213 = v279 + v280 * v277;
        v214 = v275;
        v215 = v274 + 8 * v280;
        do
        {
          v216 = 0;
          v7.i32[0] = *(v213 + 4 * v214);
          v217 = vmaxnmq_f32(vdupq_lane_s32(*&vmulq_f32(v7, a7), 0), v199);
          v218 = vmlaq_f32(v200, v217, v217);
          v219 = 0uLL;
          do
          {
            v220 = 0;
            v221 = (v216 + v215) * v195;
            v222 = v194 + v221 + 4 * v196 + 32 * v214;
            v223 = v195 + v221;
            if (v216 == 7)
            {
              v223 = v221;
            }

            v224 = v194 + 4 * v196 + 32 * v214 + v223;
            v225 = 1;
            do
            {
              v226 = v225;
              v219 = vaddq_f32(vminnmq_f32(vabdq_f32(*(v222 + 1 * v220), *(v224 + 1 * v220)), v201), vaddq_f32(v219, vandq_s8(xmmword_240C83440[v220], vminnmq_f32(vabdq_f32(*(v222 + 1 * v220), *(v222 + 1 * v220 + 4)), v201))));
              v220 = 1;
              v225 = 0;
            }

            while ((v226 & 1) != 0);
            ++v216;
          }

          while (v216 != 8);
          v227 = 0;
          v228 = vaddq_f32(v217, v202);
          v229 = vaddv_f32(*&vpaddq_f32(v219, v219));
          v230 = 0uLL;
          do
          {
            v231 = 0;
            v232 = 1;
            do
            {
              v233 = 4 * v231;
              v234 = *(v197 + (v227 + v215) * v198 + 4 * v196 + 32 * v214 + v233);
              v235 = v232;
              v236 = vaddq_f32(*(v194 + (v227 + v215) * v195 + 4 * v196 + 32 * v214 + v233), v203);
              v237 = vsubq_f32(v236, v234);
              v238 = vaddq_f32(v236, v234);
              v239 = vmaxnmq_f32(v237, 0);
              v240 = vmulq_f32(v239, v239);
              v241 = vmlaq_f32(v207, v240, vmulq_f32(v239, v206));
              v242 = vmaxnmq_f32(v238, 0);
              v243 = vmulq_f32(v242, v242);
              v230 = vaddq_f32(v230, vmulq_f32(vaddq_f32(vdivq_f32(vmlaq_f32(v205, v204, v240), v241), vdivq_f32(vmlaq_f32(v205, v204, v243), vmlaq_f32(v207, v243, vmulq_f32(v242, v206)))), v208));
              v231 = 4;
              v232 = 0;
            }

            while ((v235 & 1) != 0);
            ++v227;
          }

          while (v227 != 8);
          v244 = vdivq_f32(_Q22, v228);
          v245 = vmlaq_f32(vmulq_f32(vdivq_f32(_Q22, v218), v210), v211, v244);
          v244.f32[0] = (v229 + -1.1109) * -0.38079;
          v246 = vaddq_f32(vmlaq_f32(v245, vdupq_n_s32(0x411788B3u), vdivq_f32(_Q22, vmlaq_f32(vdupq_n_s32(0x3F6DF31Du), v217, v217))), vdupq_n_s32(0xBF43C361));
          v245.i64[0] = vpaddq_f32(v230, v230).u64[0];
          v245.f32[0] = vaddv_f32(*v245.f32) * 0.015625;
          v247 = vdupq_lane_s32(*v245.f32, 0);
          v248 = vaddq_f32(v246, vdupq_lane_s32(*v244.f32, 0));
          v249 = vaddq_s32(v247, vdupq_n_s32(0xC0D55555));
          __asm { FMOV            V30.4S, #-1.0 }

          v251 = vaddq_f32(vsubq_s32(v247, vandq_s8(v249, v212)), _Q30);
          v7 = vmlaq_f32(v248, vdupq_n_s32(0x3DCDF31Au), vaddq_f32(vdivq_f32(vmlaq_f32(vdupq_n_s32(0xB5F85AB0), v251, vmlaq_f32(vdupq_n_s32(0x3FB6E02Bu), vdupq_n_s32(0x3F3E11C7u), v251)), vmlaq_f32(vdupq_n_s32(0x3F7D8625u), v251, vmlaq_f32(vdupq_n_s32(0x3F813CEDu), vdupq_n_s32(0x3E32458Cu), v251))), vcvtq_f32_s32(vshrq_n_s32(v249, 0x17uLL))));
          v7.f32[0] = 1.4427 * v7.f32[0];
          *v7.f32 = vdup_lane_s32(*v7.f32, 0);
          *v251.f32 = vrndm_f32(*v7.f32);
          __asm { FMOV            V30.2S, #1.0 }

          *v7.f32 = vsub_f32(*v7.f32, *v251.f32);
          *v7.f32 = vdiv_f32(vmul_f32(vmla_f32(vdup_n_s32(0x42C519F0u), *v7.f32, vmla_f32(vdup_n_s32(0x424379A1u), *v7.f32, vadd_f32(*v7.f32, vdup_n_s32(0x4122CC6Bu)))), vadd_s32(vshl_n_s32(vcvt_s32_f32(*v251.f32), 0x17uLL), *_Q30.f32)), vmla_f32(vdup_n_s32(0x42C519F1u), *v7.f32, vmla_f32(vdup_n_s32(0xC19B8831), *v7.f32, vmla_f32(vdup_n_s32(0xBCB621BE), vdup_n_s32(0x3E5749EEu), *v7.f32))));
          *(v213 + 4 * v214++) = v193 + (v7.f32[0] * v192);
        }

        while (v214 != v281);
      }

      result = v280 + 1;
      v280 = result;
    }

    while (result != v268);
  }

  return result;
}

uint64_t sub_240B79F5C(uint64_t a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a5 + 4096;
  if (*(a5 + 4576) == 1)
  {
    v10 = sqrtf(0.1 / *(a5 + 4544)) * 16.0;
    v28[1] = 0;
    v28[0] = 0;
    *&v11 = *a4;
    *(&v11 + 1) = HIDWORD(*a4);
    v29 = v11;
    sub_240B78894(*(a5 + 168), *(a5 + 176), v28, a4, COERCE_DOUBLE(*(a5 + 4936)));
    __asm { FMOV            V1.2S, #1.0 }

    v30 = vdiv_f32(_D1, *(v8 + 484));
    *&v31 = 1.0 / *(a5 + 4588);
    sub_240B6A2F8(a5 + 952, a4, a5 + 1024, v10);
    sub_240B7B108(v28, a1, a3, a5, a6, a7);
  }

  if (a2)
  {
    if (*(a5 + 4592) <= 2)
    {
      v17 = *(a5 + 4924);
      if (v17 < 2 || v17 * 4.0 < *(a5 + 4936))
      {
        __asm { FMOV            V0.2S, #1.0 }

        v31 = _D0;
        v19 = a6[1];
        v33 = *a6;
        v34 = v19;
        v20 = a6[3];
        v35 = a6[2];
        v30 = &unk_2852A1960;
        v32 = 1117782016;
        v36 = v20;
        v39 = 0;
        v37 = 0;
        v38 = 0;
        sub_240B7218C(v28, a2, &v31);
      }
    }
  }

  return 0;
}

void sub_240B7AFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    atomic_fetch_add(&qword_27E519020, -*(a10 - 24));
    free(*(a10 - 32));
  }

  if (!LODWORD(STACK[0x528]))
  {
    v12 = STACK[0x518];
    STACK[0x518] = 0;
    if (v12)
    {
      atomic_fetch_add(&qword_27E519020, -*(v12 - 24));
      free(*(v12 - 32));
    }
  }

  if (v10)
  {
    atomic_fetch_add(&qword_27E519020, -*(v10 - 24));
    free(*(v10 - 32));
  }

  v13 = STACK[0x610];
  STACK[0x5B8] = a9;
  STACK[0x610] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(a1);
}

void sub_240B7B52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, uint64_t a54)
{
  for (i = 104; i != -16; i -= 40)
  {
    sub_240B22320((&a23 + i));
  }

  if (!a53)
  {
    v57 = &a51;
    v58 = -120;
    do
    {
      sub_240B22320(v57);
      v57 -= 5;
      v58 += 40;
    }

    while (v58);
  }

  sub_240B51314(&a54);
  sub_240B7B9D4(&STACK[0x328]);
  sub_240B7BB18((v54 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_240B7B5CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 16) = &unk_2852A19E8;
  v5 = a2[3];
  *(a1 + 30) = *(a2 + 30);
  *(a1 + 24) = v5;
  v6 = *(a2 + 5);
  *(a1 + 56) = a2[7];
  *(a1 + 40) = v6;
  v7 = *(a2 + 4);
  *(a1 + 80) = a2[10];
  *(a1 + 64) = v7;
  a2[9] = 0;
  a2[10] = 0;
  a2[8] = 0;
  *(a1 + 88) = a2[11];
  sub_240B2A358(a1 + 96, (a2 + 12));
  *(a1 + 216) = &unk_2852A1CB8;
  *(a1 + 224) = *(a2 + 112);
  v8 = a2[29];
  *(a1 + 237) = *(a2 + 237);
  *(a1 + 232) = v8;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 248) = *(a2 + 31);
  *(a1 + 264) = a2[33];
  a2[31] = 0;
  a2[32] = 0;
  a2[33] = 0;
  v9 = *(a2 + 17);
  v10 = *(a2 + 18);
  v11 = *(a2 + 19);
  *(a1 + 320) = *(a2 + 80);
  *(a1 + 288) = v10;
  *(a1 + 304) = v11;
  *(a1 + 272) = v9;
  *(a1 + 328) = &unk_2852A1260;
  *(a1 + 336) = a2[42];
  *(a1 + 344) = &unk_2852A1A10;
  *(a1 + 352) = *(a2 + 22);
  *(a1 + 368) = &unk_2852A1260;
  *(a1 + 376) = a2[47];
  *(a1 + 384) = &unk_2852A1260;
  *(a1 + 392) = a2[49];
  *(a1 + 400) = &unk_2852A1260;
  *(a1 + 408) = a2[51];
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = *(a2 + 26);
  v12 = a2[55];
  *(a1 + 432) = a2[54];
  a2[52] = 0;
  a2[53] = 0;
  a2[54] = 0;
  *(a1 + 440) = v12;
  return a1;
}

uint64_t *sub_240B7B7C0(uint64_t *a1)
{
  if (!*(a1 + 112))
  {
    v6 = (a1 + 52);
    sub_240B30C38(&v6);
    a1[27] = &unk_2852A1CB8;
    v2 = a1[31];
    if (v2)
    {
      a1[32] = v2;
      operator delete(v2);
    }

    for (i = 25; i != 10; i -= 5)
    {
      sub_240B22320(&a1[i]);
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(a1[8]);
    }

    v4 = *a1;
    *a1 = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  return a1;
}

void sub_240B7B900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    v6[0] = a3;
    v6[1] = a4;
    if (*result)
    {
      (*result)(*(result + 8), v6, sub_240B7C0CC, sub_240B7C198, 0, a2);
    }

    else if (!sub_240B7C0CC(v6, 1uLL))
    {
      for (i = 0; i != v4; ++i)
      {
        sub_240B7C198(v6, i, 0);
      }
    }
  }
}

void sub_240B7B9A4(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_240AE402C(v2, *(a1 + 8), *(a1 + 16));
  }
}

uint64_t sub_240B7B9D4(uint64_t a1)
{
  v2 = *(a1 + 1232);
  if (v2)
  {
    *(a1 + 1240) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1200);
  if (v3)
  {
    *(a1 + 1208) = v3;
    operator delete(v3);
  }

  v12 = (a1 + 1176);
  sub_240B23988(&v12);
  v4 = *(a1 + 1152);
  if (v4)
  {
    *(a1 + 1160) = v4;
    operator delete(v4);
  }

  sub_240B7BB60(a1 + 512);
  v5 = *(a1 + 344);
  if (v5)
  {
    *(a1 + 352) = v5;
    operator delete(v5);
  }

  v12 = (a1 + 320);
  sub_240B30C38(&v12);
  v6 = *(a1 + 248);
  if (v6)
  {
    *(a1 + 256) = v6;
    operator delete(v6);
  }

  v12 = (a1 + 216);
  sub_240B7BC3C(&v12);
  v12 = (a1 + 192);
  sub_240B31E8C(&v12);
  v12 = (a1 + 168);
  sub_240B4B18C(&v12);
  v12 = (a1 + 144);
  sub_240B31E8C(&v12);
  v7 = *(a1 + 120);
  if (v7)
  {
    *(a1 + 128) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    *(a1 + 104) = v8;
    operator delete(v8);
  }

  v12 = (a1 + 72);
  sub_240B7BCD0(&v12);
  v12 = (a1 + 48);
  sub_240B7BD54(&v12);
  v9 = *(a1 + 24);
  if (v9)
  {
    *(a1 + 32) = v9;
    operator delete(v9);
  }

  v10 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v10;
    operator delete(v10);
  }

  return a1;
}

uint64_t *sub_240B7BB18(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_240B4B720(v2);
    MEMORY[0x245CCE590](v3, 0x10F2C40BD9CC6D3);
  }

  return a1;
}

uint64_t sub_240B7BB60(uint64_t a1)
{
  v2 = *(a1 + 592);
  if (v2)
  {
    *(a1 + 600) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 568);
  if (v3)
  {
    *(a1 + 576) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 544);
  if (v4)
  {
    *(a1 + 552) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 520);
  if (v5)
  {
    *(a1 + 528) = v5;
    operator delete(v5);
  }

  v13 = (a1 + 496);
  sub_240B4BC78(&v13);
  v6 = *(a1 + 464);
  if (v6)
  {
    *(a1 + 472) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 440);
  if (v7)
  {
    *(a1 + 448) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 416);
  if (v8)
  {
    *(a1 + 424) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 304);
  if (v9)
  {
    *(a1 + 312) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 224);
  if (v10)
  {
    *(a1 + 232) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    *(a1 + 16) = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_240B7BC3C(void ****a1)
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
        v4 -= 3;
        v6 = v4;
        sub_240B7BE70(&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_240B7BCD0(void ***a1)
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
        v4 -= 19;
        sub_240B7BE18(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_240B7BD54(void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_240B7BDA8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_240B7BDA8(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 11;
      v6 = v4 - 8;
      sub_240B37900(&v6);
      v6 = v5;
      sub_240B379C0(&v6);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_240B7BE18(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;

    operator delete(v3);
  }
}

void sub_240B7BE70(void ***a1)
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
        v6 = *(v4 - 5);
        if (v6)
        {
          *(v4 - 4) = v6;
          operator delete(v6);
        }

        v4 -= 48;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_240B7BEFC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_240B22320((v1 + 24));

    JUMPOUT(0x245CCE590);
  }

  return result;
}

void sub_240B7BF5C(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B7BFA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 8;
    sub_240B7BEFC((v3 - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240B7BFF4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x5C0)
  {
    v3 = 0;
    v4 = ((a2 >> 6) * 0xB21642C8590B217uLL) >> 64;
    v5 = (a1 + 1336);
    do
    {
      v6 = (a1 + 1472 * v3);
      sub_240B38B28(v6 + 180);
      sub_240B38B7C(v6 + 177);
      sub_240B38BD0(v6 + 174);
      sub_240B22320(v6 + 172);
      v7 = v5;
      v8 = 1352;
      do
      {
        v8 -= 120;
        v9 = -120;
        v10 = v7;
        do
        {
          sub_240B22320(v10);
          v10 -= 5;
          v9 += 40;
        }

        while (v9);
        v7 -= 15;
      }

      while (v8 != 32);
      ++v3;
      v5 += 184;
    }

    while (v3 != v4);
  }
}

uint64_t sub_240B7C0CC(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v11 = sub_240BF0E54(*(***a1 + 4488), a2, 0);
  if (!v11)
  {
    if (is_mul_ok(a2, 0x5C0uLL))
    {
      v13 = sub_240AE3FA8(1472 * a2, v4, v5, v6, v7, v8, v9, v10);
      v12 = v13;
      if (v13 && a2)
      {
        bzero(v13, 1472 * a2);
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = *(v3 + 8);
    memset(v17, 0, sizeof(v17));
    v15 = *v14;
    *v14 = v12;
    if (v15)
    {
      sub_240AE402C(v15, *(v14 + 8), *(v14 + 16));
    }

    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_240B7B9A4(v17);
  }

  if (v11)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_240B7C198(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = atomic_load(*v3);
  if ((v4 & 1) == 0)
  {
    v6 = *(v3 + 8);
    v7 = a2;
    if (*(v6 + 452))
    {
      v8 = **(v3 + 16);
      v9 = v8[526];
      v10 = v9[11];
      v11 = v9[17];
      v12 = v11 >> 3;
      v13 = (v11 >> 3) * (a2 / v10);
      v15 = v9[9];
      v14 = v9[10];
      *&v55 = (v11 >> 3) * (a2 % v10);
      *(&v55 + 1) = v13;
      v16 = v15 - v55;
      if (v15 < v55)
      {
        v16 = 0;
      }

      if (v55 + (v11 >> 3) <= v15)
      {
        v16 = v11 >> 3;
      }

      v17 = v13 + (v11 >> 3);
      v18 = v14 >= v13;
      v19 = v14 - v13;
      if (!v18)
      {
        v19 = 0;
      }

      if (v17 <= v14)
      {
        v20 = v12;
      }

      else
      {
        v20 = v19;
      }

      v56 = v16;
      v57[0] = v20;
      sub_240B539A4(v6 + 416, &v55, v8);
    }

    v21 = *(**(v3 + 16) + 4488);
    v52[1] = v7;
    v52[2] = a3;
    v52[0] = v21;
    (*(*v21 + 24))(&v55, v21, v7, a3);
    v53 = v55;
    v54 = v56;
    v27 = **(v3 + 24);
    v28 = *(v3 + 8);
    v48 = **(v3 + 16);
    v29 = **(v3 + 32);
    *&v55 = &unk_2852A1E48;
    *(&v55 + 1) = v27 + 4224;
    v56 = 0;
    v57[33] = v28 + 208;
    v30 = *(v27 + 4232);
    v31 = *(v27 + 4224);
    v32 = v53;
    if (v30 != v31)
    {
      v33 = 0;
      v34 = v57;
      do
      {
        (*(**(v31 + 8 * v33) + 16))(*(v31 + 8 * v33));
        for (i = 0; i != 3; ++i)
        {
          v34[i] = (*(**(**(&v55 + 1) + 8 * v33) + 24))(*(**(&v55 + 1) + 8 * v33), i, v7, 0);
        }

        ++v33;
        v31 = **(&v55 + 1);
        v34 += 3;
      }

      while (v33 < (*(*(&v55 + 1) + 8) - **(&v55 + 1)) >> 3);
    }

    v50 = v21;
    v51 = a3;
    if (!sub_240B3A644(v29 + 1472 * a3, 0, 0x7FFFFFFLL, v22, v23, v24, v25, v26))
    {
      sub_240B3D118(v28, &v55, (v29 + 1472 * a3), v48, v7, v52, 0);
    }

    v49 = v3;
    v36 = *(*(v3 + 48) + 320);
    if (v36)
    {
      for (j = 0; j != v36; ++j)
      {
        v38 = v32;
        v39 = &v32[40 * j];
        v40 = *(v39 + 19);
        if (v40)
        {
          v41 = 0;
          v42 = *(v39 + 17);
          v43 = *(v39 + 18);
          v45 = v39 + 120;
          v44 = *(v39 + 15);
          v46 = *(v44 + 16);
          v47 = (*(v44 + 24) + v46 * v42 + 4 * v45[1]);
          do
          {
            if (v43)
            {
              bzero(v47, 4 * v43);
            }

            ++v41;
            v47 += v46;
          }

          while (v40 != v41);
        }

        v32 = v38;
      }
    }

    ++*(v50[28] + v7);
    if ((*(*v50 + 32))(v50, v7, v51))
    {
      atomic_store(1u, *v49);
    }

    if (v32)
    {
      operator delete(v32);
    }
  }
}

void sub_240B7C4CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_240B7C4F0(uint64_t *result, uint64_t *a2, void *a3, uint64_t a4)
{
  if (result != a2)
  {
    v7 = result;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      v7 += 2;
      result = sub_240B7C548(v8, v9, a3, a4);
    }

    while (v7 != a2);
  }

  return result;
}

uint64_t sub_240B7C548(uint64_t result, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = __clz(a4 + 1) ^ 0x3F;
  if (((a4 + 1) & a4) != 0)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v4;
  }

  *(a3[3] + (*a3 >> 3)) = (result << (*a3 & 7)) | *(a3[3] + (*a3 >> 3));
  v6 = *a3 + v5;
  *a3 = v6;
  if (result != a4)
  {
    v7 = __clz(result + 1) ^ 0x1F;
    if (((result + 1) & result) != 0)
    {
      v8 = v7 + 1;
    }

    else
    {
      v8 = v7;
    }

    *(a3[3] + (v6 >> 3)) = (a2 << (v6 & 7)) | *(a3[3] + (v6 >> 3));
    v9 = *a3 + v8;
    *a3 = v9;
    v10 = result - a2 + 1;
    v11 = __clz(v10) ^ 0x1F;
    if ((v10 & (result - a2)) != 0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11;
    }

    *(a3[3] + (v9 >> 3)) = (HIDWORD(a2) << (v9 & 7)) | *(a3[3] + (v9 >> 3));
    *a3 += v12;
  }

  return result;
}

unint64_t sub_240B7C61C(uint64_t a1, int *a2, unint64_t a3, char a4, int a5, uint64_t a6, unint64_t *a7)
{
  v8 = a3;
  v9 = a2;
  v121 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (a3 < 2)
    {
      return 0;
    }

    sub_240B22DA4(&v113, a3);
    v18 = 0;
    v19 = v113;
    do
    {
      v19[v18] = v9[v18];
      ++v18;
    }

    while (v8 != v18);
    sub_240B7D1B4(&v111, v8);
    sub_240B29264(&v119, v8);
    if (a7)
    {
      v20 = *a7;
      sub_240BACA0C(v113, v8, v111, v119, a7);
      v10 = *a7 - v20;
      v21 = a6;
    }

    else
    {
      v118 = 0;
      memset(v117, 0, sizeof(v117));
      v107 = (8 * v8 + 8);
      v108 = 0;
      v109 = 0;
      v106 = 0;
      sub_240B4ADF0(&v117[1], v8 + 1);
      if (v117[3])
      {
        v66 = v8 + 1;
      }

      else
      {
        v66 = 0;
      }

      v110 = v118;
      v117[1] = v66;
      v118 = &v106;
      sub_240BACA0C(v113, v8, v111, v119, v117);
      v21 = a6;
      v116 = 0;
      sub_240B53734(&v106, v117, &v116, &v115);
      v10 = v117[0];
      v67 = v117[3];
      v117[3] = 0;
      if (v67)
      {
        atomic_fetch_add(&qword_27E519020, -*(v67 - 24));
        free(*(v67 - 32));
      }
    }

    v68 = 0;
    v69 = v111;
    v70 = v119;
    v71 = (v21 + 42);
    do
    {
      v72 = v69[v68];
      if (v69[v68])
      {
        v72 = v70[v68];
      }

      *v71 = v72;
      *(v71 - 2) = v69[v68++];
      v71 += 24;
    }

    while (v8 != v68);
    if (!v70 || (v120 = v70, operator delete(v70), (v69 = v111) != 0))
    {
      *&v112 = v69;
      operator delete(v69);
    }

    v73 = (v21 + 40);
    do
    {
      v75 = *v9++;
      v74 = v75;
      v76 = *v73;
      v73 += 48;
      v10 += v74 * v76;
      --v8;
    }

    while (v8);
    v77 = v113;
    if (v113)
    {
      v114 = v113;
      goto LABEL_130;
    }

    return v10;
  }

  LODWORD(v116) = 0;
  v12 = sub_240B7D228(a2, a3, &v116, a1);
  LODWORD(v115) = 0;
  v119 = 0;
  v120 = 0;
  v111 = 0;
  v112 = 0uLL;
  sub_240B7D364(&v111, v9, &v9[v8], v8);
  v13 = v111;
  v14 = v112;
  if (v111 != v112)
  {
    v15 = 0;
    v16 = v111;
    do
    {
      v17 = *v16++;
      v15 += v17;
    }

    while (v16 != v112);
    if (!v15)
    {
      *v111 = 4096;
    }
  }

  v105 = 0;
  if (v12)
  {
    sub_240B7D3D8(v13, &v105, v8, v12 - 1, &v115, &v119);
  }

  else
  {
    sub_240B226FC(v117, v8);
    if (v13)
    {
      operator delete(v13);
    }

    v13 = v117[0];
    v111 = v117[0];
    v112 = *&v117[1];
    v14 = v117[1];
  }

  v103 = 0;
  v104 = 0;
  __p = 0;
  sub_240B2BA38(&__p, v13, v14, (v14 - v13) >> 2);
  sub_240B229E0(&__p, a4, v117);
  v97 = v12;
  v94 = v12 - 1;
  if (__p)
  {
    v103 = __p;
    operator delete(__p);
  }

  v22 = 0;
  v23 = v111;
  v96 = 12 - a4;
  v95 = -1 << (12 - a4);
  if (v8 <= 1)
  {
    v24 = 1;
  }

  else
  {
    v24 = v8;
  }

  v100 = v8;
  v101 = (a6 + 48 * v8);
  v25 = (a6 + 16);
  v99 = v111;
  do
  {
    if (v8 == v22)
    {
      LODWORD(v26) = 4096;
      v27 = v101;
      *v101 = 4096;
    }

    else
    {
      LODWORD(v26) = v23[v22];
      *(v25 - 8) = v26;
      v27 = v25 - 2;
      if (!v26)
      {
        v26 = 0;
        v25[2] = 1;
        v30 = *(v25 - 1);
        v31 = (*v25 - v30) >> 1;
        v29 = v25;
        goto LABEL_38;
      }
    }

    v25[2] = (v26 + 0xFFFFFFFFFFFLL) / v26;
    v26 = v26;
    v29 = v27 + 2;
    v28 = v27[2];
    v30 = v27[1];
    v31 = (v28 - v30) >> 1;
    if (v26 > v31)
    {
      v32 = v24;
      v33 = a7;
      v34 = v26 - v31;
      v35 = v27[3];
      if (v34 > (v35 - v28) >> 1)
      {
        if ((v26 & 0x80000000) == 0)
        {
          v36 = v35 - v30;
          if (v36 > v26)
          {
            v26 = v36;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v37 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v26;
          }

          sub_240B29578(v37);
        }

        sub_240B228BC();
      }

      bzero(v27[2], 2 * v34);
      *v29 = v28 + 2 * v34;
      a7 = v33;
      v24 = v32;
      v8 = v100;
      goto LABEL_40;
    }

LABEL_38:
    if (v31 > v26)
    {
      *v29 = v30 + 2 * v26;
    }

LABEL_40:
    ++v22;
    v25 += 6;
  }

  while (v24 != v22);
  for (i = 0; i != 4096; ++i)
  {
    v39 = i >> v96;
    v40 = i & ~v95;
    v41 = v117[i >> v96];
    v42 = BYTE1(v41);
    v43 = WORD2(v41);
    if (v117[i >> v96] <= v40)
    {
      v39 = v42;
    }

    else
    {
      v43 = 0;
    }

    *(*(a6 + 48 * v39 + 8) + 2 * v43 + 2 * v40) = i;
  }

  if (!a7)
  {
    goto LABEL_128;
  }

  if (!v97)
  {
    *(a7[3] + (*a7 >> 3)) = *(a7[3] + (*a7 >> 3));
    v49 = *a7 + 1;
    *a7 = v49;
    *(a7[3] + (v49 >> 3)) = (1 << (v49 & 7)) | *(a7[3] + (v49 >> 3));
    ++*a7;
    sub_240B7D7BC(v8 - 1, a7);
    goto LABEL_128;
  }

  v44 = v115;
  v45 = *a7 >> 3;
  v46 = a7[3];
  if (v115 > 2)
  {
    *(v46 + v45) = *(v46 + v45);
    v50 = *a7 + 1;
    *a7 = v50;
    *(a7[3] + (v50 >> 3)) = *(a7[3] + (v50 >> 3));
    v51 = v105;
    ++*a7;
    LODWORD(v113) = 0;
    sub_240B7D868(&v106, v8, &v113);
    if (v8 >= 2)
    {
      v52 = 0;
      v53 = 0;
      v54 = v106;
      do
      {
        v55 = v52 - v53 + 1;
        if (v51 - 1 == v52 || (v23[v52 + 1] == v23[v53] ? (v56 = (v8 & 0x7FFFFFFF) - 2 == v52) : (v56 = 1), v56 || (v55 <= 254 ? (v57 = (v51 + 1) - 1 == v52) : (v57 = 1), v57)))
        {
          v54[v53] = v55;
          v53 = v52 + 2;
        }

        ++v52;
      }

      while ((v8 & 0x7FFFFFFF) - 1 != v52);
    }

    sub_240B2B9C0(&v113, v8);
    v58 = v113;
    if (v8 < 1)
    {
      v61 = 0;
      v60 = 0;
    }

    else
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      do
      {
        if (v51 == v59)
        {
          v60 = v51 + 1;
        }

        else
        {
          v62 = v23[v59];
          if (v62 >= 1)
          {
            v63 = __clz(v62);
            v64 = 32 - v63;
            v58[v59] = 32 - v63;
            v60 = v59 + 1;
            if (v61 > (32 - v63))
            {
              v64 = v61;
            }

            v65 = 33 - v63;
            if (v61 <= v65)
            {
              v61 = v65;
            }

            if (v59 >= v51)
            {
              v61 = v64;
            }
          }
        }

        ++v59;
      }

      while ((v8 & 0x7FFFFFFF) != v59);
    }

    v58[v51] = v61;
    v79 = __clz(v97);
    v80 = v79 ^ 0x1F;
    v81 = ~(-1 << (v79 ^ 0x1F));
    *(a7[3] + (*a7 >> 3)) = (v81 << (*a7 & 7)) | *(a7[3] + (*a7 >> 3));
    v82 = *a7 + v80;
    *a7 = v82;
    if (v79 != 28)
    {
      *(a7[3] + (v82 >> 3)) = *(a7[3] + (v82 >> 3));
      v82 = *a7 + 1;
      *a7 = v82;
    }

    *(a7[3] + (v82 >> 3)) = ((v97 & v81) << (v82 & 7)) | *(a7[3] + (v82 >> 3));
    *a7 += v80;
    if (v60 >= 259)
    {
      sub_240B7D7BC(0xFFuLL, a7);
    }

    else
    {
      sub_240B7D7BC(v60 - 3, a7);
      if (v60 < 1)
      {
        goto LABEL_124;
      }
    }

    v83 = 0;
    while (v83 > 0)
    {
      v84 = v83 - 1;
      v85 = *a7;
      if (*(v106 + (v83 - 1)) < 5u)
      {
        goto LABEL_112;
      }

      *(a7[3] + (v85 >> 3)) = (65 << (v85 & 7)) | *(a7[3] + (v85 >> 3));
      *a7 += 7;
      sub_240B7D7BC(*(v106 + v84) - 5, a7);
      v83 = v83 + *(v106 + v84) - 2;
LABEL_113:
      v23 = v99;
      if (++v83 >= v60)
      {
        for (j = 0; j < v60; ++j)
        {
          if (j < 1 || (v89 = *(v106 + j - 1), v89 < 5))
          {
            if (j != v51)
            {
              v90 = *(v113 + j);
              if (v90 >= 2)
              {
                v91 = v90 - 1;
                if ((v94 - ((13 - v90) >> 1)) < v90 - 1)
                {
                  v91 = v94 - ((13 - v90) >> 1);
                }

                v92 = v91 & ~(v91 >> 31);
                *(a7[3] + (*a7 >> 3)) = (((v99[j] >> (v90 + ~v92)) + (-1 << v92)) << (*a7 & 7)) | *(a7[3] + (*a7 >> 3));
                *a7 += v92;
              }
            }
          }

          else
          {
            j = j + v89 - 2;
          }
        }

LABEL_124:
        if (v113)
        {
          v114 = v113;
          operator delete(v113);
        }

        if (v106)
        {
          v107 = v106;
          operator delete(v106);
        }

        goto LABEL_128;
      }
    }

    v85 = *a7;
LABEL_112:
    v86 = *(v113 + v83);
    v87 = byte_240C83460[v86];
    *(a7[3] + (v85 >> 3)) = (byte_240C8346E[v86] << (v85 & 7)) | *(a7[3] + (v85 >> 3));
    *a7 += v87;
    goto LABEL_113;
  }

  *(v46 + v45) = (1 << (*a7 & 7)) | *(v46 + v45);
  v47 = *a7 + 1;
  *a7 = v47;
  if (!v44)
  {
    *(a7[3] + (v47 >> 3)) = *(a7[3] + (v47 >> 3));
    v78 = *a7 + 1;
    *a7 = v78;
    *(a7[3] + (v78 >> 3)) = *(a7[3] + (v78 >> 3));
    ++*a7;
    goto LABEL_128;
  }

  *(a7[3] + (v47 >> 3)) = ((v44 - 1) << (v47 & 7)) | *(a7[3] + (v47 >> 3));
  ++*a7;
  if (v44 >= 1)
  {
    v48 = 0;
    do
    {
      sub_240B7D7BC(*(&v119 + v48), a7);
      v48 += 4;
    }

    while (4 * v44 != v48);
    if (v44 == 2)
    {
      *(a7[3] + (*a7 >> 3)) = (v23[v119] << (*a7 & 7)) | *(a7[3] + (*a7 >> 3));
      *a7 += 12;
      v10 = *&v116;
      goto LABEL_129;
    }
  }

LABEL_128:
  v10 = *&v116;
  if (v23)
  {
LABEL_129:
    v77 = v23;
LABEL_130:
    operator delete(v77);
  }

  return v10;
}

void sub_240B7D0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (a36)
  {
    atomic_fetch_add(&qword_27E519020, -*(a36 - 24));
    free(*(a36 - 32));
  }

  v38 = *(v36 - 128);
  if (v38)
  {
    *(v36 - 120) = v38;
    operator delete(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_240B7D1B4(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_240B291B0(a1, a2);
  }

  return a1;
}

void sub_240B7D20C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_240B7D228(int *a1, unint64_t a2, float *a3, int a4)
{
  sub_240B7D97C(a1, a2, 0);
  v9 = v8;
  if (a4)
  {
    if (a4 == 2)
    {
      LODWORD(v10) = 0;
      for (i = 1; ; ++i)
      {
        sub_240B7D97C(a1, a2, i);
        if (v14 >= v9)
        {
          v10 = v10;
        }

        else
        {
          v9 = v14;
          v10 = i;
        }

        if (i == 13)
        {
          break;
        }
      }
    }

    else if (a4 == 1)
    {
      LODWORD(v10) = 0;
      v11 = -2;
      do
      {
        sub_240B7D97C(a1, a2, v11 + 3);
        if (v12 >= v9)
        {
          v10 = v10;
        }

        else
        {
          v9 = v12;
          v10 = v11 + 3;
        }

        v11 += 2;
      }

      while (v11 < 0xB);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_240B7D97C(a1, a2, 1u);
    LODWORD(v10) = v15 < v9;
    if (v15 < v9)
    {
      v9 = v15;
    }

    sub_240B7D97C(a1, a2, 7u);
    if (v16 >= v9)
    {
      v10 = v10;
    }

    else
    {
      v9 = v16;
      v10 = 7;
    }

    sub_240B7D97C(a1, a2, 0xDu);
    if (v17 < v9)
    {
      v10 = 13;
      v9 = v17;
    }
  }

  *a3 = v9;
  return v10;
}

uint64_t *sub_240B7D364(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    sub_240B2287C(result, a4);
  }

  return result;
}

void sub_240B7D3BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B7D3D8(int *a1, _DWORD *a2, int a3, int a4, int *a5, int *a6)
{
  if (a3 <= 0)
  {
    *a5 = 0;
  }

  else
  {
    v65 = v6;
    v66 = v7;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = a1[v11];
      if (v15 <= 0)
      {
        ++v11;
      }

      else
      {
        if (v14 <= 3)
        {
          a6[v14] = v11;
        }

        ++v14;
        v13 = ++v11;
      }

      v12 += v15;
    }

    while (v11 != a3);
    *a5 = v14;
    if (v14)
    {
      if (v14 == 1)
      {
        a1[*a6] = 4096;
      }

      else if (v14 <= 4096)
      {
        sub_240B67CD8(&v63, v13);
        v16 = v63;
        if (v64 != v63)
        {
          v17 = v64 - v63;
          if (v17 <= 1)
          {
            v17 = 1;
          }

          v18 = a1;
          v19 = v63;
          do
          {
            v20 = *v18++;
            *v19++ = (4096.0 / v12) * v20;
            --v17;
          }

          while (v17);
        }

        if (v13 < 1)
        {
          v29 = 0;
          v21 = 0;
        }

        else
        {
          v21 = 0;
          v22 = 0.0;
          v23 = v16;
          v24 = a1;
          v25 = v13;
          do
          {
            v26 = *v23;
            if (*v23 > 0.0 && v26 < 1.0)
            {
              *v24 = 1;
              v22 = v22 + v26;
              ++v21;
            }

            ++v24;
            ++v23;
            --v25;
          }

          while (v25);
          v28 = 0;
          v29 = 0;
          v30 = (4096 - v21) / (4096.0 - v22);
          v31 = -1;
          do
          {
            v32 = v16[v28];
            if (v32 >= 1.0)
            {
              v33 = (v30 * v32);
              if (v33 <= 1)
              {
                v34 = 1;
              }

              else
              {
                v34 = (v30 * v32);
              }

              if (v33 == 4096)
              {
                v34 = 4095;
              }

              v35 = __clz(v34) ^ 0x1F;
              v36 = a4 - ((12 - v35) >> 1);
              if (v36 >= v35)
              {
                v36 = v35;
              }

              v37 = v36 & ~(v36 >> 31);
              v41 = v35 < v37;
              v38 = 1 << (v35 - v37);
              if (v41)
              {
                v38 = 1;
              }

              v39 = v34 & -v38;
              a1[v28] = v39;
              if (!v39 || (v39 + v38 / 2) <= v32 && (v38 += v39, v38 <= 4095))
              {
                a1[v28] = v38;
                v39 = v38;
              }

              v21 += v39;
              v40 = __clz(v39) ^ 0x1F;
              v41 = v31 < v40;
              if (v31 <= v40)
              {
                v31 = v40;
              }

              if (v41)
              {
                v29 = v28;
              }
            }

            ++v28;
          }

          while (v13 != v28);
        }

        a1[v29] = a1[v29] - v21 + 4096;
        *a2 = v29;
        if (a1[v29] <= 0)
        {
          if (v13 < 1)
          {
            v50 = 0;
            v42 = 0;
          }

          else
          {
            v42 = 0;
            v43 = 0.0;
            v44 = v16;
            v45 = a1;
            v46 = v13;
            do
            {
              v47 = *v44;
              if (*v44 > 0.0 && v47 < 1.0)
              {
                *v45 = 1;
                v43 = v43 + v47;
                ++v42;
              }

              ++v45;
              ++v44;
              --v46;
            }

            while (v46);
            v49 = 0;
            v50 = 0;
            v51 = (4096 - v42) / (4096.0 - v43);
            v52 = -1;
            do
            {
              v53 = v16[v49];
              if (v53 >= 1.0)
              {
                v43 = v43 + v53;
                v54 = (v51 * v53);
                if (v54 <= 1)
                {
                  v55 = 1;
                }

                else
                {
                  v55 = (v51 * v53);
                }

                if (v54 == 4096)
                {
                  v55 = 4095;
                }

                v56 = __clz(v55) ^ 0x1F;
                v57 = a4 - ((12 - v56) >> 1);
                if (v57 >= v56)
                {
                  v57 = v56;
                }

                v58 = v57 & ~(v57 >> 31);
                v41 = v56 < v58;
                v59 = 1 << (v56 - v58);
                if (v41)
                {
                  v59 = 1;
                }

                v60 = v55 & -v59;
                a1[v49] = v60;
                if (!v60 || v43 - v42 >= (v60 + v59 / 2) && (v59 += v60, v59 <= 4095))
                {
                  a1[v49] = v59;
                  v60 = v59;
                }

                v42 += v60;
                v61 = __clz(v60) ^ 0x1F;
                v62 = v52 < v61;
                if (v52 <= v61)
                {
                  v52 = v61;
                }

                if (v62)
                {
                  v50 = v49;
                }
              }

              ++v49;
            }

            while (v13 != v49);
          }

          a1[v50] = a1[v50] - v42 + 4096;
          *a2 = v50;
        }

        if (v16)
        {
          v64 = v16;
          operator delete(v16);
        }
      }
    }
  }
}

unint64_t sub_240B7D7BC(unint64_t result, unint64_t *a2)
{
  v2 = *a2 >> 3;
  v3 = a2[3];
  if (result)
  {
    *(v3 + v2) = (1 << (*a2 & 7)) | *(v3 + v2);
    v4 = *a2 + 1;
    *a2 = v4;
    v5 = __clz(result) ^ 0x3F;
    *(a2[3] + (v4 >> 3)) = (v5 << (v4 & 7)) | *(a2[3] + (v4 >> 3));
    v6 = *a2 + 3;
    *a2 = v6;
    *(a2[3] + (v6 >> 3)) = (((-1 << v5) + result) << (v6 & 7)) | *(a2[3] + (v6 >> 3));
  }

  else
  {
    *(v3 + v2) = *(v3 + v2);
    v5 = 1;
  }

  *a2 += v5;
  return result;
}

uint64_t *sub_240B7D868(uint64_t *a1, unint64_t a2, int *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_240B2287C(a1, a2);
  }

  return a1;
}

void sub_240B7D960(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B7D97C(int *a1, unint64_t a2, unsigned int a3)
{
  v3 = a2;
  v4 = a1;
  v71[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    memset(v68, 0, sizeof(v68));
    sub_240B7D364(v68, a1, &a1[a2], a2);
    v6 = a3 - 1;
    v67 = 0;
    v71[0] = 0;
    v71[1] = 0;
    v7 = v68[0];
    sub_240B7D3D8(v68[0], &v67 + 1, v3, a3 - 1, &v67, v71);
    if (v67 <= 2)
    {
      if (v67)
      {
        if (v67 >= 1)
        {
          v9 = v71;
          v10 = 2;
          v11 = v67;
          do
          {
            v12 = *v9++;
            v13 = v10 - __clz(v12) + 67;
            if (v12)
            {
              v10 = v13;
            }

            else
            {
              ++v10;
            }

            --v11;
          }

          while (v11);
          if (!v3)
          {
            goto LABEL_85;
          }

LABEL_79:
          v52 = vdup_n_s32(0xC0D55555);
          __asm { FMOV            V3.2S, #-1.0 }

          v54 = vdup_n_s32(0x3F3E11C7u);
          v55 = vdup_n_s32(0x3FB6E02Bu);
          v56 = vdup_n_s32(0x3E32458Cu);
          v57 = vdup_n_s32(0x3F813CEDu);
          v58 = vdup_n_s32(0xB5F85AB0);
          v59 = vdup_n_s32(0x3F7D8625u);
          v60 = v7;
          v61 = 0.0;
          do
          {
            v63 = *v4++;
            v62 = v63;
            if (v63 >= 1)
            {
              *v8.i32 = *v60;
              v64 = vdup_lane_s32(v8, 0);
              v65 = vadd_s32(v64, v52);
              v66 = vadd_f32(vsub_s32(v64, vand_s8(v65, 0x7F0000007FLL)), _D3);
              v8 = vadd_f32(vdiv_f32(vmla_f32(v58, v66, vmla_f32(v55, v54, v66)), vmla_f32(v59, v66, vmla_f32(v57, v56, v66))), vcvt_f32_s32(vshr_n_s32(v65, 0x17uLL)));
              v61 = v61 + (v62 * fmaxf(12.0 - *v8.i32, 0.0));
            }

            ++v60;
            --v3;
          }

          while (v3);
          goto LABEL_85;
        }

        if (v3)
        {
          goto LABEL_79;
        }
      }

      else if (v3)
      {
        goto LABEL_79;
      }

LABEL_85:
      if (v7)
      {
        operator delete(v7);
      }

      return;
    }

    v21 = SHIDWORD(v67);
    LODWORD(__p[0]) = 0;
    sub_240B7D868(v70, v3, __p);
    if (v3 >= 2)
    {
      v22 = 0;
      v23 = 0;
      v24 = v70[0];
      do
      {
        v25 = v22 - v23 + 1;
        if (v21 - 1 == v22 || (v7[v22 + 1] == v7[v23] ? (_ZF = (v3 & 0x7FFFFFFF) - 2 == v22) : (_ZF = 1), _ZF || (v25 <= 254 ? (v27 = (v21 + 1) - 1 == v22) : (v27 = 1), v27)))
        {
          v24[v23] = v25;
          v23 = v22 + 2;
        }

        ++v22;
      }

      while ((v3 & 0x7FFFFFFF) - 1 != v22);
    }

    sub_240B2B9C0(__p, v3);
    v28 = __p[0];
    if (v3 < 1)
    {
      v31 = 0;
      v30 = 0;
    }

    else
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      do
      {
        if (v21 == v29)
        {
          v30 = v21 + 1;
        }

        else
        {
          v32 = v7[v29];
          if (v32 >= 1)
          {
            v33 = __clz(v32);
            v34 = 32 - v33;
            v28[v29] = 32 - v33;
            v30 = v29 + 1;
            if (v31 > (32 - v33))
            {
              v34 = v31;
            }

            v35 = 33 - v33;
            if (v31 <= v35)
            {
              v31 = v35;
            }

            if (v29 >= v21)
            {
              v31 = v34;
            }
          }
        }

        ++v29;
      }

      while ((v3 & 0x7FFFFFFF) != v29);
    }

    v28[v21] = v31;
    v36 = __clz(a3);
    v37 = (2 * v36) ^ 0x3E;
    _ZF = v36 == 28;
    v38 = 2;
    if (!_ZF)
    {
      v38 = 3;
    }

    v39 = v38 + v37;
    if (v30 >= 259)
    {
      v41 = v39 + 11;
    }

    else
    {
      v40 = v39 - __clz(v30 - 3) + 67;
      if (v30 == 3)
      {
        v41 = v39 + 1;
      }

      else
      {
        v41 = v40;
      }

      if (v30 < 1)
      {
        goto LABEL_75;
      }
    }

    v42 = 0;
    v43 = v70[0];
    v44 = v70[0] - 4;
    do
    {
      if (v42 < 1 || (v45 = *&v44[4 * v42], v45 < 5))
      {
        v41 += byte_240C83460[v28[v42]];
      }

      else
      {
        v46 = v41 - __clz(v45 - 5) + 74;
        if (v45 == 5)
        {
          v41 += 8;
        }

        else
        {
          v41 = v46;
        }

        v42 = v42 + v45 - 2;
      }

      ++v42;
    }

    while (v42 < v30);
    for (i = 0; i < v30; ++i)
    {
      if (i < 1 || (v48 = *&v44[4 * i], v48 < 5))
      {
        if (i != v21)
        {
          v49 = v28[i];
          if (v49 >= 2)
          {
            v50 = v49 - 1;
            v51 = v6 - ((13 - v49) >> 1);
            if (v51 >= v50)
            {
              v51 = v50;
            }

            v41 += v51 & ~(v51 >> 31);
          }
        }
      }

      else
      {
        i = i + v48 - 2;
      }
    }

    if (!v28)
    {
LABEL_76:
      if (v43)
      {
        v70[1] = v43;
        operator delete(v43);
      }

      if (!v3)
      {
        goto LABEL_85;
      }

      goto LABEL_79;
    }

LABEL_75:
    __p[1] = v28;
    operator delete(v28);
    v43 = v70[0];
    goto LABEL_76;
  }

  v14 = 0.0;
  if (a2)
  {
    v15 = a2;
    do
    {
      v16 = *v4++;
      v14 = v14 + v16;
      --v15;
    }

    while (v15);
  }

  __asm { FMOV            V4.2S, #-1.0 }
}

void sub_240B7DEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_240B7DF20(unint64_t result, unint64_t *a2)
{
  v2 = *a2 >> 3;
  v3 = a2[3];
  if (result)
  {
    *(v3 + v2) = (1 << (*a2 & 7)) | *(v3 + v2);
    v4 = *a2 + 1;
    *a2 = v4;
    v5 = __clz(result) ^ 0x3F;
    *(a2[3] + (v4 >> 3)) = (v5 << (v4 & 7)) | *(a2[3] + (v4 >> 3));
    v6 = *a2 + 4;
    *a2 = v6;
    *(a2[3] + (v6 >> 3)) = (((-1 << v5) + result) << (v6 & 7)) | *(a2[3] + (v6 >> 3));
  }

  else
  {
    *(v3 + v2) = *(v3 + v2);
    v5 = 1;
  }

  *a2 += v5;
  return result;
}

char *sub_240B7DFCC(uint64_t a1, unint64_t a2, int ***a3, uint64_t *a4, uint64_t a5, unint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a4;
  v10 = a1;
  v590 = *MEMORY[0x277D85DE8];
  a4[12] = a2;
  v550 = 0uLL;
  v551 = 0;
  if (*(a1 + 49) == 1)
  {
    *(a4 + 64) = 0;
  }

  v11 = *(a1 + 48);
  if (*(a1 + 48))
  {
    v12 = 512;
  }

  else
  {
    v12 = 224;
  }

  *(a4 + 17) = v12;
  v13 = *(a1 + 8);
  if (v13)
  {
    if (v13 == 2)
    {
      sub_240B81EA8(a1, a2, a3, a4 + 14, &v550);
    }

    else if (v13 == 1)
    {
      sub_240B81910(__src, a2, v11, a3, a4 + 14);
      sub_240B81C8C(&v550, 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
      v552[0] = 0;
      v552[1] = 0;
      *&v553 = 0;
      v14 = *a3;
      if (a3[1] != *a3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0.0;
        while (1)
        {
          v18 = *(v10 + 16);
          v539 = v16 < (*(v10 + 24) - v18) >> 3 && *(v18 + 8 * v16) != 0;
          v19 = &v14[3 * v16];
          v20 = v550;
          v21 = v19[1] - *v19;
          sub_240B245C8(v552, (v21 >> 3) + 1);
          v22 = v19[1] - *v19;
          v23 = v22 >> 3;
          if (v22)
          {
            v24 = __src[0];
            v25 = __src[1];
            if (v23 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 = v23;
            }

            v27 = (v552[0] + 4);
            v28 = (*v19 + 1);
            do
            {
              v29 = *v28;
              v30 = __clz(*v28);
              v31 = 29 - v30;
              v32 = (((-1 << (v30 ^ 0x1F)) + *v28) >> (29 - v30)) - 4 * v30 + 124;
              v33 = v31;
              if (*v28 >= 0x10)
              {
                v29 = v32;
              }

              else
              {
                v33 = 0.0;
              }

              *v27 = (v33 + v25[v24 * (*(v28 - 1) >> 1) + v29]) + *(v27 - 1);
              ++v27;
              v28 += 2;
              --v26;
            }

            while (v26);
          }

          v34 = (v20 + 24 * v16);
          sub_240B49544(v34, v23);
          v522 = v21;
          v528 = v16;
          v533 = v15;
          v35 = *v19;
          v36 = v19[1] - *v19;
          if (v36)
          {
            break;
          }

LABEL_70:
          v10 = a1;
          v15 = v533 + (v522 >> 3);
          v16 = v528 + 1;
          v14 = *a3;
          v9 = a4;
          if (v528 + 1 >= 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3))
          {
            v74 = v17;
            v75 = v15;
            goto LABEL_242;
          }
        }

        v37 = 0;
        v38 = v36 >> 3;
        while (1)
        {
          v39 = &v35[2 * v37];
          if (v37)
          {
            if (v38 > v37)
            {
              break;
            }
          }

LABEL_41:
          sub_240B6D7E4(v34, v39);
LABEL_69:
          ++v37;
          v35 = *v19;
          v38 = (v19[1] - *v19) >> 3;
          if (v37 >= v38)
          {
            goto LABEL_70;
          }
        }

        v40 = 0;
        v41 = 2 * v37;
        v42 = v39 + 1;
        while (1)
        {
          v43 = *v42;
          v42 += 2;
          if (v43 != *(v39 - 1))
          {
            break;
          }

          if (v38 - v37 == ++v40)
          {
            v40 = v38 - v37;
            goto LABEL_32;
          }
        }

        if (!v40)
        {
          goto LABEL_41;
        }

LABEL_32:
        v44 = *(a4 + 18);
        v45 = 0.0;
        v46 = v40 - v44;
        if (v40 >= v44)
        {
          v47 = __clz(v46 + 1) ^ 0x3F;
          if (((v46 + 1) & v46) != 0)
          {
            v48 = v47 + 1;
          }

          else
          {
            v48 = v47;
          }

          v45 = (v48 + 1);
        }

        if (v40 < v44)
        {
          v50 = v40;
        }

        else
        {
          v49 = *(v552[0] + v37 + v40) - *(v552[0] + v37);
          v50 = v40;
          if (v49 > v45)
          {
            v51 = *v39;
            v52 = v34[1];
            v53 = v34[2];
            if (v52 >= v53)
            {
              v55 = (v52 - *v34) >> 3;
              v56 = v55 + 1;
              if ((v55 + 1) >> 61)
              {
                sub_240B228BC();
              }

              v57 = v53 - *v34;
              if (v57 >> 2 > v56)
              {
                v56 = v57 >> 2;
              }

              if (v57 >= 0x7FFFFFFFFFFFFFF8)
              {
                v58 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v58 = v56;
              }

              if (v58)
              {
                sub_240B299F4(v58);
              }

              v59 = (8 * v55);
              *v59 = v51 & 0xFFFFFFFE;
              v59[1] = v46;
              v54 = 8 * v55 + 8;
              v60 = v34[1] - *v34;
              v61 = v59 - v60;
              memcpy(v59 - v60, *v34, v60);
              v62 = *v34;
              *v34 = v61;
              v34[1] = v54;
              v34[2] = 0;
              if (v62)
              {
                operator delete(v62);
              }
            }

            else
            {
              *v52 = v51 & 0xFFFFFFFE;
              v52[1] = v46;
              v54 = (v52 + 2);
            }

            v34[1] = v54;
            *(v54 - 8) |= 1u;
            v63 = v34[1];
            v64 = v34[2];
            if (v63 >= v64)
            {
              v66 = (v63 - *v34) >> 3;
              v67 = v66 + 1;
              if ((v66 + 1) >> 61)
              {
                sub_240B228BC();
              }

              v68 = v64 - *v34;
              if (v68 >> 2 > v67)
              {
                v67 = v68 >> 2;
              }

              if (v68 >= 0x7FFFFFFFFFFFFFF8)
              {
                v69 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v69 = v67;
              }

              if (v69)
              {
                sub_240B299F4(v69);
              }

              v70 = (8 * v66);
              *v70 = 2 * *(a4 + 24);
              v70[1] = v539;
              v65 = 8 * v66 + 8;
              v71 = v34[1] - *v34;
              v72 = 8 * v66 - v71;
              memcpy(v70 - v71, *v34, v71);
              v73 = *v34;
              *v34 = v72;
              v34[1] = v65;
              v34[2] = 0;
              if (v73)
              {
                operator delete(v73);
              }
            }

            else
            {
              *v63 = 2 * *(a4 + 24);
              *(v63 + 1) = v539;
              v65 = (v63 + 8);
            }

            v34[1] = v65;
            v17 = v17 + (v49 - v45);
            goto LABEL_68;
          }
        }

        do
        {
          sub_240B6D7E4(v34, &(*v19)[v41]);
          v41 += 2;
          --v50;
        }

        while (v50);
LABEL_68:
        v37 = v37 + v40 - 1;
        goto LABEL_69;
      }

      v75 = 0.0;
      v74 = 0.0;
LABEL_242:
      if (v75 * 0.2 + 16.0 < v74)
      {
        *(v9 + 64) = 1;
      }

      v8 = a6;
      if (v552[0])
      {
        operator delete(v552[0]);
      }

      if (v567[0])
      {
        v567[1] = v567[0];
        operator delete(v567[0]);
      }

      if (__src[1])
      {
        *&v566 = __src[1];
        operator delete(__src[1]);
      }
    }

    else
    {
      v548[0] = 0;
      v548[1] = 0;
      v549 = 0;
      sub_240B81EA8(a1, a2, a3, a4 + 14, v548);
      if (v9[8])
      {
        sub_240B81910(v552, a2 + 1, *(v10 + 48), v548, v9 + 14);
        sub_240B81C8C(&v550, 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
        v561 = 0;
        v562 = 0;
        v563 = 0;
        __p = 0;
        v559 = 0;
        v560 = 0;
        v76 = *a3;
        if (a3[1] != *a3)
        {
          v77 = 0;
          do
          {
            v78 = *(v10 + 16);
            if (v77 >= (*(v10 + 24) - v78) >> 3)
            {
              v499 = 0;
            }

            else
            {
              v499 = *(v78 + 8 * v77);
            }

            v79 = &v76[3 * v77];
            v80 = v550;
            sub_240B245C8(&v561, ((v79[1] - *v79) >> 3) + 1);
            v81 = v79[1] - *v79;
            v82 = v81 >> 3;
            if (v81)
            {
              v83 = v552[0];
              v84 = v552[1];
              if (v82 <= 1)
              {
                v85 = 1;
              }

              else
              {
                v85 = v82;
              }

              v86 = (v561 + 4);
              v87 = (*v79 + 4);
              do
              {
                v88 = *v87;
                v89 = __clz(*v87);
                v90 = 29 - v89;
                v91 = (((-1 << (v89 ^ 0x1F)) + *v87) >> (29 - v89)) - 4 * v89 + 124;
                v92 = v90;
                if (*v87 >= 0x10)
                {
                  v88 = v91;
                }

                else
                {
                  v92 = 0.0;
                }

                *v86 = (v92 + v84[v83 * (*(v87 - 1) >> 1) + v88]) + *(v86 - 1);
                ++v86;
                v87 += 2;
                --v85;
              }

              while (v85);
            }

            v529 = (v80 + 24 * v77);
            sub_240B49544(v529, v82);
            v93 = (v79[1] - *v79) >> 3;
            v518 = *(v9 + 18);
            v94 = 0x100000;
            if (v93 < 0x100000)
            {
              v94 = (v79[1] - *v79) >> 3;
            }

            v95 = 1;
            do
            {
              v96 = v95;
              v95 *= 2;
            }

            while (v96 < v94);
            sub_240B824A4(__src, *v79, v93, v96, v518, v93, v499);
            v98 = *v79;
            v97 = v79[1];
            v99 = (v97 - *v79) >> 3;
            v497 = v77;
            if (v99 != -1)
            {
              if (!((v99 + 1) >> 60))
              {
                operator new();
              }

              sub_240B228BC();
            }

            v100 = -1;
            MEMORY[0xC] = 0;
            v516 = v79;
            if (v97 != v98)
            {
              v101 = 0;
              v102 = 0;
              v502 = 0;
              v103 = v561;
              v104 = 16 * v518 + 12;
              v504 = v561;
              do
              {
                sub_240B82B3C(__src, v101);
                v105 = (*(16 * v101 + 0xC) + v103[v101 + 1]) - v103[v101];
                v540 = v101 + 1;
                if (*(16 * (v101 + 1) + 0xC) > v105)
                {
                  *(16 * (v101 + 1)) = 1;
                  *(16 * (v101 + 1) + 8) = *(*v79 + 8 * v101) >> 1;
                  *(16 * (v101 + 1) + 0xC) = v105;
                }

                if (v102)
                {
                  --v102;
                }

                else
                {
                  v106 = __p;
                  v559 = __p;
                  if ((v101 + 2) >= __src[0])
                  {
                    v523 = 0;
                  }

                  else
                  {
                    v523 = ((*(__src[1] + v101 + 1) << SLOBYTE(v567[1])) ^ *(__src[1] + v101) ^ (*(__src[1] + v101 + 2) << (2 * LOBYTE(v567[1])))) & HIDWORD(v567[0]);
                  }

                  v107 = v577 & v101;
                  v108 = *(*(&v569[0] + 1) + 4 * (v577 & v101));
                  if (SLODWORD(__src[0]) >= LODWORD(v578[0]) + v101)
                  {
                    v109 = (LODWORD(v578[0]) + v101);
                  }

                  else
                  {
                    v109 = LODWORD(__src[0]);
                  }

                  v110 = v107 + 1;
                  v111 = v107 + 1 + v577;
                  if (v108 <= v107)
                  {
                    v111 = v577 & v101;
                  }

                  v112 = v111 - v108;
                  if ((v111 - v108) < 0)
                  {
                    v131 = __p;
                  }

                  else
                  {
                    v506 = v104;
                    v113 = 0;
                    v114 = 0;
                    v514 = v109 + ~v101;
                    if (v101 + LODWORD(v578[0]) >= SLODWORD(__src[0]))
                    {
                      v115 = __src[0];
                    }

                    else
                    {
                      v115 = v101 + LODWORD(v578[0]);
                    }

                    v511 = v115;
                    v509 = v577 & v101;
                    v507 = v107 + 1;
                    do
                    {
                      if (v112 < 1)
                      {
                        LODWORD(v122) = 0;
                      }

                      else
                      {
                        v116 = v101 - v112;
                        v117 = v101;
                        if (v576 >= 4)
                        {
                          v118 = v576 - 1;
                          if (*(*(&v574 + 1) + 4 * v108) < v576 - 1)
                          {
                            v118 = *(*(&v574 + 1) + 4 * v108);
                          }

                          if (v118 + v101 >= v109)
                          {
                            v118 = v514;
                          }

                          v117 = v118 + v101;
                          v116 += v118;
                        }

                        if (v117 < v109)
                        {
                          v119 = v117;
                          v120 = v511 - v117;
                          v121 = 4 * v116;
                          while (*(__src[1] + v119) == *(__src[1] + v121))
                          {
                            ++v119;
                            v121 += 4;
                            if (!--v120)
                            {
                              v117 = v109;
                              goto LABEL_129;
                            }
                          }

                          v117 = v119;
                        }

LABEL_129:
                        v122 = (v117 - v101);
                        v123 = *(&v577 + 1) <= v122 && v122 + 2 >= v113;
                        if (v123)
                        {
                          v124 = v109;
                          v125 = sub_240B82C78(v578 + 1, v112);
                          if (v125)
                          {
                            v126 = *(v125 + 5);
                          }

                          else
                          {
                            v126 = v579 + v112 - 1;
                          }

                          v109 = v124;
                          if (v122 >= (v559 - v106) >> 2)
                          {
                            LODWORD(v556) = v126;
                            sub_240B2B4A8(&__p, v122 + 1, &v556);
                            v106 = __p;
                            v109 = v124;
                          }

                          if (*&v106[4 * v122] > v126)
                          {
                            *&v106[4 * v122] = v126;
                          }

                          if (v122 > v113)
                          {
                            v113 = v122;
                          }

                          v110 = v507;
                          v107 = v509;
                        }
                      }

                      if (++v114 >= DWORD2(v579))
                      {
                        break;
                      }

                      v127 = v576 >= 3 && v122 > v576;
                      if (v127)
                      {
                        v129 = *(v573 + 4 * v108);
                        if (v108 == v129)
                        {
                          break;
                        }

                        v108 = *(v573 + 4 * v108);
                        if (*(*(&v574 + 1) + 4 * v129) != v576)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v128 = *(*(&v569[0] + 1) + 4 * v108);
                        if (v108 == v128)
                        {
                          break;
                        }

                        v108 = *(*(&v569[0] + 1) + 4 * v108);
                        if (*(v570 + 4 * v128) != v523)
                        {
                          break;
                        }
                      }

                      v130 = v110 - v108 + v577;
                      if (v107 >= v108)
                      {
                        v130 = v107 - v108;
                      }

                      v127 = v130 < v112;
                      v112 = v130;
                    }

                    while (!v127);
                    v131 = v559;
                    v104 = v506;
                  }

                  v132 = (v131 - v106) >> 2;
                  v8 = a6;
                  v79 = v516;
                  if (v132 <= v518)
                  {
                    v102 = 0;
                    v103 = v504;
                  }

                  else
                  {
                    v133 = v132 - 1;
                    if (v132 - 1 >= v518)
                    {
                      v134 = *(v131 - 1);
                      do
                      {
                        if (v134 >= *&v106[4 * v133])
                        {
                          v134 = *&v106[4 * v133];
                        }

                        *&v106[4 * v133--] = v134;
                      }

                      while (v133 >= v518);
                    }

                    v135 = 0;
                    v136 = (*v516 + 8 * v101);
                    v138 = *(a4 + 19);
                    v137 = *(a4 + 20);
                    v139 = *(a4 + 21);
                    v140 = *(a4 + 22);
                    v141 = v140 + v139;
                    v142 = *(a4 + 17);
                    v143 = v552[0];
                    v144 = v552[1];
                    v145 = v552[1] + 4 * a4[12] * v552[0];
                    v146 = &v106[4 * v518];
                    v147 = v104;
                    v103 = v504;
                    do
                    {
                      v148 = __clz(v135) ^ 0x1F;
                      v149 = (v148 - v141);
                      if (v137 <= v135)
                      {
                        v150 = ((v148 - v138) << v141) + v137 + ((v135 + (-1 << v148)) & ~(-1 << v140)) + ((v135 + (-1 << v148)) >> (v148 - v139) << v140);
                      }

                      else
                      {
                        v149 = 0.0;
                        v150 = v135;
                      }

                      v151 = v149 + v144[v143 * (*v136 >> 1) + (v150 + v142)];
                      v152 = *&v146[4 * v135];
                      v153 = __clz(v152);
                      v154 = (29 - v153);
                      v155 = (((-1 << (v153 ^ 0x1F)) + v152) >> (29 - v153)) - 4 * v153 + 124;
                      if (v152 < 0x10)
                      {
                        v154 = 0.0;
                      }

                      else
                      {
                        v152 = v155;
                      }

                      v156 = *(16 * v101 + 0xC) + (v151 + (v154 + *&v145[4 * v152]));
                      if (*v147 > v156)
                      {
                        *(v147 - 3) = v518 + v135;
                        *(v147 - 2) = *&v146[4 * v135] + 1;
                        *(v147 - 1) = *v136 >> 1;
                        *v147 = v156;
                      }

                      ++v135;
                      v147 += 4;
                    }

                    while (v132 - v518 != v135);
                    v157 = *(v131 - 1);
                    v158 = v157 == 1;
                    if (v499)
                    {
                      v159 = 0;
                    }

                    else
                    {
                      v158 = 0;
                      v159 = v157 == 0;
                    }

                    if (v159 || v158)
                    {
                      v160 = (v502 + 1) > 7;
                      v161 = v132 > 9;
                      v162 = v132 - 10;
                      if (v160 && v161)
                      {
                        v163 = 0;
                      }

                      else
                      {
                        v163 = v502 + 1;
                      }

                      v502 = v163;
                      if (v160 && v161)
                      {
                        v102 = v162;
                      }

                      else
                      {
                        v102 = 0;
                      }
                    }

                    else
                    {
                      v502 = 0;
                      v102 = 0;
                    }

                    v79 = v516;
                  }
                }

                ++v101;
                v164 = v79[1] - *v79;
                v104 += 16;
              }

              while (v540 < v164 >> 3);
              v100 = v164 >> 3;
              v9 = a4;
            }

            for (i = v529; v100; v100 -= *v166)
            {
              v166 = (16 * v100);
              v167 = *(16 * v100 + 4);
              if (v167)
              {
                v168 = v167 - 1;
                v169 = i[1];
                v170 = i[2];
                if (v169 >= v170)
                {
                  v173 = (v169 - *i) >> 3;
                  v174 = v173 + 1;
                  if ((v173 + 1) >> 61)
                  {
                    sub_240B228BC();
                  }

                  v175 = v170 - *i;
                  if (v175 >> 2 > v174)
                  {
                    v174 = v175 >> 2;
                  }

                  if (v175 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v176 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v176 = v174;
                  }

                  if (v176)
                  {
                    sub_240B299F4(v176);
                  }

                  v177 = (8 * v173);
                  *v177 = 2 * *(v9 + 24);
                  v177[1] = v168;
                  v171 = (8 * v173 + 8);
                  i = v529;
                  v178 = v529[1] - *v529;
                  v179 = v177 - v178;
                  memcpy(v177 - v178, *v529, v178);
                  v180 = *v529;
                  *v529 = v179;
                  v529[1] = v171;
                  v529[2] = 0;
                  if (v180)
                  {
                    operator delete(v180);
                    i = v529;
                  }
                }

                else
                {
                  *v169 = 2 * *(v9 + 24);
                  v169[1] = v168;
                  v171 = v169 + 2;
                }

                i[1] = v171;
                v172 = *v166 - v518;
              }

              else
              {
                v172 = *(*v516 + 8 * v100 - 4);
                v171 = i[1];
              }

              v181 = i[2];
              if (v171 >= v181)
              {
                v183 = (v171 - *i) >> 3;
                if ((v183 + 1) >> 61)
                {
                  sub_240B228BC();
                }

                v184 = v181 - *i;
                v185 = v184 >> 2;
                if (v184 >> 2 <= (v183 + 1))
                {
                  v185 = v183 + 1;
                }

                if (v184 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v186 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v186 = v185;
                }

                if (v186)
                {
                  sub_240B299F4(v186);
                }

                v187 = (8 * v183);
                *v187 = 2 * *(16 * v100 + 8);
                v187[1] = v172;
                v182 = 8 * v183 + 8;
                i = v529;
                v188 = v529[1] - *v529;
                v189 = v187 - v188;
                memcpy(v187 - v188, *v529, v188);
                v190 = *v529;
                *v529 = v189;
                v529[1] = v182;
                v529[2] = 0;
                if (v190)
                {
                  operator delete(v190);
                  i = v529;
                }
              }

              else
              {
                *v171 = 2 * *(16 * v100 + 8);
                v171[1] = v172;
                v182 = (v171 + 2);
              }

              i[1] = v182;
              v191 = *(v182 - 8) & 0xFFFFFFFE;
              if (v167)
              {
                ++v191;
              }

              *(v182 - 8) = v191;
            }

            v192 = *i;
            v193 = i[1];
            v194 = (v193 - 8);
            if (*i != v193 && v194 > v192)
            {
              v196 = v192 + 8;
              do
              {
                v197 = *(v196 - 8);
                *(v196 - 8) = *v194;
                *v194-- = v197;
                v123 = v196 >= v194;
                v196 += 8;
              }

              while (!v123);
            }

            v10 = a1;
            sub_240B82D2C(__src);
            v77 = v497 + 1;
            v76 = *a3;
          }

          while (v497 + 1 < 0xAAAAAAAAAAAAAAABLL * (a3[1] - *a3));
          if (__p)
          {
            operator delete(__p);
          }
        }

        if (v561)
        {
          operator delete(v561);
        }

        if (v554)
        {
          v555 = v554;
          operator delete(v554);
        }

        if (v552[1])
        {
          *&v553 = v552[1];
          operator delete(v552[1]);
        }
      }

      __src[0] = v548;
      sub_240B31E8C(__src);
    }
  }

  v198 = 128;
  if (a2 < 0x80)
  {
    v198 = a2;
  }

  sub_240B53650(v548, v8, 96 * v198 + 40 * a2 + 128);
  if (!v8)
  {
    v552[0] = 0;
    sub_240B541D8((v9 + 7), __src, v552);
    v200 = v552[0];
    v541 = v9 + 8;
    if (v9[8])
    {
      __src[0] = 0;
      sub_240B82DC8(*(v9 + 76), *(v9 + 84), __src, 8);
      v201 = __src[0];
      goto LABEL_257;
    }

LABEL_261:
    v202 = a2;
    goto LABEL_262;
  }

  sub_240C0EB88((v9 + 7), v8, a7, a8);
  v541 = v9 + 8;
  if (*(v9 + 64) != 1)
  {
    v200 = 0;
    goto LABEL_261;
  }

  v199 = *v8;
  sub_240B7C548(*(v9 + 76), *(v9 + 84), v8, 8);
  v200 = 0;
  v201 = *v8 - v199;
LABEL_257:
  v200 += v201;
  v202 = a2 + 1;
  if (*a3)
  {
    sub_240B31EE0(a3);
    operator delete(*a3);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = v550;
  a3[2] = v551;
  v551 = 0;
  v550 = 0uLL;
LABEL_262:
  sub_240B82E28(&v546, v202);
  v204 = *(v10 + 4);
  v515 = v200;
  v205 = v10;
  if (v204 == 1)
  {
    v209 = 0;
    v206 = 0;
    v207 = 0;
    v208 = 1;
  }

  else if (v204 == 3)
  {
    v206 = 0;
    v207 = 2;
    v208 = 4;
    v209 = 1;
  }

  else
  {
    v209 = 0;
    v207 = 4;
    v208 = 16;
    v206 = 2;
  }

  v210 = *a3;
  v530 = a3[1];
  if (*a3 == v530)
  {
    v231 = 1;
  }

  else
  {
    v501 = v202;
    v211 = 0;
    v212 = v206 | v209;
    v213 = ~(-1 << v209);
    do
    {
      v214 = *v210;
      v215 = v210[1];
      v534 = v210;
      if (*v541 == 1)
      {
        while (1)
        {
          if (v214 == v215)
          {
            goto LABEL_290;
          }

          v216 = v214[1];
          if (*v214)
          {
            v223 = a4;
            v221 = *(a4 + 20);
            if (v221 > v216)
            {
              goto LABEL_279;
            }

            v217 = __clz(v216) ^ 0x1F;
            v218 = v217 - *(a4 + 19);
            v220 = *(a4 + 21);
            v222 = *(a4 + 22);
            v219 = ~(-1 << v222);
          }

          else
          {
            if (v208 > v216)
            {
              goto LABEL_277;
            }

            v217 = __clz(v216) ^ 0x1F;
            v218 = v217 - v207;
            v219 = ~(-1 << v209);
            LOBYTE(v220) = v206;
            v221 = v208;
            LOBYTE(v222) = v209;
          }

          v216 = (v218 << (v222 + v220)) + v221 + (((-1 << v217) + v216) & v219) + (((-1 << v217) + v216) >> (v217 - v220) << v222);
          if ((*v214 & 1) == 0)
          {
LABEL_277:
            v224 = 0;
            goto LABEL_280;
          }

          v223 = a4;
LABEL_279:
          v224 = *(v223 + 17);
LABEL_280:
          sub_240B82EB4(v546 + 40 * (*v214 >> 1), (v224 + v216));
          v214 += 2;
          ++v211;
        }
      }

      if (v501 == 1)
      {
        while (v214 != v215)
        {
          v225 = v214[1];
          v226 = __clz(v225);
          v227 = (((v226 ^ 0x1F) - v207) << v212) + v208 + (((-1 << (v226 ^ 0x1F)) + v225) & v213) + (((-1 << (v226 ^ 0x1F)) + v225) >> ((v226 ^ 0x1F) - v206) << v209);
          if (v208 <= v225)
          {
            v225 = v227;
          }

          sub_240B82EB4(v546, v225);
          v214 += 2;
          ++v211;
        }
      }

      else
      {
        while (v214 != v215)
        {
          v228 = v214[1];
          v229 = __clz(v228);
          v230 = (((v229 ^ 0x1F) - v207) << v212) + v208 + (((-1 << (v229 ^ 0x1F)) + v228) & v213) + (((-1 << (v229 ^ 0x1F)) + v228) >> ((v229 ^ 0x1F) - v206) << v209);
          if (v208 <= v228)
          {
            v228 = v230;
          }

          sub_240B82EB4(v546 + 40 * (*v214 >> 1), v228);
          v214 += 2;
          ++v211;
        }
      }

LABEL_290:
      v210 = v534 + 3;
    }

    while (v534 + 3 != v530);
    v231 = v211 < 0x64;
    v8 = a6;
    v205 = a1;
    v202 = v501;
  }

  if (v202 && (*(v205 + 51) & 1) != 0)
  {
    for (j = 0; j != v202; ++j)
    {
      for (k = 0; k != 256; ++k)
      {
        sub_240B82EB4(v546 + 40 * j, k);
      }
    }
  }

  if (*(v205 + 49) == 1)
  {
    v234 = 1;
    if (((*(v205 + 48) | v231) & 1) == 0 && *v205 && v202)
    {
      v235 = 32;
      do
      {
        v236 = (v546 + v235);
        sub_240B8ABB4(v546 + v235 - 32, *&v203);
        v203 = *v236;
        v234 &= v203 < 0.00001;
        v235 += 40;
        --v202;
      }

      while (v202);
    }

    *(a4 + 24) = v234;
  }

  if (*(v205 + 52) == 1)
  {
    LODWORD(__src[0]) = 16;
    sub_240B22768(v552, 0x100uLL, __src);
    v238 = a4[1];
    v237 = a4[2];
    if (v238 >= v237)
    {
      v240 = 0xAAAAAAAAAAAAAAABLL * ((v238 - *a4) >> 3);
      v241 = v240 + 1;
      if (v240 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_240B228BC();
      }

      v242 = 0xAAAAAAAAAAAAAAABLL * ((v237 - *a4) >> 3);
      if (2 * v242 > v241)
      {
        v241 = 2 * v242;
      }

      if (v242 >= 0x555555555555555)
      {
        v243 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v243 = v241;
      }

      v567[0] = a4;
      if (v243)
      {
        sub_240B82F14(v243);
      }

      v244 = 24 * v240;
      *v244 = 0;
      *(v244 + 8) = 0;
      *(v244 + 16) = 0;
      v239 = 24 * v240 + 24;
      v245 = a4[1] - *a4;
      v246 = 24 * v240 - v245;
      memcpy((v244 - v245), *a4, v245);
      v247 = *a4;
      *a4 = v246;
      a4[1] = v239;
      v248 = a4[2];
      a4[2] = 0;
      *&v566 = v247;
      *(&v566 + 1) = v248;
      __src[0] = v247;
      __src[1] = v247;
      sub_240B82F6C(__src);
    }

    else
    {
      *v238 = 0;
      v238[1] = 0;
      v239 = (v238 + 3);
      v238[2] = 0;
    }

    a4[1] = v239;
    sub_240B82FCC((v239 - 24), 0x100uLL);
    v250 = a4[14];
    v249 = a4[15];
    if (v250 >= v249)
    {
      v252 = a4[13];
      v253 = 0xCCCCCCCCCCCCCCCDLL * ((v250 - v252) >> 3);
      v254 = v253 + 1;
      if (v253 + 1 > 0x666666666666666)
      {
        sub_240B228BC();
      }

      v255 = 0xCCCCCCCCCCCCCCCDLL * ((v249 - v252) >> 3);
      if (2 * v255 > v254)
      {
        v254 = 2 * v255;
      }

      if (v255 >= 0x333333333333333)
      {
        v256 = 0x666666666666666;
      }

      else
      {
        v256 = v254;
      }

      v567[0] = a4 + 13;
      if (v256)
      {
        sub_240B839AC(v256);
      }

      v257 = 40 * v253;
      __src[0] = 0;
      __src[1] = v257;
      *(&v566 + 1) = 0;
      *(v257 + 32) = 0;
      *v257 = 0u;
      *(v257 + 16) = 0u;
      *&v566 = 40 * v253 + 40;
      v258 = a4[13];
      v259 = a4[14];
      v260 = 40 * v253 + v258 - v259;
      sub_240B83A04(v258, v259, v257 + v258 - v259);
      v261 = a4[13];
      a4[13] = v260;
      v262 = a4[15];
      v535 = v566;
      *(a4 + 7) = v566;
      *&v566 = v261;
      *(&v566 + 1) = v262;
      __src[0] = v261;
      __src[1] = v261;
      sub_240B599D8(__src);
      v251 = v535;
    }

    else
    {
      *(v250 + 32) = 0;
      *v250 = 0u;
      *(v250 + 16) = 0u;
      v251 = v250 + 40;
    }

    a4[14] = v251;
    v263 = (v251 - 40);
    sub_240B53650(__src, (v251 - 40), 6400);
    sub_240B7C61C(*(v205 + 12), v552[0], 0x100uLL, 8, *(a4 + 24), *(a4[1] - 24), v263);
    v561 = 0;
    sub_240B53734(__src, v263, &v561, &__p);
    if (v552[0])
    {
      v552[1] = v552[0];
      operator delete(v552[0]);
    }
  }

  v265 = *a4;
  v264 = a4[1];
  v556 = 0;
  v557 = 0uLL;
  v266 = v264 - v265;
  v517 = 0xAAAAAAAAAAAAAAABLL * (v266 >> 3);
  if (v266)
  {
    v267 = 0;
    if (v517 <= 1)
    {
      v268 = 1;
    }

    else
    {
      v268 = 0xAAAAAAAAAAAAAAABLL * (v266 >> 3);
    }

    do
    {
      v269 = (*a4 + 24 * v267);
      v270 = *(a4 + 24);
      *v552 = 0u;
      v553 = 0u;
      LODWORD(v554) = 0;
      sub_240B245C8(v552, (7 - 0x5555555555555555 * ((v269[1] - *v269) >> 4)) & 0xFFFFFFFFFFFFFFF8);
      *(&v553 + 1) = 0;
      v271 = *v269;
      v272 = v269[1];
      v273 = v272 - *v269;
      v159 = v272 == *v269;
      v8 = a6;
      if (!v159)
      {
        v274 = 0;
        v275 = 0xAAAAAAAAAAAAAAABLL * (v273 >> 4);
        v276 = v552[0];
        if (v275 <= 1)
        {
          v275 = 1;
        }

        do
        {
          if (v270)
          {
            if (*(v271 + 40))
            {
              v277 = 1 << (15 - *(v271 + 40));
            }

            else
            {
              v277 = 0;
            }
          }

          else
          {
            v277 = *v271;
          }

          *v276++ = v277;
          v274 += v277;
          v271 += 24;
          --v275;
        }

        while (v275);
        *(&v553 + 1) = v274;
      }

      v278 = v557;
      if (v557 >= *(&v557 + 1))
      {
        v279 = 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3);
        v280 = v279 + 1;
        if (v279 + 1 > 0x666666666666666)
        {
          sub_240B228BC();
        }

        if (0x999999999999999ALL * ((*(&v557 + 1) - v556) >> 3) > v280)
        {
          v280 = 0x999999999999999ALL * ((*(&v557 + 1) - v556) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v557 + 1) - v556) >> 3) >= 0x333333333333333)
        {
          v281 = 0x666666666666666;
        }

        else
        {
          v281 = v280;
        }

        v567[0] = &v556;
        if (v281)
        {
          sub_240B837BC(v281);
        }

        v282 = (8 * ((v557 - v556) >> 3));
        __src[0] = 0;
        __src[1] = v282;
        *(&v566 + 1) = 0;
        *v282 = *v552;
        *(v282 + 2) = v553;
        v552[0] = 0;
        v552[1] = 0;
        *&v553 = 0;
        *(v282 + 3) = *(&v553 + 1);
        *(v282 + 8) = v554;
        *&v566 = 40 * v279 + 40;
        v283 = &v556[40 * v279 - v557];
        sub_240B83814(&v556, v556, v557, &v556[v282 - v557]);
        v284 = v556;
        v285 = *(&v557 + 1);
        v556 = v283;
        v536 = v566;
        v557 = v566;
        *&v566 = v284;
        *(&v566 + 1) = v285;
        __src[0] = v284;
        __src[1] = v284;
        sub_240B838E0(__src);
        *&v557 = v536;
        if (v552[0])
        {
          operator delete(v552[0]);
        }
      }

      else
      {
        *v557 = *v552;
        *(v278 + 16) = v553;
        *(v278 + 32) = v554;
        *&v557 = v278 + 40;
      }

      ++v267;
    }

    while (v267 != v268);
  }

  v286 = *(a5 + 8) - *a5;
  v287 = v546;
  v288 = v547;
  v289 = 0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3);
  if (v286 >= v289 + v286)
  {
    if (v286 > v289 + v286)
    {
      *(a5 + 8) = *a5 + v289 + v286;
    }

    v290 = a4;
    v291 = a1;
    v292 = v517;
  }

  else
  {
    sub_240B26918(a5, 0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3));
    v290 = a4;
    v291 = a1;
    v292 = v517;
    v287 = v546;
    v288 = v547;
    v289 = 0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3);
  }

  if (v289 < 2)
  {
    sub_240B83214(&v556, v287);
    goto LABEL_530;
  }

  __p = 0;
  v559 = 0;
  v560 = 0;
  v512 = v557;
  v293 = *(v291 + 40);
  v294 = 0xCCCCCCCCCCCCCCCDLL * ((v288 - v287) >> 3);
  if (v293 >= v294)
  {
    v293 = v294;
  }

  v295 = 128;
  if (!*v291)
  {
    v295 = 4;
  }

  if (v295 < v293)
  {
    v293 = v295;
  }

  v537 = 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3);
  v296 = v293 - 0x3333333333333333 * ((v557 - v556) >> 3);
  v510 = v556;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(&v557 + 1) - v556) >> 3) < v296)
  {
    if (v296 <= 0x666666666666666)
    {
      v567[0] = &v556;
      sub_240B837BC(v296);
    }

    sub_240B228BC();
  }

  v508 = v286;
  v559 = 0;
  LODWORD(__src[0]) = v293 - 858993459 * ((v557 - v556) >> 3);
  sub_240B2B4A8(&__p, v294, __src);
  LODWORD(v552[0]) = 2139095039;
  sub_240B83618(__src, 0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3), v552);
  v531 = v296;
  v299 = v546;
  v300 = v547;
  if (v547 == v546)
  {
    v301 = 0;
  }

  else
  {
    v301 = 0;
    v302 = 0;
    v303 = 24;
    do
    {
      if (*(v299 + v303))
      {
        *&v297 = sub_240B8ABB4(v299 + v303 - 24, *&v297);
        v299 = v546;
        v300 = v547;
        if (*(v546 + v303) > *(v546 + 40 * v301 + 24))
        {
          v301 = v302;
        }
      }

      else
      {
        *(__p + v302) = 0;
        *(__src[0] + v302) = 0;
      }

      ++v302;
      v303 += 40;
    }

    while (v302 < 0xCCCCCCCCCCCCCCCDLL * ((v300 - v299) >> 3));
  }

  if (v512 != v510)
  {
    v305 = 0;
    if (v537 <= 1)
    {
      v306 = 1;
    }

    else
    {
      v306 = v537;
    }

    v524 = v306;
    do
    {
      *&v297 = sub_240B8ABB4(&v556[v305], *&v297);
      v305 += 40;
      --v306;
    }

    while (v306);
    v299 = v546;
    v300 = v547;
    v307 = __src[0];
    if (v547 != v546)
    {
      v308 = 0;
      if (0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3) <= 1)
      {
        v309 = 1;
      }

      else
      {
        v309 = 0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3);
      }

      v310 = v556;
      do
      {
        v311 = v307[v308];
        if (v311 != 0.0)
        {
          v312 = v310;
          v313 = v524;
          do
          {
            *&v297 = sub_240B8AE40(v299 + 40 * v308, v312);
            if (v311 >= *&v297)
            {
              v311 = *&v297;
            }

            v307[v308] = v311;
            v312 += 5;
            --v313;
          }

          while (v313);
        }

        ++v308;
      }

      while (v308 != v309);
    }

    v314 = v307 + 1;
    v315 = v307 == __src[1] || v314 == __src[1];
    v316 = v307;
    if (!v315)
    {
      v317 = *v307;
      v316 = v307;
      v318 = v307 + 1;
      do
      {
        v319 = *v318++;
        *&v298 = v319;
        if (v317 < v319)
        {
          v317 = *&v298;
          v316 = v314;
        }

        v314 = v318;
      }

      while (v318 != __src[1]);
    }

    LODWORD(v297) = *v316;
    v291 = a1;
    if (*v316 > 0.0)
    {
      v301 = (v316 - v307) >> 2;
    }
  }

  v320 = 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3);
  if (v320 < v531)
  {
    v321 = __p;
    while (1)
    {
      v321[v301] = v320;
      sub_240B83214(&v556, v299 + 40 * v301);
      v322 = __src[0];
      *(__src[0] + v301) = 0;
      v299 = v546;
      v300 = v547;
      v301 = 0;
      if (v547 != v546)
      {
        v323 = 0;
        if (0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3) <= 1)
        {
          v324 = 1;
        }

        else
        {
          v324 = 0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3);
        }

        v325 = v557 - 40;
        v326 = v546;
        do
        {
          v327 = v322[v323];
          if (v327 != 0.0)
          {
            *&v297 = sub_240B8ACD4(v326, v325, v297, v298);
            if (v327 < *&v297)
            {
              *&v297 = v327;
            }

            v322[v323] = *&v297;
            *&v298 = v322[v301];
            if (*&v297 > *&v298)
            {
              v301 = v323;
            }
          }

          ++v323;
          v326 += 40;
        }

        while (v324 != v323);
      }

      *&v297 = v322[v301];
      LODWORD(v298) = 1111490560;
      if (*&v297 < 48.0)
      {
        break;
      }

      v320 = 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3);
      v291 = a1;
      if (v320 >= v531)
      {
        goto LABEL_428;
      }
    }

    v291 = a1;
  }

LABEL_428:
  v8 = a6;
  v328 = v531;
  if (v300 != v299)
  {
    v329 = 0;
    v330 = __p;
    do
    {
      if (v328 == v330[v329])
      {
        v331 = v556;
        if (v557 == v556)
        {
          v333 = 0;
        }

        else
        {
          v332 = 0;
          v333 = 0;
          if (0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3) <= 1)
          {
            v334 = 1;
          }

          else
          {
            v334 = 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3);
          }

          v335 = 3.4028e38;
          v336 = v556;
          do
          {
            v337 = v299 + 40 * v329;
            if (v332 >= v537)
            {
              *&v297 = sub_240B8ACD4(v337, v336, v297, v298);
            }

            else
            {
              *&v297 = sub_240B8AE40(v337, v336);
            }

            if (*&v297 < v335)
            {
              v333 = v332;
              v335 = *&v297;
            }

            ++v332;
            v336 += 5;
          }

          while (v334 != v332);
        }

        v328 = v531;
        v8 = a6;
        if (v333 >= v537)
        {
          sub_240B8AF90(v331 + 40 * v333, (v299 + 40 * v329));
          *&v297 = sub_240B8ABB4(&v556[40 * v333], v338);
          v299 = v546;
          v300 = v547;
        }

        v330[v329] = v333;
        v291 = a1;
      }

      ++v329;
    }

    while (v329 < 0xCCCCCCCCCCCCCCCDLL * ((v300 - v299) >> 3));
  }

  if (__src[0])
  {
    __src[1] = __src[0];
    operator delete(__src[0]);
  }

  v339 = v556;
  v340 = v557;
  if (v512 == v510 && *v291 == 2)
  {
    if (v556 == v557)
    {
      v343 = v556;
    }

    else
    {
      do
      {
        v341 = *v339;
        v342 = (*(v339 + 8) - *v339) >> 2;
        LODWORD(__src[0]) = 0;
        sub_240B7D228(v341, v342, __src, 0);
        *(v339 + 32) = __src[0];
        v339 += 40;
      }

      while (v339 != v340);
      v339 = v556;
      v343 = v557;
    }

    LODWORD(__src[0]) = 1;
    sub_240B7D868(v552, 0xCCCCCCCCCCCCCCCDLL * ((v343 - v339) >> 3), __src);
    sub_240B22DA4(&v561, 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3));
    if (v561 != v562)
    {
      v344 = 0;
      v345 = (v562 - v561 - 4) >> 2;
      v346 = vdupq_n_s64(v345);
      v347 = (v345 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v348 = v561 + 8;
      do
      {
        v349 = vdupq_n_s64(v344);
        v350 = vmovn_s64(vcgeq_u64(v346, vorrq_s8(v349, xmmword_240C111D0)));
        if (vuzp1_s16(v350, *v346.i8).u8[0])
        {
          *(v348 - 2) = v344;
        }

        if (vuzp1_s16(v350, *&v346).i8[2])
        {
          *(v348 - 1) = v344 + 1;
        }

        if (vuzp1_s16(*&v346, vmovn_s64(vcgeq_u64(v346, vorrq_s8(v349, xmmword_240C111C0)))).i32[1])
        {
          *v348 = v344 + 2;
          v348[1] = v344 + 3;
        }

        v344 += 4;
        v348 += 4;
      }

      while (v347 != v344);
    }

    v351 = v556;
    v352 = v557;
    if (v557 == v556)
    {
      v355 = v557;
    }

    else
    {
      v353 = 0;
      v354 = 0;
      v355 = v557;
      do
      {
        v356 = v353;
        v353 = ++v354;
        v357 = 0xCCCCCCCCCCCCCCCDLL * ((v355 - v351) >> 3);
        if (v357 > v354)
        {
          v525 = v354;
          v358 = v354;
          v519 = v354;
          do
          {
            LODWORD(v567[0]) = 0;
            *__src = 0u;
            v566 = 0u;
            sub_240B8AF90(__src, (v351 + 40 * v356));
            sub_240B8AF90(__src, &v556[40 * v358]);
            v359 = __src[0];
            LODWORD(v564) = 0;
            sub_240B7D228(__src[0], (__src[1] - __src[0]) >> 2, &v564, 0);
            if (((*&v564 - *&v556[40 * v356 + 32]) - *&v556[40 * v358 + 32]) < 0.0)
            {
              operator new();
            }

            if (v359)
            {
              __src[1] = v359;
              operator delete(v359);
            }

            v351 = v556;
            v355 = v557;
            v357 = 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3);
            v358 = ++v354;
          }

          while (v357 > v354);
          v353 = v525;
          v354 = v519;
        }
      }

      while (v357 > v353);
      v352 = v351;
      v291 = a1;
    }

    LODWORD(v564) = -1;
    sub_240B7D868(__src, 0xCCCCCCCCCCCCCCCDLL * ((v355 - v352) >> 3), &v564);
    v361 = v556;
    v360 = v557;
    if (v557 == v556)
    {
      v364 = 0;
    }

    else
    {
      v362 = 0;
      v363 = 0;
      v364 = 0;
      do
      {
        if (*(v552[0] + v363))
        {
          v365 = v361 + 40 * v364;
          if (v363 != v364)
          {
            sub_240B343B0((v361 + 40 * v364), *(v361 + v362), *(v361 + v362 + 8), (*(v361 + v362 + 8) - *(v361 + v362)) >> 2);
          }

          v366 = *(v361 + v362 + 24);
          *(v365 + 32) = *(v361 + v362 + 32);
          *(v365 + 24) = v366;
          *(__src[0] + v363) = v364++;
          v361 = v556;
          v360 = v557;
        }

        ++v363;
        v362 += 40;
      }

      while (v363 < 0xCCCCCCCCCCCCCCCDLL * ((v360 - v361) >> 3));
    }

    sub_240B8B174(&v556, v364);
    v367 = __p;
    v368 = v559;
    v369 = __src[0];
    if (__p == v559)
    {
      if (!__src[0])
      {
LABEL_493:
        if (v561)
        {
          v562 = v561;
          operator delete(v561);
        }

        v8 = a6;
        if (v552[0])
        {
          v552[1] = v552[0];
          operator delete(v552[0]);
        }

        v339 = v556;
        v340 = v557;
        goto LABEL_498;
      }
    }

    else
    {
      v370 = v561;
      do
      {
        *v367 = v369[v370[*v367]];
        ++v367;
      }

      while (v367 != v368);
    }

    __src[1] = v369;
    operator delete(v369);
    goto LABEL_493;
  }

LABEL_498:
  v552[0] = 0;
  v552[1] = 0;
  *&v553 = 0;
  v561 = v552;
  LOBYTE(v562) = 0;
  if (v340 != v339)
  {
    v371 = 0xCCCCCCCCCCCCCCCDLL * ((v340 - v339) >> 3);
    if (v371 <= 0x666666666666666)
    {
      sub_240B837BC(v371);
    }

    sub_240B228BC();
  }

  __src[1] = 0;
  *&v566 = 0;
  __src[0] = &__src[1];
  if (v512 != v510)
  {
    v372 = 0;
    do
    {
      LODWORD(v564) = v372;
      v561 = &v564;
      *(sub_240B8B31C(__src, v372, &v561) + 8) = v372;
      ++v372;
    }

    while (v537 != v372);
  }

  v373 = __p;
  v374 = v559;
  if (__p != v559)
  {
    v375 = __p;
    do
    {
      v376 = *v375;
      v377 = __src[1];
      if (!__src[1])
      {
        goto LABEL_515;
      }

      v378 = &__src[1];
      do
      {
        v379 = v377;
        v380 = v378;
        v381 = *(v377 + 7);
        if (v381 >= v376)
        {
          v378 = v377;
        }

        v377 = v377[v381 < v376];
      }

      while (v377);
      if (v378 == &__src[1])
      {
        goto LABEL_515;
      }

      if (v381 < v376)
      {
        v379 = v380;
      }

      if (v376 < *(v379 + 7))
      {
LABEL_515:
        LODWORD(v564) = *v375;
        v561 = &v564;
        *(sub_240B8B31C(__src, v376, &v561) + 8) = v537;
        v382 = (v552[0] + 40 * v376);
        v383 = &v556[40 * v537];
        if (v383 != v382)
        {
          sub_240B343B0(&v556[40 * v537], *v382, v382[1], (v382[1] - *v382) >> 2);
        }

        v384 = v382[3];
        *(v383 + 8) = *(v382 + 8);
        v383[3] = v384;
        LODWORD(v537) = v537 + 1;
        v8 = a6;
      }

      ++v375;
    }

    while (v375 != v374);
  }

  sub_240B8B174(&v556, v537);
  v290 = a4;
  v292 = v517;
  if (v373 != v374)
  {
    v385 = v373;
    do
    {
      LODWORD(v564) = *v385;
      v561 = &v564;
      *v385++ = *(sub_240B8B31C(__src, v564, &v561) + 8);
    }

    while (v385 != v374);
  }

  sub_240B8B3FC(__src[1]);
  __src[0] = v552;
  sub_240B8372C(__src);
  if (v547 == v546)
  {
    if (!v373)
    {
      goto LABEL_528;
    }
  }

  else
  {
    v386 = 0;
    do
    {
      *(*a5 + v508 + v386) = v373[v386];
      ++v386;
    }

    while (v386 < 0xCCCCCCCCCCCCCCCDLL * ((v547 - v546) >> 3));
  }

  operator delete(v373);
LABEL_528:
  if (v8)
  {
    sub_240B8D74C(a5, 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3), v8, a7, a8);
  }

LABEL_530:
  v387 = v556;
  v388 = 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3);
  if (a8 && v292 < v388)
  {
    v389 = a8 + 40 * a7;
    v390 = 40 * v292;
    v391 = v292;
    do
    {
      v392 = v387 + v390;
      sub_240B8ABB4(v387 + v390, *&v304);
      v304 = *(v389 + 32) + *(v392 + 32);
      *(v389 + 32) = v304;
      ++v391;
      v387 = v556;
      v388 = 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3);
      v390 += 40;
    }

    while (v391 < v388);
  }

  if (*(v290 + 64))
  {
    v393 = 8;
  }

  else
  {
    v393 = 7;
  }

  sub_240B2D33C(v290 + 4, v388);
  v394 = *(v291 + 4);
  if (v394)
  {
    if (v394 == 3)
    {
      v290[5] = v290[4];
      *__src = xmmword_240C11620;
      sub_240B833B0(v290 + 4, 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3), __src);
    }

    else if (v394 == 1)
    {
      v290[5] = v290[4];
      *__src = xmmword_240C11510;
      sub_240B833B0(v290 + 4, 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3), __src);
    }

    else if ((*(v291 + 50) & 1) == 0)
    {
      v552[0] = 0;
      v552[1] = 0;
      *&v553 = 0;
      if (v394 == 2)
      {
        *__src = xmmword_240C11520;
        v566 = xmmword_240C11630;
        *v567 = xmmword_240C11510;
        v568 = xmmword_240C11620;
        sub_240B834E0(v552, __src, v569, 4uLL);
        v395 = a3;
      }

      else
      {
        v395 = a3;
        if (v394 == 4)
        {
          *__src = xmmword_240C11520;
          v566 = xmmword_240C11640;
          *v567 = xmmword_240C11650;
          v568 = xmmword_240C11660;
          v569[0] = xmmword_240C11630;
          v569[1] = xmmword_240C11670;
          v570 = xmmword_240C11680;
          v571 = xmmword_240C11690;
          v572 = xmmword_240C116A0;
          v573 = xmmword_240C116B0;
          v574 = xmmword_240C116C0;
          v575 = xmmword_240C116D0;
          v576 = xmmword_240C116E0;
          v577 = xmmword_240C116F0;
          v578[0] = xmmword_240C11700;
          v578[1] = xmmword_240C11710;
          v578[2] = xmmword_240C11720;
          v579 = xmmword_240C11730;
          v580 = xmmword_240C11740;
          v581 = xmmword_240C11750;
          v582 = xmmword_240C11510;
          v583 = xmmword_240C11620;
          v584 = xmmword_240C11760;
          v585 = xmmword_240C11770;
          v586 = xmmword_240C11780;
          v587 = xmmword_240C11790;
          v588 = xmmword_240C117A0;
          v589 = xmmword_240C117B0;
          sub_240B834E0(v552, __src, &v590, 0x1CuLL);
        }
      }

      LODWORD(v561) = 2139095039;
      sub_240B83618(__src, 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3), &v561);
      sub_240B22DA4(&v561, 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3));
      sub_240B7D1B4(&__p, 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3));
      if (*(v290 + 24))
      {
        v396 = 4096;
      }

      else
      {
        v396 = 256;
      }

      v520 = v552[1];
      v513 = v552[0];
      if (v552[0] == v552[1])
      {
        v399 = v556;
        v400 = v557;
      }

      else
      {
        v397 = v552[0];
        do
        {
          v398 = *v397;
          v538 = *v397;
          if (v559 - __p >= 1)
          {
            memset(__p, 1, v559 - __p);
            v398 = v538;
          }

          if (v562 - v561 >= 1)
          {
            bzero(v561, v562 - v561);
            v398 = v538;
          }

          v399 = v556;
          v400 = v557;
          for (m = v556; m != v400; m += 40)
          {
            *(m + 1) = *m;
            *(m + 3) = 0;
          }

          v402 = *v395;
          v403 = DWORD2(v398);
          v532 = v395[1];
          if (*v395 != v532)
          {
            v526 = v397;
            v404 = BYTE12(v398);
            v405 = HIDWORD(v398) + DWORD2(v398);
            v406 = ~(-1 << SBYTE12(v398));
            v407 = DWORD1(v398);
            v408 = v398;
            do
            {
              v410 = *v402;
              v409 = v402[1];
              while (v410 != v409)
              {
                v411 = *v410;
                if ((v411 & 1) == 0)
                {
                  v412 = *(*a5 + (v411 >> 1));
                  v413 = v410[1];
                  v414 = __clz(v413) ^ 0x1F;
                  v415 = ((v414 - v408) << v405) + v407 + (((-1 << v414) + v413) & v406) + (((-1 << v414) + v413) >> (v414 - v403) << v404);
                  v416 = v414 - v405;
                  if (v407 <= v413)
                  {
                    v417 = v415;
                  }

                  else
                  {
                    v417 = v413;
                  }

                  if (v407 <= v413)
                  {
                    v418 = v416;
                  }

                  else
                  {
                    v418 = 0;
                  }

                  if (v396 <= v417 || *v541 == 1 && v417 >= *(a4 + 17))
                  {
                    *(__p + v412) = 0;
                  }

                  else
                  {
                    *(v561 + v412) += v418;
                    sub_240B82EB4(&v556[40 * v412], v417);
                    *&v398 = v538;
                  }
                }

                v410 += 2;
              }

              v402 += 3;
            }

            while (v402 != v532);
            v399 = v556;
            v400 = v557;
            v290 = a4;
            v397 = v526;
          }

          if (v400 == v399)
          {
            v395 = a3;
          }

          else
          {
            v419 = 0;
            v420 = 0;
            v421 = v398;
            v422 = vdup_lane_s32(*&v398, 0);
            v422.i32[0] = v421 - v403;
            v423 = vadd_s32(v422, 0x100000001);
            v424 = vtst_s32(v423, v422);
            v425 = ((__clz(v423.u32[1]) ^ 0x1F) + (v424.i8[4] & 1));
            v426 = ((__clz(v423.u32[0]) ^ 0x1F) + (v424.i8[0] & 1));
            v395 = a3;
            do
            {
              if (*(__p + v420))
              {
                v427 = &v399[v419];
                v428 = *v427;
                v429 = v427[1] - *v427;
                LODWORD(v564) = 0;
                sub_240B7D228(v428, v429, &v564, 0);
                v430 = ((*&v564 + *(v561 + v420)) + v425) + v426;
                v431 = __src[0];
                if (v430 < *(__src[0] + v420))
                {
                  *(v290[4] + 16 * v420) = v538;
                  v431[v420] = v430;
                }
              }

              ++v420;
              v399 = v556;
              v400 = v557;
              v419 += 40;
            }

            while (v420 < 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3));
          }

          ++v397;
        }

        while (v397 != v520);
      }

      while (v399 != v400)
      {
        *(v399 + 1) = *v399;
        *(v399 + 3) = 0;
        v399 += 40;
      }

      v432 = *v395;
      v433 = v395[1];
      if (*v395 == v433)
      {
        v434 = 4;
      }

      else
      {
        v434 = 4;
        do
        {
          v435 = *v432;
          v436 = v432[1];
          while (v435 != v436)
          {
            v437 = *v435;
            v438 = *(*a5 + (v437 >> 1));
            v439 = v290 + 19;
            if ((v437 & 1) == 0)
            {
              v439 = (a4[4] + 16 * v438);
            }

            v440 = v435[1];
            v441 = v439[1];
            if (v441 <= v440)
            {
              v442 = __clz(v440) ^ 0x1F;
              v440 = ((v442 - *v439) << (v439[3] + v439[2])) + v441 + (((-1 << v442) + v440) & ~(-1 << v439[3])) + (((-1 << v442) + v440) >> (v442 - v439[2]) << v439[3]);
            }

            if (v437)
            {
              v443 = *(a4 + 17);
            }

            else
            {
              v443 = 0;
            }

            v444 = v443 + v440;
            sub_240B82EB4(&v556[40 * v438], v443 + v440);
            while (v444 >> v434)
            {
              ++v434;
            }

            v435 += 2;
          }

          v432 += 3;
        }

        while (v432 != v433);
      }

      if (__p)
      {
        v559 = __p;
        operator delete(__p);
      }

      v290 = a4;
      v8 = a6;
      v291 = a1;
      v292 = v517;
      if (v561)
      {
        v562 = v561;
        operator delete(v561);
      }

      if (__src[0])
      {
        __src[1] = __src[0];
        operator delete(__src[0]);
      }

      if (v513)
      {
        operator delete(v513);
      }

      if (v434 <= 5)
      {
        v393 = 5;
      }

      else
      {
        v393 = v434;
      }
    }
  }

  if (*(v291 + 50))
  {
    v393 = 8;
  }

  v552[0] = 0;
  v445 = *(v290 + 24);
  if (v8)
  {
    *(v8[3] + (*v8 >> 3)) = (v445 << (*v8 & 7)) | *(v8[3] + (*v8 >> 3));
    v446 = *v8 + 1;
    *v8 = v446;
    if (v290[3])
    {
      v447 = 1;
      v393 = 15;
    }

    else
    {
      *(v8[3] + (v446 >> 3)) = ((v393 - 5) << (v446 & 7)) | *(v8[3] + (v446 >> 3));
      *v8 += 2;
      v447 = 3;
    }

    sub_240B7C4F0(v290[4], v290[5], v8, v393);
    v453 = 0;
    if ((v290[3] & 1) == 0)
    {
      goto LABEL_648;
    }

    goto LABEL_633;
  }

  if (*(v290 + 24))
  {
    v448 = 15;
  }

  else
  {
    v448 = v393;
  }

  v449 = v290[4];
  v450 = v290[5];
  if (v449 != v450)
  {
    do
    {
      v451 = *v449;
      v452 = v449[1];
      v449 += 2;
      sub_240B82DC8(v451, v452, v552, v448);
    }

    while (v449 != v450);
    v453 = v552[0];
    if (v445)
    {
      goto LABEL_630;
    }

LABEL_647:
    v447 = 3;
    goto LABEL_648;
  }

  v453 = 0;
  if (!*(v290 + 24))
  {
    goto LABEL_647;
  }

LABEL_630:
  v447 = 1;
  LOBYTE(v393) = 15;
LABEL_633:
  v454 = v556;
  v455 = v557;
  while (v454 != v455)
  {
    v456 = ((*(v454 + 1) - *v454) >> 2) + 1;
    while (1)
    {
      v457 = v456 - 2;
      if (v456 - 2 < 0)
      {
        break;
      }

      LODWORD(v456) = v456 - 1;
      if (*(*v454 + 4 * (v457 & 0x7FFFFFFF)) >= 1)
      {
        v458 = v456 - 1;
        if (!v8)
        {
          goto LABEL_639;
        }

LABEL_643:
        sub_240B7DF20(v458, v8);
        goto LABEL_644;
      }
    }

    v458 = 0;
    if (v8)
    {
      goto LABEL_643;
    }

LABEL_639:
    v459 = &v453[-__clz(v458) + 68];
    if (v458)
    {
      v453 = v459;
    }

    else
    {
      ++v453;
    }

LABEL_644:
    v454 += 40;
  }

  v552[0] = v453;
LABEL_648:
  v460 = &v453[v447];
  v461 = v556;
  if (v292 < 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3))
  {
    v542 = v290 + 13;
    v462 = v393;
    do
    {
      v464 = (v461 + 40 * v292);
      v463 = *v464;
      v465 = ((v464[1] - *v464) >> 2) + 1;
      while (1)
      {
        v466 = v465 - 2;
        if (v465 - 2 < 0)
        {
          break;
        }

        LODWORD(v465) = v465 - 1;
        if (*(v463 + 4 * (v466 & 0x7FFFFFFF)) >= 1)
        {
          v467 = v465;
          goto LABEL_655;
        }
      }

      v467 = 1;
LABEL_655:
      v468 = v290[1];
      v469 = v290[2];
      if (v468 >= v469)
      {
        v472 = 0xAAAAAAAAAAAAAAABLL * ((v468 - *v290) >> 3);
        v473 = v472 + 1;
        if (v472 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_240B228BC();
        }

        v474 = 0xAAAAAAAAAAAAAAABLL * ((v469 - *v290) >> 3);
        if (2 * v474 > v473)
        {
          v473 = 2 * v474;
        }

        if (v474 >= 0x555555555555555)
        {
          v475 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v475 = v473;
        }

        v567[0] = v290;
        if (v475)
        {
          sub_240B82F14(v475);
        }

        v470 = v292;
        v476 = 24 * v472;
        *v476 = 0;
        *(v476 + 8) = 0;
        *(v476 + 16) = 0;
        v471 = 24 * v472 + 24;
        v290 = a4;
        v477 = a4[1] - *a4;
        v478 = 24 * v472 - v477;
        memcpy((v476 - v477), *a4, v477);
        v479 = *a4;
        *a4 = v478;
        a4[1] = v471;
        v480 = a4[2];
        a4[2] = 0;
        *&v566 = v479;
        *(&v566 + 1) = v480;
        __src[0] = v479;
        __src[1] = v479;
        sub_240B82F6C(__src);
        v8 = a6;
      }

      else
      {
        v470 = v292;
        *v468 = 0;
        v468[1] = 0;
        v471 = (v468 + 3);
        v468[2] = 0;
      }

      v290[1] = v471;
      sub_240B82FCC((v471 - 24), v467);
      v481 = v8;
      if (*(a1 + 50) == 1)
      {
        v482 = v290[14];
        v483 = v290[15];
        if (v482 >= v483)
        {
          v485 = 0xCCCCCCCCCCCCCCCDLL * ((v482 - *v542) >> 3);
          v486 = v485 + 1;
          if (v485 + 1 > 0x666666666666666)
          {
            sub_240B228BC();
          }

          v487 = 0xCCCCCCCCCCCCCCCDLL * ((v483 - *v542) >> 3);
          if (2 * v487 > v486)
          {
            v486 = 2 * v487;
          }

          if (v487 >= 0x333333333333333)
          {
            v488 = 0x666666666666666;
          }

          else
          {
            v488 = v486;
          }

          v567[0] = v542;
          if (v488)
          {
            sub_240B839AC(v488);
          }

          v489 = 40 * v485;
          __src[0] = 0;
          __src[1] = v489;
          *(&v566 + 1) = 0;
          *(v489 + 32) = 0;
          *v489 = 0u;
          *(v489 + 16) = 0u;
          *&v566 = 40 * v485 + 40;
          v490 = v290[13];
          v491 = v290[14];
          v492 = 40 * v485 + v490 - v491;
          sub_240B83A04(v490, v491, v489 + v490 - v491);
          v493 = v290[13];
          v290[13] = v492;
          v494 = v290[15];
          v545 = v566;
          *(v290 + 7) = v566;
          *&v566 = v493;
          *(&v566 + 1) = v494;
          __src[0] = v493;
          __src[1] = v493;
          sub_240B599D8(__src);
          v484 = v545;
        }

        else
        {
          *(v482 + 32) = 0;
          v484 = v482 + 40;
          *v482 = 0u;
          *(v482 + 16) = 0u;
        }

        v290[14] = v484;
        v481 = (v484 - 40);
      }

      sub_240B53650(__src, v481, 24 * v467 + 256);
      v495 = sub_240B7C61C(*(a1 + 12), *&v556[40 * v470], v467, v462, *(v290 + 24), *(v290[1] - 24), v481);
      if (v481)
      {
        *&v566 = *v481 - __src[0];
      }

      sub_240B536C8(__src, v481, a7, a8);
      if (*(a1 + 50) == 1)
      {
        sub_240B537D8(v8, v481);
      }

      v460 += v495;
      v292 = v470 + 1;
      v461 = v556;
    }

    while (v470 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((v557 - v556) >> 3));
  }

  __src[0] = &v556;
  sub_240B8372C(__src);
  if (v8)
  {
    v549 = *v8 - v548[0];
  }

  sub_240B536C8(v548, v8, a7, a8);
  if (a8)
  {
    *(a8 + 40 * a7) -= 0x5555555555555555 * ((v290[1] - *v290) >> 3);
  }

  __src[0] = &v546;
  sub_240B8372C(__src);
  __src[0] = &v550;
  sub_240B31E8C(__src);
  return &v515[v460];
}

void sub_240B81614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char *a56, uint64_t a57, uint64_t a58, char **a59)
{
  if (__p)
  {
    operator delete(__p);
  }

  a59 = &a56;
  sub_240B8372C(&a59);
  a56 = &a37;
  sub_240B8372C(&a56);
  a40 = &a45;
  sub_240B31E8C(&a40);
  _Unwind_Resume(a1);
}

uint64_t sub_240B81910(uint64_t a1, unint64_t a2, int a3, int ***a4, _DWORD *a5)
{
  *(a1 + 8) = 0u;
  v8 = a1 + 8;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  v55 = v8;
  sub_240B82E28(v58, a2);
  v9 = *a4;
  v57 = a4[1];
  if (*a4 != v57)
  {
    do
    {
      v10 = *v9;
      v11 = v9[1];
      while (v10 != v11)
      {
        v12 = *v10;
        v13 = v10[1];
        v14 = a5[6];
        if ((*v10 & 1) == 0)
        {
          v14 = 16;
        }

        if (v14 <= v13)
        {
          v15 = __clz(v13) ^ 0x1F;
          v16 = (-1 << v15) + v13;
          v17 = a5[5];
          if ((v12 & 1) == 0)
          {
            v17 = 4;
          }

          v18 = a5[7];
          if ((v12 & 1) == 0)
          {
            LOBYTE(v18) = 2;
          }

          v13 = ((v15 - v17) << (((v12 << 31 >> 31) & a5[8]) + v18)) + v14 + (v16 & ~(-1 << ((v12 << 31 >> 31) & a5[8]))) + (v16 >> (v15 - v18) << ((v12 << 31 >> 31) & a5[8]));
        }

        sub_240B82EB4(v58[0] + 40 * (*v10 >> 1), (((*v10 << 31 >> 31) & a5[3]) + v13));
        v10 += 2;
      }

      v9 += 3;
    }

    while (v9 != v57);
  }

  *a1 = 0;
  if (a2)
  {
    v19 = 0;
    v20 = (v58[0] + 8);
    v21 = a2;
    v22 = v55;
    do
    {
      if (v19 <= (*v20 - *(v20 - 1)) >> 2)
      {
        v19 = (*v20 - *(v20 - 1)) >> 2;
      }

      v20 += 5;
      --v21;
    }

    while (v21);
    *a1 = v19;
  }

  else
  {
    v19 = 0;
    v22 = v55;
  }

  sub_240B245C8(v22, v19 * a2);
  sub_240B245C8(v22 + 3, a2);
  if (a2)
  {
    v23 = 0;
    v24 = 0;
    v25 = v58[0];
    v26 = vdup_n_s32(0xC0D55555);
    v27 = vdup_n_s32(0x3F3E11C7u);
    v28 = vdup_n_s32(0x3FB6E02Bu);
    v29 = vdup_n_s32(0x3E32458Cu);
    v30 = vdup_n_s32(0x3F813CEDu);
    v31 = vdup_n_s32(0xB5F85AB0);
    v32 = vdup_n_s32(0x3F7D8625u);
    v33 = v22[3];
    __asm { FMOV            V20.2S, #-1.0 }

    do
    {
      v39 = (v25 + 40 * v24);
      v40 = v39[3];
      v41 = 1.0 / (v40 + 0.00000001);
      v42 = *v39;
      v43 = 0.0;
      v44 = *(v25 + 40 * v24 + 8) - v42;
      if (v44)
      {
        v45 = v44 >> 2;
        if (v45 <= 1)
        {
          v45 = 1;
        }

        v46 = (*(a1 + 8) + *a1 * v23);
        do
        {
          v48 = *v42++;
          v47 = v48;
          if (v48)
          {
            v49 = 0;
            if (v40 != v47)
            {
              v49.f32[0] = v41 * v47;
              v50 = vdup_lane_s32(v49, 0);
              v51 = vadd_s32(v50, v26);
              v49 = vadd_f32(vsub_s32(v50, vand_s8(v51, 0x7F0000007FLL)), _D20);
              v49.f32[0] = -vadd_f32(vdiv_f32(vmla_f32(v31, v49, vmla_f32(v28, v27, v49)), vmla_f32(v32, v49, vmla_f32(v30, v29, v49))), vcvt_f32_s32(vshr_n_s32(v51, 0x17uLL))).f32[0];
              v52 = ceilf(v49.f32[0]);
              if (a3)
              {
                v49.f32[0] = v52;
              }
            }
          }

          else
          {
            v49.i32[0] = 12.0;
          }

          *v46++ = v49.i32[0];
          v43 = v43 + (v49.f32[0] * v47);
          --v45;
        }

        while (v45);
      }

      *&v33[4 * v24++] = fmaxf(6.0 - (v43 * v41), 0.0);
      v23 += 4;
    }

    while (v24 != a2);
  }

  v59 = v58;
  sub_240B8372C(&v59);
  return a1;
}

void sub_240B81C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = *(a10 + 24);
  if (v17)
  {
    *(a11 + 40) = v17;
    operator delete(v17);
  }

  v18 = *a10;
  if (*a10)
  {
    *(a11 + 16) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B81C8C(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 24 * a2);
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 3);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 2) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * (&v7[-v3] >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    bzero(a1[1], 24 * ((24 * v6 - 24) / 0x18) + 24);
    a1[1] = &v4[24 * ((24 * v6 - 24) / 0x18) + 24];
  }
}

void *sub_240B81E64(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_240B81EA8(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4, char **a5)
{
  v6 = a4;
  sub_240B81910(&v85, a2, *(a1 + 48), a3, a4);
  v75 = a5;
  sub_240B81C8C(a5, 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3));
  memset(v84, 0, sizeof(v84));
  v8 = *a3;
  if (*(a3 + 8) != *a3)
  {
    v77 = 0;
    v78 = v6;
    v9 = 0;
    v10 = 0.0;
    v73 = a3;
    while (1)
    {
      v11 = *(a1 + 16);
      if (v9 >= (*(a1 + 24) - v11) >> 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = *(v11 + 8 * v9);
      }

      v76 = v9;
      v13 = 3 * v9;
      v14 = &v8[3 * v9];
      v15 = *v75;
      v16 = v14[1] - *v14;
      sub_240B245C8(v84, (v16 >> 3) + 1);
      v17 = v14[1] - *v14;
      v18 = v17 >> 3;
      if (v17)
      {
        v19 = v85;
        v20 = v86;
        if (v18 <= 1)
        {
          v21 = 1;
        }

        else
        {
          v21 = v18;
        }

        v22 = (v84[0] + 4);
        v23 = (*v14 + 4);
        do
        {
          v24 = *v23;
          v25 = __clz(*v23);
          v26 = 29 - v25;
          v27 = (((-1 << (v25 ^ 0x1F)) + *v23) >> (29 - v25)) - 4 * v25 + 124;
          v28 = v26;
          if (*v23 < 0x10)
          {
            v28 = 0.0;
          }

          else
          {
            v24 = v27;
          }

          *v22 = (v28 + v20[v19 * (*(v23 - 1) >> 1) + v24]) + *(v22 - 1);
          ++v22;
          v23 += 2;
          --v21;
        }

        while (v21);
      }

      v29 = &v15[8 * v13];
      sub_240B49544(v29, v18);
      v77 += v16 >> 3;
      v30 = (v14[1] - *v14) >> 3;
      v31 = v6[4];
      v32 = 0x100000;
      if (v30 < 0x100000)
      {
        v32 = (v14[1] - *v14) >> 3;
      }

      v33 = 1;
      do
      {
        v34 = v33;
        v33 *= 2;
      }

      while (v34 < v32);
      sub_240B824A4(v83, *v14, v30, v34, v6[4], (v14[1] - *v14) >> 3, v12);
      v81 = 0;
      v82 = 0;
      v35 = *v14;
      if (v14[1] != *v14)
      {
        break;
      }

LABEL_64:
      sub_240B82D2C(v83);
      v9 = v76 + 1;
      v8 = *v73;
      if (v76 + 1 >= 0xAAAAAAAAAAAAAAABLL * (v73[1] - *v73))
      {
        v71 = v10;
        v72 = v77;
        goto LABEL_67;
      }
    }

    v36 = 0;
    v37 = v84[0];
    while (1)
    {
      sub_240B6D7E4(v29, (v35 + 8 * v36));
      sub_240B82B3C(v83, v36);
      sub_240B83B18(v83, v36, &v81, &v82);
      v38 = v82;
      if (v82 >= v31)
      {
        break;
      }

LABEL_63:
      ++v36;
      v35 = *v14;
      if (v36 >= (v14[1] - *v14) >> 3)
      {
        goto LABEL_64;
      }
    }

    if (v82 > 0xFF || v36 + 1 >= (v14[1] - *v14) >> 3)
    {
      v40 = 0;
    }

    else
    {
      sub_240B82B3C(v83, v36 + 1);
      v79 = 0;
      v80 = 0;
      sub_240B83B18(v83, v36 + 1, &v79, &v80);
      v39 = v80;
      v40 = v80 <= v38;
      if (v80 > v38)
      {
        v81 = v79;
        v82 = v80;
        sub_240B6D7E4(v29, (*v14 + 8 * (v36 + 1)));
        v38 = v39;
        ++v36;
      }
    }

    v41 = v38 - v6[4];
    v42 = 0.0;
    v43 = 0.0;
    if (v41 >= 2)
    {
      v44 = __clz(v41);
      v41 = (((-1 << (v44 ^ 0x1F)) + v41) >> (v44 ^ 0x1F)) - v44 + 32;
      if (v41 >= 0x10)
      {
        v41 = 16;
      }

      v43 = (v44 ^ 0x1F);
    }

    v45 = v81;
    v46 = v81;
    if (v81 >= 0x80)
    {
      v47 = __clz(v81);
      v48 = v47 ^ 0x1F;
      v46 = (((-1 << (v47 ^ 0x1F)) + v81) >> (v47 ^ 0x1F)) - v47 + 152;
      if (v46 >= 0x8A)
      {
        v46 = 138;
      }

      v42 = v48;
    }

    v49 = *&v37[4 * v36 + 4 * v38] - *&v37[4 * v36];
    v50 = (v43 + flt_240C8356C[v41]) + (v42 + flt_240C835B0[v46]);
    v51 = v29[1];
    v52 = *(v51 - 2);
    v53 = v50 + *&v88[(2 * v52) & 0x1FFFFFFFCLL];
    if (v53 <= v49)
    {
      *(v51 - 2) = v52 | 1;
      *(v51 - 1) = v38 - v31;
      v58 = v29[1];
      v59 = v29[2];
      if (v58 >= v59)
      {
        v61 = (v58 - *v29) >> 3;
        v62 = v61 + 1;
        if ((v61 + 1) >> 61)
        {
          sub_240B228BC();
        }

        v63 = v59 - *v29;
        if (v63 >> 2 > v62)
        {
          v62 = v63 >> 2;
        }

        if (v63 >= 0x7FFFFFFFFFFFFFF8)
        {
          v64 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v64 = v62;
        }

        if (v64)
        {
          sub_240B299F4(v64);
        }

        v65 = (8 * v61);
        *v65 = 2 * v78[10];
        v65[1] = v45;
        v60 = 8 * v61 + 8;
        v66 = v29[1] - *v29;
        v67 = v65 - v66;
        memcpy(v65 - v66, *v29, v66);
        v68 = *v29;
        *v29 = v67;
        v29[1] = v60;
        v29[2] = 0;
        if (v68)
        {
          operator delete(v68);
        }

        v6 = v78;
      }

      else
      {
        *v58 = 2 * v6[10];
        *(v58 + 1) = v45;
        v60 = (v58 + 8);
      }

      v29[1] = v60;
      v10 = v10 + (v49 - v53);
      if (v40)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v38 >= 2)
      {
        v54 = v38 - 1;
        v55 = 8 * v36 + 8;
        do
        {
          sub_240B6D7E4(v29, (*v14 + v55));
          v55 += 8;
          --v54;
        }

        while (v54);
      }

      if (v40)
      {
LABEL_41:
        v56 = v38 - 2;
        if (v38 != 2)
        {
          v57 = v36 + 2;
          do
          {
            sub_240B82B3C(v83, v57++);
            --v56;
          }

          while (v56);
        }

LABEL_62:
        v36 = v38 + v36 - 1;
        goto LABEL_63;
      }
    }

    v69 = v38 - 1;
    if (v38 != 1)
    {
      v70 = v36 + 1;
      do
      {
        sub_240B82B3C(v83, v70++);
        --v69;
      }

      while (v69);
    }

    goto LABEL_62;
  }

  v72 = 0.0;
  v71 = 0.0;
LABEL_67:
  if (v72 * 0.2 + 16.0 < v71)
  {
    *(v6 + 8) = 1;
  }

  if (v84[0])
  {
    operator delete(v84[0]);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }
}

uint64_t sub_240B824A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  *a1 = a3;
  *(a1 + 8) = 0;
  v11 = (a1 + 8);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFF00008000;
  *(a1 + 40) = 5;
  *(a1 + 48) = 0u;
  v12 = (a1 + 48);
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 96) = 0u;
  v13 = (a1 + 96);
  *(a1 + 144) = 0u;
  v40 = (a1 + 144);
  *(a1 + 192) = 0;
  *(a1 + 200) = a4;
  *(a1 + 208) = a4 - 1;
  *(a1 + 216) = a5;
  *(a1 + 224) = a6;
  *(a1 + 232) = 0u;
  v14 = (a1 + 232);
  v41 = (a1 + 72);
  v38 = (a1 + 120);
  v39 = (a1 + 168);
  *(a1 + 248) = 0u;
  *(a1 + 264) = 1065353216;
  *(a1 + 272) = 0;
  *(a1 + 280) = 256;
  sub_240B245C8((a1 + 8), a3);
  if (v8)
  {
    v15 = *v11;
    v16 = (a2 + 4);
    do
    {
      v17 = *v16;
      v16 += 2;
      *v15++ = v17;
      --v8;
    }

    while (v8);
  }

  v18 = *(a1 + 32);
  v44 = -1;
  sub_240B2B4A8(v12, v18, &v44);
  v19 = *(a1 + 200);
  v43 = -1;
  sub_240B2B4A8(v13, v19, &v43);
  sub_240B245C8(v41, *(a1 + 200));
  v20 = *(a1 + 200);
  if (v20)
  {
    v21 = 0;
    v22 = *v41;
    do
    {
      *&v22[4 * v21] = v21;
      ++v21;
    }

    while (v20 > v21);
  }

  sub_240B245C8(v39, v20);
  v23 = *(a1 + 200);
  v42 = -1;
  sub_240B2B4A8(v38, v23 + 1, &v42);
  sub_240B245C8(v40, *(a1 + 200));
  v24 = *(a1 + 200);
  if (v24)
  {
    v25 = 0;
    v26 = *v40;
    do
    {
      *&v26[4 * v25] = v25;
      ++v25;
    }

    while (v24 > v25);
  }

  if (a7)
  {
    v27 = 119;
    while (1)
    {
      v28 = v27;
      v29 = *(&unk_240C8347C + 2 * v27) + *(&unk_240C8347C + 2 * v27 + 1) * a7;
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      v31 = *(a1 + 240);
      if (!*&v31)
      {
        goto LABEL_31;
      }

      v32 = vcnt_s8(v31);
      v32.i16[0] = vaddlv_u8(v32);
      if (v32.u32[0] > 1uLL)
      {
        v33 = v30;
        if (*&v31 <= v30)
        {
          v33 = v30 % *&v31;
        }
      }

      else
      {
        v33 = (v31.i32[0] + 0x7FFFFFFF) & v30;
      }

      v34 = *(*v14 + 8 * v33);
      if (!v34 || (v35 = *v34) == 0)
      {
LABEL_31:
        operator new();
      }

      while (1)
      {
        v36 = v35[1];
        if (v36 == v30)
        {
          break;
        }

        if (v32.u32[0] > 1uLL)
        {
          if (v36 >= *&v31)
          {
            v36 %= *&v31;
          }
        }

        else
        {
          v36 &= *&v31 - 1;
        }

        if (v36 != v33)
        {
          goto LABEL_31;
        }

LABEL_30:
        v35 = *v35;
        if (!v35)
        {
          goto LABEL_31;
        }
      }

      if (*(v35 + 4) != v30)
      {
        goto LABEL_30;
      }

      *(v35 + 5) = v28;
      v27 = v28 - 1;
      if (!v28)
      {
        *(a1 + 272) = 120;
        return a1;
      }
    }
  }

  return a1;
}

void sub_240B82A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, void **a14, void **a15, void **a16)
{
  sub_240B83ACC(v20);
  v22 = *a14;
  if (*a14)
  {
    v16[22] = v22;
    operator delete(v22);
  }

  v23 = *a15;
  if (*a15)
  {
    v16[19] = v23;
    operator delete(v23);
  }

  v24 = *a13;
  if (*a13)
  {
    v16[16] = v24;
    operator delete(v24);
  }

  v25 = *v19;
  if (*v19)
  {
    v16[13] = v25;
    operator delete(v25);
  }

  v26 = *a16;
  if (*a16)
  {
    v16[10] = v26;
    operator delete(v26);
  }

  v27 = *v18;
  if (*v18)
  {
    v16[7] = v27;
    operator delete(v27);
  }

  v28 = *v17;
  if (*v17)
  {
    v16[2] = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

unint64_t *sub_240B82B3C(unint64_t *result, unint64_t a2)
{
  v2 = *result;
  if (a2 + 2 >= *result)
  {
    v3 = 0;
  }

  else
  {
    v3 = ((*(result[1] + 4 * a2 + 4) << *(result + 10)) ^ *(result[1] + 4 * a2) ^ (*(result[1] + 4 * (a2 + 2)) << (2 * *(result + 10)))) & *(result + 9);
  }

  v4 = result[26];
  v5 = v4 & a2;
  v6 = v4 & a2;
  *(result[12] + 4 * v6) = v3;
  v7 = result[6];
  v8 = *(v7 + 4 * v3);
  if (v8 != -1)
  {
    *(result[9] + 4 * v6) = v8;
  }

  *(v7 + 4 * v3) = v5;
  if (a2 && *(result[1] + 4 * a2) != *(result[1] + 4 * a2 - 4))
  {
    *(result + 48) = 0;
  }

  v9 = *(result + 48);
  v10 = result[25];
  v11 = v10 + a2;
  if (v10 + a2 >= v2)
  {
    v12 = v2;
  }

  else
  {
    v12 = v10 + a2;
  }

  if (v9)
  {
    if (v4 > v9 || (!*(result[1] + 4 * v12 - 4) ? (v13 = v11 > v2) : (v13 = 1), LODWORD(v14) = *(result + 48), v13))
    {
      LODWORD(v14) = v9 - 1;
    }
  }

  else if (v12 <= a2)
  {
    LODWORD(v14) = 0;
  }

  else
  {
    LODWORD(v14) = 0;
    v15 = a2;
    do
    {
      if (*(result[1] + 4 * v15))
      {
        break;
      }

      v14 = (v14 + 1);
      v15 = v14 + a2;
    }

    while (v14 + a2 < v12);
  }

  *(result + 48) = v14;
  *(result[21] + 4 * v6) = v14;
  v16 = *(result + 48);
  v17 = result[15];
  v18 = *(v17 + 4 * v16);
  if (v18 != -1)
  {
    *(result[18] + 4 * v6) = v18;
    v16 = *(result + 48);
  }

  *(v17 + 4 * v16) = v5;
  return result;
}

uint64_t *sub_240B82C78(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void *sub_240B82D2C(void *a1)
{
  sub_240B83ACC((a1 + 29));
  v2 = a1[21];
  if (v2)
  {
    a1[22] = v2;
    operator delete(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    a1[19] = v3;
    operator delete(v3);
  }

  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    a1[13] = v5;
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_240B82DC8(uint64_t result, int a2, unint64_t *a3, uint64_t a4)
{
  v4 = __clz(a4 + 1) ^ 0x3F;
  if (((a4 + 1) & a4) != 0)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 + *a3;
  v7 = __clz(result + 1) ^ 0x1F;
  if (((result + 1) & result) != 0)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = result - a2 + 1;
  v10 = __clz(v9) ^ 0x1F;
  if ((v9 & (result - a2)) != 0)
  {
    ++v8;
  }

  v11 = v8 + v10 + v6;
  if (a4 != result)
  {
    v6 = v11;
  }

  *a3 = v6;
  return result;
}

uint64_t *sub_240B82E28(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_240B83A7C(a1, a2);
  }

  return a1;
}

void sub_240B82EB4(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (a2 >= (*(a1 + 8) - *a1) >> 2)
  {
    sub_240B245C8(a1, (a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v4 = *a1;
  }

  ++*&v4[4 * a2];
  ++*(a1 + 24);
}

void sub_240B82F14(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B82F6C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    sub_240B7BE70(&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_240B82FCC(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = (v3 + 48 * a2);
      while (v4 != v11)
      {
        v12 = *(v4 - 5);
        if (v12)
        {
          *(v4 - 4) = v12;
          operator delete(v12);
        }

        v4 -= 48;
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * (&v7[-v3] >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x555555555555555)
        {
          operator new();
        }

        sub_240B2291C();
      }

      sub_240B228BC();
    }

    v13 = 48 * ((48 * v6 - 48) / 0x30) + 48;
    bzero(a1[1], v13);
    a1[1] = &v4[v13];
  }
}

uint64_t *sub_240B83214(unint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (v9 + 1 > 0x666666666666666)
    {
      sub_240B228BC();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v11;
    }

    v23 = a1;
    if (v12)
    {
      sub_240B837BC(v12);
    }

    v13 = 40 * v9;
    v20 = 0;
    v21 = v13;
    v22 = v13;
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    sub_240B2BA38(v13, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v14 = *(a2 + 24);
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 24) = v14;
    *&v22 = v22 + 40;
    v15 = a1[1];
    v16 = v21 + *a1 - v15;
    sub_240B83814(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = a1[2];
    v19 = v22;
    *(a1 + 1) = v22;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v20 = v17;
    v21 = v17;
    result = sub_240B838E0(&v20);
    v8 = v19;
  }

  else
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    result = sub_240B2BA38(v5, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v7 = *(a2 + 24);
    *(v5 + 32) = *(a2 + 32);
    *(v5 + 24) = v7;
    v8 = v5 + 40;
    a1[1] = v5 + 40;
  }

  a1[1] = v8;
  return result;
}

void sub_240B83390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_240B838E0(va);
  _Unwind_Resume(a1);
}

void sub_240B833B0(uint64_t *a1, unint64_t a2, _OWORD *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v10 = (v4 + 16 * a2);
  }

  else
  {
    v6 = a1[2];
    if (a2 - v5 > (v6 - v3) >> 4)
    {
      if (!(a2 >> 60))
      {
        v7 = v6 - v4;
        v8 = v7 >> 3;
        if (v7 >> 3 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF0)
        {
          v9 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        sub_240B2D470(v9);
      }

      sub_240B228BC();
    }

    v10 = &v3[a2 - v5];
    v11 = 16 * a2 - 16 * v5;
    do
    {
      *v3++ = *a3;
      v11 -= 16;
    }

    while (v11);
  }

  a1[1] = v10;
}

void **sub_240B834E0(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = v7 >> 3;
    if (v7 >> 3 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 60))
    {
      sub_240B2D470(v10);
    }

    sub_240B228BC();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v17 = a3 - __src;
    if (v17)
    {
      result = memmove(*result, __src, v17);
    }

    v16 = &v8[v17];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      do
      {
        v15 = *v13;
        v13 += 16;
        *v14 = v15;
        v14 += 16;
      }

      while (v13 != a3);
    }

    v16 = v14;
  }

  v6[1] = v16;
  return result;
}

uint64_t *sub_240B83618(uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_240B2287C(a1, a2);
  }

  return a1;
}

void sub_240B83710(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_240B8372C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 5);
        v6 -= 40;
        v7 = v8;
        if (v8)
        {
          *(v4 - 4) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_240B837BC(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_240B2291C();
}

uint64_t sub_240B83814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 24) = v7;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    do
    {
      v8 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v8;
        operator delete(v8);
      }

      v5 += 40;
    }

    while (v5 != a3);
  }

  return sub_240B83944(v10);
}

uint64_t sub_240B838E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 40);
    *(a1 + 16) = v2 - 40;
    if (v4)
    {
      *(v2 - 32) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_240B83944(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 40);
        v4 -= 40;
        v5 = v6;
        if (v6)
        {
          *(v2 - 32) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void sub_240B839AC(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_240B2291C();
}

void sub_240B83A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      v7 = *(v5 + 24);
      *(v5 + 24) = 0;
      *(a3 + 16) = v6;
      *(a3 + 24) = v7;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *(a3 + 32) = *(v5 + 32);
      v5 += 40;
      a3 += 40;
    }

    while (v5 != a2);
    do
    {
      sub_240B22320((v4 + 24));
      v4 += 40;
    }

    while (v4 != a2);
  }
}

void sub_240B83A7C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_240B837BC(a2);
  }

  sub_240B228BC();
}

uint64_t sub_240B83ACC(uint64_t a1)
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

uint64_t *sub_240B83B18(uint64_t *result, uint64_t a2, void *a3, unint64_t *a4)
{
  v5 = result;
  *a3 = 0;
  *a4 = 1;
  v6 = result[26] & a2;
  if (a2 + 2 >= *result)
  {
    v28 = 0;
  }

  else
  {
    v28 = ((*(result[1] + 4 * a2 + 4) << *(result + 10)) ^ *(result[1] + 4 * a2) ^ (*(result[1] + 4 * (a2 + 2)) << (2 * *(result + 10)))) & *(result + 9);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v29 = result[9];
  v10 = *(v29 + 4 * v6);
  if (*result >= *(result + 56) + a2)
  {
    v11 = *(result + 56) + a2;
  }

  else
  {
    v11 = *result;
  }

  v26 = v11 + ~a2;
  v27 = a2;
  while (1)
  {
    v12 = v6 - v10;
    if (v6 < v10)
    {
      v12 = v6 + 1 - v10 + *(v5 + 52);
    }

    if (v12 < v7)
    {
      return result;
    }

    if (v12 < 1)
    {
      LODWORD(v19) = 0;
    }

    else
    {
      v13 = a2 - v12;
      v14 = *(v5 + 48);
      LODWORD(v15) = a2;
      if (v14 >= 4)
      {
        v16 = v14 - 1;
        if (*(v5[21] + 4 * v10) < v16)
        {
          v16 = *(v5[21] + 4 * v10);
        }

        if (v16 + a2 >= v11)
        {
          v16 = v26;
        }

        LODWORD(v15) = v16 + a2;
        v13 += v16;
      }

      v17 = v11 - v15;
      if (v11 > v15)
      {
        v15 = v15;
        v18 = 4 * v13;
        while (*(v5[1] + 4 * v15) == *(v5[1] + v18))
        {
          ++v15;
          v18 += 4;
          if (!--v17)
          {
            LODWORD(v15) = v11;
            break;
          }
        }
      }

      v19 = (v15 - a2);
      if (v5[27] <= v19 && v19 + 2 >= v9)
      {
        result = sub_240B82C78(v5 + 29, v12);
        if (result)
        {
          v21 = *(result + 5);
        }

        else
        {
          v21 = *(v5 + 68) + v12 - 1;
        }

        LODWORD(a2) = v27;
        if (*a4 < v19 || *a4 == v19 && *a3 > v21)
        {
          *a4 = v19;
          *a3 = v21;
        }

        if (v19 > v9)
        {
          v9 = v19;
        }
      }
    }

    if (++v8 >= *(v5 + 70))
    {
      return result;
    }

    v22 = *(v5 + 48);
    if (v22 < 3 || v19 <= v22)
    {
      v24 = *(v29 + 4 * v10);
      if (v10 == v24)
      {
        return result;
      }

      v7 = v12;
      v10 = *(v29 + 4 * v10);
      if (*(v5[12] + 4 * v24) != v28)
      {
        return result;
      }
    }

    else
    {
      v23 = *(v5[18] + 4 * v10);
      if (v10 == v23)
      {
        return result;
      }

      v7 = v12;
      v10 = *(v5[18] + 4 * v10);
      if (*(v5[21] + 4 * v23) != v22)
      {
        return result;
      }
    }
  }
}