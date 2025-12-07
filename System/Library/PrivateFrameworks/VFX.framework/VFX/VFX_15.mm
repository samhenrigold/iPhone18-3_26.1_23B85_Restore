uint64_t sub_1AF1BFB04(_DWORD *a1, _DWORD *a2)
{
  *a2 = 0;
  a2[1] = a1[69];
  a2[2] = a1[52];
  a2[3] = a1[53];
  a2[4] = a1[54];
  a2[5] = a1[56];
  a2[6] = a1[62];
  a2[7] = a1[63];
  a2[8] = a1[64];
  a2[9] = a1[65];
  a2[10] = a1[71];
  return 44;
}

double sub_1AF1BFB60(uint64_t a1, uint64_t a2, int32x4_t a3, float a4, float a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = a3;
    *&v6.i32[1] = a5;
    *v6.i8 = vmul_f32(*v6.i8, 0xBF000000BF000000);
    *(a1 + 8) = v6.i32[1];
    *a1 = vzip1q_s32(v6, a3).u32[0];
    *a3.i32 = *a3.i32 * 0.5;
    *&a3.i32[1] = a4;
    *(a2 + 8) = a5 * 0.5;
    *a2 = a3.i64[0];
  }

  return *a3.i64;
}

float sub_1AF1BFBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *v6.i32 = sub_1AF1BF984(a1, a2);
  v15 = v6;
  v14 = sub_1AF1BF9CC(a1, v7);
  *v9.i32 = sub_1AF1BFA14(a1, v8);
  if (a2)
  {
    v10 = a3 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v15;
    v11.i32[1] = v9.i32[0];
    *v11.i8 = vmul_f32(*v11.i8, 0xBF000000BF000000);
    *(a2 + 8) = v11.i32[1];
    *a2 = vzip1q_s32(v11, v9).u32[0];
    *&v12 = *v15.i32 * 0.5;
    *(&v12 + 1) = v14;
    *v9.i32 = *v9.i32 * 0.5;
    *(a3 + 8) = v9.i32[0];
    *a3 = v12;
  }

  return *v9.i32;
}

BOOL sub_1AF1BFC5C(int32x4_t *a1, int32x4_t a2, double a3, float a4)
{
  if (a1)
  {
    HIDWORD(a3) = sqrtf(((*&a3 * *&a3) + (*a2.i32 * *a2.i32)) + (a4 * a4));
    *a2.i8 = vmul_f32(*&a3, 0x3F0000003F000000);
    *a1 = vtrn1q_s32(0, vzip1q_s32(a2, a2));
  }

  return a1 != 0;
}

BOOL sub_1AF1BFC98(uint64_t a1, int32x4_t *a2)
{
  v4 = sub_1AF1BF984(a1, a2);
  v10 = sub_1AF1BF9CC(a1, v5);
  *v7.i32 = sub_1AF1BFA14(a1, v6);
  if (a2)
  {
    v8.f32[0] = v10;
    v8.i32[1] = sqrtf(((v8.f32[0] * v8.f32[0]) + (v4 * v4)) + (*v7.i32 * *v7.i32));
    *v7.i8 = vmul_f32(v8, 0x3F0000003F000000);
    *a2 = vtrn1q_s32(0, vzip1q_s32(v7, v7));
  }

  return a2 != 0;
}

void sub_1AF1BFD24(const void *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, int a6)
{
  v10 = a2;
  v76 = *MEMORY[0x1E69E9840];
  v12 = sub_1AF1BF984(a1, a2);
  v73 = sub_1AF1BF9CC(a1, v13);
  v15 = sub_1AF1BFA14(a1, v14);
  v21.f32[0] = v12 * 0.5;
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v22 = a5;
      do
      {
        v23 = 214013 * *a3 + 2531011;
        v16.f32[0] = HIWORD(v23) * 0.0000152590219;
        v24 = v73 * v16.f32[0];
        v16.f32[0] = v73 - (v73 * v16.f32[0]);
        v25 = (v21.f32[0] * v16.f32[0]) / v73;
        v26 = ((v15 * 0.5) * v16.f32[0]) / v73;
        v27 = 214013 * v23 + 2531011;
        v16.f32[0] = HIWORD(v27) * 0.0000152590219;
        v16.f32[0] = (v16.f32[0] * 2.0 + -1.0) * v25;
        v28 = 214013 * v27 + 2531011;
        *a3 = v28;
        v29 = HIWORD(v28) * 0.0000152590219;
        v30 = (v29 * 2.0 + -1.0) * v26;
        v16.f32[1] = v24;
        v16.f32[2] = v30;
        *a4 = v16;
        if (a5)
        {
          v31 = vmulq_f32(v16, v16);
          *&v32 = v31.f32[2] + vaddv_f32(*v31.f32);
          *v31.f32 = vrsqrte_f32(v32);
          *v31.f32 = vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32)));
          v16 = vmulq_n_f32(v16, vmul_f32(*v31.f32, vrsqrts_f32(v32, vmul_f32(*v31.f32, *v31.f32))).f32[0]);
          *v22 = v16;
        }

        ++v22;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v33 = 0;
    v36.i32[1] = 0;
    v36.i32[3] = 0;
    v37.i32[3] = 0;
    v37.i64[0] = v21.u32[0];
    v21 = v21.u32[0];
    v21.f32[2] = v15 * 0.5;
    v34.i32[0] = 0;
    v34.i64[1] = 0;
    v34.f32[1] = v73;
    v36.f32[0] = -(v12 * 0.5);
    v35 = v36.u32[0];
    v35.f32[2] = v15 * 0.5;
    v36.f32[2] = -(v15 * 0.5);
    v37.f32[2] = v36.f32[2];
    v38 = vsubq_f32(v21, v35);
    v39 = vsubq_f32(v37, v21);
    v40 = vsubq_f32(v36, v37);
    v41 = vsubq_f32(v35, v36);
    v42 = vsubq_f32(v34.u64[0], v35);
    v43 = vsubq_f32(v34.u64[0], v37);
    v44 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
    v45 = vmlaq_f32(vmulq_f32(v44, vnegq_f32(v39)), v43, vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL));
    v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
    v47 = vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL);
    v48 = vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL);
    v49 = vnegq_f32(v41);
    v50 = vmlaq_f32(vmulq_f32(v48, v49), v42, v47);
    v51 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
    v52 = vmlaq_f32(vmulq_f32(v44, vnegq_f32(v40)), v43, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
    v53 = vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL);
    v54 = vmlaq_f32(vmulq_f32(v48, vnegq_f32(v38)), v42, vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL));
    v55 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
    do
    {
      v56 = v17;
      v57 = v18;
      v58 = v20;
      v59 = v19.i32[3];
      v75 = 0.16667;
      v74 = xmmword_1AFE21CD8;
      v60 = 4;
      v61 = 0.33333;
      do
      {
        v61 = v61 + *(&v74 + v60);
        *(&v74 + v60) = v61;
        v60 += 4;
      }

      while (v60 != 20);
      v62 = 214013 * *a3 + 2531011;
      v63 = HIWORD(v62) * 0.0000152590219;
      v17 = v35;
      v18 = v49;
      v20 = v38;
      v19 = xmmword_1AFE20B60;
      if (v63 >= 0.33333)
      {
        v17 = v34;
        v18 = v21;
        v20 = v35;
        v19 = v55;
        if (*(&v74 + 1) <= v63)
        {
          v17 = v34;
          v18 = v36;
          v20 = v37;
          v19 = v53;
          if (*(&v74 + 2) <= v63)
          {
            v17 = v36;
            v18 = v34;
            v20 = v35;
            v19 = v51;
            if (*(&v74 + 3) <= v63)
            {
              if (v75 <= v63)
              {
                v19.i64[0] = 0;
                v19.i32[2] = 0;
                v19.i32[3] = v59;
                v17 = v56;
                v18 = v57;
                v20 = v58;
              }

              else
              {
                v17 = v37;
                v18 = v21;
                v20 = v34;
                v19 = v46;
              }
            }
          }
        }
      }

      v64 = 214013 * v62 + 2531011;
      v65 = HIWORD(v64) * 0.0000152590219;
      v66 = 214013 * v64 + 2531011;
      *a3 = v66;
      v67 = HIWORD(v66) * 0.0000152590219;
      if (v63 >= 0.33333)
      {
        v69 = 214013 * v66 + 2531011;
        *a3 = v69;
        v70 = HIWORD(v69) * 0.0000152590219;
        v68 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v18, (1.0 / ((v65 + v67) + v70)) * v67), v20, (1.0 / ((v65 + v67) + v70)) * v65), v17, (1.0 / ((v65 + v67) + v70)) * v70);
      }

      else
      {
        v68 = vaddq_f32(v17, vmlaq_n_f32(vmulq_n_f32(v18, v67), v20, v65));
      }

      a4[v33] = v68;
      if (a5)
      {
        v71 = vmulq_f32(v19, v19);
        *&v72 = v71.f32[2] + vaddv_f32(*v71.f32);
        *v71.f32 = vrsqrte_f32(v72);
        *v71.f32 = vmul_f32(*v71.f32, vrsqrts_f32(v72, vmul_f32(*v71.f32, *v71.f32)));
        a5[v33] = vmulq_n_f32(v19, vmul_f32(*v71.f32, vrsqrts_f32(v72, vmul_f32(*v71.f32, *v71.f32))).f32[0]);
      }

      ++v33;
    }

    while (v33 != v10);
  }
}

uint64_t sub_1AF1C0250(uint64_t a1)
{
  sub_1AF1C236C(a1, 0, 1.0);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C236C(a1, 2, 1.0);
  sub_1AF1C213C(a1, 9, 1);
  sub_1AF1C213C(a1, 10, 1);

  return sub_1AF1C213C(a1, 11, 1);
}

uint64_t sub_1AF1C02D8(_DWORD *a1, _DWORD *a2)
{
  *a2 = 3;
  a2[1] = a1[69];
  a2[2] = a1[52];
  a2[3] = a1[53];
  a2[4] = a1[54];
  a2[5] = a1[62];
  a2[6] = a1[63];
  a2[7] = a1[64];
  a2[8] = a1[71];
  return 36;
}

float sub_1AF1C0344(uint64_t a1, uint64_t a2, double a3, double a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *&a4 = -*&a3;
    *(a1 + 8) = -*&a3;
    *a1 = vdupq_lane_s32(*&a4, 0).u64[0];
    *(a2 + 8) = LODWORD(a3);
    *a2 = vdupq_lane_s32(*&a3, 0).u64[0];
  }

  return *&a3;
}

float sub_1AF1C0378(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    LODWORD(a4) = *(a1 + 220);
    *&a5 = -*&a4;
    *(a2 + 8) = -*&a4;
    *a2 = vdupq_lane_s32(*&a5, 0).u64[0];
    *(a3 + 8) = LODWORD(a4);
    *a3 = vdupq_lane_s32(*&a4, 0).u64[0];
  }

  return *&a4;
}

BOOL sub_1AF1C03B0(_OWORD *a1, float a2)
{
  if (a1)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = a2;
    *a1 = v2;
  }

  return a1 != 0;
}

BOOL sub_1AF1C03CC(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    HIDWORD(v2) = *(a1 + 220);
    *a2 = v2;
  }

  return a2 != 0;
}

void sub_1AF1C03EC(_DWORD *a1, uint64_t a2, unsigned int *a3, float32x4_t *a4, float32x4_t *a5, uint64_t a6, double a7)
{
  v9 = a4;
  v11 = a2;
  LODWORD(a7) = a1[55];
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, a2, a3, a4, a5, a6);
    }

    else if (a6 == 1 && a2 >= 1)
    {
      v12 = 0;
      v13 = vdup_n_s32(0x37800080u);
      __asm { FMOV            V3.2S, #-1.0 }

      do
      {
        v19 = *a3;
        do
        {
          v20 = 214013 * v19 + 2531011;
          v7.i32[0] = v20;
          v7.i32[1] = 214013 * v20 + 2531011;
          *v7.f32 = vmla_f32(_D3, 0x4000000040000000, vmul_f32(vcvt_f32_u32(vshr_n_u32(*v7.f32, 0x10uLL)), v13));
          v19 = 214013 * (214013 * v20 + 2531011) + 2531011;
          v7.f32[2] = ((HIWORD(v19) * 0.000015259) * 2.0) + -1.0;
          v21 = vmulq_f32(v7, v7);
          v21.f32[0] = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
        }

        while (v21.f32[0] > 1.0);
        *a3 = v19;
        if (a5)
        {
          a5[v12] = vdivq_f32(v7, vdupq_lane_s32(*v21.f32, 0));
        }

        v7 = vaddq_f32(vmulq_n_f32(v7, *&a7), 0);
        a4[v12++] = v7;
      }

      while (v12 != a2);
    }
  }

  else if (a2 >= 1)
  {
    v28 = vdupq_lane_s32(*&a7, 0);
    v22 = a5;
    do
    {
      v23 = 214013 * *a3 + 2531011;
      v29 = ((HIWORD(v23) * 0.000015259) * 2.0) + -1.0;
      v24 = 214013 * v23 + 2531011;
      *a3 = v24;
      v25 = ((HIWORD(v24) * 0.000015259) + (HIWORD(v24) * 0.000015259)) * 3.14159265;
      v26 = __sincosf_stret(v25);
      *v27.f32 = vmul_n_f32(__PAIR64__(LODWORD(v26.__sinval), LODWORD(v26.__cosval)), sqrtf(1.0 - (v29 * v29)));
      v27.f32[2] = v29;
      *v9 = vmlaq_f32(0, v28, v27);
      if (a5)
      {
        *v22 = v27;
      }

      ++v22;
      ++v9;
      --v11;
    }

    while (v11);
  }
}

uint64_t sub_1AF1C0648(uint64_t a1)
{
  sub_1AF1C213C(a1, 19, 1);
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C213C(a1, 8, 48);

  return sub_1AF1C236C(a1, 18, 1.0);
}

uint64_t sub_1AF1C06B0(_DWORD *a1, _DWORD *a2)
{
  *a2 = 1;
  a2[1] = a1[69];
  a2[2] = a1[70];
  a2[3] = a1[55];
  a2[4] = a1[61];
  a2[5] = a1[60];
  a2[6] = a1[71];
  return 28;
}

float sub_1AF1C0710(uint64_t a1, uint64_t a2, float result, float a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    *&v5 = -result;
    *(a1 + 8) = -result;
    *(&v5 + 1) = a4 * -0.5;
    *a1 = v5;
    *&v5 = result;
    *(&v5 + 1) = a4 * 0.5;
    *(a2 + 8) = result;
    *a2 = v5;
  }

  return result;
}

float sub_1AF1C0758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = sub_1AF1C07E4(a1, a2);
  result = sub_1AF1BF9CC(a1, v6);
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *&v9 = -v10;
    *(a2 + 8) = -v10;
    *(&v9 + 1) = result * -0.5;
    *a2 = v9;
    result = result * 0.5;
    *(a3 + 8) = v10;
    *a3 = __PAIR64__(LODWORD(result), LODWORD(v10));
  }

  return result;
}

float sub_1AF1C07E4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 220);
}

BOOL sub_1AF1C082C(_OWORD *a1, float a2, float a3)
{
  if (a1)
  {
    v3 = sqrt((a2 * a2) + a3 * 0.25 * a3);
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL sub_1AF1C0868(uint64_t a1, _OWORD *a2)
{
  v4 = sub_1AF1C07E4(a1, a2);
  v6 = sub_1AF1BF9CC(a1, v5);
  if (a2)
  {
    v7 = sqrt((v4 * v4) + v6 * 0.25 * v6);
    *&v8 = 0;
    DWORD2(v8) = 0;
    *(&v8 + 3) = v7;
    *a2 = v8;
  }

  return a2 != 0;
}

void sub_1AF1C08DC(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v10 = a2;
  v12 = sub_1AF1C07E4(a1, a2);
  v14 = sub_1AF1BF9CC(a1, v13);
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v15 = a5;
      do
      {
        v16 = 214013 * *a3 + 2531011;
        v17 = HIWORD(v16) * 0.0000152590219;
        v18 = __sincos_stret((v17 + v17) * 3.14159265);
        sinval = v18.__sinval;
        cosval = v18.__cosval;
        v21 = 214013 * v16 + 2531011;
        v22 = HIWORD(v21) * 0.0000152590219;
        v23 = v12 * v22;
        *&v24 = v23 * cosval;
        v25 = 214013 * v21 + 2531011;
        *a3 = v25;
        v26 = HIWORD(v25) * 0.0000152590219;
        v27 = (v14 * v26) + -v14 * 0.5;
        *(&v24 + 1) = v27;
        *(&v24 + 2) = v23 * sinval;
        *a4 = v24;
        if (a5)
        {
          *&v28 = LODWORD(cosval);
          *(&v28 + 1) = LODWORD(sinval);
          *v15 = v28;
        }

        ++v15;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v29 = a5;
    do
    {
      v30 = 214013 * *a3 + 2531011;
      v31 = HIWORD(v30) * 0.0000152590219;
      v32 = __sincos_stret((v31 + v31) * 3.14159265);
      v33 = 214013 * v30 + 2531011;
      v34 = v32.__sinval;
      v35 = v32.__cosval;
      *&v36 = v12 * v35;
      *a3 = v33;
      v37 = HIWORD(v33) * 0.0000152590219;
      v38 = (v14 * v37) + -v14 * 0.5;
      *(&v36 + 1) = v38;
      *(&v36 + 2) = v12 * v34;
      *a4 = v36;
      if (a5)
      {
        *&v39 = LODWORD(v35);
        *(&v39 + 1) = LODWORD(v34);
        *v29 = v39;
      }

      ++v29;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1AF1C0B60(uint64_t a1)
{
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C213C(a1, 13, 48);
  sub_1AF1C213C(a1, 10, 1);

  return sub_1AF1C236C(a1, 18, 1.0);
}

uint64_t sub_1AF1C0BD8(_DWORD *a1, _DWORD *a2)
{
  *a2 = 4;
  a2[1] = a1[69];
  a2[2] = a1[55];
  a2[3] = a1[53];
  a2[4] = a1[66];
  a2[5] = a1[63];
  a2[6] = a1[60];
  a2[7] = a1[71];
  return 32;
}

__n64 sub_1AF1C0C40(uint64_t a1, __n64 *a2, __n64 result, float a4, float a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (result.n64_f32[0] <= a4)
    {
      result.n64_f32[0] = a4;
    }

    *&v6 = -result.n64_f32[0];
    *(a1 + 8) = -result.n64_f32[0];
    *(&v6 + 1) = a5 * -0.5;
    *a1 = v6;
    a2[1].n64_u32[0] = result.n64_u32[0];
    result.n64_f32[1] = a5 * 0.5;
    a2->n64_u64[0] = result.n64_u64[0];
  }

  return result;
}

BOOL sub_1AF1C0C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AF1C0D24(a1, a2);
  v8 = sub_1AF1C07E4(a1, v7);
  v10 = sub_1AF1BF9CC(a1, v9);
  if (a2)
  {
    v11 = a3 == 0;
  }

  else
  {
    v11 = 1;
  }

  result = !v11;
  if (!v11)
  {
    if (v6 <= v8)
    {
      *&v13 = v8;
    }

    else
    {
      *&v13 = v6;
    }

    *&v14 = -*&v13;
    *(a2 + 8) = -*&v13;
    *(&v14 + 1) = v10 * -0.5;
    *a2 = v14;
    *(a3 + 8) = v13;
    *(&v13 + 1) = v10 * 0.5;
    *a3 = v13;
  }

  return result;
}

float sub_1AF1C0D24(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 228);
}

BOOL sub_1AF1C0D6C(_OWORD *a1, float a2, float a3, float a4)
{
  if (a1)
  {
    if (a2 <= a3)
    {
      a2 = a3;
    }

    v4 = sqrt((a2 * a2) + a4 * 0.25 * a4);
    *&v5 = 0;
    DWORD2(v5) = 0;
    *(&v5 + 3) = v4;
    *a1 = v5;
  }

  return a1 != 0;
}

BOOL sub_1AF1C0DB0(uint64_t a1, _OWORD *a2)
{
  v4 = sub_1AF1C0D24(a1, a2);
  v6 = sub_1AF1C07E4(a1, v5);
  v8 = sub_1AF1BF9CC(a1, v7);
  if (a2)
  {
    if (v4 <= v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    v10 = sqrt((v9 * v9) + v8 * 0.25 * v8);
    *&v11 = 0;
    DWORD2(v11) = 0;
    *(&v11 + 3) = v10;
    *a2 = v11;
  }

  return a2 != 0;
}

void sub_1AF1C0E38(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v10 = a2;
  v12 = sub_1AF1C0D24(a1, a2);
  v14 = sub_1AF1C07E4(a1, v13);
  v16 = sub_1AF1BF9CC(a1, v15);
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v17 = v12 - v14;
      v18 = a5;
      do
      {
        v19 = 214013 * *a3 + 2531011;
        v20 = HIWORD(v19) * 0.0000152590219;
        v21 = __sincos_stret((v20 + v20) * 3.14159265);
        sinval = v21.__sinval;
        cosval = v21.__cosval;
        v24 = 214013 * v19 + 2531011;
        v25 = HIWORD(v24) * 0.0000152590219;
        v26 = 214013 * v24 + 2531011;
        *a3 = v26;
        v27 = HIWORD(v26) * 0.0000152590219;
        v28 = (v14 + (v25 * v17)) * v27;
        *&v29 = v28 * cosval;
        v30 = (v16 * v25) + -v16 * 0.5;
        *(&v29 + 1) = v30;
        *(&v29 + 2) = v28 * sinval;
        *a4 = v29;
        if (a5)
        {
          *&v31 = LODWORD(cosval);
          *(&v31 + 1) = LODWORD(sinval);
          *v18 = v31;
        }

        ++v18;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v32 = v12 - v14;
    v33 = a5;
    do
    {
      v34 = 214013 * *a3 + 2531011;
      v35 = HIWORD(v34) * 0.0000152590219;
      v36 = __sincos_stret((v35 + v35) * 3.14159265);
      v37 = v36.__sinval;
      v38 = v36.__cosval;
      v39 = 214013 * v34 + 2531011;
      *a3 = v39;
      v40 = HIWORD(v39) * 0.0000152590219;
      v41 = v14 + (v40 * v32);
      *&v42 = v41 * v38;
      v43 = (v16 * v40) + -v16 * 0.5;
      *(&v42 + 1) = v43;
      *(&v42 + 2) = v41 * v37;
      *a4 = v42;
      if (a5)
      {
        *&v44 = LODWORD(v38);
        *(&v44 + 1) = LODWORD(v37);
        *v33 = v44;
      }

      ++v33;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1AF1C10E4(uint64_t a1)
{
  sub_1AF1C236C(a1, 5, 0.0);
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C213C(a1, 13, 48);

  return sub_1AF1C213C(a1, 10, 1);
}

uint64_t sub_1AF1C115C(_DWORD *a1, _DWORD *a2)
{
  *a2 = 5;
  a2[1] = a1[69];
  a2[2] = a1[57];
  a2[3] = a1[55];
  a2[4] = a1[53];
  a2[5] = a1[66];
  a2[6] = a1[63];
  a2[7] = a1[71];
  return 32;
}

float sub_1AF1C11C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *(a1 + 212);
    LODWORD(v5) = *(a1 + 220);
    *&v6 = -*&v5;
    *(a2 + 8) = -*&v5;
    *(&v6 + 1) = v4 * -0.5;
    *a2 = v6;
    result = v4 * 0.5;
    *(a3 + 8) = v5;
    *(&v5 + 1) = result;
    *a3 = v5;
  }

  return result;
}

BOOL sub_1AF1C1214(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    v2 = sqrt((*(a1 + 220) * *(a1 + 220)) + *(a1 + 212) * 0.25 * *(a1 + 212));
    *&v3 = 0;
    DWORD2(v3) = 0;
    *(&v3 + 3) = v2;
    *a2 = v3;
  }

  return a2 != 0;
}

void sub_1AF1C1258(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v10 = a2;
  v12 = sub_1AF1C07E4(a1, a2);
  v14 = sub_1AF1C1544(a1, v13);
  v16 = sub_1AF1BF9CC(a1, v15);
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v17 = v12 - v14;
      v18 = a5;
      do
      {
        v19 = 214013 * *a3 + 2531011;
        v20 = HIWORD(v19) * 0.0000152590219;
        v21 = __sincos_stret((v20 + v20) * 3.14159265);
        sinval = v21.__sinval;
        cosval = v21.__cosval;
        v24 = 214013 * v19 + 2531011;
        v25 = HIWORD(v24) * 0.0000152590219;
        v26 = v14 + (v17 * v25);
        *&v27 = v26 * cosval;
        v28 = 214013 * v24 + 2531011;
        *a3 = v28;
        v29 = HIWORD(v28) * 0.0000152590219;
        v30 = (v16 * v29) + -v16 * 0.5;
        *(&v27 + 1) = v30;
        *(&v27 + 2) = v26 * sinval;
        *a4 = v27;
        if (a5)
        {
          if (v25 > 0.5)
          {
            cosval = -cosval;
            sinval = -sinval;
          }

          *&v31 = LODWORD(cosval);
          *(&v31 + 1) = LODWORD(sinval);
          *v18 = v31;
        }

        ++v18;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v32 = a5;
    do
    {
      v33 = 214013 * *a3 + 2531011;
      v34 = HIWORD(v33) * 0.0000152590219;
      v36 = __sincos_stret((v34 + v34) * 3.14159265);
      v37 = v36.__sinval;
      v38 = v36.__cosval;
      v39 = 214013 * v33 + 2531011;
      v40 = HIWORD(v39) * 0.0000152590219;
      if (v40 <= 0.5)
      {
        v41 = v12;
      }

      else
      {
        v41 = v14;
      }

      *&v35.__sinval = v41 * v38;
      v42 = 214013 * v39 + 2531011;
      *a3 = v42;
      v43 = HIWORD(v42) * 0.0000152590219;
      v44 = (v16 * v43) + -v16 * 0.5;
      *(&v35.__sinval + 1) = v44;
      *&v35.__cosval = v41 * v37;
      *a4 = v35;
      if (a5)
      {
        if (v40 > 0.5)
        {
          v38 = -v38;
          v37 = -v37;
        }

        *&v45 = LODWORD(v38);
        *(&v45 + 1) = LODWORD(v37);
        *v32 = v45;
      }

      ++v32;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

float sub_1AF1C1544(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 232);
}

uint64_t sub_1AF1C158C(uint64_t a1)
{
  sub_1AF1C236C(a1, 6, 0.25);
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 1, 1.0);
  sub_1AF1C213C(a1, 13, 48);
  sub_1AF1C213C(a1, 10, 1);

  return sub_1AF1C236C(a1, 18, 1.0);
}

uint64_t sub_1AF1C1614(_DWORD *a1, _DWORD *a2)
{
  *a2 = 6;
  a2[1] = a1[69];
  a2[2] = a1[58];
  a2[3] = a1[55];
  a2[4] = a1[53];
  a2[5] = a1[66];
  a2[6] = a1[63];
  a2[7] = a1[60];
  a2[8] = a1[71];
  return 36;
}

float sub_1AF1C1684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = sub_1AF1C07E4(a1, a2);
  result = sub_1AF1BF9CC(a1, v6);
  if (a2)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    *&v9 = -v10;
    *(a2 + 8) = -v10;
    *(&v9 + 1) = result * -0.5;
    *a2 = v9;
    result = result * 0.5;
    *(a3 + 8) = v10;
    *a3 = __PAIR64__(LODWORD(result), LODWORD(v10));
  }

  return result;
}

BOOL sub_1AF1C1710(_OWORD *a1, double a2, float a3)
{
  if (a1)
  {
    v3 = a3 * 0.5;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL sub_1AF1C1734(uint64_t a1, _OWORD *a2)
{
  sub_1AF1C07E4(a1, a2);
  v5 = sub_1AF1BF9CC(a1, v4);
  if (a2)
  {
    *&v6 = 0;
    DWORD2(v6) = 0;
    *(&v6 + 3) = v5 * 0.5;
    *a2 = v6;
  }

  return a2 != 0;
}

void sub_1AF1C1784(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, __double2 *a5, int a6)
{
  v10 = a2;
  v12 = sub_1AF1C07E4(a1, a2);
  v14 = sub_1AF1BF9CC(a1, v13);
  v15 = v14 * 0.5;
  *v16.i32 = (v14 * 0.5) - v12;
  v51 = v16;
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v17 = -v15;
      v18 = a5;
      do
      {
        v19 = 214013 * *a3 + 2531011;
        v20 = HIWORD(v19) * 0.0000152590219;
        v22 = __sincos_stret((v20 + v20) * 3.14159265);
        sinval = v22.__sinval;
        *&v24 = v22.__cosval;
        v25 = 214013 * v19 + 2531011;
        v26 = HIWORD(v25) * 0.0000152590219;
        *v27.i32 = v17 + (v26 * v14);
        v28 = 214013 * v25 + 2531011;
        *a3 = v28;
        v29 = HIWORD(v28) * 0.0000152590219;
        v30 = v12 * v29;
        *v31.i32 = fabsf(*v27.i32) - *v51.i32;
        if (*v31.i32 <= 0.0)
        {
          *&v35.__sinval = v24;
          *&v35.__cosval = LODWORD(sinval);
          *&v24 = v30 * *&v24;
        }

        else
        {
          *v31.i32 = *v31.i32 / v12;
          v32.i64[0] = 0x8000000080000000;
          v32.i64[1] = 0x8000000080000000;
          v33 = *vbslq_s8(v32, v31, v27).i32;
          v34 = sqrtf(1.0 - (v33 * v33));
          *&v21.__sinval = v34 * *&v24;
          sinval = v34 * sinval;
          *&v24 = v30 * (v34 * *&v24);
          v35 = v21;
          *(&v35.__sinval + 1) = v33;
          *&v35.__cosval = sinval;
          *v27.i32 = *vbslq_s8(v32, v51, v27).i32 + (v33 * v30);
        }

        DWORD1(v24) = v27.i32[0];
        *(&v24 + 2) = v30 * sinval;
        *a4 = v24;
        if (a5)
        {
          *v18 = v35;
        }

        ++v18;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v36 = -v15;
    v37 = a5;
    do
    {
      v38 = 214013 * *a3 + 2531011;
      v39 = HIWORD(v38) * 0.0000152590219;
      v41 = __sincos_stret((v39 + v39) * 3.14159265);
      v42 = v41.__sinval;
      *&v43 = v41.__cosval;
      v44 = 214013 * v38 + 2531011;
      *a3 = v44;
      *v45.i64 = HIWORD(v44) * 0.0000152590219;
      *v45.i32 = *v45.i64;
      *v45.i32 = v36 + (*v45.i32 * v14);
      *v46.i32 = fabsf(*v45.i32) - *v51.i32;
      if (*v46.i32 <= 0.0)
      {
        *&v50.__sinval = v43;
        *&v50.__cosval = LODWORD(v42);
        *&v43 = v12 * *&v43;
      }

      else
      {
        *v46.i32 = *v46.i32 / v12;
        v47.i64[0] = 0x8000000080000000;
        v47.i64[1] = 0x8000000080000000;
        v48 = *vbslq_s8(v47, v46, v45).i32;
        v49 = sqrtf(1.0 - (v48 * v48));
        *&v40.__sinval = v49 * *&v43;
        v42 = v49 * v42;
        *&v43 = v12 * (v49 * *&v43);
        v50 = v40;
        *(&v50.__sinval + 1) = v48;
        *&v50.__cosval = v42;
        *v45.i32 = *vbslq_s8(v47, v51, v45).i32 + (v48 * v12);
      }

      DWORD1(v43) = v45.i32[0];
      *(&v43 + 2) = v12 * v42;
      *a4 = v43;
      if (a5)
      {
        *v37 = v50;
      }

      ++v37;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1AF1C1AA4(uint64_t a1)
{
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 1, 2.0);
  sub_1AF1C213C(a1, 13, 48);
  sub_1AF1C213C(a1, 8, 24);

  return sub_1AF1C213C(a1, 10, 1);
}

uint64_t sub_1AF1C1B1C(_DWORD *a1, _DWORD *a2)
{
  *a2 = 7;
  a2[1] = a1[69];
  a2[2] = a1[55];
  a2[3] = a1[53];
  a2[4] = a1[66];
  a2[5] = a1[68];
  a2[6] = a1[63];
  a2[7] = a1[71];
  return 32;
}

float sub_1AF1C1B7C(uint64_t a1, uint64_t a2, float result, float a4)
{
  if (a1)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    result = result + a4;
    v5 = __PAIR64__(LODWORD(a4), LODWORD(result));
    v6 = vnegq_f32(vdupq_lane_s64(__SPAIR64__(LODWORD(a4), LODWORD(result)), 0));
    *(a1 + 8) = v6.i32[2];
    *a1 = v6.i64[0];
    *(a2 + 8) = result;
    *a2 = v5;
  }

  return result;
}

float32x4_t sub_1AF1C1BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    *&v4 = *(a1 + 236) + *(a1 + 220);
    HIDWORD(v4) = *(a1 + 236);
    result = vnegq_f32(vdupq_lane_s64(v4, 0));
    *(a2 + 8) = result.i32[2];
    *a2 = result.i64[0];
    *(a3 + 8) = v4;
    *a3 = v4;
  }

  return result;
}

BOOL sub_1AF1C1C04(_OWORD *a1, float a2, float a3)
{
  if (a1)
  {
    v3 = a2 + a3;
    *&v4 = 0;
    DWORD2(v4) = 0;
    *(&v4 + 3) = v3;
    *a1 = v4;
  }

  return a1 != 0;
}

BOOL sub_1AF1C1C24(uint64_t a1, _OWORD *a2)
{
  if (a2)
  {
    *&v2 = 0;
    DWORD2(v2) = 0;
    *(&v2 + 3) = *(a1 + 236) + *(a1 + 220);
    *a2 = v2;
  }

  return a2 != 0;
}

void sub_1AF1C1C4C(const void *a1, uint64_t a2, unsigned int *a3, _OWORD *a4, float64x2_t *a5, int a6)
{
  v10 = a2;
  v12 = sub_1AF1C07E4(a1, a2);
  *&v14 = sub_1AF1C1F08(a1, v13);
  v43 = v14;
  if (a6)
  {
    if (a6 == 2)
    {

      sub_1AF1B3A88(a1, v10, a3, a4, a5, 2);
    }

    else if (a6 == 1 && v10 >= 1)
    {
      v15 = a5;
      do
      {
        v16 = 214013 * *a3 + 2531011;
        v17 = HIWORD(v16) * 0.0000152590219;
        v18 = __sincos_stret((v17 + v17) * 3.14159265);
        cosval = v18.__cosval;
        v20 = 214013 * v16 + 2531011;
        *&v21 = HIWORD(v20) * 0.0000152590219;
        *&v21 = *&v21;
        *&v21 = *&v43 * sqrtf(*&v21);
        v41 = v21;
        *&v40 = v12 + (cosval * *&v21);
        v22 = 214013 * v20 + 2531011;
        *a3 = v22;
        *&v21 = HIWORD(v22) * 0.0000152590219;
        v24 = __sincos_stret((*&v21 + *&v21) * 3.14159265);
        v23 = v24.__cosval;
        sinval = v24.__sinval;
        HIDWORD(v26) = HIDWORD(v41);
        v27.f64[1] = v18.__sinval;
        *&v27.f64[0] = vcvt_f32_f64(v27);
        *&v26 = vmul_f32(__PAIR64__(v41, v40), *&v27.f64[0]);
        *(&v26 + 2) = *&v40 * sinval;
        *a4 = v26;
        if (a5)
        {
          *v27.f64 = cosval * *v27.f64;
          *&v27.f64[1] = cosval * sinval;
          *v15 = v27;
        }

        ++v15;
        ++a4;
        --v10;
      }

      while (v10);
    }
  }

  else if (v10 >= 1)
  {
    v28 = a5;
    do
    {
      v29 = 214013 * *a3 + 2531011;
      v30 = HIWORD(v29) * 0.0000152590219;
      v31 = __sincos_stret((v30 + v30) * 3.14159265);
      v32 = v31.__cosval;
      v33 = v43;
      *&v33 = v12 + (v32 * *&v43);
      v42 = v33;
      v34 = 214013 * v29 + 2531011;
      *a3 = v34;
      *&v33 = HIWORD(v34) * 0.0000152590219;
      v36 = __sincos_stret((*&v33 + *&v33) * 3.14159265);
      v35 = v36.__cosval;
      v37 = v36.__sinval;
      v38 = v42;
      v39.f64[1] = v31.__sinval;
      *&v39.f64[0] = vcvt_f32_f64(v39);
      DWORD1(v38) = v43;
      *&v38 = vmul_f32(*&v38, *&v39.f64[0]);
      *(&v38 + 2) = *&v42 * v37;
      *a4 = v38;
      if (a5)
      {
        *v39.f64 = v32 * *v39.f64;
        *&v39.f64[1] = v32 * v37;
        *v28 = v39;
      }

      ++v28;
      ++a4;
      --v10;
    }

    while (v10);
  }
}

float sub_1AF1C1F08(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 236);
}

uint64_t sub_1AF1C1F50(uint64_t a1)
{
  sub_1AF1C236C(a1, 4, 0.5);
  sub_1AF1C236C(a1, 7, 0.25);
  sub_1AF1C213C(a1, 13, 48);
  sub_1AF1C213C(a1, 15, 24);

  return sub_1AF1C236C(a1, 18, 1.0);
}

uint64_t sub_1AF1C1FC8(_DWORD *a1, _DWORD *a2)
{
  *a2 = 8;
  a2[1] = a1[69];
  a2[2] = a1[55];
  a2[3] = a1[59];
  a2[4] = a1[66];
  a2[5] = a1[67];
  a2[6] = a1[60];
  a2[7] = a1[71];
  return 32;
}

uint64_t sub_1AF1C2020(_OWORD *a1, __int128 *a2)
{
  if (qword_1ED73ABC8 != -1)
  {
    sub_1AFDDE030();
  }

  v4 = sub_1AF0D160C(qword_1ED73ABC0, 0x148uLL);
  sub_1AF1B2AF0(v4);
  __asm { FMOV            V0.4S, #1.0 }

  *(v4 + 208) = _Q0;
  *(v4 + 224) = xmmword_1AFE21CA0;
  *(v4 + 244) = xmmword_1AFE21CB0;
  *(v4 + 260) = xmmword_1AFE21CC0;
  *(v4 + 240) = 1065353216;
  *(v4 + 280) = 0;
  *(v4 + 120) = &off_1F24E8078;
  if (!a2)
  {
    *(v4 + 304) = 0u;
    *(v4 + 320) = 0u;
    *(v4 + 288) = 0u;
    sub_1AF1C213C(v4, 17, 0);
    if (!a1)
    {
      return v4;
    }

LABEL_7:
    *(v4 + 208) = *a1;
    v12 = a1[1];
    v13 = a1[2];
    v14 = a1[4];
    *(v4 + 256) = a1[3];
    *(v4 + 272) = v14;
    *(v4 + 224) = v12;
    *(v4 + 240) = v13;
    return v4;
  }

  v10 = *a2;
  v11 = a2[2];
  *(v4 + 304) = a2[1];
  *(v4 + 320) = v11;
  *(v4 + 288) = v10;
  sub_1AF1C213C(v4, 17, 0);
  if (a1)
  {
    goto LABEL_7;
  }

  (*(v4 + 312))(v4);
  return v4;
}

uint64_t sub_1AF1C213C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AF1C23C8(a1, a2);
  if (result)
  {
    v6 = result;
    if (*result == a3)
    {
      return 0;
    }

    else
    {
      sub_1AF1BE6FC(a1);
      *v6 = a3;
      return 1;
    }
  }

  return result;
}

void sub_1AF1C2198(uint64_t a1, uint64_t a2)
{
  sub_1AF1B2C84(a1, a2);
  if (*(a1 + 288))
  {
    v4 = *(a1 + 288);
    v5 = *(a1 + 320);
    *(a2 + 304) = *(a1 + 304);
    *(a2 + 320) = v5;
    *(a2 + 288) = v4;
  }

  *(a2 + 208) = *(a1 + 208);
  v6 = *(a1 + 224);
  v7 = *(a1 + 240);
  v8 = *(a1 + 272);
  *(a2 + 256) = *(a1 + 256);
  *(a2 + 272) = v8;
  *(a2 + 224) = v6;
  *(a2 + 240) = v7;
  os_unfair_lock_lock(&unk_1EB654CD8);
  v11 = *(a1 + 64);
  v12 = *(a1 + 336);
  if ((v11 != 0) == (v12 == 0))
  {
    v13 = sub_1AF0D5194(v9, v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE0BC(v13, v14, v15, v16, v17, v18, v19, v20);
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  if (v11)
  {
LABEL_6:
    sub_1AF1B2C80(a2, v11);
    v21 = CFRetain(v12);
    *(a2 + 336) = v21;
    sub_1AF1C2274(v21);
  }

LABEL_7:
  os_unfair_lock_unlock(&unk_1EB654CD8);
}

void sub_1AF1C2274(void *key)
{
  Value = CFDictionaryGetValue(qword_1ED731B00, key);
  if (!Value)
  {
    v4 = sub_1AF0D5194(0, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE134(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFDictionarySetValue(qword_1ED731B00, key, Value + 1);
}

uint64_t sub_1AF1C22E4(uint64_t a1, int a2)
{
  v2 = a1 + 232;
  v3 = a1 + 236;
  v4 = a1 + 240;
  if (a2 != 18)
  {
    v4 = 0;
  }

  if (a2 != 7)
  {
    v3 = v4;
  }

  if (a2 != 6)
  {
    v2 = v3;
  }

  v5 = a1 + 220;
  v6 = a1 + 228;
  if (a2 != 5)
  {
    v6 = 0;
  }

  if (a2 != 4)
  {
    v5 = v6;
  }

  if (a2 <= 5)
  {
    v2 = v5;
  }

  v7 = a1 + 216;
  v8 = a1 + 224;
  if (a2 != 3)
  {
    v8 = 0;
  }

  if (a2 != 2)
  {
    v7 = v8;
  }

  v9 = a1 + 208;
  v10 = a1 + 212;
  if (a2 != 1)
  {
    v10 = 0;
  }

  if (a2)
  {
    v9 = v10;
  }

  if (a2 <= 1)
  {
    v7 = v9;
  }

  if (a2 <= 3)
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF1C236C(uint64_t a1, int a2, float a3)
{
  result = sub_1AF1C22E4(a1, a2);
  if (result)
  {
    v6 = result;
    if (*result == a3)
    {
      return 0;
    }

    else
    {
      sub_1AF1BE6FC(a1);
      *v6 = a3;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AF1C23C8(uint64_t a1, int a2)
{
  v2 = a1 + 268;
  v3 = a1 + 276;
  v4 = a1 + 280;
  if (a2 != 19)
  {
    v4 = 0;
  }

  if (a2 != 17)
  {
    v3 = v4;
  }

  if (a2 != 15)
  {
    v2 = v3;
  }

  v5 = a1 + 260;
  v6 = a1 + 264;
  if (a2 != 13)
  {
    v6 = 0;
  }

  if (a2 != 12)
  {
    v5 = v6;
  }

  if (a2 <= 14)
  {
    v2 = v5;
  }

  v7 = a1 + 252;
  v8 = a1 + 256;
  if (a2 != 11)
  {
    v8 = 0;
  }

  if (a2 != 10)
  {
    v7 = v8;
  }

  v9 = a1 + 244;
  v10 = a1 + 248;
  if (a2 != 9)
  {
    v10 = 0;
  }

  if (a2 != 8)
  {
    v9 = v10;
  }

  if (a2 <= 9)
  {
    v7 = v9;
  }

  if (a2 <= 11)
  {
    return v7;
  }

  else
  {
    return v2;
  }
}

int *sub_1AF1C2450(uint64_t a1, int a2)
{
  result = sub_1AF1C23C8(a1, a2);
  if (result)
  {
    return *result;
  }

  return result;
}

BOOL sub_1AF1C2470(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE1AC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 280) == 2;
}

uint64_t sub_1AF1C24C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE1AC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 280) = v12;
  return sub_1AF1BE6FC(a1);
}

BOOL sub_1AF1C2528(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE1AC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 280) == 1;
}

uint64_t sub_1AF1C2578(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE1AC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 280) = v2;
  return sub_1AF1BE6FC(a1);
}

void sub_1AF1C25D4(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 224) != a3)
  {
    *(result + 224) = a3;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C263C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 260);
}

void sub_1AF1C2684(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 260) != v2)
  {
    *(result + 260) = v2;
    sub_1AF1BE6FC(result);
  }
}

void sub_1AF1C26EC(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 212) != a3)
  {
    *(result + 212) = a3;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C2754(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 252);
}

void sub_1AF1C279C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 252) != v2)
  {
    *(result + 252) = v2;
    sub_1AF1BE6FC(result);
  }
}

void sub_1AF1C2804(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 216) != a3)
  {
    *(result + 216) = a3;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C286C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 256);
}

void sub_1AF1C28B4(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 256) != v2)
  {
    *(result + 256) = v2;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C291C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 276);
}

void sub_1AF1C2964(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 276) != v2)
  {
    *(result + 276) = v2;
    sub_1AF1BE6FC(result);
  }
}

void sub_1AF1C29CC(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 208) != a3)
  {
    *(result + 208) = a3;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C2A34(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 248);
}

void sub_1AF1C2A7C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 248) != v2)
  {
    *(result + 248) = v2;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C2AE4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 272);
}

void sub_1AF1C2B2C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = v2 & ~(v2 >> 31);
  if (v12 != *(result + 272))
  {
    *(result + 272) = v12;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C2B98(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 264);
}

void sub_1AF1C2BE0(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 264) != v2)
  {
    *(result + 264) = v2;
    sub_1AF1BE6FC(result);
  }
}

void sub_1AF1C2C48(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 228) != a3)
  {
    *(result + 228) = a3;
    sub_1AF1BE6FC(result);
  }
}

float sub_1AF1C2CB0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 240);
}

void sub_1AF1C2CF8(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 240) != a3)
  {
    *(result + 240) = a3;
    sub_1AF1BE6FC(result);
  }
}

void sub_1AF1C2D60(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 220) != a3)
  {
    *(result + 220) = a3;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C2DC8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 244);
}

void sub_1AF1C2E10(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 244) != v2)
  {
    *(result + 244) = v2;
    sub_1AF1BE6FC(result);
  }
}

void sub_1AF1C2E78(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 236) != a3)
  {
    *(result + 236) = a3;
    sub_1AF1BE6FC(result);
  }
}

uint64_t sub_1AF1C2EE0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 268);
}

void sub_1AF1C2F28(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 268) != v2)
  {
    *(result + 268) = v2;
    sub_1AF1BE6FC(result);
  }
}

void sub_1AF1C2F90(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE044(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 232) != a3)
  {
    *(result + 232) = a3;
    sub_1AF1BE6FC(result);
  }
}

void sub_1AF1C2FF8()
{
  if (!qword_1ED731AF8)
  {
    v0 = *MEMORY[0x1E695E480];
    v1 = MEMORY[0x1E695E9D8];
    qword_1ED731AF8 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    qword_1ED731B00 = CFDictionaryCreateMutable(v0, 0, v1, 0);
  }
}

void sub_1AF1C3074(uint64_t a1)
{
  sub_1AF1C2FF8();
  v2 = *(a1 + 336);
  if (v2)
  {
    Value = CFDictionaryGetValue(qword_1ED731B00, *(a1 + 336));
    v5 = Value;
    if (Value)
    {
      if (Value == 1)
      {
        CFDictionaryRemoveValue(qword_1ED731AF8, v2);
        CFDictionaryRemoveValue(qword_1ED731B00, v2);
LABEL_8:
        CFRelease(*(a1 + 336));
        *(a1 + 336) = 0;
        return;
      }
    }

    else
    {
      v6 = sub_1AF0D5194(0, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDE224(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    CFDictionarySetValue(qword_1ED731B00, v2, v5 - 1);
    goto LABEL_8;
  }
}

id sub_1AF1C3130(void *a1)
{
  if (a1[42])
  {
    os_unfair_lock_lock(&unk_1EB654CD8);
    sub_1AF1C3074(a1);
    os_unfair_lock_unlock(&unk_1EB654CD8);
  }

  return sub_1AF1B1D5C(a1);
}

__CFString *sub_1AF1C3190(const void *a1, uint64_t a2)
{
  memset(__s1, 0, sizeof(__s1));
  sub_1AF1BE95C(a1, a2, __s1);
  if (!memcmp(__s1, &xmmword_1F24E80B0, 0x30uLL))
  {
    v3 = @"Box";
  }

  else if (!memcmp(__s1, &xmmword_1F24E80E0, 0x30uLL))
  {
    v3 = @"Pyramid";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8140, 0x30uLL))
  {
    v3 = @"Cylinder";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8170, 0x30uLL))
  {
    v3 = @"Cone";
  }

  else if (!memcmp(__s1, &xmmword_1F24E81A0, 0x30uLL))
  {
    v3 = @"Tube";
  }

  else if (!memcmp(__s1, &xmmword_1F24E81D0, 0x30uLL))
  {
    v3 = @"Capsule";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8200, 0x30uLL))
  {
    v3 = @"Torus";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8110, 0x30uLL))
  {
    v3 = @"Sphere";
  }

  else if (!memcmp(__s1, &xmmword_1F24E8080, 0x30uLL))
  {
    v3 = @"Plane";
  }

  else
  {
    v3 = @"Unknown";
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = sub_1AF3753A8(a1);
  v7 = sub_1AF1B1F38(a1, v6);
  CFStringAppendFormat(Mutable, 0, @"<%s(%@) %p | %@\n", v5, v3, a1, v7);
  v9 = sub_1AF1B2C1C(a1, v8);
  CFStringAppendFormat(Mutable, 0, @"  mesh: %@\n", v9);
  if (sub_1AF1B1FE0(a1, v10) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = sub_1AF1B2030(a1, v11);
      CFStringAppendFormat(Mutable, 0, @"  mat%d: %@\n", v11++, v12);
    }

    while (v11 < sub_1AF1B1FE0(a1, v13));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t sub_1AF1C33EC(uint64_t a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    *a3 = vsubq_f32(*v4, v4[1]);
    *a4 = vaddq_f32(**(a1 + 104), *(*(a1 + 104) + 16));
    return 1;
  }

  else
  {
    v6 = *(a1 + 296);
    if (v6)
    {
      return v6();
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1AF1C3434(uint64_t a1)
{
  v1 = *(a1 + 304);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1C344C(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  return sub_1AF1BE6FC(a1);
}

uint64_t sub_1AF1C3494(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDAF5C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1C2020((a1 + 208), 0);
  sub_1AF1C2198(a1, v11);
  return v11;
}

void *sub_1AF1C34F8(CFTypeRef cf, const void *a2, void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    v12 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v21 = ClassWithTypeID[13]) != 0)
  {
    return v21(cf, a2, a3, a4, a5, a6);
  }

  else
  {
    return memcpy(a3, a2, a4);
  }
}

void *sub_1AF1C35C0(CFTypeRef cf, void *a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  if (!cf)
  {
    v12 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v12, v13, v14, v15, v16, v17, v18, v19);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v21 = ClassWithTypeID[12]) != 0)
  {
    return v21(cf, a2, a3, a4, a5, a6);
  }

  else
  {
    return memcpy(a2, a3, a4);
  }
}

void *(*sub_1AF1C3688(const void *a1))(int a1, const void *a2, void *__dst, size_t __n)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return sub_1AF1C36D0;
  }

  result = ClassWithTypeID[13];
  if (!result)
  {
    return sub_1AF1C36D0;
  }

  return result;
}

void *(*sub_1AF1C36DC(const void *a1))(int a1, void *__dst, void *__src, size_t __n)
{
  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return sub_1AF1C3724;
  }

  result = ClassWithTypeID[12];
  if (!result)
  {
    return sub_1AF1C3724;
  }

  return result;
}

uint64_t sub_1AF1C3734(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696)
  {
    v13 = ClassWithTypeID[23];
    if (v13)
    {
      return v13(cf);
    }
  }

  v15 = sub_1AF0D5194(ClassWithTypeID, v12);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDE314(cf, v15);
  }

  return 0;
}

void *sub_1AF1C37D4(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFGetTypeID(cf);
  result = _CFRuntimeGetClassWithTypeID();
  if (*result == 749405696)
  {
    v13 = result[24];
    if (v13)
    {
      return v13(cf, a2);
    }
  }

  return result;
}

uint64_t sub_1AF1C3858(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v12 = ClassWithTypeID[25]) != 0)
  {
    return v12(cf);
  }

  else
  {
    return 0;
  }
}

void *sub_1AF1C38D4(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFGetTypeID(cf);
  result = _CFRuntimeGetClassWithTypeID();
  if (*result == 749405696)
  {
    v13 = result[26];
    if (v13)
    {
      return v13(cf, a2);
    }
  }

  return result;
}

uint64_t sub_1AF1C3958(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!cf)
  {
    v8 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v17 = ClassWithTypeID[15]) != 0)
  {
    return v17(cf, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1C39FC(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  if (!cf)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID == 749405696 && (v15 = ClassWithTypeID[16]) != 0)
  {
    return v15(cf, a2, a3);
  }

  else
  {
    return 0;
  }
}

void sub_1AF1C3A90(void *cf, uint64_t a2)
{
  if (!cf && (v4 = sub_1AF0D5194(0, a2), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDE29C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_1ED737C18 != -1)
  {
    sub_1AFDDE38C();
  }

  v12 = qword_1ED737C10;
  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  v15 = *ClassWithTypeID;
  if (*ClassWithTypeID == 749405696)
  {
    v16 = ClassWithTypeID;
  }

  else
  {
    v16 = 0;
  }

  if (cf[6] == a2)
  {
    v17 = cf[7];
    if (v17)
    {
      v18 = v17 - 1;
      cf[7] = v18;
      if (!v18)
      {
        if (v15 == 749405696)
        {
          v19 = v16[19];
          if (v19)
          {
            v19(cf, a2);
          }
        }

        v20 = *(v12 + 16);
        if (v20)
        {
          v20(cf, a2);
        }

        if (v15 == 749405696)
        {
          v21 = v16[17];
          if (v21)
          {
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = sub_1AF1C3C48;
            v23[3] = &unk_1E7A7B8C0;
            v23[4] = a2;
            v21(cf, v23);
          }
        }

        sub_1AF1C3C58(cf, a2);
        cf[6] = 0;
      }
    }

    else if ((byte_1EB658620 & 1) == 0)
    {
      byte_1EB658620 = 1;
      v22 = sub_1AF0D5194(ClassWithTypeID, v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDE3B4(cf, v22);
      }
    }
  }
}

void sub_1AF1C3C58(void *a1, uint64_t a2)
{
  v3 = sub_1AF1CF830(a2, a2);
  if (v3)
  {
    v4 = v3;
    sub_1AF1183E0(v3, a1);

    sub_1AF11960C(v4, a1);
  }
}

void sub_1AF1C3CB4(uint64_t *cf, uint64_t a2)
{
  if (!cf && (v4 = sub_1AF0D5194(0, a2), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDE29C(v4, v5, v6, v7, v8, v9, v10, v11);
    if (!a2)
    {
      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  if (qword_1ED737C18 != -1)
  {
    sub_1AFDDE38C();
  }

  v12 = qword_1ED737C10;
  CFGetTypeID(cf);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  v14 = *ClassWithTypeID;
  if (*ClassWithTypeID == 749405696)
  {
    v15 = ClassWithTypeID;
  }

  else
  {
    v15 = 0;
  }

  v16 = cf[6];
  if (!v16 || v16 == a2)
  {
    ++cf[7];
    if (v16)
    {
      return;
    }
  }

  else
  {
    if (v14 == 749405696)
    {
      v17 = v15[19];
      if (v17)
      {
        v17(cf, cf[6]);
      }
    }

    v18 = v12[2];
    if (v18)
    {
      v18(cf, v16);
    }

    if (v14 == 749405696)
    {
      v19 = v15[17];
      if (v19)
      {
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = sub_1AF1C3F44;
        v28[3] = &unk_1E7A7B8C0;
        v28[4] = v16;
        v19(cf, v28);
      }
    }

    sub_1AF1C3C58(cf, v16);
    cf[7] = 1;
  }

  cf[6] = a2;
  v20 = v12[1];
  if (v20)
  {
    v20(cf, a2);
  }

  if (v14 == 749405696)
  {
    v21 = v15[18];
    if (v21)
    {
      v21(cf, a2);
    }

    v22 = v15[17];
    if (v22)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1AF1C3F54;
      v27[3] = &unk_1E7A7B8C0;
      v27[4] = a2;
      v22(cf, v27);
    }
  }

  if (v16)
  {
    v23 = v12[4];
    if (v23)
    {
      v23(cf, v16);
    }

    if (v14 == 749405696)
    {
      v24 = v15[21];
      if (v24)
      {
        v24(cf, v16);
      }
    }
  }

  v25 = v12[3];
  if (v25)
  {
    v25(cf, a2);
  }

  if (v14 == 749405696)
  {
    v26 = v15[20];
    if (v26)
    {
      v26(cf, a2);
    }
  }
}

uint64_t sub_1AF1C3F64(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

uint64_t sub_1AF1C3FAC(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE29C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF16D234(a1);
  if ((v11 & 1) == 0)
  {
    v13 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE42C(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  return a1[6];
}

uint64_t sub_1AF1C4020(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  CFGetTypeID(a1);
  ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
  if (*ClassWithTypeID != 749405696)
  {
    return 0;
  }

  v5 = ClassWithTypeID[22];
  if (!v5)
  {
    return 0;
  }

  return v5(a1, a2);
}

uint64_t sub_1AF1C4094(uint64_t a1, uint64_t a2)
{
  sub_1AF16CB64(a1, a2);
  result = _CFRuntimeGetClassWithTypeID();
  qword_1ED737C10 = result + 136;
  return result;
}

double sub_1AF1C40BC@<D0>(uint64_t a1@<X8>)
{
  result = 7.29115681e-304;
  *a1 = xmmword_1AFE21D20;
  *(a1 + 13) = 4294902016;
  return result;
}

unint64_t sub_1AF1C40D8(unsigned __int8 *a1, int8x16_t a2)
{
  a2.i32[0] = *(a1 + 7);
  a2.i16[2] = *(a1 + 11);
  a2.i8[6] = a1[13];
  a2.i32[2] = *(a1 + 14);
  a2.i16[6] = *(a1 + 9);
  a2.i8[14] = a1[20];
  v2.i64[0] = 0xFFFFFFFFFFFFFFLL;
  v2.i64[1] = 0xFFFFFFFFFFFFFFLL;
  v3 = vandq_s8(a2, v2);
  v4.i64[0] = 255;
  v4.i64[1] = 255;
  v3.i64[0] = (a2.i64[0] >> 23);
  v3.i64[1] = v3.i64[1] >> 23;
  v5 = vshlq_u64(vorrq_s8(vorrq_s8(vorrq_s8(vandq_s8(vshrq_n_u64(a2, 5uLL), vdupq_n_s64(0x7FFF8uLL)), vandq_s8(a2, v4)), vorrq_s8(vandq_s8(vshrq_n_u64(a2, 0xDuLL), vdupq_n_s64(0x7F80000uLL)), vandq_s8(vshrq_n_u64(a2, 0x12uLL), xmmword_1AFE21CF0))), vandq_s8(v3, xmmword_1AFE21D00)), xmmword_1AFE21D10);
  return a1[2] | (2 * a1[3]) | (4 * a1[4]) | (32 * a1[5]) | (a1[6] << 6) | *a1 | v5.i64[0] | v5.i64[1];
}

void sub_1AF1C41C8(_BYTE *a1)
{
  if (a1[37] == 1)
  {
    v2 = os_unfair_lock_trylock(&unk_1ED7398B0);
    if (v2)
    {
      v4 = sub_1AF0D5194(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDE4A4(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    v12 = CFSetContainsValue(qword_1ED739A90, a1);
    if (!v12)
    {
      v14 = sub_1AF0D5194(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDE51C(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    CFSetRemoveValue(qword_1ED739A90, a1);
    sub_1AF1BE334(@"kCFXNotificationRasterizerStatesDidDie", a1, 0, 1u);
  }
}

CFStringRef sub_1AF1C42BC(unsigned __int8 *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = sub_1AF3753A8(a1);
  return CFStringCreateWithFormat(v2, 0, @"<%s %p | ZRead:%d ZWrite:%d ZFunc:%d cull:%d fill:%d>", v3, a1, a1[18], a1[19], a1[20], a1[16], a1[17]);
}

uint64_t sub_1AF1C432C()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED739908 = result;
  return result;
}

uint64_t sub_1AF1C4354(uint64_t a1)
{
  if (qword_1ED73ABB8 != -1)
  {
    sub_1AFDDE594();
  }

  if ((*(a1 + 2) & 1) == 0)
  {
    *(a1 + 4) = 1;
  }

  if ((*(a1 + 5) & 1) == 0)
  {
    *(a1 + 10) = 0;
    *(a1 + 7) = 16776961;
    *(a1 + 6) = 0;
    goto LABEL_9;
  }

  if ((*(a1 + 6) & 1) == 0)
  {
LABEL_9:
    *(a1 + 17) = 0;
    *(a1 + 14) = 16776961;
  }

  os_unfair_lock_lock(&unk_1ED7398B0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1AF1C4554;
  v9[3] = &unk_1E7A79CA8;
  v9[4] = &v10;
  v9[5] = a1;
  sub_1AF28A5A0(qword_1ED739A90, v9);
  v2 = v11[3];
  if (v2)
  {
    CFRetain(v2);
  }

  else
  {
    if (qword_1ED739910 != -1)
    {
      sub_1AFDDE5A8();
    }

    v3 = sub_1AF0D160C(qword_1ED739908, 0x18uLL);
    v4 = v11;
    v11[3] = v3;
    v5 = *(a1 + 13);
    *(v3 + 16) = *a1;
    *(v3 + 29) = v5;
    v6 = v4[3];
    v6[37] = 1;
    CFSetSetValue(qword_1ED739A90, v6);
  }

  os_unfair_lock_unlock(&unk_1ED7398B0);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1AF1C44E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFMutableSetRef sub_1AF1C44FC()
{
  v0 = *(MEMORY[0x1E695E9F8] + 16);
  *&v2.version = *MEMORY[0x1E695E9F8];
  *&v2.release = v0;
  *&v2.equal = *(MEMORY[0x1E695E9F8] + 32);
  v2.retain = 0;
  v2.release = 0;
  result = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, &v2);
  qword_1ED739A90 = result;
  return result;
}

uint64_t sub_1AF1C4554(uint64_t result, void *a2)
{
  v2 = *(result + 40);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 13);
  if (v3 == a2[2] && v4 == a2[3] && v5 == *(a2 + 29))
  {
    *(*(*(result + 32) + 8) + 24) = a2;
  }

  return result;
}

__n128 sub_1AF1C458C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD6A20(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  result = *(a1 + 16);
  *a3 = result;
  *(a3 + 13) = *(a1 + 29);
  return result;
}

uint64_t sub_1AF1C45EC()
{
  result = qword_1EB658628;
  if (!qword_1EB658628)
  {
    v1[0] = xmmword_1AFE21D20;
    *(v1 + 13) = 4294902016;
    result = sub_1AF1C4354(v1);
    qword_1EB658628 = result;
  }

  return result;
}

void sub_1AF1C4640(CFTypeRef cf)
{
  if (cf)
  {
    if (*(cf + 37) == 1)
    {
      os_unfair_lock_lock(&unk_1ED7398B0);
      CFRelease(cf);

      os_unfair_lock_unlock(&unk_1ED7398B0);
    }

    else
    {

      CFRelease(cf);
    }
  }
}

unint64_t sub_1AF1C46C8(void *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_stencilCompareFunction(a1, a2, a3);
  v7 = sub_1AF1F13F4(v5, v6);
  Mask = objc_msgSend_readMask(a1, v8, v9);
  v13 = objc_msgSend_writeMask(a1, v11, v12);
  v16 = objc_msgSend_depthStencilPassOperation(a1, v14, v15);
  v18 = sub_1AF1F14F0(v16, v17);
  v21 = objc_msgSend_depthFailureOperation(a1, v19, v20);
  v23 = sub_1AF1F14F0(v21, v22);
  v26 = objc_msgSend_stencilFailureOperation(a1, v24, v25);
  return (v23 << 40) | (sub_1AF1F14F0(v26, v27) << 48) | (v18 << 32) | (a2 << 24) | (v13 << 16) | (Mask << 8) | v7;
}

void sub_1AF1C4780(void *a1)
{
  if (qword_1ED731620 == a1)
  {
    qword_1ED731620 = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a1, @"kCFXNotificationImageProxyWillDie", 0);
  v3 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v3, a1, @"kCFXNotificationImageWillDie", 0);
  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }
}

uint64_t sub_1AF1C4824()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB654CF8 = result;
  return result;
}

uint64_t sub_1AF1C484C()
{
  if (qword_1EB654D00 != -1)
  {
    sub_1AFDDE5D0();
  }

  v1 = sub_1AF0D160C(qword_1EB654CF8, 0x20uLL);
  if (!v1)
  {
    v2 = sub_1AF0D5194(0, v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE5E4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(v1 + 16) = 0;
  v10 = *MEMORY[0x1E695E480];
  v11 = MEMORY[0x1E695E9D8];
  v12 = MEMORY[0x1E695E9E8];
  *(v1 + 24) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(v1 + 32) = CFDictionaryCreateMutable(v10, 0, 0, v12);
  *(v1 + 40) = CFDictionaryCreateMutable(v10, 0, v11, v12);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v1, sub_1AF1C4984, @"kCFXNotificationImageWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v14 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v14, v1, sub_1AF1C4984, @"kCFXNotificationImageProxyWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return v1;
}

uint64_t sub_1AF1C4990(uint64_t a1, uint64_t a2)
{
  if (qword_1ED731B48 != -1)
  {
    sub_1AFDDE65C();
  }

  return qword_1ED731620;
}

uint64_t sub_1AF1C49C8()
{
  result = sub_1AF1C484C();
  qword_1ED731620 = result;
  return result;
}

double sub_1AF1C49E8(void *a1, const char *a2, uint64_t a3)
{
  v4 = sub_1AF37113C(a1, a2, a3);
  if (v4 != 0.0)
  {
    return v4;
  }

  v5 = VFXHasSpecialResourceBundle();
  if (!v5)
  {
    return v4;
  }

  v8 = VFXGetResourceBundle(v5, v6, v7);
  v11 = objc_msgSend_bundlePath(v8, v9, v10);
  v13 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, a1);

  return sub_1AF37113C(v13, v14, v15);
}

const void *sub_1AF1C4A5C(_BOOL8 a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  if (!a1 && (v8 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDE670(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDE6E8(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  os_unfair_lock_lock((v7 + 16));
  v51 = 0;
  v23 = sub_1AF1C4D84(a2, &v51);
  v50 = 0.0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(*(v7 + 24), v23);
  v27 = 0.0;
  if (Value)
  {
    v28 = objc_msgSend_copyWeakRef(Value, v25, v26);
    if (v28)
    {
      v29 = v28;
      if (v51 == 1)
      {
        v30 = VFXHasSpecialResourceBundle();
        v27 = sub_1AF1C49E8(v23, v31, v32);
        v50 = v27;
        if (v27 != 0.0)
        {
          v33 = CFDictionaryGetValue(*(v7 + 40), v23);
          if (v33)
          {
            CFNumberGetValue(v33, kCFNumberDoubleType, &valuePtr);
            v34 = valuePtr;
          }

          else
          {
            v34 = 0.0;
          }

          if (v34 == v27)
          {
            goto LABEL_26;
          }

LABEL_22:
          CFDictionaryRemoveValue(*(v7 + 40), v23);
          CFDictionaryRemoveValue(*(v7 + 24), v23);
          CFDictionaryRemoveValue(*(v7 + 32), v29);
          CFRelease(v29);
          v37 = 1;
          if (!a4)
          {
            goto LABEL_23;
          }

          goto LABEL_14;
        }

        if (v30)
        {
          goto LABEL_22;
        }
      }

LABEL_26:
      os_unfair_lock_unlock((v7 + 16));
      return v29;
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v35 = *(MEMORY[0x1E695E9E8] + 32);
    v36 = *(v7 + 32);
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1AF1C4E6C;
    v44[3] = &unk_1E7A7B8E8;
    v44[5] = v35;
    v44[6] = v23;
    v44[4] = &v45;
    sub_1AF28A67C(v36, v44);
    CFDictionaryRemoveValue(*(v7 + 40), v23);
    CFDictionaryRemoveValue(*(v7 + 24), v23);
    CFDictionaryRemoveValue(*(v7 + 32), v46[3]);
    _Block_object_dispose(&v45, 8);
  }

  v37 = 0;
  if (!a4)
  {
LABEL_23:
    os_unfair_lock_unlock((v7 + 16));
    return 0;
  }

LABEL_14:
  if (a3)
  {
    v29 = (*(a4 + 16))(a4);
    v38 = objc_alloc_init(VFXWeakPointer);
    objc_msgSend_setWeakRef_(v38, v39, v29);
    CFDictionarySetValue(*(v7 + 24), v23, v38);
    CFDictionarySetValue(*(v7 + 32), v29, v23);

    if (v51 == 1)
    {
      if ((v37 & 1) == 0)
      {
        v27 = sub_1AF1C49E8(v23, v40, v41);
        v50 = v27;
      }

      if (v27 != 0.0)
      {
        v42 = CFNumberCreate(0, kCFNumberDoubleType, &v50);
        CFDictionarySetValue(*(v7 + 40), v23, v42);
        CFRelease(v42);
      }
    }

    goto LABEL_26;
  }

  os_unfair_lock_unlock((v7 + 16));
  return (*(a4 + 16))(a4);
}

void sub_1AF1C4D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1AF1C4D84(void *a1, _BYTE *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFURLGetTypeID())
  {
    if (!objc_msgSend_query(a1, v5, v6))
    {
      *a2 = 1;
      if (objc_msgSend_isFileURL(a1, v7, v8))
      {

        return objc_msgSend_relativePath(a1, v9, v10);
      }

      else
      {

        return objc_msgSend_path(a1, v9, v10);
      }
    }

LABEL_11:
    *a2 = 0;
    return a1;
  }

  if (v4 != CFStringGetTypeID())
  {
    goto LABEL_11;
  }

  *a2 = 1;

  return objc_msgSend_stringByStandardizingPath(a1, v12, v13);
}

uint64_t sub_1AF1C4E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a1 + 40))(a3, *(a1 + 48));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  return result;
}

void sub_1AF1C4EAC(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDE670(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDDE760(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  os_unfair_lock_lock((v3 + 16));
  Value = CFDictionaryGetValue(*(v3 + 32), a2);
  if (Value)
  {
    v20 = Value;
    CFDictionaryRemoveValue(*(v3 + 40), Value);
    CFDictionaryRemoveValue(*(v3 + 24), v20);
    CFDictionaryRemoveValue(*(v3 + 32), a2);
  }

  os_unfair_lock_unlock((v3 + 16));
}

const void *sub_1AF1C4FA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = *(a1 + 64);
  if (!result || (*a2 == *a3 ? (v8 = *(a2 + 8) == a3[1]) : (v8 = 0), v8 ? (v9 = *(a2 + 16) == a3[2]) : (v9 = 0), v9 ? (v10 = *(a2 + 24) == a3[3]) : (v10 = 0), !v10))
  {
    result = *(a1 + 264);
    if (*a2 != *(a1 + 272) || *(a2 + 8) != *(a1 + 280) || *(a2 + 16) != *(a1 + 288) || *(a2 + 24) != *(a1 + 296))
    {
      if (result)
      {
        CFRelease(result);
      }

      v14 = *(a2 + 16);
      *(a1 + 272) = *a2;
      *(a1 + 288) = v14;
      result = (*(a4 + 16))(a4);
      *(a1 + 264) = result;
    }
  }

  return result;
}

double sub_1AF1C504C(void *a1, void *a2)
{
  if (!a1[8])
  {
    v3 = a1[33];
    if (v3)
    {
      if (*a2 == a1[34] && a2[1] == a1[35] && a2[2] == a1[36] && a2[3] == a1[37])
      {
        a1[8] = CFRetain(v3);
        v3 = a1[33];
      }

      CFRelease(v3);
      a1[33] = 0;
      result = 0.0;
      *(a1 + 17) = 0u;
      *(a1 + 18) = 0u;
    }
  }

  return result;
}

void sub_1AF1C50BC(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  *md = 0u;
  v32 = 0u;
  sub_1AF1C5230(a1, &data, a2);
  CC_SHA256(&data, 0x28u, md);
  sub_1AF1C504C(a1, md);
  if (!*(a1 + 64))
  {
    v3 = *(a1 + 208);
    v5 = *(a1 + 216);
    v4 = *(a1 + 220);
    v6 = *(a1 + 240);
    v28 = *(a1 + 224);
    v29 = v6;
    v30 = *(a1 + 256);
    v7 = v5 * 0.5;
    v8 = v7 <= v4;
    v9 = v7;
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    *&data = v3;
    *(&data + 1) = __PAIR64__(LODWORD(v10), LODWORD(v5));
    v11 = *(a1 + 240);
    v25 = *(a1 + 224);
    v26 = v11;
    v27 = *(a1 + 256);
    v12 = sub_1AF21DA64(&data);
    *&data = v3;
    *(&data + 1) = __PAIR64__(LODWORD(v10), LODWORD(v5));
    v25 = v28;
    v26 = v29;
    v27 = v30;
    v13 = sub_1AF22AD8C(v12, &data);
    if (v13)
    {
      v15 = v13;
      sub_1AF1B2C80(a1, v13);
      CFRelease(v15);
      if (!v12)
      {
        return;
      }

      goto LABEL_7;
    }

    v16 = sub_1AF0D5194(0, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE7D8(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    sub_1AF1B2C80(a1, 0);
    if (v12)
    {
LABEL_7:
      CFRelease(v12);
    }
  }
}

void sub_1AF1C5230(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = sub_1AF1C5A20(a1, a3);
  *(a2 + 4) = sub_1AF1C596C(a1, v5);
  *(a2 + 8) = sub_1AF1C5804(a1, v6);
  *(a2 + 16) = sub_1AF1C58B8(a1, v7);
  v8 = *(a1 + 256);
  *(a2 + 24) = *(a1 + 240);
  *(a2 + 32) = v8;
}

void sub_1AF1C5294(uint64_t a1, uint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  memset(md, 0, sizeof(md));
  sub_1AF1C547C(a1, &data, a2);
  CC_SHA256(&data, 0x70u, md);
  sub_1AF1C504C(a1, md);
  if (!*(a1 + 64))
  {
    sub_1AF1C54E8(a1, v3);
    v4 = (a1 + 344);
    if (*(a1 + 337))
    {
      v5 = (a1 + 352);
    }

    else
    {
      v5 = (MEMORY[0x1E695EFF8] + 8);
    }

    if (!*(a1 + 337))
    {
      v4 = MEMORY[0x1E695EFF8];
    }

    v6 = *v4;
    v7 = *v5;
    v8 = *(a1 + 208);
    v10 = *(a1 + 216);
    v9 = *(a1 + 220);
    v11 = *(a1 + 240);
    v12 = *(a1 + 224);
    v34 = v12;
    v35 = v11;
    v36 = *(a1 + 256);
    v13 = v10 * 0.5;
    v14 = v13 <= v9;
    v15 = v13;
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v9;
    }

    v17 = *(a1 + 304);
    *&data = v8;
    *(&data + 1) = __PAIR64__(LODWORD(v16), LODWORD(v10));
    v38 = v12;
    v39 = *(a1 + 240);
    *&v40 = *(a1 + 256);
    v18 = sub_1AF22B3D4(v17, &data);
    *&v32[0] = v8;
    *(&v32[0] + 1) = __PAIR64__(LODWORD(v16), LODWORD(v10));
    v32[1] = v34;
    v32[2] = v35;
    v33 = v36;
    v19 = *(a1 + 352);
    v39 = *(a1 + 336);
    v40 = v19;
    v41 = *(a1 + 368);
    v20 = *(a1 + 320);
    data = *(a1 + 304);
    v38 = v20;
    v21 = sub_1AF22AEF0(v18, v32, &data, v6, v7);
    if (v21)
    {
      v23 = v21;
      sub_1AF1B2C80(a1, v21);
      CFRelease(v23);
      if (!v18)
      {
        return;
      }

      goto LABEL_12;
    }

    v24 = sub_1AF0D5194(0, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE7D8(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    sub_1AF1B2C80(a1, 0);
    if (v18)
    {
LABEL_12:
      CFRelease(v18);
    }
  }
}

float sub_1AF1C547C@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v5 = (a1 + 312);
  sub_1AF1C5230(a1, a2, a3);
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 40) = *v5;
  *(a2 + 56) = *(a1 + 328);
  v6 = v5[3];
  *(a2 + 72) = v5[2];
  *(a2 + 64) = *(a1 + 336);
  *(a2 + 88) = v6;
  result = *(a1 + 212);
  *(a2 + 104) = result;
  return result;
}

void sub_1AF1C54E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 304))
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
    v7 = v5;
    if (*(a1 + 336) == 1)
    {
      if (*(a1 + 337) && (v8 = *(a1 + 328) - 1, v8 <= 3))
      {
        objc_msgSend_setAlignment_(v5, v6, qword_1AFE21D38[v8]);
      }

      else
      {
        objc_msgSend_setAlignment_(v5, v6, 4);
      }
    }

    else
    {
      if (*(a1 + 337))
      {
        v9 = (*(a1 + 332) - 1);
        if (v9 >= 3)
        {
          v10 = 2;
        }

        else
        {
          v10 = v9 + 3;
        }
      }

      else
      {
        v10 = 2;
      }

      objc_msgSend_setLineBreakMode_(v5, v6, v10);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v13 = MEMORY[0x1E69DB648];
    if (isKindOfClass)
    {
      v14 = objc_msgSend_attribute_atIndex_effectiveRange_(*(a1 + 312), v12, *MEMORY[0x1E69DB648], 0, 0);
    }

    else
    {
      v15 = *(a1 + 320);
      if (v15)
      {
LABEL_21:
        v16 = objc_msgSend_dictionaryWithObjectsAndKeys_(MEMORY[0x1E695DF20], v12, v15, *v13, v7, *MEMORY[0x1E69DB688], 0);
        v17 = objc_alloc(MEMORY[0x1E696AAB0]);
        if (*(a1 + 312))
        {
          v19 = objc_msgSend_initWithString_attributes_(v17, v18, *(a1 + 312), v16);
        }

        else
        {
          v19 = objc_msgSend_initWithString_attributes_(v17, v18, &stru_1F2575650, v16);
        }

        v4 = v19;
        goto LABEL_25;
      }

      v14 = objc_msgSend_fontWithName_size_(MEMORY[0x1E69DB878], v12, @"Helvetica", 12.0);
    }

    v15 = v14;
    goto LABEL_21;
  }

  v4 = *(a1 + 312);
LABEL_25:
  v20 = CTFramesetterCreateWithAttributedString(v4);
  v21 = v20;
  if (*(a1 + 337) == 1)
  {
    v22 = *(a1 + 344);
    v23 = *(a1 + 352);
    width = *(a1 + 360);
    height = *(a1 + 368);
  }

  else
  {
    v31.width = 1.79769313e308;
    v29.location = 0;
    v29.length = 0;
    v31.height = 1.79769313e308;
    v26 = CTFramesetterSuggestFrameSizeWithConstraints(v20, v29, 0, v31, 0);
    width = v26.width;
    height = v26.height;
    v22 = 0;
    v23 = 0;
  }

  v27 = CGPathCreateWithRect(*&v22, 0);
  v30.location = 0;
  v30.length = 0;
  Frame = CTFramesetterCreateFrame(v21, v30, v27, 0);
  sub_1AF1C6068(a1, Frame);
  CFRelease(v21);
  CFRelease(Frame);

  CFRelease(v27);
}

uint64_t sub_1AF1C5750(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

void sub_1AF1C5798(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 224) != v2)
  {
    *(result + 224) = v2;
    sub_1AF1B2C80(result, 0);
  }
}

float sub_1AF1C5804(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 220);
}

void sub_1AF1C584C(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 220) != a3)
  {
    *(result + 220) = a3;
    sub_1AF1B2C80(result, 0);
  }
}

float sub_1AF1C58B8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 228);
}

void sub_1AF1C5900(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 228) != a3)
  {
    *(result + 228) = a3;
    sub_1AF1B2C80(result, 0);
  }
}

float sub_1AF1C596C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

void sub_1AF1C59B4(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(result + 216) != a3)
  {
    *(result + 216) = a3;
    sub_1AF1B2C80(result, 0);
  }
}

uint64_t sub_1AF1C5A20(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208);
}

void sub_1AF1C5A68(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE850(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 208) != v2)
  {
    *(result + 208) = v2;
    sub_1AF1B2C80(result, 0);
  }
}

uint64_t sub_1AF1C5ADC(uint64_t a1, void **a2)
{
  sub_1AF1C5A68(a1, *a2);
  sub_1AF1C59B4(a1, v4, *(a2 + 1));
  sub_1AF1C584C(a1, v5, *(a2 + 2));
  sub_1AF1C5900(a1, v6, *(a2 + 4));
  sub_1AF1C5B50(a1, a2[3]);
  v7 = a2[4];

  return sub_1AF1C5BF8(a1, v7);
}

uint64_t sub_1AF1C5B50(uint64_t result, void *a2)
{
  v8 = *(result + 240);
  if (v8 != a2)
  {
    v21 = v4;
    v22 = v3;
    v23 = v2;
    v10 = result;

    *(v10 + 240) = a2;
    objc_msgSend_flatness(a2, v11, v12);
    *&v13 = v13;
    *(v10 + 212) = LODWORD(v13);
    v14 = *(v10 + 232);
    if (v14 != objc_msgSend_CGPath(a2, v15, v16))
    {
      v19 = *(v10 + 232);
      if (v19)
      {
        CFRelease(v19);
        *(v10 + 232) = 0;
      }

      v20 = objc_msgSend_CGPath(a2, v17, v18, v5, v21, v22, v23, v6);
      if (v20)
      {
        v20 = CFRetain(v20);
      }

      *(v10 + 232) = v20;
    }

    return sub_1AF1B2C80(v10, 0);
  }

  return result;
}

uint64_t sub_1AF1C5BF8(uint64_t result, void *a2)
{
  v8 = *(result + 256);
  if (v8 != a2)
  {
    v18 = v4;
    v19 = v3;
    v20 = v2;
    v10 = result;

    *(v10 + 256) = a2;
    v11 = *(v10 + 248);
    if (v11 != objc_msgSend_CGPath(a2, v12, v13))
    {
      v16 = *(v10 + 248);
      if (v16)
      {
        CFRelease(v16);
        *(v10 + 248) = 0;
      }

      v17 = objc_msgSend_CGPath(a2, v14, v15, v5, v18, v19, v20, v6);
      if (v17)
      {
        v17 = CFRetain(v17);
      }

      *(v10 + 248) = v17;
    }

    return sub_1AF1B2C80(v10, 0);
  }

  return result;
}

uint64_t sub_1AF1C5C98(uint64_t result, float a2)
{
  if (a2 <= 0.0)
  {
    a2 = 0.1;
  }

  if (*(result + 212) != a2)
  {
    *(result + 212) = a2;
    return sub_1AF1B2C80(result, 0);
  }

  return result;
}

uint64_t sub_1AF1C5CEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v9 = *(a2 + 32);
  sub_1AF1C5ADC(a1, v8);
  sub_1AF1C5DE8(a1, *(a2 + 40));
  sub_1AF1C5E4C(a1, *(a2 + 48));
  sub_1AF1C5EB0(a1, *(a2 + 56));
  sub_1AF1C5F04(a1, *(a2 + 60));
  sub_1AF1C5F58(a1, *(a2 + 64));
  v5 = *(a2 + 65);
  if (*(a1 + 337) != v5)
  {
    *(a1 + 337) = v5;
    sub_1AF1B2C80(a1, 0);
  }

  result = sub_1AF1C5FC8(a1, *(a2 + 72), *(a2 + 80), *(a2 + 88), *(a2 + 96));
  v7 = *(a2 + 104);
  if (v7 <= 0.0)
  {
    v7 = 0.1;
  }

  if (*(a1 + 212) != v7)
  {
    *(a1 + 212) = v7;

    return sub_1AF1B2C80(a1, 0);
  }

  return result;
}

uint64_t sub_1AF1C5DE8(uint64_t result, void *a2)
{
  v3 = *(result + 312);
  if (v3 != a2)
  {
    v5 = result;

    *(v5 + 312) = a2;
    sub_1AF1C6068(v5, 0);

    return sub_1AF1B2C80(v5, 0);
  }

  return result;
}

uint64_t sub_1AF1C5E4C(uint64_t result, void *a2)
{
  v3 = *(result + 320);
  if (v3 != a2)
  {
    v5 = result;

    *(v5 + 320) = a2;
    sub_1AF1C6068(v5, 0);

    return sub_1AF1B2C80(v5, 0);
  }

  return result;
}

uint64_t sub_1AF1C5EB0(uint64_t result, int a2)
{
  if (*(result + 328) != a2)
  {
    v3 = result;
    *(result + 328) = a2;
    sub_1AF1C6068(result, 0);

    return sub_1AF1B2C80(v3, 0);
  }

  return result;
}

uint64_t sub_1AF1C5F04(uint64_t result, int a2)
{
  if (*(result + 332) != a2)
  {
    v3 = result;
    *(result + 332) = a2;
    sub_1AF1C6068(result, 0);

    return sub_1AF1B2C80(v3, 0);
  }

  return result;
}

uint64_t sub_1AF1C5F58(uint64_t result, int a2)
{
  if (*(result + 336) != a2)
  {
    v3 = result;
    *(result + 336) = a2;
    sub_1AF1C6068(result, 0);

    return sub_1AF1B2C80(v3, 0);
  }

  return result;
}

uint64_t sub_1AF1C5FAC(uint64_t result, int a2)
{
  if (*(result + 337) != a2)
  {
    *(result + 337) = a2;
    return sub_1AF1B2C80(result, 0);
  }

  return result;
}

uint64_t sub_1AF1C5FC8(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  result = CGRectEqualToRect(*(a1 + 344), v12);
  if ((result & 1) == 0)
  {
    *(a1 + 344) = a2;
    *(a1 + 352) = a3;
    *(a1 + 360) = a4;
    *(a1 + 368) = a5;
    sub_1AF1C6068(a1, 0);

    return sub_1AF1B2C80(a1, 0);
  }

  return result;
}

CFTypeRef sub_1AF1C6068(uint64_t a1, CFTypeRef cf)
{
  result = *(a1 + 304);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 304) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 304) = v5;

    return sub_1AF1B2C80(a1, 0);
  }

  return result;
}

uint64_t sub_1AF1C6100(uint64_t result, int a2)
{
  if (*(result + 338) != a2)
  {
    *(result + 338) = a2;
    return sub_1AF1B2C80(result, 0);
  }

  return result;
}

uint64_t sub_1AF1C611C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABB0 != -1)
  {
    sub_1AFDDE8C8();
  }

  return qword_1ED73ABA8;
}

double sub_1AF1C6154()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73ABA8 = v0;
  v2 = sub_1AF1B2A04(v0, v1);
  sub_1AF1DCFAC(v0, v2);
  sub_1AF1DD02C(@"chamferRadius", 220, 1, 0);
  sub_1AF1DD02C(@"extrusionDepth", 216, 1, 0);
  sub_1AF1DD018();
  unk_1ED72E618 = xmmword_1F24E8388;
  xmmword_1ED72E600 = xmmword_1F24E8398;
  result = *&xmmword_1F24E83A8;
  unk_1ED72E628 = xmmword_1F24E83A8;
  unk_1ED72E638 = unk_1F24E83B8;
  qword_1ED72E648 = qword_1F24E83C8;
  qword_1ED72E658 = sub_1AF1C6C34;
  return result;
}

uint64_t sub_1AF1C621C(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AB80 != -1)
  {
    sub_1AFDDE8DC();
  }

  return qword_1ED73AB78;
}

double sub_1AF1C6254()
{
  v0 = _CFRuntimeRegisterClass();
  qword_1ED73AB78 = v0;
  if (qword_1ED73ABB0 != -1)
  {
    sub_1AFDDE8C8();
  }

  sub_1AF1DCFAC(v0, qword_1ED73ABA8);
  sub_1AF1DD018();
  *&algn_1ED72E388[8] = xmmword_1F24E83D0;
  xmmword_1ED72E378 = xmmword_1F24E83E0;
  result = *&xmmword_1F24E83F0;
  *&algn_1ED72E388[24] = xmmword_1F24E83F0;
  *&algn_1ED72E388[40] = unk_1F24E8400;
  qword_1ED72E3C0 = qword_1F24E8410;
  qword_1ED72E3D0 = sub_1AF1C6D74;
  return result;
}

uint64_t sub_1AF1C638C(uint64_t a1, __n128 *a2)
{
  sub_1AF1B2C84(a1, a2);
  v5 = sub_1AF1C5A20(a1, v4);
  sub_1AF1C5A68(a2, v5);
  v7 = *(a1 + 212);
  if (v7 <= 0.0)
  {
    v7 = 0.1;
  }

  if (a2[13].n128_f32[1] != v7)
  {
    a2[13].n128_f32[1] = v7;
    sub_1AF1B2C80(a2, 0);
  }

  v8 = sub_1AF1C596C(a1, v6);
  sub_1AF1C59B4(a2, v9, v8);
  v11 = sub_1AF1C5804(a1, v10);
  sub_1AF1C584C(a2, v12, v11);
  v14 = sub_1AF1C58B8(a1, v13);
  sub_1AF1C5900(a2, v15, v14);
  sub_1AF1C5B50(a2, *(a1 + 240));
  v16 = *(a1 + 256);

  return sub_1AF1C5BF8(a2, v16);
}

void sub_1AF1C644C(uint64_t a1)
{
  sub_1AF1C5B50(a1, 0);
  sub_1AF1C5BF8(a1, 0);
  v2 = *(a1 + 264);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 264) = 0;
  }
}

uint64_t sub_1AF1C6534(uint64_t a1, __n128 *a2)
{
  sub_1AF1C638C(a1, a2);
  sub_1AF1C6068(a2, *(a1 + 304));
  sub_1AF1C5DE8(a2, *(a1 + 312));
  sub_1AF1C5E4C(a2, *(a1 + 320));
  sub_1AF1C5EB0(a2, *(a1 + 328));
  sub_1AF1C5F04(a2, *(a1 + 332));
  sub_1AF1C5F58(a2, *(a1 + 336));
  v4 = *(a1 + 337);
  if (a2[21].n128_u8[1] != v4)
  {
    a2[21].n128_u8[1] = v4;
    sub_1AF1B2C80(a2, 0);
  }

  v5 = *(a1 + 344);
  v6 = *(a1 + 352);
  v7 = *(a1 + 360);
  v8 = *(a1 + 368);

  return sub_1AF1C5FC8(a2, v5, v6, v7, v8);
}

void sub_1AF1C65E0(uint64_t a1)
{
  sub_1AF1C6068(a1, 0);
  sub_1AF1C5DE8(a1, 0);
  sub_1AF1C5E4C(a1, 0);

  sub_1AF1C644C(a1);
}

const void *sub_1AF1C6634(uint64_t a1, __int128 *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(md, 0, sizeof(md));
  v14 = 0u;
  *v13 = 0u;
  sub_1AF1C5230(a1, data, a2);
  CC_SHA256(data, 0x28u, md);
  v4 = a2[1];
  data[0] = *a2;
  data[1] = v4;
  v12 = *(a2 + 4);
  CC_SHA256(data, 0x28u, v13);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1AF1C6744;
  v7[3] = &unk_1E7A7B908;
  v5 = a2[1];
  v8 = *a2;
  v9 = v5;
  v10 = *(a2 + 4);
  return sub_1AF1C4FA4(a1, v13, md, v7);
}

const void *sub_1AF1C6744(uint64_t a1, uint64_t a2)
{
  v3 = [VFXShape __createCFObject]_0(a1, a2);
  v4 = *(a1 + 48);
  v8[0] = *(a1 + 32);
  v8[1] = v4;
  v9 = *(a1 + 64);
  sub_1AF1C5ADC(v3, v8);
  v6 = sub_1AF1B2C1C(v3, v5);
  CFRetain(v6);
  CFRelease(v3);
  return v6;
}

uint64_t sub_1AF1C67A8(uint64_t a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v9[0] = *a4;
  v9[1] = v6;
  v10 = *(a4 + 32);
  v7 = sub_1AF1C6634(a1, v9);

  return sub_1AF1A3234(v7, a2, a3);
}

uint64_t sub_1AF1C6804(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v4;
  v8 = *(a3 + 32);
  v5 = sub_1AF1C6634(a1, v7);

  return sub_1AF1A33B8(v5, a2);
}

const void *sub_1AF1C6858(uint64_t a1, _OWORD *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  *md = 0u;
  v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  sub_1AF1C547C(a1, data, a2);
  CC_SHA256(data, 0x70u, md);
  v4 = a2[5];
  data[4] = a2[4];
  data[5] = v4;
  data[6] = a2[6];
  v5 = a2[1];
  data[0] = *a2;
  data[1] = v5;
  v6 = a2[3];
  data[2] = a2[2];
  data[3] = v6;
  CC_SHA256(data, 0x70u, v20);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1AF1C6984;
  v11[3] = &unk_1E7A7B928;
  v7 = a2[5];
  v16 = a2[4];
  v17 = v7;
  v18 = a2[6];
  v8 = a2[1];
  v12 = *a2;
  v13 = v8;
  v9 = a2[3];
  v14 = a2[2];
  v15 = v9;
  return sub_1AF1C4FA4(a1, v20, md, v11);
}

const void *sub_1AF1C6984(_OWORD *a1, uint64_t a2)
{
  v3 = [VFXText __createCFObject]_0(a1, a2);
  v4 = a1[7];
  v10[4] = a1[6];
  v10[5] = v4;
  v10[6] = a1[8];
  v5 = a1[3];
  v10[0] = a1[2];
  v10[1] = v5;
  v6 = a1[5];
  v10[2] = a1[4];
  v10[3] = v6;
  sub_1AF1C5CEC(v3, v10);
  v8 = sub_1AF1B2C1C(v3, v7);
  CFRetain(v8);
  CFRelease(v3);
  return v8;
}

uint64_t sub_1AF1C69F8(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v6 = a4[5];
  v11[4] = a4[4];
  v11[5] = v6;
  v11[6] = a4[6];
  v7 = a4[1];
  v11[0] = *a4;
  v11[1] = v7;
  v8 = a4[3];
  v11[2] = a4[2];
  v11[3] = v8;
  v9 = sub_1AF1C6858(a1, v11);

  return sub_1AF1A3234(v9, a2, a3);
}

uint64_t sub_1AF1C6A64(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a3[5];
  v9[4] = a3[4];
  v9[5] = v4;
  v9[6] = a3[6];
  v5 = a3[1];
  v9[0] = *a3;
  v9[1] = v5;
  v6 = a3[3];
  v9[2] = a3[2];
  v9[3] = v6;
  v7 = sub_1AF1C6858(a1, v9);

  return sub_1AF1A33B8(v7, a2);
}

id sub_1AF1C6ACC(void *a1)
{
  sub_1AF1C644C(a1);

  return sub_1AF1B1D5C(a1);
}

id sub_1AF1C6B10(void *a1)
{
  sub_1AF1C65E0(a1);

  return sub_1AF1B1D5C(a1);
}

const void *sub_1AF1C6B50(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  result = sub_1AF1B2C1C(a1, a2);
  if (result)
  {

    return sub_1AF1A3234(result, a3, a4);
  }

  return result;
}

const void *sub_1AF1C6BA0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = sub_1AF1B2C1C(a1, a2);
  if (result)
  {

    return sub_1AF1A33B8(result, a3);
  }

  return result;
}

uint64_t sub_1AF1C6BE8(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  return sub_1AF1B2C80(a1, 0);
}

__n128 *sub_1AF1C6C34(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDAF5C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = [VFXShape __createCFObject]_0(a1, a2);
  sub_1AF1C638C(v2, v10);
  return v10;
}

const void *sub_1AF1C6C90(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  result = sub_1AF1B2C1C(a1, a2);
  if (result)
  {

    return sub_1AF1A3234(result, a3, a4);
  }

  return result;
}

const void *sub_1AF1C6CE0(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = sub_1AF1B2C1C(a1, a2);
  if (result)
  {

    return sub_1AF1A33B8(result, a3);
  }

  return result;
}

uint64_t sub_1AF1C6D28(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  return sub_1AF1B2C80(a1, 0);
}

__n128 *sub_1AF1C6D74(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDAF5C(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = [VFXText __createCFObject]_0(a1, a2);
  sub_1AF1C6534(v2, v10);
  return v10;
}

void sub_1AF1C6DD0(__CFString *a1, const __CFString *a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  CFStringAppend(a1, a2);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a3.n128_f32[0], a3.n128_f32[1], a3.n128_f32[2], a3.n128_f32[3]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a4.n128_f32[0], a4.n128_f32[1], a4.n128_f32[2], a4.n128_f32[3]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a5.n128_f32[0], a5.n128_f32[1], a5.n128_f32[2], a5.n128_f32[3]);
  CFStringAppendFormat(a1, 0, @" %f %f %f %f\n", a6.n128_f32[0], a6.n128_f32[1], a6.n128_f32[2], a6.n128_f32[3]);
}

uint64_t sub_1AF1C6EF0(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABA0 != -1)
  {
    sub_1AFDDE8F0();
  }

  return qword_1ED73AB98;
}

double sub_1AF1C6F28()
{
  qword_1ED73AB98 = _CFRuntimeRegisterClass();
  qword_1ED72E538 = sub_1AF1C8060;
  result = *&xmmword_1F24E8438;
  unk_1ED72E550 = xmmword_1F24E8438;
  unk_1ED72E560 = unk_1F24E8448;
  qword_1ED72E570 = qword_1F24E8458;
  unk_1ED72E578 = sub_1AF1C8A20;
  return result;
}

double sub_1AF1C6F94(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73ABA0 != -1)
  {
    sub_1AFDDE8F0();
  }

  v2 = sub_1AF0D160C(qword_1ED73AB98, 0xC0uLL);
  v2[6] = xmmword_1AFE20150;
  v2[7] = xmmword_1AFE20160;
  result = 0.0;
  v2[8] = xmmword_1AFE20180;
  v2[9] = xmmword_1AFE201A0;
  return result;
}

uint64_t sub_1AF1C6FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a2;
  sub_1AF1C6F94(a1, a2);
  v10 = v9;
  if (a4)
  {
    v11 = sub_1AF16CBEC(a4, v8);
    sub_1AF16CC34(v10, v11);
  }

  *(v10 + 64) = v6;
  *(v10 + 72) = a1;
  v12 = v6 << 6;
  *(v10 + 80) = malloc_type_malloc(v12, 0x1000040FA0F61DDuLL);
  *(v10 + 88) = malloc_type_malloc(v12, 0x1000040FA0F61DDuLL);
  if (*(v10 + 64) == 1)
  {
    *(v10 + 68) = 0;
    *(v10 + 168) = 0;
    *(v10 + 176) = 0;
    *(v10 + 160) = 0;
  }

  else
  {
    v13 = 4 * a1;
    if (a3)
    {
      *(v10 + 68) = a3;
      *(v10 + 160) = malloc_type_malloc(v13 + 4, 0x100004052888210uLL);
      *(v10 + 168) = malloc_type_malloc(2 * a3, 0x1000040BDFB0063uLL);
      *(v10 + 176) = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
    }

    else
    {
      *(v10 + 68) = 0;
      *(v10 + 160) = malloc_type_malloc(v13 + 4, 0x100004052888210uLL);
      *(v10 + 168) = malloc_type_malloc(0, 0x1000040BDFB0063uLL);
      *(v10 + 176) = 0;
    }
  }

  return v10;
}

uint64_t sub_1AF1C7134(uint64_t a1, int a2)
{
  v4 = sub_1AF1A4CE8(a1, 1);
  v6 = sub_1AF1AE6EC(v4, v5);
  v7 = sub_1AF1A4604(a1, 5, 0, 1);
  if (!v7)
  {
    return 0;
  }

  v56 = 0u;
  v57 = 0u;
  v9 = sub_1AF1AE1A8(v7, v8, &v56);
  sub_1AF1C6F94(v9, v10);
  v12 = v11;
  v13 = sub_1AF1A4604(a1, 6, 0, 1);
  v15 = v13;
  if (v13)
  {
    v54 = 0u;
    v55 = 0u;
    v16 = sub_1AF1AE1A8(v13, v14, &v54);
    v18 = BYTE7(v55);
    if (BYTE7(v55) == 1 || BYTE7(v55) == 20)
    {
      if (v57)
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          v23 = (v54 + v19);
          if (BYTE7(v55) == 1)
          {
            if (BYTE8(v55))
            {
              v24 = 0;
              v25 = BYTE8(v55);
              do
              {
                v26 = *v23++;
                if (v26 > 0.0)
                {
                  ++v24;
                }

                --v25;
              }

              while (v25);
              goto LABEL_21;
            }
          }

          else if (BYTE8(v55))
          {
            v24 = 0;
            v27 = BYTE8(v55);
            do
            {
              v28 = *v23;
              v23 = (v23 + 1);
              if (v28)
              {
                ++v24;
              }

              --v27;
            }

            while (v27);
            goto LABEL_21;
          }

          v24 = 0;
LABEL_21:
          if (v22 <= v24)
          {
            v22 = v24;
          }

          v21 += v24;
          ++v20;
          v19 += BYTE6(v55);
          if (v20 == v57)
          {
            goto LABEL_30;
          }
        }
      }

      LOBYTE(v22) = 0;
      v21 = 0;
LABEL_30:
      *(v12 + 184) = v22;
    }

    else
    {
      v29 = sub_1AF0D5194(v16, v17);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDE904(v29);
      }

      CFRelease(v12);
      v21 = 0;
    }

    if (v18 == 1 || v18 == 20)
    {
      goto LABEL_33;
    }

    return 0;
  }

  *(v12 + 184) = 1;
  v21 = v6;
LABEL_33:
  *(v12 + 160) = malloc_type_malloc(4 * v6 + 4, 0x100004052888210uLL);
  *(v12 + 64) = a2;
  *(v12 + 68) = v21;
  *(v12 + 72) = v6;
  v30 = a2 << 6;
  *(v12 + 80) = malloc_type_malloc(v30, 0x1000040FA0F61DDuLL);
  *(v12 + 88) = malloc_type_malloc(v30, 0x1000040FA0F61DDuLL);
  *(v12 + 168) = malloc_type_malloc(2 * v21, 0x1000040BDFB0063uLL);
  v31 = malloc_type_malloc(4 * v21, 0x100004052888210uLL);
  *(v12 + 176) = v31;
  if (v15)
  {
    v54 = 0u;
    v55 = 0u;
    sub_1AF1AE1A8(v15, v32, &v54);
    v34 = *(v12 + 160);
    if (v6 < 1)
    {
      LODWORD(v35) = 0;
    }

    else
    {
      v35 = 0;
      v36 = 0;
      v37 = v56;
      v38 = BYTE6(v57);
      v39 = BYTE7(v55);
      v40 = v54;
      v41 = BYTE6(v55);
      v42 = BYTE8(v55);
      do
      {
        *(v34 + 4 * v36) = v35;
        if (v39 == 1)
        {
          if (v42)
          {
            for (i = 0; i != v42; ++i)
            {
              LODWORD(v33) = *&v40[4 * i];
              if (*&v33 > 0.0)
              {
                *(*(v12 + 168) + 2 * v35) = v37[i];
                *(*(v12 + 176) + 4 * v35++) = LODWORD(v33);
              }
            }
          }
        }

        else if (v42)
        {
          v44 = v42;
          v45 = v37;
          v46 = v40;
          do
          {
            if (*v46)
            {
              *(*(v12 + 168) + 2 * v35) = *v45;
              LOBYTE(v33) = *v46;
              v33 = *&v33 / 255.0;
              *&v33 = v33;
              *(*(v12 + 176) + 4 * v35++) = LODWORD(v33);
            }

            ++v46;
            ++v45;
            --v44;
          }

          while (v44);
        }

        ++v36;
        v40 += v41;
        v37 += v38;
      }

      while (v36 != v6);
    }

    *(v34 + 4 * v6) = v35;
  }

  else
  {
    v47 = *(v12 + 160);
    if (v6 < 1)
    {
      v52 = 0;
    }

    else
    {
      v48 = 0;
      v49 = v56;
      v50 = BYTE6(v57);
      v51 = *(v12 + 168);
      do
      {
        *(v47 + 4 * v48) = v48;
        *(v51 + 2 * v48) = *v49;
        v31[v48] = 1065353216;
        v49 += v50;
        ++v48;
      }

      while (v6 != v48);
      v52 = v6;
    }

    *(v47 + 4 * v6) = v52;
  }

  return v12;
}

uint64_t sub_1AF1C74F0(uint64_t result)
{
  if (*(result + 88) && *(result + 64) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = 0;
      v3 = *(result + 88);
      v4 = (*(result + 80) + (v1 << 6));
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[3];
      v9 = *(result + 112);
      v10 = *(result + 128);
      v11 = *(result + 144);
      v16[0] = *(result + 96);
      v16[1] = v9;
      v16[2] = v10;
      v16[3] = v11;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        *(&v17 + v2 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(v16[v2])), v6, *&v16[v2], 1), v7, v16[v2], 2), v8, v16[v2], 3);
        ++v2;
      }

      while (v2 != 4);
      v12 = (v3 + (v1 << 6));
      v13 = v18;
      v14 = v19;
      v15 = v20;
      *v12 = v17;
      v12[1] = v13;
      v12[2] = v14;
      v12[3] = v15;
      ++v1;
    }

    while (v1 < *(result + 64));
  }

  return result;
}

uint64_t sub_1AF1C759C(uint64_t a1, void *__src)
{
  if (!*(a1 + 80))
  {
    v4 = sub_1AF0D5194(a1, __src);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE948(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  memcpy(*(a1 + 80), __src, *(a1 + 64) << 6);
  return sub_1AF1C74F0(a1);
}

void sub_1AF1C760C(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 68);
  if (v1)
  {
    v3 = *(a1 + 72);
    if (v3 != v1)
    {
      v4 = *(a1 + 160);
      v5 = *(a1 + 168);
      v6 = *(a1 + 176);
      v29 = malloc_type_calloc(2uLL, v1, 0xF73A1695uLL);
      v30 = malloc_type_calloc(4uLL, *(a1 + 68), 0xFEA01EAEuLL);
      v25[1] = v25;
      v26 = a1;
      v7 = *v4;
      MEMORY[0x1EEE9AC00](v30);
      v9 = v25 - v8;
      if (v3 < 1)
      {
        v11 = 0;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v27 = v4;
        v28 = v3;
        do
        {
          v12 = v4[++v10];
          v13 = (v12 - v7);
          if (v12 != v7)
          {
            v31 = (v12 - v7);
            v32 = v12;
            v14 = 0;
            do
            {
              v15 = 0;
              if (v14)
              {
                while (*(v6 + 4 * v7 + 4 * v14) <= *(v6 + 4 * (*&v9[4 * v15] + v7)))
                {
                  if (v14 == ++v15)
                  {
                    v15 = v14;
                    goto LABEL_14;
                  }
                }
              }

              if (v14 != v15)
              {
                memmove(&v9[4 * v15 + 4], &v9[4 * v15], 4 * (v14 - v15));
              }

LABEL_14:
              *&v9[4 * v15] = v14++;
            }

            while (v14 != v13);
            v16 = 0;
            v17 = v31;
            v18 = &v30[4 * v11];
            v3 = v28;
            v19 = &v29[2 * v11];
            v4 = v27;
            v12 = v32;
            do
            {
              v20 = *&v9[4 * v16] + v7;
              v21 = *(v6 + 4 * v20);
              if (v21 <= 0.00000011921)
              {
                break;
              }

              v22 = *(v5 + 2 * v20);
              *v18++ = v21;
              *v19 = v22;
              v19 += 2;
              ++v11;
              ++v16;
            }

            while (v16 < v17);
          }

          v4[v10] = v11;
          v7 = v12;
        }

        while (v10 != v3);
      }

      v23 = v26;
      if (v11 >= *(v26 + 68))
      {
        free(v29);
        free(v30);
      }

      else
      {
        free(*(v26 + 168));
        free(*(v23 + 176));
        if (v11)
        {
          *(v23 + 168) = malloc_type_realloc(v29, 2 * v11, 0x1000040BDFB0063uLL);
          v24 = malloc_type_realloc(v30, 4 * v11, 0x100004052888210uLL);
        }

        else
        {
          free(v29);
          free(v30);
          v24 = 0;
          *(v23 + 168) = 0;
        }

        *(v23 + 176) = v24;
        *(v23 + 68) = v11;
      }
    }
  }
}

void *sub_1AF1C78C4(void *result, void *a2, void *a3, void *a4)
{
  if (a2)
  {
    *a2 = result[20];
  }

  if (a3)
  {
    *a3 = result[21];
  }

  if (a4)
  {
    *a4 = result[22];
  }

  return result;
}

uint64_t sub_1AF1C78EC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE9C0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 68);
}

uint64_t sub_1AF1C7934(uint64_t result, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  *(result + 96) = a2;
  *(result + 112) = a3;
  *(result + 128) = a4;
  *(result + 144) = a5;
  return sub_1AF1C74F0(result);
}

void sub_1AF1C7948(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE9C0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (!*(result + 200))
  {
    v11 = *(result + 72);
    v12 = sub_1AF1B6A14(0, 5, v11, 4, 15);
    sub_1AF1ADBE0(v12);
    v14 = 0;
    if (*(result + 184) >= 2u)
    {
      v14 = sub_1AF1B6A14(0, 6, v11, 4, 20);
      sub_1AF1ADBE0(v14);
    }

    v20 = 0u;
    v21 = 0u;
    sub_1AF1AE1A8(v12, v13, &v20);
    v18 = 0u;
    v19 = 0u;
    if (v14)
    {
      sub_1AF1AE1A8(v14, v15, &v18);
    }

    v17[0] = v20;
    v17[1] = v21;
    v16[0] = v18;
    v16[1] = v19;
    sub_1AF1C7A48(result, v17, v16);
    *(result + 192) = v14;
    *(result + 200) = v12;
  }
}

void sub_1AF1C7A48(uint64_t a1, void **a2, uint64_t *a3)
{
  v4 = a2;
  v70 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 72);
  memset(*a2, 255, 4 * (v5 & 0x3FFFFFFF));
  v7 = *a3;
  if (*a3)
  {
    bzero(v7, v5 * *(a3 + 22));
  }

  if (*(v4 + 4) != v5 || *a3 && *(a3 + 4) != v5)
  {
    v8 = sub_1AF0D5194(v7, v6);
    v7 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      sub_1AFDDEA38(v8);
    }
  }

  v9 = *(a1 + 160);
  v10 = *(a1 + 168);
  v11 = *(a1 + 176);
  v68[0] = 0;
  v68[1] = 0;
  if (v5)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v54 = v5;
    v50 = v4;
    v51 = a3;
    v55 = v9;
    while (1)
    {
      v59 = v12;
      v15 = *(v9 + 4 * v13);
      if ((v15 & 0x80000000) != 0 || ((v16 = *(v9 + 4 * (v13 + 1)), v17 = *(a1 + 68), v15 <= v17) ? (v18 = v16 <= v17) : (v18 = 0), !v18))
      {
        if ((byte_1EB658630 & 1) == 0)
        {
          byte_1EB658630 = 1;
          v49 = sub_1AF0D5194(v7, v6);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDEAD0(v49);
          }
        }

        return;
      }

      v58 = v13 + 1;
      v19 = *v4;
      v20 = v13 * *(v4 + 22);
      if (v15 >= v16)
      {
        break;
      }

      v21 = 0;
      v22 = &v19[v20];
      v52 = v16 - v15;
      v53 = v13;
      v23 = 0.0;
      v57 = v13 * *(v4 + 22);
      do
      {
        v24 = *(v10 + 2 * v15);
        if (v24 <= 255)
        {
          v25 = *(v11 + 4 * v15);
          if (v25 > 0.0039216)
          {
            if (v21 < 4)
            {
              v22[v21] = v24;
              v69[v21] = v25;
              v23 = v23 + v25;
              ++v21;
            }

            else
            {
              if ((v14 & 1) == 0)
              {
                v26 = v19;
                v27 = v22;
                v28 = sub_1AF0D5194(v7, v6);
                v7 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
                v22 = v27;
                v19 = v26;
                v20 = v57;
                if (v7)
                {
                  *buf = 134218752;
                  v61 = v52;
                  v62 = 1024;
                  v63 = 4;
                  v64 = 1024;
                  v65 = v53;
                  v66 = 1024;
                  v67 = 4;
                  _os_log_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_INFO, "Info: Too many influencing joints (%ld > %d) on the vertex #%u, will cap to %d and renormalize", buf, 0x1Eu);
                  v22 = v27;
                  v19 = v26;
                  v20 = v57;
                }
              }

              v29 = 0;
              v30 = v69[0];
              for (i = 1; i != 4; ++i)
              {
                if (v30 > v69[i])
                {
                  v29 = i;
                  v30 = v69[i];
                }
              }

              if (v25 > v30)
              {
                v23 = v25 + (v23 - v30);
                v69[v29] = v25;
                v22[v29] = v24;
              }

              v14 = 1;
            }
          }
        }

        ++v15;
      }

      while (v15 != v16);
      if (v23 > 0.0 && v23 != 1.0 && v21 >= 1)
      {
        v34 = v69;
        v35 = v21;
        do
        {
          *v34 = *v34 / v23;
          ++v34;
          --v35;
        }

        while (v35);
      }

      v4 = v50;
      v36 = v59;
      if (v21 >= 1)
      {
        v37 = *v51;
        if (!*v51)
        {
          goto LABEL_60;
        }

        v38 = 0;
        v39 = 0;
        v40 = v59 * *(v51 + 22);
        do
        {
          v41 = rintf(v69[v38] * 255.0);
          if (v41 >= 255)
          {
            v41 = 255;
          }

          v42 = v41 & ~(v41 >> 31);
          *(v37 + v40 + v38) = v42;
          v39 += v42;
          ++v38;
        }

        while (v21 != v38);
        if (v39 == 255)
        {
          goto LABEL_60;
        }

        v43 = (v37 + v40);
        while (1)
        {
          v44 = v21;
          v45 = v43;
          while (1)
          {
            v46 = *v45;
            if (v39 > 254)
            {
              break;
            }

            if (v46 != 255)
            {
              v47 = 1;
              v48 = 1;
              goto LABEL_58;
            }

LABEL_55:
            ++v45;
            if (!--v44)
            {
              goto LABEL_59;
            }
          }

          if (!*v45)
          {
            goto LABEL_55;
          }

          v48 = -1;
          v47 = -1;
LABEL_58:
          *v45 = v46 + v47;
          v39 += v48;
LABEL_59:
          if (v39 == 255)
          {
LABEL_60:
            ++*(v68 + v21 - 1);
            break;
          }
        }
      }

      if (v21 <= 3)
      {
        goto LABEL_64;
      }

LABEL_65:
      v12 = v36 + 1;
      v13 = v58;
      v9 = v55;
      if (v58 == v54)
      {
        return;
      }
    }

    v21 = 0;
    v36 = v59;
LABEL_64:
    bzero(&v19[v21 + v20], 4 - v21);
    bzero(&v69[v21], 16 - 4 * v21);
    goto LABEL_65;
  }
}

id sub_1AF1C7EC0(void *a1)
{
  sub_1AF1BE334(@"kCFXNotificationSkinWillDie", a1, 0, 1u);
  v3 = a1[10];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[22];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[20];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[21];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[25];
  if (v8)
  {
    CFRelease(v8);
    a1[25] = 0;
  }

  v9 = a1[24];
  if (v9)
  {
    CFRelease(v9);
    a1[24] = 0;
  }

  return sub_1AF16C9A4(a1, v2);
}

__CFString *sub_1AF1C7F70(__n128 *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = sub_1AF3753A8(a1);
  v5 = sub_1AF16CBEC(a1, v4);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | name:%@ joint:%d weight:%d vertexCount:%d\n", v3, a1, v5, a1[4].n128_i16[0], a1[4].n128_u32[1], a1[4].n128_u64[1]);
  CFStringAppendFormat(Mutable, 0, @"  maxInf:%d\n", a1[11].n128_u8[8]);
  sub_1AF1C6DD0(Mutable, @"defaultShapeMatrix\n", a1[6], a1[7], a1[8], a1[9]);
  v6 = a1[5].n128_u64[0];
  if (v6)
  {
    sub_1AF1C6DD0(Mutable, @"inverseBindMatrix", *v6, v6[1], v6[2], v6[3]);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1C8060(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = 0;
  valuePtr = 13;
  v56 = a1 + 64;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v7 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v4, @"name", @"jointsCount");
  CFDictionarySetValue(v4, @"type", v5);
  CFDictionarySetValue(v4, @"address", v7);
  CFDictionarySetValue(v4, @"semantic", v6);
  CFArrayAppendValue(Mutable, v4);
  CFRelease(v6);
  CFRelease(v4);
  CFRelease(v7);
  CFRelease(v5);
  v8 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x1E695E9E8]);
  v57 = 0;
  valuePtr = 2;
  v56 = a1 + 68;
  v9 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v11 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v8, @"name", @"influenceCount");
  CFDictionarySetValue(v8, @"type", v9);
  CFDictionarySetValue(v8, @"address", v11);
  CFDictionarySetValue(v8, @"semantic", v10);
  CFArrayAppendValue(Mutable, v8);
  CFRelease(v10);
  CFRelease(v8);
  CFRelease(v11);
  CFRelease(v9);
  v12 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = 0;
  valuePtr = 2;
  v56 = a1 + 72;
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v15 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v12, @"name", @"vertexCount");
  v16 = Mutable;
  CFDictionarySetValue(v12, @"type", v13);
  CFDictionarySetValue(v12, @"address", v15);
  CFDictionarySetValue(v12, @"semantic", v14);
  CFArrayAppendValue(Mutable, v12);
  CFRelease(v14);
  CFRelease(v12);
  CFRelease(v15);
  CFRelease(v13);
  if (*(a1 + 80))
  {
    v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v57 = 0;
    valuePtr = 10;
    v56 = *(a1 + 80);
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
    v20 = CFNumberCreate(0, kCFNumberLongType, &v56);
    CFDictionarySetValue(v17, @"name", @"inverseBindMatrices");
    CFDictionarySetValue(v17, @"type", v18);
    CFDictionarySetValue(v17, @"address", v20);
    CFDictionarySetValue(v17, @"semantic", v19);
    CFArrayAppendValue(v16, v17);
    CFRelease(v19);
    CFRelease(v17);
    CFRelease(v20);
    CFRelease(v18);
  }

  v21 = MEMORY[0x1E695E9E8];
  v54 = a1;
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v57 = 0;
  valuePtr = 10;
  v56 = a1 + 96;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v22, @"name", @"defaultShapeMatrix");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  CFArrayAppendValue(v16, v22);
  CFRelease(v24);
  CFRelease(v22);
  CFRelease(v25);
  CFRelease(v23);
  v26 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v21);
  v57 = 0;
  valuePtr = 13;
  v56 = a1 + 184;
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
  v29 = CFNumberCreate(0, kCFNumberLongType, &v56);
  CFDictionarySetValue(v26, @"name", @"maxInfluencesPerVertex");
  CFDictionarySetValue(v26, @"type", v27);
  CFDictionarySetValue(v26, @"address", v29);
  CFDictionarySetValue(v26, @"semantic", v28);
  theArray = v16;
  CFArrayAppendValue(v16, v26);
  CFRelease(v28);
  CFRelease(v26);
  v30 = v29;
  v31 = a1;
  CFRelease(v30);
  CFRelease(v27);
  if (*(a1 + 160) && *(a1 + 72) >= 1)
  {
    v32 = 0;
    v33 = 0;
    do
    {
      v34 = CFStringCreateWithFormat(0, 0, @"influenceOffsets[%d]", v33);
      v35 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v57 = 0;
      valuePtr = 2;
      v56 = *(a1 + 160) + v32;
      v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
      v38 = CFNumberCreate(0, kCFNumberLongType, &v56);
      CFDictionarySetValue(v35, @"name", v34);
      CFDictionarySetValue(v35, @"type", v36);
      CFDictionarySetValue(v35, @"address", v38);
      CFDictionarySetValue(v35, @"semantic", v37);
      CFArrayAppendValue(theArray, v35);
      CFRelease(v37);
      CFRelease(v35);
      CFRelease(v38);
      CFRelease(v36);
      CFRelease(v34);
      ++v33;
      v32 += 4;
    }

    while (v33 < *(a1 + 72));
  }

  if (*(a1 + 176) && *(a1 + 168) && *(a1 + 68) >= 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      v42 = CFStringCreateWithFormat(0, 0, @"jointWeights[%d]", v41);
      v43 = MEMORY[0x1E695E9D8];
      v44 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v57 = 0;
      valuePtr = 1;
      v56 = *(v31 + 176) + v39;
      v45 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v46 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
      v47 = CFNumberCreate(0, kCFNumberLongType, &v56);
      CFDictionarySetValue(v44, @"name", v42);
      CFDictionarySetValue(v44, @"type", v45);
      CFDictionarySetValue(v44, @"address", v47);
      CFDictionarySetValue(v44, @"semantic", v46);
      CFArrayAppendValue(theArray, v44);
      CFRelease(v46);
      CFRelease(v44);
      CFRelease(v47);
      CFRelease(v45);
      CFRelease(v42);
      v48 = CFStringCreateWithFormat(0, 0, @"jointIndices[%d]", v41);
      v49 = CFDictionaryCreateMutable(0, 4, v43, MEMORY[0x1E695E9E8]);
      v57 = 0;
      valuePtr = 13;
      v56 = *(v54 + 168) + v40;
      v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v51 = CFNumberCreate(0, kCFNumberSInt32Type, &v57);
      v52 = CFNumberCreate(0, kCFNumberLongType, &v56);
      CFDictionarySetValue(v49, @"name", v48);
      CFDictionarySetValue(v49, @"type", v50);
      CFDictionarySetValue(v49, @"address", v52);
      CFDictionarySetValue(v49, @"semantic", v51);
      v31 = v54;
      CFArrayAppendValue(theArray, v49);
      CFRelease(v51);
      CFRelease(v49);
      CFRelease(v52);
      CFRelease(v50);
      CFRelease(v48);
      ++v41;
      v40 += 2;
      v39 += 4;
    }

    while (v41 < *(v54 + 68));
  }

  return theArray;
}

uint64_t sub_1AF1C8A20(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF1C8A58(uint64_t result)
{
  if (*(result + 104))
  {
    v1 = result;
    free(*(result + 96));
    *(v1 + 96) = malloc_type_malloc(4 * *(v1 + 104), 0x100004052888210uLL);
    result = sub_1AF1C3FAC(v1, v2);
    if (*(v1 + 104) >= 1)
    {
      v3 = result;
      v4 = 0;
      do
      {
        result = CFArrayGetValueAtIndex(*(v1 + 88), v4);
        if (result && (v6 = result, result = sub_1AF1C3FAC(result, v5), result == v3))
        {
          v7 = *(v6 + 88);
        }

        else
        {
          v7 = -1;
        }

        v8 = *(v1 + 104);
        *(*(v1 + 96) + 4 * v4++) = v7;
      }

      while (v4 < v8);
    }
  }

  return result;
}

uint64_t sub_1AF1C8B10(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AB90 != -1)
  {
    sub_1AFDDEB14();
  }

  return qword_1ED73AB88;
}

double sub_1AF1C8B48()
{
  qword_1ED73AB88 = _CFRuntimeRegisterClass();
  result = *&xmmword_1F24E8480;
  unk_1ED72E478 = xmmword_1F24E8480;
  qword_1ED72E460 = sub_1AF1CA6E0;
  unk_1ED72E488 = *&off_1F24E8490;
  qword_1ED72E498 = qword_1F24E84A0;
  unk_1ED72E4A0 = sub_1AF1CAD7C;
  return result;
}

double sub_1AF1C8BB4(uint64_t a1, uint64_t a2)
{
  if (qword_1ED73AB90 != -1)
  {
    sub_1AFDDEB14();
  }

  v2 = sub_1AF0D160C(qword_1ED73AB88, 0xB0uLL);
  *(v2 + 176) = 1;
  result = 0.0;
  *(v2 + 144) = xmmword_1AFE201A0;
  *(v2 + 160) = xmmword_1AFE20B70;
  return result;
}

uint64_t sub_1AF1C8C0C(void *a1, uint64_t a2)
{
  sub_1AF1C8BB4(a1, a2);
  v4 = v3;
  sub_1AF1C8C40(v3, a1);
  return v4;
}

double sub_1AF1C8C40(uint64_t a1, void *cf)
{
  v3 = *(a1 + 72);
  if (v3 != cf)
  {
    if (v3)
    {
      sub_1AF1C3A90(v3, *(a1 + 48));
      v5 = *(a1 + 72);
      if (v5)
      {
        CFRelease(v5);
      }
    }

    *(a1 + 72) = cf;
    if (cf)
    {
      CFRetain(cf);
      sub_1AF1C3CB4(cf, *(a1 + 48));
    }

    *(a1 + 176) = 1;
    result = 0.0;
    *(a1 + 144) = xmmword_1AFE201A0;
    *(a1 + 160) = xmmword_1AFE20B70;
  }

  return result;
}

uint64_t sub_1AF1C8CC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  sub_1AF1C8BB4(a1, a2);
  v5 = v4;
  sub_1AF1C8C40(v4, v3);
  sub_1AF1C8D3C(v5, *(a1 + 80));
  Copy = CFArrayCreateCopy(0, *(a1 + 88));
  sub_1AF1C8DC8(v5, Copy);
  CFRelease(Copy);
  sub_1AF16D160(a1, v5);
  return v5;
}

double sub_1AF1C8D3C(uint64_t a1, void *cf)
{
  v2 = cf;
  if (!cf)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      v2 = sub_1AF1BAB68(v4, 0);
    }

    else
    {
      v2 = 0;
    }
  }

  v5 = *(a1 + 80);
  if (v5 != v2)
  {
    if (v5)
    {
      CFRelease(v5);
      *(a1 + 80) = 0;
    }

    if (v2)
    {
      v6 = CFRetain(v2);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 80) = v6;
  }

  *(a1 + 176) = 1;
  result = 0.0;
  *(a1 + 144) = xmmword_1AFE201A0;
  *(a1 + 160) = xmmword_1AFE20B70;
  return result;
}

void sub_1AF1C8DC8(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 88);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    if (cf)
    {
      *(a1 + 88) = CFRetain(cf);
      Count = CFArrayGetCount(cf);
      *(a1 + 104) = Count;
      v6 = Count > 0;
      if (Count < 1)
      {
        v6 = 0;
      }

      else
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
          sub_1AF1BB008(ValueAtIndex, 1);
        }
      }
    }

    else
    {
      v6 = 0;
      Count = 0;
      *(a1 + 88) = 0;
      *(a1 + 104) = 0;
    }

    v9 = *(a1 + 112);
    if (v9)
    {
      free(v9);
    }

    v10 = *(a1 + 120);
    if (v10)
    {
      free(v10);
    }

    v11 = *(a1 + 128);
    if (v11)
    {
      free(v11);
    }

    if (Count)
    {
      *(a1 + 112) = sub_1AF288058(Count << 6);
      *(a1 + 120) = sub_1AF288058(48 * Count);
      v12 = sub_1AF288058(32 * Count);
    }

    else
    {
      v12 = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
    }

    *(a1 + 128) = v12;
    if (v6)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = (*(a1 + 112) + v13);
        *v15 = xmmword_1AFE20150;
        v15[1] = xmmword_1AFE20160;
        v15[2] = xmmword_1AFE20180;
        v15[3] = xmmword_1AFE201A0;
        v16 = (*(a1 + 128) + v14);
        *v16 = xmmword_1AFE201A0;
        v16[1] = xmmword_1AFE20B70;
        v14 += 32;
        v13 += 64;
        --Count;
      }

      while (Count);
    }

    *(a1 + 176) = 1;
    *(a1 + 144) = xmmword_1AFE201A0;
    *(a1 + 160) = xmmword_1AFE20B70;
    free(*(a1 + 96));
    *(a1 + 96) = 0;
  }
}

void sub_1AF1C8F60(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDEB28(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 64) = a2;
}

BOOL sub_1AF1C8FB4(uint64_t a1, void *a2)
{
  Count = CFArrayGetCount(*(a1 + 88));
  MutableCopy = CFArrayCreateMutableCopy(0, Count, *(a1 + 88));
  v15 = 0;
  if (sub_1AF1C90B0(a1, MutableCopy, *(a1 + 80), a2, &v15))
  {
    v6 = v15;
    v7 = CFArrayGetCount(MutableCopy);
    v9 = v7 == v6;
    v10 = v7 == v6;
    if (v9)
    {
      sub_1AF1C8DC8(a1, MutableCopy);
      sub_1AF1C8D3C(a1, a2);
    }

    else
    {
      v11 = sub_1AF0D5194(v7, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: CFXSkinnerTransposeSkeleton - unable to transpose every joints", v14, 2u);
      }
    }

    CFRelease(MutableCopy);
  }

  else
  {
    CFRelease(MutableCopy);
    return 0;
  }

  return v10;
}

uint64_t sub_1AF1C90B0(uint64_t a1, __CFArray *a2, const void *a3, const void *a4, _DWORD *a5)
{
  if (!a3)
  {
    return 0;
  }

  if (CFArrayGetCount(*(a1 + 88)) >= 1)
  {
    Count = 0;
    do
    {
      if (CFArrayGetValueAtIndex(*(a1 + 88), Count) == a3)
      {
        CFArraySetValueAtIndex(a2, Count, a4);
        ++*a5;
        Count = CFArrayGetCount(*(a1 + 88));
      }

      ++Count;
    }

    while (Count < CFArrayGetCount(*(a1 + 88)));
  }

  free(*(a1 + 96));
  *(a1 + 96) = 0;
  v11 = sub_1AF167434(a3);
  v12 = sub_1AF167434(a4);
  v13 = v12;
  result = v11 ^ v12 ^ 1u;
  if (v11 && v13)
  {
    v15 = sub_1AF1B9410(a3);
    if (v15 == sub_1AF1B9410(a4))
    {
      v16 = v15;
      if (v15)
      {
        v17 = 0;
        v18 = v16 - 1;
        do
        {
          v19 = sub_1AF1B963C(a3, v17);
          v20 = sub_1AF1B963C(a4, v17);
          result = sub_1AF1C90B0(a1, a2, v19, v20, a5);
          if (!result)
          {
            break;
          }
        }

        while (v18 != v17++);
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFIndex sub_1AF1C9224(uint64_t a1, const void *a2)
{
  result = CFArrayGetCount(*(a1 + 88));
  if (result)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), 0);
    return ValueAtIndex != a2 && !sub_1AF1BAAD8(ValueAtIndex, a2);
  }

  return result;
}

BOOL sub_1AF1C9280(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(*(a1 + 88));
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  if (Count < 1)
  {
    v6 = 1;
LABEL_8:
    sub_1AF1C8DC8(a1, Mutable);
    sub_1AF1C8D3C(a1, a2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v7);
      v10 = sub_1AF1B955C(ValueAtIndex, v9);
      if (!v10)
      {
        v15 = sub_1AF0D5194(0, v11);
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        LOWORD(v21) = 0;
        v16 = "Warning: Cannot update the joints using node names: unammed joint found";
        v17 = v15;
        v18 = 2;
        goto LABEL_13;
      }

      v12 = v10;
      v13 = sub_1AF1BA38C(a2, v10);
      if (!v13)
      {
        break;
      }

      CFArrayAppendValue(Mutable, v13);
      v6 = ++v7 >= Count;
      if (Count == v7)
      {
        goto LABEL_8;
      }
    }

    v19 = sub_1AF0D5194(0, v14);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v21 = 138412290;
    v22 = v12;
    v16 = "Warning: Cannot update the joints using node names: can't find node named %@";
    v17 = v19;
    v18 = 12;
LABEL_13:
    _os_log_impl(&dword_1AF0CE000, v17, OS_LOG_TYPE_DEFAULT, v16, &v21, v18);
  }

LABEL_14:
  CFRelease(Mutable);
  return v6;
}

void sub_1AF1C9430(uint64_t a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  if (!v2)
  {
    return;
  }

  v4 = sub_1AF1B75A0(a2, a2);
  if (v4)
  {
    v6 = v4;
    v7 = *(a1 + 88);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
    }

    else
    {
      Count = 0;
    }

    v10 = sub_1AF1C7940(v2);
    if (Count && Count == v10)
    {
      v80 = 0;
      v81 = 0;
      v79 = 0;
      v12 = sub_1AF1C78C4(v2, &v81, &v80, &v79);
      MEMORY[0x1EEE9AC00](v12);
      v13 = &v77 - Count;
      MEMORY[0x1EEE9AC00](v14);
      v15 = v13;
      if (Count >= 1)
      {
        memset_pattern16(&v77 - Count, &xmmword_1AFE21D80, 16 * Count);
        memset_pattern16(&v77 - Count, &xmmword_1AFE21D90, 16 * Count);
      }

      v16 = sub_1AF1BA1FC(v2);
      v18 = sub_1AF15B364(v2);
      if (Count == 1)
      {
        v78.i32[2] = 0;
        v78.i64[0] = 0;
        v77.i32[2] = 0;
        v77.i64[0] = 0;
        v19 = sub_1AF1B1F84(v6, v17);
        if (sub_1AF170774(v19))
        {
          sub_1AF1C3958(v6, 0, &v78, &v77);
        }

        else
        {
          v48 = sub_1AF1B329C(v6, v20);
          sub_1AF1A3234(v48, &v78, &v77);
        }

        v49 = 0;
        v50 = v78;
        v50.i32[3] = 1.0;
        v51 = v77;
        v51.i32[3] = 1.0;
        v52 = vaddq_f32(v50, v51);
        v53 = vsubq_f32(v51, v50);
        v54 = *v18;
        v55 = *(v18 + 16);
        v56 = *(v18 + 32);
        v57 = *(v18 + 48);
        v58 = v16[1];
        v59 = v16[2];
        v60 = v16[3];
        v82[0] = *v16;
        v82[1] = v58;
        v82[2] = v59;
        v82[3] = v60;
        *buf = 0u;
        v84 = 0u;
        v85 = 0u;
        v86 = 0u;
        do
        {
          *&buf[v49 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v54, COERCE_FLOAT(v82[v49])), v55, *&v82[v49], 1), v56, v82[v49], 2), v57, v82[v49], 3);
          ++v49;
        }

        while (v49 != 4);
        v61.i64[0] = 0x3F0000003F000000;
        v61.i64[1] = 0x3F0000003F000000;
        v62 = vmulq_f32(v52, v61);
        v63 = vmulq_f32(v53, v61);
        v64 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v86, v85, v62, 2), v84, *v62.f32, 1), *buf, v62.f32[0]);
        v64.i32[3] = v62.i32[3];
        v65 = v63;
        v65.i32[1] = v63.i32[0];
        v65.i32[2] = v63.i32[0];
        v66 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v63.i8, 1), v63), vabsq_f32(v84)), v65, vabsq_f32(*buf)), vzip2q_s32(vtrn1q_s32(v63, v63), v63), vabsq_f32(v85));
        *v13 = vsubq_f32(v64, v66);
        *v13 = vaddq_f32(v66, v64);
LABEL_44:
        if (Count >= 1)
        {
          v67 = 0;
          v68.i64[0] = 0x3F0000003F000000;
          v68.i64[1] = 0x3F0000003F000000;
          do
          {
            v69 = (*(a1 + 128) + v67);
            v70 = *v13++;
            v71 = v70;
            v72 = *v15++;
            v73 = v72;
            v71.i32[3] = 1.0;
            v73.i32[3] = 1.0;
            *v69 = vmulq_f32(vaddq_f32(v71, v73), v68);
            v69[1] = vmulq_f32(vsubq_f32(v73, v71), v68);
            v67 += 32;
            --Count;
          }

          while (Count);
        }

        *(a1 + 176) = 0;
        return;
      }

      v22 = sub_1AF1B329C(v6, v17);
      if (v22)
      {
        v24 = sub_1AF1A4CE8(v22, 0);
        if (v24)
        {
          *buf = 0u;
          v84 = 0u;
          v26 = sub_1AF1AE1A8(v24, v25, buf);
          if (v84.i8[6])
          {
            v28 = v84.i32[0];
            if (v28 <= sub_1AF15B294(v2) && v84.i32[0])
            {
              v32 = 0;
              do
              {
                *v29.i64 = sub_1AF279750(v84.u8[4], (*buf + v32 * v84.u8[6]), v29, v30.f32[0], v31.f32[0]);
                v30 = *v16;
                v31 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v16[3], v16[2], v29, 2), v16[1], *v29.f32, 1), *v16, v29.f32[0]);
                if (v81)
                {
                  v33 = Count < 2;
                }

                else
                {
                  v33 = 1;
                }

                if (v33)
                {
                  v30 = *(v18 + 16);
                  v34 = *v13;
                  v35 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v18 + 48), *(v18 + 32), v31, 2), v30, *v31.f32, 1), *v18, v31.f32[0]);
                  v35.i32[3] = 0;
                  v34.i32[3] = 0;
                  *v13 = vminnmq_f32(v35, v34);
                  v36 = *v13;
                  v36.i32[3] = 0;
                  v29 = vmaxnmq_f32(v35, v36);
                  *v13 = v29;
                  ++v32;
                }

                else
                {
                  v37 = *(v81 + 4 * v32++);
                  v38 = *(v81 + 4 * v32);
                  if (v37 < v38)
                  {
                    v39 = v79;
                    v29 = vdupq_lane_s32(*v31.f32, 0);
                    v30 = vdupq_lane_s32(*v31.f32, 1);
                    v31 = vdupq_laneq_s32(v31, 2);
                    v40 = (v80 + 2 * v37);
                    v41 = (v79 + 4 * v37);
                    v42 = v38 - v37;
                    do
                    {
                      v44 = *v40++;
                      v43 = v44;
                      if ((v44 & 0x8000000000000000) == 0 && (!v39 || *v41 > 0.0) && Count > v43)
                      {
                        v45 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*(v18 + (v43 << 6) + 48), *(v18 + (v43 << 6) + 32), v31), *(v18 + (v43 << 6) + 16), v30), *(v18 + (v43 << 6)), v29);
                        v46 = v13[v43];
                        v45.i32[3] = 0;
                        v46.i32[3] = 0;
                        v13[v43] = vminnmq_f32(v45, v46);
                        v47 = v13[v43];
                        v47.i32[3] = 0;
                        v13[v43] = vmaxnmq_f32(v45, v47);
                      }

                      ++v41;
                      --v42;
                    }

                    while (v42);
                  }
                }
              }

              while (v32 < v84.u32[0]);
            }
          }

          else
          {
            v76 = sub_1AF0D5194(v26, v27);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDDEBD4();
            }
          }

          goto LABEL_44;
        }

        v75 = sub_1AF0D5194(0, v25);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDEC08();
        }
      }

      else
      {
        v74 = sub_1AF0D5194(0, v23);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDDEC3C();
        }
      }
    }

    else if ((byte_1EB658638 & 1) == 0)
    {
      byte_1EB658638 = 1;
      v21 = sub_1AF0D5194(v10, v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDEBA0();
      }
    }
  }

  else
  {
    v9 = sub_1AF0D5194(0, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AF0CE000, v9, OS_LOG_TYPE_DEFAULT, "Warning: _CFXSkinnerUpdateBoundingBox - skinned node has no model", buf, 2u);
    }
  }
}

double sub_1AF1C9978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8)
{
  v61.columns[2] = a7;
  v61.columns[3] = a8;
  v61.columns[0] = a5;
  v61.columns[1] = a6;
  *&v63[5] = *MEMORY[0x1E69E9840];
  v11 = sub_1AF1C7594(a2);
  v64 = __invert_f4(v61);
  v61.columns[2] = v64.columns[1];
  v61.columns[3] = v64.columns[0];
  v61.columns[0] = v64.columns[3];
  v61.columns[1] = v64.columns[2];
  v13 = sub_1AF1C3F64(a3, v12);
  if (v13)
  {
    v15 = sub_1AF1D0218(v13, v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 80);
  if (v16)
  {
    v17 = sub_1AF1C3FAC(v16, v14);
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_1AF1C3FAC(a1, v14);
  v19 = *(a1 + 96);
  if (v17 == v18)
  {
    if (!v19)
    {
      v19 = sub_1AF1C8A58(a1);
    }
  }

  else
  {
    free(v19);
    *(a1 + 96) = 0;
  }

  MEMORY[0x1EEE9AC00](v19);
  if (a4 < 1)
  {
    v57 = sub_1AF1B7B8C(a3);
    v40 = v61.columns[2];
    v39 = v61.columns[3];
    v42 = v61.columns[0];
    v41 = v61.columns[1];
    if ((v57 & 1) == 0)
    {
      v45 = xmmword_1AFE20B70;
      v44 = xmmword_1AFE201A0;
LABEL_30:
      v58 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v42, v41, v44, 2), v40, *v44.f32, 1), v39, v44.f32[0]);
      v58.i32[3] = v44.i32[3];
      v59 = v45;
      v59.i32[1] = v45.i32[0];
      v59.i32[2] = v45.i32[0];
      *(a1 + 144) = v58;
      *(a1 + 160) = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v40), vuzp2q_s32(vdupq_lane_s32(*v45.f32, 1), v45)), v59, vabsq_f32(v39)), vzip2q_s32(vtrn1q_s32(v45, v45), v45), vabsq_f32(v41));
    }
  }

  else
  {
    v20 = 0;
    v21 = MEMORY[0x1E69E9B18];
    v22 = &v61 - a4;
    do
    {
      v23 = *(a1 + 96);
      if (!v23 || (v24 = *(v23 + 4 * v20), v24 == -1))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v20);
        if (ValueAtIndex)
        {
          v31 = sub_1AF1B9B04(ValueAtIndex, v30);
          v32 = v31[1];
          v33 = v31[2];
          v34 = v31[3];
          v22->columns[0] = *v31;
          v22->columns[1] = v32;
          v22->columns[2] = v33;
          v22->columns[3] = v34;
        }

        else
        {
          v35 = sub_1AF0D5194(0, v30);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDEC70(buf, v63, v35);
          }

          v36 = v21[1];
          v22->columns[0] = *v21;
          v22->columns[1] = v36;
          v37 = v21[3];
          v22->columns[2] = v21[2];
          v22->columns[3] = v37;
        }
      }

      else
      {
        v25 = sub_1AF14CD4C(v15, v24);
        v26 = v25[3];
        v28 = *v25;
        v27 = v25[1];
        v22->columns[2] = v25[2];
        v22->columns[3] = v26;
        v22->columns[0] = v28;
        v22->columns[1] = v27;
      }

      ++v20;
      ++v22;
    }

    while (a4 != v20);
    v38 = sub_1AF1B7B8C(a3);
    v40 = v61.columns[2];
    v39 = v61.columns[3];
    v42 = v61.columns[0];
    v41 = v61.columns[1];
    if ((v38 & 1) == 0)
    {
      v43 = &v61.columns[-4 * a4 + 2];
      v44 = xmmword_1AFE201A0;
      v45 = xmmword_1AFE20B70;
      v46 = (*(a1 + 128) + 16);
      v47.i64[0] = 0x3F0000003F000000;
      v47.i64[1] = 0x3F0000003F000000;
      v48 = a4;
      do
      {
        if ((vminvq_u32(vcgezq_f32(*v46->i8)) & 0x80000000) != 0)
        {
          v49 = v43[-2];
          v50 = v43[-1];
          v51 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v43[1], *v43, *v46[-2].i8, 2), v50, v46[-2], 1), v49, COERCE_FLOAT(*v46[-2].i8));
          v51.i32[3] = HIDWORD(*v46[-2].i8);
          v52 = vabsq_f32(v49);
          v53 = *v46->i8;
          v53.i32[1] = *v46->i8;
          v53.i32[2] = v53.i32[1];
          v54 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v46, 1), *v46->i8), vabsq_f32(v50)), v53, v52), vzip2q_s32(vtrn1q_s32(*v46->i8, *v46->i8), *v46->i8), vabsq_f32(*v43));
          v55 = vminnmq_f32(vsubq_f32(v44, v45), vsubq_f32(v51, v54));
          v56 = vmaxnmq_f32(vaddq_f32(v44, v45), vaddq_f32(v54, v51));
          v44 = vmulq_f32(vaddq_f32(v55, v56), v47);
          v45 = vmulq_f32(vsubq_f32(v56, v55), v47);
        }

        v43 += 4;
        v46 += 4;
        --v48;
      }

      while (v48);
      goto LABEL_30;
    }
  }

  sub_1AF1DAB80(&v61 - 4 * a4, (&v61 - a4), a4, v39, v40, v41, v42);
  sub_1AF1DAAEC(*(a1 + 112), &v61 - 4 * a4, v11, a4);
  *&result = sub_1AF1DAC14(*(a1 + 120), *(a1 + 112), a4).u64[0];
  return result;
}

void sub_1AF1C9CD8(uint64_t a1, float32x4_t *a2)
{
  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a2);
  }

  v4 = *(a1 + 72);
  if (!v4)
  {
    v5 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDE9C0(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = sub_1AF1C7940(v4);
  if (*(a1 + 88) && (v15 = *(a1 + 104)) != 0 && (v16 = v13, v15 == v13))
  {
    v17 = sub_1AF1B9B04(a2, v14);
    sub_1AF1C9978(a1, v4, a2, v16, *v17, v17[1], v17[2], v17[3]);
    sub_1AF1B78DC(a2, v18);
  }

  else if ((byte_1EB658639 & 1) == 0)
  {
    byte_1EB658639 = 1;
    v19 = sub_1AF0D5194(v13, v14);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDEBA0();
    }
  }
}

uint64_t sub_1AF1C9DCC(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = 3 * *(a1 + 104);
  }

  return *(a1 + 120);
}

uint64_t sub_1AF1C9DE4(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a2);
  }

  if ((vminvq_u32(vcgezq_f32(*(a1 + 160))) & 0x80000000) != 0)
  {
    v10 = 1;
LABEL_22:
    v36 = *(a1 + 160);
    *a3 = *(a1 + 144);
    a3[1] = v36;
    return v10 & 1;
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    Count = CFArrayGetCount(v6);
    if (Count)
    {
      v8 = Count;
      if (Count < 1)
      {
        v10 = 0;
        v39 = xmmword_1AFE20B70;
        v38 = xmmword_1AFE201A0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v38 = xmmword_1AFE201A0;
        v39 = xmmword_1AFE20B70;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v11);
          v14 = sub_1AF1C3FAC(ValueAtIndex, v13);
          v16 = v14;
          if (v14)
          {
            sub_1AF1CEA20(v14, v15);
          }

          v17 = sub_1AF1B9B04(ValueAtIndex, v15);
          v18 = *v17;
          v19 = v17[1];
          v21 = v17[2];
          v20 = v17[3];
          if (v16)
          {
            v42 = v17[2];
            v43 = v17[3];
            v40 = *v17;
            v41 = v17[1];
            sub_1AF1CEA9C(v16, a2);
            v18 = v40;
            v19 = v41;
            v21 = v42;
            v20 = v43;
          }

          v22 = *(a1 + 128);
          v23 = *(v22 + v9 + 16);
          if ((vminvq_u32(vcgezq_f32(v23)) & 0x80000000) != 0)
          {
            v24 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v20, v21, *(v22 + v9), 2), v19, *(v22 + v9), 1), v18, COERCE_FLOAT(*(v22 + v9)));
            v24.i32[3] = HIDWORD(*(v22 + v9));
            v25 = *(v22 + v9 + 16);
            v25.i32[1] = v25.i32[0];
            v25.i32[2] = *(v22 + v9 + 16);
            v26 = vmlaq_f32(vmlaq_f32(vmulq_f32(vabsq_f32(v19), vuzp2q_s32(vdupq_lane_s32(*v23.f32, 1), v23)), v25, vabsq_f32(v18)), vzip2q_s32(vtrn1q_s32(v23, v23), v23), vabsq_f32(v21));
            v27 = vminnmq_f32(vsubq_f32(v38, v39), vsubq_f32(v24, v26));
            v28 = vmaxnmq_f32(vaddq_f32(v38, v39), vaddq_f32(v26, v24));
            v26.i64[0] = 0x3F0000003F000000;
            v26.i64[1] = 0x3F0000003F000000;
            v38 = vmulq_f32(vaddq_f32(v27, v28), v26);
            v39 = vmulq_f32(vsubq_f32(v28, v27), v26);
            v10 = 1;
          }

          ++v11;
          v9 += 32;
        }

        while (v8 != v11);
      }

      v46 = *sub_1AF1B9B04(a2, a2);
      v47 = __invert_f4(v46);
      v47.columns[3] = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v47.columns[3], v47.columns[2], v38, 2), v47.columns[1], *v38.f32, 1), v47.columns[0], v38.f32[0]);
      v47.columns[3].i32[3] = v38.i32[3];
      v35 = v39;
      v35.i32[1] = v39.i32[0];
      v35.i32[2] = v39.i32[0];
      *(a1 + 144) = v47.columns[3];
      *(a1 + 160) = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v39.f32, 1), v39), vabsq_f32(v47.columns[1])), v35, vabsq_f32(v47.columns[0])), vzip2q_s32(vtrn1q_s32(v39, v39), v39), vabsq_f32(v47.columns[2]));
      goto LABEL_22;
    }
  }

  v29 = sub_1AF1B75A0(a2, a2);
  if (v29)
  {
    v31 = sub_1AF1B329C(v29, v30);
    v45.i32[2] = 0;
    v45.i64[0] = 0;
    v44.i32[2] = 0;
    v44.i64[0] = 0;
    v10 = sub_1AF1A3234(v31, &v45, &v44);
    v32 = v45;
    v33 = v44;
    v32.i32[3] = 1.0;
    v33.i32[3] = 1.0;
    v34.i64[0] = 0x3F0000003F000000;
    v34.i64[1] = 0x3F0000003F000000;
    *a3 = vmulq_f32(vaddq_f32(v32, v33), v34);
    a3[1] = vmulq_f32(vsubq_f32(v33, v32), v34);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1AF1CA094(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDEB28(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a2);
  }

  return *(a1 + 128);
}

void sub_1AF1CA100(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a3);
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = sub_1AF167434(v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = sub_1AF1CA1D4;
    v9[3] = &unk_1E7A7B988;
    v10 = a4;
    v9[4] = v7;
    v9[5] = a2;
    v9[6] = &unk_1AFE20460;
    v11 = 1;
    v12 = !v8;
    sub_1AF1B94AC(v7, v9);
  }
}

uint64_t sub_1AF1CA1D4(uint64_t a1, const char *a2)
{
  if (*(a1 + 32) != a2)
  {
    *v4.i64 = sub_1AF1B7F84(a2, a2);
    v18 = v5;
    v19 = v4;
    v16 = v7;
    v17 = v6;
    v9 = sub_1AF1B9B04(a2, v8);
    v22.columns[1] = v18;
    v22.columns[0] = v19;
    v22.columns[3] = v16;
    v22.columns[2] = v17;
    v10 = __invert_f4(v22);
    v21 = 0uLL;
    v10.columns[0] = vmulq_f32(v10.columns[3], v10.columns[3]);
    v10.columns[1].f32[0] = v10.columns[0].f32[2] + vaddv_f32(*v10.columns[0].f32);
    v10.columns[0].f32[0] = sqrtf(v10.columns[1].f32[0]);
    if (v10.columns[0].f32[0] <= 0.0)
    {
      v10.columns[2] = xmmword_1AFE20160;
      v10.columns[1].i32[0] = *(a1 + 56);
      v10.columns[0].i32[0] = v10.columns[1].i32[0];
    }

    else
    {
      v10.columns[2].i32[0] = v10.columns[1].i32[0];
      *v10.columns[1].f32 = vrsqrte_f32(v10.columns[1].u32[0]);
      *v10.columns[1].f32 = vmul_f32(*v10.columns[1].f32, vrsqrts_f32(v10.columns[2].u32[0], vmul_f32(*v10.columns[1].f32, *v10.columns[1].f32)));
      v10.columns[2] = vmulq_n_f32(v10.columns[3], vmul_f32(*v10.columns[1].f32, vrsqrts_f32(v10.columns[2].u32[0], vmul_f32(*v10.columns[1].f32, *v10.columns[1].f32))).f32[0]);
      v10.columns[1].i32[0] = *(a1 + 56);
    }

    v20 = v10.columns[2];
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 60);
    v11 = v9;
    goto LABEL_8;
  }

  if (*(a1 + 61) == 1)
  {
    v11 = sub_1AF1B9B04(a2, a2);
    v21 = 0uLL;
    v20 = xmmword_1AFE20160;
    v10.columns[0].i32[0] = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 60);
    v10.columns[1].i32[0] = v10.columns[0].i32[0];
LABEL_8:
    sub_1AF100944(v12, &v21, &v20, v11, v13, v14, v10.columns[0].f32[0], v10.columns[1].f32[0]);
  }

  sub_1AF0FC634(*(a1 + 40), a2);
  return 0;
}

void sub_1AF1CA30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 176) == 1)
  {
    sub_1AF1C9430(a1, a3);
  }

  v12 = xmmword_1AFE21170;
  Count = CFArrayGetCount(*(a1 + 88));
  if (Count >= 1)
  {
    v6 = Count;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      if ((vminvq_u32(vcgezq_f32(*(*(a1 + 128) + v7 + 16))) & 0x80000000) != 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), i);
        v11 = sub_1AF1B9B04(ValueAtIndex, v10);
        sub_1AF0FEDA4(a2, (*(a1 + 128) + v7), v11, &v12);
      }

      v7 += 32;
    }
  }
}

double sub_1AF1CA3E8(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  if (a2 == 1)
  {
    v31[10] = v6;
    v31[11] = v7;
    v8 = *(a1 + 120);
    if (*(a1 + 104) != 1)
    {
      v28 = a5;
      v29 = a6;
      v26 = a3;
      v27 = a4;
      v9 = sub_1AF0D5194(a1, a2);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
      a3 = v26;
      a4 = v27;
      a5 = v28;
      a6 = v29;
      if (v10)
      {
        sub_1AFDDECC0(v9, v11, v12, v13, v14, v15, v16, v17);
        a3 = v26;
        a4 = v27;
        a5 = v28;
        a6 = v29;
      }
    }

    v18 = 0;
    v19 = v8[1];
    v20 = v8[2];
    v21 = vzip1q_s32(*v8, v20);
    v22 = vzip2q_s32(*v8, v20);
    v23 = vzip1q_s32(v19, 0);
    v24 = vzip2q_s32(v19, xmmword_1AFE201A0);
    v30[0] = vzip1q_s32(v21, v23);
    v30[1] = vzip2q_s32(v21, v23);
    v30[2] = vzip1q_s32(v22, v24);
    v30[3] = vzip2q_s32(v22, v24);
    memset(v31, 0, 64);
    do
    {
      *&v31[v18 / 8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(v30[v18 / 0x10])), a4, *&v30[v18 / 0x10], 1), a5, v30[v18 / 0x10], 2), a6, v30[v18 / 0x10], 3);
      v18 += 16;
    }

    while (v18 != 64);
    a3.i64[0] = v31[0];
  }

  return *a3.i64;
}

double sub_1AF1CA4DC(uint64_t a1)
{
  *(a1 + 176) = 1;
  result = 0.0;
  *(a1 + 144) = xmmword_1AFE201A0;
  *(a1 + 160) = xmmword_1AFE20B70;
  return result;
}

id sub_1AF1CA500(void *a1, uint64_t a2)
{
  if (a1[9])
  {
    sub_1AF1C8C40(a1, 0);
  }

  v3 = a1[15];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[14];
  if (v5)
  {
    free(v5);
  }

  v6 = a1[16];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[12];
  if (v7)
  {
    free(v7);
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  return sub_1AF16C9A4(a1, a2);
}

__CFString *sub_1AF1CA598(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = sub_1AF3753A8(a1);
  CFStringAppendFormat(Mutable, 0, @"<%s %p | skeleton:%p jointCount:%d\n", v5, a1, a1[10], Count);
  CFStringAppendFormat(Mutable, 0, @"  skin:%p\n", a1[9]);
  if (a1[13] >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = a1[16];
      if (!v8)
      {
        break;
      }

      v9 = v8 + v6;
      CFStringAppendFormat(Mutable, 0, @"  JointBbox[%d] {%f,%f,%f} {%f,%f,%f}\n", v7++, COERCE_FLOAT(*v9), COERCE_FLOAT(HIDWORD(*v9)), COERCE_FLOAT(*(v9 + 8)), COERCE_FLOAT(*(v9 + 16)), COERCE_FLOAT(HIDWORD(*(v9 + 16))), COERCE_FLOAT(*(v9 + 24)));
      v6 += 32;
    }

    while (v7 < a1[13]);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

__CFArray *sub_1AF1CA6E0(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v40 = 1;
  valuePtr = 5;
  v39 = sub_1AF16CE58(a1, v6);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v40);
  v9 = CFNumberCreate(0, kCFNumberLongType, &v39);
  CFDictionarySetValue(v5, @"name", @"attributes");
  CFDictionarySetValue(v5, @"type", v7);
  CFDictionarySetValue(v5, @"address", v9);
  CFDictionarySetValue(v5, @"semantic", v8);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v8);
  CFRelease(v5);
  CFRelease(v9);
  CFRelease(v7);
  v10 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v40 = 2;
  valuePtr = 5;
  v39 = a1 + 72;
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v40);
  v13 = CFNumberCreate(0, kCFNumberLongType, &v39);
  CFDictionarySetValue(v10, @"name", @"skin");
  CFDictionarySetValue(v10, @"type", v11);
  CFDictionarySetValue(v10, @"address", v13);
  CFDictionarySetValue(v10, @"semantic", v12);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v12);
  CFRelease(v10);
  CFRelease(v13);
  CFRelease(v11);
  v14 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v40 = 2;
  valuePtr = 5;
  v39 = a1 + 80;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v40);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v39);
  CFDictionarySetValue(v14, @"name", @"skeleton");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v40 = 2;
  valuePtr = 5;
  v39 = a1 + 88;
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &v40);
  v21 = CFNumberCreate(0, kCFNumberLongType, &v39);
  CFDictionarySetValue(v18, @"name", @"joints");
  CFDictionarySetValue(v18, @"type", v19);
  CFDictionarySetValue(v18, @"address", v21);
  CFDictionarySetValue(v18, @"semantic", v20);
  CFArrayAppendValue(Mutable, v18);
  CFRelease(v20);
  CFRelease(v18);
  CFRelease(v21);
  CFRelease(v19);
  v22 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v40 = 0;
  valuePtr = 3;
  v39 = a1 + 176;
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &v40);
  v25 = CFNumberCreate(0, kCFNumberLongType, &v39);
  CFDictionarySetValue(v22, @"name", @"bboxDirty");
  CFDictionarySetValue(v22, @"type", v23);
  CFDictionarySetValue(v22, @"address", v25);
  CFDictionarySetValue(v22, @"semantic", v24);
  v26 = Mutable;
  CFArrayAppendValue(Mutable, v22);
  CFRelease(v24);
  CFRelease(v22);
  v27 = a1;
  CFRelease(v25);
  CFRelease(v23);
  v28 = *(a1 + 88);
  if (v28)
  {
    Count = CFArrayGetCount(v28);
    if (Count >= 1)
    {
      v30 = Count;
      v31 = 0;
      for (i = 0; i != v30; ++i)
      {
        v33 = CFStringCreateWithFormat(0, 0, @"verticesJointsMatrices[%d]", i);
        v34 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v40 = 0;
        valuePtr = 10;
        v39 = *(v27 + 112) + v31;
        v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v40);
        v37 = CFNumberCreate(0, kCFNumberLongType, &v39);
        CFDictionarySetValue(v34, @"name", v33);
        CFDictionarySetValue(v34, @"type", v35);
        CFDictionarySetValue(v34, @"address", v37);
        CFDictionarySetValue(v34, @"semantic", v36);
        CFArrayAppendValue(v26, v34);
        CFRelease(v36);
        CFRelease(v34);
        CFRelease(v37);
        CFRelease(v35);
        CFRelease(v33);
        v31 += 64;
      }
    }
  }

  return v26;
}

uint64_t sub_1AF1CAD2C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    return (*(a2 + 16))(a2, v2);
  }

  return result;
}

uint64_t sub_1AF1CAD7C(uint64_t a1, const void *a2)
{
  v4 = sub_1AF16CCC0(a1, a2);
  if (sub_1AF1D2AE0(v4, a2))
  {
    return a1;
  }

  v6 = *(a1 + 72);

  return sub_1AF1C4020(v6, a2);
}

uint64_t sub_1AF1CADD8()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED731B18 = result;
  qword_1ED721A40 = sub_1AF1CB70C;
  return result;
}

uint64_t sub_1AF1CAE1C(uint64_t a1)
{
  if (qword_1ED731B20 != -1)
  {
    sub_1AFDDED38();
  }

  v2 = qword_1ED731B18;

  return sub_1AF0D160C(v2, 0x30uLL);
}

uint64_t sub_1AF1CAE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1AF1CAE1C(a1);
  *(v11 + 24) = a1;
  *(v11 + 26) = a2;
  if (!a4)
  {
    a4 = sub_1AF288070(a1, v10) * a2;
  }

  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = 0;
  return v11;
}

void *sub_1AF1CAEF0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v4, a2, a3, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 16);
  if (result)
  {
    return sub_1AF17017C(result, a2, a3);
  }

  return result;
}

const UInt8 *sub_1AF1CAF40(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[4] <= a2)
  {
    v8 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDED4C();
    }
  }

  else
  {
    v5 = sub_1AF1CAEF0(a1, a2, a3);
    if (v5)
    {
      return &CFDataGetBytePtr(v5)[a1[5] * a2 + a1[6]];
    }

    v9 = sub_1AF0D5194(0, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDEDB8(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  return 0;
}

__CFData *sub_1AF1CAFE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[4] <= a2)
  {
    v6 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDEDF0();
    }

    return 0;
  }

  else
  {
    result = sub_1AF1CAEF0(a1, a2, a3);
    if (result)
    {
      return &CFDataGetMutableBytePtr(result)[a1[5] * a2 + a1[6]];
    }
  }

  return result;
}

uint64_t sub_1AF1CB064(void *a1, uint64_t a2)
{
  if (a1[4] <= a2)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDEE60();
    }

    return 0;
  }

  v2 = a1[2];
  if ((*(v2 + 88) & 4) == 0)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDEED0(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  v13 = *(v2 + 72);
  if (!v13)
  {
    return 0;
  }

  return v13 + a1[5] * a2;
}

void sub_1AF1CB108(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  *(a1 + 16) = a2;
  if (a2)
  {
    v5 = sub_1AF17017C(a2, a2, a3);
    if (v5)
    {
      Length = CFDataGetLength(v5);
      v8 = Length;
      if (Length || *(a1 + 32) && (Length = sub_1AF170374(a2), (Length & 1) == 0))
      {
        if (*(a1 + 48) >= v8)
        {
          v16 = sub_1AF0D5194(Length, v7);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 48);
            v18 = *(a1 + 32);
            v22 = 134218496;
            v23 = v8;
            v24 = 2048;
            v25 = v17;
            v26 = 1024;
            v27 = v18;
            _os_log_error_impl(&dword_1AF0CE000, v16, OS_LOG_TYPE_ERROR, "Error: CFXSourceAccessorSetSource - source has insufficient data (length %zu for offset %zu) ; count capped to 0 (was %d)", &v22, 0x1Cu);
          }

          *(a1 + 32) = 0;
        }

        else
        {
          v9 = sub_1AF288070(*(a1 + 24), v7);
          v11 = v9 * *(a1 + 26);
          v12 = v8 - *(a1 + 48);
          v13 = v12 / v11;
          if (v12 % *(a1 + 40) < v11)
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 + 1;
          }

          if (*(a1 + 32) > v14)
          {
            v15 = sub_1AF0D5194(v9, v10);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v19 = *(a1 + 32);
              v21 = *(a1 + 40);
              v20 = *(a1 + 48);
              v22 = 134219264;
              v23 = v8;
              v24 = 2048;
              v25 = v20;
              v26 = 1024;
              v27 = v19;
              v28 = 2048;
              v29 = v21;
              v30 = 1024;
              v31 = v14;
              v32 = 1024;
              v33 = v19;
              _os_log_error_impl(&dword_1AF0CE000, v15, OS_LOG_TYPE_ERROR, "Error: CFXSourceAccessorSetSource - source has insufficient data (length %zu for offset %zu, count %d and stride %zu) ; count capped to %d (was %d)", &v22, 0x32u);
            }

            *(a1 + 32) = v14;
          }
        }
      }
    }
  }
}

uint64_t sub_1AF1CB2E4(uint64_t a1)
{
  v2 = sub_1AF1CAE64(*(a1 + 24), *(a1 + 26), *(a1 + 32), *(a1 + 40), *(a1 + 48));
  sub_1AF1CB108(v2, *(a1 + 16), v3);
  return v2;
}

BOOL sub_1AF1CB35C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 26);
  return v2 != *(a1 + 56) + sub_1AF288070(*(a1 + 24), a2) * v3;
}

BOOL sub_1AF1CB3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 26);
  v6 = *(a2 + 26);
  if (v5 > v6)
  {
    return 0;
  }

  v7 = *(a2 + 40) * *(a1 + 32);
  if (!v7)
  {
    return 0;
  }

  v9 = sub_1AF1CAEF0(a2, a2, a3);
  Length = CFDataGetLength(v9);
  if (v7 > Length - *(a2 + 40) * a3)
  {
    v13 = sub_1AF0D5194(Length, v11);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1AFDDEF80(v13, v15, v16, v17, v18, v19, v20, v21);
    return 0;
  }

  v22 = sub_1AF1CAFE0(a2, a3, v12);
  if (!v22)
  {
    v39 = sub_1AF0D5194(0, v23);
    result = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1AFDDEF48(v39, v40, v41, v42, v43, v44, v45, v46);
    return 0;
  }

  v24 = v22;
  v25 = *(a1 + 40);
  v26 = *(a1 + 26);
  if (v25 == *(a1 + 56) + sub_1AF288070(*(a1 + 24), v23) * v26)
  {
    v29 = *(a2 + 40);
    v30 = *(a2 + 26);
    v31 = sub_1AF288070(*(a2 + 24), v27);
    if (v6 <= v5 && v29 == *(a2 + 56) + v31 * v30)
    {
      v32 = sub_1AF1CAF40(a1, 0, v28);
      memcpy(v24, v32, v7);
      return 1;
    }
  }

  v33 = sub_1AF1CAF40(a1, 0, v28);
  v34 = *(a1 + 26);
  v36 = sub_1AF288070(*(a1 + 24), v35);
  if (*(a1 + 32) < 1)
  {
    return 1;
  }

  v37 = 0;
  v38 = v36 * v34;
  do
  {
    memcpy(v24, v33, v38);
    v33 += *(a1 + 40);
    v24 = (v24 + *(a2 + 40));
    ++v37;
    result = 1;
  }

  while (v37 < *(a1 + 32));
  return result;
}

uint64_t sub_1AF1CB564(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

void sub_1AF1CB5AC(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 48) = a2;
}

void sub_1AF1CB600(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 40) = a2;
}

uint64_t sub_1AF1CB65C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32) * *(a1 + 40);
}

uint64_t sub_1AF1CB6A8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDD8424(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF288070(*(a1 + 24), a2) * *(a1 + 26);
}

__CFArray *sub_1AF1CB70C(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = MEMORY[0x1E695E9D8];
  v4 = MEMORY[0x1E695E9E8];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v44 = 0;
  valuePtr = 5;
  v43 = *(a1 + 16) + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v5, @"name", @"accessor");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 2;
  valuePtr = 5;
  v43 = *(a1 + 16) + 72;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v9, @"name", @"data");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = v4;
  v14 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 24;
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v17 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v14, @"name", @"type");
  CFDictionarySetValue(v14, @"type", v15);
  CFDictionarySetValue(v14, @"address", v17);
  CFDictionarySetValue(v14, @"semantic", v16);
  CFArrayAppendValue(Mutable, v14);
  CFRelease(v16);
  CFRelease(v14);
  CFRelease(v17);
  CFRelease(v15);
  v18 = MEMORY[0x1E695E9D8];
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], v13);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 26;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v19, @"name", @"componentsCountPerValue");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  CFArrayAppendValue(Mutable, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v23 = CFDictionaryCreateMutable(0, 4, v18, v13);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 32;
  v24 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v26 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v23, @"name", @"count");
  CFDictionarySetValue(v23, @"type", v24);
  CFDictionarySetValue(v23, @"address", v26);
  CFDictionarySetValue(v23, @"semantic", v25);
  v27 = Mutable;
  CFArrayAppendValue(Mutable, v23);
  CFRelease(v25);
  CFRelease(v23);
  CFRelease(v26);
  CFRelease(v24);
  v28 = MEMORY[0x1E695E9D8];
  v29 = MEMORY[0x1E695E9E8];
  v30 = CFDictionaryCreateMutable(0, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 40;
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v33 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v30, @"name", @"stride");
  CFDictionarySetValue(v30, @"type", v31);
  CFDictionarySetValue(v30, @"address", v33);
  CFDictionarySetValue(v30, @"semantic", v32);
  CFArrayAppendValue(v27, v30);
  CFRelease(v32);
  CFRelease(v30);
  CFRelease(v33);
  CFRelease(v31);
  v34 = CFDictionaryCreateMutable(0, 4, v28, v29);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 48;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v34, @"name", @"offset");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(v27, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = CFDictionaryCreateMutable(0, 4, v28, v29);
  v44 = 0;
  valuePtr = 2;
  v43 = a1 + 56;
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v44);
  v41 = CFNumberCreate(0, kCFNumberLongType, &v43);
  CFDictionarySetValue(v38, @"name", @"padding");
  CFDictionarySetValue(v38, @"type", v39);
  CFDictionarySetValue(v38, @"address", v41);
  CFDictionarySetValue(v38, @"semantic", v40);
  CFArrayAppendValue(v27, v38);
  CFRelease(v40);
  CFRelease(v38);
  CFRelease(v41);
  CFRelease(v39);
  return v27;
}

void sub_1AF1CBED8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0xEu);
}

__n128 sub_1AF1CBF04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 92) = 8;
  return result;
}

__n128 sub_1AF1CBF20(_BYTE *a1, uint64_t a2)
{
  if ((a1[92] & 8) == 0)
  {
    sub_1AF1CBF58(a1, a2);
  }

  return *a1;
}

__n128 sub_1AF1CBF58(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((*(a1 + 92) & 4) == 0)
  {
    v3 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDEFB8(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(v2 + 92) & 8) != 0)
  {
    v10 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF030(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(v2 + 64);
  if ((*(v2 + 92) & 3) != 0)
  {
    if ((*(v2 + 92) & 3) == 2)
    {
      v19 = vmulq_f32(v18, v18);
      v19.f32[0] = v19.f32[2] + vaddv_f32(*v19.f32);
      v20 = vdupq_lane_s32(*v19.f32, 0);
      v20.i32[3] = 0;
      v21 = vrsqrteq_f32(v20);
      v22 = vmulq_f32(v21, vrsqrtsq_f32(v20, vmulq_f32(v21, v21)));
      v23 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v19.f32[0] != 0.0)), 0x1FuLL));
      v23.i32[3] = 0;
      v48 = vbslq_s8(vcltzq_s32(v23), vmulq_f32(v18, vmulq_f32(v22, vrsqrtsq_f32(v20, vmulq_f32(v22, v22)))), v18);
      v24 = __sincosf_stret(vmuls_lane_f32(0.5, v18, 3));
      v18 = vmulq_n_f32(v48, v24.__sinval);
      v18.i32[3] = LODWORD(v24.__cosval);
    }

    else
    {
      v25.i64[0] = 0x3F0000003F000000;
      v25.i64[1] = 0x3F0000003F000000;
      v26 = vmulq_f32(v18, v25);
      v26.i32[3] = 0;
      x = v26;
      v49 = _simd_cos_f4(v26);
      v27 = _simd_sin_f4(x);
      v28 = vextq_s8(v49, v49, 4uLL);
      v29 = vmulq_f32(vzip1q_s32(vrev64q_s32(v49), v49), vextq_s8(vzip1q_s32(v28, v27), v28, 8uLL));
      v30 = vzip2q_s32(vzip1q_s32(v49, v27), v27);
      v30.f32[3] = -v27.f32[0];
      v31 = vextq_s8(v27, v27, 8uLL);
      v32 = vtrn1q_s32(v27, vextq_s8(v49, v49, 8uLL));
      v27.i32[3] = v27.i32[1];
      v33 = vtrn1q_s32(v31, v49);
      v33.f32[1] = -v49.f32[0];
      v18 = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v27, v30), v33)), v32, v29);
    }
  }

  result = *(v2 + 80);
  v35 = vabsq_f32(result);
  v35.i32[3] = 0;
  v36.i64[0] = 0x8000000080000000;
  v36.i64[1] = 0x8000000080000000;
  v37 = vorrq_s8(vandq_s8(result, v36), vabsq_f32(vmaxnmq_f32(v35, xmmword_1AFE20A30)));
  v38 = vmulq_f32(v18, v18);
  v39 = vmulq_laneq_f32(v18, v18, 3);
  v40 = vmuls_lane_f32(v18.f32[0], *v18.f32, 1);
  v41 = vmuls_lane_f32(v18.f32[1], v18, 2);
  v42 = vmuls_lane_f32(v18.f32[0], v18, 2);
  v43 = vaddq_f32(v37, v37);
  v44.i32[3] = 0;
  v44.f32[0] = (0.5 - v38.f32[1]) - v38.f32[2];
  v44.f32[1] = v40 + v39.f32[2];
  v44.f32[2] = v42 - v39.f32[1];
  v38.f32[0] = 0.5 - v38.f32[0];
  v45.i32[3] = 0;
  v45.f32[0] = v40 - v39.f32[2];
  v45.f32[1] = v38.f32[0] - v38.f32[2];
  v45.f32[2] = v41 + v39.f32[0];
  v46.f32[0] = v42 + v39.f32[1];
  v46.f32[1] = v41 - v39.f32[0];
  v46.i64[1] = COERCE_UNSIGNED_INT(v38.f32[0] - v38.f32[1]);
  *v2 = vmulq_n_f32(v44, v43.f32[0]);
  *(v2 + 16) = vmulq_lane_f32(v45, *v43.f32, 1);
  *(v2 + 32) = vmulq_laneq_f32(v46, v43, 2);
  *(v2 + 60) = 1065353216;
  *(v2 + 92) = result.n128_u32[3] | 8;
  return result;
}

uint64_t sub_1AF1CC1BC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 92) & 8) == 0)
  {
    sub_1AF1CBF58(a1, a2);
  }

  return a1;
}

double sub_1AF1CC1F0(simd_float4 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v10 = a1[5].i32[3];
  if ((v10 & 4) == 0)
  {
    sub_1AF1CC338(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    v10 = a1[5].i32[3];
  }

  v11 = a1[4];
  v12 = v10 & 3;
  if (v12)
  {
    if (v12 == 2)
    {
      v13 = vmulq_f32(v11, v11);
      v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
      v14 = vdupq_lane_s32(*v13.f32, 0);
      v14.i32[3] = 0;
      v15 = vrsqrteq_f32(v14);
      v16 = vmulq_f32(v15, vrsqrtsq_f32(v14, vmulq_f32(v15, v15)));
      v17 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v13.f32[0] != 0.0)), 0x1FuLL));
      v17.i32[3] = 0;
      v11.i64[0] = vmulq_n_f32(vbslq_s8(vcltzq_s32(v17), vmulq_f32(v11, vmulq_f32(v16, vrsqrtsq_f32(v14, vmulq_f32(v16, v16)))), v11), __sincosf_stret(vmuls_lane_f32(0.5, v11, 3)).__sinval).u64[0];
    }

    else
    {
      v18.i64[0] = 0x3F0000003F000000;
      v18.i64[1] = 0x3F0000003F000000;
      v19 = vmulq_f32(v11, v18);
      v19.i32[3] = 0;
      x = v19;
      v28 = _simd_cos_f4(v19);
      v11 = _simd_sin_f4(x);
      v20 = vextq_s8(v28, v28, 4uLL);
      v21 = vmulq_f32(vzip1q_s32(vrev64q_s32(v28), v28), vextq_s8(vzip1q_s32(v20, v11), v20, 8uLL));
      v22 = vzip2q_s32(vzip1q_s32(v28, v11), v11);
      v22.f32[3] = -v11.f32[0];
      v23 = vextq_s8(v11, v11, 8uLL);
      v24 = vtrn1q_s32(v11, vextq_s8(v28, v28, 8uLL));
      v11.i32[3] = v11.i32[1];
      v25 = vtrn1q_s32(v23, v28);
      v25.f32[1] = -v28.f32[0];
      v11.i64[0] = vmlaq_f32(vrev64q_s32(vmulq_f32(vmulq_f32(v11, v22), v25)), v24, v21).u64[0];
    }
  }

  return *v11.i64;
}

void sub_1AF1CC338(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v9 = result;
  if ((*(result + 92) & 8) == 0)
  {
    v10 = sub_1AF0D5194(result, a2);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);
    if (result)
    {
      sub_1AFDDF0A8(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  if ((*(v9 + 92) & 4) != 0)
  {
    v17 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF120(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  v25 = *v9;
  v26 = *(v9 + 16);
  v27 = *(v9 + 32);
  v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), vnegq_f32(v26)), v27, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
  v29 = vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), *v9);
  v60 = (v29.f32[2] + vaddv_f32(*v29.f32)) < 0.0;
  v30 = 1.0;
  if (v60)
  {
    v30 = -1.0;
  }

  v31 = vmulq_f32(v25, v25);
  v32 = vmulq_f32(v26, v26);
  *a9.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8))));
  v33 = vmulq_f32(v27, v27);
  a9.i32[2] = sqrtf(*&v33.i32[2] + vaddv_f32(*v33.i8));
  v34 = vmulq_n_f32(a9, v30);
  v34.i32[3] = *(v9 + 92);
  *(v9 + 80) = v34;
  v35 = vzip2q_s32(v31, v33);
  v36 = vzip1q_s32(vzip1q_s32(v31, v33), v32);
  v37 = vtrn2q_s32(v31, v32);
  v37.i32[2] = v33.i32[1];
  v38 = vaddq_f32(vzip1q_s32(v35, vdupq_laneq_s32(v32, 2)), vaddq_f32(v36, v37));
  v37.i64[0] = 0x80000000800000;
  v37.i64[1] = 0x80000000800000;
  v39 = vcgeq_f32(v37, v38);
  v38.i32[3] = 0;
  v40 = vrsqrteq_f32(v38);
  v41 = vmulq_f32(v40, vrsqrtsq_f32(v38, vmulq_f32(v40, v40)));
  v42 = v39;
  v42.i32[3] = 0;
  v43 = vbslq_s8(vcltzq_s32(v42), v38, vmulq_f32(v41, vrsqrtsq_f32(v38, vmulq_f32(v41, v41))));
  v44 = vmulq_n_f32(v25, v43.f32[0]);
  v45 = vmulq_lane_f32(v26, *v43.f32, 1);
  v46 = vmulq_laneq_f32(v27, v43, 2);
  v47 = vuzp1q_s32(v46, v46);
  v48 = vuzp1q_s32(v45, v45);
  v49 = v44;
  if (v39.i32[0])
  {
    v50 = vmlaq_f32(vmulq_f32(vextq_s8(v47, v46, 0xCuLL), vnegq_f32(v45)), v46, vextq_s8(v48, v45, 0xCuLL));
    v49 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
  }

  v51 = vuzp1q_s32(v44, v44);
  v52 = v45;
  if (v39.i32[1])
  {
    v53 = vmlaq_f32(vmulq_f32(vextq_s8(v51, v44, 0xCuLL), vnegq_f32(v46)), v44, vextq_s8(v47, v46, 0xCuLL));
    v52 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
  }

  if (v39.i32[2])
  {
    v54 = vmlaq_f32(vmulq_f32(vextq_s8(v48, v45, 0xCuLL), vnegq_f32(v44)), v45, vextq_s8(v51, v44, 0xCuLL));
    v46 = vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL);
  }

  v55 = (*v49.i32 + *&v52.i32[1]) + v46.f32[2];
  if (v55 <= 0.0)
  {
    v60 = *v49.i32 < *&v52.i32[1] || *v49.i32 < v46.f32[2];
    if (v60)
    {
      if (*&v52.i32[1] <= v46.f32[2])
      {
        v67 = vzip2q_s32(v49, v52).u64[0];
        v68 = __PAIR64__(v49.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v46.f32[2] + 1.0) - *v49.i32) - *&v52.i32[1])));
        v69 = vdup_lane_s32(*v52.i8, 0);
        v70 = vsub_f32(*v49.i8, v69);
        v69.i32[0] = v68.i32[0];
        v69.i32[0] = vmul_f32(v68, v69).u32[0];
        v69.i32[1] = v70.i32[1];
        *v57.f32 = vadd_f32(v67, *v46.f32);
        *&v57.u32[2] = v69;
        v58 = 0.5 / v68.f32[0];
        goto LABEL_17;
      }

      v62 = sqrtf(((*&v52.i32[1] + 1.0) - *v49.i32) - v46.f32[2]);
      v66.f32[0] = *&v49.i32[1] + *v52.i32;
      v61 = vzip2q_s32(v49, v52).u64[0];
      v66.f32[1] = v62 * v62;
      *&v66.u32[2] = vext_s8(vadd_f32(*v46.f32, v61), vsub_f32(*v46.f32, v61), 4uLL);
    }

    else
    {
      v62 = sqrtf(((*v49.i32 + 1.0) - *&v52.i32[1]) - v46.f32[2]);
      v66.f32[0] = v62 * v62;
      v63 = *&v49.i32[1] + *v52.i32;
      v64 = vzip2q_s32(v49, v52).u64[0];
      LODWORD(v65) = vadd_f32(v64, *v46.f32).u32[0];
      HIDWORD(v65) = vsub_f32(v64, *&v46).i32[1];
      v66.f32[1] = v63;
      v66.i64[1] = v65;
    }

    v59 = vmulq_n_f32(v66, 0.5 / v62);
    goto LABEL_26;
  }

  v56 = sqrtf(v55 + 1.0);
  *v57.f32 = vsub_f32(*&vzip2q_s32(v52, vuzp1q_s32(v52, v46)), *&vtrn2q_s32(v46, vzip2q_s32(v46, v49)));
  v57.f32[2] = *&v49.i32[1] - *v52.i32;
  v57.f32[3] = v56 * v56;
  v58 = 0.5 / v56;
LABEL_17:
  v59 = vmulq_n_f32(v57, v58);
LABEL_26:
  *(v9 + 64) = v59;
  *(v9 + 92) = v34.i32[3] & 0xFFFFFFF8 | 4;
}

void sub_1AF1CC674(__n128 *result, __n128 a2, uint64_t a3)
{
  v4 = result[5].n128_u32[3];
  if ((v4 & 4) == 0)
  {
    v5 = a2;
    sub_1AF1CC6C8(result, a3);
    a2 = v5;
    v4 = result[5].n128_u32[3];
  }

  result[5].n128_u32[3] = v4 & 0xFFFFFFF4;
  result[4] = a2;
}

__n128 sub_1AF1CC6C8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((*(a1 + 92) & 8) == 0)
  {
    v3 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDF198(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(v2 + 92) & 4) != 0)
  {
    v10 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF210(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(v2 + 16);
  v19 = *(v2 + 32);
  v20 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
  v21 = vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), *v2);
  v22 = (v21.f32[2] + vaddv_f32(*v21.f32)) < 0.0;
  v23 = 1.0;
  if (v22)
  {
    v23 = -1.0;
  }

  v24 = vmulq_f32(*v2, *v2);
  v25 = vmulq_f32(v18, v18);
  v26 = vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8));
  v27 = vextq_s8(v24, v24, 8uLL);
  *v27.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v27.f32, *&vextq_s8(v25, v25, 8uLL)), v26));
  v28 = vmulq_f32(v19, v19);
  v27.i32[2] = sqrtf(v28.f32[2] + vaddv_f32(*v28.f32));
  result = vmulq_n_f32(v27, v23);
  result.n128_u32[3] = HIDWORD(*(v2 + 80));
  *(v2 + 80) = result;
  *(v2 + 92) = result.n128_u32[3] | 4;
  return result;
}

double sub_1AF1CC7E0(__n128 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v10 = a1[5].n128_u32[3];
  if ((v10 & 4) == 0)
  {
    sub_1AF1CC338(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    v10 = a1[5].n128_u32[3];
  }

  v11 = v10 & 3;
  if (v11 > 1)
  {
    v15.n128_u64[0] = 0;
    if (v11 == 2)
    {
      sub_1AF1DAEC4(a1[4]);
      v15.n128_u64[0] = v28;
    }
  }

  else if (v11)
  {
    v15 = a1[4];
  }

  else
  {
    _Q2 = a1[4];
    v13 = vmulq_f32(_Q2, _Q2);
    v14 = vaddv_f32(vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)));
    v15.n128_u64[0] = 0;
    if (v14 != 0.0)
    {
      LODWORD(v16) = HIDWORD(*&a1[4]);
      LODWORD(_S9) = HIDWORD(a1[4].n128_u64[0]);
      LODWORD(v18) = a1[4].n128_u64[1];
      __asm { FMLA            S1, S9, V2.S[3] }

      v24 = _S1 / v14;
      v25 = (_S1 / v14);
      if (v25 <= 0.4999)
      {
        if (v25 >= -0.4999)
        {
          v30 = *&v13.i32[1];
          v31 = v13.i64[1];
          v33 = a1[4];
          v34 = *v13.i32;
          v36 = atan2f(((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])) + ((_Q2.f32[0] * _Q2.f32[3]) + (_Q2.f32[1] * _Q2.f32[2])), *&v13.i32[3] + (*&v13.i32[2] + (-*v13.i32 - *&v13.i32[1])));
          v35 = asinf(v24 + v24);
          atan2f(((v18 * v16) + (v33.n128_f32[0] * _S9)) + ((v18 * v16) + (v33.n128_f32[0] * _S9)), *(&v31 + 1) + ((v34 - v30) - *&v31));
          v15.n128_u64[0] = __PAIR64__(LODWORD(v35), LODWORD(v36));
          return v15.n128_f64[0];
        }

        v29 = atan2f(COERCE_FLOAT(*&a1[4]), _Q2.f32[3]);
        v15.n128_f32[0] = v29 + v29;
        v27 = &dword_1AFE21DB8;
      }

      else
      {
        v26 = atan2f(COERCE_FLOAT(*&a1[4]), _Q2.f32[3]);
        v15.n128_f32[0] = v26 + v26;
        v27 = &dword_1AFE21AFC;
      }

      v15.n128_u32[1] = *v27;
    }
  }

  return v15.n128_f64[0];
}

void sub_1AF1CC980(__n128 *a1, uint64_t a2, __n128 a3)
{
  v4 = a1[5].n128_u32[3];
  if ((v4 & 4) == 0)
  {
    v5 = a3;
    sub_1AF1CC6C8(a1, a2);
    a3 = v5;
    v4 = a1[5].n128_u32[3];
  }

  a1[5].n128_u32[3] = v4 & 0xFFFFFFF4 | 1;
  a1[4] = a3;
}

void sub_1AF1CC9D8(__n128 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  v10 = a1[5].n128_u32[3];
  if ((v10 & 4) == 0)
  {
    sub_1AF1CC338(a1, a2, a3, a4, a5, a6, a7, a8, a9);
    v10 = a1[5].n128_u32[3];
  }

  if ((v10 & 3) <= 1)
  {
    if ((v10 & 3) != 0)
    {
      v20.n128_f64[0] = sub_1AF1DADD0(a1[4]);
      v10 = a1[5].n128_u32[3];
    }

    else
    {
      v11 = a1[4];
      v12 = vmulq_f32(v11, v11);
      v12.f32[0] = v12.f32[2] + vaddv_f32(*v12.f32);
      v13 = vdupq_lane_s32(*v12.f32, 0);
      v13.i32[3] = 0;
      v14 = vrsqrteq_f32(v13);
      v15 = vmulq_f32(v14, vrsqrtsq_f32(v13, vmulq_f32(v14, v14)));
      v16 = vmulq_f32(v11, vmulq_f32(v15, vrsqrtsq_f32(v13, vmulq_f32(v15, v15))));
      v17 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v12.f32[0] != 0.0)), 0x1FuLL));
      v17.i32[3] = 0;
      v21 = vbslq_s8(vcltzq_s32(v17), v16, v11);
      v18 = atan2f(sqrtf(v12.f32[0]), v11.f32[3]);
      v19 = v21;
      v19.n128_f32[3] = v18 + v18;
      v20 = v19;
    }

    goto LABEL_9;
  }

  v20 = 0uLL;
  if ((v10 & 3) != 2)
  {
LABEL_9:
    a1[4] = v20;
    a1[5].n128_u32[3] = v10 & 0xFFFFFFFC | 2;
  }
}

void sub_1AF1CCAD8(__n128 *a1, uint64_t a2, __n128 a3)
{
  v4 = a1[5].n128_u32[3];
  if ((v4 & 4) == 0)
  {
    v5 = a3;
    sub_1AF1CC6C8(a1, a2);
    a3 = v5;
    v4 = a1[5].n128_u32[3];
  }

  a1[5].n128_u32[3] = v4 & 0xFFFFFFF4 | 2;
  a1[4] = a3;
}

__n128 sub_1AF1CCB38(__n128 *a1, __n128 result)
{
  result.n128_u32[3] = 1.0;
  a1[3] = result;
  return result;
}

__n128 sub_1AF1CCB48(__n128 *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9)
{
  if ((a1[5].n128_u8[12] & 4) == 0)
  {
    sub_1AF1CC338(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return a1[5];
}

__n128 sub_1AF1CCB7C(uint64_t a1, uint64_t a2, __n128 result)
{
  v3 = a1;
  v4 = *(a1 + 92);
  if ((v4 & 4) == 0)
  {
    v61 = result;
    if ((v4 & 8) == 0)
    {
      v5 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
      if (a1)
      {
        sub_1AFDDF288(v5, a2, v6, v7, v8, v9, v10, v11);
      }
    }

    if ((*(v3 + 92) & 4) != 0)
    {
      v12 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDDF300(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    v20 = *(v3 + 16);
    v21 = *(v3 + 32);
    v22 = vmulq_f32(*v3, *v3);
    v23 = vmulq_f32(v20, v20);
    v24 = vmulq_f32(v21, v21);
    v25 = vzip2q_s32(v22, v24);
    v26 = vzip1q_s32(vzip1q_s32(v22, v24), v23);
    v27 = vtrn2q_s32(v22, v23);
    v27.i32[2] = v24.i32[1];
    v28 = vaddq_f32(vzip1q_s32(v25, vdupq_laneq_s32(v23, 2)), vaddq_f32(v26, v27));
    v27.i64[0] = 0x80000000800000;
    v27.i64[1] = 0x80000000800000;
    v29 = vcgeq_f32(v27, v28);
    v28.i32[3] = 0;
    v30 = vrsqrteq_f32(v28);
    v31 = vmulq_f32(v30, vrsqrtsq_f32(v28, vmulq_f32(v30, v30)));
    v32 = v29;
    v32.i32[3] = 0;
    v33 = vbslq_s8(vcltzq_s32(v32), v28, vmulq_f32(v31, vrsqrtsq_f32(v28, vmulq_f32(v31, v31))));
    v34 = vmulq_n_f32(*v3, v33.f32[0]);
    v35 = vmulq_lane_f32(v20, *v33.f32, 1);
    v36 = vmulq_laneq_f32(v21, v33, 2);
    v37 = vuzp1q_s32(v36, v36);
    v38 = vuzp1q_s32(v35, v35);
    v39 = v34;
    if (v29.i32[0])
    {
      v40 = vmlaq_f32(vmulq_f32(vextq_s8(v37, v36, 0xCuLL), vnegq_f32(v35)), v36, vextq_s8(v38, v35, 0xCuLL));
      v39 = vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL);
    }

    v41 = vuzp1q_s32(v34, v34);
    v42 = v35;
    if (v29.i32[1])
    {
      v43 = vmlaq_f32(vmulq_f32(vextq_s8(v41, v34, 0xCuLL), vnegq_f32(v36)), v34, vextq_s8(v37, v36, 0xCuLL));
      v42 = vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL);
    }

    if (v29.i32[2])
    {
      v44 = vmlaq_f32(vmulq_f32(vextq_s8(v38, v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(v41, v34, 0xCuLL));
      v36 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
    }

    v45 = (*v39.i32 + *&v42.i32[1]) + v36.f32[2];
    if (v45 > 0.0)
    {
      v46 = sqrtf(v45 + 1.0);
      *v47.f32 = vsub_f32(*&vzip2q_s32(v42, vuzp1q_s32(v42, v36)), *&vtrn2q_s32(v36, vzip2q_s32(v36, v39)));
      v47.f32[2] = *&v39.i32[1] - *v42.i32;
      v47.f32[3] = v46 * v46;
      v48 = 0.5 / v46;
LABEL_16:
      v49 = vmulq_n_f32(v47, v48);
LABEL_25:
      *(v3 + 64) = v49;
      v4 = *(v3 + 92) & 0xFFFFFFF8 | 4;
      result = v61;
      goto LABEL_26;
    }

    if (*v39.i32 < *&v42.i32[1] || *v39.i32 < v36.f32[2])
    {
      if (*&v42.i32[1] <= v36.f32[2])
      {
        v57 = vzip2q_s32(v39, v42).u64[0];
        v58 = __PAIR64__(v39.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v36.f32[2] + 1.0) - *v39.i32) - *&v42.i32[1])));
        v59 = vdup_lane_s32(*v42.i8, 0);
        v60 = vsub_f32(*v39.i8, v59);
        v59.i32[0] = v58.i32[0];
        v59.i32[0] = vmul_f32(v58, v59).u32[0];
        v59.i32[1] = v60.i32[1];
        *v47.f32 = vadd_f32(v57, *v36.f32);
        *&v47.u32[2] = v59;
        v48 = 0.5 / v58.f32[0];
        goto LABEL_16;
      }

      v52 = sqrtf(((*&v42.i32[1] + 1.0) - *v39.i32) - v36.f32[2]);
      v56.f32[0] = *&v39.i32[1] + *v42.i32;
      v51 = vzip2q_s32(v39, v42).u64[0];
      v56.f32[1] = v52 * v52;
      *&v56.u32[2] = vext_s8(vadd_f32(*v36.f32, v51), vsub_f32(*v36.f32, v51), 4uLL);
    }

    else
    {
      v52 = sqrtf(((*v39.i32 + 1.0) - *&v42.i32[1]) - v36.f32[2]);
      v56.f32[0] = v52 * v52;
      v53 = *&v39.i32[1] + *v42.i32;
      v54 = vzip2q_s32(v39, v42).u64[0];
      LODWORD(v55) = vadd_f32(v54, *v36.f32).u32[0];
      HIDWORD(v55) = vsub_f32(v54, *&v36).i32[1];
      v56.f32[1] = v53;
      v56.i64[1] = v55;
    }

    v49 = vmulq_n_f32(v56, 0.5 / v52);
    goto LABEL_25;
  }

LABEL_26:
  *(v3 + 92) = v4 & 0xFFFFFFF7;
  result.n128_u32[3] = *(v3 + 92);
  *(v3 + 80) = result;
  return result;
}

uint64_t sub_1AF1CCE54(float32x4_t *a1, uint64_t a2)
{
  if ((a1[5].i8[12] & 8) == 0)
  {
    sub_1AF1CBF58(a1, a2);
  }

  v3 = vdupq_n_s32(0x3727C5ACu);
  return vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v3, vabdq_f32(a1[1], *(MEMORY[0x1E69E9B18] + 16))), vcgeq_f32(v3, vabdq_f32(*a1, *MEMORY[0x1E69E9B18]))), vandq_s8(vcgeq_f32(v3, vabdq_f32(a1[2], *(MEMORY[0x1E69E9B18] + 32))), vcgeq_f32(v3, vabdq_f32(a1[3], *(MEMORY[0x1E69E9B18] + 48)))))) >> 31;
}

double sub_1AF1CCEE0(uint64_t a1)
{
  *(a1 + 92) = *(a1 + 92) & 0xFFFFFFF3 | 8;
  *a1 = xmmword_1AFE20150;
  *(a1 + 16) = xmmword_1AFE20160;
  result = 0.0;
  *(a1 + 32) = xmmword_1AFE20180;
  *(a1 + 48) = xmmword_1AFE201A0;
  return result;
}

double sub_1AF1CCF1C(uint64_t a1)
{
  *(a1 + 92) |= 8u;
  *a1 = xmmword_1AFE20150;
  *(a1 + 16) = xmmword_1AFE20160;
  result = 0.0;
  *(a1 + 32) = xmmword_1AFE20180;
  *(a1 + 48) = xmmword_1AFE201A0;
  return result;
}

void sub_1AF1CCF54(_BOOL8 a1, void *__dst, size_t __n, int a4, unsigned int a5, double a6, double a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  v16 = a1;
  if (a5 >= 4)
  {
    v17 = sub_1AF0D5194(a1, __dst);
    a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDDF378(v17, __dst, v18, v19, v20, v21, v22, v23);
    }
  }

  if (a4 > 5)
  {
    switch(a4)
    {
      case 6:
        v24 = *(v16 + 48);
        goto LABEL_23;
      case 7:
        if ((*(v16 + 92) & 4) == 0)
        {
          sub_1AF1CC338(v16, __dst, a6, a7, a8, a9, a10, a11, a12);
        }

        v24 = *(v16 + 80);
        goto LABEL_23;
      case 8:
        if ((*(v16 + 92) & 8) == 0)
        {
          sub_1AF1CBF58(v16, __dst);
        }

        v25 = *(v16 + 16);
        v26 = *(v16 + 32);
        v27 = *(v16 + 48);
        v29[0] = *v16;
        v29[1] = v25;
        v29[2] = v26;
        v29[3] = v27;
        goto LABEL_24;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        *&v24 = sub_1AF1CC1F0(v16, __dst, a6, a7, a8, a9, a10, a11, a12);
        goto LABEL_23;
      case 4:
        sub_1AF1CC9D8(v16, __dst, a6, a7, a8, a9, a10, a11, a12);
        goto LABEL_23;
      case 5:
        *&v24 = sub_1AF1CC7E0(v16, __dst, a6, a7, a8, a9, a10, a11, a12);
LABEL_23:
        v29[0] = v24;
LABEL_24:
        memcpy(__dst, v29 + 4 * a5, __n);
        return;
    }
  }

  v28 = sub_1AF0D5194(a1, __dst);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF3F0(v28);
  }
}

void sub_1AF1CD098(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  v11 = a4;
  if (a3 != 4)
  {
    if (a3 == 16)
    {
      v14 = *a2;
      goto LABEL_18;
    }

    v15 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF434(v15, a2, v16, v17, v18, v19, v20, v21);
    }
  }

  *&v14 = sub_1AF1CC1F0(a1, a2, a5, a6, a7, a8, a9, a10, a11);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      DWORD2(v14) = *a2;
      goto LABEL_18;
    }

    if (v11 == 3)
    {
      HIDWORD(v14) = *a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v11)
    {
      LODWORD(v14) = *a2;
      goto LABEL_18;
    }

    if (v11 == 1)
    {
      DWORD1(v14) = *a2;
      goto LABEL_18;
    }
  }

  v25 = v14;
  v23 = sub_1AF0D5194(v22, a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF4AC();
  }

  v14 = v25;
LABEL_18:
  v24 = *(a1 + 92);
  if ((v24 & 4) == 0)
  {
    v26 = v14;
    sub_1AF1CC6C8(a1, a2);
    v24 = *(a1 + 92);
    v14 = v26;
  }

  *(a1 + 92) = v24 & 0xFFFFFFF4;
  *(a1 + 64) = v14;
}

void sub_1AF1CD1B0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  v11 = a4;
  if (a3 != 4)
  {
    if (a3 == 16)
    {
      v14 = *a2;
      goto LABEL_18;
    }

    v15 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF434(v15, a2, v16, v17, v18, v19, v20, v21);
    }
  }

  sub_1AF1CC9D8(a1, a2, a5, a6, a7, a8, a9, a10, a11);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      DWORD2(v14) = *a2;
      goto LABEL_18;
    }

    if (v11 == 3)
    {
      HIDWORD(v14) = *a2;
      goto LABEL_18;
    }
  }

  else
  {
    if (!v11)
    {
      LODWORD(v14) = *a2;
      goto LABEL_18;
    }

    if (v11 == 1)
    {
      DWORD1(v14) = *a2;
      goto LABEL_18;
    }
  }

  v25 = v14;
  v23 = sub_1AF0D5194(v22, a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF514();
  }

  v14 = v25;
LABEL_18:
  v24 = *(a1 + 92);
  if ((v24 & 4) == 0)
  {
    v26 = v14;
    sub_1AF1CC6C8(a1, a2);
    v24 = *(a1 + 92);
    v14 = v26;
  }

  *(a1 + 92) = v24 & 0xFFFFFFF4 | 2;
  *(a1 + 64) = v14;
}

void sub_1AF1CD2CC(__n128 *a1, uint64_t a2, unint64_t a3, uint64_t a4, __n128 a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  if (a3 >= 0xC)
  {
    a5.n128_u64[0] = *a2;
    a5.n128_u32[2] = *(a2 + 8);
    goto LABEL_17;
  }

  v13 = a4;
  if (a3 != 4)
  {
    v14 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDF434(v14, a2, v15, v16, v17, v18, v19, v20);
    }
  }

  v22.n128_f64[0] = sub_1AF1CC7E0(a1, a2, a5.n128_f64[0], a6, a7, a8, a9, a10, a11);
  switch(v13)
  {
    case 2:
      v23.n128_u64[0] = v22.n128_u64[0];
      v23.n128_u32[2] = *a2;
      goto LABEL_13;
    case 1:
      v23.n128_u32[0] = v22.n128_u32[0];
      v23.n128_u32[1] = *a2;
      goto LABEL_11;
    case 0:
      v23.n128_u32[0] = *a2;
      v23.n128_u32[1] = v22.n128_u32[1];
LABEL_11:
      v23.n128_u32[2] = v22.n128_u32[2];
LABEL_13:
      v23.n128_u32[3] = v22.n128_u32[3];
      a5 = v23;
      goto LABEL_17;
  }

  v26 = v22;
  v24 = sub_1AF0D5194(v21, a2);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF57C();
  }

  a5 = v26;
LABEL_17:
  v25 = a1[5].n128_u32[3];
  if ((v25 & 4) == 0)
  {
    v27 = a5;
    sub_1AF1CC6C8(a1, a2);
    a5 = v27;
    v25 = a1[5].n128_u32[3];
  }

  a1[5].n128_u32[3] = v25 & 0xFFFFFFF4 | 1;
  a1[4] = a5;
}

float sub_1AF1CD3EC(uint64_t a1, unsigned __int32 *a2, unint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = a1;
  if (a3 < 0xC)
  {
    v8 = a4;
    if (a3 != 4)
    {
      v9 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
      if (a1)
      {
        sub_1AFDDF434(v9, a2, v10, v11, v12, v13, v14, v15);
      }
    }

    v16 = *(v6 + 48);
    if (v8 == 2)
    {
      v16.n128_u32[2] = *a2;
    }

    else
    {
      if (v8 == 1)
      {
        a5 = *(v6 + 48);
        a5.n128_u32[1] = *a2;
      }

      else
      {
        if (v8)
        {
          v19 = *(v6 + 48);
          v17 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDDF5E4();
          }

          v16 = v19;
          goto LABEL_16;
        }

        a5.n128_u32[0] = *a2;
        a5.n128_u32[1] = HIDWORD(*(v6 + 48));
      }

      a5.n128_u32[2] = *(v6 + 56);
      v16 = a5;
    }

LABEL_16:
    LODWORD(v7) = 1.0;
    v16.n128_u32[3] = 1.0;
    *(v6 + 48) = v16;
    return *&v7;
  }

  *&v7 = *a2;
  DWORD2(v7) = a2[2];
  HIDWORD(v7) = 1.0;
  *(a1 + 48) = v7;
  return *&v7;
}

void sub_1AF1CD4E8(_BOOL8 a1, _DWORD *a2, unint64_t a3, uint64_t a4, __n128 a5, double a6, double a7, double a8, double a9, double a10, float32x4_t a11)
{
  v12 = a1;
  if (a3 < 0xC)
  {
    v13 = a4;
    if (a3 != 4)
    {
      v14 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
      if (a1)
      {
        sub_1AFDDF434(v14, a2, v15, v16, v17, v18, v19, v20);
      }
    }

    if ((*(v12 + 92) & 4) == 0)
    {
      sub_1AF1CC338(v12, a2, a5.n128_f64[0], a6, a7, a8, a9, a10, a11);
    }

    if (v13 == 2)
    {
      *(v12 + 88) = *a2;
    }

    else if (v13 == 1)
    {
      *(v12 + 84) = *a2;
    }

    else if (v13)
    {
      v21 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDDF64C();
      }
    }

    else
    {
      *(v12 + 80) = *a2;
    }

    *(v12 + 92) &= ~8u;
  }

  else
  {
    a5.n128_u64[0] = *a2;
    a5.n128_u32[2] = a2[2];

    sub_1AF1CCB7C(a1, a2, a5);
  }
}

_OWORD *sub_1AF1CD5F0(_OWORD *result, _OWORD *a2, size_t a3, unsigned int a4)
{
  v4 = result;
  if (a3 == 96)
  {
    v8 = a2[1];
    *result = *a2;
    result[1] = v8;
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[5];
    result[4] = a2[4];
    result[5] = v11;
    result[2] = v9;
    result[3] = v10;
  }

  else
  {
    if (a3 == 64)
    {
      v5 = a2[1];
      v6 = a2[2];
      v7 = a2[3];
      *result = *a2;
      result[1] = v5;
      result[2] = v6;
      result[3] = v7;
    }

    else
    {
      result = memcpy(result + 4 * a4, a2, a3);
    }

    *(v4 + 23) = 8;
  }

  return result;
}

void sub_1AF1CD660(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDF6B4(v2);
  }
}

void sub_1AF1CD69C(__n128 *a1, unsigned __int32 *a2, unint64_t a3, int a4, uint64_t a5, __n128 a6, double a7, double a8, double a9, double a10, double a11, float32x4_t a12)
{
  if (a4 > 5)
  {
    switch(a4)
    {
      case 6:
        if (a5 >= 3)
        {
          v40 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF770(v40, v41, v42, v43, v44, v45, v46, v47);
          }
        }

        sub_1AF1CD3EC(a1, a2, a3, a5, a6);
        break;
      case 7:
        if (a5 >= 3)
        {
          v56 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF6F8(v56, v57, v58, v59, v60, v61, v62, v63);
          }
        }

        sub_1AF1CD4E8(a1, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12);
        break;
      case 8:
        if (a5 >= 0x10)
        {
          v24 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF950(v24, v25, v26, v27, v28, v29, v30, v31);
          }
        }

        sub_1AF1CD5F0(a1, a2, a3, a5);
        break;
      default:
LABEL_24:

        sub_1AF1CD660(a1, a2);
        return;
    }
  }

  else
  {
    switch(a4)
    {
      case 3:
        if (a5 >= 4)
        {
          v32 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF8D8(v32, v33, v34, v35, v36, v37, v38, v39);
          }
        }

        sub_1AF1CD098(a1, a2, a3, a5, a6.n128_f64[0], a7, a8, a9, a10, a11, a12);
        break;
      case 4:
        if (a5 >= 4)
        {
          v48 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF860(v48, v49, v50, v51, v52, v53, v54, v55);
          }
        }

        sub_1AF1CD1B0(a1, a2, a3, a5, a6.n128_f64[0], a7, a8, a9, a10, a11, a12);
        break;
      case 5:
        if (a5 >= 3)
        {
          v16 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sub_1AFDDF7E8(v16, v17, v18, v19, v20, v21, v22, v23);
          }
        }

        sub_1AF1CD2CC(a1, a2, a3, a5, a6, a7, a8, a9, a10, a11, a12);
        return;
      default:
        goto LABEL_24;
    }
  }
}

void sub_1AF1CD8B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

uint64_t sub_1AF1CD8D8(uint64_t a1, uint64_t a2)
{
  if (qword_1ED734678 != -1)
  {
    sub_1AFDDF9C8();
  }

  return qword_1ED734670;
}

uint64_t sub_1AF1CD910()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED734670 = result;
  qword_1ED722C70 = sub_1AF1CE61C;
  return result;
}

uint64_t sub_1AF1CD954(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1AF288070(a1, a2);
  v5 = v3;
  if (!v2 || v3)
  {
    v8 = (v3 + 19) & -v3;
    v9 = ((v3 + 19) & -v3);
    if (qword_1ED734678 != -1)
    {
      sub_1AFDDF9C8();
    }

    result = sub_1AF0D160C(qword_1ED734670, v5 + v9 - 12);
    *(result + 19) = v8;
    *(result + 18) = 0;
    *(result + 16) = v2;
  }

  else
  {
    v6 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDDF9DC(v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AF1CD9FC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1AF1CD954(a1, a2);
  v5 = v3;
  if (v2 == 10)
  {
    v6 = sub_1AF1CDA60(v3, v4);
    *v6 = xmmword_1AFE20150;
    v6[1] = xmmword_1AFE20160;
    v6[2] = xmmword_1AFE20180;
    v6[3] = xmmword_1AFE201A0;
  }

  return v5;
}

uint64_t sub_1AF1CDA60(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + *(a1 + 19);
}

uint64_t sub_1AF1CDAAC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF1CDAF4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 18);
}

uint64_t sub_1AF1CDB3C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDFA20(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return sub_1AF288070(*(a1 + 16), a2);
}

CFTypeRef sub_1AF1CDB88(uint64_t a1, const void *a2)
{
  if (sub_1AF1CDAF4(a1, a2) == 1)
  {
    v5 = sub_1AF1CDA60(a1, v4);
    if (*v5)
    {
      CFRelease(*v5);
      *v5 = 0;
    }

    if (a2)
    {
      result = CFRetain(a2);
    }

    else
    {
      result = 0;
    }

    *v5 = result;
  }

  else
  {
    v7 = sub_1AF1CDB3C(a1, v4);
    v9 = sub_1AF1CDA60(a1, v8);

    return memcpy(v9, a2, v7);
  }

  return result;
}

size_t sub_1AF1CDC30(uint64_t a1, void *a2)
{
  v4 = sub_1AF1CDB3C(a1, a2);
  v6 = sub_1AF1CDA60(a1, v5);
  memcpy(a2, v6, v4);
  return v4;
}

void sub_1AF1CDC80(char *a1, int *a2, unsigned int a3)
{
  if (a3)
  {
    v5 = sub_1AF2891EC(a1);
    if (a3 >= 1)
    {
      v6 = v5;
      v7 = 0;
      v8 = MEMORY[0x1E69E9830];
      while (1)
      {
        v19 = 0;
        v9 = strtod(v6, &v19);
        *&v9 = v9;
        a2[v7] = LODWORD(v9);
        if (v6 == v19)
        {
          break;
        }

        v10 = v19 - 1;
        do
        {
          v11 = v10[1];
          if ((v11 & 0x80000000) != 0)
          {
            v12 = __maskrune(v10[1], 0x4000uLL);
          }

          else
          {
            v12 = *(v8 + 4 * v11 + 60) & 0x4000;
          }

          ++v10;
        }

        while (v12);
        if (v11 == 44)
        {
          v6 = v10 + 1;
        }

        else
        {
          v6 = v10;
        }

        if (++v7 == a3)
        {
          return;
        }
      }

      if (v7 == 1 && a3 != 1)
      {
        v13 = 0;
        v15 = *a2;
        v14 = a2 + 2;
        LODWORD(v9) = v15;
        v16 = vdupq_n_s64(a3 - 2);
        do
        {
          v17 = vdupq_n_s64(v13);
          v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(v17, xmmword_1AFE21110)));
          if (vuzp1_s16(v18, *&v9).u8[0])
          {
            *(v14 - 1) = LODWORD(v9);
          }

          if (vuzp1_s16(v18, *&v9).i8[2])
          {
            *v14 = LODWORD(v9);
          }

          if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v16, vorrq_s8(v17, xmmword_1AFE21100)))).i32[1])
          {
            v14[1] = LODWORD(v9);
            v14[2] = LODWORD(v9);
          }

          v13 += 4;
          v14 += 4;
        }

        while (((a3 + 2) & 0xFFFFFFFC) != v13);
      }
    }
  }
}