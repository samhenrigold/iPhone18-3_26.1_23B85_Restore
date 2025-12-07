double CI::sw_swizzleYYZ1(uint64_t a1, uint64_t a2, uint64_t a3)
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
  LODWORD(v8) = HIDWORD(*v7);
  return *&v8;
}

double CI::sw_swizzleYZZ1(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vzip2q_s32(vextq_s8(*v7, *v7, 0xCuLL), *v7).u64[0];
  return result;
}

double CI::sw_dotscreen(CI *a1, uint64_t a2, uint64_t a3)
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
  v9 = *(v3 + 64);
  v10 = *(v3 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v27 = *v7;
  v28 = *(a2 + (v8 << 6));
  v26 = *v12;
  v13 = vsub_f32(*CI::getDC(a1), *v28.f32);
  v14 = vmul_f32(*v26.i8, v13);
  v15 = vmul_f32(*&vextq_s8(v26, v26, 8uLL), v13);
  v16 = vadd_f32(*v28.f32, vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)));
  v17 = vmul_f32(vminnm_f32(vsub_f32(v16, vrndm_f32(v16)), vdup_n_s32(0x3F7FFFFFu)), vdup_n_s32(0x40C90FDBu));
  v26.i32[1] = v17.i32[1];
  v18 = sinf(v17.f32[0]);
  v19 = (v18 + sinf(*&v26.i32[1])) * 0.25 * (-1.0 / v28.f32[2] + 0.995) + 0.5;
  v20 = vmulq_f32(v27, xmmword_19CF23D50);
  v21 = vmuls_lane_f32((v20.f32[2] + vaddv_f32(*v20.f32)) - v19, v28, 2) + 0.5;
  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = v21;
  }

  v23 = v21 < 0.0;
  v24 = 0;
  if (!v23)
  {
    *v24.i32 = v22;
  }

  *v24.i32 = vmuls_lane_f32(*v24.i32, v27, 3);
  *&result = vdupq_lane_s32(v24, 0).u64[0];
  return result;
}

double CI::sw_hatchedscreen(CI *a1, uint64_t a2, uint64_t a3)
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
  v9 = *(v3 + 64);
  v10 = *(v3 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v32 = *v7;
  v30 = *(a2 + (v8 << 6));
  v31 = *v12;
  v13 = vsub_f32(*CI::getDC(a1), *v30.f32);
  v14 = vmul_f32(*v31.i8, v13);
  v15 = vmul_f32(*&vextq_s8(v31, v31, 8uLL), v13);
  v16 = vadd_f32(*v30.f32, vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)));
  v17 = vminnm_f32(vsub_f32(v16, vrndm_f32(v16)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v23 = vminnm_f32(vsub_f32(_D1, v17), v17);
  v24 = vadd_f32(v23, v23);
  _D1.f32[0] = v24.f32[1] * 0.5 + 0.5;
  v24.f32[0] = fminf(v24.f32[0], _D1.f32[0]);
  v25 = vmulq_f32(v32, xmmword_19CF23D50);
  v26 = vmuls_lane_f32((v25.f32[2] + vaddv_f32(*v25.f32)) - v24.f32[0], v30, 2) + 0.5;
  v27 = 1.0;
  if (v26 <= 1.0)
  {
    v27 = v26;
  }

  _NF = v26 < 0.0;
  v28 = 0;
  if (!_NF)
  {
    *v28.i32 = v27;
  }

  *v28.i32 = vmuls_lane_f32(*v28.i32, v32, 3);
  *&result = vdupq_lane_s32(v28, 0).u64[0];
  return result;
}

double CI::sw_linescreen(CI *a1, uint64_t a2, uint64_t a3)
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
  v9 = *(v3 + 64);
  v10 = *(v3 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (v9 == 5)
  {
    v12 = v11;
  }

  v25 = *v7;
  v23 = *(a2 + (v8 << 6));
  v24 = *v12;
  v13 = vsub_f32(*CI::getDC(a1), *v23.f32);
  v14 = vmul_f32(*v24.i8, v13);
  v15 = vmul_f32(*&vextq_s8(v24, v24, 8uLL), v13);
  v16 = vadd_f32(*v23.f32, vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)));
  v16.f32[0] = vminnm_f32(vsub_f32(v16, vrndm_f32(v16)), vdup_n_s32(0x3F7FFFFFu)).f32[0];
  v17 = 1.0;
  v16.f32[0] = fminf(1.0 - v16.f32[0], v16.f32[0]);
  v18 = vmulq_f32(v25, xmmword_19CF23D50);
  v19 = vmuls_lane_f32((v18.f32[2] + vaddv_f32(*v18.f32)) - (v16.f32[0] + v16.f32[0]), v23, 2) + 0.5;
  if (v19 <= 1.0)
  {
    v17 = v19;
  }

  v20 = v19 < 0.0;
  v21 = 0;
  if (!v20)
  {
    *v21.i32 = v17;
  }

  *v21.i32 = vmuls_lane_f32(*v21.i32, v25, 3);
  *&result = vdupq_lane_s32(v21, 0).u64[0];
  return result;
}

double CI::sw_circularscreen(CI *a1, uint64_t a2, uint64_t a3)
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

  v19 = *v11->f32;
  v20 = *v7;
  v12 = vsub_f32(*CI::getDC(a1), *v11);
  v12.f32[0] = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v12, v12))), v19, 2);
  v12.f32[0] = v12.f32[0] - floorf(v12.f32[0]);
  v13 = 1.0;
  v14 = vmulq_f32(v20, xmmword_19CF23D50);
  v12.f32[0] = (v14.f32[2] + vaddv_f32(*v14.f32)) + fminf(1.0 - v12.f32[0], v12.f32[0]) * -2.0;
  v15 = vmuls_lane_f32(v12.f32[0], v19, 3) + 0.5;
  if (v15 <= 1.0)
  {
    v13 = v15;
  }

  v16 = v15 < 0.0;
  v17 = 0;
  if (!v16)
  {
    *v17.i32 = v13;
  }

  *&result = vmulq_laneq_f32(vdupq_lane_s32(v17, 0), v20, 3).u64[0];
  return result;
}

uint64_t CI::sw_resetalpha(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return *v7;
}

double CI::sw_highlightsAndShadows2(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v81 = *v7->f32;
  v78 = *v11;
  v80 = *v15;
  v16 = *v7->f32;
  v16.i32[3] = 0;
  v76 = v16;
  v72 = vmaxnmq_f32(v16, 0);
  v17 = vmulq_f32(v72, xmmword_19CF26DA0);
  v18 = COERCE_FLOAT(*v15);
  v19 = pow(fminf((v17.f32[2] + vaddv_f32(*v17.f32)) / fmaxf(COERCE_FLOAT(*&v7[1]) + vaddv_f32(*v7), 0.001), 1.0), 1.0 - v18) * v18;
  v20 = v19;
  *&v19 = -v20;
  v21 = vsubq_f32(vdupq_lane_s32(*&v19, 0), v78);
  v21.i32[3] = 0;
  v22 = vaddq_f32(vdupq_laneq_s32(v80, 2), vmulq_n_f32(_simd_pow_f4(xmmword_19CF26DB0, v21), 1.0 - v80.f32[2]));
  v70 = v22.f32[0];
  v75 = fmaxf(fmaxf(fmaxf(v78.f32[0], v78.f32[1]), v78.f32[2]), 0.0);
  v79 = sqrtf(v75);
  v23 = (v80.f32[0] + -0.5) + (v80.f32[0] + -0.5);
  if (v23 <= 1.0)
  {
    v24 = (v80.f32[0] + -0.5) + (v80.f32[0] + -0.5);
  }

  else
  {
    v24 = 1.0;
  }

  if (v23 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = ((v25 * v25) * ((v25 * -2.0) + 3.0)) * 0.5 + 0.5;
  v77 = vminnmq_f32(v76, 0);
  v69 = v26;
  v27 = vmulq_n_f32(v72, v26);
  v27.i32[3] = 0;
  v28 = v22;
  v28.i32[3] = 0;
  v29 = vmulq_n_f32(_simd_pow_f4(v27, v28), v20 + 1.0);
  v73 = vaddq_f32(v29, v29);
  v68 = vaddq_f32(vmulq_laneq_f32(xmmword_19CF26DE0, v81, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26DD0, *v81.f32, 1), vmulq_n_f32(xmmword_19CF26DC0, v81.f32[0])));
  v30 = powf(fmaxf(v68.f32[0], 0.0) * v69, v70);
  v31 = vmlaq_f32(vmulq_f32(v73, vdupq_n_s32(0x3F266666u)), vdupq_n_s32(0x3EB33333u), vaddq_f32(vmulq_laneq_f32(xmmword_19CF26E10, v68, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26E00, *v68.f32, 1), vmulq_n_f32(xmmword_19CF26DF0, v30 + v30))));
  v32 = v20 + 0.1;
  v33 = sqrtf(v79) / v32;
  if (v33 <= 1.0)
  {
    v34 = v33;
  }

  else
  {
    v34 = 1.0;
  }

  if (v33 >= 0.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  v74 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - ((v35 * v35) * ((v35 * -2.0) + 3.0))), v31, (v35 * v35) * ((v35 * -2.0) + 3.0)), 1.0 - v79), v81, v79);
  v36.i64[0] = 0x8000000080000000;
  v36.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v71 = vandq_s8(vorrq_s8(vandq_s8(v81, v36), _Q2), vorrq_s8(vcltzq_f32(v81), vcgtzq_f32(v81)));
  v36.i32[1] = v80.i32[1];
  v42 = vmulq_laneq_f32(vabsq_f32(v81), v80, 3);
  *v36.i32 = 2.0 - v80.f32[1];
  v42.i32[3] = 0;
  v43 = vdupq_lane_s32(*v36.i8, 0);
  v43.i32[3] = 0;
  v44 = vmulq_f32(v71, _simd_pow_f4(v42, v43));
  v45 = vmulq_f32(v44, xmmword_19CF23D60);
  v46 = (v45.f32[2] + vaddv_f32(*v45.f32));
  v47 = v46 * -2.6 + v46 * -2.6 * v46 + 0.98;
  v48 = v46 * -6.25 + v46 * -6.25 * v46 + 0.5965;
  v49 = fmaxf(fmaxf(v47, v48), 1.0);
  v50 = v80.f32[1] + 0.3;
  v51.i32[1] = 1071225241;
  v52 = (1.0 - fminf(v50, 1.0)) * 0.4 + 1.0;
  *v51.i32 = (1.0 - v52) * 0.25;
  v53 = (1.0 - v80.f32[1]) * fminf(v49, v75 * 30.0);
  v54 = vmlaq_n_f32(vmulq_n_f32(v44, 1.0 - v53), vmlaq_n_f32(vdupq_lane_s32(v51, 0), v44, v52), v53);
  v55 = (v79 + -0.2) / 0.6;
  if (v55 <= 1.0)
  {
    v56 = (v79 + -0.2) / 0.6;
  }

  else
  {
    v56 = 1.0;
  }

  if (v55 >= 0.0)
  {
    v57 = v56;
  }

  else
  {
    v57 = 0.0;
  }

  v58 = vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - ((v57 * v57) * ((v57 * -2.0) + 3.0))), v54, (v57 * v57) * ((v57 * -2.0) + 3.0));
  v59 = fminf(v79, 1.0);
  v60 = vmlaq_n_f32(vmulq_n_f32(v74, 1.0 - v59), vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - v75), v58, v75), v59);
  v61 = vmulq_f32(v60, xmmword_19CF23D60);
  *v61.i64 = (v61.f32[2] + vaddv_f32(*v61.f32));
  v62 = *v61.i64 * -2.6 + *v61.i64 * -2.6 * *v61.i64 + 0.98;
  v61.f32[0] = *v61.i64 * -6.25 + *v61.i64 * -6.25 * *v61.i64 + 0.5965;
  v61.f32[0] = fmaxf(v62, v61.f32[0]);
  v63 = 1.0 - v80.f32[2];
  v64 = v63 * (fabsf(v20) * 0.1);
  v65 = v64 + 1.0;
  *&v63 = (1.0 - v65) * 0.5;
  v61.f32[0] = fminf(fmaxf(v61.f32[0], 1.0), v75 * 30.0);
  v66 = vmlaq_n_f32(vmulq_n_f32(v60, 1.0 - v61.f32[0]), vmlaq_n_f32(vdupq_lane_s32(*&v63, 0), v60, v65), v61.f32[0]);
  v66.i32[3] = 0;
  *&result = vaddq_f32(v77, vmaxnmq_f32(v66, 0)).u64[0];
  return result;
}

double CI::sw_highlightsAndShadows_noblur2(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v81 = *v11;
  v82 = *v7->f32;
  v12 = *v7->f32;
  v12.i32[3] = 0;
  v78 = v12;
  v74 = vmaxnmq_f32(v12, 0);
  v13 = vmulq_f32(v74, xmmword_19CF26DA0);
  LODWORD(v14) = HIDWORD(*v7);
  LODWORD(v15) = v7[1];
  v16 = COERCE_FLOAT(*v11);
  v17 = pow(fminf((v13.f32[2] + vaddv_f32(*v13.f32)) / fmaxf(v15 + vaddv_f32(*v7), 0.001), 1.0), 1.0 - v16) * v16;
  v18 = v17;
  *&v17 = -v18;
  v19 = vsubq_f32(vdupq_lane_s32(*&v17, 0), v82);
  v19.i32[3] = 0;
  v20 = vaddq_f32(vdupq_laneq_s32(v81, 2), vmulq_n_f32(_simd_pow_f4(xmmword_19CF26DB0, v19), 1.0 - v81.f32[2]));
  v72 = v20.f32[0];
  v77 = fmaxf(fmaxf(fmaxf(v82.f32[0], v14), v15), 0.0);
  v80 = sqrtf(v77);
  v21 = (v81.f32[0] + -0.5) + (v81.f32[0] + -0.5);
  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = (v81.f32[0] + -0.5) + (v81.f32[0] + -0.5);
  }

  if (v21 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = ((v23 * v23) * ((v23 * -2.0) + 3.0)) * 0.5 + 0.5;
  v79 = vminnmq_f32(v78, 0);
  v71 = v24;
  v25 = vmulq_n_f32(v74, v24);
  v25.i32[3] = 0;
  v26 = v20;
  v26.i32[3] = 0;
  v27 = vmulq_n_f32(_simd_pow_f4(v25, v26), v18 + 1.0);
  v75 = vaddq_f32(v27, v27);
  v28 = vmulq_laneq_f32(xmmword_19CF26DE0, v82, 2);
  v29 = vaddq_f32(v28, vaddq_f32(vmulq_lane_f32(xmmword_19CF26DD0, *v82.f32, 1), vmulq_n_f32(xmmword_19CF26DC0, v82.f32[0])));
  v70 = v29;
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  v28.i32[0] = 1.0;
  LODWORD(v30) = vbslq_s8(v27, v28, v29).u32[0];
  if (*v29.i32 == 0.0)
  {
    v30 = 0.0;
  }

  v31 = v30;
  v32 = powf(fabsf(*v29.i32) * v71, v72);
  v33 = vmlaq_f32(vmulq_f32(v75, vdupq_n_s32(0x3F266666u)), vdupq_n_s32(0x3EB33333u), vaddq_f32(vmulq_laneq_f32(xmmword_19CF26E10, v70, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26E00, *v70.f32, 1), vmulq_n_f32(xmmword_19CF26DF0, (v31 * v32) + (v31 * v32)))));
  v34 = v18 + 0.1;
  v35 = sqrtf(v80) / v34;
  if (v35 <= 1.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 1.0;
  }

  if (v35 >= 0.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  v76 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v82, 1.0 - ((v37 * v37) * ((v37 * -2.0) + 3.0))), v33, (v37 * v37) * ((v37 * -2.0) + 3.0)), 1.0 - v80), v82, v80);
  v38.i64[0] = 0x8000000080000000;
  v38.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v73 = vandq_s8(vorrq_s8(vandq_s8(v82, v38), _Q2), vorrq_s8(vcltzq_f32(v82), vcgtzq_f32(v82)));
  v38.i32[1] = v81.i32[1];
  v44 = vmulq_laneq_f32(vabsq_f32(v82), v81, 3);
  *v38.i32 = 2.0 - v81.f32[1];
  v44.i32[3] = 0;
  v45 = vdupq_lane_s32(*v38.i8, 0);
  v45.i32[3] = 0;
  v46 = vmulq_f32(_simd_pow_f4(v44, v45), v73);
  v47 = vmulq_f32(v46, xmmword_19CF23D60);
  v48 = (v47.f32[2] + vaddv_f32(*v47.f32));
  v49 = v48 * -2.6 + v48 * -2.6 * v48 + 0.98;
  v50 = v48 * -6.25 + v48 * -6.25 * v48 + 0.5965;
  v51 = fmaxf(fmaxf(v49, v50), 1.0);
  v52 = v81.f32[1] + 0.3;
  v53.i32[1] = 1071225241;
  v54 = (1.0 - fminf(v52, 1.0)) * 0.4 + 1.0;
  *v53.i32 = (1.0 - v54) * 0.25;
  v55 = (1.0 - v81.f32[1]) * fminf(v51, v77 * 30.0);
  v56 = vmlaq_n_f32(vmulq_n_f32(v46, 1.0 - v55), vmlaq_n_f32(vdupq_lane_s32(v53, 0), v46, v54), v55);
  v57 = (v80 + -0.2) / 0.6;
  if (v57 <= 1.0)
  {
    v58 = (v80 + -0.2) / 0.6;
  }

  else
  {
    v58 = 1.0;
  }

  if (v57 >= 0.0)
  {
    v59 = v58;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = vmlaq_n_f32(vmulq_n_f32(v82, 1.0 - ((v59 * v59) * ((v59 * -2.0) + 3.0))), v56, (v59 * v59) * ((v59 * -2.0) + 3.0));
  v61 = fminf(v80, 1.0);
  v62 = vmlaq_n_f32(vmulq_n_f32(v76, 1.0 - v61), vmlaq_n_f32(vmulq_n_f32(v82, 1.0 - v77), v60, v77), v61);
  v63 = vmulq_f32(v62, xmmword_19CF23D60);
  *v63.i64 = (v63.f32[2] + vaddv_f32(*v63.f32));
  v64 = *v63.i64 * -2.6 + *v63.i64 * -2.6 * *v63.i64 + 0.98;
  v63.f32[0] = *v63.i64 * -6.25 + *v63.i64 * -6.25 * *v63.i64 + 0.5965;
  v63.f32[0] = fmaxf(v64, v63.f32[0]);
  v65 = 1.0 - v81.f32[2];
  v66 = v65 * (fabsf(v18) * 0.1);
  v67 = v66 + 1.0;
  *&v65 = (1.0 - v67) * 0.5;
  v63.f32[0] = fminf(fmaxf(v63.f32[0], 1.0), v77 * 30.0);
  v68 = vmlaq_n_f32(vmulq_n_f32(v62, 1.0 - v63.f32[0]), vmlaq_n_f32(vdupq_lane_s32(*&v65, 0), v62, v67), v63.f32[0]);
  v68.i32[3] = 0;
  *&result = vaddq_f32(v79, vmaxnmq_f32(v68, 0)).u64[0];
  return result;
}

unint64_t CI::sw_highlightsAndShadows1(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v84 = *v7->f32;
  v81 = *v11;
  v83 = *v15;
  v16 = *v7->f32;
  v16.i32[3] = 0;
  v17 = vmulq_f32(vmaxnmq_f32(v16, 0), xmmword_19CF26DA0);
  v18 = COERCE_FLOAT(*v15);
  v19 = pow(fminf((v17.f32[2] + vaddv_f32(*v17.f32)) / fmaxf(COERCE_FLOAT(*&v7[1]) + vaddv_f32(*v7), 0.001), 1.0), 1.0 - v18) * v18;
  v20 = v19;
  *&v19 = -v20;
  v21 = vsubq_f32(vdupq_lane_s32(*&v19, 0), v81);
  v21.i32[3] = 0;
  v22 = vaddq_f32(vdupq_laneq_s32(v83, 2), vmulq_n_f32(_simd_pow_f4(xmmword_19CF26DB0, v21), 1.0 - v83.f32[2]));
  v74 = v22.f32[0];
  v79 = fmaxf(fmaxf(fmaxf(v81.f32[0], v81.f32[1]), v81.f32[2]), 0.0);
  v80 = sqrtf(v79);
  v23 = (v83.f32[0] + -0.5) + (v83.f32[0] + -0.5);
  v24 = 1.0;
  if (v23 <= 1.0)
  {
    v24 = (v83.f32[0] + -0.5) + (v83.f32[0] + -0.5);
  }

  if (v23 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = ((v25 * v25) * ((v25 * -2.0) + 3.0)) * 0.5 + 0.5;
  v75 = v26;
  v27.i64[0] = 0x8000000080000000;
  v27.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v82 = vbslq_s8(vorrq_s8(vcltzq_f32(v84), vcgtzq_f32(v84)), vorrq_s8(vandq_s8(v84, v27), _Q2), 0);
  v76 = vabsq_f32(v84);
  v33 = vmulq_n_f32(v76, v26);
  v33.i32[3] = 0;
  v34 = v22;
  v34.i32[3] = 0;
  v35 = vmulq_f32(_simd_pow_f4(v33, v34), v82);
  v77 = vaddq_f32(v35, v35);
  v36 = vmulq_laneq_f32(xmmword_19CF26DE0, v84, 2);
  v37 = vaddq_f32(v36, vaddq_f32(vmulq_lane_f32(xmmword_19CF26DD0, *v84.f32, 1), vmulq_n_f32(xmmword_19CF26DC0, v84.f32[0])));
  v73 = v37;
  v35.i64[0] = 0x8000000080000000;
  v35.i64[1] = 0x8000000080000000;
  v36.i32[0] = 1.0;
  LODWORD(v38) = vbslq_s8(v35, v36, v37).u32[0];
  if (*v37.i32 == 0.0)
  {
    v38 = 0.0;
  }

  v39 = v38;
  v40 = powf(fabsf(*v37.i32) * v75, v74);
  v41 = vmlaq_f32(vmulq_f32(v77, vdupq_n_s32(0x3F266666u)), vdupq_n_s32(0x3EB33333u), vaddq_f32(vmulq_laneq_f32(xmmword_19CF26E10, v73, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26E00, *v73.f32, 1), vmulq_n_f32(xmmword_19CF26DF0, (v39 * v40) + (v39 * v40)))));
  v42 = v20 + 0.1;
  v43 = sqrtf(v80) / v42;
  if (v43 <= 1.0)
  {
    v44 = v43;
  }

  else
  {
    v44 = 1.0;
  }

  if (v43 >= 0.0)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = sqrtf((v45 * v45) * ((v45 * -2.0) + 3.0));
  v78 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v84, 1.0 - v46), v41, v46), 1.0 - v80), v84, v80);
  v47.i32[1] = v83.i32[1];
  v48 = vmulq_laneq_f32(v76, v83, 3);
  *v47.i32 = 2.0 - v83.f32[1];
  v48.i32[3] = 0;
  v49 = vdupq_lane_s32(v47, 0);
  v49.i32[3] = 0;
  v50 = vmulq_f32(_simd_pow_f4(v48, v49), v82);
  v51 = vmulq_f32(v50, xmmword_19CF23D60);
  v52 = (v51.f32[2] + vaddv_f32(*v51.f32));
  v53 = v52 * -2.6 + v52 * -2.6 * v52 + 0.98;
  v54 = v52 * -6.25 + v52 * -6.25 * v52 + 0.5965;
  v55 = fmaxf(fmaxf(v53, v54), 1.0);
  v56 = v83.f32[1] + 0.3;
  v57.i32[1] = 1071225241;
  v58 = (1.0 - fminf(v56, 1.0)) * 0.4 + 1.0;
  *v57.i32 = (1.0 - v58) * 0.25;
  v59 = (1.0 - v83.f32[1]) * fminf(v55, v79 * 30.0);
  v60 = vmlaq_n_f32(vmulq_n_f32(v50, 1.0 - v59), vmlaq_n_f32(vdupq_lane_s32(v57, 0), v50, v58), v59);
  v61 = (v80 + -0.2) / 0.6;
  if (v61 <= 1.0)
  {
    v62 = (v80 + -0.2) / 0.6;
  }

  else
  {
    v62 = 1.0;
  }

  if (v61 >= 0.0)
  {
    v63 = v62;
  }

  else
  {
    v63 = 0.0;
  }

  v64 = vmlaq_n_f32(vmulq_n_f32(v84, 1.0 - v79), vmlaq_n_f32(vmulq_n_f32(v84, 1.0 - ((v63 * v63) * ((v63 * -2.0) + 3.0))), v60, (v63 * v63) * ((v63 * -2.0) + 3.0)), v79);
  v65 = fminf(v80, 1.0);
  v66 = vmlaq_n_f32(vmulq_n_f32(v78, 1.0 - v65), v64, v65);
  v67 = vmulq_f32(v66, xmmword_19CF23D60);
  *v67.i64 = (v67.f32[2] + vaddv_f32(*v67.f32));
  v68 = *v67.i64 * -2.6 + *v67.i64 * -2.6 * *v67.i64 + 0.98;
  v67.f32[0] = *v67.i64 * -6.25 + *v67.i64 * -6.25 * *v67.i64 + 0.5965;
  v67.f32[0] = fmaxf(fmaxf(v68, v67.f32[0]), 1.0);
  v69 = 1.0 - v83.f32[2];
  v70 = v69 * (fabsf(v20) * 0.1);
  v71 = v70 + 1.0;
  *&v69 = (1.0 - v71) * 0.5;
  v67.f32[0] = fminf(v67.f32[0], v79 * 30.0);
  return vmlaq_n_f32(vmulq_n_f32(v66, 1.0 - v67.f32[0]), vmlaq_n_f32(vdupq_lane_s32(*&v69, 0), v66, v71), v67.f32[0]).u64[0];
}

unint64_t CI::sw_highlightsAndShadows_noblur1(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v80 = *v11;
  v81 = *v7->f32;
  v12 = *v7->f32;
  v12.i32[3] = 0;
  v13 = vmulq_f32(vmaxnmq_f32(v12, 0), xmmword_19CF26DA0);
  LODWORD(v14) = HIDWORD(*v7);
  LODWORD(v15) = v7[1];
  v16 = COERCE_FLOAT(*v11);
  v17 = pow(fminf((v13.f32[2] + vaddv_f32(*v13.f32)) / fmaxf(v15 + vaddv_f32(*v7), 0.001), 1.0), 1.0 - v16) * v16;
  v18 = v17;
  *&v17 = -v18;
  v19 = vsubq_f32(vdupq_lane_s32(*&v17, 0), v81);
  v19.i32[3] = 0;
  v20 = vaddq_f32(vdupq_laneq_s32(v80, 2), vmulq_n_f32(_simd_pow_f4(xmmword_19CF26DB0, v19), 1.0 - v80.f32[2]));
  v72 = v20.f32[0];
  v77 = fmaxf(fmaxf(fmaxf(v81.f32[0], v14), v15), 0.0);
  v78 = sqrtf(v77);
  v21 = (v80.f32[0] + -0.5) + (v80.f32[0] + -0.5);
  v22 = 1.0;
  if (v21 <= 1.0)
  {
    v22 = (v80.f32[0] + -0.5) + (v80.f32[0] + -0.5);
  }

  if (v21 >= 0.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = ((v23 * v23) * ((v23 * -2.0) + 3.0)) * 0.5 + 0.5;
  v25.i64[0] = 0x8000000080000000;
  v25.i64[1] = 0x8000000080000000;
  __asm { FMOV            V2.4S, #1.0 }

  v79 = vbslq_s8(vorrq_s8(vcltzq_f32(v81), vcgtzq_f32(v81)), vorrq_s8(vandq_s8(v81, v25), _Q2), 0);
  v73 = v24;
  v74 = vabsq_f32(v81);
  v31 = vmulq_n_f32(v74, v24);
  v31.i32[3] = 0;
  v32 = v20;
  v32.i32[3] = 0;
  v33 = vmulq_f32(_simd_pow_f4(v31, v32), v79);
  v75 = vaddq_f32(v33, v33);
  v34 = vmulq_laneq_f32(xmmword_19CF26DE0, v81, 2);
  v35 = vaddq_f32(v34, vaddq_f32(vmulq_lane_f32(xmmword_19CF26DD0, *v81.f32, 1), vmulq_n_f32(xmmword_19CF26DC0, v81.f32[0])));
  v71 = v35;
  v33.i64[0] = 0x8000000080000000;
  v33.i64[1] = 0x8000000080000000;
  v34.i32[0] = 1.0;
  LODWORD(v36) = vbslq_s8(v33, v34, v35).u32[0];
  if (*v35.i32 == 0.0)
  {
    v36 = 0.0;
  }

  v37 = v36;
  v38 = powf(fabsf(*v35.i32) * v73, v72);
  v39 = vmlaq_f32(vmulq_f32(v75, vdupq_n_s32(0x3F266666u)), vdupq_n_s32(0x3EB33333u), vaddq_f32(vmulq_laneq_f32(xmmword_19CF26E10, v71, 2), vaddq_f32(vmulq_lane_f32(xmmword_19CF26E00, *v71.f32, 1), vmulq_n_f32(xmmword_19CF26DF0, (v37 * v38) + (v37 * v38)))));
  v40 = v18 + 0.1;
  v41 = sqrtf(v78) / v40;
  if (v41 <= 1.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 1.0;
  }

  if (v41 >= 0.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0.0;
  }

  v44 = sqrtf((v43 * v43) * ((v43 * -2.0) + 3.0));
  v76 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - v44), v39, v44), 1.0 - v78), v81, v78);
  v45.i32[1] = v80.i32[1];
  v46 = vmulq_laneq_f32(v74, v80, 3);
  *v45.i32 = 2.0 - v80.f32[1];
  v46.i32[3] = 0;
  v47 = vdupq_lane_s32(v45, 0);
  v47.i32[3] = 0;
  v48 = vmulq_f32(_simd_pow_f4(v46, v47), v79);
  v49 = vmulq_f32(v48, xmmword_19CF23D60);
  v50 = (v49.f32[2] + vaddv_f32(*v49.f32));
  v51 = v50 * -2.6 + v50 * -2.6 * v50 + 0.98;
  v52 = v50 * -6.25 + v50 * -6.25 * v50 + 0.5965;
  v53 = fmaxf(fmaxf(v51, v52), 1.0);
  v54 = v80.f32[1] + 0.3;
  v55.i32[1] = 1071225241;
  v56 = (1.0 - fminf(v54, 1.0)) * 0.4 + 1.0;
  *v55.i32 = (1.0 - v56) * 0.25;
  v57 = (1.0 - v80.f32[1]) * fminf(v53, v77 * 30.0);
  v58 = vmlaq_n_f32(vmulq_n_f32(v48, 1.0 - v57), vmlaq_n_f32(vdupq_lane_s32(v55, 0), v48, v56), v57);
  v59 = (v78 + -0.2) / 0.6;
  if (v59 <= 1.0)
  {
    v60 = (v78 + -0.2) / 0.6;
  }

  else
  {
    v60 = 1.0;
  }

  if (v59 >= 0.0)
  {
    v61 = v60;
  }

  else
  {
    v61 = 0.0;
  }

  v62 = vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - v77), vmlaq_n_f32(vmulq_n_f32(v81, 1.0 - ((v61 * v61) * ((v61 * -2.0) + 3.0))), v58, (v61 * v61) * ((v61 * -2.0) + 3.0)), v77);
  v63 = fminf(v78, 1.0);
  v64 = vmlaq_n_f32(vmulq_n_f32(v76, 1.0 - v63), v62, v63);
  v65 = vmulq_f32(v64, xmmword_19CF23D60);
  *v65.i64 = (v65.f32[2] + vaddv_f32(*v65.f32));
  v66 = *v65.i64 * -2.6 + *v65.i64 * -2.6 * *v65.i64 + 0.98;
  v65.f32[0] = *v65.i64 * -6.25 + *v65.i64 * -6.25 * *v65.i64 + 0.5965;
  v65.f32[0] = fmaxf(fmaxf(v66, v65.f32[0]), 1.0);
  v67 = 1.0 - v80.f32[2];
  v68 = v67 * (fabsf(v18) * 0.1);
  v69 = v68 + 1.0;
  *&v67 = (1.0 - v69) * 0.5;
  v65.f32[0] = fminf(v65.f32[0], v77 * 30.0);
  return vmlaq_n_f32(vmulq_n_f32(v64, 1.0 - v65.f32[0]), vmlaq_n_f32(vdupq_lane_s32(*&v67, 0), v64, v69), v65.f32[0]).u64[0];
}

unint64_t CI::sw_highlightsAndShadows0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v71 = *v7->f32;
  v16 = *v7->f32;
  v16.i32[3] = 0;
  v65 = v16;
  v68 = *v11;
  v70 = *v15;
  v17 = vmulq_f32(vmaxnmq_f32(v16, 0), xmmword_19CF26DA0);
  v18 = (v17.f32[2] + vaddv_f32(*v17.f32)) / fmaxf(COERCE_FLOAT(*&v7[1]) + vaddv_f32(*v7), 0.001);
  if (v18 <= 1.0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1.0;
  }

  if (v18 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = powf(v20, fmaxf(1.0 - COERCE_FLOAT(*v15), 0.0));
  v22 = v21 * v70.f32[0];
  v23 = vmaxnmq_f32(v65, xmmword_19CF23BC0);
  v23.i32[3] = 0;
  v24 = vminnmq_f32(v23, xmmword_19CF23060);
  v25 = (v24.f32[2] + vaddv_f32(*v24.f32)) * 0.33333;
  v26 = 1.0 / (1.0 - v25);
  v27 = -(v24.f32[2] - v24.f32[1] * 2.0);
  v24.f32[0] = fmaxf(fminf(v24.f32[0] - v24.f32[1], v27), 0.0) * 4.0 * (1.0 - fmaxf((v24.f32[0] - v25) * v26, (v25 - v24.f32[0]) * (1.0 / v25))) * (1.0 / v25);
  *v24.i64 = fminf(v24.f32[0], 1.0) * 0.7 + 0.15;
  v24.f32[0] = *v24.i64;
  v66 = *v24.f32;
  *v28.i32 = -(v70.f32[0] * v21);
  v29 = vsubq_f32(vdupq_lane_s32(v28, 0), v68);
  v29.i32[3] = 0;
  v30 = _simd_pow_f4(xmmword_19CF26DB0, v29);
  v31 = vaddq_f32(vdupq_laneq_s32(v70, 2), vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v30, 1.0 - *v66.i32), vdupq_lane_s32(v66, 0), fminf(v30.f32[0], fminf(v30.f32[1], v30.f32[2]))), 1.0 - v70.f32[2]));
  v32.i64[0] = 0x8000000080000000;
  v32.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v64 = vabsq_f32(v71);
  v67 = vbslq_s8(vorrq_s8(vcltzq_f32(v71), vcgtzq_f32(v71)), vorrq_s8(vandq_s8(v71, v32), _Q3), 0);
  v30.i64[0] = 0x3F0000003F000000;
  v30.i64[1] = 0x3F0000003F000000;
  v38 = vmulq_f32(v64, v30);
  v38.i32[3] = 0;
  v31.i32[3] = 0;
  v39 = vmulq_f32(_simd_pow_f4(v38, v31), v67);
  v40 = vaddq_f32(v39, v39);
  v63 = sqrtf(fmaxf(fmaxf(fmaxf(v68.f32[0], v68.f32[1]), v68.f32[2]), 0.0));
  v41 = v22 * 0.5 * v22 + 0.1;
  v42 = v63 / v41;
  if (v42 <= 1.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 1.0;
  }

  if (v42 >= 0.0)
  {
    v44 = v43;
  }

  else
  {
    v44 = 0.0;
  }

  v45 = sqrtf((v44 * v44) * ((v44 * -2.0) + 3.0));
  v46 = (1.0 - v45) * v45;
  v69 = vmlaq_n_f32(vmulq_n_f32(v40, 1.0 - v46), v71, v46);
  v47.i32[1] = v70.i32[1];
  v48 = vmulq_laneq_f32(v64, v70, 3);
  *v47.i32 = 2.0 - v70.f32[1];
  v48.i32[3] = 0;
  v49 = vdupq_lane_s32(v47, 0);
  v49.i32[3] = 0;
  v50 = vmulq_f32(v67, _simd_pow_f4(v48, v49));
  v51 = (v63 + -0.2) / 0.6;
  if (v51 <= 1.0)
  {
    v52 = (v63 + -0.2) / 0.6;
  }

  else
  {
    v52 = 1.0;
  }

  if (v51 >= 0.0)
  {
    v53 = v52;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = 1.0 - ((v53 * v53) * ((v53 * -2.0) + 3.0));
  v55 = vmlaq_n_f32(vmulq_n_f32(v69, 1.0 - v63), vmlaq_n_f32(vmulq_n_f32(v50, 1.0 - v54), v71, v54), v63);
  v56 = vmulq_f32(v55, xmmword_19CF23D60);
  *v56.i64 = (v56.f32[2] + vaddv_f32(*v56.f32));
  v57 = *v56.i64 * -2.6 + *v56.i64 * -2.6 * *v56.i64 + 0.98;
  v56.f32[0] = *v56.i64 * -6.25 + *v56.i64 * -6.25 * *v56.i64 + 0.5965;
  v56.f32[0] = fmaxf(fmaxf(v57, v56.f32[0]), 1.0);
  v58.i32[1] = 1068079513;
  v59 = fabsf(v22) * 0.05 + 1.0;
  *v58.i32 = (1.0 - v59) * 0.5;
  v60 = vmlaq_n_f32(vdupq_lane_s32(v58, 0), v55, v59);
  v61 = v63 * 30.0 * v63;
  v56.f32[0] = fminf(v56.f32[0], v61);
  return vmlaq_n_f32(vmulq_n_f32(v55, 1.0 - v56.f32[0]), v60, v56.f32[0]).u64[0];
}

unint64_t CI::sw_highlightsAndShadows_noblur0(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v66 = *v7->f32;
  v12 = *v7->f32;
  v12.i32[3] = 0;
  v62 = v12;
  v65 = *v11;
  v13 = vmulq_f32(vmaxnmq_f32(v12, 0), xmmword_19CF26DA0);
  LODWORD(v14) = HIDWORD(*v7);
  v15 = COERCE_FLOAT(*&v7[1]);
  v16 = (v13.f32[2] + vaddv_f32(*v13.f32)) / fmaxf(v15 + vaddv_f32(*v7), 0.001);
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
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = powf(v18, fmaxf(1.0 - COERCE_FLOAT(*v11), 0.0));
  v20 = v19 * v65.f32[0];
  v21 = vmaxnmq_f32(v62, xmmword_19CF23BC0);
  v21.i32[3] = 0;
  v22 = vminnmq_f32(v21, xmmword_19CF23060);
  v23 = (v22.f32[2] + vaddv_f32(*v22.f32)) * 0.33333;
  v24 = 1.0 / (1.0 - v23);
  v25 = -(v22.f32[2] - v22.f32[1] * 2.0);
  v22.f32[0] = fmaxf(fminf(v22.f32[0] - v22.f32[1], v25), 0.0) * 4.0 * (1.0 - fmaxf((v22.f32[0] - v23) * v24, (v23 - v22.f32[0]) * (1.0 / v23))) * (1.0 / v23);
  *v22.i64 = fminf(v22.f32[0], 1.0) * 0.7 + 0.15;
  v22.f32[0] = *v22.i64;
  v63 = *v22.f32;
  *v26.i32 = -(v65.f32[0] * v19);
  v27 = vsubq_f32(vdupq_lane_s32(v26, 0), v66);
  v27.i32[3] = 0;
  v28 = _simd_pow_f4(xmmword_19CF26DB0, v27);
  v29 = vaddq_f32(vdupq_laneq_s32(v65, 2), vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v28, 1.0 - *v63.i32), vdupq_lane_s32(v63, 0), fminf(v28.f32[0], fminf(v28.f32[1], v28.f32[2]))), 1.0 - v65.f32[2]));
  v30.i64[0] = 0x8000000080000000;
  v30.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v61 = vabsq_f32(v66);
  v64 = vbslq_s8(vorrq_s8(vcltzq_f32(v66), vcgtzq_f32(v66)), vorrq_s8(vandq_s8(v66, v30), _Q3), 0);
  v28.i64[0] = 0x3F0000003F000000;
  v28.i64[1] = 0x3F0000003F000000;
  v36 = vmulq_f32(v61, v28);
  v36.i32[3] = 0;
  v29.i32[3] = 0;
  v37 = vmulq_f32(_simd_pow_f4(v36, v29), v64);
  v38 = vaddq_f32(v37, v37);
  v59 = sqrtf(fmaxf(fmaxf(fmaxf(v66.f32[0], v14), v15), 0.0));
  v39 = v20 * 0.5 * v20 + 0.1;
  v40 = v59 / v39;
  if (v40 <= 1.0)
  {
    v41 = v40;
  }

  else
  {
    v41 = 1.0;
  }

  if (v40 >= 0.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0.0;
  }

  v43 = sqrtf((v42 * v42) * ((v42 * -2.0) + 3.0));
  *&v43 = (1.0 - v43) * v43;
  v60 = vmlaq_n_f32(vmulq_n_f32(v38, 1.0 - *&v43), v66, *&v43);
  HIDWORD(v43) = v65.i32[1];
  v44 = vmulq_laneq_f32(v61, v65, 3);
  *&v43 = 2.0 - v65.f32[1];
  v44.i32[3] = 0;
  v45 = vdupq_lane_s32(*&v43, 0);
  v45.i32[3] = 0;
  v46 = vmulq_f32(_simd_pow_f4(v44, v45), v64);
  v47 = (v59 + -0.2) / 0.6;
  if (v47 <= 1.0)
  {
    v48 = (v59 + -0.2) / 0.6;
  }

  else
  {
    v48 = 1.0;
  }

  if (v47 >= 0.0)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0.0;
  }

  v50 = 1.0 - ((v49 * v49) * ((v49 * -2.0) + 3.0));
  v51 = vmlaq_n_f32(vmulq_n_f32(v60, 1.0 - v59), vmlaq_n_f32(vmulq_n_f32(v46, 1.0 - v50), v66, v50), v59);
  v52 = vmulq_f32(v51, xmmword_19CF23D60);
  *v52.i64 = (v52.f32[2] + vaddv_f32(*v52.f32));
  v53 = *v52.i64 * -2.6 + *v52.i64 * -2.6 * *v52.i64 + 0.98;
  v52.f32[0] = *v52.i64 * -6.25 + *v52.i64 * -6.25 * *v52.i64 + 0.5965;
  v52.f32[0] = fmaxf(fmaxf(v53, v52.f32[0]), 1.0);
  v54.i32[1] = 1068079513;
  v55 = fabsf(v20) * 0.05 + 1.0;
  *v54.i32 = (1.0 - v55) * 0.5;
  v56 = vmlaq_n_f32(vdupq_lane_s32(v54, 0), v51, v55);
  v57 = v59 * 30.0 * v59;
  v52.f32[0] = fminf(v52.f32[0], v57);
  return vmlaq_n_f32(vmulq_n_f32(v51, 1.0 - v52.f32[0]), v56, v52.f32[0]).u64[0];
}

unint64_t CI::sw_shadows_noblur(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v56 = *v11;
  v58 = *v7->f32;
  v12 = *v7->f32;
  v12.i32[3] = 0;
  v54 = v12;
  v13 = vmulq_f32(vmaxnmq_f32(v12, 0), xmmword_19CF26DA0);
  LODWORD(v14) = HIDWORD(*v7);
  LODWORD(v15) = v7[1];
  v16 = (v13.f32[2] + vaddv_f32(*v13.f32)) / fmaxf(v15 + vaddv_f32(*v7), 0.001);
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
    v18 = v17;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = powf(v18, fmaxf(1.0 - COERCE_FLOAT(*v11), 0.0));
  v20 = v19 * *v56.i32;
  v21 = vmaxnmq_f32(v54, xmmword_19CF23BC0);
  v21.i32[3] = 0;
  v22 = vminnmq_f32(v21, xmmword_19CF23060);
  v23 = (v22.f32[2] + vaddv_f32(*v22.f32)) * 0.33333;
  v24 = 1.0 / (1.0 - v23);
  v25 = -(v22.f32[2] - v22.f32[1] * 2.0);
  v22.f32[0] = fmaxf(fminf(v22.f32[0] - v22.f32[1], v25), 0.0) * 4.0 * (1.0 - fmaxf((v22.f32[0] - v23) * v24, (v23 - v22.f32[0]) * (1.0 / v23))) * (1.0 / v23);
  *v22.i64 = fminf(v22.f32[0], 1.0) * 0.7 + 0.15;
  v22.f32[0] = *v22.i64;
  v55 = *v22.f32;
  *v26.i32 = -(*v56.i32 * v19);
  v27 = vsubq_f32(vdupq_lane_s32(v26, 0), v58);
  v27.i32[3] = 0;
  v28 = _simd_pow_f4(xmmword_19CF26DB0, v27);
  v29 = vaddq_f32(vdupq_laneq_s32(v56, 2), vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v28, 1.0 - *v55.i32), vdupq_lane_s32(v55, 0), fminf(v28.f32[0], fminf(v28.f32[1], v28.f32[2]))), 1.0 - *&v56.i32[2]));
  v30.i64[0] = 0x8000000080000000;
  v30.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v57 = vbslq_s8(vorrq_s8(vcltzq_f32(v58), vcgtzq_f32(v58)), vorrq_s8(vandq_s8(v58, v30), _Q3), 0);
  v30.i64[0] = 0x3F0000003F000000;
  v30.i64[1] = 0x3F0000003F000000;
  v36 = vmulq_f32(vabsq_f32(v58), v30);
  v36.i32[3] = 0;
  v29.i32[3] = 0;
  v37 = vmulq_f32(_simd_pow_f4(v36, v29), v57);
  v38 = vaddq_f32(v37, v37);
  v39 = sqrtf(fmaxf(fmaxf(fmaxf(v58.f32[0], v14), v15), 0.0));
  v40 = v20 * 0.5 * v20 + 0.1;
  v41 = v39 / v40;
  if (v41 <= 1.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = 1.0;
  }

  if (v41 >= 0.0)
  {
    v43 = v42;
  }

  else
  {
    v43 = 0.0;
  }

  v44 = sqrtf((v43 * v43) * ((v43 * -2.0) + 3.0));
  v45 = (1.0 - v44) * v44;
  v46 = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v38, 1.0 - v45), v58, v45), 1.0 - v39), v58, v39);
  v47 = vmulq_f32(v46, xmmword_19CF23D60);
  *v47.i64 = (v47.f32[2] + vaddv_f32(*v47.f32));
  v48 = *v47.i64 * -2.6 + *v47.i64 * -2.6 * *v47.i64 + 0.98;
  v47.f32[0] = *v47.i64 * -6.25 + *v47.i64 * -6.25 * *v47.i64 + 0.5965;
  v47.f32[0] = fmaxf(fmaxf(v48, v47.f32[0]), 1.0);
  v49.i32[1] = 1068079513;
  v50 = fabsf(v20) * 0.05 + 1.0;
  *v49.i32 = (1.0 - v50) * 0.5;
  v51 = v39 * 30.0 * v39;
  v52 = fminf(v47.f32[0], v51);
  return vmlaq_n_f32(vmulq_n_f32(v46, 1.0 - v52), vmlaq_n_f32(vdupq_lane_s32(v49, 0), v46, v50), v52).u64[0];
}

unint64_t CI::sw_histogram_display(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v11 = a4 + 80 * v5;
  v45 = *(a2 + (v6 << 6));
  v46 = *v10;
  v44 = *CI::getDC(a1);
  *&v12 = floorf(*v44.i32) + 0.5;
  v13.i32[0] = *(v11 + 28);
  v14.n128_f32[0] = *(v11 + 24) + ((*(v11 + 20) * 0.5) + (*&v12 * *(v11 + 16)));
  LODWORD(v15) = *(v11 + 32);
  v16.i32[0] = *(v11 + 36);
  *v17.f64 = *v16.i32 + ((*&v15 * 0.5) + (*&v12 * *v13.i32));
  v14.n128_f32[1] = *v17.f64;
  *v20.i64 = CI::BitmapSampler::read(*(v11 + 8), v14, v17, v12, v15, v13, v16, v18, v19);
  __asm { FMOV            V1.4S, #1.0 }

  v26 = vbicq_s8(_Q1, vcgtq_f32(vdupq_lane_s32(v44, 1), vmulq_n_f32(v20, v45)));
  *_Q1.i64 = v26.f32[1] + v26.f32[1] + v26.f32[0] * 4.0;
  *v26.i64 = *_Q1.i64 + v26.f32[2];
  v26.f32[0] = *v26.i64;
  _Q1.i32[0] = 4.0;
  v27.i32[0] = 6.0;
  v28 = vdupq_lane_s32(*&vceqq_f32(v26, v27), 0);
  v29 = xmmword_19CF26F20;
  v29.i32[0] = 2.0;
  v30 = vdupq_lane_s32(*&vceqq_f32(v26, v29), 0);
  v31 = vbslq_s8(v30, xmmword_19CF26F30, vbslq_s8(v28, xmmword_19CF26F20, vbslq_s8(vdupq_lane_s32(*&vceqq_f32(v26, _Q1), 0), xmmword_19CF26F10, xmmword_19CF26F00)));
  v30.i32[0] = 3.0;
  v32 = vdupq_lane_s32(*&vceqq_f32(v26, v30), 0);
  v33 = vbslq_s8(v32, xmmword_19CF26F40, v31);
  v32.i32[0] = 1.0;
  v34 = vdupq_lane_s32(*&vceqq_f32(v26, v32), 0);
  v35 = vbslq_s8(v34, xmmword_19CF26F50, v33);
  v34.i32[0] = 5.0;
  v36 = vdupq_lane_s32(*&vceqq_f32(v26, v34), 0);
  v37.f64[1] = 0.00781250183;
  v38 = vbslq_s8(v36, xmmword_19CF26F60, v35);
  v36.i32[0] = 7.0;
  v39 = vdupq_lane_s32(*&vceqq_f32(v26, v36), 0);
  v36.i64[1] = 0x3F8000003E99999ALL;
  v37.f64[0] = *v44.i32;
  v28.f64[0] = *&v46 + 0.5;
  v40 = vdupq_n_s32(0x3ECCCCCDu);
  v41 = vbslq_s8(v39, xmmword_19CF26F70, v38);
  *v36.i64 = *(&v46 + 1) + 0.5;
  v42 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(v28, v37).i64[0], 0), vmulq_f32(v41, v40), v41);
  return vbslq_s8(vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v37, v36)).i64[0], 0), v42, vaddq_f32(vmulq_f32(v42, vdupq_n_s32(0x3F19999Au)), v40)).u64[0];
}

double unionPointWithRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v5 = *&a1;
  v8.origin.y = *(&a1 + 1);
  v8.size.width = 0.0;
  v8.size.height = 0.0;
  v7.origin.x = a2;
  v7.origin.y = a3;
  v7.size.width = a4;
  v7.size.height = a5;
  v8.origin.x = v5;
  *&result = CGRectUnion(v7, v8);
  return result;
}

uint64_t CI::sw_holeDistortion(CI *a1, uint64_t a2, uint64_t a3)
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
  v13 = *(a2 + (*(v3 + 32) << 6));
  DC = CI::getDC(a1);
  v10 = vsub_f32(*DC, v8);
  v11 = vmul_f32(v10, v10);
  if (vaddv_f32(v11) > v13)
  {
    return vsub_f32(*CI::getDC(DC), vdiv_f32(vmul_n_f32(v10, v13), vdup_lane_s32(vadd_f32(v11, vdup_lane_s32(v11, 1)), 0)));
  }

  return v8;
}

double CI::sw_holeAntialias(CI *a1, uint64_t a2, uint64_t a3)
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

  v19 = *v7;
  v12 = *(a2 + (*(v3 + 56) << 6));
  v13 = vsub_f32(*CI::getDC(a1), *v11);
  v14 = sqrtf(vaddv_f32(vmul_f32(v13, v13))) - v12;
  v15 = 1.0;
  if (v14 <= 1.0)
  {
    v15 = v14;
  }

  v16 = v14 < 0.0;
  v17 = 0.0;
  if (!v16)
  {
    v17 = v15;
  }

  *&result = vmulq_n_f32(v19, v17).u64[0];
  return result;
}

uint64_t OptionAlphaMode(void *a1, unsigned int a2)
{
  if ([a1 objectForKey:@"CIImagePremultiplied"])
  {
    if ([objc_msgSend(a1 objectForKey:{@"CIImagePremultiplied", "BOOLValue"}])
    {
      a2 = 0;
    }

    else
    {
      a2 = 2;
    }
  }

  if ([objc_msgSend(a1 objectForKey:{@"kCIImageAlphaSkip", "BOOLValue"}])
  {
    a2 = -1;
  }

  if ([objc_msgSend(a1 objectForKey:{@"kCIImageAlphaOne", "BOOLValue"}])
  {
    return 1;
  }

  else
  {
    return a2;
  }
}

double OptionHeadroom(NSDictionary *a1)
{
  if (![(NSDictionary *)a1 objectForKey:@"kCIImageContentHeadroom"])
  {
    return 0.0;
  }

  v2 = [-[NSDictionary objectForKey:](a1 objectForKey:{@"kCIImageContentHeadroom", "floatValue"}];
  if (*&result < 1.0 && *&result != 0.0)
  {
    v5 = ci_logger_api(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      OptionHeadroom();
    }

    return 0.0;
  }

  return result;
}

double OptionAverageLightLevel(NSDictionary *a1)
{
  if ([(NSDictionary *)a1 objectForKey:@"kCIImageContentAverageLightLevel"])
  {
    v2 = [-[NSDictionary objectForKey:](a1 objectForKey:{@"kCIImageContentAverageLightLevel", "floatValue"}];
    if (*&result >= 0.0)
    {
      return result;
    }

    v5 = ci_logger_api(v2, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      OptionAverageLightLevel();
    }
  }

  return 0.0;
}

uint64_t getContentDigestFromOptions(NSDictionary *a1)
{
  v1 = [(NSDictionary *)a1 objectForKey:@"kCIImageContentDigest"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 length];
    if (v2 >= 0x10)
    {
      XXH64_reset(v11, 0);
      v4 = [v1 bytes];
      v5 = [v1 length];
      if (v4)
      {
        if (v5)
        {
          XXH64_update(v11, v4, v5);
        }
      }

      return XXH64_digest(v11);
    }

    v7 = ci_logger_api(v2, v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      getContentDigestFromOptions();
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v1 length];
      if (v8 >= 0x10)
      {
        XXH64_reset(v11, 0);
        CI::XXHashHelper::addstr(v11, [v1 UTF8String]);
        return XXH64_digest(v11);
      }

      v10 = ci_logger_api(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        getContentDigestFromOptions();
      }
    }

    return 0;
  }

  return [v1 unsignedLongLongValue];
}

uint64_t OptionIsRectVector(NSDictionary *a1, NSString *a2, CGRect *a3)
{
  v4 = *(MEMORY[0x1E695F050] + 16);
  *a2 = *MEMORY[0x1E695F050];
  *(a2 + 1) = v4;
  if (a1)
  {
    v5 = [(NSDictionary *)a1 objectForKey:@"kCIImageApplyCleanAperture"];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v5 CGRectValue];
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
  }

  return isKindOfClass & 1;
}

BOOL orientationTransform@<W0>(uint64_t *__return_ptr a1@<X8>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, int a3@<W0>)
{
  height = a2.size.height;
  width = a2.size.width;
  v40 = *MEMORY[0x1E69E9840];
  result = CGRectIsInfinite(a2);
  if (result)
  {
    v8 = MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *a1 = *MEMORY[0x1E695EFD0];
    *(a1 + 1) = v9;
    *(a1 + 2) = *(v8 + 32);
  }

  else
  {
    v19[0] = 0x3FF0000000000000;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = 0x3FF0000000000000;
    v19[4] = 0;
    v19[5] = 0;
    v19[6] = 0xBFF0000000000000;
    v19[7] = 0;
    v19[8] = 0;
    v19[9] = 0x3FF0000000000000;
    *&v19[10] = width;
    v19[11] = 0;
    v19[12] = 0xBFF0000000000000;
    v19[13] = 0;
    v19[14] = 0;
    v19[15] = 0xBFF0000000000000;
    *&v19[16] = width;
    *&v19[17] = height;
    v19[19] = 0;
    v19[20] = 0;
    v19[18] = 0x3FF0000000000000;
    v20 = xmmword_19CF25100;
    v21 = height;
    __asm { FMOV            V1.2D, #-1.0 }

    v23 = _Q1;
    v22 = 0;
    v24 = 0;
    v25 = height;
    v26 = width;
    v28 = xmmword_19CF27010;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v31 = width;
    v32 = xmmword_19CF26650;
    v34 = 0u;
    v35 = 0u;
    v33 = 0x3FF0000000000000;
    v36 = 0x3FF0000000000000;
    v37 = xmmword_19CF25100;
    v38 = height;
    v39 = 0;
    if ((a3 - 9) >= 0xFFFFFFF8)
    {
      v15 = a3 - 1;
    }

    else
    {
      v15 = 0;
    }

    v16 = &v19[6 * v15];
    v17 = *v16;
    v18 = v16[2];
    *(a1 + 1) = v16[1];
    *(a1 + 2) = v18;
    *a1 = v17;
  }

  return result;
}

const __CFNumber *_cgImageProviderGetProperty(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2)
    {
      result = CGImageProviderGetProperty();
      if (result)
      {
        v4 = result;
        v5 = CFGetTypeID(result);
        if (v5 == CFNumberGetTypeID())
        {
          valuePtr = 0;
          CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
          return valuePtr;
        }

        else
        {
          v6 = CFGetTypeID(v4);
          if (v6 == CFStringGetTypeID())
          {

            return CFStringGetIntValue(v4);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void CI::Tileable::TileRectGridMakeEqualSizedTilesWithImageSize(uint64_t *__return_ptr a1@<X8>, unint64_t this@<X0>, unint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v9 = this + a4 - 1;
  v10 = v9 / this;
  std::vector<std::vector<IRect>>::vector[abi:nn200100](a1, v9 / this);
  if (v9 >= this)
  {
    v11 = 0;
    v12 = a3 + a5 - 1;
    do
    {
      std::vector<IRect>::vector[abi:nn200100](&v18, v12 / a3);
      v13 = *a1 + 24 * v11;
      v14 = *v13;
      if (*v13)
      {
        *(v13 + 8) = v14;
        operator delete(v14);
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 16) = 0;
      }

      *v13 = v18;
      *(v13 + 16) = v19;
      if (v12 >= a3)
      {
        v15 = 0;
        v16 = 0;
        v17 = (*(*a1 + 24 * v11) + 8);
        do
        {
          *(v17 - 2) = v11 * this;
          *(v17 - 1) = v15;
          *v17 = this;
          v17[1] = a3;
          v17 += 3;
          ++v16;
          v15 += a3;
        }

        while (v16 < v12 / a3);
      }

      ++v11;
    }

    while (v11 < v10);
  }
}

BOOL iosurface_creatable_from_cgblock(_BOOL8 result)
{
  if (result)
  {
    CGImageBlockGetRect();
    v2 = v1;
    v4 = llround(v3);
    BytesPerRow = CGImageBlockGetBytesPerRow();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    iosurface_limits(&v7);
    return v4 <= v7 && llround(v2) <= v8 && BytesPerRow <= v9;
  }

  return result;
}

const void *IOSurfaceWrapPointerOk(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = malloc_size(result);
    v3 = getpagesize();
    if (v2 <= 32 * v3)
    {
      return 0;
    }

    else
    {
      return (v1 % v3 == 0);
    }
  }

  return result;
}

void SetSurfaceDeallocBlock(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [[BlockDeallocator alloc] initWithBlock:a2];
    objc_setAssociatedObject(a1, SetSurfaceDeallocBlock, v3, 1);
  }
}

const __CFDictionary *imageSourceCopyAuxiliaryDataInfo(CGImageSource *a1, size_t a2, const __CFString *a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(a1, a2, a3);
  v4 = v3;
  if (v3 && !CFDictionaryGetCount(v3))
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

void SetSurfaceBackingObject(__IOSurface *a1, id value)
{
  if (a1)
  {
    objc_setAssociatedObject(a1, SetSurfaceBackingObject, value, 1);
  }
}

CIImage *_noiseImage(char a1)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF88] dataWithLength:0x40000];
  v3 = [v2 mutableBytes];
  srandom(0x2Au);
  v4 = -4;
  do
  {
    v5 = random();
    v6 = random();
    v7 = random();
    *v3 = random();
    v3[1] = v7;
    v3[2] = v6;
    v3[3] = v5;
    v3 += 4;
    v4 += 4;
  }

  while (v4 < 0x3FFFC);
  if (a1)
  {
    v15[0] = @"CIImageColorSpace";
    v16[0] = [MEMORY[0x1E695DFB0] null];
    v16[1] = MEMORY[0x1E695E118];
    v15[1] = @"CIImageClampToEdge";
    v15[2] = @"CIImageNearestSampling";
    v15[3] = @"kCIImageCacheHint";
    v16[2] = MEMORY[0x1E695E118];
    v16[3] = MEMORY[0x1E695E118];
    v8 = MEMORY[0x1E695DF20];
    v9 = v16;
    v10 = v15;
    v11 = 4;
  }

  else
  {
    v13[0] = @"CIImageColorSpace";
    v14[0] = [MEMORY[0x1E695DFB0] null];
    v14[1] = MEMORY[0x1E695E118];
    v13[1] = @"CIImageClampToEdge";
    v13[2] = @"kCIImageCacheHint";
    v14[2] = MEMORY[0x1E695E118];
    v8 = MEMORY[0x1E695DF20];
    v9 = v14;
    v10 = v13;
    v11 = 3;
  }

  return -[CIImage initWithBitmapData:bytesPerRow:size:format:options:]([CIImage alloc], "initWithBitmapData:bytesPerRow:size:format:options:", v2, 1024, 266, [v8 dictionaryWithObjects:v9 forKeys:v10 count:v11], 256.0, 256.0);
}

id hdrRawImage(CIRAWFilter *a1, NSDictionary *a2, double a3)
{
  LODWORD(a3) = 1.0;
  [(CIRAWFilter *)a1 setExtendedDynamicRangeAmount:a3];
  result = [(CIRAWFilter *)a1 outputImage];
  if (result)
  {
    v5 = result;
    v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
    v7 = [v5 imageByTaggingWithColorSpace:v6];
    CGColorSpaceRelease(v6);
    return v7;
  }

  return result;
}

CIImage *implRenderToIntermediate(CIImage *a1, Trilean a2, BOOL a3)
{
  [(CIImage *)a1 extent];
  if (!CGRectIsEmpty(v6))
  {
    [(CIImage *)a1 _internalRepresentation];
    operator new();
  }

  return +[CIImage emptyImage];
}

uint64_t CI::Image::print_graph(CI::Image *this, __sFILE *a2)
{
  v33[128] = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  if (CI::print_graph_recursive<CI::Image,CI::ImageIndex,CI::Image::ImageStats>(__sFILE *,CI::Image const*,int,std::unordered_map<CI::ImageIndex,CI::Image::ImageStats> const&)::onceToken != -1)
  {
    CI::Image::print_graph();
  }

  if (this)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x5812000000;
    v21 = __Block_byref_object_copy__9;
    v22 = __Block_byref_object_dispose__9;
    v23 = &unk_19D0E11CF;
    memset(v24, 0, sizeof(v24));
    v25 = 1065353216;
    v10 = 0;
    v11 = &v10;
    v12 = 0x5812000000;
    v13 = __Block_byref_object_copy__1136;
    v14 = __Block_byref_object_dispose__1137;
    v15 = &unk_19D0E11CF;
    memset(v16, 0, sizeof(v16));
    v17 = 1065353216;
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(v24, 0x80uLL);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>((v11 + 12), vcvtps_u32_f32(128.0 / v11[20]));
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZN2CIL21print_graph_recursiveINS_5ImageENS_10ImageIndexENS1_10ImageStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke_1139;
    v9[3] = &unk_1E75C2F38;
    v9[4] = &v18;
    v9[5] = &v10;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = ___ZNK2CI5Image27traverse_preorder_stoppableEU13block_pointerFbPKS0_S2_iiE_block_invoke;
    v30 = &unk_1E75C2F88;
    v31 = v9;
    CI::GraphObject::traverse_preorder_stoppable(this, 0, 0, 0, &v27);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear(v19 + 6);
    v27 = 0;
    v28 = &v27;
    v29 = 0x43012000000;
    v30 = __Block_byref_object_copy__1141;
    v31 = __Block_byref_object_dispose__1142;
    v32 = &unk_19D0E11CF;
    bzero(v33, 0x400uLL);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ZN2CIL21print_graph_recursiveINS_5ImageENS_10ImageIndexENS1_10ImageStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke_1144;
    v7[3] = &unk_1E75C2F60;
    v8 = 1;
    v7[4] = &v27;
    v7[5] = &v18;
    v7[6] = &v10;
    v7[7] = a2;
    v7[8] = v5;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___ZNK2CI5Image27traverse_preorder_stoppableEU13block_pointerFbPKS0_S2_iiE_block_invoke;
    v26[3] = &unk_1E75C2F88;
    v26[4] = v7;
    CI::GraphObject::traverse_preorder_stoppable(this, 0, 0, 0, v26);
    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v10, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v16);
    _Block_object_dispose(&v18, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v24);
  }

  else
  {
    fprintf(a2, "%.*sNULL\n", 2, CI::print_graph_recursive<CI::Image,CI::ImageIndex,CI::Image::ImageStats>(__sFILE *,CI::Image const*,int,std::unordered_map<CI::ImageIndex,CI::Image::ImageStats> const&)::indent_str);
  }

  return std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v5);
}

uint64_t dictionaryDeepCopy(void *a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (![a1 count])
  {
    return MEMORY[0x1E695E0F8];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a1 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = *v19;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * i);
      if ((*(a2 + 16))(a2, v11))
      {
        [v4 addObject:v11];
        v12 = [a1 valueForKey:v11];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = dictionaryDeepCopy(v12, a2);
          v14 = v5;
        }

        else
        {
          if (objc_opt_respondsToSelector())
          {
            v15 = [v12 copy];
            [v5 addObject:v15];

            continue;
          }

          v14 = v5;
          v13 = v12;
        }

        [v14 addObject:v13];
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v8);
LABEL_16:
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4];

  return v16;
}

uint64_t *std::vector<std::vector<IRect>>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<IRect>>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void std::vector<std::vector<IRect>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<IRect>>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<IRect>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<IRect>::vector[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<IRect>::__vallocate[abi:nn200100](a1, a2);
  }

  return a1;
}

void std::vector<IRect>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<IRect>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<IRect>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<IRect>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<IRect>>::clear[abi:nn200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

CFTypeRef copyMetadataValue(const CGImageMetadata *a1, CFStringRef path)
{
  v2 = CGImageMetadataCopyTagWithPath(a1, 0, path);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CGImageMetadataTagCopyValue(v2);
  CFRelease(v3);
  if (v4)
  {
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v4))
    {
      CFAutorelease(v4);
      return v4;
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

double CI::sw_flexMap(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v27 = *v7;
  v12 = *(a2 + (*(v3 + 56) << 6));
  v13 = *(a2 + (*(v3 + 128) << 6));
  v25 = *(a2 + (*(v3 + 152) << 6));
  v26 = *(a2 + (*(v3 + 176) << 6));
  v14 = vabsq_f32(*v11);
  v14.i32[3] = 0;
  v15 = vmaxnmq_f32(v14, xmmword_19CF27020);
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v17 = vandq_s8(*v11, v16);
  __asm { FMOV            V4.4S, #1.0 }

  v15.i32[3] = 0;
  v12.i32[3] = 0;
  v23 = vmulq_n_f32(vaddq_f32(*(a2 + (*(v3 + 80) << 6)), vmulq_f32(vsubq_f32(*(a2 + (*(v3 + 104) << 6)), *(a2 + (*(v3 + 80) << 6))), vmulq_f32(vbslq_s8(vorrq_s8(vcltzq_f32(*v11), vcgtzq_f32(*v11)), vorrq_s8(v17, _Q4), 0), _simd_pow_f4(v15, v12)))), v13);
  v23.i32[3] = 0;
  *&result = vsubq_f32(vmulq_f32(vaddq_f32(v27, v25), _simd_exp2_f4(v23)), v26).u64[0];
  return result;
}

double CI::sw_gainMap(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v15 = *v7;
  v12 = *(a2 + (*(v3 + 56) << 6));
  v13 = (v12 + -1.0) * _simd_pow_f4(*v11, vdupq_n_s64(0x400CCCCD400CCCCDuLL)).f32[0] + 1.0;
  *&result = vmulq_n_f32(v15, v13).u64[0];
  return result;
}

void CI::GLTextureImage::~GLTextureImage(CI::GLTextureImage *this)
{
  CI::TextureImage::~TextureImage(this);

  JUMPOUT(0x19EAF5590);
}

_DWORD *CI::TextureImage::extent(_DWORD *this)
{
  if (!this[43])
  {
    return (*(*this + 96))(this);
  }

  return this;
}

uint64_t CI::TextureImage::max_dimension(CI::TextureImage *this)
{
  v1 = *(this + 40);
  v2 = *(this + 41);
  if (v1 <= v2)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t CI::Image::baseColorspace(CI::Image *this)
{
  v2 = (*(*this + 248))(this);
  v3 = *this;
  if (v2)
  {
    v4 = *(v3 + 248);

    return v4(this);
  }

  else
  {
    result = (*(v3 + 48))(this, 0);
    if (result)
    {
      v6 = *(*result + 256);

      return v6();
    }
  }

  return result;
}

void non-virtual thunk toCI::GLTextureImage::~GLTextureImage(CI::GLTextureImage *this)
{
  CI::TextureImage::~TextureImage((this - 120));
}

{
  CI::TextureImage::~TextureImage((this - 120));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::MetalTextureImage::MetalTextureImage(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v12 = a2;
  v9 = CI::TextureImage::TextureImage(a1, &v12, a3, a4, a5, a6, a7, a8);
  v12 = 0uLL;
  *v9 = &unk_1F1037990;
  *(v9 + 15) = &unk_1F1037B28;
  v10 = off_1F1037B10(v9);
  if (v10)
  {
    CFRetain(v10);
  }

  return a1;
}

CI::AffineImage *CI::AffineImage::AffineImage(CI::AffineImage *this, CI::Image *a2, const CI::Affine *a3, uint64_t a4)
{
  v4 = a4;
  v8 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v8 + 16) = &unk_1F1031578;
  atomic_fetch_add(dword_1ED7C47BC, 1u);
  *v8 = &unk_1F1034830;
  *(v8 + 16) = &unk_1F10349B8;
  v9 = *a3;
  v10 = *(a3 + 1);
  *(v8 + 168) = *(a3 + 2);
  *(v8 + 152) = v10;
  *(v8 + 136) = v9;
  *(v8 + 184) = v4;
  *(this + 12) = CI::AffineImage::makeDigest(*(a2 + 12), a3, v4);
  *(this + 13) = CI::AffineImage::makeDigest(*(a2 + 13), a3, v4);
  if (!CI::Affine::isOrientationWithIntegralTranslation(a3))
  {
    *(this + 113) = 0;
  }

  return this;
}

void sub_19CD36D60(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::AffineImage::makeDigest(uint64_t a1, char *a2, int a3)
{
  XXH64_reset(v7, 0);
  LODWORD(__src) = 2;
  XXH64_update(v7, &__src, 4uLL);
  __src = a1;
  XXH64_update(v7, &__src, 8uLL);
  XXH64_update(v7, a2, 0x30uLL);
  LODWORD(__src) = a3;
  XXH64_update(v7, &__src, 4uLL);
  return XXH64_digest(v7);
}

BOOL CI::Affine::isOrientationWithIntegralTranslation(CI::Affine *this)
{
  if ((fabs(*this) == 1.0 || *this == 0.0) && ((v1 = *(this + 1), fabs(v1) == 1.0) || v1 == 0.0) && ((v2 = *(this + 2), fabs(v2) == 1.0) || v2 == 0.0) && ((v3 = *(this + 3), fabs(v3) == 1.0) || v3 == 0.0) && vabdd_f64(*(this + 4), round(*(this + 4))) < 1.0e-10)
  {
    return vabdd_f64(*(this + 5), round(*(this + 5))) < 1.0e-10;
  }

  else
  {
    return 0;
  }
}

void CI::ImageWithChild::~ImageWithChild(CI::ImageWithChild *this)
{
  *this = &unk_1F1037EF8;
  v2 = *(this + 15);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 15) = 0;

  CI::Image::~Image(this);
}

{
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)2>::~InstanceCounted(void *result)
{
  *result = &unk_1F1031578;
  atomic_fetch_add(dword_1ED7C47BC, 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)2>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1031578;
  atomic_fetch_add(dword_1ED7C47BC, 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::CropImage *CI::CropImage::CropImage(CI::CropImage *this, CI::Image *a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v9 + 16) = &unk_1F10315A0;
  atomic_fetch_add(&dword_1ED7C47BC[4], 1u);
  *v9 = &unk_1F1035698;
  *(v9 + 16) = &unk_1F1035820;
  *(v9 + 17) = x;
  *(v9 + 18) = y;
  *(v9 + 19) = width;
  *(v9 + 20) = height;
  *(this + 12) = CI::CropImage::makeDigest(*(a2 + 12), x, y, width, height);
  *(this + 13) = CI::CropImage::makeDigest(*(a2 + 13), x, y, width, height);
  return this;
}

void sub_19CD370B4(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::CropImage::makeDigest(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  XXH64_reset(v7, 0);
  LODWORD(__src) = 6;
  XXH64_update(v7, &__src, 4uLL);
  __src = a1;
  XXH64_update(v7, &__src, 8uLL);
  XXH64_update(v7, v8, 0x20uLL);
  return XXH64_digest(v7);
}

void *CI::InstanceCounted<(CI::Type)6>::~InstanceCounted(void *result)
{
  *result = &unk_1F10315A0;
  atomic_fetch_add(&dword_1ED7C47BC[4], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)6>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10315A0;
  atomic_fetch_add(&dword_1ED7C47BC[4], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::ClampImage *CI::ClampImage::ClampImage(CI::ClampImage *this, CI::Image *a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v9 + 16) = &unk_1F10315C8;
  atomic_fetch_add(&dword_1ED7C47BC[5], 1u);
  *v9 = &unk_1F1034BA8;
  *(v9 + 16) = &unk_1F1034D30;
  *(v9 + 17) = x;
  *(v9 + 18) = y;
  *(v9 + 19) = width;
  *(v9 + 20) = height;
  *(this + 12) = CI::ClampImage::makeDigest(*(a2 + 12), x, y, width, height);
  *(this + 13) = CI::ClampImage::makeDigest(*(a2 + 13), x, y, width, height);
  return this;
}

void sub_19CD372D8(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::ClampImage::makeDigest(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  XXH64_reset(v7, 0);
  LODWORD(__src) = 7;
  XXH64_update(v7, &__src, 4uLL);
  __src = a1;
  XXH64_update(v7, &__src, 8uLL);
  XXH64_update(v7, v8, 0x20uLL);
  return XXH64_digest(v7);
}

void *CI::InstanceCounted<(CI::Type)7>::~InstanceCounted(void *result)
{
  *result = &unk_1F10315C8;
  atomic_fetch_add(&dword_1ED7C47BC[5], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)7>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10315C8;
  atomic_fetch_add(&dword_1ED7C47BC[5], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::PremultiplyImage *CI::PremultiplyImage::PremultiplyImage(CI::PremultiplyImage *this, CI::Image *a2, uint64_t a3)
{
  v3 = a3;
  v6 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v6 + 16) = &unk_1F10315F0;
  atomic_fetch_add(&dword_1ED7C47D8[7], 1u);
  *v6 = &unk_1F10364D0;
  *(v6 + 16) = &unk_1F1036658;
  *(v6 + 34) = v3;
  *(this + 12) = CI::PremultiplyImage::makeDigest(*(a2 + 12), v3);
  *(this + 13) = CI::PremultiplyImage::makeDigest(*(a2 + 13), v3);
  *(this + 113) = 0;
  return this;
}

void sub_19CD374D0(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::PremultiplyImage::makeDigest(uint64_t a1, int a2)
{
  XXH64_reset(v5, 0);
  LODWORD(__src) = 16;
  XXH64_update(v5, &__src, 4uLL);
  __src = a1;
  XXH64_update(v5, &__src, 8uLL);
  LODWORD(__src) = a2;
  XXH64_update(v5, &__src, 4uLL);
  return XXH64_digest(v5);
}

void *CI::InstanceCounted<(CI::Type)16>::~InstanceCounted(void *result)
{
  *result = &unk_1F10315F0;
  atomic_fetch_add(&dword_1ED7C47D8[7], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)16>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10315F0;
  atomic_fetch_add(&dword_1ED7C47D8[7], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::AlphaAssociationImage::~AlphaAssociationImage(CI::AlphaAssociationImage *this)
{
  *(this + 16) = &unk_1F10317C8;
  atomic_fetch_add(&dword_1ED7C47D8[8], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F10317C8;
  atomic_fetch_add(&dword_1ED7C47D8[8], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ImageWithChild::child(CI::ImageWithChild *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return *(this + 15);
  }
}

uint64_t CI::AlphaAssociationImage::print_for_graph_core(CI::AlphaAssociationImage *this, __sFILE *a2)
{
  if (*(this + 136))
  {
    v2 = "un";
  }

  else
  {
    v2 = "";
  }

  return fprintf(a2, "%sassociated_alpha", v2);
}

uint64_t CI::AlphaAssociationImage::render_graph_core(int a1, int a2, CI::Object *this)
{
  if (this)
  {
    return CI::Object::ref(this);
  }

  else
  {
    return 0;
  }
}

void non-virtual thunk toCI::AlphaAssociationImage::~AlphaAssociationImage(CI::AlphaAssociationImage *this)
{
  *this = &unk_1F10317C8;
  atomic_fetch_add(&dword_1ED7C47D8[8], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F10317C8;
  atomic_fetch_add(&dword_1ED7C47D8[8], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)17>::~InstanceCounted(void *result)
{
  *result = &unk_1F10317C8;
  atomic_fetch_add(&dword_1ED7C47D8[8], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)17>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10317C8;
  atomic_fetch_add(&dword_1ED7C47D8[8], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::ClampToAlphaImage *CI::ClampToAlphaImage::ClampToAlphaImage(CI::ClampToAlphaImage *this, CI::Image *a2)
{
  v4 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v4 + 16) = &unk_1F10317F0;
  atomic_fetch_add(&dword_1ED7C47BC[6], 1u);
  *v4 = &unk_1F1034D58;
  *(v4 + 16) = &unk_1F1034EE0;
  *(this + 12) = CI::ClampToAlphaImage::makeDigest(*(a2 + 12));
  *(this + 13) = CI::ClampToAlphaImage::makeDigest(*(a2 + 13));
  return this;
}

void sub_19CD37AB4(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::ClampToAlphaImage::makeDigest(uint64_t a1)
{
  XXH64_reset(v3, 0);
  LODWORD(__src) = 8;
  XXH64_update(v3, &__src, 4uLL);
  __src = a1;
  XXH64_update(v3, &__src, 8uLL);
  return XXH64_digest(v3);
}

void *CI::InstanceCounted<(CI::Type)8>::~InstanceCounted(void *result)
{
  *result = &unk_1F10317F0;
  atomic_fetch_add(&dword_1ED7C47BC[6], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)8>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10317F0;
  atomic_fetch_add(&dword_1ED7C47BC[6], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::ImageWithChild *CI::SwizzleImage::SwizzleImage(CI::ImageWithChild *a1, CI::Image *a2, uint64_t a3)
{
  v3 = a3;
  v6 = CI::ImageWithChild::ImageWithChild(a1, a2);
  *(v6 + 16) = &unk_1F1031818;
  atomic_fetch_add(&dword_1ED7C47D8[20], 1u);
  *v6 = &unk_1F1037618;
  *(v6 + 16) = &unk_1F10377A8;
  *(v6 + 34) = v3;
  *(a1 + 12) = CI::SwizzleImage::makeDigest(*(a2 + 12), v3);
  *(a1 + 13) = CI::SwizzleImage::makeDigest(*(a2 + 13), v3);
  return a1;
}

void sub_19CD37C90(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::SwizzleImage::makeDigest(uint64_t a1, int a2)
{
  XXH64_reset(v5, 0);
  LODWORD(__src) = 29;
  XXH64_update(v5, &__src, 4uLL);
  __src = a1;
  XXH64_update(v5, &__src, 8uLL);
  LODWORD(__src) = a2;
  XXH64_update(v5, &__src, 4uLL);
  return XXH64_digest(v5);
}

void *CI::InstanceCounted<(CI::Type)29>::~InstanceCounted(void *result)
{
  *result = &unk_1F1031818;
  atomic_fetch_add(&dword_1ED7C47D8[20], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)29>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1031818;
  atomic_fetch_add(&dword_1ED7C47D8[20], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::GammaImage *CI::GammaImage::GammaImage(CI::GammaImage *this, CI::Image *a2, double a3)
{
  v6 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v6 + 16) = &unk_1F1031840;
  atomic_fetch_add(&dword_1ED7C47D8[1], 1u);
  *v6 = &unk_1F1035A10;
  *(v6 + 16) = &unk_1F1035B98;
  *(v6 + 17) = a3;
  *(this + 12) = CI::GammaImage::makeDigest(*(a2 + 12), a3);
  *(this + 13) = CI::GammaImage::makeDigest(*(a2 + 13), a3);
  *(this + 113) = 0;
  return this;
}

void sub_19CD37E88(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::GammaImage::makeDigest(uint64_t a1, double a2)
{
  XXH64_reset(v5, 0);
  LODWORD(__src) = 10;
  XXH64_update(v5, &__src, 4uLL);
  __src = a1;
  XXH64_update(v5, &__src, 8uLL);
  __src = *&a2;
  XXH64_update(v5, &__src, 8uLL);
  return XXH64_digest(v5);
}

void *CI::InstanceCounted<(CI::Type)10>::~InstanceCounted(void *result)
{
  *result = &unk_1F1031840;
  atomic_fetch_add(&dword_1ED7C47D8[1], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)10>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1031840;
  atomic_fetch_add(&dword_1ED7C47D8[1], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::TagColorSpaceImage *CI::TagColorSpaceImage::TagColorSpaceImage(CI::TagColorSpaceImage *this, CI::Image *a2, CGColorSpace *a3)
{
  v6 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v6 + 16) = &unk_1F1031868;
  atomic_fetch_add(&dword_1ED7C47D8[21], 1u);
  *v6 = &unk_1F1035290;
  *(v6 + 16) = &unk_1F1035418;
  *(this + 17) = CGColorSpaceRetain(a3);
  XXH64_reset(v8, 0);
  LODWORD(__src) = (*(*this + 16))(this);
  XXH64_update(v8, &__src, 4uLL);
  __src = *(a2 + 12);
  XXH64_update(v8, &__src, 8uLL);
  CI::XXHashHelper::add(v8, a3);
  *(this + 12) = XXH64_digest(v8);
  return this;
}

void sub_19CD380EC(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add((v3 + 120), 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

void CI::XXHashHelper::add(CI::XXHashHelper *this, CGColorSpaceRef space)
{
  if (space)
  {
    if (CGColorSpaceGetName(space))
    {
      Name = CGColorSpaceGetName(space);

      CI::XXHashHelper::add(this, Name);
    }

    else
    {
      v5 = CGColorSpaceCopyICCData(space);
      if (v5)
      {
        v6 = v5;
        CI::XXHashHelper::add(this, v5);

        CFRelease(v6);
      }

      else
      {
        __src = space;
        XXH64_update(this, &__src, 8uLL);
      }
    }
  }

  else
  {

    CI::XXHashHelper::addstr(this, "nilCGColorSpaceRef");
  }
}

void *CI::InstanceCounted<(CI::Type)30>::~InstanceCounted(void *result)
{
  *result = &unk_1F1031868;
  atomic_fetch_add(&dword_1ED7C47D8[21], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)30>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1031868;
  atomic_fetch_add(&dword_1ED7C47D8[21], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::XXHashHelper::add(CI::XXHashHelper *this, CFStringRef theString)
{
  v7 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (!CStringPtr)
    {
      if (CFStringGetCString(theString, buffer, 1024, 0x8000100u))
      {
        CStringPtr = buffer;
      }

      else
      {
        CStringPtr = 0;
      }
    }

    return CI::XXHashHelper::addstr(this, CStringPtr);
  }

  else
  {

    return CI::XXHashHelper::addstr(this, "nilCFStringRef");
  }
}

size_t CI::XXHashHelper::add(CI::XXHashHelper *this, CFDataRef theData)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    result = CFDataGetLength(theData);
    if (BytePtr && result)
    {

      return XXH64_update(this, BytePtr, result);
    }
  }

  else
  {

    return CI::XXHashHelper::addstr(this, "nilCFDataRef");
  }

  return result;
}

CI::SetInfoImage *CI::SetInfoImage::SetInfoImage(CI::SetInfoImage *this, CI::Image *a2)
{
  *CI::ImageWithChild::ImageWithChild(this, a2) = &unk_1F1031A40;
  *(this + 12) = CI::SetInfoImage::makeDigest(*(a2 + 12));
  *(this + 13) = CI::SetInfoImage::makeDigest(*(a2 + 13));
  return this;
}

void CI::SetHeadroomImage::~SetHeadroomImage(CI::SetHeadroomImage *this)
{
  *(this + 16) = &unk_1F1031BC8;
  atomic_fetch_add(&dword_1ED7C47D8[16], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F1031BC8;
  atomic_fetch_add(&dword_1ED7C47D8[16], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::SetInfoImage::output_format(CI::SetInfoImage *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 144);

  return v1();
}

uint64_t CI::SetInfoImage::render_graph_core(int a1, int a2, CI::Object *this)
{
  if (this)
  {
    return CI::Object::ref(this);
  }

  else
  {
    return 0;
  }
}

void non-virtual thunk toCI::SetHeadroomImage::~SetHeadroomImage(CI::SetHeadroomImage *this)
{
  *this = &unk_1F1031BC8;
  atomic_fetch_add(&dword_1ED7C47D8[16], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F1031BC8;
  atomic_fetch_add(&dword_1ED7C47D8[16], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

unint64_t CI::SetInfoImage::makeDigest(uint64_t a1)
{
  XXH64_reset(v3, 0);
  LODWORD(__src) = 24;
  XXH64_update(v3, &__src, 4uLL);
  __src = a1;
  XXH64_update(v3, &__src, 8uLL);
  return XXH64_digest(v3);
}

void CI::SetInfoImage::~SetInfoImage(CI::SetInfoImage *this)
{
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::Image::print_for_graph_core(CI::Image *this, __sFILE *a2)
{
  v3 = (*(*this + 16))(this);
  v4 = CI::name_for_type(v3);

  return fputs(v4, a2);
}

void *CI::InstanceCounted<(CI::Type)25>::~InstanceCounted(void *result)
{
  *result = &unk_1F1031BC8;
  atomic_fetch_add(&dword_1ED7C47D8[16], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)25>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1031BC8;
  atomic_fetch_add(&dword_1ED7C47D8[16], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::SetAverageLightLevelImage::~SetAverageLightLevelImage(CI::SetAverageLightLevelImage *this)
{
  *(this + 16) = &unk_1F1031DA0;
  atomic_fetch_add(&dword_1ED7C47D8[17], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);
}

{
  *(this + 16) = &unk_1F1031DA0;
  atomic_fetch_add(&dword_1ED7C47D8[17], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::SetAverageLightLevelImage::~SetAverageLightLevelImage(CI::SetAverageLightLevelImage *this)
{
  *this = &unk_1F1031DA0;
  atomic_fetch_add(&dword_1ED7C47D8[17], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));
}

{
  *this = &unk_1F1031DA0;
  atomic_fetch_add(&dword_1ED7C47D8[17], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild((this - 128));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)26>::~InstanceCounted(void *result)
{
  *result = &unk_1F1031DA0;
  atomic_fetch_add(&dword_1ED7C47D8[17], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)26>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1031DA0;
  atomic_fetch_add(&dword_1ED7C47D8[17], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::NoopImage *CI::NoopImage::NoopImage(CI::NoopImage *this, CI::Image *a2, Trilean a3, uint64_t a4)
{
  v4 = a4;
  v8 = CI::ImageWithChild::ImageWithChild(this, a2);
  *(v8 + 16) = &unk_1F1031DC8;
  atomic_fetch_add(&dword_1ED7C47D8[6], 1u);
  *v8 = &unk_1F1036130;
  *(v8 + 16) = &unk_1F10362B8;
  *(v8 + 136) = a3;
  *(v8 + 137) = v4;
  *(this + 12) = CI::NoopImage::makeDigest(*(a2 + 12), a3.var0, v4);
  *(this + 13) = CI::NoopImage::makeDigest(*(a2 + 13), a3.var0, v4);
  *(this + 113) = 0;
  return this;
}

void sub_19CD38BD0(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::NoopImage::makeDigest(uint64_t a1, unsigned __int8 a2, int a3)
{
  XXH64_reset(v7, 0);
  LODWORD(__src) = 15;
  XXH64_update(v7, &__src, 4uLL);
  __src = a1;
  XXH64_update(v7, &__src, 8uLL);
  LODWORD(__src) = a3;
  XXH64_update(v7, &__src, 4uLL);
  if (a2 == 255)
  {
    LODWORD(__src) = 0;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    LODWORD(__src) = 1;
LABEL_5:
    XXH64_update(v7, &__src, 4uLL);
  }

  return XXH64_digest(v7);
}

void *CI::InstanceCounted<(CI::Type)15>::~InstanceCounted(void *result)
{
  *result = &unk_1F1031DC8;
  atomic_fetch_add(&dword_1ED7C47D8[6], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)15>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1031DC8;
  atomic_fetch_add(&dword_1ED7C47D8[6], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::SetPropsImage *CI::SetPropsImage::SetPropsImage(CI::SetPropsImage *this, CI::Image *a2, const __CFDictionary *a3)
{
  v5 = CI::SetInfoImage::SetInfoImage(this, a2);
  *(v5 + 16) = &unk_1F1031FA0;
  atomic_fetch_add(&dword_1ED7C47D8[15], 1u);
  *v5 = &unk_1F1031DF0;
  *(v5 + 16) = &unk_1F1031F78;
  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  *(this + 17) = v6;
  return this;
}

void sub_19CD38DE8(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add((v3 + 96), 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

void CI::SetPropsImage::~SetPropsImage(CI::SetPropsImage *this)
{
  CI::SetPropsImage::~SetPropsImage(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F1031DF0;
  *(this + 16) = &unk_1F1031F78;
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 16) = &unk_1F1031FA0;
  *(this + 17) = 0;
  atomic_fetch_add(&dword_1ED7C47D8[15], 0xFFFFFFFF);

  CI::ImageWithChild::~ImageWithChild(this);
}

void non-virtual thunk toCI::SetPropsImage::~SetPropsImage(CI::SetPropsImage *this)
{
  CI::SetPropsImage::~SetPropsImage((this - 128));
}

{
  CI::SetPropsImage::~SetPropsImage((this - 128));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)24>::~InstanceCounted(void *result)
{
  *result = &unk_1F1031FA0;
  atomic_fetch_add(&dword_1ED7C47D8[15], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)24>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1031FA0;
  atomic_fetch_add(&dword_1ED7C47D8[15], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void sub_19CD38FE8(_Unwind_Exception *a1)
{
  *(v1 + 16) = &unk_1F1031FA0;
  atomic_fetch_add(&dword_1ED7C47D8[15], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

CI::SetDepthDataImage *CI::SetDepthDataImage::SetDepthDataImage(CI::SetDepthDataImage *this, CI::Image *a2, const void *a3)
{
  v5 = CI::SetInfoImage::SetInfoImage(this, a2);
  *(v5 + 16) = &unk_1F1032178;
  atomic_fetch_add(&dword_1ED7C47D8[18], 1u);
  *v5 = &unk_1F1031FC8;
  *(v5 + 16) = &unk_1F1032150;
  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  *(this + 17) = v6;
  return this;
}

void sub_19CD390EC(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add((v3 + 108), 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

void CI::SetDepthDataImage::~SetDepthDataImage(CI::SetDepthDataImage *this)
{
  CI::SetDepthDataImage::~SetDepthDataImage(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F1031FC8;
  *(this + 16) = &unk_1F1032150;
  v2 = *(this + 17);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 16) = &unk_1F1032178;
  *(this + 17) = 0;
  atomic_fetch_add(&dword_1ED7C47D8[18], 0xFFFFFFFF);

  CI::ImageWithChild::~ImageWithChild(this);
}

void non-virtual thunk toCI::SetDepthDataImage::~SetDepthDataImage(CI::SetDepthDataImage *this)
{
  CI::SetDepthDataImage::~SetDepthDataImage((this - 128));
}

{
  CI::SetDepthDataImage::~SetDepthDataImage((this - 128));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)27>::~InstanceCounted(void *result)
{
  *result = &unk_1F1032178;
  atomic_fetch_add(&dword_1ED7C47D8[18], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)27>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1032178;
  atomic_fetch_add(&dword_1ED7C47D8[18], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void sub_19CD392EC(_Unwind_Exception *a1)
{
  *(v1 + 16) = &unk_1F1032178;
  atomic_fetch_add(&dword_1ED7C47D8[18], 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

uint64_t CI::SampleModeImage::SampleModeImage(uint64_t a1, CI::Image *a2, uint64_t a3)
{
  v3 = a3;
  v6 = CI::ImageWithChild::ImageWithChild(a1, a2);
  *(v6 + 16) = &unk_1F10321A0;
  atomic_fetch_add(&dword_1ED7C47D8[14], 1u);
  *v6 = &unk_1F1036F08;
  *(v6 + 16) = &unk_1F1037090;
  *(v6 + 34) = v3;
  *(a1 + 96) = CI::SampleModeImage::makeDigest(*(a2 + 12), v3);
  *(a1 + 104) = CI::SampleModeImage::makeDigest(*(a2 + 13), v3);
  *(a1 + 113) = 0;
  return a1;
}

void sub_19CD3940C(_Unwind_Exception *a1)
{
  *(v1 + 16) = v2;
  atomic_fetch_add(v3, 0xFFFFFFFF);
  CI::ImageWithChild::~ImageWithChild(v1);
  _Unwind_Resume(a1);
}

unint64_t CI::SampleModeImage::makeDigest(uint64_t a1, int a2)
{
  XXH64_reset(v5, 0);
  LODWORD(__src) = 23;
  XXH64_update(v5, &__src, 4uLL);
  __src = a1;
  XXH64_update(v5, &__src, 8uLL);
  LODWORD(__src) = a2;
  XXH64_update(v5, &__src, 4uLL);
  return XXH64_digest(v5);
}

void *CI::InstanceCounted<(CI::Type)23>::~InstanceCounted(void *result)
{
  *result = &unk_1F10321A0;
  atomic_fetch_add(&dword_1ED7C47D8[14], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)23>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10321A0;
  atomic_fetch_add(&dword_1ED7C47D8[14], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::SerialObjectPtrArray *CI::SerialObjectPtrArray::SerialObjectPtrArray(CI::SerialObjectPtrArray *this, unsigned int a2)
{
  *(this + 2) = 0;
  *this = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  if (a2 > 10)
  {
    *(this + 1) = a2;
    v4 = malloc_type_calloc(a2 - 10, 8uLL, 0x80040B8603338uLL);
  }

  else
  {
    v4 = 0;
    *(this + 1) = 10;
  }

  *(this + 2) = v4;
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  *(this + 2) = v5;
  return this;
}

void CI::SerialObjectPtrArray::~SerialObjectPtrArray(CI::SerialObjectPtrArray *this)
{
  v2 = *this;
  if (*this >= 1)
  {
    v3 = 0;
    v4 = -80;
    do
    {
      if (v3 > 9)
      {
        v5 = (*(this + 2) + v4);
      }

      else
      {
        v5 = (this + 8 * v3 + 24);
      }

      if (*v5)
      {
        CI::Object::unref(*v5);
        v2 = *this;
      }

      ++v3;
      v4 += 8;
    }

    while (v3 < v2);
  }

  v6 = *(this + 2);
  if (v6)
  {
    free(v6);
  }
}

void *___ZN2CIL21print_graph_recursiveINS_5ImageENS_10ImageIndexENS1_10ImageStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke()
{
  result = memset(CI::print_graph_recursive<CI::Image,CI::ImageIndex,CI::Image::ImageStats>(__sFILE *,CI::Image const*,int,std::unordered_map<CI::ImageIndex,CI::Image::ImageStats> const&)::indent_str, 32, sizeof(CI::print_graph_recursive<CI::Image,CI::ImageIndex,CI::Image::ImageStats>(__sFILE *,CI::Image const*,int,std::unordered_map<CI::ImageIndex,CI::Image::ImageStats> const&)::indent_str));
  byte_1EB00E0F0 = 0;
  return result;
}

BOOL ___ZN2CIL21print_graph_recursiveINS_5ImageENS_10ImageIndexENS1_10ImageStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke_1139(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 32) + 8) + 48), &v7);
  if (v3)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 72);
    std::__hash_table<std::__hash_value_type<CI::Image const*,unsigned long>,std::__unordered_map_hasher<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,true>,std::__unordered_map_equal<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::equal_to<CI::Image const*>,std::hash<CI::Image const*>,true>,std::allocator<std::__hash_value_type<CI::Image const*,unsigned long>>>::__emplace_unique_key_args<CI::Image const*,CI::Image const*&,unsigned long>((v4 + 48), &v7, &v7, &v6);
  }

  else
  {
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__emplace_unique_key_args<CI::Image const*,CI::Image const* const&>((*(*(a1 + 32) + 8) + 48), &v7, &v7);
  }

  return v3 != 0;
}

BOOL ___ZN2CIL21print_graph_recursiveINS_5ImageENS_10ImageIndexENS1_10ImageStatsEEEvP7__sFILEPKT_iRKNSt3__113unordered_mapIT0_T1_NS9_4hashISB_EENS9_8equal_toISB_EENS9_9allocatorINS9_4pairIKSB_SC_EEEEEE_block_invoke_1144(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v26 = a2;
  fprintf(*(a1 + 56), "%.*s", 2 * *(a1 + 72), CI::print_graph_recursive<CI::Image,CI::ImageIndex,CI::Image::ImageStats>(__sFILE *,CI::Image const*,int,std::unordered_map<CI::ImageIndex,CI::Image::ImageStats> const&)::indent_str);
  if (a4 <= 0x3FF)
  {
    *(*(*(a1 + 32) + 8) + a4 + 48) = (*(*a2 + 40))(a2);
  }

  if (a4 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 <= 0x3FF && (v10 = *(*(*(a1 + 32) + 8) + v9 + 48), v11 = v10 != 0, v12 = v10 - 1, v12 != 0 && v11))
      {
        v13 = v9 + 1;
        v14 = *(a1 + 56);
        if (v9 + 1 == a4 && v12 == a5)
        {
          fwrite("╰─", 6uLL, 1uLL, v14);
          *(*(*(a1 + 32) + 8) + v9 + 48) = 0;
        }

        else
        {
          if (v13 == a4)
          {
            v15 = "├─";
            v16 = 6;
          }

          else
          {
            v15 = "│ ";
            v16 = 4;
          }

          fwrite(v15, v16, 1uLL, v14);
        }
      }

      else
      {
        fwrite("  ", 2uLL, 1uLL, *(a1 + 56));
        v13 = v9 + 1;
      }

      v9 = v13;
    }

    while (v13 != a4);
  }

  v17 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 40) + 8) + 48), &v26);
  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = *(*(a1 + 48) + 8);
    v27 = &v26;
    v20 = std::__hash_table<std::__hash_value_type<CI::Image const*,unsigned long>,std::__unordered_map_hasher<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,true>,std::__unordered_map_equal<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::equal_to<CI::Image const*>,std::hash<CI::Image const*>,true>,std::allocator<std::__hash_value_type<CI::Image const*,unsigned long>>>::__emplace_unique_key_args<CI::Image const*,std::piecewise_construct_t const&,std::tuple<CI::Image const* const&>,std::tuple<>>((v19 + 48), &v26, &std::piecewise_construct, &v27);
    fprintf(v18, "<%ld>\n", v20[3]);
  }

  else
  {
    v21 = std::__hash_table<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::__unordered_map_hasher<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::hash<CI::ImageIndex>,std::equal_to<CI::ImageIndex>,true>,std::__unordered_map_equal<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::equal_to<CI::ImageIndex>,std::hash<CI::ImageIndex>,true>,std::allocator<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>>>::find<CI::ImageIndex>(*(a1 + 64), (v26 + 116));
    if (v21)
    {
      (*(*v26 + 152))(v26, *(a1 + 56), v21 + 20);
    }

    else
    {
      (*(*v26 + 152))(v26, *(a1 + 56), &v27);
    }

    if (std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 48) + 8) + 48), &v26))
    {
      v22 = *(a1 + 56);
      v23 = *(*(a1 + 48) + 8);
      v27 = &v26;
      v24 = std::__hash_table<std::__hash_value_type<CI::Image const*,unsigned long>,std::__unordered_map_hasher<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,true>,std::__unordered_map_equal<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::equal_to<CI::Image const*>,std::hash<CI::Image const*>,true>,std::allocator<std::__hash_value_type<CI::Image const*,unsigned long>>>::__emplace_unique_key_args<CI::Image const*,std::piecewise_construct_t const&,std::tuple<CI::Image const* const&>,std::tuple<>>((v23 + 48), &v26, &std::piecewise_construct, &v27);
      fprintf(v22, " <%ld>", v24[3]);
    }

    fputc(10, *(a1 + 56));
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__emplace_unique_key_args<CI::Image const*,CI::Image const* const&>((*(*(a1 + 40) + 8) + 48), &v26, &v26);
  }

  return v17 != 0;
}

uint64_t std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(uint64_t a1)
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

void std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<CI::Image const*,unsigned long>,std::__unordered_map_hasher<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,true>,std::__unordered_map_equal<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::equal_to<CI::Image const*>,std::hash<CI::Image const*>,true>,std::allocator<std::__hash_value_type<CI::Image const*,unsigned long>>>::__emplace_unique_key_args<CI::Image const*,CI::Image const*&,unsigned long>(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

void *std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::__emplace_unique_key_args<CI::Image const*,CI::Image const* const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void *std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<CI::Image const*,unsigned long>,std::__unordered_map_hasher<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,true>,std::__unordered_map_equal<CI::Image const*,std::__hash_value_type<CI::Image const*,unsigned long>,std::equal_to<CI::Image const*>,std::hash<CI::Image const*>,true>,std::allocator<std::__hash_value_type<CI::Image const*,unsigned long>>>::__emplace_unique_key_args<CI::Image const*,std::piecewise_construct_t const&,std::tuple<CI::Image const* const&>,std::tuple<>>(void *a1, void *a2, uint64_t a3, void **a4)
{
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v4 >> 47) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * (v5 ^ (v5 >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (v11[2] != *a2)
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t *std::__hash_table<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::__unordered_map_hasher<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::hash<CI::ImageIndex>,std::equal_to<CI::ImageIndex>,true>,std::__unordered_map_equal<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::equal_to<CI::ImageIndex>,std::hash<CI::ImageIndex>,true>,std::allocator<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>>>::find<CI::ImageIndex>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CI::sw_RGBtoLAB(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vmulq_f32(*v7, xmmword_19CF27030);
  v9 = vmulq_f32(*v7, xmmword_19CF27040);
  *v8.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vzip1_s32(*v8.f32, *v9.i8), vzip2_s32(*v8.f32, *v9.i8)));
  v10 = vmulq_f32(*v7, xmmword_19CF27050);
  v8.f32[2] = v10.f32[2] + vaddv_f32(*v10.f32);
  v8.i32[3] = 0;
  v11 = vmaxnmq_f32(v8, 0);
  v15 = vaddq_f32(vmulq_f32(v11, vdupq_n_s32(0x40F92F1Bu)), vdupq_n_s32(0x3E0D3DCBu));
  v16 = vaddq_f32(v11, vdupq_n_s32(0xBC1118C2));
  v11.i32[3] = 0;
  v12 = vbslq_s8(vcltzq_f32(v16), v15, _simd_pow_f4(v11, xmmword_19CF27060)).u64[0];
  *&v13 = *(&v12 + 1) * 116.0 + -16.0;
  *(&v13 + 1) = (*&v12 - *(&v12 + 1)) * 500.0;
  return v13;
}

uint64_t CI::sw_LABtoRGB(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float32x4_t a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = a3 + 16 * v7;
  v9 = a2 + (v7 << 6);
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = (COERCE_FLOAT(*v9) + 16.0) / 116.0;
  a5.f32[0] = COERCE_FLOAT(HIDWORD(*v9)) / 500.0 + v10;
  a5.f32[1] = v10;
  v11 = v10 + COERCE_FLOAT(*(v9 + 8)) / -200.0;
  a5.f32[2] = v11;
  v12 = vbslq_s8(vcltzq_f32(vaddq_f32(a5, vdupq_n_s32(0xBE53DCB1))), vmulq_f32(vaddq_f32(a5, vdupq_n_s32(0xBE0D3DCB)), vdupq_n_s32(0x3E038027u)), vmulq_f32(a5, vmulq_f32(a5, a5)));
  v13 = vmulq_f32(v12, xmmword_19CF27070);
  v14 = vmulq_f32(v12, xmmword_19CF27080);
  return vadd_f32(vzip1_s32(*&vextq_s8(v13, v13, 8uLL), *&vextq_s8(v14, v14, 8uLL)), vadd_f32(vzip1_s32(*v13.i8, *v14.i8), vzip2_s32(*v13.i8, *v14.i8)));
}

double CI::sw_justAlpha(uint64_t a1, uint64_t a2, uint64_t a3)
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

CI::ImageAccumulator::Content *CI::ImageAccumulator::Content::Content(CI::ImageAccumulator::Content *this, CGRect a2, CGColorSpace *a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  width = a2.size.width;
  height = a2.size.height;
  *this = 0;
  *(this + 1) = 0;
  v8 = CI::PixelFormatType_from_format(a4);
  Surface = CreateSurface(width, height, 0x20uLL, v8, 1);
  *(this + 1) = Surface;
  if (a3)
  {
    v14 = @"CIImageColorSpace";
    v15[0] = a3;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v11 = *(this + 1);
  }

  else
  {
    v11 = Surface;
    v10 = 0;
  }

  v12 = [+[CIImage imageWithIOSurface:options:](CIImage _internalRepresentation:v11];
  if (v12)
  {
    v12 = CI::Object::ref(v12);
  }

  *this = v12;
  return this;
}

void CI::ImageAccumulator::ImageAccumulator(CI::ImageAccumulator *this, CGRect a2, CGColorSpace *a3, uint64_t a4, CIContext *a5, CIBlendKernel *a6)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  *this = a2;
  *(this + 4) = a3;
  *(this + 10) = a4;
  *(this + 6) = a5;
  *(this + 7) = a6;
  *(this + 96) = 0;
  CGColorSpaceRetain(a3);
  v11 = *(this + 6);
  v12 = *(this + 7);
  *(this + 11) = [CIImage clearImage:x, y, width, height];
  operator new();
}

void CI::ImageAccumulator::~ImageAccumulator(CI::ImageAccumulator *this)
{
  dispatch_sync(*(this + 17), &__block_literal_global_41);
  CGColorSpaceRelease(*(this + 4));

  v2 = *(this + 8);
  if (v2)
  {
    CI::ImageAccumulator::Content::~Content(v2);
    MEMORY[0x19EAF5590]();
  }

  v3 = *(this + 9);
  if (v3)
  {
    CI::ImageAccumulator::Content::~Content(v3);
    MEMORY[0x19EAF5590]();
  }

  dispatch_release(*(this + 17));
}

__n128 CI::ImageAccumulator::sync_content(CI::ImageAccumulator *this)
{
  v2 = *(this + 10);
  v3 = *(this + 8);
  if (v2 == v3)
  {
    v3 = *(this + 9);
  }

  [*(this + 6) render:+[CIImage imageWithInternalRepresentation:](CIImage toIOSurface:"imageWithInternalRepresentation:" bounds:*v2) colorSpace:{v3[1], *(this + 4), *(this + 13), *(this + 14), *(this + 15), *(this + 16)}];
  result = *MEMORY[0x1E695F050];
  v5 = *(MEMORY[0x1E695F050] + 16);
  *(this + 104) = *MEMORY[0x1E695F050];
  *(this + 120) = v5;
  return result;
}

uint64_t CI::ImageAccumulator::get(CI::ImageAccumulator *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__10;
  v11 = __Block_byref_object_dispose__10;
  v12 = 0;
  v2 = *(this + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI16ImageAccumulator3getEb_block_invoke;
  block[3] = &unk_1E75C2FC8;
  block[4] = &v7;
  block[5] = this;
  v6 = a2;
  dispatch_sync(v2, block);
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v3;
}

CIImage *___ZN2CI16ImageAccumulator3getEb_block_invoke(CIImage *result)
{
  v1 = result;
  priv = result[2]._priv;
  if (*(priv + 96) == 1)
  {
    *(*(result[2].super.isa + 1) + 40) = priv[11];
  }

  else
  {
    result = [CIImage imageWithInternalRepresentation:*priv[10]];
    *(*(v1[2].super.isa + 1) + 40) = result;
    *(priv + 25) = 1;
  }

  return result;
}

void CI::ImageAccumulator::set(CI::ImageAccumulator *this, CIImage *a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3052000000;
  v6[3] = __Block_byref_object_copy__10;
  v6[4] = __Block_byref_object_dispose__10;
  v6[5] = a2;
  v4 = *(this + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN2CI16ImageAccumulator3setEP7CIImage_block_invoke;
  block[3] = &unk_1E75C2FF0;
  block[5] = v6;
  block[6] = this;
  block[4] = a2;
  dispatch_async(v4, block);
  _Block_object_dispose(v6, 8);
}

void ___ZN2CI16ImageAccumulator3setEP7CIImage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(v2 + 100) == 1)
  {
    if (!CGRectIsNull(*(v2 + 104)) && (*(v2 + 96) & 1) == 0)
    {
      CI::ImageAccumulator::sync_content(v2);
    }

    v3 = *(v2 + 64);
    if (*(v2 + 80) == v3)
    {
      v3 = *(v2 + 72);
    }

    *(v2 + 80) = v3;
  }

  v4 = [[CIRenderDestination alloc] initWithIOSurface:*(*(v2 + 80) + 8)];
  [(CIRenderDestination *)v4 setColorSpace:*(v2 + 32)];
  [(CIRenderDestination *)v4 setBlendKernel:*(v2 + 56)];
  v5 = *(v2 + 48);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  [v6 extent];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [*(*(*(a1 + 40) + 8) + 40) extent];
  [objc_msgSend(v5 startTaskToRender:v6 fromRect:v4 toDestination:0 atPoint:v8 error:{v10, v12, v14, v15, v16), "waitUntilCompletedAndReturnError:", 0}];

  *(v2 + 96) = 0;
  v17 = *(v2 + 104);
  v18 = *(v2 + 112);
  v19 = *(v2 + 120);
  v20 = *(v2 + 128);
  [*(a1 + 32) extent];
  v28.origin.x = v21;
  v28.origin.y = v22;
  v28.size.width = v23;
  v28.size.height = v24;
  v27.origin.x = v17;
  v27.origin.y = v18;
  v27.size.width = v19;
  v27.size.height = v20;
  *(v2 + 104) = CGRectUnion(v27, v28);
  *(v2 + 100) = 2;
  v25 = *(*(*(a1 + 40) + 8) + 40);
}

__n128 ___ZN2CI16ImageAccumulator5clearEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 96) = 1;
  result = *v1;
  v3 = *(v1 + 16);
  *(v1 + 104) = *v1;
  *(v1 + 120) = v3;
  return result;
}

void CI::ImageAccumulator::Content::~Content(CI::ImageAccumulator::Content *this)
{
  v2 = *this;
  if (v2)
  {
    CI::Object::unref(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t CGAffineTransformFromObject(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *a2 = *MEMORY[0x1E695EFD0];
    *(a2 + 16) = v6;
    v7 = *(v5 + 32);
LABEL_11:
    *(a2 + 32) = v7;
    return result;
  }

  v3 = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objCType];
    if (!strcmp(v4, "{CGAffineTransform=dddddd}") || (result = strcmp(v4, "{?=dddddd}"), !result))
    {

      return [v3 getValue:a2 size:48];
    }

    return result;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    result = objc_msgSend_transformStruct(v3);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v7 = 0u;
    goto LABEL_11;
  }

  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    result = [v3 count];
    if (result == 6)
    {
      [objc_msgSend(v3 objectAtIndex:{0), "doubleValue"}];
      *a2 = v8;
      [objc_msgSend(v3 objectAtIndex:{1), "doubleValue"}];
      *(a2 + 8) = v9;
      [objc_msgSend(v3 objectAtIndex:{2), "doubleValue"}];
      *(a2 + 16) = v10;
      [objc_msgSend(v3 objectAtIndex:{3), "doubleValue"}];
      *(a2 + 24) = v11;
      [objc_msgSend(v3 objectAtIndex:{4), "doubleValue"}];
      *(a2 + 32) = v12;
      result = [objc_msgSend(v3 objectAtIndex:{5), "doubleValue"}];
      *(a2 + 40) = v13;
    }
  }

  return result;
}

BOOL orientationTransform@<W0>(int a1@<W0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D2>, double a5@<D3>)
{
  v45 = *MEMORY[0x1E69E9840];
  result = CGRectIsInfinite(*&a3);
  if (result)
  {
    v11 = MEMORY[0x1E695EFD0];
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    *a2 = *MEMORY[0x1E695EFD0];
    a2[1] = v12;
    a2[2] = *(v11 + 32);
  }

  else
  {
    v13 = a1 - 1;
    v16[0] = 0x3FF0000000000000;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = 0x3FF0000000000000;
    v16[4] = 0;
    v16[5] = 0;
    v16[6] = 0xBFF0000000000000;
    v16[7] = 0;
    v16[8] = 0;
    v16[9] = 0x3FF0000000000000;
    *&v16[10] = a4;
    v17 = xmmword_19CF26640;
    v18 = 0;
    v19 = 0;
    v20 = 0xBFF0000000000000;
    v21 = a4;
    v22 = a5;
    v24 = 0;
    v25 = 0;
    v23 = 0x3FF0000000000000;
    v26 = xmmword_19CF25100;
    v27 = a5;
    v28 = xmmword_19CF26640;
    v29 = xmmword_19CF25100;
    v30 = a5;
    v31 = a4;
    v32 = xmmword_19CF26640;
    v34 = 0;
    v35 = 0;
    v33 = 0x3FF0000000000000;
    v36 = a4;
    v37 = xmmword_19CF26650;
    v39 = 0u;
    v40 = 0u;
    v38 = 0x3FF0000000000000;
    v41 = 0x3FF0000000000000;
    v42 = xmmword_19CF25100;
    v43 = a5;
    v44 = 0;
    if ((a1 - 9) < 0xFFFFFFF8)
    {
      v13 = 0;
    }

    v14 = &v16[6 * v13];
    v15 = v14[2];
    a2[1] = v14[1];
    a2[2] = v15;
    *a2 = *v14;
  }

  return result;
}

uint64_t VisionLibraryCore(uint64_t a1)
{
  if (!VisionLibraryCore_frameworkLibrary)
  {
    VisionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return VisionLibraryCore_frameworkLibrary;
}

uint64_t gethorizonDetectionFFTAnglesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = gethorizonDetectionFFTAnglesSymbolLoc_ptr;
  v6 = gethorizonDetectionFFTAnglesSymbolLoc_ptr;
  if (!gethorizonDetectionFFTAnglesSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v4[3] = dlsym(v1, "horizonDetectionFFTAngles");
    gethorizonDetectionFFTAnglesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19CD3FF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __VisionLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary = result;
  return result;
}

void *__gethorizonDetectionFFTAnglesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "horizonDetectionFFTAngles");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gethorizonDetectionFFTAnglesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VisionLibrary()
{
  v3 = 0;
  v0 = VisionLibraryCore(&v3);
  if (!v0)
  {
    VisionLibrary_cold_1(&v3);
  }

  v1 = v0;
  if (v3)
  {
    free(v3);
  }

  return v1;
}

uint64_t gethorizonDetectionFFTSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = gethorizonDetectionFFTSymbolLoc_ptr;
  v6 = gethorizonDetectionFFTSymbolLoc_ptr;
  if (!gethorizonDetectionFFTSymbolLoc_ptr)
  {
    v1 = VisionLibrary();
    v4[3] = dlsym(v1, "horizonDetectionFFT");
    gethorizonDetectionFFTSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_19CD40154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__gethorizonDetectionFFTSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "horizonDetectionFFT");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gethorizonDetectionFFTSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CI::ProcessorImage::format_is_supported(int a1, int a2)
{
  if (a2)
  {
    HIDWORD(v4) = a1 - 274;
    LODWORD(v4) = a1 - 274;
    v3 = v4 >> 8;
    if (v3 < 8 && ((0xBFu >> v3) & 1) != 0)
    {
      return 1;
    }
  }

  result = 1;
  if (a1 > 2052)
  {
    if ((a1 - 2053) <= 3 && a1 != 2055)
    {
      return result;
    }

    v6 = a1 - 2309;
    if (v6 <= 3 && v6 != 2)
    {
      return result;
    }

    return 0;
  }

  if (((a1 - 261) > 5 || ((1 << (a1 - 5)) & 0x23) == 0) && (a1 - 784) >= 2)
  {
    return 0;
  }

  return result;
}

void sub_19CD4205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _ZZZ136__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_inputFormat_outputFormat_options_roiCallback_processor__EUb_EN13SignpostTimerD1Ev(va, a2);
  _Unwind_Resume(a1);
}

void _ZZZ136__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_inputFormat_outputFormat_options_roiCallback_processor__EUb_EN13SignpostTimerD1Ev(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_process", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void *post_process(void *a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v29;
    v21 = v27;
    v22 = *v29;
    do
    {
      v7 = 0;
      v24 = v5;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        if ([v8 metalCommandBufferRequested])
        {
          v9 = [v8 metalCommandBuffer];
          v10 = [a1 count];
          if (v10)
          {
            v11 = malloc_type_calloc(8uLL, v10, 0x2004093837F09uLL);
            v12 = malloc_type_calloc(8uLL, v10, 0x80040B8603338uLL);
            v13 = 0;
            v14 = 1;
            do
            {
              v11[v13] = [objc_msgSend(objc_msgSend(a1 objectAtIndexedSubscript:{v13), "metalTexture"), "iosurface"}];
              v12[v13] = [objc_msgSend(a1 objectAtIndexedSubscript:{v13), "metalTexture"}];
              v13 = v14;
              v15 = v10 > v14++;
            }

            while (v15);
          }

          else
          {
            v12 = 0;
            v11 = 0;
          }

          v16 = [v8 metalTexture];
          v17 = [v16 iosurface];
          if (v10)
          {
            v18 = 0;
            v19 = 1;
            do
            {
              RetainSurfaceFromCache(v11[v18]);
              v20 = v12[v18];
              if (v20)
              {
                CFRetain(v20);
              }

              v18 = v19;
              v15 = v10 > v19++;
            }

            while (v15);
          }

          RetainSurfaceFromCache(v17);
          CFRetain(v16);
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v27[0] = ___ZL12post_processP7NSArrayIP21CIImageProcessorInputEPS_IP22CIImageProcessorOutputEPN2CI7ContextE_block_invoke;
          v27[1] = &unk_1E75C3190;
          v27[4] = v11;
          v27[5] = v12;
          v27[6] = v17;
          v27[2] = v16;
          v27[3] = v10;
          CIMetalCommandBufferAddCompletionHandler(v9, v26);
          v6 = v22;
          v5 = v24;
          if ((*(*a3 + 16))(a3) != 85)
          {
            CIMetalCommandBufferCommit(v9);
            CIMetalCommandBufferWaitUntilScheduled(v9);
          }
        }

        v7 = v7 + 1;
      }

      while (v7 != v5);
      result = [a2 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void _ZZZ136__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_inputFormat_outputFormat_options_roiCallback_processor__EUb_EN13SignpostTimerD1E_0v(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_postprocess", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void sub_19CD42B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _ZZZ112__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_outputFormat_options_processor__EUb0_EN13SignpostTimerD1Ev(va, a2);
  _Unwind_Resume(a1);
}

void _ZZZ112__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_outputFormat_options_processor__EUb0_EN13SignpostTimerD1Ev(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_process", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void _ZZZ112__CIImage_CIImageProcessor__imageWithExtent_processorDescription_argumentDigest_outputFormat_options_processor__EUb0_EN13SignpostTimerD1E_0v(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_postprocess", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void digestAdd(CI::XXHashHelper *a1, objc_object *a2, BOOL *a3)
{
  v4 = a2;
  v82 = *MEMORY[0x1E69E9840];
  ClassName = object_getClassName(a2);
  if (objc_opt_class() == v4)
  {
LABEL_21:
    v15 = a1;
    v16 = ClassName;
LABEL_94:

    CI::XXHashHelper::addstr(v15, v16);
    return;
  }

  while (1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = "null";
      goto LABEL_93;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [(objc_object *)v4 objCType];
      alignp = 0;
      sizep = 0;
      v18 = NSGetSizeAndAlignment(v17, &sizep, &alignp);
      if (v17)
      {
        v20 = sizep;
        if (sizep)
        {
          v21 = strchr(v17, 94);
          if (v21 || (v21 = strchr(v17, 42)) != 0)
          {
            v23 = ci_logger_performance(v21, v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446466;
              *&buf[4] = "digestAdd";
              v80 = 2082;
              v81 = v17;
              v24 = "%{public}s failed for NSValue object because its encoding %{public}s contains a pointer.";
              goto LABEL_82;
            }

            goto LABEL_87;
          }

          v64 = strchr(v17, 64);
          if (!v64)
          {
            v66 = malloc_type_calloc(v20, 1uLL, 0xFB6E7D5DuLL);
            [(objc_object *)v4 getValue:v66 size:sizep];
            CI::XXHashHelper::addstr(a1, v17);
            if (v66 && sizep)
            {
              XXH64_update(a1, v66, sizep);
            }

            free(v66);
            return;
          }

          v23 = ci_logger_performance(v64, v65);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_87;
          }

          *buf = 136446466;
          *&buf[4] = "digestAdd";
          v80 = 2082;
          v81 = v17;
          v24 = "%{public}s failed for NSValue object because its encoding %{public}s contains an object.";
LABEL_82:
          v58 = v23;
          v59 = 22;
LABEL_86:
          _os_log_impl(&dword_19CC36000, v58, OS_LOG_TYPE_DEFAULT, v24, buf, v59);
          goto LABEL_87;
        }
      }

      v60 = ci_logger_performance(v18, v19);
      if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_87;
      }

      *buf = 136446210;
      *&buf[4] = "digestAdd";
      v24 = "%{public}s failed for NSValue object because it has no type encoding information.";
LABEL_85:
      v58 = v60;
      v59 = 12;
      goto LABEL_86;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(objc_object *)v4 red];
      *buf = v25;
      XXH64_update(a1, buf, 8uLL);
      [(objc_object *)v4 green];
      *buf = v26;
      XXH64_update(a1, buf, 8uLL);
      [(objc_object *)v4 blue];
      *buf = v27;
      XXH64_update(a1, buf, 8uLL);
      [(objc_object *)v4 alpha];
      *buf = v28;
LABEL_73:
      v56 = a1;
      v57 = 8;
      goto LABEL_74;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [(objc_object *)v4 count];
      if (v29)
      {
        v30 = v29;
        v31 = 0;
        v32 = 1;
        do
        {
          [(objc_object *)v4 valueAtIndex:v31];
          *buf = v33;
          XXH64_update(a1, buf, 8uLL);
          v31 = v32;
        }

        while (v30 > v32++);
        return;
      }

      v16 = "emptyCIVector";
LABEL_93:
      v15 = a1;
      goto LABEL_94;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [(objc_object *)v4 _internalRepresentation];
      if (v35)
      {
        *buf = *(v35 + 116);
        goto LABEL_71;
      }

      v16 = "emptyCIImage";
      goto LABEL_93;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = [(objc_object *)v4 length];
      if (!v36 || (v37 = v36, (v38 = [(objc_object *)v4 bytes]) == 0))
      {
        v16 = "emptyNSData";
        goto LABEL_93;
      }

      goto LABEL_41;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [(objc_object *)v4 lengthOfBytesUsingEncoding:4];
      if (!v39 || (v37 = v39, (v38 = [(objc_object *)v4 UTF8String]) == 0))
      {
        v16 = "emptyNSString";
        goto LABEL_93;
      }

LABEL_41:

      XXH64_update(a1, v38, v37);
      return;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [(objc_object *)v4 count];
      if (v40)
      {
        v41 = v40;
        for (i = 0; i != v41; ++i)
        {
          digestAdd(a1, [(objc_object *)v4 objectAtIndex:i], a3);
        }

        return;
      }

      v16 = "emptyNSArray";
      goto LABEL_93;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v7 = CFGetTypeID(v4);
    if (v7 == CGColorSpaceGetTypeID())
    {
      Name = CGColorSpaceGetName(v4);
      if (Name)
      {

        CI::XXHashHelper::add(a1, Name);
      }

      else
      {
        v62 = CGColorSpaceCopyICCData(v4);
        if (!v62)
        {
          goto LABEL_87;
        }

        v63 = v62;
        CI::XXHashHelper::add(a1, v62);

        CFRelease(v63);
      }

      return;
    }

    v8 = CFGetTypeID(v4);
    if (v8 == CGImageGetTypeID())
    {
      Identifier = CGImageGetIdentifier();
      if (!Identifier)
      {
        return;
      }

      *buf = Identifier;
LABEL_71:
      v56 = a1;
      v57 = 4;
LABEL_74:
      XXH64_update(v56, buf, v57);
      return;
    }

    if ([(objc_object *)v4 conformsToProtocol:&unk_1F10AB0D0])
    {
      *buf = [(objc_object *)v4 uniqueIdentifier];
      goto LABEL_73;
    }

    NSClassFromString(&cfstr_Mlmodel.isa);
    if (objc_opt_isKindOfClass())
    {
      v9 = [(objc_object *)v4 valueForKeyPath:@"configuration.rootModelURL.absoluteString"];
      if (!v9)
      {
        v60 = ci_logger_performance(0, v10);
        if (!os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_87;
        }

        *buf = 136446210;
        *&buf[4] = "digestAdd";
        v24 = "%{public}s failed forMLModel object because it doesnt have a root URL.";
        goto LABEL_85;
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v23 = ci_logger_performance(isKindOfClass, v12);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_81;
        }

        goto LABEL_87;
      }

      v13 = NSSelectorFromString(&cfstr_Ciimageprocess_13.isa);
      v9 = objc_opt_respondsToSelector();
      if ((v9 & 1) == 0 || (v9 = [(objc_object *)v4 performSelector:v13]) == 0)
      {
        v23 = ci_logger_performance(v9, v14);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
LABEL_81:
          *buf = 136446466;
          *&buf[4] = "digestAdd";
          v80 = 2082;
          v81 = ClassName;
          v24 = "%{public}s failed for %{public}s object.";
          goto LABEL_82;
        }

LABEL_87:
        *a3 = 1;
        return;
      }
    }

    v4 = v9;
    ClassName = object_getClassName(v9);
    if (objc_opt_class() == v4)
    {
      goto LABEL_21;
    }
  }

  if (![(objc_object *)v4 count])
  {
    v16 = "emptyNSDictionary";
    goto LABEL_93;
  }

  v43 = [(objc_object *)v4 allKeys];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v44 = [v43 countByEnumeratingWithState:&v71 objects:v78 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v72;
LABEL_51:
    v47 = 0;
    while (1)
    {
      if (*v72 != v46)
      {
        objc_enumerationMutation(v43);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_87;
      }

      if (v45 == ++v47)
      {
        v45 = [v43 countByEnumeratingWithState:&v71 objects:v78 count:16];
        if (v45)
        {
          goto LABEL_51;
        }

        break;
      }
    }
  }

  v48 = [v43 sortedArrayUsingSelector:sel_compare_];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v49 = [v48 countByEnumeratingWithState:&v67 objects:v77 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v68;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v68 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v67 + 1) + 8 * j);
        digestAdd(a1, v53, a3);
        digestAdd(a1, [(objc_object *)v4 objectForKey:v53], a3);
      }

      v50 = [v48 countByEnumeratingWithState:&v67 objects:v77 count:16];
    }

    while (v50);
  }
}

void sub_19CD44394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CGRect>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CGRect>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void sub_19CD44B20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char *__p, uint64_t a32)
{
  __p = &a27;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&__p);
  _Unwind_Resume(a1);
}

CIImageProcessorInput *createTileInput(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, IOSurfaceRef buffer, uint64_t a7, uint64_t a8, char a9, char a10, void *a11, char a12)
{
  v15 = a3;
  v16 = a2;
  v17 = a9;
  if (a12)
  {
    v20 = *a5;
    v21 = *(a5 + 4);
    v22 = *(a5 + 8);
    v23 = *(a5 + 16);
    v24 = *a4;
    v25 = *(a4 + 4);
    v27 = *(a4 + 8);
    v26 = *(a4 + 16);
    if (*a5 == __PAIR128__(0xFFFFFFFFLL, 0x8000000180000001) && v23 == 0xFFFFFFFFLL)
    {
      goto LABEL_4;
    }

    if (v24 == 0x7FFFFFFF)
    {
      if (v25 == 0x7FFFFFFF && !v27 && !v26)
      {
LABEL_4:
        v28 = 0;
        goto LABEL_55;
      }
    }

    else if (v24 == -2147483647 && v25 == -2147483647 && v27 == 0xFFFFFFFFLL && v26 == 0xFFFFFFFFLL)
    {
      v28 = 1;
      goto LABEL_55;
    }

    v44 = v21 > v25 || v21 + v23 < v25 + v26;
    if (v20 + v22 < v24 + v27)
    {
      v44 = 1;
    }

    if (v23)
    {
      v45 = 0;
    }

    else
    {
      v45 = v22 == 0;
    }

    v28 = v45 && v21 == 0x7FFFFFFF && v20 == 0x7FFFFFFF || v20 > v24 || v44;
LABEL_55:
    v49 = v27;
    v50 = v26;
    PixelFormat = IOSurfaceGetPixelFormat(buffer);
    Surface = CreateSurface(v49, v50, 0, PixelFormat, v28);
    CFAutorelease(Surface);
    v54 = *a5;
    v53 = *(a5 + 4);
    v56 = *(a5 + 8);
    v55 = *(a5 + 16);
    v57 = *a4;
    v58 = *(a4 + 4);
    v59 = *(a4 + 8);
    v60 = *(a4 + 16);
    v61 = 0x7FFFFFFF;
    v88 = a8;
    if (__PAIR64__(v53, v54) == 0x7FFFFFFF7FFFFFFFLL && !v56 && !v55)
    {
      v60 = 0;
      v59 = 0;
      v57 = 0x7FFFFFFF;
      v62 = a11;
      goto LABEL_78;
    }

    v62 = a11;
    if (v57 == 0x7FFFFFFF && v58 == 0x7FFFFFFF && !v59 && !v60)
    {
      v59 = 0;
LABEL_64:
      v57 = 0x7FFFFFFF;
      goto LABEL_78;
    }

    if (v54 == -2147483647 && v53 == -2147483647 && v56 == 0xFFFFFFFF && v55 == 0xFFFFFFFF)
    {
      v61 = *(a4 + 4);
    }

    else if (v57 == -2147483647 && v58 == -2147483647 && v59 == 0xFFFFFFFF && v60 == 0xFFFFFFFF)
    {
      v60 = v55;
      v59 = v56;
      v61 = v53;
      v57 = v54;
    }

    else
    {
      if (v54 <= v57)
      {
        v80 = *a4;
      }

      else
      {
        v80 = v54;
      }

      v81 = v57 + v59;
      if (v54 + v56 < v81)
      {
        v81 = v54 + v56;
      }

      v82 = __OFSUB__(v81, v80);
      v83 = v81 - v80;
      if (v83 < 0 != v82)
      {
        goto LABEL_111;
      }

      if (v53 <= v58)
      {
        v61 = *(a4 + 4);
      }

      else
      {
        v61 = v53;
      }

      v84 = v58 + v60;
      if (v53 + v55 < v84)
      {
        v84 = v53 + v55;
      }

      v82 = __OFSUB__(v84, v61);
      v85 = v84 - v61;
      if (v85 < 0 != v82)
      {
LABEL_111:
        v60 = 0;
        v59 = 0;
        v61 = 0x7FFFFFFF;
        goto LABEL_64;
      }

      v59 = v83;
      v60 = v85;
      v57 = v80;
    }

LABEL_78:
    v63 = v57 - v54;
    v64 = v53 + v55 - (v61 + v60);
    if ((*(*v62 + 16))(v62) == 85)
    {
      Queue = CIMetalCommandBufferGetQueue(v62[231]);
      if (Queue)
      {
        v67 = v62[233];
        if (v67)
        {
          v87 = 0;
          goto LABEL_84;
        }

LABEL_83:
        v67 = CIMetalCommandBufferCreate("CIImageProcessor::createTileInput", Queue, 0, 0);
        v87 = 1;
LABEL_84:
        v68 = IOSurfaceGetPixelFormat(buffer);
        v69 = CI::format_from_PixelFormatType(v68);
        v70 = CIMetalFormatForFormat(v69, a9);
        Device = CIMetalTextureGetDevice(v67);
        v72 = CIMetalTextureCreateFromIOSurface("CIImageProcessor::createTileInput", Device, buffer, 0, v70, 1);
        v73 = CIMetalTextureGetDevice(v67);
        v74 = CIMetalTextureCreateFromIOSurface("CIImageProcessor::createTileInput", v73, Surface, 0, v70, 2);
        CIMetalCommandBufferCopyTexture(v67, v74, v72, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v63, v64, v59, v60);
        CFRelease(v72);
        CFRelease(v74);
        if (v87)
        {
          CIMetalCommandBufferCommit(v67);
          CIMetalCommandBufferWaitUntilCompleted(v67);
        }

LABEL_87:
        v30 = [CIImageProcessorInput alloc];
        v75 = *a4;
        v76 = *(a4 + 4);
        v77 = *(a4 + 8);
        v16 = a2;
        v15 = a3;
        a8 = v88;
        if (*a4 == -2147483647)
        {
          v17 = a9;
          if (v76 == -2147483647 && *&v77 == __PAIR128__(0xFFFFFFFFLL, 0xFFFFFFFFLL))
          {
            a7 = 0;
            v78 = MEMORY[0x1E695F040];
            goto LABEL_95;
          }
        }

        else
        {
          v17 = a9;
          if (v75 == 0x7FFFFFFF && v76 == 0x7FFFFFFF && *&v77 == 0)
          {
            a7 = 0;
            v78 = MEMORY[0x1E695F050];
LABEL_95:
            v41 = v78->f64[0];
            v42 = v78->f64[1];
            v43 = v78[1];
            goto LABEL_97;
          }
        }

        a7 = 0;
        v41 = v75;
        v42 = v76;
        v43 = vcvtq_f64_u64(v77);
        goto LABEL_97;
      }
    }

    else
    {
      Queue = [objc_msgSend(a1 "metalContext")];
      if (Queue)
      {
        goto LABEL_83;
      }
    }

    v94[0] = 0;
    v94[1] = v59;
    v94[2] = v60;
    v91[0] = v63;
    v91[1] = v64;
    v92 = v59;
    v93 = v60;
    CI::Context::blitSurface(Surface, v94, buffer, v91, v66);
    goto LABEL_87;
  }

  v30 = [CIImageProcessorInput alloc];
  v31 = *a5;
  v32 = *(a5 + 4);
  v33 = *(a5 + 8);
  v34 = *(a5 + 16);
  if (*a5 == -2147483647)
  {
    if (v32 != -2147483647 || v33.i64[0] != 0xFFFFFFFFLL || v34 != 0xFFFFFFFFLL)
    {
      goto LABEL_31;
    }

    v38 = MEMORY[0x1E695F040];
LABEL_71:
    v41 = v38->f64[0];
    v42 = v38->f64[1];
    v43 = v38[1];
    goto LABEL_72;
  }

  if (v31 == 0x7FFFFFFF && v32 == 0x7FFFFFFF && v33.i64[0] == 0 && v34 == 0)
  {
    v38 = MEMORY[0x1E695F050];
    goto LABEL_71;
  }

LABEL_31:
  v41 = v31;
  v42 = v32;
  v43 = vcvtq_f64_u64(v33);
LABEL_72:
  Surface = buffer;
LABEL_97:
  LOBYTE(v86) = a10;
  return [(CIImageProcessorInput *)v30 initWithSurface:Surface texture:a7 digest:a8 allowSRGB:v17 bounds:v16 roiTileIndex:v15 roiTileCount:v41 onlyMetal:v42 context:*&v43, v86, a11];
}

void _ZZZ65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error__EUb1_EN13SignpostTimerD1Ev(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_process", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void _ZZZ65__CIImageProcessorKernel_applyWithExtent_inputs_arguments_error__EUb1_EN13SignpostTimerD1E_0v(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_postprocess", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void sub_19CD45CDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_19CD463CC(_Unwind_Exception *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char *__p, uint64_t a36)
{
  _ZZZ66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error__EUb2_EN13SignpostTimerD1E_0v(&__p, a2);
  __p = &a32;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&__p);
  _Unwind_Resume(a1);
}

void _ZZZ66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error__EUb2_EN13SignpostTimerD1Ev(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_process", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void _ZZZ66__CIImageProcessorKernel_applyWithExtents_inputs_arguments_error__EUb2_EN13SignpostTimerD1E_0v(TimerBase *a1, uint64_t a2)
{
  v3 = ci_signpost_log_render(a1, a2);
  v5 = *(a1 + 1);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v3;
    if (os_signpost_enabled(v3))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "processor_postprocess", &unk_19CFBCBAE, v7, 2u);
    }
  }

  TimerBase::~TimerBase(a1, v4);
}

void std::vector<CGRect>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CGRect>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CGRect>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void ___ZL12post_processP7NSArrayIP21CIImageProcessorInputEPS_IP22CIImageProcessorOutputEPN2CI7ContextE_block_invoke(void *a1)
{
  if (a1[5])
  {
    v2 = 0;
    v3 = 1;
    do
    {
      ReturnSurfaceToCache(*(a1[6] + 8 * v2));
      v4 = *(a1[7] + 8 * v2);
      if (v4)
      {
        CFRelease(v4);
      }

      v2 = v3;
    }

    while (a1[5] > v3++);
  }

  v6 = a1[6];
  if (v6)
  {
    free(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    free(v7);
  }

  ReturnSurfaceToCache(a1[8]);
  v8 = a1[4];

  CFRelease(v8);
}

uint64_t *std::vector<CGRect>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CGRect>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 5);
  }

  return a1;
}

void sub_19CD47C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  *(v24 - 168) = v24 - 144;
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100]((v24 - 168));
  _Unwind_Resume(a1);
}

void std::vector<unsigned long>::push_back[abi:nn200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void CI::Tileable::TileRectGridMakeFromWidthAndHeightArrays(uint64_t *a1@<X0>, int **a2@<X1>, uint64_t *a3@<X8>)
{
  std::vector<std::vector<IRect>>::vector[abi:nn200100](a3, (a1[1] - *a1) >> 3);
  if (a1[1] != *a1)
  {
    v6 = 0;
    v7 = 0;
    v9 = *a2;
    v8 = a2[1];
    do
    {
      std::vector<IRect>::vector[abi:nn200100](&v20, (v8 - v9) >> 3);
      v10 = *a3 + 24 * v6;
      v11 = *v10;
      if (*v10)
      {
        *(v10 + 8) = v11;
        operator delete(v11);
        *v10 = 0;
        *(v10 + 8) = 0;
        *(v10 + 16) = 0;
      }

      *v10 = v20;
      *(v10 + 16) = v21;
      v9 = *a2;
      v8 = a2[1];
      v12 = *a1;
      if (v8 != *a2)
      {
        v13 = 0;
        v14 = (v8 - *a2) >> 3;
        if (v14 <= 1)
        {
          v14 = 1;
        }

        v15 = (*(*a3 + 24 * v6) + 8);
        v16 = *a2;
        do
        {
          v17 = *(v12 + 8 * v6);
          v18 = *v16;
          *(v15 - 2) = v7;
          *(v15 - 1) = v13;
          *v15 = v17;
          v15[1] = v18;
          v15 += 3;
          v19 = *v16;
          v16 += 8;
          v13 += v19;
          --v14;
        }

        while (v14);
      }

      v7 += *(v12 + 8 * v6++);
    }

    while (v6 < (a1[1] - v12) >> 3);
  }
}

uint64_t getContentDigestFromOptions(NSDictionary *a1, NSString *a2)
{
  v2 = [(NSDictionary *)a1 objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 length];
    if (v3 >= 0x10)
    {
      XXH64_reset(v12, 0);
      v5 = [v2 bytes];
      v6 = [v2 length];
      if (v5)
      {
        if (v6)
        {
          XXH64_update(v12, v5, v6);
        }
      }

      return XXH64_digest(v12);
    }

    v8 = ci_logger_api(v3, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      getContentDigestFromOptions();
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v2 length];
      if (v9 >= 0x10)
      {
        XXH64_reset(v12, 0);
        CI::XXHashHelper::addstr(v12, [v2 UTF8String]);
        return XXH64_digest(v12);
      }

      v11 = ci_logger_api(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        getContentDigestFromOptions();
      }
    }

    return 0;
  }

  return [v2 unsignedLongLongValue];
}

void sub_19CD48210(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

void ___ZL18max_safe_tile_sizev_block_invoke()
{
  v2 = MTLCreateSystemDefaultDevice();
  v0 = [v2 maxTextureWidth2D];
  if (v0 >= [v2 maxTextureHeight2D])
  {
    v1 = [v2 maxTextureHeight2D];
  }

  else
  {
    v1 = [v2 maxTextureWidth2D];
  }

  max_safe_tile_size(void)::max_size = v1;
}

void std::vector<std::vector<IRect>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<IRect>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::vector<std::vector<IRect>>::__init_with_size[abi:nn200100]<std::vector<IRect>*,std::vector<IRect>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<IRect>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

uint64_t *std::vector<IRect>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<IRect>::__vallocate[abi:nn200100](a1, 0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3));
  }

  return a1;
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

CIImage *applyColorMatrix(CIImage *a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a1;
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [(CIImage *)a1 extent];
    if (!CGRectIsEmpty(v27))
    {
      v12 = *a2;
      v13 = *(a2 + 2);
      v14 = 0;
      v15 = *a3;
      v16 = *(a3 + 2);
      v17 = 0;
      v18 = *a4;
      v19 = *(a4 + 2);
      v20 = 0;
      v21 = xmmword_19CF27840;
      v22 = unk_19CF27850;
      v23 = *a5;
      v24 = *(a5 + 2);
      v25 = 0;
      if (!CI::ColorMatrixImage::is_identity(&v12, v10))
      {
        [(CIImage *)v5 _internalRepresentation];
        operator new();
      }

      return v5;
    }
  }

  return v5;
}

double CI::sw_yccCombiner(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *(&v12 + 4) = *v11;
  return *&v12;
}

float addPixel<float>(float *a1, float *a2)
{
  if (a2)
  {
    v2 = a1[1];
    *a1 = *a2 + *a1;
    a1[1] = a2[1] + v2;
    v3 = a1[3];
    a1[2] = a2[2] + a1[2];
    result = a2[3] + v3;
    a1[3] = result;
  }

  return result;
}

BOOL ClipSegmentToHalfplane(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float *a9, float *a10, float *a11, float *a12)
{
  v12 = ((a2 - a6) * a8) + ((a1 - a5) * a7);
  v13 = ((a4 - a6) * a8) + ((a3 - a5) * a7);
  v14 = v13 > 0.0 || v12 > 0.0;
  if (v14)
  {
    if (v12 <= 0.0 || v13 <= 0.0)
    {
      if (v12 <= 0.0)
      {
        v16 = v13 / (v13 - v12);
        a1 = a3 + ((a1 - a3) * v16);
        a2 = a4 + ((a2 - a4) * v16);
      }

      else
      {
        v15 = v12 / (v12 - v13);
        a3 = a1 + ((a3 - a1) * v15);
        a4 = a2 + ((a4 - a2) * v15);
      }
    }

    *a9 = a1;
    *a10 = a2;
    *a11 = a3;
    *a12 = a4;
  }

  return v14;
}

float32x2_t CI::sw_kaleida(CI *a1, uint64_t a2, uint64_t a3)
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

  v31 = *v11;
  v32 = *v15;
  v33 = *v7->f32;
  v16 = COERCE_FLOAT(*&v7[1]);
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vaddv_f32(vmul_f32(*v31.i8, v17));
  v19 = fabsf(vaddv_f32(vmul_f32(*&vextq_s8(v31, v31, 8uLL), v17)));
  v20 = floor(vmuls_lane_f32(atan2f(v19, v18), v33, 3) + 0.5) * -v16;
  v21 = 3.1416 - v20;
  if (v20 <= 1.5708)
  {
    v21 = v20;
  }

  if (v21 < -1.5708)
  {
    v21 = -3.1416 - v21;
  }

  v22 = v21 * (v21 * v21);
  v23 = v21 + v22 / -6.0 + (v21 * (v21 * v22)) / 120.0 + (v21 * (v21 * (v21 * (v21 * v22)))) / -5040.0 + (v21 * (v21 * (v21 * (v21 * (v21 * (v21 * v22)))))) / 362880.0;
  v24 = fabsf(v20);
  v25 = v24 <= 1.5708;
  if (v24 > 1.5708)
  {
    v24 = 3.1416 - v24;
  }

  v26 = ((((v24 * v24) * 0.0000248015873 + -0.00138888889) * (v24 * v24) + 0.0416666667) * (v24 * v24) + -0.5) * (v24 * v24) + 1.0;
  if (!v25)
  {
    v26 = -v26;
  }

  v27.f32[0] = (v18 * v26) - (v19 * v23);
  v27.i32[1] = fabsf((v19 * v26) + (v18 * v23));
  v28 = vmul_f32(*v32.i8, v27);
  v29 = vmul_f32(*&vextq_s8(v32, v32, 8uLL), v27);
  return vadd_f32(*v33.f32, vadd_f32(vzip1_s32(v28, v29), vzip2_s32(v28, v29)));
}

BOOL CIKernelReflection::reflect(CIKernelReflection *this, uint64_t a2, uint64_t a3, NSError **a4)
{
  v64 = *MEMORY[0x1E69E9840];
  KernelByIdx = fosl_filter_kernelpool_getKernelByIdx(a2, a3);
  if (!KernelByIdx)
  {
    v15 = CIKernelError(a4, 4u, &cfstr_NoValidKernels.isa);
    v17 = ci_logger_compile(v15, v16);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

LABEL_10:
    CIKernelReflection::reflect();
    return 0;
  }

  v7 = KernelByIdx;
  this->var2 = fosl_filter_kernelpool_getKernelName(KernelByIdx);
  p_var2 = &this->var2;
  PrintedKernel = fosl_filter_kernelpool_getPrintedKernel(v7);
  this->var3 = PrintedKernel;
  if (this->var2)
  {
    v10 = PrintedKernel == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = CIKernelError(a4, 4u, &cfstr_NoValidKernels.isa);
    v13 = ci_logger_compile(v11, v12);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (FOSL_PRINT_KERNEL_AST())
  {
    fprintf(*MEMORY[0x1E69E9848], "Printed AST of kernel %s:\n%s\n", this->var2, this->var3);
  }

  KernelKind = fosl_filter_kernelpool_getKernelKind(v7);
  if (KernelKind <= 2)
  {
    this->var0 = dword_19CF27920[KernelKind];
  }

  KernelReturnType = fosl_filter_kernelpool_getKernelReturnType(v7);
  switch(KernelReturnType)
  {
    case 1:
      v21 = 1;
      break;
    case 3:
      v21 = 2;
      break;
    case 19:
      v21 = 3;
      break;
    default:
      goto LABEL_23;
  }

  this->var1 = v21;
LABEL_23:
  NumKernelParameters = fosl_filter_kernelpool_getNumKernelParameters(v7);
  std::vector<CI::KernelArgumentType>::reserve(&this->var5.var0, NumKernelParameters);
  std::vector<std::string>::reserve(&this->var6, NumKernelParameters);
  if (!NumKernelParameters)
  {
    v60 = 0;
LABEL_59:
    if (fosl_filter_kernelpool_isPositionInvariant(v7) && this->var0 != 3)
    {
      this->var8 |= 1u;
    }

    if ((v60 & 1) != 0 && fosl_filter_kernelpool_preservesAlpha(v7))
    {
      this->var8 |= 2u;
    }

    if (!fosl_filter_kernelpool_getNumKernelAttributes(v7))
    {
      return 1;
    }

    v25 = 0;
    v26 = "outputFormat";
    v27 = "preserves_opacity";
    while (1)
    {
      AttributeKeyword = fosl_filter_kernelpool_getAttributeKeyword(v7, v25);
      v29 = fosl_filter_kernelpool_hasAttributeParameters(v7, v25) ? fosl_filter_kernelpool_getAttributeParameters(v7, v25) : 0;
      if (!strcmp(AttributeKeyword, v26) && v29)
      {
        break;
      }

LABEL_102:
      v42 = strcmp(AttributeKeyword, v27);
      if (!v42 && !v29 && this->var0 != 3)
      {
        if (v60)
        {
          this->var8 |= 2u;
        }

        else
        {
          v44 = ci_logger_api(v42, v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&dword_19CC36000, v44, OS_LOG_TYPE_INFO, "kernel __attibute__((preserves_opacity)) is not relevant for kernels without sample or sampler arguments.", &__p, 2u);
          }
        }
      }

      if (!strcmp(AttributeKeyword, "unassociated_alpha") && !v29 && this->var0 != 3)
      {
        this->var8 |= 0x100u;
      }

      v25 = (v25 + 1);
      if (v25 >= fosl_filter_kernelpool_getNumKernelAttributes(v7))
      {
        return 1;
      }
    }

    v30 = std::string::basic_string[abi:nn200100]<0>(&__p, v29);
    v32 = v27;
    v33 = v26;
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      if (__p.__r_.__value_.__l.__size_ >= 11)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_77:
        v36 = p_p + size;
        v30 = p_p;
        do
        {
          v30 = memchr(v30, 107, size - 8);
          if (!v30)
          {
            break;
          }

          if (*v30 == 0x616D726F4649436BLL && *(v30 + 8) == 116)
          {
            if (v30 == p_p)
            {
              v30 = std::string::basic_string(&v63, &__p, 9uLL, 0xFFFFFFFFFFFFFFFFLL, &v62);
              v38 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
              if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v38 = v63.__r_.__value_.__l.__size_;
              }

              if (v38)
              {
                v39 = 0;
                while (1)
                {
                  v40 = dword_19CF278D8[v39];
                  v30 = CI::name_for_format(v40);
                  v31 = v30;
                  if (v30)
                  {
                    v30 = std::string::compare(&v63, v30);
                    if (!v30)
                    {
                      break;
                    }
                  }

                  if (++v39 == 6)
                  {
                    goto LABEL_95;
                  }
                }

                this->var9 = v40;
              }

LABEL_95:
              if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v63.__r_.__value_.__l.__data_);
              }
            }

            break;
          }

          size = &v36[-++v30];
        }

        while (&v36[-v30] >= 9);
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) >= 0xB)
    {
      p_p = &__p;
      goto LABEL_77;
    }

    v26 = v33;
    v27 = v32;
    if (!this->var9)
    {
      v41 = ci_logger_api(v30, v31);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        LODWORD(v63.__r_.__value_.__l.__data_) = 136446210;
        *(v63.__r_.__value_.__r.__words + 4) = v29;
        _os_log_impl(&dword_19CC36000, v41, OS_LOG_TYPE_INFO, "%{public}s is not an known pixel format name. Will use working format instead.", &v63, 0xCu);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_102;
  }

  v60 = 0;
  v23 = 0;
  while (2)
  {
    ParamName = fosl_filter_kernelpool_getParamName(v7, v23);
    std::string::basic_string[abi:nn200100]<0>(&__p, ParamName);
    std::vector<std::string>::push_back[abi:nn200100](&this->var6, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    switch(fosl_filter_kernelpool_getParamType(v7, v23))
    {
      case 0u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 5;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 1u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 6;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 2u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 7;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 3u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 8;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 4u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 27;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 5u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 10;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 6u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 11;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 7u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 19;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 8u:
        if (this->var0 == 3)
        {
          v48 = CIKernelError(a4, 0x13u, &cfstr_WarpKernelSHas.isa, *p_var2, ParamName);
          v50 = ci_logger_compile(v48, v49);
          result = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

          goto LABEL_119;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 4;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 9u:
        if (this->var0 == 3)
        {
          v51 = CIKernelError(a4, 0x13u, &cfstr_WarpKernelSHas.isa, *p_var2, ParamName);
          v53 = ci_logger_compile(v51, v52);
          result = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
          if (result)
          {
            CIKernelReflection::reflect();
            return 0;
          }

          return result;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 1;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_54;
      case 0xAu:
        this->var13 = 1;
        LODWORD(__p.__r_.__value_.__l.__data_) = 2;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_54;
      case 0xCu:
        LODWORD(__p.__r_.__value_.__l.__data_) = 9;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 0x10u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 12;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 0x11u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 13;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 0x12u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 14;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 0x13u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 15;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 0x14u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 16;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 0x15u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 17;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 0x16u:
        LODWORD(__p.__r_.__value_.__l.__data_) = 18;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_56;
      case 0x18u:
        if (this->var0 == 3)
        {
          v57 = CIKernelError(a4, 0x13u, &cfstr_WarpKernelSHas.isa, *p_var2, ParamName);
          v59 = ci_logger_compile(v57, v58);
          result = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            return result;
          }

LABEL_119:
          CIKernelReflection::reflect();
          return 0;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 4;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        this->var8 |= 0x10u;
        goto LABEL_56;
      case 0x19u:
        if (this->var0 != 3)
        {
          LODWORD(__p.__r_.__value_.__l.__data_) = 1;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
LABEL_34:
          this->var8 |= 0x10u;
LABEL_54:
          v60 = 1;
LABEL_56:
          v23 = (v23 + 1);
          if (NumKernelParameters == v23)
          {
            goto LABEL_59;
          }

          continue;
        }

        v54 = CIKernelError(a4, 0x13u, &cfstr_WarpKernelSHas.isa, *p_var2, ParamName);
        v56 = ci_logger_compile(v54, v55);
        result = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
        if (result)
        {
          CIKernelReflection::reflect();
          return 0;
        }

        return result;
      case 0x1Au:
        this->var13 = 1;
        LODWORD(__p.__r_.__value_.__l.__data_) = 2;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, &__p);
        goto LABEL_34;
      default:
        v45 = CIKernelError(a4, 4u, &cfstr_KernelSHasAnUn.isa, *p_var2, ParamName);
        v47 = ci_logger_compile(v45, v46);
        result = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        CIKernelReflection::reflect();
        return 0;
    }
  }
}

void sub_19CD4BA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *CIKernelError(void *result, unsigned int a2, NSString *a3, ...)
{
  va_start(va, a3);
  v6[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v4 = result;
    v5 = @"CINonLocalizedDescriptionKey";
    v6[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:a3 arguments:va];
    result = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIKernel" code:a2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1)}];
    *v4 = result;
  }

  return result;
}

void std::vector<CI::KernelArgumentType>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::NodeIndex>>(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<std::string>::reserve(std::vector<std::string> *this, std::vector<std::string>::size_type __n)
{
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 3) < __n)
  {
    if (__n < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(this, __n);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    v6 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v6;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v7 = v4 + 24;
  }

  *(a1 + 8) = v7;
}

void std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::NodeIndex>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

uint64_t CIKernelReflection::reflect(CIKernelReflection *this, CIKernelLibrary *a2, char *__s2, NSError **a4)
{
  v136 = *MEMORY[0x1E69E9840];
  this->var7 = a2;
  p_var7 = &this->var7;
  v9 = strcmp("main", __s2);
  v10 = "main1";
  if (v9)
  {
    v10 = __s2;
  }

  this->var2 = v10;
  this->var4 = [(NSString *)[(CIKernelLibrary *)a2 mtl_source] UTF8String];
  v11 = [*p_var7 functionWithName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", this->var2)}];
  if (!v11)
  {
    v15 = [*p_var7 functionCount];
    v16 = "";
    if (!v15)
    {
      v16 = "Check if Metal library is linked with -cikernel option.";
    }

    v17 = CIKernelError(a4, 1u, &cfstr_FunctionDoesNo.isa, v16);
    v19 = ci_logger_api(v17, v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      CIKernelReflection::reflect();
    }

    v22 = ci_logger_api(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      CIKernelReflection::reflect(p_var7, v22);
    }

    return 0;
  }

  v12 = v11;
  v108 = p_var7;
  v13 = [objc_msgSend(v11 "returnType")];
  v14 = 0;
  if (v13 <= 5)
  {
    if (v13)
    {
      if (v13 != 4)
      {
        goto LABEL_166;
      }

      v14 = 1;
    }
  }

  else
  {
    switch(v13)
    {
      case 6:
        v14 = 2;
        break;
      case 19:
        v14 = 3;
        break;
      case 61:
        break;
      default:
LABEL_166:
        v67 = CIKernelError(a4, 2u, &cfstr_FunctionDoesNo_0.isa);
        v69 = ci_logger_api(v67, v68);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          CIKernelReflection::reflect();
        }

        return 0;
    }
  }

  this->var1 = v14;
  this->var12 = [v12 functionType] == 5;
  __src = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v23 = [objc_msgSend(v12 "arguments")];
  v107 = a4;
  if (v23)
  {
    v24 = 0;
    while (1)
    {
      v25 = [objc_msgSend(v12 "arguments")];
      v26 = [v25 type];
      __p[0] = v26;
      if (!this->var12)
      {
        goto LABEL_40;
      }

      if ([objc_msgSend(v25 "dataTypeDescription")] != 1)
      {
        break;
      }

      v27 = [v25 dataTypeDescription];
      v28 = [v27 typeName];
      if (([v28 isEqualToString:@"coreimage::destination"] & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::Destination") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::priv::destination") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::priv::destination_h") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::priv::Destination") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::priv::Destination_h") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::group::destination") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::group::destination_h") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::group::Destination") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::group::Destination_h") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::sampler") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::Sampler") & 1) != 0 || (objc_msgSend(v28, "isEqualToString:", @"coreimage::sampler_h") & 1) != 0 || objc_msgSend(v28, "isEqualToString:", @"coreimage::Sampler_h"))
      {
        v121 = 1;
        std::vector<unsigned long>::push_back[abi:nn200100](&__src, &v121);
        std::vector<unsigned long>::push_back[abi:nn200100](&v125, __p);
        v121 = [v25 name];
        std::vector<NSString *>::push_back[abi:nn200100](&v128, &v121);
        v121 = [v28 lowercaseString];
        std::vector<NSString *>::push_back[abi:nn200100](&v122, &v121);
      }

      else
      {
        v39 = [v27 members];
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        v40 = [v39 countByEnumeratingWithState:&v117 objects:v135 count:16];
        if (v40)
        {
          v41 = 0;
          obj = v39;
          v105 = *v118;
          do
          {
            v42 = 0;
            v109 = v40;
            do
            {
              if (*v118 != v105)
              {
                objc_enumerationMutation(obj);
              }

              v43 = *(*(&v117 + 1) + 8 * v42);
              v121 = [v43 dataType];
              std::vector<unsigned long>::push_back[abi:nn200100](&__src, &v121);
              v121 = [v43 dataType];
              std::vector<MTLArgumentTypePrivate>::emplace_back<MTLArgumentTypePrivate>(&v125, &v121);
              v121 = [objc_msgSend(objc_msgSend(v25 "name")];
              std::vector<NSString *>::push_back[abi:nn200100](&v128, &v121);
              v121 = &stru_1F1040378;
              std::vector<NSString *>::push_back[abi:nn200100](&v122, &v121);
              ++v42;
              v41 = (v41 + 1);
            }

            while (v109 != v42);
            v40 = [obj countByEnumeratingWithState:&v117 objects:v135 count:16];
          }

          while (v40);
        }
      }

LABEL_57:
      if (++v24 == v23)
      {
        goto LABEL_67;
      }
    }

    v26 = __p[0];
LABEL_40:
    if (v26 == 28 || v26 == 18)
    {
      v121 = [objc_msgSend(v25 "dataTypeDescription")];
      std::vector<unsigned long>::push_back[abi:nn200100](&__src, &v121);
      std::vector<unsigned long>::push_back[abi:nn200100](&v125, __p);
      v121 = [v25 name];
      std::vector<NSString *>::push_back[abi:nn200100](&v128, &v121);
      v121 = &stru_1F1040378;
      std::vector<NSString *>::push_back[abi:nn200100](&v122, &v121);
    }

    else if (v26 == 2)
    {
      v29 = v132;
      if (v132 >= v133)
      {
        v31 = __src;
        v32 = v132 - __src;
        v33 = (v132 - __src) >> 3;
        v34 = v33 + 1;
        if ((v33 + 1) >> 61)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v35 = v133 - __src;
        if ((v133 - __src) >> 2 > v34)
        {
          v34 = v35 >> 2;
        }

        v36 = v35 >= 0x7FFFFFFFFFFFFFF8;
        v37 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v36)
        {
          v37 = v34;
        }

        if (v37)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(&__src, v37);
        }

        *(8 * v33) = 65000;
        v30 = 8 * v33 + 8;
        memcpy(0, v31, v32);
        v38 = __src;
        __src = 0;
        v132 = v30;
        v133 = 0;
        if (v38)
        {
          operator delete(v38);
        }
      }

      else
      {
        *v132 = 65000;
        v30 = (v29 + 8);
      }

      v132 = v30;
      std::vector<unsigned long>::push_back[abi:nn200100](&v125, __p);
      v121 = [v25 name];
      std::vector<NSString *>::push_back[abi:nn200100](&v128, &v121);
      v121 = &stru_1F1040378;
      std::vector<NSString *>::push_back[abi:nn200100](&v122, &v121);
    }

    goto LABEL_57;
  }

LABEL_67:
  v45 = __src;
  v44 = v132;
  v46 = (v132 - __src) >> 3;
  std::vector<std::string>::reserve(&this->var6, v46);
  std::vector<CI::KernelArgumentType>::reserve(&this->var5.var0, v46);
  if (v44 == v45)
  {
    v57 = 0;
    v49 = 0;
    v106 = 0;
    goto LABEL_155;
  }

  v47 = 0;
  obja = 0;
  v110 = 0;
  v48 = 0;
  v49 = 0;
  v106 = 0;
  v102 = v46 - 1;
  if (v46 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v46;
  }

  do
  {
    v51 = [*(v128 + v47) stringByTrimmingCharactersInSet:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz", "invertedSet")}];
    v52 = v51;
    v53 = *(__src + v47);
    switch(v53)
    {
      case 1:
        v54 = *(v122 + v47);
        if ([v54 isEqualToString:@"coreimage::destination"])
        {
          LODWORD(__p[0]) = 30;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          goto LABEL_133;
        }

        if ([v54 isEqualToString:@"coreimage::priv::destination"])
        {
          LODWORD(__p[0]) = 31;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          goto LABEL_133;
        }

        if ([v54 isEqualToString:@"coreimage::priv::destination_h"])
        {
          LODWORD(__p[0]) = 32;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          goto LABEL_133;
        }

        if ([v54 isEqualToString:@"coreimage::group::destination"])
        {
          LODWORD(__p[0]) = 33;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
LABEL_147:
          ++v49;
          v106 = 1;
          break;
        }

        if ([v54 isEqualToString:@"coreimage::group::destination_h"])
        {
          LODWORD(__p[0]) = 34;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          goto LABEL_147;
        }

        if (([v54 isEqualToString:@"coreimage::sampler"] & 1) == 0 && !objc_msgSend(v54, "isEqualToString:", @"coreimage::sampler_h"))
        {
          v99 = CIKernelError(v107, 3u, &cfstr_UnsupportedTyp.isa, v52);
          v101 = ci_logger_api(v99, v100);
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_236;
          }

LABEL_212:
          v70 = 0;
          goto LABEL_213;
        }

        LODWORD(__p[0]) = 2;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
LABEL_80:
        obja = 1;
        break;
      case 2:
      case 8:
      case 9:
      case 10:
      case 12:
      case 13:
      case 14:
      case 21:
      case 22:
      case 23:
      case 25:
      case 26:
      case 27:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
        goto LABEL_225;
      case 3:
        LODWORD(__p[0]) = 5;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 4:
        if (v110 == 3)
        {
          LODWORD(__p[0]) = 2;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          v52 = [(__CFString *)v52 stringByReplacingOccurrencesOfString:@".coerce3" withString:&stru_1F1040378];
          v110 = 0;
          goto LABEL_80;
        }

        if ([(__CFString *)v51 hasSuffix:@".coerce"])
        {
          LODWORD(__p[0]) = 30;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          v52 = [(__CFString *)v52 stringByReplacingOccurrencesOfString:@".coerce" withString:&stru_1F1040378];
LABEL_133:
          ++v49;
        }

        else
        {
          v56 = [(__CFString *)v52 isEqual:@"coerce"]^ 1;
          if (v102 != v47)
          {
            LOBYTE(v56) = 1;
          }

          if (v56)
          {
            if ([(__CFString *)v52 hasSuffix:@".coerce0"])
            {
              LODWORD(__p[0]) = 30;
              std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
              ++v49;
              v48 = 1;
            }

            else
            {
              LODWORD(__p[0]) = 6;
              std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
            }
          }

          else
          {
            LODWORD(__p[0]) = 30;
            std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
            ++v49;
            v52 = @"_annon_dest_";
          }
        }

        break;
      case 5:
        LODWORD(__p[0]) = 7;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 6:
        if (v48 == 2)
        {
          LODWORD(__p[0]) = 36;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          v48 = 3;
        }

        else
        {
          LODWORD(__p[0]) = 8;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        }

        break;
      case 7:
        LODWORD(__p[0]) = 9;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        goto LABEL_116;
      case 11:
        LODWORD(__p[0]) = 10;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        goto LABEL_116;
      case 15:
        if (v48 == 3)
        {
          LODWORD(__p[0]) = 37;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          v48 = 4;
        }

        else
        {
          LODWORD(__p[0]) = 11;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
LABEL_116:
          v52 = [(__CFString *)v52 stringByReplacingOccurrencesOfString:@".coerce" withString:&stru_1F1040378];
        }

        break;
      case 16:
        LODWORD(__p[0]) = 12;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 17:
        LODWORD(__p[0]) = 13;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 18:
        LODWORD(__p[0]) = 14;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 19:
        LODWORD(__p[0]) = 15;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 20:
        LODWORD(__p[0]) = 16;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 24:
        LODWORD(__p[0]) = 17;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 28:
        LODWORD(__p[0]) = 18;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 29:
        LODWORD(__p[0]) = 19;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 30:
        LODWORD(__p[0]) = 20;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 31:
        LODWORD(__p[0]) = 21;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 32:
        LODWORD(__p[0]) = 22;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 33:
        LODWORD(__p[0]) = 23;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 34:
        if (v48 == 1)
        {
          LODWORD(__p[0]) = 35;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
          v48 = 2;
        }

        else
        {
          LODWORD(__p[0]) = 24;
          std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        }

        break;
      case 35:
      case 36:
        LODWORD(__p[0]) = 26;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      case 58:
        switch(v48)
        {
          case 5:
            LODWORD(__p[0]) = 39;
            std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
            v106 = 0;
            v48 = 6;
            break;
          case 4:
            LODWORD(__p[0]) = 38;
            std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
            v106 = 1;
            v48 = 5;
            break;
          case 0:
            if (this->var1 == 1)
            {
              v96 = CIKernelError(v107, 3u, &cfstr_UnsupportedTyp.isa, [(__CFString *)v51 stringByReplacingOccurrencesOfString:@".coerce" withString:&stru_1F1040378]);
              v98 = ci_logger_compile(v96, v97);
              if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
              {
                CIKernelReflection::reflect();
              }

              goto LABEL_212;
            }

            v48 = 0;
            v55 = v110 + 1;
            goto LABEL_110;
          default:
            v93 = CIKernelError(v107, 3u, &cfstr_UnsupportedTyp.isa, v51);
            v95 = ci_logger_api(v93, v94);
            if (!os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_212;
            }

LABEL_236:
            CIKernelReflection::reflect();
            goto LABEL_212;
        }

        break;
      case 59:
        if (v110 == 1)
        {
          v55 = 2;
LABEL_110:
          v110 = v55;
          goto LABEL_138;
        }

        v87 = CIKernelError(v107, 3u, &cfstr_UnsupportedTyp.isa, v51);
        v89 = ci_logger_api(v87, v88);
        if (!os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_212;
        }

        goto LABEL_236;
      case 60:
        if (v110 == 2)
        {
          v55 = 3;
          goto LABEL_110;
        }

        if (*(v125 + v47) == 28)
        {
          LODWORD(__p[0]) = 29;
        }

        else
        {
          LODWORD(__p[0]) = 28;
        }

        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
      default:
        if (v53 != 65000)
        {
LABEL_225:
          v84 = CIKernelError(v107, 3u, &cfstr_UnsupportedTyp.isa, v51);
          v86 = ci_logger_api(v84, v85);
          if (!os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_212;
          }

          goto LABEL_236;
        }

        if (this->var1 == 1)
        {
          v90 = CIKernelError(v107, 3u, &cfstr_UnsupportedTyp.isa, v51);
          v92 = ci_logger_api(v90, v91);
          if (!os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_212;
          }

          goto LABEL_236;
        }

        LODWORD(__p[0]) = 4;
        std::vector<CI::KernelArgumentType>::push_back[abi:nn200100](&this->var5.var0, __p);
        break;
    }

    if (![(__CFString *)v52 length])
    {
      v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_annon_%d_", v47];
    }

    std::string::basic_string[abi:nn200100]<0>(__p, -[__CFString UTF8String](v52, "UTF8String"));
    std::vector<std::string>::push_back[abi:nn200100](&this->var6, __p);
    if (v116 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_138:
    ++v47;
  }

  while (v50 != v47);
  v57 = obja;
  if (v49 >= 2)
  {
    v58 = CIKernelError(v107, 5u, &cfstr_FunctionHasToo.isa);
    v60 = ci_logger_api(v58, v59);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      CIKernelReflection::reflect();
    }

    goto LABEL_212;
  }

LABEL_155:
  var1 = this->var1;
  v62 = 1;
  if (var1 > 3)
  {
    v63 = v108;
  }

  else
  {
    v63 = v108;
    if (var1 != 1)
    {
      if (v57)
      {
        v62 = 1;
      }

      else
      {
        v62 = 2;
      }
    }
  }

  if (var1 == 1)
  {
    if (v57)
    {
      v64 = CIKernelError(v107, 5u, &cfstr_CiwarpkernelsC.isa);
      v66 = ci_logger_api(v64, v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        CIKernelReflection::reflect();
      }

      goto LABEL_212;
    }

    if (!v49)
    {
      v81 = CIKernelError(v107, 6u, &cfstr_CiwarpkernelsM.isa);
      v83 = ci_logger_api(v81, v82);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        CIKernelReflection::reflect();
      }

      goto LABEL_212;
    }

    this->var0 = 3;
LABEL_171:
    if ((*(this->var5.var1 - 1) - 30) >= 0xA)
    {
      CIKernelError(v107, 4u, &cfstr_IfSpecifiedDes.isa);
      goto LABEL_212;
    }

    if (v106)
    {
      *&this->var10 = vdupq_n_s64(2uLL);
    }
  }

  else
  {
    this->var0 = v62;
    if (v49)
    {
      goto LABEL_171;
    }

    this->var8 |= 1u;
  }

  if (!CI_ENABLE_METAL_FUNCTION_ATTRIBUTES() || !this->var1 || (v71 = [*v63 refelectionWithFunctionName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", this->var2)}]) == 0 || (v72 = NSSelectorFromString(&cfstr_Userannotation.isa), (objc_opt_respondsToSelector() & 1) == 0) || (v73 = objc_msgSend(v71, "performSelector:", v72)) == 0 || (v74 = objc_msgSend(v73, "componentsSeparatedByString:", @","), v113 = 0u, v114 = 0u, v111 = 0u, v112 = 0u, (v75 = objc_msgSend(v74, "countByEnumeratingWithState:objects:count:", &v111, v134, 16)) == 0))
  {
    v70 = 1;
    goto LABEL_213;
  }

  v76 = *v112;
  while (2)
  {
    v77 = 0;
    while (2)
    {
      if (*v112 != v76)
      {
        objc_enumerationMutation(v74);
      }

      v78 = *(*(&v111 + 1) + 8 * v77);
      if ([v78 isEqualToString:@"kCIPreservesOpacity"])
      {
        this->var8 |= 2u;
      }

      if ([v78 isEqualToString:@"kCIUnassociatedAlpha"])
      {
        this->var8 |= 0x100u;
      }

      if ([v78 isEqualToString:@"kCIPreservesRange"])
      {
        this->var8 |= 0x20u;
      }

      if ([v78 isEqualToString:@"kCIPreservesColorSpace"])
      {
        this->var8 |= 0x80u;
      }

      if ([v78 isEqualToString:@"kCICanReduceOutputChannels"])
      {
        this->var8 |= 0x40u;
      }

      if ([v78 isEqualToString:@"kCIFormatR8"])
      {
        v79 = 261;
        goto LABEL_206;
      }

      if ([v78 isEqualToString:@"kCIFormatRG8"])
      {
        v79 = 262;
        goto LABEL_206;
      }

      if ([v78 isEqualToString:@"kCIFormatRGBA8"])
      {
        v79 = 264;
        goto LABEL_206;
      }

      if ([v78 isEqualToString:@"kCIFormatRh"])
      {
        v79 = 2053;
        goto LABEL_206;
      }

      if ([v78 isEqualToString:@"kCIFormatRGh"])
      {
        v79 = 2054;
        goto LABEL_206;
      }

      if ([v78 isEqualToString:@"kCIFormatRGBAh"])
      {
        v79 = 2056;
LABEL_206:
        this->var9 = v79;
      }

      if (v75 != ++v77)
      {
        continue;
      }

      break;
    }

    v75 = [v74 countByEnumeratingWithState:&v111 objects:v134 count:16];
    v70 = 1;
    if (v75)
    {
      continue;
    }

    break;
  }

LABEL_213:
  if (v122)
  {
    v123 = v122;
    operator delete(v122);
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (__src)
  {
    v132 = __src;
    operator delete(__src);
  }

  return v70;
}

void sub_19CD4D28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<NSString *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *CIKernelReflection::reflectConstants(CIKernelReflection *this)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = [this->var7 functionWithName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", this->var2)}];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_msgSend(v2 "arguments")];
  if (this->var12)
  {
    v5 = [v3 functionConstantsDictionary];
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = [v5 objectForKeyedSubscript:v11];
          [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", objc_msgSend(v12, "type")), v11}];
        }

        v8 = [v5 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v8);
    }

    return v6;
  }

  v13 = v4;
  v14 = [v3 device];
  obj = 0;
  v15 = malloc_type_calloc(v13, 0x18uLL, 0x1000040504FFAC1uLL);
  v16 = v15;
  if (v13)
  {
    v17 = (v13 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v18 = vdupq_n_s64(v13 - 1);
    v19 = xmmword_19CF22E40;
    v20 = vdupq_n_s64(2uLL);
    v21 = v15;
    do
    {
      v22 = vmovn_s64(vcgeq_u64(v18, v19));
      if (v22.i8[0])
      {
        *v21 = 3;
      }

      if (v22.i8[4])
      {
        v21[3] = 3;
      }

      v19 = vaddq_s64(v19, v20);
      v21 += 6;
      v17 -= 2;
    }

    while (v17);
  }

  v47[0] = 0;
  v48 = v13;
  v49 = v15;
  v50 = 0;
  v51 = v13;
  v52 = v15;
  v46[0] = v3;
  v46[1] = v3;
  v23 = [v14 newLibraryWithImageFilterFunctionsSPI:objc_msgSend(MEMORY[0x1E695DEC8] imageFilterFunctionInfo:"arrayWithObjects:count:" error:{v46, 2), v47, &obj}];
  free(v16);
  if (!v23)
  {
    if (obj)
    {
      v34 = ci_logger_api(v24, v25);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        CIKernelReflection::reflectConstants();
      }

      CFShow(obj);
    }

    return 0;
  }

  v26 = [v23 newFunctionWithName:@"ciKernelMain"];
  v27 = [v26 functionConstantsDictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = [v27 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v37;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v36 + 1) + 8 * j);
        v33 = [v27 objectForKeyedSubscript:v32];
        [v6 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", objc_msgSend(v33, "type")), v32}];
      }

      v29 = [v27 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v29);
  }

  return v6;
}

uint64_t *CIKernelReflection::consolidate@<X0>(CIKernelReflection *this@<X0>, const CIKernelReflection *a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *&a2->var3;
  *a4 = *&a2->var0;
  *(a4 + 16) = v7;
  std::vector<CI::KernelArgumentType>::vector[abi:nn200100]((a4 + 32), &a2->var5.var0);
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  result = std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>((a4 + 56), a2->var6.var0, a2->var6.var1, 0xAAAAAAAAAAAAAAABLL * ((a2->var6.var1 - a2->var6.var0) >> 3));
  v9 = *&a2->var10;
  *(a4 + 80) = *&a2->var7;
  *(a4 + 96) = v9;
  *(a4 + 112) = *&a2->var12;
  *(a4 + 16) = this->var3;
  *(a4 + 92) = this->var9;
  var0 = this->var5.var0;
  v11 = this->var5.var1 - var0;
  if (v11)
  {
    v12 = v11 >> 2;
    v13 = *(a4 + 32);
    if (v12 <= 1)
    {
      v12 = 1;
    }

    do
    {
      v14 = *var0++;
      *v13++ = v14;
      --v12;
    }

    while (v12);
  }

  *(a4 + 88) |= this->var8;
  *(a4 + 113) = this->var13;
  return result;
}

void sub_19CD4D974(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void CIKernelReflection::~CIKernelReflection(CIKernelReflection *this)
{
  p_var6 = &this->var6;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&p_var6);
  var0 = this->var5.var0;
  if (var0)
  {
    this->var5.var1 = var0;
    operator delete(var0);
  }
}

id KernelKindAlloc(int a1, uint64_t a2)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [v3 alloc];
}

uint64_t CI::XXHashHelper::add(CI::XXHashHelper *this, CFNumberRef number)
{
  if (number)
  {
    v5 = 0;
    if (CFNumberIsFloatType(number))
    {
      CFNumberGetValue(number, kCFNumberDoubleType, &v5);
    }

    else
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &v5);
    }

    __src = v5;
    return XXH64_update(this, &__src, 8uLL);
  }

  else
  {

    return CI::XXHashHelper::addstr(this, "nilCFNumberRef");
  }
}

uint64_t CI::XXHashHelper::add(uint64_t this, CFArrayRef theArray)
{
  if (theArray)
  {
    v3 = this;
    this = CFArrayGetCount(theArray);
    if (this >= 1)
    {
      v4 = 0;
      v5 = this & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 == CFNumberGetTypeID())
        {
          this = CI::XXHashHelper::add(v3, ValueAtIndex);
        }

        else if (v7 == CFDataGetTypeID())
        {
          this = CI::XXHashHelper::add(v3, ValueAtIndex);
        }

        else
        {
          this = CFStringGetTypeID();
          if (v7 == this)
          {
            this = CI::XXHashHelper::add(v3, ValueAtIndex);
          }
        }

        ++v4;
      }

      while (v5 != v4);
    }
  }

  return this;
}

void sub_19CD4E730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(char *))
{
  objc_sync_exit(v12);
  a12(&a10);
  _Unwind_Resume(a1);
}

void sub_19CD4F078(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void *__p, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__pa, uint64_t a16, uint64_t a17, uint64_t a18, CIKernelReflection *a19, uint64_t a20, CIKernelReflection *a21, CIKernelReflection *a22, CIKernelReflection *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58)
{
  CIKernelReflection::~CIKernelReflection(&a43);
  CIKernelReflection::~CIKernelReflection(&a58);
  CIKernelReflection::~CIKernelReflection(&STACK[0x200]);
  _Unwind_Resume(a1);
}

uint64_t check_and_emit_compile_errors(NSString *a1, uint64_t a2, NSMutableArray *a3)
{
  v38[4] = *MEMORY[0x1E69E9840];
  result = fosl_filter_kernelpool_getNumDiagnostics(a2);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v29 = 0;
  v7 = 0;
  v8 = MEMORY[0x1E69E5300];
  v9 = MEMORY[0x1E69E5318];
  do
  {
    DiagnosticByIdx = fosl_filter_kernelpool_getDiagnosticByIdx(a2, v7);
    v11 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "[CIKernelPool] ", 15);
    v12 = MEMORY[0x19EAF5460](v11, DiagnosticByIdx[1]);
    v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, ":", 1);
    v14 = MEMORY[0x19EAF5460](v13, DiagnosticByIdx[2]);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, ": ", 2);
    v15 = *DiagnosticByIdx;
    if (*DiagnosticByIdx <= 1)
    {
      if (v15)
      {
        if (v15 == 1)
        {
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "remark: ", 8);
        }
      }

      else
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "note: ", 6);
      }
    }

    else if (v15 == 2)
    {
      std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "WARNING: ", 9);
    }

    else
    {
      if (v15 == 4)
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "ERROR: ", 7);
      }

      else
      {
        if (v15 != 8)
        {
          goto LABEL_15;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "FATAL ERROR: ", 13);
      }

      ++v29;
    }

LABEL_15:
    v16 = strlen(*(DiagnosticByIdx + 2));
    v17 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, *(DiagnosticByIdx + 2), v16);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v32, v9);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v32);
    std::ostream::put();
    std::ostream::flush();
    v32.__locale_ = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 1;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = ___ZL29check_and_emit_compile_errorsP8NSStringPvP14NSMutableArray_block_invoke;
    v31[3] = &unk_1E75C3310;
    v31[4] = &v32;
    v31[5] = DiagnosticByIdx;
    [(NSString *)a1 enumerateLinesUsingBlock:v31];
    *(v8 + *(*v8 - 24) + 24) = DiagnosticByIdx[2];
    v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, "^", 1);
    std::ios_base::getloc((v19 + *(*v19 - 24)));
    v20 = std::locale::use_facet(&v36, v9);
    (v20->__vftable[2].~facet_0)(v20, 10);
    std::locale::~locale(&v36);
    std::ostream::put();
    std::ostream::flush();
    if (a3)
    {
      v37[0] = @"CIKernelMessageType";
      v21 = *DiagnosticByIdx - 1;
      v22 = @"CIKernelMessageTypeNote";
      if (v21 <= 7)
      {
        v22 = *(&off_1E75C33E8 + v21);
      }

      v38[0] = v22;
      v37[1] = @"CIKernelMessageLineNumber";
      v38[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DiagnosticByIdx[1]];
      v37[2] = @"kCIKernelMessageOffset";
      v38[2] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:DiagnosticByIdx[3]];
      v37[3] = @"kCIKernelMessageDescription";
      v38[3] = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(DiagnosticByIdx + 2)];
      -[NSMutableArray addObject:](a3, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:4]);
    }

    free(DiagnosticByIdx);
    _Block_object_dispose(&v32, 8);
    v7 = (v7 + 1);
  }

  while (v6 != v7);
  if (!v29)
  {
    return 0;
  }

  v23 = MEMORY[0x19EAF5470](MEMORY[0x1E69E5300]);
  if (v29 == 1)
  {
    v24 = " error ";
  }

  else
  {
    v24 = " errors ";
  }

  if (v29 == 1)
  {
    v25 = 7;
  }

  else
  {
    v25 = 8;
  }

  v26 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, v24, v25);
  v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v26, "generated.", 10);
  std::ios_base::getloc((v27 + *(*v27 - 24)));
  v28 = std::locale::use_facet(&v32, MEMORY[0x1E69E5318]);
  (v28->__vftable[2].~facet_0)(v28, 10);
  std::locale::~locale(&v32);
  std::ostream::put();
  std::ostream::flush();
  return 1;
}

uint64_t CIKernelReflection::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  std::vector<CI::KernelArgumentType>::__move_assign(a1 + 32, (a2 + 32));
  std::vector<std::string>::__vdeallocate((a1 + 56));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  return a1;
}

BOOL check_cikl_string(NSString *a1, const char *a2)
{
  v4 = [(NSString *)a1 length];
  if (!v4)
  {
    v5 = ci_logger_compile(0, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      check_cikl_string(a2, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return v4 != 0;
}

void CoreAnalytics(NSString *a1, NSString *a2, int a3)
{
  if (a1 && a2 && a3)
  {
    if ((atomic_load_explicit(byte_1ED7C44D0, memory_order_acquire) & 1) == 0)
    {
      v5 = a3;
      v3 = a2;
      v4 = a1;
      CoreAnalytics();
      a2 = v3;
      a1 = v4;
      a3 = v5;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZL13CoreAnalyticsP8NSStringS0_i_block_invoke;
    block[3] = &unk_1E75C33A8;
    block[4] = a1;
    block[5] = a2;
    v7 = a3;
    dispatch_async(qword_1ED7C44C8, block);
  }
}

void CI::Kernel::set_roi_selector(CI::Kernel *this, CFTypeRef cf)
{
  v3 = *(this + 13);
  if (v3 != cf)
  {
    if (cf)
    {
      CFRetain(cf);
      v3 = *(this + 13);
    }

    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 13) = cf;
  }
}

void sub_19CD53F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t verify_argument_type(void *a1, uint64_t a2, int a3)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 count];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [a1 count];
  }

  else
  {
    v7 = 0;
  }

  isKindOfClass = 0;
  switch(v4)
  {
    case 1:
    case 2:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    case 4:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      v15 = [a1 _internalRepresentation];
      v16 = (*(*v15 + 16))(v15);
      if ((CI::is_raster_TypeImage(v16) & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_50;
    case 5:
    case 12:
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass() | (v6 == 1);
      return isKindOfClass & 1;
    case 6:
    case 13:
      v14 = v6 > 1;
      goto LABEL_42;
    case 7:
    case 14:
      v14 = v6 > 2;
LABEL_42:
      isKindOfClass = v14;
      return isKindOfClass & 1;
    case 8:
    case 15:
      if (v6 - 3 < 2)
      {
        goto LABEL_50;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_50;
      }

      if (a3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [a1 extent];
          if (fabs(v10 * v11 + -1.0) < 1.0e-10)
          {
            goto LABEL_50;
          }
        }
      }

      goto LABEL_48;
    case 9:
    case 16:
      v9 = v6 == 4;
      goto LABEL_30;
    case 10:
    case 17:
      v9 = v6 == 9 || v6 == 6;
      goto LABEL_30;
    case 11:
    case 18:
      v9 = v6 == 16;
LABEL_30:
      isKindOfClass = v9;
      return isKindOfClass & 1;
    case 19:
    case 23:
    case 28:
    case 29:
      goto LABEL_45;
    case 20:
    case 24:
      if (v7 == 2)
      {
        [a1 objectAtIndex:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isKindOfClass = 1;
          [a1 objectAtIndex:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            return isKindOfClass & 1;
          }
        }
      }

      goto LABEL_48;
    case 21:
    case 25:
      if (v7 != 3)
      {
        goto LABEL_48;
      }

      [a1 objectAtIndex:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      [a1 objectAtIndex:1];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      v12 = a1;
      v13 = 2;
      goto LABEL_39;
    case 22:
    case 26:
      if (v7 != 4)
      {
        goto LABEL_48;
      }

      [a1 objectAtIndex:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      [a1 objectAtIndex:1];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      [a1 objectAtIndex:2];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_48;
      }

      v12 = a1;
      v13 = 3;
LABEL_39:
      [v12 objectAtIndex:v13];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_50:
        isKindOfClass = 1;
      }

      else
      {
LABEL_48:
        isKindOfClass = 0;
      }

      break;
    case 27:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_50;
      }

LABEL_45:
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      break;
    default:
      return isKindOfClass & 1;
  }

  return isKindOfClass & 1;
}

const char *expected_argument_type(int a1)
{
  if ((a1 - 1) > 0x1C)
  {
    return "";
  }

  else
  {
    return off_1E75C3428[a1 - 1];
  }
}

CI::Vector *object_for_argument(void *a1, uint64_t a2)
{
  v2 = 0;
  switch(a2)
  {
    case 1:
    case 2:
    case 4:
      v2 = [a1 _internalRepresentation];
      CI::Object::ref(v2);
      return v2;
    case 5:
    case 12:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      goto LABEL_38;
    case 6:
    case 13:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      goto LABEL_38;
    case 7:
    case 14:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      goto LABEL_38;
    case 8:
    case 15:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      goto LABEL_38;
    case 9:
    case 16:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      goto LABEL_38;
    case 10:
    case 11:
    case 17:
    case 18:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 count];
        operator new();
      }

      goto LABEL_38;
    case 19:
    case 23:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      goto LABEL_38;
    case 20:
    case 24:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 count] == 2)
      {
        operator new();
      }

      goto LABEL_38;
    case 21:
    case 25:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 count] == 3)
      {
        operator new();
      }

      goto LABEL_38;
    case 22:
    case 26:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 count] == 4)
      {
        operator new();
      }

      goto LABEL_38;
    case 27:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([a1 count] >= 4)
        {
          [a1 W];
        }

        operator new();
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

      goto LABEL_38;
    case 28:
    case 29:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        operator new();
      }

LABEL_38:
      v2 = 0;
      break;
    default:
      return v2;
  }

  return v2;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:nn200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

char *std::vector<MTLArgumentTypePrivate>::emplace_back<MTLArgumentTypePrivate>(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = (v13 + 1);
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
  return v6 - 8;
}

uint64_t *std::vector<CI::KernelArgumentType>::vector[abi:nn200100](uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](a1, (v2 - *a2) >> 2);
  }

  return a1;
}

void std::vector<CI::KernelArgumentType>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::NodeIndex>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t *std::vector<std::string>::__init_with_size[abi:nn200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::string>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

std::string *std::__uninitialized_allocator_copy[abi:nn200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(int a1, __int128 *a2, __int128 *a3, std::string *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(this, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        this->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&this->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      ++this;
    }

    while (v6 != a3);
  }

  return this;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:nn200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t ___ZL29check_and_emit_compile_errorsP8NSStringPvP14NSMutableArray_block_invoke(uint64_t result, void *a2, _BYTE *a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  if (v4 == *(*(result + 40) + 4))
  {
    v6 = result;
    v7 = [a2 UTF8String];
    v8 = strlen(v7);
    v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x1E69E5300], v7, v8);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v11, MEMORY[0x1E69E5318]);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v11);
    std::ostream::put();
    result = std::ostream::flush();
    *a3 = 1;
    v3 = *(*(v6 + 32) + 8);
    v4 = *(v3 + 24);
  }

  *(v3 + 24) = v4 + 1;
  return result;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x19EAF5430](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x19EAF5440](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_19CD58B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CIKLLibraryMaker::CIKLLibraryMaker(CIKLLibraryMaker *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = objc_opt_new();
  v4 = objc_opt_new();
  *(this + 5) = 0;
  *(this + 4) = this + 40;
  *(this + 2) = v4;
  *(this + 3) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<short>::reserve(this + 7, 0x10uLL);
  CIKLLibraryMaker::createMetalLibraryFromFoslPool(this, a2);
}

void sub_19CD58BF4(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v2, *v4);
  _Unwind_Resume(a1);
}

void std::vector<short>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<short>>(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

void CIKLLibraryMaker::createMetalLibraryFromFoslPool(CIKernelLibrary **this, uint64_t a2)
{
  NumKernels = fosl_filter_kernelpool_getNumKernels(a2);
  if (NumKernels >= 1)
  {
    v5 = NumKernels;
    if (CIKLLibraryMaker::createMetalLibraryFromFoslPool(void *)::onceToken != -1)
    {
      CIKLLibraryMaker::createMetalLibraryFromFoslPool();
    }

    if (CIKLLibraryMaker::createMetalLibraryFromFoslPool(void *)::_cikl2metal_preamble)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = ___ZN16CIKLLibraryMaker30createMetalLibraryFromFoslPoolEPv_block_invoke_2;
      v14[3] = &__block_descriptor_50_e89_v16__0____sFILE__iiss___sbuf__i_i_v___________sbuf__i_____sFILEX_i_3C__1C____sbuf__i_iq_8l;
      v15 = v5;
      v14[4] = this;
      v14[5] = a2;
      v6 = stream_to_string(v14);
      v8 = v6;
      v13 = 0;
      if (v6 && (v6 = [(__CFString *)v6 length]) != 0)
      {
        v9 = [CIKernelLibrary libraryWithSource:v8 error:&v13];
        *this = v9;
        if (v9)
        {
LABEL_14:

          return;
        }
      }

      else
      {
        v11 = ci_logger_compile(v6, v7);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          CIKLLibraryMaker::createMetalLibraryFromFoslPool();
        }

        v9 = *this;
        if (*this)
        {
          goto LABEL_14;
        }
      }

      v12 = ci_logger_compile(v9, v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        CIKLLibraryMaker::createMetalLibraryFromFoslPool();
      }

      goto LABEL_14;
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void ___ZN16CIKLLibraryMaker30createMetalLibraryFromFoslPoolEPv_block_invoke()
{
  size = 0;
  v0 = getsectdatafromFramework("CoreImage", "__TEXT", "__cikl2metal_pre", &size);
  if (v0)
  {
    v1 = v0;
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    CIKLLibraryMaker::createMetalLibraryFromFoslPool(void *)::_cikl2metal_preamble = [v2 initWithBytesNoCopy:v1 length:size encoding:1 freeWhenDone:0];
    if (CIKLLibraryMaker::createMetalLibraryFromFoslPool(void *)::_cikl2metal_preamble)
    {
      return;
    }

    goto LABEL_3;
  }

  NSLog(&cfstr_CouldNotInitia.isa);
  if (!CIKLLibraryMaker::createMetalLibraryFromFoslPool(void *)::_cikl2metal_preamble)
  {
LABEL_3:
    NSLog(&cfstr_CanTCreateTheC.isa);
  }
}

void ___ZN16CIKLLibraryMaker30createMetalLibraryFromFoslPoolEPv_block_invoke_2(uint64_t a1, __sFILE *a2)
{
  v4 = *(a1 + 32);
  fputs([CIKLLibraryMaker::createMetalLibraryFromFoslPool(void *)::_cikl2metal_preamble UTF8String], a2);
  if (*(a1 + 48) >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E9848];
    do
    {
      KernelByIdx = fosl_filter_kernelpool_getKernelByIdx(*(a1 + 40), v5);
      if (KernelByIdx)
      {
        v8 = KernelByIdx;
        KernelName = fosl_filter_kernelpool_getKernelName(KernelByIdx);
        PrintedKernel = fosl_filter_kernelpool_getPrintedKernel(v8);
        CIKLLibraryMaker::analyzeCIKLSource(v4, a2, PrintedKernel, KernelName);
        if (KernelName)
        {
          v11 = PrintedKernel == 0;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          NSLog(&cfstr_NoValidKernels_0.isa);
          v14 = ci_logger_compile(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            ___ZN16CIKLLibraryMaker30createMetalLibraryFromFoslPoolEPv_block_invoke_2_cold_1(&v15, v16);
          }
        }

        else if (FOSL_PRINT_KERNEL_AST())
        {
          fprintf(*v6, "Printed AST of kernel %s:\n%s\n", KernelName, PrintedKernel);
        }
      }

      v5 = (v5 + 1);
    }

    while (v5 < *(a1 + 48));
  }
}

void CIKLLibraryMaker::analyzeCIKLSource(CIKLLibraryMaker *this, __sFILE *a2, char *a3, const char *a4)
{
  v6 = (this + 40);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 32, *(this + 5));
  *(this + 4) = v6;
  *v6 = 0;
  v7 = *(this + 7);
  *(this + 6) = 0;
  *(this + 8) = v7;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x4812000000;
  v27[3] = __Block_byref_object_copy__11;
  v27[4] = __Block_byref_object_dispose__11;
  v27[5] = &unk_19D0E11CF;
  std::set<char const*>::set[abi:nn200100](v28, this + 32);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x4812000000;
  v25[3] = __Block_byref_object_copy__560;
  v25[4] = __Block_byref_object_dispose__561;
  v25[5] = &unk_19D0E11CF;
  std::vector<short>::vector[abi:nn200100](v26, this + 7);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = -1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  fprintf(a2, "namespace %s {\n", "__ci_client_namespace__");
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN16CIKLLibraryMaker17analyzeCIKLSourceEP7__sFILEPKcS3__block_invoke;
  v10[3] = &unk_1E75C3358;
  v10[4] = v19;
  v10[5] = v23;
  v10[6] = v21;
  v10[7] = v17;
  v10[8] = v15;
  v10[9] = v13;
  v10[10] = v11;
  v10[11] = v27;
  v10[12] = v25;
  v10[13] = this;
  v10[14] = a4;
  v10[15] = a2;
  CIKLLibraryMaker::tokenizer(this, a3, a2, v10);
  _Block_object_dispose(v11, 8);
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  _Block_object_dispose(v27, 8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v28, v28[1]);
}

void sub_19CD592C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v51 - 248), 8);
  v53 = *(v51 - 200);
  if (v53)
  {
    *(v51 - 192) = v53;
    operator delete(v53);
  }

  _Block_object_dispose((v51 - 176), 8);
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v51 - 128, *(v51 - 120));
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__560(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__561(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void CIKLLibraryMaker::tokenizer(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v9 = *a2;
    if (v9 == 10)
    {
      (*(a4 + 16))(a4, a2, 1, v7++, a3);
      goto LABEL_13;
    }

    if (!*a2)
    {
      break;
    }

    if (v9 < 0)
    {
      if (__maskrune(v9, 0x4000uLL))
      {
        goto LABEL_6;
      }

LABEL_16:
      v13 = *a2;
      if ((v13 & 0x80000000) != 0)
      {
        if (__maskrune(v13, 0x500uLL))
        {
          goto LABEL_21;
        }
      }

      else if ((*(v8 + 4 * v13 + 60) & 0x500) != 0)
      {
        goto LABEL_21;
      }

      if (*a2 == 95)
      {
LABEL_21:
        for (i = 1; ; ++i)
        {
          v14 = a2[i];
          if ((v14 & 0x80000000) != 0)
          {
            if (__maskrune(v14, 0x500uLL))
            {
              continue;
            }
          }

          else if ((*(v8 + 4 * v14 + 60) & 0x500) != 0)
          {
            continue;
          }

          if (a2[i] != 95)
          {
            goto LABEL_11;
          }
        }
      }

      (*(a4 + 16))(a4, a2, 1, v7, a3);
LABEL_13:
      LODWORD(i) = 1;
      goto LABEL_14;
    }

    if ((*(v8 + 4 * v9 + 60) & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_6:
    i = 0;
    do
    {
      v11 = a2[i + 1];
      if ((v11 & 0x80000000) != 0)
      {
        v12 = __maskrune(v11, 0x4000uLL);
      }

      else
      {
        v12 = *(v8 + 4 * v11 + 60) & 0x4000;
      }

      ++i;
    }

    while (v12);
LABEL_11:
    (*(a4 + 16))(a4, a2, i, v7, a3);
LABEL_14:
    a2 += i;
  }
}

void ___ZN16CIKLLibraryMaker17analyzeCIKLSourceEP7__sFILEPKcS3__block_invoke(uint64_t a1, char *__s2, int a3, int a4)
{
  v80 = a3;
  v4 = __s2;
  v87 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 104);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 24);
  *(v7 + 24) = a4;
  v9 = *__s2;
  if (v9 == 40)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
    v9 = *__s2;
  }

  if (v9 == 41)
  {
    --*(*(*(a1 + 40) + 8) + 24);
    v9 = *__s2;
  }

  if (v9 == 123)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    v9 = *__s2;
  }

  v10 = v8 + 1;
  if (v9 == 125)
  {
    --*(*(*(a1 + 48) + 8) + 24);
  }

  if (v10 == a4)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 48) + 8) + 24) || *__s2 == 125)
  {
    v11 = *(*(a1 + 96) + 8);
    v12 = *(v11 + 56);
    if (*(v11 + 48) != v12 && *__s2 == 41)
    {
      v14 = *(v12 - 2);
      v13 = v12 - 2;
      if (*(*(*(a1 + 40) + 8) + 24) == v14)
      {
        v15 = *(__s2 - 1);
        if (v15 == 40)
        {
          v4 = "_dst)";
        }

        else
        {
          v4 = ", _dst)";
        }

        if (v15 == 40)
        {
          v16 = 5;
        }

        else
        {
          v16 = 7;
        }

        v80 = v16;
        *(v11 + 56) = v13;
      }
    }

    v17 = *(*(a1 + 88) + 8);
    v20 = *(v17 + 56);
    v18 = v17 + 56;
    v19 = v20;
    if (!v20)
    {
      goto LABEL_31;
    }

    v21 = v18;
    do
    {
      v22 = *(v19 + 32);
      v23 = v22 >= v4;
      v24 = v22 < v4;
      if (v23)
      {
        v21 = v19;
      }

      v19 = *(v19 + 8 * v24);
    }

    while (v19);
    if (v21 != v18 && v4 >= *(v21 + 32))
    {
      v42 = *(*(a1 + 96) + 8);
      v43 = *(*(a1 + 40) + 8);
      v45 = v42[7];
      v44 = v42[8];
      if (v45 >= v44)
      {
        v47 = v42[6];
        v48 = v45 - v47;
        v49 = (v45 - v47) >> 1;
        if (v49 <= -2)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v50 = v44 - v47;
        if (v50 <= v49 + 1)
        {
          v51 = v49 + 1;
        }

        else
        {
          v51 = v50;
        }

        v23 = v50 >= 0x7FFFFFFFFFFFFFFELL;
        v52 = 0x7FFFFFFFFFFFFFFFLL;
        if (!v23)
        {
          v52 = v51;
        }

        if (v52)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<short>>((v42 + 6), v52);
        }

        v64 = v49;
        v65 = (2 * v49);
        v66 = *(v43 + 24);
        v67 = &v65[-v64];
        *v65 = v66;
        v46 = v65 + 1;
        memcpy(v67, v47, v48);
        v68 = v42[6];
        v42[6] = v67;
        v42[7] = v46;
        v42[8] = 0;
        if (v68)
        {
          operator delete(v68);
        }
      }

      else
      {
        *v45 = *(v43 + 24);
        v46 = v45 + 2;
      }

      v42[7] = v46;
      v25 = 1;
    }

    else
    {
LABEL_31:
      v25 = 0;
    }

    v26 = *(*(a1 + 72) + 8);
    if (*(v26 + 24) == 1 && *v4 == 123)
    {
      *(v26 + 24) = 0;
      v27 = 1;
    }

    else
    {
      v27 = 0;
    }

    v28 = *(*(a1 + 80) + 8);
    if (*(v28 + 24) == 1 && *v4 == 123)
    {
      *(v28 + 24) = 0;
    }

    if (v80 == 3)
    {
      if (*v4 != 95)
      {
        v29 = 0;
        v31 = 3;
        goto LABEL_47;
      }

      if (v4[1] == 100)
      {
        v29 = 0;
        if (v4[2] == 99)
        {
          v4 = "_dst.coord()";
          v30 = 12;
        }

        else
        {
          v30 = 3;
        }

        v80 = v30;
        goto LABEL_133;
      }

      v80 = 3;
    }

    v29 = 0;
    goto LABEL_133;
  }

  if (v10 != a4)
  {
LABEL_120:
    v29 = 0;
    goto LABEL_121;
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
  v32 = MEMORY[0x1E69E9830];
  if (a3 == 5 && !strncmp("const ", __s2, 6uLL))
  {
    for (i = 0; ; ++i)
    {
      v70 = v4[i];
      if ((v70 & 0x80000000) != 0)
      {
        if (__maskrune(v70, 0x500uLL))
        {
          continue;
        }
      }

      else if ((*(v32 + 4 * v70 + 60) & 0x500) != 0)
      {
        continue;
      }

      v71 = v4[i];
      if ((v71 - 40) >= 8)
      {
        v72 = v71 - 32;
        v73 = v72 > 0x3F;
        v74 = (1 << v72) & 0x8000000020000001;
        if (v73 || v74 == 0)
        {
          v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v4 length:i encoding:1];
          if ([*(v6 + 16) containsObject:v76])
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
            v80 = 5;
          }

          else
          {
            [*(v6 + 16) addObject:v76];
            v80 = 8;
            v4 = "constant";
          }

          goto LABEL_120;
        }
      }
    }
  }

  v78 = v6;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  while (1)
  {
    v37 = v4[v33];
    if ((v37 & 0x80000000) != 0)
    {
      v38 = __maskrune(v37, 0x500uLL);
      LOBYTE(v37) = v4[v33];
      if (v38)
      {
        goto LABEL_60;
      }
    }

    else if ((*(v32 + 4 * v37 + 60) & 0x500) != 0)
    {
      goto LABEL_60;
    }

    if (v37 - 32 > 0x3F || ((1 << (v37 - 32)) & 0x8000000000001301) == 0)
    {
      break;
    }

LABEL_60:
    if (v34)
    {
      v40 = &v4[v33];
    }

    else
    {
      v40 = 0;
    }

    v41 = (v36 != 0) & v34;
    if (!v36)
    {
      v36 = v40;
    }

    if (v37 == 40)
    {
      v35 = &v4[v33];
    }

    if (v37 == 32)
    {
      v34 = 1;
    }

    else
    {
      v34 = v41;
    }

    ++v33;
  }

  v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v4 length:v33 encoding:1];
  v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v36 length:v35 - v36 encoding:1];
  if (strlen(*(a1 + 112)) == v35 - v36 && !strncmp(*(a1 + 112), v36, v35 - v36))
  {
    v54 = 1;
    v55 = 72;
  }

  else
  {
    v54 = 0;
    v55 = 80;
  }

  *(*(*(a1 + v55) + 8) + 24) = 1;
  if ([*(v78 + 8) containsObject:v79])
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    [*(v78 + 8) addObject:v79];
  }

  if ((v54 & 1) == 0)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v56 = [&unk_1F1085620 countByEnumeratingWithState:&v82 objects:v86 count:16];
    if (v56)
    {
      v57 = *v83;
      do
      {
        for (j = 0; j != v56; ++j)
        {
          if (*v83 != v57)
          {
            objc_enumerationMutation(&unk_1F1085620);
          }

          v59 = objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@%@("), *(*(&v82 + 1) + 8 * j), v53, "UTF8String");
          for (k = &v4[v33]; ; k = v63)
          {
            v61 = strstr(k, v59);
            if (!v61)
            {
              break;
            }

            v62 = *(*(a1 + 88) + 8);
            v63 = v61 + 1;
            v81 = v61 + 1;
            std::__tree<char const*>::__emplace_unique_key_args<char const*,char const* const&>(v62 + 48, &v81, &v81);
          }
        }

        v56 = [&unk_1F1085620 countByEnumeratingWithState:&v82 objects:v86 count:16];
      }

      while (v56);
    }
  }

  v29 = v54;
LABEL_121:
  if (!*(*(*(a1 + 40) + 8) + 24) && *v4 == 41 && !*(*(*(a1 + 48) + 8) + 24) && v4[1] == 32 && v4[2] == 123)
  {
    v25 = 0;
    v27 = 0;
    v77 = *(v4 - 1);
    if (v77 == 40)
    {
      v4 = "coreimage::destination _dst)";
    }

    else
    {
      v4 = ", coreimage::destination _dst)";
    }

    if (v77 == 40)
    {
      v31 = 28;
    }

    else
    {
      v31 = 30;
    }

LABEL_47:
    v80 = v31;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

LABEL_133:
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0 && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    if (v29)
    {
      fprintf(*(a1 + 120), "} // %s \n", "__ci_client_namespace__");
      fwrite("[[stitchable]] ", 0xFuLL, 1uLL, *(a1 + 120));
    }

    if (v25)
    {
      fprintf(*(a1 + 120), "%s::", "__ci_client_namespace__");
    }

    if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0 && *(*(*(a1 + 80) + 8) + 24) != 1)
    {
      goto LABEL_152;
    }

    if (v80 == 5)
    {
      if (!strncmp(v4, "inout", 5uLL))
      {
        goto LABEL_153;
      }

      goto LABEL_152;
    }

    if (v80 != 3)
    {
      if (v80 == 2 && *v4 == 105 && v4[1] == 110)
      {
        goto LABEL_153;
      }

LABEL_152:
      fprintf(*(a1 + 120), "%.*s", v80, v4);
      goto LABEL_153;
    }

    if (*v4 != 111 || v4[1] != 117 || v4[2] != 116)
    {
      goto LABEL_152;
    }

LABEL_153:
    if (v27)
    {
      fprintf(*(a1 + 120), "\n using namespace %s;\n", "__ci_client_namespace__");
    }
  }
}