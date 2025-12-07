void chromapowerblur11x11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v12 = v11;
  v54 = v13;
  v14 = v10;
  v48 = v15;
  v49 = v16;
  v18 = v17;
  v19 = v9;
  v20 = 2 * v10;
  v51 = v21;
  if ((32 * v10) > 0x8000)
  {
    v22 = malloc_type_malloc(32 * v10, 0xC01F80BuLL);
  }

  else
  {
    v22 = __src;
  }

  v23 = v14 >> 3;
  LODWORD(v24) = v12 + 5;
  v53 = vdupq_n_s16(a9);
  do
  {
    v24 = (v24 - 1);
    if (v24 < 0)
    {
      memcpy(&v22[v20 * (v24 & 0xF)], v22, v20);
    }

    else
    {
      chromapowerblur11H((v19 + v24 * v18), &v22[v20 * (v24 & 0xF)], v14, a9);
    }
  }

  while (v24 > v12 - 5);
  if (v12 < v51)
  {
    v25 = v12;
    v26 = v12 + 5;
    v52 = v51 + 4;
    v27 = v25 + 1;
    v28 = v25 - 1;
    v50 = vdupq_n_s32(0x46FFFE00u);
    do
    {
      if (v26 >= v54)
      {
        memcpy(&v22[v20 * (v26 & 0xF)], &v22[((v54 - 1) & 0xF) * v20], v20);
      }

      else
      {
        chromapowerblur11H((v19 + v26 * v18), &v22[v20 * (v26 & 0xF)], v14, a9);
      }

      v29.i64[0] = 0x1000100010001;
      v29.i64[1] = 0x1000100010001;
      if (v23 >= 1)
      {
        v30 = 0;
        v31 = (v48 + (v26 - 5) * v49);
        v32 = v22;
        do
        {
          v33 = 0;
          v34 = *&v32[v20 * ((v26 - 5) & 0xF)];
          v35 = vmovl_u8(*v34.i8);
          v36 = vmovl_high_u8(v34);
          v37.i64[0] = 0x1000100010001;
          v37.i64[1] = 0x1000100010001;
          v38 = v27;
          do
          {
            v39 = *&v32[v20 * ((v28 + v33) & 0xF)];
            v40 = vcgeq_u16(v53, vpaddlq_u8(vabdq_u8(v39, v34)));
            v41 = vandq_s8(v39, v40);
            v42 = vaddw_u8(v35, *v41.i8);
            v43 = *&v32[v20 * (v38 & 0xF)];
            v44 = vaddw_high_u8(v36, v41);
            v45 = vcgeq_u16(v53, vpaddlq_u8(vabdq_u8(v43, v34)));
            v46 = vandq_s8(v43, v45);
            v37 = vsubq_s16(vsubq_s16(v37, v40), v45);
            v35 = vaddw_u8(v42, *v46.i8);
            v36 = vaddw_high_u8(v44, v46);
            --v33;
            ++v38;
          }

          while (v33 != -5);
          *v31++ = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(v35, vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v37.i8))), v50)), v29))), vqrdmulhq_s16(v36, vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v37))), v50)), v29)));
          ++v30;
          v32 += 16;
        }

        while (v30 != v23);
      }

      ++v27;
      ++v28;
    }

    while (v26++ < v52);
  }

  if (v22 != __src)
  {
    free(v22);
  }
}

void chromapowerblur17x17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1, a2, a3, a4);
  v12 = v11;
  v54 = v13;
  v14 = v10;
  v48 = v15;
  v49 = v16;
  v18 = v17;
  v19 = v9;
  v20 = 2 * v10;
  v51 = v21;
  if ((v10 << 6) > 0x10000)
  {
    v22 = malloc_type_malloc(v10 << 6, 0x33F87A67uLL);
  }

  else
  {
    v22 = __src;
  }

  v23 = v14 >> 3;
  LODWORD(v24) = v12 + 8;
  v53 = vdupq_n_s16(a9);
  do
  {
    v24 = (v24 - 1);
    if (v24 < 0)
    {
      memcpy(&v22[v20 * (v24 & 0x1F)], v22, v20);
    }

    else
    {
      chromapowerblur17H((v19 + v24 * v18), &v22[v20 * (v24 & 0x1F)], v14, a9);
    }
  }

  while (v24 > v12 - 8);
  if (v12 < v51)
  {
    v25 = v12;
    v26 = v12 + 8;
    v52 = v51 + 7;
    v27 = v25 + 1;
    v28 = v25 - 1;
    v50 = vdupq_n_s32(0x46FFFE00u);
    do
    {
      if (v26 >= v54)
      {
        memcpy(&v22[v20 * (v26 & 0x1F)], &v22[((v54 - 1) & 0x1F) * v20], v20);
      }

      else
      {
        chromapowerblur17H((v19 + v26 * v18), &v22[v20 * (v26 & 0x1F)], v14, a9);
      }

      v29.i64[0] = 0x1000100010001;
      v29.i64[1] = 0x1000100010001;
      if (v23 >= 1)
      {
        v30 = 0;
        v31 = (v48 + (v26 - 8) * v49);
        v32 = v22;
        do
        {
          v33 = 0;
          v34 = *&v32[v20 * ((v26 - 8) & 0x1F)];
          v35 = vmovl_u8(*v34.i8);
          v36 = vmovl_high_u8(v34);
          v37.i64[0] = 0x1000100010001;
          v37.i64[1] = 0x1000100010001;
          v38 = v28;
          do
          {
            v39 = *&v32[v20 * (v38 & 0x1F)];
            v40 = vcgeq_u16(v53, vpaddlq_u8(vabdq_u8(v39, v34)));
            v41 = vandq_s8(v39, v40);
            v42 = vaddw_u8(v35, *v41.i8);
            v43 = *&v32[v20 * ((v27 + v33) & 0x1F)];
            v44 = vaddw_high_u8(v36, v41);
            v45 = vcgeq_u16(v53, vpaddlq_u8(vabdq_u8(v43, v34)));
            v46 = vandq_s8(v43, v45);
            v37 = vsubq_s16(vsubq_s16(v37, v40), v45);
            v35 = vaddw_u8(v42, *v46.i8);
            v36 = vaddw_high_u8(v44, v46);
            ++v33;
            --v38;
          }

          while (v33 != 8);
          *v31++ = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(v35, vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v37.i8))), v50)), v29))), vqrdmulhq_s16(v36, vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v37))), v50)), v29)));
          ++v30;
          v32 += 16;
        }

        while (v30 != v23);
      }

      ++v27;
      ++v28;
    }

    while (v26++ < v52);
  }

  if (v22 != __src)
  {
    free(v22);
  }
}

char *powerBlurNoiseReductionContextCreate(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = malloc_type_malloc(0xB8uLL, 0x10A0040E2CBC39CuLL);
  v5 = v4;
  if (v4)
  {
    *(v4 + 40) = 0u;
    *(v4 + 168) = 0u;
    *(v4 + 152) = 0u;
    *(v4 + 136) = 0u;
    *(v4 + 120) = 0u;
    *(v4 + 104) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 10) = a2;
    *v4 = 0x172482717;
    *(v4 + 1) = FigGetCFPreferenceNumberWithDefault();
    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    if (CFPreferenceNumberWithDefault == 9)
    {
      v7 = 9;
    }

    else
    {
      v7 = 0;
    }

    if (CFPreferenceNumberWithDefault == 17)
    {
      v7 = 17;
    }

    *(v5 + 2) = v7;
    *(v5 + 17) = FigGetCFPreferenceNumberWithDefault();
    *(v5 + 18) = FigGetCFPreferenceNumberWithDefault();
    *(v5 + 19) = FigGetCFPreferenceNumberWithDefault();
    if (*(v5 + 1))
    {
      powerBlurNoiseReductionGPUContextInit(v3, v5 + 2);
    }
  }

  return v5;
}

void powerBlurNoiseReductionContextDestroy(_DWORD *a1)
{
  if (a1 && *a1 == 1917331223)
  {
    if (a1[1])
    {
      powerBlurNoiseReductionGPUContextDestroy((a1 + 4));
    }

    *(a1 + 22) = 0;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;

    free(a1);
  }
}

_DWORD *powerBlurNoiseReductionReleaseBuffers(_DWORD *result)
{
  if (result && *result == 1917331223)
  {
    if (result[1])
    {
      return powerBlurNoiseReductionGPUReleaseBuffers((result + 4));
    }
  }

  return result;
}

uint16x8_t chromapowerblur11H(int16x4_t *a1, uint8x16_t *a2, int a3, unsigned int a4)
{
  v4 = vdupq_n_s16(a4);
  v5 = *a1->i8;
  v6 = vdupq_lane_s16(*a1, 0);
  v7 = (a3 >> 3) - 1;
  if (a3 >> 3 <= 1)
  {
    v46 = vextq_s8(v6, v5, 6uLL);
    v50 = vextq_s8(v6, v5, 8uLL);
    v54 = vextq_s8(v6, v5, 0xAuLL);
  }

  else
  {
    v8 = a1 + 2;
    v9.i64[0] = 0x2000200020002;
    v9.i64[1] = 0x2000200020002;
    v10 = vdupq_n_s32(0x46FFFE00u);
    v11.i64[0] = 0x1000100010001;
    v11.i64[1] = 0x1000100010001;
    do
    {
      v12 = v5;
      v13 = *v8->i8;
      v8 += 2;
      v5 = v13;
      v14 = vextq_s8(v6, v12, 6uLL);
      v15 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v14, v12)));
      v16 = vandq_s8(v14, v15);
      v17 = vsubq_s16(vandq_s8(v15, v9), vmvnq_s8(v15));
      v18 = vextq_s8(v6, v12, 8uLL);
      v19 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v18, v12)));
      v20 = vandq_s8(v18, v19);
      v21 = vaddw_u8(vaddl_u8(*v16.i8, *v12.i8), *v20.i8);
      v22 = vextq_s8(v6, v12, 0xAuLL);
      v23 = vaddw_high_u8(vaddl_high_u8(v16, v12), v20);
      v24 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v22, v12)));
      v25 = vandq_s8(v22, v24);
      v26 = vaddw_u8(v21, *v25.i8);
      v27 = vaddw_high_u8(v23, v25);
      v28 = vextq_s8(v6, v12, 0xCuLL);
      v29 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v28, v12)));
      v30 = vandq_s8(v28, v29);
      v31 = vextq_s8(v6, v12, 0xEuLL);
      v32 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v31, v12)));
      v33 = vandq_s8(v31, v32);
      v34 = vaddw_high_u8(v27, v30);
      v35 = vaddw_u8(vaddw_u8(v26, *v30.i8), *v33.i8);
      v36 = vextq_s8(v12, v13, 2uLL);
      v37 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v36, v12)));
      v38 = vaddw_high_u8(v34, v33);
      v39 = vandq_s8(v36, v37);
      v40 = vaddw_u8(v35, *v39.i8);
      v41 = vextq_s8(v12, v13, 4uLL);
      v42 = vaddw_high_u8(v38, v39);
      v43 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v41, v12)));
      v44 = vandq_s8(v41, v43);
      v45 = vaddw_u8(v40, *v44.i8);
      v46 = vextq_s8(v12, v13, 6uLL);
      v47 = vaddw_high_u8(v42, v44);
      v48 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v46, v12)));
      v49 = vandq_s8(v46, v48);
      v50 = vextq_s8(v12, v13, 8uLL);
      v51 = vaddw_u8(v45, *v49.i8);
      v52 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v50, v12)));
      v53 = vandq_s8(v50, v52);
      v54 = vextq_s8(v12, v13, 0xAuLL);
      v55 = vaddw_high_u8(v47, v49);
      v56 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v54, v12)));
      v57 = vsubq_s16(v17, v19);
      v58 = vandq_s8(v54, v56);
      v59 = vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(v57, v24), v29), v32), v37), v43), v48), v52), v56);
      *a2++ = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(vaddw_u8(vaddw_u8(v51, *v53.i8), *v58.i8), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v59.i8))), v10)), v11))), vqrdmulhq_s16(vaddw_high_u8(vaddw_high_u8(v55, v53), v58), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v59))), v10)), v11)));
      v6 = v12;
      --v7;
    }

    while (v7);
    v6 = v12;
  }

  v60 = vdupq_laneq_s16(v5, 7);
  v61 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v46, v5)));
  v62 = vandq_s8(v46, v61);
  v63.i64[0] = 0x2000200020002;
  v63.i64[1] = 0x2000200020002;
  v64 = vsubq_s16(vandq_s8(v61, v63), vmvnq_s8(v61));
  v65 = vaddl_u8(*v62.i8, *v5.i8);
  v66 = vaddl_high_u8(v62, v5);
  v67 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v50, v5)));
  v68 = vandq_s8(v50, v67);
  v69 = vaddw_u8(v65, *v68.i8);
  v70 = vaddw_high_u8(v66, v68);
  v71 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v54, v5)));
  v72 = vandq_s8(v54, v71);
  v73 = vaddw_u8(v69, *v72.i8);
  v74 = vaddw_high_u8(v70, v72);
  v75 = vextq_s8(v6, v5, 0xCuLL);
  v76 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v75, v5)));
  v77 = vandq_s8(v75, v76);
  v78 = vaddw_u8(v73, *v77.i8);
  v79 = vaddw_high_u8(v74, v77);
  v80 = vextq_s8(v6, v5, 0xEuLL);
  v81 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v80, v5)));
  v82 = vandq_s8(v80, v81);
  v83 = vaddw_u8(v78, *v82.i8);
  v84 = vaddw_high_u8(v79, v82);
  v85 = vextq_s8(v5, v60, 2uLL);
  v86 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v85, v5)));
  v87 = vandq_s8(v85, v86);
  v88 = vaddw_u8(v83, *v87.i8);
  v89 = vaddw_high_u8(v84, v87);
  v90 = vextq_s8(v5, v60, 4uLL);
  v91 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v90, v5)));
  v92 = vandq_s8(v90, v91);
  v93 = vaddw_u8(v88, *v92.i8);
  v94 = vaddw_high_u8(v89, v92);
  v95 = vextq_s8(v5, v60, 6uLL);
  v96 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v95, v5)));
  v97 = vandq_s8(v95, v96);
  v98 = vaddw_u8(v93, *v97.i8);
  v99 = vaddw_high_u8(v94, v97);
  v100 = vextq_s8(v5, v60, 8uLL);
  v101 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v100, v5)));
  v102 = vandq_s8(v100, v101);
  v103 = vextq_s8(v5, v60, 0xAuLL);
  v104 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v103, v5)));
  v105 = vandq_s8(v103, v104);
  v106 = vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(v64, v67), v71), v76), v81), v86), v91), v96), v101), v104);
  v107 = vaddw_u8(vaddw_u8(v98, *v102.i8), *v105.i8);
  v108 = vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v106.i8)));
  v109 = vdupq_n_s32(0x46FFFE00u);
  v98.i64[0] = 0x1000100010001;
  v98.i64[1] = 0x1000100010001;
  result = vqrdmulhq_s16(vaddw_high_u8(vaddw_high_u8(v99, v102), v105), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v106))), v109)), v98));
  *a2 = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(v107, vmulq_s32(vcvtq_u32_f32(vmulq_f32(v108, v109)), v98))), result);
  return result;
}

uint16x8_t chromapowerblur17H(int16x4_t *a1, uint8x16_t *a2, int a3, unsigned int a4)
{
  v4 = vdupq_n_s16(a4);
  v5 = *a1->i8;
  v6 = vdupq_lane_s16(*a1, 0);
  v7 = (a3 >> 3) - 1;
  if (a3 >> 3 <= 1)
  {
    v51 = vextq_s8(v6, v5, 2uLL);
    v55 = vextq_s8(v6, v5, 4uLL);
    v60 = vextq_s8(v6, v5, 6uLL);
    v65 = vextq_s8(v6, v5, 8uLL);
    v70 = vextq_s8(v6, v5, 0xAuLL);
    v74 = vextq_s8(v6, v5, 0xCuLL);
    v78 = vextq_s8(v6, v5, 0xEuLL);
  }

  else
  {
    v8 = a1 + 2;
    v9.i64[0] = 0x2000200020002;
    v9.i64[1] = 0x2000200020002;
    v10 = vdupq_n_s32(0x46FFFE00u);
    v11.i64[0] = 0x1000100010001;
    v11.i64[1] = 0x1000100010001;
    do
    {
      v12 = v5;
      v13 = *v8->i8;
      v8 += 2;
      v5 = v13;
      v14 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v6, v12)));
      v15 = vandq_s8(v6, v14);
      v16 = vsubq_s16(vandq_s8(v14, v9), vmvnq_s8(v14));
      v17 = vextq_s8(v6, v12, 2uLL);
      v18 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v17, v12)));
      v19 = vandq_s8(v17, v18);
      v20 = vaddw_u8(vaddl_u8(*v15.i8, *v12.i8), *v19.i8);
      v21 = vaddw_high_u8(vaddl_high_u8(v15, v12), v19);
      v22 = vextq_s8(v6, v12, 4uLL);
      v23 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v22, v12)));
      v24 = vandq_s8(v22, v23);
      v25 = vextq_s8(v6, v12, 6uLL);
      v26 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v25, v12)));
      v27 = vandq_s8(v25, v26);
      v28 = vaddw_high_u8(v21, v24);
      v29 = vaddw_u8(vaddw_u8(v20, *v24.i8), *v27.i8);
      v30 = vextq_s8(v6, v12, 8uLL);
      v31 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v30, v12)));
      v32 = vaddw_high_u8(v28, v27);
      v33 = vandq_s8(v30, v31);
      v34 = vaddw_u8(v29, *v33.i8);
      v35 = vextq_s8(v6, v12, 0xAuLL);
      v36 = vaddw_high_u8(v32, v33);
      v37 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v35, v12)));
      v38 = vandq_s8(v35, v37);
      v39 = vaddw_u8(v34, *v38.i8);
      v40 = vextq_s8(v6, v12, 0xCuLL);
      v41 = vaddw_high_u8(v36, v38);
      v42 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v40, v12)));
      v43 = vandq_s8(v40, v42);
      v44 = vaddw_u8(v39, *v43.i8);
      v45 = vextq_s8(v6, v12, 0xEuLL);
      v46 = vaddw_high_u8(v41, v43);
      v47 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v45, v12)));
      v48 = vandq_s8(v45, v47);
      v49 = vaddw_u8(v44, *v48.i8);
      v50 = vaddw_high_u8(v46, v48);
      v51 = vextq_s8(v12, v13, 2uLL);
      v52 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v51, v12)));
      v53 = vandq_s8(v51, v52);
      v54 = vaddw_u8(v49, *v53.i8);
      v55 = vextq_s8(v12, v13, 4uLL);
      v56 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v55, v12)));
      v57 = vandq_s8(v55, v56);
      v58 = vaddw_high_u8(v50, v53);
      v59 = vaddw_u8(v54, *v57.i8);
      v60 = vextq_s8(v12, v13, 6uLL);
      v61 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v60, v12)));
      v62 = vaddw_high_u8(v58, v57);
      v63 = vandq_s8(v60, v61);
      v64 = vaddw_u8(v59, *v63.i8);
      v65 = vextq_s8(v12, v13, 8uLL);
      v66 = vaddw_high_u8(v62, v63);
      v67 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v65, v12)));
      v68 = vandq_s8(v65, v67);
      v69 = vaddw_u8(v64, *v68.i8);
      v70 = vextq_s8(v12, v13, 0xAuLL);
      v71 = vaddw_high_u8(v66, v68);
      v72 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v70, v12)));
      v73 = vandq_s8(v70, v72);
      v74 = vextq_s8(v12, v13, 0xCuLL);
      v75 = vaddw_u8(v69, *v73.i8);
      v76 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v74, v12)));
      v77 = vandq_s8(v74, v76);
      v78 = vextq_s8(v12, v13, 0xEuLL);
      v79 = vaddw_high_u8(v71, v73);
      v80 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v78, v12)));
      v81 = vandq_s8(v78, v80);
      v82 = vsubq_s16(v16, v18);
      v83 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v13, v12)));
      v84 = vsubq_s16(v82, v23);
      v85 = vandq_s8(v13, v83);
      v86 = vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(v84, v26), v31), v37), v42), v47), v52), v56), v61), v67), v72), v76), v80), v83);
      *a2++ = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(vaddw_u8(vaddw_u8(vaddw_u8(v75, *v77.i8), *v81.i8), *v85.i8), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v86.i8))), v10)), v11))), vqrdmulhq_s16(vaddw_high_u8(vaddw_high_u8(vaddw_high_u8(v79, v77), v81), v85), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v86))), v10)), v11)));
      v6 = v12;
      --v7;
    }

    while (v7);
    v6 = v12;
  }

  v87 = vdupq_laneq_s16(v5, 7);
  v88 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v6, v5)));
  v89 = vandq_s8(v6, v88);
  v90.i64[0] = 0x2000200020002;
  v90.i64[1] = 0x2000200020002;
  v91 = vsubq_s16(vandq_s8(v88, v90), vmvnq_s8(v88));
  v92 = vaddl_u8(*v89.i8, *v5.i8);
  v93 = vaddl_high_u8(v89, v5);
  v94 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v51, v5)));
  v95 = vandq_s8(v51, v94);
  v96 = vaddw_u8(v92, *v95.i8);
  v97 = vaddw_high_u8(v93, v95);
  v98 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v55, v5)));
  v99 = vandq_s8(v55, v98);
  v100 = vaddw_u8(v96, *v99.i8);
  v101 = vaddw_high_u8(v97, v99);
  v102 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v60, v5)));
  v103 = vandq_s8(v60, v102);
  v104 = vaddw_u8(v100, *v103.i8);
  v105 = vaddw_high_u8(v101, v103);
  v106 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v65, v5)));
  v107 = vandq_s8(v65, v106);
  v108 = vaddw_u8(v104, *v107.i8);
  v109 = vaddw_high_u8(v105, v107);
  v110 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v70, v5)));
  v111 = vandq_s8(v70, v110);
  v112 = vaddw_u8(v108, *v111.i8);
  v113 = vaddw_high_u8(v109, v111);
  v114 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v74, v5)));
  v115 = vandq_s8(v74, v114);
  v116 = vaddw_u8(v112, *v115.i8);
  v117 = vaddw_high_u8(v113, v115);
  v118 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v78, v5)));
  v119 = vandq_s8(v78, v118);
  v120 = vaddw_u8(v116, *v119.i8);
  v121 = vaddw_high_u8(v117, v119);
  v122 = vextq_s8(v5, v87, 2uLL);
  v123 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v122, v5)));
  v124 = vandq_s8(v122, v123);
  v125 = vaddw_u8(v120, *v124.i8);
  v126 = vaddw_high_u8(v121, v124);
  v127 = vextq_s8(v5, v87, 4uLL);
  v128 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v127, v5)));
  v129 = vandq_s8(v127, v128);
  v130 = vaddw_u8(v125, *v129.i8);
  v131 = vaddw_high_u8(v126, v129);
  v132 = vextq_s8(v5, v87, 6uLL);
  v133 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v132, v5)));
  v134 = vandq_s8(v132, v133);
  v135 = vaddw_u8(v130, *v134.i8);
  v136 = vaddw_high_u8(v131, v134);
  v137 = vextq_s8(v5, v87, 8uLL);
  v138 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v137, v5)));
  v139 = vandq_s8(v137, v138);
  v140 = vaddw_u8(v135, *v139.i8);
  v141 = vaddw_high_u8(v136, v139);
  v142 = vextq_s8(v5, v87, 0xAuLL);
  v143 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v142, v5)));
  v144 = vandq_s8(v142, v143);
  v145 = vaddw_u8(v140, *v144.i8);
  v146 = vaddw_high_u8(v141, v144);
  v147 = vextq_s8(v5, v87, 0xCuLL);
  v148 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v147, v5)));
  v149 = vandq_s8(v147, v148);
  v150 = vaddw_u8(v145, *v149.i8);
  v151 = vaddw_high_u8(v146, v149);
  v152 = vextq_s8(v5, v87, 0xEuLL);
  v153 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v152, v5)));
  v154 = vandq_s8(v152, v153);
  v155 = vcgeq_u16(v4, vpaddlq_u8(vabdq_u8(v87, v5)));
  v156 = vandq_s8(v87, v155);
  v157 = vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(vsubq_s16(v91, v94), v98), v102), v106), v110), v114), v118), v123), v128), v133), v138), v143), v148), v153), v155);
  v158 = vrecpeq_f32(vcvtq_f32_u32(vmovl_u16(*v157.i8)));
  v159 = vdupq_n_s32(0x46FFFE00u);
  v98.i64[0] = 0x1000100010001;
  v98.i64[1] = 0x1000100010001;
  result = vqrdmulhq_s16(vaddw_high_u8(vaddw_high_u8(v151, v154), v156), vmulq_s32(vcvtq_u32_f32(vmulq_f32(vrecpeq_f32(vcvtq_f32_u32(vmovl_high_u16(v157))), v159)), v98));
  *a2 = vqmovn_high_u16(vqmovn_u16(vqrdmulhq_s16(vaddw_u8(vaddw_u8(v150, *v154.i8), *v156.i8), vmulq_s32(vcvtq_u32_f32(vmulq_f32(v158, v159)), v98))), result);
  return result;
}

uint64_t shmemRegionRegister()
{
  sSharedMemRegionClass = 0;
  *algn_1ED844DB8 = "FigSharedMemPoolSharedRegion";
  qword_1ED844DC0 = shmemRegionInit;
  unk_1ED844DC8 = 0;
  qword_1ED844DD0 = shmemRegionFinalize;
  unk_1ED844DD8 = 0;
  qword_1ED844DE0 = 0;
  unk_1ED844DE8 = 0;
  qword_1ED844DF0 = shmemRegionCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sSharedMemRegionID = result;
  return result;
}

uint64_t FigSharedMemPoolSharedRegionCreateXPCObject(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  if (!a1)
  {
    FigSharedMemPoolSharedRegionCreateXPCObject_cold_4(0, a2, a3);
    return 4294954516;
  }

  if (!a3)
  {
    FigSharedMemPoolSharedRegionCreateXPCObject_cold_3();
    return 4294954516;
  }

  if (*(a1 + 40))
  {
    FigSharedMemPoolSharedRegionCreateXPCObject_cold_1();
    return 4294954516;
  }

  v13 = xpc_shmem_create(*(a1 + 16), *(a1 + 24));
  if (!v13)
  {
    FigSharedMemPoolSharedRegionCreateXPCObject_cold_2();
    return 4294954516;
  }

  v14 = v13;
  v15 = 0;
  atomic_compare_exchange_strong_explicit((a1 + 40), &v15, 1u, memory_order_relaxed, memory_order_relaxed);
  if (v15)
  {
    xpc_release(v13);
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< FigSharedMemPool >>>>", 0xDC, v9, v18, v19, a9);
  }

  else
  {
    result = 0;
    *(a1 + 32) = a2;
    *a3 = v14;
  }

  return result;
}

uint64_t FigSharedMemPoolSharedRegionCreateFromXPCObject(uint64_t a1, void *a2, uint64_t *a3)
{
  if (!a3)
  {
    FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_5(a1, a2);
    return 4294954516;
  }

  if (!a2)
  {
    FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_4(a1);
    return 4294954516;
  }

  MEMORY[0x1B26F02D0](&FigSharedMemPoolSharedRegionGetTypeID_registerOnce, shmemRegionRegister);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_3();
    return 4294954510;
  }

  v6 = Instance;
  v7 = xpc_shmem_map(a2, (Instance + 16));
  *(v6 + 24) = v7;
  if (v7 <= 0x2F)
  {
    FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_2();
    v16 = 4294954516;
LABEL_14:
    CFRelease(v6);
    return v16;
  }

  v15 = shmemRegionRegisterSharedRegion(v6, v8, v9, v10, v11, v12, v13, v14, v18);
  v16 = v15;
  if (v15)
  {
    FigSharedMemPoolSharedRegionCreateFromXPCObject_cold_1(v15);
    goto LABEL_14;
  }

  *(v6 + 40) = 1;
  *a3 = v6;
  return v16;
}

uint64_t shmemRegionRegisterSharedRegion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  v10 = *(a1 + 16);
  if (*v10 != 1936224364)
  {
    shmemRegionRegisterSharedRegion_cold_1();
    return 4294954516;
  }

  v11 = 0;
  atomic_compare_exchange_strong_explicit((v10 + 8), &v11, v10, memory_order_relaxed, memory_order_relaxed);
  if (!v11)
  {
    *(v10 + 16) = a1;
    return v11;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< FigSharedMemPool >>>>", 0xC3, v9, v14, v15, a9);
}

uint64_t FigSharedMemPoolSharedRegionGetAddress(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t FigSharedMemPoolSharedRegionGetSize(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t FigSharedMemPoolSharedRegionGetOwner(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t shmemPoolRegister()
{
  sSharedMemPoolClass = 0;
  *algn_1ED844808 = "FigSharedMemoryPool";
  qword_1ED844810 = shmemPoolInit;
  unk_1ED844818 = 0;
  qword_1ED844820 = shmemPoolFinalize;
  unk_1ED844828 = 0;
  qword_1ED844830 = 0;
  unk_1ED844838 = 0;
  qword_1ED844840 = shmemPoolCopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sSharedMemPoolID = result;
  return result;
}

uint64_t FigSharedMemPoolCreate(uint64_t a1, size_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (!a5)
  {
    FigSharedMemPoolCreate_cold_8(a1, a2, a3, a4);
    return 4294954516;
  }

  if (!a2)
  {
    FigSharedMemPoolCreate_cold_7(a1, 0, a3, a4);
    return 4294954516;
  }

  v7 = 0;
  v8 = a3 != 0;
  v9 = a4 != 0;
  v10 = !v8 || !v9;
  if (v8 && v9)
  {
    v11 = a3;
  }

  else
  {
    v11 = &sDefaultBlockSizes;
  }

  v12 = 18;
  if (!v10)
  {
    v12 = a4;
  }

  v13 = 16;
  while (1)
  {
    v14 = v11[v7];
    if (v14 <= v13 || (v11[v7] & 0xF) != 0)
    {
      FigSharedMemPoolCreate_cold_6(a1);
      return 4294954516;
    }

    if (v14 >= a2)
    {
      break;
    }

    ++v7;
    v13 = v14;
    if (v12 == v7)
    {
      v7 = v12;
      goto LABEL_18;
    }
  }

  if (!v7)
  {
    FigSharedMemPoolCreate_cold_1(a1);
    return 4294954516;
  }

LABEL_18:
  MEMORY[0x1B26F02D0](&FigSharedMemPoolGetTypeID_registerOnce, shmemPoolRegister);
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    v17 = Instance;
    *(Instance + 56) = v7;
    v18 = malloc_type_calloc(v7, 0x18uLL, 0x10A00404E934A1DuLL);
    *(v17 + 48) = v18;
    if (v18)
    {
      for (i = *(v17 + 56); i; --i)
      {
        *v18 = 0;
        v18[1] = v18;
        v20 = *v11++;
        v18[2] = v20;
        v18 += 3;
      }

      *(v17 + 64) = 0;
      *(v17 + 32) = a2;
      MEMORY[0x1B26F02D0](&FigSharedMemPoolSharedRegionGetTypeID_registerOnce, shmemRegionRegister);
      v21 = _CFRuntimeCreateInstance();
      if (v21)
      {
        v22 = v21;
        v23 = mmap(0, a2, 3, 4097, -1, 0);
        if (v23 != -1)
        {
          v24 = v23;
          v22[2] = v23;
          v22[3] = a2;
          *v23 = 1936224364;
          v23[1] = a2;
          *(v23 + 1) = 0;
          *(v23 + 2) = 0;
          *(v23 + 3) = v22;
          v25 = getpid();
          result = 0;
          *(v24 + 4) = v25;
          *(v17 + 16) = v22;
          *(v17 + 24) = v22[2];
          *(v17 + 40) = 48;
          *a5 = v17;
          return result;
        }

        FigSharedMemPoolCreate_cold_2(v22, &v29);
      }

      else
      {
        FigSharedMemPoolCreate_cold_3(&v29);
      }

      v27 = v29;
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", -12786, v27, v28, v29, v30, v31, v32, v33);
    }

    else
    {
      FigSharedMemPoolCreate_cold_4();
    }

    CFRelease(v17);
  }

  else
  {
    FigSharedMemPoolCreate_cold_5();
  }

  return 4294954510;
}

void FigSharedMemPoolGetBlockStats(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a1 && a3)
  {
    v6 = *(a1 + 56);
    if (a2)
    {
      if (v6 >= *a3)
      {
        v6 = *a3;
      }

      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = *(a1 + 48) + 24 * i;
          v9 = (a2 + 24 * i);
          *v9 = *(v8 + 16);
          os_unfair_lock_lock((a1 + 64));
          v10 = *v8;
          if (*v8)
          {
            v11 = *(a1 + 24) + 4;
            do
            {
              if (*(v11 + *v10))
              {
                v12 = 1;
              }

              else
              {
                v12 = 2;
              }

              ++v9[v12];
              v10 = v10[1];
            }

            while (v10);
          }

          os_unfair_lock_unlock((a1 + 64));
        }
      }
    }

    *a3 = v6;
  }
}

uint64_t FigSharedMemBlockAllocate(uint64_t a1, unint64_t a2)
{
  if (!a2 || *(a1 + 32) <= a2)
  {
    FigSharedMemBlockAllocate_cold_3(a1);
LABEL_17:
    v8 = 0;
    goto LABEL_10;
  }

  v4 = shmemPoolLookupSubPool(a1, a2);
  if (!v4)
  {
    FigSharedMemBlockAllocate_cold_2();
    goto LABEL_17;
  }

  v5 = v4;
  os_unfair_lock_lock((a1 + 64));
  v6 = *v5;
  if (*v5)
  {
    while (1)
    {
      v7 = *(a1 + 24) + *v6;
      if (!*(v7 + 4))
      {
        break;
      }

      v6 = v6[1];
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    *(v7 + 4) = 1;
    goto LABEL_13;
  }

LABEL_7:
  os_unfair_lock_unlock((a1 + 64));
  v8 = malloc_type_malloc(0x10uLL, 0x10200405730B0C9uLL);
  if (v8)
  {
    os_unfair_lock_lock((a1 + 64));
    v9 = *(a1 + 40);
    v10 = *(v5 + 16);
    if (v9 <= *(a1 + 32) - v10)
    {
      *v8 = v9;
      *(a1 + 40) = v10 + v9;
      v7 = *(a1 + 24) + v9;
      *(v7 + 8) = v10;
      *(v7 + 12) = v9;
      *v7 = 0x17368626BLL;
      v8[1] = 0;
      **(v5 + 8) = v8;
      *(v5 + 8) = v8 + 1;
LABEL_13:
      os_unfair_lock_unlock((a1 + 64));
      v11 = v7 + 16;
      CFRetain(*(a1 + 16));
      v8 = 0;
      goto LABEL_14;
    }

    os_unfair_lock_unlock((a1 + 64));
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    FigSharedMemBlockAllocate_cold_1();
  }

LABEL_10:
  v11 = 0;
LABEL_14:
  free(v8);
  return v11;
}

uint64_t shmemPoolLookupSubPool(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 16;
  result = *(a1 + 48);
  if ((a2 + 16) > *(result + 16))
  {
    v5 = *(a1 + 56);
    if (v3 <= *(result + 24 * v5 - 8))
    {
      v6 = v5 - 1;
      if (v6 >= 2)
      {
        v7 = 0;
        do
        {
          if (v3 <= *(result + 24 * ((v6 + v7) >> 1) + 16))
          {
            v6 = (v6 + v7) >> 1;
          }

          else
          {
            v7 = (v6 + v7) >> 1;
          }
        }

        while (v6 - v7 > 1);
      }

      result += 24 * v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void FigSharedMemBlockRelease(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 - 16) == 1936220779)
    {
      v2 = a1 - 16 - *(a1 - 4);
      if (*(a1 - 12) <= 0)
      {
        FigSharedMemBlockRelease_cold_2();
      }

      atomic_fetch_add_explicit((a1 - 12), 0xFFFFFFFF, memory_order_relaxed);
      v3 = *(v2 + 32);
      v4 = getpid();
      v5 = 16;
      if (v3 == v4)
      {
        v5 = 24;
      }

      v6 = *(v2 + v5);
      if (v6)
      {

        CFRelease(v6);
      }
    }

    else
    {
      FigSharedMemBlockRelease_cold_1();
    }
  }
}

uint64_t FigSharedMemBlockRetain(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (*(a1 - 16) == 1936220779)
    {
      v2 = a1 - 16 - *(a1 - 4);
      if (*(a1 - 12) <= 0)
      {
        FigSharedMemBlockRetain_cold_2();
      }

      atomic_fetch_add_explicit((v1 - 12), 1u, memory_order_relaxed);
      v3 = *(v2 + 32);
      v4 = getpid();
      v5 = 16;
      if (v3 == v4)
      {
        v5 = 24;
      }

      v6 = *(v2 + v5);
      if (v6)
      {
        CFRetain(v6);
      }
    }

    else
    {
      FigSharedMemBlockRetain_cold_1();
      return 0;
    }
  }

  return v1;
}

uint64_t FigSharedMemBlockGetUsableSize(uint64_t result)
{
  if (result)
  {
    return *(result - 8) - 16;
  }

  return result;
}

uint64_t FigSharedMemBlockGetRegion(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result - 16;
    if (*(result - 16) == 1936220779)
    {
      if (*(result - 12) <= 0)
      {
        FigSharedMemBlockGetRegion_cold_2();
      }

      v3 = v2 - *(v1 - 4);
      v4 = *(v3 + 32);
      v5 = getpid();
      v6 = 16;
      if (v4 == v5)
      {
        v6 = 24;
      }

      return *(v3 + v6);
    }

    else
    {
      FigSharedMemBlockGetRegion_cold_1();
      return 0;
    }
  }

  return result;
}

CFAllocatorRef FigSharedMemPoolAllocatorCreate(const __CFAllocator *a1, void *a2)
{
  context.version = 0;
  context.info = a2;
  context.retain = shmemAllocatorRetain;
  context.release = shmemAllocatorRelease;
  context.copyDescription = shmemAllocatorCopyDescription;
  context.allocate = shmemAllocatorAllocate;
  context.reallocate = shmemAllocatorReallocate;
  context.deallocate = shmemAllocatorDeallocate;
  context.preferredSize = shmemAllocatorPreferredSize;
  return CFAllocatorCreate(a1, &context);
}

CFTypeRef shmemAllocatorRetain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void shmemAllocatorRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFStringRef shmemAllocatorCopyDescription(const void *a1)
{
  if (a1)
  {
    return CFCopyDescription(a1);
  }

  else
  {
    return CFRetain(@"<FigSharedMemPool NULL>");
  }
}

uint64_t shmemAllocatorAllocate(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return FigSharedMemBlockAllocate(a3, a1);
  }

  else
  {
    return 0;
  }
}

unsigned int *shmemAllocatorReallocate(unsigned int *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = *(a1 - 2) - 16;
  }

  else
  {
    v5 = 0;
  }

  if (v5 >= a2)
  {
    return a1;
  }

  if (!a4)
  {
    return 0;
  }

  v6 = FigSharedMemBlockAllocate(a4, a2);
  v7 = v6;
  if (a1 && v6)
  {
    memcpy(v6, a1, v5);
    FigSharedMemBlockRelease(a1);
  }

  return v7;
}

const __CFAllocator *FigIsSharedMemPoolAllocator(const __CFAllocator *result)
{
  memset(&v1, 0, sizeof(v1));
  if (result)
  {
    CFAllocatorGetContext(result, &v1);
    return (v1.allocate == shmemAllocatorAllocate);
  }

  return result;
}

const __CFAllocator *FigSharedMemPoolAllocatorGetPool(const __CFAllocator *result)
{
  memset(&v1, 0, sizeof(v1));
  if (result)
  {
    CFAllocatorGetContext(result, &v1);
    if (v1.allocate == shmemAllocatorAllocate)
    {
      return v1.info;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FigSharedMemBlockGetSharedRegionAddressAndSize(uint64_t result, uint64_t *a2, void *a3)
{
  if (result)
  {
    v3 = result - *(result - 4) - 16;
    if (a2)
    {
      *a2 = v3;
    }

    if (a3)
    {
      *a3 = *(v3 + 4);
    }
  }

  return result;
}

double shmemRegionInit(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t shmemRegionFinalize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return shmemRegionFinalize_cold_1();
  }

  v3 = v1[4];
  if (v3 == getpid())
  {
    v1[3] = 0;
  }

  else
  {
    v1[1] = 0;
    v1[2] = 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  return munmap(v4, v5);
}

double shmemPoolInit(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void shmemPoolFinalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[7];
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v5 = *(a1[6] + 24 * i);
        if (v5)
        {
          do
          {
            v6 = v5[1];
            free(v5);
            v5 = v6;
          }

          while (v6);
          v3 = a1[7];
        }
      }

      v2 = a1[6];
    }

    free(v2);
  }

  v7 = a1[2];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t FigCaptureTempFileManagerStart(uint64_t a1, uint64_t a2)
{
  if (FigCaptureTempFileManagerStart_once != -1)
  {
    FigCaptureTempFileManagerStart_cold_1();
  }

  return 0;
}

FigCaptureTempFileRemover *__FigCaptureTempFileManagerStart_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  result = objc_alloc_init(FigCaptureTempFileRemover);
  sTempFileRemoverSingleton = result;
  return result;
}

uint64_t FigCaptureSessionRemotePrewarmWithOptions(CFTypeRef cf, const __CFDictionary *a2)
{
  if (qword_1ED844E40)
  {
    captureSessionRemote_prewarm(cf, a2);
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    global_queue = dispatch_get_global_queue(2, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigCaptureSessionRemotePrewarmWithOptions_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    v6[4] = cf;
    v6[5] = a2;
    dispatch_async(global_queue, v6);
  }

  return 0;
}

void __FigCaptureSessionRemotePrewarmWithOptions_block_invoke(uint64_t a1)
{
  captureSessionRemote_prewarm(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    CFRelease(v3);
  }
}

uint64_t captureSessionRemote_prewarm(uint64_t a1, const __CFDictionary *a2)
{
  if (csr_ensureClientEstablished())
  {
    captureSessionRemote_prewarm_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    captureSessionRemote_prewarm_cold_2();
  }

  else
  {
    FigCFDictionaryGetInt64IfPresent();
    xpc_dictionary_set_int64(0, *MEMORY[0x1E69615B0], 0);
    if (FigCFDictionaryGetInt64IfPresent())
    {
      xpc_dictionary_set_int64(0, *MEMORY[0x1E69615D8], 0);
    }

    Value = CFDictionaryGetValue(a2, @"PrewarmKey_Reason");
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      if (v5 == CFStringGetTypeID())
      {
        FigXPCMessageSetCFString();
      }
    }

    if (a1 && FigXPCMessageSetCFString())
    {
      captureSessionRemote_prewarm_cold_3();
    }

    else if (FigXPCRemoteClientSendAsyncMessage())
    {
      captureSessionRemote_prewarm_cold_4();
    }

    else if (a1)
    {
      os_unfair_lock_lock(&_MergedGlobals);
      v6 = qword_1ED844E48;
      if (!qword_1ED844E48)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
        qword_1ED844E48 = v6;
      }

      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:a1];
      os_unfair_lock_unlock(&_MergedGlobals);
    }
  }

  return FigXPCRelease();
}

uint64_t FigCaptureSessionRemoteCancelPrewarm(CFTypeRef cf, CFTypeRef a2)
{
  if (qword_1ED844E40)
  {
    captureSessionRemote_cancelPrewarm(cf);
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    global_queue = dispatch_get_global_queue(2, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __FigCaptureSessionRemoteCancelPrewarm_block_invoke;
    v6[3] = &__block_descriptor_48_e5_v8__0l;
    v6[4] = cf;
    v6[5] = a2;
    dispatch_async(global_queue, v6);
  }

  return 0;
}

void __FigCaptureSessionRemoteCancelPrewarm_block_invoke(uint64_t a1, uint64_t a2)
{
  captureSessionRemote_cancelPrewarm(*(a1 + 32));
  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t FigCaptureSessionRemoteSetWombatEnabled(BOOL a1)
{
  if (csr_ensureClientEstablished())
  {
    FigCaptureSessionRemoteSetWombatEnabled_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    FigCaptureSessionRemoteSetWombatEnabled_cold_2();
  }

  else
  {
    xpc_dictionary_set_BOOL(0, kFigCaptureSessionSetWombatEnabledMessagePayload_Value, a1);
    v2 = FigXPCRemoteClientSendSyncMessage();
    if (v2)
    {
      FigCaptureSessionRemoteSetWombatEnabled_cold_3(v2);
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t FigCaptureSessionRemoteSetWombatInUse(BOOL a1)
{
  if (csr_ensureClientEstablished())
  {
    FigCaptureSessionRemoteSetWombatInUse_cold_1();
  }

  else if (FigXPCCreateBasicMessage())
  {
    FigCaptureSessionRemoteSetWombatInUse_cold_2();
  }

  else
  {
    xpc_dictionary_set_BOOL(0, kFigCaptureSessionSetWombatInUseMessagePayload_Value, a1);
    v2 = FigXPCRemoteClientSendSyncMessage();
    if (v2)
    {
      FigCaptureSessionRemoteSetWombatInUse_cold_3(v2);
    }
  }

  FigXPCRelease();
  return FigXPCRemoteClientKillServerOnTimeout();
}

uint64_t csr_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (!a1)
  {
    result = csr_deadConnectionCallback_cold_1();
  }

  *(v3 + 9) = 1;
  return result;
}

uint64_t captureSessionRemote_handleServerMessage(uint64_t a1, void *a2)
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    v3 = OpCode;
    captureSessionRemote_handleServerMessage_cold_1();
  }

  else
  {
    v3 = 4294951138;
    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  }

  return v3;
}

uint64_t csr_deserializeClientCompositingSampleBuffer(void *a1, const char *a2, uint64_t a3, uint64_t a4, CMSampleBufferRef *a5)
{
  sampleBufferOut = 0;
  v17 = *MEMORY[0x1E6960C70];
  *&v23.value = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  v23.epoch = v8;
  v21 = 0;
  formatDescriptionOut = 0;
  pixelBufferOut = 0;
  value = xpc_dictionary_get_value(a1, a2);
  if (!value)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = IOSurfaceLookupFromXPCObject(value);
  if (!v10)
  {
    csr_deserializeClientCompositingSampleBuffer_cold_1();
    v15 = 4294954510;
    goto LABEL_14;
  }

  if (a3)
  {
LABEL_6:
    dictionaryRepresentation.duration.value = 0;
    FigXPCMessageCopyCFDictionary();
  }

LABEL_7:
  v11 = *MEMORY[0x1E695E480];
  if (a4)
  {
    FigXPCMessageCreateBlockBufferData();
  }

  else
  {
    v12 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v10, 0, &pixelBufferOut);
    if (v12)
    {
      v15 = v12;
      csr_deserializeClientCompositingSampleBuffer_cold_3();
      goto LABEL_14;
    }

    v13 = CMVideoFormatDescriptionCreateForImageBuffer(v11, pixelBufferOut, &formatDescriptionOut);
    if (v13)
    {
      v15 = v13;
      csr_deserializeClientCompositingSampleBuffer_cold_4();
      goto LABEL_14;
    }

    *&dictionaryRepresentation.duration.value = v17;
    dictionaryRepresentation.duration.epoch = v8;
    dictionaryRepresentation.presentationTimeStamp = v23;
    *&dictionaryRepresentation.decodeTimeStamp.value = v17;
    dictionaryRepresentation.decodeTimeStamp.epoch = v8;
    v14 = CMSampleBufferCreateForImageBuffer(v11, pixelBufferOut, 1u, 0, 0, formatDescriptionOut, &dictionaryRepresentation, &sampleBufferOut);
    if (v14)
    {
      v15 = v14;
      csr_deserializeClientCompositingSampleBuffer_cold_5(v14, &dictionaryRepresentation);
      goto LABEL_14;
    }
  }

  v15 = 0;
  if (a5)
  {
    *a5 = sampleBufferOut;
  }

LABEL_14:
  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v15;
}

void csr_addFlexRangeImageProperties(const void *a1)
{
  v2 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  FlexRangeImagePropertiesFromGainMapMetadata = FigCaptureMetadataUtiltiesCreateFlexRangeImagePropertiesFromGainMapMetadata(v2);
  CMSetAttachment(a1, *off_1E798A630, FlexRangeImagePropertiesFromGainMapMetadata, 1u);
  if (FlexRangeImagePropertiesFromGainMapMetadata)
  {

    CFRelease(FlexRangeImagePropertiesFromGainMapMetadata);
  }
}

uint64_t captureSessionRemote_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    return 0;
  }

  v2 = DerivedStorage;
  *(DerivedStorage + 8) = 1;
  os_unfair_lock_lock((DerivedStorage + 64));

  *(v2 + 72) = 0;
  os_unfair_lock_unlock((v2 + 64));
  if (*(v2 + 9))
  {
    return 0;
  }

  v5 = FigXPCCreateBasicMessage();
  if (v5)
  {
    v3 = v5;
    captureSessionRemote_Invalidate_cold_1();
  }

  else
  {
    v6 = FigXPCRemoteClientSendSyncMessage();
    v3 = v6;
    if (v6)
    {
      captureSessionRemote_Invalidate_cold_2(v6);
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

void captureSessionRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  captureSessionRemote_Invalidate(a1);
  if (qword_1ED844E40)
  {
    FigXPCRemoteClientDisassociateObject();
  }

  v3 = *(DerivedStorage + 32);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 32) = 0;
  }

  v4 = *(DerivedStorage + 40);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 40) = 0;
  }

  v5 = *(DerivedStorage + 48);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 48) = 0;
  }

  v6 = *(DerivedStorage + 56);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 56) = 0;
  }

  v7 = *(DerivedStorage + 16);
  if (v7)
  {
    CFRelease(v7);
  }

  if (!*(DerivedStorage + 9))
  {
    if (FigXPCCreateBasicMessage())
    {
      captureSessionRemote_Finalize_cold_1();
    }

    else
    {
      v8 = FigXPCRemoteClientSendSyncMessage();
      if (v8)
      {
        captureSessionRemote_Finalize_cold_2(v8);
      }
    }

    FigXPCRelease();
    FigXPCRemoteClientKillServerOnTimeout();
  }
}

__CFString *captureSessionRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureSessionRemote %p retainCount: %ld%s allocator: %p, objectID: %lld>", a1, v5, v6, v7, *DerivedStorage);
  return Mutable;
}

uint64_t captureSessionRemote_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  ObjectID = captureSessionRemote_getObjectID(a1, &v8);
  if (ObjectID)
  {
    v6 = ObjectID;
    captureSessionRemote_CopyProperty_cold_1();
  }

  else
  {
    v5 = FigXPCSendStdCopyPropertyMessage();
    v6 = v5;
    if (v5)
    {
      captureSessionRemote_CopyProperty_cold_2(v5);
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v6;
}

uint64_t captureSessionRemote_CopySectionProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (captureSessionRemote_createBasicMessage(a1, 1668509810))
  {
    v5 = FigXPCMessageSetCFString();
    if (v5)
    {
      v9 = v5;
      captureSessionRemote_CopySectionProperty_cold_1();
    }

    else
    {
      v6 = FigXPCMessageSetCFString();
      if (v6)
      {
        v9 = v6;
        captureSessionRemote_CopySectionProperty_cold_2();
      }

      else
      {
        v7 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v7)
        {
          v9 = v7;
          captureSessionRemote_CopySectionProperty_cold_3();
        }

        else
        {
          v8 = FigXPCMessageCopyCFObject();
          v9 = v8;
          if (v8)
          {
            captureSessionRemote_CopySectionProperty_cold_4(v8);
          }
        }
      }
    }
  }

  else
  {
    captureSessionRemote_CopySectionProperty_cold_5();
    v9 = 4294954510;
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

void captureSessionRemote_FileSinkStartRecording(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if ([a3 outputURL])
  {
    [a3 outputURL];
    FigSandboxRegisterURLWithProcess();
  }

  v7 = csr_serializeObjectUsingNSSecureCoding(a3);
  captureSessionRemote_commonAsyncMessage(a1, 1651664227, a2, v7);

  objc_autoreleasePoolPop(v6);
}

void captureSessionRemote_StillImageSinkCaptureImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = csr_serializeObjectUsingNSSecureCoding(a3);
  captureSessionRemote_commonAsyncMessage(a1, 1937009004, a2, v7);

  objc_autoreleasePoolPop(v6);
}

void captureSessionRemote_StillImageSinkPrepareToCaptureBracket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = csr_serializeObjectUsingNSSecureCoding(a3);
  captureSessionRemote_commonAsyncMessage(a1, 1885500011, a2, v7);

  objc_autoreleasePoolPop(v6);
}

void captureSessionRemote_IrisStillImageSinkCaptureImage(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if ([a3 movieURLForOriginalImage])
  {
    [a3 movieURLForOriginalImage];
    FigSandboxRegisterURLWithProcess();
  }

  if ([objc_msgSend(a3 "movieRecordingSettings")])
  {
    [objc_msgSend(a3 "movieRecordingSettings")];
    FigSandboxRegisterURLWithProcess();
  }

  v7 = csr_serializeObjectUsingNSSecureCoding(a3);
  captureSessionRemote_commonAsyncMessage(a1, 1769171299, a2, v7);

  objc_autoreleasePoolPop(v6);
}

uint64_t captureSessionRemote_IrisStillImageSinkPrepareToCapture(uint64_t a1, uint64_t a2, void *a3)
{
  BasicMessage = captureSessionRemote_createBasicMessage(a1, 1769171312);
  if (BasicMessage)
  {
    if (FigXPCMessageSetCFString())
    {
      captureSessionRemote_IrisStillImageSinkPrepareToCapture_cold_1();
    }

    else
    {
      v5 = [a3 copyXPCEncoding];
      xpc_dictionary_set_value(BasicMessage, *MEMORY[0x1E69615B0], v5);
      xpc_release(v5);
      if (FigXPCRemoteClientSendAsyncMessage())
      {
        captureSessionRemote_IrisStillImageSinkPrepareToCapture_cold_2();
      }
    }
  }

  else
  {
    captureSessionRemote_IrisStillImageSinkPrepareToCapture_cold_3();
  }

  return FigXPCRelease();
}

void captureSessionRemote_IrisStillImageSinkBeginMomentCapture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = csr_serializeObjectUsingNSSecureCoding(a3);
  captureSessionRemote_commonAsyncMessage(a1, 1768058211, a2, v7);

  objc_autoreleasePoolPop(v6);
}

void captureSessionRemote_IrisStillImageSinkCommitMomentCaptureToStillImageCapture(uint64_t a1, uint64_t a2, void *a3)
{
  if ([objc_msgSend(a3 "movieRecordingSettings")])
  {
    [objc_msgSend(a3 "movieRecordingSettings")];
    FigSandboxRegisterURLWithProcess();
  }

  if ([a3 movieURLForOriginalImage])
  {
    [a3 movieURLForOriginalImage];
    FigSandboxRegisterURLWithProcess();
  }

  if ([objc_msgSend(a3 "movieRecordingSettings")])
  {
    [objc_msgSend(a3 "movieRecordingSettings")];
    FigSandboxRegisterURLWithProcess();
  }

  if ([a3 spatialOverCaptureMovieURLForOriginalImage])
  {
    [a3 spatialOverCaptureMovieURLForOriginalImage];
    FigSandboxRegisterURLWithProcess();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = csr_serializeObjectUsingNSSecureCoding(a3);
  captureSessionRemote_commonAsyncMessage(a1, 1768125289, a2, v7);

  objc_autoreleasePoolPop(v6);
}

void captureSessionRemote_IrisStillImageSinkCommitMomentCaptureToMovieRecording(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_autoreleasePoolPush();
  if ([a3 outputURL])
  {
    [a3 outputURL];
    FigSandboxRegisterURLWithProcess();
  }

  if ([a3 spatialOverCaptureMovieURL])
  {
    [a3 spatialOverCaptureMovieURL];
    FigSandboxRegisterURLWithProcess();
  }

  v7 = csr_serializeObjectUsingNSSecureCoding(a3);
  captureSessionRemote_commonAsyncMessage(a1, 1768123762, a2, v7);

  objc_autoreleasePoolPop(v6);
}

uint64_t captureSessionRemote_IrisStillImageSinkCancelMomentCapture(uint64_t a1, uint64_t a2, int64_t a3)
{
  BasicMessage = captureSessionRemote_createBasicMessage(a1, 1768120686);
  if (BasicMessage)
  {
    if (FigXPCMessageSetCFString())
    {
      captureSessionRemote_IrisStillImageSinkCancelMomentCapture_cold_1();
    }

    else
    {
      xpc_dictionary_set_int64(BasicMessage, *MEMORY[0x1E69615B0], a3);
      if (FigXPCRemoteClientSendAsyncMessage())
      {
        captureSessionRemote_IrisStillImageSinkCancelMomentCapture_cold_2();
      }
    }
  }

  else
  {
    captureSessionRemote_IrisStillImageSinkCancelMomentCapture_cold_3();
  }

  return FigXPCRelease();
}

uint64_t captureSessionRemote_IrisStillImageSinkEndMomentCapture(uint64_t a1, uint64_t a2, int64_t a3)
{
  BasicMessage = captureSessionRemote_createBasicMessage(a1, 1768255076);
  if (BasicMessage)
  {
    if (FigXPCMessageSetCFString())
    {
      captureSessionRemote_IrisStillImageSinkEndMomentCapture_cold_1();
    }

    else
    {
      xpc_dictionary_set_int64(BasicMessage, *MEMORY[0x1E69615B0], a3);
      if (FigXPCRemoteClientSendAsyncMessage())
      {
        captureSessionRemote_IrisStillImageSinkEndMomentCapture_cold_2();
      }
    }
  }

  else
  {
    captureSessionRemote_IrisStillImageSinkEndMomentCapture_cold_3();
  }

  return FigXPCRelease();
}

void captureSessionRemote_VisionDataSinkTriggerBurst(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  captureSessionRemote_commonAsyncMessage(a1, 1651667828, a2, 0);

  objc_autoreleasePoolPop(v4);
}

uint64_t FigRemoteQueueServerStart(uint64_t a1)
{
  if (a1)
  {
    if (gFigRemoteQueueServerState_0)
    {
      FigRemoteQueueServerStart_cold_1();
      return 4294954514;
    }

    else
    {
      result = 0;
      gFigRemoteQueueServerState_0 = a1;
    }
  }

  else
  {
    FigRemoteQueueServerStart_cold_2();
    return 4294954516;
  }

  return result;
}

uint64_t dumpCVPixelBufferToRawFile(__CVBuffer *a1, const char *a2, int a3)
{
  if (CVPixelBufferIsPlanar(a1))
  {
    PlaneCount = CVPixelBufferGetPlaneCount(a1);
  }

  else
  {
    PlaneCount = 1;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  Width = CVPixelBufferGetWidth(a1);
  BytesPerRow = Width;
  if (!a3)
  {
LABEL_43:
    v11 = 0;
    goto LABEL_44;
  }

  if ((PixelFormatType | 0x10) != 0x34323076)
  {
    v12 = 0;
    while (PixelFormatType != *&a024p02fp444p44[v12])
    {
      v12 += 4;
      if (v12 == 16)
      {
        v13 = 0;
        while (PixelFormatType != *&a024p02fp444p44[v13 + 16])
        {
          v13 += 4;
          if (v13 == 16)
          {
            v14 = 0;
            while (PixelFormatType != *&aArgbpedfsidff0[v14 + 20])
            {
              v14 += 4;
              if (v14 == 12)
              {
                for (i = 0; i != 68; i += 4)
                {
                  if (PixelFormatType == *&a024p02fp444p44[i + 32])
                  {
                    v11 = 0;
                    BytesPerRow = 2 * Width;
                    goto LABEL_44;
                  }
                }

                for (j = 0; j != 24; j += 4)
                {
                  if (PixelFormatType == *&a024p02fp444p44[j + 100])
                  {
                    v11 = 0;
                    BytesPerRow = 4 * Width;
                    goto LABEL_44;
                  }
                }

                if (PixelFormatType == 1380411457 || PixelFormatType == 1815491698)
                {
                  v11 = 0;
                  BytesPerRow = 8 * Width;
                  goto LABEL_44;
                }

                v19 = 0;
                while (PixelFormatType != *&aArgbpedfsidff0[v19 + 32])
                {
                  v19 += 4;
                  if (v19 == 28)
                  {
                    for (k = 0; k != 24; k += 4)
                    {
                      if (PixelFormatType == *&aArgbpedfsidff0[k + 60])
                      {
                        v11 = 0;
                        a3 = 0;
                        goto LABEL_44;
                      }
                    }

                    if (PixelFormatType != 1651798066)
                    {
                      return 0;
                    }

                    a3 = 0;
                    v11 = 0;
                    goto LABEL_58;
                  }
                }

                goto LABEL_43;
              }
            }

            break;
          }
        }

        BytesPerRow = 2 * Width;
        goto LABEL_32;
      }
    }

    BytesPerRow = 4 * (Width / 3);
    if (Width != 3 * (Width / 3))
    {
      BytesPerRow += 4;
      if (BytesPerRow >= CVPixelBufferGetBytesPerRow(a1))
      {
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      }
    }

    if (PixelFormatType == 1885746228 || PixelFormatType == 1882469428)
    {
      v17 = 2 * BytesPerRow;
      a3 = 1;
      v11 = 1;
      v18 = 1;
      goto LABEL_63;
    }

LABEL_32:
    v11 = 1;
LABEL_44:
    if (PixelFormatType != 1647719528)
    {
      goto LABEL_58;
    }

    v21 = CVPixelFormatDescriptionCreateWithPixelFormatType(0, 0x62363468u);
    if (!v21)
    {
      dumpCVPixelBufferToRawFile_cold_1(&valuePtr, v22, v23, v24, v25, v26, v27, v28);
      v18 = valuePtr;
      goto LABEL_61;
    }

    v29 = v21;
    Value = CFDictionaryGetValue(v21, *MEMORY[0x1E6966230]);
    if (Value && ((LODWORD(valuePtr) = 0, CFNumberGetValue(Value, kCFNumberIntType, &valuePtr)) ? (v33 = valuePtr < 1) : (v33 = 1), v33))
    {
      v37 = v3;
      v38 = 31;
    }

    else
    {
      v34 = CFDictionaryGetValue(v29, *MEMORY[0x1E6966228]);
      if (!v34)
      {
        v18 = 1;
LABEL_60:
        CFRelease(v29);
LABEL_61:
        BytesPerRow *= v18;
        goto LABEL_62;
      }

      LODWORD(valuePtr) = 0;
      v35 = CFNumberGetValue(v34, kCFNumberIntType, &valuePtr);
      v18 = valuePtr;
      if (v35)
      {
        v36 = valuePtr < 1;
      }

      else
      {
        v36 = 1;
      }

      if (!v36)
      {
        goto LABEL_60;
      }

      v37 = v3;
      v38 = 43;
    }

    v18 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFFFFFLL, "(Fig)", v38, v37, v31, v32, v55) == 0;
    goto LABEL_60;
  }

  v11 = 1;
  a3 = 1;
LABEL_58:
  v18 = 1;
LABEL_62:
  v17 = BytesPerRow;
LABEL_63:
  v39 = fopen(a2, "wb");
  if (!v39)
  {
    return 0;
  }

  v40 = v39;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (PlaneCount > 1)
  {
    if (a3 && v11)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
      if (CVPixelBufferGetHeightOfPlane(a1, 0))
      {
        v45 = 0;
        do
        {
          fwrite(BaseAddressOfPlane, 1uLL, BytesPerRow, v40);
          BaseAddressOfPlane += CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
          ++v45;
        }

        while (v45 < CVPixelBufferGetHeightOfPlane(a1, 0));
      }

      v46 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
      if (CVPixelBufferGetHeightOfPlane(a1, 1uLL))
      {
        v47 = 0;
        do
        {
          fwrite(v46, 1uLL, v17, v40);
          v46 += CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
          ++v47;
        }

        while (v47 < CVPixelBufferGetHeightOfPlane(a1, 1uLL));
      }
    }

    else
    {
      for (m = 0; m != PlaneCount; ++m)
      {
        v49 = CVPixelBufferGetBaseAddressOfPlane(a1, m);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, m);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, m);
        fwrite(v49, 1uLL, HeightOfPlane * BytesPerRowOfPlane, v40);
      }
    }
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    if (a3)
    {
      if (v18 <= CVPixelBufferGetHeight(a1))
      {
        v42 = 0;
        do
        {
          fwrite(BaseAddress, 1uLL, BytesPerRow, v40);
          BaseAddress += CVPixelBufferGetBytesPerRow(a1);
          ++v42;
        }

        while (v42 < CVPixelBufferGetHeight(a1) / v18);
      }
    }

    else
    {
      v52 = CVPixelBufferGetBytesPerRow(a1);
      Height = CVPixelBufferGetHeight(a1);
      fwrite(BaseAddress, 1uLL, Height * v52, v40);
    }
  }

  v43 = 1;
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  fclose(v40);
  return v43;
}

void sicibmr_renderToPixelBuffer(void *a1, uint64_t a2, __CVBuffer *a3, void *a4)
{
  v10 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:a3];
  Width = CVPixelBufferGetWidth(a3);
  v9 = [a1 startTaskToRender:a2 fromRect:v10 toDestination:a4 atPoint:0.0 error:{0.0, Width, CVPixelBufferGetHeight(a3), 0.0, 0.0}];
  if (!*a4)
  {
    [v9 waitUntilCompletedAndReturnError:a4];
  }
}

uint64_t sicibmr_landmarkToC0(uint64_t result, double *a2, double *a3, double *a4)
{
  v4 = *a3 + *a2 * a3[2];
  v5 = 1.0 - (a3[1] + a2[1] * a3[3]);
  *a4 = v4;
  a4[1] = v5;
  if (result > 4)
  {
    if (result > 6)
    {
      if (result != 7)
      {
        if (result != 8)
        {
          return result;
        }

        v8 = v4;
        v5 = 1.0 - v5;
        goto LABEL_16;
      }

      v6 = v4;
      v5 = 1.0 - v5;
    }

    else
    {
      if (result == 5)
      {
        v8 = v4;
LABEL_16:
        *a4 = v5;
        a4[1] = v8;
        return result;
      }

      v6 = v4;
    }

    v8 = 1.0 - v6;
    goto LABEL_16;
  }

  if (result == 2)
  {
    *a4 = 1.0 - v4;
  }

  else
  {
    if (result == 3)
    {
      v7 = 1.0 - v5;
      *a4 = 1.0 - v4;
    }

    else
    {
      if (result != 4)
      {
        return result;
      }

      v7 = 1.0 - v5;
    }

    a4[1] = v7;
  }

  return result;
}

void *FigRemoteOperationReceiverCreateMessageReceiver(void *a1, void *a2)
{
  v2 = a2;
  if (a2)
  {
    if (FigRemoteQueueReceiverGetContext(a1))
    {
      FigRemoteOperationReceiverCreateMessageReceiver_cold_1();
    }

    v4 = malloc_type_malloc(0x78uLL, 0x10E20404DDAD7CFuLL);
    *v4 = FigSimpleMutexCreate();
    *(v4 + 1) = 0;
    *(v4 + 2) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 88) = 0u;
    *(v4 + 104) = 0u;
    FigRemoteQueueReceiverSetContext(a1, v4, &__block_literal_global_9);
    v5 = _Block_copy(v2);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 0x40000000;
    aBlock[2] = __FigRemoteOperationReceiverCreateMessageReceiver_block_invoke;
    aBlock[3] = &unk_1E798FF18;
    aBlock[4] = v5;
    v2 = _Block_copy(aBlock);
    _Block_release(v5);
  }

  return v2;
}

uint64_t __FigRemoteOperationReceiverCreateMessageReceiver_block_invoke(uint64_t a1, int a2, _DWORD *a3, void *a4)
{
  if (a2)
  {
    v6 = 0;
LABEL_3:
    if (a4)
    {
      FigSimpleMutexLock();
    }

    v7 = (a4 + 9);
    if (v6 != *(a4 + 18))
    {
      __FigRemoteOperationReceiverCreateMessageReceiver_block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
    v8 = *v7;
    if (v8)
    {
      if ((v8 - 7) >= 0xFFFFFFFA)
      {
        roGetCallbacksForOperationType_sRemoteOperationCallbacks[4 * v8 + 2]((a4 + 9));
      }

      *(a4 + 11) = 0u;
      *(a4 + 13) = 0u;
      *v7 = 0u;
    }

    return FigSimpleMutexUnlock();
  }

  Type = FigRemoteOperationGetType(a3);
  v6 = Type;
  if (!Type)
  {
    goto LABEL_3;
  }

  if (Type - 7 <= 0xFFFFFFF9)
  {
    v24 = 0;
    v23 = 0u;
    v22 = 0u;
    v15 = a3[4];
    v21[0] = Type;
    v21[1] = v15;
    (*(*(a1 + 32) + 16))(*(a1 + 32), 4294950633, v21, v12, v13, v14);
    goto LABEL_3;
  }

  v16 = &roGetCallbacksForOperationType_sRemoteOperationCallbacks[4 * Type];
  v17 = *a3;
  v18 = 48;
  if (*(*a3 + 32) == *a3)
  {
    v18 = 40;
  }

  Region = FigSharedMemBlockGetRegion(*(v17 + v18));
  if (Region)
  {
    CFRetain(Region);
  }

  v20 = *(v17 + 12);
  (v16[1])(a3, a4);
  result = (v16[3])(v17);
  if (!v20)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t FigRemoteOperationGetType(_DWORD **a1)
{
  if (!a1)
  {
    FigRemoteOperationGetType_cold_3();
    return 0;
  }

  v1 = *a1;
  if (!*a1)
  {
    FigRemoteOperationGetType_cold_2();
    return 0;
  }

  if (*v1 != 1919774576)
  {
    FigRemoteOperationGetType_cold_1();
    return 0;
  }

  return v1[1];
}

unsigned int *FigRemoteOperationCleanup(unsigned int *result)
{
  v1 = *result;
  if ((v1 - 7) >= 0xFFFFFFFA)
  {
    return (roGetCallbacksForOperationType_sRemoteOperationCallbacks[4 * v1 + 2])();
  }

  return result;
}

uint64_t FigRemoteOperationSenderResetWithApplier(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __FigRemoteOperationSenderResetWithApplier_block_invoke;
  v3[3] = &unk_1E798FF40;
  v3[4] = a2;
  return FigRemoteQueueSenderResetWithApplier(a1, v3);
}

uint64_t __FigRemoteOperationSenderResetWithApplier_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  if (v5 && (*(v5 + 16))(v5, a2, a3, a4))
  {
    return 1;
  }

  v7 = *a4;
  if (v7 && *v7 == 1919774576)
  {
    Region = FigSharedMemBlockGetRegion(*(v7 + 40));
    if (Region)
    {
      CFRetain(Region);
    }

    FigRemoteOperationCleanupMessageData(v7);
  }

  return 0;
}

_DWORD *FigRemoteOperationCleanupMessageData(_DWORD *result)
{
  if (!result)
  {
    return FigRemoteOperationCleanupMessageData_cold_2();
  }

  if (*result != 1919774576)
  {
    return FigRemoteOperationCleanupMessageData_cold_1();
  }

  v1 = result[1];
  if ((v1 - 7) >= 0xFFFFFFFA)
  {
    v2 = roGetCallbacksForOperationType_sRemoteOperationCallbacks[4 * v1 + 3];

    return v2();
  }

  return result;
}

uint64_t roEnqueue(void *a1, unsigned int *a2, uint64_t a3)
{
  SharedMemPoolAllocator = FigRemoteQueueSenderGetSharedMemPoolAllocator(a1);
  if (!a1)
  {
    roEnqueue_cold_3(SharedMemPoolAllocator);
    return 4294950629;
  }

  if (!a2)
  {
    roEnqueue_cold_2(SharedMemPoolAllocator);
    return 4294950629;
  }

  v7 = SharedMemPoolAllocator;
  if (!SharedMemPoolAllocator || !FigIsSharedMemPoolAllocator(SharedMemPoolAllocator))
  {
    roEnqueue_cold_1();
    return 4294950629;
  }

  v8 = *a2;
  if ((v8 - 7) < 0xFFFFFFFA)
  {
    return 4294950633;
  }

  v10 = &roGetCallbacksForOperationType_sRemoteOperationCallbacks[4 * v8];
  if (!FigRemoteQueueSenderGetContext(a1))
  {
    v11 = malloc_type_malloc(0x78uLL, 0x10E20404DDAD7CFuLL);
    *v11 = FigSimpleMutexCreate();
    v11[1] = 0;
    v11[2] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    memset_pattern16(v11 + 3, &unk_1AD046660, 0x18uLL);
    v11[14] = 0;
    *(v11 + 5) = 0u;
    *(v11 + 6) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 4) = 0u;
    FigRemoteQueueSenderSetContext(a1, v11, &__block_literal_global_73, &__block_literal_global_77);
  }

  return (*v10)(v7, a2, a1, a3);
}

void roSerializationContextReceiverFinalize_block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigSimpleMutexLock();
    v3 = a2[1];
    if (v3)
    {
      CFRelease(v3);
      a2[1] = 0;
    }

    v4 = a2[2];
    if (v4)
    {
      CFRelease(v4);
      a2[2] = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();

    free(a2);
  }
}

CFIndex roEnqueueDictionaryPayload(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v88 = a2;
  v9 = *(a2 + 24);
  if (v9)
  {
    MutableCopy = CFRetain(v9);
  }

  else
  {
    MutableCopy = 0;
  }

  Context = FigRemoteQueueSenderGetContext(a3);
  if (Context)
  {
    FigSimpleMutexLock();
  }

  v15 = *(Context + 8);
  if (v15)
  {
    v15 = CFRetain(v15);
  }

  v91 = v15;
  Count = *(v88 + 32);
  if (Count)
  {
    Count = CFDictionaryGetCount(Count);
    v17 = Count;
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x1EEE9AC00](Count, v11, v12, v13);
  v20 = &v76 - ((v19 + 35) & 0xFFFFFFFFFFFFFFF0);
  if (*v88 != 1)
  {
    roEnqueueDictionaryPayload_cold_1(v18);
LABEL_86:
    LODWORD(v22) = 0;
    v75 = 4294950629;
    goto LABEL_74;
  }

  if (!MutableCopy)
  {
    roEnqueueDictionaryPayload_cold_12(v18);
    goto LABEL_86;
  }

  v21 = MEMORY[0x1B26EDEF0](a1, 64, 0x1000040FA0F61DDLL, 0);
  v22 = v21;
  if (!v21)
  {
    roEnqueueDictionaryPayload_cold_11();
    v75 = 4294950630;
    goto LABEL_74;
  }

  v84 = a3;
  *v20 = v21;
  *(v20 + 1) = 0;
  v23 = v17;
  v24 = Context;
  v25 = v88;
  *(v20 + 4) = *(v88 + 4);
  v21[2] = 0u;
  v21[3] = 0u;
  *v21 = 0u;
  v21[1] = 0u;
  *v21 = 0x1726D6F70;
  *(v21 + 2) = *(v25 + 8);
  *(v21 + 4) = v21;
  CacheForName = roSerializationContextGetCacheForName(v24, a1, *(v25 + 16));
  v83 = v22;
  v22[3] = CacheForName;
  if (v23 < 1)
  {
    LODWORD(v22) = 1;
    Context = v24;
    v58 = v84;
    goto LABEL_45;
  }

  v79 = a4;
  v82 = &v76;
  v86 = v24;
  v87 = a1;
  v80 = a5;
  v81 = &v76;
  MEMORY[0x1EEE9AC00](CacheForName, v27, v28, v29);
  v30 = (8 * v23 + 15) & 0xFFFFFFFFFFFFFFF0;
  v31 = (&v76 - v30);
  if ((8 * v23) >= 0x200)
  {
    v32 = 512;
  }

  else
  {
    v32 = 8 * v23;
  }

  bzero(&v76 - v30, v32);
  MEMORY[0x1EEE9AC00](v33, v34, v35, v36);
  v37 = (&v76 - v30);
  bzero(v37, v32);
  CFDictionaryGetKeysAndValues(*(v25 + 32), v31, v37);
  LODWORD(v22) = 1;
  v85 = *MEMORY[0x1E695E480];
  v77 = v31;
  v78 = v23;
  do
  {
    Value = CFDictionaryGetValue(*(v25 + 24), *v31);
    if (!Value)
    {
      goto LABEL_39;
    }

    v39 = Value;
    v40 = *v37;
    if (*v37 > 3)
    {
      if (v40 != 4)
      {
        if (v40 != 6)
        {
          goto LABEL_37;
        }

        goto LABEL_27;
      }

      v41 = MutableCopy;
      v90 = 0;
      v53 = v87;
      v54 = MEMORY[0x1B26EDEF0](v87, 64, 0x1000040FA0F61DDLL, 0);
      if (!v54)
      {
        roEnqueueDictionaryPayload_cold_4();
        goto LABEL_80;
      }

      v55 = v54;
      v56 = &v20[20 * v22];
      *v56 = v54;
      *(v56 + 1) = 0;
      *(v56 + 4) = 2;
      LODWORD(v22) = v22 + 1;
      *(v54 + 32) = 0u;
      *(v54 + 48) = 0u;
      *v54 = 0u;
      *(v54 + 16) = 0u;
      *v54 = 0x1726D6F70;
      *(v54 + 8) = 4;
      *(v54 + 32) = v54;
      *(v54 + 24) = roSerializationContextGetCacheForName(v86, v53, *v31);
      SerializableDictionaryForFormatDescription = FigRemote_CreateSerializableDictionaryForFormatDescription();
      if (SerializableDictionaryForFormatDescription)
      {
        v75 = SerializableDictionaryForFormatDescription;
        roEnqueueDictionaryPayload_cold_2();
        goto LABEL_81;
      }

      v75 = roSerializePropertyListData(v53, v90, v55);
      CFRelease(v90);
      if (v75)
      {
        roEnqueueDictionaryPayload_cold_3(v75);
        goto LABEL_81;
      }
    }

    else
    {
      if (v40 != 2)
      {
        if (v40 != 3)
        {
          if (v40 < 2)
          {
            v75 = 4294950633;
LABEL_73:
            Context = v86;
            a1 = v87;
            goto LABEL_74;
          }

          goto LABEL_37;
        }

LABEL_27:
        v41 = MutableCopy;
        v89 = 0;
        v90 = 0;
        v42 = v87;
        v43 = MEMORY[0x1B26EDEF0](v87, 64, 0x1000040FA0F61DDLL, 0);
        if (v43)
        {
          v44 = v43;
          v45 = &v20[20 * v22];
          *v45 = v43;
          *(v45 + 1) = 0;
          *(v45 + 4) = 2;
          LODWORD(v22) = v22 + 1;
          *(v43 + 32) = 0u;
          *(v43 + 48) = 0u;
          *v43 = 0u;
          *(v43 + 16) = 0u;
          *v43 = 0x1726D6F70;
          *(v43 + 8) = 3;
          *(v43 + 24) = roSerializationContextGetCacheForName(v86, v42, *v31);
          SerializedAtomDataAndSurfaceForSampleBuffer = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer();
          if (!SerializedAtomDataAndSurfaceForSampleBuffer)
          {
            v48 = v89;
            v47 = v90;
            v44[4] = v44;
            v44[5] = v47;
            v44[7] = v48;
            RemoteAddress = FigSharedMemBlockGetRemoteAddress(v47);
            v44[6] = RemoteAddress;
            if (!RemoteAddress)
            {
              roEnqueueDictionaryPayload_cold_6();
            }

            goto LABEL_36;
          }

          v75 = SerializedAtomDataAndSurfaceForSampleBuffer;
          roEnqueueDictionaryPayload_cold_5();
LABEL_81:
          MutableCopy = v41;
          goto LABEL_73;
        }

        roEnqueueDictionaryPayload_cold_7();
LABEL_80:
        v75 = 4294950630;
        goto LABEL_81;
      }

      v41 = MutableCopy;
      v50 = v87;
      v51 = MEMORY[0x1B26EDEF0](v87, 64, 0x1000040FA0F61DDLL, 0);
      if (!v51)
      {
        roEnqueueDictionaryPayload_cold_8();
        goto LABEL_80;
      }

      v52 = &v20[20 * v22];
      *v52 = v51;
      *(v52 + 1) = v39;
      *(v52 + 4) = 2;
      LODWORD(v22) = v22 + 1;
      *(v51 + 32) = 0u;
      *(v51 + 48) = 0u;
      *v51 = 0u;
      *(v51 + 16) = 0u;
      *v51 = 0x1726D6F70;
      *(v51 + 8) = 2;
      *(v51 + 24) = roSerializationContextGetCacheForName(v86, v50, *v31);
    }

LABEL_36:
    MutableCopy = v41;
    v25 = v88;
LABEL_37:
    if (MutableCopy)
    {
      CFRelease(MutableCopy);
      MutableCopy = 0;
    }

LABEL_39:
    v37 += 2;
    ++v31;
    --v23;
  }

  while (v23);
  Context = v86;
  a1 = v87;
  v58 = v84;
  a4 = v79;
  if (!MutableCopy)
  {
    v59 = v88;
    v60 = CFDictionaryGetCount(*(v88 + 24));
    MutableCopy = CFDictionaryCreateMutableCopy(v85, v60, *(v59 + 24));
    v61 = v77;
    v62 = v78;
    do
    {
      v63 = *v61++;
      CFDictionaryRemoveValue(MutableCopy, v63);
      --v62;
    }

    while (v62);
  }

  a5 = v80;
LABEL_45:
  v64 = roSerializePropertyListData(a1, MutableCopy, v83);
  if (v64)
  {
    v75 = v64;
    roEnqueueDictionaryPayload_cold_9();
    goto LABEL_74;
  }

  v65 = (v22 - 1);
  if (v22 != 1)
  {
    v66 = v20;
    do
    {
      v67 = *v66;
      v66 = (v66 + 20);
      *(v67 + 12) = 1;
      --v65;
    }

    while (v65);
  }

  if (a4)
  {
    v68 = FigRemoteQueueSenderResetIfFullAndEnqueueSequence(v58, v20, v22, a5);
  }

  else
  {
    v68 = FigRemoteQueueSenderEnqueueSequence(v58, v20, v22);
  }

  v75 = v68;
  if (v68)
  {
    roEnqueueDictionaryPayload_cold_10(v68);
LABEL_74:
    if (v91)
    {
      CFRelease(v91);
    }

    goto LABEL_56;
  }

  v69 = *(Context + 8);
  if (v69)
  {
    CFRelease(v69);
  }

  v75 = 0;
  *(Context + 8) = v91;
  v91 = 0;
LABEL_56:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v22)
  {
    v70 = v22;
    do
    {
      v71 = *v20;
      if (*v20)
      {
        if (v75)
        {
          if (v71[4] == v71)
          {
            v72 = 5;
          }

          else
          {
            v72 = 6;
          }

          FigSharedMemBlockRelease(v71[v72]);
          v71[5] = 0;
          v71[6] = 0;
        }

        else
        {
          Region = FigSharedMemBlockGetRegion(v71[5]);
          if (Region)
          {
            CFRelease(Region);
          }
        }

        CFAllocatorDeallocate(a1, v71);
      }

      v20 += 20;
      --v70;
    }

    while (v70);
  }

  if (Context)
  {
    FigSimpleMutexUnlock();
  }

  return v75;
}

uint64_t roDeserializeDictionaryPayload(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a2)
  {
    FigSimpleMutexLock();
    NameForCache = roSerializationContextGetNameForCache(a2, *(v3 + 24));
    if (*(v3 + 4) == 1)
    {
      v7 = NameForCache;
      v8 = *(a2 + 72);
      if (!v8)
      {
        value = 0;
        v11 = roDeserializePropertyListData(v3, *(v3 + 12) != 0, &value);
        if (v11)
        {
          SampleBufferFromSerializedAtomBlockBufferAndSurface = v11;
          roDeserializeDictionaryPayload_cold_7(v11, &value);
          goto LABEL_36;
        }

        *(a2 + 72) = *(v3 + 4);
        *(a2 + 76) = *(a1 + 4);
        *(a2 + 80) = *(v3 + 16);
        if (v7)
        {
          v12 = CFRetain(v7);
        }

        else
        {
          v12 = 0;
        }

        v15 = value;
        *(a2 + 88) = v12;
        *(a2 + 96) = v15;
        goto LABEL_30;
      }

      v9 = *(v3 + 8);
      if (v9 <= 2)
      {
        if (v9 < 2)
        {
          SampleBufferFromSerializedAtomBlockBufferAndSurface = 4294950633;
LABEL_36:
          FigSimpleMutexUnlock();
          return SampleBufferFromSerializedAtomBlockBufferAndSurface;
        }

        if (v9 == 2)
        {
          CFDictionarySetValue(*(a2 + 96), NameForCache, a1[1]);
LABEL_30:
          v8 = *(a2 + 72);
        }

LABEL_31:
        if (v8 != 1)
        {
          roDeserializeDictionaryPayload_cold_8();
        }

        if (*(v3 + 12))
        {
          SampleBufferFromSerializedAtomBlockBufferAndSurface = 36;
        }

        else
        {
          SampleBufferFromSerializedAtomBlockBufferAndSurface = 0;
        }

        goto LABEL_36;
      }

      if (v9 == 3)
      {
        cf = 0;
        value = 0;
        BlockBufferWrapper = roCreateBlockBufferWrapper(v3, &cf);
        if (BlockBufferWrapper)
        {
          SampleBufferFromSerializedAtomBlockBufferAndSurface = BlockBufferWrapper;
          roDeserializeDictionaryPayload_cold_5();
          goto LABEL_36;
        }

        SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (SampleBufferFromSerializedAtomBlockBufferAndSurface)
        {
          roDeserializeDictionaryPayload_cold_6(SampleBufferFromSerializedAtomBlockBufferAndSurface);
          goto LABEL_36;
        }

LABEL_29:
        CFDictionarySetValue(*(a2 + 96), v7, value);
        CFRelease(value);
        goto LABEL_30;
      }

      if (v9 != 4)
      {
        goto LABEL_31;
      }

      cf = 0;
      value = 0;
      v13 = 48;
      if (*(v3 + 32) == v3)
      {
        v13 = 40;
      }

      if (*(v3 + v13))
      {
        v14 = roDeserializePropertyListData(v3, 0, &cf);
        if (v14)
        {
          SampleBufferFromSerializedAtomBlockBufferAndSurface = v14;
          roDeserializeDictionaryPayload_cold_2();
          goto LABEL_36;
        }

        SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateFormatDescriptionFromSerializedDictionary();
        if (cf)
        {
          CFRelease(cf);
        }

        if (SampleBufferFromSerializedAtomBlockBufferAndSurface)
        {
          roDeserializeDictionaryPayload_cold_3(SampleBufferFromSerializedAtomBlockBufferAndSurface);
          goto LABEL_36;
        }

        goto LABEL_29;
      }

      roDeserializeDictionaryPayload_cold_4();
    }

    else
    {
      roDeserializeDictionaryPayload_cold_1(NameForCache);
    }

    SampleBufferFromSerializedAtomBlockBufferAndSurface = 4294950629;
    goto LABEL_36;
  }

  roSerializationContextGetNameForCache(0, *(v3 + 24));
  fig_log_get_emitter();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, cf, value, v20, v21, v22, v23);
  return 4294950629;
}

void roCleanupDictionaryPayloadOperation(uint64_t a1)
{
  if (*a1 != 1)
  {
    roCleanupDictionaryPayloadOperation_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }
}

void roCommonCleanupMessageData(void *a1)
{
  if (a1)
  {
    v2 = 6;
    if (a1[4] == a1)
    {
      v2 = 5;
    }

    FigSharedMemBlockRelease(a1[v2]);
    a1[5] = 0;
    a1[6] = 0;
  }
}

uint64_t roEnqueueIOSurface(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  Context = FigRemoteQueueSenderGetContext(a3);
  v11 = Context;
  if (Context)
  {
    Context = FigSimpleMutexLock();
  }

  if (*a2 != 2)
  {
    roEnqueueIOSurface_cold_1(Context);
    v21 = 4294950629;
    goto LABEL_26;
  }

  v12 = MEMORY[0x1B26EDEF0](a1, 64, 0x1000040FA0F61DDLL, 0);
  if (!v12)
  {
    roEnqueueIOSurface_cold_5();
    v21 = 4294950630;
    goto LABEL_26;
  }

  v13 = v12;
  v14 = *(a2 + 32);
  v27[0] = v12;
  v27[1] = v14;
  v28 = *(a2 + 4);
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  v15 = *(a2 + 16);
  *(v12 + 16) = *(a2 + 8);
  *v12 = 0x2726D6F70;
  *(v12 + 32) = v12;
  *(v12 + 24) = roSerializationContextGetCacheForName(v11, a1, v15);
  v16 = *(a2 + 24);
  if (v16 && (v17 = roSerializePropertyListData(a1, v16, v13), v17))
  {
    v21 = v17;
    roEnqueueIOSurface_cold_2();
  }

  else
  {
    v18 = 1;
    if (!*(a2 + 40))
    {
      goto LABEL_10;
    }

    *(v13 + 12) = 1;
    v19 = MEMORY[0x1B26EDEF0](a1, 64, 0x1000040FA0F61DDLL, 0);
    if (v19)
    {
      v29 = v19;
      v30 = *(a2 + 40);
      v18 = 2;
      v31 = 2;
      v19[2] = 0u;
      v19[3] = 0u;
      *v19 = 0u;
      v19[1] = 0u;
      *v19 = 0x2726D6F70;
      *(v19 + 2) = *(a2 + 8);
LABEL_10:
      if (a4)
      {
        v20 = FigRemoteQueueSenderResetIfFullAndEnqueueSequence(a3, v27, v18, a5);
      }

      else
      {
        v20 = FigRemoteQueueSenderEnqueueSequence(a3, v27, v18);
      }

      v21 = v20;
      if (v20)
      {
        roEnqueueIOSurface_cold_4(v20);
      }

      goto LABEL_15;
    }

    roEnqueueIOSurface_cold_3();
    v21 = 4294950630;
  }

  v18 = 1;
LABEL_15:
  v22 = v27;
  do
  {
    v23 = *v22;
    if (*v22)
    {
      if (v21)
      {
        if (v23[4] == v23)
        {
          v24 = 5;
        }

        else
        {
          v24 = 6;
        }

        FigSharedMemBlockRelease(v23[v24]);
        v23[5] = 0;
        v23[6] = 0;
      }

      else
      {
        Region = FigSharedMemBlockGetRegion(v23[5]);
        if (Region)
        {
          CFRelease(Region);
        }
      }

      CFAllocatorDeallocate(a1, v23);
    }

    v22 = (v22 + 20);
    --v18;
  }

  while (v18);
LABEL_26:
  if (v11)
  {
    FigSimpleMutexUnlock();
  }

  return v21;
}

uint64_t roDeserializeIOSurface(uint64_t *a1, void *a2)
{
  if (a2)
  {
    v5 = *a1;
    v6 = FigSimpleMutexLock();
    v8 = a1 + 1;
    v7 = a1[1];
    if (v7)
    {
      if (*(a2 + 18))
      {
        if (a2[14])
        {
          roDeserializeIOSurface_cold_1(a1 + 1, &v17);
          v7 = v17;
        }

        a2[14] = v7;
LABEL_14:
        *v8 = 0;
        if (*(a2 + 18) != 2)
        {
          roDeserializeIOSurface_cold_4();
        }

        if (*(v5 + 12))
        {
          v9 = 36;
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_19;
      }

      v10 = roDeserializePropertyListData(v5, 0, a2 + 12);
      if (!v10)
      {
        v11 = *(a1 + 4);
        *(a2 + 18) = *(v5 + 4);
        *(a2 + 19) = v11;
        v12 = *(v5 + 24);
        a2[10] = *(v5 + 16);
        NameForCache = roSerializationContextGetNameForCache(a2, v12);
        if (NameForCache)
        {
          NameForCache = CFRetain(NameForCache);
        }

        a2[11] = NameForCache;
        if (a2[13])
        {
          roDeserializeIOSurface_cold_3();
        }

        a2[13] = *v8;
        goto LABEL_14;
      }

      v9 = v10;
      roDeserializeIOSurface_cold_2();
    }

    else
    {
      roDeserializeIOSurface_cold_5(v6);
      v9 = 4294950629;
    }

LABEL_19:
    FigSimpleMutexUnlock();
    return v9;
  }

  fig_log_get_emitter();
  v15 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v2, v16, v17, v18, v19, v20, v21);
  return 4294950629;
}

void roCleanupIOSurfaceOperation(uint64_t a1)
{
  if (*a1 != 2)
  {
    roCleanupIOSurfaceOperation_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 40) = 0;
  }
}

uint64_t roEnqueueSampleBuffer(const char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v72 = 0;
  v73 = 0;
  v7 = *(a2 + 24);
  v70 = 0;
  v71 = 0;
  v8 = *(a2 + 4);
  if (v8 >= 3)
  {
    roEnqueueSampleBuffer_cold_4();
    v26 = 0;
    Context = 0;
    goto LABEL_30;
  }

  v12 = v5;
  Context = FigRemoteQueueSenderGetContext(a3);
  if (Context)
  {
    FigSimpleMutexLock();
  }

  v15 = *(Context + 8);
  if (v15)
  {
    v15 = CFRetain(v15);
  }

  v70 = v15;
  v16 = *(a2 + 32);
  if (!v16)
  {
    v16 = *(Context + 8 * v8 + 24);
  }

  v69 = 0;
  if (!v7)
  {
    if (*a2 == 3 || *a2 == 6)
    {
      emitter = fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< FigRemoteOperation >>>> Fig", "sbuf", "bail", 0, "FigRemoteOperation.c", 901, 0);
LABEL_29:
      v26 = 0;
LABEL_30:
      v27 = 4294950629;
      goto LABEL_66;
    }

LABEL_28:
    v25 = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v25, "<<<< FigRemoteOperation >>>> Fig", "op->opType == kFigRemoteOperationType_SampleBuffer || op->opType == kFigRemoteOperationType_SampleBuffer_v2", "bail", 0, "FigRemoteOperation.c", 900, 0);
    goto LABEL_29;
  }

  v67 = a4;
  DataBuffer = CMSampleBufferGetDataBuffer(v7);
  if (DataBuffer)
  {
    v18 = DataBuffer;
    DataLength = CMBlockBufferGetDataLength(DataBuffer);
    v19 = CMGetAttachment(v18, *MEMORY[0x1E695FF60], 0);
    ImageBuffer = 0;
    if (!*(a2 + 32) && v16 >= 0x21)
    {
      if (DataLength)
      {
        ImageBuffer = *(Context + 8 * v8 + 48);
        if (ImageBuffer)
        {
          v21 = (DataLength / ImageBuffer);
          ImageBuffer = 0;
          if (v21 < 0.8)
          {
            v16 = 32;
          }
        }
      }
    }
  }

  else
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(v7);
    v19 = 0;
    DataLength = 0;
  }

  if (*a2 != 3)
  {
    if (*a2 == 6)
    {
      v64 = a5;
      v66 = a3;
      if (ImageBuffer | v19)
      {
        v61 = v16;
        v62 = v5;
        v63 = a1;
        v23 = *(a2 + 40);
        if (ImageBuffer)
        {
          v24 = ImageBuffer;
        }

        else
        {
          v24 = v19;
        }

        if (v23)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      goto LABEL_46;
    }

    goto LABEL_28;
  }

  v64 = a5;
  v66 = a3;
  if (ImageBuffer | v19)
  {
    v61 = v16;
    v62 = v5;
    v63 = a1;
    if (ImageBuffer)
    {
      v24 = ImageBuffer;
    }

    else
    {
      v24 = v19;
    }

LABEL_35:
    v23 = CFArrayCreate(*MEMORY[0x1E695E480], off_1E798A3C8, 1, MEMORY[0x1E695E9C0]);
    CFAutorelease(v23);
LABEL_36:
    Count = CFArrayGetCount(v23);
    v60 = &v59;
    v29 = 8 * Count;
    MEMORY[0x1EEE9AC00](Count, v30, v31, v32);
    v33 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
    v34 = (&v59 - v33);
    if (v29 >= 0x200)
    {
      v35 = 512;
    }

    else
    {
      v35 = v29;
    }

    bzero(&v59 - v33, v35);
    MEMORY[0x1EEE9AC00](v36, v37, v38, v39);
    v40 = &v59 - v33;
    bzero(v40, v35);
    v41 = CFArrayGetCount(v23);
    v65 = v8;
    if (v41 < 1)
    {
      v43 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v23, v42);
        v45 = CVBufferCopyAttachment(v24, ValueAtIndex, 0);
        if (v45)
        {
          v46 = CFAutorelease(v45);
          if (v46)
          {
            v34[v43] = ValueAtIndex;
            *&v40[8 * v43++] = v46;
          }
        }

        ++v42;
      }

      while (v42 < CFArrayGetCount(v23));
    }

    v47 = CFDictionaryCreate(*MEMORY[0x1E695E480], v34, v40, v43, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v12 = v62;
    a1 = v63;
    goto LABEL_49;
  }

LABEL_46:
  v65 = v8;
  v47 = 0;
LABEL_49:
  v48 = roReplaceFlatDictionaryAttachments(v7, a1, &v71);
  v58 = &v70;
  SerializedAtomDataAndSurfaceForSampleBuffer = FigRemote_CreateSerializedAtomDataAndSurfaceForSampleBuffer();
  if (SerializedAtomDataAndSurfaceForSampleBuffer)
  {
    v27 = SerializedAtomDataAndSurfaceForSampleBuffer;
    roEnqueueSampleBuffer_cold_1();
    v26 = 0;
  }

  else
  {
    v50 = MEMORY[0x1B26EDEF0](a1, 8 * v48 + 68, 0x100004069DB8102, 0);
    v26 = v50;
    if (v50)
    {
      *(v50 + 64) = 0;
      *(v50 + 32) = 0u;
      *(v50 + 48) = 0u;
      *v50 = 0u;
      *(v50 + 16) = 0u;
      v74 = v50;
      v75 = v73;
      v76 = *(a2 + 4);
      *v50 = 0x3726D6F70;
      v51 = *(a2 + 16);
      *(v50 + 16) = *(a2 + 8);
      *(v50 + 32) = v50;
      *(v50 + 24) = roSerializationContextGetCacheForName(Context, a1, v51);
      *(v26 + 40) = FigSharedMemBlockRetain(v72);
      *(v26 + 56) = v69;
      RemoteAddress = FigSharedMemBlockGetRemoteAddress(v72);
      *(v26 + 48) = RemoteAddress;
      *(v26 + 64) = v48;
      if (v48)
      {
        memcpy((v26 + 68), v71, 8 * v48);
      }

      if (!RemoteAddress)
      {
        roEnqueueSampleBuffer_cold_2();
      }

      if (v67)
      {
        v53 = FigRemoteQueueSenderResetIfFullAndEnqueueSequence(v66, &v74, 1uLL, v64);
      }

      else
      {
        v53 = FigRemoteQueueSenderEnqueueSequence(v66, &v74, 1uLL);
      }

      v27 = v53;
      if (v53)
      {
        if (v53 != -16669)
        {
          fig_log_get_emitter();
          LODWORD(v58) = v27;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v58, v12, v59, v60, v61, v62, v63, v64);
        }
      }

      else
      {
        v54 = v65;
        if (*(Context + 24 + 8 * v65) != v69)
        {
          *(Context + 24 + 8 * v65) = v69;
          *(Context + 8 * v54 + 48) = DataLength;
        }

        v55 = *(Context + 8);
        if (v55)
        {
          CFRelease(v55);
        }

        v27 = 0;
        *(Context + 8) = v70;
        v70 = 0;
      }
    }

    else
    {
      roEnqueueSampleBuffer_cold_3();
      v27 = 4294950630;
    }
  }

  if (v47)
  {
    CFRelease(v47);
  }

LABEL_66:
  if (v70)
  {
    CFRelease(v70);
  }

  if (v71)
  {
    CFAllocatorDeallocate(*MEMORY[0x1E695E480], v71);
  }

  if (v26)
  {
    if (v27)
    {
      roCleanupSampleBufferMessageData(v26);
    }

    else
    {
      Region = FigSharedMemBlockGetRegion(v72);
      if (Region)
      {
        CFRelease(Region);
      }
    }

    CFAllocatorDeallocate(a1, v26);
  }

  CFAllocatorDeallocate(a1, v72);
  if (Context)
  {
    FigSimpleMutexUnlock();
  }

  return v27;
}

uint64_t roDeserializeSampleBuffer(uint64_t *a1, void *a2)
{
  if (a2)
  {
    v5 = *a1;
    v6 = FigSimpleMutexLock();
    cf = 0;
    if (*(v5 + 4) == 3)
    {
      BlockBufferWrapper = roCreateBlockBufferWrapper(v5, &cf);
      if (BlockBufferWrapper)
      {
        v12 = BlockBufferWrapper;
        roDeserializeSampleBuffer_cold_2();
      }

      else
      {
        SampleBufferFromSerializedAtomBlockBufferAndSurface = FigRemote_CreateSampleBufferFromSerializedAtomBlockBufferAndSurface();
        if (SampleBufferFromSerializedAtomBlockBufferAndSurface)
        {
          v12 = SampleBufferFromSerializedAtomBlockBufferAndSurface;
          roDeserializeSampleBuffer_cold_3();
        }

        else
        {
          roRebuildFlatDictionaryAttachments(a2[12]);
          v9 = *(a1 + 4);
          *(a2 + 18) = *(v5 + 4);
          *(a2 + 19) = v9;
          v10 = *(v5 + 24);
          a2[10] = *(v5 + 16);
          NameForCache = roSerializationContextGetNameForCache(a2, v10);
          if (NameForCache)
          {
            NameForCache = CFRetain(NameForCache);
          }

          v12 = 0;
          a2[11] = NameForCache;
        }
      }
    }

    else
    {
      roDeserializeSampleBuffer_cold_1(v6);
      v12 = 4294950629;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    fig_log_get_emitter();
    v14 = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v2, v15, cf, v17, v18, v19, v20);
    return 4294950629;
  }

  return v12;
}

void roCleanupSampleBufferOperation(uint64_t a1)
{
  if (*a1 != 3)
  {
    roCleanupSampleBufferOperation_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

void roCleanupSampleBufferMessageData(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    v3 = v2 == a1;
    if (v2 == a1)
    {
      v4 = 40;
    }

    else
    {
      v4 = 48;
    }

    v5 = *(a1 + v4);
    if (v3 && *(a1 + 64) >= 1)
    {
      v6 = 0;
      v7 = a1 + 68;
      do
      {
        Region = FigSharedMemBlockGetRegion(*(v7 + 8 * v6));
        if (Region)
        {
          CFRetain(Region);
        }

        FigSharedMemBlockRelease(*(v7 + 8 * v6++));
      }

      while (v6 < *(a1 + 64));
    }

    FigSharedMemBlockRelease(v5);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }
}

uint64_t roEnqueueFormatDescription(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  Context = FigRemoteQueueSenderGetContext(a3);
  v11 = Context;
  if (Context)
  {
    Context = FigSimpleMutexLock();
  }

  if (*a2 != 4)
  {
    roEnqueueFormatDescription_cold_1(Context);
LABEL_26:
    v13 = 0;
    v18 = 4294950629;
    goto LABEL_13;
  }

  if (!*(a2 + 24))
  {
    roEnqueueFormatDescription_cold_6(Context);
    goto LABEL_26;
  }

  v12 = MEMORY[0x1B26EDEF0](a1, 64, 0x1000040FA0F61DDLL, 0);
  v13 = v12;
  if (v12)
  {
    v22 = v12;
    v23 = 0;
    v24 = *(a2 + 4);
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    v14 = *(a2 + 16);
    *(v12 + 16) = *(a2 + 8);
    *v12 = 0x4726D6F70;
    *(v12 + 32) = v12;
    *(v12 + 24) = roSerializationContextGetCacheForName(v11, a1, v14);
    SerializableDictionaryForFormatDescription = FigRemote_CreateSerializableDictionaryForFormatDescription();
    if (SerializableDictionaryForFormatDescription)
    {
      v18 = SerializableDictionaryForFormatDescription;
      roEnqueueFormatDescription_cold_2();
    }

    else
    {
      v16 = roSerializePropertyListData(a1, 0, v13);
      if (v16)
      {
        v18 = v16;
        roEnqueueFormatDescription_cold_3();
      }

      else
      {
        if (a4)
        {
          v17 = FigRemoteQueueSenderResetIfFullAndEnqueueSequence(a3, &v22, 1uLL, a5);
        }

        else
        {
          v17 = FigRemoteQueueSenderEnqueueSequence(a3, &v22, 1uLL);
        }

        v18 = v17;
        if (v17)
        {
          roEnqueueFormatDescription_cold_4(v17);
        }
      }
    }
  }

  else
  {
    roEnqueueFormatDescription_cold_5();
    v18 = 4294950630;
  }

LABEL_13:
  if (v13)
  {
    if (v18)
    {
      v19 = 6;
      if (v13[4] == v13)
      {
        v19 = 5;
      }

      FigSharedMemBlockRelease(v13[v19]);
      v13[5] = 0;
      v13[6] = 0;
    }

    else
    {
      Region = FigSharedMemBlockGetRegion(v13[5]);
      if (Region)
      {
        CFRelease(Region);
      }
    }

    CFAllocatorDeallocate(a1, v13);
  }

  if (v11)
  {
    FigSimpleMutexUnlock();
  }

  return v18;
}

uint64_t roDeserializeFormatDescription(uint64_t *a1, void *a2)
{
  v4 = *a1;
  cf = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v15, cf, v17, v18, v19, v20);
LABEL_12:
    v13 = 4294950629;
    goto LABEL_13;
  }

  v6 = FigSimpleMutexLock();
  if (*(v4 + 4) != 4)
  {
    roDeserializeFormatDescription_cold_1(v6);
    goto LABEL_12;
  }

  v7 = 48;
  if (*(v4 + 32) == v4)
  {
    v7 = 40;
  }

  if (!*(v4 + v7))
  {
    roDeserializeFormatDescription_cold_4(v6);
    goto LABEL_12;
  }

  v8 = roDeserializePropertyListData(v4, 0, &cf);
  if (v8)
  {
    v13 = v8;
    roDeserializeFormatDescription_cold_2();
  }

  else
  {
    FormatDescriptionFromSerializedDictionary = FigRemote_CreateFormatDescriptionFromSerializedDictionary();
    if (FormatDescriptionFromSerializedDictionary)
    {
      v13 = FormatDescriptionFromSerializedDictionary;
      roDeserializeFormatDescription_cold_3();
    }

    else
    {
      v10 = *(a1 + 4);
      *(a2 + 18) = *(v4 + 4);
      *(a2 + 19) = v10;
      v11 = *(v4 + 24);
      a2[10] = *(v4 + 16);
      NameForCache = roSerializationContextGetNameForCache(a2, v11);
      if (NameForCache)
      {
        NameForCache = CFRetain(NameForCache);
      }

      v13 = 0;
      a2[11] = NameForCache;
    }
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a2)
  {
    FigSimpleMutexUnlock();
  }

  return v13;
}

void roCleanupFormatDescriptionOperation(uint64_t a1)
{
  if (*a1 != 4)
  {
    roCleanupFormatDescriptionOperation_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }
}

uint64_t roEnqueueConfigurationLive(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  Context = FigRemoteQueueSenderGetContext(a3);
  v11 = Context;
  if (Context)
  {
    Context = FigSimpleMutexLock();
  }

  if (*a2 != 5)
  {
    roEnqueueConfigurationLive_cold_1(Context);
LABEL_26:
    v13 = 0;
    v18 = 4294950629;
    goto LABEL_13;
  }

  if (!*(a2 + 24))
  {
    roEnqueueConfigurationLive_cold_6(Context);
    goto LABEL_26;
  }

  v12 = MEMORY[0x1B26EDEF0](a1, 72, 0x1000040FF89C88ELL, 0);
  v13 = v12;
  if (v12)
  {
    v22 = v12;
    v23 = 0;
    v24 = *(a2 + 4);
    *(v12 + 64) = 0;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    v14 = *(a2 + 16);
    *(v12 + 16) = *(a2 + 8);
    *v12 = 0x5726D6F70;
    *(v12 + 32) = v12;
    *(v12 + 24) = roSerializationContextGetCacheForName(v11, a1, v14);
    v13[8] = *(a2 + 24);
    SerializableDictionaryForFormatDescription = FigRemote_CreateSerializableDictionaryForFormatDescription();
    if (SerializableDictionaryForFormatDescription)
    {
      v18 = SerializableDictionaryForFormatDescription;
      roEnqueueConfigurationLive_cold_2();
    }

    else
    {
      v16 = roSerializePropertyListData(a1, 0, v13);
      if (v16)
      {
        v18 = v16;
        roEnqueueConfigurationLive_cold_3();
      }

      else
      {
        if (a4)
        {
          v17 = FigRemoteQueueSenderResetIfFullAndEnqueueSequence(a3, &v22, 1uLL, a5);
        }

        else
        {
          v17 = FigRemoteQueueSenderEnqueueSequence(a3, &v22, 1uLL);
        }

        v18 = v17;
        if (v17)
        {
          roEnqueueConfigurationLive_cold_4(v17);
        }
      }
    }
  }

  else
  {
    roEnqueueConfigurationLive_cold_5();
    v18 = 4294950630;
  }

LABEL_13:
  if (v13)
  {
    if (v18)
    {
      v19 = 6;
      if (v13[4] == v13)
      {
        v19 = 5;
      }

      FigSharedMemBlockRelease(v13[v19]);
      v13[5] = 0;
      v13[6] = 0;
    }

    else
    {
      Region = FigSharedMemBlockGetRegion(v13[5]);
      if (Region)
      {
        CFRelease(Region);
      }
    }

    CFAllocatorDeallocate(a1, v13);
  }

  if (v11)
  {
    FigSimpleMutexUnlock();
  }

  return v18;
}

uint64_t roDeserializeConfigurationLive(uint64_t *a1, void *a2)
{
  v4 = *a1;
  cf = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v15, cf, v17, v18, v19, v20);
LABEL_12:
    v13 = 4294950629;
    goto LABEL_13;
  }

  v6 = FigSimpleMutexLock();
  if (*(v4 + 4) != 5)
  {
    roDeserializeConfigurationLive_cold_1(v6);
    goto LABEL_12;
  }

  v7 = 48;
  if (*(v4 + 32) == v4)
  {
    v7 = 40;
  }

  if (!*(v4 + v7))
  {
    roDeserializeConfigurationLive_cold_4(v6);
    goto LABEL_12;
  }

  a2[12] = *(v4 + 64);
  v8 = roDeserializePropertyListData(v4, 0, &cf);
  if (v8)
  {
    v13 = v8;
    roDeserializeConfigurationLive_cold_2();
  }

  else
  {
    FormatDescriptionFromSerializedDictionary = FigRemote_CreateFormatDescriptionFromSerializedDictionary();
    if (FormatDescriptionFromSerializedDictionary)
    {
      v13 = FormatDescriptionFromSerializedDictionary;
      roDeserializeConfigurationLive_cold_3();
    }

    else
    {
      v10 = *(a1 + 4);
      *(a2 + 18) = *(v4 + 4);
      *(a2 + 19) = v10;
      v11 = *(v4 + 24);
      a2[10] = *(v4 + 16);
      NameForCache = roSerializationContextGetNameForCache(a2, v11);
      if (NameForCache)
      {
        NameForCache = CFRetain(NameForCache);
      }

      v13 = 0;
      a2[11] = NameForCache;
    }
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a2)
  {
    FigSimpleMutexUnlock();
  }

  return v13;
}

void roCleanupConfigurationLiveOperation(uint64_t a1)
{
  if (*a1 != 5)
  {
    roCleanupConfigurationLiveOperation_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }
}

uint64_t roSerializationContextGetCacheForName(uint64_t a1, uint64_t a2, const __CFString *key)
{
  if (!key)
  {
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), key);
  if (Value)
  {
    return FigSharedMemBlockGetRemoteAddress(Value);
  }

  Length = CFStringGetLength(key);
  maxBufLen = 0;
  v10.location = 0;
  v10.length = Length;
  if (CFStringGetBytes(key, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen) != Length)
  {
    roSerializationContextGetCacheForName_cold_1();
LABEL_7:
    Value = 0;
    return FigSharedMemBlockGetRemoteAddress(Value);
  }

  Value = MEMORY[0x1B26EDEF0](a2, maxBufLen + 1, 3429896143, 0);
  if (Value)
  {
    v11.location = 0;
    v11.length = Length;
    CFStringGetBytes(key, v11, 0x8000100u, 0, 0, Value, maxBufLen, 0);
    Value[maxBufLen] = 0;
    CFDictionarySetValue(*(a1 + 16), key, Value);
  }

  else
  {
    roSerializationContextGetCacheForName_cold_2();
  }

  return FigSharedMemBlockGetRemoteAddress(Value);
}

CFIndex roSerializePropertyListData(const __CFAllocator *a1, const void *a2, void *a3)
{
  error = 0;
  if (!a2)
  {
    roSerializePropertyListData_cold_4(a1, 0, a3);
    return 4294950629;
  }

  if (!a3)
  {
    roSerializePropertyListData_cold_3(a1);
    return 4294950629;
  }

  v4 = CFPropertyListCreateData(a1, a2, kCFPropertyListBinaryFormat_v1_0, 0, &error);
  if (v4)
  {
    goto LABEL_8;
  }

  if (!error)
  {
    Code = 4294962336;
LABEL_13:
    roSerializePropertyListData_cold_2(Code);
    return Code;
  }

  v5 = CFErrorCopyFailureReason(error);
  Code = CFErrorGetCode(error);
  if (v5)
  {
    CFRelease(v5);
  }

  CFRelease(error);
  if (Code)
  {
    goto LABEL_13;
  }

LABEL_8:
  BytePtr = CFDataGetBytePtr(v4);
  RemoteAddress = FigSharedMemBlockGetRemoteAddress(BytePtr);
  a3[6] = RemoteAddress;
  if (!RemoteAddress)
  {
    roSerializePropertyListData_cold_1();
    Code = 4294950632;
    if (!v4)
    {
      return Code;
    }

    goto LABEL_10;
  }

  a3[5] = BytePtr;
  a3[7] = CFDataGetLength(v4);
  FigSharedMemBlockRetain(BytePtr);
  Code = 0;
  if (v4)
  {
LABEL_10:
    CFRelease(v4);
  }

  return Code;
}

const void *roSerializationContextGetNameForCache(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  if (!Value)
  {
    Value = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
    if (Value)
    {
      CFDictionarySetValue(*(a1 + 16), a2, Value);
      CFRelease(Value);
    }

    else
    {
      roSerializationContextGetNameForCache_cold_1();
    }
  }

  return Value;
}

CFIndex roDeserializePropertyListData(uint64_t a1, CFOptionFlags a2, CFPropertyListRef *a3)
{
  error = 0;
  v3 = 48;
  if (*(a1 + 32) == a1)
  {
    v3 = 40;
  }

  if (!a3)
  {
    roDeserializePropertyListData_cold_3();
    return 4294950629;
  }

  v6 = *(a1 + v3);
  if (!v6)
  {
    Code = 0;
    *a3 = 0;
    return Code;
  }

  v7 = *MEMORY[0x1E695E480];
  v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v6, *(a1 + 56), *MEMORY[0x1E695E498]);
  if (!v8)
  {
    roDeserializePropertyListData_cold_2();
    return 4294950630;
  }

  v9 = v8;
  *a3 = CFPropertyListCreateWithData(v7, v8, a2, 0, &error);
  CFRelease(v9);
  if (*a3)
  {
    return 0;
  }

  if (!error)
  {
    Code = 4294962336;
LABEL_14:
    roDeserializePropertyListData_cold_1(Code);
    return Code;
  }

  v11 = CFErrorCopyFailureReason(error);
  Code = CFErrorGetCode(error);
  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(error);
  if (Code)
  {
    goto LABEL_14;
  }

  return Code;
}

uint64_t roCreateBlockBufferWrapper(uint64_t a1, CMBlockBufferRef *blockBufferOut)
{
  v2 = 48;
  if (*(a1 + 32) == a1)
  {
    v2 = 40;
  }

  v3 = *(a1 + v2);
  if (v3)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = *(a1 + 56);
    if (roGetShmemDeallocator_once != -1)
    {
      roCreateBlockBufferWrapper_cold_1();
    }

    v8 = CMBlockBufferCreateWithMemoryBlock(v6, v3, v7, roGetShmemDeallocator_shmemDeallocator, 0, 0, *(a1 + 56), 0, blockBufferOut);
    v9 = v8;
    if (v8)
    {
      roCreateBlockBufferWrapper_cold_2(v8);
    }

    else
    {
      FigSharedMemBlockRetain(v3);
    }
  }

  else
  {
    roCreateBlockBufferWrapper_cold_3();
    return 4294950629;
  }

  return v9;
}

CFAllocatorRef __roGetShmemDeallocator_block_invoke()
{
  result = FigSharedMemPoolAllocatorCreate(*MEMORY[0x1E695E480], 0);
  roGetShmemDeallocator_shmemDeallocator = result;
  return result;
}

const __CFDictionary *roReplaceFlatDictionaryAttachments(CMAttachmentBearerRef target, const __CFAllocator *a2, uint64_t *a3)
{
  v54 = *MEMORY[0x1E695E480];
  result = CMCopyDictionaryOfAttachments(v54, target, 1u);
  if (result)
  {
    v7 = result;
    Count = CFDictionaryGetCount(result);
    v52 = &v47;
    MEMORY[0x1EEE9AC00](Count, v9, v10, v11);
    v12 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v13 = (&v47 - v12);
    if ((8 * Count) >= 0x200)
    {
      v14 = 512;
    }

    else
    {
      v14 = 8 * Count;
    }

    bzero(&v47 - v12, v14);
    MEMORY[0x1EEE9AC00](v15, v16, v17, v18);
    v19 = (&v47 - v12);
    bzero(&v47 - v12, v14);
    v53 = v7;
    CFDictionaryGetKeysAndValues(v7, (&v47 - v12), (&v47 - v12));
    if (Count >= 1)
    {
      v51 = a3;
      v55 = 0;
      v20 = *off_1E798D2F8;
      v56 = *off_1E798D2F0;
      v21 = target;
      v49 = v20;
      v50 = a2;
      v48 = target;
      while (1)
      {
        v22 = CFGetTypeID(*v19);
        if (v22 != CFDictionaryGetTypeID())
        {
          goto LABEL_31;
        }

        value = 0;
        v60 = 0;
        if (!CFDictionaryGetValueIfPresent(*v19, v20, &value) || !CFDictionaryGetValueIfPresent(*v19, v56, &v60))
        {
          goto LABEL_31;
        }

        v23 = CFGetTypeID(v60);
        if (v23 != FigFlatDictionaryGetTypeID())
        {
          v28 = 0;
          goto LABEL_18;
        }

        LODWORD(valuePtr) = 0;
        BackingPointer = FigFlatDictionaryGetBackingPointer(v60, &valuePtr);
        Region = FigSharedMemBlockGetRegion(BackingPointer);
        Pool = FigSharedMemPoolAllocatorGetPool(a2);
        if (Region == FigSharedMemPoolGetSharedRegion(Pool))
        {
          v29 = FigSharedMemBlockRetain(BackingPointer);
          v28 = v29;
        }

        else
        {
          v27 = MEMORY[0x1B26EDEF0](a2, valuePtr, 1029090712, 0);
          v28 = v27;
          if (!v27)
          {
            goto LABEL_18;
          }

          memcpy(v27, BackingPointer, valuePtr);
          v29 = v28;
        }

        v30 = FigSharedMemBlockGetRegion(v29);
        if (v30)
        {
          CFRelease(v30);
        }

LABEL_18:
        v31 = CFGetTypeID(value);
        if (v31 == FigFlatDictionaryKeySpecGetTypeID())
        {
          BinaryForExport = FigFlatDictionaryKeySpecCreateBinaryForExport(a2, value, 0);
          if (BinaryForExport)
          {
            v33 = BinaryForExport;
            v34 = FigSharedMemBlockGetRegion(BinaryForExport);
            if (v34)
            {
              CFRelease(v34);
            }

            if (v28)
            {
              valuePtr = FigSharedMemBlockGetRemoteAddress(v28);
              RemoteAddress = FigSharedMemBlockGetRemoteAddress(v33);
              v35 = v20;
              v36 = v54;
              Mutable = CFDictionaryCreateMutable(v54, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v38 = CFNumberCreate(v36, kCFNumberLongLongType, &valuePtr);
              CFDictionaryAddValue(Mutable, v56, v38);
              CFRelease(v38);
              v39 = CFNumberCreate(v36, kCFNumberLongLongType, &RemoteAddress);
              CFDictionaryAddValue(Mutable, v35, v39);
              CFRelease(v39);
              v40 = v51;
              v41 = v55;
              v42 = v55 + 2;
              v43 = MEMORY[0x1B26EDF40](v36, *v51, 8 * (v55 + 2), 0x100004000313F17, 0);
              *v40 = v43;
              v44 = (v43 + 8 * v41);
              *v44 = v28;
              v44[1] = v33;
              v45 = v48;
              CMRemoveAttachment(v48, *v13);
              if (Mutable)
              {
                CMSetAttachment(v45, *v13, Mutable, 1u);
                CFRelease(Mutable);
              }

              v55 = v42;
              v20 = v49;
              a2 = v50;
              v21 = v45;
              goto LABEL_31;
            }

            v46 = FigSharedMemBlockGetRegion(v33);
            if (!v46)
            {
              goto LABEL_29;
            }

LABEL_28:
            CFRetain(v46);
LABEL_29:
            FigSharedMemBlockRetain(v33);
            goto LABEL_30;
          }
        }

        if (v28)
        {
          v46 = FigSharedMemBlockGetRegion(v28);
          v33 = v28;
          if (v46)
          {
            goto LABEL_28;
          }

          goto LABEL_29;
        }

LABEL_30:
        CMRemoveAttachment(v21, *v13);
LABEL_31:
        ++v13;
        ++v19;
        if (!--Count)
        {
          goto LABEL_36;
        }
      }
    }

    v55 = 0;
LABEL_36:
    CFRelease(v53);
    return v55;
  }

  return result;
}

void roRebuildFlatDictionaryAttachments(CMAttachmentBearerRef target)
{
  v2 = CMCopyDictionaryOfAttachments(*MEMORY[0x1E695E480], target, 1u);
  if (v2)
  {
    v3 = v2;
    Count = CFDictionaryGetCount(v2);
    MEMORY[0x1EEE9AC00](Count, v5, v6, v7);
    v8 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v9 = (&v24 - v8);
    if ((8 * Count) >= 0x200)
    {
      v10 = 512;
    }

    else
    {
      v10 = 8 * Count;
    }

    bzero(&v24 - v8, v10);
    MEMORY[0x1EEE9AC00](v11, v12, v13, v14);
    v15 = (&v24 - v8);
    bzero(&v24 - v8, v10);
    CFDictionaryGetKeysAndValues(v3, (&v24 - v8), (&v24 - v8));
    if (Count >= 1)
    {
      v16 = *off_1E798D2F8;
      v17 = *off_1E798D2F0;
      do
      {
        v18 = CFGetTypeID(*v15);
        if (v18 == CFDictionaryGetTypeID())
        {
          value = 0;
          v27 = 0;
          if (CFDictionaryGetValueIfPresent(*v15, v16, &value))
          {
            if (CFDictionaryGetValueIfPresent(*v15, v17, &v27))
            {
              v24 = 0;
              valuePtr = 0;
              CFNumberGetValue(v27, kCFNumberLongLongType, &valuePtr);
              CFNumberGetValue(value, kCFNumberLongLongType, &v24);
              v19 = valuePtr;
              if (valuePtr && (v20 = v24) != 0)
              {
                Region = FigSharedMemBlockGetRegion(valuePtr);
                if (Region)
                {
                  CFRetain(Region);
                }

                v22 = FigSharedMemBlockGetRegion(v20);
                if (v22)
                {
                  CFRetain(v22);
                }

                LazyFlatDictionaryWrapper = FigCreateLazyFlatDictionaryWrapper(v19, v20, &__block_literal_global_57);
                CMRemoveAttachment(target, *v9);
                if (LazyFlatDictionaryWrapper)
                {
                  CMSetAttachment(target, *v9, LazyFlatDictionaryWrapper, 1u);
                  CFRelease(LazyFlatDictionaryWrapper);
                }
              }

              else
              {
                CMRemoveAttachment(target, *v9);
              }
            }
          }
        }

        ++v9;
        ++v15;
        --Count;
      }

      while (Count);
    }

    CFRelease(v3);
  }
}

uint64_t __roEnqueue_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 32);
  if (v5 && (*(v5 + 16))(v5, a2, a3, a4))
  {
    return 1;
  }

  v7 = *a4;
  if (v7 && *v7 == 1919774576)
  {
    Region = FigSharedMemBlockGetRegion(*(v7 + 40));
    if (Region)
    {
      CFRetain(Region);
    }

    FigRemoteOperationCleanupMessageData(v7);
  }

  return 0;
}

void roSerializationContextSenderFinalize_block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    FigSimpleMutexLock();
    v3 = a2[1];
    if (v3)
    {
      CFRelease(v3);
      a2[1] = 0;
    }

    Count = CFDictionaryGetCount(a2[2]);
    if (Count)
    {
      v5 = Count;
      v6 = (&v10 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0));
      if ((8 * Count) >= 0x200)
      {
        v7 = 512;
      }

      else
      {
        v7 = 8 * Count;
      }

      bzero(&v10 - ((8 * Count + 15) & 0xFFFFFFFFFFFFFFF0), v7);
      CFDictionaryGetKeysAndValues(a2[2], 0, v6);
      v8 = v6 - 1;
      do
      {
        FigSharedMemBlockRelease(v8[v5--]);
      }

      while (v5);
    }

    v9 = a2[2];
    if (v9)
    {
      CFRelease(v9);
      a2[2] = 0;
    }

    FigSimpleMutexUnlock();
    FigSimpleMutexDestroy();
    free(a2);
  }
}

void roSerializationContextReset_block_invoke_3(uint64_t a1, uint64_t a2)
{
  Context = FigRemoteQueueSenderGetContext(a2);
  if (Context)
  {
    v3 = Context;
    v4 = *(Context + 8);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 8) = 0;
    }
  }
}

id nfrp_createNRFStatisticsFromFrameStatistics(objc_class *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = objc_alloc_init(a1);
  *&v8 = vcvts_n_f32_u32([a2 conversionGain], 0x10uLL);
  [v7 setConversionGain:v8];
  *&v9 = vcvts_n_f32_u32([a2 readNoise_1x], 0x10uLL);
  [v7 setReadNoise_1x:v9];
  *&v10 = vcvts_n_f32_u32([a2 readNoise_8x], 0x10uLL);
  [v7 setReadNoise_8x:v10];
  [a2 integrationTime];
  [v7 setIntegrationTime:?];
  *&v11 = vcvts_n_f32_u32([a2 agc], 8uLL);
  [v7 setAgc:v11];
  *&v12 = vcvts_n_f32_u32([a2 ispDGain], 8uLL);
  [v7 setIspDGain:v12];
  *&v13 = vcvts_n_f32_u32([a2 sensorDGain], 8uLL);
  [v7 setSensorDGain:v13];
  [a2 ispDGainRangeExpansionFactor];
  [v7 setIspDGainRangeExpansionFactor:?];
  [a2 gain];
  [v7 setGain:?];
  [a2 exposureBias];
  *&v14 = v14;
  [v7 setBias:v14];
  [v7 setAeLimitsReached:{objc_msgSend(a2, "aeLimitsReached")}];
  *&v15 = [a2 aeAverage];
  [v7 setAeAverage:v15];
  *&v16 = [a2 aeTarget];
  [v7 setAeTarget:v16];
  [v7 setMotionFromAEMatrix:{objc_msgSend(a2, "motionFromAEMatrix")}];
  [v7 setStationary:a3];
  [a2 motionDataBiasErrorEstimate];
  [v7 setMotionDataBiasErrorEstimate:?];
  if ([a2 aeStatistics])
  {
    [v7 setAeThumbnail:{objc_msgSend(objc_msgSend(a2, "aeStatistics"), "objectForKeyedSubscript:", *off_1E798AA28)}];
    [v7 setAeThumbnailWidth:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "aeStatistics"), "objectForKeyedSubscript:", *off_1E798AA38), "intValue")}];
    [v7 setAeThumbnailHeight:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "aeStatistics"), "objectForKeyedSubscript:", *off_1E798AA30), "intValue")}];
  }

  v17 = [a4 objectForKeyedSubscript:*off_1E798ACB8];
  v18 = *off_1E798ACE8;
  [v7 setNumberOfHumanFaces:{objc_msgSend(objc_msgSend(v17, "objectForKeyedSubscript:", *off_1E798ACE8), "count")}];
  [v7 setNumberOfHumanBodies:{objc_msgSend(objc_msgSend(objc_msgSend(a4, "objectForKeyedSubscript:", *off_1E798ACB0), "objectForKeyedSubscript:", v18), "count")}];
  return v7;
}

uint64_t FusionTrackerLibraryCore(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = FusionTrackerLibraryCore_frameworkLibrary;
  v6 = FusionTrackerLibraryCore_frameworkLibrary;
  if (!FusionTrackerLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7990098;
    v8 = *off_1E79900A8;
    v9 = 0;
    v4[3] = _sl_dlopen();
    FusionTrackerLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1AC9EFB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __FusionTrackerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  FusionTrackerLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FusionTrackerLibrary()
{
  v3 = 0;
  v0 = FusionTrackerLibraryCore(&v3);
  if (!v0)
  {
    FusionTrackerLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getFTCinematicTrackerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTCinematicTrackerClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTCinematicTrackerClass_softClass;
  if (!getFTCinematicTrackerClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTCinematicTrackerClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTCinematicTrackerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9EFD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFTCinematicTrackerClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTCinematicTracker");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTCinematicTrackerClass_block_invoke_cold_1();
  }

  getFTCinematicTrackerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getFTCinematicTapRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTCinematicTapRequestClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTCinematicTapRequestClass_softClass;
  if (!getFTCinematicTapRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTCinematicTapRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTCinematicTapRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9EFE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFTCinematicTapRequestClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTCinematicTapRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTCinematicTapRequestClass_block_invoke_cold_1();
  }

  getFTCinematicTapRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getFTCinematicTapResponseClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTCinematicTapResponseClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTCinematicTapResponseClass_softClass;
  if (!getFTCinematicTapResponseClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTCinematicTapResponseClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTCinematicTapResponseClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9EFF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFTCinematicTapResponseClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTCinematicTapResponse");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTCinematicTapResponseClass_block_invoke_cold_1();
  }

  getFTCinematicTapResponseClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getFTCinematicConfigClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTCinematicConfigClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTCinematicConfigClass_softClass;
  if (!getFTCinematicConfigClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTCinematicConfigClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTCinematicConfigClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F00DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFTCinematicConfigClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTCinematicConfig");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTCinematicConfigClass_block_invoke_cold_1();
  }

  getFTCinematicConfigClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getFTCinematicInputClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTCinematicInputClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTCinematicInputClass_softClass;
  if (!getFTCinematicInputClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTCinematicInputClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTCinematicInputClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F0220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFTCinematicInputClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTCinematicInput");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTCinematicInputClass_block_invoke_cold_1();
  }

  getFTCinematicInputClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getFTTapToBoxClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTTapToBoxClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTTapToBoxClass_softClass;
  if (!getFTTapToBoxClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTTapToBoxClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTTapToBoxClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F0364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFTTapToBoxClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTTapToBox");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTTapToBoxClass_block_invoke_cold_1();
  }

  getFTTapToBoxClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getFTEspressoBufferClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTEspressoBufferClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTEspressoBufferClass_softClass;
  if (!getFTEspressoBufferClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTEspressoBufferClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTEspressoBufferClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F04A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFTEspressoBufferClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTEspressoBuffer");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTEspressoBufferClass_block_invoke_cold_1();
  }

  getFTEspressoBufferClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getFTMSRScalerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__1;
  v0 = getFTMSRScalerClass_softClass;
  v7 = __Block_byref_object_dispose__1;
  v8 = getFTMSRScalerClass_softClass;
  if (!getFTMSRScalerClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getFTMSRScalerClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getFTMSRScalerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F05EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFTMSRScalerClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTMSRScaler");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTMSRScalerClass_block_invoke_cold_1();
  }

  getFTMSRScalerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getFTCinematicHighPriorityTrackerOpDescriptionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getFTCinematicHighPriorityTrackerOpDescriptionSymbolLoc_ptr;
  v6 = getFTCinematicHighPriorityTrackerOpDescriptionSymbolLoc_ptr;
  if (!getFTCinematicHighPriorityTrackerOpDescriptionSymbolLoc_ptr)
  {
    v1 = FusionTrackerLibrary();
    v4[3] = dlsym(v1, "FTCinematicHighPriorityTrackerOpDescription");
    getFTCinematicHighPriorityTrackerOpDescriptionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F0730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFTCinematicHighPriorityTrackerOpDescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FusionTrackerLibrary();
  result = dlsym(v2, "FTCinematicHighPriorityTrackerOpDescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFTCinematicHighPriorityTrackerOpDescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FTCinematicHighPriorityTrackerOpDescription(uint64_t a1)
{
  FTCinematicHighPriorityTrackerOpDescriptionSymbolLoc = getFTCinematicHighPriorityTrackerOpDescriptionSymbolLoc();
  if (!FTCinematicHighPriorityTrackerOpDescriptionSymbolLoc)
  {
    FTCinematicHighPriorityTrackerOpDescription_cold_1();
  }

  return FTCinematicHighPriorityTrackerOpDescriptionSymbolLoc(a1);
}

uint64_t getkFTInvalidTrackIdSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getkFTInvalidTrackIdSymbolLoc_ptr;
  v6 = getkFTInvalidTrackIdSymbolLoc_ptr;
  if (!getkFTInvalidTrackIdSymbolLoc_ptr)
  {
    v1 = FusionTrackerLibrary();
    v4[3] = dlsym(v1, "kFTInvalidTrackId");
    getkFTInvalidTrackIdSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F08B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkFTInvalidTrackIdSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FusionTrackerLibrary();
  result = dlsym(v2, "kFTInvalidTrackId");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkFTInvalidTrackIdSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getkFTInvalidTrackId()
{
  v0 = getkFTInvalidTrackIdSymbolLoc();
  if (!v0)
  {
    getkFTInvalidTrackId_cold_1();
  }

  return *v0;
}

Class __getFTBipartiteMatcherClass_block_invoke(uint64_t a1)
{
  FusionTrackerLibrary();
  result = objc_getClass("FTBipartiteMatcher");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFTBipartiteMatcherClass_block_invoke_cold_1();
  }

  getFTBipartiteMatcherClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t FigFlashlightRemoteCreate(uint64_t a1, void *a2)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  block = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __flashlightRemote_ensureClientEstablished_block_invoke;
  v15 = &unk_1E798FC38;
  v16 = &v17;
  if (flashlightRemote_ensureClientEstablished_onceToken != -1)
  {
    dispatch_once(&flashlightRemote_ensureClientEstablished_onceToken, &block);
  }

  v3 = *(v18 + 6);
  _Block_object_dispose(&v17, 8);
  if (v3)
  {
    FigFlashlightRemoteCreate_cold_1(v3);
    goto LABEL_11;
  }

  v4 = FigXPCCreateBasicMessage();
  if (v4)
  {
    v3 = v4;
    FigFlashlightRemoteCreate_cold_2();
    goto LABEL_11;
  }

  v5 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v5)
  {
    v3 = v5;
    FigFlashlightRemoteCreate_cold_3();
    goto LABEL_11;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  v7 = uint64;
  if (!uint64)
  {
    uint64 = FigFlashlightRemoteCreate_cold_4();
  }

  v17 = 0;
  if (!a2)
  {
    FigFlashlightRemoteCreate_cold_6(&block);
    v10 = block;
    v3 = 4294954516;
LABEL_17:
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v10, v11, 0, 0, block, v13, v14);
    goto LABEL_11;
  }

  FigFlashlightGetClassID(uint64);
  v8 = CMDerivedObjectCreate();
  v3 = v8;
  if (v8)
  {
    FigFlashlightRemoteCreate_cold_5(v8);
    v10 = block;
    goto LABEL_17;
  }

  *CMBaseObjectGetDerivedStorage() = v7;
  FigXPCRemoteClientAssociateObject();
  *a2 = v17;
LABEL_11:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v3;
}

void __flashlightRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"FlashlightServerDied");
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

uint64_t flashlightRemote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (!a1)
  {
    result = flashlightRemote_deadConnectionCallback_cold_1();
  }

  *(v3 + 8) = 1;
  return result;
}

uint64_t flashlightRemote_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = sFlashlightRemoteClient;
  if (sFlashlightRemoteClient)
  {
    result = FigXPCRemoteClientDisassociateObject();
  }

  if (!*(DerivedStorage + 8))
  {
    if (FigXPCCreateBasicMessage())
    {
      flashlightRemote_Finalize_cold_1();
    }

    else
    {
      v3 = FigXPCRemoteClientSendSyncMessage();
      if (v3)
      {
        flashlightRemote_Finalize_cold_2(v3);
      }
    }

    FigXPCRelease();
    return FigXPCRemoteClientKillServerOnTimeout();
  }

  return result;
}

__CFString *flashlightRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigFlashlightRemote %p retainCount: %ld allocator: %p, objectID: %lld>", a1, v5, v6, *DerivedStorage);
  return Mutable;
}

BOOL flashlightRemote_IsAvailable(uint64_t a1)
{
  xdict = 0;
  if (flashlightRemote_sendBasicMessage(a1, 1635148137, &xdict))
  {
    flashlightRemote_IsAvailable_cold_1();
    v1 = 0;
  }

  else
  {
    v1 = xpc_dictionary_get_BOOL(xdict, *MEMORY[0x1E69615B0]);
  }

  FigXPCRelease();
  return v1;
}

BOOL flashlightRemote_IsOverheated(uint64_t a1)
{
  xdict = 0;
  if (flashlightRemote_sendBasicMessage(a1, 1751474548, &xdict))
  {
    flashlightRemote_IsOverheated_cold_1();
    v1 = 0;
  }

  else
  {
    v1 = xpc_dictionary_get_BOOL(xdict, *MEMORY[0x1E69615B0]);
  }

  FigXPCRelease();
  return v1;
}

uint64_t flashlightRemote_SetLevel(uint64_t a1, float a2)
{
  BasicMessage = flashlightRemote_createBasicMessage(a1, 1936488044);
  if (BasicMessage)
  {
    xpc_dictionary_set_double(BasicMessage, *MEMORY[0x1E69615B0], a2);
    v4 = FigXPCRemoteClientSendSyncMessage();
    v5 = v4;
    if (v4)
    {
      flashlightRemote_SetLevel_cold_1(v4);
    }
  }

  else
  {
    flashlightRemote_SetLevel_cold_2();
    v5 = 4294954510;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

float flashlightRemote_GetLevel(uint64_t a1)
{
  xdict = 0;
  if (flashlightRemote_sendBasicMessage(a1, 1735161452, &xdict))
  {
    flashlightRemote_GetLevel_cold_1();
    v1 = 0.0;
  }

  else
  {
    v1 = xpc_dictionary_get_double(xdict, *MEMORY[0x1E69615B0]);
  }

  FigXPCRelease();
  return v1;
}

uint64_t flashlightRemote_SetBeamWidth(uint64_t a1, float a2)
{
  BasicMessage = flashlightRemote_createBasicMessage(a1, 1937205604);
  if (BasicMessage)
  {
    xpc_dictionary_set_double(BasicMessage, *MEMORY[0x1E69615B0], a2);
    v4 = FigXPCRemoteClientSendSyncMessage();
    v5 = v4;
    if (v4)
    {
      flashlightRemote_SetBeamWidth_cold_1(v4);
    }
  }

  else
  {
    flashlightRemote_SetBeamWidth_cold_2();
    v5 = 4294954510;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v5;
}

float flashlightRemote_GetBeamWidth(uint64_t a1)
{
  xdict = 0;
  if (flashlightRemote_sendBasicMessage(a1, 1735879012, &xdict))
  {
    flashlightRemote_GetBeamWidth_cold_1();
    v1 = 0.0;
  }

  else
  {
    v1 = xpc_dictionary_get_double(xdict, *MEMORY[0x1E69615B0]);
  }

  FigXPCRelease();
  return v1;
}

uint64_t flashlightRemote_NotifyForCurrentState(uint64_t a1)
{
  if (flashlightRemote_createBasicMessage(a1, 1852798054))
  {
    if (FigXPCRemoteClientSendAsyncMessage())
    {
      flashlightRemote_NotifyForCurrentState_cold_1();
    }
  }

  else
  {
    flashlightRemote_NotifyForCurrentState_cold_2();
  }

  return FigXPCRelease();
}

__CFString *BWMetadataCategoryToString(int a1)
{
  if ((a1 - 1) > 5)
  {
    return @"None";
  }

  else
  {
    return off_1E79900C8[a1 - 1];
  }
}

uint64_t FigFlashlightCreate(uint64_t a1, uint64_t a2, uint64_t a3, const __CFString *a4, uint64_t *a5)
{
  v31 = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v9 = fig_note_initialize_category_with_default_work_cf();
  FigFlashlightGetClassID(v9);
  v10 = CMDerivedObjectCreate();
  v11 = v10;
  if (v10)
  {
    FigFlashlightCreate_cold_1(v10, &v31);
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v13 = DerivedStorage;
    *(DerivedStorage + 72) = a2;
    if (a2 == 1)
    {
      v15 = 0;
      v16 = 0;
      v14 = 2;
    }

    else
    {
      if (a2 == 2)
      {
        v14 = 3;
        v15 = 1;
      }

      else
      {
        v15 = 0;
        v14 = 3;
      }

      v16 = 1;
    }

    *(DerivedStorage + 48) = v14;
    *(DerivedStorage + 52) = v16;
    *(DerivedStorage + 53) = v15;
    *(DerivedStorage + 96) = a3;
    if (a4)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a4);
      *(v13 + 104) = Copy;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d][%@]>", v31, *(v13 + 96), Copy];
    }

    else
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p[%d]>", v31, a3, v27];
    }

    v19 = v18;
    v20 = [v18 lengthOfBytesUsingEncoding:4];
    v21 = malloc_type_malloc(v20 + 1, 0x100004077774924uLL);
    *(v13 + 112) = v21;
    [v19 getCString:v21 maxLength:v20 + 1 encoding:4];
    *v13 = dispatch_queue_create("com.apple.coremedia.flashlight.notificationQueue", 0);
    *(v13 + 8) = dispatch_queue_create("com.apple.coremedia.flashlight.ambientLightReadingQueue", 0);
    *(v13 + 16) = dispatch_queue_create("com.apple.coremedia.flashlight.powerQueue", 0);
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    *(v13 + 240) = -1;
    *(v13 + 352) = 0x7FFFFFFF;
    *(v13 + 80) = FigSimpleMutexCreate();
    *(v13 + 88) = objc_alloc_init(FigCaptureThermalMonitor);
    v22 = [FigWeakReference weakReferenceToObject:v31];
    v23 = *(v13 + 88);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __FigFlashlightCreate_block_invoke;
    v30[3] = &unk_1E7990100;
    v30[4] = v22;
    [v23 setThermalHandler:v30];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __FigFlashlightCreate_block_invoke_2;
    v29[3] = &unk_1E798FC90;
    v29[4] = v22;
    *(v13 + 24) = [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v24 = [FigCaptureOSStateHandle alloc];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __FigFlashlightCreate_block_invoke_3;
    v28[3] = &unk_1E7990128;
    v28[4] = v22;
    *(v13 + 120) = [(FigCaptureOSStateHandle *)v24 initWithTitle:@"FigFlashlight" queue:0 dataProviderBlock:v28];
    if (dword_1EB58DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *a5 = v31;
  }

  return v11;
}

void __FigFlashlightCreate_block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) retainReferencedObject];
  if (v4)
  {
    v5 = v4;
    [a2 maxTorchLevel];
    v7 = v6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*(DerivedStorage + 32) > v7)
    {
      v9 = flashlight_setLevelInternal(v5, v7);
      if (v9)
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v2, v10, v11, v12, v13, v14, v15);
      }

      if (v7 == 0.0)
      {
        flashlight_teardownDevice(v5, 0);
      }
    }

    flashlight_postNotificationWithPayload(v5, @"FlashlightOverheated", [MEMORY[0x1E696AD98] numberWithInt:v7 < 1.0]);
    FigSimpleMutexUnlock();

    CFRelease(v5);
  }
}

void *__FigFlashlightCreate_block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) retainReferencedObject];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  [*(CMBaseObjectGetDerivedStorage() + 88) maxTorchLevel];
  v7 = v6;
  FigSimpleMutexLock();
  [v3 setObject:*(DerivedStorage + 104) forKeyedSubscript:@"ClientApplicationID"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(DerivedStorage + 96)), @"ClientPID"}];
  v9 = *(DerivedStorage + 72);
  if (v9 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(&off_1E7990198 + v9);
  }

  LODWORD(v8) = 1.0;
  [v3 setObject:v10 forKeyedSubscript:{@"ClientType", v8}];
  LODWORD(v11) = *(DerivedStorage + 32);
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v11), @"Level"}];
  LODWORD(v12) = *(DerivedStorage + 36);
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v12), @"LevelSentInPowerEvent"}];
  LODWORD(v13) = *(DerivedStorage + 40);
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v13), @"BeamWidth"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *(DerivedStorage + 56) != 0), @"PoweredOn"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v5), @"Available"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v7 < 1.0), @"Overheated"}];
  FigSimpleMutexUnlock();
  CFRelease(v2);
  return v3;
}

void flashlight_Finalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

  FigSimpleMutexDestroy();
  *(DerivedStorage + 80) = 0;
  flashlight_teardownDevice(a1, 0);
  v3 = *(DerivedStorage + 104);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 104) = 0;
  }

  v4 = *(DerivedStorage + 112);
  if (v4)
  {
    *(DerivedStorage + 112) = 0;
    free(v4);
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    dispatch_release(v5);
    *(DerivedStorage + 8) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    dispatch_release(v6);
    *(DerivedStorage + 16) = 0;
  }

  if (a1)
  {
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v7)
    {

      v7(a1);
    }
  }
}

__CFString *flashlight_CopyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigFlashlight %p retainCount: %ld allocator: %p, ", a1, v4, v5);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

void *__flashlight_logLevelAnalytics_block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) luxLevel];
  if (result == 0x7FFFFFFF)
  {
    v3 = 1001;
    while (--v3)
    {
      usleep(0x3E8u);
      result = [*(a1 + 32) luxLevel];
      if (result != 0x7FFFFFFF)
      {
        goto LABEL_5;
      }
    }

    return __flashlight_logLevelAnalytics_block_invoke_cold_1();
  }

  else
  {
LABEL_5:
    *(*(a1 + 40) + 352) = result;
  }

  return result;
}

uint64_t flashlight_PowerOn(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 56))
  {
    v3 = 0;
  }

  else
  {
    v3 = flashlight_setupDevice(a1);
  }

  FigSimpleMutexUnlock();
  return v3;
}

uint64_t flashlight_SetLevel(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = [*(DerivedStorage + 88) maxTorchLevel];
  if (a2 > 1.0)
  {
    a2 = v6;
  }

  if (a2 > v6)
  {
    flashlight_SetLevel_cold_3(v5);
    v9 = 4294950766;
  }

  else if (a2 > 0.0 && !*(DerivedStorage + 64) && (v7 = flashlight_setupDevice(a1), v7))
  {
    v9 = v7;
    flashlight_SetLevel_cold_1();
  }

  else if (a2 == *(DerivedStorage + 32))
  {
    v9 = 0;
  }

  else
  {
    v8 = flashlight_setLevelInternal(a1, a2);
    v9 = v8;
    if (v8)
    {
      flashlight_SetLevel_cold_2(v8);
    }
  }

  FigSimpleMutexUnlock();
  return v9;
}

float flashlight_GetLevel(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 32);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t flashlight_SetBeamWidth(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v5 = 1.0;
  if (a2 <= 1.0)
  {
    v5 = a2;
  }

  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  if (v5 == *(DerivedStorage + 40))
  {
    v6 = 0;
  }

  else
  {
    v6 = flashlight_setBeamWidthInternal(a1, v5);
  }

  FigSimpleMutexUnlock();
  return v6;
}

float flashlight_GetBeamWidth(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v2 = *(DerivedStorage + 40);
  FigSimpleMutexUnlock();
  return v2;
}

uint64_t flashlight_NotifyForCurrentState(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  [*(DerivedStorage + 88) maxTorchLevel];
  flashlight_postNotificationWithPayload(a1, @"FlashlightOverheated", [MEMORY[0x1E696AD98] numberWithBool:v3 < 1.0]);
  v4 = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  flashlight_postNotificationWithPayload(a1, @"FlashlightAvailable", [MEMORY[0x1E696AD98] numberWithBool:v4]);
  LODWORD(v5) = *(DerivedStorage + 32);
  flashlight_postNotificationWithPayload(a1, @"FlashlightLevel", [MEMORY[0x1E696AD98] numberWithFloat:v5]);

  return FigSimpleMutexUnlock();
}

uint64_t flashlight_setupDevice(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (!*(DerivedStorage + 344))
  {
    *(DerivedStorage + 344) = objc_alloc_init(BWAmbientLightSensor);
  }

  DeviceAndStream = 0;
  IsWombatEnabled = FigCaptureIsWombatEnabled(&DeviceAndStream, v3);
  if (DeviceAndStream)
  {
    flashlight_setupDevice_cold_1();
  }

  else if (IsWombatEnabled)
  {
    return -12782;
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    *(DerivedStorage + 44) = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    DeviceAndStream = flashlight_createDeviceAndStream(a1);
    objc_autoreleasePoolPop(v5);
    if (*(DerivedStorage + 56))
    {
      v6 = [*(DerivedStorage + 64) supportedProperties];
      v7 = *off_1E798BED8;
      if ([v6 objectForKeyedSubscript:*off_1E798BED8])
      {
        if (*(DerivedStorage + 72) == 1)
        {
          v8 = MEMORY[0x1E695E118];
        }

        else
        {
          v8 = MEMORY[0x1E695E110];
        }

        DeviceAndStream = [*(DerivedStorage + 64) setProperty:v7 value:v8];
      }

      v9 = [*(DerivedStorage + 64) supportedProperties];
      v10 = *off_1E798C228;
      if ([v9 objectForKeyedSubscript:*off_1E798C228])
      {
        LODWORD(v11) = *(DerivedStorage + 40);
        return [*(DerivedStorage + 64) setProperty:v10 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v11)}];
      }
    }

    else
    {
      flashlight_setupDevice_cold_2();
    }
  }

  return DeviceAndStream;
}

uint64_t flashlight_createDeviceAndStream(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 0;
  FigSimpleMutexCheckIsLockedOnThisThread();
  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    CFRelease(v2);
  }

  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 56) = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
  if (v6)
  {
    flashlight_createDeviceAndStream_cold_1();
  }

  else
  {
    *(DerivedStorage + 64) = [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    if (!v6)
    {
      goto LABEL_8;
    }

    [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
    v3 = *(DerivedStorage + 56);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 56) = 0;
    }
  }

  if (v6)
  {
LABEL_9:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v6;
  }

LABEL_8:
  if (dword_1EB58DF40)
  {
    goto LABEL_9;
  }

  return v6;
}

uint64_t flashlight_setLevelInternal(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v5 = a2;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  FigSimpleMutexCheckIsLockedOnThisThread();
  v7 = *(DerivedStorage + 64);
  if (!v7)
  {
    *(DerivedStorage + 32) = a2;
LABEL_10:
    flashlight_postNotificationWithPayload(a1, @"FlashlightLevel", v6);
    flashlight_logLevelAnalytics(DerivedStorage, a2);
    return 0;
  }

  v8 = [v7 setProperty:*off_1E798C230 value:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8 == -12785;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    *(DerivedStorage + 32) = a2;
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  flashlight_setLevelInternal_cold_1(v8);
  return v9;
}

uint64_t flashlight_setBeamWidthInternal(const void *a1, float a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&v5 = a2;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  FigSimpleMutexCheckIsLockedOnThisThread();
  v7 = *(DerivedStorage + 64);
  if (v7)
  {
    v8 = [v7 setProperty:*off_1E798C228 value:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8 == -12785;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 || (*(DerivedStorage + 40) = a2, v8))
    {
      flashlight_setBeamWidthInternal_cold_1(v8);
      return v9;
    }
  }

  else
  {
    *(DerivedStorage + 40) = a2;
  }

  flashlight_postNotificationWithPayload(a1, @"FlashlightBeamWidth", v6);
  if (*(DerivedStorage + 32) > 0.0)
  {
    flashlight_logBeamWidthAnalytics(DerivedStorage, a2);
  }

  return 0;
}

uint64_t AppleDepthLibraryCore(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = AppleDepthLibraryCore_frameworkLibrary;
  v6 = AppleDepthLibraryCore_frameworkLibrary;
  if (!AppleDepthLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E79901B0;
    v8 = *off_1E79901C0;
    v9 = 0;
    v4[3] = _sl_dlopen();
    AppleDepthLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1AC9F2F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AppleDepthLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  AppleDepthLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AppleDepthLibrary()
{
  v3 = 0;
  v0 = AppleDepthLibraryCore(&v3);
  if (!v0)
  {
    AppleDepthLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getADMonocularPipelineParametersClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADMonocularPipelineParametersClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADMonocularPipelineParametersClass_softClass;
  if (!getADMonocularPipelineParametersClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADMonocularPipelineParametersClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADMonocularPipelineParametersClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F311C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADMonocularPipelineParametersClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADMonocularPipelineParameters");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADMonocularPipelineParametersClass_block_invoke_cold_1();
  }

  getADMonocularPipelineParametersClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADMonocularPipelineClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADMonocularPipelineClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADMonocularPipelineClass_softClass;
  if (!getADMonocularPipelineClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADMonocularPipelineClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADMonocularPipelineClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F3260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADMonocularPipelineClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADMonocularPipeline");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADMonocularPipelineClass_block_invoke_cold_1();
  }

  getADMonocularPipelineClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADMutableJasperPointCloudClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADMutableJasperPointCloudClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADMutableJasperPointCloudClass_softClass;
  if (!getADMutableJasperPointCloudClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADMutableJasperPointCloudClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADMutableJasperPointCloudClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F33A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADMutableJasperPointCloudClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADMutableJasperPointCloud");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADMutableJasperPointCloudClass_block_invoke_cold_1();
  }

  getADMutableJasperPointCloudClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADJasperPointCloudClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADJasperPointCloudClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADJasperPointCloudClass_softClass;
  if (!getADJasperPointCloudClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADJasperPointCloudClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADJasperPointCloudClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F34E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADJasperPointCloudClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADJasperPointCloud");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADJasperPointCloudClass_block_invoke_cold_1();
  }

  getADJasperPointCloudClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADCameraCalibrationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADCameraCalibrationClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADCameraCalibrationClass_softClass;
  if (!getADCameraCalibrationClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADCameraCalibrationClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADCameraCalibrationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F362C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADCameraCalibrationClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADCameraCalibration");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADCameraCalibrationClass_block_invoke_cold_1();
  }

  getADCameraCalibrationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADPolynomialsLensDistortionModelClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADPolynomialsLensDistortionModelClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADPolynomialsLensDistortionModelClass_softClass;
  if (!getADPolynomialsLensDistortionModelClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADPolynomialsLensDistortionModelClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADPolynomialsLensDistortionModelClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F3770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADPolynomialsLensDistortionModelClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADPolynomialsLensDistortionModel");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADPolynomialsLensDistortionModelClass_block_invoke_cold_1();
  }

  getADPolynomialsLensDistortionModelClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADJasperColorStillsExecutorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADJasperColorStillsExecutorClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADJasperColorStillsExecutorClass_softClass;
  if (!getADJasperColorStillsExecutorClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADJasperColorStillsExecutorClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADJasperColorStillsExecutorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F38B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADJasperColorStillsExecutorClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADJasperColorStillsExecutor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADJasperColorStillsExecutorClass_block_invoke_cold_1();
  }

  getADJasperColorStillsExecutorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADJasperColorV2ExecutorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADJasperColorV2ExecutorClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADJasperColorV2ExecutorClass_softClass;
  if (!getADJasperColorV2ExecutorClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADJasperColorV2ExecutorClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADJasperColorV2ExecutorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F39F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADJasperColorV2ExecutorClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADJasperColorV2Executor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADJasperColorV2ExecutorClass_block_invoke_cold_1();
  }

  getADJasperColorV2ExecutorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADStereoPipelineClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADStereoPipelineClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADStereoPipelineClass_softClass;
  if (!getADStereoPipelineClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADStereoPipelineClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADStereoPipelineClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F3B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADStereoPipelineClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADStereoPipeline");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADStereoPipelineClass_block_invoke_cold_1();
  }

  getADStereoPipelineClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADStereoV2PipelineClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADStereoV2PipelineClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADStereoV2PipelineClass_softClass;
  if (!getADStereoV2PipelineClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADStereoV2PipelineClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADStereoV2PipelineClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F3C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADStereoV2PipelineClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADStereoV2Pipeline");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADStereoV2PipelineClass_block_invoke_cold_1();
  }

  getADStereoV2PipelineClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADStereoV2PipelineParametersClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADStereoV2PipelineParametersClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADStereoV2PipelineParametersClass_softClass;
  if (!getADStereoV2PipelineParametersClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADStereoV2PipelineParametersClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADStereoV2PipelineParametersClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F3DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADStereoV2PipelineParametersClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADStereoV2PipelineParameters");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADStereoV2PipelineParametersClass_block_invoke_cold_1();
  }

  getADStereoV2PipelineParametersClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getADPCEDisparityColorPipelineClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADPCEDisparityColorPipeline");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADPCEDisparityColorPipelineClass_block_invoke_cold_1();
  }

  getADPCEDisparityColorPipelineClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADMonocularVideoPipelineClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADMonocularVideoPipelineClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADMonocularVideoPipelineClass_softClass;
  if (!getADMonocularVideoPipelineClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADMonocularVideoPipelineClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADMonocularVideoPipelineClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F3F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADMonocularVideoPipelineClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADMonocularVideoPipeline");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADMonocularVideoPipelineClass_block_invoke_cold_1();
  }

  getADMonocularVideoPipelineClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADMonocularVideoPipelineParametersClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADMonocularVideoPipelineParametersClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADMonocularVideoPipelineParametersClass_softClass;
  if (!getADMonocularVideoPipelineParametersClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADMonocularVideoPipelineParametersClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADMonocularVideoPipelineParametersClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F40A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADMonocularVideoPipelineParametersClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADMonocularVideoPipelineParameters");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADMonocularVideoPipelineParametersClass_block_invoke_cold_1();
  }

  getADMonocularVideoPipelineParametersClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADMonocularStillsPipelineClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADMonocularStillsPipelineClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADMonocularStillsPipelineClass_softClass;
  if (!getADMonocularStillsPipelineClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADMonocularStillsPipelineClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADMonocularStillsPipelineClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F41E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADMonocularStillsPipelineClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADMonocularStillsPipeline");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADMonocularStillsPipelineClass_block_invoke_cold_1();
  }

  getADMonocularStillsPipelineClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADMonocularStillsPipelineParametersClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADMonocularStillsPipelineParametersClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADMonocularStillsPipelineParametersClass_softClass;
  if (!getADMonocularStillsPipelineParametersClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADMonocularStillsPipelineParametersClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADMonocularStillsPipelineParametersClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F432C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADMonocularStillsPipelineParametersClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADMonocularStillsPipelineParameters");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADMonocularStillsPipelineParametersClass_block_invoke_cold_1();
  }

  getADMonocularStillsPipelineParametersClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getADImageDimensionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__2;
  v0 = getADImageDimensionsClass_softClass;
  v7 = __Block_byref_object_dispose__2;
  v8 = getADImageDimensionsClass_softClass;
  if (!getADImageDimensionsClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getADImageDimensionsClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getADImageDimensionsClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1AC9F4470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getADImageDimensionsClass_block_invoke(uint64_t a1)
{
  AppleDepthLibrary();
  result = objc_getClass("ADImageDimensions");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getADImageDimensionsClass_block_invoke_cold_1();
  }

  getADImageDimensionsClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void FigCaptureStartPreferencesOSStateHandlers(uint64_t result, uint64_t a2)
{
  if (FigCaptureStartPreferencesOSStateHandlers_sOnceToken != -1)
  {
    FigCaptureStartPreferencesOSStateHandlers_cold_1();
  }
}

void __FigCaptureStartPreferencesOSStateHandlers_block_invoke()
{
  v15[0] = @"com.apple.avfoundation";
  v15[1] = @"com.apple.camera";
  v15[2] = @"com.apple.cameracapture";
  v15[3] = @"com.apple.coremedia";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4];
  v1 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [v0 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        v7 = [FigCaptureOSStateHandle alloc];
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __FigCaptureStartPreferencesOSStateHandlers_block_invoke_2;
        v9[3] = &unk_1E7990128;
        v9[4] = v6;
        v8 = [(FigCaptureOSStateHandle *)v7 initWithTitle:v6 queue:0 dataProviderBlock:v9];
        [v1 addObject:v8];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v0 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v3);
  }

  FigCaptureStartPreferencesOSStateHandlers_sPreferenceOSStateHandles = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v1];
}

CFDictionaryRef __FigCaptureStartPreferencesOSStateHandlers_block_invoke_2(uint64_t a1)
{
  v1 = CFPreferencesCopyMultiple(0, *(a1 + 32), *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

  return v1;
}

uint64_t FigFlatDictionaryKeyGetDefaultValueSize(uint64_t a1)
{
  result = *(a1 + 24);
  if (!result)
  {
    return kFigFlatDictionaryValueSizes[*(a1 + 16)];
  }

  return result;
}

void FigFlatDictionaryKeyGetDefaultValue(uint64_t a1, void *__dst)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    v4 = *(a1 + 16);
    if ((v4 - 7) <= 1)
    {
      bzero(__dst, *(a1 + 24));
      return;
    }

    v3 = FigFlatDictionaryDefaultDefaultValues[v4];
  }

  memcpy(__dst, v3, *(a1 + 24));
}

void *FigFlatDictionaryKeySpaceRegister(unsigned int a1, int a2)
{
  if (sKeySpaceLockCreateOnceToken != -1)
  {
    FigFlatDictionaryKeySpaceRegister_cold_1();
  }

  FigSimpleMutexLock();
  result = sKeySpaces;
  if (sKeySpaces)
  {
    v5 = sKeySpacesInternalCount;
  }

  else
  {
    sKeySpaces = malloc_type_malloc(0x20uLL, 0x2004093837F09uLL);
    sKeySpaceNames = malloc_type_malloc(0x10uLL, 0x100004052888210uLL);
    v5 = 4;
    sKeySpacesInternalCount = 4;
    result = sKeySpaces;
  }

  if (sKeySpacesCount == v5)
  {
    sKeySpaces = malloc_type_realloc(result, 8 * v5 + 32, 0x6004044C4A2DFuLL);
    v6 = malloc_type_realloc(sKeySpaceNames, 4 * sKeySpacesInternalCount + 16, 0x100004052888210uLL);
    sKeySpaceNames = v6;
    sKeySpacesInternalCount += 4;
    result = sKeySpaces;
  }

  else
  {
    v6 = sKeySpaceNames;
  }

  if (result && v6)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], a1, &sFigFlatDictionaryKeyCFSetCallbacks);
    v8 = sKeySpacesCount;
    *(sKeySpaces + 8 * sKeySpacesCount) = Mutable;
    *(sKeySpaceNames + 4 * v8) = a2;
    sKeySpacesCount = v8 + 1;
    FigSimpleMutexUnlock();
    return (sKeySpacesCount - 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t figFlatDictionaryKeySpaceCreateKeySpaceLockOnce()
{
  result = FigSimpleMutexCreate();
  sKeySpaceLock = result;
  return result;
}

uint64_t FigFlatDictionaryKeySpaceGetLabel(int a1)
{
  result = 0;
  if (a1 >= 1 && sKeySpacesCount > a1)
  {
    return *(sKeySpaceNames + 4 * a1);
  }

  return result;
}

uint64_t FigFlatDictionaryKeySpaceGetKeySpaceWithLabel(int a1)
{
  if (sKeySpacesCount < 2)
  {
    return 0;
  }

  v1 = 1;
  while (*(sKeySpaceNames + 4 * v1) != a1)
  {
    if (sKeySpacesCount == ++v1)
    {
      return 0;
    }
  }

  return v1;
}

CFIndex FigFlatDictionaryKeySpaceGetNumberOfRegisteredKeys(int a1)
{
  result = 0;
  if (a1 >= 1 && sKeySpacesCount > a1)
  {
    return CFSetGetCount(*(sKeySpaces + 8 * a1));
  }

  return result;
}

uint64_t FigFlatDictionaryKeyRegisterExistingKey(unsigned int a1, unsigned int *a2)
{
  result = 0;
  if (a1 >= 1 && sKeySpacesCount > a1)
  {
    if (a2[1] && *a2)
    {
      return 0;
    }

    else
    {
      v5 = a2[4];
      if ((v5 - 7) >= 3)
      {
        v6 = kFigFlatDictionaryValueSizes[v5];
      }

      else
      {
        v6 = *(a2 + 3) + 4;
      }

      *(a2 + 3) = v6;
      a2[1] = CFSetGetCount(*(sKeySpaces + 8 * a1));
      CFSetAddValue(*(sKeySpaces + 8 * a1), a2);
      *a2 = a1;
      return 1;
    }
  }

  return result;
}

_DWORD *FigFlatDictionaryKeyRegisterNewKey(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (a1 >= 1 && sKeySpacesCount > a1)
  {
    v5 = malloc_type_calloc(1uLL, 0x28uLL, 0x10D004010E3ED91uLL);
    v5[4] = a3;
    *(v5 + 1) = a2;
    *(v5 + 3) = a4;
    *(v5 + 4) = a5;
    if ((FigFlatDictionaryKeyRegisterExistingKey(a1, v5) & 1) == 0)
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

const void *FigFlatDictionaryKeyLookupFromIdentifier(int a1, uint64_t a2)
{
  result = 0;
  value[0] = a1;
  value[1] = 0;
  v7 = 0;
  v8 = 0;
  v5 = a2;
  if (a1 >= 1 && sKeySpacesCount > a1)
  {
    v6 = 0;
    return CFSetGetValue(*(sKeySpaces + 8 * a1), value);
  }

  return result;
}

uint64_t flatDictionaryKey_CFSetCallbackHash(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  if (!*v1)
  {
    return 0;
  }

  result = 0;
  v4 = v1 + 1;
  do
  {
    result = 65599 * result + v2;
    v5 = *v4++;
    v2 = v5;
  }

  while (v5);
  return result;
}

double acpr_conformRectForMSR420vf(double a1, double a2, double a3, double a4)
{
  v7 = a1;
  v8 = FigCaptureRoundFloatToMultipleOf(1, v7);
  v9 = a2;
  FigCaptureRoundFloatToMultipleOf(1, v9);
  v10 = a3;
  FigCaptureRoundFloatToMultipleOf(2, v10);
  v11 = a4;
  FigCaptureRoundFloatToMultipleOf(2, v11);
  return v8;
}

void sub_1AC9F9FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC9FA0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC9FA3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

double ptn_rectBoundedByDimensions(int a1, double result, double a3, double a4)
{
  if (a4 > a1)
  {
    a4 = a1;
  }

  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  if (a1 - a4 < result)
  {
    result = a1 - a4;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double ptn_rotateRect(int a1, _OWORD *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  if (a1)
  {
    a3 = (a3 * a7 - a11) / a13;
    a4 = (a4 * a8 - a12) / a14;
    a5 = a5 * a7 / a13;
    a6 = a6 * a8 / a14;
  }

  v14 = a2[1];
  *&v18.a = *a2;
  *&v18.c = v14;
  *&v18.tx = a2[2];
  v15 = COERCE_DOUBLE(CGRectApplyAffineTransform(*&a3, &v18));
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  if (v15 >= 0.0)
  {
    return v16;
  }

  else
  {
    return 0.0;
  }
}

Class __getHDRProcessorClass_block_invoke(uint64_t a1)
{
  HDRProcessingLibrary();
  result = objc_getClass("HDRProcessor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getHDRProcessorClass_block_invoke_cold_1();
  }

  getHDRProcessorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t HDRProcessingLibrary()
{
  v2[0] = 0;
  if (!HDRProcessingLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __HDRProcessingLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7990310;
    v4 = 0;
    HDRProcessingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = HDRProcessingLibraryCore_frameworkLibrary;
  if (!HDRProcessingLibraryCore_frameworkLibrary)
  {
    HDRProcessingLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __HDRProcessingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HDRProcessingLibraryCore_frameworkLibrary = result;
  return result;
}

os_log_t __getCameraCaptureExcessiveLog_block_invoke()
{
  result = os_log_create("com.apple.cameracapture", "excessive");
  getCameraCaptureExcessiveLog_cameraCaptureExcessiveLog = result;
  return result;
}

void *__getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = HDRProcessingLibrary();
  result = dlsym(v2, "kHDRProcessingDolbyVisionRPUDataKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void BWNodeSanitizeMetadataIfNecessary(const void *a1)
{
  if ([CMGetAttachment(a1 @"FrameIsBlackened"])
  {
    CMSetAttachment(a1, *off_1E798A3C8, MEMORY[0x1E695E0F8], 1u);

    CMRemoveAttachment(a1, @"FrameIsBlackened");
  }
}

id makeLocalDefaultsWrites()
{
  v0 = objc_opt_new();
  v1 = getPrefs();
  [v1 addPointer:v0];

  return v0;
}

id getPrefs()
{
  v0 = getPrefs_s_prefs;
  if (!getPrefs_s_prefs)
  {
    v1 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    v2 = getPrefs_s_prefs;
    getPrefs_s_prefs = v1;

    v0 = getPrefs_s_prefs;
  }

  return v0;
}

id loadDefaultsWritesWithPrefix(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 persistentDomainForName:@"com.apple.coremedia"];

  v7 = 0x1E695D000uLL;
  v8 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v6];
  v9 = getPrefs();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v30;
    do
    {
      v14 = 0;
      v15 = v6;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v6 = *(*(&v29 + 1) + 8 * v14);

        if (v6)
        {
          [v8 addEntriesFromDictionary:v6];
        }

        else
        {
          v12 = 1;
        }

        ++v14;
        v15 = v6;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v28 count:16];
    }

    while (v11);

    v7 = 0x1E695D000;
    if (v12)
    {
      [v9 compact];
    }
  }

  else
  {
  }

  v16 = v8;
  v17 = v3;
  v18 = objc_opt_new();
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __extractSubset_block_invoke;
  v33[3] = &unk_1E79903E0;
  v33[4] = v17;
  v19 = v18;
  v34 = v19;
  [v16 enumerateKeysAndObjectsUsingBlock:v33];

  v20 = v34;
  v21 = v19;

  v22 = MEMORY[0x1E695DF70];
  v23 = [v21 allKeys];
  v24 = [v22 arrayWithArray:v23];

  v25 = [v4 allKeys];
  [v24 removeObjectsInArray:v25];

  v26 = [*(v7 + 3984) dictionaryWithDictionary:v4];
  [v26 addEntriesFromDictionary:v21];
  [v26 removeObjectsForKeys:v24];

  return v26;
}

uint64_t determineReferenceFrameIndex(CMAttachmentBearerRef *a1, unsigned int a2, unsigned int a3, int *a4)
{
  v29 = objc_opt_new();
  v30 = a2;
  v31 = -1;
  if (a2 >= 1)
  {
    v7 = *off_1E798A3C8;
    v8 = *off_1E798B1B8;
    v9 = *off_1E798B558;
    v10 = a2;
    do
    {
      v11 = CMGetAttachment(*a1, v7, 0);
      v12 = [v11 objectForKeyedSubscript:v8];
      v13 = [v12 intValue];

      v14 = a3 != 7 && a3 != 2 || v13 != v30;
      v15 = [v11 objectForKeyedSubscript:v9];
      v16 = [v15 BOOLValue];

      if (!v16 && v14)
      {
        [v29 addObject:v11];
      }

      ++a1;
      --v10;
    }

    while (v10);
  }

  v17 = -1;
  if (a3 > 9)
  {
    v19 = 0xFFFFFFFFLL;
    v20 = a4;
    v18 = v29;
  }

  else
  {
    v18 = v29;
    if (((1 << a3) & 0xC6) != 0)
    {
      v19 = FigCaptureReferenceFrameSelection(v29, &v31);
      v17 = v31;
      v20 = a4;
    }

    else
    {
      v19 = 0xFFFFFFFFLL;
      v20 = a4;
      if (a3 == 9 && [v29 count])
      {
        v22 = 0;
        v23 = *off_1E798B298;
        do
        {
          v24 = [v29 objectAtIndexedSubscript:v22];
          v25 = [v24 objectForKeyedSubscript:v23];
          [v25 floatValue];
          v27 = v26;

          if (v27 >= 0.0)
          {
            v19 = v19;
          }

          else
          {
            v17 = v22;
            v19 = 0;
          }

          ++v22;
        }

        while (v22 < [v29 count]);
      }
    }
  }

  *v20 = v17;

  return v19;
}

void __extractSubset_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 hasPrefix:*(a1 + 32)])
  {
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

uint64_t FigCapturePlatformReconfigure(int a1, int a2)
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return fcp_reconfigurePlatformWithOverride(a1, a2);
}

uint64_t FigCapturePlatformSupportsHTPC32x4Compression()
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  return sPlatformSupportsHTPC32x4Compression;
}

__CFString *FigCapturePlatformChipRevisionIdentifierString(uint64_t a1, uint64_t a2)
{
  if (fcp_identifyChipRevision_identifyChipRevisionOnceToken != -1)
  {
    FigCapturePlatformChipRevisionIdentifier_cold_1();
  }

  v2 = @"Unknown";
  v3 = @"B0";
  v4 = @"B1";
  if (sPlatformChipRevisionID != 17)
  {
    v4 = @"Unknown";
  }

  if (sPlatformChipRevisionID != 16)
  {
    v3 = v4;
  }

  if (sPlatformChipRevisionID == 1)
  {
    v2 = @"A1";
  }

  if (!sPlatformChipRevisionID)
  {
    v2 = @"A0";
  }

  if (sPlatformChipRevisionID <= 15)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t FigCapturePlatformSupportsExternalCameras(uint64_t a1, uint64_t a2)
{
  result = BWDeviceIsiPad(a1, a2);
  if (result)
  {
    return MGGetBoolAnswer();
  }

  return result;
}

double FigCapturePlatformGetISPHardwareCharacteristics@<D0>(uint64_t a1@<X8>)
{
  if (fcp_identifyPlatform_identifyPlatformOnceToken != -1)
  {
    FigCapturePlatformReconfigure_cold_1();
  }

  result = *&sISPHardwareCharacteristics;
  v3 = *algn_1ED845310;
  *a1 = sISPHardwareCharacteristics;
  *(a1 + 16) = v3;
  *(a1 + 32) = dword_1ED845320;
  return result;
}

uint64_t __fcp_identifyChipRevision_block_invoke()
{
  *buffer = -1;
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceNameMatching("arm-io");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    CFProperty = IORegistryEntryCreateCFProperty(result, @"chip-revision", *MEMORY[0x1E695E480], 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      v7.location = 0;
      v7.length = 4;
      CFDataGetBytes(CFProperty, v7, buffer);
      CFRelease(v5);
    }

    result = IOObjectRelease(v3);
    if (*buffer <= 0x11u && ((1 << buffer[0]) & 0x30003) != 0)
    {
      sPlatformChipRevisionID = *buffer;
    }
  }

  return result;
}

uint64_t PrivacyAccountingLibraryCore(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = PrivacyAccountingLibraryCore_frameworkLibrary;
  v6 = PrivacyAccountingLibraryCore_frameworkLibrary;
  if (!PrivacyAccountingLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7990428;
    v8 = *off_1E7990438;
    v9 = 0;
    v4[3] = _sl_dlopen();
    PrivacyAccountingLibraryCore_frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_1ACA0658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PrivacyAccountingLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PrivacyAccountingLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PrivacyAccountingLibrary()
{
  v3 = 0;
  v0 = PrivacyAccountingLibraryCore(&v3);
  if (!v0)
  {
    PrivacyAccountingLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t getPAAccessLoggerClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__6;
  v0 = getPAAccessLoggerClass_softClass;
  v7 = __Block_byref_object_dispose__6;
  v8 = getPAAccessLoggerClass_softClass;
  if (!getPAAccessLoggerClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPAAccessLoggerClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPAAccessLoggerClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA06738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPAAccessLoggerClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PAAccessLogger");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPAAccessLoggerClass_block_invoke_cold_1();
  }

  getPAAccessLoggerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getPATCCAccessClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PATCCAccess");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPATCCAccessClass_block_invoke_cold_1();
  }

  getPATCCAccessClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getPAApplicationClass_block_invoke(uint64_t a1)
{
  PrivacyAccountingLibrary();
  result = objc_getClass("PAApplication");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPAApplicationClass_block_invoke_cold_1();
  }

  getPAApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPAAuthenticatedClientIdentitySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPAAuthenticatedClientIdentitySymbolLoc_ptr;
  v6 = getPAAuthenticatedClientIdentitySymbolLoc_ptr;
  if (!getPAAuthenticatedClientIdentitySymbolLoc_ptr)
  {
    v1 = PrivacyAccountingLibrary();
    v4[3] = dlsym(v1, "PAAuthenticatedClientIdentity");
    getPAAuthenticatedClientIdentitySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACA0692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPAAuthenticatedClientIdentitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PrivacyAccountingLibrary();
  result = dlsym(v2, "PAAuthenticatedClientIdentity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPAAuthenticatedClientIdentitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_PAAuthenticatedClientIdentity(_OWORD *a1, uint64_t a2)
{
  PAAuthenticatedClientIdentitySymbolLoc = getPAAuthenticatedClientIdentitySymbolLoc();
  if (!PAAuthenticatedClientIdentitySymbolLoc)
  {
    soft_PAAuthenticatedClientIdentity_cold_1();
  }

  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return PAAuthenticatedClientIdentitySymbolLoc(v7, a2);
}

uint64_t __pdn_sendPPSData_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", *(a1 + 32)), @"DetectionSessionStartTime"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", *(a1 + 40)), @"DetectionSessionStopTime"}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", *(a1 + 48)), @"InPocketDecision"}];
  if (gBWPocketDetectionNodeTrace_block_invoke_telemetryIdOnce != -1)
  {
    __pdn_sendPPSData_block_invoke_cold_1();
  }

  result = gBWPocketDetectionNodeTrace_block_invoke_telemetryId;
  if (gBWPocketDetectionNodeTrace_block_invoke_telemetryId)
  {

    return MEMORY[0x1EEE2EC40]();
  }

  return result;
}

uint64_t __pdn_sendPPSData_block_invoke_2()
{
  result = PPSCreateTelemetryIdentifier();
  gBWPocketDetectionNodeTrace_block_invoke_telemetryId = result;
  return result;
}

uint64_t FigCaptureSmartStyleSettingsGetSystemStyle(uint64_t a1)
{
  if (FigCaptureSmartStyleSettingsPrewarm_onceToken != -1)
  {
    FigCaptureSmartStyleSettingsGetSystemStyle_cold_1();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigCaptureSmartStyleSettingsGetSystemStyle_block_invoke;
  v4[3] = &unk_1E79904A0;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(sFigCaptureSmartStyleQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __FigCaptureSmartStyleSettingsGetSystemStyle_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@systemstyle", fsss_prefixedSystemStylePreferenceKeyForBundleID(*(a1 + 32), a2)];
  v4 = CFPreferencesCopyValue(v3, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v4)
  {
    v14 = v4;
    v5 = [v4 objectForKeyedSubscript:@"CastType"];
    [objc_msgSend(v14 objectForKeyedSubscript:{@"CastIntensity", "floatValue"}];
    v7 = v6;
    [objc_msgSend(v14 objectForKeyedSubscript:{@"ToneBias", "floatValue"}];
    v9 = v8;
    [objc_msgSend(v14 objectForKeyedSubscript:{@"ColorBias", "floatValue"}];
    LODWORD(v11) = v10;
    LODWORD(v12) = v7;
    LODWORD(v13) = v9;
    *(*(*(a1 + 40) + 8) + 40) = [FigCaptureSmartStyle styleWithCast:v5 intensity:v12 toneBias:v13 colorBias:v11];
    v4 = v14;
  }
}

void FigCaptureSmartStyleSettingsSetSystemStyle(uint64_t a1, uint64_t a2)
{
  if (FigCaptureSmartStyleSettingsPrewarm_onceToken != -1)
  {
    FigCaptureSmartStyleSettingsGetSystemStyle_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigCaptureSmartStyleSettingsSetSystemStyle_block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = a2;
  v4[5] = a1;
  dispatch_async(sFigCaptureSmartStyleQueue, v4);
}

uint64_t __FigCaptureSmartStyleSettingsSetSystemStyle_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@systemstyle", fsss_prefixedSystemStylePreferenceKeyForBundleID(*(a1 + 32), a2)];
  v4 = *(a1 + 40);
  if (v4)
  {
    v11[0] = @"CastType";
    v12[0] = [v4 cast];
    v11[1] = @"CastIntensity";
    v5 = MEMORY[0x1E696AD98];
    [*(a1 + 40) intensity];
    v12[1] = [v5 numberWithFloat:?];
    v11[2] = @"ToneBias";
    v6 = MEMORY[0x1E696AD98];
    [*(a1 + 40) toneBias];
    v12[2] = [v6 numberWithFloat:?];
    v11[3] = @"ColorBias";
    v7 = MEMORY[0x1E696AD98];
    [*(a1 + 40) colorBias];
    v12[3] = [v7 numberWithFloat:?];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(v3, v8, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  return CFPreferencesSynchronize(@"com.apple.cameracapture", *MEMORY[0x1E695E8B0], v9);
}

id FigCaptureSmartStyleSettingsGetSystemStyleBackgroundedTimestamp(uint64_t a1)
{
  if (FigCaptureSmartStyleSettingsPrewarm_onceToken != -1)
  {
    FigCaptureSmartStyleSettingsGetSystemStyle_cold_1();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigCaptureSmartStyleSettingsGetSystemStyleBackgroundedTimestamp_block_invoke;
  v4[3] = &unk_1E79904A0;
  v4[4] = a1;
  v4[5] = &v5;
  dispatch_sync(sFigCaptureSmartStyleQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1ACA083C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFPropertyListRef __FigCaptureSmartStyleSettingsGetSystemStyleBackgroundedTimestamp_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nonpersisting-global/%@systemstyle-backgrounded-timestamp", fsss_prefixedSystemStylePreferenceKeyForBundleID(*(a1 + 32), a2)];
  result = CFPreferencesCopyValue(v3, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void FigCaptureSmartStyleSettingsSetSystemStyleBackgroundedTimestamp(uint64_t a1, uint64_t a2)
{
  if (FigCaptureSmartStyleSettingsPrewarm_onceToken != -1)
  {
    FigCaptureSmartStyleSettingsGetSystemStyle_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __FigCaptureSmartStyleSettingsSetSystemStyleBackgroundedTimestamp_block_invoke;
  v4[3] = &unk_1E798F898;
  v4[4] = a2;
  v4[5] = a1;
  dispatch_async(sFigCaptureSmartStyleQueue, v4);
}

uint64_t __FigCaptureSmartStyleSettingsSetSystemStyleBackgroundedTimestamp_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nonpersisting-global/%@systemstyle-backgrounded-timestamp", fsss_prefixedSystemStylePreferenceKeyForBundleID(*(a1 + 32), a2)];
  v4 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(v3, *(a1 + 40), @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v5 = *MEMORY[0x1E695E8B0];

  return CFPreferencesSynchronize(@"com.apple.cameracapture", v5, v4);
}

void FigCaptureSmartStyleSettingsClearSystemStyleAndBackgroundedTimestampForBundleID(uint64_t a1)
{
  if (FigCaptureSmartStyleSettingsPrewarm_onceToken != -1)
  {
    FigCaptureSmartStyleSettingsGetSystemStyle_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigCaptureSmartStyleSettingsClearSystemStyleAndBackgroundedTimestampForBundleID_block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = a1;
  dispatch_async(sFigCaptureSmartStyleQueue, block);
}

uint64_t __FigCaptureSmartStyleSettingsClearSystemStyleAndBackgroundedTimestampForBundleID_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"nonpersisting-global/%@systemstyle-backgrounded-timestamp", fsss_prefixedSystemStylePreferenceKeyForBundleID(*(a1 + 32), a2)];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@systemstyle", fsss_prefixedSystemStylePreferenceKeyForBundleID(*(a1 + 32), v4)];
  v6 = *MEMORY[0x1E695E8B8];
  v7 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(v3, 0, @"com.apple.cameracapture", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v5, 0, @"com.apple.cameracapture", v6, v7);
  v8 = *MEMORY[0x1E695E8B0];

  return CFPreferencesSynchronize(@"com.apple.cameracapture", v8, v7);
}

dispatch_queue_t __FigCaptureSmartStyleSettingsPrewarm_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.figcapture.smartstylesettings", v0);
  sFigCaptureSmartStyleQueue = result;
  return result;
}

uint64_t fsss_prefixedSystemStylePreferenceKeyForBundleID(__CFString *a1, uint64_t a2)
{
  v3 = @"com.apple.facetime";
  if ((objc_msgSend_isEqualToString_(a1, a2, 0x1F2185490) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0 && (objc_msgSend_isEqualToString_(a1) & 1) == 0)
  {
    if ([(__CFString *)a1 hasPrefix:@"com.apple.WebKit"])
    {
      v3 = @"com.apple.mobilesafari";
    }

    else
    {
      v3 = a1;
    }
  }

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"unknown";
  }

  v5 = [(__CFString *)v4 stringByReplacingOccurrencesOfString:@"." withString:@"-"];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"smartStyle/%@/", v5];
}

uint64_t FigCaptureGetHardwareModelSpecificName(uint64_t a1, uint64_t a2)
{
  if (FigCaptureGetHardwareModelSpecificName_sModelNameCheckOnce != -1)
  {
    FigCaptureGetHardwareModelSpecificName_cold_1();
  }

  return FigCaptureGetHardwareModelSpecificName_sModelNameStr;
}

void __FigCaptureGetHardwareModelSpecificName_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v1);
      CFRelease(v1);
      if (MutableCopy)
      {
        goto LABEL_9;
      }
    }

    else
    {
      CFRelease(v1);
    }
  }

  v7 = 0u;
  v8 = 0u;
  *cStr = 0u;
  v6 = 0u;
  v4 = 64;
  sysctlbyname("hw.model", cStr, &v4, 0, 0);
  if (v4)
  {
    MutableCopy = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppendCString(MutableCopy, cStr, 0);
  }

  else
  {
    MutableCopy = 0;
  }

LABEL_9:
  FigCaptureGetHardwareModelSpecificName_sModelNameStr = MutableCopy;
}

void *FigCaptureGetModelSubdirPath(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CMCapture"];
  if (![MEMORY[0x1E696AC08] defaultManager])
  {
    FigCaptureGetModelSubdirPath_cold_4();
    return 0;
  }

  if (!v2)
  {
    FigCaptureGetModelSubdirPath_cold_3();
    return 0;
  }

  if (!a1)
  {
    FigCaptureGetModelSubdirPath_cold_2();
    return 0;
  }

  result = [objc_msgSend(v2 "resourcePath")];
  if (!result)
  {
    FigCaptureGetModelSubdirPath_cold_1();
    return 0;
  }

  return result;
}

uint64_t FigCaptureMetadataUtilitiesCreateExifCompositeImageMetadata(uint64_t a1, float a2, float a3, float a4)
{
  v8 = [MEMORY[0x1E695DF90] dictionary];
  [v8 setObject:&unk_1F2242B38 forKeyedSubscript:@"CompositeImage"];
  v14[0] = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v14[1] = &unk_1F2242B50;
  [v8 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v14, 2), @"SourceImageNumberOfCompositeImage"}];
  *&v9 = a2;
  v13[1] = [MEMORY[0x1E696AD98] numberWithFloat:{v9, &unk_1F224A7C0}];
  v13[2] = &unk_1F224A7C0;
  *&v10 = a4;
  v13[3] = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  v13[4] = &unk_1F224A7C0;
  *&v11 = a3;
  v13[5] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v13[6] = &unk_1F224A7C0;
  v13[7] = &unk_1F2242B50;
  [v8 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", v13, 8), @"SourceExposureTimesOfCompositeImage"}];
  return [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v8];
}

uint64_t FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored(int a1, int a2, int a3)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  v6 = a2 & ~a3;
  v7 = FigCaptureNormalizeAngle(a1);
  if (v6)
  {
    v8 = 4;
  }

  else
  {
    v8 = 3;
  }

  if (a2)
  {
    v9 = 7;
  }

  else
  {
    v9 = 8;
  }

  if (a3)
  {
    v9 = 6;
  }

  if (v7 != 270)
  {
    v9 = 0;
  }

  if (v7 != 180)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  if (a2)
  {
    v11 = 5;
  }

  else
  {
    v11 = 6;
  }

  if (a3)
  {
    v11 = 8;
  }

  if (v7 != 90)
  {
    v11 = 0;
  }

  if (v7)
  {
    v10 = v11;
  }

  if (v7 <= 179)
  {
    return v10;
  }

  else
  {
    return v8;
  }
}

uint64_t FigCaptureMetadataUtilitiesStillImageExifOrientationFromRotationDegreesAndMirrored(int a1, int a2, int a3, void *a4)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  v8 = [a4 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  if (v8)
  {

    return [v8 intValue];
  }

  else
  {

    return FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored(a1, a2, a3);
  }
}

void FigCaptureMetadataUtilitiesRotationDegreesAndMirroredFromExifOrientation(uint64_t result, int *a2, char *a3)
{
  v5 = result;
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  v6 = 0;
  if (v5 <= 4)
  {
    if (v5 == 2)
    {
      v6 = 0;
      v7 = 1;
      if (!a2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v5 != 3)
      {
        v7 = 0;
        if (v5 != 4)
        {
          goto LABEL_20;
        }

        LOBYTE(v6) = 1;
      }

      v7 = v6;
      v6 = 180;
      if (!a2)
      {
        goto LABEL_22;
      }
    }

LABEL_21:
    *a2 = v6;
    goto LABEL_22;
  }

  if (v5 <= 6)
  {
    if (v5 == 5)
    {
      LOBYTE(v6) = 1;
    }

    v7 = v6;
    v6 = 90;
LABEL_20:
    if (!a2)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v5 == 7)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = 0;
    if (v5 != 8)
    {
      goto LABEL_20;
    }
  }

  v7 = v6;
  v6 = 270;
  if (a2)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (a3)
  {
    *a3 = v7;
  }
}

uint64_t FigCaptureMetadataUtilitiesDevicePropertiesLockedForPanorama(CMAttachmentBearerRef target, int a2)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  v4 = CMGetAttachment(target, *off_1E798A3C8, 0);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 objectForKeyedSubscript:*off_1E798B098];
    v7 = [v5 objectForKeyedSubscript:*off_1E798B068];
    v8 = [v5 objectForKeyedSubscript:*off_1E798B058];
    v9 = [v5 objectForKeyedSubscript:*off_1E798B118];
    if (a2)
    {
      v10 = [v5 objectForKeyedSubscript:*off_1E798B448];
      v11 = [v5 objectForKeyedSubscript:*off_1E798B270];
    }

    else
    {
      v10 = *MEMORY[0x1E695E4D0];
      v11 = *MEMORY[0x1E695E4D0];
    }

    if (v6)
    {
      v12 = v7 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12 || v9 == 0 || v11 == 0 || v10 == 0)
    {
      FigCaptureMetadataUtilitiesDevicePropertiesLockedForPanorama_cold_2();
    }

    else if (CFBooleanGetValue(v6))
    {
      v16 = !CFBooleanGetValue(v7) && v8 == 0;
      if (!v16 && CFBooleanGetValue(v9) && CFBooleanGetValue(v11) && v10 == *MEMORY[0x1E695E4D0])
      {
        return 1;
      }
    }
  }

  else
  {
    FigCaptureMetadataUtilitiesDevicePropertiesLockedForPanorama_cold_3();
  }

  return 0;
}

id FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForPanorama(CMAttachmentBearerRef target, int a2)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  v4 = *off_1E798D158;
  v24 = *off_1E798D1C0;
  v25 = v4;
  v5 = *off_1E798D1A0;
  v26 = *off_1E798D1B8;
  v27 = v5;
  v6 = *off_1E798B098;
  v28 = *off_1E798D160;
  v29 = v6;
  v7 = *off_1E798B118;
  v30 = *off_1E798B068;
  v31 = v7;
  v8 = *off_1E798B0B8;
  v32 = *off_1E798B270;
  v33 = v8;
  v9 = *off_1E798B7B8;
  v34 = *off_1E798B7D0;
  v35 = v9;
  v10 = *off_1E798B448;
  v36 = *off_1E798B2A8;
  v37 = v10;
  v11 = *off_1E798B600;
  v38 = *off_1E798B058;
  v39 = v11;
  v12 = *off_1E798B0F8;
  v40 = *off_1E798B120;
  v41 = v12;
  v13 = *off_1E798B0F0;
  v42 = *off_1E798B0C0;
  v43 = v13;
  v14 = *off_1E798B0E0;
  v44 = *off_1E798B0E8;
  v45 = v14;
  v15 = *off_1E798B200;
  v46 = *off_1E798B540;
  v47 = v15;
  v16 = *off_1E798B2E8;
  v48 = *off_1E798B220;
  v49 = v16;
  v17 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (i = 0; i != 208; i += 8)
  {
    v20 = *(&v24 + i);
    v21 = [v17 objectForKeyedSubscript:{v20, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49}];
    if (v21)
    {
      [v18 setObject:v21 forKeyedSubscript:v20];
    }

    else if ((FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForPanorama_haveWarned & 1) == 0)
    {
      FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForPanorama_haveWarned = 1;
    }
  }

  if (FigCaptureMetadataUtilitiesDevicePropertiesLockedForPanorama(target, a2))
  {
    v22 = MEMORY[0x1E695E118];
  }

  else
  {
    v22 = MEMORY[0x1E695E110];
  }

  [v18 setObject:v22 forKeyedSubscript:*off_1E798CEE0];
  return v18;
}

void *FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForOfflineStillImageVideoStabilization(const void *a1)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *off_1E798B540;
  v4 = *off_1E798B208;
  v25 = *off_1E798B540;
  v26 = v4;
  v5 = *off_1E798B2A8;
  v27 = *off_1E798D180;
  v28 = v5;
  v6 = *off_1E798D168;
  v29 = *off_1E798B328;
  v30 = v6;
  v7 = *off_1E798D190;
  v31 = *off_1E798D1B0;
  v32 = v7;
  v8 = *off_1E798D188;
  v21 = *off_1E798D1C8;
  v22 = v8;
  v9 = *off_1E798B3D8;
  v23 = *off_1E798B6B0;
  v24 = v9;
  v10 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  for (i = 0; i != 64; i += 8)
  {
    v12 = *(&v25 + i);
    v13 = [v10 objectForKeyedSubscript:v12];
    if (v13)
    {
      [v2 setObject:v13 forKeyedSubscript:v12];
    }

    else if ((FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForOfflineStillImageVideoStabilization_haveWarned & 1) == 0)
    {
      FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForOfflineStillImageVideoStabilization_haveWarned = 1;
    }
  }

  for (j = 0; j != 32; j += 8)
  {
    v15 = *(&v21 + j);
    v16 = [v10 objectForKeyedSubscript:v15];
    if (v16)
    {
      [v2 setObject:v16 forKeyedSubscript:v15];
    }
  }

  v17 = [v10 objectForKeyedSubscript:v3];
  if (fcmu_darkShadeHorizontalCrop(v17, v18))
  {
    [v2 setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B7A0), *off_1E798B7A0}];
  }

  result = [v2 count];
  if (result)
  {
    v20 = objc_alloc(MEMORY[0x1E695DF20]);
    return [v20 initWithObjectsAndKeys:{v2, *off_1E798CED8, 0, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32}];
  }

  return result;
}

uint64_t fcmu_darkShadeHorizontalCrop(void *a1, uint64_t a2)
{
  isEqualToString = objc_msgSend_isEqualToString_(a1, a2, *off_1E798A0C0);
  if (!isEqualToString)
  {
    return 0;
  }

  FigCaptureGetModelSpecificName(isEqualToString, v3);
  v4 = objc_msgSend_isEqualToString_(@"D54p");
  if (v4)
  {
    return 64;
  }

  if ([&unk_1F2248280 containsObject:{FigCaptureGetModelSpecificName(v4, v5)}])
  {
    return 32;
  }

  else
  {
    return 0;
  }
}

uint64_t FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForAggd(CMAttachmentBearerRef target)
{
  if (qword_1ED844E88 != -1)
  {
    FigCaptureMetadataUtilitiesExifOrientationFromRotationDegreesAndMirrored_cold_1();
  }

  v2 = CMGetAttachment(target, *off_1E798A3C8, 0);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 objectForKeyedSubscript:*off_1E798B2A8];
    if (v4)
    {
      [v4 doubleValue];
      v6 = vcvtad_u64_f64(v5 * 8000.0);
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    v8 = [v3 objectForKeyedSubscript:*off_1E798B3B0];
    if (v8)
    {
      [v8 doubleValue];
      v7 |= 2uLL;
      v10 = llround(v9) << 16;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v3 objectForKeyedSubscript:*off_1E798B1C8];
    if (v11)
    {
      [v11 doubleValue];
      v7 |= 4uLL;
      v13 = vcvtad_u64_f64(v12 * 10.0) << 32;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v3 objectForKeyedSubscript:*off_1E798B360];
    if (v14 && ([v14 doubleValue], v16 = llround(v15 * 0.00390625 * 16.0), v16))
    {
      v7 |= 8uLL;
      v17 = v16 << 40;
    }

    else
    {
      v17 = 0;
    }

    if (objc_msgSend_isEqualToString_([v3 objectForKeyedSubscript:*off_1E798B6B0]))
    {
      v18 = [v3 objectForKeyedSubscript:*off_1E798B6A0];
      v19 = v18;
      if (v18)
      {
        v20 = [v18 objectForKeyedSubscript:*off_1E798C3E8];
        if (v20)
        {
          v21 = vcvtad_u64_f64(vcvtd_n_f64_s32([v20 intValue], 8uLL));
          v22 = 1;
        }

        else
        {
          v22 = 0;
          v21 = 0;
        }

        v25 = [v19 objectForKeyedSubscript:*off_1E798C3F0];
        if (v25)
        {
          v22 |= 2uLL;
          v24 = vcvtad_u64_f64(vcvtd_n_f64_s32([v25 intValue], 8uLL)) << 8;
        }

        else
        {
          v24 = 0;
        }

        v26 = [v19 objectForKeyedSubscript:*off_1E798C3A8];
        if (v26)
        {
          v22 |= 4uLL;
          v19 = ([v26 intValue] << 16);
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v24 = 0;
        v21 = 0;
        v22 = 0;
      }

      v27 = [v3 objectForKeyedSubscript:*off_1E798B3E0];
      if (v27)
      {
        v22 |= 8uLL;
        v28 = [v27 intValue] << 24;
      }

      else
      {
        v28 = 0;
      }

      v23 = (v19 + v28 + v21 + v24) | (v22 << 56);
    }

    else
    {
      v23 = 0;
    }

    v29 = [MEMORY[0x1E695DF90] dictionary];
    if (v29)
    {
      v30 = v29;
      if (((v10 | v6) + v13 + v17) | (v7 << 56))
      {
        [v29 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:"), *off_1E7989E38}];
      }

      if (v23)
      {
        [v30 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v23), *off_1E7989E40}];
      }

      if ([v30 count])
      {
        return [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v30, *off_1E798CED0, 0}];
      }
    }
  }

  else
  {
    FigCaptureMetadataUtilitiesCreateClientSpecifiedMetadataForAggd_cold_2();
  }

  return 0;
}

uint64_t FigCaptureMetadataGetManufacturerAndMarketingName(CMAttachmentBearerRef target, void *a2, void *a3, void *a4)
{
  if (FigCaptureMetadataGetManufacturerAndMarketingName_sOnceToken != -1)
  {
    FigCaptureMetadataGetManufacturerAndMarketingName_cold_1();
  }

  v8 = [objc_msgSend(CMGetAttachment(target *off_1E798A3C8];
  if (!BWDeviceTypeIsExtensionDeviceType(v8))
  {
    v10 = FigCaptureMetadataGetManufacturerAndMarketingName_sMarketingNameString;
    v9 = @"Apple";
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = CMGetAttachment(target, @"CameraManufacturer", 0);
  if ([-[__CFString lowercaseString](v9 "lowercaseString")])
  {
    v9 = @"Apple";
  }

  v10 = CMGetAttachment(target, @"CameraNonLocalizedName", 0);
  if (a3)
  {
LABEL_9:
    *a3 = [(__CFString *)v9 copy];
  }

LABEL_10:
  if (a4)
  {
    *a4 = [v10 copy];
  }

  if (a2)
  {
    *a2 = [FigCaptureMetadataGetManufacturerAndMarketingName_sMarketingNameString copy];
  }

  return 0;
}

uint64_t __FigCaptureMetadataGetManufacturerAndMarketingName_block_invoke()
{
  result = MGCopyAnswer();
  FigCaptureMetadataGetManufacturerAndMarketingName_sMarketingNameString = result;
  return result;
}

uint64_t __FigCaptureMetadataUtilitiesLensModelString_block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  _MergedGlobals_0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [_MergedGlobals_0 setMinimumFractionDigits:0];
  [_MergedGlobals_0 setMaximumFractionDigits:3];
  [_MergedGlobals_0 setLocale:v0];
  qword_1ED844E58 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [qword_1ED844E58 setMinimumFractionDigits:0];
  [qword_1ED844E58 setMaximumFractionDigits:2];
  v1 = qword_1ED844E58;

  return [v1 setLocale:v0];
}

CGFloat fcmu_rotationTransformInsideUnitSquare@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v3 = a1 * 0.0174532925;
  *a2 = 0u;
  CGAffineTransformMakeTranslation(a2, 0.5, 0.5);
  v4 = *(a2 + 16);
  *&v9.a = *a2;
  *&v9.c = v4;
  *&v9.tx = *(a2 + 32);
  CGAffineTransformRotate(&v10, &v9, v3);
  v5 = *&v10.c;
  *a2 = *&v10.a;
  *(a2 + 16) = v5;
  *(a2 + 32) = *&v10.tx;
  v6 = *(a2 + 16);
  *&v9.a = *a2;
  *&v9.c = v6;
  *&v9.tx = *(a2 + 32);
  CGAffineTransformTranslate(&v10, &v9, -0.5, -0.5);
  v7 = *&v10.c;
  *a2 = *&v10.a;
  *(a2 + 16) = v7;
  result = v10.tx;
  *(a2 + 32) = *&v10.tx;
  return result;
}

uint64_t __FigCaptureMetadataUtilitiesCreateMetadataAttachments_block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  v1 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  qword_1ED844E68 = MGCopyAnswer();
  v2 = MGCopyAnswer();
  v3 = v2;
  if (qword_1ED844E68)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    FigCaptureMetadataUtilitiesCreateMetadataAttachments_sSoftwareProductBuildVersionString = [v5 initWithFormat:@"%@ (%@)", qword_1ED844E68, v3];
  }

  qword_1ED844E70 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [qword_1ED844E70 setTimeStyle:0];
  [qword_1ED844E70 setDateStyle:0];
  [qword_1ED844E70 setDateFormat:@"yyyy:MM:dd HH:mm:ss"];
  [qword_1ED844E70 setLocale:v0];
  [qword_1ED844E70 setCalendar:v1];
  qword_1ED844E78 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [qword_1ED844E78 setTimeStyle:0];
  [qword_1ED844E78 setDateStyle:0];
  [qword_1ED844E78 setDateFormat:@"SSS"];
  [qword_1ED844E78 setLocale:v0];
  v6 = qword_1ED844E78;

  return [v6 setCalendar:v1];
}

__CFDictionary *fcmu_makerNoteMetadata(void *a1, const void *a2, const void *a3, const void *a4)
{
  v9 = *off_1E798A3C8;
  v10 = CMGetAttachment(a1, *off_1E798A3C8, 0);
  if (!v10)
  {
    v11 = 0;
    if (!CMGetAttachment(a1, *MEMORY[0x1E6960498], 0))
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v207, v208, v210, v212, theDict, key);
      return 0;
    }

    return v11;
  }

  v13 = v10;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  if (!v11)
  {
    fcmu_makerNoteMetadata_cold_2();
    return v11;
  }

  v14 = [CMGetAttachment(a1 @"StillSettings"];
  CFDictionaryAddValue(v11, *off_1E7989D88, &unk_1F2242C10);
  v15 = CMGetAttachment(a1, *off_1E798A420, 0);
  if (v15 && (v16 = CFRetain(v15)) != 0 || (CMSampleBufferGetPresentationTimeStamp(&time, a1), v248 = time.value, timescale = time.timescale, (time.flags & 1) != 0) && (v17 = *MEMORY[0x1E695E480], time.value = v248, time.timescale = timescale, (v16 = CMTimeCopyAsDictionary(&time, v17)) != 0))
  {
    v18 = v16;
    CFDictionaryAddValue(v11, *off_1E7989D78, v16);
    CFRelease(v18);
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B070, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989A00, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B078, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989A08, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B088, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989A10, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B048, &value))
  {
    CFDictionaryAddValue(v11, *off_1E79899F0, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B050, &value))
  {
    CFDictionaryAddValue(v11, *off_1E79899F8, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B0A0, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989A68, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A658, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989AC8, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A840, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989C48, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B6B0, &value))
  {
    v19 = value;
    if ([value isEqual:*off_1E798C488])
    {
      v20 = &unk_1F2242B50;
    }

    else if ([v19 isEqual:*off_1E798C478])
    {
      v20 = &unk_1F2242B68;
    }

    else if ([v19 isEqual:*off_1E798C470])
    {
      v20 = &unk_1F2242BB0;
    }

    else if ([v19 isEqual:*off_1E798C490])
    {
      v20 = &unk_1F2242B38;
    }

    else if ([v19 isEqual:*off_1E798C498])
    {
      v20 = &unk_1F2242C28;
    }

    else
    {
      if (![v19 isEqual:*off_1E798C480])
      {
        goto LABEL_41;
      }

      v20 = &unk_1F2242C40;
    }

    CFDictionaryAddValue(v11, *off_1E7989BD0, v20);
  }

LABEL_41:
  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B370, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989B00, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A670, &value))
  {
    if ([v14 captureType] == 10)
    {
      CFDictionaryAddValue(v11, *off_1E7989D80, value);
    }

    CFDictionaryAddValue(v11, *off_1E7989AF0, value);
  }

  obj = v14;
  v21 = 0x1E696A000;
  v218 = v13;
  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B6A0, &value))
  {
    v22 = v11;
    v23 = CFDictionaryGetValue(value, *off_1E798C3E8);
    v24 = CFDictionaryGetValue(value, *off_1E798C3F0);
    v25 = CFDictionaryGetValue(value, *off_1E798C3A8);
    if (v23 && v24)
    {
      [v23 floatValue];
      v27 = v26 * 0.0039062;
      [v24 floatValue];
      v29 = v28 * 0.0039062;
      v30 = *off_1E7989CE8;
      *&v31 = v27;
      v245[0] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      *&v32 = v29;
      v245[1] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
      CFDictionaryAddValue(v22, v30, [MEMORY[0x1E695DEC8] arrayWithObjects:v245 count:2]);
    }

    v11 = v22;
    if (v25)
    {
      CFDictionaryAddValue(v22, *off_1E7989CE0, v25);
    }

    if (fcmu_makerNoteMetadata_didAttemptToGetOISExternalOffsetDefault)
    {
      AppBooleanValue = fcmu_makerNoteMetadata_attachOISExternalOffset;
    }

    else
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"attachOISExternalOffset", @"com.apple.coremedia", 0);
      fcmu_makerNoteMetadata_attachOISExternalOffset = AppBooleanValue;
      fcmu_makerNoteMetadata_didAttemptToGetOISExternalOffsetDefault = 1;
    }

    v21 = 0x1E696A000uLL;
    if (AppBooleanValue)
    {
      v34 = CFDictionaryGetValue(value, *off_1E798C3C8);
      v35 = CFDictionaryGetValue(value, *off_1E798C3D0);
      if (v34)
      {
        v36 = v35;
        if (v35)
        {
          [v34 floatValue];
          v38 = v37 * 0.0039062;
          [v36 floatValue];
          v40 = v39 * 0.0039062;
          v41 = *off_1E7989CD8;
          *&v42 = v38;
          v244[0] = [MEMORY[0x1E696AD98] numberWithFloat:v42];
          *&v43 = v40;
          v244[1] = [MEMORY[0x1E696AD98] numberWithFloat:v43];
          CFDictionaryAddValue(v11, v41, [MEMORY[0x1E695DEC8] arrayWithObjects:v244 count:2]);
        }
      }
    }
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B3E0, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989CF0, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B6C0, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989CF8, value);
  }

  v44 = CMGetAttachment(a1, @"StillImageCaptureType", 0);
  value = v44;
  if (v44)
  {
    CFDictionaryAddValue(v11, *off_1E7989D08, v44);
  }

  if (a2)
  {
    CFDictionaryAddValue(v11, *off_1E7989A78, a2);
    if (!a3)
    {
LABEL_68:
      if (!a4)
      {
        goto LABEL_69;
      }

      goto LABEL_73;
    }
  }

  else if (!a3)
  {
    goto LABEL_68;
  }

  CFDictionaryAddValue(v11, *off_1E7989B10, a3);
  if (!a4)
  {
LABEL_69:
    if (!obj)
    {
      goto LABEL_76;
    }

    goto LABEL_74;
  }

LABEL_73:
  CFDictionaryAddValue(v11, *off_1E7989BE0, a4);
  if (!obj)
  {
    goto LABEL_76;
  }

LABEL_74:
  CFDictionaryAddValue(v11, *off_1E7989D00, [*(v21 + 3480) numberWithUnsignedLongLong:{objc_msgSend(obj, "captureFlags")}]);
  CFDictionaryAddValue(v11, *off_1E7989D30, [*(v21 + 3480) numberWithUnsignedLongLong:{objc_msgSend(obj, "sceneFlags")}]);
  CFDictionaryAddValue(v11, *off_1E7989D28, [*(v21 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(obj, "metadata"), "snrType")}]);
  v45 = *off_1E7989D20;
  v46 = *(v21 + 3480);
  [objc_msgSend(obj "metadata")];
  CFDictionaryAddValue(v11, v45, [v46 numberWithFloat:?]);
  CFDictionaryAddValue(v11, *off_1E7989D40, [*(v21 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(obj, "metadata"), "systemPressureLevel")}]);
  CFDictionaryAddValue(v11, *off_1E7989A98, [*(v21 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(obj, "metadata"), "cameraControlsStatisticsMaster")}]);
  CFDictionaryAddValue(v11, *off_1E7989D38, [*(v21 + 3480) numberWithUnsignedInt:{objc_msgSend(objc_msgSend(obj, "metadata"), "streamingTime")}]);
  if ([objc_msgSend(obj "metadata")])
  {
    CFDictionaryAddValue(v11, *off_1E7989D90, [*(v21 + 3480) numberWithInt:{objc_msgSend(objc_msgSend(obj, "metadata"), "zeroShutterLagFailureReason")}]);
  }

LABEL_76:
  valuePtr = 0;
  v47 = CMGetAttachment(a1, @"StillImageProcessingFlags", 0);
  value = v47;
  if (v47)
  {
    CFNumberGetValue(v47, kCFNumberSInt32Type, &valuePtr);
    v48 = value;
  }

  else
  {
    v48 = &unk_1F2242BF8;
    value = &unk_1F2242BF8;
  }

  CFDictionaryAddValue(v11, *off_1E7989D10, v48);
  keya = *off_1E798B1B8;
  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B1B8, &value) && ([CMGetAttachment(a1 @"HasUnreliableBracketingMetadata"] & 1) == 0)
  {
    CFDictionaryAddValue(v11, *off_1E7989A80, value);
  }

  v49 = CMGetAttachment(a1, *off_1E798D348, 0);
  value = v49;
  if (v49)
  {
    CFDictionaryAddValue(v11, *off_1E7989B50, v49);
  }

  if (fcmu_makerNoteMetadata_sFeatureFlagsEligibilityOnceToken != -1)
  {
    fcmu_makerNoteMetadata_cold_1();
  }

  v50 = fcmu_makerNoteMetadata_sEligibleForLightingEffects == 1 && (valuePtr & 0x20) != 0 && [objc_msgSend(CMGetAttachment(a1 *off_1E798D2B8] == 1;
  CFDictionaryAddValue(v11, *off_1E7989C18, [*(v21 + 3480) numberWithUnsignedInt:v50]);
  v51 = CMGetAttachment(a1, @"StillImageSettings", 0);
  if ([v51 captureRequestIdentifier])
  {
    CFDictionaryAddValue(v11, *off_1E7989B08, [v51 captureRequestIdentifier]);
  }

  v52 = [CMGetAttachment(a1 @"PhotoManifest"];
  if ([v52 photoIdentifier])
  {
    CFDictionaryAddValue(v11, *off_1E7989BD8, [v52 photoIdentifier]);
  }

  v53 = CFDictionaryGetValue(v13, *off_1E798B1D0);
  value = v53;
  if (v53)
  {
    CFDictionaryAddValue(v11, *off_1E7989A88, v53);
  }

  v54 = *off_1E798B190;
  v55 = CFDictionaryGetValue(v13, *off_1E798B190);
  value = v55;
  if (v55)
  {
    CFDictionaryAddValue(v11, *off_1E7989A70, v55);
  }

  v56 = CFDictionaryGetValue(v13, *off_1E798B4A8);
  value = v56;
  if (v56 || (v56 = CFDictionaryGetValue(v13, *off_1E798B208), (value = v56) != 0))
  {
    CFDictionaryAddValue(v11, *off_1E7989AD8, v56);
  }

  v57 = CMGetAttachment(a1, @"MeteorHeadroom", 0);
  value = v57;
  if (v57)
  {
    CFDictionaryAddValue(v11, *off_1E7989B60, v57);
  }

  v58 = CMGetAttachment(a1, @"MeteorPlusGainMapAverage", 0);
  value = v58;
  if (v58)
  {
    CFDictionaryAddValue(v11, *off_1E7989B68, v58);
  }

  AttachedMedia = BWSampleBufferGetAttachedMedia(a1, 0x1F217BF50);
  if (AttachedMedia)
  {
    v60 = CMGetAttachment(AttachedMedia, v9, 0);
  }

  else
  {
    v60 = CFDictionaryGetValue(v13, *off_1E798A680);
  }

  v61 = v60;
  if (v60)
  {
    v62 = [objc_msgSend(v60 objectForKeyedSubscript:{*off_1E798A688), "intValue"}];
    [obj captureFlags];
    if (v62 >= 0x20000)
    {
      v63 = [v61 objectForKeyedSubscript:*off_1E798A798];
      value = v63;
      if (v63)
      {
        CFDictionarySetValue(v11, *off_1E7989B60, v63);
      }

      v64 = [v61 objectForKeyedSubscript:*off_1E798A790];
      value = v64;
      if (v64)
      {
        CFDictionarySetValue(v11, *off_1E7989B68, v64);
      }
    }
  }

  v65 = CFDictionaryGetValue(v13, *off_1E798B180);
  v66 = CFDictionaryGetValue(v13, *off_1E798B2F0);
  v67 = CFDictionaryGetValue(v13, v54);
  v68 = [v65 objectForKeyedSubscript:*off_1E798AAF8];
  if (v66 && v67)
  {
    v69 = v68;
    v70 = [v66 unsignedIntValue];
    v71 = [v67 unsignedIntValue];
    [v69 floatValue];
    v73 = vcvts_n_u32_f32(v72, 8uLL) & 0xFFFFFFF | (v71 << 28);
    v74 = *off_1E7989A20;
    v242[0] = [*(v21 + 3480) numberWithUnsignedInt:v70];
    v242[1] = [*(v21 + 3480) numberWithUnsignedInt:v73];
    CFDictionaryAddValue(v11, v74, [MEMORY[0x1E695DEC8] arrayWithObjects:v242 count:2]);
  }

  if (v65)
  {
    if (fcmu_makerNoteMetadata_didAttemptToGetAFExternalOffsetDefault)
    {
      v75 = fcmu_makerNoteMetadata_attachAFExternalOffset;
    }

    else
    {
      v75 = CFPreferencesGetAppBooleanValue(@"attachAFExternalOffset", @"com.apple.coremedia", 0);
      fcmu_makerNoteMetadata_attachAFExternalOffset = v75;
      fcmu_makerNoteMetadata_didAttemptToGetAFExternalOffsetDefault = 1;
    }

    v21 = 0x1E696A000uLL;
    if (v75)
    {
      v76 = [v65 objectForKeyedSubscript:*off_1E798AB08];
      v77 = [v65 objectForKeyedSubscript:*off_1E798AA98];
      v78 = [v65 objectForKeyedSubscript:*off_1E798AB00];
      if (v76)
      {
        if (v77)
        {
          v79 = v78;
          if (v78)
          {
            [v76 floatValue];
            v81 = v80;
            [v77 floatValue];
            v83 = v82;
            [v79 floatValue];
            v85 = v84;
            v86 = *off_1E7989A18;
            LODWORD(v87) = v81;
            v241[0] = [MEMORY[0x1E696AD98] numberWithFloat:v87];
            LODWORD(v88) = v83;
            v241[1] = [MEMORY[0x1E696AD98] numberWithFloat:v88];
            LODWORD(v89) = v85;
            v241[2] = [MEMORY[0x1E696AD98] numberWithFloat:v89];
            CFDictionaryAddValue(v11, v86, [MEMORY[0x1E695DEC8] arrayWithObjects:v241 count:3]);
          }
        }
      }
    }
  }

  v90 = CMGetAttachment(a1, @"StillImageProcessingHomography", 0);
  if ([v90 count] == 9)
  {
    v91 = [MEMORY[0x1E695DF88] dataWithLength:44];
    v92 = [v91 mutableBytes];
    v93 = 0;
    *v92 = 0x800000001;
    v94 = v92 + 1;
    do
    {
      [objc_msgSend(v90 objectAtIndexedSubscript:{v93), "floatValue"}];
      *(v94 + v93++) = v95;
    }

    while (v93 != 9);
    CFDictionaryAddValue(v11, *off_1E7989D18, v91);
  }

  v96 = CMGetAttachment(a1, @"IntelligentDistortionCorrectionMakernoteEntry", 0);
  value = v96;
  if (v96)
  {
    CFDictionaryAddValue(v11, *off_1E7989B18, v96);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A7C0, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989B90, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A7A8, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989B78, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A7B0, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989B80, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A7B8, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989B88, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A6D8, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989AF8, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B4B8, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989B58, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B460, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989B20, value);
  }

  v97 = CFDictionaryGetValue(v13, *off_1E798B770);
  v98 = [v97 objectForKeyedSubscript:*off_1E798C7D0];
  value = v98;
  if (v98)
  {
    CFDictionaryAddValue(v11, *off_1E7989D60, v98);
  }

  v99 = [v97 objectForKeyedSubscript:*off_1E798C7E0];
  value = v99;
  if (v99)
  {
    CFDictionaryAddValue(v11, *off_1E7989D68, v99);
  }

  v100 = [v97 objectForKeyedSubscript:*off_1E798C7E8];
  value = v100;
  if (v100)
  {
    CFDictionaryAddValue(v11, *off_1E7989D70, v100);
  }

  v101 = [v97 objectForKeyedSubscript:*off_1E798C7B0];
  value = v101;
  if (v101)
  {
    CFDictionaryAddValue(v11, *off_1E7989D48, v101);
  }

  v102 = [v97 objectForKeyedSubscript:*off_1E798C7C0];
  value = v102;
  if (v102)
  {
    CFDictionaryAddValue(v11, *off_1E7989D50, v102);
  }

  v103 = [v97 objectForKeyedSubscript:*off_1E798C7C8];
  value = v103;
  if (v103)
  {
    CFDictionaryAddValue(v11, *off_1E7989D58, v103);
  }

  v104 = CFDictionaryGetValue(v13, *off_1E798B468);
  v105 = [v104 objectForKeyedSubscript:*off_1E798AE60];
  value = v105;
  if (v105)
  {
    CFDictionaryAddValue(v11, *off_1E7989B30, v105);
  }

  v106 = [v104 objectForKeyedSubscript:*off_1E798AE68];
  value = v106;
  if (v106)
  {
    CFDictionaryAddValue(v11, *off_1E7989B38, v106);
  }

  v107 = [v104 objectForKeyedSubscript:*off_1E798AE50];
  value = v107;
  if (v107)
  {
    CFDictionaryAddValue(v11, *off_1E7989B28, v107);
  }

  v108 = [v104 objectForKeyedSubscript:*off_1E798AE78];
  value = v108;
  if (v108)
  {
    CFDictionaryAddValue(v11, *off_1E7989B40, v108);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_174;
  }

  v109 = [v51 semanticStyle];
  if ((valuePtr & 0x200000) != 0 && (v110 = [v51 smartStyle]) != 0 && (valuePtr & 0x10000) == 0)
  {
    v111 = v110;
    LOBYTE(time.value) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    LOBYTE(v248) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v112 = FigCFDictionaryGetValue();
    v113 = *off_1E7989CC0;
    v240[0] = &unk_1F2242B68;
    v114 = *off_1E7989CC8;
    v239[0] = v113;
    v239[1] = v114;
    v115 = *(v21 + 3480);
    [v111 toneBias];
    v240[1] = [v115 numberWithFloat:?];
    v239[2] = *off_1E7989CA0;
    v116 = *(v21 + 3480);
    [v111 colorBias];
    v240[2] = [v116 numberWithFloat:?];
    v239[3] = *off_1E7989CB0;
    v117 = *(v21 + 3480);
    [v111 intensity];
    v240[3] = [v117 numberWithFloat:?];
    v239[4] = *off_1E7989C98;
    v240[4] = [*(v21 + 3480) numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E6991718], "makerNoteTagForSmartStyleCastType:smartStyleVersion:", objc_msgSend(v111, "cast"), 1)}];
    v239[5] = *off_1E7989CB8;
    v240[5] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:LOBYTE(time.value)];
    v239[6] = *off_1E7989CD0;
    v21 = 0x1E696A000uLL;
    v240[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x1E6991718], "makerNoteTagForSmartStyleTuningType:smartStyleVersion:", v112, 1)}];
    v239[7] = *off_1E7989CA8;
    v240[7] = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v248];
    v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v240 forKeys:v239 count:8];
    v119 = off_1E7989C90;
  }

  else
  {
    if (!v109)
    {
      goto LABEL_174;
    }

    v120 = *off_1E7989C58;
    v238[0] = &unk_1F2242B68;
    v121 = *off_1E7989C60;
    v237[0] = v120;
    v237[1] = v121;
    v122 = *(v21 + 3480);
    [v109 toneBias];
    v238[1] = [v122 numberWithFloat:?];
    v237[2] = *off_1E7989C68;
    v123 = *(v21 + 3480);
    [v109 warmthBias];
    v238[2] = [v123 numberWithFloat:?];
    v118 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v238 forKeys:v237 count:3];
    v119 = off_1E7989C50;
  }

  CFDictionaryAddValue(v11, *v119, v118);
LABEL_174:
  v124 = [(__CFDictionary *)v13 objectForKeyedSubscript:*off_1E798B540];
  if (objc_msgSend_isEqualToString_(v124) & 1) != 0 || (objc_msgSend_isEqualToString_(v124) & 1) != 0 || (objc_msgSend_isEqualToString_(v124))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v124);
  }

  -[__CFDictionary setObject:forKeyedSubscript:](v11, "setObject:forKeyedSubscript:", [*(v21 + 3480) numberWithBool:isEqualToString], *off_1E7989AE8);
  v127 = fcmu_cameraFromPortTypeAndCameraLocation(v124, v126);
  if (v127)
  {
    -[__CFDictionary setObject:forKeyedSubscript:](v11, "setObject:forKeyedSubscript:", [*(v21 + 3480) numberWithInt:v127], *off_1E7989A90);
  }

  v128 = CMGetAttachment(a1, @"FocusPixelBlurScoreResult", 0);
  if (v128)
  {
    v129 = *off_1E7989AD0;
    v130 = *(v21 + 3480);
    [v128 score];
    CFDictionaryAddValue(v11, v129, [v130 numberWithFloat:?]);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B678, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989C80, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B660, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989C78, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B690, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989C88, value);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B528, &value))
  {
    v211 = v65;
    v213 = v124;
    theDicta = v11;
    v131 = value;
    v209 = [MEMORY[0x1E695DF90] dictionary];
    [v209 setObject:objc_msgSend(v131 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B980), *off_1E7989C00}];
    v132 = [MEMORY[0x1E695DF70] array];
    v133 = [v131 objectForKeyedSubscript:*off_1E798B960];
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    obja = v133;
    v134 = [v133 countByEnumeratingWithState:&v233 objects:v232 count:16];
    if (v134)
    {
      v135 = v134;
      v136 = *v234;
      v137 = *off_1E7989C10;
      v138 = *off_1E798B958;
      v139 = *off_1E7989C08;
      v140 = *off_1E798B950;
      do
      {
        for (i = 0; i != v135; ++i)
        {
          if (*v234 != v136)
          {
            objc_enumerationMutation(obja);
          }

          v142 = *(*(&v233 + 1) + 8 * i);
          v230[0] = v137;
          v143 = [v142 objectForKeyedSubscript:v138];
          v230[1] = v139;
          v231[0] = v143;
          v231[1] = [v142 objectForKeyedSubscript:v140];
          [v132 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v231, v230, 2)}];
        }

        v135 = [obja countByEnumeratingWithState:&v233 objects:v232 count:16];
      }

      while (v135);
    }

    [v209 setObject:v132 forKeyedSubscript:*off_1E7989BF0];
    [v209 setObject:objc_msgSend(v131 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B978), *off_1E7989BF8}];
    v11 = theDicta;
    CFDictionaryAddValue(theDicta, *off_1E7989BE8, v209);
    v13 = v218;
    v21 = 0x1E696A000;
    v65 = v211;
    v124 = v213;
  }

  if (FigCFDictionaryGetValueIfPresent())
  {
    v144 = value;
  }

  else
  {
    v144 = 0;
  }

  if (v65 | v144)
  {
    v145 = [MEMORY[0x1E695DF90] dictionary];
    v146 = [MEMORY[0x1E695DF90] dictionary];
    if (v65)
    {
      if ([objc_msgSend(v65 objectForKeyedSubscript:{*off_1E798AAF0), "BOOLValue"}])
      {
        v147 = 0x10000;
      }

      else
      {
        v147 = 0;
      }

      if ([objc_msgSend(v65 objectForKeyedSubscript:{*off_1E798AAC8), "BOOLValue"}])
      {
        v148 = 0x20000;
      }

      else
      {
        v148 = 0;
      }

      v149 = v148 | v147;
      if ([objc_msgSend(v65 objectForKeyedSubscript:{*off_1E798AAA8), "BOOLValue"}])
      {
        v150 = 0x40000;
      }

      else
      {
        v150 = 0;
      }

      if ([objc_msgSend(v65 objectForKeyedSubscript:{*off_1E798AAA0), "BOOLValue"}])
      {
        v151 = 0x80000;
      }

      else
      {
        v151 = 0;
      }

      v152 = v149 | v150 | v151;
      [v145 setObject:objc_msgSend(v65 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AA88), *off_1E7989A30}];
      [v146 setObject:objc_msgSend(v65 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AAE8), *off_1E7989A50}];
    }

    else
    {
      v152 = 0;
    }

    if (v144)
    {
      v153 = [objc_msgSend(v144 objectForKeyedSubscript:{*off_1E798C440), "BOOLValue"}];
      if ([objc_msgSend(v144 objectForKeyedSubscript:{*off_1E798C400), "BOOLValue"}])
      {
        v154 = 2;
      }

      else
      {
        v154 = 0;
      }

      if ([objc_msgSend(v144 objectForKeyedSubscript:{*off_1E798C3C0), "BOOLValue"}])
      {
        v155 = 4;
      }

      else
      {
        v155 = 0;
      }

      if ([objc_msgSend(v144 objectForKeyedSubscript:{*off_1E798C3B8), "BOOLValue"}])
      {
        v156 = 8;
      }

      else
      {
        v156 = 0;
      }

      v152 = v154 | v153 | v155 | v156 | v152;
      [v145 setObject:objc_msgSend(v144 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C3B0), *off_1E7989A38}];
      [v146 setObject:objc_msgSend(v144 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C430), *off_1E7989A58}];
      [v146 setObject:objc_msgSend(v144 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798C438), *off_1E7989A60}];
    }

    v13 = v218;
    v21 = 0x1E696A000uLL;
    CFDictionaryAddValue(v11, *off_1E7989A40, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v152]);
    if ([v145 count])
    {
      CFDictionaryAddValue(v11, *off_1E7989A28, v145);
    }

    if ([v146 count])
    {
      CFDictionaryAddValue(v11, *off_1E7989A48, v146);
    }
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798B760, &value) && (FigCFNumberGetSInt32() & 0x80000000) == 0 && CFDictionaryGetValueIfPresent(v13, *off_1E798B648, &value) || CFDictionaryGetValueIfPresent(v13, keya, &value) && (FigCFNumberGetSInt32() & 0x80000000) == 0 && CFDictionaryGetValueIfPresent(v13, *off_1E798B650, &value))
  {
    if (FigCFArrayGetIntAtIndex() && FigCFArrayGetIntAtIndex() && FigCFArrayGetIntAtIndex() && FigCFArrayGetIntAtIndex())
    {
      v157 = vaddvq_s32(*&time.value);
      v158 = v157 + 5;
      if (v157 + 2 >= 0)
      {
        v158 = v157 + 2;
      }

      CFDictionaryAddValue(v11, *off_1E7989C70, [MEMORY[0x1E696AD98] numberWithInt:(v158 >> 2)]);
    }

    v21 = 0x1E696A000uLL;
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A7C8, &value))
  {
    LODWORD(time.value) = 0;
    FigCFDictionaryGetIntIfPresent();
    if (LODWORD(time.value) == 1)
    {
      LODWORD(v248) = 0;
      v229 = 0;
      v228 = 0;
      FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
      v160 = FigCFDictionaryGetFloatIfPresent();
      v161 = FigCFDictionaryGetFloatIfPresent();
      v162 = FigCFDictionaryGetFloatIfPresent();
      if (FloatIfPresent)
      {
        if (v160 & 1) != 0 && (v161 & 1) != 0 && (v162)
        {
          v164 = *off_1E7989B98;
          v165 = *off_1E7989BC0;
          v227[0] = &unk_1F2242B68;
          v166 = *off_1E7989BA0;
          v226[0] = v165;
          v226[1] = v166;
          LODWORD(v163) = v248;
          v227[1] = [*(v21 + 3480) numberWithFloat:v163];
          v226[2] = *off_1E7989BA8;
          LODWORD(v167) = HIDWORD(v229);
          v227[2] = [*(v21 + 3480) numberWithFloat:v167];
          v226[3] = *off_1E7989BB8;
          LODWORD(v168) = v229;
          v227[3] = [*(v21 + 3480) numberWithFloat:v168];
          v226[4] = *off_1E7989BB0;
          LODWORD(v169) = v228;
          v227[4] = [*(v21 + 3480) numberWithFloat:v169];
          CFDictionaryAddValue(v11, v164, [MEMORY[0x1E695DF20] dictionaryWithObjects:v227 forKeys:v226 count:5]);
        }
      }
    }
  }

  v225 = 0;
  if (FigCaptureWritePackedValueForModuleAndCalibrationValidationStatusesFromMetadata(v13, &v225))
  {
    -[__CFDictionary setObject:forKeyedSubscript:](v11, "setObject:forKeyedSubscript:", [*(v21 + 3480) numberWithUnsignedInt:v225], *off_1E7989B70);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A5F0, &value))
  {
    LOBYTE(v248) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    LODWORD(time.value) = 0;
    FigCFDictionaryGetInt32IfPresent();
    v170 = *off_1E7989AB0;
    v223[0] = *off_1E7989AB8;
    v224[0] = [*(v21 + 3480) numberWithUnsignedChar:v248];
    v223[1] = *off_1E7989AC0;
    v224[1] = [*(v21 + 3480) numberWithInt:LODWORD(time.value)];
    CFDictionaryAddValue(v11, v170, [MEMORY[0x1E695DF20] dictionaryWithObjects:v224 forKeys:v223 count:2]);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A7F8, &value))
  {
    LOBYTE(v229) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    LODWORD(time.value) = 0;
    FigCFDictionaryGetInt32IfPresent();
    LODWORD(v248) = 0;
    FigCFDictionaryGetFloatIfPresent();
    HIDWORD(v229) = 0;
    FigCFDictionaryGetFloatIfPresent();
    v171 = *off_1E7989C20;
    v221[0] = *off_1E7989C28;
    v222[0] = [*(v21 + 3480) numberWithUnsignedChar:v229];
    v221[1] = *off_1E7989C30;
    v222[1] = [*(v21 + 3480) numberWithInt:LODWORD(time.value)];
    v221[2] = *off_1E7989C40;
    LODWORD(v172) = v248;
    v222[2] = [*(v21 + 3480) numberWithFloat:v172];
    v221[3] = *off_1E7989C38;
    LODWORD(v173) = HIDWORD(v229);
    v222[3] = [*(v21 + 3480) numberWithFloat:v173];
    CFDictionaryAddValue(v11, v171, [MEMORY[0x1E695DF20] dictionaryWithObjects:v222 forKeys:v221 count:4]);
  }

  if (CFDictionaryGetValueIfPresent(v13, *off_1E798A668, &value))
  {
    CFDictionaryAddValue(v11, *off_1E7989AE0, value);
  }

  v174 = CFDictionaryGetValue(v13, *off_1E798A750);
  if (v174)
  {
    v176 = v174;
    v177 = [v174 objectForKeyedSubscript:*off_1E798A770];
    if (v177)
    {
      v178 = v177;
      [v177 floatValue];
      if ((v179 * 100.0) > 100.0 || ([v178 floatValue], (v180 * 100.0) >= 0.0))
      {
        [v178 floatValue];
        if ((v182 * 100.0) <= 100.0)
        {
          [v178 floatValue];
          v181 = (v183 * 100.0);
        }

        else
        {
          v181 = 100;
        }
      }

      else
      {
        v181 = 0;
      }
    }

    else
    {
      v181 = 255;
    }

    v184 = [v176 objectForKeyedSubscript:*off_1E798A768];
    if (v184)
    {
      v185 = v184;
      [v184 floatValue];
      if ((v186 * 100.0) > 100.0 || ([v185 floatValue], (v187 * 100.0) >= 0.0))
      {
        [v185 floatValue];
        if ((v189 * 100.0) <= 100.0)
        {
          [v185 floatValue];
          v188 = (v190 * 100.0) << 8;
        }

        else
        {
          v188 = 25600;
        }
      }

      else
      {
        v188 = 0;
      }
    }

    else
    {
      v188 = 65280;
    }

    v191 = [v176 objectForKeyedSubscript:*off_1E798A760];
    if (v191)
    {
      v192 = v191;
      [v191 floatValue];
      if ((v193 * 100.0) > 100.0 || ([v192 floatValue], (v194 * 100.0) >= 0.0))
      {
        [v192 floatValue];
        if ((v196 * 100.0) <= 100.0)
        {
          [v192 floatValue];
          v195 = (v197 * 100.0) << 16;
        }

        else
        {
          v195 = 6553600;
        }
      }

      else
      {
        v195 = 0;
      }
    }

    else
    {
      v195 = 16711680;
    }

    v198 = [v176 objectForKeyedSubscript:*off_1E798A758];
    if (v198)
    {
      v199 = v198;
      [v198 floatValue];
      if ((v200 * 100.0) > 100.0 || ([v199 floatValue], (v201 * 100.0) >= 0.0))
      {
        [v199 floatValue];
        if ((v203 * 100.0) <= 100.0)
        {
          [v199 floatValue];
          v202 = (v204 * 100.0) << 24;
        }

        else
        {
          v202 = 1677721600;
        }
      }

      else
      {
        v202 = 0;
      }
    }

    else
    {
      v202 = -16777216;
    }

    CFDictionaryAddValue(v11, *off_1E7989B48, [*(v21 + 3480) numberWithUnsignedInt:v188 | v181 | v195 | v202]);
  }

  v205 = FigCaptureNominalFocalLengthIn35mmFilmForPortType(v124, v175);
  if (v205 >= 1)
  {
    CFDictionaryAddValue(v11, *off_1E7989BC8, [*(v21 + 3480) numberWithInt:v205]);
  }

  if (FigDebugIsInternalBuild())
  {
    StringAnswer = CMCaptureGestaltGetStringAnswer(0x1F217E3B0);
    if (StringAnswer)
    {
      CFDictionaryAddValue(v11, *off_1E7989AA8, StringAnswer);
    }
  }

  return v11;
}