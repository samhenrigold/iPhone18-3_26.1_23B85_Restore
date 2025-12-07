uint64_t vt_Copy_420vf_rgb_RGfA_neon_fp16(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (16 * (v28 + v25) + 16) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(v13 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(v13 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 16 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = v13, fig_log_get_emitter(), v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, v51), v13 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = v13;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_RGfA_neon_fp16_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_rgb_RGfA_neon_fp16_GCD(unsigned __int8 *result, uint64_t a2, int16x8_t a3, double a4, double a5, double a6, int16x4_t a7)
{
  v15 = 2 * *result;
  v16 = *(result + 13);
  v17 = v16 * a2 / v15;
  v18 = 2 * ((v16 + v16 * a2) / v15 - v17);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = *(result + 24);
    v21 = *(result + 19);
    v22 = *(result + 7);
    v23 = *(result + 8);
    v24 = *v23;
    v25 = v23[1];
    v26 = v23[2];
    v27 = **(result + 17);
    v28 = v21[17].u16[2];
    v29 = v21[17].u16[3];
    v30.i32[0] = v21[3].i32[1];
    a3.i32[0] = 1.0;
    v31 = 1.0 / v21[16].u32[0];
    v32 = v28;
    v33 = v29;
    _S3 = v31 * v21->f32[0];
    *a7.i16 = v28;
    v35 = vdupq_lane_s16(a7, 0);
    __asm { FCVT            H5, S3 }

    v41 = -v29;
    v30.i32[1] = v21[1].i32[0];
    *v14.f32 = vmul_n_f32(v30, v31);
    v42 = vdupq_lane_s32(vcvt_f16_f32(v14), 0);
    *v7.f32 = vmul_n_f32(v21[2], v31);
    v127 = vdupq_lane_s32(vcvt_f16_f32(v7), 0);
    v128 = v42;
    v43 = vmulq_n_f16(v127, v41);
    v125 = v43;
    v126 = vmulq_n_f16(v42, v41);
    v45 = v22[1];
    v44 = v22[2];
    v46 = *(result + 44) + 2 * (*(result + 28) * a2 / v15);
    v47 = *v22;
    v48 = v45 + v25 * (v46 / 2);
    v49 = *(result + 36);
    v50 = **(result + 16) + v27 * (*(result + 15) + 2 * v17) + 16 * *(result + 14);
    if (v44)
    {
      v51 = (v44 + v26 * v46 + v49);
    }

    else
    {
      v51 = 0;
    }

    v52 = (v48 + v49);
    v53 = (v47 + v24 * v46 + v49);
    v54 = v14.f32[1];
    v55 = v7.f32[1];
    __asm { FMOV            V23.4S, #1.0 }

    v123 = v7.i32[0];
    v124 = v14.i32[0];
    v121 = v7.f32[1];
    v122 = v14.f32[1];
    do
    {
      v57 = v53 + v24;
      v58 = v51 + v26;
      v59 = v50 + v27;
      if (v20 < 8)
      {
        v108 = 0;
        v107 = v52;
        v63 = (v51 + v26);
        v62 = (v53 + v24);
        v61 = v50 + v27;
      }

      else
      {
        v60 = 0;
        v61 = v50 + v27;
        v62 = (v53 + v24);
        v63 = (v51 + v26);
        do
        {
          if (v51)
          {
            v64 = *v51++;
            v65 = v64;
            v66 = *v63++;
            *v67.i8 = vzip1_s8(v65, 0);
            v67.u64[1] = vzip2_s8(v65, 0);
            v68 = vcvtq_f16_u16(v67);
            v69 = vdupq_n_s16(0x1C04u);
            v70 = vmulq_f16(v68, v69);
            v71 = vcvtq_f32_f16(*v70.i8);
            *v72.i8 = vzip1_s8(v66, 0);
            v72.u64[1] = vzip2_s8(v66, 0);
            v73 = vcvtq_f32_f16(*&vextq_s8(v70, v70, 8uLL));
            v74 = vmulq_f16(vcvtq_f16_u16(v72), v69);
            v75 = vcvtq_f32_f16(*v74.i8);
            v76 = vcvtq_f32_f16(*&vextq_s8(v74, v74, 8uLL));
          }

          else
          {
            v73 = _Q23;
            v71 = _Q23;
            v75 = _Q23;
            v76 = _Q23;
          }

          v77 = *&v52[v60];
          *v78.i8 = vzip1_s8(v77, 0);
          v78.u64[1] = vzip2_s8(v77, 0);
          v79 = vcvtq_f16_u16(v78);
          v80 = vmlaq_f16(v126, v128, v79);
          v81 = vmlaq_f16(v125, v127, v79);
          v82 = vtrn2q_s16(v80, v80);
          v83 = vtrn1q_s16(v80, v80);
          v84 = vuzp1q_s16(v81, a3);
          *v84.i8 = vadd_f16(*v84.i8, *&vuzp2q_s16(v81, a3));
          v85 = *v53++;
          *v86.i8 = vzip1_s8(v85, 0);
          v86.u64[1] = vzip2_s8(v85, 0);
          v87 = vzip1q_s16(v84, v84);
          v88 = *v62++;
          *v89.i8 = vzip1_s8(v88, 0);
          v89.u64[1] = vzip2_s8(v88, 0);
          v90 = vsubq_f16(vcvtq_f16_u16(v86), v35);
          v8 = vsubq_f16(vcvtq_f16_u16(v89), v35);
          v10 = vmlaq_n_f16(v82, v90, _H5);
          v91 = vmlaq_n_f16(v82, v8, _H5);
          v42 = vmlaq_n_f16(v87, v90, _H5);
          v11 = vmlaq_n_f16(v87, v8, _H5);
          v43 = vmlaq_n_f16(v83, v90, _H5);
          v92 = vcvtq_f32_f16(*v10.i8);
          v93 = vcvtq_f32_f16(*v42.i8);
          v94 = vcvtq_f32_f16(*v43.i8);
          v9 = vextq_s8(v10, v10, 8uLL).u64[0];
          v95 = vcvtq_f32_f16(v9);
          v42.i64[0] = vextq_s8(v42, v42, 8uLL).u64[0];
          v96 = vcvtq_f32_f16(*v42.i8);
          v97 = vcvtq_f32_f16(*&vextq_s8(v43, v43, 8uLL));
          v98 = v50 + 128;
          vst4q_f32(v50, *(&v71 - 3));
          v99 = (v50 + 64);
          vst4q_f32(v99, *(&v73 - 3));
          v12 = vmlaq_n_f16(v83, v8, _H5);
          v100 = vcvtq_f32_f16(*v91.i8);
          v101 = vcvtq_f32_f16(*v11.i8);
          v13 = vcvtq_f32_f16(*v12.i8);
          v102 = vcvtq_f32_f16(*&vextq_s8(v91, v91, 8uLL));
          v103 = vcvtq_f32_f16(*&vextq_s8(v11, v11, 8uLL));
          v43.i64[0] = vextq_s8(v12, v12, 8uLL).u64[0];
          v104 = vcvtq_f32_f16(*v43.i8);
          v105 = v61 + 128;
          vst4q_f32(v61, *(&v13 - 2));
          v106 = (v61 + 64);
          vst4q_f32(v106, *(&v76 - 3));
          v50 = v98;
          v61 = v105;
          v60 += 8;
        }

        while (v60 < v20 - 7);
        v107 = &v52[v60];
        v108 = v20 & 0xFFFFFFF8;
        v7.i32[0] = v123;
        v14.i32[0] = v124;
        v55 = v121;
        v54 = v122;
      }

      while (v108 < (v20 & 0xFFFFFFFE))
      {
        if (v51)
        {
          v43.i8[0] = v51->i8[0];
          v42.i8[0] = v51->i8[1];
          v51 = (v51 + 2);
          v8.i8[0] = v63->i8[0];
          v9.i8[0] = v63->i8[1];
          v63 = (v63 + 2);
          v10.i32[0] = 998277249;
          v109 = v43.u32[0] * 0.0039216;
          v110 = v42.u32[0] * 0.0039216;
          v111 = v8.u32[0] * 0.0039216;
          *v42.i32 = v9.u32[0];
          v112 = v9.u32[0] * 0.0039216;
        }

        else
        {
          v109 = 0.0;
          v110 = 0.0;
          v111 = 0.0;
          v112 = 0.0;
        }

        v42.i8[0] = *v107;
        v113 = v42.u32[0] - v33;
        v8.i8[0] = v107[1];
        v114 = v8.u32[0] - v33;
        v115 = v54 * v114;
        *v8.i32 = (v55 * v114) + (v113 * v7.f32[0]);
        *v42.i32 = v14.f32[0] * v113;
        v10.i8[0] = v53->i8[0];
        v116 = _S3 * (v10.u32[0] - v32);
        v11.i8[0] = v53->i8[1];
        *v11.i32 = _S3 * (v11.u32[0] - v32);
        v12.i8[0] = v62->i8[0];
        *v12.i32 = _S3 * (v12.u32[0] - v32);
        v13.i8[0] = v62->i8[1];
        v13.f32[0] = v13.u32[0] - v32;
        v117 = v115 + v116;
        v118 = v116 + *v8.i32;
        *v10.i32 = *v42.i32 + v116;
        if (!v51)
        {
          v109 = 1.0;
        }

        *v50 = v117;
        *(v50 + 4) = v118;
        *(v50 + 8) = v10.i32[0];
        *(v50 + 12) = v109;
        *(v50 + 16) = v115 + *v11.i32;
        *(v50 + 20) = *v8.i32 + *v11.i32;
        v119 = _S3 * v13.f32[0];
        *v10.i32 = *v42.i32 + *v11.i32;
        *v11.i32 = v115 + *v12.i32;
        v13.f32[0] = *v8.i32 + *v12.i32;
        *v12.i32 = *v42.i32 + *v12.i32;
        *v9.i32 = v115 + v119;
        *v8.i32 = *v8.i32 + v119;
        if (!v51)
        {
          v110 = 1.0;
        }

        *(v50 + 24) = v10.i32[0];
        *(v50 + 28) = v110;
        *v61 = v11.i32[0];
        *(v61 + 4) = v13.i32[0];
        v120 = *v42.i32 + v119;
        if (!v51)
        {
          v111 = 1.0;
        }

        *(v61 + 8) = v12.i32[0];
        *(v61 + 12) = v111;
        if (v51)
        {
          *v43.i32 = v112;
        }

        else
        {
          *v43.i32 = 1.0;
        }

        *(v61 + 16) = v9.i32[0];
        *(v61 + 20) = v8.i32[0];
        v108 += 2;
        v107 += 2;
        v53 = (v53 + 2);
        *(v61 + 24) = v120;
        *(v61 + 28) = v43.i32[0];
        v62 = (v62 + 2);
        v50 += 32;
        v61 += 32;
      }

      v53 = &v57[v24];
      v52 += v25;
      v51 = (v58 + v26);
      v50 = v59 + v27;
      v19 += 2;
    }

    while (v19 < v18);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vt_Copy_420vf_rgb_RGfA(uint64_t a1, int64x2_t *a2, uint64_t a3, unint64_t *a4, void *a5, int64x2_t *a6, uint64_t a7, void *a8, void *a9)
{
  v13 = a3;
  v61 = *MEMORY[0x1E69E9840];
  v15 = *(a1 + 162);
  v16 = *a2;
  v17 = a2[1];
  v57 = a2[2];
  v58 = v17;
  v18 = a6[1];
  v59 = *a6;
  v60 = v16;
  v55 = a6[2];
  v56 = v18;
  if (v15 == 255)
  {
    v19 = malloc_type_calloc(1uLL, 0x49CuLL, 0x10B0040FF6A342BuLL);
    if (!v19)
    {
      v20 = 0;
LABEL_60:
      free(v19);
      return v20;
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1, 4 * v15 + 160, a3, a4);
    v19 = (&v49 - v21);
    bzero(&v49 - v21, v22);
  }

  v23 = a9;
  v24 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(vaddq_s64(v55, v56), v59), vceqq_s64(vaddq_s64(v57, v58), v60))));
  v25 = v56.i64[0];
  v26 = v58.i64[0];
  if (v55.i8[0])
  {
    v26 = v58.i64[0] - 1;
    v27 = v57.i64[0] + 1;
  }

  else
  {
    v27 = v57.i64[0];
  }

  if (v55.i8[0])
  {
    v25 = v56.i64[0] - 1;
    v28 = v55.i64[0] + 1;
  }

  else
  {
    v28 = v55.i64[0];
  }

  v29 = v59.i64[0];
  v30 = v60.i64[0];
  if (v25)
  {
    if (v24.i8[4] & 1 | v24.i8[0] & 1 || (v31 = v26 + 1 + v27, v31 > *a4) || ((v31 + (v31 >> 63)) & 0xFFFFFFFFFFFFFFFELL) > a4[1] || (v32 = a4[2], v31 > v32) && v32 || (16 * (v28 + v25) + 16) > *a8)
    {
      --v25;
      --v26;
    }

    else
    {
      ++v25;
      v29 = v59.i64[0] + 1;
      v30 = v60.i64[0] + 1;
      ++v26;
    }
  }

  v33 = v56.i64[1];
  v34 = v58.i64[1];
  if (v55.i8[8])
  {
    v34 = v58.i64[1] - 1;
    v35 = v57.i64[1] + 1;
  }

  else
  {
    v35 = v57.i64[1];
  }

  if (v55.i8[8])
  {
    v33 = v56.i64[1] - 1;
    v36 = v55.i64[1] + 1;
  }

  else
  {
    v36 = v55.i64[1];
  }

  v37 = v59.i64[1];
  v38 = v60.i64[1];
  v54 = a1;
  if (v33)
  {
    if (v24.i8[6] & 1 | v24.i8[2] & 1 || (v39 = v34 + 1 + v35, *a4 * v39 > *a5) || a4[1] * (v39 / 2) > a5[1] || a4[2] * v39 > a5[2] || (*a8 * (v33 + 1 + v36)) > *a9)
    {
      --v33;
      --v34;
    }

    else
    {
      v37 = v59.i64[1] + 1;
      v38 = v60.i64[1] + 1;
      ++v34;
      ++v33;
    }
  }

  if (v26 + v27 > v30)
  {
    v26 = v30 - v27;
  }

  if (v25 + v28 > v29)
  {
    v25 = v29 - v28;
  }

  if (v34 + v35 > v38)
  {
    v34 = v38 - v35;
  }

  if (v33 + v36 > v37)
  {
    v33 = v37 - v36;
  }

  if (v26 >= v25)
  {
    v40 = v25;
  }

  else
  {
    v40 = v26;
  }

  if (v34 >= v33)
  {
    v41 = v33;
  }

  else
  {
    v41 = v34;
  }

  v42 = v41 + v35 - 1;
  v43 = v40 + v27;
  if (v40 + v27 + v42 * *a4 <= *a5 && (!*(v13 + 8) || ((v43 + 1 + ((v43 + 1) >> 63)) & 0xFFFFFFFFFFFFFFFELL) + a4[1] * ((v41 + v35 + 1) / 2 - 1) <= a5[1]) && (!*(v13 + 16) || v43 + a4[2] * v42 <= a5[2]) && (*a8 * (v36 + v41 - 1) + 16 * (v40 + v28)) <= *a9 || (v50 = v38, v51 = v37, v52 = v35, v53 = v36, v55.i64[0] = v30, v56.i64[0] = v27, v57.i64[0] = v28, v58.i64[0] = v29, v59.i64[0] = a9, v60.i64[0] = v13, fig_log_get_emitter(), v20 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v50, v51), v13 = v60.i64[0], v23 = v59.i64[0], v29 = v58.i64[0], v28 = v57.i64[0], v27 = v56.i64[0], v30 = v55.i64[0], v35 = v52, v36 = v53, v38 = v50, v37 = v51, !v20))
  {
    *v19 = v15;
    *(v19 + 4) = v30;
    *(v19 + 12) = v38;
    *(v19 + 20) = v40;
    *(v19 + 28) = v41;
    *(v19 + 36) = v27;
    *(v19 + 44) = v35;
    v19[11] = v37;
    v19[12] = v40;
    v19[13] = v41;
    v19[14] = v28;
    v19[7] = v13;
    v19[8] = a4;
    v19[9] = a5;
    v19[10] = v29;
    v19[15] = v36;
    v19[16] = a7;
    v19[17] = a8;
    v19[18] = v23;
    v19[19] = v54;
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_apply_f(v15, global_queue, v19, vt_Copy_420vf_rgb_RGfA_GCD);
    if (!v15)
    {
      return 0;
    }

    v45 = (v19 + 20);
    v46 = v15;
    while (1)
    {
      v47 = *v45++;
      v20 = v47;
      if (v47)
      {
        break;
      }

      if (!--v46)
      {
        v20 = 0;
        break;
      }
    }
  }

  if (v15 == 255)
  {
    goto LABEL_60;
  }

  return v20;
}

unsigned __int8 *vt_Copy_420vf_rgb_RGfA_GCD(unsigned __int8 *result, uint64_t a2, double a3, float a4, float a5)
{
  v13 = 2 * *result;
  v14 = *(result + 13);
  v15 = v14 * a2 / v13;
  v16 = 2 * ((v14 + v14 * a2) / v13 - v15);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(result + 19);
    v19 = *(result + 24) & 0xFFFFFFFE;
    v21 = *(result + 7);
    v20 = *(result + 8);
    v22 = *v20;
    v23 = v20[1];
    v24 = v20[2];
    v25 = *(v18 + 128);
    LOWORD(a4) = *(v18 + 140);
    LOWORD(a5) = *(v18 + 142);
    v26 = *v18;
    v27 = *(v18 + 8);
    v28 = *(v18 + 16);
    v29 = *(v18 + 20);
    v30 = *(v18 + 28);
    v31 = *(result + 44) + 2 * (*(result + 28) * a2 / v13);
    v32 = **(result + 17);
    v33 = 1.0 / v25;
    v34 = LODWORD(a4);
    v35 = LODWORD(a5);
    v36 = v33 * v26;
    v37 = v33 * v27;
    v38 = v33 * v28;
    v39 = v33 * v29;
    v40 = v33 * v30;
    v41 = (**(result + 16) + v32 * (*(result + 15) + 2 * v15) + 16 * *(result + 14));
    v42 = v21[2];
    v43 = v42 + v31 * v24;
    v44 = *v21 + v31 * v22;
    v45 = v21[1] + v31 / 2 * v23;
    v46 = *(result + 36);
    if (v42)
    {
      v47 = (v43 + v46);
    }

    else
    {
      v47 = 0;
    }

    v48 = (v44 + v46);
    v49 = v45 + v46;
    do
    {
      v50 = &v48[v22];
      v51 = &v47[v24];
      v52 = v41 + v32;
      if (v19 >= 1)
      {
        v53 = 0;
        v54 = (v41 + v32);
        v55 = &v48[v22];
        v56 = &v47[v24];
        do
        {
          if (v47)
          {
            LOBYTE(v5) = *v47;
            LOBYTE(v6) = v47[1];
            v47 += 2;
            LOBYTE(v7) = *v56;
            LOBYTE(v8) = v56[1];
            v56 += 2;
            v57 = LODWORD(v5) * 0.0039216;
            v58 = LODWORD(v6) * 0.0039216;
            v59 = LODWORD(v7) * 0.0039216;
            v6 = LODWORD(v8) * 0.0039216;
          }

          else
          {
            v57 = 0.0;
            v58 = 0.0;
            v59 = 0.0;
            v6 = 0.0;
          }

          LOBYTE(v7) = *(v49 + v53);
          v60 = LODWORD(v7) - v35;
          LOBYTE(v8) = *(v49 + v53 + 1);
          v61 = LODWORD(v8) - v35;
          v62 = v37 * v61;
          v63 = (v39 * v61) + (v60 * v38);
          v7 = v40 * v60;
          LOBYTE(v9) = *v48;
          v64 = v36 * (LODWORD(v9) - v34);
          LOBYTE(v10) = v48[1];
          v65 = v36 * (LODWORD(v10) - v34);
          v48 += 2;
          LOBYTE(v11) = *v55;
          v66 = v36 * (LODWORD(v11) - v34);
          LOBYTE(v12) = v55[1];
          v67 = LODWORD(v12) - v34;
          v68 = v62 + v64;
          v69 = v64 + v63;
          v70 = v7 + v64;
          if (!v47)
          {
            v57 = 1.0;
          }

          *v41 = v68;
          v41[1] = v69;
          v41[2] = v70;
          v41[3] = v57;
          v41[4] = v62 + v65;
          v41[5] = v63 + v65;
          v71 = v36 * v67;
          v55 += 2;
          v9 = v7 + v65;
          v10 = v62 + v66;
          v12 = v63 + v66;
          v11 = v7 + v66;
          v72 = v62 + v71;
          v8 = v63 + v71;
          if (!v47)
          {
            v58 = 1.0;
          }

          v41[6] = v9;
          v41[7] = v58;
          *v54 = v10;
          v54[1] = v12;
          if (!v47)
          {
            v59 = 1.0;
          }

          v54[2] = v11;
          v54[3] = v59;
          if (v47)
          {
            v5 = v6;
          }

          else
          {
            v5 = 1.0;
          }

          v41 += 8;
          v54[4] = v72;
          v54[5] = v8;
          v54[6] = v7 + v71;
          v54[7] = v5;
          v54 += 8;
          v53 += 2;
        }

        while (v53 < v19);
      }

      v48 = &v50[v22];
      v49 += v23;
      v47 = &v51[v24];
      v41 = &v52[v32];
      v17 += 2;
    }

    while (v17 < v16);
  }

  *&result[4 * a2 + 160] = 0;
  return result;
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

void __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 20));
  os_unfair_lock_opaque_low = LOBYTE((*v2)[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(*v2 + 5);
  if (os_unfair_lock_opaque_low)
  {
    goto LABEL_119;
  }

  v10 = *(a1 + 72);
  if (v10 > 1835365236)
  {
    if (v10 <= 1836278133)
    {
      switch(v10)
      {
        case 1835365237:
          goto LABEL_119;
        case 1835890028:
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          cf[0] = 0;
          v86 = 0;
          *v87 = 0;
          if (!VTParavirtualizationCreateReplyAndByteStream(v12, 4u, v87, &v86) && !VTParavirtualizationMessageCopyCFDictionary(v12, 745566831, cf))
          {
            v13 = *(v11 + 24);
            v14 = cf[0];
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
            v16 = v15 ? v15(v13, v14) : -12782;
            if (!VTParavirtualizationMessageAppendSInt32(v86, 744845938, v16))
            {
LABEL_66:
              vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v11, *v87);
            }
          }

LABEL_67:
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          if (*v87)
          {
            CFRelease(*v87);
          }

          v66 = v86;
          if (!v86)
          {
            goto LABEL_119;
          }

LABEL_118:
          CFRelease(v66);
          goto LABEL_119;
        case 1835626102:
          __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_1(v2, a1, v4, v5, v6, v7, v8, v9);
          goto LABEL_119;
      }

      goto LABEL_97;
    }

    if (v10 == 1836278134)
    {
      v11 = *(a1 + 32);
      v39 = *(a1 + 40);
      cf[0] = 0;
      v86 = 0;
      *v87 = 0;
      if (!VTParavirtualizationCreateReplyAndByteStream(v39, 4u, v87, &v86))
      {
        v40 = *(v11 + 24);
        v41 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        v42 = v41 ? v41(v40, *MEMORY[0x1E695E480], cf) : -12782;
        if (!VTParavirtualizationMessageAppendSInt32(v86, 744845938, v42) && (!cf[0] || !VTParavirtualizationMessageAppendCFDictionary(v86, 0x2C70726Fu, cf[0])))
        {
          goto LABEL_66;
        }
      }

      goto LABEL_67;
    }

    if (v10 != 1836279156)
    {
LABEL_97:
      LODWORD(v86) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, v77, v78);
      goto LABEL_119;
    }

    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    cf[0] = 0;
    v86 = 0;
    *v87 = 0;
    *type = 0;
    if (VTParavirtualizationCreateReplyAndByteStream(v24, 4u, &v86, type) || VTParavirtualizationMessageCopyCFPropertyList(v24, 745235833, cf))
    {
      goto LABEL_81;
    }

    if (cf[0] && (v25 = CFGetTypeID(cf[0]), v25 == CFStringGetTypeID()))
    {
      if (!VTParavirtualizationMessageCopyCFPropertyList(v24, 745955692, v87))
      {
        v26 = cf[0];
        v27 = *v87;
        VTMotionEstimationProcessorGetCMBaseObject();
        v29 = v28;
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        v31 = v30 ? v30(v29, v26, v27) : -12782;
        if (!VTParavirtualizationMessageAppendSInt32(*type, 744845938, v31))
        {
LABEL_80:
          vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v23, v86);
        }
      }
    }

    else
    {
      __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_3();
    }

LABEL_81:
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (*v87)
    {
      CFRelease(*v87);
    }

    if (v86)
    {
      CFRelease(v86);
    }

    v66 = *type;
    if (*type)
    {
      goto LABEL_118;
    }

    goto LABEL_119;
  }

  if (v10 <= 1835364453)
  {
    if (v10 != 1835233136)
    {
      if (v10 == 1835230834)
      {
        __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_4(v2, a1, v4, v5, v6, v7, v8, v9);
        goto LABEL_119;
      }

      goto LABEL_97;
    }

    v23 = *(a1 + 32);
    v32 = *(a1 + 40);
    cf[0] = 0;
    v86 = 0;
    *v87 = 0;
    *type = 0;
    if (VTParavirtualizationCreateReplyAndByteStream(v32, 4u, &v86, type) || VTParavirtualizationMessageCopyCFPropertyList(v32, 745235833, cf))
    {
      goto LABEL_81;
    }

    if (cf[0] && (v33 = CFGetTypeID(cf[0]), v33 == CFStringGetTypeID()))
    {
      v34 = cf[0];
      VTMotionEstimationProcessorGetCMBaseObject();
      v36 = v35;
      v37 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v37)
      {
        v38 = v37(v36, v34, *MEMORY[0x1E695E480], v87);
      }

      else
      {
        v38 = -12782;
      }

      if (!VTParavirtualizationMessageAppendSInt32(*type, 744845938, v38) && (!*v87 || !VTParavirtualizationMessageAppendCFPropertyList(*type, 0x2C76616Cu, *v87)))
      {
        goto LABEL_80;
      }
    }

    else
    {
      __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_2();
    }

    goto LABEL_81;
  }

  if (v10 == 1835364454)
  {
    v43 = *(a1 + 32);
    v44 = *(a1 + 40);
    v45 = *(a1 + 48);
    v46 = *(a1 + 64);
    v84 = 0;
    v86 = 0;
    *v87 = 0;
    *type = 0;
    v47 = *MEMORY[0x1E695E480];
    v48 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    theArray = 0;
    v50 = CFArrayCreateMutable(v47, 0, v48);
    v58 = v50;
    v82 = 0;
    v81 = 0;
    v79 = 0;
    pixelBufferOut = 0;
    if (!v50)
    {
      __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_7(0, v51, v52, v53, v54, v55, v56, v57, v76, v77, SHIDWORD(v77), v78);
      goto LABEL_102;
    }

    if (!Mutable)
    {
      __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_6(v50, v51, v52, v53, v54, v55, v56, v57, v76, v77, SHIDWORD(v77), v78);
      goto LABEL_102;
    }

    if (v46 != 2)
    {
      __VTParavirtualizationHostMotionEstimationProcessorSessionDeliverMessageFromGuest_block_invoke_cold_5(v50, v51, v52, v53, v54, v55, v56, v57, v76, v77, SHIDWORD(v77), v78);
      goto LABEL_102;
    }

    if (VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(v44, 0, &v84, 0))
    {
      goto LABEL_102;
    }

    if (VTParavirtualizationCreateReplyAndByteStream(v44, 4u, v87, &v86))
    {
      goto LABEL_102;
    }

    if (VTParavirtualizationMessageGetSInt64())
    {
      goto LABEL_102;
    }

    v59 = *type;
    v60 = *v45;
    if (CVPixelBufferCreateWithIOSurface(v47, v60, 0, &pixelBufferOut))
    {
      goto LABEL_102;
    }

    CFArrayAppendValue(Mutable, pixelBufferOut);
    FigCFArrayAppendInt64();
    if (CVPixelBufferCreateWithIOSurface(v47, v60, 0, &v79))
    {
      goto LABEL_102;
    }

    CFArrayAppendValue(Mutable, v79);
    FigCFArrayAppendInt64();
    if (VTParavirtualizationMessageCopyCFUUIDArray())
    {
      goto LABEL_102;
    }

    v61 = 0;
    v62 = theArray;
    while (1)
    {
      v63 = v62 ? CFArrayGetCount(v62) : 0;
      if (v61 >= v63)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v62, v61);
      v65 = CFArrayGetValueAtIndex(Mutable, v61);
      cf[0] = 0;
      FigCFArrayGetInt64AtIndex();
      ++v61;
      if (vtParavirtualizationHostMotionEstimationProcessorSession_rememberPixelBufferAndUUIDAndMappingID(v43, v59, v65, ValueAtIndex, cf[0]))
      {
        goto LABEL_102;
      }
    }

    VTParavirtualizationMessageGetUInt32();
    if (v67 || VTParavirtualizationMessageCopyCFDictionary(v44, 745366895, &v82))
    {
LABEL_102:
      if (v79)
      {
        CFRelease(v79);
      }

      if (pixelBufferOut)
      {
        CFRelease(pixelBufferOut);
      }

      if (*v87)
      {
        CFRelease(*v87);
      }

      if (v86)
      {
        CFRelease(v86);
      }

      if (v82)
      {
        CFRelease(v82);
      }

      if (v58)
      {
        CFRelease(v58);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      if (Mutable)
      {
        v66 = Mutable;
        goto LABEL_118;
      }

      goto LABEL_119;
    }

    dispatch_group_enter(*(v43 + 208));
    v68 = *(v43 + 24);
    v70 = v79;
    v69 = pixelBufferOut;
    v71 = v81;
    v72 = v82;
    v73 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v73)
    {
      v74 = v73(v68, v59, v69, v70, v71, v72);
      if (!v74)
      {
LABEL_100:
        if (!VTParavirtualizationMessageAppendSInt32(v86, 744845938, v74))
        {
          vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v43, *v87);
        }

        goto LABEL_102;
      }
    }

    else
    {
      v74 = -12782;
    }

    dispatch_group_leave(*(v43 + 208));
    goto LABEL_100;
  }

  if (v10 != 1835365236)
  {
    goto LABEL_97;
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  cf[0] = 0;
  v86 = 0;
  *v87 = 0;
  if (!VTParavirtualizationCreateReplyAndByteStream(v18, 4u, cf, v87))
  {
    VTParavirtualizationMessageGetCMVideoDimensions();
    if (!v19)
    {
      v20 = *(v17 + 24);
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      v22 = v21 ? v21(v20, v86, v17 + 40) : -12782;
      if (!VTParavirtualizationMessageAppendSInt32(*v87, 744845938, v22))
      {
        vtParavirtualizationHostMotionEstimationProcessorSession_sendMessageToGuest(v17, cf[0]);
      }
    }
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v66 = *v87;
  if (*v87)
  {
    goto LABEL_118;
  }

LABEL_119:
  free(*(a1 + 48));
  free(*(a1 + 56));
  CFRelease(*(a1 + 40));
  CFRelease(*(a1 + 32));
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_rememberPixelBufferAndUUIDAndMappingID(uint64_t a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  FigSimpleMutexLock();
  v10 = *(a1 + 200);
  if (v10 || (callBacks.version = 0, callBacks.retain = vtClonePixelBufferSurfaceStuff, callBacks.copyDescription = 0, callBacks.equal = 0, callBacks.release = vtFreePixelBufferSurfaceStuff, v10 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks), (*(a1 + 200) = v10) != 0))
  {
    v11 = 0;
LABEL_4:
    for (i = CFArrayGetCount(v10); ; i = 0)
    {
      v13 = *(a1 + 200);
      if (v11 >= i)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v13, v11);
      v15 = MEMORY[0x193AE2470](ValueAtIndex);
      if (v15)
      {
        v16 = v15;
        CFRelease(v15);
        if (v16 == a3)
        {
          goto LABEL_13;
        }
      }

      ++v11;
      v10 = *(a1 + 200);
      if (v10)
      {
        goto LABEL_4;
      }
    }

    CFArrayAppendValue(v13, 0);
    v17 = *(a1 + 200);
    Count = CFArrayGetCount(v17);
    v19 = CFArrayGetValueAtIndex(v17, Count - 1);
    if (!v19)
    {
LABEL_13:
      v22 = 0;
      goto LABEL_16;
    }

    v20 = v19;
    v19[1] = a2;
    FigCFWeakReferenceStore();
    if (a4)
    {
      v21 = CFRetain(a4);
    }

    else
    {
      v21 = 0;
    }

    v22 = 0;
    v20[2] = v21;
    v20[3] = a5;
  }

  else
  {
    v22 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, LODWORD(callBacks.version), LODWORD(callBacks.retain));
  }

LABEL_16:
  FigSimpleMutexUnlock();
  return v22;
}

uint64_t VTParavirtualizationHostMotionEstimationProcessorSessionCleanUpAfterProcessing(uint64_t a1)
{
  FigSimpleMutexLock();
  v2 = *(a1 + 200);
  if (v2 && (Count = CFArrayGetCount(v2), Count >= 1))
  {
    v4 = Count;
    v5 = 0;
    v6 = 0;
    Mutable = 0;
    v8 = *MEMORY[0x1E695E480];
    v9 = MEMORY[0x1E695E9C0];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 200), v5);
      v11 = MEMORY[0x193AE2470]();
      if (v11)
      {
        CFRelease(v11);
        ++v5;
      }

      else
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(v8, 0, v9);
        }

        FigCFArrayAppendInt64();
        v12 = ValueAtIndex[2];
        if (v12)
        {
          if (!v6)
          {
            v6 = CFArrayCreateMutable(v8, 0, v9);
            v12 = ValueAtIndex[2];
          }

          CFArrayAppendValue(v6, v12);
          v13 = ValueAtIndex[2];
          if (v13)
          {
            CFRelease(v13);
            ValueAtIndex[2] = 0;
          }
        }

        CFArrayRemoveValueAtIndex(*(a1 + 200), v5);
        --v4;
      }
    }

    while (v5 < v4);
  }

  else
  {
    Mutable = 0;
    v6 = 0;
  }

  FigSimpleMutexUnlock();
  v16 = 0;
  cf = 0;
  if (Mutable)
  {
    v14 = CFArrayGetCount(Mutable);
    if (v14 && !VTParavirtualizationCreateMessageBoxToRelinquishSurfaceMappingIDs(Mutable, 0, v14, &cf) && !vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, cf))
    {
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (v6 && CFArrayGetCount(v6) >= 1 && !VTParavirtualizationCreateMessageAndByteStream(0x4D647062u, 0, (a1 + 160), 0, &cf, &v16) && !VTParavirtualizationMessageAppendCFUUIDArray(v16, 0x2C75692Bu, v6))
      {
        vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(a1, cf);
      }
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v16)
    {
      CFRelease(v16);
    }

    CFRelease(Mutable);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

void VTParavirtualizationHostMotionEstimationProcessorSessionInvalidate(uint64_t a1)
{
  v1 = *(a1 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __VTParavirtualizationHostMotionEstimationProcessorSessionInvalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_6;
  block[4] = a1;
  dispatch_sync(v1, block);
}

void __VTParavirtualizationHostMotionEstimationProcessorSessionInvalidate_block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 20));
  v2 = *(a1 + 32);
  *(v2 + 16) = 1;
  os_unfair_lock_unlock((v2 + 20));
  VTMotionEstimationProcessorGetCMBaseObject();
  if (v3)
  {
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v5)
    {

      v5(v4);
    }
  }
}

intptr_t VTParavirtualizationHostMotionEstimationProcessorSessionCompleteInvalidate(intptr_t result)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(result + 208);
  if (v1)
  {
    v2 = result;
    v3 = dispatch_time(0, 2000000000);
    result = dispatch_group_wait(v1, v3);
    if (result)
    {
      v4 = 2;
      do
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v4 *= 2;
        VTMotionEstimationProcessorSessionCleanUpAfterProcessing(v2 + 40);
        v6 = *(v2 + 208);
        v7 = dispatch_time(0, 1000000000 * v4);
        result = dispatch_group_wait(v6, v7);
      }

      while (result);
    }
  }

  return result;
}

double vtParavirtualizationHostMotionEstimationProcessorSession_Init(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void vtParavirtualizationHostMotionEstimationProcessorSession_Finalize(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  VTParavirtualizationHostMotionEstimationProcessorSessionCleanUpAfterProcessing(a1);
  v3 = *(a1 + 200);
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    dispatch_release(v5);
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 144) = 0;
  }

  _Block_release(*(a1 + 152));
  *(a1 + 152) = 0;
  v7 = *(a1 + 184);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 184) = 0;
  }

  v8 = *(a1 + 200);
  if (v8)
  {
    CFArrayRemoveAllValues(v8);
    v9 = *(a1 + 200);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 200) = 0;
    }
  }

  FigSimpleMutexDestroy();
  *(a1 + 192) = 0;
  v10 = *(a1 + 208);
  if (v10)
  {
    dispatch_release(v10);
    *(a1 + 208) = 0;
  }
}

__CFString *vtParavirtualizationHostMotionEstimationProcessorSession_CopyDebugDesc(void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"VTParavirtualizationHostMotionEstimationProcessorSession %p RC: %d processor %p", a1, v4, a1[3]);
  return Mutable;
}

uint64_t vtParavirtualizationHostMotionEstimationProcessorSession_callMessageToGuestHandler(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  os_unfair_lock_lock((a1 + 20));
  if (*(a1 + 16))
  {
    v6 = 1061109567;
    VTParavirtualizationMessageGetMessageTypeAndFlagsAndGuestUUID(a2, &v6, 0, 0);
    v4 = 4294948198;
  }

  else
  {
    (*(*(a1 + 152) + 16))();
    v4 = 0;
  }

  os_unfair_lock_unlock((a1 + 20));
  return v4;
}

void *vtClonePixelBufferSurfaceStuff(uint64_t a1)
{
  result = MEMORY[0x193AE0CD0](a1, 32, 0x106004009C49B2ELL, 0);
  *result = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void vtFreePixelBufferSurfaceStuff(const __CFAllocator *a1, void *a2)
{
  FigCFWeakReferenceStore();
  v4 = a2[2];
  if (v4)
  {
    CFRelease(v4);
    a2[2] = 0;
  }

  CFAllocatorDeallocate(a1, a2);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a2 + 40);
  a9 = 0;
  a10 = 0;

  return VTParavirtualizationCreateReplyAndByteStream(v11, 4u, &a9, &a10);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{

  return VTParavirtualizationMessageAppendCFDictionary(a11, 0x2C706261u, v11);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, CMBlockBufferRef *a5, void *a6)
{

  return VTParavirtualizationCreateMessageAndByteStream(a1, 2u, a3, 0, a5, a6);
}

void vtDecompressionSubDuctFinishAsynchronousTransfers(uint64_t a1)
{
  if (*(a1 + 160))
  {
    dispatch_group_wait(*(a1 + 168), 0xFFFFFFFFFFFFFFFFLL);
    v2 = *(a1 + 160);
    if (v2)
    {
      dispatch_release(v2);
      *(a1 + 160) = 0;
    }

    v3 = *(a1 + 168);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 168) = 0;
    }
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    vtDecompressionSubDuctAsyncPixelTransfer_StopWorkerThreads(v4);
    *(a1 + 176) = 0;
  }
}

void vtDecompressionSubDuctAsyncPixelTransfer_StopWorkerThreads(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 32) = 1;
    FigMemoryBarrier();
    if (*(a1 + 8) >= 1)
    {
      v2 = 0;
      do
      {
        FigSemaphoreSignal();
        ++v2;
        v3 = *(a1 + 8);
      }

      while (v2 < v3);
      if (v3 >= 1)
      {
        v4 = 0;
        do
        {
          FigThreadJoin();
          *(a1 + 16 + 8 * v4++) = 0;
        }

        while (v4 < *(a1 + 8));
      }
    }

    *(a1 + 8) = 0;
    FigSemaphoreDestroy();
    FigSimpleMutexDestroy();
    FigSemaphoreDestroy();

    free(a1);
  }
}

uint64_t vtDecompressionSession_handleSessionTerminatedNotification(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();

  return CMNotificationCenterPostNotification();
}

OSStatus VTDecompressionSessionWaitForAsynchronousFrames(VTDecompressionSessionRef session)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!session)
  {
    emitter = fig_log_get_emitter();
    v4 = v1;
    v5 = emitter;
    v6 = 4294954394;
    v7 = 8585;
    goto LABEL_5;
  }

  if (*(session + 16))
  {
    v3 = fig_log_get_emitter();
    v4 = v1;
    v5 = v3;
    v6 = 4294954393;
    v7 = 8588;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v6, "<<<< VT-DS >>>>", v7, v4);
  }

  v10 = *(session + 3);
  if (v10)
  {

    return VTDecompressionSessionRemoteBridge_WaitForAsynchronousFrames(v10);
  }

  else
  {
    v11 = 5000000000;
    VTDecompressionSessionFinishDelayedFrames(session);
    for (; FigSemaphoreWaitRelative() == -12792; v11 *= 2)
    {
      v12 = *(session + 4);
      if (v12)
      {
        v13 = *v12;
        if (v13)
        {
          snprintf(__str, 0x20uLL, "%d", *(v13 + 64));
          vtDecompressionDuctGetMinOutputPresentationTimeStampOfFramesBeingDecoded(*(session + 4), v14);
          vtDecompressionDuctGetMaxOutputPresentationTimeStampOfFramesBeingDecoded(*(session + 4), v14);
        }
      }
    }

    FigSemaphoreSignal();
    return 0;
  }
}

uint64_t VTDecompressionSessionCreateWithOptions(uint64_t a1, CMFormatDescriptionRef desc, CFTypeRef a3, const __CFDictionary *a4, _OWORD *a5, const __CFDictionary *a6, uint64_t *a7)
{
  v124[16] = *MEMORY[0x1E69E9840];
  v7 = 4294954394;
  if (!desc || !a7)
  {
    return v7;
  }

  Extension = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69627B8]);
  if (Extension)
  {
    v17 = Extension;
    v18 = CFGetTypeID(Extension);
    if (v18 != CFArrayGetTypeID() || (Extension = CFArrayGetCount(v17)) != 0)
    {
      VTDecompressionSessionCreateWithOptions_cold_1(v124);
      return LODWORD(v124[0]);
    }
  }

  if (vtCheckTraceOnce_once != -1)
  {
    VTDecompressionSessionCreateWithOptions_cold_2();
  }

  *a7 = 0;
  v117 = a7;
  if (a6 && (Extension = CFDictionaryGetValue(a6, @"AllowClientProcessDecode")) != 0)
  {
    Extension = CFEqual(Extension, *MEMORY[0x1E695E4D0]);
    v19 = Extension;
  }

  else
  {
    v19 = 0;
  }

  v20 = VTShouldRunVideoDecodersInProcess(Extension, v16);
  if (v20)
  {
    v22 = 1;
  }

  else
  {
    v22 = v19;
  }

  if (VTVideoCodecService_ShouldUseSeparateCodecProcessForDecode(v20, v21))
  {
    IsVideocodecd = FigServer_IsVideocodecd();
  }

  else
  {
    IsVideocodecd = FigServer_IsServerProcess();
  }

  v24 = IsVideocodecd;
  if (a3)
  {
    a3 = CFRetain(a3);
  }

  MEMORY[0x193AE3010](&VTDecompressionSessionGetTypeID_sRegisterVTDecompressionSessionOnce, RegisterVTDecompressionSession);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
LABEL_31:
    MutableCopy = 0;
    v7 = 4294954392;
    goto LABEL_143;
  }

  v26 = FigSemaphoreCreate();
  *(Instance + 72) = v26;
  if (!v26)
  {
    CFRelease(Instance);
    Instance = 0;
    goto LABEL_31;
  }

  if (vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_onceToken != -1)
  {
    VTDecompressionSessionCreateWithOptions_cold_3();
  }

  *(Instance + 144) = vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_hdr10PlusEnabled;
  if (vtDecompressionSessionSetupDolbyVision8p1_onceToken != -1)
  {
    VTDecompressionSessionCreateWithOptions_cold_4();
  }

  *(Instance + 145) = vtDecompressionSessionSetupDolbyVision8p1_dolbyVision8p1Enabled;
  if (vtDecompressionSessionSetupDolbyVision10p4_onceToken != -1)
  {
    VTDecompressionSessionCreateWithOptions_cold_5();
  }

  *(Instance + 146) = vtDecompressionSessionSetupDolbyVision10p4_dolbyVision10p4Enabled;
  *cf = 0;
  if (a6)
  {
    FigCFDictionaryGetInt32IfPresent();
  }

  v28 = FigOSTransactionCreate();
  *(Instance + 152) = v28;
  if (!v28)
  {
    VTDecompressionSessionCreateWithOptions_cold_6(cf, v124);
    MutableCopy = 0;
    v7 = LODWORD(v124[0]);
    goto LABEL_143;
  }

  v116 = a3;
  v111 = v24;
  if (FigDebugIsInternalBuild() && !v24)
  {
    CMFormatDescriptionGetMediaSubType(desc);
    LODWORD(v120) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (!(v24 | v22))
  {
    v29 = VTDecompressionSessionRemoteBridge_Create(Instance, a1, desc, a3, a4, a5, a6, (Instance + 24));
    v30 = v117;
    if (!v29)
    {
      started = FigStartForwardingMediaServicesProcessDeathNotification();
      MutableCopy = 0;
      *(Instance + 160) = MEMORY[0x193AE2670](started);
      goto LABEL_39;
    }

    v7 = v29;
    MutableCopy = 0;
    goto LABEL_143;
  }

  VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange();
  MutableCopy = 0;
  v30 = v117;
  if (a4 && VideoDynamicRange >= 2)
  {
    if (CelestialShouldAllowHTPCIOSurfacesForHDRPlaybackToCA())
    {
      v33 = *MEMORY[0x1E695E4D0];
      v34 = *MEMORY[0x1E69660D0];
      if (v33 == CFDictionaryGetValue(a4, *MEMORY[0x1E69660D0]))
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        CFDictionaryRemoveValue(MutableCopy, v34);
        CFDictionarySetValue(MutableCopy, *MEMORY[0x1E69660C8], v33);
      }

      else
      {
        MutableCopy = 0;
      }

      a3 = v116;
    }

    else
    {
      MutableCopy = 0;
    }
  }

  if (MutableCopy)
  {
    v35 = MutableCopy;
  }

  else
  {
    v35 = a4;
  }

  *(Instance + 80) = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  *(Instance + 88) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  *(Instance + 128) = a6;
  if (a6)
  {
    CFRetain(a6);
  }

  if (a5)
  {
    *(Instance + 96) = *a5;
  }

  *type = 0;
  v120 = 0;
  v36 = *(Instance + 48);
  v114 = (Instance + 48);
  v115 = Instance + 32;
  v118 = 0;
  Dimensions = CMVideoFormatDescriptionGetDimensions(desc);
  if (Dimensions.width * Dimensions.height > 1073741820.0)
  {
    emitter = fig_log_get_emitter();
    v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954386, "<<<< VT-DS >>>>", 2481);
LABEL_62:
    v7 = v39;
    v40 = 0;
    v41 = 0;
    goto LABEL_135;
  }

  v42 = *(Instance + 88);
  if (v42)
  {
    v43 = CFRetain(v42);
    if (v43)
    {
      v41 = v43;
      v110 = 0;
      goto LABEL_69;
    }

    if (*(Instance + 88))
    {
      v44 = fig_log_get_emitter();
      v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 4294954390, "<<<< VT-DS >>>>", 2488);
      goto LABEL_62;
    }
  }

  v41 = 0;
  v110 = 1;
LABEL_69:
  MediaSubType = CMFormatDescriptionGetMediaSubType(desc);
  v46 = MediaSubType;
  if (MediaSubType <= 1836415072)
  {
    if (MediaSubType <= 1718908527)
    {
      if (MediaSubType != 1635135537)
      {
        if (MediaSubType == 1667790435)
        {
          goto LABEL_96;
        }

        v47 = 1718908520;
        goto LABEL_90;
      }

LABEL_78:
      if (FigIsHDRAllowedOnDevice())
      {
        if ((LOBYTE(v124[0]) = 0, FigCFDictionaryGetBooleanIfPresent(), FigVideoFormatDescriptionConformsToDolbyVisionProfile10p0()) || *(Instance + 146) && FigVideoFormatDescriptionConformsToDolbyVisionProfile10p4() || *(Instance + 144) && vtFormatDescriptionIsPQ(desc) && VTIsHardwareDecodeSupported(0x61763031u))
        {
          if (v46 == 1902212657)
          {
            v46 = 1902403958;
          }

          else if (v46 == 1635135537)
          {
            v46 = 1684108849;
          }
        }
      }

      goto LABEL_98;
    }

    if (MediaSubType == 1718908528 || MediaSubType == 1751479857)
    {
      goto LABEL_96;
    }

    v48 = 1752589105;
    if (MediaSubType != 1752589105)
    {
      goto LABEL_98;
    }

    v49 = FigVideoFormatDescriptionContainsAlphaChannel() == 0;
    v50 = 1836415073;
LABEL_93:
    if (v49)
    {
      v46 = v48;
    }

    else
    {
      v46 = v50;
    }

    goto LABEL_96;
  }

  if (MediaSubType <= 1902667125)
  {
    if (MediaSubType == 1836415073 || MediaSubType == 1869117027)
    {
      goto LABEL_96;
    }

    if (MediaSubType != 1902212657)
    {
      goto LABEL_98;
    }

    goto LABEL_78;
  }

  if (MediaSubType == 1902667126)
  {
    goto LABEL_96;
  }

  v48 = 1902671459;
  if (MediaSubType == 1902671459)
  {
    v49 = FigVideoFormatDescriptionContainsAlphaChannel() == 0;
    v50 = 1902998904;
    goto LABEL_93;
  }

  v47 = 1902998904;
LABEL_90:
  if (MediaSubType != v47)
  {
    goto LABEL_98;
  }

LABEL_96:
  if (FigIsHDRAllowedOnDevice())
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (FigVideoFormatDescriptionConformsToDolbyVisionProfile84())
    {
      goto LABEL_152;
    }

    v89 = MEMORY[0x1E6965F30];
    if (!*(Instance + 144))
    {
LABEL_191:
      if (!*(Instance + 145))
      {
        goto LABEL_98;
      }

      CMFormatDescriptionGetExtension(desc, *v89);
      if (!FigCFEqual() || !FigVideoFormatDescriptionConformsToDolbyVisionProfile81())
      {
        goto LABEL_98;
      }

LABEL_152:
      if (v46 <= 1836415072)
      {
        switch(v46)
        {
          case 0x63687663:
            v46 = 1667524657;
            break;
          case 0x68657631:
            v46 = 1685481573;
            break;
          case 0x68766331:
            v46 = 1685481521;
            break;
        }
      }

      else if (v46 > 1902671458)
      {
        if (v46 == 1902671459)
        {
          v46 = 1902405681;
        }

        else if (v46 == 1902998904)
        {
          v46 = 1902407032;
        }
      }

      else if (v46 == 1836415073)
      {
        v46 = 1684895096;
      }

      else if (v46 == 1902667126)
      {
        v46 = 1902405733;
      }

      goto LABEL_98;
    }

    *cf = 0;
    v122 = 0;
    v121 = 0;
    CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E6965F30]);
    if (FigCFEqual())
    {
      v90 = CMFormatDescriptionGetExtension(desc, *MEMORY[0x1E69600A0]);
      if (v90)
      {
        v91 = v90;
        v92 = CFGetTypeID(v90);
        if (v92 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(v91, @"hvcC");
          if (Value)
          {
            ValueAtIndex = Value;
            v95 = CFGetTypeID(Value);
            if (v95 == CFArrayGetTypeID())
            {
              ValueAtIndex = CFArrayGetValueAtIndex(ValueAtIndex, 0);
              if (!ValueAtIndex)
              {
                goto LABEL_190;
              }

LABEL_183:
              v97 = CFGetTypeID(ValueAtIndex);
              if (v97 == CFDataGetTypeID())
              {
                v124[0] = 0;
                if (!FigHEVCBridge_GetHEVCParameterSetAtIndex() && !FigHEVCBridge_GetSPSChromaFormatAndBitDepths() && HIBYTE(v122) == 1 && v122 == 10 && v121 == 10)
                {
                  a3 = v116;
                  goto LABEL_152;
                }
              }

              goto LABEL_190;
            }

            v96 = CFGetTypeID(ValueAtIndex);
            if (v96 == CFDataGetTypeID())
            {
              goto LABEL_183;
            }
          }
        }
      }
    }

LABEL_190:
    a3 = v116;
    goto LABEL_191;
  }

LABEL_98:
  *v115 = 0;
  *(Instance + 40) = 0;
  v51 = CFGetAllocator(Instance);
  v7 = VTSelectAndCreateVideoDecoderInstanceInternal(v46, v51, 0, v41, v36, type, &v118, v114);
  if (v7)
  {
LABEL_133:
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v107, v108, v109);
    v40 = 0;
LABEL_134:
    v30 = v117;
    goto LABEL_135;
  }

  theDict = v41;
  while (1)
  {
    v52 = CFGetAllocator(Instance);
    v53 = MEMORY[0x193AE0CD0](v52, 208, 0x10E004066CA4577, 0);
    v40 = v53;
    if (!v53)
    {
      v7 = 4294954392;
      goto LABEL_134;
    }

    v53[11] = 0u;
    v53[12] = 0u;
    v53[9] = 0u;
    v53[10] = 0u;
    v53[7] = 0u;
    v53[8] = 0u;
    v53[5] = 0u;
    v53[6] = 0u;
    v53[3] = 0u;
    v53[4] = 0u;
    v53[1] = 0u;
    v53[2] = 0u;
    *v53 = 0u;
    *(v53 + 10) = FigSimpleMutexCreate();
    if (v118)
    {
      v54 = 0;
    }

    else
    {
      v55 = CFGetAllocator(Instance);
      v56 = vtDecompressionSubDuctAllocate(v55, &v120);
      if (v56)
      {
        v7 = v56;
        goto LABEL_134;
      }

      v54 = v120;
      *v120 = Instance;
      v54[3] = v54;
      v54[4] = v40;
      v54[2] = FigFormatDescriptionRetain();
      v57 = *(Instance + 80);
      if (v57)
      {
        v54[9] = CFRetain(v57);
      }

      v58 = *(Instance + 128);
      if (v58)
      {
        v59 = CFDictionaryGetValue(v58, @"SharePixelBufferPool");
        v54[34] = v59;
        if (v59)
        {
          CFRetain(v59);
        }

        FigCFDictionaryGetInt32IfPresent();
        v60 = CFDictionaryGetValue(*(Instance + 128), @"LoggingIdentifier");
        v54[32] = v60;
        if (v60)
        {
          CFRetain(v60);
        }

        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
        FigCFDictionaryGetBooleanIfPresent();
      }
    }

    *v40 = Instance;
    *(v40 + 64) = 1;
    *(v40 + 8) = *type;
    *(v40 + 24) = v40;
    *(v40 + 16) = v54;
    vtDecompressionDuctSetVideoFormatDescription(v40, desc);
    *(v40 + 120) = 0x7FFFFFFF;
    v61 = MEMORY[0x1E6960C70];
    *(v40 + 156) = *MEMORY[0x1E6960C70];
    *(v40 + 172) = *(v61 + 16);
    *(v40 + 148) = 0x7FFFFFFF;
    *(Instance + 32) = v40;
    *(Instance + 40) = v54;
    if ((v110 & 1) == 0)
    {
      v62 = CFDictionaryGetValue(theDict, @"DecoderUsage");
      if (v62)
      {
        v63 = v62;
        v64 = *(v40 + 8);
        v65 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v65)
        {
          v65(v64, @"DecoderUsage", v63);
        }
      }
    }

    v66 = *(Instance + 128);
    if (v66)
    {
      v67 = CFDictionaryGetValue(v66, @"SelectPixelFormatWithAlpha");
      if (v67)
      {
        v68 = v67;
        v69 = *(v40 + 8);
        v70 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v70)
        {
          v70(v69, @"SelectPixelFormatWithAlpha", v68);
        }
      }

      v71 = CFDictionaryGetValue(*(Instance + 128), @"WriteDirectlyToPlanesOfTargetCVPixelBuffer");
      if (v71)
      {
        v72 = v71;
        v73 = *(v40 + 8);
        v74 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v74)
        {
          v74(v73, @"WriteDirectlyToPlanesOfTargetCVPixelBuffer", v72);
        }
      }

      v75 = *(v40 + 8);
      v76 = *(Instance + 128);
      v77 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v77)
      {
        v77(v75, @"DecompressionSessionOptions", v76);
      }
    }

    v78 = *(v40 + 8);
    v79 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v79)
    {
      v80 = -12782;
      a3 = v116;
      goto LABEL_129;
    }

    a3 = v116;
    v80 = v79(v78, v40 + 16, desc);
    if (!v80)
    {
      break;
    }

LABEL_129:
    if (v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v80;
    }

    v81 = *(Instance + 48);
    v82 = CFGetAllocator(Instance);
    vtDecompressionDuctFinalize(v82, v40);
    v83 = CFGetAllocator(Instance);
    vtDecompressionSubDuctFinalize(v83, v54);
    v120 = 0;
    *v115 = 0;
    *(Instance + 40) = 0;
    v84 = CFGetAllocator(Instance);
    v41 = theDict;
    if (VTSelectAndCreateVideoDecoderInstanceInternal(v46, v84, 0, theDict, v81 + 1, type, &v118, v114))
    {
      goto LABEL_133;
    }
  }

  v124[0] = 0;
  IsPropertySupportedByVideoDecoder = vtDecompressionSessionIsPropertySupportedByVideoDecoder(Instance, @"EnableVideoToolboxQoS");
  v99 = MEMORY[0x1E695E480];
  v41 = theDict;
  if (!IsPropertySupportedByVideoDecoder)
  {
    goto LABEL_204;
  }

  v100 = *(v40 + 8);
  v101 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v101)
  {
    goto LABEL_204;
  }

  v102 = v101(v100, @"EnableVideoToolboxQoS", *v99, v124);
  v103 = v124[0];
  if (v102 || !v124[0])
  {
    v30 = v117;
    v41 = theDict;
    if (v124[0])
    {
      goto LABEL_205;
    }
  }

  else
  {
    v104 = CFGetTypeID(v124[0]);
    v41 = theDict;
    if (v104 == CFBooleanGetTypeID() && CFEqual(*MEMORY[0x1E695E4D0], v124[0]))
    {
      *(v40 + 112) = 1;
    }

LABEL_204:
    v103 = v124[0];
    v30 = v117;
    if (v124[0])
    {
LABEL_205:
      CFRelease(v103);
    }
  }

  *(v40 + 128) = 0x3FF0000000000000;
  *cf = 0;
  a3 = v116;
  if (!VTDecompressionSessionCopyProperty(Instance, @"UsingHardwareAcceleratedVideoDecoder", *v99, cf) && *cf && (v105 = CFGetTypeID(*cf), v105 == CFBooleanGetTypeID()))
  {
    if (CFEqual(*MEMORY[0x1E695E4D0], *cf))
    {
      v106 = 1;
    }

    else
    {
      v106 = 2;
    }

    *(v40 + 200) = v106;
    a3 = v116;
    v41 = theDict;
  }

  else
  {
    *(v40 + 200) = 0;
  }

  if (*cf)
  {
    CFRelease(*cf);
  }

  v7 = 0;
  *(Instance + 32) = v40;
  *(Instance + 40) = v54;
  v120 = 0;
  v40 = 0;
LABEL_135:
  v85 = CFGetAllocator(Instance);
  vtDecompressionDuctFinalize(v85, v40);
  v86 = CFGetAllocator(Instance);
  vtDecompressionSubDuctFinalize(v86, v120);
  if (v41)
  {
    CFRelease(v41);
  }

  if (!v7)
  {
    if (!*v115 || !*(*v115 + 8) || (CMNotificationCenterGetDefaultLocalCenter(), v87 = FigNotificationCenterAddWeakListener(), !v87))
    {
      *(Instance + 160) = MEMORY[0x193AE2670]();
      if (v111)
      {
LABEL_142:
        v7 = 0;
        *(Instance + 168) = FigSimpleMutexCreate();
        *v30 = Instance;
        Instance = 0;
        goto LABEL_143;
      }

LABEL_39:
      vtDecompressionSetAllowBitstreamToChangeFrameDimensionsIfNecessary(desc, Instance);
      goto LABEL_142;
    }

    v7 = v87;
  }

LABEL_143:
  if (a3)
  {
    CFRelease(a3);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v7;
}

OSStatus VTDecompressionSessionSetMultiImageCallback(VTDecompressionSessionRef decompressionSession, VTDecompressionOutputMultiImageCallback outputMultiImageCallback, void *outputMultiImageRefcon)
{
  if (decompressionSession)
  {
    if (outputMultiImageCallback)
    {
      v4 = *(decompressionSession + 3);
      if (v4)
      {

        return VTDecompressionSessionRemoteBridge_SetMultiImageCallback(v4, outputMultiImageCallback, outputMultiImageRefcon);
      }

      else
      {
        v6 = *(decompressionSession + 14);
        if (v6 == outputMultiImageCallback || v6 == 0)
        {
          result = 0;
          *(decompressionSession + 14) = outputMultiImageCallback;
          *(decompressionSession + 15) = outputMultiImageRefcon;
        }

        else
        {
          VTDecompressionSessionSetMultiImageCallback_cold_1(&v8);
          return v8;
        }
      }
    }

    else
    {
      VTDecompressionSessionSetMultiImageCallback_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    VTDecompressionSessionSetMultiImageCallback_cold_3(&v10);
    return v10;
  }

  return result;
}

uint64_t vtDecompressionSessionCopyPropertiesHandledByVideoToolbox(CFTypeRef *a1)
{
  MEMORY[0x193AE3010](&sCreatePropertiesHandledByVideoToolboxOnce_0, vtDecompressionSessionCreatePropertiesHandledByVideoToolbox);
  if (sVTDecompressionSessionPropertiesHandledByVideoToolbox)
  {
    *a1 = CFRetain(sVTDecompressionSessionPropertiesHandledByVideoToolbox);
    return 0;
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954392, "<<<< VT-DS >>>>", 3412, v1);
  }
}

uint64_t vtDecompressionSubDuctSetProperty(uint64_t a1, const void *a2, const __CFNumber *a3, char *a4)
{
  if (CFEqual(@"PixelBufferPool", a2) || CFEqual(@"PixelBufferPoolIsShared", a2) || CFEqual(@"PoolPixelBufferAttributesSeed", a2) || CFEqual(@"PoolPixelBufferAttributes", a2) || CFEqual(@"NumberOfFramesInDecoder", a2) || CFEqual(@"MinFrameIDOfFramesInDecoder", a2) || CFEqual(@"MaxFrameIDOfFramesInDecoder", a2))
  {
    emitter = fig_log_get_emitter();
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954395, "<<<< VT-DS >>>>", 3598, v4);
    goto LABEL_9;
  }

  if (CFEqual(@"OutputPoolRequestedMinimumBufferCount", a2))
  {
    if (a3)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(a3))
      {
        if (a1)
        {
          valuePtr = -1;
          CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
          if ((valuePtr & 0x80000000) == 0)
          {
            FigSimpleMutexLock();
            v15 = *(a1 + 84) + 1;
            *(a1 + 80) = valuePtr;
            *(a1 + 84) = v15;
            FigSimpleMutexUnlock();
            v11 = 0;
            goto LABEL_10;
          }

          v27 = fig_log_get_emitter();
          v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v27, 4294954394, "<<<< VT-DS >>>>", 3613, v4);
        }

        else
        {
          v23 = fig_log_get_emitter();
          v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954396, "<<<< VT-DS >>>>", 3616, v4);
        }
      }

      else
      {
        v21 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v21, 4294954516, "<<<< VT-DS >>>>", 3619, v4);
      }

LABEL_9:
      v11 = v10;
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }

    FigSimpleMutexLock();
    v20 = *(a1 + 84) + 1;
    *(a1 + 80) = 0;
    *(a1 + 84) = v20;
    goto LABEL_29;
  }

  if (!CFEqual(@"PixelTransferProperties", a2))
  {
    if (CFEqual(@"ClientPID", a2))
    {
      if (!a3 || (v22 = CFNumberGetTypeID(), v22 != CFGetTypeID(a3)))
      {
        v25 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 4294954516, "<<<< VT-DS >>>>", 3676, v4);
        goto LABEL_9;
      }

      if (!a1)
      {
        v31 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v31, 4294954396, "<<<< VT-DS >>>>", 3672, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      CFNumberGetValue(a3, kCFNumberSInt32Type, (a1 + 248));
      if (*(a1 + 160))
      {
        v11 = FigDispatchQueueSetPriorityAndClientPID();
      }

      else
      {
        v11 = 0;
      }

      v33 = *(a1 + 176);
      if (v33)
      {
        v11 = vtDecompressionSubDuctAsyncPixelTransfer_SetClientPIDOnWorkerThreads(v33, *(a1 + 248));
      }

      v34 = *(a1 + 136);
      if (!v34)
      {
LABEL_72:
        FigSimpleMutexUnlock();
        goto LABEL_10;
      }

      v35 = @"ClientPID";
      v36 = a3;
      goto LABEL_70;
    }

    if (CFEqual(@"ThrottleForBackground", a2))
    {
      if (!a3 || (v26 = CFBooleanGetTypeID(), v26 != CFGetTypeID(a3)))
      {
        v29 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, 4294954516, "<<<< VT-DS >>>>", 3702, v4);
        goto LABEL_9;
      }

      if (!a1)
      {
        v38 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v38, 4294954396, "<<<< VT-DS >>>>", 3698, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      *(a1 + 264) = CFBooleanGetValue(a3);
      if (*(a1 + 160))
      {
        v11 = FigDispatchQueueSetPriorityAndClientPID();
      }

      else
      {
        v11 = 0;
      }

      v42 = *(a1 + 176);
      if (!v42)
      {
        goto LABEL_102;
      }

      if (*(a1 + 265))
      {
        v43 = 31;
      }

      else
      {
        v43 = 3;
      }

      if (*(a1 + 264))
      {
        v44 = 16;
      }

      else
      {
        v44 = v43;
      }

      v45 = vtDecompressionSubDuctAsyncPixelTransfer_SetPriorityOnWorkerThreads(v42, v44);
      goto LABEL_101;
    }

    if (CFEqual(@"RealTime", a2))
    {
      if (a3)
      {
        v30 = CFGetTypeID(a3);
        if (v30 != CFBooleanGetTypeID())
        {
          v39 = fig_log_get_emitter();
          v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 4294954516, "<<<< VT-DS >>>>", 3734, v4);
          goto LABEL_9;
        }
      }

      if (!a1)
      {
        v40 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 4294954396, "<<<< VT-DS >>>>", 3730, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      *(a1 + 265) = FigCFEqual();
      if (*(a1 + 160))
      {
        v11 = FigDispatchQueueSetPriorityAndClientPID();
      }

      else
      {
        v11 = 0;
      }

      v46 = *(a1 + 176);
      if (v46)
      {
        if (*(a1 + 265))
        {
          v47 = 31;
        }

        else
        {
          v47 = 3;
        }

        if (*(a1 + 264))
        {
          v48 = 16;
        }

        else
        {
          v48 = v47;
        }

        v11 = vtDecompressionSubDuctAsyncPixelTransfer_SetPriorityOnWorkerThreads(v46, v48);
      }

      v49 = *(a1 + 136);
      if (!v49)
      {
        goto LABEL_102;
      }

      v45 = VTSessionSetProperty(v49, @"RealTime", a3);
LABEL_101:
      v11 = v45;
LABEL_102:
      FigSimpleMutexUnlock();
      goto LABEL_103;
    }

    if (CFEqual(@"MaximizePowerEfficiency", a2))
    {
      if (a3)
      {
        v32 = CFGetTypeID(a3);
        if (v32 != CFBooleanGetTypeID())
        {
          v50 = fig_log_get_emitter();
          v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 4294954516, "<<<< VT-DS >>>>", 3751, v4);
          goto LABEL_9;
        }
      }

      if (!a1)
      {
        v51 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v51, 4294954396, "<<<< VT-DS >>>>", 3747, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      *(a1 + 266) = FigCFEqual();
      FigSimpleMutexUnlock();
LABEL_64:
      v11 = 0;
      goto LABEL_103;
    }

    if (CFEqual(@"MaxAgeForOutputPixelBufferPool", a2))
    {
      if (!a3 || (v41 = CFNumberGetTypeID(), v41 != CFGetTypeID(a3)))
      {
        v52 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, 4294954516, "<<<< VT-DS >>>>", 3772, v4);
        goto LABEL_9;
      }

      v81 = 0.0;
      if (!a1)
      {
        v60 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v60, 4294954396, "<<<< VT-DS >>>>", 3768, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      CFNumberGetValue(a3, kCFNumberDoubleType, &v81);
      v37 = CVPixelBufferPoolSetMaxBufferAge();
      goto LABEL_71;
    }

    if (CFEqual(@"ColorPrimaries", a2))
    {
      if (!a3 || (v53 = CFGetTypeID(a3), v53 != CFStringGetTypeID()))
      {
        v56 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, 4294954516, "<<<< VT-DS >>>>", 3795, v4);
        goto LABEL_9;
      }

      if (!a1)
      {
        v65 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v65, 4294954396, "<<<< VT-DS >>>>", 3791, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      v54 = *(a1 + 208);
      *(a1 + 208) = a3;
      CFRetain(a3);
      if (v54)
      {
        CFRelease(v54);
      }

      v55 = *(a1 + 240);
      if (v55)
      {
        CFRelease(v55);
        *(a1 + 240) = 0;
      }

      v34 = *(a1 + 136);
      if (v34)
      {
        v35 = @"DestinationColorPrimaries";
        v36 = *(a1 + 208);
LABEL_70:
        v37 = VTSessionSetProperty(v34, v35, v36);
LABEL_71:
        v11 = v37;
        goto LABEL_72;
      }
    }

    else if (CFEqual(@"TransferFunction", a2))
    {
      if (!a3 || (v57 = CFGetTypeID(a3), v57 != CFStringGetTypeID()))
      {
        v61 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, 4294954516, "<<<< VT-DS >>>>", 3818, v4);
        goto LABEL_9;
      }

      if (!a1)
      {
        v70 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v70, 4294954396, "<<<< VT-DS >>>>", 3814, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      v58 = *(a1 + 216);
      *(a1 + 216) = a3;
      CFRetain(a3);
      if (v58)
      {
        CFRelease(v58);
      }

      v59 = *(a1 + 240);
      if (v59)
      {
        CFRelease(v59);
        *(a1 + 240) = 0;
      }

      v34 = *(a1 + 136);
      if (v34)
      {
        v35 = @"DestinationTransferFunction";
        v36 = *(a1 + 216);
        goto LABEL_70;
      }
    }

    else if (CFEqual(@"YCbCrMatrix", a2))
    {
      if (!a3 || (v62 = CFGetTypeID(a3), v62 != CFStringGetTypeID()))
      {
        v66 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v66, 4294954516, "<<<< VT-DS >>>>", 3841, v4);
        goto LABEL_9;
      }

      if (!a1)
      {
        v76 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v76, 4294954396, "<<<< VT-DS >>>>", 3837, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      v63 = *(a1 + 224);
      *(a1 + 224) = a3;
      CFRetain(a3);
      if (v63)
      {
        CFRelease(v63);
      }

      v64 = *(a1 + 240);
      if (v64)
      {
        CFRelease(v64);
        *(a1 + 240) = 0;
      }

      v34 = *(a1 + 136);
      if (v34)
      {
        v35 = @"DestinationYCbCrMatrix";
        v36 = *(a1 + 224);
        goto LABEL_70;
      }
    }

    else
    {
      if (!CFEqual(@"ICCProfile", a2))
      {
        if (!CFEqual(@"GeneratePerFrameHDRDisplayMetadata", a2))
        {
          if (a1)
          {
            v10 = VTVideoEncoderSetProperty(*(a1 + 8), a2, a3);
          }

          else
          {
            v79 = fig_log_get_emitter();
            v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, 4294954396, "<<<< VT-DS >>>>", 3897, v4);
          }

          goto LABEL_9;
        }

        if (!a3 || (v72 = CFGetTypeID(a3), v72 != CFBooleanGetTypeID()))
        {
          v77 = fig_log_get_emitter();
          v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, 4294954394, "<<<< VT-DS >>>>", 3889, v4);
          goto LABEL_9;
        }

        if (!a1)
        {
          v80 = fig_log_get_emitter();
          v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, 4294954396, "<<<< VT-DS >>>>", 3886, v4);
          goto LABEL_9;
        }

        v73 = *MEMORY[0x1E695E4D0];
        FigSimpleMutexLock();
        if (v73 == a3)
        {
          *(a1 + 280) = 1;
        }

        else
        {
          *(a1 + 280) = 0;
          v74 = *(a1 + 288);
          if (v74)
          {
            CFRelease(v74);
            *(a1 + 288) = 0;
          }

          v75 = *(a1 + 296);
          if (v75)
          {
            CFRelease(v75);
            *(a1 + 296) = 0;
          }
        }

LABEL_29:
        FigSimpleMutexUnlock();
LABEL_30:
        v12 = 0;
        v11 = 0;
        goto LABEL_11;
      }

      if (!a3 || (v67 = CFGetTypeID(a3), v67 != CFDataGetTypeID()))
      {
        v71 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v71, 4294954516, "<<<< VT-DS >>>>", 3864, v4);
        goto LABEL_9;
      }

      if (!a1)
      {
        v78 = fig_log_get_emitter();
        v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v78, 4294954396, "<<<< VT-DS >>>>", 3860, v4);
        goto LABEL_9;
      }

      FigSimpleMutexLock();
      v68 = *(a1 + 232);
      *(a1 + 232) = a3;
      CFRetain(a3);
      if (v68)
      {
        CFRelease(v68);
      }

      v69 = *(a1 + 240);
      if (v69)
      {
        CFRelease(v69);
        *(a1 + 240) = 0;
      }

      v34 = *(a1 + 136);
      if (v34)
      {
        v35 = @"DestinationICCProfile";
        v36 = *(a1 + 232);
        goto LABEL_70;
      }
    }

    v11 = 0;
    goto LABEL_72;
  }

  if (a3)
  {
    v16 = CFDictionaryGetTypeID();
    if (v16 != CFGetTypeID(a3))
    {
      v24 = fig_log_get_emitter();
      v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 4294954394, "<<<< VT-DS >>>>", 3633, v4);
      goto LABEL_9;
    }
  }

  if (!a1)
  {
    goto LABEL_30;
  }

  vtDecompressionSubDuctFinishAsynchronousTransfers(a1);
  v17 = *(a1 + 144);
  if (v17)
  {
    CFRelease(v17);
  }

  if (a3)
  {
    v18 = CFGetAllocator(*a1);
    Copy = CFDictionaryCreateCopy(v18, a3);
  }

  else
  {
    Copy = 0;
  }

  *(a1 + 144) = Copy;
  v28 = *(a1 + 136);
  if (!v28)
  {
    goto LABEL_64;
  }

  CFRelease(v28);
  v11 = 0;
  *(a1 + 136) = 0;
LABEL_103:
  v12 = 1;
LABEL_11:
  if (a4)
  {
    *a4 = v12;
  }

  return v11;
}

uint64_t vtDecompressionSubDuctAsyncPixelTransfer_SetClientPIDOnWorkerThreads(uint64_t a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (*(a1 + 8) < 1)
  {
    v6 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = FigThreadSetProperty();
      ++v4;
    }

    while (v4 < *(a1 + 8));
    v6 = v5;
  }

  CFRelease(v3);
  return v6;
}

uint64_t vtDecompressionSubDuctAsyncPixelTransfer_SetPriorityOnWorkerThreads(uint64_t a1, int a2)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *MEMORY[0x1E695E480];
  do
  {
    valuePtr = a2;
    v6 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
    v7 = FigThreadSetProperty();
    if (v6)
    {
      CFRelease(v6);
    }

    ++v4;
  }

  while (v4 < *(a1 + 8));
  return v7;
}

uint64_t VTDecompressionSessionSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v28 = 0;
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954393;
    v7 = 3923;
LABEL_3:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< VT-DS >>>>", v7, v5);
  }

  v12 = *(a1 + 24);
  if (v12)
  {

    return VTDecompressionSessionRemoteBridge_SetProperty(v12, a2, a3);
  }

  v14 = *(a1 + 32);
  v13 = *(a1 + 40);
  if (!vtDecompressionSessionIsPropertyHandledByVideoToolbox(a2))
  {
    goto LABEL_48;
  }

  if (!vtDecompressionSessionIsPropertySupportedBySubDuct(a2))
  {
    if (CFEqual(a2, @"OnlyTheseFrames"))
    {
      if (*(v14 + 112))
      {
        if (!a3)
        {
          goto LABEL_20;
        }

        TypeID = CFStringGetTypeID();
        if (TypeID != CFGetTypeID(a3))
        {
          emitter = fig_log_get_emitter();
          v5 = v3;
          v6 = 4294954394;
          v7 = 3987;
          goto LABEL_3;
        }

        if (!CFEqual(a3, @"AllFrames"))
        {
          if (CFEqual(a3, @"NonDroppableFrames"))
          {
            v15 = 0;
            v21 = 1;
          }

          else if (CFEqual(a3, @"IFrames"))
          {
            v15 = 0;
            v21 = 2;
          }

          else
          {
            if (!CFEqual(a3, @"KeyFrames"))
            {
              emitter = fig_log_get_emitter();
              v5 = v3;
              v6 = 4294954394;
              v7 = 3984;
              goto LABEL_3;
            }

            v15 = 0;
            v21 = 3;
          }

          *(v14 + 116) = v21;
        }

        else
        {
LABEL_20:
          v15 = 0;
          *(v14 + 116) = 0;
        }

        return v15;
      }

      goto LABEL_48;
    }

    if (CFEqual(a2, @"ReducedFrameDelivery"))
    {
      if (*(v14 + 112))
      {
        if (!a3)
        {
          v15 = 0;
          *(v14 + 128) = 0x3FF0000000000000;
          return v15;
        }

        v19 = CFNumberGetTypeID();
        if (v19 == CFGetTypeID(a3))
        {
          v26 = 1.0;
          CFNumberGetValue(a3, kCFNumberDoubleType, &v26);
          if (v26 < 0.0 || v26 > 1.0)
          {
            fig_log_get_emitter();
            return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v26, v27, v29);
          }

          v15 = 0;
          *(v14 + 128) = v26;
          return v15;
        }

        return 0;
      }
    }

    else
    {
      if (CFEqual(a2, @"PowerLogSessionID"))
      {
        if (!a3 || (v20 = CFGetTypeID(a3), v20 != CFStringGetTypeID()))
        {
          emitter = fig_log_get_emitter();
          v5 = v3;
          v6 = 4294954394;
          v7 = 4017;
          goto LABEL_3;
        }

        v15 = *(v14 + 184);
        *(v14 + 184) = a3;
        CFRetain(a3);
        if (!v15)
        {
          return v15;
        }

        CFRelease(v15);
        return 0;
      }

      if (!CFEqual(a2, @"TemporalLevelLimit"))
      {
        if (CFEqual(@"NumberOfFramesBeingDecoded", a2) || CFEqual(@"MinOutputPresentationTimeStampOfFramesBeingDecoded", a2) || CFEqual(@"MaxOutputPresentationTimeStampOfFramesBeingDecoded", a2) || CFEqual(@"UsingSandboxedVideoDecoder", a2) || CFEqual(@"SuggestedQualityOfServiceTiers", a2))
        {
          emitter = fig_log_get_emitter();
          v5 = v3;
          v6 = 4294954395;
          v7 = 4055;
          goto LABEL_3;
        }

        return 0;
      }

      if (*(v14 + 112))
      {
        if (!a3)
        {
          v15 = 0;
          *(v14 + 120) = 0x7FFFFFFF;
          return v15;
        }

        v22 = CFNumberGetTypeID();
        if (v22 != CFGetTypeID(a3))
        {
          emitter = fig_log_get_emitter();
          v5 = v3;
          v6 = 4294954394;
          v7 = 4030;
          goto LABEL_3;
        }

        CFNumberGetValue(a3, kCFNumberIntType, (v14 + 120));
        return 0;
      }
    }

LABEL_48:
    v15 = 4294954396;
LABEL_49:
    if (vtDecompressionSessionIsPropertySupportedByVideoDecoder(a1, a2))
    {
      v23 = *(v14 + 8);
      v24 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v24)
      {
        return v24(v23, a2, a3);
      }

      return 4294954514;
    }

    return v15;
  }

  if (v13)
  {
    v15 = vtDecompressionSubDuctSetProperty(v13, a2, a3, &v28);
    if (!v28)
    {
      return v15;
    }

    goto LABEL_49;
  }

  v17 = *(v14 + 8);
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v18)
  {
    return 4294954514;
  }

  return v18(v17, a2, a3);
}

void VTDecompressionSessionGetMinOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X2>)
{
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-DS >>>>", 4093, v3);
    goto LABEL_5;
  }

  if (*(a1 + 16))
  {
    v5 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954393, "<<<< VT-DS >>>>", 4098, v3);
LABEL_5:
    v7 = MEMORY[0x1E6960C70];
    *a2 = *MEMORY[0x1E6960C70];
    a2[2] = *(v7 + 16);
    return;
  }

  if (*(a1 + 24))
  {
    v8 = *(a1 + 24);

    VTDecompressionSessionRemoteBridge_GetMinOutputPresentationTimeStampOfFramesBeingDecoded(v8, a2, a3);
  }

  else
  {
    v9 = *(a1 + 32);

    vtDecompressionDuctGetMinOutputPresentationTimeStampOfFramesBeingDecoded(v9, a2);
  }
}

uint64_t vtDecompressionSubDuctCopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  if (CFEqual(@"PixelBufferPool", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
    FigSimpleMutexUnlock();
    PixelBufferAttributes = CVPixelBufferPoolRetain(*(a1 + 104));
LABEL_18:
    *a4 = PixelBufferAttributes;
    return 0;
  }

  if (CFEqual(@"OutputPoolRequestedMinimumBufferCount", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    v11 = *(a1 + 80);
    v10 = (a1 + 80);
    if (!v11)
    {
      return 0;
    }

    v12 = *MEMORY[0x1E695E480];
    v13 = kCFNumberSInt32Type;
    p_Count = v10;
    goto LABEL_8;
  }

  if (CFEqual(@"PoolPixelBufferAttributesSeed", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
    FigSimpleMutexUnlock();
    v12 = *MEMORY[0x1E695E480];
    p_Count = (a1 + 88);
    goto LABEL_12;
  }

  if (CFEqual(@"PoolPixelBufferAttributes", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
    FigSimpleMutexUnlock();
    PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(*(a1 + 104));
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

LABEL_38:
    PixelBufferAttributes = CFRetain(PixelBufferAttributes);
    goto LABEL_18;
  }

  if (CFEqual(@"PixelBufferPoolIsShared", a2))
  {
    *a4 = 0;
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
    FigSimpleMutexUnlock();
    v16 = MEMORY[0x1E695E4D0];
    if (*(a1 + 104) != *(a1 + 96))
    {
      v16 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_37;
  }

  if (CFEqual(@"PixelTransferProperties", a2))
  {
    *a4 = 0;
    if (!a1 || !*(a1 + 136))
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 144);
    goto LABEL_38;
  }

  if (CFEqual(@"ClientPID", a2))
  {
    if (!a1)
    {
      return 0;
    }

    v12 = *MEMORY[0x1E695E480];
    p_Count = (a1 + 248);
    v13 = kCFNumberSInt32Type;
    goto LABEL_8;
  }

  if (CFEqual(@"ThrottleForBackground", a2))
  {
    if (!a1)
    {
      return 0;
    }

    v16 = MEMORY[0x1E695E4D0];
    v17 = *(a1 + 264);
    goto LABEL_34;
  }

  if (CFEqual(@"MaxAgeForOutputPixelBufferPool", a2))
  {
    if (!a1)
    {
      return 0;
    }

    FigSimpleMutexLock();
    CVPixelBufferPoolGetMaxBufferAge();
    Count = v19;
    FigSimpleMutexUnlock();
    v12 = *MEMORY[0x1E695E480];
    p_Count = &Count;
    v13 = kCFNumberDoubleType;
    goto LABEL_8;
  }

  if (CFEqual(@"ColorPrimaries", a2))
  {
    if (!a1)
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 208);
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (CFEqual(@"TransferFunction", a2))
  {
    if (!a1)
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 216);
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (CFEqual(@"YCbCrMatrix", a2))
  {
    if (!a1)
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 224);
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (CFEqual(@"ICCProfile", a2))
  {
    if (!a1)
    {
      return 0;
    }

    PixelBufferAttributes = *(a1 + 232);
    if (!PixelBufferAttributes)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (CFEqual(@"RealTime", a2))
  {
    if (!a1)
    {
      return 0;
    }

    v16 = MEMORY[0x1E695E4C0];
    v17 = *(a1 + 265);
    v18 = MEMORY[0x1E695E4D0];
    goto LABEL_35;
  }

  if (a1)
  {
    v20 = *(a1 + 8);
    if (v20)
    {

      return VTVideoEncoderCopyProperty(v20, a2, a3, a4);
    }

    if (CFEqual(@"GeneratePerFrameHDRDisplayMetadata", a2))
    {
      v16 = MEMORY[0x1E695E4D0];
      v17 = *(a1 + 280);
LABEL_34:
      v18 = MEMORY[0x1E695E4C0];
LABEL_35:
      if (!v17)
      {
        v16 = v18;
      }

LABEL_37:
      PixelBufferAttributes = *v16;
      goto LABEL_38;
    }

    if (CFEqual(@"NumberOfFramesInDecoder", a2))
    {
      FigSimpleMutexLock();
      Count = FigCFDictionaryGetCount();
      FigSimpleMutexUnlock();
      v12 = *MEMORY[0x1E695E480];
      p_Count = &Count;
LABEL_12:
      v13 = kCFNumberIntType;
LABEL_8:
      PixelBufferAttributes = CFNumberCreate(v12, v13, p_Count);
      goto LABEL_18;
    }

    if (CFEqual(@"MinFrameIDOfFramesInDecoder", a2))
    {
      FigSimpleMutexLock();
      v21 = FigCFDictionaryGetCount();
      if (v21 >= 1)
      {
        v22 = v21;
        v23 = malloc_type_calloc(v21, 8uLL, 0x80040B8603338uLL);
        CFDictionaryGetKeysAndValues(*(a1 + 120), v23, 0);
        v24 = 0;
        for (i = 0; i != v22; ++i)
        {
          if (v24 >= v23[i])
          {
            v26 = v23[i];
          }

          else
          {
            v26 = v24;
          }

          if (i)
          {
            v24 = v26;
          }

          else
          {
            v24 = *v23;
          }
        }

LABEL_92:
        free(v23);
        goto LABEL_96;
      }

      goto LABEL_96;
    }

    if (CFEqual(@"MaxFrameIDOfFramesInDecoder", a2))
    {
      FigSimpleMutexLock();
      v27 = FigCFDictionaryGetCount();
      if (v27 >= 1)
      {
        v28 = v27;
        v23 = malloc_type_calloc(v27, 8uLL, 0x80040B8603338uLL);
        CFDictionaryGetKeysAndValues(*(a1 + 120), v23, 0);
        v29 = 0;
        for (j = 0; j != v28; ++j)
        {
          if (v29 <= v23[j])
          {
            v29 = v23[j];
          }
        }

        goto LABEL_92;
      }

LABEL_96:
      FigSimpleMutexUnlock();
      PixelBufferAttributes = FigCFNumberCreateUInt64();
      goto LABEL_18;
    }
  }

  else if (CFEqual(@"GeneratePerFrameHDRDisplayMetadata", a2) || CFEqual(@"NumberOfFramesInDecoder", a2) || CFEqual(@"MinFrameIDOfFramesInDecoder", a2) || CFEqual(@"MaxFrameIDOfFramesInDecoder", a2))
  {
    return 0;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954396, "<<<< VT-DS >>>>", 4304, v4);
}

uint64_t vtDecompressionDuctGetMaxOutputPresentationTimeStampOfFramesBeingDecoded@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C80];
  *a2 = *MEMORY[0x1E6960C80];
  a2[2] = *(v4 + 16);
  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  if (v5)
  {
    CFDictionaryApplyFunction(v5, vtDuctFrameTrackingInfoFindMaxPTS, a2);
  }

  return FigSimpleMutexUnlock();
}

void vtCreateSuggestedQualityOfServiceTiers()
{
  values[6] = *MEMORY[0x1E69E9840];
  values[0] = vtCreateQualityOfServiceTier(@"AllFrames", 1.0);
  values[1] = @"TemporalLevelLimit";
  values[2] = vtCreateQualityOfServiceTier(@"NonDroppableFrames", 1.0);
  values[3] = vtCreateQualityOfServiceTier(@"IFrames", 1.0);
  values[4] = vtCreateQualityOfServiceTier(@"KeyFrames", 1.0);
  values[5] = vtCreateQualityOfServiceTier(@"KeyFrames", 0.5);
  sVTVideoDecoderSuggestedQualityOfServiceTiers = CFArrayCreate(*MEMORY[0x1E695E480], values, 6, MEMORY[0x1E695E9C0]);
  if (!sVTVideoDecoderSuggestedQualityOfServiceTiers)
  {
    vtCreateSuggestedQualityOfServiceTiers_cold_1();
  }

  for (i = 0; i != 6; ++i)
  {
    v1 = values[i];
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

uint64_t VTDecompressionSessionSetProperties(uint64_t a1, const __CFDictionary *a2)
{
  v19 = a1;
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VT-DS >>>>", 4547, v2);
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    v20 = 0;
    if (!a2)
    {
      return v20;
    }

    v8 = *(a1 + 32);
    context = 0u;
    v22 = 0u;
    v9 = vtDecompressionSessionCopyPropertiesHandledByVideoToolbox(&context);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v13 = *(*(a1 + 32) + 8);
      v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (!v14 || ((v15 = v14(v13, &context + 8), v15 != -12782) ? (v16 = v15 == 0) : (v16 = 1), v16))
      {
        CFDictionaryApplyFunction(a2, vtDecompressionSessionAddPropertyToPartition, &context);
        v10 = 0;
        v12 = *(&v22 + 1);
        v11 = v22;
        goto LABEL_20;
      }

      v10 = v15;
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, context);
    }

    v11 = 0;
    v12 = 0;
LABEL_20:
    if (context)
    {
      CFRelease(context);
    }

    if (*(&context + 1))
    {
      CFRelease(*(&context + 1));
    }

    LODWORD(v20) = v10;
    if (!v10)
    {
      if (v11)
      {
        CFDictionaryApplyFunction(v11, vtDecompressionSessionSetOneProperty, &v19);
      }

      if (v12)
      {
        v17 = *(v8 + 8);
        v18 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v18 || (LODWORD(v20) = v18(v17, v12), v20 == -12782))
        {
          LODWORD(v20) = 0;
          CFDictionaryApplyFunction(v12, vtDecompressionSessionSetOneProperty, &v19);
        }
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    return v20;
  }

  return VTDecompressionSessionRemoteBridge_SetProperties(v7, a2);
}

uint64_t vtDecompressionSessionSetOneProperty(const void *a1, const void *a2, uint64_t a3)
{
  result = VTDecompressionSessionSetProperty(*a3, a1, a2);
  if (!*(a3 + 8))
  {
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t VTDecompressionSessionCopySerializableProperties(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  *a3 = 0;
  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VT-DS >>>>", 4604, v3);
  }

  else if (*(a1 + 24))
  {
    v8 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_CopySerializableProperties(v8, a2, a3);
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (!v10)
    {
      return 0;
    }

    result = v10(v9, a2, a3);
    if (result == -12782)
    {
      return 0;
    }
  }

  return result;
}

OSStatus VTDecompressionSessionCopyBlackPixelBuffer(VTDecompressionSessionRef session, CVPixelBufferRef *pixelBufferOut)
{
  pixelBufferOuta = 0;
  cf = 0;
  if (pixelBufferOut)
  {
    v4 = *(session + 3);
    if (v4)
    {

      return VTDecompressionSessionRemoteBridge_CopyBlackPixelBuffer(v4, pixelBufferOut);
    }

    v7 = *MEMORY[0x1E695E480];
    v8 = VTDecompressionSessionCopyProperty(session, @"PixelBufferPool", *MEMORY[0x1E695E480], &cf);
    if (v8)
    {
LABEL_36:
      v21 = v8;
LABEL_31:
      if (cf)
      {
        CFRelease(cf);
      }

      if (pixelBufferOuta)
      {
        CFRelease(pixelBufferOuta);
      }

      return v21;
    }

    v10 = (session + 136);
    v9 = *(session + 17);
    if (!v9)
    {
      v11 = cf;
      v24 = 0;
      if (!VTAvoidIOSurfaceBackings() && (PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v11), CFDictionaryGetValue(PixelBufferAttributes, *MEMORY[0x1E69660D8])) && (FigCFDictionaryGetIntIfPresent(), v24))
      {
        v9 = *v10;
        if (!*v10)
        {
          MutableCopy = FigCFDictionaryCreateMutableCopy();
          if (!MutableCopy)
          {
            v21 = -12904;
            goto LABEL_31;
          }

          v14 = MutableCopy;
          FigCFDictionarySetInt64();
          FigCFDictionarySetInt64();
          IOSurfacePropertiesDictionary = FigCreateIOSurfacePropertiesDictionary();
          if (IOSurfacePropertiesDictionary)
          {
            v16 = IOSurfacePropertiesDictionary;
            FigCFDictionarySetValue();
            CFRelease(v16);
            v17 = CVPixelBufferPoolCreate(v7, 0, v14, session + 17);
            if (!v17)
            {
              CFRelease(v14);
              v9 = *v10;
              goto LABEL_23;
            }

            v21 = v17;
          }

          else
          {
            v21 = -12904;
          }

          CFRelease(v14);
          goto LABEL_31;
        }
      }

      else
      {
        if (v11)
        {
          v9 = CFRetain(v11);
        }

        else
        {
          v9 = 0;
        }

        *v10 = v9;
      }
    }

LABEL_23:
    v8 = CVPixelBufferPoolCreatePixelBuffer(v7, v9, &pixelBufferOuta);
    if (!v8)
    {
      v8 = VTFillPixelBufferWithBlack(pixelBufferOuta);
      if (!v8)
      {
        v18 = *(session + 4);
        FigSimpleMutexLock();
        v19 = *(v18 + 88);
        if (v19)
        {
          v20 = CFRetain(v19);
        }

        else
        {
          v20 = 0;
        }

        FigSimpleMutexUnlock();
        vtTransferImageBufferAttachmentsFromVideoFormatDescription(v20, pixelBufferOuta);
        *pixelBufferOut = pixelBufferOuta;
        pixelBufferOuta = 0;
        if (v20)
        {
          CFRelease(v20);
        }

        v21 = 0;
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-DS >>>>", 5264);
}

void vtTransferImageBufferAttachmentsFromVideoFormatDescription(const opaqueCMFormatDescription *a1, __CVBuffer *a2)
{
  v108 = *MEMORY[0x1E69E9840];
  Extensions = CMFormatDescriptionGetExtensions(a1);
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = Mutable;
  if (!Extensions || !Mutable)
  {
    goto LABEL_106;
  }

  v95 = v5;
  Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  v10 = *MEMORY[0x1E6965D88];
  v89 = *MEMORY[0x1E6965F98];
  key = *MEMORY[0x1E6965F30];
  v88 = *MEMORY[0x1E6965E80];
  vtCopyAttachments(Extensions, a2, v7, v89, *MEMORY[0x1E6965E80], v11, v12, v13, v89);
  width = Dimensions.width;
  if (Dimensions.width != CVPixelBufferGetWidth(a2) || CVPixelBufferGetHeight(a2) != *&Dimensions >> 32)
  {
    v91 = v10;
    v27 = HIDWORD(*&Dimensions);
    v28 = *MEMORY[0x1E6965D70];
    v93 = MediaSubType;
    v92 = HIDWORD(*&Dimensions);
    if (vtCVBufferAttachmentEmpty(a2, *MEMORY[0x1E6965D70]))
    {
      Value = CFDictionaryGetValue(Extensions, v28);
      if (Value)
      {
        v30 = Value;
        v87 = Dimensions;
        v31 = CVPixelBufferGetWidth(a2) / Dimensions.width;
        Height = CVPixelBufferGetHeight(a2);
        v33 = *MEMORY[0x1E6965D60];
        valuePtr = *MEMORY[0x1E6965D80];
        v105 = v33;
        v34 = *MEMORY[0x1E6965D78];
        v35 = Height / Dimensions.height;
        v106 = *MEMORY[0x1E6965D68];
        v107 = v34;
        ScaledCleanApertureValue = vtCreateScaledCleanApertureValue(v30, valuePtr, v31);
        values = ScaledCleanApertureValue;
        v37 = vtCreateScaledCleanApertureValue(v30, v33, v35);
        v101 = v37;
        v38 = vtCreateScaledCleanApertureValue(v30, v106, v31);
        v102 = v38;
        v39 = vtCreateScaledCleanApertureValue(v30, v34, v35);
        v40 = 0;
        v103 = v39;
        if (ScaledCleanApertureValue && v37)
        {
          LODWORD(v27) = v92;
          if (v38)
          {
            MediaSubType = v93;
            if (v39)
            {
              v40 = CFDictionaryCreate(v95, &valuePtr, &values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              ScaledCleanApertureValue = values;
            }
          }

          else
          {
            MediaSubType = v93;
          }
        }

        else
        {
          MediaSubType = v93;
          LODWORD(v27) = v92;
        }

        if (ScaledCleanApertureValue)
        {
          CFRelease(ScaledCleanApertureValue);
        }

        if (v101)
        {
          CFRelease(v101);
        }

        Dimensions = v87;
        if (v102)
        {
          CFRelease(v102);
        }

        if (v103)
        {
          CFRelease(v103);
        }

        if (v40)
        {
          CVBufferSetAttachment(a2, v28, v40, kCVAttachmentMode_ShouldPropagate);
          CFRelease(v40);
        }
      }
    }

    v41 = *MEMORY[0x1E6965EF8];
    if (vtCVBufferAttachmentEmpty(a2, *MEMORY[0x1E6965EF8]))
    {
      v96 = 1;
      v97 = 1;
      v42 = Dimensions;
      v43 = CVPixelBufferGetWidth(a2) * (*&Dimensions >> 32);
      v44 = CVPixelBufferGetHeight(a2) * width;
      v45 = CFDictionaryGetValue(Extensions, v41);
      v46 = MEMORY[0x1E6965EF0];
      v47 = MEMORY[0x1E6965F00];
      if (v45)
      {
        v48 = v45;
        v49 = CFDictionaryGetValue(v45, *MEMORY[0x1E6965EF0]);
        CFNumberGetValue(v49, kCFNumberSInt64Type, &v97);
        v50 = CFDictionaryGetValue(v48, *v47);
        CFNumberGetValue(v50, kCFNumberSInt64Type, &v96);
      }

      if (v43 != v44)
      {
        v51 = *v47;
        valuePtr = *v46;
        v105 = v51;
        v52 = v97 * v44;
        v53 = v96 * v43;
        if (((v97 * v44) & 0x8000000000000000) == 0)
        {
          v54 = v97 * v44;
        }

        else
        {
          v54 = -v52;
        }

        if (v53 >= 0)
        {
          v55 = v96 * v43;
        }

        else
        {
          v55 = -v53;
        }

        if (v54 <= v55)
        {
          v56 = v55;
        }

        else
        {
          v56 = v54;
        }

        if (v54 >= v55)
        {
          v54 = v55;
        }

        if (v54)
        {
          if (v54 < 1)
          {
            v57 = v56;
          }

          else
          {
            do
            {
              v57 = v54;
              v54 = v56 % v54;
              v56 = v57;
            }

            while (v54);
          }
        }

        else if (v56 <= 1)
        {
          v57 = 1;
        }

        else
        {
          v57 = v56;
        }

        v58 = v53 / v57;
        v98 = v58;
        v99 = v52 / v57;
        if (v52 / v57 && v58)
        {
          v59 = CFNumberCreate(v95, kCFNumberSInt64Type, &v99);
          values = v59;
          v60 = CFNumberCreate(v95, kCFNumberSInt64Type, &v98);
          v61 = 0;
          v101 = v60;
          if (v59 && v60)
          {
            v61 = CFDictionaryCreate(v95, &valuePtr, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            v59 = values;
          }

          if (v59)
          {
            CFRelease(v59);
          }

          if (v101)
          {
            CFRelease(v101);
          }

          if (v61)
          {
            CVBufferSetAttachment(a2, v41, v61, kCVAttachmentMode_ShouldPropagate);
            CFRelease(v61);
          }
        }
      }

      Dimensions = v42;
      MediaSubType = v93;
      LODWORD(v27) = v92;
    }

    v62 = *MEMORY[0x1E6965E50];
    if (vtCVBufferAttachmentEmpty(a2, *MEMORY[0x1E6965E50]))
    {
      v67 = (v27 + (v27 >> 31)) >> 1;
      if (CVPixelBufferGetHeight(a2) <= v27 / 2)
      {
        LOBYTE(valuePtr) = 1;
        v72 = CFNumberCreate(v95, kCFNumberSInt8Type, &valuePtr);
        CVBufferSetAttachment(a2, v62, v72, kCVAttachmentMode_ShouldPropagate);
        v10 = v91;
        if (v72)
        {
          CFRelease(v72);
        }

        goto LABEL_79;
      }

      v68 = CFDictionaryGetValue(Extensions, v62);
      v69 = *MEMORY[0x1E6965E58];
      v70 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965E58]);
      if (v68)
      {
        v71 = v70;
        if (v70)
        {
          CVBufferSetAttachment(a2, v62, v68, kCVAttachmentMode_ShouldPropagate);
          CVBufferSetAttachment(a2, v69, v71, kCVAttachmentMode_ShouldPropagate);
        }
      }
    }

    else
    {
      v67 = (v27 + (v27 >> 31)) >> 1;
    }

    v10 = v91;
LABEL_79:
    vtCopyAttachments(Extensions, a2, v7, *MEMORY[0x1E6965D00], v63, v64, v65, v66, *MEMORY[0x1E6965D00]);
    if (CVPixelBufferGetHeight(a2) > v67)
    {
      vtCopyAttachments(Extensions, a2, v7, *MEMORY[0x1E6965CF0], v73, v74, v75, v76, *MEMORY[0x1E6965CF0]);
    }

    goto LABEL_81;
  }

  LODWORD(valuePtr) = 1;
  v18 = *MEMORY[0x1E6965D70];
  v19 = *MEMORY[0x1E6965E50];
  vtCopyAttachments(Extensions, a2, v7, *MEMORY[0x1E6965D70], v14, v15, v16, v17, *MEMORY[0x1E6965D70]);
  v20 = CVBufferCopyAttachment(a2, v19, 0);
  v21 = v20;
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberIntType, &valuePtr);
    if (valuePtr == 2)
    {
      vtCopyAttachments(Extensions, a2, v7, *MEMORY[0x1E6965E58], v22, v23, v24, v25, *MEMORY[0x1E6965E58]);
    }
  }

  if (MediaSubType != 1752589105 && MediaSubType != 1635148593)
  {
LABEL_12:
    if (!v21)
    {
      goto LABEL_81;
    }

    goto LABEL_13;
  }

  v26 = CFDictionaryGetValue(Extensions, v18);
  if (v26)
  {
    CVBufferSetAttachment(a2, v18, v26, kCVAttachmentMode_ShouldPropagate);
    goto LABEL_12;
  }

  CVBufferRemoveAttachment(a2, v18);
  if (v21)
  {
LABEL_13:
    CFRelease(v21);
  }

LABEL_81:
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  if (PixelFormatType != 1751410032 && PixelFormatType != 1751411059 && vtCVBufferAttachmentEmpty(a2, *MEMORY[0x1E6965CE8]))
  {
    if (MediaSubType == 1634759278 || MediaSubType == 1634759272)
    {
      CFDictionarySetValue(v7, key, *MEMORY[0x1E6965F60]);
    }

    else
    {
      v78 = MediaSubType;
      v79 = CVBufferCopyAttachment(a2, v10, 0);
      v80 = v10;
      v81 = CVBufferCopyAttachment(a2, key, 0);
      v82 = CVBufferCopyAttachment(a2, v89, 0);
      v83 = vtCVBufferAttachmentEmpty(a2, v88);
      if (!v79)
      {
        v84 = CFDictionaryGetValue(v7, v80);
        if (v84)
        {
          v79 = CFRetain(v84);
        }

        else
        {
          v79 = 0;
        }
      }

      if (!v81)
      {
        v85 = CFDictionaryGetValue(v7, key);
        if (v85)
        {
          v81 = CFRetain(v85);
        }

        else
        {
          v81 = 0;
        }
      }

      if (!v82)
      {
        v86 = CFDictionaryGetValue(v7, v89);
        if (v86)
        {
          v82 = CFRetain(v86);
        }

        else
        {
          v82 = 0;
        }
      }

      vtGuessMissingColorSpaceAttachmentsGuts(v78, width, *&Dimensions >> 32, v79, v81, v82, !v83, v7);
      if (v79)
      {
        CFRelease(v79);
      }

      if (v81)
      {
        CFRelease(v81);
      }

      if (v82)
      {
        CFRelease(v82);
      }
    }
  }

  CVBufferSetAttachments(a2, v7, kCVAttachmentMode_ShouldPropagate);
LABEL_106:
  if (v7)
  {
    CFRelease(v7);
  }
}

Boolean VTIsHardwareDecodeSupported(CMVideoCodecType codecType)
{
  v1 = *&codecType;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(Mutable, @"RequireHardwareAcceleratedVideoDecoder", *MEMORY[0x1E695E4D0]);
  if (v1 == 1987063865)
  {
    if (FigServer_IsServerProcess() || (v8 = SecTaskCreateFromSelf(v2)) != 0 && (v9 = v8, v10 = VTIsSecTaskEntitledForVP9Decode(v8), CFRelease(v9), v10))
    {
      CFDictionarySetValue(Mutable, @"AllowAlternateDecoderSelection", v4);
    }
  }

  VideoDecoderInstance = VTSelectAndCreateVideoDecoderInstance(v1, v2, Mutable, 0);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return VideoDecoderInstance == -12913 || VideoDecoderInstance == 0;
}

uint64_t VTDecompressionSessionGetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v14 = *MEMORY[0x1E6960C88];
  v15 = *(MEMORY[0x1E6960C88] + 16);
  v16 = *MEMORY[0x1E6960C80];
  v17 = *(MEMORY[0x1E6960C80] + 16);
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 4294954394;
    v8 = 5786;
    goto LABEL_5;
  }

  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();
    v6 = v3;
    v7 = 4294954393;
    v8 = 5790;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v7, "<<<< VT-DS >>>>", v8, v6);
  }

  v12 = *(a1 + 24);
  if (v12)
  {

    return VTDecompressionSessionRemoteBridge_GetMinAndMaxOutputPresentationTimeStampOfFramesBeingDecoded(v12, a2, a3);
  }

  else
  {
    FigSimpleMutexLock();
    v13 = *(*(a1 + 32) + 56);
    if (v13)
    {
      CFDictionaryApplyFunction(v13, vtDuctFrameTrackingInfoFindMinAndMaxPTS, &v14);
    }

    FigSimpleMutexUnlock();
    if (a2)
    {
      *&a2->value = v14;
      a2->epoch = v15;
    }

    if (a3)
    {
      *&a3->value = v16;
      a3->epoch = v17;
    }

    return 0;
  }
}

double vtDuctFrameTrackingInfoFindMinAndMaxPTS(uint64_t a1, uint64_t a2, CMTime *a3)
{
  time1 = *a3;
  v6 = *(a2 + 24);
  CMTimeMinimum(&v8, &time1, &v6);
  *a3 = v8;
  time1 = a3[1];
  v6 = *(a2 + 24);
  CMTimeMaximum(&v8, &time1, &v6);
  result = *&v8.value;
  a3[1] = v8;
  return result;
}

uint64_t VTDecompressionSessionRemotePreferHighPriorityQueueForAllDecompression(uint64_t a1, uint64_t a2)
{
  v2 = VTShouldRunVideoDecodersInProcess(a1, a2);
  if (v2)
  {
    return 0;
  }

  return VTDecompressionSessionRemoteBridge_PreferHighPriorityQueueForAllDecompression(v2, v3);
}

uint64_t VTDecompressionSessionFlushPixelBufferPool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954394;
    v7 = 5845;
    goto LABEL_5;
  }

  if (*(a1 + 16))
  {
    emitter = fig_log_get_emitter();
    v5 = v3;
    v6 = 4294954393;
    v7 = 5849;
LABEL_5:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< VT-DS >>>>", v7, v5);
  }

  if (*(a1 + 24))
  {
    v9 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_FlushPixelBufferPool(v9, a2, a3);
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10 && *(v10 + 104))
    {
      FigSimpleMutexLock();
      CVPixelBufferPoolFlush(*(v10 + 104), 1uLL);
      FigSimpleMutexUnlock();
    }

    return 0;
  }
}

uint64_t VTDecompressionSessionSetDecoderSessionAsPixelBufferSource(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      v3 = 0;
      *(v2 + 48) = a2;
    }

    else
    {
      v4 = *(a1 + 40);
      v3 = 0;
      if (v4)
      {
        *(v4 + 56) = a2;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    v3 = 4294954394;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  }

  return v3;
}

uint64_t vtDecoderSessionGetSubDuctPixelBufferPool(uint64_t *a1, int a2)
{
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-DS >>>>", 5938, v2);
    return 0;
  }

  if (a1[3])
  {
    return 0;
  }

  v3 = *a1;
  if (!*a1)
  {
    v4 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, 4294954393, "<<<< VT-DS >>>>", 5953, v2);
    return 0;
  }

  if (a2)
  {
    FigSimpleMutexLock();
    v7 = vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(v3);
    FigSimpleMutexUnlock();
  }

  else
  {
    v7 = vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(*a1);
  }

  if (v7)
  {
    return 0;
  }

  return *(v3 + 96);
}

uint64_t VTDecoderSessionCreatePixelBufferWithOptions(uint64_t *a1, uint64_t a2, uint64_t a3, CVPixelBufferRef *a4)
{
  v6 = a2;
  v8 = a1[3];
  if (!v8)
  {
    v30 = 0;
    pixelBufferOut = 0;
    v10 = *a1;
    if (!*a1)
    {
      fig_log_get_emitter();
      v15 = 4294954393;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v26, v27, v28);
      return v15;
    }

    v11 = a1[4];
    if (!v11)
    {
      v11 = a1;
      goto LABEL_18;
    }

    FigSimpleMutexLock();
    v12 = *(*a1 + 120);
    if (v12)
    {
      Value = CFDictionaryGetValue(v12, v6);
      if (Value)
      {
        v14 = Value[2];
LABEL_15:
        if (v14)
        {
          v6 = v14;
        }

        FigSimpleMutexUnlock();
        v10 = *v11;
LABEL_18:
        FigSimpleMutexLock();
        FigCFDictionaryGetBooleanIfPresent();
        if (*(v10 + 128))
        {
          FigCFDictionaryGetInt32IfPresent();
          v18 = *MEMORY[0x1E695E480];
          v19 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%p_%d", v6, 0);
          v20 = *(v10 + 128);
          if (v20)
          {
            v21 = CFDictionaryGetValue(v20, v19);
            pixelBufferOut = v21;
            if (v21)
            {
              v22 = v21;
              CFRetain(v21);
              v15 = 0;
              goto LABEL_31;
            }
          }
        }

        else
        {
          v19 = 0;
          v18 = *MEMORY[0x1E695E480];
        }

        SubDuctPixelBufferPool = vtDecoderSessionGetSubDuctPixelBufferPool(v11, 0);
        v24 = CVPixelBufferPoolCreatePixelBuffer(v18, SubDuctPixelBufferPool, &pixelBufferOut);
        v15 = v24;
        v22 = pixelBufferOut;
        if (v30 && !v24 && pixelBufferOut)
        {
          Mutable = *(v10 + 128);
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(v18, 10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            *(v10 + 128) = Mutable;
            if (!Mutable)
            {
              VTDecoderSessionCreatePixelBufferWithOptions_cold_1(&v31);
              v15 = v31;
              goto LABEL_32;
            }

            v22 = pixelBufferOut;
          }

          CFDictionarySetValue(Mutable, v19, v22);
          v15 = 0;
          v22 = pixelBufferOut;
        }

LABEL_31:
        *a4 = v22;
        pixelBufferOut = 0;
LABEL_32:
        FigSimpleMutexUnlock();
        if (v19)
        {
          CFRelease(v19);
        }

        if (pixelBufferOut)
        {
          CFRelease(pixelBufferOut);
        }

        return v15;
      }

      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-DS >>>>", 5677, v4);
    }

    else
    {
      v16 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v16, 4294954394, "<<<< VT-DS >>>>", 5672, v4);
    }

    v14 = 0;
    goto LABEL_15;
  }

  return VTParavirtualizationHostDecoderSessionCreatePixelBufferWithOptions(v8, a2, a3, a4);
}

uint64_t VTDecoderSessionForgetPixelBufferForFrame(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*a1)
    {
      if (a3)
      {
        v5 = a1[4];
        if (!v5)
        {
          v5 = a1;
        }

        v6 = *v5;
        FigCFDictionaryGetInt32IfPresent();
        v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%p_%d", a2, 0);
        FigSimpleMutexLock();
        v8 = *(v6 + 128);
        if (v8)
        {
          v9 = v7 == 0;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          FigSimpleMutexUnlock();
          if (!v7)
          {
            return v7;
          }
        }

        else
        {
          CFDictionaryRemoveValue(v8, v7);
          FigSimpleMutexUnlock();
        }

        CFRelease(v7);
      }

      return 0;
    }

    else
    {
      emitter = fig_log_get_emitter();
      v7 = 4294954393;
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VT-DS >>>>", 6109, v3);
    }
  }

  else
  {
    v10 = fig_log_get_emitter();
    v7 = 4294954394;
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 4294954394, "<<<< VT-DS >>>>", 6105, v3);
  }

  return v7;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptions(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, const __CFDictionary *a4, uint64_t a5, char *a6)
{
  if (!a1)
  {
    VTDecompressionSessionDecodeFrameWithOptions_cold_4(&v8);
    return v8;
  }

  if (!a2)
  {
    VTDecompressionSessionDecodeFrameWithOptions_cold_3(&v8);
    return v8;
  }

  if (*(a1 + 16))
  {
    VTDecompressionSessionDecodeFrameWithOptions_cold_1(&v8);
    return v8;
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_DecodeFrame(v6, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 112) && !*(a1 + 96))
  {
    VTDecompressionSessionDecodeFrameWithOptions_cold_2(&v8);
    return v8;
  }

  return vtDecompressionSessionDecodeFrameCommon(a1, a2, a3, a4, 0, 0, a5, a6);
}

uint64_t vtDecompressionSessionDecodeFrameCommon(uint64_t a1, CMSampleBufferRef sbuf, uint64_t a3, const __CFDictionary *a4, uint64_t a5, CMTimeEpoch a6, CMTimeValue a7, const char *a8)
{
  if (!a1)
  {
    vtDecompressionSessionDecodeFrameCommon_cold_4(refcon);
    return LODWORD(refcon[0]);
  }

  if (*(a1 + 16))
  {
    vtDecompressionSessionDecodeFrameCommon_cold_1(refcon);
    return LODWORD(refcon[0]);
  }

  if (!sbuf)
  {
    vtDecompressionSessionDecodeFrameCommon_cold_3(refcon);
    return LODWORD(refcon[0]);
  }

  v34 = 0;
  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = &v34;
  }

  *v15 = 0;
  v16 = *(a1 + 32);
  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  if (NumSamples >= 1)
  {
    v18 = NumSamples;
    v30 = a5;
    v31 = a7;
    v32 = a6;
    CFRetain(a1);
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    v20 = *(v16 + 88);
    if (v20 == FormatDescription)
    {
LABEL_18:
      if (v18 == 1)
      {
        v25 = vtDecompressionDuctDecodeSingleFrame(v16, sbuf, a3, a4, v30, v32, v31, v15);
      }

      else
      {
        refcon[0] = v16;
        refcon[1] = a3;
        refcon[2] = a4;
        refcon[3] = v31;
        refcon[5] = v30;
        refcon[6] = v32;
        refcon[4] = v15;
        v25 = CMSampleBufferCallForEachSample(sbuf, vtDecompressionDuctDecodeSingleFrame_iterator, refcon);
      }

      goto LABEL_22;
    }

    if (FormatDescription)
    {
      v21 = *(a1 + 40);
      if (CFEqual(v20, FormatDescription))
      {
LABEL_15:
        vtDecompressionDuctSetVideoFormatDescription(v16, FormatDescription);
        if (v21)
        {
          v26 = *(v21 + 16);
          *(v21 + 16) = FormatDescription;
          CFRetain(FormatDescription);
          if (v26)
          {
            CFRelease(v26);
          }
        }

        goto LABEL_18;
      }

      v22 = *(v16 + 8);
      v23 = *(CMBaseObjectGetVTable() + 16);
      if (*v23 >= 2uLL)
      {
        v24 = v23[6];
        if (v24)
        {
          if (v24(v22, FormatDescription))
          {
            v25 = VTDecompressionSessionWaitForAsynchronousFrames(a1);
            if (v25)
            {
LABEL_22:
              v27 = v25;
LABEL_23:
              CFRelease(a1);
              return v27;
            }

            goto LABEL_15;
          }
        }
      }

      v29 = 5887;
    }

    else
    {
      v29 = 5884;
    }

    if (!vtDecompressionSessionDecodeFrameCommon_cold_2(v29, refcon))
    {
      v27 = LODWORD(refcon[0]);
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  return 4294954394;
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, const __CFDictionary *a4, char *a5, unint64_t a6)
{
  if (!a1)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_5(&v8);
    return v8;
  }

  if (!a2)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_4(&v8);
    return v8;
  }

  if (*(a1 + 16))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_1(&v8);
    return v8;
  }

  if (!a6)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_3(&v8);
    return v8;
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_DecodeFrameWithOutputHandler(v6, a2, a3, a4, a5, a6, 0);
  }

  if (*(a1 + 96))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndOutputHandler_cold_2(&v8);
    return v8;
  }

  return vtDecompressionSessionDecodeFrameCommon(a1, a2, a3, a4, a6, 0, 0, a5);
}

uint64_t VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler(uint64_t a1, opaqueCMSampleBuffer *a2, uint64_t a3, const __CFDictionary *a4, char *a5, unint64_t a6)
{
  if (!a1)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_6(&v8);
    return v8;
  }

  if (!a2)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_5(&v8);
    return v8;
  }

  if (*(a1 + 16))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_1(&v8);
    return v8;
  }

  if (!a6)
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_4(&v8);
    return v8;
  }

  if (*(a1 + 24))
  {
    v6 = *(a1 + 24);

    return VTDecompressionSessionRemoteBridge_DecodeFrameWithOutputHandler(v6, a2, a3, 0, a5, 0, a6);
  }

  if (*(a1 + 96))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_2(&v8);
    return v8;
  }

  if (*(a1 + 112))
  {
    VTDecompressionSessionDecodeFrameWithOptionsAndMultiImageCapableOutputHandler_cold_3(&v8);
    return v8;
  }

  return vtDecompressionSessionDecodeFrameCommon(a1, a2, a3, a4, 0, a6, 0, a5);
}

Boolean VTDecompressionSessionCanAcceptFormatDescription(VTDecompressionSessionRef session, CMFormatDescriptionRef newFormatDesc)
{
  LOBYTE(CanAcceptFormatDescription) = 0;
  if (!session || !newFormatDesc)
  {
    return CanAcceptFormatDescription;
  }

  if (*(session + 16))
  {
    goto LABEL_4;
  }

  v6 = *(session + 4);
  if (v6)
  {
    if (FigCFEqual())
    {
      LOBYTE(CanAcceptFormatDescription) = 1;
      return CanAcceptFormatDescription;
    }

    v7 = *(session + 3);
    if (!v7)
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions(*(v6 + 88));
      v9 = CMVideoFormatDescriptionGetDimensions(newFormatDesc);
      MediaSubType = CMFormatDescriptionGetMediaSubType(*(v6 + 88));
      LOBYTE(CanAcceptFormatDescription) = 0;
      if (MediaSubType == CMFormatDescriptionGetMediaSubType(newFormatDesc) && v9 == Dimensions)
      {
        CanAcceptFormatDescription = VTVideoDecoderCanAcceptFormatDescription(*(v6 + 8), newFormatDesc);
        if (CanAcceptFormatDescription)
        {
          if (FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(MediaSubType))
          {
            BitsPerComponentFromFormatDescription = vtDecompressionSessionGetBitsPerComponentFromFormatDescription(*(v6 + 88));
            if (BitsPerComponentFromFormatDescription != vtDecompressionSessionGetBitsPerComponentFromFormatDescription(newFormatDesc))
            {
              LOBYTE(CanAcceptFormatDescription) = 0;
            }
          }
        }
      }

      return CanAcceptFormatDescription;
    }
  }

  else
  {
    v7 = *(session + 3);
    if (!v7)
    {
LABEL_4:
      LOBYTE(CanAcceptFormatDescription) = 0;
      return CanAcceptFormatDescription;
    }
  }

  return VTDecompressionSessionRemoteBridge_CanAcceptFormatDescription(v7, newFormatDesc);
}

uint64_t VTVideoDecoderCanAcceptFormatDescription(uint64_t a1, uint64_t a2)
{
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 < 2uLL)
  {
    return 0;
  }

  v5 = v4[6];
  if (!v5)
  {
    return 0;
  }

  return v5(a1, a2);
}

uint64_t FigVideoCodecTypeIsHEVCFlavorOrDolbyVisionHEVCFlavor(int a1)
{
  result = 1;
  if (a1 <= 1752589104)
  {
    if (a1 > 1685481572)
    {
      if (a1 > 1718908527)
      {
        if (a1 == 1718908528)
        {
          return result;
        }

        v3 = 1751479857;
      }

      else
      {
        if (a1 == 1685481573)
        {
          return result;
        }

        v3 = 1718908520;
      }
    }

    else if (a1 > 1684895095)
    {
      if (a1 == 1684895096)
      {
        return result;
      }

      v3 = 1685481521;
    }

    else
    {
      if (a1 == 1667524657)
      {
        return result;
      }

      v3 = 1667790435;
    }

    goto LABEL_26;
  }

  if (a1 <= 1902405732)
  {
    if (a1 <= 1869117026)
    {
      if (a1 == 1752589105)
      {
        return result;
      }

      v3 = 1836415073;
      goto LABEL_26;
    }

    if (a1 == 1869117027)
    {
      return result;
    }

    v4 = 26673;
    goto LABEL_25;
  }

  if (a1 <= 1902667125)
  {
    if (a1 == 1902405733)
    {
      return result;
    }

    v4 = 28024;
LABEL_25:
    v3 = v4 | 0x71640000;
LABEL_26:
    if (a1 != v3)
    {
      return 0;
    }

    return result;
  }

  if (a1 != 1902667126 && a1 != 1902671459)
  {
    v3 = 1902998904;
    goto LABEL_26;
  }

  return result;
}

uint64_t vtDecompressionSessionGetBitsPerComponentFromFormatDescription(const opaqueCMFormatDescription *a1)
{
  CMFormatDescriptionGetExtensions(a1);
  FigCFDictionaryGetIntIfPresent();
  return 0;
}

OSStatus VTDecompressionSessionFinishDelayedFrames(VTDecompressionSessionRef session)
{
  if (!session)
  {
    return -12902;
  }

  if (*(session + 16))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954393, "<<<< VT-DS >>>>", 6737);
  }

  else if (*(session + 3))
  {
    v3 = *(session + 3);

    return VTDecompressionSessionRemoteBridge_FinishDelayedFrames(v3);
  }

  else
  {
    v4 = *(*(session + 4) + 8);
    v5 = *(CMBaseObjectGetVTable() + 16);
    if (*v5 < 2uLL)
    {
      return 0;
    }

    v6 = v5[7];
    if (!v6)
    {
      return 0;
    }

    result = v6(v4);
    if (result == -12782)
    {
      return 0;
    }
  }

  return result;
}

uint64_t VTVideoDecoderGetTypeID()
{
  MEMORY[0x193AE3010](&VTVideoDecoderGetClassID_sRegisterVTVideoDecoderTypeOnce, RegisterVTVideoDecoderType);

  return CMBaseClassGetCFTypeID();
}

uint64_t VTDecompressionSessionSetContentAnalyzer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5[5] = v2;
    v5[6] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __VTDecompressionSessionSetContentAnalyzer_block_invoke;
    v5[3] = &unk_1E72C7E78;
    v5[4] = a2;
    return VTDecompressionSessionSetContentAnalyzer2(a1, v5);
  }

  else
  {

    return VTDecompressionSessionSetContentAnalyzer2(a1, 0);
  }
}

uint64_t __VTDecompressionSessionAnalyzeAndInterruptFrame_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = **(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v3 + 16);
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  return v5(v3, v2, &v7, v1, v4 + 24);
}

uint64_t vtDecoderSessionEmitDecodedFrameCommon(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, __CVBuffer *a5, OpaqueCMTaggedBufferGroup *a6)
{
  v90 = 0;
  v91 = 0;
  if (!a1)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-DS >>>>", 7955, v6);
  }

  v12 = *a1;
  FigSimpleMutexLock();
  v13 = *(v12 + 120);
  v88 = a2;
  if (v13)
  {
    Value = CFDictionaryGetValue(v13, a2);
    if (Value)
    {
      v15 = *Value;
      v16 = *(Value + 1);
      if (v16)
      {
        v17 = CFRetain(v16);
      }

      else
      {
        v17 = 0;
      }

      CFDictionaryRemoveValue(*(v12 + 120), a2);
      v89 = 0;
      goto LABEL_14;
    }

    v22 = fig_log_get_emitter();
    v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954394, "<<<< VT-DS >>>>", 5700, v6);
  }

  else
  {
    v20 = fig_log_get_emitter();
    v21 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v20, 4294954394, "<<<< VT-DS >>>>", 5695, v6);
  }

  v89 = v21;
  v15 = 0;
  v17 = 0;
LABEL_14:
  v23 = v15 & 2 | a3;
  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = a5;
  }

  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = a6;
  }

  if (v24 | v25)
  {
    if (v24)
    {
      vtDecompressionSessionUpdateAttachmentsForEmittedImageBuffer(v12, v17, v24);
      vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon(v12, v24);
    }

    else if (v25)
    {
      Count = CMTaggedBufferGroupGetCount(v25);
      if (Count >= 1)
      {
        v33 = Count;
        for (i = 0; i != v33; ++i)
        {
          CVPixelBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (CVPixelBufferAtIndex)
          {
            vtDecompressionSessionUpdateAttachmentsForEmittedImageBuffer(v12, v17, CVPixelBufferAtIndex);
          }
        }
      }

      v36 = CMTaggedBufferGroupGetCount(v25);
      if (v36 >= 1)
      {
        v37 = v36;
        for (j = 0; j != v37; ++j)
        {
          v39 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
          if (v39)
          {
            vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon(v12, v39);
          }
        }
      }
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!(v24 | v25))
  {
    v29 = v15;
    FigSimpleMutexUnlock();
    v30 = 0;
    v31 = 0;
    v27 = 0;
    v28 = 0;
    if (!a3)
    {
      goto LABEL_73;
    }

    goto LABEL_80;
  }

  if (v24)
  {
    DestinationImageBufferForEmittedFrameIfNecessary = vtDecompressionSessionCreateDestinationImageBufferForEmittedFrameIfNecessary(v12, a4, v24, &v91);
LABEL_28:
    a3 = DestinationImageBufferForEmittedFrameIfNecessary;
    goto LABEL_29;
  }

  if (!v25)
  {
    fig_log_get_emitter();
    DestinationImageBufferForEmittedFrameIfNecessary = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v81, v82, allocator);
    goto LABEL_28;
  }

  v40 = CMTaggedBufferGroupGetCount(v25);
  cf = 0;
  if (v40 < 1)
  {
    a3 = 0;
    goto LABEL_29;
  }

  v41 = v40;
  v83 = v15;
  v42 = 0;
  v43 = 0;
  Mutable = 0;
  allocatora = *MEMORY[0x1E695E480];
  do
  {
    v45 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
    if (v45)
    {
      v46 = v45;
      v47 = vtDecompressionSessionCreateDestinationImageBufferForEmittedFrameIfNecessary(v12, a4, v45, &cf);
      if (v47)
      {
        goto LABEL_99;
      }

      if (!cf)
      {
        if (!v43)
        {
          goto LABEL_68;
        }

        v53 = v43;
        v52 = v46;
        goto LABEL_65;
      }

      if (!v43)
      {
        Mutable = CFArrayCreateMutable(allocatora, v41, MEMORY[0x1E695E9C0]);
        if (!Mutable)
        {
          vtDecoderSessionEmitDecodedFrameCommon_cold_2(&v93);
          v43 = 0;
LABEL_141:
          a3 = v93;
          goto LABEL_100;
        }

        for (k = 0; k != v41; ++k)
        {
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(v25, k);
          CFArrayAppendValue(Mutable, TagCollectionAtIndex);
        }

        v43 = CFArrayCreateMutable(allocatora, v41, MEMORY[0x1E695E9C0]);
        if (!v43)
        {
          vtDecoderSessionEmitDecodedFrameCommon_cold_1(&v93);
          goto LABEL_141;
        }

        if (v42)
        {
          for (m = 0; m != v42; ++m)
          {
            CMSampleBufferAtIndex = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
            if (!CMSampleBufferAtIndex)
            {
              CMSampleBufferAtIndex = FigTaggedBufferGroupGetCMSampleBufferAtIndex();
            }

            CFArrayAppendValue(v43, CMSampleBufferAtIndex);
          }
        }
      }

      v52 = cf;
    }

    else
    {
      if (!v43)
      {
        goto LABEL_66;
      }

      v52 = FigTaggedBufferGroupGetCMSampleBufferAtIndex();
    }

    v53 = v43;
LABEL_65:
    CFArrayAppendValue(v53, v52);
LABEL_66:
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

LABEL_68:
    ++v42;
  }

  while (v42 != v41);
  a3 = 0;
  if (Mutable && v43)
  {
    v47 = MEMORY[0x193AE2F70](allocatora, Mutable, v43, &v90);
LABEL_99:
    a3 = v47;
  }

LABEL_100:
  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v43)
  {
    CFRelease(v43);
  }

  v15 = v83;
LABEL_29:
  FigSimpleMutexUnlock();
  if (a3)
  {
    v27 = 0;
    v28 = 0;
    goto LABEL_80;
  }

  v29 = v15;
  v30 = v90;
  v31 = v91;
LABEL_73:
  if (!(v31 | v30))
  {
    a3 = 0;
    v27 = v25;
    v28 = v24;
LABEL_80:
    v54 = v12;
    v55 = v88;
    v56 = a3;
    v57 = a4;
    goto LABEL_81;
  }

  if (!v24 || !v31)
  {
    if (!v25 || !v30)
    {
      goto LABEL_82;
    }

    v58 = CMTaggedBufferGroupGetCount(v25);
    if (v58 < 1)
    {
LABEL_95:
      v57 = a4 | 4;
      v54 = v12;
      v55 = v88;
      v56 = 0;
      v28 = 0;
      v27 = v30;
    }

    else
    {
      v59 = v58;
      v60 = v29;
      v61 = 0;
      while (1)
      {
        v62 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
        v63 = FigTaggedBufferGroupGetCVPixelBufferAtIndex();
        if (v62)
        {
          if (v63)
          {
            v64 = vtDecompressionSubDuctTransferImage_Synchronously(v12, v60, v62, v63);
            if (v64)
            {
              break;
            }
          }
        }

        if (v59 == ++v61)
        {
          goto LABEL_95;
        }
      }

      v56 = v64;
      v54 = v12;
      v55 = v88;
      v57 = a4;
      v28 = 0;
      v27 = 0;
    }

LABEL_81:
    vtDecompressionSubDuctEmitTransferredFrame(v54, v55, v56, v57, v28, v27);
    goto LABEL_82;
  }

  if ((v29 & 1) == 0)
  {
    goto LABEL_78;
  }

  MEMORY[0x193AE3010](&vtGetEnableAsynchronousTransfer_sGetEnableAsynchronousTransferOnce, vtGetEnableAsynchronousTransferOnce);
  if (sGlobalEnableAsynchronousTransfer)
  {
    goto LABEL_78;
  }

  if (*(v12 + 152))
  {
    if (*(v12 + 160))
    {
      goto LABEL_145;
    }

    FigSimpleMutexLock();
    v65 = FigDispatchQueueCreateWithPriorityAndClientPID();
    *(v12 + 160) = v65;
    if (v65)
    {
      v66 = dispatch_group_create();
      *(v12 + 168) = v66;
      if (!v66)
      {
        v67 = *(v12 + 160);
        if (v67)
        {
          dispatch_release(v67);
          *(v12 + 160) = 0;
        }
      }
    }

    FigSimpleMutexUnlock();
    if (*(v12 + 160))
    {
LABEL_145:
      v68 = *(v12 + 168);
      if (v68)
      {
        dispatch_group_wait(v68, 0xFFFFFFFFFFFFFFFFLL);
        v69 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200403D817979uLL);
        *v69 = v12;
        v69[1] = v88;
        *(v69 + 4) = v29;
        *(v69 + 5) = a4 | 1;
        v69[3] = CFRetain(v24);
        v69[4] = CFRetain(v31);
        dispatch_group_async_f(*(v12 + 168), *(v12 + 160), v69, vtDecompressionSubDuctDoAsyncPixelTransferAndOutput_f);
        goto LABEL_82;
      }
    }

LABEL_78:
    vtDecompressionSubDuctTransferFrameAndCallOutputCallback_Synchronously(v12, v88, v29, a4, v24, v31);
    goto LABEL_82;
  }

  v70 = *(v12 + 176);
  if (!v70)
  {
    FigSimpleMutexLock();
    if (!*(v12 + 176))
    {
      cf = @"com.apple.coremedia.asyncpixeltransfer";
      v84 = *MEMORY[0x1E695E480];
      allocatorb = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v71 = malloc_type_calloc(0x58uLL, 1uLL, 0x10200408E14E316uLL);
      v72 = v71;
      if (v71)
      {
        *v71 = v12;
        v71[3] = FigSemaphoreCreate();
        *(v72 + 48) = FigSimpleMutexCreate();
        v73 = FigSemaphoreCreate();
        *(v72 + 40) = v73;
        if (*(v72 + 24) && *(v72 + 48) && v73)
        {
          v74 = 0;
          *(v72 + 8) = 1;
          *(v72 + 32) = 0;
          v75 = 16;
          while (!FigThreadCreate())
          {
            if (*(v12 + 248))
            {
              v76 = v72;
              v77 = CFNumberCreate(v84, kCFNumberSInt32Type, (v12 + 248));
              FigThreadSetProperty();
              v78 = v77;
              v72 = v76;
              CFRelease(v78);
            }

            ++v74;
            v75 += 8;
            if (v74 >= *(v72 + 8))
            {
              *(v12 + 176) = v72;
              v72 = 0;
              goto LABEL_133;
            }
          }

          *(v72 + 8) = v74;
        }

        else
        {
          v79 = fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v79, 4294954392, "<<<< VT-DS >>>>", 8379, v6);
        }
      }

      else
      {
        v80 = fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v80, 4294954392, "<<<< VT-DS >>>>", 8366, v6);
      }

LABEL_133:
      if (allocatorb)
      {
        CFRelease(allocatorb);
      }

      vtDecompressionSubDuctAsyncPixelTransfer_StopWorkerThreads(v72);
    }

    FigSimpleMutexUnlock();
    v70 = *(v12 + 176);
    if (!v70)
    {
      goto LABEL_78;
    }
  }

  if (FigSemaphoreWaitRelative())
  {
    goto LABEL_78;
  }

  FigSimpleMutexLock();
  *(v70 + 56) = v88;
  *(v70 + 64) = v29;
  *(v70 + 68) = a4 | 1;
  *(v70 + 72) = CFRetain(v24);
  *(v70 + 80) = CFRetain(v31);
  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
LABEL_82:
  if (v91)
  {
    CFRelease(v91);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  return v89;
}

uint64_t VTDecoderSessionCleanUpAfterDecode(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return VTParavirtualizationHostDecoderSessionCleanUpAfterDecode(result);
  }

  return result;
}

uint64_t VTDecoderSessionEmitDecodedMultiImageFrame(uint64_t *a1, const void *a2, uint64_t a3, uint64_t a4, OpaqueCMTaggedBufferGroup *a5)
{
  if (a1[3])
  {
    return VTParavirtualizationHostDecoderSessionEmitDecodedMultiImageFrame(a1[3], a2, a3, a4, a5);
  }

  else
  {
    return vtDecoderSessionEmitDecodedFrameCommon(a1, a2, a3, a4, 0, a5);
  }
}

uint64_t VTDecoderSessionTrace(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (!v2)
    {
      return 0;
    }

    v3 = *v2;
    if (v3)
    {
      if (!*(v3 + 16))
      {
        return 0;
      }
    }

    emitter = fig_log_get_emitter();
    v5 = v1;
    v6 = 4294954393;
    v7 = 8646;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v5 = v1;
    v6 = 4294954394;
    v7 = 8638;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v6, "<<<< VT-DS >>>>", v7, v5);
}

uint64_t VTDecoderSessionGetDestinationPixelBufferAttributes(void *a1)
{
  if (!a1)
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954394, "<<<< VT-DS >>>>", 8678, v1);
    return 0;
  }

  if (!a1[3])
  {
    if (*a1)
    {
      return *(*a1 + 72);
    }

    v5 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, 4294954393, "<<<< VT-DS >>>>", 8688, v1);
    return 0;
  }

  v2 = a1[3];

  return VTParavirtualizationHostDecoderSessionGetDestinationPixelBufferAttributes(v2);
}

uint64_t VTDecoderSessionCopyResolvedPixelBufferAttributes(void *a1, const __CFAllocator *a2, CFDictionaryRef *a3)
{
  if (a1)
  {
    if (a3)
    {
      if (a1[3])
      {
        v6 = a1[3];

        return VTParavirtualizationHostDecoderSessionCopyResolvedPixelBufferAttributes(v6, a2, a3);
      }

      if (*a1)
      {
        v12 = *(*a1 + 96);
        if (v12)
        {
          PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(v12);
          Copy = CFDictionaryCreateCopy(a2, PixelBufferAttributes);
          *a3 = Copy;
          if (Copy)
          {
            return 0;
          }

          emitter = fig_log_get_emitter();
          v9 = v3;
          v10 = 4294954392;
          v11 = 8721;
        }

        else
        {
          emitter = fig_log_get_emitter();
          v9 = v3;
          v10 = 4294949605;
          v11 = 8716;
        }
      }

      else
      {
        emitter = fig_log_get_emitter();
        v9 = v3;
        v10 = 4294954393;
        v11 = 8713;
      }
    }

    else
    {
      emitter = fig_log_get_emitter();
      v9 = v3;
      v10 = 4294954394;
      v11 = 8705;
    }
  }

  else
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 4294954394;
    v11 = 8702;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v10, "<<<< VT-DS >>>>", v11, v9);
}

__CFString *vtDecompressionSessionCopyDebugDesc(void *a1)
{
  if (a1[3])
  {

    return CFRetain(@"[VTDecompressionSession]");
  }

  else
  {
    v4 = CFGetAllocator(a1);
    Mutable = CFStringCreateMutable(v4, 0);
    v6 = CFGetAllocator(a1);
    v7 = a1[5];
    if (v7)
    {
      v7 = *(v7 + 16);
    }

    CFStringAppendFormat(Mutable, 0, @"<VTDecompressionSession %p [%p]>{videoFormatDescription:%p, destinationPixelBufferAttributes:%p, outputCallback:{%p,%p}}", a1, v6, v7, a1[10], a1[12], a1[13]);
    return Mutable;
  }
}

uint64_t __vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_block_invoke()
{
  vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_hdr10PlusEnabled = CelestialShouldSupportHDR10Plus();
  result = FigGetCFPreferenceNumberWithDefault();
  vtDecompressionSessionDeterminePolicyForPossibleHDR10PlusContent_hdr10PlusEnabled = result;
  return result;
}

uint64_t __vtDecompressionSessionSetupDolbyVision8p1_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  vtDecompressionSessionSetupDolbyVision8p1_dolbyVision8p1Enabled = result;
  return result;
}

uint64_t __vtDecompressionSessionSetupDolbyVision10p4_block_invoke()
{
  result = _os_feature_enabled_impl();
  vtDecompressionSessionSetupDolbyVision10p4_dolbyVision10p4Enabled = result;
  return result;
}

uint64_t vtFormatDescriptionIsPQ(const opaqueCMFormatDescription *a1)
{
  CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E6965F30]);

  return FigCFEqual();
}

uint64_t vtDecompressionDuctSetVideoFormatDescription(uint64_t a1, const void *a2)
{
  FigSimpleMutexLock();
  v4 = *(a1 + 88);
  *(a1 + 88) = a2;
  if (a2)
  {
    CFRetain(a2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return FigSimpleMutexUnlock();
}

CFDictionaryRef vtCreateFrameTypesArrayElement(const void *a1)
{
  v3 = a1;
  keys = @"OnlyTheseFrames";
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v1)
  {
    vtCreateFrameTypesArrayElement_cold_1();
  }

  return v1;
}

const __CFDictionary *vtDecompressionAttributesHaveColorSpaceAttachments(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    Value = CFDictionaryGetValue(result, *MEMORY[0x1E6965C70]);
    v3 = CFDictionaryGetValue(v1, *MEMORY[0x1E6965C68]);
    if (vtDecompressionDictionaryHasColorSpaceKeys(Value))
    {
      return 1;
    }

    else
    {
      return (vtDecompressionDictionaryHasColorSpaceKeys(v3) != 0);
    }
  }

  return result;
}

uint64_t vtCopyGuessedMissingColorSpaceAttachmentsFromFormatDescription(const opaqueCMFormatDescription *a1, __CFDictionary **a2)
{
  Extensions = CMFormatDescriptionGetExtensions(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    vtCopyGuessedMissingColorSpaceAttachmentsFromFormatDescription_cold_1(&v15);
    return v15;
  }

  v6 = Mutable;
  if (!Extensions)
  {
    v8 = 0;
    v9 = 0;
    Value = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_6:
    width = 0;
    v13 = 0;
    MediaSubType = 0;
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965D88]);
  v8 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965F30]);
  v9 = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965F98]);
  LODWORD(Extensions) = CFDictionaryGetValue(Extensions, *MEMORY[0x1E6965E80]) != 0;
  if (!a1)
  {
    goto LABEL_6;
  }

LABEL_4:
  Dimensions = CMVideoFormatDescriptionGetDimensions(a1);
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  width = Dimensions.width;
  v13 = *&Dimensions >> 32;
LABEL_7:
  vtGuessMissingColorSpaceAttachmentsGuts(MediaSubType, width, v13, Value, v8, v9, Extensions, v6);
  result = 0;
  *a2 = v6;
  return result;
}

const __CFDictionary *vtDecompressionDictionaryHasColorSpaceKeys(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    if (CFDictionaryContainsKey(result, *MEMORY[0x1E6965D88]) || CFDictionaryContainsKey(v1, *MEMORY[0x1E6965F30]))
    {
      return 1;
    }

    else
    {
      return (CFDictionaryContainsKey(v1, *MEMORY[0x1E6965F98]) != 0);
    }
  }

  return result;
}

void vtGuessMissingColorSpaceAttachmentsGuts(int a1, unint64_t a2, unint64_t a3, CFTypeRef cf1, CFTypeRef a5, CFTypeRef a6, int a7, CFMutableDictionaryRef theDict)
{
  if (cf1 && a5 && a6)
  {
    goto LABEL_4;
  }

  if (!cf1 && !a5 && !a6)
  {
    v24 = 0;
    value = 0;
    v23 = 0;
    VTGetDefaultColorAttributesWithHints(a1, 0, a2, a3, &value, &v24, &v23);
    CFDictionarySetValue(theDict, *MEMORY[0x1E6965D88], value);
    if (a7)
    {
      v15 = *MEMORY[0x1E6965F80];
    }

    else
    {
      v15 = v24;
    }

    CFDictionarySetValue(theDict, *MEMORY[0x1E6965F30], v15);
    v16 = *MEMORY[0x1E6965F98];
    v17 = v23;
LABEL_40:
    CFDictionarySetValue(theDict, v16, v17);
    goto LABEL_41;
  }

  if (cf1 && !CFEqual(cf1, *MEMORY[0x1E6965DD8]) && !CFEqual(cf1, *MEMORY[0x1E6965DB8]) || a5 && !CFEqual(a5, *MEMORY[0x1E6965F50]) && !CFEqual(a5, *MEMORY[0x1E6965F80]))
  {
    goto LABEL_4;
  }

  if (!a6)
  {
    if (!cf1)
    {
      v20 = MEMORY[0x1E6965DD8];
      goto LABEL_31;
    }

LABEL_26:
    v13 = 0;
    if (!a5)
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v18 = *MEMORY[0x1E6965FC8];
  if (!CFEqual(a6, *MEMORY[0x1E6965FC8]) && !CFEqual(a6, *MEMORY[0x1E6965FD0]))
  {
LABEL_4:
    v13 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  if (cf1)
  {
    goto LABEL_26;
  }

  v19 = CFEqual(a6, v18);
  v20 = MEMORY[0x1E6965DD8];
  if (!v19)
  {
    v20 = MEMORY[0x1E6965DB8];
  }

LABEL_31:
  CFDictionarySetValue(theDict, *MEMORY[0x1E6965D88], *v20);
  v13 = 1;
  if (!a5)
  {
LABEL_32:
    v21 = MEMORY[0x1E6965F80];
    if (!a7)
    {
      v21 = MEMORY[0x1E6965F50];
    }

    CFDictionarySetValue(theDict, *MEMORY[0x1E6965F30], *v21);
    v14 = 1;
    if (!a6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = 0;
  if (!a6)
  {
LABEL_35:
    if (cf1 && !CFEqual(cf1, *MEMORY[0x1E6965DD8]))
    {
      v16 = *MEMORY[0x1E6965F98];
      v22 = MEMORY[0x1E6965FD0];
    }

    else
    {
      v16 = *MEMORY[0x1E6965F98];
      v22 = MEMORY[0x1E6965FC8];
    }

    v17 = *v22;
    goto LABEL_40;
  }

LABEL_28:
  if (v14 | v13)
  {
LABEL_41:
    CFDictionarySetValue(theDict, @"ColorInfoGuessedBy", @"VideoToolbox");
  }
}

CFDictionaryRef vtCreateQualityOfServiceTier(void *a1, double a2)
{
  keys[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  keys[0] = @"OnlyTheseFrames";
  keys[1] = @"ReducedFrameDelivery";
  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &v7);
  values[0] = a1;
  values[1] = v4;
  v5 = CFDictionaryCreate(v3, keys, values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v5)
  {
    vtCreateQualityOfServiceTier_cold_1();
    if (!v4)
    {
      return v5;
    }

    goto LABEL_3;
  }

  if (v4)
  {
LABEL_3:
    CFRelease(v4);
  }

  return v5;
}

void vtDecompressionSessionAddPropertyToPartition(void *key, const void *a2, CFDictionaryRef *a3)
{
  if (CFDictionaryContainsKey(*a3, key))
  {
    v8 = a3[2];
    v7 = a3 + 2;
    Mutable = v8;
    if (!v8)
    {
LABEL_3:
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *v7 = Mutable;
    }
  }

  else
  {
    v9 = a3[1];
    if (!v9 || !CFDictionaryContainsKey(v9, key))
    {
      return;
    }

    v10 = a3[3];
    v7 = a3 + 3;
    Mutable = v10;
    if (!v10)
    {
      goto LABEL_3;
    }
  }

  CFDictionarySetValue(Mutable, key, a2);
}

BOOL vtCVBufferAttachmentEmpty(__CVBuffer *a1, const __CFString *a2)
{
  v2 = CVBufferCopyAttachment(a1, a2, 0);
  v3 = v2;
  if (v2)
  {
    CFRelease(v2);
  }

  return v3 == 0;
}

const __CFNumber *vtCreateScaledCleanApertureValue(const __CFDictionary *a1, const void *a2, double a3)
{
  result = CFDictionaryGetValue(a1, a2);
  if (result)
  {
    valuePtr = 0.0;
    CFNumberGetValue(result, kCFNumberDoubleType, &valuePtr);
    valuePtr = valuePtr * a3;
    return CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  }

  return result;
}

__n128 vtDuctFrameTrackingInfoFindMinPTS(uint64_t a1, CMTime *a2, CMTime *a3)
{
  time1 = a2[1];
  v6 = *a3;
  if (CMTimeCompare(&time1, &v6) < 0)
  {
    result = *&a2[1].value;
    a3->epoch = a2[1].epoch;
    *&a3->value = result;
  }

  return result;
}

__n128 vtDuctFrameTrackingInfoFindMaxPTS(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (*(a2 + 36))
  {
    time1 = *(a2 + 24);
    v6 = *a3;
    if (CMTimeCompare(&time1, &v6) >= 1)
    {
      result = *(a2 + 24);
      a3->epoch = *(a2 + 40);
      *&a3->value = result;
    }
  }

  return result;
}

void vtDecompressionSessionUpdateAttachmentsForEmittedImageBuffer(void *a1, const opaqueCMFormatDescription *a2, __CVBuffer *a3)
{
  vtTransferImageBufferAttachmentsFromVideoFormatDescription(a2, a3);
  if (!VTIsBufferTaggedWithColorProperties(a3))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = Mutable;
    v7 = a1[26];
    if (v7)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6965D88], v7);
    }

    v8 = a1[27];
    if (v8)
    {
      CFDictionarySetValue(v6, *MEMORY[0x1E6965F30], v8);
    }

    v9 = a1[28];
    if (v9)
    {
      CFDictionarySetValue(v6, *MEMORY[0x1E6965F98], v9);
    }

    v10 = a1[29];
    if (v10)
    {
      CFDictionarySetValue(v6, *MEMORY[0x1E6965EC8], v10);
    }

    CVBufferSetAttachments(a3, v6, kCVAttachmentMode_ShouldPropagate);
    if (v6)
    {

      CFRelease(v6);
    }
  }
}

void vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon(uint64_t a1, CVBufferRef buffer)
{
  v18 = 0;
  if (vtAddDolbyOverride_onceToken != -1)
  {
    vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_1();
  }

  if (!vtAddDolbyOverride_addDolbyOverride && !*(a1 + 280))
  {
LABEL_23:
    v5 = v18;
    if (!v18)
    {
      return;
    }

    goto LABEL_24;
  }

  v4 = *MEMORY[0x1E6965E48];
  v5 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965E48], 0);
  v18 = v5;
  if (!v5)
  {
    v6 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965D88], 0);
    v7 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965F98], 0);
    v8 = CVBufferCopyAttachment(buffer, *MEMORY[0x1E6965F30], 0);
    if (FigCFEqual() && FigCFEqual() && FigCFEqual())
    {
      if (!*(a1 + 288) && VTHDRImageStatisticsGenerationSessionCreate(0, 0, (a1 + 288)))
      {
        vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_2();
      }

      else if (!*(a1 + 296) && VTHDRMetadataGenerationSessionCreate(*MEMORY[0x1E695E480], 4, 0, (a1 + 296)))
      {
        vtDecompressionSessionGeneratePerFrameHDRMetadataforEmittedImageBufferCommon_cold_3();
      }

      else
      {
        v9 = *(a1 + 288);
        if (v9)
        {
          if (*(a1 + 296))
          {
            v16 = 0;
            v17 = 0;
            VTHDRImageStatisticsGenerationSessionCreateStatistics(v9, buffer, &v17 + 4, &v17, &v16 + 4, &v16);
            v13 = 0u;
            v14 = 0u;
            v15 = 1;
            v11 = 0u;
            v12 = 0u;
            v10[0] = *&v17;
            v10[1] = *(&v16 + 1);
            v10[2] = *(&v17 + 1);
            v10[3] = *&v16;
            v10[4] = *&v16;
            WORD6(v14) = 257;
            BYTE14(v14) = 1;
            VTHDRMetadataGenerationSessionCreateDataFromStatistics(*(a1 + 296), 0, 1, v10, 1, &v18);
            if (v18)
            {
              CVBufferSetAttachment(buffer, v4, v18, kCVAttachmentMode_ShouldPropagate);
            }
          }
        }
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_23;
  }

LABEL_24:
  CFRelease(v5);
}

uint64_t __vtAddDolbyOverride_block_invoke()
{
  result = FigGetCFPreferenceNumberWithDefault();
  vtAddDolbyOverride_addDolbyOverride = result;
  return result;
}

uint64_t vtDecompressionSessionCreateDestinationImageBufferForEmittedFrameIfNecessary(uint64_t a1, int a2, void *a3, CVPixelBufferRef *a4)
{
  if ((a2 & 0x1000000) != 0)
  {
    return 0;
  }

  if (*(a1 + 64))
  {
    v7 = *(a1 + 104) != *(a1 + 96);
  }

  else
  {
    v7 = *(a1 + 72) && CVPixelBufferIsCompatibleWithAttributes() == 0;
  }

  if (VTIsPixelBufferCompatibleWithColorProperties(a3, *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232), (a1 + 240)) && !v7)
  {
    return 0;
  }

  vtDecompressionSubDuctEnsurePixelBufferPoolsAreUpToDate(a1);
  v11 = *MEMORY[0x1E695E480];
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], *(a1 + 104), a4);
  if (PixelBuffer)
  {
    return PixelBuffer;
  }

  v13 = (a1 + 136);
  if (*(a1 + 136))
  {
    return 0;
  }

  v14 = CFGetAllocator(*a1);
  PixelBuffer = VTPixelTransferSessionCreate(v14, (a1 + 136));
  if (PixelBuffer)
  {
    return PixelBuffer;
  }

  if (*v13)
  {
    Mutable = CFDictionaryCreateMutable(v11, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16 = Mutable;
    v17 = MEMORY[0x1E695E4C0];
    if (!*(a1 + 265))
    {
      v17 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, @"RealTime", *v17);
    if (*(a1 + 248))
    {
      FigCFDictionarySetInt32();
    }

    v18 = *(a1 + 208);
    if (v18)
    {
      CFDictionarySetValue(v16, @"DestinationColorPrimaries", v18);
    }

    v19 = *(a1 + 216);
    if (v19)
    {
      CFDictionarySetValue(v16, @"DestinationTransferFunction", v19);
    }

    v20 = *(a1 + 224);
    if (v20)
    {
      CFDictionarySetValue(v16, @"DestinationYCbCrMatrix", v20);
    }

    v21 = *(a1 + 232);
    if (v21)
    {
      CFDictionarySetValue(v16, @"DestinationICCProfile", v21);
    }

    v9 = VTSessionSetProperties(*v13, v16);
    if (v16)
    {
      CFRelease(v16);
    }

    if (v9)
    {
      return v9;
    }
  }

  v22 = *(a1 + 144);
  if (!v22)
  {
    return 0;
  }

  v23 = *v13;

  return VTSessionSetProperties(v23, v22);
}

uint64_t vtDecompressionSubDuctTransferFrameAndCallOutputCallback_Synchronously(uint64_t a1, const void *a2, uint64_t a3, int a4, __CVBuffer *a5, __CVBuffer *a6)
{
  v6 = a6;
  v10 = vtDecompressionSubDuctTransferImage_Synchronously(a1, a3, a5, a6);
  if (v10)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v12, v13, v14);
    v6 = 0;
  }

  return vtDecompressionSubDuctEmitTransferredFrame(a1, a2, v10, a4 | 4u, v6, 0);
}

uint64_t vtDecompressionSubDuctTransferImage_Synchronously(uint64_t a1, char a2, __CVBuffer *a3, __CVBuffer *a4)
{
  v7 = *(a1 + 136);
  v8 = *MEMORY[0x1E695E4C0];
  if ((a2 & 4) != 0)
  {
    v9 = *MEMORY[0x1E695E4C0];
  }

  else
  {
    v9 = *MEMORY[0x1E695E4D0];
  }

  VTSessionSetProperty(v7, @"EnableHighSpeedTransfer", v9);
  if (VTAvoidHardwarePixelTransfer())
  {
    VTSessionSetProperty(*(a1 + 136), @"EnableHardwareAcceleratedTransfer", v8);
    VTSessionSetProperty(*(a1 + 136), @"EnableGPUAcceleratedTransfer", v8);
  }

  v10 = *(a1 + 136);

  return VTPixelTransferSessionTransferImage(v10, a3, a4);
}

void vtGetEnableAsynchronousTransferOnce()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"asyncpixeltransfer", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (v0)
  {
    v1 = v0;
    CFStringGetCString(v0, v2, 200, 0x8000100u);
    if (CFEqual(v1, @"disable") || CFEqual(v1, @"disabled"))
    {
      sGlobalEnableAsynchronousTransfer = 1;
    }

    CFRelease(v1);
  }
}

void vtDecompressionSubDuctDoAsyncPixelTransferAndOutput_f(uint64_t a1)
{
  if (a1)
  {
    vtDecompressionSubDuctTransferFrameAndCallOutputCallback_Synchronously(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 20), *(a1 + 24), *(a1 + 32));
    v2 = *(a1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      CFRelease(v3);
    }

    free(a1);
  }
}

uint64_t vtDecompressionDuctAsyncPixelTransfer_WorkerThread(uint64_t a1)
{
  while (1)
  {
    FigSemaphoreWaitRelative();
    FigSimpleMutexLock();
    v3 = *(a1 + 64);
    v2 = *(a1 + 68);
    v5 = *(a1 + 72);
    v4 = *(a1 + 80);
    v6 = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    FigSimpleMutexUnlock();
    if (*(a1 + 32))
    {
      break;
    }

    FigSemaphoreSignal();
    vtDecompressionSubDuctTransferFrameAndCallOutputCallback_Synchronously(*a1, v6, v3, v2, v5, v4);
    if (v5)
    {
      CFRelease(v5);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  if (v6)
  {
    vtDecompressionSubDuctEmitTransferredFrame(*a1, v6, 4294954393, v2, 0, 0);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0;
}

uint64_t DepthWrapperDecoder_CreateInstance(int a1, uint64_t a2, CFTypeRef *a3)
{
  VTVideoDecoderGetClassID();
  v3 = CMDerivedObjectCreate();
  DepthWrapperDecoder_CreateInstance_cold_3();
  return v3;
}

uint64_t DepthWrapperDecoder_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage)
  {
    *DerivedStorage = 1;
    VTDecompressionSessionInvalidate(*(DerivedStorage + 40));
  }

  return 0;
}

void DepthWrapperDecoder_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = 0;
  v1 = DerivedStorage[2];
  if (v1)
  {
    CFRelease(v1);
    DerivedStorage[2] = 0;
  }

  v2 = DerivedStorage[4];
  if (v2)
  {
    CFRelease(v2);
    DerivedStorage[4] = 0;
  }

  v3 = DerivedStorage[5];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[5] = 0;
  }

  v4 = DerivedStorage[3];
  if (v4)
  {
    CFRelease(v4);
    DerivedStorage[3] = 0;
  }

  v5 = DerivedStorage[6];
  if (v5)
  {
    dispatch_release(v5);
    DerivedStorage[6] = 0;
  }

  v6 = DerivedStorage[9];
  if (v6)
  {
    DerivedStorage[9] = 0;

    free(v6);
  }
}

__CFString *DepthWrapperDecoder_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<DepthWrapperDecoder %p>", a1);
  return Mutable;
}

uint64_t DepthWrapperDecoder_StartSession(uint64_t a1, uint64_t a2, const void *a3)
{
  buffer[2] = *MEMORY[0x1E69E9840];
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  cf = 0;
  if (*(DerivedStorage + 4) == 1684369512)
  {
    v7 = 1751410032;
  }

  else
  {
    v7 = 1751411059;
  }

  v53 = v7;
  v8 = *(DerivedStorage + 16);
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 16) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(*(v6 + 16));
  *(buffer + 5) = 0;
  buffer[0] = 0;
  v10 = *MEMORY[0x1E69600A0];
  Extension = CMFormatDescriptionGetExtension(*(v6 + 16), *MEMORY[0x1E69600A0]);
  if (!Extension || (v12 = Extension, v13 = CFGetTypeID(Extension), v13 != CFDictionaryGetTypeID()))
  {
    DepthWrapperDecoder_StartSession_cold_12(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  Value = CFDictionaryGetValue(v12, @"disc");
  if (!Value)
  {
    DepthWrapperDecoder_StartSession_cold_11(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  v15 = Value;
  v16 = CFGetTypeID(Value);
  if (v16 != CFDataGetTypeID())
  {
    DepthWrapperDecoder_StartSession_cold_1(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  if (CFDataGetLength(v15) <= 12)
  {
    DepthWrapperDecoder_StartSession_cold_10(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  v58.location = 0;
  v58.length = 13;
  CFDataGetBytes(v15, v58, buffer);
  if (LODWORD(buffer[0]))
  {
    DepthWrapperDecoder_StartSession_cold_2(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  if (BYTE4(buffer[0]) != 1)
  {
    DepthWrapperDecoder_StartSession_cold_3(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  v17 = vrev32_s8(*(buffer + 5));
  v18.i64[0] = v17.i32[0];
  v18.i64[1] = v17.i32[1];
  v19 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_s64(v18), vdupq_n_s64(0x3EF0000000000000uLL)));
  if (v19.f32[0] < 0.0)
  {
    DepthWrapperDecoder_StartSession_cold_9(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  if (v19.f32[1] <= v19.f32[0])
  {
    DepthWrapperDecoder_StartSession_cold_8(&destinationImageBufferAttributes);
    return destinationImageBufferAttributes;
  }

  *(v6 + 60) = v19;
  v20 = *(v6 + 72);
  v21 = (v19.f32[1] - v19.f32[0]) + 1.0;
  v52 = v19.f32[0];
  v22 = powf(v21, 0.00097752);
  v23 = powf(v21, -0.00097752);
  for (i = 0; i != 2048; i += 2)
  {
    v23 = v22 * v23;
    _S2 = (v23 + -1.0) + v52;
    __asm { FCVT            H2, S2 }

    *(v20 + i) = LOWORD(_S2);
  }

  v30 = depthdecoder_createPixelBufferAttributesDictionary(Dimensions, HIDWORD(Dimensions), &v53, &cf);
  v31 = cf;
  if (v30)
  {
    v44 = v30;
    goto LABEL_28;
  }

  VTDecoderSessionSetPixelBufferAttributes(*(v6 + 8), cf);
  v32 = *(v6 + 16);
  v33 = CMVideoFormatDescriptionGetDimensions(v32);
  Extensions = CMFormatDescriptionGetExtensions(v32);
  v35 = MEMORY[0x1E695E480];
  if (!Extensions)
  {
    DepthWrapperDecoder_StartSession_cold_7(&destinationImageBufferAttributes);
    goto LABEL_47;
  }

  v36 = Extensions;
  v37 = CFDictionaryGetValue(Extensions, v10);
  if (!v37)
  {
    DepthWrapperDecoder_StartSession_cold_6(&destinationImageBufferAttributes);
    goto LABEL_47;
  }

  v38 = v37;
  v39 = *v35;
  MutableCopy = CFDictionaryCreateMutableCopy(*v35, 0, v36);
  if (!MutableCopy)
  {
    DepthWrapperDecoder_StartSession_cold_5(&destinationImageBufferAttributes);
    goto LABEL_47;
  }

  v41 = MutableCopy;
  v42 = CFDictionaryCreateMutableCopy(v39, 0, v38);
  if (!v42)
  {
    DepthWrapperDecoder_StartSession_cold_4(v41, &destinationImageBufferAttributes);
LABEL_47:
    v44 = destinationImageBufferAttributes;
    if (destinationImageBufferAttributes)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v43 = v42;
  CFDictionaryRemoveValue(v42, @"disc");
  CFDictionarySetValue(v41, v10, v43);
  CFDictionaryRemoveValue(v41, *MEMORY[0x1E69600D0]);
  CFDictionaryRemoveValue(v41, *MEMORY[0x1E69600C8]);
  v44 = CMVideoFormatDescriptionCreate(v39, 0x68766331u, v33.width, v33.height, v41, (v6 + 32));
  CFRelease(v41);
  CFRelease(v43);
  if (v44)
  {
    goto LABEL_28;
  }

LABEL_25:
  v45 = *(v6 + 24);
  v46 = *(v6 + 32);
  VTVideoDecoderGetCMBaseObject();
  v47 = CMBaseObjectGetDerivedStorage();
  destinationImageBufferAttributes = 0;
  v55 = 1278226736;
  v48 = CMVideoFormatDescriptionGetDimensions(*(v47 + 16));
  v49 = depthdecoder_createPixelBufferAttributesDictionary(v48, HIDWORD(v48), &v55, &destinationImageBufferAttributes);
  if (!v49)
  {
    v50 = destinationImageBufferAttributes;
    v44 = VTDecompressionSessionCreate(*v35, v46, v45, destinationImageBufferAttributes, 0, (v6 + 40));
    if (!v50)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v44 = v49;
  v50 = destinationImageBufferAttributes;
  if (destinationImageBufferAttributes)
  {
LABEL_27:
    CFRelease(v50);
  }

LABEL_28:
  if (v31)
  {
    CFRelease(v31);
  }

  return v44;
}

uint64_t DepthWrapperDecoder_DecodeFrame(uint64_t a1, const void *a2, opaqueCMSampleBuffer *a3, VTDecodeFrameFlags a4, VTDecodeInfoFlags *a5)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_group_enter(*(DerivedStorage + 48));
  ++*(DerivedStorage + 56);
  if (!CMSampleBufferDataIsReady(a3))
  {
    DepthWrapperDecoder_DecodeFrame_cold_1(&timingInfoOut);
    value_low = LODWORD(timingInfoOut.duration.value);
LABEL_13:
    depthdecoder_emitDecodedFrame(a1, a2, value_low, 0, 0);
    return value_low;
  }

  DataBuffer = CMSampleBufferGetDataBuffer(a3);
  v12 = *(DerivedStorage + 32);
  sampleBufferOut = 0;
  *&timingInfoOut.duration.value = *MEMORY[0x1E6960C70];
  timingInfoOut.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
  timingInfoOut.presentationTimeStamp = timingInfoOut.duration;
  timingInfoOut.decodeTimeStamp = timingInfoOut.duration;
  sampleSizeArray = CMBlockBufferGetDataLength(DataBuffer);
  SampleTimingInfo = CMSampleBufferGetSampleTimingInfo(a3, 0, &timingInfoOut);
  if (SampleTimingInfo)
  {
    value_low = SampleTimingInfo;
    goto LABEL_13;
  }

  v14 = CMSampleBufferCreateReady(*MEMORY[0x1E695E480], DataBuffer, v12, 1, 1, &timingInfoOut, 1, &sampleSizeArray, &sampleBufferOut);
  if (v14)
  {
    value_low = v14;
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    goto LABEL_13;
  }

  CMPropagateAttachments(a3, sampleBufferOut);
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    v17 = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
    v18 = CFArrayGetValueAtIndex(v17, 0);
    CFDictionaryApplyFunction(ValueAtIndex, depthdecoder_dictionarySetValue, v18);
  }

  v19 = sampleBufferOut;
  v20 = *(DerivedStorage + 40);
  outputHandler[0] = MEMORY[0x1E69E9820];
  outputHandler[1] = 0x40000000;
  outputHandler[2] = __DepthWrapperDecoder_DecodeFrame_block_invoke;
  outputHandler[3] = &__block_descriptor_tmp_3;
  v24 = a4 & 1;
  outputHandler[4] = DerivedStorage;
  outputHandler[5] = a1;
  outputHandler[6] = a2;
  value_low = VTDecompressionSessionDecodeFrameWithOutputHandler(v20, sampleBufferOut, a4, a5, outputHandler);
  if (v19)
  {
    CFRelease(v19);
  }

  return value_low;
}

uint64_t DepthWrapperDecoder_FinishDelayedFrames()
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    return 0;
  }

  v2 = DerivedStorage;
  v1 = VTDecompressionSessionFinishDelayedFrames(*(DerivedStorage + 40));
  if (*(v2 + 48))
  {
    v3 = 2;
    do
    {
      v4 = *(v2 + 48);
      v5 = dispatch_time(0, 1000000000 * v3);
      v3 *= 2;
    }

    while (dispatch_group_wait(v4, v5));
  }

  return v1;
}

uint64_t depthdecoder_createPixelBufferAttributesDictionary(uint64_t a1, uint64_t a2, unsigned int *a3, __CFDictionary **a4)
{
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    if (v8)
    {
      v9 = v8;
      FigCFArrayAppendInt32();
      CFDictionarySetValue(v7, *MEMORY[0x1E6966130], v9);
      CFRelease(v9);
      FigCFDictionarySetInt32();
      FigCFDictionarySetInt32();
      result = 0;
      *a4 = v7;
    }

    else
    {
      depthdecoder_createPixelBufferAttributesDictionary_cold_1(v7, &v11);
      return v11;
    }
  }

  else
  {
    depthdecoder_createPixelBufferAttributesDictionary_cold_2(&v12);
    return v12;
  }

  return result;
}

void depthdecoder_emitDecodedFrame(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, __CVBuffer *a5)
{
  VTVideoDecoderGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  VTDecoderSessionEmitDecodedFrame(*(DerivedStorage + 8), a2, a3, a4, a5);
  --*(DerivedStorage + 56);
  v10 = *(DerivedStorage + 48);

  dispatch_group_leave(v10);
}

__CFString *VTPixelBufferAttributesCopyNiceDescription(const __CFDictionary *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"[");
  Value = CFDictionaryGetValue(a1, *MEMORY[0x1E6966208]);
  v4 = CFDictionaryGetValue(a1, *MEMORY[0x1E69660B8]);
  v5 = @"[any width]";
  if (Value)
  {
    v5 = Value;
  }

  v6 = @"[any height]";
  if (v4)
  {
    v6 = v4;
  }

  CFStringAppendFormat(Mutable, 0, @"%@ x %@, ", v5, v6);
  v7 = CFDictionaryGetValue(a1, *MEMORY[0x1E6966130]);
  if (!v7)
  {
    v10 = @"[any pixel format]";
LABEL_25:
    CFStringAppend(Mutable, v10);
    goto LABEL_26;
  }

  v8 = v7;
  TypeID = CFNumberGetTypeID();
  if (TypeID != CFGetTypeID(v8))
  {
    v11 = CFArrayGetTypeID();
    if (v11 == CFGetTypeID(v8))
    {
      Count = CFArrayGetCount(v8);
      v13 = Count;
      if (Count >= 100)
      {
        v14 = 100;
      }

      else
      {
        v14 = Count;
      }

      if (Count <= 100)
      {
        v15 = 0;
      }

      else
      {
        v15 = Count - 100;
      }

      CFStringAppend(Mutable, @"[");
      if (v13 >= 1)
      {
        v16 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v16);
          if (v16)
          {
            CFStringAppend(Mutable, @", ");
          }

          vtGetPixelFormatNumberAsString(ValueAtIndex, v19);
          CFStringAppendFormat(Mutable, 0, @"%s", v19);
          ++v16;
        }

        while (v14 != v16);
      }

      if (v15 >= 1)
      {
        CFStringAppendFormat(Mutable, 0, @", (%d more)", v15);
      }

      v10 = @"]";
    }

    else
    {
      v10 = @"[bad pixel format]";
    }

    goto LABEL_25;
  }

  vtGetPixelFormatNumberAsString(v8, v19);
  CFStringAppendFormat(Mutable, 0, @"%s", v19);
LABEL_26:
  CFDictionaryApplyFunction(a1, vtAppendNicelyUnlessWHPF, Mutable);
  CFStringAppend(Mutable, @"]");
  return Mutable;
}

char *vtGetPixelFormatNumberAsString(const __CFNumber *a1, char *a2)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr > 100)
  {
    valuePtr = bswap32(valuePtr);
    snprintf(a2, 0x14uLL, "%.4s");
  }

  else
  {
    snprintf(a2, 0x14uLL, "%d");
  }

  return a2;
}

void vtAppendNicelyUnlessWHPF(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (!CFEqual(a1, *MEMORY[0x1E6966208]) && !CFEqual(a1, *MEMORY[0x1E69660B8]) && !CFEqual(a1, *MEMORY[0x1E6966130]))
  {
    v6[0] = a3;
    v6[1] = 1;
    vtAppendNicely(a1, a2, v6);
  }
}

uint64_t vtBuildPixelBufferPoolsCommon(const __CFAllocator *a1, const __CFDictionary *a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5, const __CFBoolean *a6, unsigned int a7, unsigned int a8, char a9, char a10, CVPixelBufferPoolRef *a11, CVPixelBufferPoolRef *a12, _BYTE *a13, _BYTE *a14)
{
  v19 = a2;
  v166 = 0;
  resolvedDictionaryOut = 0;
  v164 = 0;
  v165 = 0;
  v162 = 0;
  poolOut = 0;
  v161 = 0;
  DoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection = 0;
  if (vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(a2))
  {
    DoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection = vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(a3);
  }

  if (a10)
  {
    v22 = 1;
  }

  else
  {
    if (initDefaultsCommon_onceToken_0 != -1)
    {
      vtBuildPixelBufferPoolsCommon_cold_1();
    }

    v22 = sAllowMetalTransferSession;
  }

  v152 = v22;
  v145 = DoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection;
  if (!a8)
  {
    v23 = 0;
LABEL_15:
    cf = 0;
    goto LABEL_16;
  }

  if (!v19 || (v24 = *MEMORY[0x1E6966130], (Value = CFDictionaryGetValue(v19, *MEMORY[0x1E6966130])) == 0))
  {
    v23 = 0;
    goto LABEL_13;
  }

  v58 = Value;
  theDicta = v19;
  v59 = a3;
  v60 = CFGetTypeID(Value);
  if (v60 != CFArrayGetTypeID())
  {
    v23 = 0;
    a3 = v59;
    goto LABEL_89;
  }

  a3 = v59;
  if (!CFArrayGetCount(v58))
  {
    v23 = 0;
LABEL_89:
    v19 = theDicta;
    goto LABEL_13;
  }

  PrioritizedPixelFormatListByAlpha = vtCreatePrioritizedPixelFormatListByAlpha(v58);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (MutableCopy)
  {
    v23 = MutableCopy;
    CFDictionarySetValue(MutableCopy, v24, PrioritizedPixelFormatListByAlpha);
    if (PrioritizedPixelFormatListByAlpha)
    {
      CFRelease(PrioritizedPixelFormatListByAlpha);
    }

    v19 = v23;
LABEL_13:
    if (!a3)
    {
      goto LABEL_15;
    }

    v26 = *MEMORY[0x1E6966130];
    v27 = CFDictionaryGetValue(a3, *MEMORY[0x1E6966130]);
    if (!v27)
    {
      goto LABEL_15;
    }

    v61 = v27;
    v151 = v23;
    v62 = a3;
    v63 = CFGetTypeID(v27);
    if (v63 == CFArrayGetTypeID())
    {
      a3 = v62;
      if (CFArrayGetCount(v61))
      {
        PrioritizedPixelFormatListByAlpha = vtCreatePrioritizedPixelFormatListByAlpha(v61);
        v65 = FigCFDictionaryCreateMutableCopy();
        a3 = v65;
        if (!v65)
        {
          vtBuildPixelBufferPoolsCommon_cold_3(valuePtr);
          v74 = 0;
          v69 = 0;
          v85 = 0;
          cf = 0;
          v31 = 0;
          v83 = LODWORD(valuePtr[0]);
          v23 = v151;
          goto LABEL_260;
        }

        CFDictionarySetValue(v65, v26, PrioritizedPixelFormatListByAlpha);
        v23 = v151;
        cf = a3;
        if (PrioritizedPixelFormatListByAlpha)
        {
          CFRelease(PrioritizedPixelFormatListByAlpha);
        }

LABEL_16:
        if (a4)
        {
          PrioritizedPixelFormatListByAlpha = FigCFDictionaryCreateMutableCopy();
          if (!PrioritizedPixelFormatListByAlpha)
          {
            vtBuildPixelBufferPoolsCommon_cold_4(valuePtr);
            v74 = 0;
            a3 = 0;
            v69 = 0;
            v85 = 0;
            v31 = 0;
            goto LABEL_286;
          }

          v29 = *MEMORY[0x1E6966170];
          v140 = CFDictionaryGetValue(a4, *MEMORY[0x1E6966170]);
          CFDictionaryRemoveValue(PrioritizedPixelFormatListByAlpha, v29);
        }

        else
        {
          v140 = 0;
          PrioritizedPixelFormatListByAlpha = 0;
        }

        v141 = a7;
        if (!a6)
        {
          goto LABEL_21;
        }

        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(a6))
        {
          if (CFBooleanGetValue(a6))
          {
            v142 = 0;
            v162 = -1;
            goto LABEL_22;
          }
        }

        else
        {
          v57 = CFNumberGetTypeID();
          if (v57 == CFGetTypeID(a6))
          {
            CFNumberGetValue(a6, kCFNumberSInt64Type, &v162);
            v142 = 0;
LABEL_22:
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            v31 = Mutable;
            if (v19)
            {
              CFArrayAppendValue(Mutable, v19);
            }

            v138 = a4;
            v139 = a8;
            v153 = a1;
            if (a3)
            {
              CFArrayAppendValue(v31, a3);
            }

            theDict = v19;
            v147 = PrioritizedPixelFormatListByAlpha;
            v148 = a3;
            v150 = v23;
            v169 = 0;
            v168 = 0;
            Count = CFArrayGetCount(v31);
            if (Count >= 1)
            {
              v33 = Count;
              v34 = 0;
              cf1 = 0uLL;
              v35 = 0;
              v36 = 0;
              v158 = *MEMORY[0x1E6965F98];
              v159 = *MEMORY[0x1E6965E80];
              key = *MEMORY[0x1E69660D8];
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v31, v36);
                if (ValueAtIndex)
                {
                  v38 = ValueAtIndex;
                  v39 = v31;
                  v40 = CFDictionaryGetTypeID();
                  if (v40 == CFGetTypeID(v38))
                  {
                    v41 = CFDictionaryGetValue(v38, v159);
                    v42 = CFDictionaryGetValue(v38, v158);
                    if (v41)
                    {
                      v43 = CFNumberGetTypeID();
                      if (v43 == CFGetTypeID(v41))
                      {
                        if (*(&cf1 + 1))
                        {
                          v170 = 0.0;
                          valuePtr[0] = 0.0;
                          CFNumberGetValue(*(&cf1 + 1), kCFNumberDoubleType, valuePtr);
                          CFNumberGetValue(v41, kCFNumberDoubleType, &v170);
                          v31 = v39;
                          if (vabdd_f64(valuePtr[0], v170) >= 0.01)
                          {
                            goto LABEL_102;
                          }

                          if (!v42)
                          {
                            goto LABEL_44;
                          }

                          goto LABEL_39;
                        }

                        *(&cf1 + 1) = v41;
                      }
                    }

                    v31 = v39;
                    if (!v42)
                    {
                      goto LABEL_44;
                    }

LABEL_39:
                    v44 = CFStringGetTypeID();
                    if (v44 == CFGetTypeID(v42))
                    {
                      if (cf1)
                      {
                        if (!CFEqual(cf1, v42))
                        {
                          goto LABEL_102;
                        }
                      }

                      else
                      {
                        *&cf1 = v42;
                      }
                    }

LABEL_44:
                    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
                    if (v168)
                    {
                      v46 = BooleanIfPresent == 0;
                    }

                    else
                    {
                      v46 = 1;
                    }

                    if (!v46)
                    {
                      v35 = 1;
                    }

                    CFDictionaryGetValue(v38, key);
                    FigCFDictionaryGetIntIfPresent();
                    if (v34)
                    {
                      if (v34 != v169)
                      {
                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v34 = v169;
                    }

                    goto LABEL_53;
                  }

                  v31 = v39;
                }

LABEL_53:
                if (v33 == ++v36)
                {
                  v47 = v35 == 0;
                  goto LABEL_59;
                }
              }
            }

            cf1 = 0uLL;
            v34 = 0;
            v47 = 1;
LABEL_59:
            if (!CVPixelBufferCreateResolvedAttributesDictionary(0, v31, &resolvedDictionaryOut))
            {
              if (!resolvedDictionaryOut)
              {
LABEL_103:
                LOBYTE(v169) = 0;
                v67 = v153;
                v68 = vtCreateUsablePixelBufferAttributes(v153, a5, theDict, v148, 1, &v165, &v169);
                v23 = v150;
                v69 = v147;
                if (v68 || (v169 ? (v72 = v148, FirstPixelFormatFromPixelBufferAttributes = vtGetFirstPixelFormatFromPixelBufferAttributes(v148, 0, v145, v152), v71 = v165, v70 = FirstPixelFormatFromPixelBufferAttributes != vtGetFirstPixelFormatFromPixelBufferAttributes(v165, 0, v145, v152)) : (v70 = 1, v71 = v165, v72 = v148), v68 = vtCreateUsablePixelBufferAttributes(v153, a5, v72, v71, v70, &v164, 0), v68))
                {
                  v83 = v68;
                  goto LABEL_257;
                }

                v82 = v164;
                if (v164 && !v169)
                {
                  v164 = 0;
                  v83 = vtCreateReorderedPixelBufferAttributes(v153, v82, v71, &v164);
                  CFRelease(v82);
                  if (v83)
                  {
                    goto LABEL_257;
                  }

                  v82 = v164;
                  v84 = vtGetFirstPixelFormatFromPixelBufferAttributes(v164, 0, v145, v152);
                  if (v84 != vtGetFirstPixelFormatFromPixelBufferAttributes(v71, 0, v145, v152))
                  {
                    v165 = 0;
                    v83 = vtCreateReorderedPixelBufferAttributes(v153, v71, v82, &v165);
                    CFRelease(v71);
                    if (v83)
                    {
                      goto LABEL_121;
                    }
                  }
                }

                if (v82)
                {
                  LODWORD(valuePtr[0]) = 0;
                  LODWORD(v170) = 0;
                  v86 = vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(v82) && vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(v165);
                  v89 = CFDictionaryGetTypeID();
                  if (v89 == CFGetTypeID(v82) && (v90 = CFDictionaryGetTypeID(), v91 = v165, v90 == CFGetTypeID(v165)) && (v92 = *MEMORY[0x1E6966130], v93 = CFDictionaryGetValue(v82, *MEMORY[0x1E6966130]), v94 = CFDictionaryGetValue(v91, v92), v93) && (v95 = v94) != 0)
                  {
                    keya = v92;
                    v96 = CFArrayGetTypeID();
                    if (v96 == CFGetTypeID(v93))
                    {
                      v160 = CFArrayGetCount(v93);
                    }

                    else
                    {
                      v160 = 1;
                    }

                    v114 = CFArrayGetTypeID();
                    if (v114 == CFGetTypeID(v95))
                    {
                      v115 = CFArrayGetCount(v95);
                    }

                    else
                    {
                      v115 = 1;
                    }

                    v116 = vtGetFirstPixelFormatFromPixelBufferAttributes(v82, 0, v86, v152);
                    v157 = v91;
                    v117 = vtGetFirstPixelFormatFromPixelBufferAttributes(v91, 0, v86, v152);
                    v137 = v31;
                    v118 = v116 != v117 || VTPixelTransferSessionCanTransfer(v116, v116, 0) == 0;
                    if (v160 < 1)
                    {
                      goto LABEL_225;
                    }

                    v119 = 0;
                    while (1)
                    {
                      LODWORD(valuePtr[0]) = 0;
                      v120 = CFArrayGetTypeID();
                      if (v120 == CFGetTypeID(v93))
                      {
                        FigCFArrayGetInt32AtIndex();
                      }

                      else
                      {
                        v121 = CFNumberGetTypeID();
                        if (v121 == CFGetTypeID(v93))
                        {
                          CFNumberGetValue(v93, kCFNumberSInt32Type, valuePtr);
                        }
                      }

                      v122 = !v118;
                      if (LODWORD(valuePtr[0]) == v116)
                      {
                        v122 = 0;
                      }

                      if (!v122 && v115 >= 1)
                      {
                        break;
                      }

LABEL_218:
                      if (++v119 == v160)
                      {
                        goto LABEL_225;
                      }
                    }

                    v123 = 0;
                    while (1)
                    {
                      LODWORD(v170) = 0;
                      v124 = CFArrayGetTypeID();
                      if (v124 == CFGetTypeID(v95))
                      {
                        FigCFArrayGetInt32AtIndex();
                      }

                      else
                      {
                        v125 = CFNumberGetTypeID();
                        if (v125 == CFGetTypeID(v95))
                        {
                          CFNumberGetValue(v95, kCFNumberSInt32Type, &v170);
                        }
                      }

                      v126 = LODWORD(v170) == v117 || v118;
                      if (v126 == 1 && LODWORD(valuePtr[0]) && LODWORD(v170) && VTPixelTransferSessionCanTransfer(LODWORD(valuePtr[0]), LODWORD(v170), 0))
                      {
                        break;
                      }

                      if (v115 == ++v123)
                      {
                        goto LABEL_218;
                      }
                    }

                    if (v123 | v119)
                    {
                      v127 = 0;
                      v23 = v150;
                      v67 = v153;
                      if (v160 == 1)
                      {
                        v87 = v82;
                        v131 = 0;
                        v128 = v157;
                      }

                      else
                      {
                        v128 = v157;
                        if (v119)
                        {
                          v127 = FigCFArrayCreateMutableCopy();
                          v129 = CFArrayGetValueAtIndex(v127, v119);
                          if (v129)
                          {
                            v130 = v129;
                            CFRetain(v129);
                            CFArrayRemoveValueAtIndex(v127, v119);
                            CFArrayInsertValueAtIndex(v127, 0, v130);
                            CFRelease(v130);
                          }

                          else
                          {
                            CFArrayRemoveValueAtIndex(v127, v119);
                            CFArrayInsertValueAtIndex(v127, 0, 0);
                          }

                          v87 = CFDictionaryCreateMutableCopy(v153, 0, v82);
                          CFDictionarySetValue(v87, keya, v127);
                          v164 = v87;
                          if (v87)
                          {
                            CFRetain(v87);
                          }

                          CFRelease(v82);
                          v131 = v87;
                        }

                        else
                        {
                          v87 = v82;
                          v131 = 0;
                        }
                      }

                      v132 = 0;
                      if (v115 < 2)
                      {
                        v133 = 0;
                      }

                      else
                      {
                        v133 = 0;
                        if (v123)
                        {
                          v132 = FigCFArrayCreateMutableCopy();
                          v134 = CFArrayGetValueAtIndex(v132, v123);
                          if (v134)
                          {
                            v135 = v134;
                            CFRetain(v134);
                            CFArrayRemoveValueAtIndex(v132, v123);
                            CFArrayInsertValueAtIndex(v132, 0, v135);
                            CFRelease(v135);
                          }

                          else
                          {
                            CFArrayRemoveValueAtIndex(v132, v123);
                            CFArrayInsertValueAtIndex(v132, 0, 0);
                          }

                          v133 = CFDictionaryCreateMutableCopy(v153, 0, v128);
                          CFDictionarySetValue(v133, keya, v132);
                          v165 = v133;
                          if (v133)
                          {
                            CFRetain(v133);
                          }

                          if (v128)
                          {
                            CFRelease(v128);
                          }
                        }
                      }

                      if (v127)
                      {
                        CFRelease(v127);
                      }

                      if (v132)
                      {
                        CFRelease(v132);
                      }

                      if (v131)
                      {
                        CFRelease(v131);
                      }

                      v31 = v137;
                      if (v133)
                      {
                        CFRelease(v133);
                      }

                      v69 = v147;
                    }

                    else
                    {
LABEL_225:
                      v87 = v82;
                      v23 = v150;
                      v69 = v147;
                      v31 = v137;
                      v67 = v153;
                    }
                  }

                  else
                  {
                    v87 = v82;
                  }
                }

                else
                {
                  v87 = 0;
                }

                v83 = a14;
                v97 = CFDictionaryGetValue(v87, *MEMORY[0x1E6966130]);
                if (!v97)
                {
                  goto LABEL_148;
                }

                v98 = v97;
                v99 = CFGetTypeID(v97);
                if (v99 == CFArrayGetTypeID())
                {
                  FirstValue = FigCFArrayGetFirstValue();
                  if (!FirstValue)
                  {
                    goto LABEL_148;
                  }

                  v98 = FirstValue;
                }

                v101 = CFGetTypeID(v98);
                if (v101 == CFNumberGetTypeID())
                {
                  UInt32 = FigCFNumberGetUInt32();
                  v103 = VTPixelTransferSessionCanTransfer(UInt32, UInt32, 1) == 1;
LABEL_149:
                  if (a9 == 1 && v103)
                  {
                    v104 = v31;
                    v105 = FigCFDictionaryGetCount();
                    v85 = CFDictionaryCreateMutableCopy(v67, v105, v87);
                    v106 = v165;
                    v107 = a12;
                    if (v165)
                    {
                      v108 = *MEMORY[0x1E6966208];
                      CFDictionaryGetValue(v87, *MEMORY[0x1E6966208]);
                      v109 = CFDictionaryGetValue(v106, v108);
                      if (v109)
                      {
                        CFDictionarySetValue(v85, v108, v109);
                      }

                      v110 = *MEMORY[0x1E69660B8];
                      CFDictionaryGetValue(v87, *MEMORY[0x1E69660B8]);
                      v111 = CFDictionaryGetValue(v106, v110);
                      if (v111)
                      {
                        CFDictionarySetValue(v85, v110, v111);
                      }

                      v69 = v147;
                      if (!FigCFEqual())
                      {
                        CFDictionaryRemoveValue(v85, *MEMORY[0x1E6966088]);
                        CFDictionaryRemoveValue(v85, *MEMORY[0x1E6966090]);
                      }

                      v107 = a12;
                      if (!FigCFEqual())
                      {
                        CFDictionaryRemoveValue(v85, *MEMORY[0x1E69660A0]);
                        CFDictionaryRemoveValue(v85, *MEMORY[0x1E6966078]);
                      }
                    }

                    v83 = vtBuildPixelBufferPoolsCommon(v153, v85, v87, v138, a5, *MEMORY[0x1E695E4D0], v141, v139, 0, v152, a11, v107, a13, a14);
                    a3 = 0;
                    v31 = v104;
                    goto LABEL_258;
                  }

                  if (v140)
                  {
                    a3 = CFStringCreateWithFormat(v67, 0, @"%@_1", v140);
                    if (!a3)
                    {
                      vtBuildPixelBufferPoolsCommon_cold_7(valuePtr);
LABEL_230:
                      v85 = 0;
                      v83 = LODWORD(valuePtr[0]);
                      goto LABEL_258;
                    }
                  }

                  else
                  {
                    a3 = 0;
                  }

                  if (v142)
                  {
                    v112 = vtCreateNamedPixelBufferPool(v67, v69, v165, a3, &poolOut);
                    if (!v112)
                    {
                      goto LABEL_167;
                    }
                  }

                  else
                  {
                    v161 = 0;
                    v112 = vtCreateOrReuseSharedPixelBufferPool(v67, v69, v165, v162, a3, &poolOut, &v161);
                    if (!v112)
                    {
LABEL_167:
                      if (a3)
                      {
                        CFRelease(a3);
                      }

                      CVPixelBufferPoolRelease(*a11);
                      *a11 = poolOut;
                      if (a13)
                      {
                        *a13 = v161;
                      }

                      if (!a12)
                      {
                        a3 = 0;
                        v85 = 0;
                        v83 = 0;
LABEL_258:
                        v74 = 0;
                        goto LABEL_259;
                      }

                      if (v140)
                      {
                        a3 = CFStringCreateWithFormat(v67, 0, @"%@_2", v140);
                        if (!a3)
                        {
                          vtBuildPixelBufferPoolsCommon_cold_9(valuePtr);
                          goto LABEL_230;
                        }
                      }

                      else
                      {
                        a3 = 0;
                      }

                      if (v142)
                      {
                        v113 = vtCreateNamedPixelBufferPool(v67, 0, v87, a3, &poolOut);
                        if (!v113)
                        {
                          goto LABEL_179;
                        }
                      }

                      else
                      {
                        v161 = 0;
                        v113 = vtCreateOrReuseSharedPixelBufferPool(v67, 0, v87, v162, a3, &poolOut, &v161);
                        if (!v113)
                        {
LABEL_179:
                          if (a3)
                          {
                            CFRelease(a3);
                          }

                          CVPixelBufferPoolRelease(*a12);
                          *a12 = poolOut;
                          if (a14)
                          {
                            a3 = 0;
                            v85 = 0;
                            v83 = 0;
                            *a14 = v161;
                            goto LABEL_258;
                          }

LABEL_257:
                          a3 = 0;
                          v85 = 0;
                          goto LABEL_258;
                        }
                      }

                      vtBuildPixelBufferPoolsCommon_cold_10(v113, valuePtr);
                      goto LABEL_230;
                    }
                  }

                  vtBuildPixelBufferPoolsCommon_cold_8(v112, valuePtr);
                  goto LABEL_230;
                }

LABEL_148:
                v103 = 1;
                goto LABEL_149;
              }

              if (cf1 != 0)
              {
                v49 = *MEMORY[0x1E6965E80];
                if (!CFDictionaryGetValue(resolvedDictionaryOut, *MEMORY[0x1E6965E80]))
                {
                  v50 = CFDictionaryCreateMutableCopy(0, 0, resolvedDictionaryOut);
                  if (!v50)
                  {
                    goto LABEL_102;
                  }

                  v51 = v50;
                  if (*(&cf1 + 1))
                  {
                    CFDictionaryAddValue(v50, v49, *(&cf1 + 1));
                  }

                  if (cf1)
                  {
                    CFDictionaryAddValue(v51, *MEMORY[0x1E6965F98], cf1);
                  }

                  CFRelease(resolvedDictionaryOut);
                  resolvedDictionaryOut = v51;
                }
              }

              if (!v47)
              {
                v52 = FigCFDictionaryCreateMutableCopy();
                if (!v52)
                {
                  vtBuildPixelBufferPoolsCommon_cold_5();
                  goto LABEL_102;
                }

                v53 = v52;
                FigCFDictionarySetValue();
                if (resolvedDictionaryOut)
                {
                  CFRelease(resolvedDictionaryOut);
                }

                resolvedDictionaryOut = v53;
              }

              if (v34)
              {
                LODWORD(valuePtr[0]) = 0;
                if (CFDictionaryGetValue(resolvedDictionaryOut, *MEMORY[0x1E69660D8]))
                {
                  FigCFDictionaryGetIntIfPresent();
                  if (!LODWORD(valuePtr[0]))
                  {
                    v54 = FigCFDictionaryCreateMutableCopy();
                    if (v54)
                    {
                      v55 = v54;
                      v56 = FigCFDictionaryCreateMutableCopy();
                      if (v56)
                      {
                        v66 = v56;
                        FigCFDictionarySetInt();
                        FigCFDictionarySetValue();
                        CFRelease(v66);
                        if (resolvedDictionaryOut)
                        {
                          CFRelease(resolvedDictionaryOut);
                        }

                        resolvedDictionaryOut = v55;
                      }

                      else
                      {
                        CFRelease(v55);
                      }
                    }
                  }
                }
              }
            }

LABEL_102:
            if (!resolvedDictionaryOut)
            {
              goto LABEL_103;
            }

            v73 = vtCreateUsablePixelBufferAttributes(v153, a5, resolvedDictionaryOut, 0, 0, &v166, 0);
            v23 = v150;
            v69 = v147;
            if (v73)
            {
              v83 = v73;
LABEL_121:
              v74 = 0;
              a3 = 0;
              v85 = 0;
LABEL_259:
              PrioritizedPixelFormatListByAlpha = 0;
              goto LABEL_260;
            }

            v74 = v166;
            LODWORD(valuePtr[0]) = vtGetFirstPixelFormatFromPixelBufferAttributes(v166, v141, v145, v152);
            if (!v74)
            {
              v80 = a12;
              goto LABEL_127;
            }

            v75 = *MEMORY[0x1E6966130];
            v76 = CFDictionaryGetValue(v74, *MEMORY[0x1E6966130]);
            if (v76 && (v77 = v76, v78 = CFArrayGetTypeID(), v78 == CFGetTypeID(v77)) && CFArrayGetCount(v77) != 1)
            {
              v79 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
              v172.length = CFArrayGetCount(v77);
              v172.location = 0;
              if (CFArrayContainsValue(v77, v172, v79))
              {
                v74 = CFDictionaryCreateMutableCopy(v153, 0, v74);
                CFDictionarySetValue(v74, v75, v79);
                v80 = a12;
                if (!v79)
                {
                  goto LABEL_127;
                }

                goto LABEL_113;
              }
            }

            else
            {
              v79 = 0;
            }

            v80 = a12;
            v74 = CFRetain(v74);
            if (!v79)
            {
LABEL_127:
              if (v142)
              {
                v88 = vtCreateNamedPixelBufferPool(v153, v147, v74, v140, &poolOut);
                if (!v88)
                {
LABEL_129:
                  CVPixelBufferPoolRelease(*a11);
                  *a11 = poolOut;
                  if (a13)
                  {
                    *a13 = v161;
                  }

                  if (v80)
                  {
                    CVPixelBufferPoolRelease(*v80);
                    a3 = 0;
                    v85 = 0;
                    PrioritizedPixelFormatListByAlpha = 0;
                    v83 = 0;
                    *v80 = 0;
                  }

                  else
                  {
                    a3 = 0;
                    v85 = 0;
                    PrioritizedPixelFormatListByAlpha = 0;
                    v83 = 0;
                  }

LABEL_260:
                  if (v23)
                  {
                    CFRelease(v23);
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

                  if (PrioritizedPixelFormatListByAlpha)
                  {
                    goto LABEL_265;
                  }

                  goto LABEL_266;
                }
              }

              else
              {
                v161 = 0;
                v88 = vtCreateOrReuseSharedPixelBufferPool(v153, v147, v74, v162, v140, &poolOut, &v161);
                if (!v88)
                {
                  goto LABEL_129;
                }
              }

              vtBuildPixelBufferPoolsCommon_cold_6(v88, valuePtr);
              a3 = 0;
              v85 = 0;
              PrioritizedPixelFormatListByAlpha = 0;
LABEL_286:
              v83 = LODWORD(valuePtr[0]);
              goto LABEL_260;
            }

LABEL_113:
            CFRelease(v79);
            goto LABEL_127;
          }
        }

LABEL_21:
        v142 = 1;
        goto LABEL_22;
      }

      cf = 0;
    }

    else
    {
      cf = 0;
      a3 = v62;
    }

    v23 = v151;
    goto LABEL_16;
  }

  vtBuildPixelBufferPoolsCommon_cold_2(valuePtr);
  v74 = 0;
  a3 = 0;
  v69 = 0;
  v85 = 0;
  v31 = 0;
  v83 = LODWORD(valuePtr[0]);
  if (PrioritizedPixelFormatListByAlpha)
  {
LABEL_265:
    CFRelease(PrioritizedPixelFormatListByAlpha);
  }

LABEL_266:
  if (v85)
  {
    CFRelease(v85);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (resolvedDictionaryOut)
  {
    CFRelease(resolvedDictionaryOut);
  }

  if (v166)
  {
    CFRelease(v166);
  }

  if (v74)
  {
    CFRelease(v74);
  }

  if (v165)
  {
    CFRelease(v165);
  }

  if (v164)
  {
    CFRelease(v164);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (a3)
  {
    CFRelease(a3);
  }

  return v83;
}

uint64_t VTCreatePixelBufferPoolAttributesWithName(const __CFAllocator *a1, uint64_t a2, const __CFString *cf, __CFDictionary **a4)
{
  if (!cf || (v5 = cf, v8 = CFGetTypeID(cf), v8 != CFStringGetTypeID()))
  {
    VTCreatePixelBufferPoolAttributesWithName_cold_3(&v15);
    return v15;
  }

  if (!a4)
  {
    VTCreatePixelBufferPoolAttributesWithName_cold_2(&v14);
    return v14;
  }

  if (a2)
  {
    v5 = CFStringCreateWithFormat(a1, 0, @"%d:%@", a2, v5);
  }

  else
  {
    CFRetain(v5);
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    VTCreatePixelBufferPoolAttributesWithName_cold_1(&v13);
    v11 = v13;
    if (!v5)
    {
      return v11;
    }

    goto LABEL_9;
  }

  v10 = Mutable;
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6966170], v5);
  v11 = 0;
  *a4 = v10;
  if (v5)
  {
LABEL_9:
    CFRelease(v5);
  }

  return v11;
}

void vtAppendNicely(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v6 = *a3;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    context[1] = 0;
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppend(Mutable, @"[");
    context[0] = Mutable;
    CFDictionaryApplyFunction(a2, vtAppendNicely, context);
    CFStringAppend(Mutable, @"]");
    v9 = 0;
    a2 = Mutable;
  }

  else
  {
    v10 = CFArrayGetTypeID();
    if (v10 == CFGetTypeID(a2))
    {
      Count = CFArrayGetCount(a2);
      v9 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      CFStringAppend(v9, @"[");
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
          if (i)
          {
            CFStringAppend(v9, @", ");
          }

          CFStringAppendFormat(v9, 0, @"%@", ValueAtIndex);
        }
      }

      CFStringAppend(v9, @"]");
      Mutable = 0;
      a2 = v9;
    }

    else
    {
      v9 = 0;
      Mutable = 0;
    }
  }

  if (*(a3 + 8))
  {
    CFStringAppend(v6, @", ");
  }

  CFStringAppendFormat(v6, 0, @"%@ = %@", a1, a2);
  *(a3 + 8) = 1;
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }
}

BOOL vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    if (CFDictionaryGetValue(result, *MEMORY[0x1E6966130]))
    {
      return 1;
    }

    else
    {
      v2 = 0;
      do
      {
        v3 = v2;
        if (v2 == 2)
        {
          break;
        }

        Value = CFDictionaryGetValue(v1, **(&vtDoesPixelBufferAttributesDictionaryConstrainPixelFormatSelection_sCVKeysThatConstrainPixelFormatSelection + v2 + 1));
        v2 = v3 + 1;
      }

      while (!Value);
      return v3 < 2;
    }
  }

  return result;
}

const __CFDictionary *vtGetFirstPixelFormatFromPixelBufferAttributes(const __CFDictionary *result, int a2, int a3, int a4)
{
  valuePtr = 0;
  if (result)
  {
    result = CFDictionaryGetValue(result, *MEMORY[0x1E6966130]);
    if (result)
    {
      v6 = result;
      v7 = CFGetTypeID(result);
      if (v7 == CFArrayGetTypeID())
      {
        if (!CFArrayGetCount(v6))
        {
          return valuePtr;
        }

        if (a3 && CFArrayGetCount(v6) >= 1)
        {
          v8 = 0;
          v9 = *MEMORY[0x1E69662D8];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
            if (ValueAtIndex)
            {
              v11 = ValueAtIndex;
              v12 = CFGetTypeID(ValueAtIndex);
              if (v12 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
                DescriptionWithPixelFormatType = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
                if (DescriptionWithPixelFormatType)
                {
                  Value = CFDictionaryGetValue(DescriptionWithPixelFormatType, v9);
                  if (Value)
                  {
                    v15 = Value;
                    v16 = CFGetTypeID(Value);
                    if (v16 == CFArrayGetTypeID())
                    {
                      CFArrayGetValueAtIndex(v15, 0);
                      FigCFDictionaryGetInt32IfPresent();
                    }
                  }
                }
              }
            }

            ++v8;
          }

          while (v8 < CFArrayGetCount(v6));
        }

        if (a2 && CFArrayGetCount(v6) >= 1)
        {
          v17 = 0;
          v18 = *MEMORY[0x1E69660C8];
          v19 = *MEMORY[0x1E69660D0];
          do
          {
            v20 = CFArrayGetValueAtIndex(v6, v17);
            if (v20)
            {
              v21 = v20;
              v22 = CFGetTypeID(v20);
              if (v22 == CFNumberGetTypeID())
              {
                CFNumberGetValue(v21, kCFNumberSInt32Type, &valuePtr);
                v23 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
                if (v23)
                {
                  v24 = v23;
                  if (CFDictionaryContainsKey(v23, v18))
                  {
                    if (!CFDictionaryContainsKey(v24, v19) && VTPixelTransferSessionCanTransfer(valuePtr, valuePtr, 0))
                    {
                      return valuePtr;
                    }
                  }
                }
              }
            }
          }

          while (++v17 < CFArrayGetCount(v6));
        }

        valuePtr = 0;
        v6 = CFArrayGetValueAtIndex(v6, 0);
        if (!v6)
        {
          return valuePtr;
        }
      }

      else
      {
        v25 = CFGetTypeID(v6);
        if (v25 != CFNumberGetTypeID())
        {
          return valuePtr;
        }
      }

      v26 = CFGetTypeID(v6);
      if (v26 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, &valuePtr);
      }

      return valuePtr;
    }
  }

  return result;
}

uint64_t vtCreateNamedPixelBufferPool(CFAllocatorRef allocator, CFTypeRef cf, CFDictionaryRef pixelBufferAttributes, const void *a4, CVPixelBufferPoolRef *poolOut)
{
  if (a4)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      vtCreateNamedPixelBufferPool_cold_1(&v13);
      return v13;
    }

    v10 = MutableCopy;
    CFDictionarySetValue(MutableCopy, *MEMORY[0x1E6966170], a4);
    v11 = CVPixelBufferPoolCreate(allocator, v10, pixelBufferAttributes, poolOut);
LABEL_4:
    CFRelease(v10);
    return v11;
  }

  if (cf)
  {
    v10 = CFRetain(cf);
    v11 = CVPixelBufferPoolCreate(allocator, v10, pixelBufferAttributes, poolOut);
    if (!v10)
    {
      return v11;
    }

    goto LABEL_4;
  }

  return CVPixelBufferPoolCreate(allocator, 0, pixelBufferAttributes, poolOut);
}

uint64_t vtCreateReorderedPixelBufferAttributes(const __CFAllocator *a1, CFDictionaryRef theDict, const __CFDictionary *a3, __CFDictionary **a4)
{
  if (!theDict)
  {
    v29 = 0;
LABEL_65:
    v62 = 0;
    *a4 = v29;
    return v62;
  }

  v8 = *MEMORY[0x1E6966130];
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E6966130]);
  if (!Value)
  {
    goto LABEL_64;
  }

  v10 = Value;
  TypeID = CFArrayGetTypeID();
  v12 = CFGetTypeID(v10);
  if (!a3)
  {
    goto LABEL_64;
  }

  if (TypeID != v12)
  {
    goto LABEL_64;
  }

  v13 = CFDictionaryGetValue(a3, v8);
  if (!v13)
  {
    goto LABEL_64;
  }

  v14 = v13;
  v15 = CFGetTypeID(v13);
  if (v15 != CFNumberGetTypeID())
  {
    v16 = CFGetTypeID(v14);
    if (v16 != CFArrayGetTypeID())
    {
      vtCreateReorderedPixelBufferAttributes_cold_1(&v84);
      return v84;
    }
  }

  Count = CFArrayGetCount(v10);
  if (Count < 2 || (v18 = Count, (MutableCopy = CFArrayCreateMutableCopy(a1, 0, v10)) == 0))
  {
LABEL_64:
    v29 = CFRetain(theDict);
    goto LABEL_65;
  }

  v20 = MutableCopy;
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
LABEL_63:
    CFRelease(v20);
    goto LABEL_64;
  }

  v82 = Mutable;
  v22 = CFArrayGetTypeID();
  theArray = v20;
  if (v22 == CFGetTypeID(v14))
  {
    v23 = CFArrayGetCount(v14);
    if (v23 >= 1)
    {
      v24 = v23;
      v25 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, v25);
        v27 = CFNumberGetTypeID();
        if (v27 == CFGetTypeID(ValueAtIndex))
        {
          v85.location = 0;
          v85.length = v18;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(theArray, v85, ValueAtIndex);
          if (FirstIndexOfValue != -1)
          {
            break;
          }
        }

        if (v24 == ++v25)
        {
          goto LABEL_21;
        }
      }

      v48 = FirstIndexOfValue;
      v32 = v82;
      CFArrayAppendValue(v82, ValueAtIndex);
      v33 = theArray;
      v34 = theArray;
      v35 = v48;
LABEL_34:
      CFArrayRemoveValueAtIndex(v34, v35);
      goto LABEL_47;
    }
  }

  else
  {
    v86.location = 0;
    v86.length = v18;
    v30 = CFArrayGetFirstIndexOfValue(v20, v86, v14);
    if (v30 != -1)
    {
      v31 = v30;
      v32 = v82;
      CFArrayAppendValue(v82, v14);
      v33 = v20;
      v34 = v20;
      v35 = v31;
      goto LABEL_34;
    }
  }

LABEL_21:
  v36 = CFArrayGetTypeID();
  if (v36 != CFGetTypeID(v14))
  {
    SimilarPixelFormat = vtCreateSimilarPixelFormat(v14);
    if (SimilarPixelFormat)
    {
      v43 = SimilarPixelFormat;
      v88.location = 0;
      v88.length = v18;
      v46 = CFArrayGetFirstIndexOfValue(theArray, v88, SimilarPixelFormat);
      v32 = v82;
      if (v46 != -1)
      {
        v47 = v46;
        goto LABEL_46;
      }

      CFRelease(v43);
    }

LABEL_36:
    v49 = CFNumberGetTypeID();
    if (v49 == CFGetTypeID(v14))
    {
      PixelFormatColorSpace = vtGetPixelFormatColorSpace(v14);
      PixelFormatRange = vtGetPixelFormatRange(v14);
      PixelFormatBitsPerComponent = vtGetPixelFormatBitsPerComponent(v14);
      if (PixelFormatColorSpace)
      {
LABEL_53:
        v80 = PixelFormatColorSpace;
        if (PixelFormatBitsPerComponent < 1)
        {
          v64 = 0;
        }

        else
        {
          v63 = 0;
          v64 = 0;
          v65 = v18;
          do
          {
            v78 = v65;
            v66 = CFArrayGetValueAtIndex(theArray, v63);
            v67 = vtGetPixelFormatBitsPerComponent(v66);
            if (v67 >= PixelFormatBitsPerComponent)
            {
              v65 = v78;
            }

            else
            {
              CFArrayRemoveValueAtIndex(theArray, v63);
              CFArrayAppendValue(theArray, v66);
              --v63;
              v65 = v78 - 1;
            }

            if (v64 <= v67)
            {
              v64 = v67;
            }

            ++v63;
          }

          while (v63 < v65);
        }

        if (v64 < PixelFormatBitsPerComponent)
        {
          v69 = 0;
          v70 = v18;
          do
          {
            v71 = CFArrayGetValueAtIndex(theArray, v69);
            if (vtGetPixelFormatBitsPerComponent(v71) < v64)
            {
              CFArrayRemoveValueAtIndex(theArray, v69);
              CFArrayAppendValue(theArray, v71);
              --v69;
              --v70;
            }

            ++v69;
          }

          while (v69 < v70);
        }

        v32 = v82;
        if (PixelFormatRange && v80 >= 2)
        {
          v72 = 0;
          v73 = v18;
          do
          {
            v74 = CFArrayGetValueAtIndex(theArray, v72);
            if (vtGetPixelFormatRange(v74) != PixelFormatRange)
            {
              CFArrayRemoveValueAtIndex(theArray, v72);
              CFArrayAppendValue(theArray, v74);
              --v72;
              --v73;
            }

            ++v72;
          }

          while (v72 < v73);
        }

        v75 = 0;
        v76 = 0;
        do
        {
          v77 = CFArrayGetValueAtIndex(theArray, v75);
          if (vtGetPixelFormatColorSpace(v77) == v80)
          {
            CFArrayInsertValueAtIndex(v82, v76++, v77);
          }

          else
          {
            CFArrayAppendValue(v82, v77);
          }

          ++v75;
        }

        while (v18 != v75);
        goto LABEL_48;
      }
    }

    else
    {
      v50 = CFArrayGetTypeID();
      if (v50 == CFGetTypeID(v14))
      {
        v51 = CFArrayGetCount(v14);
        if (v51 >= 1)
        {
          v52 = v51;
          v53 = 0;
          while (1)
          {
            v54 = CFArrayGetValueAtIndex(v14, v53);
            v55 = CFNumberGetTypeID();
            if (v55 == CFGetTypeID(v54))
            {
              v56 = vtGetPixelFormatColorSpace(v54);
              if (v56)
              {
                break;
              }
            }

            if (v52 == ++v53)
            {
              goto LABEL_62;
            }
          }

          PixelFormatColorSpace = v56;
          PixelFormatRange = vtGetPixelFormatRange(v54);
          PixelFormatBitsPerComponent = vtGetPixelFormatBitsPerComponent(v54);
          goto LABEL_53;
        }
      }
    }

LABEL_62:
    CFRelease(v82);
    v20 = theArray;
    goto LABEL_63;
  }

  v37 = CFArrayGetCount(v14);
  if (v37 < 1)
  {
    goto LABEL_36;
  }

  v38 = v37;
  v39 = 0;
  while (1)
  {
    v40 = CFArrayGetValueAtIndex(v14, v39);
    v41 = CFNumberGetTypeID();
    if (v41 != CFGetTypeID(v40))
    {
      goto LABEL_28;
    }

    v42 = vtCreateSimilarPixelFormat(v40);
    if (!v42)
    {
      goto LABEL_28;
    }

    v43 = v42;
    v87.location = 0;
    v87.length = v18;
    v44 = CFArrayGetFirstIndexOfValue(theArray, v87, v42);
    if (v44 != -1)
    {
      break;
    }

    CFRelease(v43);
LABEL_28:
    if (v38 == ++v39)
    {
      goto LABEL_36;
    }
  }

  v47 = v44;
  v32 = v82;
LABEL_46:
  CFArrayAppendValue(v32, v43);
  v33 = theArray;
  CFArrayRemoveValueAtIndex(theArray, v47);
  CFRelease(v43);
LABEL_47:
  v89.length = CFArrayGetCount(v33);
  v89.location = 0;
  CFArrayAppendArray(v32, v33, v89);
LABEL_48:
  if (CFArrayGetCount(v32) <= 0)
  {
    goto LABEL_62;
  }

  CFRelease(theArray);
  v58 = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  if (v58)
  {
    v59 = v58;
    v60 = v8;
    v61 = v82;
    CFDictionarySetValue(v58, v60, v82);
    v62 = 0;
    *a4 = v59;
  }

  else
  {
    v62 = 4294954392;
    v61 = v82;
  }

  CFRelease(v61);
  return v62;
}

void vtAllowTransferCapabilityCommonOnce_0()
{
  v0 = CFPreferencesCopyValue(@"allowMetalTransferSession", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  sAllowMetalTransferSession = FigCFEqual() != 0;
  if (v0)
  {

    CFRelease(v0);
  }
}

uint64_t vtPixelFormatContainsAlpha(const __CFNumber *a1)
{
  v4 = 0;
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  v1 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x1E695E480], valuePtr);
  FigCFDictionaryGetBooleanIfPresent();
  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

uint64_t vtAddNumberToCFDictionary(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    return 4294954392;
  }

  v6 = v5;
  CFDictionaryAddValue(a1, a2, v5);
  CFRelease(v6);
  return 0;
}

BOOL vtIsPixelFormatCompatibleWithAttributes(void *a1, uint64_t a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  resolvedDictionaryOut = 0;
  if (!a2)
  {
    return 1;
  }

  v3 = *MEMORY[0x1E6966130];
  v10 = 0;
  keys[0] = v3;
  values = a1;
  v4 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  values = v4;
  v10 = a2;
  v5 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
  v6 = CVPixelBufferCreateResolvedAttributesDictionary(0, v5, &resolvedDictionaryOut);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (resolvedDictionaryOut)
  {
    CFRelease(resolvedDictionaryOut);
  }

  return v6 == 0;
}

uint64_t vtCreateSimilarPixelFormat(const __CFNumber *a1)
{
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr == 1111970369 || valuePtr == 32)
  {
    return FigCFNumberCreateSInt32();
  }

  else
  {
    return 0;
  }
}

uint64_t vtInitializeVTPSharedPool(uint64_t a1)
{
  result = FigSimpleMutexCreate();
  _MergedGlobals_5 = result;
  return result;
}

CFIndex OUTLINED_FUNCTION_6_1(CFIndex range)
{
  v4.length = range;
  v4.location = 0;

  return CFArrayGetFirstIndexOfValue(v1, v4, v2);
}

OSStatus VTSessionCopySupportedPropertyDictionary(VTSessionRef session, CFDictionaryRef *supportedPropertyDictionaryOut)
{
  if (session)
  {
    v5 = CFGetTypeID(session);
    CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v5);
    if (supportedPropertyDictionaryOut)
    {
      if (CallbacksWithTypeID)
      {
        v7 = CallbacksWithTypeID[1];

        return v7(session, supportedPropertyDictionaryOut);
      }

      v9 = v2;
      v10 = 152;
    }

    else
    {
      v9 = v2;
      v10 = 148;
    }
  }

  else
  {
    v9 = v2;
    v10 = 144;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954394, "(Fig)", v10, v9);
}

OSStatus VTSessionCopySerializableProperties(VTSessionRef session, CFAllocatorRef allocator, CFDictionaryRef *dictionaryOut)
{
  if (session)
  {
    v7 = CFGetTypeID(session);
    CallbacksWithTypeID = VTSessionGetCallbacksWithTypeID(v7);
    if (dictionaryOut)
    {
      if (CallbacksWithTypeID)
      {
        v9 = CallbacksWithTypeID[5];

        return v9(session, allocator, dictionaryOut);
      }

      v11 = v3;
      v12 = 251;
    }

    else
    {
      v11 = v3;
      v12 = 247;
    }
  }

  else
  {
    v11 = v3;
    v12 = 243;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954394, "(Fig)", v12, v11);
}

uint64_t VTSessionSetBooleanProperty(const void *a1, const __CFString *a2, int a3)
{
  v3 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  return VTSessionSetProperty(a1, a2, *v3);
}

uint64_t VTSessionGetBooleanIfPresent(const void *a1, const __CFString *a2, char *a3)
{
  propertyValueOut = 0;
  v4 = VTSessionCopyProperty(a1, a2, *MEMORY[0x1E695E480], &propertyValueOut);
  v5 = propertyValueOut;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = propertyValueOut == 0;
  }

  if (v6)
  {
    v7 = 0;
    if (!propertyValueOut)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v8 = CFGetTypeID(propertyValueOut);
  if (v8 == CFBooleanGetTypeID())
  {
    if (FigCFEqual())
    {
      v9 = 1;
      if (!a3)
      {
LABEL_12:
        v7 = 1;
        goto LABEL_14;
      }
    }

    else
    {
      FigCFEqual();
      v9 = 0;
      if (!a3)
      {
        goto LABEL_12;
      }
    }

    *a3 = v9;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_14:
  v5 = propertyValueOut;
  if (propertyValueOut)
  {
LABEL_15:
    CFRelease(v5);
  }

  return v7;
}