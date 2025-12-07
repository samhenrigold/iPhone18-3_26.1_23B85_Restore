void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LAh,unsigned int,true,true,true,false>(uint64_t **a1, int a2, __int32 *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *a1;
    v46 = (*a1)[2];
    v47 = **a1;
    v6 = *(*a1 + 8);
    v7 = *(*a1 + 9);
    v8 = *(a1[3] + 3);
    v9 = *(a1 + 48);
    v10 = *(a1[2] + 3);
    v11 = *(a1 + 15);
    v45 = *(a1 + 16);
    v13 = *(a1 + 13);
    v12 = *(a1 + 14);
    v14 = vdup_n_s32(0x437F0000u);
    __asm { FMOV            V15.2S, #1.0 }

    v43 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    do
    {
      v22.f32[0] = (1.0 / v10) * v13;
      v22.f32[1] = (1.0 / v10) * v11;
      v23 = vcvt_s32_f32(v22);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v35 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v43, *(v5 + 10)));
          v26 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v35, vrndm_f32(v35)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v27 = vcvt_f32_s32(v23);
          v28 = vcvt_f32_s32(*(v5 + 8));
          v29 = vmul_f32(*(a1 + 84), v28);
          v30 = vmul_f32(*(a1 + 92), v28);
          v31 = vbsl_s8(vcgt_f32(v27, v30), v30, v27);
          v26 = vbsl_s8(vcgt_f32(v29, v31), v29, v31);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v32 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v33 = vmul_f32(v32, v32);
          v34 = vadd_f32(vdup_lane_s32(v33, 1), v33);
          *v33.i32 = fmaxf(vaddv_f32(v33), 0.00001);
          v33.i32[0] = vmul_f32(v34, vrsqrte_f32(vdup_lane_s32(v33, 0))).u32[0];
          v33.i32[1] = 0.5;
          v26 = vmul_f32(v33, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v24 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v25.i32[1] = 1056964608;
          v25.f32[0] = (v24 * -10430.0) + 32768.0;
          v26 = vmul_f32(v25, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v26);
        }
      }

      --v4;
      v36 = v23.i32[0] & ~(v23.i32[0] >> 31);
      if (v36 >= v6)
      {
        v36 = v6;
      }

      v37 = v23.i32[1] & ~(v23.i32[1] >> 31);
      if (v37 >= v7)
      {
        v37 = v7;
      }

      v38 = (v47 + v46 * (v37 >> 16) + ((v36 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v48 = CA::HalfFloat::to_float(*v38);
      v39 = CA::HalfFloat::to_float(v38[1]);
      v40 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v39), LODWORD(v48)), _D15), _D15, __PAIR64__(LODWORD(v39), LODWORD(v48)));
      v41 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v40, vcltz_f32(v40))));
      v42 = vshl_u32(v41, 0x1800000010);
      v10 = v10 + v8;
      v13 += v12;
      v11 += v45;
      *a3++ = v42.i32[0] | (v41.i32[0] << 8) | v41.i32[0] | v42.i32[1];
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LAh,unsigned int,true,true,false,false>(int *a1, int a2, __int32 *a3)
{
  if (a2)
  {
    v4 = a2;
    v25 = **a1;
    v5 = *(*a1 + 16);
    v6 = *(*a1 + 32);
    v7 = *(*a1 + 36);
    v9 = a1[15];
    v8 = a1[16];
    v11 = a1[13];
    v10 = a1[14];
    __asm { FMOV            V8.2S, #1.0 }

    v17 = vdup_n_s32(0x437F0000u);
    do
    {
      --v4;
      v18 = v11 & ~(v11 >> 31);
      if (v18 >= v6)
      {
        v18 = v6;
      }

      v19 = v9 & ~(v9 >> 31);
      if (v19 >= v7)
      {
        v19 = v7;
      }

      v20 = (v25 + v5 * (v19 >> 16) + ((v18 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v26 = CA::HalfFloat::to_float(*v20);
      v21 = CA::HalfFloat::to_float(v20[1]);
      v22 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v21), LODWORD(v26)), _D8), _D8, __PAIR64__(LODWORD(v21), LODWORD(v26)));
      v23 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v17, vbic_s8(v22, vcltz_f32(v22))));
      v24 = vshl_u32(v23, 0x1800000010);
      v11 += v10;
      *a3++ = v24.i32[0] | (v23.i32[0] << 8) | v23.i32[0] | v24.i32[1];
      v9 += v8;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LAh,unsigned int,false,true,false,false>(_DWORD *a1, int a2, __int32 *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = a1[14];
    v6 = a1[13];
    v7 = *(*a1 + 32);
    v8 = a1[15] & ~(a1[15] >> 31);
    if (v8 >= *(*a1 + 36))
    {
      v8 = *(*a1 + 36);
    }

    v9 = **a1 + *(*a1 + 16) * (v8 >> 16);
    __asm { FMOV            V8.2S, #1.0 }

    v15 = vdup_n_s32(0x437F0000u);
    do
    {
      --v4;
      v16 = v6 & ~(v6 >> 31);
      if (v16 >= v7)
      {
        v16 = v7;
      }

      v17 = (v9 + ((v16 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v22 = CA::HalfFloat::to_float(*v17);
      v18 = CA::HalfFloat::to_float(v17[1]);
      v19 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v18), LODWORD(v22)), _D8), _D8, __PAIR64__(LODWORD(v18), LODWORD(v22)));
      v20 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v15, vbic_s8(v19, vcltz_f32(v19))));
      v21 = vshl_u32(v20, 0x1800000010);
      *a3++ = v21.i32[0] | (v20.i32[0] << 8) | v20.i32[0] | v21.i32[1];
      v6 += v5;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LAh,unsigned int,true,false,false,false>(_DWORD *a1, int a2, __int32 *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    __asm { FMOV            V8.2S, #1.0 }

    v16 = vdup_n_s32(0x437F0000u);
    do
    {
      --v4;
      v17 = (v5 + v6 * (v8 >> 16) + ((v10 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v22 = CA::HalfFloat::to_float(*v17);
      v18 = CA::HalfFloat::to_float(v17[1]);
      v19 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v18), LODWORD(v22)), _D8), _D8, __PAIR64__(LODWORD(v18), LODWORD(v22)));
      v20 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v16, vbic_s8(v19, vcltz_f32(v19))));
      v21 = vshl_u32(v20, 0x1800000010);
      v10 += v9;
      *a3++ = v21.i32[0] | (v20.i32[0] << 8) | v20.i32[0] | v21.i32[1];
      v8 += v7;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LAh,unsigned int,false,false,false,false>(uint64_t a1, int a2, __int32 *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *(a1 + 52);
    v5 = *(a1 + 56);
    v7 = **a1 + *(*a1 + 16) * *(a1 + 62);
    __asm { FMOV            V8.2S, #1.0 }

    v13 = vdup_n_s32(0x437F0000u);
    do
    {
      --v4;
      v14 = (v7 + ((v6 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v19 = CA::HalfFloat::to_float(*v14);
      v15 = CA::HalfFloat::to_float(v14[1]);
      v16 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v15), LODWORD(v19)), _D8), _D8, __PAIR64__(LODWORD(v15), LODWORD(v19)));
      v17 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v13, vbic_s8(v16, vcltz_f32(v16))));
      v18 = vshl_u32(v17, 0x1800000010);
      *a3++ = v18.i32[0] | (v17.i32[0] << 8) | v17.i32[0] | v18.i32[1];
      v6 += v5;
    }

    while (v4);
  }
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = (v8 - 0x8000);
    v18 = v9 - 0x8000;
    v63 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v66 = v8;
    v67 = v11;
    v65 = v15;
    v64 = result;
    do
    {
      *v21.i32 = (1.0 / v12) * v16;
      *&v21.i32[1] = (1.0 / v12) * v14;
      v22 = vcvt_s32_f32(v21);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v36 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v63, *(v5 + 10)));
          v21 = *(result + 84);
          v28 = vmul_f32(vmla_f32(*(result + 92), v21, vminnm_f32(vsub_f32(v36, vrndm_f32(v36)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v22);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v21 = vmul_f32(*(result + 84), v30);
          v31 = vmul_f32(*(result + 92), v30);
          v32 = vbsl_s8(vcgt_f32(v29, v31), v31, v29);
          v28 = vbsl_s8(vcgt_f32(v21, v32), v21, v32);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v33 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v22));
          v34 = vmul_f32(v33, v33);
          v35 = vadd_f32(vdup_lane_s32(v34, 1), v34);
          *v34.i32 = fmaxf(vaddv_f32(v34), 0.00001);
          v34.i32[0] = vmul_f32(v35, vrsqrte_f32(vdup_lane_s32(v34, 0))).u32[0];
          v21 = vcvt_f32_u32(*(v5 + 6));
          v34.i32[1] = 0.5;
          v28 = vmul_f32(v34, v21);
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v23 = v7;
          v24 = v13;
          v25 = v17;
          v26 = atan2f(v5[11] * v22.i32[1], v5[10] * v22.i32[0]);
          v17 = v25;
          v15 = v65;
          v8 = v66;
          v13 = v24;
          v11 = v67;
          v7 = v23;
          v18 = v9 - 0x8000;
          result = v64;
          v21 = vcvt_f32_u32(*(v5 + 6));
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, v21);
LABEL_12:
          v22 = vcvt_s32_f32(v28);
        }
      }

      v37 = v22.i32[0];
      if (v22.i32[0] >= v17)
      {
        v38 = v17;
      }

      else
      {
        v38 = v22.i32[0];
      }

      if (v38 <= -32768)
      {
        v38 = -32768;
      }

      v39 = v38 + 0x8000;
      if (v22.i32[0] <= 0x8000)
      {
        v37 = 0x8000;
      }

      v40 = v37 - 0x8000;
      v41 = v22.i32[1];
      if (v40 >= v8)
      {
        v40 = v8;
      }

      if (v22.i32[1] >= v18)
      {
        v42 = v18;
      }

      else
      {
        v42 = v22.i32[1];
      }

      if (v42 <= -32768)
      {
        v42 = -32768;
      }

      v43 = v42 + 0x8000;
      if (v22.i32[1] <= 0x8000)
      {
        v41 = 0x8000;
      }

      v44 = v41 - 0x8000;
      if (v44 >= v9)
      {
        v44 = v9;
      }

      v45 = v6 + v7 * (v44 >> 16);
      v46 = v6 + v7 * HIWORD(v43);
      v47 = (v40 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v48 = (v45 + v47);
      v49 = (v46 + v47);
      v50 = (v39 >> 14) & 0x3FFFC;
      v51 = (v45 + v50);
      v52 = (v46 + v50);
      v22.i16[0] = v48[1];
      v22.i16[2] = *v51;
      v53 = vshr_n_u32(vand_s8(v22, 0xFFFF0000FFFFLL), 8uLL);
      v21.i16[0] = *v48;
      v21.i16[2] = v51[1];
      v54 = vshr_n_u32(vand_s8(v21, 0xFFFF0000FFFFLL), 8uLL);
      v55 = vorr_s8(vshl_u32(v54, 0x1800000010), vshl_u32(v53, 0x1000000018));
      v54.i32[1] = v53.i32[1];
      v56 = vshl_n_s32(v54, 8uLL);
      v57 = vorr_s8(v55, v54);
      v58 = vorr_s8(v57, v56);
      v57.i16[0] = v49[1];
      v57.i16[2] = *v52;
      v55.i16[0] = *v49;
      v59 = vshr_n_u32(vand_s8(v57, 0xFFFF0000FFFFLL), 8uLL);
      v55.i16[2] = v52[1];
      v60 = vshr_n_u32(vand_s8(v55, 0xFFFF0000FFFFLL), 8uLL);
      v61 = vorr_s8(vshl_u32(v60, 0x1800000010), vshl_u32(v59, 0x1000000018));
      v60.i32[1] = v59.i32[1];
      v62 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vorr_s8(v61, v60), vshl_n_s32(v60, 8uLL)), v58), vdupq_n_s16((v44 >> 1) & 0x7F80)), v58);
      *v62.i8 = vadd_s16(*v62.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v62, v62, 8uLL), *v62.i8), vdup_n_s16((v40 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v62.i8, *v62.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,true,true,false,true>(int *result, int a2, _DWORD *a3, double a4, double a5, double a6, int8x8_t a7, int16x4_t a8, int16x4_t a9, int16x8_t a10)
{
  if (a2)
  {
    v10 = **result;
    v11 = *(*result + 16);
    v12 = *(*result + 32);
    v13 = *(*result + 36);
    v15 = result[15];
    v14 = result[16];
    v17 = result[13];
    v16 = result[14];
    result = 4294934528;
    do
    {
      if (v17 >= v12 - 0x8000)
      {
        v18 = v12 - 0x8000;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= -32768)
      {
        v19 = -32768;
      }

      else
      {
        v19 = v18;
      }

      if (v17 <= 0x8000)
      {
        v20 = 0x8000;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20 - 0x8000;
      if (v21 >= v12)
      {
        v21 = v12;
      }

      if (v15 >= v13 - 0x8000)
      {
        v22 = v13 - 0x8000;
      }

      else
      {
        v22 = v15;
      }

      if (v22 <= -32768)
      {
        v22 = -32768;
      }

      v23 = v22 + 0x8000;
      if (v15 <= 0x8000)
      {
        v24 = 0x8000;
      }

      else
      {
        v24 = v15;
      }

      v25 = v24 - 0x8000;
      if (v25 >= v13)
      {
        v25 = v13;
      }

      v26 = v10 + v11 * (v25 >> 16);
      v27 = v10 + v11 * HIWORD(v23);
      v28 = (v21 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v29 = (v26 + v28);
      v30 = (v27 + v28);
      v31 = ((v19 + 0x8000) >> 14) & 0x3FFFC;
      v32 = (v27 + v31);
      v33 = (v26 + v31);
      a7.i16[0] = v29[1];
      a7.i16[2] = *v33;
      a8.i16[0] = *v29;
      a8.i16[2] = v33[1];
      a9.i16[0] = v30[1];
      a9.i16[2] = *v32;
      v34 = vshr_n_u32(vand_s8(a8, 0xFFFF0000FFFFLL), 8uLL);
      v35 = vshr_n_u32(vand_s8(a9, 0xFFFF0000FFFFLL), 8uLL);
      a10.i16[0] = *v30;
      v36 = vshr_n_u32(vand_s8(a7, 0xFFFF0000FFFFLL), 8uLL);
      a10.i16[2] = v32[1];
      v37 = vshr_n_u32(vand_s8(*a10.i8, 0xFFFF0000FFFFLL), 8uLL);
      v38 = vorr_s8(vshl_u32(v37, 0x1800000010), vshl_u32(v35, 0x1000000018));
      v39 = vshl_u32(v34, 0x1800000010);
      v34.i32[1] = v36.i32[1];
      v37.i32[1] = v35.i32[1];
      v40 = vshl_n_s32(v34, 8uLL);
      v41 = vorr_s8(vorr_s8(v39, vshl_u32(v36, 0x1000000018)), v34);
      v42 = vorr_s8(vorr_s8(v38, v37), vshl_n_s32(v37, 8uLL));
      a10 = vdupq_n_s16((v25 >> 1) & 0x7F80);
      v43 = vorr_s8(v41, v40);
      v44 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v42, v43), a10), v43);
      a9 = vdup_n_s16((v21 >> 1) & 0x7F80);
      a8 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v44, v44, 8uLL), *v44.i8), a9);
      a7 = vuzp1_s8(vadd_s16(*v44.i8, a8), 0xFFFF0000FFFFLL);
      v17 += v16;
      v15 += v14;
      *a3++ = a7.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, double a5, double a6, double a7, int8x8_t a8, int16x4_t a9, double a10, int8x8_t a11)
{
  if (a2)
  {
    v11 = result[14];
    v12 = result[15];
    v13 = result[13];
    v14 = *(*result + 32);
    v15 = *(*result + 36);
    v16 = *(*result + 16);
    v17 = **result;
    if (v12 >= v15 - 0x8000)
    {
      v18 = v15 - 0x8000;
    }

    else
    {
      v18 = result[15];
    }

    if (v18 <= -32768)
    {
      v18 = -32768;
    }

    if (v12 <= 0x8000)
    {
      v12 = 0x8000;
    }

    v19 = v12 - 0x8000;
    if (v19 >= v15)
    {
      v20 = *(*result + 36);
    }

    else
    {
      v20 = v19;
    }

    v21 = v17 + v16 * (v20 >> 16);
    v22 = v17 + v16 * ((v18 + 0x8000) >> 16);
    a4.i32[0] = (v20 >> 1) & 0x7F80;
    do
    {
      if (v13 >= v14 - 0x8000)
      {
        v23 = v14 - 0x8000;
      }

      else
      {
        v23 = v13;
      }

      if (v23 <= -32768)
      {
        v23 = -32768;
      }

      if (v13 <= 0x8000)
      {
        v24 = 0x8000;
      }

      else
      {
        v24 = v13;
      }

      v25 = v23 + 0x8000;
      v26 = v24 - 0x8000;
      if (v24 - 0x8000 >= v14)
      {
        v26 = v14;
      }

      v27 = (v26 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v28 = (v21 + v27);
      v29 = (v22 + v27);
      v30 = (v25 >> 14) & 0x3FFFC;
      v31 = (v21 + v30);
      result = (v22 + v30);
      a8.i16[0] = v28[1];
      a8.i16[2] = *v31;
      a9.i16[0] = *v28;
      a9.i16[2] = v31[1];
      v32 = vshr_n_u32(vand_s8(a8, 0xFFFF0000FFFFLL), 8uLL);
      v33 = vshr_n_u32(vand_s8(a9, 0xFFFF0000FFFFLL), 8uLL);
      v34 = vshl_u32(v33, 0x1800000010);
      a11.i16[0] = v29[1];
      v35 = vshl_u32(v32, 0x1000000018);
      a11.i16[2] = *result;
      v36 = vand_s8(a11, 0xFFFF0000FFFFLL);
      v33.i32[1] = v32.i32[1];
      v37 = vshr_n_u32(v36, 8uLL);
      v36.i16[0] = *v29;
      v36.i16[2] = *(result + 1);
      v38 = vorr_s8(v34, v35);
      v39 = vshr_n_u32(vand_s8(v36, 0xFFFF0000FFFFLL), 8uLL);
      v40 = vorr_s8(vshl_u32(v39, 0x1800000010), vshl_u32(v37, 0x1000000018));
      v39.i32[1] = v37.i32[1];
      v41 = vshl_n_s32(v39, 8uLL);
      a11 = vorr_s8(v40, v39);
      v42 = vorr_s8(vorr_s8(v38, v33), vshl_n_s32(v33, 8uLL));
      v43 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vorr_s8(a11, v41), v42), a4, 0), v42);
      a9 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v43, v43, 8uLL), *v43.i8), vdup_n_s16((v26 >> 1) & 0x7F80));
      a8 = vuzp1_s8(vadd_s16(*v43.i8, a9), a4);
      v13 += v11;
      *a3++ = a8.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,true,false,false,true>(uint64_t **result, int a2, _DWORD *a3, double a4, double a5, double a6, double a7, double a8, double a9, int16x4_t a10)
{
  if (a2)
  {
    v11 = **result;
    v12 = (*result)[2];
    v13 = *(result + 16);
    v15 = *(result + 13);
    v14 = *(result + 14);
    v16 = *(result + 15) - 0x8000;
    do
    {
      v17 = vadd_s32(vdup_n_s32(v15), 0x8000FFFF8000);
      v18 = v11 + v12 * (v16 >> 16);
      v19 = v11 + v12 * ((v16 + 0x10000) >> 16);
      v20 = *&vshr_n_s32(v17, 0xEuLL) & 0xFFFFFFFCFFFFFFFCLL;
      result = (v18 + v20);
      v21 = (v19 + v20);
      v22 = (v18 + SHIDWORD(v20));
      v23 = (v19 + SHIDWORD(v20));
      LOWORD(v20) = *(result + 1);
      WORD2(v20) = *v22;
      v24 = vshr_n_u32(vand_s8(v20, 0xFFFF0000FFFFLL), 8uLL);
      a10.i16[0] = *result;
      a10.i16[2] = v22[1];
      v25 = vshr_n_u32(vand_s8(a10, 0xFFFF0000FFFFLL), 8uLL);
      v26 = vshl_u32(v25, 0x1800000010);
      v25.i32[1] = v24.i32[1];
      v27 = vorr_s8(v26, vshl_u32(v24, 0x1000000018));
      v26.i16[0] = v21[1];
      v26.i16[2] = *v23;
      v28 = vshl_n_s32(v25, 8uLL);
      v10.i16[0] = *v21;
      v10.i16[2] = v23[1];
      v29 = vorr_s8(v27, v25);
      v30 = vshr_n_u32(vand_s8(v26, 0xFFFF0000FFFFLL), 8uLL);
      v31 = vshr_n_u32(vand_s8(v10, 0xFFFF0000FFFFLL), 8uLL);
      v10 = vshl_u32(v31, 0x1800000010);
      v32 = vorr_s8(v29, v28);
      v31.i32[1] = v30.i32[1];
      v33 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vorr_s8(vorr_s8(v10, vshl_u32(v30, 0x1000000018)), v31), vshl_n_s32(v31, 8uLL)), v32), vdupq_n_s16((v16 >> 1) & 0x7F80)), v32);
      a10 = vdup_n_s16((v17.u16[0] >> 1) & 0x7F80);
      v15 += v14;
      *a3++ = vuzp1_s8(vadd_s16(*v33.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v33, v33, 8uLL), *v33.i8), a10)), 0x8000FFFF8000).u32[0];
      v16 += v13;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, double a5, double a6, double a7, double a8, double a9, double a10, int16x4_t a11)
{
  if (a2)
  {
    v13 = result[14];
    v14 = result[15];
    v15 = result[13];
    v16 = *(*result + 16);
    v17 = **result;
    v18 = v14 + 0x8000;
    v19 = v14 - 0x8000;
    v20 = v17 + v16 * ((v14 - 0x8000) >> 16);
    v21 = v17 + v16 * (v18 >> 16);
    a4.i32[0] = (v19 >> 1) & 0x7F80;
    do
    {
      v22 = vadd_s32(vdup_n_s32(v15), 0x8000FFFF8000);
      v23 = *&vshr_n_s32(v22, 0xEuLL) & 0xFFFFFFFCFFFFFFFCLL;
      v24 = (v20 + v23);
      v25 = (v21 + v23);
      v26 = (v20 + SHIDWORD(v23));
      v27 = (v21 + SHIDWORD(v23));
      LOWORD(v23) = v24[1];
      WORD2(v23) = *v26;
      a11.i16[0] = *v24;
      v28 = vshr_n_u32(vand_s8(v23, 0xFFFF0000FFFFLL), 8uLL);
      a11.i16[2] = v26[1];
      v29 = vshr_n_u32(vand_s8(a11, 0xFFFF0000FFFFLL), 8uLL);
      v30 = vshl_u32(v28, 0x1000000018);
      v11.i16[0] = v25[1];
      v11.i16[2] = *v27;
      v31 = vshl_u32(v29, 0x1800000010);
      v12.i16[0] = *v25;
      v29.i32[1] = v28.i32[1];
      v32 = vshr_n_u32(vand_s8(v11, 0xFFFF0000FFFFLL), 8uLL);
      v12.i16[2] = v27[1];
      v11 = vshr_n_u32(vand_s8(v12, 0xFFFF0000FFFFLL), 8uLL);
      v33 = vorr_s8(v31, v30);
      v12 = vshl_u32(v32, 0x1000000018);
      v34 = vorr_s8(vshl_u32(v11, 0x1800000010), v12);
      v35 = vorr_s8(vorr_s8(v33, v29), vshl_n_s32(v29, 8uLL));
      v11.i32[1] = v32.i32[1];
      v36 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vorr_s8(vorr_s8(v34, v11), vshl_n_s32(v11, 8uLL)), v35), a4, 0), v35);
      a11 = vdup_n_s16((v22.u16[0] >> 1) & 0x7F80);
      v15 += v13;
      *a3++ = vuzp1_s8(vadd_s16(*v36.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v36, v36, 8uLL), *v36.i8), a11)), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v40 = v12;
    v39 = v8;
    v38 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v38;
          v12 = v40;
          v8 = v39;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v37 = (v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (v37[1] << 16) & 0xFF000000 | (HIBYTE(*v37) << 16) | (HIBYTE(*v37) << 8) | HIBYTE(*v37);
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = (v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v14 = *v13;
      result = (v14 >> 8);
      v10 += v9;
      v8 += v7;
      *a3++ = (v13[1] << 16) & 0xFF000000 | (result << 16) | (result << 8) | (v14 >> 8);
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v9 = (v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v4 += v3;
      *a3++ = (v9[1] << 16) & 0xFF000000 | (HIBYTE(*v9) << 16) | (HIBYTE(*v9) << 8) | HIBYTE(*v9);
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = (v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v8 += v7;
      v6 += v5;
      *a3++ = (v9[1] << 16) & 0xFF000000 | (HIBYTE(*v9) << 16) | (HIBYTE(*v9) << 8) | HIBYTE(*v9);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA16,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = (v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v4 += v3;
      *a3++ = (v6[1] << 16) & 0xFF000000 | (HIBYTE(*v6) << 16) | (HIBYTE(*v6) << 8) | HIBYTE(*v6);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    __asm { FMOV            V14.2S, #1.0 }

    v24 = vdup_n_s32(0x437F0000u);
    v62 = vdup_n_s32(0x3F7FFFFFu);
    v63 = vdup_n_s32(0x37800000u);
    v25 = vdup_n_s32(0x47800000u);
    v66 = v8;
    v67 = v11;
    v65 = v15;
    v64 = result;
    do
    {
      v26.f32[0] = (1.0 / v12) * v16;
      v26.f32[1] = (1.0 / v12) * v14;
      v27 = vcvt_s32_f32(v26);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v41 = vmul_f32(vcvt_f32_s32(v27), vmul_f32(v63, *(v5 + 10)));
          v32 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v41, vrndm_f32(v41)), v62)), vmul_f32(v25, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v33 = vcvt_f32_s32(v27);
          v34 = vcvt_f32_s32(*(v5 + 8));
          v35 = vmul_f32(*(result + 84), v34);
          v36 = vmul_f32(*(result + 92), v34);
          v37 = vbsl_s8(vcgt_f32(v33, v36), v36, v33);
          v32 = vbsl_s8(vcgt_f32(v35, v37), v35, v37);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v38 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v27));
          v39 = vmul_f32(v38, v38);
          v40 = vadd_f32(vdup_lane_s32(v39, 1), v39);
          *v39.i32 = fmaxf(vaddv_f32(v39), 0.00001);
          v39.i32[0] = vmul_f32(v40, vrsqrte_f32(vdup_lane_s32(v39, 0))).u32[0];
          v39.i32[1] = 0.5;
          v32 = vmul_f32(v39, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v28 = v7;
          v29 = v13;
          v30 = atan2f(v5[11] * v27.i32[1], v5[10] * v27.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v65;
          v8 = v66;
          v13 = v29;
          v11 = v67;
          v7 = v28;
          result = v64;
          v31.i32[1] = 1056964608;
          v31.f32[0] = (v30 * -10430.0) + 32768.0;
          v32 = vmul_f32(v31, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v27 = vcvt_s32_f32(v32);
        }
      }

      v42 = v27.i32[0];
      if (v27.i32[0] >= v17)
      {
        v43 = v17;
      }

      else
      {
        v43 = v27.i32[0];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v27.i32[0] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v8)
      {
        v45 = v8;
      }

      v46 = v27.i32[1];
      if (v27.i32[1] >= v18)
      {
        v47 = v18;
      }

      else
      {
        v47 = v27.i32[1];
      }

      if (v47 <= -32768)
      {
        v47 = -32768;
      }

      v48 = v47 + 0x8000;
      if (v27.i32[1] <= 0x8000)
      {
        v46 = 0x8000;
      }

      v49 = v46 - 0x8000;
      if (v49 >= v9)
      {
        v49 = v9;
      }

      v50 = v6 + v7 * (v49 >> 16);
      v51 = v6 + v7 * HIWORD(v48);
      v52 = (v45 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v53 = (v44 >> 14) & 0x3FFFC;
      v54.i32[0] = *(v50 + v52);
      v54.i32[1] = *(v50 + v53);
      v55 = vbsl_s8(vcgt_f32(v54, _D14), _D14, v54);
      v56 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v24, vbic_s8(v55, vcltz_f32(v55))));
      v57.i32[0] = *(v51 + v52);
      v57.i32[1] = *(v51 + v53);
      v58 = vbsl_s8(vcgt_f32(v57, _D14), _D14, v57);
      v59 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v24, vbic_s8(v58, vcltz_f32(v58))));
      v60 = *&vorr_s8(vorr_s8(vshl_u32(v56, 0x800000010), vshl_u32(v56, 0x1000000008)), v56) | 0xFF000000FF000000;
      v61 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v59, 0x800000010), vshl_u32(v59, 0x1000000008)), v59) | 0xFF000000FF000000), v60), vdupq_n_s16((v49 >> 1) & 0x7F80)), v60);
      *v61.i8 = vadd_s16(*v61.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v61, v61, 8uLL), *v61.i8), vdup_n_s16((v45 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v61.i8, *v61.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,true,true,false,true>(int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    result = 4294934528;
    __asm { FMOV            V0.2S, #1.0 }

    v16 = vdup_n_s32(0x437F0000u);
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v17 = v5 - 0x8000;
      }

      else
      {
        v17 = v10;
      }

      if (v17 <= -32768)
      {
        v18 = -32768;
      }

      else
      {
        v18 = v17;
      }

      if (v10 <= 0x8000)
      {
        v19 = 0x8000;
      }

      else
      {
        v19 = v10;
      }

      v20 = v19 - 0x8000;
      if (v20 >= v5)
      {
        v20 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v21 = v6 - 0x8000;
      }

      else
      {
        v21 = v8;
      }

      if (v21 <= -32768)
      {
        v21 = -32768;
      }

      if (v8 <= 0x8000)
      {
        v22 = 0x8000;
      }

      else
      {
        v22 = v8;
      }

      v23 = v22 - 0x8000;
      v24 = v21 + 0x8000;
      if (v23 >= v6)
      {
        v23 = v6;
      }

      v25 = v3 + v4 * (v23 >> 16);
      v26 = v3 + v4 * HIWORD(v24);
      v27 = (v20 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v28 = ((v18 + 0x8000) >> 14) & 0x3FFFC;
      v29.i32[0] = *(v25 + v27);
      v29.i32[1] = *(v25 + v28);
      v30 = vbsl_s8(vcgt_f32(v29, _D0), _D0, v29);
      v31 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v16, vbic_s8(v30, vcltz_f32(v30))));
      v32.i32[0] = *(v26 + v27);
      v32.i32[1] = *(v26 + v28);
      v33 = vbsl_s8(vcgt_f32(v32, _D0), _D0, v32);
      v34 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v16, vbic_s8(v33, vcltz_f32(v33))));
      v35 = *&vorr_s8(vorr_s8(vshl_u32(v31, 0x800000010), vshl_u32(v31, 0x1000000008)), v31) | 0xFF000000FF000000;
      v36 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v34, 0x800000010), vshl_u32(v34, 0x1000000008)), v34) | 0xFF000000FF000000), v35), vdupq_n_s16((v23 >> 1) & 0x7F80)), v35);
      v10 += v9;
      v8 += v7;
      *a3++ = vuzp1_s8(vadd_s16(*v36.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v36, v36, 8uLL), *v36.i8), vdup_n_s16((v20 >> 1) & 0x7F80))), _D0).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = result[15];
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    __asm { FMOV            V1.2S, #1.0 }

    v21 = vdup_n_s32(0x437F0000u);
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v22 = v7 - 0x8000;
      }

      else
      {
        v22 = v6;
      }

      if (v22 <= -32768)
      {
        v22 = -32768;
      }

      v23 = v22 + 0x8000;
      if (v6 <= 0x8000)
      {
        v24 = 0x8000;
      }

      else
      {
        v24 = v6;
      }

      v25 = v24 - 0x8000;
      if (v25 >= v7)
      {
        v25 = v7;
      }

      result = ((v25 >> 14) & 0xFFFFFFFFFFFFFFFCLL);
      v26 = (v23 >> 14) & 0x3FFFC;
      v27.i32[0] = *(result + v14);
      v27.i32[1] = *(v14 + v26);
      v28 = vbsl_s8(vcgt_f32(v27, _D1), _D1, v27);
      v29 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v21, vbic_s8(v28, vcltz_f32(v28))));
      v30.i32[0] = *(result + v15);
      v30.i32[1] = *(v15 + v26);
      v31 = vbsl_s8(vcgt_f32(v30, _D1), _D1, v30);
      v32 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v21, vbic_s8(v31, vcltz_f32(v31))));
      v33 = *&vorr_s8(vorr_s8(vshl_u32(v29, 0x800000010), vshl_u32(v29, 0x1000000008)), v29) | 0xFF000000FF000000;
      v34 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v32, 0x800000010), vshl_u32(v32, 0x1000000008)), v32) | 0xFF000000FF000000), v33), a4, 0), v33);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v34.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v34, v34, 8uLL), *v34.i8), vdup_n_s16((v25 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = result[16];
    v7 = result[13];
    v6 = result[14];
    v8 = result[15] - 0x8000;
    __asm { FMOV            V1.2S, #1.0 }

    v14 = vdup_n_s32(0x437F0000u);
    do
    {
      v15 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v16 = v3 + v4 * (v8 >> 16);
      v17 = vshr_n_s32(v15, 0xEuLL);
      v18 = v3 + v4 * ((v8 + 0x10000) >> 16);
      v19 = v17.i32[0] & 0xFFFFFFFC;
      result = (v16 + (v17.i32[1] & 0xFFFFFFFC));
      v20 = (v18 + (v17.i32[1] & 0xFFFFFFFC));
      v17.i32[0] = *(v16 + (v17.i32[0] & 0xFFFFFFFC));
      v17.i32[1] = *result;
      v21 = vbsl_s8(vcgt_f32(v17, _D1), _D1, v17);
      v22 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v21, vcltz_f32(v21))));
      v23.i32[0] = *(v18 + v19);
      v23.i32[1] = *v20;
      v24 = vbsl_s8(vcgt_f32(v23, _D1), _D1, v23);
      v25 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v24, vcltz_f32(v24))));
      v26 = *&vorr_s8(vorr_s8(vshl_u32(v22, 0x800000010), vshl_u32(v22, 0x1000000008)), v22) | 0xFF000000FF000000;
      v27 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v25, 0x800000010), vshl_u32(v25, 0x1000000008)), v25) | 0xFF000000FF000000), v26), vdupq_n_s16((v8 >> 1) & 0x7F80)), v26);
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v27.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v27, v27, 8uLL), *v27.i8), vdup_n_s16((v15.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    __asm { FMOV            V2.2S, #1.0 }

    v18 = vdup_n_s32(0x437F0000u);
    do
    {
      v19 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v20 = vshr_n_s32(v19, 0xEuLL);
      v21 = v20.i32[0] & 0xFFFFFFFC;
      v22 = v20.i32[1] & 0xFFFFFFFC;
      v20.i32[0] = *(v11 + (v20.i32[0] & 0xFFFFFFFC));
      v20.i32[1] = *(v11 + (v20.i32[1] & 0xFFFFFFFC));
      v23 = vbsl_s8(vcgt_f32(v20, _D2), _D2, v20);
      v24 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v18, vbic_s8(v23, vcltz_f32(v23))));
      v25.i32[0] = *(v12 + v21);
      v25.i32[1] = *(v12 + v22);
      v26 = vbsl_s8(vcgt_f32(v25, _D2), _D2, v25);
      v27 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v18, vbic_s8(v26, vcltz_f32(v26))));
      v28 = *&vorr_s8(vorr_s8(vshl_u32(v24, 0x800000010), vshl_u32(v24, 0x1000000008)), v24) | 0xFF000000FF000000;
      v29 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v27, 0x800000010), vshl_u32(v27, 0x1000000008)), v27) | 0xFF000000FF000000), v28), a4, 0), v28);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v29.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v29, v29, 8uLL), *v29.i8), vdup_n_s16((v19.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = 0.5;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v41 = v12;
    v40 = v8;
    v39 = v16;
    do
    {
      v22.f32[0] = (1.0 / v13) * v17;
      v22.f32[1] = (1.0 / v13) * v15;
      v23 = vcvt_s32_f32(v22);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v35 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v6 + 10)));
          v26 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v35, vrndm_f32(v35)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v27 = vcvt_f32_s32(v23);
          v28 = vcvt_f32_s32(*(v6 + 8));
          v29 = vmul_f32(*(a1 + 84), v28);
          v30 = vmul_f32(*(a1 + 92), v28);
          v31 = vbsl_s8(vcgt_f32(v27, v30), v30, v27);
          v26 = vbsl_s8(vcgt_f32(v29, v31), v29, v31);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v32 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v23));
          v33 = vmul_f32(v32, v32);
          v34 = vadd_f32(vdup_lane_s32(v33, 1), v33);
          *v33.i32 = fmaxf(vaddv_f32(v33), 0.00001);
          v33.i32[0] = vmul_f32(v34, vrsqrte_f32(vdup_lane_s32(v33, 0))).u32[0];
          *&v33.i32[1] = v18;
          v26 = vmul_f32(v33, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v24 = atan2f(v6[11] * v23.i32[1], v6[10] * v23.i32[0]);
          v18 = 0.5;
          v16 = v39;
          v12 = v41;
          v8 = v40;
          v25.i32[1] = 1056964608;
          v25.f32[0] = (v24 * -10430.0) + 32768.0;
          v26 = vmul_f32(v25, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v26);
        }
      }

      v36 = v23.i32[0] & ~(v23.i32[0] >> 31);
      if (v36 >= v9)
      {
        v36 = v9;
      }

      v37 = v23.i32[1] & ~(v23.i32[1] >> 31);
      if (v37 >= v10)
      {
        v37 = v10;
      }

      v38 = *(v7 + v8 * (v37 >> 16) + ((v36 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v38 > 1.0)
      {
        v38 = 1.0;
      }

      if (v38 < 0.0)
      {
        v38 = 0.0;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = ((v18 + (v38 * 255.0)) << 16) | ((v18 + (v38 * 255.0)) << 8) | (v18 + (v38 * 255.0)) | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      v12 = v8 & ~(v8 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = *(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v13 > 1.0)
      {
        v13 = 1.0;
      }

      if (v13 < 0.0)
      {
        v13 = 0.0;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = (((v13 * 255.0) + 0.5) << 16) | (((v13 * 255.0) + 0.5) << 8) | ((v13 * 255.0) + 0.5) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v9 = *(v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v9 > 1.0)
      {
        v9 = 1.0;
      }

      if (v9 < 0.0)
      {
        v9 = 0.0;
      }

      v4 += v3;
      *a3++ = (((v9 * 255.0) + 0.5) << 16) | (((v9 * 255.0) + 0.5) << 8) | ((v9 * 255.0) + 0.5) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = *(v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v9 > 1.0)
      {
        v9 = 1.0;
      }

      if (v9 < 0.0)
      {
        v9 = 0.0;
      }

      v8 += v7;
      v6 += v5;
      *a3++ = (((v9 * 255.0) + 0.5) << 16) | (((v9 * 255.0) + 0.5) << 8) | ((v9 * 255.0) + 0.5) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lf,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = *(v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v6 > 1.0)
      {
        v6 = 1.0;
      }

      if (v6 < 0.0)
      {
        v6 = 0.0;
      }

      v4 += v3;
      *a3++ = (((v6 * 255.0) + 0.5) << 16) | (((v6 * 255.0) + 0.5) << 8) | ((v6 * 255.0) + 0.5) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,true,true,true,true>(uint64_t **a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v62 = (*a1)[2];
    v63 = **a1;
    v56 = *a1;
    v5 = *(a1[3] + 3);
    v6 = *(a1 + 48);
    v7 = *(a1[2] + 3);
    v8 = *(a1 + 15);
    v9 = *(a1 + 13);
    v57 = *(a1 + 14);
    v58 = *(a1 + 16);
    v60 = *(*a1 + 9);
    v61 = *(*a1 + 8);
    __asm { FMOV            V14.2S, #1.0 }

    v15 = vdup_n_s32(0x437F0000u);
    v53 = vdup_n_s32(0x3F7FFFFFu);
    v54 = vdup_n_s32(0x37800000u);
    v52 = vdup_n_s32(0x47800000u);
    v59 = v6;
    do
    {
      v16.f32[0] = (1.0 / v7) * v9;
      v16.f32[1] = (1.0 / v7) * v8;
      v17 = vcvt_s32_f32(v16);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v29 = vmul_f32(vcvt_f32_s32(v17), vmul_f32(v54, *(v56 + 10)));
          v20 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v29, vrndm_f32(v29)), v53)), vmul_f32(v52, vcvt_f32_u32(*(v56 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v21 = vcvt_f32_s32(v17);
          v22 = vcvt_f32_s32(*(v56 + 8));
          v23 = vmul_f32(*(a1 + 84), v22);
          v24 = vmul_f32(*(a1 + 92), v22);
          v25 = vbsl_s8(vcgt_f32(v21, v24), v24, v21);
          v20 = vbsl_s8(vcgt_f32(v23, v25), v23, v25);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v26 = vmul_f32(*(v56 + 10), vcvt_f32_s32(v17));
          v27 = vmul_f32(v26, v26);
          v28 = vadd_f32(vdup_lane_s32(v27, 1), v27);
          *v27.i32 = fmaxf(vaddv_f32(v27), 0.00001);
          v27.i32[0] = vmul_f32(v28, vrsqrte_f32(vdup_lane_s32(v27, 0))).u32[0];
          v27.i32[1] = 0.5;
          v20 = vmul_f32(v27, vcvt_f32_u32(*(v56 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v18 = atan2f(v56[11] * v17.i32[1], v56[10] * v17.i32[0]);
          v19.i32[1] = 1056964608;
          v19.f32[0] = (v18 * -10430.0) + 32768.0;
          v20 = vmul_f32(v19, vcvt_f32_u32(*(v56 + 6)));
LABEL_12:
          v17 = vcvt_s32_f32(v20);
        }
      }

      --v4;
      v30 = v17.i32[0];
      v31 = v61 - 0x8000;
      if (v17.i32[0] < v61 - 0x8000)
      {
        v31 = v17.i32[0];
      }

      if (v31 <= -32768)
      {
        v31 = -32768;
      }

      v32 = v31 + 0x8000;
      if (v17.i32[0] <= 0x8000)
      {
        v30 = 0x8000;
      }

      v33 = v30 - 0x8000;
      if (v33 >= v61)
      {
        v34 = v61;
      }

      else
      {
        v34 = v33;
      }

      v35 = v17.i32[1];
      v36 = v60 - 0x8000;
      if (v17.i32[1] < v60 - 0x8000)
      {
        v36 = v17.i32[1];
      }

      if (v36 <= -32768)
      {
        v36 = -32768;
      }

      v37 = v36 + 0x8000;
      if (v17.i32[1] <= 0x8000)
      {
        v35 = 0x8000;
      }

      v38 = v35 - 0x8000;
      if (v38 >= v60)
      {
        v39 = v60;
      }

      else
      {
        v39 = v38;
      }

      v40 = v63 + v62 * (v39 >> 16);
      v41 = v63 + v62 * HIWORD(v37);
      v42 = (v34 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v43 = (v32 >> 15) & 0x1FFFE;
      v64 = CA::HalfFloat::to_float(*(v40 + v42));
      v44 = CA::HalfFloat::to_float(*(v40 + v43));
      v45 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v44), LODWORD(v64)), _D14), _D14, __PAIR64__(LODWORD(v44), LODWORD(v64)));
      v46 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v15, vbic_s8(v45, vcltz_f32(v45))));
      v47 = vorr_s8(vorr_s8(vshl_u32(v46, 0x800000010), vshl_u32(v46, 0x1000000008)), v46);
      v65 = CA::HalfFloat::to_float(*(v41 + v42));
      v48 = CA::HalfFloat::to_float(*(v41 + v43));
      v49 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v48), LODWORD(v65)), _D14), _D14, __PAIR64__(LODWORD(v48), LODWORD(v65)));
      v50 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v15, vbic_s8(v49, vcltz_f32(v49))));
      v51 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v50, 0x800000010), vshl_u32(v50, 0x1000000008)), v50) | 0xFF000000FF000000), (*&v47 | 0xFF000000FF000000)), vdupq_n_s16((v39 >> 1) & 0x7F80)), (*&v47 | 0xFF000000FF000000));
      *v51.i8 = vadd_s16(*v51.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v51, v51, 8uLL), *v51.i8), vdup_n_s16((v34 >> 1) & 0x7F80)));
      v7 = v7 + v5;
      v9 += v57;
      v8 += v58;
      *a3++ = vuzp1_s8(*v51.i8, *v51.i8).u32[0];
      v6 = v59;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v39 = *(*a1 + 16);
    v40 = **a1;
    v5 = a1[15];
    v6 = a1[13];
    v35 = a1[14];
    v36 = a1[16];
    v37 = *(*a1 + 36);
    v38 = *(*a1 + 32);
    __asm { FMOV            V8.2S, #1.0 }

    v12 = vdup_n_s32(0x437F0000u);
    do
    {
      --v4;
      v13 = v38 - 0x8000;
      if (v6 < v38 - 0x8000)
      {
        v13 = v6;
      }

      if (v13 <= -32768)
      {
        v13 = -32768;
      }

      v14 = v13 + 0x8000;
      if (v6 <= 0x8000)
      {
        v15 = 0x8000;
      }

      else
      {
        v15 = v6;
      }

      v16 = v15 - 0x8000;
      if (v16 >= v38)
      {
        v17 = v38;
      }

      else
      {
        v17 = v16;
      }

      v18 = v37 - 0x8000;
      if (v5 < v37 - 0x8000)
      {
        v18 = v5;
      }

      if (v18 <= -32768)
      {
        v18 = -32768;
      }

      v19 = v18 + 0x8000;
      if (v5 <= 0x8000)
      {
        v20 = 0x8000;
      }

      else
      {
        v20 = v5;
      }

      v21 = v20 - 0x8000;
      if (v21 >= v37)
      {
        v22 = v37;
      }

      else
      {
        v22 = v21;
      }

      v23 = v40 + v39 * (v22 >> 16);
      v24 = v40 + v39 * HIWORD(v19);
      v25 = (v17 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v26 = (v14 >> 15) & 0x1FFFE;
      v41 = CA::HalfFloat::to_float(*(v23 + v25));
      v27 = CA::HalfFloat::to_float(*(v23 + v26));
      v28 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v27), LODWORD(v41)), _D8), _D8, __PAIR64__(LODWORD(v27), LODWORD(v41)));
      v29 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v12, vbic_s8(v28, vcltz_f32(v28))));
      v30 = vorr_s8(vorr_s8(vshl_u32(v29, 0x800000010), vshl_u32(v29, 0x1000000008)), v29);
      v42 = CA::HalfFloat::to_float(*(v24 + v25));
      v31 = CA::HalfFloat::to_float(*(v24 + v26));
      v32 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v31), LODWORD(v42)), _D8), _D8, __PAIR64__(LODWORD(v31), LODWORD(v42)));
      v33 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v12, vbic_s8(v32, vcltz_f32(v32))));
      v34 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v33, 0x800000010), vshl_u32(v33, 0x1000000008)), v33) | 0xFF000000FF000000), (*&v30 | 0xFF000000FF000000)), vdupq_n_s16((v22 >> 1) & 0x7F80)), (*&v30 | 0xFF000000FF000000));
      *v34.i8 = vadd_s16(*v34.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v34, v34, 8uLL), *v34.i8), vdup_n_s16((v17 >> 1) & 0x7F80)));
      v6 += v35;
      *a3++ = vuzp1_s8(*v34.i8, *v34.i8).u32[0];
      v5 += v36;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,false,true,false,true>(_DWORD *a1, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = a1[15];
    v39 = a1[14];
    v7 = a1[13];
    v9 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = *(*a1 + 16);
    v11 = **a1;
    v12 = v8 - 0x8000;
    if (v6 < v8 - 0x8000)
    {
      v12 = a1[15];
    }

    if (v12 <= -32768)
    {
      v12 = -32768;
    }

    v13 = v12 + 0x8000;
    if (v6 <= 0x8000)
    {
      v6 = 0x8000;
    }

    v14 = v6 - 0x8000;
    if (v14 >= v8)
    {
      v14 = *(*a1 + 36);
    }

    v15 = v11 + v10 * (v14 >> 16);
    v16 = v11 + v10 * HIWORD(v13);
    a4.i32[0] = (v14 >> 1) & 0x7F80;
    v38 = a4;
    __asm { FMOV            V8.2S, #1.0 }

    v22 = vdup_n_s32(0x437F0000u);
    do
    {
      --v5;
      if (v7 >= v9 - 0x8000)
      {
        v23 = v9 - 0x8000;
      }

      else
      {
        v23 = v7;
      }

      if (v23 <= -32768)
      {
        v23 = -32768;
      }

      v24 = v23 + 0x8000;
      if (v7 <= 0x8000)
      {
        v25 = 0x8000;
      }

      else
      {
        v25 = v7;
      }

      v26 = v25 - 0x8000;
      if (v26 >= v9)
      {
        v27 = v9;
      }

      else
      {
        v27 = v26;
      }

      v28 = (v27 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v29 = (v24 >> 15) & 0x1FFFE;
      v40 = CA::HalfFloat::to_float(*(v15 + v28));
      v30 = CA::HalfFloat::to_float(*(v15 + v29));
      v31 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v30), LODWORD(v40)), _D8), _D8, __PAIR64__(LODWORD(v30), LODWORD(v40)));
      v32 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v22, vbic_s8(v31, vcltz_f32(v31))));
      v33 = vorr_s8(vorr_s8(vshl_u32(v32, 0x800000010), vshl_u32(v32, 0x1000000008)), v32);
      v41 = CA::HalfFloat::to_float(*(v16 + v28));
      v34 = CA::HalfFloat::to_float(*(v16 + v29));
      v35 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v34), LODWORD(v41)), _D8), _D8, __PAIR64__(LODWORD(v34), LODWORD(v41)));
      v36 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v22, vbic_s8(v35, vcltz_f32(v35))));
      v37 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v36, 0x800000010), vshl_u32(v36, 0x1000000008)), v36) | 0xFF000000FF000000), (*&v33 | 0xFF000000FF000000)), v38, 0), (*&v33 | 0xFF000000FF000000));
      *v37.i8 = vadd_s16(*v37.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v37, v37, 8uLL), *v37.i8), vdup_n_s16((v27 >> 1) & 0x7F80)));
      *a3++ = vuzp1_s8(*v37.i8, *v37.i8).u32[0];
      v7 += v39;
    }

    while (v5);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,true,false,false,true>(unsigned int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v30 = a1[16];
    v7 = a1[13];
    v29 = a1[14];
    v8 = a1[15] - 0x8000;
    __asm { FMOV            V9.2S, #1.0 }

    v14 = vdup_n_s32(0x437F0000u);
    do
    {
      --v4;
      v15 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v33 = v15.i16[0];
      v16 = v5 + v6 * (v8 >> 16);
      v17 = v5 + v6 * ((v8 + 0x10000) >> 16);
      v18 = *&vshr_n_s32(v15, 0xFuLL) & 0xFFFFFFFEFFFFFFFELL;
      v19 = HIDWORD(v18);
      v20 = v18;
      v31 = CA::HalfFloat::to_float(*(v16 + v18));
      v21 = CA::HalfFloat::to_float(*(v16 + v19));
      v22 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v21), LODWORD(v31)), _D9), _D9, __PAIR64__(LODWORD(v21), LODWORD(v31)));
      v23 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v22, vcltz_f32(v22))));
      v24 = vorr_s8(vorr_s8(vshl_u32(v23, 0x800000010), vshl_u32(v23, 0x1000000008)), v23);
      v32 = CA::HalfFloat::to_float(*(v17 + v20));
      v25 = CA::HalfFloat::to_float(*(v17 + v19));
      v26 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v25), LODWORD(v32)), _D9), _D9, __PAIR64__(LODWORD(v25), LODWORD(v32)));
      v27 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v26, vcltz_f32(v26))));
      v28 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v27, 0x800000010), vshl_u32(v27, 0x1000000008)), v27) | 0xFF000000FF000000), (*&v24 | 0xFF000000FF000000)), vdupq_n_s16((v8 >> 1) & 0x7F80)), (*&v24 | 0xFF000000FF000000));
      *v28.i8 = vadd_s16(*v28.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v28, v28, 8uLL), *v28.i8), vdup_n_s16((v33 >> 1) & 0x7F80)));
      v7 += v29;
      *a3++ = vuzp1_s8(*v28.i8, *v28.i8).u32[0];
      v8 += v30;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,false,false,false,true>(_DWORD *a1, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v5 = a2;
    v7 = a1[14];
    v6 = a1[15];
    v8 = a1[13];
    v9 = *(*a1 + 16);
    v10 = **a1;
    v11 = v6 + 0x8000;
    v6 -= 0x8000;
    v12 = v10 + v9 * (v6 >> 16);
    v13 = v10 + v9 * (v11 >> 16);
    a4.i32[0] = (v6 >> 1) & 0x7F80;
    v32 = a4;
    __asm { FMOV            V9.2S, #1.0 }

    v19 = vdup_n_s32(0x437F0000u);
    do
    {
      --v5;
      v20 = vadd_s32(vdup_n_s32(v8), 0x8000FFFF8000);
      v35 = v20.i16[0];
      v21 = *&vshr_n_s32(v20, 0xFuLL) & 0xFFFFFFFEFFFFFFFELL;
      v22 = HIDWORD(v21);
      v23 = v21;
      v33 = CA::HalfFloat::to_float(*(v12 + v21));
      v24 = CA::HalfFloat::to_float(*(v12 + v22));
      v25 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v24), LODWORD(v33)), _D9), _D9, __PAIR64__(LODWORD(v24), LODWORD(v33)));
      v26 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v19, vbic_s8(v25, vcltz_f32(v25))));
      v27 = vorr_s8(vorr_s8(vshl_u32(v26, 0x800000010), vshl_u32(v26, 0x1000000008)), v26);
      v34 = CA::HalfFloat::to_float(*(v13 + v23));
      v28 = CA::HalfFloat::to_float(*(v13 + v22));
      v29 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v28), LODWORD(v34)), _D9), _D9, __PAIR64__(LODWORD(v28), LODWORD(v34)));
      v30 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v19, vbic_s8(v29, vcltz_f32(v29))));
      v31 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(vorr_s8(vshl_u32(v30, 0x800000010), vshl_u32(v30, 0x1000000008)), v30) | 0xFF000000FF000000), (*&v27 | 0xFF000000FF000000)), v32, 0), (*&v27 | 0xFF000000FF000000));
      *v31.i8 = vadd_s16(*v31.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v31, v31, 8uLL), *v31.i8), vdup_n_s16((v35 >> 1) & 0x7F80)));
      *a3++ = vuzp1_s8(*v31.i8, *v31.i8).u32[0];
      v8 += v7;
    }

    while (v5);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *a1;
    v36 = (*a1)[2];
    v37 = **a1;
    v6 = *(*a1 + 8);
    v7 = *(*a1 + 9);
    v8 = *(a1[3] + 3);
    v9 = *(a1 + 48);
    v10 = *(a1[2] + 3);
    v11 = *(a1 + 15);
    v12 = *(a1 + 16);
    v13 = *(a1 + 13);
    v14 = *(a1 + 14);
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      v34 = CA::HalfFloat::to_float(*(v37 + v36 * (v33 >> 16) + ((v32 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v34 > 1.0)
      {
        v34 = 1.0;
      }

      if (v34 < 0.0)
      {
        v34 = 0.0;
      }

      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *a3++ = (((v34 * 255.0) + 0.5) << 16) | (((v34 * 255.0) + 0.5) << 8) | ((v34 * 255.0) + 0.5) | 0xFF000000;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,true,true,false,false>(int *a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = a1[15];
    v9 = a1[16];
    v12 = a1[13];
    v11 = a1[14];
    do
    {
      --v4;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      v15 = CA::HalfFloat::to_float(*(v5 + v6 * (v14 >> 16) + ((v13 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v15 > 1.0)
      {
        v15 = 1.0;
      }

      if (v15 < 0.0)
      {
        v15 = 0.0;
      }

      v12 += v11;
      v10 += v9;
      *a3++ = (((v15 * 255.0) + 0.5) << 16) | (((v15 * 255.0) + 0.5) << 8) | ((v15 * 255.0) + 0.5) | 0xFF000000;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,false,true,false,false>(_DWORD *a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = a1[14];
    v6 = a1[13];
    v7 = *(*a1 + 32);
    v8 = a1[15] & ~(a1[15] >> 31);
    if (v8 >= *(*a1 + 36))
    {
      v8 = *(*a1 + 36);
    }

    v9 = **a1 + *(*a1 + 16) * (v8 >> 16);
    do
    {
      --v4;
      v10 = v6 & ~(v6 >> 31);
      if (v10 >= v7)
      {
        v10 = v7;
      }

      v11 = CA::HalfFloat::to_float(*(v9 + ((v10 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v11 > 1.0)
      {
        v11 = 1.0;
      }

      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      v6 += v5;
      *a3++ = (((v11 * 255.0) + 0.5) << 16) | (((v11 * 255.0) + 0.5) << 8) | ((v11 * 255.0) + 0.5) | 0xFF000000;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,true,false,false,false>(_DWORD *a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      --v4;
      v11 = CA::HalfFloat::to_float(*(v5 + v6 * (v8 >> 16) + ((v10 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v11 > 1.0)
      {
        v11 = 1.0;
      }

      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = (((v11 * 255.0) + 0.5) << 16) | (((v11 * 255.0) + 0.5) << 8) | ((v11 * 255.0) + 0.5) | 0xFF000000;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Lh,unsigned int,false,false,false,false>(uint64_t a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *(a1 + 52);
    v5 = *(a1 + 56);
    v7 = **a1 + *(*a1 + 16) * *(a1 + 62);
    do
    {
      --v4;
      v8 = CA::HalfFloat::to_float(*(v7 + ((v6 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v8 > 1.0)
      {
        v8 = 1.0;
      }

      if (v8 < 0.0)
      {
        v8 = 0.0;
      }

      v6 += v5;
      *a3++ = (((v8 * 255.0) + 0.5) << 16) | (((v8 * 255.0) + 0.5) << 8) | ((v8 * 255.0) + 0.5) | 0xFF000000;
    }

    while (v4);
  }
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    __asm { FMOV            V14.2S, #1.0 }

    v24 = vdup_n_s32(0x437F0000u);
    v25 = vdup_n_s32(0x37800000u);
    v26 = vdup_n_s32(0x3F7FFFFFu);
    v27 = vdup_n_s32(0x47800000u);
    v68 = v8;
    v69 = v11;
    v67 = v15;
    v66 = result;
    do
    {
      v28.f32[0] = (1.0 / v12) * v16;
      v28.f32[1] = (1.0 / v12) * v14;
      v29 = vcvt_s32_f32(v28);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v43 = vmul_f32(vcvt_f32_s32(v29), vmul_f32(v25, *(v5 + 10)));
          v34 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v43, vrndm_f32(v43)), v26)), vmul_f32(v27, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v35 = vcvt_f32_s32(v29);
          v36 = vcvt_f32_s32(*(v5 + 8));
          v37 = vmul_f32(*(result + 84), v36);
          v38 = vmul_f32(*(result + 92), v36);
          v39 = vbsl_s8(vcgt_f32(v35, v38), v38, v35);
          v34 = vbsl_s8(vcgt_f32(v37, v39), v37, v39);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v40 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v29));
          v41 = vmul_f32(v40, v40);
          v42 = vadd_f32(vdup_lane_s32(v41, 1), v41);
          *v41.i32 = fmaxf(vaddv_f32(v41), 0.00001);
          v41.i32[0] = vmul_f32(v42, vrsqrte_f32(vdup_lane_s32(v41, 0))).u32[0];
          v41.i32[1] = 0.5;
          v34 = vmul_f32(v41, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v30 = v7;
          v31 = v13;
          v32 = atan2f(v5[11] * v29.i32[1], v5[10] * v29.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v67;
          v8 = v68;
          v13 = v31;
          v11 = v69;
          v7 = v30;
          result = v66;
          v33.i32[1] = 1056964608;
          v33.f32[0] = (v32 * -10430.0) + 32768.0;
          v34 = vmul_f32(v33, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v29 = vcvt_s32_f32(v34);
        }
      }

      v44 = v29.i32[0];
      if (v29.i32[0] >= v17)
      {
        v45 = v17;
      }

      else
      {
        v45 = v29.i32[0];
      }

      if (v45 <= -32768)
      {
        v45 = -32768;
      }

      v46 = v45 + 0x8000;
      if (v29.i32[0] <= 0x8000)
      {
        v44 = 0x8000;
      }

      v47 = v44 - 0x8000;
      if (v47 >= v8)
      {
        v47 = v8;
      }

      v48 = v29.i32[1];
      if (v29.i32[1] >= v18)
      {
        v49 = v18;
      }

      else
      {
        v49 = v29.i32[1];
      }

      if (v49 <= -32768)
      {
        v49 = -32768;
      }

      v50 = v49 + 0x8000;
      if (v29.i32[1] <= 0x8000)
      {
        v48 = 0x8000;
      }

      v51 = v48 - 0x8000;
      if (v51 >= v9)
      {
        v51 = v9;
      }

      v52 = v6 + v7 * (v51 >> 16);
      v53 = v6 + v7 * HIWORD(v50);
      v54 = (v47 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v55 = (v46 >> 14) & 0x3FFFC;
      v56.i32[0] = *(v52 + v54);
      v56.i32[1] = *(v52 + v55);
      v57 = vbsl_s8(vcgt_f32(v56, _D14), _D14, v56);
      v58 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v24, vbic_s8(v57, vcltz_f32(v57))));
      v59 = vorr_s8(vshl_n_s32(v58, 8uLL), v58);
      v60 = vorr_s8(vshl_n_s32(v59, 0x10uLL), v59);
      v61.i32[0] = *(v53 + v54);
      v61.i32[1] = *(v53 + v55);
      v62 = vbsl_s8(vcgt_f32(v61, _D14), _D14, v61);
      v63 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v24, vbic_s8(v62, vcltz_f32(v62))));
      v64 = vorr_s8(vshl_n_s32(v63, 8uLL), v63);
      v65 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vshl_n_s32(v64, 0x10uLL), v64), v60), vdupq_n_s16((v51 >> 1) & 0x7F80)), v60);
      *v65.i8 = vadd_s16(*v65.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v65, v65, 8uLL), *v65.i8), vdup_n_s16((v47 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v65.i8, *v65.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,true,true,false,true>(int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    result = 4294934528;
    __asm { FMOV            V0.2S, #1.0 }

    v16 = vdup_n_s32(0x437F0000u);
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v17 = v5 - 0x8000;
      }

      else
      {
        v17 = v10;
      }

      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      v18 = v17 + 0x8000;
      if (v10 <= 0x8000)
      {
        v19 = 0x8000;
      }

      else
      {
        v19 = v10;
      }

      v20 = v19 - 0x8000;
      if (v20 >= v5)
      {
        v20 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v21 = v6 - 0x8000;
      }

      else
      {
        v21 = v8;
      }

      if (v21 <= -32768)
      {
        v21 = -32768;
      }

      v22 = v21 + 0x8000;
      if (v8 <= 0x8000)
      {
        v23 = 0x8000;
      }

      else
      {
        v23 = v8;
      }

      v24 = v23 - 0x8000;
      if (v24 >= v6)
      {
        v24 = v6;
      }

      v25 = v3 + v4 * (v24 >> 16);
      v26 = v3 + v4 * HIWORD(v22);
      v27 = (v18 >> 14) & 0x3FFFC;
      v28 = (v20 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v29.i32[0] = *(v25 + v28);
      v29.i32[1] = *(v25 + v27);
      v30 = vbsl_s8(vcgt_f32(v29, _D0), _D0, v29);
      v31 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v16, vbic_s8(v30, vcltz_f32(v30))));
      v32.i32[0] = *(v26 + v28);
      v32.i32[1] = *(v26 + v27);
      v33 = vbsl_s8(vcgt_f32(v32, _D0), _D0, v32);
      v34 = vorr_s8(vshl_n_s32(v31, 8uLL), v31);
      v35 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v16, vbic_s8(v33, vcltz_f32(v33))));
      v36 = vorr_s8(vshl_n_s32(v35, 8uLL), v35);
      v37 = vorr_s8(vshl_n_s32(v34, 0x10uLL), v34);
      v38 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vshl_n_s32(v36, 0x10uLL), v36), v37), vdupq_n_s16((v24 >> 1) & 0x7F80)), v37);
      v10 += v9;
      v8 += v7;
      *a3++ = vuzp1_s8(vadd_s16(*v38.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v38, v38, 8uLL), *v38.i8), vdup_n_s16((v20 >> 1) & 0x7F80))), _D0).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = result[15];
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    __asm { FMOV            V1.2S, #1.0 }

    v21 = vdup_n_s32(0x437F0000u);
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v22 = v7 - 0x8000;
      }

      else
      {
        v22 = v6;
      }

      if (v22 <= -32768)
      {
        v22 = -32768;
      }

      v23 = v22 + 0x8000;
      if (v6 <= 0x8000)
      {
        v24 = 0x8000;
      }

      else
      {
        v24 = v6;
      }

      v25 = v24 - 0x8000;
      if (v25 >= v7)
      {
        v25 = v7;
      }

      v26 = (v23 >> 14) & 0x3FFFC;
      result = ((v25 >> 14) & 0xFFFFFFFFFFFFFFFCLL);
      v27.i32[0] = *(result + v14);
      v27.i32[1] = *(v14 + v26);
      v28 = vbsl_s8(vcgt_f32(v27, _D1), _D1, v27);
      v29 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v21, vbic_s8(v28, vcltz_f32(v28))));
      v30.i32[0] = *(result + v15);
      v30.i32[1] = *(v15 + v26);
      v31 = vorr_s8(vshl_n_s32(v29, 8uLL), v29);
      v32 = vbsl_s8(vcgt_f32(v30, _D1), _D1, v30);
      v33 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v21, vbic_s8(v32, vcltz_f32(v32))));
      v34 = vorr_s8(vshl_n_s32(v33, 8uLL), v33);
      v35 = vorr_s8(vshl_n_s32(v31, 0x10uLL), v31);
      v36 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vorr_s8(vshl_n_s32(v34, 0x10uLL), v34), v35), a4, 0), v35);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v36.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v36, v36, 8uLL), *v36.i8), vdup_n_s16((v25 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = result[16];
    v7 = result[13];
    v6 = result[14];
    v8 = result[15] - 0x8000;
    __asm { FMOV            V1.2S, #1.0 }

    v14 = vdup_n_s32(0x437F0000u);
    do
    {
      v15 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v16 = v3 + v4 * (v8 >> 16);
      v17 = vshr_n_s32(v15, 0xEuLL);
      v18 = v3 + v4 * ((v8 + 0x10000) >> 16);
      v19 = (v18 + (v17.i32[1] & 0xFFFFFFFC));
      result = (v17.i32[0] & 0xFFFFFFFC);
      v17.i32[0] = *(v16 + result);
      v17.i32[1] = *(v16 + (v17.i32[1] & 0xFFFFFFFC));
      v20 = vbsl_s8(vcgt_f32(v17, _D1), _D1, v17);
      v21 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v20, vcltz_f32(v20))));
      v22 = vorr_s8(vshl_n_s32(v21, 8uLL), v21);
      v23.i32[0] = *(v18 + result);
      v23.i32[1] = *v19;
      v24 = vbsl_s8(vcgt_f32(v23, _D1), _D1, v23);
      v25 = vorr_s8(vshl_n_s32(v22, 0x10uLL), v22);
      v26 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v24, vcltz_f32(v24))));
      v27 = vorr_s8(vshl_n_s32(v26, 8uLL), v26);
      v28 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vshl_n_s32(v27, 0x10uLL), v27), v25), vdupq_n_s16((v8 >> 1) & 0x7F80)), v25);
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v28.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v28, v28, 8uLL), *v28.i8), vdup_n_s16((v15.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    __asm { FMOV            V2.2S, #1.0 }

    v18 = vdup_n_s32(0x437F0000u);
    do
    {
      v19 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v20 = vshr_n_s32(v19, 0xEuLL);
      v21 = v20.i32[0] & 0xFFFFFFFC;
      v20.i32[0] = *(v11 + (v20.i32[0] & 0xFFFFFFFC));
      v22 = (v12 + (v20.i32[1] & 0xFFFFFFFC));
      v20.i32[1] = *(v11 + (v20.i32[1] & 0xFFFFFFFC));
      v23 = vbsl_s8(vcgt_f32(v20, _D2), _D2, v20);
      v24 = vmla_f32(0x3F0000003F000000, v18, vbic_s8(v23, vcltz_f32(v23)));
      v23.i32[0] = *(v12 + v21);
      v25 = vcvt_u32_f32(v24);
      v23.i32[1] = *v22;
      v26 = vbsl_s8(vcgt_f32(v23, _D2), _D2, v23);
      v27 = vorr_s8(vshl_n_s32(v25, 8uLL), v25);
      v28 = vmla_f32(0x3F0000003F000000, v18, vbic_s8(v26, vcltz_f32(v26)));
      v29 = vorr_s8(vshl_n_s32(v27, 0x10uLL), v27);
      v30 = vcvt_u32_f32(v28);
      v31 = vorr_s8(vshl_n_s32(v30, 8uLL), v30);
      v32 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vorr_s8(vshl_n_s32(v31, 0x10uLL), v31), v29), a4, 0), v29);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v32.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v32, v32, 8uLL), *v32.i8), vdup_n_s16((v19.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = 0.5;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v41 = v12;
    v40 = v8;
    v39 = v16;
    do
    {
      v22.f32[0] = (1.0 / v13) * v17;
      v22.f32[1] = (1.0 / v13) * v15;
      v23 = vcvt_s32_f32(v22);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v35 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v6 + 10)));
          v26 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v35, vrndm_f32(v35)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v27 = vcvt_f32_s32(v23);
          v28 = vcvt_f32_s32(*(v6 + 8));
          v29 = vmul_f32(*(a1 + 84), v28);
          v30 = vmul_f32(*(a1 + 92), v28);
          v31 = vbsl_s8(vcgt_f32(v27, v30), v30, v27);
          v26 = vbsl_s8(vcgt_f32(v29, v31), v29, v31);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v32 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v23));
          v33 = vmul_f32(v32, v32);
          v34 = vadd_f32(vdup_lane_s32(v33, 1), v33);
          *v33.i32 = fmaxf(vaddv_f32(v33), 0.00001);
          v33.i32[0] = vmul_f32(v34, vrsqrte_f32(vdup_lane_s32(v33, 0))).u32[0];
          *&v33.i32[1] = v18;
          v26 = vmul_f32(v33, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v24 = atan2f(v6[11] * v23.i32[1], v6[10] * v23.i32[0]);
          v18 = 0.5;
          v16 = v39;
          v12 = v41;
          v8 = v40;
          v25.i32[1] = 1056964608;
          v25.f32[0] = (v24 * -10430.0) + 32768.0;
          v26 = vmul_f32(v25, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v26);
        }
      }

      v36 = v23.i32[0] & ~(v23.i32[0] >> 31);
      if (v36 >= v9)
      {
        v36 = v9;
      }

      v37 = v23.i32[1] & ~(v23.i32[1] >> 31);
      if (v37 >= v10)
      {
        v37 = v10;
      }

      v38 = *(v7 + v8 * (v37 >> 16) + ((v36 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v38 > 1.0)
      {
        v38 = 1.0;
      }

      if (v38 < 0.0)
      {
        v38 = 0.0;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (v18 + (v38 * 255.0)) | ((v18 + (v38 * 255.0)) << 8) | (((v18 + (v38 * 255.0)) | ((v18 + (v38 * 255.0)) << 8)) << 16);
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = *(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v13 > 1.0)
      {
        v13 = 1.0;
      }

      if (v13 < 0.0)
      {
        v13 = 0.0;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = ((v13 * 255.0) + 0.5) | (((v13 * 255.0) + 0.5) << 8) | ((((v13 * 255.0) + 0.5) | (((v13 * 255.0) + 0.5) << 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v9 = *(v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v9 > 1.0)
      {
        v9 = 1.0;
      }

      if (v9 < 0.0)
      {
        v9 = 0.0;
      }

      v4 += v3;
      *a3++ = ((v9 * 255.0) + 0.5) | (((v9 * 255.0) + 0.5) << 8) | ((((v9 * 255.0) + 0.5) | (((v9 * 255.0) + 0.5) << 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = *(v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v9 > 1.0)
      {
        v9 = 1.0;
      }

      if (v9 < 0.0)
      {
        v9 = 0.0;
      }

      v8 += v7;
      v6 += v5;
      *a3++ = ((v9 * 255.0) + 0.5) | (((v9 * 255.0) + 0.5) << 8) | ((((v9 * 255.0) + 0.5) | (((v9 * 255.0) + 0.5) << 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Af,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = *(v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      if (v6 > 1.0)
      {
        v6 = 1.0;
      }

      if (v6 < 0.0)
      {
        v6 = 0.0;
      }

      v4 += v3;
      *a3++ = ((v6 * 255.0) + 0.5) | (((v6 * 255.0) + 0.5) << 8) | ((((v6 * 255.0) + 0.5) | (((v6 * 255.0) + 0.5) << 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,true,true,true,true>(uint64_t **a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v64 = (*a1)[2];
    v65 = **a1;
    v58 = *a1;
    v5 = *(a1[3] + 3);
    v6 = *(a1 + 48);
    v7 = *(a1[2] + 3);
    v8 = *(a1 + 15);
    v9 = *(a1 + 13);
    v59 = *(a1 + 14);
    v60 = *(a1 + 16);
    v62 = *(*a1 + 9);
    v63 = *(*a1 + 8);
    __asm { FMOV            V14.2S, #1.0 }

    v15 = vdup_n_s32(0x437F0000u);
    v56 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    v61 = v6;
    do
    {
      v18.f32[0] = (1.0 / v7) * v9;
      v18.f32[1] = (1.0 / v7) * v8;
      v19 = vcvt_s32_f32(v18);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v56, *(v58 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v58 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v58 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v28 = vmul_f32(*(v58 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v58 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v20 = atan2f(v58[11] * v19.i32[1], v58[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v58 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0];
      v33 = v63 - 0x8000;
      if (v19.i32[0] < v63 - 0x8000)
      {
        v33 = v19.i32[0];
      }

      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      v34 = v33 + 0x8000;
      if (v19.i32[0] <= 0x8000)
      {
        v32 = 0x8000;
      }

      v35 = v32 - 0x8000;
      if (v35 >= v63)
      {
        v36 = v63;
      }

      else
      {
        v36 = v35;
      }

      v37 = v19.i32[1];
      v38 = v62 - 0x8000;
      if (v19.i32[1] < v62 - 0x8000)
      {
        v38 = v19.i32[1];
      }

      if (v38 <= -32768)
      {
        v38 = -32768;
      }

      v39 = v38 + 0x8000;
      if (v19.i32[1] <= 0x8000)
      {
        v37 = 0x8000;
      }

      v40 = v37 - 0x8000;
      if (v40 >= v62)
      {
        v41 = v62;
      }

      else
      {
        v41 = v40;
      }

      v42 = v65 + v64 * (v41 >> 16);
      v43 = v65 + v64 * HIWORD(v39);
      v44 = (v36 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v45 = (v34 >> 15) & 0x1FFFE;
      v66 = CA::HalfFloat::to_float(*(v42 + v44));
      v46 = CA::HalfFloat::to_float(*(v42 + v45));
      v47 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v46), LODWORD(v66)), _D14), _D14, __PAIR64__(LODWORD(v46), LODWORD(v66)));
      v48 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v15, vbic_s8(v47, vcltz_f32(v47))));
      v49 = vorr_s8(vshl_n_s32(v48, 8uLL), v48);
      v50 = vorr_s8(vshl_n_s32(v49, 0x10uLL), v49);
      v67 = CA::HalfFloat::to_float(*(v43 + v44));
      v51 = CA::HalfFloat::to_float(*(v43 + v45));
      v52 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v51), LODWORD(v67)), _D14), _D14, __PAIR64__(LODWORD(v51), LODWORD(v67)));
      v53 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v15, vbic_s8(v52, vcltz_f32(v52))));
      v54 = vorr_s8(vshl_n_s32(v53, 8uLL), v53);
      v55 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vshl_n_s32(v54, 0x10uLL), v54), v50), vdupq_n_s16((v41 >> 1) & 0x7F80)), v50);
      *v55.i8 = vadd_s16(*v55.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v55, v55, 8uLL), *v55.i8), vdup_n_s16((v36 >> 1) & 0x7F80)));
      v7 = v7 + v5;
      v9 += v59;
      v8 += v60;
      *a3++ = vuzp1_s8(*v55.i8, *v55.i8).u32[0];
      v6 = v61;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v41 = *(*a1 + 16);
    v42 = **a1;
    v5 = a1[15];
    v6 = a1[13];
    v37 = a1[14];
    v38 = a1[16];
    v39 = *(*a1 + 36);
    v40 = *(*a1 + 32);
    __asm { FMOV            V8.2S, #1.0 }

    v12 = vdup_n_s32(0x437F0000u);
    do
    {
      --v4;
      v13 = v40 - 0x8000;
      if (v6 < v40 - 0x8000)
      {
        v13 = v6;
      }

      if (v13 <= -32768)
      {
        v13 = -32768;
      }

      v14 = v13 + 0x8000;
      if (v6 <= 0x8000)
      {
        v15 = 0x8000;
      }

      else
      {
        v15 = v6;
      }

      v16 = v15 - 0x8000;
      if (v16 >= v40)
      {
        v17 = v40;
      }

      else
      {
        v17 = v16;
      }

      v18 = v39 - 0x8000;
      if (v5 < v39 - 0x8000)
      {
        v18 = v5;
      }

      if (v18 <= -32768)
      {
        v18 = -32768;
      }

      v19 = v18 + 0x8000;
      if (v5 <= 0x8000)
      {
        v20 = 0x8000;
      }

      else
      {
        v20 = v5;
      }

      v21 = v20 - 0x8000;
      if (v21 >= v39)
      {
        v22 = v39;
      }

      else
      {
        v22 = v21;
      }

      v23 = v42 + v41 * (v22 >> 16);
      v24 = v42 + v41 * HIWORD(v19);
      v25 = (v17 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v26 = (v14 >> 15) & 0x1FFFE;
      v43 = CA::HalfFloat::to_float(*(v23 + v25));
      v27 = CA::HalfFloat::to_float(*(v23 + v26));
      v28 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v27), LODWORD(v43)), _D8), _D8, __PAIR64__(LODWORD(v27), LODWORD(v43)));
      v29 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v12, vbic_s8(v28, vcltz_f32(v28))));
      v30 = vorr_s8(vshl_n_s32(v29, 8uLL), v29);
      v31 = vorr_s8(vshl_n_s32(v30, 0x10uLL), v30);
      v44 = CA::HalfFloat::to_float(*(v24 + v25));
      v32 = CA::HalfFloat::to_float(*(v24 + v26));
      v33 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v32), LODWORD(v44)), _D8), _D8, __PAIR64__(LODWORD(v32), LODWORD(v44)));
      v34 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v12, vbic_s8(v33, vcltz_f32(v33))));
      v35 = vorr_s8(vshl_n_s32(v34, 8uLL), v34);
      v36 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vshl_n_s32(v35, 0x10uLL), v35), v31), vdupq_n_s16((v22 >> 1) & 0x7F80)), v31);
      *v36.i8 = vadd_s16(*v36.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v36, v36, 8uLL), *v36.i8), vdup_n_s16((v17 >> 1) & 0x7F80)));
      v6 += v37;
      *a3++ = vuzp1_s8(*v36.i8, *v36.i8).u32[0];
      v5 += v38;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,false,true,false,true>(_DWORD *a1, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v5 = a2;
    v6 = a1[15];
    v41 = a1[14];
    v7 = a1[13];
    v9 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = *(*a1 + 16);
    v11 = **a1;
    v12 = v8 - 0x8000;
    if (v6 < v8 - 0x8000)
    {
      v12 = a1[15];
    }

    if (v12 <= -32768)
    {
      v12 = -32768;
    }

    v13 = v12 + 0x8000;
    if (v6 <= 0x8000)
    {
      v6 = 0x8000;
    }

    v14 = v6 - 0x8000;
    if (v14 >= v8)
    {
      v14 = *(*a1 + 36);
    }

    v15 = v11 + v10 * (v14 >> 16);
    v16 = v11 + v10 * HIWORD(v13);
    a4.i32[0] = (v14 >> 1) & 0x7F80;
    v40 = a4;
    __asm { FMOV            V8.2S, #1.0 }

    v22 = vdup_n_s32(0x437F0000u);
    do
    {
      --v5;
      if (v7 >= v9 - 0x8000)
      {
        v23 = v9 - 0x8000;
      }

      else
      {
        v23 = v7;
      }

      if (v23 <= -32768)
      {
        v23 = -32768;
      }

      v24 = v23 + 0x8000;
      if (v7 <= 0x8000)
      {
        v25 = 0x8000;
      }

      else
      {
        v25 = v7;
      }

      v26 = v25 - 0x8000;
      if (v26 >= v9)
      {
        v27 = v9;
      }

      else
      {
        v27 = v26;
      }

      v28 = (v27 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v29 = (v24 >> 15) & 0x1FFFE;
      v42 = CA::HalfFloat::to_float(*(v15 + v28));
      v30 = CA::HalfFloat::to_float(*(v15 + v29));
      v31 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v30), LODWORD(v42)), _D8), _D8, __PAIR64__(LODWORD(v30), LODWORD(v42)));
      v32 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v22, vbic_s8(v31, vcltz_f32(v31))));
      v33 = vorr_s8(vshl_n_s32(v32, 8uLL), v32);
      v34 = vorr_s8(vshl_n_s32(v33, 0x10uLL), v33);
      v43 = CA::HalfFloat::to_float(*(v16 + v28));
      v35 = CA::HalfFloat::to_float(*(v16 + v29));
      v36 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v35), LODWORD(v43)), _D8), _D8, __PAIR64__(LODWORD(v35), LODWORD(v43)));
      v37 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v22, vbic_s8(v36, vcltz_f32(v36))));
      v38 = vorr_s8(vshl_n_s32(v37, 8uLL), v37);
      v39 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vorr_s8(vshl_n_s32(v38, 0x10uLL), v38), v34), v40, 0), v34);
      *v39.i8 = vadd_s16(*v39.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v39, v39, 8uLL), *v39.i8), vdup_n_s16((v27 >> 1) & 0x7F80)));
      *a3++ = vuzp1_s8(*v39.i8, *v39.i8).u32[0];
      v7 += v41;
    }

    while (v5);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,true,false,false,true>(unsigned int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v32 = a1[16];
    v7 = a1[13];
    v31 = a1[14];
    v8 = a1[15] - 0x8000;
    __asm { FMOV            V9.2S, #1.0 }

    v14 = vdup_n_s32(0x437F0000u);
    do
    {
      --v4;
      v15 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v35 = v15.i16[0];
      v16 = v5 + v6 * (v8 >> 16);
      v17 = v5 + v6 * ((v8 + 0x10000) >> 16);
      v18 = *&vshr_n_s32(v15, 0xFuLL) & 0xFFFFFFFEFFFFFFFELL;
      v19 = HIDWORD(v18);
      v20 = v18;
      v33 = CA::HalfFloat::to_float(*(v16 + v18));
      v21 = CA::HalfFloat::to_float(*(v16 + v19));
      v22 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v21), LODWORD(v33)), _D9), _D9, __PAIR64__(LODWORD(v21), LODWORD(v33)));
      v23 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v22, vcltz_f32(v22))));
      v24 = vorr_s8(vshl_n_s32(v23, 8uLL), v23);
      v25 = vorr_s8(vshl_n_s32(v24, 0x10uLL), v24);
      v34 = CA::HalfFloat::to_float(*(v17 + v20));
      v26 = CA::HalfFloat::to_float(*(v17 + v19));
      v27 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v26), LODWORD(v34)), _D9), _D9, __PAIR64__(LODWORD(v26), LODWORD(v34)));
      v28 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v14, vbic_s8(v27, vcltz_f32(v27))));
      v29 = vorr_s8(vshl_n_s32(v28, 8uLL), v28);
      v30 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vshl_n_s32(v29, 0x10uLL), v29), v25), vdupq_n_s16((v8 >> 1) & 0x7F80)), v25);
      *v30.i8 = vadd_s16(*v30.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v30, v30, 8uLL), *v30.i8), vdup_n_s16((v35 >> 1) & 0x7F80)));
      v7 += v31;
      *a3++ = vuzp1_s8(*v30.i8, *v30.i8).u32[0];
      v8 += v32;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,false,false,false,true>(_DWORD *a1, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v5 = a2;
    v7 = a1[14];
    v6 = a1[15];
    v8 = a1[13];
    v9 = *(*a1 + 16);
    v10 = **a1;
    v11 = v6 + 0x8000;
    v6 -= 0x8000;
    v12 = v10 + v9 * (v6 >> 16);
    v13 = v10 + v9 * (v11 >> 16);
    a4.i32[0] = (v6 >> 1) & 0x7F80;
    v34 = a4;
    __asm { FMOV            V9.2S, #1.0 }

    v19 = vdup_n_s32(0x437F0000u);
    do
    {
      --v5;
      v20 = vadd_s32(vdup_n_s32(v8), 0x8000FFFF8000);
      v37 = v20.i16[0];
      v21 = *&vshr_n_s32(v20, 0xFuLL) & 0xFFFFFFFEFFFFFFFELL;
      v22 = HIDWORD(v21);
      v23 = v21;
      v35 = CA::HalfFloat::to_float(*(v12 + v21));
      v24 = CA::HalfFloat::to_float(*(v12 + v22));
      v25 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v24), LODWORD(v35)), _D9), _D9, __PAIR64__(LODWORD(v24), LODWORD(v35)));
      v26 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v19, vbic_s8(v25, vcltz_f32(v25))));
      v27 = vorr_s8(vshl_n_s32(v26, 8uLL), v26);
      v28 = vorr_s8(vshl_n_s32(v27, 0x10uLL), v27);
      v36 = CA::HalfFloat::to_float(*(v13 + v23));
      v29 = CA::HalfFloat::to_float(*(v13 + v22));
      v30 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v29), LODWORD(v36)), _D9), _D9, __PAIR64__(LODWORD(v29), LODWORD(v36)));
      v31 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v19, vbic_s8(v30, vcltz_f32(v30))));
      v32 = vorr_s8(vshl_n_s32(v31, 8uLL), v31);
      v33 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vorr_s8(vshl_n_s32(v32, 0x10uLL), v32), v28), v34, 0), v28);
      *v33.i8 = vadd_s16(*v33.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v33, v33, 8uLL), *v33.i8), vdup_n_s16((v37 >> 1) & 0x7F80)));
      *a3++ = vuzp1_s8(*v33.i8, *v33.i8).u32[0];
      v8 += v7;
    }

    while (v5);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *a1;
    v36 = (*a1)[2];
    v37 = **a1;
    v6 = *(*a1 + 8);
    v7 = *(*a1 + 9);
    v8 = *(a1[3] + 3);
    v9 = *(a1 + 48);
    v10 = *(a1[2] + 3);
    v11 = *(a1 + 15);
    v12 = *(a1 + 16);
    v13 = *(a1 + 13);
    v14 = *(a1 + 14);
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      v34 = CA::HalfFloat::to_float(*(v37 + v36 * (v33 >> 16) + ((v32 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v34 > 1.0)
      {
        v34 = 1.0;
      }

      if (v34 < 0.0)
      {
        v34 = 0.0;
      }

      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *a3++ = ((v34 * 255.0) + 0.5) | (((v34 * 255.0) + 0.5) << 8) | ((((v34 * 255.0) + 0.5) | (((v34 * 255.0) + 0.5) << 8)) << 16);
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,true,true,false,false>(int *a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = a1[15];
    v9 = a1[16];
    v12 = a1[13];
    v11 = a1[14];
    do
    {
      --v4;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      v15 = CA::HalfFloat::to_float(*(v5 + v6 * (v14 >> 16) + ((v13 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v15 > 1.0)
      {
        v15 = 1.0;
      }

      if (v15 < 0.0)
      {
        v15 = 0.0;
      }

      v12 += v11;
      v10 += v9;
      *a3++ = ((v15 * 255.0) + 0.5) | (((v15 * 255.0) + 0.5) << 8) | ((((v15 * 255.0) + 0.5) | (((v15 * 255.0) + 0.5) << 8)) << 16);
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,false,true,false,false>(_DWORD *a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = a1[14];
    v6 = a1[13];
    v7 = *(*a1 + 32);
    v8 = a1[15] & ~(a1[15] >> 31);
    if (v8 >= *(*a1 + 36))
    {
      v8 = *(*a1 + 36);
    }

    v9 = **a1 + *(*a1 + 16) * (v8 >> 16);
    do
    {
      --v4;
      v10 = v6 & ~(v6 >> 31);
      if (v10 >= v7)
      {
        v10 = v7;
      }

      v11 = CA::HalfFloat::to_float(*(v9 + ((v10 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v11 > 1.0)
      {
        v11 = 1.0;
      }

      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      v6 += v5;
      *a3++ = ((v11 * 255.0) + 0.5) | (((v11 * 255.0) + 0.5) << 8) | ((((v11 * 255.0) + 0.5) | (((v11 * 255.0) + 0.5) << 8)) << 16);
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,true,false,false,false>(_DWORD *a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      --v4;
      v11 = CA::HalfFloat::to_float(*(v5 + v6 * (v8 >> 16) + ((v10 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v11 > 1.0)
      {
        v11 = 1.0;
      }

      if (v11 < 0.0)
      {
        v11 = 0.0;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = ((v11 * 255.0) + 0.5) | (((v11 * 255.0) + 0.5) << 8) | ((((v11 * 255.0) + 0.5) | (((v11 * 255.0) + 0.5) << 8)) << 16);
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::Ah,unsigned int,false,false,false,false>(uint64_t a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *(a1 + 52);
    v5 = *(a1 + 56);
    v7 = **a1 + *(*a1 + 16) * *(a1 + 62);
    do
    {
      --v4;
      v8 = CA::HalfFloat::to_float(*(v7 + ((v6 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      if (v8 > 1.0)
      {
        v8 = 1.0;
      }

      if (v8 < 0.0)
      {
        v8 = 0.0;
      }

      v6 += v5;
      *a3++ = ((v8 * 255.0) + 0.5) | (((v8 * 255.0) + 0.5) << 8) | ((((v8 * 255.0) + 0.5) | (((v8 * 255.0) + 0.5) << 8)) << 16);
    }

    while (v4);
  }
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3, double a4, double a5, double a6, int8x8_t a7)
{
  if (a2)
  {
    v8 = a2;
    v9 = *result;
    v10 = **result;
    v11 = (*result)[2];
    v12 = *(*result + 8);
    v13 = *(*result + 9);
    v14 = *(result[3] + 3);
    v15 = *(result + 48);
    v16 = *(result[2] + 3);
    v18 = *(result + 15);
    v17 = *(result + 16);
    v20 = *(result + 13);
    v19 = *(result + 14);
    v21 = v12 - 0x8000;
    v22 = v13 - 0x8000;
    v23 = vdup_n_s32(0x37800000u);
    v24 = vdup_n_s32(0x3F7FFFFFu);
    v25 = vdup_n_s32(0x47800000u);
    v64 = v12;
    v65 = v15;
    v62 = v12 - 0x8000;
    v63 = v19;
    do
    {
      *&a6 = v18;
      *v26.i32 = (1.0 / v16) * v20;
      *&v26.i32[1] = (1.0 / v16) * v18;
      v27 = vcvt_s32_f32(v26);
      if (v15 > 2)
      {
        if (v15 == 3)
        {
          v41 = vmul_f32(vcvt_f32_s32(v27), vmul_f32(v23, v9[5]));
          v26 = *(result + 84);
          a6 = COERCE_DOUBLE(vmla_f32(*(result + 92), v26, vminnm_f32(vsub_f32(v41, vrndm_f32(v41)), v24)));
          v33 = vmul_f32(*&a6, vmul_f32(v25, vcvt_f32_u32(v9[3])));
          goto LABEL_12;
        }

        if (v15 == 5)
        {
          v34 = vcvt_f32_s32(v27);
          v35 = vcvt_f32_s32(v9[4]);
          v26 = vmul_f32(*(result + 84), v35);
          v36 = vmul_f32(*(result + 92), v35);
          a7 = vcgt_f32(v34, v36);
          v37 = vbsl_s8(a7, v36, v34);
          a6 = COERCE_DOUBLE(vcgt_f32(v26, v37));
          v33 = vbsl_s8(*&a6, v26, v37);
          goto LABEL_12;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v38 = vmul_f32(v9[5], vcvt_f32_s32(v27));
          v39 = vmul_f32(v38, v38);
          v40 = vadd_f32(vdup_lane_s32(v39, 1), v39);
          *v39.i32 = fmaxf(vaddv_f32(v39), 0.00001);
          v39.i32[0] = vmul_f32(v40, vrsqrte_f32(vdup_lane_s32(v39, 0))).u32[0];
          v26 = vcvt_f32_u32(v9[3]);
          LODWORD(a6) = 0.5;
          v39.i32[1] = 0.5;
          v33 = vmul_f32(v39, v26);
          goto LABEL_12;
        }

        if (v15 == 2)
        {
          v28 = result;
          v29 = v9;
          v30 = v11;
          v31 = v17;
          v32 = atan2f(*&v9[5].i32[1] * v27.i32[1], *v9[5].i32 * v27.i32[0]);
          v19 = v63;
          v12 = v64;
          v17 = v31;
          v15 = v65;
          v11 = v30;
          v22 = v13 - 0x8000;
          v21 = v62;
          v9 = v29;
          result = v28;
          v26 = vcvt_f32_u32(v29[3]);
          HIDWORD(a6) = 1056964608;
          *&a6 = (v32 * -10430.0) + 32768.0;
          v33 = vmul_f32(*&a6, v26);
LABEL_12:
          v27 = vcvt_s32_f32(v33);
        }
      }

      v42 = v27.i32[0];
      if (v27.i32[0] >= v21)
      {
        v43 = v21;
      }

      else
      {
        v43 = v27.i32[0];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v27.i32[0] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      v46 = v27.i32[1];
      if (v45 >= v12)
      {
        v45 = v12;
      }

      if (v27.i32[1] >= v22)
      {
        v47 = v22;
      }

      else
      {
        v47 = v27.i32[1];
      }

      if (v47 <= -32768)
      {
        v47 = -32768;
      }

      v48 = v47 + 0x8000;
      if (v27.i32[1] <= 0x8000)
      {
        v46 = 0x8000;
      }

      v49 = v46 - 0x8000;
      if (v49 >= v13)
      {
        v49 = v13;
      }

      v50 = v10 + v11 * (v49 >> 16);
      v51 = v10 + v11 * HIWORD(v48);
      v52 = (v45 >> 13) & 0xFFFFFFFFFFFFFFF8;
      v53 = (v50 + v52);
      v54 = (v51 + v52);
      v55 = (v44 >> 13) & 0x7FFF8;
      v56 = (v50 + v55);
      v57 = (v51 + v55);
      v27.i16[0] = *v53;
      v27.i16[2] = *v56;
      v26.i16[0] = v53[1];
      v26.i16[2] = v56[1];
      LOWORD(a6) = v53[2];
      WORD2(a6) = v56[2];
      v58 = vshr_n_u32(vand_s8(*&a6, 0xFFFF0000FFFFLL), 8uLL);
      v59 = vorr_s8(vand_s8(v26, 0xFF000000FF00), v58);
      v60 = vorr_s8((*&vshl_n_s32(vand_s8(v27, 0xFFFF0000FFFFLL), 8uLL) & 0xFFFF00FFFFFF00FFLL), v59);
      v59.i16[0] = *v54;
      v59.i16[2] = *v57;
      v58.i16[0] = v54[1];
      v58.i16[2] = v57[1];
      a7.i16[0] = v54[2];
      a7.i16[2] = v57[2];
      a7 = vshr_n_u32(vand_s8(a7, 0xFFFF0000FFFFLL), 8uLL);
      v61 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8((*&vshl_n_s32(vand_s8(v59, 0xFFFF0000FFFFLL), 8uLL) & 0xFFFF00FFFFFF00FFLL), vorr_s8(vand_s8(v58, 0xFF000000FF00), a7)) | 0xFF000000FF000000), (*&v60 | 0xFF000000FF000000)), vdupq_n_s16((v49 >> 1) & 0x7F80)), (*&v60 | 0xFF000000FF000000));
      a6 = COERCE_DOUBLE(vdup_n_s16((v45 >> 1) & 0x7F80));
      *v61.i8 = vadd_s16(*v61.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v61, v61, 8uLL), *v61.i8), *&a6));
      v16 = v16 + v14;
      v20 += v19;
      v18 += v17;
      *a3++ = vuzp1_s8(*v61.i8, *v61.i8).u32[0];
      --v8;
    }

    while (v8);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,true,true,false,true>(int *result, int a2, _DWORD *a3, double a4, double a5, int8x8_t a6, int16x4_t a7, int16x4_t a8, int8x8_t a9, int8x8_t a10)
{
  if (a2)
  {
    v10 = **result;
    v11 = *(*result + 16);
    v12 = *(*result + 32);
    v13 = *(*result + 36);
    v15 = result[15];
    v14 = result[16];
    v17 = result[13];
    v16 = result[14];
    result = 4294934528;
    do
    {
      if (v17 >= v12 - 0x8000)
      {
        v18 = v12 - 0x8000;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= -32768)
      {
        v19 = -32768;
      }

      else
      {
        v19 = v18;
      }

      if (v17 <= 0x8000)
      {
        v20 = 0x8000;
      }

      else
      {
        v20 = v17;
      }

      v21 = v20 - 0x8000;
      if (v21 >= v12)
      {
        v21 = v12;
      }

      if (v15 >= v13 - 0x8000)
      {
        v22 = v13 - 0x8000;
      }

      else
      {
        v22 = v15;
      }

      if (v22 <= -32768)
      {
        v22 = -32768;
      }

      v23 = v22 + 0x8000;
      if (v15 <= 0x8000)
      {
        v24 = 0x8000;
      }

      else
      {
        v24 = v15;
      }

      v25 = v24 - 0x8000;
      if (v25 >= v13)
      {
        v25 = v13;
      }

      v26 = v19 + 0x8000;
      v27 = v10 + v11 * (v25 >> 16);
      v28 = v10 + v11 * HIWORD(v23);
      v29 = (v21 >> 13) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v27 + v29);
      v31 = (v28 + v29);
      v32 = (v26 >> 13) & 0x7FFF8;
      v33 = (v28 + v32);
      v34 = (v27 + v32);
      a6.i16[0] = *v30;
      a6.i16[2] = *v34;
      a7.i16[0] = v30[1];
      a7.i16[2] = v34[1];
      a8.i16[0] = v30[2];
      a8.i16[2] = v34[2];
      a9.i16[0] = v31[1];
      a9.i16[2] = v33[1];
      a10.i16[0] = v31[2];
      a10.i16[2] = v33[2];
      a10 = vshr_n_u32(vand_s8(a10, 0xFFFF0000FFFFLL), 8uLL);
      a9 = vorr_s8(vand_s8(a9, 0xFF000000FF00), a10);
      a10.i16[0] = *v31;
      a10.i16[2] = *v33;
      v35 = vorr_s8((*&vshl_n_s32(vand_s8(a6, 0xFFFF0000FFFFLL), 8uLL) & 0xFFFF00FFFFFF00FFLL), vorr_s8(vand_s8(a7, 0xFF000000FF00), vshr_n_u32(vand_s8(a8, 0xFFFF0000FFFFLL), 8uLL)));
      v36 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8((*&vshl_n_s32(vand_s8(a10, 0xFFFF0000FFFFLL), 8uLL) & 0xFFFF00FFFFFF00FFLL), a9) | 0xFF000000FF000000), (*&v35 | 0xFF000000FF000000)), vdupq_n_s16((v25 >> 1) & 0x7F80)), (*&v35 | 0xFF000000FF000000));
      a8 = vdup_n_s16((v21 >> 1) & 0x7F80);
      a7 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v36, v36, 8uLL), *v36.i8), a8);
      a6 = vuzp1_s8(vadd_s16(*v36.i8, a7), 0xFFFF0000FFFFLL);
      v17 += v16;
      v15 += v14;
      *a3++ = a6.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, double a5, double a6, int8x8_t a7, int16x4_t a8, int16x4_t a9, int8x8_t a10, int8x8_t a11)
{
  if (a2)
  {
    v11 = result[14];
    v12 = result[15];
    v13 = result[13];
    v14 = *(*result + 32);
    v15 = *(*result + 36);
    v16 = *(*result + 16);
    v17 = **result;
    if (v12 >= v15 - 0x8000)
    {
      v18 = v15 - 0x8000;
    }

    else
    {
      v18 = result[15];
    }

    if (v18 <= -32768)
    {
      v18 = -32768;
    }

    if (v12 <= 0x8000)
    {
      v12 = 0x8000;
    }

    v19 = v12 - 0x8000;
    if (v19 >= v15)
    {
      v20 = *(*result + 36);
    }

    else
    {
      v20 = v19;
    }

    v21 = v17 + v16 * (v20 >> 16);
    v22 = v17 + v16 * ((v18 + 0x8000) >> 16);
    a4.i32[0] = (v20 >> 1) & 0x7F80;
    do
    {
      if (v13 >= v14 - 0x8000)
      {
        v23 = v14 - 0x8000;
      }

      else
      {
        v23 = v13;
      }

      if (v23 <= -32768)
      {
        v23 = -32768;
      }

      if (v13 <= 0x8000)
      {
        v24 = 0x8000;
      }

      else
      {
        v24 = v13;
      }

      v25 = v23 + 0x8000;
      v26 = v24 - 0x8000;
      if (v24 - 0x8000 >= v14)
      {
        v26 = v14;
      }

      v27 = (v26 >> 13) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v21 + v27);
      v29 = (v22 + v27);
      v30 = (v25 >> 13) & 0x7FFF8;
      v31 = (v21 + v30);
      result = (v22 + v30);
      a7.i16[0] = *v28;
      a7.i16[2] = *v31;
      a8.i16[0] = v28[1];
      a8.i16[2] = v31[1];
      a9.i16[0] = v28[2];
      a9.i16[2] = v31[2];
      v32 = vshr_n_u32(vand_s8(a9, 0xFFFF0000FFFFLL), 8uLL);
      a10.i16[0] = *v29;
      a10.i16[2] = *result;
      a10 = vand_s8(a10, 0xFFFF0000FFFFLL);
      a11.i16[0] = v29[1];
      a11.i16[2] = *(result + 1);
      a11 = vand_s8(a11, 0xFF000000FF00);
      v33 = vorr_s8(vand_s8(a8, 0xFF000000FF00), v32);
      v32.i16[0] = v29[2];
      v32.i16[2] = *(result + 2);
      v34 = vorr_s8((*&vshl_n_s32(vand_s8(a7, 0xFFFF0000FFFFLL), 8uLL) & 0xFFFF00FFFFFF00FFLL), v33);
      v35 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8((*&vshl_n_s32(a10, 8uLL) & 0xFFFF00FFFFFF00FFLL), vorr_s8(a11, vshr_n_u32(vand_s8(v32, 0xFFFF0000FFFFLL), 8uLL))) | 0xFF000000FF000000), (*&v34 | 0xFF000000FF000000)), a4, 0), (*&v34 | 0xFF000000FF000000));
      a9 = vdup_n_s16((v26 >> 1) & 0x7F80);
      a8 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v35, v35, 8uLL), *v35.i8), a9);
      a7 = vuzp1_s8(vadd_s16(*v35.i8, a8), a4);
      v13 += v11;
      *a3++ = a7.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_WORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,true,false,false,true>(_WORD *result, int a2, _DWORD *a3, double a4, double a5, double a6, double a7, double a8, int16x4_t a9, int16x8_t a10, int8x8_t a11)
{
  if (a2)
  {
    v13 = **result;
    v14 = *(*result + 16);
    v15 = *(result + 16);
    v17 = *(result + 13);
    v16 = *(result + 14);
    v18 = *(result + 15) - 0x8000;
    do
    {
      v19 = vadd_s32(vdup_n_s32(v17), 0x8000FFFF8000);
      v20 = v13 + v14 * (v18 >> 16);
      v21 = v13 + v14 * ((v18 + 0x10000) >> 16);
      v22 = *&vshr_n_s32(v19, 0xDuLL) & 0xFFFFFFF8FFFFFFF8;
      v23 = (v20 + v22);
      v24 = (v21 + v22);
      v25 = (v20 + SHIDWORD(v22));
      v26 = (v21 + SHIDWORD(v22));
      LOWORD(v22) = *v23;
      WORD2(v22) = *v25;
      a9.i16[0] = v23[1];
      a9.i16[2] = v25[1];
      a10.i16[0] = v23[2];
      a10.i16[2] = v25[2];
      result = v26 + 1;
      a11.i16[0] = *v24;
      a11.i16[2] = *v26;
      v11.i16[0] = v24[1];
      a11 = vand_s8(a11, 0xFFFF0000FFFFLL);
      v11.i16[2] = v26[1];
      v12.i16[0] = v24[2];
      v27 = vorr_s8(vand_s8(a9, 0xFF000000FF00), vshr_n_u32(vand_s8(*a10.i8, 0xFFFF0000FFFFLL), 8uLL));
      v28 = vand_s8(v11, 0xFF000000FF00);
      v12.i16[2] = v26[2];
      v11 = vshr_n_u32(vand_s8(v12, 0xFFFF0000FFFFLL), 8uLL);
      v29 = *&vorr_s8((*&vshl_n_s32(vand_s8(v22, 0xFFFF0000FFFFLL), 8uLL) & 0xFFFF00FFFFFF00FFLL), v27) | 0xFF000000FF000000;
      v30 = vsubl_u8((*&vorr_s8((*&vshl_n_s32(a11, 8uLL) & 0xFFFF00FFFFFF00FFLL), vorr_s8(v28, v11)) | 0xFF000000FF000000), v29);
      a10 = vdupq_n_s16((v18 >> 1) & 0x7F80);
      v31 = vaddw_u8(vqrdmulhq_s16(v30, a10), v29);
      a9 = vdup_n_s16((v19.u16[0] >> 1) & 0x7F80);
      v17 += v16;
      *a3++ = vuzp1_s8(vadd_s16(*v31.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v31, v31, 8uLL), *v31.i8), a9)), 0x8000FFFF8000).u32[0];
      v18 += v15;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, double a5, double a6, double a7, double a8, double a9, int16x4_t a10, int8x8_t a11)
{
  if (a2)
  {
    v14 = result[14];
    v15 = result[15];
    v16 = result[13];
    v17 = *(*result + 16);
    v18 = **result;
    v19 = v15 + 0x8000;
    v20 = v15 - 0x8000;
    v21 = v18 + v17 * ((v15 - 0x8000) >> 16);
    v22 = v18 + v17 * (v19 >> 16);
    a4.i32[0] = (v20 >> 1) & 0x7F80;
    do
    {
      v23 = vadd_s32(vdup_n_s32(v16), 0x8000FFFF8000);
      v24 = *&vshr_n_s32(v23, 0xDuLL) & 0xFFFFFFF8FFFFFFF8;
      v25 = (v21 + v24);
      v26 = (v22 + v24);
      v27 = v21 + SHIDWORD(v24);
      v28 = (v22 + SHIDWORD(v24));
      result = (v27 + 2);
      LOWORD(v24) = *v25;
      a10.i16[0] = v25[1];
      WORD2(v24) = *v27;
      a10.i16[2] = *(v27 + 2);
      a11.i16[0] = v25[2];
      a11.i16[2] = *(v27 + 4);
      LOWORD(v11) = *v26;
      WORD2(v11) = *v28;
      v12.i16[0] = v26[1];
      v12.i16[2] = v28[1];
      v12 = vand_s8(v12, 0xFF000000FF00);
      v13.i16[0] = v26[2];
      v29 = vorr_s8(vand_s8(a10, 0xFF000000FF00), vshr_n_u32(vand_s8(a11, 0xFFFF0000FFFFLL), 8uLL));
      v13.i16[2] = v28[2];
      a11 = vshr_n_u32(vand_s8(v13, 0xFFFF0000FFFFLL), 8uLL);
      v30 = vorr_s8((*&vshl_n_s32(vand_s8(v24, 0xFFFF0000FFFFLL), 8uLL) & 0xFFFF00FFFFFF00FFLL), v29);
      v11 = *&vshl_n_s32(vand_s8(v11, 0xFFFF0000FFFFLL), 8uLL) & 0xFFFF00FFFFFF00FFLL;
      v31 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(v11, vorr_s8(v12, a11)) | 0xFF000000FF000000), (*&v30 | 0xFF000000FF000000)), a4, 0), (*&v30 | 0xFF000000FF000000));
      a10 = vdup_n_s16((v23.u16[0] >> 1) & 0x7F80);
      v16 += v14;
      *a3++ = vuzp1_s8(vadd_s16(*v31.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v31, v31, 8uLL), *v31.i8), a10)), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v40 = v12;
    v39 = v8;
    v38 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v38;
          v12 = v40;
          v8 = v39;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v37 = (v7 + v8 * (v36 >> 16) + ((v35 >> 13) & 0xFFFFFFFFFFFFFFF8));
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (*v37 << 8) & 0xFF0000 | (*(v37 + 3) << 8) | *(v37 + 5) | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = (v3 + v4 * (v12 >> 16) + ((v11 >> 13) & 0xFFFFFFFFFFFFFFF8));
      result = *(v13 + 3);
      v10 += v9;
      v8 += v7;
      *a3++ = (*v13 << 8) & 0xFF0000 | (result << 8) | *(v13 + 5) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v4 += v3;
      *a3++ = (*(v7 + ((v8 >> 13) & 0xFFFFFFFFFFFFFFF8)) << 8) & 0xFF0000 | (*(v7 + ((v8 >> 13) & 0xFFFFFFFFFFFFFFF8) + 3) << 8) | *(v7 + ((v8 >> 13) & 0xFFFFFFFFFFFFFFF8) + 5) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = (v3 + v4 * (v6 >> 16) + ((v8 >> 13) & 0xFFFFFFFFFFFFFFF8));
      v8 += v7;
      v6 += v5;
      *a3++ = (*v9 << 8) & 0xFF0000 | (*(v9 + 3) << 8) | *(v9 + 5) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX16,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = (*(v5 + ((v4 >> 13) & 0xFFFFFFFFFFFFFFF8)) << 8) & 0xFF0000 | (*(v5 + ((v4 >> 13) & 0xFFFFFFFFFFFFFFF8) + 3) << 8) | *(v5 + ((v4 >> 13) & 0xFFFFFFFFFFFFFFF8) + 5) | 0xFF000000;
      v4 += v3;
      *a3++ = v6;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v60 = v8;
    v61 = v11;
    v58 = v8 - 0x8000;
    v59 = v15;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v39 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, v5[5]));
          v30 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v39, vrndm_f32(v39)), v20)), vmul_f32(v21, vcvt_f32_u32(v5[3])));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v31 = vcvt_f32_s32(v23);
          v32 = vcvt_f32_s32(v5[4]);
          v33 = vmul_f32(*(result + 84), v32);
          v34 = vmul_f32(*(result + 92), v32);
          v35 = vbsl_s8(vcgt_f32(v31, v34), v34, v31);
          v30 = vbsl_s8(vcgt_f32(v33, v35), v33, v35);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v36 = vmul_f32(v5[5], vcvt_f32_s32(v23));
          v37 = vmul_f32(v36, v36);
          v38 = vadd_f32(vdup_lane_s32(v37, 1), v37);
          *v37.i32 = fmaxf(vaddv_f32(v37), 0.00001);
          v37.i32[0] = vmul_f32(v38, vrsqrte_f32(vdup_lane_s32(v37, 0))).u32[0];
          v37.i32[1] = 0.5;
          v30 = vmul_f32(v37, vcvt_f32_u32(v5[3]));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = result;
          v25 = v5;
          v26 = v7;
          v27 = v13;
          v28 = atan2f(*&v5[5].i32[1] * v23.i32[1], *v5[5].i32 * v23.i32[0]);
          v15 = v59;
          v8 = v60;
          v13 = v27;
          v11 = v61;
          v7 = v26;
          v18 = v9 - 0x8000;
          v17 = v58;
          v5 = v25;
          result = v24;
          v29.i32[1] = 1056964608;
          v29.f32[0] = (v28 * -10430.0) + 32768.0;
          v30 = vmul_f32(v29, vcvt_f32_u32(v25[3]));
LABEL_12:
          v23 = vcvt_s32_f32(v30);
        }
      }

      v40 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v41 = v17;
      }

      else
      {
        v41 = v23.i32[0];
      }

      if (v41 <= -32768)
      {
        v41 = -32768;
      }

      v42 = v41 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v40 = 0x8000;
      }

      v43 = v40 - 0x8000;
      if (v43 >= v8)
      {
        v43 = v8;
      }

      v44 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v45 = v18;
      }

      else
      {
        v45 = v23.i32[1];
      }

      if (v45 <= -32768)
      {
        v45 = -32768;
      }

      v46 = v45 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v44 = 0x8000;
      }

      v47 = v44 - 0x8000;
      if (v47 >= v9)
      {
        v47 = v9;
      }

      v48 = v6 + v7 * (v47 >> 16);
      v49 = v6 + v7 * HIWORD(v46);
      v50 = (v43 >> 13) & 0xFFFFFFFFFFFFFFF8;
      v51 = (v48 + v50);
      v52 = (v49 + v50);
      v53 = (v42 >> 13) & 0x7FFF8;
      v54 = (v48 + v53);
      v55 = (v49 + v53);
      LODWORD(v49) = (*v51 << 8) & 0xFF0000 | (HIBYTE(v51[3]) << 24) | (*(v51 + 3) << 8) | *(v51 + 5);
      LODWORD(v54) = (*v54 << 8) & 0xFF0000 | (HIBYTE(v54[3]) << 24) | (*(v54 + 3) << 8) | *(v54 + 5);
      v56.i32[0] = (*v52 << 8) & 0xFF0000 | (HIBYTE(v52[3]) << 24) | (*(v52 + 3) << 8) | *(v52 + 5);
      v56.i32[1] = (*v55 << 8) & 0xFF0000 | (HIBYTE(v55[3]) << 24) | (*(v55 + 3) << 8) | *(v55 + 5);
      v57 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v56, __PAIR64__(v54, v49)), vdupq_n_s16((v47 >> 1) & 0x7F80)), __PAIR64__(v54, v49));
      *v57.i8 = vadd_s16(*v57.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v57, v57, 8uLL), *v57.i8), vdup_n_s16((v43 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v57.i8, *v57.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v11 = -32768;
      }

      v12 = v11 + 0x8000;
      if (v10 <= 0x8000)
      {
        v13 = 0x8000;
      }

      else
      {
        v13 = v10;
      }

      v14 = v13 - 0x8000;
      if (v14 >= v5)
      {
        v14 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v15 = v6 - 0x8000;
      }

      else
      {
        v15 = v8;
      }

      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      v16 = v15 + 0x8000;
      if (v8 <= 0x8000)
      {
        v17 = 0x8000;
      }

      else
      {
        v17 = v8;
      }

      v18 = v17 - 0x8000;
      if (v18 >= v6)
      {
        v18 = v6;
      }

      v19 = v3 + v4 * (v18 >> 16);
      v20 = v3 + v4 * HIWORD(v16);
      v21 = (v14 >> 13) & 0xFFFFFFFFFFFFFFF8;
      v22 = (v20 + v21);
      v23 = (v19 + v21);
      v24 = (v12 >> 13) & 0x7FFF8;
      v25 = (v19 + v24);
      v26 = (v20 + v24);
      v27 = *(v23 + 3);
      v28 = *(v23 + 5);
      v29 = *(v25 + 3);
      LODWORD(v20) = (*v23 << 8) & 0xFF0000 | (HIBYTE(v23[3]) << 24);
      LODWORD(v23) = (*v25 << 8) & 0xFF0000 | (HIBYTE(v25[3]) << 24);
      v30 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__((*v26 << 8) & 0xFF0000 | (HIBYTE(v26[3]) << 24) | (*(v26 + 3) << 8) | *(v26 + 5), (*v22 << 8) & 0xFF0000 | (HIBYTE(v22[3]) << 24) | (*(v22 + 3) << 8) | *(v22 + 5)), __PAIR64__(v23 | (v29 << 8) | *(v25 + 5), v20 | (v27 << 8) | v28)), vdupq_n_s16((v18 >> 1) & 0x7F80)), __PAIR64__(v23 | (v29 << 8) | *(v25 + 5), v20 | (v27 << 8) | v28));
      *v30.i8 = vadd_s16(*v30.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v30, v30, 8uLL), *v30.i8), vdup_n_s16((v14 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v30.i8, *v30.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = result[15];
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v16 = v7 - 0x8000;
      }

      else
      {
        v16 = v6;
      }

      if (v16 <= -32768)
      {
        v17 = -32768;
      }

      else
      {
        v17 = v16;
      }

      if (v6 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v6;
      }

      v19 = v18 - 0x8000;
      if (v19 >= v7)
      {
        v19 = v7;
      }

      v20 = (v19 >> 13) & 0xFFFFFFFFFFFFFFF8;
      v21 = (v14 + v20);
      v22 = ((v17 + 0x8000) >> 13) & 0x7FFF8;
      v23 = (v15 + v20);
      v24 = *(v21 + 3);
      v25 = *(v21 + 5);
      v26 = (*v21 << 8) & 0xFF0000 | (HIBYTE(v21[3]) << 24);
      LODWORD(v21) = (*(v14 + v22) << 8) & 0xFF0000 | (HIBYTE(*(v14 + v22 + 6)) << 24) | (*(v14 + v22 + 3) << 8) | *(v14 + v22 + 5);
      v27 = *(v23 + 3);
      v28 = *(v23 + 5);
      v29 = (*v23 << 8) & 0xFF0000 | (HIBYTE(v23[3]) << 24);
      result = (v26 | (v24 << 8) | v25);
      v30.i32[0] = v29 | (v27 << 8) | v28;
      v30.i32[1] = (*(v15 + v22) << 8) & 0xFF0000 | (HIBYTE(*(v15 + v22 + 6)) << 24) | (*(v15 + v22 + 3) << 8) | *(v15 + v22 + 5);
      v31 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v30, __PAIR64__(v21, result)), a4, 0), __PAIR64__(v21, result));
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v31.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v31, v31, 8uLL), *v31.i8), vdup_n_s16((v19 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = result[16];
    v7 = result[13];
    v6 = result[14];
    v8 = result[15] - 0x8000;
    do
    {
      v9 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v10 = v3 + v4 * (v8 >> 16);
      v11 = vshr_n_s32(v9, 0xDuLL);
      v12 = v3 + v4 * ((v8 + 0x10000) >> 16);
      v13 = (*(v10 + (v11.i32[0] & 0xFFFFFFF8)) << 8) & 0xFF0000 | (HIBYTE(*(v10 + (v11.i32[0] & 0xFFFFFFF8) + 6)) << 24) | (*(v10 + (v11.i32[0] & 0xFFFFFFF8) + 3) << 8) | *(v10 + (v11.i32[0] & 0xFFFFFFF8) + 5);
      result = ((*(v10 + (v11.i32[1] & 0xFFFFFFF8)) << 8) & 0xFF0000 | (HIBYTE(*(v10 + (v11.i32[1] & 0xFFFFFFF8) + 6)) << 24) | (*(v10 + (v11.i32[1] & 0xFFFFFFF8) + 3) << 8) | *(v10 + (v11.i32[1] & 0xFFFFFFF8) + 5));
      v14.i32[0] = (*(v12 + (v11.i32[0] & 0xFFFFFFF8)) << 8) & 0xFF0000 | (HIBYTE(*(v12 + (v11.i32[0] & 0xFFFFFFF8) + 6)) << 24) | (*(v12 + (v11.i32[0] & 0xFFFFFFF8) + 3) << 8) | *(v12 + (v11.i32[0] & 0xFFFFFFF8) + 5);
      v14.i32[1] = (*(v12 + (v11.i32[1] & 0xFFFFFFF8)) << 8) & 0xFF0000 | (HIBYTE(*(v12 + (v11.i32[1] & 0xFFFFFFF8) + 6)) << 24) | (*(v12 + (v11.i32[1] & 0xFFFFFFF8) + 3) << 8) | *(v12 + (v11.i32[1] & 0xFFFFFFF8) + 5);
      v15 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v14, __PAIR64__(result, v13)), vdupq_n_s16((v8 >> 1) & 0x7F80)), __PAIR64__(result, v13));
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v15.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v15, v15, 8uLL), *v15.i8), vdup_n_s16((v9.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v14 = vshr_n_s32(v13, 0xDuLL);
      v15 = (v12 + (v14.i32[0] & 0xFFFFFFF8));
      v16 = (v11 + (v14.i32[1] & 0xFFFFFFF8));
      v17 = (v12 + (v14.i32[1] & 0xFFFFFFF8));
      result = *(v16 + 5);
      v14.i32[0] = (*(v11 + (v14.i32[0] & 0xFFFFFFF8)) << 8) & 0xFF0000 | (HIBYTE(*(v11 + (v14.i32[0] & 0xFFFFFFF8) + 6)) << 24) | (*(v11 + (v14.i32[0] & 0xFFFFFFF8) + 3) << 8) | *(v11 + (v14.i32[0] & 0xFFFFFFF8) + 5);
      v14.i32[1] = (*v16 << 8) & 0xFF0000 | (HIBYTE(v16[3]) << 24) | (*(v16 + 3) << 8) | result;
      v18.i32[0] = (*v15 << 8) & 0xFF0000 | (HIBYTE(v15[3]) << 24) | (*(v15 + 3) << 8) | *(v15 + 5);
      v18.i32[1] = (*v17 << 8) & 0xFF0000 | (HIBYTE(v17[3]) << 24) | (*(v17 + 3) << 8) | *(v17 + 5);
      v19 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v18, v14), a4, 0), v14);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v19.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v19, v19, 8uLL), *v19.i8), vdup_n_s16((v13.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,true,true,true,false>(uint64_t **a1, int a2, int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v40 = v12;
    v39 = v8;
    v38 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v38;
          v12 = v40;
          v8 = v39;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v37 = (v7 + v8 * (v36 >> 16) + ((v35 >> 13) & 0xFFFFFFFFFFFFFFF8));
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (*v37 << 8) & 0xFF0000 | (HIBYTE(v37[3]) << 24) | (*(v37 + 3) << 8) | *(v37 + 5);
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,true,true,false,false>(int *result, int a2, int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = (v3 + v4 * (v12 >> 16) + ((v11 >> 13) & 0xFFFFFFFFFFFFFFF8));
      result = *(v13 + 3);
      v10 += v9;
      v8 += v7;
      *a3++ = (*v13 << 8) & 0xFF0000 | (HIBYTE(v13[3]) << 24) | (result << 8) | *(v13 + 5);
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,false,true,false,false>(_DWORD *result, int a2, int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v9 = (v7 + ((v8 >> 13) & 0xFFFFFFFFFFFFFFF8));
      v4 += v3;
      *a3++ = (*v9 << 8) & 0xFF0000 | (HIBYTE(v9[3]) << 24) | (*(v9 + 3) << 8) | *(v9 + 5);
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,true,false,false,false>(_DWORD *result, int a2, int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = (v3 + v4 * (v6 >> 16) + ((v8 >> 13) & 0xFFFFFFFFFFFFFFF8));
      v8 += v7;
      v6 += v5;
      *a3++ = (*v9 << 8) & 0xFF0000 | (HIBYTE(v9[3]) << 24) | (*(v9 + 3) << 8) | *(v9 + 5);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA16,unsigned int,false,false,false,false>(uint64_t result, int a2, int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = (v5 + ((v4 >> 13) & 0xFFFFFFFFFFFFFFF8));
      v4 += v3;
      *a3++ = (*v6 << 8) & 0xFF0000 | (HIBYTE(v6[3]) << 24) | (*(v6 + 3) << 8) | *(v6 + 5);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v15 = *(result + 13);
    v16 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = 1.0;
    v19 = vdup_n_s32(0x70707u);
    v56 = vdup_n_s32(0x3F7FFFFFu);
    v57 = vdup_n_s32(0x37800000u);
    v55 = vdup_n_s32(0x47800000u);
    v61 = v13;
    v62 = v8;
    v60 = result;
    v59 = v8 - 0x8000;
    v58 = v6;
    do
    {
      v20.f32[0] = (v18 / v12) * v15;
      v20.f32[1] = (v18 / v12) * v14;
      v21 = vcvt_s32_f32(v20);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v35 = vmul_f32(vcvt_f32_s32(v21), vmul_f32(v57, *(v5 + 10)));
          v26 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v35, vrndm_f32(v35)), v56)), vmul_f32(v55, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v27 = vcvt_f32_s32(v21);
          v28 = vcvt_f32_s32(*(v5 + 8));
          v29 = vmul_f32(*(result + 84), v28);
          v30 = vmul_f32(*(result + 92), v28);
          v31 = vbsl_s8(vcgt_f32(v27, v30), v30, v27);
          v26 = vbsl_s8(vcgt_f32(v29, v31), v29, v31);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v32 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v21));
          v33 = vmul_f32(v32, v32);
          v34 = vadd_f32(vdup_lane_s32(v33, 1), v33);
          *v33.i32 = fmaxf(vaddv_f32(v33), 0.00001);
          v33.i32[0] = vmul_f32(v34, vrsqrte_f32(vdup_lane_s32(v33, 0))).u32[0];
          v33.i32[1] = 0.5;
          v26 = vmul_f32(v33, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v22 = v7;
          v23 = v11;
          v24 = atan2f(v5[11] * v21.i32[1], v5[10] * v21.i32[0]);
          v18 = 1.0;
          v17 = v59;
          v13 = v61;
          v8 = v62;
          v11 = v23;
          v7 = v22;
          v6 = v58;
          result = v60;
          v25.i32[1] = 1056964608;
          v25.f32[0] = (v24 * -10430.0) + 32768.0;
          v26 = vmul_f32(v25, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v21 = vcvt_s32_f32(v26);
        }
      }

      v36 = v21.i32[0];
      if (v21.i32[0] >= v17)
      {
        v37 = v17;
      }

      else
      {
        v37 = v21.i32[0];
      }

      if (v37 <= -32768)
      {
        v37 = -32768;
      }

      v38 = v37 + 0x8000;
      if (v21.i32[0] <= 0x8000)
      {
        v36 = 0x8000;
      }

      v39 = v36 - 0x8000;
      if (v39 >= v8)
      {
        v39 = v8;
      }

      v40 = v21.i32[1];
      if (v21.i32[1] >= v9 - 0x8000)
      {
        v41 = v9 - 0x8000;
      }

      else
      {
        v41 = v21.i32[1];
      }

      if (v41 <= -32768)
      {
        v41 = -32768;
      }

      v42 = v41 + 0x8000;
      if (v21.i32[1] <= 0x8000)
      {
        v40 = 0x8000;
      }

      v43 = v40 - 0x8000;
      if (v43 >= v9)
      {
        v43 = v9;
      }

      v44 = v6 + v7 * (v43 >> 16);
      v45 = v6 + v7 * HIWORD(v42);
      v46 = (v39 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v47 = (v38 >> 15) & 0x1FFFE;
      v21.i16[0] = *(v44 + v46);
      v21.i16[2] = *(v44 + v47);
      v48 = vshr_n_u32(vand_s8(v21, 0xFFFF0000FFFFLL), 1uLL);
      v49 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v48, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v48, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v21, 8uLL), 0xF8000000F80000));
      v50 = vand_s8(vshr_n_u32(v49, 3uLL), v19);
      v51 = vorr_s8(v49, v50);
      v50.i16[0] = *(v45 + v46);
      v50.i16[2] = *(v45 + v47);
      v52 = vshr_n_u32(vand_s8(v50, 0xFFFF0000FFFFLL), 1uLL);
      v53 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v52, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v52, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v50, 8uLL), 0xF8000000F80000));
      v54 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(v53, vand_s8(vshr_n_u32(v53, 3uLL), v19)) | 0xFF000000FF000000), (*&v51 | 0xFF000000FF000000)), vdupq_n_s16((v43 >> 1) & 0x7F80)), (*&v51 | 0xFF000000FF000000));
      *v54.i8 = vadd_s16(*v54.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v54, v54, 8uLL), *v54.i8), vdup_n_s16((v39 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v15 += v16;
      v14 += v13;
      *a3++ = vuzp1_s8(*v54.i8, *v54.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,true,true,false,true>(int *result, int a2, _DWORD *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x8_t a11)
{
  if (a2)
  {
    v12 = **result;
    v13 = *(*result + 16);
    v14 = *(*result + 32);
    v15 = *(*result + 36);
    v17 = result[15];
    v16 = result[16];
    v19 = result[13];
    v18 = result[14];
    result = 4294934528;
    v20 = vdup_n_s32(0x70707u);
    do
    {
      if (v19 >= v14 - 0x8000)
      {
        v21 = v14 - 0x8000;
      }

      else
      {
        v21 = v19;
      }

      if (v21 <= -32768)
      {
        v22 = -32768;
      }

      else
      {
        v22 = v21;
      }

      if (v19 <= 0x8000)
      {
        v23 = 0x8000;
      }

      else
      {
        v23 = v19;
      }

      v24 = v23 - 0x8000;
      if (v24 >= v14)
      {
        v24 = v14;
      }

      if (v17 >= v15 - 0x8000)
      {
        v25 = v15 - 0x8000;
      }

      else
      {
        v25 = v17;
      }

      if (v25 <= -32768)
      {
        v25 = -32768;
      }

      if (v17 <= 0x8000)
      {
        v26 = 0x8000;
      }

      else
      {
        v26 = v17;
      }

      v27 = v26 - 0x8000;
      v28 = v25 + 0x8000;
      if (v27 >= v15)
      {
        v29 = v15;
      }

      else
      {
        v29 = v27;
      }

      v30 = v12 + v13 * (v29 >> 16);
      v31 = v12 + v13 * HIWORD(v28);
      v32 = (v24 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v33 = ((v22 + 0x8000) >> 15) & 0x1FFFE;
      a11.i16[0] = *(v30 + v32);
      a11.i16[2] = *(v30 + v33);
      v34 = vshr_n_u32(vand_s8(a11, 0xFFFF0000FFFFLL), 1uLL);
      v11.i16[0] = *(v31 + v32);
      v11.i16[2] = *(v31 + v33);
      v35 = vshr_n_u32(vand_s8(v11, 0xFFFF0000FFFFLL), 1uLL);
      v36 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v34, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v34, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(a11, 8uLL), 0xF8000000F80000));
      v37 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v35, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v35, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v11, 8uLL), 0xF8000000F80000));
      v11 = vand_s8(vshr_n_u32(v37, 3uLL), v20);
      v38 = *&vorr_s8(v36, vand_s8(vshr_n_u32(v36, 3uLL), v20)) | 0xFF000000FF000000;
      v39 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(v37, v11) | 0xFF000000FF000000), v38), vdupq_n_s16((v29 >> 1) & 0x7F80)), v38);
      a11 = vuzp1_s8(vadd_s16(*v39.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v39, v39, 8uLL), *v39.i8), vdup_n_s16((v24 >> 1) & 0x7F80))), 0xFFFF0000FFFFLL);
      v19 += v18;
      v17 += v16;
      *a3++ = a11.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v6 = result[14];
    v7 = result[15];
    v8 = result[13];
    v9 = *(*result + 32);
    v10 = *(*result + 36);
    v11 = *(*result + 16);
    v12 = **result;
    if (v7 >= v10 - 0x8000)
    {
      v13 = v10 - 0x8000;
    }

    else
    {
      v13 = result[15];
    }

    if (v13 <= -32768)
    {
      v13 = -32768;
    }

    if (v7 <= 0x8000)
    {
      v7 = 0x8000;
    }

    v14 = v7 - 0x8000;
    if (v14 >= v10)
    {
      v15 = *(*result + 36);
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 + v11 * (v15 >> 16);
    v17 = v12 + v11 * ((v13 + 0x8000) >> 16);
    a4.i32[0] = (v15 >> 1) & 0x7F80;
    v18 = vdup_n_s32(0x70707u);
    do
    {
      if (v8 >= v9 - 0x8000)
      {
        v19 = v9 - 0x8000;
      }

      else
      {
        v19 = v8;
      }

      if (v19 <= -32768)
      {
        v19 = -32768;
      }

      v20 = v19 + 0x8000;
      if (v8 <= 0x8000)
      {
        v21 = 0x8000;
      }

      else
      {
        v21 = v8;
      }

      v22 = v21 - 0x8000;
      if (v22 >= v9)
      {
        v22 = v9;
      }

      v23 = (v22 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v24 = (v16 + v23);
      v25 = (v20 >> 15) & 0x1FFFE;
      result = (v17 + v23);
      v4.i16[0] = *v24;
      v4.i16[2] = *(v16 + v25);
      v26 = vshr_n_u32(vand_s8(v4, 0xFFFF0000FFFFLL), 1uLL);
      v5.i16[0] = *result;
      v5.i16[2] = *(v17 + v25);
      v27 = vshr_n_u32(vand_s8(v5, 0xFFFF0000FFFFLL), 1uLL);
      v28 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v26, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v26, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v4, 8uLL), 0xF8000000F80000));
      v5 = vshl_n_s32(v5, 8uLL);
      v29 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v27, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v27, 0x600000003), 0xF800000000F8)), vand_s8(v5, 0xF8000000F80000));
      v30 = *&vorr_s8(v28, vand_s8(vshr_n_u32(v28, 3uLL), v18)) | 0xFF000000FF000000;
      v31 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(v29, vand_s8(vshr_n_u32(v29, 3uLL), v18)) | 0xFF000000FF000000), v30), a4, 0), v30);
      v4 = vuzp1_s8(vadd_s16(*v31.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v31, v31, 8uLL), *v31.i8), vdup_n_s16((v22 >> 1) & 0x7F80))), a4);
      v8 += v6;
      *a3++ = v4.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = **result;
    v5 = *(*result + 16);
    v6 = result[16];
    v8 = result[13];
    v7 = result[14];
    v9 = result[15] - 0x8000;
    v10 = vdup_n_s32(0x70707u);
    do
    {
      v11 = vadd_s32(vdup_n_s32(v8), 0x8000FFFF8000);
      v12 = v4 + v5 * (v9 >> 16);
      v13 = *&vshr_n_s32(v11, 0xFuLL) & 0xFFFFFFFEFFFFFFFELL;
      v14 = v4 + v5 * ((v9 + 0x10000) >> 16);
      result = (v12 + v13);
      v15 = (v14 + v13);
      v16 = (v14 + SHIDWORD(v13));
      LOWORD(v13) = *result;
      WORD2(v13) = *(v12 + SHIDWORD(v13));
      v17 = vshr_n_u32(vand_s8(v13, 0xFFFF0000FFFFLL), 1uLL);
      v3.i16[0] = *v15;
      v3.i16[2] = *v16;
      v18 = vshr_n_u32(vand_s8(v3, 0xFFFF0000FFFFLL), 1uLL);
      v19 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v17, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v17, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v13, 8uLL), 0xF8000000F80000));
      v3 = vand_s8(vshl_n_s32(v3, 8uLL), 0xF8000000F80000);
      v20 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v18, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v18, 0x600000003), 0xF800000000F8)), v3);
      v21 = *&vorr_s8(v19, vand_s8(vshr_n_u32(v19, 3uLL), v10)) | 0xFF000000FF000000;
      v22 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(v20, vand_s8(vshr_n_u32(v20, 3uLL), v10)) | 0xFF000000FF000000), v21), vdupq_n_s16((v9 >> 1) & 0x7F80)), v21);
      v8 += v7;
      *a3++ = vuzp1_s8(vadd_s16(*v22.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v22, v22, 8uLL), *v22.i8), vdup_n_s16((v11.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v9 += v6;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v5 = result[14];
    v6 = result[15];
    v7 = result[13];
    v8 = *(*result + 16);
    v9 = **result;
    v10 = v6 + 0x8000;
    v11 = v6 - 0x8000;
    v12 = v9 + v8 * ((v6 - 0x8000) >> 16);
    v13 = v9 + v8 * (v10 >> 16);
    a4.i32[0] = (v11 >> 1) & 0x7F80;
    v14 = vdup_n_s32(0x70707u);
    do
    {
      v15 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v16 = *&vshr_n_s32(v15, 0xFuLL) & 0xFFFFFFFEFFFFFFFELL;
      v17 = (v13 + v16);
      LOWORD(v16) = *(v12 + v16);
      v18 = (v13 + SHIDWORD(v16));
      WORD2(v16) = *(v12 + SHIDWORD(v16));
      v19 = vshr_n_u32(vand_s8(v16, 0xFFFF0000FFFFLL), 1uLL);
      v4.i16[0] = *v17;
      v4.i16[2] = *v18;
      v20 = vshr_n_u32(vand_s8(v4, 0xFFFF0000FFFFLL), 1uLL);
      v21 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v19, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v19, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v16, 8uLL), 0xF8000000F80000));
      v4 = vand_s8(vshl_n_s32(v4, 8uLL), 0xF8000000F80000);
      v22 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v20, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v20, 0x600000003), 0xF800000000F8)), v4);
      v23 = *&vorr_s8(v21, vand_s8(vshr_n_u32(v21, 3uLL), v14)) | 0xFF000000FF000000;
      v24 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(v22, vand_s8(vshr_n_u32(v22, 3uLL), v14)) | 0xFF000000FF000000), v23), a4, 0), v23);
      v7 += v5;
      *a3++ = vuzp1_s8(vadd_s16(*v24.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v24, v24, 8uLL), *v24.i8), vdup_n_s16((v15.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v41 = v12;
    v40 = v8;
    v39 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v39;
          v12 = v41;
          v8 = v40;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v37 = *(v7 + v8 * (v36 >> 16) + ((v35 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v38 = (32 * v37) & 0xF800 | (8 * ((v37 >> 1) & 0x1F)) & 0xFF07FFFF | (v37 >> 11 << 19);
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = v38 | (v38 >> 3) & 0x7070707 | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = *(v3 + v4 * (v12 >> 16) + ((v11 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      result = (v13 >> 1);
      v14 = (32 * v13) & 0xF800 | (8 * (result & 0x1F)) | (v13 >> 11 << 19);
      v10 += v9;
      v8 += v7;
      *a3++ = v14 | (v14 >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v9 = *(v7 + ((v8 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v10 = (32 * v9) & 0xF800 | (8 * ((v9 >> 1) & 0x1F)) & 0xFF07FFFF | (v9 >> 11 << 19);
      v4 += v3;
      *a3++ = v10 | (v10 >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = *(v3 + v4 * (v6 >> 16) + ((v8 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v10 = (32 * v9) & 0xF800 | (8 * ((v9 >> 1) & 0x1F)) & 0xFF07FFFF | (v9 >> 11 << 19);
      v8 += v7;
      v6 += v5;
      *a3++ = v10 | (v10 >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA5,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = *(v5 + ((v4 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v7 = (32 * v6) & 0xF800 | (8 * ((v6 >> 1) & 0x1F)) & 0xFF07FFFF | (v6 >> 11 << 19);
      v4 += v3;
      *a3++ = v7 | (v7 >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LX8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x10101u);
    v20 = vdup_n_s32(0x37800000u);
    v21 = vdup_n_s32(0x3F7FFFFFu);
    v22 = vdup_n_s32(0x47800000u);
    v54 = v8;
    v55 = v11;
    v53 = v15;
    v52 = result;
    do
    {
      *v23.i32 = (1.0 / v12) * v16;
      *&v23.i32[1] = (1.0 / v12) * v14;
      v24 = vcvt_s32_f32(v23);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v24), vmul_f32(v20, *(v5 + 10)));
          v23 = *(result + 84);
          v29 = vmul_f32(vmla_f32(*(result + 92), v23, vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v21)), vmul_f32(v22, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v30 = vcvt_f32_s32(v24);
          v31 = vcvt_f32_s32(*(v5 + 8));
          v23 = vmul_f32(*(result + 84), v31);
          v32 = vmul_f32(*(result + 92), v31);
          v33 = vbsl_s8(vcgt_f32(v30, v32), v32, v30);
          v29 = vbsl_s8(vcgt_f32(v23, v33), v23, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v24));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v23 = vcvt_f32_u32(*(v5 + 6));
          v35.i32[1] = 0.5;
          v29 = vmul_f32(v35, v23);
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v25 = v7;
          v26 = v13;
          v27 = atan2f(v5[11] * v24.i32[1], v5[10] * v24.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v53;
          v8 = v54;
          v13 = v26;
          v11 = v55;
          v7 = v25;
          result = v52;
          v23 = vcvt_f32_u32(*(v5 + 6));
          v28.i32[1] = 1056964608;
          v28.f32[0] = (v27 * -10430.0) + 32768.0;
          v29 = vmul_f32(v28, v23);
LABEL_12:
          v24 = vcvt_s32_f32(v29);
        }
      }

      v38 = v24.i32[0];
      if (v24.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v24.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v24.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      v42 = v24.i32[1];
      if (v41 >= v8)
      {
        v41 = v8;
      }

      if (v24.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v24.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v24.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v49 = (v40 >> 15) & 0x1FFFE;
      v24.i8[0] = *(v46 + v48);
      v24.i8[4] = *(v46 + v49);
      v23.i8[0] = *(v47 + v48);
      v23.i8[4] = *(v47 + v49);
      v50 = *&vmul_s32(vand_s8(v24, 0xFF000000FFLL), v19) | 0xFF000000FF000000;
      v51 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vmul_s32(vand_s8(v23, 0xFF000000FFLL), v19) | 0xFF000000FF000000), v50), vdupq_n_s16((v45 >> 1) & 0x7F80)), v50);
      *v51.i8 = vadd_s16(*v51.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v51, v51, 8uLL), *v51.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v51.i8, *v51.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LX8,unsigned int,true,true,false,true>(int *result, int a2, _DWORD *a3, double a4, double a5, int8x8_t a6, int16x4_t a7)
{
  if (a2)
  {
    v7 = **result;
    v8 = *(*result + 16);
    v9 = *(*result + 32);
    v10 = *(*result + 36);
    v12 = result[15];
    v11 = result[16];
    v14 = result[13];
    v13 = result[14];
    result = 4294934528;
    v15 = vdup_n_s32(0x10101u);
    do
    {
      if (v14 >= v9 - 0x8000)
      {
        v16 = v9 - 0x8000;
      }

      else
      {
        v16 = v14;
      }

      if (v16 <= -32768)
      {
        v17 = -32768;
      }

      else
      {
        v17 = v16;
      }

      if (v14 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v14;
      }

      v19 = v18 - 0x8000;
      if (v19 >= v9)
      {
        v19 = v9;
      }

      if (v12 >= v10 - 0x8000)
      {
        v20 = v10 - 0x8000;
      }

      else
      {
        v20 = v12;
      }

      if (v20 <= -32768)
      {
        v20 = -32768;
      }

      v21 = v20 + 0x8000;
      if (v12 <= 0x8000)
      {
        v22 = 0x8000;
      }

      else
      {
        v22 = v12;
      }

      v23 = v22 - 0x8000;
      if (v23 >= v10)
      {
        v23 = v10;
      }

      v24 = v7 + v8 * (v23 >> 16);
      v25 = v7 + v8 * HIWORD(v21);
      v26 = (v19 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v27 = ((v17 + 0x8000) >> 15) & 0x1FFFE;
      a6.i8[0] = *(v24 + v26);
      a7.i8[0] = *(v25 + v26);
      a6.i8[4] = *(v24 + v27);
      a7.i8[4] = *(v25 + v27);
      v28 = *&vmul_s32(vand_s8(a6, 0xFF000000FFLL), v15) | 0xFF000000FF000000;
      v29 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vmul_s32(vand_s8(a7, 0xFF000000FFLL), v15) | 0xFF000000FF000000), v28), vdupq_n_s16((v23 >> 1) & 0x7F80)), v28);
      a7 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v29, v29, 8uLL), *v29.i8), vdup_n_s16((v19 >> 1) & 0x7F80));
      a6 = vuzp1_s8(vadd_s16(*v29.i8, a7), 0xFF000000FFLL);
      v14 += v13;
      v12 += v11;
      *a3++ = a6.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LX8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (65793 * *(v7 + v8 * (v36 >> 16) + ((v35 >> 15) & 0xFFFFFFFFFFFFFFFELL))) | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LX8,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      result = (v3 + v4 * (v12 >> 16));
      v10 += v9;
      v8 += v7;
      *a3++ = (65793 * *(result + ((v11 >> 15) & 0xFFFFFFFFFFFFFFFELL))) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v58 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v61 = v8;
    v62 = v11;
    v60 = v15;
    v59 = result;
    do
    {
      *v21.i32 = (1.0 / v12) * v16;
      *&v21.i32[1] = (1.0 / v12) * v14;
      v22 = vcvt_s32_f32(v21);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v35 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v58, *(v5 + 10)));
          v21 = *(result + 84);
          v27 = vmul_f32(vmla_f32(*(result + 92), v21, vminnm_f32(vsub_f32(v35, vrndm_f32(v35)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v28 = vcvt_f32_s32(v22);
          v29 = vcvt_f32_s32(*(v5 + 8));
          v21 = vmul_f32(*(result + 84), v29);
          v30 = vmul_f32(*(result + 92), v29);
          v31 = vbsl_s8(vcgt_f32(v28, v30), v30, v28);
          v27 = vbsl_s8(vcgt_f32(v21, v31), v21, v31);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v32 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v22));
          v33 = vmul_f32(v32, v32);
          v34 = vadd_f32(vdup_lane_s32(v33, 1), v33);
          *v33.i32 = fmaxf(vaddv_f32(v33), 0.00001);
          v33.i32[0] = vmul_f32(v34, vrsqrte_f32(vdup_lane_s32(v33, 0))).u32[0];
          v21 = vcvt_f32_u32(*(v5 + 6));
          v33.i32[1] = 0.5;
          v27 = vmul_f32(v33, v21);
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v23 = v7;
          v24 = v13;
          v25 = atan2f(v5[11] * v22.i32[1], v5[10] * v22.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v60;
          v8 = v61;
          v13 = v24;
          v11 = v62;
          v7 = v23;
          result = v59;
          v21 = vcvt_f32_u32(*(v5 + 6));
          v26.i32[1] = 1056964608;
          v26.f32[0] = (v25 * -10430.0) + 32768.0;
          v27 = vmul_f32(v26, v21);
LABEL_12:
          v22 = vcvt_s32_f32(v27);
        }
      }

      v36 = v22.i32[0];
      if (v22.i32[0] >= v17)
      {
        v37 = v17;
      }

      else
      {
        v37 = v22.i32[0];
      }

      if (v37 <= -32768)
      {
        v37 = -32768;
      }

      v38 = v37 + 0x8000;
      if (v22.i32[0] <= 0x8000)
      {
        v36 = 0x8000;
      }

      v39 = v36 - 0x8000;
      if (v39 >= v8)
      {
        v39 = v8;
      }

      v40 = v22.i32[1];
      if (v22.i32[1] >= v18)
      {
        v41 = v18;
      }

      else
      {
        v41 = v22.i32[1];
      }

      if (v41 <= -32768)
      {
        v41 = -32768;
      }

      v42 = v41 + 0x8000;
      if (v22.i32[1] <= 0x8000)
      {
        v40 = 0x8000;
      }

      v43 = v40 - 0x8000;
      if (v43 >= v9)
      {
        v43 = v9;
      }

      v44 = v6 + v7 * (v43 >> 16);
      v45 = v6 + v7 * HIWORD(v42);
      v46 = (v39 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v47 = (v44 + v46);
      v48 = (v45 + v46);
      v49 = (v38 >> 15) & 0x1FFFE;
      v50 = (v44 + v49);
      v51 = (v45 + v49);
      v22.i8[0] = *v47;
      v22.i8[4] = *v50;
      v52 = vand_s8(v22, 0xFF000000FFLL);
      v21.i8[0] = v47[1];
      v21.i8[4] = v50[1];
      v53 = vshl_n_s32(v21, 0x18uLL);
      v54 = vorr_s8(vshl_u32(v52, 0x800000010), vshl_u32(v52, 0x1000000008));
      v55 = vorr_s8(v54, vorr_s8(v53, v52));
      v53.i8[0] = *v48;
      v53.i8[4] = *v51;
      v54.i8[0] = v48[1];
      v54.i8[4] = v51[1];
      v56 = vand_s8(v53, 0xFF000000FFLL);
      v57 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vorr_s8(vshl_u32(v56, 0x800000010), vshl_u32(v56, 0x1000000008)), vorr_s8(vshl_n_s32(v54, 0x18uLL), v56)), v55), vdupq_n_s16((v43 >> 1) & 0x7F80)), v55);
      *v57.i8 = vadd_s16(*v57.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v57, v57, 8uLL), *v57.i8), vdup_n_s16((v39 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v57.i8, *v57.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA8,unsigned int,true,true,false,true>(int *result, int a2, _DWORD *a3, double a4, double a5, double a6, int8x8_t a7, int16x4_t a8, int16x4_t a9)
{
  if (a2)
  {
    v9 = **result;
    v10 = *(*result + 16);
    v11 = *(*result + 32);
    v12 = *(*result + 36);
    v14 = result[15];
    v13 = result[16];
    v16 = result[13];
    v15 = result[14];
    result = 4294934528;
    do
    {
      if (v16 >= v11 - 0x8000)
      {
        v17 = v11 - 0x8000;
      }

      else
      {
        v17 = v16;
      }

      if (v17 <= -32768)
      {
        v17 = -32768;
      }

      v18 = v17 + 0x8000;
      if (v16 <= 0x8000)
      {
        v19 = 0x8000;
      }

      else
      {
        v19 = v16;
      }

      v20 = v19 - 0x8000;
      if (v20 >= v11)
      {
        v20 = v11;
      }

      if (v14 >= v12 - 0x8000)
      {
        v21 = v12 - 0x8000;
      }

      else
      {
        v21 = v14;
      }

      if (v21 <= -32768)
      {
        v21 = -32768;
      }

      v22 = v21 + 0x8000;
      if (v14 <= 0x8000)
      {
        v23 = 0x8000;
      }

      else
      {
        v23 = v14;
      }

      v24 = v23 - 0x8000;
      if (v24 >= v12)
      {
        v24 = v12;
      }

      v25 = v9 + v10 * (v24 >> 16);
      v26 = v9 + v10 * HIWORD(v22);
      v27 = (v20 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v28 = (v26 + v27);
      v29 = (v25 + v27);
      v30 = (v18 >> 15) & 0x1FFFE;
      v31 = (v25 + v30);
      v32 = (v26 + v30);
      a7.i8[0] = *v29;
      a8.i8[0] = v29[1];
      a7.i8[4] = *v31;
      a9.i8[0] = *v28;
      a8.i8[4] = v31[1];
      a9.i8[4] = *v32;
      v33 = vand_s8(a9, 0xFF000000FFLL);
      v34 = vshl_u32(v33, 0x1000000008);
      v35 = vand_s8(a7, 0xFF000000FFLL);
      v36 = vorr_s8(vshl_u32(v33, 0x800000010), v34);
      v34.i8[0] = v28[1];
      v34.i8[4] = v32[1];
      v37 = vorr_s8(vorr_s8(vshl_u32(v35, 0x800000010), vshl_u32(v35, 0x1000000008)), vorr_s8(vshl_n_s32(a8, 0x18uLL), v35));
      v38 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(v36, vorr_s8(vshl_n_s32(v34, 0x18uLL), v33)), v37), vdupq_n_s16((v24 >> 1) & 0x7F80)), v37);
      a9 = vdup_n_s16((v20 >> 1) & 0x7F80);
      a8 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v38, v38, 8uLL), *v38.i8), a9);
      a7 = vuzp1_s8(vadd_s16(*v38.i8, a8), 0xFF000000FFLL);
      v16 += v15;
      v14 += v13;
      *a3++ = a7.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v40 = v12;
    v39 = v8;
    v38 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v38;
          v12 = v40;
          v8 = v39;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v37 = (v7 + v8 * (v36 >> 16) + ((v35 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (*v37 << 8) | (*v37 << 16) | (v37[1] << 24) | *v37;
      --v4;
    }

    while (v4);
  }
}

unint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::LA8,unsigned int,true,true,false,false>(unint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = *(result + 60);
    v7 = *(result + 64);
    v10 = *(result + 52);
    v9 = *(result + 56);
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = (v3 + v4 * (v12 >> 16) + ((v11 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v14 = *v13;
      result = (v14 << 8) | (v14 << 16);
      v10 += v9;
      v8 += v7;
      *a3++ = result | (v13[1] << 24) | v14;
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBXh,unsigned int,true,true,true,true>(uint64_t **result, int a2, unsigned __int8 *a3)
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v53 = (*result)[2];
    v54 = **result;
    v47 = *result;
    v5 = *(result[3] + 3);
    v6 = *(result + 48);
    v7 = *(result[2] + 3);
    v8 = *(result + 15);
    v9 = *(result + 13);
    v48 = *(result + 14);
    v49 = *(result + 16);
    v51 = *(*result + 9);
    v52 = *(*result + 8);
    v10 = vdup_n_s32(0x37800000u);
    v11 = vdup_n_s32(0x3F7FFFFFu);
    v12 = vdup_n_s32(0x47800000u);
    v50 = v6;
    do
    {
      v13.f32[0] = (1.0 / v7) * v9;
      v13.f32[1] = (1.0 / v7) * v8;
      v14 = vcvt_s32_f32(v13);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v26 = vmul_f32(vcvt_f32_s32(v14), vmul_f32(v10, *(v47 + 10)));
          v17 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), v11)), vmul_f32(v12, vcvt_f32_u32(*(v47 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v18 = vcvt_f32_s32(v14);
          v19 = vcvt_f32_s32(*(v47 + 8));
          v20 = vmul_f32(*(result + 84), v19);
          v21 = vmul_f32(*(result + 92), v19);
          v22 = vbsl_s8(vcgt_f32(v18, v21), v21, v18);
          v17 = vbsl_s8(vcgt_f32(v20, v22), v20, v22);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v23 = vmul_f32(*(v47 + 10), vcvt_f32_s32(v14));
          v24 = vmul_f32(v23, v23);
          v25 = vadd_f32(vdup_lane_s32(v24, 1), v24);
          *v24.i32 = fmaxf(vaddv_f32(v24), 0.00001);
          v24.i32[0] = vmul_f32(v25, vrsqrte_f32(vdup_lane_s32(v24, 0))).u32[0];
          v24.i32[1] = 0.5;
          v17 = vmul_f32(v24, vcvt_f32_u32(*(v47 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v15 = atan2f(v47[11] * v14.i32[1], v47[10] * v14.i32[0]);
          v16.i32[1] = 1056964608;
          v16.f32[0] = (v15 * -10430.0) + 32768.0;
          v17 = vmul_f32(v16, vcvt_f32_u32(*(v47 + 6)));
LABEL_12:
          v14 = vcvt_s32_f32(v17);
        }
      }

      --v4;
      v27 = v14.i32[0];
      v28 = v52 - 0x8000;
      if (v14.i32[0] < v52 - 0x8000)
      {
        v28 = v14.i32[0];
      }

      if (v28 <= -32768)
      {
        v28 = -32768;
      }

      v29 = v28 + 0x8000;
      if (v14.i32[0] <= 0x8000)
      {
        v27 = 0x8000;
      }

      v30 = v27 - 0x8000;
      if (v30 >= v52)
      {
        v31 = v52;
      }

      else
      {
        v31 = v30;
      }

      v32 = v14.i32[1];
      v33 = v51 - 0x8000;
      if (v14.i32[1] < v51 - 0x8000)
      {
        v33 = v14.i32[1];
      }

      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      v34 = v33 + 0x8000;
      if (v14.i32[1] <= 0x8000)
      {
        v32 = 0x8000;
      }

      v35 = v32 - 0x8000;
      if (v35 >= v51)
      {
        v36 = v51;
      }

      else
      {
        v36 = v35;
      }

      v37 = v54 + v53 * (v36 >> 16);
      v38 = v54 + v53 * HIWORD(v34);
      v39 = (v31 >> 13) & 0xFFFFFFF8;
      v40 = (v38 + v39);
      v55 = 0;
      v56[0] = 0;
      v41 = (v29 >> 13) & 0x7FFF8;
      CA::OGL::SW::Format::RGBXh::load_1((v56 + 4), (v37 + v39), a3);
      CA::OGL::SW::Format::RGBXh::load_1(v56, (v37 + v41), v42);
      CA::OGL::SW::Format::RGBXh::load_1((&v55 + 4), v40, v43);
      CA::OGL::SW::Format::RGBXh::load_1(&v55, (v38 + v41), v44);
      v45 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v55, HIDWORD(v55)), __PAIR64__(v56[0], HIDWORD(v56[0]))), vdupq_n_s16((v36 >> 1) & 0x7F80)), __PAIR64__(v56[0], HIDWORD(v56[0])));
      *v45.i8 = vadd_s16(*v45.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v45, v45, 8uLL), *v45.i8), vdup_n_s16((v31 >> 1) & 0x7F80)));
      v7 = v7 + v5;
      v9 += v48;
      v8 += v49;
      *v3 = vuzp1_s8(*v45.i8, *v45.i8).u32[0];
      v3 += 4;
      v6 = v50;
    }

    while (v4);
  }
}

int8x8_t CA::OGL::SW::Format::RGBXh::load_1(CA::OGL::SW::Format::RGBXh *this, unsigned int *a2, const unsigned __int8 *a3)
{
  v16 = CA::HalfFloat::to_float(*a2);
  v15 = CA::HalfFloat::to_float(*(a2 + 1));
  v5 = CA::HalfFloat::to_float(*(a2 + 2));
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  v6 = ((v5 * 255.0) + 0.5);
  __asm { FMOV            V0.2S, #1.0 }

  v12 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v15), LODWORD(v16)), _D0), _D0, __PAIR64__(LODWORD(v15), LODWORD(v16)));
  v13 = vshl_u32(vcvt_u32_f32(vmla_f32(0x3F0000003F000000, vdup_n_s32(0x437F0000u), vbic_s8(v12, vcltz_f32(v12)))), 0x800000010);
  result = vorr_s8(v13, vdup_lane_s32(v13, 1));
  *this = result.i32[0] | v6 | 0xFF000000;
  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBXh,unsigned int,true,true,false,true>(int *a1, int a2, unsigned __int8 *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v31 = *(*a1 + 16);
    v32 = **a1;
    v5 = a1[15];
    v29 = *(*a1 + 36);
    v30 = *(*a1 + 32);
    v28 = a1[16];
    v6 = a1[13];
    v27 = a1[14];
    do
    {
      --v4;
      v7 = v30 - 0x8000;
      if (v6 < v30 - 0x8000)
      {
        v7 = v6;
      }

      if (v7 <= -32768)
      {
        v7 = -32768;
      }

      v8 = v7 + 0x8000;
      if (v6 <= 0x8000)
      {
        v9 = 0x8000;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 0x8000;
      if (v10 >= v30)
      {
        v11 = v30;
      }

      else
      {
        v11 = v10;
      }

      v12 = v29 - 0x8000;
      if (v5 < v29 - 0x8000)
      {
        v12 = v5;
      }

      if (v12 <= -32768)
      {
        v12 = -32768;
      }

      v13 = v12 + 0x8000;
      if (v5 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v5;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v29)
      {
        v16 = v29;
      }

      else
      {
        v16 = v15;
      }

      v17 = v32 + v31 * (v16 >> 16);
      v18 = v32 + v31 * HIWORD(v13);
      v19 = (v11 >> 13) & 0xFFFFFFF8;
      v20 = (v18 + v19);
      v33 = 0;
      v34[0] = 0;
      v21 = (v8 >> 13) & 0x7FFF8;
      CA::OGL::SW::Format::RGBXh::load_1((v34 + 4), (v17 + v19), a3);
      CA::OGL::SW::Format::RGBXh::load_1(v34, (v17 + v21), v22);
      CA::OGL::SW::Format::RGBXh::load_1((&v33 + 4), v20, v23);
      CA::OGL::SW::Format::RGBXh::load_1(&v33, (v18 + v21), v24);
      v25 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v33, HIDWORD(v33)), __PAIR64__(v34[0], HIDWORD(v34[0]))), vdupq_n_s16((v16 >> 1) & 0x7F80)), __PAIR64__(v34[0], HIDWORD(v34[0])));
      *v25.i8 = vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v11 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v25.i8, *v25.i8);
      v6 += v27;
      v5 += v28;
      *v3 = result.i32[0];
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBXh,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned __int8 *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = *a1;
    v35 = (*a1)[2];
    v36 = **a1;
    v6 = *(*a1 + 8);
    v7 = *(*a1 + 9);
    v8 = *(a1[3] + 3);
    v9 = *(a1 + 48);
    v10 = *(a1[2] + 3);
    v11 = *(a1 + 15);
    v12 = *(a1 + 16);
    v13 = *(a1 + 13);
    v14 = *(a1 + 14);
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v37 = 0;
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      CA::OGL::SW::Format::RGBXh::load_1(&v37, (v36 + v35 * (v33 >> 16) + ((v32 >> 13) & 0xFFFFFFF8)), a3);
      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *v3 = v37;
      v3 += 4;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBXh,unsigned int,true,true,false,false>(int *a1, int a2, unsigned __int8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = a1[15];
    v9 = a1[16];
    v12 = a1[13];
    v11 = a1[14];
    do
    {
      --v4;
      v15 = 0;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      CA::OGL::SW::Format::RGBXh::load_1(&v15, (v5 + v6 * (v14 >> 16) + ((v13 >> 13) & 0xFFFFFFF8)), a3);
      v12 += v11;
      v10 += v9;
      *v3 = v15;
      v3 += 4;
    }

    while (v4);
  }
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v56 = v8;
    v57 = v11;
    v55 = v15;
    v54 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v55;
          v8 = v56;
          v13 = v25;
          v11 = v57;
          v7 = v24;
          result = v54;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      if (v41 >= v8)
      {
        v41 = v8;
      }

      v42 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = (v40 >> 14) & 0x3FFFC;
      v50.i32[0] = *(v46 + v48);
      v50.i32[1] = *(v46 + v49);
      v51.i32[0] = *(v47 + v48);
      v51.i32[1] = *(v47 + v49);
      v52 = *&vshr_n_u32(v50, 8uLL) | 0xFF000000FF000000;
      v53 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vshr_n_u32(v51, 8uLL) | 0xFF000000FF000000), v52), vdupq_n_s16((v45 >> 1) & 0x7F80)), v52);
      *v53.i8 = vadd_s16(*v53.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v53, v53, 8uLL), *v53.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v11 = -32768;
      }

      v12 = v11 + 0x8000;
      if (v10 <= 0x8000)
      {
        v13 = 0x8000;
      }

      else
      {
        v13 = v10;
      }

      v14 = v13 - 0x8000;
      if (v14 >= v5)
      {
        v14 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v15 = v6 - 0x8000;
      }

      else
      {
        v15 = v8;
      }

      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      v16 = v15 + 0x8000;
      if (v8 <= 0x8000)
      {
        v17 = 0x8000;
      }

      else
      {
        v17 = v8;
      }

      v18 = v17 - 0x8000;
      if (v18 >= v6)
      {
        v18 = v6;
      }

      v19 = v3 + v4 * (v18 >> 16);
      v20 = v3 + v4 * HIWORD(v16);
      v21 = (v12 >> 14) & 0x3FFFC;
      v22 = (v14 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v23.i32[0] = *(v19 + v22);
      v23.i32[1] = *(v19 + v21);
      v24.i32[0] = *(v20 + v22);
      v24.i32[1] = *(v20 + v21);
      v25 = *&vshr_n_u32(v23, 8uLL) | 0xFF000000FF000000;
      v26 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vshr_n_u32(v24, 8uLL) | 0xFF000000FF000000), v25), vdupq_n_s16((v18 >> 1) & 0x7F80)), v25);
      *v26.i8 = vadd_s16(*v26.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v14 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v26.i8, *v26.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = result[15];
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v16 = v7 - 0x8000;
      }

      else
      {
        v16 = v6;
      }

      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      v17 = v16 + 0x8000;
      if (v6 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v6;
      }

      v19 = v18 - 0x8000;
      if (v19 >= v7)
      {
        v19 = v7;
      }

      v20 = (v17 >> 14) & 0x3FFFC;
      result = ((v19 >> 14) & 0xFFFFFFFFFFFFFFFCLL);
      v21.i32[0] = *(result + v14);
      v21.i32[1] = *(v14 + v20);
      v22.i32[0] = *(result + v15);
      v22.i32[1] = *(v15 + v20);
      v23 = *&vshr_n_u32(v21, 8uLL) | 0xFF000000FF000000;
      v24 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vshr_n_u32(v22, 8uLL) | 0xFF000000FF000000), v23), a4, 0), v23);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v24.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v24, v24, 8uLL), *v24.i8), vdup_n_s16((v19 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = result[16];
    v7 = result[13];
    v6 = result[14];
    v8 = result[15] - 0x8000;
    do
    {
      v9 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v10 = v3 + v4 * (v8 >> 16);
      v11 = vshr_n_s32(v9, 0xEuLL);
      v12 = v3 + v4 * ((v8 + 0x10000) >> 16);
      v13 = (v12 + (v11.i32[1] & 0xFFFFFFFC));
      result = (v11.i32[0] & 0xFFFFFFFC);
      v11.i32[0] = *(v10 + result);
      v14.i32[0] = *(v12 + result);
      v11.i32[1] = *(v10 + (v11.i32[1] & 0xFFFFFFFC));
      v14.i32[1] = *v13;
      v15 = *&vshr_n_u32(v11, 8uLL) | 0xFF000000FF000000;
      v16 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vshr_n_u32(v14, 8uLL) | 0xFF000000FF000000), v15), vdupq_n_s16((v8 >> 1) & 0x7F80)), v15);
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v16.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v16, v16, 8uLL), *v16.i8), vdup_n_s16((v9.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v14 = vshr_n_s32(v13, 0xEuLL);
      v15 = v14.i32[0] & 0xFFFFFFFC;
      v14.i32[0] = *(v11 + (v14.i32[0] & 0xFFFFFFFC));
      v16 = (v12 + (v14.i32[1] & 0xFFFFFFFC));
      v14.i32[1] = *(v11 + (v14.i32[1] & 0xFFFFFFFC));
      v17.i32[0] = *(v12 + v15);
      v17.i32[1] = *v16;
      v18 = *&vshr_n_u32(v14, 8uLL) | 0xFF000000FF000000;
      v19 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vshr_n_u32(v17, 8uLL) | 0xFF000000FF000000), v18), a4, 0), v18);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v19.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v19, v19, 8uLL), *v19.i8), vdup_n_s16((v13.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (*(v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) >> 8) | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = (*(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) >> 8) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v4 += v3;
      *a3++ = (*(v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) >> 8) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = (*(v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) >> 8) | 0xFF000000;
      v8 += v7;
      v6 += v5;
      *a3++ = v9;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XBGR8,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = (*(v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) >> 8) | 0xFF000000;
      v4 += v3;
      *a3++ = v6;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v56 = v8;
    v57 = v11;
    v55 = v15;
    v54 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v55;
          v8 = v56;
          v13 = v25;
          v11 = v57;
          v7 = v24;
          result = v54;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      if (v41 >= v8)
      {
        v41 = v8;
      }

      v42 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = (v40 >> 14) & 0x3FFFC;
      HIDWORD(v51) = *(v46 + v48);
      LODWORD(v51) = HIDWORD(v51);
      v50 = v51 >> 8;
      HIDWORD(v51) = *(v46 + v49);
      LODWORD(v51) = HIDWORD(v51);
      LODWORD(v46) = v51 >> 8;
      HIDWORD(v51) = *(v47 + v48);
      LODWORD(v51) = HIDWORD(v51);
      LODWORD(v48) = v51 >> 8;
      HIDWORD(v51) = *(v47 + v49);
      LODWORD(v51) = HIDWORD(v51);
      v52.i32[0] = v48;
      v52.i32[1] = v51 >> 8;
      v53 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v52, __PAIR64__(v46, v50)), vdupq_n_s16((v45 >> 1) & 0x7F80)), __PAIR64__(v46, v50));
      *v53.i8 = vadd_s16(*v53.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v53, v53, 8uLL), *v53.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v11 = -32768;
      }

      if (v10 <= 0x8000)
      {
        v12 = 0x8000;
      }

      else
      {
        v12 = v10;
      }

      v13 = v12 - 0x8000;
      if (v13 >= v5)
      {
        v13 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v14 = v6 - 0x8000;
      }

      else
      {
        v14 = v8;
      }

      if (v14 <= -32768)
      {
        v14 = -32768;
      }

      if (v8 <= 0x8000)
      {
        v15 = 0x8000;
      }

      else
      {
        v15 = v8;
      }

      v16 = v15 - 0x8000;
      v17 = v14 + 0x8000;
      if (v16 >= v6)
      {
        v16 = v6;
      }

      v18 = v3 + v4 * (v16 >> 16);
      v19 = v3 + v4 * HIWORD(v17);
      v20 = (v13 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v21 = ((v11 + 0x8000) >> 14) & 0x3FFFC;
      v22 = *(v18 + v20);
      LODWORD(v18) = *(v18 + v21);
      HIDWORD(v24) = v22;
      LODWORD(v24) = v22;
      v23 = v24 >> 8;
      HIDWORD(v24) = *(v19 + v20);
      LODWORD(v24) = HIDWORD(v24);
      LODWORD(v20) = v24 >> 8;
      LODWORD(v21) = *(v19 + v21);
      HIDWORD(v24) = v18;
      LODWORD(v24) = v18;
      LODWORD(v19) = v24 >> 8;
      HIDWORD(v24) = v21;
      LODWORD(v24) = v21;
      v25.i32[0] = v20;
      v25.i32[1] = v24 >> 8;
      v26 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v25, __PAIR64__(v19, v23)), vdupq_n_s16((v16 >> 1) & 0x7F80)), __PAIR64__(v19, v23));
      *v26.i8 = vadd_s16(*v26.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v13 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v26.i8, *v26.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,false,true,false,true>(unint64_t result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = *(result + 56);
    v5 = *(result + 60);
    v6 = *(result + 52);
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = *(result + 60);
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v16 = v7 - 0x8000;
      }

      else
      {
        v16 = v6;
      }

      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      v17 = v16 + 0x8000;
      if (v6 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v6;
      }

      v19 = v18 - 0x8000;
      if (v19 >= v7)
      {
        v19 = v7;
      }

      v20 = (v19 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v21 = (v17 >> 14) & 0x3FFFC;
      HIDWORD(v23) = *(v14 + v21);
      LODWORD(v23) = HIDWORD(v23);
      v22 = v23 >> 8;
      HIDWORD(v23) = *(v14 + v20);
      LODWORD(v23) = HIDWORD(v23);
      v24 = v23 >> 8;
      HIDWORD(v23) = *(v15 + v20);
      LODWORD(v23) = HIDWORD(v23);
      result = (v23 >> 8);
      HIDWORD(v23) = *(v15 + v21);
      LODWORD(v23) = HIDWORD(v23);
      v25.i32[0] = result;
      v25.i32[1] = v23 >> 8;
      v26 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v25, __PAIR64__(v22, v24)), a4, 0), __PAIR64__(v22, v24));
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v26.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v19 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,true,false,false,true>(unint64_t result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(result + 64);
    v7 = *(result + 52);
    v6 = *(result + 56);
    v8 = *(result + 60) - 0x8000;
    do
    {
      v9 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v10 = v3 + v4 * (v8 >> 16);
      v11 = vshr_n_s32(v9, 0xEuLL);
      v12 = v3 + v4 * ((v8 + 0x10000) >> 16);
      HIDWORD(v13) = *(v10 + (v11.i32[0] & 0xFFFFFFFC));
      LODWORD(v13) = HIDWORD(v13);
      result = (v13 >> 8);
      HIDWORD(v13) = *(v10 + (v11.i32[1] & 0xFFFFFFFC));
      LODWORD(v13) = HIDWORD(v13);
      LODWORD(v10) = v13 >> 8;
      HIDWORD(v13) = *(v12 + (v11.i32[0] & 0xFFFFFFFC));
      LODWORD(v13) = HIDWORD(v13);
      v14 = v13 >> 8;
      HIDWORD(v13) = *(v12 + (v11.i32[1] & 0xFFFFFFFC));
      LODWORD(v13) = HIDWORD(v13);
      v15.i32[0] = v14;
      v15.i32[1] = v13 >> 8;
      v16 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v15, __PAIR64__(v10, result)), vdupq_n_s16((v8 >> 1) & 0x7F80)), __PAIR64__(v10, result));
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v16.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v16, v16, 8uLL), *v16.i8), vdup_n_s16((v9.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v14 = vshr_n_s32(v13, 0xEuLL);
      HIDWORD(v16) = *(v11 + (v14.i32[0] & 0xFFFFFFFC));
      LODWORD(v16) = HIDWORD(v16);
      v15 = v16 >> 8;
      HIDWORD(v16) = *(v12 + (v14.i32[0] & 0xFFFFFFFC));
      LODWORD(v16) = HIDWORD(v16);
      v17 = v16 >> 8;
      HIDWORD(v16) = *(v11 + (v14.i32[1] & 0xFFFFFFFC));
      LODWORD(v16) = HIDWORD(v16);
      v18 = v16 >> 8;
      HIDWORD(v16) = *(v12 + (v14.i32[1] & 0xFFFFFFFC));
      LODWORD(v16) = HIDWORD(v16);
      v19.i32[0] = v17;
      v19.i32[1] = v16 >> 8;
      v20 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v19, __PAIR64__(v18, v15)), a4, 0), __PAIR64__(v18, v15));
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v20.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v20, v20, 8uLL), *v20.i8), vdup_n_s16((v13.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v40 = v12;
    v39 = v8;
    v38 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v38;
          v12 = v40;
          v8 = v39;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      HIDWORD(v37) = *(v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      LODWORD(v37) = HIDWORD(v37);
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = v37 >> 8;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,true,true,false,false>(int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      HIDWORD(v13) = *(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      LODWORD(v13) = HIDWORD(v13);
      v10 += v9;
      v8 += v7;
      *a3++ = v13 >> 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,false,true,false,false>(_DWORD *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      HIDWORD(v9) = *(v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      LODWORD(v9) = HIDWORD(v9);
      v4 += v3;
      *a3++ = v9 >> 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,true,false,false,false>(_DWORD *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      HIDWORD(v9) = *(v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      LODWORD(v9) = HIDWORD(v9);
      v8 += v7;
      v6 += v5;
      *a3++ = v9 >> 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ABGR8,unsigned int,false,false,false,false>(uint64_t result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      HIDWORD(v6) = *(v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      LODWORD(v6) = HIDWORD(v6);
      v4 += v3;
      *a3++ = v6 >> 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAf,unsigned int,true,true,true,true>(uint64_t **result, int a2, unsigned __int8 *a3)
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v53 = (*result)[2];
    v54 = **result;
    v47 = *result;
    v5 = *(result[3] + 3);
    v6 = *(result + 48);
    v7 = *(result[2] + 3);
    v8 = *(result + 15);
    v9 = *(result + 13);
    v48 = *(result + 14);
    v49 = *(result + 16);
    v51 = *(*result + 9);
    v52 = *(*result + 8);
    v10 = vdup_n_s32(0x37800000u);
    v11 = vdup_n_s32(0x3F7FFFFFu);
    v12 = vdup_n_s32(0x47800000u);
    v50 = v6;
    do
    {
      v13.f32[0] = (1.0 / v7) * v9;
      v13.f32[1] = (1.0 / v7) * v8;
      v14 = vcvt_s32_f32(v13);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v26 = vmul_f32(vcvt_f32_s32(v14), vmul_f32(v10, *(v47 + 10)));
          v17 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), v11)), vmul_f32(v12, vcvt_f32_u32(*(v47 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v18 = vcvt_f32_s32(v14);
          v19 = vcvt_f32_s32(*(v47 + 8));
          v20 = vmul_f32(*(result + 84), v19);
          v21 = vmul_f32(*(result + 92), v19);
          v22 = vbsl_s8(vcgt_f32(v18, v21), v21, v18);
          v17 = vbsl_s8(vcgt_f32(v20, v22), v20, v22);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v23 = vmul_f32(*(v47 + 10), vcvt_f32_s32(v14));
          v24 = vmul_f32(v23, v23);
          v25 = vadd_f32(vdup_lane_s32(v24, 1), v24);
          *v24.i32 = fmaxf(vaddv_f32(v24), 0.00001);
          v24.i32[0] = vmul_f32(v25, vrsqrte_f32(vdup_lane_s32(v24, 0))).u32[0];
          v24.i32[1] = 0.5;
          v17 = vmul_f32(v24, vcvt_f32_u32(*(v47 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v15 = atan2f(v47[11] * v14.i32[1], v47[10] * v14.i32[0]);
          v16.i32[1] = 1056964608;
          v16.f32[0] = (v15 * -10430.0) + 32768.0;
          v17 = vmul_f32(v16, vcvt_f32_u32(*(v47 + 6)));
LABEL_12:
          v14 = vcvt_s32_f32(v17);
        }
      }

      --v4;
      v27 = v14.i32[0];
      v28 = v52 - 0x8000;
      if (v14.i32[0] < v52 - 0x8000)
      {
        v28 = v14.i32[0];
      }

      if (v28 <= -32768)
      {
        v28 = -32768;
      }

      v29 = v28 + 0x8000;
      if (v14.i32[0] <= 0x8000)
      {
        v27 = 0x8000;
      }

      v30 = v27 - 0x8000;
      if (v30 >= v52)
      {
        v31 = v52;
      }

      else
      {
        v31 = v30;
      }

      v32 = v14.i32[1];
      v33 = v51 - 0x8000;
      if (v14.i32[1] < v51 - 0x8000)
      {
        v33 = v14.i32[1];
      }

      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      v34 = v33 + 0x8000;
      if (v14.i32[1] <= 0x8000)
      {
        v32 = 0x8000;
      }

      v35 = v32 - 0x8000;
      if (v35 >= v51)
      {
        v36 = v51;
      }

      else
      {
        v36 = v35;
      }

      v37 = v54 + v53 * (v36 >> 16);
      v38 = v54 + v53 * HIWORD(v34);
      v39 = (v31 >> 12) & 0xFFFFFFF0;
      v40 = (v38 + v39);
      v55 = 0;
      v56[0] = 0;
      v41 = (v29 >> 12) & 0xFFFF0;
      CA::OGL::SW::Format::RGBAf::load_1((v56 + 4), (v37 + v39), a3);
      CA::OGL::SW::Format::RGBAf::load_1(v56, (v37 + v41), v42);
      CA::OGL::SW::Format::RGBAf::load_1((&v55 + 4), v40, v43);
      CA::OGL::SW::Format::RGBAf::load_1(&v55, (v38 + v41), v44);
      v45 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v55, HIDWORD(v55)), __PAIR64__(v56[0], HIDWORD(v56[0]))), vdupq_n_s16((v36 >> 1) & 0x7F80)), __PAIR64__(v56[0], HIDWORD(v56[0])));
      *v45.i8 = vadd_s16(*v45.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v45, v45, 8uLL), *v45.i8), vdup_n_s16((v31 >> 1) & 0x7F80)));
      v7 = v7 + v5;
      v9 += v48;
      v8 += v49;
      *v3 = vuzp1_s8(*v45.i8, *v45.i8).u32[0];
      v3 += 4;
      v6 = v50;
    }

    while (v4);
  }
}

int8x8_t CA::OGL::SW::Format::RGBAf::load_1(CA::OGL::SW::Format::RGBAf *this, float32x2_t *a2, const unsigned __int8 *a3)
{
  __asm { FMOV            V0.2S, #1.0 }

  v8 = vbsl_s8(vcgt_f32(*a2, _D0), _D0, *a2);
  v9 = vdup_n_s32(0x437F0000u);
  v10 = vshl_u32(vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v9, vbic_s8(v8, vcltz_f32(v8)))), 0x800000010);
  v10.i32[0] = vorr_s8(vdup_lane_s32(v10, 1), v10).u32[0];
  v11 = vbsl_s8(vcgt_f32(a2[1], _D0), _D0, a2[1]);
  v12 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v9, vbic_s8(v11, vcltz_f32(v11))));
  v10.i32[1] = 24;
  result = vorr_s8(vdup_lane_s32(vshl_u32(v12, v10), 1), v12);
  *this = result.i32[0] | v10.i32[0];
  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAf,unsigned int,true,true,false,true>(int *a1, int a2, unsigned __int8 *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v31 = *(*a1 + 16);
    v32 = **a1;
    v5 = a1[15];
    v29 = *(*a1 + 36);
    v30 = *(*a1 + 32);
    v28 = a1[16];
    v6 = a1[13];
    v27 = a1[14];
    do
    {
      --v4;
      v7 = v30 - 0x8000;
      if (v6 < v30 - 0x8000)
      {
        v7 = v6;
      }

      if (v7 <= -32768)
      {
        v7 = -32768;
      }

      v8 = v7 + 0x8000;
      if (v6 <= 0x8000)
      {
        v9 = 0x8000;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 0x8000;
      if (v10 >= v30)
      {
        v11 = v30;
      }

      else
      {
        v11 = v10;
      }

      v12 = v29 - 0x8000;
      if (v5 < v29 - 0x8000)
      {
        v12 = v5;
      }

      if (v12 <= -32768)
      {
        v12 = -32768;
      }

      v13 = v12 + 0x8000;
      if (v5 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v5;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v29)
      {
        v16 = v29;
      }

      else
      {
        v16 = v15;
      }

      v17 = v32 + v31 * (v16 >> 16);
      v18 = v32 + v31 * HIWORD(v13);
      v19 = (v11 >> 12) & 0xFFFFFFF0;
      v20 = (v18 + v19);
      v33 = 0;
      v34[0] = 0;
      v21 = (v8 >> 12) & 0xFFFF0;
      CA::OGL::SW::Format::RGBAf::load_1((v34 + 4), (v17 + v19), a3);
      CA::OGL::SW::Format::RGBAf::load_1(v34, (v17 + v21), v22);
      CA::OGL::SW::Format::RGBAf::load_1((&v33 + 4), v20, v23);
      CA::OGL::SW::Format::RGBAf::load_1(&v33, (v18 + v21), v24);
      v25 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v33, HIDWORD(v33)), __PAIR64__(v34[0], HIDWORD(v34[0]))), vdupq_n_s16((v16 >> 1) & 0x7F80)), __PAIR64__(v34[0], HIDWORD(v34[0])));
      *v25.i8 = vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v11 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v25.i8, *v25.i8);
      v6 += v27;
      v5 += v28;
      *v3 = result.i32[0];
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAf,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned __int8 *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = *a1;
    v35 = (*a1)[2];
    v36 = **a1;
    v6 = *(*a1 + 8);
    v7 = *(*a1 + 9);
    v8 = *(a1[3] + 3);
    v9 = *(a1 + 48);
    v10 = *(a1[2] + 3);
    v11 = *(a1 + 15);
    v12 = *(a1 + 16);
    v13 = *(a1 + 13);
    v14 = *(a1 + 14);
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v37 = 0;
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      CA::OGL::SW::Format::RGBAf::load_1(&v37, (v36 + v35 * (v33 >> 16) + ((v32 >> 12) & 0xFFFFFFF0)), a3);
      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *v3 = v37;
      v3 += 4;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAf,unsigned int,true,true,false,false>(int *a1, int a2, unsigned __int8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = a1[15];
    v9 = a1[16];
    v12 = a1[13];
    v11 = a1[14];
    do
    {
      --v4;
      v15 = 0;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      CA::OGL::SW::Format::RGBAf::load_1(&v15, (v5 + v6 * (v14 >> 16) + ((v13 >> 12) & 0xFFFFFFF0)), a3);
      v12 += v11;
      v10 += v9;
      *v3 = v15;
      v3 += 4;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAh,unsigned int,true,true,true,true>(uint64_t **result, int a2, unsigned __int8 *a3)
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v53 = (*result)[2];
    v54 = **result;
    v47 = *result;
    v5 = *(result[3] + 3);
    v6 = *(result + 48);
    v7 = *(result[2] + 3);
    v8 = *(result + 15);
    v9 = *(result + 13);
    v48 = *(result + 14);
    v49 = *(result + 16);
    v51 = *(*result + 9);
    v52 = *(*result + 8);
    v10 = vdup_n_s32(0x37800000u);
    v11 = vdup_n_s32(0x3F7FFFFFu);
    v12 = vdup_n_s32(0x47800000u);
    v50 = v6;
    do
    {
      v13.f32[0] = (1.0 / v7) * v9;
      v13.f32[1] = (1.0 / v7) * v8;
      v14 = vcvt_s32_f32(v13);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v26 = vmul_f32(vcvt_f32_s32(v14), vmul_f32(v10, *(v47 + 10)));
          v17 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), v11)), vmul_f32(v12, vcvt_f32_u32(*(v47 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v18 = vcvt_f32_s32(v14);
          v19 = vcvt_f32_s32(*(v47 + 8));
          v20 = vmul_f32(*(result + 84), v19);
          v21 = vmul_f32(*(result + 92), v19);
          v22 = vbsl_s8(vcgt_f32(v18, v21), v21, v18);
          v17 = vbsl_s8(vcgt_f32(v20, v22), v20, v22);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v23 = vmul_f32(*(v47 + 10), vcvt_f32_s32(v14));
          v24 = vmul_f32(v23, v23);
          v25 = vadd_f32(vdup_lane_s32(v24, 1), v24);
          *v24.i32 = fmaxf(vaddv_f32(v24), 0.00001);
          v24.i32[0] = vmul_f32(v25, vrsqrte_f32(vdup_lane_s32(v24, 0))).u32[0];
          v24.i32[1] = 0.5;
          v17 = vmul_f32(v24, vcvt_f32_u32(*(v47 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v15 = atan2f(v47[11] * v14.i32[1], v47[10] * v14.i32[0]);
          v16.i32[1] = 1056964608;
          v16.f32[0] = (v15 * -10430.0) + 32768.0;
          v17 = vmul_f32(v16, vcvt_f32_u32(*(v47 + 6)));
LABEL_12:
          v14 = vcvt_s32_f32(v17);
        }
      }

      --v4;
      v27 = v14.i32[0];
      v28 = v52 - 0x8000;
      if (v14.i32[0] < v52 - 0x8000)
      {
        v28 = v14.i32[0];
      }

      if (v28 <= -32768)
      {
        v28 = -32768;
      }

      v29 = v28 + 0x8000;
      if (v14.i32[0] <= 0x8000)
      {
        v27 = 0x8000;
      }

      v30 = v27 - 0x8000;
      if (v30 >= v52)
      {
        v31 = v52;
      }

      else
      {
        v31 = v30;
      }

      v32 = v14.i32[1];
      v33 = v51 - 0x8000;
      if (v14.i32[1] < v51 - 0x8000)
      {
        v33 = v14.i32[1];
      }

      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      v34 = v33 + 0x8000;
      if (v14.i32[1] <= 0x8000)
      {
        v32 = 0x8000;
      }

      v35 = v32 - 0x8000;
      if (v35 >= v51)
      {
        v36 = v51;
      }

      else
      {
        v36 = v35;
      }

      v37 = v54 + v53 * (v36 >> 16);
      v38 = v54 + v53 * HIWORD(v34);
      v39 = (v31 >> 13) & 0xFFFFFFF8;
      v40 = (v38 + v39);
      v55 = 0;
      v56[0] = 0;
      v41 = (v29 >> 13) & 0x7FFF8;
      CA::OGL::SW::Format::RGBAh::load_1((v56 + 4), (v37 + v39), a3);
      CA::OGL::SW::Format::RGBAh::load_1(v56, (v37 + v41), v42);
      CA::OGL::SW::Format::RGBAh::load_1((&v55 + 4), v40, v43);
      CA::OGL::SW::Format::RGBAh::load_1(&v55, (v38 + v41), v44);
      v45 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v55, HIDWORD(v55)), __PAIR64__(v56[0], HIDWORD(v56[0]))), vdupq_n_s16((v36 >> 1) & 0x7F80)), __PAIR64__(v56[0], HIDWORD(v56[0])));
      *v45.i8 = vadd_s16(*v45.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v45, v45, 8uLL), *v45.i8), vdup_n_s16((v31 >> 1) & 0x7F80)));
      v7 = v7 + v5;
      v9 += v48;
      v8 += v49;
      *v3 = vuzp1_s8(*v45.i8, *v45.i8).u32[0];
      v3 += 4;
      v6 = v50;
    }

    while (v4);
  }
}

int8x8_t CA::OGL::SW::Format::RGBAh::load_1(CA::OGL::SW::Format::RGBAh *this, unsigned int *a2, const unsigned __int8 *a3)
{
  v18 = CA::HalfFloat::to_float(*a2);
  v17 = CA::HalfFloat::to_float(*(a2 + 1));
  v19 = CA::HalfFloat::to_float(*(a2 + 2));
  v5 = CA::HalfFloat::to_float(*(a2 + 3));
  __asm { FMOV            V1.2S, #1.0 }

  v11 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v18), LODWORD(v17)), _D1), _D1, __PAIR64__(LODWORD(v18), LODWORD(v17)));
  v12 = vdup_n_s32(0x437F0000u);
  v13 = vshl_u32(vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v12, vbic_s8(v11, vcltz_f32(v11)))), 0x1000000008);
  v13.i32[0] = vorr_s8(v13, vdup_lane_s32(v13, 1)).u32[0];
  v14 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v5), LODWORD(v19)), _D1), _D1, __PAIR64__(LODWORD(v5), LODWORD(v19)));
  v15 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v12, vbic_s8(v14, vcltz_f32(v14))));
  v13.i32[1] = 24;
  result = vorr_s8(vdup_lane_s32(vshl_u32(v15, v13), 1), v15);
  *this = result.i32[0] | v13.i32[0];
  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAh,unsigned int,true,true,false,true>(int *a1, int a2, unsigned __int8 *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v31 = *(*a1 + 16);
    v32 = **a1;
    v5 = a1[15];
    v29 = *(*a1 + 36);
    v30 = *(*a1 + 32);
    v28 = a1[16];
    v6 = a1[13];
    v27 = a1[14];
    do
    {
      --v4;
      v7 = v30 - 0x8000;
      if (v6 < v30 - 0x8000)
      {
        v7 = v6;
      }

      if (v7 <= -32768)
      {
        v7 = -32768;
      }

      v8 = v7 + 0x8000;
      if (v6 <= 0x8000)
      {
        v9 = 0x8000;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 0x8000;
      if (v10 >= v30)
      {
        v11 = v30;
      }

      else
      {
        v11 = v10;
      }

      v12 = v29 - 0x8000;
      if (v5 < v29 - 0x8000)
      {
        v12 = v5;
      }

      if (v12 <= -32768)
      {
        v12 = -32768;
      }

      v13 = v12 + 0x8000;
      if (v5 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v5;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v29)
      {
        v16 = v29;
      }

      else
      {
        v16 = v15;
      }

      v17 = v32 + v31 * (v16 >> 16);
      v18 = v32 + v31 * HIWORD(v13);
      v19 = (v11 >> 13) & 0xFFFFFFF8;
      v20 = (v18 + v19);
      v33 = 0;
      v34[0] = 0;
      v21 = (v8 >> 13) & 0x7FFF8;
      CA::OGL::SW::Format::RGBAh::load_1((v34 + 4), (v17 + v19), a3);
      CA::OGL::SW::Format::RGBAh::load_1(v34, (v17 + v21), v22);
      CA::OGL::SW::Format::RGBAh::load_1((&v33 + 4), v20, v23);
      CA::OGL::SW::Format::RGBAh::load_1(&v33, (v18 + v21), v24);
      v25 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v33, HIDWORD(v33)), __PAIR64__(v34[0], HIDWORD(v34[0]))), vdupq_n_s16((v16 >> 1) & 0x7F80)), __PAIR64__(v34[0], HIDWORD(v34[0])));
      *v25.i8 = vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v11 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v25.i8, *v25.i8);
      v6 += v27;
      v5 += v28;
      *v3 = result.i32[0];
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAh,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned __int8 *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = *a1;
    v35 = (*a1)[2];
    v36 = **a1;
    v6 = *(*a1 + 8);
    v7 = *(*a1 + 9);
    v8 = *(a1[3] + 3);
    v9 = *(a1 + 48);
    v10 = *(a1[2] + 3);
    v11 = *(a1 + 15);
    v12 = *(a1 + 16);
    v13 = *(a1 + 13);
    v14 = *(a1 + 14);
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v37 = 0;
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      CA::OGL::SW::Format::RGBAh::load_1(&v37, (v36 + v35 * (v33 >> 16) + ((v32 >> 13) & 0xFFFFFFF8)), a3);
      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *v3 = v37;
      v3 += 4;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAh,unsigned int,true,true,false,false>(int *a1, int a2, unsigned __int8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = a1[15];
    v9 = a1[16];
    v12 = a1[13];
    v11 = a1[14];
    do
    {
      --v4;
      v15 = 0;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      CA::OGL::SW::Format::RGBAh::load_1(&v15, (v5 + v6 * (v14 >> 16) + ((v13 >> 13) & 0xFFFFFFF8)), a3);
      v12 += v11;
      v10 += v9;
      *v3 = v15;
      v3 += 4;
    }

    while (v4);
  }
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v56 = v8;
    v57 = v11;
    v55 = v15;
    v54 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v55;
          v8 = v56;
          v13 = v25;
          v11 = v57;
          v7 = v24;
          result = v54;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      if (v41 >= v8)
      {
        v41 = v8;
      }

      v42 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = (v40 >> 14) & 0x3FFFC;
      v50.i32[0] = *(v46 + v48);
      v50.i32[1] = *(v46 + v49);
      v51.i32[0] = *(v47 + v48);
      v51.i32[1] = *(v47 + v49);
      v52 = *&vshr_n_u32(vrev32_s8(v50), 8uLL) | 0xFF000000FF000000;
      v53 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vshr_n_u32(vrev32_s8(v51), 8uLL) | 0xFF000000FF000000), v52), vdupq_n_s16((v45 >> 1) & 0x7F80)), v52);
      *v53.i8 = vadd_s16(*v53.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v53, v53, 8uLL), *v53.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v12 = -32768;
      }

      else
      {
        v12 = v11;
      }

      if (v10 <= 0x8000)
      {
        v13 = 0x8000;
      }

      else
      {
        v13 = v10;
      }

      v14 = v13 - 0x8000;
      if (v14 >= v5)
      {
        v14 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v15 = v6 - 0x8000;
      }

      else
      {
        v15 = v8;
      }

      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      if (v8 <= 0x8000)
      {
        v16 = 0x8000;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16 - 0x8000;
      v18 = v15 + 0x8000;
      if (v17 >= v6)
      {
        v17 = v6;
      }

      v19 = v3 + v4 * (v17 >> 16);
      v20 = v3 + v4 * HIWORD(v18);
      v21 = (v14 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v22 = ((v12 + 0x8000) >> 14) & 0x3FFFC;
      v23.i32[0] = *(v19 + v21);
      v24.i32[0] = *(v20 + v21);
      v23.i32[1] = *(v19 + v22);
      v24.i32[1] = *(v20 + v22);
      v25 = *&vshr_n_u32(vrev32_s8(v23), 8uLL) | 0xFF000000FF000000;
      v26 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vshr_n_u32(vrev32_s8(v24), 8uLL) | 0xFF000000FF000000), v25), vdupq_n_s16((v17 >> 1) & 0x7F80)), v25);
      *v26.i8 = vadd_s16(*v26.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v14 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v26.i8, *v26.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}