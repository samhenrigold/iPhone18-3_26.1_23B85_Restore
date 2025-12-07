int16x8_t *sub_1001F6930(int16x8_t *result, unint64_t a2, int16x8_t *a3, unint64_t a4, int16x8_t *a5, unint64_t a6, uint64_t a7, int a8, int32x4_t q0_0, double a10, int32x4_t a11, int32x4_t a12, int64x2_t a13, double *a9)
{
  if (a8)
  {
    v16 = a8;
    v17 = a5;
    v18 = a3;
    v19 = result;
    v20 = 0;
    *v15.i32 = *a9;
    v21 = a9[1];
    q0_0.i64[0] = a9[2];
    *v14.i32 = *q0_0.i64;
    v22 = a7 - 4;
    v23 = a7;
    v80 = a5 - result;
    v78 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v79 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v77 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v72 = a5 - a3;
    v71 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a4 & 0xFFFFFFFFFFFFFFFELL);
    v75 = &a5->i64[1];
    v76 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v74 = &result->i64[1];
    v73 = &a3->i64[1];
    v83 = 2 * (a2 >> 1);
    v84 = 2 * (a6 >> 1);
    v81 = 2 * (a4 >> 1);
    v24 = &a5->i8[4];
    v89 = a7;
    v88 = *v15.i32;
    v86 = *v14.i32;
    v87 = v21;
    v85 = vdupq_lane_s32(v15, 0);
    v82 = vdupq_lane_s32(v14, 0);
    do
    {
      q0_0.i32[0] = v15.i32[0];
      a11.i32[0] = v14.i32[0];
      result = sub_1001FA538(q0_0, v21, *a11.i8, *a12.i64, a13, v90, v19, v18, v17, a7);
      *v14.i32 = v86;
      v21 = v87;
      *v15.i32 = v88;
      if (result <= v22)
      {
        v26 = result;
        v27 = v22 - result;
        if (v27 <= 0x1B)
        {
          goto LABEL_6;
        }

        v42 = v27 >> 2;
        v43 = result;
        v44 = v43 * 2 + 8 * v42;
        v45 = v75 + v79 * v20 + v44;
        v46 = &v17->i8[v43 * 2] >= v73 + v76 * v20 + v44 || v18 + 2 * result >= v45;
        v47 = !v46;
        if (v19 + 2 * result < v45 && &v17->i8[v43 * 2] < v74 + v78 * v20 + v44)
        {
          goto LABEL_6;
        }

        if (v47)
        {
          goto LABEL_6;
        }

        v49 = v42 + 1;
        v26 = result + 4 * (v49 & 0x7FFFFFFFFFFFFFF8);
        v50 = v49 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v51 = &v18->i16[v43];
          v91 = vld4q_s16(v51);
          v52 = &v19->i16[v43];
          v92 = vld4q_s16(v52);
          v53 = vcvtq_f32_s32(vmovl_s16(*v91.val[1].i8));
          v54 = vcvtq_f32_s32(vmovl_high_s16(v91.val[1]));
          v55 = vcvtq_f32_s32(vmovl_s16(*v91.val[2].i8));
          v56 = vcvtq_f32_s32(vmovl_high_s16(v91.val[2]));
          v91.val[1] = vmlaq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v91.val[0].i8)), v87), v85, vcvtq_f32_s32(vmovl_s16(*v92.val[0].i8)));
          v92.val[0] = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v91.val[0])), v87), v85, vcvtq_f32_s32(vmovl_high_s16(v92.val[0]))), v82);
          v57 = vaddq_f32(v91.val[1], v82);
          v91.val[1] = vaddq_f32(vmlaq_f32(vmulq_n_f32(v54, v87), v85, vcvtq_f32_s32(vmovl_high_s16(v92.val[1]))), v82);
          v91.val[2] = vaddq_f32(vmlaq_f32(vmulq_n_f32(v53, v87), v85, vcvtq_f32_s32(vmovl_s16(*v92.val[1].i8))), v82);
          v58 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v56, v87), v85, vcvtq_f32_s32(vmovl_high_s16(v92.val[2]))), v82);
          v59 = vaddq_f32(vmlaq_f32(vmulq_n_f32(v55, v87), v85, vcvtq_f32_s32(vmovl_s16(*v92.val[2].i8))), v82);
          v60 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v91.val[3])), v87), v85, vcvtq_f32_s32(vmovl_high_s16(v92.val[3]))), v82);
          v61 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v91.val[3].i8)), v87), v85, vcvtq_f32_s32(vmovl_s16(*v92.val[3].i8))), v82);
          v62 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8)));
          a13 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))));
          v93.val[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v91.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v91.val[2], v91.val[2], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v91.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v91.val[1], v91.val[1], 8uLL))))));
          q0_0 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL)))));
          a11 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL)))));
          a12 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))));
          v93.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v92.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v92.val[0], v92.val[0], 8uLL))))));
          v25 = vuzp1q_s32(v62, a13);
          v93.val[3] = vqmovn_high_s32(vqmovn_s32(v25), a12);
          v93.val[2] = vqmovn_high_s32(vqmovn_s32(a11), q0_0);
          v63 = &v17->i16[v43];
          vst4q_s16(v63, v93);
          v43 += 32;
          v50 -= 8;
        }

        while (v50);
        result = (result + 4 * (v49 & 0x7FFFFFFFFFFFFFF8));
        if (v49 != (v49 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_6:
          v28 = 2 * v26;
          v29 = v24;
          v30 = v18;
          v31 = v19;
          result = v26;
          do
          {
            q0_0.i16[0] = v31->i16[v26];
            q0_0.i64[0] = vmovl_s16(*q0_0.i8).u64[0];
            v25.i16[0] = v30->i16[v26];
            v25.i64[0] = vmovl_s16(*v25.i8).u64[0];
            *v25.i32 = v87 * v25.i32[0];
            *q0_0.i32 = rintf((*v25.i32 + (q0_0.i32[0] * v88)) + v86);
            v32 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v32) = -32768;
            }

            v33 = &v31->i8[v28];
            q0_0.i16[0] = v31->i16[v28 / 2 + 1];
            q0_0.i64[0] = vmovl_s16(*q0_0.i8).u64[0];
            v34 = &v30->i8[v28];
            v25.i16[0] = v30->i16[v28 / 2 + 1];
            v25.i64[0] = vmovl_s16(*v25.i8).u64[0];
            *v25.i32 = v87 * v25.i32[0];
            *q0_0.i32 = rintf((*v25.i32 + (q0_0.i32[0] * v88)) + v86);
            v35 = *q0_0.i32;
            if (v32 >= 0x7FFF)
            {
              LOWORD(v32) = 0x7FFF;
            }

            if (v35 <= -32768)
            {
              LODWORD(v35) = -32768;
            }

            if (v35 >= 0x7FFF)
            {
              LOWORD(v35) = 0x7FFF;
            }

            v36 = &v29[v28];
            *(v36 - 2) = v32;
            *(v36 - 1) = v35;
            q0_0.i16[0] = *(v33 + 2);
            q0_0.i64[0] = vmovl_s16(*q0_0.i8).u64[0];
            v25.i16[0] = *(v34 + 2);
            v25.i64[0] = vmovl_s16(*v25.i8).u64[0];
            *v25.i32 = v87 * v25.i32[0];
            *q0_0.i32 = rintf((*v25.i32 + (q0_0.i32[0] * v88)) + v86);
            v37 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v37) = -32768;
            }

            if (v37 >= 0x7FFF)
            {
              LOWORD(v37) = 0x7FFF;
            }

            q0_0.i16[0] = *(v33 + 3);
            q0_0 = vmovl_s16(*q0_0.i8);
            v25.i16[0] = *(v34 + 3);
            v25.i64[0] = vmovl_s16(*v25.i8).u64[0];
            *v25.i32 = v87 * v25.i32[0];
            *q0_0.i32 = rintf((*v25.i32 + (q0_0.i32[0] * v88)) + v86);
            v38 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v38) = -32768;
            }

            if (v38 >= 0x7FFF)
            {
              LOWORD(v38) = 0x7FFF;
            }

            *&v29[2 * v26] = v37;
            result = (result + 4);
            *(v36 + 1) = v38;
            v31 = (v31 + 8);
            v30 = (v30 + 8);
            v29 += 8;
          }

          while (result <= v22);
        }
      }

      LODWORD(a7) = v89;
      if (result < v89)
      {
        v39 = result;
        v40 = v23 - result;
        if (v40 <= 7)
        {
          goto LABEL_56;
        }

        if (v80 + v77 * v20 < 0x10)
        {
          goto LABEL_56;
        }

        if (v72 + v71 * v20 < 0x10)
        {
          goto LABEL_56;
        }

        v64 = 2 * result;
        v65 = v40 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v66 = *(v19 + v64);
          v67 = *(v18 + v64);
          v68 = vmlaq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v67.i8)), v87), v85, vcvtq_f32_s32(vmovl_s16(*v66.i8)));
          v69 = vaddq_f32(vmlaq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v67)), v87), v85, vcvtq_f32_s32(vmovl_high_s16(v66))), v82);
          v70 = vaddq_f32(v68, v82);
          a11 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v70.i8)));
          a12 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v69.i8)));
          q0_0 = vuzp1q_s32(a12, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v69, v69, 8uLL)))));
          v25 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(a11, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v70, v70, 8uLL)))))), q0_0);
          *(v17 + v64) = v25;
          v64 += 16;
          v65 -= 8;
        }

        while (v65);
        v39 = (v40 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_56:
          do
          {
            q0_0.i16[0] = v19->i16[v39];
            q0_0 = vmovl_s16(*q0_0.i8);
            v25.i16[0] = v18->i16[v39];
            v25.i64[0] = vmovl_s16(*v25.i8).u64[0];
            *v25.i32 = v87 * v25.i32[0];
            *q0_0.i32 = rintf((*v25.i32 + (q0_0.i32[0] * v88)) + v86);
            v41 = *q0_0.i32;
            if (*q0_0.i32 <= -32768)
            {
              LODWORD(v41) = -32768;
            }

            if (v41 >= 0x7FFF)
            {
              LOWORD(v41) = 0x7FFF;
            }

            v17->i16[v39++] = v41;
          }

          while (v23 != v39);
        }
      }

      v19 = (v19 + v83);
      v18 = (v18 + v81);
      v17 = (v17 + v84);
      ++v20;
      v24 += v84;
      --v16;
    }

    while (v16);
  }

  return result;
}

unint64_t sub_1001F6FF0(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8, double *a9)
{
  if (a8)
  {
    v9 = *a9;
    v10 = a9[1];
    v11 = a2 >> 2;
    v12 = a9[2];
    v13 = a4 >> 2;
    v14 = a6 >> 2;
    v15 = (a7 - 4);
    if (a7 >= 4)
    {
      v19 = (a8 - 1);
      v20 = v15 & 0x7FFFFFFC;
      v21 = ((4 * (a7 - 4)) & 0x1FFFFFFF0) + 16;
      v22 = a5 + v21;
      v23 = v14 * v19;
      if (v20 + 5 <= a7)
      {
        v24 = a7;
      }

      else
      {
        v24 = (v15 & 0x7FFFFFFC) + 5;
      }

      v25 = a5 + 4 * (v23 + v24);
      v26 = result + v21;
      v89 = a3 + v21;
      v27 = a5 + 4 * (v23 + v20) + 16;
      v28 = (v15 >> 2) + 1;
      v30 = a3 + 4 * (v13 * v19 + v20) + 16 > a5 && v27 > a3;
      v31 = result + 4 * (v11 * v19 + v20) + 16 > a5 && v27 > result;
      v32 = a6 | a2;
      v33 = a6 | a4;
      v34 = v31 || v30;
      v35 = ((v33 | a2) & 0x8000000000000000) != 0;
      v36 = vdupq_lane_s64(v9, 0);
      v37 = vdupq_lane_s64(*&v12, 0);
      v40 = v22 < result + 4 * (v11 * v19 + v24) && v26 < v25 || v32 < 0;
      if (v22 < a3 + 4 * (v13 * v19 + v24) && v89 < v25 || v33 < 0)
      {
        v40 = 1;
      }

      v90 = (v15 & 0x7FFFFFFC) + v24 - v20 - (v24 & 3);
      v43 = (v15 < 0xC || v35) | v34;
      v44 = v24 - 4 - v20 < 8 || v40;
      v45 = 4 * v14;
      v46 = 4 * v11;
      v47 = 4 * v13;
      v48 = a5 + 8;
      v88 = v24 - 4 - (v24 & 3) - v20;
      do
      {
        v49 = v19;
        v50 = 0;
        if (v43)
        {
          goto LABEL_48;
        }

        v51 = v28 & 0x3FFFFFFC;
        do
        {
          v52 = (a3 + v50);
          v91 = vld4q_f32(v52);
          v53 = (result + v50);
          v92 = vld4q_f32(v53);
          v54.i64[0] = v92.val[0].i32[0];
          v54.i64[1] = v92.val[0].i32[1];
          v55 = vcvtq_f64_s64(v54);
          v54.i64[0] = v92.val[0].i32[2];
          v54.i64[1] = v92.val[0].i32[3];
          v56 = v54;
          v54.i64[0] = v91.val[0].i32[2];
          v54.i64[1] = v91.val[0].i32[3];
          v57 = vcvtq_f64_s64(v54);
          v54.i64[0] = v91.val[0].i32[0];
          v54.i64[1] = v91.val[0].i32[1];
          v58 = vcvtq_f64_s64(v54);
          v54.i64[0] = v92.val[1].i32[0];
          v54.i64[1] = v92.val[1].i32[1];
          v59 = v54;
          v54.i64[0] = v92.val[1].i32[2];
          v54.i64[1] = v92.val[1].i32[3];
          v60 = vcvtq_f64_s64(v54);
          v54.i64[0] = v91.val[1].i32[2];
          v54.i64[1] = v91.val[1].i32[3];
          v61 = vcvtq_f64_s64(v54);
          v54.i64[0] = v91.val[1].i32[0];
          v54.i64[1] = v91.val[1].i32[1];
          v62 = v54;
          v54.i64[0] = v92.val[2].i32[0];
          v54.i64[1] = v92.val[2].i32[1];
          v63 = vcvtq_f64_s64(v54);
          v54.i64[0] = v92.val[2].i32[2];
          v54.i64[1] = v92.val[2].i32[3];
          v64 = vcvtq_f64_s64(v54);
          v54.i64[0] = v91.val[2].i32[2];
          v54.i64[1] = v91.val[2].i32[3];
          v65 = v54;
          v54.i64[0] = v91.val[2].i32[0];
          v54.i64[1] = v91.val[2].i32[1];
          v66 = vcvtq_f64_s64(v54);
          v54.i64[0] = v92.val[3].i32[0];
          v54.i64[1] = v92.val[3].i32[1];
          v67 = vcvtq_f64_s64(v54);
          v54.i64[0] = v92.val[3].i32[2];
          v54.i64[1] = v92.val[3].i32[3];
          v92.val[0] = v54;
          v54.i64[0] = v91.val[3].i32[2];
          v54.i64[1] = v91.val[3].i32[3];
          v92.val[1] = vcvtq_f64_s64(v54);
          v54.i64[0] = v91.val[3].i32[0];
          v54.i64[1] = v91.val[3].i32[1];
          v68 = (a5 + v50);
          v92.val[3] = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(vcvtq_f64_s64(v62), v10), v36, vcvtq_f64_s64(v59))))), vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(v61, v10), v36, v60)))));
          v92.val[2] = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(v58, v10), v36, v55)))), vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(v57, v10), v36, vcvtq_f64_s64(v56))))));
          v69 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(vcvtq_f64_s64(v54), v10), v36, v67)))), vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(v92.val[1], v10), v36, vcvtq_f64_s64(v92.val[0]))))));
          v70 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(v66, v10), v36, v63)))), vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(vcvtq_f64_s64(v65), v10), v36, v64)))));
          vst4q_f32(v68, *(&v92 + 32));
          v50 += 64;
          v51 -= 4;
        }

        while (v51);
        v50 = 4 * (v28 & 0x3FFFFFFC);
        LODWORD(v71) = 4 * (v28 & 0x3FFFFFFC);
        if (v28 != (v28 & 0x3FFFFFFC))
        {
LABEL_48:
          v72 = 4 * v50;
          v73 = v48;
          v74 = a3;
          v75 = result;
          v71 = v50;
          do
          {
            v76 = rint(v12 + v10 * *(v74 + v72 + 4) + *(v75 + v72 + 4) * *&v9);
            v77 = v73 + v72;
            *(v77 - 8) = rint(v12 + v10 * *(v74 + 4 * v50) + *(v75 + 4 * v50) * *&v9);
            *(v77 - 4) = v76;
            v78 = rint(v12 + v10 * *(v74 + v72 + 12) + *(v75 + v72 + 12) * *&v9);
            *(v73 + 4 * v50) = rint(v12 + v10 * *(v74 + 4 * v50 + 8) + *(v75 + 4 * v50 + 8) * *&v9);
            v71 += 4;
            *(v77 + 4) = v78;
            v75 += 16;
            v74 += 16;
            v73 += 16;
          }

          while (v71 <= v15);
        }

        if (v71 < a7)
        {
          v79 = (v15 & 0x7FFFFFFC) + 4;
          if (v44)
          {
            goto LABEL_59;
          }

          v80 = 16 * ((v15 >> 2) & 0x1FFFFFFF) + 16;
          v81 = v88;
          do
          {
            v82 = *(result + v80);
            v83.i64[0] = v82;
            v83.i64[1] = SDWORD1(v82);
            v84 = vcvtq_f64_s64(v83);
            v83.i64[0] = SDWORD2(v82);
            v83.i64[1] = SHIDWORD(v82);
            v85 = vcvtq_f64_s64(v83);
            v86 = *(a3 + v80);
            v83.i64[0] = SDWORD2(v86);
            v83.i64[1] = SHIDWORD(v86);
            v87 = vcvtq_f64_s64(v83);
            v83.i64[0] = v86;
            v83.i64[1] = SDWORD1(v86);
            *(a5 + v80) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(vcvtq_f64_s64(v83), v10), v36, v84)))), vcvtq_s64_f64(vrndxq_f64(vaddq_f64(v37, vmlaq_f64(vmulq_n_f64(v87, v10), v36, v85)))));
            v80 += 16;
            v81 -= 4;
          }

          while (v81);
          v79 = v90;
          if ((v24 & 3) != 0)
          {
LABEL_59:
            do
            {
              *(a5 + 4 * v79) = rint(v12 + v10 * *(a3 + 4 * v79) + *(result + 4 * v79) * *&v9);
              ++v79;
            }

            while (v79 < a7);
          }
        }

        LODWORD(v19) = v49 - 1;
        a5 += v45;
        result += v46;
        a3 += v47;
        v48 += v45;
      }

      while (v49);
    }

    else if (a7 >= 1)
    {
      v16 = (a5 + 8);
      v17 = (a3 + 8);
      v18 = (result + 8);
      do
      {
        *(v16 - 2) = rint(v12 + v10 * *(v17 - 2) + *(v18 - 2) * *&v9);
        if (a7 != 1)
        {
          *(v16 - 1) = rint(v12 + v10 * *(v17 - 1) + *(v18 - 1) * *&v9);
          if (a7 != 2)
          {
            *v16 = rint(v12 + v10 * *v17 + *v18 * *&v9);
          }
        }

        v16 += v14;
        v17 += v13;
        v18 += v11;
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

unint64_t sub_1001F75C0(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8, double *a9)
{
  if (a8)
  {
    v9 = *a9;
    v10 = a9[1];
    v11 = a2 >> 2;
    v12 = a9[2];
    v13 = a4 >> 2;
    v14 = a6 >> 2;
    v15 = (a7 - 4);
    if (a7 >= 4)
    {
      v22 = (a8 - 1);
      v23 = v15 & 0x7FFFFFFC;
      v24 = ((4 * (a7 - 4)) & 0x1FFFFFFF0) + 16;
      v25 = a5 + v24;
      v26 = v14 * v22;
      if (v23 + 5 <= a7)
      {
        v27 = a7;
      }

      else
      {
        v27 = (v15 & 0x7FFFFFFC) + 5;
      }

      v28 = a5 + 4 * (v26 + v27);
      v71 = result + v24;
      v29 = a3 + v24;
      v30 = v27 - 4;
      v31 = a5 + 4 * (v26 + v23) + 16;
      v32 = (v15 >> 2) + 1;
      v34 = a3 + 4 * (v13 * v22 + v23) + 16 > a5 && v31 > a3;
      v35 = result + 4 * (v11 * v22 + v23) + 16 > a5 && v31 > result;
      v36 = a6 | a2;
      v37 = a6 | a4;
      v38 = v35 || v34;
      v39 = ((v37 | a2) & 0x8000000000000000) != 0;
      v40 = vdupq_lane_s64(v9, 0);
      v41 = vdupq_lane_s64(*&v12, 0);
      v42 = v27 - 4 - v23 < 6;
      v45 = v25 < result + 4 * (v11 * v22 + v27) && v71 < v28 || v36 < 0;
      v48 = v25 < a3 + 4 * (v13 * v22 + v27) && v29 < v28 || v37 < 0 || v45;
      v49 = v27 & 3;
      v50 = (v15 & 0x7FFFFFFC) + v27 - v23 - v49;
      v51 = 4 * v14;
      v52 = (v15 < 4 || v39) | v38;
      v53 = v42 | v48;
      v54 = 4 * v11;
      v55 = 4 * v13;
      v56 = v30 - v49 - v23;
      do
      {
        v57 = v22;
        v58 = 0;
        if (v52)
        {
          goto LABEL_48;
        }

        v59 = v32 & 0x3FFFFFFE;
        do
        {
          v60 = (result + v58);
          v72 = vld4_f32(v60);
          v61 = (a3 + v58);
          v73 = vld4_f32(v61);
          v74.val[0] = vcvt_f32_f64(vaddq_f64(v41, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(v73.val[0]), v10), v40, vcvtq_f64_f32(v72.val[0]))));
          v74.val[1] = vcvt_f32_f64(vaddq_f64(v41, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(v73.val[1]), v10), v40, vcvtq_f64_f32(v72.val[1]))));
          v74.val[2] = vcvt_f32_f64(vaddq_f64(v41, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(v73.val[2]), v10), v40, vcvtq_f64_f32(v72.val[2]))));
          v74.val[3] = vcvt_f32_f64(vaddq_f64(v41, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(v73.val[3]), v10), v40, vcvtq_f64_f32(v72.val[3]))));
          v62 = (a5 + v58);
          vst4_f32(v62, v74);
          v58 += 32;
          v59 -= 2;
        }

        while (v59);
        v58 = 4 * (v32 & 0x3FFFFFFE);
        if (v32 != (v32 & 0x3FFFFFFE))
        {
LABEL_48:
          v63 = 4 * v58;
          do
          {
            v64 = (a5 + v63);
            *v64 = vcvt_f32_f64(vaddq_f64(v41, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(*(a3 + v63)), v10), v40, vcvtq_f64_f32(*(result + v63)))));
            v64[1] = vcvt_f32_f64(vaddq_f64(v41, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(*(a3 + v63 + 8)), v10), v40, vcvtq_f64_f32(*(result + v63 + 8)))));
            v58 += 4;
            v63 += 16;
          }

          while (v58 <= v15);
        }

        if (v58 < a7)
        {
          v65 = (v15 & 0x7FFFFFFC) + 4;
          if (v53)
          {
            goto LABEL_59;
          }

          v66 = 16 * ((v15 >> 2) & 0x1FFFFFFF);
          v67 = v56;
          do
          {
            v68 = vcvt_f32_f64(vaddq_f64(v41, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(*(a3 + v66 + 24)), v10), v40, vcvtq_f64_f32(*(result + v66 + 24)))));
            v69 = (a5 + v66);
            v69[2] = vcvt_f32_f64(vaddq_f64(v41, vmlaq_f64(vmulq_n_f64(vcvtq_f64_f32(*(a3 + v66 + 16)), v10), v40, vcvtq_f64_f32(*(result + v66 + 16)))));
            v69[3] = v68;
            v66 += 16;
            v67 -= 4;
          }

          while (v67);
          v65 = v50;
          if (v49)
          {
LABEL_59:
            do
            {
              v70 = v12 + v10 * *(a3 + 4 * v65) + *(result + 4 * v65) * *&v9;
              *(a5 + 4 * v65++) = v70;
            }

            while (v65 < a7);
          }
        }

        LODWORD(v22) = v57 - 1;
        a5 += v51;
        result += v54;
        a3 += v55;
      }

      while (v57);
    }

    else if (a7 >= 1)
    {
      v16 = (a5 + 8);
      v17 = (a3 + 8);
      v18 = (result + 8);
      do
      {
        v19 = v12 + v10 * *(v17 - 2) + *(v18 - 2) * *&v9;
        *(v16 - 2) = v19;
        if (a7 != 1)
        {
          v20 = v12 + v10 * *(v17 - 1) + *(v18 - 1) * *&v9;
          *(v16 - 1) = v20;
          if (a7 != 2)
          {
            v21 = v12 + v10 * *v17 + *v18 * *&v9;
            *v16 = v21;
          }
        }

        v16 += v14;
        v17 += v13;
        v18 += v11;
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

unint64_t sub_1001F79DC(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, int a8, double *a9)
{
  if (a8)
  {
    v9 = *a9;
    v10 = a9[1];
    v11 = a2 >> 3;
    v12 = a9[2];
    v13 = a4 >> 3;
    v14 = a6 >> 3;
    v15 = (a7 - 4);
    if (a7 >= 4)
    {
      v19 = (a8 - 1);
      v20 = v15 & 0x7FFFFFFC;
      v21 = ((8 * (a7 - 4)) & 0x3FFFFFFE0) + 32;
      v22 = a5 + v21;
      v23 = v14 * v19;
      if (v20 + 5 <= a7)
      {
        v24 = a7;
      }

      else
      {
        v24 = (v15 & 0x7FFFFFFC) + 5;
      }

      v25 = a5 + 8 * (v23 + v24);
      v68 = result + v21;
      v26 = a3 + v21;
      v27 = v24 - 4;
      v28 = a5 + 8 * (v23 + v20) + 32;
      v29 = (v15 >> 2) + 1;
      v31 = a3 + 8 * (v13 * v19 + v20) + 32 > a5 && v28 > a3;
      v32 = result + 8 * (v11 * v19 + v20) + 32 > a5 && v28 > result;
      v33 = a6 | a2;
      v34 = a6 | a4;
      v35 = v32 || v31;
      v36 = ((v34 | a2) & 0x8000000000000000) != 0;
      v37 = vdupq_lane_s64(v9, 0);
      v38 = vdupq_lane_s64(*&v12, 0);
      v39 = v24 - 4 - v20 < 6;
      v42 = v22 < result + 8 * (v11 * v19 + v24) && v68 < v25 || v33 < 0;
      v45 = v22 < a3 + 8 * (v13 * v19 + v24) && v26 < v25 || v34 < 0 || v42;
      v46 = v24 & 3;
      v47 = (v15 & 0x7FFFFFFC) + v24 - v20 - v46;
      v48 = 8 * v14;
      v49 = (v15 < 4 || v36) | v35;
      v50 = v39 | v45;
      v51 = 8 * v11;
      v52 = 8 * v13;
      v53 = v27 - v46 - v20;
      do
      {
        v54 = v19;
        v55 = 0;
        if (v49)
        {
          goto LABEL_48;
        }

        v56 = v29 & 0x3FFFFFFE;
        do
        {
          v57 = (a5 + v55);
          v58 = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(*(a3 + v55 + 48), v10), v37, *(result + v55 + 48)));
          v59 = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(*(a3 + v55 + 16), v10), v37, *(result + v55 + 16)));
          v60 = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(*(a3 + v55 + 32), v10), v37, *(result + v55 + 32)));
          *v57 = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(*(a3 + v55), v10), v37, *(result + v55)));
          v57[1] = v59;
          v57[2] = v60;
          v57[3] = v58;
          v55 += 64;
          v56 -= 2;
        }

        while (v56);
        v55 = 4 * (v29 & 0x3FFFFFFE);
        if (v29 != (v29 & 0x3FFFFFFE))
        {
LABEL_48:
          v61 = 8 * v55;
          do
          {
            v62 = (a5 + v61);
            *v62 = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(*(a3 + v61), v10), v37, *(result + v61)));
            v62[1] = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(*(a3 + v61 + 16), v10), v37, *(result + v61 + 16)));
            v55 += 4;
            v61 += 32;
          }

          while (v55 <= v15);
        }

        if (v55 < a7)
        {
          v63 = (v15 & 0x7FFFFFFC) + 4;
          if (v50)
          {
            goto LABEL_59;
          }

          v64 = 32 * ((v15 >> 2) & 0x1FFFFFFF);
          v65 = v53;
          do
          {
            v66 = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(*(a3 + v64 + 48), v10), v37, *(result + v64 + 48)));
            v67 = (a5 + v64);
            v67[2] = vaddq_f64(v38, vmlaq_f64(vmulq_n_f64(*(a3 + v64 + 32), v10), v37, *(result + v64 + 32)));
            v67[3] = v66;
            v64 += 32;
            v65 -= 4;
          }

          while (v65);
          v63 = v47;
          if (v46)
          {
LABEL_59:
            do
            {
              *(a5 + 8 * v63) = v12 + v10 * *(a3 + 8 * v63) + *(result + 8 * v63) * *&v9;
              ++v63;
            }

            while (v63 < a7);
          }
        }

        LODWORD(v19) = v54 - 1;
        a5 += v48;
        result += v51;
        a3 += v52;
      }

      while (v54);
    }

    else if (a7 >= 1)
    {
      v16 = (a5 + 16);
      v17 = (a3 + 16);
      v18 = (result + 16);
      do
      {
        *(v16 - 2) = v12 + v10 * *(v17 - 2) + *(v18 - 2) * *&v9;
        if (a7 != 1)
        {
          *(v16 - 1) = v12 + v10 * *(v17 - 1) + *(v18 - 1) * *&v9;
          if (a7 != 2)
          {
            *v16 = v12 + v10 * *v17 + *v18 * *&v9;
          }
        }

        v16 += v14;
        v17 += v13;
        v18 += v11;
        --a8;
      }

      while (a8);
    }
  }

  return result;
}

uint64_t sub_1001F7D74(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a1.n128_f32[0] != 1.0)
  {
    v8 = a6 - 8;
    if (a6 < 8)
    {
      return 0;
    }

    result = 0;
    v14 = &off_1004B0000;
    while (1)
    {
      v15 = *(a3 + result);
      v16 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
        v17 = v14[5];
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v45 = a3;
        v49 = a5;
        v41 = a4;
        v25 = v8;
        v37 = result;
        v33 = v15;
        v29 = v16;
        v21 = a1;
        sub_1003C836C();
        a1 = v21;
        v16 = v29;
        v15 = v33;
        v14 = &off_1004B0000;
        result = v37;
        a4 = v41;
        v8 = v25;
        a3 = v45;
        a5 = v49;
        v17 = xmmword_1004B0050;
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
LABEL_20:
          v46 = a3;
          v50 = a5;
          v42 = a4;
          v26 = v8;
          v38 = result;
          v34 = v15;
          v30 = v16;
          v19 = v17;
          v22 = a1;
          sub_1003C836C();
          v17 = v19;
          a1 = v22;
          v16 = v30;
          v15 = v34;
          v14 = &off_1004B0000;
          result = v38;
          a4 = v42;
          v8 = v26;
          a3 = v46;
          a5 = v50;
        }
      }

      v18 = vmull_u8(v16, v15);
      *(a5 + result) = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v18.i8)), a1.n128_f32[0]), v17))), vcvtq_u32_f32(vaddq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v18)), a1.n128_f32[0]), v14[5]))));
      result += 8;
      if (v8 < result)
      {
        return result;
      }
    }
  }

  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v9 = &off_1004B0000;
    while (1)
    {
      v10 = *(a3 + result);
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
        v12 = v9[5];
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v43 = a3;
        v47 = a5;
        v39 = a4;
        v23 = result;
        v35 = v6;
        v31 = v10;
        v27 = v11;
        sub_1003C836C();
        v11 = v27;
        v10 = v31;
        v9 = &off_1004B0000;
        v6 = v35;
        result = v23;
        a4 = v39;
        a3 = v43;
        a5 = v47;
        v12 = xmmword_1004B0050;
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
LABEL_13:
          v44 = a3;
          v48 = a5;
          v40 = a4;
          v24 = result;
          v36 = v6;
          v32 = v10;
          v28 = v11;
          v20 = v12;
          sub_1003C836C();
          v12 = v20;
          v11 = v28;
          v10 = v32;
          v9 = &off_1004B0000;
          v6 = v36;
          result = v24;
          a4 = v40;
          a3 = v44;
          a5 = v48;
        }
      }

      v13 = vmull_u8(v11, v10);
      *(a5 + result) = vqmovn_u16(vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(v12, vcvtq_f32_u32(vmovl_u16(*v13.i8))))), vcvtq_u32_f32(vaddq_f32(v9[5], vcvtq_f32_u32(vmovl_high_u16(v13))))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1001F7FEC(float a1, double a2, double a3, double a4, __n128 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  a5.n128_f32[0] = a1;
  if (a1 != 1.0)
  {
    v12 = a10 - 8;
    if (a10 < 8)
    {
      return 0;
    }

    result = 0;
    v23 = &off_1004B0000;
    v24 = &off_1004B0000;
    while (1)
    {
      v25 = *(a7 + result);
      v26 = *(a8 + result);
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
          goto LABEL_21;
        }
      }

      else
      {
        v89 = a7;
        v97 = a9;
        v81 = a8;
        v49 = v12;
        v73 = result;
        v57 = v26;
        v65 = v25;
        v41 = a5;
        sub_1003C8444();
        a5 = v41;
        v26 = v57;
        v25 = v65;
        v24 = &off_1004B0000;
        v23 = &off_1004B0000;
        result = v73;
        a8 = v81;
        v12 = v49;
        a7 = v89;
        a9 = v97;
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
LABEL_21:
          v27 = v23[9];
          v28 = v24[7];
          if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
          {
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      v90 = a7;
      v98 = a9;
      v82 = a8;
      v50 = v12;
      v74 = result;
      v58 = v26;
      v66 = v25;
      v42 = a5;
      sub_1003C848C();
      a5 = v42;
      v26 = v58;
      v25 = v66;
      v24 = &off_1004B0000;
      v23 = &off_1004B0000;
      result = v74;
      a8 = v82;
      v12 = v50;
      a7 = v90;
      a9 = v98;
      v27 = xmmword_1004B0090;
      v28 = xmmword_1004B0070;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
LABEL_22:
        if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }

LABEL_27:
      v91 = a7;
      v99 = a9;
      v83 = a8;
      v51 = v12;
      v75 = result;
      v59 = v26;
      v67 = v25;
      v37 = v27;
      v43 = a5;
      v33 = v28;
      sub_1003C8444();
      v28 = v33;
      v27 = v37;
      a5 = v43;
      v26 = v59;
      v25 = v67;
      v24 = &off_1004B0000;
      v23 = &off_1004B0000;
      result = v75;
      a8 = v83;
      v12 = v51;
      a7 = v91;
      a9 = v99;
      if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_28:
        v92 = a7;
        v100 = a9;
        v84 = a8;
        v52 = v12;
        v76 = result;
        v60 = v26;
        v68 = v25;
        v38 = v27;
        v44 = a5;
        v34 = v28;
        sub_1003C848C();
        v28 = v34;
        v27 = v38;
        a5 = v44;
        v26 = v60;
        v25 = v68;
        v24 = &off_1004B0000;
        v23 = &off_1004B0000;
        result = v76;
        a8 = v84;
        v12 = v52;
        a7 = v92;
        a9 = v100;
      }

LABEL_23:
      v29 = vmovl_s8(v25);
      v30 = vmovl_s8(v26);
      v31 = vmulq_n_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v29.i8)), vcvtq_f32_s32(vmovl_s16(*v30.i8))), a5.n128_f32[0]);
      v32 = vmulq_n_f32(vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v29)), vcvtq_f32_s32(vmovl_high_s16(v30))), a5.n128_f32[0]);
      *(a9 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v31, vorrq_s8(vandq_s8(v28, v31), v27)))), vcvtq_s32_f32(vaddq_f32(v32, vorrq_s8(vandq_s8(v24[7], v32), v23[9])))));
      result += 8;
      if (v12 < result)
      {
        return result;
      }
    }
  }

  v10 = a10 - 8;
  if (a10 >= 8)
  {
    result = 0;
    v13 = &off_1004B0000;
    v14 = &off_1004B0000;
    while (1)
    {
      v15 = *(a7 + result);
      v16 = *(a8 + result);
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v85 = a7;
        v93 = a9;
        v77 = a8;
        v45 = result;
        v69 = v10;
        v53 = v16;
        v61 = v15;
        sub_1003C8444();
        v16 = v53;
        v15 = v61;
        v14 = &off_1004B0000;
        v13 = &off_1004B0000;
        v10 = v69;
        result = v45;
        a8 = v77;
        a7 = v85;
        a9 = v93;
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
LABEL_10:
          v17 = v13[9];
          v18 = v14[7];
          if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
          {
            goto LABEL_11;
          }

          goto LABEL_16;
        }
      }

      v86 = a7;
      v94 = a9;
      v78 = a8;
      v46 = result;
      v70 = v10;
      v54 = v16;
      v62 = v15;
      sub_1003C848C();
      v16 = v54;
      v15 = v62;
      v14 = &off_1004B0000;
      v13 = &off_1004B0000;
      v10 = v70;
      result = v46;
      a8 = v78;
      a7 = v86;
      a9 = v94;
      v17 = xmmword_1004B0090;
      v18 = xmmword_1004B0070;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
LABEL_11:
        if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }

LABEL_16:
      v87 = a7;
      v95 = a9;
      v79 = a8;
      v47 = result;
      v71 = v10;
      v55 = v16;
      v63 = v15;
      v35 = v18;
      v39 = v17;
      sub_1003C8444();
      v18 = v35;
      v17 = v39;
      v16 = v55;
      v15 = v63;
      v14 = &off_1004B0000;
      v13 = &off_1004B0000;
      v10 = v71;
      result = v47;
      a8 = v79;
      a7 = v87;
      a9 = v95;
      if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_17:
        v88 = a7;
        v96 = a9;
        v80 = a8;
        v48 = result;
        v72 = v10;
        v56 = v16;
        v64 = v15;
        v36 = v18;
        v40 = v17;
        sub_1003C848C();
        v18 = v36;
        v17 = v40;
        v16 = v56;
        v15 = v64;
        v14 = &off_1004B0000;
        v13 = &off_1004B0000;
        v10 = v72;
        result = v48;
        a8 = v80;
        a7 = v88;
        a9 = v96;
      }

LABEL_12:
      v19 = vmovl_s8(v15);
      v20 = vmovl_s8(v16);
      v21 = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v19.i8)), vcvtq_f32_s32(vmovl_s16(*v20.i8)));
      v22 = vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v19)), vcvtq_f32_s32(vmovl_high_s16(v20)));
      *(a9 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v21, vorrq_s8(vandq_s8(v18, v21), v17)))), vcvtq_s32_f32(vaddq_f32(v22, vorrq_s8(vandq_s8(v14[7], v22), v13[9])))));
      result += 8;
      if (v10 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1001F8470(__n128 a1, uint64_t a2, uint16x8_t *a3, uint16x8_t *a4, uint16x8_t *a5, int a6)
{
  result = 0;
  if (a1.n128_f32[0] != 1.0)
  {
    v12 = a6 - 8;
    if (a6 < 8)
    {
      return result;
    }

    v13 = &off_1004B0000;
    while (1)
    {
      v14 = *a3;
      v15 = *a4;
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
        v16 = v13[5];
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v43 = a3;
        v47 = a5;
        v39 = a4;
        v31 = v12;
        v35 = result;
        v23 = v14;
        v27 = a1;
        v19 = v15;
        sub_1003C836C();
        v15 = v19;
        v14 = v23;
        a1 = v27;
        v13 = &off_1004B0000;
        v12 = v31;
        LODWORD(result) = v35;
        a4 = v39;
        a3 = v43;
        a5 = v47;
        v16 = xmmword_1004B0050;
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
LABEL_18:
          v44 = a3;
          v48 = a5;
          v40 = a4;
          v32 = v12;
          v36 = result;
          v24 = v14;
          v28 = a1;
          v17 = v16;
          v20 = v15;
          sub_1003C836C();
          v16 = v17;
          v15 = v20;
          v14 = v24;
          a1 = v28;
          v13 = &off_1004B0000;
          v12 = v32;
          LODWORD(result) = v36;
          a4 = v40;
          a3 = v44;
          a5 = v48;
        }
      }

      *a5++ = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), vcvtq_f32_u32(vmovl_u16(*v15.i8))), a1.n128_f32[0]), v16))), vcvtq_u32_f32(vaddq_f32(vmulq_n_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), vcvtq_f32_u32(vmovl_high_u16(v15))), a1.n128_f32[0]), v13[5])));
      ++a4;
      ++a3;
      result = (result + 8);
      if (v12 < result)
      {
        return result;
      }
    }
  }

  v7 = a6 - 8;
  if (a6 >= 8)
  {
    v8 = &off_1004B0000;
    do
    {
      v9 = *a3;
      v10 = *a4;
      if (atomic_load_explicit(byte_1004B0060, memory_order_acquire))
      {
        v11 = v8[5];
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v41 = a3;
        v45 = a5;
        v37 = a4;
        v29 = v7;
        v33 = result;
        v21 = v10;
        v25 = v9;
        sub_1003C836C();
        v10 = v21;
        v9 = v25;
        v8 = &off_1004B0000;
        v7 = v29;
        LODWORD(result) = v33;
        a4 = v37;
        a3 = v41;
        a5 = v45;
        v11 = xmmword_1004B0050;
        if ((atomic_load_explicit(byte_1004B0060, memory_order_acquire) & 1) == 0)
        {
LABEL_9:
          v42 = a3;
          v46 = a5;
          v38 = a4;
          v30 = v7;
          v34 = result;
          v22 = v10;
          v26 = v9;
          v18 = v11;
          sub_1003C836C();
          v11 = v18;
          v10 = v22;
          v9 = v26;
          v8 = &off_1004B0000;
          v7 = v30;
          LODWORD(result) = v34;
          a4 = v38;
          a3 = v42;
          a5 = v46;
        }
      }

      *a5++ = vqmovn_high_u32(vqmovn_u32(vcvtq_u32_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v9.i8)), vcvtq_f32_u32(vmovl_u16(*v10.i8))), v11))), vcvtq_u32_f32(vaddq_f32(vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(v9)), vcvtq_f32_u32(vmovl_high_u16(v10))), v8[5])));
      ++a4;
      ++a3;
      result = (result + 8);
    }

    while (v7 >= result);
  }

  return result;
}

uint64_t sub_1001F86BC(__n128 a1, uint64_t a2, int16x8_t *a3, int16x8_t *a4, int16x8_t *a5, int a6)
{
  result = 0;
  if (a1.n128_f32[0] != 1.0)
  {
    v16 = a6 - 8;
    if (a6 < 8)
    {
      return result;
    }

    v17 = &off_1004B0000;
    v18 = &off_1004B0000;
    while (1)
    {
      v19 = *a3;
      v20 = *a4;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v81 = a3;
        v89 = a5;
        v73 = a4;
        v57 = v16;
        v65 = result;
        v49 = a1;
        v33 = v20;
        v41 = v19;
        sub_1003C8444();
        v20 = v33;
        v19 = v41;
        a1 = v49;
        v18 = &off_1004B0000;
        v17 = &off_1004B0000;
        v16 = v57;
        LODWORD(result) = v65;
        a4 = v73;
        a3 = v81;
        a5 = v89;
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
LABEL_19:
          v21 = v17[9];
          v22 = v18[7];
          if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
          {
            goto LABEL_20;
          }

          goto LABEL_25;
        }
      }

      v82 = a3;
      v90 = a5;
      v74 = a4;
      v58 = v16;
      v66 = result;
      v50 = a1;
      v34 = v20;
      v42 = v19;
      sub_1003C848C();
      v20 = v34;
      v19 = v42;
      a1 = v50;
      v18 = &off_1004B0000;
      v17 = &off_1004B0000;
      v16 = v58;
      LODWORD(result) = v66;
      a4 = v74;
      a3 = v82;
      a5 = v90;
      v21 = xmmword_1004B0090;
      v22 = xmmword_1004B0070;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
LABEL_20:
        if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }

LABEL_25:
      v83 = a3;
      v91 = a5;
      v75 = a4;
      v59 = v16;
      v67 = result;
      v51 = a1;
      v35 = v20;
      v43 = v19;
      v25 = v22;
      v29 = v21;
      sub_1003C8444();
      v22 = v25;
      v21 = v29;
      v20 = v35;
      v19 = v43;
      a1 = v51;
      v18 = &off_1004B0000;
      v17 = &off_1004B0000;
      v16 = v59;
      LODWORD(result) = v67;
      a4 = v75;
      a3 = v83;
      a5 = v91;
      if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_26:
        v84 = a3;
        v92 = a5;
        v76 = a4;
        v60 = v16;
        v68 = result;
        v52 = a1;
        v36 = v20;
        v44 = v19;
        v26 = v22;
        v30 = v21;
        sub_1003C848C();
        v22 = v26;
        v21 = v30;
        v20 = v36;
        v19 = v44;
        a1 = v52;
        v18 = &off_1004B0000;
        v17 = &off_1004B0000;
        v16 = v60;
        LODWORD(result) = v68;
        a4 = v76;
        a3 = v84;
        a5 = v92;
      }

LABEL_21:
      v23 = vmulq_n_f32(vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v19.i8)), vcvtq_f32_s32(vmovl_s16(*v20.i8))), a1.n128_f32[0]);
      v24 = vmulq_n_f32(vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v19)), vcvtq_f32_s32(vmovl_high_s16(v20))), a1.n128_f32[0]);
      *a5++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v23, vorrq_s8(vandq_s8(v22, v23), v21)))), vcvtq_s32_f32(vaddq_f32(v24, vorrq_s8(vandq_s8(v18[7], v24), v17[9]))));
      ++a4;
      ++a3;
      result = (result + 8);
      if (v16 < result)
      {
        return result;
      }
    }
  }

  v7 = a6 - 8;
  if (a6 >= 8)
  {
    v8 = &off_1004B0000;
    v9 = &off_1004B0000;
    do
    {
      v10 = *a3;
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v77 = a3;
        v85 = a5;
        v69 = a4;
        v53 = v7;
        v61 = result;
        v45 = v10;
        v37 = v11;
        sub_1003C8444();
        v11 = v37;
        v10 = v45;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v7 = v53;
        LODWORD(result) = v61;
        a4 = v69;
        a3 = v77;
        a5 = v85;
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
LABEL_6:
          v12 = v8[9];
          v13 = v9[7];
          if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v78 = a3;
      v86 = a5;
      v70 = a4;
      v54 = v7;
      v62 = result;
      v46 = v10;
      v38 = v11;
      sub_1003C848C();
      v11 = v38;
      v10 = v46;
      v9 = &off_1004B0000;
      v8 = &off_1004B0000;
      v7 = v54;
      LODWORD(result) = v62;
      a4 = v70;
      a3 = v78;
      a5 = v86;
      v12 = xmmword_1004B0090;
      v13 = xmmword_1004B0070;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v79 = a3;
      v87 = a5;
      v71 = a4;
      v55 = v7;
      v63 = result;
      v47 = v10;
      v31 = v12;
      v39 = v11;
      v27 = v13;
      sub_1003C8444();
      v13 = v27;
      v12 = v31;
      v11 = v39;
      v10 = v47;
      v9 = &off_1004B0000;
      v8 = &off_1004B0000;
      v7 = v55;
      LODWORD(result) = v63;
      a4 = v71;
      a3 = v79;
      a5 = v87;
      if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v80 = a3;
        v88 = a5;
        v72 = a4;
        v56 = v7;
        v64 = result;
        v48 = v10;
        v32 = v12;
        v40 = v11;
        v28 = v13;
        sub_1003C848C();
        v13 = v28;
        v12 = v32;
        v11 = v40;
        v10 = v48;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v7 = v56;
        LODWORD(result) = v64;
        a4 = v72;
        a3 = v80;
        a5 = v88;
      }

LABEL_8:
      v14 = vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v10.i8)), vcvtq_f32_s32(vmovl_s16(*v11.i8)));
      v15 = vmulq_f32(vcvtq_f32_s32(vmovl_high_s16(v10)), vcvtq_f32_s32(vmovl_high_s16(v11)));
      *a5++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v9[7], v15), v8[9]))));
      ++a4;
      ++a3;
      result = (result + 8);
    }

    while (v7 >= result);
  }

  return result;
}

uint64_t sub_1001F8B00(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, __n128 a11)
{
  if (*a1 == 1)
  {
    v11 = a5 - 8;
    if (a5 >= 8)
    {
      result = 0;
      a11.n128_f32[0] = a6;
      v13 = &off_1004B0000;
      v14 = &off_1004B0000;
      while (1)
      {
        v15 = *(a2 + result);
        v16 = *(a3 + result);
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v51 = a2;
          v55 = a4;
          v35 = a3;
          v31 = result;
          v47 = v11;
          v39 = v15;
          v43 = v16;
          v27 = a11;
          sub_1003C83B4();
          a11 = v27;
          v15 = v39;
          v16 = v43;
          v14 = &off_1004B0000;
          v13 = &off_1004B0000;
          v11 = v47;
          result = v31;
          a2 = v51;
          a4 = v55;
          a3 = v35;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v17 = v13[3];
            v18 = v14[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v52 = a2;
        v56 = a4;
        v36 = a3;
        v32 = result;
        v48 = v11;
        v40 = v15;
        v44 = v16;
        v28 = a11;
        sub_1003C83FC();
        a11 = v28;
        v15 = v40;
        v16 = v44;
        v14 = &off_1004B0000;
        v13 = &off_1004B0000;
        v11 = v48;
        result = v32;
        a2 = v52;
        a4 = v56;
        a3 = v36;
        v17 = xmmword_1004B0030;
        v18 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v53 = a2;
        v57 = a4;
        v37 = a3;
        v33 = result;
        v49 = v11;
        v41 = v15;
        v45 = v16;
        v25 = v17;
        v29 = a11;
        v23 = v18;
        sub_1003C83B4();
        v18 = v23;
        v17 = v25;
        a11 = v29;
        v15 = v41;
        v16 = v45;
        v14 = &off_1004B0000;
        v13 = &off_1004B0000;
        v11 = v49;
        result = v33;
        a2 = v53;
        a4 = v57;
        a3 = v37;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v54 = a2;
          v58 = a4;
          v38 = a3;
          v34 = result;
          v50 = v11;
          v42 = v15;
          v46 = v16;
          v26 = v17;
          v30 = a11;
          v24 = v18;
          sub_1003C83FC();
          v18 = v24;
          v17 = v26;
          a11 = v30;
          v15 = v42;
          v16 = v46;
          v14 = &off_1004B0000;
          v13 = &off_1004B0000;
          v11 = v50;
          result = v34;
          a2 = v54;
          a4 = v58;
          a3 = v38;
        }

LABEL_9:
        v19 = vmovl_u8(v15);
        v20 = vmovl_u8(v16);
        v21 = vdivq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v19.i8)), a11.n128_f32[0]), vcvtq_f32_u32(vmovl_u16(*v20.i8)));
        v22 = vdivq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v19)), a11.n128_f32[0]), vcvtq_f32_u32(vmovl_high_u16(v20)));
        *(a4 + result) = vqmovn_u16(vbicq_s8(vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v21, vorrq_s8(vandq_s8(v18, v21), v17)))), vcvtq_s32_f32(vaddq_f32(v22, vorrq_s8(vandq_s8(v14[1], v22), v13[3])))), vmovl_s8(vceqz_s8(v16))));
        result += 8;
        if (v11 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F8D7C(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  if (*a1 == 1)
  {
    v5 = a4 - 8;
    if (a4 >= 8)
    {
      result = 0;
      *&a5 = a5;
      v7 = vdupq_lane_s32(*&a5, 0);
      v8 = &off_1004B0000;
      v9 = &off_1004B0000;
      while (1)
      {
        v10 = *(a2 + result);
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v36 = result;
          v40 = a3;
          v28 = a2;
          v24 = v5;
          v32 = v10;
          v20 = v7;
          sub_1003C83B4();
          v7 = v20;
          v10 = v32;
          v9 = &off_1004B0000;
          v8 = &off_1004B0000;
          v5 = v24;
          result = v36;
          a3 = v40;
          a2 = v28;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v11 = v8[3];
            v12 = v9[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v37 = result;
        v41 = a3;
        v29 = a2;
        v25 = v5;
        v33 = v10;
        v21 = v7;
        sub_1003C83FC();
        v7 = v21;
        v10 = v33;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v5 = v25;
        result = v37;
        a3 = v41;
        a2 = v29;
        v11 = xmmword_1004B0030;
        v12 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v38 = result;
        v42 = a3;
        v30 = a2;
        v26 = v5;
        v34 = v10;
        v18 = v11;
        v22 = v7;
        v16 = v12;
        sub_1003C83B4();
        v12 = v16;
        v11 = v18;
        v7 = v22;
        v10 = v34;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v5 = v26;
        result = v38;
        a3 = v42;
        a2 = v30;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v39 = result;
          v43 = a3;
          v31 = a2;
          v27 = v5;
          v35 = v10;
          v19 = v11;
          v23 = v7;
          v17 = v12;
          sub_1003C83FC();
          v12 = v17;
          v11 = v19;
          v7 = v23;
          v10 = v35;
          v9 = &off_1004B0000;
          v8 = &off_1004B0000;
          v5 = v27;
          result = v39;
          a3 = v43;
          a2 = v31;
        }

LABEL_9:
        v13 = vmovl_u8(v10);
        v14 = vdivq_f32(v7, vcvtq_f32_u32(vmovl_u16(*v13.i8)));
        v15 = vdivq_f32(v7, vcvtq_f32_u32(vmovl_high_u16(v13)));
        *(a3 + result) = vqmovn_u16(vbicq_s8(vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v12, v14), v11)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v9[1], v15), v8[3])))), vmovl_s8(vceqz_s8(v10))));
        result += 8;
        if (v5 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F8FBC(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, __n128 a11)
{
  if (*a1 == 1)
  {
    v11 = a5 - 8;
    if (a5 >= 8)
    {
      result = 0;
      a11.n128_f32[0] = a6;
      v13 = &off_1004B0000;
      v14 = &off_1004B0000;
      while (1)
      {
        v15 = *(a2 + result);
        v16 = *(a3 + result);
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v51 = a2;
          v55 = a4;
          v35 = a3;
          v31 = result;
          v47 = v11;
          v39 = v15;
          v43 = v16;
          v27 = a11;
          sub_1003C83B4();
          a11 = v27;
          v15 = v39;
          v16 = v43;
          v14 = &off_1004B0000;
          v13 = &off_1004B0000;
          v11 = v47;
          result = v31;
          a2 = v51;
          a4 = v55;
          a3 = v35;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v17 = v13[3];
            v18 = v14[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v52 = a2;
        v56 = a4;
        v36 = a3;
        v32 = result;
        v48 = v11;
        v40 = v15;
        v44 = v16;
        v28 = a11;
        sub_1003C83FC();
        a11 = v28;
        v15 = v40;
        v16 = v44;
        v14 = &off_1004B0000;
        v13 = &off_1004B0000;
        v11 = v48;
        result = v32;
        a2 = v52;
        a4 = v56;
        a3 = v36;
        v17 = xmmword_1004B0030;
        v18 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v53 = a2;
        v57 = a4;
        v37 = a3;
        v33 = result;
        v49 = v11;
        v41 = v15;
        v45 = v16;
        v25 = v17;
        v29 = a11;
        v23 = v18;
        sub_1003C83B4();
        v18 = v23;
        v17 = v25;
        a11 = v29;
        v15 = v41;
        v16 = v45;
        v14 = &off_1004B0000;
        v13 = &off_1004B0000;
        v11 = v49;
        result = v33;
        a2 = v53;
        a4 = v57;
        a3 = v37;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v54 = a2;
          v58 = a4;
          v38 = a3;
          v34 = result;
          v50 = v11;
          v42 = v15;
          v46 = v16;
          v26 = v17;
          v30 = a11;
          v24 = v18;
          sub_1003C83FC();
          v18 = v24;
          v17 = v26;
          a11 = v30;
          v15 = v42;
          v16 = v46;
          v14 = &off_1004B0000;
          v13 = &off_1004B0000;
          v11 = v50;
          result = v34;
          a2 = v54;
          a4 = v58;
          a3 = v38;
        }

LABEL_9:
        v19 = vmovl_s8(v15);
        v20 = vmovl_s8(v16);
        v21 = vdivq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v19.i8)), a11.n128_f32[0]), vcvtq_f32_s32(vmovl_s16(*v20.i8)));
        v22 = vdivq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v19)), a11.n128_f32[0]), vcvtq_f32_s32(vmovl_high_s16(v20)));
        *(a4 + result) = vqmovn_s16(vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v21, vorrq_s8(vandq_s8(v18, v21), v17)))), vcvtq_s32_f32(vaddq_f32(v22, vorrq_s8(vandq_s8(v14[1], v22), v13[3])))), vmovl_s8(vceqz_s8(v16))));
        result += 8;
        if (v11 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F9238(_BYTE *a1, uint16x8_t *a2, int16x8_t *a3, int8x16_t *a4, int a5, double a6, double a7, double a8, double a9, __n128 a10)
{
  if (*a1 == 1)
  {
    v10 = a5 - 8;
    if (a5 >= 8)
    {
      LODWORD(result) = 0;
      a10.n128_f32[0] = a6;
      v12 = &off_1004B0000;
      v13 = &off_1004B0000;
      while (1)
      {
        v14 = *a2;
        v15 = *a3;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v48 = a2;
          v52 = a4;
          v40 = a3;
          v36 = result;
          v44 = v10;
          v28 = v15;
          v32 = a10;
          v24 = v14;
          sub_1003C83B4();
          v14 = v24;
          v15 = v28;
          a10 = v32;
          v13 = &off_1004B0000;
          v12 = &off_1004B0000;
          v10 = v44;
          LODWORD(result) = v36;
          a2 = v48;
          a4 = v52;
          a3 = v40;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v16 = v12[3];
            v17 = v13[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v49 = a2;
        v53 = a4;
        v41 = a3;
        v37 = result;
        v45 = v10;
        v29 = v15;
        v33 = a10;
        v25 = v14;
        sub_1003C83FC();
        v14 = v25;
        v15 = v29;
        a10 = v33;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v10 = v45;
        LODWORD(result) = v37;
        a2 = v49;
        a4 = v53;
        a3 = v41;
        v16 = xmmword_1004B0030;
        v17 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v50 = a2;
        v54 = a4;
        v42 = a3;
        v38 = result;
        v46 = v10;
        v30 = v15;
        v34 = a10;
        v22 = v16;
        v26 = v14;
        v20 = v17;
        sub_1003C83B4();
        v17 = v20;
        v16 = v22;
        v14 = v26;
        v15 = v30;
        a10 = v34;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v10 = v46;
        LODWORD(result) = v38;
        a2 = v50;
        a4 = v54;
        a3 = v42;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v51 = a2;
          v55 = a4;
          v43 = a3;
          v39 = result;
          v47 = v10;
          v31 = v15;
          v35 = a10;
          v23 = v16;
          v27 = v14;
          v21 = v17;
          sub_1003C83FC();
          v17 = v21;
          v16 = v23;
          v14 = v27;
          v15 = v31;
          a10 = v35;
          v13 = &off_1004B0000;
          v12 = &off_1004B0000;
          v10 = v47;
          LODWORD(result) = v39;
          a2 = v51;
          a4 = v55;
          a3 = v43;
        }

LABEL_9:
        v18 = vdivq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), a10.n128_f32[0]), vcvtq_f32_u32(vmovl_u16(*v15.i8)));
        v19 = vdivq_f32(vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), a10.n128_f32[0]), vcvtq_f32_u32(vmovl_high_u16(v15)));
        *a4++ = vbicq_s8(vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v18, vorrq_s8(vandq_s8(v17, v18), v16)))), vcvtq_s32_f32(vaddq_f32(v19, vorrq_s8(vandq_s8(v13[1], v19), v12[3])))), vceqzq_s16(v15));
        ++a3;
        ++a2;
        result = (result + 8);
        if (v10 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F94AC(_BYTE *a1, int16x8_t *a2, int16x8_t *a3, int8x16_t *a4, int a5, double a6, double a7, double a8, double a9, __n128 a10)
{
  if (*a1 == 1)
  {
    v10 = a5 - 8;
    if (a5 >= 8)
    {
      LODWORD(result) = 0;
      a10.n128_f32[0] = a6;
      v12 = &off_1004B0000;
      v13 = &off_1004B0000;
      while (1)
      {
        v14 = *a2;
        v15 = *a3;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v48 = a2;
          v52 = a4;
          v40 = a3;
          v36 = result;
          v44 = v10;
          v28 = v15;
          v32 = a10;
          v24 = v14;
          sub_1003C83B4();
          v14 = v24;
          v15 = v28;
          a10 = v32;
          v13 = &off_1004B0000;
          v12 = &off_1004B0000;
          v10 = v44;
          LODWORD(result) = v36;
          a2 = v48;
          a4 = v52;
          a3 = v40;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v16 = v12[3];
            v17 = v13[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v49 = a2;
        v53 = a4;
        v41 = a3;
        v37 = result;
        v45 = v10;
        v29 = v15;
        v33 = a10;
        v25 = v14;
        sub_1003C83FC();
        v14 = v25;
        v15 = v29;
        a10 = v33;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v10 = v45;
        LODWORD(result) = v37;
        a2 = v49;
        a4 = v53;
        a3 = v41;
        v16 = xmmword_1004B0030;
        v17 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v50 = a2;
        v54 = a4;
        v42 = a3;
        v38 = result;
        v46 = v10;
        v30 = v15;
        v34 = a10;
        v22 = v16;
        v26 = v14;
        v20 = v17;
        sub_1003C83B4();
        v17 = v20;
        v16 = v22;
        v14 = v26;
        v15 = v30;
        a10 = v34;
        v13 = &off_1004B0000;
        v12 = &off_1004B0000;
        v10 = v46;
        LODWORD(result) = v38;
        a2 = v50;
        a4 = v54;
        a3 = v42;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v51 = a2;
          v55 = a4;
          v43 = a3;
          v39 = result;
          v47 = v10;
          v31 = v15;
          v35 = a10;
          v23 = v16;
          v27 = v14;
          v21 = v17;
          sub_1003C83FC();
          v17 = v21;
          v16 = v23;
          v14 = v27;
          v15 = v31;
          a10 = v35;
          v13 = &off_1004B0000;
          v12 = &off_1004B0000;
          v10 = v47;
          LODWORD(result) = v39;
          a2 = v51;
          a4 = v55;
          a3 = v43;
        }

LABEL_9:
        v18 = vdivq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v14.i8)), a10.n128_f32[0]), vcvtq_f32_s32(vmovl_s16(*v15.i8)));
        v19 = vdivq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v14)), a10.n128_f32[0]), vcvtq_f32_s32(vmovl_high_s16(v15)));
        *a4++ = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v18, vorrq_s8(vandq_s8(v17, v18), v16)))), vcvtq_s32_f32(vaddq_f32(v19, vorrq_s8(vandq_s8(v13[1], v19), v12[3])))), vceqzq_s16(v15));
        ++a3;
        ++a2;
        result = (result + 8);
        if (v10 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F9720(_BYTE *a1, int32x4_t *a2, int32x4_t *a3, int8x16_t *a4, int a5, double a6, double a7, double a8, double a9, __n128 a10)
{
  if (*a1 == 1)
  {
    v10 = a5 - 8;
    if (a5 >= 8)
    {
      LODWORD(result) = 0;
      v12 = a4 + 1;
      a10.n128_f32[0] = a6;
      v13 = a3 + 1;
      v14 = a2 + 1;
      v15 = &off_1004B0000;
      v16 = &off_1004B0000;
      while (1)
      {
        v17 = v14[-1];
        v18 = *v14;
        v19 = v13[-1];
        v20 = *v13;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v66 = result;
          v54 = v10;
          v58 = v14;
          v62 = v12;
          v50 = v13;
          v46 = a10;
          v38 = v20;
          v42 = v19;
          v30 = v18;
          v34 = v17;
          sub_1003C83B4();
          v18 = v30;
          v17 = v34;
          v20 = v38;
          v19 = v42;
          a10 = v46;
          v16 = &off_1004B0000;
          v15 = &off_1004B0000;
          v14 = v58;
          v12 = v62;
          v13 = v50;
          v10 = v54;
          LODWORD(result) = v66;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v21 = v15[3];
            v22 = v16[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v67 = result;
        v55 = v10;
        v59 = v14;
        v63 = v12;
        v51 = v13;
        v47 = a10;
        v39 = v20;
        v43 = v19;
        v31 = v18;
        v35 = v17;
        sub_1003C83FC();
        v18 = v31;
        v17 = v35;
        v20 = v39;
        v19 = v43;
        a10 = v47;
        v16 = &off_1004B0000;
        v15 = &off_1004B0000;
        v14 = v59;
        v12 = v63;
        v13 = v51;
        v10 = v55;
        LODWORD(result) = v67;
        v21 = xmmword_1004B0030;
        v22 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v68 = result;
        v56 = v10;
        v60 = v14;
        v64 = v12;
        v52 = v13;
        v48 = a10;
        v40 = v20;
        v44 = v19;
        v32 = v18;
        v36 = v17;
        v26 = v22;
        v28 = v21;
        sub_1003C83B4();
        v22 = v26;
        v21 = v28;
        v18 = v32;
        v17 = v36;
        v20 = v40;
        v19 = v44;
        a10 = v48;
        v16 = &off_1004B0000;
        v15 = &off_1004B0000;
        v14 = v60;
        v12 = v64;
        v13 = v52;
        v10 = v56;
        LODWORD(result) = v68;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v69 = result;
          v57 = v10;
          v61 = v14;
          v65 = v12;
          v53 = v13;
          v49 = a10;
          v41 = v20;
          v45 = v19;
          v33 = v18;
          v37 = v17;
          v27 = v22;
          v29 = v21;
          sub_1003C83FC();
          v22 = v27;
          v21 = v29;
          v18 = v33;
          v17 = v37;
          v20 = v41;
          v19 = v45;
          a10 = v49;
          v16 = &off_1004B0000;
          v15 = &off_1004B0000;
          v14 = v61;
          v12 = v65;
          v13 = v53;
          v10 = v57;
          LODWORD(result) = v69;
        }

LABEL_9:
        v23 = vdivq_f32(vmulq_n_f32(vcvtq_f32_s32(v17), a10.n128_f32[0]), vcvtq_f32_s32(v19));
        v24 = vdivq_f32(vmulq_n_f32(vcvtq_f32_s32(v18), a10.n128_f32[0]), vcvtq_f32_s32(v20));
        v25 = vbicq_s8(vcvtq_s32_f32(vaddq_f32(v24, vorrq_s8(vandq_s8(v16[1], v24), v15[3]))), vceqzq_s32(v20));
        v12[-1] = vbicq_s8(vcvtq_s32_f32(vaddq_f32(v23, vorrq_s8(vandq_s8(v22, v23), v21))), vceqzq_s32(v19));
        *v12 = v25;
        v12 += 2;
        v13 += 2;
        v14 += 2;
        result = (result + 8);
        if (v10 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F99B4(_BYTE *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  if (*a1 == 1)
  {
    v5 = a4 - 8;
    if (a4 >= 8)
    {
      result = 0;
      *&a5 = a5;
      v7 = vdupq_lane_s32(*&a5, 0);
      v8 = &off_1004B0000;
      v9 = &off_1004B0000;
      while (1)
      {
        v10 = *(a2 + result);
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v36 = result;
          v40 = a3;
          v28 = a2;
          v24 = v5;
          v32 = v10;
          v20 = v7;
          sub_1003C83B4();
          v7 = v20;
          v10 = v32;
          v9 = &off_1004B0000;
          v8 = &off_1004B0000;
          v5 = v24;
          result = v36;
          a3 = v40;
          a2 = v28;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v11 = v8[3];
            v12 = v9[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v37 = result;
        v41 = a3;
        v29 = a2;
        v25 = v5;
        v33 = v10;
        v21 = v7;
        sub_1003C83FC();
        v7 = v21;
        v10 = v33;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v5 = v25;
        result = v37;
        a3 = v41;
        a2 = v29;
        v11 = xmmword_1004B0030;
        v12 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v38 = result;
        v42 = a3;
        v30 = a2;
        v26 = v5;
        v34 = v10;
        v18 = v11;
        v22 = v7;
        v16 = v12;
        sub_1003C83B4();
        v12 = v16;
        v11 = v18;
        v7 = v22;
        v10 = v34;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v5 = v26;
        result = v38;
        a3 = v42;
        a2 = v30;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v39 = result;
          v43 = a3;
          v31 = a2;
          v27 = v5;
          v35 = v10;
          v19 = v11;
          v23 = v7;
          v17 = v12;
          sub_1003C83FC();
          v12 = v17;
          v11 = v19;
          v7 = v23;
          v10 = v35;
          v9 = &off_1004B0000;
          v8 = &off_1004B0000;
          v5 = v27;
          result = v39;
          a3 = v43;
          a2 = v31;
        }

LABEL_9:
        v13 = vmovl_s8(v10);
        v14 = vdivq_f32(v7, vcvtq_f32_s32(vmovl_s16(*v13.i8)));
        v15 = vdivq_f32(v7, vcvtq_f32_s32(vmovl_high_s16(v13)));
        *(a3 + result) = vqmovn_s16(vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v12, v14), v11)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v9[1], v15), v8[3])))), vmovl_s8(vceqz_s8(v10))));
        result += 8;
        if (v5 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F9BF4(_BYTE *a1, int16x8_t *a2, int8x16_t *a3, int a4, double a5)
{
  if (*a1 == 1)
  {
    v5 = a4 - 8;
    if (a4 >= 8)
    {
      LODWORD(result) = 0;
      *&a5 = a5;
      v7 = vdupq_lane_s32(*&a5, 0);
      v8 = &off_1004B0000;
      v9 = &off_1004B0000;
      while (1)
      {
        v10 = *a2;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v39 = a3;
          v31 = a2;
          v35 = result;
          v27 = v5;
          v19 = v10;
          v23 = v7;
          sub_1003C83B4();
          v10 = v19;
          v7 = v23;
          v9 = &off_1004B0000;
          v8 = &off_1004B0000;
          v5 = v27;
          LODWORD(result) = v35;
          a2 = v31;
          a3 = v39;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v11 = v8[3];
            v12 = v9[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v40 = a3;
        v32 = a2;
        v36 = result;
        v28 = v5;
        v20 = v10;
        v24 = v7;
        sub_1003C83FC();
        v10 = v20;
        v7 = v24;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v5 = v28;
        LODWORD(result) = v36;
        a2 = v32;
        a3 = v40;
        v11 = xmmword_1004B0030;
        v12 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v41 = a3;
        v33 = a2;
        v37 = result;
        v29 = v5;
        v21 = v10;
        v25 = v7;
        v15 = v12;
        v17 = v11;
        sub_1003C83B4();
        v12 = v15;
        v11 = v17;
        v10 = v21;
        v7 = v25;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v5 = v29;
        LODWORD(result) = v37;
        a2 = v33;
        a3 = v41;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v42 = a3;
          v34 = a2;
          v38 = result;
          v30 = v5;
          v22 = v10;
          v26 = v7;
          v16 = v12;
          v18 = v11;
          sub_1003C83FC();
          v12 = v16;
          v11 = v18;
          v10 = v22;
          v7 = v26;
          v9 = &off_1004B0000;
          v8 = &off_1004B0000;
          v5 = v30;
          LODWORD(result) = v38;
          a2 = v34;
          a3 = v42;
        }

LABEL_9:
        v13 = vdivq_f32(v7, vcvtq_f32_u32(vmovl_u16(*v10.i8)));
        v14 = vdivq_f32(v7, vcvtq_f32_u32(vmovl_high_u16(v10)));
        *a3++ = vbicq_s8(vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v13, vorrq_s8(vandq_s8(v12, v13), v11)))), vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v9[1], v14), v8[3])))), vceqzq_s16(v10));
        ++a2;
        result = (result + 8);
        if (v5 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001F9E2C(_BYTE *a1, int16x8_t *a2, int8x16_t *a3, int a4, double a5)
{
  if (*a1 == 1)
  {
    v5 = a4 - 8;
    if (a4 >= 8)
    {
      LODWORD(result) = 0;
      *&a5 = a5;
      v7 = vdupq_lane_s32(*&a5, 0);
      v8 = &off_1004B0000;
      v9 = &off_1004B0000;
      while (1)
      {
        v10 = *a2;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v39 = a3;
          v31 = a2;
          v35 = result;
          v27 = v5;
          v19 = v10;
          v23 = v7;
          sub_1003C83B4();
          v10 = v19;
          v7 = v23;
          v9 = &off_1004B0000;
          v8 = &off_1004B0000;
          v5 = v27;
          LODWORD(result) = v35;
          a2 = v31;
          a3 = v39;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v11 = v8[3];
            v12 = v9[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v40 = a3;
        v32 = a2;
        v36 = result;
        v28 = v5;
        v20 = v10;
        v24 = v7;
        sub_1003C83FC();
        v10 = v20;
        v7 = v24;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v5 = v28;
        LODWORD(result) = v36;
        a2 = v32;
        a3 = v40;
        v11 = xmmword_1004B0030;
        v12 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v41 = a3;
        v33 = a2;
        v37 = result;
        v29 = v5;
        v21 = v10;
        v25 = v7;
        v15 = v12;
        v17 = v11;
        sub_1003C83B4();
        v12 = v15;
        v11 = v17;
        v10 = v21;
        v7 = v25;
        v9 = &off_1004B0000;
        v8 = &off_1004B0000;
        v5 = v29;
        LODWORD(result) = v37;
        a2 = v33;
        a3 = v41;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v42 = a3;
          v34 = a2;
          v38 = result;
          v30 = v5;
          v22 = v10;
          v26 = v7;
          v16 = v12;
          v18 = v11;
          sub_1003C83FC();
          v12 = v16;
          v11 = v18;
          v10 = v22;
          v7 = v26;
          v9 = &off_1004B0000;
          v8 = &off_1004B0000;
          v5 = v30;
          LODWORD(result) = v38;
          a2 = v34;
          a3 = v42;
        }

LABEL_9:
        v13 = vdivq_f32(v7, vcvtq_f32_s32(vmovl_s16(*v10.i8)));
        v14 = vdivq_f32(v7, vcvtq_f32_s32(vmovl_high_s16(v10)));
        *a3++ = vbicq_s8(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v13, vorrq_s8(vandq_s8(v12, v13), v11)))), vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v9[1], v14), v8[3])))), vceqzq_s16(v10));
        ++a2;
        result = (result + 8);
        if (v5 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001FA064(_BYTE *a1, int32x4_t *a2, int8x16_t *a3, int a4, double a5)
{
  if (*a1 == 1)
  {
    v5 = a4 - 8;
    if (a4 >= 8)
    {
      LODWORD(result) = 0;
      *&a5 = a5;
      v7 = vdupq_lane_s32(*&a5, 0);
      v8 = a3 + 1;
      v9 = a2 + 1;
      v10 = &off_1004B0000;
      v11 = &off_1004B0000;
      while (1)
      {
        v12 = v9[-1];
        v13 = *v9;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_7;
          }
        }

        else
        {
          v47 = result;
          v39 = v5;
          v43 = v8;
          v35 = v9;
          v31 = v7;
          v23 = v13;
          v27 = v12;
          sub_1003C83B4();
          v13 = v23;
          v12 = v27;
          v7 = v31;
          v11 = &off_1004B0000;
          v10 = &off_1004B0000;
          v9 = v35;
          v8 = v43;
          v5 = v39;
          LODWORD(result) = v47;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
LABEL_7:
            v14 = v10[3];
            v15 = v11[1];
            if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
            {
              goto LABEL_8;
            }

            goto LABEL_13;
          }
        }

        v48 = result;
        v40 = v5;
        v44 = v8;
        v36 = v9;
        v32 = v7;
        v24 = v13;
        v28 = v12;
        sub_1003C83FC();
        v13 = v24;
        v12 = v28;
        v7 = v32;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v36;
        v8 = v44;
        v5 = v40;
        LODWORD(result) = v48;
        v14 = xmmword_1004B0030;
        v15 = xmmword_1004B0010;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
LABEL_8:
          if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_9;
        }

LABEL_13:
        v49 = result;
        v41 = v5;
        v45 = v8;
        v37 = v9;
        v33 = v7;
        v25 = v13;
        v29 = v12;
        v19 = v15;
        v21 = v14;
        sub_1003C83B4();
        v15 = v19;
        v14 = v21;
        v13 = v25;
        v12 = v29;
        v7 = v33;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v37;
        v8 = v45;
        v5 = v41;
        LODWORD(result) = v49;
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
LABEL_14:
          v50 = result;
          v42 = v5;
          v46 = v8;
          v38 = v9;
          v34 = v7;
          v26 = v13;
          v30 = v12;
          v20 = v15;
          v22 = v14;
          sub_1003C83FC();
          v15 = v20;
          v14 = v22;
          v13 = v26;
          v12 = v30;
          v7 = v34;
          v11 = &off_1004B0000;
          v10 = &off_1004B0000;
          v9 = v38;
          v8 = v46;
          v5 = v42;
          LODWORD(result) = v50;
        }

LABEL_9:
        v16 = vdivq_f32(v7, vcvtq_f32_s32(v12));
        v17 = vdivq_f32(v7, vcvtq_f32_s32(v13));
        v18 = vbicq_s8(vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3]))), vceqzq_s32(v13));
        v8[-1] = vbicq_s8(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14))), vceqzq_s32(v12));
        *v8 = v18;
        v8 += 2;
        v9 += 2;
        result = (result + 8);
        if (v5 < result)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1001FA2C0(float a1, __n128 a2, int32x2_t a3, double a4, double a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v11 = a11 - 8;
  if (a11 >= 8)
  {
    a6.n128_f32[0] = a1;
    result = 0;
    v13 = vdupq_lane_s32(a3, 0);
    v14 = &off_1004B0000;
    v15 = &off_1004B0000;
    while (1)
    {
      v16 = *(a8 + result);
      v17 = *(a9 + result);
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v61 = a9;
        v65 = result;
        v41 = a8;
        v45 = a10;
        v57 = v11;
        v49 = v16;
        v53 = v17;
        v33 = a6;
        v37 = a2;
        v29 = v13;
        sub_1003C8444();
        v13 = v29;
        a6 = v33;
        a2 = v37;
        v16 = v49;
        v17 = v53;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v11 = v57;
        a8 = v41;
        a10 = v45;
        a9 = v61;
        result = v65;
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
LABEL_6:
          v18 = v14[9];
          v19 = v15[7];
          if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v62 = a9;
      v66 = result;
      v42 = a8;
      v46 = a10;
      v58 = v11;
      v50 = v16;
      v54 = v17;
      v34 = a6;
      v38 = a2;
      v30 = v13;
      sub_1003C848C();
      v13 = v30;
      a6 = v34;
      a2 = v38;
      v16 = v50;
      v17 = v54;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v11 = v58;
      a8 = v42;
      a10 = v46;
      a9 = v62;
      result = v66;
      v18 = xmmword_1004B0090;
      v19 = xmmword_1004B0070;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v63 = a9;
      v67 = result;
      v43 = a8;
      v47 = a10;
      v59 = v11;
      v51 = v16;
      v55 = v17;
      v35 = a6;
      v39 = a2;
      v27 = v18;
      v31 = v13;
      v25 = v19;
      sub_1003C8444();
      v19 = v25;
      v18 = v27;
      v13 = v31;
      a6 = v35;
      a2 = v39;
      v16 = v51;
      v17 = v55;
      v15 = &off_1004B0000;
      v14 = &off_1004B0000;
      v11 = v59;
      a8 = v43;
      a10 = v47;
      a9 = v63;
      result = v67;
      if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v64 = a9;
        v68 = result;
        v44 = a8;
        v48 = a10;
        v60 = v11;
        v52 = v16;
        v56 = v17;
        v36 = a6;
        v40 = a2;
        v28 = v18;
        v32 = v13;
        v26 = v19;
        sub_1003C848C();
        v19 = v26;
        v18 = v28;
        v13 = v32;
        a6 = v36;
        a2 = v40;
        v16 = v52;
        v17 = v56;
        v15 = &off_1004B0000;
        v14 = &off_1004B0000;
        v11 = v60;
        a8 = v44;
        a10 = v48;
        a9 = v64;
        result = v68;
      }

LABEL_8:
      v20 = vmovl_s8(v16);
      v21 = vcvtq_f32_s32(vmovl_high_s16(v20));
      v22 = vmovl_s8(v17);
      v23 = vaddq_f32(v13, vaddq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v20.i8)), a6.n128_f32[0]), vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v22.i8)), a2.n128_f32[0])));
      v24 = vaddq_f32(v13, vaddq_f32(vmulq_n_f32(v21, a6.n128_f32[0]), vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v22)), a2.n128_f32[0])));
      *(a10 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v23, vorrq_s8(vandq_s8(v19, v23), v18)))), vcvtq_s32_f32(vaddq_f32(v24, vorrq_s8(vandq_s8(v15[7], v24), v14[9])))));
      result += 8;
      if (v11 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1001FA538(__n128 a1, float a2, int32x2_t a3, double a4, __n128 a5, uint64_t a6, int16x8_t *a7, int16x8_t *a8, int16x8_t *a9, int a10)
{
  v10 = a10 - 8;
  if (a10 >= 8)
  {
    a5.n128_f32[0] = a2;
    LODWORD(result) = 0;
    v12 = vdupq_lane_s32(a3, 0);
    v13 = &off_1004B0000;
    v14 = &off_1004B0000;
    while (1)
    {
      v15 = *a7;
      v16 = *a8;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v57 = a7;
        v61 = a9;
        v49 = a8;
        v45 = result;
        v53 = v10;
        v41 = a5;
        v33 = v12;
        v37 = a1;
        v25 = v15;
        v29 = v16;
        sub_1003C8444();
        v15 = v25;
        v16 = v29;
        v12 = v33;
        a1 = v37;
        a5 = v41;
        v14 = &off_1004B0000;
        v13 = &off_1004B0000;
        v10 = v53;
        LODWORD(result) = v45;
        a7 = v57;
        a9 = v61;
        a8 = v49;
        if (atomic_load_explicit(byte_1004B00A0, memory_order_acquire))
        {
LABEL_6:
          v17 = v13[9];
          v18 = v14[7];
          if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v58 = a7;
      v62 = a9;
      v50 = a8;
      v46 = result;
      v54 = v10;
      v42 = a5;
      v34 = v12;
      v38 = a1;
      v26 = v15;
      v30 = v16;
      sub_1003C848C();
      v15 = v26;
      v16 = v30;
      v12 = v34;
      a1 = v38;
      a5 = v42;
      v14 = &off_1004B0000;
      v13 = &off_1004B0000;
      v10 = v54;
      LODWORD(result) = v46;
      a7 = v58;
      a9 = v62;
      a8 = v50;
      v17 = xmmword_1004B0090;
      v18 = xmmword_1004B0070;
      if (atomic_load_explicit(byte_1004B0080, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v59 = a7;
      v63 = a9;
      v51 = a8;
      v47 = result;
      v55 = v10;
      v43 = a5;
      v35 = v12;
      v39 = a1;
      v27 = v15;
      v31 = v16;
      v21 = v18;
      v23 = v17;
      sub_1003C8444();
      v18 = v21;
      v17 = v23;
      v15 = v27;
      v16 = v31;
      v12 = v35;
      a1 = v39;
      a5 = v43;
      v14 = &off_1004B0000;
      v13 = &off_1004B0000;
      v10 = v55;
      LODWORD(result) = v47;
      a7 = v59;
      a9 = v63;
      a8 = v51;
      if ((atomic_load_explicit(byte_1004B00A0, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v60 = a7;
        v64 = a9;
        v52 = a8;
        v48 = result;
        v56 = v10;
        v44 = a5;
        v36 = v12;
        v40 = a1;
        v28 = v15;
        v32 = v16;
        v22 = v18;
        v24 = v17;
        sub_1003C848C();
        v18 = v22;
        v17 = v24;
        v15 = v28;
        v16 = v32;
        v12 = v36;
        a1 = v40;
        a5 = v44;
        v14 = &off_1004B0000;
        v13 = &off_1004B0000;
        v10 = v56;
        LODWORD(result) = v48;
        a7 = v60;
        a9 = v64;
        a8 = v52;
      }

LABEL_8:
      v19 = vaddq_f32(v12, vaddq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v15.i8)), a1.n128_f32[0]), vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v16.i8)), a5.n128_f32[0])));
      v20 = vaddq_f32(v12, vaddq_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v15)), a1.n128_f32[0]), vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v16)), a5.n128_f32[0])));
      *a9++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v19, vorrq_s8(vandq_s8(v18, v19), v17)))), vcvtq_s32_f32(vaddq_f32(v20, vorrq_s8(vandq_s8(v14[7], v20), v13[9]))));
      ++a8;
      ++a7;
      result = (result + 8);
      if (v10 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

__n128 sub_1001FA7CC()
{
  result.n128_u64[0] = 0x3F0000003F000000;
  result.n128_u64[1] = 0x3F0000003F000000;
  xmmword_1004B0030 = result;
  return result;
}

__n128 sub_1001FA7DC()
{
  result.n128_u64[0] = 0x8000000080000000;
  result.n128_u64[1] = 0x8000000080000000;
  xmmword_1004B0010 = result;
  return result;
}

__n128 sub_1001FA7EC()
{
  result.n128_u64[0] = 0x3F0000003F000000;
  result.n128_u64[1] = 0x3F0000003F000000;
  xmmword_1004B0050 = result;
  return result;
}

__n128 sub_1001FA7FC()
{
  result.n128_u64[0] = 0x3F0000003F000000;
  result.n128_u64[1] = 0x3F0000003F000000;
  xmmword_1004B0090 = result;
  return result;
}

__n128 sub_1001FA80C()
{
  result.n128_u64[0] = 0x8000000080000000;
  result.n128_u64[1] = 0x8000000080000000;
  xmmword_1004B0070 = result;
  return result;
}

void *sub_1001FA81C(void *a1, char *__s)
{
  *a1 = 0;
  a1[1] = 0;
  if (__s)
  {
    v4 = strlen(__s);
    if (v4)
    {
      v5 = v4;
      v6 = sub_1002A80E0(a1, v4);
      memcpy(v6, __s, v5);
    }
  }

  return a1;
}

int *sub_1001FA87C(int a1, int a2, unsigned int a3)
{
  v3 = sub_1001FA8A8(a1, a2, a3);
  sub_1001FA9C0(v3);
  return v3;
}

_DWORD *sub_1001FA8A8(int a1, int a2, unsigned int a3)
{
  v3 = a3;
  if ((a2 | a1) < 0)
  {
    v8[0] = 0;
    v8[1] = 0;
    qmemcpy(sub_1002A80E0(v8, 28), "Non-positive width or height", 28);
    sub_1002A8980(-201, v8, "cvCreateMatHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 119);
  }

  v6 = ((((a3 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a3 & 7))) & 3)) * a2;
  result = sub_1001D90AC(0x28uLL);
  *result = v3 & 0xFFF | 0x42424000;
  result[1] = v6;
  result[8] = a1;
  result[9] = a2;
  *(result + 3) = 0;
  *(result + 1) = 0;
  result[4] = 1;
  if (v6 * a1 >= 0x80000000)
  {
    *result = v3 & 0xFFF | 0x42420000;
  }

  return result;
}

int *sub_1001FA9C0(int *result)
{
  if (!result)
  {
    goto LABEL_28;
  }

  v1 = result;
  v2 = *result;
  v3 = *result & 0xFFFF0000;
  if (v3 != 1111621632)
  {
    if (v2 == 144)
    {
      if (*(result + 11))
      {
        v34 = 0;
        v35 = 0;
        qmemcpy(sub_1002A80E0(&v34, 25), "Data is already allocated", 25);
        sub_1002A8980(-2, &v34, "cvCreateData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 824);
      }

      v8 = off_1004BD338;
      if (off_1004BD338)
      {
        v9 = result[4];
        v10 = result[10];
        if (v9 == 64 || v9 == 32)
        {
          if (v9 == 32)
          {
            v11 = 2;
          }

          else
          {
            v11 = 3;
          }

          result[10] = v10 << v11;
          result[4] = 8;
        }

        result = (v8)(result, 0, 0);
        v1[10] = v10;
        v1[4] = v9;
      }

      else
      {
        v12 = result[11] * result[24];
        v13 = result[20];
        if (v12 != v13)
        {
          v34 = 0;
          v35 = 0;
          qmemcpy(sub_1002A80E0(&v34, 22), "Overflow for imageSize", 22);
          sub_1002A8980(-4, &v34, "cvCreateData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 830);
        }

        result = sub_1001D90AC(v13);
        *(v1 + 17) = result;
        *(v1 + 11) = result;
      }

      return result;
    }

    if (v3 == 1111687168)
    {
      if (!result[8])
      {
        return result;
      }

      if (*(result + 3))
      {
        sub_1001FA81C(&v34, "Data is already allocated");
        sub_1002A8980(-2, &v34, "cvCreateData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 860);
      }

      v14 = (((v2 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v2 & 7))) & 3);
      if ((v2 & 0x4000) != 0)
      {
        v17 = result[9];
        if (!v17)
        {
          v17 = (((v2 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v2 & 7))) & 3);
        }

        v14 = v17 * result[8];
        goto LABEL_46;
      }

      v15 = result[1];
      if (v15 >= 1)
      {
        if (v15 < 8)
        {
          v16 = result[1];
          goto LABEL_42;
        }

        v18 = vdupq_n_s64(v14);
        v16 = v15 & 7;
        v19 = &result[2 * v15];
        v20 = v15 & 0x7FFFFFF8;
        v21 = v18;
        v22 = v18;
        v23 = v18;
        do
        {
          v36 = vld2q_f32(v19);
          v24 = v19 - 8;
          v37 = vld2q_f32(v24);
          v25 = vrev64q_s32(v36.val[0]);
          v26 = vextq_s8(v25, v25, 8uLL);
          v27 = vrev64q_s32(v37.val[0]);
          v28 = vextq_s8(v27, v27, 8uLL);
          v36.val[0] = vrev64q_s32(v36.val[1]);
          v36.val[0] = vextq_s8(v36.val[0], v36.val[0], 8uLL);
          v36.val[1] = vrev64q_s32(v37.val[1]);
          v36.val[1] = vextq_s8(v36.val[1], v36.val[1], 8uLL);
          v37.val[0] = vmull_s32(*v26.i8, *v36.val[0].f32);
          v36.val[0] = vmull_high_s32(v26, v36.val[0]);
          v37.val[1] = vmull_s32(*v28.i8, *v36.val[1].f32);
          v36.val[1] = vmull_high_s32(v28, v36.val[1]);
          v21 = vbslq_s8(vcgtq_u64(v21, v36.val[0]), v21, v36.val[0]);
          v18 = vbslq_s8(vcgtq_u64(v18, v37.val[0]), v18, v37.val[0]);
          v23 = vbslq_s8(vcgtq_u64(v23, v36.val[1]), v23, v36.val[1]);
          v22 = vbslq_s8(vcgtq_u64(v22, v37.val[1]), v22, v37.val[1]);
          v19 -= 16;
          v20 -= 8;
        }

        while (v20);
        v29 = vbslq_s8(vcgtq_u64(v18, v22), v18, v22);
        v30 = vbslq_s8(vcgtq_u64(v21, v23), v21, v23);
        v31 = vbslq_s8(vcgtq_u64(v29, v30), v29, v30);
        v30.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
        v14 = vbsl_s8(vcgtd_u64(v31.u64[0], v30.u64[0]), *v31.i8, *v30.i8);
        if ((v15 & 0x7FFFFFF8) != v15)
        {
LABEL_42:
          v32 = v16 + 1;
          v33 = &result[2 * v16 + 7];
          do
          {
            if (v14 <= *(v33 - 1) * *v33)
            {
              v14 = *(v33 - 1) * *v33;
            }

            --v32;
            v33 -= 2;
          }

          while (v32 > 1);
        }
      }

LABEL_46:
      v7 = v14 + 68;
LABEL_47:
      result = sub_1001D90AC(v7);
      *(v1 + 1) = result;
      *(v1 + 3) = (result + 67) & 0xFFFFFFFFFFFFFFC0;
      *result = 1;
      return result;
    }

LABEL_28:
    v34 = 0;
    v35 = 0;
    qmemcpy(sub_1002A80E0(&v34, 38), "unrecognized or unsupported array type", 38);
    sub_1002A8980(-5, &v34, "cvCreateData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 885);
  }

  v4 = result[9];
  if (v4 < 0)
  {
    goto LABEL_28;
  }

  v5 = result[8];
  if (v5 < 0)
  {
    goto LABEL_28;
  }

  if (v4 && v5)
  {
    v6 = result[1];
    if (*(result + 3))
    {
      v34 = 0;
      v35 = 0;
      qmemcpy(sub_1002A80E0(&v34, 25), "Data is already allocated", 25);
      sub_1002A8980(-2, &v34, "cvCreateData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 806);
    }

    if (!v6)
    {
      v6 = ((((*result >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*result & 7))) & 3)) * result[9];
    }

    v7 = result[8] * v6 + 68;
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_1001FAE94(uint64_t result, int a2, int a3, unsigned int a4, uint64_t a5, int a6)
{
  v6 = a6;
  if (!result)
  {
    v11 = 0;
    v12 = 0;
    sub_1002A8980(-27, &v11, "cvInitMatHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 147);
  }

  if ((a3 | a2) < 0)
  {
    v11 = 0;
    v12 = 0;
    qmemcpy(sub_1002A80E0(&v11, 25), "Non-positive cols or rows", 25);
    sub_1002A8980(-201, &v11, "cvInitMatHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 153);
  }

  v7 = a4 & 0xFFF | 0x42420000;
  *result = v7;
  *(result + 32) = a2;
  *(result + 36) = a3;
  *(result + 24) = a5;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v8 = ((((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3)) * a3;
  if (a6 && a6 != 0x7FFFFFFF)
  {
    if (v8 > a6)
    {
      v11 = 0;
      v12 = 0;
      sub_1002A8980(-13, &v11, "cvInitMatHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 169);
    }
  }

  else
  {
    v6 = ((((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3)) * a3;
  }

  if (v6 == v8 || a2 == 1)
  {
    v10 = 0x4000;
  }

  else
  {
    v10 = 0;
  }

  if (v6 * a2 > 0x7FFFFFFF)
  {
    v10 = 0;
  }

  *result = v7 | v10;
  *(result + 4) = v6;
  return result;
}

void sub_1001FB074(void **a1)
{
  if (!a1)
  {
    v7 = 0;
    v8 = 0;
    sub_1002A8980(-9, &v7, "cvReleaseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 190);
  }

  v1 = *a1;
  if (*a1)
  {
    v2 = *v1;
    v3 = *v1 & 0xFFFF0000;
    if (v3 != 1111687168 && (v3 != 1111621632 || (v1[9] & 0x80000000) != 0 || (v1[8] & 0x80000000) != 0))
    {
      v7 = 0;
      v8 = 0;
      sub_1002A8980(-206, &v7, "cvReleaseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 197);
    }

    *a1 = 0;
    v4 = v2 & 0xFFFF0000;
    if ((v4 == 1111687168 || v4 == 1111621632 && v1[9] >= 1 && v1[8] >= 1) && *(v1 + 3))
    {
      v5 = *(v1 + 1);
      *(v1 + 3) = 0;
      if (v5)
      {
        if ((*v5)-- == 1)
        {
          j__free(v5);
        }
      }

      *(v1 + 1) = 0;
    }

    j__free(v1);
  }
}

int *sub_1001FB1DC(uint64_t a1)
{
  if (!a1 || (v2 = *a1, HIWORD(*a1) != 16962) || (v3 = *(a1 + 36), v3 < 1) || (v4 = *(a1 + 32), v4 <= 0))
  {
    v8[0] = 0;
    v8[1] = 0;
    *sub_1002A80E0(v8, 16) = *"Bad CvMat header";
    sub_1002A8980(-5, v8, "cvCloneMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 212);
  }

  v5 = sub_1001FA8A8(v4, v3, v2);
  v6 = v5;
  if (*(a1 + 24))
  {
    sub_1001FA9C0(v5);
    sub_100230B48(a1, v6, 0);
  }

  return v6;
}

uint64_t sub_1001FB2C8(uint64_t result, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  if (!result)
  {
    v13 = 0;
    v14 = 0;
    qmemcpy(sub_1002A80E0(&v13, 26), "NULL matrix header pointer", 26);
    sub_1002A8980(-27, &v13, "cvInitMatNDHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 238);
  }

  if (!a3)
  {
    v13 = 0;
    v14 = 0;
    v5 = sub_1002A80E0(&v13, 20);
    *(v5 + 16) = 1919251566;
    *v5 = *"NULL <sizes> pointer";
    sub_1002A8980(-27, &v13, "cvInitMatNDHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 244);
  }

  v6 = (((a4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (a4 & 7))) & 3);
  if (a2 - 33 <= 0xFFFFFFDF)
  {
    v13 = 0;
    v14 = 0;
    qmemcpy(sub_1002A80E0(&v13, 46), "non-positive or too large number of dimensions", 46);
    sub_1002A8980(-211, &v13, "cvInitMatNDHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 248);
  }

  v7 = a2 + 1;
  v8 = (result + 8 * a2 + 28);
  v9 = (a3 + 4 * a2 - 4);
  do
  {
    if (*v9 < 0)
    {
      v13 = 0;
      v14 = 0;
      qmemcpy(sub_1002A80E0(&v13, 37), "one of dimesion sizes is non-positive", 37);
      sub_1002A8980(-201, &v13, "cvInitMatNDHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 253);
    }

    *(v8 - 1) = *v9;
    if (v6 >= 0x80000000)
    {
      v13 = 0;
      v14 = 0;
      v11 = sub_1002A80E0(&v13, 20);
      *(v11 + 16) = 1734959648;
      *v11 = *"The array is too big";
      sub_1002A8980(-211, &v13, "cvInitMatNDHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 256);
    }

    *v8 = v6;
    v8 -= 2;
    v10 = *v9--;
    v6 *= v10;
    --v7;
  }

  while (v7 > 1);
  if (v6 >= 0x80000000)
  {
    v12 = 1111687168;
  }

  else
  {
    v12 = 1111703552;
  }

  *result = v12 & 0xFFFFF000 | a4 & 0xFFF;
  *(result + 4) = a2;
  *(result + 24) = a5;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

void sub_1001FB5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

int *sub_1001FB618(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v3 = sub_1001FB644(a1, a2, a3);
  sub_1001FA9C0(v3);
  return v3;
}

uint64_t sub_1001FB644(unsigned int a1, uint64_t a2, unsigned int a3)
{
  if (a1 - 33 <= 0xFFFFFFDF)
  {
    v8[0] = 0;
    v8[1] = 0;
    qmemcpy(sub_1002A80E0(v8, 46), "non-positive or too large number of dimensions", 46);
    sub_1002A8980(-211, v8, "cvCreateMatNDHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 287);
  }

  v6 = sub_1001D90AC(0x120uLL);
  result = sub_1001FB2C8(v6, a1, a2, a3, 0);
  *(result + 16) = 1;
  return result;
}

int *sub_1001FB718(uint64_t a1)
{
  if (!a1 || *(a1 + 2) != 16963)
  {
    v40 = 0;
    v41 = 0;
    v2 = sub_1002A80E0(&v40, 18);
    *(v2 + 16) = 29285;
    *v2 = *"Bad CvMatND header";
    sub_1002A8980(-5, &v40, "cvCloneMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 302);
  }

  v3 = *(a1 + 4);
  if (v3 >= 33)
  {
    v40 = 0;
    v41 = 0;
    qmemcpy(sub_1002A80E0(&v40, 15), "src->dims <= 32", 15);
    sub_1002A8980(-215, &v40, "cvCloneMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 304);
  }

  if (v3 >= 1)
  {
    if (v3 > 8)
    {
      v5 = v3 & 7;
      if ((v3 & 7) == 0)
      {
        v5 = 8;
      }

      v4 = v3 - v5;
      v6 = (a1 + 64);
      v7 = &v42;
      v8 = v4;
      do
      {
        v9 = v6 - 8;
        v10 = vld2q_f32(v9);
        v11 = vld2q_f32(v6);
        *(v7 - 1) = v10;
        *v7 = v11;
        v6 += 16;
        v7 += 2;
        v8 -= 8;
      }

      while (v8);
    }

    else
    {
      v4 = 0;
    }

    v12 = &v40 + v4;
    v13 = (a1 + 8 * v4 + 32);
    v14 = v3 - v4;
    do
    {
      v15 = *v13;
      v13 += 2;
      *v12++ = v15;
      --v14;
    }

    while (v14);
  }

  v16 = sub_1001FB644(v3, &v40, *a1);
  v17 = v16;
  if (*(a1 + 24))
  {
    sub_1001FA9C0(v16);
    sub_10026AD20(a1, 0, 0, 0, v35);
    sub_10026AD20(v17, 0, 0, 0, &v28);
    v18 = *(v17 + 24);
    LODWORD(v25) = 33619968;
    v26 = &v28;
    v27 = 0;
    sub_10022B754(v35, &v25);
    if (v29 != v18)
    {
      v25 = 0;
      v26 = 0;
      v19 = sub_1002A80E0(&v25, 18);
      *(v19 + 16) = 12385;
      *v19 = *"_dst.data == data0";
      sub_1002A8980(-215, &v25, "cvCloneMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 319);
    }

    if (v31 && atomic_fetch_add((v31 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(&v28);
    }

    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    if (SDWORD1(v28) >= 1)
    {
      v20 = 0;
      v21 = v32;
      do
      {
        *(v21 + 4 * v20++) = 0;
      }

      while (v20 < SDWORD1(v28));
    }

    if (v33 != &v34)
    {
      j__free(v33);
    }

    if (v36 && atomic_fetch_add((v36 + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v35);
    }

    v36 = 0;
    memset(&v35[1], 0, 32);
    if (SDWORD1(v35[0]) >= 1)
    {
      v22 = 0;
      v23 = v37;
      do
      {
        *(v23 + 4 * v22++) = 0;
      }

      while (v22 < SDWORD1(v35[0]));
    }

    if (v38 != &v39)
    {
      j__free(v38);
    }
  }

  return v17;
}

void sub_1001FBA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FBB14(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a4;
  if (a1 - 11 <= 0xFFFFFFF5)
  {
    v62 = 0;
    v63 = 0;
    qmemcpy(sub_1002A80E0(&v62, 26), "Incorrect number of arrays", 26);
    sub_1002A8980(-211, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 394);
  }

  if (!a2 || !a4)
  {
    v62 = 0;
    v63 = 0;
    qmemcpy(sub_1002A80E0(&v62, 39), "Some of required array pointers is NULL", 39);
    sub_1002A8980(-27, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 397);
  }

  if (!a5)
  {
    v62 = 0;
    v63 = 0;
    qmemcpy(sub_1002A80E0(&v62, 24), "Iterator pointer is NULL", 24);
    sub_1002A8980(-27, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 400);
  }

  if (a3)
  {
    v62 = 0;
    v63 = 0;
    qmemcpy(sub_1002A80E0(&v62, 35), "Iterator with mask is not supported", 35);
    sub_1002A8980(-5, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 403);
  }

  v8 = 0;
  v9 = 0;
  v57 = a6 & 3;
  v59 = a5 + 16;
  v60 = a5 + 224;
  v58 = a1;
  v10 = -1;
  v11 = a2;
  do
  {
    v15 = v9;
    v16 = *(v11 + 8 * v8);
    if (!v16)
    {
      v62 = 0;
      v63 = 0;
      qmemcpy(sub_1002A80E0(&v62, 39), "Some of required array pointers is NULL", 39);
      sub_1002A8980(-27, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 411);
    }

    if (*(v16 + 1) != 16963 || !*(v16 + 3))
    {
      v61 = 0;
      v16 = sub_1001FC3C0(v16, v7 + 288 * v8, &v61);
      if (v61)
      {
        v62 = 0;
        v63 = 0;
        qmemcpy(sub_1002A80E0(&v62, 27), "COI set is not allowed here", 27);
        sub_1002A8980(-24, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 420);
      }
    }

    *(v60 + 8 * v8) = v16;
    v9 = v16;
    if (v8)
    {
      if (v16[1] != v15[1])
      {
        v62 = 0;
        v63 = 0;
        qmemcpy(sub_1002A80E0(&v62, 47), "Number of dimensions is the same for all arrays", 47);
        sub_1002A8980(-209, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 429);
      }

      if (v57 > 1)
      {
        if (v57 == 2 && ((*v15 ^ *v16) & 0xFF8) != 0)
        {
          v62 = 0;
          v63 = 0;
          qmemcpy(sub_1002A80E0(&v62, 36), "Depth is not the same for all arrays", 36);
          sub_1002A8980(-205, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 446);
        }
      }

      else if (v57)
      {
        if (((*v15 ^ *v16) & 0xFF8) != 0)
        {
          v62 = 0;
          v63 = 0;
          qmemcpy(sub_1002A80E0(&v62, 49), "Number of channels is not the same for all arrays", 49);
          sub_1002A8980(-205, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 441);
        }
      }

      else if (((*v15 ^ *v16) & 0xFFF) != 0)
      {
        v62 = 0;
        v63 = 0;
        qmemcpy(sub_1002A80E0(&v62, 40), "Data type is not the same for all arrays", 40);
        sub_1002A8980(-205, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 436);
      }

      if ((v6 & 4) != 0 || (v17 = v16[1], v17 < 1))
      {
        v9 = v15;
      }

      else
      {
        v18 = v6;
        v19 = 0;
        v20 = 8;
        do
        {
          if (v16[v20] != v15[v20])
          {
            v62 = 0;
            v63 = 0;
            qmemcpy(sub_1002A80E0(&v62, 43), "Dimension sizes are the same for all arrays", 43);
            sub_1002A8980(-209, &v62, "cvInitNArrayIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 455);
          }

          ++v19;
          v20 += 2;
        }

        while (v19 < v17);
        v9 = v15;
        v6 = v18;
        v7 = a4;
        v11 = a2;
      }
    }

    v12 = v16[1];
    v21 = (((*v16 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*v16 & 7))) & 3);
    LODWORD(v13) = v12 - 1;
    if (v12 - 1 > v10)
    {
      v13 = v12 - 1;
      v22 = &v16[2 * v13 + 8];
      if (v21 == v22[1])
      {
        v23 = v12 - 2;
        do
        {
          v21 *= *v22;
          if (v23 <= v10)
          {
            v12 = v10 + 1;
            LODWORD(v13) = v10;
            goto LABEL_12;
          }

          v24 = *(v22 - 1);
          --v12;
          --v23;
          v22 -= 2;
        }

        while (v21 == v24);
        LODWORD(v13) = v12 - 1;
      }
    }

LABEL_12:
    if (v21 <= 0x7FFFFFFF || v13 != v10)
    {
      v12 = v13;
    }

    *(v60 + 8 * v8) = v16;
    if (v12 > v10)
    {
      v10 = v12;
    }

    *(v59 + 8 * v8++) = *(v16 + 3);
  }

  while (v8 != v58);
  v25 = v9[1];
  if (v25 - 1 <= v10)
  {
    v29 = a5;
    result = (v10 + 1);
    *a5 = a1;
    *(a5 + 4) = result;
    *(a5 + 8) = 0x100000001;
    if (v10 < 0)
    {
      return result;
    }

    goto LABEL_64;
  }

  v26 = v25 - 1;
  v27 = ~v10 + v25;
  if (v27 < 8)
  {
    v28 = 1;
    v29 = a5;
    v30 = a1;
LABEL_61:
    v39 = &v9[2 * v26 + 8];
    do
    {
      v40 = *v39;
      v39 -= 2;
      v28 *= v40;
      --v26;
    }

    while (v26 > v10);
    goto LABEL_63;
  }

  v26 -= v27 & 0xFFFFFFFFFFFFFFF8;
  v32 = &v9[2 * v25];
  v33.i64[0] = 0x100000001;
  v33.i64[1] = 0x100000001;
  v34 = v27 & 0xFFFFFFFFFFFFFFF8;
  v35.i64[0] = 0x100000001;
  v35.i64[1] = 0x100000001;
  do
  {
    v36.i32[0] = v32[6];
    v36.i32[1] = v32[4];
    v36.i32[2] = v32[2];
    v36.i32[3] = *v32;
    v37.i32[0] = *(v32 - 2);
    v37.i32[1] = *(v32 - 4);
    v37.i32[2] = *(v32 - 6);
    v37.i32[3] = *(v32 - 8);
    v33 = vmulq_s32(v36, v33);
    v35 = vmulq_s32(v37, v35);
    v32 -= 16;
    v34 -= 8;
  }

  while (v34);
  v38 = vmulq_s32(v35, v33);
  *v38.i8 = vmul_s32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
  v28 = v38.i32[0] * v38.i32[1];
  v29 = a5;
  v30 = a1;
  if (v27 != (v27 & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_61;
  }

LABEL_63:
  result = (v10 + 1);
  *v29 = v30;
  *(v29 + 4) = result;
  *(v29 + 8) = v28 | &_mh_execute_header;
  if (v10 < 0)
  {
    return result;
  }

LABEL_64:
  if (result >= 0xD && (v29 + 96 >= &v9[2 * result + 7] || (v9 + 8) >= v29 + 96 + 4 * result))
  {
    v42 = result & 7;
    if ((result & 7) == 0)
    {
      v42 = 8;
    }

    v41 = result - v42;
    v43 = (v9 + 16);
    v44 = (v29 + 112);
    v45 = v41;
    do
    {
      v46 = v43 - 8;
      v47 = vld2q_f32(v46);
      v48 = vld2q_f32(v43);
      *(v44 - 1) = v47;
      *v44 = v48;
      v43 += 16;
      v44 += 2;
      v45 -= 8;
    }

    while (v45);
  }

  else
  {
    v41 = 0;
  }

  v49 = (v29 + 4 * v41 + 96);
  v50 = &v9[2 * v41 + 8];
  v51 = result - v41;
  do
  {
    v52 = *v50;
    v50 += 2;
    *v49++ = v52;
    --v51;
  }

  while (v51);
  return result;
}

void sub_1001FC2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

int *sub_1001FC3C0(int *result, uint64_t a2, _DWORD *a3)
{
  v4 = result;
  if (a3)
  {
    *a3 = 0;
  }

  if (!result || !a2)
  {
    v11 = 0;
    v12 = 0;
    qmemcpy(sub_1002A80E0(&v11, 28), "NULL array pointer is passed", 28);
    sub_1002A8980(-27, &v11, "cvGetMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 336);
  }

  v5 = *result;
  if (HIWORD(*result) == 16963)
  {
    if (!*(result + 3))
    {
      v11 = 0;
      v12 = 0;
      qmemcpy(sub_1002A80E0(&v11, 32), "The matrix has NULL data pointer", 32);
      sub_1002A8980(-27, &v11, "cvGetMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 341);
    }

    return result;
  }

  if (v5 == 144)
  {
    v6 = sub_1001FD9EC(result, &v11, a3, 0);
    v4 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    v5 = *v6;
  }

  if (HIWORD(v5) != 16962 || v4[9] < 1 || v4[8] <= 0)
  {
LABEL_16:
    v9 = 0;
    v10 = 0;
    qmemcpy(sub_1002A80E0(&v9, 38), "Unrecognized or unsupported array type", 38);
    sub_1002A8980(-5, &v9, "cvGetMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 353);
  }

  v7 = *(v4 + 3);
  if (!v7)
  {
    v9 = 0;
    v10 = 0;
    qmemcpy(sub_1002A80E0(&v9, 33), "Input array has NULL data pointer", 33);
    sub_1002A8980(-27, &v9, "cvGetMatND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 356);
  }

  *(a2 + 24) = v7;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *v4;
  *a2 = *v4;
  *(a2 + 4) = 2;
  *(a2 + 32) = v4[8];
  *(a2 + 36) = v4[1];
  *(a2 + 40) = v4[9];
  *(a2 + 44) = (((v8 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3);
  return a2;
}

void sub_1001FC624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

BOOL sub_1001FC684(unsigned int *a1)
{
  v1 = a1[1];
  if (v1 < 1)
  {
    return 0;
  }

  v2 = a1 + 24;
  v3 = *a1;
  if (v3 >= 1)
  {
    v4 = v3 & 0x7FFFFFFE;
    v5 = a1 + 56;
    while (1)
    {
      v6 = v1 - 1;
      v7 = 8 * (v1 - 1);
      v8 = v3 & 0x7FFFFFFE;
      v9 = a1 + 58;
      if (v3 == 1)
      {
        break;
      }

      do
      {
        v11 = *(v9 - 26) + *(*v9 + v7 + 36);
        *(v9 - 27) += *(*(v9 - 1) + v7 + 36);
        *(v9 - 26) = v11;
        v9 += 4;
        v8 -= 2;
      }

      while (v8);
      v10 = v3 & 0x7FFFFFFE;
      if (v4 != v3)
      {
        goto LABEL_9;
      }

LABEL_11:
      v14 = v2[v6];
      v15 = __OFSUB__(v14--, 1);
      v16 = (v14 < 0) ^ v15 | (v14 == 0);
      v2[v6] = v14;
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      if (!v16)
      {
        return v17;
      }

      v18 = *(*(a1 + 28) + 8 * v6 + 32);
      if (v3 == 1)
      {
        v19 = 0;
      }

      else
      {
        v20 = v3 & 0x7FFFFFFE;
        v21 = a1 + 58;
        do
        {
          v22 = *(v21 - 26) - v18 * *(*v21 + v7 + 36);
          *(v21 - 27) -= v18 * *(*(v21 - 1) + v7 + 36);
          *(v21 - 26) = v22;
          v21 += 4;
          v20 -= 2;
        }

        while (v20);
        v19 = v3 & 0x7FFFFFFE;
        if (v4 == v3)
        {
          goto LABEL_4;
        }
      }

      v23 = &v5[2 * v19];
      v24 = v3 - v19;
      do
      {
        *(v23 - 26) -= v18 * *(*v23 + 8 * v6 + 36);
        v23 += 2;
        --v24;
      }

      while (v24);
LABEL_4:
      v2[v6] = v18;
      v16 = v1-- <= 1;
      if (v16)
      {
        return 0;
      }
    }

    v10 = 0;
LABEL_9:
    v12 = &v5[2 * v10];
    v13 = v3 - v10;
    do
    {
      *(v12 - 26) += *(*v12 + 8 * v6 + 36);
      v12 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_11;
  }

  v26 = (v1 - 1);
  v27 = v2[v26];
  v15 = __OFSUB__(v27--, 1);
  v2[v26] = v27;
  if (!((v27 < 0) ^ v15 | (v27 == 0)))
  {
    return 1;
  }

  v28 = (*(a1 + 28) + 8 * v26 + 32);
  v29 = v26 + 23;
  for (i = &a1[v26 + 23]; ; --i)
  {
    v31 = *v28;
    v28 -= 2;
    i[1] = v31;
    v17 = v29 - 23 > 0;
    if (v29 - 23 <= 0)
    {
      break;
    }

    --v29;
    v16 = (*i)-- <= 1;
    if (!v16)
    {
      return 1;
    }
  }

  return v17;
}

_DWORD *sub_1001FC868(int a1, int *a2, unsigned int a3)
{
  v3 = a3;
  v6 = (0x88442211 >> (4 * (a3 & 7))) & 0xF;
  if (!v6)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 23), "invalid array data type", 23);
    sub_1002A8980(-210, &v21, "cvCreateSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 537);
  }

  if ((a1 - 33) <= 0xFFFFFFDF)
  {
    v21 = 0;
    v22 = 0;
    qmemcpy(sub_1002A80E0(&v21, 24), "bad number of dimensions", 24);
    sub_1002A8980(-211, &v21, "cvCreateSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 540);
  }

  if (!a2)
  {
    v21 = 0;
    v22 = 0;
    v7 = sub_1002A80E0(&v21, 20);
    *(v7 + 16) = 1919251566;
    *v7 = *"NULL <sizes> pointer";
    sub_1002A8980(-27, &v21, "cvCreateSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 543);
  }

  if (a1 >= 1)
  {
    v8 = a1;
    v9 = a2;
    do
    {
      v10 = *v9++;
      if (v10 <= 0)
      {
        v21 = 0;
        v22 = 0;
        qmemcpy(sub_1002A80E0(&v21, 37), "one of dimesion sizes is non-positive", 37);
        sub_1002A8980(-201, &v21, "cvCreateSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 548);
      }

      --v8;
    }

    while (v8);
  }

  v11 = v6 + v6 * ((a3 >> 3) & 0x1FF);
  if (a1 <= 32)
  {
    v12 = 32;
  }

  else
  {
    v12 = a1;
  }

  v13 = sub_1001D90AC(4 * (v12 - 32) + 184);
  *v13 = v3 & 0xFFF | 0x42440000;
  v13[1] = a1;
  *(v13 + 1) = 0;
  v13[4] = 1;
  v14 = 4 * a1;
  memcpy(v13 + 13, a2, v14);
  v15 = (v6 + 15) & -v6;
  v16 = (v11 + v15 + 3) & 0xFFFC;
  v13[11] = v15;
  v13[12] = v16;
  v17 = v14 + v16 + 15;
  sub_100231744(4096);
  *(v13 + 3) = sub_100236364(0, 112, v17 & 0xFFFFFFF0, v18);
  v13[10] = 1024;
  v19 = sub_1001D90AC(0x2000uLL);
  *(v13 + 4) = v19;
  bzero(v19, 0x2000uLL);
  return v13;
}

void sub_1001FCB74(uint64_t *a1)
{
  if (!a1)
  {
    v2 = 0;
    v3 = 0;
    sub_1002A8980(-9, &v2, "cvReleaseSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 581);
  }

  v1 = *a1;
  if (*a1)
  {
    if (*(v1 + 2) != 16964)
    {
      v2 = 0;
      v3 = 0;
      sub_1002A8980(-206, &v2, "cvReleaseSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 588);
    }

    *a1 = 0;
    v2 = *(*(v1 + 24) + 72);
    sub_100231874(&v2);
    j__free(*(v1 + 32));
    *(v1 + 32) = 0;
    j__free(v1);
  }
}

_DWORD *sub_1001FCC70(uint64_t a1)
{
  if (!a1 || HIWORD(*a1) != 16964)
  {
    v4[0] = 0;
    v4[1] = 0;
    qmemcpy(sub_1002A80E0(v4, 27), "Invalid sparse array header", 27);
    sub_1002A8980(-5, v4, "cvCloneSparseMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 605);
  }

  v2 = sub_1001FC868(*(a1 + 4), (a1 + 52), *a1);
  sub_100230B48(a1, v2, 0);
  return v2;
}

uint64_t sub_1001FCD40(uint64_t a1, uint64_t a2)
{
  if (!a1 || *(a1 + 2) != 16964)
  {
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 28), "Invalid sparse matrix header", 28);
    sub_1002A8980(-5, &v6, "cvInitSparseMatIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 620);
  }

  if (!a2)
  {
    v6 = 0;
    v7 = 0;
    qmemcpy(sub_1002A80E0(&v6, 21), "NULL iterator pointer", 21);
    sub_1002A8980(-27, &v6, "cvInitSparseMatIterator", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 623);
  }

  *a2 = a1;
  *(a2 + 8) = 0;
  v3 = *(a1 + 40);
  if (v3 < 1)
  {
    result = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v4 = 0;
    while (1)
    {
      result = *(*(a1 + 32) + 8 * v4);
      if (result)
      {
        break;
      }

      if (v3 == ++v4)
      {
        result = 0;
        *(a2 + 16) = v3;
        return result;
      }
    }

    *(a2 + 8) = result;
    *(a2 + 16) = v4;
  }

  return result;
}

void sub_1001FCEC4(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_17;
  }

  v1 = *a1 & 0xFFFF0000;
  if (v1 == 1111687168)
  {
    goto LABEL_6;
  }

  if (v1 == 1111621632)
  {
    if (*(a1 + 36) >= 1 && *(a1 + 32) >= 1)
    {
LABEL_6:
      if (*(a1 + 24))
      {
        *(a1 + 24) = 0;
        v2 = *(a1 + 8);
        if (v2)
        {
          if ((*v2)-- == 1)
          {
            v4 = a1;
            j__free(v2);
            a1 = v4;
          }
        }

        *(a1 + 8) = 0;
      }

      return;
    }

LABEL_17:
    v7[0] = 0;
    v7[1] = 0;
    qmemcpy(sub_1002A80E0(v7, 38), "unrecognized or unsupported array type", 38);
    sub_1002A8980(-5, v7, "cvReleaseData", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1001);
  }

  if (*a1 != 144)
  {
    goto LABEL_17;
  }

  v5 = off_1004BD340;
  if (off_1004BD340)
  {

    v5();
  }

  else
  {
    v6 = *(a1 + 136);
    *(a1 + 136) = 0;
    *(a1 + 88) = 0;

    j__free(v6);
  }
}

void *sub_1001FD040(unsigned int *a1, unsigned int a2, unsigned int a3, int *a4)
{
  if (!a1)
  {
    goto LABEL_30;
  }

  v4 = *a1;
  v5 = *a1 & 0xFFFF0000;
  if (v5 == 1111621632)
  {
    v6 = a1[9];
    if (v6 >= 1)
    {
      v7 = a1[8];
      if (v7 >= 1)
      {
        if (*(a1 + 3))
        {
          if (v6 <= a3 || v7 <= a2)
          {
            __src = 0;
            v20 = 0;
            qmemcpy(sub_1002A80E0(&__src, 21), "index is out of range", 21);
            sub_1002A8980(-211, &__src, "cvPtr2D", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1762);
          }

          if (a4)
          {
            *a4 = *a1 & 0xFFF;
          }

          return (*(a1 + 3) + a1[1] * a2 + (((((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3)) * a3));
        }
      }
    }

LABEL_30:
    __src = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&__src, 38), "unrecognized or unsupported array type", 38);
    sub_1002A8980(-5, &__src, "cvPtr2D", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1839);
  }

  if (v4 == 144)
  {
    v9 = *(a1 + 11);
    if (!v9)
    {
      goto LABEL_30;
    }

    v10 = a1[4] >> 3;
    v11 = a1[7];
    if (!v11)
    {
      v10 *= a1[2];
    }

    v12 = *(a1 + 6);
    if (v12)
    {
      v13 = v12[3];
      v14 = v12[4];
      v9 += (a1[24] * v12[2] + v12[1] * v10);
      if (v11)
      {
        v15 = *v12;
        if (!v15)
        {
          sub_1001FA81C(&__src, "COI must be non-null in case of planar images");
          sub_1002A8980(-24, &__src, "cvPtr2D", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1793);
        }

        v9 += a1[20] * (v15 - 1);
      }
    }

    else
    {
      v13 = a1[10];
      v14 = a1[11];
    }

    if (v14 <= a2 || v13 <= a3)
    {
      __src = 0;
      v20 = 0;
      qmemcpy(sub_1002A80E0(&__src, 21), "index is out of range", 21);
      sub_1002A8980(-211, &__src, "cvPtr2D", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1805);
    }

    v8 = v9 + (v10 * a3 + a1[24] * a2);
    if (a4)
    {
      v18 = a1[2];
      if (v18 - 5 <= 0xFFFFFFFB)
      {
        __src = 0;
        v20 = 0;
        sub_1002A8980(-210, &__src, "cvPtr2D", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1813);
      }

      *a4 = ((0x43160520u >> (((a1[4] >> 2) & 0x3C) + ((a1[4] >> 31) & 0x14))) & 7 | (8 * v18)) - 8;
    }
  }

  else if (v5 == 1111752704)
  {
    if (a1[1] != 2)
    {
      sub_1001FA81C(&__src, "((CvSparseMat*)arr)->dims == 2");
      sub_1002A8980(-215, &__src, "cvPtr2D", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1833);
    }

    __src = __PAIR64__(a3, a2);
    return sub_1001FE0CC(a1, &__src, a4, 1, 0);
  }

  else
  {
    if (v5 != 1111687168)
    {
      goto LABEL_30;
    }

    v16 = *(a1 + 3);
    if (!v16)
    {
      goto LABEL_30;
    }

    if (a1[1] != 2 || a1[8] <= a2 || a1[10] <= a3)
    {
      __src = 0;
      v20 = 0;
      qmemcpy(sub_1002A80E0(&__src, 21), "index is out of range", 21);
      sub_1002A8980(-211, &__src, "cvPtr2D", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1825);
    }

    v8 = v16 + a1[9] * a2 + a1[11] * a3;
    if (a4)
    {
      *a4 = *a1 & 0xFFF;
    }
  }

  return v8;
}

void sub_1001FD4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FD564(int *a1)
{
  if (!a1)
  {
    goto LABEL_15;
  }

  v1 = *a1;
  v2 = *a1 & 0xFFFF0000;
  if (v2 == 1111752704 || v2 == 1111687168)
  {
    return v1 & 0xFFF;
  }

  if (v2 == 1111621632)
  {
    if (a1[9] < 1 || a1[8] < 1)
    {
      goto LABEL_15;
    }

    return v1 & 0xFFF;
  }

  if (v1 != 144 || !*(a1 + 11))
  {
LABEL_15:
    v5[0] = 0;
    v5[1] = 0;
    qmemcpy(sub_1002A80E0(v5, 38), "unrecognized or unsupported array type", 38);
    sub_1002A8980(-5, v5, "cvGetElemType", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1094);
  }

  return ((0x43160520u >> (((a1[4] >> 2) & 0x3C) + ((a1[4] >> 31) & 0x14))) & 7 | (8 * a1[2])) - 8;
}

uint64_t sub_1001FD6A4(uint64_t a1, int *__dst)
{
  if (!a1)
  {
    goto LABEL_28;
  }

  v2 = *a1 & 0xFFFF0000;
  if (v2 == 1111621632)
  {
    if (*(a1 + 36) >= 1)
    {
      v3 = *(a1 + 32);
      if (v3 >= 1)
      {
        if (__dst)
        {
          *__dst = v3;
          v4 = *(a1 + 36);
LABEL_11:
          __dst[1] = v4;
          return 2;
        }

        return 2;
      }
    }

    goto LABEL_28;
  }

  if (*a1 == 144)
  {
    if (*(a1 + 88))
    {
      if (__dst)
      {
        *__dst = *(a1 + 44);
        v4 = *(a1 + 40);
        goto LABEL_11;
      }

      return 2;
    }

LABEL_28:
    v21[0] = 0;
    v21[1] = 0;
    qmemcpy(sub_1002A80E0(v21, 38), "unrecognized or unsupported array type", 38);
    sub_1002A8980(-5, v21, "cvGetDims", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1148);
  }

  if (v2 == 1111752704)
  {
    v5 = *(a1 + 4);
    if (!__dst)
    {
      return v5;
    }

    memcpy(__dst, (a1 + 52), 4 * v5);
    return v5;
  }

  else
  {
    if (v2 != 1111687168)
    {
      goto LABEL_28;
    }

    v7 = *(a1 + 4);
    if (__dst && v7 >= 1)
    {
      if (v7 >= 0xD && (a1 + 8 * v7 + 28 > __dst ? (v8 = a1 + 32 >= &__dst[v7]) : (v8 = 1), v8))
      {
        v9 = v7 & 7;
        if ((v7 & 7) == 0)
        {
          v9 = 8;
        }

        v10 = v7 - v9;
        v11 = (a1 + 64);
        v12 = __dst + 4;
        v13 = v10;
        do
        {
          v14 = v11 - 8;
          v15 = vld2q_f32(v14);
          v16 = vld2q_f32(v11);
          *(v12 - 1) = v15;
          *v12 = v16;
          v11 += 16;
          v12 += 8;
          v13 -= 8;
        }

        while (v13);
      }

      else
      {
        v10 = 0;
      }

      v17 = &__dst[v10];
      v18 = (a1 + 8 * v10 + 32);
      v19 = v7 - v10;
      do
      {
        v20 = *v18;
        v18 += 2;
        *v17++ = v20;
        --v19;
      }

      while (v19);
    }

    return v7;
  }
}

unint64_t sub_1001FD8C8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  if (HIWORD(*a1) == 16962)
  {
    v1 = *(a1 + 36);
    if ((v1 & 0x80000000) == 0)
    {
      v2 = *(a1 + 32);
      if ((v2 & 0x80000000) == 0)
      {
        return v1 | (v2 << 32);
      }
    }

LABEL_10:
    v5[0] = 0;
    v5[1] = 0;
    qmemcpy(sub_1002A80E0(v5, 33), "Array should be CvMat or IplImage", 33);
    sub_1002A8980(-5, v5, "cvGetSize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1246);
  }

  if (*a1 != 144)
  {
    goto LABEL_10;
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    return *(v4 + 12) | (*(v4 + 16) << 32);
  }

  else
  {
    return *(a1 + 40) | (*(a1 + 44) << 32);
  }
}

uint64_t sub_1001FD9EC(int *a1, uint64_t a2, _DWORD *a3, int a4)
{
  v5 = a2;
  if (!a1 || !a2)
  {
    v39 = 0;
    v40 = 0;
    qmemcpy(sub_1002A80E0(&v39, 28), "NULL array pointer is passed", 28);
    sub_1002A8980(-27, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2391);
  }

  v7 = *a1;
  v8 = *a1 & 0xFFFF0000;
  if (v8 == 1111621632)
  {
    if (a1[9] >= 1 && a1[8] >= 1)
    {
      if (!*(a1 + 3))
      {
        v39 = 0;
        v40 = 0;
        qmemcpy(sub_1002A80E0(&v39, 32), "The matrix has NULL data pointer", 32);
        sub_1002A8980(-27, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2396);
      }

      v9 = 0;
      v5 = a1;
      if (!a3)
      {
        return v5;
      }

LABEL_59:
      *a3 = v9;
      return v5;
    }

LABEL_22:
    if (!a4 || v8 != 1111687168)
    {
      v39 = 0;
      v40 = 0;
      qmemcpy(sub_1002A80E0(&v39, 38), "Unrecognized or unsupported array type", 38);
      sub_1002A8980(-206, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2493);
    }

    v20 = a1[8];
    if (!*(a1 + 3))
    {
      v39 = 0;
      v40 = 0;
      qmemcpy(sub_1002A80E0(&v39, 33), "Input array has NULL data pointer", 33);
      sub_1002A8980(-27, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2466);
    }

    if ((v7 & 0x4000) == 0)
    {
      v39 = 0;
      v40 = 0;
      qmemcpy(sub_1002A80E0(&v39, 44), "Only continuous nD arrays are supported here", 44);
      sub_1002A8980(-5, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2469);
    }

    v21 = a1[1];
    if (v21 < 3)
    {
      if (v21 == 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = a1[10];
      }
    }

    else
    {
      if (v21 >= 0xA)
      {
        v24 = (v21 - 1) & 7;
        if (!v24)
        {
          v24 = 8;
        }

        v25 = v21 - 1 - v24;
        v22 = v21 - v24;
        v26 = (a1 + 18);
        v27.i64[0] = 0x100000001;
        v27.i64[1] = 0x100000001;
        v28.i64[0] = 0x100000001;
        v28.i64[1] = 0x100000001;
        do
        {
          v29 = v26 - 8;
          v30 = vld2q_f32(v29);
          v31 = vld2q_f32(v26);
          v27 = vmulq_s32(v30, v27);
          v28 = vmulq_s32(v31, v28);
          v26 += 16;
          v25 -= 8;
        }

        while (v25);
        v32 = vmulq_s32(v28, v27);
        *v32.i8 = vmul_s32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
        v23 = v32.i32[0] * v32.i32[1];
      }

      else
      {
        v22 = 1;
        v23 = 1;
      }

      v33 = &a1[2 * v22 + 8];
      v34 = v21 - v22;
      do
      {
        v35 = *v33;
        v33 += 2;
        v23 *= v35;
        --v34;
      }

      while (v34);
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = *(a1 + 3);
    *(a2 + 32) = v20;
    *(a2 + 36) = v23;
    v36 = *a1;
    v37 = ((((v36 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v36 & 7))) & 3)) * v23;
    if (v20 <= 1)
    {
      v37 = 0;
    }

    *a2 = *a1 & 0xFFF | 0x42424000;
    *(a2 + 4) = v37;
    if (v20 * v37 < 0x80000000)
    {
      v9 = 0;
      if (!a3)
      {
        return v5;
      }
    }

    else
    {
      v9 = 0;
      *a2 = v36 & 0xFFF | 0x42420000;
      if (!a3)
      {
        return v5;
      }
    }

    goto LABEL_59;
  }

  if (v7 != 144)
  {
    goto LABEL_22;
  }

  if (!*(a1 + 11))
  {
    v39 = 0;
    v40 = 0;
    qmemcpy(sub_1002A80E0(&v39, 31), "The image has NULL data pointer", 31);
    sub_1002A8980(-27, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2406);
  }

  v10 = (0x43160520u >> (((a1[4] >> 2) & 0x3C) + ((a1[4] >> 31) & 0x14))) & 7;
  v11 = a1[2];
  if (v11 <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1[7];
  }

  v13 = *(a1 + 6);
  if (!v13)
  {
    if (v12)
    {
      v39 = 0;
      v40 = 0;
      qmemcpy(sub_1002A80E0(&v39, 40), "Pixel order should be used with coi == 0", 40);
      sub_1002A8980(-206, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2452);
    }

    v19 = (v10 | (8 * v11)) - 8;
    v15 = a1[10];
    v14 = a1[11];
    v17 = *(a1 + 11);
    v16 = a1[24];
    v18 = v5;
LABEL_38:
    sub_1001FAE94(v18, v14, v15, v19, v17, v16);
    v9 = 0;
    if (!a3)
    {
      return v5;
    }

    goto LABEL_59;
  }

  if (v12 == 1)
  {
    if (!*v13)
    {
      sub_1001FA81C(&v39, "Images with planar data layout should be used with COI selected");
      sub_1002A8980(-206, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2422);
    }

    v15 = v13[3];
    v14 = v13[4];
    v16 = a1[24];
    v17 = *(a1 + 11) + (*v13 - 1) * a1[20] + v16 * v13[2] + (v13[1] << ((0xFA50u >> (2 * ((0x43160520u >> (((a1[4] >> 2) & 0x3C) + ((a1[4] >> 31) & 0x14))) & 7))) & 3));
    v18 = v5;
    v19 = (0x43160520u >> (((a1[4] >> 2) & 0x3C) + ((a1[4] >> 31) & 0x14))) & 7;
    goto LABEL_38;
  }

  v9 = *v13;
  if (v11 >= 513)
  {
    v39 = 0;
    v40 = 0;
    qmemcpy(sub_1002A80E0(&v39, 56), "The image is interleaved and has over CV_CN_MAX channels", 56);
    sub_1002A8980(-15, &v39, "cvGetMat", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2438);
  }

  sub_1001FAE94(a2, v13[4], v13[3], v10 | (8 * v11 - 8), *(a1 + 11) + a1[24] * v13[2] + v13[1] * (((((8 * v11 - 8) >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * v10)) & 3)), a1[24]);
  if (a3)
  {
    goto LABEL_59;
  }

  return v5;
}

void *sub_1001FE0CC(uint64_t a1, _DWORD *__src, int *a3, int a4, unsigned int *a5)
{
  if (a5)
  {
    v7 = *a5;
  }

  else
  {
    v14 = *(a1 + 4);
    if (v14 < 1)
    {
      v7 = 0;
    }

    else
    {
      v15 = 0;
      v7 = 0;
      do
      {
        v16 = __src[v15];
        if (v16 >= *(a1 + 52 + 4 * v15))
        {
          v35 = 0;
          v36 = 0;
          qmemcpy(sub_1002A80E0(&v35, 30), "One of indices is out of range", 30);
          sub_1002A8980(-211, &v35, "icvGetNodePtr", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 657);
        }

        v7 = v16 + 1540483477 * v7;
        ++v15;
      }

      while (v15 < v14);
    }
  }

  v8 = *(a1 + 40);
  v9 = (v8 - 1) & v7;
  v10 = v7 & 0x7FFFFFFF;
  if (a4 >= -1 && (v11 = *(*(a1 + 32) + 8 * v9)) != 0)
  {
    v12 = a3;
    do
    {
      if (*v11 == v10)
      {
        v18 = *(a1 + 4);
        if (v18 < 1)
        {
          LODWORD(v17) = 0;
        }

        else
        {
          v17 = 0;
          while (__src[v17] == *(v11 + *(a1 + 48) + 4 * v17))
          {
            if (v18 == ++v17)
            {
              goto LABEL_21;
            }
          }
        }

        if (v17 == v18)
        {
LABEL_21:
          result = (v11 + *(a1 + 44));
          if (!a4)
          {
            goto LABEL_42;
          }

          goto LABEL_22;
        }
      }

      v11 = *(v11 + 8);
    }

    while (v11);
    result = 0;
    if (a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = 0;
    v12 = a3;
    if (a4)
    {
LABEL_22:
      if (!result)
      {
        v19 = *(a1 + 24);
        if (*(v19 + 104) >= 3 * v8)
        {
          if (v8 >= 512)
          {
            v20 = 2 * v8;
          }

          else
          {
            v20 = 1024;
          }

          v21 = sub_1001D90AC(8 * v20);
          bzero(v21, 8 * v20);
          v22 = sub_1001FCD40(a1, &v35);
          if (v22)
          {
            v23 = v20 - 1;
            v24 = v37;
            for (i = v36; ; v22 = i)
            {
              i = *(i + 8);
              if (!i)
              {
                v27 = v24 + 1;
                v28 = *(v35 + 40);
                if (v24 + 1 >= v28)
                {
LABEL_35:
                  v37 = v27;
                  v30 = *v22 & v23;
                  *(v22 + 8) = *(v21 + v30);
                  *(v21 + v30) = v22;
                  break;
                }

                v29 = (*(v35 + 32) + 8 * v24++ + 8);
                while (1)
                {
                  i = *v29;
                  if (*v29)
                  {
                    break;
                  }

                  ++v24;
                  ++v29;
                  if (v28 == v24)
                  {
                    goto LABEL_35;
                  }
                }
              }

              v36 = i;
              v26 = *v22 & v23;
              *(v22 + 8) = *(v21 + v26);
              *(v21 + v26) = v22;
            }
          }

          j__free(*(a1 + 32));
          *(a1 + 32) = v21;
          *(a1 + 40) = v20;
          v9 = (v20 - 1) & v10;
          v19 = *(a1 + 24);
        }

        v31 = *(v19 + 96);
        v35 = v31;
        if (v31)
        {
          *(v19 + 96) = *(v31 + 8);
          *v31 &= 0x3FFFFFFu;
          ++*(v19 + 104);
        }

        else
        {
          sub_100236464(v19, 0, &v35);
          v31 = v35;
        }

        *v31 = v10;
        v32 = *(a1 + 32);
        *(v31 + 8) = *(v32 + 8 * v9);
        *(v32 + 8 * v9) = v31;
        memcpy((v31 + *(a1 + 48)), __src, 4 * *(a1 + 4));
        result = (v31 + *(a1 + 44));
        if (a4 >= 1)
        {
          v33 = (v31 + *(a1 + 44));
          bzero(result, (((*a1 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*a1 & 7))) & 3));
          result = v33;
        }
      }
    }
  }

LABEL_42:
  if (v12)
  {
    *v12 = *a1 & 0xFFF;
  }

  return result;
}

void sub_1001FE430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

void *sub_1001FE44C(uint64_t a1, unsigned int *__src, int *a3, int a4, unsigned int *a5)
{
  if (!__src)
  {
    v14 = 0;
    v15 = 0;
    qmemcpy(sub_1002A80E0(&v14, 23), "NULL pointer to indices", 23);
    sub_1002A8980(-27, &v14, "cvPtrND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1888);
  }

  if (!a1)
  {
    goto LABEL_19;
  }

  v5 = *a1 & 0xFFFF0000;
  if (v5 == 1111621632)
  {
    if (*(a1 + 36) < 1 || *(a1 + 32) < 1)
    {
      goto LABEL_19;
    }

    return sub_1001FD040(a1, *__src, __src[1], a3);
  }

  if (v5 != 1111687168)
  {
    if (v5 == 1111752704)
    {
      return sub_1001FE0CC(a1, __src, a3, a4, a5);
    }

    if (*a1 != 144)
    {
LABEL_19:
      v14 = 0;
      v15 = 0;
      qmemcpy(sub_1002A80E0(&v14, 38), "unrecognized or unsupported array type", 38);
      sub_1002A8980(-5, &v14, "cvPtrND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1912);
    }

    return sub_1001FD040(a1, *__src, __src[1], a3);
  }

  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = *(a1 + 4);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = (a1 + 36);
    do
    {
      v12 = __src[v9];
      if (v12 >= *(v10 - 1))
      {
        v14 = 0;
        v15 = 0;
        qmemcpy(sub_1002A80E0(&v14, 21), "index is out of range", 21);
        sub_1002A8980(-211, &v14, "cvPtrND", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 1902);
      }

      v11 = *v10;
      v10 += 2;
      v7 += v11 * v12;
      ++v9;
    }

    while (v9 < v8);
  }

  if (a3)
  {
    *a3 = *a1 & 0xFFF;
  }

  return v7;
}

uint64_t sub_1001FE6DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = a1;
  if (!a2)
  {
    v19 = 0;
    v20 = 0;
    sub_1002A8980(-27, &v19, "cvReshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2719);
  }

  if (!a1 || *(a1 + 2) != 16962 || *(a1 + 36) < 1 || *(a1 + 32) < 1 || !*(a1 + 24))
  {
    v18 = 0;
    v7 = sub_1001FD9EC(a1, a2, &v18, 1);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v8 = sub_1002A80E0(&v19, 20);
      *(v8 + 16) = 1684370546;
      *v8 = *"COI is not supported";
      sub_1002A8980(-24, &v19, "cvReshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2726);
    }
  }

  if (a3)
  {
    if ((a3 - 5) <= 0xFFFFFFFB)
    {
      v19 = 0;
      v20 = 0;
      sub_1002A8980(-15, &v19, "cvReshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2732);
    }

    if (v7 != a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    a3 = ((*v7 >> 3) & 0x1FF) + 1;
    if (v7 != a2)
    {
LABEL_14:
      v9 = *(a2 + 16);
      v10 = *(v7 + 32);
      v11 = *(v7 + 16);
      *a2 = *v7;
      *(a2 + 16) = v11;
      *(a2 + 32) = v10;
      *(a2 + 8) = 0;
      *(a2 + 16) = v9;
    }
  }

  v12 = *(v7 + 36) + *(v7 + 36) * ((*v7 >> 3) & 0x1FF);
  if (a3 > v12)
  {
    if (a4)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  if (!a4 && v12 % a3)
  {
LABEL_20:
    a4 = *(v7 + 32) * v12 / a3;
  }

  if (!a4)
  {
    a4 = *(v7 + 32);
LABEL_34:
    *(a2 + 32) = a4;
    *(a2 + 4) = *(v7 + 4);
    v16 = v12 / a3;
    if (v12 / a3 * a3 == v12)
    {
      goto LABEL_36;
    }

LABEL_35:
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 62), "The total width is not divisible by the new number of channels", 62);
    sub_1002A8980(-15, &v19, "cvReshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2776);
  }

LABEL_22:
  v13 = *(v7 + 32);
  if (a4 == v13)
  {
    goto LABEL_34;
  }

  if ((*v7 & 0x4000) == 0)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 72), "The matrix is not continuous, thus its number of rows can not be changed", 72);
    sub_1002A8980(-13, &v19, "cvReshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2757);
  }

  v14 = v13 * v12;
  if (a4 > v14)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 22), "Bad new number of rows", 22);
    sub_1002A8980(-211, &v19, "cvReshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2760);
  }

  v15 = v14 / a4;
  if (v14 / a4 * a4 != v14)
  {
    v19 = 0;
    v20 = 0;
    qmemcpy(sub_1002A80E0(&v19, 78), "The total number of matrix elements is not divisible by the new number of rows", 78);
    sub_1002A8980(-5, &v19, "cvReshape", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2766);
  }

  *(a2 + 32) = a4;
  *(a2 + 4) = ((0x88442211 >> (4 * (*v7 & 7))) & 0xF) * v15;
  v16 = v15 / a3;
  if (v15 / a3 * a3 != v15)
  {
    goto LABEL_35;
  }

LABEL_36:
  *(a2 + 36) = v16;
  *a2 = *v7 & 0xFFFFF007 | (8 * a3 - 8);
  return a2;
}

void sub_1001FEAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002A8124(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FEB5C(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int a5, int a6)
{
  if (!a1)
  {
    v27 = 0;
    v28 = 0;
    qmemcpy(sub_1002A80E0(&v27, 22), "null pointer to header", 22);
    sub_1002A8980(-9, &v27, "cvInitImageHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2918);
  }

  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *a1 = 144;
  if ((a4 - 1) > 3)
  {
    v13 = "";
    v14 = "";
  }

  else
  {
    v12 = &off_100473868[2 * (a4 - 1)];
    v13 = *v12;
    v14 = v12[1];
  }

  strncpy((a1 + 20), v13, 4uLL);
  strncpy((a1 + 24), v14, 4uLL);
  if ((a2 & 0x8000000080000000) != 0)
  {
    v27 = 0;
    v28 = 0;
    qmemcpy(sub_1002A80E0(&v27, 13), "Bad input roi", 13);
    sub_1002A8980(-25, &v27, "cvInitImageHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2928);
  }

  v15 = a3 & 0x7FFFFFFF;
  v20 = a3 != 1 && v15 != 8 && v15 != 16 && v15 != 32 && a3 != 64;
  if (a4 < 0 || v20)
  {
    v27 = 0;
    v28 = 0;
    v21 = sub_1002A80E0(&v27, 18);
    *(v21 + 16) = 29793;
    *v21 = *"Unsupported format";
    sub_1002A8980(-17, &v27, "cvInitImageHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2935);
  }

  if (a5 >= 2)
  {
    v27 = 0;
    v28 = 0;
    *sub_1002A80E0(&v27, 16) = *"Bad input origin";
    sub_1002A8980(-20, &v27, "cvInitImageHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2937);
  }

  if (a6 != 4 && a6 != 8)
  {
    v27 = 0;
    v28 = 0;
    qmemcpy(sub_1002A80E0(&v27, 15), "Bad input align", 15);
    sub_1002A8980(-21, &v27, "cvInitImageHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2940);
  }

  *(a1 + 40) = a2;
  v22 = *(a1 + 48);
  if (v22)
  {
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 12) = a2;
  }

  if (a4 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = a4;
  }

  *(a1 + 8) = v23;
  *(a1 + 16) = a3;
  v24 = (a6 + ((v15 * a2 * v23 + 7) >> 3) - 1) & -a6;
  *(a1 + 96) = v24;
  *(a1 + 32) = a5;
  *(a1 + 36) = a6;
  v25 = SHIDWORD(a2) * v24;
  *(a1 + 80) = v25;
  if (v25 != v25)
  {
    v27 = 0;
    v28 = 0;
    qmemcpy(sub_1002A80E0(&v27, 22), "Overflow for imageSize", 22);
    sub_1002A8980(-4, &v27, "cvInitImageHeader", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2962);
  }

  return a1;
}

int *sub_1001FEF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (off_1004BD330)
  {
    if ((a3 - 1) > 3)
    {
      v7 = "";
      v8 = "";
    }

    else
    {
      v6 = &off_100473868[2 * (a3 - 1)];
      v7 = *v6;
      v8 = v6[1];
    }

    v9 = off_1004BD330(a3, 0, a2, v7, v8, 0, 0, 4, a1, 0, 0, 0, 0);
  }

  else
  {
    v9 = sub_1001D90AC(0x90uLL);
    sub_1001FEB5C(v9, a1, v4, v3, 0, 4);
  }

  sub_1001FA9C0(v9);
  return v9;
}

void sub_1001FF014(void ***a1)
{
  if (!a1)
  {
    v2[0] = 0;
    v2[1] = 0;
    sub_1002A8980(-27, v2, "cvReleaseImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 2996);
  }

  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    sub_1001FCEC4(v1);
    if (off_1004BD340)
    {
      off_1004BD340(v1, 5);
    }

    else
    {
      j__free(v1[6]);
      v1[6] = 0;
      j__free(v1);
    }
  }
}

_DWORD *sub_1001FF0D8(_DWORD *result, uint64_t a2, unint64_t a3)
{
  v3 = result;
  if (!result)
  {
    v11 = 0;
    v12 = 0;
    sub_1002A8980(-9, &v11, "cvSetImageROI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 3013);
  }

  if ((a3 & 0x8000000080000000) != 0 || (v4 = result[10], v4 <= a2) || (v5 = result[11], v5 <= SHIDWORD(a2)) || a2 + a3 < (a3 != 0) || HIDWORD(a2) + HIDWORD(a3) < (HIDWORD(a3) != 0))
  {
    v11 = 0;
    v12 = 0;
    qmemcpy(sub_1002A80E0(&v11, 184), "rect.width >= 0 && rect.height >= 0 && rect.x < image->width && rect.y < image->height && rect.x + rect.width >= (int)(rect.width > 0) && rect.y + rect.height >= (int)(rect.height > 0)", 184);
    sub_1002A8980(-215, &v11, "cvSetImageROI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 3019);
  }

  v6 = a2 & ~(a2 >> 31);
  v7 = HIDWORD(a2) & ~(SHIDWORD(a2) >> 31);
  if (v4 >= a2 + a3)
  {
    v4 = a2 + a3;
  }

  if (v5 >= HIDWORD(a2) + HIDWORD(a3))
  {
    v5 = HIDWORD(a2) + HIDWORD(a3);
  }

  v8 = (v4 - v6);
  v9 = v5 - v7;
  v10 = *(result + 6);
  if (v10)
  {
    v10[1] = v6;
    v10[2] = v7;
    v10[3] = v8;
    v10[4] = v9;
  }

  else
  {
    if (off_1004BD348)
    {
      result = off_1004BD348(0, v6, v7, v8, (v5 - v7));
    }

    else
    {
      result = sub_1001D90AC(0x14uLL);
      *result = 0;
      result[1] = v6;
      result[2] = v7;
      result[3] = v8;
      result[4] = v9;
    }

    *(v3 + 6) = result;
  }

  return result;
}

char *sub_1001FF2D8(char *result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v7 = 0;
    v8 = 0;
    sub_1002A8980(-9, &v7, "cvSetImageCOI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 3086);
  }

  if (*(result + 2) < a2)
  {
    v7 = 0;
    v8 = 0;
    sub_1002A8980(-24, &v7, "cvSetImageCOI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 3089);
  }

  v4 = result + 48;
  v3 = *(result + 6);
  if (a2 || v3)
  {
    if (v3)
    {
      *v3 = a2;
    }

    else
    {
      v6 = *(result + 10);
      v5 = *(result + 11);
      if (off_1004BD348)
      {
        result = off_1004BD348(a2, 0, 0, v6, v5);
      }

      else
      {
        result = sub_1001D90AC(0x14uLL);
        *result = v2;
        *(result + 1) = 0;
        *(result + 2) = 0;
        *(result + 3) = v6;
        *(result + 4) = v5;
      }

      *v4 = result;
    }
  }

  return result;
}

uint64_t sub_1001FF438(uint64_t a1)
{
  if (!a1)
  {
    v3[0] = 0;
    v3[1] = 0;
    sub_1002A8980(-9, v3, "cvGetImageCOI", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 3109);
  }

  v1 = *(a1 + 48);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

void **sub_1001FF4CC(__int128 *a1)
{
  if (!a1 || *a1 != 144)
  {
    v20[0] = 0;
    v20[1] = 0;
    *sub_1002A80E0(v20, 16) = *"Bad image header";
    sub_1002A8980(-5, v20, "cvCloneImage", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/array.cpp", 3121);
  }

  if (off_1004BD350)
  {
    return off_1004BD350(a1);
  }

  result = sub_1001D90AC(0x90uLL);
  v3 = *(a1 + 16);
  v5 = a1[6];
  v4 = a1[7];
  *(result + 5) = a1[5];
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[4];
  *(result + 3) = a1[3];
  *(result + 6) = v5;
  *(result + 7) = v4;
  result[16] = v3;
  v9 = *a1;
  *(result + 4) = v8;
  *(result + 1) = v6;
  *(result + 2) = v7;
  *result = v9;
  result[17] = 0;
  result[11] = 0;
  result[6] = 0;
  v10 = *(a1 + 6);
  if (v10)
  {
    v11 = result;
    v13 = *v10;
    v12 = v10[1];
    v15 = v10[2];
    v14 = v10[3];
    v16 = v10[4];
    if (off_1004BD348)
    {
      v17 = off_1004BD348(v13, v12, v15, v14, v16);
    }

    else
    {
      v17 = sub_1001D90AC(0x14uLL);
      *v17 = v13;
      v17[1] = v12;
      v17[2] = v15;
      v17[3] = v14;
      v17[4] = v16;
    }

    result = v11;
    v11[6] = v17;
  }

  if (*(a1 + 11))
  {
    v18 = *(a1 + 20);
    v19 = result;
    sub_1001FA9C0(result);
    memcpy(v19[11], *(a1 + 11), v18);
    return v19;
  }

  return result;
}

void sub_1001FF6BC(unint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1002ACE7C(v97, &off_1004738A8);
  if (!a1 || !a2)
  {
    v99 = 0;
    v100 = 0;
    v5 = sub_1002A80E0(&v99, 11);
    *(v5 + 7) = 807419424;
    *v5 = *"mv && n > 0";
    sub_1002A8980(-215, &v99, "merge", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 328);
  }

  v81 = a3;
  v82 = *a1 & 7;
  LODWORD(v6) = 0;
  v7 = 0;
  v8 = 1;
  do
  {
    v10 = a1 + 96 * v7;
    v11 = *(v10 + 64);
    v12 = *(v11 - 1);
    v13 = *(a1 + 64);
    if (v12 != *(v13 - 1))
    {
      goto LABEL_15;
    }

    if (v12 == 2)
    {
      if (*v11 != *v13 || v11[1] != v13[1])
      {
        goto LABEL_15;
      }
    }

    else if (v12 >= 1)
    {
      while (1)
      {
        v15 = *v11++;
        v14 = v15;
        v16 = *v13++;
        if (v14 != v16)
        {
          break;
        }

        if (!--v12)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      v99 = 0;
      v100 = 0;
      qmemcpy(sub_1002A80E0(&v99, 50), "mv[i].size == mv[0].size && mv[i].depth() == depth", 50);
      sub_1002A8980(-215, &v99, "merge", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 337);
    }

LABEL_14:
    if ((*v10 & 7) != v82)
    {
      goto LABEL_15;
    }

    v8 &= (*v10 & 0xFF8) == 0;
    v9 = v6 + ((*v10 >> 3) & 0x1FF);
    v6 = v9 + 1;
    ++v7;
  }

  while (v7 != a2);
  if (v9 >= 0x200)
  {
    v99 = 0;
    v100 = 0;
    v17 = sub_1002A80E0(&v99, 19);
    *(v17 + 15) = 842085664;
    *v17 = *"0 < cn && cn <= 512";
    sub_1002A8980(-215, &v99, "merge", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 342);
  }

  sub_10026BEEC(v81, *(a1 + 4), *(a1 + 64), (v82 | (8 * (v9 + 1))) - 8, -1, 0, 0);
  v18 = sub_100271148(v81);
  if (v18 == 0x10000)
  {
    v19 = *(v81 + 8);
    v20 = *v19;
    v21 = *(v19 + 16);
    v89 = *v19;
    v90 = v21;
    v91 = *(v19 + 32);
    v22 = *(v19 + 56);
    v92 = *(v19 + 48);
    v93 = v22;
    v94 = &v89 + 8;
    v95 = v96;
    v96[0] = 0;
    v96[1] = 0;
    if (v22)
    {
      atomic_fetch_add((v22 + 20), 1u);
      if (*(v19 + 4) <= 2)
      {
LABEL_22:
        v23 = *(v19 + 72);
        v24 = v95;
        *v95 = *v23;
        v24[1] = v23[1];
        goto LABEL_26;
      }
    }

    else if (SDWORD1(v20) <= 2)
    {
      goto LABEL_22;
    }

    DWORD1(v89) = 0;
    sub_100269B58(&v89, v19);
  }

  else
  {
    sub_1002703C0(v81, 0xFFFFFFFFLL, &v89);
  }

LABEL_26:
  if (a2 == 1)
  {
    LODWORD(v99) = 33619968;
    v100 = &v89;
    v101[0] = 0;
    sub_10022B754(a1, &v99);
    goto LABEL_104;
  }

  if ((v8 & 1) == 0)
  {
    v99 = v101;
    v100 = (2 * v6);
    if (v6 >= 0x85)
    {
      operator new[]();
    }

    v26 = 0;
    v27 = 0;
    while (1)
    {
      v28 = *(a1 + 96 * v26);
      v29 = (v28 >> 3) & 0x1FF;
      if (v29 >= 7)
      {
        v31 = 0;
        v30 = (v29 + 1) & 0x3F8;
        v32 = vdupq_n_s64(v27);
        v33 = &v101[v27];
        v34 = vaddq_s64(v32, xmmword_1003E3830);
        do
        {
          v35 = vdupq_n_s64(v31);
          v102.val[0].i32[0] = v27 + v31;
          v102.val[0].i32[1] = v27 + v31 + 1;
          v36 = vmovn_s64(vaddq_s64(v32, v35));
          *&v102.val[0].u32[2] = vadd_s32(v36, 0x300000002);
          v102.val[1] = v102.val[0];
          vst2q_f32(v33, v102);
          v37 = vaddq_s64(v34, v35);
          *v102.val[0].f32 = vmovn_s64(v37);
          *&v102.val[0].u32[2] = vadd_s32(v36, 0x700000006);
          v38 = &v101[v37.i64[0]];
          v102.val[1] = v102.val[0];
          vst2q_f32(v38, v102);
          v31 += 8;
          v33 += 16;
        }

        while (v30 != v31);
        if (v30 == v29 + 1)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v30 = 0;
      }

      v39 = v28;
      v40 = &v101[v30 + v27] + 1;
      v41 = v27 + v30;
      v42 = ((v39 >> 3) & 0x1FF) - v30 + 1;
      do
      {
        *(v40 - 1) = v41;
        *v40 = v41;
        v40 += 2;
        ++v41;
        --v42;
      }

      while (v42);
LABEL_39:
      ++v26;
      v27 += v29 + 1;
      if (v26 == a2)
      {
        sub_1002001E0(a1, a2, &v89, 1uLL, v101, v6);
        if (v99 != v101 && v99)
        {
          goto LABEL_103;
        }

        goto LABEL_104;
      }
    }
  }

  v85 = off_100473B68[v82];
  if (v82 == 7)
  {
    v99 = 0;
    v100 = 0;
    v25 = sub_1002A80E0(&v99, 9);
    *(v25 + 8) = 48;
    *v25 = *"func != 0";
    sub_1002A8980(-215, &v99, "merge", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 373);
  }

  if (SDWORD1(v89) < 1)
  {
    v83 = 0;
  }

  else
  {
    v83 = *(v95 + DWORD1(v89) - 1);
  }

  v43 = v89;
  v99 = v101;
  v100 = 16 * (v6 + 1) + 16;
  if (v6 >= 0x3F)
  {
    operator new[]();
  }

  v45 = ((&v101[v6 + 2] + 7) & 0xFFFFFFFFFFFFFFF0);
  v101[0] = &v89;
  if (v6)
  {
    if (v6 < 4uLL)
    {
      v44 = 0;
LABEL_57:
      v54 = a1 + 96 * v44;
      v55 = v6 - v44;
      v56 = 8 * v44 + 8;
      do
      {
        *(v101 + v56) = v54;
        v54 += 96;
        v56 += 8;
        --v55;
      }

      while (v55);
      goto LABEL_59;
    }

    v44 = v6 & 0x3C;
    v46 = xmmword_1003E0C50;
    v47 = &v101[3];
    v48 = vdupq_n_s64(a1);
    v49 = vdupq_n_s64(0xC0uLL);
    v50 = vdupq_n_s64(4uLL);
    v51 = v6 & 0xFFFFFFFC;
    do
    {
      v52.i64[0] = 96 * v46.i64[0];
      v52.i64[1] = 96 * v46.i64[1];
      v53 = vaddq_s64(v48, v52);
      v47[-1] = v53;
      *v47 = vaddq_s64(v53, v49);
      v46 = vaddq_s64(v46, v50);
      v47 += 2;
      v51 -= 4;
    }

    while (v51);
    if (v6 != v44)
    {
      goto LABEL_57;
    }
  }

LABEL_59:
  sub_100267CC8(v86, v101, v45, (v6 + 1));
  v57 = ((v83 + 1023) / v83);
  v58 = v88;
  if (v57 >= v88)
  {
    v57 = v88;
  }

  if (v6 < 5)
  {
    v57 = v88;
  }

  if (v57 >= 0x1FFFFFFF / v6)
  {
    v59 = 0x1FFFFFFF / v6;
  }

  else
  {
    v59 = v57;
  }

  if (v88 << 32)
  {
    v60 = (0x88442211uLL >> (4 * (v43 & 7u))) & 0xF;
    if (v6 <= 1)
    {
      v61 = 1;
    }

    else
    {
      v61 = v6;
    }

    if (v6 >= 4)
    {
      v68 = 0;
      while (v68 < v87)
      {
        v80 = v68;
        v69 = 0;
        while (1)
        {
          v70 = v59 >= v58 - v69 ? v58 - v69 : v59;
          (v85)(v45 + 1, *v45, v70, v6);
          v69 += v59;
          if (v69 >= v58)
          {
            break;
          }

          *v45 += v70 * v83;
          v71 = vdupq_n_s64(v70 * v60);
          v72 = v61 & 0xFFFFFFFC;
          v73 = (v45 + 3);
          do
          {
            v74 = vaddq_s64(*v73, v71);
            v73[-1] = vaddq_s64(v73[-1], v71);
            *v73 = v74;
            v73 += 2;
            v72 -= 4;
          }

          while (v72);
          if (v61 != (v61 & 0xFFFFFFFC))
          {
            v75 = (v45 + ((8 * v61) & 0x7FFFFFFE0) + 8);
            v76 = v61 - (v61 & 0xFFFFFFFC);
            do
            {
              *v75++ += v70 * v60;
              --v76;
            }

            while (v76);
          }
        }

        v68 = v80 + 1;
        sub_100267D14(v86);
      }
    }

    else
    {
      for (i = 0; i < v87; ++i)
      {
        v63 = 0;
        while (1)
        {
          v64 = v59 >= v58 - v63 ? v58 - v63 : v59;
          (v85)(v45 + 1, *v45, v64, v6);
          v63 += v59;
          if (v63 >= v58)
          {
            break;
          }

          v65 = v64 * v60;
          v66 = *(((&v101[v6 + 2] + 7) & 0xFFFFFFFFFFFFFFF0) + 8) + v64 * v60;
          *v45 += v64 * v83;
          *(((&v101[v6 + 2] + 7) & 0xFFFFFFFFFFFFFFF0) + 8) = v66;
          if (v6 >= 2)
          {
            v45[2] += v65;
            if (v6 != 2)
            {
              v45[3] += v65;
            }
          }
        }

        sub_100267D14(v86);
      }
    }
  }

  else
  {
    v67 = -1;
    while (++v67 < v87)
    {
      sub_100267D14(v86);
    }
  }

  if (v99 != v101 && v99 != 0)
  {
LABEL_103:
    operator delete[]();
  }

LABEL_104:
  if (v93 && atomic_fetch_add((v93 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v89);
  }

  v93 = 0;
  v90 = 0u;
  v91 = 0u;
  if (SDWORD1(v89) >= 1)
  {
    v78 = 0;
    v79 = v94;
    do
    {
      *&v79[4 * v78++] = 0;
    }

    while (v78 < SDWORD1(v89));
  }

  if (v95 != v96)
  {
    j__free(v95);
  }

  if (v98)
  {
    sub_1002ACC1C(v97);
  }
}

void sub_100200060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100008E3C(exception_object);
}

void sub_100200198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a37 != a9 && a37 != 0)
  {
    operator delete[]();
  }

  sub_100006D14(&a23);
  sub_1001D8BF4(&a35);
  _Unwind_Resume(a1);
}

void sub_1002001E0(unsigned int *a1, unint64_t a2, _DWORD *a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  sub_1002ACE7C(v130, &off_1004738E8);
  if (!a6)
  {
    goto LABEL_71;
  }

  if (!a1 || !a2 || !a3 || !a4 || !a5)
  {
    v132 = 0;
    v133 = 0;
    qmemcpy(sub_1002A80E0(&v132, 60), "src && nsrcs > 0 && dst && ndsts > 0 && fromTo && npairs > 0", 60);
    sub_1002A8980(-215, &v132, "mixChannels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 574);
  }

  v10 = *a3;
  v111 = a4 + a2;
  v132 = v134;
  v133 = 40 * a6 + 16 * (a4 + a2) + 16;
  if (v133 >= 0x409)
  {
    operator new[]();
  }

  v11 = (0x88442211uLL >> (4 * (v10 & 7u))) & 0xF;
  v12 = 8 * a2 + 8 * a4;
  v13 = (v134 + v12);
  v123 = &v134[1] + v12 + v12;
  v122 = &v123[8 * a6];
  v108 = a6;
  v116 = &v122[8 * a6];
  v125 = &v116[16 * a6];
  if (a2 <= 3)
  {
    v14 = 0;
LABEL_15:
    v23 = a2 - v14;
    v24 = &v134[v14];
    v25 = &a1[24 * v14];
    do
    {
      *v24++ = v25;
      v25 += 96;
      --v23;
    }

    while (v23);
    goto LABEL_17;
  }

  v14 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = xmmword_1003E0C50;
  v16 = &v135;
  v17 = vdupq_n_s64(a1);
  v18 = vdupq_n_s64(0xC0uLL);
  v19 = vdupq_n_s64(4uLL);
  v20 = a2 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v21.i64[0] = 96 * v15.i64[0];
    v21.i64[1] = 96 * v15.i64[1];
    v22 = vaddq_s64(v17, v21);
    v16[-1] = v22;
    *v16 = vaddq_s64(v22, v18);
    v15 = vaddq_s64(v15, v19);
    v16 += 2;
    v20 -= 4;
  }

  while (v20);
  if (v14 != a2)
  {
    goto LABEL_15;
  }

LABEL_17:
  v113 = v10 & 7;
  v124 = &v125[4 * a6];
  if (a4 <= 3)
  {
    v26 = 0;
LABEL_22:
    v35 = a4 - v26;
    v36 = &a3[24 * v26];
    v37 = &v134[v26 + a2];
    do
    {
      *v37++ = v36;
      v36 += 24;
      --v35;
    }

    while (v35);
    goto LABEL_24;
  }

  v26 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  v27 = &v134[a2 + 2];
  v28 = xmmword_1003E0C50;
  v29 = vdupq_n_s64(a3);
  v30 = vdupq_n_s64(0xC0uLL);
  v31 = vdupq_n_s64(4uLL);
  v32 = a4 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v33.i64[0] = 96 * v28.i64[0];
    v33.i64[1] = 96 * v28.i64[1];
    v34 = vaddq_s64(v29, v33);
    v27[-1] = v34;
    *v27 = vaddq_s64(v34, v30);
    v28 = vaddq_s64(v28, v31);
    v27 += 2;
    v32 -= 4;
  }

  while (v32);
  if (v26 != a4)
  {
    goto LABEL_22;
  }

LABEL_24:
  v38 = 0;
  v13[v111] = 0;
  v114 = a3;
  do
  {
    v39 = (a5 + 8 * v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = &v116[16 * v38];
    if (*v39 < 0)
    {
      *v42 = v111;
      *(v42 + 1) = 0;
      *&v125[4 * v38] = 0;
      v49 = 0;
    }

    else
    {
      v43 = a4;
      v44 = 0;
      v45 = a1;
      while (1)
      {
        v47 = *v45;
        v45 += 24;
        v46 = v47;
        v48 = (v47 >> 3) & 0x1FF;
        if (v40 <= v48)
        {
          break;
        }

        v40 += ~v48;
        if (a2 == ++v44)
        {
          goto LABEL_33;
        }
      }

      if ((v46 & 7) != v113)
      {
LABEL_33:
        v126 = 0;
        v127 = 0;
        qmemcpy(sub_1002A80E0(&v126, 36), "j < nsrcs && src[j].depth() == depth", 36);
        sub_1002A8980(-215, &v126, "mixChannels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 601);
      }

      *v42 = v44;
      *(v42 + 1) = v40 * v11;
      v50 = ((a1[24 * v44] >> 3) & 0x1FF) + 1;
      a4 = v43;
      a3 = v114;
      *&v125[4 * v38] = v50;
      v49 = 0;
    }

    v51 = a3;
    while (1)
    {
      v53 = *v51;
      v51 += 24;
      v52 = v53;
      v54 = (v53 >> 3) & 0x1FF;
      if (v41 <= v54)
      {
        break;
      }

      v41 += ~v54;
      if (a4 == ++v49)
      {
        goto LABEL_41;
      }
    }

    if (v41 < 0 || (v52 & 7) != v113)
    {
LABEL_41:
      v126 = 0;
      v127 = 0;
      qmemcpy(sub_1002A80E0(&v126, 47), "i1 >= 0 && j < ndsts && dst[j].depth() == depth", 47);
      sub_1002A8980(-215, &v126, "mixChannels", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 614);
    }

    *(v42 + 2) = v49 + a2;
    *(v42 + 3) = v41 * v11;
    *&v124[4 * v38++] = ((a3[24 * v49] >> 3) & 0x1FF) + 1;
  }

  while (v38 != a6);
  v55 = a4;
  sub_100267CC8(&v126, v134, v13, v111);
  v56 = v129;
  if (((v11 + 1023) / v11) >= v129)
  {
    v57 = v129;
  }

  else
  {
    v57 = (v11 + 1023) / v11;
  }

  if (v129 > 0)
  {
    v121 = off_100473BA8[v113];
    v58 = v55;
    v59 = 2 * v55;
    v60 = 2 * a2;
    v61 = &v134[2 * a2 + v59];
    v104 = &v61[2 * a6 + 1] + 4;
    v62 = &v134[4 * a6 + 1 + 2 * a2];
    v63 = (16 * a2) | 8;
    v64 = a2;
    v65 = &v134[v59] + v63;
    v115 = v134 + v63;
    v112 = &v134[v60 + 1 + v108];
    v110 = v61 + 1;
    v109 = &v61[v108 + 1];
    v66 = 0;
    v67 = v62;
    v106 = &v62[v59];
    v107 = &v134[1] + 36 * a6 + 16 * v58 + 16 * v64;
    v117 = vdupq_n_s64(v11);
    v119 = vdupq_n_s32(v57);
    while (1)
    {
      v68 = v104;
      v69 = v123;
      v70 = a6;
      if (v66 >= v128)
      {
        goto LABEL_66;
      }

      do
      {
        *v69 = v13[*(v68 - 1)] + *v68;
        v69[a6] = v13[v68[1]] + v68[2];
        ++v69;
        v68 += 4;
        --v70;
      }

      while (v70);
      v105 = v66;
      v71 = 0;
      while (1)
      {
        v72 = v57 >= v56 - v71 ? (v56 - v71) : v57;
        (v121)(v123, v125, v122, v124, v72, a6);
        v71 += v57;
        if (v71 >= v56)
        {
          break;
        }

        v73 = a6 & 0xFFFFFFFFFFFFFFFCLL;
        v74 = v112;
        v75 = 36 * a6;
        v76 = v115;
        v77 = v67;
        if (a6 < 4)
        {
          v78 = 0;
          goto LABEL_59;
        }

        do
        {
          v79 = vmulq_s32(*&v77[v59], v119);
          v80 = v79.i32[1];
          v81 = v79.i32[0];
          v79.i64[0] = v117.i32[0] * v79.i32[2];
          v82.i64[0] = v117.i32[0] * v81;
          v79.i64[1] = v117.i32[2] * v79.i32[3];
          v82.i64[1] = v117.i32[2] * v80;
          v83 = &v76[v59 * 8];
          v84 = vaddq_s64(*&v76[v59 * 8 + 16], v79);
          *v83 = vaddq_s64(*&v76[v59 * 8], v82);
          v83[1] = v84;
          v85 = vmulq_s32(*&v65[v75], v119);
          v86 = v85.i32[0];
          v87 = v85.i32[1];
          v85.i64[0] = v117.i32[0] * v85.i32[2];
          v85.i64[1] = v117.i32[2] * v85.i32[3];
          v82.i64[0] = v117.i32[0] * v86;
          v82.i64[1] = v117.i32[2] * v87;
          v88 = &v74[v59];
          v89 = vaddq_s64(*&v74[v59 + 2], v85);
          v77 += 2;
          *v88 = vaddq_s64(*&v74[v59], v82);
          v88[1] = v89;
          v76 += 32;
          v75 += 16;
          v74 += 4;
          v73 -= 4;
        }

        while (v73);
        v78 = a6 & 0xFFFFFFFFFFFFFFFCLL;
        if ((a6 & 0xFFFFFFFFFFFFFFFCLL) != a6)
        {
LABEL_59:
          v90 = 0;
          v91 = a6 - v78;
          v92 = v78;
          v93 = v109 + 8 * v78;
          v94 = 4 * v78;
          v95 = &v107[4 * v78];
          v96 = &v110[v92];
          v97 = v106 + v94;
          do
          {
            v96[v90] += v11 * *&v97[4 * v90] * v57;
            *(v93 + 8 * v90) += v11 * *&v95[4 * v90] * v57;
            ++v90;
          }

          while (v91 != v90);
        }
      }

      v66 = v105 + 1;
      sub_100267D14(&v126);
    }
  }

  v98 = 0;
  v99 = &v134[2 * a6 + 1 + 2 * v55 + 2 * a2] + 4;
  while (1)
  {
    v100 = v99;
    v101 = v123;
    v102 = a6;
    if (v98 >= v128)
    {
      break;
    }

    do
    {
      *v101 = v13[*(v100 - 1)] + *v100;
      v101[a6] = v13[v100[1]] + v100[2];
      ++v101;
      v100 += 4;
      --v102;
    }

    while (v102);
    ++v98;
    sub_100267D14(&v126);
  }

LABEL_66:
  if (v132 != v134 && v132 != 0)
  {
    operator delete[]();
  }

LABEL_71:
  if (v131)
  {
    sub_1002ACC1C(v130);
  }
}

void sub_100200A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_100200A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_100008E3C(exception_object);
}

void sub_100200B5C(int *a1, uint64_t a2)
{
  sub_1002ACE7C(v8, &off_1004738C8);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100272444(a1, &v5);
  if (v6 == v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  sub_1001FF6BC(v4, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 5), a2);
  v9 = &v5;
  sub_10022A2B4(&v9);
  if (v8[2])
  {
    sub_1002ACC1C(v8);
  }
}

void sub_100200C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_10022A2B4(va1);
  sub_1001D8BF4(va);
  _Unwind_Resume(a1);
}

void sub_100200C20(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_1002ACE7C(v41, &off_100473908);
  v6 = sub_100271A88(a1, -1);
  v7 = v6;
  if ((a3 & 0x80000000) != 0 || ((v6 >> 3) & 0x1FF) < a3)
  {
    memset(v33, 0, sizeof(v33));
    v8 = sub_1002A80E0(v33, 20);
    *(v8 + 16) = 1851990076;
    *v8 = *"0 <= coi && coi < cn";
    sub_1002A8980(-215, v33, "extractChannel", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 898);
  }

  v42[0] = a3;
  v42[1] = 0;
  if (sub_100271148(a1) == 0x10000)
  {
    v9 = *(a1 + 8);
    v10 = *v9;
    v11 = *(v9 + 16);
    *v33 = *v9;
    v34 = v11;
    v35 = *(v9 + 32);
    v12 = *(v9 + 56);
    v36 = *(v9 + 48);
    v37 = v12;
    __src = &v33[2];
    v39 = v40;
    v40[0] = 0;
    v40[1] = 0;
    if (v12)
    {
      atomic_fetch_add((v12 + 20), 1u);
      if (*(v9 + 4) <= 2)
      {
LABEL_7:
        v13 = *(v9 + 72);
        v14 = v39;
        *v39 = *v13;
        v14[1] = v13[1];
        goto LABEL_11;
      }
    }

    else if (SDWORD1(v10) <= 2)
    {
      goto LABEL_7;
    }

    v33[1] = 0;
    sub_100269B58(v33, v9);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, v33);
  }

LABEL_11:
  sub_10026BEEC(a2, v33[1], __src, v7 & 7, -1, 0, 0);
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v25);
    goto LABEL_18;
  }

  v15 = *(a2 + 8);
  v16 = *v15;
  v17 = *(v15 + 16);
  v25 = *v15;
  v26 = v17;
  v27 = *(v15 + 32);
  v18 = *(v15 + 56);
  v28 = *(v15 + 48);
  v29 = v18;
  v30 = &v25 + 8;
  v31 = v32;
  v32[0] = 0;
  v32[1] = 0;
  if (!v18)
  {
    if (SDWORD1(v16) <= 2)
    {
      goto LABEL_14;
    }

LABEL_17:
    DWORD1(v25) = 0;
    sub_100269B58(&v25, v15);
    goto LABEL_18;
  }

  atomic_fetch_add((v18 + 20), 1u);
  if (*(v15 + 4) > 2)
  {
    goto LABEL_17;
  }

LABEL_14:
  v19 = *(v15 + 72);
  v20 = v31;
  *v31 = *v19;
  v20[1] = v19[1];
LABEL_18:
  sub_1002001E0(v33, 1uLL, &v25, 1uLL, v42, 1uLL);
  if (v29 && atomic_fetch_add((v29 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v25);
  }

  v29 = 0;
  v26 = 0u;
  v27 = 0u;
  if (SDWORD1(v25) >= 1)
  {
    v21 = 0;
    v22 = v30;
    do
    {
      *&v22[4 * v21++] = 0;
    }

    while (v21 < SDWORD1(v25));
  }

  if (v31 != v32)
  {
    j__free(v31);
  }

  if (v37 && atomic_fetch_add((v37 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(v33);
  }

  v37 = 0;
  v34 = 0u;
  v35 = 0u;
  if (v33[1] >= 1)
  {
    v23 = 0;
    v24 = __src;
    do
    {
      v24[v23++] = 0;
    }

    while (v23 < v33[1]);
  }

  if (v39 != v40)
  {
    j__free(v39);
  }

  if (v41[2])
  {
    sub_1002ACC1C(v41);
  }
}

void sub_100200F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100201060(char *__src, uint64_t a2, int a3, int a4, char *__dst, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v11 = __src;
    v12 = *a7;
    do
    {
      --v7;
      __src = memcpy(__dst, v11, v12);
      v11 += a2;
      __dst += a6;
    }

    while (v7);
  }

  return __src;
}

int8x16_t *sub_1002010C8(int8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = v8 - 4;
  v10 = (v8 - 8);
  if (v8 >= 8)
  {
    v13 = 0;
    v14 = a5 - result;
    v15 = (v10 & 0xFFFFFFF8) + 8;
    v16 = v15 | 4;
    if ((v15 | 4) <= v9 + 1)
    {
      v16 = v9 + 1;
    }

    v17 = ~v15 + v16;
    v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v19 = (v17 >> 2) + 1;
    v20 = &a5->i8[v18];
    v21 = &result->i8[v18];
    while (1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 8;
      do
      {
        v25 = v24;
        *&a5->i8[v23] = vqmovun_s16(vmovl_s8(*&result->i8[v23]));
        v23 += 8;
        v22 += 0x800000000;
        v24 += 8;
      }

      while (v23 <= v10);
      if (v9 >= v23)
      {
        v26 = v22 >> 32;
        if (v17 <= 0x3B || a5 < &v21[v13 * a2] && result < &v20[v13 * a6])
        {
          goto LABEL_24;
        }

        v26 += 4 * (v19 & 0x7FFFFFFFFFFFFFF0);
        v27 = v25;
        v28 = v19 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v29 = (a5 + v27);
          v30 = vmaxq_s8(*(&result[1] + v27), 0);
          v31 = vmaxq_s8(*(result + v27), 0);
          v32 = vmaxq_s8(*(&result[3] + v27), 0);
          v29[2] = vmaxq_s8(*(&result[2] + v27), 0);
          v29[3] = v32;
          *v29 = v31;
          v29[1] = v30;
          v27 += 64;
          v28 -= 16;
        }

        while (v28);
        if (v19 != (v19 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_24:
          v33 = v26 + 1;
          do
          {
            v34 = result->i8[v33] & ~(result->i8[v33] >> 31);
            v35 = &a5->i8[v33];
            *(v35 - 1) = result->i8[v33 - 1] & ~(result->i8[v33 - 1] >> 7);
            *v35 = v34;
            v36 = result->i8[v33 + 2] & ~(result->i8[v33 + 2] >> 7);
            v35[1] = result->i8[v33 + 1] & ~(result->i8[v33 + 1] >> 7);
            v35[2] = v36;
            v37 = v33 + 4;
            v38 = v33 + 3;
            v33 += 4;
          }

          while (v38 <= v9);
          LODWORD(v26) = v37 - 1;
        }
      }

      else
      {
        LODWORD(v26) = v23;
      }

      if (v26 >= v8)
      {
        goto LABEL_13;
      }

      v39 = v26;
      v40 = v8 - v26;
      if (v40 < 8)
      {
        v42 = v39;
      }

      else if ((v14 + (a6 - a2) * v13) < 0x20)
      {
        v42 = v39;
      }

      else
      {
        if (v40 < 0x20)
        {
          v41 = 0;
LABEL_38:
          v42 = (v40 & 0xFFFFFFFFFFFFFFF8) + v39;
          v47 = v41 - (v40 & 0xFFFFFFFFFFFFFFF8);
          v48 = v41 + v39;
          do
          {
            *&a5->i8[v48] = vmax_s8(*&result->i8[v48], 0);
            v48 += 8;
            v47 += 8;
          }

          while (v47);
          if (v40 == (v40 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_13;
          }

          goto LABEL_43;
        }

        v41 = v40 & 0xFFFFFFFFFFFFFFE0;
        v43 = v39;
        v44 = v40 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v45 = vmaxq_s8(*(&result[1] + v43), 0);
          v46 = (a5 + v43);
          *v46 = vmaxq_s8(*(result + v43), 0);
          v46[1] = v45;
          v43 += 32;
          v44 -= 32;
        }

        while (v44);
        if (v40 == v41)
        {
          goto LABEL_13;
        }

        if ((v40 & 0x18) != 0)
        {
          goto LABEL_38;
        }

        v42 = v41 + v39;
      }

      do
      {
LABEL_43:
        a5->i8[v42] = result->i8[v42] & ~(result->i8[v42] >> 31);
        ++v42;
      }

      while (v8 != v42);
LABEL_13:
      result = (result + a2);
      a5 = (a5 + a6);
      ++v13;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v49 = 0;
    v50 = a5 - result;
    if (v9 <= 3)
    {
      v51 = 3;
    }

    else
    {
      v51 = v8 - 4;
    }

    v52 = (((v51 << 32) & 0x7FFFFFFC00000000) + 0x400000000) >> 32;
    if ((v52 | 1) > v8)
    {
      v53 = v52 + 1;
    }

    else
    {
      v53 = *a7;
    }

    v54 = v53 - v52;
    v55 = (v7 - 1);
    v56 = &a5->i8[v55 * a6 + 4 + (v51 & 0x7FFFFFFC)];
    v57 = &result->i8[v55 * a2 + 4 + (v51 & 0x7FFFFFFC)];
    v58 = (v51 >> 2) + 1;
    v60 = v57 > a5 && v56 > result;
    v61 = v54 & 0xFFFFFFFFFFFFFFE0;
    v62 = v54 & 0xFFFFFFFFFFFFFFF8;
    v63 = v9 < 60 || (a6 | a2) < 0 || v60;
    while (1)
    {
      if (v63)
      {
        v64 = 0;
      }

      else
      {
        v65 = vmaxq_s8(result[1], 0);
        v66 = vmaxq_s8(*result, 0);
        v67 = vmaxq_s8(result[3], 0);
        a5[2] = vmaxq_s8(result[2], 0);
        a5[3] = v67;
        *a5 = v66;
        a5[1] = v65;
        v64 = 4 * (v58 & 0x3FFFFFF0);
        v68 = 4 * (v58 & 0x3FFFFFF0);
        if (v58 == (v58 & 0x3FFFFFF0))
        {
          goto LABEL_65;
        }
      }

      v69 = v64 + 1;
      do
      {
        v70 = result->i8[v69] & ~(result->i8[v69] >> 31);
        v71 = &a5->i8[v69];
        *(v71 - 1) = result->i8[v69 - 1] & ~(result->i8[v69 - 1] >> 7);
        *v71 = v70;
        v72 = result->i8[v69 + 2] & ~(result->i8[v69 + 2] >> 7);
        v71[1] = result->i8[v69 + 1] & ~(result->i8[v69 + 1] >> 7);
        v71[2] = v72;
        v73 = v69 + 4;
        v74 = v69 + 3;
        v69 += 4;
      }

      while (v74 <= v9);
      v68 = v73 - 1;
LABEL_65:
      if (v8 > v68)
      {
        if (v54 < 8)
        {
          v76 = v68;
        }

        else if ((v50 + (a6 - a2) * v49) < 0x20)
        {
          v76 = v68;
        }

        else if (v54 >= 0x20)
        {
          v77 = v68;
          v78 = v54 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v79 = vmaxq_s8(*(&result[1] + v77), 0);
            v80 = (a5 + v77);
            *v80 = vmaxq_s8(*(result + v77), 0);
            v80[1] = v79;
            v77 += 32;
            v78 -= 32;
          }

          while (v78);
          if (v54 == v61)
          {
            goto LABEL_58;
          }

          v75 = v54 & 0xFFFFFFFFFFFFFFE0;
          if ((v54 & 0x18) != 0)
          {
            goto LABEL_76;
          }

          v76 = v68 + v61;
        }

        else
        {
          v75 = 0;
LABEL_76:
          v76 = v68 + v62;
          v81 = v75 - (v54 & 0xFFFFFFFFFFFFFFF8);
          v82 = v75 + v68;
          do
          {
            *&a5->i8[v82] = vmax_s8(*&result->i8[v82], 0);
            v82 += 8;
            v81 += 8;
          }

          while (v81);
          if (v54 == v62)
          {
            goto LABEL_58;
          }
        }

        do
        {
          a5->i8[v76] = result->i8[v76] & ~(result->i8[v76] >> 31);
          ++v76;
        }

        while (v76 < v8);
      }

LABEL_58:
      result = (result + a2);
      a5 = (a5 + a6);
      ++v49;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v11 = &result->i8[2];
    v12 = &a5->i8[2];
    do
    {
      *(v12 - 2) = *(v11 - 2) & ~(*(v11 - 2) >> 31);
      if (v8 != 1)
      {
        *(v12 - 1) = *(v11 - 1) & ~(*(v11 - 1) >> 31);
        if (v8 != 2)
        {
          *v12 = *v11 & ~(*v11 >> 31);
        }
      }

      v11 += a2;
      v12 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint16x8_t *sub_1002015D0(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint8x16_t *a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = a2 >> 1;
  v10 = v8 - 4;
  v11 = (v8 - 16);
  if (v8 >= 16)
  {
    v17 = 0;
    v18 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v19 = (v11 & 0xFFFFFFF0) + 16;
    v20 = v19 | 4;
    if ((v19 | 4) <= v10 + 1)
    {
      v20 = v10 + 1;
    }

    v21 = ~v19 + v20;
    v22 = &a5->i8[(v21 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v23 = &result->i64[(v21 >> 2) + 1];
    v24 = &a5->i8[v8];
    v25 = &result->i8[2 * v8];
    v108 = (v21 >> 2) + 1;
    v26 = result + 1;
    v27 = 2 * v9;
    v28 = &result->i8[4];
    while (1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 16;
      v32 = v26;
      do
      {
        *(a5 + v30) = vqmovn_high_u16(vqmovn_u16(v32[-1]), *v32);
        v33 = v31;
        v30 += 16;
        v29 += 0x1000000000;
        v32 += 2;
        v31 += 16;
      }

      while (v30 <= v11);
      if (v10 >= v30)
      {
        v30 = v29 >> 32;
        if (v21 <= 0x3B || &a5->i8[v30] < v23 + v18 * v17 + (v29 >> 31) && &result->i8[v29 >> 31] < &v22[v17 * a6 + v30])
        {
          goto LABEL_29;
        }

        v30 += 4 * (v108 & 0x7FFFFFFFFFFFFFF0);
        v34 = v33;
        v35 = 2 * v33;
        v36 = v108 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v37 = (a5 + v34);
          v38 = vqmovn_high_u16(vqmovn_u16(*(&result[2] + v35)), *(&result[3] + v35));
          v39 = vqmovn_high_u16(vqmovn_u16(*(result + v35)), *(&result[1] + v35));
          v40 = vqmovn_high_u16(vqmovn_u16(*(&result[6] + v35)), *(&result[7] + v35));
          v37[2] = vqmovn_high_u16(vqmovn_u16(*(&result[4] + v35)), *(&result[5] + v35));
          v37[3] = v40;
          *v37 = v39;
          v37[1] = v38;
          v34 += 64;
          v35 += 128;
          v36 -= 16;
        }

        while (v36);
        if (v108 != (v108 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_29:
          v41 = v30 + 1;
          v42 = &v28[2 * v30];
          do
          {
            v43 = *(v42 - 2);
            if (v43 >= 0xFF)
            {
              LOBYTE(v43) = -1;
            }

            v44 = result->u16[v41];
            if (v44 >= 0xFF)
            {
              LOBYTE(v44) = -1;
            }

            v45 = &a5->i8[v41];
            *(v45 - 1) = v43;
            *v45 = v44;
            v46 = *v42;
            if (v46 >= 0xFF)
            {
              LOBYTE(v46) = -1;
            }

            v47 = *(v42 + 1);
            if (v47 >= 0xFF)
            {
              LOBYTE(v47) = -1;
            }

            v45[1] = v46;
            v45[2] = v47;
            v48 = v41 + 4;
            v49 = v41 + 3;
            v42 += 8;
            v41 += 4;
          }

          while (v49 <= v10);
          LODWORD(v30) = v48 - 1;
        }
      }

      if (v30 >= v8)
      {
        goto LABEL_19;
      }

      v50 = v30;
      v51 = v8 - v30;
      if (v51 < 4)
      {
        goto LABEL_55;
      }

      v52 = (result + 2 * v50);
      if (&a5->i8[v50] < &v25[v18 * v17] && v52 < &v24[v17 * a6])
      {
        goto LABEL_55;
      }

      if (v51 >= 0x20)
      {
        v53 = v51 & 0xFFFFFFFFFFFFFFE0;
        v54 = (a5 + v50);
        v55 = v51 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v56 = vqmovn_high_u16(vqmovn_u16(v52[2]), v52[3]);
          *v54 = vqmovn_high_u16(vqmovn_u16(*v52), v52[1]);
          v54[1] = v56;
          v54 += 2;
          v52 += 4;
          v55 -= 32;
        }

        while (v55);
        if (v51 == v53)
        {
          goto LABEL_19;
        }

        if ((v51 & 0x1C) == 0)
        {
          v50 += v53;
          do
          {
LABEL_55:
            v60 = result->u16[v50];
            if (v60 >= 0xFF)
            {
              LOBYTE(v60) = -1;
            }

            a5->i8[v50++] = v60;
          }

          while (v8 != v50);
          goto LABEL_19;
        }
      }

      else
      {
        v53 = 0;
      }

      v57 = v53 - (v51 & 0xFFFFFFFFFFFFFFFCLL);
      v58 = v53 + v50;
      v59 = 2 * v58;
      do
      {
        *(a5->i32 + v58) = vuzp1_s8(vmin_u16(*&result->i8[v59], 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL).u32[0];
        v59 += 8;
        v58 += 4;
        v57 += 4;
      }

      while (v57);
      v50 += v51 & 0xFFFFFFFFFFFFFFFCLL;
      if (v51 != (v51 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_55;
      }

LABEL_19:
      result = (result + v27);
      a5 = (a5 + a6);
      ++v17;
      v26 = (v26 + v27);
      v28 += v27;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v61 = 0;
    if (v10 <= 3)
    {
      v62 = 3;
    }

    else
    {
      v62 = v8 - 4;
    }

    v63 = ((v62 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v64 = v63 >> 32;
    if (((v63 >> 32) | 1) > v8)
    {
      v65 = v64 + 1;
    }

    else
    {
      v65 = *a7;
    }

    v66 = v65 - v64;
    v67 = (v7 - 1);
    v68 = &a5->i8[v67 * a6 + 4 + (v62 & 0x7FFFFFFC)];
    v69 = &result->i8[2 * (v62 & 0x7FFFFFFC) + 8 + 2 * v9 * v67];
    v70 = (v62 >> 2) + 1;
    v71 = &a5->i8[v65 - v64];
    v73 = v69 > a5 && v68 > result;
    v74 = v66 & 0xFFFFFFFFFFFFFFE0;
    v75 = v10 < 60 || ((a6 | a2) & 0x8000000000000000) != 0 || v73;
    v76 = &result->i8[4];
    v77 = 2 * v9;
    v78 = (v64 & 0xFFFFFFFFFFFFFFFCLL | v65 & 3) - v65;
    v79 = result;
    while (1)
    {
      if (v75)
      {
        v80 = 0;
      }

      else
      {
        v81 = vqmovn_high_u16(vqmovn_u16(v79[2]), v79[3]);
        v82 = vqmovn_high_u16(vqmovn_u16(*v79), v79[1]);
        v83 = vqmovn_high_u16(vqmovn_u16(v79[6]), v79[7]);
        a5[2] = vqmovn_high_u16(vqmovn_u16(v79[4]), v79[5]);
        a5[3] = v83;
        *a5 = v82;
        a5[1] = v81;
        v80 = 4 * (v70 & 0x3FFFFFF0);
        v84 = 4 * (v70 & 0x3FFFFFF0);
        if (v70 == (v70 & 0x3FFFFFF0))
        {
          goto LABEL_87;
        }
      }

      v85 = v80 + 1;
      v86 = &v76[2 * v80];
      do
      {
        v87 = *(v86 - 2);
        if (v87 >= 0xFF)
        {
          LOBYTE(v87) = -1;
        }

        v88 = v79->u16[v85];
        if (v88 >= 0xFF)
        {
          LOBYTE(v88) = -1;
        }

        v89 = &a5->i8[v85];
        *(v89 - 1) = v87;
        *v89 = v88;
        v90 = *v86;
        if (v90 >= 0xFF)
        {
          LOBYTE(v90) = -1;
        }

        v91 = *(v86 + 1);
        if (v91 >= 0xFF)
        {
          LOBYTE(v91) = -1;
        }

        v89[1] = v90;
        v89[2] = v91;
        v92 = v85 + 4;
        v93 = v85 + 3;
        v86 += 8;
        v85 += 4;
      }

      while (v93 <= v10);
      v84 = v92 - 1;
LABEL_87:
      if (v8 > v84)
      {
        v94 = v84;
        if (v66 < 4)
        {
          goto LABEL_103;
        }

        v95 = &v71[v61 * a6 + v84];
        v96 = &v79->i8[2 * v84];
        if (&a5->i8[v94] < result + 2 * v65 + 2 * v94 + (a2 & 0xFFFFFFFFFFFFFFFELL) * v61 - (v63 >> 31) && v96 < v95)
        {
          goto LABEL_103;
        }

        if (v66 >= 0x20)
        {
          v99 = (a5 + v94);
          v100 = (v79 + 2 * v94);
          v101 = v66 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v102 = vqmovn_high_u16(vqmovn_u16(v100[2]), v100[3]);
            *v99 = vqmovn_high_u16(vqmovn_u16(*v100), v100[1]);
            v99[1] = v102;
            v99 += 2;
            v100 += 4;
            v101 -= 32;
          }

          while (v101);
          if (v66 == v74)
          {
            goto LABEL_72;
          }

          v98 = v66 & 0xFFFFFFFFFFFFFFE0;
          if ((v66 & 0x1C) == 0)
          {
            v94 += v74;
            do
            {
LABEL_103:
              v107 = v79->u16[v94];
              if (v107 >= 0xFF)
              {
                LOBYTE(v107) = -1;
              }

              a5->i8[v94++] = v107;
            }

            while (v94 < v8);
            goto LABEL_72;
          }
        }

        else
        {
          v98 = 0;
        }

        v103 = v94 + v66 - (v65 & 3);
        v104 = v78 + v98;
        v105 = v98 + v94;
        v106 = 2 * v105;
        do
        {
          *(a5->i32 + v105) = vuzp1_s8(vmin_u16(*&v79->i8[v106], 0xFF00FF00FF00FFLL), 0xFF00FF00FF00FFLL).u32[0];
          v106 += 8;
          v105 += 4;
          v104 += 4;
        }

        while (v104);
        v94 = v103;
        if ((v65 & 3) != 0)
        {
          goto LABEL_103;
        }
      }

LABEL_72:
      v79 = (v79 + v77);
      a5 = (a5 + a6);
      ++v61;
      v76 += v77;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v12 = &result->u16[2];
    v13 = &a5->i8[2];
    do
    {
      v14 = *(v12 - 2);
      if (v14 >= 0xFF)
      {
        LOBYTE(v14) = -1;
      }

      *(v13 - 2) = v14;
      if (v8 != 1)
      {
        v15 = *(v12 - 1);
        if (v15 >= 0xFF)
        {
          LOBYTE(v15) = -1;
        }

        *(v13 - 1) = v15;
        if (v8 != 2)
        {
          v16 = *v12;
          if (v16 >= 0xFF)
          {
            LOBYTE(v16) = -1;
          }

          *v13 = v16;
        }
      }

      v12 += v9;
      v13 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

int16x8_t *sub_100201C38(int16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = 0;
    v9 = *a7;
    v10 = v9 - 4;
    v11 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v12 = &result->i64[1];
    v13 = &result->i8[2 * v9];
    v14 = result + 1;
    v15 = 2 * (a2 >> 1);
    v16.i64[0] = 0xFF00FF00FF00FFLL;
    v16.i64[1] = 0xFF00FF00FF00FFLL;
    v17 = a5;
    do
    {
      if (v9 >= 16)
      {
        v21 = 0;
        v22 = v14;
        do
        {
          *(v17 + v21) = vqmovun_high_s16(vqmovun_s16(v22[-1]), *v22);
          v21 += 16;
          v22 += 2;
        }

        while (v21 <= (v9 - 16));
        LODWORD(v18) = v21;
        v19 = a5 + v8 * a6;
        v20 = v11 * v8;
        if (v18 > v10)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LODWORD(v18) = 0;
        v19 = a5 + v8 * a6;
        v20 = v11 * v8;
        if (v10 < 0)
        {
          goto LABEL_31;
        }
      }

      v23 = v18;
      v24 = v10 - v18;
      if (v24 > 0x3B && ((v25 = v24 >> 2, v26 = v19 + 4 + (v24 & 0xFFFFFFFFFFFFFFFCLL) + v23, v27 = 2 * v23, v17 + v23 < &v12[v25] + 2 * v23 + v20) ? (v28 = result + 2 * v23 >= v26) : (v28 = 1), v28))
      {
        v29 = v25 + 1;
        v30 = (v25 + 1) & 0x7FFFFFFFFFFFFFF0;
        v18 = v23 + 4 * v30;
        v31 = v30;
        do
        {
          v32 = (v17 + v23);
          v33 = vminq_s16(vmaxq_s16(*(&result[1] + v27), 0), v16);
          v34 = vminq_s16(vmaxq_s16(*(result + v27), 0), v16);
          v35 = vuzp1q_s8(vminq_s16(vmaxq_s16(*(&result[2] + v27), 0), v16), vminq_s16(vmaxq_s16(*(&result[3] + v27), 0), v16));
          v36 = vuzp1q_s8(vminq_s16(vmaxq_s16(*(&result[6] + v27), 0), v16), vminq_s16(vmaxq_s16(*(&result[7] + v27), 0), v16));
          v32[2] = vuzp1q_s8(vminq_s16(vmaxq_s16(*(&result[4] + v27), 0), v16), vminq_s16(vmaxq_s16(*(&result[5] + v27), 0), v16));
          v32[3] = v36;
          *v32 = vuzp1q_s8(v34, v33);
          v32[1] = v35;
          v23 += 64;
          v27 += 128;
          v31 -= 16;
        }

        while (v31);
        if (v29 == v30)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v18 = v23;
      }

      v37 = 2 * v18 + 6;
      do
      {
        v38 = *(&result->i16[-3] + v37) & ~(*(&result->i16[-3] + v37) >> 31);
        if (v38 >= 255)
        {
          LOBYTE(v38) = -1;
        }

        v39 = &result->i8[2 * v18];
        v40 = *(v39 + 1) & ~(*(v39 + 1) >> 31);
        if (v40 >= 255)
        {
          LOBYTE(v40) = -1;
        }

        v41 = (v17 + v18);
        *v41 = v38;
        v41[1] = v40;
        v42 = *(v39 + 2) & ~(*(v39 + 2) >> 31);
        if (v42 >= 255)
        {
          LOBYTE(v42) = -1;
        }

        v43 = *(result->i16 + v37) & ~(*(result->i16 + v37) >> 31);
        if (v43 >= 255)
        {
          LOBYTE(v43) = -1;
        }

        v41[2] = v42;
        v41[3] = v43;
        v18 += 4;
        v37 += 8;
      }

      while (v18 <= v10);
LABEL_31:
      if (v18 < v9)
      {
        v44 = v18;
        v45 = v9 - v18;
        if (v45 < 4)
        {
          goto LABEL_46;
        }

        v46 = &v13[v20];
        v47 = (result + 2 * v44);
        if (v17 + v44 < v46 && v47 < v19 + v9)
        {
          goto LABEL_46;
        }

        if (v45 >= 0x20)
        {
          v48 = v45 & 0xFFFFFFFFFFFFFFE0;
          v49 = (v17 + v44);
          v50 = v45 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v51 = vuzp1q_s8(vminq_s16(vmaxq_s16(v47[2], 0), v16), vminq_s16(vmaxq_s16(v47[3], 0), v16));
            *v49 = vuzp1q_s8(vminq_s16(vmaxq_s16(*v47, 0), v16), vminq_s16(vmaxq_s16(v47[1], 0), v16));
            v49[1] = v51;
            v49 += 2;
            v47 += 4;
            v50 -= 32;
          }

          while (v50);
          if (v45 == v48)
          {
            goto LABEL_3;
          }

          if ((v45 & 0x1C) == 0)
          {
            v44 += v48;
            do
            {
LABEL_46:
              v56 = result->i16[v44] & ~(result->i16[v44] >> 31);
              if (v56 >= 255)
              {
                LOBYTE(v56) = -1;
              }

              *(v17 + v44++) = v56;
            }

            while (v9 != v44);
            goto LABEL_3;
          }
        }

        else
        {
          v48 = 0;
        }

        v52 = (v45 & 0xFFFFFFFFFFFFFFFCLL) + v44;
        v53 = v48 - (v45 & 0xFFFFFFFFFFFFFFFCLL);
        v54 = v48 + v44;
        v55 = 2 * v54;
        do
        {
          *(v17 + v54) = vuzp1_s8(vmin_s16(vmax_s16(*&result->i8[v55], 0), 0xFF00FF00FF00FFLL), 0).u32[0];
          v55 += 8;
          v54 += 4;
          v53 += 4;
        }

        while (v53);
        v44 = v52;
        if (v45 != (v45 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_46;
        }
      }

LABEL_3:
      result = (result + v15);
      v17 += a6;
      ++v8;
      v14 = (v14 + v15);
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x4_t *sub_100201F84(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = 0;
    v9 = *a7;
    v10 = v9 - 4;
    v11 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v12 = result + 1;
    v13 = &result->i8[4 * v9];
    v14 = result + 2;
    v15 = 4 * (a2 >> 2);
    v16.i64[0] = 0xFF000000FFLL;
    v16.i64[1] = 0xFF000000FFLL;
    v17 = a5;
    do
    {
      if (v9 >= 16)
      {
        v21 = 0;
        v22 = v14;
        do
        {
          v23 = v22[-2];
          v24 = v22[-1];
          v25 = *v22;
          v26 = v22[1];
          v22 += 4;
          *(v17 + v21) = vqmovn_high_u16(vqmovn_u16(vqmovun_high_s32(vqmovun_s32(v23), v24)), vqmovun_high_s32(vqmovun_s32(v25), v26));
          v21 += 16;
        }

        while (v21 <= (v9 - 16));
        LODWORD(v18) = v21;
        v19 = a5 + v8 * a6;
        v20 = v11 * v8;
        if (v18 > v10)
        {
          goto LABEL_31;
        }
      }

      else
      {
        LODWORD(v18) = 0;
        v19 = a5 + v8 * a6;
        v20 = v11 * v8;
        if (v10 < 0)
        {
          goto LABEL_31;
        }
      }

      v27 = v18;
      v28 = v10 - v18;
      if (v28 > 0x3B && ((v29 = v28 >> 2, v30 = v19 + 4 + (v28 & 0xFFFFFFFFFFFFFFFCLL) + v27, v31 = 4 * v27, v17 + v27 < &v12[v29] + 4 * v27 + v20) ? (v32 = result + 4 * v27 >= v30) : (v32 = 1), v32))
      {
        v33 = v29 + 1;
        v34 = (v29 + 1) & 0x7FFFFFFFFFFFFFF0;
        v18 = v27 + 4 * v34;
        v35 = v34;
        do
        {
          v36 = (v17 + v27);
          v37 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[4] + v31), 0), v16), vminq_s32(vmaxq_s32(*(&result[5] + v31), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[6] + v31), 0), v16), vminq_s32(vmaxq_s32(*(&result[7] + v31), 0), v16)));
          v38 = vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[2] + v31), 0), v16), vminq_s32(vmaxq_s32(*(&result[3] + v31), 0), v16));
          v39 = vuzp1q_s16(vminq_s32(vmaxq_s32(*(result + v31), 0), v16), vminq_s32(vmaxq_s32(*(&result[1] + v31), 0), v16));
          v40 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[12] + v31), 0), v16), vminq_s32(vmaxq_s32(*(&result[13] + v31), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[14] + v31), 0), v16), vminq_s32(vmaxq_s32(*(&result[15] + v31), 0), v16)));
          v36[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[8] + v31), 0), v16), vminq_s32(vmaxq_s32(*(&result[9] + v31), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(*(&result[10] + v31), 0), v16), vminq_s32(vmaxq_s32(*(&result[11] + v31), 0), v16)));
          v36[3] = v40;
          *v36 = vuzp1q_s8(v39, v38);
          v36[1] = v37;
          v27 += 64;
          v31 += 256;
          v35 -= 16;
        }

        while (v35);
        if (v33 == v34)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v18 = v27;
      }

      v41 = 4 * v18 + 12;
      do
      {
        v42 = *(&result->i32[-3] + v41) & ~(*(&result->i32[-3] + v41) >> 31);
        if (v42 >= 255)
        {
          LOBYTE(v42) = -1;
        }

        v43 = &result->i8[4 * v18];
        v44 = *(v43 + 1) & ~(*(v43 + 1) >> 31);
        if (v44 >= 255)
        {
          LOBYTE(v44) = -1;
        }

        v45 = (v17 + v18);
        *v45 = v42;
        v45[1] = v44;
        v46 = *(v43 + 2) & ~(*(v43 + 2) >> 31);
        if (v46 >= 255)
        {
          LOBYTE(v46) = -1;
        }

        v47 = *(result->i32 + v41) & ~(*(result->i32 + v41) >> 31);
        if (v47 >= 255)
        {
          LOBYTE(v47) = -1;
        }

        v45[2] = v46;
        v45[3] = v47;
        v18 += 4;
        v41 += 16;
      }

      while (v18 <= v10);
LABEL_31:
      if (v18 < v9)
      {
        v48 = v18;
        v49 = v9 - v18;
        if (v49 < 4)
        {
          goto LABEL_46;
        }

        v50 = &v13[v20];
        v51 = (result + 4 * v48);
        if (v17 + v48 < v50 && v51 < v19 + v9)
        {
          goto LABEL_46;
        }

        if (v49 >= 0x20)
        {
          v52 = v49 & 0xFFFFFFFFFFFFFFE0;
          v53 = (v17 + v48);
          v54 = v49 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v61.val[3] = vminq_s32(vmaxq_s32(v51[3], 0), v16);
            v61.val[2] = vminq_s32(vmaxq_s32(v51[2], 0), v16);
            v61.val[1] = vminq_s32(vmaxq_s32(v51[1], 0), v16);
            v61.val[0] = vminq_s32(vmaxq_s32(*v51, 0), v16);
            v60.val[3] = vminq_s32(vmaxq_s32(v51[7], 0), v16);
            v60.val[2] = vminq_s32(vmaxq_s32(v51[6], 0), v16);
            v60.val[1] = vminq_s32(vmaxq_s32(v51[5], 0), v16);
            v60.val[0] = vminq_s32(vmaxq_s32(v51[4], 0), v16);
            *v53 = vqtbl4q_s8(v61, xmmword_1003E36F0);
            v53[1] = vqtbl4q_s8(v60, xmmword_1003E36F0);
            v53 += 2;
            v51 += 8;
            v54 -= 32;
          }

          while (v54);
          if (v49 == v52)
          {
            goto LABEL_3;
          }

          if ((v49 & 0x1C) == 0)
          {
            v48 += v52;
            do
            {
LABEL_46:
              v59 = result->i32[v48] & ~(result->i32[v48] >> 31);
              if (v59 >= 255)
              {
                LOBYTE(v59) = -1;
              }

              *(v17 + v48++) = v59;
            }

            while (v9 != v48);
            goto LABEL_3;
          }
        }

        else
        {
          v52 = 0;
        }

        v55 = (v49 & 0xFFFFFFFFFFFFFFFCLL) + v48;
        v56 = v52 - (v49 & 0xFFFFFFFFFFFFFFFCLL);
        v57 = v52 + v48;
        v58 = 4 * v57;
        do
        {
          *(v17 + v57) = vuzp1_s8(vmovn_s32(vminq_s32(vmaxq_s32(*(result + v58), 0), v16)), 0).u32[0];
          v58 += 16;
          v57 += 4;
          v56 += 4;
        }

        while (v56);
        v48 = v55;
        if (v49 != (v49 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_46;
        }
      }

LABEL_3:
      result = (result + v15);
      v17 += a6;
      ++v8;
      v14 = (v14 + v15);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100202380(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = result;
    v10 = 0;
    v11 = *a7;
    v12 = v11 - 4;
    v55 = result + 4 * v11;
    v56 = result + 16;
    v57 = 4 * (a2 >> 2);
    v58 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = a5;
    do
    {
      v14 = a5 + v10 * a6;
      v15 = v58 * v10;
      result = sub_10020FF64(&v60, v9, v13, v11);
      v16.i64[0] = 0xFF000000FFLL;
      v16.i64[1] = 0xFF000000FFLL;
      if (result > v12)
      {
        goto LABEL_26;
      }

      v17 = result;
      v18 = v12 - result;
      if (v18 > 0x3B && ((v19 = v18 >> 2, v20 = v14 + 4 + (v18 & 0xFFFFFFFFFFFFFFFCLL) + result, v21 = 4 * result, v13 + result < v56 + v15 + 16 * v19 + v21) ? (v22 = v9->u64 + 4 * result >= v20) : (v22 = 1), v22))
      {
        v23 = v19 + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = *(&v9[11] + v21);
          v26 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[1].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[1] + v21), *(&v9[1] + v21), 8uLL)))));
          v27 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v21), *(v9 + v21), 8uLL)))));
          v28 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[4].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[4] + v21), *(&v9[4] + v21), 8uLL))))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[5].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[5] + v21), *(&v9[5] + v21), 8uLL))))), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[6].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[6] + v21), *(&v9[6] + v21), 8uLL))))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[7].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[7] + v21), *(&v9[7] + v21), 8uLL))))), 0), v16)));
          v29 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[2].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[2] + v21), *(&v9[2] + v21), 8uLL))))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[3].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[3] + v21), *(&v9[3] + v21), 8uLL))))), 0), v16));
          v30 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[12].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[12] + v21), *(&v9[12] + v21), 8uLL))))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[13].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[13] + v21), *(&v9[13] + v21), 8uLL))))), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[14].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[14] + v21), *(&v9[14] + v21), 8uLL))))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[15].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[15] + v21), *(&v9[15] + v21), 8uLL))))), 0), v16)));
          v31 = (v13 + v17);
          v31[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[8].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[8] + v21), *(&v9[8] + v21), 8uLL))))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[9].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[9] + v21), *(&v9[9] + v21), 8uLL))))), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[10].f32[v21 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[10] + v21), *(&v9[10] + v21), 8uLL))))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v25.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v25, v25, 8uLL))))), 0), v16)));
          v31[3] = v30;
          *v31 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(v27, 0), v16), vminq_s32(vmaxq_s32(v26, 0), v16)), v29);
          v31[1] = v28;
          v17 += 64;
          v21 += 256;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = result;
      }

      v32 = 4 * result + 12;
      do
      {
        v33 = rintf(*(&v9->f32[-3] + v32));
        v34 = v33 & ~(v33 >> 31);
        v35 = &v9->f32[result];
        v36 = rintf(v35[1]);
        v37 = v36 & ~(v36 >> 31);
        if (v34 >= 255)
        {
          LOBYTE(v34) = -1;
        }

        if (v37 >= 255)
        {
          LOBYTE(v37) = -1;
        }

        v38 = (v13 + result);
        *v38 = v34;
        v38[1] = v37;
        v39 = rintf(v35[2]);
        v40 = v39 & ~(v39 >> 31);
        if (v40 >= 255)
        {
          LOBYTE(v40) = -1;
        }

        v41 = rintf(*(v9->f32 + v32));
        v42 = v41 & ~(v41 >> 31);
        if (v42 >= 255)
        {
          LOBYTE(v42) = -1;
        }

        v38[2] = v40;
        v38[3] = v42;
        result += 4;
        v32 += 16;
      }

      while (result <= v12);
LABEL_26:
      if (result < v11)
      {
        v43 = v11 - result;
        if (v43 < 4)
        {
          v44 = result;
          goto LABEL_43;
        }

        if (v13 + result < v55 + v15 && v9->u64 + 4 * result < v14 + v11)
        {
          v44 = result;
          goto LABEL_43;
        }

        if (v43 >= 0x10)
        {
          v45 = v43 & 0xFFFFFFFFFFFFFFF0;
          v46 = 4 * result;
          v47 = result;
          v48 = v43 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v61.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[3].f32[v46 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[3] + v46), *(&v9[3] + v46), 8uLL))))), 0), v16);
            v61.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[2].f32[v46 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[2] + v46), *(&v9[2] + v46), 8uLL))))), 0), v16);
            v61.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9[1].f32[v46 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(&v9[1] + v46), *(&v9[1] + v46), 8uLL))))), 0), v16);
            v61.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v46 / 4]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v46), *(v9 + v46), 8uLL))))), 0), v16);
            *(v13 + v47) = vqtbl4q_s8(v61, xmmword_1003E36F0);
            v46 += 64;
            v47 += 16;
            v48 -= 16;
          }

          while (v48);
          if (v43 == v45)
          {
            goto LABEL_3;
          }

          if ((v43 & 0xC) == 0)
          {
            v44 = v45 + result;
            do
            {
LABEL_43:
              v53 = rintf(v9->f32[v44]);
              v54 = v53 & ~(v53 >> 31);
              if (v54 >= 255)
              {
                LOBYTE(v54) = -1;
              }

              *(v13 + v44++) = v54;
            }

            while (v11 != v44);
            goto LABEL_3;
          }
        }

        else
        {
          v45 = 0;
        }

        v44 = (v43 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v49 = v45 - (v43 & 0xFFFFFFFFFFFFFFFCLL);
        v50 = v45 + result;
        v51 = v50;
        do
        {
          v52 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&v9->f32[v51]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*(v9 + v51 * 4), *(v9 + v51 * 4), 8uLL))))), 0), v16));
          *(v13 + v50) = vuzp1_s8(v52, v52).u32[0];
          v51 += 4;
          v50 += 4;
          v49 += 4;
        }

        while (v49);
        if (v43 != (v43 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_43;
        }
      }

LABEL_3:
      v9 = (v9 + v57);
      v13 += a6;
      ++v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_100202A30(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = result;
    v10 = 0;
    v11 = *a7;
    v12 = v11 - 4;
    v54 = result + 8 * v11;
    v55 = result + 32;
    v56 = 8 * (a2 >> 3);
    v57 = a2 & 0xFFFFFFFFFFFFFFF8;
    v13 = a5;
    do
    {
      v14 = a5 + v10 * a6;
      v15 = v57 * v10;
      result = sub_100210374(&v59, v9, v13, v11);
      v16.i64[0] = 0xFF000000FFLL;
      v16.i64[1] = 0xFF000000FFLL;
      if (result > v12)
      {
        goto LABEL_26;
      }

      v17 = result;
      v18 = v12 - result;
      if (v18 > 0x3B && ((v19 = v18 >> 2, v20 = v14 + 4 + (v18 & 0xFFFFFFFFFFFFFFFCLL) + result, v21 = 8 * result, v13 + result < v55 + v15 + 32 * v19 + v21) ? (v22 = &v9->f64[result] >= v20) : (v22 = 1), v22))
      {
        v23 = v19 + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 160))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 176))));
          v26 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 128))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 144))));
          v27 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 16)))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 32))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 48)))), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 64))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 80)))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 96))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 112)))), 0), v16)));
          v28 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 192))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 208)))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 224))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 240)))), 0), v16));
          v29 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 384))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 400)))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 416))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 432)))), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 448))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 464)))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 480))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 496)))), 0), v16)));
          v30 = (v13 + v17);
          v30[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 256))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 272)))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 288))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 304)))), 0), v16)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 320))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 336)))), 0), v16), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 352))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v21 + 368)))), 0), v16)));
          v30[3] = v29;
          *v30 = v27;
          v30[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(v26, 0), v16), vminq_s32(vmaxq_s32(v25, 0), v16)), v28);
          v17 += 64;
          v21 += 512;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_26;
        }
      }

      else
      {
        result = result;
      }

      v31 = 8 * result + 24;
      do
      {
        v32 = rint(*(&v9[-1] + v31 - 8));
        v33 = v32 & ~(v32 >> 31);
        v34 = &v9->f64[result];
        v35 = rint(v34[1]);
        v36 = v35 & ~(v35 >> 31);
        if (v33 >= 255)
        {
          LOBYTE(v33) = -1;
        }

        if (v36 >= 255)
        {
          LOBYTE(v36) = -1;
        }

        v37 = (v13 + result);
        *v37 = v33;
        v37[1] = v36;
        v38 = rint(v34[2]);
        v39 = v38 & ~(v38 >> 31);
        if (v39 >= 255)
        {
          LOBYTE(v39) = -1;
        }

        v40 = rint(*(v9->f64 + v31));
        v41 = v40 & ~(v40 >> 31);
        if (v41 >= 255)
        {
          LOBYTE(v41) = -1;
        }

        v37[2] = v39;
        v37[3] = v41;
        result += 4;
        v31 += 32;
      }

      while (result <= v12);
LABEL_26:
      if (result < v11)
      {
        v42 = v11 - result;
        if (v42 < 4)
        {
          v43 = result;
          goto LABEL_43;
        }

        if (v13 + result < v54 + v15 && &v9->f64[result] < v14 + v11)
        {
          v43 = result;
          goto LABEL_43;
        }

        if (v42 >= 0x10)
        {
          v44 = v42 & 0xFFFFFFFFFFFFFFF0;
          v45 = 8 * result;
          v46 = result;
          v47 = v42 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v60.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v45 + 96))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v45 + 112)))), 0), v16);
            v60.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v45 + 64))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v45 + 80)))), 0), v16);
            v60.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v45 + 32))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v45 + 48)))), 0), v16);
            v60.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v45))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v45 + 16)))), 0), v16);
            *(v13 + v46) = vqtbl4q_s8(v60, xmmword_1003E36F0);
            v45 += 128;
            v46 += 16;
            v47 -= 16;
          }

          while (v47);
          if (v42 == v44)
          {
            goto LABEL_3;
          }

          if ((v42 & 0xC) == 0)
          {
            v43 = v44 + result;
            do
            {
LABEL_43:
              v52 = rint(v9->f64[v43]);
              v53 = v52 & ~(v52 >> 31);
              if (v53 >= 255)
              {
                LOBYTE(v53) = -1;
              }

              *(v13 + v43++) = v53;
            }

            while (v11 != v43);
            goto LABEL_3;
          }
        }

        else
        {
          v44 = 0;
        }

        v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v48 = v44 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
        v49 = v44 + result;
        v50 = 8 * v49;
        do
        {
          v51 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(*(v9 + v50))), vcvtq_s64_f64(vrndxq_f64(*(v9 + v50 + 16)))), 0), v16));
          *(v13 + v49) = vuzp1_s8(v51, v51).u32[0];
          v50 += 32;
          v49 += 4;
          v48 += 4;
        }

        while (v48);
        if (v42 != (v42 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_43;
        }
      }

LABEL_3:
      v9 = (v9 + v56);
      v13 += a6;
      ++v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint8x16_t *sub_100203010(uint8x16_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint8x16_t *a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = *a7;
  v9 = v8 - 4;
  v10 = (v8 - 8);
  if (v8 >= 8)
  {
    v16 = 0;
    v17 = a5 - result;
    v18 = (v10 & 0xFFFFFFF8) + 8;
    v19 = v18 | 4;
    if ((v18 | 4) <= v9 + 1)
    {
      v19 = v9 + 1;
    }

    v20 = ~v18 + v19;
    v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v22 = (v20 >> 2) + 1;
    v23 = &a5->i8[v21];
    v24 = &result->i8[v21];
    v25.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v25.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    while (1)
    {
      v26 = 0;
      v27 = 0;
      v28 = 8;
      do
      {
        v29 = v28;
        *&a5->i8[v27] = vqmovn_s16(vmovl_u8(*&result->i8[v27]));
        v27 += 8;
        v26 += 0x800000000;
        v28 += 8;
      }

      while (v27 <= v10);
      if (v9 >= v27)
      {
        v30 = v26 >> 32;
        if (v20 <= 0x3B || a5 < &v24[v16 * a2] && result < &v23[v16 * a6])
        {
          goto LABEL_30;
        }

        v30 += 4 * (v22 & 0x7FFFFFFFFFFFFFF0);
        v31 = v29;
        v32 = v22 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v33 = (a5 + v31);
          v34 = vminq_u8(*(&result[1] + v31), v25);
          v35 = vminq_u8(*(result + v31), v25);
          v36 = vminq_u8(*(&result[3] + v31), v25);
          v33[2] = vminq_u8(*(&result[2] + v31), v25);
          v33[3] = v36;
          *v33 = v35;
          v33[1] = v34;
          v31 += 64;
          v32 -= 16;
        }

        while (v32);
        if (v22 != (v22 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_30:
          v37 = v30 + 1;
          do
          {
            v38 = &result->u8[v37];
            v39 = result->u8[v37 - 1];
            if (v39 >= 0x7F)
            {
              LOBYTE(v39) = 127;
            }

            v40 = *v38;
            if (v40 >= 0x7F)
            {
              LOBYTE(v40) = 127;
            }

            v41 = &a5->i8[v37];
            *(v41 - 1) = v39;
            *v41 = v40;
            v42 = v38[1];
            if (v42 >= 0x7F)
            {
              LOBYTE(v42) = 127;
            }

            v43 = v38[2];
            if (v43 >= 0x7F)
            {
              LOBYTE(v43) = 127;
            }

            v41[1] = v42;
            v41[2] = v43;
            v44 = v37 + 4;
            v45 = v37 + 3;
            v37 += 4;
          }

          while (v45 <= v9);
          LODWORD(v30) = v44 - 1;
        }
      }

      else
      {
        LODWORD(v30) = v27;
      }

      if (v30 >= v8)
      {
        goto LABEL_19;
      }

      v46 = v30;
      v47 = v8 - v30;
      if (v47 < 8)
      {
        v49 = v46;
        goto LABEL_57;
      }

      if ((v17 + (a6 - a2) * v16) < 0x20)
      {
        v49 = v46;
        goto LABEL_57;
      }

      if (v47 >= 0x20)
      {
        v48 = v47 & 0xFFFFFFFFFFFFFFE0;
        v50 = v46;
        v51 = v47 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v52 = vminq_u8(*(&result[1] + v50), v25);
          v53 = (a5 + v50);
          *v53 = vminq_u8(*(result + v50), v25);
          v53[1] = v52;
          v50 += 32;
          v51 -= 32;
        }

        while (v51);
        if (v47 == v48)
        {
          goto LABEL_19;
        }

        if ((v47 & 0x18) == 0)
        {
          v49 = v48 + v46;
          do
          {
LABEL_57:
            v56 = result->u8[v49];
            if (v56 >= 0x7F)
            {
              LOBYTE(v56) = 127;
            }

            a5->i8[v49++] = v56;
          }

          while (v8 != v49);
          goto LABEL_19;
        }
      }

      else
      {
        v48 = 0;
      }

      v49 = (v47 & 0xFFFFFFFFFFFFFFF8) + v46;
      v54 = v48 - (v47 & 0xFFFFFFFFFFFFFFF8);
      v55 = v48 + v46;
      do
      {
        *&a5->i8[v55] = vmin_u8(*&result->i8[v55], 0x7F7F7F7F7F7F7F7FLL);
        v55 += 8;
        v54 += 8;
      }

      while (v54);
      if (v47 != (v47 & 0xFFFFFFFFFFFFFFF8))
      {
        goto LABEL_57;
      }

LABEL_19:
      result = (result + a2);
      a5 = (a5 + a6);
      ++v16;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 4)
  {
    v57 = 0;
    v58 = a5 - result;
    if (v9 <= 3)
    {
      v59 = 3;
    }

    else
    {
      v59 = v8 - 4;
    }

    v60 = (((v59 << 32) & 0x7FFFFFFC00000000) + 0x400000000) >> 32;
    if ((v60 | 1) > v8)
    {
      v61 = v60 + 1;
    }

    else
    {
      v61 = *a7;
    }

    v62 = v61 - v60;
    v63 = (v7 - 1);
    v64 = &a5->i8[v63 * a6 + 4 + (v59 & 0x7FFFFFFC)];
    v65 = &result->i8[v63 * a2 + 4 + (v59 & 0x7FFFFFFC)];
    v66 = (v59 >> 2) + 1;
    v68 = v65 > a5 && v64 > result;
    v69 = v62 & 0xFFFFFFFFFFFFFFE0;
    v70 = v62 & 0xFFFFFFFFFFFFFFF8;
    v71.i64[0] = 0x7F7F7F7F7F7F7F7FLL;
    v71.i64[1] = 0x7F7F7F7F7F7F7F7FLL;
    while (1)
    {
      if (v9 < 60 || (a6 | a2) < 0 || v68)
      {
        v72 = 0;
      }

      else
      {
        v73 = vminq_u8(result[1], v71);
        v74 = vminq_u8(*result, v71);
        v75 = vminq_u8(result[3], v71);
        a5[2] = vminq_u8(result[2], v71);
        a5[3] = v75;
        *a5 = v74;
        a5[1] = v73;
        v72 = 4 * (v66 & 0x3FFFFFF0);
        v76 = 4 * (v66 & 0x3FFFFFF0);
        if (v66 == (v66 & 0x3FFFFFF0))
        {
          goto LABEL_89;
        }
      }

      v77 = v72 + 1;
      do
      {
        v78 = &result->u8[v77];
        v79 = result->u8[v77 - 1];
        if (v79 >= 0x7F)
        {
          LOBYTE(v79) = 127;
        }

        v80 = *v78;
        if (v80 >= 0x7F)
        {
          LOBYTE(v80) = 127;
        }

        v81 = &a5->i8[v77];
        *(v81 - 1) = v79;
        *v81 = v80;
        v82 = v78[1];
        if (v82 >= 0x7F)
        {
          LOBYTE(v82) = 127;
        }

        v83 = v78[2];
        if (v83 >= 0x7F)
        {
          LOBYTE(v83) = 127;
        }

        v81[1] = v82;
        v81[2] = v83;
        v84 = v77 + 4;
        v85 = v77 + 3;
        v77 += 4;
      }

      while (v85 <= v9);
      v76 = v84 - 1;
LABEL_89:
      if (v8 > v76)
      {
        if (v62 < 8)
        {
          v87 = v76;
          goto LABEL_105;
        }

        if ((v58 + (a6 - a2) * v57) < 0x20)
        {
          v87 = v76;
          goto LABEL_105;
        }

        if (v62 >= 0x20)
        {
          v88 = v76;
          v89 = v62 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v90 = vminq_u8(*(&result[1] + v88), v71);
            v91 = (a5 + v88);
            *v91 = vminq_u8(*(result + v88), v71);
            v91[1] = v90;
            v88 += 32;
            v89 -= 32;
          }

          while (v89);
          if (v62 == v69)
          {
            goto LABEL_74;
          }

          v86 = v62 & 0xFFFFFFFFFFFFFFE0;
          if ((v62 & 0x18) == 0)
          {
            v87 = v76 + v69;
            do
            {
LABEL_105:
              v94 = result->u8[v87];
              if (v94 >= 0x7F)
              {
                LOBYTE(v94) = 127;
              }

              a5->i8[v87++] = v94;
            }

            while (v87 < v8);
            goto LABEL_74;
          }
        }

        else
        {
          v86 = 0;
        }

        v87 = v76 + v70;
        v92 = v86 - (v62 & 0xFFFFFFFFFFFFFFF8);
        v93 = v86 + v76;
        do
        {
          *&a5->i8[v93] = vmin_u8(*&result->i8[v93], 0x7F7F7F7F7F7F7F7FLL);
          v93 += 8;
          v92 += 8;
        }

        while (v92);
        if (v62 != v70)
        {
          goto LABEL_105;
        }
      }

LABEL_74:
      result = (result + a2);
      a5 = (a5 + a6);
      ++v57;
      if (!--v7)
      {
        return result;
      }
    }
  }

  if (v8 >= 1)
  {
    v11 = &result->u8[2];
    v12 = &a5->i8[2];
    do
    {
      v13 = *(v11 - 2);
      if (v13 >= 0x7F)
      {
        LOBYTE(v13) = 127;
      }

      *(v12 - 2) = v13;
      if (v8 != 1)
      {
        v14 = *(v11 - 1);
        if (v14 >= 0x7F)
        {
          LOBYTE(v14) = 127;
        }

        *(v12 - 1) = v14;
        if (v8 != 2)
        {
          v15 = *v11;
          if (v15 >= 0x7F)
          {
            LOBYTE(v15) = 127;
          }

          *v12 = v15;
        }
      }

      v11 += a2;
      v12 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}