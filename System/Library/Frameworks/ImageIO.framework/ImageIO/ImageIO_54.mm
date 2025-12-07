uint64_t compute_ideal_colors_and_weights_1_comp(uint64_t result, unsigned __int16 *a2, uint64_t a3, signed int a4)
{
  v6 = *a2;
  *(a3 + 16) = v6;
  if (!v6)
  {
    compute_ideal_colors_and_weights_1_comp();
  }

  v7 = *(result + 3456);
  if (!*(result + 3456))
  {
    compute_ideal_colors_and_weights_1_comp();
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v8 = *(result + 3544);
      v9 = result + 1728;
      goto LABEL_12;
    }

    if (a4 == 3)
    {
      v8 = *(result + 3548);
      v9 = result + 2592;
      goto LABEL_12;
    }

LABEL_39:
    compute_ideal_colors_and_weights_1_comp();
  }

  if (!a4)
  {
    v8 = *(result + 3536);
    v9 = result;
    goto LABEL_12;
  }

  if (a4 != 1)
  {
    goto LABEL_39;
  }

  v8 = *(result + 3540);
  v9 = result + 864;
LABEL_12:
  v10 = 0;
  v11 = a2 + 2;
  v12 = a2 + 112;
  v13 = 1;
  v14 = vceqq_s32(vdupq_n_s32(a4), xmmword_186205980);
  v15 = 0.0;
  do
  {
    v16 = *(v11 + v10);
    v4.i32[0] = -803929351;
    v5.i32[0] = 1343554297;
    if (*(v11 + v10))
    {
      v17 = *(v11 + v10);
      v18 = v12;
      v5.i32[0] = 1343554297;
      v4.i32[0] = -803929351;
      do
      {
        v19 = *v18;
        v18 = (v18 + 1);
        v20 = *(v9 + 4 * v19);
        if (v20 < *v5.i32)
        {
          *v5.i32 = v20;
        }

        if (v20 > *v4.i32)
        {
          *v4.i32 = v20;
        }

        --v17;
      }

      while (v17);
    }

    if (*v4.i32 <= *v5.i32)
    {
      *v4.i32 = 0.0000001;
      *v5.i32 = 0.0;
    }

    v21 = *v4.i32 - *v5.i32;
    if (v10)
    {
      v13 &= (v21 * v21) == v15;
    }

    else
    {
      v15 = v21 * v21;
    }

    if (*(v11 + v10))
    {
      v22 = 0;
      v23 = v8 * (v21 * v21);
      v24 = 1.0 / v21;
      do
      {
        v25 = *(v12 + v22);
        v26 = v24 * (*(v9 + 4 * v25) - *v5.i32);
        v27 = fmaxf(v26, 0.0);
        if (v26 <= 1.0)
        {
          v28 = v27;
        }

        else
        {
          v28 = 1.0;
        }

        *(a3 + 160 + 4 * v25) = v28;
        *(a3 + 1024 + 4 * v25) = v23;
        ++v22;
      }

      while (v16 != v22);
    }

    *(a3 + 32 + 16 * v10) = vbslq_s8(v14, vdupq_lane_s32(*v5.i8, 0), *(result + 3488));
    v5 = *(result + 3520);
    v4 = vbslq_s8(v14, vdupq_lane_s32(*v4.i8, 0), v5);
    *(a3 + 96 + 16 * v10++) = v4;
    v12 += 108;
  }

  while (v10 != v6);
  if (((v7 + 3) & 0x1FCu) > v7)
  {
    v29 = a3 + 4 * v7;
    v30 = v7 - ((v7 + 3) & 0x1FC);
    do
    {
      *(v29 + 160) = 0;
      *(v29 + 1024) = 0;
      v29 += 4;
    }

    while (!__CFADD__(v30++, 1));
  }

  *a3 = v13 & 1;
  return result;
}

float32x2_t compute_error_of_weight_set_1plane(float32x4_t *a1, unsigned __int8 *a2, float32x4_t *a3, float32x4_t a4, float32x4_t a5, double a6, uint8x8_t a7)
{
  v7 = *a2;
  if (!*a2)
  {
    compute_error_of_weight_set_1plane();
  }

  v11 = a2[1];
  if (v11 < 3)
  {
    if (v11 == 2)
    {
      v16 = 0;
      v13 = 0uLL;
      do
      {
        v25 = v13;
        *v17.i64 = bilinear_infill_vla_2(a2, a3, v16, *a4.f32, *a5.f32);
        v18 = vsubq_f32(v17, a1[10]);
        a5 = a1[64];
        a4 = vmulq_f32(a5, vmulq_f32(v18, v18));
        v13 = vaddq_f32(v25, a4);
        v16 += 4;
        ++a1;
      }

      while (v16 < v7);
    }

    else
    {
      v19 = 0;
      v13 = 0uLL;
      do
      {
        v20 = *a3++;
        v21 = vsubq_f32(v20, a1[10]);
        v13 = vaddq_f32(v13, vmulq_f32(a1[64], vmulq_f32(v21, v21)));
        v19 += 4;
        ++a1;
      }

      while (v19 < v7);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0uLL;
    do
    {
      v24 = v13;
      *v14.i64 = bilinear_infill_vla(a2, a3, v12, *a4.f32, *a5.f32, *v13.i8, a7);
      v15 = vsubq_f32(v14, a1[10]);
      a5 = a1[64];
      a4 = vmulq_f32(a5, vmulq_f32(v15, v15));
      v13 = vaddq_f32(v24, a4);
      v12 += 4;
      ++a1;
    }

    while (v12 < v7);
  }

  v22 = vadd_f32(*&vextq_s8(v13, v13, 8uLL), *v13.i8);
  return vpadd_f32(v22, v22);
}

double bilinear_infill_vla(uint64_t a1, uint64_t a2, unsigned int a3, uint8x8_t a4, uint8x8_t a5, uint8x8_t a6, uint8x8_t a7)
{
  v7 = a1 + a3;
  a4.i32[0] = *(v7 + 222);
  v8 = vmovl_u16(*&vmovl_u8(a4));
  a5.i32[0] = *(v7 + 438);
  v9 = vmovl_u16(*&vmovl_u8(a5));
  a6.i32[0] = *(v7 + 654);
  v10 = vmovl_u16(*&vmovl_u8(a6));
  a7.i32[0] = *(v7 + 870);
  v11 = vmovl_u16(*&vmovl_u8(a7));
  v8.i32[0] = *(a2 + 4 * v8.u32[0]);
  v8.i32[1] = *(a2 + 4 * v8.u32[1]);
  v8.i32[2] = *(a2 + 4 * v8.u32[2]);
  v8.i32[3] = *(a2 + 4 * v8.u32[3]);
  v9.i32[0] = *(a2 + 4 * v9.u32[0]);
  v9.i32[1] = *(a2 + 4 * v9.u32[1]);
  v9.i32[2] = *(a2 + 4 * v9.u32[2]);
  v9.i32[3] = *(a2 + 4 * v9.u32[3]);
  v10.i32[0] = *(a2 + 4 * v10.u32[0]);
  v10.i32[1] = *(a2 + 4 * v10.u32[1]);
  v10.i32[2] = *(a2 + 4 * v10.u32[2]);
  v10.i32[3] = *(a2 + 4 * v10.u32[3]);
  v11.i32[0] = *(a2 + 4 * v11.u32[0]);
  v11.i32[1] = *(a2 + 4 * v11.u32[1]);
  v11.i32[2] = *(a2 + 4 * v11.u32[2]);
  v11.i32[3] = *(a2 + 4 * v11.u32[3]);
  *&result = vaddq_f32(vaddq_f32(vmulq_f32(v8, *(a1 + 4 * a3 + 1952)), vmulq_f32(v9, *(a1 + 4 * a3 + 2816))), vaddq_f32(vmulq_f32(v10, *(a1 + 4 * a3 + 3680)), vmulq_f32(v11, *(a1 + 4 * a3 + 4544)))).u64[0];
  return result;
}

double bilinear_infill_vla_2(uint64_t a1, uint64_t a2, unsigned int a3, uint8x8_t a4, uint8x8_t a5)
{
  v5 = a1 + a3;
  a4.i32[0] = *(v5 + 222);
  v6 = vmovl_u16(*&vmovl_u8(a4));
  a5.i32[0] = *(v5 + 438);
  v7 = vmovl_u16(*&vmovl_u8(a5));
  v6.i32[0] = *(a2 + 4 * v6.u32[0]);
  v6.i32[1] = *(a2 + 4 * v6.u32[1]);
  v6.i32[2] = *(a2 + 4 * v6.u32[2]);
  v6.i32[3] = *(a2 + 4 * v6.u32[3]);
  v7.i32[0] = *(a2 + 4 * v7.u32[0]);
  v7.i32[1] = *(a2 + 4 * v7.u32[1]);
  v7.i32[2] = *(a2 + 4 * v7.u32[2]);
  v7.i32[3] = *(a2 + 4 * v7.u32[3]);
  *&result = vaddq_f32(vmulq_f32(v6, *(a1 + 4 * a3 + 1952)), vmulq_f32(v7, *(a1 + 4 * a3 + 2816))).u64[0];
  return result;
}

float32x2_t compute_error_of_weight_set_2planes(float32x4_t *a1, float32x4_t *a2, unsigned __int8 *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t a6, uint8x8_t a7, uint8x8_t a8)
{
  v8 = *a3;
  if (!*a3)
  {
    compute_error_of_weight_set_2planes();
  }

  v14 = a3[1];
  if (v14 < 3)
  {
    if (v14 == 2)
    {
      v24 = 0;
      v16 = 0uLL;
      do
      {
        v40 = v16;
        *v25.i64 = bilinear_infill_vla_2(a3, a4, v24, *a6.f32, a7);
        v26 = vsubq_f32(v25, a1[10]);
        v27 = a1[64];
        v38 = vmulq_f32(v27, vmulq_f32(v26, v26));
        *v28.i64 = bilinear_infill_vla_2(a3, a5, v24, *v38.f32, *v27.f32);
        v29 = vsubq_f32(v28, a2[10]);
        a7 = *v38.f32;
        a6 = vaddq_f32(v38, vmulq_f32(a2[64], vmulq_f32(v29, v29)));
        v16 = vaddq_f32(v40, a6);
        v24 += 4;
        ++a1;
        ++a2;
      }

      while (v24 < v8);
    }

    else
    {
      v30 = 0;
      v16 = 0uLL;
      do
      {
        v31 = *a4++;
        v32 = vsubq_f32(v31, a1[10]);
        v33 = *a5++;
        v34 = vsubq_f32(v33, a2[10]);
        v16 = vaddq_f32(v16, vaddq_f32(vmulq_f32(a1[64], vmulq_f32(v32, v32)), vmulq_f32(a2[64], vmulq_f32(v34, v34))));
        v30 += 4;
        ++a1;
        ++a2;
      }

      while (v30 < v8);
    }
  }

  else
  {
    v15 = 0;
    v16 = 0uLL;
    do
    {
      v39 = v16;
      *v17.i64 = bilinear_infill_vla(a3, a4, v15, *a6.f32, a7, a8, *v16.i8);
      v18 = vsubq_f32(v17, a1[10]);
      v19 = a1[64];
      v37 = vmulq_f32(v19, vmulq_f32(v18, v18));
      *v22.i64 = bilinear_infill_vla(a3, a5, v15, *v37.f32, *v19.f32, v20, v21);
      v23 = vsubq_f32(v22, a2[10]);
      a7 = *v37.f32;
      a6 = vaddq_f32(v37, vmulq_f32(a2[64], vmulq_f32(v23, v23)));
      v16 = vaddq_f32(v39, a6);
      v15 += 4;
      ++a1;
      ++a2;
    }

    while (v15 < v8);
  }

  v35 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.i8);
  return vpadd_f32(v35, v35);
}

int32x2_t *compute_ideal_weights_for_decimation(int32x2_t *result, float32x4_t *a2, _OWORD *a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a2->u8[0];
  if (!a2->i8[0])
  {
    compute_ideal_weights_for_decimation();
  }

  v5 = a2->u8[2];
  if (!a2->i8[2])
  {
    compute_ideal_weights_for_decimation();
  }

  v6 = a3;
  v7 = result;
  v8 = (a3 + 4 * ((v5 - 1) & 0xFFFFFFFC));
  *v8 = 0;
  v8[1] = 0;
  if (v3 == v5)
  {
    v9 = 0;
    v10 = &result[20];
    do
    {
      v11 = *v10;
      v10 += 4;
      *v6++ = v11;
      v9 += 4;
    }

    while (v9 < v3);
  }

  else
  {
    bzero(v75, 0x360uLL);
    v12 = 0;
    v13 = v7->u8[0];
    v14 = v7 + 128;
    v15 = vdupq_lane_s32(v7[128], 0);
    v16 = 5472;
    v17 = a2 + 342;
    v18 = 19296;
    v19 = a2 + 1206;
    v20 = v7 + 20;
    v21 = vdupq_n_s32(0x2EDBE6FFu);
    do
    {
      v22 = &a2[338].f32[v12 / 4];
      v23 = vld1_dup_f32(v22);
      v23.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v23)));
      v24 = v23.u32[0];
      if (!v23.i32[0])
      {
        compute_ideal_weights_for_decimation();
      }

      v25 = 0uLL;
      v26 = v18;
      v27 = v16;
      v28 = v21;
      do
      {
        v29 = (a2->f32 + v27);
        v30 = vld1_dup_f32(v29);
        v31 = vmovl_u16(*&vmovl_u8(v30));
        v32 = v31.u32[0];
        v33 = v31.u32[1];
        v34 = vextq_s8(v31, v31, 8uLL).u64[0];
        if (!v13)
        {
          v15.i32[0] = v14->i32[v32];
          v15.i32[1] = v14->i32[v33];
          v15.i32[2] = v14->i32[v34];
          v15.i32[3] = v14->i32[HIDWORD(v34)];
        }

        v35 = vmulq_f32(*(a2 + v26), v15);
        v36 = v20 + v34;
        v37 = v20 + BYTE4(v34);
        v38.i32[0] = v20->i32[v32];
        v38.i32[1] = v20->i32[v33];
        v38.i32[2] = *v36;
        v38.i32[3] = *v37;
        v28 = vaddq_f32(v28, v35);
        v39 = vmulq_f32(v35, v38);
        v25 = vaddq_f32(v25, v39);
        v26 += 256;
        v27 += 64;
        --v24;
      }

      while (v24);
      v40 = vdivq_f32(v25, v28);
      v6[v12 / 4] = v40;
      v12 += 4;
      v16 += 4;
      v18 += 16;
    }

    while (v12 < v5);
    v73 = v15;
    v74 = v5;
    if (a2->u8[1] >= 3u)
    {
      v43 = 0;
      v44 = v75;
      do
      {
        *v21.i64 = bilinear_infill_vla(a2, v6, v43, *v21.i8, *v40.f32, *v28.f32, *v39.f32);
        *v44++ = v21;
        v43 += 4;
      }

      while (v43 < v3);
    }

    else
    {
      v41 = 0;
      v42 = v75;
      do
      {
        *v21.i64 = bilinear_infill_vla_2(a2, v6, v41, *v21.i8, *v40.f32);
        *v42++ = v21;
        v41 += 4;
      }

      while (v41 < v3);
    }

    v45 = 0;
    v46 = vdupq_n_s32(0x2EDBE6FFu);
    __asm
    {
      FMOV            V1.4S, #-16.0
      FMOV            V2.4S, #-0.25
      FMOV            V3.4S, #0.25
    }

    v54 = v73;
    do
    {
      v55 = &a2[338].f32[v45 / 4];
      v56 = vld1_dup_f32(v55);
      v56.i32[0] = vmaxvq_s32(vmovl_u16(*&vmovl_u8(v56)));
      v57 = v56.u32[0];
      if (!v56.i32[0])
      {
        compute_ideal_weights_for_decimation();
      }

      v58 = 0uLL;
      v59 = v19;
      v60 = v17;
      v61 = v46;
      do
      {
        v62 = *v60;
        v60 += 16;
        v63 = vmovl_u16(*&vmovl_u8(vdup_n_s32(v62)));
        v64 = v63.u32[0];
        v65 = v63.u32[1];
        v66 = vextq_s8(v63, v63, 8uLL).u64[0];
        if (!v13)
        {
          v54.i32[0] = v14->i32[v64];
          v54.i32[1] = v14->i32[v65];
          v54.i32[2] = v14->i32[v66];
          v54.i32[3] = v14->i32[HIDWORD(v66)];
        }

        v67 = vmulq_f32(*v59, v54);
        v68 = v66;
        result = &v75[v66];
        v69 = BYTE4(v66);
        v70 = &v75[BYTE4(v66)];
        v71.i32[0] = v75[v64];
        v71.i32[1] = v75[v65];
        v71.i32[2] = result->i32[0];
        v71.i32[3] = *v70;
        v72.i32[0] = v20->i32[v64];
        v72.i32[1] = v20->i32[v65];
        v72.i32[2] = v20->i32[v68];
        v72.i32[3] = v20->i32[v69];
        v61 = vaddq_f32(v61, vmulq_f32(*v59, v67));
        v58 = vaddq_f32(v58, vmulq_f32(v67, vsubq_f32(v71, v72)));
        v59 += 16;
        --v57;
      }

      while (v57);
      v6[v45 / 4] = vaddq_f32(v6[v45 / 4], vminnmq_f32(vmaxnmq_f32(vdivq_f32(vmulq_f32(v58, _Q1), v61), _Q2), _Q3));
      v45 += 4;
      v17 = (v17 + 4);
      ++v19;
    }

    while (v45 < v74);
  }

  return result;
}

uint64_t compute_quantized_weights_for_decimation(uint64_t result, float32x4_t *a2, float32x4_t *a3, uint64_t a4, unsigned int a5, float a6, double a7, double a8, double a9, double a10, double a11)
{
  v11 = *(result + 2);
  if (!*(result + 2))
  {
    compute_quantized_weights_for_decimation();
  }

  v12 = (&quant_and_xfer_tables + 226 * a5);
  if (a5 > 0x14)
  {
    v13 = -1;
  }

  else
  {
    v13 = dword_18622B610[a5];
  }

  v14 = vdupq_n_s32(v13);
  if (*&a7 > a6)
  {
    *&a11 = a6;
  }

  else
  {
    *&a7 = 1.0;
    *&a11 = 0.0;
  }

  v16 = *&a7 - *&a11;
  v17 = 1.0 / (*&a7 - *&a11);
  *&a7 = *&a11 * v17;
  v18 = vdupq_lane_s32(*&a7, 0);
  v15 = (&compute_quantized_weights_for_decimation(decimation_info const&,float,float,float const*,float *,unsigned char *,quant_method)::quant_levels_m1 + 4 * a5);
  v19 = vld1q_dup_f32(v15);
  v20 = v16 * 0.015625;
  v21 = vdupq_lane_s32(*&a11, 0);
  v22 = *v12;
  if (a5 - 9 >= 0xC)
  {
    v42 = 0;
    __asm { FMOV            V17.4S, #1.0 }

    v44.i64[0] = 0x100000001;
    v44.i64[1] = 0x100000001;
    v45.i64[0] = 0xFFFFFF00FFFFFF00;
    v45.i64[1] = 0xFFFFFF00FFFFFF00;
    v46.i64[0] = 0x4300000043000000;
    v46.i64[1] = 0x4300000043000000;
    do
    {
      v47 = *a2++;
      v48 = vminnmq_f32(vmaxnmq_f32(vsubq_f32(vmulq_n_f32(v47, v17), v18), 0), _Q17);
      v49 = vcvtq_s32_f32(vmulq_f32(v19, v48));
      v50 = vminq_s32(vaddq_s32(v49, v44), v14);
      v51 = vqtbl1q_s8(v22, vorrq_s8(v49, v45));
      v52 = vqtbl1q_s8(v22, vorrq_s8(v50, v45));
      v53 = vcvtq_f32_s32(v51);
      v54 = vcvtq_f32_s32(v52);
      v55 = vcgtq_f32(vmulq_f32(v48, v46), vaddq_f32(v53, v54));
      *a3++ = vaddq_f32(v21, vmulq_n_f32(vbslq_s8(v55, v54, v53), v20));
      *(a4 + v42) = vqtbl1q_s8(vbslq_s8(v55, v52, v51), xmmword_18622B5D0).u32[0];
      v42 += 4;
    }

    while (v42 < v11);
  }

  else
  {
    v23 = 0;
    v24 = v12[1];
    __asm { FMOV            V17.4S, #1.0 }

    v30.i64[0] = 0x100000001;
    v30.i64[1] = 0x100000001;
    v31.i64[0] = 0xFFFFFF00FFFFFF00;
    v31.i64[1] = 0xFFFFFF00FFFFFF00;
    v32.i64[0] = 0x4300000043000000;
    v32.i64[1] = 0x4300000043000000;
    do
    {
      v33 = *a2++;
      v34 = vminnmq_f32(vmaxnmq_f32(vsubq_f32(vmulq_n_f32(v33, v17), v18), 0), _Q17);
      v35 = vcvtq_s32_f32(vmulq_f32(v19, v34));
      v36 = vminq_s32(vaddq_s32(v35, v30), v14);
      v37 = vqtbl2q_s8(*v22.i8, vorrq_s8(v35, v31));
      v38 = vqtbl2q_s8(*v22.i8, vorrq_s8(v36, v31));
      v39 = vcvtq_f32_s32(v37);
      v40 = vcvtq_f32_s32(v38);
      v41 = vcgtq_f32(vmulq_f32(v34, v32), vaddq_f32(v39, v40));
      *a3++ = vaddq_f32(v21, vmulq_n_f32(vbslq_s8(v41, v40, v39), v20));
      *(a4 + v23) = vqtbl1q_s8(vbslq_s8(v41, v38, v37), xmmword_18622B5D0).u32[0];
      v23 += 4;
    }

    while (v23 < v11);
  }

  return result;
}

void *recompute_ideal_colors_1plane(float32x4_t *a1, _WORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v122 = *MEMORY[0x1E69E9840];
  v8 = *(a3 + 2);
  if (!*(a3 + 2))
  {
    recompute_ideal_colors_1plane();
  }

  v10 = a1[216].u8[0];
  if (!a1[216].i8[0])
  {
    recompute_ideal_colors_1plane();
  }

  v12 = *a2;
  if (!*a2)
  {
    recompute_ideal_colors_1plane();
  }

  v17 = 0;
  memset(v121, 0, sizeof(v121));
  v18 = vdupq_n_s32(0x3C800000u);
  v19 = v121;
  do
  {
    v20 = (a4 + v17);
    v21 = vld1_dup_f32(v20);
    *v19++ = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v21))), v18);
    v17 += 4;
  }

  while (v17 < v8);
  bzero(v120, 0x360uLL);
  v27 = *(a3 + 1);
  if (v27 == 1)
  {
    v28 = v121;
  }

  else
  {
    if (v27 >= 3)
    {
      v31 = 0;
      v32 = v120;
      do
      {
        *&v22 = bilinear_infill_vla(a3, v121, v31, *&v22, v23, v24, v25);
        *v32++ = v22;
        v31 += 4;
      }

      while (v31 < v10);
    }

    else
    {
      v29 = 0;
      v30 = v120;
      do
      {
        *&v22 = bilinear_infill_vla_2(a3, v121, v29, *&v22, v23);
        *v30++ = v22;
        v29 += 4;
      }

      while (v29 < v10);
    }

    v28 = v120;
  }

  v33 = 0;
  v34 = vmulq_n_f32(a1[219], v10);
  v35 = (a2 + 112);
  v36 = a1 + 54;
  v37 = a1 + 108;
  v38 = a1 + 162;
  v39 = a5 + 16;
  v40 = a5 + 80;
  v41 = vdupq_n_s32(0x233877AAu);
  result = &unk_18622B000;
  __asm { FMOV            V7.4S, #1.0 }

  v47 = vdupq_n_s32(0x38D1B717u);
  do
  {
    v48 = *(a2 + v33 + 4);
    if (v12 != 1)
    {
      if (!*(a2 + v33 + 4))
      {
        recompute_ideal_colors_1plane();
      }

      v34 = 0uLL;
      v49 = *(a2 + v33 + 4);
      v50 = v35;
      do
      {
        v51 = *v50++;
        v52.i32[0] = a1->i32[v51];
        v52.i32[1] = v36->i32[v51];
        v52.i32[2] = v37->i32[v51];
        v52.i32[3] = v38->i32[v51];
        v34 = vaddq_f32(v34, v52);
        --v49;
      }

      while (v49);
    }

    v53 = a1[221];
    v34 = vmulq_f32(v34, v53);
    _Q21 = vmaxnmq_f32(vmulq_n_f32(v53, v48), v41);
    v55 = vdivq_f32(v34, _Q21);
    v55.i32[3] = 0;
    v56 = vmulq_f32(v55, v55);
    *v56.i8 = vadd_f32(*&vextq_s8(v56, v56, 8uLL), *v56.i8);
    v57 = vdivq_f32(v55, vsqrtq_f32(vdupq_lane_s32(vpadd_f32(*v56.i8, *v56.i8), 0)));
    v58 = COERCE_FLOAT(a1[221].i64[1]) + vaddv_f32(*v53.f32);
    if (*(a2 + v33 + 4))
    {
      v59 = 0;
      v60 = 0uLL;
      v61 = 1.0;
      v62 = 0.0;
      v63 = 1.0e-17;
      v64 = 1.0e10;
      v65 = 0.0;
      v26.i64[0] = 0;
      v66 = 0.0;
      v67 = 0.0;
      v68 = 0uLL;
      v69 = 0uLL;
      do
      {
        v70 = v35[v59];
        v7.i32[0] = a1->i32[v70];
        v7.i32[1] = v36->i32[v70];
        v7.i32[2] = v37->i32[v70];
        v71 = vmulq_f32(v57, v7);
        v72 = *&v28[4 * v70];
        v73.i32[3] = v38->i32[v70];
        v74 = 1.0 - v72;
        if (v72 < v61)
        {
          v61 = *&v28[4 * v70];
        }

        if (v72 > v65)
        {
          v65 = *&v28[4 * v70];
        }

        v75 = v71.f32[2] + vaddv_f32(*v71.f32);
        *v26.i32 = *v26.i32 + (v74 * v74);
        v66 = v66 + (v74 * v72);
        if (v75 < v64)
        {
          v64 = v75;
        }

        v67 = v67 + (v72 * v72);
        v63 = v63 + v72;
        v76 = vmulq_n_f32(v73, v72);
        v68 = vaddq_f32(v68, v76);
        v7 = vsubq_f32(v73, v76);
        v76.i32[3] = 0;
        if (v75 > v62)
        {
          v62 = v75;
        }

        v60 = vaddq_f32(v60, v7);
        *(v76.i64 + 4) = *&v28[4 * v70];
        v76.f32[0] = 1.0 - v72;
        v69 = vaddq_f32(v69, vmulq_n_f32(v76, v58 * v75));
        ++v59;
      }

      while (v48 != v59);
      v77 = v65 * 0.999;
    }

    else
    {
      v61 = 1.0;
      v67 = 0.0;
      v69.i64[0] = 0;
      v68 = 0uLL;
      v60 = 0uLL;
      v63 = 1.0e-17;
      v66 = 0.0;
      v26.i64[0] = 0;
      v77 = 0.0;
      v64 = 1.0e10;
      v62 = 0.0;
    }

    v78 = vmulq_f32(v53, v60);
    v79 = vmulq_f32(v53, v68);
    v80 = v64 / fmaxf(v62, 1.0e-10);
    v81 = fmaxf(v80, 0.0);
    if (v80 <= 1.0)
    {
      v82 = v81;
    }

    else
    {
      v82 = 1.0;
    }

    v83 = vmulq_n_f32(v57, v62);
    v84 = v83;
    v84.f32[3] = v82;
    *(a6 + 16 * v33) = v84;
    if (v61 >= v77)
    {
      v101 = vdivq_f32(vaddq_f32(v79, v78), _Q21);
      v102 = vceqq_f32(v101, v101);
      *(v39 + 16 * v33) = vbslq_s8(v102, v101, *(v39 + 16 * v33));
      *(v40 + 16 * v33) = vbslq_s8(v102, v101, *(v40 + 16 * v33));
      v83.i32[3] = 1.0;
      goto LABEL_44;
    }

    v85 = v26;
    v85.f32[1] = v66;
    v85.f32[2] = v67;
    _Q19 = vmulq_n_f32(v85, v58);
    v87 = vmulq_n_f32(v53, v67);
    v88 = vmulq_n_f32(v53, v66);
    v89 = vmulq_n_f32(v53, *v26.i32);
    v90 = vsubq_f32(vmulq_f32(v87, v89), vmulq_f32(v88, v88));
    v91 = vdivq_f32(_Q7, v90);
    _S11 = _Q19.i32[2];
    v93 = vmuls_lane_f32(-_Q19.f32[1], *_Q19.f32, 1) + (_Q19.f32[0] * _Q19.f32[2]);
    v94 = vaddq_f32(vmulq_f32(v87, v87), vaddq_f32(vmulq_f32(v89, v89), vmulq_f32(v88, vaddq_f32(v88, v88))));
    __asm { FMLA            S20, S11, V19.S[2] }

    v7 = vmulq_f32(v79, v88);
    v96 = vmulq_f32(vsubq_f32(vmulq_f32(v78, v87), v7), v91);
    v26 = vmulq_f32(vsubq_f32(vmulq_f32(v79, v89), vmulq_f32(v78, v88)), v91);
    v97 = vornq_s8(vmvnq_s8(vcgtq_f32(vmaxq_f32(v90, vsubq_f32(0, v90)), vmulq_f32(v94, v47))), vorrq_s8(vcgtq_f32(v26, v96), vcgeq_f32(v96, v26)));
    *(v39 + 16 * v33) = vbslq_s8(v97, *(v39 + 16 * v33), v96);
    *(v40 + 16 * v33) = vbslq_s8(v97, *(v40 + 16 * v33), v26);
    v98 = (vmuls_lane_f32(-_Q19.f32[1], *v69.f32, 1) + (_Q19.f32[2] * v69.f32[0])) * (1.0 / v93);
    v99 = ((-_Q19.f32[1] * v69.f32[0]) + (_Q19.f32[0] * v69.f32[1])) * (1.0 / v93);
    if (fabsf(v93) > (_S20 * 0.0001) && v98 < v99)
    {
      v83 = vmulq_n_f32(v57, v99);
      v83.f32[3] = v98 / v99;
LABEL_44:
      *(a6 + 16 * v33) = v83;
    }

    if (a1[222].u8[1] | a1[235].u8[9])
    {
      _Q27 = vmulq_n_f32(v53, v63);
      _S23 = v58 * v67;
      v105 = vaddq_f32(v79, v78);
      v105.f32[3] = v79.f32[2] + vaddv_f32(*v79.f32);
      v106 = vmulq_f32(_Q27, _Q27).f32[0];
      __asm
      {
        FMLA            S30, S23, V21.S[2]
        FMLA            S20, S30, V21.S[1]
      }

      v109.f32[0] = vmuls_lane_f32(_Q21.f32[2], *_Q27.f32, 1) * _Q27.f32[0];
      *v110.f32 = vmul_f32(vrev64_s32(*_Q21.f32), *_Q27.f32);
      *v111.f32 = vmul_laneq_f32(*v110.f32, _Q27, 2);
      v112 = vdupq_laneq_s32(_Q21, 2);
      v112.f32[0] = -_Q21.f32[2];
      v112.f32[1] = -_Q21.f32[2];
      v112.f32[2] = -_Q27.f32[2];
      v110.i32[2] = vmuls_lane_f32(_Q21.f32[0], *_Q21.f32, 1);
      v110.i32[3] = v110.i32[2];
      v113 = vmulq_f32(v112, v110);
      v114 = vmulq_f32(_Q27, v113).f32[0];
      _Q20.i32[1] = v109.i32[0];
      _Q20.i64[1] = __PAIR64__(v113.u32[0], v111.u32[0]);
      v109.f32[1] = (-_Q21.f32[2] * v106) + (_S30 * _Q21.f32[0]);
      v109.i64[1] = __PAIR64__(v113.u32[1], v111.u32[1]);
      __asm { FMLA            S27, S23, V21.S[1] }

      v111.f32[2] = (-_Q21.f32[1] * v106) + (_Q27.f32[0] * _Q21.f32[0]);
      v111.i32[3] = v113.i32[2];
      v115 = vmulq_n_f32(v105, 1.0 / (v114 + (_Q20.f32[0] * _Q21.f32[0])));
      v116 = vmulq_f32(_Q20, v115);
      *v116.i8 = vadd_f32(*&vextq_s8(v116, v116, 8uLL), *v116.i8);
      v117 = vmulq_f32(v109, v115);
      *v117.i8 = vadd_f32(*&vextq_s8(v117, v117, 8uLL), *v117.i8);
      v118 = vmulq_f32(v111, v115);
      *v118.i8 = vadd_f32(*&vextq_s8(v118, v118, 8uLL), *v118.i8);
      v119 = vmulq_f32(v113, v115);
      *v119.i8 = vadd_f32(*&vextq_s8(v119, v119, 8uLL), *v119.i8);
      *v115.f32 = vzip1_s32(vpadd_f32(*v116.i8, *v116.i8), vpadd_f32(*v117.i8, *v117.i8));
      v115.i64[1] = __PAIR64__(vpadd_f32(*v119.i8, *v119.i8).u32[0], vpadd_f32(*v118.i8, *v118.i8).u32[0]);
      *(a7 + 16 * v33) = v115;
    }

    ++v33;
    v35 += 216;
  }

  while (v33 != v12);
  return result;
}

void recompute_ideal_colors_2planes(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int8x16_t *a6, float32x4_t *a7, int8x16_t *a8, unsigned int a9)
{
  v148 = *MEMORY[0x1E69E9840];
  v12 = a1[216].u8[0];
  if (!a1[216].i8[0])
  {
    recompute_ideal_colors_2planes();
  }

  v14 = *(a3 + 2);
  if (!*(a3 + 2))
  {
    recompute_ideal_colors_2planes();
  }

  memset(v147, 0, sizeof(v147));
  memset(v146, 0, sizeof(v146));
  if (v14 > 0x20)
  {
    recompute_ideal_colors_2planes();
  }

  v20 = 0;
  v21 = 0;
  v22 = vdupq_n_s32(0x3C800000u);
  do
  {
    v23 = (a4 + v21);
    v24 = vld1_dup_f32(v23);
    v147[v20] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v24))), v22);
    v25 = (a5 + v21);
    v26 = vld1_dup_f32(v25);
    v146[v20] = vmulq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v26))), v22);
    v21 += 4;
    ++v20;
  }

  while (v21 < v14);
  bzero(v145, 0x360uLL);
  bzero(v144, 0x360uLL);
  v32 = *(a3 + 1);
  if (v32 == 1)
  {
    v33 = v147;
    v34 = v146;
  }

  else
  {
    v143 = a7;
    v35 = a8;
    if (v32 >= 3)
    {
      v40 = 0;
      v41 = 0;
      do
      {
        *&v42 = bilinear_infill_vla(a3, v147, v41, *&v27, v28, v29, v30);
        v33 = v145;
        *&v145[v40] = v42;
        *&v27 = bilinear_infill_vla(a3, v146, v41, *&v42, v43, v44, v45);
        v34 = v144;
        *&v144[v40] = v27;
        v41 += 4;
        v40 += 16;
      }

      while (v41 < v12);
    }

    else
    {
      v36 = 0;
      v37 = 0;
      do
      {
        *&v38 = bilinear_infill_vla_2(a3, v147, v37, *&v27, v28);
        v33 = v145;
        *&v145[v36] = v38;
        *&v27 = bilinear_infill_vla_2(a3, v146, v37, *&v38, v39);
        v34 = v144;
        *&v144[v36] = v27;
        v37 += 4;
        v36 += 16;
      }

      while (v37 < v12);
    }

    a8 = v35;
    a7 = v143;
  }

  v46 = *(a2 + 3);
  v47 = a1[221];
  v48 = vdupq_n_s32(0x233877AAu);
  v49 = a1[219];
  v49.i32[3] = 0;
  v50 = vmulq_f32(v49, v49);
  *v50.i8 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.i8);
  v51 = vmulq_n_f32(v47, v46);
  v52 = vdivq_f32(v49, vsqrtq_f32(vdupq_lane_s32(vpadd_f32(*v50.i8, *v50.i8), 0)));
  v53 = vdupq_n_s32(a9);
  v54 = COERCE_FLOAT(a1[221].i64[1]) + vaddv_f32(*v47.f32);
  v55 = 1.0;
  if (*(a2 + 3))
  {
    v56 = vdupq_n_s32(0x233877AAu);
    v57 = 0uLL;
    v58 = 0.0;
    v59 = 1.0e10;
    v60 = vceqq_s32(v53, xmmword_186205980);
    v61 = a1;
    v62 = 1.0;
    v63 = 0.0;
    v64 = 1.0;
    v65 = 0.0;
    v31.i64[0] = 0;
    v66 = 0.0;
    v67 = 0.0;
    v68 = 0.0;
    v69 = 0.0;
    v70 = 0.0;
    v71 = 0uLL;
    v72 = 0uLL;
    do
    {
      v9.i32[0] = v61->i32[0];
      v9.i32[1] = v61[54].i32[0];
      v9.i32[2] = v61[108].i32[0];
      v73 = *v33++;
      *v10.i32 = v73;
      v74 = vmulq_f32(v52, v9);
      v75 = 1.0 - v73;
      if (v73 < v62)
      {
        v62 = *v10.i32;
      }

      v9.i32[3] = v61[162].i32[0];
      v76 = vaddv_f32(*v74.f32);
      v77 = *v34++;
      v11.i32[0] = v77;
      if (*v10.i32 > v63)
      {
        v63 = *v10.i32;
      }

      v68 = v68 + ((1.0 - *v11.i32) * (1.0 - *v11.i32));
      v69 = v69 + ((1.0 - *v11.i32) * *v11.i32);
      v78 = v74.f32[2] + v76;
      v79 = vbslq_s8(v60, vdupq_lane_s32(v11, 0), vdupq_lane_s32(v10, 0));
      v80 = vmulq_f32(v9, v79);
      v71 = vaddq_f32(v71, v80);
      v81 = vsubq_f32(v9, v80);
      if (v78 < v59)
      {
        v59 = v78;
      }

      v31.f32[0] = v31.f32[0] + (v75 * v75);
      v66 = v66 + (v75 * *v10.i32);
      if (v78 > v58)
      {
        v58 = v78;
      }

      v67 = v67 + (*v10.i32 * *v10.i32);
      if (*v11.i32 < v64)
      {
        v64 = *v11.i32;
      }

      v70 = v70 + (*v11.i32 * *v11.i32);
      v57 = vaddq_f32(v57, v81);
      if (*v11.i32 > v65)
      {
        v65 = *v11.i32;
      }

      v9 = vmulq_n_f32(__PAIR64__(v10.u32[0], LODWORD(v75)), v54 * v78);
      v72 = vaddq_f32(v72, v9);
      v56 = vaddq_f32(v56, v79);
      v61 = (v61 + 4);
      --v46;
    }

    while (v46);
    v82 = v65 * 0.999;
  }

  else
  {
    v72.i64[0] = 0;
    v59 = 1.0e10;
    v71 = 0uLL;
    v56 = v48;
    v57 = 0uLL;
    v70 = 0.0;
    v69 = 0.0;
    v68 = 0.0;
    v67 = 0.0;
    v66 = 0.0;
    v31.i64[0] = 0;
    v82 = 0.0;
    v64 = 1.0;
    v58 = 0.0;
  }

  _Q16 = vmaxnmq_f32(v51, v48);
  v84 = vmulq_n_f32(v47, v67);
  v85 = vmulq_f32(v47, v57);
  v86 = vmulq_f32(v47, v71);
  v87 = v59 / fmaxf(v58, 1.0e-10);
  v88 = fmaxf(v87, 0.0);
  if (v87 <= 1.0)
  {
    v55 = v88;
  }

  v89 = vmulq_n_f32(v52, v58);
  v90 = v89;
  v90.f32[3] = v55;
  *a7 = v90;
  __asm { FMOV            V19.4S, #1.0 }

  if (_NF == _VF)
  {
    v111 = vdivq_f32(vaddq_f32(v86, v85), _Q16);
    v112 = vornq_s8(vceqq_s32(v53, xmmword_186205980), vceqq_f32(v111, v111));
    a6[1] = vbslq_s8(v112, a6[1], v111);
    a6[5] = vbslq_s8(v112, a6[5], v111);
    v89.i32[3] = 1.0;
LABEL_42:
    *a7 = v89;
    goto LABEL_43;
  }

  v95 = v31;
  v95.f32[1] = v66;
  v95.f32[2] = v67;
  _Q24 = vmulq_n_f32(v95, v54);
  v97 = vmulq_n_f32(v47, v66);
  v98 = vmulq_n_f32(v47, v31.f32[0]);
  v99 = vsubq_f32(vmulq_f32(v84, v98), vmulq_f32(v97, v97));
  v100 = vdivq_f32(_Q19, v99);
  _S28 = _Q24.i32[2];
  v102 = vmuls_lane_f32(-_Q24.f32[1], *_Q24.f32, 1) + (_Q24.f32[0] * _Q24.f32[2]);
  v103 = vaddq_f32(vmulq_f32(v84, v84), vaddq_f32(vmulq_f32(v98, v98), vmulq_f32(v97, vaddq_f32(v97, v97))));
  __asm { FMLA            S29, S28, V24.S[2] }

  v105 = vmulq_f32(vsubq_f32(vmulq_f32(v85, v84), vmulq_f32(v86, v97)), v100);
  v106 = vmulq_f32(vsubq_f32(vmulq_f32(v86, v98), vmulq_f32(v85, v97)), v100);
  v107 = (vmuls_lane_f32(-_Q24.f32[1], *v72.f32, 1) + (_Q24.f32[2] * v72.f32[0])) * (1.0 / v102);
  v108 = ((-_Q24.f32[1] * v72.f32[0]) + (_Q24.f32[0] * v72.f32[1])) * (1.0 / v102);
  v109 = vorrq_s8(vornq_s8(vmvnq_s8(vorrq_s8(vcgtq_f32(v106, v105), vcgeq_f32(v105, v106))), vcgtq_f32(vmaxq_f32(v99, vsubq_f32(0, v99)), vmulq_f32(v103, vdupq_n_s32(0x38D1B717u)))), vceqq_s32(v53, xmmword_186205980));
  a6[1] = vbslq_s8(v109, a6[1], v105);
  a6[5] = vbslq_s8(v109, a6[5], v106);
  _NF = fabsf(v102) > (_S29 * 0.0001) && v107 < v108;
  if (_NF)
  {
    v89 = vmulq_n_f32(v52, v108);
    v89.f32[3] = v107 / v108;
    goto LABEL_42;
  }

LABEL_43:
  v113 = vmulq_n_f32(v47, v70);
  if (v64 >= v82)
  {
    v123 = vdivq_f32(vaddq_f32(v86, v85), _Q16);
    v124 = vandq_s8(vceqq_f32(v123, v123), vceqq_s32(v53, xmmword_186205980));
    a6[1] = vbslq_s8(v124, v123, a6[1]);
    v122 = vbslq_s8(v124, v123, a6[5]);
  }

  else
  {
    v114 = vmulq_n_f32(v47, v68);
    v115 = vmulq_n_f32(v47, v69);
    v116 = vsubq_f32(vmulq_f32(v113, v114), vmulq_f32(v115, v115));
    v117 = vdivq_f32(_Q19, v116);
    v118 = vaddq_f32(vmulq_f32(v113, v113), vaddq_f32(vmulq_f32(v114, v114), vmulq_f32(v115, vaddq_f32(v115, v115))));
    v119 = vmulq_f32(vsubq_f32(vmulq_f32(v85, v113), vmulq_f32(v86, v115)), v117);
    v120 = vmulq_f32(vsubq_f32(vmulq_f32(v86, v114), vmulq_f32(v85, v115)), v117);
    v121 = vandq_s8(vandq_s8(vorrq_s8(vcgtq_f32(v120, v119), vcgeq_f32(v119, v120)), vceqq_s32(v53, xmmword_186205980)), vcgtq_f32(vmaxq_f32(v116, vsubq_f32(0, v116)), vmulq_f32(v118, vdupq_n_s32(0x38D1B717u))));
    a6[1] = vbslq_s8(v121, v119, a6[1]);
    v122 = vbslq_s8(v121, v120, a6[5]);
  }

  a6[5] = v122;
  if (a1[222].u8[1] | a1[235].u8[9])
  {
    v125 = vmulq_f32(v47, v56);
    v126 = vmulq_f32(v47, vbslq_s8(vceqq_s32(v53, xmmword_186205980), v113, v84));
    _S1 = v126.f32[2] + vaddv_f32(*v126.f32);
    v128 = vaddq_f32(v86, v85);
    v128.f32[3] = v86.f32[2] + vaddv_f32(*v86.f32);
    v129 = vmulq_f32(v125, v125).f32[0];
    __asm
    {
      FMLA            S7, S1, V16.S[2]
      FMLA            S18, S7, V16.S[1]
    }

    *v132.f32 = vmul_f32(vrev64_s32(*_Q16.f32), *v125.f32);
    *v133.f32 = vmul_laneq_f32(*v132.f32, v125, 2);
    v134 = vdupq_laneq_s32(_Q16, 2);
    v134.f32[0] = -_Q16.f32[2];
    v134.f32[1] = -_Q16.f32[2];
    v134.f32[2] = -v125.f32[2];
    v132.i32[2] = vmuls_lane_f32(_Q16.f32[0], *_Q16.f32, 1);
    v135.f32[0] = vmuls_lane_f32(_Q16.f32[2], *v125.f32, 1) * v125.f32[0];
    v132.i32[3] = v132.i32[2];
    v136 = vmulq_f32(v134, v132);
    _Q18.i32[1] = v135.i32[0];
    _Q18.i64[1] = __PAIR64__(v136.u32[0], v133.u32[0]);
    v135.f32[1] = (-_Q16.f32[2] * v129) + (_S7 * _Q16.f32[0]);
    v135.i64[1] = __PAIR64__(v136.u32[1], v133.u32[1]);
    __asm { FMLA            S6, S1, V16.S[1] }

    v133.f32[2] = (-_Q16.f32[1] * v129) + (_S6 * _Q16.f32[0]);
    v133.i32[3] = v136.i32[2];
    v138 = vmulq_n_f32(v128, 1.0 / (vmulq_f32(v125, v136).f32[0] + (_Q18.f32[0] * _Q16.f32[0])));
    v139 = vmulq_f32(_Q18, v138);
    *v139.i8 = vadd_f32(*&vextq_s8(v139, v139, 8uLL), *v139.i8);
    v140 = vmulq_f32(v135, v138);
    *v140.i8 = vadd_f32(*&vextq_s8(v140, v140, 8uLL), *v140.i8);
    v141 = vmulq_f32(v133, v138);
    *v141.i8 = vadd_f32(*&vextq_s8(v141, v141, 8uLL), *v141.i8);
    v142 = vmulq_f32(v136, v138);
    *v142.i8 = vadd_f32(*&vextq_s8(v142, v142, 8uLL), *v142.i8);
    *v139.i8 = vzip1_s32(vpadd_f32(*v139.i8, *v139.i8), vpadd_f32(*v140.i8, *v140.i8));
    v139.i64[1] = __PAIR64__(vpadd_f32(*v142.i8, *v142.i8).u32[0], vpadd_f32(*v141.i8, *v141.i8).u32[0]);
    *a8 = v139;
  }
}

void compute_ideal_colors_and_weights_1plane()
{
  {
    mask(vmask4)::shift = xmmword_186205980;
  }
}

{
  __assert_rtn("compute_ideal_colors_and_weights_4_comp", "astcenc_ideal_endpoints_and_weights.cpp", 596, "!astc::isnan(ei.weight_error_scale[tix])");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_4_comp", "astcenc_ideal_endpoints_and_weights.cpp", 531, "partition_count > 0");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_4_comp", "astcenc_ideal_endpoints_and_weights.cpp", 530, "texel_count > 0");
}

void compute_ideal_colors_and_weights_3_comp()
{
  __assert_rtn("compute_ideal_colors_and_weights_3_comp", "astcenc_ideal_endpoints_and_weights.cpp", 471, "!astc::isnan(ei.weight_error_scale[tix])");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_3_comp", "astcenc_ideal_endpoints_and_weights.cpp", 365, "texel_count > 0");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_3_comp", "astcenc_ideal_endpoints_and_weights.cpp", 362, "partition_count > 0");
}

void compute_ideal_colors_and_weights_2planes()
{
  __assert_rtn("compute_ideal_colors_and_weights_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 680, "uses_alpha");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 640, "plane2_component < BLOCK_MAX_COMPONENTS");
}

void block_size_descriptor::get_partition_info()
{
  __assert_rtn("get_partition_info", "astcenc_internal.h", 709, "index == result.partition_index");
}

{
  __assert_rtn("get_partition_info", "astcenc_internal.h", 707, "packed_index != BLOCK_BAD_PARTITIONING && packed_index < this->partitioning_count_all[partition_count - 1]");
}

void compute_ideal_colors_and_weights_2_comp()
{
  __assert_rtn("compute_ideal_colors_and_weights_2_comp", "astcenc_ideal_endpoints_and_weights.cpp", 253, "component1 == 1 && component2 == 2");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_2_comp", "astcenc_ideal_endpoints_and_weights.cpp", 322, "!astc::isnan(ei.weight_error_scale[tix])");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_2_comp", "astcenc_ideal_endpoints_and_weights.cpp", 229, "texel_count > 0");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_2_comp", "astcenc_ideal_endpoints_and_weights.cpp", 226, "partition_count > 0");
}

void compute_ideal_colors_and_weights_1_comp()
{
  __assert_rtn("compute_ideal_colors_and_weights_1_comp", "astcenc_ideal_endpoints_and_weights.cpp", 190, "!astc::isnan(ei.weight_error_scale[tix])");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_1_comp", "astcenc_ideal_endpoints_and_weights.cpp", 139, "component == 3");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_1_comp", "astcenc_ideal_endpoints_and_weights.cpp", 118, "texel_count > 0");
}

{
  __assert_rtn("compute_ideal_colors_and_weights_1_comp", "astcenc_ideal_endpoints_and_weights.cpp", 115, "partition_count > 0");
}

void compute_ideal_weights_for_decimation()
{
  __assert_rtn("compute_ideal_weights_for_decimation", "astcenc_ideal_endpoints_and_weights.cpp", 951, "max_texel_count > 0");
}

{
  __assert_rtn("compute_ideal_weights_for_decimation", "astcenc_ideal_endpoints_and_weights.cpp", 893, "max_texel_count > 0");
}

{
  __assert_rtn("compute_ideal_weights_for_decimation", "astcenc_ideal_endpoints_and_weights.cpp", 854, "weight_count > 0");
}

{
  __assert_rtn("compute_ideal_weights_for_decimation", "astcenc_ideal_endpoints_and_weights.cpp", 853, "texel_count > 0");
}

void recompute_ideal_colors_1plane()
{
  __assert_rtn("recompute_ideal_colors_1plane", "astcenc_ideal_endpoints_and_weights.cpp", 1220, "texel_count > 0");
}

{
  __assert_rtn("recompute_ideal_colors_1plane", "astcenc_ideal_endpoints_and_weights.cpp", 1172, "partition_count > 0");
}

{
  __assert_rtn("recompute_ideal_colors_1plane", "astcenc_ideal_endpoints_and_weights.cpp", 1171, "total_texel_count > 0");
}

{
  __assert_rtn("recompute_ideal_colors_1plane", "astcenc_ideal_endpoints_and_weights.cpp", 1170, "weight_count > 0");
}

void recompute_ideal_colors_2planes()
{
  __assert_rtn("recompute_ideal_colors_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 1400, "weight_count <= BLOCK_MAX_WEIGHTS_2PLANE");
}

{
  __assert_rtn("recompute_ideal_colors_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 1395, "weight_count > 0");
}

{
  __assert_rtn("recompute_ideal_colors_2planes", "astcenc_ideal_endpoints_and_weights.cpp", 1394, "total_texel_count > 0");
}

unsigned __int8 *symbolic_to_physical(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (v5 == 2)
  {
    v19 = 0;
    *a3 = -516;
    v20 = a3 + 9;
    do
    {
      *(v20 - 1) = *&a2[v19 + 20];
      v20 += 2;
      v19 += 4;
    }

    while (v19 != 16);
    return result;
  }

  if (v5 == 1)
  {
    v21 = 0;
    *a3 = -4;
    v22 = a3 + 9;
    do
    {
      *(v22 - 1) = *&a2[v21 + 20];
      v22 += 2;
      v21 += 4;
    }

    while (v21 != 16);
    return result;
  }

  if (!*a2)
  {
    symbolic_to_physical();
  }

  v6 = a2[1];
  v70 = 0uLL;
  v7 = *&result[2 * *(a2 + 2) + 11300848];
  if (v7 == 0xFFFF || *(result + 7) <= v7)
  {
    symbolic_to_physical();
  }

  v9 = result[129888 * result[6 * *&result[2 * *(a2 + 2) + 11300848] + 11304946] + 594];
  v10 = result[6 * *&result[2 * *(a2 + 2) + 11300848] + 11304947];
  v11 = -1.0;
  if (v10 <= 0x14)
  {
    v11 = flt_18622B664[result[6 * *&result[2 * *(a2 + 2) + 11300848] + 11304947]];
  }

  v12 = result[6 * *&result[2 * *(a2 + 2) + 11300848] + 11304949];
  v13 = &quant_and_xfer_tables + 226 * result[6 * *&result[2 * *(a2 + 2) + 11300848] + 11304947];
  v14 = v9 << (v12 & 1);
  ise_sequence_bitcount = get_ise_sequence_bitcount(v14, v10);
  memset(v69, 0, sizeof(v69));
  if (v12)
  {
    if (v9)
    {
      v23 = v13 + 32;
      v24 = a2 + 84;
      v25 = &v69[0].i8[1];
      do
      {
        v26 = ((v11 * vcvts_n_f32_u32(*(v24 - 32), 6uLL)) + 0.5);
        v27 = *v24++;
        *(v25 - 1) = v23[v26];
        *v25 = v23[((v11 * vcvts_n_f32_u32(v27, 6uLL)) + 0.5)];
        v25 += 2;
        --v9;
      }

      while (v9);
    }
  }

  else if (v9)
  {
    v16 = a2 + 52;
    v17 = v69;
    do
    {
      v18 = *v16++;
      v17->i8[0] = v13[((v11 * vcvts_n_f32_u32(v18, 6uLL)) + 0.5) + 32];
      v17 = (v17 + 1);
      --v9;
    }

    while (v9);
  }

  encode_ise(v10, v14, v69, &v70, 0);
  v28 = vrev64q_s8(v70);
  *a3 = vrbitq_s8(vextq_s8(v28, v28, 8uLL));
  v29 = *(a2 + 2);
  *a3 = v29;
  v30 = (v29 >> 8) & 7;
  v31 = (8 * v6 + 24) & 0x18;
  *(a3 + 1) = *(a3 + 1) & 0xE0 | v31 | BYTE1(v29) & 7;
  v32 = *(a3 + 2);
  v33 = 128 - ise_sequence_bitcount;
  if (v6 >= 2)
  {
    v34 = *(a2 + 3);
    *(a3 + 1) = v31 | (32 * v34) | v30;
    v35 = (v34 >> 3) & 7;
    v36 = v32 & 0xF8 | (v34 >> 3) & 7;
    *(a3 + 2) = v36;
    v37 = (*(a2 + 3) >> 3) & 0x78;
    *(a3 + 2) = v36 & 0x87 | (*(a2 + 3) >> 3) & 0x78;
    v38 = *(a3 + 3);
    v39 = a2 + 8;
    if (a2[2])
    {
      v40 = *v39;
      *(a3 + 2) = v37 | v35;
      *(a3 + 3) = v38 & 0xE0 | (2 * (v40 & 0xF));
      if ((v12 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v54 = 4;
      v55 = v6;
      v56 = a2 + 8;
      do
      {
        v57 = *v56++;
        v58 = v57 >> 2;
        if ((v57 >> 2) < v54)
        {
          v54 = v58;
        }

        --v55;
      }

      while (v55);
      v59 = 2;
      if (v54 == 3)
      {
        v60 = 2;
      }

      else
      {
        v60 = v54;
      }

      v61 = v60 + 1;
      v62 = v6;
      v63 = a2 + 8;
      do
      {
        v64 = *v63++;
        v61 |= ((v64 >> 2) - v60) << v59++;
        --v62;
      }

      while (v62);
      v65 = v6 + 2;
      v66 = v6;
      do
      {
        v67 = *v39++;
        v61 |= (v67 & 3) << v65;
        v65 += 2;
        --v66;
      }

      while (v66);
      v33 -= 3 * v6 - 4;
      *(a3 + 2) = v35 | (v61 << 7) | v37;
      *(a3 + 3) = v38 & 0xE0 | (v61 >> 1) & 0x1F;
      *(a3 + (v33 >> 3)) = *(a3 + (v33 >> 3)) & ~(~(-1 << (3 * v6 - 4)) << (v33 & 7)) | (((v61 >> 6) & ~(-1 << (3 * v6 - 4))) << (v33 & 7));
      if ((v12 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_30;
  }

  v41 = a2[8];
  *(a3 + 1) = v31 | (32 * v41) | v30;
  *(a3 + 2) = v32 & 0xFE | ((v41 & 8) != 0);
  if (v12)
  {
LABEL_30:
    *(a3 + ((v33 - 2) >> 3)) = *(a3 + ((v33 - 2) >> 3)) & ~(3 << ((v33 - 2) & 7)) | ((a2[3] & 3) << ((v33 - 2) & 7));
  }

LABEL_31:
  memset(v68, 0, sizeof(v68));
  v42 = *(a2 + 3);
  v43 = a2[1];
  if (a2[1])
  {
    v44 = 0;
    v45 = 0;
    v46 = a2 + 20;
    do
    {
      v47 = (a2[v44 + 8] >> 1) & 0x7E;
      if (v47 > 6)
      {
        symbolic_to_physical();
      }

      v48 = v47 + 2;
      v49 = v68 + v45;
      v50 = v48;
      v51 = v46;
      do
      {
        v52 = *v51++;
        *v49++ = color_uquant_to_scrambled_pquant_tables[256 * v42 - 1024 + v52];
        --v50;
      }

      while (v50);
      v45 += v48;
      ++v44;
      v46 += 8;
    }

    while (v44 != v43);
  }

  else
  {
    v45 = 0;
  }

  if (v43 == 1)
  {
    v53 = 17;
  }

  else
  {
    v53 = 29;
  }

  return encode_ise(v42, v45, v68, a3, v53);
}

void symbolic_to_physical()
{
  __assert_rtn("symbolic_to_physical", "astcenc_symbolic_physical.cpp", 107, "scb.block_type != SYM_BTYPE_ERROR");
}

{
  __assert_rtn("get_block_mode", "astcenc_internal.h", 638, "packed_index != BLOCK_BAD_BLOCK_MODE && packed_index < this->block_mode_count_all");
}

{
  __assert_rtn("symbolic_to_physical", "astcenc_symbolic_physical.cpp", 276, "vals <= 8");
}

int8x16_t compute_avgs_and_dirs_4_comp(_WORD *a1, int8x16_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (!*a1)
  {
    compute_avgs_and_dirs_4_comp();
  }

  memset(v39, 0, sizeof(v39));
  compute_partition_averages_rgba(a1, a2, v39);
  v12 = 0;
  v13 = (a1 + 112);
  v14 = a1 + 2;
  do
  {
    v15 = *(v14 + v12);
    if (!*(v14 + v12))
    {
      compute_avgs_and_dirs_4_comp();
    }

    v16 = v39[v12];
    v17 = a3 + 32 * v12;
    *v17 = v16;
    v18 = 0uLL;
    v19 = v13;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    do
    {
      v23 = *v19++;
      v24.i32[0] = a2->i32[v23];
      v24.i32[1] = a2[54].i32[v23];
      v24.i32[2] = a2[108].i32[v23];
      v24.i32[3] = a2[162].i32[v23];
      v25 = vsubq_f32(v24, v16);
      v26 = vmovn_s32(vcgtzq_f32(v25));
      v18 = vaddq_f32(v18, vandq_s8(v25, vmovl_s16(vdup_lane_s16(v26, 0))));
      v20 = vaddq_f32(v20, vandq_s8(v25, vmovl_s16(vdup_lane_s16(v26, 1))));
      v21 = vaddq_f32(v21, vandq_s8(v25, vmovl_s16(vdup_lane_s16(v26, 2))));
      v22 = vaddq_f32(v22, vandq_s8(v25, vmovl_s16(vdup_lane_s16(v26, 3))));
      --v15;
    }

    while (v15);
    v27 = vmulq_f32(v18, v18);
    *v27.i8 = vadd_f32(*&vextq_s8(v27, v27, 8uLL), *v27.i8);
    v28 = vdupq_lane_s32(vpadd_f32(*v27.i8, *v27.i8), 0);
    v29 = vmulq_f32(v20, v20);
    *v29.i8 = vadd_f32(*&vextq_s8(v29, v29, 8uLL), *v29.i8);
    v30 = vdupq_lane_s32(vpadd_f32(*v29.i8, *v29.i8), 0);
    v31 = vmulq_f32(v21, v21);
    *v31.i8 = vadd_f32(*&vextq_s8(v31, v31, 8uLL), *v31.i8);
    v32 = vdupq_lane_s32(vpadd_f32(*v31.i8, *v31.i8), 0);
    v33 = vmulq_f32(v22, v22);
    *v33.i8 = vadd_f32(*&vextq_s8(v33, v33, 8uLL), *v33.i8);
    v34 = vcgtq_f32(v30, v28);
    v35 = vbslq_s8(v34, v20, v18);
    v36 = vbslq_s8(v34, v30, v28);
    v37 = vcgtq_f32(v32, v36);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v33.i8, *v33.i8), 0), vbslq_s8(v37, v32, v36)), v22, vbslq_s8(v37, v21, v35));
    *(v17 + 16) = result;
    ++v12;
    v13 += 216;
  }

  while (v12 != v8);
  return result;
}

float32x4_t compute_partition_averages_rgba(_BYTE *a1, int8x16_t *a2, float32x4_t *a3)
{
  v3 = a2[216].u8[0];
  if (!a2[216].i8[0])
  {
    compute_partition_averages_rgba();
  }

  v4 = *a1;
  switch(v4)
  {
    case 1:
      result = a2[219];
      *a3 = result;
      break;
    case 2:
      v42 = 0;
      v43 = vdupq_n_s32(v3);
      v44 = xmmword_186205980;
      v45 = 0uLL;
      v46.i64[0] = 0x400000004;
      v46.i64[1] = 0x400000004;
      v47 = a2;
      v48 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      do
      {
        v51 = &a1[v42 + 8];
        v52 = vld1_dup_f32(v51);
        v53 = vcgtq_s32(v43, v44);
        v44 = vaddq_s32(v44, v46);
        v54 = vandq_s8(vmovl_s16(vceqz_s16(*&vmovl_u8(v52))), v53);
        v50 = vaddq_f32(v50, vandq_s8(*v47, v54));
        v49 = vaddq_f32(v49, vandq_s8(v47[54], v54));
        v48 = vaddq_f32(v48, vandq_s8(v47[108], v54));
        v45 = vaddq_f32(v45, vandq_s8(v47[162], v54));
        v42 += 4;
        ++v47;
      }

      while (v42 < v3);
      v55 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.i8);
      v56 = vadd_f32(*&vextq_s8(v49, v49, 8uLL), *v49.i8);
      v57 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), *v48.i8);
      v58 = vpadd_f32(v57, v57);
      v59 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.i8);
      *v60.f32 = vzip1_s32(vpadd_f32(v55, v55), vpadd_f32(v56, v56));
      v60.i64[1] = __PAIR64__(vpadd_f32(v59, v59).u32[0], v58.u32[0]);
      v61 = vsubq_f32(vmulq_n_f32(a2[219], v3), v60);
      v58.i8[0] = a1[4];
      *v58.i32 = v58.u32[0];
      v62 = vdivq_f32(v60, vdupq_lane_s32(v58, 0));
      *a3 = v62;
      v62.i8[0] = a1[5];
      v62.f32[0] = v62.u32[0];
      result = vdivq_f32(v61, vdupq_lane_s32(*v62.f32, 0));
      a3[1] = result;
      break;
    case 3:
      v5 = 0;
      v6 = vdupq_n_s32(v3);
      v7 = 0uLL;
      v8.i64[0] = 0x400000004;
      v8.i64[1] = 0x400000004;
      v9 = 0uLL;
      v10 = xmmword_186205980;
      v11 = a2;
      v12 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v17 = 0uLL;
      do
      {
        v18 = &a1[v5 + 8];
        v19 = vld1_dup_f32(v18);
        v20 = vmovl_u8(v19).u64[0];
        v21 = vcgtq_s32(v6, v10);
        v10 = vaddq_s32(v10, v8);
        v22 = vandq_s8(vmovl_s16(vceqz_s16(v20)), v21);
        v23 = vandq_s8(vmovl_s16(vceq_s16(v20, 0x1000100010001)), v21);
        v12 = vaddq_f32(v12, vandq_s8(*v11, v22));
        v16 = vaddq_f32(v16, vandq_s8(*v11, v23));
        v24 = v11[54];
        v13 = vaddq_f32(v13, vandq_s8(v24, v22));
        v17 = vaddq_f32(v17, vandq_s8(v24, v23));
        v25 = v11[108];
        v14 = vaddq_f32(v14, vandq_s8(v25, v22));
        v9 = vaddq_f32(v9, vandq_s8(v25, v23));
        v26 = v11[162];
        v15 = vaddq_f32(v15, vandq_s8(v26, v22));
        v7 = vaddq_f32(v7, vandq_s8(v26, v23));
        v5 += 4;
        ++v11;
      }

      while (v5 < v3);
      v27 = vadd_f32(*&vextq_s8(v12, v12, 8uLL), *v12.i8);
      v28 = vadd_f32(*&vextq_s8(v13, v13, 8uLL), *v13.i8);
      v29 = vadd_f32(*&vextq_s8(v14, v14, 8uLL), *v14.i8);
      v30 = vadd_f32(*&vextq_s8(v15, v15, 8uLL), *v15.i8);
      *v31.f32 = vzip1_s32(vpadd_f32(v27, v27), vpadd_f32(v28, v28));
      v31.i32[2] = vpadd_f32(v29, v29).u32[0];
      v31.i32[3] = vpadd_f32(v30, v30).u32[0];
      v32 = vadd_f32(*&vextq_s8(v16, v16, 8uLL), *v16.i8);
      v33 = vadd_f32(*&vextq_s8(v17, v17, 8uLL), *v17.i8);
      v34 = vadd_f32(*&vextq_s8(v9, v9, 8uLL), *v9.i8);
      v35 = vpadd_f32(v34, v34);
      v36 = vadd_f32(*&vextq_s8(v7, v7, 8uLL), *v7.i8);
      *v37.f32 = vzip1_s32(vpadd_f32(v32, v32), vpadd_f32(v33, v33));
      v37.i32[2] = v35.i32[0];
      v37.i32[3] = vpadd_f32(v36, v36).u32[0];
      v38 = vsubq_f32(vsubq_f32(vmulq_n_f32(a2[219], v3), v31), v37);
      v35.i8[0] = a1[4];
      *v35.i32 = v35.u32[0];
      v39 = vdivq_f32(v31, vdupq_lane_s32(v35, 0));
      *a3 = v39;
      v39.i8[0] = a1[5];
      v39.f32[0] = v39.u32[0];
      v40 = vdivq_f32(v37, vdupq_lane_s32(*v39.f32, 0));
      a3[1] = v40;
      v40.i8[0] = a1[6];
      v40.f32[0] = v40.u32[0];
      result = vdivq_f32(v38, vdupq_lane_s32(*v40.f32, 0));
      a3[2] = result;
      break;
    default:
      v63 = 0;
      v64 = vdupq_n_s32(v3);
      v65 = 0uLL;
      v66.i64[0] = 0x400000004;
      v66.i64[1] = 0x400000004;
      v67 = xmmword_186205980;
      v68 = 0uLL;
      v69 = a2;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v77 = 0uLL;
      v78 = 0uLL;
      v79 = 0uLL;
      do
      {
        v80 = &a1[v63 + 8];
        v81 = vld1_dup_f32(v80);
        v82 = vmovl_u8(v81).u64[0];
        v83 = vcgtq_s32(v64, v67);
        v67 = vaddq_s32(v67, v66);
        v84 = vandq_s8(vmovl_s16(vceqz_s16(v82)), v83);
        v85 = vandq_s8(vmovl_s16(vceq_s16(v82, 0x1000100010001)), v83);
        v86 = vandq_s8(vmovl_s16(vceq_s16(v82, 0x2000200020002)), v83);
        v65 = vaddq_f32(v65, vandq_s8(*v69, v84));
        v72 = vaddq_f32(v72, vandq_s8(*v69, v85));
        v76 = vaddq_f32(v76, vandq_s8(*v69, v86));
        v87 = v69[54];
        v68 = vaddq_f32(v68, vandq_s8(v87, v84));
        v73 = vaddq_f32(v73, vandq_s8(v87, v85));
        v77 = vaddq_f32(v77, vandq_s8(v87, v86));
        v88 = v69[108];
        v70 = vaddq_f32(v70, vandq_s8(v88, v84));
        v74 = vaddq_f32(v74, vandq_s8(v88, v85));
        v78 = vaddq_f32(v78, vandq_s8(v88, v86));
        v89 = v69[162];
        v71 = vaddq_f32(v71, vandq_s8(v89, v84));
        v75 = vaddq_f32(v75, vandq_s8(v89, v85));
        v79 = vaddq_f32(v79, vandq_s8(v89, v86));
        v63 += 4;
        ++v69;
      }

      while (v63 < v3);
      v90 = vadd_f32(*&vextq_s8(v65, v65, 8uLL), *v65.i8);
      v91 = vadd_f32(*&vextq_s8(v68, v68, 8uLL), *v68.i8);
      v92 = vadd_f32(*&vextq_s8(v70, v70, 8uLL), *v70.i8);
      v93 = vadd_f32(*&vextq_s8(v71, v71, 8uLL), *v71.i8);
      *v94.f32 = vzip1_s32(vpadd_f32(v90, v90), vpadd_f32(v91, v91));
      v94.i32[2] = vpadd_f32(v92, v92).u32[0];
      v94.i32[3] = vpadd_f32(v93, v93).u32[0];
      v95 = vadd_f32(*&vextq_s8(v72, v72, 8uLL), *v72.i8);
      v96 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.i8);
      v97 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.i8);
      v98 = vadd_f32(*&vextq_s8(v75, v75, 8uLL), *v75.i8);
      *v99.f32 = vzip1_s32(vpadd_f32(v95, v95), vpadd_f32(v96, v96));
      v99.i32[2] = vpadd_f32(v97, v97).u32[0];
      v99.i32[3] = vpadd_f32(v98, v98).u32[0];
      v100 = vadd_f32(*&vextq_s8(v76, v76, 8uLL), *v76.i8);
      v101 = vadd_f32(*&vextq_s8(v77, v77, 8uLL), *v77.i8);
      v102 = vadd_f32(*&vextq_s8(v78, v78, 8uLL), *v78.i8);
      v103 = vpadd_f32(v102, v102);
      v104 = vadd_f32(*&vextq_s8(v79, v79, 8uLL), *v79.i8);
      *v105.f32 = vzip1_s32(vpadd_f32(v100, v100), vpadd_f32(v101, v101));
      v105.i32[2] = v103.i32[0];
      v105.i32[3] = vpadd_f32(v104, v104).u32[0];
      v106 = vsubq_f32(vsubq_f32(vsubq_f32(vmulq_n_f32(a2[219], v3), v94), v99), v105);
      v103.i8[0] = a1[4];
      *v103.i32 = v103.u32[0];
      v107 = vdivq_f32(v94, vdupq_lane_s32(v103, 0));
      *a3 = v107;
      v107.i8[0] = a1[5];
      v107.f32[0] = v107.u32[0];
      v108 = vdivq_f32(v99, vdupq_lane_s32(*v107.f32, 0));
      a3[1] = v108;
      v108.i8[0] = a1[6];
      v108.f32[0] = v108.u32[0];
      v109 = vdivq_f32(v105, vdupq_lane_s32(*v108.f32, 0));
      a3[2] = v109;
      v109.i8[0] = a1[7];
      v109.f32[0] = v109.u32[0];
      result = vdivq_f32(v106, vdupq_lane_s32(*v109.f32, 0));
      a3[3] = result;
      break;
  }

  return result;
}

int8x16_t compute_avgs_and_dirs_3_comp(_BYTE *a1, int8x16_t *a2, int a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  compute_partition_averages_rgba(a1, a2, &v40);
  v9 = &a2[54];
  if (a3 == 2)
  {
    v15.i64[0] = v40.i64[0];
    v16.i64[0] = v41.i64[0];
    v15.i64[1] = v40.u32[3];
    v16.i64[1] = v41.u32[3];
    v17.i64[0] = v42.i64[0];
    v18.i64[0] = v43.i64[0];
    v17.i64[1] = v42.u32[3];
    v18.i64[1] = v43.u32[3];
    v40 = v15;
    v41 = v16;
    v42 = v17;
    v43 = v18;
    v12 = 162;
    v10 = &a2[54];
    goto LABEL_7;
  }

  v10 = &a2[108];
  if (a3 == 1)
  {
    v13.i64[0] = __PAIR64__(v40.u32[2], v40.u32[0]);
    v13.i64[1] = v40.u32[3];
    v14.i64[0] = __PAIR64__(v41.u32[2], v41.u32[0]);
    v14.i64[1] = v41.u32[3];
    v40 = v13;
    v41 = v14;
    v13.i64[0] = __PAIR64__(v42.u32[2], v42.u32[0]);
    v13.i64[1] = v42.u32[3];
    v14.i64[0] = __PAIR64__(v43.u32[2], v43.u32[0]);
    v14.i64[1] = v43.u32[3];
    v42 = v13;
    v43 = v14;
    v12 = 162;
LABEL_7:
    v9 = a2;
    goto LABEL_9;
  }

  if (a3)
  {
    v40.i32[3] = 0;
    v41.i32[3] = 0;
    v12 = 108;
    v10 = &a2[54];
    v9 = a2;
    v42.i32[3] = 0;
    v43.i32[3] = 0;
  }

  else
  {
    v11 = vextq_s8(0, 0, 0xCuLL);
    v40 = vextq_s8(v40, v11, 4uLL);
    v41 = vextq_s8(v41, v11, 4uLL);
    v42 = vextq_s8(v42, v11, 4uLL);
    v43 = vextq_s8(v43, v11, 4uLL);
    v12 = 162;
  }

LABEL_9:
  v19 = *a1;
  if (!*a1)
  {
    compute_avgs_and_dirs_3_comp();
  }

  v20 = 0;
  v21 = a1 + 224;
  v22 = a1 + 4;
  v23 = &a2[v12];
  do
  {
    v24 = v22[v20];
    if (!v22[v20])
    {
      compute_avgs_and_dirs_3_comp();
    }

    v25 = *(&v40 + v20);
    v26 = a4 + 32 * v20;
    *v26 = v25;
    v27 = 0uLL;
    v28 = v21;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      v31 = *v28++;
      v8.i32[0] = v9->i32[v31];
      v8.i32[1] = v10->i32[v31];
      v8.i32[2] = v23->i32[v31];
      v32 = vsubq_f32(v8, v25);
      v33 = vmovn_s32(vcgtzq_f32(v32));
      v27 = vaddq_f32(v27, vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 0))));
      v29 = vaddq_f32(v29, vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 1))));
      v8 = vandq_s8(v32, vmovl_s16(vdup_lane_s16(v33, 2)));
      v30 = vaddq_f32(v30, v8);
      --v24;
    }

    while (v24);
    v34 = vmulq_f32(v27, v27);
    *v34.i8 = vadd_f32(*&vextq_s8(v34, v34, 8uLL), *v34.i8);
    v35 = vdupq_lane_s32(vpadd_f32(*v34.i8, *v34.i8), 0);
    v36 = vmulq_f32(v29, v29);
    *v36.i8 = vadd_f32(*&vextq_s8(v36, v36, 8uLL), *v36.i8);
    v8 = vdupq_lane_s32(vpadd_f32(*v36.i8, *v36.i8), 0);
    v37 = vmulq_f32(v30, v30);
    *v37.i8 = vadd_f32(*&vextq_s8(v37, v37, 8uLL), *v37.i8);
    v38 = vcgtq_f32(v8, v35);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v37.i8, *v37.i8), 0), vbslq_s8(v38, v8, v35)), v30, vbslq_s8(v38, v29, v27));
    *(v26 + 16) = result;
    ++v20;
    v21 += 216;
  }

  while (v20 != v19);
  return result;
}

int8x16_t compute_avgs_and_dirs_3_comp_rgb(unsigned __int16 *a1, uint64_t a2, uint64_t a3, unsigned __int32 *a4, unsigned __int32 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, int8x16_t a13)
{
  v123 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  if (!*a1)
  {
    compute_avgs_and_dirs_3_comp_rgb();
  }

  v14 = 0uLL;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v15 = *(a2 + 3456);
  if (!*(a2 + 3456))
  {
    compute_avgs_and_dirs_3_comp_rgb();
  }

  switch(v13)
  {
    case 1:
      v63 = *(a2 + 3504);
      v63.i32[3] = 0;
      v119 = v63;
      break;
    case 2:
      v45 = 0;
      v46 = vdupq_n_s32(v15);
      v47 = xmmword_186205980;
      v48.i64[0] = 0x400000004;
      v48.i64[1] = 0x400000004;
      v49 = a2;
      v50 = 0uLL;
      v51 = 0uLL;
      do
      {
        v52 = &a1[v45 / 2 + 4];
        v53 = vld1_dup_f32(v52);
        v54 = vcgtq_s32(v46, v47);
        v47 = vaddq_s32(v47, v48);
        v55 = vandq_s8(vmovl_s16(vceqz_s16(*&vmovl_u8(v53))), v54);
        v51 = vaddq_f32(v51, vandq_s8(*v49, v55));
        v50 = vaddq_f32(v50, vandq_s8(v49[54], v55));
        v14 = vaddq_f32(v14, vandq_s8(v49[108], v55));
        v45 += 4;
        ++v49;
      }

      while (v45 < v15);
      v56 = *(a2 + 3504);
      v56.i32[3] = 0;
      *v57.f32 = vadd_f32(*&vextq_s8(v51, v51, 8uLL), *v51.i8);
      v57.i32[0] = vpadd_f32(*v57.f32, *v57.f32).u32[0];
      v58 = vadd_f32(*&vextq_s8(v50, v50, 8uLL), *v50.i8);
      v59 = vpadd_f32(v58, v58);
      a13 = vextq_s8(v14, v14, 8uLL);
      v60 = vadd_f32(*a13.i8, *v14.i8);
      v57.i32[1] = v59.i32[0];
      v57.i64[1] = vpadd_f32(v60, v60).u32[0];
      v61 = vsubq_f32(vmulq_n_f32(v56, v15), v57);
      v59.i8[0] = *(a1 + 4);
      *v59.i32 = v59.u32[0];
      v62 = vdivq_f32(v57, vdupq_lane_s32(v59, 0));
      v57.i8[0] = *(a1 + 5);
      v57.f32[0] = v57.u32[0];
      v119 = v62;
      v120 = vdivq_f32(v61, vdupq_lane_s32(*v57.f32, 0));
      break;
    case 3:
      v16 = 0;
      v17 = vdupq_n_s32(v15);
      v18.i64[0] = 0x400000004;
      v18.i64[1] = 0x400000004;
      v19 = xmmword_186205980;
      v20 = a2;
      v21 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      do
      {
        v26 = &a1[v16 / 2 + 4];
        v27 = vld1_dup_f32(v26);
        v28 = vmovl_u8(v27).u64[0];
        v29 = vcgtq_s32(v17, v19);
        v19 = vaddq_s32(v19, v18);
        v30 = vandq_s8(vmovl_s16(vceqz_s16(v28)), v29);
        v31 = vandq_s8(vmovl_s16(vceq_s16(v28, 0x1000100010001)), v29);
        v24 = vaddq_f32(v24, vandq_s8(*v20, v30));
        v22 = vaddq_f32(v22, vandq_s8(*v20, v31));
        v32 = *(v20 + 864);
        v25 = vaddq_f32(v25, vandq_s8(v32, v30));
        v21 = vaddq_f32(v21, vandq_s8(v32, v31));
        v33 = *(v20 + 1728);
        v23 = vaddq_f32(v23, vandq_s8(v33, v30));
        v14 = vaddq_f32(v14, vandq_s8(v33, v31));
        v16 += 4;
        v20 += 16;
      }

      while (v16 < v15);
      v34 = *(a2 + 3504);
      v34.i32[3] = 0;
      *v35.f32 = vadd_f32(*&vextq_s8(v24, v24, 8uLL), *v24.i8);
      v36 = vadd_f32(*&vextq_s8(v25, v25, 8uLL), *v25.i8);
      v37 = vadd_f32(*&vextq_s8(v23, v23, 8uLL), *v23.i8);
      v35.i32[0] = vpadd_f32(*v35.f32, *v35.f32).u32[0];
      v35.i32[1] = vpadd_f32(v36, v36).u32[0];
      v35.i64[1] = vpadd_f32(v37, v37).u32[0];
      v38 = vmulq_n_f32(v34, v15);
      *v39.f32 = vadd_f32(*&vextq_s8(v22, v22, 8uLL), *v22.i8);
      v39.i32[0] = vpadd_f32(*v39.f32, *v39.f32).u32[0];
      v40 = vadd_f32(*&vextq_s8(v21, v21, 8uLL), *v21.i8);
      v41 = vpadd_f32(v40, v40);
      a13 = vextq_s8(v14, v14, 8uLL);
      v42 = vadd_f32(*a13.i8, *v14.i8);
      v39.i32[1] = v41.i32[0];
      v39.i64[1] = vpadd_f32(v42, v42).u32[0];
      v43 = vsubq_f32(vsubq_f32(v38, v35), v39);
      v41.i8[0] = *(a1 + 4);
      *v41.i32 = v41.u32[0];
      v44 = vdivq_f32(v35, vdupq_lane_s32(v41, 0));
      v38.i8[0] = *(a1 + 5);
      v38.f32[0] = v38.u32[0];
      v119 = v44;
      v120 = vdivq_f32(v39, vdupq_lane_s32(*v38.f32, 0));
      v44.i8[0] = *(a1 + 6);
      v44.f32[0] = v44.u32[0];
      v121 = vdivq_f32(v43, vdupq_lane_s32(*v44.f32, 0));
      break;
    default:
      v64 = 0;
      v65 = vdupq_n_s32(v15);
      v66 = 0uLL;
      v67.i64[0] = 0x400000004;
      v67.i64[1] = 0x400000004;
      v68 = xmmword_186205980;
      v69 = 0uLL;
      v70 = a2;
      v71 = 0uLL;
      v72 = 0uLL;
      a13 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      do
      {
        v76 = &a1[v64 / 2 + 4];
        v77 = vld1_dup_f32(v76);
        v78 = vmovl_u8(v77).u64[0];
        v79 = vcgtq_s32(v65, v68);
        v68 = vaddq_s32(v68, v67);
        v80 = vandq_s8(vmovl_s16(vceqz_s16(v78)), v79);
        v81 = vandq_s8(vmovl_s16(vceq_s16(v78, 0x1000100010001)), v79);
        v82 = vandq_s8(vmovl_s16(vceq_s16(v78, 0x2000200020002)), v79);
        v66 = vaddq_f32(v66, vandq_s8(*v70, v80));
        v72 = vaddq_f32(v72, vandq_s8(*v70, v81));
        v74 = vaddq_f32(v74, vandq_s8(*v70, v82));
        v83 = *(v70 + 864);
        v69 = vaddq_f32(v69, vandq_s8(v83, v80));
        a13 = vaddq_f32(a13, vandq_s8(v83, v81));
        v75 = vaddq_f32(v75, vandq_s8(v83, v82));
        v84 = *(v70 + 1728);
        v71 = vaddq_f32(v71, vandq_s8(v84, v80));
        v73 = vaddq_f32(v73, vandq_s8(v84, v81));
        v14 = vaddq_f32(v14, vandq_s8(v84, v82));
        v64 += 4;
        v70 += 16;
      }

      while (v64 < v15);
      v85 = *(a2 + 3504);
      v85.i32[3] = 0;
      *v86.f32 = vadd_f32(*&vextq_s8(v66, v66, 8uLL), *v66.i8);
      v87 = vadd_f32(*&vextq_s8(v69, v69, 8uLL), *v69.i8);
      v88 = vadd_f32(*&vextq_s8(v71, v71, 8uLL), *v71.i8);
      v86.i32[0] = vpadd_f32(*v86.f32, *v86.f32).u32[0];
      v86.i32[1] = vpadd_f32(v87, v87).u32[0];
      v86.i64[1] = vpadd_f32(v88, v88).u32[0];
      *v89.f32 = vadd_f32(*&vextq_s8(v72, v72, 8uLL), *v72.i8);
      v89.i32[0] = vpadd_f32(*v89.f32, *v89.f32).u32[0];
      v90 = vadd_f32(*&vextq_s8(a13, a13, 8uLL), *a13.i8);
      v91 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.i8);
      v89.i32[1] = vpadd_f32(v90, v90).u32[0];
      v89.i64[1] = vpadd_f32(v91, v91).u32[0];
      *v92.f32 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.i8);
      v92.i32[0] = vpadd_f32(*v92.f32, *v92.f32).u32[0];
      v93 = vadd_f32(*&vextq_s8(v75, v75, 8uLL), *v75.i8);
      v94 = vpadd_f32(v93, v93);
      v95 = vextq_s8(v14, v14, 8uLL).u64[0];
      v96 = vadd_f32(v95, *v14.i8);
      v92.i32[1] = v94.i32[0];
      v92.i64[1] = vpadd_f32(v96, v96).u32[0];
      v97 = vsubq_f32(vsubq_f32(vsubq_f32(vmulq_n_f32(v85, v15), v86), v89), v92);
      v94.i8[0] = *(a1 + 4);
      *v94.i32 = v94.u32[0];
      v98 = vdivq_f32(v86, vdupq_lane_s32(v94, 0));
      v95.i8[0] = *(a1 + 5);
      v95.f32[0] = v95.u32[0];
      v119 = v98;
      v120 = vdivq_f32(v89, vdupq_lane_s32(v95, 0));
      v98.i8[0] = *(a1 + 6);
      v98.f32[0] = v98.u32[0];
      v99 = vdivq_f32(v92, vdupq_lane_s32(*v98.f32, 0));
      v92.i8[0] = *(a1 + 7);
      v92.f32[0] = v92.u32[0];
      v121 = v99;
      v122 = vdivq_f32(v97, vdupq_lane_s32(*v92.f32, 0));
      break;
  }

  v100 = 0;
  v101 = a1 + 112;
  v102 = a1 + 2;
  do
  {
    v103 = *(v102 + v100);
    if (!*(v102 + v100))
    {
      compute_avgs_and_dirs_3_comp_rgb();
    }

    v104 = *(&v119 + v100);
    v105 = a3 + 32 * v100;
    *v105 = v104;
    v106 = 0uLL;
    v107 = v101;
    v108 = 0uLL;
    v109 = 0uLL;
    do
    {
      v110 = *v107;
      v107 = (v107 + 1);
      a13.i32[0] = *(a2 + 4 * v110);
      a13.i32[1] = *(a2 + 864 + 4 * v110);
      a13.i32[2] = *(a2 + 1728 + 4 * v110);
      v111 = vsubq_f32(a13, v104);
      v112 = vmovn_s32(vcgtzq_f32(v111));
      v106 = vaddq_f32(v106, vandq_s8(v111, vmovl_s16(vdup_lane_s16(v112, 0))));
      v108 = vaddq_f32(v108, vandq_s8(v111, vmovl_s16(vdup_lane_s16(v112, 1))));
      a13 = vandq_s8(v111, vmovl_s16(vdup_lane_s16(v112, 2)));
      v109 = vaddq_f32(v109, a13);
      --v103;
    }

    while (v103);
    v113 = vmulq_f32(v106, v106);
    *v113.i8 = vadd_f32(*&vextq_s8(v113, v113, 8uLL), *v113.i8);
    v114 = vdupq_lane_s32(vpadd_f32(*v113.i8, *v113.i8), 0);
    v115 = vmulq_f32(v108, v108);
    *v115.i8 = vadd_f32(*&vextq_s8(v115, v115, 8uLL), *v115.i8);
    a13 = vdupq_lane_s32(vpadd_f32(*v115.i8, *v115.i8), 0);
    v116 = vmulq_f32(v109, v109);
    *v116.i8 = vadd_f32(*&vextq_s8(v116, v116, 8uLL), *v116.i8);
    v117 = vcgtq_f32(a13, v114);
    result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(vpadd_f32(*v116.i8, *v116.i8), 0), vbslq_s8(v117, a13, v114)), v109, vbslq_s8(v117, v108, v106));
    *(v105 + 16) = result;
    ++v100;
    v101 += 108;
  }

  while (v100 != v13);
  return result;
}

unsigned __int32 *compute_avgs_and_dirs_2_comp(_WORD *a1, int32x4_t *a2, int a3, int a4, uint64_t a5, double a6, int8x16_t a7, double a8, int8x16_t a9)
{
  if (!a3 && a4 == 1)
  {
    v9 = a2[219];
    v9.i64[1] = 0;
    v10 = 54;
LABEL_7:
    v11 = a2;
    goto LABEL_11;
  }

  if (!a3 && a4 == 2)
  {
    a7 = vzip2q_s32(0, 0);
    v9 = vuzp1q_s32(a2[219], a7);
    v10 = 108;
    goto LABEL_7;
  }

  if (a3 != 1 || a4 != 2)
  {
    compute_avgs_and_dirs_2_comp();
  }

  a7.i64[1] = 0;
  v9 = vextq_s8(a2[219], 0, 4uLL).u64[0];
  v11 = a2 + 54;
  v10 = 108;
LABEL_11:
  v12 = *a1;
  if (!*a1)
  {
    compute_avgs_and_dirs_2_comp();
  }

  v13 = 0;
  v14 = &a2[v10];
  v15 = (a1 + 112);
  v16 = a1 + 2;
  do
  {
    v17 = *(v16 + v13);
    if (!*(v16 + v13))
    {
      compute_avgs_and_dirs_2_comp();
    }

    if (v12 != 1)
    {
      v18 = 0uLL;
      v19 = *(v16 + v13);
      v20 = v15;
      do
      {
        v21 = *v20++;
        a7.i32[0] = v11->i32[v21];
        a7.i32[1] = v14->i32[v21];
        v18 = vaddq_f32(v18, a7);
        --v19;
      }

      while (v19);
      *a7.i32 = v17;
      v9 = vdivq_f32(v18, vdupq_lane_s32(*a7.i8, 0));
    }

    v22 = 0;
    v23 = a5 + 32 * v13;
    *v23 = v9;
    v24 = 0uLL;
    v25 = 0uLL;
    do
    {
      v26 = v15[v22];
      result = v11 + v26;
      a9.i32[0] = *result;
      a9.i32[1] = v14->i32[v26];
      v28 = vsubq_f32(a9, v9);
      v29 = vmovn_s32(vcgtzq_f32(v28));
      v24 = vaddq_f32(v24, vandq_s8(v28, vmovl_s16(vdup_lane_s16(v29, 0))));
      a9 = vandq_s8(v28, vmovl_s16(vdup_lane_s16(v29, 1)));
      v25 = vaddq_f32(v25, a9);
      ++v22;
    }

    while (v17 != v22);
    v30 = vmulq_f32(v24, v24);
    *v30.i8 = vadd_f32(*&vextq_s8(v30, v30, 8uLL), *v30.i8);
    v31 = vmulq_f32(v25, v25);
    *v31.i8 = vadd_f32(*&vextq_s8(v31, v31, 8uLL), *v31.i8);
    a9 = vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v31.i8, *v31.i8), vpadd_f32(*v30.i8, *v30.i8)), 0));
    a7 = vbslq_s8(a9, v25, v24);
    *(v23 + 16) = a7;
    ++v13;
    v15 += 216;
  }

  while (v13 != v12);
  return result;
}

float32x2_t compute_error_squared_rgba(_WORD *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7)
{
  v8 = *a1;
  if (!*a1)
  {
    compute_error_squared_rgba();
  }

  v9 = 0;
  v10 = a1 + 112;
  v11 = a1 + 2;
  v12 = a2 + 54;
  v13 = a2 + 108;
  v14 = a2 + 162;
  v15 = 0uLL;
  v16 = vdupq_n_s32(0x501502F9u);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  v18 = vdupq_n_s32(0xD01502F9);
  v19 = &unk_1EA8DB000;
  v20 = xmmword_186205980;
  v21.i64[0] = 0x400000004;
  v21.i64[1] = 0x400000004;
  v22 = &unk_18622B000;
  v23 = 0uLL;
  do
  {
    v24 = *(v11 + v9);
    if (!*(v11 + v9))
    {
      compute_error_squared_rgba();
    }

    v25 = (a4 + 32 * v9);
    v26 = *v25;
    v27 = v25[1];
    v28 = (a3 + 32 * v9);
    v29 = *v28;
    v30 = *(v28 + 1);
    {
      v85 = a7;
      v77 = a6;
      v84 = a5;
      v76 = a4;
      v83 = a3;
      v75 = a2;
      v82 = v8;
      v74 = v9;
      v81 = v10;
      v73 = v11;
      v80 = v12;
      v72 = v13;
      v78 = v24;
      v79 = v14;
      v70 = v16;
      v71 = v15;
      v68 = v20;
      v69 = v18;
      v67 = v29;
      v66 = v26;
      compute_ideal_colors_and_weights_1plane();
      v26 = v66;
      v29 = v67;
      v20 = v68;
      v21.i64[0] = 0x400000004;
      v21.i64[1] = 0x400000004;
      v18 = v69;
      v16 = v70;
      v17.i64[0] = 0x100000001;
      v17.i64[1] = 0x100000001;
      v15 = v71;
      v24 = v78;
      v14 = v79;
      v22 = &unk_18622B000;
      v19 = &unk_1EA8DB000;
      v13 = v72;
      v11 = v73;
      v12 = v80;
      v10 = v81;
      v9 = v74;
      a2 = v75;
      v8 = v82;
      a3 = v83;
      a4 = v76;
      a6 = v77;
      a5 = v84;
      a7 = v85;
    }

    if (vaddvq_s32(vshlq_u32(vandq_s8(vceqzq_f32(v26), v17), v19[116])) != 15)
    {
      compute_error_squared_rgba();
    }

    v31 = 0;
    v32 = vdupq_lane_s32(*v29.i8, 0);
    v33 = vdupq_lane_s32(*v29.i8, 1);
    v34 = vdupq_laneq_s32(v29, 2);
    v35 = vdupq_laneq_s32(v29, 3);
    v36 = a2[221];
    v37 = v20;
    v38 = v18;
    v39 = v16;
    v40 = vdupq_n_s32(v24);
    do
    {
      v7.i32[0] = *&v10[v31 / 2];
      v41 = vmovl_u16(*&vmovl_u8(*v7.f32));
      v42 = v41.i32[1];
      v43 = v41.i32[2];
      v44 = v41.i32[3];
      v45 = v41.i32[0];
      v41.i32[0] = a2->i32[v41.u32[0]];
      v46 = &v12->i32[v41.u32[1]];
      v41.i32[1] = a2->i32[v41.u32[1]];
      v47.i32[0] = v12->i32[v45];
      v47.i32[1] = *v46;
      v41.i32[2] = a2->i32[v41.u32[2]];
      v48 = &v12->i32[v41.u32[3]];
      v47.i32[2] = v12->i32[v43];
      v41.i32[3] = a2->i32[v41.u32[3]];
      v49.i32[0] = v13->i32[v45];
      v47.i32[3] = *v48;
      v49.i32[1] = v13->i32[v42];
      v49.i32[2] = v13->i32[v43];
      v50.i32[0] = v14->i32[v45];
      v49.i32[3] = v13->i32[v44];
      v50.i32[1] = v14->i32[v42];
      v50.i32[2] = v14->i32[v43];
      v50.i32[3] = v14->i32[v44];
      v51 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v41, v30.f32[0]), vmulq_lane_f32(v47, *v30.f32, 1)), vmulq_laneq_f32(v49, v30, 2)), vmulq_laneq_f32(v50, v30, 3));
      v39 = vminnmq_f32(v51, v39);
      v38 = vmaxnmq_f32(v51, v38);
      v52 = vaddq_f32(vsubq_f32(v32, v41), vmulq_n_f32(v51, v30.f32[0]));
      v53 = vaddq_f32(vsubq_f32(v33, v47), vmulq_lane_f32(v51, *v30.f32, 1));
      v54 = vaddq_f32(vsubq_f32(v34, v49), vmulq_laneq_f32(v51, v30, 2));
      v55 = vaddq_f32(vsubq_f32(v35, v50), vmulq_laneq_f32(v51, v30, 3));
      v56 = vcgtq_s32(v40, v37);
      v57 = vaddq_f32(vmulq_f32(v52, vmulq_n_f32(v52, v36.f32[0])), vmulq_f32(v53, vmulq_lane_f32(v53, *v36.f32, 1)));
      v58 = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v41, v27.f32[0]), vmulq_lane_f32(v47, *v27.f32, 1)), vmulq_laneq_f32(v49, v27, 2)), vmulq_laneq_f32(v50, v27, 3));
      v59 = vsubq_f32(vmulq_n_f32(v58, v27.f32[0]), v41);
      v60 = vsubq_f32(vmulq_lane_f32(v58, *v27.f32, 1), v47);
      v61 = vsubq_f32(vmulq_laneq_f32(v58, v27, 2), v49);
      v62 = vsubq_f32(vmulq_laneq_f32(v58, v27, 3), v50);
      v23 = vaddq_f32(v23, vandq_s8(vaddq_f32(vmulq_f32(v55, vmulq_laneq_f32(v55, v36, 3)), vaddq_f32(vmulq_f32(v54, vmulq_laneq_f32(v54, v36, 2)), v57)), v56));
      v7 = vandq_s8(vaddq_f32(vmulq_f32(v62, vmulq_laneq_f32(v62, v36, 3)), vaddq_f32(vmulq_f32(v61, vmulq_laneq_f32(v61, v36, 2)), vaddq_f32(vmulq_f32(v59, vmulq_n_f32(v59, v36.f32[0])), vmulq_f32(v60, vmulq_lane_f32(v60, *v36.f32, 1))))), v56);
      v15 = vaddq_f32(v15, v7);
      v37 = vaddq_s32(v37, v21);
      v31 += 4;
    }

    while (v31 < v24);
    *(a5 + 4 * v9++) = fmaxf(vmaxvq_f32(v38) - vminvq_f32(v39), v22[359]);
    v10 += 108;
  }

  while (v9 != v8);
  v63 = vadd_f32(*&vextq_s8(v23, v23, 8uLL), *v23.i8);
  *a6 = vpadd_f32(v63, v63).u32[0];
  v64 = vadd_f32(*&vextq_s8(v15, v15, 8uLL), *v15.i8);
  result = vpadd_f32(v64, v64);
  *a7 = result.i32[0];
  return result;
}

float32x2_t compute_error_squared_rgb(_WORD *a1, float32x4_t *a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v6 = *a1;
  if (!*a1)
  {
    compute_error_squared_rgb();
  }

  v7 = 0;
  v8 = a1 + 112;
  v9 = a1 + 2;
  v10 = a2 + 54;
  v11 = a2 + 108;
  v12 = 0uLL;
  v13 = vdupq_n_s32(0x501502F9u);
  v14.i64[0] = 0x100000001;
  v14.i64[1] = 0x100000001;
  v15 = vdupq_n_s32(0xD01502F9);
  v16 = &unk_1EA8DB000;
  v17 = xmmword_186205980;
  v18.i64[0] = 0x400000004;
  v18.i64[1] = 0x400000004;
  v19 = &unk_18622B000;
  v20 = 0uLL;
  do
  {
    v21 = *(v9 + v7);
    if (!*(v9 + v7))
    {
      compute_error_squared_rgb();
    }

    v22 = a3 + 144 * v7;
    v23 = *(v22 + 64);
    v24 = *(v22 + 80);
    v25 = *(v22 + 96);
    v26 = *(v22 + 112);
    {
      v74 = a3;
      v75 = a5;
      v68 = a2;
      v69 = a4;
      v73 = v6;
      v67 = v7;
      v72 = v8;
      v66 = v9;
      v71 = v10;
      v65 = v11;
      v76 = a3 + 144 * v7;
      v70 = v21;
      v63 = v13;
      v64 = v12;
      v61 = v17;
      v62 = v15;
      v59 = v24;
      v60 = v20;
      v58 = v23;
      v57 = v25;
      compute_ideal_colors_and_weights_1plane();
      v25 = v57;
      v23 = v58;
      v24 = v59;
      v20 = v60;
      v17 = v61;
      v18.i64[0] = 0x400000004;
      v18.i64[1] = 0x400000004;
      v15 = v62;
      v13 = v63;
      v14.i64[0] = 0x100000001;
      v14.i64[1] = 0x100000001;
      v12 = v64;
      v21 = v70;
      v10 = v71;
      a5 = v75;
      v22 = v76;
      v19 = &unk_18622B000;
      v16 = &unk_1EA8DB000;
      v11 = v65;
      v9 = v66;
      v8 = v72;
      v6 = v73;
      v7 = v67;
      a2 = v68;
      a4 = v69;
      a3 = v74;
    }

    if (vaddvq_s32(vshlq_u32(vandq_s8(vceqzq_f32(v25), v14), v16[116])) != 15)
    {
      compute_error_squared_rgb();
    }

    v27 = 0;
    v28 = vdupq_lane_s32(*v23.i8, 0);
    v29 = vdupq_lane_s32(*v23.i8, 1);
    v30 = vdupq_laneq_s32(v23, 2);
    v31 = a2[221];
    v32 = v17;
    v33 = v15;
    v34 = v13;
    v35 = vdupq_n_s32(v21);
    do
    {
      v5.i32[0] = *&v8[v27 / 2];
      v36 = vmovl_u16(*&vmovl_u8(*v5.f32));
      v37 = v36.i32[2];
      v38 = v36.i32[1];
      v39 = v36.i32[3];
      v40 = v36.i32[0];
      v36.i32[0] = a2->i32[v36.u32[0]];
      v36.i32[1] = a2->i32[v36.u32[1]];
      v41.i32[0] = v10->i32[v40];
      v36.i32[2] = a2->i32[v36.u32[2]];
      v41.i32[1] = v10->i32[v38];
      v42 = &v10->i32[v36.u32[3]];
      v36.i32[3] = a2->i32[v36.u32[3]];
      v41.i32[2] = v10->i32[v37];
      v41.i32[3] = *v42;
      v43.i32[0] = v11->i32[v40];
      v43.i32[1] = v11->i32[v38];
      v43.i32[2] = v11->i32[v37];
      v43.i32[3] = v11->i32[v39];
      v44 = vaddq_f32(vaddq_f32(vmulq_n_f32(v36, v24.f32[0]), vmulq_lane_f32(v41, *v24.f32, 1)), vmulq_laneq_f32(v43, v24, 2));
      v34 = vminnmq_f32(v44, v34);
      v33 = vmaxnmq_f32(v44, v33);
      v45 = vaddq_f32(vsubq_f32(v28, v36), vmulq_n_f32(v44, v24.f32[0]));
      v46 = vaddq_f32(vsubq_f32(v29, v41), vmulq_lane_f32(v44, *v24.f32, 1));
      v47 = vaddq_f32(vsubq_f32(v30, v43), vmulq_laneq_f32(v44, v24, 2));
      v48 = vcgtq_s32(v35, v32);
      v49 = vaddq_f32(vmulq_f32(v45, vmulq_n_f32(v45, v31.f32[0])), vmulq_f32(v46, vmulq_lane_f32(v46, *v31.f32, 1)));
      v50 = vaddq_f32(vaddq_f32(vmulq_n_f32(v36, v26.f32[0]), vmulq_lane_f32(v41, *v26.f32, 1)), vmulq_laneq_f32(v43, v26, 2));
      v51 = vsubq_f32(vmulq_n_f32(v50, v26.f32[0]), v36);
      v52 = vsubq_f32(vmulq_lane_f32(v50, *v26.f32, 1), v41);
      v53 = vsubq_f32(vmulq_laneq_f32(v50, v26, 2), v43);
      v20 = vaddq_f32(v20, vandq_s8(vaddq_f32(vmulq_f32(v47, vmulq_laneq_f32(v47, v31, 2)), v49), v48));
      v5 = vandq_s8(vaddq_f32(vmulq_f32(v53, vmulq_laneq_f32(v53, v31, 2)), vaddq_f32(vmulq_f32(v51, vmulq_n_f32(v51, v31.f32[0])), vmulq_f32(v52, vmulq_lane_f32(v52, *v31.f32, 1)))), v48);
      v12 = vaddq_f32(v12, v5);
      v32 = vaddq_s32(v32, v18);
      v27 += 4;
    }

    while (v27 < v21);
    *(v22 + 128) = fmaxf(vmaxvq_f32(v33) - vminvq_f32(v34), v19[359]);
    ++v7;
    v8 += 108;
  }

  while (v7 != v6);
  v54 = vadd_f32(*&vextq_s8(v20, v20, 8uLL), *v20.i8);
  *a4 = vpadd_f32(v54, v54).u32[0];
  v55 = vadd_f32(*&vextq_s8(v12, v12, 8uLL), *v12.i8);
  result = vpadd_f32(v55, v55);
  *a5 = result.i32[0];
  return result;
}

void compute_avgs_and_dirs_4_comp()
{
  __assert_rtn("compute_avgs_and_dirs_4_comp", "astcenc_averages_and_directions.cpp", 404, "texel_count > 0");
}

{
  __assert_rtn("compute_avgs_and_dirs_4_comp", "astcenc_averages_and_directions.cpp", 394, "partition_count > 0");
}

void compute_avgs_and_dirs_3_comp()
{
  __assert_rtn("compute_avgs_and_dirs_3_comp", "astcenc_averages_and_directions.cpp", 519, "texel_count > 0");
}

{
  __assert_rtn("compute_avgs_and_dirs_3_comp", "astcenc_averages_and_directions.cpp", 513, "partition_count > 0");
}

void compute_avgs_and_dirs_3_comp_rgb()
{
  __assert_rtn("compute_avgs_and_dirs_3_comp_rgb", "astcenc_averages_and_directions.cpp", 584, "texel_count > 0");
}

{
  __assert_rtn("compute_partition_averages_rgb", "astcenc_averages_and_directions.cpp", 54, "texel_count > 0");
}

{
  __assert_rtn("compute_avgs_and_dirs_3_comp_rgb", "astcenc_averages_and_directions.cpp", 574, "partition_count > 0");
}

void compute_avgs_and_dirs_2_comp()
{
  __assert_rtn("compute_avgs_and_dirs_2_comp", "astcenc_averages_and_directions.cpp", 659, "component1 == 1 && component2 == 2");
}

{
  __assert_rtn("compute_avgs_and_dirs_2_comp", "astcenc_averages_and_directions.cpp", 674, "texel_count > 0");
}

{
  __assert_rtn("compute_avgs_and_dirs_2_comp", "astcenc_averages_and_directions.cpp", 668, "partition_count > 0");
}

void compute_error_squared_rgba()
{
  __assert_rtn("compute_error_squared_rgba", "astcenc_averages_and_directions.cpp", 764, "all(l_samec.amod == vfloat4(0.0f))");
}

{
  __assert_rtn("compute_error_squared_rgba", "astcenc_averages_and_directions.cpp", 746, "texel_count > 0");
}

{
  __assert_rtn("compute_error_squared_rgba", "astcenc_averages_and_directions.cpp", 733, "partition_count > 0");
}

void compute_error_squared_rgb()
{
  __assert_rtn("compute_error_squared_rgb", "astcenc_averages_and_directions.cpp", 879, "all(l_samec.amod == vfloat4(0.0f))");
}

{
  __assert_rtn("compute_error_squared_rgb", "astcenc_averages_and_directions.cpp", 861, "texel_count > 0");
}

{
  __assert_rtn("compute_error_squared_rgb", "astcenc_averages_and_directions.cpp", 851, "partition_count > 0");
}

unsigned __int8 *compress_block(int *a1, uint64_t a2, uint64_t a3, float32x4_t *a4)
{
  v7 = a1;
  v254 = *MEMORY[0x1E69E9840];
  v8 = 30720.0;
  if (!*(a2 + 3769))
  {
    v8 = 65535.0;
  }

  if (*(a2 + 3500) == v8)
  {
    v9 = *(a2 + 3532);
    v180 = (a2 + 3552);
    if (v9 == v8)
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a2 + 3552);
    }

    if ((*(a2 + 3552) & (v9 == v8)) != 0)
    {
      v11 = 0.66667;
    }

    else
    {
      v11 = 1.0;
    }
  }

  else
  {
    v180 = (a2 + 3552);
    v10 = *(a2 + 3552);
    v11 = 1.0;
  }

  v12 = *(a1 + 14);
  v13 = *a1;
  v232 = 0;
  v230 = 0u;
  v231 = 0u;
  v228 = 0u;
  v229 = 0u;
  memset(v227, 0, sizeof(v227));
  v178 = a1[11];
  v225 = *(a1 + 6);
  v226 = a1[14];
  v223 = *(a1 + 9);
  v224 = a1[20];
  v14 = *(a2 + 3488);
  v15 = *(a2 + 3520);
  {
    v204 = v15;
    v205 = v14;
    compute_ideal_colors_and_weights_1plane();
    v15 = v204;
    v14 = v205;
  }

  v16 = vceqq_f32(v14, v15);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v16, v17), mask(vmask4)::shift)) == 15)
  {
    BYTE1(v227[0]) = 0;
    v18 = *(a2 + 3472);
    if ((v13 & 0xFFFFFFFE) == 2)
    {
      v19 = vmovl_u16(vcvt_f16_f32(v18));
      v20 = 1;
    }

    else
    {
      __asm { FMOV            V1.4S, #1.0 }

      v30 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(v18, 0), _Q1), vdupq_n_s32(0x477FFF00u));
      _Q1.i64[0] = 0x3F0000003F000000;
      _Q1.i64[1] = 0x3F0000003F000000;
      v19 = vcvtq_s32_f32(vaddq_f32(v30, _Q1));
      v20 = 2;
    }

    LOBYTE(v227[0]) = v20;
    *(&v227[1] + 4) = v19;
    v31 = v12;
    v32 = a3;
    return symbolic_to_physical(v31, v227, v32);
  }

  if (v10)
  {
    v21 = 0.95238;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = *(a2 + 3536);
  v23 = vextq_s8(v22, v22, 8uLL).u64[0];
  *v22.i8 = vadd_f32(v23, *v22.i8);
  v23.i8[0] = v12->i8[3];
  v24 = *(v7 + 21) * (v23.u32[0] * vpadd_f32(*v22.i8, *v22.i8).f32[0]);
  LODWORD(v227[1]) = 1900671690;
  LOBYTE(v227[0]) = 0;
  v222 = xmmword_18622EEE0;
  v220 = *(v7 + 23);
  v219 = 0;
  v221 = 0;
  v218[0] = 1.0 / *(v7 + 22);
  v218[1] = 1.0;
  if ((atomic_load_explicit(byte_1ED56A258, memory_order_acquire) & 1) == 0)
  {
    compress_block(v7 + 22);
  }

  v191 = a2;
  v177 = a3;
  v25 = *(v7 + 26) < 0.85 || v12->u8[2] != 1;
  v33 = v21 * (v11 * v24);
  v183 = v12 + 706559;
  v184 = v12;
  v34 = *&v222;
  *v206 = v7;
  do
  {
    v35 = v25;
    v36 = v33 * v218[v25];
    v37 = compress_symbolic_block_for_partition_1plane(v7, v12, v191, !v25, 1u, 0, v227, a4, v36 * *&_MergedGlobals_11, 11);
    v40 = v12[706303].u16[WORD2(v227[0])];
    if (v40 == 0xFFFF || v12[1].i32[3] <= v40)
    {
      symbolic_to_physical();
    }

    if (v37 < v36)
    {
      goto LABEL_132;
    }

    if (v34 >= v37)
    {
      v34 = v37;
    }

    v25 = 1;
    v7 = *v206;
  }

  while (!v35);
  v179 = v183->u8[6 * v12[706303].u16[WORD2(v227[0])] + 3];
  *&v222 = v34;
  v41 = v12->u8[3];
  if (!v12->i8[3])
  {
    compress_block();
  }

  v42 = v191;
  v43 = vadd_f32(*&vextq_s8(*(v191 + 3536), *(v191 + 3536), 8uLL), *(v191 + 3536));
  v44 = 0.25 * vpadd_f32(v43, v43).f32[0];
  if (v44 < 0.0)
  {
    compress_block();
  }

  v45 = 0uLL;
  _D4 = 0;
  v47 = 0.0;
  _D6 = 0;
  v49.i64[0] = 0;
  v38.i64[0] = 0;
  do
  {
    v47 = v44 + v47;
    v50 = v42[432];
    _Q19.i32[0] = v42[648];
    _D20.i32[0] = v42[216];
    _D20.i32[1] = *v42++;
    *_Q21.f32 = vmul_n_f32(_D20, v44);
    __asm { FMLA            S2, S17, V21.S[1] }

    _D6 = vadd_f32(_D6, *_Q21.f32);
    *v49.f32 = vmla_f32(*v49.f32, *_Q21.f32, _D20);
    v54 = _Q19;
    v54.i32[1] = v50;
    _D20 = vmul_n_f32(*v54.i8, v44);
    __asm { FMLA            S1, S19, V20.S[1] }

    _Q19.i32[1] = v50;
    _Q21.i64[1] = _Q21.i64[0];
    v45 = vmlaq_f32(v45, _Q21, vzip1q_s32(_Q19, _Q19));
    _D4 = vadd_f32(_D4, _D20);
    *v38.i8 = vmla_f32(*v38.i8, _D20, *v54.i8);
    --v41;
  }

  while (v41);
  v57 = 1.0 / fmaxf(v47, 0.0000001);
  *v58.f32 = vneg_f32(_D6);
  *v54.i8 = vneg_f32(_D4);
  *v59.f32 = vmul_n_f32(_D6, v57);
  _S19 = v59.i32[1];
  v59.i64[1] = v59.i64[0];
  __asm { FMLS            S2, S19, V6.S[0] }

  v58.i64[1] = v58.i64[0];
  v49.i64[1] = v49.i64[0];
  v62 = vmlaq_f32(v49, v59, v58);
  v63 = vmul_n_f32(_D4, v57);
  _S7 = v63.i32[1];
  __asm { FMLS            S1, S7, V4.S[0] }

  *v38.i8 = vmls_f32(*v38.i8, v63, _D4);
  v66 = _S2 * (1.0 / sqrtf(vmuls_lane_f32(v62.f32[0], *v62.f32, 1)));
  v67 = vsqrtq_f32(vmulq_f32(v62, vzip1q_s32(v38, v38)));
  __asm { FMOV            V5.4S, #1.0 }

  v174 = _Q5;
  v69 = vmulq_f32(vmlaq_f32(v45, v59, vzip1q_s32(v54, v54)), vdivq_f32(_Q5, v67));
  v70 = _S1 * (1.0 / sqrtf(vmuls_lane_f32(*v38.i32, *v38.i8, 1)));
  v71 = vmovn_s32(vmvnq_s8(vceqq_f32(v69, v69)));
  v72 = fabsf(v66);
  v73 = fabsf(v69.f32[3]);
  if (v71.i8[6])
  {
    v73 = 1.0;
  }

  if (v72 >= v73)
  {
    v72 = v73;
  }

  v74 = fabsf(v69.f32[1]);
  if (v71.i8[2])
  {
    v74 = 1.0;
  }

  if (v72 >= v74)
  {
    v72 = v74;
  }

  v75 = fabsf(v69.f32[2]);
  if (v71.i8[4])
  {
    v75 = 1.0;
  }

  if (v72 >= v75)
  {
    v72 = v75;
  }

  v76 = fabsf(v69.f32[0]);
  if (v71.i8[0])
  {
    v76 = 1.0;
  }

  if (v72 < v76)
  {
    v76 = v72;
  }

  v77 = fabsf(v70);
  if (v76 >= v77)
  {
    v78 = v77;
  }

  else
  {
    v78 = v76;
  }

  v79 = v179;
  if (v179 >= 11)
  {
    v79 = 11;
  }

  v187 = &a4[236];
  v192 = &a4[1628];
  v181 = v79;
  v182 = ~(-2 << v79);
  v193 = a4;
  v194 = v12 + 37;
  v175 = &v12[4].u16[2];
  v173 = v12[706559].i64 + 5;
  v80 = 3;
  v81 = &off_186205000;
  v82 = *(*v206 + 100);
  v83.i64[0] = 0x100000001;
  v83.i64[1] = 0x100000001;
  while (1)
  {
    v84 = v80;
    if (v78 <= v82 && (v80 == 3 || (*v180 & 1) == 0))
    {
      v85 = *(v191 + 3488);
      v86 = *(v191 + 3520);
      {
        v199 = v86;
        v203 = v85;
        compress_block();
        v86 = v199;
        v85 = v203;
        v83.i64[0] = 0x100000001;
        v83.i64[1] = 0x100000001;
      }

      v87 = vceqq_s32(vdupq_n_s32(v84), v81[152]);
      if (!vaddvq_s32(vshlq_u32(vandq_s8(vandq_s8(vceqq_f32(v85, v86), v83), v87), mask(vmask4)::shift)))
      {
        break;
      }
    }

LABEL_130:
    v80 = v84 - 1;
    if (!v84)
    {
      goto LABEL_131;
    }
  }

  if (!*(*v206 + 68))
  {
    compress_block();
  }

  if (!*(*v206 + 64))
  {
    compress_block();
  }

  if (!*(v184 + 2))
  {
    compress_block();
  }

  v185 = v87;
  v88 = *&_MergedGlobals_11;
  v195 = v84;
  compute_ideal_colors_and_weights_2planes(v184, v191, v84, a4, &a4[118]);
  v89 = *(v184 + 2);
  if (v89)
  {
    v90 = 0;
    v91 = 0;
    v92 = v175;
    v93 = v194;
    do
    {
      v94 = *v92;
      v92 += 3;
      if ((v94 & v182) != 0)
      {
        compute_ideal_weights_for_decimation(a4, v93, &v187->i8[4 * (v90 & 0xFFFFFFC0)]);
        compute_ideal_weights_for_decimation(&a4[118], v93, &v187[8].i8[4 * (v90 & 0xFFFFFFC0)]);
        v89 = *(v184 + 2);
      }

      ++v91;
      v90 += 64;
      v93 += 8118;
    }

    while (v91 < v89);
  }

  v196 = a4[6];
  v200 = a4[2];
  v188 = a4[120];
  v176 = a4[124];
  compute_angular_endpoints_2planes(v184, v187, v181, a4);
  v95 = *(v184 + 5);
  v96 = *(v184 + 6);
  if (v96 > v95)
  {
    v97 = vdivq_f32(vsubq_f32(v174, v188), vsubq_f32(v176, v188));
    v98.i64[0] = 0x3F0000003F000000;
    v98.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V2.4S, #10.0 }

    v100 = vdupq_n_s32(0x7149F2CAu);
    *v97.i32 = vminvq_f32(vbslq_s8(v185, vbslq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(v97, v98)), vcgtq_f32(_Q2, v97)), _Q2, v97), v100));
    v101 = vdivq_f32(vsubq_f32(v174, v200), vsubq_f32(v196, v200));
    v102 = vmvnq_s8(vcgtq_f32(v101, v98));
    v103 = vcgtq_f32(_Q2, v101);
    v104 = vornq_s8(v102, v103);
    v106 = vbslq_s8(v104, _Q2, v101);
    v105 = vbslq_s8(v185, v100, v106);
    v106.i32[0] = 1065520988;
    v107 = vminvq_f32(v105) * 1.02;
    v108 = *v97.i32 * 1.02;
    v109 = 4 * v95 + 179648;
    v110 = v96 - v95;
    v111 = 4 * v95 + 209792;
    v112 = v95 << 6;
    v113 = 4 * v95 + 217984;
    v114 = 4 * v95 + 196032;
    v115 = v95 + 177600;
    v116 = (v173 + 6 * v95);
    v117 = v116;
    do
    {
      v118 = *v117;
      v117 += 6;
      if ((v118 & 1) == 0)
      {
        compress_block();
      }

      if (v181 >= *(v116 - 2))
      {
        a4->i8[v115] = 109 - *(v116 - 1);
        v105.i32[0] = *(a4->i32 + v114);
        if (v105.f32[0] > v107)
        {
          *(a4->i32 + v114) = 1065353216;
          v105.i32[0] = 1.0;
        }

        if (*(a4->f32 + v113) > v108)
        {
          *(a4->i32 + v113) = 1065353216;
        }

        v119 = *(v116 - 3);
        v197 = &v194[8118 * v119];
        memset(v253, 0, sizeof(v253));
        v252 = 0u;
        v251 = 0u;
        v250 = 0u;
        v248 = 0u;
        v249 = 0u;
        v246 = 0u;
        v247 = 0u;
        v201 = (a4->i32 + v109);
        v245 = 0u;
        v189 = &v187[16 * v119];
        compute_quantized_weights_for_decimation(v197, v189, &v245, v192->i64 + (v112 & 0xFFFFFFC0), *(v116 - 2), *(a4[512].f32 + v109), *v105.i64, *v106.i64, *v101.i64, *v104.i64, *v103.i64);
        LODWORD(v120) = *(v193->i32 + v113);
        a4 = v193;
        compute_quantized_weights_for_decimation(v197, v189 + 8, v253, v192[2].i64 + (v112 & 0xFFFFFFC0), *(v116 - 2), *(v193->f32 + v111), v120, v121, v122, v123, v124);
        *v201 = compute_error_of_weight_set_2planes(v193, v193 + 118, v197, &v245, v253, v125, v126, v127).u32[0];
      }

      else
      {
        *(a4->i32 + v109) = 2123789977;
      }

      v109 += 4;
      v111 += 4;
      v112 += 64;
      v113 += 4;
      v114 += 4;
      ++v115;
      v116 = v117;
      --v110;
    }

    while (v110);
  }

  memset(v244, 0, sizeof(v244));
  memset(v243, 0, sizeof(v243));
  memset(v242, 0, sizeof(v242));
  memset(v241, 0, sizeof(v241));
  v253[0] = 0u;
  v252 = 0u;
  v251 = 0u;
  v250 = 0u;
  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  v245 = 0u;
  if (a4[1].i32[0] != 1)
  {
    compress_block();
  }

  v245.i32[0] = 1;
  v128 = vbslq_s8(v185, a4[124], a4[6]);
  v246 = vbslq_s8(v185, a4[120], a4[2]);
  v250 = v128;
  partition_info = block_size_descriptor::get_partition_info(v184, 1u, 0);
  v130 = *v206;
  v190 = compute_ideal_endpoint_formats(partition_info, v191, &v245, &a4[11100], &a4[11228], *(*v206 + 68), *(v184 + 5), *(v184 + 6), v244, v243, v242, v241, a4);
  if (v190)
  {
    v131 = 0;
    v132 = v33 * v88;
    v133 = *&v227[1];
    v134 = 1.0e30;
    do
    {
      v135 = *(v243 + v131);
      if (v135 < *(v184 + 5) || v135 >= *(v184 + 6))
      {
        compress_block();
      }

      v137 = *(v243 + v131);
      v202 = v183 + 6 * v135;
      v138 = &v194[8118 * *(v202 + 2)];
      v139 = *(v138 + 2);
      if (!*(v138 + 2))
      {
        compress_block();
      }

      v217 = 0uLL;
      v140 = v131;
      v216 = 0uLL;
      v240 = 0;
      v238 = 0u;
      v239 = 0u;
      v236 = 0u;
      v237 = 0u;
      v234 = 0u;
      v235 = 0u;
      v233 = 0u;
      v213 = v251;
      v214 = v252;
      v215 = v253[0];
      v209 = v247;
      v210 = v248;
      v211 = v249;
      v212 = v250;
      v141 = &v192[2].i8[v137 << 6];
      v142 = &v238 + 4;
      v207 = v245;
      v208 = v246;
      do
      {
        *(v142 - 32) = *(v141 - 32);
        v143 = *v141++;
        *v142++ = v143;
        --v139;
      }

      while (v139);
      if (v130[16])
      {
        v186 = v131;
        v198 = v244 + 4 * v131;
        v144 = 1;
        v145 = -1;
        while (1)
        {
          recompute_ideal_colors_2planes(v191, v184, v138, &v236 + 4, &v238 + 4, &v207, &v217, &v216, v195);
          BYTE8(v233) = pack_color_endpoints(*v198, &v234 + 4, *(v242 + v140), v208, v212, v217, v216, v146, v147, v148);
          WORD3(v233) = 0;
          HIDWORD(v233) = *(v242 + v140);
          BYTE2(v233) = 0;
          WORD2(v233) = *v202;
          BYTE3(v233) = v195;
          LOWORD(v233) = 259;
          if (v144 != 1)
          {
            goto LABEL_106;
          }

          v149 = compute_symbolic_block_difference_2plane(v130, v184, &v233, v191);
          if (v149 == -1.0e30)
          {
            LOBYTE(v233) = 0;
            v149 = 1.0e30;
          }

          if (v149 < v134)
          {
            v134 = v149;
          }

          if (v149 > (v133 * ((v130[16] * 0.045) + 1.08)))
          {
            goto LABEL_123;
          }

          if (v149 < v133)
          {
            *&v234 = v149;
            v229 = v237;
            v230 = v238;
            v231 = v239;
            v232 = v240;
            v227[2] = v235;
            v228 = v236;
            v227[0] = v233;
            v227[1] = v234;
            if (v149 < v132)
            {
              v133 = v149;
              v131 = v190;
              goto LABEL_125;
            }
          }

          else
          {
LABEL_106:
            v149 = v133;
          }

          v150 = *v130;
          if (*(v138 + 2) == *(v184 + 3))
          {
            v151 = realign_weights_undecimated(v150, v184, v191, &v233);
          }

          else
          {
            v151 = realign_weights_decimated(v150, v184, v191, &v233);
          }

          v152 = v151;
          v153 = compute_symbolic_block_difference_2plane(*v206, v184, &v233, v191);
          if (v153 == -1.0e30)
          {
            LOBYTE(v233) = 0;
            v153 = 1.0e30;
          }

          if (v153 < v134)
          {
            v134 = v153;
          }

          v154 = *(*v206 + 64);
          if (v153 > (v149 * (((v145 + v154) * 0.045) + 1.0)))
          {
            v133 = v149;
            v130 = *v206;
LABEL_123:
            v131 = v186;
            goto LABEL_125;
          }

          v133 = v149;
          if (v153 < v149)
          {
            *&v234 = v153;
            v229 = v237;
            v230 = v238;
            v231 = v239;
            v227[2] = v235;
            v228 = v236;
            v227[0] = v233;
            v227[1] = v234;
            v133 = v153;
            v232 = v240;
            if (v153 < v132)
            {
              break;
            }
          }

          if (v144 < v154)
          {
            v155 = v152;
          }

          else
          {
            v155 = 0;
          }

          ++v144;
          --v145;
          v130 = *v206;
          if ((v155 & 1) == 0)
          {
            goto LABEL_123;
          }
        }

        v133 = v153;
        v131 = v190;
        v130 = *v206;
      }

LABEL_125:
      ++v131;
    }

    while (v131 < v190);
  }

  else
  {
    v134 = 1.0e30;
  }

  a4 = v193;
  v81 = &off_186205000;
  v83.i64[0] = 0x100000001;
  v83.i64[1] = 0x100000001;
  if (v134 <= (*&v222 * 1.85))
  {
    v84 = v195;
    if (v134 < v33)
    {
      goto LABEL_132;
    }

    goto LABEL_130;
  }

LABEL_131:
  if (v178 >= 2)
  {
    v159 = 2;
    v160 = 0uLL;
    while (1)
    {
      v245 = v160;
      v246 = v160;
      v161 = 4 * v159 - 8;
      v162 = *(&v225 + v161);
      v163 = *(&v223 + v161) >= v162 ? *(&v225 + v161) : *(&v223 + v161);
      best_partition_candidates = find_best_partition_candidates(v184, v191, v159, v162, &v245, v163, 0);
      v165 = *(&v222 + v161);
      v166 = v159 - 1;
      if (best_partition_candidates)
      {
        break;
      }

      v171 = *(&v219 + v166);
      v170 = *(&v222 + v166);
LABEL_149:
      _ZF = v170 > (v165 * v171) || ++v159 == v178 + 1;
      v160 = 0uLL;
      if (_ZF)
      {
        goto LABEL_132;
      }
    }

    v167 = 0;
    v168 = 4 * best_partition_candidates;
    while (1)
    {
      v169 = compress_symbolic_block_for_partition_1plane(*v206, v184, v191, 0, v159, v245.i32[v167 / 4], v227, v193, v33 * *&_MergedGlobals_11, v179);
      v170 = *(&v222 + v166);
      if (v170 >= v169)
      {
        v170 = v169;
      }

      *(&v222 + v166) = v170;
      v171 = *(&v219 + v166);
      if (v170 > (v165 * (v171 * 1.85)) || v169 < v33)
      {
        break;
      }

      v167 += 4;
      if (v168 == v167)
      {
        goto LABEL_149;
      }
    }
  }

LABEL_132:
  if (!LOBYTE(v227[0]))
  {
    LOBYTE(v227[0]) = 2;
    __asm { FMOV            V1.4S, #1.0 }

    v157 = vmulq_f32(vminnmq_f32(vmaxnmq_f32(*(v191 + 3472), 0), _Q1), vdupq_n_s32(0x477FFF00u));
    _Q1.i64[0] = 0x3F0000003F000000;
    _Q1.i64[1] = 0x3F0000003F000000;
    *(&v227[1] + 4) = vcvtq_s32_f32(vaddq_f32(v157, _Q1));
  }

  v31 = v184;
  v32 = v177;
  return symbolic_to_physical(v31, v227, v32);
}

float compress_symbolic_block_for_partition_1plane(unsigned int *a1, block_size_descriptor *this, uint64_t a3, uint64_t a4, unsigned int a5, __int16 a6, uint64_t a7, float32x4_t *a8, float a9, int a10)
{
  v175 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    compress_symbolic_block_for_partition_1plane();
  }

  if (!a1[17])
  {
    compress_symbolic_block_for_partition_1plane();
  }

  if (!a1[16])
  {
    compress_symbolic_block_for_partition_1plane();
  }

  if (a10 >= 11)
  {
    v16 = 11;
  }

  else
  {
    v16 = a10;
  }

  _ZF = (a1[1] & 0x40) == 0 && a5 == 1;
  v18 = compute_symbolic_block_difference_1plane;
  if (_ZF)
  {
    v18 = compute_symbolic_block_difference_1plane_1partition;
  }

  v136 = v18;
  partition_info = block_size_descriptor::get_partition_info(this, a5, a6);
  compute_ideal_colors_and_weights_1plane(a3, partition_info, a8, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v29 = 8;
  if (a4)
  {
    v29 = 4;
  }

  v30 = *(this + v29);
  if (!v30)
  {
    compress_symbolic_block_for_partition_1plane();
  }

  v129 = a6;
  v31 = 0;
  v32 = a8 + 236;
  v127 = a8;
  v125 = a8 + 1628;
  v140 = v16;
  v33 = ~(-1 << (v16 + 1));
  v34 = (this + 592);
  v35 = v30 << 6;
  v36 = 66;
  v126 = this + 592;
  do
  {
    if ((*(this + v36) & v33) != 0)
    {
      compute_ideal_weights_for_decimation(v127, v34, &v32->f32[v31 & 0xFFFFFFC0]);
    }

    v31 += 64;
    v34 += 8118;
    v36 += 6;
  }

  while (v35 != v31);
  v37 = v127;
  v38 = v127 + 6;
  __asm
  {
    FMOV            V5.4S, #10.0
    FMOV            V0.4S, #1.0
  }

  v44.i64[0] = 0x3F0000003F000000;
  v44.i64[1] = 0x3F0000003F000000;
  v45 = a5;
  do
  {
    v46 = v38[-4];
    v47 = *v38++;
    v48 = vdivq_f32(vsubq_f32(_Q0, v46), vsubq_f32(v47, v46));
    _Q5 = vbslq_s8(vornq_s8(vmvnq_s8(vcgtq_f32(v48, v44)), vcgtq_f32(_Q5, v48)), _Q5, v48);
    --v45;
  }

  while (v45);
  v141 = _Q5;
  v49 = v140;
  compute_angular_endpoints_1plane(a4, this, v32, v140, v127);
  v55 = 20;
  if (a4)
  {
    v55 = 16;
  }

  if (!*(this + v55))
  {
    compress_symbolic_block_for_partition_1plane();
  }

  v130 = a3;
  v56 = 0;
  v57 = 177600;
  v135 = this;
  v122 = this + 11304944;
  v58 = vminvq_f32(v141) * 1.02;
  v137 = *(this + v55);
  v59 = 44912;
  v60 = 11304949;
  v61 = 49008;
  do
  {
    if (v49 < v135[v60 - 2])
    {
      goto LABEL_31;
    }

    if (v135[v60])
    {
      compress_symbolic_block_for_partition_1plane();
    }

    v62 = compress_symbolic_block_for_partition_1plane(astcenc_config const&,block_size_descriptor const&,image_block const&,BOOL,float,unsigned int,unsigned int,symbolic_compressed_block &,compression_working_buffers &,int)::free_bits_for_partition_count[a5 - 1];
    v63 = v135[v60 - 1];
    _VF = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if ((v64 < 0) ^ _VF | (v64 == 0))
    {
LABEL_31:
      *(v37 + v59 * 4) = 2123789977;
    }

    else
    {
      if (*(v37 + v61 * 4) > v58)
      {
        *(v37 + v61 * 4) = 1065353216;
      }

      v65 = v135[v60 - 3];
      *(v37 + v57) = v64;
      v66 = &v126[129888 * v65];
      v173 = 0u;
      v174 = 0u;
      v171 = 0u;
      v172 = 0u;
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      LODWORD(v50) = v127->i32[v61];
      compute_quantized_weights_for_decimation(v66, &v32[16 * v65], &v159, v125 + (v56 & 0xFFFFFFC0), v135[v60 - 2], v127[512].f32[v59], v50, v51, v52, v53, v54);
      v127->i32[v59] = compute_error_of_weight_set_1plane(v127, v66, &v159, v67, v68, v69, v70).u32[0];
      v37 = v127;
      v49 = v140;
    }

    v56 += 64;
    v60 += 6;
    ++v59;
    ++v61;
    ++v57;
  }

  while (v137 << 6 != v56);
  memset(v158, 0, sizeof(v158));
  memset(v157, 0, sizeof(v157));
  memset(v156, 0, sizeof(v156));
  memset(v155, 0, sizeof(v155));
  v71 = a1;
  v72 = v130;
  v124 = compute_ideal_endpoint_formats(partition_info, v130, v37 + 16, v37 + 177600, v37 + 179648, a1[17], 0, v137, v158, v157, v156, v155, v37);
  if (!v124)
  {
    return 1.0e30;
  }

  v73 = 0;
  v74 = *(a7 + 16);
  v75 = 1.0e30;
  v76 = v135;
  do
  {
    v77 = v157[v73];
    if (v77 < 0 || v77 >= *(v76 + 5))
    {
      compress_symbolic_block_for_partition_1plane();
    }

    v134 = &v122[6 * v77];
    v78 = &v126[129888 * v134[2]];
    v79 = *(v78 + 2);
    if (!*(v78 + 2))
    {
      compress_symbolic_block_for_partition_1plane();
    }

    memset(v154, 0, sizeof(v154));
    memset(v153, 0, sizeof(v153));
    v152 = 0;
    v151 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v80 = v127[8];
    v165 = v127[7];
    v166 = v80;
    v167 = v127[9];
    v81 = v127[4];
    v161 = v127[3];
    v162 = v81;
    v82 = v127[6];
    v163 = v127[5];
    v164 = v82;
    v83 = v127[2];
    v159 = v127[1];
    v160 = v83;
    memcpy(&v148 + 4, v125 + (v77 << 6), v79);
    if (v71[16])
    {
      v84 = 0;
      v123 = v73;
      v85 = &v156[v73];
      v142 = &v155[v73];
      v86 = &v158[4 * v73];
      v133 = v78;
      while (1)
      {
        v138 = v84;
        recompute_ideal_colors_1plane(v72, partition_info, v78, &v148 + 4, &v159, v154, v153);
        v90 = 0;
        LOBYTE(v91) = *v85 != *v142;
        v92 = 20;
        v93 = &v164;
        do
        {
          v94 = v93[-4];
          v95 = *v93++;
          v96 = pack_color_endpoints(v86[v90], &v145 + v92, *v85, v94, v95, v154[v90], v153[v90], v87, v88, v89);
          *(&v145 + v90 + 8) = v96;
          v91 = v91 & (v96 == BYTE8(v145));
          ++v90;
          v92 += 8;
        }

        while (a5 != v90);
        BYTE2(v145) = 0;
        v97 = v85;
        if (a5 != 1)
        {
          v97 = v85;
          if (((v91 ^ 1) & 1) == 0)
          {
            v98 = 0;
            v99 = v154;
            memset(v144, 0, sizeof(v144));
            v100 = v153;
            v101 = &v143;
            v102 = v86;
            v143 = 0;
            v103 = &v164;
            while (1)
            {
              v104 = *v102++;
              v105 = pack_color_endpoints(v104, v144 + v98, *v142, v103[-4], *v103, *v99, *v100, v87, v88, v89);
              *v101 = v105;
              if (v105 != v143)
              {
                break;
              }

              ++v103;
              ++v99;
              ++v100;
              v98 += 8;
              v101 = (v101 + 1);
              if (8 * a5 == v98)
              {
                v106 = 0;
                BYTE2(v145) = 1;
                do
                {
                  *(&v146 + 8 * v106 + 4) = *(v144 + v106);
                  *(&v145 + v106 + 8) = *(&v143 + v106);
                  ++v106;
                }

                while (v106 != 4);
                v97 = v142;
                goto LABEL_52;
              }
            }

            v97 = v142;
            if (!BYTE2(v145))
            {
              v97 = v85;
            }
          }
        }

LABEL_52:
        BYTE1(v145) = a5;
        WORD3(v145) = v129;
        BYTE3(v145) = -1;
        HIDWORD(v145) = *v97;
        v76 = v135;
        WORD2(v145) = *v134;
        LOBYTE(v145) = 3;
        v71 = a1;
        v78 = v133;
        if (v138)
        {
          v107 = v74;
          v72 = v130;
        }

        else
        {
          v72 = v130;
          v108 = v136(a1, v135, &v145, v130);
          if (v108 == -1.0e30)
          {
            LOBYTE(v145) = 0;
            v107 = 1.0e30;
          }

          else
          {
            v107 = v108;
          }

          if (v107 < v75)
          {
            v75 = v107;
          }

          if (v107 > (v74 * ((a1[16] * 0.045) + 1.08)))
          {
LABEL_79:
            v73 = v123;
            break;
          }

          if (v107 >= v74)
          {
            v107 = v74;
          }

          else
          {
            *&v146 = v107;
            v109 = v150;
            *(a7 + 64) = v149;
            *(a7 + 80) = v109;
            *(a7 + 96) = v151;
            *(a7 + 112) = v152;
            v110 = v148;
            *(a7 + 32) = v147;
            *(a7 + 48) = v110;
            v111 = v146;
            *a7 = v145;
            *(a7 + 16) = v111;
            if (v107 < a9)
            {
              v73 = v124;
              v74 = v107;
              break;
            }
          }
        }

        v112 = *a1;
        if (*(v133 + 2) == v135[3])
        {
          v113 = realign_weights_undecimated(v112, v135, v72, &v145);
        }

        else
        {
          v113 = realign_weights_decimated(v112, v135, v72, &v145);
        }

        v114 = v113;
        v115 = v136(a1, v135, &v145, v72);
        if (v115 == -1.0e30)
        {
          LOBYTE(v145) = 0;
          v115 = 1.0e30;
        }

        if (v115 < v75)
        {
          v75 = v115;
        }

        v116 = a1[16];
        if (v115 > (v107 * (((v116 + ~v138) * 0.045) + 1.0)))
        {
          v74 = v107;
          v73 = v123;
          break;
        }

        v74 = v107;
        if (v115 < v107)
        {
          *&v146 = v115;
          v117 = v150;
          *(a7 + 64) = v149;
          *(a7 + 80) = v117;
          *(a7 + 96) = v151;
          *(a7 + 112) = v152;
          v118 = v148;
          *(a7 + 32) = v147;
          *(a7 + 48) = v118;
          v119 = v146;
          *a7 = v145;
          *(a7 + 16) = v119;
          if (v115 < a9)
          {
            v73 = v124;
            v74 = v115;
            break;
          }

          v116 = a1[16];
          v74 = v115;
        }

        v84 = v138 + 1;
        if (v138 + 1 < v116)
        {
          v120 = v114;
        }

        else
        {
          v120 = 0;
        }

        if ((v120 & 1) == 0)
        {
          goto LABEL_79;
        }
      }
    }

    ++v73;
  }

  while (v73 < v124);
  return v75;
}

uint64_t realign_weights_decimated(uint64_t a1, block_size_descriptor *this, float32x4_t *a3, uint64_t a4)
{
  v7 = a1;
  v88 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 1);
  partition_info = block_size_descriptor::get_partition_info(this, *(a4 + 1), *(a4 + 6));
  v12 = *(this + *(a4 + 4) + 5650424);
  if (v12 == 0xFFFF || *(this + 7) <= v12)
  {
    symbolic_to_physical();
  }

  v14 = this + 129888 * *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304946);
  v15 = v14[594];
  if (v15 == *(this + 3))
  {
    realign_weights_decimated();
  }

  v16 = *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304947);
  v17 = *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304949);
  v18 = *(a4 + 3);
  v82 = 0;
  memset(v87, 0, 64);
  memset(v86, 0, sizeof(v86));
  memset(v85, 0, sizeof(v85));
  memset(v84, 0, sizeof(v84));
  if (!v8)
  {
    realign_weights_decimated();
  }

  if (!v15)
  {
    realign_weights_decimated();
  }

  v73 = v16;
  v77 = partition_info;
  v19 = 0;
  v20 = v14 + 592;
  v71 = v17 & 1;
  v21 = xmmword_186205980;
  v22 = (a4 + 8);
  v23 = vceqq_s32(vdupq_n_s32(v18), xmmword_186205980);
  v80 = v23;
  v24 = (a4 + 20);
  v75 = 16 * v8;
  do
  {
    v25 = *v22++;
    v23 = unpack_color_endpoints(v7, v25, v24, &v82 + 1, &v82, &v87[v19], &v86[v19], v23, v21, v10, v11);
    v26 = 16 * v8;
    v24 += 8;
    v19 += 16;
  }

  while (v75 != v19);
  v76 = 0;
  v27 = 0;
  v28 = a4 + 52;
  v79 = v20 + 5408;
  v29 = v77 + 8;
  v72 = v71 + 1;
  v30 = vdupq_n_s32(0x3C800000u);
  v78 = &quant_and_xfer_tables + 226 * v73;
  v31 = v80;
  do
  {
    v32 = 0;
    v31 = vmvnq_s8(v31);
    do
    {
      v33 = *&v87[v32];
      v34 = vandq_s8(vsubq_s32(*&v86[v32], v33), v31);
      v85[v32 / 0x10] = vcvtq_f32_s32(v33);
      v84[v32 / 0x10] = vmulq_f32(vcvtq_f32_s32(v34), v30);
      v32 += 16;
    }

    while (v26 != v32);
    v74 = v27;
    v35 = 0;
    v36 = v83;
    memset(v83, 0, sizeof(v83));
    do
    {
      v37 = (v28 + v35);
      v38 = vld1_dup_f32(v37);
      *v36++ = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(v38)));
      v35 += 4;
    }

    while (v35 < v15);
    v39 = 0;
    v40 = (v20 + 74592);
    v41 = (v20 + 5472);
    v81 = v28;
    do
    {
      v42 = v79[v39];
      if (!v79[v39])
      {
        realign_weights_decimated();
      }

      v43 = *(v28 + v39);
      v44 = *&v78[2 * *(v28 + v39) + 96];
      v45 = v83[0].f32[v39];
      v46 = *&v78[2 * *(v28 + v39) + 96];
      v47 = v44 >> 8;
      v48 = v46 - v45;
      v49 = (v44 >> 8) - v45;
      v50 = 0uLL;
      v51 = v40;
      v52 = v41;
      v53 = 0uLL;
      v54 = 0uLL;
      do
      {
        v55 = *v52;
        v52 += 64;
        v56 = ((v83[0].f32[v20[v55 + 438]] * *&v20[4 * v55 + 2816]) + (v83[0].f32[v20[v55 + 222]] * *&v20[4 * v55 + 1952])) + ((v83[0].f32[v20[v55 + 870]] * *&v20[4 * v55 + 4544]) + (v83[0].f32[v20[v55 + 654]] * *&v20[4 * v55 + 3680]));
        v57 = v29[v55];
        v58 = v84[v57];
        v59.i32[0] = a3->i32[v55];
        v59.i32[1] = a3[54].i32[v55];
        v59.i32[2] = a3[108].i32[v55];
        v59.i32[3] = a3[162].i32[v55];
        v60 = vsubq_f32(vaddq_f32(v85[v57], vmulq_n_f32(v58, v56)), v59);
        v61 = vaddq_f32(vmulq_n_f32(v58, (v56 + (v48 * *v51)) - v56), v60);
        v62 = vaddq_f32(vmulq_n_f32(v58, (v56 + (v49 * *v51)) - v56), v60);
        v50 = vaddq_f32(v50, vmulq_f32(v60, v60));
        v53 = vaddq_f32(v53, vmulq_f32(v61, v61));
        v54 = vaddq_f32(v54, vmulq_f32(v62, v62));
        v51 += 64;
        --v42;
      }

      while (v42);
      v63 = a3[221];
      v64 = vmulq_f32(v50, v63);
      *v64.i8 = vadd_f32(*&vextq_s8(v64, v64, 8uLL), *v64.i8);
      v65 = vpadd_f32(*v64.i8, *v64.i8);
      v66 = vmulq_f32(v53, v63);
      *v66.i8 = vadd_f32(*&vextq_s8(v66, v66, 8uLL), *v66.i8);
      v67 = vpadd_f32(*v66.i8, *v66.i8);
      v68 = vmulq_f32(v54, v63);
      *v68.i8 = vadd_f32(*&vextq_s8(v68, v68, 8uLL), *v68.i8);
      v69 = vpadd_f32(*v68.i8, *v68.i8);
      if (vcgt_f32(v65, v69).u8[0] & 1) != 0 && v43 <= 0x3F && (vcgt_f32(v67, v69).u8[0])
      {
        v83[0].f32[v39] = (v44 >> 8);
        v28 = v81;
LABEL_27:
        *(v28 + v39) = v47;
        v76 = 1;
        goto LABEL_29;
      }

      if (v43)
      {
        v28 = v81;
        if ((vcgt_f32(v65, v67).u8[0] & 1) == 0)
        {
          goto LABEL_29;
        }

        v83[0].f32[v39] = v46;
        LOBYTE(v47) = v44;
        goto LABEL_27;
      }

      v28 = v81;
LABEL_29:
      ++v39;
      ++v41;
      ++v40;
    }

    while (v39 != v15);
    v28 += 32;
    ++v27;
    v26 = v75;
  }

  while (v74 + 1 != v72);
  return v76 & 1;
}

uint64_t realign_weights_undecimated(uint64_t a1, block_size_descriptor *this, float32x4_t *a3, uint64_t a4)
{
  v7 = a1;
  v60 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 1);
  partition_info = block_size_descriptor::get_partition_info(this, *(a4 + 1), *(a4 + 6));
  v12 = *(this + *(a4 + 4) + 5650424);
  if (v12 == 0xFFFF || *(this + 7) <= v12)
  {
    symbolic_to_physical();
  }

  v14 = *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304947);
  v15 = *(this + 6 * *(this + *(a4 + 4) + 5650424) + 11304949);
  v16 = *(a4 + 3);
  v55 = 0;
  memset(v59, 0, 64);
  memset(v58, 0, sizeof(v58));
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  if (!v8)
  {
    realign_weights_undecimated();
  }

  v52 = v14;
  v53 = partition_info;
  v17 = 0;
  v51 = v15 & 1;
  v18 = xmmword_186205980;
  v19 = (a4 + 8);
  v20 = vceqq_s32(vdupq_n_s32(v16), xmmword_186205980);
  v54 = v20;
  v21 = (a4 + 20);
  v22 = 16 * v8;
  do
  {
    v23 = *v19++;
    v20 = unpack_color_endpoints(v7, v23, v21, &v55 + 1, &v55, &v59[v17], &v58[v17], v20, v18, v10, v11);
    v21 += 8;
    v17 += 16;
  }

  while (v22 != v17);
  v24 = 0;
  v25 = 0;
  v26 = a4 + 52;
  v27 = vdupq_n_s32(0x3C800000u);
  v28 = &quant_and_xfer_tables + 226 * v52;
  v29 = v54;
  do
  {
    v30 = 0;
    v29 = vmvnq_s8(v29);
    do
    {
      v31 = *&v59[v30];
      v32 = vandq_s8(vsubq_s32(*&v58[v30], v31), v29);
      v57[v30 / 0x10] = vcvtq_f32_s32(v31);
      v56[v30 / 0x10] = vmulq_f32(vcvtq_f32_s32(v32), v27);
      v30 += 16;
    }

    while (v22 != v30);
    if (!*(this + 3))
    {
      realign_weights_undecimated();
    }

    v33 = 0;
    v34 = a3;
    do
    {
      v35 = *(v26 + v33);
      v36 = HIBYTE(*&v28[2 * v35 + 96]);
      v37 = v53[v33 + 8];
      v38 = v56[v37];
      v39.i32[0] = v34->i32[0];
      v39.i32[1] = v34[54].i32[0];
      v39.i32[2] = v34[108].i32[0];
      v39.i32[3] = v34[162].i32[0];
      v40 = a3[221];
      v41 = vsubq_f32(vaddq_f32(v57[v37], vmulq_n_f32(v38, v35)), v39);
      v42 = vaddq_f32(vmulq_n_f32(v38, (*&v28[2 * v35 + 96] - v35)), v41);
      v43 = vaddq_f32(vmulq_n_f32(v38, (v36 - v35)), v41);
      v44 = vmulq_f32(v40, vmulq_f32(v41, v41));
      *v44.i8 = vadd_f32(*&vextq_s8(v44, v44, 8uLL), *v44.i8);
      v45 = vpadd_f32(*v44.i8, *v44.i8);
      v46 = vmulq_f32(v40, vmulq_f32(v42, v42));
      *v46.i8 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), *v46.i8);
      v47 = vpadd_f32(*v46.i8, *v46.i8);
      v48 = vmulq_f32(v40, vmulq_f32(v43, v43));
      *v48.i8 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), *v48.i8);
      v49 = vpadd_f32(*v48.i8, *v48.i8);
      if (vcgt_f32(v45, v49).u8[0] & 1) != 0 && v35 <= 0x3F && (vcgt_f32(v47, v49).u8[0])
      {
        goto LABEL_20;
      }

      if (*(v26 + v33) && (vcgt_f32(v45, v47).u8[0] & 1) != 0)
      {
        LOBYTE(v36) = *&v28[2 * v35 + 96];
LABEL_20:
        *(v26 + v33) = v36;
        v24 = 1;
      }

      ++v33;
      v34 = (v34 + 4);
    }

    while (v33 < *(this + 3));
    v26 += 32;
    ++v25;
  }

  while (v25 != v51 + 1);
  return v24 & 1;
}

void compress_block(float *a1)
{
  if (__cxa_guard_acquire(byte_1ED56A258))
  {
    *&_MergedGlobals_11 = 1.0 / *a1;

    __cxa_guard_release(byte_1ED56A258);
  }
}

void compress_block()
{
  {
    mask(vmask4)::shift = xmmword_186205980;
  }
}

{
  __assert_rtn("merge_endpoints", "astcenc_compress_symbolic.cpp", 44, "partition_count == 1");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 896, "di.weight_count > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 891, "bm_packed_index >= static_cast<int>(bsd.block_mode_count_1plane_selected) && bm_packed_index < static_cast<int>(bsd.block_mode_count_1plane_2plane_selected)");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 810, "bm.is_dual_plane");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 728, "bsd.decimation_mode_count_selected > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 727, "config.tune_refinement_limit > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_2planes", "astcenc_compress_symbolic.cpp", 726, "config.tune_candidate_limit > 0");
}

{
  __assert_rtn("prepare_block_statistics", "astcenc_compress_symbolic.cpp", 1075, "weight >= 0.0f");
}

{
  __assert_rtn("prepare_block_statistics", "astcenc_compress_symbolic.cpp", 1071, "texels_per_block > 0");
}

void compress_symbolic_block_for_partition_1plane()
{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 452, "!bm.is_dual_plane");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 515, "di.weight_count > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 510, "bm_packed_index >= 0 && bm_packed_index < static_cast<int>(bsd.block_mode_count_1plane_selected)");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 441, "max_block_modes > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 390, "max_decimation_modes > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 367, "config.tune_refinement_limit > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 366, "config.tune_candidate_limit > 0");
}

{
  __assert_rtn("compress_symbolic_block_for_partition_1plane", "astcenc_compress_symbolic.cpp", 365, "partition_count > 0");
}

void realign_weights_decimated()
{
  __assert_rtn("realign_weights_decimated", "astcenc_compress_symbolic.cpp", 277, "texels_to_evaluate > 0");
}

{
  __assert_rtn("realign_weights_decimated", "astcenc_compress_symbolic.cpp", 221, "weight_count > 0");
}

{
  __assert_rtn("realign_weights_decimated", "astcenc_compress_symbolic.cpp", 220, "partition_count > 0");
}

{
  __assert_rtn("realign_weights_decimated", "astcenc_compress_symbolic.cpp", 206, "weight_count != bsd.texel_count");
}

void realign_weights_undecimated()
{
  __assert_rtn("realign_weights_undecimated", "astcenc_compress_symbolic.cpp", 125, "bsd.texel_count > 0");
}

{
  __assert_rtn("realign_weights_undecimated", "astcenc_compress_symbolic.cpp", 96, "partition_count > 0");
}

uint64_t find_best_partition_candidates(block_size_descriptor *a1, float32x4_t *a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, __n128 a7)
{
  v349 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 3);
  if (v8 >= 0x15)
  {
    if (v8 >= 0x20)
    {
      v9 = *&dword_18622EF00[v8 < 0x2A];
    }

    else
    {
      v9 = 0.04;
    }
  }

  else
  {
    v9 = 0.03;
  }

  if (!a3)
  {
    find_best_partition_candidates();
  }

  if (!a4)
  {
    find_best_partition_candidates();
  }

  v278 = a1 + 14707848;
  v276 = a1 + 14666872;
  v277 = a1 + 14683264;
  v10 = v9 * v9;
  v11 = a3;
  bzero(v317, 0x800uLL);
  v12 = a2;
  v13 = 0;
  v307 = 0u;
  v308 = 0u;
  v305[0] = 0u;
  v306 = 0u;
  v340 = 0;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v336 = 0u;
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  v14 = a2 + 54;
  v15 = a2 + 108;
  v16 = a2 + 162;
  v290 = a3;
  if (a3 <= 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = a3;
  }

  v18 = a2[221];
  v285 = v17 - 1;
  v282 = v18;
  do
  {
    if (v13)
    {
      v321 = 0u;
      v320 = 0u;
      v319 = 0u;
      v318 = 0u;
      v19 = &v327;
      v20 = v12;
      v21 = v8;
      LODWORD(v341) = 0;
      do
      {
        v22 = *v19++;
        v23.i32[0] = *v20;
        v23.i32[1] = v20[216];
        v23.i32[2] = v20[432];
        v23.i32[3] = v20[648];
        v24 = vaddq_f32(*(&v318 + v22), v23);
        *(&v318 + v22) = v24;
        ++*(&v341 + v22);
        ++v20;
        --v21;
      }

      while (v21);
      for (i = 0; i != v11; ++i)
      {
        v24.i8[0] = *(&v341 + i);
        v24 = vmulq_n_f32(*(&v318 + i), 1.0 / v24.u32[0]);
        v305[i] = v24;
      }
    }

    else
    {
      bzero(&v318, 0x360uLL);
      v18 = v282;
      v12 = a2;
      v39 = 0;
      v40.i32[0] = a2->i32[0x239E9 % v8];
      v40.i32[1] = v14->i32[0x239E9 % v8];
      v40.i32[2] = v15->i32[0x239E9 % v8];
      v40.i32[3] = v16->i32[0x239E9 % v8];
      v305[0] = v40;
      v41 = 0.0;
      v42 = a2;
      do
      {
        v43.i32[0] = *v42;
        v43.i32[1] = v42[216];
        v43.i32[2] = v42[432];
        v43.i32[3] = v42[648];
        v44 = vsubq_f32(v43, v40);
        v45 = vmulq_f32(v282, vmulq_f32(v44, v44));
        *v45.i8 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.i8);
        *v45.i32 = vpadd_f32(*v45.i8, *v45.i8).f32[0];
        v41 = v41 + *v45.i32;
        *(&v318 + v39++) = v45.i32[0];
        ++v42;
      }

      while (v8 != v39);
      v46 = 1;
      v47 = 3 * a3 - 6;
      v13 = 0;
      while (1)
      {
        v48 = 0;
        v49 = flt_18622EF08[v47++];
        v50 = v41 * v49;
        v51 = 0.0;
        while (1)
        {
          v51 = v51 + *(&v318 + v48);
          if (v51 >= v50)
          {
            break;
          }

          if (v8 == ++v48)
          {
            LODWORD(v48) = v8;
            break;
          }
        }

        if (v48 >= v8 - 1)
        {
          LODWORD(v48) = v8 - 1;
        }

        v52.i32[0] = a2->i32[v48];
        v52.i32[1] = v14->i32[v48];
        v52.i32[2] = v15->i32[v48];
        v52.i32[3] = v16->i32[v48];
        v305[v46] = v52;
        if (v46 == v285)
        {
          break;
        }

        ++v46;
        v41 = 0.0;
        v53 = &v318;
        v54 = a2;
        v55 = v8;
        do
        {
          v56.i32[0] = *v54;
          v56.i32[1] = v54[216];
          v56.i32[2] = v54[432];
          v56.i32[3] = v54[648];
          v57 = vsubq_f32(v56, v52);
          v58 = vmulq_f32(v282, vmulq_f32(v57, v57));
          *v58.i8 = vadd_f32(*&vextq_s8(v58, v58, 8uLL), *v58.i8);
          v59 = vpadd_f32(*v58.i8, *v58.i8).f32[0];
          if (v59 >= *v53)
          {
            v59 = *v53;
          }

          v41 = v41 + v59;
          *v53++ = v59;
          ++v54;
          --v55;
        }

        while (v55);
      }
    }

    v26 = 0;
    LODWORD(v318) = 0;
    do
    {
      v27 = 0;
      v28 = 0;
      v30 = 3.4028e38;
      do
      {
        v29.i32[3] = v16->i32[v26];
        v29.i32[2] = v15->i32[v26];
        v29.i32[1] = v14->i32[v26];
        v29.i32[0] = *(v12 + 4 * v26);
        v31 = vsubq_f32(v29, v305[v27]);
        v32 = vmulq_f32(v18, vmulq_f32(v31, v31));
        *v32.i8 = vadd_f32(*&vextq_s8(v32, v32, 8uLL), *v32.i8);
        v33 = vpadd_f32(*v32.i8, *v32.i8).f32[0];
        if (v33 < v30)
        {
          v28 = v27;
          v30 = v33;
        }

        ++v27;
      }

      while (v11 != v27);
      *(&v327 + v26) = v28;
      ++*(&v318 + v28);
      ++v26;
    }

    while (v26 != v8);
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = v35;
      if (!*(&v318 + v34))
      {
        --*(&v318 + *(&v327 + v34));
        ++*(&v318 + v34);
        *(&v327 + v34) = v34;
        v36 = 1;
      }

      v37 = v34 + 1 == v11;
      v38 = v34 + 1 != v11;
      if (v34 + 1 == v11)
      {
        v34 = 0;
      }

      else
      {
        ++v34;
      }

      v35 = v38 & v36;
    }

    while (!v37 || (v36 & 1) != 0);
    ++v13;
  }

  while (v13 != 3);
  v60 = 0;
  if (v8 >= 0x40)
  {
    v61 = 64;
  }

  else
  {
    v61 = v8;
  }

  v297 = 0uLL;
  v298 = 0uLL;
  do
  {
    v62 = *(&v327 + *(a1 + v60 + 14666800));
    *(&v297 + v62) |= 1 << v60++;
  }

  while (v61 != v60);
  *v292 = v61;
  bzero(&v318, 0x400uLL);
  v63 = a1 + 4 * a3 - 4;
  v64 = *(v63 + 8);
  if (!v64)
  {
    find_best_partition_candidates();
  }

  v288 = *(v63 + 8);
  if (v11 == 2)
  {
    v97 = &v318;
    v98 = v297;
    v99 = v276;
    do
    {
      v100 = *(v99 - 1);
      v101 = vcnt_s8((v100 ^ v98));
      v101.i16[0] = vaddlv_u8(v101);
      v102 = v101.i32[0];
      v103 = vcnt_s8((*v99 ^ *(&v98 + 1)));
      v103.i16[0] = vaddlv_u8(v103);
      v104 = v103.i32[0] + v102;
      v105 = vcnt_s8((*v99 ^ v98));
      v105.i16[0] = vaddlv_u8(v105);
      v106 = v105.i32[0];
      v107 = vcnt_s8((v100 ^ *(&v98 + 1)));
      v107.i16[0] = vaddlv_u8(v107);
      if (v104 >= v107.i32[0] + v106)
      {
        v108 = v107.i32[0] + v106;
      }

      else
      {
        v108 = v104;
      }

      *v97 = v108 >> 1;
      if ((v108 >> 1) >= 0x40u)
      {
        find_best_partition_candidates();
      }

      if (v8 <= (v108 >> 1))
      {
        find_best_partition_candidates();
      }

      v99 += 16;
      v97 = (v97 + 1);
      --v64;
    }

    while (v64);
  }

  else if (v11 == 3)
  {
    v65 = v297;
    v66 = &v318;
    v67 = v298;
    v68 = v277;
    do
    {
      v69 = *(v68 - 2);
      v70 = *(v68 - 1);
      v71 = vcnt_s8((v69 ^ v65));
      v71.i16[0] = vaddlv_u8(v71);
      v72 = v71.i32[0];
      v73 = vcnt_s8((v70 ^ v65));
      v73.i16[0] = vaddlv_u8(v73);
      v74 = v73.i32[0];
      v75 = vcnt_s8((*v68 ^ v65));
      v75.i16[0] = vaddlv_u8(v75);
      v76 = v75.i32[0];
      v77 = vcnt_s8((v69 ^ *(&v65 + 1)));
      v77.i16[0] = vaddlv_u8(v77);
      v78 = v77.i32[0];
      v79 = vcnt_s8((v70 ^ *(&v65 + 1)));
      v79.i16[0] = vaddlv_u8(v79);
      v80 = v79.i32[0];
      v81 = vcnt_s8((*v68 ^ *(&v65 + 1)));
      v81.i16[0] = vaddlv_u8(v81);
      v82 = v81.i32[0];
      v83 = vcnt_s8((v69 ^ v67));
      v83.i16[0] = vaddlv_u8(v83);
      v84 = v83.i32[0];
      v85 = vcnt_s8((v70 ^ v67));
      v85.i16[0] = vaddlv_u8(v85);
      v86 = v85.i32[0];
      v87 = vcnt_s8((*v68 ^ v67));
      v87.i16[0] = vaddlv_u8(v87);
      v88 = v87.i32[0] + v80;
      if (v87.i32[0] + v80 >= (v86 + v82))
      {
        v88 = v86 + v82;
      }

      v89 = v88 + v72;
      v90 = v87.i32[0] + v78;
      v91 = v84 + v82;
      if (v87.i32[0] + v78 >= v91)
      {
        v90 = v91;
      }

      v92 = v90 + v74;
      v93 = v86 + v78;
      v94 = v84 + v80;
      if (v93 < v94)
      {
        v94 = v93;
      }

      v95 = v94 + v76;
      if (v89 >= v92)
      {
        v96 = v92;
      }

      else
      {
        v96 = v89;
      }

      if (v96 >= v95)
      {
        v96 = v95;
      }

      *v66 = v96 >> 1;
      if ((v96 >> 1) >= 0x40u)
      {
        find_best_partition_candidates();
      }

      if (v8 <= (v96 >> 1))
      {
        find_best_partition_candidates();
      }

      v68 += 24;
      v66 = (v66 + 1);
      --v64;
    }

    while (v64);
  }

  else
  {
    v109 = v297;
    v110 = &v318;
    v111 = v298;
    v112 = v278;
    do
    {
      v113 = *(v112 - 3);
      v114 = *(v112 - 2);
      v115 = vcnt_s8((v113 ^ v109));
      v115.i16[0] = vaddlv_u8(v115);
      v116 = v115.i32[0];
      v117 = vcnt_s8((v114 ^ v109));
      v117.i16[0] = vaddlv_u8(v117);
      v118 = v117.i32[0];
      v119 = *(v112 - 1);
      v120 = *v112;
      v121 = v112;
      v122 = vcnt_s8((v119 ^ v109));
      v122.i16[0] = vaddlv_u8(v122);
      v123 = v122.i32[0];
      v124 = vcnt_s8((*v112 ^ v109));
      v124.i16[0] = vaddlv_u8(v124);
      v125 = v124.i32[0];
      v126 = vcnt_s8((v113 ^ *(&v109 + 1)));
      v126.i16[0] = vaddlv_u8(v126);
      v127 = v126.i32[0];
      v128 = vcnt_s8((v114 ^ *(&v109 + 1)));
      v128.i16[0] = vaddlv_u8(v128);
      v129 = v128.i32[0];
      v130 = vcnt_s8((v119 ^ *(&v109 + 1)));
      v130.i16[0] = vaddlv_u8(v130);
      v131 = v130.i32[0];
      v132 = vcnt_s8((v120 ^ *(&v109 + 1)));
      v132.i16[0] = vaddlv_u8(v132);
      v133 = v132.i32[0];
      v134 = vcnt_s8((v113 ^ v111));
      v134.i16[0] = vaddlv_u8(v134);
      v135 = v134.i32[0];
      v136 = vcnt_s8((v114 ^ v111));
      v136.i16[0] = vaddlv_u8(v136);
      v137 = v136.i32[0];
      v138 = vcnt_s8((v119 ^ v111));
      v138.i16[0] = vaddlv_u8(v138);
      v139 = v138.i32[0];
      v140 = vcnt_s8((v120 ^ v111));
      v140.i16[0] = vaddlv_u8(v140);
      v141 = v140.i32[0];
      v142 = vcnt_s8((v113 ^ *(&v111 + 1)));
      v142.i16[0] = vaddlv_u8(v142);
      v143 = v142.i32[0];
      v144 = vcnt_s8((v114 ^ *(&v111 + 1)));
      v144.i16[0] = vaddlv_u8(v144);
      v145 = v144.i32[0];
      v146 = vcnt_s8((v119 ^ *(&v111 + 1)));
      v146.i16[0] = vaddlv_u8(v146);
      v147 = v146.i32[0];
      v148 = vcnt_s8((v120 ^ *(&v111 + 1)));
      v148.i16[0] = vaddlv_u8(v148);
      v149 = v148.i32[0] + v139;
      if (v148.i32[0] + v139 >= (v147 + v141))
      {
        v149 = v147 + v141;
      }

      v150 = v148.i32[0] + v137;
      if (v148.i32[0] + v137 >= (v145 + v141))
      {
        v150 = v145 + v141;
      }

      v151 = v145 + v139;
      if (v147 + v137 < (v145 + v139))
      {
        v151 = v147 + v137;
      }

      v152 = v148.i32[0] + v135;
      v153 = v143 + v141;
      if (v148.i32[0] + v135 >= v153)
      {
        v152 = v153;
      }

      v154 = v147 + v135;
      v155 = v143 + v139;
      if (v154 >= v155)
      {
        v154 = v155;
      }

      v156 = v143 + v137;
      v157 = v145 + v135;
      if (v156 >= v157)
      {
        v156 = v157;
      }

      v158 = v149 + v129;
      if (v149 + v129 >= (v150 + v131))
      {
        v158 = v150 + v131;
      }

      if (v158 >= v151 + v133)
      {
        v158 = v151 + v133;
      }

      v159 = v158 + v116;
      v160 = v149 + v127;
      if (v149 + v127 >= v152 + v131)
      {
        v160 = v152 + v131;
      }

      if (v160 >= v154 + v133)
      {
        v160 = v154 + v133;
      }

      v161 = v160 + v118;
      v162 = v152 + v129;
      v163 = v156 + v133;
      if (v152 + v129 >= v150 + v127)
      {
        v162 = v150 + v127;
      }

      if (v162 < v163)
      {
        v163 = v162;
      }

      v164 = v163 + v123;
      v165 = v154 + v129;
      v166 = v156 + v131;
      v167 = v151 + v127;
      if (v165 >= v166)
      {
        v165 = v166;
      }

      if (v165 < v167)
      {
        v167 = v165;
      }

      v168 = v167 + v125;
      if (v159 < v161)
      {
        v161 = v159;
      }

      if (v164 >= v168)
      {
        v169 = v168;
      }

      else
      {
        v169 = v164;
      }

      if (v161 < v169)
      {
        v169 = v161;
      }

      *v110 = v169 >> 1;
      if ((v169 >> 1) >= 0x40u)
      {
        find_best_partition_candidates();
      }

      if (v8 <= (v169 >> 1))
      {
        find_best_partition_candidates();
      }

      v112 = v121 + 32;
      v110 = (v110 + 1);
      --v64;
    }

    while (v64);
  }

  v170 = 0;
  v348 = 0u;
  v347 = 0u;
  v346 = 0u;
  v345 = 0u;
  v344 = 0u;
  v343 = 0u;
  v342 = 0u;
  v341 = 0u;
  v171 = v288;
  do
  {
    ++*(&v341 + *(&v318 + v170++));
  }

  while (v288 != v170);
  v172 = 0;
  v173 = 0;
  v174 = a4;
  do
  {
    v175 = *(&v341 + v172);
    *(&v341 + v172) = v173;
    v173 += v175;
    ++v172;
  }

  while (*v292 != v172);
  v176 = 0;
  do
  {
    v177 = *(&v318 + v176);
    v178 = *(&v341 + v177);
    *(&v341 + v177) = v178 + 1;
    v317[v178] = v176++;
  }

  while (v288 != v176);
  if (a4 >= v288)
  {
    v179 = v288;
  }

  else
  {
    v179 = a4;
  }

  if (v179 >= a6)
  {
    v180 = a6;
  }

  else
  {
    v180 = v179;
  }

  v293 = v180;
  v181 = a2[218];
  v182 = a2[220];
  {
    *v284 = v182;
    v287 = v181;
    compute_ideal_colors_and_weights_1plane();
    v182 = *v284;
    v181 = v287;
    v171 = v288;
    v174 = a4;
  }

  v183 = 0;
  v183.i16[3] = vmovn_s32(vceqq_f32(v181, v182)).i16[3];
  v184 = vmovl_u16(v183);
  v185.i64[0] = 0x100000001;
  v185.i64[1] = 0x100000001;
  memset(__b, 0, sizeof(__b));
  memset(v315, 0, sizeof(v315));
  v186 = vaddvq_s32(vshlq_u32(vandq_s8(v184, v185), mask(vmask4)::shift));
  memset(v314, 0, sizeof(v314));
  memset(v313, 0, sizeof(v313));
  if (a6)
  {
    if (v171 >= a6)
    {
      v187 = a6;
    }

    else
    {
      v187 = v171;
    }

    if (v187 >= v174)
    {
      v187 = v174;
    }

    if (v187 <= 1)
    {
      v187 = 1;
    }

    v188 = 4 * v187;
    memset_pattern16(__b, &xmmword_18622EEE0, v188);
    memset_pattern16(v314, &xmmword_18622EEE0, v188);
  }

  if (v179 <= 1)
  {
    v189 = 1;
  }

  else
  {
    v189 = v179;
  }

  v289 = v189;
  if (v186)
  {
    for (j = 0; j != v289; ++j)
    {
      v191 = v317[j];
      raw_partition_info = block_size_descriptor::get_raw_partition_info(a1, v290, v317[j]);
      v334 = 0u;
      v333 = 0u;
      v332 = 0u;
      v331 = 0u;
      v330 = 0u;
      v329 = 0u;
      v328 = 0u;
      v327 = 0u;
      v193 = &v327;
      compute_avgs_and_dirs_3_comp_rgb(raw_partition_info, a2, &v327, v194, v195, v196, v197, v198, 0.0, v199, v200, v201, v202);
      bzero(&v318, 0x240uLL);
      v203 = v11;
      v204 = &v322;
      do
      {
        v205 = v193[1];
        v204[-4] = *v193;
        v206 = vmulq_f32(v205, v205);
        *v206.i8 = vadd_f32(*&vextq_s8(v206, v206, 8uLL), *v206.i8);
        v207 = vpadd_f32(*v206.i8, *v206.i8);
        v208 = xmmword_18622B5B0;
        if (*v207.i32 != 0.0)
        {
          v208 = vdivq_f32(v205, vsqrtq_f32(vdupq_lane_s32(v207, 0)));
        }

        v204[-3] = v208;
        f32 = v204[-3].f32;
        *(f32 + 2) = 0;
        *(f32 + 3) = 0;
        v210 = *v193;
        v211 = vmulq_f32(v210, v210);
        *v211.i8 = vadd_f32(*&vextq_s8(v211, v211, 8uLL), *v211.i8);
        v212 = vpadd_f32(*v211.i8, *v211.i8);
        v213 = xmmword_18622B5B0;
        if (*v212.i32 != 0.0)
        {
          v213 = vdivq_f32(v210, vsqrtq_f32(vdupq_lane_s32(v212, 0)));
        }

        v214 = v204[-4];
        v215 = vmulq_f32(v208, v214);
        v215.f32[0] = v215.f32[2] + vaddv_f32(*v215.f32);
        v216 = vdupq_lane_s32(*v215.f32, 0);
        v216.i32[3] = 0;
        v204[-1] = v213;
        *v204 = vsubq_f32(v214, vmulq_f32(v208, v216));
        v204[1] = *f32;
        v204[2].i64[0] = 0;
        v204[2].i64[1] = 0;
        v204[3] = v204[-1];
        v193 += 2;
        v204 += 9;
        --v203;
      }

      while (v203);
      LODWORD(v341) = 0;
      v305[0].i32[0] = 0;
      compute_error_squared_rgb(raw_partition_info, a2, &v318, &v341, v305);
      v217 = (raw_partition_info + 2);
      v218 = __PAIR64__(v305[0].u32[0], v341);
      v219 = v11;
      v220 = &v326;
      do
      {
        v221 = *v217++;
        v222 = v10 * v221;
        v223 = vmulq_n_f32(*(v220 - 28), *v220);
        v224 = vmulq_n_f32(*(v220 - 20), *v220);
        v225 = vmulq_n_f32(vmulq_f32(v223, v223), v222);
        v226 = vmulq_n_f32(vmulq_f32(v224, v224), v222);
        v218 = vadd_f32(v218, vadd_f32(vzip1_s32(*&vextq_s8(v225, v225, 8uLL), *&vextq_s8(v226, v226, 8uLL)), vadd_f32(vzip1_s32(*v225.i8, *v226.i8), vzip2_s32(*v225.i8, *v226.i8))));
        v220 += 36;
        --v219;
      }

      while (v219);
      v305[0].i32[0] = v218.i32[1];
      LODWORD(v341) = v218.i32[0];
      insert_result(v293, v218.f32[0], v191, __b, v315);
      insert_result(v293, v305[0].f32[0], v191, v314, v313);
    }
  }

  else
  {
    v227 = 0;
    do
    {
      v286 = v227;
      v283 = v317[v227];
      v228 = block_size_descriptor::get_raw_partition_info(a1, v290, v283);
      v325 = 0u;
      v324 = 0u;
      v323 = 0u;
      v322 = 0u;
      v321 = 0u;
      v320 = 0u;
      v319 = 0u;
      v318 = 0u;
      v229 = v228;
      compute_avgs_and_dirs_4_comp(v228, a2, &v318, v230, v231, v232, v233, v234);
      v235 = 0;
      v334 = 0u;
      v333 = 0u;
      v332 = 0u;
      v331 = 0u;
      v330 = 0u;
      v329 = 0u;
      v328 = 0u;
      v327 = 0u;
      v348 = 0u;
      v347 = 0u;
      v346 = 0u;
      v345 = 0u;
      v344 = 0u;
      v343 = 0u;
      v342 = 0u;
      v341 = 0u;
      v311 = 0u;
      v312 = 0u;
      v309 = 0u;
      v310 = 0u;
      v307 = 0u;
      v308 = 0u;
      v305[0] = 0u;
      v306 = 0u;
      v304 = 0u;
      v302 = 0u;
      v303 = 0u;
      v300 = 0u;
      v301 = 0u;
      v298 = 0u;
      v299 = 0u;
      v297 = 0u;
      v296[0] = 0;
      v296[1] = 0;
      do
      {
        v236 = *(&v318 + v235 + 16);
        *(&v327 + v235) = *(&v318 + v235);
        v237 = vmulq_f32(v236, v236);
        *v237.i8 = vadd_f32(*&vextq_s8(v237, v237, 8uLL), *v237.i8);
        v238 = vpadd_f32(*v237.i8, *v237.i8);
        v239.i64[0] = 0x3F0000003F000000;
        v239.i64[1] = 0x3F0000003F000000;
        v240.i64[0] = 0x3F0000003F000000;
        v240.i64[1] = 0x3F0000003F000000;
        if (*v238.i32 != 0.0)
        {
          v240 = vdivq_f32(v236, vsqrtq_f32(vdupq_lane_s32(v238, 0)));
        }

        *(&v327 + v235 + 16) = v240;
        v241 = *(&v327 + v235);
        v242 = *(&v327 + v235 + 16);
        v243 = vmulq_f32(v240, v241);
        *v243.i8 = vadd_f32(*&vextq_s8(v243, v243, 8uLL), *v243.i8);
        v244 = &v305[v235 / 0x10];
        *v244 = vsubq_f32(v241, vmulq_n_f32(v240, vpadd_f32(*v243.i8, *v243.i8).f32[0]));
        v244[1] = v242;
        v245 = (&v341 + v235);
        v245->i64[0] = 0;
        v245->i64[1] = 0;
        v246 = *(&v318 + v235);
        v247 = vmulq_f32(v246, v246);
        *v247.i8 = vadd_f32(*&vextq_s8(v247, v247, 8uLL), *v247.i8);
        v248 = vpadd_f32(*v247.i8, *v247.i8);
        if (*v248.i32 != 0.0)
        {
          v239 = vdivq_f32(v246, vsqrtq_f32(vdupq_lane_s32(v248, 0)));
        }

        v245[1] = v239;
        v249 = (&v297 + v235);
        v249->i64[0] = 0;
        v249->i64[1] = 0;
        v249[1] = v245[1];
        v235 += 32;
      }

      while (32 * v11 != v235);
      v295 = 0;
      compute_error_squared_rgba(v229, a2, v305, &v297, v296, &v295 + 1, &v295);
      v251 = 0;
      v252 = *(&v295 + 1);
      LODWORD(v253) = v295;
      v254 = 16;
      do
      {
        LOBYTE(v250) = *(v229 + v251 + 4);
        v255 = v10 * LODWORD(v250);
        v256 = *(v296 + v251);
        v257 = vmulq_n_f32(*(&v327 + v254), v256);
        v258 = vmulq_n_f32(*(&v341 + v254), v256);
        v259 = vmulq_n_f32(vmulq_f32(v257, v257), v255);
        *v259.i8 = vadd_f32(*&vextq_s8(v259, v259, 8uLL), *v259.i8);
        v252 = v252 + vpadd_f32(*v259.i8, *v259.i8).f32[0];
        v260 = vmulq_n_f32(vmulq_f32(v258, v258), v255);
        *v260.i8 = vadd_f32(*&vextq_s8(v260, v260, 8uLL), *v260.i8);
        v250 = vpadd_f32(*v260.i8, *v260.i8).f32[0];
        v253 = v253 + v250;
        ++v251;
        v254 += 32;
      }

      while (v11 != v251);
      v295 = __PAIR64__(LODWORD(v252), LODWORD(v253));
      insert_result(v293, v252, v283, __b, v315);
      insert_result(v293, *&v295, v283, v314, v313);
      v227 = v286 + 1;
    }

    while (v286 + 1 != v289);
  }

  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  if (a6)
  {
    v261 = 0;
    v262 = v293;
    if (v293 <= 1)
    {
      v262 = 1;
    }

    v263 = 2 * v262;
    v264 = v315;
    v265 = v313;
    do
    {
      v266 = *v264++;
      *(&v327 + v261) = *(block_size_descriptor::get_raw_partition_info(a1, v290, v266) + 2);
      v267 = *v265++;
      *(&v327 + (v261 + 1)) = *(block_size_descriptor::get_raw_partition_info(a1, v290, v267) + 2);
      v261 += 2;
    }

    while (v263 != v261);
  }

  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v268 = 2 * v293;
  v318 = 0u;
  result = 0;
  if (v268)
  {
    v270 = &v327;
    while (1)
    {
      v272 = *v270++;
      v271 = v272;
      v273 = v272 >> 6;
      v274 = *(&v318 + v273);
      v275 = 1 << v272;
      if (((1 << v272) & v274) == 0)
      {
        *(a5 + 4 * result) = v271;
        *(&v318 + v273) = v275 | v274;
        result = (result + 1);
        if (result == v293)
        {
          break;
        }
      }

      if (!--v268)
      {
        return result;
      }
    }

    return v293;
  }

  return result;
}

uint64_t block_size_descriptor::get_raw_partition_info(block_size_descriptor *this, int a2, unsigned int a3)
{
  if (a3 == 0xFFFF || *(this + (a2 - 1) + 12) <= a3)
  {
    block_size_descriptor::get_raw_partition_info();
  }

  v3 = (a2 << 10) - 2048;
  if (a2 == 1)
  {
    v3 = 3072;
  }

  return this + 1088 * v3 + 1088 * a3 + 11317232;
}

uint64_t insert_result(uint64_t result, float a2, uint64_t a3, float *a4, unsigned int *a5)
{
  if (!result)
  {
    insert_result();
  }

  v5 = (result - 1);
  if (a4[v5] > a2)
  {
    v6 = 0;
    while (a4[v6] < a2)
    {
      if (result == ++v6)
      {
        return result;
      }
    }

    if (v5 > v6)
    {
      v7 = &a4[v5];
      v8 = &a5[v5];
      v9 = v7;
      v10 = v8;
      do
      {
        --v5;
        v11 = *(v9-- - 1);
        *v7 = v11;
        v12 = *--v10;
        *v8 = v12;
        v8 = v10;
        v7 = v9;
      }

      while (v5 > v6);
    }

    a4[v6] = a2;
    a5[v6] = a3;
  }

  return result;
}

void find_best_partition_candidates()
{
  __assert_rtn("kmeans_update", "astcenc_find_best_partitioning.cpp", 217, "texel_count > 0");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 389, "mismatch_counts[i] < bsd.texel_count");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 388, "mismatch_counts[i] < BLOCK_MAX_KMEANS_TEXELS");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 380, "mismatch_counts[i] < bsd.texel_count");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 379, "mismatch_counts[i] < BLOCK_MAX_KMEANS_TEXELS");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 398, "mismatch_counts[i] < bsd.texel_count");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 397, "mismatch_counts[i] < BLOCK_MAX_KMEANS_TEXELS");
}

{
  __assert_rtn("count_partition_mismatch_bits", "astcenc_find_best_partitioning.cpp", 372, "active_count > 0");
}

{
  __assert_rtn("kmeans_assign", "astcenc_find_best_partitioning.cpp", 153, "texel_count > 0");
}

{
  __assert_rtn("kmeans_init", "astcenc_find_best_partitioning.cpp", 66, "texel_count > 0");
}

{
  __assert_rtn("find_best_partition_candidates", "astcenc_find_best_partitioning.cpp", 577, "partition_search_limit > 0");
}

{
  __assert_rtn("find_best_partition_candidates", "astcenc_find_best_partitioning.cpp", 576, "partition_count > 0");
}

int32x4_t rgba_delta_unpack(int32x4_t *a1, int32x4_t *a2, uint32x4_t a3, int8x16_t a4)
{
  v4.i64[0] = 0x8000000080;
  v4.i64[1] = 0x8000000080;
  v5 = vorrq_s8(vshrq_n_u32(a3, 1uLL), vandq_s8(a4, v4));
  v6 = vshrq_n_u32(a4, 1uLL);
  v4.i64[0] = 0x3F0000003FLL;
  v4.i64[1] = 0x3F0000003FLL;
  v7.i64[0] = 0x2000000020;
  v7.i64[1] = 0x2000000020;
  v8 = vorrq_s8((*&vtstq_s32(v6, v7) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), vandq_s8(v6, v4));
  v9 = vaddq_s32(v8, v5);
  if (v8.i32[0] + v8.i32[1] + v8.i32[2] < 0)
  {
    v10.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v5, 2), v5), 1uLL).u64[0];
    v10.i64[1] = v5.i64[1];
    v5.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v9, 2), v9), 1uLL).u64[0];
    v5.i64[1] = v9.i64[1];
    v9 = v10;
  }

  v11.i64[0] = 0xFF000000FFLL;
  v11.i64[1] = 0xFF000000FFLL;
  *a1 = vminq_s32(vmaxq_s32(v5, 0), v11);
  result = vminq_s32(vmaxq_s32(v9, 0), v11);
  *a2 = result;
  return result;
}

__n128 *rgba_unpack(__n128 *result, __n128 *a2, __n128 a3, __n128 a4)
{
  v4 = vadd_s32(vadd_s32(vzip1_s32(a3.n128_u64[0], a4.n128_u64[0]), vzip2_s32(a3.n128_u64[0], a4.n128_u64[0])), vzip1_s32(*&vextq_s8(a3, a3, 8uLL), *&vextq_s8(a4, a4, 8uLL)));
  if (vcgt_s32(v4, vdup_lane_s32(v4, 1)).u8[0])
  {
    v5.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a3, 2), a3), 1uLL).u64[0];
    v5.n128_u64[1] = a3.n128_u64[1];
    a3.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a4, 2), a4), 1uLL).u64[0];
    a3.n128_u64[1] = a4.n128_u64[1];
    a4 = v5;
  }

  *result = a3;
  *a2 = a4;
  return result;
}

__n128 unpack_color_endpoints(unsigned int a1, int a2, unsigned __int8 *a3, _BYTE *a4, _BYTE *a5, int32x4_t *a6, __n128 *a7, __n128 a8, int32x4_t a9, int32x4_t a10, int32x4_t a11)
{
  *a4 = 0;
  *a5 = 0;
  switch(a2)
  {
    case 0:
      v17 = *a3;
      v18 = a3[1];
      goto LABEL_99;
    case 1:
      v113 = a3[1];
      v17 = v113 & 0xC0 | (*a3 >> 2);
      v18 = v17 + (v113 & 0x3F);
      if (v18 >= 0xFF)
      {
        v18 = 255;
      }

LABEL_99:
      a8.n128_u32[3] = 255;
      v114.i32[0] = v17;
      v114.i32[1] = v17;
      v114.i64[1] = v17 | 0xFF00000000;
      a8.n128_u32[0] = v18;
      *a6 = v114;
      a8.n128_u32[1] = v18;
      a8.n128_u32[2] = v18;
      goto LABEL_104;
    case 2:
      *a4 = 1;
      v37 = *a3;
      v38 = a3[1];
      v39 = 16 * v37 - 8;
      v40 = v38 >= v37;
      if (v38 >= v37)
      {
        v41 = v37 << 8;
      }

      else
      {
        v41 = (v38 << 8) | 0x80;
      }

      if (v40)
      {
        v42 = 16 * v38;
      }

      else
      {
        v42 = v39;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = v41;
      a8.n128_u32[1] = v41;
      v43.i32[3] = 30720;
      a8.n128_u32[2] = v41;
      v44 = 16 * v42;
      goto LABEL_40;
    case 3:
      *a4 = 1;
      v57 = *a3;
      v58 = *a3;
      v59 = a3[1];
      v60 = (16 * v59) & 0xF00 | (2 * v58);
      v61 = (16 * v59) & 0xE00 | (4 * (v58 & 0x7F));
      v62 = v57 >= 0;
      if (v57 < 0)
      {
        v63 = 2;
      }

      else
      {
        v63 = 1;
      }

      if (v62)
      {
        v64 = 30;
      }

      else
      {
        v64 = 124;
      }

      if (v62)
      {
        v61 = v60;
      }

      v65 = ((v59 << v63) & v64) + v61;
      if (v65 >= 0xFFF)
      {
        v65 = 4095;
      }

      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * v61;
      a8.n128_u32[1] = 16 * v61;
      v43.i32[3] = 30720;
      a8.n128_u32[2] = 16 * v61;
      v44 = 16 * v65;
LABEL_40:
      v43.i32[0] = v44;
      *a6 = a8;
      v43.i32[1] = v44;
      goto LABEL_93;
    case 4:
      a8.n128_u8[0] = *a3;
      v21 = a8.n128_u64[0];
      v21.i8[2] = a3[2];
      v22 = vzip1_s16(v21, v21);
      v22.i16[2] = a8.n128_u16[0];
      a8.n128_u8[0] = a3[1];
      v23 = a8.n128_u64[0];
      v23.i8[2] = a3[3];
      v24 = vzip1_s16(v23, v23);
      v24.i16[2] = a8.n128_u16[0];
      v25 = vmovl_u16(v22);
      v26.i64[0] = 0xFF000000FFLL;
      v26.i64[1] = 0xFF000000FFLL;
      *a6 = vandq_s8(v25, v26);
      a8 = vandq_s8(vmovl_u16(v24), v26);
      goto LABEL_104;
    case 5:
      a8.n128_u8[0] = a3[1];
      a8.n128_u8[4] = a3[3];
      v115 = *&vtst_s32(a8.n128_u64[0], 0x4000000040) & 0xFFFFFF80FFFFFF80;
      *a9.i8 = vorr_s8(v115, vand_s8(a8.n128_u64[0], 0x7E0000007ELL));
      LOBYTE(v115) = *a3;
      BYTE4(v115) = a3[2];
      a8.n128_u64[0] = vorr_s8(vand_s8(vadd_s32(a8.n128_u64[0], a8.n128_u64[0]), 0x10000000100), vand_s8(v115, 0xFF000000FFLL));
      *a9.i8 = vmin_s32(vmax_s32(vsra_n_u32(vshr_n_s32(*a9.i8, 1uLL), a8.n128_u64[0], 1uLL), 0), 0xFF000000FFLL);
      v116 = vzip1q_s32(a9, a9);
      v116.i32[2] = a9.i32[0];
      a8.n128_u64[0] = vshr_n_u32(a8.n128_u64[0], 1uLL);
      v117 = vzip1q_s32(a8, a8);
      v117.i32[2] = a8.n128_u32[0];
      *a6 = v117;
      *a7 = v116;
      goto LABEL_112;
    case 6:
      v126.i32[0] = *a3;
      v126.i32[1] = a3[1];
      v126.i64[1] = a3[2];
      v127 = v126;
      v127.i32[3] = 255;
      v128 = vmulq_s32(vdupq_n_s32(a3[3]), v126);
      *a7 = v127;
      a8 = vshrq_n_s32(v128, 8uLL);
      a8.n128_u32[3] = 255;
      goto LABEL_107;
    case 7:
      *a4 = 1;
      v66 = *a3;
      v67 = a3[1];
      v68 = a3[2];
      v69 = a3[3];
      v70 = (v68 >> 4) & 8 | (v67 >> 5) & 4;
      v71 = v66 >> 6 == 3;
      if (v66 >> 6 == 3)
      {
        v72 = 5;
      }

      else
      {
        v72 = 4;
      }

      if (v66 >> 6 == 3)
      {
        v73 = 0;
      }

      else
      {
        v73 = v66 >> 6;
      }

      v62 = v70 == 12;
      v74 = v70 == 12;
      v75 = v70 >> 2;
      if (v62)
      {
        v75 = v73;
      }

      else
      {
        v72 = v66 >> 6;
      }

      v76 = (v67 >> 6) & 1;
      v77 = (v67 >> 5) & 1;
      v78 = (v68 >> 6) & 1;
      v79 = (v68 >> 5) & 1;
      v80 = (v69 >> 6) & 1;
      v81 = 1 << v72;
      v82 = v76 << 6;
      if (((1 << v72) & 0x30) == 0)
      {
        v82 = 0;
      }

      v83 = v82 & 0xFFFFFFE0 | v67 & 0x1F;
      v84 = 32 * v77;
      v85 = v78 << 6;
      if ((v81 & 0x30) == 0)
      {
        v85 = 0;
      }

      if ((v81 & 0x3A) == 0)
      {
        v84 = 0;
      }

      v86 = v83 | v84;
      v87 = v85 & 0xFFFFFFE0 | v68 & 0x1F;
      v88 = 32 * v79;
      if ((v81 & 0x3A) == 0)
      {
        v88 = 0;
      }

      v89 = v87 | v88;
      v90 = (16 * v81) & (v79 << 6);
      v91 = (v69 >> 1) & 0x40;
      if ((v81 & 0x3B) == 0)
      {
        v91 = 0;
      }

      v92 = v78 << 7;
      if (v72 > 3)
      {
        v92 = 0;
      }

      v93 = v77 << 8;
      v94 = v76 << 8;
      if ((v81 & 0xA) == 0)
      {
        v94 = 0;
      }

      if ((v81 & 5) == 0)
      {
        v93 = 0;
      }

      v95 = v76 << 9;
      if ((v81 & 5) == 0)
      {
        v95 = 0;
      }

      v96 = v79 << 10;
      if (v72)
      {
        v96 = 0;
      }

      v97 = hdr_rgbo_unpack(unsigned char const*,vint4 &,vint4 &)::shamts[v72];
      v98 = (v92 & 0xFFFFFFC0 | v66 & 0x3F | v96 | v91 | v90 | (8 * v81) & (v80 << 7) | v93 | v94 | v95 | (16 * v69) & (v81 << 8) & 0x200 | (v81 << 9) & (v80 << 10)) << v97;
      v99 = v86 << v97;
      v100 = v89 << v97;
      v101 = !v74 || !v71;
      if (v74 && v71)
      {
        v102 = v100;
      }

      else
      {
        v102 = v98 - v100;
      }

      if (v101)
      {
        v103 = v98 - v99;
      }

      else
      {
        v103 = v99;
      }

      if (v75 == 1)
      {
        v104 = v98;
      }

      else
      {
        v104 = v103;
      }

      if (v75 == 1)
      {
        v105 = v103;
      }

      else
      {
        v105 = v98;
      }

      v106 = v75 == 2;
      if (v75 == 2)
      {
        v107 = v98;
      }

      else
      {
        v107 = v102;
      }

      if (!v106)
      {
        v103 = v104;
        v102 = v105;
      }

      if ((v81 & 0x3D) != 0)
      {
        v108 = 63;
      }

      else
      {
        v108 = 31;
      }

      v109 = v108 & v69;
      v110 = v80 << 6;
      if ((v81 & 0x2D) == 0)
      {
        v110 = 0;
      }

      v111 = (v69 & (32 * v81) & 0x80 | v110 | v109) << v97;
      a8.n128_u32[3] = 30720;
      a8.n128_u32[0] = 16 * ((v102 - v111) & ~((v102 - v111) >> 31));
      a8.n128_u32[1] = 16 * ((v103 - v111) & ~((v103 - v111) >> 31));
      a8.n128_u32[2] = 16 * ((v107 - v111) & ~((v107 - v111) >> 31));
      v43.i32[3] = 30720;
      *a6 = a8;
      v43.i32[0] = 16 * (v102 & ~(v102 >> 31));
      v44 = 16 * (v107 & ~(v107 >> 31));
      v43.i32[1] = 16 * (v103 & ~(v103 >> 31));
LABEL_93:
      v43.i32[2] = v44;
      *a7 = v43;
      goto LABEL_94;
    case 8:
      a8.n128_u32[3] = 0;
      a8.n128_u32[0] = *a3;
      a8.n128_u32[1] = a3[2];
      a8.n128_u32[2] = a3[4];
      v133.i32[0] = a3[1];
      v133.i32[1] = a3[3];
      v133.i64[1] = a3[5];
      if (a8.n128_u32[1] + a8.n128_u32[0] + a8.n128_u32[2] > v133.i32[1] + v133.i32[0] + v133.i32[2])
      {
        v134.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a8, 2), a8), 1uLL).u64[0];
        v134.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v133, 2), v133), 1uLL).u64[0];
        a8.n128_u64[1] = a3[5];
        v133 = v134;
      }

      *a6 = a8;
      *a7 = v133;
      goto LABEL_111;
    case 9:
      v29.i32[0] = *a3;
      v29.i32[1] = a3[2];
      v29.i64[1] = a3[4];
      v30.i32[0] = a3[1];
      v30.i32[1] = a3[3];
      v30.i64[1] = a3[5];
      v31 = vshrq_n_u32(v30, 1uLL);
      v32 = vsraq_n_u32((*&v30 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v29, 1uLL);
      v33 = vorrq_s8((*&vtstq_s32((*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v31 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v31 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v34 = vaddq_s32(v33, v32);
      if (v33.i32[0] + v33.i32[1] + v33.i32[2] < 0)
      {
        v35.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v32, 2), v32), 1uLL).u64[0];
        v35.i64[1] = v32.i64[1];
        v32.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v34, 2), v34), 1uLL).u64[0];
        v32.i64[1] = v34.i64[1];
        v34 = v35;
      }

      v36.i64[0] = 0xFF000000FFLL;
      v36.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v32, 0), v36);
      a8 = vminq_s32(vmaxq_s32(v34, 0), v36);
      *a7 = a8;
LABEL_111:
      a6->i32[3] = 255;
      a7->n128_u32[3] = 255;
      goto LABEL_112;
    case 10:
      v129.i32[0] = *a3;
      v129.i32[1] = a3[1];
      v130 = a3[4];
      v129.i32[2] = a3[2];
      v129.i32[3] = v130;
      v131 = v129;
      v131.i32[3] = a3[5];
      v132 = vmulq_s32(vdupq_n_s32(a3[3]), v129);
      *a7 = v131;
      a8 = vshrq_n_s32(v132, 8uLL);
      a8.n128_u32[3] = v130;
LABEL_107:
      *a6 = a8;
      goto LABEL_112;
    case 11:
      *a4 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
LABEL_94:
      if (a1 == 3)
      {
        a6->i32[3] = 30720;
        a7->n128_u32[3] = 30720;
        v112 = 1;
        *a5 = 1;
LABEL_116:
        a8.n128_u32[0] = *a4;
        a8.n128_u32[1] = v112;
        a8.n128_u64[0] = vneg_s32(a8.n128_u64[0]);
        v136 = vzip1q_s32(a8, a8);
        v136.i32[2] = a8.n128_u32[0];
        v137.i64[0] = 0x100000001;
        v137.i64[1] = 0x100000001;
        v135 = vbslq_s8(v136, v137, vdupq_n_s32(0x101u));
        goto LABEL_118;
      }

      a6->i32[3] = 255;
      a7->n128_u32[3] = 255;
      *a5 = 0;
LABEL_112:
      if (a1 >= 2)
      {
        v112 = *a5;
        goto LABEL_116;
      }

      if (*a4 == 1)
      {
        *a6 = xmmword_18622EF30;
        *a7 = xmmword_18622EF30;
        *a4 = 0;
        *a5 = 0;
        v135.i64[0] = 0x100000001;
        v135.i64[1] = 0x100000001;
      }

      else
      {
        v135 = vdupq_n_s32(0x101u);
      }

LABEL_118:
      *a6 = vmulq_s32(*a6, v135);
      result = vmulq_s32(*a7, v135);
      *a7 = result;
      return result;
    case 12:
      a10.i32[0] = *a3;
      a10.i32[1] = a3[2];
      a10.i32[2] = a3[4];
      a8 = a10;
      a8.n128_u32[3] = a3[6];
      a11.i32[0] = a3[1];
      a11.i32[1] = a3[3];
      a11.i32[2] = a3[5];
      v27 = a11;
      v27.i32[3] = a3[7];
      if (a10.i32[1] + a10.i32[0] + a10.i32[2] > (a11.i32[1] + a11.i32[0] + a11.i32[2]))
      {
        v28.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a10, 2), a8), 1uLL).u64[0];
        v28.i64[1] = a8.n128_i64[1];
        a8.n128_u64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(a11, 2), v27), 1uLL).u64[0];
        a8.n128_u64[1] = v27.u64[1];
        v27 = v28;
      }

      *a6 = a8;
      *a7 = v27;
      goto LABEL_112;
    case 13:
      v118.i32[0] = *a3;
      v118.i32[1] = a3[2];
      v118.i32[2] = a3[4];
      v118.i32[3] = a3[6];
      v119.i32[0] = a3[1];
      v119.i32[1] = a3[3];
      v119.i32[2] = a3[5];
      v119.i32[3] = a3[7];
      v120 = vshrq_n_u32(v119, 1uLL);
      v121 = vsraq_n_u32((*&v119 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v118, 1uLL);
      v122 = vorrq_s8((*&vtstq_s32((*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v120 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v120 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
      v123 = vaddq_s32(v122, v121);
      if (v122.i32[0] + v122.i32[1] + v122.i32[2] < 0)
      {
        v124.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v121, 2), v121), 1uLL).u64[0];
        v124.i64[1] = v121.i64[1];
        v121.i64[0] = vshrq_n_s32(vaddq_s32(vdupq_laneq_s32(v123, 2), v123), 1uLL).u64[0];
        v121.i64[1] = v123.i64[1];
        v123 = v124;
      }

      v125.i64[0] = 0xFF000000FFLL;
      v125.i64[1] = 0xFF000000FFLL;
      *a6 = vminq_s32(vmaxq_s32(v121, 0), v125);
      a8 = vminq_s32(vmaxq_s32(v123, 0), v125);
LABEL_104:
      *a7 = a8;
      goto LABEL_112;
    case 14:
      *a4 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
      v19 = a3[6];
      v20 = a3[7];
      goto LABEL_28;
    case 15:
      *a4 = 1;
      *a5 = 1;
      a8 = hdr_rgb_unpack(a3, a6, a7);
      v45 = a3[6];
      v46 = a3[7];
      v47 = (v46 >> 6) & 2 | (v45 >> 7);
      v48 = v45 & 0x7F;
      v49 = v46 & 0x7F;
      v50 = (v49 << (v47 + 1)) & 0x780 | v48;
      v51 = v50 << (4 - v47);
      v52 = ((0x3Fu >> v47) & v46 ^ (0x20u >> v47)) - (0x20u >> v47) + v50;
      v53 = v52 << (4 - v47);
      if (v53 >= 4095)
      {
        v53 = 4095;
      }

      if (v52 >= 0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 0;
      }

      v55 = 32 * v48;
      v56 = 32 * v49;
      if (v47 == 3)
      {
        v54 = v56;
      }

      else
      {
        v55 = v51;
      }

      v19 = 16 * v55;
      v20 = 16 * v54;
LABEL_28:
      a6->i32[3] = v19;
      a7->n128_u32[3] = v20;
      goto LABEL_112;
    default:
      goto LABEL_112;
  }
}

__n128 hdr_rgb_unpack(unsigned __int8 *a1, _OWORD *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = (v8 >> 6) & 2 | (v7 >> 7);
  if (v9 == 3)
  {
    HIDWORD(v10) = 30720;
    LODWORD(v10) = v3 << 8;
    DWORD1(v10) = v5 << 8;
    DWORD2(v10) = (v7 & 0x7F) << 9;
    v11 = v4 << 8;
    *a2 = v10;
    v12 = v6 << 8;
    v13 = (v8 & 0x7F) << 9;
  }

  else
  {
    v14 = (v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4;
    v15 = v7 & 0x7F;
    v16 = v8 & 0x7F;
    v17 = (v6 >> 6) & 1;
    v18 = (v7 >> 6) & 1;
    v19 = (v8 >> 6) & 1;
    v20 = (v7 >> 5) & 1;
    v21 = (v8 >> 5) & 1;
    v22 = 1 << ((v5 >> 6) & 2 | (v4 >> 7) | (v6 >> 5) & 4);
    v23 = (8 * v5) & 0x200;
    if ((v22 & 0xA4) == 0)
    {
      v23 = 0;
    }

    v24 = v20 << 9;
    if ((v22 & 0x50) == 0)
    {
      v24 = 0;
    }

    v25 = v21 << 10;
    if ((v22 & 0x50) == 0)
    {
      v25 = 0;
    }

    v26 = v17 << 10;
    if ((v22 & 0xA0) == 0)
    {
      v26 = 0;
    }

    v27 = v18 << 11;
    if (v14 < 6)
    {
      v27 = 0;
    }

    v28 = v27 & 0xFFFFFEFF | (((v4 >> 6) & 1) << 8) | v23 | (v22 << 6) & (v18 << 9) | v24 | v25 | v26 | v3;
    v29 = (16 * v22) & (v17 << 6) & 0xFFFFFFC0 | v4 & 0x3F;
    v30 = v19 << 6;
    if ((v22 & 0xE8) != 0)
    {
      v31 = v19 << 6;
    }

    else
    {
      v31 = 0;
    }

    v32 = v29 | v31 | (4 * v22) & (v18 << 7);
    if ((v22 & 0x5B) != 0)
    {
      v33 = 127;
    }

    else
    {
      v33 = 63;
    }

    v34 = v33 & v6;
    v35 = v33 & v5;
    v36 = v19 << 7;
    if ((v22 & 0x12) == 0)
    {
      v36 = 0;
    }

    v37 = v34 | v36;
    if ((v22 & 0x12) != 0)
    {
      v38 = v18 << 7;
    }

    else
    {
      v38 = 0;
    }

    v39 = v35 | v38;
    v40 = 32 * v20;
    v41 = 32 * v21;
    if ((v22 & 0xAF) == 0)
    {
      v41 = 0;
    }

    v42 = v41 | v16;
    if ((v22 & 0xAF) == 0)
    {
      v40 = 0;
    }

    v43 = v40 | v15;
    v44 = v18 << 6;
    if ((v22 & 5) == 0)
    {
      v30 = 0;
    }

    v45 = v42 | v30;
    if ((v22 & 5) != 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0;
    }

    v47 = -hdr_rgb_unpack(unsigned char const*,vint4 &,vint4 &)::dbits_tab[v14];
    v48 = (v43 | v46) << v47 >> v47;
    v49 = v45 << v47 >> v47;
    v50 = (v14 >> 1) ^ 3;
    v51 = v28 << v50;
    v52 = v28 - v39;
    v53 = v52 << v50;
    v54 = v28 - v37;
    v55 = v54 << v50;
    v56 = (v52 - (v32 + v48)) << v50;
    v57 = (v54 - (v32 + v49)) << v50;
    v58 = ((v28 - v32) << v50) & ~(((v28 - v32) << v50) >> 31);
    if (v58 >= 4095)
    {
      v58 = 4095;
    }

    v59 = v56 & ~(v56 >> 31);
    if (v59 >= 4095)
    {
      v59 = 4095;
    }

    v60 = v57 & ~(v57 >> 31);
    if (v60 >= 4095)
    {
      v60 = 4095;
    }

    if (v51 >= 0xFFF)
    {
      v51 = 4095;
    }

    v61 = v53 & ~(v53 >> 31);
    if (v61 >= 4095)
    {
      v61 = 4095;
    }

    if ((v55 & ~(v55 >> 31)) >= 4095)
    {
      v62 = 4095;
    }

    else
    {
      v62 = v55 & ~(v55 >> 31);
    }

    if (v9 == 1)
    {
      v63 = v61;
    }

    else
    {
      v63 = v51;
    }

    if (v9 == 1)
    {
      v64 = v51;
    }

    else
    {
      v64 = v61;
    }

    if (v9 == 1)
    {
      v65 = v59;
    }

    else
    {
      v65 = v58;
    }

    if (v9 == 1)
    {
      v66 = v58;
    }

    else
    {
      v66 = v59;
    }

    v67 = v9 == 2;
    if (v9 == 2)
    {
      v68 = v62;
    }

    else
    {
      v68 = v63;
    }

    if (v67)
    {
      v62 = v51;
    }

    else
    {
      v61 = v64;
    }

    if (v67)
    {
      v69 = v60;
    }

    else
    {
      v69 = v65;
    }

    if (v67)
    {
      v60 = v58;
    }

    else
    {
      v59 = v66;
    }

    HIDWORD(v70) = 30720;
    LODWORD(v70) = 16 * v69;
    DWORD1(v70) = 16 * v59;
    v11 = 16 * v68;
    DWORD2(v70) = 16 * v60;
    *a2 = v70;
    v12 = 16 * v61;
    v13 = 16 * v62;
  }

  result.n128_u64[0] = __PAIR64__(v12, v11);
  result.n128_u64[1] = v13 | 0x780000000000;
  *a3 = result;
  return result;
}

uint64_t pack_color_endpoints(int a1, _BYTE *a2, uint64_t a3, float32x4_t a4, float32x4_t a5, int8x16_t a6, float32x4_t a7, double a8, double a9, double a10)
{
  v234 = *MEMORY[0x1E69E9840];
  if ((a3 - 21) <= 0xFFFFFFEE)
  {
    pack_color_endpoints();
  }

  v11 = a3;
  v13 = 0;
  v14 = vdupq_n_s32(0x477FFF00u);
  v15 = vdupq_n_s32(0x3B7F00FFu);
  v16 = vminnmq_f32(vmaxnmq_f32(a4, 0), v14);
  v229 = 0uLL;
  v17 = vminnmq_f32(vmaxnmq_f32(a5, 0), v14);
  v18 = vmulq_f32(v16, v15);
  v228 = 0uLL;
  v19 = vmulq_f32(v17, v15);
  v227 = 0uLL;
  v226 = 0uLL;
  if (a1 <= 7)
  {
    if (a1 <= 3)
    {
      if ((a1 - 2) >= 2)
      {
        if (!a1)
        {
          v13 = 0;
          v46 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v19.i8), vzip2_s32(*v18.i8, *v19.i8))), vdup_n_s32(0x3EAAAAABu));
          v47 = v46.f32[1];
          v48 = vaddv_f32(v46) * 0.5;
          if (v46.f32[0] > v46.f32[1])
          {
            v47 = v48;
            v46.f32[0] = v48;
          }

          v49 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
          *a2 = v49[((v46.f32[0] - (v46.f32[0] + 0.5)) >= -0.1) | (2 * (v46.f32[0] + 0.5))];
          a2[1] = v49[((v47 - (v47 + 0.5)) >= -0.1) | (2 * (v47 + 0.5))];
        }
      }

      else
      {
        v20 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8)));
        v21 = vdup_n_s32(0x3EAAAAABu);
        v22 = vmul_f32(v20, v21);
        v21.f32[0] = vaddv_f32(v22) * 0.5;
        v23 = vcvt_s32_f32(vadd_f32(vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v22.f32[1] < v22.f32[0]), 0x1FuLL)), vdup_lane_s32(v21, 0), v22), 0x3F0000003F000000));
        if (v23.i32[1] - v23.i32[0] < 2049)
        {
          if ((((v23.i32[0] + 16) >> 5) & ~((v23.i32[0] + 16) >> 31)) >= 2047)
          {
            v50 = 2047;
          }

          else
          {
            v50 = ((v23.i32[0] + 16) >> 5) & ~((v23.i32[0] + 16) >> 31);
          }

          v24 = (a3 - 4);
          v51 = &color_unquant_to_uquant_tables + 512 * v24;
          v52 = v51[(2 * (v50 & 0x7F)) | 1];
          if ((v52 & 0x80000000) == 0 && ((((v23.i32[1] + 16) >> 5) & ~((v23.i32[1] + 16) >> 31)) >= 2047 ? (v53 = 2047) : (v53 = ((v23.i32[1] + 16) >> 5) & ~((v23.i32[1] + 16) >> 31)), (v54 = v53 - (v50 & 0x780 | v52), v54 <= 0xF) && (v55 = (v50 >> 3) & 0xF0, v56 = v51[(2 * (v54 | v55)) | 1], v55 == (v56 & 0xF0))) || ((((v23.i32[0] + 32) >> 6) & ~((v23.i32[0] + 32) >> 31)) >= 1023 ? (v57 = 1023) : (v57 = ((v23.i32[0] + 32) >> 6) & ~((v23.i32[0] + 32) >> 31)), (v52 = v51[(2 * (v57 & 0x7F)) | 0x101], v52 < 0) && ((((v23.i32[1] + 32) >> 6) & ~((v23.i32[1] + 32) >> 31)) >= 1023 ? (v58 = 1023) : (v58 = ((v23.i32[1] + 32) >> 6) & ~((v23.i32[1] + 32) >> 31)), (v59 = v58 - (v57 & 0x380 | v52 & 0x7F), v59 <= 0x1F) && (v60 = (v57 >> 2) & 0xE0, v56 = v51[(2 * (v59 | v60)) | 1], v60 == (v56 & 0xE0)))))
          {
            *a2 = v52;
            a2[1] = v56;
            return 3;
          }
        }

        else
        {
          v24 = (a3 - 4);
        }

        v61 = vmin_s32(vmax_s32(vshr_n_s32(vadd_s32(v23, 0x8000000080), 8uLL), 0), 0xFF000000FFLL);
        v62 = vsub_s32(vshl_n_s32(v61, 8uLL), v23);
        v63 = vmul_s32(v62, v62);
        v64.i32[0] = v23.i32[0];
        v64.i32[1] = v23.i32[1] + 256;
        v65 = vmin_s32(vmax_s32(vshr_n_s32(v64, 8uLL), 0), 0xFF000000FFLL);
        v66 = vadd_s32(vsub_s32(vshl_n_s32(v65, 8uLL), v23), 0xFFFFFF8000000080);
        v67 = vmul_s32(v66, v66);
        v68 = vext_s8(v63, v67, 4uLL);
        v63.i32[1] = v67.i32[1];
        v69 = vadd_s32(v63, v68);
        v70 = vcgt_u32(vdup_lane_s32(v69, 1), v69).u8[0];
        if (v70)
        {
          v71 = v61.i32[0];
        }

        else
        {
          v71 = v65.i32[1];
        }

        v72 = v65.i32[0];
        if (v70)
        {
          v72 = v61.i32[1];
        }

        v73 = &color_unquant_to_uquant_tables + 512 * v24;
        *a2 = v73[(2 * v71) | 1];
        a2[1] = v73[(2 * v72) | 1];
        return 2;
      }

      return v13;
    }

    if (a1 == 4)
    {
      v77 = (*&v18.i32[2] + vaddv_f32(*v18.i8)) * 0.33333;
      v78 = (*&v19.i32[2] + vaddv_f32(*v19.i8)) * 0.33333;
      v79 = (v77 + 0.5);
      if (a3 >= 0x13)
      {
        v81 = 2 * v79;
        v83 = (a3 - 4);
        v86 = (v78 + 0.5);
        v80 = (*&v18.i32[3] + 0.5);
        v89 = 2 * v86;
        v82 = 2 * v80;
        v87 = (*&v19.i32[3] + 0.5);
        v90 = 2 * v87;
      }

      else
      {
        v80 = (*&v18.i32[3] + 0.5);
        v81 = 2 * v79;
        v82 = 2 * v80;
        v83 = (a3 - 4);
        v84 = &color_unquant_to_uquant_tables + 512 * v83;
        v85 = v84[(4 * ((v77 + 0.5) & 0x7F)) | 1];
        v86 = (v78 + 0.5);
        v87 = (*&v19.i32[3] + 0.5);
        v88 = v85 | (((v79 >> 7) & 1) << 8);
        v89 = 2 * v86;
        v90 = 2 * v87;
        v91 = 2 * v86 - v88;
        if ((v91 - 64) >= 0xFFFFFF80)
        {
          v92 = v84[(4 * ((*&v18.i32[3] + 0.5) & 0x7F)) | 1];
          v93 = v92 & 0xFFFFFEFF | (((v80 >> 7) & 1) << 8);
          if (v90 - v93 - 64 >= 0xFFFFFF80)
          {
            v94 = v91 & 0x7F | ((v81 & 0x100) >> 1);
            v95 = v84[(2 * v94) | 1];
            if ((v94 ^ v95) <= 0x3F)
            {
              v96 = (v90 - v92) & 0x7F | ((v82 & 0x100) >> 1);
              v97 = v84[(2 * v96) | 1];
              if ((v96 ^ v97) <= 0x3F && (v95 & 0x7F) + v88 + (((v95 << 25) >> 31) & 0xFFFFFF80) <= 0x1FF && (v97 & 0x7F) + v93 + (((v97 << 25) >> 31) & 0xFFFFFF80) <= 0x1FF)
              {
                *a2 = v85;
                a2[1] = v95;
                a2[2] = v92;
                v13 = 5;
                a2[3] = v97;
                return v13;
              }
            }
          }
        }
      }

      if ((v77 - v79) >= -0.1)
      {
        ++v81;
      }

      v116 = &color_unquant_to_uquant_tables + 512 * v83;
      *a2 = v116[v81];
      if ((v78 - v86) < -0.1)
      {
        v117 = v89;
      }

      else
      {
        v117 = v89 + 1;
      }

      a2[1] = v116[v117];
      if ((*&v18.i32[3] - v80) < -0.1)
      {
        v118 = v82;
      }

      else
      {
        v118 = v82 + 1;
      }

      a2[2] = v116[v118];
      if ((*&v19.i32[3] - v87) < -0.1)
      {
        v119 = v90;
      }

      else
      {
        v119 = v90 + 1;
      }

      a2[3] = v116[v119];
      return 4;
    }

    if (a1 == 6)
    {
      quantize_rgbs(a2, a3, a6);
      return 6;
    }

    if (a1 != 7)
    {
      return v13;
    }

    v25.i64[0] = vaddq_f32(a7, vdupq_laneq_s32(a7, 3)).u64[0];
    v25.f32[2] = a7.f32[2] + a7.f32[3];
    v25.i32[3] = a7.i32[3];
    v26 = vminnmq_f32(vmaxnmq_f32(v25, 0), vdupq_n_s32(0x477FFF00u));
    if (*v26.i32 <= *&v26.i32[1] || *v26.i32 <= *&v26.i32[2])
    {
      if (*&v26.i32[1] <= *&v26.i32[2])
      {
        v139 = vrev64q_s32(v26);
        v115 = vextq_s8(v139, v139, 0xCuLL);
        v114 = 2;
      }

      else
      {
        v115.i64[0] = vrev64q_s32(v26).u64[0];
        v115.i64[1] = v26.i64[1];
        v114 = 1;
      }
    }

    else
    {
      v114 = 0;
      v115 = v26;
    }

    v140 = 0;
    v141 = 4 * v114;
    v142 = v114 | 0xC;
    v143 = vextq_s8(v115, v115, 4uLL).u64[0];
    v144 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
    v145 = vdup_n_s32(0x477FFF00u);
    while (1)
    {
      v146 = (&quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_cutoffs + 8 * v140);
      v147 = (*v115.i32 - *&v115.i32[1]) <= *v146 && (*v115.i32 - *&v115.i32[2]) <= *v146;
      if (!v147 || *&v115.i32[3] > v146[1])
      {
        goto LABEL_166;
      }

      v148 = quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_scales[v140];
      v149 = v140 == 4 ? v142 : v141 | v140;
      v150 = quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_rscales[v140];
      v151 = &quantize_hdr_rgbo(vfloat4,unsigned char *,quant_method)::mode_bits + 12 * v140;
      v153 = *(v151 + 1);
      v152 = *(v151 + 2);
      v154 = ((*v115.i32 * v148) + 0.5);
      v155 = v154 & 0x3F | (v149 << 6);
      do
      {
        v156 = v144[(2 * v155) | 1];
        v157 = v155 & 0xC0;
        v155 -= v157 != (v156 & 0xC0);
      }

      while (v157 != (v156 & 0xC0));
      *v10.i32 = v150 * (v154 & 0xFFFFFFC0 | v156 & 0x3F);
      v158 = vdup_lane_s32(v10, 0);
      v159 = vsub_f32(v158, v143);
      v160 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(vcgt_f32(v159, v145), v145, vmaxnm_f32(v159, 0)), v148), 0x3F0000003F000000));
      if (1 << v153 <= v160.i32[0] || 1 << v153 <= v160.i32[1])
      {
        goto LABEL_166;
      }

      if (v140 > 5)
      {
        v162 = 0;
      }

      else if (((1 << v140) & 5) != 0)
      {
        v162 = (v154 >> 9) & 1;
      }

      else if (((1 << v140) & 0xA) != 0)
      {
        v162 = (v154 >> 8) & 1;
      }

      else
      {
        v162 = (v160.i32[0] >> 6) & 1;
      }

      if (v140 >= 4)
      {
        if ((v140 - 4) >= 2)
        {
          v163 = 0;
        }

        else
        {
          v163 = (v160.i32[1] >> 6) & 1;
        }
      }

      else
      {
        v163 = (v154 >> 7) & 1;
      }

      if (v140 > 5)
      {
        v164 = 0;
      }

      else if (((1 << v140) & 0x3A) != 0)
      {
        v164 = (v160.i32[0] >> 5) & 1;
      }

      else
      {
        v164 = (v154 >> 8) & 1;
      }

      v165 = 0;
      if (v140 > 2)
      {
        if ((v140 - 3) < 3)
        {
          goto LABEL_157;
        }
      }

      else
      {
        switch(v140)
        {
          case 0:
            v165 = (v154 >> 10) & 1;
            break;
          case 1:
LABEL_157:
            v165 = (v160.i32[1] >> 5) & 1;
            break;
          case 2:
            v165 = (v154 >> 6) & 1;
            break;
        }
      }

      v166 = 1 << v152;
      v167 = 16 * v149;
      v168 = v160.i8[0] & 0x1F | (((v149 >> 2) & 1) << 7) | (v162 << 6) | (32 * v164);
      v169 = v163 << 6;
      do
      {
        v170 = v144[(2 * v168) | 1];
        v171 = v168 & 0xF0;
        v168 -= v171 != (v170 & 0xF0);
      }

      while (v171 != (v170 & 0xF0));
      v172 = v169 | v167 & 0x80 | v160.i8[4] & 0x1F | (32 * v165);
      do
      {
        v173 = v144[(2 * v172) | 1];
        v174 = v172 & 0xF0;
        v172 -= v174 != (v173 & 0xF0);
      }

      while (v174 != (v173 & 0xF0));
      v175.i32[0] = v170 & 0x1F;
      v175.i32[1] = v173 & 0xFFFFFF1F;
      v176 = vsub_f32(vsub_f32(v158, vmul_n_f32(vcvt_f32_s32(vorr_s8((*&v160 & 0xFFFFFFE0FFFFFFE0), v175)), v150)), v143);
      v176.f32[0] = *&v115.i32[3] + ((((*v10.i32 - *v115.i32) + v176.f32[0]) + v176.f32[1]) * 0.33333);
      v177 = fmaxf(v176.f32[0], 0.0);
      if (v176.f32[0] <= 1000000000.0)
      {
        v178 = v177;
      }

      else
      {
        v178 = *"(knN";
      }

      v179 = ((v148 * v178) + 0.5);
      if (v166 > v179)
      {
        v209 = v154 >> 9;
        if (v140 != 1)
        {
          LOBYTE(v209) = v179 >> 5;
        }

        v210 = v154 >> 10;
        v211 = v179 >> 6;
        if (v140 == 4)
        {
          LOBYTE(v211) = v154 >> 7;
        }

        if (v140 != 1)
        {
          LOBYTE(v210) = v211;
        }

        if (v140 == 2)
        {
          v212 = v179 >> 7;
        }

        else
        {
          v212 = v154 >> 6;
        }

        v213 = ((v148 * v178) + 0.5) & 0x1F | (v212 << 7) | (32 * (v209 & 1)) & 0xBF | ((v210 & 1) << 6);
        do
        {
          v214 = v144[(2 * v213) | 1];
          v215 = v213 & 0xF0;
          v213 -= v215 != (v214 & 0xF0);
        }

        while (v215 != (v214 & 0xF0));
        *a2 = v156;
        a2[1] = v170;
        a2[2] = v173;
        v13 = 7;
        a2[3] = v214;
        return v13;
      }

LABEL_166:
      if (++v140 == 5)
      {
        v180 = 0;
        v233 = v26;
        v232.i32[2] = 0;
        v232.i64[0] = 0;
        memset(v231, 0, 12);
        do
        {
          v181 = *&v233.i32[v180];
          v182 = fmaxf(v181, 0.0);
          if (v181 <= 65020.0)
          {
            v183 = v182;
          }

          else
          {
            v183 = *"";
          }

          *&v233.i32[v180] = v183;
          v184 = (v183 * 0.0019531) + 0.5;
          v232.i32[v180] = v184;
          v231[0].f32[v180++] = v184 * 512.0;
        }

        while (v180 != 3);
        v185 = 0;
        v186 = vsub_f32(*(v231 + 4), *(v233.i64 + 4));
        v187 = *&v233.i32[3] + ((((v231[0].f32[0] - *v233.i32) + v186.f32[0]) + v186.f32[1]) * 0.33333);
        v188 = (fmaxf(v187, 0.0) * 0.0019531) + 0.5;
        v189 = 127.49;
        if (v187 <= 65020.0)
        {
          v189 = v188;
        }

        v190.i64[0] = v232.i64[0];
        v190.i32[2] = v232.i32[2];
        v190.i32[3] = v189;
        v191.i64[0] = 0x80000000C0;
        v191.i32[2] = 128;
        v191.i32[3] = (2 * v232.i32[0]) & 0x80;
        v230 = vorrq_s8(vandq_s8(v190, xmmword_18622EFB0), v191);
        do
        {
          v192 = v230.i32[v185];
          do
          {
            v193 = v144[(2 * v192) | 1];
            v194 = v192 & 0xF0;
            v192 -= v194 != (v193 & 0xF0);
          }

          while (v194 != (v193 & 0xF0));
          a2[v185++] = v193;
        }

        while (v185 != 4);
        return 7;
      }
    }
  }

  if (a1 <= 11)
  {
    if (a1 != 8)
    {
      if (a1 == 10)
      {
        v103 = vzip2_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v18, v18, 8uLL));
        v104 = vcvt_s32_f32(vadd_f32(v103, 0x3F0000003F000000));
        v105 = vcge_f32(vsub_f32(v103, vcvt_f32_s32(v104)), vdup_n_s32(0xBDCCCCCD));
        v106 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
        a2[4] = v106[2 * v104.i32[1] - v105.i32[1]];
        a2[5] = v106[2 * v104.i32[0] - v105.i32[0]];
        quantize_rgbs(a2, a3, a6);
        return 10;
      }

      else if (a1 == 11)
      {
        quantize_hdr_rgb(a2, a3, v16, v17, *a6.i64, *a7.i64, *v19.i64, *v18.i64, a10);
        return 11;
      }

      return v13;
    }

    v220 = v19;
    v223 = v18;
    if (a3 > 0x12)
    {
      v13 = 0;
      v218 = 1.0e30;
      if (a3 != 19)
      {
LABEL_189:
        quantize_rgb(&v227, &v226, v11, v18, v19);
        v233 = 0uLL;
        v232 = 0uLL;
        rgba_unpack(&v233, &v232, v227, v226);
        v203 = vsubq_f32(v223, vcvtq_f32_s32(v233));
        v204 = vsubq_f32(v220, vcvtq_f32_s32(v232));
        v205 = vaddq_f32(vmulq_f32(v203, v203), vmulq_f32(v204, v204));
        *v205.i8 = vadd_f32(*&vextq_s8(v205, v205, 8uLL), *v205.i8);
        if (vpadd_f32(*v205.i8, *v205.i8).f32[0] < v218)
        {
          v228 = v226;
          v229 = v227;
          v13 = 8;
        }

        v207 = v228;
        v206 = v229;
        *a2 = v229.i8[0];
        a2[1] = v207.i8[0];
        a2[2] = v206.i8[4];
        a2[3] = v207.i8[4];
        a2[4] = v206.i8[8];
        a2[5] = v207.i8[8];
        return v13;
      }
    }

    else
    {
      if (try_quantize_rgb_delta_blue_contract(&v229, &v228, a3, v18, v19))
      {
        v233 = 0uLL;
        v232 = 0uLL;
        rgba_delta_unpack(&v233, &v232, v229, v228);
        v74 = vsubq_f32(v223, vcvtq_f32_s32(v233));
        v75 = vsubq_f32(v220, vcvtq_f32_s32(v232));
        v76 = vaddq_f32(vmulq_f32(v74, v74), vmulq_f32(v75, v75));
        *v76.i8 = vadd_f32(*&vextq_s8(v76, v76, 8uLL), *v76.i8);
        LODWORD(v218) = vpadd_f32(*v76.i8, *v76.i8).u32[0];
        v13 = 9;
      }

      else
      {
        v13 = 0;
        v218 = 1.0e30;
      }

      if (try_quantize_rgb_delta(&v227, &v226, v11, v223, v220))
      {
        v233 = 0uLL;
        v232 = 0uLL;
        rgba_delta_unpack(&v233, &v232, v227, v226);
        v19 = v220;
        v18 = v223;
        v195 = vsubq_f32(v223, vcvtq_f32_s32(v233));
        v196 = vsubq_f32(v220, vcvtq_f32_s32(v232));
        v197 = vaddq_f32(vmulq_f32(v195, v195), vmulq_f32(v196, v196));
        *v197.i8 = vadd_f32(*&vextq_s8(v197, v197, 8uLL), *v197.i8);
        v198 = vpadd_f32(*v197.i8, *v197.i8).f32[0];
        if (v198 < v218)
        {
          v228 = v226;
          v229 = v227;
          v13 = 9;
          v218 = v198;
        }
      }

      else
      {
        v19 = v220;
        v18 = v223;
      }
    }

    if (try_quantize_rgb_blue_contract(&v227, &v226, v11, v18, v19))
    {
      v233 = 0uLL;
      v232 = 0uLL;
      rgba_unpack(&v233, &v232, v227, v226);
      v19 = v220;
      v18 = v223;
      v199 = vsubq_f32(v223, vcvtq_f32_s32(v233));
      v200 = vsubq_f32(v220, vcvtq_f32_s32(v232));
      v201 = vaddq_f32(vmulq_f32(v199, v199), vmulq_f32(v200, v200));
      *v201.i8 = vadd_f32(*&vextq_s8(v201, v201, 8uLL), *v201.i8);
      v202 = vpadd_f32(*v201.i8, *v201.i8).f32[0];
      if (v202 < v218)
      {
        v228 = v226;
        v229 = v227;
        v13 = 8;
        v218 = v202;
      }
    }

    else
    {
      v19 = v220;
      v18 = v223;
    }

    goto LABEL_189;
  }

  switch(a1)
  {
    case 12:
      v216 = vextq_s8(v18, v18, 8uLL).u64[0];
      v217 = vextq_s8(v19, v19, 8uLL).u64[0];
      v221 = v19;
      v224 = v18;
      if (a3 > 0x12)
      {
        v13 = 0;
        v219 = 1.0e30;
        if (a3 != 19)
        {
LABEL_114:
          quantize_rgb(&v227, &v226, v11, v18, v19);
          v132 = vzip2_s32(v217, v216);
          v133 = vcvt_s32_f32(vadd_f32(v132, 0x3F0000003F000000));
          v134 = vcge_f32(vsub_f32(v132, vcvt_f32_s32(v133)), vdup_n_s32(0xBDCCCCCD));
          v135 = &color_unquant_to_uquant_tables + 512 * (v11 - 4);
          v227.i32[3] = v135[2 * v133.i32[1] - v134.i32[1]];
          v226.i32[3] = v135[2 * v133.i32[0] - v134.i32[0]];
          v233 = 0uLL;
          v232 = 0uLL;
          rgba_unpack(&v233, &v232, v227, v226);
          v136 = vsubq_f32(v224, vcvtq_f32_s32(v233));
          v137 = vsubq_f32(v221, vcvtq_f32_s32(v232));
          v138 = vaddq_f32(vmulq_f32(v136, v136), vmulq_f32(v137, v137));
          *v138.i8 = vadd_f32(*&vextq_s8(v138, v138, 8uLL), *v138.i8);
          if (vpadd_f32(*v138.i8, *v138.i8).f32[0] < v219)
          {
            v228 = v226;
            v229 = v227;
            v13 = 12;
          }

          v235.val[1] = v228;
          v235.val[0] = v229;
          *a2 = vqtbl2q_s8(v235, xmmword_18622EFC0).u64[0];
          return v13;
        }
      }

      else
      {
        v219 = 1.0e30;
        if (try_quantize_rgb_delta_blue_contract(&v229, &v228, a3, v18, v19) && try_quantize_alpha_delta(&v229, &v228, v11, v221, v224))
        {
          v233 = 0uLL;
          v232 = 0uLL;
          rgba_delta_unpack(&v233, &v232, v229, v228);
          v98 = vsubq_f32(v224, vcvtq_f32_s32(v233));
          v99 = vsubq_f32(v221, vcvtq_f32_s32(v232));
          v100 = vaddq_f32(vmulq_f32(v98, v98), vmulq_f32(v99, v99));
          *v100.i8 = vadd_f32(*&vextq_s8(v100, v100, 8uLL), *v100.i8);
          LODWORD(v219) = vpadd_f32(*v100.i8, *v100.i8).u32[0];
          v13 = 13;
          v101 = v221;
          v102 = v224;
        }

        else
        {
          v13 = 0;
          v101 = v221;
          v102 = v224;
        }

        if (try_quantize_rgb_delta(&v227, &v226, v11, v102, v101) && try_quantize_alpha_delta(&v227, &v226, v11, v224, v221))
        {
          v233 = 0uLL;
          v232 = 0uLL;
          rgba_delta_unpack(&v233, &v232, v227, v226);
          v19 = v221;
          v18 = v224;
          v120 = vsubq_f32(v224, vcvtq_f32_s32(v233));
          v121 = vsubq_f32(v221, vcvtq_f32_s32(v232));
          v122 = vaddq_f32(vmulq_f32(v120, v120), vmulq_f32(v121, v121));
          *v122.i8 = vadd_f32(*&vextq_s8(v122, v122, 8uLL), *v122.i8);
          v123 = vpadd_f32(*v122.i8, *v122.i8).f32[0];
          if (v123 < v219)
          {
            v228 = v226;
            v229 = v227;
            v13 = 13;
            v219 = v123;
          }
        }

        else
        {
          v19 = v221;
          v18 = v224;
        }
      }

      if (try_quantize_rgb_blue_contract(&v227, &v226, v11, v18, v19))
      {
        v124 = vzip2_s32(v216, v217);
        v125 = vcvt_s32_f32(vadd_f32(v124, 0x3F0000003F000000));
        v126 = vcge_f32(vsub_f32(v124, vcvt_f32_s32(v125)), vdup_n_s32(0xBDCCCCCD));
        v127 = &color_unquant_to_uquant_tables + 512 * (v11 - 4);
        v227.i32[3] = v127[2 * v125.i32[1] - v126.i32[1]];
        v226.i32[3] = v127[2 * v125.i32[0] - v126.i32[0]];
        v233 = 0uLL;
        v232 = 0uLL;
        rgba_unpack(&v233, &v232, v227, v226);
        v19 = v221;
        v18 = v224;
        v128 = vsubq_f32(v224, vcvtq_f32_s32(v233));
        v129 = vsubq_f32(v221, vcvtq_f32_s32(v232));
        v130 = vaddq_f32(vmulq_f32(v128, v128), vmulq_f32(v129, v129));
        *v130.i8 = vadd_f32(*&vextq_s8(v130, v130, 8uLL), *v130.i8);
        v131 = vpadd_f32(*v130.i8, *v130.i8).f32[0];
        if (v131 < v219)
        {
          v228 = v226;
          v229 = v227;
          v13 = 12;
          v219 = v131;
        }
      }

      else
      {
        v19 = v221;
        v18 = v224;
      }

      goto LABEL_114;
    case 14:
      v107 = vmul_f32(vzip2_s32(*&vextq_s8(v17, v17, 8uLL), *&vextq_s8(v16, v16, 8uLL)), vdup_n_s32(0x3B7F00FFu));
      v108 = vdup_n_s32(0x437F0000u);
      v109 = vbsl_s8(vcgt_f32(v107, v108), v108, vmaxnm_f32(v107, 0));
      v110 = vcvt_s32_f32(vadd_f32(v109, 0x3F0000003F000000));
      v111 = vsub_f32(v109, vcvt_f32_s32(v110));
      v112 = COERCE_DOUBLE(vcge_f32(v111, vdup_n_s32(0xBDCCCCCD)));
      v113 = &color_unquant_to_uquant_tables + 512 * (a3 - 4);
      a2[6] = v113[2 * v110.i32[1] - HIDWORD(v112)];
      a2[7] = v113[2 * v110.i32[0] - LODWORD(v112)];
      quantize_hdr_rgb(a2, a3, v16, v17, v112, *&v110, *&v111, *&v107, a10);
      return 14;
    case 15:
      v222 = *&v16.i32[3];
      v225 = *&v17.i32[3];
      quantize_hdr_rgb(a2, a3, v16, v17, *a6.i64, *a7.i64, *v19.i64, *v18.i64, a10);
      v28 = fmaxf(v222, 0.0) + 0.5;
      v29 = 65280.0;
      if (v222 > 65280.0)
      {
        v28 = 65280.0;
      }

      v30 = v28;
      v31 = fmaxf(v225, 0.0) + 0.5;
      if (v225 <= 65280.0)
      {
        v29 = v31;
      }

      v32 = v29;
      v33 = -3;
      v34 = 256;
      v35 = 2;
      v36 = &color_unquant_to_uquant_tables + 512 * (v11 - 4);
      v37 = 0x80;
      while (1)
      {
        v38 = ((0x80u >> v35) + v30) >> (v33 + 9);
        v39 = v36[(2 * (v34 & 0x80 | v38 & 0x7F)) | 1];
        if (((v34 ^ v39) & 0x80) == 0)
        {
          v40 = (((0x80u >> v35) + v32) >> (v33 + 9)) - (v38 & 0xFFFFFF80 | v39 & 0x7F);
          v41 = 0x20u >> v35;
          if (v40 + v41 < 0 == __OFADD__(v40, v41) && v40 < v41)
          {
            v43 = (v38 >> 7 << (v33 + 7)) | v37 & 0x80 | v40 & (2 * v41 - 1);
            v44 = v36[2 * v43 + 1];
            if (((v43 ^ v44) & quantize_hdr_alpha(float,float,unsigned char *,quant_method)::testbits[v35]) == 0)
            {
              break;
            }
          }
        }

        --v35;
        v37 -= 64;
        v34 -= 128;
        if (__CFADD__(v33++, 1))
        {
          a2[6] = v36[((v30 + 256) >> 8) | 0x101];
          LOBYTE(v44) = v36[((v32 + 256) >> 8) | 0x101];
LABEL_193:
          a2[7] = v44;
          return 15;
        }
      }

      a2[6] = v39;
      goto LABEL_193;
  }

  return v13;
}

uint64_t try_quantize_rgb_delta_blue_contract(int8x16_t *a1, int8x16_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(a5, vsubq_f32(a5, vzip2q_s32(vtrn1q_s32(a5, a5), a5)));
  v6 = vaddq_f32(a4, vsubq_f32(a4, vzip2q_s32(vtrn1q_s32(a4, a4), a4)));
  v7 = vmovn_s32(vorrq_s8(vcltzq_f32(vminnmq_f32(v6, v5)), vcgtq_f32(vmaxnmq_f32(v6, v5), vdupq_n_s32(0x437F0000u))));
  {
    v51 = a1;
    v55 = a2;
    v47 = a3;
    v43 = v7;
    v36 = v5;
    v39 = v6;
    compute_ideal_colors_and_weights_1plane();
    v5 = v36;
    v6 = v39;
    v7 = v43;
    a3 = v47;
    a1 = v51;
    a2 = v55;
  }

  v8 = &unk_1EA8DB000;
  if (vaddvq_s32(vshlq_u32(vmovl_u16(vand_s8(v7, 0x1000100010001)), mask(vmask4)::shift)))
  {
    return 0;
  }

  v9.i64[0] = 0x3F0000003F000000;
  v9.i64[1] = 0x3F0000003F000000;
  v10 = vcvtq_s32_f32(vaddq_f32(v5, v9));
  v11 = vaddq_s32(v10, v10);
  v12 = vandq_s8(vaddq_s32(v11, v11), vdupq_n_s32(0x1FEu));
  v13 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v14.i32[0] = v13[v12.i32[0] | 1];
  v14.i32[1] = v13[v12.i32[1] | 1];
  v14.i64[1] = v13[v12.i32[2] | 1];
  v12.i64[0] = 0x10000000100;
  v12.i64[1] = 0x10000000100;
  v15 = vandq_s8(v11, v12);
  v16 = vcvtq_s32_f32(vaddq_f32(v6, v9));
  v17 = vsubq_s32(vaddq_s32(v16, v16), vorrq_s8(v14, v15));
  v17.i32[3] = 0;
  v16.i64[0] = 0x3F0000003FLL;
  v16.i64[1] = 0x3F0000003FLL;
  v18 = vaddq_s32(v17, v16);
  {
    v52 = a1;
    v56 = a2;
    v44 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v48 = v14;
    v37 = v17;
    v40 = v15;
    v35 = v18;
    compute_ideal_colors_and_weights_1plane();
    v18 = v35;
    v17 = v37;
    v15 = v40;
    v14 = v48;
    v13 = v44;
    v8 = &unk_1EA8DB000;
    a1 = v52;
    a2 = v56;
  }

  v19.i64[0] = 0x7F0000007FLL;
  v19.i64[1] = 0x7F0000007FLL;
  v20 = vcgtq_u32(v19, v18);
  v21.i64[0] = 0x100000001;
  v21.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v20, v21), v8[116])))
  {
    return 0;
  }

  v22.i64[0] = 0x7F0000007FLL;
  v22.i64[1] = 0x7F0000007FLL;
  v23 = vorrq_s8(vshrq_n_u32(v15, 1uLL), vandq_s8(v17, v22));
  v24 = vaddq_s32(v23, v23);
  v25.i32[0] = v13[v24.i32[0] | 1];
  v25.i32[1] = v13[v24.i32[1] | 1];
  v25.i64[1] = v13[v24.i32[2] | 1];
  v24.i64[0] = 0xC0000000C0;
  v24.i64[1] = 0xC0000000C0;
  v26 = vandq_s8(veorq_s8(v25, v23), v24);
  v26.i32[3] = 0;
  {
    v53 = a1;
    v57 = a2;
    v49 = v14;
    v41 = v26;
    v45 = v25;
    compute_ideal_colors_and_weights_1plane();
    v26 = v41;
    v25 = v45;
    v14 = v49;
    v8 = &unk_1EA8DB000;
    a1 = v53;
    a2 = v57;
  }

  v27.i64[0] = 0x100000001;
  v27.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vbicq_s8(v27, vceqzq_s32(v26)), v8[116])))
  {
    return 0;
  }

  v28 = vshrq_n_u32(v25, 1uLL);
  v29 = vorrq_s8((*&vtstq_s32((*&v28 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v28 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v28 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
  if (v29.i32[0] + v29.i32[1] + v29.i32[2] >= 0)
  {
    return 0;
  }

  v30 = vaddq_s32(vsraq_n_u32((*&v25 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v14, 1uLL), v29);
  v31 = vshrq_n_u32(v30, 0x1FuLL);
  {
    v54 = a1;
    v58 = a2;
    v50 = v14;
    v42 = v30;
    v46 = v25;
    v38 = v31;
    compute_ideal_colors_and_weights_1plane();
    v31 = v38;
    v30 = v42;
    v25 = v46;
    v14 = v50;
    v8 = &unk_1EA8DB000;
    a1 = v54;
    a2 = v58;
  }

  v32.i64[0] = 0xFF000000FFLL;
  v32.i64[1] = 0xFF000000FFLL;
  v33 = vcgtq_s32(v30, v32);
  if (vaddvq_s32(vshlq_u32(vsubq_s32(vbicq_s8(v31, v33), v33), v8[116])))
  {
    return 0;
  }

  *a1 = v14;
  *a2 = v25;
  return 1;
}

uint64_t try_quantize_rgb_delta(int8x16_t *a1, int8x16_t *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vcvtq_s32_f32(vaddq_f32(a4, v5));
  v7 = vaddq_s32(v6, v6);
  v8 = vandq_s8(vaddq_s32(v7, v7), vdupq_n_s32(0x1FEu));
  v9 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v10.i32[0] = v9[v8.i32[0] | 1];
  v10.i32[1] = v9[v8.i32[1] | 1];
  v10.i64[1] = v9[v8.i32[2] | 1];
  v8.i64[0] = 0x10000000100;
  v8.i64[1] = 0x10000000100;
  v11 = vandq_s8(v7, v8);
  v12 = vcvtq_s32_f32(vaddq_f32(a5, v5));
  v13 = vsubq_s32(vaddq_s32(v12, v12), vorrq_s8(v10, v11));
  v13.i32[3] = 0;
  v12.i64[0] = 0x3F0000003FLL;
  v12.i64[1] = 0x3F0000003FLL;
  v14 = vaddq_s32(v13, v12);
  {
    v44 = a1;
    v47 = a2;
    v38 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
    v41 = v10;
    v33 = v13;
    v35 = v11;
    v32 = v14;
    compute_ideal_colors_and_weights_1plane();
    v14 = v32;
    v13 = v33;
    v11 = v35;
    v10 = v41;
    v9 = v38;
    a1 = v44;
    a2 = v47;
  }

  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v16 = vcgtq_u32(v15, v14);
  v17.i64[0] = 0x100000001;
  v17.i64[1] = 0x100000001;
  v18 = &unk_1EA8DB000;
  if (vaddvq_s32(vshlq_u32(vandq_s8(v16, v17), mask(vmask4)::shift)))
  {
    return 0;
  }

  v19.i64[0] = 0x7F0000007FLL;
  v19.i64[1] = 0x7F0000007FLL;
  v20 = vorrq_s8(vshrq_n_u32(v11, 1uLL), vandq_s8(v13, v19));
  v21 = vaddq_s32(v20, v20);
  v22.i32[0] = v9[v21.i32[0] | 1];
  v22.i32[1] = v9[v21.i32[1] | 1];
  v22.i64[1] = v9[v21.i32[2] | 1];
  v21.i64[0] = 0xC0000000C0;
  v21.i64[1] = 0xC0000000C0;
  v23 = vandq_s8(veorq_s8(v22, v20), v21);
  v23.i32[3] = 0;
  {
    v45 = a1;
    v48 = a2;
    v42 = v10;
    v36 = v23;
    v39 = v22;
    compute_ideal_colors_and_weights_1plane();
    v23 = v36;
    v22 = v39;
    v10 = v42;
    v18 = &unk_1EA8DB000;
    a1 = v45;
    a2 = v48;
  }

  v24.i64[0] = 0x100000001;
  v24.i64[1] = 0x100000001;
  if (vaddvq_s32(vshlq_u32(vbicq_s8(v24, vceqzq_s32(v23)), v18[116])))
  {
    return 0;
  }

  v26 = vshrq_n_u32(v22, 1uLL);
  v27 = vorrq_s8((*&vtstq_s32((*&v26 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0)), (*&v26 & __PAIR128__(0xFFFFFFA0FFFFFFA0, 0xFFFFFFA0FFFFFFA0))) & __PAIR128__(0xFFFFFFC0FFFFFFC0, 0xFFFFFFC0FFFFFFC0)), (*&v26 & __PAIR128__(0xFFFFFFBFFFFFFFBFLL, 0xFFFFFFBFFFFFFFBFLL)));
  if (v27.i32[0] + v27.i32[1] + v27.i32[2] < 0)
  {
    return 0;
  }

  v28 = vaddq_s32(vsraq_n_u32((*&v22 & __PAIR128__(0xFFFFFF80FFFFFF80, 0xFFFFFF80FFFFFF80)), v10, 1uLL), v27);
  v29 = vshrq_n_u32(v28, 0x1FuLL);
  {
    v46 = a1;
    v49 = a2;
    v43 = v10;
    v37 = v28;
    v40 = v22;
    v34 = v29;
    compute_ideal_colors_and_weights_1plane();
    v29 = v34;
    v28 = v37;
    v22 = v40;
    v10 = v43;
    v18 = &unk_1EA8DB000;
    a1 = v46;
    a2 = v49;
  }

  v30.i64[0] = 0xFF000000FFLL;
  v30.i64[1] = 0xFF000000FFLL;
  v31 = vcgtq_s32(v28, v30);
  if (vaddvq_s32(vshlq_u32(vsubq_s32(vbicq_s8(v29, v31), v31), v18[116])))
  {
    return 0;
  }

  *a1 = v10;
  *a2 = v22;
  return 1;
}

uint64_t try_quantize_rgb_blue_contract(_OWORD *a1, _OWORD *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5 = vaddq_f32(a4, vsubq_f32(a4, vzip2q_s32(vtrn1q_s32(a4, a4), a4)));
  v6 = vaddq_f32(a5, vsubq_f32(a5, vzip2q_s32(vtrn1q_s32(a5, a5), a5)));
  v7 = vmovn_s32(vorrq_s8(vcltzq_f32(vminnmq_f32(v5, v6)), vcgtq_f32(vmaxnmq_f32(v5, v6), vdupq_n_s32(0x437F0000u))));
  {
    v27 = a3;
    v28 = a2;
    v26 = a1;
    v25 = v7;
    v23 = v5;
    v24 = v6;
    compute_ideal_colors_and_weights_1plane();
    v5 = v23;
    v6 = v24;
    v7 = v25;
    a1 = v26;
    a3 = v27;
    a2 = v28;
  }

  if (vaddvq_s32(vshlq_u32(vmovl_u16(vand_s8(v7, 0x1000100010001)), mask(vmask4)::shift)))
  {
    return 0;
  }

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vcvtq_s32_f32(vaddq_f32(v5, v8));
  v10 = vaddq_s32(v9, v9);
  v11 = vsubq_f32(v5, vcvtq_f32_s32(v9));
  v12 = vdupq_n_s32(0xBDCCCCCD);
  v13 = vsubq_s32(v10, vcgeq_f32(v11, v12));
  v14 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v15 = v14[v13.i32[0]];
  v16 = v14[v13.i32[1]];
  v17 = v14[v13.i32[2]];
  v18 = vcvtq_s32_f32(vaddq_f32(v6, v8));
  v19 = vsubq_s32(vaddq_s32(v18, v18), vcgeq_f32(vsubq_f32(v6, vcvtq_f32_s32(v18)), v12));
  if (v14[v19.i32[1]] + v14[v19.i32[0]] + v14[v19.i32[2]] <= v16 + v15 + v17)
  {
    return 0;
  }

  LODWORD(v20) = v14[v19.i32[0]];
  DWORD1(v20) = v14[v19.i32[1]];
  *(&v20 + 1) = v14[v19.i32[2]];
  *&v21 = __PAIR64__(v16, v15);
  *(&v21 + 1) = v17;
  *a1 = v20;
  *a2 = v21;
  return 1;
}

float quantize_rgb(_OWORD *a1, _OWORD *a2, int a3, float32x4_t a4, float32x4_t a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vdupq_n_s32(0xBDCCCCCD);
  v7 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v8 = vdupq_n_s32(0xBE4CCCCD);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v10 = vdupq_n_s32(0x3E4CCCCDu);
  do
  {
    v11 = vmaxq_s32(vcvtq_s32_f32(vaddq_f32(a4, v5)), 0);
    v12 = vsubq_s32(vaddq_s32(v11, v11), vcgeq_f32(vsubq_f32(a4, vcvtq_f32_s32(v11)), v6));
    v13 = v7[v12.i32[0]];
    v14 = v7[v12.i32[1]];
    v15 = v7[v12.i32[2]];
    a4 = vaddq_f32(a4, v8);
    v16 = vminq_s32(vcvtq_s32_f32(vaddq_f32(a5, v5)), v9);
    v17 = vsubq_s32(vaddq_s32(v16, v16), vcgeq_f32(vsubq_f32(a5, vcvtq_f32_s32(v16)), v6));
    a5 = vaddq_f32(a5, v10);
  }

  while (v14 + v13 + v15 > v7[v17.i32[1]] + v7[v17.i32[0]] + v7[v17.i32[2]]);
  LODWORD(v18) = v7[v17.i32[0]];
  DWORD1(v18) = v7[v17.i32[1]];
  *(&v18 + 1) = v7[v17.i32[2]];
  *&v19 = __PAIR64__(v14, v13);
  *(&v19 + 1) = v15;
  *a1 = v19;
  *a2 = v18;
  return *&v19;
}

_BYTE *quantize_rgbs(_BYTE *result, int a2, int8x16_t a3)
{
  v3 = fmaxf(0.0038911 * *a3.i32, 0.0);
  v4 = vdup_n_s32(0x437F0000u);
  if ((0.0038911 * *a3.i32) > 255.0)
  {
    v3 = 255.0;
  }

  v5 = &color_unquant_to_uquant_tables + 512 * a2 - 2048;
  v6 = v5[((v3 - (v3 + 0.5)) >= -0.1) | (2 * (v3 + 0.5))];
  v7 = vmul_f32(vext_s8(*a3.i8, *&vextq_s8(a3, a3, 8uLL), 4uLL), vdup_n_s32(0x3B7F00FFu));
  v8 = vbsl_s8(vcgt_f32(v7, v4), v4, vmaxnm_f32(v7, 0));
  v9 = vcvt_s32_f32(vadd_f32(v8, 0x3F0000003F000000));
  v10 = vcge_f32(vsub_f32(v8, vcvt_f32_s32(v9)), vdup_n_s32(0xBDCCCCCD));
  v11 = v5[2 * v9.i32[0] - v10.i32[0]];
  v12 = v5[2 * v9.i32[1] - v10.i32[1]];
  v13 = vmuls_lane_f32(((*&a3.i32[2] + vaddv_f32(*a3.i8)) * 0.0038911) + 1.0e-10, a3, 3) / ((v11 + v6 + v12) + 1.0e-10);
  v14 = (fmaxf(v13, 0.0) * 256.0) + 0.5;
  v15 = v13 == 1.0;
  v16 = v13 < 1.0;
  v17 = 256.5;
  if (v16 || v15)
  {
    v17 = v14;
  }

  v18 = v17 & ~(v17 >> 31);
  if (v18 >= 255)
  {
    v18 = 255;
  }

  *result = v6;
  result[1] = v11;
  result[2] = v12;
  result[3] = v5[(2 * v18) | 1];
  return result;
}

_BYTE *quantize_hdr_rgb(_BYTE *result, int a2, float32x4_t a3, float32x4_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v86 = *MEMORY[0x1E69E9840];
  v10 = vdupq_n_s32(0x477FFF00u);
  v11 = vminnmq_f32(vmaxnmq_f32(a3, 0), v10);
  v12 = vminnmq_f32(vmaxnmq_f32(a4, 0), v10);
  if (*v12.i32 <= *&v12.i32[1] || *v12.i32 <= *&v12.i32[2])
  {
    if (*&v12.i32[1] <= *&v12.i32[2])
    {
      v17 = vrev64q_s32(v11);
      v15 = vextq_s8(v17, v17, 0xCuLL);
      v18 = vrev64q_s32(v12);
      v16 = vextq_s8(v18, v18, 0xCuLL);
      v14 = 2;
    }

    else
    {
      v15.i64[0] = vrev64q_s32(v11).u64[0];
      v15.i64[1] = v11.i64[1];
      v16.i64[0] = vrev64q_s32(v12).u64[0];
      v16.i64[1] = v12.i64[1];
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v15 = v11;
    v16 = v12;
  }

  *&a8 = fmaxf(*v16.i32, 0.0);
  if (*v16.i32 > 65535.0)
  {
    *&a8 = 65535.0;
  }

  *&a9 = *&a8 - *v15.i32;
  v19 = vdup_lane_s32(*&a8, 0);
  v20 = vextq_s8(v16, v16, 4uLL).u64[0];
  v21 = vsub_f32(v19, v20);
  v22 = vsub_f32(vsub_f32(v19, v21), vdup_lane_s32(*&a9, 0));
  v23 = vextq_s8(v15, v15, 4uLL).u64[0];
  v24 = vabd_f32(v22, v23);
  v25 = 7;
  v26 = &color_unquant_to_uquant_tables + 512 * a2 - 2048;
  v27 = vdup_n_s32(0x477FFF00u);
  v28 = vdup_n_s32(0xC77FFF00);
  do
  {
    v29 = v25;
    v30 = (&quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_cutoffs + 16 * v25);
    if (v21.f32[0] <= *v30 && v21.f32[1] <= *v30 && *&a9 <= v30[1])
    {
      v33 = v30 + 2;
      v34 = vld1_dup_f32(v33);
      v35 = vcgt_f32(v24, v34);
      if ((v35.i8[0] & 1) == 0 && (v35.i8[4] & 1) == 0)
      {
        v36 = quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_scales[v25];
        v37 = quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_rscales[v25];
        v38 = (&quantize_hdr_rgb(vfloat4,vfloat4,unsigned char *,quant_method)::mode_bits + 16 * v25);
        v39 = ((*&a8 * v36) + 0.5);
        v40 = v26[(2 * v39) | 1];
        v9.f32[0] = v37 * (v39 & 0xFFFFFF00 | v40);
        v41 = fmaxf(v9.f32[0] - *v15.i32, 0.0);
        v42 = (v9.f32[0] - *v15.i32) <= 65535.0 ? v41 : 65535.0;
        v43 = ((v36 * v42) + 0.5);
        if (1 << v38[2] > v43)
        {
          v44 = 1 << v38[1];
          v45 = 1 << (v38[3] - 1);
          v46 = ((v36 * v42) + 0.5) & 0x3F | (v29 << 7) | (v39 >> 2) & 0x40;
          do
          {
            v47 = v26[(2 * v46) | 1];
            v48 = v46 & 0xC0;
            v46 -= v48 != (v47 & 0xC0);
          }

          while (v48 != (v47 & 0xC0));
          v9 = vdup_lane_s32(v9, 0);
          v49 = vsub_f32(v9, v20);
          v50 = vcgt_f32(v49, v27);
          v51 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(v50, v27, vmaxnm_f32(v49, 0)), v36), 0x3F0000003F000000));
          if (v44 > v51.i32[0] && v44 > v51.i32[1])
          {
            if (v29 > 7)
            {
              v53 = 0;
            }

            else
            {
              v53 = ((1 << v29) & 0x5B) != 0 ? (v51.i32[0] >> 6) & 1 : (v39 >> 9) & 1;
            }

            if (v29 > 7)
            {
              v54 = 0;
            }

            else if (((1 << v29) & 0x5B) != 0)
            {
              v54 = (v51.i32[1] >> 6) & 1;
            }

            else
            {
              v54 = ((1 << v29) & 0xA0) != 0 ? (v39 >> 10) & 1 : (v43 >> 6) & 1;
            }

            v55 = v54 << 6;
            v56 = v51.i8[0] & 0x3F | (v53 << 6) & 0xFFFFFF7F | (((v29 >> 1) & 1) << 7);
            do
            {
              v57 = v26[(2 * v56) | 1];
              v58 = v56 & 0xC0;
              v56 -= v58 != (v57 & 0xC0);
            }

            while (v58 != (v57 & 0xC0));
            v59 = v55 | v51.i8[4] & 0x3F | (32 * v29) & 0x80;
            do
            {
              v60 = v26[(2 * v59) | 1];
              v61 = v59 & 0xC0;
              v59 -= v61 != (v60 & 0xC0);
            }

            while (v61 != (v60 & 0xC0));
            v62.i32[0] = v57 & 0x3F;
            v62.i32[1] = v60 & 0xFFFFFF3F;
            *v50.i32 = v37 * (v43 & 0xFFFFFFC0 | v47 & 0x3F);
            v63 = vsub_f32(vsub_f32(vsub_f32(v9, vmul_n_f32(vcvt_f32_s32(vorr_s8((*&v51 & 0xFFFFFFC0FFFFFFC0), v62)), v37)), vdup_lane_s32(v50, 0)), v23);
            v64 = vcvt_s32_f32(vadd_f32(vmul_n_f32(vbsl_s8(vcgt_f32(v63, v27), v27, vmaxnm_f32(v63, v28)), v36), 0x3F0000003F000000));
            v9 = vabs_s32(v64);
            v65 = vcgt_s32(vdup_n_s32(v45), v9);
            if (v65.i32[0] & v65.i32[1])
            {
              v74 = 0;
              if (v29 > 3)
              {
                if ((v29 - 6) < 2)
                {
                  v74 = (v39 >> 11) & 1;
                  goto LABEL_75;
                }

                if (v29 == 4)
                {
                  goto LABEL_73;
                }

                if (v29 == 5)
                {
                  v74 = (v43 >> 7) & 1;
                  goto LABEL_77;
                }
              }

              else
              {
                if (v29 > 1)
                {
                  if (v29 != 2)
                  {
                    v74 = (v39 >> 9) & 1;
                    goto LABEL_77;
                  }
                }

                else if (v29)
                {
                  if (v29 != 1)
                  {
                    goto LABEL_75;
                  }

LABEL_73:
                  v74 = (v51.i32[0] >> 7) & 1;
                  goto LABEL_75;
                }

                v74 = (v64.i32[0] >> 6) & 1;
              }

LABEL_75:
              if (v29 > 7)
              {
                v75 = 0;
                goto LABEL_80;
              }

              if (((1 << v29) & 0xE8) == 0)
              {
                v75 = (v64.i32[1] >> 6) & 1;
                if (((1 << v29) & 5) == 0)
                {
                  v75 = (v51.i32[1] >> 7) & 1;
                }

                goto LABEL_80;
              }

LABEL_77:
              v75 = (v43 >> 6) & 1;
LABEL_80:
              if ((v29 | 2) == 6)
              {
                v76 = vshl_u32(vdup_n_s32(v39), 0xFFFFFFF6FFFFFFF7);
              }

              else
              {
                v76 = vshr_n_u32(v64, 5uLL);
              }

              v77 = v64.i8[0] & 0x1F | (v74 << 6) | (32 * (v76.i8[0] & 1)) | (v14 << 7);
              v78 = (v14 << 6) & 0x80;
              do
              {
                v79 = v26[(2 * v77) | 1];
                v80 = v77 & 0xF0;
                v77 -= v80 != (v79 & 0xF0);
              }

              while (v80 != (v79 & 0xF0));
              v81 = (32 * (v76.i8[4] & 1)) | (v75 << 6) | v64.i8[4] & 0x1F | v78;
              do
              {
                v82 = v26[(2 * v81) | 1];
                v83 = v81 & 0xF0;
                v81 -= v83 != (v82 & 0xF0);
              }

              while (v83 != (v82 & 0xF0));
              *result = v40;
              result[1] = v47;
              result[2] = v57;
              result[3] = v60;
              result[4] = v79;
              result[5] = v82;
              return result;
            }
          }
        }
      }
    }

    v25 = v29 - 1;
  }

  while (v29);
  v66 = 0;
  v84 = vzip1q_s32(v11, v12);
  v85 = vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL));
  do
  {
    v67 = *&v84.i32[v66];
    v68 = fmaxf(v67, 0.0);
    if (v67 <= 65020.0)
    {
      v69 = v68;
    }

    else
    {
      v69 = *"";
    }

    *&v84.i32[v66++] = v69;
  }

  while (v66 != 6);
  for (i = 0; i != 4; ++i)
  {
    result[i] = v26[2 * ((*&v84.i32[i] * 0.0039062) + 0.5) + 1];
  }

  do
  {
    v71 = ((*&v84.i32[i] * 0.0019531) + 0.5) ^ 0xFFFFFF80;
    do
    {
      v72 = v26[(2 * v71) | 1];
      v73 = v71 & 0xC0;
      v71 -= v73 != (v72 & 0xC0);
    }

    while (v73 != (v72 & 0xC0));
    result[i++] = v72;
  }

  while (i != 6);
  return result;
}

uint64_t try_quantize_alpha_delta(uint64_t a1, uint64_t a2, int a3, __n128 a4, __n128 a5)
{
  v5 = (a4.n128_f32[3] + 0.5);
  v6 = &color_unquant_to_uquant_tables + 512 * a3 - 2048;
  v7 = v6[(4 * (v5 & 0x7F)) | 1];
  v8 = v7 | (((v5 >> 7) & 1) << 8);
  v9 = 2 * (a5.n128_f32[3] + 0.5) - v8;
  if ((v9 - 64) < 0xFFFFFF80)
  {
    return 0;
  }

  v10 = v9 & 0x7F | (((2 * v5) & 0x100) >> 1);
  v11 = v6[(2 * v10) | 1];
  if ((v10 ^ v11) > 0x3F || (v11 & 0x7F) + v8 + ((v11 << 25 >> 31) & 0xFFFFFF80) > 0x1FF)
  {
    return 0;
  }

  *(a1 + 12) = v7;
  *(a2 + 12) = v11;
  return 1;
}

double astc::rand_init(astc *this, unint64_t *a2)
{
  result = -2.40530959e284;
  *this = xmmword_18622F1B0;
  return result;
}

uint64_t astc::rand(astc *this, unint64_t *a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = __ROR8__(v3 ^ *this, 27);
  *this ^= __ROR8__(*this, 40) ^ ((v3 ^ *this) << 16) ^ v3;
  *(this + 1) = v4;
  return v3 + v2;
}

uint64_t astcenc_config_init(unsigned int a1, int a2, int a3, unsigned int a4, int a5, uint64_t a6, float a7)
{
  if (((2.51 + 12583000.0) + -12583000.0) != 3.0)
  {
    return 2;
  }

  *(a6 + 92) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  if (a4 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a4;
  }

  *a6 = 0uLL;
  *(a6 + 16) = 0uLL;
  result = validate_block_size(a2, a3, v13);
  if (!result)
  {
    *(a6 + 8) = a2;
    *(a6 + 12) = a3;
    *(a6 + 16) = v13;
    v15 = a3 * a2 * v13;
    v16 = logf(v15);
    result = 6;
    if (a7 >= 0.0 && a7 <= 100.0)
    {
      v19 = &preset_configs_low;
      if (v15 < 0x40)
      {
        v19 = &preset_configs_mid;
      }

      v20 = &preset_configs_high;
      if (v15 >= 25)
      {
        v20 = v19;
      }

      astcenc_config_init(astcenc_profile,unsigned int,unsigned int,unsigned int,float,unsigned int,astcenc_config *)::preset_configs = v20;
      v21 = *v20;
      if (*v20 >= a7)
      {
        v26 = 0;
        v25 = 1;
        v23 = v20;
      }

      else
      {
        v22 = -1;
        v23 = v20;
        do
        {
          if (v22 == 4)
          {
            goto LABEL_50;
          }

          v24 = v23[18];
          v23 += 18;
          v21 = v24;
          ++v22;
        }

        while (v24 < a7);
        v25 = v22 < 5;
        v26 = v22 + 1;
      }

      v27 = v26 - 1;
      if (!v26)
      {
        v27 = 0;
      }

      v28 = v16 / 2.3026;
      if (v27 == v26)
      {
        if (v26 < 6)
        {
          *(a6 + 44) = *(v23 + 1);
          *(a6 + 60) = *(v23 + 5);
          *(a6 + 76) = *(v23 + 9);
          v29 = v23[11] + (v28 * -35.0);
          v30 = v23[12] + (v28 * -19.0);
          if (v29 > v30)
          {
            v30 = v29;
          }

          v31 = *(v23 + 13);
          *(a6 + 84) = v30;
          *(a6 + 88) = v31;
          v32 = *(v23 + 14);
          *(a6 + 92) = v32;
          v33 = v23[17];
          *(a6 + 100) = v23[16];
LABEL_33:
          *(a6 + 104) = v33;
          __asm { FMOV            V2.4S, #1.0 }

          *(a6 + 20) = _Q2;
          *(a6 + 36) = 0;
          *a6 = a1;
          if (a1 >= 2)
          {
            if (a1 - 2 > 1)
            {
              return 5;
            }

            *(a6 + 84) = 1148829696;
            *(a6 + 104) = 0;
            v30 = 999.0;
          }

          LODWORD(_Q2) = a5 & 0xFFFFFF82;
          *&_Q2 = vcnt_s8(*&_Q2);
          LOWORD(_Q2) = vaddlv_u8(*&_Q2);
          if (_Q2)
          {
            return 8;
          }

          LODWORD(_Q2) = a5 & 0x41;
          if ((vaddlv_u8(vcnt_s8(*&_Q2)) & 0x7FE) != 0)
          {
            return 8;
          }

          if (a5)
          {
            v48 = *(a6 + 44);
            if ((v48 + 1) < 4)
            {
              v49 = v48 + 1;
            }

            else
            {
              v49 = 4;
            }

            *(a6 + 44) = v49;
            *(a6 + 24) = 0;
            __asm { FMOV            V2.2S, #1.5 }

            *(a6 + 92) = vmul_f32(v32, _D2);
            *(a6 + 100) = 1065185444;
            *(a6 + 84) = v30 * 1.03;
          }

          else if ((a5 & 0x40) != 0)
          {
            *(a6 + 40) = 1084227584;
            *(a6 + 32) = 1092616192;
          }

          else if ((a5 & 8) != 0)
          {
            *(a6 + 20) = 0x3FA9EB853F2CCCCDLL;
            *(a6 + 28) = 1048408228;
          }

          result = 0;
          *(a6 + 4) = a5;
          return result;
        }
      }

      else if (v27 < 6 && v25)
      {
        v34 = &v20[18 * v27];
        v35 = v21 - *v34;
        if (v35 > 0.0)
        {
          *v17.i32 = (v21 - a7) / v35;
          *v18.i32 = (a7 - *v34) / v35;
          v36 = vdupq_lane_s32(v18, 0).u64[0];
          v37 = vdupq_lane_s32(v17, 0).u64[0];
          v38.i64[0] = 0x3F0000003F000000;
          v38.i64[1] = 0x3F0000003F000000;
          *(a6 + 44) = vcvtq_s32_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_u32(*(v23 + 1)), *v18.i32), vcvtq_f32_u32(*(v34 + 1)), *v17.i32), v38));
          *(a6 + 60) = vcvtq_s32_f32(vaddq_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_u32(*(v23 + 5)), *v18.i32), vcvtq_f32_u32(*(v34 + 5)), *v17.i32), v38));
          *(a6 + 76) = vcvt_s32_f32(vadd_f32(vmla_f32(vmul_f32(v36, vcvt_f32_u32(*(v23 + 9))), v37, vcvt_f32_u32(*(v34 + 9))), 0x3F0000003F000000));
          v39 = vmla_n_f32(vmla_f32(vmul_f32(v36, *(v23 + 11)), v37, *(v34 + 11)), 0xC1980000C20C0000, v28);
          v30 = v39.f32[1];
          if (v39.f32[0] > v39.f32[1])
          {
            v30 = v39.f32[0];
          }

          v40 = (*v18.i32 * v23[13]) + (v34[13] * *v17.i32);
          *(a6 + 84) = v30;
          *(a6 + 88) = v40;
          v32 = vmla_f32(vmul_f32(v36, *(v23 + 14)), v37, *(v34 + 14));
          *(a6 + 92) = v32;
          v41 = v23[17];
          v42 = v34[17];
          *(a6 + 100) = (*v18.i32 * v23[16]) + (v34[16] * *v17.i32);
          v33 = (*v18.i32 * v41) + (v42 * *v17.i32);
          goto LABEL_33;
        }

LABEL_51:
        astcenc_config_init();
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }

  return result;
}

uint64_t validate_block_size(int a1, int a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (!is_legal_3d_block_size(a1, a2, a3))
    {
      return 4;
    }
  }

  else if ((is_legal_2d_block_size(a1, a2) & 1) == 0)
  {
    return 4;
  }

  if (a2 * a1 * a3 >= 0xD9)
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

uint64_t astcenc_context_alloc(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  LODWORD(memptr) = 1075880919;
  if (((2.51 + 12583000.0) + -12583000.0) != 3.0)
  {
    return 2;
  }

  if (a2)
  {
    operator new();
  }

  return 3;
}

uint64_t astcenc_context_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    free(*(result + 128));
    free(*(v1 + 112));
    std::condition_variable::~condition_variable((v1 + 568));
    std::mutex::~mutex((v1 + 496));
    std::condition_variable::~condition_variable((v1 + 432));
    std::mutex::~mutex((v1 + 360));
    std::condition_variable::~condition_variable((v1 + 296));
    std::mutex::~mutex((v1 + 224));

    JUMPOUT(0x186602850);
  }

  return result;
}

uint64_t astcenc_compress_image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v56 = v12;
  v52 = v8;
  v69 = *MEMORY[0x1E69E9840];
  if ((*(v7 + 4) & 0x10) != 0)
  {
    return 9;
  }

  v13.i64[0] = 0x500000005;
  v13.i64[1] = 0x500000005;
  if (vmaxv_u16(vmovn_s32(vcgtq_u32(*v9, v13))))
  {
    return 7;
  }

  v15 = v7;
  v16 = *(v7 + 108);
  if (v16 <= v11)
  {
    return 3;
  }

  if (16 * (*(v7 + 8) + *v8 - 1) / *(v7 + 8) * ((*(v7 + 12) + v8[1] - 1) / *(v7 + 12)) * ((*(v7 + 16) + v8[2] - 1) / *(v7 + 16)) > v10)
  {
    return 1;
  }

  v53 = v11;
  if (v16 == 1)
  {
    *(v7 + 288) = 0;
    atomic_store(0, (v7 + 344));
    *(v7 + 348) = 0;
    *(v7 + 424) = 0;
    atomic_store(0, (v7 + 480));
    *(v7 + 484) = 0;
  }

  v51 = v9;
  if (*(v7 + 36))
  {
    operator new();
  }

  ParallelManager::wait((v7 + 224));
  v17 = *(v15 + 112);
  v49 = *v15;
  bzero(&v61, 0xFA0uLL);
  v18 = *v17;
  v19 = v17[1];
  v48 = v17;
  v20 = v17[2];
  v62 = v19 * v18 * v20;
  v21 = *v52;
  v59 = v18;
  v22 = (v18 + *v52 - 1) / v18;
  v47 = v52[1];
  v57 = v19;
  v58 = v20;
  v55 = (v19 + v47 - 1) / v19;
  v23 = v55 * v22;
  v24 = v55 * v22 * ((v20 + v52[2] - 1) / v20);
  v67 = *(v15 + 20);
  v25 = *(v15 + 128);
  ParallelManager::init((v15 + 360), v24);
  v26 = vmvnq_s8(vceqq_s32(*v51, xmmword_186205980));
  v26.n128_u64[0] = vmovn_s32(v26);
  v26.n128_u16[0] = vmaxv_u16(v26.n128_u64[0]);
  v50 = load_image_block;
  if ((v26.n128_u8[0] & 1) == 0)
  {
    v50 = load_image_block;
    if ((v49 & 0xFFFFFFFE) != 2 && v58 == 1)
    {
      v27 = load_image_block;
      if (!v52[3])
      {
        v27 = load_image_block_fast_ldr;
      }

      v50 = v27;
    }
  }

  add_explicit = atomic_fetch_add_explicit((v15 + 480), 0x10u, memory_order_relaxed);
  v29 = *(v15 + 488);
  v30 = v29 >= add_explicit;
  v31 = v29 - add_explicit;
  if (v31 != 0 && v30)
  {
    v54 = (v25 + 231744 * v53);
    if (v31 >= 0x10)
    {
      v32 = 16;
    }

    else
    {
      v32 = v31;
    }

    do
    {
      v46 = v32;
      v33 = v32 + add_explicit;
      if (add_explicit < v32 + add_explicit)
      {
        do
        {
          v34 = add_explicit % v23 / v22;
          v35 = add_explicit % v23 % v22;
          v36 = v35 * v59;
          if (v58 != 1)
          {
            goto LABEL_40;
          }

          v37 = *(v15 + 36);
          if (!v37)
          {
            goto LABEL_40;
          }

          v38 = v36 + v59;
          if (v21 < v36 + v59)
          {
            v38 = v21;
          }

          v39 = v34 * v57 + v57;
          if (v47 < v39)
          {
            v39 = v47;
          }

          if (v47 <= (v34 * v57))
          {
            goto LABEL_39;
          }

          v40 = 0;
          v26.n128_f32[0] = 0.9 / (((2 * v37 - 2 + v59) * (2 * v37 - 2 + v57)) * 255.0);
          v41 = v34 * v57;
          do
          {
            v42 = v35 * v59;
            if (v21 > v36)
            {
              do
              {
                v43 = *(*(v15 + 120) + 4 * (v42 + v41 * v21));
                if (v43 > v26.n128_f32[0])
                {
                  v42 = v38;
                  v41 = v39;
                }

                v40 |= v43 > v26.n128_f32[0];
                ++v42;
              }

              while (v42 < v38);
            }

            ++v41;
          }

          while (v41 < v39);
          if ((v40 & 1) == 0)
          {
LABEL_39:
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v68 = 1;
          }

          else
          {
LABEL_40:
            (v50)(v49, v52, &v61, v48, v26);
            if ((*(v15 + 4) & 4) != 0)
            {
              *&v44 = vmul_n_f32(*(v15 + 20), *(&v66 + 3) * 0.000015259);
              *(&v44 + 2) = (*(&v66 + 3) * 0.000015259) * *(v15 + 28);
              HIDWORD(v44) = *(v15 + 32);
              v67 = v44;
            }
          }

          compress_block(v15, &v61, v56 + (16 * (v35 + (v34 + add_explicit / v23 * v55) * v22)), v54);
          ++add_explicit;
        }

        while (add_explicit != v33);
      }

      ParallelManager::complete_task_assignment((v15 + 360), v46);
      add_explicit = atomic_fetch_add_explicit((v15 + 480), 0x10u, memory_order_relaxed);
      v45 = *(v15 + 488);
      v32 = v45 - add_explicit;
      if (v45 - add_explicit >= 0x10)
      {
        v32 = 16;
      }
    }

    while (v45 > add_explicit);
  }

  ParallelManager::wait((v15 + 360));
  v60[0] = &unk_1EF50E198;
  v60[1] = v15;
  v60[3] = v60;
  ParallelManager::term(v15 + 360, v60);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:fe200100](v60);
  return 0;
}

void sub_1861B6344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:fe200100](va);
  _Unwind_Resume(a1);
}

void ParallelManager::init(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  if ((*(a1 + 64) & 1) == 0)
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:fe200100]();
    }

    *(a1 + 128) = (*(*v4 + 48))(v4);
    *(a1 + 64) = 1;
  }

  std::mutex::unlock(a1);
}

void ParallelManager::wait(ParallelManager *this)
{
  v2.__m_ = this;
  *&v2.__owns_ = 1;
  std::mutex::lock(this);
  if (*(this + 31) == *(this + 32))
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((this + 72), &v2);
  }

  while (*(this + 31) != *(this + 32));
  if (v2.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v2.__m_);
  }
}

void ParallelManager::term(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  if ((*(a1 + 65) & 1) == 0)
  {
    v4 = *(a2 + 24);
    if (!v4)
    {
      std::__throw_bad_function_call[abi:fe200100]();
    }

    (*(*v4 + 48))(v4);
    *(a1 + 65) = 1;
  }

  std::mutex::unlock(a1);
}

void ParallelManager::init(std::mutex *this, int a2)
{
  std::mutex::lock(this);
  if ((this[1].__m_.__sig & 1) == 0)
  {
    LODWORD(this[2].__m_.__sig) = a2;
    LOBYTE(this[1].__m_.__sig) = 1;
  }

  std::mutex::unlock(this);
}

void ParallelManager::complete_task_assignment(ParallelManager *this, int a2)
{
  std::mutex::lock(this);
  v4 = *(this + 32);
  v5 = *(this + 31) + a2;
  *(this + 31) = v5;
  std::mutex::unlock(this);
  if (v5 == v4)
  {

    std::condition_variable::notify_all((this + 72));
  }
}

char *astcenc_get_error_string(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_1E6F44398[a1];
  }
}

void astcenc_context::~astcenc_context(astcenc_context *this)
{
  std::condition_variable::~condition_variable((this + 568));
  std::mutex::~mutex((this + 496));
  std::condition_variable::~condition_variable(this + 9);
  std::mutex::~mutex((this + 360));
  std::condition_variable::~condition_variable((this + 296));
  std::mutex::~mutex((this + 224));
}

void std::__throw_bad_function_call[abi:fe200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

__n128 std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0>,unsigned int ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF50E108;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_0>,unsigned int ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF50E198;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = *(v2 + 120);
  if (result)
  {
    result = MEMORY[0x186602830](result, 0x1000C8052888210);
    v2 = *(a1 + 8);
  }

  *(v2 + 120) = 0;
  return result;
}

uint64_t std::__function::__func<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1,std::allocator<astcenc_compress_image(astcenc_context *,astcenc_image *,astcenc_swizzle const*,unsigned char *,unsigned long,unsigned int)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:fe200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t is_legal_2d_block_size(int a1, int a2)
{
  v2 = a2 | (a1 << 8);
  result = 1;
  if (v2 > 2564)
  {
    v4 = (v2 - 2565) > 5 || ((1 << (v2 - 5)) & 0x2B) == 0;
    if (v4 && v2 != 3082 && v2 != 3084)
    {
      return 0;
    }
  }

  else if (v2 > 2052)
  {
    v5 = v2 - 2053;
    if (v5 > 3 || v5 == 2)
    {
      return 0;
    }
  }

  else if ((v2 - 1284) >= 2 && (v2 - 1541) >= 2 && v2 != 1028)
  {
    return 0;
  }

  return result;
}

uint64_t is_legal_3d_block_size(int a1, int a2, int a3)
{
  v3 = (a2 << 8) | (a1 << 16) | a3;
  result = 1;
  if (v3 > 328963)
  {
    v5 = (v3 - 328964) >= 2 && (v3 - 394757) >= 2;
    v6 = 394501;
LABEL_8:
    if (v5 && v3 != v6)
    {
      return 0;
    }

    return result;
  }

  if (v3 > 263170)
  {
    v5 = (v3 - 263171) >= 2;
    v6 = 328708;
    goto LABEL_8;
  }

  if (v3 != 197379 && v3 != 262915)
  {
    return 0;
  }

  return result;
}

uint64_t compute_ideal_endpoint_formats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x1EEE9AC00](a1, a2, a3, a4, a5, a6, a7);
  v371 = v16;
  v372 = v17;
  v416 = *MEMORY[0x1E69E9840];
  v25 = *v13;
  if (!*v13)
  {
    compute_ideal_endpoint_formats();
  }

  v26 = v15;
  v27 = v14;
  v28 = v13;
  v375 = v19;
  v373 = v18;
  v374 = v20;
  v386 = *(v14 + 3553);
  v390 = *(v14 + 3769);
  memset(v415, 0, sizeof(v415));
  memset(v410, 0, sizeof(v410));
  v387 = v25;
  compute_avgs_and_dirs_3_comp_rgb(v13, v14, v410, v16, v17, v18, v19, v20, 0.0, v21, v22, v23, v24);
  v30 = v387;
  v31 = 0;
  v32 = v28 + 2;
  v33 = v28 + 112;
  v34 = v27 + 324;
  v35 = v27 + 108;
  v36 = v27 + 216;
  v37 = v26 + 16;
  v38 = v26 + 80;
  v39 = vdupq_n_s32(0x3F13CD3Au);
  v40.i64[0] = 0x400000004;
  v40.i64[1] = 0x400000004;
  v41.i64[0] = 0x100000001;
  v41.i64[1] = 0x100000001;
  v42 = &unk_1EA8DB000;
  v382 = v26 + 16;
  v384 = v32;
  v381 = v26 + 80;
  do
  {
    v43 = &v410[2 * v31];
    v44 = v43[1];
    v45 = vmulq_f32(v44, v44);
    *v45.i8 = vadd_f32(*&vextq_s8(v45, v45, 8uLL), *v45.i8);
    v46 = vpadd_f32(*v45.i8, *v45.i8);
    v47 = xmmword_18622B5B0;
    if (*v46.i32 != 0.0)
    {
      v47 = vdivq_f32(v44, vsqrtq_f32(vdupq_lane_s32(v46, 0)));
    }

    v48 = *v43;
    v49 = vmulq_f32(v48, v48);
    *v49.i8 = vadd_f32(*&vextq_s8(v49, v49, 8uLL), *v49.i8);
    v50 = vpadd_f32(*v49.i8, *v49.i8);
    v51 = xmmword_18622B5B0;
    if (*v50.i32 != 0.0)
    {
      v51 = vdivq_f32(v48, vsqrtq_f32(vdupq_lane_s32(v50, 0)));
    }

    v52 = *(v32 + v31);
    if (!*(v32 + v31))
    {
      compute_ideal_endpoint_formats();
    }

    v53 = 0;
    v54 = *v27[442].f32;
    v55 = vmulq_f32(v48, v39);
    v55.f32[0] = v55.f32[2] + vaddv_f32(*v55.f32);
    v56 = vdupq_lane_s32(*v55.f32, 0);
    v56.i32[3] = 0;
    v57 = vaddq_f32(v48, vmulq_f32(v56, xmmword_186232BC0));
    v58 = vmulq_f32(v48, v47);
    v58.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
    v59 = vdupq_lane_s32(*v58.f32, 0);
    v59.i32[3] = 0;
    v60 = vsubq_f32(v48, vmulq_f32(v47, v59));
    v48.i32[0] = 1190133760;
    if (!v27[471].i8[1])
    {
      v48.f32[0] = 65535.0;
    }

    v61 = vdupq_lane_s32(*v48.f32, 0);
    v62 = vdupq_lane_s32(*v60.i8, 0);
    v63 = vdupq_lane_s32(*v60.i8, 1);
    v64 = vdupq_laneq_s32(v60, 2);
    v65 = vdupq_lane_s32(*v57.i8, 0);
    v66 = vdupq_lane_s32(*v57.i8, 1);
    v67 = vdupq_laneq_s32(v57, 2);
    v68 = vdupq_n_s32(v52);
    v69 = 0uLL;
    v70 = xmmword_186205980;
    v71 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    do
    {
      v395 = v73;
      v29.i32[0] = *&v33[v53 / 2];
      v75 = vmovl_u16(*&vmovl_u8(*v29.f32));
      v76 = v75.u32[2];
      v77 = v75.u32[1];
      v78 = v75.u32[3];
      v79 = vcgtq_s32(v68, v70);
      v80 = v75.i32[0];
      v81.i32[0] = v34->i32[v75.u32[0]];
      v81.i32[1] = v34->i32[v75.u32[1]];
      v81.i32[2] = v34->i32[v75.u32[2]];
      v75.i32[0] = v27->i32[v75.u32[0]];
      v75.i32[1] = v27->i32[v75.u32[1]];
      v75.i32[2] = v27->i32[v75.u32[2]];
      v82.i32[0] = v35->i32[v80];
      v81.i32[3] = v34->i32[v75.u32[3]];
      v82.i32[1] = v35->i32[v77];
      v83 = v35 + v75.u32[3];
      v75.i32[3] = v27->i32[v75.u32[3]];
      v82.i32[2] = v35->i32[v76];
      v82.i32[3] = *v83;
      v84 = vsubq_f32(v81, v61);
      v81.i32[0] = v36->i32[v80];
      v81.i32[1] = v36->i32[v77];
      v81.i32[2] = v36->i32[v76];
      v81.i32[3] = v36->i32[v78];
      v85 = vaddq_f32(vaddq_f32(vmulq_n_f32(v75, v47.f32[0]), vmulq_lane_f32(v82, *v47.f32, 1)), vmulq_laneq_f32(v81, v47, 2));
      v392 = vaddq_f32(v74, vandq_s8(vmulq_f32(v84, v84), v79));
      v86 = vsubq_f32(vaddq_f32(v62, vmulq_n_f32(v85, v47.f32[0])), v75);
      v87 = vsubq_f32(vaddq_f32(v63, vmulq_lane_f32(v85, *v47.f32, 1)), v82);
      v88 = vsubq_f32(vaddq_f32(v64, vmulq_laneq_f32(v85, v47, 2)), v81);
      v89 = vaddq_f32(vaddq_f32(vmulq_n_f32(v75, v51.f32[0]), vmulq_lane_f32(v82, *v51.f32, 1)), vmulq_laneq_f32(v81, v51, 2));
      v90 = vsubq_f32(vmulq_n_f32(v89, v51.f32[0]), v75);
      v91 = vsubq_f32(vmulq_lane_f32(v89, *v51.f32, 1), v82);
      v92 = vsubq_f32(vmulq_laneq_f32(v89, v51, 2), v81);
      v93 = vaddq_f32(vmulq_n_f32(vmulq_f32(v86, v86), v54.f32[0]), vmulq_lane_f32(vmulq_f32(v87, v87), *v54.f32, 1));
      v94 = vmulq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v75, v39), vmulq_f32(v82, v39)), vmulq_f32(v81, v39)), v39);
      v95 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v92, v92), v54, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v90, v90), v54.f32[0]), vmulq_lane_f32(vmulq_f32(v91, v91), *v54.f32, 1)));
      v96 = vsubq_f32(vaddq_f32(v65, v94), v75);
      v97 = vsubq_f32(vaddq_f32(v66, v94), v82);
      v98 = vaddq_f32(vmulq_laneq_f32(vmulq_f32(v88, v88), v54, 2), v93);
      v70 = vaddq_s32(v70, v40);
      v72 = vaddq_f32(v72, vandq_s8(v95, v79));
      v99 = vsubq_f32(vaddq_f32(v67, v94), v81);
      v100 = vandq_s8(vaddq_f32(vmulq_laneq_f32(vmulq_f32(v99, v99), v54, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v96, v96), v54.f32[0]), vmulq_lane_f32(vmulq_f32(v97, v97), *v54.f32, 1))), v79);
      v101 = vsubq_f32(v94, v75);
      v102 = vsubq_f32(v94, v82);
      v103 = vsubq_f32(v94, v81);
      v74 = v392;
      v396 = vaddq_f32(v395, vandq_s8(v98, v79));
      v73 = v396;
      v71 = vaddq_f32(v71, v100);
      v29 = vandq_s8(vaddq_f32(vmulq_laneq_f32(vmulq_f32(v103, v103), v54, 2), vaddq_f32(vmulq_n_f32(vmulq_f32(v101, v101), v54.f32[0]), vmulq_lane_f32(vmulq_f32(v102, v102), *v54.f32, 1))), v79);
      v69 = vaddq_f32(v69, v29);
      v53 += 4;
    }

    while (v53 < v52);
    v104 = *(v37 + 16 * v31);
    v105 = *(v38 + 16 * v31);
    {
      v388 = v39;
      v370 = v71;
      v369 = v104;
      v368 = v105;
      compress_block();
      v105 = v368;
      v104 = v369;
      v74 = v392;
      v73 = v396;
      v71 = v370;
      v42 = &unk_1EA8DB000;
      v41.i64[0] = 0x100000001;
      v41.i64[1] = 0x100000001;
      v40.i64[0] = 0x400000004;
      v40.i64[1] = 0x400000004;
      v39 = v388;
      v38 = v26 + 80;
      v37 = v26 + 16;
      v32 = v384;
      v30 = v387;
    }

    v106 = vadd_f32(*&vextq_s8(v74, v74, 8uLL), *v74.i8);
    v107 = vadd_f32(*&vextq_s8(v73, v73, 8uLL), *v73.i8);
    v108 = vpadd_f32(v107, v107);
    v109 = vadd_f32(*&vextq_s8(v72, v72, 8uLL), *v72.i8);
    v110 = vadd_f32(*&vextq_s8(v71, v71, 8uLL), *v71.i8);
    v111 = vadd_f32(*&vextq_s8(v69, v69, 8uLL), *v69.i8);
    v112 = vsubq_f32(v105, v104);
    v113 = (~vaddvq_s32(vshlq_u32(vandq_s8(vcgtq_f32(vdupq_n_s32(0x45F5C199u), vmaxq_f32(v112, vsubq_f32(0, v112))), v41), v42[116])) & 7) == 0;
    *v114.f32 = vsub_f32(vzip1_s32(vpadd_f32(v109, v109), vpadd_f32(v110, v110)), vdup_lane_s32(v108, 0));
    v115 = (v415 + 20 * v31);
    v114.i64[1] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(vpadd_f32(v106, v106).f32[0], v54, 3)), vsub_f32(vpadd_f32(v111, v111), v108).u32[0]);
    *v115 = vmulq_f32(v114, xmmword_186232BD0);
    v115[1].i8[0] = v113;
    v116 = 30720.0;
    if (!v27[471].i8[1])
    {
      v116 = 65535.0;
    }

    v115[1].i8[1] = v27[444].i8[0] ^ 1 | (v27[437].f32[1] != v116) | (v27[441].f32[1] != v116);
    ++v31;
    v33 += 108;
  }

  while (v31 != v30);
  bzero(v410, 0x540uLL);
  v118 = 0;
  v119 = 0uLL;
  memset(v409, 0, sizeof(v409));
  v120 = COERCE_FLOAT(*&v27[443]) + vaddv_f32(v27[442]);
  v121 = 61440.0;
  if (v386)
  {
    *v117.i32 = 61440.0;
  }

  else
  {
    *v117.i32 = 65535.0;
  }

  if (!v390)
  {
    v121 = 65535.0;
  }

  v122 = vdupq_lane_s32(v117, 0);
  *&v122.i32[3] = v121;
  v377 = v122;
  v379 = *v27[442].f32;
  if (v390)
  {
    v123 = 15;
  }

  else
  {
    v123 = 14;
  }

  v124.i64[0] = 0xB0B0B0B0B0B0B0BLL;
  v124.i8[8] = v123;
  v124.i8[9] = v123;
  v124.i8[10] = v123;
  v124.i8[11] = v123;
  v124.i8[12] = v123;
  v124.i8[13] = v123;
  v124.i8[14] = v123;
  v124.i8[15] = v123;
  v125 = &v409[2] + 3;
  v397 = &v410[4] + 3;
  v126 = v411;
  v393 = &v409[1] + 3;
  v127 = 0.5;
  v376 = vdupq_lane_s32(201852416, 0);
  v391 = v124;
  do
  {
    v128 = &v410[21 * v118];
    v129 = v415 + 5 * v118;
    v130 = *(v382 + 16 * v118);
    v131 = *(v381 + 16 * v118);
    v132 = vmaxnmq_f32(vsubq_f32(v130, v377), v119);
    v133 = vmaxnmq_f32(vsubq_f32(v131, v377), v119);
    v134 = vminnmq_f32(v130, v119);
    v135 = vminnmq_f32(v131, v119);
    v137 = vaddq_f32(vmulq_f32(v134, v134), vmulq_f32(v135, v135));
    v136 = vmulq_f32(v379, vaddq_f32(vmulq_f32(v133, v133), vaddq_f32(vmulq_f32(v132, v132), v137)));
    v137.i32[0] = v136.i32[2];
    v137.i8[0] = *(v384 + v118);
    v138 = v137.u32[0];
    v139 = ((v136.f32[2] + vaddv_f32(*v136.f32)) * v127) * v137.u32[0];
    v140 = vmuls_lane_f32(v127, v136, 3) * v137.u32[0];
    if (v386)
    {
      v141 = *(v381 + 16 * v118);
      v141.i32[3] = v141.i32[0];
      v142 = fmaxf(vminvq_f32(v141), 0.0);
      LODWORD(v143) = HIDWORD(*(v381 + 16 * v118));
      v144 = *v131.i32 > *&v131.i32[1];
      v145 = *v131.i32 > *&v131.i32[2];
      if (*&v131.i32[1] > *&v131.i32[2])
      {
        v146 = 1;
      }

      else
      {
        v146 = 2;
      }

      if (v143 <= *&v131.i32[2])
      {
        LODWORD(v143) = *(v381 + 16 * v118 + 8);
      }

      v147 = !v144 || !v145;
      if (v144 && v145)
      {
        v148 = 0;
      }

      else
      {
        v148 = v146;
      }

      v149 = (&v399 | (4 * v148));
      if (!v147)
      {
        LODWORD(v143) = *(v381 + 16 * v118);
      }

      v399 = *(v382 + 16 * v118);
      v137.f32[0] = v143 - *v149;
      v150 = (v143 - v142);
      v151 = v137.f32[0];
      v152 = v150 < 0x2000;
      v153 = v150 < 2048;
      v154 = v150 < 1024;
      v155 = v137.f32[0] < 2048 && v150 < 0x2000;
      v156 = v151 < 2048 && v150 < 2048;
      v157 = v151 < 2048 && v150 < 1024;
      v158 = v151 < 0x2000 && v150 < 0x2000;
      v159 = v151 < 0x2000 && v150 < 2048;
      v160 = v150 < 4096;
      if (v151 >= 0x2000)
      {
        v160 = 0;
      }

      v161 = v150 < 0x8000;
      v162 = v151 < 0x2000 && v150 < 0x8000;
      v163 = v150 < 0x4000;
      v164 = vsubq_f32(v131, vdupq_lane_s32(*v137.f32, 0));
      v164.i32[3] = 0;
      v165 = v130;
      v165.i32[3] = 0;
      v166 = vsubq_f32(v164, v165);
      v167 = vmaxvq_f32(vmaxq_f32(v166, vsubq_f32(v119, v166)));
      if (v151 >= 0x2000)
      {
        v163 = 0;
      }

      v168 = v151 < 0x4000;
      if (v161 && v168)
      {
        v169 = 4;
      }

      else
      {
        v169 = 5;
      }

      v170 = v415 + 5 * v118;
      if (v152 && v168)
      {
        v171 = 3;
      }

      else
      {
        v171 = v169;
      }

      v172 = v151 < 1024;
      if (v153 && v168)
      {
        v171 = 2;
      }

      v173 = v151 < 4096;
      if (v153 && v172)
      {
        v171 = 1;
      }

      if (v163 && v167 < 0x2000)
      {
        v174 = 0;
      }

      else
      {
        v174 = 8;
      }

      v175 = v167 < 4096;
      if (v162 && v175)
      {
        v174 = 1;
      }

      if (v160 && v175)
      {
        v174 = 2;
      }

      if (v158 && v167 < 2048)
      {
        v174 = 3;
      }

      v176 = v167 < 512;
      if (v155 && v176)
      {
        v177 = 4;
      }

      else
      {
        v177 = v174;
      }

      if (v159 && v167 < 1024)
      {
        v177 = 5;
      }

      if (v156 && v167 < 256)
      {
        v178 = 6;
      }

      else
      {
        v178 = v177;
      }

      v147 = !v157 || !v176;
      v179 = 7;
      if (v147)
      {
        v179 = v178;
      }

      if (v154 && v173)
      {
        v180 = 0;
      }

      else
      {
        v180 = v171;
      }

      v181 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::rgbo_error_scales[v180];
      v182 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::rgb_error_scales[v179];
      v183 = vmul_f32(vadd_f32(vzip1_s32(*&vextq_s8(v131, v131, 8uLL), *&vextq_s8(v130, v130, 8uLL)), vadd_f32(vzip1_s32(*v131.i8, *v130.i8), vzip2_s32(*v131.i8, *v130.i8))), vdup_n_s32(0x3EAAAAABu));
      v389 = vsub_f32(v183, vdup_lane_s32(v183, 1)).f32[0];
      memset_pattern16(v128, &xmmword_18622EEE0, 0x80uLL);
      v185 = 0;
      v186 = 0x202020202020202;
      v187 = 0x707070707070707;
      v188 = v391;
      v189 = vextq_s8(v188, v188, 8uLL).u64[0];
      v190 = v409 + 84 * v118;
      vst4_s8(v190, *&v186);
      v191 = flt_186232BE8[v389 < 3968.0];
      v192 = v182 * 0.01;
      v127 = 0.5;
      if (v389 < 960.0)
      {
        v191 = 0.002;
      }

      v194 = v170[2];
      v193 = v170[3];
      v195 = v170[1];
      v196 = v125;
      v197 = v126;
      do
      {
        v198 = *&compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::baseline_quant_error[v185 + 4] * v138;
        v199 = (v120 * v198) + (v120 * v198);
        *v196 = v123;
        *(v196 - 1) = 11;
        *(v197 - 1) = v193 + (v139 + (v199 * v192));
        *v197 = v140 + (v139 + (v199 + ((v379.f32[3] * v198) + (v379.f32[3] * v198))));
        *(v197 - 3) = (v193 + (v139 + (v199 * v191))) + v194;
        *(v197 - 2) = (v193 + (v139 + (v199 * (v181 * 0.0015)))) + v195;
        *(v196 - 3) = 1794;
        ++v185;
        v197 += 4;
        v196 += 4;
      }

      while (v185 != 13);
    }

    else
    {
      memset_pattern16(v128, &xmmword_18622EEE0, 0x40uLL);
      *(v409 + 84 * v118) = v376;
      v200 = 0.625;
      if (*(v129 + 17))
      {
        v201 = v127;
      }

      else
      {
        v200 = 1.0;
        v201 = 1.0;
      }

      if (*(v129 + 16))
      {
        v202 = v127;
      }

      else
      {
        v202 = 1.0;
      }

      v203 = 0.25;
      if (!*(v129 + 16))
      {
        v203 = 1.0;
      }

      v204 = *v129;
      v206 = v129[2];
      v205 = v129[3];
      v207 = v393;
      v208 = v397;
      v209 = compute_color_error_for_every_integer_count_and_quant_level(BOOL,BOOL,int,partition_info const&,encoding_choice_errors const&,endpoints const&,vfloat4,float (*)[4],unsigned char (*)[4])::baseline_quant_error;
      for (i = 4; i != 21; ++i)
      {
        if (i > 0x12)
        {
          v202 = 1.0;
        }

        v211 = *v209++;
        v212 = v211;
        if (i > 0x12)
        {
          v203 = 1.0;
        }

        v213 = (v120 * v138) * v212;
        v214 = ((v379.f32[3] * v138) + (v120 * v138)) * v212;
        *v207 = 12;
        v215 = v140 + (v139 + ((v200 * v214) * v202));
        v216 = (v139 + ((v201 * v213) * v203)) + v205;
        if ((v140 + (v139 + (v214 + v204))) >= v216)
        {
          v217 = 8;
        }

        else
        {
          v216 = v140 + (v139 + (v214 + v204));
          v217 = 10;
        }

        v218 = (v139 + v213) + v205;
        *(v207 - 1) = v217;
        v219 = (v140 + (v139 + v214)) + v206;
        *(v208 - 1) = v216;
        *v208 = v215;
        if ((v218 + v204) >= v219)
        {
          v220 = 4;
        }

        else
        {
          v219 = v218 + v204;
          v220 = 6;
        }

        *(v207 - 2) = v220;
        *(v208 - 3) = v218 + v206;
        *(v208 - 2) = v219;
        *(v207 - 3) = 0;
        v208 += 4;
        v207 += 4;
      }
    }

    ++v118;
    v126 += 84;
    v125 += 84;
    v397 += 84;
    v393 += 84;
    v221 = v387;
    v119 = 0uLL;
  }

  while (v118 != v387);
  v222 = a13 + 157120;
  v223 = a13 + 165312;
  v224 = a13 + 167360;
  v225 = v375 & 0xFFFFFFFC;
  v226 = vdupq_n_s32(0x7149F2CAu);
  *(v222 + 4 * v225) = v226;
  *(v223 + v225) = 0;
  *(v224 + v225) = 0;
  v227 = v374;
  v228 = (v374 - 1) & 0xFFFFFFFC;
  *(v222 + 4 * v228) = v226;
  v385 = a13 + 169408;
  *(v223 + v228) = 0;
  *(v224 + v228) = 0;
  if (v387 > 2)
  {
    v380 = a13 + 165312;
    v378 = a13 + 167360;
    v383 = v375 & 0xFFFFFFFC;
    if (v387 == 3)
    {
      bzero(&v401, 0x348uLL);
      bzero(v400, 0x276uLL);
      for (j = 0; j != 840; j += 40)
      {
        memset_pattern16(&v401 + j, &xmmword_18622EEE0, 0x28uLL);
      }

      v266 = &v409[11] + 8;
      v267 = &v413;
      v268 = &v407;
      v269 = &v400[7] + 10;
      v270 = 4;
      do
      {
        v271 = 0;
        v272 = v269;
        v273 = v268;
        do
        {
          v274 = 0;
          v275 = v272;
          v276 = v273;
          do
          {
            if (v271 >= v274)
            {
              v277 = v274;
            }

            else
            {
              v277 = v271;
            }

            if (v271 <= v274)
            {
              v278 = v274;
            }

            else
            {
              v278 = v271;
            }

            if (v278 - v277 <= 1)
            {
              v279 = 0;
              v280 = v275;
              do
              {
                if (v279 >= v277)
                {
                  v281 = v277;
                }

                else
                {
                  v281 = v279;
                }

                if (v279 <= v278)
                {
                  v282 = v278;
                }

                else
                {
                  v282 = v279;
                }

                if (v282 - v281 <= 1)
                {
                  v283 = fminf((*(&v410[v270] + v271) + *&v411[16 * v270 + 196 + 4 * v274]) + v267[v279], 1.0e10);
                  if (v283 <= *&v276[v279])
                  {
                    *&v276[v279] = v283;
                    *(v280 - 2) = *(v409 + 4 * v270 + v271);
                    *(v280 - 1) = *(&v409[5] + 4 * v270 + v274 + 4);
                    *v280 = v266[v279];
                  }
                }

                ++v279;
                v280 += 3;
              }

              while (v279 != 4);
            }

            ++v274;
            ++v276;
            v275 += 3;
          }

          while (v274 != 4);
          ++v271;
          ++v273;
          v272 += 3;
        }

        while (v271 != 4);
        ++v270;
        v266 += 4;
        v267 += 4;
        v268 += 10;
        v269 += 30;
      }

      while (v270 != 21);
      if (v375)
      {
        compute_ideal_endpoint_formats();
      }

      if (v374)
      {
        v284 = 0;
        v249 = -1;
        v285 = 1.0e30;
        v235 = v373;
        v221 = v387;
        v237 = a11;
        v236 = a12;
        v239 = a9;
        v238 = a10;
        v223 = a13 + 165312;
        v224 = a13 + 167360;
        LODWORD(v225) = v375 & 0xFFFFFFFC;
        do
        {
          if (*&v372[v284] >= 1.0e30)
          {
            *(v222 + 4 * v284) = 1900671690;
          }

          else
          {
            v286 = 0;
            v287 = *(v371 + v284);
            v288 = v385 + 4 * v284;
            v289 = &quant_mode_table[v287 + 384];
            v290 = -7;
            v291 = &v401;
            v292 = 1.0e30;
            do
            {
              v294 = *v289;
              v289 += 128;
              v293 = v294;
              if (v294 < 4)
              {
                break;
              }

              v295 = 10 * v293;
              if (*&v291[v295] < v292)
              {
                v292 = *&v291[v295];
                v286 = v290 + 10;
              }

              ++v291;
              v261 = __CFADD__(v290++, 1);
            }

            while (!v261);
            v296 = &quant_mode_table[128 * v286 + v287];
            v297 = *v296;
            LOBYTE(v296) = v296[5];
            *(v380 + v284) = v297;
            *(v378 + v284) = v296;
            if (v297 <= 3)
            {
              *(v288 + 2) = 0;
              *v288 = 0;
            }

            else
            {
              v298 = v400 + 30 * v297 + 3 * v286 - 9;
              *v288 = *v298;
              *(v288 + 2) = v298[2];
            }

            v299 = v292 + *&v372[v284];
            *(v222 + 4 * v284) = v299;
            if (v299 < v285)
            {
              v249 = v284;
              v285 = v299;
            }
          }

          ++v284;
        }

        while (v284 != v374);
        goto LABEL_272;
      }
    }

    else
    {
      if (v387 != 4)
      {
        goto LABEL_298;
      }

      bzero(&v401, 0x444uLL);
      bzero(v400, 0x444uLL);
      for (k = 0; k != 1092; k += 52)
      {
        memset_pattern16(&v401 + k, &xmmword_18622EEE0, 0x34uLL);
      }

      v314 = &v409[16] + 12;
      v315 = &v414;
      v316 = &v408;
      v317 = &v400[13] + 3;
      v318 = 4;
      do
      {
        v319 = 0;
        v394 = v317;
        v398 = v316;
        do
        {
          v320 = 0;
          v321 = v317;
          v322 = v316;
          do
          {
            if (v319 >= v320)
            {
              v323 = v320;
            }

            else
            {
              v323 = v319;
            }

            if (v319 <= v320)
            {
              v324 = v320;
            }

            else
            {
              v324 = v319;
            }

            if (v324 - v323 <= 1)
            {
              v325 = 0;
              v326 = v321;
              v327 = v322;
              do
              {
                if (v325 >= v323)
                {
                  v328 = v323;
                }

                else
                {
                  v328 = v325;
                }

                if (v325 <= v324)
                {
                  v329 = v324;
                }

                else
                {
                  v329 = v325;
                }

                if (v329 - v328 <= 1)
                {
                  v330 = 0;
                  v331 = v326;
                  do
                  {
                    if (v330 >= v328)
                    {
                      v332 = v328;
                    }

                    else
                    {
                      v332 = v330;
                    }

                    if (v330 <= v329)
                    {
                      v333 = v329;
                    }

                    else
                    {
                      v333 = v330;
                    }

                    if (v333 - v332 <= 1)
                    {
                      v334 = fminf(((*(&v410[v318] + v319) + *&v411[16 * v318 + 196 + 4 * v320]) + *&v412[16 * v318 + 272 + 4 * v325]) + v315[v330], 1.0e10);
                      if (v334 <= *&v327[v330])
                      {
                        *&v327[v330] = v334;
                        *(v331 - 3) = *(v409 + 4 * v318 + v319);
                        *(v331 - 2) = *(&v409[5] + 4 * v318 + v320 + 4);
                        *(v331 - 1) = *(&v409[10] + 4 * v318 + v325 + 8);
                        *v331 = v314[v330];
                      }
                    }

                    ++v330;
                    v331 += 4;
                  }

                  while (v330 != 4);
                }

                ++v325;
                ++v327;
                v326 += 4;
              }

              while (v325 != 4);
            }

            ++v320;
            ++v322;
            v321 += 4;
          }

          while (v320 != 4);
          ++v319;
          ++v316;
          v317 += 4;
        }

        while (v319 != 4);
        ++v318;
        v314 += 4;
        v315 += 4;
        v316 = v398 + 13;
        v317 = v394 + 52;
      }

      while (v318 != 21);
      if (v375)
      {
        compute_ideal_endpoint_formats();
      }

      v227 = v374;
      if (v374)
      {
        v335 = 0;
        v249 = -1;
        v336 = 1.0e30;
        v235 = v373;
        v221 = v387;
        v237 = a11;
        v236 = a12;
        v239 = a9;
        v238 = a10;
        v223 = a13 + 165312;
        v224 = a13 + 167360;
        LODWORD(v225) = v375 & 0xFFFFFFFC;
        do
        {
          if (*&v372[v335] >= 1.0e30)
          {
            *(v222 + 4 * v335) = 1900671690;
          }

          else
          {
            v337 = 0;
            v338 = *(v371 + v335);
            v339 = &quant_mode_table[v338 + 512];
            v340 = -6;
            v341 = &v401;
            v342 = 1.0e30;
            do
            {
              v344 = *v339;
              v339 += 128;
              v343 = v344;
              if (v344 < 4)
              {
                break;
              }

              v345 = 13 * v343;
              if (*&v341[v345] < v342)
              {
                v342 = *&v341[v345];
                v337 = v340 + 10;
              }

              ++v341;
              v261 = __CFADD__(v340++, 1);
            }

            while (!v261);
            v346 = &quant_mode_table[128 * v337 + v338];
            v347 = *v346;
            LOBYTE(v346) = v346[8];
            *(v380 + v335) = v347;
            *(v378 + v335) = v346;
            if (v347 <= 3)
            {
              *(v385 + 4 * v335) = 0;
            }

            else
            {
              *(v385 + 4 * v335) = *(&v400[-1] + 13 * v347 + v337);
            }

            v348 = v342 + *&v372[v335];
            *(v222 + 4 * v335) = v348;
            if (v348 < v336)
            {
              v249 = v335;
              v336 = v348;
            }
          }

          ++v335;
        }

        while (v335 != v374);
        goto LABEL_272;
      }
    }

    v249 = -1;
    v235 = v373;
    v221 = v387;
    v237 = a11;
    v236 = a12;
    v239 = a9;
    v238 = a10;
    v223 = a13 + 165312;
    v224 = a13 + 167360;
LABEL_271:
    LODWORD(v225) = v383;
    goto LABEL_272;
  }

  if (v387 != 1)
  {
    if (v387 == 2)
    {
      v383 = v375 & 0xFFFFFFFC;
      bzero(&v401, 0x24CuLL);
      v229 = 0;
      memset(v400, 0, 294);
      do
      {
        memset_pattern16(&v401 + v229, &xmmword_18622EEE0, 0x1CuLL);
        v229 += 28;
      }

      while (v229 != 588);
      v230 = &v409[6] + 4;
      v231 = v412;
      v232 = &v400[3] + 9;
      v233 = &v406;
      v234 = 4;
      v235 = v373;
      v237 = a11;
      v236 = a12;
      v239 = a9;
      v238 = a10;
      do
      {
        v240 = 0;
        v241 = v233;
        v242 = v232;
        do
        {
          v243 = 0;
          v244 = v240;
          v245 = v242;
          do
          {
            if (v244 >= 0)
            {
              v246 = v244;
            }

            else
            {
              v246 = -v244;
            }

            if (v246 <= 1)
            {
              v247 = fminf(*(&v410[v234] + v240) + *&v231[4 * v243], 1.0e10);
              if (v247 <= *&v241[v243])
              {
                *&v241[v243] = v247;
                *(v245 - 1) = *(v409 + 4 * v234 + v240);
                *v245 = v230[v243];
              }
            }

            ++v243;
            v245 += 2;
            --v244;
          }

          while (v243 != 4);
          ++v240;
          v242 += 2;
          ++v241;
        }

        while (v240 != 4);
        ++v234;
        v230 += 4;
        v231 += 16;
        v232 += 14;
        v233 += 7;
      }

      while (v234 != 21);
      if (v375)
      {
        compute_ideal_endpoint_formats();
      }

      if (v374)
      {
        v248 = 0;
        v249 = -1;
        v250 = 1.0e30;
        v221 = v387;
        do
        {
          if (*&v372[v248] >= 1.0e30)
          {
            *(v222 + 4 * v248) = 1900671690;
          }

          else
          {
            v251 = 0;
            v252 = *(v371 + v248);
            v253 = (v385 + 4 * v248);
            v254 = &quant_mode_table[v252 + 256];
            v255 = -7;
            v256 = &v401;
            v257 = 1.0e30;
            do
            {
              v259 = *v254;
              v254 += 128;
              v258 = v259;
              if (v259 < 4)
              {
                break;
              }

              v260 = 7 * v258;
              if (*&v256[v260] < v257)
              {
                v257 = *&v256[v260];
                v251 = v255 + 9;
              }

              ++v256;
              v261 = __CFADD__(v255++, 1);
            }

            while (!v261);
            v262 = &quant_mode_table[128 * v251 + v252];
            v263 = *v262;
            LOBYTE(v262) = v262[2];
            *(v223 + v248) = v263;
            *(v224 + v248) = v262;
            if (v263 <= 3)
            {
              *v253 = 0;
            }

            else
            {
              *v253 = *(v400 + 7 * v263 + v251 - 2);
            }

            v264 = v257 + *&v372[v248];
            *(v222 + 4 * v248) = v264;
            if (v264 < v250)
            {
              v249 = v248;
              v250 = v264;
            }
          }

          ++v248;
        }

        while (v248 != v374);
      }

      else
      {
        v249 = -1;
        v221 = v387;
      }

      goto LABEL_271;
    }

LABEL_298:
    compute_ideal_endpoint_formats();
  }

  v235 = v373;
  v237 = a11;
  v236 = a12;
  v239 = a9;
  v238 = a10;
  if (v375 >= v374)
  {
    v403 = 0;
    v402 = 0;
    v404 = 0;
    v405 = 0;
    v401 = -1;
    goto LABEL_274;
  }

  v300 = v375;
  v249 = -1;
  v301 = 1.0e30;
  do
  {
    if (*&v372[v300] >= 1.0e30)
    {
      *(v222 + 4 * v300) = 1900671690;
    }

    else
    {
      v302 = 0;
      v303 = 0;
      v304 = *(v371 + v300);
      v305 = &quant_mode_table[v304 + 128];
      v306 = 1.0e30;
      do
      {
        v308 = *v305;
        v305 += 128;
        v307 = v308;
        if (v308 >= 4)
        {
          v309 = &v410[v307];
          if (v309[v302] < v306)
          {
            v306 = v309[v302];
            v303 = v302;
          }
        }

        ++v302;
      }

      while (v302 != 4);
      v310 = quant_mode_table[128 * v303 + 128 + v304];
      v311 = (v385 + 4 * v300);
      *(v223 + v300) = v310;
      *v311 = 0;
      if (v310 > 3)
      {
        *v311 = *(v409 + 4 * v310 + v303);
      }

      v312 = v306 + *&v372[v300];
      *(v222 + 4 * v300) = v312;
      *(v224 + v300) = *(v223 + v300);
      if (v312 < v301)
      {
        v249 = v300;
        v301 = v312;
      }
    }

    ++v300;
  }

  while (v300 != v374);
LABEL_272:
  v403 = 0;
  v402 = 0;
  v404 = 0;
  v405 = 0;
  v401 = v249;
  if ((v249 & 0x80000000) == 0)
  {
    *(v222 + 4 * v249) = 1900671690;
  }

LABEL_274:
  if (v235 >= 2)
  {
    v349 = vorrq_s8(vdupq_n_s32(v225), xmmword_186205980);
    v350 = 1;
    v351 = vdupq_n_s32(0x7149F2CAu);
    v352.i64[0] = 0x400000004;
    v352.i64[1] = 0x400000004;
    do
    {
      v353.i64[0] = -1;
      v353.i64[1] = -1;
      v354 = v351;
      if (v225 < v227)
      {
        v355 = v225;
        v184 = v349;
        v354 = v351;
        do
        {
          v356 = *(v222 + 4 * v355);
          v357 = vcgtq_f32(v354, v356);
          v354 = vbslq_s8(v357, v356, v354);
          v353 = vbslq_s8(v357, v184, v353);
          v184 = vaddq_s32(v184, v352);
          v355 += 4;
        }

        while (v355 < v227);
      }

      *&v184 = vminvq_f32(v354);
      v358 = vceqq_f32(v354, vdupq_lane_s32(*&v184, 0));
      v184 = *&vmvnq_s8(v358) & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL);
      v359 = vminvq_s32(vorrq_s8(v184, vandq_s8(v353, v358)));
      *(&v401 + v350) = v359;
      if ((v359 & 0x80000000) != 0)
      {
        break;
      }

      *(v222 + 4 * v359) = 1900671690;
      ++v350;
    }

    while (v350 != v235);
  }

  v360 = 0;
  if (v235)
  {
    while (1)
    {
      v361 = *(&v401 + v360);
      if ((v361 & 0x80000000) != 0)
      {
        break;
      }

      *(v238 + 4 * v360) = v361;
      *(v237 + 4 * v360) = *(v223 + v361);
      v362 = *(v224 + v361);
      *(v236 + 4 * v360) = v362;
      if ((*(v237 + 4 * v360) - 21) <= 0xFFFFFFEE)
      {
        compute_ideal_endpoint_formats();
      }

      if ((v362 - 21) < 0xFFFFFFEF)
      {
        compute_ideal_endpoint_formats();
      }

      v363 = (a13 + 169408 + 4 * v361);
      v364 = v221;
      v365 = v239;
      do
      {
        v366 = *v363++;
        *v365++ = v366;
        --v364;
      }

      while (v364);
      ++v360;
      v239 += 4;
      if (v360 == v235)
      {
        v360 = v235;
        break;
      }
    }
  }

  if (v360 >= v235)
  {
    return v235;
  }

  else
  {
    return v360;
  }
}