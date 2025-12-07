uint64_t sub_1AFD97A08(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  sub_1AFD96A30(a1, a3, a4, a5, a6);
  v10 = 0;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  *v11 = 1065353216;
  v13 = *(a2 + 40);
  v11[v13 + 1] = 1065353216;
  v11[2 * v13 + 2] = 1065353216;
  v14 = a1[26];
  v15 = vmulq_f32(*a3, v14);
  v16 = vmulq_f32(v14, a3[1]);
  v17 = vmulq_f32(v14, a3[2]);
  v17.i32[3] = 0;
  *v15.f32 = vadd_f32(vpadd_f32(*v15.f32, *v16.i8), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  *&v15.u32[2] = vpadd_f32(vpadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)), 0);
  v65 = v15;
  v18 = v12 + 4 * v13;
  v19 = v12 + 8 * v13;
  v20 = vnegq_f32(v15);
  *v12 = 0;
  *(v12 + 4) = -v20.f32[2];
  *(v12 + 8) = v20.i32[1];
  *(v12 + 12) = 0;
  *v18 = v20.i32[2];
  *(v18 + 4) = 0;
  *(v18 + 8) = -v20.f32[0];
  *(v18 + 12) = 0;
  *v19 = -v20.f32[1];
  *(v19 + 4) = v20.i32[0];
  *(v19 + 8) = 0;
  v21 = *(a2 + 24);
  v22 = *(a2 + 32);
  *v21 = -1082130432;
  v23 = *(a2 + 40);
  v21[v23 + 1] = -1082130432;
  v21[2 * v23 + 2] = -1082130432;
  v24 = a1[30];
  v25 = vmulq_f32(*a4, v24);
  v26 = vmulq_f32(v24, a4[1]);
  v27 = vmulq_f32(v24, a4[2]);
  v27.i32[3] = 0;
  *v25.i8 = vadd_f32(vpadd_f32(*v25.i8, *v26.i8), vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v26, v26, 8uLL)));
  *v27.i8 = vpadd_f32(vpadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), 0);
  v28 = v22 + 4 * v23;
  v29 = v22 + 8 * v23;
  *v22 = 0;
  *(v22 + 4) = -*v27.i32;
  *(v22 + 8) = v25.i32[1];
  *(v22 + 12) = 0;
  *v28 = v27.u32[0];
  *(v28 + 8) = -*v25.i32;
  *(v28 + 12) = 0;
  *v29 = -*&v25.i32[1];
  *(v29 + 4) = v25.i32[0];
  v25.i64[1] = v27.i64[0];
  v64 = v25;
  *(v29 + 8) = 0;
  v30 = a1[43].i32[0];
  v31 = &a1[43].f32[2];
  if ((v30 & 2) == 0)
  {
    v31 = (a2 + 4);
  }

  v32 = *v31 * *a2;
  v33 = *(a2 + 48);
  v34 = *(a2 + 40);
  v35 = 4 * v34;
  v36 = 12;
  v38 = *(a2 + 64);
  v37 = *(a2 + 72);
  result = 4286578687;
  do
  {
    *(v33 + v10) = v32 * (((*&v64.i32[v36 - 12] + a4->f32[v36]) - v65.f32[v36 - 12]) - a3->f32[v36]);
    *(v38 + v10) = -8388609;
    *(v37 + v10) = 2139095039;
    if (v30)
    {
      *(*(a2 + 56) + v10) = a1[43].i32[1];
    }

    v10 += v35;
    ++v36;
  }

  while (v36 != 15);
  v40 = 3 * v34;
  if (a1[37].i8[2] == 1)
  {
    v41 = *(a2 + 16);
    v42 = *(a2 + 32);
    v43 = a1[32].f32[3];
    if (a1[32].f32[0] >= v43 || a1[32].f32[1] >= v43)
    {
      v56 = vmulq_n_f32(vmulq_n_f32(a1[33], a1[31].f32[2]), a1[31].f32[2]);
      *(v41 + 4 * v40) = v56.i32[0];
      result = 12 * v34 + 4;
      *(v41 + result) = v56.i32[1];
      v57 = 4 * v40 + 8;
      *(v41 + v57) = v56.i32[2];
      *(v42 + 4 * v40) = -v56.f32[0];
      *(v42 + result) = -v56.f32[1];
      *(v42 + v57) = -v56.f32[2];
      *(v33 + 4 * v40) = (*a2 * a1[31].f32[1]) * a1[35].f32[3];
      if ((v30 & 4) != 0)
      {
        *(*(a2 + 56) + 4 * v40) = a1[43].i32[3];
      }

      *(v38 + 4 * v40) = 0;
      if (a1[39].i8[0] != 1 || (v58 = a1[41].f32[0], v58 < 0.0))
      {
        v58 = 3.4028e38;
      }

      *(v37 + 4 * v40) = v58;
      v40 = 4 * v34;
    }

    else
    {
      v44 = a1[23];
      v45 = a1[24];
      v44.i32[3] = 0;
      v45.i32[3] = 0;
      v46 = a1[25];
      v46.i32[3] = 0;
      v47 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*&a3[1])), v45, *a3[1].f32, 1), v46, a3[1], 2);
      v48 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*a3)), v45, *a3->f32, 1), v46, *a3, 2);
      v49 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*&a3[2])), v45, *a3[2].f32, 1), v46, a3[2], 2);
      v46.i64[0] = __PAIR64__(v47.u32[1], v48.u32[1]);
      v46.i64[1] = v49.u32[1];
      v44.i64[0] = __PAIR64__(v47.u32[2], v48.u32[2]);
      v44.i64[1] = v49.u32[2];
      v50 = 4 * v40;
      *(v41 + v50) = vzip2_s32(*v48.i8, *v47.i8);
      v50 += 8;
      *(v41 + v50) = v49.i32[1];
      v51 = 16 * v34;
      *(v41 + 16 * v34) = v48.i32[2];
      *(v41 + 4 * v35 + 4) = v47.i32[2];
      v52 = (16 * (v35 >> 2)) | 8;
      *(v41 + v52) = v49.i32[2];
      v53 = (v42 + 4 * v40);
      *v53 = -*&v48.i32[1];
      v53[1] = -*&v47.i32[1];
      *(v42 + v50) = -v49.f32[1];
      *(v42 + v51) = vneg_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v47, v47, 8uLL)));
      *(v42 + v52) = -v49.f32[2];
      *v47.i32 = *a2 * a1[31].f32[2];
      v54 = vmulq_f32(v46, a1[33]);
      *(v33 + 4 * v40) = *v47.i32 * vadd_f32(vpadd_f32(*v54.i8, *v54.i8), *&vextq_s8(v54, v54, 8uLL)).f32[0];
      v55 = vmulq_f32(v44, a1[33]);
      *(v33 + v51) = *v47.i32 * vadd_f32(vpadd_f32(*v55.i8, *v55.i8), *&vextq_s8(v55, v55, 8uLL)).f32[0];
      v38 = *(a2 + 64);
      v37 = *(a2 + 72);
      *(v38 + 4 * v40) = -8388609;
      *(v37 + 4 * v40) = 2139095039;
      *(v38 + v51) = -8388609;
      *(v37 + v51) = 2139095039;
      v40 = 5 * v34;
    }
  }

  if (a1[37].i8[1] == 1)
  {
    v59 = vmulq_n_f32(vmulq_n_f32(a1[34], a1[31].f32[2]), a1[31].f32[2]);
    v60 = *(a2 + 16);
    v61 = *(a2 + 32);
    v62 = 4 * v40;
    *(v60 + v62) = v59.i64[0];
    v62 += 8;
    *(v60 + v62) = v59.i32[2];
    v63 = (v61 + 4 * v40);
    *v63 = -v59.f32[0];
    v63[1] = -v59.f32[1];
    *(v61 + v62) = -v59.f32[2];
    *(*(a2 + 48) + 4 * v40) = (*a2 * a1[31].f32[1]) * a1[36].f32[0];
    if ((v30 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v40) = a1[43].i32[3];
    }

    if (a1[32].f32[2] <= 0.0)
    {
      *(v38 + 4 * v40) = -8388609;
      goto LABEL_24;
    }

    if (a1[36].f32[0] > 0.0)
    {
      *(v38 + 4 * v40) = 0;
LABEL_24:
      *(v37 + 4 * v40) = 2139095039;
      return result;
    }

    *(v38 + 4 * v40) = -8388609;
    *(v37 + 4 * v40) = 0;
  }

  return result;
}

void sub_1AFD97F58(uint64_t a1)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a1 + 595) == 1)
  {
    *(a1 + 56) = 0;
    *(a1 + 584) = 0;
    *(a1 + 672) = 0u;
    if ((*(a1 + 592) & 1) == 0)
    {
      v2 = *(a1 + 40);
      v3 = *(a1 + 48);
      v4 = *(a1 + 416);
      v5 = vmulq_f32(v2[1], v4);
      v6 = vmulq_f32(v4, v2[2]);
      v7 = vmulq_f32(v4, v2[3]);
      v7.i32[3] = 0;
      *v5.f32 = vadd_f32(vpadd_f32(*v5.f32, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
      *&v5.u32[2] = vpadd_f32(vpadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)), 0);
      v8 = vaddq_f32(v5, v2[4]);
      v9 = *(a1 + 480);
      v10 = vmulq_f32(v3[1], v9);
      v11 = vmulq_f32(v9, v3[2]);
      v12 = vmulq_f32(v9, v3[3]);
      v12.i32[3] = 0;
      *v10.f32 = vadd_f32(vpadd_f32(*v10.f32, *v11.i8), vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v11, v11, 8uLL)));
      *&v10.u32[2] = vpadd_f32(vpadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL)), 0);
      v13 = vaddq_f32(v10, v3[4]);
      v14 = vsubq_f32(v13, v8);
      v14.i32[3] = 0;
      v15 = vmulq_f32(v14, v14);
      v16 = vadd_f32(*&vextq_s8(v15, v15, 8uLL), vpadd_f32(*v15.i8, *v15.i8)).f32[0];
      if (v16 <= 0.00000011921)
      {
        v59 = xmmword_1AFE20150;
        v18 = 0;
        v17.i32[0] = 1.0;
      }

      else
      {
        v17 = vmulq_n_f32(v14, 1.0 / sqrtf(v16));
        v59 = v17;
        v18 = vextq_s8(v17, v17, 4uLL).u64[0];
      }

      v19 = 0;
      v20 = fabsf(v18.f32[1]) <= 0.70711;
      v21 = vmul_f32(v18, v18).f32[0] + (*v17.i32 * *v17.i32);
      v22 = 1.0 / sqrtf(v21);
      v23 = -(v18.f32[0] * v22);
      v24 = *v17.i32 * v22;
      v25 = -(v18.f32[1] * (*v17.i32 * v22));
      v26 = v18.f32[1] * v23;
      v27 = v21 * v22;
      v28 = (v18.f32[1] * v18.f32[1]) + (v18.f32[0] * v18.f32[0]);
      v29 = sqrtf(v28);
      v30 = -(v18.f32[1] * (1.0 / v29));
      v31 = (1.0 / v29) * v18.f32[0];
      v32 = v28 * (1.0 / v29);
      v33 = -(*v17.i32 * v31);
      v34 = v30 * *v17.i32;
      if (v20)
      {
        v30 = v24;
        v31 = 0.0;
      }

      else
      {
        v23 = 0.0;
      }

      if (v20)
      {
        v35 = v25;
      }

      else
      {
        v35 = v32;
      }

      if (v20)
      {
        v36 = v26;
      }

      else
      {
        v36 = v33;
      }

      v60 = v23;
      v61 = v30;
      if (v20)
      {
        v34 = v27;
      }

      v62 = v31;
      v63 = v35;
      v64 = v36;
      v65 = v34;
      v37 = (a1 + 80);
      v53 = v13;
      v54 = v8;
      do
      {
        v38 = *(a1 + 40);
        v39 = *(a1 + 48);
        v40 = *(v38 + 16);
        v41 = *(v38 + 32);
        v42 = vtrn1q_s32(v40, v41);
        v43 = *(v38 + 48);
        v44 = *(v38 + 64);
        *v40.i8 = vzip2_s32(*v40.i8, *v41.i8);
        v41.i64[0] = vextq_s8(v42, v42, 8uLL).u64[0];
        v42.i64[1] = v43.u32[0];
        v40.u64[1] = vzip2_s32(*v43.i8, 0);
        v41.i64[1] = vextq_s8(v43, v43, 8uLL).u32[0];
        v58[0] = v42;
        v58[1] = v40;
        v58[2] = v41;
        v45 = *(v39 + 16);
        v46 = *(v39 + 32);
        v47 = vtrn1q_s32(v45, v46);
        v48 = *(v39 + 48);
        v49 = *(v39 + 64);
        *v45.i8 = vzip2_s32(*v45.i8, *v46.i8);
        v46.i64[0] = vextq_s8(v47, v47, 8uLL).u64[0];
        v47.i64[1] = v48.u32[0];
        v45.u64[1] = vzip2_s32(*v48.i8, 0);
        v46.i64[1] = vextq_s8(v48, v48, 8uLL).u32[0];
        v57[0] = v47;
        v57[1] = v45;
        v57[2] = v46;
        v50 = vsubq_f32(v8, v44);
        v50.i32[3] = 0;
        v56 = v50;
        v51 = vsubq_f32(v13, v49);
        v51.i32[3] = 0;
        v55 = v51;
        sub_1AFD99804(v37, v58, v57, &v56, &v55, (&v59 + v19), (v38 + 448), (v39 + 448), *(v38 + 384), *(v39 + 384));
        v13 = v53;
        v8 = v54;
        v19 += 16;
        v37 = v52 + 6;
      }

      while (v19 != 48);
    }

    sub_1AFD96A30(a1, (*(a1 + 40) + 16), (*(a1 + 48) + 16), (*(a1 + 40) + 304), (*(a1 + 48) + 304));
  }
}

void sub_1AFD9824C(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float a4)
{
  if (*(a1 + 595) != 1)
  {
    return;
  }

  v304 = v7;
  v305 = v6;
  v306 = v4;
  v307 = v5;
  if ((*(a1 + 592) & 1) == 0)
  {
    v12 = *(a1 + 480);
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = vmulq_f32(v13[1], v12);
    v16 = vmulq_f32(v12, v13[2]);
    *v15.f32 = vadd_f32(vpadd_f32(*v15.f32, *v16.i8), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
    v17 = v13[4];
    v18 = vmulq_f32(v12, v13[3]);
    v18.i32[3] = 0;
    *&v15.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
    v19 = vaddq_f32(v15, v17);
    v20 = *(a1 + 416);
    v21 = vmulq_f32(v14[1], v20);
    v22 = vmulq_f32(v20, v14[2]);
    *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
    v23 = v14[4];
    v24 = vmulq_f32(v20, v14[3]);
    v24.i32[3] = 0;
    *&v21.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
    v25 = vaddq_f32(v21, v23);
    v26 = vsubq_f32(v25, v23);
    v26.i32[3] = 0;
    v27 = vsubq_f32(v19, v17);
    v27.i32[3] = 0;
    v28 = vaddq_f32(a2[12], a2[5]);
    v29 = vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL);
    v30 = vsubq_f32(vmulq_f32(v29, v28), vmulq_f32(vextq_s8(vextq_s8(v28, v28, 0xCuLL), v28, 8uLL), v26));
    v31 = vaddq_f32(vaddq_f32(a2[11], a2[4]), vextq_s8(vextq_s8(v30, v30, 0xCuLL), v30, 8uLL));
    v32 = vaddq_f32(a3[12], a3[5]);
    v33 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL);
    v34 = vsubq_f32(vmulq_f32(v33, v32), vmulq_f32(vextq_s8(vextq_s8(v32, v32, 0xCuLL), v32, 8uLL), v27));
    v35 = vsubq_f32(v31, vaddq_f32(vaddq_f32(a3[11], a3[4]), vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL)));
    v35.i32[3] = 0;
    v36 = (a1 + 80);
    v37 = vsubq_f32(v25, v19);
    v37.i32[3] = 0;
    v38 = 3;
    do
    {
      v39 = *v36;
      v40 = vmulq_f32(*v36, v35);
      v41 = vmulq_f32(*v36, v37);
      v42 = (((-0.3 * vadd_f32(vpadd_f32(*v41.i8, *v41.i8), *&vextq_s8(v41, v41, 8uLL)).f32[0]) / a4) * (1.0 / v36[5].f32[0])) - (vadd_f32(vpadd_f32(*v40.i8, *v40.i8), *&vextq_s8(v40, v40, 8uLL)).f32[0] * (1.0 / v36[5].f32[0]));
      *(a1 + 56) = *(a1 + 56) + v42;
      v43 = vextq_s8(vextq_s8(v39, v39, 0xCuLL), v39, 8uLL);
      if (a2[13].i64[0])
      {
        v44 = *(a1 + 40);
        v45 = vsubq_f32(vmulq_f32(v43, v26), vmulq_f32(v29, v39));
        v46 = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL);
        v47 = vmulq_f32(v44[21], v46);
        v46.i32[3] = 0;
        v48 = vmulq_f32(v44[19], v46);
        v49 = vmulq_f32(v44[20], v46);
        v47.i32[3] = 0;
        *v49.f32 = vadd_f32(vpadd_f32(*v48.i8, *v49.f32), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
        *&v49.u32[2] = vpadd_f32(vpadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)), 0);
        v50 = vmulq_n_f32(vmulq_n_f32(v39, v44[24].f32[0]), v42);
        v50.i32[3] = 0;
        v51 = vmulq_n_f32(a2[6], v42);
        v51.i32[3] = 0;
        v52 = vaddq_f32(a2[5], vmulq_f32(v49, v51));
        a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v50));
        a2[5] = v52;
      }

      if (a3[13].i64[0])
      {
        v53 = vsubq_f32(vmulq_f32(v43, v27), vmulq_f32(v33, v39));
        v54 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
        v54.i32[3] = 0;
        v55 = -v42;
        v56 = *(a1 + 48);
        v57 = vmulq_f32(v56[19], v54);
        v58 = vmulq_f32(v56[20], v54);
        *v57.f32 = vadd_f32(vpadd_f32(*v57.f32, *v58.i8), vzip1_s32(*&vextq_s8(v57, v57, 8uLL), *&vextq_s8(v58, v58, 8uLL)));
        v59 = vmulq_f32(v56[21], v54);
        v59.i32[3] = 0;
        *&v57.u32[2] = vpadd_f32(vpadd_f32(*v59.i8, *&vextq_s8(v59, v59, 8uLL)), 0);
        v60 = vmulq_n_f32(vmulq_n_f32(*v36, v56[24].f32[0]), v55);
        v60.i32[3] = 0;
        v61 = vmulq_n_f32(a3[6], v55);
        v61.i32[3] = 0;
        v62 = vaddq_f32(a3[5], vmulq_f32(v57, v61));
        a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v60));
        a3[5] = v62;
      }

      v36 += 6;
      --v38;
    }

    while (v38);
  }

  if (*(a1 + 624) == 1)
  {
    v63 = *(a1 + 40);
    v64 = *(a1 + 48);
    v65 = v63[2];
    v66 = v63[3];
    v67 = v63[4];
    v300[0] = v63[1];
    v300[1] = v65;
    v300[2] = v66;
    v301 = v67;
    v68 = v64[2];
    v298[0] = v64[1];
    v298[1] = v68;
    v69 = v64[4];
    v298[2] = v64[3];
    v299 = v69;
    v70 = vaddq_f32(a2[12], a2[5]);
    v296 = vaddq_f32(a3[12], a3[5]);
    v297 = v70;
    v292 = xmmword_1AFE20150;
    v293 = xmmword_1AFE20160;
    v294 = xmmword_1AFE20180;
    v295 = 0uLL;
    v291 = 0uLL;
    sub_1AFD8F808(v300, &v291, &v297, &v292, a4);
    v287 = xmmword_1AFE20150;
    v288 = xmmword_1AFE20160;
    v289 = xmmword_1AFE20180;
    v290 = 0uLL;
    sub_1AFD8F808(v298, &v291, &v296, &v287, a4);
    sub_1AF35A1DC(v286, (a1 + 640));
    v286[3] = 0u;
    v72 = *(a1 + 432);
    v71 = *(a1 + 448);
    v73 = v286[0];
    v74 = v286[1];
    v73.i32[3] = 0;
    v74.i32[3] = 0;
    v75 = v286[2];
    v75.i32[3] = 0;
    v76 = *(a1 + 464);
    v77 = vmlaq_lane_f32(vmulq_n_f32(v73, v76.f32[0]), v74, *v76.f32, 1);
    v78 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v71.f32[0]), v74, *v71.f32, 1), v75, v71, 2);
    v79 = vmulq_f32(v72, 0);
    v80 = vmulq_f32(v71, 0);
    v81 = vmulq_f32(v76, 0);
    v82 = vextq_s8(v80, v80, 8uLL).u64[0];
    v81.i32[3] = 0;
    v83 = vpadd_f32(*v79.i8, *v80.i8);
    v84 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, v72.f32[0]), v74, *v72.f32, 1), v75, v72, 2);
    *v72.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), v82), v83);
    *&v72.u32[2] = vpadd_f32(vpadd_f32(*v81.i8, *&vextq_s8(v81, v81, 8uLL)), 0);
    v85 = *(a1 + 368);
    v86 = *(a1 + 384);
    v87 = *(a1 + 400);
    v88 = vtrn1q_s32(v85, v86);
    v89 = vzip2_s32(*v87.f32, 0);
    v90 = vextq_s8(v87, v87, 8uLL).u32[0];
    v87.i64[0] = vextq_s8(v88, v88, 8uLL).u64[0];
    v88.i64[1] = *(a1 + 400);
    v91.i64[0] = 0x8000000080000000;
    v91.i64[1] = 0x8000000080000000;
    v92 = veorq_s8(*(a1 + 416), v91);
    v93 = vmulq_f32(v88, v92);
    *v85.f32 = vzip2_s32(*v85.f32, *v86.i8);
    *&v85.u32[2] = v89;
    v94 = vmulq_f32(v85, v92);
    v87.i64[1] = v90;
    v95 = vmulq_f32(v87, v92);
    v95.i32[3] = 0;
    *v94.f32 = vadd_f32(vpadd_f32(*v93.i8, *v94.f32), vzip1_s32(*&vextq_s8(v93, v93, 8uLL), *&vextq_s8(v94, v94, 8uLL)));
    *&v94.u32[2] = vpadd_f32(vpadd_f32(*v95.i8, *&vextq_s8(v95, v95, 8uLL)), 0);
    v88.i32[3] = 0;
    v85.i32[3] = 0;
    v87.i32[3] = 0;
    v96 = vmlaq_laneq_f32(v77, v75, v76, 2);
    v97 = vmlaq_lane_f32(vmulq_n_f32(v88, v96.f32[0]), v85, *v96.f32, 1);
    v98 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, v78.f32[0]), v85, *v78.f32, 1), v87, v78, 2);
    v99 = vmulq_f32(v84, v94);
    v100 = vmulq_f32(v78, v94);
    v101 = vmulq_f32(v96, v94);
    v101.i32[3] = 0;
    *v100.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v99, v99, 8uLL), *&vextq_s8(v100, v100, 8uLL)), vpadd_f32(*v99.i8, *v100.f32));
    *&v100.u32[2] = vpadd_f32(vpadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL)), 0);
    v102 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v88, v84.f32[0]), v85, *v84.f32, 1), v87, v84, 2);
    v103 = vmlaq_laneq_f32(v97, v87, v96, 2);
    v104 = vtrn1q_s32(v102, v98);
    *v105.f32 = vzip2_s32(*v102.f32, *v98.f32);
    v102.i32[3] = 0;
    v98.i32[3] = 0;
    v85.i64[0] = v103.u32[0];
    *v101.i8 = vzip2_s32(*v103.f32, 0);
    v99.i32[0] = vextq_s8(v103, v103, 8uLL).u32[0];
    v103.i32[3] = 0;
    v106 = vaddq_f32(vaddq_f32(v72, *(a1 + 480)), v100);
    v107 = vmulq_f32(v106, v289);
    v107.i32[3] = 0;
    v108 = vmlaq_lane_f32(vmulq_n_f32(v102, v289.f32[0]), v98, *v289.f32, 1);
    v109 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, v288.f32[0]), v98, *v288.f32, 1), v103, v288, 2);
    v110 = vmlaq_lane_f32(vmulq_n_f32(v102, v287.f32[0]), v98, *v287.f32, 1);
    v111 = vmulq_f32(v106, v287);
    v112 = vmulq_f32(v106, v288);
    *v96.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v111, v111, 8uLL), *&vextq_s8(v112, v112, 8uLL)), vpadd_f32(*v111.i8, *v112.i8));
    *&v96.u32[2] = vpadd_f32(vpadd_f32(*v107.i8, *&vextq_s8(v107, v107, 8uLL)), 0);
    v284[0] = vmlaq_laneq_f32(v110, v103, v287, 2);
    v284[1] = v109;
    v284[2] = vmlaq_laneq_f32(v108, v103, v289, 2);
    v285 = vaddq_f32(v96, v290);
    v100.i64[0] = vextq_s8(v104, v104, 8uLL).u64[0];
    v103.i64[0] = v104.i64[0];
    v103.i64[1] = v85.i64[0];
    v113 = vnegq_f32(v106);
    v114 = vmulq_f32(v103, v113);
    v105.i64[1] = v101.i64[0];
    v115 = vmulq_f32(v105, v113);
    v100.i64[1] = v99.u32[0];
    v116 = vmulq_f32(v100, v113);
    v116.i32[3] = 0;
    *v114.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v114, v114, 8uLL), *&vextq_s8(v115, v115, 8uLL)), vpadd_f32(*v114.f32, *v115.i8));
    *&v114.u32[2] = vpadd_f32(vpadd_f32(*v116.i8, *&vextq_s8(v116, v116, 8uLL)), 0);
    v103.i32[3] = 0;
    v105.i32[3] = 0;
    v100.i32[3] = 0;
    v117 = vmlaq_lane_f32(vmulq_n_f32(v103, v294.f32[0]), v105, *v294.f32, 1);
    v118 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, v293.f32[0]), v105, *v293.f32, 1), v100, v293, 2);
    v119 = vmulq_f32(v292, v114);
    v120 = vmulq_f32(v114, v293);
    v121 = vmulq_f32(v114, v294);
    v121.i32[3] = 0;
    v122 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103, v292.f32[0]), v105, *v292.f32, 1), v100, v292, 2);
    *v105.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v119, v119, 8uLL), *&vextq_s8(v120, v120, 8uLL)), vpadd_f32(*v119.i8, *v120.i8));
    *&v105.u32[2] = vpadd_f32(vpadd_f32(*v121.i8, *&vextq_s8(v121, v121, 8uLL)), 0);
    v282[0] = v122;
    v282[1] = v118;
    v282[2] = vmlaq_laneq_f32(v117, v100, v294, 2);
    v283 = vaddq_f32(v105, v295);
    v123 = vmulq_n_f32(vsubq_f32(v285, v301), 1.0 / a4);
    v123.i32[3] = 0;
    v291 = v123;
    v302 = 0.0;
    sub_1AFD77F40(v300, v284, &v303, &v302);
    v281 = vmulq_n_f32(vmulq_n_f32(v303, v302), 1.0 / a4);
    v124 = vmulq_n_f32(vsubq_f32(v283, v299), 1.0 / a4);
    v124.i32[3] = 0;
    v291 = v124;
    v302 = 0.0;
    sub_1AFD77F40(v298, v282, &v303, &v302);
    v125 = vsubq_f32(v281, v297);
    v125.i32[3] = 0;
    v126 = vsubq_f32(vmulq_n_f32(vmulq_n_f32(v303, v302), 1.0 / a4), v296);
    v126.i32[3] = 0;
    v127 = vmulq_f32(v125, v125);
    v128 = vpadd_f32(*v127.i8, *v127.i8);
    v131 = vextq_s8(v127, v127, 8uLL);
    v129 = vadd_f32(v128, *v131.f32).f32[0];
    v130 = 0.0;
    v131.i64[0] = 0x3400000034000000;
    v132 = 0.0;
    if (v129 > 0.00000011921)
    {
      v131 = vmulq_n_f32(v125, 1.0 / sqrtf(v129));
      v133 = *(a1 + 40);
      v134 = v133[19];
      v135 = v133[20];
      v134.i32[3] = 0;
      v135.i32[3] = 0;
      v136 = v133[21];
      v136.i32[3] = 0;
      v137 = vmulq_f32(v131, vaddq_f32(vaddq_f32(vmulq_n_f32(v134, v131.f32[0]), vmulq_lane_f32(v135, *v131.f32, 1)), vmulq_laneq_f32(v136, v131, 2)));
      LODWORD(v132) = vadd_f32(vpadd_f32(*v137.i8, *v137.i8), *&vextq_s8(v137, v137, 8uLL)).u32[0];
    }

    v138 = vmulq_f32(v126, v126);
    v139 = vpadd_f32(*v138.i8, *v138.i8);
    v141 = vextq_s8(v138, v138, 8uLL);
    v140 = vadd_f32(*v141.f32, v139).f32[0];
    v141.i64[0] = 0x3400000034000000;
    if (v140 > 0.00000011921)
    {
      v141 = vmulq_n_f32(v126, 1.0 / sqrtf(v140));
      v142 = *(a1 + 48);
      v143 = v142[19];
      v144 = v142[20];
      v143.i32[3] = 0;
      v144.i32[3] = 0;
      v145 = v142[21];
      v145.i32[3] = 0;
      v146 = vmulq_f32(v141, vaddq_f32(vaddq_f32(vmulq_n_f32(v143, v141.f32[0]), vmulq_lane_f32(v144, *v141.f32, 1)), vmulq_laneq_f32(v145, v141, 2)));
      LODWORD(v130) = vadd_f32(vpadd_f32(*v146.i8, *v146.i8), *&vextq_s8(v146, v146, 8uLL)).u32[0];
    }

    v147 = vmulq_n_f32(v131, v132);
    v147.i32[3] = 0;
    v148 = vmulq_n_f32(v141, v130);
    v148.i32[3] = 0;
    v149 = vaddq_f32(v147, v148);
    v150 = vmulq_f32(v149, v149);
    v151 = vadd_f32(vpadd_f32(*v150.i8, *v150.i8), *&vextq_s8(v150, v150, 8uLL)).f32[0];
    if (v151 <= 0.00000011921)
    {
      goto LABEL_32;
    }

    v152 = *(a1 + 40);
    v153 = *(a1 + 48);
    v154 = v152[19];
    v155 = v152[20];
    v154.i32[3] = 0;
    v155.i32[3] = 0;
    v156 = vmulq_n_f32(v149, 1.0 / sqrtf(v151));
    v157 = v152[21];
    v157.i32[3] = 0;
    v158 = vmulq_f32(v156, vaddq_f32(vaddq_f32(vmulq_n_f32(v154, v156.f32[0]), vmulq_lane_f32(v155, *v156.f32, 1)), vmulq_laneq_f32(v157, v156, 2)));
    v159 = v153[19];
    v160 = v153[20];
    v159.i32[3] = 0;
    v160.i32[3] = 0;
    v161 = vadd_f32(vpadd_f32(*v158.i8, *v158.i8), *&vextq_s8(v158, v158, 8uLL));
    v162 = v153[21];
    v162.i32[3] = 0;
    v163 = vmulq_f32(v156, vaddq_f32(vaddq_f32(vmulq_n_f32(v159, v156.f32[0]), vmulq_lane_f32(v160, *v156.f32, 1)), vmulq_laneq_f32(v162, v156, 2)));
    *v163.i8 = vadd_f32(vpadd_f32(*v163.i8, *v163.i8), *&vextq_s8(v163, v163, 8uLL));
    *v162.f32 = vadd_f32(v161, *v163.i8);
    v164 = vmulq_n_f32(vsubq_f32(vmulq_n_f32(v125, v161.f32[0]), vmulq_n_f32(v126, *v163.i32)), 1.0 / vmul_f32(*v162.f32, *v162.f32).f32[0]);
    v164.i32[3] = 0;
    v165 = *(a1 + 656);
    if (v165 >= 0.0)
    {
      if (!*(a1 + 625))
      {
        v161.f32[0] = 1.0;
      }

      v166 = v165 / v161.f32[0];
      v167 = *(a1 + 672);
      v168 = vaddq_f32(v167, v164);
      v169 = vmulq_f32(v168, v168);
      v170 = sqrtf(vadd_f32(vpadd_f32(*v169.i8, *v169.i8), *&vextq_s8(v169, v169, 8uLL)).f32[0]);
      if (v170 > v166)
      {
        v164 = vsubq_f32(vmulq_n_f32(vmulq_n_f32(v168, 1.0 / v170), v166), v167);
        v164.i32[3] = 0;
        v168 = vaddq_f32(v167, v164);
      }

      *(a1 + 672) = v168;
    }

    v171 = vmulq_f32(v164, v164);
    v172 = sqrtf(vadd_f32(vpadd_f32(*v171.i8, *v171.i8), *&vextq_s8(v171, v171, 8uLL)).f32[0]);
    v173 = vmulq_n_f32(v164, 1.0 / v172);
    v173.i32[3] = 0;
    if (a2[13].i64[0])
    {
      v174 = vmulq_f32(v152[19], v173);
      v175 = vmulq_f32(v152[20], v173);
      *v174.f32 = vadd_f32(vpadd_f32(*v174.f32, *v175.i8), vzip1_s32(*&vextq_s8(v174, v174, 8uLL), *&vextq_s8(v175, v175, 8uLL)));
      v176 = vmulq_f32(v152[21], v173);
      v176.i32[3] = 0;
      *&v174.u32[2] = vpadd_f32(vpadd_f32(*v176.i8, *&vextq_s8(v176, v176, 8uLL)), 0);
      v177 = vmulq_n_f32(0, v172);
      v177.i32[3] = 0;
      v178 = vmulq_n_f32(a2[6], v172);
      v178.i32[3] = 0;
      v179 = vaddq_f32(a2[5], vmulq_f32(v174, v178));
      a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v177));
      a2[5] = v179;
    }

    if (!a3[13].i64[0])
    {
      goto LABEL_32;
    }

    v180 = *(a1 + 48);
    v181 = vmulq_f32(v180[19], v173);
    v182 = vmulq_f32(v180[20], v173);
    *v181.f32 = vadd_f32(vpadd_f32(*v181.f32, *v182.i8), vzip1_s32(*&vextq_s8(v181, v181, 8uLL), *&vextq_s8(v182, v182, 8uLL)));
    v183 = vmulq_f32(v180[21], v173);
    v183.i32[3] = 0;
    *&v181.u32[2] = vpadd_f32(vpadd_f32(*v183.i8, *&vextq_s8(v183, v183, 8uLL)), 0);
    v184 = -v172;
    v185 = vmulq_n_f32(0, v184);
    v185.i32[3] = 0;
    v186 = vmulq_n_f32(a3[6], v184);
    v186.i32[3] = 0;
    v187 = vaddq_f32(a3[5], vmulq_f32(v181, v186));
    a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v185));
  }

  else
  {
    v188 = *(a1 + 508);
    if (v188 <= 0.00000011921)
    {
      goto LABEL_32;
    }

    v189 = a2[5];
    v190 = vsubq_f32(vaddq_f32(a3[12], a3[5]), vaddq_f32(a2[12], v189));
    v190.i32[3] = 0;
    v191 = vmulq_f32(v190, v190);
    v192 = vadd_f32(vpadd_f32(*v191.i8, *v191.i8), *&vextq_s8(v191, v191, 8uLL)).f32[0];
    if (v192 <= 0.00000011921)
    {
      goto LABEL_32;
    }

    v193 = *(a1 + 40);
    v194 = *(a1 + 48);
    v195 = v193[19];
    v195.i32[3] = 0;
    v196 = v193[20];
    v196.i32[3] = 0;
    v197 = vmulq_n_f32(v190, 1.0 / sqrtf(v192));
    v198 = v193[21];
    v198.i32[3] = 0;
    v199 = vmulq_f32(v197, vaddq_f32(vaddq_f32(vmulq_n_f32(v195, v197.f32[0]), vmulq_lane_f32(v196, *v197.f32, 1)), vmulq_laneq_f32(v198, v197, 2)));
    v200 = v194[19];
    v201 = v194[20];
    v200.i32[3] = 0;
    v201.i32[3] = 0;
    v202 = v194[21];
    v202.i32[3] = 0;
    v203 = vmulq_f32(v197, vaddq_f32(vaddq_f32(vmulq_n_f32(v200, v197.f32[0]), vmulq_lane_f32(v201, *v197.f32, 1)), vmulq_laneq_f32(v202, v197, 2)));
    v204 = vmulq_n_f32(v190, v188 * (1.0 / vadd_f32(vadd_f32(vpadd_f32(*v199.i8, *v199.i8), *&vextq_s8(v199, v199, 8uLL)), vadd_f32(vpadd_f32(*v203.i8, *v203.i8), *&vextq_s8(v203, v203, 8uLL))).f32[0]));
    v205 = v204;
    v205.i32[3] = 0;
    v206 = vmulq_f32(v205, v205);
    v207 = sqrtf(vadd_f32(vpadd_f32(*v206.i8, *v206.i8), *&vextq_s8(v206, v206, 8uLL)).f32[0]);
    v208 = vmulq_n_f32(v204, 1.0 / v207);
    v208.i32[3] = 0;
    if (a2[13].i64[0])
    {
      v209 = vmulq_f32(v193[19], v208);
      v210 = vmulq_f32(v193[20], v208);
      *v210.f32 = vadd_f32(vpadd_f32(*v209.i8, *v210.f32), vzip1_s32(*&vextq_s8(v209, v209, 8uLL), *&vextq_s8(v210, v210, 8uLL)));
      v211 = vmulq_f32(v193[21], v208);
      v211.i32[3] = 0;
      *&v210.u32[2] = vpadd_f32(vpadd_f32(*v211.i8, *&vextq_s8(v211, v211, 8uLL)), 0);
      v212 = vmulq_n_f32(0, v207);
      v212.i32[3] = 0;
      v213 = vmulq_n_f32(a2[6], v207);
      v213.i32[3] = 0;
      a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v212));
      a2[5] = vaddq_f32(v189, vmulq_f32(v210, v213));
    }

    if (!a3[13].i64[0])
    {
      goto LABEL_32;
    }

    v214 = *(a1 + 48);
    v215 = vmulq_f32(v214[19], v208);
    v216 = vmulq_f32(v214[20], v208);
    *v215.f32 = vadd_f32(vpadd_f32(*v215.f32, *v216.i8), vzip1_s32(*&vextq_s8(v215, v215, 8uLL), *&vextq_s8(v216, v216, 8uLL)));
    v217 = vmulq_f32(v214[21], v208);
    v217.i32[3] = 0;
    *&v215.u32[2] = vpadd_f32(vpadd_f32(*v217.i8, *&vextq_s8(v217, v217, 8uLL)), 0);
    v218 = -v207;
    v219 = vmulq_n_f32(0, v218);
    v219.i32[3] = 0;
    v220 = vmulq_n_f32(a3[6], v218);
    v220.i32[3] = 0;
    v187 = vaddq_f32(a3[5], vmulq_f32(v215, v220));
    a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v219));
  }

  a3[5] = v187;
LABEL_32:
  v221 = vaddq_f32(a2[12], a2[5]);
  v222 = vaddq_f32(a3[12], a3[5]);
  if (*(a1 + 594) == 1)
  {
    v223 = *(a1 + 596);
    v224 = ((v223 * *(a1 + 572)) * *(a1 + 500)) / a4;
    v225 = vsubq_f32(v222, v221);
    v225.i32[3] = 0;
    v226 = *(a1 + 528);
    v227 = vmulq_f32(v226, v225);
    v228 = vadd_f32(vpadd_f32(*v227.i8, *v227.i8), *&vextq_s8(v227, v227, 8uLL)).f32[0];
    if (v228 > 0.0)
    {
      v224 = v224 + ((v223 * v228) * *(a1 + 504));
    }

    v229 = *(a1 + 584);
    v230 = fmaxf(v229 + (v224 * *(a1 + 560)), 0.0);
    v231 = vmulq_n_f32(v226, v230 - v229);
    v231.i32[3] = 0;
    v232 = *(a1 + 608);
    v233 = vmulq_f32(v232, v231);
    v234 = vmulq_n_f32(v232, vadd_f32(vpadd_f32(*v233.i8, *v233.i8), *&vextq_s8(v233, v233, 8uLL)).f32[0]);
    v234.i32[3] = 0;
    v235 = vsubq_f32(v231, v234);
    v236 = v235;
    v236.i32[3] = 0;
    *(a1 + 584) = v230;
    v237 = vmulq_f32(v236, v236);
    v238 = sqrtf(vadd_f32(vpadd_f32(*v237.i8, *v237.i8), *&vextq_s8(v237, v237, 8uLL)).f32[0]);
    v239 = vmulq_n_f32(v235, 1.0 / v238);
    v239.i32[3] = 0;
    if (a2[13].i64[0])
    {
      v240 = *(a1 + 40);
      v241 = vmulq_f32(v240[19], v239);
      v242 = vmulq_f32(v240[20], v239);
      *v241.f32 = vadd_f32(vpadd_f32(*v241.f32, *v242.i8), vzip1_s32(*&vextq_s8(v241, v241, 8uLL), *&vextq_s8(v242, v242, 8uLL)));
      v243 = vmulq_f32(v240[21], v239);
      v243.i32[3] = 0;
      *&v241.u32[2] = vpadd_f32(vpadd_f32(*v243.i8, *&vextq_s8(v243, v243, 8uLL)), 0);
      v244 = vmulq_n_f32(0, v238);
      v244.i32[3] = 0;
      v245 = vmulq_n_f32(a2[6], v238);
      v245.i32[3] = 0;
      v246 = vaddq_f32(a2[5], vmulq_f32(v241, v245));
      a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v244));
      a2[5] = v246;
    }

    if (a3[13].i64[0])
    {
      v247 = *(a1 + 48);
      v248 = vmulq_f32(v247[19], v239);
      v249 = vmulq_f32(v247[20], v239);
      *v248.f32 = vadd_f32(vpadd_f32(*v248.f32, *v249.i8), vzip1_s32(*&vextq_s8(v248, v248, 8uLL), *&vextq_s8(v249, v249, 8uLL)));
      v250 = vmulq_f32(v247[21], v239);
      v250.i32[3] = 0;
      *&v248.u32[2] = vpadd_f32(vpadd_f32(*v250.i8, *&vextq_s8(v250, v250, 8uLL)), 0);
      v251 = -v238;
      v252 = vmulq_n_f32(0, v251);
      v252.i32[3] = 0;
      v253 = vmulq_n_f32(a3[6], v251);
      v253.i32[3] = 0;
      v254 = vaddq_f32(a3[5], vmulq_f32(v248, v253));
      a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v252));
      a3[5] = v254;
    }
  }

  if (*(a1 + 593) == 1)
  {
    v255 = *(a1 + 600);
    v256 = ((v255 * *(a1 + 576)) * *(a1 + 500)) / a4;
    v257 = vsubq_f32(v222, v221);
    v257.i32[3] = 0;
    v258 = *(a1 + 544);
    v259 = vmulq_f32(v258, v257);
    v260 = vadd_f32(vpadd_f32(*v259.i8, *v259.i8), *&vextq_s8(v259, v259, 8uLL)).f32[0];
    if (v260 > 0.0)
    {
      v256 = v256 + ((v255 * v260) * *(a1 + 504));
    }

    v261 = v256 * *(a1 + 564);
    v262 = *(a1 + 588);
    v263 = fmaxf(v262 + v261, 0.0);
    *(a1 + 588) = v263;
    v264 = v263 - v262;
    if (a2[13].i64[0])
    {
      v265 = *(a1 + 40);
      v266 = vmulq_f32(v258, v265[19]);
      v267 = vmulq_f32(v258, v265[20]);
      *v266.f32 = vadd_f32(vpadd_f32(*v266.f32, *v267.i8), vzip1_s32(*&vextq_s8(v266, v266, 8uLL), *&vextq_s8(v267, v267, 8uLL)));
      v268 = vmulq_f32(v258, v265[21]);
      v268.i32[3] = 0;
      *&v266.u32[2] = vpadd_f32(vpadd_f32(*v268.i8, *&vextq_s8(v268, v268, 8uLL)), 0);
      v269 = vmulq_n_f32(0, v264);
      v269.i32[3] = 0;
      v270 = vmulq_n_f32(a2[6], v264);
      v270.i32[3] = 0;
      v271 = vaddq_f32(a2[5], vmulq_f32(v266, v270));
      a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v269));
      a2[5] = v271;
    }

    if (a3[13].i64[0])
    {
      v272 = *(a1 + 48);
      v273 = *(a1 + 544);
      v274 = vmulq_f32(v272[19], v273);
      v275 = vmulq_f32(v273, v272[20]);
      *v274.f32 = vadd_f32(vpadd_f32(*v274.f32, *v275.i8), vzip1_s32(*&vextq_s8(v274, v274, 8uLL), *&vextq_s8(v275, v275, 8uLL)));
      v276 = vmulq_f32(v273, v272[21]);
      v276.i32[3] = 0;
      *&v274.u32[2] = vpadd_f32(vpadd_f32(*v276.i8, *&vextq_s8(v276, v276, 8uLL)), 0);
      v277 = -v264;
      v278 = vmulq_n_f32(0, v277);
      v278.i32[3] = 0;
      v279 = vmulq_n_f32(a3[6], v277);
      v279.i32[3] = 0;
      v280 = vaddq_f32(a3[5], vmulq_f32(v274, v279));
      a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v278));
      a3[5] = v280;
    }
  }
}

void sub_1AFD99218(uint64_t a1, float32x4_t *a2, float *a3, float32x4_t *a4, float *a5)
{
  v10 = a2->f32[3];
  if (v10 < -1.0)
  {
    v10 = -1.0;
  }

  if (v10 > 1.0)
  {
    v10 = 1.0;
  }

  v11 = acosf(v10);
  v12 = v11 + v11;
  *a3 = v12;
  if (v12 > 0.00000011921)
  {
    v13 = *a2;
    v13.i64[1] = a2->u32[2];
    v14 = vmulq_f32(v13, v13);
    v15 = vmulq_n_f32(v13, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v14.i8, *v14.i8), *&vextq_s8(v14, v14, 8uLL)).f32[0]));
    *a4 = v15;
    v16 = *(a1 + 512);
    *a5 = v16;
    if (fabsf(v15.f32[1]) > 0.00000011921)
    {
      v17 = vmulq_f32(v15, v15);
      *v17.i32 = vdiv_f32(*&vextq_s8(v17, v17, 8uLL), vdup_lane_s32(*v17.i8, 1)).f32[0];
      *a5 = sqrtf((*v17.i32 + 1.0) / ((1.0 / (*(a1 + 516) * *(a1 + 516))) + (*v17.i32 / (v16 * v16))));
    }
  }
}

void sub_1AFD9931C(uint64_t a1, int8x16_t *a2, float *a3, float32x4_t *a4)
{
  v16 = *a2;
  LODWORD(v7) = HIDWORD(*a2);
  if (v7 < -1.0)
  {
    v7 = -1.0;
  }

  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  v8 = acosf(v7);
  v9 = v8 + v8;
  *a3 = v9;
  if (v9 > 3.1416)
  {
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v11 = veorq_s8(*a2, v10);
    v16 = v11;
    v12 = *&v11.i32[3];
    if (*&v11.i32[3] < -1.0)
    {
      v12 = -1.0;
    }

    if (v12 > 1.0)
    {
      v12 = 1.0;
    }

    v13 = acosf(v12);
    *a3 = v13 + v13;
  }

  v14 = v16;
  v14.i32[3] = 0;
  *a4 = v14;
  if (*a3 > 0.00000011921)
  {
    v15 = vmulq_f32(v14, v14);
    *a4 = vmulq_n_f32(v14, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v15, v15, 8uLL), vpadd_f32(*v15.i8, *v15.i8)).f32[0]));
  }
}

__n128 sub_1AFD9940C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>, float a3@<S0>, float32_t a4@<S1>)
{
  v6 = __sincosf_stret(a3);
  v7 = *(a1 + 512);
  if (fabsf(v6.__cosval) > 0.00000011921)
  {
    v7 = sqrtf((((v6.__sinval * v6.__sinval) / (v6.__cosval * v6.__cosval)) + 1.0) / ((((v6.__sinval * v6.__sinval) / (v6.__cosval * v6.__cosval)) / (v7 * v7)) + (1.0 / (*(a1 + 516) * *(a1 + 516)))));
  }

  v8.i32[0] = 0;
  v8.i32[3] = 0;
  v8.i32[1] = LODWORD(v6.__cosval);
  v8.f32[2] = -v6.__sinval;
  v9 = vmulq_f32(v8, v8);
  v10 = sqrtf(vadd_f32(*&vextq_s8(v9, v9, 8uLL), vpadd_f32(*v9.i8, *v9.i8)).f32[0]);
  v11 = __sincosf_stret(v7 * 0.5);
  v12.i32[0] = 0;
  v12.i32[1] = LODWORD(v6.__cosval);
  *v13.i8 = vmul_n_f32(v12, v11.__sinval / v10);
  v14.i64[0] = v13.i64[0];
  *&v14.i32[2] = -(v6.__sinval * (v11.__sinval / v10));
  v15.i64[0] = 0;
  v14.i32[3] = LODWORD(v11.__cosval);
  v16 = vextq_s8(v14, v14, 8uLL).u64[0];
  *v17.f32 = vzip1_s32(v16, *v13.i8);
  *v18.f32 = vext_s8(*v13.i8, v16, 4uLL);
  v19.i64[0] = LODWORD(a4);
  *v20.f32 = vdup_laneq_s32(v14, 3);
  v15.i64[1] = v18.i64[0];
  v17.i64[1] = LODWORD(a4);
  v19.i64[1] = v13.i64[0];
  v21 = vmulq_f32(v17, v15);
  v17.i32[0] = 0;
  v17.i32[2] = 0;
  v17.f32[1] = a4;
  v17.f32[3] = a4;
  v18.i64[1] = vextq_s8(v14, v13, 0xCuLL).u64[0];
  v22 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v19, v20), vmulq_f32(v17, v18)), xmmword_1AFE47BE0), v21);
  v23 = veorq_s8(v14, xmmword_1AFE47BF0);
  v14.i64[0] = vextq_s8(v23, v23, 8uLL).u64[0];
  *v24.f32 = vzip1_s32(*v14.i8, *v23.f32);
  *v17.f32 = vext_s8(*v14.i8, *v23.f32, 4uLL);
  v19.i64[0] = vextq_s8(v22, v22, 4uLL).u64[0];
  *v14.i8 = vext_s8(*v23.f32, *v14.i8, 4uLL);
  *v25.f32 = vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *v22.f32);
  v25.i64[1] = v19.i64[0];
  v14.u64[1] = vrev64_s32(*v24.f32);
  v26 = vmulq_laneq_f32(v23, v22, 3);
  v27 = vtrn2q_s32(v23, v23);
  v19.i64[1] = v25.i64[0];
  v24.i64[1] = v17.i64[0];
  result = vaddq_f32(vsubq_f32(v26, vmulq_f32(v14, v25)), vaddq_f32(vmulq_f32(vextq_s8(v27, v27, 8uLL), vdupq_lane_s64(v22.i64[0], 0)), vmulq_f32(v24, v19)));
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

uint64_t sub_1AFD995B8(uint64_t result, int a2, unsigned int a3, float a4)
{
  if ((a2 - 3) < 2)
  {
    if (a3 > 2)
    {
      *(result + 700) = a4;
      v4 = *(result + 688) | 4;
    }

    else
    {
      *(result + 692) = a4;
      v4 = *(result + 688) | 1;
    }
  }

  else
  {
    if ((a2 - 1) > 1)
    {
      return result;
    }

    if (a3 > 2)
    {
      *(result + 500) = a4;
      return result;
    }

    *(result + 696) = a4;
    v4 = *(result + 688) | 2;
  }

  *(result + 688) = v4;
  return result;
}

float sub_1AFD9961C(float *a1, int a2, unsigned int a3)
{
  result = 0.0;
  if ((a2 - 3) < 2)
  {
    if (a3 > 2)
    {
      if (a3 - 3 <= 2)
      {
        return a1[175];
      }
    }

    else
    {
      return a1[173];
    }
  }

  else if ((a2 - 1) <= 1)
  {
    if (a3 > 2)
    {
      if (a3 - 3 <= 2)
      {
        return a1[125];
      }
    }

    else
    {
      return a1[174];
    }
  }

  return result;
}

uint64_t sub_1AFD99680(_OWORD *a1, _OWORD *a2, _OWORD *a3)
{
  a1[23] = *a2;
  a1[24] = a2[1];
  a1[25] = a2[2];
  a1[26] = a2[3];
  a1[27] = *a3;
  a1[28] = a3[1];
  a1[29] = a3[2];
  a1[30] = a3[3];
  return (*(*a1 + 16))();
}

const char *sub_1AFD996F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFDA1AA0(a1, a2, a3);
  v5 = 0;
  v6 = a1 + 368;
  v7 = a2 + 64;
  do
  {
    for (i = 0; i != 16; i += 4)
    {
      *(v7 + i) = *(v6 + i);
    }

    ++v5;
    v6 += 16;
    v7 += 16;
  }

  while (v5 != 3);
  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 112 + j) = *(a1 + 416 + j);
  }

  v10 = 0;
  v11 = a1 + 432;
  v12 = a2 + 128;
  do
  {
    for (k = 0; k != 16; k += 4)
    {
      *(v12 + k) = *(v11 + k);
    }

    ++v10;
    v11 += 16;
    v12 += 16;
  }

  while (v10 != 3);
  for (m = 0; m != 16; m += 4)
  {
    *(a2 + 176 + m) = *(a1 + 480 + m);
  }

  *&v15 = *(a1 + 512);
  DWORD2(v15) = *(a1 + 520);
  HIDWORD(v15) = *(a1 + 496);
  *(a2 + 192) = v15;
  *(a2 + 208) = *(a1 + 500);
  *(a2 + 216) = *(a1 + 508);
  return "btConeTwistConstraintData";
}

float32_t sub_1AFD99804(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, int8x16_t *a5, float32x4_t *a6, float32x4_t *a7, float32x4_t *a8, float a9, float a10)
{
  v10 = *a6;
  *a1 = *a6;
  v11 = vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL);
  v12 = vsubq_f32(vmulq_f32(v11, *a4), vmulq_f32(v10, vextq_s8(vextq_s8(*a4, *a4, 0xCuLL), *a4, 8uLL)));
  v13 = vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL);
  v14 = vmulq_f32(a2[2], v13);
  v13.i32[3] = 0;
  v15 = vmulq_f32(*a2, v13);
  v16 = vmulq_f32(a2[1], v13);
  v14.i32[3] = 0;
  *v16.f32 = vadd_f32(vpadd_f32(*v15.i8, *v16.f32), vzip1_s32(*&vextq_s8(v15, v15, 8uLL), *&vextq_s8(v16, v16, 8uLL)));
  *&v16.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
  a1[1] = v16;
  v17 = vsubq_f32(vmulq_f32(v10, vextq_s8(vextq_s8(*a5, *a5, 0xCuLL), *a5, 8uLL)), vmulq_f32(v11, *a5));
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v19 = vmulq_f32(a3[2], v18);
  v18.i32[3] = 0;
  v20 = vmulq_f32(*a3, v18);
  v21 = vmulq_f32(a3[1], v18);
  v19.i32[3] = 0;
  *v21.f32 = vadd_f32(vpadd_f32(*v20.i8, *v21.f32), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v21, v21, 8uLL)));
  *&v21.u32[2] = vpadd_f32(vpadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)), 0);
  a1[2] = v21;
  v22 = vmulq_f32(v16, *a7);
  a1[3] = v22;
  v23 = vmulq_f32(*a8, v21);
  a1[4] = v23;
  v24 = vmulq_f32(v16, v22);
  v25 = (vadd_f32(*&vextq_s8(v24, v24, 8uLL), vpadd_f32(*v24.i8, *v24.i8)).f32[0] + a9) + a10;
  v26 = vmulq_f32(v21, v23);
  result = v25 + vadd_f32(vpadd_f32(*v26.i8, *v26.i8), *&vextq_s8(v26, v26, 8uLL)).f32[0];
  a1[5].f32[0] = result;
  return result;
}

float32x2_t sub_1AFD99944(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  *a1 = 0uLL;
  v6 = vmulq_f32(*a3, *a2);
  v7 = vmulq_f32(*a2, a3[1]);
  v8 = vmulq_f32(*a2, a3[2]);
  v8.i32[3] = 0;
  *v6.f32 = vadd_f32(vpadd_f32(*v6.f32, *v7.i8), vzip1_s32(*&vextq_s8(v6, v6, 8uLL), *&vextq_s8(v7, v7, 8uLL)));
  *&v6.u32[2] = vpadd_f32(vpadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)), 0);
  a1[1] = v6;
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = veorq_s8(*a2, v9);
  v11 = vmulq_f32(*a4, v10);
  v12 = vmulq_f32(a4[1], v10);
  v13 = vmulq_f32(a4[2], v10);
  v13.i32[3] = 0;
  *v11.f32 = vadd_f32(vpadd_f32(*v11.f32, *v12.i8), vzip1_s32(*&vextq_s8(v11, v11, 8uLL), *&vextq_s8(v12, v12, 8uLL)));
  *&v11.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
  a1[2] = v11;
  v14 = vmulq_f32(v6, *a5);
  a1[3] = v14;
  v15 = vmulq_f32(v11, *a6);
  a1[4] = v15;
  v16 = vmulq_f32(v6, v14);
  v17 = vmulq_f32(v11, v15);
  result = vadd_f32(vadd_f32(*&vextq_s8(v16, v16, 8uLL), vpadd_f32(*v16.i8, *v16.i8)), vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)));
  a1[5].i32[0] = result.i32[0];
  return result;
}

void sub_1AFD99A20(uint64_t a1, _DWORD *a2, uint64_t a3, float32x4_t *a4, _OWORD *a5, float32x4_t *a6, float32x4_t *a7, int a8)
{
  sub_1AFDA19B8(a1, 4, a2, a3);
  *v14 = &unk_1F2572780;
  *(v14 + 792) = xmmword_1AFEAC3A0;
  *(v14 + 808) = 1065353216;
  *(v14 + 812) = 0;
  *(v14 + 820) = 0;
  *(v14 + 840) = 0x1000000;
  *(v14 + 844) = a8;
  *(v14 + 852) = 0;
  v15 = *a4;
  *(v14 + 704) = *a4;
  v15.i32[0] = a2[4];
  v15.i32[1] = a2[8];
  v16 = v15;
  v16.i32[2] = a2[12];
  v17 = *a6;
  v18 = vmulq_f32(*a6, v16);
  v19 = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).f32[0];
  if (v19 >= 1.0)
  {
    v15.i32[0] = a2[5];
    v17.i32[0] = a2[6];
    v17.i32[1] = a2[10];
    v17.i32[2] = a2[14];
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v16 = veorq_s8(v17, v24);
  }

  else
  {
    if (v19 > -1.0)
    {
      v20 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
      *v21.f32 = vext_s8(*v15.f32, *&vextq_s8(v16, v16, 8uLL), 4uLL);
      v21.i64[1] = v15.i64[0];
      v22 = vsubq_f32(vmulq_f32(v17, v21), vmulq_f32(v16, v20));
      v15 = vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL);
      v15.i32[3] = 0;
      v23 = vsubq_f32(vmulq_f32(v20, v15), vmulq_f32(v17, vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL)));
      v16 = vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL);
      v16.i32[3] = 0;
      goto LABEL_7;
    }

    v15.i32[0] = a2[5];
    v16.i32[0] = a2[6];
    v16.i32[1] = a2[10];
    v16.i32[2] = a2[14];
  }

  v15.i32[1] = a2[9];
  v15.i32[2] = a2[13];
LABEL_7:
  *(v14 + 656) = vzip1_s32(*v16.f32, *v15.f32);
  *(v14 + 664) = a6->i32[0];
  *(v14 + 668) = 0;
  *(v14 + 672) = vzip2_s32(*v16.f32, *v15.f32);
  *(v14 + 680) = a6->i32[1];
  *(v14 + 684) = 0;
  v25 = vextq_s8(v16, v16, 8uLL).u64[0];
  *(v14 + 688) = vzip1_s32(v25, *&vextq_s8(v15, v15, 8uLL));
  *(v14 + 696) = a6->i32[2];
  *(v14 + 700) = 0;
  v26 = *a6;
  v27 = *a7;
  v28 = vextq_s8(vextq_s8(v27, v27, 0xCuLL), *a7, 8uLL);
  v29 = vmulq_f32(*a6, *a7);
  v30 = vadd_f32(vpadd_f32(*v29.i8, *v29.i8), *&vextq_s8(v29, v29, 8uLL)).f32[0];
  if (v30 >= -1.0)
  {
    v38 = vsubq_f32(vmulq_f32(v26, v28), vmulq_f32(v27, vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL)));
    v38.i32[3] = sqrtf((v30 + 1.0) + (v30 + 1.0));
    v39.i32[1] = 1056964608;
    v39.i64[1] = 0x3F0000003F000000;
    *v39.i32 = 1.0 / v38.f32[3];
    v40 = vzip1q_s32(v39, v39);
    v40.f32[2] = 1.0 / v38.f32[3];
    v41 = vmulq_f32(v38, v40);
    v37 = vzip2q_s32(vzip1q_s32(v41, vextq_s8(v41, v41, 0xCuLL)), v41);
  }

  else
  {
    LODWORD(v31) = HIDWORD(a6->i64[0]);
    v32 = 1.0 / sqrtf((v31 * v31) + (v26.f32[0] * v26.f32[0]));
    v26.f32[0] = v26.f32[0] * v32;
    v33 = -(v26.f32[1] * v32);
    v34 = 1.0 / sqrtf((v26.f32[2] * v26.f32[2]) + (v31 * v31));
    v35 = -(v26.f32[2] * v34);
    v36 = v26.f32[1] * v34;
    if (fabsf(v26.f32[2]) <= 0.70711)
    {
      v35 = v26.f32[0];
      v36 = 0.0;
    }

    else
    {
      v33 = 0.0;
    }

    v37.i64[0] = __PAIR64__(LODWORD(v35), LODWORD(v33));
    v37.i64[1] = LODWORD(v36);
  }

  v42 = vextq_s8(v37, v37, 8uLL).u64[0];
  *v43.f32 = vzip1_s32(v25, *v16.f32);
  *v44.f32 = vzip1_s32(v42, *v37.i8);
  *v45.f32 = vext_s8(*v37.i8, v42, 4uLL);
  v46.i64[0] = vextq_s8(v16, v16, 4uLL).u64[0];
  *v47.f32 = vdup_laneq_s32(v37, 3);
  v44.i64[1] = v45.i64[0];
  *&v46.u32[2] = vrev64_s32(*v43.f32);
  v47.i64[1] = v37.i64[0];
  *&v16.u32[2] = vdup_lane_s32(*v16.f32, 1);
  v43.i64[1] = v43.i64[0];
  *&v45.u32[2] = vext_s8(v42, *v37.i8, 4uLL);
  v48 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v16, v47), vmulq_f32(v43, v45)), xmmword_1AFE47BE0), vmulq_f32(v46, v44));
  v49 = veorq_s8(v37, xmmword_1AFE47BF0);
  v50 = vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *v48.f32);
  v44.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
  *v45.f32 = vzip1_s32(*v44.f32, *v49.f32);
  *v46.f32 = vext_s8(*v44.f32, *v49.f32, 4uLL);
  v51.i64[0] = vextq_s8(v48, v48, 4uLL).u64[0];
  *v44.f32 = vext_s8(*v49.f32, *v44.f32, 4uLL);
  *v47.f32 = v50;
  v47.i64[1] = v51.i64[0];
  *&v44.u32[2] = vrev64_s32(*v45.f32);
  v52 = vmulq_f32(v44, v47);
  v53 = vmulq_laneq_f32(v49, v48, 3);
  v54 = vtrn2q_s32(v49, v49);
  *&v51.u32[2] = v50;
  v45.i64[1] = v46.i64[0];
  v55 = vaddq_f32(vsubq_f32(v53, v52), veorq_s8(vaddq_f32(vmulq_f32(vextq_s8(v54, v54, 8uLL), vdupq_lane_s64(v48.i64[0], 0)), vmulq_f32(v45, v51)), xmmword_1AFE47BE0));
  v43.i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
  v55.i32[3] = 0;
  v56 = vsubq_f32(vmulq_f32(v27, vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL)), vmulq_f32(v28, v55));
  *(v14 + 768) = *a5;
  v57 = vext_s8(*v55.f32, *&vextq_s8(v56, v56, 8uLL), 4uLL);
  v55.i32[1] = v56.i32[1];
  *(v14 + 720) = v55.i64[0];
  *(v14 + 728) = a7->i32[0];
  *(v14 + 732) = 0;
  *(v14 + 736) = v57;
  *(v14 + 744) = a7->i32[1];
  *(v14 + 748) = 0;
  *(v14 + 752) = vzip1_s32(*v43.f32, *v56.i8);
  *(v14 + 760) = a7->i32[2];
  *(v14 + 764) = 0;
  v58 = 1.0;
  if (a8)
  {
    v58 = -1.0;
  }

  *(v14 + 836) = v58;
}

uint64_t sub_1AFD99E20(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, int a5)
{
  result = sub_1AFDA18D4(a1, 4, a2);
  *result = &unk_1F2572780;
  *(result + 792) = xmmword_1AFEAC3A0;
  *(result + 808) = 1065353216;
  *(result + 812) = 0;
  *(result + 820) = 0;
  *(result + 840) = 0x1000000;
  *(result + 844) = a5;
  *(result + 852) = 0;
  v10 = a4->f32[2];
  v11 = a4->f32[1];
  if (fabsf(v10) <= 0.70711)
  {
    v19 = (v11 * v11) + (a4->f32[0] * a4->f32[0]);
    v20 = 1.0 / sqrtf(v19);
    v16.i64[1] = 0;
    v16.f32[0] = -(v11 * v20);
    v16.f32[1] = a4->f32[0] * v20;
    v15 = -(v10 * v16.f32[1]);
    v17 = v10 * v16.f32[0];
    v18 = v19 * v20;
  }

  else
  {
    v12 = (v10 * v10) + (v11 * v11);
    v13 = 1.0 / sqrtf(v12);
    *&v14 = v11 * v13;
    v15 = v12 * v13;
    v16.i32[0] = 0;
    v16.f32[1] = -(v10 * v13);
    v16.i64[1] = v14;
    v17 = -(a4->f32[0] * *&v14);
    v18 = a4->f32[0] * v16.f32[1];
  }

  *(result + 704) = *a3;
  *(result + 656) = v16.i32[0];
  *(result + 660) = v15;
  *(result + 664) = a4->i32[0];
  *(result + 668) = 0;
  *(result + 672) = v16.i32[1];
  *(result + 676) = v17;
  *(result + 680) = a4->i32[1];
  *(result + 688) = v16.i32[2];
  *(result + 684) = 0;
  *(result + 692) = v18;
  *(result + 696) = a4->i32[2];
  *(result + 700) = 0;
  v21 = *a4;
  v22 = a2[1];
  v23 = a2[2];
  v24 = vmulq_f32(v22, *a4);
  v25 = vmulq_f32(*a4, v23);
  v26 = a2[3];
  v27 = vmulq_f32(*a4, v26);
  v27.i32[3] = 0;
  v28 = vadd_f32(vpadd_f32(*v24.i8, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
  v29 = vpadd_f32(vpadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL)), 0);
  *v30.f32 = vext_s8(v28, v29, 4uLL);
  *&v30.u32[2] = v28;
  *v31.f32 = v28;
  *&v31.u32[2] = v29;
  v32 = vmulq_f32(*a4, v31);
  v33 = vadd_f32(vpadd_f32(*v32.i8, *v32.i8), *&vextq_s8(v32, v32, 8uLL)).f32[0];
  if (v33 >= -1.0)
  {
    v43 = vsubq_f32(vmulq_f32(v21, v30), vmulq_f32(vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL), v31));
    v43.i32[3] = sqrtf((v33 + 1.0) + (v33 + 1.0));
    v44.i32[1] = 1056964608;
    v44.i64[1] = 0x3F0000003F000000;
    *v44.i32 = 1.0 / v43.f32[3];
    v45 = vzip1q_s32(v44, v44);
    v45.f32[2] = 1.0 / v43.f32[3];
    v46 = vmulq_f32(v43, v45);
    v42 = vzip2q_s32(vzip1q_s32(v46, vextq_s8(v46, v46, 0xCuLL)), v46);
  }

  else
  {
    LODWORD(v34) = HIDWORD(a4->i64[0]);
    v35 = fabsf(v21.f32[2]);
    v36 = 1.0 / sqrtf((v34 * v34) + (v21.f32[0] * v21.f32[0]));
    v37 = -(v21.f32[1] * v36);
    v38 = v21.f32[0] * v36;
    v39 = v37;
    v21.f32[0] = 1.0 / sqrtf((v21.f32[2] * v21.f32[2]) + (v34 * v34));
    v40 = v21.f32[1] * v21.f32[0];
    if (v35 <= 0.70711)
    {
      v41 = v38;
    }

    else
    {
      v39 = 0.0;
      v41 = -(v21.f32[2] * v21.f32[0]);
    }

    if (v35 <= 0.70711)
    {
      v40 = 0.0;
    }

    v42.i64[0] = __PAIR64__(LODWORD(v41), LODWORD(v39));
    v42.i64[1] = LODWORD(v40);
  }

  v47 = vextq_s8(v42, v42, 8uLL).u64[0];
  v48 = vext_s8(v47, *v42.i8, 4uLL);
  *v49.f32 = vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *v16.f32);
  *v50.f32 = vzip1_s32(v47, *v42.i8);
  *v51.f32 = vext_s8(*v42.i8, v47, 4uLL);
  v52.i64[0] = vextq_s8(v16, v16, 4uLL).u64[0];
  *v53.f32 = vdup_laneq_s32(v42, 3);
  v50.i64[1] = v51.i64[0];
  *&v52.u32[2] = vrev64_s32(*v49.f32);
  v53.i64[1] = v42.i64[0];
  *&v16.u32[2] = vdup_lane_s32(*v16.f32, 1);
  v49.i64[1] = v49.i64[0];
  *&v51.u32[2] = v48;
  v54 = vsubq_f32(veorq_s8(vaddq_f32(vmulq_f32(v16, v53), vmulq_f32(v49, v51)), xmmword_1AFE47BE0), vmulq_f32(v52, v50));
  v55 = veorq_s8(v42, xmmword_1AFE47BF0);
  v49.i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
  *v50.f32 = vzip1_s32(*v49.f32, *v55.f32);
  *v52.f32 = vext_s8(*v49.f32, *v55.f32, 4uLL);
  v56.i64[0] = vextq_s8(v54, v54, 4uLL).u64[0];
  *v49.f32 = vext_s8(*v55.f32, *v49.f32, 4uLL);
  *v57.f32 = vzip1_s32(*&vextq_s8(v54, v54, 8uLL), *v54.f32);
  v57.i64[1] = v56.i64[0];
  *&v49.u32[2] = vrev64_s32(*v50.f32);
  v58 = vmulq_laneq_f32(v55, v54, 3);
  v59 = vtrn2q_s32(v55, v55);
  v56.i64[1] = v57.i64[0];
  v50.i64[1] = v52.i64[0];
  v60 = vaddq_f32(vsubq_f32(v58, vmulq_f32(v49, v57)), veorq_s8(vaddq_f32(vmulq_f32(vextq_s8(v59, v59, 8uLL), vdupq_lane_s64(v54.i64[0], 0)), vmulq_f32(v50, v56)), xmmword_1AFE47BE0));
  v59.i64[0] = vextq_s8(v60, v60, 8uLL).u64[0];
  v60.i32[3] = 0;
  v61 = vsubq_f32(vmulq_f32(v31, vextq_s8(vextq_s8(v60, v60, 0xCuLL), v60, 8uLL)), vmulq_f32(v30, v60));
  v62 = vmulq_f32(v22, *a3);
  v63 = vmulq_f32(v23, *a3);
  v64 = vmulq_f32(v26, *a3);
  v64.i32[3] = 0;
  *v62.f32 = vadd_f32(vpadd_f32(*v62.f32, *v63.i8), vzip1_s32(*&vextq_s8(v62, v62, 8uLL), *&vextq_s8(v63, v63, 8uLL)));
  *&v62.u32[2] = vpadd_f32(vpadd_f32(*v64.i8, *&vextq_s8(v64, v64, 8uLL)), 0);
  *(result + 768) = vaddq_f32(a2[4], v62);
  *v62.f32 = vext_s8(*v60.f32, *&vextq_s8(v61, v61, 8uLL), 4uLL);
  v60.i32[1] = v61.i32[1];
  *(result + 720) = v60.i64[0];
  *(result + 728) = v28.i32[0];
  *(result + 732) = 0;
  *(result + 744) = v28.i32[1];
  *(result + 736) = v62.i64[0];
  *(result + 748) = 0;
  *(result + 752) = vzip1_s32(*v59.i8, *v61.i8);
  *(result + 760) = v29.i32[0];
  *(result + 764) = 0;
  v65 = 1.0;
  if (a5)
  {
    v65 = -1.0;
  }

  *(result + 836) = v65;
  return result;
}

void sub_1AFD9A230(uint64_t a1, double a2, double a3, double a4, float32x4_t a5, double a6, double a7, double a8, int32x4_t a9)
{
  v139 = *MEMORY[0x1E69E9840];
  if (*(a1 + 842) == 1)
  {
    *(a1 + 56) = 0;
    *(a1 + 848) = 0;
    if ((*(a1 + 840) & 1) == 0)
    {
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      v12 = *(a1 + 704);
      v13 = vmulq_f32(v10[1], v12);
      v14 = vmulq_f32(v12, v10[2]);
      v15 = vmulq_f32(v12, v10[3]);
      v15.i32[3] = 0;
      *v14.f32 = vadd_f32(vpadd_f32(*v13.i8, *v14.f32), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
      v16 = 0;
      *&v14.u32[2] = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
      v17 = vaddq_f32(v14, v10[4]);
      v18 = *(a1 + 768);
      v19 = vmulq_f32(v11[1], v18);
      v20 = vmulq_f32(v18, v11[2]);
      v21 = vmulq_f32(v18, v11[3]);
      v21.i32[3] = 0;
      *v19.f32 = vadd_f32(vpadd_f32(*v19.f32, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
      *&v19.u32[2] = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
      v22 = vaddq_f32(v19, v11[4]);
      v23 = vsubq_f32(v22, v17);
      v23.i32[3] = 0;
      v24 = vmulq_f32(v23, v23);
      v25 = vadd_f32(*&vextq_s8(v24, v24, 8uLL), vpadd_f32(*v24.i8, *v24.i8)).f32[0];
      if (v25 <= 0.00000011921)
      {
        v136 = xmmword_1AFE20150;
        v26.i32[0] = 1.0;
      }

      else
      {
        v26 = vmulq_n_f32(v23, 1.0 / sqrtf(v25));
        v136 = v26;
        v16 = vextq_s8(v26, v26, 4uLL).u64[0];
      }

      v27 = 0;
      v28 = fabsf(v16.f32[1]) <= 0.70711;
      v29 = vmul_f32(v16, v16).f32[0] + (*v26.i32 * *v26.i32);
      v30 = 1.0 / sqrtf(v29);
      v31 = -(v16.f32[0] * v30);
      v32 = *v26.i32 * v30;
      v33 = -(v16.f32[1] * (*v26.i32 * v30));
      v34 = v16.f32[1] * v31;
      v35 = v29 * v30;
      v36 = (v16.f32[1] * v16.f32[1]) + (v16.f32[0] * v16.f32[0]);
      v37 = sqrtf(v36);
      v38 = -(v16.f32[1] * (1.0 / v37));
      v39 = (1.0 / v37) * v16.f32[0];
      v40 = v36 * (1.0 / v37);
      v41 = -(*v26.i32 * v39);
      v42 = v38 * *v26.i32;
      if (v28)
      {
        v38 = v32;
        v39 = 0.0;
      }

      else
      {
        v31 = 0.0;
      }

      if (v28)
      {
        v43 = v33;
      }

      else
      {
        v43 = v40;
      }

      if (v28)
      {
        v44 = v34;
      }

      else
      {
        v44 = v41;
      }

      v137.i64[0] = __PAIR64__(LODWORD(v38), LODWORD(v31));
      if (v28)
      {
        v42 = v35;
      }

      *&v137.i32[2] = v39;
      v138.i64[0] = __PAIR64__(LODWORD(v44), LODWORD(v43));
      v138.f32[2] = v42;
      v45 = (a1 + 80);
      v128 = v22;
      v129 = v17;
      do
      {
        v46 = *(a1 + 40);
        v47 = *(a1 + 48);
        v48 = *(v46 + 16);
        v49 = *(v46 + 32);
        v50 = vtrn1q_s32(v48, v49);
        v51 = *(v46 + 48);
        v52 = *(v46 + 64);
        *v48.i8 = vzip2_s32(*v48.i8, *v49.i8);
        v49.i64[0] = vextq_s8(v50, v50, 8uLL).u64[0];
        v50.i64[1] = v51.u32[0];
        v48.u64[1] = vzip2_s32(*v51.i8, 0);
        v49.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
        v133 = v50;
        v134 = v48;
        v135 = v49;
        v53 = *(v47 + 16);
        v54 = *(v47 + 32);
        v55 = vtrn1q_s32(v53, v54);
        v56 = *(v47 + 48);
        v57 = *(v47 + 64);
        *v53.i8 = vzip2_s32(*v53.i8, *v54.i8);
        v54.i64[0] = vextq_s8(v55, v55, 8uLL).u64[0];
        v55.i64[1] = v56.u32[0];
        v53.u64[1] = vzip2_s32(*v56.i8, 0);
        v54.i64[1] = vextq_s8(v56, v56, 8uLL).u32[0];
        v132[0] = v55;
        v132[1] = v53;
        v132[2] = v54;
        v58 = vsubq_f32(v17, v52);
        v58.i32[3] = 0;
        v131 = v58;
        v59 = vsubq_f32(v22, v57);
        v59.i32[3] = 0;
        v130 = v59;
        sub_1AFD99804(v45, &v133, v132, &v131, &v130, (&v136 + v27), (v46 + 448), (v47 + 448), *(v46 + 384), *(v47 + 384));
        v22 = v128;
        v17 = v129;
        v27 += 16;
        v45 = v60 + 6;
      }

      while (v27 != 48);
    }

    v61 = *(a1 + 664);
    v62 = *(a1 + 680);
    v63 = *(a1 + 696);
    if (fabsf(v63) <= 0.70711)
    {
      v67 = (v62 * v62) + (v61 * v61);
      v68 = 1.0 / sqrtf(v67);
      v69.i32[0] = *(a1 + 664);
      v69.f32[1] = -v62;
      v70.f32[0] = -v63;
      *a9.i8 = vmul_n_f32(v69, v68);
      v66 = vrev64q_s32(a9).u64[0];
      v70.i32[1] = *(a1 + 696);
      *a5.f32 = vmul_f32(*a9.i8, v70);
      a5.f32[2] = v67 * v68;
    }

    else
    {
      v64 = (v63 * v63) + (v62 * v62);
      v65 = 1.0 / sqrtf(v64);
      v66.i32[0] = 0;
      v66.i32[3] = 0;
      v66.f32[1] = -(v63 * v65);
      v66.f32[2] = v62 * v65;
      a5.f32[0] = v64 * v65;
      a5.f32[1] = -(v61 * (v62 * v65));
      a5.f32[2] = v61 * v66.f32[1];
    }

    v71 = *(a1 + 40);
    v72 = *(a1 + 48);
    v73 = v71[1];
    v74 = v71[2];
    v75 = vmulq_f32(v66, v73);
    v76 = vmulq_f32(v66, v74);
    v77 = v71[3];
    v78 = vmulq_f32(v66, v77);
    v78.i32[3] = 0;
    *v75.i8 = vadd_f32(vpadd_f32(*v75.i8, *v76.i8), vzip1_s32(*&vextq_s8(v75, v75, 8uLL), *&vextq_s8(v76, v76, 8uLL)));
    v75.u64[1] = vpadd_f32(vpadd_f32(*v78.i8, *&vextq_s8(v78, v78, 8uLL)), 0);
    v79 = vmulq_f32(a5, v73);
    v80 = vmulq_f32(a5, v74);
    v81 = vmulq_f32(a5, v77);
    v81.i32[3] = 0;
    *v79.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v79, v79, 8uLL), *&vextq_s8(v80, v80, 8uLL)), vpadd_f32(*v79.i8, *v80.i8));
    v79.u64[1] = vpadd_f32(vpadd_f32(*v81.f32, *&vextq_s8(v81, v81, 8uLL)), 0);
    v131 = v79;
    v132[0] = v75;
    v81.i64[0] = __PAIR64__(LODWORD(v62), LODWORD(v61));
    v81.i64[1] = LODWORD(v63);
    v82 = vmulq_f32(v81, v73);
    v83 = vmulq_f32(v81, v74);
    v84 = vmulq_f32(v81, v77);
    v84.i32[3] = 0;
    *v82.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v82, v82, 8uLL), *&vextq_s8(v83, v83, 8uLL)), vpadd_f32(*v82.i8, *v83.i8));
    v82.u64[1] = vpadd_f32(vpadd_f32(*v84.i8, *&vextq_s8(v84, v84, 8uLL)), 0);
    v85 = vtrn1q_s32(v73, v74);
    *v79.i8 = vzip2_s32(*v73.f32, *v74.f32);
    v73.i64[0] = vextq_s8(v85, v85, 8uLL).u64[0];
    v85.i64[1] = v77.u32[0];
    v79.u64[1] = vzip2_s32(*v77.f32, 0);
    v73.i64[1] = vextq_s8(v77, v77, 8uLL).u32[0];
    v136 = v85;
    v137 = v79;
    v138 = v73;
    v86 = *(v72 + 16);
    v87 = *(v72 + 32);
    v88 = vtrn1q_s32(v86, v87);
    v89 = *(v72 + 48);
    *v86.i8 = vzip2_s32(*v86.i8, *v87.i8);
    v87.i64[0] = vextq_s8(v88, v88, 8uLL).u64[0];
    v88.i64[1] = v89.u32[0];
    v86.u64[1] = vzip2_s32(*v89.i8, 0);
    v130 = v82;
    v87.i64[1] = vextq_s8(v89, v89, 8uLL).u32[0];
    v133 = v88;
    v134 = v86;
    v135 = v87;
    sub_1AFD99944((a1 + 368), v132, &v136, &v133, v71 + 28, (v72 + 448));
    v90 = *(a1 + 40);
    v91 = *(a1 + 48);
    v92 = *(v90 + 16);
    v93 = *(v90 + 32);
    v94 = *(v90 + 48);
    v95 = vtrn1q_s32(v92, v93);
    v96.i64[0] = vextq_s8(v95, v95, 8uLL).u64[0];
    v95.i64[1] = v94.u32[0];
    *v92.i8 = vzip2_s32(*v92.i8, *v93.i8);
    v92.u64[1] = vzip2_s32(*v94.i8, 0);
    v96.i64[1] = vextq_s8(v94, v94, 8uLL).u32[0];
    v137 = v92;
    v138 = v96;
    v97 = *(v91 + 16);
    v98 = *(v91 + 32);
    v99 = vtrn1q_s32(v97, v98);
    v100 = *(v91 + 48);
    *v97.i8 = vzip2_s32(*v97.i8, *v98.i8);
    v98.i64[0] = vextq_s8(v99, v99, 8uLL).u64[0];
    v99.i64[1] = v100.u32[0];
    v97.u64[1] = vzip2_s32(*v100.i8, 0);
    v136 = v95;
    v98.i64[1] = vextq_s8(v100, v100, 8uLL).u32[0];
    v133 = v99;
    v134 = v97;
    v135 = v98;
    sub_1AFD99944((a1 + 464), &v131, &v136, &v133, (v90 + 448), (v91 + 448));
    v101 = *(a1 + 40);
    v102 = *(a1 + 48);
    v103 = *(v101 + 16);
    v104 = *(v101 + 32);
    v105 = *(v101 + 48);
    v106 = vtrn1q_s32(v103, v104);
    v107.i64[0] = vextq_s8(v106, v106, 8uLL).u64[0];
    v106.i64[1] = v105.u32[0];
    *v103.i8 = vzip2_s32(*v103.i8, *v104.i8);
    v103.u64[1] = vzip2_s32(*v105.i8, 0);
    v107.i64[1] = vextq_s8(v105, v105, 8uLL).u32[0];
    v137 = v103;
    v138 = v107;
    v108 = *(v102 + 16);
    v109 = *(v102 + 32);
    v110 = vtrn1q_s32(v108, v109);
    v111 = *(v102 + 48);
    *v108.i8 = vzip2_s32(*v108.i8, *v109.i8);
    v109.i64[0] = vextq_s8(v110, v110, 8uLL).u64[0];
    v110.i64[1] = v111.u32[0];
    v108.u64[1] = vzip2_s32(*v111.i8, 0);
    v136 = v106;
    v109.i64[1] = vextq_s8(v111, v111, 8uLL).u32[0];
    v133 = v110;
    v134 = v108;
    v135 = v109;
    *v112.f32 = sub_1AFD99944((a1 + 560), &v130, &v136, &v133, (v101 + 448), (v102 + 448));
    *(a1 + 828) = 0;
    v113 = sub_1AFD9B85C(a1, (*(a1 + 40) + 16), (*(a1 + 48) + 16), v112);
    *(a1 + 832) = v113;
    sub_1AFDA1C70(a1 + 792, v113);
    v114.i32[0] = *(a1 + 664);
    v114.i32[1] = *(a1 + 680);
    v114.i32[2] = *(a1 + 696);
    v115 = *(a1 + 40);
    v116 = *(a1 + 48);
    v117 = vmulq_f32(v115[1], v114);
    v118 = vmulq_f32(v114, v115[2]);
    v119 = vmulq_f32(v114, v115[3]);
    v119.i32[3] = 0;
    *v117.f32 = vadd_f32(vpadd_f32(*v117.f32, *v118.i8), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
    v120 = v115[19];
    v121 = v115[20];
    v120.i32[3] = 0;
    v121.i32[3] = 0;
    v122 = v116[19];
    v123 = v116[20];
    v122.i32[3] = 0;
    v123.i32[3] = 0;
    *&v117.u32[2] = vpadd_f32(vpadd_f32(*v119.i8, *&vextq_s8(v119, v119, 8uLL)), 0);
    v124 = v115[21];
    v124.i32[3] = 0;
    v125 = vmulq_f32(v117, vaddq_f32(vaddq_f32(vmulq_n_f32(v120, v117.f32[0]), vmulq_lane_f32(v121, *v117.f32, 1)), vmulq_n_f32(v124, v117.f32[2])));
    v126 = v116[21];
    v126.i32[3] = 0;
    v127 = vmulq_f32(v117, vaddq_f32(vaddq_f32(vmulq_n_f32(v122, v117.f32[0]), vmulq_lane_f32(v123, *v117.f32, 1)), vmulq_n_f32(v126, v117.f32[2])));
    *(a1 + 824) = 1.0 / vadd_f32(vadd_f32(vpadd_f32(*v125.i8, *v125.i8), *&vextq_s8(v125, v125, 8uLL)), vadd_f32(vpadd_f32(*v127.i8, *v127.i8), *&vextq_s8(v127, v127, 8uLL))).f32[0];
  }
}

void sub_1AFD9A904(uint64_t a1, _DWORD *a2, float32x4_t a3)
{
  if (*(a1 + 842) == 1)
  {
    v4 = 0;
    *a2 = 0;
LABEL_6:
    a2[1] = v4;
    return;
  }

  a3.i64[0] = 0x100000005;
  *a2 = 0x100000005;
  v6 = sub_1AFD9B85C(a1, (*(a1 + 40) + 16), (*(a1 + 48) + 16), a3);
  *(a1 + 832) = v6;
  sub_1AFDA1C70(a1 + 792, v6);
  if ((*(a1 + 820) & 1) != 0 || *(a1 + 841) == 1)
  {
    v7 = a2[1];
    ++*a2;
    v4 = v7 - 1;
    goto LABEL_6;
  }
}

void sub_1AFD9A990(float32x4_t *a1, uint64_t a2)
{
  v3 = a1[2].i64[1];
  v2 = a1[3].i64[0];
  v4 = v3 + 1;
  v5 = v2 + 1;
  v6 = v3 + 23;
  v7 = v2 + 23;
  if (a1[52].i8[11] == 1)
  {
    sub_1AFD9A9B8(a1, a2, v4, v5, v6, v7);
  }

  else
  {
    sub_1AFD9B20C(a1, a2, v4, v5, v6, v7);
  }
}

void sub_1AFD9A9B8(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  v10 = *(a2 + 40);
  v11 = a3[1];
  v12 = a1[41];
  v13 = a1[42];
  v12.i32[3] = 0;
  v13.i32[3] = 0;
  v14 = a1[43];
  v15 = a1[44];
  v14.i32[3] = 0;
  v16 = a3[2];
  v17 = a3[3];
  v18 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v11.f32[0]), v13, *v11.f32, 1), v14, v11, 2);
  v19 = vmulq_f32(*a3, v15);
  v20 = vmulq_f32(v11, v15);
  v21 = vmulq_f32(v16, v15);
  v21.i32[3] = 0;
  v22 = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0);
  v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, COERCE_FLOAT(*a3)), v13, *a3->f32, 1), v14, *a3, 2);
  *v24.f32 = vadd_f32(vpadd_f32(*v19.i8, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  *&v24.u32[2] = v22;
  v25 = a4[1];
  v26 = a1[45];
  v27 = a1[46];
  v26.i32[3] = 0;
  v27.i32[3] = 0;
  v29 = a1[47];
  v28 = a1[48];
  v29.i32[3] = 0;
  v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, v16.f32[0]), v13, *v16.f32, 1), v14, v16, 2);
  v31 = a4[2];
  v32 = a4[3];
  v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v25.f32[0]), v27, *v25.f32, 1), v29, v25, 2);
  v34 = vmulq_f32(*a4, v28);
  v35 = vmulq_f32(v25, v28);
  v36 = vmulq_f32(v31, v28);
  v36.i32[3] = 0;
  *v20.i8 = vpadd_f32(vpadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)), 0);
  v37 = vaddq_f32(v17, v24);
  v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*a4)), v27, *a4->f32, 1), v29, *a4, 2);
  v39 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, v31.f32[0]), v27, *v31.f32, 1), v29, v31, 2);
  *v31.f32 = vadd_f32(vpadd_f32(*v34.i8, *v35.i8), vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
  v31.i64[1] = v20.i64[0];
  v40 = vaddq_f32(v32, v31);
  v41 = vsubq_f32(v40, v37);
  v42 = *(a1[2].i64[1] + 384);
  v43 = *(a1[3].i64[0] + 384);
  if ((v42 + v43) <= 0.0)
  {
    v44 = 0.5;
  }

  else
  {
    v44 = v43 / (v42 + v43);
  }

  v45 = 1.0 - v44;
  v46.i32[3] = 0;
  v47 = __PAIR64__(v18.u32[2], v23.u32[2]);
  v47.i32[2] = v30.i32[2];
  v48 = __PAIR64__(v33.u32[2], v38.u32[2]);
  v49 = __PAIR64__(v33.u32[2], v38.u32[2]);
  v49.i32[2] = v39.i32[2];
  v50 = vmulq_n_f32(v47, v44);
  v50.i32[3] = 0;
  v51 = vmulq_n_f32(v49, 1.0 - v44);
  v51.i32[3] = 0;
  v52 = vaddq_f32(v50, v51);
  v53 = vmulq_f32(v52, v52);
  v54 = vmulq_n_f32(v52, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v53.i8, *v53.i8), *&vextq_s8(v53, v53, 8uLL)).f32[0]));
  v159 = v54;
  v55 = vsubq_f32(v40, v32);
  v55.i32[3] = 0;
  v56 = vmulq_f32(v54, v55);
  v57 = vmulq_n_f32(v54, vadd_f32(*&vextq_s8(v56, v56, 8uLL), vpadd_f32(*v56.i8, *v56.i8)).f32[0]);
  v57.i32[3] = 0;
  v58 = fminf(v42, v43) < 0.00000011921;
  v59 = vsubq_f32(v55, v57);
  v60 = vsubq_f32(v37, v17);
  v60.i32[3] = 0;
  v61 = vmulq_f32(v54, v60);
  v62 = vmulq_n_f32(v54, vadd_f32(*&vextq_s8(v61, v61, 8uLL), vpadd_f32(*v61.i8, *v61.i8)).f32[0]);
  v62.i32[3] = 0;
  v63 = vsubq_f32(v60, v62);
  v64 = vmulq_n_f32(v63, 1.0 - v44);
  v63.i32[3] = 0;
  v65 = vsubq_f32(v62, v57);
  v66 = vmulq_n_f32(v65, v44);
  v66.i32[3] = 0;
  v67 = vsubq_f32(v59, vmulq_n_f32(v65, 1.0 - v44));
  v67.i32[3] = 0;
  v68 = vaddq_f32(v63, v66);
  v69 = vmulq_n_f32(v59, v44);
  v69.i32[3] = 0;
  v64.i32[3] = 0;
  v70 = vaddq_f32(v69, v64);
  v71 = vmulq_f32(v70, v70);
  v72 = vadd_f32(vpadd_f32(*v71.i8, *v71.i8), *&vextq_s8(v71, v71, 8uLL)).f32[0];
  if (v72 <= 0.00000011921)
  {
    v46.i64[0] = __PAIR64__(v18.u32[1], v23.u32[1]);
    v46.i32[2] = v30.i32[1];
  }

  else
  {
    v46 = vmulq_n_f32(v70, 1.0 / sqrtf(v72));
  }

  v73 = 0;
  v41.i32[3] = 0;
  v74 = 2 * v10;
  v75 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
  v76 = vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL);
  v77 = vsubq_f32(vmulq_f32(v54, v76), vmulq_f32(v75, v46));
  v78 = vextq_s8(vextq_s8(v77, v77, 0xCuLL), v77, 8uLL);
  v78.i32[3] = 0;
  v156 = v78;
  v157 = v46;
  v79 = vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL);
  v80 = vsubq_f32(vmulq_f32(v68, v76), vmulq_f32(v79, v46));
  v81 = vextq_s8(vextq_s8(v67, v67, 0xCuLL), v67, 8uLL);
  v82 = vsubq_f32(vmulq_f32(v76, v67), vmulq_f32(v81, v46));
  v83 = vextq_s8(vextq_s8(v82, v82, 0xCuLL), v82, 8uLL);
  v83.i32[3] = 0;
  v158 = v83;
  v84 = *(a2 + 16);
  *(v84 + 8) = v80.i32[0];
  *v84 = vextq_s8(v80, v30, 4uLL).u64[0];
  v85 = *(a2 + 32);
  do
  {
    *(v85 + v73 * 4) = -v158.f32[v73];
    ++v73;
  }

  while (v73 != 3);
  v86 = vextq_s8(vextq_s8(v78, v78, 0xCuLL), v78, 8uLL);
  v87 = vsubq_f32(vmulq_f32(v68, v86), vmulq_f32(v79, v78));
  v88 = vextq_s8(vextq_s8(v87, v87, 0xCuLL), v87, 8uLL);
  v88.i32[3] = 0;
  v89 = vsubq_f32(vmulq_f32(v86, v67), vmulq_f32(v81, v78));
  v90 = vextq_s8(vextq_s8(v89, v89, 0xCuLL), v89, 8uLL);
  v90.i32[3] = 0;
  v158 = v90;
  if (v58 && a1[51].i8[4])
  {
    v158 = vmulq_n_f32(v90, v45);
    v88 = vmulq_n_f32(v88, v44);
  }

  v91 = 0;
  v92 = v84 + 4 * v10;
  *v92 = v88.i64[0];
  *(v92 + 8) = v88.i32[2];
  do
  {
    *(v85 + 4 * v10 + v91 * 4) = -v158.f32[v91];
    ++v91;
  }

  while (v91 != 3);
  v93 = vsubq_f32(vmulq_f32(v75, v68), vmulq_f32(v54, v79));
  v94 = vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL);
  v94.i32[3] = 0;
  v95 = vsubq_f32(vmulq_f32(v75, v67), vmulq_f32(v54, v81));
  v96 = vextq_s8(vextq_s8(v95, v95, 0xCuLL), v95, 8uLL);
  v96.i32[3] = 0;
  v158 = v96;
  if (v58)
  {
    v158 = vmulq_n_f32(v96, v45);
    v94 = vmulq_n_f32(v94, v44);
  }

  v97 = 0;
  v98 = v74;
  v99 = 4 * v74;
  v100 = v84 + v99;
  *v100 = v94.i64[0];
  *(v100 + 8) = v94.i32[2];
  do
  {
    *(v85 + v99 + v97 * 4) = -v158.f32[v97];
    ++v97;
  }

  while (v97 != 3);
  v101 = *(a2 + 4);
  if (a1[52].i8[8] == 1)
  {
    v102 = *(a2 + 48);
  }

  else
  {
    v103 = 0;
    v104 = *a2;
    v105 = *(a2 + 8);
    *v105 = v157.i64[0];
    *(v105 + 8) = v157.i32[2];
    v106 = v105 + 4 * v10;
    *v106 = v156.i64[0];
    *(v106 + 8) = v156.i32[2];
    v107 = v104 * v101;
    v108 = v105 + v99;
    *v108 = v159.i64[0];
    *(v108 + 8) = v159.i32[2];
    v109 = *(a2 + 24);
    do
    {
      *(v109 + v103 * 4) = -v157.f32[v103];
      ++v103;
    }

    while (v103 != 3);
    for (i = 0; i != 3; ++i)
    {
      *(v109 + 4 * v10 + i * 4) = -v156.f32[i];
    }

    v111 = 0;
    v112 = v109 + 4 * v98;
    do
    {
      *(v112 + v111 * 4) = -v159.f32[v111];
      ++v111;
    }

    while (v111 != 3);
    v113 = vmulq_f32(v46, v41);
    v102 = *(a2 + 48);
    *v102 = v107 * vadd_f32(*&vextq_s8(v113, v113, 8uLL), vpadd_f32(*v113.i8, *v113.i8)).f32[0];
    v114 = vmulq_f32(v41, v78);
    v102[v10] = v107 * vadd_f32(*&vextq_s8(v114, v114, 8uLL), vpadd_f32(*v114.i8, *v114.i8)).f32[0];
    v115 = vmulq_f32(v54, v41);
    v102[v98] = v107 * vadd_f32(*&vextq_s8(v115, v115, 8uLL), vpadd_f32(*v115.i8, *v115.i8)).f32[0];
  }

  *(v84 + 12 * v10) = v46.i32[0];
  v116 = 12 * v10 + 4;
  *(v84 + v116) = v46.i32[1];
  v117 = 12 * v10 + 8;
  *(v84 + v117) = v46.i32[2];
  v118 = 16 * v10;
  *(v84 + v118) = v78.i64[0];
  v119 = (4 * v10) | 2;
  *(v84 + 4 * v119) = v78.i32[2];
  *(v85 + 12 * v10) = -v46.f32[0];
  *(v85 + v116) = -v46.f32[1];
  *(v85 + v117) = -v46.f32[2];
  *(v85 + v118) = vneg_f32(*v78.f32);
  *(v85 + 4 * v119) = -v78.f32[2];
  v120 = *a2 * *(a2 + 4);
  *v121.f32 = vext_s8(__PAIR64__(v18.u32[2], v23.u32[2]), *&vextq_s8(v30, v30, 8uLL), 4uLL);
  v121.i64[1] = __PAIR64__(v18.u32[2], v23.u32[2]);
  *v122.f32 = vext_s8(v48, *&vextq_s8(v39, v39, 8uLL), 4uLL);
  *&v122.u32[2] = v48;
  v123 = vsubq_f32(vmulq_f32(v47, v122), vmulq_f32(v121, v49));
  v124 = vextq_s8(vextq_s8(v123, v123, 0xCuLL), v123, 8uLL);
  v124.i32[3] = 0;
  v125 = vmulq_f32(v46, v124);
  v102[3 * v10] = v120 * vadd_f32(vpadd_f32(*v125.i8, *v125.i8), *&vextq_s8(v125, v125, 8uLL)).f32[0];
  v126 = vmulq_f32(v78, v124);
  v102[v118 / 4] = v120 * vadd_f32(vpadd_f32(*v126.i8, *v126.i8), *&vextq_s8(v126, v126, 8uLL)).f32[0];
  v127 = a1[51].u8[4];
  if (a1[51].i8[4])
  {
    v128 = a1[50].f32[3] * a1[52].f32[1];
    v129 = v128 > 0.0;
    v130 = a1[52].u8[9];
  }

  else
  {
    v130 = a1[52].u8[9];
    if (v130 != 1)
    {
      return;
    }

    v129 = 0;
    v128 = 0.0;
  }

  v131 = 5 * v10;
  *(v84 + 4 * v131) = v54.i32[0];
  v132 = 20 * v10 + 4;
  *(v84 + v132) = v54.i32[1];
  v133 = 20 * v10 + 8;
  *(v84 + v133) = v54.i32[2];
  v155 = v54;
  *(v85 + 4 * v131) = -v54.f32[0];
  *(v85 + v132) = -v54.f32[1];
  *(v85 + v133) = -v54.f32[2];
  sub_1AFDA1DA8(&a1[49].f32[2]);
  v135 = v134;
  sub_1AFDA1D40(&a1[49].f32[2]);
  v137 = v136;
  v138 = *(a2 + 48);
  *(v138 + 4 * v131) = 0;
  if (v135 == v136)
  {
    v139 = v127;
  }

  else
  {
    v139 = 0;
  }

  v140 = a1[53].i32[1];
  v141 = a1 + 54;
  if ((v140 & 2) == 0)
  {
    v141 = (a2 + 4);
  }

  v142 = v141->f32[0];
  if (v130 && (v139 & 1) == 0)
  {
    if ((v140 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v131) = a1[53].i32[2];
    }

    v143 = sub_1AFDA1A10(a1[52].f32[0], v135, v136, a1[49].f32[0], v142 * *a2);
    v138 = *(a2 + 48);
    *(v138 + 4 * v131) = *(v138 + 4 * v131) + ((v143 * a1[49].f32[0]) * a1[52].f32[1]);
    v144 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v131) = -a1[49].f32[1];
    *(v144 + 4 * v131) = a1[49].i32[1];
  }

  if (v127)
  {
    *(v138 + 4 * v131) = *(v138 + 4 * v131) + ((v142 * *a2) * v128);
    if (a1[53].i8[4])
    {
      *(*(a2 + 56) + 4 * v131) = a1[53].i32[3];
    }

    v145 = -3.4028e38;
    v146 = 0.0;
    if (v129)
    {
      v147 = 0.0;
    }

    else
    {
      v147 = -3.4028e38;
    }

    if (v135 != v137)
    {
      v145 = v147;
    }

    if (v135 == v137 || v129)
    {
      v146 = 3.4028e38;
    }

    v148 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v131) = v145;
    *(v148 + 4 * v131) = v146;
    v149 = a1[50].f32[2];
    if (v149 <= 0.0)
    {
      v153 = *(v138 + 4 * v131);
    }

    else
    {
      v150 = vmulq_f32(*a5, v155);
      v151 = vmulq_f32(v155, *a6);
      LODWORD(v152) = vsub_f32(vadd_f32(vpadd_f32(*v150.i8, *v150.i8), *&vextq_s8(v150, v150, 8uLL)), vadd_f32(vpadd_f32(*v151.i8, *v151.i8), *&vextq_s8(v151, v151, 8uLL))).u32[0];
      v153 = *(v138 + 4 * v131);
      if (v129)
      {
        if (v152 >= 0.0)
        {
          goto LABEL_57;
        }

        v154 = -(v149 * v152);
        if (v154 <= v153)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v152 <= 0.0)
        {
          goto LABEL_57;
        }

        v154 = -(v149 * v152);
        if (v154 >= v153)
        {
          goto LABEL_57;
        }
      }

      *(v138 + 4 * v131) = v154;
      v153 = v154;
    }

LABEL_57:
    *(v138 + 4 * v131) = a1[50].f32[1] * v153;
  }
}

void sub_1AFD9B20C(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6)
{
  v10 = *(a2 + 40);
  v11 = *a3;
  v12 = a3[1];
  v13 = a1[41];
  v14 = a1[42];
  v13.i32[3] = 0;
  v14.i32[3] = 0;
  v16 = a1[43];
  v15 = a1[44];
  v16.i32[3] = 0;
  v17 = a3[2];
  v18 = a3[3];
  v19 = vmlaq_lane_f32(vmulq_n_f32(v13, v12.f32[0]), v14, *v12.f32, 1);
  v20 = vmlaq_lane_f32(vmulq_n_f32(v13, v17.f32[0]), v14, *v17.f32, 1);
  v21 = vmulq_f32(*a3, v15);
  v22 = vmulq_f32(v12, v15);
  v23 = vmulq_f32(v17, v15);
  v23.i32[3] = 0;
  v24 = vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(*a3)), v14, *a3->f32, 1);
  *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
  *&v21.u32[2] = vpadd_f32(vpadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)), 0);
  v25 = *a4;
  v26 = a4[1];
  v27 = a1[45];
  v28 = a1[46];
  v27.i32[3] = 0;
  v28.i32[3] = 0;
  v30 = a1[47];
  v29 = a1[48];
  v30.i32[3] = 0;
  v31 = a4[2];
  v32 = vmlaq_lane_f32(vmulq_n_f32(v27, v26.f32[0]), v28, *v26.f32, 1);
  v33 = vmlaq_lane_f32(vmulq_n_f32(v27, v31.f32[0]), v28, *v31.f32, 1);
  v34 = vmulq_f32(*a4, v29);
  v35 = vmulq_f32(v26, v29);
  v36 = vmulq_f32(v31, v29);
  v36.i32[3] = 0;
  v37 = vpadd_f32(vpadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)), 0);
  v38 = vaddq_f32(v18, v21);
  v39 = vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(*a4)), v28, *a4->f32, 1);
  *v27.f32 = vadd_f32(vpadd_f32(*v34.i8, *v35.i8), vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
  *&v27.u32[2] = v37;
  v40 = vaddq_f32(a4[3], v27);
  v113 = v40;
  v114 = v38;
  v41 = 4 * v10;
  if (a1[52].i8[8] == 1)
  {
    v42 = 2 * v10;
  }

  else
  {
    v43 = *(a2 + 8);
    *v43 = 1065353216;
    v44 = v41 + 4;
    *(v43 + v44) = 1065353216;
    v42 = 2 * v10;
    v45 = 8 * v10 + 8;
    *(v43 + v45) = 1065353216;
    v46 = *(a2 + 24);
    *v46 = -1082130432;
    *(v46 + v44) = -1082130432;
    *(v46 + v45) = -1082130432;
    v18 = a3[3];
  }

  v47 = vmlaq_laneq_f32(v19, v16, v12, 2);
  v48 = vmlaq_laneq_f32(v24, v16, v11, 2);
  v49 = vmlaq_laneq_f32(v20, v16, v17, 2);
  v50 = vmlaq_laneq_f32(v32, v30, v26, 2);
  v51 = vmlaq_laneq_f32(v39, v30, v25, 2);
  v52 = vmlaq_laneq_f32(v33, v30, v31, 2);
  v53 = *(a2 + 16);
  v54 = v53 + 4 * v10;
  v55 = v53 + 4 * v42;
  v56 = vnegq_f32(vsubq_f32(v38, v18));
  *v53 = 0;
  *(v53 + 4) = -v56.f32[2];
  *(v53 + 8) = v56.i32[1];
  *(v53 + 12) = 0;
  *v54 = v56.i32[2];
  *(v54 + 4) = 0;
  *(v54 + 8) = -v56.f32[0];
  *(v54 + 12) = 0;
  *v55 = -v56.f32[1];
  *(v55 + 4) = v56.i32[0];
  *(v55 + 8) = 0;
  v57 = vsubq_f32(v40, a4[3]);
  v58 = *(a2 + 32);
  v59 = v58 + 4 * v10;
  v60 = v58 + 4 * v42;
  *v58 = 0;
  *(v58 + 4) = -v57.f32[2];
  *(v58 + 8) = v57.i32[1];
  *(v58 + 12) = 0;
  *v59 = v57.i32[2];
  *(v59 + 4) = 0;
  *(v59 + 8) = -v57.f32[0];
  *(v59 + 12) = 0;
  *v60 = -v57.f32[1];
  *(v60 + 4) = v57.i32[0];
  *(v60 + 8) = 0;
  v61 = *a2 * *(a2 + 4);
  v62 = *(a2 + 48);
  if ((a1[52].i8[8] & 1) == 0)
  {
    v63 = 0;
    v64 = *(a2 + 48);
    do
    {
      *v64 = v61 * (v113.f32[v63] - v114.f32[v63]);
      v64 = (v64 + v41);
      ++v63;
    }

    while (v63 != 3);
  }

  *v65.f32 = vext_s8(__PAIR64__(v47.u32[2], v48.u32[2]), *&vextq_s8(v49, v49, 8uLL), 4uLL);
  v65.i64[1] = __PAIR64__(v47.u32[2], v48.u32[2]);
  v66 = __PAIR64__(v47.u32[2], v48.u32[2]);
  v66.i32[2] = v49.i32[2];
  v67.i64[0] = __PAIR64__(v47.u32[0], v48.u32[0]);
  v67.i64[1] = v49.u32[0];
  v68.i64[0] = __PAIR64__(v47.u32[1], v48.u32[1]);
  v68.i64[1] = v49.u32[1];
  v69 = *(a2 + 40);
  v70 = *(a2 + 16);
  v71 = 12 * v69;
  v72 = vzip1_s32(*v48.f32, *v47.f32);
  *(v70 + v71) = v72;
  v73 = 12 * v69 + 8;
  *(v70 + v73) = v49.i32[0];
  *(v70 + 16 * v69) = v48.i32[1];
  *(v70 + 16 * v69 + 4) = v47.i32[1];
  v74 = (16 * ((4 * v69) >> 2)) | 8;
  *(v70 + v74) = v49.i32[1];
  v75 = *(a2 + 32);
  *(v75 + v71) = vneg_f32(v72);
  *(v75 + v73) = -*v49.i32;
  v76 = 16 * v69;
  *(v75 + v76) = vneg_f32(vzip2_s32(*v48.f32, *v47.f32));
  *(v75 + v74) = -*&v49.i32[1];
  *v50.f32 = vext_s8(__PAIR64__(v50.u32[2], v51.u32[2]), *&vextq_s8(v52, v52, 8uLL), 4uLL);
  v50.i64[1] = __PAIR64__(v50.u32[2], v51.u32[2]);
  v77.i64[0] = v50.i64[1];
  v77.i64[1] = v52.u32[2];
  v112 = v66;
  v78 = vsubq_f32(vmulq_f32(v66, v50), vmulq_f32(v65, v77));
  v79 = vextq_s8(vextq_s8(v78, v78, 0xCuLL), v78, 8uLL);
  v79.i32[3] = 0;
  v80 = vmulq_f32(v67, v79);
  *(v62 + 12 * v69) = v61 * vadd_f32(*&vextq_s8(v80, v80, 8uLL), vpadd_f32(*v80.i8, *v80.i8)).f32[0];
  v81 = vmulq_f32(v68, v79);
  *(v62 + v76) = v61 * vadd_f32(*&vextq_s8(v81, v81, 8uLL), vpadd_f32(*v81.i8, *v81.i8)).f32[0];
  v82 = a1[51].u8[4];
  if (a1[51].i8[4])
  {
    v83 = a1[50].f32[3] * a1[52].f32[1];
    v84 = v83 > 0.0;
    v85 = a1[52].u8[9];
  }

  else
  {
    v85 = a1[52].u8[9];
    if (v85 != 1)
    {
      return;
    }

    v84 = 0;
    v83 = 0.0;
  }

  v86 = 5 * v69;
  *(v70 + 20 * v69) = v48.i32[2];
  v87 = 20 * v69;
  v88 = v87 + 4;
  *(v70 + v88) = v47.i32[2];
  v87 += 8;
  *(v70 + v87) = v49.i32[2];
  *(v75 + 4 * v86) = -v48.f32[2];
  *(v75 + v88) = -v47.f32[2];
  *(v75 + v87) = -*&v49.i32[2];
  sub_1AFDA1DA8(&a1[49].f32[2]);
  v90 = v89;
  sub_1AFDA1D40(&a1[49].f32[2]);
  v92 = v91;
  v93 = *(a2 + 48);
  *(v93 + 4 * v86) = 0;
  if (v90 == v91)
  {
    v94 = v82;
  }

  else
  {
    v94 = 0;
  }

  v95 = a1[53].i32[1];
  v96 = a1 + 54;
  if ((v95 & 2) == 0)
  {
    v96 = (a2 + 4);
  }

  v97 = v96->f32[0];
  if (v85 && (v94 & 1) == 0)
  {
    if ((v95 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v86) = a1[53].i32[2];
    }

    v98 = sub_1AFDA1A10(a1[52].f32[0], v90, v91, a1[49].f32[0], v97 * *a2);
    v93 = *(a2 + 48);
    *(v93 + 4 * v86) = *(v93 + 4 * v86) + ((v98 * a1[49].f32[0]) * a1[52].f32[1]);
    v99 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v86) = -a1[49].f32[1];
    *(v99 + 4 * v86) = a1[49].i32[1];
  }

  if (v82)
  {
    *(v93 + 4 * v86) = *(v93 + 4 * v86) + ((v97 * *a2) * v83);
    if (a1[53].i8[4])
    {
      *(*(a2 + 56) + 4 * v86) = a1[53].i32[3];
    }

    v100 = -3.4028e38;
    v101 = 0.0;
    if (v84)
    {
      v102 = 0.0;
    }

    else
    {
      v102 = -3.4028e38;
    }

    if (v90 != v92)
    {
      v100 = v102;
    }

    if (v90 == v92 || v84)
    {
      v101 = 3.4028e38;
    }

    v103 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v86) = v100;
    *(v103 + 4 * v86) = v101;
    v104 = a1[50].f32[2];
    if (v104 <= 0.0)
    {
      v108 = *(v93 + 4 * v86);
    }

    else
    {
      v105 = vmulq_f32(v112, *a5);
      v106 = vmulq_f32(v112, *a6);
      v107 = vsub_f32(vadd_f32(vpadd_f32(*v105.i8, *v105.i8), *&vextq_s8(v105, v105, 8uLL)), vadd_f32(vpadd_f32(*v106.i8, *v106.i8), *&vextq_s8(v106, v106, 8uLL))).f32[0];
      v108 = *(v93 + 4 * v86);
      v109 = -(v104 * v107);
      if (v84)
      {
        if (v107 >= 0.0 || v109 <= v108)
        {
          goto LABEL_45;
        }
      }

      else if (v107 <= 0.0 || v109 >= v108)
      {
        goto LABEL_45;
      }

      *(v93 + 4 * v86) = v109;
      v108 = v109;
    }

LABEL_45:
    *(v93 + 4 * v86) = a1[50].f32[1] * v108;
  }
}

uint64_t sub_1AFD9B7F8(_OWORD *a1, _OWORD *a2, _OWORD *a3)
{
  a1[41] = *a2;
  a1[42] = a2[1];
  a1[43] = a2[2];
  a1[44] = a2[3];
  a1[45] = *a3;
  a1[46] = a3[1];
  a1[47] = a3[2];
  a1[48] = a3[3];
  return (*(*a1 + 16))();
}

float sub_1AFD9B85C(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t a4)
{
  a4.i32[0] = *(a1 + 656);
  a4.i32[1] = *(a1 + 672);
  a4.i32[2] = *(a1 + 688);
  v4 = a2[1];
  v5 = vmulq_f32(*a2, a4);
  v6 = vmulq_f32(a4, v4);
  v7 = a2[2];
  v8 = vmulq_f32(a4, v7);
  v8.i32[3] = 0;
  v9 = vadd_f32(vpadd_f32(*v5.i8, *v6.i8), vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
  *v5.i8 = vpadd_f32(vpadd_f32(*v8.f32, *&vextq_s8(v8, v8, 8uLL)), 0);
  v8.i32[0] = *(a1 + 660);
  v8.i32[1] = *(a1 + 676);
  v8.i32[2] = *(a1 + 692);
  v10 = vmulq_f32(*a2, v8);
  v11 = vmulq_f32(v4, v8);
  v12 = vmulq_f32(v7, v8);
  v12.i32[3] = 0;
  *v10.i8 = vadd_f32(vpadd_f32(*v10.i8, *v11.i8), vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v11, v11, 8uLL)));
  *v11.i8 = vpadd_f32(vpadd_f32(*v12.f32, *&vextq_s8(v12, v12, 8uLL)), 0);
  v12.i32[0] = *(a1 + 724);
  v12.i32[1] = *(a1 + 740);
  v12.i32[2] = *(a1 + 756);
  v13 = vmulq_f32(*a3, v12);
  v14 = vmulq_f32(v12, a3[1]);
  v15 = vmulq_f32(v12, a3[2]);
  v15.i32[3] = 0;
  *v13.i8 = vadd_f32(vpadd_f32(*v13.i8, *v14.i8), vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)));
  *v6.i8 = vpadd_f32(vpadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)), 0);
  v16 = vmul_f32(v9, *v13.i8);
  *v10.i8 = vmul_f32(*v10.i8, *v13.i8);
  return atan2f(vadd_f32(vpadd_f32(v16, v16), vmul_f32(*v5.i8, *v6.i8)).f32[0], vadd_f32(vpadd_f32(*v10.i8, *v10.i8), vmul_f32(*v11.i8, *v6.i8)).f32[0]) * *(a1 + 836);
}

uint64_t sub_1AFD9B988(uint64_t result, int a2, int a3, float a4)
{
  if (a3 == 5 || a3 == -1)
  {
    switch(a2)
    {
      case 4:
        *(result + 860) = a4;
        v4 = 1;
        break;
      case 3:
        *(result + 856) = a4;
        v4 = 4;
        break;
      case 2:
        *(result + 864) = a4;
        v4 = 2;
        break;
      default:
        return result;
    }

    *(result + 852) |= v4;
  }

  return result;
}

float sub_1AFD9B9E0(float *a1, int a2, int a3)
{
  result = 0.0;
  if (a3 == 5 || a3 == -1)
  {
    switch(a2)
    {
      case 4:
        return a1[215];
      case 3:
        return a1[214];
      case 2:
        return a1[216];
    }
  }

  return result;
}

const char *sub_1AFD9BA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFDA1AA0(a1, a2, a3);
  v5 = 0;
  v6 = a1 + 656;
  v7 = a2 + 64;
  do
  {
    for (i = 0; i != 16; i += 4)
    {
      *(v7 + i) = *(v6 + i);
    }

    ++v5;
    v6 += 16;
    v7 += 16;
  }

  while (v5 != 3);
  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 112 + j) = *(a1 + 704 + j);
  }

  v10 = 0;
  v11 = a1 + 720;
  v12 = a2 + 128;
  do
  {
    for (k = 0; k != 16; k += 4)
    {
      *(v12 + k) = *(v11 + k);
    }

    ++v10;
    v11 += 16;
    v12 += 16;
  }

  while (v10 != 3);
  for (m = 0; m != 16; m += 4)
  {
    *(a2 + 176 + m) = *(a1 + 768 + m);
  }

  v15 = *(a1 + 840);
  *(a2 + 200) = *(a1 + 841);
  *(a2 + 204) = *(a1 + 784);
  *(a2 + 192) = *(a1 + 844);
  *(a2 + 196) = v15;
  sub_1AFDA1DA8((a1 + 792));
  *(a2 + 212) = v16;
  sub_1AFDA1D40((a1 + 792));
  *(a2 + 216) = v17;
  *(a2 + 220) = *(a1 + 800);
  *(a2 + 228) = *(a1 + 808);
  return "btHingeConstraintFloatData";
}

double sub_1AFD9BB58(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5)
{
  sub_1AFDA19B8(a1, 3, a2, a3);
  *v7 = &unk_1F25727E8;
  *(v7 + 368) = *a4;
  *(v7 + 384) = *a5;
  *(v7 + 400) = 0;
  *(v7 + 412) = 0;
  result = 0.00781250182;
  *(v7 + 416) = 0x3F8000003E99999ALL;
  *(v7 + 424) = 0;
  return result;
}

double sub_1AFD9BBD0(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v5 = sub_1AFDA18D4(a1, 3, a2);
  v6 = *a3;
  v5[23] = *a3;
  v7 = vmulq_f32(a2[1], v6);
  v8 = vmulq_f32(v6, a2[2]);
  v9 = a2[4];
  v10 = vmulq_f32(v6, a2[3]);
  v10.i32[3] = 0;
  v5->i64[0] = &unk_1F25727E8;
  *v7.f32 = vadd_f32(vpadd_f32(*v7.f32, *v8.i8), vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
  *&v7.u32[2] = vpadd_f32(vpadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)), 0);
  v5[24] = vaddq_f32(v7, v9);
  v5[25].i32[0] = 0;
  v5[25].i8[12] = 0;
  result = 0.00781250182;
  v5[26].i64[0] = 0x3F8000003E99999ALL;
  v5[26].i32[2] = 0;
  return result;
}

float32x4_t *sub_1AFD9BC88(float32x4_t *a1)
{
  v2 = 0;
  a1[3].i32[2] = 0;
  result = a1 + 5;
  v32 = 0uLL;
  do
  {
    v32.i32[v2] = 1065353216;
    v4 = a1[2].i64[1];
    v5 = a1[3].i64[0];
    v6 = *(v4 + 16);
    v7 = *(v4 + 32);
    v8 = vtrn1q_s32(v6, v7);
    v9 = *(v4 + 48);
    v10 = *(v4 + 64);
    *v7.i8 = vzip2_s32(*v6.i8, *v7.i8);
    v11.i64[0] = vextq_s8(v8, v8, 8uLL).u64[0];
    v8.i64[1] = v9.u32[0];
    v7.u64[1] = vzip2_s32(*v9.f32, 0);
    v11.i64[1] = vextq_s8(v9, v9, 8uLL).u32[0];
    v13 = a1[23];
    v12 = a1[24];
    v14 = vmulq_f32(v9, v13);
    v31[0] = v8;
    v31[1] = v7;
    v31[2] = v11;
    v15 = *(v5 + 16);
    v16 = *(v5 + 32);
    v17 = vtrn1q_s32(v15, v16);
    v18 = *(v5 + 48);
    v19 = *(v5 + 64);
    *v15.i8 = vzip2_s32(*v15.i8, *v16.i8);
    v16.i64[0] = vextq_s8(v17, v17, 8uLL).u64[0];
    v17.i64[1] = v18.u32[0];
    v15.u64[1] = vzip2_s32(*v18.f32, 0);
    v16.i64[1] = vextq_s8(v18, v18, 8uLL).u32[0];
    v20 = vmulq_f32(v18, v12);
    v30[0] = v17;
    v30[1] = v15;
    v30[2] = v16;
    v21 = vmulq_f32(*(v4 + 16), v13);
    v22 = vmulq_f32(v13, *(v4 + 32));
    v14.i32[3] = 0;
    *v21.f32 = vadd_f32(vpadd_f32(*v21.f32, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
    *&v21.u32[2] = vpadd_f32(vpadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL)), 0);
    v23 = vsubq_f32(vaddq_f32(v10, v21), v10);
    v23.i32[3] = 0;
    v29 = v23;
    v24 = vmulq_f32(*(v5 + 16), v12);
    v25 = vmulq_f32(v12, *(v5 + 32));
    v20.i32[3] = 0;
    *v24.f32 = vadd_f32(vpadd_f32(*v24.f32, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
    *&v24.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
    v26 = vsubq_f32(vaddq_f32(v19, v24), v19);
    v26.i32[3] = 0;
    v28 = v26;
    sub_1AFD99804(result, v31, v30, &v29, &v28, &v32, (v4 + 448), (v5 + 448), *(v4 + 384), *(v5 + 384));
    v32.i32[v2] = 0;
    result = v27 + 6;
    ++v2;
  }

  while (v2 != 3);
  return result;
}

uint64_t sub_1AFD9BE2C(uint64_t result, int *a2)
{
  if (*(result + 412))
  {
    v2 = 0;
  }

  else
  {
    v2 = 3;
  }

  *a2 = v2;
  a2[1] = v2;
  return result;
}

float sub_1AFD9BE54(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = 0;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  *v5 = 1065353216;
  v7 = *(a2 + 40);
  v5[v7 + 1] = 1065353216;
  v5[2 * v7 + 2] = 1065353216;
  v8 = a1[23];
  v9 = vmulq_f32(*a3, v8);
  v10 = vmulq_f32(v8, a3[1]);
  v11 = vmulq_f32(v8, a3[2]);
  v11.i32[3] = 0;
  *v8.f32 = vadd_f32(vpadd_f32(*v9.i8, *v10.i8), vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL)));
  *&v8.u32[2] = vpadd_f32(vpadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)), 0);
  v12 = v6 + 4 * v7;
  v13 = v6 + 8 * v7;
  v14 = vnegq_f32(v8);
  *v6 = 0;
  *(v6 + 4) = -v14.f32[2];
  *(v6 + 8) = v14.i32[1];
  *(v6 + 12) = 0;
  *v12 = v14.i32[2];
  *(v12 + 4) = 0;
  *(v12 + 8) = -v14.f32[0];
  *(v12 + 12) = 0;
  *v13 = -v14.f32[1];
  *(v13 + 4) = v14.i32[0];
  *(v13 + 8) = 0;
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  *v15 = -1082130432;
  v17 = *(a2 + 40);
  v15[v17 + 1] = -1082130432;
  v15[2 * v17 + 2] = -1082130432;
  v18 = a1[24];
  v19 = vmulq_f32(*a4, v18);
  v20 = vmulq_f32(v18, a4[1]);
  v21 = vmulq_f32(v18, a4[2]);
  v21.i32[3] = 0;
  *v19.i8 = vadd_f32(vpadd_f32(*v19.i8, *v20.i8), vzip1_s32(*&vextq_s8(v19, v19, 8uLL), *&vextq_s8(v20, v20, 8uLL)));
  *v21.i32 = vpadd_f32(vpadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)), 0).f32[0];
  v22 = v16 + 4 * v17;
  v23 = v16 + 8 * v17;
  *v16 = 0;
  *(v16 + 4) = -*v21.i32;
  *(v16 + 8) = v19.i32[1];
  *(v16 + 12) = 0;
  *v22 = v21.u32[0];
  *(v22 + 8) = -*v19.i32;
  *(v22 + 12) = 0;
  *v23 = -*&v19.i32[1];
  *(v23 + 4) = v19.i32[0];
  *(v23 + 8) = 0;
  v24 = a1[25].i32[0];
  v25 = &a1[25].f32[1];
  if ((v24 & 1) == 0)
  {
    v25 = (a2 + 4);
  }

  v26 = *v25 * *a2;
  v27 = *(a2 + 48);
  v28 = *(a2 + 40);
  do
  {
    *v27 = v26 * (((*(v37 + v4 * 4) + a4[3].f32[v4]) - *(&v37[1] + v4 * 4)) - a3[3].f32[v4]);
    v27 += v28;
    ++v4;
  }

  while (v4 != 3);
  if ((v24 & 2) != 0)
  {
    v29 = *(a2 + 56);
    v30 = a1[25].i32[2];
    *v29 = v30;
    v29[v28] = v30;
    v29[2 * v28] = v30;
  }

  v31 = 0;
  v32 = a1[26].f32[2];
  v33 = 2;
  v34 = v32;
  while (1)
  {
    if (v34 > 0.0)
    {
      v35 = *(a2 + 72);
      *(*(a2 + 64) + 4 * v31) = -v32;
      *(v35 + 4 * v31) = v32;
    }

    if (!v33)
    {
      break;
    }

    v34 = a1[26].f32[2];
    --v33;
    v31 += v28;
  }

  result = a1[26].f32[1];
  *(a2 + 92) = result;
  return result;
}

uint64_t sub_1AFD9C088(uint64_t result, int a2, int a3, float a4)
{
  if (a3 == -1)
  {
    if ((a2 - 3) < 2)
    {
      *(result + 408) = a4;
      v4 = 2;
    }

    else
    {
      if ((a2 - 1) > 1)
      {
        return result;
      }

      *(result + 404) = a4;
      v4 = 1;
    }

    *(result + 400) |= v4;
  }

  return result;
}

float sub_1AFD9C0D0(uint64_t a1, int a2, int a3)
{
  if (a3 != -1)
  {
    return 3.4028e38;
  }

  if ((a2 - 3) < 2)
  {
    return *(a1 + 408);
  }

  if ((a2 - 1) > 1)
  {
    return 3.4028e38;
  }

  return *(a1 + 404);
}

const char *sub_1AFD9C11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFDA1AA0(a1, a2, a3);
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 64 + i) = *(a1 + 368 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + 80 + j) = *(a1 + 384 + j);
  }

  return "btPoint2PointConstraintFloatData";
}

double sub_1AFD9C18C(uint64_t a1)
{
  *a1 = &unk_1F2572850;
  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 12) = 0;
  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 128) = 1;
  *(a1 + 120) = 0;
  *(a1 + 108) = 0;
  *(a1 + 160) = 1;
  *(a1 + 152) = 0;
  *(a1 + 140) = 0;
  *(a1 + 192) = 1;
  *(a1 + 184) = 0;
  *(a1 + 172) = 0;
  *(a1 + 224) = 1;
  *(a1 + 216) = 0;
  *(a1 + 204) = 0;
  *(a1 + 256) = 1;
  *(a1 + 248) = 0;
  *(a1 + 236) = 0;
  *(a1 + 288) = 1;
  *(a1 + 280) = 0;
  *(a1 + 268) = 0;
  *(a1 + 304) = 0;
  return result;
}

uint64_t sub_1AFD9C22C(uint64_t a1)
{
  *a1 = &unk_1F2572850;
  v2 = *(a1 + 280);
  if (v2 && *(a1 + 288) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 288) = 1;
  *(a1 + 280) = 0;
  *(a1 + 268) = 0;
  v3 = *(a1 + 248);
  if (v3 && *(a1 + 256) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 256) = 1;
  *(a1 + 248) = 0;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  v4 = *(a1 + 216);
  if (v4 && *(a1 + 224) == 1)
  {
    sub_1AFDA72A0(v4);
  }

  *(a1 + 224) = 1;
  *(a1 + 216) = 0;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  v5 = *(a1 + 184);
  if (v5 && *(a1 + 192) == 1)
  {
    sub_1AFDA72A0(v5);
  }

  *(a1 + 192) = 1;
  *(a1 + 184) = 0;
  *(a1 + 172) = 0;
  *(a1 + 176) = 0;
  v6 = *(a1 + 152);
  if (v6 && *(a1 + 160) == 1)
  {
    sub_1AFDA72A0(v6);
  }

  *(a1 + 160) = 1;
  *(a1 + 152) = 0;
  *(a1 + 140) = 0;
  *(a1 + 144) = 0;
  v7 = *(a1 + 120);
  if (v7 && *(a1 + 128) == 1)
  {
    sub_1AFDA72A0(v7);
  }

  *(a1 + 128) = 1;
  *(a1 + 120) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  v8 = *(a1 + 88);
  if (v8 && *(a1 + 96) == 1)
  {
    sub_1AFDA72A0(v8);
  }

  *(a1 + 96) = 1;
  *(a1 + 88) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  v9 = *(a1 + 56);
  if (v9 && *(a1 + 64) == 1)
  {
    sub_1AFDA72A0(v9);
  }

  *(a1 + 64) = 1;
  *(a1 + 56) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  v10 = *(a1 + 24);
  if (v10 && *(a1 + 32) == 1)
  {
    sub_1AFDA72A0(v10);
  }

  *(a1 + 32) = 1;
  *(a1 + 24) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_1AFD9C3C0(uint64_t a1)
{
  v1 = sub_1AFD9C22C(a1);

  sub_1AFDA72A0(v1);
}

float32x4_t sub_1AFD9C3E8(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  result.i32[0] = a4[6].i32[1];
  v5 = a4[7].f32[2];
  v6 = a4[1];
  v7 = vmulq_f32(v6, a2[4]);
  v8 = vmulq_f32(*a4, a2[5]);
  *v8.i32 = vadd_f32(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL))).f32[0];
  v9 = vmulq_f32(a4[3], a3[4]);
  v10 = vmulq_f32(a4[2], a3[5]);
  v11 = ((a4[7].f32[0] - (result.f32[0] * a4[7].f32[1])) - (a4[6].f32[3] * *v8.i32)) - (a4[6].f32[3] * vadd_f32(vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL))).f32[0]);
  v12 = result.f32[0] + v11;
  if ((result.f32[0] + v11) < v5 || (v5 = a4[7].f32[3], v12 > v5))
  {
    v11 = v5 - result.f32[0];
    v12 = v5;
  }

  a4[6].f32[1] = v12;
  if (a2[13].i64[0])
  {
    v13 = vmulq_n_f32(vmulq_f32(v6, a2[8]), v11);
    v13.i32[3] = 0;
    v14 = a2[6];
    v15 = a2[5];
    a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v13));
    v16 = vmulq_n_f32(v14, v11);
    v16.i32[3] = 0;
    result = vaddq_f32(v15, vmulq_f32(a4[4], v16));
    a2[5] = result;
  }

  if (a3[13].i64[0])
  {
    v17 = vmulq_n_f32(vmulq_f32(a4[3], a3[8]), v11);
    v17.i32[3] = 0;
    v19 = a3[5];
    v18 = a3[6];
    a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v17));
    v20 = vmulq_n_f32(v18, v11);
    v20.i32[3] = 0;
    result = vaddq_f32(v19, vmulq_f32(a4[5], v20));
    a3[5] = result;
  }

  return result;
}

float32x4_t sub_1AFD9C50C(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4)
{
  v4 = a4[6].f32[1];
  v5 = a4[7].f32[2];
  v6 = a4[1];
  v7 = vmulq_f32(v6, a2[4]);
  v8 = vmulq_f32(*a4, a2[5]);
  *v8.i32 = vadd_f32(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL))).f32[0];
  v9 = vmulq_f32(a4[3], a3[4]);
  v10 = vmulq_f32(a4[2], a3[5]);
  v11 = ((a4[7].f32[0] - (v4 * a4[7].f32[1])) - (a4[6].f32[3] * *v8.i32)) - (a4[6].f32[3] * vadd_f32(vadd_f32(vpadd_f32(*v9.i8, *v9.i8), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL))).f32[0]);
  v12 = v4 + v11;
  result.f32[0] = v5 - v4;
  if (v12 >= v5)
  {
    result.f32[0] = v11;
  }

  else
  {
    v12 = a4[7].f32[2];
  }

  a4[6].f32[1] = v12;
  if (a2[13].i64[0])
  {
    v14 = vmulq_n_f32(vmulq_f32(v6, a2[8]), result.f32[0]);
    v14.i32[3] = 0;
    v16 = a2[5];
    v15 = a2[6];
    a2[4] = vaddq_f32(a2[4], vmulq_f32(a2[7], v14));
    v17 = vmulq_n_f32(v15, result.f32[0]);
    v17.i32[3] = 0;
    a2[5] = vaddq_f32(v16, vmulq_f32(a4[4], v17));
  }

  if (a3[13].i64[0])
  {
    v18 = vmulq_n_f32(vmulq_f32(a4[3], a3[8]), result.f32[0]);
    v18.i32[3] = 0;
    v20 = a3[5];
    v19 = a3[6];
    a3[4] = vaddq_f32(a3[4], vmulq_f32(a3[7], v18));
    v21 = vmulq_n_f32(v19, result.f32[0]);
    v21.i32[3] = 0;
    result = vaddq_f32(v20, vmulq_f32(a4[5], v21));
    a3[5] = result;
  }

  return result;
}

float32x4_t sub_1AFD9C624(float32x4_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5 = a5[8].f32[0];
  if (v5 != 0.0)
  {
    v6 = a5[6].f32[0];
    v7 = a5[7].f32[2];
    v8 = v5 - (v6 * a5[7].f32[1]);
    v9 = a5[1];
    v10 = vmulq_f32(v9, a3[9]);
    v11 = vmulq_f32(*a5, a3[10]);
    *v11.i32 = vadd_f32(vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vpadd_f32(*v11.i8, *v11.i8), *&vextq_s8(v11, v11, 8uLL))).f32[0];
    v12 = vmulq_f32(a5[3], a4[9]);
    v13 = vmulq_f32(a5[2], a4[10]);
    ++dword_1EB6C3740;
    v14 = (v8 - (a5[6].f32[3] * *v11.i32)) - (a5[6].f32[3] * vadd_f32(vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)), vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL))).f32[0]);
    v15 = v6 + v14;
    result.f32[0] = v7 - v6;
    if (v15 >= v7)
    {
      v7 = v15;
      result.f32[0] = v14;
    }

    a5[6].f32[0] = v7;
    if (a3[13].i64[0])
    {
      v16 = vmulq_n_f32(vmulq_f32(v9, a3[8]), result.f32[0]);
      v16.i32[3] = 0;
      v17 = vmulq_n_f32(a3[6], result.f32[0]);
      v17.i32[3] = 0;
      a3[9] = vaddq_f32(a3[9], vmulq_f32(a3[7], v16));
      a3[10] = vaddq_f32(a3[10], vmulq_f32(a5[4], v17));
    }

    if (a4[13].i64[0])
    {
      v18 = vmulq_n_f32(vmulq_f32(a5[3], a4[8]), result.f32[0]);
      v18.i32[3] = 0;
      v19 = vmulq_n_f32(a4[6], result.f32[0]);
      v19.i32[3] = 0;
      a4[9] = vaddq_f32(a4[9], vmulq_f32(a4[7], v18));
      result = vaddq_f32(a4[10], vmulq_f32(a5[5], v19));
      a4[10] = result;
    }
  }

  return result;
}

uint64_t sub_1AFD9C758(uint64_t a1, unsigned int a2)
{
  v2 = (1664525 * *(a1 + 304) + 1013904223);
  *(a1 + 304) = v2;
  if (a2 <= 0x10000)
  {
    v2 ^= v2 >> 16;
    if (a2 <= 0x100)
    {
      v2 ^= v2 >> 8;
      if (a2 <= 0x10)
      {
        v2 ^= v2 >> 4;
        if (a2 <= 4)
        {
          v2 ^= v2 >> 2;
          if (a2 <= 2)
          {
            v2 ^= v2 >> 1;
          }
        }
      }
    }
  }

  return (v2 % a2);
}

void sub_1AFD9C7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if ((*(a3 + 264) & 2) != 0)
    {
      v3 = a3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = 0uLL;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  if (v3)
  {
    *a2 = *(v3 + 16);
    *(a2 + 16) = *(v3 + 32);
    *(a2 + 32) = *(v3 + 48);
    *(a2 + 48) = *(v3 + 64);
    v5 = (v3 + 384);
    v6 = vld1q_dup_f32(v5);
    v6.i32[3] = 0;
    *(a2 + 128) = vmulq_f32(*(v3 + 400), v6);
    *(a2 + 208) = v3;
    *(a2 + 96) = *(v3 + 624);
    *(a2 + 112) = *(v3 + 400);
    *(a2 + 176) = *(v3 + 352);
    v4 = *(v3 + 368);
  }

  else
  {
    *a2 = xmmword_1AFE20150;
    *(a2 + 16) = xmmword_1AFE20160;
    *(a2 + 32) = xmmword_1AFE20180;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 208) = 0;
    *(a2 + 96) = xmmword_1AFE208C0;
    *(a2 + 112) = xmmword_1AFE208C0;
    *(a2 + 176) = 0uLL;
  }

  *(a2 + 192) = v4;
}

double sub_1AFD9C888(uint64_t a1, float32x4_t *a2, float32x4_t *a3, __int32 a4, __int32 a5, uint64_t a6, float32x4_t *a7, float32x4_t *a8, float a9, float a10, float32_t a11)
{
  v11 = *a3;
  a2[1] = *a3;
  v12 = vnegq_f32(v11);
  a2[3] = v12;
  v13 = *(a1 + 24);
  v14 = v13 + 224 * a4;
  v15 = v13 + 224 * a5;
  v16 = *(v14 + 208);
  v17 = *(v15 + 208);
  a2[9].i32[2] = a4;
  a2[9].i32[3] = a5;
  a2[6].i32[2] = *(a6 + 84);
  a2[8].i64[1] = 0;
  a2[6].i64[0] = 0;
  v18 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v11, v11, 0xCuLL), v11, 8uLL), *a7), vmulq_f32(v11, vextq_s8(vextq_s8(*a7, *a7, 0xCuLL), *a7, 8uLL)));
  v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
  v19.i32[3] = 0;
  *a2 = v19;
  v20 = 0uLL;
  v21 = 0uLL;
  if (v16)
  {
    v22 = vmulq_f32(v16[19], v19);
    v23 = vmulq_f32(v16[20], v19);
    v24 = vmulq_f32(v16[21], v19);
    v24.i32[3] = 0;
    *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
    *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
    v21 = vmulq_f32(v22, v16[39]);
  }

  a2[4] = v21;
  v25 = vaddq_f32(vmulq_f32(vextq_s8(vextq_s8(v12, v12, 0xCuLL), v12, 8uLL), *a8), vmulq_f32(v11, vextq_s8(vextq_s8(*a8, *a8, 0xCuLL), *a8, 8uLL)));
  v26 = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL);
  v26.i32[3] = 0;
  a2[2] = v26;
  if (v17)
  {
    v27 = vmulq_f32(v17[19], v26);
    v28 = vmulq_f32(v17[20], v26);
    v29 = vmulq_f32(v17[21], v26);
    v29.i32[3] = 0;
    *v27.f32 = vadd_f32(vpadd_f32(*v27.f32, *v28.i8), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
    *&v27.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
    v20 = vmulq_f32(v27, v17[39]);
  }

  a2[5] = v20;
  v30 = 0.0;
  v31 = 0.0;
  if (v16)
  {
    v32 = vsubq_f32(vmulq_f32(v21, vextq_s8(vextq_s8(*a7, *a7, 0xCuLL), *a7, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL), *a7));
    v33 = vextq_s8(vextq_s8(v32, v32, 0xCuLL), v32, 8uLL);
    v33.i32[3] = 0;
    v34 = vmulq_f32(*a3, v33);
    v31 = v16[24].f32[0] + vadd_f32(vpadd_f32(*v34.i8, *v34.i8), *&vextq_s8(v34, v34, 8uLL)).f32[0];
  }

  if (v17)
  {
    v35 = vnegq_f32(v20);
    v36 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(*a8, *a8, 0xCuLL), *a8, 8uLL), v35), vmulq_f32(*a8, vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL)));
    v37 = vextq_s8(vextq_s8(v36, v36, 0xCuLL), v36, 8uLL);
    v37.i32[3] = 0;
    v38 = vmulq_f32(*a3, v37);
    v30 = v17[24].f32[0] + vadd_f32(vpadd_f32(*v38.i8, *v38.i8), *&vextq_s8(v38, v38, 8uLL)).f32[0];
  }

  v39 = a9 / (v31 + v30);
  a2[6].f32[3] = v39;
  if (!v16)
  {
    v40 = 0uLL;
    v46 = vmulq_f32(v11, 0);
    v42 = vadd_f32(*&vextq_s8(v46, v46, 8uLL), vpadd_f32(*v46.i8, *v46.i8)).u32[0];
    if (v17)
    {
      goto LABEL_11;
    }

LABEL_13:
    v47.i64[0] = 0x8000000080000000;
    v47.i64[1] = 0x8000000080000000;
    v48 = vmulq_f32(v11, v47);
    v45 = vadd_f32(*&vextq_s8(v48, v48, 8uLL), vpadd_f32(*v48.i8, *v48.i8)).u32[0];
    v43 = 0uLL;
    goto LABEL_14;
  }

  v40 = *(v14 + 192);
  v41 = vmulq_f32(v11, *(v14 + 176));
  v42 = vadd_f32(vpadd_f32(*v41.i8, *v41.i8), *&vextq_s8(v41, v41, 8uLL)).u32[0];
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_11:
  v43 = *(v15 + 192);
  v44 = vmulq_f32(*(v15 + 176), v12);
  v45 = vadd_f32(vpadd_f32(*v44.i8, *v44.i8), *&vextq_s8(v44, v44, 8uLL)).u32[0];
LABEL_14:
  v49 = vmulq_f32(v40, v19);
  v50 = vmulq_f32(v43, v26);
  a2[7].f32[0] = v39 * (a10 - ((*&v42 + vadd_f32(*&vextq_s8(v49, v49, 8uLL), vpadd_f32(*v49.i8, *v49.i8)).f32[0]) + (*&v45 + vadd_f32(vpadd_f32(*v50.i8, *v50.i8), *&vextq_s8(v50, v50, 8uLL)).f32[0])));
  a2[7].f32[1] = a11;
  result = 6.08244611e77;
  a2[7].i64[1] = 0x501502F900000000;
  return result;
}

float32x4_t *sub_1AFD9CB28(uint64_t a1, float32x4_t *a2, __int32 a3, __int32 a4, __int32 a5, uint64_t a6, float32x4_t *a7, float32x4_t *a8, float a9, float a10, float32_t a11)
{
  v21 = *(a1 + 108);
  if (v21 == *(a1 + 112) && (!v21 ? (v22 = 1) : (v22 = 2 * v21), v21 < v22))
  {
    if (v22)
    {
      v23 = a8;
      v24 = sub_1AFDA7294(160 * v22, 16);
      a8 = v23;
      v25 = v24;
      v26 = *(a1 + 108);
    }

    else
    {
      v25 = 0;
      v26 = *(a1 + 108);
    }

    if (v26 >= 1)
    {
      v28 = 0;
      v29 = 160 * v26;
      do
      {
        v30 = (v25 + v28);
        v31 = (*(a1 + 120) + v28);
        *v30 = *v31;
        v30[1] = v31[1];
        v30[2] = v31[2];
        v30[3] = v31[3];
        v30[4] = v31[4];
        v30[5] = v31[5];
        v32 = v31[6];
        v33 = v31[7];
        v34 = v31[9];
        v30[8] = v31[8];
        v30[9] = v34;
        v30[6] = v32;
        v30[7] = v33;
        v28 += 160;
      }

      while (v29 != v28);
    }

    v35 = *(a1 + 120);
    if (v35 && *(a1 + 128) == 1)
    {
      v38 = a8;
      sub_1AFDA72A0(v35);
      a8 = v38;
    }

    *(a1 + 128) = 1;
    *(a1 + 120) = v25;
    *(a1 + 112) = v22;
    v27 = *(a1 + 108);
  }

  else
  {
    v27 = *(a1 + 108);
  }

  *(a1 + 108) = v27 + 1;
  v36 = (*(a1 + 120) + 160 * v21);
  v36[9].i32[1] = a5;
  sub_1AFD9C888(a1, v36, a2, a3, a4, a6, a7, a8, a9, a10, a11);
  return v36;
}

double sub_1AFD9CCE4(uint64_t a1, uint64_t a2, int8x16_t *a3, int a4, int a5, uint64_t a6, double a7, float a8, float a9)
{
  v9 = 0uLL;
  *(a2 + 16) = 0u;
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  *(a2 + 48) = v10;
  v11 = *(a1 + 24);
  v12 = v11 + 224 * a4;
  v13 = v11 + 224 * a5;
  v14 = *(v12 + 208);
  v15 = *(v13 + 208);
  *(a2 + 152) = a4;
  *(a2 + 156) = a5;
  *(a2 + 104) = *(a6 + 88);
  *(a2 + 136) = 0;
  *(a2 + 96) = 0;
  v16 = veorq_s8(*a3, v10);
  *a2 = v16;
  v17 = 0uLL;
  if (v14)
  {
    v18 = vmulq_f32(v14[19], v16);
    v19 = vmulq_f32(v14[20], v16);
    v20 = vmulq_f32(v14[21], v16);
    v20.i32[3] = 0;
    *v18.f32 = vadd_f32(vpadd_f32(*v18.f32, *v19.i8), vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)));
    *&v18.u32[2] = vpadd_f32(vpadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL)), 0);
    v17 = vmulq_f32(v18, v14[39]);
  }

  *(a2 + 64) = v17;
  v21 = *a3;
  *(a2 + 32) = *a3;
  if (v15)
  {
    v22 = vmulq_f32(v21, v15[19]);
    v23 = vmulq_f32(v21, v15[20]);
    v24 = vmulq_f32(v21, v15[21]);
    v24.i32[3] = 0;
    *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
    *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
    v9 = vmulq_f32(v22, v15[39]);
  }

  *(a2 + 80) = v9;
  v25 = 0uLL;
  v26 = 0uLL;
  if (v14)
  {
    v27 = vmulq_f32(v14[19], v16);
    v28 = vmulq_f32(v14[20], v16);
    v29 = vmulq_f32(v14[21], v16);
    v29.i32[3] = 0;
    *v26.f32 = vadd_f32(vpadd_f32(*v27.i8, *v28.i8), vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v28, v28, 8uLL)));
    *&v26.u32[2] = vpadd_f32(vpadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)), 0);
  }

  if (v15)
  {
    v30 = vmulq_f32(v21, v15[19]);
    v31 = vmulq_f32(v21, v15[20]);
    v32 = vmulq_f32(v21, v15[21]);
    v32.i32[3] = 0;
    *v25.f32 = vadd_f32(vpadd_f32(*v30.i8, *v31.i8), vzip1_s32(*&vextq_s8(v30, v30, 8uLL), *&vextq_s8(v31, v31, 8uLL)));
    *&v25.u32[2] = vpadd_f32(vpadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)), 0);
  }

  v33 = vmulq_f32(v26, v16);
  v34 = vmulq_f32(v21, v25);
  v35 = 1.0 / ((vadd_f32(*&vextq_s8(v33, v33, 8uLL), vpadd_f32(*v33.i8, *v33.i8)).f32[0] + 0.0) + vadd_f32(vpadd_f32(*v34.i8, *v34.i8), *&vextq_s8(v34, v34, 8uLL)).f32[0]);
  *(a2 + 108) = v35;
  if (!v14)
  {
    v38 = vpadd_f32(0, 0).f32[0] + 0.0;
    v36 = 0uLL;
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_13:
    v42 = vpadd_f32(0x8000000080000000, 0x8000000080000000).u32[0];
    v40 = 0uLL;
    goto LABEL_14;
  }

  v36 = *(v12 + 192);
  v37 = vmulq_f32(*(v12 + 176), 0);
  LODWORD(v38) = vadd_f32(vpadd_f32(*v37.i8, *v37.i8), *&vextq_s8(v37, v37, 8uLL)).u32[0];
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_11:
  v39.i64[0] = 0x8000000080000000;
  v39.i64[1] = 0x8000000080000000;
  v40 = *(v13 + 192);
  v41 = vmulq_f32(*(v13 + 176), v39);
  v42 = vadd_f32(vpadd_f32(*v41.i8, *v41.i8), *&vextq_s8(v41, v41, 8uLL)).u32[0];
LABEL_14:
  v43 = vmulq_f32(v36, v16);
  v44 = vmulq_f32(v21, v40);
  *(a2 + 112) = v35 * (a8 - ((v38 + vadd_f32(*&vextq_s8(v43, v43, 8uLL), vpadd_f32(*v43.i8, *v43.i8)).f32[0]) + (*&v42 + vadd_f32(vpadd_f32(*v44.i8, *v44.i8), *&vextq_s8(v44, v44, 8uLL)).f32[0])));
  *(a2 + 116) = a9;
  result = 6.08244611e77;
  *(a2 + 120) = 0x501502F900000000;
  return result;
}

uint64_t sub_1AFD9CF44(uint64_t a1, int8x16_t *a2, int a3, int a4, int a5, uint64_t a6, __n128 a7, float a8, float a9)
{
  v17 = *(a1 + 140);
  if (v17 == *(a1 + 144) && (!v17 ? (v18 = 1) : (v18 = 2 * v17), v17 < v18))
  {
    if (v18)
    {
      v19 = sub_1AFDA7294(160 * v18, 16);
      v20 = *(a1 + 140);
    }

    else
    {
      v19 = 0;
      v20 = *(a1 + 140);
    }

    if (v20 >= 1)
    {
      v22 = 0;
      v23 = 160 * v20;
      do
      {
        v24 = v19 + v22;
        v25 = *(a1 + 152) + v22;
        *v24 = *v25;
        *(v24 + 16) = *(v25 + 16);
        *(v24 + 32) = *(v25 + 32);
        *(v24 + 48) = *(v25 + 48);
        *(v24 + 64) = *(v25 + 64);
        *(v24 + 80) = *(v25 + 80);
        a7 = *(v25 + 96);
        v26 = *(v25 + 112);
        v27 = *(v25 + 144);
        *(v24 + 128) = *(v25 + 128);
        *(v24 + 144) = v27;
        *(v24 + 96) = a7;
        *(v24 + 112) = v26;
        v22 += 160;
      }

      while (v23 != v22);
    }

    v28 = *(a1 + 152);
    if (v28 && *(a1 + 160) == 1)
    {
      sub_1AFDA72A0(v28);
    }

    *(a1 + 160) = 1;
    *(a1 + 152) = v19;
    *(a1 + 144) = v18;
    v21 = *(a1 + 140);
  }

  else
  {
    v21 = *(a1 + 140);
  }

  *(a1 + 140) = v21 + 1;
  v29 = *(a1 + 152) + 160 * v17;
  *(v29 + 148) = a5;
  sub_1AFD9CCE4(a1, v29, a2, a3, a4, a6, a7.n128_f64[0], a8, a9);
  return v29;
}

uint64_t sub_1AFD9D0D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 240);
  if ((v2 & 0x80000000) != 0)
  {
    if ((*(a2 + 264) & 2) != 0 && ((v4 = a1, *(a2 + 384) != 0.0) || (*(a2 + 232) & 2) != 0))
    {
      v2 = *(a1 + 12);
      v5 = *(a1 + 12);
      if (v2 == *(a1 + 16))
      {
        v6 = v2 ? 2 * v2 : 1;
        v5 = *(a1 + 12);
        if (v2 < v6)
        {
          if (v6)
          {
            v7 = sub_1AFDA7294(224 * v6, 16);
          }

          else
          {
            v7 = 0;
          }

          v8 = *(v4 + 12);
          if (v8 >= 1)
          {
            v9 = 0;
            v10 = 224 * v8;
            do
            {
              v11 = *(v4 + 24) + v9;
              v12 = v7 + v9;
              *v12 = *v11;
              *(v12 + 16) = *(v11 + 16);
              *(v12 + 32) = *(v11 + 32);
              *(v12 + 48) = *(v11 + 48);
              *(v12 + 64) = *(v11 + 64);
              *(v12 + 80) = *(v11 + 80);
              *(v12 + 96) = *(v11 + 96);
              *(v12 + 112) = *(v11 + 112);
              *(v12 + 128) = *(v11 + 128);
              *(v12 + 144) = *(v11 + 144);
              *(v12 + 160) = *(v11 + 160);
              *(v12 + 176) = *(v11 + 176);
              *(v12 + 192) = *(v11 + 192);
              *(v12 + 208) = *(v11 + 208);
              v9 += 224;
            }

            while (v10 != v9);
          }

          a1 = *(v4 + 24);
          if (a1 && *(v4 + 32) == 1)
          {
            sub_1AFDA72A0(a1);
          }

          *(v4 + 32) = 1;
          *(v4 + 24) = v7;
          *(v4 + 16) = v6;
          v5 = *(v4 + 12);
        }
      }

      *(v4 + 12) = v5 + 1;
      v13 = *(v4 + 24) + 224 * v2;
      *(v13 + 208) = 0;
      *(v13 + 176) = 0u;
      *(v13 + 192) = 0u;
      *(v13 + 144) = 0u;
      *(v13 + 160) = 0u;
      *(v13 + 112) = 0u;
      *(v13 + 128) = 0u;
      *(v13 + 80) = 0u;
      *(v13 + 96) = 0u;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      *(v13 + 16) = 0u;
      *(v13 + 32) = 0u;
      *v13 = 0u;
      sub_1AFD9C7C0(a1, *(v4 + 24) + 224 * v2, a2);
      *(a2 + 240) = v2;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1AFD9D2A8(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, float32x4_t *a7, float *a8, float *a9, float32x4_t *a10, float32x4_t *a11)
{
  v11 = *(result + 24);
  v12 = v11 + 224 * a3;
  v13 = v11 + 224 * a4;
  v14 = *(v12 + 208);
  v15 = *(v13 + 208);
  v16 = vsubq_f32(*(a5 + 48), *(v12 + 48));
  v16.i32[3] = 0;
  *a10 = v16;
  v17 = vsubq_f32(*(a5 + 32), *(v13 + 48));
  v17.i32[3] = 0;
  *a11 = v17;
  *a9 = 1.0;
  v18 = vsubq_f32(vmulq_f32(*a10, vextq_s8(vextq_s8(*(a5 + 64), *(a5 + 64), 0xCuLL), *(a5 + 64), 8uLL)), vmulq_f32(*(a5 + 64), vextq_s8(vextq_s8(*a10, *a10, 0xCuLL), *a10, 8uLL)));
  v19 = vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL);
  v19.i32[3] = 0;
  v20 = 0uLL;
  v21 = 0uLL;
  if (v14)
  {
    v22 = vmulq_f32(v14[19], v19);
    v23 = vmulq_f32(v14[20], v19);
    v24 = vmulq_f32(v14[21], v19);
    v24.i32[3] = 0;
    *v22.f32 = vadd_f32(vpadd_f32(*v22.f32, *v23.i8), vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v23, v23, 8uLL)));
    *&v22.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
    v21 = vmulq_f32(v22, v14[39]);
  }

  *(a2 + 64) = v21;
  v25 = vsubq_f32(vmulq_f32(*a11, vextq_s8(vextq_s8(*(a5 + 64), *(a5 + 64), 0xCuLL), *(a5 + 64), 8uLL)), vmulq_f32(*(a5 + 64), vextq_s8(vextq_s8(*a11, *a11, 0xCuLL), *a11, 8uLL)));
  v26 = vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL);
  v26.i32[3] = 0;
  if (v15)
  {
    v27.i64[0] = 0x8000000080000000;
    v27.i64[1] = 0x8000000080000000;
    v28 = veorq_s8(v26, v27);
    v29 = vmulq_f32(v15[19], v28);
    v30 = vmulq_f32(v15[20], v28);
    v31 = vmulq_f32(v15[21], v28);
    v31.i32[3] = 0;
    *v29.f32 = vadd_f32(vpadd_f32(*v29.f32, *v30.i8), vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)));
    *&v29.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
    v20 = vmulq_f32(v29, v15[39]);
  }

  *(a2 + 80) = v20;
  v32 = 0.0;
  v33 = 0.0;
  if (v14)
  {
    v34 = vsubq_f32(vmulq_f32(v21, vextq_s8(vextq_s8(*a10, *a10, 0xCuLL), *a10, 8uLL)), vmulq_f32(vextq_s8(vextq_s8(v21, v21, 0xCuLL), v21, 8uLL), *a10));
    v35 = vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL);
    v35.i32[3] = 0;
    v36 = vmulq_f32(*(a5 + 64), v35);
    v33 = v14[24].f32[0] + vadd_f32(vpadd_f32(*v36.i8, *v36.i8), *&vextq_s8(v36, v36, 8uLL)).f32[0];
  }

  if (v15)
  {
    v37 = vnegq_f32(v20);
    v38 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(*a11, *a11, 0xCuLL), *a11, 8uLL), v37), vmulq_f32(*a11, vextq_s8(vextq_s8(v37, v37, 0xCuLL), v37, 8uLL)));
    v39 = vextq_s8(vextq_s8(v38, v38, 0xCuLL), v38, 8uLL);
    v39.i32[3] = 0;
    v40 = vmulq_f32(*(a5 + 64), v39);
    v32 = v15[24].f32[0] + vadd_f32(vpadd_f32(*v40.i8, *v40.i8), *&vextq_s8(v40, v40, 8uLL)).f32[0];
  }

  *(a2 + 108) = *a9 / (v33 + v32);
  v41 = *(a5 + 64);
  *a2 = v19;
  *(a2 + 16) = v41;
  v42.i64[0] = 0x8000000080000000;
  v42.i64[1] = 0x8000000080000000;
  *(a2 + 32) = veorq_s8(v26, v42);
  *(a2 + 48) = vnegq_f32(v41);
  v43 = 0uLL;
  v44 = 0uLL;
  if (v14)
  {
    v45 = vsubq_f32(vmulq_f32(v14[23], vextq_s8(vextq_s8(*a10, *a10, 0xCuLL), *a10, 8uLL)), vmulq_f32(*a10, vextq_s8(vextq_s8(v14[23], v14[23], 0xCuLL), v14[23], 8uLL)));
    v46 = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL);
    v46.i32[3] = 0;
    v44 = vaddq_f32(v14[22], v46);
  }

  if (v15)
  {
    v47 = vsubq_f32(vmulq_f32(v15[23], vextq_s8(vextq_s8(*a11, *a11, 0xCuLL), *a11, 8uLL)), vmulq_f32(*a11, vextq_s8(vextq_s8(v15[23], v15[23], 0xCuLL), v15[23], 8uLL)));
    v48 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
    v48.i32[3] = 0;
    v43 = vaddq_f32(v15[22], v48);
  }

  v49 = *(a5 + 80);
  v50 = *(a6 + 56);
  v51 = vsubq_f32(v44, v43);
  v51.i32[3] = 0;
  *a7 = v51;
  v52 = vmulq_f32(*(a5 + 64), v51);
  *a8 = vadd_f32(vpadd_f32(*v52.i8, *v52.i8), *&vextq_s8(v52, v52, 8uLL)).u32[0];
  *(a2 + 104) = *(a5 + 84);
  v53 = -(*a8 * *(a5 + 92));
  if (v53 <= 0.0)
  {
    v53 = 0.0;
  }

  if ((*(a6 + 64) & 4) != 0)
  {
    v54 = *(a5 + 124) * *(a6 + 60);
    *(a2 + 100) = v54;
    if (v14 && *(v12 + 208))
    {
      v55 = vmulq_n_f32(vmulq_f32(vmulq_f32(*(a2 + 16), *(v12 + 128)), v14[25]), v54);
      v55.i32[3] = 0;
      v56 = *(v12 + 96);
      v57 = *(v12 + 80);
      *(v12 + 64) = vaddq_f32(*(v12 + 64), vmulq_f32(*(v12 + 112), v55));
      v58 = vmulq_n_f32(v56, v54);
      v58.i32[3] = 0;
      *(v12 + 80) = vaddq_f32(v57, vmulq_f32(*(a2 + 64), v58));
    }

    if (v15 && *(v13 + 208))
    {
      v59 = -*(a2 + 100);
      v60.i64[0] = 0x8000000080000000;
      v60.i64[1] = 0x8000000080000000;
      v61 = veorq_s8(*(a2 + 80), v60);
      v62 = vmulq_n_f32(vmulq_f32(v15[25], vmulq_f32(*(v13 + 128), veorq_s8(*(a2 + 48), v60))), v59);
      v62.i32[3] = 0;
      v63 = vmulq_n_f32(*(v13 + 96), v59);
      v63.i32[3] = 0;
      v64 = vaddq_f32(*(v13 + 80), vmulq_f32(v61, v63));
      *(v13 + 64) = vaddq_f32(*(v13 + 64), vmulq_f32(*(v13 + 112), v62));
      *(v13 + 80) = v64;
    }
  }

  else
  {
    *(a2 + 100) = 0;
  }

  *(a2 + 96) = 0;
  if (v14)
  {
    v65 = *(v12 + 192);
    v66 = vmulq_f32(*(v12 + 176), *(a2 + 16));
  }

  else
  {
    v65 = 0uLL;
    v66 = vmulq_f32(*(a2 + 16), 0);
  }

  v67 = v49 + v50;
  v68 = vmulq_f32(v65, *a2);
  v69 = vadd_f32(vpadd_f32(*v66.i8, *v66.i8), *&vextq_s8(v66, v66, 8uLL)).f32[0] + vadd_f32(vpadd_f32(*v68.i8, *v68.i8), *&vextq_s8(v68, v68, 8uLL)).f32[0];
  if (v15)
  {
    v70 = *(v13 + 192);
    v71 = vmulq_f32(*(v13 + 176), *(a2 + 48));
  }

  else
  {
    v70 = 0uLL;
    v71 = vmulq_f32(*(a2 + 48), 0);
  }

  v72 = vmulq_f32(v70, *(a2 + 32));
  v73 = v53 - (v69 + (vadd_f32(vpadd_f32(*v71.i8, *v71.i8), *&vextq_s8(v71, v71, 8uLL)).f32[0] + vadd_f32(vpadd_f32(*v72.i8, *v72.i8), *&vextq_s8(v72, v72, 8uLL)).f32[0]));
  v75 = v67 > *(a6 + 48) || *(a6 + 44) == 0;
  if (v67 <= 0.0)
  {
    v77 = 36;
    if (v75)
    {
      v77 = 32;
    }

    v76 = -(v67 * *(a6 + v77)) / *(a6 + 12);
  }

  else
  {
    v73 = v73 - (v67 / *(a6 + 12));
    v76 = 0.0;
  }

  v78 = *(a2 + 108);
  v79 = v76 * v78;
  v80 = v73 * v78;
  if (v75)
  {
    v80 = v79 + v80;
  }

  *(a2 + 112) = v80;
  if (v75)
  {
    v81 = 0.0;
  }

  else
  {
    v81 = v79;
  }

  *(a2 + 128) = v81;
  *(a2 + 116) = 0;
  *(a2 + 120) = 0;
  *(a2 + 124) = 1343554297;
  return result;
}

float32x4_t sub_1AFD9D794(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, float32x4_t result)
{
  v7 = *(a1 + 24);
  v8 = v7 + 224 * a3;
  v9 = (v7 + 224 * a4);
  v10 = *(v8 + 208);
  v11 = v9[13].i64[0];
  v12 = *(a1 + 120) + 160 * *(a2 + 148);
  if ((*(a6 + 64) & 4) != 0)
  {
    result.f32[0] = *(a5 + 128) * *(a6 + 60);
    *(v12 + 100) = result.i32[0];
    if (v10)
    {
      v13 = vmulq_n_f32(vmulq_f32(v10[25], vmulq_n_f32(*(v12 + 16), v10[24].f32[0])), result.f32[0]);
      v13.i32[3] = 0;
      v14 = *(v8 + 96);
      v15 = *(v8 + 80);
      *(v8 + 64) = vaddq_f32(*(v8 + 64), vmulq_f32(*(v8 + 112), v13));
      v16 = vmulq_n_f32(v14, result.f32[0]);
      v16.i32[3] = 0;
      result = vaddq_f32(v15, vmulq_f32(*(v12 + 64), v16));
      *(v8 + 80) = result;
    }

    if (v11)
    {
      v17.i64[0] = 0x8000000080000000;
      v17.i64[1] = 0x8000000080000000;
      v18 = -*(v12 + 100);
      v19 = vmulq_n_f32(vmulq_f32(v11[25], vmulq_n_f32(veorq_s8(*(v12 + 48), v17), v11[24].f32[0])), v18);
      v19.i32[3] = 0;
      result = vaddq_f32(v9[4], vmulq_f32(v9[7], v19));
      v20 = vmulq_n_f32(v9[6], v18);
      v20.i32[3] = 0;
      v21 = vaddq_f32(v9[5], vmulq_f32(veorq_s8(*(v12 + 80), v17), v20));
      v9[4] = result;
      v9[5] = v21;
    }
  }

  else
  {
    *(v12 + 100) = 0;
  }

  v22 = *(a6 + 64);
  if ((v22 & 0x10) != 0)
  {
    v23 = *(a1 + 120) + 160 * *(a2 + 148);
    if ((v22 & 4) != 0)
    {
      result.f32[0] = *(a5 + 132) * *(a6 + 60);
      *(v23 + 260) = result.i32[0];
      if (v10)
      {
        v24 = vmulq_n_f32(vmulq_n_f32(*(v23 + 176), v10[24].f32[0]), result.f32[0]);
        v24.i32[3] = 0;
        v25 = *(v8 + 96);
        v26 = *(v8 + 80);
        *(v8 + 64) = vaddq_f32(*(v8 + 64), vmulq_f32(*(v8 + 112), v24));
        v27 = vmulq_n_f32(v25, result.f32[0]);
        v27.i32[3] = 0;
        result = vaddq_f32(v26, vmulq_f32(*(v23 + 224), v27));
        *(v8 + 80) = result;
      }

      if (v11)
      {
        v28.i64[0] = 0x8000000080000000;
        v28.i64[1] = 0x8000000080000000;
        v29 = -*(v23 + 260);
        v30 = vmulq_n_f32(vmulq_n_f32(veorq_s8(*(v23 + 208), v28), v11[24].f32[0]), v29);
        v30.i32[3] = 0;
        result = vaddq_f32(v9[4], vmulq_f32(v9[7], v30));
        v31 = vmulq_n_f32(v9[6], v29);
        v31.i32[3] = 0;
        v32 = vaddq_f32(v9[5], vmulq_f32(veorq_s8(*(v23 + 240), v28), v31));
        v9[4] = result;
        v9[5] = v32;
      }
    }

    else
    {
      *(v23 + 260) = 0;
    }
  }

  return result;
}

void sub_1AFD9D954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 784);
  v7 = *(a2 + 792);
  v8 = sub_1AFD9D0D8(a1, v6);
  v134 = v7;
  v9 = sub_1AFD9D0D8(a1, v7);
  v10 = *(a1 + 24);
  v130 = (v10 + 224 * v9);
  v131 = (v10 + 224 * v8);
  if (v131[8].f32[0] != 0.0 || v131[8].f32[1] != 0.0 || v131[8].f32[2] != 0.0 || v130[8].f32[0] != 0.0 || v130[8].f32[1] != 0.0 || v130[8].f32[2] != 0.0)
  {
    v11 = *(a2 + 800);
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = a2 + 16;
      v133 = 1;
      v132 = v6;
      while (1)
      {
        v14 = v13 + 192 * v12;
        if (*(v14 + 80) <= *(a2 + 808))
        {
          break;
        }

LABEL_78:
        if (++v12 >= v11)
        {
          return;
        }
      }

      v138 = 0;
      v15 = *(a1 + 44);
      v16 = v15;
      if (v15 == *(a1 + 48))
      {
        v17 = v15 ? 2 * v15 : 1;
        v16 = *(a1 + 44);
        if (v15 < v17)
        {
          if (v17)
          {
            v18 = sub_1AFDA7294(160 * v17, 16);
          }

          else
          {
            v18 = 0;
          }

          v19 = *(a1 + 44);
          if (v19 >= 1)
          {
            v20 = 0;
            v21 = 160 * v19;
            do
            {
              v22 = (v18 + v20);
              v23 = (*(a1 + 56) + v20);
              *v22 = *v23;
              v22[1] = v23[1];
              v22[2] = v23[2];
              v22[3] = v23[3];
              v22[4] = v23[4];
              v22[5] = v23[5];
              v24 = v23[6];
              v25 = v23[7];
              v26 = v23[9];
              v22[8] = v23[8];
              v22[9] = v26;
              v22[6] = v24;
              v22[7] = v25;
              v20 += 160;
            }

            while (v21 != v20);
          }

          v27 = *(a1 + 56);
          if (v27 && *(a1 + 64) == 1)
          {
            sub_1AFDA72A0(v27);
          }

          *(a1 + 64) = 1;
          *(a1 + 56) = v18;
          *(a1 + 48) = v17;
          v16 = *(a1 + 44);
        }
      }

      *(a1 + 44) = v16 + 1;
      v28 = *(a1 + 56) + 160 * v15;
      *(v28 + 152) = v8;
      *(v28 + 156) = v9;
      *(v28 + 136) = v14;
      sub_1AFD9D2A8(a1, v28, v8, v9, v14, a3, &v137, &v138, &v138 + 1, v140, &v139);
      *(v28 + 148) = *(a1 + 108);
      v29 = 0uLL;
      v30 = 0uLL;
      if (v131[13].i64[0])
      {
        v30 = vaddq_f32(v131[12], v131[5]);
      }

      v31 = v132;
      if (v130[13].i64[0])
      {
        v29 = vaddq_f32(v130[12], v130[5]);
      }

      if (*(v14 + 88) <= 0.0 || v133 < 1)
      {
LABEL_55:
        if (*(a3 + 64) & 0x20) != 0 && (*(v14 + 120))
        {
          v86 = *(&v138 + 1);
          sub_1AFD9CB28(a1, (v14 + 160), v8, v9, v15, v14, v140, &v139, *(&v138 + 1), *(v14 + 136), *(v14 + 144));
          if ((*(a3 + 64) & 0x10) != 0)
          {
            sub_1AFD9CB28(a1, (v14 + 176), v8, v9, v15, v14, v140, &v139, v86, *(v14 + 140), *(v14 + 148));
          }

          sub_1AFD9D794(a1, v28, v8, v9, v14, a3, v87);
        }

        else
        {
          v88 = *(v14 + 64);
          v89 = vsubq_f32(v137, vmulq_n_f32(v88, *&v138));
          v89.i32[3] = 0;
          *(v14 + 160) = v89;
          v90 = *(a3 + 64);
          if ((v90 & 0x40) != 0 || (v91 = vmulq_f32(v89, v89), v92 = vadd_f32(vpadd_f32(*v91.i8, *v91.i8), *&vextq_s8(v91, v91, 8uLL)).f32[0], v92 <= 0.00000011921))
          {
            v98 = v88.f32[1];
            v99 = fabsf(v88.f32[2]) <= 0.70711;
            v100 = (v98 * v98) + (v88.f32[0] * v88.f32[0]);
            v101 = 1.0 / sqrtf(v100);
            v102 = -(v88.f32[1] * v101);
            v103 = v88.f32[0] * v101;
            v104 = -(v88.f32[2] * (v88.f32[0] * v101));
            v105 = v88.f32[2] * v102;
            v106 = v100 * v101;
            v107 = (v88.f32[2] * v88.f32[2]) + (v98 * v98);
            v108 = 1.0 / sqrtf(v107);
            v109 = -(v88.f32[2] * v108);
            v110 = v88.f32[1] * v108;
            v111 = v107 * v108;
            v112 = -(v88.f32[0] * (v88.f32[1] * v108));
            v113 = v109 * v88.f32[0];
            if (v99)
            {
              v109 = v103;
              v110 = 0.0;
            }

            else
            {
              v102 = 0.0;
            }

            if (v99)
            {
              v111 = v104;
              v114 = v105;
            }

            else
            {
              v114 = v112;
            }

            if (v99)
            {
              v113 = v106;
            }

            *(v14 + 160) = v102;
            *(v14 + 164) = v109;
            *(v14 + 168) = v110;
            *(v14 + 176) = v111;
            *(v14 + 180) = v114;
            *(v14 + 184) = v113;
            v115 = *(&v138 + 1);
            if ((v90 & 0x10) != 0)
            {
              sub_1AF0FA59C(v132, (v14 + 176), 1);
              sub_1AF0FA59C(v134, (v14 + 176), 1);
              sub_1AFD9CB28(a1, (v14 + 176), v8, v9, v15, v14, v140, &v139, v115, 0.0, 0.0);
            }

            sub_1AF0FA59C(v132, (v14 + 160), 1);
            sub_1AF0FA59C(v134, (v14 + 160), 1);
            sub_1AFD9CB28(a1, (v14 + 160), v8, v9, v15, v14, v140, &v139, v115, 0.0, 0.0);
            if ((~*(a3 + 64) & 0x50) == 0)
            {
              *(v14 + 120) = 1;
            }
          }

          else
          {
            v93 = vmulq_n_f32(v89, 1.0 / sqrtf(v92));
            *(v14 + 160) = v93;
            v94 = *(&v138 + 1);
            if ((*(a3 + 64) & 0x10) != 0)
            {
              v95 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v88, v88, 0xCuLL), v88, 8uLL), v93), vmulq_f32(v88, vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL)));
              v96 = vextq_s8(vextq_s8(v95, v95, 0xCuLL), v95, 8uLL);
              v96.i32[3] = 0;
              v97 = vmulq_f32(v96, v96);
              *(v14 + 176) = vmulq_n_f32(v96, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v97, v97, 8uLL), vpadd_f32(*v97.i8, *v97.i8)).f32[0]));
              sub_1AF0FA59C(v132, (v14 + 176), 1);
              sub_1AF0FA59C(v134, (v14 + 176), 1);
              v31 = v132;
              sub_1AFD9CB28(a1, (v14 + 176), v8, v9, v15, v14, v140, &v139, v94, 0.0, 0.0);
            }

            sub_1AF0FA59C(v31, (v14 + 160), 1);
            sub_1AF0FA59C(v134, (v14 + 160), 1);
            sub_1AFD9CB28(a1, (v14 + 160), v8, v9, v15, v14, v140, &v139, v94, 0.0, 0.0);
          }
        }

        v11 = *(a2 + 800);
        v13 = a2 + 16;
        goto LABEL_78;
      }

      v33 = vsubq_f32(v29, v30);
      v33.n128_u32[3] = 0;
      v34 = vmulq_f32(v33, v33);
      v35 = sqrtf(vadd_f32(*&vextq_s8(v34, v34, 8uLL), vpadd_f32(*v34.i8, *v34.i8)).f32[0]);
      if (v35 > *(a3 + 80))
      {
        v36 = vmulq_n_f32(v33, 1.0 / v35);
        v136 = v36;
        if ((v132[12].i8[0] & 2) != 0)
        {
          v37 = v132[1];
          v37.i32[3] = 0;
          v38 = v132[2];
          v38.i32[3] = 0;
          v39 = v132[3];
          v39.i32[3] = 0;
          v40 = vmulq_f32(v132[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v37, v36.f32[0]), vmulq_lane_f32(v38, *v36.f32, 1)), vmulq_laneq_f32(v39, v36, 2)));
          v41 = vmulq_f32(v40, v132[1]);
          v42 = vmulq_f32(v40, v132[2]);
          v43 = vmulq_f32(v40, v132[3]);
          v43.i32[3] = 0;
          *v36.f32 = vadd_f32(vpadd_f32(*v41.i8, *v42.i8), vzip1_s32(*&vextq_s8(v41, v41, 8uLL), *&vextq_s8(v42, v42, 8uLL)));
          *&v36.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
          v136 = v36;
        }

        if ((v134[12].i8[0] & 2) != 0)
        {
          v44 = v134[1];
          v44.i32[3] = 0;
          v45 = v134[2];
          v45.i32[3] = 0;
          v46 = v134[3];
          v46.i32[3] = 0;
          v47 = vmulq_f32(v134[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v44, v36.f32[0]), vmulq_lane_f32(v45, *v36.f32, 1)), vmulq_laneq_f32(v46, v36, 2)));
          v48 = vmulq_f32(v47, v134[1]);
          v49 = vmulq_f32(v47, v134[2]);
          v50 = vmulq_f32(v47, v134[3]);
          v50.i32[3] = 0;
          *v36.f32 = vadd_f32(vpadd_f32(*v48.i8, *v49.i8), vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)));
          *&v36.u32[2] = vpadd_f32(vpadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL)), 0);
          v136 = v36;
        }

        v51 = vmulq_f32(v36, v36);
        v52 = vpadd_f32(*v51.i8, *v51.i8);
        v53 = vextq_s8(v51, v51, 8uLL);
        v53.n128_f64[0] = sqrtf(vadd_f32(v52, v53.n128_u64[0]).f32[0]);
        if (v53.n128_f64[0] <= 0.001)
        {
          goto LABEL_54;
        }

        v54 = &v136;
LABEL_53:
        sub_1AFD9CF44(a1, v54, v8, v9, v15, v14, v53, 0.0, 0.0);
LABEL_54:
        v133 = 0;
        goto LABEL_55;
      }

      sub_1AFD9CF44(a1, (v14 + 64), v8, v9, v15, v14, v33, 0.0, 0.0);
      v55 = *(v14 + 72);
      if (fabsf(v55) <= 0.70711)
      {
        v61 = *(v14 + 64);
        v62 = *(v14 + 68);
        v63 = (v62 * v62) + (v61 * v61);
        v64 = 1.0 / sqrtf(v63);
        v136.f32[0] = -(v62 * v64);
        v136.f32[1] = v61 * v64;
        v136.i32[2] = 0;
        v135.f32[0] = -(v55 * (v61 * v64));
        v135.f32[1] = v55 * v136.f32[0];
        v60 = v63 * v64;
      }

      else
      {
        v57 = *(v14 + 64);
        v56 = *(v14 + 68);
        v58 = (v55 * v55) + (v56 * v56);
        v59 = 1.0 / sqrtf(v58);
        v136.i32[0] = 0;
        v136.f32[1] = -(v55 * v59);
        v136.f32[2] = v56 * v59;
        v135.f32[0] = v58 * v59;
        v135.f32[1] = -(v57 * (v56 * v59));
        v60 = v136.f32[1] * v57;
      }

      v135.f32[2] = v60;
      v65 = v132[12].i32[0];
      if ((v65 & 2) != 0)
      {
        v66 = v132[1];
        v66.i32[3] = 0;
        v67 = v132[2];
        v67.i32[3] = 0;
        v68 = v132[3];
        v68.i32[3] = 0;
        v69 = vmulq_f32(v132[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v66, v136.f32[0]), vmulq_lane_f32(v67, *v136.f32, 1)), vmulq_laneq_f32(v68, v136, 2)));
        v70 = vmulq_f32(v69, v132[1]);
        v71 = vmulq_f32(v69, v132[2]);
        v72 = vmulq_f32(v69, v132[3]);
        v72.i32[3] = 0;
        *v70.i8 = vadd_f32(vpadd_f32(*v70.i8, *v71.i8), vzip1_s32(*&vextq_s8(v70, v70, 8uLL), *&vextq_s8(v71, v71, 8uLL)));
        v70.u64[1] = vpadd_f32(vpadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)), 0);
        v136 = v70;
      }

      v73 = v134[12].i32[0];
      if ((v73 & 2) != 0)
      {
        v116 = v134[1];
        v116.i32[3] = 0;
        v117 = v134[2];
        v117.i32[3] = 0;
        v118 = v134[3];
        v118.i32[3] = 0;
        v119 = vmulq_f32(v134[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v116, v136.f32[0]), vmulq_lane_f32(v117, *v136.f32, 1)), vmulq_laneq_f32(v118, v136, 2)));
        v120 = vmulq_f32(v119, v134[1]);
        v121 = vmulq_f32(v119, v134[2]);
        v122 = vmulq_f32(v119, v134[3]);
        v122.i32[3] = 0;
        *v120.i8 = vadd_f32(vpadd_f32(*v120.i8, *v121.i8), vzip1_s32(*&vextq_s8(v120, v120, 8uLL), *&vextq_s8(v121, v121, 8uLL)));
        v120.u64[1] = vpadd_f32(vpadd_f32(*v122.i8, *&vextq_s8(v122, v122, 8uLL)), 0);
        v136 = v120;
        if ((v65 & 2) == 0)
        {
LABEL_47:
          if ((v73 & 2) == 0)
          {
LABEL_49:
            v81 = vmulq_f32(v136, v136);
            v82 = vpadd_f32(*v81.i8, *v81.i8);
            v83 = vextq_s8(v81, v81, 8uLL);
            v83.n128_f64[0] = sqrtf(vadd_f32(v82, v83.n128_u64[0]).f32[0]);
            if (v83.n128_f64[0] > 0.001)
            {
              sub_1AFD9CF44(a1, &v136, v8, v9, v15, v14, v83, 0.0, 0.0);
            }

            v84 = vmulq_f32(v135, v135);
            v85 = vpadd_f32(*v84.i8, *v84.i8);
            v53 = vextq_s8(v84, v84, 8uLL);
            v53.n128_f64[0] = sqrtf(vadd_f32(v85, v53.n128_u64[0]).f32[0]);
            if (v53.n128_f64[0] <= 0.001)
            {
              goto LABEL_54;
            }

            v54 = &v135;
            goto LABEL_53;
          }

LABEL_48:
          v74 = v134[1];
          v74.i32[3] = 0;
          v75 = v134[2];
          v75.i32[3] = 0;
          v76 = v134[3];
          v76.i32[3] = 0;
          v77 = vmulq_f32(v134[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v74, v135.f32[0]), vmulq_lane_f32(v75, *v135.f32, 1)), vmulq_laneq_f32(v76, v135, 2)));
          v78 = vmulq_f32(v77, v134[1]);
          v79 = vmulq_f32(v77, v134[2]);
          v80 = vmulq_f32(v77, v134[3]);
          v80.i32[3] = 0;
          *v78.i8 = vadd_f32(vpadd_f32(*v78.i8, *v79.i8), vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *&vextq_s8(v79, v79, 8uLL)));
          v78.u64[1] = vpadd_f32(vpadd_f32(*v80.i8, *&vextq_s8(v80, v80, 8uLL)), 0);
          v135 = v78;
          goto LABEL_49;
        }
      }

      else if ((v65 & 2) == 0)
      {
        goto LABEL_47;
      }

      v123 = v132[1];
      v123.i32[3] = 0;
      v124 = v132[2];
      v124.i32[3] = 0;
      v125 = v132[3];
      v125.i32[3] = 0;
      v126 = vmulq_f32(v132[11], vaddq_f32(vaddq_f32(vmulq_n_f32(v123, v135.f32[0]), vmulq_lane_f32(v124, *v135.f32, 1)), vmulq_laneq_f32(v125, v135, 2)));
      v127 = vmulq_f32(v126, v132[1]);
      v128 = vmulq_f32(v126, v132[2]);
      v129 = vmulq_f32(v126, v132[3]);
      v129.i32[3] = 0;
      *v127.i8 = vadd_f32(vpadd_f32(*v127.i8, *v128.i8), vzip1_s32(*&vextq_s8(v127, v127, 8uLL), *&vextq_s8(v128, v128, 8uLL)));
      v127.u64[1] = vpadd_f32(vpadd_f32(*v129.i8, *&vextq_s8(v129, v129, 8uLL)), 0);
      v135 = v127;
      if ((v73 & 2) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }
}

double sub_1AFD9E434(uint64_t a1, uint64_t *a2, int a3, uint64_t *a4, unsigned int a5, _DWORD **a6, int a7, uint64_t a8)
{
  v12 = a2;
  *(a1 + 296) = 0;
  v14 = a3;
  if (a3 >= 1)
  {
    v15 = a3;
    v16 = a2;
    do
    {
      v17 = *v16++;
      *(v17 + 240) = -1;
      --v15;
    }

    while (v15);
  }

  v18 = *(a1 + 16);
  if (v18 <= a3)
  {
    v18 = a3 + 1;
    if (a3 == -1)
    {
      v19 = 0;
    }

    else
    {
      v19 = sub_1AFDA7294(224 * v18, 16);
    }

    v20 = *(a1 + 12);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = 224 * v20;
      do
      {
        v23 = *(a1 + 24) + v21;
        v24 = v19 + v21;
        *v24 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *(v24 + 32) = *(v23 + 32);
        *(v24 + 48) = *(v23 + 48);
        *(v24 + 64) = *(v23 + 64);
        *(v24 + 80) = *(v23 + 80);
        *(v24 + 96) = *(v23 + 96);
        *(v24 + 112) = *(v23 + 112);
        *(v24 + 128) = *(v23 + 128);
        *(v24 + 144) = *(v23 + 144);
        *(v24 + 160) = *(v23 + 160);
        *(v24 + 176) = *(v23 + 176);
        *(v24 + 192) = *(v23 + 192);
        *(v24 + 208) = *(v23 + 208);
        v21 += 224;
      }

      while (v22 != v21);
    }

    v25 = *(a1 + 24);
    if (v25 && *(a1 + 32) == 1)
    {
      sub_1AFDA72A0(v25);
    }

    *(a1 + 32) = 1;
    *(a1 + 24) = v19;
    *(a1 + 16) = v18;
  }

  v26 = *(a1 + 12);
  if ((v26 & 0x80000000) != 0)
  {
    if (v18 < 0)
    {
      v27 = *(a1 + 24);
      if (v27 && *(a1 + 32) == 1)
      {
        sub_1AFDA72A0(v27);
      }

      *(a1 + 32) = 1;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
    }

    v28 = 224 * v26;
    v29 = v26 + 1;
    do
    {
      v30 = *(a1 + 24) + v28;
      *(v30 + 208) = 0;
      *(v30 + 176) = 0uLL;
      *(v30 + 192) = 0uLL;
      *(v30 + 144) = 0uLL;
      *(v30 + 160) = 0uLL;
      *(v30 + 112) = 0uLL;
      *(v30 + 128) = 0uLL;
      *(v30 + 80) = 0uLL;
      *(v30 + 96) = 0uLL;
      *(v30 + 48) = 0uLL;
      *(v30 + 64) = 0uLL;
      *(v30 + 16) = 0uLL;
      *(v30 + 32) = 0uLL;
      v28 += 224;
      *v30 = 0uLL;
      LODWORD(v30) = v29++;
    }

    while (v30);
    v18 = *(a1 + 16);
  }

  *(a1 + 12) = 0;
  if (v18)
  {
    v31 = *(a1 + 24);
    v32 = 1;
  }

  else
  {
    v33 = sub_1AFDA7294(224, 16);
    v31 = v33;
    v34 = *(a1 + 12);
    if (v34 >= 1)
    {
      v35 = 0;
      v36 = 224 * v34;
      do
      {
        v37 = *(a1 + 24) + v35;
        v38 = v33 + v35;
        *v38 = *v37;
        *(v38 + 16) = *(v37 + 16);
        *(v38 + 32) = *(v37 + 32);
        *(v38 + 48) = *(v37 + 48);
        *(v38 + 64) = *(v37 + 64);
        *(v38 + 80) = *(v37 + 80);
        *(v38 + 96) = *(v37 + 96);
        *(v38 + 112) = *(v37 + 112);
        *(v38 + 128) = *(v37 + 128);
        *(v38 + 144) = *(v37 + 144);
        *(v38 + 160) = *(v37 + 160);
        *(v38 + 176) = *(v37 + 176);
        *(v38 + 192) = *(v37 + 192);
        *(v38 + 208) = *(v37 + 208);
        v35 += 224;
      }

      while (v36 != v35);
    }

    v39 = *(a1 + 24);
    if (v39 && *(a1 + 32) == 1)
    {
      sub_1AFDA72A0(v39);
    }

    *(a1 + 32) = 1;
    *(a1 + 24) = v31;
    *(a1 + 16) = 1;
    v32 = *(a1 + 12) + 1;
  }

  *(a1 + 12) = v32;
  *(v31 + 208) = 0;
  *(v31 + 176) = 0u;
  *(v31 + 192) = 0u;
  *(v31 + 144) = 0u;
  *(v31 + 160) = 0u;
  *(v31 + 112) = 0u;
  *(v31 + 128) = 0u;
  *(v31 + 80) = 0u;
  *(v31 + 96) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *v31 = 0u;
  v40 = *(a1 + 24);
  *(v40 + 64) = 0u;
  *(v40 + 80) = 0u;
  *(v40 + 144) = 0u;
  *(v40 + 160) = 0u;
  *v40 = xmmword_1AFE20150;
  *(v40 + 16) = xmmword_1AFE20160;
  *(v40 + 32) = xmmword_1AFE20180;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  *(v40 + 128) = 0;
  *(v40 + 136) = 0;
  *(v40 + 208) = 0;
  *(v40 + 96) = xmmword_1AFE208C0;
  *(v40 + 112) = xmmword_1AFE208C0;
  *(v40 + 176) = 0u;
  *(v40 + 192) = 0u;
  if (a3 >= 1)
  {
    do
    {
      v41 = sub_1AFD9D0D8(a1, *v12);
      v43 = *v12;
      if (*v12)
      {
        v44 = (*(*v12 + 264) & 2) == 0;
      }

      else
      {
        v44 = 1;
      }

      if (!v44)
      {
        v45 = *(v43 + 384);
        if (v45 != 0.0)
        {
          v46 = v41;
          v47 = *(a1 + 24);
          v48 = 0uLL;
          if ((*(v43 + 576) & 2) != 0)
          {
            sub_1AFDA6B34(*v12, &v190, *(a8 + 76), v42);
            v48 = v190;
            v45 = *(v43 + 384);
          }

          v49 = (v47 + 224 * v46);
          v50 = vmulq_n_f32(vmulq_n_f32(*(v43 + 464), v45), COERCE_FLOAT(*(a8 + 12)));
          v50.i32[3] = 0;
          v51 = v49[12];
          v49[11] = vaddq_f32(v49[11], v50);
          v52 = vsubq_f32(*(v43 + 480), v48);
          v52.i32[3] = 0;
          v53 = *(v43 + 304);
          v54 = *(v43 + 320);
          v53.i32[3] = 0;
          v54.i32[3] = 0;
          v55 = *(v43 + 336);
          v55.i32[3] = 0;
          v56 = vmulq_n_f32(vaddq_f32(vmulq_laneq_f32(v55, v52, 2), vaddq_f32(vmulq_n_f32(v53, v52.f32[0]), vmulq_lane_f32(v54, *v52.f32, 1))), COERCE_FLOAT(*(a8 + 12)));
          v56.i32[3] = 0;
          v49[12] = vaddq_f32(v51, v56);
        }
      }

      ++v12;
      --v14;
    }

    while (v14);
  }

  v188 = a7;
  if (a7 >= 1)
  {
    v57 = a7;
    v58 = a6;
    do
    {
      v59 = *v58++;
      (*(*v59 + 16))(v59);
      v59[14] = 0;
      --v57;
    }

    while (v57);
  }

  v60 = *(a1 + 268);
  if (v60 < a7 && *(a1 + 272) < a7)
  {
    if (a7)
    {
      v61 = sub_1AFDA7294(8 * a7, 16);
      v60 = *(a1 + 268);
    }

    else
    {
      v61 = 0;
    }

    if (v60 >= 1)
    {
      v62 = 0;
      v63 = 8 * v60;
      do
      {
        *(v61 + v62) = *(*(a1 + 280) + v62);
        v62 += 8;
      }

      while (v63 != v62);
    }

    v64 = *(a1 + 280);
    if (v64 && *(a1 + 288) == 1)
    {
      sub_1AFDA72A0(v64);
    }

    *(a1 + 288) = 1;
    *(a1 + 280) = v61;
    *(a1 + 272) = a7;
  }

  *(a1 + 268) = a7;
  if (a7 < 1)
  {
    v66 = 0;
  }

  else
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = *(a1 + 280);
      v68 = a6[v65];
      v69 = *(v68 + 8);
      if (v69)
      {
        v69[2] = 0u;
        v69[3] = 0u;
        *v69 = 0u;
        v69[1] = 0u;
        v68 = a6[v65];
      }

      v70 = (v67 + v65 * 8);
      if (*(v68 + 28) == 1)
      {
        (*(*v68 + 32))(v68, v70);
        v71 = *v70;
      }

      else
      {
        v71 = 0;
        *v70 = 0;
      }

      v66 += v71;
      ++v65;
    }

    while (a7 != v65);
  }

  v189 = a8;
  v72 = *(a1 + 76);
  if (v72 < v66 && *(a1 + 80) < v66)
  {
    if (v66)
    {
      v73 = sub_1AFDA7294(160 * v66, 16);
      v72 = *(a1 + 76);
    }

    else
    {
      v73 = 0;
    }

    if (v72 >= 1)
    {
      v74 = 0;
      v75 = 160 * v72;
      do
      {
        v76 = (v73 + v74);
        v77 = (*(a1 + 88) + v74);
        *v76 = *v77;
        v76[1] = v77[1];
        v76[2] = v77[2];
        v76[3] = v77[3];
        v76[4] = v77[4];
        v76[5] = v77[5];
        v78 = v77[6];
        v79 = v77[7];
        v80 = v77[9];
        v76[8] = v77[8];
        v76[9] = v80;
        v76[6] = v78;
        v76[7] = v79;
        v74 += 160;
      }

      while (v75 != v74);
    }

    v81 = *(a1 + 88);
    if (v81 && *(a1 + 96) == 1)
    {
      sub_1AFDA72A0(v81);
    }

    *(a1 + 96) = 1;
    *(a1 + 88) = v73;
    *(a1 + 80) = v66;
  }

  *(a1 + 76) = v66;
  if (a7 >= 1)
  {
    v82 = 0;
    v83 = 0;
    v84 = *(a1 + 280);
    do
    {
      v85 = (v84 + 8 * v82);
      v86 = *v85;
      if (*v85)
      {
        v87 = *(a1 + 88);
        v88 = a6[v82];
        v89 = *(v88 + 5);
        v90 = *(v88 + 6);
        v91 = sub_1AFD9D0D8(a1, v89);
        v92 = sub_1AFD9D0D8(a1, v90);
        v93 = v88[8];
        if (v93 <= 0)
        {
          v93 = *(v189 + 20);
        }

        if (v93 > *(a1 + 296))
        {
          *(a1 + 296) = v93;
        }

        v94 = *(a1 + 24);
        if (*v85 >= 1)
        {
          v95 = 0;
          v96 = (v87 + 160 * v83 + 156);
          do
          {
            *(v96 - 11) = 0uLL;
            *(v96 - 15) = 0uLL;
            *(v96 - 3) = 0uLL;
            *(v96 - 7) = 0uLL;
            *(v96 - 19) = 0uLL;
            *(v96 - 23) = 0uLL;
            *(v96 - 27) = 0uLL;
            *(v96 - 31) = 0uLL;
            *(v96 - 35) = 0uLL;
            *(v96 - 39) = 0uLL;
            *(v96 - 9) = -2.84809454e-306;
            *(v96 - 15) = 0;
            *(v96 - 1) = v91;
            *v96 = v92;
            *(v96 - 3) = v93;
            ++v95;
            v96 += 40;
          }

          while (v95 < *v85);
        }

        v97 = (v87 + 160 * v83);
        v98 = (v94 + 224 * v91);
        v99 = (v94 + 224 * v92);
        v98[4] = 0uLL;
        v98[5] = 0uLL;
        v98[9] = 0uLL;
        v98[10] = 0uLL;
        v99[4] = 0uLL;
        v99[5] = 0uLL;
        v99[9] = 0uLL;
        v99[10] = 0uLL;
        v100 = *(v189 + 32);
        v190.f32[0] = 1.0 / *(v189 + 12);
        v190.i32[1] = v100;
        v190.i64[1] = &v97[1];
        v191 = v97;
        v192 = v97 + 3;
        v193 = v97 + 2;
        v194 = 40;
        v195 = v97 + 7;
        v97[7].i32[1] = *(v189 + 40);
        v200 = *(v189 + 4);
        v196 = &v97[7].i8[4];
        v197 = &v97[7].i8[8];
        v198 = &v97[7].i8[12];
        v199 = *(v189 + 20);
        (*(*a6[v82] + 40))(a6[v82], &v190);
        if (*v85 >= 1)
        {
          v101 = 0;
          do
          {
            v102 = *(a6[v82] + 6);
            if (v97[7].f32[3] >= v102)
            {
              v97[7].f32[3] = v102;
            }

            v103 = -v102;
            if (v97[7].f32[2] <= v103)
            {
              v97[7].f32[2] = v103;
            }

            v97[8].i64[1] = v88;
            v104 = *(v88 + 5);
            v105 = *v97;
            v106 = v97[1];
            v107 = vmulq_f32(v104[19], *v97);
            v108 = vmulq_f32(*v97, v104[20]);
            v109 = vmulq_f32(*v97, v104[21]);
            v109.i32[3] = 0;
            *v107.f32 = vadd_f32(vpadd_f32(*v107.f32, *v108.i8), vzip1_s32(*&vextq_s8(v107, v107, 8uLL), *&vextq_s8(v108, v108, 8uLL)));
            *&v107.u32[2] = vpadd_f32(vpadd_f32(*v109.i8, *&vextq_s8(v109, v109, 8uLL)), 0);
            v97[4] = vmulq_f32(v107, v104[39]);
            v110 = *(v88 + 6);
            v111 = v97[2];
            v112 = v97[3];
            v113 = vmulq_f32(v110[19], v111);
            v114 = vmulq_f32(v111, v110[20]);
            v115 = vmulq_f32(v111, v110[21]);
            v115.i32[3] = 0;
            *v113.f32 = vadd_f32(vpadd_f32(*v113.f32, *v114.i8), vzip1_s32(*&vextq_s8(v113, v113, 8uLL), *&vextq_s8(v114, v114, 8uLL)));
            *&v113.u32[2] = vpadd_f32(vpadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL)), 0);
            v97[5] = vmulq_f32(v113, v110[39]);
            v116 = vmulq_n_f32(v106, v89[24].f32[0]);
            v116.i32[3] = 0;
            v117 = vmulq_f32(v105, v89[19]);
            v118 = vmulq_f32(v105, v89[20]);
            v119 = vmulq_f32(v105, v89[21]);
            v119.i32[3] = 0;
            *v117.f32 = vadd_f32(vpadd_f32(*v117.f32, *v118.i8), vzip1_s32(*&vextq_s8(v117, v117, 8uLL), *&vextq_s8(v118, v118, 8uLL)));
            *&v117.u32[2] = vpadd_f32(vpadd_f32(*v119.i8, *&vextq_s8(v119, v119, 8uLL)), 0);
            v120 = vmulq_n_f32(v112, v90[24].f32[0]);
            v120.i32[3] = 0;
            v121 = vmulq_f32(v111, v90[19]);
            v122 = vmulq_f32(v111, v90[20]);
            v123 = vmulq_f32(v111, v90[21]);
            v123.i32[3] = 0;
            *v121.f32 = vadd_f32(vpadd_f32(*v121.f32, *v122.i8), vzip1_s32(*&vextq_s8(v121, v121, 8uLL), *&vextq_s8(v122, v122, 8uLL)));
            *&v121.u32[2] = vpadd_f32(vpadd_f32(*v123.i8, *&vextq_s8(v123, v123, 8uLL)), 0);
            v124 = vmulq_f32(v106, v116);
            v125 = vmulq_f32(v105, v117);
            *v124.i8 = vadd_f32(vadd_f32(*&vextq_s8(v124, v124, 8uLL), vpadd_f32(*v124.i8, *v124.i8)), vadd_f32(*&vextq_s8(v125, v125, 8uLL), vpadd_f32(*v125.i8, *v125.i8)));
            v126 = vmulq_f32(v112, v120);
            *v124.i8 = vadd_f32(*v124.i8, vadd_f32(*&vextq_s8(v126, v126, 8uLL), vpadd_f32(*v126.i8, *v126.i8)));
            v127 = vmulq_f32(v111, v121);
            *v124.i32 = vadd_f32(*v124.i8, vadd_f32(*&vextq_s8(v127, v127, 8uLL), vpadd_f32(*v127.i8, *v127.i8))).f32[0];
            *v127.i32 = fabsf(*v124.i32);
            v128 = 1.0 / *v124.i32;
            if (*v127.i32 <= 0.00000011921)
            {
              v128 = 0.0;
            }

            v97[6].f32[3] = v128;
            v129 = vmulq_f32(v106, v89[22]);
            v130 = vmulq_f32(v105, v89[23]);
            *v130.i8 = vadd_f32(vadd_f32(vpadd_f32(*v129.i8, *v129.i8), *&vextq_s8(v129, v129, 8uLL)), vadd_f32(vpadd_f32(*v130.i8, *v130.i8), *&vextq_s8(v130, v130, 8uLL)));
            v131 = vmulq_f32(v112, v90[22]);
            v132 = vmulq_f32(v111, v90[23]);
            v97[7].f32[0] = (v128 * v97[7].f32[0]) + (v128 * (0.0 - (v200 * vadd_f32(*v130.i8, vadd_f32(vadd_f32(vpadd_f32(*v131.i8, *v131.i8), *&vextq_s8(v131, v131, 8uLL)), vadd_f32(vpadd_f32(*v132.i8, *v132.i8), *&vextq_s8(v132, v132, 8uLL)))).f32[0])));
            v97[6].i32[1] = 0;
            ++v101;
            v97 += 10;
          }

          while (v101 < *v85);
        }

        v84 = *(a1 + 280);
        v86 = *(v84 + 8 * v82);
      }

      v83 += v86;
      ++v82;
    }

    while (v82 != v188);
  }

  v133 = a4;
  if (a5 >= 1)
  {
    v134 = a5;
    do
    {
      v135 = *v133++;
      sub_1AFD9D954(a1, v135, v189);
      --v134;
    }

    while (v134);
  }

  v136 = *(a1 + 76);
  v137 = *(a1 + 44);
  v138 = *(a1 + 108);
  LODWORD(v139) = *(a1 + 204);
  if (v139 < v136 && *(a1 + 208) < v136)
  {
    if (v136)
    {
      v140 = sub_1AFDA7294(4 * v136, 16);
      LODWORD(v139) = *(a1 + 204);
    }

    else
    {
      v140 = 0;
    }

    v141 = *(a1 + 216);
    if (v139 < 1)
    {
      if (!v141)
      {
LABEL_117:
        *(a1 + 224) = 1;
        *(a1 + 216) = v140;
        *(a1 + 208) = v136;
        goto LABEL_118;
      }
    }

    else
    {
      v139 = v139;
      v142 = v140;
      v143 = *(a1 + 216);
      do
      {
        v144 = *v143++;
        *v142++ = v144;
        --v139;
      }

      while (v139);
    }

    if (*(a1 + 224) == 1)
    {
      sub_1AFDA72A0(v141);
    }

    *(a1 + 216) = 0;
    goto LABEL_117;
  }

LABEL_118:
  *(a1 + 204) = v136;
  if ((*(v189 + 64) & 0x10) != 0)
  {
    v147 = 2 * v137;
    LODWORD(v148) = *(a1 + 172);
    if (v148 >= 2 * v137 || *(a1 + 176) >= v147)
    {
      goto LABEL_148;
    }

    if (v137)
    {
      v149 = sub_1AFDA7294(8 * v137, 16);
      LODWORD(v148) = *(a1 + 172);
    }

    else
    {
      v149 = 0;
    }

    v154 = *(a1 + 184);
    if (v148 < 1)
    {
      if (!v154)
      {
LABEL_147:
        *(a1 + 192) = 1;
        *(a1 + 184) = v149;
        *(a1 + 176) = v147;
LABEL_148:
        *(a1 + 172) = v147;
        goto LABEL_149;
      }
    }

    else
    {
      v148 = v148;
      v155 = v149;
      v156 = *(a1 + 184);
      do
      {
        v157 = *v156++;
        *v155++ = v157;
        --v148;
      }

      while (v148);
    }

    if (*(a1 + 192) == 1)
    {
      sub_1AFDA72A0(v154);
    }

    *(a1 + 184) = 0;
    goto LABEL_147;
  }

  LODWORD(v145) = *(a1 + 172);
  if (v145 >= v137 || *(a1 + 176) >= v137)
  {
    goto LABEL_142;
  }

  if (v137)
  {
    v146 = sub_1AFDA7294(4 * v137, 16);
    LODWORD(v145) = *(a1 + 172);
  }

  else
  {
    v146 = 0;
  }

  v150 = *(a1 + 184);
  if (v145 >= 1)
  {
    v145 = v145;
    v151 = v146;
    v152 = *(a1 + 184);
    do
    {
      v153 = *v152++;
      *v151++ = v153;
      --v145;
    }

    while (v145);
    goto LABEL_138;
  }

  if (v150)
  {
LABEL_138:
    if (*(a1 + 192) == 1)
    {
      sub_1AFDA72A0(v150);
    }

    *(a1 + 184) = 0;
  }

  *(a1 + 192) = 1;
  *(a1 + 184) = v146;
  *(a1 + 176) = v137;
LABEL_142:
  *(a1 + 172) = v137;
LABEL_149:
  LODWORD(v158) = *(a1 + 236);
  if (v158 < v138 && *(a1 + 240) < v138)
  {
    if (v138)
    {
      v159 = sub_1AFDA7294(4 * v138, 16);
      LODWORD(v158) = *(a1 + 236);
    }

    else
    {
      v159 = 0;
    }

    v160 = *(a1 + 248);
    if (v158 < 1)
    {
      if (!v160)
      {
LABEL_162:
        *(a1 + 256) = 1;
        *(a1 + 248) = v159;
        *(a1 + 240) = v138;
        goto LABEL_163;
      }
    }

    else
    {
      v158 = v158;
      v161 = v159;
      v162 = *(a1 + 248);
      do
      {
        v163 = *v162++;
        *v161++ = v163;
        --v158;
      }

      while (v158);
    }

    if (*(a1 + 256) == 1)
    {
      sub_1AFDA72A0(v160);
    }

    *(a1 + 248) = 0;
    goto LABEL_162;
  }

LABEL_163:
  *(a1 + 236) = v138;
  if (v136 >= 1)
  {
    v164 = 0;
    v165 = vdupq_n_s64(v136 - 1);
    v166 = xmmword_1AFE21100;
    v167 = xmmword_1AFE21110;
    v168 = (*(a1 + 216) + 8);
    v169 = vdupq_n_s64(4uLL);
    do
    {
      v170 = vmovn_s64(vcgeq_u64(v165, v167));
      if (vuzp1_s16(v170, *v165.i8).u8[0])
      {
        *(v168 - 2) = v164;
      }

      if (vuzp1_s16(v170, *&v165).i8[2])
      {
        *(v168 - 1) = v164 + 1;
      }

      if (vuzp1_s16(*&v165, vmovn_s64(vcgeq_u64(v165, *&v166))).i32[1])
      {
        *v168 = v164 + 2;
        v168[1] = v164 + 3;
      }

      v164 += 4;
      v166 = vaddq_s64(v166, v169);
      v167 = vaddq_s64(v167, v169);
      v168 += 4;
    }

    while (((v136 + 3) & 0xFFFFFFFC) != v164);
  }

  if (v137 >= 1)
  {
    v171 = 0;
    v172 = vdupq_n_s64(v137 - 1);
    v173 = xmmword_1AFE21100;
    v174 = xmmword_1AFE21110;
    v175 = (*(a1 + 184) + 8);
    v176 = vdupq_n_s64(4uLL);
    do
    {
      v177 = vmovn_s64(vcgeq_u64(v172, v174));
      if (vuzp1_s16(v177, *v172.i8).u8[0])
      {
        *(v175 - 2) = v171;
      }

      if (vuzp1_s16(v177, *&v172).i8[2])
      {
        *(v175 - 1) = v171 + 1;
      }

      if (vuzp1_s16(*&v172, vmovn_s64(vcgeq_u64(v172, *&v173))).i32[1])
      {
        *v175 = v171 + 2;
        v175[1] = v171 + 3;
      }

      v171 += 4;
      v173 = vaddq_s64(v173, v176);
      v174 = vaddq_s64(v174, v176);
      v175 += 4;
    }

    while (((v137 + 3) & 0xFFFFFFFC) != v171);
  }

  if (v138 >= 1)
  {
    v178 = 0;
    v179 = vdupq_n_s64(v138 - 1);
    v180 = xmmword_1AFE21100;
    v181 = xmmword_1AFE21110;
    v182 = (*(a1 + 248) + 8);
    v183 = vdupq_n_s64(4uLL);
    do
    {
      v184 = vmovn_s64(vcgeq_u64(v179, v181));
      if (vuzp1_s16(v184, *v179.i8).u8[0])
      {
        *(v182 - 2) = v178;
      }

      if (vuzp1_s16(v184, *&v179).i8[2])
      {
        *(v182 - 1) = v178 + 1;
      }

      if (vuzp1_s16(*&v179, vmovn_s64(vcgeq_u64(v179, *&v180))).i32[1])
      {
        *v182 = v178 + 2;
        v182[1] = v178 + 3;
      }

      v178 += 4;
      v180 = vaddq_s64(v180, v183);
      v181 = vaddq_s64(v181, v183);
      v182 += 4;
    }

    while (((v138 + 3) & 0xFFFFFFFC) != v178);
  }

  return 0.0;
}

double sub_1AFD9F3A0(uint64_t a1, __int32 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, uint64_t a9)
{
  v9 = a8;
  v12 = a1;
  if (*(a9 + 64))
  {
    v13 = *(a1 + 76);
    v14 = *(a1 + 44);
    v15 = *(a1 + 108);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = *(a1 + 216);
      do
      {
        v18 = *(v17 + 4 * v16);
        a1 = sub_1AFD9C758(v12, v16 + 1);
        v17 = *(v12 + 216);
        *(v17 + 4 * v16) = *(v17 + 4 * a1);
        *(v17 + 4 * a1) = v18;
        ++v16;
      }

      while (v13 != v16);
    }

    v9 = a8;
    if (*(a9 + 20) > a2)
    {
      if (v14 >= 1)
      {
        v19 = 0;
        v20 = *(v12 + 184);
        do
        {
          v21 = *(v20 + 4 * v19);
          a1 = sub_1AFD9C758(v12, v19 + 1);
          v20 = *(v12 + 184);
          *(v20 + 4 * v19) = *(v20 + 4 * a1);
          *(v20 + 4 * a1) = v21;
          ++v19;
        }

        while (v14 != v19);
      }

      if (v15 >= 1)
      {
        v22 = 0;
        v23 = *(v12 + 248);
        do
        {
          v24 = *(v23 + 4 * v22);
          a1 = sub_1AFD9C758(v12, v22 + 1);
          v23 = *(v12 + 248);
          *(v23 + 4 * v22) = *(v23 + 4 * a1);
          *(v23 + 4 * a1) = v24;
          ++v22;
        }

        while (v15 != v22);
      }
    }
  }

  v25 = *(v12 + 76);
  if (*(a9 + 65))
  {
    if (v25 >= 1)
    {
      for (i = 0; i < v25; ++i)
      {
        v49 = (*(v12 + 88) + 160 * *(*(v12 + 216) + 4 * i));
        if (v49[9].i32[0] > a2)
        {
          sub_1AFD9C3E8(a1, (*(v12 + 24) + 224 * v49[9].i32[2]), (*(v12 + 24) + 224 * v49[9].i32[3]), v49);
          v25 = *(v12 + 76);
        }
      }
    }

    if (*(a9 + 20) > a2)
    {
      if (v9 >= 1)
      {
        v50 = v9;
        do
        {
          if (*(*a7 + 28) == 1)
          {
            v51 = sub_1AFD9D0D8(v12, *(*a7 + 40));
            v52 = sub_1AFD9D0D8(v12, *(*a7 + 48));
            a1 = (*(**a7 + 48))(*a7, *(v12 + 24) + 224 * v51, *(v12 + 24) + 224 * v52, *(a9 + 12));
          }

          ++a7;
          --v50;
        }

        while (v50);
      }

      v53 = *(a9 + 64);
      v54 = *(v12 + 44);
      if ((v53 & 0x200) != 0)
      {
        if (v54 >= 1)
        {
          v71 = 0;
          v72 = (v53 >> 4) & 1;
          do
          {
            v73 = (*(v12 + 56) + 160 * *(*(v12 + 184) + 4 * v71));
            sub_1AFD9C50C(a1, (*(v12 + 24) + 224 * v73[9].i32[2]), (*(v12 + 24) + 224 * v73[9].i32[3]), v73);
            v74 = v73[6].f32[1];
            if (v74 > 0.0)
            {
              v75 = (*(v12 + 120) + 160 * *(*(v12 + 248) + 4 * (v71 << v72)));
              v76 = v75[6].f32[2];
              v75[7].f32[2] = -(v76 * v74);
              v75[7].f32[3] = v74 * v76;
              sub_1AFD9C3E8(a1, (*(v12 + 24) + 224 * v75[9].i32[2]), (*(v12 + 24) + 224 * v75[9].i32[3]), v75);
              if ((*(a9 + 64) & 0x10) != 0)
              {
                v77 = (*(v12 + 120) + 160 * *(*(v12 + 248) + 4 * (v71 << v72) + 4));
                v78 = v77[6].f32[2];
                v77[7].f32[2] = -(v78 * v74);
                v77[7].f32[3] = v74 * v78;
                sub_1AFD9C3E8(a1, (*(v12 + 24) + 224 * v77[9].i32[2]), (*(v12 + 24) + 224 * v77[9].i32[3]), v77);
              }
            }

            ++v71;
          }

          while (v54 != v71);
        }
      }

      else
      {
        if (v54 >= 1)
        {
          v55 = 0;
          v56 = 4 * v54;
          do
          {
            v57 = (*(v12 + 56) + 160 * *(*(v12 + 184) + v55));
            sub_1AFD9C50C(a1, (*(v12 + 24) + 224 * v57[9].i32[2]), (*(v12 + 24) + 224 * v57[9].i32[3]), v57);
            v55 += 4;
          }

          while (v56 != v55);
        }

        v58 = *(v12 + 108);
        if (v58 >= 1)
        {
          v59 = 0;
          v60 = 4 * v58;
          do
          {
            v61 = (*(v12 + 120) + 160 * *(*(v12 + 248) + v59));
            v62 = *(*(v12 + 56) + 160 * v61[9].i32[1] + 100);
            if (v62 > 0.0)
            {
              v63 = v61[6].f32[2];
              v61[7].f32[2] = -(v63 * v62);
              v61[7].f32[3] = v62 * v63;
              sub_1AFD9C3E8(a1, (*(v12 + 24) + 224 * v61[9].i32[2]), (*(v12 + 24) + 224 * v61[9].i32[3]), v61);
            }

            v59 += 4;
          }

          while (v60 != v59);
        }

        v64 = *(v12 + 140);
        if (v64 >= 1)
        {
          v65 = 0;
          v66 = 160 * v64;
          do
          {
            v67 = (*(v12 + 152) + v65);
            v68 = *(*(v12 + 56) + 160 * v67[9].i32[1] + 100);
            if (v68 > 0.0)
            {
              v69 = v67[6].f32[2];
              v70 = v68 * v69;
              if (v70 > v69)
              {
                v70 = v67[6].f32[2];
              }

              v67[7].f32[2] = -v70;
              v67[7].f32[3] = v70;
              sub_1AFD9C3E8(a1, (*(v12 + 24) + 224 * v67[9].i32[2]), (*(v12 + 24) + 224 * v67[9].i32[3]), v67);
            }

            v65 += 160;
          }

          while (v66 != v65);
        }
      }
    }
  }

  else
  {
    if (v25 >= 1)
    {
      for (j = 0; j < v25; ++j)
      {
        v27 = (*(v12 + 88) + 160 * *(*(v12 + 216) + 4 * j));
        if (v27[9].i32[0] > a2)
        {
          sub_1AFD9C3E8(a1, (*(v12 + 24) + 224 * v27[9].i32[2]), (*(v12 + 24) + 224 * v27[9].i32[3]), v27);
          v25 = *(v12 + 76);
        }
      }
    }

    if (*(a9 + 20) > a2)
    {
      if (v9 >= 1)
      {
        v28 = v9;
        do
        {
          if (*(*a7 + 28) == 1)
          {
            v29 = sub_1AFD9D0D8(v12, *(*a7 + 40));
            v30 = sub_1AFD9D0D8(v12, *(*a7 + 48));
            a1 = (*(**a7 + 48))(*a7, *(v12 + 24) + 224 * v29, *(v12 + 24) + 224 * v30, *(a9 + 12));
          }

          ++a7;
          --v28;
        }

        while (v28);
      }

      v31 = *(v12 + 44);
      if (v31 >= 1)
      {
        v32 = 0;
        v33 = 4 * v31;
        do
        {
          v34 = (*(v12 + 56) + 160 * *(*(v12 + 184) + v32));
          sub_1AFD9C50C(a1, (*(v12 + 24) + 224 * v34[9].i32[2]), (*(v12 + 24) + 224 * v34[9].i32[3]), v34);
          v32 += 4;
        }

        while (v33 != v32);
      }

      v35 = *(v12 + 108);
      if (v35 >= 1)
      {
        v36 = 0;
        v37 = 4 * v35;
        do
        {
          v38 = (*(v12 + 120) + 160 * *(*(v12 + 248) + v36));
          v39 = *(*(v12 + 56) + 160 * v38[9].i32[1] + 100);
          if (v39 > 0.0)
          {
            v40 = v38[6].f32[2];
            v38[7].f32[2] = -(v40 * v39);
            v38[7].f32[3] = v39 * v40;
            sub_1AFD9C3E8(a1, (*(v12 + 24) + 224 * v38[9].i32[2]), (*(v12 + 24) + 224 * v38[9].i32[3]), v38);
          }

          v36 += 4;
        }

        while (v37 != v36);
      }

      v41 = *(v12 + 140);
      if (v41 >= 1)
      {
        v42 = 0;
        v43 = 160 * v41;
        do
        {
          v44 = (*(v12 + 152) + v42);
          v45 = *(*(v12 + 56) + 160 * v44[9].i32[1] + 100);
          if (v45 > 0.0)
          {
            v46 = v44[6].f32[2];
            v47 = v45 * v46;
            if (v47 > v46)
            {
              v47 = v44[6].f32[2];
            }

            v44[7].f32[2] = -v47;
            v44[7].f32[3] = v47;
            sub_1AFD9C3E8(a1, (*(v12 + 24) + 224 * v44[9].i32[2]), (*(v12 + 24) + 224 * v44[9].i32[3]), v44);
          }

          v42 += 160;
        }

        while (v43 != v42);
      }
    }
  }

  return 0.0;
}

void sub_1AFD9FA10(uint64_t a1, float32x4_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a9 + 44))
  {
    v11 = *(a9 + 20);
    if (*(a9 + 65))
    {
      if (v11 >= 1)
      {
        for (i = 0; i < v11; ++i)
        {
          v18 = *(a1 + 44);
          if (v18 >= 1)
          {
            v19 = 0;
            v20 = 4 * v18;
            do
            {
              v21 = (*(a1 + 56) + 160 * *(*(a1 + 184) + v19));
              a2 = sub_1AFD9C624(a2, a1, (*(a1 + 24) + 224 * v21[9].i32[2]), (*(a1 + 24) + 224 * v21[9].i32[3]), v21);
              v19 += 4;
            }

            while (v20 != v19);
            v11 = *(a9 + 20);
          }
        }
      }
    }

    else if (v11 >= 1)
    {
      for (j = 0; j < v11; ++j)
      {
        v13 = *(a1 + 44);
        if (v13 >= 1)
        {
          v14 = 0;
          v15 = 4 * v13;
          do
          {
            v16 = (*(a1 + 56) + 160 * *(*(a1 + 184) + v14));
            a2 = sub_1AFD9C624(a2, a1, (*(a1 + 24) + 224 * v16[9].i32[2]), (*(a1 + 24) + 224 * v16[9].i32[3]), v16);
            v14 += 4;
          }

          while (v15 != v14);
          v11 = *(a9 + 20);
        }
      }
    }
  }
}

double sub_1AFD9FB38(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, uint64_t a8)
{
  (*(*a1 + 48))(a1, a2, a3, a4, a5);
  if (a1[74] <= *(a8 + 20))
  {
    v16 = *(a8 + 20);
  }

  else
  {
    v16 = a1[74];
  }

  if (v16 >= 1)
  {
    for (i = 0; i != v16; ++i)
    {
      sub_1AFD9F3A0(a1, i, v12, v13, v14, v15, a6, a7, a8);
    }
  }

  return 0.0;
}

double sub_1AFD9FBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = *(a4 + 64);
  if ((v7 & 4) != 0)
  {
    v8 = *(a1 + 44);
    if (v8 >= 1)
    {
      v9 = *(a1 + 120);
      v10 = (*(a1 + 56) + 148);
      do
      {
        v11 = *(v10 - 3);
        v12 = *v10;
        v13 = *(v9 + 160 * *v10 + 100);
        v11[31] = *(v10 - 12);
        v11[32] = v13;
        if ((v7 & 0x10) != 0)
        {
          v11[33] = *(v9 + 260 + 160 * v12);
        }

        v10 += 40;
        --v8;
      }

      while (v8);
    }
  }

  v14 = *(a1 + 76);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = 160 * v14;
    do
    {
      v17 = (*(a1 + 88) + v15);
      v18 = v17[8].i64[1];
      v19 = *(v18 + 64);
      if (v19)
      {
        v20 = vmulq_n_f32(vmulq_f32(*(*(v18 + 40) + 400), vmulq_n_f32(v17[1], v17[6].f32[1])), 1.0 / *(a4 + 12));
        v20.i32[3] = 0;
        v21 = v19[1];
        *v19 = vaddq_f32(*v19, v20);
        v22 = vmulq_n_f32(vmulq_f32(*(*(v18 + 48) + 400), vmulq_n_f32(v17[3], v17[6].f32[1])), 1.0 / *(a4 + 12));
        v22.i32[3] = 0;
        v23 = v19[3];
        v19[2] = vaddq_f32(v19[2], v22);
        v24 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(*v17, *(*(v18 + 40) + 624)), v17[6].f32[1]), 1.0 / *(a4 + 12));
        v24.i32[3] = 0;
        v19[1] = vaddq_f32(v21, v24);
        v25 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(v17[2], *(*(v18 + 48) + 624)), v17[6].f32[1]), 1.0 / *(a4 + 12));
        v25.i32[3] = 0;
        v19[3] = vaddq_f32(v23, v25);
      }

      v26 = v17[6].f32[1];
      *(v18 + 56) = v26;
      if (fabsf(v26) >= *(v18 + 24))
      {
        *(v18 + 28) = 0;
      }

      v15 += 160;
    }

    while (v16 != v15);
  }

  v27 = *(a1 + 12);
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = *(a1 + 24);
    do
    {
      if (*(v30 + v28 + 208))
      {
        if (*(a4 + 44))
        {
          a5.n128_u32[0] = *(a4 + 12);
          sub_1AFD9FFA4(v30 + v28, a5.n128_f64[0], *(a4 + 52));
        }

        else
        {
          v31 = (v30 + v28);
          v32 = vaddq_f32(v31[12], v31[5]);
          v31[11] = vaddq_f32(v31[11], v31[4]);
          v31[12] = v32;
        }

        *(*(*(a1 + 24) + v28 + 208) + 352) = *(*(a1 + 24) + v28 + 176);
        v33 = (*(a1 + 24) + v28);
        a5 = v33[12];
        *(v33[13].n128_u64[0] + 368) = a5;
        if (*(a4 + 44))
        {
          v34 = *(a1 + 24) + v28;
          v35 = *(v34 + 208);
          *(v35 + 16) = *v34;
          *(v35 + 32) = *(v34 + 16);
          *(v35 + 48) = *(v34 + 32);
          a5 = *(v34 + 48);
          *(v35 + 64) = a5;
        }

        v30 = *(a1 + 24);
        *(*(v30 + v28 + 208) + 240) = -1;
        v27 = *(a1 + 12);
      }

      ++v29;
      v28 += 224;
    }

    while (v29 < v27);
  }

  if ((*(a1 + 44) & 0x80000000) != 0 && (*(a1 + 48) & 0x80000000) != 0)
  {
    v36 = *(a1 + 56);
    if (v36 && *(a1 + 64) == 1)
    {
      sub_1AFDA72A0(v36);
    }

    *(a1 + 64) = 1;
    *(a1 + 56) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 44) = 0;
  if ((*(a1 + 76) & 0x80000000) != 0 && (*(a1 + 80) & 0x80000000) != 0)
  {
    v37 = *(a1 + 88);
    if (v37 && *(a1 + 96) == 1)
    {
      sub_1AFDA72A0(v37);
    }

    *(a1 + 96) = 1;
    *(a1 + 88) = 0;
    *(a1 + 80) = 0;
  }

  *(a1 + 76) = 0;
  if ((*(a1 + 108) & 0x80000000) != 0 && (*(a1 + 112) & 0x80000000) != 0)
  {
    v38 = *(a1 + 120);
    if (v38 && *(a1 + 128) == 1)
    {
      sub_1AFDA72A0(v38);
    }

    *(a1 + 128) = 1;
    *(a1 + 120) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 108) = 0;
  if ((*(a1 + 140) & 0x80000000) != 0 && (*(a1 + 144) & 0x80000000) != 0)
  {
    v39 = *(a1 + 152);
    if (v39 && *(a1 + 160) == 1)
    {
      sub_1AFDA72A0(v39);
    }

    *(a1 + 160) = 1;
    *(a1 + 152) = 0;
    *(a1 + 144) = 0;
  }

  *(a1 + 140) = 0;
  if ((*(a1 + 12) & 0x80000000) != 0 && (*(a1 + 16) & 0x80000000) != 0)
  {
    v40 = *(a1 + 24);
    if (v40 && *(a1 + 32) == 1)
    {
      sub_1AFDA72A0(v40);
    }

    *(a1 + 32) = 1;
    *(a1 + 24) = 0;
    *(a1 + 16) = 0;
  }

  *(a1 + 12) = 0;
  return 0.0;
}

double sub_1AFD9FFA4(uint64_t a1, double result, float a3)
{
  if (*(a1 + 208))
  {
    v4 = vaddq_f32(*(a1 + 192), *(a1 + 80));
    *(a1 + 176) = vaddq_f32(*(a1 + 176), *(a1 + 64));
    *(a1 + 192) = v4;
    if (*(a1 + 144) != 0.0 || *(a1 + 148) != 0.0 || *(a1 + 152) != 0.0 || *(a1 + 160) != 0.0 || *(a1 + 164) != 0.0 || *(a1 + 168) != 0.0)
    {
      v5 = vmulq_n_f32(*(a1 + 160), a3);
      v5.i32[3] = 0;
      v8 = v5;
      sub_1AFD8F808(a1, (a1 + 144), &v8, v9, *&result);
      v6 = v9[1];
      *a1 = v9[0];
      *(a1 + 16) = v6;
      result = *&v10;
      v7 = v11;
      *(a1 + 32) = v10;
      *(a1 + 48) = v7;
    }
  }

  return result;
}

double sub_1AFDA0068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*a1 + 64))(a1);
  (*(*a1 + 72))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*a1 + 56))(a1, a2, a3, a8);
  return 0.0;
}

double sub_1AFDA0188(uint64_t a1)
{
  *(a1 + 212) = xmmword_1AFE20680;
  *(a1 + 228) = xmmword_1AFEAC3D0;
  *(a1 + 244) = xmmword_1AFEAC3D0;
  *(a1 + 292) = xmmword_1AFEAC3E0;
  *(a1 + 308) = xmmword_1AFEAC3E0;
  *(a1 + 260) = xmmword_1AFEAC3E0;
  *(a1 + 276) = xmmword_1AFEAC3E0;
  *(a1 + 1216) = 0;
  *(a1 + 1236) = 0;
  *(a1 + 1240) = 0;
  *(a1 + 1220) = 0;
  *(a1 + 1225) = 0;
  *(a1 + 73) = 1;
  v1 = (*(a1 + 40) + 16);
  v2 = (*(a1 + 48) + 16);
  *(a1 + 328) = 0;
  return sub_1AFDA01F0(a1, v1, v2);
}

double sub_1AFDA01F0(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3)
{
  v3 = a1[13].i8[0];
  if ((v3 & 1) != 0 || a1[4].i8[8] != 1)
  {
    v34 = a2[1];
    v35 = a1[5];
    v36 = a1[6];
    v35.i32[3] = 0;
    v36.i32[3] = 0;
    v38 = a1[7];
    v37 = a1[8];
    v38.i32[3] = 0;
    v39 = a2[2];
    v40 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v34.f32[0]), v36, *v34.f32, 1), v38, v34, 2);
    v41 = vmulq_f32(*a2, v37);
    v42 = vmulq_f32(v34, v37);
    v43 = vmulq_f32(v39, v37);
    v44 = vextq_s8(v42, v42, 8uLL).u64[0];
    v43.i32[3] = 0;
    v45 = vpadd_f32(*v41.i8, *v42.i8);
    v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*a2)), v36, *a2->f32, 1), v38, *a2, 2);
    v46 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, v39.f32[0]), v36, *v39.f32, 1), v38, v39, 2);
    *v47.f32 = vadd_f32(v45, vzip1_s32(*&vextq_s8(v41, v41, 8uLL), v44));
    *&v47.u32[2] = vpadd_f32(vpadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)), 0);
    v18 = vaddq_f32(a2[3], v47);
    v19 = a1 + 59;
    v20 = a1 + 60;
    a1[59] = v33;
    a1[60] = v40;
    v21 = a1 + 61;
    a1[61] = v46;
    a1[62] = v18;
    v48 = a3[1];
    v49 = a1[9];
    v50 = a1[10];
    v49.i32[3] = 0;
    v50.i32[3] = 0;
    v51 = a1[11];
    v52 = a1[12];
    v51.i32[3] = 0;
    v53 = a3[2];
    v54 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v48.f32[0]), v50, *v48.f32, 1), v51, v48, 2);
    v55 = vmulq_f32(*a3, v52);
    v56 = vmulq_f32(v48, v52);
    v57 = vmulq_f32(v53, v52);
    v57.i32[3] = 0;
    *v35.f32 = vadd_f32(vpadd_f32(*v55.i8, *v56.i8), vzip1_s32(*&vextq_s8(v55, v55, 8uLL), *&vextq_s8(v56, v56, 8uLL)));
    *&v35.u32[2] = vpadd_f32(vpadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL)), 0);
    v32 = vaddq_f32(a3[3], v35);
    a1[63] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*a3)), v50, *a3->f32, 1), v51, *a3, 2);
    a1[64] = v54;
    a1[65] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, v53.f32[0]), v50, *v53.f32, 1), v51, v53, 2);
    a1[66] = v32;
    a1[68] = v18;
    v33.i32[1] = v40.i32[0];
    a1[69] = v32;
    v33.i64[1] = v46.u32[0];
    a1[67] = v33;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = a3[1];
    v5 = a1[9];
    v6 = a1[10];
    v5.i32[3] = 0;
    v6.i32[3] = 0;
    v8 = a1[11];
    v7 = a1[12];
    v8.i32[3] = 0;
    v9 = a3[2];
    v10 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v4.f32[0]), v6, *v4.f32, 1), v8, v4, 2);
    v11 = vmulq_f32(*a3, v7);
    v12 = vmulq_f32(v4, v7);
    v13 = vmulq_f32(v9, v7);
    v14 = vextq_s8(v12, v12, 8uLL).u64[0];
    v13.i32[3] = 0;
    v15 = vpadd_f32(*v11.i8, *v12.i8);
    v33 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*a3)), v6, *a3->f32, 1), v8, *a3, 2);
    v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, v9.f32[0]), v6, *v9.f32, 1), v8, v9, 2);
    *v17.f32 = vadd_f32(v15, vzip1_s32(*&vextq_s8(v11, v11, 8uLL), v14));
    *&v17.u32[2] = vpadd_f32(vpadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)), 0);
    v18 = vaddq_f32(a3[3], v17);
    v19 = a1 + 59;
    v20 = a1 + 60;
    a1[59] = v33;
    a1[60] = v10;
    v21 = a1 + 61;
    a1[61] = v16;
    a1[62] = v18;
    v22 = a2[1];
    v23 = a1[5];
    v24 = a1[6];
    v23.i32[3] = 0;
    v24.i32[3] = 0;
    v25 = a1[7];
    v26 = a1[8];
    v25.i32[3] = 0;
    v27 = a2[2];
    v28 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v22.f32[0]), v24, *v22.f32, 1), v25, v22, 2);
    v29 = vmulq_f32(*a2, v26);
    v30 = vmulq_f32(v22, v26);
    v31 = vmulq_f32(v27, v26);
    v31.i32[3] = 0;
    *v5.f32 = vadd_f32(vpadd_f32(*v29.i8, *v30.i8), vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)));
    *&v5.u32[2] = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
    v32 = vaddq_f32(a2[3], v5);
    a1[63] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, COERCE_FLOAT(*a2)), v24, *a2->f32, 1), v25, *a2, 2);
    a1[64] = v28;
    a1[65] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v27.f32[0]), v24, *v27.f32, 1), v25, v27, 2);
    a1[66] = v32;
    a1[68] = v18;
    v33.i32[1] = v10.i32[0];
    a1[69] = v32;
    v33.i64[1] = v16.u32[0];
    a1[67] = v33;
  }

  if (a1[4].i8[8] != 1)
  {
    v58 = vsubq_f32(v18, v32);
    goto LABEL_8;
  }

LABEL_6:
  v58 = vsubq_f32(v32, v18);
LABEL_8:
  v59 = 0;
  v58.i32[3] = 0;
  a1[71] = v58;
  v60 = vmulq_f32(v33, v58);
  v61 = vmulq_n_f32(v33, vadd_f32(vpadd_f32(*v60.i8, *v60.i8), *&vextq_s8(v60, v60, 8uLL)).f32[0]);
  v61.i32[3] = 0;
  v62 = vaddq_f32(v18, v61);
  a1[70] = v62;
  do
  {
    v62.i32[0] = v19->i32[v59];
    v62.i32[1] = v20->i32[v59];
    v62.i32[2] = v21->i32[v59];
    v63 = vmulq_f32(v62, v58);
    v64 = vpadd_f32(*v63.i8, *v63.i8);
    v62 = vextq_s8(v63, v63, 8uLL);
    *v62.f32 = vadd_f32(v64, *v62.f32);
    a1[72].i32[v59++] = v62.i32[0];
  }

  while (v59 != 3);
  return *v62.i64;
}

uint64_t sub_1AFDA04E8(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, _OWORD *a5, char a6)
{
  sub_1AFDA19B8(a1, 7, a2, a3);
  *v10 = &unk_1F25728B0;
  *(v10 + 72) = 0;
  *(v10 + 80) = *a4;
  *(v10 + 96) = a4[1];
  *(v10 + 112) = a4[2];
  *(v10 + 128) = a4[3];
  *(v10 + 144) = *a5;
  *(v10 + 160) = a5[1];
  *(v10 + 176) = a5[2];
  *(v10 + 192) = a5[3];
  *(v10 + 208) = a6;
  sub_1AFDA0188(v10);
  return a1;
}

float32x4_t *sub_1AFDA059C(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, __int8 a4)
{
  v8 = sub_1AFDA195C();
  sub_1AFDA19B8(a1, 7, v8, a2);
  a1->i64[0] = &unk_1F25728B0;
  a1[4].i8[8] = 0;
  v9 = *a3;
  a1[9] = *a3;
  v10 = a3[1];
  a1[10] = v10;
  v11 = a3[2];
  a1[11] = v11;
  v12 = a3[3];
  a1[12] = v12;
  a1[13].i8[0] = a4;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = vmulq_f32(v12, v13);
  v17 = vmulq_f32(v12, v14);
  *v16.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vpadd_f32(*v16.f32, *v17.i8));
  v18 = vmulq_f32(v12, v15);
  v18.i32[3] = 0;
  *&v16.u32[2] = vpadd_f32(vpadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)), 0);
  v11.i32[3] = 0;
  v19 = vaddq_f32(a2[4], v16);
  v10.i32[3] = 0;
  v9.i32[3] = 0;
  a1[5] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v13.f32[0]), v10, *v13.f32, 1), v11, v13, 2);
  a1[6] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v14.f32[0]), v10, *v14.f32, 1), v11, v14, 2);
  a1[7] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v15.f32[0]), v10, *v15.f32, 1), v11, v15, 2);
  a1[8] = v19;
  sub_1AFDA0188(v20);
  return a1;
}

float32x4_t *sub_1AFDA06B4(float32x4_t *result, int32x2_t *a2)
{
  if (result[4].i8[8] == 1)
  {
    v3 = 0;
    a2->i32[0] = 0;
LABEL_9:
    a2->i32[1] = v3;
    return result;
  }

  v4 = result;
  *a2 = 0x200000004;
  *v5.i64 = sub_1AFDA01F0(result, (result[2].i64[1] + 16), (result[3].i64[0] + 16));
  sub_1AFDA076C(v4, v5, v6, v7);
  result = sub_1AFDA098C(v4);
  if ((v4[20].i8[4] & 1) != 0 || v4[76].i8[0] == 1)
  {
    *a2 = vadd_s32(*a2, 0xFFFFFFFF00000001);
  }

  if ((v4[20].i8[5] & 1) != 0 || v4[77].i8[0] == 1)
  {
    v8 = a2->i32[1];
    ++a2->i32[0];
    v3 = v8 - 1;
    goto LABEL_9;
  }

  return result;
}

void sub_1AFDA076C(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  *(a1 + 1208) = 0;
  *(a1 + 325) = 0;
  v4 = *(a1 + 220);
  v5 = *(a1 + 224);
  if (v4 <= v5)
  {
    a3.i32[0] = *(a1 + 948);
    a3.i32[1] = *(a1 + 964);
    a3.i32[2] = *(a1 + 980);
    a2.i32[0] = *(a1 + 952);
    a2.i32[1] = *(a1 + 968);
    a2.i32[2] = *(a1 + 984);
    a4.i32[0] = *(a1 + 1012);
    a4.i32[1] = *(a1 + 1028);
    a4.i32[2] = *(a1 + 1044);
    v7 = vmulq_f32(a2, a4);
    v8 = vmulq_f32(a3, a4);
    v9 = atan2f(vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0], vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0]);
    v10 = v9;
    if (v4 < v5)
    {
      if (v9 >= v4)
      {
        if (v9 > v5)
        {
          v12 = fmodf(v9 - v5, 6.2832);
          if (v12 >= -3.1416)
          {
            if (v12 > 3.1416)
            {
              v12 = v12 + -6.2832;
            }
          }

          else
          {
            v12 = v12 + 6.2832;
          }

          v15 = fabsf(v12);
          v16 = fmodf(v10 - v4, 6.2832);
          if (v16 >= -3.1416)
          {
            if (v16 > 3.1416)
            {
              v16 = v16 + -6.2832;
            }
          }

          else
          {
            v16 = v16 + 6.2832;
          }

          if (fabsf(v16) < v15)
          {
            v10 = v10 + -6.2832;
          }
        }
      }

      else
      {
        v11 = fmodf(v4 - v9, 6.2832);
        if (v11 >= -3.1416)
        {
          if (v11 > 3.1416)
          {
            v11 = v11 + -6.2832;
          }
        }

        else
        {
          v11 = v11 + 6.2832;
        }

        v13 = fabsf(v11);
        v14 = fmodf(v5 - v10, 6.2832);
        if (v14 >= -3.1416)
        {
          if (v14 > 3.1416)
          {
            v14 = v14 + -6.2832;
          }
        }

        else
        {
          v14 = v14 + 6.2832;
        }

        if (v13 >= fabsf(v14))
        {
          v10 = v10 + 6.2832;
        }
      }
    }

    *(a1 + 1204) = v10;
    if (v10 < v4 || (v4 = v5, v10 > v5))
    {
      *(a1 + 1208) = v10 - v4;
      *(a1 + 325) = 1;
    }
  }
}

uint64_t sub_1AFDA098C(uint64_t result)
{
  *(result + 324) = 0;
  v1 = *(result + 1152);
  *(result + 1200) = v1;
  v2 = *(result + 212);
  v3 = *(result + 216);
  if (v2 > v3)
  {
    goto LABEL_2;
  }

  if (v1 <= v3)
  {
    if (v1 >= v2)
    {
LABEL_2:
      *(result + 1152) = 0;
      return result;
    }

    v4 = v1 - v2;
  }

  else
  {
    v4 = v1 - v3;
  }

  *(result + 1152) = v4;
  *(result + 324) = 1;
  return result;
}

void sub_1AFDA09D8(float32x4_t *a1, int8x16_t a2, __n128 a3, uint64_t a4, double a5, float32x4_t a6, float32x4_t a7)
{
  v7 = a1[2].i64[1];
  a2.i32[0] = v7[24].i32[0];
  sub_1AFDA09F8(a1, a4, v7 + 1, (a1[3].i64[0] + 16), v7 + 22, (a1[3].i64[0] + 352), a2, *(a1[3].i64[0] + 384), a5, a6, a7);
}

void sub_1AFDA09F8(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, int8x16_t a7, float a8, double a9, float32x4_t a10, float32x4_t a11)
{
  v15 = *(a2 + 40);
  if (a1[13].i8[0])
  {
    v16 = 1.0;
  }

  else
  {
    v16 = -1.0;
  }

  v17 = fminf(*a7.i32, a8) < 0.00000011921;
  v18 = *a7.i32 + a8;
  v19 = a8 / v18;
  if (v18 <= 0.0)
  {
    v19 = 0.5;
  }

  *a7.i32 = 1.0 - v19;
  a10.i32[0] = a1[59].i32[0];
  a10.i32[1] = a1[60].i32[0];
  v20 = a10;
  v20.i32[2] = a1[61].i32[0];
  a11.i32[0] = a1[63].i32[0];
  a11.i32[1] = a1[64].i32[0];
  v21 = a11;
  v21.i32[2] = a1[65].i32[0];
  v22 = a1[4].u8[9];
  if (v22 == 1)
  {
    v23 = vmulq_n_f32(v20, v19);
    v23.i32[3] = 0;
    v24 = vmulq_n_f32(v21, *a7.i32);
    v24.i32[3] = 0;
    v25 = vaddq_f32(v23, v24);
    v26 = vmulq_f32(v25, v25);
    _Q22 = vmulq_n_f32(v25, 1.0 / sqrtf(vadd_f32(*&vextq_s8(v26, v26, 8uLL), vpadd_f32(*v26.i8, *v26.i8)).f32[0]));
    _S6 = _Q22.i32[1];
    if (fabsf(_Q22.f32[2]) <= 0.70711)
    {
      v42 = vmuls_lane_f32(_Q22.f32[1], *_Q22.f32, 1) + (_Q22.f32[0] * _Q22.f32[0]);
      v43 = 1.0 / sqrtf(v42);
      *&v39 = -(_Q22.f32[1] * v43);
      v34 = v43 * _Q22.f32[0];
      v199.i32[0] = v39;
      v199.f32[1] = v43 * _Q22.f32[0];
      v199.i32[2] = 0;
      v36 = -(_Q22.f32[2] * (v43 * _Q22.f32[0]));
      v37 = _Q22.f32[2] * *&v39;
      v198.f32[0] = v36;
      v198.f32[1] = _Q22.f32[2] * *&v39;
      v38 = v42 * v43;
      v198.f32[2] = v42 * v43;
      v35 = 0.0;
    }

    else
    {
      __asm { FMLA            S16, S6, V22.S[1] }

      v33 = 1.0 / sqrtf(_S16);
      v199.i32[0] = 0;
      v34 = -(_Q22.f32[2] * v33);
      v35 = vmuls_lane_f32(v33, *_Q22.f32, 1);
      *(v199.i64 + 4) = __PAIR64__(LODWORD(v35), LODWORD(v34));
      v36 = _S16 * v33;
      v37 = -(_Q22.f32[0] * v35);
      v198.f32[0] = _S16 * v33;
      v198.f32[1] = v37;
      v38 = v34 * _Q22.f32[0];
      v198.f32[2] = v34 * _Q22.f32[0];
      v39 = 0;
    }
  }

  else
  {
    v39 = a1[59].i32[1];
    v34 = a1[60].f32[1];
    v35 = a1[61].f32[1];
    v40.i64[0] = __PAIR64__(LODWORD(v34), v39);
    v40.i64[1] = LODWORD(v35);
    v36 = a1[59].f32[2];
    v37 = a1[60].f32[2];
    v38 = a1[61].f32[2];
    v41.i64[0] = __PAIR64__(LODWORD(v37), LODWORD(v36));
    v41.i64[1] = LODWORD(v38);
    v198 = v41;
    v199 = v40;
    _Q22 = v20;
  }

  v44 = a1[66];
  v45 = a1[62];
  v46 = *(a2 + 16);
  *v46 = v39;
  v46[1] = LODWORD(v34);
  v46[2] = LODWORD(v35);
  v47 = 4 * v15;
  v46[v15] = LODWORD(v36);
  v48 = 4 * v15 + 4;
  *(v46 + v48) = LODWORD(v37);
  v49 = 4 * v15 + 8;
  *(v46 + v49) = v38;
  v50 = *(a2 + 32);
  *v50 = -*&v39;
  v50[1] = -v34;
  v50[2] = -v35;
  v50[v15] = -v36;
  *(v50 + v48) = -v37;
  *(v50 + v49) = -v38;
  v51 = a1[20].i32[2];
  v52 = a1[19].f32[1];
  if ((v51 & 0x80) == 0)
  {
    v52 = v52 * *(a2 + 4);
  }

  *v53.f32 = vext_s8(*a10.f32, *&vextq_s8(v20, v20, 8uLL), 4uLL);
  v53.i64[1] = a10.i64[0];
  *v54.f32 = vext_s8(*a11.f32, *&vextq_s8(v21, v21, 8uLL), 4uLL);
  v54.i64[1] = a11.i64[0];
  v55 = v52 * *a2;
  v56 = vsubq_f32(vmulq_f32(v20, v54), vmulq_f32(v53, v21));
  v57 = vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL);
  v57.i32[3] = 0;
  v58 = v199;
  v59 = vmulq_f32(v199, v57);
  v60 = *(a2 + 48);
  *v60 = v55 * vadd_f32(vpadd_f32(*v59.i8, *v59.i8), *&vextq_s8(v59, v59, 8uLL)).f32[0];
  v61 = v198;
  v62 = vmulq_f32(v198, v57);
  v60[v15] = v55 * vadd_f32(vpadd_f32(*v62.i8, *v62.i8), *&vextq_s8(v62, v62, 8uLL)).f32[0];
  if ((v51 & 0x40) != 0)
  {
    v63 = a1[20].i32[0];
    v64 = *(a2 + 56);
    *v64 = v63;
    v64[v15] = v63;
  }

  v65 = vsubq_f32(v44, v45);
  v66 = a3[3];
  v67 = a4[3];
  v68 = 2 * v15;
  v69 = 3 * v15;
  v197 = 0uLL;
  v70 = &v46[2 * v15];
  v71 = &v46[3 * v15];
  if (v22)
  {
    v72 = vsubq_f32(a1[66], v67);
    v72.i32[3] = 0;
    v73 = vmulq_f32(_Q22, v72);
    v74 = vmulq_n_f32(_Q22, vadd_f32(vpadd_f32(*v73.i8, *v73.i8), *&vextq_s8(v73, v73, 8uLL)).f32[0]);
    v74.i32[3] = 0;
    v75 = vsubq_f32(a1[62], v66);
    v75.i32[3] = 0;
    v76 = vmulq_f32(_Q22, v75);
    v77 = vmulq_n_f32(_Q22, vadd_f32(vpadd_f32(*v76.i8, *v76.i8), *&vextq_s8(v76, v76, 8uLL)).f32[0]);
    v77.i32[3] = 0;
    v78 = vsubq_f32(v75, v77);
    v79 = v78;
    v79.i32[3] = 0;
    v80 = vmulq_n_f32(_Q22, a1[75].f32[0] - a1[72].f32[0]);
    v80.i32[3] = 0;
    v81 = vmulq_n_f32(v78, *a7.i32);
    v82 = vsubq_f32(vaddq_f32(v80, v77), v74);
    v83 = vmulq_n_f32(v82, v19);
    v83.i32[3] = 0;
    v84 = vsubq_f32(v72, v74);
    v85 = vaddq_f32(v79, v83);
    v86 = vsubq_f32(v84, vmulq_n_f32(v82, *a7.i32));
    v86.i32[3] = 0;
    v87 = vmulq_n_f32(v84, v19);
    v87.i32[3] = 0;
    v81.i32[3] = 0;
    v58 = vaddq_f32(v87, v81);
    v88 = vmulq_f32(v58, v58);
    v89 = vadd_f32(vpadd_f32(*v88.i8, *v88.i8), *&vextq_s8(v88, v88, 8uLL)).f32[0];
    if (v89 <= 0.00000011921)
    {
      v58.i32[0] = a1[59].i32[1];
      v58.i32[1] = a1[60].i32[1];
      v58.i32[2] = a1[61].i32[1];
    }

    else
    {
      v58 = vmulq_n_f32(v58, 1.0 / sqrtf(v89));
    }

    v106 = 0;
    v107 = vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL);
    v108 = vsubq_f32(vmulq_f32(_Q22, v107), vmulq_f32(vextq_s8(vextq_s8(_Q22, _Q22, 0xCuLL), _Q22, 8uLL), v58));
    v61 = vextq_s8(vextq_s8(v108, v108, 0xCuLL), v108, 8uLL);
    v61.i32[3] = 0;
    v198 = v61;
    v199 = v58;
    v109 = vextq_s8(vextq_s8(v85, v85, 0xCuLL), v85, 8uLL);
    v110 = vsubq_f32(vmulq_f32(v85, v107), vmulq_f32(v109, v58));
    v111 = vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL);
    v112 = vsubq_f32(vmulq_f32(v107, v86), vmulq_f32(v111, v58));
    v113 = vextq_s8(vextq_s8(v112, v112, 0xCuLL), v112, 8uLL);
    v113.i32[3] = 0;
    v197 = v113;
    v70[2] = v110.i32[0];
    *v70 = vextq_s8(v110, a7, 4uLL).u64[0];
    do
    {
      v50[v68 + v106] = -v197.f32[v106];
      ++v106;
    }

    while (v106 != 3);
    v114 = vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL);
    v115 = vsubq_f32(vmulq_f32(v85, v114), vmulq_f32(v109, v61));
    v116 = vextq_s8(vextq_s8(v115, v115, 0xCuLL), v115, 8uLL);
    v116.i32[3] = 0;
    v117 = vsubq_f32(vmulq_f32(v114, v86), vmulq_f32(v111, v61));
    v118 = vextq_s8(vextq_s8(v117, v117, 0xCuLL), v117, 8uLL);
    v118.i32[3] = 0;
    v197 = v118;
    if (v17 && a1[20].i8[5] == 1)
    {
      v197 = vmulq_n_f32(v118, *a7.i32);
      v116 = vmulq_n_f32(v116, v19);
    }

    v119 = 0;
    *v71 = v116.i64[0];
    v71[2] = v116.i32[2];
    do
    {
      v50[v69 + v119] = -v197.f32[v119];
      ++v119;
    }

    while (v119 != 3);
    v120 = 0;
    v101 = *(a2 + 8);
    v121 = v101 + 4 * v68;
    *v121 = v199.i64[0];
    *(v121 + 8) = v199.i32[2];
    v122 = v101 + 4 * v69;
    *v122 = v198.i64[0];
    *(v122 + 8) = v198.i32[2];
    v104 = *(a2 + 24);
    do
    {
      *(v104 + 4 * v68 + v120 * 4) = -v199.f32[v120];
      ++v120;
    }

    while (v120 != 3);
    for (i = 0; i != 3; ++i)
    {
      *(v104 + 4 * v69 + i * 4) = -v198.f32[i];
    }

    v91 = 0uLL;
  }

  else
  {
    v90 = 0;
    v91 = vsubq_f32(v67, v66);
    v91.i32[3] = 0;
    v92 = vextq_s8(vextq_s8(v91, v91, 0xCuLL), v91, 8uLL);
    v93 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v58, v58, 0xCuLL), v58, 8uLL), v91), vmulq_f32(v58, v92));
    v94 = vextq_s8(vextq_s8(v93, v93, 0xCuLL), v93, 8uLL);
    v94.i32[3] = 0;
    v196 = v94;
    do
    {
      *&v70[v90] = v19 * *&v196.i32[v90];
      ++v90;
    }

    while (v90 != 3);
    for (j = 0; j != 3; ++j)
    {
      v50[v68 + j] = *a7.i32 * *&v196.i32[j];
    }

    v96 = 0;
    v97 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v61, v61, 0xCuLL), v61, 8uLL), v91), vmulq_f32(v61, v92));
    v98 = vextq_s8(vextq_s8(v97, v97, 0xCuLL), v97, 8uLL);
    v98.i32[3] = 0;
    v196 = v98;
    do
    {
      *&v71[v96] = v19 * *&v196.i32[v96];
      ++v96;
    }

    while (v96 != 3);
    for (k = 0; k != 3; ++k)
    {
      v50[v69 + k] = *a7.i32 * *&v196.i32[k];
    }

    v100 = 0;
    v101 = *(a2 + 8);
    v102 = v101 + 4 * v68;
    *v102 = v199.i64[0];
    *(v102 + 8) = v199.i32[2];
    v103 = v101 + 4 * v69;
    *v103 = v198.i64[0];
    *(v103 + 8) = v198.i32[2];
    v104 = *(a2 + 24);
    do
    {
      *(v104 + 4 * v68 + v100 * 4) = -v199.f32[v100];
      ++v100;
    }

    while (v100 != 3);
    for (m = 0; m != 3; ++m)
    {
      *(v104 + 4 * v69 + m * 4) = -v198.f32[m];
    }

    v86 = 0uLL;
    v85 = 0uLL;
  }

  v65.i32[3] = 0;
  v124 = a1[18].f32[1];
  if ((v51 & 0x20) == 0)
  {
    v124 = v124 * *(a2 + 4);
  }

  v125 = v124 * *a2;
  v126 = vmulq_f32(v58, v65);
  v60[v68] = v125 * vadd_f32(vpadd_f32(*v126.i8, *v126.i8), *&vextq_s8(v126, v126, 8uLL)).f32[0];
  v127 = vmulq_f32(v61, v65);
  v60[v69] = v125 * vadd_f32(vpadd_f32(*v127.i8, *v127.i8), *&vextq_s8(v127, v127, 8uLL)).f32[0];
  if ((v51 & 0x10) != 0)
  {
    v128 = a1[19].i32[0];
    v129 = *(a2 + 56);
    *(v129 + 4 * v68) = v128;
    *(v129 + 4 * v69) = v128;
  }

  v130 = a1[20].u8[4];
  v131 = _Q22.f32[2];
  if (v130 == 1)
  {
    v132 = v16 * a1[72].f32[0];
    v133 = v132 <= 0.0;
    v134 = a1[76].u8[0];
  }

  else
  {
    v134 = a1[76].u8[0];
    if (v134 != 1)
    {
      v154 = 4;
      goto LABEL_92;
    }

    v133 = 0;
    v132 = 0.0;
  }

  v135 = v47;
  v136 = v47;
  *(v101 + v136 * 4) = _Q22.i64[0];
  v137 = (4 * v15) | 2;
  *(v101 + 4 * v137) = _Q22.i32[2];
  *(v104 + v136 * 4) = vneg_f32(*_Q22.f32);
  *(v104 + 4 * v137) = -_Q22.f32[2];
  if (v22)
  {
    if (v17)
    {
      goto LABEL_57;
    }

    v138.i64[0] = vextq_s8(_Q22, _Q22, 4uLL).u64[0];
    v138.i64[1] = _Q22.i64[0];
    v139 = vmulq_f32(v138, v85);
    v140 = vsubq_f32(vmulq_f32(v138, v86), vmulq_f32(_Q22, vextq_s8(vextq_s8(v86, v86, 0xCuLL), v86, 8uLL)));
    v141 = vextq_s8(vextq_s8(v140, v140, 0xCuLL), v140, 8uLL);
    v141.i32[3] = 0;
    v142 = vsubq_f32(v139, vmulq_f32(_Q22, vextq_s8(vextq_s8(v85, v85, 0xCuLL), v85, 8uLL)));
    *&v46[v136] = vextq_s8(v142, v142, 4uLL).u64[0];
    v46[v137] = v142.i32[0];
    v197 = v141;
    *&v50[v136] = vneg_f32(*v141.i8);
    v143 = -*&v141.i32[2];
  }

  else
  {
    v144 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(_Q22, _Q22, 0xCuLL), _Q22, 8uLL), v91), vmulq_f32(_Q22, vextq_s8(vextq_s8(v91, v91, 0xCuLL), v91, 8uLL)));
    v145 = vextq_s8(v144, v144, 4uLL).u64[0];
    *&v46[v136] = vmul_n_f32(v145, v19);
    *&v46[v137] = v19 * *v144.i32;
    *&v50[v136] = vmul_n_f32(v145, *a7.i32);
    v143 = *a7.i32 * *v144.i32;
  }

  v50[v137] = v143;
LABEL_57:
  v146 = a1[13].f32[1];
  v147 = a1[13].f32[2];
  v60[v135] = 0.0;
  v148 = *(a2 + 64);
  v149 = *(a2 + 72);
  *(v148 + 4 * v135) = 0;
  *(v149 + 4 * v135) = 0;
  if (v146 == v147)
  {
    v150 = v130;
  }

  else
  {
    v150 = 0;
  }

  v151 = (a2 + 4);
  if ((v51 & 0x200) != 0)
  {
    v151 = &a1[16].f32[1];
  }

  v152 = *v151;
  if (v134 && (v150 & 1) == 0)
  {
    v194 = _Q22;
    if (v51)
    {
      *(*(a2 + 56) + 4 * v135) = a1[15].i32[0];
    }

    v153 = sub_1AFDA1A10(a1[75].f32[0], a1[13].f32[1], a1[13].f32[2], a1[76].f32[1], v152 * *a2);
    v60 = *(a2 + 48);
    v60[v135] = v60[v135] + (-(v16 * v153) * a1[76].f32[1]);
    v148 = *(a2 + 64);
    v149 = *(a2 + 72);
    *(v148 + 4 * v135) = *(v148 + 4 * v135) - (a1[76].f32[2] * *a2);
    *(v149 + 4 * v135) = *(v149 + 4 * v135) + (a1[76].f32[2] * *a2);
    _Q22 = v194;
  }

  if (!v130)
  {
    goto LABEL_91;
  }

  v60[v135] = v60[v135] + ((v152 * *a2) * v132);
  if (a1[20].i8[9])
  {
    *(*(a2 + 56) + 4 * v135) = a1[17].i32[0];
  }

  if (v146 == v147)
  {
    *(v148 + 4 * v135) = -8388609;
LABEL_76:
    *(v149 + 4 * v135) = 2139095039;
    goto LABEL_77;
  }

  if (!v133)
  {
    *(v148 + 4 * v135) = 0;
    goto LABEL_76;
  }

  *(v148 + 4 * v135) = -8388609;
  *(v149 + 4 * v135) = 0;
LABEL_77:
  v155 = a1[16].f32[3];
  if ((1.0 - v155) < 0.0 || (1.0 - v155) > 0.0)
  {
    v157 = vmulq_f32(_Q22, *a5);
    v158 = vmulq_f32(_Q22, *a6);
    v159 = v16 * vsub_f32(vadd_f32(vpadd_f32(*v157.i8, *v157.i8), *&vextq_s8(v157, v157, 8uLL)), vadd_f32(vpadd_f32(*v158.i8, *v158.i8), *&vextq_s8(v158, v158, 8uLL))).f32[0];
    v156 = v60[v135];
    v160 = -(vabds_f32(1.0, v155) * v159);
    if (v133)
    {
      if (v159 >= 0.0 || v160 <= v156)
      {
        goto LABEL_90;
      }
    }

    else if (v159 <= 0.0 || v160 >= v156)
    {
      goto LABEL_90;
    }

    v60[v135] = v160;
    v156 = v160;
  }

  else
  {
    v156 = v60[v135];
  }

LABEL_90:
  v60[v135] = a1[16].f32[1] * v156;
LABEL_91:
  v154 = 5;
LABEL_92:
  v163 = a1[20].u8[5];
  if (v163 == 1)
  {
    v164 = a1[75].f32[2];
    v165 = v164 > 0.0;
    v166 = a1[77].u8[0];
  }

  else
  {
    v166 = a1[77].u8[0];
    if (v166 != 1)
    {
      return;
    }

    v165 = 0;
    v164 = 0.0;
  }

  v167 = *(a2 + 40) * v154;
  v168 = *(a2 + 16);
  v169 = 4 * v167;
  *(v168 + v169) = _Q22.i64[0];
  v170 = 4 * v167 + 8;
  *(v168 + v170) = _Q22.i32[2];
  v171 = *(a2 + 32);
  *(v171 + v169) = vneg_f32(*_Q22.f32);
  *(v171 + v170) = -v131;
  v172 = a1[13].f32[3];
  v173 = a1[14].f32[0];
  if (v172 == v173)
  {
    v174 = v163;
  }

  else
  {
    v174 = 0;
  }

  v175 = a1[20].i32[2];
  v176 = (a2 + 4);
  if ((v175 & 0x800) != 0)
  {
    v176 = &a1[17].f32[1];
  }

  v177 = *v176;
  if (v166 && (v174 & 1) == 0)
  {
    v195 = _Q22;
    if ((v175 & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v167) = a1[16].i32[0];
      v179 = a1[13].f32[3];
      v178 = a1[14].f32[0];
    }

    else
    {
      v178 = a1[14].f32[0];
      v179 = a1[13].f32[3];
    }

    v180 = sub_1AFDA1A10(a1[75].f32[1], v179, v178, a1[77].f32[1], v177 * *a2);
    v60 = *(a2 + 48);
    v60[v167] = v180 * a1[77].f32[1];
    v181 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v167) = -(a1[77].f32[2] * *a2);
    *(v181 + 4 * v167) = a1[77].f32[2] * *a2;
    _Q22 = v195;
  }

  if (v163)
  {
    v60[v167] = v60[v167] + ((v177 * *a2) * v164);
    if ((a1[20].i8[9] & 4) != 0)
    {
      *(*(a2 + 56) + 4 * v167) = a1[18].i32[0];
    }

    v182 = -3.4028e38;
    v183 = 0.0;
    if (v165)
    {
      v184 = 0.0;
    }

    else
    {
      v184 = -3.4028e38;
    }

    if (v172 != v173)
    {
      v182 = v184;
    }

    if (v172 == v173 || v165)
    {
      v183 = 3.4028e38;
    }

    v185 = *(a2 + 72);
    *(*(a2 + 64) + 4 * v167) = v182;
    *(v185 + 4 * v167) = v183;
    v186 = a1[17].f32[3];
    if ((1.0 - v186) < 0.0 || (1.0 - v186) > 0.0)
    {
      v188 = vmulq_f32(_Q22, *(a1[2].i64[1] + 368));
      v189 = vmulq_f32(_Q22, *(a1[3].i64[0] + 368));
      v190 = vsub_f32(vadd_f32(vpadd_f32(*v188.i8, *v188.i8), *&vextq_s8(v188, v188, 8uLL)), vadd_f32(vpadd_f32(*v189.i8, *v189.i8), *&vextq_s8(v189, v189, 8uLL))).f32[0];
      v187 = v60[v167];
      v191 = -(vabds_f32(1.0, v186) * v190);
      if (v165)
      {
        if (v190 >= 0.0 || v191 <= v187)
        {
          goto LABEL_130;
        }
      }

      else if (v190 <= 0.0 || v191 >= v187)
      {
        goto LABEL_130;
      }

      v60[v167] = v191;
      v187 = v191;
    }

    else
    {
      v187 = v60[v167];
    }

LABEL_130:
    v60[v167] = a1[17].f32[1] * v187;
  }
}

uint64_t sub_1AFDA1618(uint64_t result, int a2, unsigned int a3, float a4)
{
  switch(a2)
  {
    case 4:
      if (a3 <= 0)
      {
        *(result + 272) = a4;
        v4 = 256;
      }

      else if (a3 > 2)
      {
        if (a3 == 3)
        {
          *(result + 288) = a4;
          v4 = 1024;
        }

        else
        {
          if (a3 > 5)
          {
            return result;
          }

          *(result + 320) = a4;
          v4 = 64;
        }
      }

      else
      {
        *(result + 304) = a4;
        v4 = 16;
      }

      break;
    case 3:
      if (a3 <= 0)
      {
        *(result + 240) = a4;
        v4 = 1;
      }

      else
      {
        if (a3 != 3)
        {
          return result;
        }

        *(result + 256) = a4;
        v4 = 4;
      }

      break;
    case 2:
      if (a3 <= 0)
      {
        *(result + 260) = a4;
        v4 = 512;
      }

      else if (a3 > 2)
      {
        if (a3 == 3)
        {
          *(result + 276) = a4;
          v4 = 2048;
        }

        else
        {
          if (a3 > 5)
          {
            return result;
          }

          *(result + 308) = a4;
          v4 = 128;
        }
      }

      else
      {
        *(result + 292) = a4;
        v4 = 32;
      }

      break;
    default:
      return result;
  }

  *(result + 328) |= v4;
  return result;
}

float sub_1AFDA1704(float *a1, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 4:
      if (a3 <= 0)
      {
        return a1[68];
      }

      if (a3 <= 2)
      {
        return a1[76];
      }

      if (a3 == 3)
      {
        return a1[72];
      }

      if (a3 <= 5)
      {
        return a1[80];
      }

      break;
    case 3:
      if (a3 <= 0)
      {
        return a1[60];
      }

      if (a3 == 3)
      {
        return a1[64];
      }

      break;
    case 2:
      if (a3 <= 0)
      {
        return a1[65];
      }

      if (a3 <= 2)
      {
        return a1[73];
      }

      if (a3 == 3)
      {
        return a1[69];
      }

      if (a3 <= 5)
      {
        return a1[77];
      }

      break;
  }

  return 3.4028e38;
}

const char *sub_1AFDA17DC(uint64_t a1, int32x4_t *a2, uint64_t a3)
{
  sub_1AFDA1AA0(a1, a2, a3);
  v5 = 0;
  v6 = a1 + 80;
  v7 = a2 + 4;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v7->i32[i] = *(v6 + i * 4);
    }

    ++v5;
    v6 += 16;
    ++v7;
  }

  while (v5 != 3);
  for (j = 0; j != 4; ++j)
  {
    a2[7].i32[j] = *(a1 + 128 + j * 4);
  }

  v10 = 0;
  v11 = a1 + 144;
  v12 = a2 + 8;
  do
  {
    for (k = 0; k != 4; ++k)
    {
      v12->i32[k] = *(v11 + k * 4);
    }

    ++v10;
    v11 += 16;
    ++v12;
  }

  while (v10 != 3);
  for (m = 0; m != 4; ++m)
  {
    a2[11].i32[m] = *(a1 + 192 + m * 4);
  }

  a2[12] = vrev64q_s32(*(a1 + 212));
  v15 = *(a1 + 73);
  a2[13].i32[0] = *(a1 + 208);
  a2[13].i32[1] = v15;
  return "btSliderConstraintData";
}

uint64_t sub_1AFDA18D4(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *a1 = &unk_1F2572918;
  *(a1 + 12) = -1;
  *(a1 + 24) = 2139095039;
  *(a1 + 28) = 1;
  *(a1 + 32) = -1;
  *(a1 + 40) = a3;
  sub_1AFDA195C();
  *(a1 + 48) = &unk_1EB6C23C0;
  *(a1 + 56) = 0x3E99999A00000000;
  *(a1 + 64) = 0;
  return a1;
}

void *sub_1AFDA195C()
{
  if ((atomic_load_explicit(qword_1EB6C23B0, memory_order_acquire) & 1) == 0)
  {
    sub_1AF0FA62C();
  }

  v1[0] = 0;
  v1[1] = 0;
  sub_1AFDA66E8(&unk_1EB6C23C0, v1, 0.0);
  return &unk_1EB6C23C0;
}

double sub_1AFDA19B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = a2;
  *a1 = &unk_1F2572918;
  *(a1 + 12) = -1;
  *(a1 + 24) = 2139095039;
  *(a1 + 28) = 1;
  *(a1 + 32) = -1;
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  result = 0.000000381469818;
  *(a1 + 56) = 0x3E99999A00000000;
  *(a1 + 64) = 0;
  return result;
}

float sub_1AFDA1A10(float a1, float a2, float a3, float a4, float a5)
{
  v5 = 1.0;
  if (a2 <= a3)
  {
    v5 = 0.0;
    if (a2 != a3)
    {
      v7 = a4 / a5;
      if (v7 >= 0.0)
      {
        if (v7 <= 0.0)
        {
          return v5;
        }

        if (a1 > a3 || (a3 - v7) >= a1)
        {
          if (a1 <= a3)
          {
            return 1.0;
          }

          else
          {
            return 0.0;
          }
        }

        v8 = a3 - a1;
      }

      else
      {
        if (a1 < a2 || (a2 - v7) <= a1)
        {
          if (a1 >= a2)
          {
            return 1.0;
          }

          else
          {
            return 0.0;
          }
        }

        v8 = a2 - a1;
      }

      return v8 / v7;
    }
  }

  return v5;
}

const char *sub_1AFDA1AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = (*(*a3 + 56))(a3, *(a1 + 40));
  *(a2 + 8) = (*(*a3 + 56))(a3, *(a1 + 48));
  v6 = (*(*a3 + 80))(a3, a1);
  v7 = (*(*a3 + 56))(a3, v6);
  *(a2 + 16) = v7;
  if (v7)
  {
    (*(*a3 + 96))(a3, v6);
  }

  *(a2 + 24) = *(a1 + 8);
  *(a2 + 36) = *(a1 + 29);
  *(a2 + 52) = *(a1 + 32);
  *(a2 + 56) = *(a1 + 24);
  *(a2 + 60) = *(a1 + 28);
  *(a2 + 28) = *(a1 + 12);
  *(a2 + 40) = *(a1 + 56);
  *(a2 + 48) = 0;
  v8 = *(a1 + 40);
  v9 = *(v8 + 548);
  if (v9 >= 1)
  {
    v10 = *(v8 + 560);
    do
    {
      if (*v10 == a1)
      {
        *(a2 + 48) = 1;
      }

      ++v10;
      --v9;
    }

    while (v9);
  }

  v11 = *(a1 + 48);
  v12 = *(v11 + 548);
  if (v12 >= 1)
  {
    v13 = *(v11 + 560);
    do
    {
      if (*v13 == a1)
      {
        *(a2 + 48) = 1;
      }

      ++v13;
      --v12;
    }

    while (v12);
  }

  return "btTypedConstraintData";
}

void sub_1AFDA1C70(uint64_t a1, float a2)
{
  *(a1 + 20) = 0;
  v2 = (a1 + 20);
  *(a1 + 28) = 0;
  v3 = *(a1 + 4);
  if (v3 >= 0.0)
  {
    v5 = fmodf(a2 - *a1, 6.2832);
    if (v5 >= -3.1416)
    {
      if (v5 > 3.1416)
      {
        v5 = v5 + -6.2832;
      }
    }

    else
    {
      v5 = v5 + 6.2832;
    }

    if (v5 >= -v3)
    {
      if (v5 <= v3)
      {
        return;
      }

      *(a1 + 28) = 1;
      v6 = v3 - v5;
      __asm { FMOV            V0.2S, #-1.0 }
    }

    else
    {
      *(a1 + 28) = 1;
      v6 = -(v3 + v5);
      __asm { FMOV            V0.2S, #1.0 }
    }

    *&_D0 = v6;
    *v2 = _D0;
  }
}

void sub_1AFDA1E10(uint64_t a1)
{
  *a1 = &unk_1F2572C80;
  v2 = *(a1 + 560);
  if (v2 && *(a1 + 568) == 1)
  {
    sub_1AFDA72A0(v2);
  }

  *(a1 + 568) = 1;
  *(a1 + 560) = 0;
  *(a1 + 548) = 0;

  nullsub_106();
}

uint64_t sub_1AFDA1E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AFDA1FF0(a1, a2, a3);
  v8 = 0;
  *v9 = &unk_1F2572980;
  *(v9 + 292) = 0;
  *(v9 + 324) = 0;
  *(v9 + 380) = 0;
  *(v9 + 420) = 0;
  *(v9 + 256) = 1;
  *(v9 + 248) = 0;
  *(v9 + 236) = 0;
  *(v9 + 240) = 0;
  *(v9 + 264) = 0;
  *(v9 + 272) = a4;
  *(v9 + 312) = 1;
  *(v9 + 304) = 0;
  *(v9 + 344) = 1;
  *(v9 + 336) = 0;
  *(v9 + 352) = xmmword_1AFEAC400;
  *(v9 + 368) = 0;
  *(v9 + 374) = 0;
  *(v9 + 400) = 1;
  *(v9 + 392) = 0;
  *(v9 + 408) = 0;
  *(v9 + 440) = 1;
  *(v9 + 432) = 0;
  if (!a4)
  {
    v10 = sub_1AFDA7294(320, 16);
    sub_1AFD9C228(v10);
    *(a1 + 272) = v11;
    v8 = 1;
  }

  *(a1 + 373) = v8;
  v12 = sub_1AFDA7294(112, 16);
  *(a1 + 280) = sub_1AFD80D08(v12);
  *(a1 + 372) = 1;
  v13 = sub_1AFDA7294(152, 16);
  v14 = *(a1 + 272);
  *v13 = &unk_1F2572C28;
  *(v13 + 8) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = a2;
  *(v13 + 80) = 1;
  *(v13 + 72) = 0;
  *(v13 + 60) = 0;
  *(v13 + 112) = 1;
  *(v13 + 104) = 0;
  *(v13 + 92) = 0;
  *(v13 + 144) = 1;
  *(v13 + 136) = 0;
  *(v13 + 124) = 0;
  *(a1 + 264) = v13;
  return a1;
}

double sub_1AFDA1FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AFD74004(a1, a2, a3);
  *v3 = &unk_1F2572B00;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 144) = xmmword_1AFEAC410;
  *(v3 + 160) = 0xA00000000;
  *(v3 + 184) = 0x100000000;
  *(v3 + 168) = xmmword_1AFEAC420;
  *(v3 + 192) = xmmword_1AFEAC430;
  *(v3 + 208) = 0x200000104;
  *(v3 + 216) = 128;
  result = 5.28028251e237;
  *(v3 + 220) = 0x7149F2CA42C80000;
  *(v3 + 228) = 1065353216;
  return result;
}

uint64_t sub_1AFDA208C(uint64_t a1)
{
  *a1 = &unk_1F2572980;
  if (*(a1 + 372) == 1)
  {
    (***(a1 + 280))(*(a1 + 280));
    sub_1AFDA72A0(*(a1 + 280));
  }

  v2 = *(a1 + 264);
  if (v2)
  {
    (**v2)(v2);
    sub_1AFDA72A0(*(a1 + 264));
  }

  if (*(a1 + 373) == 1)
  {
    (***(a1 + 272))(*(a1 + 272));
    sub_1AFDA72A0(*(a1 + 272));
  }

  v3 = *(a1 + 432);
  if (v3 && *(a1 + 440) == 1)
  {
    sub_1AFDA72A0(v3);
  }

  *(a1 + 440) = 1;
  *(a1 + 432) = 0;
  *(a1 + 420) = 0;
  v4 = *(a1 + 392);
  if (v4 && *(a1 + 400) == 1)
  {
    sub_1AFDA72A0(v4);
  }

  *(a1 + 400) = 1;
  *(a1 + 392) = 0;
  *(a1 + 380) = 0;
  v5 = *(a1 + 336);
  if (v5 && *(a1 + 344) == 1)
  {
    sub_1AFDA72A0(v5);
  }

  *(a1 + 344) = 1;
  *(a1 + 336) = 0;
  *(a1 + 324) = 0;
  v6 = *(a1 + 304);
  if (v6 && *(a1 + 312) == 1)
  {
    sub_1AFDA72A0(v6);
  }

  *(a1 + 312) = 1;
  *(a1 + 304) = 0;
  *(a1 + 292) = 0;
  v7 = *(a1 + 248);
  if (v7 && *(a1 + 256) == 1)
  {
    sub_1AFDA72A0(v7);
  }

  *(a1 + 256) = 1;
  *(a1 + 248) = 0;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;

  return sub_1AFD74080(a1);
}

void sub_1AFDA2258(uint64_t a1)
{
  v1 = sub_1AFDA208C(a1);

  sub_1AFDA72A0(v1);
}

void sub_1AFDA2280(uint64_t result, __n128 a2)
{
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v3 = a2.n128_u32[0];
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*(result + 24) + 8 * i);
      if (v6)
      {
        v7 = (*(v6 + 264) & 2) == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7 && *(v6 + 244) != 2 && (*(v6 + 232) & 2) != 0)
      {
        a2.n128_u32[0] = v3;
        a2 = sub_1AFDA67F8(v6, a2);
        v2 = *(result + 12);
      }
    }
  }
}

uint64_t sub_1AFDA2308(uint64_t a1)
{
  sub_1AFD773A0(a1);
  if ((*(*a1 + 40))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    if (((*(*v2 + 96))(v2) & 0x1800) != 0)
    {
      v3 = (*(*a1 + 208))(a1);
      if (v3 >= 1)
      {
        v4 = v3 + 1;
        do
        {
          v5 = (*(*a1 + 216))(a1, v4 - 2);
          sub_1AFDA2574(a1, v5);
          --v4;
        }

        while (v4 > 1);
      }
    }
  }

  result = (*(*a1 + 40))(a1);
  if (result)
  {
    v7 = (*(*a1 + 40))(a1);
    result = (*(*v7 + 96))(v7);
    if ((result & 0x4003) != 0)
    {
      result = (*(*a1 + 40))(a1);
      if (result)
      {
        v8 = (*(*a1 + 40))(a1);
        result = (*(*v8 + 96))(v8);
        if (result)
        {
          if (*(a1 + 380) >= 1)
          {
            v9 = 0;
            do
            {
              v10 = *(*(a1 + 392) + 8 * v9);
              result = (*(*v10 + 24))(v10, *(a1 + 104));
              ++v9;
            }

            while (v9 < *(a1 + 380));
          }
        }
      }
    }
  }

  return result;
}

void sub_1AFDA2574(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 40))(a1);
  v5 = (*(*v4 + 96))(v4);
  v6 = (*(*a1 + 40))(a1);
  v7 = (*(*v6 + 96))(v6);
  v10 = *(a2 + 60);
  if (*&v10 <= 0.0)
  {
    return;
  }

  v11 = v7;
  v12 = *(a2 + 8);
  if (v12 <= 5)
  {
    switch(v12)
    {
      case 3:
        v230 = xmmword_1AFE20150;
        v231 = xmmword_1AFE20160;
        v232 = xmmword_1AFE20180;
        v72 = *(a2 + 368);
        v73 = *(a2 + 40);
        v74 = vmulq_f32(v72, v73[1]);
        v75 = vmulq_f32(v72, v73[2]);
        v76 = vmulq_f32(v72, v73[3]);
        v76.i32[3] = 0;
        *v74.f32 = vadd_f32(vpadd_f32(*v74.f32, *v75.i8), vzip1_s32(*&vextq_s8(v74, v74, 8uLL), *&vextq_s8(v75, v75, 8uLL)));
        *&v74.u32[2] = vpadd_f32(vpadd_f32(*v76.i8, *&vextq_s8(v76, v76, 8uLL)), 0);
        v233 = vaddq_f32(v74, v73[4]);
        v77 = (*(*a1 + 40))(a1);
        (*(*v77 + 112))(v77, &v230, *&v10);
        v78 = *(a2 + 384);
        v79 = *(a2 + 48);
        v80 = vmulq_f32(v78, v79[1]);
        v81 = vmulq_f32(v78, v79[2]);
        v82 = vmulq_f32(v78, v79[3]);
        v82.i32[3] = 0;
        *v80.f32 = vadd_f32(vpadd_f32(*v80.f32, *v81.i8), vzip1_s32(*&vextq_s8(v80, v80, 8uLL), *&vextq_s8(v81, v81, 8uLL)));
        *&v80.u32[2] = vpadd_f32(vpadd_f32(*v82.i8, *&vextq_s8(v82, v82, 8uLL)), 0);
        v233 = vaddq_f32(v80, v79[4]);
        if ((v5 & 0x800) != 0)
        {
          v83 = (*(*a1 + 40))(a1);
          (*(*v83 + 112))(v83, &v230, *&v10);
        }

        break;
      case 4:
        v84 = *(a2 + 40);
        v85 = v84[1];
        v86 = v84[2];
        v87 = *(a2 + 656);
        v88 = *(a2 + 672);
        v87.i32[3] = 0;
        v88.i32[3] = 0;
        v89 = *(a2 + 688);
        v90 = *(a2 + 704);
        v89.i32[3] = 0;
        v91 = v84[3];
        v92 = v84[4];
        v93 = vmlaq_lane_f32(vmulq_n_f32(v87, v91.f32[0]), v88, *v91.f32, 1);
        v94 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, v86.f32[0]), v88, *v86.f32, 1), v89, v86, 2);
        v95 = vmulq_f32(v85, v90);
        v96 = vmulq_f32(v86, v90);
        v97 = vmulq_f32(v91, v90);
        v97.i32[3] = 0;
        v98 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, v85.f32[0]), v88, *v85.f32, 1), v89, v85, 2);
        *v85.f32 = vadd_f32(vpadd_f32(*v95.i8, *v96.i8), vzip1_s32(*&vextq_s8(v95, v95, 8uLL), *&vextq_s8(v96, v96, 8uLL)));
        *&v85.u32[2] = vpadd_f32(vpadd_f32(*v97.i8, *&vextq_s8(v97, v97, 8uLL)), 0);
        v230 = v98;
        v231 = v94;
        v232 = vmlaq_laneq_f32(v93, v89, v91, 2);
        v233 = vaddq_f32(v92, v85);
        if ((v5 & 0x800) != 0)
        {
          v186 = (*(*a1 + 40))(a1);
          (*(*v186 + 112))(v186, &v230, *&v10);
          v187 = *(a2 + 720);
          v188 = *(a2 + 736);
          v187.i32[3] = 0;
          v188.i32[3] = 0;
          v189 = *(a2 + 48);
          v190 = *(a2 + 752);
          v191 = *(a2 + 768);
          v190.i32[3] = 0;
          v192 = v189[1];
          v193 = v189[2];
          v194 = v189[3];
          v195 = vmlaq_lane_f32(vmulq_n_f32(v187, v194.f32[0]), v188, *v194.f32, 1);
          v196 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, v193.f32[0]), v188, *v193.f32, 1), v190, v193, 2);
          v197 = vmulq_f32(v192, v191);
          v198 = vmulq_f32(v194, v191);
          v198.i32[3] = 0;
          v199 = vmulq_f32(v193, v191);
          v200 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v187, v192.f32[0]), v188, *v192.f32, 1), v190, v192, 2);
          *v188.f32 = vadd_f32(vpadd_f32(*v197.i8, *v199.i8), vzip1_s32(*&vextq_s8(v197, v197, 8uLL), *&vextq_s8(v199, v199, 8uLL)));
          *&v188.u32[2] = vpadd_f32(vpadd_f32(*v198.i8, *&vextq_s8(v198, v198, 8uLL)), 0);
          v201 = vaddq_f32(v189[4], v188);
          v230 = v200;
          v231 = v196;
          v232 = vmlaq_laneq_f32(v195, v190, v194, 2);
          v233 = v201;
          v202 = (*(*a1 + 40))(a1);
          (*(*v202 + 112))(v202, &v230, *&v10);
        }

        else
        {
          v99 = *(a2 + 48);
          v100 = *(a2 + 720);
          v101 = *(a2 + 736);
          v100.i32[3] = 0;
          v101.i32[3] = 0;
          v102 = v99[1];
          v103 = v99[2];
          v104 = *(a2 + 752);
          v105 = *(a2 + 768);
          v104.i32[3] = 0;
          v106 = v99[3];
          v107 = v99[4];
          v108 = vmlaq_lane_f32(vmulq_n_f32(v100, v106.f32[0]), v101, *v106.f32, 1);
          v109 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, v103.f32[0]), v101, *v103.f32, 1), v104, v103, 2);
          v110 = vmulq_f32(v102, v105);
          v111 = vmulq_f32(v103, v105);
          v112 = vmulq_f32(v106, v105);
          v112.i32[3] = 0;
          v113 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, v102.f32[0]), v101, *v102.f32, 1), v104, v102, 2);
          *v101.f32 = vadd_f32(vpadd_f32(*v110.i8, *v111.i8), vzip1_s32(*&vextq_s8(v110, v110, 8uLL), *&vextq_s8(v111, v111, 8uLL)));
          *&v101.u32[2] = vpadd_f32(vpadd_f32(*v112.i8, *&vextq_s8(v112, v112, 8uLL)), 0);
          v230 = v113;
          v231 = v109;
          v232 = vmlaq_laneq_f32(v108, v104, v106, 2);
          v233 = vaddq_f32(v107, v101);
        }

        sub_1AFDA1DA8((a2 + 792));
        v204 = v203;
        sub_1AFDA1D40((a2 + 792));
        if (v204 != v205 && (v11 & 0x1000) != 0)
        {
          if (v204 <= v205)
          {
            v206 = v205;
          }

          else
          {
            v204 = 0.0;
            v206 = 6.2832;
          }

          v229.i64[0] = __PAIR64__(v231.u32[2], v230.u32[2]);
          v229.i64[1] = v232.u32[2];
          v228.i64[0] = __PAIR64__(v231.u32[0], v230.u32[0]);
          v228.i64[1] = v232.u32[0];
          v207 = (*(*a1 + 40))(a1);
          v227 = 0uLL;
          v208.n128_u32[0] = 10.0;
          v209.n128_u32[0] = v10;
          v210.n128_u32[0] = v10;
          v211.n128_f32[0] = v204;
          v212.n128_f32[0] = v206;
          (*(*v207 + 120))(v209, v210, v211, v212, v208);
        }

        break;
      case 5:
        v13 = *(a2 + 40);
        v14 = v13[1];
        v15 = v13[2];
        v16 = *(a2 + 368);
        v17 = *(a2 + 384);
        v16.i32[3] = 0;
        v17.i32[3] = 0;
        v18 = *(a2 + 400);
        v19 = *(a2 + 416);
        v18.i32[3] = 0;
        v20 = v13[3];
        v21 = v13[4];
        v22 = vmlaq_lane_f32(vmulq_n_f32(v16, v20.f32[0]), v17, *v20.f32, 1);
        v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v15.f32[0]), v17, *v15.f32, 1), v18, v15, 2);
        v24 = vmulq_f32(v14, v19);
        v25 = vmulq_f32(v15, v19);
        v26 = vmulq_f32(v20, v19);
        v26.i32[3] = 0;
        v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, v14.f32[0]), v17, *v14.f32, 1), v18, v14, 2);
        *v14.f32 = vadd_f32(vpadd_f32(*v24.i8, *v25.i8), vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)));
        *&v14.u32[2] = vpadd_f32(vpadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL)), 0);
        v230 = v27;
        v231 = v23;
        v232 = vmlaq_laneq_f32(v22, v18, v20, 2);
        v233 = vaddq_f32(v21, v14);
        if ((v5 & 0x800) != 0)
        {
          v150 = (*(*a1 + 40))(a1);
          (*(*v150 + 112))(v150, &v230, *&v10);
          v151 = *(a2 + 432);
          v152 = *(a2 + 448);
          v151.i32[3] = 0;
          v152.i32[3] = 0;
          v153 = *(a2 + 48);
          v154 = *(a2 + 464);
          v155 = *(a2 + 480);
          v154.i32[3] = 0;
          v156 = v153[1];
          v157 = v153[2];
          v158 = v153[3];
          v159 = vmlaq_lane_f32(vmulq_n_f32(v151, v158.f32[0]), v152, *v158.f32, 1);
          v160 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, v157.f32[0]), v152, *v157.f32, 1), v154, v157, 2);
          v161 = vmulq_f32(v156, v155);
          v162 = vmulq_f32(v158, v155);
          v162.i32[3] = 0;
          v163 = vmulq_f32(v157, v155);
          v164 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v151, v156.f32[0]), v152, *v156.f32, 1), v154, v156, 2);
          *v152.f32 = vadd_f32(vpadd_f32(*v161.i8, *v163.i8), vzip1_s32(*&vextq_s8(v161, v161, 8uLL), *&vextq_s8(v163, v163, 8uLL)));
          *&v152.u32[2] = vpadd_f32(vpadd_f32(*v162.i8, *&vextq_s8(v162, v162, 8uLL)), 0);
          v165 = vaddq_f32(v153[4], v152);
          v230 = v164;
          v231 = v160;
          v232 = vmlaq_laneq_f32(v159, v154, v158, 2);
          v233 = v165;
          v166 = (*(*a1 + 40))(a1);
          (*(*v166 + 112))(v166, &v230, *&v10);
        }

        else
        {
          v28 = *(a2 + 48);
          v29 = *(a2 + 432);
          v30 = *(a2 + 448);
          v29.i32[3] = 0;
          v30.i32[3] = 0;
          v31 = v28[1];
          v32 = v28[2];
          v33 = *(a2 + 464);
          v34 = *(a2 + 480);
          v33.i32[3] = 0;
          v35 = v28[3];
          v36 = v28[4];
          v37 = vmlaq_lane_f32(vmulq_n_f32(v29, v35.f32[0]), v30, *v35.f32, 1);
          v38 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v32.f32[0]), v30, *v32.f32, 1), v33, v32, 2);
          v39 = vmulq_f32(v31, v34);
          v40 = vmulq_f32(v32, v34);
          v41 = vmulq_f32(v35, v34);
          v41.i32[3] = 0;
          v42 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, v31.f32[0]), v30, *v31.f32, 1), v33, v31, 2);
          *v30.f32 = vadd_f32(vpadd_f32(*v39.i8, *v40.i8), vzip1_s32(*&vextq_s8(v39, v39, 8uLL), *&vextq_s8(v40, v40, 8uLL)));
          *&v30.u32[2] = vpadd_f32(vpadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)), 0);
          v230 = v42;
          v231 = v38;
          v232 = vmlaq_laneq_f32(v37, v33, v35, 2);
          v233 = vaddq_f32(v36, v30);
        }

        if ((v11 & 0x1000) != 0)
        {
          v229 = xmmword_1AFE47E50;
          sub_1AFD9940C(a2, &v228, 6.0868, *&v10);
          v167 = 0;
          v168 = vmulq_f32(v230, v228);
          v169 = vmulq_f32(v228, v231);
          v170 = vmulq_f32(v228, v232);
          v170.i32[3] = 0;
          *v168.f32 = vadd_f32(vpadd_f32(*v168.f32, *v169.i8), vzip1_s32(*&vextq_s8(v168, v168, 8uLL), *&vextq_s8(v169, v169, 8uLL)));
          *&v168.u32[2] = vpadd_f32(vpadd_f32(*v170.i8, *&vextq_s8(v170, v170, 8uLL)), 0);
          v228 = vaddq_f32(v168, v233);
          do
          {
            sub_1AFD9940C(a2, &v227, (v167 * 6.2832) * 0.03125, *&v10);
            v171 = vmulq_f32(v230, v227);
            v172 = vmulq_f32(v227, v231);
            v173 = vmulq_f32(v227, v232);
            v173.i32[3] = 0;
            *v171.f32 = vadd_f32(vpadd_f32(*v171.f32, *v172.i8), vzip1_s32(*&vextq_s8(v171, v171, 8uLL), *&vextq_s8(v172, v172, 8uLL)));
            *&v171.u32[2] = vpadd_f32(vpadd_f32(*v173.i8, *&vextq_s8(v173, v173, 8uLL)), 0);
            v227 = vaddq_f32(v171, v233);
            v174 = (*(*a1 + 40))(a1);
            (*(*v174 + 16))(v174, &v228, &v227, &v229);
            if ((v167 & 3) == 0)
            {
              v175 = (*(*a1 + 40))(a1);
              (*(*v175 + 16))(v175, &v233, &v227, &v229);
            }

            v228 = v227;
            ++v167;
          }

          while (v167 != 32);
          v176 = *(a2 + 520);
          v177 = *(a2 + 580);
          v178 = *(a2 + 48);
          if (v178[24].f32[0] <= 0.0)
          {
            v178 = *(a2 + 40);
            v180 = v178[1];
            v179 = v178[2];
            v181 = v178[3];
            v182 = *(a2 + 368);
            v183 = *(a2 + 384);
            v182.i32[3] = 0;
            v183.i32[3] = 0;
            v185 = *(a2 + 400);
            v184 = *(a2 + 416);
          }

          else
          {
            v180 = v178[1];
            v179 = v178[2];
            v181 = v178[3];
            v182 = *(a2 + 432);
            v183 = *(a2 + 448);
            v182.i32[3] = 0;
            v183.i32[3] = 0;
            v185 = *(a2 + 464);
            v184 = *(a2 + 480);
          }

          v185.i32[3] = 0;
          v213 = vmulq_f32(v180, v184);
          v214 = vmulq_f32(v179, v184);
          v215 = vmulq_f32(v181, v184);
          v215.i32[3] = 0;
          *v213.f32 = vadd_f32(vpadd_f32(*v213.f32, *v214.i8), vzip1_s32(*&vextq_s8(v213, v213, 8uLL), *&vextq_s8(v214, v214, 8uLL)));
          *&v213.u32[2] = vpadd_f32(vpadd_f32(*v215.i8, *&vextq_s8(v215, v215, 8uLL)), 0);
          v216 = vaddq_f32(v178[4], v213);
          v230 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v180.f32[0]), v183, *v180.f32, 1), v185, v180, 2);
          v231 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v179.f32[0]), v183, *v179.f32, 1), v185, v179, 2);
          v232 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v182, v181.f32[0]), v183, *v181.f32, 1), v185, v181, 2);
          v233 = v216;
          v227 = v216;
          *v226.i8 = vzip1_s32(*v230.f32, *v231.f32);
          v226.i64[1] = v232.u32[0];
          *(&v225 + 1) = v232.u32[1];
          *&v225 = vzip2_s32(*v230.f32, *v231.f32);
          v217 = (*(*a1 + 40))(a1);
          v220.n128_u32[0] = 10.0;
          v221.n128_u32[0] = v10;
          v222.n128_u32[0] = v10;
          v218.n128_f32[0] = -v177 - v176;
          v219.n128_f32[0] = v176 - v177;
          (*(*v217 + 120))(v221, v222, v218, v219, v220);
        }

        break;
    }

    return;
  }

  if (v12 == 6)
  {
    goto LABEL_11;
  }

  if (v12 != 7)
  {
    if (v12 != 9)
    {
      return;
    }

LABEL_11:
    v43 = *(a2 + 1216);
    v230 = *(a2 + 1200);
    v231 = v43;
    v44 = *(a2 + 1248);
    v232 = *(a2 + 1232);
    v233 = v44;
    if ((v5 & 0x800) != 0)
    {
      v45 = (*(*a1 + 40))(a1);
      (*(*v45 + 112))(v45, &v230, *&v10);
      v46 = *(a2 + 1280);
      v230 = *(a2 + 1264);
      v231 = v46;
      v47 = *(a2 + 1312);
      v232 = *(a2 + 1296);
      v233 = v47;
      v48 = (*(*a1 + 40))(a1);
      (*(*v48 + 112))(v48, &v230, *&v10);
    }

    if ((v11 & 0x1000) != 0)
    {
      v49 = *(a2 + 1216);
      v230 = *(a2 + 1200);
      v231 = v49;
      v50 = *(a2 + 1248);
      v232 = *(a2 + 1232);
      v233 = v50;
      *v229.f32 = vzip1_s32(*&vextq_s8(v230, v230, 8uLL), *&vextq_s8(v49, v49, 8uLL));
      v229.i64[1] = v232.u32[2];
      *v228.f32 = vzip1_s32(*v230.f32, *v49.i8);
      v228.i64[1] = v232.u32[0];
      v51 = *(a2 + 1056);
      v52 = *(a2 + 1060);
      v53 = *(a2 + 1120);
      v54 = *(a2 + 1124);
      v55 = (*(*a1 + 40))(a1);
      v227 = 0uLL;
      v56 = (*(*v55 + 128))(v55, a2 + 1312, &v229, &v228, &v227, *&v10 * 0.9, v51, v52, v53, v54, 10.0);
      v56.i64[0] = __PAIR64__(v231.u32[1], v230.u32[1]);
      v56.i32[2] = v232.i32[1];
      v228 = v56;
      v57 = sub_1AFD99938(a2, 1);
      v58 = sub_1AFD99938(a2, 2);
      v59 = __sincosf_stret(v57);
      v60 = __sincosf_stret(v58);
      v227.f32[0] = (((v59.__cosval * v60.__sinval) * v228.f32[1]) + ((v59.__cosval * v60.__cosval) * v228.f32[0])) - (v59.__sinval * v228.f32[2]);
      v227.f32[1] = (v60.__cosval * v228.f32[1]) - (v60.__sinval * v228.f32[0]);
      v227.f32[2] = (((v59.__sinval * v60.__sinval) * v228.f32[1]) + ((v59.__sinval * v60.__cosval) * v228.f32[0])) + (v59.__cosval * v228.f32[2]);
      v62 = *(a2 + 1280);
      v230 = *(a2 + 1264);
      v61.i64[0] = __PAIR64__(v62.u32[0], v230.u32[0]);
      v231 = v62;
      v63 = *(a2 + 1312);
      v232 = *(a2 + 1296);
      v233 = v63;
      v61.i64[1] = v232.u32[0];
      v62.i64[0] = 0x8000000080000000;
      v62.i64[1] = 0x8000000080000000;
      v226 = veorq_s8(v61, v62);
      v64 = *(a2 + 992);
      v65 = *(a2 + 996);
      if (v64 <= v65)
      {
        if (v64 < v65)
        {
          v140 = (*(*a1 + 40))(a1);
          v225 = 0uLL;
          v141.n128_u32[0] = 10.0;
          v142.n128_u32[0] = v10;
          v143.n128_u32[0] = v10;
          v144.n128_f32[0] = v64;
          v145.n128_f32[0] = v65;
          (*(*v140 + 120))(v142, v143, v144, v145, v141);
        }
      }

      else
      {
        v66 = (*(*a1 + 40))(a1);
        v225 = 0uLL;
        v67.n128_u32[0] = -1068953637;
        v68.n128_u32[0] = 1078530011;
        v69.n128_u32[0] = 10.0;
        v70.n128_u32[0] = v10;
        v71.n128_u32[0] = v10;
        (*(*v66 + 120))(v70, v71, v67, v68, v69);
      }

      v146 = *(a2 + 1216);
      v230 = *(a2 + 1200);
      v231 = v146;
      v147 = *(a2 + 1248);
      v232 = *(a2 + 1232);
      v233 = v147;
      v148 = *(a2 + 784);
      v224 = *(a2 + 800);
      v225 = v148;
      v149 = (*(*a1 + 40))(a1);
      v223[0] = 0;
      v223[1] = 0;
      (*(*v149 + 144))(v149, &v225, &v224, &v230, v223);
    }

    return;
  }

  v114 = *(a2 + 960);
  v230 = *(a2 + 944);
  v231 = v114;
  v115 = *(a2 + 992);
  v232 = *(a2 + 976);
  v233 = v115;
  if ((v5 & 0x800) != 0)
  {
    v116 = (*(*a1 + 40))(a1);
    (*(*v116 + 112))(v116, &v230, *&v10);
    v117 = *(a2 + 1024);
    v230 = *(a2 + 1008);
    v231 = v117;
    v118 = *(a2 + 1056);
    v232 = *(a2 + 1040);
    v233 = v118;
    v119 = (*(*a1 + 40))(a1);
    (*(*v119 + 112))(v119, &v230, *&v10);
  }

  if ((v11 & 0x1000) != 0)
  {
    v120 = (a2 + 944);
    v121 = 1008;
    if (*(a2 + 208))
    {
      v121 = 944;
    }

    else
    {
      v120 = (a2 + 1008);
    }

    v122 = v120[1];
    v123 = v120[2];
    v230 = *(a2 + v121);
    v231 = v122;
    v8.i32[0] = *(a2 + 212);
    v9.i32[0] = *(a2 + 216);
    v124 = vmulq_f32(v230, v8);
    v125 = vmulq_f32(v122, v8);
    v126 = v120[3];
    v127 = vmulq_f32(v123, v8);
    v127.i32[3] = 0;
    *v124.f32 = vadd_f32(vpadd_f32(*v124.f32, *v125.i8), vzip1_s32(*&vextq_s8(v124, v124, 8uLL), *&vextq_s8(v125, v125, 8uLL)));
    *&v124.u32[2] = vpadd_f32(vpadd_f32(*v127.i8, *&vextq_s8(v127, v127, 8uLL)), 0);
    v232 = v123;
    v233 = v126;
    v128 = vmulq_f32(v230, v9);
    v129 = vmulq_f32(v122, v9);
    v130 = vmulq_f32(v123, v9);
    v130.i32[3] = 0;
    *v128.f32 = vadd_f32(vpadd_f32(*v128.f32, *v129.i8), vzip1_s32(*&vextq_s8(v128, v128, 8uLL), *&vextq_s8(v129, v129, 8uLL)));
    *&v128.u32[2] = vpadd_f32(vpadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL)), 0);
    v228 = vaddq_f32(v126, v128);
    v229 = vaddq_f32(v126, v124);
    v131 = (*(*a1 + 40))(a1);
    v227 = 0uLL;
    (*(*v131 + 16))(v131, &v229, &v228, &v227);
    v227.i64[0] = __PAIR64__(v231.u32[0], v230.u32[0]);
    v227.i64[1] = v232.u32[0];
    v226.i64[0] = __PAIR64__(v231.u32[1], v230.u32[1]);
    v226.i64[1] = v232.u32[1];
    v132 = *(a2 + 220);
    v133 = *(a2 + 224);
    v134 = (*(*a1 + 40))(a1);
    v225 = 0uLL;
    v135.n128_u32[0] = 10.0;
    v136.n128_u32[0] = v10;
    v137.n128_u32[0] = v10;
    v138.n128_u32[0] = v132;
    v139.n128_u32[0] = v133;
    (*(*v134 + 120))(v136, v137, v138, v139, v135);
  }
}

uint64_t sub_1AFDA370C(uint64_t result)
{
  if (*(result + 324) >= 1)
  {
    v1 = 0;
    do
    {
      v2 = *(*(result + 336) + 8 * v1);
      *(v2 + 464) = 0uLL;
      *(v2 + 480) = 0uLL;
      ++v1;
    }

    while (v1 < *(result + 324));
  }

  return result;
}

void sub_1AFDA3740(uint64_t result)
{
  v1 = *(result + 324);
  if (v1 >= 1)
  {
    for (i = 0; i < v1; ++i)
    {
      v4 = *(*(result + 336) + 8 * i);
      v5 = v4[15].i32[1];
      if (v5 != 2 && v5 != 5)
      {
        sub_1AFDA6A98(v4);
        v1 = *(result + 324);
      }
    }
  }
}

uint64_t sub_1AFDA37A0(uint64_t result, uint64_t a2)
{
  if (*(a2 + 536))
  {
    if ((*(a2 + 232) & 3) == 0)
    {
      sub_1AFD8F808((a2 + 80), (a2 + 144), (a2 + 160), v3, *(result + 368) * *(a2 + 280));
      return (*(**(a2 + 536) + 24))(*(a2 + 536), v3);
    }
  }

  return result;
}

uint64_t sub_1AFDA382C(uint64_t result)
{
  v1 = result;
  if (*(result + 374))
  {
    v2 = *(result + 12);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(v1 + 24) + 8 * i);
        if (v4)
        {
          v5 = (*(v4 + 264) & 2) == 0;
        }

        else
        {
          v5 = 1;
        }

        if (!v5)
        {
          result = sub_1AFDA37A0(v1, v4);
          v2 = *(v1 + 12);
        }
      }
    }
  }

  else
  {
    v6 = *(result + 324);
    if (v6 >= 1)
    {
      for (j = 0; j < v6; ++j)
      {
        v8 = *(*(v1 + 336) + 8 * j);
        v9 = *(v8 + 244);
        if (v9 != 2 && v9 != 5)
        {
          *(v1 + 448) = 1;
          result = sub_1AFDA37A0(v1, v8);
          v6 = *(v1 + 324);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AFDA38EC(uint64_t a1, int a2, float a3, float a4)
{
  *(a1 + 448) = 0;
  if (a2)
  {
    v5 = a4;
    v6 = a2;
    v7 = *(a1 + 368) + a3;
    *(a1 + 368) = v7;
    if (v7 >= a4)
    {
      v8 = (v7 / a4);
      *(a1 + 368) = v7 - ((v7 / a4) * a4);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    *(a1 + 368) = a3;
    v9 = fabsf(a3);
    v8 = v9 >= 0.00000011921;
    v5 = a3;
    v6 = v9 >= 0.00000011921;
  }

  if ((*(*a1 + 40))(a1))
  {
    v10 = (*(*a1 + 40))(a1);
    byte_1EB6C3748 = ((*(*v10 + 96))(v10) & 0x10) != 0;
  }

  if (v8)
  {
    if (v8 < v6)
    {
      v6 = v8;
    }

    (*(*a1 + 320))(a1, v5 * v6);
    (*(*a1 + 344))(a1);
    if (v6 >= 1)
    {
      do
      {
        (*(*a1 + 312))(a1, v5);
        (*(*a1 + 160))(a1);
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    (*(*a1 + 160))(a1);
  }

  (*(*a1 + 240))(a1);
  return v8;
}

uint64_t sub_1AFDA3B4C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = *(a1 + 128);
  if (v4)
  {
    v4(a1, a2);
  }

  (*(*a1 + 280))(a1, v2);
  *(a1 + 48) = v2;
  *(a1 + 52) = 0;
  *(a1 + 72) = (*(*a1 + 40))(a1);
  sub_1AFDA3D30(a1, v2);
  (*(*a1 + 88))(a1);
  (*(*a1 + 296))(a1);
  *(a1 + 156) = v2;
  (*(*a1 + 304))(a1, a1 + 144);
  (*(*a1 + 288))(a1, v2);
  sub_1AFDA4274(a1, v2);
  result = sub_1AFDA42F8(a1, v2);
  v7 = *(a1 + 120);
  if (v7)
  {
    v6.n128_f32[0] = v2;

    return v7(a1, v6);
  }

  return result;
}

void sub_1AFDA3D30(uint64_t a1, float a2)
{
  v84 = *MEMORY[0x1E69E9840];
  if (*(a1 + 420) >= 1)
  {
    v4 = 0;
    do
    {
      (*(**(a1 + 40) + 32))(*(a1 + 40), *(*(a1 + 432) + 8 * v4++));
    }

    while (v4 < *(a1 + 420));
  }

  v5 = (a1 + 420);
  v6 = *(a1 + 432);
  if (v6 && *(a1 + 440) == 1)
  {
    sub_1AFDA72A0(v6);
  }

  *(a1 + 440) = 1;
  *(a1 + 432) = 0;
  *v5 = 0;
  if (*(a1 + 324) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 336) + 8 * v7);
      *(v8 + 280) = 1065353216;
      v9 = *(v8 + 244);
      if (v9 != 2 && v9 != 5 && (*(v8 + 232) & 3) == 0)
      {
        sub_1AFDA67E0(v8, v64, a2);
        if (*(a1 + 64) == 1)
        {
          v11 = *(v8 + 288) * *(v8 + 288);
          if (v11 != 0.0)
          {
            v12 = vsubq_f32(v67, *(v8 + 64));
            v12.i32[3] = 0;
            v13 = vmulq_f32(v12, v12);
            if (v11 < vadd_f32(vpadd_f32(*v13.i8, *v13.i8), *&vextq_s8(v13, v13, 8uLL)).f32[0] && *(*(v8 + 208) + 8) <= 19)
            {
              ++dword_1EB6C3744;
              v14 = (*(**(a1 + 96) + 72))(*(a1 + 96));
              v15 = *(a1 + 40);
              v73 = 1.0;
              v74 = xmmword_1AFE47B90;
              v75 = 0;
              v76 = *(v8 + 64);
              v77 = v67;
              v79 = 0;
              v72 = &unk_1F2572C50;
              v80 = v8;
              v81 = 0;
              v82 = v14;
              v83 = v15;
              v16 = *(v8 + 284);
              sub_1AFD86E64(&v68);
              v68 = &unk_1F2572270;
              v69 = 8;
              v70 = v16;
              v71 = v16;
              v81 = *(a1 + 84);
              v17 = *(v8 + 200);
              v74 = *(v17 + 8);
              v75 = *(v17 + 24);
              v61 = v65;
              v62 = v66;
              v63 = v67;
              v18 = *(v8 + 32);
              v60 = *(v8 + 16);
              v61 = v18;
              v62 = *(v8 + 48);
              sub_1AFD75D50(a1, &v68, (v8 + 16), &v60, &v72, 0.0);
              if (v73 < 1.0)
              {
                v48 = v73;
                v45 = *(v8 + 64);
                v46 = v67;
                v47 = v78;
                v19 = (*(**(a1 + 40) + 24))(*(a1 + 40), v8, v79);
                v20 = *(a1 + 420);
                if (v20 == *(a1 + 424))
                {
                  v21 = v20 ? 2 * v20 : 1;
                  if (v20 < v21)
                  {
                    if (v21)
                    {
                      v22 = sub_1AFDA7294(8 * v21, 16);
                      v20 = *v5;
                    }

                    else
                    {
                      v22 = 0;
                    }

                    if (v20 >= 1)
                    {
                      v23 = 0;
                      do
                      {
                        *(v22 + v23) = *(*(a1 + 432) + v23);
                        v23 += 8;
                      }

                      while (8 * v20 != v23);
                    }

                    v24 = *(a1 + 432);
                    if (v24)
                    {
                      if (*(a1 + 440) == 1)
                      {
                        sub_1AFDA72A0(v24);
                        v20 = *v5;
                      }
                    }

                    *(a1 + 440) = 1;
                    *(a1 + 432) = v22;
                    *(a1 + 424) = v21;
                  }
                }

                v25 = vmulq_n_f32(vsubq_f32(v46, v45), v48);
                v25.i32[3] = 0;
                v26.i64[0] = 0x8000000080000000;
                v26.i64[1] = 0x8000000080000000;
                v27 = vmulq_f32(veorq_s8(v47, v26), v25);
                *(*(a1 + 432) + 8 * v20) = v19;
                *(a1 + 420) = v20 + 1;
                v28 = vaddq_f32(*(v8 + 64), v25);
                v29 = *(v79 + 16);
                v30 = *(v79 + 32);
                v31 = *(v79 + 48);
                v32 = vtrn1q_s32(v29, v30);
                v33 = vzip2_s32(*v31.i8, 0);
                v34 = vextq_s8(v31, v31, 8uLL).u32[0];
                v35.i64[0] = vextq_s8(v32, v32, 8uLL).u64[0];
                v32.i64[1] = v31.u32[0];
                v36 = veorq_s8(*(v79 + 64), v26);
                v37 = vmulq_f32(v32, v36);
                *v29.f32 = vzip2_s32(*v29.f32, *v30.i8);
                *&v29.u32[2] = v33;
                v38 = vmulq_f32(v29, v36);
                v35.i64[1] = v34;
                *v38.f32 = vadd_f32(vpadd_f32(*v37.i8, *v38.f32), vzip1_s32(*&vextq_s8(v37, v37, 8uLL), *&vextq_s8(v38, v38, 8uLL)));
                v39 = vmulq_f32(v35, v36);
                v39.i32[3] = 0;
                v49 = v28;
                v40 = vmulq_f32(v28, v32);
                v41 = vmulq_f32(v28, v29);
                v42 = vmulq_f32(v28, v35);
                v42.i32[3] = 0;
                *v41.f32 = vadd_f32(vpadd_f32(*v40.i8, *v41.f32), vzip1_s32(*&vextq_s8(v40, v40, 8uLL), *&vextq_s8(v41, v41, 8uLL)));
                *&v38.u32[2] = vpadd_f32(vpadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL)), 0);
                *&v41.u32[2] = vpadd_f32(vpadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)), 0);
                v50[0] = 0;
                v50[1] = 0;
                v51 = vaddq_f32(v41, v38);
                v52 = v78;
                v53 = vadd_f32(vpadd_f32(*v27.i8, *v27.i8), *&vextq_s8(v27, v27, 8uLL)).u32[0];
                v54 = 0;
                v55 = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0u;
                v59 = 0u;
                v43 = &v19[12 * sub_1AFD93904(v19, v50)];
                v43[6].i32[3] = 0;
                v43[6].f32[1] = sub_1AFD8082C(v8, v79);
                v44 = *(v8 + 64);
                v43[3] = v49;
                v43[4] = v44;
              }

              nullsub_106();
            }
          }
        }
      }

      ++v7;
    }

    while (v7 < *(a1 + 324));
  }
}

uint64_t sub_1AFDA4274(uint64_t result, float a2)
{
  if (*(result + 380) >= 1)
  {
    v3 = result;
    v4 = 0;
    do
    {
      v5 = *(*(v3 + 392) + 8 * v4);
      result = (*(*v5 + 16))(v5, v3, a2);
      ++v4;
    }

    while (v4 < *(v3 + 380));
  }

  return result;
}

uint64_t sub_1AFDA42F8(uint64_t result, float a2)
{
  if (*(result + 324) >= 1)
  {
    v3 = result;
    for (i = 0; i < *(v3 + 324); ++i)
    {
      v5 = *(*(v3 + 336) + 8 * i);
      if (v5)
      {
        v6 = v5[15].i32[1];
        if (v6 != 2)
        {
          if (v6 == 4)
          {
            continue;
          }

          v7 = vmulq_f32(v5[22], v5[22]);
          if (vadd_f32(vpadd_f32(*v7.i8, *v7.i8), *&vextq_s8(v7, v7, 8uLL)).f32[0] >= (v5[32].f32[3] * v5[32].f32[3]) || (v8 = vmulq_f32(v5[23], v5[23]), vadd_f32(vpadd_f32(*v8.i8, *v8.i8), *&vextq_s8(v8, v8, 8uLL)).f32[0] >= (v5[33].f32[0] * v5[33].f32[0])))
          {
            v5[15].i32[2] = 0;
            result = sub_1AFD73C3C(v5, 0);
            v6 = v5[15].i32[1];
            if (v6 == 4)
            {
              continue;
            }
          }

          else
          {
            v5[15].f32[2] = v5[15].f32[2] + a2;
          }
        }

        if ((byte_1EB6C3748 & 1) != 0 || *&dword_1EB6447C8 == 0.0 || (v6 & 0xFFFFFFFE) != 2 && v5[15].f32[2] <= *&dword_1EB6447C8)
        {
          v9 = v5;
          v10 = 1;
        }

        else
        {
          if ((v5[14].i8[8] & 3) == 0)
          {
            if (v6 == 1)
            {
              result = sub_1AFD73C3C(v5, 3);
              v6 = v5[15].i32[1];
            }

            if (v6 == 2)
            {
              v5[22] = 0u;
              v5[23] = 0u;
            }

            continue;
          }

          v9 = v5;
          v10 = 2;
        }

        result = sub_1AFD73C3C(v9, v10);
      }
    }
  }

  return result;
}

void sub_1AFDA447C(float32x4_t *result, float32x4_t *a2)
{
  result[22] = *a2;
  v2 = result[20].i32[1];
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v6 = *(result[21].i64[0] + 8 * i);
      v7 = v6[15].i32[1];
      v8 = v7 == 2 || v7 == 5;
      if (!v8 && (v6[36].i8[0] & 1) == 0)
      {
        sub_1AFDA68D8(v6, a2);
        v2 = result[20].i32[1];
      }
    }
  }
}

__n128 sub_1AFDA4504@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[22];
  *a2 = result;
  return result;
}

uint64_t sub_1AFDA4514(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a2 + 264) & 2) != 0)
  {
    return (*(*a1 + 184))();
  }

  else
  {
    return sub_1AFD74750(a1, a2);
  }
}

uint64_t sub_1AFDA4548(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  sub_1AFD74824(a1 + 320, &v4);
  return sub_1AFD74750(a1, v4);
}

void sub_1AFDA458C(float32x4_t *result, float32x4_t *a2)
{
  if ((a2[14].i8[8] & 3) == 0 && (a2[36].i8[0] & 1) == 0)
  {
    sub_1AFDA68D8(a2, result + 22);
  }

  if (a2[13].i64[0])
  {
    if (a2[14].i8[8])
    {
      sub_1AFD73C3C(a2, 2);
    }

    else
    {
      v4 = result[20].i32[1];
      if (v4 == result[20].i32[2])
      {
        v5 = v4 ? 2 * v4 : 1;
        if (v4 < v5)
        {
          if (v5)
          {
            v6 = sub_1AFDA7294(8 * v5, 16);
            v4 = result[20].i32[1];
          }

          else
          {
            v6 = 0;
          }

          if (v4 >= 1)
          {
            v7 = 0;
            do
            {
              *(v6 + v7) = *(result[21].i64[0] + v7);
              v7 += 8;
            }

            while (8 * v4 != v7);
          }

          v8 = result[21].i64[0];
          if (v8 && result[21].i8[8] == 1)
          {
            sub_1AFDA72A0(v8);
            v4 = result[20].i32[1];
          }

          result[21].i8[8] = 1;
          result[21].i64[0] = v6;
          result[20].i32[2] = v5;
        }
      }

      *(result[21].i64[0] + 8 * v4) = a2;
      result[20].i32[1] = v4 + 1;
    }

    if ((a2[14].i32[2] & 3) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if ((a2[14].i32[2] & 3) != 0)
    {
      v10 = -3;
    }

    else
    {
      v10 = -1;
    }

    v11 = *(result->i64[0] + 72);

    v11(result, a2, v9, v10, 0);
  }
}

void sub_1AFDA4704(float32x4_t *result, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2[14].i8[8] & 3) == 0 && (a2[36].i8[0] & 1) == 0)
  {
    sub_1AFDA68D8(a2, result + 22);
  }

  if (a2[13].i64[0])
  {
    if (a2[14].i8[8])
    {
      sub_1AFD73C3C(a2, 2);
    }

    else
    {
      v10 = result[20].i32[1];
      if (v10 == result[20].i32[2])
      {
        v11 = v10 ? 2 * v10 : 1;
        if (v10 < v11)
        {
          if (v11)
          {
            v12 = sub_1AFDA7294(8 * v11, 16);
            v10 = result[20].i32[1];
          }

          else
          {
            v12 = 0;
          }

          if (v10 >= 1)
          {
            v13 = 0;
            do
            {
              *(v12 + v13) = *(result[21].i64[0] + v13);
              v13 += 8;
            }

            while (8 * v10 != v13);
          }

          v14 = result[21].i64[0];
          if (v14 && result[21].i8[8] == 1)
          {
            sub_1AFDA72A0(v14);
            v10 = result[20].i32[1];
          }

          result[21].i8[8] = 1;
          result[21].i64[0] = v12;
          result[20].i32[2] = v11;
        }
      }

      *(result[21].i64[0] + 8 * v10) = a2;
      result[20].i32[1] = v10 + 1;
    }

    v15 = *(result->i64[0] + 72);

    v15(result, a2, a3, a4, a5);
  }
}

uint64_t sub_1AFDA4890(uint64_t result)
{
  v1 = *(result + 324);
  if (v1 >= 1)
  {
    v2 = result;
    for (i = 0; i < v1; ++i)
    {
      result = *(*(v2 + 336) + 8 * i);
      if (result)
      {
        result = sub_1AFD73C5C(result, 0);
        v1 = *(v2 + 324);
      }
    }
  }

  return result;
}

void sub_1AFDA48E8(uint64_t result, uint64_t a2, int a3)
{
  v6 = *(result + 292);
  if (v6 == *(result + 296))
  {
    v7 = v6 ? 2 * v6 : 1;
    if (v6 < v7)
    {
      if (v7)
      {
        v8 = sub_1AFDA7294(8 * v7, 16);
        v6 = *(result + 292);
      }

      else
      {
        v8 = 0;
      }

      if (v6 >= 1)
      {
        v9 = 0;
        do
        {
          *(v8 + v9) = *(*(result + 304) + v9);
          v9 += 8;
        }

        while (8 * v6 != v9);
      }

      v10 = *(result + 304);
      if (v10 && *(result + 312) == 1)
      {
        sub_1AFDA72A0(v10);
        v6 = *(result + 292);
      }

      *(result + 312) = 1;
      *(result + 304) = v8;
      *(result + 296) = v7;
    }
  }

  *(*(result + 304) + 8 * v6) = a2;
  *(result + 292) = v6 + 1;
  if (a3)
  {
    sub_1AFDA6CAC(*(a2 + 40), a2);
    v11 = *(a2 + 48);

    sub_1AFDA6CAC(v11, a2);
  }
}

uint64_t sub_1AFDA4A04(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  sub_1AFD74824(a1 + 288, &v3);
  sub_1AFDA6DBC(*(v3 + 40), v3);
  return sub_1AFDA6DBC(*(v3 + 48), v3);
}

void sub_1AFDA4A48(uint64_t result, uint64_t a2)
{
  v4 = *(result + 380);
  if (v4 == *(result + 384))
  {
    v5 = v4 ? 2 * v4 : 1;
    if (v4 < v5)
    {
      if (v5)
      {
        v6 = sub_1AFDA7294(8 * v5, 16);
        v4 = *(result + 380);
      }

      else
      {
        v6 = 0;
      }

      if (v4 >= 1)
      {
        v7 = 0;
        do
        {
          *(v6 + v7) = *(*(result + 392) + v7);
          v7 += 8;
        }

        while (8 * v4 != v7);
      }

      v8 = *(result + 392);
      if (v8 && *(result + 400) == 1)
      {
        sub_1AFDA72A0(v8);
        v4 = *(result + 380);
      }

      *(result + 400) = 1;
      *(result + 392) = v6;
      *(result + 384) = v5;
    }
  }

  *(*(result + 392) + 8 * v4) = a2;
  *(result + 380) = v4 + 1;
}

uint64_t sub_1AFDA4BEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 292);
  v5 = *(a1 + 236);
  if (v5 < v4)
  {
    v6 = v5;
    if (*(a1 + 240) < v4)
    {
      if (v4)
      {
        v7 = sub_1AFDA7294(8 * v4, 16);
        v5 = *(a1 + 236);
      }

      else
      {
        v7 = 0;
      }

      if (v5 >= 1)
      {
        v8 = 0;
        v9 = 8 * v5;
        do
        {
          *(v7 + v8) = *(*(a1 + 248) + v8);
          v8 += 8;
        }

        while (v9 != v8);
      }

      v10 = *(a1 + 248);
      if (v10 && *(a1 + 256) == 1)
      {
        sub_1AFDA72A0(v10);
      }

      *(a1 + 256) = 1;
      *(a1 + 248) = v7;
      *(a1 + 240) = v4;
    }

    do
    {
      *(*(a1 + 248) + 8 * v6++) = 0;
    }

    while (v4 != v6);
  }

  *(a1 + 236) = v4;
  if ((*(*a1 + 208))(a1) >= 1)
  {
    v11 = 0;
    do
    {
      *(*(a1 + 248) + 8 * v11) = *(*(a1 + 304) + 8 * v11);
      ++v11;
    }

    while (v11 < (*(*a1 + 208))(a1));
  }

  v12 = *(a1 + 236);
  if (v12 > 1)
  {
    sub_1AFDA62A8(a1 + 232, &v27, 0, v12 - 1);
  }

  if ((*(*a1 + 208))(a1))
  {
    v13 = *(a1 + 248);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 264);
  v15 = *(a1 + 236);
  v16 = (*(*a1 + 40))(a1);
  *(v14 + 8) = a2;
  *(v14 + 24) = v13;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = *(v14 + 60);
  if ((v17 & 0x80000000) != 0)
  {
    if ((*(v14 + 64) & 0x80000000) != 0)
    {
      v18 = *(v14 + 72);
      if (v18 && *(v14 + 80) == 1)
      {
        sub_1AFDA72A0(v18);
      }

      *(v14 + 80) = 1;
      *(v14 + 72) = 0;
      *(v14 + 64) = 0;
    }

    do
    {
      *(*(v14 + 72) + 8 * v17++) = 0;
    }

    while (v17);
  }

  *(v14 + 60) = 0;
  v19 = *(v14 + 92);
  if ((v19 & 0x80000000) != 0)
  {
    if ((*(v14 + 96) & 0x80000000) != 0)
    {
      v20 = *(v14 + 104);
      if (v20 && *(v14 + 112) == 1)
      {
        sub_1AFDA72A0(v20);
      }

      *(v14 + 112) = 1;
      *(v14 + 104) = 0;
      *(v14 + 96) = 0;
    }

    do
    {
      *(*(v14 + 104) + 8 * v19++) = 0;
    }

    while (v19);
  }

  *(v14 + 92) = 0;
  v21 = *(v14 + 124);
  if ((v21 & 0x80000000) != 0)
  {
    if ((*(v14 + 128) & 0x80000000) != 0)
    {
      v22 = *(v14 + 136);
      if (v22 && *(v14 + 144) == 1)
      {
        sub_1AFDA72A0(v22);
      }

      *(v14 + 144) = 1;
      *(v14 + 136) = 0;
      *(v14 + 128) = 0;
    }

    do
    {
      *(*(v14 + 136) + 8 * v21++) = 0;
    }

    while (v21);
  }

  *(v14 + 124) = 0;
  v23 = *(a1 + 272);
  v24 = *(a1 + 12);
  v25 = (*(**(a1 + 40) + 72))(*(a1 + 40));
  (*(*v23 + 16))(v23, v24, v25);
  sub_1AFD81498(*(a1 + 280), *(a1 + 40), a1, *(a1 + 264));
  sub_1AFDA4F70(*(a1 + 264));
  return (*(**(a1 + 272) + 32))(*(a1 + 272), a2, *(a1 + 104));
}

void sub_1AFDA4F70(uint64_t a1)
{
  if (*(a1 + 60))
  {
    v2 = *(a1 + 72);
  }

  else
  {
    v2 = 0;
  }

  (*(**(a1 + 16) + 24))(*(a1 + 16), v2);
  v3 = *(a1 + 60);
  if ((v3 & 0x80000000) != 0)
  {
    if ((*(a1 + 64) & 0x80000000) != 0)
    {
      v4 = *(a1 + 72);
      if (v4 && *(a1 + 80) == 1)
      {
        sub_1AFDA72A0(v4);
      }

      *(a1 + 80) = 1;
      *(a1 + 72) = 0;
      *(a1 + 64) = 0;
    }

    do
    {
      *(*(a1 + 72) + 8 * v3++) = 0;
    }

    while (v3);
  }

  *(a1 + 60) = 0;
  v5 = *(a1 + 92);
  if ((v5 & 0x80000000) != 0)
  {
    if ((*(a1 + 96) & 0x80000000) != 0)
    {
      v6 = *(a1 + 104);
      if (v6 && *(a1 + 112) == 1)
      {
        sub_1AFDA72A0(v6);
      }

      *(a1 + 112) = 1;
      *(a1 + 104) = 0;
      *(a1 + 96) = 0;
    }

    do
    {
      *(*(a1 + 104) + 8 * v5++) = 0;
    }

    while (v5);
  }

  *(a1 + 92) = 0;
  v7 = *(a1 + 124);
  if ((v7 & 0x80000000) != 0)
  {
    if ((*(a1 + 128) & 0x80000000) != 0)
    {
      v8 = *(a1 + 136);
      if (v8 && *(a1 + 144) == 1)
      {
        sub_1AFDA72A0(v8);
      }

      *(a1 + 144) = 1;
      *(a1 + 136) = 0;
      *(a1 + 128) = 0;
    }

    do
    {
      *(*(a1 + 136) + 8 * v7++) = 0;
    }

    while (v7);
  }

  *(a1 + 124) = 0;
}

uint64_t sub_1AFDA50E8(uint64_t a1)
{
  (*(**(a1 + 280) + 16))(*(a1 + 280), a1, *(a1 + 40));
  v2 = *(a1 + 420);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 432) + 8 * i);
      v5 = *(v4 + 784);
      if (v5)
      {
        v6 = *(v4 + 792);
        v7 = (*(v5 + 232) & 3) != 0 || v6 == 0;
        if (!v7 && (*(v6 + 232) & 3) == 0)
        {
          v8 = *(v5 + 244);
          v9 = v8 == 5 || v8 == 2;
          if (!v9 || ((v10 = *(v6 + 244), v10 != 2) ? (v11 = v10 == 5) : (v11 = 1), !v11))
          {
            sub_1AFD80F48(*(a1 + 280) + 8, *(v5 + 236), *(v6 + 236));
            v2 = *(a1 + 420);
          }
        }
      }
    }
  }

  v12 = *(a1 + 292);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = 8 * v12;
    do
    {
      v15 = *(*(a1 + 304) + v13);
      if (*(v15 + 28) == 1)
      {
        v16 = *(v15 + 40);
        if ((*(v16 + 232) & 3) == 0)
        {
          v17 = *(v15 + 48);
          if ((*(v17 + 232) & 3) == 0)
          {
            v18 = *(v16 + 244);
            v19 = v18 == 5 || v18 == 2;
            if (!v19 || ((v20 = *(v17 + 244), v20 != 2) ? (v21 = v20 == 5) : (v21 = 1), !v21))
            {
              sub_1AFD80F48(*(a1 + 280) + 8, *(v16 + 236), *(v17 + 236));
            }
          }
        }
      }

      v13 += 8;
    }

    while (v14 != v13);
  }

  v22 = *(**(a1 + 280) + 24);

  return v22();
}

void sub_1AFDA528C(uint64_t a1, float a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*(a1 + 324) >= 1)
  {
    v4 = 0;
    while (1)
    {
      v5 = *(*(a1 + 336) + 8 * v4);
      *(v5 + 280) = 1065353216;
      v6 = *(v5 + 244);
      v7 = v6 == 2 || v6 == 5;
      if (v7 || (*(v5 + 232) & 3) != 0)
      {
        goto LABEL_16;
      }

      sub_1AFDA67E0(v5, v36, a2);
      if (*(a1 + 64) != 1)
      {
        goto LABEL_15;
      }

      v8 = *(v5 + 288) * *(v5 + 288);
      if (v8 == 0.0)
      {
        goto LABEL_15;
      }

      v9 = vsubq_f32(v37, *(v5 + 64));
      v9.i32[3] = 0;
      v10 = vmulq_f32(v9, v9);
      if (v8 >= vadd_f32(vpadd_f32(*v10.i8, *v10.i8), *&vextq_s8(v10, v10, 8uLL)).f32[0] || *(*(v5 + 208) + 8) > 19)
      {
        goto LABEL_15;
      }

      ++dword_1EB6C3744;
      v11 = (*(**(a1 + 96) + 72))(*(a1 + 96));
      v12 = *(a1 + 40);
      v41.i32[2] = 1065353216;
      v42 = xmmword_1AFE47B90;
      v43 = 0;
      v44 = *(v5 + 64);
      v45 = v37;
      v46 = 0;
      v47 = v5;
      v41.i64[0] = &unk_1F2572C50;
      v48 = 0;
      v49 = v11;
      v50 = v12;
      v13 = *(v5 + 284);
      sub_1AFD86E64(&v38);
      v38.i64[0] = &unk_1F2572270;
      v38.i32[2] = 8;
      v39 = v13;
      v40 = v13;
      v48 = *(a1 + 84);
      v14 = *(v5 + 200);
      v42 = *(v14 + 8);
      v43 = *(v14 + 24);
      v33 = v36[1];
      v34 = v36[2];
      v35 = v37;
      v15 = *(v5 + 32);
      v32 = *(v5 + 16);
      v33 = v15;
      v34 = *(v5 + 48);
      sub_1AFD75D50(a1, &v38, (v5 + 16), &v32, &v41, 0.0);
      v16 = *&v41.i32[2];
      if (*&v41.i32[2] >= 1.0)
      {
        break;
      }

      *(v5 + 280) = v41.i32[2];
      sub_1AFDA67E0(v5, v36, v16 * a2);
      *(v5 + 280) = 0;
      sub_1AFDA6AC0(v5, v36);
      nullsub_106();
LABEL_16:
      if (++v4 >= *(a1 + 324))
      {
        goto LABEL_17;
      }
    }

    nullsub_106();
LABEL_15:
    sub_1AFDA6AC0(v5, v36);
    goto LABEL_16;
  }

LABEL_17:
  if (*(a1 + 375) == 1)
  {
    v17 = *(a1 + 420);
    if (v17 >= 1)
    {
      for (i = 0; i < v17; ++i)
      {
        v19 = *(*(a1 + 432) + 8 * i);
        if ((*(*(v19 + 784) + 264) & 2) != 0)
        {
          v20 = *(v19 + 784);
        }

        else
        {
          v20 = 0;
        }

        if ((*(*(v19 + 792) + 264) & 2) != 0)
        {
          v21 = *(v19 + 792);
        }

        else
        {
          v21 = 0;
        }

        if (*(v19 + 800) >= 1)
        {
          v22 = 0;
          v23 = v19 + 80;
          do
          {
            v24 = sub_1AFD80854(v20, v21);
            if (v24 > 0.0)
            {
              v25 = *(v23 + 60);
              if (v25 != 0.0)
              {
                v26.i64[0] = 0x8000000080000000;
                v26.i64[1] = 0x8000000080000000;
                v27 = vmulq_n_f32(vmulq_n_f32(veorq_s8(*v23, v26), v25), v24);
                v27.i32[3] = 0;
                v41 = v27;
                v28 = vsubq_f32(*(v23 - 16), v20[4]);
                v28.i32[3] = 0;
                v38 = v28;
                v29 = vsubq_f32(*(v23 - 32), v21[4]);
                v29.i32[3] = 0;
                v32 = v29;
                sub_1AF3584A8(v20, &v41, &v38);
                v30.i64[0] = 0x8000000080000000;
                v30.i64[1] = 0x8000000080000000;
                v31 = veorq_s8(v41, v30);
                sub_1AF3584A8(v21, &v31, &v32);
              }
            }

            ++v22;
            v23 += 192;
          }

          while (v22 < *(v19 + 800));
          v17 = *(a1 + 420);
        }
      }
    }
  }
}