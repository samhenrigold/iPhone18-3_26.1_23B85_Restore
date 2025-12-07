int16x4_t *CheckPartitionRow_4x4(int16x4_t *result, int32x4_t *a2, int32x4_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v7 = 0;
  v8 = *a2;
  v9 = vdup_n_s16(a6);
  v10 = HIDWORD(*a2);
  v11 = *a3;
  v12 = *result;
  v13 = vdup_n_s16(~a7);
  v14 = a4;
  do
  {
    v15 = *(a4 + 8 * v7);
    if (!v15.i16[0])
    {
      break;
    }

    v16 = veor_s8(v15, v9);
    v17 = vminq_s32(vpaddlq_u16(vpaddlq_u8(vcntq_s8(vmovl_u16(vand_s8(v16, v13))))), vpaddlq_u16(vpaddlq_u8(vcntq_s8(vmovl_u16(vbic_s8(v13, v16))))));
    if (vminvq_s32(v17) < v10)
    {
      for (i = 0; i != 4; ++i)
      {
        v24 = v17;
        v19 = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
        if (v19 < v10)
        {
          v20 = *(a5 + 2 * i);
          if ((v20 & 0x80000000) == 0)
          {
            if (v19 >= v8.i32[0])
            {
              if (v19 >= v8.i32[1])
              {
                if (v19 >= v8.i32[2])
                {
                  if (v19 < v8.i32[3])
                  {
                    v12.i16[3] = *(v14 + 2 * i);
                    v8.i32[3] = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                    v11.i32[3] = *(a5 + 2 * i);
                  }
                }

                else
                {
                  v21.i32[0] = v12.i32[0];
                  v21.i16[2] = *(v14 + 2 * i);
                  v21.i16[3] = v12.i16[2];
                  v22.i64[0] = v8.i64[0];
                  v22.i32[2] = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                  v22.i32[3] = v8.i32[2];
                  v23.i64[0] = v11.i64[0];
                  v23.i64[1] = __PAIR64__(v11.u32[2], v20);
                  v12 = v21;
                  v11 = v23;
                  v8 = v22;
                }
              }

              else
              {
                v12 = vzip1_s16(v12, vzip2_s16(v12, v12));
                v8 = vzip1q_s32(v8, vzip2q_s32(v8, v8));
                v11 = vzip1q_s32(v11, vzip2q_s32(v11, v11));
                v12.i16[1] = *(v14 + 2 * i);
                v8.i32[1] = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
                v11.i32[1] = *(a5 + 2 * i);
              }
            }

            else
            {
              v12 = vext_s8(*v8.i8, v12, 6uLL);
              v8 = vextq_s8(v8, v8, 0xCuLL);
              v11 = vextq_s8(v8, v11, 0xCuLL);
              v12.i16[0] = *(v14 + 2 * i);
              v8.i32[0] = *(&v24 & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3)));
              v11.i32[0] = *(a5 + 2 * i);
            }

            v10 = v8.i32[3];
          }
        }
      }
    }

    ++v7;
    v14 += 8;
    a5 += 8;
  }

  while (v7 != 9);
  *a2 = v8;
  *a3 = v11;
  *result = v12;
  return result;
}

float32x4_t Read_4x4_BGRA8_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = *a1;
  v7 = (a1 + *a2);
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = *v7;
  v10 = vandq_s8(*v7, v8);
  v11 = (v7 + a2[1]);
  v12 = *(v11 + a2[2]);
  v13 = *v11;
  v14 = *&vandq_s8(*v11, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v15 = *&vandq_s8(v12, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v16 = *&vandq_s8(*a1, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v8.i64[0] = 0xCB000000CB000000;
  v8.i64[1] = 0xCB000000CB000000;
  v17 = vaddq_f32(v16, v8);
  v18 = vdupq_n_s32(0x3B808081u);
  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  a3[17] = vmulq_f32(v17, v18);
  a3[18] = vmulq_f32(vaddq_f32((*&v10 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  v10.i64[0] = 0xFF000000FF00;
  v10.i64[1] = 0xFF000000FF00;
  a3[19] = vmulq_f32(vaddq_f32(v14, v8), v18);
  a3[20] = vmulq_f32(vaddq_f32(v15, v8), v18);
  v19 = vdupq_n_s32(0x3B800000u);
  a3[13] = vmulq_f32(vmulq_f32(vaddq_f32((*&vandq_s8(v6, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19), v18);
  a3[14] = vmulq_f32(vmulq_f32(vaddq_f32((*&vandq_s8(v9, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19), v18);
  a3[15] = vmulq_f32(vmulq_f32(vaddq_f32((*&vandq_s8(v13, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19), v18);
  a3[16] = vmulq_f32(vmulq_f32(vaddq_f32((*&vandq_s8(v12, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19), v18);
  v20 = vshrq_n_u32(v13, 0x10uLL);
  v21 = vshrq_n_u32(v12, 0x10uLL);
  v22 = vshrq_n_u32(v9, 0x10uLL);
  v23 = vshrq_n_u32(v6, 0x10uLL);
  v20.i32[0] = v20.i32[0] & 0xB4FF00FF | 0x4B000000;
  v20.i32[1] = v20.i32[1] & 0xB4FF00FF | 0x4B000000;
  v20.i32[2] = v20.i32[2] & 0xB4FF00FF | 0x4B000000;
  v20.i32[3] = v20.i32[3] & 0xB4FF00FF | 0x4B000000;
  v21.i32[0] = v21.i32[0] & 0xB4FF00FF | 0x4B000000;
  v21.i32[1] = v21.i32[1] & 0xB4FF00FF | 0x4B000000;
  v21.i32[2] = v21.i32[2] & 0xB4FF00FF | 0x4B000000;
  v21.i32[3] = v21.i32[3] & 0xB4FF00FF | 0x4B000000;
  v22.i32[0] = v22.i32[0] & 0xB4FF00FF | 0x4B000000;
  v22.i32[1] = v22.i32[1] & 0xB4FF00FF | 0x4B000000;
  v22.i32[2] = v22.i32[2] & 0xB4FF00FF | 0x4B000000;
  v22.i32[3] = v22.i32[3] & 0xB4FF00FF | 0x4B000000;
  v23.i32[0] = v23.i32[0] & 0xB4FF00FF | 0x4B000000;
  v23.i32[1] = v23.i32[1] & 0xB4FF00FF | 0x4B000000;
  v23.i32[2] = v23.i32[2] & 0xB4FF00FF | 0x4B000000;
  v23.i32[3] = v23.i32[3] & 0xB4FF00FF | 0x4B000000;
  a3[9] = vmulq_f32(vaddq_f32(v23, v8), v18);
  a3[10] = vmulq_f32(vaddq_f32(v22, v8), v18);
  a3[11] = vmulq_f32(vaddq_f32(v20, v8), v18);
  a3[12] = vmulq_f32(vaddq_f32(v21, v8), v18);
  a3[21] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v6, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[22] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v9, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  result = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v12, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[23] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v13, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[24] = result;
  return result;
}

float32x4_t Read_4x4_RA8_vec@<Q0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 324;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v23.val[1].i64[0] = *a1;
  v6 = (a1 + *a2);
  v7 = *v6;
  v8 = (v6 + a2[1]);
  v9.i64[0] = *v8;
  v23.val[1].i64[1] = v7;
  v23.val[0].i64[0] = 0x4B004B004B004B00;
  v23.val[0].i64[1] = 0x4B004B004B004B00;
  v10 = vqtbl2q_s8(v23, xmmword_298495960);
  v11 = vqtbl2q_s8(v23, xmmword_298495970);
  v9.i64[1] = *(v8 + a2[2]);
  v23.val[1] = v9;
  v12 = vqtbl2q_s8(v23, xmmword_298495960);
  v23.val[0] = vqtbl2q_s8(v23, xmmword_298495970);
  v13.i64[0] = 0xCB000000CB000000;
  v13.i64[1] = 0xCB000000CB000000;
  v14 = vdupq_n_s32(0x3B808081u);
  v23.val[1] = vmulq_f32(vaddq_f32((*v23.val & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), v14);
  v15 = vmulq_f32(vaddq_f32((*&v12 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), v14);
  v16 = vmulq_f32(vaddq_f32((*&v11 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), v14);
  v17 = vmulq_f32(vaddq_f32((*&v10 & __PAIR128__(0xFFFF00FFFFFF00FFLL, 0xFFFF00FFFFFF00FFLL)), v13), v14);
  *(a3 + 144) = v16;
  *(a3 + 160) = v17;
  *(a3 + 176) = v23.val[1];
  *(a3 + 192) = v15;
  *(a3 + 208) = v16;
  *(a3 + 224) = v17;
  *(a3 + 240) = v23.val[1];
  *(a3 + 256) = v15;
  *(a3 + 272) = v16;
  *(a3 + 288) = v17;
  *(a3 + 304) = v23.val[1];
  *(a3 + 320) = v15;
  v18 = vaddq_f32((*&v10 & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v13);
  v19 = vaddq_f32((*&v11 & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v13);
  v20 = vaddq_f32((*&v12 & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v13);
  v23.val[0] = vaddq_f32((*v23.val & __PAIR128__(0xFFFFFF00FFFFFF00, 0xFFFFFF00FFFFFF00)), v13);
  v21 = vdupq_n_s32(0x37808081u);
  result = vmulq_f32(v23.val[0], v21);
  *(a3 + 336) = vmulq_f32(v19, v21);
  *(a3 + 352) = vmulq_f32(v18, v21);
  *(a3 + 368) = result;
  *(a3 + 384) = vmulq_f32(v20, v21);
  *(a3 + 124) = 2139095040;
  *(a3 + 656) = v16;
  *(a3 + 672) = v17;
  *(a3 + 688) = v23.val[1];
  *(a3 + 704) = v15;
  return result;
}

float32x4_t Read_4x4_R8_vec@<Q0>(__int32 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 324;
  v6 = (a1 + *a2);
  v7.i32[0] = *a1;
  v7.i32[1] = *v6;
  v8 = (v6 + a2[1]);
  v9.i32[0] = *v8;
  v9.i32[1] = *(v8 + a2[2]);
  v10 = vmovl_u8(v9);
  v11 = vmovl_u8(v7);
  v12.i64[0] = 0xCB000000CB000000;
  v12.i64[1] = 0xCB000000CB000000;
  v13 = vaddq_f32((*&vmovl_high_u16(v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v12);
  v14 = vaddq_f32((*&vmovl_u16(*v10.i8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v12);
  v15 = vaddq_f32((*&vmovl_high_u16(v11) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v12);
  v16 = vaddq_f32((*&vmovl_u16(*v11.i8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v12);
  v17 = vdupq_n_s32(0x3B808081u);
  result = vmulq_f32(v16, v17);
  v19 = vmulq_f32(v15, v17);
  *(a3 + 144) = result;
  *(a3 + 160) = v19;
  v20 = vmulq_f32(v14, v17);
  v21 = vmulq_f32(v13, v17);
  *(a3 + 176) = v20;
  *(a3 + 192) = v21;
  *(a3 + 208) = result;
  *(a3 + 224) = v19;
  *(a3 + 240) = v20;
  *(a3 + 256) = v21;
  *(a3 + 272) = result;
  *(a3 + 288) = v19;
  *(a3 + 304) = v20;
  *(a3 + 320) = v21;
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 768) = 0u;
  *(a3 + 784) = 0;
  __asm { FMOV            V4.4S, #1.0 }

  *(a3 + 368) = _Q4;
  *(a3 + 384) = _Q4;
  *(a3 + 336) = _Q4;
  *(a3 + 352) = _Q4;
  *(a3 + 124) = 2139095040;
  *(a3 + 688) = v20;
  *(a3 + 704) = v21;
  *(a3 + 656) = result;
  *(a3 + 672) = v19;
  return result;
}

float32x4_t Read_4x4_R16_vec@<Q0>(uint16x4_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 324;
  v6 = (a1 + *a2);
  v7 = *v6;
  v8 = (v6 + a2[1]);
  v9 = vdupq_n_s32(0x4B400000u);
  v10 = vorrq_s8(vmovl_u16(*v8), v9);
  v11 = vorrq_s8(vmovl_u16(*(v8 + a2[2])), v9);
  v12 = vorrq_s8(vmovl_u16(v7), v9);
  v13 = vorrq_s8(vmovl_u16(*a1), v9);
  v14 = vdupq_n_s32(0xCB400000);
  v15 = vaddq_f32(v13, v14);
  v16 = vaddq_f32(v12, v14);
  v17 = vaddq_f32(v11, v14);
  v18 = vaddq_f32(v10, v14);
  v19 = vdupq_n_s32(0x37800080u);
  v20 = vmulq_f32(v18, v19);
  v21 = vmulq_f32(v16, v19);
  result = vmulq_f32(v15, v19);
  *(a3 + 272) = result;
  *(a3 + 288) = v21;
  v23 = vmulq_f32(v17, v19);
  *(a3 + 304) = v20;
  *(a3 + 320) = v23;
  *(a3 + 208) = result;
  *(a3 + 224) = v21;
  *(a3 + 240) = v20;
  *(a3 + 256) = v23;
  *(a3 + 144) = result;
  *(a3 + 160) = v21;
  *(a3 + 176) = v20;
  *(a3 + 192) = v23;
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 768) = 0u;
  *(a3 + 784) = 0;
  __asm { FMOV            V4.4S, #1.0 }

  *(a3 + 368) = _Q4;
  *(a3 + 384) = _Q4;
  *(a3 + 336) = _Q4;
  *(a3 + 352) = _Q4;
  *(a3 + 124) = 2139095040;
  *(a3 + 688) = v20;
  *(a3 + 704) = v23;
  *(a3 + 656) = result;
  *(a3 + 672) = v21;
  return result;
}

float32x4_t Read_4x4_RA16_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  v6 = (a1 + *a2);
  v7 = (v6 + a2[1]);
  v8.i64[0] = 0xFFFF0000FFFFLL;
  v8.i64[1] = 0xFFFF0000FFFFLL;
  v9 = *(v7 + a2[2]);
  v10 = vandq_s8(*a1, v8);
  v11 = vandq_s8(*v6, v8);
  v12 = vandq_s8(v9, v8);
  v13 = *&vandq_s8(*v7, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v14 = vshrq_n_u32(*v6, 0x10uLL);
  v15 = vshrq_n_u32(*v7, 0x10uLL);
  v16 = vshrq_n_u32(*a1, 0x10uLL);
  v17.i64[0] = 0xCB000000CB000000;
  v17.i64[1] = 0xCB000000CB000000;
  v18 = vdupq_n_s32(0x37800080u);
  v19 = vmulq_f32(vaddq_f32((*&v11 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  v20 = vmulq_f32(vaddq_f32((*&v10 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[17] = v20;
  a3[18] = v19;
  v21 = vmulq_f32(vaddq_f32(v13, v17), v18);
  v22 = vmulq_f32(vaddq_f32((*&v12 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[19] = v21;
  a3[20] = v22;
  a3[13] = v20;
  a3[14] = v19;
  a3[15] = v21;
  a3[16] = v22;
  a3[9] = v20;
  a3[10] = v19;
  result = vmulq_f32(vaddq_f32((*&v14 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[11] = v21;
  a3[12] = v22;
  a3[21] = vmulq_f32(vaddq_f32((*&v16 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[22] = result;
  a3[23] = vmulq_f32(vaddq_f32((*&v15 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[24] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v9, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v18);
  a3[7].i32[3] = 2139095040;
  a3[41] = v20;
  a3[42] = v19;
  a3[43] = v21;
  a3[44] = v22;
  return result;
}

int32x4_t Read_4x4_RGBA16_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, int32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  v6 = a1[1];
  v7 = (a1 + *a2);
  v8.i64[0] = 0xFFFF0000FFFFLL;
  v8.i64[1] = 0xFFFF0000FFFFLL;
  v9 = v7[1];
  v10 = *&vandq_s8(v9, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v11 = *&vandq_s8(*v7, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v12 = vshrq_n_u32(*v7, 0x10uLL);
  v13 = (v7 + a2[1]);
  v14 = *&vshrq_n_u32(v9, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v16 = *v13;
  v15 = v13[1];
  v17.i64[0] = 0xCB000000CB000000;
  v17.i64[1] = 0xCB000000CB000000;
  v18 = (v13 + a2[2]);
  v19 = vaddq_f32(v11, v17);
  v20 = v18[1];
  v21 = vdupq_n_s32(0x37800080u);
  v22 = vmulq_f32(vaddq_f32((*&vandq_s8(v6, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v23 = vmulq_f32(vaddq_f32((*&vandq_s8(*a1, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v24 = vmulq_f32(vaddq_f32(v10, v17), v21);
  v25 = vmulq_f32(v19, v21);
  v26 = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v6, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v27 = vmulq_f32(vaddq_f32((*&vshrq_n_u32(*a1, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v28 = vmulq_f32(vaddq_f32(v14, v17), v21);
  v29 = vmulq_f32(vaddq_f32((*&v12 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v30 = vandq_s8(*v18, v8);
  v31 = vandq_s8(v20, v8);
  v32 = vandq_s8(v16, v8);
  v33 = vmulq_f32(vaddq_f32((*&vandq_s8(v15, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v34 = vmulq_f32(vaddq_f32((*&v32 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v35 = vmulq_f32(vaddq_f32((*&v31 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v36 = vmulq_f32(vaddq_f32((*&v30 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v37 = vaddq_f32((*&vshrq_n_u32(*v18, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17);
  v38 = vaddq_f32((*&vshrq_n_u32(v20, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17);
  v39 = vaddq_f32((*&vshrq_n_u32(v16, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17);
  a3[9] = vuzp1q_s32(v23, v22);
  a3[10] = vuzp1q_s32(v25, v24);
  a3[11] = vuzp1q_s32(v34, v33);
  a3[12] = vuzp1q_s32(v36, v35);
  a3[13] = vuzp1q_s32(v27, v26);
  a3[14] = vuzp1q_s32(v29, v28);
  v40 = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v15, 0x10uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v17), v21);
  v41 = vmulq_f32(v39, v21);
  v42 = vmulq_f32(v38, v21);
  v43 = vmulq_f32(v37, v21);
  a3[15] = vuzp1q_s32(v41, v40);
  a3[16] = vuzp1q_s32(v43, v42);
  a3[17] = vuzp2q_s32(v23, v22);
  a3[18] = vuzp2q_s32(v25, v24);
  a3[19] = vuzp2q_s32(v34, v33);
  a3[20] = vuzp2q_s32(v36, v35);
  a3[21] = vuzp2q_s32(v27, v26);
  a3[22] = vuzp2q_s32(v29, v28);
  result = vuzp2q_s32(v43, v42);
  a3[23] = vuzp2q_s32(v41, v40);
  a3[24] = result;
  return result;
}

float32x4_t Read_4x4_Rf16_vec@<Q0>(float16x4_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 324;
  v6 = (a1 + *a2);
  v7 = *v6;
  v8 = (v6 + a2[1]);
  __asm { FMOV            V5.4S, #1.0 }

  result = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*a1), 0), _Q5);
  v15 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(v7), 0), _Q5);
  v16 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v8), 0), _Q5);
  v17 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*(v8 + a2[2])), 0), _Q5);
  *(a3 + 144) = result;
  *(a3 + 160) = v15;
  *(a3 + 176) = v16;
  *(a3 + 192) = v17;
  *(a3 + 208) = result;
  *(a3 + 224) = v15;
  *(a3 + 240) = v16;
  *(a3 + 256) = v17;
  *(a3 + 272) = result;
  *(a3 + 288) = v15;
  *(a3 + 304) = v16;
  *(a3 + 320) = v17;
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
  *(a3 + 720) = 0u;
  *(a3 + 736) = 0u;
  *(a3 + 752) = 0u;
  *(a3 + 768) = 0u;
  *(a3 + 784) = 0;
  *(a3 + 368) = _Q5;
  *(a3 + 384) = _Q5;
  *(a3 + 336) = _Q5;
  *(a3 + 352) = _Q5;
  *(a3 + 124) = 2139095040;
  *(a3 + 688) = v16;
  *(a3 + 704) = v17;
  *(a3 + 656) = result;
  *(a3 + 672) = v15;
  return result;
}

float32x4_t Read_4x4_RAf16_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  v6 = (a1 + *a2);
  v7 = (v6 + a2[1]);
  v8 = vqtbl1q_s8(*v6, xmmword_298495980);
  v9 = vqtbl1q_s8(*a1, xmmword_298495980);
  v10 = vqtbl1q_s8(*(v7 + a2[2]), xmmword_298495980);
  v11 = vqtbl1q_s8(*v7, xmmword_298495980);
  __asm { FMOV            V7.4S, #1.0 }

  v17 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v9.i8), 0), _Q7);
  v18 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v8.i8), 0), _Q7);
  a3[9] = v17;
  a3[10] = v18;
  v19 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v11.i8), 0), _Q7);
  v20 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v10.i8), 0), _Q7);
  a3[11] = v19;
  a3[12] = v20;
  a3[21] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v9, v9, 8uLL)), 0), _Q7);
  a3[22] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v8, v8, 8uLL)), 0), _Q7);
  result = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v10, v10, 8uLL)), 0), _Q7);
  a3[23] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v11, v11, 8uLL)), 0), _Q7);
  a3[24] = result;
  a3[13] = v17;
  a3[14] = v18;
  a3[15] = v19;
  a3[16] = v20;
  a3[17] = v17;
  a3[18] = v18;
  a3[19] = v19;
  a3[20] = v20;
  a3[7].i32[3] = 2139095040;
  a3[41] = v17;
  a3[42] = v18;
  a3[43] = v19;
  a3[44] = v20;
  return result;
}

float32x4_t Read_4x4_RGBAf16_vec@<Q0>(int8x16x2_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = (a1 + *a2);
  v7 = (v6 + a2[1]);
  v8 = vqtbl2q_s8(*a1, xmmword_298495990);
  v9 = vqtbl2q_s8(*a1, xmmword_2984959A0);
  v10 = vqtbl2q_s8(*v6, xmmword_298495990);
  v11 = vqtbl2q_s8(*v6, xmmword_2984959A0);
  v12 = vqtbl2q_s8(*v7, xmmword_298495990);
  v13 = vqtbl2q_s8(*v7, xmmword_2984959A0);
  v26 = *(v7 + a2[2]);
  v14 = vqtbl2q_s8(v26, xmmword_298495990);
  v15 = vqtbl2q_s8(v26, xmmword_2984959A0);
  v16 = vcvtq_f32_f16(*v9.i8);
  v17 = vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v9, v9, 8uLL)), 0);
  __asm { FMOV            V0.4S, #1.0 }

  a3[8].i16[2] = 324;
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  v23 = vcvtq_f32_f16(*v12.i8);
  v24 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v12, v12, 8uLL)), 0), _Q0);
  a3[9] = vminnmq_f32(vmaxnmq_f32(v16, 0), _Q0);
  a3[10] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v11.i8), 0), _Q0);
  a3[11] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v13.i8), 0), _Q0);
  a3[12] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v15.i8), 0), _Q0);
  a3[13] = vminnmq_f32(v17, _Q0);
  a3[14] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v11, v11, 8uLL)), 0), _Q0);
  a3[15] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v13, v13, 8uLL)), 0), _Q0);
  a3[16] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v15, v15, 8uLL)), 0), _Q0);
  a3[17] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v8.i8), 0), _Q0);
  a3[18] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v10.i8), 0), _Q0);
  a3[19] = vminnmq_f32(vmaxnmq_f32(v23, 0), _Q0);
  a3[20] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v14.i8), 0), _Q0);
  a3[21] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v8, v8, 8uLL)), 0), _Q0);
  a3[22] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v10, v10, 8uLL)), 0), _Q0);
  result = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v14, v14, 8uLL)), 0), _Q0);
  a3[23] = v24;
  a3[24] = result;
  return result;
}

void Read_8x8_RGBA8_vec(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8.i64[0] = 0xCB000000CB000000;
  v8.i64[1] = 0xCB000000CB000000;
  v9 = vdupq_n_s32(0x3B808081u);
  v10.i64[0] = 0xFF000000FF00;
  v10.i64[1] = 0xFF000000FF00;
  v11 = vdupq_n_s32(0x37808081u);
  do
  {
    v12 = *a1;
    v13 = a1[1];
    a1 = (a1 + *(a2 + 8 * v6));
    v14 = (a3 + 32 * v6);
    v14[9] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v7) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[10] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v7) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[25] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v11);
    v14[26] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v11);
    v15 = vshrq_n_u32(v12, 0x10uLL);
    v16 = vshrq_n_u32(v13, 0x10uLL);
    v15.i32[0] = v15.i32[0] & 0xB4FF00FF | 0x4B000000;
    v15.i32[1] = v15.i32[1] & 0xB4FF00FF | 0x4B000000;
    v15.i32[2] = v15.i32[2] & 0xB4FF00FF | 0x4B000000;
    v15.i32[3] = v15.i32[3] & 0xB4FF00FF | 0x4B000000;
    v16.i32[0] = v16.i32[0] & 0xB4FF00FF | 0x4B000000;
    v16.i32[1] = v16.i32[1] & 0xB4FF00FF | 0x4B000000;
    v16.i32[2] = v16.i32[2] & 0xB4FF00FF | 0x4B000000;
    v16.i32[3] = v16.i32[3] & 0xB4FF00FF | 0x4B000000;
    v14[41] = vmulq_f32(vaddq_f32(v15, v8), v9);
    v14[42] = vmulq_f32(vaddq_f32(v16, v8), v9);
    v14[57] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v12, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[58] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v13, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    ++v6;
  }

  while (v6 != 8);
}

void Read_8x8_BGRA8_vec(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7.i64[0] = 0xFF000000FFLL;
  v7.i64[1] = 0xFF000000FFLL;
  v8.i64[0] = 0xCB000000CB000000;
  v8.i64[1] = 0xCB000000CB000000;
  v9 = vdupq_n_s32(0x3B808081u);
  v10.i64[0] = 0xFF000000FF00;
  v10.i64[1] = 0xFF000000FF00;
  v11 = vdupq_n_s32(0x37808081u);
  do
  {
    v12 = *a1;
    v13 = a1[1];
    a1 = (a1 + *(a2 + 8 * v6));
    v14 = (a3 + 32 * v6);
    v14[41] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v7) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[42] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v7) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[25] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v11);
    v14[26] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v11);
    v15 = vshrq_n_u32(v12, 0x10uLL);
    v16 = vshrq_n_u32(v13, 0x10uLL);
    v15.i32[0] = v15.i32[0] & 0xB4FF00FF | 0x4B000000;
    v15.i32[1] = v15.i32[1] & 0xB4FF00FF | 0x4B000000;
    v15.i32[2] = v15.i32[2] & 0xB4FF00FF | 0x4B000000;
    v15.i32[3] = v15.i32[3] & 0xB4FF00FF | 0x4B000000;
    v16.i32[0] = v16.i32[0] & 0xB4FF00FF | 0x4B000000;
    v16.i32[1] = v16.i32[1] & 0xB4FF00FF | 0x4B000000;
    v16.i32[2] = v16.i32[2] & 0xB4FF00FF | 0x4B000000;
    v16.i32[3] = v16.i32[3] & 0xB4FF00FF | 0x4B000000;
    v14[9] = vmulq_f32(vaddq_f32(v15, v8), v9);
    v14[10] = vmulq_f32(vaddq_f32(v16, v8), v9);
    v14[57] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v12, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    v14[58] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v13, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v9);
    ++v6;
  }

  while (v6 != 8);
}

void Read_8x8_RA8_vec(uint16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7 = vdupq_n_s32(0x4B400000u);
  v8 = vdupq_n_s32(0xCB400000);
  v9 = vdupq_n_s32(0x3B808081u);
  v10 = vdupq_n_s32(0x3B008081u);
  do
  {
    v11 = *a1;
    a1 = (a1 + *(a2 + 8 * v6));
    v12 = vshrq_n_u16(v11, 8uLL);
    v13 = *&v11 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    v14 = vmovl_high_u16(v13);
    v15 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*&v13), v7), v8), v9);
    v16 = vmulq_f32(vaddq_f32(vorrq_s8(v14, v7), v8), v9);
    v17 = a3 + 32 * v6;
    *(v17 + 2464) = v16;
    *(v17 + 2448) = v15;
    *(v17 + 656) = v15;
    *(v17 + 672) = v16;
    *(v17 + 400) = v15;
    *(v17 + 416) = v16;
    *(v17 + 144) = v15;
    *(v17 + 160) = v16;
    v18 = vmovl_high_u16(v12);
    v19 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*v12.i8), v7), v8), v9);
    v20 = vmulq_f32(vaddq_f32(vorrq_s8(v18, v7), v8), v9);
    *(v17 + 912) = v19;
    *(v17 + 928) = v20;
    *(v17 + 2208) = vcgtq_f32(v10, v20);
    *(v17 + 2192) = vcgtq_f32(v10, v19);
    ++v6;
  }

  while (v6 != 8);
}

void Read_8x8_R8_vec(uint8x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  v7 = vdupq_n_s32(0x4B400000u);
  v8 = vdupq_n_s32(0xCB400000);
  *(a3 + 132) = 392;
  v9 = vdupq_n_s32(0x3B808081u);
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v15 = *a1;
    a1 = (a1 + *(a2 + 8 * v6));
    v16 = vmovl_u8(v15);
    v17 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_high_u16(v16), v7), v8), v9);
    v18 = (a3 + 32 * v6);
    v18[154] = v17;
    v19 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*v16.i8), v7), v8), v9);
    v18[153] = v19;
    v18[41] = v19;
    v18[42] = v17;
    v18[25] = v19;
    v18[26] = v17;
    v18[9] = v19;
    v18[10] = v17;
    v18[57] = _Q3;
    v18[58] = _Q3;
    v18[138] = 0uLL;
    v18[137] = 0uLL;
    ++v6;
  }

  while (v6 != 8);
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
}

void Read_8x8_R16_vec(uint16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  v7 = vdupq_n_s32(0x4B400000u);
  v8 = vdupq_n_s32(0xCB400000);
  *(a3 + 132) = 392;
  v9 = vdupq_n_s32(0x37800080u);
  __asm { FMOV            V3.4S, #1.0 }

  do
  {
    v15 = *a1;
    a1 = (a1 + *(a2 + 8 * v6));
    v16 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_high_u16(v15), v7), v8), v9);
    v17 = (a3 + 32 * v6);
    v17[154] = v16;
    v18 = vmulq_f32(vaddq_f32(vorrq_s8(vmovl_u16(*v15.i8), v7), v8), v9);
    v17[153] = v18;
    v17[41] = v18;
    v17[42] = v16;
    v17[25] = v18;
    v17[26] = v16;
    v17[9] = v18;
    v17[10] = v16;
    v17[57] = _Q3;
    v17[58] = _Q3;
    v17[138] = 0uLL;
    v17[137] = 0uLL;
    ++v6;
  }

  while (v6 != 8);
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
}

void Read_8x8_RA16_vec(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7.i64[0] = 0xFFFF0000FFFFLL;
  v7.i64[1] = 0xFFFF0000FFFFLL;
  v8 = vdupq_n_s32(0x37800080u);
  do
  {
    v10 = *a1;
    v9 = a1[1];
    a1 = (a1 + *(a2 + 8 * v6));
    v11 = vmulq_f32(vcvtq_f32_u32(vandq_s8(v10, v7)), v8);
    v12 = vmulq_f32(vcvtq_f32_u32(vandq_s8(v9, v7)), v8);
    v13 = (a3 + 32 * v6);
    v13[154] = v12;
    v13[153] = v11;
    v13[41] = v11;
    v13[42] = v12;
    v13[25] = v11;
    v13[26] = v12;
    v13[9] = v11;
    v13[10] = v12;
    v13[57] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v10, 0x10uLL)), v8);
    v13[58] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v9, 0x10uLL)), v8);
    ++v6;
  }

  while (v6 != 8);
}

void Read_8x8_RGBA16_vec(int16x8_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  v7.i64[0] = 0xFFFF0000FFFFLL;
  v7.i64[1] = 0xFFFF0000FFFFLL;
  v8 = vdupq_n_s32(0x37800080u);
  do
  {
    v9 = a1[1];
    v10 = vuzp1q_s16(*a1, v9);
    v11 = vuzp2q_s16(*a1, v9);
    v12 = a1[2];
    v13 = a1[3];
    v14 = vuzp1q_s16(v12, v13);
    v15 = vuzp2q_s16(v12, v13);
    a1 = (a1 + *(a2 + 8 * v6));
    v16 = (a3 + 32 * v6);
    v16[9] = vmulq_f32(vcvtq_f32_u32(vandq_s8(v10, v7)), v8);
    v16[10] = vmulq_f32(vcvtq_f32_u32(vandq_s8(v14, v7)), v8);
    v16[25] = vmulq_f32(vcvtq_f32_u32(vandq_s8(v11, v7)), v8);
    v16[26] = vmulq_f32(vcvtq_f32_u32(vandq_s8(v15, v7)), v8);
    v16[41] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v10, 0x10uLL)), v8);
    v16[42] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v14, 0x10uLL)), v8);
    v16[57] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v11, 0x10uLL)), v8);
    v16[58] = vmulq_f32(vcvtq_f32_u32(vshrq_n_u32(v15, 0x10uLL)), v8);
    ++v6;
  }

  while (v6 != 8);
}

__n128 Read_8x8_Rf16_vec@<Q0>(float16x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (a3 + 272);
  bzero(a3, 0xAC0uLL);
  *(a3 + 132) = 392;
  v7 = (a3 + 688);
  v8 = (a2 + 8);
  v9 = 4;
  __asm { FMOV            V0.4S, #1.0 }

  do
  {
    v15 = *v8;
    v16 = (a1 + *(v8 - 1));
    v17 = vcvt_hight_f32_f16(*v16);
    v18 = vmaxnmq_f32(vcvtq_f32_f16(*v16->i8), 0);
    v19 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*a1), 0), _Q0);
    v20 = vminnmq_f32(vmaxnmq_f32(vcvt_hight_f32_f16(*a1->i8), 0), _Q0);
    v21 = v7 - 34;
    *v21 = v19;
    v21[1] = v20;
    v22 = vminnmq_f32(v18, _Q0);
    v23 = vminnmq_f32(vmaxnmq_f32(v17, 0), _Q0);
    v24 = v7 - 32;
    *v24 = v22;
    v24[1] = v23;
    a1 = &v16->i8[v15];
    v25 = v7 - 18;
    *v25 = v19;
    v25[1] = v20;
    v7[-16] = v22;
    v7[-15] = v23;
    v7[-2] = v19;
    v7[-1] = v20;
    *v7 = v22;
    v7[1] = v23;
    v7 += 4;
    v8 += 2;
    --v9;
  }

  while (v9);
  *(a3 + 134) = 0;
  *(a3 + 136) = 1;
  *(a3 + 2192) = 0u;
  *(a3 + 2208) = 0u;
  *(a3 + 2224) = 0u;
  *(a3 + 2240) = 0u;
  *(a3 + 2256) = 0u;
  *(a3 + 2272) = 0u;
  *(a3 + 2288) = 0u;
  *(a3 + 2304) = 0u;
  *(a3 + 2320) = 0u;
  *(a3 + 2336) = 0u;
  *(a3 + 2352) = 0u;
  *(a3 + 2368) = 0u;
  *(a3 + 2384) = 0u;
  *(a3 + 2400) = 0u;
  *(a3 + 2416) = 0u;
  *(a3 + 2432) = 0u;
  v6[40] = _Q0;
  v6[41] = _Q0;
  v6[42] = _Q0;
  v6[43] = _Q0;
  v6[44] = _Q0;
  v6[45] = _Q0;
  v6[46] = _Q0;
  v6[47] = _Q0;
  v6[48] = _Q0;
  v6[49] = _Q0;
  v6[50] = _Q0;
  v6[51] = _Q0;
  v6[52] = _Q0;
  v6[53] = _Q0;
  v6[54] = _Q0;
  v6[55] = _Q0;
  *(a3 + 124) = 2139095040;
  v26 = *(a3 + 144);
  v6[137] = *(a3 + 160);
  v6[136] = v26;
  v27 = *(a3 + 176);
  v6[139] = *(a3 + 192);
  v6[138] = v27;
  v28 = *(a3 + 224);
  v6[140] = *(a3 + 208);
  v6[141] = v28;
  v29 = *(a3 + 240);
  v6[143] = *(a3 + 256);
  v6[142] = v29;
  v30 = *v6;
  v6[145] = v6[1];
  v6[144] = v30;
  v31 = v6[2];
  v6[147] = v6[3];
  v6[146] = v31;
  v32 = v6[4];
  v6[149] = v6[5];
  v6[148] = v32;
  result = v6[6];
  v6[151] = v6[7];
  v6[150] = result;
  return result;
}

__n128 Read_8x8_RAf16_vec@<Q0>(int8x16_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  __asm { FMOV            V2.4S, #1.0 }

  do
  {
    v13 = *a1;
    v12 = a1[1];
    a1 = (a1 + *(a2 + 8 * v6));
    v14 = vqtbl1q_s8(v12, xmmword_298495980);
    v15 = vqtbl1q_s8(v13, xmmword_298495980);
    v16 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v15.i8), 0), _Q2);
    v17 = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v14.i8), 0), _Q2);
    v18 = (a3 + 32 * v6);
    v18[41] = v16;
    v18[42] = v17;
    v18[25] = v16;
    v18[26] = v17;
    v18[9] = v16;
    v18[10] = v17;
    v18[57] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v15, v15, 8uLL)), 0), _Q2);
    v18[58] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v14, v14, 8uLL)), 0), _Q2);
    ++v6;
  }

  while (v6 != 8);
  *(a3 + 124) = 2139095040;
  v19 = *(a3 + 144);
  *(a3 + 2464) = *(a3 + 160);
  *(a3 + 2448) = v19;
  v20 = *(a3 + 176);
  *(a3 + 2496) = *(a3 + 192);
  *(a3 + 2480) = v20;
  v21 = *(a3 + 208);
  *(a3 + 2528) = *(a3 + 224);
  *(a3 + 2512) = v21;
  v22 = *(a3 + 240);
  *(a3 + 2560) = *(a3 + 256);
  *(a3 + 2544) = v22;
  v23 = *(a3 + 272);
  *(a3 + 2592) = *(a3 + 288);
  *(a3 + 2576) = v23;
  v24 = *(a3 + 304);
  *(a3 + 2624) = *(a3 + 320);
  *(a3 + 2608) = v24;
  v25 = *(a3 + 336);
  *(a3 + 2656) = *(a3 + 352);
  *(a3 + 2640) = v25;
  result = *(a3 + 368);
  *(a3 + 2688) = *(a3 + 384);
  *(a3 + 2672) = result;
  return result;
}

void Read_8x8_RGBAf16_vec(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = 0;
  *(a3 + 132) = 392;
  *(a3 + 134) = -1;
  *(a3 + 136) = -1;
  __asm { FMOV            V2.4S, #1.0 }

  do
  {
    v14 = *(a1 + 32);
    v15 = *a1;
    a1 += *(a2 + 8 * v6);
    v12 = vqtbl2q_s8(v15, xmmword_298495990);
    v15.val[0] = vqtbl2q_s8(v15, xmmword_2984959A0);
    v15.val[1] = vqtbl2q_s8(v14, xmmword_298495990);
    v14.val[0] = vqtbl2q_s8(v14, xmmword_2984959A0);
    v13 = (a3 + 32 * v6);
    v13[9] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v15.val[0].i8), 0), _Q2);
    v13[10] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v14.val[0].i8), 0), _Q2);
    v13[25] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v15.val[0], v15.val[0], 8uLL)), 0), _Q2);
    v13[26] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v14.val[0], v14.val[0], 8uLL)), 0), _Q2);
    v13[41] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v12.i8), 0), _Q2);
    v13[42] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*v15.val[1].i8), 0), _Q2);
    v13[57] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v12, v12, 8uLL)), 0), _Q2);
    v13[58] = vminnmq_f32(vmaxnmq_f32(vcvtq_f32_f16(*&vextq_s8(v15.val[1], v15.val[1], 8uLL)), 0), _Q2);
    ++v6;
  }

  while (v6 != 8);
}

float32x2_t SetAlphaOne_4x4_vec(uint64_t a1)
{
  *(a1 + 134) = 0;
  *(a1 + 136) = 1;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  __asm { FMOV            V7.4S, #1.0 }

  *(a1 + 368) = _Q7;
  *(a1 + 384) = _Q7;
  *(a1 + 336) = _Q7;
  *(a1 + 352) = _Q7;
  if (*(a1 + 124) >= 0.0)
  {
    v8 = *(a1 + 176);
    v7 = *(a1 + 192);
    v10 = *(a1 + 144);
    v9 = *(a1 + 160);
    v12 = *(a1 + 240);
    v11 = *(a1 + 256);
    v14 = *(a1 + 208);
    v13 = *(a1 + 224);
    v16 = *(a1 + 304);
    v15 = *(a1 + 320);
    v18 = *(a1 + 272);
    v17 = *(a1 + 288);
  }

  else
  {
    v6 = *(a1 + 32);
    v8 = *(a1 + 176);
    v7 = *(a1 + 192);
    v10 = *(a1 + 144);
    v9 = *(a1 + 160);
    v12 = *(a1 + 240);
    v11 = *(a1 + 256);
    v14 = *(a1 + 208);
    v13 = *(a1 + 224);
    v16 = *(a1 + 304);
    v15 = *(a1 + 320);
    v18 = *(a1 + 272);
    v17 = *(a1 + 288);
    if (v6)
    {
      v19 = *v6;
    }

    else
    {
      v19 = xmmword_2984959B0;
    }

    v20 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v19.f32, 1), v7, v19.f32[0]), v15, v19, 2);
    v21 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v19.f32, 1), v8, v19.f32[0]), v16, v19, 2);
    v22 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v13, *v19.f32, 1), v9, v19.f32[0]), v17, v19, 2);
    v23 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v19.f32, 1), v10, v19.f32[0]), v18, v19, 2);
    *(a1 + 656) = v23;
    *(a1 + 672) = v22;
    *(a1 + 688) = v21;
    *(a1 + 704) = v20;
    v24 = vsubq_f32(v9, v22);
    v25 = vsubq_f32(v7, v20);
    v26 = vsubq_f32(v10, v23);
    v27 = vsubq_f32(v8, v21);
    v28 = vsubq_f32(v12, v21);
    v29 = vsubq_f32(v14, v23);
    v30 = vsubq_f32(v11, v20);
    v31 = vsubq_f32(v13, v22);
    v32 = vsubq_f32(v16, v21);
    v33 = vsubq_f32(v18, v23);
    v34 = vsubq_f32(v15, v20);
    v35 = vsubq_f32(v17, v22);
    v36 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v29, v29), v26, v26), v33, v33), vmlaq_f32(vmlaq_f32(vmulq_f32(v28, v28), v27, v27), v32, v32)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v31, v31), v24, v24), v35, v35), vmlaq_f32(vmlaq_f32(vmulq_f32(v30, v30), v25, v25), v34, v34)));
    v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
    v36.f32[0] = vrecpes_f32(vpadd_f32(*v36.f32, *v36.f32).f32[0]);
    *(a1 + 124) = (v36.f32[0] * 3.0) + (v36.f32[0] * 3.0);
  }

  v37 = vzip1q_s32(v10, v18);
  v38 = vzip2q_s32(v9, v17);
  v39 = vzip2q_s32(v10, v18);
  v40 = vzip2q_s32(v14, _Q7);
  v41 = vzip1q_s32(v39, v40);
  v42 = vzip2q_s32(v39, v40);
  v43 = vextq_s8(_Q7, _Q7, 0xCuLL);
  v44 = vzip1q_s32(v37, v43);
  v44.i32[1] = v14.i32[0];
  v45 = vzip1q_s32(_Q7, _Q7);
  v46 = vzip2q_s32(v37, v45);
  v46.i32[1] = v14.i32[1];
  *(a1 + 432) = v41;
  *(a1 + 448) = v42;
  v41.i64[0] = __PAIR64__(v13.u32[0], v9.u32[0]);
  v41.i64[1] = __PAIR64__(1.0, v17.u32[0]);
  v47 = vextq_s8(vuzp2q_s32(_Q7, v9), _Q7, 8uLL);
  v47.i32[1] = v13.i32[1];
  v47.i32[2] = v17.i32[1];
  v48 = vextq_s8(_Q7, _Q7, 4uLL);
  v49 = vzip1q_s32(v38, v48);
  v49.i32[1] = v13.i32[2];
  v50 = vzip2q_s32(v38, _Q7);
  v50.i32[1] = v13.i32[3];
  *(a1 + 400) = v44;
  *(a1 + 416) = v46;
  *(a1 + 496) = v49;
  *(a1 + 512) = v50;
  *(a1 + 464) = v41;
  *(a1 + 480) = v47;
  v51 = vzip1q_s32(v8, v16);
  v52 = vzip2q_s32(v7, v15);
  v53 = vzip2q_s32(v8, v16);
  v54 = vzip2q_s32(v12, _Q7);
  v55 = vzip1q_s32(v51, v43);
  v55.i32[1] = v12.i32[0];
  v56 = vzip2q_s32(v51, v45);
  v56.i32[1] = v12.i32[1];
  *(a1 + 560) = vzip1q_s32(v53, v54);
  *(a1 + 576) = vzip2q_s32(v53, v54);
  v53.i64[0] = __PAIR64__(v11.u32[0], v7.u32[0]);
  v53.i64[1] = __PAIR64__(1.0, v15.u32[0]);
  v57 = vextq_s8(vuzp2q_s32(_Q7, v7), _Q7, 8uLL);
  v57.i32[1] = v11.i32[1];
  v57.i32[2] = v15.i32[1];
  v58 = vzip1q_s32(v52, v48);
  v58.i32[1] = v11.i32[2];
  *(a1 + 528) = v55;
  *(a1 + 544) = v56;
  v59 = vzip2q_s32(v52, _Q7);
  v59.i32[1] = v11.i32[3];
  *(a1 + 624) = v58;
  *(a1 + 640) = v59;
  *(a1 + 592) = v53;
  *(a1 + 608) = v57;
  v60 = vmulq_f32(v7, v7);
  v61 = vmulq_f32(v8, v8);
  v62 = vpaddq_f32(vaddq_f32(vaddq_f32(v10, v8), vaddq_f32(v9, v7)), vaddq_f32(vaddq_f32(v14, v12), vaddq_f32(v13, v11)));
  __asm { FMOV            V16.4S, #4.0 }

  v64 = vpaddq_f32(v62, vpaddq_f32(vaddq_f32(vaddq_f32(v18, v16), vaddq_f32(v17, v15)), _Q16));
  v65 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(v61, v10, v10), vmlaq_f32(v60, v9, v9)), vaddq_f32(vmlaq_f32(vmulq_f32(v12, v12), v14, v14), vmlaq_f32(vmulq_f32(v11, v11), v13, v13))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v16, v16), v18, v18), vmlaq_f32(vmulq_f32(v15, v15), v17, v17)), _Q16));
  v66 = vmulq_f32(v64, vdupq_n_s32(0x3D800000u));
  v67 = vmlsq_f32(v65, v66, v64);
  *(a1 + 16) = v66;
  v67.i64[0] = vpaddq_f32(v67, v67).u64[0];
  result = vpadd_f32(*v67.f32, *v67.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

float32x2_t FlattenNon_4x4_vec(uint64_t a1)
{
  v1 = *a1;
  v2 = vdupq_lane_s32(*a1, 0);
  v3 = *(a1 + 368);
  v4 = *(a1 + 384);
  v6 = *(a1 + 336);
  v5 = *(a1 + 352);
  v7 = vmlaq_f32(v2, vsubq_f32(*(a1 + 160), v2), v5);
  v8 = vmlaq_f32(v2, vsubq_f32(*(a1 + 144), v2), v6);
  v9 = vmlaq_f32(v2, vsubq_f32(*(a1 + 192), v2), v4);
  v10 = vmlaq_f32(v2, vsubq_f32(*(a1 + 176), v2), v3);
  *(a1 + 176) = v10;
  *(a1 + 192) = v9;
  *(a1 + 144) = v8;
  *(a1 + 160) = v7;
  v11 = vdupq_lane_s32(*v1.i8, 1);
  v12 = vmlaq_f32(v11, vsubq_f32(*(a1 + 224), v11), v5);
  v13 = vmlaq_f32(v11, vsubq_f32(*(a1 + 208), v11), v6);
  v14 = vmlaq_f32(v11, vsubq_f32(*(a1 + 256), v11), v4);
  v15 = vmlaq_f32(v11, vsubq_f32(*(a1 + 240), v11), v3);
  *(a1 + 240) = v15;
  *(a1 + 256) = v14;
  v16 = vdupq_laneq_s32(v1, 2);
  *(a1 + 208) = v13;
  *(a1 + 224) = v12;
  v17 = vmlaq_f32(v16, vsubq_f32(*(a1 + 288), v16), v5);
  v18 = vmlaq_f32(v16, vsubq_f32(*(a1 + 272), v16), v6);
  v19 = vmlaq_f32(v16, vsubq_f32(*(a1 + 320), v16), v4);
  v20 = vmlaq_f32(v16, vsubq_f32(*(a1 + 304), v16), v3);
  *(a1 + 304) = v20;
  *(a1 + 320) = v19;
  *(a1 + 272) = v18;
  *(a1 + 288) = v17;
  *(a1 + 134) = 0;
  *(a1 + 136) = 1;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  __asm { FMOV            V20.4S, #1.0 }

  *(a1 + 368) = _Q20;
  *(a1 + 384) = _Q20;
  *(a1 + 336) = _Q20;
  *(a1 + 352) = _Q20;
  if (*(a1 + 124) < 0.0)
  {
    v26 = *(a1 + 32);
    if (v26)
    {
      v27 = *v26;
    }

    else
    {
      v27 = xmmword_2984959B0;
    }

    v28 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v27.f32, 1), v9, v27.f32[0]), v19, v27, 2);
    v29 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15, *v27.f32, 1), v10, v27.f32[0]), v20, v27, 2);
    v30 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v27.f32, 1), v7, v27.f32[0]), v17, v27, 2);
    v31 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v13, *v27.f32, 1), v8, v27.f32[0]), v18, v27, 2);
    *(a1 + 656) = v31;
    *(a1 + 672) = v30;
    *(a1 + 688) = v29;
    *(a1 + 704) = v28;
    v32 = vsubq_f32(v7, v30);
    v33 = vsubq_f32(v9, v28);
    v34 = vsubq_f32(v8, v31);
    v35 = vsubq_f32(v10, v29);
    v36 = vsubq_f32(v15, v29);
    v37 = vsubq_f32(v13, v31);
    v38 = vsubq_f32(v14, v28);
    v39 = vsubq_f32(v12, v30);
    v40 = vsubq_f32(v20, v29);
    v41 = vsubq_f32(v18, v31);
    v42 = vsubq_f32(v19, v28);
    v43 = vsubq_f32(v17, v30);
    v44 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v37, v37), v34, v34), v41, v41), vmlaq_f32(vmlaq_f32(vmulq_f32(v36, v36), v35, v35), v40, v40)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v39, v39), v32, v32), v43, v43), vmlaq_f32(vmlaq_f32(vmulq_f32(v38, v38), v33, v33), v42, v42)));
    v44.i64[0] = vpaddq_f32(v44, v44).u64[0];
    v44.f32[0] = vrecpes_f32(vpadd_f32(*v44.f32, *v44.f32).f32[0]);
    *(a1 + 124) = (v44.f32[0] * 3.0) + (v44.f32[0] * 3.0);
  }

  v45 = vzip1q_s32(v8, v18);
  v46 = vzip2q_s32(v7, v17);
  v47 = vzip2q_s32(v8, v18);
  v48 = vzip2q_s32(v13, _Q20);
  v49 = vzip1q_s32(v47, v48);
  v50 = vzip2q_s32(v47, v48);
  v51 = vextq_s8(_Q20, _Q20, 0xCuLL);
  v52 = vzip1q_s32(v45, v51);
  v52.i32[1] = v13.i32[0];
  v53 = vzip1q_s32(_Q20, _Q20);
  v54 = vzip2q_s32(v45, v53);
  v54.i32[1] = v13.i32[1];
  *(a1 + 432) = v49;
  *(a1 + 448) = v50;
  v49.i64[0] = __PAIR64__(v12.u32[0], v7.u32[0]);
  v49.i64[1] = __PAIR64__(1.0, v17.u32[0]);
  v55 = vextq_s8(vuzp2q_s32(_Q20, v7), _Q20, 8uLL);
  v55.i32[1] = v12.i32[1];
  v55.i32[2] = v17.i32[1];
  v56 = vextq_s8(_Q20, _Q20, 4uLL);
  v57 = vzip1q_s32(v46, v56);
  v57.i32[1] = v12.i32[2];
  v58 = vzip2q_s32(v46, _Q20);
  v58.i32[1] = v12.i32[3];
  *(a1 + 400) = v52;
  *(a1 + 416) = v54;
  *(a1 + 496) = v57;
  *(a1 + 512) = v58;
  *(a1 + 464) = v49;
  *(a1 + 480) = v55;
  v59 = vzip1q_s32(v10, v20);
  v60 = vzip2q_s32(v9, v19);
  v61 = vzip2q_s32(v10, v20);
  v62 = vzip2q_s32(v15, _Q20);
  v63 = vzip1q_s32(v59, v51);
  v63.i32[1] = v15.i32[0];
  v64 = vzip2q_s32(v59, v53);
  v64.i32[1] = v15.i32[1];
  *(a1 + 560) = vzip1q_s32(v61, v62);
  *(a1 + 576) = vzip2q_s32(v61, v62);
  v61.i64[0] = __PAIR64__(v14.u32[0], v9.u32[0]);
  v61.i64[1] = __PAIR64__(1.0, v19.u32[0]);
  v65 = vextq_s8(vuzp2q_s32(_Q20, v9), _Q20, 8uLL);
  v65.i32[1] = v14.i32[1];
  v65.i32[2] = v19.i32[1];
  v66 = vzip1q_s32(v60, v56);
  v66.i32[1] = v14.i32[2];
  *(a1 + 528) = v63;
  *(a1 + 544) = v64;
  v67 = vzip2q_s32(v60, _Q20);
  v67.i32[1] = v14.i32[3];
  *(a1 + 624) = v66;
  *(a1 + 640) = v67;
  *(a1 + 592) = v61;
  *(a1 + 608) = v65;
  v68 = vmulq_f32(v9, v9);
  v69 = vmulq_f32(v10, v10);
  v70 = vpaddq_f32(vaddq_f32(vaddq_f32(v8, v10), vaddq_f32(v7, v9)), vaddq_f32(vaddq_f32(v13, v15), vaddq_f32(v12, v14)));
  __asm { FMOV            V4.4S, #4.0 }

  v72 = vpaddq_f32(v70, vpaddq_f32(vaddq_f32(vaddq_f32(v18, v20), vaddq_f32(v17, v19)), _Q4));
  v73 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(v69, v8, v8), vmlaq_f32(v68, v7, v7)), vaddq_f32(vmlaq_f32(vmulq_f32(v15, v15), v13, v13), vmlaq_f32(vmulq_f32(v14, v14), v12, v12))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v20, v20), v18, v18), vmlaq_f32(vmulq_f32(v19, v19), v17, v17)), _Q4));
  v74 = vmulq_f32(v72, vdupq_n_s32(0x3D800000u));
  v75 = vmlsq_f32(v73, v74, v72);
  *(a1 + 16) = v74;
  v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
  result = vpadd_f32(*v75.f32, *v75.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

float32x2_t FlattenPre_4x4_vec(uint64_t a1)
{
  v1 = *(a1 + 336);
  v2 = *(a1 + 352);
  v3 = *(a1 + 368);
  v4 = *(a1 + 384);
  __asm { FMOV            V0.4S, #1.0 }

  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v1, _Q0), vceqq_f32(v3, _Q0)), vandq_s8(vceqq_f32(v2, _Q0), vceqq_f32(v4, _Q0)))) & 0x80000000) == 0)
  {
    v10 = vminnmq_f32(*(a1 + 208), v1);
    v11 = vminnmq_f32(*(a1 + 224), v2);
    v12 = vminnmq_f32(*(a1 + 240), v3);
    v13 = vminnmq_f32(*(a1 + 256), v4);
    v14 = vminnmq_f32(*(a1 + 272), v1);
    v15 = vminnmq_f32(*(a1 + 288), v2);
    v16 = vminnmq_f32(*(a1 + 304), v3);
    v17 = vminnmq_f32(*(a1 + 320), v4);
    v18 = *a1;
    v19 = vdupq_lane_s32(*a1, 0);
    v20 = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(*(a1 + 192), v4), v19), v4, *a1, 0);
    v21 = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(*(a1 + 176), v3), v19), v3, *a1, 0);
    v22 = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(*(a1 + 160), v2), v19), v2, *a1, 0);
    *(a1 + 144) = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(*(a1 + 144), v1), v19), v1, *a1, 0);
    *(a1 + 160) = v22;
    *(a1 + 176) = v21;
    *(a1 + 192) = v20;
    v23 = vdupq_lane_s32(*v18.f32, 1);
    *(a1 + 208) = vmlsq_lane_f32(vaddq_f32(v10, v23), v1, *v18.f32, 1);
    *(a1 + 224) = vmlsq_lane_f32(vaddq_f32(v11, v23), v2, *v18.f32, 1);
    *(a1 + 240) = vmlsq_lane_f32(vaddq_f32(v12, v23), v3, *v18.f32, 1);
    *(a1 + 256) = vmlsq_lane_f32(vaddq_f32(v13, v23), v4, *v18.f32, 1);
    v24 = vdupq_laneq_s32(v18, 2);
    *(a1 + 272) = vmlsq_laneq_f32(vaddq_f32(v14, v24), v1, v18, 2);
    *(a1 + 288) = vmlsq_laneq_f32(vaddq_f32(v15, v24), v2, v18, 2);
    *(a1 + 304) = vmlsq_laneq_f32(vaddq_f32(v16, v24), v3, v18, 2);
    *(a1 + 320) = vmlsq_laneq_f32(vaddq_f32(v17, v24), v4, v18, 2);
  }

  *(a1 + 134) = 0;
  *(a1 + 136) = 1;
  *(a1 + 720) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 368) = _Q0;
  *(a1 + 384) = _Q0;
  v25 = *(a1 + 124);
  *(a1 + 336) = _Q0;
  *(a1 + 352) = _Q0;
  if (v25 >= 0.0)
  {
    v28 = *(a1 + 176);
    v27 = *(a1 + 192);
    v30 = *(a1 + 144);
    v29 = *(a1 + 160);
    v32 = *(a1 + 240);
    v31 = *(a1 + 256);
    v34 = *(a1 + 208);
    v33 = *(a1 + 224);
    v36 = *(a1 + 304);
    v35 = *(a1 + 320);
    v38 = *(a1 + 272);
    v37 = *(a1 + 288);
  }

  else
  {
    v26 = *(a1 + 32);
    v28 = *(a1 + 176);
    v27 = *(a1 + 192);
    v30 = *(a1 + 144);
    v29 = *(a1 + 160);
    v32 = *(a1 + 240);
    v31 = *(a1 + 256);
    v34 = *(a1 + 208);
    v33 = *(a1 + 224);
    v36 = *(a1 + 304);
    v35 = *(a1 + 320);
    v38 = *(a1 + 272);
    v37 = *(a1 + 288);
    if (v26)
    {
      v39 = *v26;
    }

    else
    {
      v39 = xmmword_2984959B0;
    }

    v40 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v31, *v39.f32, 1), v27, v39.f32[0]), v35, v39, 2);
    v41 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v32, *v39.f32, 1), v28, v39.f32[0]), v36, v39, 2);
    v42 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v33, *v39.f32, 1), v29, v39.f32[0]), v37, v39, 2);
    v43 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v34, *v39.f32, 1), v30, v39.f32[0]), v38, v39, 2);
    *(a1 + 656) = v43;
    *(a1 + 672) = v42;
    *(a1 + 688) = v41;
    *(a1 + 704) = v40;
    v44 = vsubq_f32(v29, v42);
    v45 = vsubq_f32(v27, v40);
    v46 = vsubq_f32(v30, v43);
    v47 = vsubq_f32(v28, v41);
    v48 = vsubq_f32(v32, v41);
    v49 = vsubq_f32(v34, v43);
    v50 = vsubq_f32(v31, v40);
    v51 = vsubq_f32(v33, v42);
    v52 = vsubq_f32(v36, v41);
    v53 = vsubq_f32(v38, v43);
    v54 = vsubq_f32(v35, v40);
    v55 = vsubq_f32(v37, v42);
    v56 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v49, v49), v46, v46), v53, v53), vmlaq_f32(vmlaq_f32(vmulq_f32(v48, v48), v47, v47), v52, v52)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v51, v51), v44, v44), v55, v55), vmlaq_f32(vmlaq_f32(vmulq_f32(v50, v50), v45, v45), v54, v54)));
    v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
    v56.f32[0] = vrecpes_f32(vpadd_f32(*v56.f32, *v56.f32).f32[0]);
    *(a1 + 124) = (v56.f32[0] * 3.0) + (v56.f32[0] * 3.0);
  }

  v57 = vzip1q_s32(v30, v38);
  v58 = vzip2q_s32(v29, v37);
  v59 = vzip2q_s32(v30, v38);
  v60 = vzip2q_s32(v34, _Q0);
  v61 = vzip1q_s32(v59, v60);
  v62 = vzip2q_s32(v59, v60);
  v63 = vextq_s8(_Q0, _Q0, 0xCuLL);
  v64 = vzip1q_s32(v57, v63);
  v64.i32[1] = v34.i32[0];
  v65 = vzip1q_s32(_Q0, _Q0);
  v66 = vzip2q_s32(v57, v65);
  v66.i32[1] = v34.i32[1];
  *(a1 + 432) = v61;
  *(a1 + 448) = v62;
  v61.i64[0] = __PAIR64__(v33.u32[0], v29.u32[0]);
  v61.i64[1] = __PAIR64__(1.0, v37.u32[0]);
  v67 = vextq_s8(vuzp2q_s32(_Q0, v29), _Q0, 8uLL);
  v67.i32[1] = v33.i32[1];
  v67.i32[2] = v37.i32[1];
  v68 = vextq_s8(_Q0, _Q0, 4uLL);
  v69 = vzip1q_s32(v58, v68);
  v69.i32[1] = v33.i32[2];
  v70 = vzip2q_s32(v58, _Q0);
  v70.i32[1] = v33.i32[3];
  *(a1 + 400) = v64;
  *(a1 + 416) = v66;
  *(a1 + 496) = v69;
  *(a1 + 512) = v70;
  *(a1 + 464) = v61;
  *(a1 + 480) = v67;
  v71 = vzip1q_s32(v28, v36);
  v72 = vzip2q_s32(v27, v35);
  v73 = vzip2q_s32(v28, v36);
  v74 = vzip2q_s32(v32, _Q0);
  v75 = vzip1q_s32(v71, v63);
  v75.i32[1] = v32.i32[0];
  v76 = vzip2q_s32(v71, v65);
  v76.i32[1] = v32.i32[1];
  *(a1 + 560) = vzip1q_s32(v73, v74);
  *(a1 + 576) = vzip2q_s32(v73, v74);
  v73.i64[0] = __PAIR64__(v31.u32[0], v27.u32[0]);
  v73.i64[1] = __PAIR64__(1.0, v35.u32[0]);
  v77 = vextq_s8(vuzp2q_s32(_Q0, v27), _Q0, 8uLL);
  v77.i32[1] = v31.i32[1];
  v77.i32[2] = v35.i32[1];
  v78 = vzip1q_s32(v72, v68);
  v78.i32[1] = v31.i32[2];
  *(a1 + 528) = v75;
  *(a1 + 544) = v76;
  v79 = vzip2q_s32(v72, _Q0);
  v79.i32[1] = v31.i32[3];
  *(a1 + 624) = v78;
  *(a1 + 640) = v79;
  *(a1 + 592) = v73;
  *(a1 + 608) = v77;
  v80 = vmulq_f32(v27, v27);
  v81 = vmulq_f32(v28, v28);
  v82 = vpaddq_f32(vaddq_f32(vaddq_f32(v30, v28), vaddq_f32(v29, v27)), vaddq_f32(vaddq_f32(v34, v32), vaddq_f32(v33, v31)));
  __asm { FMOV            V16.4S, #4.0 }

  v84 = vpaddq_f32(v82, vpaddq_f32(vaddq_f32(vaddq_f32(v38, v36), vaddq_f32(v37, v35)), _Q16));
  v85 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(v81, v30, v30), vmlaq_f32(v80, v29, v29)), vaddq_f32(vmlaq_f32(vmulq_f32(v32, v32), v34, v34), vmlaq_f32(vmulq_f32(v31, v31), v33, v33))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v36, v36), v38, v38), vmlaq_f32(vmulq_f32(v35, v35), v37, v37)), _Q16));
  v86 = vmulq_f32(v84, vdupq_n_s32(0x3D800000u));
  v87 = vmlsq_f32(v85, v86, v84);
  *(a1 + 16) = v86;
  v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
  result = vpadd_f32(*v87.f32, *v87.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

uint64_t Premultiply_4x4_vec(uint64_t result)
{
  v2 = *(result + 336);
  v1 = *(result + 352);
  v3 = *(result + 368);
  v4 = *(result + 384);
  __asm { FMOV            V23.4S, #1.0 }

  v10 = vminnmq_f32(vmulq_f32(*(result + 144), v2), _Q23);
  v11 = vminnmq_f32(vmulq_f32(*(result + 160), v1), _Q23);
  v12 = vminnmq_f32(vmulq_f32(*(result + 176), v3), _Q23);
  v13 = vminnmq_f32(vmulq_f32(*(result + 192), v4), _Q23);
  *(result + 176) = v12;
  *(result + 192) = v13;
  *(result + 144) = v10;
  *(result + 160) = v11;
  v14 = vminnmq_f32(vmulq_f32(v2, *(result + 208)), _Q23);
  v15 = vminnmq_f32(vmulq_f32(v1, *(result + 224)), _Q23);
  v16 = vminnmq_f32(vmulq_f32(v3, *(result + 240)), _Q23);
  v17 = vminnmq_f32(vmulq_f32(v4, *(result + 256)), _Q23);
  *(result + 240) = v16;
  *(result + 256) = v17;
  *(result + 208) = v14;
  *(result + 224) = v15;
  v18 = vminnmq_f32(vmulq_f32(v2, *(result + 272)), _Q23);
  v19 = vminnmq_f32(vmulq_f32(v1, *(result + 288)), _Q23);
  v20 = vminnmq_f32(vmulq_f32(v3, *(result + 304)), _Q23);
  v21 = vminnmq_f32(vmulq_f32(v4, *(result + 320)), _Q23);
  *(result + 304) = v20;
  *(result + 320) = v21;
  v22 = *(result + 124);
  *(result + 272) = v18;
  *(result + 288) = v19;
  if (v22 < 0.0)
  {
    v23 = *(result + 32);
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = xmmword_2984959B0;
    }

    v25 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v17, *v24.f32, 1), v13, v24.f32[0]), v21, v24, 2);
    v26 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v16, *v24.f32, 1), v12, v24.f32[0]), v20, v24, 2);
    v27 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15, *v24.f32, 1), v11, v24.f32[0]), v19, v24, 2);
    v28 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v24.f32, 1), v10, v24.f32[0]), v18, v24, 2);
    *(result + 656) = v28;
    *(result + 672) = v27;
    *(result + 688) = v26;
    *(result + 704) = v25;
    v29 = vsubq_f32(v11, v27);
    v30 = vsubq_f32(v13, v25);
    v31 = vsubq_f32(v10, v28);
    v32 = vsubq_f32(v12, v26);
    v33 = vsubq_f32(v16, v26);
    v34 = vsubq_f32(v14, v28);
    v35 = vsubq_f32(v17, v25);
    v36 = vsubq_f32(v15, v27);
    v37 = vsubq_f32(v20, v26);
    v38 = vsubq_f32(v18, v28);
    v39 = vsubq_f32(v21, v25);
    v40 = vsubq_f32(v19, v27);
    v41 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v34), v31, v31), v38, v38), vmlaq_f32(vmlaq_f32(vmulq_f32(v33, v33), v32, v32), v37, v37)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v36, v36), v29, v29), v40, v40), vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v30, v30), v39, v39)));
    v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
    v41.f32[0] = vrecpes_f32(vpadd_f32(*v41.f32, *v41.f32).f32[0]);
    *(result + 124) = (v41.f32[0] * 3.0) + (v41.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v42 = vdupq_n_s32(0x3B808081u);
    v43 = vcgeq_f32(v42, v3);
    v44 = vcgeq_f32(v42, v4);
    v45 = vcgeq_f32(v42, v1);
    v46 = vcgeq_f32(v42, v2);
    *(result + 720) = v46;
    *(result + 736) = v45;
    *(result + 752) = v43;
    *(result + 768) = v44;
    v47 = vorrq_s8(vandq_s8(vuzp1q_s16(v46, v45), xmmword_298495650), vandq_s8(vuzp1q_s16(v43, v44), xmmword_298495640));
    v47.i16[0] = vaddvq_s16(v47);
    *(result + 784) = v47.i16[0];
    *(result + 134) = vaddlv_u8(vcnt_s8(*v47.i8));
  }

  v48 = vzip1q_s32(v11, v19);
  v49 = vzip1q_s32(v10, v18);
  v50 = vzip2q_s32(v11, v19);
  v51 = vzip2q_s32(v10, v18);
  v52 = vzip2q_s32(v14, v2);
  v53 = vzip1q_s32(v51, v52);
  v54 = vzip2q_s32(v51, v52);
  v55 = vzip2q_s32(v49, vuzp2q_s32(v49, v14));
  v55.i32[3] = v2.i32[1];
  v56 = vzip1q_s32(v49, v14);
  v56.i32[3] = v2.i32[0];
  *(result + 432) = v53;
  *(result + 448) = v54;
  v57 = vzip2q_s32(v48, vuzp2q_s32(v48, v15));
  v57.i32[3] = v1.i32[1];
  *(result + 400) = v56;
  *(result + 416) = v55;
  v58 = vzip1q_s32(v48, v15);
  v58.i32[3] = v1.i32[0];
  v59 = vextq_s8(vzip2q_s32(v15, v50), v50, 4uLL);
  v59.i32[3] = v1.i32[3];
  v60 = vzip2q_s32(vextq_s8(v50, v50, 8uLL), v15);
  v60.i32[3] = v1.i32[2];
  *(result + 496) = v60;
  *(result + 512) = v59;
  *(result + 464) = v58;
  *(result + 480) = v57;
  v61 = vzip1q_s32(v13, v21);
  v62 = vzip1q_s32(v12, v20);
  v63 = vzip2q_s32(v13, v21);
  v64 = vzip2q_s32(v12, v20);
  v65 = vzip2q_s32(v16, v3);
  v66 = vzip1q_s32(v64, v65);
  v67 = vzip2q_s32(v62, vuzp2q_s32(v62, v16));
  v67.i32[3] = v3.i32[1];
  v68 = vzip1q_s32(v62, v16);
  v68.i32[3] = v3.i32[0];
  v69 = vzip2q_s32(v61, vuzp2q_s32(v61, v17));
  v69.i32[3] = v4.i32[1];
  v70 = vzip1q_s32(v61, v17);
  v70.i32[3] = v4.i32[0];
  v71 = vzip2q_s32(v64, v65);
  v72 = vextq_s8(vzip2q_s32(v17, v63), v63, 4uLL);
  v72.i32[3] = v4.i32[3];
  *(result + 560) = v66;
  *(result + 576) = v71;
  v73 = vzip2q_s32(vextq_s8(v63, v63, 8uLL), v17);
  v73.i32[3] = v4.i32[2];
  *(result + 528) = v68;
  *(result + 544) = v67;
  *(result + 624) = v73;
  *(result + 640) = v72;
  *(result + 592) = v70;
  *(result + 608) = v69;
  v74 = vmulq_f32(v3, v3);
  v75 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v10, v12), vaddq_f32(v11, v13)), vaddq_f32(vaddq_f32(v14, v16), vaddq_f32(v15, v17))), vpaddq_f32(vaddq_f32(vaddq_f32(v18, v20), vaddq_f32(v19, v21)), vaddq_f32(vaddq_f32(v2, v3), vaddq_f32(v1, v4))));
  v76 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v12, v12), v10, v10), vmlaq_f32(vmulq_f32(v13, v13), v11, v11)), vaddq_f32(vmlaq_f32(vmulq_f32(v16, v16), v14, v14), vmlaq_f32(vmulq_f32(v17, v17), v15, v15))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v20, v20), v18, v18), vmlaq_f32(vmulq_f32(v21, v21), v19, v19)), vaddq_f32(vmlaq_f32(v74, v2, v2), vmlaq_f32(vmulq_f32(v4, v4), v1, v1))));
  v77 = vmulq_f32(v75, vdupq_n_s32(0x3D800000u));
  v78 = vmlsq_f32(v76, v77, v75);
  *(result + 16) = v77;
  v78.i64[0] = vpaddq_f32(v78, v78).u64[0];
  *(result + 120) = vpadd_f32(*v78.f32, *v78.f32).u32[0];
  if (*(result + 136) <= 0)
  {
    *(result + 136) = v77.f32[3] >= 0.99988;
  }

  return result;
}

uint64_t PassThrough_4x4_vec(uint64_t result)
{
  if (*(result + 124) < 0.0)
  {
    v1 = *(result + 32);
    v2 = *(result + 176);
    v3 = *(result + 192);
    v4 = *(result + 144);
    v5 = *(result + 160);
    v7 = *(result + 240);
    v6 = *(result + 256);
    v9 = *(result + 208);
    v8 = *(result + 224);
    v11 = *(result + 304);
    v10 = *(result + 320);
    v13 = *(result + 272);
    v12 = *(result + 288);
    if (v1)
    {
      v14 = *v1;
    }

    else
    {
      v14 = xmmword_2984959B0;
    }

    v15 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v6, *v14.f32, 1), v3, v14.f32[0]), v10, v14, 2);
    v16 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v7, *v14.f32, 1), v2, v14.f32[0]), v11, v14, 2);
    v17 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v8, *v14.f32, 1), v5, v14.f32[0]), v12, v14, 2);
    v18 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v14.f32, 1), v4, v14.f32[0]), v13, v14, 2);
    *(result + 656) = v18;
    *(result + 672) = v17;
    *(result + 688) = v16;
    *(result + 704) = v15;
    v19 = vsubq_f32(v5, v17);
    v20 = vsubq_f32(v3, v15);
    v21 = vsubq_f32(v4, v18);
    v22 = vsubq_f32(v2, v16);
    v23 = vsubq_f32(v7, v16);
    v24 = vsubq_f32(v9, v18);
    v25 = vsubq_f32(v6, v15);
    v26 = vsubq_f32(v8, v17);
    v27 = vsubq_f32(v11, v16);
    v28 = vsubq_f32(v13, v18);
    v29 = vsubq_f32(v10, v15);
    v30 = vsubq_f32(v12, v17);
    v31 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v24, v24), v21, v21), v28, v28), vmlaq_f32(vmlaq_f32(vmulq_f32(v23, v23), v22, v22), v27, v27)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v26, v26), v19, v19), v30, v30), vmlaq_f32(vmlaq_f32(vmulq_f32(v25, v25), v20, v20), v29, v29)));
    v31.i64[0] = vpaddq_f32(v31, v31).u64[0];
    v31.f32[0] = vrecpes_f32(vpadd_f32(*v31.f32, *v31.f32).f32[0]);
    *(result + 124) = (v31.f32[0] * 3.0) + (v31.f32[0] * 3.0);
  }

  v33 = *(result + 368);
  v32 = *(result + 384);
  v35 = *(result + 336);
  v34 = *(result + 352);
  if (*(result + 134) < 0)
  {
    v36 = vdupq_n_s32(0x3B808081u);
    v37 = vcgeq_f32(v36, v33);
    v38 = vcgeq_f32(v36, v32);
    v39 = vcgeq_f32(v36, v34);
    v40 = vcgeq_f32(v36, v35);
    *(result + 720) = v40;
    *(result + 736) = v39;
    *(result + 752) = v37;
    *(result + 768) = v38;
    v41 = vorrq_s8(vandq_s8(vuzp1q_s16(v40, v39), xmmword_298495650), vandq_s8(vuzp1q_s16(v37, v38), xmmword_298495640));
    v41.i16[0] = vaddvq_s16(v41);
    *(result + 784) = v41.i16[0];
    *(result + 134) = vaddlv_u8(vcnt_s8(*v41.i8));
  }

  v42 = *(result + 176);
  v43 = *(result + 192);
  v44 = *(result + 144);
  v45 = *(result + 160);
  v47 = *(result + 240);
  v46 = *(result + 256);
  v48 = *(result + 208);
  v49 = *(result + 224);
  v50 = *(result + 304);
  v51 = *(result + 320);
  v52 = *(result + 272);
  v53 = *(result + 288);
  v54 = vzip1q_s32(v45, v53);
  v55 = vzip1q_s32(v44, v52);
  v56 = vzip2q_s32(v45, v53);
  v57 = vzip2q_s32(v44, v52);
  v58 = vzip2q_s32(v48, v35);
  v59 = vzip1q_s32(v57, v58);
  v60 = vzip2q_s32(v57, v58);
  v61 = vzip2q_s32(v55, vuzp2q_s32(v55, v48));
  v61.i32[3] = v35.i32[1];
  v62 = vzip1q_s32(v55, v48);
  v62.i32[3] = v35.i32[0];
  *(result + 432) = v59;
  *(result + 448) = v60;
  v63 = vzip2q_s32(v54, vuzp2q_s32(v54, v49));
  v63.i32[3] = v34.i32[1];
  *(result + 400) = v62;
  *(result + 416) = v61;
  v64 = vzip1q_s32(v54, v49);
  v64.i32[3] = v34.i32[0];
  v65 = vextq_s8(vzip2q_s32(v49, v56), v56, 4uLL);
  v65.i32[3] = v34.i32[3];
  v66 = vzip2q_s32(vextq_s8(v56, v56, 8uLL), v49);
  v66.i32[3] = v34.i32[2];
  *(result + 496) = v66;
  *(result + 512) = v65;
  *(result + 464) = v64;
  *(result + 480) = v63;
  v67 = vzip1q_s32(v43, v51);
  v68 = vzip1q_s32(v42, v50);
  v69 = vzip2q_s32(v43, v51);
  v70 = vzip2q_s32(v42, v50);
  v71 = vzip2q_s32(v47, v33);
  v72 = vzip1q_s32(v70, v71);
  v73 = vzip2q_s32(v68, vuzp2q_s32(v68, v47));
  v73.i32[3] = v33.i32[1];
  v74 = vzip1q_s32(v68, v47);
  v74.i32[3] = v33.i32[0];
  v75 = vzip2q_s32(v67, vuzp2q_s32(v67, v46));
  v75.i32[3] = v32.i32[1];
  v76 = vzip1q_s32(v67, v46);
  v76.i32[3] = v32.i32[0];
  v77 = vzip2q_s32(v70, v71);
  v78 = vextq_s8(vzip2q_s32(v46, v69), v69, 4uLL);
  v78.i32[3] = v32.i32[3];
  *(result + 560) = v72;
  *(result + 576) = v77;
  v79 = vzip2q_s32(vextq_s8(v69, v69, 8uLL), v46);
  v79.i32[3] = v32.i32[2];
  *(result + 528) = v74;
  *(result + 544) = v73;
  *(result + 624) = v79;
  *(result + 640) = v78;
  *(result + 592) = v76;
  *(result + 608) = v75;
  v80 = vmulq_f32(v32, v32);
  v81 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v44, v42), vaddq_f32(v45, v43)), vaddq_f32(vaddq_f32(v48, v47), vaddq_f32(v49, v46))), vpaddq_f32(vaddq_f32(vaddq_f32(v52, v50), vaddq_f32(v53, v51)), vaddq_f32(vaddq_f32(v35, v33), vaddq_f32(v34, v32))));
  v82 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v42, v42), v44, v44), vmlaq_f32(vmulq_f32(v43, v43), v45, v45)), vaddq_f32(vmlaq_f32(vmulq_f32(v47, v47), v48, v48), vmlaq_f32(vmulq_f32(v46, v46), v49, v49))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v50, v50), v52, v52), vmlaq_f32(vmulq_f32(v51, v51), v53, v53)), vaddq_f32(vmlaq_f32(vmulq_f32(v33, v33), v35, v35), vmlaq_f32(v80, v34, v34))));
  v83 = vmulq_f32(v81, vdupq_n_s32(0x3D800000u));
  v84 = vmlsq_f32(v82, v83, v81);
  *(result + 16) = v83;
  v84.i64[0] = vpaddq_f32(v84, v84).u64[0];
  *(result + 120) = vpadd_f32(*v84.f32, *v84.f32).u32[0];
  if (*(result + 136) <= 0)
  {
    *(result + 136) = v83.f32[3] >= 0.99988;
  }

  return result;
}

float32x2_t SetAlphaOne_8x8_vec(uint64_t a1)
{
  if (*(a1 + 136) != 1)
  {
    *(a1 + 134) = 0;
    *(a1 + 136) = 1;
    *(a1 + 2192) = 0u;
    *(a1 + 2208) = 0u;
    *(a1 + 2224) = 0u;
    *(a1 + 2240) = 0u;
    *(a1 + 2256) = 0u;
    *(a1 + 2272) = 0u;
    *(a1 + 2288) = 0u;
    *(a1 + 2304) = 0u;
    *(a1 + 2320) = 0u;
    *(a1 + 2336) = 0u;
    *(a1 + 2352) = 0u;
    *(a1 + 2368) = 0u;
    *(a1 + 2384) = 0u;
    *(a1 + 2400) = 0u;
    *(a1 + 2416) = 0u;
    *(a1 + 2432) = 0u;
    __asm { FMOV            V0.4S, #1.0 }

    *(a1 + 912) = _Q0;
    *(a1 + 928) = _Q0;
    *(a1 + 944) = _Q0;
    *(a1 + 960) = _Q0;
    *(a1 + 976) = _Q0;
    *(a1 + 992) = _Q0;
    *(a1 + 1008) = _Q0;
    *(a1 + 1024) = _Q0;
    *(a1 + 1040) = _Q0;
    *(a1 + 1056) = _Q0;
    *(a1 + 1072) = _Q0;
    *(a1 + 1088) = _Q0;
    *(a1 + 1104) = _Q0;
    *(a1 + 1120) = _Q0;
    *(a1 + 1136) = _Q0;
    *(a1 + 1152) = _Q0;
  }

  if (*(a1 + 124) < 0.0)
  {
    v6 = *(a1 + 32);
    v7 = 0uLL;
    v8 = 8;
    v9 = a1;
    v10 = 0uLL;
    do
    {
      v11 = xmmword_2984959B0;
      if (v6)
      {
        v11 = *v6;
      }

      v13 = v9[9];
      v12 = v9[10];
      v15 = v9[25];
      v14 = v9[26];
      v17 = v9[41];
      v16 = v9[42];
      v18 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v14, *v11.f32, 1), v12, v11.f32[0]), v16, v11, 2);
      v19 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v15, *v11.f32, 1), v13, v11.f32[0]), v17, v11, 2);
      v9[153] = v19;
      v9[154] = v18;
      v20 = vsubq_f32(v12, v18);
      v21 = vsubq_f32(v13, v19);
      v22 = vsubq_f32(v15, v19);
      v23 = vsubq_f32(v14, v18);
      v24 = vsubq_f32(v17, v19);
      v25 = vsubq_f32(v16, v18);
      v7 = vaddq_f32(v7, vmlaq_f32(vmlaq_f32(vmulq_f32(v22, v22), v21, v21), v24, v24));
      v10 = vaddq_f32(v10, vmlaq_f32(vmlaq_f32(vmulq_f32(v23, v23), v20, v20), v25, v25));
      v9 += 2;
      --v8;
    }

    while (v8);
    v26 = vaddq_f32(v7, v10);
    v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
    v26.f32[0] = vrecpes_f32(vpadd_f32(*v26.f32, *v26.f32).f32[0]);
    *(a1 + 124) = (v26.f32[0] * 3.0) + (v26.f32[0] * 3.0);
  }

  if (*(a1 + 134) < 0)
  {
    v27 = (a1 + 2192);
    v28 = 0uLL;
    v29 = 8;
    v30 = vdupq_n_s32(0x3B808081u);
    v31 = 0uLL;
    do
    {
      v32 = vcgeq_f32(v30, v27[-80]);
      v33 = vcgeq_f32(v30, v27[-79]);
      *v27 = v32;
      v27[1] = v33;
      v27 += 2;
      v31 = vsubq_s32(v31, v33);
      v28 = vsubq_s32(v28, v32);
      --v29;
    }

    while (v29);
    v34 = vaddq_s32(v28, v31);
    v34.i64[0] = vpaddq_s32(v34, v34).u64[0];
    *(a1 + 134) = vpadd_s32(*v34.i8, *v34.i8).u8[0];
  }

  v35 = 0;
  v36 = 400;
  do
  {
    v37 = *(a1 + v36 - 256);
    v38 = *(a1 + v36 - 240);
    v39 = *(a1 + v36);
    v40 = *(a1 + v36 + 16);
    v41 = *(a1 + v36 + 256);
    v42 = *(a1 + v36 + 272);
    v43 = *(a1 + v36 + 512);
    v44 = *(a1 + v36 + 528);
    v79.val[0] = vzip1q_s32(v37, v41);
    v79.val[1] = vzip1q_s32(v39, v43);
    v45 = (a1 + v35 + 1168);
    vst2q_f32(v45, v79);
    v79.val[0] = vzip2q_s32(v38, v42);
    v80.val[0] = vzip1q_s32(v38, v42);
    v78.val[0] = vzip2q_s32(v37, v41);
    v78.val[1] = vzip2q_s32(v39, v43);
    v46 = (a1 + v35 + 1200);
    vst2q_f32(v46, v78);
    v80.val[1] = vzip1q_s32(v40, v44);
    v47 = (a1 + v35 + 1232);
    vst2q_f32(v47, v80);
    v79.val[1] = vzip2q_s32(v40, v44);
    v48 = (a1 + v35 + 1264);
    vst2q_f32(v48, v79);
    v35 += 128;
    v36 += 32;
  }

  while (v35 != 1024);
  v49 = *(a1 + 144);
  v50 = *(a1 + 160);
  v51 = *(a1 + 400);
  v52 = *(a1 + 416);
  v53 = *(a1 + 656);
  v54 = *(a1 + 672);
  v55 = vmulq_f32(v50, v50);
  v56 = vmulq_f32(v49, v49);
  v57 = *(a1 + 912);
  v58 = *(a1 + 928);
  v59 = vmulq_f32(v52, v52);
  v60 = vmulq_f32(v51, v51);
  v61 = vmulq_f32(v54, v54);
  v62 = vmulq_f32(v53, v53);
  v63 = vmulq_f32(v58, v58);
  v64 = vmulq_f32(v57, v57);
  for (i = 432; i != 656; i += 32)
  {
    v66 = *(a1 + i - 256);
    v67 = *(a1 + i - 240);
    v68 = *(a1 + i);
    v69 = *(a1 + i + 16);
    v70 = *(a1 + i + 256);
    v71 = *(a1 + i + 272);
    v72 = *(a1 + i + 512);
    v73 = *(a1 + i + 528);
    v50 = vaddq_f32(v50, v67);
    v49 = vaddq_f32(v49, v66);
    v52 = vaddq_f32(v52, v69);
    v51 = vaddq_f32(v51, v68);
    v54 = vaddq_f32(v54, v71);
    v53 = vaddq_f32(v53, v70);
    v58 = vaddq_f32(v58, v73);
    v57 = vaddq_f32(v57, v72);
    v55 = vmlaq_f32(v55, v67, v67);
    v56 = vmlaq_f32(v56, v66, v66);
    v59 = vmlaq_f32(v59, v69, v69);
    v60 = vmlaq_f32(v60, v68, v68);
    v61 = vmlaq_f32(v61, v71, v71);
    v62 = vmlaq_f32(v62, v70, v70);
    v63 = vmlaq_f32(v63, v73, v73);
    v64 = vmlaq_f32(v64, v72, v72);
  }

  v74 = vpaddq_f32(vpaddq_f32(vaddq_f32(v49, v50), vaddq_f32(v51, v52)), vpaddq_f32(vaddq_f32(v53, v54), vaddq_f32(v57, v58)));
  v75 = vmulq_f32(v74, vdupq_n_s32(0x3C800000u));
  v76 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v56, v55), vaddq_f32(v60, v59)), vpaddq_f32(vaddq_f32(v62, v61), vaddq_f32(v64, v63))), v75, v74);
  *(a1 + 16) = v75;
  v74.i64[0] = vpaddq_f32(v76, v76).u64[0];
  result = vpadd_f32(*v74.f32, *v74.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

float32x2_t FlattenNon_8x8_vec(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 <= 0)
  {
    v2 = vdupq_lane_s32(*a1, 0);
    v3 = vdupq_lane_s32(*a1, 1);
    v4 = vdupq_laneq_s32(*a1, 2);
    for (i = 400; i != 656; i += 32)
    {
      v6 = (a1 + i);
      v7 = *(a1 + i + 512);
      v8 = *(a1 + i + 528);
      v9 = vmlaq_f32(v2, vsubq_f32(*(a1 + i - 240), v2), v8);
      v6[-16] = vmlaq_f32(v2, vsubq_f32(*(a1 + i - 256), v2), v7);
      v6[-15] = v9;
      v10 = vmlaq_f32(v3, vsubq_f32(*(a1 + i + 16), v3), v8);
      *v6 = vmlaq_f32(v3, vsubq_f32(*(a1 + i), v3), v7);
      v6[1] = v10;
      v11 = vmlaq_f32(v4, vsubq_f32(*(a1 + i + 272), v4), v8);
      v6[16] = vmlaq_f32(v4, vsubq_f32(*(a1 + i + 256), v4), v7);
      v6[17] = v11;
    }
  }

  if (v1 != 1)
  {
    *(a1 + 134) = 0;
    *(a1 + 136) = 1;
    *(a1 + 2192) = 0u;
    *(a1 + 2208) = 0u;
    *(a1 + 2224) = 0u;
    *(a1 + 2240) = 0u;
    *(a1 + 2256) = 0u;
    *(a1 + 2272) = 0u;
    *(a1 + 2288) = 0u;
    *(a1 + 2304) = 0u;
    *(a1 + 2320) = 0u;
    *(a1 + 2336) = 0u;
    *(a1 + 2352) = 0u;
    *(a1 + 2368) = 0u;
    *(a1 + 2384) = 0u;
    *(a1 + 2400) = 0u;
    *(a1 + 2416) = 0u;
    *(a1 + 2432) = 0u;
    __asm { FMOV            V0.4S, #1.0 }

    *(a1 + 912) = _Q0;
    *(a1 + 928) = _Q0;
    *(a1 + 944) = _Q0;
    *(a1 + 960) = _Q0;
    *(a1 + 976) = _Q0;
    *(a1 + 992) = _Q0;
    *(a1 + 1008) = _Q0;
    *(a1 + 1024) = _Q0;
    *(a1 + 1040) = _Q0;
    *(a1 + 1056) = _Q0;
    *(a1 + 1072) = _Q0;
    *(a1 + 1088) = _Q0;
    *(a1 + 1104) = _Q0;
    *(a1 + 1120) = _Q0;
    *(a1 + 1136) = _Q0;
    *(a1 + 1152) = _Q0;
  }

  if (*(a1 + 124) < 0.0)
  {
    v17 = *(a1 + 32);
    v18 = 0uLL;
    v19 = 8;
    v20 = a1;
    v21 = 0uLL;
    do
    {
      v22 = xmmword_2984959B0;
      if (v17)
      {
        v22 = *v17;
      }

      v24 = v20[9];
      v23 = v20[10];
      v26 = v20[25];
      v25 = v20[26];
      v28 = v20[41];
      v27 = v20[42];
      v29 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25, *v22.f32, 1), v23, v22.f32[0]), v27, v22, 2);
      v30 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v26, *v22.f32, 1), v24, v22.f32[0]), v28, v22, 2);
      v20[153] = v30;
      v20[154] = v29;
      v31 = vsubq_f32(v23, v29);
      v32 = vsubq_f32(v24, v30);
      v33 = vsubq_f32(v26, v30);
      v34 = vsubq_f32(v25, v29);
      v35 = vsubq_f32(v28, v30);
      v36 = vsubq_f32(v27, v29);
      v18 = vaddq_f32(v18, vmlaq_f32(vmlaq_f32(vmulq_f32(v33, v33), v32, v32), v35, v35));
      v21 = vaddq_f32(v21, vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v34), v31, v31), v36, v36));
      v20 += 2;
      --v19;
    }

    while (v19);
    v37 = vaddq_f32(v18, v21);
    v37.i64[0] = vpaddq_f32(v37, v37).u64[0];
    v37.f32[0] = vrecpes_f32(vpadd_f32(*v37.f32, *v37.f32).f32[0]);
    *(a1 + 124) = (v37.f32[0] * 3.0) + (v37.f32[0] * 3.0);
  }

  if (*(a1 + 134) < 0)
  {
    v38 = (a1 + 2192);
    v39 = 0uLL;
    v40 = 8;
    v41 = vdupq_n_s32(0x3B808081u);
    v42 = 0uLL;
    do
    {
      v43 = vcgeq_f32(v41, v38[-80]);
      v44 = vcgeq_f32(v41, v38[-79]);
      *v38 = v43;
      v38[1] = v44;
      v38 += 2;
      v42 = vsubq_s32(v42, v44);
      v39 = vsubq_s32(v39, v43);
      --v40;
    }

    while (v40);
    v45 = vaddq_s32(v39, v42);
    v45.i64[0] = vpaddq_s32(v45, v45).u64[0];
    *(a1 + 134) = vpadd_s32(*v45.i8, *v45.i8).u8[0];
  }

  v46 = 0;
  v47 = 400;
  do
  {
    v48 = *(a1 + v47 - 256);
    v49 = *(a1 + v47 - 240);
    v50 = *(a1 + v47);
    v51 = *(a1 + v47 + 16);
    v52 = *(a1 + v47 + 256);
    v53 = *(a1 + v47 + 272);
    v54 = *(a1 + v47 + 512);
    v55 = *(a1 + v47 + 528);
    v90.val[0] = vzip1q_s32(v48, v52);
    v90.val[1] = vzip1q_s32(v50, v54);
    v56 = (a1 + v46 + 1168);
    vst2q_f32(v56, v90);
    v90.val[0] = vzip2q_s32(v49, v53);
    v91.val[0] = vzip1q_s32(v49, v53);
    v89.val[0] = vzip2q_s32(v48, v52);
    v89.val[1] = vzip2q_s32(v50, v54);
    v57 = (a1 + v46 + 1200);
    vst2q_f32(v57, v89);
    v91.val[1] = vzip1q_s32(v51, v55);
    v58 = (a1 + v46 + 1232);
    vst2q_f32(v58, v91);
    v90.val[1] = vzip2q_s32(v51, v55);
    v59 = (a1 + v46 + 1264);
    vst2q_f32(v59, v90);
    v46 += 128;
    v47 += 32;
  }

  while (v46 != 1024);
  v60 = *(a1 + 144);
  v61 = *(a1 + 160);
  v62 = *(a1 + 400);
  v63 = *(a1 + 416);
  v64 = *(a1 + 656);
  v65 = *(a1 + 672);
  v66 = vmulq_f32(v61, v61);
  v67 = vmulq_f32(v60, v60);
  v68 = *(a1 + 912);
  v69 = *(a1 + 928);
  v70 = vmulq_f32(v63, v63);
  v71 = vmulq_f32(v62, v62);
  v72 = vmulq_f32(v65, v65);
  v73 = vmulq_f32(v64, v64);
  v74 = vmulq_f32(v69, v69);
  v75 = vmulq_f32(v68, v68);
  for (j = 432; j != 656; j += 32)
  {
    v77 = *(a1 + j - 256);
    v78 = *(a1 + j - 240);
    v79 = *(a1 + j);
    v80 = *(a1 + j + 16);
    v81 = *(a1 + j + 256);
    v82 = *(a1 + j + 272);
    v83 = *(a1 + j + 512);
    v84 = *(a1 + j + 528);
    v61 = vaddq_f32(v61, v78);
    v60 = vaddq_f32(v60, v77);
    v63 = vaddq_f32(v63, v80);
    v62 = vaddq_f32(v62, v79);
    v65 = vaddq_f32(v65, v82);
    v64 = vaddq_f32(v64, v81);
    v69 = vaddq_f32(v69, v84);
    v68 = vaddq_f32(v68, v83);
    v66 = vmlaq_f32(v66, v78, v78);
    v67 = vmlaq_f32(v67, v77, v77);
    v70 = vmlaq_f32(v70, v80, v80);
    v71 = vmlaq_f32(v71, v79, v79);
    v72 = vmlaq_f32(v72, v82, v82);
    v73 = vmlaq_f32(v73, v81, v81);
    v74 = vmlaq_f32(v74, v84, v84);
    v75 = vmlaq_f32(v75, v83, v83);
  }

  v85 = vpaddq_f32(vpaddq_f32(vaddq_f32(v60, v61), vaddq_f32(v62, v63)), vpaddq_f32(vaddq_f32(v64, v65), vaddq_f32(v68, v69)));
  v86 = vmulq_f32(v85, vdupq_n_s32(0x3C800000u));
  v87 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v67, v66), vaddq_f32(v71, v70)), vpaddq_f32(vaddq_f32(v73, v72), vaddq_f32(v75, v74))), v86, v85);
  *(a1 + 16) = v86;
  v85.i64[0] = vpaddq_f32(v87, v87).u64[0];
  result = vpadd_f32(*v85.f32, *v85.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

float32x2_t FlattenPre_8x8_vec(uint64_t a1)
{
  if (*(a1 + 136) <= 0)
  {
    v1 = 400;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v7 = (a1 + v1);
      v8 = *(a1 + v1 + 512);
      v9 = *(a1 + v1 + 528);
      if ((vminvq_u32(vandq_s8(vceqq_f32(v8, _Q0), vceqq_f32(v9, _Q0))) & 0x80000000) == 0)
      {
        v10 = vminnmq_f32(*v7, v8);
        v11 = vminnmq_f32(v7[1], v9);
        v12 = vminnmq_f32(v7[16], v8);
        v13 = vminnmq_f32(v7[17], v9);
        v14 = *a1;
        v15 = vdupq_lane_s32(*a1, 0);
        v16 = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(v7[-15], v9), v15), v9, *a1, 0);
        v7[-16] = vmlsq_lane_f32(vaddq_f32(vminnmq_f32(v7[-16], v8), v15), v8, *a1, 0);
        v7[-15] = v16;
        v17 = vdupq_lane_s32(*v14.f32, 1);
        *v7 = vmlsq_lane_f32(vaddq_f32(v10, v17), v8, *v14.f32, 1);
        v7[1] = vmlsq_lane_f32(vaddq_f32(v11, v17), v9, *v14.f32, 1);
        v18 = vdupq_laneq_s32(v14, 2);
        v7[16] = vmlsq_laneq_f32(vaddq_f32(v12, v18), v8, v14, 2);
        v7[17] = vmlsq_laneq_f32(vaddq_f32(v13, v18), v9, v14, 2);
      }

      v1 += 32;
    }

    while (v1 != 656);
    *(a1 + 134) = 0;
    *(a1 + 136) = 1;
    *(a1 + 2192) = 0u;
    *(a1 + 2208) = 0u;
    *(a1 + 2224) = 0u;
    *(a1 + 2240) = 0u;
    *(a1 + 2256) = 0u;
    *(a1 + 2272) = 0u;
    *(a1 + 2288) = 0u;
    *(a1 + 2304) = 0u;
    *(a1 + 2320) = 0u;
    *(a1 + 2336) = 0u;
    *(a1 + 2352) = 0u;
    *(a1 + 2368) = 0u;
    *(a1 + 2384) = 0u;
    *(a1 + 2400) = 0u;
    *(a1 + 2416) = 0u;
    *(a1 + 2432) = 0u;
    *(a1 + 912) = _Q0;
    *(a1 + 928) = _Q0;
    *(a1 + 944) = _Q0;
    *(a1 + 960) = _Q0;
    *(a1 + 976) = _Q0;
    *(a1 + 992) = _Q0;
    *(a1 + 1008) = _Q0;
    *(a1 + 1024) = _Q0;
    *(a1 + 1040) = _Q0;
    *(a1 + 1056) = _Q0;
    *(a1 + 1072) = _Q0;
    *(a1 + 1088) = _Q0;
    *(a1 + 1104) = _Q0;
    *(a1 + 1120) = _Q0;
    *(a1 + 1136) = _Q0;
    *(a1 + 1152) = _Q0;
  }

  if (*(a1 + 124) < 0.0)
  {
    v19 = *(a1 + 32);
    v20 = 0uLL;
    v21 = 8;
    v22 = a1;
    v23 = 0uLL;
    do
    {
      v24 = xmmword_2984959B0;
      if (v19)
      {
        v24 = *v19;
      }

      v26 = v22[9];
      v25 = v22[10];
      v28 = v22[25];
      v27 = v22[26];
      v30 = v22[41];
      v29 = v22[42];
      v31 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v27, *v24.f32, 1), v25, v24.f32[0]), v29, v24, 2);
      v32 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v28, *v24.f32, 1), v26, v24.f32[0]), v30, v24, 2);
      v22[153] = v32;
      v22[154] = v31;
      v33 = vsubq_f32(v25, v31);
      v34 = vsubq_f32(v26, v32);
      v35 = vsubq_f32(v28, v32);
      v36 = vsubq_f32(v27, v31);
      v37 = vsubq_f32(v30, v32);
      v38 = vsubq_f32(v29, v31);
      v20 = vaddq_f32(v20, vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v34, v34), v37, v37));
      v23 = vaddq_f32(v23, vmlaq_f32(vmlaq_f32(vmulq_f32(v36, v36), v33, v33), v38, v38));
      v22 += 2;
      --v21;
    }

    while (v21);
    v39 = vaddq_f32(v20, v23);
    v39.i64[0] = vpaddq_f32(v39, v39).u64[0];
    v39.f32[0] = vrecpes_f32(vpadd_f32(*v39.f32, *v39.f32).f32[0]);
    *(a1 + 124) = (v39.f32[0] * 3.0) + (v39.f32[0] * 3.0);
  }

  if (*(a1 + 134) < 0)
  {
    v40 = (a1 + 2192);
    v41 = 0uLL;
    v42 = 8;
    v43 = vdupq_n_s32(0x3B808081u);
    v44 = 0uLL;
    do
    {
      v45 = vcgeq_f32(v43, v40[-80]);
      v46 = vcgeq_f32(v43, v40[-79]);
      *v40 = v45;
      v40[1] = v46;
      v40 += 2;
      v44 = vsubq_s32(v44, v46);
      v41 = vsubq_s32(v41, v45);
      --v42;
    }

    while (v42);
    v47 = vaddq_s32(v41, v44);
    v47.i64[0] = vpaddq_s32(v47, v47).u64[0];
    *(a1 + 134) = vpadd_s32(*v47.i8, *v47.i8).u8[0];
  }

  v48 = 0;
  v49 = 400;
  do
  {
    v50 = *(a1 + v49 - 256);
    v51 = *(a1 + v49 - 240);
    v52 = *(a1 + v49);
    v53 = *(a1 + v49 + 16);
    v54 = *(a1 + v49 + 256);
    v55 = *(a1 + v49 + 272);
    v56 = *(a1 + v49 + 512);
    v57 = *(a1 + v49 + 528);
    v92.val[0] = vzip1q_s32(v50, v54);
    v92.val[1] = vzip1q_s32(v52, v56);
    v58 = (a1 + v48 + 1168);
    vst2q_f32(v58, v92);
    v92.val[0] = vzip2q_s32(v51, v55);
    v93.val[0] = vzip1q_s32(v51, v55);
    v91.val[0] = vzip2q_s32(v50, v54);
    v91.val[1] = vzip2q_s32(v52, v56);
    v59 = (a1 + v48 + 1200);
    vst2q_f32(v59, v91);
    v93.val[1] = vzip1q_s32(v53, v57);
    v60 = (a1 + v48 + 1232);
    vst2q_f32(v60, v93);
    v92.val[1] = vzip2q_s32(v53, v57);
    v61 = (a1 + v48 + 1264);
    vst2q_f32(v61, v92);
    v48 += 128;
    v49 += 32;
  }

  while (v48 != 1024);
  v62 = *(a1 + 144);
  v63 = *(a1 + 160);
  v64 = *(a1 + 400);
  v65 = *(a1 + 416);
  v66 = *(a1 + 656);
  v67 = *(a1 + 672);
  v68 = vmulq_f32(v63, v63);
  v69 = vmulq_f32(v62, v62);
  v70 = *(a1 + 912);
  v71 = *(a1 + 928);
  v72 = vmulq_f32(v65, v65);
  v73 = vmulq_f32(v64, v64);
  v74 = vmulq_f32(v67, v67);
  v75 = vmulq_f32(v66, v66);
  v76 = vmulq_f32(v71, v71);
  v77 = vmulq_f32(v70, v70);
  for (i = 432; i != 656; i += 32)
  {
    v79 = *(a1 + i - 256);
    v80 = *(a1 + i - 240);
    v81 = *(a1 + i);
    v82 = *(a1 + i + 16);
    v83 = *(a1 + i + 256);
    v84 = *(a1 + i + 272);
    v85 = *(a1 + i + 512);
    v86 = *(a1 + i + 528);
    v63 = vaddq_f32(v63, v80);
    v62 = vaddq_f32(v62, v79);
    v65 = vaddq_f32(v65, v82);
    v64 = vaddq_f32(v64, v81);
    v67 = vaddq_f32(v67, v84);
    v66 = vaddq_f32(v66, v83);
    v71 = vaddq_f32(v71, v86);
    v70 = vaddq_f32(v70, v85);
    v68 = vmlaq_f32(v68, v80, v80);
    v69 = vmlaq_f32(v69, v79, v79);
    v72 = vmlaq_f32(v72, v82, v82);
    v73 = vmlaq_f32(v73, v81, v81);
    v74 = vmlaq_f32(v74, v84, v84);
    v75 = vmlaq_f32(v75, v83, v83);
    v76 = vmlaq_f32(v76, v86, v86);
    v77 = vmlaq_f32(v77, v85, v85);
  }

  v87 = vpaddq_f32(vpaddq_f32(vaddq_f32(v62, v63), vaddq_f32(v64, v65)), vpaddq_f32(vaddq_f32(v66, v67), vaddq_f32(v70, v71)));
  v88 = vmulq_f32(v87, vdupq_n_s32(0x3C800000u));
  v89 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v69, v68), vaddq_f32(v73, v72)), vpaddq_f32(vaddq_f32(v75, v74), vaddq_f32(v77, v76))), v88, v87);
  *(a1 + 16) = v88;
  v87.i64[0] = vpaddq_f32(v89, v89).u64[0];
  result = vpadd_f32(*v87.f32, *v87.f32);
  *(a1 + 120) = result.i32[0];
  return result;
}

uint64_t Premultiply_8x8_vec(uint64_t result)
{
  v1 = *(result + 136);
  if (v1 <= 0)
  {
    v2 = 400;
    __asm { FMOV            V0.4S, #1.0 }

    do
    {
      v8 = (result + v2);
      v9 = *(result + v2 + 512);
      v10 = *(result + v2 + 528);
      v11 = vminnmq_f32(vmulq_f32(*(result + v2 - 240), v10), _Q0);
      v8[-16] = vminnmq_f32(vmulq_f32(*(result + v2 - 256), v9), _Q0);
      v8[-15] = v11;
      v12 = vminnmq_f32(vmulq_f32(v10, *(result + v2 + 16)), _Q0);
      *v8 = vminnmq_f32(vmulq_f32(v9, *(result + v2)), _Q0);
      v8[1] = v12;
      v13 = vminnmq_f32(vmulq_f32(v10, *(result + v2 + 272)), _Q0);
      v8[16] = vminnmq_f32(vmulq_f32(v9, *(result + v2 + 256)), _Q0);
      v8[17] = v13;
      v2 += 32;
    }

    while (v2 != 656);
  }

  if (*(result + 124) < 0.0)
  {
    v14 = *(result + 32);
    v15 = 0uLL;
    v16 = 8;
    v17 = result;
    v18 = 0uLL;
    do
    {
      v19 = xmmword_2984959B0;
      if (v14)
      {
        v19 = *v14;
      }

      v21 = v17[9];
      v20 = v17[10];
      v23 = v17[25];
      v22 = v17[26];
      v25 = v17[41];
      v24 = v17[42];
      v26 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v22, *v19.f32, 1), v20, v19.f32[0]), v24, v19, 2);
      v27 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v23, *v19.f32, 1), v21, v19.f32[0]), v25, v19, 2);
      v17[153] = v27;
      v17[154] = v26;
      v28 = vsubq_f32(v20, v26);
      v29 = vsubq_f32(v21, v27);
      v30 = vsubq_f32(v23, v27);
      v31 = vsubq_f32(v22, v26);
      v32 = vsubq_f32(v25, v27);
      v33 = vsubq_f32(v24, v26);
      v15 = vaddq_f32(v15, vmlaq_f32(vmlaq_f32(vmulq_f32(v30, v30), v29, v29), v32, v32));
      v18 = vaddq_f32(v18, vmlaq_f32(vmlaq_f32(vmulq_f32(v31, v31), v28, v28), v33, v33));
      v17 += 2;
      --v16;
    }

    while (v16);
    v34 = vaddq_f32(v15, v18);
    v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
    v34.f32[0] = vrecpes_f32(vpadd_f32(*v34.f32, *v34.f32).f32[0]);
    *(result + 124) = (v34.f32[0] * 3.0) + (v34.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v35 = (result + 2192);
    v36 = 0uLL;
    v37 = 8;
    v38 = vdupq_n_s32(0x3B808081u);
    v39 = 0uLL;
    do
    {
      v40 = vcgeq_f32(v38, v35[-80]);
      v41 = vcgeq_f32(v38, v35[-79]);
      *v35 = v40;
      v35[1] = v41;
      v35 += 2;
      v39 = vsubq_s32(v39, v41);
      v36 = vsubq_s32(v36, v40);
      --v37;
    }

    while (v37);
    v42 = vaddq_s32(v36, v39);
    v42.i64[0] = vpaddq_s32(v42, v42).u64[0];
    *(result + 134) = vpadd_s32(*v42.i8, *v42.i8).u8[0];
  }

  v43 = 0;
  v44 = 400;
  do
  {
    v45 = *(result + v44 - 256);
    v46 = *(result + v44 - 240);
    v47 = *(result + v44);
    v48 = *(result + v44 + 16);
    v49 = *(result + v44 + 256);
    v50 = *(result + v44 + 272);
    v51 = *(result + v44 + 512);
    v52 = *(result + v44 + 528);
    v86.val[0] = vzip1q_s32(v45, v49);
    v86.val[1] = vzip1q_s32(v47, v51);
    v53 = (result + v43 + 1168);
    vst2q_f32(v53, v86);
    v86.val[0] = vzip2q_s32(v46, v50);
    v87.val[0] = vzip1q_s32(v46, v50);
    v85.val[0] = vzip2q_s32(v45, v49);
    v85.val[1] = vzip2q_s32(v47, v51);
    v54 = (result + v43 + 1200);
    vst2q_f32(v54, v85);
    v87.val[1] = vzip1q_s32(v48, v52);
    v55 = (result + v43 + 1232);
    vst2q_f32(v55, v87);
    v86.val[1] = vzip2q_s32(v48, v52);
    v56 = (result + v43 + 1264);
    vst2q_f32(v56, v86);
    v43 += 128;
    v44 += 32;
  }

  while (v43 != 1024);
  v57 = *(result + 144);
  v58 = *(result + 160);
  v59 = *(result + 400);
  v60 = *(result + 416);
  v61 = *(result + 656);
  v62 = *(result + 672);
  v63 = vmulq_f32(v58, v58);
  v64 = vmulq_f32(v57, v57);
  v65 = *(result + 912);
  v66 = *(result + 928);
  v67 = vmulq_f32(v60, v60);
  v68 = vmulq_f32(v59, v59);
  v69 = vmulq_f32(v62, v62);
  v70 = vmulq_f32(v61, v61);
  v71 = vmulq_f32(v66, v66);
  v72 = vmulq_f32(v65, v65);
  for (i = 432; i != 656; i += 32)
  {
    v74 = *(result + i - 256);
    v75 = *(result + i - 240);
    v76 = *(result + i);
    v77 = *(result + i + 16);
    v78 = *(result + i + 256);
    v79 = *(result + i + 272);
    v80 = *(result + i + 512);
    v81 = *(result + i + 528);
    v58 = vaddq_f32(v58, v75);
    v57 = vaddq_f32(v57, v74);
    v60 = vaddq_f32(v60, v77);
    v59 = vaddq_f32(v59, v76);
    v62 = vaddq_f32(v62, v79);
    v61 = vaddq_f32(v61, v78);
    v66 = vaddq_f32(v66, v81);
    v65 = vaddq_f32(v65, v80);
    v63 = vmlaq_f32(v63, v75, v75);
    v64 = vmlaq_f32(v64, v74, v74);
    v67 = vmlaq_f32(v67, v77, v77);
    v68 = vmlaq_f32(v68, v76, v76);
    v69 = vmlaq_f32(v69, v79, v79);
    v70 = vmlaq_f32(v70, v78, v78);
    v71 = vmlaq_f32(v71, v81, v81);
    v72 = vmlaq_f32(v72, v80, v80);
  }

  v82 = vpaddq_f32(vpaddq_f32(vaddq_f32(v57, v58), vaddq_f32(v59, v60)), vpaddq_f32(vaddq_f32(v61, v62), vaddq_f32(v65, v66)));
  v83 = vmulq_f32(v82, vdupq_n_s32(0x3C800000u));
  v84 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v64, v63), vaddq_f32(v68, v67)), vpaddq_f32(vaddq_f32(v70, v69), vaddq_f32(v72, v71))), v83, v82);
  *(result + 16) = v83;
  v82.i64[0] = vpaddq_f32(v84, v84).u64[0];
  *(result + 120) = vpadd_f32(*v82.f32, *v82.f32).u32[0];
  if (v1 < 1)
  {
    *(result + 136) = v83.f32[3] >= 0.99997;
  }

  return result;
}

uint64_t Unpremultiply_8x8_vec(uint64_t result)
{
  v1 = result;
  v2 = *(result + 136);
  if (v2 <= 0)
  {
    result = Unpremultiply_8x8_vec_cold_1(result);
  }

  if (*(v1 + 124) < 0.0)
  {
    v3 = *(v1 + 32);
    v4 = 0uLL;
    v5 = 8;
    v6 = v1;
    v7 = 0uLL;
    do
    {
      v8 = xmmword_2984959B0;
      if (v3)
      {
        v8 = *v3;
      }

      v10 = v6[9];
      v9 = v6[10];
      v12 = v6[25];
      v11 = v6[26];
      v14 = v6[41];
      v13 = v6[42];
      v15 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v8.f32, 1), v9, v8.f32[0]), v13, v8, 2);
      v16 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v8.f32, 1), v10, v8.f32[0]), v14, v8, 2);
      v6[153] = v16;
      v6[154] = v15;
      v17 = vsubq_f32(v9, v15);
      v18 = vsubq_f32(v10, v16);
      v19 = vsubq_f32(v12, v16);
      v20 = vsubq_f32(v11, v15);
      v21 = vsubq_f32(v14, v16);
      v22 = vsubq_f32(v13, v15);
      v4 = vaddq_f32(v4, vmlaq_f32(vmlaq_f32(vmulq_f32(v19, v19), v18, v18), v21, v21));
      v7 = vaddq_f32(v7, vmlaq_f32(vmlaq_f32(vmulq_f32(v20, v20), v17, v17), v22, v22));
      v6 += 2;
      --v5;
    }

    while (v5);
    v23 = vaddq_f32(v4, v7);
    v23.i64[0] = vpaddq_f32(v23, v23).u64[0];
    v23.f32[0] = vrecpes_f32(vpadd_f32(*v23.f32, *v23.f32).f32[0]);
    *(v1 + 124) = (v23.f32[0] * 3.0) + (v23.f32[0] * 3.0);
  }

  if (*(v1 + 134) < 0)
  {
    v24 = (v1 + 2192);
    v25 = 0uLL;
    v26 = 8;
    v27 = vdupq_n_s32(0x3B808081u);
    v28 = 0uLL;
    do
    {
      v29 = vcgeq_f32(v27, v24[-80]);
      v30 = vcgeq_f32(v27, v24[-79]);
      *v24 = v29;
      v24[1] = v30;
      v24 += 2;
      v28 = vsubq_s32(v28, v30);
      v25 = vsubq_s32(v25, v29);
      --v26;
    }

    while (v26);
    v31 = vaddq_s32(v25, v28);
    v31.i64[0] = vpaddq_s32(v31, v31).u64[0];
    *(v1 + 134) = vpadd_s32(*v31.i8, *v31.i8).u8[0];
  }

  v32 = 0;
  v33 = 400;
  do
  {
    v34 = *(v1 + v33 - 256);
    v35 = *(v1 + v33 - 240);
    v36 = *(v1 + v33);
    v37 = *(v1 + v33 + 16);
    v38 = *(v1 + v33 + 256);
    v39 = *(v1 + v33 + 272);
    v40 = *(v1 + v33 + 512);
    v41 = *(v1 + v33 + 528);
    v75.val[0] = vzip1q_s32(v34, v38);
    v75.val[1] = vzip1q_s32(v36, v40);
    v42 = (v1 + v32 + 1168);
    vst2q_f32(v42, v75);
    v75.val[0] = vzip2q_s32(v35, v39);
    v76.val[0] = vzip1q_s32(v35, v39);
    v74.val[0] = vzip2q_s32(v34, v38);
    v74.val[1] = vzip2q_s32(v36, v40);
    v43 = (v1 + v32 + 1200);
    vst2q_f32(v43, v74);
    v76.val[1] = vzip1q_s32(v37, v41);
    v44 = (v1 + v32 + 1232);
    vst2q_f32(v44, v76);
    v75.val[1] = vzip2q_s32(v37, v41);
    v45 = (v1 + v32 + 1264);
    vst2q_f32(v45, v75);
    v32 += 128;
    v33 += 32;
  }

  while (v32 != 1024);
  v46 = *(v1 + 144);
  v47 = *(v1 + 160);
  v48 = *(v1 + 400);
  v49 = *(v1 + 416);
  v50 = *(v1 + 656);
  v51 = *(v1 + 672);
  v52 = vmulq_f32(v47, v47);
  v53 = vmulq_f32(v46, v46);
  v54 = *(v1 + 912);
  v55 = *(v1 + 928);
  v56 = vmulq_f32(v49, v49);
  v57 = vmulq_f32(v48, v48);
  v58 = vmulq_f32(v51, v51);
  v59 = vmulq_f32(v50, v50);
  v60 = vmulq_f32(v55, v55);
  v61 = vmulq_f32(v54, v54);
  for (i = 432; i != 656; i += 32)
  {
    v63 = *(v1 + i - 256);
    v64 = *(v1 + i - 240);
    v65 = *(v1 + i);
    v66 = *(v1 + i + 16);
    v67 = *(v1 + i + 256);
    v68 = *(v1 + i + 272);
    v69 = *(v1 + i + 512);
    v70 = *(v1 + i + 528);
    v47 = vaddq_f32(v47, v64);
    v46 = vaddq_f32(v46, v63);
    v49 = vaddq_f32(v49, v66);
    v48 = vaddq_f32(v48, v65);
    v51 = vaddq_f32(v51, v68);
    v50 = vaddq_f32(v50, v67);
    v55 = vaddq_f32(v55, v70);
    v54 = vaddq_f32(v54, v69);
    v52 = vmlaq_f32(v52, v64, v64);
    v53 = vmlaq_f32(v53, v63, v63);
    v56 = vmlaq_f32(v56, v66, v66);
    v57 = vmlaq_f32(v57, v65, v65);
    v58 = vmlaq_f32(v58, v68, v68);
    v59 = vmlaq_f32(v59, v67, v67);
    v60 = vmlaq_f32(v60, v70, v70);
    v61 = vmlaq_f32(v61, v69, v69);
  }

  v71 = vpaddq_f32(vpaddq_f32(vaddq_f32(v46, v47), vaddq_f32(v48, v49)), vpaddq_f32(vaddq_f32(v50, v51), vaddq_f32(v54, v55)));
  v72 = vmulq_f32(v71, vdupq_n_s32(0x3C800000u));
  v73 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v53, v52), vaddq_f32(v57, v56)), vpaddq_f32(vaddq_f32(v59, v58), vaddq_f32(v61, v60))), v72, v71);
  *(v1 + 16) = v72;
  v71.i64[0] = vpaddq_f32(v73, v73).u64[0];
  *(v1 + 120) = vpadd_f32(*v71.f32, *v71.f32).u32[0];
  if (v2 < 1)
  {
    *(v1 + 136) = v72.f32[3] >= 0.99997;
  }

  return result;
}

uint64_t ClampPremultiplied_8x8_vec(uint64_t result)
{
  for (i = 400; i != 656; i += 32)
  {
    v2 = (result + i);
    v4 = *(result + i + 512);
    v3 = *(result + i + 528);
    v5 = vminnmq_f32(*(result + i - 240), v3);
    v2[-16] = vminnmq_f32(*(result + i - 256), v4);
    v2[-15] = v5;
    v6 = vminnmq_f32(*(result + i + 16), v3);
    *v2 = vminnmq_f32(*(result + i), v4);
    v2[1] = v6;
    v7 = vminnmq_f32(*(result + i + 272), v3);
    v2[16] = vminnmq_f32(*(result + i + 256), v4);
    v2[17] = v7;
  }

  if (*(result + 124) < 0.0)
  {
    v8 = *(result + 32);
    v9 = 0uLL;
    v10 = 8;
    v11 = result;
    v12 = 0uLL;
    do
    {
      v13 = xmmword_2984959B0;
      if (v8)
      {
        v13 = *v8;
      }

      v15 = v11[9];
      v14 = v11[10];
      v17 = v11[25];
      v16 = v11[26];
      v19 = v11[41];
      v18 = v11[42];
      v20 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v16, *v13.f32, 1), v14, v13.f32[0]), v18, v13, 2);
      v21 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v17, *v13.f32, 1), v15, v13.f32[0]), v19, v13, 2);
      v11[153] = v21;
      v11[154] = v20;
      v22 = vsubq_f32(v14, v20);
      v23 = vsubq_f32(v15, v21);
      v24 = vsubq_f32(v17, v21);
      v25 = vsubq_f32(v16, v20);
      v26 = vsubq_f32(v19, v21);
      v27 = vsubq_f32(v18, v20);
      v9 = vaddq_f32(v9, vmlaq_f32(vmlaq_f32(vmulq_f32(v24, v24), v23, v23), v26, v26));
      v12 = vaddq_f32(v12, vmlaq_f32(vmlaq_f32(vmulq_f32(v25, v25), v22, v22), v27, v27));
      v11 += 2;
      --v10;
    }

    while (v10);
    v28 = vaddq_f32(v9, v12);
    v28.i64[0] = vpaddq_f32(v28, v28).u64[0];
    v28.f32[0] = vrecpes_f32(vpadd_f32(*v28.f32, *v28.f32).f32[0]);
    *(result + 124) = (v28.f32[0] * 3.0) + (v28.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v29 = (result + 2192);
    v30 = 0uLL;
    v31 = 8;
    v32 = vdupq_n_s32(0x3B808081u);
    v33 = 0uLL;
    do
    {
      v34 = vcgeq_f32(v32, v29[-80]);
      v35 = vcgeq_f32(v32, v29[-79]);
      *v29 = v34;
      v29[1] = v35;
      v29 += 2;
      v33 = vsubq_s32(v33, v35);
      v30 = vsubq_s32(v30, v34);
      --v31;
    }

    while (v31);
    v36 = vaddq_s32(v30, v33);
    v36.i64[0] = vpaddq_s32(v36, v36).u64[0];
    *(result + 134) = vpadd_s32(*v36.i8, *v36.i8).u8[0];
  }

  v37 = 0;
  v38 = 400;
  do
  {
    v39 = *(result + v38 - 256);
    v40 = *(result + v38 - 240);
    v41 = *(result + v38);
    v42 = *(result + v38 + 16);
    v43 = *(result + v38 + 256);
    v44 = *(result + v38 + 272);
    v45 = *(result + v38 + 512);
    v46 = *(result + v38 + 528);
    v80.val[0] = vzip1q_s32(v39, v43);
    v80.val[1] = vzip1q_s32(v41, v45);
    v47 = (result + v37 + 1168);
    vst2q_f32(v47, v80);
    v80.val[0] = vzip2q_s32(v40, v44);
    v81.val[0] = vzip1q_s32(v40, v44);
    v79.val[0] = vzip2q_s32(v39, v43);
    v79.val[1] = vzip2q_s32(v41, v45);
    v48 = (result + v37 + 1200);
    vst2q_f32(v48, v79);
    v81.val[1] = vzip1q_s32(v42, v46);
    v49 = (result + v37 + 1232);
    vst2q_f32(v49, v81);
    v80.val[1] = vzip2q_s32(v42, v46);
    v50 = (result + v37 + 1264);
    vst2q_f32(v50, v80);
    v37 += 128;
    v38 += 32;
  }

  while (v37 != 1024);
  v51 = *(result + 144);
  v52 = *(result + 160);
  v53 = *(result + 400);
  v54 = *(result + 416);
  v55 = *(result + 656);
  v56 = *(result + 672);
  v57 = vmulq_f32(v52, v52);
  v58 = vmulq_f32(v51, v51);
  v59 = *(result + 912);
  v60 = *(result + 928);
  v61 = vmulq_f32(v54, v54);
  v62 = vmulq_f32(v53, v53);
  v63 = vmulq_f32(v56, v56);
  v64 = vmulq_f32(v55, v55);
  v65 = vmulq_f32(v60, v60);
  v66 = vmulq_f32(v59, v59);
  for (j = 432; j != 656; j += 32)
  {
    v68 = *(result + j - 256);
    v69 = *(result + j - 240);
    v70 = *(result + j);
    v71 = *(result + j + 16);
    v72 = *(result + j + 256);
    v73 = *(result + j + 272);
    v74 = *(result + j + 512);
    v75 = *(result + j + 528);
    v52 = vaddq_f32(v52, v69);
    v51 = vaddq_f32(v51, v68);
    v54 = vaddq_f32(v54, v71);
    v53 = vaddq_f32(v53, v70);
    v56 = vaddq_f32(v56, v73);
    v55 = vaddq_f32(v55, v72);
    v60 = vaddq_f32(v60, v75);
    v59 = vaddq_f32(v59, v74);
    v57 = vmlaq_f32(v57, v69, v69);
    v58 = vmlaq_f32(v58, v68, v68);
    v61 = vmlaq_f32(v61, v71, v71);
    v62 = vmlaq_f32(v62, v70, v70);
    v63 = vmlaq_f32(v63, v73, v73);
    v64 = vmlaq_f32(v64, v72, v72);
    v65 = vmlaq_f32(v65, v75, v75);
    v66 = vmlaq_f32(v66, v74, v74);
  }

  v76 = vpaddq_f32(vpaddq_f32(vaddq_f32(v51, v52), vaddq_f32(v53, v54)), vpaddq_f32(vaddq_f32(v55, v56), vaddq_f32(v59, v60)));
  v77 = vmulq_f32(v76, vdupq_n_s32(0x3C800000u));
  v78 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v58, v57), vaddq_f32(v62, v61)), vpaddq_f32(vaddq_f32(v64, v63), vaddq_f32(v66, v65))), v77, v76);
  *(result + 16) = v77;
  v76.i64[0] = vpaddq_f32(v78, v78).u64[0];
  *(result + 120) = vpadd_f32(*v76.f32, *v76.f32).u32[0];
  if (*(result + 136) < 1)
  {
    *(result + 136) = v77.f32[3] >= 0.99997;
  }

  return result;
}

uint64_t PassThrough_8x8_vec(uint64_t result)
{
  if (*(result + 124) < 0.0)
  {
    v1 = *(result + 32);
    v2 = 0uLL;
    v3 = 8;
    v4 = result;
    v5 = 0uLL;
    do
    {
      v6 = xmmword_2984959B0;
      if (v1)
      {
        v6 = *v1;
      }

      v8 = v4[9];
      v7 = v4[10];
      v10 = v4[25];
      v9 = v4[26];
      v12 = v4[41];
      v11 = v4[42];
      v13 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v6.f32, 1), v7, v6.f32[0]), v11, v6, 2);
      v14 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *v6.f32, 1), v8, v6.f32[0]), v12, v6, 2);
      v4[153] = v14;
      v4[154] = v13;
      v15 = vsubq_f32(v7, v13);
      v16 = vsubq_f32(v8, v14);
      v17 = vsubq_f32(v10, v14);
      v18 = vsubq_f32(v9, v13);
      v19 = vsubq_f32(v12, v14);
      v20 = vsubq_f32(v11, v13);
      v2 = vaddq_f32(v2, vmlaq_f32(vmlaq_f32(vmulq_f32(v17, v17), v16, v16), v19, v19));
      v5 = vaddq_f32(v5, vmlaq_f32(vmlaq_f32(vmulq_f32(v18, v18), v15, v15), v20, v20));
      v4 += 2;
      --v3;
    }

    while (v3);
    v21 = vaddq_f32(v2, v5);
    v21.i64[0] = vpaddq_f32(v21, v21).u64[0];
    v21.f32[0] = vrecpes_f32(vpadd_f32(*v21.f32, *v21.f32).f32[0]);
    *(result + 124) = (v21.f32[0] * 3.0) + (v21.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v22 = (result + 2192);
    v23 = 0uLL;
    v24 = 8;
    v25 = vdupq_n_s32(0x3B808081u);
    v26 = 0uLL;
    do
    {
      v27 = vcgeq_f32(v25, v22[-80]);
      v28 = vcgeq_f32(v25, v22[-79]);
      *v22 = v27;
      v22[1] = v28;
      v22 += 2;
      v26 = vsubq_s32(v26, v28);
      v23 = vsubq_s32(v23, v27);
      --v24;
    }

    while (v24);
    v29 = vaddq_s32(v23, v26);
    v29.i64[0] = vpaddq_s32(v29, v29).u64[0];
    *(result + 134) = vpadd_s32(*v29.i8, *v29.i8).u8[0];
  }

  v30 = 0;
  v31 = 400;
  do
  {
    v32 = *(result + v31 - 256);
    v33 = *(result + v31 - 240);
    v34 = *(result + v31);
    v35 = *(result + v31 + 16);
    v36 = *(result + v31 + 256);
    v37 = *(result + v31 + 272);
    v38 = *(result + v31 + 512);
    v39 = *(result + v31 + 528);
    v73.val[0] = vzip1q_s32(v32, v36);
    v73.val[1] = vzip1q_s32(v34, v38);
    v40 = (result + v30 + 1168);
    vst2q_f32(v40, v73);
    v73.val[0] = vzip2q_s32(v33, v37);
    v74.val[0] = vzip1q_s32(v33, v37);
    v72.val[0] = vzip2q_s32(v32, v36);
    v72.val[1] = vzip2q_s32(v34, v38);
    v41 = (result + v30 + 1200);
    vst2q_f32(v41, v72);
    v74.val[1] = vzip1q_s32(v35, v39);
    v42 = (result + v30 + 1232);
    vst2q_f32(v42, v74);
    v73.val[1] = vzip2q_s32(v35, v39);
    v43 = (result + v30 + 1264);
    vst2q_f32(v43, v73);
    v30 += 128;
    v31 += 32;
  }

  while (v30 != 1024);
  v44 = *(result + 144);
  v45 = *(result + 160);
  v46 = *(result + 400);
  v47 = *(result + 416);
  v48 = *(result + 656);
  v49 = *(result + 672);
  v50 = vmulq_f32(v45, v45);
  v51 = vmulq_f32(v44, v44);
  v52 = *(result + 912);
  v53 = *(result + 928);
  v54 = vmulq_f32(v47, v47);
  v55 = vmulq_f32(v46, v46);
  v56 = vmulq_f32(v49, v49);
  v57 = vmulq_f32(v48, v48);
  v58 = vmulq_f32(v53, v53);
  v59 = vmulq_f32(v52, v52);
  for (i = 432; i != 656; i += 32)
  {
    v61 = *(result + i - 256);
    v62 = *(result + i - 240);
    v63 = *(result + i);
    v64 = *(result + i + 16);
    v65 = *(result + i + 256);
    v66 = *(result + i + 272);
    v67 = *(result + i + 512);
    v68 = *(result + i + 528);
    v45 = vaddq_f32(v45, v62);
    v44 = vaddq_f32(v44, v61);
    v47 = vaddq_f32(v47, v64);
    v46 = vaddq_f32(v46, v63);
    v49 = vaddq_f32(v49, v66);
    v48 = vaddq_f32(v48, v65);
    v53 = vaddq_f32(v53, v68);
    v52 = vaddq_f32(v52, v67);
    v50 = vmlaq_f32(v50, v62, v62);
    v51 = vmlaq_f32(v51, v61, v61);
    v54 = vmlaq_f32(v54, v64, v64);
    v55 = vmlaq_f32(v55, v63, v63);
    v56 = vmlaq_f32(v56, v66, v66);
    v57 = vmlaq_f32(v57, v65, v65);
    v58 = vmlaq_f32(v58, v68, v68);
    v59 = vmlaq_f32(v59, v67, v67);
  }

  v69 = vpaddq_f32(vpaddq_f32(vaddq_f32(v44, v45), vaddq_f32(v46, v47)), vpaddq_f32(vaddq_f32(v48, v49), vaddq_f32(v52, v53)));
  v70 = vmulq_f32(v69, vdupq_n_s32(0x3C800000u));
  v71 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v51, v50), vaddq_f32(v55, v54)), vpaddq_f32(vaddq_f32(v57, v56), vaddq_f32(v59, v58))), v70, v69);
  *(result + 16) = v70;
  v69.i64[0] = vpaddq_f32(v71, v71).u64[0];
  *(result + 120) = vpadd_f32(*v69.f32, *v69.f32).u32[0];
  if (*(result + 136) < 1)
  {
    *(result + 136) = v70.f32[3] >= 0.99997;
  }

  return result;
}

uint64_t Write_R8_vec(uint64_t result, int a2, uint64_t a3, _BYTE *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9.i64[0] = 0xFFFF0000FFFF0000;
    v9.i64[1] = 0xFFFF0000FFFF0000;
    v10.i64[0] = 0x800000008000;
    v10.i64[1] = 0x800000008000;
    do
    {
      v11 = a5;
      v12 = v7;
      v13 = a4;
      if (a5)
      {
        do
        {
          v14 = vmulq_s32(*(result + 288 + 16 * v12), xmmword_2984959C0);
          v15 = vaddq_s32(vextq_s8(v14, v14, 8uLL), v14);
          v16 = vaddq_s32(vrev64q_s32(v15), v15);
          *v16.i8 = vqadd_u16(vqmovun_s32(vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v9, v16), v10), v16), 0x10uLL)), 0x80008000800080);
          *v13++ = vqsub_u16(*&v16, vshr_n_u16(*&v16, 8uLL)).i8[1];
          ++v12;
          --v11;
        }

        while (v11);
      }

      a4 += *a7;
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RA8_vec(uint64_t result, int a2, uint64_t a3, _BYTE *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = result + 288;
    v10.i64[0] = 0xFFFF0000FFFF0000;
    v10.i64[1] = 0xFFFF0000FFFF0000;
    v11.i64[0] = 0x800000008000;
    v11.i64[1] = 0x800000008000;
    do
    {
      v12 = a5;
      v13 = v7;
      v14 = a4;
      if (a5)
      {
        do
        {
          v15 = vmulq_s32(*(v9 + 16 * v13), xmmword_2984959C0);
          v16 = vaddq_s32(vextq_s8(v15, v15, 8uLL), v15);
          v17 = vaddq_s32(vrev64q_s32(v16), v16);
          v18 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v10, v17), v11), v17), 0x10uLL);
          v18.i32[3] = HIDWORD(*(v9 + 16 * v13));
          v19 = vqadd_u16(vqmovun_s32(v18), 0x80008000800080);
          v20 = vqsub_u16(v19, vshr_n_u16(v19, 8uLL));
          v14[1] = v20.i8[7];
          *v14 = v20.i8[1];
          v14 += 2;
          ++v13;
          --v12;
        }

        while (v12);
      }

      a4 += *a7;
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RGBA8_vec(uint64_t result, int a2, uint64_t a3, _DWORD *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    for (i = 0; i != a6; ++i)
    {
      v9 = a5;
      v10 = v7;
      v11 = a4;
      if (a5)
      {
        do
        {
          v12 = *(result + 288 + 16 * v10);
          *v12.i8 = vqadd_u16(vqmovun_s32(v12), 0x80008000800080);
          *v12.i8 = vqsub_u16(*v12.i8, vshr_n_u16(*v12.i8, 8uLL));
          *v11++ = vmovn_s16(vrev16q_s8(v12)).u32[0];
          ++v10;
          --v9;
        }

        while (v9);
      }

      a4 = (a4 + *a7);
      v7 += a2;
    }
  }

  return result;
}

uint64_t Write_BGRA8_vec(uint64_t result, int a2, double a3, double a4, int16x8_t a5, uint64_t a6, _DWORD *a7, unsigned int a8, int a9, void *a10)
{
  if (a9)
  {
    v10 = 0;
    for (i = 0; i != a9; ++i)
    {
      v12 = a8;
      v13 = v10;
      v14 = a7;
      if (a8)
      {
        do
        {
          v15 = vqadd_u16(vqmovun_s32(*(result + 288 + 16 * v13)), 0x80008000800080);
          v16 = vqsub_u16(v15, vshr_n_u16(v15, 8uLL));
          a5.i16[0] = v16.u8[5];
          a5.i16[1] = v16.u8[3];
          a5.i16[2] = v16.u8[1];
          a5.i16[3] = v16.u8[7];
          *v14++ = vmovn_s16(a5).u32[0];
          ++v13;
          --v12;
        }

        while (v12);
      }

      a7 = (a7 + *a10);
      v10 += a2;
    }
  }

  return result;
}

uint64_t Write_R16_vec(uint64_t result, int a2, uint64_t a3, _WORD *a4, unsigned int a5, int a6, uint64_t *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = *a7;
    v10.i64[0] = 0xFFFF0000FFFF0000;
    v10.i64[1] = 0xFFFF0000FFFF0000;
    v11.i64[0] = 0x800000008000;
    v11.i64[1] = 0x800000008000;
    do
    {
      v12 = a5;
      v13 = v7;
      v14 = a4;
      if (a5)
      {
        do
        {
          v15 = vmulq_s32(*(result + 288 + 16 * v13), xmmword_2984959C0);
          v16 = vaddq_s32(vextq_s8(v15, v15, 8uLL), v15);
          v17 = vaddq_s32(vrev64q_s32(v16), v16);
          *v14++ = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v10, v17), v11), v17), 0x10uLL).u16[0];
          ++v13;
          --v12;
        }

        while (v12);
      }

      a4 = (a4 + v9);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RA16_vec(uint64_t result, int a2, uint64_t a3, _WORD *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = result + 288;
    v10.i64[0] = 0xFFFF0000FFFF0000;
    v10.i64[1] = 0xFFFF0000FFFF0000;
    v11.i64[0] = 0x800000008000;
    v11.i64[1] = 0x800000008000;
    do
    {
      v12 = a5;
      v13 = v7;
      v14 = a4;
      if (a5)
      {
        do
        {
          v15 = vmulq_s32(*(v9 + 16 * v13), xmmword_2984959C0);
          v16 = vaddq_s32(vextq_s8(v15, v15, 8uLL), v15);
          v17 = vaddq_s32(vrev64q_s32(v16), v16);
          v18 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v10, v17), v11), v17), 0x10uLL);
          v18.i32[3] = HIDWORD(*(v9 + 16 * v13));
          v19 = vmovn_s32(v18);
          v14[1] = v19.i16[3];
          *v14 = v19.i16[0];
          v14 += 2;
          ++v13;
          --v12;
        }

        while (v12);
      }

      a4 = (a4 + *a7);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RGBA16_vec(uint64_t result, int a2, uint64_t a3, int16x4_t *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    for (i = 0; i != a6; ++i)
    {
      v9 = a5;
      v10 = v7;
      v11 = a4;
      if (a5)
      {
        do
        {
          *v11++ = vmovn_s32(*(result + 288 + 16 * v10++));
          --v9;
        }

        while (v9);
      }

      a4 = (a4 + *a7);
      v7 += a2;
    }
  }

  return result;
}

uint64_t Write_Rf16_vec(uint64_t result, int a2, uint64_t a3, float16x4_t *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = result + 288;
    v10 = vdupq_n_s32(0x37800000u);
    v11 = vdupq_n_s32(0x477FE000u);
    v12 = vdupq_n_s32(0xC77FE000);
    v13.i64[0] = 0xFFFF0000FFFF0000;
    v13.i64[1] = 0xFFFF0000FFFF0000;
    v14.i64[0] = 0x800000008000;
    v14.i64[1] = 0x800000008000;
    v15.i64[0] = 0xFFFF0000FFFFLL;
    v15.i64[1] = 0xFFFF0000FFFFLL;
    v16.i64[0] = 0x1000000010000;
    v16.i64[1] = 0x1000000010000;
    v17.i64[0] = 0x300000003;
    v17.i64[1] = 0x300000003;
    v18.i64[0] = 0x1F0000001FLL;
    v18.i64[1] = 0x1F0000001FLL;
    do
    {
      if (a5 >= 4)
      {
        v21 = 0;
        v20 = a4;
        do
        {
          v22 = v7 + v21;
          v23 = *(v9 + 16 * (v7 + v21));
          if (*(result + 2612))
          {
            v24 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(v23)), xmmword_2984959D0);
            v25 = vaddq_f32(v24, vextq_s8(v24, v24, 8uLL));
            v26 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(*(v9 + 16 * (v22 + 1)))), xmmword_2984959D0);
            v27 = vaddq_f32(v26, vextq_s8(v26, v26, 8uLL));
            v28 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(*(v9 + 16 * (v22 + 2)))), xmmword_2984959D0);
            v29 = vaddq_f32(v28, vextq_s8(v28, v28, 8uLL));
            v30 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(*(v9 + 16 * (v22 + 3)))), xmmword_2984959D0);
            v31 = vaddq_f32(v30, vextq_s8(v30, v30, 8uLL));
            v32 = vzip1_s16(vzip1_s16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v25, vrev64q_s32(v25)), v11), v12), v18)), vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v29, vrev64q_s32(v29)), v11), v12), v18))), vzip1_s16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v27, vrev64q_s32(v27)), v11), v12), v18)), vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v31, vrev64q_s32(v31)), v11), v12), v18))));
          }

          else
          {
            v33 = vmulq_s32(v23, xmmword_2984959C0);
            v34 = vaddq_s32(vextq_s8(v33, v33, 8uLL), v33);
            v35 = vaddq_s32(vrev64q_s32(v34), v34);
            v36 = vmulq_s32(*(v9 + 16 * (v22 + 1)), xmmword_2984959C0);
            v37 = vaddq_s32(vextq_s8(v36, v36, 8uLL), v36);
            v38 = vaddq_s32(vrev64q_s32(v37), v37);
            v39 = vmulq_s32(*(v9 + 16 * (v22 + 2)), xmmword_2984959C0);
            v40 = vaddq_s32(vextq_s8(v39, v39, 8uLL), v39);
            v41 = vaddq_s32(vrev64q_s32(v40), v40);
            v42 = vmulq_s32(*(v9 + 16 * (v22 + 3)), xmmword_2984959C0);
            v43 = vaddq_s32(vextq_s8(v42, v42, 8uLL), v42);
            v44 = vaddq_s32(vrev64q_s32(v43), v43);
            v45 = vzip1q_s32(vzip1q_s32(vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v35), v14), v35), 0x10uLL), vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v41), v14), v41), 0x10uLL)), vzip1q_s32(vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v38), v14), v38), 0x10uLL), vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v44), v14), v44), 0x10uLL)));
            v46 = vbslq_s8(vceqq_s32(v45, v15), v16, v45);
            v32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v46, vcgtq_u32(v46, v17))), v10), v11), v12), v18));
          }

          *v20++ = v32;
          LODWORD(v19) = v21 + 4;
          v47 = v21 + 8;
          v21 += 4;
        }

        while (v47 <= a5);
      }

      else
      {
        LODWORD(v19) = 0;
        v20 = a4;
      }

      if (v19 < a5)
      {
        v48 = *(result + 2612);
        v19 = v19;
        do
        {
          v49 = *(v9 + 16 * (v7 + v19));
          if (v48)
          {
            v50 = vmulq_f32(vcvtq_f32_f16(vmovn_s32(v49)), xmmword_2984959D0);
            v51 = vaddq_f32(v50, vextq_s8(v50, v50, 8uLL));
            v52 = vaddq_f32(v51, vrev64q_s32(v51));
          }

          else
          {
            v53 = vmulq_s32(v49, xmmword_2984959C0);
            v54 = vaddq_s32(vextq_s8(v53, v53, 8uLL), v53);
            v55 = vaddq_s32(vrev64q_s32(v54), v54);
            v56 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v55), v14), v55), 0x10uLL);
            v57 = vbslq_s8(vceqq_s32(v56, v15), v16, v56);
            v52 = vmulq_f32(vcvtq_f32_u32(vandq_s8(v57, vcgtq_u32(v57, v17))), v10);
          }

          v20->i16[v19++ & 3] = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v52, v11), v12), v18)).u16[0];
        }

        while (a5 != v19);
      }

      a4 = (a4 + *a7);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RAf16_vec(uint64_t result, int a2, uint64_t a3, float16x4_t *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9 = vdupq_n_s32(0x37800000u);
    v10 = vdupq_n_s32(0x477FE000u);
    v11 = vdupq_n_s32(0xC77FE000);
    v12 = result + 288;
    v13.i64[0] = 0xFFFF0000FFFF0000;
    v13.i64[1] = 0xFFFF0000FFFF0000;
    v14.i64[0] = 0x800000008000;
    v14.i64[1] = 0x800000008000;
    v15.i64[0] = 0xFFFF0000FFFFLL;
    v15.i64[1] = 0xFFFF0000FFFFLL;
    v16.i64[0] = 0x1000000010000;
    v16.i64[1] = 0x1000000010000;
    v17.i64[0] = 0x300000003;
    v17.i64[1] = 0x300000003;
    v18.i64[0] = 0x1F0000001FLL;
    v18.i64[1] = 0x1F0000001FLL;
    do
    {
      if (a5 >= 2)
      {
        v21 = 0;
        v20 = a4;
        do
        {
          v22 = v7 + v21;
          v23 = *(v12 + 16 * (v7 + v21));
          if (*(result + 2612))
          {
            v24 = vmovn_s32(v23);
            v25 = vmulq_f32(vcvtq_f32_f16(v24), xmmword_2984959D0);
            v26 = vaddq_f32(v25, vextq_s8(v25, v25, 8uLL));
            *v26.f32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v26, vrev64q_s32(v26)), v10), v11), v18));
            v27 = *v26.f32;
            v27.i16[3] = v24.i16[3];
            v28 = vmovn_s32(*(v12 + 16 * (v22 + 1)));
            v29 = vmulq_f32(vcvtq_f32_f16(v28), xmmword_2984959D0);
            v30 = vaddq_f32(v29, vextq_s8(v29, v29, 8uLL));
            *v30.f32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v30, vrev64q_s32(v30)), v10), v11), v18));
            v31 = *v30.f32;
            v31.i16[3] = v28.i16[3];
            v27.i16[1] = v26.i16[0];
            v31.i16[1] = v30.i16[0];
            v32 = vuzp2_s16(v27, v31);
          }

          else
          {
            v33 = vmulq_s32(v23, xmmword_2984959C0);
            v34 = vaddq_s32(vextq_s8(v33, v33, 8uLL), v33);
            v35 = vaddq_s32(vrev64q_s32(v34), v34);
            v36 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v35), v14), v35), 0x10uLL);
            v36.i32[3] = HIDWORD(*(v12 + 16 * v22));
            v37 = v22 + 1;
            v38 = vmulq_s32(*(v12 + 16 * v37), xmmword_2984959C0);
            v39 = vaddq_s32(vextq_s8(v38, v38, 8uLL), v38);
            v40 = vaddq_s32(vrev64q_s32(v39), v39);
            v41 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v40), v14), v40), 0x10uLL);
            v41.i32[3] = HIDWORD(*(v12 + 16 * v37));
            v36.i32[1] = v36.i32[0];
            v41.i32[1] = v41.i32[0];
            v42 = vuzp2q_s32(v36, v41);
            v43 = vbslq_s8(vceqq_s32(v42, v15), v16, v42);
            v32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v43, vcgtq_s32(v43, v17))), v9), v10), v11), v18));
          }

          *v20++ = v32;
          v19 = v21 + 2;
          v44 = v21 + 4;
          v21 += 2;
        }

        while (v44 <= a5);
      }

      else
      {
        v19 = 0;
        v20 = a4;
      }

      if (v19 < a5)
      {
        v45 = v19 + v8 * a2;
        v46 = *(v12 + 16 * v45);
        if (*(result + 2612))
        {
          v47 = vmovn_s32(v46);
          v48 = vmulq_f32(vcvtq_f32_f16(v47), xmmword_2984959D0);
          v49 = vaddq_f32(v48, vextq_s8(v48, v48, 8uLL));
          v49.i16[0] = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vaddq_f32(v49, vrev64q_s32(v49)), v10), v11), v18)).u16[0];
          v49.i16[3] = v47.i16[3];
        }

        else
        {
          v50 = vmulq_s32(v46, xmmword_2984959C0);
          v51 = vaddq_s32(vextq_s8(v50, v50, 8uLL), v50);
          v52 = vaddq_s32(vrev64q_s32(v51), v51);
          v53 = vshrq_n_u32(vaddq_s32(vandq_s8(vcgtq_u32(v13, v52), v14), v52), 0x10uLL);
          v53.i32[3] = HIDWORD(*(v12 + 16 * v45));
          v49 = vbslq_s8(vceqq_s32(v53, v15), v16, v53);
          *v49.f32 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v49, vcgtq_s32(v49, v17))), v9), v10), v11), v18));
        }

        v20->i16[1] = v49.i16[3];
        v20->i16[0] = v49.i16[0];
      }

      a4 = (a4 + *a7);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t Write_RGBAf16_vec(uint64_t result, int a2, uint64_t a3, float16x4_t *a4, unsigned int a5, int a6, void *a7)
{
  if (a6)
  {
    v7 = 0;
    v8 = 0;
    v9.i64[0] = 0xFFFF0000FFFFLL;
    v9.i64[1] = 0xFFFF0000FFFFLL;
    v10.i64[0] = 0x1000000010000;
    v10.i64[1] = 0x1000000010000;
    v11.i64[0] = 0x300000003;
    v11.i64[1] = 0x300000003;
    v12 = vdupq_n_s32(0x37800000u);
    v13 = vdupq_n_s32(0x477FE000u);
    v14 = vdupq_n_s32(0xC77FE000);
    v15.i64[0] = 0x1F0000001FLL;
    v15.i64[1] = 0x1F0000001FLL;
    do
    {
      v16 = a5;
      v17 = v7;
      v18 = a4;
      if (a5)
      {
        do
        {
          v19 = *(result + 288 + 16 * v17);
          if (*(result + 2612))
          {
            v20 = vmovn_s32(v19);
          }

          else
          {
            v21 = vbslq_s8(vceqq_s32(v19, v9), v10, v19);
            v20 = vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(vmulq_f32(vcvtq_f32_u32(vandq_s8(v21, vcgtq_s32(v21, v11))), v12), v13), v14), v15));
          }

          *v18++ = v20;
          ++v17;
          --v16;
        }

        while (v16);
      }

      a4 = (a4 + *a7);
      ++v8;
      v7 += a2;
    }

    while (v8 != a6);
  }

  return result;
}

uint64_t FlattenNon_vec(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    v4 = a3 + 18;
    v5 = vdupq_n_s32(0x37800080u);
    v6 = vdupq_n_s32(0x477FFF00u);
    v7 = vdupq_n_s32(0x477FE000u);
    v8 = vdupq_n_s32(0xC77FE000);
    v9.i64[0] = 0x1F0000001FLL;
    v9.i64[1] = 0x1F0000001FLL;
    do
    {
      v10 = v4[v3];
      v11 = a3[162];
      if (a3[163].i32[1])
      {
        _Q7 = vcvtq_f32_f16(vmovn_s32(v10));
        _Q16 = vsubq_f32(_Q7, v11);
        v14.i64[0] = vmlaq_laneq_f32(v11, _Q16, _Q7, 3).u64[0];
        _Q16.i32[0] = _Q16.i32[2];
        __asm { FMLA            S6, S16, V7.S[3] }

        v14.i64[1] = __PAIR64__(_Q7.u32[3], _S6);
        v20 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v14, v7), v8), v9)));
      }

      else
      {
        _Q7 = vmulq_f32(vcvtq_f32_s32(v10), v5);
        v22 = vsubq_f32(_Q7, v11);
        _S17 = v22.i32[2];
        __asm { FMLA            S6, S17, V7.S[3] }

        v25.i64[0] = vmlaq_laneq_f32(v11, v22, _Q7, 3).u64[0];
        v25.i64[1] = __PAIR64__(_Q7.u32[3], _S6);
        v26.i64[0] = 0x3F0000003F000000;
        v26.i64[1] = 0x3F0000003F000000;
        v20 = vcvtq_s32_f32(vrndq_f32(vmlaq_f32(v26, v6, v25)));
      }

      v4[v3++] = v20;
    }

    while (HIDWORD(result) * result > v3);
  }

  return result;
}

uint64_t FlattenPre_vec(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  if (HIDWORD(result) * result)
  {
    v4 = 0;
    v5 = a3 + 18;
    v6 = vdupq_n_s32(0x37800080u);
    v7 = vdup_n_s32(0x477FFF00u);
    v8 = vdupq_n_s32(0x477FE000u);
    v9 = vdupq_n_s32(0xC77FE000);
    v10.i64[0] = 0x1F0000001FLL;
    v10.i64[1] = 0x1F0000001FLL;
    do
    {
      v11 = v5[v4];
      if (a3[163].i32[1])
      {
        if (v11.i32[3] != 15360)
        {
          _Q16 = vcvtq_f32_f16(vmovn_s32(v11));
          v3.i32[0] = _Q16.i32[3];
          _S19 = a3[162].i64[1];
          __asm { FMLS            S21, S19, V16.S[3] }

          v19.i64[0] = vmlsq_lane_f32(vaddq_f32(_Q16, a3[162]), a3[162], v3, 0).u64[0];
          v19.i64[1] = __PAIR64__(1.0, _S21);
          v20 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v19, v8), v9), v10)));
LABEL_8:
          v5[v4] = v20;
        }
      }

      else if (v11.i32[3] != 0xFFFF)
      {
        _Q16 = vmulq_f32(vcvtq_f32_s32(v11), v6);
        v3.i32[0] = _Q16.i32[3];
        _S19 = a3[162].i64[1];
        __asm { FMLS            S21, S19, V16.S[3] }

        *v20.i8 = vcvt_s32_f32(vrnd_f32(vmla_f32(0x3F0000003F000000, v7, vmls_lane_f32(*&vaddq_f32(_Q16, a3[162]), *a3[162].f32, v3, 0))));
        v20.i32[2] = ((_S21 * 65535.0) + 0.5);
        v20.i32[3] = 0xFFFF;
        goto LABEL_8;
      }

      ++v4;
    }

    while (HIDWORD(result) * result > v4);
  }

  return result;
}

uint64_t Premultiply_vec(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    v4 = a3 + 288;
    v5 = vdupq_n_s32(0x37800080u);
    v6 = vdupq_n_s32(0x477FFF00u);
    v7 = vdupq_n_s32(0x477FE000u);
    v8 = vdupq_n_s32(0xC77FE000);
    v9.i64[0] = 0x1F0000001FLL;
    v9.i64[1] = 0x1F0000001FLL;
    do
    {
      v10 = *(v4 + 16 * v3);
      if (*(a3 + 2612))
      {
        v11 = vcvtq_f32_f16(vmovn_s32(v10));
        v12 = vmulq_laneq_f32(v11, v11, 3);
        v12.i32[3] = 0;
        v13 = vminnmq_f32(v12, xmmword_2984959E0);
        v13.i32[3] = v11.i32[3];
        v14 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v13, v7), v8), v9)));
      }

      else
      {
        v15 = vmulq_f32(vcvtq_f32_s32(v10), v5);
        v16 = vmulq_laneq_f32(v15, v15, 3);
        v16.i32[3] = 0;
        v17 = vminnmq_f32(v16, xmmword_2984959E0);
        v17.i32[3] = v15.i32[3];
        v15.i64[0] = 0x3F0000003F000000;
        v15.i64[1] = 0x3F0000003F000000;
        v14 = vcvtq_s32_f32(vrndq_f32(vmlaq_f32(v15, v6, v17)));
      }

      *(v4 + 16 * v3++) = v14;
    }

    while (HIDWORD(result) * result > v3);
  }

  return result;
}

uint64_t Unpremultiply_vec(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    v4 = a3 + 288;
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    v6 = vdupq_n_s32(0x477FE000u);
    v7 = vdupq_n_s32(0xC77FE000);
    v8.i64[0] = 0x1F0000001FLL;
    v8.i64[1] = 0x1F0000001FLL;
    while (1)
    {
      v9 = *(v4 + 16 * v3);
      if (!v9.i32[3])
      {
        break;
      }

      if (*(a3 + 2612))
      {
        if (v9.i32[3] != 15360)
        {
          v10 = vcvtq_f32_f16(vmovn_s32(v9));
          v11 = vminnmq_f32(v10, vdupq_laneq_s32(v10, 3));
          v12 = vmulq_n_f32(v11, 1.0 / v11.f32[3]);
          v12.i32[3] = v11.i32[3];
          v13 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v12, v6), v7), v8)));
LABEL_10:
          *(v4 + 16 * v3) = v13;
        }
      }

      else if (v9.i32[3] != 0xFFFF)
      {
        v14 = vcvtq_f32_s32(v9);
        v15 = vminnmq_f32(v14, vdupq_laneq_s32(v14, 3));
        v16 = vmulq_n_f32(v15, 65535.0 / v15.f32[3]);
        v16.i32[3] = v15.i32[3];
        v13 = vcvtq_s32_f32(vaddq_f32(v16, v5));
        goto LABEL_10;
      }

      if (HIDWORD(result) * result <= ++v3)
      {
        return result;
      }
    }

    v13 = 0uLL;
    goto LABEL_10;
  }

  return result;
}

uint64_t SetAlphaOne_vec(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    if (*(a3 + 2612))
    {
      v4 = 15360;
    }

    else
    {
      v4 = 0xFFFF;
    }

    do
    {
      *(a3 + 300 + 16 * v3++) = v4;
    }

    while (HIDWORD(result) * result > v3);
  }

  return result;
}

uint64_t ClampPremultiplied_vec(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (HIDWORD(result) * result)
  {
    v3 = 0;
    v4 = a3 + 288;
    v5 = vdupq_n_s32(0x477FE000u);
    v6 = vdupq_n_s32(0xC77FE000);
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    do
    {
      v8 = *(v4 + 16 * v3);
      if (*(a3 + 2612))
      {
        v9 = vcvtq_f32_f16(vmovn_s32(v8));
        v10 = v9;
        v10.i32[3] = 0;
        v11 = vdupq_laneq_s32(v9, 3);
        v11.i32[3] = 0;
        v12 = vminnmq_f32(v10, v11);
        v12.i32[3] = v9.i32[3];
        v13 = vmovl_u16(vcvt_f16_f32(vandq_s8(vmaxnmq_f32(vminnmq_f32(v12, v5), v6), v7)));
      }

      else
      {
        v14 = *(v4 + 16 * v3);
        v14.i32[3] = 0;
        v15 = vdupq_laneq_s32(v8, 3);
        v15.i32[3] = 0;
        v13 = vminq_s32(v14, v15);
        v13.i32[3] = HIDWORD(*(v4 + 16 * v3));
      }

      *(v4 + 16 * v3++) = v13;
    }

    while (HIDWORD(result) * result > v3);
  }

  return result;
}

void EncodeASTC_8x8_RGBA_vec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5);
  v9 = v8;
  v10 = v6;
  v11 = v5;
  STACK[0x23F8] = *MEMORY[0x29EDCA608];
  *&STACK[0x1630] = 0u;
  *&STACK[0x1620] = 0u;
  v12 = v5 + 272;
  *&STACK[0x1610] = 0u;
  *&STACK[0x1600] = 0u;
  *&STACK[0x15F0] = 0u;
  *&STACK[0x15E0] = 0u;
  *&STACK[0x15D0] = 0u;
  *&STACK[0x15C0] = 0u;
  *&STACK[0x15B0] = 0u;
  *&STACK[0x15A0] = 0u;
  *&STACK[0x1590] = 0u;
  *&STACK[0x1580] = 0u;
  *&STACK[0x1570] = 0u;
  *&STACK[0x1560] = 0u;
  *&STACK[0x1550] = 0u;
  *&STACK[0x1540] = 0u;
  *&STACK[0x1530] = 0u;
  *&STACK[0x1520] = 0u;
  *&STACK[0x1510] = 0u;
  *&STACK[0x1500] = 0u;
  *&STACK[0x14F0] = 0u;
  *&STACK[0x14E0] = 0u;
  *&STACK[0x14D0] = 0u;
  *&STACK[0x14C0] = 0u;
  *&STACK[0x14B0] = 0u;
  *&STACK[0x14A0] = 0u;
  *&STACK[0x1490] = 0u;
  *&STACK[0x1480] = 0u;
  *&STACK[0x1470] = 0u;
  *&STACK[0x1460] = 0u;
  *&STACK[0x1450] = 0u;
  *&STACK[0x1440] = 0u;
  v13 = *(v5 + 16);
  v14 = *(v5 + 134);
  if (v14 >= 1 && *(v5 + 135))
  {
    v15 = 0;
    v16 = vcgezq_s32(*(v5 + 2192));
    v17 = vcgezq_s32(*(v5 + 2208));
    v18 = vandq_s8(*(v5 + 160), v17);
    v19 = vandq_s8(*(v5 + 144), v16);
    v20 = vandq_s8(*(v5 + 416), v17);
    v21 = vandq_s8(*(v5 + 400), v16);
    v22 = vandq_s8(*(v5 + 672), v17);
    v23 = vandq_s8(*(v5 + 656), v16);
    v24 = vandq_s8(*(v5 + 928), v17);
    v25 = vandq_s8(*(v5 + 912), v16);
    do
    {
      v26 = vcgezq_s32(*(v5 + v15 + 2240));
      v27 = vcgezq_s32(*(v5 + v15 + 2224));
      v18 = vaddq_f32(v18, vandq_s8(*(v5 + v15 + 192), v26));
      v19 = vaddq_f32(v19, vandq_s8(*(v5 + v15 + 176), v27));
      v20 = vaddq_f32(v20, vandq_s8(*(v5 + v15 + 448), v26));
      v21 = vaddq_f32(v21, vandq_s8(*(v5 + v15 + 432), v27));
      v22 = vaddq_f32(v22, vandq_s8(*(v5 + v15 + 704), v26));
      v23 = vaddq_f32(v23, vandq_s8(*(v5 + v15 + 688), v27));
      v24 = vaddq_f32(v24, vandq_s8(*(v5 + v15 + 960), v26));
      v25 = vaddq_f32(v25, vandq_s8(*(v5 + v15 + 944), v27));
      v15 += 32;
    }

    while (v15 != 224);
    v13 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v19, v18), vaddq_f32(v21, v20)), vpaddq_f32(vaddq_f32(v23, v22), vaddq_f32(v25, v24))), ReciprocalTable[64 - v14]);
  }

  v28 = *v6;
  *&STACK[0xE90] = 0uLL;
  *&STACK[0xE80] = 0uLL;
  *&STACK[0xE70] = 0uLL;
  *&STACK[0xE60] = 0uLL;
  *&STACK[0xE50] = 0uLL;
  *&STACK[0xE40] = 0uLL;
  *&STACK[0xE30] = 0uLL;
  *&STACK[0xE20] = 0uLL;
  *&STACK[0xE10] = 0uLL;
  *&STACK[0xE00] = 0uLL;
  *&STACK[0xDF0] = 0uLL;
  *&STACK[0xDE0] = 0uLL;
  *&STACK[0xDD0] = 0uLL;
  *&STACK[0xDC0] = 0uLL;
  *&STACK[0xDB0] = 0uLL;
  *&STACK[0xDA0] = 0uLL;
  *&STACK[0xD90] = 0uLL;
  *&STACK[0xD80] = 0uLL;
  *&STACK[0xD70] = 0uLL;
  *&STACK[0xD60] = 0uLL;
  *&STACK[0xD50] = 0uLL;
  *&STACK[0xD40] = 0uLL;
  *&STACK[0xD30] = 0uLL;
  *&STACK[0xD20] = 0uLL;
  *&STACK[0xD10] = 0uLL;
  *&STACK[0xD00] = 0uLL;
  *&STACK[0xCF0] = 0uLL;
  *&STACK[0xCE0] = 0uLL;
  *&STACK[0xCD0] = 0uLL;
  *&STACK[0xCC0] = 0uLL;
  __asm { FMOV            V2.4S, #3.0 }

  *&STACK[0x3A0] = _Q2;
  *&STACK[0xCB0] = 0uLL;
  *&STACK[0xCA0] = 0uLL;
  if (!(_NF ^ _VF | _ZF))
  {
    LODWORD(STACK[0x1434]) = 1;
    if (*(v5 + 136))
    {
      v32 = WeightInfoForSingleLineSingleWeight_8x8(2, 2);
      v33 = 0;
      STACK[0x21F0] = v32;
      v34.i64[0] = 0x7F0000007FLL;
      v34.i64[1] = 0x7F0000007FLL;
      v35 = vnegq_f32(v34);
      v36 = v11 + 2448;
      v37 = v35;
      v38.i64[0] = 0x7F0000007FLL;
      v38.i64[1] = 0x7F0000007FLL;
      do
      {
        v40 = *(v36 + v33);
        v39 = *(v36 + v33 + 16);
        v35 = vminnmq_f32(v40, v35);
        v37 = vminnmq_f32(v39, v37);
        v34 = vmaxnmq_f32(v40, v34);
        v38 = vmaxnmq_f32(v39, v38);
        v33 += 32;
      }

      while (v33 != 256);
      v41 = vminnmq_f32(v35, v37);
      v42 = vmaxnmq_f32(v34, v38);
      v43 = vminnmq_f32(v41, vextq_s8(v41, v41, 8uLL));
      v44 = vmaxnmq_f32(v42, vextq_s8(v42, v42, 8uLL));
      v45 = vminnmq_f32(v43, vrev64q_s32(v43));
      v46 = vmaxnmq_f32(v44, vrev64q_s32(v44));
      v45.i32[3] = 0;
      v46.i32[3] = 0;
      v47 = vorrq_s8(v46, xmmword_298492170);
      v48 = vorrq_s8(v45, xmmword_298492170);
      goto LABEL_139;
    }

    v92 = *(v5 + 32);
    if (v92)
    {
      v93 = *v92;
      v93.i32[3] = 0;
    }

    else
    {
      v93 = xmmword_2984959B0;
    }

    v557 = vmulq_f32(v13, v93);
    *v557.i8 = vadd_f32(*v557.i8, *&vextq_s8(v557, v557, 8uLL));
    v558 = vadd_f32(*v557.i8, vdup_lane_s32(*v557.i8, 1));
    v559 = vaddv_f32(*v557.i8);
    v560 = vdupq_lane_s32(v558, 0);
    v561 = v5 + 2448;
    v562 = v5 + 912;
    v563 = vdupq_laneq_s32(v13, 3);
    v564 = xmmword_298495620;
    v565 = xmmword_298495600;
    v566 = v5 + 2192;
    v567.i64[0] = -1;
    v567.i64[1] = -1;
    v568.i64[0] = 0x7F0000007FLL;
    v568.i64[1] = 0x7F0000007FLL;
    v569 = 8;
    v570.i64[0] = 0x800000008;
    v570.i64[1] = 0x800000008;
    v571 = v5 + 2192;
    v572.i64[0] = 0x7F0000007FLL;
    v572.i64[1] = 0x7F0000007FLL;
    v573.i64[0] = 0x7F0000007FLL;
    v573.i64[1] = 0x7F0000007FLL;
    v574.i64[0] = -1;
    v574.i64[1] = -1;
    do
    {
      v575 = vsubq_f32(*(v571 + 256), v560);
      v576 = vsubq_f32(*(v571 + 272), v560);
      v577 = vsubq_f32(*(v571 - 1264), v563);
      v578 = vsubq_f32(*(v571 - 1280), v563);
      v579 = vmlaq_f32(vmulq_f32(v577, v577), v576, v576);
      v580 = vmlaq_f32(vmulq_f32(v578, v578), v575, v575);
      if (*(v5 + 135))
      {
        v579 = vbslq_s8(vcltzq_s32(*(v571 + 16)), v568, v579);
        v580 = vbslq_s8(vcltzq_s32(*v571), v568, v580);
      }

      v567 = vbslq_s8(vcgtq_f32(v580, v572), v565, v567);
      v574 = vbslq_s8(vcgtq_f32(v579, v573), v564, v574);
      v572 = vmaxnmq_f32(v572, v580);
      v573 = vmaxnmq_f32(v573, v579);
      v565 = vaddq_s32(v565, v570);
      v564 = vaddq_s32(v564, v570);
      v571 += 32;
      --v569;
    }

    while (v569);
    v581 = vmaxnmq_f32(v572, v573);
    v582 = vbslq_s8(vcgtq_f32(v572, v573), v567, v574);
    v583 = vextq_s8(v581, v581, 8uLL);
    v584 = vcgtq_f32(v581, v583);
    v585 = vbslq_s8(v584, v582, vextq_s8(v582, v582, 8uLL));
    v586 = vmaxnmq_f32(v581, v583);
    v589 = vbslq_s8(vcgtq_f32(v586, vrev64q_s32(v586)), v585, vdupq_lane_s32(*v585.i8, 1)).u64[0];
    v587 = v589.i32[0];
    v588 = v589.i32[0];
    v589.i32[0] = *(v561 + 4 * v589.i32[0]);
    LODWORD(v7) = *(v562 + 4 * v588);
    *v584.i32 = v559 - *v589.i32;
    v590 = vdupq_lane_s32(v589, 0);
    v591 = vdupq_lane_s32(*&v7, 0);
    v592 = v13.f32[3] - *&v7;
    v593 = vdupq_lane_s32(*v584.i8, 0);
    v594 = xmmword_298495620;
    v595 = xmmword_298495600;
    v596.i64[0] = -1;
    v596.i64[1] = -1;
    v597.i64[0] = 0x7F0000007FLL;
    v597.i64[1] = 0x7F0000007FLL;
    v598 = 8;
    v599.i64[0] = 0x800000008;
    v599.i64[1] = 0x800000008;
    v600.i64[0] = 0x7F0000007FLL;
    v600.i64[1] = 0x7F0000007FLL;
    v601.i64[0] = 0x7F0000007FLL;
    v601.i64[1] = 0x7F0000007FLL;
    v602.i64[0] = -1;
    v602.i64[1] = -1;
    do
    {
      v603 = vmlaq_f32(vmulq_n_f32(vsubq_f32(*(v566 - 1264), v591), v592), v593, vsubq_f32(*(v566 + 272), v590));
      v604 = vmlaq_f32(vmulq_n_f32(vsubq_f32(*(v566 - 1280), v591), v592), v593, vsubq_f32(*(v566 + 256), v590));
      if (*(v5 + 135))
      {
        v603 = vbslq_s8(vcltzq_s32(*(v566 + 16)), v597, v603);
        v604 = vbslq_s8(vcltzq_s32(*v566), v597, v604);
      }

      v596 = vbslq_s8(vcgtq_f32(v604, v600), v595, v596);
      v602 = vbslq_s8(vcgtq_f32(v603, v601), v594, v602);
      v600 = vmaxnmq_f32(v600, v604);
      v601 = vmaxnmq_f32(v601, v603);
      v595 = vaddq_s32(v595, v599);
      v594 = vaddq_s32(v594, v599);
      v566 += 32;
      --v598;
    }

    while (v598);
    v605 = vdupq_lane_s32(v589, 0);
    v605.i32[3] = *(v562 + 4 * v588);
    *&STACK[0x350] = v605;
    v606 = vmaxnmq_f32(v600, v601);
    v607 = vbslq_s8(vcgtq_f32(v600, v601), v596, v602);
    v608 = vextq_s8(v606, v606, 8uLL);
    v609 = vbslq_s8(vcgtq_f32(v606, v608), v607, vextq_s8(v607, v607, 8uLL));
    v610 = vmaxnmq_f32(v606, v608);
    v611 = vcgtq_f32(v610, vrev64q_s32(v610));
    v612 = vbslq_s8(v611, v609, vdupq_lane_s32(*v609.i8, 1));
    *&STACK[0x370] = v612;
    v613 = v612.i32[0];
    v614 = (v561 + 4 * v612.i32[0]);
    v615 = vld1q_dup_f32(v614);
    v611.i32[0] = *(v562 + 4 * v613);
    *&STACK[0x380] = v611;
    *&STACK[0x390] = v7;
    v615.i32[3] = v611.i32[0];
    *&STACK[0x360] = v615;
    STACK[0x21F0] = WeightInfoForSingleLineSingleWeight_8x8(64, 4);
    if (!*(v11 + 134))
    {
      v48 = *&STACK[0x350];
      v47 = *&STACK[0x360];
      goto LABEL_139;
    }

    if (*(v11 + 135))
    {
      v48 = *&STACK[0x350];
      v47 = *&STACK[0x360];
      if (COERCE_FLOAT(*&STACK[0x390]) != 0.0)
      {
        v618 = *&STACK[0x380];
        if (COERCE_FLOAT(*&STACK[0x380]) != 0.0)
        {
          v619 = vsubq_f32(v47, v48);
          v618.i32[0] = v619.i32[3];
          if (v619.f32[3] == 0.0)
          {
            if (*(v11 + 134) == 63)
            {
              goto LABEL_135;
            }

            v616.i64[0] = 0x3F0000003FLL;
            v616.i64[1] = 0x3F0000003FLL;
            v48 = vnegq_f32(v616);
          }

          v616.i64[0] = 0;
          v2694 = vdupq_lane_s32(*&vcgtq_f32(v616, v618), 0);
          v2695 = vbslq_s8(v2694, vnegq_f32(v619), v619);
          v2696 = vbslq_s8(v2694, v47, v48);
          v617.f32[0] = v2696.f32[3] / v2695.f32[3];
          v2697 = vmlsq_lane_f32(v2696, v2695, v617, 0);
          if ((vminvq_u32(vandq_s8(vcgtq_f32(v2697, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v2697))) & 0x80000000) != 0)
          {
            v47 = vbslq_s8(v2694, v48, v47);
            v2702 = vmaxnmq_f32(v2697, 0);
            __asm { FMOV            V1.4S, #1.0 }

            v48 = vminnmq_f32(v2702, _Q1);
          }

          else
          {
            v2698 = *&STACK[0x370];
            v2699 = (v561 + 4 * v587);
            v48 = vld1q_dup_f32(v2699);
            v48.i32[3] = *(v562 + 4 * v587);
            v2700 = (v561 + 4 * v2698);
            v47 = vld1q_dup_f32(v2700);
            v47.i32[3] = *(v562 + 4 * v2698);
          }
        }
      }

      goto LABEL_139;
    }

    v556 = vdupq_lane_s32(*&vcgtq_f32(*&STACK[0x380], *&STACK[0x390]), 0);
    v48 = *&STACK[0x350];
    v47 = *&STACK[0x360];
LABEL_138:
    v47 = vandq_s8(v47, v556);
    v48 = vbicq_s8(v48, v556);
    goto LABEL_139;
  }

  v49 = 0;
  __asm { FMOV            V11.4S, #1.0 }

  LODWORD(STACK[0x1434]) = 0;
  v51 = vdupq_lane_s32(*v13.f32, 0);
  v52 = vdupq_lane_s32(*v13.f32, 1);
  v53 = vdupq_laneq_s32(v13, 2);
  v54 = vdupq_laneq_s32(v13, 3);
  v55.i64[0] = -1;
  v55.i64[1] = -1;
  v56 = *(v5 + 32);
  v57.i64[0] = 0x7F0000007FLL;
  v57.i64[1] = 0x7F0000007FLL;
  v58 = xmmword_298495620;
  v59.i64[0] = 0x800000008;
  v59.i64[1] = 0x800000008;
  v60.i64[0] = 0x7F0000007FLL;
  v60.i64[1] = 0x7F0000007FLL;
  v61 = xmmword_298495600;
  v62.i64[0] = 0x7F0000007FLL;
  v62.i64[1] = 0x7F0000007FLL;
  v63.i64[0] = -1;
  v63.i64[1] = -1;
  do
  {
    v64 = vsubq_f32(*(v5 + v49 + 144), v51);
    v65 = vsubq_f32(*(v5 + v49 + 160), v51);
    v66 = vsubq_f32(*(v5 + v49 + 400), v52);
    v67 = vsubq_f32(*(v5 + v49 + 416), v52);
    v68 = vsubq_f32(*(v5 + v49 + 656), v53);
    v69 = vsubq_f32(*(v5 + v49 + 672), v53);
    v70 = vsubq_f32(*(v5 + v49 + 912), v54);
    v71 = vsubq_f32(*(v5 + v49 + 928), v54);
    v72 = vmulq_f32(v65, v65);
    v73 = vmulq_f32(v64, v64);
    v74 = vmulq_f32(v67, v67);
    v75 = vmulq_f32(v66, v66);
    v76 = vmulq_f32(v69, v69);
    v77 = vmulq_f32(v68, v68);
    v78 = vmulq_f32(v71, v71);
    v79 = vmulq_f32(v70, v70);
    if (v56)
    {
      v80 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v74, *v56, 1), v72, COERCE_FLOAT(*v56->f32)), v76, *v56->f32, 2), v78, *v56->f32, 3), *&STACK[0x3A0]);
      v81 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v75, *v56, 1), v73, COERCE_FLOAT(*v56->f32)), v77, *v56->f32, 2), v79, *v56->f32, 3), *&STACK[0x3A0]);
      if (!*(v5 + 135))
      {
        goto LABEL_15;
      }

LABEL_14:
      v80 = vbslq_s8(vcltzq_s32(*(v5 + v49 + 2208)), v57, v80);
      v81 = vbslq_s8(vcltzq_s32(*(v5 + v49 + 2192)), v57, v81);
      goto LABEL_15;
    }

    v81 = vaddq_f32(vaddq_f32(vaddq_f32(v73, v75), v77), v79);
    v80 = vaddq_f32(vaddq_f32(vaddq_f32(v72, v74), v76), v78);
    if (*(v5 + 135))
    {
      goto LABEL_14;
    }

LABEL_15:
    v55 = vbslq_s8(vcgtq_f32(v81, v60), v61, v55);
    v63 = vbslq_s8(vcgtq_f32(v80, v62), v58, v63);
    v60 = vmaxnmq_f32(v60, v81);
    v62 = vmaxnmq_f32(v62, v80);
    v61 = vaddq_s32(v61, v59);
    v58 = vaddq_s32(v58, v59);
    v49 += 32;
  }

  while (v49 != 256);
  v82 = vmaxnmq_f32(v60, v62);
  v83 = vbslq_s8(vcgtq_f32(v60, v62), v55, v63);
  v84 = vextq_s8(v82, v82, 8uLL);
  v85 = vbslq_s8(vcgtq_f32(v82, v84), v83, vextq_s8(v83, v83, 8uLL));
  v86 = vmaxnmq_f32(v82, v84);
  v85.i32[0] = vbslq_s8(vcgtq_f32(v86, vrev64q_s32(v86)), v85, vdupq_lane_s32(*v85.i8, 1)).u32[0];
  v87 = v85.i32[0] & ~(v85.i32[0] >> 31);
  v88 = v5 + 1168;
  v89 = *(v5 + 1168 + 16 * v87);
  v90 = vsubq_f32(v13, v89);
  if (v56)
  {
    v91 = *v56->f32;
  }

  else
  {
    v91 = vdupq_n_s32(0x3EAAAAABu);
  }

  v94 = 0;
  v95 = vmulq_f32(v90, v91);
  v96 = vdupq_lane_s32(*v89.f32, 0);
  v97 = vdupq_lane_s32(*v89.f32, 1);
  v98 = vdupq_laneq_s32(v89, 2);
  v99 = vdupq_laneq_s32(v89, 3);
  v100 = vdupq_lane_s32(*v95.i8, 0);
  v101 = vdupq_laneq_s32(v95, 2);
  v102.i64[0] = -1;
  v102.i64[1] = -1;
  v103.i64[0] = 0x7F0000007FLL;
  v103.i64[1] = 0x7F0000007FLL;
  v104 = vdupq_laneq_s32(v95, 3);
  v105.i64[0] = 0x800000008;
  v105.i64[1] = 0x800000008;
  v106.i64[0] = 0x7F0000007FLL;
  v106.i64[1] = 0x7F0000007FLL;
  v107 = xmmword_298495620;
  v108.i64[0] = 0x7F0000007FLL;
  v108.i64[1] = 0x7F0000007FLL;
  v109 = xmmword_298495600;
  v110.i64[0] = -1;
  v110.i64[1] = -1;
  do
  {
    v111 = (v5 + v94);
    v112 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v5 + v94 + 416), v97), *v95.i8, 1), v100, vsubq_f32(*(v5 + v94 + 160), v96)), v101, vsubq_f32(*(v5 + v94 + 672), v98)), v104, vsubq_f32(*(v5 + v94 + 928), v99));
    v113 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v5 + v94 + 400), v97), *v95.i8, 1), v100, vsubq_f32(*(v5 + v94 + 144), v96)), v101, vsubq_f32(*(v5 + v94 + 656), v98)), v104, vsubq_f32(*(v5 + v94 + 912), v99));
    if (*(v5 + 135))
    {
      v112 = vbslq_s8(vcltzq_s32(v111[138]), v103, v112);
      v113 = vbslq_s8(vcltzq_s32(v111[137]), v103, v113);
    }

    v102 = vbslq_s8(vcgtq_f32(v113, v106), v109, v102);
    v110 = vbslq_s8(vcgtq_f32(v112, v108), v107, v110);
    v106 = vmaxnmq_f32(v106, v113);
    v108 = vmaxnmq_f32(v108, v112);
    v109 = vaddq_s32(v109, v105);
    v107 = vaddq_s32(v107, v105);
    v94 += 32;
  }

  while (v94 != 256);
  *&STACK[0x320] = v98;
  *&STACK[0x330] = v97;
  *&STACK[0x340] = v28;
  v114 = vmaxnmq_f32(v106, v108);
  v115 = vbslq_s8(vcgtq_f32(v106, v108), v102, v110);
  v116 = vextq_s8(v114, v114, 8uLL);
  v117 = vbslq_s8(vcgtq_f32(v114, v116), v115, vextq_s8(v115, v115, 8uLL));
  v118 = vmaxnmq_f32(v114, v116);
  v119 = vbslq_s8(vcgtq_f32(v118, vrev64q_s32(v118)), v117, vdupq_lane_s32(*v117.i8, 1)).u32[0];
  if (v119 == -1)
  {
    v120 = 1;
  }

  else
  {
    v120 = v119;
  }

  v121 = *(v88 + 16 * v120);
  *&STACK[0x350] = v89;
  *&STACK[0x360] = v121;
  v122 = vsubq_f32(v121, v89);
  v123 = vmulq_f32(v122, v122);
  *v123.i32 = vaddv_f32(vadd_f32(*v123.i8, *&vextq_s8(v123, v123, 8uLL)));
  _NF = *v123.i32 < 0.000015259;
  v124 = vrecpes_f32(*v123.i32);
  if (_NF)
  {
    v124 = 0.0;
  }

  v125 = _Q11;
  v126 = _Q11;
  if (v56)
  {
    v126 = vmulq_f32(*v56->f32, *&STACK[0x3A0]);
  }

  v127 = 0;
  v128 = vdupq_lane_s32(*v122.f32, 0);
  v129 = vdupq_lane_s32(*v122.f32, 1);
  v130 = vdupq_laneq_s32(v122, 2);
  v131 = vdupq_laneq_s32(v122, 3);
  v132 = vdupq_lane_s32(*v126.i8, 0);
  v133 = vdupq_laneq_s32(v126, 2);
  v134 = vdupq_laneq_s32(v126, 3);
  v135 = *&STACK[0x320];
  v136 = *&STACK[0x330];
  do
  {
    v137 = *(v5 + v127 + 144);
    v138 = *(v5 + v127 + 160);
    v140 = *(v5 + v127 + 400);
    v139 = *(v5 + v127 + 416);
    v141 = *(v5 + v127 + 656);
    v142 = *(v5 + v127 + 672);
    v143 = *(v5 + v127 + 912);
    v144 = *(v5 + v127 + 928);
    v145 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v140, v136), *v122.f32, 1), v128, vsubq_f32(v137, v96)), v130, vsubq_f32(v141, v135)), v131, vsubq_f32(v143, v99)), v124), v125), 0);
    v146 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v139, v136), *v122.f32, 1), v128, vsubq_f32(v138, v96)), v130, vsubq_f32(v142, v135)), v131, vsubq_f32(v144, v99)), v124), v125), 0);
    v147 = vmlaq_f32(v96, v146, v128);
    v148 = vmlaq_f32(v136, v146, v129);
    v149 = vmlaq_f32(v135, v145, v130);
    v150 = vmlaq_f32(v135, v146, v130);
    v151 = vmlaq_f32(v99, v146, v131);
    v152 = vmlaq_f32(v99, v145, v131);
    v153 = vsubq_f32(vmlaq_f32(v96, v145, v128), v137);
    v154 = vsubq_f32(v147, v138);
    v155 = vsubq_f32(v148, v139);
    v156 = vsubq_f32(vmlaq_f32(v136, v145, v129), v140);
    v157 = vsubq_f32(v150, v142);
    v158 = vsubq_f32(v149, v141);
    v159 = vsubq_f32(v152, v143);
    v160 = vsubq_f32(v151, v144);
    v161 = (&STACK[0xE30] + v127);
    *v161 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v156, v156), *v126.i8, 1), v132, vmulq_f32(v153, v153)), v133, vmulq_f32(v158, v158)), v134, vmulq_f32(v159, v159));
    v161[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v155, v155), *v126.i8, 1), v132, vmulq_f32(v154, v154)), v133, vmulq_f32(v157, v157)), v134, vmulq_f32(v160, v160));
    v127 += 32;
  }

  while (v127 != 256);
  *&STACK[0x300] = v96;
  v162 = 0;
  v163 = xmmword_298495620;
  v164 = xmmword_298495600;
  v165 = 0uLL;
  v166.i64[0] = 0x7F0000007FLL;
  v166.i64[1] = 0x7F0000007FLL;
  v167.i64[0] = 0x800000008;
  v167.i64[1] = 0x800000008;
  v168.i64[0] = 0x7F0000007FLL;
  v168.i64[1] = 0x7F0000007FLL;
  v169 = 0uLL;
  do
  {
    v171 = *(&STACK[0xE30] + v162);
    v170 = *(&STACK[0xE30] + v162 + 16);
    v172 = vcgtq_f32(v171, v166);
    v173 = vcgtq_f32(v170, v168);
    v166 = vmaxnmq_f32(v166, v171);
    v168 = vmaxnmq_f32(v168, v170);
    v169 = vbslq_s8(v173, v163, v169);
    v165 = vbslq_s8(v172, v164, v165);
    v164 = vaddq_s32(v164, v167);
    v163 = vaddq_s32(v163, v167);
    v162 += 32;
  }

  while (v162 != 256);
  v174 = 0;
  v175 = vbslq_s8(vcgtq_f32(v168, v166), v169, v165);
  v176 = vmaxnmq_f32(v166, v168);
  v177 = vextq_s8(v176, v176, 8uLL);
  v178 = vbslq_s8(vcgtq_f32(v177, v176), vextq_s8(v175, v175, 8uLL), v175);
  v179 = vmaxnmq_f32(v176, v177);
  v180 = *(v88 + 16 * vbslq_s8(vcgtq_f32(vrev64q_s32(v179), v179), vdupq_lane_s32(*v178.i8, 1), v178).i32[0]);
  v182 = *&STACK[0xE30];
  v181 = *&STACK[0xE40];
  v183 = *&STACK[0x350];
  v184 = *&STACK[0x360];
  do
  {
    v181 = vaddq_f32(v181, *(&STACK[0xE50] + v174 + 16));
    v182 = vaddq_f32(v182, *(&STACK[0xE50] + v174));
    v174 += 32;
  }

  while (v174 != 224);
  v185 = vaddq_f32(v182, v181);
  v185.i64[0] = vpaddq_f32(v185, v185).u64[0];
  v185.f32[0] = vpadd_f32(*v185.f32, *v185.f32).f32[0];
  *&STACK[0xDA0] = v183;
  *&STACK[0xDB0] = v184;
  *&STACK[0xDC0] = v183;
  *&STACK[0xDD0] = v184;
  *&STACK[0xDE0] = v180;
  *&STACK[0xDF0] = v180;
  LODWORD(STACK[0xE0C]) = v185.i32[0];
  v186.i64[0] = 0x7F0000007FLL;
  v186.i64[1] = 0x7F0000007FLL;
  *&STACK[0xE10] = vnegq_f32(v186);
  LODWORD(STACK[0xE20]) = 2139095040;
  if (v185.f32[0] <= 0.0019685)
  {
    v28 = *&STACK[0x340];
  }

  else
  {
    *&STACK[0x310] = v180;
    v187 = vsubq_f32(v180, v183);
    v188 = vmulq_f32(v187, v187);
    *v188.i32 = vaddv_f32(vadd_f32(*v188.i8, *&vextq_s8(v188, v188, 8uLL)));
    v189 = 0.0;
    _NF = *v188.i32 < 0.000015259;
    v190 = vrecpes_f32(*v188.i32);
    if (!_NF)
    {
      v189 = v190;
    }

    __asm { FMOV            V7.4S, #1.0 }

    v192 = _Q7;
    if (v56)
    {
      v192 = vmulq_f32(*v56->f32, *&STACK[0x3A0]);
    }

    v193 = 0;
    v194 = vdupq_lane_s32(*v187.f32, 0);
    v195 = vdupq_lane_s32(*v187.f32, 1);
    v196 = vdupq_laneq_s32(v187, 2);
    v197 = vdupq_laneq_s32(v187, 3);
    v198 = vdupq_lane_s32(*v192.i8, 0);
    v199 = vdupq_laneq_s32(v192, 2);
    v200 = vdupq_laneq_s32(v192, 3);
    v201 = *&STACK[0x300];
    v203 = *&STACK[0x320];
    v202 = *&STACK[0x330];
    do
    {
      v204 = *(v5 + v193 + 144);
      v205 = *(v5 + v193 + 160);
      v207 = *(v5 + v193 + 400);
      v206 = *(v5 + v193 + 416);
      v208 = *(v5 + v193 + 656);
      v209 = *(v5 + v193 + 672);
      v210 = *(v5 + v193 + 912);
      v211 = *(v5 + v193 + 928);
      v212 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v207, v202), *v187.f32, 1), v194, vsubq_f32(v204, v201)), v196, vsubq_f32(v208, v203)), v197, vsubq_f32(v210, v99)), v189), _Q7), 0);
      v213 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v206, v202), *v187.f32, 1), v194, vsubq_f32(v205, v201)), v196, vsubq_f32(v209, v203)), v197, vsubq_f32(v211, v99)), v189), _Q7), 0);
      v214 = vmlaq_f32(v201, v213, v194);
      v215 = vmlaq_f32(v202, v213, v195);
      v216 = vmlaq_f32(v203, v212, v196);
      v217 = vmlaq_f32(v203, v213, v196);
      v218 = vmlaq_f32(v99, v213, v197);
      v219 = vmlaq_f32(v99, v212, v197);
      v220 = vsubq_f32(vmlaq_f32(v201, v212, v194), v204);
      v221 = vsubq_f32(v214, v205);
      v222 = vsubq_f32(v215, v206);
      v223 = vsubq_f32(vmlaq_f32(v202, v212, v195), v207);
      v224 = vsubq_f32(v217, v209);
      v225 = vsubq_f32(v216, v208);
      v226 = vsubq_f32(v219, v210);
      v227 = vsubq_f32(v218, v211);
      v228 = (&STACK[0xF30] + v193);
      *v228 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v223, v223), *v192.i8, 1), v198, vmulq_f32(v220, v220)), v199, vmulq_f32(v225, v225)), v200, vmulq_f32(v226, v226));
      v228[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v222, v222), *v192.i8, 1), v198, vmulq_f32(v221, v221)), v199, vmulq_f32(v224, v224)), v200, vmulq_f32(v227, v227));
      v193 += 32;
    }

    while (v193 != 256);
    v229 = *&STACK[0x360];
    v230 = vsubq_f32(*&STACK[0x310], *&STACK[0x360]);
    v231 = vmulq_f32(v230, v230);
    *v231.i32 = vaddv_f32(vadd_f32(*v231.i8, *&vextq_s8(v231, v231, 8uLL)));
    _NF = *v231.i32 < 0.000015259;
    v232 = vrecpes_f32(*v231.i32);
    if (_NF)
    {
      v194.f32[0] = 0.0;
    }

    else
    {
      v194.f32[0] = v232;
    }

    __asm { FMOV            V19.4S, #1.0 }

    *&STACK[0x390] = _Q19;
    if (v56)
    {
      *&STACK[0x390] = vmulq_f32(*v56->f32, *&STACK[0x3A0]);
    }

    v234 = 0;
    v235 = vdupq_lane_s32(*v229.i8, 0);
    v236 = vdupq_lane_s32(*v229.i8, 1);
    v237 = vdupq_laneq_s32(v229, 2);
    v238 = vdupq_laneq_s32(v229, 3);
    v239 = *v230.f32;
    v240 = vdupq_lane_s32(*v230.f32, 0);
    v241 = vdupq_lane_s32(*v230.f32, 1);
    v242 = vdupq_laneq_s32(v230, 2);
    v243 = vdupq_laneq_s32(v230, 3);
    v244 = vdupq_lane_s32(STACK[0x390], 0);
    v245 = vdupq_laneq_s32(*&STACK[0x390], 2);
    v246 = vdupq_laneq_s32(*&STACK[0x390], 3);
    do
    {
      v247 = *(v5 + v234 + 144);
      v248 = *(v5 + v234 + 160);
      v250 = *(v5 + v234 + 400);
      v249 = *(v5 + v234 + 416);
      v252 = *(v5 + v234 + 656);
      v251 = *(v5 + v234 + 672);
      v254 = *(v5 + v234 + 912);
      v253 = *(v5 + v234 + 928);
      v255 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v250, v236), v239, 1), v240, vsubq_f32(v247, v235)), v242, vsubq_f32(v252, v237)), v243, vsubq_f32(v254, v238)), v194.f32[0]), _Q19), 0);
      v256 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v249, v236), v239, 1), v240, vsubq_f32(v248, v235)), v242, vsubq_f32(v251, v237)), v243, vsubq_f32(v253, v238)), v194.f32[0]), _Q19), 0);
      v257 = vmlaq_f32(v235, v256, v240);
      v258 = vmlaq_f32(v236, v255, v241);
      v259 = vmlaq_f32(v236, v256, v241);
      v260 = vmlaq_f32(v237, v255, v242);
      v261 = vmlaq_f32(v237, v256, v242);
      v262 = _Q19;
      v263 = v194;
      v264 = vmlaq_f32(v238, v256, v243);
      v265 = vmlaq_f32(v238, v255, v243);
      v266 = vsubq_f32(vmlaq_f32(v235, v255, v240), v247);
      v267 = vsubq_f32(v257, v248);
      v268 = vsubq_f32(v259, v249);
      v269 = vsubq_f32(v258, v250);
      v270 = vsubq_f32(v261, v251);
      v271 = vsubq_f32(v260, v252);
      v272 = vsubq_f32(v265, v254);
      v273 = vsubq_f32(v264, v253);
      v274 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v268, v268), STACK[0x390], 1), v244, vmulq_f32(v267, v267)), v245, vmulq_f32(v270, v270)), v246, vmulq_f32(v273, v273));
      v275 = (&STACK[0x1030] + v234);
      *v275 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v269, v269), STACK[0x390], 1), v244, vmulq_f32(v266, v266)), v245, vmulq_f32(v271, v271)), v246, vmulq_f32(v272, v272));
      v275[1] = v274;
      v194 = v263;
      _Q19 = v262;
      v234 += 32;
    }

    while (v234 != 256);
    v276 = xmmword_298495620;
    v277 = xmmword_298495600;
    v278 = 0uLL;
    v279.i64[0] = -1;
    v279.i64[1] = -1;
    v280 = 400;
    v281.i64[0] = 0x800000008;
    v281.i64[1] = 0x800000008;
    v282.i64[0] = -1;
    v282.i64[1] = -1;
    v283 = 0uLL;
    do
    {
      v284 = vminnmq_f32(vminnmq_f32(*(&STACK[0xCA0] + v280), *(&STACK[0xCA0] + v280 + 256)), *(&STACK[0xCA0] + v280 + 512));
      v285 = vminnmq_f32(vminnmq_f32(*(&STACK[0xCA0] + v280 + 16), *(&STACK[0xCA0] + v280 + 272)), *(&STACK[0xCA0] + v280 + 528));
      v282 = vbslq_s8(vcgtq_f32(v285, v283), v276, v282);
      v279 = vbslq_s8(vcgtq_f32(v284, v278), v277, v279);
      v278 = vmaxnmq_f32(v278, v284);
      v283 = vmaxnmq_f32(v283, v285);
      v277 = vaddq_s32(v277, v281);
      v276 = vaddq_s32(v276, v281);
      v280 += 32;
    }

    while (v280 != 656);
    *&STACK[0x2E0] = v235;
    v286 = vbslq_s8(vcgtq_f32(v283, v278), v282, v279);
    v287 = vmaxnmq_f32(v278, v283);
    v288 = vextq_s8(v287, v287, 8uLL);
    v289 = vbslq_s8(vcgtq_f32(v288, v287), vextq_s8(v286, v286, 8uLL), v286);
    v290 = vmaxnmq_f32(v287, v288);
    v291 = vbslq_s8(vcgtq_f32(vrev64q_s32(v290), v290), vdupq_lane_s32(*v289.i8, 1), v289).u32[0];
    if (v291 == -1)
    {
      v120 = 2;
    }

    else
    {
      v120 = v291;
    }

    v292 = *(v88 + 16 * v120);
    *&STACK[0xDF0] = v292;
    v293 = *&STACK[0x350];
    *&STACK[0x2F0] = v292;
    v294 = vsubq_f32(v292, v293);
    v295 = vmulq_f32(v294, v294);
    *v295.i32 = vaddv_f32(vadd_f32(*v295.i8, *&vextq_s8(v295, v295, 8uLL)));
    _NF = *v295.i32 < 0.000015259;
    v296 = vrecpes_f32(*v295.i32);
    if (_NF)
    {
      *v281.i32 = 0.0;
    }

    else
    {
      *v281.i32 = v296;
    }

    __asm { FMOV            V23.4S, #1.0 }

    *&STACK[0x390] = _Q23;
    if (v56)
    {
      *&STACK[0x390] = vmulq_f32(*v56->f32, *&STACK[0x3A0]);
    }

    v298 = 0;
    v299 = vdupq_lane_s32(*v294.f32, 0);
    v300 = vdupq_laneq_s32(v294, 2);
    v301 = vdupq_laneq_s32(v294, 3);
    v302 = *&STACK[0x390];
    *&STACK[0x370] = vdupq_lane_s32(STACK[0x390], 0);
    *&STACK[0x380] = vdupq_lane_s32(*v294.f32, 1);
    v303 = vdupq_laneq_s32(v302, 2);
    v304 = vdupq_laneq_s32(v302, 3);
    v305 = *&STACK[0x300];
    v307 = *&STACK[0x320];
    v306 = *&STACK[0x330];
    do
    {
      v308 = *(v5 + v298 + 144);
      v309 = *(v5 + v298 + 160);
      v311 = *(v5 + v298 + 400);
      v310 = *(v5 + v298 + 416);
      v313 = *(v5 + v298 + 656);
      v312 = *(v5 + v298 + 672);
      v315 = *(v5 + v298 + 912);
      v314 = *(v5 + v298 + 928);
      v316 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v311, v306), *v294.f32, 1), v299, vsubq_f32(v308, v305)), v300, vsubq_f32(v313, v307)), v301, vsubq_f32(v315, v99)), *v281.i32), _Q23), 0);
      v317 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v310, v306), *v294.f32, 1), v299, vsubq_f32(v309, v305)), v300, vsubq_f32(v312, v307)), v301, vsubq_f32(v314, v99)), *v281.i32), _Q23), 0);
      v318 = vmlaq_f32(v305, v317, v299);
      v319 = vmlaq_f32(v306, v316, *&STACK[0x380]);
      v320 = vmlaq_f32(v306, v317, *&STACK[0x380]);
      v321 = vmlaq_f32(v307, v316, v300);
      v322 = vmlaq_f32(v307, v317, v300);
      v323 = _Q23;
      v324 = v281;
      v325 = v294;
      v326 = vmlaq_f32(v99, v317, v301);
      v327 = vmlaq_f32(v99, v316, v301);
      v328 = vsubq_f32(vmlaq_f32(v305, v316, v299), v308);
      v329 = vsubq_f32(v318, v309);
      v330 = vsubq_f32(v320, v310);
      v331 = vsubq_f32(v319, v311);
      v332 = vsubq_f32(v322, v312);
      v333 = vsubq_f32(v321, v313);
      v334 = vsubq_f32(v327, v315);
      v335 = vsubq_f32(v326, v314);
      v336 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v331, v331), STACK[0x390], 1), *&STACK[0x370], vmulq_f32(v328, v328)), v303, vmulq_f32(v333, v333)), v304, vmulq_f32(v334, v334));
      v337 = vmulq_f32(v335, v335);
      v294 = v325;
      v281 = v324;
      _Q23 = v323;
      v338 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v330, v330), STACK[0x390], 1), *&STACK[0x370], vmulq_f32(v329, v329)), v303, vmulq_f32(v332, v332)), v304, v337);
      v339 = (&STACK[0x1330] + v298);
      *v339 = v336;
      v339[1] = v338;
      v298 += 32;
    }

    while (v298 != 256);
    v340 = vsubq_f32(*&STACK[0x2F0], *&STACK[0x360]);
    v341 = vmulq_f32(v340, v340);
    *v341.i32 = vaddv_f32(vadd_f32(*v341.i8, *&vextq_s8(v341, v341, 8uLL)));
    v342 = 0.0;
    _NF = *v341.i32 < 0.000015259;
    v343 = vrecpes_f32(*v341.i32);
    if (!_NF)
    {
      v342 = v343;
    }

    __asm { FMOV            V3.4S, #1.0 }

    v345 = _Q3;
    if (v56)
    {
      v345 = vmulq_f32(*v56->f32, *&STACK[0x3A0]);
    }

    v346 = 0;
    v347 = vdupq_lane_s32(*v340.f32, 0);
    v348 = vdupq_lane_s32(*v340.f32, 1);
    v349 = vdupq_laneq_s32(v340, 2);
    v350 = vdupq_laneq_s32(v340, 3);
    v351 = vdupq_lane_s32(*v345.i8, 0);
    v352 = vdupq_laneq_s32(v345, 2);
    v353 = vdupq_laneq_s32(v345, 3);
    v354 = *&STACK[0x2E0];
    do
    {
      v355 = *(v5 + v346 + 144);
      v356 = *(v5 + v346 + 160);
      v358 = *(v5 + v346 + 400);
      v357 = *(v5 + v346 + 416);
      v359 = *(v5 + v346 + 656);
      v360 = *(v5 + v346 + 672);
      v361 = *(v5 + v346 + 912);
      v362 = *(v5 + v346 + 928);
      v363 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v358, v236), *v340.f32, 1), v347, vsubq_f32(v355, v354)), v349, vsubq_f32(v359, v237)), v350, vsubq_f32(v361, v238)), v342), _Q3), 0);
      v364 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v357, v236), *v340.f32, 1), v347, vsubq_f32(v356, v354)), v349, vsubq_f32(v360, v237)), v350, vsubq_f32(v362, v238)), v342), _Q3), 0);
      v365 = vmlaq_f32(v354, v364, v347);
      v366 = vmlaq_f32(v236, v364, v348);
      v367 = vmlaq_f32(v237, v363, v349);
      v368 = vmlaq_f32(v237, v364, v349);
      v369 = vmlaq_f32(v238, v364, v350);
      v370 = vmlaq_f32(v238, v363, v350);
      v371 = vsubq_f32(vmlaq_f32(v354, v363, v347), v355);
      v372 = vsubq_f32(v365, v356);
      v373 = vsubq_f32(v366, v357);
      v374 = vsubq_f32(vmlaq_f32(v236, v363, v348), v358);
      v375 = vsubq_f32(v368, v360);
      v376 = vsubq_f32(v367, v359);
      v377 = vsubq_f32(v370, v361);
      v378 = vsubq_f32(v369, v362);
      v379 = (&STACK[0x1230] + v346);
      *v379 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v374, v374), *v345.i8, 1), v351, vmulq_f32(v371, v371)), v352, vmulq_f32(v376, v376)), v353, vmulq_f32(v377, v377));
      v379[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v373, v373), *v345.i8, 1), v351, vmulq_f32(v372, v372)), v352, vmulq_f32(v375, v375)), v353, vmulq_f32(v378, v378));
      v346 += 32;
    }

    while (v346 != 256);
    v380 = *&STACK[0x310];
    v381 = vsubq_f32(*&STACK[0x2F0], *&STACK[0x310]);
    v382 = vmulq_f32(v381, v381);
    *v382.i32 = vaddv_f32(vadd_f32(*v382.i8, *&vextq_s8(v382, v382, 8uLL)));
    v383 = 0.0;
    _NF = *v382.i32 < 0.000015259;
    v384 = vrecpes_f32(*v382.i32);
    if (!_NF)
    {
      v383 = v384;
    }

    __asm { FMOV            V3.4S, #1.0 }

    v386 = _Q3;
    if (v56)
    {
      v386 = vmulq_f32(*v56->f32, *&STACK[0x3A0]);
    }

    v387 = 0;
    v388 = vdupq_lane_s32(*v380.i8, 0);
    v389 = vdupq_lane_s32(*v380.i8, 1);
    v390 = vdupq_laneq_s32(v380, 2);
    v391 = vdupq_laneq_s32(v380, 3);
    v392 = vdupq_lane_s32(*v381.f32, 0);
    v393 = vdupq_lane_s32(*v381.f32, 1);
    v394 = vdupq_laneq_s32(v381, 2);
    v395 = vdupq_laneq_s32(v381, 3);
    v396 = vdupq_lane_s32(*v386.i8, 0);
    v397 = vdupq_laneq_s32(v386, 2);
    v398 = vdupq_laneq_s32(v386, 3);
    do
    {
      v399 = *(v5 + v387 + 144);
      v400 = *(v5 + v387 + 160);
      v402 = *(v5 + v387 + 400);
      v401 = *(v5 + v387 + 416);
      v403 = *(v5 + v387 + 656);
      v404 = *(v5 + v387 + 672);
      v405 = *(v5 + v387 + 912);
      v406 = *(v5 + v387 + 928);
      v407 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v402, v389), *v381.f32, 1), v392, vsubq_f32(v399, v388)), v394, vsubq_f32(v403, v390)), v395, vsubq_f32(v405, v391)), v383), _Q3), 0);
      v408 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v401, v389), *v381.f32, 1), v392, vsubq_f32(v400, v388)), v394, vsubq_f32(v404, v390)), v395, vsubq_f32(v406, v391)), v383), _Q3), 0);
      v409 = vmlaq_f32(v388, v408, v392);
      v410 = vmlaq_f32(v389, v408, v393);
      v411 = vmlaq_f32(v390, v407, v394);
      v412 = vmlaq_f32(v390, v408, v394);
      v413 = vmlaq_f32(v391, v408, v395);
      v414 = vmlaq_f32(v391, v407, v395);
      v415 = vsubq_f32(vmlaq_f32(v388, v407, v392), v399);
      v416 = vsubq_f32(v409, v400);
      v417 = vsubq_f32(v410, v401);
      v418 = vsubq_f32(vmlaq_f32(v389, v407, v393), v402);
      v419 = vsubq_f32(v412, v404);
      v420 = vsubq_f32(v411, v403);
      v421 = vsubq_f32(v414, v405);
      v422 = vsubq_f32(v413, v406);
      v423 = (&STACK[0x1130] + v387);
      *v423 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v418, v418), *v386.i8, 1), v396, vmulq_f32(v415, v415)), v397, vmulq_f32(v420, v420)), v398, vmulq_f32(v421, v421));
      v423[1] = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vmulq_f32(v417, v417), *v386.i8, 1), v396, vmulq_f32(v416, v416)), v397, vmulq_f32(v419, v419)), v398, vmulq_f32(v422, v422));
      v387 += 32;
    }

    while (v387 != 256);
    v424 = 0;
    v426 = *&STACK[0xF30];
    v425 = *&STACK[0xF40];
    do
    {
      v425 = vaddq_f32(v425, *(&STACK[0xF50] + v424 + 16));
      v426 = vaddq_f32(v426, *(&STACK[0xF50] + v424));
      v424 += 32;
    }

    while (v424 != 224);
    v427 = 0;
    v428 = vaddq_f32(v426, v425);
    v428.i64[0] = vpaddq_f32(v428, v428).u64[0];
    LODWORD(STACK[0xE10]) = vpadd_f32(*v428.f32, *v428.f32).u32[0];
    v430 = *&STACK[0x1030];
    v429 = *&STACK[0x1040];
    v28 = *&STACK[0x340];
    v431 = *&STACK[0x350];
    v432 = *&STACK[0x360];
    do
    {
      v429 = vaddq_f32(v429, *(&STACK[0x1050] + v427 + 16));
      v430 = vaddq_f32(v430, *(&STACK[0x1050] + v427));
      v427 += 32;
    }

    while (v427 != 224);
    v433 = 0;
    v434 = vaddq_f32(v430, v429);
    v434.i64[0] = vpaddq_f32(v434, v434).u64[0];
    LODWORD(STACK[0xE14]) = vpadd_f32(*v434.f32, *v434.f32).u32[0];
    v436 = *&STACK[0x1130];
    v435 = *&STACK[0x1140];
    do
    {
      v435 = vaddq_f32(v435, *(&STACK[0x1150] + v433 + 16));
      v436 = vaddq_f32(v436, *(&STACK[0x1150] + v433));
      v433 += 32;
    }

    while (v433 != 224);
    v437 = 0;
    v438 = vaddq_f32(v436, v435);
    v438.i64[0] = vpaddq_f32(v438, v438).u64[0];
    LODWORD(STACK[0xE18]) = vpadd_f32(*v438.f32, *v438.f32).u32[0];
    v440 = *&STACK[0x1230];
    v439 = *&STACK[0x1240];
    v441 = *&STACK[0x310];
    do
    {
      v439 = vaddq_f32(v439, *(&STACK[0x1250] + v437 + 16));
      v440 = vaddq_f32(v440, *(&STACK[0x1250] + v437));
      v437 += 32;
    }

    while (v437 != 224);
    v442 = 0;
    v443 = vaddq_f32(v440, v439);
    v443.i64[0] = vpaddq_f32(v443, v443).u64[0];
    LODWORD(STACK[0xE1C]) = vpadd_f32(*v443.f32, *v443.f32).u32[0];
    v445 = *&STACK[0x1330];
    v444 = *&STACK[0x1340];
    do
    {
      v444 = vaddq_f32(v444, *(&STACK[0x1350] + v442 + 16));
      v445 = vaddq_f32(v445, *(&STACK[0x1350] + v442));
      v442 += 32;
    }

    while (v442 != 224);
    v446 = 0;
    v447 = 0;
    v448 = vaddq_f32(v445, v444);
    v448.i64[0] = vpaddq_f32(v448, v448).u64[0];
    LODWORD(STACK[0xE20]) = vpadd_f32(*v448.f32, *v448.f32).u32[0];
    do
    {
      v449 = *(&STACK[0xE10] + v446++);
      if (v449 < *(&STACK[0xE0C] + v447))
      {
        v447 = v446;
      }
    }

    while (v446 != 5);
    *&STACK[0x440] = v431;
    *&STACK[0x450] = v432;
    *&STACK[0x460] = v441;
    *&STACK[0x470] = *&STACK[0x2F0];
    v450 = colorVertexTable[v447];
    v451 = *(&STACK[0x440] + (v450 & 3));
    v452 = *(&STACK[0x440] + (v450 & 0xF0));
    *&STACK[0x350] = v451;
    *&STACK[0x360] = v452;
    *&STACK[0xDB0] = v452;
    *&STACK[0xDA0] = v451;
    LODWORD(STACK[0x1430]) = v447;
  }

  if (*(v5 + 136))
  {
    v453 = 6;
  }

  else
  {
    v453 = 8;
  }

  v454 = WeightInfoForSingleLineSingleWeight_8x8(64, v453);
  v455 = 0;
  STACK[0x21F0] = v454;
  *v456.i32 = ReciprocalTable[BYTE4(v454)];
  *v457.i32 = *v456.i32 * *v456.i32;
  v48 = *&STACK[0x350];
  v47 = *&STACK[0x360];
  v458 = vsubq_f32(*&STACK[0x360], *&STACK[0x350]);
  v459.i64[0] = 0x8000000080000000;
  v459.i64[1] = 0x8000000080000000;
  v460 = vdupq_n_s32(0x3B808081u);
  v461 = vorrq_s8(vandq_s8(v458, v459), v460);
  v462 = vabdq_f32(*&STACK[0x360], *&STACK[0x350]);
  v463 = vcgtq_f32(v460, v462);
  v464 = vbslq_s8(v463, v461, v458);
  __asm { FMOV            V0.4S, #1.0 }

  v466 = vdivq_f32(_Q0, v464);
  v467 = vdupq_lane_s32(*v466.f32, 0);
  *v463.i32 = vmuls_n_f32(COERCE_FLOAT(*&STACK[0x350]), v466.f32[0]);
  v468 = vnegq_f32(vdupq_lane_s32(*v463.i8, 0));
  v469.i32[0] = v466.i32[1];
  v470 = vdupq_lane_s32(*v466.f32, 1);
  v462.f32[0] = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(STACK[0x350])), *v466.f32, 1);
  v471 = vnegq_f32(vdupq_lane_s32(*v462.f32, 0));
  v472.i32[0] = v466.i32[2];
  v473 = vdupq_laneq_s32(v466, 2);
  *v474.i32 = vmuls_lane_f32(COERCE_FLOAT(STACK[0x358]), v466, 2);
  v475 = vnegq_f32(vdupq_lane_s32(v474, 0));
  v476.i32[0] = v466.i32[3];
  v477 = vdupq_laneq_s32(v466, 3);
  *v478.i32 = vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*&STACK[0x350])), v466, 3);
  v479 = vnegq_f32(vdupq_lane_s32(v478, 0));
  v480 = vdupq_lane_s32(v457, 0);
  v481 = 0uLL;
  v482 = 0uLL;
  do
  {
    v483 = vmlaq_f32(v468, v467, *(v11 + v455 + 144));
    v484 = vmlaq_f32(v468, v467, *(v11 + v455 + 160));
    v485 = vmlaq_f32(v471, v470, *(v11 + v455 + 416));
    v486 = vmlaq_f32(v471, v470, *(v11 + v455 + 400));
    v487 = vmlaq_f32(v475, v473, *(v11 + v455 + 672));
    v488 = vmlaq_f32(v475, v473, *(v11 + v455 + 656));
    v489 = vmlaq_f32(v479, v477, *(v11 + v455 + 912));
    v490 = vmlaq_f32(v479, v477, *(v11 + v455 + 928));
    v491 = vcgtq_f32(v480, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v486, v486), v483, v483), v488, v488), v489, v489));
    v492 = vcgtq_f32(v480, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v485, v485), v484, v484), v487, v487), v490, v490));
    v493 = (&STACK[0x440] + v455);
    *v493 = v491;
    v493[1] = v492;
    v482 = vsubq_s32(v482, v492);
    v481 = vsubq_s32(v481, v491);
    v455 += 32;
  }

  while (v455 != 256);
  v494 = vaddq_s32(v481, v482);
  v494.i64[0] = vpaddq_s32(v494, v494).u64[0];
  v495 = vpadd_s32(*v494.i8, *v494.i8).u8[0];
  if ((v495 & 0xFE) != 0)
  {
    v496 = 0;
    v497 = vcltzq_s32(*&STACK[0x440]);
    v498 = vcltzq_s32(*&STACK[0x450]);
    v499 = vandq_s8(v498, *(v11 + 160));
    v500 = vandq_s8(v497, *(v11 + 144));
    v501 = vandq_s8(*(v12 + 144), v498);
    v502 = vandq_s8(*(v12 + 128), v497);
    v503 = vandq_s8(*(v12 + 400), v498);
    v504 = vandq_s8(*(v12 + 384), v497);
    v505 = vandq_s8(*(v12 + 656), v498);
    v506 = vandq_s8(*(v12 + 640), v497);
    do
    {
      v507 = vcltzq_s32(*(&STACK[0x460] + v496 + 16));
      v508 = vcltzq_s32(*(&STACK[0x460] + v496));
      v499 = vaddq_f32(v499, vandq_s8(v507, *(v11 + v496 + 192)));
      v500 = vaddq_f32(v500, vandq_s8(v508, *(v11 + v496 + 176)));
      v501 = vaddq_f32(v501, vandq_s8(*(v11 + v496 + 448), v507));
      v502 = vaddq_f32(v502, vandq_s8(*(v11 + v496 + 432), v508));
      v503 = vaddq_f32(v503, vandq_s8(*(v11 + v496 + 704), v507));
      v504 = vaddq_f32(v504, vandq_s8(*(v11 + v496 + 688), v508));
      v505 = vaddq_f32(v505, vandq_s8(*(v11 + v496 + 960), v507));
      v506 = vaddq_f32(v506, vandq_s8(*(v11 + v496 + 944), v508));
      v496 += 32;
    }

    while (v496 != 224);
    v48 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v500, v499), vaddq_f32(v502, v501)), vpaddq_f32(vaddq_f32(v504, v503), vaddq_f32(v506, v505))), ReciprocalTable[v495]);
  }

  v509 = 0;
  v466.f32[0] = v466.f32[0] * v47.f32[0];
  v510 = vnegq_f32(vdupq_lane_s32(*v466.f32, 0));
  *v469.i32 = vmuls_lane_f32(*v469.i32, *v47.f32, 1);
  v511 = vnegq_f32(vdupq_lane_s32(v469, 0));
  *v472.i32 = vmuls_lane_f32(*v472.i32, v47, 2);
  v512 = vnegq_f32(vdupq_lane_s32(v472, 0));
  *v476.i32 = vmuls_lane_f32(*v476.i32, v47, 3);
  v513 = vnegq_f32(vdupq_lane_s32(v476, 0));
  v514 = 0uLL;
  v515 = 0uLL;
  do
  {
    v516 = vmlaq_f32(v510, v467, *(v11 + v509 + 144));
    v517 = vmlaq_f32(v510, v467, *(v11 + v509 + 160));
    v518 = vmlaq_f32(v511, v470, *(v11 + v509 + 416));
    v519 = vmlaq_f32(v511, v470, *(v11 + v509 + 400));
    v520 = vmlaq_f32(v512, v473, *(v11 + v509 + 672));
    v521 = vmlaq_f32(v512, v473, *(v11 + v509 + 656));
    v522 = vmlaq_f32(v513, v477, *(v11 + v509 + 912));
    v523 = vmlaq_f32(v513, v477, *(v11 + v509 + 928));
    v524 = vcgtq_f32(v480, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v519, v519), v516, v516), v521, v521), v522, v522));
    v525 = vcgtq_f32(v480, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v518, v518), v517, v517), v520, v520), v523, v523));
    v526 = (&STACK[0x440] + v509);
    *v526 = v524;
    v526[1] = v525;
    v515 = vsubq_s32(v515, v525);
    v514 = vsubq_s32(v514, v524);
    v509 += 32;
  }

  while (v509 != 256);
  v527 = vaddq_s32(v514, v515);
  v528 = vpaddq_s32(v527, v527);
  *v528.f32 = vpadd_s32(*v528.f32, *v528.f32);
  v529 = v528.i8[0];
  if ((v528.i8[0] & 0xFE) != 0)
  {
    v530 = 0;
    v531 = vcltzq_s32(*&STACK[0x440]);
    v532 = vcltzq_s32(*&STACK[0x450]);
    v533 = vandq_s8(v532, *(v11 + 160));
    v534 = vandq_s8(v531, *(v11 + 144));
    v535 = vandq_s8(*(v12 + 144), v532);
    v536 = vandq_s8(*(v12 + 128), v531);
    v537 = vandq_s8(*(v12 + 400), v532);
    v538 = vandq_s8(*(v12 + 384), v531);
    v539 = vandq_s8(*(v12 + 656), v532);
    v540 = vandq_s8(*(v12 + 640), v531);
    do
    {
      v541 = vcltzq_s32(*(&STACK[0x460] + v530 + 16));
      v542 = vcltzq_s32(*(&STACK[0x460] + v530));
      v533 = vaddq_f32(v533, vandq_s8(v541, *(v11 + v530 + 192)));
      v534 = vaddq_f32(v534, vandq_s8(v542, *(v11 + v530 + 176)));
      v535 = vaddq_f32(v535, vandq_s8(*(v11 + v530 + 448), v541));
      v536 = vaddq_f32(v536, vandq_s8(*(v11 + v530 + 432), v542));
      v537 = vaddq_f32(v537, vandq_s8(*(v11 + v530 + 704), v541));
      v538 = vaddq_f32(v538, vandq_s8(*(v11 + v530 + 688), v542));
      v539 = vaddq_f32(v539, vandq_s8(*(v11 + v530 + 960), v541));
      v540 = vaddq_f32(v540, vandq_s8(*(v11 + v530 + 944), v542));
      v530 += 32;
    }

    while (v530 != 224);
    v543 = vaddq_f32(v534, v533);
    v544 = vaddq_f32(v536, v535);
    v473 = vaddq_f32(v538, v537);
    v477 = vaddq_f32(v540, v539);
    v545 = vpaddq_f32(v543, v544);
    v470 = vpaddq_f32(v473, v477);
    v528 = vpaddq_f32(v545, v470);
    v47 = vmulq_n_f32(v528, ReciprocalTable[v529]);
  }

  if (!*(v11 + 134))
  {
    goto LABEL_139;
  }

  v528.i32[0] = v48.i32[3];
  if (!*(v11 + 135))
  {
    v556 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v47, 3), v528), 0);
    goto LABEL_138;
  }

  if (v48.f32[3] != 0.0 && v47.f32[3] != 0.0)
  {
    v546 = vsubq_f32(v47, v48);
    v470.i32[0] = v546.i32[3];
    if (v546.f32[3] == 0.0)
    {
      if (*(v11 + 134) != 63)
      {
        v473.i64[0] = 0x3F0000003FLL;
        v473.i64[1] = 0x3F0000003FLL;
        v48 = vnegq_f32(v473);
        goto LABEL_117;
      }

LABEL_135:
      v48 = 0uLL;
    }

    else
    {
LABEL_117:
      v473.i64[0] = 0;
      v547 = vdupq_lane_s32(*&vcgtq_f32(v473, v470), 0);
      v548 = vbslq_s8(v547, vnegq_f32(v546), v546);
      v549 = vbslq_s8(v547, v47, v48);
      v477.f32[0] = v549.f32[3] / v548.f32[3];
      v550 = vmlsq_lane_f32(v549, v548, *v477.f32, 0);
      v548.f32[0] = -*v456.i32;
      *v456.i32 = *v456.i32 + 1.0;
      if ((vminvq_u32(vandq_s8(vcgtq_f32(v550, vdupq_lane_s32(*v548.f32, 0)), vcgtq_f32(vdupq_lane_s32(v456, 0), v550))) & 0x80000000) != 0)
      {
        v47 = vbslq_s8(v547, v48, v47);
        v48 = vminnmq_f32(vmaxnmq_f32(v550, 0), _Q0);
      }

      else
      {
        v551 = *(v88 + 16 * v87);
        v552 = *(v88 + 16 * v120);
        v553 = v551;
        v553.i32[3] = 0;
        v554 = v552;
        v554.i32[3] = 0;
        v555 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v552, v551)), 3)), 0x1FuLL));
        v47 = vbslq_s8(v555, v552, v554);
        v48 = vbslq_s8(v555, v553, v551);
      }
    }
  }

LABEL_139:
  v620 = &STACK[0x1550];
  *&STACK[0x460] = 0u;
  *&STACK[0x450] = 0u;
  *&STACK[0x440] = 0u;
  v621 = *(v11 + 32);
  *&STACK[0x2300] = v47;
  *&STACK[0x22F0] = v48;
  FindColorVectors(&STACK[0x22F0], v621, 1, 392, &STACK[0x21F0], &STACK[0x440]);
  v622 = STACK[0x21F0];
  v623 = (STACK[0x21F0] >> 13) & 0xF;
  v624 = *&STACK[0x450];
  LODWORD(v625) = HIDWORD(*&STACK[0x450]);
  v626 = 0.0;
  v627 = vrecpes_f32(v625);
  if (fabsf(v625) < 0.0039062)
  {
    v627 = 0.0;
  }

  if (v623 > 5)
  {
    v641 = *(v11 + 32);
    if (v641)
    {
      *&STACK[0x340] = v28;
      v642 = 0;
      v629 = 0;
      v643 = vandq_s8(vcgezq_s32(gNormalMasks[(v622 >> 13) & 0xF]), *v641);
      v644 = *&STACK[0x440];
      v645 = vdupq_lane_s32(STACK[0x440], 0);
      v646 = vdupq_lane_s32(STACK[0x440], 1);
      v647 = vdupq_laneq_s32(*&STACK[0x440], 2);
      *&STACK[0x370] = *&STACK[0x440];
      v648 = vdupq_laneq_s32(v644, 3);
      v649 = vmulq_f32(v624, v643);
      v650 = vmulq_f32(v624, v649);
      *v644.i32 = vaddv_f32(vadd_f32(*v650.i8, *&vextq_s8(v650, v650, 8uLL)));
      LODWORD(STACK[0x380]) = v644.i32[0];
      *&STACK[0x390] = fabsf(*v644.i32);
      v651 = vdupq_lane_s32(*v649.f32, 0);
      v652 = vdupq_laneq_s32(v649, 2);
      v653 = vdupq_laneq_s32(v649, 3);
      v654 = 48;
      v655.i64[0] = 0x3F0000003F000000;
      v655.i64[1] = 0x3F0000003F000000;
      do
      {
        v656 = (v11 + v642);
        v657 = vsubq_f32(*(v11 + v642 + 176), v645);
        v658 = vsubq_f32(*(v11 + v642 + 160), v645);
        v659 = vsubq_f32(*(v11 + v642 + 144), v645);
        v660 = vsubq_f32(*(v11 + v642 + 192), v645);
        v661 = vsubq_f32(*(v11 + v642 + 432), v646);
        v662 = vsubq_f32(*(v11 + v642 + 416), v646);
        v663 = vsubq_f32(*(v11 + v642 + 400), v646);
        v664 = vsubq_f32(*(v11 + v642 + 448), v646);
        v665 = vsubq_f32(*(v11 + v642 + 688), v647);
        v666 = vsubq_f32(*(v11 + v642 + 672), v647);
        v667 = vsubq_f32(*(v11 + v642 + 656), v647);
        v668 = vsubq_f32(*(v11 + v642 + 704), v647);
        v669 = vsubq_f32(*(v11 + v642 + 944), v648);
        v670 = vsubq_f32(*(v11 + v642 + 928), v648);
        v671 = vsubq_f32(*(v11 + v642 + 912), v648);
        v672 = vsubq_f32(*(v11 + v642 + 960), v648);
        v673 = vrecpes_f32(*&STACK[0x380]);
        if (*&STACK[0x390] < 0.000015259)
        {
          v673 = 0.0;
        }

        v674 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v663, *v649.f32, 1), v651, v659), v652, v667), v653, v671);
        v675 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v662, *v649.f32, 1), v651, v658), v652, v666), v653, v670);
        v676 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v664, *v649.f32, 1), v651, v660), v652, v668), v653, v672);
        __asm { FMOV            V31.4S, #1.0 }

        v678 = vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v661, *v649.f32, 1), v651, v657), v652, v665), v653, v669), v673), _Q31);
        v679 = vminnmq_f32(vmulq_n_f32(v676, v673), _Q31);
        v680 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v674, v673), _Q31), 0);
        v681 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v675, v673), _Q31), 0);
        v682 = vmaxnmq_f32(v678, 0);
        v683 = vmaxnmq_f32(v679, 0);
        if (*(v11 + 134) >= 1)
        {
          v682 = vbslq_s8(vcltzq_s32(v656[139]), vmulq_n_f32(v669, v627), v682);
          v681 = vbslq_s8(vcltzq_s32(v656[138]), vmulq_n_f32(v670, v627), v681);
          v680 = vbslq_s8(vcltzq_s32(v656[137]), vmulq_n_f32(v671, v627), v680);
          v683 = vbslq_s8(vcltzq_s32(v656[140]), vmulq_n_f32(v672, v627), v683);
        }

        v684 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v680, v655), vcgeq_f32(v681, v655)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v682, v655), vcgeq_f32(v683, v655)), xmmword_298495640));
        v684.i16[0] = vaddvq_s16(v684);
        v629 |= v684.u32[0] << v654;
        v642 += 64;
        v654 -= 16;
      }

      while (v642 != 256);
      v28 = *&STACK[0x340];
      v631 = *&STACK[0x370];
    }

    else
    {
      v702 = 0;
      v629 = 0;
      v631 = *&STACK[0x440];
      v703 = vdupq_lane_s32(STACK[0x440], 0);
      v704 = vdupq_lane_s32(STACK[0x440], 1);
      v705 = vdupq_laneq_s32(*&STACK[0x440], 2);
      v706 = vdupq_laneq_s32(*&STACK[0x440], 3);
      v707 = vmulq_f32(v624, v624);
      v708 = vrecpes_f32(vaddv_f32(vadd_f32(*v707.i8, *&vextq_s8(v707, v707, 8uLL))));
      v709 = vdupq_lane_s32(*v624.f32, 0);
      v710 = vdupq_laneq_s32(v624, 2);
      v711 = vdupq_laneq_s32(v624, 3);
      v712 = 48;
      v713.i64[0] = 0x3F0000003F000000;
      v713.i64[1] = 0x3F0000003F000000;
      do
      {
        v714 = (v11 + v702);
        v715 = vsubq_f32(*(v11 + v702 + 960), v706);
        v716 = vsubq_f32(*(v11 + v702 + 944), v706);
        v717 = vsubq_f32(*(v11 + v702 + 928), v706);
        v718 = vsubq_f32(*(v11 + v702 + 912), v706);
        __asm { FMOV            V30.4S, #1.0 }

        v720 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v11 + v702 + 400), v704), *v624.f32, 1), v709, vsubq_f32(*(v11 + v702 + 144), v703)), v710, vsubq_f32(*(v11 + v702 + 656), v705)), v711, v718), v708), _Q30), 0);
        v721 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v11 + v702 + 416), v704), *v624.f32, 1), v709, vsubq_f32(*(v11 + v702 + 160), v703)), v710, vsubq_f32(*(v11 + v702 + 672), v705)), v711, v717), v708), _Q30), 0);
        v722 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v11 + v702 + 432), v704), *v624.f32, 1), v709, vsubq_f32(*(v11 + v702 + 176), v703)), v710, vsubq_f32(*(v11 + v702 + 688), v705)), v711, v716), v708), _Q30), 0);
        v723 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(v11 + v702 + 448), v704), *v624.f32, 1), v709, vsubq_f32(*(v11 + v702 + 192), v703)), v710, vsubq_f32(*(v11 + v702 + 704), v705)), v711, v715), v708), _Q30), 0);
        if (*(v11 + 134) >= 1)
        {
          v722 = vbslq_s8(vcltzq_s32(v714[139]), vmulq_n_f32(v716, v627), v722);
          v721 = vbslq_s8(vcltzq_s32(v714[138]), vmulq_n_f32(v717, v627), v721);
          v720 = vbslq_s8(vcltzq_s32(v714[137]), vmulq_n_f32(v718, v627), v720);
          v723 = vbslq_s8(vcltzq_s32(v714[140]), vmulq_n_f32(v715, v627), v723);
        }

        v724 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v720, v713), vcgeq_f32(v721, v713)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v722, v713), vcgeq_f32(v723, v713)), xmmword_298495640));
        v724.i16[0] = vaddvq_s16(v724);
        v629 |= v724.u32[0] << v712;
        v702 += 64;
        v712 -= 16;
      }

      while (v702 != 256);
    }
  }

  else
  {
    v628 = v12 + 1920;
    if (v623 > 3)
    {
      v629 = 0;
      v685 = (v625 * v625) + (v624.f32[0] * v624.f32[0]);
      v686 = 0.0;
      v687 = vrecpes_f32(v685);
      v631 = *&STACK[0x440];
      v688 = vdupq_lane_s32(STACK[0x440], 0);
      if (fabsf(v685) >= 0.000015259)
      {
        v686 = v687;
      }

      v689 = vdupq_laneq_s32(v631, 3);
      v690 = vdupq_lane_s32(*v624.f32, 0);
      v691 = 48;
      v692.i64[0] = 0x3F0000003F000000;
      v692.i64[1] = 0x3F0000003F000000;
      do
      {
        v693 = vsubq_f32(*(v628 - 1232), v689);
        v694 = vsubq_f32(*(v628 - 1280), v689);
        v695 = vsubq_f32(*(v628 - 1264), v689);
        v696 = vsubq_f32(*(v628 - 1248), v689);
        v697 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v696, v624, 3), v690, vsubq_f32(*(v628 + 288), v688)), v686);
        v698 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v695, v624, 3), v690, vsubq_f32(*(v628 + 272), v688)), v686);
        v699 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v694, v624, 3), v690, vsubq_f32(*(v628 + 256), v688)), v686);
        v700 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v693, v624, 3), v690, vsubq_f32(*(v628 + 304), v688)), v686);
        if (*(v11 + 134) >= 1)
        {
          v698 = vbslq_s8(vcltzq_s32(*(v628 + 16)), vmulq_n_f32(v695, v627), v698);
          v699 = vbslq_s8(vcltzq_s32(*v628), vmulq_n_f32(v694, v627), v699);
          v697 = vbslq_s8(vcltzq_s32(*(v628 + 32)), vmulq_n_f32(v696, v627), v697);
          v700 = vbslq_s8(vcltzq_s32(*(v628 + 48)), vmulq_n_f32(v693, v627), v700);
        }

        v701 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v699, v692), vcgeq_f32(v698, v692)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v697, v692), vcgeq_f32(v700, v692)), xmmword_298495640));
        v701.i16[0] = vaddvq_s16(v701);
        v629 |= v701.u32[0] << v691;
        v628 += 64;
        v691 -= 16;
      }

      while (v691 != -16);
    }

    else
    {
      v629 = 0;
      v630 = vrecpes_f32(v624.f32[0]);
      if (fabsf(v624.f32[0]) >= 0.000015259)
      {
        v626 = v630;
      }

      v631 = *&STACK[0x440];
      v632 = vdupq_lane_s32(STACK[0x440], 0);
      v633 = vdupq_laneq_s32(*&STACK[0x440], 3);
      v634 = 48;
      v635.i64[0] = 0x3F0000003F000000;
      v635.i64[1] = 0x3F0000003F000000;
      do
      {
        v636 = vmulq_n_f32(vsubq_f32(*(v628 + 272), v632), v626);
        v637 = vmulq_n_f32(vsubq_f32(*(v628 + 256), v632), v626);
        v638 = vmulq_n_f32(vsubq_f32(*(v628 + 288), v632), v626);
        v639 = vmulq_n_f32(vsubq_f32(*(v628 + 304), v632), v626);
        if (*(v11 + 134) >= 1)
        {
          v638 = vbslq_s8(vcltzq_s32(*(v628 + 32)), vmulq_n_f32(vsubq_f32(*(v628 - 1248), v633), v627), v638);
          v636 = vbslq_s8(vcltzq_s32(*(v628 + 16)), vmulq_n_f32(vsubq_f32(*(v628 - 1264), v633), v627), v636);
          v637 = vbslq_s8(vcltzq_s32(*v628), vmulq_n_f32(vsubq_f32(*(v628 - 1280), v633), v627), v637);
          v639 = vbslq_s8(vcltzq_s32(*(v628 + 48)), vmulq_n_f32(vsubq_f32(*(v628 - 1232), v633), v627), v639);
        }

        v640 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgeq_f32(v637, v635), vcgeq_f32(v636, v635)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgeq_f32(v638, v635), vcgeq_f32(v639, v635)), xmmword_298495640));
        v640.i16[0] = vaddvq_s16(v640);
        v629 |= v640.u32[0] << v634;
        v628 += 64;
        v634 -= 16;
      }

      while (v634 != -16);
    }
  }

  v725 = 0;
  v726 = STACK[0x460];
  v727 = vaddq_f32(v624, v631);
  v728 = vdupq_lane_s32(*v631.f32, 0);
  v729 = vdupq_lane_s32(*v727.i8, 0);
  v730 = vdupq_lane_s32(*v631.f32, 1);
  v731 = vdupq_lane_s32(*v727.i8, 1);
  v732 = vdupq_laneq_s32(v631, 2);
  v733 = vdupq_laneq_s32(v727, 2);
  v734 = vdupq_laneq_s32(v631, 3);
  v735 = vdupq_laneq_s32(v727, 3);
  v736 = 0uLL;
  v737 = 56;
  v738 = 0uLL;
  do
  {
    v739 = vcltzq_s32(VectorMaskForBitMask[(v629 >> v737) & 0xF]);
    v740 = vcltzq_s32(*(VectorMaskForBitMask + ((v629 >> v737) & 0xF0)));
    v741 = vsubq_f32(vbslq_s8(v739, v729, v728), *(v11 + v725 + 160));
    v742 = vsubq_f32(vbslq_s8(v740, v731, v730), *(v11 + v725 + 400));
    v743 = vsubq_f32(vbslq_s8(v739, v731, v730), *(v11 + v725 + 416));
    v744 = vsubq_f32(vbslq_s8(v740, v729, v728), *(v11 + v725 + 144));
    v745 = vsubq_f32(vbslq_s8(v740, v733, v732), *(v11 + v725 + 656));
    v746 = vsubq_f32(vbslq_s8(v739, v733, v732), *(v11 + v725 + 672));
    v747 = vsubq_f32(vbslq_s8(v739, v735, v734), *(v11 + v725 + 928));
    v748 = vsubq_f32(vbslq_s8(v740, v735, v734), *(v11 + v725 + 912));
    v749 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v742, v742), v744, v744), v745, v745), v748, v748);
    v750 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v743, v743), v741, v741), v746, v746), v747, v747);
    v738 = vaddq_f32(v738, v750);
    v736 = vaddq_f32(v736, v749);
    v751 = (&STACK[0xCA0] + v725);
    *v751 = v749;
    v751[1] = v750;
    v725 += 32;
    v737 -= 8;
  }

  while (v725 != 256);
  v752 = vaddq_f32(v736, v738);
  v752.i64[0] = vpaddq_f32(v752, v752).u64[0];
  v753 = vpadd_f32(*v752.f32, *v752.f32).f32[0];
  *&STACK[0xE08] = v753;
  STACK[0xE00] = v629;
  v754 = *v10;
  if (v753 >= *v10)
  {
    v629 = 0;
    v755 = 0;
    LOBYTE(v756) = 0;
    LOBYTE(v757) = 0;
    v758 = 0uLL;
  }

  else
  {
    v755 = v622 & 0x1FFFF;
    v756 = HIDWORD(v622);
    v757 = v622 >> 40;
    *v10 = v753;
    v758 = vmovl_u8(v726);
    v754 = v753;
  }

  if (v28 > v754)
  {
    v759 = v756 + 1;
    v760 = __clz(__rbit32(v759));
    v761 = v759 >> v760;
    v762 = (v759 >> v760);
    if (v760 && v762 != 1)
    {
      v763 = vsubq_s16(vdupq_n_s16(v756), v758);
      if (v762 == 3)
      {
        v764 = 21846;
      }

      else
      {
        v764 = 13108;
      }

      v765 = vdupq_n_s16(v764);
      v766 = vminq_u16(v758, v763);
      v767 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v766.i8, *v765.i8), 0x10uLL), vmull_high_u16(v766, v765), 0x10uLL);
      v765.i64[0] = 0x1000100010001;
      v765.i64[1] = 0x1000100010001;
      v758 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v766, v767, vmovl_u8(vdup_n_s8(v761))), vdupq_n_s16(v760)), vaddq_s16(v767, v767)), vbicq_s8(v765, vceqq_s16(v766, v758)));
    }

    v768 = vandq_s8(v758, vcgtq_u16(vdupq_n_s16(v757), xmmword_298495BB0));
    switch(v762)
    {
      case 5:
        v803 = vdupq_n_s16(v760);
        v804 = vshlq_u16(v768, vnegq_s16(v803));
        *v804.i8 = vmovn_s16(v804);
        v805 = vqtbl1q_s8(v804, xmmword_298495BC0);
        v806 = vqtbl1q_s8(v804, xmmword_298495BD0);
        v807 = vpaddq_s16(vmull_u8(*v805.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v805, v805, 8uLL), 0x2001200120012001));
        v805.i64[0] = 0x7000700070007;
        v805.i64[1] = 0x7000700070007;
        v808 = vandq_s8(v807, v805);
        v809 = vandq_s8(vshrq_n_u16(v807, 5uLL), v805);
        v810.i64[0] = 0x4000400040004;
        v810.i64[1] = 0x4000400040004;
        v811 = vceqq_s16(v806, v810);
        v812 = vceqq_s16(v809, v810);
        v813 = vsubq_s8(vaddq_s16(v807, vshlq_n_s16(v806, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v808), v812));
        if ((vmaxvq_u16(v811) & 0x8000) != 0)
        {
          v814.i64[0] = 0x18001800180018;
          v814.i64[1] = 0x18001800180018;
          v813.i64[0] = vsubq_s8(v813, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v808), v811), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v808), v811), v812)), vandq_s8(vmulq_s16(v809, v814), vandq_s8(vceqq_s16(v808, v810), v811)))).u64[0];
        }

        v813.i64[1] = v813.i64[0];
        v815 = vshlq_u16(vorrq_s8(vshlq_u16(vmovl_u8(vshl_u8(vand_s8(vqtbl1_s8(v813, 0x404020202000000), 0x1807601807601807), 0xFD00FBFD00FBFD00)), v803), vandq_s8(v768, vdupq_n_s16(~(-1 << v760)))), vaddq_s16(vdupq_n_s32(v760 << 16), xmmword_298495C10));
        v816 = vshlq_u32(vmovl_u16(*&vpaddq_s16(v815, v815)), vaddq_s32(vdupq_n_s64(v760 << 33), xmmword_298495C20));
        v816.i64[0] = vpaddq_s32(v816, v816).u64[0];
        v776 = v816.u32[0];
        v777 = (v816.i64[0] & 0xFFFFFFFF00000000) >> (22 - 4 * v760);
LABEL_191:
        v802 = v777 | v776;
        break;
      case 3:
        *v768.i8 = vmovn_s16(v768);
        v778 = vandq_s8(v768, xmmword_298495C30);
        v779 = vdupq_n_s8(v760);
        v780 = vshlq_u8(v778, vnegq_s8(v779));
        v781 = vqtbl1q_s8(v780, xmmword_298495C40);
        v782 = vqtbl1q_s8(v780, xmmword_298495C50);
        v783 = vpaddq_s16(vmull_u8(*v781.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v781, v781, 8uLL), 0x8010040180100401));
        v783.i64[0] = vpaddq_s16(v783, v783).u64[0];
        v784 = vmovl_s16(*v783.i8);
        v785 = vshlq_n_s32(v782, 5uLL);
        v781.i64[0] = 0x3000000030;
        v781.i64[1] = 0x3000000030;
        v786.i64[0] = 0x2000000020;
        v786.i64[1] = 0x2000000020;
        v787 = vceqq_s32(vandq_s8(v784, v781), v786);
        v788 = vaddw_s16(v785, *v783.i8);
        v786.i64[0] = 0xFF000000FFLL;
        v786.i64[1] = 0xFF000000FFLL;
        v789 = vcgtq_s32(v788, v786);
        if ((vmaxvq_u32(vorrq_s8(v787, v789)) & 0x80000000) != 0)
        {
          v790.i64[0] = 0x200000002;
          v790.i64[1] = 0x200000002;
          v791 = vceqq_s32(v782, v790);
          v792 = vshrq_n_u32(v784, 2uLL);
          v793 = vandq_s8(v789, v791);
          v794.i64[0] = 0xF0000000FLL;
          v794.i64[1] = 0xF0000000FLL;
          v795 = vandq_s8(v784, v794);
          v796.i64[0] = 0x303030303030303;
          v796.i64[1] = 0x303030303030303;
          v797.i64[0] = 0x6060606060606060;
          v797.i64[1] = 0x6060606060606060;
          v788.i64[0] = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v797, v785, v796), v789), v788), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v795), v787), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v792, v794)), v793))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v795), vandq_s8(v787, v793))).u64[0];
        }

        v788.i64[1] = v788.i64[0];
        v798 = vmovl_u8(vorr_s8(vshl_u8(vshl_u8(vand_s8(vqtbl1_s8(v788, 0x404040000000000), 0x100C038060100C03), 0xFCFE00F9FBFCFE00), *v779.i8), vand_s8(*v778.i8, vdup_n_s8((1 << v760) - 1))));
        v799 = vadd_s32(vdup_n_s32(2 * v760), 0x300000004);
        v800.i64[0] = v799.u32[0];
        v800.i64[1] = v799.u32[1];
        v801 = vshlq_u32(vmlal_u16((*&v798 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vshrn_n_s32(v798, 0x10uLL), vshl_u16(vdup_n_s16(1 << v760), 0x2000100010002)), vtrn1q_s32(0, v800));
        v801.i64[0] = vpaddq_s32(v801, v801).u64[0];
        v802 = (v801.u32[1] << (4 * v760 + 7)) | v801.u32[0];
        break;
      case 1:
        v769.i64[0] = 0xFFFF0000FFFFLL;
        v769.i64[1] = 0xFFFF0000FFFFLL;
        v770.i64[0] = 0xFFFF0000FFFF0000;
        v770.i64[1] = 0xFFFF0000FFFF0000;
        v771 = vorrq_s8(vshlq_u32(vandq_s8(v768, v770), vnegq_s32(vdupq_n_s32(16 - v760))), vandq_s8(v768, v769));
        v769.i64[0] = 0xFFFFFFFFLL;
        v769.i64[1] = 0xFFFFFFFFLL;
        v772 = vandq_s8(v771, v769);
        v770.i64[0] = 0xFFFFFFFF00000000;
        v770.i64[1] = 0xFFFFFFFF00000000;
        v773 = vandq_s8(v771, v770);
        *v770.i8 = vdup_n_s32(2 * (16 - v760));
        v774.i64[0] = v770.u32[0];
        v774.i64[1] = v770.u32[1];
        v775 = vorrq_s8(vshlq_u64(v773, vnegq_s64(v774)), v772);
        v776 = v775.i64[0];
        v777 = v775.i64[1] << (4 * v760);
        goto LABEL_191;
      default:
        v802 = 0;
        break;
    }

    v817.i64[0] = v755 | (v802 << 17);
    v817.i64[1] = v802 >> 47;
    v818.i64[0] = 0;
    v818.i64[1] = v629;
    *v9 = vorrq_s8(v817, v818);
    v754 = *v10;
  }

  if (v754 <= v10[1])
  {
    return;
  }

  bzero(&STACK[0x440], 0x840uLL);
  v819 = 0;
  LOWORD(STACK[0x4C4]) = 375;
  LOBYTE(STACK[0x4C6]) = -1;
  LOBYTE(STACK[0x4C8]) = -1;
  v820 = vdupq_n_s32(0x3DD00000u);
  v821 = *(v11 + 48);
  v822 = *(v11 + 56);
  v823 = vmulq_f32(v822[23], v820);
  v824 = vmulq_f32(v822[39], v820);
  v825 = vmulq_f32(v822[40], v820);
  v826 = vmulq_f32(v822[55], v820);
  v827 = vmulq_f32(v822[56], v820);
  v828 = vmulq_f32(v822[71], v820);
  v829 = vmulq_f32(v822[72], v820);
  v830 = *(v11 + 144);
  v831 = *(v11 + 160);
  v832 = vdupq_n_s32(0x3F4C0000u);
  v833 = vmlaq_f32(vmulq_f32(v822[24], v820), v832, v831);
  v834 = vdupq_n_s32(0x3D400000u);
  *&STACK[0x380] = v834;
  *&STACK[0x390] = v832;
  v835 = vmlaq_f32(v823, v832, v830);
  v836 = vmulq_f32(v830, v834);
  v837 = vmulq_f32(v831, v834);
  v838 = *(v12 + 128);
  v839 = *(v12 + 144);
  v840 = vmlaq_f32(v825, v832, v839);
  v841 = vmlaq_f32(v824, v832, v838);
  v842 = vmulq_f32(v839, v834);
  v843 = vmulq_f32(v838, v834);
  v844 = *(v12 + 384);
  v845 = *(v12 + 400);
  v846 = vmlaq_f32(v827, v832, v845);
  v847 = vmlaq_f32(v826, v832, v844);
  v848 = vmulq_f32(v845, v834);
  v849 = vmulq_f32(v844, v834);
  v850 = *(v12 + 640);
  v851 = *(v12 + 656);
  v852 = vmlaq_f32(v829, v832, v851);
  v853 = vmlaq_f32(v828, v832, v850);
  v854 = vmulq_f32(v851, v834);
  v855 = vmulq_f32(v850, v834);
  v856 = *(v11 + 176);
  v857 = *(v11 + 192);
  *&STACK[0x2300] = vmlaq_f32(v833, v820, v857);
  *&STACK[0x22F0] = vmlaq_f32(v835, v820, v856);
  v858 = vdupq_n_s32(0x3F420000u);
  v859 = vmlaq_f32(v837, v858, v857);
  v860 = vdupq_n_s32(0x3CA00000u);
  v861 = vmulq_f32(v857, v860);
  v863 = *(v12 + 160);
  v862 = *(v12 + 176);
  *&STACK[0x2200] = vmlaq_f32(v840, v820, v862);
  *&STACK[0x21F0] = vmlaq_f32(v841, v820, v863);
  v864 = vmlaq_f32(v842, v858, v862);
  v865 = vmulq_f32(v862, v860);
  v867 = *(v12 + 416);
  v866 = *(v12 + 432);
  *&STACK[0x2100] = vmlaq_f32(v846, v820, v866);
  *&STACK[0x20F0] = vmlaq_f32(v847, v820, v867);
  v868 = vmlaq_f32(v849, v858, v867);
  v869 = vmlaq_f32(v848, v858, v866);
  v870 = vmulq_f32(v867, v860);
  v871 = vmulq_f32(v866, v860);
  v873 = *(v12 + 672);
  v872 = *(v12 + 688);
  *&STACK[0x2020] = vmlaq_f32(v852, v820, v872);
  *&STACK[0x2010] = vmlaq_f32(v853, v820, v873);
  v874 = vmlaq_f32(v855, v858, v873);
  v875 = vmlaq_f32(v854, v858, v872);
  v876 = vmulq_f32(v873, v860);
  v877 = vmulq_f32(v872, v860);
  v879 = *(v11 + 208);
  v878 = *(v11 + 224);
  __asm { FMOV            V5.4S, #0.19531 }

  *&STACK[0x2320] = vmlaq_f32(v859, _Q5, v878);
  *&STACK[0x2310] = vmlaq_f32(vmlaq_f32(v836, v858, v856), _Q5, v879);
  v881 = vdupq_n_s32(0x3F270000u);
  v882 = vmlaq_f32(v861, v881, v878);
  v859.i64[0] = 0x3C0000003C000000;
  v859.i64[1] = 0x3C0000003C000000;
  v883 = vmulq_f32(v878, v859);
  v884 = *(v12 + 192);
  v885 = *(v12 + 208);
  *&STACK[0x2210] = vmlaq_f32(vmlaq_f32(v843, v858, v863), _Q5, v884);
  *&STACK[0x2220] = vmlaq_f32(v864, _Q5, v885);
  v886 = vmlaq_f32(v865, v881, v885);
  v887 = vmlaq_f32(vmulq_f32(v863, v860), v881, v884);
  v888 = vmulq_f32(v885, v859);
  v889 = vmulq_f32(v884, v859);
  v890 = *(v12 + 448);
  v891 = *(v12 + 464);
  *&STACK[0x2110] = vmlaq_f32(v868, _Q5, v890);
  *&STACK[0x2120] = vmlaq_f32(v869, _Q5, v891);
  v892 = vmlaq_f32(v871, v881, v891);
  v893 = vmlaq_f32(v870, v881, v890);
  v894 = vmulq_f32(v891, v859);
  v895 = vmulq_f32(v890, v859);
  v896 = *(v12 + 704);
  v897 = *(v12 + 720);
  *&STACK[0x2030] = vmlaq_f32(v874, _Q5, v896);
  *&STACK[0x2040] = vmlaq_f32(v875, _Q5, v897);
  v898 = vmlaq_f32(v876, v881, v896);
  v899 = vmulq_f32(v896, v859);
  v901 = *(v11 + 240);
  v900 = *(v11 + 256);
  __asm { FMOV            V16.4S, #0.32812 }

  *&STACK[0x2340] = vmlaq_f32(v882, _Q16, v900);
  *&STACK[0x2330] = vmlaq_f32(vmlaq_f32(vmulq_f32(v856, v860), v881, v879), _Q16, v901);
  v903 = vdupq_n_s32(0x3EFC0000u);
  v904 = vmlaq_f32(v883, v903, v900);
  v906 = *(v12 + 224);
  v905 = *(v12 + 240);
  *&STACK[0x2240] = vmlaq_f32(v886, _Q16, v905);
  *&STACK[0x2230] = vmlaq_f32(v887, _Q16, v906);
  v907 = vmlaq_f32(v889, v903, v906);
  v908 = vmlaq_f32(v888, v903, v905);
  v910 = *(v12 + 480);
  v909 = *(v12 + 496);
  *&STACK[0x2140] = vmlaq_f32(v892, _Q16, v909);
  *&STACK[0x2130] = vmlaq_f32(v893, _Q16, v910);
  v911 = vmlaq_f32(v895, v903, v910);
  v912 = vmlaq_f32(v894, v903, v909);
  v914 = *(v12 + 736);
  v913 = *(v12 + 752);
  *&STACK[0x2060] = vmlaq_f32(vmlaq_f32(v877, v881, v897), _Q16, v913);
  *&STACK[0x2050] = vmlaq_f32(v898, _Q16, v914);
  v915 = vmlaq_f32(vmulq_f32(v897, v859), v903, v913);
  v916 = vmlaq_f32(v899, v903, v914);
  v917 = *(v12 + 16);
  v918 = vmlaq_f32(v904, v903, v917);
  v919 = vmlaq_f32(vmlaq_f32(vmulq_f32(v879, v859), v903, v901), v903, *v12);
  v920 = vmulq_f32(*v12, _Q16);
  v921 = vmulq_f32(v917, _Q16);
  v922 = *(v12 + 256);
  v923 = *(v12 + 272);
  v924 = vmlaq_f32(v908, v903, v923);
  v925 = vmlaq_f32(v907, v903, v922);
  v926 = vmulq_f32(v922, _Q16);
  v927 = vmulq_f32(v923, _Q16);
  v928 = *(v12 + 512);
  v929 = *(v12 + 528);
  v930 = vmlaq_f32(v912, v903, v929);
  v931 = vmlaq_f32(v911, v903, v928);
  v932 = vmulq_f32(v928, _Q16);
  v933 = vmulq_f32(v929, _Q16);
  v934 = *(v12 + 768);
  v935 = *(v12 + 784);
  v936 = vmlaq_f32(v915, v903, v935);
  v937 = vmulq_f32(v935, _Q16);
  v938 = *(v12 + 32);
  v939 = *(v12 + 48);
  *&STACK[0x2360] = vmlaq_f32(v918, v859, v939);
  *&STACK[0x2350] = vmlaq_f32(v919, v859, v938);
  v941 = *(v12 + 288);
  v940 = *(v12 + 304);
  *&STACK[0x2260] = vmlaq_f32(v924, v859, v940);
  *&STACK[0x2250] = vmlaq_f32(v925, v859, v941);
  v942 = vmlaq_f32(v927, v881, v940);
  v943 = vmlaq_f32(v926, v881, v941);
  v944 = vmulq_f32(v941, _Q5);
  v945 = vmulq_f32(v940, _Q5);
  v947 = *(v12 + 544);
  v946 = *(v12 + 560);
  *&STACK[0x2160] = vmlaq_f32(v930, v859, v946);
  *&STACK[0x2150] = vmlaq_f32(v931, v859, v947);
  v948 = vmlaq_f32(v933, v881, v946);
  v949 = vmlaq_f32(v932, v881, v947);
  v950 = vmulq_f32(v947, _Q5);
  v951 = vmulq_f32(v946, _Q5);
  v952 = *(v12 + 800);
  v953 = *(v12 + 816);
  *&STACK[0x2070] = vmlaq_f32(vmlaq_f32(v916, v903, v934), v859, v952);
  *&STACK[0x2080] = vmlaq_f32(v936, v859, v953);
  v954 = vmlaq_f32(v937, v881, v953);
  v955 = vmlaq_f32(vmulq_f32(v934, _Q16), v881, v952);
  v956 = vmulq_f32(v952, _Q5);
  v957 = vmulq_f32(v953, _Q5);
  v958 = *(v12 + 64);
  v959 = *(v12 + 80);
  *&STACK[0x2380] = vmlaq_f32(vmlaq_f32(v921, v881, v939), v860, v959);
  *&STACK[0x2370] = vmlaq_f32(vmlaq_f32(v920, v881, v938), v860, v958);
  v961 = *(v12 + 320);
  v960 = *(v12 + 336);
  *&STACK[0x2280] = vmlaq_f32(v942, v860, v960);
  *&STACK[0x2270] = vmlaq_f32(v943, v860, v961);
  v962 = vmlaq_f32(v945, v858, v960);
  v963 = vmlaq_f32(v944, v858, v961);
  v964 = vmulq_f32(v961, v820);
  v965 = vmulq_f32(v960, v820);
  v967 = *(v12 + 576);
  v966 = *(v12 + 592);
  *&STACK[0x2180] = vmlaq_f32(v948, v860, v966);
  *&STACK[0x2170] = vmlaq_f32(v949, v860, v967);
  v968 = vmlaq_f32(v951, v858, v966);
  v969 = vmlaq_f32(v950, v858, v967);
  v970 = vmulq_f32(v967, v820);
  v971 = vmulq_f32(v966, v820);
  v973 = *(v12 + 832);
  v972 = *(v12 + 848);
  *&STACK[0x20A0] = vmlaq_f32(v954, v860, v972);
  *&STACK[0x2090] = vmlaq_f32(v955, v860, v973);
  v974 = vmlaq_f32(v957, v858, v972);
  v975 = vmlaq_f32(v956, v858, v973);
  v976 = vmulq_f32(v973, v820);
  v977 = vmulq_f32(v972, v820);
  v979 = *(v12 + 96);
  v978 = *(v12 + 112);
  v981 = *&STACK[0x380];
  v980 = *&STACK[0x390];
  v982 = vmlaq_f32(vmlaq_f32(vmulq_f32(v938, _Q5), v858, v958), *&STACK[0x380], v979);
  *&STACK[0x23A0] = vmlaq_f32(vmlaq_f32(vmulq_f32(v939, _Q5), v858, v959), *&STACK[0x380], v978);
  *&STACK[0x2390] = v982;
  v983 = vmlaq_f32(vmulq_f32(v959, v820), v980, v978);
  v984 = vmlaq_f32(vmulq_f32(v958, v820), v980, v979);
  v986 = *(v12 + 352);
  v985 = *(v12 + 368);
  *&STACK[0x22A0] = vmlaq_f32(v962, v981, v985);
  *&STACK[0x2290] = vmlaq_f32(v963, v981, v986);
  v987 = vmlaq_f32(v965, v980, v985);
  v988 = vmlaq_f32(v964, v980, v986);
  v990 = *(v12 + 608);
  v989 = *(v12 + 624);
  *&STACK[0x21A0] = vmlaq_f32(v968, v981, v989);
  *&STACK[0x2190] = vmlaq_f32(v969, v981, v990);
  v991 = vmlaq_f32(v971, v980, v989);
  v992 = vmlaq_f32(v970, v980, v990);
  v994 = *(v12 + 864);
  v993 = *(v12 + 880);
  *&STACK[0x20C0] = vmlaq_f32(v974, v981, v993);
  *&STACK[0x20B0] = vmlaq_f32(v975, v981, v994);
  v995 = *(v11 + 104);
  v996 = *(v11 + 112);
  v997 = vmlaq_f32(v984, v820, v995[9]);
  *&STACK[0x23C0] = vmlaq_f32(v983, v820, v995[10]);
  *&STACK[0x23B0] = v997;
  v998 = vmlaq_f32(v988, v820, v995[25]);
  *&STACK[0x22C0] = vmlaq_f32(v987, v820, v995[26]);
  *&STACK[0x22B0] = v998;
  v999 = vmlaq_f32(v992, v820, v995[41]);
  *&STACK[0x21C0] = vmlaq_f32(v991, v820, v995[42]);
  *&STACK[0x21B0] = v999;
  v1000 = vmlaq_f32(vmlaq_f32(v976, v980, v994), v820, v995[57]);
  v1001 = vmlaq_f32(vmlaq_f32(v977, v980, v993), v820, v995[58]);
  v993.i32[0] = vdupq_laneq_s32(v821[24], 3).u32[0];
  v993.i32[1] = v821[40].i32[3];
  v993.i32[2] = v821[56].i32[3];
  *&STACK[0x20E0] = v1001;
  *&STACK[0x20D0] = v1000;
  v993.i32[3] = v821[72].i32[3];
  v1002 = *(v11 + 64);
  v1003 = *(v11 + 72);
  v994.i64[0] = vzip1q_s32(v1002[23], v1002[39]).u64[0];
  v994.i32[2] = v1002[55].i32[0];
  v994.i32[3] = v1002[71].i32[0];
  v997.i32[0] = vdupq_laneq_s32(v1003[10], 3).u32[0];
  v997.i32[1] = v1003[26].i32[3];
  v997.i32[2] = v1003[42].i32[3];
  v997.i32[3] = v1003[58].i32[3];
  v1005 = *(v11 + 88);
  v1004 = *(v11 + 96);
  v983.i64[0] = vzip1q_s32(v1005[9], v1005[25]).u64[0];
  v983.i32[2] = v1005[41].i32[0];
  v983.i32[3] = v1005[57].i32[0];
  v998.i32[0] = vdupq_laneq_s32(v1003[12], 3).u32[0];
  v998.i32[1] = v1003[28].i32[3];
  v998.i32[2] = v1003[44].i32[3];
  v998.i32[3] = v1003[60].i32[3];
  v987.i64[0] = vzip1q_s32(v1005[11], v1005[27]).u64[0];
  v987.i32[2] = v1005[43].i32[0];
  v987.i32[3] = v1005[59].i32[0];
  *&STACK[0x1F40] = vmlaq_f32(vmlaq_f32(vmulq_f32(v994, v820), v980, v983), v820, v987);
  *&STACK[0x1F30] = vmlaq_f32(vmlaq_f32(vmulq_f32(v993, v820), v980, v997), v820, v998);
  v1006 = vmlaq_f32(vmulq_f32(v997, v981), v858, v998);
  v1007 = vmulq_f32(v998, v860);
  v994.i32[0] = vdupq_laneq_s32(v1003[14], 3).u32[0];
  v994.i32[1] = v1003[30].i32[3];
  v994.i32[2] = v1003[46].i32[3];
  v994.i32[3] = v1003[62].i32[3];
  v998.i64[0] = vzip1q_s32(v1005[13], v1005[29]).u64[0];
  v998.i32[2] = v1005[45].i32[0];
  v998.i32[3] = v1005[61].i32[0];
  *&STACK[0x1F60] = vmlaq_f32(vmlaq_f32(vmulq_f32(v983, v981), v858, v987), _Q5, v998);
  *&STACK[0x1F50] = vmlaq_f32(v1006, _Q5, v994);
  v1008 = vmlaq_f32(vmulq_f32(v987, v860), v881, v998);
  v1009 = vmulq_f32(v998, v859);
  v983.i32[0] = vdupq_laneq_s32(v1003[16], 3).u32[0];
  v983.i32[1] = v1003[32].i32[3];
  v983.i32[2] = v1003[48].i32[3];
  v983.i32[3] = v1003[64].i32[3];
  v998.i64[0] = vzip1q_s32(v1005[15], v1005[31]).u64[0];
  v998.i32[2] = v1005[47].i32[0];
  v998.i32[3] = v1005[63].i32[0];
  *&STACK[0x1F80] = vmlaq_f32(v1008, _Q16, v998);
  *&STACK[0x1F70] = vmlaq_f32(vmlaq_f32(v1007, v881, v994), _Q16, v983);
  v1010 = vmlaq_f32(vmulq_f32(v994, v859), v903, v983);
  v1007.i32[0] = vdupq_laneq_s32(v1003[18], 3).u32[0];
  v1007.i32[1] = v1003[34].i32[3];
  v1007.i32[2] = v1003[50].i32[3];
  v1007.i32[3] = v1003[66].i32[3];
  v983.i64[0] = vzip1q_s32(v1005[17], v1005[33]).u64[0];
  v983.i32[2] = v1005[49].i32[0];
  v983.i32[3] = v1005[65].i32[0];
  v1011 = vmlaq_f32(vmlaq_f32(v1009, v903, v998), v903, v983);
  v1012 = vmlaq_f32(v1010, v903, v1007);
  v1013 = vmulq_f32(v1007, _Q16);
  v903.i32[0] = vdupq_laneq_s32(v1003[20], 3).u32[0];
  v903.i32[1] = v1003[36].i32[3];
  v903.i32[2] = v1003[52].i32[3];
  v903.i32[3] = v1003[68].i32[3];
  v998.i64[0] = vzip1q_s32(v1005[19], v1005[35]).u64[0];
  v998.i32[2] = v1005[51].i32[0];
  v998.i32[3] = v1005[67].i32[0];
  *&STACK[0x1FA0] = vmlaq_f32(v1011, v859, v998);
  *&STACK[0x1F90] = vmlaq_f32(v1012, v859, v903);
  v1014 = vmlaq_f32(vmulq_f32(v983, _Q16), v881, v998);
  v1015 = vmlaq_f32(v1013, v881, v903);
  v1016 = vmulq_f32(v903, _Q5);
  v881.i32[0] = vdupq_laneq_s32(v1003[22], 3).u32[0];
  v881.i32[1] = v1003[38].i32[3];
  v881.i32[2] = v1003[54].i32[3];
  v881.i32[3] = v1003[70].i32[3];
  v859.i64[0] = vzip1q_s32(v1005[21], v1005[37]).u64[0];
  v859.i32[2] = v1005[53].i32[0];
  v859.i32[3] = v1005[69].i32[0];
  *&STACK[0x1FC0] = vmlaq_f32(v1014, v860, v859);
  *&STACK[0x1FB0] = vmlaq_f32(v1015, v860, v881);
  v1017 = vmlaq_f32(vmulq_f32(v998, _Q5), v858, v859);
  v1018 = vmlaq_f32(v1016, v858, v881);
  v1015.i32[0] = vdupq_laneq_s32(v1003[24], 3).u32[0];
  v1015.i32[1] = v1003[40].i32[3];
  v1015.i32[2] = v1003[56].i32[3];
  v1015.i32[3] = v1003[72].i32[3];
  v858.i64[0] = vzip1q_s32(v1005[23], v1005[39]).u64[0];
  v858.i32[2] = v1005[55].i32[0];
  v858.i32[3] = v1005[71].i32[0];
  *&STACK[0x1FE0] = vmlaq_f32(v1017, v981, v858);
  *&STACK[0x1FD0] = vmlaq_f32(v1018, v981, v1015);
  v1019 = vmlaq_f32(vmulq_f32(v881, v820), v980, v1015);
  v1015.i32[0] = vdupq_laneq_s32(v1004[10], 3).u32[0];
  v1015.i32[1] = v1004[26].i32[3];
  v1015.i32[2] = v1004[42].i32[3];
  v1015.i32[3] = v1004[58].i32[3];
  v1018.i64[0] = vzip1q_s32(v996[9], v996[25]).u64[0];
  v1018.i32[2] = v996[41].i32[0];
  v1018.i32[3] = v996[57].i32[0];
  v1020 = &STACK[0x4D0];
  v1021 = &STACK[0x590];
  v1022 = &STACK[0x650];
  v1023 = &STACK[0x710];
  *&STACK[0x2000] = vmlaq_f32(vmlaq_f32(vmulq_f32(v859, v820), v980, v858), v820, v1018);
  *&STACK[0x1FF0] = vmlaq_f32(v1019, v820, v1015);
  while (1)
  {
    v1024 = *(&STACK[0x22F0] + v819);
    v1025 = *(&STACK[0x22F0] + v819 + 16);
    v1026 = *(&STACK[0x21F0] + v819);
    v1027 = *(&STACK[0x21F0] + v819 + 16);
    v1028 = *(&STACK[0x20F0] + v819);
    v1029 = *(&STACK[0x20F0] + v819 + 16);
    v1030 = vmulq_f32(*(&STACK[0x1F30] + v819 + 16), v820);
    v1031 = vmulq_f32(*(&STACK[0x1F30] + v819), v820);
    v1032 = vzip2q_s32(v1031, v1030);
    v1033 = vzip1q_s32(v1031, v1030);
    v1034 = vpaddq_f32(vmulq_f32(v1024, xmmword_298495E60), vmulq_f32(v1025, xmmword_298495E50));
    v1035 = *(&STACK[0x2010] + v819);
    v1036 = *(&STACK[0x2010] + v819 + 16);
    v1037 = vpaddq_f32(vmulq_f32(v1026, xmmword_298495E60), vmulq_f32(v1027, xmmword_298495E50));
    v1038 = vpaddq_f32(vmulq_f32(v1028, xmmword_298495E60), vmulq_f32(v1029, xmmword_298495E50));
    v1039 = vpaddq_f32(vmulq_f32(v1035, xmmword_298495E60), vmulq_f32(v1036, xmmword_298495E50));
    v1040 = vaddq_f32(v1037, vqtbl1q_s8(v1037, xmmword_298495EB0));
    v1041 = vaddq_f32(v1039, vqtbl1q_s8(v1039, xmmword_298495EB0));
    v1042 = vaddq_f32(vaddq_f32(v1034, vqtbl1q_s8(v1034, xmmword_298495EB0)), vqtbl1q_s8(v1033, xmmword_298495EC0));
    v1043 = vaddq_f32(v1040, vqtbl1q_s8(v1033, xmmword_298495ED0));
    v1044 = vaddq_f32(vaddq_f32(v1038, vqtbl1q_s8(v1038, xmmword_298495EB0)), vqtbl1q_s8(v1032, xmmword_298495EC0));
    v1045 = vaddq_f32(v1041, vqtbl1q_s8(v1032, xmmword_298495ED0));
    v1046 = vpaddq_f32(vpaddq_f32(vmulq_f32(v1024, xmmword_298495E80), vmulq_f32(v1025, xmmword_298495E70)), vpaddq_f32(vmulq_f32(v1024, xmmword_298495EA0), vmulq_f32(v1025, xmmword_298495E90)));
    v1047 = vpaddq_f32(vpaddq_f32(vmulq_f32(v1026, xmmword_298495E80), vmulq_f32(v1027, xmmword_298495E70)), vpaddq_f32(vmulq_f32(v1026, xmmword_298495EA0), vmulq_f32(v1027, xmmword_298495E90)));
    v1048 = vpaddq_f32(vpaddq_f32(vmulq_f32(v1028, xmmword_298495E80), vmulq_f32(v1029, xmmword_298495E70)), vpaddq_f32(vmulq_f32(v1028, xmmword_298495EA0), vmulq_f32(v1029, xmmword_298495E90)));
    v1049 = vpaddq_f32(vpaddq_f32(vmulq_f32(v1035, xmmword_298495E80), vmulq_f32(v1036, xmmword_298495E70)), vpaddq_f32(vmulq_f32(v1035, xmmword_298495EA0), vmulq_f32(v1036, xmmword_298495E90)));
    v1050 = vuzp1q_s32(v1046, vrev64q_s32(v1046));
    v1051 = vuzp1q_s32(v1047, vrev64q_s32(v1047));
    v1052 = vuzp1q_s32(v1048, vrev64q_s32(v1048));
    v1053 = vuzp1q_s32(v1049, vrev64q_s32(v1049));
    v1054 = vzip1q_s32(v1042, v1050);
    v1055 = vrev64q_s32(v1042);
    v1055.i64[0] = v1050.i64[1];
    v1056 = vzip1q_s32(v1043, v1051);
    v1057 = vrev64q_s32(v1043);
    v1057.i64[0] = v1051.i64[1];
    v1058 = vrev64q_s32(v1044);
    v1058.i64[0] = v1052.i64[1];
    v1059 = vzip1q_s32(v1044, v1052);
    v1060 = vzip1q_s32(v1045, v1053);
    v1061 = vrev64q_s32(v1045);
    v1061.i64[0] = v1053.i64[1];
    v1062 = vrev64q_s32(v1054);
    v1062.i64[0] = v1054.i64[0];
    v1063 = vrev64q_s32(v1056);
    v1063.i64[0] = v1056.i64[0];
    v1064 = vrev64q_s32(v1059);
    v1064.i64[0] = v1059.i64[0];
    v1065 = vrev64q_s32(v1060);
    v1065.i64[0] = v1060.i64[0];
    if (v819 == 192)
    {
      break;
    }

    *v1020 = v1062;
    *(v1020 + 1) = v1055;
    v1020 = (v1020 + 28);
    *v1021 = v1063;
    *(v1021 + 1) = v1057;
    v1021 = (v1021 + 28);
    *v1022 = v1064;
    *(v1022 + 1) = v1058;
    v1022 = (v1022 + 28);
    *v1023 = v1065;
    *(v1023 + 1) = v1061;
    v1023 = (v1023 + 28);
    v819 += 32;
  }

  *v1020 = v1062;
  *v1021 = v1063;
  *v1022 = v1064;
  *v1023 = v1065;
  v1020[2] = v1055.i64[0];
  v1021[2] = v1057.i64[0];
  v1022[2] = v1058.i64[0];
  v1023[2] = v1061.i64[0];
  v1066.i32[0] = vdupq_laneq_s32(v1042, 3).u32[0];
  v1066.i32[1] = v1043.i32[3];
  v1066.i64[1] = __PAIR64__(v1045.u32[3], v1044.u32[3]);
  *&STACK[0xC60] = v1066;
  *&STACK[0x440] = *v11;
  v1067 = *(v11 + 32);
  STACK[0x460] = v1067;
  STACK[0x468] = v11;
  v1068 = *(v11 + 135);
  LOBYTE(STACK[0x4C7]) = v1068;
  if (!v1068)
  {
    v1070 = *&STACK[0x710];
    v1069 = *&STACK[0x720];
    v1071 = vminnmq_f32(*&STACK[0x4E0], *&STACK[0x720]);
    *&STACK[0x4D0] = vminnmq_f32(*&STACK[0x4D0], *&STACK[0x710]);
    *&STACK[0x4E0] = v1071;
    v1073 = *&STACK[0x730];
    v1072 = *&STACK[0x740];
    v1074 = vminnmq_f32(*&STACK[0x500], *&STACK[0x740]);
    *&STACK[0x4F0] = vminnmq_f32(*&STACK[0x4F0], *&STACK[0x730]);
    *&STACK[0x500] = v1074;
    v1076 = *&STACK[0x750];
    v1075 = *&STACK[0x760];
    v1077 = vminnmq_f32(*&STACK[0x520], *&STACK[0x760]);
    *&STACK[0x510] = vminnmq_f32(*&STACK[0x510], *&STACK[0x750]);
    *&STACK[0x520] = v1077;
    v1079 = *&STACK[0x770];
    v1078 = *&STACK[0x780];
    v1080 = vminnmq_f32(*&STACK[0x540], *&STACK[0x780]);
    *&STACK[0x530] = vminnmq_f32(*&STACK[0x530], *&STACK[0x770]);
    *&STACK[0x540] = v1080;
    v1082 = *&STACK[0x790];
    v1081 = *&STACK[0x7A0];
    v1083 = vminnmq_f32(*&STACK[0x560], *&STACK[0x7A0]);
    *&STACK[0x550] = vminnmq_f32(*&STACK[0x550], *&STACK[0x790]);
    *&STACK[0x560] = v1083;
    v1085 = *&STACK[0x7B0];
    v1084 = *&STACK[0x7C0];
    v1086 = vminnmq_f32(*&STACK[0x580], *&STACK[0x7C0]);
    *&STACK[0x570] = vminnmq_f32(*&STACK[0x570], *&STACK[0x7B0]);
    *&STACK[0x580] = v1086;
    v1087 = vminnmq_f32(*&STACK[0x5A0], v1069);
    *&STACK[0x590] = vminnmq_f32(*&STACK[0x590], v1070);
    *&STACK[0x5A0] = v1087;
    v1088 = vminnmq_f32(*&STACK[0x5C0], v1072);
    *&STACK[0x5B0] = vminnmq_f32(*&STACK[0x5B0], v1073);
    *&STACK[0x5C0] = v1088;
    v1089 = vminnmq_f32(*&STACK[0x5E0], v1075);
    *&STACK[0x5D0] = vminnmq_f32(*&STACK[0x5D0], v1076);
    *&STACK[0x5E0] = v1089;
    v1090 = vminnmq_f32(*&STACK[0x600], v1078);
    *&STACK[0x5F0] = vminnmq_f32(*&STACK[0x5F0], v1079);
    *&STACK[0x600] = v1090;
    v1091 = vminnmq_f32(*&STACK[0x620], v1081);
    *&STACK[0x610] = vminnmq_f32(*&STACK[0x610], v1082);
    *&STACK[0x620] = v1091;
    v1092 = vminnmq_f32(*&STACK[0x640], v1084);
    *&STACK[0x630] = vminnmq_f32(*&STACK[0x630], v1085);
    *&STACK[0x640] = v1092;
    v1093 = vminnmq_f32(*&STACK[0x660], v1069);
    *&STACK[0x650] = vminnmq_f32(*&STACK[0x650], v1070);
    *&STACK[0x660] = v1093;
    v1094 = vminnmq_f32(*&STACK[0x680], v1072);
    *&STACK[0x670] = vminnmq_f32(*&STACK[0x670], v1073);
    *&STACK[0x680] = v1094;
    v1095 = vminnmq_f32(*&STACK[0x6A0], v1075);
    *&STACK[0x690] = vminnmq_f32(*&STACK[0x690], v1076);
    *&STACK[0x6A0] = v1095;
    v1096 = vminnmq_f32(*&STACK[0x6C0], v1078);
    *&STACK[0x6B0] = vminnmq_f32(*&STACK[0x6B0], v1079);
    *&STACK[0x6C0] = v1096;
    v1097 = vminnmq_f32(*&STACK[0x6E0], v1081);
    *&STACK[0x6D0] = vminnmq_f32(*&STACK[0x6D0], v1082);
    *&STACK[0x6E0] = v1097;
    v1098 = vminnmq_f32(*&STACK[0x700], v1084);
    *&STACK[0x6F0] = vminnmq_f32(*&STACK[0x6F0], v1085);
    *&STACK[0x700] = v1098;
    *&STACK[0xC60] = vminnmq_f32(v1066, vdupq_laneq_s32(v1045, 3));
  }

  if (*&STACK[0x4BC] < 0.0)
  {
    v1099 = 0uLL;
    v1100 = &STACK[0x440];
    v1101 = 3;
    v1102 = 0uLL;
    v1103 = 0uLL;
    v1104 = 0uLL;
    do
    {
      v1105 = xmmword_2984959B0;
      if (v1067)
      {
        v1105 = *v1067;
      }

      v1107 = *(v1100 + 11);
      v1106 = *(v1100 + 12);
      v1109 = *(v1100 + 9);
      v1108 = *(v1100 + 10);
      v1111 = *(v1100 + 23);
      v1110 = *(v1100 + 24);
      v1113 = *(v1100 + 21);
      v1112 = *(v1100 + 22);
      v1115 = *(v1100 + 35);
      v1114 = *(v1100 + 36);
      v1117 = *(v1100 + 33);
      v1116 = *(v1100 + 34);
      v1118 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1110, *v1105.f32, 1), v1106, v1105.f32[0]), v1114, v1105, 2);
      v1119 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1111, *v1105.f32, 1), v1107, v1105.f32[0]), v1115, v1105, 2);
      v1120 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1112, *v1105.f32, 1), v1108, v1105.f32[0]), v1116, v1105, 2);
      v1121 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1113, *v1105.f32, 1), v1109, v1105.f32[0]), v1117, v1105, 2);
      *(v1100 + 57) = v1121;
      *(v1100 + 58) = v1120;
      *(v1100 + 59) = v1119;
      *(v1100 + 60) = v1118;
      v1122 = vsubq_f32(v1106, v1118);
      v1123 = vsubq_f32(v1107, v1119);
      v1124 = vsubq_f32(v1108, v1120);
      v1125 = vsubq_f32(v1109, v1121);
      v1126 = vsubq_f32(v1113, v1121);
      v1127 = vsubq_f32(v1112, v1120);
      v1128 = vsubq_f32(v1111, v1119);
      v1129 = vsubq_f32(v1110, v1118);
      v1130 = vsubq_f32(v1117, v1121);
      v1131 = vsubq_f32(v1116, v1120);
      v1132 = vsubq_f32(v1115, v1119);
      v1133 = vsubq_f32(v1114, v1118);
      v1099 = vaddq_f32(v1099, vmlaq_f32(vmlaq_f32(vmulq_f32(v1126, v1126), v1125, v1125), v1130, v1130));
      v1102 = vaddq_f32(v1102, vmlaq_f32(vmlaq_f32(vmulq_f32(v1127, v1127), v1124, v1124), v1131, v1131));
      v1103 = vaddq_f32(v1103, vmlaq_f32(vmlaq_f32(vmulq_f32(v1128, v1128), v1123, v1123), v1132, v1132));
      v1104 = vaddq_f32(v1104, vmlaq_f32(vmlaq_f32(vmulq_f32(v1129, v1129), v1122, v1122), v1133, v1133));
      v1100 += 8;
      --v1101;
    }

    while (v1101);
    v1134 = *&STACK[0xC60];
    if (v1067)
    {
      v1135 = *v1067;
      v1135.i32[3] = 0;
    }

    else
    {
      v1135 = xmmword_2984959B0;
    }

    v1136 = vmulq_f32(v1134, v1135);
    *v1136.i8 = vadd_f32(*v1136.i8, *&vextq_s8(v1136, v1136, 8uLL));
    v1137 = vsubq_f32(v1134, vdupq_lane_s32(vadd_f32(*v1136.i8, vdup_lane_s32(*v1136.i8, 1)), 0));
    v1137.i32[3] = 0;
    v1138 = vaddq_f32(vaddq_f32(v1099, v1103), vaddq_f32(v1102, v1104));
    v1138.i64[0] = vpaddq_f32(v1138, v1138).u64[0];
    v1139 = vmulq_f32(v1137, v1137);
    v1139.i64[0] = vpaddq_f32(v1139, v1139).u64[0];
    v1138.f32[0] = vrecpes_f32(vadd_f32(vpadd_f32(*v1138.f32, *v1138.f32), vpadd_f32(*v1139.f32, *v1139.f32)).f32[0]);
    *&STACK[0xC70] = vaddv_f32(*v1136.i8);
    *&STACK[0x4BC] = (v1138.f32[0] * 3.0) + (v1138.f32[0] * 3.0);
  }

  if (SLOBYTE(STACK[0x4C6]) < 0)
  {
    v1140 = &STACK[0x890];
    v1141 = 0uLL;
    v1142 = 3;
    v1143 = vdupq_n_s32(0x3B808081u);
    v1144 = 0uLL;
    v1145 = 0uLL;
    v1146 = 0uLL;
    do
    {
      v1147 = vcgeq_f32(v1143, *(v1140 - 24));
      v1148 = vcgeq_f32(v1143, *(v1140 - 23));
      v1149 = vcgeq_f32(v1143, *(v1140 - 22));
      v1150 = vcgeq_f32(v1143, *(v1140 - 21));
      *(v1140 + 2) = v1149;
      *(v1140 + 3) = v1150;
      *v1140 = v1147;
      *(v1140 + 1) = v1148;
      v1140 += 8;
      v1146 = vsubq_s32(v1146, v1150);
      v1145 = vsubq_s32(v1145, v1149);
      v1144 = vsubq_s32(v1144, v1148);
      v1141 = vsubq_s32(v1141, v1147);
      --v1142;
    }

    while (v1142);
    v1151 = vaddq_s32(vaddq_s32(v1141, v1145), vaddq_s32(v1144, v1146));
    v1151.i64[0] = vpaddq_s32(v1151, v1151).u64[0];
    v1152 = vpadd_s32(*v1151.i8, *v1151.i8).u8[0];
    if (*&STACK[0xC6C] <= 0.0039216)
    {
      ++v1152;
    }

    LOBYTE(STACK[0x4C6]) = v1152;
  }

  v1153 = 1296;
  v1154 = 336;
  do
  {
    v1155 = (&STACK[0x440] + v1153);
    v1156 = *(&STACK[0x440] + v1154 - 192);
    v1157 = *(&STACK[0x440] + v1154 - 176);
    v1158 = *(&STACK[0x440] + v1154);
    v1159 = *(&STACK[0x440] + v1154 + 16);
    v1160 = *(&STACK[0x440] + v1154 + 192);
    v1161 = *(&STACK[0x440] + v1154 + 208);
    v1162 = *(&STACK[0x440] + v1154 + 384);
    v1163 = *(&STACK[0x440] + v1154 + 400);
    v4109.val[0] = vzip1q_s32(v1156, v1160);
    v4109.val[1] = vzip1q_s32(v1158, v1162);
    v1164 = (&STACK[0x440] + v1153 + 64);
    v1165 = (&STACK[0x440] + v1153 + 96);
    vst2q_f32(v1155, v4109);
    v1155 += 8;
    v4109.val[0] = vzip2q_s32(v1156, v1160);
    v4109.val[1] = vzip2q_s32(v1158, v1162);
    vst2q_f32(v1155, v4109);
    v4109.val[0] = vzip1q_s32(v1157, v1161);
    v4109.val[1] = vzip1q_s32(v1159, v1163);
    vst2q_f32(v1164, v4109);
    v4105.val[0] = vzip2q_s32(v1157, v1161);
    v4105.val[1] = vzip2q_s32(v1159, v1163);
    vst2q_f32(v1165, v4105);
    v1153 += 128;
    v1154 += 32;
  }

  while (v1153 != 2064);
  v1166 = 0;
  v1167 = *&STACK[0x590];
  v1168 = *&STACK[0x5A0];
  v1169 = *&STACK[0x5B0];
  v1170 = *&STACK[0x5C0];
  v1171 = *&STACK[0xC60];
  v1172 = *&STACK[0x500];
  v1173 = *&STACK[0x4F0];
  v1174 = *&STACK[0x4E0];
  v1175 = *&STACK[0x4D0];
  *&STACK[0x380] = *&STACK[0x5A0];
  *&STACK[0x390] = vmulq_f32(v1172, v1172);
  v1176 = v1169;
  v1177 = v1170;
  v1178 = vmulq_f32(v1173, v1173);
  v1179 = vmulq_f32(v1174, v1174);
  v1180 = vmulq_f32(v1175, v1175);
  v1181 = vmulq_f32(v1170, v1170);
  v1182 = *&STACK[0x650];
  v1183 = *&STACK[0x660];
  v1184 = vmulq_f32(v1176, v1176);
  v1185 = vmulq_f32(v1168, v1168);
  v1186 = v1167;
  v1187 = vmulq_f32(v1167, v1167);
  v1188 = *&STACK[0x670];
  v1189 = *&STACK[0x680];
  v1190 = vmulq_f32(v1189, v1189);
  v1191 = vmulq_f32(v1188, v1188);
  v1192 = vmulq_f32(v1183, v1183);
  v1193 = *&STACK[0x730];
  v1194 = *&STACK[0x740];
  v1195 = vmulq_f32(v1182, v1182);
  v1196 = vmulq_f32(v1194, v1194);
  v1197 = vmulq_f32(v1193, v1193);
  v1199 = *&STACK[0x710];
  v1198 = *&STACK[0x720];
  v1200 = vmulq_f32(v1198, v1198);
  *&STACK[0x370] = v1171;
  *&STACK[0xC50] = v1171;
  v1201 = vmulq_f32(v1199, v1199);
  do
  {
    v1202 = *(&STACK[0x440] + v1166 + 224);
    v1203 = *(&STACK[0x440] + v1166 + 240);
    v1173 = vaddq_f32(v1173, v1203);
    v1178 = vmlaq_f32(v1178, v1203, v1203);
    v1174 = vaddq_f32(v1174, v1202);
    v1179 = vmlaq_f32(v1179, v1202, v1202);
    v1204 = *(&STACK[0x440] + v1166 + 208);
    v1175 = vaddq_f32(v1175, v1204);
    v1180 = vmlaq_f32(v1180, v1204, v1204);
    v1205 = *(&STACK[0x440] + v1166 + 256);
    *&STACK[0x390] = vmlaq_f32(*&STACK[0x390], v1205, v1205);
    v1172 = vaddq_f32(v1172, v1205);
    v1206 = *(&STACK[0x440] + v1166 + 432);
    v1176 = vaddq_f32(v1176, v1206);
    v1184 = vmlaq_f32(v1184, v1206, v1206);
    v1207 = *(&STACK[0x440] + v1166 + 416);
    *&STACK[0x380] = vaddq_f32(*&STACK[0x380], v1207);
    v1185 = vmlaq_f32(v1185, v1207, v1207);
    v1208 = *(&STACK[0x440] + v1166 + 400);
    v1186 = vaddq_f32(v1186, v1208);
    v1187 = vmlaq_f32(v1187, v1208, v1208);
    v1209 = *(&STACK[0x440] + v1166 + 448);
    v1177 = vaddq_f32(v1177, v1209);
    v1181 = vmlaq_f32(v1181, v1209, v1209);
    v1210 = *(&STACK[0x440] + v1166 + 608);
    v1211 = *(&STACK[0x440] + v1166 + 624);
    v1188 = vaddq_f32(v1188, v1211);
    v1191 = vmlaq_f32(v1191, v1211, v1211);
    v1183 = vaddq_f32(v1183, v1210);
    v1192 = vmlaq_f32(v1192, v1210, v1210);
    v1212 = *(&STACK[0x440] + v1166 + 592);
    v1182 = vaddq_f32(v1182, v1212);
    v1195 = vmlaq_f32(v1195, v1212, v1212);
    v1213 = *(&STACK[0x440] + v1166 + 640);
    v1189 = vaddq_f32(v1189, v1213);
    v1190 = vmlaq_f32(v1190, v1213, v1213);
    v1214 = *(&STACK[0x440] + v1166 + 816);
    v1193 = vaddq_f32(v1193, v1214);
    v1197 = vmlaq_f32(v1197, v1214, v1214);
    v1215 = *(&STACK[0x440] + v1166 + 800);
    v1198 = vaddq_f32(v1198, v1215);
    v1200 = vmlaq_f32(v1200, v1215, v1215);
    v1216 = *(&STACK[0x440] + v1166 + 784);
    v1199 = vaddq_f32(v1199, v1216);
    v1201 = vmlaq_f32(v1201, v1216, v1216);
    v1217 = *(&STACK[0x440] + v1166 + 832);
    v1194 = vaddq_f32(v1194, v1217);
    v1196 = vmlaq_f32(v1196, v1217, v1217);
    v1166 += 64;
  }

  while (v1166 != 128);
  v1218 = vaddq_f32(*&STACK[0x370], vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1175, v1173), vaddq_f32(v1174, v1172)), vaddq_f32(vaddq_f32(v1186, v1176), vaddq_f32(*&STACK[0x380], v1177))), vpaddq_f32(vaddq_f32(vaddq_f32(v1182, v1188), vaddq_f32(v1183, v1189)), vaddq_f32(vaddq_f32(v1199, v1193), vaddq_f32(v1198, v1194)))));
  v1219 = vmulq_f32(v1218, vdupq_n_s32(0x3CA72F05u));
  v1220 = vmlsq_f32(vmlaq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1180, v1178), vaddq_f32(v1179, *&STACK[0x390])), vaddq_f32(vaddq_f32(v1187, v1184), vaddq_f32(v1185, v1181))), vpaddq_f32(vaddq_f32(vaddq_f32(v1195, v1191), vaddq_f32(v1192, v1190)), vaddq_f32(vaddq_f32(v1201, v1197), vaddq_f32(v1200, v1196)))), *&STACK[0x370], *&STACK[0x370]), v1219, v1218);
  *&STACK[0x450] = v1219;
  v1218.i64[0] = vpaddq_f32(v1220, v1220).u64[0];
  LODWORD(STACK[0x4B8]) = vpadd_f32(*v1218.f32, *v1218.f32).u32[0];
  if (SLOBYTE(STACK[0x4C8]) < 1)
  {
    LOBYTE(STACK[0x4C8]) = v1219.f32[3] >= 0.99996;
  }

  memcpy(&STACK[0x1440], &STACK[0x440], 0x840uLL);
  v1222 = *&STACK[0x1450];
  v1223 = SLOBYTE(STACK[0x14C6]);
  v1224 = LOBYTE(STACK[0x14C7]);
  if (v1223 >= 1 && LOBYTE(STACK[0x14C7]))
  {
    v1225 = 0;
    v1226 = vcgezq_s32(*&STACK[0x1890]);
    v1227 = vcgezq_s32(*&STACK[0x18A0]);
    v1228 = vcgezq_s32(*&STACK[0x18B0]);
    v1229 = vcgezq_s32(*&STACK[0x18C0]);
    v1230 = vandq_s8(*&STACK[0x1500], v1229);
    v1231 = vandq_s8(*&STACK[0x14F0], v1228);
    v1232 = vandq_s8(*&STACK[0x14E0], v1227);
    v1233 = vandq_s8(*&STACK[0x14D0], v1226);
    v1234 = vandq_s8(*&STACK[0x15C0], v1229);
    v1235 = vandq_s8(*&STACK[0x15B0], v1228);
    v1236 = vandq_s8(*&STACK[0x15A0], v1227);
    v1237 = vandq_s8(*&STACK[0x1590], v1226);
    v1238 = vandq_s8(*&STACK[0x1680], v1229);
    v1239 = vandq_s8(*&STACK[0x1670], v1228);
    v1240 = vandq_s8(*&STACK[0x1660], v1227);
    v1241 = vandq_s8(*&STACK[0x1650], v1226);
    v1242 = vandq_s8(*&STACK[0x1740], v1229);
    v1243 = vandq_s8(*&STACK[0x1730], v1228);
    v1244 = vandq_s8(*&STACK[0x1720], v1227);
    v1245 = vandq_s8(*&STACK[0x1710], v1226);
    do
    {
      v1246 = vcgezq_s32(*(&STACK[0x1440] + v1225 + 1216));
      v1247 = vcgezq_s32(*(&STACK[0x1440] + v1225 + 1200));
      v1248 = vcgezq_s32(*(&STACK[0x1440] + v1225 + 1184));
      v1249 = vcgezq_s32(*(&STACK[0x1440] + v1225 + 1168));
      v1230 = vaddq_f32(v1230, vandq_s8(*(&STACK[0x1440] + v1225 + 256), v1246));
      v1231 = vaddq_f32(v1231, vandq_s8(*(&STACK[0x1440] + v1225 + 240), v1247));
      v1232 = vaddq_f32(v1232, vandq_s8(*(&STACK[0x1440] + v1225 + 224), v1248));
      v1233 = vaddq_f32(v1233, vandq_s8(*(&STACK[0x1440] + v1225 + 208), v1249));
      v1234 = vaddq_f32(v1234, vandq_s8(*(&STACK[0x1440] + v1225 + 448), v1246));
      v1235 = vaddq_f32(v1235, vandq_s8(*(&STACK[0x1440] + v1225 + 432), v1247));
      v1236 = vaddq_f32(v1236, vandq_s8(*(&STACK[0x1440] + v1225 + 416), v1248));
      v1237 = vaddq_f32(v1237, vandq_s8(*(&STACK[0x1440] + v1225 + 400), v1249));
      v1238 = vaddq_f32(v1238, vandq_s8(*(&STACK[0x1440] + v1225 + 640), v1246));
      v1239 = vaddq_f32(v1239, vandq_s8(*(&STACK[0x1440] + v1225 + 624), v1247));
      v1240 = vaddq_f32(v1240, vandq_s8(*(&STACK[0x1440] + v1225 + 608), v1248));
      v1241 = vaddq_f32(v1241, vandq_s8(*(&STACK[0x1440] + v1225 + 592), v1249));
      v1250 = vandq_s8(*(&STACK[0x1440] + v1225 + 784), v1249);
      v1242 = vaddq_f32(v1242, vandq_s8(*(&STACK[0x1440] + v1225 + 832), v1246));
      v1243 = vaddq_f32(v1243, vandq_s8(*(&STACK[0x1440] + v1225 + 816), v1247));
      v1244 = vaddq_f32(v1244, vandq_s8(*(&STACK[0x1440] + v1225 + 800), v1248));
      v1225 += 64;
      v1245 = vaddq_f32(v1245, v1250);
    }

    while (v1225 != 128);
    v1251 = vaddq_f32(v1233, v1231);
    v1221 = vaddq_f32(vaddq_f32(v1245, v1243), vaddq_f32(v1244, v1242));
    v1222 = vmulq_n_f32(vaddq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v1251, vaddq_f32(v1232, v1230)), vaddq_f32(vaddq_f32(v1237, v1235), vaddq_f32(v1236, v1234))), vpaddq_f32(vaddq_f32(vaddq_f32(v1241, v1239), vaddq_f32(v1240, v1238)), v1221)), *&STACK[0x1C60]), ReciprocalTable[49 - v1223]);
  }

  v1252 = LOBYTE(STACK[0x14C8]);
  v4104 = v10;
  v4101 = *v10;
  if (*&STACK[0x14BC] <= 2401.0)
  {
    v1276 = 0;
    *&STACK[0x370] = vdupq_lane_s32(*v1222.f32, 1);
    *&STACK[0x380] = vdupq_lane_s32(*v1222.f32, 0);
    *&STACK[0x340] = v1222;
    *&STACK[0x350] = vdupq_laneq_s32(v1222, 3);
    *&STACK[0x360] = vdupq_laneq_s32(v1222, 2);
    v1277 = xmmword_298495630;
    v1278.i64[0] = -1;
    v1278.i64[1] = -1;
    v1279 = xmmword_298495610;
    v1280 = xmmword_298495620;
    v1281.i64[0] = 0x7F0000007FLL;
    v1281.i64[1] = 0x7F0000007FLL;
    v1282.i64[0] = 0x7F0000007FLL;
    v1282.i64[1] = 0x7F0000007FLL;
    v1283 = xmmword_298495600;
    v1284.i64[0] = 0x7F0000007FLL;
    v1284.i64[1] = 0x7F0000007FLL;
    v1285.i64[0] = 0x7F0000007FLL;
    v1285.i64[1] = 0x7F0000007FLL;
    v1286 = STACK[0x1460];
    v1287.i64[0] = -1;
    v1287.i64[1] = -1;
    v1288.i64[0] = -1;
    v1288.i64[1] = -1;
    v1289.i64[0] = -1;
    v1289.i64[1] = -1;
    do
    {
      *&STACK[0x390] = v1278;
      v1290 = vsubq_f32(*(&STACK[0x1440] + v1276 + 192), *&STACK[0x380]);
      v1291 = vsubq_f32(*(&STACK[0x1440] + v1276 + 144), *&STACK[0x380]);
      v1292 = vsubq_f32(*(&STACK[0x1440] + v1276 + 160), *&STACK[0x380]);
      v1293 = vsubq_f32(*(&STACK[0x1440] + v1276 + 176), *&STACK[0x380]);
      v1294 = vsubq_f32(*(&STACK[0x1440] + v1276 + 384), *&STACK[0x370]);
      v1295 = vsubq_f32(*(&STACK[0x1440] + v1276 + 336), *&STACK[0x370]);
      v1296 = vsubq_f32(*(&STACK[0x1440] + v1276 + 352), *&STACK[0x370]);
      v1297 = vsubq_f32(*(&STACK[0x1440] + v1276 + 368), *&STACK[0x370]);
      v1298 = vsubq_f32(*(&STACK[0x1440] + v1276 + 576), *&STACK[0x360]);
      v1299 = vsubq_f32(*(&STACK[0x1440] + v1276 + 528), *&STACK[0x360]);
      v1300 = vsubq_f32(*(&STACK[0x1440] + v1276 + 544), *&STACK[0x360]);
      v1301 = vsubq_f32(*(&STACK[0x1440] + v1276 + 560), *&STACK[0x360]);
      v1302 = vsubq_f32(*(&STACK[0x1440] + v1276 + 768), *&STACK[0x350]);
      v1303 = vsubq_f32(*(&STACK[0x1440] + v1276 + 720), *&STACK[0x350]);
      v1304 = vsubq_f32(*(&STACK[0x1440] + v1276 + 736), *&STACK[0x350]);
      v1305 = vsubq_f32(*(&STACK[0x1440] + v1276 + 752), *&STACK[0x350]);
      v1306 = vmulq_f32(v1293, v1293);
      v1307 = vmulq_f32(v1292, v1292);
      v1308 = vmulq_f32(v1291, v1291);
      v1309 = vmulq_f32(v1290, v1290);
      v1310 = vmulq_f32(v1297, v1297);
      v1311 = vmulq_f32(v1296, v1296);
      v1312 = vmulq_f32(v1295, v1295);
      v1313 = vmulq_f32(v1294, v1294);
      v1314 = vmulq_f32(v1301, v1301);
      v1315 = vmulq_f32(v1300, v1300);
      v1316 = vmulq_f32(v1299, v1299);
      v1317 = vmulq_f32(v1298, v1298);
      v1318 = vmulq_f32(v1305, v1305);
      v1319 = vmulq_f32(v1304, v1304);
      v1320 = vmulq_f32(v1303, v1303);
      v1321 = vmulq_f32(v1302, v1302);
      if (v1286)
      {
        v1322 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1311, *v1286, 1), v1307, COERCE_FLOAT(*v1286->f32)), v1315, *v1286->f32, 2), v1319, *v1286->f32, 3), *&STACK[0x3A0]);
        v1323 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1312, *v1286, 1), v1308, COERCE_FLOAT(*v1286->f32)), v1316, *v1286->f32, 2), v1320, *v1286->f32, 3), *&STACK[0x3A0]);
        v1324 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1310, *v1286, 1), v1306, COERCE_FLOAT(*v1286->f32)), v1314, *v1286->f32, 2), v1318, *v1286->f32, 3), *&STACK[0x3A0]);
        v1325 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1313, *v1286, 1), v1309, COERCE_FLOAT(*v1286->f32)), v1317, *v1286->f32, 2), v1321, *v1286->f32, 3), *&STACK[0x3A0]);
      }

      else
      {
        v1323 = vaddq_f32(vaddq_f32(vaddq_f32(v1308, v1312), v1316), v1320);
        v1322 = vaddq_f32(vaddq_f32(vaddq_f32(v1307, v1311), v1315), v1319);
        v1324 = vaddq_f32(vaddq_f32(vaddq_f32(v1306, v1310), v1314), v1318);
        v1325 = vaddq_f32(vaddq_f32(vaddq_f32(v1309, v1313), v1317), v1321);
      }

      if (v1224)
      {
        v1326.i64[0] = 0x7F0000007FLL;
        v1326.i64[1] = 0x7F0000007FLL;
        v1325 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v1276 + 1152)), v1326, v1325);
        v1324 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v1276 + 1136)), v1326, v1324);
        v1322 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v1276 + 1120)), v1326, v1322);
        v1323 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v1276 + 1104)), v1326, v1323);
      }

      v1278 = vbslq_s8(vcgtq_f32(v1323, v1281), v1283, *&STACK[0x390]);
      v1287 = vbslq_s8(vcgtq_f32(v1322, v1282), v1280, v1287);
      v1288 = vbslq_s8(vcgtq_f32(v1324, v1284), v1279, v1288);
      v1289 = vbslq_s8(vcgtq_f32(v1325, v1285), v1277, v1289);
      v1281 = vmaxnmq_f32(v1281, v1323);
      v1282 = vmaxnmq_f32(v1282, v1322);
      v1284 = vmaxnmq_f32(v1284, v1324);
      v1285 = vmaxnmq_f32(v1285, v1325);
      v1327.i64[0] = 0x1000000010;
      v1327.i64[1] = 0x1000000010;
      v1283 = vaddq_s32(v1283, v1327);
      v1280 = vaddq_s32(v1280, v1327);
      v1279 = vaddq_s32(v1279, v1327);
      v1276 += 64;
      v1277 = vaddq_s32(v1277, v1327);
    }

    while (v1276 != 192);
    v1328 = vmaxnmq_f32(v1281, v1284);
    v1329 = vmaxnmq_f32(v1282, v1285);
    v1330 = vbslq_s8(vcgtq_f32(v1281, v1284), v1278, v1288);
    v1331 = vcgtq_f32(v1328, v1329);
    v1332 = vmaxnmq_f32(v1328, v1329);
    v1333 = vbslq_s8(v1331, v1330, vbslq_s8(vcgtq_f32(v1282, v1285), v1287, v1289));
    v1334 = vextq_s8(v1332, v1332, 8uLL);
    v1335 = vbslq_s8(vcgtq_f32(v1332, v1334), v1333, vextq_s8(v1333, v1333, 8uLL));
    v1336 = vmaxnmq_f32(v1332, v1334);
    v1337 = vbslq_s8(vcgtq_f32(v1336, vrev64q_s32(v1336)), v1335, vdupq_lane_s32(*v1335.i8, 1)).u32[0];
    v1338 = *(&STACK[0x1950] + v1337);
    if (v1252)
    {
      v1339 = 0;
    }

    else
    {
      v1339 = -1;
    }

    v1340 = *&STACK[0x1C60];
    LODWORD(v1341) = HIDWORD(*&STACK[0x1C60]);
    _ZF = v1341 <= 0.0 && v1224 == 0;
    v1343 = !_ZF;
    if (_ZF)
    {
      v1344 = *&STACK[0x340];
    }

    else
    {
      v1344 = *&STACK[0x340];
      v1345 = vsubq_f32(v1338, *&STACK[0x340]);
      v1346 = vsubq_f32(v1340, *&STACK[0x340]);
      v1347 = vmulq_f32(v1345, v1345);
      v1348 = vmulq_f32(v1346, v1346);
      if (v1286)
      {
        _Q4 = vmulq_f32(v1347, *v1286->f32);
        *_Q4.i8 = vadd_f32(*_Q4.i8, *&vextq_s8(_Q4, _Q4, 8uLL));
        v1350 = vmulq_f32(v1348, *v1286->f32);
        *v1350.i8 = vadd_f32(*v1350.i8, *&vextq_s8(v1350, v1350, 8uLL));
        *v1350.i8 = vadd_f32(vzip1_s32(*_Q4.i8, *v1350.i8), vzip2_s32(*_Q4.i8, *v1350.i8));
        __asm { FMOV            V4.2S, #3.0 }

        v1351 = vmul_f32(*v1350.i8, *_Q4.i8);
      }

      else
      {
        v1353 = vpaddq_f32(v1347, v1347).u64[0];
        v1354 = vpaddq_f32(v1348, v1348).u64[0];
        v1351 = vzip1_s32(vpadd_f32(v1353, v1353), vpadd_f32(v1354, v1354));
      }

      v1355 = v1341 != 0.0 || v1224 == 0;
      v1356 = v1351.f32[1];
      if (!v1355)
      {
        v1356 = 0.0;
      }

      if (v1356 > v1351.f32[0])
      {
        v1338 = *&STACK[0x1C60];
      }
    }

    v1357 = vsubq_f32(v1344, v1338);
    *&STACK[0x320] = v1340;
    *&STACK[0x310] = v1341;
    if (v1286)
    {
      v1358 = *v1286->f32;
    }

    else
    {
      v1358 = vdupq_n_s32(0x3EAAAAABu);
    }

    v1359 = 0;
    v1360 = v1337;
    v1361 = xmmword_298495630;
    v1362 = vmulq_f32(v1357, v1358);
    v1363.i64[0] = -1;
    v1363.i64[1] = -1;
    *&STACK[0x380] = vdupq_lane_s32(*v1338.f32, 0);
    v1364 = xmmword_298495610;
    *&STACK[0x360] = vdupq_laneq_s32(v1338, 2);
    *&STACK[0x370] = vdupq_lane_s32(*v1338.f32, 1);
    v1365.i64[0] = 0x7F0000007FLL;
    v1365.i64[1] = 0x7F0000007FLL;
    *&STACK[0x330] = v1338;
    *&STACK[0x340] = vdupq_lane_s32(*v1362.i8, 0);
    *&STACK[0x350] = vdupq_laneq_s32(v1338, 3);
    v1366.i64[0] = 0x7F0000007FLL;
    v1366.i64[1] = 0x7F0000007FLL;
    v1367.i64[0] = 0x7F0000007FLL;
    v1367.i64[1] = 0x7F0000007FLL;
    v1368 = vdupq_laneq_s32(v1362, 2);
    *&STACK[0x390] = v1362;
    v1369 = vdupq_laneq_s32(v1362, 3);
    v1370.i64[0] = 0x7F0000007FLL;
    v1370.i64[1] = 0x7F0000007FLL;
    v1371.i64[0] = -1;
    v1371.i64[1] = -1;
    v1372 = xmmword_298495620;
    v1373.i64[0] = -1;
    v1373.i64[1] = -1;
    v1374.i64[0] = -1;
    v1374.i64[1] = -1;
    v1375 = xmmword_298495600;
    do
    {
      v1376 = (&STACK[0x1440] + v1359);
      v1377 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1359 + 368), *&STACK[0x370]), STACK[0x390], 1), *&STACK[0x340], vsubq_f32(*(&STACK[0x1440] + v1359 + 176), *&STACK[0x380])), v1368, vsubq_f32(*(&STACK[0x1440] + v1359 + 560), *&STACK[0x360])), v1369, vsubq_f32(*(&STACK[0x1440] + v1359 + 752), *&STACK[0x350]));
      v1378 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1359 + 352), *&STACK[0x370]), STACK[0x390], 1), *&STACK[0x340], vsubq_f32(*(&STACK[0x1440] + v1359 + 160), *&STACK[0x380])), v1368, vsubq_f32(*(&STACK[0x1440] + v1359 + 544), *&STACK[0x360])), v1369, vsubq_f32(*(&STACK[0x1440] + v1359 + 736), *&STACK[0x350]));
      v1379 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1359 + 336), *&STACK[0x370]), STACK[0x390], 1), *&STACK[0x340], vsubq_f32(*(&STACK[0x1440] + v1359 + 144), *&STACK[0x380])), v1368, vsubq_f32(*(&STACK[0x1440] + v1359 + 528), *&STACK[0x360])), v1369, vsubq_f32(*(&STACK[0x1440] + v1359 + 720), *&STACK[0x350]));
      v1380 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1359 + 384), *&STACK[0x370]), STACK[0x390], 1), *&STACK[0x340], vsubq_f32(*(&STACK[0x1440] + v1359 + 192), *&STACK[0x380])), v1368, vsubq_f32(*(&STACK[0x1440] + v1359 + 576), *&STACK[0x360])), v1369, vsubq_f32(*(&STACK[0x1440] + v1359 + 768), *&STACK[0x350]));
      if (v1224)
      {
        v1381.i64[0] = 0x7F0000007FLL;
        v1381.i64[1] = 0x7F0000007FLL;
        v1380 = vbslq_s8(vcltzq_s32(v1376[72]), v1381, v1380);
        v1377 = vbslq_s8(vcltzq_s32(v1376[71]), v1381, v1377);
        v1378 = vbslq_s8(vcltzq_s32(v1376[70]), v1381, v1378);
        v1379 = vbslq_s8(vcltzq_s32(v1376[69]), v1381, v1379);
      }

      v1363 = vbslq_s8(vcgtq_f32(v1379, v1365), v1375, v1363);
      v1371 = vbslq_s8(vcgtq_f32(v1378, v1366), v1372, v1371);
      v1373 = vbslq_s8(vcgtq_f32(v1377, v1367), v1364, v1373);
      v1374 = vbslq_s8(vcgtq_f32(v1380, v1370), v1361, v1374);
      v1365 = vmaxnmq_f32(v1365, v1379);
      v1366 = vmaxnmq_f32(v1366, v1378);
      v1367 = vmaxnmq_f32(v1367, v1377);
      v1370 = vmaxnmq_f32(v1370, v1380);
      v1382.i64[0] = 0x1000000010;
      v1382.i64[1] = 0x1000000010;
      v1375 = vaddq_s32(v1375, v1382);
      v1372 = vaddq_s32(v1372, v1382);
      v1364 = vaddq_s32(v1364, v1382);
      v1359 += 64;
      v1361 = vaddq_s32(v1361, v1382);
    }

    while (v1359 != 192);
    v1383 = vmaxnmq_f32(v1365, v1367);
    v1384 = vmaxnmq_f32(v1366, v1370);
    v1385 = vcgtq_f32(v1383, v1384);
    v1386 = vmaxnmq_f32(v1383, v1384);
    v1387 = vbslq_s8(v1385, vbslq_s8(vcgtq_f32(v1365, v1367), v1363, v1373), vbslq_s8(vcgtq_f32(v1366, v1370), v1371, v1374));
    v1388 = vextq_s8(v1386, v1386, 8uLL);
    v1389 = vbslq_s8(vcgtq_f32(v1386, v1388), v1387, vextq_s8(v1387, v1387, 8uLL));
    v1390 = vmaxnmq_f32(v1386, v1388);
    v1391 = vbslq_s8(vcgtq_f32(v1390, vrev64q_s32(v1390)), v1389, vdupq_lane_s32(*v1389.i8, 1)).u32[0];
    v1392 = *(&STACK[0x1950] + v1391);
    v1393 = *&STACK[0x330];
    v1394 = vsubq_f32(v1392, *&STACK[0x330]);
    STACK[0x300] = v1360;
    if (v1343)
    {
      v1395 = vsubq_f32(*&STACK[0x320], v1393);
      v1396 = vmulq_f32(v1394, v1394);
      v1397 = vmulq_f32(v1395, v1395);
      if (v1286)
      {
        _Q2 = vmulq_f32(v1396, *v1286->f32);
        *_Q2.i8 = vadd_f32(*_Q2.i8, *&vextq_s8(_Q2, _Q2, 8uLL));
        v1399 = vmulq_f32(v1397, *v1286->f32);
        *v1399.i8 = vadd_f32(*v1399.i8, *&vextq_s8(v1399, v1399, 8uLL));
        *v1399.i8 = vadd_f32(vzip1_s32(*_Q2.i8, *v1399.i8), vzip2_s32(*_Q2.i8, *v1399.i8));
        __asm { FMOV            V2.2S, #3.0 }

        v1400 = vmul_f32(*v1399.i8, *_Q2.i8);
      }

      else
      {
        v1401 = vpaddq_f32(v1396, v1396).u64[0];
        v1402 = vpaddq_f32(v1397, v1397).u64[0];
        v1400 = vzip1_s32(vpadd_f32(v1401, v1401), vpadd_f32(v1402, v1402));
      }

      v1403 = *&STACK[0x310] != 0.0 || v1224 == 0;
      v1404 = v1400.f32[1];
      if (!v1403)
      {
        v1404 = 0.0;
      }

      if (v1404 > v1400.f32[0])
      {
        v1394 = v1395;
        v1392 = *&STACK[0x320];
      }
    }

    *&STACK[0x380] = v1394;
    *&STACK[0x390] = v1392;
    v1405 = v1391;
    if (v1252)
    {
      v1406 = 3;
    }

    else
    {
      v1406 = 4;
    }

    if (v1252)
    {
      v1407 = 6;
    }

    else
    {
      v1407 = 8;
    }

    v1408 = WeightInfoForSingleLineSingleWeight_7x7(49, v1407);
    v1409 = 0;
    v1410 = ReciprocalTable[BYTE4(v1408)];
    *&STACK[0x320] = v1410;
    *&v1411 = v1410 * (vcvts_n_f32_u32(v1406 + v1339, 2uLL) * v1410);
    v1412.i64[0] = 0x8000000080000000;
    v1412.i64[1] = 0x8000000080000000;
    v1413 = vdupq_n_s32(0x3B808081u);
    v1414 = vbslq_s8(vcgtq_f32(v1413, vabsq_f32(*&STACK[0x380])), vorrq_s8(vandq_s8(*&STACK[0x380], v1412), v1413), *&STACK[0x380]);
    __asm { FMOV            V1.4S, #1.0 }

    *&STACK[0x310] = _Q1;
    v1416 = vdivq_f32(_Q1, v1414);
    v1417 = vdupq_lane_s32(*v1416.f32, 0);
    v1418 = vmulq_f32(*&STACK[0x330], v1416);
    v1419 = vnegq_f32(vdupq_lane_s32(*v1418.i8, 0));
    v1420 = vdupq_lane_s32(*v1416.f32, 1);
    LODWORD(STACK[0x360]) = v1416.i32[1];
    v1421 = vnegq_f32(vdupq_lane_s32(*v1418.i8, 1));
    v1422 = vdupq_laneq_s32(v1416, 2);
    LODWORD(STACK[0x350]) = v1416.i32[2];
    v1423 = vnegq_f32(vdupq_laneq_s32(v1418, 2));
    v1424 = vdupq_laneq_s32(v1416, 3);
    LODWORD(STACK[0x340]) = v1416.i32[3];
    v1425 = vnegq_f32(vdupq_laneq_s32(v1418, 3));
    *&STACK[0x380] = v1411;
    v1426 = vdupq_lane_s32(*&v1411, 0);
    v1427 = 0uLL;
    v1428 = 0uLL;
    v1429 = 0uLL;
    v1430 = 0uLL;
    do
    {
      v1431 = vmlaq_f32(v1419, v1417, *(&STACK[0x1440] + v1409 + 192));
      v1432 = vmlaq_f32(v1419, v1417, *(&STACK[0x1440] + v1409 + 144));
      v1433 = vmlaq_f32(v1419, v1417, *(&STACK[0x1440] + v1409 + 160));
      v1434 = vmlaq_f32(v1421, v1420, *(&STACK[0x1440] + v1409 + 368));
      v1435 = vmlaq_f32(v1421, v1420, *(&STACK[0x1440] + v1409 + 352));
      v1436 = vmlaq_f32(v1421, v1420, *(&STACK[0x1440] + v1409 + 336));
      v1437 = vmlaq_f32(v1421, v1420, *(&STACK[0x1440] + v1409 + 384));
      v1438 = vmlaq_f32(v1419, v1417, *(&STACK[0x1440] + v1409 + 176));
      v1439 = vmlaq_f32(v1423, v1422, *(&STACK[0x1440] + v1409 + 560));
      v1440 = vmlaq_f32(v1423, v1422, *(&STACK[0x1440] + v1409 + 544));
      v1441 = vmlaq_f32(v1423, v1422, *(&STACK[0x1440] + v1409 + 528));
      v1442 = vmlaq_f32(v1423, v1422, *(&STACK[0x1440] + v1409 + 576));
      v1443 = vmlaq_f32(v1425, v1424, *(&STACK[0x1440] + v1409 + 768));
      v1444 = vmlaq_f32(v1425, v1424, *(&STACK[0x1440] + v1409 + 720));
      v1445 = vmlaq_f32(v1425, v1424, *(&STACK[0x1440] + v1409 + 736));
      v1446 = vmlaq_f32(v1425, v1424, *(&STACK[0x1440] + v1409 + 752));
      v1447 = vmulq_f32(v1437, v1437);
      v1448 = vmulq_f32(v1436, v1436);
      v1449 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1435, v1435), v1433, v1433), v1440, v1440), v1445, v1445);
      v1450 = vcgtq_f32(v1426, vmlaq_f32(vmlaq_f32(vmlaq_f32(v1447, v1431, v1431), v1442, v1442), v1443, v1443));
      v1451 = vcgtq_f32(v1426, vmlaq_f32(vmlaq_f32(vmlaq_f32(v1448, v1432, v1432), v1441, v1441), v1444, v1444));
      v1452 = vcgtq_f32(v1426, v1449);
      v1453 = vcgtq_f32(v1426, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1434, v1434), v1438, v1438), v1439, v1439), v1446, v1446));
      v1454 = (&STACK[0x440] + v1409);
      *v1454 = v1451;
      v1454[1] = v1452;
      v1454[2] = v1453;
      v1454[3] = v1450;
      v1429 = vsubq_s32(v1429, v1453);
      v1428 = vsubq_s32(v1428, v1452);
      v1427 = vsubq_s32(v1427, v1451);
      v1430 = vsubq_s32(v1430, v1450);
      v1409 += 64;
    }

    while (v1409 != 192);
    v1455 = vaddq_s32(vaddq_s32(v1427, v1429), vaddq_s32(v1428, v1430));
    v1455.i64[0] = vpaddq_s32(v1455, v1455).u64[0];
    v1456 = vpadd_s32(*v1455.i8, *v1455.i8).u8[0];
    v1457 = *&STACK[0x1C60];
    v1458 = vmulq_f32(v1416, vsubq_f32(*&STACK[0x1C60], *&STACK[0x330]));
    v1459 = vmulq_f32(v1458, v1458);
    v1459.i64[0] = vpaddq_f32(v1459, v1459).u64[0];
    v1460 = vpadd_f32(*v1459.f32, *v1459.f32).f32[0];
    if (v1460 >= COERCE_FLOAT(*&STACK[0x380]))
    {
      v1461 = v1456;
    }

    else
    {
      v1461 = v1456 + 1;
    }

    if (v1460 >= COERCE_FLOAT(*&STACK[0x380]))
    {
      v1462 = 0;
    }

    else
    {
      v1462 = -1;
    }

    v10 = v4104;
    *&STACK[0x370] = v1457;
    if (v1461 > 1u)
    {
      v1463 = vcltzq_s32(*&STACK[0x440]);
      v1464 = vcltzq_s32(*&STACK[0x450]);
      v1465 = vcltzq_s32(*&STACK[0x460]);
      v1466 = vcltzq_s32(*&STACK[0x470]);
      v1467 = vandq_s8(v1466, *&STACK[0x1500]);
      v1468 = vandq_s8(v1465, *&STACK[0x14F0]);
      v1469 = vandq_s8(v1464, *&STACK[0x14E0]);
      v1470 = vandq_s8(v1463, *&STACK[0x14D0]);
      v1471 = vandq_s8(*&STACK[0x15C0], v1466);
      v1472 = vandq_s8(*&STACK[0x15B0], v1465);
      v1473 = vandq_s8(*&STACK[0x15A0], v1464);
      v1474 = vandq_s8(*&STACK[0x1590], v1463);
      v1475 = vandq_s8(*&STACK[0x1680], v1466);
      v1476 = vandq_s8(*&STACK[0x1670], v1465);
      v1477 = vandq_s8(*&STACK[0x1660], v1464);
      v1478 = vandq_s8(*&STACK[0x1650], v1463);
      v1479 = vandq_s8(*&STACK[0x1740], v1466);
      v1480 = vandq_s8(*&STACK[0x1730], v1465);
      v1481 = vandq_s8(*&STACK[0x1720], v1464);
      v1482 = vandq_s8(*&STACK[0x1710], v1463);
      v1483 = &STACK[0x1750];
      for (i = 1; i != 3; ++i)
      {
        v1485 = (&STACK[0x440] + 8 * i);
        v1486 = vcltzq_s32(v1485[3]);
        v1487 = vcltzq_s32(v1485[2]);
        v1488 = vcltzq_s32(v1485[1]);
        v1489 = vcltzq_s32(*v1485);
        v1467 = vaddq_f32(v1467, vandq_s8(v1486, *(v1483 - 33)));
        v1468 = vaddq_f32(v1468, vandq_s8(v1487, *(v1483 - 34)));
        v1469 = vaddq_f32(v1469, vandq_s8(v1488, *(v1483 - 35)));
        v1470 = vaddq_f32(v1470, vandq_s8(v1489, *(v1483 - 36)));
        v1471 = vaddq_f32(v1471, vandq_s8(*(v1483 - 21), v1486));
        v1472 = vaddq_f32(v1472, vandq_s8(*(v1483 - 22), v1487));
        v1473 = vaddq_f32(v1473, vandq_s8(*(v1483 - 23), v1488));
        v1474 = vaddq_f32(v1474, vandq_s8(*(v1483 - 24), v1489));
        v1475 = vaddq_f32(v1475, vandq_s8(*(v1483 - 9), v1486));
        v1476 = vaddq_f32(v1476, vandq_s8(*(v1483 - 10), v1487));
        v1477 = vaddq_f32(v1477, vandq_s8(*(v1483 - 11), v1488));
        v1478 = vaddq_f32(v1478, vandq_s8(*(v1483 - 12), v1489));
        v1491 = *(v1483 + 2);
        v1490 = *(v1483 + 3);
        v1493 = *v1483;
        v1492 = *(v1483 + 1);
        v1483 += 8;
        v1479 = vaddq_f32(v1479, vandq_s8(v1490, v1486));
        v1480 = vaddq_f32(v1480, vandq_s8(v1491, v1487));
        v1481 = vaddq_f32(v1481, vandq_s8(v1492, v1488));
        v1482 = vaddq_f32(v1482, vandq_s8(v1493, v1489));
      }

      v1450 = vandq_s8(vdupq_n_s32(v1462), v1457);
      v1425 = vaddq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1470, v1468), vaddq_f32(v1469, v1467)), vaddq_f32(vaddq_f32(v1474, v1472), vaddq_f32(v1473, v1471))), vpaddq_f32(vaddq_f32(vaddq_f32(v1478, v1476), vaddq_f32(v1477, v1475)), vaddq_f32(vaddq_f32(v1482, v1480), vaddq_f32(v1481, v1479)))), v1450);
      *&STACK[0x330] = vmulq_n_f32(v1425, ReciprocalTable[v1461]);
    }

    v1494 = *&STACK[0x390];
    v1495 = 0;
    v1425.f32[0] = v1416.f32[0] * COERCE_FLOAT(*&STACK[0x390]);
    v1496 = vdupq_lane_s32(*v1425.f32, 0);
    v1497 = vnegq_f32(v1496);
    v1496.f32[0] = vmuls_lane_f32(*&STACK[0x360], STACK[0x390], 1);
    v1498 = vdupq_lane_s32(*v1496.f32, 0);
    v1450.f32[0] = vmuls_lane_f32(*&STACK[0x350], *&STACK[0x390], 2);
    v1499 = vdupq_lane_s32(*v1450.f32, 0);
    v1500 = vnegq_f32(v1498);
    v1501 = vnegq_f32(v1499);
    *&STACK[0x390] = *&STACK[0x390];
    v1498.f32[0] = vmuls_lane_f32(*&STACK[0x340], v1494, 3);
    v1502 = vnegq_f32(vdupq_lane_s32(*v1498.f32, 0));
    v1503 = 0uLL;
    v1504 = 0uLL;
    v1505 = 0uLL;
    v1506 = 0uLL;
    do
    {
      v1507 = vmlaq_f32(v1497, v1417, *(&STACK[0x1440] + v1495 + 192));
      v1508 = vmlaq_f32(v1497, v1417, *(&STACK[0x1440] + v1495 + 144));
      v1509 = vmlaq_f32(v1497, v1417, *(&STACK[0x1440] + v1495 + 160));
      v1510 = vmlaq_f32(v1500, v1420, *(&STACK[0x1440] + v1495 + 368));
      v1511 = vmlaq_f32(v1500, v1420, *(&STACK[0x1440] + v1495 + 352));
      v1512 = vmlaq_f32(v1500, v1420, *(&STACK[0x1440] + v1495 + 336));
      v1513 = vmlaq_f32(v1500, v1420, *(&STACK[0x1440] + v1495 + 384));
      v1514 = vmlaq_f32(v1497, v1417, *(&STACK[0x1440] + v1495 + 176));
      v1515 = vmlaq_f32(v1501, v1422, *(&STACK[0x1440] + v1495 + 560));
      v1516 = vmlaq_f32(v1501, v1422, *(&STACK[0x1440] + v1495 + 544));
      v1517 = vmlaq_f32(v1501, v1422, *(&STACK[0x1440] + v1495 + 528));
      v1518 = vmlaq_f32(v1501, v1422, *(&STACK[0x1440] + v1495 + 576));
      v1519 = vmlaq_f32(v1502, v1424, *(&STACK[0x1440] + v1495 + 768));
      v1520 = vmlaq_f32(v1502, v1424, *(&STACK[0x1440] + v1495 + 720));
      v1521 = vmlaq_f32(v1502, v1424, *(&STACK[0x1440] + v1495 + 736));
      v1522 = vmlaq_f32(v1502, v1424, *(&STACK[0x1440] + v1495 + 752));
      v1523 = vcgtq_f32(v1426, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1513, v1513), v1507, v1507), v1518, v1518), v1519, v1519));
      v1524 = vcgtq_f32(v1426, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1512, v1512), v1508, v1508), v1517, v1517), v1520, v1520));
      v1525 = vcgtq_f32(v1426, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1511, v1511), v1509, v1509), v1516, v1516), v1521, v1521));
      v1526 = vcgtq_f32(v1426, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1510, v1510), v1514, v1514), v1515, v1515), v1522, v1522));
      v1527 = (&STACK[0x440] + v1495);
      *v1527 = v1524;
      v1527[1] = v1525;
      v1527[2] = v1526;
      v1527[3] = v1523;
      v1505 = vsubq_s32(v1505, v1526);
      v1504 = vsubq_s32(v1504, v1525);
      v1503 = vsubq_s32(v1503, v1524);
      v1506 = vsubq_s32(v1506, v1523);
      v1495 += 64;
    }

    while (v1495 != 192);
    v1528 = vaddq_s32(vaddq_s32(v1503, v1505), vaddq_s32(v1504, v1506));
    v1528.i64[0] = vpaddq_s32(v1528, v1528).u64[0];
    v1529 = vpadd_s32(*v1528.i8, *v1528.i8).u8[0];
    v1530 = v1529 + v1456;
    v1531 = vmulq_f32(v1416, vsubq_f32(*&STACK[0x370], *&STACK[0x390]));
    v1532 = vmulq_f32(v1531, v1531);
    v1532.i64[0] = vpaddq_f32(v1532, v1532).u64[0];
    if (vpadd_f32(*v1532.f32, *v1532.f32).f32[0] >= COERCE_FLOAT(*&STACK[0x380]))
    {
      v1533 = 0;
    }

    else
    {
      ++v1529;
      v1533 = -1;
    }

    if (v1529 > 1u)
    {
      v1534 = vcltzq_s32(*&STACK[0x440]);
      v1535 = vcltzq_s32(*&STACK[0x450]);
      v1536 = vcltzq_s32(*&STACK[0x460]);
      v1537 = vcltzq_s32(*&STACK[0x470]);
      v1538 = vandq_s8(v1537, *&STACK[0x1500]);
      v1539 = vandq_s8(v1536, *&STACK[0x14F0]);
      v1540 = vandq_s8(v1535, *&STACK[0x14E0]);
      v1541 = vandq_s8(v1534, *&STACK[0x14D0]);
      v1542 = vandq_s8(*&STACK[0x15C0], v1537);
      v1543 = vandq_s8(*&STACK[0x15B0], v1536);
      v1544 = vandq_s8(*&STACK[0x15A0], v1535);
      v1545 = vandq_s8(*&STACK[0x1590], v1534);
      v1546 = vandq_s8(*&STACK[0x1680], v1537);
      v1547 = vandq_s8(*&STACK[0x1670], v1536);
      v1548 = vandq_s8(*&STACK[0x1660], v1535);
      v1549 = vandq_s8(*&STACK[0x1650], v1534);
      v1550 = vandq_s8(*&STACK[0x1740], v1537);
      v1551 = vandq_s8(*&STACK[0x1730], v1536);
      v1552 = vandq_s8(*&STACK[0x1720], v1535);
      v1553 = vandq_s8(*&STACK[0x1710], v1534);
      v1554 = &STACK[0x1750];
      for (j = 1; j != 3; ++j)
      {
        v1556 = (&STACK[0x440] + 8 * j);
        v1557 = vcltzq_s32(v1556[3]);
        v1558 = vcltzq_s32(v1556[2]);
        v1559 = vcltzq_s32(v1556[1]);
        v1560 = vcltzq_s32(*v1556);
        v1538 = vaddq_f32(v1538, vandq_s8(v1557, *(v1554 - 33)));
        v1539 = vaddq_f32(v1539, vandq_s8(v1558, *(v1554 - 34)));
        v1540 = vaddq_f32(v1540, vandq_s8(v1559, *(v1554 - 35)));
        v1541 = vaddq_f32(v1541, vandq_s8(v1560, *(v1554 - 36)));
        v1542 = vaddq_f32(v1542, vandq_s8(*(v1554 - 21), v1557));
        v1543 = vaddq_f32(v1543, vandq_s8(*(v1554 - 22), v1558));
        v1544 = vaddq_f32(v1544, vandq_s8(*(v1554 - 23), v1559));
        v1545 = vaddq_f32(v1545, vandq_s8(*(v1554 - 24), v1560));
        v1546 = vaddq_f32(v1546, vandq_s8(*(v1554 - 9), v1557));
        v1547 = vaddq_f32(v1547, vandq_s8(*(v1554 - 10), v1558));
        v1548 = vaddq_f32(v1548, vandq_s8(*(v1554 - 11), v1559));
        v1549 = vaddq_f32(v1549, vandq_s8(*(v1554 - 12), v1560));
        v1562 = *(v1554 + 2);
        v1561 = *(v1554 + 3);
        v1564 = *v1554;
        v1563 = *(v1554 + 1);
        v1554 += 8;
        v1550 = vaddq_f32(v1550, vandq_s8(v1561, v1557));
        v1551 = vaddq_f32(v1551, vandq_s8(v1562, v1558));
        v1552 = vaddq_f32(v1552, vandq_s8(v1563, v1559));
        v1553 = vaddq_f32(v1553, vandq_s8(v1564, v1560));
      }

      *&STACK[0x390] = vmulq_n_f32(vaddq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1541, v1539), vaddq_f32(v1540, v1538)), vaddq_f32(vaddq_f32(v1545, v1543), vaddq_f32(v1544, v1542))), vpaddq_f32(vaddq_f32(vaddq_f32(v1549, v1547), vaddq_f32(v1548, v1546)), vaddq_f32(vaddq_f32(v1553, v1551), vaddq_f32(v1552, v1550)))), vandq_s8(vdupq_n_s32(v1533), *&STACK[0x370])), ReciprocalTable[v1529]);
    }

    STACK[0x20F0] = WeightInfoForSingleLineSingleWeight_7x7(v1530, v1407);
    if (!LOBYTE(STACK[0x14C6]))
    {
      v1275 = *&STACK[0x330];
      v1274 = *&STACK[0x390];
      goto LABEL_362;
    }

    v1275 = *&STACK[0x330];
    v1565.i32[0] = HIDWORD(*&STACK[0x330]);
    v1274 = *&STACK[0x390];
    if (LOBYTE(STACK[0x14C7]))
    {
      if (v1565.f32[0] != 0.0 && v1274.f32[3] != 0.0)
      {
        v1569 = vsubq_f32(v1274, v1275);
        v1566.i32[0] = v1569.i32[3];
        if (v1569.f32[3] == 0.0)
        {
          if (LOBYTE(STACK[0x14C6]) == 48)
          {
            v1275 = 0uLL;
            goto LABEL_362;
          }

          v1567.i64[0] = 0x3F0000003FLL;
          v1567.i64[1] = 0x3F0000003FLL;
          v1275 = vnegq_f32(v1567);
        }

        v1567.i64[0] = 0;
        v1666 = vdupq_lane_s32(*&vcgtq_f32(v1567, v1566), 0);
        v1667 = vbslq_s8(v1666, vnegq_f32(v1569), v1569);
        v1668 = vbslq_s8(v1666, v1274, v1275);
        v1568.f32[0] = v1668.f32[3] / v1667.f32[3];
        v1669 = vmlsq_lane_f32(v1668, v1667, v1568, 0);
        v1667.f32[0] = -*&STACK[0x320];
        v1568.f32[0] = *&STACK[0x320] + 1.0;
        if ((vminvq_u32(vandq_s8(vcgtq_f32(v1669, vdupq_lane_s32(*v1667.f32, 0)), vcgtq_f32(vdupq_lane_s32(v1568, 0), v1669))) & 0x80000000) != 0)
        {
          v1274 = vbslq_s8(v1666, v1275, v1274);
          v1275 = vminnmq_f32(vmaxnmq_f32(v1669, 0), *&STACK[0x310]);
        }

        else
        {
          v1670 = *(&STACK[0x1950] + STACK[0x300]);
          v1671 = *(&STACK[0x1950] + v1405);
          v1672 = v1670;
          v1672.i32[3] = 0;
          v1673 = v1671;
          v1673.i32[3] = 0;
          v1674 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v1671, v1670)), 3)), 0x1FuLL));
          v1274 = vbslq_s8(v1674, v1671, v1673);
          v1275 = vbslq_s8(v1674, v1672, v1670);
        }
      }

      goto LABEL_362;
    }

LABEL_315:
    v1570 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v1274, 3), v1565), 0);
    v1274 = vandq_s8(v1274, v1570);
    v1275 = vbicq_s8(v1275, v1570);
    goto LABEL_362;
  }

  if (LOBYTE(STACK[0x14C8]))
  {
    v1253 = WeightInfoForSingleLineSingleWeight_7x7(2, 2);
    v1254 = 0;
    STACK[0x20F0] = v1253;
    v1255.i64[0] = 0x7F0000007FLL;
    v1255.i64[1] = 0x7F0000007FLL;
    v1256 = vnegq_f32(v1255);
    v1257 = v1256;
    v1258 = v1256;
    v1259 = v1256;
    v1260.i64[0] = 0x7F0000007FLL;
    v1260.i64[1] = 0x7F0000007FLL;
    v1261.i64[0] = 0x7F0000007FLL;
    v1261.i64[1] = 0x7F0000007FLL;
    v1262.i64[0] = 0x7F0000007FLL;
    v1262.i64[1] = 0x7F0000007FLL;
    do
    {
      v1264 = *(&STACK[0x17D0] + v1254 + 32);
      v1263 = *(&STACK[0x17D0] + v1254 + 48);
      v1266 = *(&STACK[0x17D0] + v1254);
      v1265 = *(&STACK[0x17D0] + v1254 + 16);
      v1256 = vminnmq_f32(v1266, v1256);
      v1257 = vminnmq_f32(v1265, v1257);
      v1258 = vminnmq_f32(v1264, v1258);
      v1259 = vminnmq_f32(v1263, v1259);
      v1255 = vmaxnmq_f32(v1266, v1255);
      v1260 = vmaxnmq_f32(v1265, v1260);
      v1261 = vmaxnmq_f32(v1264, v1261);
      v1262 = vmaxnmq_f32(v1263, v1262);
      v1254 += 64;
    }

    while (v1254 != 192);
    v1267 = vminnmq_f32(vminnmq_f32(v1256, v1258), vminnmq_f32(v1257, v1259));
    v1268 = vmaxnmq_f32(vmaxnmq_f32(v1255, v1261), vmaxnmq_f32(v1260, v1262));
    v1269 = vminnmq_f32(v1267, vextq_s8(v1267, v1267, 8uLL));
    v1270 = vmaxnmq_f32(v1268, vextq_s8(v1268, v1268, 8uLL));
    v1271 = vdupq_lane_s32(STACK[0x1C70], 0);
    v1272 = vminnmq_f32(vminnmq_f32(v1269, vrev64q_s32(v1269)), v1271);
    v1273 = vmaxnmq_f32(vmaxnmq_f32(v1270, vrev64q_s32(v1270)), v1271);
    v1272.i32[3] = 0;
    v1273.i32[3] = 0;
    v1274 = vorrq_s8(v1273, xmmword_298492170);
    v1275 = vorrq_s8(v1272, xmmword_298492170);
    goto LABEL_362;
  }

  if (STACK[0x1460])
  {
    v1352 = *STACK[0x1460];
    v1352.i32[3] = 0;
  }

  else
  {
    v1352 = xmmword_2984959B0;
  }

  v1571 = vmulq_f32(v1222, v1352);
  *v1571.i8 = vadd_f32(*v1571.i8, *&vextq_s8(v1571, v1571, 8uLL));
  v1221.f32[0] = vaddv_f32(*v1571.i8);
  v1572 = vdupq_lane_s32(vadd_f32(*v1571.i8, vdup_lane_s32(*v1571.i8, 1)), 0);
  v1573 = v1222.f32[3];
  v1574 = vdupq_laneq_s32(v1222, 3);
  v1575 = xmmword_298495630;
  v1576 = xmmword_298495610;
  v1577 = xmmword_298495620;
  v1578.i64[0] = -1;
  v1578.i64[1] = -1;
  v1579.i64[0] = 0x7F0000007FLL;
  v1579.i64[1] = 0x7F0000007FLL;
  v1580.i64[0] = 0x1000000010;
  v1580.i64[1] = 0x1000000010;
  v1581.i64[0] = 0x7F0000007FLL;
  v1581.i64[1] = 0x7F0000007FLL;
  v1582 = xmmword_298495600;
  v1583 = &STACK[0x1890];
  v1584 = 3;
  v1585 = &STACK[0x1890];
  v1586.i64[0] = 0x7F0000007FLL;
  v1586.i64[1] = 0x7F0000007FLL;
  v1587.i64[0] = 0x7F0000007FLL;
  v1587.i64[1] = 0x7F0000007FLL;
  v1588.i64[0] = 0x7F0000007FLL;
  v1588.i64[1] = 0x7F0000007FLL;
  v1589.i64[0] = -1;
  v1589.i64[1] = -1;
  v1590.i64[0] = -1;
  v1590.i64[1] = -1;
  v1591.i64[0] = -1;
  v1591.i64[1] = -1;
  do
  {
    v1592 = vsubq_f32(v1585[-9], v1572);
    v1593 = vsubq_f32(v1585[-12], v1572);
    v1594 = vsubq_f32(v1585[-11], v1572);
    v1595 = vsubq_f32(v1585[-10], v1572);
    v1596 = vsubq_f32(v1585[-22], v1574);
    v1597 = vsubq_f32(v1585[-23], v1574);
    v1598 = vsubq_f32(v1585[-24], v1574);
    v1599 = vsubq_f32(v1585[-21], v1574);
    v1600 = vmlaq_f32(vmulq_f32(v1596, v1596), v1595, v1595);
    v1601 = vmlaq_f32(vmulq_f32(v1597, v1597), v1594, v1594);
    v1602 = vmlaq_f32(vmulq_f32(v1598, v1598), v1593, v1593);
    v1603 = vmlaq_f32(vmulq_f32(v1599, v1599), v1592, v1592);
    if (LOBYTE(STACK[0x14C7]))
    {
      v1600 = vbslq_s8(vcltzq_s32(v1585[2]), v1579, v1600);
      v1601 = vbslq_s8(vcltzq_s32(v1585[1]), v1579, v1601);
      v1602 = vbslq_s8(vcltzq_s32(*v1585), v1579, v1602);
      v1603 = vbslq_s8(vcltzq_s32(v1585[3]), v1579, v1603);
    }

    v1578 = vbslq_s8(vcgtq_f32(v1602, v1581), v1582, v1578);
    v1589 = vbslq_s8(vcgtq_f32(v1601, v1586), v1577, v1589);
    v1590 = vbslq_s8(vcgtq_f32(v1600, v1587), v1576, v1590);
    v1591 = vbslq_s8(vcgtq_f32(v1603, v1588), v1575, v1591);
    v1581 = vmaxnmq_f32(v1581, v1602);
    v1586 = vmaxnmq_f32(v1586, v1601);
    v1587 = vmaxnmq_f32(v1587, v1600);
    v1588 = vmaxnmq_f32(v1588, v1603);
    v1582 = vaddq_s32(v1582, v1580);
    v1577 = vaddq_s32(v1577, v1580);
    v1576 = vaddq_s32(v1576, v1580);
    v1585 += 4;
    v1575 = vaddq_s32(v1575, v1580);
    --v1584;
  }

  while (v1584);
  v1604 = vmaxnmq_f32(v1581, v1587);
  v1605 = vmaxnmq_f32(v1586, v1588);
  v1606 = vcgtq_f32(v1604, v1605);
  v1607 = vmaxnmq_f32(v1604, v1605);
  v1608 = vbslq_s8(v1606, vbslq_s8(vcgtq_f32(v1581, v1587), v1578, v1590), vbslq_s8(vcgtq_f32(v1586, v1588), v1589, v1591));
  v1609 = vextq_s8(v1607, v1607, 8uLL);
  v1612 = vbslq_s8(vcgtq_f32(v1607, v1609), v1608, vextq_s8(v1608, v1608, 8uLL));
  v1610 = vmaxnmq_f32(v1607, v1609);
  v1611 = vbslq_s8(vcgtq_f32(v1610, vrev64q_s32(v1610)), v1612, vdupq_lane_s32(*v1612.i8, 1)).u32[0];
  v1612.i32[0] = *(&STACK[0x17D0] + v1611);
  v1613 = vdupq_lane_s32(*v1612.i8, 0);
  v1613.i32[3] = *(&STACK[0x1710] + v1611);
  v1614 = *&STACK[0x1C60];
  LODWORD(v1615) = HIDWORD(*&STACK[0x1C60]);
  v1616 = v1615 <= 0.0 && v1224 == 0;
  v1617 = !v1616;
  if (v1616)
  {
    v1619 = v1573;
  }

  else
  {
    v1618 = v1615 != 0.0 || v1224 == 0;
    v1619 = v1573;
    v1620 = ((*(&STACK[0x1710] + v1611) - v1573) * (*(&STACK[0x1710] + v1611) - v1573)) + ((*v1612.i32 - v1221.f32[0]) * (*v1612.i32 - v1221.f32[0]));
    v1612.i32[0] = STACK[0x1C70];
    v1621 = ((v1615 - v1573) * (v1615 - v1573)) + ((*v1612.i32 - v1221.f32[0]) * (*v1612.i32 - v1221.f32[0]));
    if (!v1618)
    {
      v1621 = 0.0;
    }

    if (v1621 > v1620)
    {
      v1613 = vdupq_lane_s32(*v1612.i8, 0);
      v1613.i32[3] = HIDWORD(*&STACK[0x1C60]);
    }
  }

  v1622 = v1611;
  v1221.f32[0] = v1221.f32[0] - *v1613.i32;
  v1623 = vdupq_lane_s32(*v1613.i8, 0);
  v1624 = vdupq_laneq_s32(v1613, 3);
  v1625 = v1619 - *&v1613.i32[3];
  v1626 = vdupq_lane_s32(*v1221.f32, 0);
  v1627 = xmmword_298495630;
  v1628 = xmmword_298495610;
  v1629 = xmmword_298495620;
  v1630.i64[0] = -1;
  v1630.i64[1] = -1;
  v1631.i64[0] = 0x7F0000007FLL;
  v1631.i64[1] = 0x7F0000007FLL;
  v1632.i64[0] = 0x1000000010;
  v1632.i64[1] = 0x1000000010;
  v1633.i64[0] = 0x7F0000007FLL;
  v1633.i64[1] = 0x7F0000007FLL;
  v1634 = xmmword_298495600;
  v1635 = 3;
  v1636.i64[0] = 0x7F0000007FLL;
  v1636.i64[1] = 0x7F0000007FLL;
  v1637.i64[0] = 0x7F0000007FLL;
  v1637.i64[1] = 0x7F0000007FLL;
  v1638.i64[0] = 0x7F0000007FLL;
  v1638.i64[1] = 0x7F0000007FLL;
  v1639.i64[0] = -1;
  v1639.i64[1] = -1;
  v1640.i64[0] = -1;
  v1640.i64[1] = -1;
  v1641.i64[0] = -1;
  v1641.i64[1] = -1;
  do
  {
    v1642 = vmlaq_f32(vmulq_n_f32(vsubq_f32(v1583[-22], v1624), v1625), v1626, vsubq_f32(v1583[-10], v1623));
    v1643 = vmlaq_f32(vmulq_n_f32(vsubq_f32(v1583[-23], v1624), v1625), v1626, vsubq_f32(v1583[-11], v1623));
    v1644 = vmlaq_f32(vmulq_n_f32(vsubq_f32(v1583[-24], v1624), v1625), v1626, vsubq_f32(v1583[-12], v1623));
    v1645 = vmlaq_f32(vmulq_n_f32(vsubq_f32(v1583[-21], v1624), v1625), v1626, vsubq_f32(v1583[-9], v1623));
    if (LOBYTE(STACK[0x14C7]))
    {
      v1642 = vbslq_s8(vcltzq_s32(v1583[2]), v1631, v1642);
      v1643 = vbslq_s8(vcltzq_s32(v1583[1]), v1631, v1643);
      v1644 = vbslq_s8(vcltzq_s32(*v1583), v1631, v1644);
      v1645 = vbslq_s8(vcltzq_s32(v1583[3]), v1631, v1645);
    }

    v1630 = vbslq_s8(vcgtq_f32(v1644, v1633), v1634, v1630);
    v1639 = vbslq_s8(vcgtq_f32(v1643, v1636), v1629, v1639);
    v1640 = vbslq_s8(vcgtq_f32(v1642, v1637), v1628, v1640);
    v1641 = vbslq_s8(vcgtq_f32(v1645, v1638), v1627, v1641);
    v1633 = vmaxnmq_f32(v1633, v1644);
    v1636 = vmaxnmq_f32(v1636, v1643);
    v1637 = vmaxnmq_f32(v1637, v1642);
    v1638 = vmaxnmq_f32(v1638, v1645);
    v1634 = vaddq_s32(v1634, v1632);
    v1629 = vaddq_s32(v1629, v1632);
    v1628 = vaddq_s32(v1628, v1632);
    v1583 += 4;
    v1627 = vaddq_s32(v1627, v1632);
    --v1635;
  }

  while (v1635);
  v1646 = vmaxnmq_f32(v1633, v1637);
  v1647 = vmaxnmq_f32(v1636, v1638);
  v1648 = vbslq_s8(vcgtq_f32(v1633, v1637), v1630, v1640);
  v1649 = vcgtq_f32(v1646, v1647);
  v1650 = vmaxnmq_f32(v1646, v1647);
  v1651 = vbslq_s8(v1649, v1648, vbslq_s8(vcgtq_f32(v1636, v1638), v1639, v1641));
  v1652 = vextq_s8(v1650, v1650, 8uLL);
  v1653 = vbslq_s8(vcgtq_f32(v1650, v1652), v1651, vextq_s8(v1651, v1651, 8uLL));
  v1654 = vmaxnmq_f32(v1650, v1652);
  v1656 = vbslq_s8(vcgtq_f32(v1654, vrev64q_s32(v1654)), v1653, vdupq_lane_s32(*v1653.i8, 1));
  *&STACK[0x380] = v1656;
  v1655 = v1656.i32[0];
  v1656.i32[0] = *(&STACK[0x17D0] + v1656.i32[0]);
  v1658 = vdupq_lane_s32(*v1656.i8, 0);
  v1657 = *(&STACK[0x1710] + v1655);
  *&v1658.i32[3] = v1657;
  *&STACK[0x330] = v1613;
  if (v1617)
  {
    v1659 = v1615 != 0.0 || v1224 == 0;
    v1660 = (v1625 * (v1657 - *&v1613.i32[3])) + ((*v1656.i32 - *v1613.i32) * v1221.f32[0]);
    v1661 = ((v1615 - *&v1613.i32[3]) * (v1615 - *&v1613.i32[3])) + ((*&STACK[0x1C70] - *v1613.i32) * (*&STACK[0x1C70] - *v1613.i32));
    if (!v1659)
    {
      v1661 = 0.0;
    }

    if (v1661 > v1660)
    {
      v1221.i32[0] = STACK[0x1C70];
      v1658 = vdupq_lane_s32(*v1221.f32, 0);
      v1658.i32[3] = HIDWORD(v1614);
    }
  }

  *&STACK[0x390] = v1658;
  STACK[0x20F0] = WeightInfoForSingleLineSingleWeight_7x7(2, 4);
  if (!LOBYTE(STACK[0x14C6]))
  {
    v1275 = *&STACK[0x330];
    v1274 = *&STACK[0x390];
    goto LABEL_362;
  }

  v1275 = *&STACK[0x330];
  v1565.i32[0] = HIDWORD(*&STACK[0x330]);
  v1274 = *&STACK[0x390];
  if (!LOBYTE(STACK[0x14C7]))
  {
    goto LABEL_315;
  }

  if (v1565.f32[0] != 0.0 && v1274.f32[3] != 0.0)
  {
    v1665 = vsubq_f32(v1274, v1275);
    v1662.i32[0] = v1665.i32[3];
    if (v1665.f32[3] == 0.0)
    {
      if (LOBYTE(STACK[0x14C6]) == 48)
      {
        v1275 = 0uLL;
        goto LABEL_362;
      }

      v1663.i64[0] = 0x3F0000003FLL;
      v1663.i64[1] = 0x3F0000003FLL;
      v1275 = vnegq_f32(v1663);
    }

    v1663.i64[0] = 0;
    v2713 = vdupq_lane_s32(*&vcgtq_f32(v1663, v1662), 0);
    v2714 = vbslq_s8(v2713, vnegq_f32(v1665), v1665);
    v2715 = vbslq_s8(v2713, v1274, v1275);
    v1664.f32[0] = v2715.f32[3] / v2714.f32[3];
    v2716 = vmlsq_lane_f32(v2715, v2714, v1664, 0);
    if ((vminvq_u32(vandq_s8(vcgtq_f32(v2716, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v2716))) & 0x80000000) != 0)
    {
      v1274 = vbslq_s8(v2713, v1275, v1274);
      __asm { FMOV            V1.4S, #1.0 }

      v1275 = vminnmq_f32(vmaxnmq_f32(v2716, 0), _Q1);
    }

    else
    {
      v2717 = *&STACK[0x380];
      v2718 = &STACK[0x17D0] + v1622;
      v1275 = vld1q_dup_f32(v2718);
      v1275.i32[3] = *(&STACK[0x1710] + v1622);
      v2719 = &STACK[0x17D0] + v2717;
      v1274 = vld1q_dup_f32(v2719);
      v1274.i32[3] = *(&STACK[0x1710] + v2717);
    }
  }

LABEL_362:
  *&STACK[0x2210] = 0u;
  *&STACK[0x2200] = 0u;
  *&STACK[0x21F0] = 0u;
  v1675 = STACK[0x1460];
  *&STACK[0x450] = v1274;
  *&STACK[0x440] = v1275;
  FindColorVectors(&STACK[0x440], v1675, 1, 375, &STACK[0x20F0], &STACK[0x21F0]);
  v1676 = STACK[0x20F0];
  v1677 = (STACK[0x20F0] >> 13) & 0xF;
  v1678 = STACK[0x20F0] >> 27;
  v1679 = *&STACK[0x2200];
  v1680.i32[0] = HIDWORD(*&STACK[0x2200]);
  v1681 = 0.0;
  if (fabsf(*v1680.i32) >= 0.0039062)
  {
    v1681 = vrecpes_f32(*v1680.i32);
  }

  v1682 = STACK[0x2210];
  if (v1677 > 5)
  {
    if (STACK[0x1460])
    {
      v4090 = STACK[0x2210];
      v1698 = 0;
      _Q5 = vandq_s8(vcgezq_s32(gNormalMasks[(v1676 >> 13) & 0xF]), *STACK[0x1460]);
      v1700 = vdupq_lane_s32(STACK[0x21F0], 0);
      v1701 = vdupq_lane_s32(STACK[0x21F0], 1);
      v1702 = vdupq_laneq_s32(*&STACK[0x21F0], 2);
      v4082 = *&STACK[0x21F0];
      v4086 = *&STACK[0x2200];
      v1703 = vdupq_laneq_s32(*&STACK[0x21F0], 3);
      v1704 = vmulq_f32(v1679, _Q5);
      v1705 = vmulq_f32(v1679, v1704);
      v1706 = vaddv_f32(vadd_f32(*v1705.i8, *&vextq_s8(v1705, v1705, 8uLL)));
      v1707 = fabsf(v1706);
      v1708 = vdupq_lane_s32(*v1704.f32, 0);
      v1709 = vdupq_laneq_s32(v1704, 2);
      v1710 = vdupq_laneq_s32(v1704, 3);
      v1711 = SLOBYTE(STACK[0x14C6]);
      do
      {
        v1712 = (&STACK[0x1440] + v1698);
        v1713 = vsubq_f32(*(&STACK[0x1440] + v1698 + 176), v1700);
        v1714 = vsubq_f32(*(&STACK[0x1440] + v1698 + 160), v1700);
        v1715 = vsubq_f32(*(&STACK[0x1440] + v1698 + 144), v1700);
        v1716 = vsubq_f32(*(&STACK[0x1440] + v1698 + 192), v1700);
        v1717 = vsubq_f32(*(&STACK[0x1440] + v1698 + 368), v1701);
        v1718 = vsubq_f32(*(&STACK[0x1440] + v1698 + 352), v1701);
        v1719 = vsubq_f32(*(&STACK[0x1440] + v1698 + 336), v1701);
        v1720 = vsubq_f32(*(&STACK[0x1440] + v1698 + 384), v1701);
        v1721 = vsubq_f32(*(&STACK[0x1440] + v1698 + 560), v1702);
        v1722 = vsubq_f32(*(&STACK[0x1440] + v1698 + 544), v1702);
        v1723 = vsubq_f32(*(&STACK[0x1440] + v1698 + 528), v1702);
        v1724 = vsubq_f32(*(&STACK[0x1440] + v1698 + 576), v1702);
        v1725 = vsubq_f32(*(&STACK[0x1440] + v1698 + 752), v1703);
        v1726 = vsubq_f32(*(&STACK[0x1440] + v1698 + 736), v1703);
        v1727 = vsubq_f32(*(&STACK[0x1440] + v1698 + 720), v1703);
        v1728 = vsubq_f32(*(&STACK[0x1440] + v1698 + 768), v1703);
        v1729 = vrecpes_f32(v1706);
        if (v1707 < 0.000015259)
        {
          v1729 = 0.0;
        }

        v1730 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v1718, *v1704.f32, 1), v1708, v1714), v1709, v1722), v1710, v1726);
        v1731 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v1720, *v1704.f32, 1), v1708, v1716), v1709, v1724), v1710, v1728);
        v1732 = vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v1717, *v1704.f32, 1), v1708, v1713), v1709, v1721), v1710, v1725), v1729);
        __asm { FMOV            V31.4S, #1.0 }

        v1734 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v1719, *v1704.f32, 1), v1708, v1715), v1709, v1723), v1710, v1727), v1729), _Q31), 0);
        v1735 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v1730, v1729), _Q31), 0);
        v1736 = vmaxnmq_f32(vminnmq_f32(v1732, _Q31), 0);
        v1737 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(v1731, v1729), _Q31), 0);
        if (v1711 >= 1)
        {
          v1736 = vbslq_s8(vcltzq_s32(v1712[71]), vmulq_n_f32(v1725, v1681), v1736);
          v1735 = vbslq_s8(vcltzq_s32(v1712[70]), vmulq_n_f32(v1726, v1681), v1735);
          v1734 = vbslq_s8(vcltzq_s32(v1712[69]), vmulq_n_f32(v1727, v1681), v1734);
          v1737 = vbslq_s8(vcltzq_s32(v1712[72]), vmulq_n_f32(v1728, v1681), v1737);
        }

        v1738 = (&STACK[0x22F0] + v1698);
        *v1738 = v1734;
        v1738[1] = v1735;
        v1738[2] = v1736;
        v1738[3] = v1737;
        v1698 += 64;
      }

      while (v1698 != 192);
      v1685 = v4082;
      _Q2 = vsubq_f32(*&STACK[0x1C60], v4082);
      _S7 = _Q2.i32[2];
      v1741 = vaddv_f32(vadd_f32(*v1704.f32, *&vextq_s8(v1704, v1704, 8uLL)));
      if (fabsf(v1741) >= 0.0039062)
      {
        v1680.i32[0] = _Q5.i32[3];
        v1682 = v4090;
        v1679 = v4086;
      }

      else
      {
        v1679 = v4086;
        _Q5 = vmulq_f32(v1679, v1679);
        v1741 = vaddv_f32(vadd_f32(*_Q5.f32, *&vextq_s8(_Q5, _Q5, 8uLL)));
        _Q5.i32[2] = v4086.i32[2];
        v1682 = v4090;
      }

      __asm { FMLA            S2, S7, V5.S[2] }

      v1803 = fminf(vrecpes_f32(v1741) * (_Q2.f32[0] + (_Q2.f32[3] * *v1680.i32)), 1.0);
      v1680.i64[0] = 0;
      _Q2.f32[0] = fmaxf(v1803, 0.0);
      if (fabsf(COERCE_FLOAT(HIDWORD(*&STACK[0x1C60]))) >= 0.0039216)
      {
        v1804 = _Q2.f32[0];
      }

      else
      {
        v1804 = v1681 * _Q2.f32[3];
      }

      *&STACK[0x23B0] = v1804;
      v1692 = v1678;
      if (v1678)
      {
        *v1680.i32 = vrecpes_f32(v1692);
      }

      for (k = 0; k != 192; k += 64)
      {
        v1806 = (&STACK[0x22F0] + k);
        v1807 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + k + 48), v1692)), *v1680.i32);
        v1808 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + k + 16), v1692)), *v1680.i32);
        v1809 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + k + 32), v1692)), *v1680.i32);
        *v1806 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + k), v1692)), *v1680.i32);
        v1806[1] = v1808;
        v1806[2] = v1809;
        v1806[3] = v1807;
      }
    }

    else
    {
      v1766 = 0;
      v1685 = *&STACK[0x21F0];
      v1767 = vdupq_lane_s32(STACK[0x21F0], 0);
      v1768 = vdupq_lane_s32(STACK[0x21F0], 1);
      v1769 = vdupq_laneq_s32(*&STACK[0x21F0], 2);
      v1770 = vdupq_laneq_s32(*&STACK[0x21F0], 3);
      v1771 = vmulq_f32(v1679, v1679);
      v1772 = vrecpes_f32(vaddv_f32(vadd_f32(*v1771.i8, *&vextq_s8(v1771, v1771, 8uLL))));
      v1773 = vdupq_lane_s32(*v1679.f32, 0);
      v1774 = vdupq_laneq_s32(v1679, 2);
      v1775 = vdupq_laneq_s32(v1679, 3);
      v1776 = SLOBYTE(STACK[0x14C6]);
      do
      {
        v1777 = (&STACK[0x1440] + v1766);
        v1778 = vsubq_f32(*(&STACK[0x1440] + v1766 + 768), v1770);
        v1779 = vsubq_f32(*(&STACK[0x1440] + v1766 + 752), v1770);
        v1780 = vsubq_f32(*(&STACK[0x1440] + v1766 + 736), v1770);
        v1781 = vsubq_f32(*(&STACK[0x1440] + v1766 + 720), v1770);
        __asm { FMOV            V26.4S, #1.0 }

        v1783 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1766 + 336), v1768), *v1679.f32, 1), v1773, vsubq_f32(*(&STACK[0x1440] + v1766 + 144), v1767)), v1774, vsubq_f32(*(&STACK[0x1440] + v1766 + 528), v1769)), v1775, v1781), v1772), _Q26), 0);
        v1784 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1766 + 352), v1768), *v1679.f32, 1), v1773, vsubq_f32(*(&STACK[0x1440] + v1766 + 160), v1767)), v1774, vsubq_f32(*(&STACK[0x1440] + v1766 + 544), v1769)), v1775, v1780), v1772), _Q26), 0);
        v1785 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1766 + 368), v1768), *v1679.f32, 1), v1773, vsubq_f32(*(&STACK[0x1440] + v1766 + 176), v1767)), v1774, vsubq_f32(*(&STACK[0x1440] + v1766 + 560), v1769)), v1775, v1779), v1772), _Q26), 0);
        v1786 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v1766 + 384), v1768), *v1679.f32, 1), v1773, vsubq_f32(*(&STACK[0x1440] + v1766 + 192), v1767)), v1774, vsubq_f32(*(&STACK[0x1440] + v1766 + 576), v1769)), v1775, v1778), v1772), _Q26), 0);
        if (v1776 >= 1)
        {
          v1787 = v1777[71];
          v1788 = v1777[69];
          v1789 = v1777[72];
          v1790 = v1777[70];
          if ((vmaxvq_u32(vorrq_s8(vorrq_s8(v1788, v1787), vorrq_s8(v1790, v1789))) & 0x80000000) != 0)
          {
            v1783 = vbslq_s8(vcltzq_s32(v1788), vmulq_n_f32(v1781, v1681), v1783);
            v1784 = vbslq_s8(vcltzq_s32(v1790), vmulq_n_f32(v1780, v1681), v1784);
            v1785 = vbslq_s8(vcltzq_s32(v1787), vmulq_n_f32(v1779, v1681), v1785);
            v1786 = vbslq_s8(vcltzq_s32(v1789), vmulq_n_f32(v1778, v1681), v1786);
          }
        }

        v1791 = (&STACK[0x22F0] + v1766);
        *v1791 = v1783;
        v1791[1] = v1784;
        v1791[2] = v1785;
        v1791[3] = v1786;
        v1766 += 64;
      }

      while (v1766 != 192);
      v1792 = 0;
      v1793 = vsubq_f32(*&STACK[0x1C60], v1685);
      v1794 = vmulq_f32(v1679, v1793);
      *v1794.i32 = fminf(v1772 * vaddv_f32(vadd_f32(*v1794.i8, *&vextq_s8(v1794, v1794, 8uLL))), 1.0);
      v1680.i64[0] = 0;
      v1795 = fmaxf(*v1794.i32, 0.0);
      v1796 = vmuls_lane_f32(v1681, v1793, 3);
      if (fabsf(COERCE_FLOAT(HIDWORD(*&STACK[0x1C60]))) >= 0.0039216)
      {
        v1797 = v1795;
      }

      else
      {
        v1797 = v1796;
      }

      *&STACK[0x23B0] = v1797;
      v1692 = v1678;
      v1798 = vrecpes_f32(v1678);
      if (v1678)
      {
        *v1680.i32 = v1798;
      }

      do
      {
        v1799 = (&STACK[0x22F0] + v1792);
        v1800 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1792 + 48), v1692)), *v1680.i32);
        v1801 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1792 + 16), v1692)), *v1680.i32);
        v1802 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1792 + 32), v1692)), *v1680.i32);
        *v1799 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1792), v1692)), *v1680.i32);
        v1799[1] = v1801;
        v1799[2] = v1802;
        v1799[3] = v1800;
        v1792 += 64;
      }

      while (v1792 != 192);
    }
  }

  else if (v1677 > 3)
  {
    v1742 = 0;
    v1743 = &STACK[0x1890];
    v1744 = (*v1680.i32 * *v1680.i32) + (v1679.f32[0] * v1679.f32[0]);
    _NF = fabsf(v1744) < 0.000015259;
    v1745 = vrecpes_f32(v1744);
    v1685 = *&STACK[0x21F0];
    v1746 = vdupq_lane_s32(STACK[0x21F0], 0);
    v1747 = vdupq_laneq_s32(*&STACK[0x21F0], 3);
    if (_NF)
    {
      v1745 = 0.0;
    }

    v1748 = vdupq_lane_s32(*v1679.f32, 0);
    v1749 = SLOBYTE(STACK[0x14C6]);
    do
    {
      v1750 = vsubq_f32(v1743[-21], v1747);
      v1751 = vsubq_f32(v1743[-24], v1747);
      v1752 = vsubq_f32(v1743[-23], v1747);
      v1753 = vsubq_f32(v1743[-22], v1747);
      v1754 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v1753, v1679, 3), v1748, vsubq_f32(v1743[-10], v1746)), v1745);
      v1755 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v1752, v1679, 3), v1748, vsubq_f32(v1743[-11], v1746)), v1745);
      v1756 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v1751, v1679, 3), v1748, vsubq_f32(v1743[-12], v1746)), v1745);
      v1757 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v1750, v1679, 3), v1748, vsubq_f32(v1743[-9], v1746)), v1745);
      if (v1749 >= 1)
      {
        v1755 = vbslq_s8(vcltzq_s32(v1743[1]), vmulq_n_f32(v1752, v1681), v1755);
        v1756 = vbslq_s8(vcltzq_s32(*v1743), vmulq_n_f32(v1751, v1681), v1756);
        v1754 = vbslq_s8(vcltzq_s32(v1743[2]), vmulq_n_f32(v1753, v1681), v1754);
        v1757 = vbslq_s8(vcltzq_s32(v1743[3]), vmulq_n_f32(v1750, v1681), v1757);
      }

      __asm { FMOV            V19.4S, #1.0 }

      v1759 = (&STACK[0x22F0] + v1742);
      *v1759 = vminnmq_f32(vmaxnmq_f32(v1756, 0), _Q19);
      v1759[1] = vminnmq_f32(vmaxnmq_f32(v1755, 0), _Q19);
      v1759[2] = vminnmq_f32(vmaxnmq_f32(v1754, 0), _Q19);
      v1759[3] = vminnmq_f32(vmaxnmq_f32(v1757, 0), _Q19);
      v1743 += 4;
      v1742 += 64;
    }

    while (v1742 != 192);
    v1760 = 0;
    *&STACK[0x23B0] = fminf(fmaxf(v1745 * ((*v1680.i32 * (*&STACK[0x1C6C] - v1685.f32[3])) + ((*&STACK[0x1C70] - v1685.f32[0]) * v1679.f32[0])), 0.0), 1.0);
    v1692 = v1678;
    v1761 = vrecpes_f32(v1678);
    if (v1678)
    {
      *v1680.i32 = v1761;
    }

    else
    {
      *v1680.i32 = 0.0;
    }

    do
    {
      v1762 = (&STACK[0x22F0] + v1760);
      v1763 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1760 + 48), v1692)), *v1680.i32);
      v1764 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1760 + 16), v1692)), *v1680.i32);
      v1765 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1760 + 32), v1692)), *v1680.i32);
      *v1762 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1760), v1692)), *v1680.i32);
      v1762[1] = v1764;
      v1762[2] = v1765;
      v1762[3] = v1763;
      v1760 += 64;
    }

    while (v1760 != 192);
  }

  else
  {
    v1683 = 0;
    v1684 = vrecpes_f32(v1679.f32[0]);
    if (fabsf(v1679.f32[0]) < 0.000015259)
    {
      v1684 = 0.0;
    }

    v1685 = *&STACK[0x21F0];
    v1686 = vdupq_lane_s32(STACK[0x21F0], 0);
    __asm { FMOV            V3.4S, #1.0 }

    do
    {
      v1688 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x17D0] + v1683 + 16), v1686), v1684), 0), _Q3);
      v1689 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x17D0] + v1683 + 32), v1686), v1684), 0), _Q3);
      v1680 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x17D0] + v1683 + 48), v1686), v1684), 0), _Q3);
      v1690 = (&STACK[0x22F0] + v1683);
      *v1690 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x17D0] + v1683), v1686), v1684), 0), _Q3);
      v1690[1] = v1688;
      v1690[2] = v1689;
      v1690[3] = v1680;
      v1683 += 64;
    }

    while (v1683 != 192);
    v1691 = 0;
    *&STACK[0x23B0] = fminf(fmaxf(v1684 * (*&STACK[0x1C70] - v1685.f32[0]), 0.0), 1.0);
    v1692 = v1678;
    v1693 = vrecpes_f32(v1678);
    if (v1678)
    {
      *v1680.i32 = v1693;
    }

    else
    {
      *v1680.i32 = 0.0;
    }

    do
    {
      v1694 = (&STACK[0x22F0] + v1691);
      v1695 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1691 + 48), v1692)), *v1680.i32);
      v1696 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1691 + 16), v1692)), *v1680.i32);
      v1697 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1691 + 32), v1692)), *v1680.i32);
      *v1694 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v1691), v1692)), *v1680.i32);
      v1694[1] = v1696;
      v1694[2] = v1697;
      v1694[3] = v1695;
      v1691 += 64;
    }

    while (v1691 != 192);
  }

  v1810 = *v1680.i32 * rintf(v1692 * *&STACK[0x23B0]);
  *&STACK[0x23B0] = v1810;
  v1811 = &STACK[0x1440];
  do
  {
    v1812 = v1811;
    v1811 = v1811[5];
  }

  while (v1811);
  if (STACK[0x1460])
  {
    _Q0 = vmulq_f32(*STACK[0x1460], *&STACK[0x3A0]);
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }
  }

  v1814 = *(v1812 + 66);
  if (v1814 == 392)
  {
    v4094 = _Q0;
    v1874 = 0;
    v1680.i32[0] = 0;
    v1875 = *&STACK[0x2300];
    v1876 = *&STACK[0x22F0];
    v1877 = *&STACK[0x231C];
    v1878 = *&STACK[0x230C];
    v1879 = *&STACK[0x2338];
    v1880 = *&STACK[0x2328];
    v1881 = *&STACK[0x2354];
    v1882 = *&STACK[0x2344];
    v1883 = vzip1q_s32(*&STACK[0x22F0], vuzp1q_s32(v1876, v1876));
    v1884 = vextq_s8(*&STACK[0x22F0], *&STACK[0x2300], 0xCuLL);
    v1875.i32[3] = STACK[0x2308];
    v1876.i32[0] = HIDWORD(STACK[0x22F0]);
    v1885 = vmlaq_f32(vmulq_f32(v1875, xmmword_298495EF0), xmmword_298495F00, v1884);
    v1886 = vmlaq_f32(vmulq_f32(v1875, xmmword_298495F30), xmmword_298495F40, v1884);
    v1887 = vextq_s8(*&STACK[0x230C], *&STACK[0x231C], 0xCuLL);
    v1888 = vzip1q_s32(*&STACK[0x230C], vuzp1q_s32(v1878, v1878));
    v1878.i32[0] = HIDWORD(STACK[0x230C]);
    v1877.i32[3] = STACK[0x2324];
    v1889 = vmlaq_f32(vmlaq_f32(v1886, xmmword_298495F70, v1887), xmmword_298495F80, v1877);
    v1890 = vmlaq_f32(vmulq_f32(v1877, xmmword_298495FB0), xmmword_298495FC0, v1887);
    v1891 = *&STACK[0x2370];
    v1892 = *&STACK[0x2360];
    v1893 = vextq_s8(*&STACK[0x2328], *&STACK[0x2338], 0xCuLL);
    v1894 = vzip1q_s32(*&STACK[0x2328], vuzp1q_s32(v1880, v1880));
    v1880.i32[0] = HIDWORD(STACK[0x2328]);
    v1879.i32[3] = STACK[0x2340];
    v1895 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1878, xmmword_298495FA0), xmmword_298495FD0, v1888), xmmword_298495FE0, v1894), xmmword_298496010, v1880);
    v1896 = vextq_s8(*&STACK[0x2344], *&STACK[0x2354], 0xCuLL);
    v1881.i32[3] = STACK[0x235C];
    v1897 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1879, xmmword_298496030), xmmword_298496040, v1893), xmmword_298496070, v1896), xmmword_298496080, v1881);
    v1898 = vmlaq_f32(vmulq_f32(v1880, xmmword_298496020), xmmword_298496050, v1894);
    v1899 = vzip1q_s32(*&STACK[0x2344], vuzp1q_s32(v1882, v1882));
    v1882.i32[0] = HIDWORD(STACK[0x2344]);
    v1900 = vmlaq_f32(vmlaq_f32(v1898, xmmword_298496060, v1899), xmmword_298496090, v1882);
    v1901 = vmlaq_f32(vmulq_f32(v1876, xmmword_298495EE0), xmmword_298495F10, v1883);
    v1902 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1876, xmmword_298495F20), xmmword_298495F50, v1883), xmmword_298495F60, v1888), xmmword_298495F90, v1878);
    v1903 = vmlaq_f32(vmlaq_f32(v1890, xmmword_298495FF0, v1893), xmmword_298496000, v1879);
    v1904 = vextq_s8(*&STACK[0x2360], *&STACK[0x2370], 0xCuLL);
    v1891.i32[3] = STACK[0x2378];
    v1905 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1881, xmmword_298496080), xmmword_298496070, v1896), xmmword_298496040, v1904), xmmword_298496030, v1891);
    v1906 = vmlaq_f32(vmulq_f32(v1891, xmmword_298496000), xmmword_2984960B0, v1904);
    v1907 = *&STACK[0x238C];
    v1908 = vzip1q_s32(*&STACK[0x2360], vuzp1q_s32(v1892, v1892));
    v1909 = *&STACK[0x237C];
    v1892.i32[0] = HIDWORD(STACK[0x2360]);
    v1910 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1882, xmmword_298496090), xmmword_298496060, v1899), xmmword_298496050, v1908), xmmword_298496020, v1892);
    v1911 = vmlaq_f32(vmulq_f32(v1892, xmmword_2984960A0), xmmword_2984960C0, v1908);
    v1912 = vextq_s8(*&STACK[0x237C], *&STACK[0x238C], 0xCuLL);
    v1907.i32[3] = STACK[0x2394];
    v1913 = vmlaq_f32(vmlaq_f32(v1906, xmmword_2984960E0, v1912), xmmword_298495FB0, v1907);
    v1914 = vmlaq_f32(vmulq_f32(v1907, xmmword_298496100), xmmword_298496110, v1912);
    v1915 = vzip1q_s32(*&STACK[0x237C], vuzp1q_s32(v1909, v1909));
    v1909.i32[0] = HIDWORD(STACK[0x237C]);
    v1916 = vmlaq_f32(vmlaq_f32(v1911, xmmword_2984960D0, v1915), xmmword_2984960F0, v1909);
    v1917 = *&STACK[0x23A4];
    v1918 = *&STACK[0x2394];
    v1919 = vmlaq_f32(vmulq_f32(v1909, xmmword_298495F90), xmmword_298495F60, v1915);
    v1920 = vextq_s8(*&STACK[0x2394], *&STACK[0x23A4], 4uLL);
    v1920.i32[0] = STACK[0x239C];
    v1918.i32[0] = HIDWORD(STACK[0x2394]);
    v1921 = vextq_s8(*&STACK[0x23A4], vdupq_laneq_s32(*&STACK[0x23A4], 3), 4uLL);
    v1922 = vmlaq_f32(vmlaq_f32(v1914, xmmword_298496120, *&STACK[0x23A4]), xmmword_298496130, v1921);
    v1923 = vdupq_n_s32(0x3D800000u);
    *&STACK[0x450] = vmulq_f32(v1885, v1923);
    *&STACK[0x440] = vmulq_f32(v1901, v1923);
    *&STACK[0x470] = vmulq_f32(v1889, v1923);
    *&STACK[0x460] = vmulq_f32(v1902, v1923);
    *&STACK[0x490] = vmulq_f32(v1903, v1923);
    *&STACK[0x480] = vmulq_f32(v1895, v1923);
    *&STACK[0x4B0] = vmulq_f32(v1897, v1923);
    *&STACK[0x4A0] = vmulq_f32(v1900, v1923);
    v1924 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1919, xmmword_298495F50, v1918), xmmword_298495F20, v1920), v1923);
    *&STACK[0x4D0] = vmulq_f32(v1905, v1923);
    *&STACK[0x4C0] = vmulq_f32(v1910, v1923);
    v1925 = vmulq_f32(v1922, v1923);
    *&STACK[0x4F0] = vmulq_f32(v1913, v1923);
    *&STACK[0x4E0] = vmulq_f32(v1916, v1923);
    v1926 = vmulq_f32(vmlaq_f32(vmulq_f32(v1920, xmmword_298495EE0), xmmword_298495F10, v1918), v1923);
    v1927 = vmulq_f32(vmlaq_f32(vmulq_f32(v1921, xmmword_298495EF0), xmmword_298495F00, v1917), v1923);
    v1928 = vdupq_lane_s32(*v1685.f32, 0);
    v1929 = vdupq_lane_s32(*v1679.f32, 0);
    v1930 = 0uLL;
    v1923.i32[0] = LOBYTE(STACK[0x14C7]);
    v1919.i64[0] = vceqq_s8(v1923, v1680).u64[0];
    *&STACK[0x510] = v1925;
    *&STACK[0x500] = v1924;
    v1931 = vdupq_lane_s32(*v1685.f32, 1);
    v1932 = 0uLL;
    v1933 = vdupq_lane_s32(*v1679.f32, 1);
    v1934 = vdupq_laneq_s32(v1685, 2);
    v1935 = 0uLL;
    v1936 = 0uLL;
    v1937 = 0uLL;
    *&STACK[0x530] = v1927;
    *&STACK[0x520] = v1926;
    v1938 = 0uLL;
    v1939 = vdupq_laneq_s32(v1679, 2);
    v1940 = vdupq_laneq_s32(v1685, 3);
    v1941 = 0uLL;
    v1942 = vdupq_laneq_s32(v1679, 3);
    v1943 = 0uLL;
    v1944 = vdupq_lane_s8(*v1919.f32, 0);
    do
    {
      v1945 = *(&STACK[0x440] + v1874 * 8);
      v1946 = *(&STACK[0x440] + v1874 * 8 + 16);
      v1947 = vsubq_f32(vmlaq_f32(v1934, v1945, v1939), *&v1812[v1874 + 82]);
      v1948 = *&v1812[v1874 + 114];
      v1949 = *&v1812[v1874 + 116];
      v1950 = vbslq_s8(v1944, v1947, vmulq_f32(v1947, v1948));
      v1951 = vsubq_f32(vmlaq_f32(v1934, v1946, v1939), *&v1812[v1874 + 84]);
      v1952 = vbslq_s8(v1944, v1951, vmulq_f32(v1951, v1949));
      v1953 = vsubq_f32(vmlaq_f32(v1931, v1945, v1933), *&v1812[v1874 + 50]);
      v1954 = vbslq_s8(v1944, v1953, vmulq_f32(v1953, v1948));
      v1955 = vsubq_f32(vmlaq_f32(v1931, v1946, v1933), *&v1812[v1874 + 52]);
      v1956 = vbslq_s8(v1944, v1955, vmulq_f32(v1955, v1949));
      v1957 = vsubq_f32(vmlaq_f32(v1928, v1945, v1929), *&v1812[v1874 + 18]);
      v1958 = vbslq_s8(v1944, v1957, vmulq_f32(v1957, v1948));
      v1959 = vsubq_f32(vmlaq_f32(v1928, v1946, v1929), *&v1812[v1874 + 20]);
      v1960 = vbslq_s8(v1944, v1959, vmulq_f32(v1959, v1949));
      v1961 = vsubq_f32(vmlaq_f32(v1940, v1945, v1942), v1948);
      v1962 = vsubq_f32(vmlaq_f32(v1940, v1946, v1942), v1949);
      v1943 = vmlaq_f32(v1943, v1960, v1960);
      v1941 = vmlaq_f32(v1941, v1958, v1958);
      v1938 = vmlaq_f32(v1938, v1956, v1956);
      v1937 = vmlaq_f32(v1937, v1954, v1954);
      v1936 = vmlaq_f32(v1936, v1952, v1952);
      v1935 = vmlaq_f32(v1935, v1950, v1950);
      v1932 = vmlaq_f32(v1932, v1962, v1962);
      v1930 = vmlaq_f32(v1930, v1961, v1961);
      v1874 += 4;
    }

    while (v1874 != 32);
    v1810 = v1917.f32[3];
    v1872 = vpaddq_f32(vpaddq_f32(vaddq_f32(v1941, v1943), vaddq_f32(v1937, v1938)), vpaddq_f32(vaddq_f32(v1935, v1936), vaddq_f32(v1930, v1932)));
    v1873 = v4094;
LABEL_428:
    v1963 = vmulq_f32(v1873, v1872);
    v1963.i64[0] = vpaddq_f32(v1963, v1963).u64[0];
    LODWORD(v1964) = vpadd_f32(*v1963.f32, *v1963.f32).u32[0];
  }

  else
  {
    if (v1814 == 375)
    {
      v4080 = v1810;
      v4083 = v1685;
      v4093 = _Q0;
      v4091 = v1682;
      _Q0.i32[0] = 0;
      v1815 = 0;
      *&STACK[0x300] = vdupq_lane_s32(*v1679.f32, 0);
      *&STACK[0x310] = vdupq_lane_s32(*v1685.f32, 0);
      *&STACK[0x2E0] = vdupq_lane_s32(*v1679.f32, 1);
      *&STACK[0x2F0] = vdupq_lane_s32(*v1685.f32, 1);
      *&STACK[0x2C0] = vdupq_laneq_s32(v1679, 2);
      *&STACK[0x2D0] = vdupq_laneq_s32(v1685, 2);
      v4087 = v1679;
      v1816 = vdupq_laneq_s32(v1679, 3);
      *&STACK[0x2A0] = v1816;
      *&STACK[0x2B0] = vdupq_laneq_s32(v1685, 3);
      v1816.i32[0] = LOBYTE(STACK[0x14C7]);
      v1817 = vdupq_lane_s8(*&vceqq_s8(v1816, _Q0), 0);
      v1818 = 0uLL;
      v1819 = 0uLL;
      v1820 = 0uLL;
      v1821 = 0uLL;
      v1822 = 0uLL;
      v1823 = 0uLL;
      v1824 = 0uLL;
      v1825 = 0uLL;
      v1826 = 0uLL;
      v1827 = 0uLL;
      v1828 = 0uLL;
      v1829 = 0uLL;
      v1830 = 0uLL;
      v1831 = 0uLL;
      v1832 = 0uLL;
      v1833 = 0uLL;
      do
      {
        *&STACK[0x360] = v1821;
        *&STACK[0x370] = v1820;
        *&STACK[0x380] = v1819;
        *&STACK[0x390] = v1818;
        v1835 = *&STACK[0x2C0];
        v1834 = *&STACK[0x2D0];
        v1836 = *(&STACK[0x22F0] + v1815 + 32);
        v1837 = *(&STACK[0x22F0] + v1815 + 48);
        v1838 = *(&STACK[0x1440] + v1815 + 560);
        v1839 = vsubq_f32(vmlaq_f32(*&STACK[0x2D0], v1837, *&STACK[0x2C0]), *(&STACK[0x1440] + v1815 + 576));
        v1841 = *(&STACK[0x1440] + v1815 + 752);
        v1840 = *(&STACK[0x1440] + v1815 + 768);
        *&STACK[0x350] = vbslq_s8(v1817, v1839, vmulq_f32(v1839, v1840));
        v1842 = *(&STACK[0x22F0] + v1815);
        v1843 = *(&STACK[0x22F0] + v1815 + 16);
        v1844 = *(&STACK[0x1440] + v1815 + 544);
        v1845 = vsubq_f32(vmlaq_f32(v1834, v1842, v1835), *(&STACK[0x1440] + v1815 + 528));
        v1847 = *(&STACK[0x1440] + v1815 + 720);
        v1846 = *(&STACK[0x1440] + v1815 + 736);
        *&STACK[0x340] = vbslq_s8(v1817, v1845, vmulq_f32(v1845, v1847));
        v1848 = vsubq_f32(vmlaq_f32(v1834, v1843, v1835), v1844);
        *&STACK[0x330] = vbslq_s8(v1817, v1848, vmulq_f32(v1848, v1846));
        v1849 = vsubq_f32(vmlaq_f32(v1834, v1836, v1835), v1838);
        *&STACK[0x320] = vbslq_s8(v1817, v1849, vmulq_f32(v1849, v1841));
        v1850 = vsubq_f32(vmlaq_f32(*&STACK[0x2F0], v1837, *&STACK[0x2E0]), *(&STACK[0x1440] + v1815 + 384));
        v1851 = vbslq_s8(v1817, v1850, vmulq_f32(v1850, v1840));
        v1852 = vsubq_f32(vmlaq_f32(*&STACK[0x2F0], v1842, *&STACK[0x2E0]), *(&STACK[0x1440] + v1815 + 336));
        v1853 = vbslq_s8(v1817, v1852, vmulq_f32(v1852, v1847));
        v1854 = vsubq_f32(vmlaq_f32(*&STACK[0x2F0], v1843, *&STACK[0x2E0]), *(&STACK[0x1440] + v1815 + 352));
        v1855 = vbslq_s8(v1817, v1854, vmulq_f32(v1854, v1846));
        v1856 = vsubq_f32(vmlaq_f32(*&STACK[0x2F0], v1836, *&STACK[0x2E0]), *(&STACK[0x1440] + v1815 + 368));
        v1857 = vbslq_s8(v1817, v1856, vmulq_f32(v1856, v1841));
        v1858 = vsubq_f32(vmlaq_f32(*&STACK[0x310], v1837, *&STACK[0x300]), *(&STACK[0x1440] + v1815 + 192));
        v1859 = vbslq_s8(v1817, v1858, vmulq_f32(v1858, v1840));
        v1860 = vsubq_f32(vmlaq_f32(*&STACK[0x310], v1842, *&STACK[0x300]), *(&STACK[0x1440] + v1815 + 144));
        v1861 = vbslq_s8(v1817, v1860, vmulq_f32(v1860, v1847));
        v1862 = vsubq_f32(vmlaq_f32(*&STACK[0x310], v1843, *&STACK[0x300]), *(&STACK[0x1440] + v1815 + 160));
        v1863 = vbslq_s8(v1817, v1862, vmulq_f32(v1862, v1846));
        v1864 = vsubq_f32(vmlaq_f32(*&STACK[0x310], v1836, *&STACK[0x300]), *(&STACK[0x1440] + v1815 + 176));
        v1865 = vbslq_s8(v1817, v1864, vmulq_f32(v1864, v1841));
        v1866 = vmlaq_f32(*&STACK[0x2B0], v1836, *&STACK[0x2A0]);
        v1867 = vsubq_f32(vmlaq_f32(*&STACK[0x2B0], v1837, *&STACK[0x2A0]), v1840);
        v1868 = vsubq_f32(vmlaq_f32(*&STACK[0x2B0], v1842, *&STACK[0x2A0]), v1847);
        v1869 = vsubq_f32(vmlaq_f32(*&STACK[0x2B0], v1843, *&STACK[0x2A0]), v1846);
        v1870 = vsubq_f32(v1866, v1841);
        v1832 = vmlaq_f32(v1832, v1865, v1865);
        v1831 = vmlaq_f32(v1831, v1863, v1863);
        v1830 = vmlaq_f32(v1830, v1861, v1861);
        v1833 = vmlaq_f32(v1833, v1859, v1859);
        v1828 = vmlaq_f32(v1828, v1857, v1857);
        v1827 = vmlaq_f32(v1827, v1855, v1855);
        v1826 = vmlaq_f32(v1826, v1853, v1853);
        v1829 = vmlaq_f32(v1829, v1851, v1851);
        v1824 = vmlaq_f32(v1824, *&STACK[0x320], *&STACK[0x320]);
        v1823 = vmlaq_f32(v1823, *&STACK[0x330], *&STACK[0x330]);
        v1822 = vmlaq_f32(v1822, *&STACK[0x340], *&STACK[0x340]);
        v1825 = vmlaq_f32(v1825, *&STACK[0x350], *&STACK[0x350]);
        v1820 = vmlaq_f32(*&STACK[0x370], v1870, v1870);
        v1819 = vmlaq_f32(*&STACK[0x380], v1869, v1869);
        v1818 = vmlaq_f32(*&STACK[0x390], v1868, v1868);
        v1821 = vmlaq_f32(*&STACK[0x360], v1867, v1867);
        v1815 += 64;
      }

      while (v1815 != 192);
      v1810 = v4080;
      v1871 = vsubq_f32(vmlaq_n_f32(v4083, v4087, v4080), *&STACK[0x1C50]);
      v1872 = vmulq_f32(v4093, vmlaq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v1830, v1832), vaddq_f32(v1831, v1833)), vaddq_f32(vaddq_f32(v1826, v1828), vaddq_f32(v1827, v1829))), vpaddq_f32(vaddq_f32(vaddq_f32(v1822, v1824), vaddq_f32(v1823, v1825)), vaddq_f32(vaddq_f32(v1818, v1820), vaddq_f32(v1819, v1821)))), v1871, v1871));
      v1873 = v4093;
      v1682 = v4091;
      goto LABEL_428;
    }

    v1964 = INFINITY;
  }

  if (v1964 >= *v10)
  {
    v1972 = 0;
    LOBYTE(v1973) = 0;
    LOBYTE(v1974) = 0;
    v1969 = 0uLL;
    v1975 = 0uLL;
    v1964 = *v10;
    v1971 = v4101;
  }

  else
  {
    if (v1678 == 1)
    {
      v1965 = 0;
      v1966 = 0uLL;
      v1967.i64[0] = 0x3F0000003F000000;
      v1967.i64[1] = 0x3F0000003F000000;
      do
      {
        v1968 = vaddvq_s16(vandq_s8(vuzp1q_s16(vcgeq_f32(*(&STACK[0x22F0] + 2 * v1965), v1967), vcgeq_f32(*(&STACK[0x22F0] + 2 * v1965 + 1), v1967)), xmmword_298495640));
        *&STACK[0x420] = v1966;
        *(&STACK[0x420] | v1965 & 0xF) = v1968;
        v1966 = *&STACK[0x420];
        ++v1965;
      }

      while (v1965 != 6);
      v1966.i8[6] = v1810 >= 0.5;
      v1969 = vqtbl1q_s8(vrbitq_s8(v1966), xmmword_298495DE0);
      v1970 = v1676;
      v1971 = v4101;
    }

    else
    {
      v1976 = *&STACK[0x2380];
      v1977 = *&STACK[0x2370];
      v1978 = *&STACK[0x23A0];
      v1979 = *&STACK[0x2390];
      v1980.i64[0] = 0x3F0000003F000000;
      v1980.i64[1] = 0x3F0000003F000000;
      v1981.i64[0] = 0x3F0000003F000000;
      v1981.i64[1] = 0x3F0000003F000000;
      v1982.i64[0] = 0x3F0000003F000000;
      v1982.i64[1] = 0x3F0000003F000000;
      v1983.i64[0] = 0x3F0000003F000000;
      v1983.i64[1] = 0x3F0000003F000000;
      v1984.i64[0] = 0x3F0000003F000000;
      v1984.i64[1] = 0x3F0000003F000000;
      v1985 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1983, *&STACK[0x22F0], v1678)), vcvtq_s32_f32(vmlaq_n_f32(v1984, *&STACK[0x2300], v1678))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1981, *&STACK[0x2310], v1678)), vcvtq_s32_f32(vmlaq_n_f32(v1982, *&STACK[0x2320], v1678))));
      v1984.i64[0] = 0x3F0000003F000000;
      v1984.i64[1] = 0x3F0000003F000000;
      v1983.i64[0] = 0x3F0000003F000000;
      v1983.i64[1] = 0x3F0000003F000000;
      v1982.i64[0] = 0x3F0000003F000000;
      v1982.i64[1] = 0x3F0000003F000000;
      v1986.i64[0] = 0x3F0000003F000000;
      v1986.i64[1] = 0x3F0000003F000000;
      v1987 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1982, *&STACK[0x2330], v1678)), vcvtq_s32_f32(vmlaq_n_f32(v1986, *&STACK[0x2340], v1678))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1984, *&STACK[0x2350], v1678)), vcvtq_s32_f32(vmlaq_n_f32(v1983, *&STACK[0x2360], v1678))));
      *&STACK[0x450] = v1987;
      *&STACK[0x440] = v1985;
      v1983.i64[0] = 0x3F0000003F000000;
      v1983.i64[1] = 0x3F0000003F000000;
      v1982.i64[0] = 0x3F0000003F000000;
      v1982.i64[1] = 0x3F0000003F000000;
      v1988.i64[0] = 0x3F0000003F000000;
      v1988.i64[1] = 0x3F0000003F000000;
      *&STACK[0x470] = ((v1810 * v1678) + 0.5);
      *&STACK[0x460] = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1988, v1977, v1678)), vcvtq_s32_f32(vmlaq_n_f32(v1980, v1976, v1678))), vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(v1983, v1979, v1678)), vcvtq_s32_f32(vmlaq_n_f32(v1982, v1978, v1678))));
      v1989 = vqtbl1q_s8(v1985, xmmword_298495C40);
      v1990 = vqtbl1q_s8(v1987, xmmword_298496140);
      v1991 = vqtbl1q_s8(*&STACK[0x45E], xmmword_298495C40);
      v1992 = vqtbl1q_s8(*&STACK[0x46E], xmmword_298496140);
      v1993 = vpaddq_s16(vpaddq_s16(vmull_u8(*v1989.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1989, v1989, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v1990.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1990, v1990, 8uLL), 0x8010040180100401)));
      v1994 = vpaddq_s16(vpaddq_s16(vmull_u8(*v1991.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1991, v1991, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v1992.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1992, v1992, 8uLL), 0x8010040180100401)));
      v1995 = vuzp1q_s16(vqtbl1q_s8(v1985, xmmword_298495C50), vqtbl1q_s8(v1987, xmmword_298495CA0));
      v1996 = vuzp1q_s16(vqtbl1q_s8(*&STACK[0x45E], xmmword_298495C50), vqtbl1q_s8(*&STACK[0x46E], xmmword_298495CA0));
      v1997 = vaddq_s16(v1993, vqtbl1q_s8(v1993, xmmword_298495CB0));
      v1998 = vaddq_s16(v1994, vqtbl1q_s8(v1994, xmmword_298495CB0));
      v1999 = v1997;
      v1999.i16[3] = 0;
      v2000 = v1998;
      v2000.i16[3] = 0;
      v1982.i64[0] = 0x20002000200020;
      v1982.i64[1] = 0x20002000200020;
      v2001 = vceqq_s16(vandq_s8(v1997, xmmword_298495CC0), v1982);
      v2002 = vceqq_s16(vandq_s8(v1998, xmmword_298495CC0), v1982);
      v1985.i64[0] = 0xFF00FF00FF00FFLL;
      v1985.i64[1] = 0xFF00FF00FF00FFLL;
      v2003 = vcgtq_u16(v1999, v1985);
      v2004 = vcgtq_u16(v2000, v1985);
      v2005 = vshlq_n_s16(v1995, 5uLL);
      v2006 = vshlq_n_s16(v1996, 5uLL);
      v2007 = vaddq_s16(v1999, v2005);
      if ((vmaxvq_u16(vorrq_s8(v2001, v2003)) & 0x8000) != 0)
      {
        v2008.i64[0] = 0x2000200020002;
        v2008.i64[1] = 0x2000200020002;
        v2009 = vandq_s8(v2003, vceqq_s16(v1995, v2008));
        v2010 = vandq_s8(v1997, xmmword_298495CD0);
        v2011.i64[0] = 0x303030303030303;
        v2011.i64[1] = 0x303030303030303;
        v2012.i64[0] = 0x6060606060606060;
        v2012.i64[1] = 0x6060606060606060;
        v2013 = vmlaq_s8(v2012, v2005, v2011);
        v2014.i64[0] = 0xF000F000F000FLL;
        v2014.i64[1] = 0xF000F000F000FLL;
        v2007 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(v2013, v2003), v2007), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v2010), v2001), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(vshrq_n_u16(v1999, 2uLL), v2014)), v2009))), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C80, v2010), v2001), v2009));
      }

      v2015 = vaddq_s16(v2000, v2006);
      if ((vmaxvq_u16(vorrq_s8(v2002, v2004)) & 0x8000) != 0)
      {
        v2016 = vshrq_n_u16(v2000, 2uLL);
        v2017.i64[0] = 0xFF00FF00FF00FFLL;
        v2017.i64[1] = 0xFF00FF00FF00FFLL;
        v2018 = vcgtq_u16(v2000, v2017);
        v2017.i64[0] = 0x2000200020002;
        v2017.i64[1] = 0x2000200020002;
        v2019 = vandq_s8(v2018, vceqq_s16(v1996, v2017));
        v2020 = vandq_s8(v1998, xmmword_298495CD0);
        v2017.i64[0] = 0x303030303030303;
        v2017.i64[1] = 0x303030303030303;
        v2021.i64[0] = 0x6060606060606060;
        v2021.i64[1] = 0x6060606060606060;
        v2022 = vmlaq_s8(v2021, v2006, v2017);
        v2023.i64[0] = 0xF000F000F000FLL;
        v2023.i64[1] = 0xF000F000F000FLL;
        v2015 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(v2022, v2004), v2015), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v2020), v2002), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v2016, v2023)), v2019))), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C80, v2020), v2002), v2019));
      }

      v1971 = v4101;
      v1969 = vqtbl1q_s8(vrbitq_s8(vorrq_s8(vqtbl1q_s8(v2015, xmmword_298496160), vqtbl1q_s8(v2007, xmmword_298496150))), xmmword_298495DE0);
      v1970 = STACK[0x20F0];
      v1676 = STACK[0x20F0];
    }

    v1972 = v1970 & 0x1FFFF;
    v1973 = HIDWORD(v1676);
    v1974 = v1676 >> 40;
    *v10 = v1964;
    v1975 = vmovl_u8(v1682);
  }

  if (v1971 > v1964)
  {
    v2024 = v1973 + 1;
    v2025 = __clz(__rbit32(v2024));
    v2026 = v2024 >> v2025;
    v2027 = (v2024 >> v2025);
    if (v2025 && v2027 != 1)
    {
      v2028 = vsubq_s16(vdupq_n_s16(v1973), v1975);
      if (v2027 == 3)
      {
        v2029 = 21846;
      }

      else
      {
        v2029 = 13108;
      }

      v2030 = vdupq_n_s16(v2029);
      v2031 = vminq_u16(v1975, v2028);
      v2032 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v2031.i8, *v2030.i8), 0x10uLL), vmull_high_u16(v2031, v2030), 0x10uLL);
      v2030.i64[0] = 0x1000100010001;
      v2030.i64[1] = 0x1000100010001;
      v1975 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v2031, v2032, vmovl_u8(vdup_n_s8(v2026))), vdupq_n_s16(v2025)), vaddq_s16(v2032, v2032)), vbicq_s8(v2030, vceqq_s16(v2031, v1975)));
    }

    v2033 = vandq_s8(v1975, vcgtq_u16(vdupq_n_s16(v1974), xmmword_298495BB0));
    switch(v2027)
    {
      case 5:
        v2068 = vdupq_n_s16(v2025);
        v2069 = vshlq_u16(v2033, vnegq_s16(v2068));
        *v2069.i8 = vmovn_s16(v2069);
        v2070 = vqtbl1q_s8(v2069, xmmword_298495BC0);
        v2071 = vqtbl1q_s8(v2069, xmmword_298495BD0);
        v2072 = vpaddq_s16(vmull_u8(*v2070.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v2070, v2070, 8uLL), 0x2001200120012001));
        v2070.i64[0] = 0x7000700070007;
        v2070.i64[1] = 0x7000700070007;
        v2073 = vandq_s8(v2072, v2070);
        v2074 = vandq_s8(vshrq_n_u16(v2072, 5uLL), v2070);
        v2075.i64[0] = 0x4000400040004;
        v2075.i64[1] = 0x4000400040004;
        v2076 = vceqq_s16(v2071, v2075);
        v2077 = vceqq_s16(v2074, v2075);
        v2078 = vsubq_s8(vaddq_s16(v2072, vshlq_n_s16(v2071, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v2073), v2077));
        if ((vmaxvq_u16(v2076) & 0x8000) != 0)
        {
          v2079.i64[0] = 0x18001800180018;
          v2079.i64[1] = 0x18001800180018;
          v2078.i64[0] = vsubq_s8(v2078, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v2073), v2076), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v2073), v2076), v2077)), vandq_s8(vmulq_s16(v2074, v2079), vandq_s8(vceqq_s16(v2073, v2075), v2076)))).u64[0];
        }

        v2078.i64[1] = v2078.i64[0];
        v2080 = vshlq_u16(vorrq_s8(vshlq_u16(vmovl_u8(vshl_u8(vand_s8(vqtbl1_s8(v2078, 0x404020202000000), 0x1807601807601807), 0xFD00FBFD00FBFD00)), v2068), vandq_s8(v2033, vdupq_n_s16(~(-1 << v2025)))), vaddq_s16(vdupq_n_s32(v2025 << 16), xmmword_298495C10));
        v2081 = vshlq_u32(vmovl_u16(*&vpaddq_s16(v2080, v2080)), vaddq_s32(vdupq_n_s64(v2025 << 33), xmmword_298495C20));
        v2081.i64[0] = vpaddq_s32(v2081, v2081).u64[0];
        v2041 = v2081.u32[0];
        v2042 = (v2081.i64[0] & 0xFFFFFFFF00000000) >> (22 - 4 * v2025);
LABEL_459:
        v2067 = v2042 | v2041;
        break;
      case 3:
        *v2033.i8 = vmovn_s16(v2033);
        v2043 = vandq_s8(v2033, xmmword_298495C30);
        v2044 = vdupq_n_s8(v2025);
        v2045 = vshlq_u8(v2043, vnegq_s8(v2044));
        v2046 = vqtbl1q_s8(v2045, xmmword_298495C40);
        v2047 = vqtbl1q_s8(v2045, xmmword_298495C50);
        v2048 = vpaddq_s16(vmull_u8(*v2046.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v2046, v2046, 8uLL), 0x8010040180100401));
        v2048.i64[0] = vpaddq_s16(v2048, v2048).u64[0];
        v2049 = vmovl_s16(*v2048.i8);
        v2050 = vshlq_n_s32(v2047, 5uLL);
        v2046.i64[0] = 0x3000000030;
        v2046.i64[1] = 0x3000000030;
        v2051.i64[0] = 0x2000000020;
        v2051.i64[1] = 0x2000000020;
        v2052 = vceqq_s32(vandq_s8(v2049, v2046), v2051);
        v2053 = vaddw_s16(v2050, *v2048.i8);
        v2051.i64[0] = 0xFF000000FFLL;
        v2051.i64[1] = 0xFF000000FFLL;
        v2054 = vcgtq_s32(v2053, v2051);
        if ((vmaxvq_u32(vorrq_s8(v2052, v2054)) & 0x80000000) != 0)
        {
          v2055.i64[0] = 0x200000002;
          v2055.i64[1] = 0x200000002;
          v2056 = vceqq_s32(v2047, v2055);
          v2057 = vshrq_n_u32(v2049, 2uLL);
          v2058 = vandq_s8(v2054, v2056);
          v2059.i64[0] = 0xF0000000FLL;
          v2059.i64[1] = 0xF0000000FLL;
          v2060 = vandq_s8(v2049, v2059);
          v2061.i64[0] = 0x303030303030303;
          v2061.i64[1] = 0x303030303030303;
          v2062.i64[0] = 0x6060606060606060;
          v2062.i64[1] = 0x6060606060606060;
          v2053.i64[0] = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v2062, v2050, v2061), v2054), v2053), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v2060), v2052), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v2057, v2059)), v2058))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v2060), vandq_s8(v2052, v2058))).u64[0];
        }

        v2053.i64[1] = v2053.i64[0];
        v2063 = vmovl_u8(vorr_s8(vshl_u8(vshl_u8(vand_s8(vqtbl1_s8(v2053, 0x404040000000000), 0x100C038060100C03), 0xFCFE00F9FBFCFE00), *v2044.i8), vand_s8(*v2043.i8, vdup_n_s8((1 << v2025) - 1))));
        v2064 = vadd_s32(vdup_n_s32(2 * v2025), 0x300000004);
        v2065.i64[0] = v2064.u32[0];
        v2065.i64[1] = v2064.u32[1];
        v2066 = vshlq_u32(vmlal_u16((*&v2063 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vshrn_n_s32(v2063, 0x10uLL), vshl_u16(vdup_n_s16(1 << v2025), 0x2000100010002)), vtrn1q_s32(0, v2065));
        v2066.i64[0] = vpaddq_s32(v2066, v2066).u64[0];
        v2067 = (v2066.u32[1] << (4 * v2025 + 7)) | v2066.u32[0];
        break;
      case 1:
        v2034.i64[0] = 0xFFFF0000FFFFLL;
        v2034.i64[1] = 0xFFFF0000FFFFLL;
        v2035.i64[0] = 0xFFFF0000FFFF0000;
        v2035.i64[1] = 0xFFFF0000FFFF0000;
        v2036 = vorrq_s8(vshlq_u32(vandq_s8(v2033, v2035), vnegq_s32(vdupq_n_s32(16 - v2025))), vandq_s8(v2033, v2034));
        v2034.i64[0] = 0xFFFFFFFFLL;
        v2034.i64[1] = 0xFFFFFFFFLL;
        v2037 = vandq_s8(v2036, v2034);
        v2035.i64[0] = 0xFFFFFFFF00000000;
        v2035.i64[1] = 0xFFFFFFFF00000000;
        v2038 = vandq_s8(v2036, v2035);
        *v2035.i8 = vdup_n_s32(2 * (16 - v2025));
        v2039.i64[0] = v2035.u32[0];
        v2039.i64[1] = v2035.u32[1];
        v2040 = vorrq_s8(vshlq_u64(v2038, vnegq_s64(v2039)), v2037);
        v2041 = v2040.i64[0];
        v2042 = v2040.i64[1] << (4 * v2025);
        goto LABEL_459;
      default:
        v2067 = 0;
        break;
    }

    v2082.i64[0] = v1972 | (v2067 << 17);
    v2082.i64[1] = v2067 >> 47;
    *v9 = vorrq_s8(v2082, v1969);
    v1964 = *v10;
  }

  if (v1964 <= v10[1])
  {
    return;
  }

  bzero(&STACK[0x440], 0x570uLL);
  v2083 = 0;
  LOWORD(STACK[0x4C4]) = 342;
  LOBYTE(STACK[0x4C6]) = -1;
  LOBYTE(STACK[0x4C8]) = -1;
  v2084 = *(v11 + 48);
  v2085 = *(v11 + 56);
  v2086 = vdupq_n_s32(0x3C800000u);
  __asm { FMOV            V1.4S, #0.21875 }

  v2089 = *(v11 + 144);
  v2088 = *(v11 + 160);
  __asm { FMOV            V2.4S, #0.53125 }

  v2091 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2085[21], v2086), _Q1, v2085[23]), _Q2, v2089);
  v2092 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2085[22], v2086), _Q1, v2085[24]), _Q2, v2088);
  v2093 = vdupq_n_s32(0x3D100000u);
  v2094 = vmulq_f32(v2088, v2093);
  v2095 = vmulq_f32(v2089, v2093);
  v2097 = *(v12 + 128);
  v2096 = *(v12 + 144);
  v2098 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2085[37], v2086), _Q1, v2085[39]), _Q2, v2097);
  v2099 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2085[38], v2086), _Q1, v2085[40]), _Q2, v2096);
  v2100 = vmulq_f32(v2096, v2093);
  v2101 = vmulq_f32(v2097, v2093);
  v2103 = *(v12 + 384);
  v2102 = *(v12 + 400);
  v2104 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2085[53], v2086), _Q1, v2085[55]), _Q2, v2103);
  v2105 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2085[54], v2086), _Q1, v2085[56]), _Q2, v2102);
  v2106 = vmulq_f32(v2102, v2093);
  v2107 = vmulq_f32(v2103, v2093);
  v2109 = *(v12 + 640);
  v2108 = *(v12 + 656);
  v2110 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2085[69], v2086), _Q1, v2085[71]), _Q2, v2109);
  v2111 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2085[70], v2086), _Q1, v2085[72]), _Q2, v2108);
  v2112 = vmulq_f32(v2108, v2093);
  v2113 = vmulq_f32(v2109, v2093);
  v2114 = *(v11 + 176);
  v2115 = *(v11 + 192);
  v2116 = vmlaq_f32(v2092, _Q1, v2115);
  v2117 = vmlaq_f32(v2091, _Q1, v2114);
  v2118 = vdupq_n_s32(0x3EA60000u);
  v2119 = vmlaq_f32(v2095, v2118, v2114);
  v2120 = vmlaq_f32(v2094, v2118, v2115);
  v2121 = *(v12 + 160);
  v2122 = *(v12 + 176);
  v2123 = vmlaq_f32(v2099, _Q1, v2122);
  v2124 = vmlaq_f32(v2098, _Q1, v2121);
  v2125 = vmlaq_f32(v2101, v2118, v2121);
  v2126 = vmlaq_f32(v2100, v2118, v2122);
  v2127 = *(v12 + 416);
  v2128 = *(v12 + 432);
  v2129 = vmlaq_f32(v2105, _Q1, v2128);
  v2130 = vmlaq_f32(v2104, _Q1, v2127);
  v2131 = vmlaq_f32(v2107, v2118, v2127);
  v2132 = vmlaq_f32(v2106, v2118, v2128);
  v2133 = *(v12 + 672);
  v2134 = *(v12 + 688);
  v2135 = vmlaq_f32(v2111, _Q1, v2134);
  v2136 = vmlaq_f32(v2110, _Q1, v2133);
  v2137 = vmlaq_f32(v2113, v2118, v2133);
  v2138 = vmlaq_f32(v2112, v2118, v2134);
  v2140 = *(v11 + 208);
  v2139 = *(v11 + 224);
  v2141 = vdupq_n_s32(0x3F020000u);
  *&STACK[0x2300] = vmlaq_f32(v2116, v2086, v2139);
  *&STACK[0x22F0] = vmlaq_f32(v2117, v2086, v2140);
  v2142 = vmlaq_f32(v2120, v2141, v2139);
  v2143 = vmlaq_f32(v2119, v2141, v2140);
  v2144 = vdupq_n_s32(0x3D900000u);
  v2145 = vmulq_f32(v2139, v2144);
  v2146 = vmulq_f32(v2140, v2144);
  v2147 = *(v12 + 192);
  v2148 = *(v12 + 208);
  *&STACK[0x2200] = vmlaq_f32(v2123, v2086, v2148);
  *&STACK[0x21F0] = vmlaq_f32(v2124, v2086, v2147);
  v2149 = vmlaq_f32(v2126, v2141, v2148);
  v2150 = vmlaq_f32(v2125, v2141, v2147);
  v2151 = vmulq_f32(v2147, v2144);
  v2152 = vmulq_f32(v2148, v2144);
  v2153 = *(v12 + 448);
  v2154 = *(v12 + 464);
  *&STACK[0x2100] = vmlaq_f32(v2129, v2086, v2154);
  *&STACK[0x20F0] = vmlaq_f32(v2130, v2086, v2153);
  v2155 = vmlaq_f32(v2132, v2141, v2154);
  v2156 = vmlaq_f32(v2131, v2141, v2153);
  v2157 = vmulq_f32(v2153, v2144);
  v2158 = vmulq_f32(v2154, v2144);
  v2160 = *(v12 + 704);
  v2159 = *(v12 + 720);
  *&STACK[0x2020] = vmlaq_f32(v2135, v2086, v2159);
  *&STACK[0x2010] = vmlaq_f32(v2136, v2086, v2160);
  v2162 = *(v11 + 240);
  v2161 = *(v11 + 256);
  __asm { FMOV            V7.4S, #0.13281 }

  *&STACK[0x2320] = vmlaq_f32(v2142, _Q7, v2161);
  *&STACK[0x2310] = vmlaq_f32(v2143, _Q7, v2162);
  v2164 = vdupq_n_s32(0x3EDC0000u);
  v2166 = *(v12 + 224);
  v2165 = *(v12 + 240);
  *&STACK[0x2220] = vmlaq_f32(v2149, _Q7, v2165);
  *&STACK[0x2210] = vmlaq_f32(v2150, _Q7, v2166);
  v2168 = *(v12 + 480);
  v2167 = *(v12 + 496);
  *&STACK[0x2120] = vmlaq_f32(v2155, _Q7, v2167);
  *&STACK[0x2110] = vmlaq_f32(v2156, _Q7, v2168);
  v2170 = *(v12 + 736);
  v2169 = *(v12 + 752);
  *&STACK[0x2040] = vmlaq_f32(vmlaq_f32(v2138, v2141, v2159), _Q7, v2169);
  *&STACK[0x2030] = vmlaq_f32(vmlaq_f32(v2137, v2141, v2160), _Q7, v2170);
  v2171 = *(v12 + 16);
  v2172 = vmlaq_f32(vmlaq_f32(v2145, v2164, v2161), v2164, v2171);
  v2173 = vmlaq_f32(vmlaq_f32(v2146, v2164, v2162), v2164, *v12);
  v2174 = vmulq_f32(v2171, _Q7);
  v2175 = vmulq_f32(*v12, _Q7);
  v2177 = *(v12 + 256);
  v2176 = *(v12 + 272);
  v2178 = vmlaq_f32(vmlaq_f32(v2151, v2164, v2166), v2164, v2177);
  v2179 = vmlaq_f32(vmlaq_f32(v2152, v2164, v2165), v2164, v2176);
  v2180 = vmulq_f32(v2176, _Q7);
  v2181 = vmulq_f32(v2177, _Q7);
  v2183 = *(v12 + 512);
  v2182 = *(v12 + 528);
  v2184 = vmlaq_f32(vmlaq_f32(v2157, v2164, v2168), v2164, v2183);
  v2185 = vmlaq_f32(vmlaq_f32(v2158, v2164, v2167), v2164, v2182);
  v2186 = vmulq_f32(v2182, _Q7);
  v2187 = vmulq_f32(v2183, _Q7);
  v2189 = *(v12 + 768);
  v2188 = *(v12 + 784);
  v2190 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2160, v2144), v2164, v2170), v2164, v2189);
  v2191 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2159, v2144), v2164, v2169), v2164, v2188);
  v2192 = vmulq_f32(v2189, _Q7);
  v2193 = vmulq_f32(v2188, _Q7);
  v2194 = *(v12 + 32);
  v2195 = *(v12 + 48);
  *&STACK[0x2340] = vmlaq_f32(v2172, v2144, v2195);
  *&STACK[0x2330] = vmlaq_f32(v2173, v2144, v2194);
  v2196 = *(v12 + 288);
  v2197 = *(v12 + 304);
  *&STACK[0x2230] = vmlaq_f32(v2178, v2144, v2196);
  *&STACK[0x2240] = vmlaq_f32(v2179, v2144, v2197);
  v2198 = *(v12 + 544);
  v2199 = *(v12 + 560);
  *&STACK[0x2130] = vmlaq_f32(v2184, v2144, v2198);
  *&STACK[0x2140] = vmlaq_f32(v2185, v2144, v2199);
  v2200 = *(v12 + 800);
  v2201 = *(v12 + 816);
  *&STACK[0x2050] = vmlaq_f32(v2190, v2144, v2200);
  *&STACK[0x2060] = vmlaq_f32(v2191, v2144, v2201);
  v2202 = *(v12 + 64);
  v2203 = *(v12 + 80);
  v2204 = vmlaq_f32(vmlaq_f32(v2174, v2141, v2195), v2118, v2203);
  v2205 = vmlaq_f32(vmlaq_f32(v2175, v2141, v2194), v2118, v2202);
  v2206 = vmlaq_f32(vmulq_f32(v2195, v2086), _Q1, v2203);
  v2207 = vmlaq_f32(vmulq_f32(v2194, v2086), _Q1, v2202);
  v2208 = *(v12 + 320);
  v2209 = *(v12 + 336);
  v2210 = vmlaq_f32(vmlaq_f32(v2180, v2141, v2197), v2118, v2209);
  v2211 = vmlaq_f32(vmlaq_f32(v2181, v2141, v2196), v2118, v2208);
  v2212 = vmlaq_f32(vmulq_f32(v2197, v2086), _Q1, v2209);
  v2213 = vmlaq_f32(vmulq_f32(v2196, v2086), _Q1, v2208);
  v2214 = *(v12 + 576);
  v2215 = *(v12 + 592);
  v2216 = vmlaq_f32(vmlaq_f32(v2186, v2141, v2199), v2118, v2215);
  v2217 = vmlaq_f32(vmlaq_f32(v2187, v2141, v2198), v2118, v2214);
  v2218 = vmlaq_f32(vmulq_f32(v2199, v2086), _Q1, v2215);
  v2219 = vmlaq_f32(vmulq_f32(v2198, v2086), _Q1, v2214);
  v2221 = *(v12 + 832);
  v2220 = *(v12 + 848);
  v2222 = vmlaq_f32(vmlaq_f32(v2192, v2141, v2200), v2118, v2221);
  v2223 = vmlaq_f32(vmlaq_f32(v2193, v2141, v2201), v2118, v2220);
  v2224 = vmlaq_f32(vmulq_f32(v2201, v2086), _Q1, v2220);
  v2225 = vmlaq_f32(vmulq_f32(v2200, v2086), _Q1, v2221);
  v2227 = *(v12 + 96);
  v2226 = *(v12 + 112);
  *&STACK[0x2360] = vmlaq_f32(v2204, v2093, v2226);
  *&STACK[0x2350] = vmlaq_f32(v2205, v2093, v2227);
  v2228 = vmlaq_f32(v2207, _Q2, v2227);
  v2229 = vmlaq_f32(v2206, _Q2, v2226);
  v2231 = *(v12 + 352);
  v2230 = *(v12 + 368);
  *&STACK[0x2260] = vmlaq_f32(v2210, v2093, v2230);
  *&STACK[0x2250] = vmlaq_f32(v2211, v2093, v2231);
  v2232 = vmlaq_f32(v2213, _Q2, v2231);
  v2233 = vmlaq_f32(v2212, _Q2, v2230);
  v2235 = *(v12 + 608);
  v2234 = *(v12 + 624);
  *&STACK[0x2160] = vmlaq_f32(v2216, v2093, v2234);
  *&STACK[0x2150] = vmlaq_f32(v2217, v2093, v2235);
  v2236 = vmlaq_f32(v2218, _Q2, v2234);
  v2237 = *(v12 + 864);
  v2238 = *(v12 + 880);
  *&STACK[0x2070] = vmlaq_f32(v2222, v2093, v2237);
  *&STACK[0x2080] = vmlaq_f32(v2223, v2093, v2238);
  v2239 = *(v11 + 104);
  v2240 = *(v11 + 112);
  v2241 = vmlaq_f32(v2233, _Q1, v2239[26]);
  v2242 = vmlaq_f32(v2232, _Q1, v2239[25]);
  v2243 = vmlaq_f32(v2236, _Q1, v2239[42]);
  v2244 = vmlaq_f32(vmlaq_f32(v2219, _Q2, v2235), _Q1, v2239[41]);
  v2245 = vmlaq_f32(vmlaq_f32(v2224, _Q2, v2238), _Q1, v2239[58]);
  v2246 = vmlaq_f32(vmlaq_f32(v2225, _Q2, v2237), _Q1, v2239[57]);
  v2247 = vmlaq_f32(vmlaq_f32(v2228, _Q1, v2239[9]), v2086, v2239[11]);
  *&STACK[0x2380] = vmlaq_f32(vmlaq_f32(v2229, _Q1, v2239[10]), v2086, v2239[12]);
  *&STACK[0x2370] = v2247;
  v2248 = vmlaq_f32(v2242, v2086, v2239[27]);
  *&STACK[0x2280] = vmlaq_f32(v2241, v2086, v2239[28]);
  *&STACK[0x2270] = v2248;
  v2249 = vmlaq_f32(v2244, v2086, v2239[43]);
  *&STACK[0x2180] = vmlaq_f32(v2243, v2086, v2239[44]);
  *&STACK[0x2170] = v2249;
  v2250 = vmlaq_f32(v2246, v2086, v2239[59]);
  v2251 = vmlaq_f32(v2245, v2086, v2239[60]);
  v2247.i32[0] = vdupq_laneq_s32(v2084[22], 3).u32[0];
  v2247.i32[1] = v2084[38].i32[3];
  v2247.i32[2] = v2084[54].i32[3];
  v2247.i32[3] = v2084[70].i32[3];
  v2253 = *(v11 + 64);
  v2252 = *(v11 + 72);
  v2229.i64[0] = vzip1q_s32(v2253[21], v2253[37]).u64[0];
  v2229.i32[2] = v2253[53].i32[0];
  v2229.i32[3] = v2253[69].i32[0];
  *&STACK[0x20A0] = v2251;
  *&STACK[0x2090] = v2250;
  v2254 = vmulq_f32(v2247, v2086);
  v2255 = vmulq_f32(v2229, v2086);
  v2247.i32[0] = vdupq_laneq_s32(v2084[24], 3).u32[0];
  v2247.i32[1] = v2084[40].i32[3];
  v2247.i32[2] = v2084[56].i32[3];
  v2247.i32[3] = v2084[72].i32[3];
  v2229.i64[0] = vzip1q_s32(v2253[23], v2253[39]).u64[0];
  v2229.i32[2] = v2253[55].i32[0];
  v2229.i32[3] = v2253[71].i32[0];
  v2248.i32[0] = vdupq_laneq_s32(v2252[10], 3).u32[0];
  v2248.i32[1] = v2252[26].i32[3];
  v2248.i32[2] = v2252[42].i32[3];
  v2248.i32[3] = v2252[58].i32[3];
  v2256 = vmlaq_f32(v2255, _Q1, v2229);
  v2258 = *(v11 + 88);
  v2257 = *(v11 + 96);
  v2229.i64[0] = vzip1q_s32(v2258[9], v2258[25]).u64[0];
  v2229.i32[2] = v2258[41].i32[0];
  v2229.i32[3] = v2258[57].i32[0];
  v2259 = vmlaq_f32(vmlaq_f32(v2254, _Q1, v2247), _Q2, v2248);
  v2260 = vmlaq_f32(v2256, _Q2, v2229);
  v2261 = vmulq_f32(v2229, v2093);
  v2262 = vmulq_f32(v2248, v2093);
  v2248.i32[0] = vdupq_laneq_s32(v2252[12], 3).u32[0];
  v2248.i32[1] = v2252[28].i32[3];
  v2248.i32[2] = v2252[44].i32[3];
  v2248.i32[3] = v2252[60].i32[3];
  v2241.i64[0] = vzip1q_s32(v2258[11], v2258[27]).u64[0];
  v2241.i32[2] = v2258[43].i32[0];
  v2241.i32[3] = v2258[59].i32[0];
  v2263 = vmlaq_f32(v2260, _Q1, v2241);
  v2264 = vmlaq_f32(v2259, _Q1, v2248);
  v2265 = vmlaq_f32(v2262, v2118, v2248);
  v2266 = vmlaq_f32(v2261, v2118, v2241);
  v2248.i32[0] = vdupq_laneq_s32(v2252[14], 3).u32[0];
  v2248.i32[1] = v2252[30].i32[3];
  v2248.i32[2] = v2252[46].i32[3];
  v2248.i32[3] = v2252[62].i32[3];
  v2241.i64[0] = vzip1q_s32(v2258[13], v2258[29]).u64[0];
  v2241.i32[2] = v2258[45].i32[0];
  v2241.i32[3] = v2258[61].i32[0];
  *&STACK[0x1F40] = vmlaq_f32(v2263, v2086, v2241);
  *&STACK[0x1F30] = vmlaq_f32(v2264, v2086, v2248);
  v2267 = vmlaq_f32(v2266, v2141, v2241);
  v2268 = vmlaq_f32(v2265, v2141, v2248);
  v2269 = vmulq_f32(v2241, v2144);
  v2270 = vmulq_f32(v2248, v2144);
  v2248.i32[0] = vdupq_laneq_s32(v2252[16], 3).u32[0];
  v2248.i32[1] = v2252[32].i32[3];
  v2248.i32[2] = v2252[48].i32[3];
  v2248.i32[3] = v2252[64].i32[3];
  v2241.i64[0] = vzip1q_s32(v2258[15], v2258[31]).u64[0];
  v2241.i32[2] = v2258[47].i32[0];
  v2241.i32[3] = v2258[63].i32[0];
  *&STACK[0x1F60] = vmlaq_f32(v2267, _Q7, v2241);
  *&STACK[0x1F50] = vmlaq_f32(v2268, _Q7, v2248);
  v2267.i32[0] = vdupq_laneq_s32(v2252[18], 3).u32[0];
  v2267.i32[1] = v2252[34].i32[3];
  v2267.i32[2] = v2252[50].i32[3];
  v2267.i32[3] = v2252[66].i32[3];
  v2268.i64[0] = vzip1q_s32(v2258[17], v2258[33]).u64[0];
  v2268.i32[2] = v2258[49].i32[0];
  v2268.i32[3] = v2258[65].i32[0];
  v2271 = vmlaq_f32(vmlaq_f32(v2269, v2164, v2241), v2164, v2268);
  v2272 = vmlaq_f32(vmlaq_f32(v2270, v2164, v2248), v2164, v2267);
  v2273 = vmulq_f32(v2268, _Q7);
  v2274 = vmulq_f32(v2267, _Q7);
  _Q7.i32[0] = vdupq_laneq_s32(v2252[20], 3).u32[0];
  _Q7.i32[1] = v2252[36].i32[3];
  _Q7.i32[2] = v2252[52].i32[3];
  _Q7.i32[3] = v2252[68].i32[3];
  v2164.i64[0] = vzip1q_s32(v2258[19], v2258[35]).u64[0];
  v2164.i32[2] = v2258[51].i32[0];
  v2164.i32[3] = v2258[67].i32[0];
  *&STACK[0x1F80] = vmlaq_f32(v2271, v2144, v2164);
  *&STACK[0x1F70] = vmlaq_f32(v2272, v2144, _Q7);
  v2275 = vmlaq_f32(v2274, v2141, _Q7);
  v2276 = vmlaq_f32(v2273, v2141, v2164);
  v2141.i32[0] = vdupq_laneq_s32(v2252[22], 3).u32[0];
  v2141.i32[1] = v2252[38].i32[3];
  v2141.i32[2] = v2252[54].i32[3];
  v2141.i32[3] = v2252[70].i32[3];
  v2289.i64[0] = vzip1q_s32(v2258[21], v2258[37]).u64[0];
  v2289.i32[2] = v2258[53].i32[0];
  v2289.i32[3] = v2258[69].i32[0];
  v2277 = vmlaq_f32(v2276, v2118, v2289);
  v2278 = vmlaq_f32(v2275, v2118, v2141);
  v2279 = vmlaq_f32(vmulq_f32(_Q7, v2086), _Q1, v2141);
  v2118.i32[0] = vdupq_laneq_s32(v2252[24], 3).u32[0];
  v2118.i32[1] = v2252[40].i32[3];
  v2118.i32[2] = v2252[56].i32[3];
  v2118.i32[3] = v2252[72].i32[3];
  v2141.i64[0] = vzip1q_s32(v2258[23], v2258[39]).u64[0];
  v2141.i32[2] = v2258[55].i32[0];
  v2141.i32[3] = v2258[71].i32[0];
  *&STACK[0x1FA0] = vmlaq_f32(v2277, v2093, v2141);
  *&STACK[0x1F90] = vmlaq_f32(v2278, v2093, v2118);
  v2280 = vmlaq_f32(v2279, _Q2, v2118);
  v2281 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2164, v2086), _Q1, v2289), _Q2, v2141);
  _Q2.i32[0] = vdupq_laneq_s32(v2257[10], 3).u32[0];
  _Q2.i32[1] = v2257[26].i32[3];
  _Q2.i32[2] = v2257[42].i32[3];
  _Q2.i32[3] = v2257[58].i32[3];
  v2093.i64[0] = vzip1q_s32(v2240[9], v2240[25]).u64[0];
  v2093.i32[2] = v2240[41].i32[0];
  v2093.i32[3] = v2240[57].i32[0];
  v2282 = vmlaq_f32(v2281, _Q1, v2093);
  v2283 = vmlaq_f32(v2280, _Q1, _Q2);
  _Q1.i32[0] = vdupq_laneq_s32(v2257[12], 3).u32[0];
  _Q1.i32[1] = v2257[28].i32[3];
  _Q1.i32[2] = v2257[44].i32[3];
  _Q1.i32[3] = v2257[60].i32[3];
  v2288.i64[0] = vzip1q_s32(v2240[11], v2240[27]).u64[0];
  v2288.i32[2] = v2240[43].i32[0];
  v2288.i32[3] = v2240[59].i32[0];
  v2284 = vmlaq_f32(v2282, v2086, v2288);
  v2285 = &STACK[0x4D0];
  v2286 = &STACK[0x5D0];
  v2287 = &STACK[0x650];
  v2288.i64[1] = 0x3D3000003F090000;
  v2289.i64[1] = 0x7060504FFFFFFFFLL;
  v2290 = &STACK[0x550];
  v2291 = &STACK[0x650];
  *&STACK[0x1FC0] = v2284;
  *&STACK[0x1FB0] = vmlaq_f32(v2283, v2086, _Q1);
  __asm { FMOV            V8.4S, #0.16406 }

  do
  {
    v2293 = *(&STACK[0x22F0] + v2083);
    v2294 = *(&STACK[0x22F0] + v2083 + 16);
    v2295 = *(&STACK[0x21F0] + v2083);
    v2296 = *(&STACK[0x21F0] + v2083 + 16);
    v2297 = *(&STACK[0x20F0] + v2083);
    v2298 = *(&STACK[0x20F0] + v2083 + 16);
    v2299 = vmulq_f32(*(&STACK[0x1F30] + v2083 + 16), _Q8);
    v2300 = vmulq_f32(*(&STACK[0x1F30] + v2083), _Q8);
    v2301 = vzip2q_s32(v2300, v2299);
    v2302 = vzip1q_s32(v2300, v2299);
    v2303 = vpaddq_f32(vmulq_f32(v2293, xmmword_298496180), vmulq_f32(v2294, xmmword_298496170));
    v2304 = *(&STACK[0x2010] + v2083);
    v2305 = *(&STACK[0x2010] + v2083 + 16);
    v2306 = vpaddq_f32(vmulq_f32(v2295, xmmword_298496180), vmulq_f32(v2296, xmmword_298496170));
    v2307 = vpaddq_f32(vmulq_f32(v2297, xmmword_298496180), vmulq_f32(v2298, xmmword_298496170));
    v2308 = vpaddq_f32(vmulq_f32(v2304, xmmword_298496180), vmulq_f32(v2305, xmmword_298496170));
    v2309 = vpaddq_f32(vpaddq_f32(vmulq_f32(v2293, xmmword_2984961A0), vmulq_f32(v2293, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v2294, xmmword_298496190), vmulq_f32(v2294, xmmword_2984961B0)));
    v2310 = vpaddq_f32(vpaddq_f32(vmulq_f32(v2295, xmmword_2984961A0), vmulq_f32(v2295, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v2296, xmmword_298496190), vmulq_f32(v2296, xmmword_2984961B0)));
    v2311 = vpaddq_f32(vpaddq_f32(vmulq_f32(v2297, xmmword_2984961A0), vmulq_f32(v2297, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v2298, xmmword_298496190), vmulq_f32(v2298, xmmword_2984961B0)));
    v2312 = vpaddq_f32(vpaddq_f32(vmulq_f32(v2304, xmmword_2984961A0), vmulq_f32(v2304, xmmword_2984961C0)), vpaddq_f32(vmulq_f32(v2305, xmmword_298496190), vmulq_f32(v2305, xmmword_2984961B0)));
    v2313 = vaddq_f32(vaddq_f32(v2308, vqtbl1q_s8(v2308, xmmword_298495EB0)), vqtbl1q_s8(v2301, xmmword_298495ED0));
    v2314 = vaddq_f32(v2312, vqtbl1q_s8(v2312, xmmword_2984961D0));
    v2315 = vextq_s8(v2313, v2313, 4uLL);
    v2316 = vextq_s8(vextq_s8(v2315, v2314, 8uLL), v2315, 4uLL);
    v2313.i32[1] = v2314.i32[2];
    v2317 = vaddq_f32(vaddq_f32(v2307, vqtbl1q_s8(v2307, xmmword_298495EB0)), vqtbl1q_s8(v2301, xmmword_298495EC0));
    v2318 = vaddq_f32(v2311, vqtbl1q_s8(v2311, xmmword_2984961D0));
    v2319 = vextq_s8(v2317, v2317, 4uLL);
    v2317.i32[1] = v2318.i32[2];
    v2320 = vaddq_f32(vaddq_f32(v2306, vqtbl1q_s8(v2306, xmmword_298495EB0)), vqtbl1q_s8(v2302, xmmword_298495ED0));
    v2321 = vaddq_f32(v2310, vqtbl1q_s8(v2310, xmmword_2984961D0));
    v2322 = vaddq_f32(vaddq_f32(v2303, vqtbl1q_s8(v2303, xmmword_298495EB0)), vqtbl1q_s8(v2302, xmmword_298495EC0));
    v2323 = vaddq_f32(v2309, vqtbl1q_s8(v2309, xmmword_2984961D0));
    v2324 = vextq_s8(v2322, v2322, 4uLL);
    v2322.i32[1] = v2323.i32[2];
    *v2285 = vextq_s8(vextq_s8(v2324, v2323, 8uLL), v2324, 4uLL);
    *(v2285 + 1) = vuzp2q_s32(v2322, v2322);
    v2325 = vextq_s8(v2320, v2320, 4uLL);
    v2320.i32[1] = v2321.i32[2];
    *v2290 = vextq_s8(vextq_s8(v2325, v2321, 8uLL), v2325, 4uLL);
    *(v2290 + 1) = vuzp2q_s32(v2320, v2320);
    *v2286 = vextq_s8(vextq_s8(v2319, v2318, 8uLL), v2319, 4uLL);
    *(v2286 + 1) = vuzp2q_s32(v2317, v2317);
    *v2291 = v2316;
    *(v2291 + 1) = vuzp2q_s32(v2313, v2313);
    v2291 += 3;
    v2286 += 3;
    v2290 += 3;
    v2285 += 3;
    v2083 += 32;
  }

  while (v2083 != 160);
  *&STACK[0x440] = *v11;
  v2326 = *(v11 + 32);
  STACK[0x460] = v2326;
  STACK[0x468] = v11;
  v2327 = *(v11 + 135);
  LOBYTE(STACK[0x4C7]) = v2327;
  if (!v2327)
  {
    v2328 = *&STACK[0x650];
    v2288 = *&STACK[0x660];
    v2329 = vminnmq_f32(*&STACK[0x4E0], *&STACK[0x660]);
    *&STACK[0x4D0] = vminnmq_f32(*&STACK[0x4D0], *&STACK[0x650]);
    *&STACK[0x4E0] = v2329;
    v2331 = *&STACK[0x670];
    v2330 = *&STACK[0x680];
    v2332 = vminnmq_f32(*&STACK[0x500], *&STACK[0x680]);
    *&STACK[0x4F0] = vminnmq_f32(*&STACK[0x4F0], *&STACK[0x670]);
    *&STACK[0x500] = v2332;
    v2333 = *&STACK[0x690];
    v2289 = *&STACK[0x6A0];
    v2334 = vminnmq_f32(*&STACK[0x520], *&STACK[0x6A0]);
    *&STACK[0x510] = vminnmq_f32(*&STACK[0x510], *&STACK[0x690]);
    *&STACK[0x520] = v2334;
    v2336 = *&STACK[0x6B0];
    v2335 = *&STACK[0x6C0];
    v2337 = vminnmq_f32(*&STACK[0x540], *&STACK[0x6C0]);
    *&STACK[0x530] = vminnmq_f32(*&STACK[0x530], *&STACK[0x6B0]);
    *&STACK[0x540] = v2337;
    v2338 = vminnmq_f32(*&STACK[0x560], v2288);
    *&STACK[0x550] = vminnmq_f32(*&STACK[0x550], v2328);
    *&STACK[0x560] = v2338;
    v2339 = vminnmq_f32(*&STACK[0x580], v2330);
    *&STACK[0x570] = vminnmq_f32(*&STACK[0x570], v2331);
    *&STACK[0x580] = v2339;
    v2340 = vminnmq_f32(*&STACK[0x5A0], v2289);
    *&STACK[0x590] = vminnmq_f32(*&STACK[0x590], v2333);
    *&STACK[0x5A0] = v2340;
    v2341 = vminnmq_f32(*&STACK[0x5C0], v2335);
    *&STACK[0x5B0] = vminnmq_f32(*&STACK[0x5B0], v2336);
    *&STACK[0x5C0] = v2341;
    v2342 = vminnmq_f32(*&STACK[0x5E0], v2288);
    *&STACK[0x5D0] = vminnmq_f32(*&STACK[0x5D0], v2328);
    *&STACK[0x5E0] = v2342;
    v2343 = vminnmq_f32(*&STACK[0x600], v2330);
    *&STACK[0x5F0] = vminnmq_f32(*&STACK[0x5F0], v2331);
    *&STACK[0x600] = v2343;
    v2344 = vminnmq_f32(*&STACK[0x620], v2289);
    *&STACK[0x610] = vminnmq_f32(*&STACK[0x610], v2333);
    *&STACK[0x620] = v2344;
    v2345 = vminnmq_f32(*&STACK[0x640], v2335);
    *&STACK[0x630] = vminnmq_f32(*&STACK[0x630], v2336);
    *&STACK[0x640] = v2345;
  }

  if (*&STACK[0x4BC] < 0.0)
  {
    v2346 = 0;
    v2347 = 0uLL;
    v2288.i64[0] = 96;
    v2348 = 0uLL;
    do
    {
      v2349 = xmmword_2984959B0;
      if (v2326)
      {
        v2349 = *v2326;
      }

      v2350 = (&STACK[0x440] + v2346);
      v2352 = *(&STACK[0x440] + v2346 + 144);
      v2351 = *(&STACK[0x440] + v2346 + 160);
      v2354 = *(&STACK[0x440] + v2346 + 272);
      v2353 = *(&STACK[0x440] + v2346 + 288);
      v2356 = *(&STACK[0x440] + v2346 + 400);
      v2355 = *(&STACK[0x440] + v2346 + 416);
      v2357 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2353, *v2349.f32, 1), v2351, v2349.f32[0]), v2355, v2349, 2);
      v2358 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2354, *v2349.f32, 1), v2352, v2349.f32[0]), v2356, v2349, 2);
      v2350[79] = v2358;
      v2350[80] = v2357;
      v2359 = vsubq_f32(v2352, v2358);
      v2360 = vsubq_f32(v2351, v2357);
      v2361 = vsubq_f32(v2353, v2357);
      v2362 = vsubq_f32(v2354, v2358);
      v2363 = vsubq_f32(v2355, v2357);
      v2364 = vsubq_f32(v2356, v2358);
      v2365 = vmlaq_f32(vmulq_f32(v2362, v2362), v2359, v2359);
      v2289 = vmlaq_f32(vmlaq_f32(vmulq_f32(v2361, v2361), v2360, v2360), v2363, v2363);
      v2359.i64[0] = v2346;
      v2348 = vaddq_f32(v2348, vbslq_s8(vdupq_lane_s64(vceqq_s64(v2359, v2288).i64[0], 0), v2289.u64[0], v2289));
      v2347 = vaddq_f32(v2347, vmlaq_f32(v2365, v2364, v2364));
      v2346 += 32;
    }

    while (v2346 != 128);
    v2366 = vaddq_f32(v2347, v2348);
    v2366.i64[0] = vpaddq_f32(v2366, v2366).u64[0];
    v2366.f32[0] = vrecpes_f32(vpadd_f32(*v2366.f32, *v2366.f32).f32[0]);
    *&STACK[0x4BC] = (v2366.f32[0] * 3.0) + (v2366.f32[0] * 3.0);
  }

  if (SLOBYTE(STACK[0x4C6]) < 0)
  {
    v2367 = 0uLL;
    v2368 = 528;
    v2369 = vdupq_n_s32(0x3B808081u);
    v2288.i64[0] = 624;
    v2370 = 0uLL;
    do
    {
      v2371 = (&STACK[0x440] + v2368);
      v2372 = vcgeq_f32(v2369, *(&STACK[0x440] + v2368));
      v2373 = vcgeq_f32(v2369, *(&STACK[0x440] + v2368 + 16));
      v2289.i64[0] = v2368;
      v2289 = vdupq_lane_s64(vceqq_s64(v2289, v2288).i64[0], 0);
      v2371[38] = v2372;
      v2371[39] = v2373;
      v2370 = vsubq_s32(v2370, vbslq_s8(v2289, v2373.u64[0], v2373));
      v2367 = vsubq_s32(v2367, v2372);
      v2368 += 32;
    }

    while (v2368 != 656);
    v2374 = vaddq_s32(v2367, v2370);
    v2374.i64[0] = vpaddq_s32(v2374, v2374).u64[0];
    LOBYTE(STACK[0x4C6]) = vpadd_s32(*v2374.i8, *v2374.i8).u8[0];
  }

  for (m = 656; ; m += 128)
  {
    v2377 = *(v2287 - 24);
    v2376 = *(v2287 - 23);
    v2379 = *(v2287 - 16);
    v2378 = *(v2287 - 15);
    v2381 = *(v2287 - 8);
    v2380 = *(v2287 - 7);
    v2383 = *v2287;
    v2382 = *(v2287 + 1);
    v4110.val[0] = vzip1q_s32(v2376, v2380);
    v4110.val[1] = vzip1q_s32(v2378, v2382);
    v4111.val[0] = vzip1q_s32(v2377, v2381);
    v4111.val[1] = vzip1q_s32(v2379, *v2287);
    v2384 = (&STACK[0x440] + m);
    vst2q_f32(v2384, v4111);
    v2384 += 8;
    v4111.val[0] = vzip2q_s32(v2377, v2381);
    v4111.val[1] = vzip2q_s32(v2379, v2383);
    vst2q_f32(v2384, v4111);
    v2385 = (&STACK[0x440] + m + 64);
    vst2q_f32(v2385, v4110);
    if (m == 1040)
    {
      break;
    }

    v4107.val[0] = vzip2q_s32(v2376, v2380);
    v4107.val[1] = vzip2q_s32(v2378, v2382);
    v2386 = (&STACK[0x440] + m + 96);
    vst2q_f32(v2386, v4107);
    v2287 += 4;
  }

  v2387 = 0;
  v2388 = *&STACK[0x4E0];
  v2389 = *&STACK[0x4D0];
  v2390 = *&STACK[0x550];
  v2391 = *&STACK[0x560];
  v2392 = *&STACK[0x5D0];
  v2393 = *&STACK[0x5E0];
  v2394 = vmulq_f32(v2388, v2388);
  v2395 = vmulq_f32(v2389, v2389);
  v2396 = *&STACK[0x650];
  v2397 = *&STACK[0x660];
  v2398 = vmulq_f32(v2391, v2391);
  v2399 = vmulq_f32(v2390, v2390);
  v2400 = vmulq_f32(v2393, v2393);
  v2401 = vmulq_f32(v2392, v2392);
  v2402 = vmulq_f32(v2397, v2397);
  v2403 = vmulq_f32(v2396, v2396);
  do
  {
    v2404 = (&STACK[0x440] + v2387);
    v2405 = *(&STACK[0x440] + v2387 + 192);
    v2406 = *(&STACK[0x440] + v2387 + 320);
    v2407 = *(&STACK[0x440] + v2387 + 448);
    v2408 = *(&STACK[0x440] + v2387 + 576);
    if (v2387 == 64)
    {
      v2408.i64[1] = 0;
      v2407.i64[1] = 0;
      v2406.i64[1] = 0;
      v2405.i64[1] = 0;
    }

    v2409 = v2404[11];
    v2410 = v2404[19];
    v2411 = v2404[27];
    v2412 = v2404[35];
    v2389 = vaddq_f32(v2389, v2409);
    v2388 = vaddq_f32(v2388, v2405);
    v2390 = vaddq_f32(v2390, v2410);
    v2391 = vaddq_f32(v2391, v2406);
    v2392 = vaddq_f32(v2392, v2411);
    v2393 = vaddq_f32(v2393, v2407);
    v2396 = vaddq_f32(v2396, v2412);
    v2397 = vaddq_f32(v2397, v2408);
    v2395 = vmlaq_f32(v2395, v2409, v2409);
    v2394 = vmlaq_f32(v2394, v2405, v2405);
    v2399 = vmlaq_f32(v2399, v2410, v2410);
    v2398 = vmlaq_f32(v2398, v2406, v2406);
    v2401 = vmlaq_f32(v2401, v2411, v2411);
    v2400 = vmlaq_f32(v2400, v2407, v2407);
    v2403 = vmlaq_f32(v2403, v2412, v2412);
    v2387 += 32;
    v2402 = vmlaq_f32(v2402, v2408, v2408);
  }

  while (v2387 != 96);
  v4055 = _Q8;
  v2413 = vpaddq_f32(vpaddq_f32(vaddq_f32(v2389, v2388), vaddq_f32(v2390, v2391)), vpaddq_f32(vaddq_f32(v2392, v2393), vaddq_f32(v2396, v2397)));
  v2414 = vmulq_f32(v2413, vdupq_n_s32(0x3D088889u));
  v2415 = vmlsq_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v2395, v2394), vaddq_f32(v2399, v2398)), vpaddq_f32(vaddq_f32(v2401, v2400), vaddq_f32(v2403, v2402))), v2414, v2413);
  *&STACK[0x450] = v2414;
  v2415.i64[0] = vpaddq_f32(v2415, v2415).u64[0];
  LODWORD(STACK[0x4B8]) = vpadd_f32(*v2415.f32, *v2415.f32).u32[0];
  if (SLOBYTE(STACK[0x4C8]) < 1)
  {
    LOBYTE(STACK[0x4C8]) = v2414.f32[3] >= 0.99993;
  }

  memcpy(&STACK[0x1440], &STACK[0x440], 0x570uLL);
  v2420 = *&STACK[0x1450];
  v2421 = SLOBYTE(STACK[0x14C6]);
  v2422 = LOBYTE(STACK[0x14C7]);
  if (v2421 >= 1 && LOBYTE(STACK[0x14C7]))
  {
    v2423 = 0;
    v2424 = vcgezq_s32(*&STACK[0x18B0]);
    v2425 = vcgezq_s32(*&STACK[0x18C0]);
    v2426 = vandq_s8(*&STACK[0x14E0], v2425);
    v2427 = vandq_s8(*&STACK[0x14D0], v2424);
    v2428 = vandq_s8(*&STACK[0x1560], v2425);
    v2429 = vandq_s8(*&STACK[0x1550], v2424);
    v2430 = vandq_s8(*&STACK[0x15E0], v2425);
    v2416 = vandq_s8(*&STACK[0x15D0], v2424);
    v2432 = *&STACK[0x1650];
    v2417 = vandq_s8(*&STACK[0x1660], v2425);
    v2431 = vandq_s8(*&STACK[0x1650], v2424);
    v2432.i64[0] = 64;
    do
    {
      v2418.i64[0] = v2423;
      v2433.i64[0] = *(&STACK[0x1440] + v2423 + 1184);
      v2433.i64[1] = -1;
      v2434 = vcgezq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v2418, v2432).i64[0], 0), v2433, *(&STACK[0x1440] + v2423 + 1184)));
      v2435 = vcgezq_s32(*(&STACK[0x1440] + v2423 + 1168));
      v2427 = vaddq_f32(v2427, vandq_s8(*(&STACK[0x1440] + v2423 + 176), v2435));
      v2426 = vaddq_f32(v2426, vandq_s8(*(&STACK[0x1440] + v2423 + 192), v2434));
      v2429 = vaddq_f32(v2429, vandq_s8(*(&STACK[0x1440] + v2423 + 304), v2435));
      v2428 = vaddq_f32(v2428, vandq_s8(*(&STACK[0x1440] + v2423 + 320), v2434));
      v2416 = vaddq_f32(v2416, vandq_s8(*(&STACK[0x1440] + v2423 + 432), v2435));
      v2430 = vaddq_f32(v2430, vandq_s8(*(&STACK[0x1440] + v2423 + 448), v2434));
      v2418 = vandq_s8(*(&STACK[0x1440] + v2423 + 560), v2435);
      v2431 = vaddq_f32(v2431, v2418);
      v2417 = vaddq_f32(v2417, vandq_s8(*(&STACK[0x1440] + v2423 + 576), v2434));
      v2423 += 32;
    }

    while (v2423 != 96);
    v2420 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v2427, v2426), vaddq_f32(v2429, v2428)), vpaddq_f32(vaddq_f32(v2416, v2430), vaddq_f32(v2431, v2417))), ReciprocalTable[30 - v2421]);
  }

  v2436 = *v10;
  v2437 = LOBYTE(STACK[0x14C8]);
  v2438 = *&STACK[0x14BC] <= 900.0;
  v2439 = vdupq_lane_s32(*v2420.f32, 0);
  v2440 = vdupq_lane_s32(*v2420.f32, 1);
  *&STACK[0x380] = vdupq_laneq_s32(v2420, 2);
  *&STACK[0x390] = vdupq_laneq_s32(v2420, 3);
  STACK[0x310] = &STACK[0x1550];
  v4092 = v2420;
  v4067 = v2440;
  v4068 = v2439;
  v4056 = v2436;
  if (v2438)
  {
    v2457 = 0;
    v2458 = xmmword_298495620;
    v2459 = xmmword_298495600;
    v2460.i64[0] = -1;
    v2460.i64[1] = -1;
    v2461.i64[0] = 0x7F0000007FLL;
    v2461.i64[1] = 0x7F0000007FLL;
    v2462 = STACK[0x1460];
    v2416.i64[0] = 96;
    v2463.i64[0] = 0x800000008;
    v2463.i64[1] = 0x800000008;
    v2464.i64[0] = 0x7F0000007FLL;
    v2464.i64[1] = 0x7F0000007FLL;
    v2465.i64[0] = 0x7F0000007FLL;
    v2465.i64[1] = 0x7F0000007FLL;
    v2466.i64[0] = -1;
    v2466.i64[1] = -1;
    while (1)
    {
      v2467 = vsubq_f32(*(&STACK[0x1440] + v2457 + 144), v2439);
      v2468 = vsubq_f32(*(&STACK[0x1440] + v2457 + 160), v2439);
      v2469 = vsubq_f32(*(&STACK[0x1440] + v2457 + 272), v2440);
      v2470 = vsubq_f32(*(&STACK[0x1440] + v2457 + 288), v2440);
      v2471 = vsubq_f32(*(&STACK[0x1440] + v2457 + 400), *&STACK[0x380]);
      v2472 = vsubq_f32(*(&STACK[0x1440] + v2457 + 416), *&STACK[0x380]);
      v2473 = vsubq_f32(*(&STACK[0x1440] + v2457 + 528), *&STACK[0x390]);
      v2474 = vsubq_f32(*(&STACK[0x1440] + v2457 + 544), *&STACK[0x390]);
      v2475 = vmulq_f32(v2468, v2468);
      v2476 = vmulq_f32(v2467, v2467);
      v2477 = vmulq_f32(v2470, v2470);
      v2478 = vmulq_f32(v2469, v2469);
      v2479 = vmulq_f32(v2472, v2472);
      v2480 = vmulq_f32(v2471, v2471);
      v2481 = vmulq_f32(v2474, v2474);
      v2482 = vmulq_f32(v2473, v2473);
      if (!v2462)
      {
        break;
      }

      v2483 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2477, *v2462, 1), v2475, COERCE_FLOAT(*v2462->f32)), v2479, *v2462->f32, 2), v2481, *v2462->f32, 3), *&STACK[0x3A0]);
      v2484 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v2478, *v2462, 1), v2476, COERCE_FLOAT(*v2462->f32)), v2480, *v2462->f32, 2), v2482, *v2462->f32, 3), *&STACK[0x3A0]);
      if (v2422)
      {
        goto LABEL_499;
      }

LABEL_500:
      v2480.i64[0] = v2457;
      v2485 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2480, v2416).i64[0], 0), v2483.u64[0], v2483);
      v2466 = vbslq_s8(vcgtq_f32(v2485, v2465), v2458, v2466);
      v2460 = vbslq_s8(vcgtq_f32(v2484, v2464), v2459, v2460);
      v2464 = vmaxnmq_f32(v2464, v2484);
      v2465 = vmaxnmq_f32(v2465, v2485);
      v2459 = vaddq_s32(v2459, v2463);
      v2458 = vaddq_s32(v2458, v2463);
      v2457 += 32;
      if (v2457 == 128)
      {
        if (v2437)
        {
          v2486 = 0;
        }

        else
        {
          v2486 = -1;
        }

        v2487 = vmaxnmq_f32(v2464, v2465);
        v2488 = vbslq_s8(vcgtq_f32(v2464, v2465), v2460, v2466);
        v2489 = vextq_s8(v2487, v2487, 8uLL);
        v2490 = vbslq_s8(vcgtq_f32(v2487, v2489), v2488, vextq_s8(v2488, v2488, 8uLL));
        v2491 = vmaxnmq_f32(v2487, v2489);
        v2492 = vcgtq_f32(v2491, vrev64q_s32(v2491));
        v2493 = vbslq_s8(v2492, v2490, vdupq_lane_s32(*v2490.i8, 1)).u32[0];
        v2494 = *(&STACK[0x16D0] + v2493);
        v2495 = vsubq_f32(v2420, v2494);
        if (v2462)
        {
          v2496 = *v2462->f32;
        }

        else
        {
          v2496 = vdupq_n_s32(0x3EAAAAABu);
        }

        v2498 = 0;
        v2499 = xmmword_298495620;
        v2492.i64[0] = 96;
        STACK[0x350] = v2493;
        v2500 = vdupq_lane_s32(*v2494.f32, 0);
        v2501 = vdupq_lane_s32(*v2494.f32, 1);
        v2502 = vmulq_f32(v2495, v2496);
        v2503.i64[0] = -1;
        v2503.i64[1] = -1;
        v2504 = vdupq_laneq_s32(v2494, 2);
        *&STACK[0x370] = v2494;
        v2505 = vdupq_laneq_s32(v2494, 3);
        v2506.i64[0] = 0x7F0000007FLL;
        v2506.i64[1] = 0x7F0000007FLL;
        v2507.i64[0] = 0x800000008;
        v2507.i64[1] = 0x800000008;
        v2508 = vdupq_lane_s32(*v2502.i8, 0);
        v2509 = vdupq_laneq_s32(v2502, 2);
        v2510.i64[0] = 0x7F0000007FLL;
        v2510.i64[1] = 0x7F0000007FLL;
        v2511 = vdupq_laneq_s32(v2502, 3);
        v2512.i64[0] = 0x7F0000007FLL;
        v2512.i64[1] = 0x7F0000007FLL;
        v2513.i64[0] = -1;
        v2513.i64[1] = -1;
        v2514 = xmmword_298495600;
        do
        {
          v2515 = (&STACK[0x1440] + v2498);
          v2516 = vsubq_f32(*(&STACK[0x1440] + v2498 + 144), v2500);
          v2517 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v2498 + 288), v2501), *v2502.i8, 1), v2508, vsubq_f32(*(&STACK[0x1440] + v2498 + 160), v2500)), v2509, vsubq_f32(*(&STACK[0x1440] + v2498 + 416), v2504)), v2511, vsubq_f32(*(&STACK[0x1440] + v2498 + 544), v2505));
          v2518 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v2498 + 272), v2501), *v2502.i8, 1), v2508, v2516), v2509, vsubq_f32(*(&STACK[0x1440] + v2498 + 400), v2504)), v2511, vsubq_f32(*(&STACK[0x1440] + v2498 + 528), v2505));
          if (v2422)
          {
            v2516 = vcltzq_s32(v2515[72]);
            v2517 = vbslq_s8(v2516, v2506, v2517);
            v2518 = vbslq_s8(vcltzq_s32(v2515[71]), v2506, v2518);
          }

          v2516.i64[0] = v2498;
          v2519 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2516, v2492).i64[0], 0), v2517.u64[0], v2517);
          v2513 = vbslq_s8(vcgtq_f32(v2519, v2512), v2499, v2513);
          v2503 = vbslq_s8(vcgtq_f32(v2518, v2510), v2514, v2503);
          v2510 = vmaxnmq_f32(v2510, v2518);
          v2512 = vmaxnmq_f32(v2512, v2519);
          v2514 = vaddq_s32(v2514, v2507);
          v2499 = vaddq_s32(v2499, v2507);
          v2498 += 32;
        }

        while (v2498 != 128);
        v2520 = vmaxnmq_f32(v2510, v2512);
        v2521 = vbslq_s8(vcgtq_f32(v2510, v2512), v2503, v2513);
        v2522 = vextq_s8(v2520, v2520, 8uLL);
        v2523 = vbslq_s8(vcgtq_f32(v2520, v2522), v2521, vextq_s8(v2521, v2521, 8uLL));
        v2524 = vmaxnmq_f32(v2520, v2522);
        v2525 = vbslq_s8(vcgtq_f32(v2524, vrev64q_s32(v2524)), v2523, vdupq_lane_s32(*v2523.i8, 1)).i32[0];
        *&STACK[0x360] = *(&STACK[0x16D0] + v2525);
        if (v2437)
        {
          v2526 = 3;
        }

        else
        {
          v2526 = 4;
        }

        if (v2437)
        {
          v2527 = 6;
        }

        else
        {
          v2527 = 8;
        }

        v2528 = WeightInfoForSingleLineSingleWeight_6x5(30, v2527);
        v2530 = *&STACK[0x360];
        v2529 = *&STACK[0x370];
        v2531 = 0;
        v2532 = ReciprocalTable[BYTE4(v2528)];
        *v2533.i32 = v2532 * (vcvts_n_f32_u32(v2526 + v2486, 2uLL) * v2532);
        v2534 = vsubq_f32(*&STACK[0x360], *&STACK[0x370]);
        v2535.i64[0] = 0x8000000080000000;
        v2535.i64[1] = 0x8000000080000000;
        v2536 = vdupq_n_s32(0x3B808081u);
        v2537 = vbslq_s8(vcgtq_f32(v2536, vabdq_f32(*&STACK[0x360], *&STACK[0x370])), vorrq_s8(vandq_s8(v2534, v2535), v2536), v2534);
        __asm { FMOV            V1.4S, #1.0 }

        *&STACK[0x340] = _Q1;
        v2539 = vdivq_f32(_Q1, v2537);
        v2540 = vdupq_lane_s32(*v2539.f32, 0);
        v2541 = vmulq_f32(v2529, v2539);
        v2542 = vnegq_f32(vdupq_lane_s32(*v2541.i8, 0));
        v2543.i32[0] = v2539.i32[1];
        v2544 = vdupq_lane_s32(*v2539.f32, 1);
        v2545 = vnegq_f32(vdupq_lane_s32(*v2541.i8, 1));
        v2546.i32[0] = v2539.i32[2];
        v2547 = vdupq_laneq_s32(v2539, 2);
        v2548 = vnegq_f32(vdupq_laneq_s32(v2541, 2));
        v2549.i32[0] = v2539.i32[3];
        v2550 = vdupq_laneq_s32(v2539, 3);
        v2551 = vnegq_f32(vdupq_laneq_s32(v2541, 3));
        v2552 = vdupq_lane_s32(v2533, 0);
        v2553 = 0uLL;
        v2554 = STACK[0x310];
        v2555 = 0uLL;
        do
        {
          v2556 = vmlaq_f32(v2542, v2540, v2554[-8]);
          v2557 = vmlaq_f32(v2542, v2540, v2554[-7]);
          v2558 = vmlaq_f32(v2545, v2544, v2554[1]);
          v2559 = vmlaq_f32(v2545, v2544, *v2554);
          v2560 = vmlaq_f32(v2548, v2547, v2554[9]);
          v2561 = vmlaq_f32(v2548, v2547, v2554[8]);
          v2562 = vmlaq_f32(v2551, v2550, v2554[16]);
          v2563 = vmlaq_f32(v2551, v2550, v2554[17]);
          v2564 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2558, v2558), v2557, v2557), v2560, v2560), v2563, v2563);
          v2565 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2559, v2559), v2556, v2556), v2561, v2561), v2562, v2562);
          v2566 = vcgtq_f32(v2552, v2564);
          v2556.i64[0] = v2531;
          v2561.i64[0] = 3;
          v2567 = vcgtq_f32(v2552, v2565);
          v2568 = &STACK[0x440] + 4 * v2531;
          v2569 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2556, v2561).i64[0], 0), v2566.u64[0], v2566);
          *v2568 = v2567;
          *(v2568 + 1) = v2569;
          v2555 = vsubq_s32(v2555, v2569);
          v2553 = vsubq_s32(v2553, v2567);
          ++v2531;
          v2554 += 2;
        }

        while (v2531 != 4);
        v2570 = vaddq_s32(v2553, v2555);
        v2570.i64[0] = vpaddq_s32(v2570, v2570).u64[0];
        v2571 = vpadd_s32(*v2570.i8, *v2570.i8).u8[0];
        if ((v2571 & 0xFE) != 0)
        {
          v2572 = 0;
          v2573 = vcltzq_s32(*&STACK[0x440]);
          v2574 = vcltzq_s32(*&STACK[0x450]);
          v2575 = vandq_s8(v2574, *&STACK[0x14E0]);
          v2576 = vandq_s8(v2573, *&STACK[0x14D0]);
          v620 = STACK[0x310];
          v2577 = vandq_s8(*(STACK[0x310] + 16), v2574);
          v2578 = vandq_s8(*STACK[0x310], v2573);
          v2579 = vandq_s8(*(STACK[0x310] + 144), v2574);
          v2580 = vandq_s8(*(STACK[0x310] + 128), v2573);
          v2583 = *(STACK[0x310] + 256);
          v2581 = vandq_s8(*(STACK[0x310] + 272), v2574);
          v2582 = vandq_s8(v2583, v2573);
          v2583.i64[0] = 64;
          v10 = v4104;
          do
          {
            v2564.i64[0] = v2572;
            v2584 = vcltzq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v2564, v2583).i64[0], 0), *(&STACK[0x460] + v2572 + 16), *(&STACK[0x460] + v2572 + 16)));
            v2585 = vcltzq_s32(*(&STACK[0x460] + v2572));
            v2576 = vaddq_f32(v2576, vandq_s8(v2585, *(&STACK[0x1440] + v2572 + 176)));
            v2575 = vaddq_f32(v2575, vandq_s8(v2584, *(&STACK[0x1440] + v2572 + 192)));
            v2578 = vaddq_f32(v2578, vandq_s8(v2585, *(&STACK[0x1440] + v2572 + 304)));
            v2577 = vaddq_f32(v2577, vandq_s8(v2584, *(&STACK[0x1440] + v2572 + 320)));
            v2580 = vaddq_f32(v2580, vandq_s8(*(&STACK[0x1440] + v2572 + 432), v2585));
            v2579 = vaddq_f32(v2579, vandq_s8(*(&STACK[0x1440] + v2572 + 448), v2584));
            v2564 = *(&STACK[0x1440] + v2572 + 560);
            v2582 = vaddq_f32(v2582, vandq_s8(v2564, v2585));
            v2581 = vaddq_f32(v2581, vandq_s8(*(&STACK[0x1440] + v2572 + 576), v2584));
            v2572 += 32;
          }

          while (v2572 != 96);
          v2586 = vpaddq_f32(vaddq_f32(v2576, v2575), vaddq_f32(v2578, v2577));
          v2545 = vpaddq_f32(vaddq_f32(v2580, v2579), vaddq_f32(v2582, v2581));
          v2529 = vmulq_n_f32(vpaddq_f32(v2586, v2545), ReciprocalTable[v2571]);
        }

        else
        {
          v10 = v4104;
          v620 = STACK[0x310];
        }

        v2587 = 0;
        v2539.f32[0] = v2539.f32[0] * v2530.f32[0];
        v2588 = vnegq_f32(vdupq_lane_s32(*v2539.f32, 0));
        *v2543.i32 = vmuls_lane_f32(*v2543.i32, *v2530.f32, 1);
        *v2546.i32 = vmuls_lane_f32(*v2546.i32, v2530, 2);
        v2589 = vnegq_f32(vdupq_lane_s32(v2543, 0));
        v2590 = vnegq_f32(vdupq_lane_s32(v2546, 0));
        *v2549.i32 = vmuls_lane_f32(*v2549.i32, v2530, 3);
        v2591 = vnegq_f32(vdupq_lane_s32(v2549, 0));
        v2592 = 0uLL;
        v2545.i64[0] = 3;
        v2593 = v620;
        v2594 = 0uLL;
        do
        {
          v2595 = vmlaq_f32(v2588, v2540, v2593[-8]);
          v2596 = vmlaq_f32(v2588, v2540, v2593[-7]);
          v2597 = vmlaq_f32(v2589, v2544, v2593[1]);
          v2598 = vmlaq_f32(v2589, v2544, *v2593);
          v2599 = vmlaq_f32(v2590, v2547, v2593[9]);
          v2600 = vmlaq_f32(v2590, v2547, v2593[8]);
          v2601 = vmlaq_f32(v2591, v2550, v2593[16]);
          v2602 = vmlaq_f32(v2591, v2550, v2593[17]);
          v2603 = vcgtq_f32(v2552, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2597, v2597), v2596, v2596), v2599, v2599), v2602, v2602));
          v2596.i64[0] = v2587;
          v2604 = vcgtq_f32(v2552, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2598, v2598), v2595, v2595), v2600, v2600), v2601, v2601));
          v2605 = &STACK[0x440] + 4 * v2587;
          v2606 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2596, v2545).i64[0], 0), v2603.u64[0], v2603);
          *v2605 = v2604;
          *(v2605 + 1) = v2606;
          v2594 = vsubq_s32(v2594, v2606);
          v2592 = vsubq_s32(v2592, v2604);
          ++v2587;
          v2593 += 2;
        }

        while (v2587 != 4);
        v2607 = vaddq_s32(v2592, v2594);
        v2607.i64[0] = vpaddq_s32(v2607, v2607).u64[0];
        v2608 = vpadd_s32(*v2607.i8, *v2607.i8).u8[0];
        v2609 = v2608 + v2571;
        *&STACK[0x370] = v2529;
        if ((v2608 & 0xFE) != 0)
        {
          v2610 = 0;
          v2611 = vcltzq_s32(*&STACK[0x440]);
          v2612 = vcltzq_s32(*&STACK[0x450]);
          v2613 = vandq_s8(v2612, *&STACK[0x14E0]);
          v2614 = vandq_s8(v2611, *&STACK[0x14D0]);
          v2615 = vandq_s8(*(v620 + 1), v2612);
          v2616 = vandq_s8(*v620, v2611);
          v2617 = vandq_s8(*(v620 + 9), v2612);
          v2618 = vandq_s8(*(v620 + 8), v2611);
          v2621 = *(v620 + 16);
          v2619 = vandq_s8(*(v620 + 17), v2612);
          v2620 = vandq_s8(v2621, v2611);
          v2621.i64[0] = 64;
          do
          {
            v2594.i64[0] = v2610;
            v2622 = vcltzq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v2594, v2621).i64[0], 0), *(&STACK[0x460] + v2610 + 16), *(&STACK[0x460] + v2610 + 16)));
            v2623 = vcltzq_s32(*(&STACK[0x460] + v2610));
            v2614 = vaddq_f32(v2614, vandq_s8(v2623, *(&STACK[0x1440] + v2610 + 176)));
            v2613 = vaddq_f32(v2613, vandq_s8(v2622, *(&STACK[0x1440] + v2610 + 192)));
            v2616 = vaddq_f32(v2616, vandq_s8(v2623, *(&STACK[0x1440] + v2610 + 304)));
            v2615 = vaddq_f32(v2615, vandq_s8(v2622, *(&STACK[0x1440] + v2610 + 320)));
            v2618 = vaddq_f32(v2618, vandq_s8(*(&STACK[0x1440] + v2610 + 432), v2623));
            v2617 = vaddq_f32(v2617, vandq_s8(*(&STACK[0x1440] + v2610 + 448), v2622));
            v2594 = *(&STACK[0x1440] + v2610 + 560);
            v2620 = vaddq_f32(v2620, vandq_s8(v2594, v2623));
            v2619 = vaddq_f32(v2619, vandq_s8(*(&STACK[0x1440] + v2610 + 576), v2622));
            v2610 += 32;
          }

          while (v2610 != 96);
          *&STACK[0x360] = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v2614, v2613), vaddq_f32(v2616, v2615)), vpaddq_f32(vaddq_f32(v2618, v2617), vaddq_f32(v2620, v2619))), ReciprocalTable[v2608]);
        }

        else
        {
          *&STACK[0x360] = v2530;
        }

        STACK[0x438] = WeightInfoForSingleLineSingleWeight_6x5(v2609, v2527);
        if (LOBYTE(STACK[0x14C6]))
        {
          v2455 = *&STACK[0x360];
          v2456 = *&STACK[0x370];
          v2624.i32[0] = HIDWORD(*&STACK[0x370]);
          if (LOBYTE(STACK[0x14C7]))
          {
            if (v2624.f32[0] != 0.0 && v2455.f32[3] != 0.0)
            {
              v2628 = vsubq_f32(v2455, v2456);
              v2625.i32[0] = v2628.i32[3];
              if (v2628.f32[3] == 0.0)
              {
                if (LOBYTE(STACK[0x14C6]) == 48)
                {
                  v2456 = 0uLL;
                  goto LABEL_579;
                }

                v2626.i64[0] = 0x3F0000003FLL;
                v2626.i64[1] = 0x3F0000003FLL;
                v2456 = vnegq_f32(v2626);
              }

              v2626.i64[0] = 0;
              v2704 = vdupq_lane_s32(*&vcgtq_f32(v2626, v2625), 0);
              v2705 = vbslq_s8(v2704, vnegq_f32(v2628), v2628);
              v2706 = vbslq_s8(v2704, v2455, v2456);
              v2627.f32[0] = v2706.f32[3] / v2705.f32[3];
              v2707 = vmlsq_lane_f32(v2706, v2705, v2627, 0);
              v2705.f32[0] = -v2532;
              v2627.f32[0] = v2532 + 1.0;
              if ((vminvq_u32(vandq_s8(vcgtq_f32(v2707, vdupq_lane_s32(*v2705.f32, 0)), vcgtq_f32(vdupq_lane_s32(v2627, 0), v2707))) & 0x80000000) != 0)
              {
                v2455 = vbslq_s8(v2704, v2456, v2455);
                v2456 = vminnmq_f32(vmaxnmq_f32(v2707, 0), *&STACK[0x340]);
              }

              else
              {
                v2708 = *(&STACK[0x16D0] + STACK[0x350]);
                v2709 = *(&STACK[0x16D0] + v2525);
                v2710 = v2708;
                v2710.i32[3] = 0;
                v2711 = v2709;
                v2711.i32[3] = 0;
                v2712 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v2709, v2708)), 3)), 0x1FuLL));
                v2455 = vbslq_s8(v2712, v2709, v2711);
                v2456 = vbslq_s8(v2712, v2710, v2708);
              }
            }
          }

          else
          {
            v2629 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v2455, 3), v2624), 0);
            v2455 = vandq_s8(v2455, v2629);
            v2456 = vbicq_s8(v2456, v2629);
          }

          goto LABEL_579;
        }

LABEL_560:
        v2455 = *&STACK[0x360];
        v2456 = *&STACK[0x370];
        goto LABEL_579;
      }
    }

    v2480 = vaddq_f32(vaddq_f32(v2476, v2478), v2480);
    v2484 = vaddq_f32(v2480, v2482);
    v2483 = vaddq_f32(vaddq_f32(vaddq_f32(v2475, v2477), v2479), v2481);
    if (!v2422)
    {
      goto LABEL_500;
    }

LABEL_499:
    v2480 = vcltzq_s32(*(&STACK[0x1440] + v2457 + 1152));
    v2483 = vbslq_s8(v2480, v2461, v2483);
    v2484 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v2457 + 1136)), v2461, v2484);
    goto LABEL_500;
  }

  if (v2437)
  {
    v2441 = WeightInfoForSingleLineSingleWeight_6x5(2, 2);
    v2442 = 0;
    STACK[0x438] = v2441;
    v2443.i64[0] = 0x7F0000007FLL;
    v2443.i64[1] = 0x7F0000007FLL;
    v2444 = vnegq_f32(v2443);
    v2445 = v2444;
    v2446.i64[0] = 0x7F0000007FLL;
    v2446.i64[1] = 0x7F0000007FLL;
    do
    {
      v2448 = *(&STACK[0x1930] + v2442);
      v2447 = *(&STACK[0x1930] + v2442 + 16);
      v2444 = vminnmq_f32(v2448, v2444);
      v2445 = vminnmq_f32(v2447, v2445);
      v2443 = vmaxnmq_f32(v2448, v2443);
      v2446 = vmaxnmq_f32(v2447, v2446);
      v2442 += 32;
    }

    while (v2442 != 128);
    v2449 = vminnmq_f32(v2444, v2445);
    v2450 = vmaxnmq_f32(v2443, v2446);
    v2451 = vminnmq_f32(v2449, vextq_s8(v2449, v2449, 8uLL));
    v2452 = vmaxnmq_f32(v2450, vextq_s8(v2450, v2450, 8uLL));
    v2453 = vminnmq_f32(v2451, vrev64q_s32(v2451));
    v2454 = vmaxnmq_f32(v2452, vrev64q_s32(v2452));
    v2453.i32[3] = 0;
    v2454.i32[3] = 0;
    v2455 = vorrq_s8(v2454, xmmword_298492170);
    v2456 = vorrq_s8(v2453, xmmword_298492170);
    goto LABEL_579;
  }

  if (STACK[0x1460])
  {
    v2497 = *STACK[0x1460];
    v2497.i32[3] = 0;
  }

  else
  {
    v2497 = xmmword_2984959B0;
  }

  v2630 = vmulq_f32(v2420, v2497);
  *v2630.i8 = vadd_f32(*v2630.i8, *&vextq_s8(v2630, v2630, 8uLL));
  v2631 = vadd_f32(*v2630.i8, vdup_lane_s32(*v2630.i8, 1));
  v2632 = vaddv_f32(*v2630.i8);
  v2633 = vdupq_lane_s32(v2631, 0);
  v2634 = xmmword_298495620;
  v2635 = xmmword_298495600;
  v2636 = &STACK[0x18B0];
  v2637.i64[0] = -1;
  v2637.i64[1] = -1;
  v2638.i64[0] = 0x7F0000007FLL;
  v2638.i64[1] = 0x7F0000007FLL;
  v2639 = 4;
  v2417.i64[0] = 1;
  v2640.i64[0] = 0x800000008;
  v2640.i64[1] = 0x800000008;
  v2641 = &STACK[0x18B0];
  v2642.i64[0] = 0x7F0000007FLL;
  v2642.i64[1] = 0x7F0000007FLL;
  v2643.i64[0] = 0x7F0000007FLL;
  v2643.i64[1] = 0x7F0000007FLL;
  v2644.i64[0] = -1;
  v2644.i64[1] = -1;
  v2645 = *&STACK[0x390];
  do
  {
    v2646 = vsubq_f32(*(v2641 + 8), v2633);
    v2647 = vsubq_f32(*(v2641 + 9), v2633);
    v2648 = vsubq_f32(*(v2641 - 37), v2645);
    v2649 = vsubq_f32(*(v2641 - 38), v2645);
    v2650 = vmlaq_f32(vmulq_f32(v2648, v2648), v2647, v2647);
    v2651 = vmlaq_f32(vmulq_f32(v2649, v2649), v2646, v2646);
    if (v2422)
    {
      v2646 = vcltzq_s32(*(v2641 + 1));
      v2650 = vbslq_s8(v2646, v2638, v2650);
      v2651 = vbslq_s8(vcltzq_s32(*v2641), v2638, v2651);
    }

    v2646.i64[0] = v2639;
    v2652 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2646, v2417).i64[0], 0), v2650.u64[0], v2650);
    v2644 = vbslq_s8(vcgtq_f32(v2652, v2643), v2634, v2644);
    v2637 = vbslq_s8(vcgtq_f32(v2651, v2642), v2635, v2637);
    v2642 = vmaxnmq_f32(v2642, v2651);
    v2643 = vmaxnmq_f32(v2643, v2652);
    v2635 = vaddq_s32(v2635, v2640);
    v2634 = vaddq_s32(v2634, v2640);
    v2641 += 4;
    --v2639;
  }

  while (v2639);
  v2653 = vmaxnmq_f32(v2642, v2643);
  v2654 = vbslq_s8(vcgtq_f32(v2642, v2643), v2637, v2644);
  v2655 = vextq_s8(v2653, v2653, 8uLL);
  v2656 = vbslq_s8(vcgtq_f32(v2653, v2655), v2654, vextq_s8(v2654, v2654, 8uLL));
  v2657 = vmaxnmq_f32(v2653, v2655);
  v2658 = vcgtq_f32(v2657, vrev64q_s32(v2657));
  v2661 = vbslq_s8(v2658, v2656, vdupq_lane_s32(*v2656.i8, 1)).u64[0];
  v2659 = v2661.i32[0];
  v2660 = v2661.i32[0];
  v2661.i32[0] = *(&STACK[0x1930] + v2661.i32[0]);
  LODWORD(v2419) = *(&STACK[0x1650] + v2660);
  *v2658.i32 = v2632 - *v2661.i32;
  v2662 = vdupq_lane_s32(v2661, 0);
  v2663 = vdupq_lane_s32(*&v2419, 0);
  v2664 = vdupq_lane_s32(*v2658.i8, 0);
  v2665 = v2420.f32[3] - *&v2419;
  v2666 = xmmword_298495620;
  v2667 = xmmword_298495600;
  v2668.i64[0] = -1;
  v2668.i64[1] = -1;
  v2669.i64[0] = 0x7F0000007FLL;
  v2669.i64[1] = 0x7F0000007FLL;
  v2670 = 4;
  v2652.i64[0] = 1;
  v2671.i64[0] = 0x800000008;
  v2671.i64[1] = 0x800000008;
  v2672.i64[0] = 0x7F0000007FLL;
  v2672.i64[1] = 0x7F0000007FLL;
  v2673.i64[0] = 0x7F0000007FLL;
  v2673.i64[1] = 0x7F0000007FLL;
  v2674.i64[0] = -1;
  v2674.i64[1] = -1;
  do
  {
    v2675 = vsubq_f32(*(v2636 + 8), v2662);
    v2676 = vmlaq_f32(vmulq_n_f32(vsubq_f32(*(v2636 - 37), v2663), v2665), v2664, vsubq_f32(*(v2636 + 9), v2662));
    v2677 = vmlaq_f32(vmulq_n_f32(vsubq_f32(*(v2636 - 38), v2663), v2665), v2664, v2675);
    if (v2422)
    {
      v2675 = vcltzq_s32(*(v2636 + 1));
      v2676 = vbslq_s8(v2675, v2669, v2676);
      v2677 = vbslq_s8(vcltzq_s32(*v2636), v2669, v2677);
    }

    v2675.i64[0] = v2670;
    v2678 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v2675, v2652).i64[0], 0), v2676.u64[0], v2676);
    v2674 = vbslq_s8(vcgtq_f32(v2678, v2673), v2666, v2674);
    v2668 = vbslq_s8(vcgtq_f32(v2677, v2672), v2667, v2668);
    v2672 = vmaxnmq_f32(v2672, v2677);
    v2673 = vmaxnmq_f32(v2673, v2678);
    v2667 = vaddq_s32(v2667, v2671);
    v2666 = vaddq_s32(v2666, v2671);
    v2636 += 4;
    --v2670;
  }

  while (v2670);
  v2679 = vdupq_lane_s32(v2661, 0);
  v2679.i32[3] = *(&STACK[0x1650] + v2660);
  *&STACK[0x370] = v2679;
  v2680 = vmaxnmq_f32(v2672, v2673);
  v2681 = vbslq_s8(vcgtq_f32(v2672, v2673), v2668, v2674);
  v2682 = vextq_s8(v2680, v2680, 8uLL);
  v2683 = vbslq_s8(vcgtq_f32(v2680, v2682), v2681, vextq_s8(v2681, v2681, 8uLL));
  v2684 = vmaxnmq_f32(v2680, v2682);
  v2685 = vcgtq_f32(v2684, vrev64q_s32(v2684));
  v2686 = vbslq_s8(v2685, v2683, vdupq_lane_s32(*v2683.i8, 1));
  *&STACK[0x330] = v2686;
  v2687 = v2686.i32[0];
  v2688 = &STACK[0x1930] + v2686.i32[0];
  v2689 = vld1q_dup_f32(v2688);
  v2685.i32[0] = *(&STACK[0x1650] + v2687);
  *&STACK[0x340] = v2685;
  *&STACK[0x350] = v2419;
  v2689.i32[3] = v2685.i32[0];
  *&STACK[0x360] = v2689;
  STACK[0x438] = WeightInfoForSingleLineSingleWeight_6x5(2, 4);
  if (!LOBYTE(STACK[0x14C6]))
  {
    goto LABEL_560;
  }

  if (LOBYTE(STACK[0x14C7]))
  {
    v2455 = *&STACK[0x360];
    v2456 = *&STACK[0x370];
    if (COERCE_FLOAT(*&STACK[0x350]) != 0.0)
    {
      v2692 = *&STACK[0x340];
      if (COERCE_FLOAT(*&STACK[0x340]) != 0.0)
      {
        v2693 = vsubq_f32(v2455, v2456);
        v2692.i32[0] = v2693.i32[3];
        if (v2693.f32[3] == 0.0)
        {
          if (LOBYTE(STACK[0x14C6]) == 48)
          {
            v2456 = 0uLL;
            goto LABEL_579;
          }

          v2690.i64[0] = 0x3F0000003FLL;
          v2690.i64[1] = 0x3F0000003FLL;
          v2456 = vnegq_f32(v2690);
        }

        v2690.i64[0] = 0;
        v2721 = vdupq_lane_s32(*&vcgtq_f32(v2690, v2692), 0);
        v2722 = vbslq_s8(v2721, vnegq_f32(v2693), v2693);
        v2723 = vbslq_s8(v2721, v2455, v2456);
        v2691.f32[0] = v2723.f32[3] / v2722.f32[3];
        v2724 = vmlsq_lane_f32(v2723, v2722, v2691, 0);
        if ((vminvq_u32(vandq_s8(vcgtq_f32(v2724, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v2724))) & 0x80000000) != 0)
        {
          v2455 = vbslq_s8(v2721, v2456, v2455);
          v2728 = vmaxnmq_f32(v2724, 0);
          __asm { FMOV            V1.4S, #1.0 }

          v2456 = vminnmq_f32(v2728, _Q1);
        }

        else
        {
          v2725 = *&STACK[0x330];
          v2726 = &STACK[0x1930] + v2659;
          v2456 = vld1q_dup_f32(v2726);
          v2456.i32[3] = *(&STACK[0x1650] + v2659);
          v2727 = &STACK[0x1930] + v2725;
          v2455 = vld1q_dup_f32(v2727);
          v2455.i32[3] = *(&STACK[0x1650] + v2725);
        }
      }
    }
  }

  else
  {
    v2701 = vdupq_lane_s32(*&vcgtq_f32(*&STACK[0x340], *&STACK[0x350]), 0);
    v2455 = vandq_s8(*&STACK[0x360], v2701);
    v2456 = vbicq_s8(*&STACK[0x370], v2701);
  }

LABEL_579:
  *&STACK[0x2030] = 0u;
  *&STACK[0x2020] = 0u;
  *&STACK[0x2010] = 0u;
  v2730 = STACK[0x1460];
  *&STACK[0x450] = v2455;
  *&STACK[0x440] = v2456;
  FindColorVectors(&STACK[0x440], v2730, 1, 342, &STACK[0x438], &STACK[0x2010]);
  v4063 = STACK[0x2030];
  v2733 = STACK[0x438];
  v2734 = (STACK[0x438] >> 13) & 0xF;
  v2735 = STACK[0x438] >> 27;
  v4095 = v620 + 108;
  v2736 = *&STACK[0x2020];
  LODWORD(v2737) = HIDWORD(*&STACK[0x2020]);
  v2738 = vrecpes_f32(v2737);
  if (fabsf(v2737) < 0.0039062)
  {
    v2738 = 0.0;
  }

  if (v2734 > 5)
  {
    if (STACK[0x1460])
    {
      v2753 = 0;
      v2742 = *&STACK[0x2010];
      v2743 = vdupq_lane_s32(STACK[0x2010], 0);
      v2754 = vdupq_lane_s32(STACK[0x2010], 1);
      v2755 = vdupq_laneq_s32(*&STACK[0x2010], 2);
      v2756 = vdupq_laneq_s32(*&STACK[0x2010], 3);
      v2757 = vmulq_f32(v2736, vandq_s8(vcgezq_s32(gNormalMasks[(v2733 >> 13) & 0xF]), *STACK[0x1460]));
      v2758 = vmulq_f32(v2736, v2757);
      v2759 = vaddv_f32(vadd_f32(*v2758.i8, *&vextq_s8(v2758, v2758, 8uLL)));
      v2760 = vdupq_lane_s32(*v2757.f32, 0);
      v2761 = vdupq_laneq_s32(v2757, 2);
      v2762 = fabsf(v2759);
      v2763 = vdupq_laneq_s32(v2757, 3);
      v2764 = SLOBYTE(STACK[0x14C6]);
      v2765 = vrecpes_f32(v2759);
      __asm { FMOV            V23.4S, #1.0 }

      do
      {
        v2767 = (&STACK[0x1440] + v2753);
        v2768 = vsubq_f32(*(&STACK[0x1440] + v2753 + 160), v2743);
        v2769 = vsubq_f32(*(&STACK[0x1440] + v2753 + 144), v2743);
        v2770 = vsubq_f32(*(&STACK[0x1440] + v2753 + 288), v2754);
        v2771 = vsubq_f32(*(&STACK[0x1440] + v2753 + 272), v2754);
        v2772 = vsubq_f32(*(&STACK[0x1440] + v2753 + 416), v2755);
        v2773 = vsubq_f32(*(&STACK[0x1440] + v2753 + 400), v2755);
        v2732 = vsubq_f32(*(&STACK[0x1440] + v2753 + 544), v2756);
        v2774 = vsubq_f32(*(&STACK[0x1440] + v2753 + 528), v2756);
        if (v2762 >= 0.000015259)
        {
          v2775 = v2765;
        }

        else
        {
          v2775 = 0.0;
        }

        v2776 = vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v2770, *v2757.f32, 1), v2760, v2768), v2761, v2772), v2763, v2732), v2775), _Q23);
        v2777 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(v2771, *v2757.f32, 1), v2760, v2769), v2761, v2773), v2763, v2774), v2775), _Q23), 0);
        v2778 = vmaxnmq_f32(v2776, 0);
        if (v2764 >= 1)
        {
          v2732 = vmulq_n_f32(v2732, v2738);
          v2778 = vbslq_s8(vcltzq_s32(v2767[72]), v2732, v2778);
          v2777 = vbslq_s8(vcltzq_s32(v2767[71]), vmulq_n_f32(v2774, v2738), v2777);
        }

        v2779 = (&STACK[0x22F0] + v2753);
        *v2779 = v2777;
        v2779[1] = v2778;
        v2753 += 32;
      }

      while (v2753 != 128);
      v2780 = 0;
      v2781 = v2735;
      v2743.i64[0] = 0;
      v2782 = vrecpes_f32(v2735);
      if (v2735)
      {
        v2743.f32[0] = v2782;
      }

      do
      {
        v2783 = (&STACK[0x22F0] + v2780);
        v2784 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2780 + 16), v2781)), v2743.f32[0]);
        v2752 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2780), v2781)), v2743.f32[0]);
        *v2783 = v2752;
        v2783[1] = v2784;
        v2780 += 32;
      }

      while (v2780 != 128);
    }

    else
    {
      v2804 = 0;
      v2742 = *&STACK[0x2010];
      v2743 = vdupq_lane_s32(STACK[0x2010], 0);
      v2805 = vdupq_lane_s32(STACK[0x2010], 1);
      v2806 = vdupq_laneq_s32(*&STACK[0x2010], 2);
      v2807 = vdupq_laneq_s32(*&STACK[0x2010], 3);
      v2808 = vmulq_f32(v2736, v2736);
      v2809 = vaddv_f32(vadd_f32(*v2808.i8, *&vextq_s8(v2808, v2808, 8uLL)));
      v2810 = vdupq_lane_s32(*v2736.f32, 0);
      v2811 = vdupq_laneq_s32(v2736, 2);
      v2812 = vdupq_laneq_s32(v2736, 3);
      v2813 = vrecpes_f32(v2809);
      v2814 = SLOBYTE(STACK[0x14C6]);
      __asm { FMOV            V19.4S, #1.0 }

      do
      {
        v2816 = (&STACK[0x1440] + v2804);
        v2817 = vsubq_f32(*(&STACK[0x1440] + v2804 + 544), v2807);
        v2818 = vsubq_f32(*(&STACK[0x1440] + v2804 + 528), v2807);
        v2732 = vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v2804 + 288), v2805), *v2736.f32, 1), v2810, vsubq_f32(*(&STACK[0x1440] + v2804 + 160), v2743)), v2811, vsubq_f32(*(&STACK[0x1440] + v2804 + 416), v2806)), v2812, v2817), v2813), _Q19);
        v2819 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v2804 + 272), v2805), *v2736.f32, 1), v2810, vsubq_f32(*(&STACK[0x1440] + v2804 + 144), v2743)), v2811, vsubq_f32(*(&STACK[0x1440] + v2804 + 400), v2806)), v2812, v2818), v2813), _Q19), 0);
        v2820 = vmaxnmq_f32(v2732, 0);
        if (v2814 >= 1)
        {
          v2821 = v2816[72];
          v2732 = v2816[71];
          if ((vmaxvq_u32(vorrq_s8(v2732, v2821)) & 0x80000000) != 0)
          {
            v2732 = vcltzq_s32(v2732);
            v2819 = vbslq_s8(v2732, vmulq_n_f32(v2818, v2738), v2819);
            v2820 = vbslq_s8(vcltzq_s32(v2821), vmulq_n_f32(v2817, v2738), v2820);
          }
        }

        v2822 = (&STACK[0x22F0] + v2804);
        *v2822 = v2819;
        v2822[1] = v2820;
        v2804 += 32;
      }

      while (v2804 != 128);
      v2823 = 0;
      v2824 = v2735;
      v2743.i64[0] = 0;
      v2825 = vrecpes_f32(v2735);
      if (v2735)
      {
        v2743.f32[0] = v2825;
      }

      do
      {
        v2826 = (&STACK[0x22F0] + v2823);
        v2827 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2823 + 16), v2824)), v2743.f32[0]);
        v2752 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2823), v2824)), v2743.f32[0]);
        *v2826 = v2752;
        v2826[1] = v2827;
        v2823 += 32;
      }

      while (v2823 != 128);
    }
  }

  else if (v2734 > 3)
  {
    v2785 = 0;
    v2786 = (v2737 * v2737) + (v2736.f32[0] * v2736.f32[0]);
    v2787 = 0.0;
    _NF = fabsf(v2786) < 0.000015259;
    v2788 = vrecpes_f32(v2786);
    v2742 = *&STACK[0x2010];
    v2743 = vdupq_lane_s32(STACK[0x2010], 0);
    v2789 = vdupq_laneq_s32(*&STACK[0x2010], 3);
    v2790 = vdupq_lane_s32(*v2736.f32, 0);
    if (!_NF)
    {
      v2787 = v2788;
    }

    v2791 = SLOBYTE(STACK[0x14C6]);
    __asm { FMOV            V16.4S, #1.0 }

    v2793 = v620 + 108;
    do
    {
      v2794 = vsubq_f32(*(v2793 - 38), v2789);
      v2795 = vsubq_f32(*(v2793 - 37), v2789);
      v2796 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v2795, v2736, 3), v2790, vsubq_f32(*(v2793 + 9), v2743)), v2787);
      v2797 = vmulq_n_f32(vmlaq_f32(vmulq_laneq_f32(v2794, v2736, 3), v2790, vsubq_f32(*(v2793 + 8), v2743)), v2787);
      if (v2791 >= 1)
      {
        v2796 = vbslq_s8(vcltzq_s32(*(v2793 + 1)), vmulq_n_f32(v2795, v2738), v2796);
        v2797 = vbslq_s8(vcltzq_s32(*v2793), vmulq_n_f32(v2794, v2738), v2797);
      }

      v2731 = vminnmq_f32(vmaxnmq_f32(v2797, 0), _Q16);
      v2798 = (&STACK[0x22F0] + v2785);
      *v2798 = v2731;
      v2798[1] = vminnmq_f32(vmaxnmq_f32(v2796, 0), _Q16);
      v2793 += 4;
      v2785 += 32;
    }

    while (v2785 != 96);
    v2799 = 0;
    v2800 = v2735;
    v2743.i64[0] = 0;
    v2801 = vrecpes_f32(v2735);
    if (v2735)
    {
      v2743.f32[0] = v2801;
    }

    do
    {
      v2802 = (&STACK[0x22F0] + v2799);
      v2803 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2799 + 16), v2800)), v2743.f32[0]);
      v2752 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2799), v2800)), v2743.f32[0]);
      *v2802 = v2752;
      v2802[1] = v2803;
      v2799 += 32;
    }

    while (v2799 != 128);
  }

  else
  {
    v2739 = 0;
    v2740 = 0.0;
    v2741 = vrecpes_f32(v2736.f32[0]);
    if (fabsf(v2736.f32[0]) >= 0.000015259)
    {
      v2740 = v2741;
    }

    v2742 = *&STACK[0x2010];
    v2743 = vdupq_lane_s32(STACK[0x2010], 0);
    __asm { FMOV            V5.4S, #1.0 }

    do
    {
      v2745 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x1930] + v2739 + 16), v2743), v2740), 0), _Q5);
      v2746 = (&STACK[0x22F0] + v2739);
      *v2746 = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(*(&STACK[0x1930] + v2739), v2743), v2740), 0), _Q5);
      v2746[1] = v2745;
      v2739 += 32;
    }

    while (v2739 != 128);
    v2747 = 0;
    v2748 = v2735;
    v2743.i64[0] = 0;
    v2749 = vrecpes_f32(v2735);
    if (v2735)
    {
      v2743.f32[0] = v2749;
    }

    do
    {
      v2750 = (&STACK[0x22F0] + v2747);
      v2751 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2747 + 16), v2748)), v2743.f32[0]);
      v2752 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(*(&STACK[0x22F0] + v2747), v2748)), v2743.f32[0]);
      *v2750 = v2752;
      v2750[1] = v2751;
      v2747 += 32;
    }

    while (v2747 != 128);
  }

  v2828 = *&STACK[0x2360];
  v2828.i64[1] = 0;
  *&STACK[0x2360] = STACK[0x2360];
  v2829 = &STACK[0x1440];
  do
  {
    v2830 = v2829;
    v2829 = v2829[5];
  }

  while (v2829);
  v2831 = STACK[0x1460];
  if (STACK[0x1460])
  {
    v2828 = *v2831;
    v2743 = *&STACK[0x3A0];
    _Q12 = vmulq_f32(*v2831, *&STACK[0x3A0]);
  }

  else
  {
    __asm { FMOV            V12.4S, #1.0 }
  }

  v2833 = *(v2830 + 66);
  v4057 = v12;
  v4058 = v9;
  if (v2833 == 392)
  {
    *&STACK[0x370] = _Q12;
    v2870 = 0;
    v2743.i32[0] = 0;
    v2871 = *&STACK[0x22F0];
    v2872 = vextq_s8(*&STACK[0x22F0], *&STACK[0x2300], 8uLL);
    v2873 = vzip1q_s32(*&STACK[0x22F0], vuzp1q_s32(v2871, v2871));
    v2874 = vzip1q_s32(*&STACK[0x2300], *&STACK[0x2300]);
    v2874.i32[0] = HIDWORD(*&STACK[0x22F0]);
    v2871.i32[0] = HIDWORD(STACK[0x22F0]);
    v2875 = *&STACK[0x2308];
    v2876 = vzip1q_s32(*&STACK[0x2308], vuzp1q_s32(v2875, v2875));
    v2877 = vextq_s8(*&STACK[0x2308], *&STACK[0x2318], 8uLL);
    v2878 = vzip1q_s32(*&STACK[0x2318], *&STACK[0x2318]);
    v2878.i32[0] = HIDWORD(*&STACK[0x2308]);
    v2875.i32[0] = HIDWORD(STACK[0x2308]);
    v2879 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2871, xmmword_298496220), xmmword_298496230, v2873), xmmword_298496260, v2876), xmmword_298496270, v2875);
    v2880 = *&STACK[0x2320];
    v2881 = *&STACK[0x2338];
    v2882 = vzip1q_s32(*&STACK[0x2320], vuzp1q_s32(v2880, v2880));
    v2883 = vextq_s8(*&STACK[0x2320], *&STACK[0x2330], 8uLL);
    v2884 = vzip1q_s32(*&STACK[0x2330], *&STACK[0x2330]);
    v2884.i32[0] = HIDWORD(*&STACK[0x2320]);
    v2880.i32[0] = HIDWORD(STACK[0x2320]);
    v2885 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2875, xmmword_2984962A0), xmmword_2984962B0, v2876), xmmword_2984962E0, v2882), xmmword_2984962F0, v2880);
    v2886 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2878, xmmword_298496290), xmmword_2984962C0, v2877), xmmword_2984962D0, v2883), xmmword_298495FB0, v2884);
    v2887 = vmulq_f32(v2875, xmmword_298496310);
    v2888 = *&STACK[0x2348];
    v2889 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v2887, xmmword_298496320, v2876), xmmword_298496350, v2882), xmmword_298496360, v2880);
    v2890 = vmlaq_f32(vmulq_f32(v2880, xmmword_298496360), xmmword_298496350, v2882);
    v2891 = vmlaq_f32(vmulq_f32(v2880, xmmword_2984962F0), xmmword_2984962E0, v2882);
    v2892 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2878, xmmword_298496300), xmmword_298496330, v2877), xmmword_298496340, v2883), xmmword_298496370, v2884);
    v2893 = vmlaq_f32(vmulq_f32(v2884, xmmword_298496370), xmmword_298496340, v2883);
    v2894 = vmlaq_f32(vmulq_f32(v2884, xmmword_298496380), xmmword_298496390, v2883);
    v2895 = vzip1q_s32(*&STACK[0x2338], vuzp1q_s32(v2881, v2881));
    v2896 = vextq_s8(*&STACK[0x2338], *&STACK[0x2348], 8uLL);
    v2897 = vzip1q_s32(v2888, v2888);
    v2897.i32[0] = HIDWORD(*&STACK[0x2338]);
    v2881.i32[0] = HIDWORD(STACK[0x2338]);
    v2898 = vmlaq_f32(vmlaq_f32(v2890, xmmword_298496320, v2895), xmmword_298496310, v2881);
    v2899 = vmlaq_f32(vmlaq_f32(v2891, xmmword_2984962B0, v2895), xmmword_2984962A0, v2881);
    v2900 = vmulq_f32(v2881, xmmword_298496270);
    v2901 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2874, xmmword_298495F80), xmmword_298496240, v2872), xmmword_298496250, v2877), xmmword_298496280, v2878);
    v2902 = vmlaq_f32(vmulq_f32(v2874, xmmword_2984961E0), xmmword_298496210, v2872);
    v2903 = vdupq_n_s32(0x3D800000u);
    *&STACK[0x440] = vmulq_f32(vmlaq_f32(vmulq_f32(v2871, xmmword_2984961F0), xmmword_298496200, v2873), v2903);
    *&STACK[0x450] = vmulq_f32(v2902, v2903);
    *&STACK[0x460] = vmulq_f32(v2879, v2903);
    *&STACK[0x470] = vmulq_f32(v2901, v2903);
    *&STACK[0x480] = vmulq_f32(v2885, v2903);
    *&STACK[0x490] = vmulq_f32(v2886, v2903);
    *&STACK[0x4A0] = vmulq_f32(v2889, v2903);
    *&STACK[0x4B0] = vmulq_f32(v2892, v2903);
    *&STACK[0x4C0] = vmulq_f32(v2898, v2903);
    *&STACK[0x4D0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v2893, xmmword_298496330, v2896), xmmword_298496300, v2897), v2903);
    *&STACK[0x4E0] = vmulq_f32(v2899, v2903);
    v2904 = *&STACK[0x2358];
    *&STACK[0x4F0] = vmulq_f32(vmlaq_f32(vmlaq_f32(v2894, xmmword_2984963A0, v2896), xmmword_2984963B0, v2897), v2903);
    v2905 = vextq_s8(v2888, v2904, 4uLL);
    v2905.i32[0] = v2888.i32[2];
    v2906 = vextq_s8(v2904, vdupq_laneq_s32(v2904, 3), 4uLL);
    v2907 = vextq_s8(v2888, vextq_s8(v2888, v2904, 0xCuLL), 0xCuLL);
    *&STACK[0x500] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(v2900, xmmword_298496260, v2895), xmmword_298496230, v2905), xmmword_298496220, v2907), v2903);
    *&STACK[0x510] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v2897, xmmword_298496280), xmmword_298496250, v2896), xmmword_298496240, v2904), xmmword_298495F80, v2906), v2903);
    v2908 = vmulq_f32(vmlaq_f32(vmulq_f32(v2906, xmmword_2984961E0), xmmword_298496210, v2904), v2903);
    *&STACK[0x530] = v2908;
    *&STACK[0x520] = vmulq_f32(vmlaq_f32(vmulq_f32(v2907, xmmword_2984961F0), xmmword_298496200, v2905), v2903);
    v2752 = vdupq_lane_s32(*v2742.i8, 0);
    v2909 = vdupq_lane_s32(*v2736.f32, 0);
    v2910 = 0uLL;
    v2908.i32[0] = LOBYTE(STACK[0x14C7]);
    v2911 = vdupq_lane_s32(*v2742.i8, 1);
    v2908.i64[0] = vceqq_s8(v2908, v2743).u64[0];
    v2912 = vdupq_lane_s32(*v2736.f32, 1);
    v2913 = vdupq_laneq_s32(v2742, 2);
    v2914 = 0uLL;
    v2915 = vdupq_laneq_s32(v2736, 2);
    v2916 = 0uLL;
    v2917 = vdupq_laneq_s32(v2742, 3);
    v2918 = vdupq_laneq_s32(v2736, 3);
    v2919 = 0uLL;
    v2920 = vdupq_lane_s8(*v2908.i8, 0);
    v2921 = 0uLL;
    v2922 = 0uLL;
    v2923 = 0uLL;
    v2732 = 0uLL;
    do
    {
      v2924 = *(&STACK[0x440] + v2870 * 8);
      v2925 = *(&STACK[0x440] + v2870 * 8 + 16);
      v2926 = vsubq_f32(vmlaq_f32(v2913, v2924, v2915), *&v2830[v2870 + 82]);
      v2927 = *&v2830[v2870 + 114];
      v2928 = *&v2830[v2870 + 116];
      v2929 = vbslq_s8(v2920, v2926, vmulq_f32(v2926, v2927));
      v2930 = vsubq_f32(vmlaq_f32(v2913, v2925, v2915), *&v2830[v2870 + 84]);
      v2931 = vbslq_s8(v2920, v2930, vmulq_f32(v2930, v2928));
      v2932 = vsubq_f32(vmlaq_f32(v2911, v2924, v2912), *&v2830[v2870 + 50]);
      v2933 = vbslq_s8(v2920, v2932, vmulq_f32(v2932, v2927));
      v2934 = vsubq_f32(vmlaq_f32(v2911, v2925, v2912), *&v2830[v2870 + 52]);
      v2935 = vbslq_s8(v2920, v2934, vmulq_f32(v2934, v2928));
      v2936 = vsubq_f32(vmlaq_f32(v2752, v2924, v2909), *&v2830[v2870 + 18]);
      v2937 = vbslq_s8(v2920, v2936, vmulq_f32(v2936, v2927));
      v2938 = vsubq_f32(vmlaq_f32(v2752, v2925, v2909), *&v2830[v2870 + 20]);
      v2939 = vbslq_s8(v2920, v2938, vmulq_f32(v2938, v2928));
      v2940 = vsubq_f32(vmlaq_f32(v2917, v2924, v2918), v2927);
      v2941 = vsubq_f32(vmlaq_f32(v2917, v2925, v2918), v2928);
      v2732 = vmlaq_f32(v2732, v2939, v2939);
      v2923 = vmlaq_f32(v2923, v2937, v2937);
      v2922 = vmlaq_f32(v2922, v2935, v2935);
      v2921 = vmlaq_f32(v2921, v2933, v2933);
      v2919 = vmlaq_f32(v2919, v2931, v2931);
      v2916 = vmlaq_f32(v2916, v2929, v2929);
      v2914 = vmlaq_f32(v2914, v2941, v2941);
      v2910 = vmlaq_f32(v2910, v2940, v2940);
      v2870 += 4;
    }

    while (v2870 != 32);
    v2869 = vpaddq_f32(vpaddq_f32(vaddq_f32(v2923, v2732), vaddq_f32(v2921, v2922)), vpaddq_f32(vaddq_f32(v2916, v2919), vaddq_f32(v2910, v2914)));
    _Q12 = *&STACK[0x370];
LABEL_634:
    v2942 = vmulq_f32(_Q12, v2869);
    v2736 = vpaddq_f32(v2942, v2942);
    *v2732.f32 = vpadd_f32(*v2736.f32, *v2736.f32);
  }

  else
  {
    if (v2833 == 342)
    {
      v2828.i32[0] = 0;
      v2834 = 0;
      v2835 = vdupq_lane_s32(*v2742.i8, 0);
      v2752 = vdupq_lane_s32(*v2736.f32, 0);
      v2836 = vdupq_lane_s32(*v2742.i8, 1);
      v2837 = vdupq_lane_s32(*v2736.f32, 1);
      v2838 = vdupq_laneq_s32(v2742, 2);
      v2839 = vdupq_laneq_s32(v2736, 2);
      v2840 = vdupq_laneq_s32(v2742, 3);
      v2841 = vdupq_laneq_s32(v2736, 3);
      v2842 = 0uLL;
      v2731.i32[0] = LOBYTE(STACK[0x14C7]);
      v2843 = vdupq_lane_s8(*&vceqq_s8(v2731, v2828), 0);
      v2844 = 0uLL;
      v2845 = v620;
      v2846 = 0uLL;
      v2847 = 0uLL;
      v2848 = 0uLL;
      v2849 = 0uLL;
      v2850 = 0uLL;
      v2732 = 0uLL;
      do
      {
        v2851 = &STACK[0x22F0] + 4 * v2834;
        v2852 = *(v2851 + 1);
        v2853 = vsubq_f32(vmlaq_f32(v2838, *v2851, v2839), v2845[8]);
        v2854 = v2845[16];
        v2855 = v2845[17];
        v2856 = vbslq_s8(v2843, v2853, vmulq_f32(v2853, v2854));
        v2857 = vsubq_f32(vmlaq_f32(v2838, v2852, v2839), v2845[9]);
        v2858 = vbslq_s8(v2843, v2857, vmulq_f32(v2857, v2855));
        v2859 = vsubq_f32(vmlaq_f32(v2836, *v2851, v2837), *v2845);
        v2860 = vbslq_s8(v2843, v2859, vmulq_f32(v2859, v2854));
        v2861 = vsubq_f32(vmlaq_f32(v2836, v2852, v2837), v2845[1]);
        v2862 = vbslq_s8(v2843, v2861, vmulq_f32(v2861, v2855));
        v2863 = vsubq_f32(vmlaq_f32(v2835, *v2851, v2752), v2845[-8]);
        v2864 = vbslq_s8(v2843, v2863, vmulq_f32(v2863, v2854));
        v2865 = vsubq_f32(vmlaq_f32(v2835, v2852, v2752), v2845[-7]);
        v2866 = vbslq_s8(v2843, v2865, vmulq_f32(v2865, v2855));
        v2867 = vsubq_f32(vmlaq_f32(v2840, *v2851, v2841), v2854);
        v2868 = vsubq_f32(vmlaq_f32(v2840, v2852, v2841), v2855);
        v2732 = vmlaq_f32(v2732, v2866, v2866);
        v2850 = vmlaq_f32(v2850, v2864, v2864);
        v2849 = vmlaq_f32(v2849, v2862, v2862);
        v2848 = vmlaq_f32(v2848, v2860, v2860);
        v2847 = vmlaq_f32(v2847, v2858, v2858);
        v2846 = vmlaq_f32(v2846, v2856, v2856);
        v2844 = vmlaq_f32(v2844, v2868, v2868);
        v2842 = vmlaq_f32(v2842, v2867, v2867);
        ++v2834;
        v2845 += 2;
      }

      while (v2834 != 4);
      v2869 = vpaddq_f32(vpaddq_f32(vaddq_f32(v2850, v2732), vaddq_f32(v2848, v2849)), vpaddq_f32(vaddq_f32(v2846, v2847), vaddq_f32(v2842, v2844)));
      goto LABEL_634;
    }

    v2732.i32[0] = 2139095040;
  }

  v2943 = 0uLL;
  *&STACK[0x23E0] = 0u;
  *&STACK[0x23D0] = 0u;
  *&STACK[0x23C0] = 0u;
  *&STACK[0x23B0] = 0u;
  *&STACK[0x23A0] = 0u;
  *&STACK[0x2390] = 0u;
  *&STACK[0x2380] = 0u;
  *&STACK[0x2370] = 0u;
  if ((v2733 & 0x18000) != 0)
  {
    v4062 = v2733;
    v2736.i32[0] = 0;
    vars0 = v2736;
    v2752.i32[0] = 0;
    v4061 = 0;
    v2944 = 0;
    LODWORD(STACK[0x2F0]) = LOBYTE(STACK[0x14C8]);
    STACK[0x300] = &STACK[0x16D0];
    v4066 = v620 + 124;
    v2945 = v620;
    v2946 = &STACK[0x2210];
    v4065 = (v2945 + 128);
    LODWORD(STACK[0x2D0]) = 2139095040;
    LODWORD(STACK[0x2E0]) = 1148207104;
    v2736.i64[0] = 1;
    v4064 = v2736;
    v2736.i64[0] = 96;
    *&STACK[0x370] = v2736;
    v2947.i64[0] = 0x3F0000003FLL;
    v2947.i64[1] = 0x3F0000003FLL;
    v2948 = vnegq_f32(v2947);
    v4054 = v2948;
    v2948.i64[0] = 64;
    v4059 = v2948;
    *&STACK[0x340] = v2752;
    while (v2732.f32[0] >= v10[1] && (!LODWORD(STACK[0x2F0]) || v2944 != 3))
    {
      v2438 = *&STACK[0x14BC] <= *&STACK[0x2E0];
      v2949 = vdupq_n_s32(0x3A88642Au);
      LODWORD(STACK[0x330]) = EncodeStandardSinglePartitionBlock_6x5_channelSearchOrder[v2944];
      *&STACK[0x320] = v2732;
      if (v2438)
      {
        *&STACK[0x350] = v2949;
        v2993 = v2946;
        v2994 = v2944;
        v2995 = LOBYTE(STACK[0x14C8]);
        if (LOBYTE(STACK[0x14C8]))
        {
          v2996 = 6;
        }

        else
        {
          v2996 = 8;
        }

        WeightInfoForSingleLineDualWeight_6x5(2, v2996);
        v2997 = STACK[0x330];
        v2998.i64[0] = 0x800000008;
        v2998.i64[1] = 0x800000008;
        v2999.i64[0] = 0x7F0000007FLL;
        v2999.i64[1] = 0x7F0000007FLL;
        v3000 = 0;
        v3001 = __clz(STACK[0x330]);
        v3002 = 31 - v3001;
        v3003 = FindDualWeights_6x5_kVectorMask[31 - v3001];
        *&STACK[0x410] = v4092;
        v3004 = (&STACK[0x410] & 0xFFFFFFFFFFFFFFF3 | (4 * ((31 - v3001) & 3)));
        v3005 = vld1q_dup_f32(v3004);
        v3006 = &STACK[0x14D0] + 16 * (31 - v3001);
        v3007 = STACK[0x1460];
        v3008 = xmmword_298495620;
        v3009 = xmmword_298495600;
        v3010.i64[0] = -1;
        v3010.i64[1] = -1;
        v3011 = 0uLL;
        v3012 = 31 - v3001;
        v3014 = LOBYTE(STACK[0x14C7]);
        v3015 = 0uLL;
        v3016.i64[0] = -1;
        v3016.i64[1] = -1;
        while (1)
        {
          v3017 = vsubq_f32(*(&STACK[0x1440] + v3000 + 144), v4068);
          v3018 = vsubq_f32(*(&STACK[0x1440] + v3000 + 160), v4068);
          v3019 = vsubq_f32(*(&STACK[0x1440] + v3000 + 272), v4067);
          v3020 = vsubq_f32(*(&STACK[0x1440] + v3000 + 288), v4067);
          v3021 = vsubq_f32(*(&STACK[0x1440] + v3000 + 400), *&STACK[0x380]);
          v3022 = vsubq_f32(*(&STACK[0x1440] + v3000 + 416), *&STACK[0x380]);
          v3023 = vsubq_f32(*(&STACK[0x1440] + v3000 + 528), *&STACK[0x390]);
          v3024 = vsubq_f32(*(&STACK[0x1440] + v3000 + 544), *&STACK[0x390]);
          v3025 = vsubq_f32(*&v3006[v3000 / 8 + 2], v3005);
          v3026 = vsubq_f32(*&v3006[v3000 / 8], v3005);
          v3027 = vmulq_f32(v3018, v3018);
          v3028 = vmulq_f32(v3017, v3017);
          v3029 = vmulq_f32(v3020, v3020);
          v3030 = vmulq_f32(v3019, v3019);
          v3031 = vmulq_f32(v3022, v3022);
          v3032 = vmulq_f32(v3021, v3021);
          v3033 = vmulq_f32(v3024, v3024);
          v3034 = vmulq_f32(v3023, v3023);
          if (!v3007)
          {
            break;
          }

          v3035 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3029, *v3007, 1), v3027, COERCE_FLOAT(*v3007->f32)), v3031, *v3007->f32, 2), v3033, *v3007->f32, 3);
          v3036 = *&STACK[0x3A0];
          v3037 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3030, *v3007, 1), v3028, COERCE_FLOAT(*v3007->f32)), v3032, *v3007->f32, 2), v3034, *v3007->f32, 3), *&STACK[0x3A0]);
          *&STACK[0x400] = *v3007->f32;
          v3013 = (&STACK[0x400] & 0xFFFFFFFFFFFFFFF3 | (4 * ((31 - v3001) & 3)));
          v3038 = vld1q_dup_f32(v3013);
          v3039 = vnegq_f32(v3038);
          v3040 = vmlaq_f32(vmulq_f32(v3035, v3036), v3025, vmulq_f32(v3025, v3039));
          v3041 = vmlaq_f32(v3037, v3026, vmulq_f32(v3026, v3039));
          if (v3014)
          {
            goto LABEL_653;
          }

LABEL_654:
          v3025.i64[0] = v3000;
          v3042.i64[0] = v3040.i64[0];
          v3042.i64[1] = 0x7F0000007FLL;
          v3043 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v3025, *&STACK[0x370]).i64[0], 0), v3042, v3040);
          v3044 = vcgtq_f32(v3043, v3015);
          v3045 = vcgtq_f32(v3041, v3011);
          v3011 = vmaxnmq_f32(v3041, v3011);
          v3015 = vmaxnmq_f32(v3043, v3015);
          v3016 = vbslq_s8(v3044, v3008, v3016);
          v3010 = vbslq_s8(v3045, v3009, v3010);
          v3009 = vaddq_s32(v3009, v2998);
          v3008 = vaddq_s32(v3008, v2998);
          v3000 += 32;
          if (v3000 == 128)
          {
            if (v2995)
            {
              v3046 = 0;
            }

            else
            {
              v3046 = -1;
            }

            v4102 = v3046;
            v3047 = vmaxnmq_f32(v3011, v3015);
            v3048 = vbslq_s8(vcgtq_f32(v3015, v3011), v3016, v3010);
            v3049 = vextq_s8(v3047, v3047, 8uLL);
            v3050 = vcgtq_f32(v3049, v3047);
            v3051 = vmaxnmq_f32(v3047, v3049);
            v3052 = vbslq_s8(v3050, vextq_s8(v3048, v3048, 8uLL), v3048);
            v3053 = vbslq_s8(vcgtq_f32(vrev64q_s32(v3051), v3051), vdupq_lane_s32(*v3052.i8, 1), v3052).u32[0];
            v3054 = *(STACK[0x300] + 16 * v3053);
            v3055 = vcltzq_s32(v3003);
            v3056 = vbicq_s8(vsubq_f32(v4092, v3054), v3055);
            if (v3007)
            {
              v3057 = vmulq_f32(*v3007->f32, v3056);
            }

            else
            {
              v3057 = vmulq_f32(v3056, vdupq_n_s32(0x3EAAAAABu));
            }

            v3058 = 0;
            v3059 = (&STACK[0x3E0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v3012 & 3)));
            v3060 = (&STACK[0x3F0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v3012 & 3)));
            v4084 = v3053;
            *&STACK[0x2A0] = v3055;
            v4088 = vmvnq_s8(v3055);
            v3061 = vdupq_lane_s32(*v3054.f32, 0);
            v3062 = vdupq_lane_s32(*v3054.f32, 1);
            v3063 = vdupq_laneq_s32(v3054, 2);
            *&STACK[0x3F0] = v3054;
            v3064 = vld1q_dup_f32(v3060);
            *&STACK[0x3E0] = v3057;
            v3065 = vld1q_dup_f32(v3059);
            *&STACK[0x360] = v3065;
            *&STACK[0x2C0] = v3054;
            v3066 = vdupq_laneq_s32(v3054, 3);
            v3068 = (v2997 >> 3) & 1;
            if (!v3014)
            {
              LOBYTE(v3068) = 1;
            }

            v3069.i64[0] = 0x7F0000007FLL;
            v3069.i64[1] = 0x7F0000007FLL;
            v3070 = vnegq_f32(v3069);
            v3071 = xmmword_298495620;
            v3072 = xmmword_298495600;
            v3073.i64[0] = -1;
            v3073.i64[1] = -1;
            v3074 = 0uLL;
            v3075 = 0uLL;
            v3076.i64[0] = -1;
            v3076.i64[1] = -1;
            v3077 = v3070;
            v3078.i64[0] = 0x7F0000007FLL;
            v3078.i64[1] = 0x7F0000007FLL;
            do
            {
              v3079 = *&v3006[v3058 / 8];
              v3080 = *&v3006[v3058 / 8 + 2];
              v3081 = vsubq_f32(v3080, v3064);
              v3082 = vsubq_f32(v3079, v3064);
              v3083 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3058 + 160), v3061), v3057.f32[0]);
              v3084 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3058 + 144), v3061), v3057.f32[0]);
              v3085 = vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3058 + 288), v3062), *v3057.f32, 1);
              v3086 = vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3058 + 272), v3062), *v3057.f32, 1);
              v3087 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3058 + 416), v3063), v3057, 2);
              v3088 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3058 + 400), v3063), v3057, 2);
              v3089 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3058 + 544), v3066), v3057, 3);
              v3090 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3058 + 528), v3066), v3057, 3);
              if (v3007)
              {
                v3091 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3085, *v3007, 1), v3083, COERCE_FLOAT(*v3007->f32)), v3087, *v3007->f32, 2), v3089, *v3007->f32, 3);
                v3092 = *&STACK[0x3A0];
                v3093 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3086, *v3007, 1), v3084, COERCE_FLOAT(*v3007->f32)), v3088, *v3007->f32, 2), v3090, *v3007->f32, 3), *&STACK[0x3A0]);
                *&STACK[0x3D0] = *v3007->f32;
                v3067 = (&STACK[0x3D0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v3012 & 3)));
                v3094 = vld1q_dup_f32(v3067);
                v3095 = vnegq_f32(v3094);
                v3096 = vmulq_f32(v3082, v3095);
                v3097 = vmulq_f32(v3081, v3095);
                v3098 = vmlaq_f32(vmulq_f32(v3091, v3092), *&STACK[0x360], v3097);
                v3099 = vmlaq_f32(v3093, *&STACK[0x360], v3096);
              }

              else
              {
                v3096 = vaddq_f32(vaddq_f32(v3084, v3086), v3088);
                v3097 = vaddq_f32(vaddq_f32(v3083, v3085), v3087);
                v3099 = vmlsq_f32(vaddq_f32(v3096, v3090), v3082, v3082);
                v3098 = vmlsq_f32(vaddq_f32(v3097, v3089), v3081, v3081);
              }

              v3100.i64[0] = 0x7F0000007FLL;
              v3100.i64[1] = 0x7F0000007FLL;
              v3101.i64[0] = 0x800000008;
              v3101.i64[1] = 0x800000008;
              if (v3014)
              {
                v3096 = vcltzq_s32(*(&STACK[0x1440] + v3058 + 1136));
                v3097 = vcltzq_s32(*(&STACK[0x1440] + v3058 + 1152));
                v3098 = vbslq_s8(v3097, v3100, v3098);
                v3099 = vbslq_s8(v3096, v3100, v3099);
              }

              v3102 = 0uLL;
              v3103 = 0uLL;
              if ((v3068 & 1) == 0)
              {
                v3103 = *(&STACK[0x1440] + v3058 + 1152);
                v3102 = *(&STACK[0x1440] + v3058 + 1136);
              }

              v3097.i64[0] = v3058;
              v3096.i64[0] = 96;
              v3104 = vdupq_lane_s64(vceqq_s64(v3097, v3096).i64[0], 0);
              v3105.i64[0] = v3098.i64[0];
              v3105.i64[1] = v3100.i64[0];
              v3106 = vbslq_s8(v3104, v3105, v3098);
              v3107 = vcgtq_f32(v3106, v3075);
              v3108 = vcgtq_f32(v3099, v3074);
              v3074 = vmaxnmq_f32(v3099, v3074);
              v3075 = vmaxnmq_f32(v3106, v3075);
              v3076 = vbslq_s8(v3107, v3071, v3076);
              v3073 = vbslq_s8(v3108, v3072, v3073);
              v3106.i64[0] = v3058;
              v3107.i64[0] = 96;
              v3109 = vdupq_lane_s64(vceqq_s64(v3106, v3107).i64[0], 0);
              v3107.i64[0] = v3103.i64[0];
              v3107.i64[1] = -1;
              v3110 = vcltzq_s32(vbslq_s8(v3109, v3107, v3103));
              v3111 = vcltzq_s32(v3102);
              v3112 = vnegq_f32(v3100);
              v3070 = vminnmq_f32(v3070, vbslq_s8(v3111, v3112, v3079));
              v3077 = vminnmq_f32(v3077, vbslq_s8(v3110, v3112, v3080));
              v3069 = vmaxnmq_f32(v3069, vbslq_s8(v3111, v3100, v3079));
              v3078 = vmaxnmq_f32(v3078, vbslq_s8(v3110, v3100, v3080));
              v3072 = vaddq_s32(v3072, v3101);
              v3071 = vaddq_s32(v3071, v3101);
              v3058 += 32;
            }

            while (v3058 != 128);
            v3057.i32[0] = 0;
            v3113 = vmaxnmq_f32(v3074, v3075);
            v3114 = vbslq_s8(vcgtq_f32(v3075, v3074), v3076, v3073);
            v3115 = vextq_s8(v3113, v3113, 8uLL);
            v3116 = vcgtq_f32(v3115, v3113);
            v3117 = vmaxnmq_f32(v3113, v3115);
            v3118 = vbslq_s8(v3116, vextq_s8(v3114, v3114, 8uLL), v3114);
            v3119 = *(STACK[0x300] + 16 * vbslq_s8(vcgtq_f32(vrev64q_s32(v3117), v3117), vdupq_lane_s32(*v3118.i8, 1), v3118).i32[0]);
            v3120 = vmaxnmq_f32(v3069, v3078);
            v3121 = vminnmq_f32(v3070, v3077);
            v3122 = vmaxnmq_f32(v3120, vextq_s8(v3120, v3120, 8uLL));
            v3123 = vminnmq_f32(v3121, vextq_s8(v3121, v3121, 8uLL));
            v3124 = vmaxnmq_f32(v3122, vrev64q_s32(v3122));
            v3125 = vminnmq_f32(v3123, vrev64q_s32(v3123));
            v3126 = vcgtq_f32(*&STACK[0x2C0], v3119);
            v3127 = v3126.i32[1];
            if (v3001 == 30)
            {
              v3127 = v3126.i32[0];
            }

            v3126.i32[0] = v3127;
            v3128 = vdupq_lane_s32(*&vceqq_s32(v3126, v3057), 0);
            v3129 = vbslq_s8(v3128, v3124, v3125);
            v3130 = vbslq_s8(v3128, v3125, v3124);
            v3131 = *&STACK[0x2A0];
            v3132 = vcltzq_s32(vshlq_n_s32(*&STACK[0x2A0], 0x1FuLL));
            v3133 = vbslq_s8(v3132, v3130, *&STACK[0x2C0]);
            v3134 = vbslq_s8(v3132, v3129, v3119);
            STACK[0x2B0] = v3012;
            if (v2995)
            {
              v3135 = (&unk_298496760 + 32 * v3002);
              v3136 = vsubq_f32(vqtbl1q_s8(v3133, *v3135), v3133);
              v3137 = vsubq_f32(vqtbl1q_s8(v3134, v3135[1]), v3134);
              v3138 = vmlaq_f32(vmulq_f32(v3137, v3137), v3136, v3136);
              v3138.i64[0] = vpaddq_f32(v3138, v3138).u64[0];
              v3139 = *&STACK[0x350];
              if (vpadd_f32(*v3138.f32, *v3138.f32).f32[0] >= 0.00049212)
              {
                v3150 = 6;
              }

              else
              {
                v3140 = vmaxnmq_f32(v3133, v3134);
                v3141 = vminnmq_f32(v3133, v3134);
                v3142 = vmaxnmq_f32(v3140, vuzp2q_s32(vextq_s8(v3140, v3140, 4uLL), v3140));
                v3143 = vminnmq_f32(v3141, vuzp2q_s32(vextq_s8(v3141, v3141, 4uLL), v3141));
                v3144 = vmaxnmq_f32(v3142, vzip2q_s32(vzip1q_s32(v3142, vextq_s8(v3142, v3142, 0xCuLL)), v3142));
                v3145 = vminnmq_f32(v3143, vzip2q_s32(vzip1q_s32(v3143, vextq_s8(v3143, v3143, 0xCuLL)), v3143));
                v3146 = vabdq_f32(v3134, v3133);
                v3147 = vpaddq_f32(v3146, v3146);
                *v3147.f32 = vpadd_f32(*v3147.f32, *v3147.f32);
                v3147.f32[0] = v3147.f32[0] + v3147.f32[0];
                v3148 = vsubq_f32(v3144, v3145);
                v3148.f32[0] = 3.0 * v3148.f32[0];
                v3149 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3147, v3148)), 0);
                v3134 = vbslq_s8(v3149, v3134, v3144);
                v3133 = vbslq_s8(v3149, v3133, v3145);
                if (v3147.f32[0] >= v3148.f32[0])
                {
                  v3150 = 2;
                }

                else
                {
                  v3150 = 6;
                }
              }
            }

            else
            {
              v3150 = 8;
              v3139 = *&STACK[0x350];
            }

            v3151 = v3001;
            STACK[0x2C0] = v3002;
            v3152 = 0;
            v3153 = vmovn_s32(v3131);
            v3154 = vdupq_lane_s32(*v3134.f32, 0);
            v3155 = vdupq_lane_s32(*v3134.f32, 1);
            v3156 = vdupq_laneq_s32(v3134, 2);
            *&STACK[0x350] = v3133;
            *&STACK[0x360] = v3134;
            v3157 = vdupq_laneq_s32(v3134, 3);
            v3158 = vdupq_lane_s32(*v3133.f32, 0);
            v3159 = vdupq_lane_s32(*v3133.f32, 1);
            v3160 = 0uLL;
            v3161 = vdupq_laneq_s32(v3133, 2);
            v3162 = 0uLL;
            v3163 = vdupq_laneq_s32(v3133, 3);
            do
            {
              v3164 = *(&STACK[0x1440] + v3152 + 144);
              v3165 = *(&STACK[0x1440] + v3152 + 160);
              v3166 = vsubq_f32(v3165, v3154);
              v3167 = vsubq_f32(v3164, v3154);
              v3169 = *(&STACK[0x1440] + v3152 + 272);
              v3168 = *(&STACK[0x1440] + v3152 + 288);
              v3170 = vsubq_f32(v3169, v3155);
              v3171 = vsubq_f32(v3168, v3155);
              v3173 = *(&STACK[0x1440] + v3152 + 400);
              v3172 = *(&STACK[0x1440] + v3152 + 416);
              v3174 = vsubq_f32(v3173, v3156);
              v3175 = *(&STACK[0x1440] + v3152 + 528);
              v3176 = *(&STACK[0x1440] + v3152 + 544);
              v3177 = vsubq_f32(v3172, v3156);
              v3178 = vsubq_f32(v3176, v3157);
              v3179 = vsubq_f32(v3175, v3157);
              v3180 = vsubq_f32(v3165, v3158);
              v3181 = vsubq_f32(v3164, v3158);
              v3182 = vsubq_f32(v3169, v3159);
              v3183 = vsubq_f32(v3168, v3159);
              v3184 = vsubq_f32(v3173, v3161);
              v3185 = vsubq_f32(v3172, v3161);
              v3186 = vsubq_f32(v3176, v3163);
              v3187 = vsubq_f32(v3175, v3163);
              v3188 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3182, v3182), v3181, v3181), v3184, v3184), v3187, v3187);
              v3189 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3183, v3183), v3180, v3180), v3185, v3185), v3186, v3186);
              v3190 = vminnmq_f32(v3189, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3171, v3171), v3166, v3166), v3177, v3177), v3178, v3178));
              v3191 = *(&STACK[0x1440] + v3152 + 1152);
              v3192 = vorrq_s8(v3191, vcgtq_f32(v3139, v3190));
              v3191.i64[0] = v3152;
              v3189.i64[0] = 96;
              v3162 = vsubq_s32(v3162, vbslq_s8(vdupq_lane_s64(vceqq_s64(v3191, v3189).i64[0], 0), v3192.u64[0], v3192));
              v3160 = vsubq_s32(v3160, vorrq_s8(*(&STACK[0x1440] + v3152 + 1136), vcgtq_f32(v3139, vminnmq_f32(v3188, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3170, v3170), v3167, v3167), v3174, v3174), v3179, v3179)))));
              v3152 += 32;
            }

            while (v3152 != 128);
            v4096 = v3163;
            v4098 = v3161;
            *&STACK[0x2A0] = v3158;
            v3193 = vaddq_s32(v3160, v3162);
            v3193.i64[0] = vpaddq_s32(v3193, v3193).u64[0];
            v3194 = WeightInfoForSingleLineDualWeight_6x5(vpadd_s32(*v3193.i8, *v3193.i8).u8[0], v3150);
            STACK[0x430] = v3194;
            if (v3150 == 2)
            {
              v2963 = v4104;
              v2992 = 0uLL;
              v2991 = STACK[0x2C0];
              v2944 = v2994;
              v2946 = v2993;
              v2990 = STACK[0x2B0];
              v2989 = *&STACK[0x350];
              v2988 = *&STACK[0x360];
              goto LABEL_738;
            }

            v3197 = 0;
            *v3196.i32 = ReciprocalTable[v3194 >> 27];
            *v3195.i32 = *v3196.i32 * (vcvts_n_f32_u32(v4102 + (v3150 >> 1), 2uLL) * *v3196.i32);
            v2989 = *&STACK[0x350];
            v2988 = *&STACK[0x360];
            v3198 = vsubq_f32(*&STACK[0x360], *&STACK[0x350]);
            v3199.i64[0] = 0x8000000080000000;
            v3199.i64[1] = 0x8000000080000000;
            v3200 = vdupq_n_s32(0x3B808081u);
            v3201 = vbslq_s8(vcgtq_f32(v3200, vabdq_f32(*&STACK[0x360], *&STACK[0x350])), vorrq_s8(vandq_s8(v3198, v3199), v3200), v3198);
            __asm { FMOV            V0.4S, #1.0 }

            v3203 = vdupq_lane_s32(v3195, 0);
            v3204 = vdivq_f32(_Q0, v3201);
            v3205 = LOBYTE(STACK[0x14C7]);
            v3206 = v3151;
            v3207 = 992 - 32 * v3151;
            v3208 = 0uLL;
            v3209 = &STACK[0x440];
            v3210 = 0uLL;
            v2992 = 0uLL;
            v3211.i64[0] = 0x800000008;
            v3211.i64[1] = 0x800000008;
            v2944 = v2994;
            v2946 = v2993;
            v2990 = STACK[0x2B0];
            v3212 = *&STACK[0x2A0];
            v3213.i64[1] = v3159.i64[1];
            while (1)
            {
              v3214 = (&STACK[0x1440] + v3197);
              v3215 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3197 + 144), v3212), v3204.f32[0]);
              v3216 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3197 + 160), v3212), v3204.f32[0]);
              *v3209 = v3215;
              *(v3209 + 1) = v3216;
              v3217 = vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3197 + 272), v3159), *v3204.f32, 1);
              v3218 = vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3197 + 288), v3159), *v3204.f32, 1);
              *(v3209 + 2) = v3217;
              *(v3209 + 3) = v3218;
              v3219 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3197 + 400), v4098), v3204, 2);
              v3220 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3197 + 416), v4098), v3204, 2);
              *(v3209 + 4) = v3219;
              *(v3209 + 5) = v3220;
              v3221 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3197 + 528), v4096), v3204, 3);
              v3222 = vmulq_laneq_f32(vsubq_f32(*(&STACK[0x1440] + v3197 + 544), v4096), v3204, 3);
              *(v3209 + 6) = v3221;
              *(v3209 + 7) = v3222;
              v3223 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3218, v3218), v3216, v3216), v3220, v3220), v3222, v3222), *(v3209 + v3207 + 16), *(v3209 + v3207 + 16));
              v3224 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3217, v3217), v3215, v3215), v3219, v3219), v3221, v3221), *(v3209 + v3207), *(v3209 + v3207));
              v3225 = vcgtq_f32(v3203, v3224);
              v3226 = vcgtq_f32(v3203, v3223);
              v3227 = (&STACK[0x21F0] + v3197);
              *v3227 = v3225;
              v3227[1] = v3226;
              if (v3205)
              {
                v3225 = vbicq_s8(vcgtq_f32(v3203, v3224), v3214[71]);
                v3226 = vbicq_s8(vcgtq_f32(v3203, v3223), v3214[72]);
                *v3227 = v3225;
                v3227[1] = v3226;
              }

              if (v3197 == 96)
              {
                break;
              }

              v3208 = vsubq_s32(v3208, v3225);
              v3210 = vsubq_s32(v3210, v3226);
              v3197 += 32;
              v3209 += 16;
            }

            *&STACK[0x2250] = v3225;
            *&STACK[0x2260] = v3226.u64[0];
            v3228 = vsubq_s32(v3210, v3226.u64[0]);
            v3229 = vaddq_s32(vsubq_s32(v3208, v3225), v3228);
            v3229.i64[0] = vpaddq_s32(v3229, v3229).u64[0];
            v3230 = vpadd_s32(*v3229.i8, *v3229.i8).u8[0];
            v3231 = vmovl_u16(v3153);
            if ((v3230 & 0xFE) != 0)
            {
              v3232 = 0;
              v3233 = vcltzq_s32(*&STACK[0x21F0]);
              v3234 = vcltzq_s32(*&STACK[0x2200]);
              v3235 = vandq_s8(v3234, *&STACK[0x14E0]);
              v3236 = vandq_s8(v3233, *&STACK[0x14D0]);
              v3237 = vandq_s8(*(STACK[0x310] + 16), v3234);
              v3238 = vandq_s8(*STACK[0x310], v3233);
              v3239 = vandq_s8(*(STACK[0x310] + 144), v3234);
              v3240 = vandq_s8(*(STACK[0x310] + 128), v3233);
              v3241 = vandq_s8(*(STACK[0x310] + 272), v3234);
              v3242 = vandq_s8(*(STACK[0x310] + 256), v3233);
              do
              {
                v3212.i64[0] = v3232;
                v3213.i64[0] = 64;
                v3243 = vcltzq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v3212, v3213).i64[0], 0), v2946[v3232 / 8 + 2], *&v2946[v3232 / 8 + 2]));
                v3244 = vcltzq_s32(*&v2946[v3232 / 8]);
                v3236 = vaddq_f32(v3236, vandq_s8(v3244, *(&STACK[0x1440] + v3232 + 176)));
                v3235 = vaddq_f32(v3235, vandq_s8(v3243, *(&STACK[0x1440] + v3232 + 192)));
                v3238 = vaddq_f32(v3238, vandq_s8(v3244, *(&STACK[0x1440] + v3232 + 304)));
                v3237 = vaddq_f32(v3237, vandq_s8(v3243, *(&STACK[0x1440] + v3232 + 320)));
                v3240 = vaddq_f32(v3240, vandq_s8(*(&STACK[0x1440] + v3232 + 432), v3244));
                v3239 = vaddq_f32(v3239, vandq_s8(*(&STACK[0x1440] + v3232 + 448), v3243));
                v3212 = *(&STACK[0x1440] + v3232 + 560);
                v3213 = *(&STACK[0x1440] + v3232 + 576);
                v3242 = vaddq_f32(v3242, vandq_s8(v3212, v3244));
                v3241 = vaddq_f32(v3241, vandq_s8(v3213, v3243));
                v3232 += 32;
              }

              while (v3232 != 96);
              v3228 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v3236, v3235), vaddq_f32(v3238, v3237)), vpaddq_f32(vaddq_f32(v3240, v3239), vaddq_f32(v3242, v3241))), ReciprocalTable[v3230]);
              v2989 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v3231, 0x1FuLL)), v2989, v3228);
            }

            if (v2944 != 3)
            {
              v3245 = 0;
              *v3228.i32 = *v3196.i32 * (*v3196.i32 * 0.25);
              v3246 = vdupq_lane_s32(*v3228.i8, 0);
              v3247 = (&STACK[0x820] - 4 * v3206);
              v3248 = 0uLL;
              v3249 = 0uLL;
              v3250 = 0uLL;
              v3251 = 0uLL;
              do
              {
                v3252 = vmulq_f32(v3247[1], v3247[1]);
                v3253 = vmulq_f32(*v3247, *v3247);
                v3254 = vcgtq_f32(v3246, v3253);
                v3255 = vcgtq_f32(v3246, v3252);
                v3256 = (&STACK[0x21F0] + v3245 * 8);
                *v3256 = v3254;
                v3256[1] = v3255;
                if (v3205)
                {
                  v3254 = vbicq_s8(vcgtq_f32(v3246, v3253), *(&STACK[0x1440] + v3245 * 8 + 1136));
                  v3255 = vbicq_s8(vcgtq_f32(v3246, v3252), *(&STACK[0x1440] + v3245 * 8 + 1152));
                  *v3256 = v3254;
                  v3256[1] = v3255;
                }

                if (v3245 == 12)
                {
                  v3255.i64[1] = 0;
                  *&STACK[0x2250] = v3254;
                  *&STACK[0x2260] = v3255.u64[0];
                }

                v3250 = vsubq_s32(v3250, v3254);
                v3251 = vsubq_s32(v3251, v3255);
                v3249 = vaddq_f32(v3249, vandq_s8(vcltzq_s32(v3255), *&v3006[v3245 + 2]));
                v3248 = vaddq_f32(v3248, vandq_s8(vcltzq_s32(v3254), *&v3006[v3245]));
                v3245 += 4;
                v3247 += 8;
              }

              while (v3245 != 16);
              v3257 = vaddq_s32(v3250, v3251);
              v3258 = vpaddq_s32(v3257, v3257);
              *v3258.f32 = vpadd_s32(*v3258.f32, *v3258.f32);
              if ((v3258.i8[0] & 0xFE) != 0)
              {
                v3259 = vaddq_f32(v3248, v3249);
                v3260 = vpaddq_f32(v3259, v3259);
                *v3260.f32 = vpadd_f32(*v3260.f32, *v3260.f32);
                v3258.f32[0] = ReciprocalTable[v3258.u8[0]];
                v2989 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v3231, 0x1FuLL)), vdupq_lane_s32(*&vmulq_f32(v3260, v3258), 0), v2989);
              }
            }

            v3261 = 0;
            v3262 = vdupq_lane_s32(*v2988.f32, 0);
            v3263 = vdupq_lane_s32(*v2988.f32, 1);
            v3264 = vdupq_laneq_s32(v2988, 2);
            v3265 = 992 - 32 * v3206;
            v3266 = 0uLL;
            v3267 = vdupq_laneq_s32(v2988, 3);
            v3268 = &STACK[0x440];
            v3269 = 0uLL;
            while (1)
            {
              v3270 = (&STACK[0x1440] + v3261);
              v3271 = vmulq_n_f32(vsubq_f32(v3262, *(&STACK[0x1440] + v3261 + 144)), v3204.f32[0]);
              v3272 = vmulq_n_f32(vsubq_f32(v3262, *(&STACK[0x1440] + v3261 + 160)), v3204.f32[0]);
              *v3268 = v3271;
              *(v3268 + 1) = v3272;
              v3273 = vmulq_lane_f32(vsubq_f32(v3263, *(&STACK[0x1440] + v3261 + 272)), *v3204.f32, 1);
              v3274 = vmulq_lane_f32(vsubq_f32(v3263, *(&STACK[0x1440] + v3261 + 288)), *v3204.f32, 1);
              *(v3268 + 2) = v3273;
              *(v3268 + 3) = v3274;
              v3275 = vmulq_laneq_f32(vsubq_f32(v3264, *(&STACK[0x1440] + v3261 + 400)), v3204, 2);
              v3276 = vmulq_laneq_f32(vsubq_f32(v3264, *(&STACK[0x1440] + v3261 + 416)), v3204, 2);
              *(v3268 + 4) = v3275;
              *(v3268 + 5) = v3276;
              v3277 = vmulq_laneq_f32(vsubq_f32(v3267, *(&STACK[0x1440] + v3261 + 528)), v3204, 3);
              v3278 = vmulq_laneq_f32(vsubq_f32(v3267, *(&STACK[0x1440] + v3261 + 544)), v3204, 3);
              *(v3268 + 6) = v3277;
              *(v3268 + 7) = v3278;
              v3279 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3274, v3274), v3272, v3272), v3276, v3276), v3278, v3278), *(v3268 + v3265 + 16), *(v3268 + v3265 + 16));
              v3280 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3273, v3273), v3271, v3271), v3275, v3275), v3277, v3277), *(v3268 + v3265), *(v3268 + v3265));
              v3281 = vcgtq_f32(v3203, v3280);
              v3282 = vcgtq_f32(v3203, v3279);
              v3283 = (&STACK[0x21F0] + v3261);
              *v3283 = v3281;
              v3283[1] = v3282;
              if (v3205)
              {
                v3281 = vbicq_s8(vcgtq_f32(v3203, v3280), v3270[71]);
                v3282 = vbicq_s8(vcgtq_f32(v3203, v3279), v3270[72]);
                *v3283 = v3281;
                v3283[1] = v3282;
              }

              if (v3261 == 96)
              {
                break;
              }

              v3266 = vsubq_s32(v3266, v3281);
              v3269 = vsubq_s32(v3269, v3282);
              v3261 += 32;
              v3268 += 16;
            }

            *&STACK[0x2250] = v3281;
            *&STACK[0x2260] = v3282.u64[0];
            v3284 = vaddq_s32(vsubq_s32(v3266, v3281), vsubq_s32(v3269, v3282.u64[0]));
            v3284.i64[0] = vpaddq_s32(v3284, v3284).u64[0];
            v3285 = vpadd_s32(*v3284.i8, *v3284.i8).u8[0];
            if ((v3285 & 0xFE) != 0)
            {
              v3286 = 0;
              v3287 = vcltzq_s32(*&STACK[0x21F0]);
              v3288 = vcltzq_s32(*&STACK[0x2200]);
              v3289 = vandq_s8(v3288, *&STACK[0x14E0]);
              v3290 = vandq_s8(v3287, *&STACK[0x14D0]);
              v3291 = vandq_s8(*(STACK[0x310] + 16), v3288);
              v3292 = vandq_s8(*STACK[0x310], v3287);
              v3293 = vandq_s8(*(STACK[0x310] + 144), v3288);
              v3294 = vandq_s8(*(STACK[0x310] + 128), v3287);
              v3295 = vandq_s8(*(STACK[0x310] + 272), v3288);
              v3296 = vandq_s8(*(STACK[0x310] + 256), v3287);
              do
              {
                v3281.i64[0] = v3286;
                v3297 = vcltzq_s32(vbslq_s8(vdupq_lane_s64(vceqq_s64(v3281, v4059).i64[0], 0), v2946[v3286 / 8 + 2], *&v2946[v3286 / 8 + 2]));
                v3298 = vcltzq_s32(*&v2946[v3286 / 8]);
                v3290 = vaddq_f32(v3290, vandq_s8(v3298, *(&STACK[0x1440] + v3286 + 176)));
                v3289 = vaddq_f32(v3289, vandq_s8(v3297, *(&STACK[0x1440] + v3286 + 192)));
                v3292 = vaddq_f32(v3292, vandq_s8(v3298, *(&STACK[0x1440] + v3286 + 304)));
                v3291 = vaddq_f32(v3291, vandq_s8(v3297, *(&STACK[0x1440] + v3286 + 320)));
                v3294 = vaddq_f32(v3294, vandq_s8(*(&STACK[0x1440] + v3286 + 432), v3298));
                v3293 = vaddq_f32(v3293, vandq_s8(*(&STACK[0x1440] + v3286 + 448), v3297));
                v3281 = *(&STACK[0x1440] + v3286 + 560);
                v3296 = vaddq_f32(v3296, vandq_s8(v3281, v3298));
                v3295 = vaddq_f32(v3295, vandq_s8(*(&STACK[0x1440] + v3286 + 576), v3297));
                v3286 += 32;
              }

              while (v3286 != 96);
              v2988 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v3231, 0x1FuLL)), v2988, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(v3290, v3289), vaddq_f32(v3292, v3291)), vpaddq_f32(vaddq_f32(v3294, v3293), vaddq_f32(v3296, v3295))), ReciprocalTable[v3285]));
            }

            if (v2944 == 3)
            {
              v2963 = v4104;
LABEL_737:
              v2991 = STACK[0x2C0];
              goto LABEL_738;
            }

            v3299 = 0;
            *v3196.i32 = *v3196.i32 * (*v3196.i32 * 0.25);
            v3300 = vdupq_lane_s32(v3196, 0);
            v3301 = (&STACK[0x820] - 4 * v3206);
            v3302 = 0uLL;
            v3303 = 0uLL;
            v3304 = 0uLL;
            v3305 = 0uLL;
            do
            {
              v3306 = vmulq_f32(v3301[1], v3301[1]);
              v3307 = vmulq_f32(*v3301, *v3301);
              v3308 = vcgtq_f32(v3300, v3307);
              v3309 = vcgtq_f32(v3300, v3306);
              v3310 = (&STACK[0x21F0] + v3299 * 8);
              *v3310 = v3308;
              v3310[1] = v3309;
              if (v3205)
              {
                v3308 = vbicq_s8(vcgtq_f32(v3300, v3307), *(&STACK[0x1440] + v3299 * 8 + 1136));
                v3309 = vbicq_s8(vcgtq_f32(v3300, v3306), *(&STACK[0x1440] + v3299 * 8 + 1152));
                *v3310 = v3308;
                v3310[1] = v3309;
              }

              if (v3299 == 12)
              {
                v3309.i64[1] = 0;
                *&STACK[0x2250] = v3308;
                *&STACK[0x2260] = v3309.u64[0];
              }

              v3304 = vsubq_s32(v3304, v3308);
              v3305 = vsubq_s32(v3305, v3309);
              v3303 = vaddq_f32(v3303, vandq_s8(vcltzq_s32(v3309), *&v3006[v3299 + 2]));
              v3302 = vaddq_f32(v3302, vandq_s8(vcltzq_s32(v3308), *&v3006[v3299]));
              v3299 += 4;
              v3301 += 8;
            }

            while (v3299 != 16);
            v3311 = vaddq_s32(v3304, v3305);
            v3312 = vpaddq_s32(v3311, v3311);
            *v3312.f32 = vpadd_s32(*v3312.f32, *v3312.f32);
            if ((v3312.i8[0] & 0xFE) != 0)
            {
              v3313 = vaddq_f32(v3302, v3303);
              v3314 = vpaddq_f32(v3313, v3313);
              *v3314.f32 = vpadd_f32(*v3314.f32, *v3314.f32);
              v3312.f32[0] = ReciprocalTable[v3312.u8[0]];
              v3302 = vdupq_lane_s32(*&vmulq_f32(v3314, v3312), 0);
              v2988 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v3231, 0x1FuLL)), v3302, v2988);
            }

            v2963 = v4104;
            if (!LOBYTE(STACK[0x14C6]))
            {
              goto LABEL_737;
            }

            if (!v3205)
            {
              v3316 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v2988, 3), vdupq_laneq_s32(v2989, 3)), 0);
              v2988 = vandq_s8(v2988, v3316);
              v2989 = vbicq_s8(v2989, v3316);
              goto LABEL_737;
            }

            v3315 = vsubq_f32(v2988, v2989);
            v3302.i32[0] = v3315.i32[3];
            if (v3315.f32[3] == 0.0)
            {
              if (LOBYTE(STACK[0x14C6]) == 29)
              {
                v2989 = 0uLL;
                goto LABEL_737;
              }

              v2989 = v4054;
            }

            v3303.i64[0] = 0;
            v3317 = vdupq_lane_s32(*&vcgtq_f32(v3303, v3302), 0);
            v3318 = vbslq_s8(v3317, v2989, v2988);
            v3319 = vbslq_s8(v3317, vnegq_f32(v3315), v3315);
            v3320 = vbslq_s8(v3317, v2988, v2989);
            *v3305.i32 = v3320.f32[3] / v3319.f32[3];
            v3321 = ReciprocalTable[BYTE4(v3194)];
            v3322 = vmlsq_lane_f32(v3320, v3319, *v3305.i8, 0);
            v3319.f32[0] = -v3321;
            *v3305.i32 = v3321 + 1.0;
            if ((vminvq_u32(vandq_s8(vcgtq_f32(v3322, vdupq_lane_s32(*v3319.f32, 0)), vcgtq_f32(vdupq_lane_s32(*v3305.i8, 0), v3322))) & 0x80000000) != 0)
            {
              v2989 = vminnmq_f32(vmaxnmq_f32(v3322, 0), _Q0);
              v2988 = v3318;
            }

            else
            {
              v3323 = vcltzq_s32(vshlq_n_s32(v3231, 0x1FuLL));
              v3324 = vbslq_s8(v3323, v3320, *(STACK[0x300] + 16 * v4084));
              v3325 = vandq_s8(vsubq_f32(v4092, v3324), v4088);
              v3326 = vdupq_lane_s32(*v3324.f32, 0);
              v3327 = vdupq_lane_s32(*v3324.f32, 1);
              v3328 = vdupq_laneq_s32(v3324, 2);
              v3329 = vdupq_laneq_s32(v3324, 3);
              v3330 = vdupq_lane_s32(*v3325.i8, 0);
              v3331 = vdupq_laneq_s32(v3325, 2);
              v3332 = vdupq_laneq_s32(v3325, 3);
              v3333 = xmmword_298495620;
              v3334 = xmmword_298495600;
              v3335.i64[0] = -1;
              v3335.i64[1] = -1;
              v3336.i64[0] = 0x7F0000007FLL;
              v3336.i64[1] = 0x7F0000007FLL;
              v3337 = STACK[0x310];
              v3338 = 4;
              v3339.i64[0] = 0x7F0000007FLL;
              v3339.i64[1] = 0x7F0000007FLL;
              v3340.i64[0] = -1;
              v3340.i64[1] = -1;
              do
              {
                v3341 = vsubq_f32(v3337[-7], v3326);
                v3342 = vsubq_f32(v3337[-8], v3326);
                v3343 = vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*v3337, v3327), *v3325.i8, 1), v3330, v3342), v3331, vsubq_f32(v3337[8], v3328));
                v3344 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(v3337[1], v3327), *v3325.i8, 1), v3330, v3341), v3331, vsubq_f32(v3337[9], v3328)), v3332, vsubq_f32(v3337[17], v3329));
                v3342.i64[0] = v3338;
                v3341.i64[0] = 1;
                v3345 = vmlaq_f32(v3343, v3332, vsubq_f32(v3337[16], v3329));
                v3346 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v3342, v3341).i64[0], 0), v3344.u64[0], v3344);
                v3347 = vcgtq_f32(v3346, v3339);
                v3348 = vcgtq_f32(v3345, v3336);
                v3336 = vmaxnmq_f32(v3336, v3345);
                v3339 = vmaxnmq_f32(v3339, v3346);
                v3340 = vbslq_s8(v3347, v3333, v3340);
                v3335 = vbslq_s8(v3348, v3334, v3335);
                v3334 = vaddq_s32(v3334, v3211);
                v3333 = vaddq_s32(v3333, v3211);
                v3337 += 2;
                --v3338;
              }

              while (v3338);
              v3349 = vbslq_s8(vcgtq_f32(v3339, v3336), v3340, v3335);
              v3350 = vmaxnmq_f32(v3336, v3339);
              v3351 = vextq_s8(v3350, v3350, 8uLL);
              v3352 = vbslq_s8(vcgtq_f32(v3351, v3350), vextq_s8(v3349, v3349, 8uLL), v3349);
              v3353 = vmaxnmq_f32(v3350, v3351);
              v3354 = vbslq_s8(v3323, v3318, *(STACK[0x300] + 16 * vbslq_s8(vcgtq_f32(vrev64q_s32(v3353), v3353), vdupq_lane_s32(*v3352.i8, 1), v3352).i32[0]));
              v3355 = v3324;
              v3355.i32[3] = 0;
              v3356 = v3354;
              v3356.i32[3] = 0;
              v3357 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vmvnq_s8(vcgeq_f32(v3354, v3324))), 3)), 0x1FuLL));
              v2988 = vbslq_s8(v3357, v3356, v3354);
              v2989 = vbslq_s8(v3357, v3324, v3355);
            }

            goto LABEL_737;
          }
        }

        v3041 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v3028, v3030), v3032), v3034), v3026, v3026);
        v3040 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v3027, v3029), v3031), v3033), v3025, v3025);
        if (!v3014)
        {
          goto LABEL_654;
        }

LABEL_653:
        v3025 = vcltzq_s32(*(&STACK[0x1440] + v3000 + 1152));
        v3040 = vbslq_s8(v3025, v2999, v3040);
        v3041 = vbslq_s8(vcltzq_s32(*(&STACK[0x1440] + v3000 + 1136)), v2999, v3041);
        goto LABEL_654;
      }

      v2951 = *(STACK[0x310] + 992);
      v2950 = *(STACK[0x310] + 1008);
      v2952 = v4065;
      v2953 = 3;
      v2955 = *(STACK[0x310] + 256);
      v2954 = *(STACK[0x310] + 272);
      v2956 = v2951;
      v2957 = v2950;
      v2958 = v2955;
      v2959 = v2954;
      do
      {
        v2960 = v2952[1];
        v2951 = vmaxnmq_f32(v2951, *v2952);
        v2950 = vmaxnmq_f32(v2950, v2960);
        v2956 = vminnmq_f32(v2956, *v2952);
        v2957 = vminnmq_f32(v2957, v2960);
        v2962 = v2952[-46];
        v2961 = v2952[-45];
        v2955 = vmaxnmq_f32(v2955, v2962);
        v2954 = vmaxnmq_f32(v2954, v2961);
        v2958 = vminnmq_f32(v2958, v2962);
        v2959 = vminnmq_f32(v2959, v2961);
        v2952 += 2;
        --v2953;
      }

      while (v2953);
      v2963 = v10;
      v2964 = vmaxnmq_f32(v2951, v2950);
      v2965 = vmaxnmq_f32(v2955, v2954);
      v2966 = vminnmq_f32(v2956, v2957);
      v2967 = vminnmq_f32(v2958, v2959);
      v2968 = vmaxnmq_f32(vzip1q_s32(v2964, v2965), vzip2q_s32(v2964, v2965));
      v2969 = vminnmq_f32(vzip1q_s32(v2966, v2967), vzip2q_s32(v2966, v2967));
      v2970 = vmaxnmq_f32(v2968, vextq_s8(v2968, v2968, 8uLL));
      v2971 = vminnmq_f32(v2969, vextq_s8(v2969, v2969, 8uLL));
      v2972 = vdupq_lane_s32(*v2971.i8, 0);
      v2973 = vdupq_lane_s32(*v2970.i8, 0);
      v2974 = vdupq_lane_s32(*v2971.i8, 1);
      v2975 = vdupq_lane_s32(*v2970.i8, 1);
      v2976 = 0uLL;
      v2977 = v4066;
      v2978 = 4;
      v2979 = 0uLL;
      do
      {
        v2980 = v2977[1];
        v2981 = vuzp1q_s16(vcgtq_f32(v2949, vsubq_f32(*v2977, v2972)), vcgtq_f32(v2949, vsubq_f32(v2980, v2972)));
        *v2980.f32 = vmovn_s16(vorrq_s8(vorrq_s8(v2981, vuzp1q_s16(vcgtq_f32(v2949, vsubq_f32(v2973, *v2977)), vcgtq_f32(v2949, vsubq_f32(v2973, v2980)))), vorrq_s8(vuzp1q_s16(vcgtq_f32(v2949, vsubq_f32(v2975, v2977[-46])), vcgtq_f32(v2949, vsubq_f32(v2975, v2977[-45]))), vuzp1q_s16(vcgtq_f32(v2949, vsubq_f32(v2977[-46], v2974)), vcgtq_f32(v2949, vsubq_f32(v2977[-45], v2974))))));
        v2982 = vshlq_n_s32(vmovl_u16(vzip1_s8(*v2980.f32, *v2971.i8)), 0x1FuLL);
        v2983 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v2980.f32, *v2971.i8)), 0x1FuLL));
        v2981.i64[0] = v2978;
        v2979 = vsubq_s32(v2979, vbslq_s8(vdupq_lane_s64(vceqq_s64(v2981, v4064).i64[0], 0), v2983.u64[0], v2983));
        v2976 = vsubq_s32(v2976, vcltzq_s32(v2982));
        v2977 += 2;
        --v2978;
      }

      while (v2978);
      v2984 = vzip1q_s32(v2970, v2970);
      v2984.i32[2] = v2970.i32[0];
      v2985 = vzip1q_s32(v2971, v2971);
      v2985.i32[2] = v2971.i32[0];
      *&STACK[0x350] = v2985;
      *&STACK[0x360] = v2984;
      v2986 = vaddq_s32(v2976, v2979);
      v2986.i64[0] = vpaddq_s32(v2986, v2986).u64[0];
      v2987 = WeightInfoForSingleLineDualWeight_6x5(vpadd_s32(*v2986.i8, *v2986.i8).u8[0], 4);
      v2989 = *&STACK[0x350];
      v2988 = *&STACK[0x360];
      STACK[0x430] = v2987;
      LODWORD(v2990) = 31 - __clz(STACK[0x330]);
      v2991 = v2990;
      v2992 = 0uLL;
LABEL_738:
      *&STACK[0x1F50] = v2992;
      *&STACK[0x1F40] = v2992;
      *&STACK[0x1F30] = v2992;
      v3358 = STACK[0x1460];
      *&STACK[0x450] = v2988;
      *&STACK[0x440] = v2989;
      FindColorVectors(&STACK[0x440], v3358, 2, 342, &STACK[0x430], &STACK[0x1F30]);
      v2943 = 0uLL;
      v3360 = 0;
      v3361 = STACK[0x430];
      v3362 = *&STACK[0x1F40];
      v3363 = *&STACK[0x1F30];
      v3364 = vandq_s8(vcgezq_s32(FindDualWeights_6x5_kVectorMask[v2991]), *&STACK[0x1F40]);
      v3365 = vmulq_f32(v3364, v3364);
      v3366 = vrecpes_f32(vaddv_f32(vadd_f32(*v3365.i8, *&vextq_s8(v3365, v3365, 8uLL))));
      v3367 = vdupq_lane_s32(STACK[0x1F30], 0);
      v3368 = vdupq_lane_s32(STACK[0x1F30], 1);
      v3369 = vdupq_laneq_s32(*&STACK[0x1F30], 2);
      v3370 = vdupq_laneq_s32(*&STACK[0x1F30], 3);
      v3371 = vdupq_lane_s32(*v3364.f32, 0);
      v3372 = vdupq_laneq_s32(v3364, 2);
      v3373 = vdupq_laneq_s32(v3364, 3);
      do
      {
        __asm { FMOV            V4.4S, #1.0 }

        v3375 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3360 + 288), v3368), *v3364.f32, 1), v3371, vsubq_f32(*(&STACK[0x1440] + v3360 + 160), v3367)), v3372, vsubq_f32(*(&STACK[0x1440] + v3360 + 416), v3369)), v3373, vsubq_f32(*(&STACK[0x1440] + v3360 + 544), v3370)), v3366), _Q4), 0);
        v3376 = (&STACK[0x21F0] + v3360);
        *v3376 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_lane_f32(vsubq_f32(*(&STACK[0x1440] + v3360 + 272), v3368), *v3364.f32, 1), v3371, vsubq_f32(*(&STACK[0x1440] + v3360 + 144), v3367)), v3372, vsubq_f32(*(&STACK[0x1440] + v3360 + 400), v3369)), v3373, vsubq_f32(*(&STACK[0x1440] + v3360 + 528), v3370)), v3366), _Q4), 0);
        v3376[1] = v3375;
        v3360 += 32;
      }

      while (v3360 != 128);
      v3377 = *&STACK[0x22E0];
      *&STACK[0x2260] = STACK[0x2260];
      *&STACK[0x22E0] = v3377;
      v3378 = STACK[0x330];
      v10 = v2963;
      if ((STACK[0x330] & 8) == 0 && SLOBYTE(STACK[0x14C6]) >= 1)
      {
        v3379 = 0.0;
        if (fabsf(*&v3362.i32[3]) >= 0.0039216)
        {
          v3379 = vrecpes_f32(*&v3362.i32[3]);
        }

        v3380 = &STACK[0x21F0];
        v3381 = v4095;
        v3382 = 4;
        do
        {
          v3383 = vmulq_n_f32(vsubq_f32(*(v3381 - 38), v3370), v3379);
          v3384 = vmulq_n_f32(vsubq_f32(*(v3381 - 37), v3370), v3379);
          v3386 = *v3381;
          v3385 = *(v3381 + 1);
          v3381 += 4;
          v3387 = vbslq_s8(vcltzq_s32(v3385), v3384, v3380[1]);
          *v3380 = vbslq_s8(vcltzq_s32(v3386), v3383, *v3380);
          v3380[1] = v3387;
          v3380 += 2;
          --v3382;
        }

        while (v3382);
        *&STACK[0x2260] = STACK[0x2260];
      }

      *&STACK[0x3C0] = v3362;
      v3388 = *(&STACK[0x3C0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v2990 & 3)));
      v3389 = 0.0;
      if (fabsf(v3388) >= 0.00024414)
      {
        v3389 = vrecpes_f32(v3388);
      }

      *&STACK[0x3B0] = v3363;
      v3390 = (&STACK[0x3B0] & 0xFFFFFFFFFFFFFFF3 | (4 * (v2990 & 3)));
      v3391 = vld1q_dup_f32(v3390);
      v3392 = 128 * v2990 + 144;
      for (n = 4; n != 8; ++n)
      {
        v3394 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3392 + 16), v3391), v3389);
        v3395 = &STACK[0x21F0] + 4 * n;
        *v3395 = vmulq_n_f32(vsubq_f32(*(&STACK[0x1440] + v3392), v3391), v3389);
        *(v3395 + 1) = v3394;
        v3392 += 32;
      }

      v3396 = 0;
      *&STACK[0x22E0] = STACK[0x22E0];
      v3397 = v3361 >> 27;
      v3398 = &ReciprocalTable[v3397];
      v3399 = v3397;
      v3400 = vld1q_dup_f32(v3398);
      do
      {
        v3401 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(*(&STACK[0x21F0] + v3396 + 144), 0), _Q4), v3399));
        v3402 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(*(&STACK[0x21F0] + v3396 + 128), 0), _Q4), v3399));
        v3403 = vmulq_f32(v3400, vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(*(&STACK[0x21F0] + v3396 + 16), 0), _Q4), v3399)));
        v3404 = (&STACK[0x20F0] + v3396);
        *v3404 = vmulq_f32(v3400, vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(*(&STACK[0x21F0] + v3396), 0), _Q4), v3399)));
        v3404[1] = v3403;
        v3404[8] = vmulq_f32(v3400, v3402);
        v3404[9] = vmulq_f32(v3400, v3401);
        v3396 += 32;
      }

      while (v3396 != 128);
      if (STACK[0x1460])
      {
        _Q4 = vmulq_f32(*STACK[0x1460], *&STACK[0x3A0]);
      }

      v3405 = &STACK[0x1440];
      do
      {
        v3406 = v3405;
        v3405 = v3405[5];
      }

      while (v3405);
      v3407 = *(v3406 + 66);
      if (v3407 == 392)
      {
        v3461 = 0;
        v3462 = *&STACK[0x2108];
        v3463 = vzip1q_s32(*&STACK[0x2108], vuzp1q_s32(v3462, v3462));
        v3464 = vextq_s8(*&STACK[0x2108], *&STACK[0x2118], 8uLL);
        v3465 = vzip1q_s32(*&STACK[0x2118], *&STACK[0x2118]);
        v3465.i32[0] = HIDWORD(*&STACK[0x2108]);
        v3462.i32[0] = HIDWORD(STACK[0x2108]);
        *&STACK[0x350] = xmmword_2984962A0;
        v4079 = v3462;
        *&STACK[0x2C0] = xmmword_2984962B0;
        v3466 = v3463;
        v4073 = v3463;
        v3467 = vmlaq_f32(vmulq_f32(v3462, xmmword_2984962A0), xmmword_2984962B0, v3463);
        v4103 = v3367;
        v3468 = *&STACK[0x2130];
        v3469 = *&STACK[0x2120];
        v3470 = vzip1q_s32(*&STACK[0x2120], vuzp1q_s32(v3469, v3469));
        v3471 = vextq_s8(*&STACK[0x2120], *&STACK[0x2130], 8uLL);
        *&STACK[0x2A0] = v3362;
        v3472 = vmlaq_f32(v3467, xmmword_2984962E0, v3470);
        v3473 = vzip1q_s32(v3468, v3468);
        v3473.i32[0] = v3469.i32[3];
        v3469.i32[0] = v3469.i32[1];
        v4100 = vmlaq_f32(v3472, xmmword_2984962F0, v3469);
        v4097 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3465, xmmword_298496290), xmmword_2984962C0, v3464), xmmword_2984962D0, v3471), xmmword_298495FB0, v3473);
        *&STACK[0x2B0] = v3369;
        v4089 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3465, xmmword_298496300), xmmword_298496330, v3464), xmmword_298496340, v3471), xmmword_298496370, v3473);
        v3474 = vmlaq_f32(vmulq_f32(v3473, xmmword_298496370), xmmword_298496340, v3471);
        v3475 = vmlaq_f32(vmulq_f32(v3473, xmmword_298496380), xmmword_298496390, v3471);
        v4099 = v3368;
        v3476 = *&STACK[0x2188];
        v3477 = vzip1q_s32(*&STACK[0x2198], *&STACK[0x2198]);
        v3477.i32[0] = HIDWORD(*&STACK[0x2188]);
        v4077 = vextq_s8(*&STACK[0x2188], *&STACK[0x2198], 8uLL);
        v3478 = *&STACK[0x21A0];
        v3479 = vextq_s8(*&STACK[0x21A0], *&STACK[0x21B0], 8uLL);
        v3480 = vzip1q_s32(*&STACK[0x21B0], *&STACK[0x21B0]);
        v3480.i32[0] = HIDWORD(*&STACK[0x21A0]);
        v4085 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3477, xmmword_298496290), xmmword_2984962C0, v4077), xmmword_2984962D0, v3479), xmmword_298495FB0, v3480);
        v4081 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3477, xmmword_298496300), xmmword_298496330, v4077), xmmword_298496340, v3479), xmmword_298496370, v3480);
        v3481 = vmlaq_f32(vmulq_f32(v3480, xmmword_298496370), xmmword_298496340, v3479);
        v3482 = vmlaq_f32(vmulq_f32(v3480, xmmword_298496380), xmmword_298496390, v3479);
        v3483 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v4079, xmmword_298496310), xmmword_298496320, v3466), xmmword_298496350, v3470), xmmword_298496360, v3469);
        v3484 = vmlaq_f32(vmulq_f32(v3469, xmmword_298496360), xmmword_298496350, v3470);
        v3485 = vzip1q_s32(v3476, vuzp1q_s32(v3476, v3476));
        v3476.i32[0] = HIDWORD(STACK[0x2188]);
        v3486 = vzip1q_s32(v3478, vuzp1q_s32(v3478, v3478));
        v3478.i32[0] = HIDWORD(STACK[0x21A0]);
        v3487 = vmlaq_f32(vmulq_f32(v3469, xmmword_2984962F0), xmmword_2984962E0, v3470);
        v4070 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3476, xmmword_298496310), xmmword_298496320, v3485), xmmword_298496350, v3486), xmmword_298496360, v3478);
        *&STACK[0x360] = vmlaq_f32(vmulq_f32(v3478, xmmword_298496360), xmmword_298496350, v3486);
        v3488 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3476, *&STACK[0x350]), *&STACK[0x2C0], v3485), xmmword_2984962E0, v3486), xmmword_2984962F0, v3478);
        v3489 = vmlaq_f32(vmulq_f32(v3478, xmmword_2984962F0), xmmword_2984962E0, v3486);
        v3490 = *&STACK[0x20F0];
        v3491 = vzip1q_s32(*&STACK[0x2100], *&STACK[0x2100]);
        v3491.i32[0] = HIDWORD(*&STACK[0x20F0]);
        v4069 = vextq_s8(*&STACK[0x20F0], *&STACK[0x2100], 8uLL);
        v3492 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3491, xmmword_298495F80), xmmword_298496240, v4069), xmmword_298496250, v3464), xmmword_298496280, v3465);
        v3493 = *&STACK[0x2138];
        v3494 = *&STACK[0x2148];
        v3495 = vextq_s8(*&STACK[0x2138], *&STACK[0x2148], 8uLL);
        v3496 = vzip1q_s32(v3494, v3494);
        v3496.i32[0] = HIDWORD(*&STACK[0x2138]);
        v4072 = vmlaq_f32(vmlaq_f32(v3474, xmmword_298496330, v3495), xmmword_298496300, v3496);
        v4071 = vmlaq_f32(vmlaq_f32(v3475, xmmword_2984963A0, v3495), xmmword_2984963B0, v3496);
        v3497 = vmlaq_f32(vmulq_f32(v3496, xmmword_298496280), xmmword_298496250, v3495);
        v3498 = *&STACK[0x2170];
        v3499 = vzip1q_s32(*&STACK[0x2180], *&STACK[0x2180]);
        v3499.i32[0] = HIDWORD(*&STACK[0x2170]);
        v4074 = v3499;
        v4075 = vextq_s8(*&STACK[0x2170], *&STACK[0x2180], 8uLL);
        v3500 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3499, xmmword_298495F80), xmmword_298496240, v4075), xmmword_298496250, v4077), xmmword_298496280, v3477);
        v3501 = *&STACK[0x21B8];
        v3502 = *&STACK[0x21C8];
        v3503 = vextq_s8(*&STACK[0x21B8], *&STACK[0x21C8], 8uLL);
        v3504 = vzip1q_s32(v3502, v3502);
        v3504.i32[0] = HIDWORD(*&STACK[0x21B8]);
        v4076 = vmlaq_f32(vmlaq_f32(v3482, xmmword_2984963A0, v3503), xmmword_2984963B0, v3504);
        v4078 = vmlaq_f32(vmlaq_f32(v3481, xmmword_298496330, v3503), xmmword_298496300, v3504);
        v3505 = vzip1q_s32(v3490, vuzp1q_s32(v3490, v3490));
        v3490.i32[0] = HIDWORD(STACK[0x20F0]);
        v3506 = vmlaq_f32(vmulq_f32(v3504, xmmword_298496280), xmmword_298496250, v3503);
        v3507 = vzip1q_s32(v3493, vuzp1q_s32(v3493, v3493));
        v3493.i32[0] = HIDWORD(STACK[0x2138]);
        v3508 = vmlaq_f32(vmlaq_f32(v3484, xmmword_298496320, v3507), xmmword_298496310, v3493);
        v3509 = *&STACK[0x2C0];
        v3510 = *&STACK[0x350];
        v3511 = vmlaq_f32(vmlaq_f32(v3487, *&STACK[0x2C0], v3507), *&STACK[0x350], v3493);
        v3512 = vmlaq_f32(vmulq_f32(v3493, xmmword_298496270), xmmword_298496260, v3507);
        v3513 = vzip1q_s32(v3498, vuzp1q_s32(v3498, v3498));
        v3498.i32[0] = HIDWORD(STACK[0x2170]);
        v3514 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3498, xmmword_298496220), xmmword_298496230, v3513), xmmword_298496260, v3485), xmmword_298496270, v3476);
        v3515 = vzip1q_s32(v3501, vuzp1q_s32(v3501, v3501));
        v3501.i32[0] = HIDWORD(STACK[0x21B8]);
        *&STACK[0x360] = vmlaq_f32(vmlaq_f32(*&STACK[0x360], xmmword_298496320, v3515), xmmword_298496310, v3501);
        v3516 = vmlaq_f32(vmlaq_f32(v3489, v3509, v3515), v3510, v3501);
        v3517 = vmlaq_f32(vmulq_f32(v3501, xmmword_298496270), xmmword_298496260, v3515);
        v3518 = vdupq_n_s32(0x3D800000u);
        *&STACK[0x440] = vmulq_f32(vmlaq_f32(vmulq_f32(v3490, xmmword_2984961F0), xmmword_298496200, v3505), v3518);
        *&STACK[0x450] = vmulq_f32(vmlaq_f32(vmulq_f32(v3491, xmmword_2984961E0), xmmword_298496210, v4069), v3518);
        *&STACK[0x460] = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3490, xmmword_298496220), xmmword_298496230, v3505), xmmword_298496260, v4073), xmmword_298496270, v4079), v3518);
        *&STACK[0x470] = vmulq_f32(v3492, v3518);
        *&STACK[0x480] = vmulq_f32(v4100, v3518);
        *&STACK[0x490] = vmulq_f32(v4097, v3518);
        *&STACK[0x4A0] = vmulq_f32(v3483, v3518);
        *&STACK[0x4B0] = vmulq_f32(v4089, v3518);
        *&STACK[0x4C0] = vmulq_f32(v3508, v3518);
        *&STACK[0x4D0] = vmulq_f32(v4072, v3518);
        *&STACK[0x4E0] = vmulq_f32(v3511, v3518);
        v3519 = *&STACK[0x2158];
        *&STACK[0x4F0] = vmulq_f32(v4071, v3518);
        v3520 = vextq_s8(v3494, v3519, 4uLL);
        v3520.i32[0] = v3494.i32[2];
        v3521 = vextq_s8(v3494, vextq_s8(v3494, v3519, 0xCuLL), 0xCuLL);
        v3522 = vextq_s8(v3519, vdupq_laneq_s32(v3519, 3), 4uLL);
        *&STACK[0x500] = vmulq_f32(vmlaq_f32(vmlaq_f32(v3512, xmmword_298496230, v3520), xmmword_298496220, v3521), v3518);
        *&STACK[0x510] = vmulq_f32(vmlaq_f32(vmlaq_f32(v3497, xmmword_298496240, v3519), xmmword_298495F80, v3522), v3518);
        *&STACK[0x530] = vmulq_f32(vmlaq_f32(vmulq_f32(v3522, xmmword_2984961E0), xmmword_298496210, v3519), v3518);
        *&STACK[0x520] = vmulq_f32(vmlaq_f32(vmulq_f32(v3521, xmmword_2984961F0), xmmword_298496200, v3520), v3518);
        *&STACK[0x550] = vmulq_f32(vmlaq_f32(vmulq_f32(v4074, xmmword_2984961E0), xmmword_298496210, v4075), v3518);
        *&STACK[0x540] = vmulq_f32(vmlaq_f32(vmulq_f32(v3498, xmmword_2984961F0), xmmword_298496200, v3513), v3518);
        *&STACK[0x570] = vmulq_f32(v3500, v3518);
        *&STACK[0x560] = vmulq_f32(v3514, v3518);
        *&STACK[0x590] = vmulq_f32(v4085, v3518);
        *&STACK[0x580] = vmulq_f32(v3488, v3518);
        *&STACK[0x5B0] = vmulq_f32(v4081, v3518);
        *&STACK[0x5A0] = vmulq_f32(v4070, v3518);
        v3523 = vmulq_f32(*&STACK[0x360], v3518);
        *&STACK[0x5D0] = vmulq_f32(v4078, v3518);
        *&STACK[0x5C0] = v3523;
        v3524 = vmulq_f32(v3516, v3518);
        v3525 = *&STACK[0x2B0];
        *&STACK[0x5F0] = vmulq_f32(v4076, v3518);
        v3526 = *&STACK[0x21D8];
        *&STACK[0x5E0] = v3524;
        v3527 = vextq_s8(v3502, v3526, 4uLL);
        v3527.i32[0] = v3502.i32[2];
        v3528 = vextq_s8(v3502, vextq_s8(v3502, v3526, 0xCuLL), 0xCuLL);
        v3529 = vextq_s8(v3526, vdupq_laneq_s32(v3526, 3), 4uLL);
        *&STACK[0x610] = vmulq_f32(vmlaq_f32(vmlaq_f32(v3506, xmmword_298496240, v3526), xmmword_298495F80, v3529), v3518);
        *&STACK[0x600] = vmulq_f32(vmlaq_f32(vmlaq_f32(v3517, xmmword_298496230, v3527), xmmword_298496220, v3528), v3518);
        *&STACK[0x630] = vmulq_f32(vmlaq_f32(vmulq_f32(v3529, xmmword_2984961E0), xmmword_298496210, v3526), v3518);
        *&STACK[0x620] = vmulq_f32(vmlaq_f32(vmulq_f32(v3528, xmmword_2984961F0), xmmword_298496200, v3527), v3518);
        v3530 = *&STACK[0x2A0];
        v3531 = vdupq_lane_s32(STACK[0x2A0], 0);
        v3532 = vdupq_lane_s32(STACK[0x2A0], 1);
        v3533 = &STACK[0x440] + 32 * ((v3378 >> 3) & 1);
        v3534 = vdupq_laneq_s32(*&STACK[0x2A0], 2);
        v3535 = vdupq_laneq_s32(*&STACK[0x2A0], 3);
        v3536 = &STACK[0x440] + 32 * ((v3378 >> 2) & 1);
        v3537 = &STACK[0x440] + 32 * ((v3378 >> 1) & 1);
        v3538 = &STACK[0x440] + 32 * (v3378 & 1);
        v3539 = 0uLL;
        v3540 = 0uLL;
        v3541 = 0uLL;
        v3542 = 0uLL;
        v3543 = 0uLL;
        v3544 = 0uLL;
        v3545 = 0uLL;
        v3546 = 0uLL;
        do
        {
          v3530.i32[0] = LOBYTE(STACK[0x14C7]);
          v3547 = vdupq_lane_s8(*&vceqq_s8(v3530, vars0), 0);
          v3548 = vsubq_f32(vmlaq_f32(v3525, *&v3536[v3461], v3534), *&v3406[v3461 + 82]);
          v3549 = *&v3406[v3461 + 114];
          v3550 = *&v3406[v3461 + 116];
          v3551 = vbslq_s8(v3547, v3548, vmulq_f32(v3548, v3549));
          v3552 = vsubq_f32(vmlaq_f32(v3525, *&v3536[v3461 + 2], v3534), *&v3406[v3461 + 84]);
          v3553 = vbslq_s8(v3547, v3552, vmulq_f32(v3552, v3550));
          v3554 = vsubq_f32(vmlaq_f32(v4099, *&v3537[v3461], v3532), *&v3406[v3461 + 50]);
          v3530 = vbslq_s8(v3547, v3554, vmulq_f32(v3554, v3549));
          v3555 = vsubq_f32(vmlaq_f32(v4099, *&v3537[v3461 + 2], v3532), *&v3406[v3461 + 52]);
          v3556 = vbslq_s8(v3547, v3555, vmulq_f32(v3555, v3550));
          v3557 = vsubq_f32(vmlaq_f32(v4103, *&v3538[v3461], v3531), *&v3406[v3461 + 18]);
          v3558 = vbslq_s8(v3547, v3557, vmulq_f32(v3557, v3549));
          v3559 = vsubq_f32(vmlaq_f32(v4103, *&v3538[v3461 + 2], v3531), *&v3406[v3461 + 20]);
          v3560 = vbslq_s8(v3547, v3559, vmulq_f32(v3559, v3550));
          v3561 = vsubq_f32(vmlaq_f32(v3370, *&v3533[v3461], v3535), v3549);
          v3562 = vsubq_f32(vmlaq_f32(v3370, *&v3533[v3461 + 2], v3535), v3550);
          v3546 = vmlaq_f32(v3546, v3560, v3560);
          v3545 = vmlaq_f32(v3545, v3558, v3558);
          v3544 = vmlaq_f32(v3544, v3556, v3556);
          v3543 = vmlaq_f32(v3543, v3530, v3530);
          v3542 = vmlaq_f32(v3542, v3553, v3553);
          v3541 = vmlaq_f32(v3541, v3551, v3551);
          v3540 = vmlaq_f32(v3540, v3562, v3562);
          v3539 = vmlaq_f32(v3539, v3561, v3561);
          v3461 += 4;
        }

        while (v3461 != 32);
        v3459 = vpaddq_f32(vpaddq_f32(vaddq_f32(v3545, v3546), vaddq_f32(v3543, v3544)), vpaddq_f32(vaddq_f32(v3541, v3542), vaddq_f32(v3539, v3540)));
        v3460 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3543, *_Q4.f32, 1), v3545, _Q4.f32[0]), v3541, _Q4, 2), v3539, _Q4, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3544, *_Q4.f32, 1), v3546, _Q4.f32[0]), v3542, _Q4, 2), v3540, _Q4, 3));
        goto LABEL_765;
      }

      if (v3407 == 342)
      {
        v3408 = 0;
        *&STACK[0x350] = vdupq_lane_s32(*v3362.i8, 1);
        *&STACK[0x360] = vdupq_lane_s32(*v3362.i8, 0);
        v3409 = vdupq_laneq_s32(v3362, 2);
        v3410 = vdupq_laneq_s32(v3362, 3);
        v3411 = vdupq_lane_s32(*_Q4.f32, 0);
        v3412 = vdupq_laneq_s32(_Q4, 2);
        v3413 = &STACK[0x20F0] + 16 * (v3378 & 1);
        v3414 = vdupq_laneq_s32(_Q4, 3);
        v3415 = 0uLL;
        v3416 = 0uLL;
        v3417 = 0uLL;
        v3418 = 0uLL;
        v3419 = &STACK[0x20F0] + 16 * ((v3378 >> 1) & 1);
        v3420 = &STACK[0x20F0] + 16 * ((v3378 >> 3) & 1);
        v3421 = 0uLL;
        v3422 = 0uLL;
        v3423 = 0uLL;
        v3424 = 0uLL;
        v3425 = &STACK[0x20F0] + 16 * ((v3378 >> 2) & 1);
        v3426 = 0uLL;
        v3427 = 0uLL;
        do
        {
          v3359.i32[0] = LOBYTE(STACK[0x14C7]);
          v3428 = vdupq_lane_s8(*&vceqq_s8(v3359, *&STACK[0x340]), 0);
          v3429 = vsubq_f32(vmlaq_f32(v3369, *&v3425[v3408 + 2], v3409), *(&STACK[0x1440] + v3408 * 8 + 416));
          v3430 = v3369;
          v3431 = v3369;
          v3433 = *(&STACK[0x1440] + v3408 * 8 + 528);
          v3432 = *(&STACK[0x1440] + v3408 * 8 + 544);
          v3434 = vsubq_f32(vmlaq_f32(v3430, *&v3425[v3408], v3409), *(&STACK[0x1440] + v3408 * 8 + 400));
          v3435 = vbslq_s8(v3428, v3429, vmulq_f32(v3429, v3432));
          v3436 = vbslq_s8(v3428, v3434, vmulq_f32(v3434, v3433));
          v3437 = vsubq_f32(vmlaq_f32(v3368, *&v3419[v3408 + 2], *&STACK[0x350]), *(&STACK[0x1440] + v3408 * 8 + 288));
          v3438 = vsubq_f32(vmlaq_f32(v3368, *&v3419[v3408], *&STACK[0x350]), *(&STACK[0x1440] + v3408 * 8 + 272));
          v3439 = vbslq_s8(v3428, v3437, vmulq_f32(v3437, v3432));
          v3440 = vbslq_s8(v3428, v3438, vmulq_f32(v3438, v3433));
          v3441 = vsubq_f32(vmlaq_f32(v3367, *&v3413[v3408], *&STACK[0x360]), *(&STACK[0x1440] + v3408 * 8 + 144));
          v3442 = vbslq_s8(v3428, v3441, vmulq_f32(v3441, v3433));
          v3443 = vsubq_f32(vmlaq_f32(v3367, *&v3413[v3408 + 2], *&STACK[0x360]), *(&STACK[0x1440] + v3408 * 8 + 160));
          v3444 = vbslq_s8(v3428, v3443, vmulq_f32(v3443, v3432));
          v3445 = vsubq_f32(vmlaq_f32(v3370, *&v3420[v3408], v3410), v3433);
          v3446 = vsubq_f32(vmlaq_f32(v3370, *&v3420[v3408 + 2], v3410), v3432);
          v3447 = vmulq_f32(v3444, v3444);
          v3448 = vmulq_f32(v3440, v3440);
          v3449 = vmulq_f32(v3439, v3439);
          v3450 = vmulq_f32(v3442, v3442);
          v3451 = vmlaq_f32(vmulq_lane_f32(v3449, *_Q4.f32, 1), v3447, v3411);
          v3427 = vaddq_f32(v3427, v3447);
          v3452 = vmlaq_f32(vmulq_lane_f32(v3448, *_Q4.f32, 1), v3450, v3411);
          v3426 = vaddq_f32(v3426, v3450);
          v3369 = v3431;
          v3424 = vaddq_f32(v3424, v3449);
          v3423 = vaddq_f32(v3423, v3448);
          v3453 = vmulq_f32(v3435, v3435);
          v3454 = vmlaq_f32(v3451, v3453, v3412);
          v3422 = vaddq_f32(v3422, v3453);
          v3455 = vmulq_f32(v3436, v3436);
          v3456 = vmlaq_f32(v3452, v3455, v3412);
          v3421 = vaddq_f32(v3421, v3455);
          v3457 = vmulq_f32(v3446, v3446);
          v3458 = vmlaq_f32(v3454, v3457, v3414);
          v3418 = vaddq_f32(v3418, v3457);
          v3359 = vmulq_f32(v3445, v3445);
          v3417 = vaddq_f32(v3417, v3359);
          v3416 = vaddq_f32(v3416, v3458);
          v3415 = vaddq_f32(v3415, vmlaq_f32(v3456, v3359, v3414));
          v3408 += 4;
        }

        while (v3408 != 16);
        v3459 = vpaddq_f32(vpaddq_f32(vaddq_f32(v3426, v3427), vaddq_f32(v3423, v3424)), vpaddq_f32(vaddq_f32(v3421, v3422), vaddq_f32(v3417, v3418)));
        v3460 = vaddq_f32(v3415, v3416);
LABEL_765:
        v3563 = vpaddq_f32(v3460, v3460).u64[0];
        v3564 = vpadd_f32(v3563, v3563).f32[0];
        v2943 = 0uLL;
        v3565 = vpaddq_f32(v3459, v3459).u64[0];
        LODWORD(v3566) = vpadd_f32(v3565, v3565).u32[0];
        v2732 = *&STACK[0x320];
        _NF = v3564 < COERCE_FLOAT(*&STACK[0x320]) && v3566 < *&STACK[0x2D0];
        if (_NF)
        {
          v3568 = *&STACK[0x21C0];
          *&STACK[0x23B0] = *&STACK[0x21B0];
          *&STACK[0x23C0] = v3568;
          v3569 = *&STACK[0x21E0];
          *&STACK[0x23D0] = *&STACK[0x21D0];
          *&STACK[0x23E0] = v3569;
          v3570 = *&STACK[0x2180];
          *&STACK[0x2370] = *&STACK[0x2170];
          *&STACK[0x2380] = v3570;
          v3571 = *&STACK[0x21A0];
          *&STACK[0x2390] = *&STACK[0x2190];
          *&STACK[0x23A0] = v3571;
          v3572 = *&STACK[0x2140];
          *&STACK[0x2330] = *&STACK[0x2130];
          *&STACK[0x2340] = v3572;
          v3573 = *&STACK[0x2160];
          *&STACK[0x2350] = *&STACK[0x2150];
          *&STACK[0x2360] = v3573;
          v3574 = *&STACK[0x2100];
          *&STACK[0x22F0] = *&STACK[0x20F0];
          *&STACK[0x2300] = v3574;
          v3575 = *&STACK[0x2120];
          v4062 = v3361;
          *&STACK[0x2310] = *&STACK[0x2110];
          *&STACK[0x2320] = v3575;
          *&STACK[0x2D0] = v3566;
          v4061 = v3378;
          v2732.f32[0] = v3564;
          v4063 = STACK[0x1F50];
        }

        goto LABEL_772;
      }

      v2732 = *&STACK[0x320];
LABEL_772:
      if (++v2944 == 4)
      {
        break;
      }
    }

    v3576 = v4061;
    v2733 = v4062;
  }

  else
  {
    v3576 = 0;
  }

  v3577 = *v10;
  if (v2732.f32[0] >= *v10)
  {
    v3582 = 0;
    v3576 = 0;
    LODWORD(v3578) = 0;
    LOBYTE(v3583) = 0;
    LOBYTE(v3584) = 0;
    v3585 = 0uLL;
    v3581 = 0uLL;
    v3580 = 0uLL;
    v3579 = 0uLL;
  }

  else
  {
    v3578 = v2733 >> 27;
    v3579 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2330], v3578))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2340], v3578)))), vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2350], v3578))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2360], v3578)))));
    v3580 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x22F0], v3578))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2300], v3578)))), vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2310], v3578))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2320], v3578)))));
    v3581 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23B0], v3578))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23C0], v3578)))), vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23D0], v3578))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23E0], v3578)))));
    v3582 = v2733 & 0x1FFFF;
    v3583 = HIDWORD(v2733);
    v3584 = v2733 >> 40;
    v3585 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2370], v3578))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2380], v3578)))), vuzp1q_s16(vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x2390], v3578))), vcvtq_s32_f32(vrndxq_f32(vmulq_n_f32(*&STACK[0x23A0], v3578)))));
    *v10 = v2732.f32[0];
    v3577 = v2732.f32[0];
    v2943 = vmovl_u8(v4063);
  }

  if (v4056 > v3577)
  {
    v3586 = v3583 + 1;
    v3587 = __clz(__rbit32(v3586));
    v3588 = v3586 >> v3587;
    v3589 = (v3586 >> v3587);
    if (v3587 && v3589 != 1)
    {
      v3590 = vsubq_s16(vdupq_n_s16(v3583), v2943);
      if (v3589 == 3)
      {
        v3591 = 21846;
      }

      else
      {
        v3591 = 13108;
      }

      v3592 = vdupq_n_s16(v3591);
      v3593 = vminq_u16(v2943, v3590);
      v3594 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v3593.i8, *v3592.i8), 0x10uLL), vmull_high_u16(v3593, v3592), 0x10uLL);
      v3592.i64[0] = 0x1000100010001;
      v3592.i64[1] = 0x1000100010001;
      v2943 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v3593, v3594, vmovl_u8(vdup_n_s8(v3588))), vdupq_n_s16(v3587)), vaddq_s16(v3594, v3594)), vbicq_s8(v3592, vceqq_s16(v3593, v2943)));
    }

    v3595 = vandq_s8(v2943, vcgtq_u16(vdupq_n_s16(v3584), xmmword_298495BB0));
    switch(v3589)
    {
      case 5:
        v3630 = vdupq_n_s16(v3587);
        v3631 = vshlq_u16(v3595, vnegq_s16(v3630));
        *v3631.i8 = vmovn_s16(v3631);
        v3632 = vqtbl1q_s8(v3631, xmmword_298495BC0);
        v3633 = vqtbl1q_s8(v3631, xmmword_298495BD0);
        v3634 = vpaddq_s16(vmull_u8(*v3632.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v3632, v3632, 8uLL), 0x2001200120012001));
        v3632.i64[0] = 0x7000700070007;
        v3632.i64[1] = 0x7000700070007;
        v3635 = vandq_s8(v3634, v3632);
        v3636 = vandq_s8(vshrq_n_u16(v3634, 5uLL), v3632);
        v3637.i64[0] = 0x4000400040004;
        v3637.i64[1] = 0x4000400040004;
        v3638 = vceqq_s16(v3633, v3637);
        v3639 = vceqq_s16(v3636, v3637);
        v3640 = vsubq_s8(vaddq_s16(v3634, vshlq_n_s16(v3633, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v3635), v3639));
        if ((vmaxvq_u16(v3638) & 0x8000) != 0)
        {
          v3641.i64[0] = 0x18001800180018;
          v3641.i64[1] = 0x18001800180018;
          v3640.i64[0] = vsubq_s8(v3640, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v3635), v3638), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v3635), v3638), v3639)), vandq_s8(vmulq_s16(v3636, v3641), vandq_s8(vceqq_s16(v3635, v3637), v3638)))).u64[0];
        }

        v3640.i64[1] = v3640.i64[0];
        v3642 = vshlq_u16(vorrq_s8(vshlq_u16(vmovl_u8(vshl_u8(vand_s8(vqtbl1_s8(v3640, 0x404020202000000), 0x1807601807601807), 0xFD00FBFD00FBFD00)), v3630), vandq_s8(v3595, vdupq_n_s16(~(-1 << v3587)))), vaddq_s16(vdupq_n_s32(v3587 << 16), xmmword_298495C10));
        v3643 = vshlq_u32(vmovl_u16(*&vpaddq_s16(v3642, v3642)), vaddq_s32(vdupq_n_s64(v3587 << 33), xmmword_298495C20));
        v3643.i64[0] = vpaddq_s32(v3643, v3643).u64[0];
        v3603 = v3643.u32[0];
        v3604 = (v3643.i64[0] & 0xFFFFFFFF00000000) >> (22 - 4 * v3587);
LABEL_795:
        v3629 = v3604 | v3603;
        break;
      case 3:
        *v3595.i8 = vmovn_s16(v3595);
        v3605 = vandq_s8(v3595, xmmword_298495C30);
        v3606 = vdupq_n_s8(v3587);
        v3607 = vshlq_u8(v3605, vnegq_s8(v3606));
        v3608 = vqtbl1q_s8(v3607, xmmword_298495C40);
        v3609 = vqtbl1q_s8(v3607, xmmword_298495C50);
        v3610 = vpaddq_s16(vmull_u8(*v3608.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3608, v3608, 8uLL), 0x8010040180100401));
        v3610.i64[0] = vpaddq_s16(v3610, v3610).u64[0];
        v3611 = vmovl_s16(*v3610.i8);
        v3612 = vshlq_n_s32(v3609, 5uLL);
        v3608.i64[0] = 0x3000000030;
        v3608.i64[1] = 0x3000000030;
        v3613.i64[0] = 0x2000000020;
        v3613.i64[1] = 0x2000000020;
        v3614 = vceqq_s32(vandq_s8(v3611, v3608), v3613);
        v3615 = vaddw_s16(v3612, *v3610.i8);
        v3613.i64[0] = 0xFF000000FFLL;
        v3613.i64[1] = 0xFF000000FFLL;
        v3616 = vcgtq_s32(v3615, v3613);
        if ((vmaxvq_u32(vorrq_s8(v3614, v3616)) & 0x80000000) != 0)
        {
          v3617.i64[0] = 0x200000002;
          v3617.i64[1] = 0x200000002;
          v3618 = vceqq_s32(v3609, v3617);
          v3619 = vshrq_n_u32(v3611, 2uLL);
          v3620 = vandq_s8(v3616, v3618);
          v3621.i64[0] = 0xF0000000FLL;
          v3621.i64[1] = 0xF0000000FLL;
          v3622 = vandq_s8(v3611, v3621);
          v3623.i64[0] = 0x303030303030303;
          v3623.i64[1] = 0x303030303030303;
          v3624.i64[0] = 0x6060606060606060;
          v3624.i64[1] = 0x6060606060606060;
          v3615.i64[0] = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v3624, v3612, v3623), v3616), v3615), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v3622), v3614), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v3619, v3621)), v3620))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v3622), vandq_s8(v3614, v3620))).u64[0];
        }

        v3615.i64[1] = v3615.i64[0];
        v3625 = vmovl_u8(vorr_s8(vshl_u8(vshl_u8(vand_s8(vqtbl1_s8(v3615, 0x404040000000000), 0x100C038060100C03), 0xFCFE00F9FBFCFE00), *v3606.i8), vand_s8(*v3605.i8, vdup_n_s8((1 << v3587) - 1))));
        v3626 = vadd_s32(vdup_n_s32(2 * v3587), 0x300000004);
        v3627.i64[0] = v3626.u32[0];
        v3627.i64[1] = v3626.u32[1];
        v3628 = vshlq_u32(vmlal_u16((*&v3625 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vshrn_n_s32(v3625, 0x10uLL), vshl_u16(vdup_n_s16(1 << v3587), 0x2000100010002)), vtrn1q_s32(0, v3627));
        v3628.i64[0] = vpaddq_s32(v3628, v3628).u64[0];
        v3629 = (v3628.u32[1] << (4 * v3587 + 7)) | v3628.u32[0];
        break;
      case 1:
        v3596.i64[0] = 0xFFFF0000FFFFLL;
        v3596.i64[1] = 0xFFFF0000FFFFLL;
        v3597.i64[0] = 0xFFFF0000FFFF0000;
        v3597.i64[1] = 0xFFFF0000FFFF0000;
        v3598 = vorrq_s8(vshlq_u32(vandq_s8(v3595, v3597), vnegq_s32(vdupq_n_s32(16 - v3587))), vandq_s8(v3595, v3596));
        v3596.i64[0] = 0xFFFFFFFFLL;
        v3596.i64[1] = 0xFFFFFFFFLL;
        v3599 = vandq_s8(v3598, v3596);
        v3597.i64[0] = 0xFFFFFFFF00000000;
        v3597.i64[1] = 0xFFFFFFFF00000000;
        v3600 = vandq_s8(v3598, v3597);
        *v3597.i8 = vdup_n_s32(2 * (16 - v3587));
        v3601.i64[0] = v3597.u32[0];
        v3601.i64[1] = v3597.u32[1];
        v3602 = vorrq_s8(vshlq_u64(v3600, vnegq_s64(v3601)), v3599);
        v3603 = v3602.i64[0];
        v3604 = v3602.i64[1] << (4 * v3587);
        goto LABEL_795;
      default:
        v3629 = 0;
        break;
    }

    v3644 = __clz(__rbit32(v3578 + 1));
    v3645 = (v3578 + 1) >> v3644;
    LOBYTE(STACK[0x22F2]) = v3644;
    LOWORD(STACK[0x22F0]) = v3578 | (v3645 << 8);
    if ((v3582 & 0x400) == 0)
    {
      *&STACK[0x440] = v3580;
      *&STACK[0x450] = v3579;
      *v3646.i64 = PackWeights(&STACK[0x22F0], &STACK[0x440]);
      goto LABEL_813;
    }

    if (v3645 == 1)
    {
      v3647 = vzip2q_s8(v3580, v3585);
      v3648 = vzip1q_s8(v3580, v3585);
      v3649 = vzip2q_s8(v3579, v3581);
      v3650 = vzip1q_s8(v3579, v3581);
      v3651 = 60 * v3644;
      v4108.val[1] = vbicq_s8(xmmword_298496410, vceqzq_s8(v3647));
      v4108.val[0] = vbicq_s8(xmmword_298496410, vceqzq_s8(v3648));
      v4106.val[1] = vbicq_s8(xmmword_298496410, vceqzq_s8(v3649));
      v4106.val[0] = vbicq_s8(xmmword_298496410, vceqzq_s8(v3650));
      v3652 = vaddvq_s32(vorrq_s8(vqtbl2q_s8(v4108, xmmword_298496430), vqtbl2q_s8(v4108, xmmword_298496420))) | (vaddvq_s32(vorrq_s8(vqtbl2q_s8(v4106, xmmword_298496430), vqtbl2q_s8(v4106, xmmword_298496420))) << 32);
    }

    else
    {
      if (v3644)
      {
        v3651 = 60 * v3644;
        v3652 = 0uLL;
        if (v3645 != 3)
        {
          goto LABEL_812;
        }
      }

      else
      {
        if (v3645 != 3)
        {
          v3651 = 0;
          v3652 = 0uLL;
          goto LABEL_812;
        }

        v3653 = vzip2q_s8(v3579, v3581);
        v3654 = vzip1q_s8(v3579, v3581);
        v3655 = vzip2q_s8(v3580, v3585);
        v3656 = vzip1q_s8(v3580, v3585);
        v3657 = vqtbl1q_s8(v3656, xmmword_298495C40);
        v3658 = vqtbl1q_s8(v3655, xmmword_298495C90);
        v3659 = vqtbl1q_s8(v3654, xmmword_2984963C0);
        v3660 = vqtbl1q_s8(v3653, xmmword_2984963D0);
        v3661 = vqtbl1q_s8(v3656, xmmword_298495C50);
        v3662 = vpaddq_s16(vpaddq_s16(vmull_u8(*v3657.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3657, v3657, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v3658.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3658, v3658, 8uLL), 0x8010040180100401)));
        v3663 = vpaddq_s16(vpaddq_s16(vmull_u8(*v3659.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3659, v3659, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v3660.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v3660, v3660, 8uLL), 0x8010040180100401)));
        v3667 = vaddq_s16(v3662, vqtbl1q_s8(v3662, xmmword_298495CB0));
        v3665 = vaddq_s16(v3663, vqtbl1q_s8(v3663, xmmword_298495CB0));
        v3667.i16[3] = 0;
        v3664 = vuzp1q_s16(v3661, vqtbl1q_s8(v3655, xmmword_298495CA0));
        v3665.i16[0] += v3667.i16[7];
        v3665.i16[3] = 0;
        v3666 = vuzp1q_s16(vqtbl1q_s8(v3654, xmmword_2984963E0), vqtbl1q_s8(v3653, xmmword_2984963F0));
        v3667.i16[7] = 0;
        v3654.i64[0] = 0x30003000300030;
        v3654.i64[1] = 0x30003000300030;
        v3662.i64[0] = 0x20002000200020;
        v3662.i64[1] = 0x20002000200020;
        v3668 = vceqq_s16(vandq_s8(v3667, v3654), v3662);
        v3669 = vceqq_s16(vandq_s8(v3665, v3654), v3662);
        v3654.i64[0] = 0xFF00FF00FF00FFLL;
        v3654.i64[1] = 0xFF00FF00FF00FFLL;
        v3670 = vcgtq_u16(v3667, v3654);
        v3671 = vcgtq_u16(v3665, v3654);
        v3672 = vshlq_n_s16(v3664, 5uLL);
        v3673 = vshlq_n_s16(v3666, 5uLL);
        v3674 = vaddq_s16(v3667, v3672);
        if ((vmaxvq_u16(vorrq_s8(v3668, v3670)) & 0x8000) != 0)
        {
          v3675.i64[0] = 0x2000200020002;
          v3675.i64[1] = 0x2000200020002;
          v3676 = vceqq_s16(v3664, v3675);
          v3677 = vshrq_n_u16(v3667, 2uLL);
          v3678 = vandq_s8(v3670, v3676);
          v3679.i64[0] = 0xF000F000F000FLL;
          v3679.i64[1] = 0xF000F000F000FLL;
          v3680 = vandq_s8(v3667, v3679);
          v3681.i64[0] = 0x303030303030303;
          v3681.i64[1] = 0x303030303030303;
          v3682.i64[0] = 0x6060606060606060;
          v3682.i64[1] = 0x6060606060606060;
          v3674 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v3682, v3672, v3681), v3670), v3674), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v3680), v3668), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v3677, v3679)), v3678))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v3680), vandq_s8(v3668, v3678)));
        }

        v3683 = vaddq_s16(v3665, v3673);
        if ((vmaxvq_u16(vorrq_s8(v3669, v3671)) & 0x8000) != 0)
        {
          v3684 = vshrq_n_u16(v3665, 2uLL);
          v3685.i64[0] = 0xFF00FF00FF00FFLL;
          v3685.i64[1] = 0xFF00FF00FF00FFLL;
          v3686.i64[0] = 0x2000200020002;
          v3686.i64[1] = 0x2000200020002;
          v3687 = vandq_s8(vcgtq_u16(v3665, v3685), vceqq_s16(v3666, v3686));
          v3686.i64[0] = 0xF000F000F000FLL;
          v3686.i64[1] = 0xF000F000F000FLL;
          v3688 = vandq_s8(v3665, v3686);
          v3689.i64[0] = 0x303030303030303;
          v3689.i64[1] = 0x303030303030303;
          v3690.i64[0] = 0x6060606060606060;
          v3690.i64[1] = 0x6060606060606060;
          v3683 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v3690, v3673, v3689), v3671), v3683), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v3688), v3669), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v3684, v3686)), v3687))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v3688), vandq_s8(v3669, v3687)));
        }

        v3651 = 0;
        v3652 = vaddq_s8(vqtbl1q_s8(v3683, xmmword_298496400), vqtbl1q_s8(v3674, xmmword_298496150));
      }

      v3651 += 96;
    }

LABEL_812:
    v3691 = vqtbl1q_s8((31 - __clz(v3576)), vsubq_s8(xmmword_298451AC0, vdupq_n_s8((126 - v3651) >> 3)));
    v3646 = vorrq_s8(vorrq_s8(vshlq_u64(vqtbl1q_s8(v3691, xmmword_298451AD0), vdupq_n_s64((126 - v3651) | 0xFFFFFFFFFFFFFFF8)), vshlq_u64(v3691, vdupq_n_s64((126 - v3651) & 7))), vqtbl1q_s8(vrbitq_s8(v3652), xmmword_298495DE0));
LABEL_813:
    v3692.i64[0] = v3582 | (v3629 << 17);
    v3692.i64[1] = v3629 >> 47;
    *v4058 = vorrq_s8(v3646, v3692);
    v3577 = *v10;
  }

  if (v3577 > v10[1])
  {
    bzero(&STACK[0x440], 0x320uLL);
    v3693 = 0;
    LOWORD(STACK[0x4C4]) = 324;
    LOBYTE(STACK[0x4C6]) = -1;
    LOBYTE(STACK[0x4C8]) = -1;
    v3694 = vdupq_n_s32(0x3D500000u);
    v3695 = *(v11 + 48);
    v3696 = *(v11 + 56);
    v3697 = vdupq_n_s32(0x3E7C0000u);
    v3699 = *(v11 + 144);
    v3698 = *(v11 + 160);
    __asm { FMOV            V2.4S, #0.40625 }

    v3701 = vdupq_n_s32(0x3CC00000u);
    v3703 = v4057[8];
    v3702 = v4057[9];
    v3704 = v4057[24];
    v3705 = v4057[25];
    v3706 = v4057[40];
    v3707 = v4057[41];
    v3708 = *(v11 + 176);
    v3709 = *(v11 + 192);
    v3710 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3696[22], v3694), v3697, v3696[24]), _Q2, v3698), v3697, v3709);
    v3711 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3696[21], v3694), v3697, v3696[23]), _Q2, v3699), v3697, v3708);
    v3712 = vmlaq_f32(vmulq_f32(v3699, v3701), v4055, v3708);
    v3713 = vmlaq_f32(vmulq_f32(v3698, v3701), v4055, v3709);
    v3714 = v4057[10];
    v3715 = v4057[11];
    v3716 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3696[38], v3694), v3697, v3696[40]), _Q2, v3702), v3697, v3715);
    v3717 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3696[37], v3694), v3697, v3696[39]), _Q2, v3703), v3697, v3714);
    v3718 = vmlaq_f32(vmulq_f32(v3703, v3701), v4055, v3714);
    v3719 = vmlaq_f32(vmulq_f32(v3702, v3701), v4055, v3715);
    v3720 = v4057[26];
    v3721 = v4057[27];
    v3722 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3696[54], v3694), v3697, v3696[56]), _Q2, v3705), v3697, v3721);
    v3723 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3696[53], v3694), v3697, v3696[55]), _Q2, v3704), v3697, v3720);
    v3724 = vmlaq_f32(vmulq_f32(v3705, v3701), v4055, v3721);
    v3725 = vmlaq_f32(vmulq_f32(v3704, v3701), v4055, v3720);
    v3726 = v4057[42];
    v3727 = v4057[43];
    v3728 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3696[70], v3694), v3697, v3696[72]), _Q2, v3707), v3697, v3727);
    v3729 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v3696[69], v3694), v3697, v3696[71]), _Q2, v3706), v3697, v3726);
    v3730 = vmlaq_f32(vmulq_f32(v3707, v3701), v4055, v3727);
    v3731 = vmlaq_f32(vmulq_f32(v3706, v3701), v4055, v3726);
    v3733 = *(v11 + 208);
    v3732 = *(v11 + 224);
    *&STACK[0x2200] = vmlaq_f32(v3710, v3694, v3732);
    *&STACK[0x21F0] = vmlaq_f32(v3711, v3694, v3733);
    v3734 = vdupq_n_s32(0x3EC40000u);
    v3710.i64[0] = 0x3C0000003C000000;
    v3710.i64[1] = 0x3C0000003C000000;
    v3736 = v4057[12];
    v3735 = v4057[13];
    *&STACK[0x2100] = vmlaq_f32(v3716, v3694, v3735);
    *&STACK[0x20F0] = vmlaq_f32(v3717, v3694, v3736);
    v3737 = vmlaq_f32(v3719, v3734, v3735);
    v3738 = vmlaq_f32(v3718, v3734, v3736);
    v3739 = vmulq_f32(v3735, v3710);
    v3740 = vmulq_f32(v3736, v3710);
    v3742 = v4057[28];
    v3741 = v4057[29];
    *&STACK[0x2020] = vmlaq_f32(v3722, v3694, v3741);
    *&STACK[0x2010] = vmlaq_f32(v3723, v3694, v3742);
    v3743 = vmlaq_f32(v3725, v3734, v3742);
    v3744 = vmlaq_f32(v3724, v3734, v3741);
    v3745 = vmulq_f32(v3741, v3710);
    v3746 = vmulq_f32(v3742, v3710);
    v3747 = v4057[44];
    v3748 = v4057[45];
    *&STACK[0x1F40] = vmlaq_f32(v3728, v3694, v3748);
    *&STACK[0x1F30] = vmlaq_f32(v3729, v3694, v3747);
    v3750 = *(v11 + 240);
    v3749 = *(v11 + 256);
    v3751 = vdupq_n_s32(0x3EA60000u);
    v3752 = vmlaq_f32(vmlaq_f32(v3712, v3734, v3733), v3751, v3750);
    v3753 = vmlaq_f32(vmlaq_f32(v3713, v3734, v3732), v3751, v3749);
    v3754 = vdupq_n_s32(0x3DC80000u);
    v3755 = vmlaq_f32(vmulq_f32(v3733, v3710), v3754, v3750);
    v3756 = vmlaq_f32(vmulq_f32(v3732, v3710), v3754, v3749);
    v3758 = v4057[14];
    v3757 = v4057[15];
    v3759 = vmlaq_f32(v3738, v3751, v3758);
    v3760 = vmlaq_f32(v3737, v3751, v3757);
    v3761 = vmlaq_f32(v3740, v3754, v3758);
    v3762 = vmlaq_f32(v3739, v3754, v3757);
    v3763 = v4057[30];
    v3764 = v4057[31];
    v3765 = vmlaq_f32(v3744, v3751, v3764);
    v3766 = vmlaq_f32(v3743, v3751, v3763);
    v3767 = vmlaq_f32(v3746, v3754, v3763);
    v3768 = vmlaq_f32(v3745, v3754, v3764);
    v3769 = v4057[46];
    v3770 = v4057[47];
    v3771 = vmlaq_f32(vmlaq_f32(v3730, v3734, v3748), v3751, v3770);
    v3772 = vmlaq_f32(vmlaq_f32(v3731, v3734, v3747), v3751, v3769);
    v3773 = vmlaq_f32(vmulq_f32(v3748, v3710), v3754, v3770);
    v3774 = vmlaq_f32(vmulq_f32(v3747, v3710), v3754, v3769);
    v3775 = v4057[1];
    v3776 = vmlaq_f32(v3753, v3754, v3775);
    v3777 = vmlaq_f32(v3756, v3751, v3775);
    v3778 = vmlaq_f32(v3755, v3751, *v4057);
    v3779 = v4057[16];
    v3780 = v4057[17];
    v3781 = vmlaq_f32(v3760, v3754, v3780);
    v3782 = vmlaq_f32(v3759, v3754, v3779);
    v3783 = vmlaq_f32(v3762, v3751, v3780);
    v3784 = vmlaq_f32(v3761, v3751, v3779);
    v3786 = v4057[32];
    v3785 = v4057[33];
    v3787 = vmlaq_f32(v3766, v3754, v3786);
    v3788 = vmlaq_f32(v3765, v3754, v3785);
    v3789 = vmlaq_f32(v3768, v3751, v3785);
    v3790 = vmlaq_f32(v3767, v3751, v3786);
    v3792 = v4057[48];
    v3791 = v4057[49];
    v3793 = vmlaq_f32(v3772, v3754, v3792);
    v3794 = vmlaq_f32(v3771, v3754, v3791);
    v3795 = vmlaq_f32(v3774, v3751, v3792);
    v3796 = vmlaq_f32(v3773, v3751, v3791);
    v3798 = v4057[2];
    v3797 = v4057[3];
    v3799 = vmlaq_f32(vmlaq_f32(v3752, v3754, *v4057), v3710, v3798);
    *&STACK[0x2220] = vmlaq_f32(v3776, v3710, v3797);
    *&STACK[0x2210] = v3799;
    v3800 = vmlaq_f32(v3778, v3734, v3798);
    v3801 = vmlaq_f32(v3777, v3734, v3797);
    v3802 = vmulq_f32(v3798, v3694);
    v3803 = vmulq_f32(v3797, v3694);
    v3805 = v4057[18];
    v3804 = v4057[19];
    *&STACK[0x2120] = vmlaq_f32(v3781, v3710, v3804);
    *&STACK[0x2110] = vmlaq_f32(v3782, v3710, v3805);
    v3806 = vmlaq_f32(v3784, v3734, v3805);
    v3807 = vmlaq_f32(v3783, v3734, v3804);
    v3808 = vmulq_f32(v3805, v3694);
    v3809 = vmulq_f32(v3804, v3694);
    v3810 = v4057[34];
    v3811 = v4057[35];
    *&STACK[0x2030] = vmlaq_f32(v3787, v3710, v3810);
    *&STACK[0x2040] = vmlaq_f32(v3788, v3710, v3811);
    v3812 = vmlaq_f32(v3790, v3734, v3810);
    v3813 = vmlaq_f32(v3789, v3734, v3811);
    v3814 = vmulq_f32(v3810, v3694);
    v3815 = vmulq_f32(v3811, v3694);
    v3816 = v4057[50];
    v3817 = v4057[51];
    *&STACK[0x1F50] = vmlaq_f32(v3793, v3710, v3816);
    *&STACK[0x1F60] = vmlaq_f32(v3794, v3710, v3817);
    v3818 = vmlaq_f32(v3796, v3734, v3817);
    v3819 = vmlaq_f32(v3795, v3734, v3816);
    v3820 = vmulq_f32(v3816, v3694);
    v3821 = vmulq_f32(v3817, v3694);
    v3822 = v4057[4];
    v3823 = v4057[5];
    v3824 = vmlaq_f32(v3801, v4055, v3823);
    v3825 = vmlaq_f32(v3800, v4055, v3822);
    v3826 = vmlaq_f32(v3803, v3697, v3823);
    v3827 = vmlaq_f32(v3802, v3697, v3822);
    v3828 = v4057[20];
    v3829 = v4057[21];
    v3830 = vmlaq_f32(v3807, v4055, v3829);
    v3831 = vmlaq_f32(v3806, v4055, v3828);
    v3832 = vmlaq_f32(v3809, v3697, v3829);
    v3833 = vmlaq_f32(v3808, v3697, v3828);
    v3834 = v4057[36];
    v3835 = v4057[37];
    v3836 = vmlaq_f32(v3813, v4055, v3835);
    v3837 = vmlaq_f32(v3812, v4055, v3834);
    v3838 = vmlaq_f32(v3815, v3697, v3835);
    v3839 = vmlaq_f32(v3814, v3697, v3834);
    v3841 = v4057[52];
    v3840 = v4057[53];
    v3842 = vmlaq_f32(v3819, v4055, v3841);
    v3843 = vmlaq_f32(v3818, v4055, v3840);
    v3844 = vmlaq_f32(v3821, v3697, v3840);
    v3845 = vmlaq_f32(v3820, v3697, v3841);
    v3847 = v4057[6];
    v3846 = v4057[7];
    *&STACK[0x2240] = vmlaq_f32(v3824, v3701, v3846);
    *&STACK[0x2230] = vmlaq_f32(v3825, v3701, v3847);
    v3849 = v4057[22];
    v3848 = v4057[23];
    *&STACK[0x2140] = vmlaq_f32(v3830, v3701, v3848);
    *&STACK[0x2130] = vmlaq_f32(v3831, v3701, v3849);
    v3850 = vmlaq_f32(v3833, _Q2, v3849);
    v3851 = vmlaq_f32(v3832, _Q2, v3848);
    v3853 = v4057[38];
    v3852 = v4057[39];
    *&STACK[0x2060] = vmlaq_f32(v3836, v3701, v3852);
    *&STACK[0x2050] = vmlaq_f32(v3837, v3701, v3853);
    v3854 = vmlaq_f32(v3839, _Q2, v3853);
    v3855 = vmlaq_f32(v3838, _Q2, v3852);
    v3856 = v4057[54];
    v3857 = v4057[55];
    *&STACK[0x1F70] = vmlaq_f32(v3842, v3701, v3856);
    *&STACK[0x1F80] = vmlaq_f32(v3843, v3701, v3857);
    v3858 = *(v11 + 104);
    v3859 = *(v11 + 112);
    v3860 = vmlaq_f32(v3851, v3697, v3858[26]);
    v3861 = vmlaq_f32(v3850, v3697, v3858[25]);
    v3862 = vmlaq_f32(v3855, v3697, v3858[42]);
    v3863 = vmlaq_f32(v3854, v3697, v3858[41]);
    v3864 = vmlaq_f32(vmlaq_f32(v3844, _Q2, v3857), v3697, v3858[58]);
    v3865 = vmlaq_f32(vmlaq_f32(v3845, _Q2, v3856), v3697, v3858[57]);
    v3866 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3827, _Q2, v3847), v3697, v3858[9]), v3694, v3858[11]);
    *&STACK[0x2260] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3826, _Q2, v3846), v3697, v3858[10]), v3694, v3858[12]);
    *&STACK[0x2250] = v3866;
    v3867 = vmlaq_f32(v3861, v3694, v3858[27]);
    *&STACK[0x2160] = vmlaq_f32(v3860, v3694, v3858[28]);
    *&STACK[0x2150] = v3867;
    v3868 = vmlaq_f32(v3863, v3694, v3858[43]);
    *&STACK[0x2080] = vmlaq_f32(v3862, v3694, v3858[44]);
    *&STACK[0x2070] = v3868;
    v3869 = vmlaq_f32(v3865, v3694, v3858[59]);
    *&STACK[0x1FA0] = vmlaq_f32(v3864, v3694, v3858[60]);
    *&STACK[0x1F90] = v3869;
    v3871 = *(v11 + 64);
    v3870 = *(v11 + 72);
    v3872 = vmlaq_f32(vmulq_f32(vextq_s8(v3695[70], v3871[69], 8uLL), v3694), v3697, vextq_s8(v3695[72], v3871[71], 8uLL));
    v3873 = vmlaq_f32(vmulq_f32(vextq_s8(v3695[54], v3871[53], 8uLL), v3694), v3697, vextq_s8(v3695[56], v3871[55], 8uLL));
    v3874 = vmlaq_f32(vmulq_f32(vextq_s8(v3695[38], v3871[37], 8uLL), v3694), v3697, vextq_s8(v3695[40], v3871[39], 8uLL));
    v3875 = vmlaq_f32(vmulq_f32(vextq_s8(v3695[22], v3871[21], 8uLL), v3694), v3697, vextq_s8(v3695[24], v3871[23], 8uLL));
    v3877 = *(v11 + 88);
    v3876 = *(v11 + 96);
    v3878 = vextq_s8(v3870[10], v3877[9], 8uLL);
    v3879 = vextq_s8(v3870[26], v3877[25], 8uLL);
    v3880 = vextq_s8(v3870[42], v3877[41], 8uLL);
    v3881 = vextq_s8(v3870[58], v3877[57], 8uLL);
    v3882 = vextq_s8(v3870[12], v3877[11], 8uLL);
    v3883 = vextq_s8(v3870[28], v3877[27], 8uLL);
    v3884 = vextq_s8(v3870[44], v3877[43], 8uLL);
    v3885 = vextq_s8(v3870[60], v3877[59], 8uLL);
    v3886 = vmlaq_f32(vmlaq_f32(v3872, _Q2, v3881), v3697, v3885);
    v3887 = vmlaq_f32(vmlaq_f32(v3873, _Q2, v3880), v3697, v3884);
    v3888 = vmlaq_f32(vmlaq_f32(v3874, _Q2, v3879), v3697, v3883);
    v3889 = vmlaq_f32(vmlaq_f32(v3875, _Q2, v3878), v3697, v3882);
    v3890 = vmlaq_f32(vmulq_f32(v3878, v3701), v4055, v3882);
    v3891 = vmlaq_f32(vmulq_f32(v3879, v3701), v4055, v3883);
    v3892 = vmlaq_f32(vmulq_f32(v3880, v3701), v4055, v3884);
    v3893 = vmlaq_f32(vmulq_f32(v3881, v3701), v4055, v3885);
    v3894 = vextq_s8(v3870[14], v3877[13], 8uLL);
    v3895 = vextq_s8(v3870[30], v3877[29], 8uLL);
    v3896 = vextq_s8(v3870[46], v3877[45], 8uLL);
    v3897 = vextq_s8(v3870[62], v3877[61], 8uLL);
    *&STACK[0x2320] = vmlaq_f32(v3886, v3694, v3897);
    *&STACK[0x2310] = vmlaq_f32(v3887, v3694, v3896);
    *&STACK[0x2300] = vmlaq_f32(v3888, v3694, v3895);
    *&STACK[0x22F0] = vmlaq_f32(v3889, v3694, v3894);
    v3898 = vmlaq_f32(v3893, v3734, v3897);
    v3899 = vmlaq_f32(v3892, v3734, v3896);
    v3900 = vmlaq_f32(v3891, v3734, v3895);
    v3901 = vmlaq_f32(v3890, v3734, v3894);
    v3902 = vmulq_f32(v3897, v3710);
    v3903 = vmulq_f32(v3896, v3710);
    v3904 = vmulq_f32(v3895, v3710);
    v3905 = vmulq_f32(v3894, v3710);
    v3906 = vextq_s8(v3870[16], v3877[15], 8uLL);
    v3907 = vextq_s8(v3870[32], v3877[31], 8uLL);
    v3908 = vextq_s8(v3870[48], v3877[47], 8uLL);
    v3909 = vextq_s8(v3870[64], v3877[63], 8uLL);
    v3910 = vmlaq_f32(v3901, v3751, v3906);
    v3911 = vmlaq_f32(v3900, v3751, v3907);
    v3912 = vmlaq_f32(v3899, v3751, v3908);
    v3913 = vmlaq_f32(v3898, v3751, v3909);
    v3914 = vmlaq_f32(v3905, v3754, v3906);
    v3915 = vmlaq_f32(v3904, v3754, v3907);
    v3916 = vmlaq_f32(v3903, v3754, v3908);
    v3917 = vmlaq_f32(v3902, v3754, v3909);
    v3918 = vextq_s8(v3870[18], v3877[17], 8uLL);
    v3919 = vextq_s8(v3870[34], v3877[33], 8uLL);
    v3920 = vextq_s8(v3870[50], v3877[49], 8uLL);
    v3921 = vextq_s8(v3870[66], v3877[65], 8uLL);
    v3922 = vmlaq_f32(v3912, v3754, v3920);
    v3923 = vmlaq_f32(v3911, v3754, v3919);
    v3924 = vmlaq_f32(v3910, v3754, v3918);
    v3925 = vmlaq_f32(v3917, v3751, v3921);
    v3926 = vmlaq_f32(v3916, v3751, v3920);
    v3927 = vmlaq_f32(v3915, v3751, v3919);
    v3928 = vmlaq_f32(v3914, v3751, v3918);
    v3929 = vextq_s8(v3870[20], v3877[19], 8uLL);
    v3930 = vextq_s8(v3870[36], v3877[35], 8uLL);
    v3931 = vextq_s8(v3870[52], v3877[51], 8uLL);
    v3932 = vextq_s8(v3870[68], v3877[67], 8uLL);
    *&STACK[0x2360] = vmlaq_f32(vmlaq_f32(v3913, v3754, v3921), v3710, v3932);
    *&STACK[0x2350] = vmlaq_f32(v3922, v3710, v3931);
    *&STACK[0x2340] = vmlaq_f32(v3923, v3710, v3930);
    *&STACK[0x2330] = vmlaq_f32(v3924, v3710, v3929);
    v3933 = vmlaq_f32(v3928, v3734, v3929);
    v3934 = vmulq_f32(v3929, v3694);
    v3935 = vextq_s8(v3870[22], v3877[21], 8uLL);
    v3936 = vextq_s8(v3870[38], v3877[37], 8uLL);
    v3937 = vextq_s8(v3870[54], v3877[53], 8uLL);
    v3938 = vextq_s8(v3870[70], v3877[69], 8uLL);
    v3939 = vmlaq_f32(vmlaq_f32(v3925, v3734, v3932), v4055, v3938);
    v3940 = vmlaq_f32(vmlaq_f32(v3926, v3734, v3931), v4055, v3937);
    v3941 = vmlaq_f32(vmlaq_f32(v3927, v3734, v3930), v4055, v3936);
    v3942 = vmlaq_f32(v3933, v4055, v3935);
    v3943 = vmlaq_f32(vmulq_f32(v3932, v3694), v3697, v3938);
    v3944 = vmlaq_f32(vmulq_f32(v3931, v3694), v3697, v3937);
    v3945 = vmlaq_f32(vmulq_f32(v3930, v3694), v3697, v3936);
    v3946 = vmlaq_f32(v3934, v3697, v3935);
    v3947 = vextq_s8(v3870[24], v3877[23], 8uLL);
    v3948 = vextq_s8(v3870[40], v3877[39], 8uLL);
    v3949 = vextq_s8(v3870[56], v3877[55], 8uLL);
    v3950 = vextq_s8(v3870[72], v3877[71], 8uLL);
    *&STACK[0x23A0] = vmlaq_f32(v3939, v3701, v3950);
    *&STACK[0x2390] = vmlaq_f32(v3940, v3701, v3949);
    *&STACK[0x2380] = vmlaq_f32(v3941, v3701, v3948);
    *&STACK[0x2370] = vmlaq_f32(v3942, v3701, v3947);
    v3951 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3946, _Q2, v3947), v3697, vextq_s8(v3876[10], v3859[9], 8uLL)), v3694, vextq_s8(v3876[12], v3859[11], 8uLL));
    v3952 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3945, _Q2, v3948), v3697, vextq_s8(v3876[26], v3859[25], 8uLL)), v3694, vextq_s8(v3876[28], v3859[27], 8uLL));
    v3953 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3944, _Q2, v3949), v3697, vextq_s8(v3876[42], v3859[41], 8uLL)), v3694, vextq_s8(v3876[44], v3859[43], 8uLL));
    *&STACK[0x23E0] = vmlaq_f32(vmlaq_f32(vmlaq_f32(v3943, _Q2, v3950), v3697, vextq_s8(v3876[58], v3859[57], 8uLL)), v3694, vextq_s8(v3876[60], v3859[59], 8uLL));
    *&STACK[0x23D0] = v3953;
    v3954 = &STACK[0x510];
    *&STACK[0x23C0] = v3952;
    *&STACK[0x23B0] = v3951;
    do
    {
      v3955 = &STACK[0x21F0] + 4 * v3693;
      v3956 = *v3955;
      v3957 = *(v3955 + 1);
      v3958 = vmulq_f32(*v3955, xmmword_298496450);
      v3959 = &STACK[0x20F0] + 4 * v3693;
      v3960 = *v3959;
      v3961 = *(v3959 + 1);
      v3962 = vmulq_f32(*v3959, xmmword_298496450);
      v3963 = &STACK[0x2010] + 4 * v3693;
      v3964 = *v3963;
      v3965 = *(v3963 + 1);
      v3966 = vmulq_f32(*v3963, xmmword_298496450);
      v3967 = &STACK[0x1F30] + 4 * v3693;
      v3968 = *v3967;
      v3969 = *(v3967 + 1);
      v3970 = (&STACK[0x22F0] + 8 * v3693);
      v3971 = vpaddq_f32(vmulq_f32(*v3970, xmmword_2984964A0), vmulq_f32(v3970[1], xmmword_2984964A0));
      v3972 = vpaddq_f32(vmulq_f32(v3970[2], xmmword_2984964A0), vmulq_f32(v3970[3], xmmword_2984964A0));
      v3973 = vpaddq_f32(vpaddq_f32(v3958, vmulq_f32(v3957, xmmword_298496440)), vpaddq_f32(vmlaq_f32(vmulq_f32(v3957, xmmword_298496460), xmmword_298496470, v3956), vmlaq_f32(vmulq_f32(v3957, xmmword_298496480), xmmword_298496490, v3956)));
      v3974 = vpaddq_f32(vpaddq_f32(v3962, vmulq_f32(v3961, xmmword_298496440)), vpaddq_f32(vmlaq_f32(vmulq_f32(v3961, xmmword_298496460), xmmword_298496470, v3960), vmlaq_f32(vmulq_f32(v3961, xmmword_298496480), xmmword_298496490, v3960)));
      v3975.i64[0] = vaddq_f32(v3971, v3973).u64[0];
      v3975.i64[1] = v3973.i64[1];
      v3976 = vpaddq_f32(vpaddq_f32(v3966, vmulq_f32(v3965, xmmword_298496440)), vpaddq_f32(vmlaq_f32(vmulq_f32(v3965, xmmword_298496460), xmmword_298496470, v3964), vmlaq_f32(vmulq_f32(v3965, xmmword_298496480), xmmword_298496490, v3964)));
      *v3958.f32 = vadd_f32(*&vextq_s8(v3971, v3971, 8uLL), *v3974.i8);
      v3958.i64[1] = vextq_s8(v3974, v3974, 8uLL).u64[0];
      v3977 = vpaddq_f32(vpaddq_f32(vmulq_f32(v3968, xmmword_298496450), vmulq_f32(v3969, xmmword_298496440)), vpaddq_f32(vmlaq_f32(vmulq_f32(v3969, xmmword_298496460), xmmword_298496470, v3968), vmlaq_f32(vmulq_f32(v3969, xmmword_298496480), xmmword_298496490, v3968)));
      v3978.i64[0] = vaddq_f32(v3972, v3976).u64[0];
      *v3960.f32 = vadd_f32(*&vextq_s8(v3972, v3972, 8uLL), *v3977.i8);
      v3978.i64[1] = v3976.i64[1];
      v3960.i64[1] = vextq_s8(v3977, v3977, 8uLL).u64[0];
      v3954[-4] = vuzp1q_s32(v3975, vextq_s8(v3975, v3975, 0xCuLL));
      *v3954 = vuzp1q_s32(v3958, vextq_s8(v3958, v3958, 0xCuLL));
      v3954[4] = vuzp1q_s32(v3978, vextq_s8(v3978, v3978, 0xCuLL));
      v3954[8] = vuzp1q_s32(v3960, vextq_s8(v3960, v3960, 0xCuLL));
      ++v3693;
      ++v3954;
    }

    while (v3693 != 4);
    *&STACK[0x440] = *v11;
    v3979 = *(v11 + 32);
    STACK[0x460] = v3979;
    STACK[0x468] = v11;
    v3980 = *(v11 + 135);
    LOBYTE(STACK[0x4C7]) = v3980;
    v3981 = *&STACK[0x500];
    v3982 = *&STACK[0x4F0];
    v3983 = *&STACK[0x4E0];
    v3984 = *&STACK[0x4D0];
    v3985 = *&STACK[0x540];
    v3986 = *&STACK[0x530];
    v3987 = *&STACK[0x520];
    v3988 = *&STACK[0x510];
    v3990 = *&STACK[0x570];
    v3989 = *&STACK[0x580];
    v3992 = *&STACK[0x550];
    v3991 = *&STACK[0x560];
    if (!v3980)
    {
      v3994 = *&STACK[0x5B0];
      v3993 = *&STACK[0x5C0];
      v3996 = *&STACK[0x590];
      v3995 = *&STACK[0x5A0];
      v3984 = vminnmq_f32(v3984, *&STACK[0x590]);
      v3983 = vminnmq_f32(v3983, *&STACK[0x5A0]);
      v3982 = vminnmq_f32(v3982, *&STACK[0x5B0]);
      v3981 = vminnmq_f32(v3981, *&STACK[0x5C0]);
      *&STACK[0x4E0] = v3983;
      *&STACK[0x4D0] = v3984;
      *&STACK[0x4F0] = v3982;
      *&STACK[0x500] = v3981;
      v3988 = vminnmq_f32(v3988, v3996);
      v3987 = vminnmq_f32(v3987, v3995);
      v3986 = vminnmq_f32(v3986, v3994);
      v3985 = vminnmq_f32(v3985, v3993);
      *&STACK[0x520] = v3987;
      *&STACK[0x510] = v3988;
      *&STACK[0x530] = v3986;
      *&STACK[0x540] = v3985;
      v3992 = vminnmq_f32(v3992, v3996);
      v3991 = vminnmq_f32(v3991, v3995);
      v3990 = vminnmq_f32(v3990, v3994);
      v3989 = vminnmq_f32(v3989, v3993);
      *&STACK[0x550] = v3992;
      *&STACK[0x560] = v3991;
      *&STACK[0x570] = v3990;
      *&STACK[0x580] = v3989;
    }

    if (*&STACK[0x4BC] < 0.0)
    {
      if (v3979)
      {
        v3997 = *v3979;
      }

      else
      {
        v3997 = xmmword_2984959B0;
      }

      v3998 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3985, *v3997.f32, 1), v3981, v3997.f32[0]), v3989, v3997, 2);
      v3999 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3986, *v3997.f32, 1), v3982, v3997.f32[0]), v3990, v3997, 2);
      v4000 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3987, *v3997.f32, 1), v3983, v3997.f32[0]), v3991, v3997, 2);
      v4001 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v3988, *v3997.f32, 1), v3984, v3997.f32[0]), v3992, v3997, 2);
      *&STACK[0x6D0] = v4001;
      *&STACK[0x6E0] = v4000;
      *&STACK[0x6F0] = v3999;
      *&STACK[0x700] = v3998;
      v4002 = vsubq_f32(v3983, v4000);
      v4003 = vsubq_f32(v3981, v3998);
      v4004 = vsubq_f32(v3984, v4001);
      v4005 = vsubq_f32(v3982, v3999);
      v4006 = vsubq_f32(v3986, v3999);
      v4007 = vsubq_f32(v3988, v4001);
      v4008 = vsubq_f32(v3985, v3998);
      v4009 = vsubq_f32(v3987, v4000);
      v4010 = vsubq_f32(v3990, v3999);
      v4011 = vsubq_f32(v3992, v4001);
      v4012 = vsubq_f32(v3989, v3998);
      v4013 = vsubq_f32(v3991, v4000);
      v4014 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v4007, v4007), v4004, v4004), v4011, v4011), vmlaq_f32(vmlaq_f32(vmulq_f32(v4006, v4006), v4005, v4005), v4010, v4010)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v4009, v4009), v4002, v4002), v4013, v4013), vmlaq_f32(vmlaq_f32(vmulq_f32(v4008, v4008), v4003, v4003), v4012, v4012)));
      v4014.i64[0] = vpaddq_f32(v4014, v4014).u64[0];
      v4014.f32[0] = vrecpes_f32(vpadd_f32(*v4014.f32, *v4014.f32).f32[0]);
      *&STACK[0x4BC] = (v4014.f32[0] * 3.0) + (v4014.f32[0] * 3.0);
    }

    v4015 = *&STACK[0x590];
    v4016 = *&STACK[0x5A0];
    v4017 = vdupq_n_s32(0x3B808081u);
    v4018 = vcgeq_f32(v4017, *&STACK[0x5A0]);
    v4019 = vcgeq_f32(v4017, *&STACK[0x590]);
    v4020 = *&STACK[0x5B0];
    v4021 = *&STACK[0x5C0];
    v4022 = vcgeq_f32(v4017, *&STACK[0x5C0]);
    v4023 = vcgeq_f32(v4017, *&STACK[0x5B0]);
    *&STACK[0x730] = v4023;
    *&STACK[0x740] = v4022;
    *&STACK[0x710] = v4019;
    *&STACK[0x720] = v4018;
    v4024 = vorrq_s8(vandq_s8(vuzp1q_s16(v4019, v4018), xmmword_298495650), vandq_s8(vuzp1q_s16(v4023, v4022), xmmword_298495640));
    v4024.i16[0] = vaddvq_s16(v4024);
    LOWORD(STACK[0x750]) = v4024.i16[0];
    LOBYTE(STACK[0x4C6]) = vaddlv_u8(vcnt_s8(*v4024.i8));
    v4025 = vzip1q_s32(v3983, v3991);
    v4026 = vzip1q_s32(v3984, v3992);
    v4027 = vzip2q_s32(v3983, v3991);
    v4028 = vzip2q_s32(v3984, v3992);
    v4029 = vzip2q_s32(v3988, v4015);
    v4030 = vzip2q_s32(v4026, vuzp2q_s32(v4026, v3988));
    v4030.i32[3] = v4015.i32[1];
    v4031 = vzip1q_s32(v4026, v3988);
    v4031.i32[3] = v4015.i32[0];
    *&STACK[0x5F0] = vzip1q_s32(v4028, v4029);
    *&STACK[0x600] = vzip2q_s32(v4028, v4029);
    *&STACK[0x5D0] = v4031;
    *&STACK[0x5E0] = v4030;
    v4032 = vzip2q_s32(v4025, vuzp2q_s32(v4025, v3987));
    v4032.i32[3] = v4016.i32[1];
    v4033 = vzip1q_s32(v4025, v3987);
    v4033.i32[3] = v4016.i32[0];
    v4034 = vextq_s8(vzip2q_s32(v3987, v4027), v4027, 4uLL);
    v4034.i32[3] = v4016.i32[3];
    v4035 = vzip2q_s32(vextq_s8(v4027, v4027, 8uLL), v3987);
    v4035.i32[3] = v4016.i32[2];
    *&STACK[0x630] = v4035;
    *&STACK[0x640] = v4034;
    *&STACK[0x610] = v4033;
    *&STACK[0x620] = v4032;
    v4036 = vzip1q_s32(v3981, v3989);
    v4037 = vzip1q_s32(v3982, v3990);
    v4038 = vzip2q_s32(v3981, v3989);
    v4039 = vzip2q_s32(v3982, v3990);
    v4040 = vzip2q_s32(v3986, v4020);
    v4041 = vzip1q_s32(v4039, v4040);
    v4042 = vzip2q_s32(v4039, v4040);
    v4043 = vzip2q_s32(v4037, vuzp2q_s32(v4037, v3986));
    v4043.i32[3] = v4020.i32[1];
    v4044 = vzip1q_s32(v4037, v3986);
    v4044.i32[3] = v4020.i32[0];
    *&STACK[0x670] = v4041;
    *&STACK[0x680] = v4042;
    v4045 = vzip2q_s32(v4036, vuzp2q_s32(v4036, v3985));
    v4045.i32[3] = v4021.i32[1];
    v4046 = vzip1q_s32(v4036, v3985);
    v4046.i32[3] = v4021.i32[0];
    *&STACK[0x650] = v4044;
    *&STACK[0x660] = v4043;
    v4047 = vextq_s8(vzip2q_s32(v3985, v4038), v4038, 4uLL);
    v4047.i32[3] = v4021.i32[3];
    v4048 = vzip2q_s32(vextq_s8(v4038, v4038, 8uLL), v3985);
    v4048.i32[3] = v4021.i32[2];
    *&STACK[0x6B0] = v4048;
    *&STACK[0x6C0] = v4047;
    *&STACK[0x690] = v4046;
    *&STACK[0x6A0] = v4045;
    v4049 = vmulq_f32(v3981, v3981);
    v4050 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v3984, v3982), vaddq_f32(v3983, v3981)), vaddq_f32(vaddq_f32(v3988, v3986), vaddq_f32(v3987, v3985))), vpaddq_f32(vaddq_f32(vaddq_f32(v3992, v3990), vaddq_f32(v3991, v3989)), vaddq_f32(vaddq_f32(v4015, v4020), vaddq_f32(v4016, v4021))));
    v4051 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v3982, v3982), v3984, v3984), vmlaq_f32(v4049, v3983, v3983)), vaddq_f32(vmlaq_f32(vmulq_f32(v3986, v3986), v3988, v3988), vmlaq_f32(vmulq_f32(v3985, v3985), v3987, v3987))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v3990, v3990), v3992, v3992), vmlaq_f32(vmulq_f32(v3989, v3989), v3991, v3991)), vaddq_f32(vmlaq_f32(vmulq_f32(v4020, v4020), v4015, v4015), vmlaq_f32(vmulq_f32(v4021, v4021), v4016, v4016))));
    v4052 = vmulq_f32(v4050, vdupq_n_s32(0x3D800000u));
    v4053 = vmlsq_f32(v4051, v4052, v4050);
    *&STACK[0x450] = v4052;
    v4053.i64[0] = vpaddq_f32(v4053, v4053).u64[0];
    LODWORD(STACK[0x4B8]) = vpadd_f32(*v4053.f32, *v4053.f32).u32[0];
    LOBYTE(STACK[0x4C8]) = v4052.f32[3] >= 0.99988;
    memcpy(&STACK[0x1440], &STACK[0x440], 0x320uLL);
    EncodeBasicBlock_4x4(&STACK[0x1440], v4058, v10, 0);
    if (*v10 > v10[1] && !LODWORD(STACK[0x1434]) && *&STACK[0xE10] != INFINITY)
    {
      EncodeDualPartitionBlock(v11, v11, v11, v11, v4058, v10, &STACK[0xCA0]);
    }
  }
}