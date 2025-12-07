unint64_t sub_10020D134(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (!v7)
  {
    return result;
  }

  v8 = a2;
  v9 = *a7;
  v10 = a6 >> 3;
  v11 = v7 - 1;
  if (v9 >= 8)
  {
    v14 = 0;
    v15 = (v9 - 8);
    v16 = (v9 - 4);
    v17 = a6 & 0xFFFFFFFFFFFFFFF8;
    v18 = (v15 & 0xFFFFFFF8) + 8;
    v19 = v18 | 4;
    if ((v18 | 4uLL) <= v16 + 1)
    {
      v19 = v16 + 1;
    }

    v20 = ~v18 + v19;
    v21 = a5 + 2;
    v22 = &a5[2 * (v20 >> 2) + 2];
    v23 = result + (v20 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v24 = (a5 + 8 * v9);
    v25 = result + v9;
    v221 = (v20 >> 2) + 1;
    v26 = 8 * v10;
    v27 = (a5 + 24);
    v222 = v20;
    v223 = a6 & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v30 = v11;
      v31 = v23 + v14 * v8;
      v32 = v24 + v17 * v14;
      v33 = v25 + v14 * v8;
      v34 = 8;
      v35 = v21;
      do
      {
        v36 = v34;
        v37 = vmovl_s8(*(result + v29));
        v38 = vmovl_s16(*v37.i8);
        v39 = vmovl_high_s16(v37);
        v35[-2] = vcvtq_f64_f32(vcvt_f32_s32(*v38.i8));
        v35[-1] = vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v38, v38, 8uLL)));
        v40 = vcvtq_f64_f32(vcvt_f32_s32(*v39.i8));
        v41 = vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v39, v39, 8uLL)));
        v29 += 8;
        *v35 = v40;
        v35[1] = v41;
        v35 += 4;
        v28 += 0x800000000;
        v34 += 8;
      }

      while (v29 <= v15);
      if (v16 < v29)
      {
        v8 = a2;
        if (v29 < v9)
        {
          goto LABEL_29;
        }

        goto LABEL_13;
      }

      v42 = v22;
      v29 = v28 >> 32;
      if (v20 <= 0x3B)
      {
        break;
      }

      v43 = v28 >> 29;
      v8 = a2;
      if (a5 + v43 < v31 + v29 && result + v29 < v22 + v17 * v14 + v43)
      {
        goto LABEL_26;
      }

      v29 += 4 * (v221 & 0x7FFFFFFFFFFFFFF0);
      v44 = v36;
      v45 = v36;
      v46 = v221 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v225 = *(result + v44 + 32);
        v226 = *(result + v44);
        v47 = vqtbl2q_s8(v225, xmmword_1003E3900).u64[0];
        v48 = vqtbl2q_s8(v225, xmmword_1003E3780).u64[0];
        v49 = vqtbl2q_s8(v225, xmmword_1003E3910).u64[0];
        v50 = vqtbl2q_s8(v226, xmmword_1003E3900).u64[0];
        v51 = v50.u8[6];
        v52 = vqtbl2q_s8(v225, xmmword_1003E3920).u64[0];
        v53 = v50.u8[7];
        v225.val[0].i64[0] = vqtbl2q_s8(v226, xmmword_1003E3780).u64[0];
        v54 = vqtbl2q_s8(v226, xmmword_1003E3910).u64[0];
        v225.val[1].i64[0] = vqtbl2q_s8(v226, xmmword_1003E3920).u64[0];
        v55 = v50.u8[4];
        v56 = v50.u8[5];
        v226.val[0].i32[0] = v50.u8[2];
        v226.val[0].i32[1] = v50.u8[3];
        *v226.val[0].i8 = vshr_n_s32(vshl_n_s32(*v226.val[0].i8, 0x18uLL), 0x18uLL);
        v226.val[1].i32[0] = v50.u8[0];
        v226.val[1].i32[1] = v50.u8[1];
        *v226.val[1].i8 = vshr_n_s32(vshl_n_s32(*v226.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[1].i32[0];
        v57.i64[1] = v226.val[1].i32[1];
        v50.i32[0] = v225.val[0].u8[0];
        v50.i32[1] = v225.val[0].u8[1];
        v227.val[1] = vcvtq_f64_s64(v57);
        *v226.val[1].i8 = vshr_n_s32(vshl_n_s32(v50, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[1].i32[0];
        v57.i64[1] = v226.val[1].i32[1];
        v227.val[0] = vcvtq_f64_s64(v57);
        v226.val[1].i32[0] = v54.u8[0];
        v226.val[1].i32[1] = v54.u8[1];
        *v226.val[1].i8 = vshr_n_s32(vshl_n_s32(*v226.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[1].i32[0];
        v57.i64[1] = v226.val[1].i32[1];
        v227.val[3] = vcvtq_f64_s64(v57);
        v226.val[1].i32[0] = v225.val[1].u8[0];
        v226.val[1].i32[1] = v225.val[1].u8[1];
        *v226.val[1].i8 = vshr_n_s32(vshl_n_s32(*v226.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[1].i32[0];
        v57.i64[1] = v226.val[1].i32[1];
        v227.val[2] = vcvtq_f64_s64(v57);
        v58 = &a5->f64[v45];
        vst4q_f64(v58, v227);
        v58 += 8;
        v57.i64[0] = v226.val[0].i32[0];
        v57.i64[1] = v226.val[0].i32[1];
        v226.val[1] = vcvtq_f64_s64(v57);
        LODWORD(v227.val[1].f64[0]) = v225.val[0].u8[2];
        HIDWORD(v227.val[1].f64[0]) = v225.val[0].u8[3];
        *&v227.val[1].f64[0] = vshr_n_s32(vshl_n_s32(*&v227.val[1].f64[0], 0x18uLL), 0x18uLL);
        v57.i64[0] = SLODWORD(v227.val[1].f64[0]);
        v57.i64[1] = SHIDWORD(v227.val[1].f64[0]);
        v226.val[0] = vcvtq_f64_s64(v57);
        LODWORD(v227.val[1].f64[0]) = v54.u8[2];
        HIDWORD(v227.val[1].f64[0]) = v54.u8[3];
        LODWORD(v227.val[2].f64[0]) = v225.val[1].u8[2];
        HIDWORD(v227.val[2].f64[0]) = v225.val[1].u8[3];
        *&v227.val[1].f64[0] = vshr_n_s32(vshl_n_s32(*&v227.val[1].f64[0], 0x18uLL), 0x18uLL);
        v57.i64[0] = SLODWORD(v227.val[1].f64[0]);
        v57.i64[1] = SHIDWORD(v227.val[1].f64[0]);
        v227.val[0] = vcvtq_f64_s64(v57);
        *&v227.val[1].f64[0] = vshr_n_s32(vshl_n_s32(*&v227.val[2].f64[0], 0x18uLL), 0x18uLL);
        v57.i64[0] = SLODWORD(v227.val[1].f64[0]);
        v57.i64[1] = SHIDWORD(v227.val[1].f64[0]);
        v59 = vcvtq_f64_s64(v57);
        *&v227.val[1].f64[0] = vshr_n_s32(vshl_n_s32(__PAIR64__(v56, v55), 0x18uLL), 0x18uLL);
        vst4q_f64(v58, *v226.val[0].i8);
        v57.i64[0] = SLODWORD(v227.val[1].f64[0]);
        v57.i64[1] = SHIDWORD(v227.val[1].f64[0]);
        v226.val[1].i32[0] = v225.val[0].u8[4];
        v226.val[1].i32[1] = v225.val[0].u8[5];
        v227.val[0] = vcvtq_f64_s64(v57);
        *v226.val[0].i8 = vshr_n_s32(vshl_n_s32(*v226.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[0].i32[0];
        v57.i64[1] = v226.val[0].i32[1];
        v60 = vcvtq_f64_s64(v57);
        v226.val[0].i32[0] = v54.u8[4];
        v226.val[0].i32[1] = v54.u8[5];
        *v226.val[0].i8 = vshr_n_s32(vshl_n_s32(*v226.val[0].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[0].i32[0];
        v57.i64[1] = v226.val[0].i32[1];
        v227.val[2] = vcvtq_f64_s64(v57);
        v226.val[0].i32[0] = v225.val[1].u8[4];
        v226.val[0].i32[1] = v225.val[1].u8[5];
        *v226.val[0].i8 = vshr_n_s32(vshl_n_s32(*v226.val[0].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[0].i32[0];
        v57.i64[1] = v226.val[0].i32[1];
        v227.val[1] = vcvtq_f64_s64(v57);
        v61 = &a5[8].f64[v45];
        vst4q_f64(v61, v227);
        *v226.val[0].i8 = vshr_n_s32(vshl_n_s32(__PAIR64__(v53, v51), 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[0].i32[0];
        v57.i64[1] = v226.val[0].i32[1];
        v226.val[1] = vcvtq_f64_s64(v57);
        v225.val[0].i32[0] = v225.val[0].u8[6];
        v225.val[0].i32[1] = v225.val[0].u8[7];
        *v225.val[0].i8 = vshr_n_s32(vshl_n_s32(*v225.val[0].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v225.val[0].i32[0];
        v57.i64[1] = v225.val[0].i32[1];
        v54.i32[0] = v54.u8[6];
        v54.i32[1] = v54.u8[7];
        v226.val[0] = vcvtq_f64_s64(v57);
        *v225.val[0].i8 = vshr_n_s32(vshl_n_s32(v54, 0x18uLL), 0x18uLL);
        v57.i64[0] = v225.val[0].i32[0];
        v57.i64[1] = v225.val[0].i32[1];
        v227.val[0] = vcvtq_f64_s64(v57);
        v225.val[0].i32[0] = BYTE4(v47);
        v225.val[0].i32[1] = BYTE5(v47);
        v62 = &a5[12].f64[v45];
        v225.val[1].i32[0] = v225.val[1].u8[6];
        v225.val[1].i32[1] = v225.val[1].u8[7];
        v63 = &a5[16].f64[v45];
        *v225.val[1].i8 = vshr_n_s32(vshl_n_s32(*v225.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v225.val[1].i32[0];
        v57.i64[1] = v225.val[1].i32[1];
        v64 = vcvtq_f64_s64(v57);
        v225.val[1].i32[0] = v47;
        v225.val[1].i32[1] = BYTE1(v47);
        v65 = &a5[20].f64[v45];
        *v225.val[1].i8 = vshr_n_s32(vshl_n_s32(*v225.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v225.val[1].i32[0];
        v57.i64[1] = v225.val[1].i32[1];
        vst4q_f64(v62, *v226.val[0].i8);
        v66 = vcvtq_f64_s64(v57);
        LODWORD(v64.f64[0]) = v48.u8[0];
        HIDWORD(v64.f64[0]) = v48.u8[1];
        *&v64.f64[0] = vshr_n_s32(vshl_n_s32(*&v64.f64[0], 0x18uLL), 0x18uLL);
        v57.i64[0] = SLODWORD(v64.f64[0]);
        v57.i64[1] = SHIDWORD(v64.f64[0]);
        v225.val[1] = vcvtq_f64_s64(v57);
        LODWORD(v64.f64[0]) = v49;
        HIDWORD(v64.f64[0]) = BYTE1(v49);
        *&v64.f64[0] = vshr_n_s32(vshl_n_s32(*&v64.f64[0], 0x18uLL), 0x18uLL);
        v57.i64[0] = SLODWORD(v64.f64[0]);
        v57.i64[1] = SHIDWORD(v64.f64[0]);
        v226.val[1] = vcvtq_f64_s64(v57);
        LODWORD(v64.f64[0]) = v52;
        HIDWORD(v64.f64[0]) = BYTE1(v52);
        *&v64.f64[0] = vshr_n_s32(vshl_n_s32(*&v64.f64[0], 0x18uLL), 0x18uLL);
        v57.i64[0] = SLODWORD(v64.f64[0]);
        v57.i64[1] = SHIDWORD(v64.f64[0]);
        v226.val[0] = vcvtq_f64_s64(v57);
        LODWORD(v64.f64[0]) = BYTE2(v47);
        HIDWORD(v64.f64[0]) = BYTE3(v47);
        *&v64.f64[0] = vshr_n_s32(vshl_n_s32(*&v64.f64[0], 0x18uLL), 0x18uLL);
        vst4q_f64(v63, *v225.val[1].i8);
        v57.i64[0] = SLODWORD(v64.f64[0]);
        v57.i64[1] = SHIDWORD(v64.f64[0]);
        LODWORD(v66.f64[0]) = v48.u8[2];
        v226.val[1] = vcvtq_f64_s64(v57);
        HIDWORD(v66.f64[0]) = v48.u8[3];
        *v225.val[1].i8 = vshr_n_s32(vshl_n_s32(*&v66.f64[0], 0x18uLL), 0x18uLL);
        v57.i64[0] = v225.val[1].i32[0];
        v57.i64[1] = v225.val[1].i32[1];
        v226.val[0] = vcvtq_f64_s64(v57);
        v225.val[1].i32[0] = BYTE2(v49);
        *v225.val[0].i8 = vshr_n_s32(vshl_n_s32(*v225.val[0].i8, 0x18uLL), 0x18uLL);
        v225.val[1].i32[1] = BYTE3(v49);
        *v225.val[1].i8 = vshr_n_s32(vshl_n_s32(*v225.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v225.val[1].i32[0];
        v57.i64[1] = v225.val[1].i32[1];
        v227.val[0] = vcvtq_f64_s64(v57);
        v225.val[1].i32[0] = BYTE2(v52);
        v225.val[1].i32[1] = BYTE3(v52);
        *v225.val[1].i8 = vshr_n_s32(vshl_n_s32(*v225.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v225.val[1].i32[0];
        v57.i64[1] = v225.val[1].i32[1];
        v67 = vcvtq_f64_s64(v57);
        vst4q_f64(v65, *v226.val[0].i8);
        v57.i64[0] = v225.val[0].i32[0];
        v57.i64[1] = v225.val[0].i32[1];
        v225.val[1] = vcvtq_f64_s64(v57);
        v226.val[1].i32[0] = v48.u8[4];
        v226.val[1].i32[1] = v48.u8[5];
        *v226.val[1].i8 = vshr_n_s32(vshl_n_s32(*v226.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[1].i32[0];
        v57.i64[1] = v226.val[1].i32[1];
        v225.val[0] = vcvtq_f64_s64(v57);
        v226.val[1].i32[0] = BYTE4(v49);
        v226.val[1].i32[1] = BYTE5(v49);
        *v226.val[1].i8 = vshr_n_s32(vshl_n_s32(*v226.val[1].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[1].i32[0];
        v57.i64[1] = v226.val[1].i32[1];
        LODWORD(v67.f64[0]) = BYTE4(v52);
        HIDWORD(v67.f64[0]) = BYTE5(v52);
        v226.val[0] = vcvtq_f64_s64(v57);
        *v226.val[1].i8 = vshr_n_s32(vshl_n_s32(*&v67.f64[0], 0x18uLL), 0x18uLL);
        v57.i64[0] = v226.val[1].i32[0];
        v57.i64[1] = v226.val[1].i32[1];
        v68 = vcvtq_f64_s64(v57);
        v69 = &a5[24].f64[v45];
        vst4q_f64(v69, *v225.val[0].i8);
        v225.val[0].i32[0] = BYTE6(v47);
        v225.val[0].i32[1] = HIBYTE(v47);
        v70 = vshr_n_s32(vshl_n_s32(*v225.val[0].i8, 0x18uLL), 0x18uLL);
        v57.i64[0] = v70.i32[0];
        v57.i64[1] = v70.i32[1];
        v225.val[1] = vcvtq_f64_s64(v57);
        v70.i32[0] = v48.u8[6];
        v70.i32[1] = v48.u8[7];
        v71 = vshr_n_s32(vshl_n_s32(v70, 0x18uLL), 0x18uLL);
        v57.i64[0] = v71.i32[0];
        v57.i64[1] = v71.i32[1];
        v225.val[0] = vcvtq_f64_s64(v57);
        v71.i32[0] = BYTE6(v49);
        v71.i32[1] = HIBYTE(v49);
        v48.i32[0] = BYTE6(v52);
        v72 = vshr_n_s32(vshl_n_s32(v71, 0x18uLL), 0x18uLL);
        v57.i64[0] = v72.i32[0];
        v57.i64[1] = v72.i32[1];
        v48.i32[1] = HIBYTE(v52);
        v226.val[0] = vcvtq_f64_s64(v57);
        *&v41.f64[0] = vshr_n_s32(vshl_n_s32(v48, 0x18uLL), 0x18uLL);
        v57.i64[0] = SLODWORD(v41.f64[0]);
        v57.i64[1] = SHIDWORD(v41.f64[0]);
        *&v41.f64[0] = SLODWORD(v41.f64[0]);
        v73 = vcvtq_f64_s64(v57);
        v74 = &a5[28].f64[v45];
        vst4q_f64(v74, *v225.val[0].i8);
        v45 += 64;
        v44 += 64;
        v46 -= 16;
      }

      while (v46);
      v20 = v222;
      v17 = v223;
      v8 = a2;
      if (v221 != (v221 & 0x7FFFFFFFFFFFFFF0))
      {
        goto LABEL_26;
      }

LABEL_28:
      v22 = v42;
      if (v29 < v9)
      {
LABEL_29:
        v79 = v29;
        v80 = v9 - v29;
        if (v80 < 4)
        {
          v81 = v29;
          goto LABEL_45;
        }

        if (&a5->f64[v29] < v33 && result + v29 < v32)
        {
          v81 = v29;
          goto LABEL_45;
        }

        if (v80 >= 0x10)
        {
          v82 = v80 & 0xFFFFFFFFFFFFFFF0;
          v83 = 8 * v29;
          v84 = v29;
          v85 = v80 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v86 = *(result + v84);
            v87 = vextq_s8(v86, v86, 8uLL).u64[0];
            v88.i32[0] = v87;
            v88.i32[1] = BYTE1(v87);
            v89 = vshr_n_s32(vshl_n_s32(v88, 0x18uLL), 0x18uLL);
            v90.i64[0] = v89.i32[0];
            v90.i64[1] = v89.i32[1];
            v41 = vcvtq_f64_s64(v90);
            v91.i32[0] = BYTE2(v87);
            v91.i32[1] = BYTE3(v87);
            v92 = vshr_n_s32(vshl_n_s32(v91, 0x18uLL), 0x18uLL);
            v90.i64[0] = v92.i32[0];
            v90.i64[1] = v92.i32[1];
            v93 = v90;
            v94.i32[0] = BYTE4(v87);
            v94.i32[1] = BYTE5(v87);
            v95 = vshr_n_s32(vshl_n_s32(v94, 0x18uLL), 0x18uLL);
            v90.i64[0] = v95.i32[0];
            v90.i64[1] = v95.i32[1];
            v96 = vcvtq_f64_s64(v90);
            v97.i32[0] = BYTE6(v87);
            v97.i32[1] = HIBYTE(v87);
            v98 = vshr_n_s32(vshl_n_s32(v97, 0x18uLL), 0x18uLL);
            v90.i64[0] = v98.i32[0];
            v90.i64[1] = v98.i32[1];
            v99 = vcvtq_f64_s64(v90);
            v97.i32[0] = v86.u8[0];
            v97.i32[1] = v86.u8[1];
            v100 = vshr_n_s32(vshl_n_s32(v97, 0x18uLL), 0x18uLL);
            v90.i64[0] = v100.i32[0];
            v90.i64[1] = v100.i32[1];
            v101.i32[0] = v86.u8[2];
            v102 = vcvtq_f64_s64(v90);
            v101.i32[1] = v86.u8[3];
            v103 = vshr_n_s32(vshl_n_s32(v101, 0x18uLL), 0x18uLL);
            v104.i32[0] = v86.u8[4];
            v104.i32[1] = v86.u8[5];
            v105 = vshr_n_s32(vshl_n_s32(v104, 0x18uLL), 0x18uLL);
            v90.i64[0] = v105.i32[0];
            v90.i64[1] = v105.i32[1];
            v106 = vcvtq_f64_s64(v90);
            v107.i32[0] = v86.u8[6];
            v107.i32[1] = v86.u8[7];
            *v86.i8 = vshr_n_s32(vshl_n_s32(v107, 0x18uLL), 0x18uLL);
            v90.i64[0] = v86.i32[0];
            v90.i64[1] = v86.i32[1];
            v108 = (a5 + v83);
            v108[2] = v106;
            v108[3] = vcvtq_f64_s64(v90);
            v90.i64[0] = v103.i32[0];
            v90.i64[1] = v103.i32[1];
            *v108 = v102;
            v108[1] = vcvtq_f64_s64(v90);
            v108[6] = v96;
            v108[7] = v99;
            v108[4] = v41;
            v108[5] = vcvtq_f64_s64(v93);
            v84 += 16;
            v83 += 128;
            v85 -= 16;
          }

          while (v85);
          if (v80 == v82)
          {
            goto LABEL_13;
          }

          if ((v80 & 0xC) == 0)
          {
            v81 = v82 + v79;
            do
            {
LABEL_45:
              a5->f64[v81] = *(result + v81);
              ++v81;
            }

            while (v9 != v81);
            goto LABEL_13;
          }
        }

        else
        {
          v82 = 0;
        }

        v81 = (v80 & 0xFFFFFFFFFFFFFFFCLL) + v79;
        v109 = v82 - (v80 & 0xFFFFFFFFFFFFFFFCLL);
        v110 = v82 + v79;
        v111 = 8 * v110;
        do
        {
          LODWORD(v41.f64[0]) = *(result + v110);
          v112 = vmovl_u16(*&vmovl_u8(*&v41.f64[0]));
          v113 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v112, v112, 8uLL), 0x18uLL), 0x18uLL);
          v114.i64[0] = v113.i32[0];
          v114.i64[1] = v113.i32[1];
          v115 = vcvtq_f64_s64(v114);
          *v112.i8 = vshr_n_s32(vshl_n_s32(*v112.i8, 0x18uLL), 0x18uLL);
          v114.i64[0] = v112.i32[0];
          v114.i64[1] = v112.i32[1];
          v41 = vcvtq_f64_s64(v114);
          v116 = (a5 + v111);
          *v116 = v41;
          v116[1] = v115;
          v110 += 4;
          v111 += 32;
          v109 += 4;
        }

        while (v109);
        if (v80 == (v80 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_13;
        }

        goto LABEL_45;
      }

LABEL_13:
      result += v8;
      a5 = (a5 + v26);
      LODWORD(v11) = v30 - 1;
      ++v14;
      v21 = (v21 + v26);
      v27 = (v27 + v26);
      if (!v30)
      {
        return result;
      }
    }

    v8 = a2;
LABEL_26:
    v75 = &v27->f64[v29];
    do
    {
      v76 = *(result + v29 + 1);
      *(v75 - 3) = *(result + v29);
      v77 = (a5 + 8 * v29);
      v77->f64[1] = v76;
      v41.f64[0] = *(result + v29 + 2);
      v78 = *(result + v29 + 3);
      v77[1].f64[0] = v41.f64[0];
      *v75 = v78;
      v75 += 4;
      v29 += 4;
    }

    while (v29 <= v16);
    goto LABEL_28;
  }

  if (v9 >= 4)
  {
    v117 = (v9 - 4);
    v118 = (v117 & 0x7FFFFFFC) + 4;
    v119 = &a5[2] + ((8 * v117) & 0x3FFFFFFE0);
    v120 = v10 * v11;
    if ((v117 & 0x7FFFFFFC) + 5 <= v9)
    {
      v121 = *a7;
    }

    else
    {
      v121 = (v117 & 0x7FFFFFFC) + 5;
    }

    v122 = (a5 + 8 * v120 + 8 * v121);
    v123 = v121 - (v117 & 0x7FFFFFFC) - 4;
    v124 = v119 + 8 * v120;
    v125 = (v117 >> 2) + 1;
    v127 = result + v118 + v11 * a2 > a5 && v124 > result;
    v128 = ((a6 | a2) & 0x8000000000000000) != 0;
    v130 = v119 < result + v121 + v11 * a2 && result + v118 < v122;
    v131 = v121 & 3;
    v132 = v117 < 0x3C || v128 || v127;
    v133 = v123 < 4 || v128 || v130;
    v134 = 8 * v10;
    v135 = v121 & 0xFFFFFFFC;
    v136 = &a5[2 * ((v117 >> 2) & 0x1FFFFFFF) + 2];
    while (1)
    {
      v137 = v11;
      if (v132)
      {
        break;
      }

      v139 = v125 & 0x3FFFFFF0;
      v140 = result;
      v141 = a5;
      do
      {
        v182 = *(v140 + 32);
        v142 = *(v140 + 48);
        v143 = vqtbl2q_s8(*v140, xmmword_1003E3900).u64[0];
        v144 = vqtbl2q_s8(*v140, xmmword_1003E3780).u64[0];
        v145.i32[0] = v143.u8[4];
        v145.i32[1] = v143.u8[5];
        v146 = vqtbl2q_s8(*v140, xmmword_1003E3910).u64[0];
        v147.i32[0] = v143.u8[2];
        v147.i32[1] = v143.u8[3];
        v148 = vqtbl2q_s8(*v140, xmmword_1003E3920).u64[0];
        v149.i32[0] = v143.u8[0];
        v149.i32[1] = v143.u8[1];
        v150 = vshr_n_s32(vshl_n_s32(v149, 0x18uLL), 0x18uLL);
        v151.i64[0] = v150.i32[0];
        v151.i64[1] = v150.i32[1];
        v152.i32[0] = v144.u8[0];
        v152.i32[1] = v144.u8[1];
        v228.val[1] = vcvtq_f64_s64(v151);
        v153 = vshr_n_s32(vshl_n_s32(v152, 0x18uLL), 0x18uLL);
        v151.i64[0] = v153.i32[0];
        v151.i64[1] = v153.i32[1];
        v228.val[0] = vcvtq_f64_s64(v151);
        v153.i32[0] = v146;
        v153.i32[1] = BYTE1(v146);
        v154 = vshr_n_s32(vshl_n_s32(v153, 0x18uLL), 0x18uLL);
        v151.i64[0] = v154.i32[0];
        v151.i64[1] = v154.i32[1];
        v228.val[3] = vcvtq_f64_s64(v151);
        v154.i32[0] = v148.u8[0];
        v154.i32[1] = v148.u8[1];
        v155 = vshr_n_s32(vshl_n_s32(v154, 0x18uLL), 0x18uLL);
        v151.i64[0] = v155.i32[0];
        v151.i64[1] = v155.i32[1];
        v228.val[2] = vcvtq_f64_s64(v151);
        v156 = v141;
        vst4q_f64(v156, v228);
        v156 += 8;
        v157 = vshr_n_s32(vshl_n_s32(v147, 0x18uLL), 0x18uLL);
        v151.i64[0] = v157.i32[0];
        v151.i64[1] = v157.i32[1];
        v158 = vcvtq_f64_s64(v151);
        v157.i32[0] = v144.u8[2];
        v157.i32[1] = v144.u8[3];
        v159 = vshr_n_s32(vshl_n_s32(v157, 0x18uLL), 0x18uLL);
        v151.i64[0] = v159.i32[0];
        v151.i64[1] = v159.i32[1];
        LODWORD(v228.val[2].f64[0]) = BYTE2(v146);
        v160 = vcvtq_f64_s64(v151);
        HIDWORD(v228.val[2].f64[0]) = BYTE3(v146);
        v161 = vshr_n_s32(vshl_n_s32(*&v228.val[2].f64[0], 0x18uLL), 0x18uLL);
        v151.i64[0] = v161.i32[0];
        v151.i64[1] = v161.i32[1];
        v228.val[1] = vcvtq_f64_s64(v151);
        LODWORD(v228.val[2].f64[0]) = v148.u8[2];
        v162 = vqtbl2q_s8(*v182.f64, xmmword_1003E3900).u64[0];
        HIDWORD(v228.val[2].f64[0]) = v148.u8[3];
        v163 = vshr_n_s32(vshl_n_s32(v145, 0x18uLL), 0x18uLL);
        v151.i64[0] = v163.i32[0];
        v151.i64[1] = v163.i32[1];
        v164 = v151;
        *&v228.val[2].f64[0] = vshr_n_s32(vshl_n_s32(*&v228.val[2].f64[0], 0x18uLL), 0x18uLL);
        v151.i64[0] = SLODWORD(v228.val[2].f64[0]);
        v151.i64[1] = SHIDWORD(v228.val[2].f64[0]);
        v228.val[0] = vcvtq_f64_s64(v151);
        vst4q_f64(v156, v228);
        v228.val[0] = vcvtq_f64_s64(v164);
        v164.i32[0] = v144.u8[4];
        v164.i32[1] = v144.u8[5];
        *v164.i8 = vshr_n_s32(vshl_n_s32(*v164.i8, 0x18uLL), 0x18uLL);
        v151.i64[0] = v164.i32[0];
        v151.i64[1] = v164.i32[1];
        LODWORD(v160.f64[0]) = BYTE4(v146);
        HIDWORD(v160.f64[0]) = BYTE5(v146);
        v165 = vcvtq_f64_s64(v151);
        *v164.i8 = vshr_n_s32(vshl_n_s32(*&v160.f64[0], 0x18uLL), 0x18uLL);
        v151.i64[0] = v164.i32[0];
        v151.i64[1] = v164.i32[1];
        v228.val[2] = vcvtq_f64_s64(v151);
        v164.i32[0] = v148.u8[4];
        v164.i32[1] = v148.u8[5];
        *&v160.f64[0] = vqtbl2q_s8(*v182.f64, xmmword_1003E3780).u64[0];
        *v164.i8 = vshr_n_s32(vshl_n_s32(*v164.i8, 0x18uLL), 0x18uLL);
        v151.i64[0] = v164.i32[0];
        v151.i64[1] = v164.i32[1];
        v228.val[1] = vcvtq_f64_s64(v151);
        v166 = (v141 + 128);
        vst4q_f64(v166, v228);
        v164.i64[0] = vqtbl2q_s8(*v182.f64, xmmword_1003E3910).u64[0];
        LODWORD(v165.f64[0]) = BYTE4(v162);
        HIDWORD(v165.f64[0]) = BYTE5(v162);
        *&v182.f64[0] = vqtbl2q_s8(*v182.f64, xmmword_1003E3920).u64[0];
        LODWORD(v142) = BYTE2(v162);
        DWORD1(v142) = BYTE3(v162);
        v143.i32[0] = v143.u8[6];
        v143.i32[1] = v143.u8[7];
        v167 = vshr_n_s32(vshl_n_s32(v143, 0x18uLL), 0x18uLL);
        v151.i64[0] = v167.i32[0];
        v151.i64[1] = v167.i32[1];
        v228.val[1] = vcvtq_f64_s64(v151);
        v167.i32[0] = v144.u8[6];
        v167.i32[1] = v144.u8[7];
        v168 = vshr_n_s32(vshl_n_s32(v167, 0x18uLL), 0x18uLL);
        v151.i64[0] = v168.i32[0];
        v151.i64[1] = v168.i32[1];
        v144.i32[0] = BYTE6(v146);
        v144.i32[1] = HIBYTE(v146);
        v228.val[0] = vcvtq_f64_s64(v151);
        v169 = vshr_n_s32(vshl_n_s32(v144, 0x18uLL), 0x18uLL);
        v151.i64[0] = v169.i32[0];
        v151.i64[1] = v169.i32[1];
        v228.val[3] = vcvtq_f64_s64(v151);
        v148.i32[0] = v148.u8[6];
        v148.i32[1] = v148.u8[7];
        v170 = vshr_n_s32(vshl_n_s32(v148, 0x18uLL), 0x18uLL);
        v151.i64[0] = v170.i32[0];
        v151.i64[1] = v170.i32[1];
        v228.val[2] = vcvtq_f64_s64(v151);
        v170.i32[0] = v162;
        v170.i32[1] = BYTE1(v162);
        v171 = (v141 + 192);
        vst4q_f64(v171, v228);
        v172 = vshr_n_s32(vshl_n_s32(v170, 0x18uLL), 0x18uLL);
        v151.i64[0] = v172.i32[0];
        v151.i64[1] = v172.i32[1];
        v228.val[1] = vcvtq_f64_s64(v151);
        v172.i32[0] = LOBYTE(v160.f64[0]);
        v172.i32[1] = BYTE1(v160.f64[0]);
        v173 = vshr_n_s32(vshl_n_s32(v172, 0x18uLL), 0x18uLL);
        v151.i64[0] = v173.i32[0];
        v151.i64[1] = v173.i32[1];
        v228.val[0] = vcvtq_f64_s64(v151);
        v173.i32[0] = v164.u8[0];
        v173.i32[1] = v164.u8[1];
        v174 = vshr_n_s32(vshl_n_s32(v173, 0x18uLL), 0x18uLL);
        v151.i64[0] = v174.i32[0];
        v151.i64[1] = v174.i32[1];
        v228.val[3] = vcvtq_f64_s64(v151);
        v174.i32[0] = LOBYTE(v182.f64[0]);
        v174.i32[1] = BYTE1(v182.f64[0]);
        v175 = vshr_n_s32(vshl_n_s32(v174, 0x18uLL), 0x18uLL);
        v151.i64[0] = v175.i32[0];
        v151.i64[1] = v175.i32[1];
        v228.val[2] = vcvtq_f64_s64(v151);
        *&v142 = vshr_n_s32(vshl_n_s32(*&v142, 0x18uLL), 0x18uLL);
        v176 = (v141 + 256);
        vst4q_f64(v176, v228);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v175.i32[0] = BYTE2(v160.f64[0]);
        v175.i32[1] = BYTE3(v160.f64[0]);
        v228.val[1] = vcvtq_f64_s64(v151);
        *&v142 = vshr_n_s32(vshl_n_s32(v175, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v228.val[0] = vcvtq_f64_s64(v151);
        LODWORD(v142) = v164.u8[2];
        DWORD1(v142) = v164.u8[3];
        *&v142 = vshr_n_s32(vshl_n_s32(*&v142, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v228.val[3] = vcvtq_f64_s64(v151);
        LODWORD(v142) = BYTE2(v182.f64[0]);
        DWORD1(v142) = BYTE3(v182.f64[0]);
        v177 = vshr_n_s32(vshl_n_s32(*&v165.f64[0], 0x18uLL), 0x18uLL);
        *&v142 = vshr_n_s32(vshl_n_s32(*&v142, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v228.val[2] = vcvtq_f64_s64(v151);
        v178 = (v141 + 320);
        vst4q_f64(v178, v228);
        v151.i64[0] = v177.i32[0];
        v151.i64[1] = v177.i32[1];
        v228.val[0] = vcvtq_f64_s64(v151);
        LODWORD(v142) = BYTE4(v160.f64[0]);
        DWORD1(v142) = BYTE5(v160.f64[0]);
        *&v142 = vshr_n_s32(vshl_n_s32(*&v142, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v179 = vcvtq_f64_s64(v151);
        LODWORD(v142) = v164.u8[4];
        DWORD1(v142) = v164.u8[5];
        *&v142 = vshr_n_s32(vshl_n_s32(*&v142, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v177.i32[0] = BYTE4(v182.f64[0]);
        v177.i32[1] = BYTE5(v182.f64[0]);
        v228.val[2] = vcvtq_f64_s64(v151);
        *&v142 = vshr_n_s32(vshl_n_s32(v177, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v228.val[1] = vcvtq_f64_s64(v151);
        v180 = (v141 + 384);
        vst4q_f64(v180, v228);
        LODWORD(v142) = BYTE6(v162);
        DWORD1(v142) = HIBYTE(v162);
        *&v142 = vshr_n_s32(vshl_n_s32(*&v142, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v228.val[0] = vcvtq_f64_s64(v151);
        LODWORD(v142) = BYTE6(v160.f64[0]);
        DWORD1(v142) = HIBYTE(v160.f64[0]);
        *&v142 = vshr_n_s32(vshl_n_s32(*&v142, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        v181 = vcvtq_f64_s64(v151);
        LODWORD(v142) = v164.u8[6];
        DWORD1(v142) = v164.u8[7];
        LODWORD(v182.f64[0]) = BYTE6(v182.f64[0]);
        *&v142 = vshr_n_s32(vshl_n_s32(*&v142, 0x18uLL), 0x18uLL);
        v151.i64[0] = v142;
        v151.i64[1] = SDWORD1(v142);
        HIDWORD(v182.f64[0]) = HIBYTE(v182.f64[0]);
        v228.val[2] = vcvtq_f64_s64(v151);
        *&v182.f64[0] = vshr_n_s32(vshl_n_s32(*&v182.f64[0], 0x18uLL), 0x18uLL);
        v151.i64[0] = SLODWORD(v182.f64[0]);
        v151.i64[1] = SHIDWORD(v182.f64[0]);
        *&v182.f64[0] = SLODWORD(v182.f64[0]);
        v228.val[1] = vcvtq_f64_s64(v151);
        v183 = (v141 + 448);
        vst4q_f64(v183, v228);
        v141 += 512;
        v140 += 64;
        v139 -= 16;
      }

      while (v139);
      v138 = 4 * (v125 & 0x3FFFFFF0);
      v8 = a2;
      if (v125 != (v125 & 0x3FFFFFF0))
      {
        goto LABEL_69;
      }

LABEL_71:
      if (v9 > v138)
      {
        v187 = (v117 & 0x7FFFFFFC) + 4;
        if (!v133)
        {
          if (v123 >= 0x10)
          {
            v189 = 32 * ((v117 >> 2) & 0x1FFFFFFF) + 32;
            v190 = (v117 & 0x7FFFFFFC) + 4;
            v191 = v123 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v192 = *(result + v190);
              v193 = vextq_s8(v192, v192, 8uLL).u64[0];
              v194.i32[0] = v193;
              v194.i32[1] = BYTE1(v193);
              v195 = vshr_n_s32(vshl_n_s32(v194, 0x18uLL), 0x18uLL);
              v196.i64[0] = v195.i32[0];
              v196.i64[1] = v195.i32[1];
              v182 = vcvtq_f64_s64(v196);
              v197.i32[0] = BYTE2(v193);
              v197.i32[1] = BYTE3(v193);
              v198 = vshr_n_s32(vshl_n_s32(v197, 0x18uLL), 0x18uLL);
              v196.i64[0] = v198.i32[0];
              v196.i64[1] = v198.i32[1];
              v199 = v196;
              v200.i32[0] = BYTE4(v193);
              v200.i32[1] = BYTE5(v193);
              v201 = vshr_n_s32(vshl_n_s32(v200, 0x18uLL), 0x18uLL);
              v196.i64[0] = v201.i32[0];
              v196.i64[1] = v201.i32[1];
              v202 = vcvtq_f64_s64(v196);
              v203.i32[0] = BYTE6(v193);
              v203.i32[1] = HIBYTE(v193);
              v204 = vshr_n_s32(vshl_n_s32(v203, 0x18uLL), 0x18uLL);
              v196.i64[0] = v204.i32[0];
              v196.i64[1] = v204.i32[1];
              v205 = vcvtq_f64_s64(v196);
              v203.i32[0] = v192.u8[0];
              v203.i32[1] = v192.u8[1];
              v206 = vshr_n_s32(vshl_n_s32(v203, 0x18uLL), 0x18uLL);
              v196.i64[0] = v206.i32[0];
              v196.i64[1] = v206.i32[1];
              v207.i32[0] = v192.u8[2];
              v208 = vcvtq_f64_s64(v196);
              v207.i32[1] = v192.u8[3];
              v209 = vshr_n_s32(vshl_n_s32(v207, 0x18uLL), 0x18uLL);
              v210.i32[0] = v192.u8[4];
              v210.i32[1] = v192.u8[5];
              v211 = vshr_n_s32(vshl_n_s32(v210, 0x18uLL), 0x18uLL);
              v196.i64[0] = v211.i32[0];
              v196.i64[1] = v211.i32[1];
              v212 = vcvtq_f64_s64(v196);
              v213.i32[0] = v192.u8[6];
              v213.i32[1] = v192.u8[7];
              *v192.i8 = vshr_n_s32(vshl_n_s32(v213, 0x18uLL), 0x18uLL);
              v196.i64[0] = v192.i32[0];
              v196.i64[1] = v192.i32[1];
              v214 = (a5 + v189);
              v214[2] = v212;
              v214[3] = vcvtq_f64_s64(v196);
              v196.i64[0] = v209.i32[0];
              v196.i64[1] = v209.i32[1];
              *v214 = v208;
              v214[1] = vcvtq_f64_s64(v196);
              v214[6] = v202;
              v214[7] = v205;
              v214[4] = v182;
              v214[5] = vcvtq_f64_s64(v199);
              v190 += 16;
              v189 += 128;
              v191 -= 16;
            }

            while (v191);
            v8 = a2;
            if (v123 == (v123 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_63;
            }

            v188 = v123 & 0xFFFFFFFFFFFFFFF0;
            v187 = v118 + (v123 & 0xFFFFFFFFFFFFFFF0);
            if ((v123 & 0xC) != 0)
            {
              goto LABEL_79;
            }
          }

          else
          {
            v188 = 0;
LABEL_79:
            v215 = v118 + v188;
            v216 = (v136 + 8 * v188);
            do
            {
              LODWORD(v182.f64[0]) = *(result + v215);
              v217 = vmovl_u16(*&vmovl_u8(*&v182.f64[0]));
              v218 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v217, v217, 8uLL), 0x18uLL), 0x18uLL);
              v219.i64[0] = v218.i32[0];
              v219.i64[1] = v218.i32[1];
              v220 = vcvtq_f64_s64(v219);
              *v217.i8 = vshr_n_s32(vshl_n_s32(*v217.i8, 0x18uLL), 0x18uLL);
              v219.i64[0] = v217.i32[0];
              v219.i64[1] = v217.i32[1];
              v182 = vcvtq_f64_s64(v219);
              *v216 = v182;
              v216[1] = v220;
              v216 += 2;
              v215 += 4;
            }

            while (v135 != v215);
            v187 = v118 + v123 - v131;
            if (!v131)
            {
              goto LABEL_63;
            }
          }
        }

        do
        {
          a5->f64[v187] = *(result + v187);
          ++v187;
        }

        while (v187 < v9);
      }

LABEL_63:
      result += v8;
      LODWORD(v11) = v137 - 1;
      a5 = (a5 + v134);
      v136 = (v136 + v134);
      if (!v137)
      {
        return result;
      }
    }

    v138 = 0;
LABEL_69:
    f64 = a5[v138 / 2].f64;
    do
    {
      v185 = *(result + v138 + 1);
      *f64 = *(result + v138);
      f64[1] = v185;
      v182.f64[0] = *(result + v138 + 2);
      v186 = *(result + v138 + 3);
      f64[2] = v182.f64[0];
      f64[3] = v186;
      v138 += 4;
      f64 += 4;
    }

    while (v138 <= v117);
    goto LABEL_71;
  }

  if (v9 >= 1)
  {
    v12 = (result + 2);
    v13 = a5[1].f64;
    do
    {
      *(v13 - 2) = *(v12 - 2);
      if (v9 != 1)
      {
        *(v13 - 1) = *(v12 - 1);
        if (v9 != 2)
        {
          *v13 = *v12;
        }
      }

      v12 += a2;
      v13 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint16x4_t *sub_10020E278(uint16x4_t *result, unint64_t a2, double a3, uint64_t a4, uint64_t a5, float64x2_t *a6, unint64_t a7, unsigned int *a8)
{
  v8 = a8[1];
  if (v8)
  {
    v9 = *a8;
    v10 = a2 >> 1;
    v11 = a7 >> 3;
    if (v9 >= 4)
    {
      v14 = v8 - 1;
      v15 = (v9 - 4);
      v16 = (v15 & 0xFFFFFFFC) + 4;
      v17 = v16 + 4;
      if (v16 + 4 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      v18 = v17 + ~v16;
      v19 = (v18 >> 2) + 1;
      v20 = a6 + 1;
      v21 = 8 * v11;
      v22 = 2 * v10;
      do
      {
        v23 = 0;
        v24 = 0;
        v25 = v14;
        v26 = 4;
        v27 = result;
        v28 = v20;
        do
        {
          v29 = v26;
          v30 = *v27++;
          v31 = vmovl_u16(v30);
          v32.i64[0] = v31.u32[0];
          v32.i64[1] = v31.u32[1];
          v33 = vcvtq_f64_u64(v32);
          v32.i64[0] = v31.u32[2];
          v32.i64[1] = v31.u32[3];
          v34 = vcvtq_f64_u64(v32);
          v24 += 4;
          v28[-1] = v33;
          *v28 = v34;
          v23 += 0x400000000;
          v28 += 2;
          v26 += 4;
        }

        while (v24 <= v15);
        if (v15 >= v24)
        {
          v35 = v23 >> 32;
          if (v18 <= 0x1B)
          {
            goto LABEL_21;
          }

          v35 += 4 * (v19 & 0x7FFFFFFFFFFFFFF8);
          v36 = v29;
          v37 = 2 * v29;
          v38 = v19 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v68 = *&result[4].i8[v37];
            v69 = *&result->i8[v37];
            v39 = vmovl_u16(*&vqtbl2q_s8(v69, xmmword_1003E38C0));
            v40.i64[0] = v39.u32[2];
            v40.i64[1] = v39.u32[3];
            v70.val[1] = vcvtq_f64_u64(v40);
            v41 = vmovl_u16(*&vqtbl2q_s8(v69, xmmword_1003E38D0));
            v42 = &a6->f64[v36];
            v40.i64[0] = v41.u32[2];
            v40.i64[1] = v41.u32[3];
            v70.val[0] = vcvtq_f64_u64(v40);
            v43 = vmovl_u16(*&vqtbl2q_s8(v69, xmmword_1003E38E0));
            v40.i64[0] = v43.u32[2];
            v40.i64[1] = v43.u32[3];
            v70.val[3] = vcvtq_f64_u64(v40);
            v69.val[0] = vmovl_u16(*&vqtbl2q_s8(v69, xmmword_1003E38F0));
            v40.i64[0] = v69.val[0].u32[2];
            v40.i64[1] = v69.val[0].u32[3];
            v70.val[2] = vcvtq_f64_u64(v40);
            v40.i64[0] = v39.u32[0];
            v40.i64[1] = v39.u32[1];
            v71.val[1] = vcvtq_f64_u64(v40);
            v40.i64[0] = v41.u32[0];
            v40.i64[1] = v41.u32[1];
            v71.val[0] = vcvtq_f64_u64(v40);
            v40.i64[0] = v43.u32[0];
            v40.i64[1] = v43.u32[1];
            v71.val[3] = vcvtq_f64_u64(v40);
            v40.i64[0] = v69.val[0].u32[0];
            v40.i64[1] = v69.val[0].u32[1];
            v71.val[2] = vcvtq_f64_u64(v40);
            v44 = &a6[8].f64[v36];
            v45 = &a6[12].f64[v36];
            vst4q_f64(v42, v71);
            v42 += 8;
            vst4q_f64(v42, v70);
            v69.val[0] = vmovl_u16(*&vqtbl2q_s8(v68, xmmword_1003E38C0));
            v40.i64[0] = v69.val[0].u32[2];
            v40.i64[1] = v69.val[0].u32[3];
            v70.val[0] = vcvtq_f64_u64(v40);
            v69.val[1] = vmovl_u16(*&vqtbl2q_s8(v68, xmmword_1003E38D0));
            v40.i64[0] = v69.val[1].u32[2];
            v40.i64[1] = v69.val[1].u32[3];
            v46 = vcvtq_f64_u64(v40);
            v70.val[3] = vmovl_u16(*&vqtbl2q_s8(v68, xmmword_1003E38E0));
            v40.i64[0] = LODWORD(v70.val[3].f64[1]);
            v40.i64[1] = HIDWORD(v70.val[3].f64[1]);
            v70.val[2] = vcvtq_f64_u64(v40);
            v34 = vmovl_u16(*&vqtbl2q_s8(v68, xmmword_1003E38F0));
            v40.i64[0] = LODWORD(v34.f64[1]);
            v40.i64[1] = HIDWORD(v34.f64[1]);
            v70.val[1] = vcvtq_f64_u64(v40);
            v40.i64[0] = v69.val[0].u32[0];
            v40.i64[1] = v69.val[0].u32[1];
            v47 = vcvtq_f64_u64(v40);
            v40.i64[0] = v69.val[1].u32[0];
            v40.i64[1] = v69.val[1].u32[1];
            v48 = vcvtq_f64_u64(v40);
            v40.i64[0] = LODWORD(v70.val[3].f64[0]);
            v40.i64[1] = HIDWORD(v70.val[3].f64[0]);
            v71.val[1] = vcvtq_f64_u64(v40);
            v40.i64[0] = LODWORD(v34.f64[0]);
            v40.i64[1] = HIDWORD(v34.f64[0]);
            *&v34.f64[0] = LODWORD(v34.f64[0]);
            v71.val[0] = vcvtq_f64_u64(v40);
            vst4q_f64(v44, v71);
            vst4q_f64(v45, v70);
            v36 += 32;
            v37 += 64;
            v38 -= 8;
          }

          while (v38);
          if (v19 != (v19 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_21:
            v49 = 8 * v35;
            v50 = 2 * v35;
            do
            {
              v51 = (a6 + v49);
              v52 = vmovl_u16(*(result + v50));
              v53.i64[0] = v52.u32[0];
              v53.i64[1] = v52.u32[1];
              v54 = vcvtq_f64_u64(v53);
              v53.i64[0] = v52.u32[2];
              v53.i64[1] = v52.u32[3];
              v34 = vcvtq_f64_u64(v53);
              *v51 = v54;
              v51[1] = v34;
              v35 += 4;
              v49 += 32;
              v50 += 8;
            }

            while (v35 <= v15);
          }
        }

        else
        {
          LODWORD(v35) = v24;
        }

        if (v35 < v9)
        {
          v55 = v35;
          v56 = v9 - v35;
          v35 = v35;
          if (v56 <= 7)
          {
            goto LABEL_32;
          }

          v35 = (v56 & 0xFFFFFFFFFFFFFFF8) + v35;
          v57 = 2 * v55;
          v58 = 8 * v55;
          v59 = v56 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v60 = *&result->i8[v57];
            v61 = vmovl_u16(*v60.i8);
            v62.i64[0] = v61.u32[0];
            v62.i64[1] = v61.u32[1];
            v63 = vcvtq_f64_u64(v62);
            v62.i64[0] = v61.u32[2];
            v62.i64[1] = v61.u32[3];
            v64 = v62;
            v65 = vmovl_high_u16(v60);
            v62.i64[0] = v65.u32[0];
            v62.i64[1] = v65.u32[1];
            v66 = vcvtq_f64_u64(v62);
            v62.i64[0] = v65.u32[2];
            v62.i64[1] = v65.u32[3];
            v67 = (a6 + v58);
            v67[2] = v66;
            v67[3] = vcvtq_f64_u64(v62);
            v34 = vcvtq_f64_u64(v64);
            *v67 = v63;
            v67[1] = v34;
            v57 += 16;
            v58 += 64;
            v59 -= 8;
          }

          while (v59);
          if (v56 != (v56 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_32:
            do
            {
              LOWORD(v34.f64[0]) = result->i16[v35];
              v34.f64[0] = *&v34.f64[0];
              a6->f64[v35++] = v34.f64[0];
            }

            while (v9 != v35);
          }
        }

        v14 = v25 - 1;
        v20 = (v20 + v21);
        result = (result + v22);
        a6 = (a6 + v21);
      }

      while (v25);
    }

    else if (v9 >= 1)
    {
      v12 = result + 2;
      v13 = a6 + 1;
      do
      {
        LOWORD(a3) = *(v12 - 2);
        a3 = *&a3;
        v13[-1].f64[0] = a3;
        if (v9 != 1)
        {
          LOWORD(a3) = *(v12 - 1);
          a3 = *&a3;
          v13[-1].f64[1] = a3;
          if (v9 != 2)
          {
            LOWORD(a3) = *v12;
            a3 = *&a3;
            v13->f64[0] = a3;
          }
        }

        v12 += v10;
        v13 = (v13 + 8 * v11);
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

int16x4_t *sub_10020E5D8(int16x4_t *result, unint64_t a2, double a3, uint64_t a4, uint64_t a5, float64x2_t *a6, unint64_t a7, unsigned int *a8)
{
  v8 = a8[1];
  if (v8)
  {
    v9 = *a8;
    v10 = a2 >> 1;
    v11 = a7 >> 3;
    if (v9 >= 4)
    {
      v14 = v8 - 1;
      v15 = (v9 - 4);
      v16 = (v15 & 0xFFFFFFFC) + 4;
      v17 = v16 + 4;
      if (v16 + 4 <= (v15 + 1))
      {
        v17 = v15 + 1;
      }

      v18 = v17 + ~v16;
      v19 = (v18 >> 2) + 1;
      v20 = a6 + 1;
      v21 = 8 * v11;
      v22 = 2 * v10;
      do
      {
        v23 = 0;
        v24 = 0;
        v25 = v14;
        v26 = 4;
        v27 = result;
        v28 = v20;
        do
        {
          v29 = v26;
          v30 = *v27++;
          v31 = vmovl_s16(v30);
          v32 = vcvtq_f64_f32(vcvt_f32_s32(*v31.i8));
          v33 = vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v31, v31, 8uLL)));
          v24 += 4;
          v28[-1] = v32;
          *v28 = v33;
          v23 += 0x400000000;
          v28 += 2;
          v26 += 4;
        }

        while (v24 <= v15);
        if (v15 >= v24)
        {
          v34 = v23 >> 32;
          if (v18 <= 0x1B)
          {
            goto LABEL_21;
          }

          v34 += 4 * (v19 & 0x7FFFFFFFFFFFFFF8);
          v35 = v29;
          v36 = 2 * v29;
          v37 = v19 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v67 = *&result[4].i8[v36];
            v68 = *&result->i8[v36];
            v38 = vmovl_s16(*&vqtbl2q_s8(v68, xmmword_1003E38C0));
            v39.i64[0] = v38.i32[2];
            v39.i64[1] = v38.i32[3];
            v69.val[1] = vcvtq_f64_s64(v39);
            v40 = vmovl_s16(*&vqtbl2q_s8(v68, xmmword_1003E38D0));
            v41 = &a6->f64[v35];
            v39.i64[0] = v40.i32[2];
            v39.i64[1] = v40.i32[3];
            v69.val[0] = vcvtq_f64_s64(v39);
            v42 = vmovl_s16(*&vqtbl2q_s8(v68, xmmword_1003E38E0));
            v39.i64[0] = v42.i32[2];
            v39.i64[1] = v42.i32[3];
            v69.val[3] = vcvtq_f64_s64(v39);
            v68.val[0] = vmovl_s16(*&vqtbl2q_s8(v68, xmmword_1003E38F0));
            v39.i64[0] = v68.val[0].i32[2];
            v39.i64[1] = v68.val[0].i32[3];
            v69.val[2] = vcvtq_f64_s64(v39);
            v39.i64[0] = v38.i32[0];
            v39.i64[1] = v38.i32[1];
            v70.val[1] = vcvtq_f64_s64(v39);
            v39.i64[0] = v40.i32[0];
            v39.i64[1] = v40.i32[1];
            v70.val[0] = vcvtq_f64_s64(v39);
            v39.i64[0] = v42.i32[0];
            v39.i64[1] = v42.i32[1];
            v70.val[3] = vcvtq_f64_s64(v39);
            v39.i64[0] = v68.val[0].i32[0];
            v39.i64[1] = v68.val[0].i32[1];
            v70.val[2] = vcvtq_f64_s64(v39);
            v43 = &a6[8].f64[v35];
            v44 = &a6[12].f64[v35];
            vst4q_f64(v41, v70);
            v41 += 8;
            vst4q_f64(v41, v69);
            v68.val[0] = vmovl_s16(*&vqtbl2q_s8(v67, xmmword_1003E38C0));
            v39.i64[0] = v68.val[0].i32[2];
            v39.i64[1] = v68.val[0].i32[3];
            v69.val[0] = vcvtq_f64_s64(v39);
            v68.val[1] = vmovl_s16(*&vqtbl2q_s8(v67, xmmword_1003E38D0));
            v39.i64[0] = v68.val[1].i32[2];
            v39.i64[1] = v68.val[1].i32[3];
            v45 = vcvtq_f64_s64(v39);
            v69.val[3] = vmovl_s16(*&vqtbl2q_s8(v67, xmmword_1003E38E0));
            v39.i64[0] = SLODWORD(v69.val[3].f64[1]);
            v39.i64[1] = SHIDWORD(v69.val[3].f64[1]);
            v69.val[2] = vcvtq_f64_s64(v39);
            v33 = vmovl_s16(*&vqtbl2q_s8(v67, xmmword_1003E38F0));
            v39.i64[0] = SLODWORD(v33.f64[1]);
            v39.i64[1] = SHIDWORD(v33.f64[1]);
            v69.val[1] = vcvtq_f64_s64(v39);
            v39.i64[0] = v68.val[0].i32[0];
            v39.i64[1] = v68.val[0].i32[1];
            v46 = vcvtq_f64_s64(v39);
            v39.i64[0] = v68.val[1].i32[0];
            v39.i64[1] = v68.val[1].i32[1];
            v47 = vcvtq_f64_s64(v39);
            v39.i64[0] = SLODWORD(v69.val[3].f64[0]);
            v39.i64[1] = SHIDWORD(v69.val[3].f64[0]);
            v70.val[1] = vcvtq_f64_s64(v39);
            v39.i64[0] = SLODWORD(v33.f64[0]);
            v39.i64[1] = SHIDWORD(v33.f64[0]);
            *&v33.f64[0] = SLODWORD(v33.f64[0]);
            v70.val[0] = vcvtq_f64_s64(v39);
            vst4q_f64(v43, v70);
            vst4q_f64(v44, v69);
            v35 += 32;
            v36 += 64;
            v37 -= 8;
          }

          while (v37);
          if (v19 != (v19 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_21:
            v48 = 8 * v34;
            v49 = 2 * v34;
            do
            {
              v50 = (a6 + v48);
              v51 = vmovl_s16(*(result + v49));
              v52.i64[0] = v51.i32[0];
              v52.i64[1] = v51.i32[1];
              v53 = vcvtq_f64_s64(v52);
              v52.i64[0] = v51.i32[2];
              v52.i64[1] = v51.i32[3];
              v33 = vcvtq_f64_s64(v52);
              *v50 = v53;
              v50[1] = v33;
              v34 += 4;
              v48 += 32;
              v49 += 8;
            }

            while (v34 <= v15);
          }
        }

        else
        {
          LODWORD(v34) = v24;
        }

        if (v34 < v9)
        {
          v54 = v34;
          v55 = v9 - v34;
          v34 = v34;
          if (v55 <= 7)
          {
            goto LABEL_32;
          }

          v34 = (v55 & 0xFFFFFFFFFFFFFFF8) + v34;
          v56 = 2 * v54;
          v57 = 8 * v54;
          v58 = v55 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v59 = *&result->i8[v56];
            v60 = vmovl_s16(*v59.i8);
            v61.i64[0] = v60.i32[0];
            v61.i64[1] = v60.i32[1];
            v62 = vcvtq_f64_s64(v61);
            v61.i64[0] = v60.i32[2];
            v61.i64[1] = v60.i32[3];
            v63 = v61;
            v64 = vmovl_high_s16(v59);
            v61.i64[0] = v64.i32[0];
            v61.i64[1] = v64.i32[1];
            v65 = vcvtq_f64_s64(v61);
            v61.i64[0] = v64.i32[2];
            v61.i64[1] = v64.i32[3];
            v66 = (a6 + v57);
            v66[2] = v65;
            v66[3] = vcvtq_f64_s64(v61);
            v33 = vcvtq_f64_s64(v63);
            *v66 = v62;
            v66[1] = v33;
            v56 += 16;
            v57 += 64;
            v58 -= 8;
          }

          while (v58);
          if (v55 != (v55 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_32:
            do
            {
              LOWORD(v33.f64[0]) = result->i16[v34];
              v33.f64[0] = vmovl_s16(*&v33.f64[0]).i32[0];
              a6->f64[v34++] = v33.f64[0];
            }

            while (v9 != v34);
          }
        }

        v14 = v25 - 1;
        v20 = (v20 + v21);
        result = (result + v22);
        a6 = (a6 + v21);
      }

      while (v25);
    }

    else if (v9 >= 1)
    {
      v12 = result + 2;
      v13 = a6 + 1;
      do
      {
        LOWORD(a3) = *(v12 - 2);
        a3 = vmovl_s16(*&a3).i32[0];
        v13[-1].f64[0] = a3;
        if (v9 != 1)
        {
          LOWORD(a3) = *(v12 - 1);
          a3 = vmovl_s16(*&a3).i32[0];
          v13[-1].f64[1] = a3;
          if (v9 != 2)
          {
            LOWORD(a3) = *v12;
            a3 = vmovl_s16(*&a3).i32[0];
            v13->f64[0] = a3;
          }
        }

        v12 += v10;
        v13 = (v13 + 8 * v11);
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

int8x16_t *sub_10020E95C(int8x16_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 >> 2;
    v10 = a6 >> 3;
    if (v8 >= 4)
    {
      v13 = v7 - 1;
      v14 = (v8 - 4);
      v15 = (v14 & 0xFFFFFFFC) + 4;
      v16 = v15 + 4;
      if (v15 + 4 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      v17 = v16 + ~v15;
      v18 = (v17 >> 2) + 1;
      v19 = a5 + 1;
      v20 = 8 * v10;
      v21 = 4 * v9;
      v22 = a5 + 2;
      do
      {
        v23 = 0;
        v24 = 0;
        v25 = v13;
        v26 = 4;
        v27 = result;
        v28 = v19;
        do
        {
          v29 = v26;
          v30 = *v27++;
          v24 += 4;
          v28[-1] = vcvtq_f64_f32(vcvt_f32_s32(*v30.i8));
          *v28 = vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v30, v30, 8uLL)));
          v23 += 0x400000000;
          v28 += 2;
          v26 += 4;
        }

        while (v24 <= v14);
        if (v14 >= v24)
        {
          v31 = v23 >> 32;
          if (v17 <= 0xB)
          {
            goto LABEL_21;
          }

          v31 += 4 * (v18 & 0x7FFFFFFFFFFFFFFCLL);
          v32 = v29;
          v33 = 4 * v29;
          v34 = v18 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v35 = *(&result[2] + v33);
            v36 = *(&result[3] + v33);
            v37 = vzip2_s32(*v35.i8, *v36.i8);
            v38.i64[0] = v37.i32[0];
            v38.i64[1] = v37.i32[1];
            v61.val[1] = vcvtq_f64_s64(v38);
            v39 = vzip1_s32(*v35.i8, *v36.i8);
            v38.i64[0] = v39.i32[0];
            v38.i64[1] = v39.i32[1];
            v61.val[0] = vcvtq_f64_s64(v38);
            v40 = *(result + v33);
            v41 = *(&result[1] + v33);
            v42 = &a5->f64[v32];
            v43 = vzip2q_s32(v35, v36).u64[0];
            v38.i64[0] = v43;
            v38.i64[1] = SHIDWORD(v43);
            v61.val[2] = vcvtq_f64_s64(v38);
            v35.i64[0] = vuzp2q_s32(vuzp2q_s32(v35, v36), v35).u64[0];
            v38.i64[0] = v35.i32[0];
            v38.i64[1] = v35.i32[1];
            v61.val[3] = vcvtq_f64_s64(v38);
            *v35.i8 = vzip2_s32(*v40.i8, *v41.i8);
            v38.i64[0] = v35.i32[0];
            v38.i64[1] = v35.i32[1];
            v62.val[1] = vcvtq_f64_s64(v38);
            *v35.i8 = vzip1_s32(*v40.i8, *v41.i8);
            v38.i64[0] = v35.i32[0];
            v38.i64[1] = v35.i32[1];
            v62.val[0] = vcvtq_f64_s64(v38);
            v35.i64[0] = vzip2q_s32(v40, v41).u64[0];
            v38.i64[0] = v35.i32[0];
            v38.i64[1] = v35.i32[1];
            v62.val[2] = vcvtq_f64_s64(v38);
            v35.i64[0] = vuzp2q_s32(vuzp2q_s32(v40, v41), v40).u64[0];
            v38.i64[0] = v35.i32[0];
            v38.i64[1] = v35.i32[1];
            v62.val[3] = vcvtq_f64_s64(v38);
            vst4q_f64(v42, v62);
            v42 += 8;
            vst4q_f64(v42, v61);
            v32 += 16;
            v33 += 64;
            v34 -= 4;
          }

          while (v34);
          if (v18 != (v18 & 0x7FFFFFFFFFFFFFFCLL))
          {
LABEL_21:
            v44 = (result->i64 + 4 * v31);
            v45 = (a5 + 8 * v31);
            do
            {
              v46 = *v44;
              v47 = v44[1];
              v44 += 2;
              v48.i64[0] = v46;
              v48.i64[1] = SHIDWORD(v46);
              v49 = vcvtq_f64_s64(v48);
              v48.i64[0] = v47;
              v48.i64[1] = SHIDWORD(v47);
              *v45 = v49;
              v45[1] = vcvtq_f64_s64(v48);
              v45 += 2;
              v31 += 4;
            }

            while (v31 <= v14);
          }
        }

        else
        {
          LODWORD(v31) = v24;
        }

        if (v31 < v8)
        {
          v50 = v31;
          v51 = v8 - v31;
          v31 = v31;
          if (v51 <= 7)
          {
            goto LABEL_32;
          }

          v31 = (v51 & 0xFFFFFFFFFFFFFFF8) + v31;
          v52 = (v22 + 8 * v50);
          v53 = &result->i8[4 * v50];
          v54 = v51 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v55 = *v53;
            v56 = *(v53 + 1);
            v53 += 32;
            v57.i64[0] = v55;
            v57.i64[1] = SDWORD1(v55);
            v58 = vcvtq_f64_s64(v57);
            v57.i64[0] = SDWORD2(v55);
            v57.i64[1] = SHIDWORD(v55);
            v59 = vcvtq_f64_s64(v57);
            v57.i64[0] = v56;
            v57.i64[1] = SDWORD1(v56);
            v60 = vcvtq_f64_s64(v57);
            v57.i64[0] = SDWORD2(v56);
            v57.i64[1] = SHIDWORD(v56);
            v52[-2] = v58;
            v52[-1] = v59;
            *v52 = v60;
            v52[1] = vcvtq_f64_s64(v57);
            v52 += 4;
            v54 -= 8;
          }

          while (v54);
          if (v51 != (v51 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_32:
            do
            {
              a5->f64[v31] = result->i32[v31];
              ++v31;
            }

            while (v8 != v31);
          }
        }

        v13 = v25 - 1;
        v19 = (v19 + v20);
        result = (result + v21);
        a5 = (a5 + v20);
        v22 = (v22 + v20);
      }

      while (v25);
    }

    else if (v8 >= 1)
    {
      v11 = &result->i64[1];
      v12 = a5 + 1;
      do
      {
        v12[-1].f64[0] = *(v11 - 2);
        if (v8 != 1)
        {
          v12[-1].f64[1] = *(v11 - 1);
          if (v8 != 2)
          {
            v12->f64[0] = *v11;
          }
        }

        v11 = (v11 + 4 * v9);
        v12 = (v12 + 8 * v10);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

float32x4_t *sub_10020EC28(float32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 >> 2;
    v10 = a6 >> 3;
    if (v8 >= 4)
    {
      v13 = v7 - 1;
      v14 = (v8 - 4);
      v15 = (v14 & 0xFFFFFFFC) + 4;
      v16 = v15 + 4;
      if (v15 + 4 <= (v14 + 1))
      {
        v16 = v14 + 1;
      }

      v17 = v16 + ~v15;
      v18 = (v17 >> 2) + 1;
      v19 = a5 + 1;
      v20 = 8 * v10;
      v21 = 4 * v9;
      v22 = a5 + 2;
      do
      {
        v23 = 0;
        v24 = 0;
        v25 = v13;
        v26 = 4;
        v27 = result;
        v28 = v19;
        do
        {
          v29 = v26;
          v30 = *v27++;
          v24 += 4;
          v28[-1] = vcvtq_f64_f32(*v30.f32);
          *v28 = vcvt_hight_f64_f32(v30);
          v23 += 0x400000000;
          v28 += 2;
          v26 += 4;
        }

        while (v24 <= v14);
        if (v14 >= v24)
        {
          v31 = v23 >> 32;
          if (v17 <= 0xB)
          {
            goto LABEL_21;
          }

          v31 += 4 * (v18 & 0x7FFFFFFFFFFFFFFCLL);
          v32 = v29;
          v33 = 4 * v29;
          v34 = v18 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v35 = *(&result[2] + v33);
            v36 = *(&result[3] + v33);
            v51.val[1] = vcvtq_f64_f32(vzip2_s32(*v35.i8, *v36.i8));
            v51.val[0] = vcvtq_f64_f32(vzip1_s32(*v35.i8, *v36.i8));
            v51.val[2] = vcvtq_f64_f32(*&vzip2q_s32(v35, v36));
            v37 = *(result + v33);
            v38 = *(&result[1] + v33);
            v39 = &a5->f64[v32];
            v51.val[3] = vcvtq_f64_f32(*&vuzp2q_s32(vuzp2q_s32(v35, v36), v35));
            v52.val[1] = vcvtq_f64_f32(vzip2_s32(*v37.i8, *v38.i8));
            v52.val[0] = vcvtq_f64_f32(vzip1_s32(*v37.i8, *v38.i8));
            v52.val[2] = vcvtq_f64_f32(*&vzip2q_s32(v37, v38));
            v52.val[3] = vcvtq_f64_f32(*&vuzp2q_s32(vuzp2q_s32(v37, v38), v37));
            vst4q_f64(v39, v52);
            v39 += 8;
            vst4q_f64(v39, v51);
            v32 += 16;
            v33 += 64;
            v34 -= 4;
          }

          while (v34);
          if (v18 != (v18 & 0x7FFFFFFFFFFFFFFCLL))
          {
LABEL_21:
            v40 = &result->f32[v31];
            v41 = (a5 + 8 * v31);
            do
            {
              v42 = *v40;
              v43 = v40[1];
              v40 += 2;
              *v41 = vcvtq_f64_f32(v42);
              v41[1] = vcvtq_f64_f32(v43);
              v41 += 2;
              v31 += 4;
            }

            while (v31 <= v14);
          }
        }

        else
        {
          LODWORD(v31) = v24;
        }

        if (v31 < v8)
        {
          v44 = v31;
          v45 = v8 - v31;
          v31 = v31;
          if (v45 <= 7)
          {
            goto LABEL_32;
          }

          v31 = (v45 & 0xFFFFFFFFFFFFFFF8) + v31;
          v46 = (v22 + 8 * v44);
          v47 = (result + 4 * v44);
          v48 = v45 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v49 = *v47;
            v50 = v47[1];
            v47 += 2;
            v46[-2] = vcvtq_f64_f32(*v49.f32);
            v46[-1] = vcvt_hight_f64_f32(v49);
            *v46 = vcvtq_f64_f32(*v50.f32);
            v46[1] = vcvt_hight_f64_f32(v50);
            v46 += 4;
            v48 -= 8;
          }

          while (v48);
          if (v45 != (v45 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_32:
            do
            {
              a5->f64[v31] = result->f32[v31];
              ++v31;
            }

            while (v8 != v31);
          }
        }

        v13 = v25 - 1;
        v19 = (v19 + v20);
        result = (result + v21);
        a5 = (a5 + v20);
        v22 = (v22 + v20);
      }

      while (v25);
    }

    else if (v8 >= 1)
    {
      v11 = &result->f32[2];
      v12 = a5 + 1;
      do
      {
        v12[-1].f64[0] = *(v11 - 2);
        if (v8 != 1)
        {
          v12[-1].f64[1] = *(v11 - 1);
          if (v8 != 2)
          {
            v12->f64[0] = *v11;
          }
        }

        v11 += v9;
        v12 = (v12 + 8 * v10);
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

char *sub_10020EEA0(char *__src, unint64_t a2, int a3, int a4, char *__dst, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = __src;
    v10 = 8 * *a7;
    v11 = 8 * (a2 >> 3);
    v12 = 8 * (a6 >> 3);
    do
    {
      --v7;
      __src = memcpy(__dst, v9, v10);
      v9 += v11;
      __dst += v12;
    }

    while (v7);
  }

  return __src;
}

void sub_10020EF14(unsigned int *a1, uint64_t a2, int a3, double a4, double a5)
{
  sub_1002ACE7C(v64, &off_100473B28);
  v10 = fabs(a4 + -1.0) >= 2.22044605e-16;
  v11 = fabs(a5) >= 2.22044605e-16 || v10;
  if ((a3 & 0x80000000) == 0)
  {
    v12 = *a1;
    v13 = *a1 & 0xFF8 | a3 & 7;
    v14 = *a1 & 7;
    v15 = a3 & 7;
    if (v14 == v15)
    {
      v16 = v11;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      goto LABEL_9;
    }

LABEL_22:
    sub_10022B754(a1, a2);
    goto LABEL_60;
  }

  if (!sub_100275364(a2))
  {
    v12 = *a1;
    v13 = *a1 & 0xFFF;
    v14 = *a1 & 7;
    v15 = v14;
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  v13 = sub_100271A88(a2, -1);
  v12 = *a1;
  v14 = *a1 & 7;
  v15 = v13 & 7;
  if (v14 == v15)
  {
    v23 = v11;
  }

  else
  {
    v23 = 1;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  v17 = *(a1 + 1);
  v55 = v17;
  v18 = a1[3];
  v54 = v12;
  v56 = v18;
  v19 = *(a1 + 2);
  v57 = *(a1 + 1);
  v58 = v19;
  v20 = *(a1 + 7);
  v59 = *(a1 + 6);
  v60 = v20;
  v61 = &v55 + 4;
  v62 = v63;
  v63[0] = 0;
  v63[1] = 0;
  if (v20)
  {
    atomic_fetch_add((v20 + 20), 1u);
    if (a1[1] <= 2)
    {
LABEL_11:
      v21 = *(a1 + 9);
      v22 = v62;
      *v62 = *v21;
      v22[1] = v21[1];
LABEL_20:
      *&v46 = vrev64_s32(**(a1 + 8));
      sub_100275370(a2, &v46, v13, -1, 0, 0);
      goto LABEL_24;
    }
  }

  else if (v17 <= 2)
  {
    goto LABEL_11;
  }

  LODWORD(v55) = 0;
  sub_100269B58(&v54, a1);
  v24 = a1[1];
  if (v24 <= 2)
  {
    goto LABEL_20;
  }

  sub_10026BEEC(a2, v24, *(a1 + 8), v13, -1, 0, 0);
LABEL_24:
  if (sub_100271148(a2) != 0x10000)
  {
    sub_1002703C0(a2, 0xFFFFFFFFLL, &v46);
    goto LABEL_31;
  }

  v25 = *(a2 + 8);
  v26 = *v25;
  v27 = *(v25 + 16);
  v46 = *v25;
  v47 = v27;
  v48 = *(v25 + 32);
  v28 = *(v25 + 56);
  v49 = *(v25 + 48);
  v50 = v28;
  v51 = &v46 + 8;
  v52 = v53;
  v53[0] = 0;
  v53[1] = 0;
  if (!v28)
  {
    if (SDWORD1(v26) <= 2)
    {
      goto LABEL_27;
    }

LABEL_30:
    DWORD1(v46) = 0;
    sub_100269B58(&v46, v25);
    goto LABEL_31;
  }

  atomic_fetch_add((v28 + 20), 1u);
  if (*(v25 + 4) > 2)
  {
    goto LABEL_30;
  }

LABEL_27:
  v29 = *(v25 + 72);
  v30 = v52;
  *v52 = *v29;
  v30[1] = v29[1];
LABEL_31:
  v31 = &off_100473928;
  if (v11)
  {
    v31 = off_100473BE8;
  }

  v32 = *(&v31[8 * v15] + v14);
  *v69 = a4;
  *&v69[1] = a5;
  if (!v32)
  {
    v44[0] = 0;
    v44[1] = 0;
    v33 = sub_1002A80E0(v44, 9);
    *(v33 + 8) = 48;
    *v33 = *"func != 0";
    sub_1002A8980(-215, v44, "convertTo", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 4175);
  }

  v34 = ((*a1 >> 3) & 0x1FF) + 1;
  if (a1[1] > 2)
  {
    v68[0] = &v54;
    v68[1] = &v46;
    v68[2] = 0;
    v66 = 0;
    v67 = 0;
    sub_100267CC8(v44, v68, &v66, 0xFFFFFFFFLL);
    v37 = v34 * v45;
    v38 = -1;
    while (++v38 < v44[4])
    {
      v43[0] = v37;
      v43[1] = 1;
      v32(v66, 1, 0, 0, v67, 1, v43, v69);
      sub_100267D14(v44);
    }
  }

  else
  {
    v35 = HIDWORD(v55);
    if ((v54 & v46 & 0x4000) != 0 && (v36 = v56 * v34 * SHIDWORD(v55), v36 == v36))
    {
      v35 = 1;
    }

    else
    {
      LODWORD(v36) = v56 * v34;
    }

    v44[0] = __PAIR64__(v35, v36);
    v32(v57, v63[0], 0, 0, v47, v53[0], v44, v69);
  }

  if (v50 && atomic_fetch_add((v50 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v46);
  }

  v50 = 0;
  v47 = 0u;
  v48 = 0u;
  if (SDWORD1(v46) >= 1)
  {
    v39 = 0;
    v40 = v51;
    do
    {
      *&v40[4 * v39++] = 0;
    }

    while (v39 < SDWORD1(v46));
  }

  if (v52 != v53)
  {
    j__free(v52);
  }

  if (v60 && atomic_fetch_add((v60 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v54);
  }

  v60 = 0;
  v57 = 0u;
  v58 = 0u;
  if (v55 >= 1)
  {
    v41 = 0;
    v42 = v61;
    do
    {
      *&v42[4 * v41++] = 0;
    }

    while (v41 < v55);
  }

  if (v62 != v63)
  {
    j__free(v62);
  }

LABEL_60:
  if (v65)
  {
    sub_1002ACC1C(v64);
  }
}

void sub_10020F43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    sub_100008E3C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10020F504(uint64_t a1, int *a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v9 = a3;
  sub_1002ACE7C(v50, &off_100473B48);
  if ((v9 - 1) < 2 || v9 == 4)
  {
    v20 = sub_1002A1748(a1, v9, a5);
    v21 = a6 / v20;
    v19 = 0.0;
    if (v20 <= 2.22044605e-16)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = v21;
    }
  }

  else
  {
    if (v9 != 32)
    {
      v42 = 0uLL;
      qmemcpy(sub_1002A80E0(&v42, 29), "Unknown/unsupported norm type", 29);
      sub_1002A8980(-5, &v42, "normalize", "/Library/Caches/com.apple.xbs/Sources/Measure/externals/OpenCV/modules/core/src/convert.cpp", 4717);
    }

    *&v42 = 0;
    *v38 = 0;
    sub_1002A0F30(a1, &v42, v38, 0, 0, a5);
    if (a6 <= a7)
    {
      v14 = a6;
    }

    else
    {
      v14 = a7;
    }

    if (a6 >= a7)
    {
      v15 = a6;
    }

    else
    {
      v15 = a7;
    }

    v16 = v15 - v14;
    v17 = 0.0;
    if (*v38 - *&v42 > 2.22044605e-16)
    {
      v17 = 1.0 / (*v38 - *&v42);
    }

    v18 = v16 * v17;
    v19 = v14 - *&v42 * (v16 * v17);
  }

  v22 = sub_100271A88(a1, -1);
  if (a4 < 0)
  {
    v23 = v22;
    if (sub_100275364(a2))
    {
      a4 = sub_100274398(a2, -1);
    }

    else
    {
      a4 = v23 & 7;
    }
  }

  if (sub_100271148(a1) == 0x10000)
  {
    v24 = *(a1 + 8);
    v25 = *v24;
    v26 = *(v24 + 16);
    v42 = *v24;
    v27 = *(v24 + 32);
    v43 = v26;
    v44 = v27;
    v28 = *(v24 + 56);
    v45 = *(v24 + 48);
    v46 = v28;
    v47 = &v42 + 8;
    v48 = v49;
    v49[0] = 0;
    v49[1] = 0;
    if (v28)
    {
      atomic_fetch_add((v28 + 20), 1u);
      if (*(v24 + 4) <= 2)
      {
LABEL_24:
        v29 = *(v24 + 72);
        v30 = v48;
        *v48 = *v29;
        v30[1] = v29[1];
        goto LABEL_28;
      }
    }

    else if (SDWORD1(v25) <= 2)
    {
      goto LABEL_24;
    }

    DWORD1(v42) = 0;
    sub_100269B58(&v42, v24);
  }

  else
  {
    sub_1002703C0(a1, 0xFFFFFFFFLL, &v42);
  }

LABEL_28:
  if (sub_1002743D4(a5))
  {
    sub_10020EF14(&v42, a2, a4, v18, v19);
  }

  else
  {
    *v38 = 1124007936;
    memset(&v38[4], 0, 60);
    v39 = &v38[8];
    v40 = v41;
    v41[0] = 0;
    v41[1] = 0;
    v35 = 33619968;
    v36 = v38;
    v37 = 0;
    sub_10020EF14(&v42, &v35, a4, v18, v19);
    sub_10022C248(v38, a2, a5);
    if (*&v38[56] && atomic_fetch_add((*&v38[56] + 20), 0xFFFFFFFF) == 1)
    {
      sub_100269BC8(v38);
    }

    *&v38[56] = 0;
    memset(&v38[16], 0, 32);
    if (*&v38[4] >= 1)
    {
      v31 = 0;
      v32 = v39;
      do
      {
        *&v32[4 * v31++] = 0;
      }

      while (v31 < *&v38[4]);
    }

    if (v40 != v41)
    {
      j__free(v40);
    }
  }

  if (v46 && atomic_fetch_add((v46 + 20), 0xFFFFFFFF) == 1)
  {
    sub_100269BC8(&v42);
  }

  v46 = 0;
  v43 = 0u;
  v44 = 0u;
  if (SDWORD1(v42) >= 1)
  {
    v33 = 0;
    v34 = v47;
    do
    {
      *&v34[4 * v33++] = 0;
    }

    while (v33 < SDWORD1(v42));
  }

  if (v48 != v49)
  {
    j__free(v48);
  }

  if (v50[2])
  {
    sub_1002ACC1C(v50);
  }
}

void sub_10020F8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_1002A8124(va);
  sub_1001D8BF4(v24 - 80);
  _Unwind_Resume(a1);
}

_BYTE **sub_10020F994(_BYTE **result, uint64_t a2, _BYTE **a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (a6 >= 1)
  {
    if (a5 > 1)
    {
      v9 = a5 - 2;
      v10 = a6;
      if (((a5 - 2) & 0xFFFFFFFE) + 2 >= a5)
      {
        for (i = 0; i != v10; ++i)
        {
          v19 = result[i];
          v20 = a3[i];
          v21 = *(a4 + 4 * i);
          if (v19)
          {
            v22 = 0;
            v23 = *(a2 + 4 * i);
            do
            {
              v24 = v19[v23];
              *v20 = *v19;
              v20[v21] = v24;
              v22 += 2;
              v19 += 2 * v23;
              v20 += 2 * v21;
            }

            while (v22 <= v9);
          }

          else
          {
            do
            {
              v20[v21] = 0;
              *v20 = 0;
              LODWORD(v19) = v19 + 2;
              v20 += 2 * v21;
            }

            while (v19 <= v9);
          }
        }
      }

      else
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = result[j];
          v13 = a3[j];
          v14 = *(a4 + 4 * j);
          if (v12)
          {
            v15 = 0;
            v16 = *(a2 + 4 * j);
            do
            {
              v17 = v12[v16];
              *v13 = *v12;
              v13[v14] = v17;
              v15 += 2;
              v12 += 2 * v16;
              v13 += 2 * v14;
            }

            while (v15 <= v9);
            *v13 = *v12;
          }

          else
          {
            do
            {
              v13[v14] = 0;
              *v13 = 0;
              LODWORD(v12) = v12 + 2;
              v13 += 2 * v14;
            }

            while (v12 <= v9);
            *v13 = 0;
          }
        }
      }
    }

    else if (a5 == 1)
    {
      v6 = a6;
      do
      {
        v8 = *result;
        if (*result)
        {
          LOBYTE(v8) = *v8;
        }

        v7 = *a3++;
        *v7 = v8;
        ++result;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

_WORD **sub_10020FAFC(_WORD **result, uint64_t a2, _WORD **a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (a6 >= 1)
  {
    if (a5 > 1)
    {
      v9 = a5 - 2;
      v10 = a6;
      if (((a5 - 2) & 0xFFFFFFFE) + 2 >= a5)
      {
        for (i = 0; i != v10; ++i)
        {
          v19 = result[i];
          v20 = a3[i];
          v21 = *(a4 + 4 * i);
          if (v19)
          {
            v22 = 0;
            v23 = *(a2 + 4 * i);
            do
            {
              v24 = v19[v23];
              *v20 = *v19;
              v20[v21] = v24;
              v22 += 2;
              v19 += 2 * v23;
              v20 += 2 * v21;
            }

            while (v22 <= v9);
          }

          else
          {
            do
            {
              v20[v21] = 0;
              *v20 = 0;
              LODWORD(v19) = v19 + 2;
              v20 += 2 * v21;
            }

            while (v19 <= v9);
          }
        }
      }

      else
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = result[j];
          v13 = a3[j];
          v14 = *(a4 + 4 * j);
          if (v12)
          {
            v15 = 0;
            v16 = *(a2 + 4 * j);
            do
            {
              v17 = v12[v16];
              *v13 = *v12;
              v13[v14] = v17;
              v15 += 2;
              v12 += 2 * v16;
              v13 += 2 * v14;
            }

            while (v15 <= v9);
            *v13 = *v12;
          }

          else
          {
            do
            {
              v13[v14] = 0;
              *v13 = 0;
              LODWORD(v12) = v12 + 2;
              v13 += 2 * v14;
            }

            while (v12 <= v9);
            *v13 = 0;
          }
        }
      }
    }

    else if (a5 == 1)
    {
      v6 = a6;
      do
      {
        v8 = *result;
        if (*result)
        {
          LOWORD(v8) = *v8;
        }

        v7 = *a3++;
        *v7 = v8;
        ++result;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

_DWORD **sub_10020FC74(_DWORD **result, uint64_t a2, _DWORD **a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (a6 >= 1)
  {
    if (a5 > 1)
    {
      v9 = a5 - 2;
      v10 = a6;
      if (((a5 - 2) & 0xFFFFFFFE) + 2 >= a5)
      {
        for (i = 0; i != v10; ++i)
        {
          v19 = result[i];
          v20 = a3[i];
          v21 = *(a4 + 4 * i);
          if (v19)
          {
            v22 = 0;
            v23 = *(a2 + 4 * i);
            do
            {
              v24 = v19[v23];
              *v20 = *v19;
              v20[v21] = v24;
              v22 += 2;
              v19 += 2 * v23;
              v20 += 2 * v21;
            }

            while (v22 <= v9);
          }

          else
          {
            do
            {
              v20[v21] = 0;
              *v20 = 0;
              LODWORD(v19) = v19 + 2;
              v20 += 2 * v21;
            }

            while (v19 <= v9);
          }
        }
      }

      else
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = result[j];
          v13 = a3[j];
          v14 = *(a4 + 4 * j);
          if (v12)
          {
            v15 = 0;
            v16 = *(a2 + 4 * j);
            do
            {
              v17 = v12[v16];
              *v13 = *v12;
              v13[v14] = v17;
              v15 += 2;
              v12 += 2 * v16;
              v13 += 2 * v14;
            }

            while (v15 <= v9);
            *v13 = *v12;
          }

          else
          {
            do
            {
              v13[v14] = 0;
              *v13 = 0;
              LODWORD(v12) = v12 + 2;
              v13 += 2 * v14;
            }

            while (v12 <= v9);
            *v13 = 0;
          }
        }
      }
    }

    else if (a5 == 1)
    {
      v6 = a6;
      do
      {
        v8 = *result;
        if (*result)
        {
          LODWORD(v8) = *v8;
        }

        v7 = *a3++;
        *v7 = v8;
        ++result;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

void **sub_10020FDEC(void **result, uint64_t a2, void **a3, uint64_t a4, unsigned int a5, unsigned int a6)
{
  if (a6 >= 1)
  {
    if (a5 > 1)
    {
      v9 = a5 - 2;
      v10 = a6;
      if (((a5 - 2) & 0xFFFFFFFE) + 2 >= a5)
      {
        for (i = 0; i != v10; ++i)
        {
          v19 = result[i];
          v20 = a3[i];
          v21 = *(a4 + 4 * i);
          if (v19)
          {
            v22 = 0;
            v23 = *(a2 + 4 * i);
            do
            {
              v24 = v19[v23];
              *v20 = *v19;
              v20[v21] = v24;
              v22 += 2;
              v19 += 2 * v23;
              v20 += 2 * v21;
            }

            while (v22 <= v9);
          }

          else
          {
            do
            {
              v20[v21] = 0;
              *v20 = 0;
              LODWORD(v19) = v19 + 2;
              v20 += 2 * v21;
            }

            while (v19 <= v9);
          }
        }
      }

      else
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = result[j];
          v13 = a3[j];
          v14 = *(a4 + 4 * j);
          if (v12)
          {
            v15 = 0;
            v16 = *(a2 + 4 * j);
            do
            {
              v17 = v12[v16];
              *v13 = *v12;
              v13[v14] = v17;
              v15 += 2;
              v12 += 2 * v16;
              v13 += 2 * v14;
            }

            while (v15 <= v9);
            *v13 = *v12;
          }

          else
          {
            do
            {
              v13[v14] = 0;
              *v13 = 0;
              LODWORD(v12) = v12 + 2;
              v13 += 2 * v14;
            }

            while (v12 <= v9);
            *v13 = 0;
          }
        }
      }
    }

    else if (a5 == 1)
    {
      v6 = a6;
      do
      {
        v8 = *result;
        if (*result)
        {
          v8 = *v8;
        }

        v7 = *a3++;
        *v7 = v8;
        ++result;
        --v6;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_10020FF64(uint64_t a1, float32x4_t *a2, uint64_t a3, int a4)
{
  v4 = a4 - 16;
  if (a4 >= 16)
  {
    result = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v87 = result;
        v63 = v6;
        v71 = a3;
        v79 = v4;
        v55 = v9;
        sub_1003C83B4();
        v9 = v55;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v63;
        a3 = v71;
        v4 = v79;
        result = v87;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v10 = v7[3];
          v11 = v8[1];
          v12 = v6[-1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v88 = result;
      v64 = v6;
      v72 = a3;
      v80 = v4;
      v56 = v9;
      sub_1003C83FC();
      v9 = v56;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v64;
      a3 = v72;
      v4 = v80;
      result = v88;
      v10 = xmmword_1004B0030;
      v11 = xmmword_1004B0010;
      v12 = v64[-1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

LABEL_16:
      v89 = result;
      v65 = v6;
      v73 = a3;
      v81 = v4;
      v49 = v12;
      v57 = v9;
      v43 = v10;
      v37 = v11;
      sub_1003C83B4();
      v11 = v37;
      v10 = v43;
      v12 = v49;
      v9 = v57;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v65;
      a3 = v73;
      v4 = v81;
      result = v89;
      if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
      {
LABEL_8:
        v13 = v7[3];
        v14 = v8[1];
        v15 = *v6;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_17:
      v90 = result;
      v66 = v6;
      v74 = a3;
      v82 = v4;
      v50 = v12;
      v58 = v9;
      v44 = v10;
      v38 = v11;
      sub_1003C83FC();
      v11 = v38;
      v10 = v44;
      v12 = v50;
      v9 = v58;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v66;
      a3 = v74;
      v4 = v82;
      result = v90;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      v15 = *v66;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_9:
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }

LABEL_18:
      v91 = result;
      v67 = v6;
      v75 = a3;
      v83 = v4;
      v51 = v12;
      v59 = v9;
      v45 = v10;
      v33 = v15;
      v39 = v11;
      v25 = v14;
      v29 = v13;
      sub_1003C83B4();
      v14 = v25;
      v13 = v29;
      v15 = v33;
      v11 = v39;
      v10 = v45;
      v12 = v51;
      v9 = v59;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v67;
      a3 = v75;
      v4 = v83;
      result = v91;
      if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
      {
LABEL_10:
        v16 = v7[3];
        v17 = v8[1];
        v18 = v6[1];
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

LABEL_19:
      v92 = result;
      v68 = v6;
      v76 = a3;
      v84 = v4;
      v52 = v12;
      v60 = v9;
      v46 = v10;
      v34 = v15;
      v40 = v11;
      v26 = v14;
      v30 = v13;
      sub_1003C83FC();
      v14 = v26;
      v13 = v30;
      v15 = v34;
      v11 = v40;
      v10 = v46;
      v12 = v52;
      v9 = v60;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v68;
      a3 = v76;
      v4 = v84;
      result = v92;
      v16 = xmmword_1004B0030;
      v17 = xmmword_1004B0010;
      v18 = v68[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_11:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }

LABEL_20:
      v93 = result;
      v69 = v6;
      v77 = a3;
      v85 = v4;
      v53 = v12;
      v61 = v9;
      v47 = v10;
      v35 = v15;
      v41 = v11;
      v27 = v14;
      v31 = v13;
      v21 = v16;
      v23 = v18;
      v19 = v17;
      sub_1003C83B4();
      v17 = v19;
      v16 = v21;
      v18 = v23;
      v14 = v27;
      v13 = v31;
      v15 = v35;
      v11 = v41;
      v10 = v47;
      v12 = v53;
      v9 = v61;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v69;
      a3 = v77;
      v4 = v85;
      result = v93;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_21:
        v94 = result;
        v70 = v6;
        v78 = a3;
        v86 = v4;
        v54 = v12;
        v62 = v9;
        v48 = v10;
        v36 = v15;
        v42 = v11;
        v28 = v14;
        v32 = v13;
        v22 = v16;
        v24 = v18;
        v20 = v17;
        sub_1003C83FC();
        v17 = v20;
        v16 = v22;
        v18 = v24;
        v14 = v28;
        v13 = v32;
        v15 = v36;
        v11 = v42;
        v10 = v48;
        v12 = v54;
        v9 = v62;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v70;
        a3 = v78;
        v4 = v86;
        result = v94;
      }

LABEL_12:
      *(a3 + result) = vqmovn_high_u16(vqmovn_u16(vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v9, vorrq_s8(vandq_s8(v11, v9), v10)))), vcvtq_s32_f32(vaddq_f32(v12, vorrq_s8(vandq_s8(v14, v12), v13))))), vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v17, v15), v16)))), vcvtq_s32_f32(vaddq_f32(v18, vorrq_s8(vandq_s8(v8[1], v18), v7[3])))));
      result += 16;
      v6 += 4;
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100210374(uint64_t a1, float64x2_t *a2, uint64_t a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    result = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      v10 = v6[-1];
      v11 = *v6;
      v12 = v6[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v49 = result;
        v37 = v6;
        v41 = a3;
        v45 = v4;
        v33 = v10;
        v25 = v9;
        v29 = v12;
        v21 = v11;
        sub_1003C83B4();
        v11 = v21;
        v9 = v25;
        v12 = v29;
        v10 = v33;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v37;
        a3 = v41;
        v4 = v45;
        result = v49;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v13 = v7[3];
          v14 = v8[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v50 = result;
      v38 = v6;
      v42 = a3;
      v46 = v4;
      v34 = v10;
      v26 = v9;
      v30 = v12;
      v22 = v11;
      sub_1003C83FC();
      v11 = v22;
      v9 = v26;
      v12 = v30;
      v10 = v34;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v38;
      a3 = v42;
      v4 = v46;
      result = v50;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v51 = result;
      v39 = v6;
      v43 = a3;
      v47 = v4;
      v35 = v10;
      v27 = v9;
      v31 = v12;
      v19 = v13;
      v23 = v11;
      v17 = v14;
      sub_1003C83B4();
      v14 = v17;
      v13 = v19;
      v11 = v23;
      v9 = v27;
      v12 = v31;
      v10 = v35;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v39;
      a3 = v43;
      v4 = v47;
      result = v51;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v52 = result;
        v40 = v6;
        v44 = a3;
        v48 = v4;
        v36 = v10;
        v28 = v9;
        v32 = v12;
        v20 = v13;
        v24 = v11;
        v18 = v14;
        sub_1003C83FC();
        v14 = v18;
        v13 = v20;
        v11 = v24;
        v9 = v28;
        v12 = v32;
        v10 = v36;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v40;
        a3 = v44;
        v4 = v48;
        result = v52;
      }

LABEL_8:
      v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      *(a3 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v14, v15), v13)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v8[1], v16), v7[3])))));
      result += 8;
      v6 += 4;
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002105B4(uint64_t a1, float32x4_t *a2, uint64_t a3, int a4)
{
  v4 = a4 - 16;
  if (a4 >= 16)
  {
    result = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v87 = result;
        v63 = v6;
        v71 = a3;
        v79 = v4;
        v55 = v9;
        sub_1003C83B4();
        v9 = v55;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v63;
        a3 = v71;
        v4 = v79;
        result = v87;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v10 = v7[3];
          v11 = v8[1];
          v12 = v6[-1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }

      v88 = result;
      v64 = v6;
      v72 = a3;
      v80 = v4;
      v56 = v9;
      sub_1003C83FC();
      v9 = v56;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v64;
      a3 = v72;
      v4 = v80;
      result = v88;
      v10 = xmmword_1004B0030;
      v11 = xmmword_1004B0010;
      v12 = v64[-1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

LABEL_16:
      v89 = result;
      v65 = v6;
      v73 = a3;
      v81 = v4;
      v49 = v12;
      v57 = v9;
      v43 = v10;
      v37 = v11;
      sub_1003C83B4();
      v11 = v37;
      v10 = v43;
      v12 = v49;
      v9 = v57;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v65;
      a3 = v73;
      v4 = v81;
      result = v89;
      if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
      {
LABEL_8:
        v13 = v7[3];
        v14 = v8[1];
        v15 = *v6;
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

LABEL_17:
      v90 = result;
      v66 = v6;
      v74 = a3;
      v82 = v4;
      v50 = v12;
      v58 = v9;
      v44 = v10;
      v38 = v11;
      sub_1003C83FC();
      v11 = v38;
      v10 = v44;
      v12 = v50;
      v9 = v58;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v66;
      a3 = v74;
      v4 = v82;
      result = v90;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      v15 = *v66;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_9:
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_10;
        }

        goto LABEL_19;
      }

LABEL_18:
      v91 = result;
      v67 = v6;
      v75 = a3;
      v83 = v4;
      v51 = v12;
      v59 = v9;
      v45 = v10;
      v33 = v15;
      v39 = v11;
      v25 = v14;
      v29 = v13;
      sub_1003C83B4();
      v14 = v25;
      v13 = v29;
      v15 = v33;
      v11 = v39;
      v10 = v45;
      v12 = v51;
      v9 = v59;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v67;
      a3 = v75;
      v4 = v83;
      result = v91;
      if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
      {
LABEL_10:
        v16 = v7[3];
        v17 = v8[1];
        v18 = v6[1];
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          goto LABEL_11;
        }

        goto LABEL_20;
      }

LABEL_19:
      v92 = result;
      v68 = v6;
      v76 = a3;
      v84 = v4;
      v52 = v12;
      v60 = v9;
      v46 = v10;
      v34 = v15;
      v40 = v11;
      v26 = v14;
      v30 = v13;
      sub_1003C83FC();
      v14 = v26;
      v13 = v30;
      v15 = v34;
      v11 = v40;
      v10 = v46;
      v12 = v52;
      v9 = v60;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v68;
      a3 = v76;
      v4 = v84;
      result = v92;
      v16 = xmmword_1004B0030;
      v17 = xmmword_1004B0010;
      v18 = v68[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_11:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_12;
      }

LABEL_20:
      v93 = result;
      v69 = v6;
      v77 = a3;
      v85 = v4;
      v53 = v12;
      v61 = v9;
      v47 = v10;
      v35 = v15;
      v41 = v11;
      v27 = v14;
      v31 = v13;
      v21 = v16;
      v23 = v18;
      v19 = v17;
      sub_1003C83B4();
      v17 = v19;
      v16 = v21;
      v18 = v23;
      v14 = v27;
      v13 = v31;
      v15 = v35;
      v11 = v41;
      v10 = v47;
      v12 = v53;
      v9 = v61;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v69;
      a3 = v77;
      v4 = v85;
      result = v93;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_21:
        v94 = result;
        v70 = v6;
        v78 = a3;
        v86 = v4;
        v54 = v12;
        v62 = v9;
        v48 = v10;
        v36 = v15;
        v42 = v11;
        v28 = v14;
        v32 = v13;
        v22 = v16;
        v24 = v18;
        v20 = v17;
        sub_1003C83FC();
        v17 = v20;
        v16 = v22;
        v18 = v24;
        v14 = v28;
        v13 = v32;
        v15 = v36;
        v11 = v42;
        v10 = v48;
        v12 = v54;
        v9 = v62;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v70;
        a3 = v78;
        v4 = v86;
        result = v94;
      }

LABEL_12:
      *(a3 + result) = vqmovn_high_s16(vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v9, vorrq_s8(vandq_s8(v11, v9), v10)))), vcvtq_s32_f32(vaddq_f32(v12, vorrq_s8(vandq_s8(v14, v12), v13))))), vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v17, v15), v16)))), vcvtq_s32_f32(vaddq_f32(v18, vorrq_s8(vandq_s8(v8[1], v18), v7[3])))));
      result += 16;
      v6 += 4;
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002109C4(uint64_t a1, float64x2_t *a2, uint64_t a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    result = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      v10 = v6[-1];
      v11 = *v6;
      v12 = v6[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v49 = result;
        v37 = v6;
        v41 = a3;
        v45 = v4;
        v33 = v10;
        v25 = v9;
        v29 = v12;
        v21 = v11;
        sub_1003C83B4();
        v11 = v21;
        v9 = v25;
        v12 = v29;
        v10 = v33;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v37;
        a3 = v41;
        v4 = v45;
        result = v49;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v13 = v7[3];
          v14 = v8[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v50 = result;
      v38 = v6;
      v42 = a3;
      v46 = v4;
      v34 = v10;
      v26 = v9;
      v30 = v12;
      v22 = v11;
      sub_1003C83FC();
      v11 = v22;
      v9 = v26;
      v12 = v30;
      v10 = v34;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v38;
      a3 = v42;
      v4 = v46;
      result = v50;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v51 = result;
      v39 = v6;
      v43 = a3;
      v47 = v4;
      v35 = v10;
      v27 = v9;
      v31 = v12;
      v19 = v13;
      v23 = v11;
      v17 = v14;
      sub_1003C83B4();
      v14 = v17;
      v13 = v19;
      v11 = v23;
      v9 = v27;
      v12 = v31;
      v10 = v35;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v39;
      a3 = v43;
      v4 = v47;
      result = v51;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v52 = result;
        v40 = v6;
        v44 = a3;
        v48 = v4;
        v36 = v10;
        v28 = v9;
        v32 = v12;
        v20 = v13;
        v24 = v11;
        v18 = v14;
        sub_1003C83FC();
        v14 = v18;
        v13 = v20;
        v11 = v24;
        v9 = v28;
        v12 = v32;
        v10 = v36;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v40;
        a3 = v44;
        v4 = v48;
        result = v52;
      }

LABEL_8:
      v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      *(a3 + result) = vqmovn_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v14, v15), v13)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v8[1], v16), v7[3])))));
      result += 8;
      v6 += 4;
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100210C04(uint64_t a1, float32x4_t *a2, int16x8_t *a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    LODWORD(result) = 0;
    v6 = a2 + 1;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v35 = a3;
        v27 = result;
        v31 = v4;
        v23 = v6;
        v19 = v9;
        sub_1003C83B4();
        v9 = v19;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v23;
        LODWORD(result) = v27;
        v4 = v31;
        a3 = v35;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v10 = v7[3];
          v11 = v8[1];
          v12 = *v6;
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v36 = a3;
      v28 = result;
      v32 = v4;
      v24 = v6;
      v20 = v9;
      sub_1003C83FC();
      v9 = v20;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v24;
      LODWORD(result) = v28;
      v4 = v32;
      a3 = v36;
      v10 = xmmword_1004B0030;
      v11 = xmmword_1004B0010;
      v12 = *v24;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v37 = a3;
      v29 = result;
      v33 = v4;
      v25 = v6;
      v17 = v12;
      v21 = v9;
      v13 = v11;
      v15 = v10;
      sub_1003C83B4();
      v11 = v13;
      v10 = v15;
      v12 = v17;
      v9 = v21;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v25;
      LODWORD(result) = v29;
      v4 = v33;
      a3 = v37;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v38 = a3;
        v30 = result;
        v34 = v4;
        v26 = v6;
        v18 = v12;
        v22 = v9;
        v14 = v11;
        v16 = v10;
        sub_1003C83FC();
        v11 = v14;
        v10 = v16;
        v12 = v18;
        v9 = v22;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v26;
        LODWORD(result) = v30;
        v4 = v34;
        a3 = v38;
      }

LABEL_8:
      *a3++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v9, vorrq_s8(vandq_s8(v11, v9), v10)))), vcvtq_s32_f32(vaddq_f32(v12, vorrq_s8(vandq_s8(v8[1], v12), v7[3]))));
      v6 += 2;
      result = (result + 8);
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100210DF4(uint64_t a1, float64x2_t *a2, int16x8_t *a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    LODWORD(result) = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      v10 = v6[-1];
      v11 = *v6;
      v12 = v6[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v49 = a3;
        v41 = result;
        v45 = v4;
        v37 = v6;
        v33 = v10;
        v25 = v9;
        v29 = v12;
        v21 = v11;
        sub_1003C83B4();
        v11 = v21;
        v9 = v25;
        v12 = v29;
        v10 = v33;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v37;
        LODWORD(result) = v41;
        v4 = v45;
        a3 = v49;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v13 = v7[3];
          v14 = v8[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v50 = a3;
      v42 = result;
      v46 = v4;
      v38 = v6;
      v34 = v10;
      v26 = v9;
      v30 = v12;
      v22 = v11;
      sub_1003C83FC();
      v11 = v22;
      v9 = v26;
      v12 = v30;
      v10 = v34;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v38;
      LODWORD(result) = v42;
      v4 = v46;
      a3 = v50;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v51 = a3;
      v43 = result;
      v47 = v4;
      v39 = v6;
      v35 = v10;
      v27 = v9;
      v31 = v12;
      v19 = v13;
      v23 = v11;
      v17 = v14;
      sub_1003C83B4();
      v14 = v17;
      v13 = v19;
      v11 = v23;
      v9 = v27;
      v12 = v31;
      v10 = v35;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v39;
      LODWORD(result) = v43;
      v4 = v47;
      a3 = v51;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v52 = a3;
        v44 = result;
        v48 = v4;
        v40 = v6;
        v36 = v10;
        v28 = v9;
        v32 = v12;
        v20 = v13;
        v24 = v11;
        v18 = v14;
        sub_1003C83FC();
        v14 = v18;
        v13 = v20;
        v11 = v24;
        v9 = v28;
        v12 = v32;
        v10 = v36;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v40;
        LODWORD(result) = v44;
        v4 = v48;
        a3 = v52;
      }

LABEL_8:
      v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      *a3++ = vqmovun_high_s32(vqmovun_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v14, v15), v13)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v8[1], v16), v7[3]))));
      v6 += 4;
      result = (result + 8);
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100211030(uint64_t a1, float32x4_t *a2, int16x8_t *a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    LODWORD(result) = 0;
    v6 = a2 + 1;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v35 = a3;
        v27 = result;
        v31 = v4;
        v23 = v6;
        v19 = v9;
        sub_1003C83B4();
        v9 = v19;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v23;
        LODWORD(result) = v27;
        v4 = v31;
        a3 = v35;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v10 = v7[3];
          v11 = v8[1];
          v12 = *v6;
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v36 = a3;
      v28 = result;
      v32 = v4;
      v24 = v6;
      v20 = v9;
      sub_1003C83FC();
      v9 = v20;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v24;
      LODWORD(result) = v28;
      v4 = v32;
      a3 = v36;
      v10 = xmmword_1004B0030;
      v11 = xmmword_1004B0010;
      v12 = *v24;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v37 = a3;
      v29 = result;
      v33 = v4;
      v25 = v6;
      v17 = v12;
      v21 = v9;
      v13 = v11;
      v15 = v10;
      sub_1003C83B4();
      v11 = v13;
      v10 = v15;
      v12 = v17;
      v9 = v21;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v25;
      LODWORD(result) = v29;
      v4 = v33;
      a3 = v37;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v38 = a3;
        v30 = result;
        v34 = v4;
        v26 = v6;
        v18 = v12;
        v22 = v9;
        v14 = v11;
        v16 = v10;
        sub_1003C83FC();
        v11 = v14;
        v10 = v16;
        v12 = v18;
        v9 = v22;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v26;
        LODWORD(result) = v30;
        v4 = v34;
        a3 = v38;
      }

LABEL_8:
      *a3++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v9, vorrq_s8(vandq_s8(v11, v9), v10)))), vcvtq_s32_f32(vaddq_f32(v12, vorrq_s8(vandq_s8(v8[1], v12), v7[3]))));
      v6 += 2;
      result = (result + 8);
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100211220(uint64_t a1, float64x2_t *a2, int16x8_t *a3, int a4)
{
  v4 = a4 - 8;
  if (a4 >= 8)
  {
    LODWORD(result) = 0;
    v6 = a2 + 2;
    v7 = &off_1004B0000;
    v8 = &off_1004B0000;
    while (1)
    {
      v9 = v6[-2];
      v10 = v6[-1];
      v11 = *v6;
      v12 = v6[1];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v49 = a3;
        v41 = result;
        v45 = v4;
        v37 = v6;
        v33 = v10;
        v25 = v9;
        v29 = v12;
        v21 = v11;
        sub_1003C83B4();
        v11 = v21;
        v9 = v25;
        v12 = v29;
        v10 = v33;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v37;
        LODWORD(result) = v41;
        v4 = v45;
        a3 = v49;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v13 = v7[3];
          v14 = v8[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v50 = a3;
      v42 = result;
      v46 = v4;
      v38 = v6;
      v34 = v10;
      v26 = v9;
      v30 = v12;
      v22 = v11;
      sub_1003C83FC();
      v11 = v22;
      v9 = v26;
      v12 = v30;
      v10 = v34;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v38;
      LODWORD(result) = v42;
      v4 = v46;
      a3 = v50;
      v13 = xmmword_1004B0030;
      v14 = xmmword_1004B0010;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
LABEL_7:
        if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_8;
      }

LABEL_12:
      v51 = a3;
      v43 = result;
      v47 = v4;
      v39 = v6;
      v35 = v10;
      v27 = v9;
      v31 = v12;
      v19 = v13;
      v23 = v11;
      v17 = v14;
      sub_1003C83B4();
      v14 = v17;
      v13 = v19;
      v11 = v23;
      v9 = v27;
      v12 = v31;
      v10 = v35;
      v8 = &off_1004B0000;
      v7 = &off_1004B0000;
      v6 = v39;
      LODWORD(result) = v43;
      v4 = v47;
      a3 = v51;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v52 = a3;
        v44 = result;
        v48 = v4;
        v40 = v6;
        v36 = v10;
        v28 = v9;
        v32 = v12;
        v20 = v13;
        v24 = v11;
        v18 = v14;
        sub_1003C83FC();
        v14 = v18;
        v13 = v20;
        v11 = v24;
        v9 = v28;
        v12 = v32;
        v10 = v36;
        v8 = &off_1004B0000;
        v7 = &off_1004B0000;
        v6 = v40;
        LODWORD(result) = v44;
        v4 = v48;
        a3 = v52;
      }

LABEL_8:
      v15 = vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10);
      v16 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      *a3++ = vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v14, v15), v13)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v8[1], v16), v7[3]))));
      v6 += 4;
      result = (result + 8);
      if (v4 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_10021145C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v83 = a5 - result;
    v82 = a6 - a2;
    v80 = result + 4;
    v81 = a5 + 4;
    v86 = *v10.i32;
    v87 = *v9.i32;
    v84 = vdupq_lane_s32(v10, 0);
    v85 = vdupq_lane_s32(v9, 0);
    do
    {
      v90 = v11;
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100225DAC(a9, *v16.i8, v91, v13, v12, v15);
      v18.i64[0] = 0xFF000000FFLL;
      v18.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v86;
      *v9.i32 = v87;
      if (result > v17)
      {
        goto LABEL_25;
      }

      v19 = result;
      v20 = v17 - result;
      if (v20 > 0x3B && ((v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + result, v12 + result < v80 + v14 * a2 + v21) ? (v22 = v13 + result >= v81 + v14 * a6 + v21) : (v22 = 1), v22))
      {
        v23 = (v20 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = (v13 + v19);
          v93 = vld4q_s8(v25);
          v26 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[0], xmmword_1003E3700));
          v27 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[0], xmmword_1003E3710));
          v28 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[0], xmmword_1003E3720));
          v29 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[0], xmmword_1003E3730));
          v30 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[1], xmmword_1003E3720));
          v31 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[1], xmmword_1003E3730));
          v32 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[1], xmmword_1003E3710));
          v33 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[1], xmmword_1003E3700));
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[2], xmmword_1003E3700));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[2], xmmword_1003E3710));
          v36 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[2], xmmword_1003E3720));
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v93.val[2], xmmword_1003E3730));
          v93.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v93.val[3], xmmword_1003E3720));
          v93.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v93.val[3], xmmword_1003E3730));
          v38 = (v12 + v19);
          v39 = vmlaq_f32(v84, v85, v33);
          v40 = vmlaq_f32(v84, v85, v32);
          v41 = vmlaq_f32(v84, v85, v31);
          v42 = vmlaq_f32(v84, v85, v30);
          v43 = vmlaq_f32(v84, v85, v29);
          v44 = vmlaq_f32(v84, v85, v28);
          v45 = vmlaq_f32(v84, v85, v27);
          v46 = vmlaq_f32(v84, v85, v26);
          v47 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL)))));
          v48 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))));
          v49 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0);
          v50 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0);
          v51 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v93.val[3], xmmword_1003E3700)));
          v93.val[3] = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v93.val[3], xmmword_1003E3710)));
          v93.val[2] = vmlaq_f32(v84, v85, v93.val[1]);
          v52 = vmlaq_f32(v84, v85, v93.val[0]);
          v53 = vmlaq_f32(v84, v85, v37);
          v93.val[1] = vmlaq_f32(v84, v85, v36);
          v54 = vmlaq_f32(v84, v85, v35);
          v55 = vmlaq_f32(v84, v85, v34);
          v94.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(v50, v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v18), vminq_s32(v49, v18)));
          v56 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v18);
          v94.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(v47, 0), v18), vminq_s32(vmaxq_s32(v48, 0), v18)));
          v94.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[1], v93.val[1], 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), 0), v18)));
          a9 = vuzp1q_s16(v56, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[2], v93.val[2], 8uLL))))), 0), v18));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[3], v93.val[3], 8uLL))))), 0), v18));
          v94.val[3] = vuzp1q_s8(a9, v16);
          vst4q_s8(v38, v94);
          v19 += 64;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_25;
        }
      }

      else
      {
        result = result;
      }

      do
      {
        v57 = v13 + result;
        a9.n128_u8[0] = *(v13 + result);
        *&v58 = rintf(v86 + (a9.n128_u32[0] * v87));
        v59 = *&v58 & ~(*&v58 >> 31);
        LOBYTE(v58) = *(v13 + result + 1);
        a9.n128_f32[0] = rintf(v86 + (v58 * v87));
        if (v59 >= 255)
        {
          LOBYTE(v59) = -1;
        }

        v60 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        v61 = (v12 + result);
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        *v61 = v59;
        v61[1] = v60;
        a9.n128_u8[0] = *(v57 + 2);
        *&v62 = rintf(v86 + (a9.n128_u32[0] * v87));
        v63 = *&v62 & ~(*&v62 >> 31);
        LOBYTE(v62) = *(v57 + 3);
        a9.n128_f32[0] = rintf(v86 + (v62 * v87));
        v64 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        if (v63 >= 255)
        {
          LOBYTE(v63) = -1;
        }

        if (v64 >= 255)
        {
          LOBYTE(v64) = -1;
        }

        v61[2] = v63;
        v61[3] = v64;
        result += 4;
      }

      while (result <= v17);
LABEL_25:
      if (result < v15)
      {
        v65 = v15 - result;
        if (v65 < 4)
        {
          v67 = result;
          goto LABEL_41;
        }

        if ((v83 + v82 * v14) < 0x10)
        {
          v67 = result;
          goto LABEL_41;
        }

        if (v65 >= 0x10)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFF0;
          v68 = result;
          v69 = v65 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v70 = *(v13 + v68);
            v71 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3710)));
            v72 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3700)));
            v73 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3730)));
            v74 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3720)));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))), 0);
            v92.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))))), 0), v18);
            v92.val[2] = vminq_s32(v16, v18);
            v92.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), 0), v18);
            v92.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), 0), v18);
            a9 = vqtbl4q_s8(v92, xmmword_1003E36F0);
            *(v12 + v68) = a9;
            v68 += 16;
            v69 -= 16;
          }

          while (v69);
          if (v65 == v66)
          {
            goto LABEL_3;
          }

          if ((v65 & 0xC) == 0)
          {
            v67 = v66 + result;
            do
            {
LABEL_41:
              a9.n128_u8[0] = *(v13 + v67);
              a9.n128_f32[0] = rintf(v86 + (a9.n128_u32[0] * v87));
              v79 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
              if (v79 >= 255)
              {
                LOBYTE(v79) = -1;
              }

              *(v12 + v67++) = v79;
            }

            while (v15 != v67);
            goto LABEL_3;
          }
        }

        else
        {
          v66 = 0;
        }

        v67 = (v65 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v75 = v66 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        v76 = v66 + result;
        do
        {
          a9.n128_u32[0] = *(v13 + v76);
          v77 = vmlaq_f32(v84, v85, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a9.n128_u64[0]))));
          v78 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v77.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v77, v77, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(v78, v16), 0), v18);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v12 + v76) = a9.n128_u32[0];
          v76 += 4;
          v75 += 4;
        }

        while (v75);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }
      }

LABEL_3:
      v13 += a2;
      v12 += a6;
      ++v14;
      v11 = v90 - 1;
    }

    while (v90 != 1);
  }

  return result;
}

uint64_t sub_100211C90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v83 = a5 - result;
    v82 = a6 - a2;
    v80 = result + 4;
    v81 = a5 + 4;
    v86 = *v10.i32;
    v87 = *v9.i32;
    v84 = vdupq_lane_s32(v10, 0);
    v85 = vdupq_lane_s32(v9, 0);
    do
    {
      v90 = v11;
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100225FD8(a9, *v16.i8, v91, v13, v12, v15);
      v18.i64[0] = 0xFF000000FFLL;
      v18.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v86;
      *v9.i32 = v87;
      if (result > v17)
      {
        goto LABEL_25;
      }

      v19 = result;
      v20 = v17 - result;
      if (v20 > 0x3B && ((v21 = (v20 & 0xFFFFFFFFFFFFFFFCLL) + result, v12 + result < v80 + v14 * a2 + v21) ? (v22 = v13 + result >= v81 + v14 * a6 + v21) : (v22 = 1), v22))
      {
        v23 = (v20 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = (v13 + v19);
          v93 = vld4q_s8(v25);
          v26 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[0], xmmword_1003E3740), 0x18uLL);
          v27 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[0], xmmword_1003E3750), 0x18uLL);
          v28 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[0], xmmword_1003E3760), 0x18uLL);
          v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[0], xmmword_1003E3770), 0x18uLL);
          v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[1], xmmword_1003E3760), 0x18uLL);
          v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[1], xmmword_1003E3770), 0x18uLL);
          v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[1], xmmword_1003E3750), 0x18uLL);
          v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[1], xmmword_1003E3740), 0x18uLL);
          v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[2], xmmword_1003E3740), 0x18uLL);
          v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[2], xmmword_1003E3750), 0x18uLL);
          v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[2], xmmword_1003E3760), 0x18uLL);
          v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[2], xmmword_1003E3770), 0x18uLL);
          v93.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[3], xmmword_1003E3760), 0x18uLL);
          v93.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[3], xmmword_1003E3770), 0x18uLL);
          v38 = (v12 + v19);
          v39 = vmlaq_f32(v84, v85, v33);
          v40 = vmlaq_f32(v84, v85, v32);
          v41 = vmlaq_f32(v84, v85, v31);
          v42 = vmlaq_f32(v84, v85, v30);
          v43 = vmlaq_f32(v84, v85, v29);
          v44 = vmlaq_f32(v84, v85, v28);
          v45 = vmlaq_f32(v84, v85, v27);
          v46 = vmlaq_f32(v84, v85, v26);
          v47 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL)))));
          v48 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))));
          v49 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0);
          v50 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0);
          v51 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[3], xmmword_1003E3740), 0x18uLL));
          v93.val[3] = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v93.val[3], xmmword_1003E3750), 0x18uLL));
          v93.val[2] = vmlaq_f32(v84, v85, v93.val[1]);
          v52 = vmlaq_f32(v84, v85, v93.val[0]);
          v53 = vmlaq_f32(v84, v85, v37);
          v93.val[1] = vmlaq_f32(v84, v85, v36);
          v54 = vmlaq_f32(v84, v85, v35);
          v55 = vmlaq_f32(v84, v85, v34);
          v94.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(v50, v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v18), vminq_s32(v49, v18)));
          v56 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v18);
          v94.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(v47, 0), v18), vminq_s32(vmaxq_s32(v48, 0), v18)));
          v94.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[1], v93.val[1], 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), 0), v18)));
          a9 = vuzp1q_s16(v56, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[2], v93.val[2], 8uLL))))), 0), v18));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v93.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v93.val[3], v93.val[3], 8uLL))))), 0), v18));
          v94.val[3] = vuzp1q_s8(a9, v16);
          vst4q_s8(v38, v94);
          v19 += 64;
          v24 -= 16;
        }

        while (v24);
        if (v23 == (v23 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_25;
        }
      }

      else
      {
        result = result;
      }

      do
      {
        v57 = v13 + result;
        a9.n128_u8[0] = *(v13 + result);
        v58 = vmovl_s16(*&vmovl_s8(a9.n128_u64[0])).u64[0];
        *v58.i32 = rintf(v86 + (v58.i32[0] * v87));
        v59 = *v58.i32 & ~(*v58.i32 >> 31);
        v58.i8[0] = *(v13 + result + 1);
        a9.n128_u64[0] = vmovl_s16(*&vmovl_s8(v58)).u64[0];
        a9.n128_f32[0] = a9.n128_i32[0];
        if (v59 >= 255)
        {
          LOBYTE(v59) = -1;
        }

        a9.n128_f32[0] = rintf(v86 + (a9.n128_f32[0] * v87));
        v60 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        v61 = (v12 + result);
        *v61 = v59;
        v61[1] = v60;
        a9.n128_u8[0] = *(v57 + 2);
        v62 = vmovl_s16(*&vmovl_s8(a9.n128_u64[0])).u64[0];
        *v62.i32 = rintf(v86 + (v62.i32[0] * v87));
        v63 = *v62.i32 & ~(*v62.i32 >> 31);
        v62.i8[0] = *(v57 + 3);
        a9 = vmovl_s16(*&vmovl_s8(v62));
        a9.n128_f32[0] = rintf(v86 + (a9.n128_i32[0] * v87));
        v64 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        if (v63 >= 255)
        {
          LOBYTE(v63) = -1;
        }

        if (v64 >= 255)
        {
          LOBYTE(v64) = -1;
        }

        v61[2] = v63;
        v61[3] = v64;
        result += 4;
      }

      while (result <= v17);
LABEL_25:
      if (result < v15)
      {
        v65 = v15 - result;
        if (v65 < 4)
        {
          v67 = result;
          goto LABEL_41;
        }

        if ((v83 + v82 * v14) < 0x10)
        {
          v67 = result;
          goto LABEL_41;
        }

        if (v65 >= 0x10)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFF0;
          v68 = result;
          v69 = v65 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v70 = *(v13 + v68);
            v71 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v70, xmmword_1003E3750), 0x18uLL));
            v72 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v70, xmmword_1003E3740), 0x18uLL));
            v73 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v70, xmmword_1003E3770), 0x18uLL));
            v74 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(v70, xmmword_1003E3760), 0x18uLL));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))), 0);
            v92.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))))), 0), v18);
            v92.val[2] = vminq_s32(v16, v18);
            v92.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), 0), v18);
            v92.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), 0), v18);
            a9 = vqtbl4q_s8(v92, xmmword_1003E36F0);
            *(v12 + v68) = a9;
            v68 += 16;
            v69 -= 16;
          }

          while (v69);
          if (v65 == v66)
          {
            goto LABEL_3;
          }

          if ((v65 & 0xC) == 0)
          {
            v67 = v66 + result;
            do
            {
LABEL_41:
              a9.n128_u8[0] = *(v13 + v67);
              a9 = vmovl_s16(*&vmovl_s8(a9.n128_u64[0]));
              a9.n128_f32[0] = rintf(v86 + (a9.n128_i32[0] * v87));
              v79 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
              if (v79 >= 255)
              {
                LOBYTE(v79) = -1;
              }

              *(v12 + v67++) = v79;
            }

            while (v15 != v67);
            goto LABEL_3;
          }
        }

        else
        {
          v66 = 0;
        }

        v67 = (v65 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v75 = v66 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        v76 = v66 + result;
        do
        {
          a9.n128_u32[0] = *(v13 + v76);
          v77 = vmlaq_f32(v84, v85, vcvtq_n_f32_s32(vqtbl1q_s8(a9, xmmword_1003E3760), 0x18uLL));
          v78 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v77.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v77, v77, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(v78, v16), 0), v18);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v12 + v76) = a9.n128_u32[0];
          v76 += 4;
          v75 += 4;
        }

        while (v75);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_41;
        }
      }

LABEL_3:
      v13 += a2;
      v12 += a6;
      ++v14;
      v11 = v90 - 1;
    }

    while (v90 != 1);
  }

  return result;
}

uint64_t sub_1002124EC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v94 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v89 = result + 2 * v15;
    v90 = result + 8;
    v91 = 2 * (a2 >> 1);
    v18 = a5;
    v95 = *v10.i32;
    v96 = *v9.i32;
    v92 = vdupq_lane_s32(v10, 0);
    v93 = vdupq_lane_s32(v9, 0);
    do
    {
      v19 = a5 + v14 * a6;
      v20 = v94 * v14;
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100226204(a9, *v16.i8, v98, v13, v18, v15);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v95;
      *v9.i32 = v96;
      if (result > v17)
      {
        goto LABEL_27;
      }

      v22 = result;
      v23 = v17 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v19 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v18 + result < v90 + v20 + 8 * v24 + v26 * 2) ? (v27 = v13 + 2 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = &v13->i16[v26];
          v100 = vld4q_s16(v30);
          v30 += 32;
          v101 = vld4q_s16(v30);
          v31 = vcvtq_f32_u32(vmovl_u16(*v101.val[1].i8));
          v32 = vcvtq_f32_u32(vmovl_u16(*v100.val[2].i8));
          v33 = vcvtq_f32_u32(vmovl_high_u16(v100.val[2]));
          v34 = vcvtq_f32_u32(vmovl_high_u16(v101.val[1]));
          v35 = vcvtq_f32_u32(vmovl_u16(*v101.val[2].i8));
          v36 = vcvtq_f32_u32(vmovl_u16(*v100.val[3].i8));
          v37 = vcvtq_f32_u32(vmovl_high_u16(v101.val[2]));
          v38 = vcvtq_f32_u32(vmovl_high_u16(v100.val[3]));
          v39 = (v18 + v22);
          v40 = vcvtq_f32_u32(vmovl_u16(*v101.val[3].i8));
          v101.val[1] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v100.val[0])));
          v100.val[3] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_u16(*v100.val[0].i8)));
          v41 = vcvtq_f32_u32(vmovl_high_u16(v101.val[3]));
          v42 = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v100.val[1])));
          v100.val[0] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v101.val[0])));
          v101.val[2] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_u16(*v100.val[1].i8)));
          v101.val[0] = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_u16(*v101.val[0].i8)));
          v43 = vmlaq_f32(v92, v93, v34);
          v101.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
          v44 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
          v100.val[2] = vmlaq_f32(v92, v93, v31);
          v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[1].i8)));
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[1], v101.val[1], 8uLL))));
          v101.val[1] = vcvtq_f64_f32(vrndx_f32(*v101.val[0].i8));
          v47 = vcvtq_f64_f32(vrndx_f32(*v100.val[0].i8));
          v48 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[0], v101.val[0], 8uLL)));
          v101.val[3] = vmaxq_s32(vuzp1q_s32(v101.val[3], v44), 0);
          v101.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(v45, v46), 0), v21);
          v49 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[0], v100.val[0], 8uLL)));
          v100.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[3], v100.val[3], 8uLL))))), 0), v21), v101.val[0]);
          v101.val[0] = vmlaq_f32(v92, v93, v37);
          v50 = vmlaq_f32(v92, v93, v35);
          v51 = vmlaq_f32(v92, v93, v33);
          v52 = vmlaq_f32(v92, v93, v32);
          v53 = vmlaq_f32(v92, v93, v41);
          v54 = vmlaq_f32(v92, v93, v40);
          v55 = vmlaq_f32(v92, v93, v38);
          v56 = vmlaq_f32(v92, v93, v36);
          v57 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[2], v100.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v21));
          v100.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v101.val[1]), vcvtq_s64_f64(v48)), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v47), vcvtq_s64_f64(v49)), 0), v21));
          v100.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[0], v101.val[0], 8uLL))))), 0), v21);
          v101.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[2], v101.val[2], 8uLL))))), 0), v21), vminq_s32(v101.val[3], v21)), v57);
          v101.val[0] = vuzp1q_s8(v100.val[0], v100.val[2]);
          v101.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v21)));
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v21));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), 0), v21), v100.val[3]);
          v101.val[2] = vuzp1q_s8(a9, v16);
          vst4q_s8(v39, v101);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v58 = 2 * result + 6;
      do
      {
        a9.n128_u16[0] = *(&v13->u16[-3] + v58);
        *&v59 = rintf(v95 + (a9.n128_u32[0] * v96));
        v60 = *&v59 & ~(*&v59 >> 31);
        v61 = &v13->i8[2 * result];
        LOWORD(v59) = *(v61 + 1);
        a9.n128_f32[0] = rintf(v95 + (v59 * v96));
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        v62 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        if (v62 >= 255)
        {
          LOBYTE(v62) = -1;
        }

        v63 = (v18 + result);
        *v63 = v60;
        v63[1] = v62;
        a9.n128_u16[0] = *(v61 + 2);
        *&v64 = rintf(v95 + (a9.n128_u32[0] * v96));
        v65 = *&v64 & ~(*&v64 >> 31);
        LOWORD(v64) = *(v13->i16 + v58);
        a9.n128_f32[0] = v64;
        if (v65 >= 255)
        {
          v66 = -1;
        }

        else
        {
          v66 = v65;
        }

        a9.n128_f32[0] = rintf(v95 + (a9.n128_f32[0] * v96));
        v67 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        if (v67 >= 255)
        {
          LOBYTE(v67) = -1;
        }

        v63[2] = v66;
        v63[3] = v67;
        result += 4;
        v58 += 8;
      }

      while (result <= v17);
LABEL_27:
      if (result < v15)
      {
        v68 = v15 - result;
        if (v68 < 4)
        {
          v69 = result;
          goto LABEL_44;
        }

        if (v18 + result < v89 + v20 && v13 + 2 * result < v19 + v15)
        {
          v69 = result;
          goto LABEL_44;
        }

        if (v68 >= 0x10)
        {
          v70 = v68 & 0xFFFFFFFFFFFFFFF0;
          v71 = 2 * result;
          v72 = result;
          v73 = v68 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v75 = *(v13 + v71);
            v74 = *(&v13[1] + v71);
            v76 = vcvtq_f32_u32(vmovl_u16(*v75.i8));
            v77 = vcvtq_f32_u32(vmovl_u16(*v74.i8));
            v78 = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v74)));
            v79 = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_high_u16(v75)));
            v80 = vmlaq_f32(v92, v93, v77);
            v81 = vmlaq_f32(v92, v93, v76);
            v82 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), 0);
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))))), 0);
            v99.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))))), 0), v21);
            v99.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), 0), v21);
            v99.val[2] = vminq_s32(v16, v21);
            v99.val[0] = vminq_s32(v82, v21);
            a9 = vqtbl4q_s8(v99, xmmword_1003E36F0);
            *(v18 + v72) = a9;
            v71 += 32;
            v72 += 16;
            v73 -= 16;
          }

          while (v73);
          if (v68 == v70)
          {
            goto LABEL_3;
          }

          if ((v68 & 0xC) == 0)
          {
            v69 = v70 + result;
            do
            {
LABEL_44:
              a9.n128_u16[0] = v13->u16[v69];
              a9.n128_f32[0] = rintf(v95 + (a9.n128_u32[0] * v96));
              v88 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
              if (v88 >= 255)
              {
                LOBYTE(v88) = -1;
              }

              *(v18 + v69++) = v88;
            }

            while (v15 != v69);
            goto LABEL_3;
          }
        }

        else
        {
          v70 = 0;
        }

        v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v83 = v70 - (v68 & 0xFFFFFFFFFFFFFFFCLL);
        v84 = v70 + result;
        v85 = 2 * v84;
        do
        {
          v86 = vmlaq_f32(v92, v93, vcvtq_f32_u32(vmovl_u16(*&v13->i8[v85])));
          v87 = vcvtq_f64_f32(vrndx_f32(*v86.i8));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v86, v86, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v87), v16), 0), v21);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v18 + v84) = a9.n128_u32[0];
          v85 += 8;
          v84 += 4;
          v83 += 4;
        }

        while (v83);
        if (v68 != (v68 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v13 = (v13 + v91);
      v18 += a6;
      ++v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100212D40(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v94 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v89 = result + 2 * v15;
    v90 = result + 8;
    v91 = 2 * (a2 >> 1);
    v18 = a5;
    v95 = *v10.i32;
    v96 = *v9.i32;
    v92 = vdupq_lane_s32(v10, 0);
    v93 = vdupq_lane_s32(v9, 0);
    do
    {
      v19 = a5 + v14 * a6;
      v20 = v94 * v14;
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100226430(a9, *v16.i8, v98, v13, v18, v15);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v95;
      *v9.i32 = v96;
      if (result > v17)
      {
        goto LABEL_27;
      }

      v22 = result;
      v23 = v17 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v19 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v18 + result < v90 + v20 + 8 * v24 + v26 * 2) ? (v27 = v13 + 2 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = &v13->i16[v26];
          v100 = vld4q_s16(v30);
          v30 += 32;
          v101 = vld4q_s16(v30);
          v31 = vcvtq_f32_s32(vmovl_s16(*v101.val[1].i8));
          v32 = vcvtq_f32_s32(vmovl_s16(*v100.val[2].i8));
          v33 = vcvtq_f32_s32(vmovl_high_s16(v100.val[2]));
          v34 = vcvtq_f32_s32(vmovl_high_s16(v101.val[1]));
          v35 = vcvtq_f32_s32(vmovl_s16(*v101.val[2].i8));
          v36 = vcvtq_f32_s32(vmovl_s16(*v100.val[3].i8));
          v37 = vcvtq_f32_s32(vmovl_high_s16(v101.val[2]));
          v38 = vcvtq_f32_s32(vmovl_high_s16(v100.val[3]));
          v39 = (v18 + v22);
          v40 = vcvtq_f32_s32(vmovl_s16(*v101.val[3].i8));
          v101.val[1] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v100.val[0])));
          v100.val[3] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_s16(*v100.val[0].i8)));
          v41 = vcvtq_f32_s32(vmovl_high_s16(v101.val[3]));
          v42 = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v100.val[1])));
          v100.val[0] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v101.val[0])));
          v101.val[2] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_s16(*v100.val[1].i8)));
          v101.val[0] = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_s16(*v101.val[0].i8)));
          v43 = vmlaq_f32(v92, v93, v34);
          v101.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
          v44 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
          v100.val[2] = vmlaq_f32(v92, v93, v31);
          v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[1].i8)));
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[1], v101.val[1], 8uLL))));
          v101.val[1] = vcvtq_f64_f32(vrndx_f32(*v101.val[0].i8));
          v47 = vcvtq_f64_f32(vrndx_f32(*v100.val[0].i8));
          v48 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[0], v101.val[0], 8uLL)));
          v101.val[3] = vmaxq_s32(vuzp1q_s32(v101.val[3], v44), 0);
          v101.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(v45, v46), 0), v21);
          v49 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[0], v100.val[0], 8uLL)));
          v100.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[3], v100.val[3], 8uLL))))), 0), v21), v101.val[0]);
          v101.val[0] = vmlaq_f32(v92, v93, v37);
          v50 = vmlaq_f32(v92, v93, v35);
          v51 = vmlaq_f32(v92, v93, v33);
          v52 = vmlaq_f32(v92, v93, v32);
          v53 = vmlaq_f32(v92, v93, v41);
          v54 = vmlaq_f32(v92, v93, v40);
          v55 = vmlaq_f32(v92, v93, v38);
          v56 = vmlaq_f32(v92, v93, v36);
          v57 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[2], v100.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v21));
          v100.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v101.val[1]), vcvtq_s64_f64(v48)), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v47), vcvtq_s64_f64(v49)), 0), v21));
          v100.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[0], v101.val[0], 8uLL))))), 0), v21);
          v101.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v101.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v101.val[2], v101.val[2], 8uLL))))), 0), v21), vminq_s32(v101.val[3], v21)), v57);
          v101.val[0] = vuzp1q_s8(v100.val[0], v100.val[2]);
          v101.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), 0), v21)));
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), 0), v21));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), 0), v21), v100.val[3]);
          v101.val[2] = vuzp1q_s8(a9, v16);
          vst4q_s8(v39, v101);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v58 = 2 * result + 6;
      do
      {
        a9.n128_u16[0] = *(&v13->u16[-3] + v58);
        v59 = vmovl_s16(a9.n128_u64[0]).u64[0];
        *v59.i32 = rintf(v95 + (v59.i32[0] * v96));
        v60 = *v59.i32 & ~(*v59.i32 >> 31);
        v61 = &v13->i8[2 * result];
        v59.i16[0] = *(v61 + 1);
        a9.n128_u64[0] = vmovl_s16(v59).u64[0];
        a9.n128_f32[0] = rintf(v95 + (a9.n128_i32[0] * v96));
        v62 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        if (v60 >= 255)
        {
          LOBYTE(v60) = -1;
        }

        if (v62 >= 255)
        {
          LOBYTE(v62) = -1;
        }

        v63 = (v18 + result);
        *v63 = v60;
        v63[1] = v62;
        a9.n128_u16[0] = *(v61 + 2);
        v64 = vmovl_s16(a9.n128_u64[0]).u64[0];
        *v64.i32 = rintf(v95 + (v64.i32[0] * v96));
        v65 = *v64.i32 & ~(*v64.i32 >> 31);
        v64.i16[0] = *(v13->i16 + v58);
        a9 = vmovl_s16(v64);
        a9.n128_f32[0] = a9.n128_i32[0];
        if (v65 >= 255)
        {
          v66 = -1;
        }

        else
        {
          v66 = v65;
        }

        a9.n128_f32[0] = rintf(v95 + (a9.n128_f32[0] * v96));
        v67 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
        if (v67 >= 255)
        {
          LOBYTE(v67) = -1;
        }

        v63[2] = v66;
        v63[3] = v67;
        result += 4;
        v58 += 8;
      }

      while (result <= v17);
LABEL_27:
      if (result < v15)
      {
        v68 = v15 - result;
        if (v68 < 4)
        {
          v69 = result;
          goto LABEL_44;
        }

        if (v18 + result < v89 + v20 && v13 + 2 * result < v19 + v15)
        {
          v69 = result;
          goto LABEL_44;
        }

        if (v68 >= 0x10)
        {
          v70 = v68 & 0xFFFFFFFFFFFFFFF0;
          v71 = 2 * result;
          v72 = result;
          v73 = v68 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v75 = *(v13 + v71);
            v74 = *(&v13[1] + v71);
            v76 = vcvtq_f32_s32(vmovl_s16(*v75.i8));
            v77 = vcvtq_f32_s32(vmovl_s16(*v74.i8));
            v78 = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v74)));
            v79 = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_high_s16(v75)));
            v80 = vmlaq_f32(v92, v93, v77);
            v81 = vmlaq_f32(v92, v93, v76);
            v82 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), 0);
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))))), 0);
            v99.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))))), 0), v21);
            v99.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), 0), v21);
            v99.val[2] = vminq_s32(v16, v21);
            v99.val[0] = vminq_s32(v82, v21);
            a9 = vqtbl4q_s8(v99, xmmword_1003E36F0);
            *(v18 + v72) = a9;
            v71 += 32;
            v72 += 16;
            v73 -= 16;
          }

          while (v73);
          if (v68 == v70)
          {
            goto LABEL_3;
          }

          if ((v68 & 0xC) == 0)
          {
            v69 = v70 + result;
            do
            {
LABEL_44:
              a9.n128_u16[0] = v13->u16[v69];
              a9 = vmovl_s16(a9.n128_u64[0]);
              a9.n128_f32[0] = rintf(v95 + (a9.n128_i32[0] * v96));
              v88 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
              if (v88 >= 255)
              {
                LOBYTE(v88) = -1;
              }

              *(v18 + v69++) = v88;
            }

            while (v15 != v69);
            goto LABEL_3;
          }
        }

        else
        {
          v70 = 0;
        }

        v69 = (v68 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v83 = v70 - (v68 & 0xFFFFFFFFFFFFFFFCLL);
        v84 = v70 + result;
        v85 = 2 * v84;
        do
        {
          v86 = vmlaq_f32(v92, v93, vcvtq_f32_s32(vmovl_s16(*&v13->i8[v85])));
          v87 = vcvtq_f64_f32(vrndx_f32(*v86.i8));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v86, v86, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v87), v16), 0), v21);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v18 + v84) = a9.n128_u32[0];
          v85 += 8;
          v84 += 4;
          v83 += 4;
        }

        while (v83);
        if (v68 != (v68 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v13 = (v13 + v91);
      v18 += a6;
      ++v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1002135A8(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v80 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v75 = result + 4 * v15;
    v76 = result + 16;
    v77 = 4 * (a2 >> 2);
    v18 = a5;
    v81 = *v10.i32;
    v82 = *v9.i32;
    v78 = vdupq_lane_s32(v10, 0);
    v79 = vdupq_lane_s32(v9, 0);
    do
    {
      v19 = a5 + v14 * a6;
      v20 = v80 * v14;
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_10022665C(a9, *v16.i8, v84, v13, v18, v15);
      v21 = 0uLL;
      *v10.i32 = v81;
      *v9.i32 = v82;
      if (result > v17)
      {
        goto LABEL_27;
      }

      v22 = result;
      v23 = v17 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v19 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v18 + result < v76 + v20 + 16 * v24 + v26 * 4) ? (v27 = v13 + 4 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        v30.i64[0] = 0xFF000000FFLL;
        v30.i64[1] = 0xFF000000FFLL;
        do
        {
          v31 = &v13->i32[v26];
          v32 = &v13[8].i32[v26];
          v33 = &v13[12].i32[v26];
          v85 = vld4q_f32(v31);
          v31 += 16;
          v87 = vld4q_f32(v32);
          v88 = vld4q_f32(v33);
          v89 = vld4q_f32(v31);
          v34 = vcvtq_f32_s32(v87.val[0]);
          v35 = vcvtq_f32_s32(v85.val[0]);
          v36 = vcvtq_f32_s32(v85.val[1]);
          v37 = vcvtq_f32_s32(v89.val[0]);
          v38 = vcvtq_f32_s32(v87.val[2]);
          v39 = vcvtq_f32_s32(v88.val[2]);
          v40 = vcvtq_f32_s32(v85.val[2]);
          v85.val[1] = vcvtq_f32_s32(v85.val[3]);
          v85.val[2] = vcvtq_f32_s32(v88.val[3]);
          v85.val[3] = vcvtq_f32_s32(v87.val[3]);
          v41 = (v18 + v22);
          v85.val[0] = vcvtq_f32_s32(v89.val[2]);
          v87.val[0] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v87.val[1]));
          v87.val[2] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v88.val[1]));
          v88.val[2] = vmlaq_f32(v78, v79, v36);
          v88.val[3] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v89.val[1]));
          v89.val[0] = vmlaq_f32(v78, v79, v35);
          v89.val[1] = vmlaq_f32(v78, v79, v37);
          v88.val[1] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v88.val[0]));
          v87.val[3] = vmlaq_f32(v78, v79, v34);
          v21 = 0uLL;
          v42 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87.val[2], v87.val[2], 8uLL)))));
          v88.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88.val[1], v88.val[1], 8uLL)))));
          v87.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v89.val[1].f32)));
          v88.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87.val[3], v87.val[3], 8uLL))))), 0);
          v89.val[2] = vmaxq_s32(v88.val[0], 0);
          v87.val[3] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88.val[2], v88.val[2], 8uLL))))), 0);
          v88.val[2] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v89.val[1], v89.val[1], 8uLL)));
          v89.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87.val[0], v87.val[0], 8uLL))))), 0);
          v87.val[0] = vminq_s32(v87.val[3], v30);
          v88.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.val[3].i8)));
          v87.val[3] = vmlaq_f32(v78, v79, v85.val[3]);
          v85.val[3] = vmlaq_f32(v78, v79, v85.val[2]);
          v85.val[2] = vmlaq_f32(v78, v79, v85.val[1]);
          v85.val[1] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88.val[3], v88.val[3], 8uLL)));
          v88.val[3] = vmlaq_f32(v78, v79, vcvtq_f32_s32(v89.val[3]));
          v43 = vmlaq_f32(v78, v79, v40);
          v89.val[3] = vmlaq_f32(v78, v79, v85.val[0]);
          v85.val[0] = vmlaq_f32(v78, v79, v39);
          v44 = vmlaq_f32(v78, v79, v38);
          v87.val[0] = vuzp1q_s16(v87.val[0], vminq_s32(vmaxq_s32(vuzp1q_s32(v88.val[0], vcvtq_s64_f64(v85.val[1])), 0), v30));
          v88.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v89.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v89.val[0], v89.val[0], 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(v87.val[2], vcvtq_s64_f64(v88.val[2])), 0), v30)), vuzp1q_s16(vminq_s32(v88.val[1], v30), vminq_s32(v89.val[2], v30)));
          v88.val[1] = vuzp1q_s8(v87.val[0], vuzp1q_s16(vminq_s32(v89.val[1], v30), vminq_s32(vmaxq_s32(v42, 0), v30)));
          v88.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v89.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v89.val[3], v89.val[3], 8uLL))))), 0), v30)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[0], v85.val[0], 8uLL))))), 0), v30)));
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[2], v85.val[2], 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v88.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88.val[3], v88.val[3], 8uLL))))), 0), v30));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v87.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87.val[3], v87.val[3], 8uLL))))), 0), v30), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[3], v85.val[3], 8uLL))))), 0), v30));
          v88.val[3] = vuzp1q_s8(a9, v16);
          vst4q_s8(v41, v88);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v45 = 4 * result + 12;
      do
      {
        v46 = rintf(v81 + (*(&v13->i32[-3] + v45) * v82));
        v47 = v46 & ~(v46 >> 31);
        v48 = &v13->i32[result];
        v49 = rintf(v81 + (v48[1] * v82));
        if (v47 >= 255)
        {
          LOBYTE(v47) = -1;
        }

        v50 = v49 & ~(v49 >> 31);
        if (v50 >= 255)
        {
          LOBYTE(v50) = -1;
        }

        v51 = (v18 + result);
        *v51 = v47;
        v51[1] = v50;
        v52 = rintf(v81 + (v48[2] * v82));
        if ((v52 & ~(v52 >> 31)) >= 255)
        {
          v53 = -1;
        }

        else
        {
          v53 = v52 & ~(v52 >> 31);
        }

        v54 = rintf(v81 + (*(v13->i32 + v45) * v82));
        v55 = v54 & ~(v54 >> 31);
        if (v55 >= 255)
        {
          LOBYTE(v55) = -1;
        }

        v51[2] = v53;
        v51[3] = v55;
        result += 4;
        v45 += 16;
      }

      while (result <= v17);
LABEL_27:
      v56.i64[0] = 0xFF000000FFLL;
      v56.i64[1] = 0xFF000000FFLL;
      if (result < v15)
      {
        v57 = v15 - result;
        if (v57 < 4)
        {
          v58 = result;
          goto LABEL_44;
        }

        if (v18 + result < v75 + v20 && v13 + 4 * result < v19 + v15)
        {
          v58 = result;
          goto LABEL_44;
        }

        if (v57 >= 0x10)
        {
          v59 = v57 & 0xFFFFFFFFFFFFFFF0;
          v60 = 4 * result;
          v61 = result;
          v62 = v57 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v63 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(&v13[3] + v60)));
            v64 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(&v13[2] + v60)));
            v65 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(&v13[1] + v60)));
            v66 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(v13 + v60)));
            v67 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v66.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v66, v66, 8uLL))))), v21);
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v65.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v65, v65, 8uLL))))), v21);
            v86.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), v21), v56);
            v86.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))))), v21), v56);
            v86.val[1] = vminq_s32(v16, v56);
            v86.val[0] = vminq_s32(v67, v56);
            a9 = vqtbl4q_s8(v86, xmmword_1003E36F0);
            *(v18 + v61) = a9;
            v60 += 64;
            v61 += 16;
            v62 -= 16;
          }

          while (v62);
          if (v57 == v59)
          {
            goto LABEL_3;
          }

          if ((v57 & 0xC) == 0)
          {
            v58 = v59 + result;
            do
            {
LABEL_44:
              v73 = rintf(v81 + (v13->i32[v58] * v82));
              v74 = v73 & ~(v73 >> 31);
              if (v74 >= 255)
              {
                LOBYTE(v74) = -1;
              }

              *(v18 + v58++) = v74;
            }

            while (v15 != v58);
            goto LABEL_3;
          }
        }

        else
        {
          v59 = 0;
        }

        v58 = (v57 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v68 = v59 - (v57 & 0xFFFFFFFFFFFFFFFCLL);
        v69 = v59 + result;
        v70 = 4 * v69;
        do
        {
          v71 = vmlaq_f32(v78, v79, vcvtq_f32_s32(*(v13 + v70)));
          v72 = vcvtq_f64_f32(vrndx_f32(*v71.i8));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v72), v16), v21), v56);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v18 + v69) = a9.n128_u32[0];
          v70 += 16;
          v69 += 4;
          v68 += 4;
        }

        while (v68);
        if (v57 != (v57 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v13 = (v13 + v77);
      v18 += a6;
      ++v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100213DC4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v80 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v75 = result + 4 * v15;
    v76 = result + 16;
    v77 = 4 * (a2 >> 2);
    v18 = a5;
    v81 = *v10.i32;
    v82 = *v9.i32;
    v78 = vdupq_lane_s32(v10, 0);
    v79 = vdupq_lane_s32(v9, 0);
    do
    {
      v19 = a5 + v14 * a6;
      v20 = v80 * v14;
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_1002268A4(a9, *v16.i8, &v84, v13, v18, v15);
      v21.i64[0] = 0xFF000000FFLL;
      v21.i64[1] = 0xFF000000FFLL;
      *v10.i32 = v81;
      *v9.i32 = v82;
      if (result > v17)
      {
        goto LABEL_27;
      }

      v22 = result;
      v23 = v17 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v19 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = 4 * result, v18 + result < v76 + v20 + 16 * v24 + v26) ? (v27 = v13->u64 + 4 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = vmlaq_f32(v78, v79, *(v13 + v26 + 32));
          v31 = vmlaq_f32(v78, v79, *(v13 + v26 + 48));
          v32 = vmlaq_f32(v78, v79, *(v13 + v26 + 16));
          v33 = vmlaq_f32(v78, v79, *(v13 + v26));
          v34 = vmlaq_f32(v78, v79, *(v13 + v26 + 96));
          v35 = vmlaq_f32(v78, v79, *(v13 + v26 + 112));
          v36 = vmlaq_f32(v78, v79, *(v13 + v26 + 64));
          v37 = vmlaq_f32(v78, v79, *(v13 + v26 + 80));
          v38 = vmlaq_f32(v78, v79, *(v13 + v26 + 160));
          v39 = vmlaq_f32(v78, v79, *(v13 + v26 + 176));
          v40 = vmlaq_f32(v78, v79, *(v13 + v26 + 128));
          v41 = vmlaq_f32(v78, v79, *(v13 + v26 + 144));
          v42 = vmlaq_f32(v78, v79, *(v13 + v26 + 224));
          v43 = vmlaq_f32(v78, v79, *(v13 + v26 + 240));
          v44 = vmlaq_f32(v78, v79, *(v13 + v26 + 192));
          v45 = vmlaq_f32(v78, v79, *(v13 + v26 + 208));
          a9 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0), v21)));
          v46 = v18 + v22;
          *v46 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), 0), v21)));
          *(v46 + 16) = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), 0), v21)));
          v16 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v21)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21)));
          *(v46 + 32) = v16;
          *(v46 + 48) = a9;
          v22 += 64;
          v26 += 256;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v47 = 4 * result + 12;
      do
      {
        v48 = rintf(v81 + (*(&v13->f32[-3] + v47) * v82));
        v49 = v48 & ~(v48 >> 31);
        v50 = &v13->f32[result];
        if (v49 >= 255)
        {
          LOBYTE(v49) = -1;
        }

        v51 = rintf(v81 + (v50[1] * v82));
        v52 = v51 & ~(v51 >> 31);
        if (v52 >= 255)
        {
          LOBYTE(v52) = -1;
        }

        v53 = (v18 + result);
        *v53 = v49;
        v53[1] = v52;
        v54 = rintf(v81 + (v50[2] * v82));
        if ((v54 & ~(v54 >> 31)) >= 255)
        {
          v55 = -1;
        }

        else
        {
          v55 = v54 & ~(v54 >> 31);
        }

        v56 = rintf(v81 + (*(v13->f32 + v47) * v82));
        v57 = v56 & ~(v56 >> 31);
        if (v57 >= 255)
        {
          LOBYTE(v57) = -1;
        }

        v53[2] = v55;
        v53[3] = v57;
        result += 4;
        v47 += 16;
      }

      while (result <= v17);
LABEL_27:
      if (result < v15)
      {
        v58 = v15 - result;
        if (v58 < 4)
        {
          v59 = result;
          goto LABEL_44;
        }

        if (v18 + result < v75 + v20 && v13->u64 + 4 * result < v19 + v15)
        {
          v59 = result;
          goto LABEL_44;
        }

        if (v58 >= 0x10)
        {
          v60 = v58 & 0xFFFFFFFFFFFFFFF0;
          v61 = 4 * result;
          v62 = result;
          v63 = v58 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v64 = vmlaq_f32(v78, v79, *(v13 + v61 + 32));
            v65 = vmlaq_f32(v78, v79, *(v13 + v61 + 16));
            v66 = vmlaq_f32(v78, v79, *(v13 + v61));
            v67 = vmlaq_f32(v78, v79, *(v13 + v61 + 48));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v66.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v66, v66, 8uLL))))), 0);
            v85.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))))), 0), v21);
            v85.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v65.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v65, v65, 8uLL))))), 0), v21);
            v85.val[0] = vminq_s32(v16, v21);
            v85.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v67.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v67, v67, 8uLL))))), 0), v21);
            a9 = vqtbl4q_s8(v85, xmmword_1003E36F0);
            *(v18 + v62) = a9;
            v61 += 64;
            v62 += 16;
            v63 -= 16;
          }

          while (v63);
          if (v58 == v60)
          {
            goto LABEL_3;
          }

          if ((v58 & 0xC) == 0)
          {
            v59 = v60 + result;
            do
            {
LABEL_44:
              v73 = rintf(v81 + (v13->f32[v59] * v82));
              v74 = v73 & ~(v73 >> 31);
              if (v74 >= 255)
              {
                LOBYTE(v74) = -1;
              }

              *(v18 + v59++) = v74;
            }

            while (v15 != v59);
            goto LABEL_3;
          }
        }

        else
        {
          v60 = 0;
        }

        v59 = (v58 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v68 = v60 - (v58 & 0xFFFFFFFFFFFFFFFCLL);
        v69 = v60 + result;
        v70 = 4 * v69;
        do
        {
          v71 = vmlaq_f32(v78, v79, *(v13 + v70));
          v72 = vcvtq_f64_f32(vrndx_f32(*v71.i8));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v72), v16), 0), v21);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v18 + v69) = a9.n128_u32[0];
          v70 += 16;
          v69 += 4;
          v68 += 4;
        }

        while (v68);
        if (v58 != (v58 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v13 = (v13 + v77);
      v18 += a6;
      ++v14;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021455C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, double a9, double a10, float64x2_t a11, int16x8_t a12, __n128 a13, int32x4_t a14)
{
  v14 = a7[1];
  if (v14)
  {
    v16 = result;
    v17 = 0;
    v18 = *a7;
    v19 = *a8;
    v20 = a8[1];
    v21 = v18 - 4;
    v67 = result + 8 * v18;
    v68 = result + 32;
    v69 = 8 * (a2 >> 3);
    v70 = a2 & 0xFFFFFFFFFFFFFFF8;
    v22 = a5;
    v65 = v20;
    v66 = v19;
    v74 = v20;
    v75 = v19;
    v72 = vdupq_lane_s64(COERCE__INT64(v20), 0);
    v73 = vdupq_lane_s64(COERCE__INT64(v19), 0);
    do
    {
      v23 = a5 + v17 * a6;
      v24 = v70 * v17;
      result = sub_100226AE4(v19, v20, a11.f64[0], *a12.i64, a13.n128_f64[0], a14, v76, v16, v22, v18);
      v26 = v74;
      v25 = v75;
      if (result > v21)
      {
        goto LABEL_27;
      }

      v27 = result;
      v28 = v21 - result;
      if (v28 > 0x3B && ((v29 = v28 >> 2, v30 = v23 + 4 + (v28 & 0xFFFFFFFFFFFFFFFCLL) + result, v31 = 8 * result, v22 + result < v68 + v24 + 32 * v29 + v31) ? (v32 = &v16->f64[result] >= v30) : (v32 = 1), v32))
      {
        v33 = v29 + 1;
        result = result + 4 * (v33 & 0x7FFFFFFFFFFFFFF0);
        v34 = v33 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          a14 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 320)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 336)))));
          v35 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 352)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 368)))));
          v36.i64[0] = 0xFF000000FFLL;
          v36.i64[1] = 0xFF000000FFLL;
          v37 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 384)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 400))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 416)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 432))))), 0), v36)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 448)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 464))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 480)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 496))))), 0), v36)));
          v38 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 256)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 272))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 288)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 304))))), 0), v36));
          a13 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 128)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 144))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 160)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 176))))), 0), v36)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 192)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 208))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 224)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 240))))), 0), v36)));
          a12 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 48))))), 0), v36);
          a11 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 16))))), 0), v36), a12);
          v39 = v22 + v27;
          *v39 = vuzp1q_s8(a11, vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 80))))), 0), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v31 + 112))))), 0), v36)));
          *(v39 + 16) = a13;
          *(v39 + 32) = vuzp1q_s8(v38, vuzp1q_s16(vminq_s32(vmaxq_s32(a14, 0), v36), vminq_s32(vmaxq_s32(v35, 0), v36)));
          *(v39 + 48) = v37;
          v27 += 64;
          v31 += 512;
          v34 -= 16;
        }

        while (v34);
        v20 = v65;
        v19 = v66;
        v26 = v74;
        v25 = v75;
        if (v33 == (v33 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = result;
      }

      v40 = 8 * result + 24;
      do
      {
        v41 = rint(v26 + *(&v16[-1] + v40 - 8) * v25);
        v42 = v41 & ~(v41 >> 31);
        v43 = &v16->f64[result];
        if (v42 >= 255)
        {
          LOBYTE(v42) = -1;
        }

        v44 = rint(v26 + v43[1] * v25);
        v45 = v44 & ~(v44 >> 31);
        if (v45 >= 255)
        {
          LOBYTE(v45) = -1;
        }

        v46 = (v22 + result);
        *v46 = v42;
        v46[1] = v45;
        v47 = rint(v26 + v43[2] * v25);
        if ((v47 & ~(v47 >> 31)) >= 255)
        {
          v48 = -1;
        }

        else
        {
          v48 = v47 & ~(v47 >> 31);
        }

        v49 = rint(v26 + *(v16->f64 + v40) * v25);
        v50 = v49 & ~(v49 >> 31);
        if (v50 >= 255)
        {
          LOBYTE(v50) = -1;
        }

        v46[2] = v48;
        v46[3] = v50;
        result += 4;
        v40 += 32;
      }

      while (result <= v21);
LABEL_27:
      v51.i64[0] = 0xFF000000FFLL;
      v51.i64[1] = 0xFF000000FFLL;
      if (result < v18)
      {
        v52 = v18 - result;
        if (v52 < 4)
        {
          v53 = result;
          goto LABEL_44;
        }

        if (v22 + result < v67 + v24 && &v16->f64[result] < v23 + v18)
        {
          v53 = result;
          goto LABEL_44;
        }

        if (v52 >= 0x10)
        {
          v54 = v52 & 0xFFFFFFFFFFFFFFF0;
          v55 = 8 * result;
          v56 = result;
          v57 = v52 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            a11 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 48))))), 0);
            a12 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 16))))), 0), v51);
            a13 = vminq_s32(a11, v51);
            a14 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 80))))), 0), v51);
            v58 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v55 + 112))))), 0), v51);
            *(v22 + v56) = vqtbl4q_s8(*a12.i8, xmmword_1003E36F0);
            v55 += 128;
            v56 += 16;
            v57 -= 16;
          }

          while (v57);
          if (v52 == v54)
          {
            goto LABEL_3;
          }

          if ((v52 & 0xC) == 0)
          {
            v53 = v54 + result;
            do
            {
LABEL_44:
              v63 = rint(v26 + v16->f64[v53] * v25);
              v64 = v63 & ~(v63 >> 31);
              if (v64 >= 255)
              {
                LOBYTE(v64) = -1;
              }

              *(v22 + v53++) = v64;
            }

            while (v18 != v53);
            goto LABEL_3;
          }
        }

        else
        {
          v54 = 0;
        }

        v53 = (v52 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v59 = v54 - (v52 & 0xFFFFFFFFFFFFFFFCLL);
        v60 = v54 + result;
        v61 = 8 * v60;
        do
        {
          a11 = vmlaq_f64(v72, v73, *(v16 + v61));
          v62 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(a11)), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v72, v73, *(v16 + v61 + 16))))), 0), v51));
          *(v22 + v60) = vuzp1_s8(v62, v62).u32[0];
          v61 += 32;
          v60 += 4;
          v59 += 4;
        }

        while (v59);
        if (v52 != (v52 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

LABEL_3:
      v16 = (v16 + v69);
      v22 += a6;
      ++v17;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_100214D20(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = *a7 - 4;
    v83 = a5 - result;
    v84 = *a7;
    v82 = a6 - a2;
    v80 = result + 4;
    v81 = a5 + 4;
    v87 = *v10.i32;
    v88 = *v9.i32;
    v85 = vdupq_lane_s32(v10, 0);
    v86 = vdupq_lane_s32(v9, 0);
    do
    {
      v91 = v11;
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100226D50(a9, *v16.i8, v92, v13, v12, v15);
      v18.i64[0] = 0x7F0000007FLL;
      v18.i64[1] = 0x7F0000007FLL;
      v19.i64[0] = 0x7F0000007FLL;
      v19.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v87;
      *v9.i32 = v88;
      if (result > v17)
      {
        goto LABEL_34;
      }

      v20 = result;
      v21 = v17 - result;
      if (v21 > 0x3B && ((v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + result, v12 + result < v80 + v14 * a2 + v22) ? (v23 = v13 + result >= v81 + v14 * a6 + v22) : (v23 = 1), v23))
      {
        v24 = (v21 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF0);
        v25 = v24 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v26 = (v13 + v20);
          v94 = vld4q_s8(v26);
          v27 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3700));
          v28 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3710));
          v29 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3720));
          v30 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3730));
          v31 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3720));
          v32 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3730));
          v33 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3710));
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3700));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3700));
          v36 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3710));
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3720));
          v38 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3730));
          v94.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3720));
          v94.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3730));
          v39 = (v12 + v20);
          v40 = vmlaq_f32(v85, v86, v34);
          v41 = vmlaq_f32(v85, v86, v33);
          v42 = vmlaq_f32(v85, v86, v32);
          v43 = vmlaq_f32(v85, v86, v31);
          v44 = vmlaq_f32(v85, v86, v30);
          v45 = vmlaq_f32(v85, v86, v29);
          v46 = vmlaq_f32(v85, v86, v28);
          v47 = vmlaq_f32(v85, v86, v27);
          v48 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))));
          v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL)))));
          v50 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), v19);
          v51 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), v19);
          v52 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3700)));
          v94.val[3] = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3710)));
          v94.val[2] = vmlaq_f32(v85, v86, v94.val[1]);
          v53 = vmlaq_f32(v85, v86, v94.val[0]);
          v54 = vmlaq_f32(v85, v86, v38);
          v94.val[1] = vmlaq_f32(v85, v86, v37);
          v55 = vmlaq_f32(v85, v86, v36);
          v56 = vmlaq_f32(v85, v86, v35);
          v95.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(v51, v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL))))), v19), v18), vminq_s32(v50, v18)));
          v57 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), v19), v18);
          v95.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(v48, v19), v18), vminq_s32(vmaxq_s32(v49, v19), v18)));
          v95.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[1], v94.val[1], 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), v19), v18)));
          a9 = vuzp1q_s16(v57, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[2], v94.val[2], 8uLL))))), v19), v18));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[3], v94.val[3], 8uLL))))), v19), v18));
          v95.val[3] = vuzp1q_s8(a9, v16);
          vst4q_s8(v39, v95);
          v20 += 64;
          v25 -= 16;
        }

        while (v25);
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = result;
      }

      do
      {
        v58 = (v13 + result);
        a9.n128_u8[0] = *(v13 + result);
        a9.n128_f32[0] = rintf(v87 + (a9.n128_u32[0] * v88));
        v59 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v59) = -128;
        }

        if (v59 >= 127)
        {
          LOBYTE(v59) = 127;
        }

        a9.n128_u8[0] = v58[1];
        a9.n128_f32[0] = rintf(v87 + (a9.n128_u32[0] * v88));
        v60 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v60) = -128;
        }

        if (v60 >= 127)
        {
          LOBYTE(v60) = 127;
        }

        v61 = (v12 + result);
        *v61 = v59;
        v61[1] = v60;
        a9.n128_u8[0] = v58[2];
        a9.n128_f32[0] = rintf(v87 + (a9.n128_u32[0] * v88));
        v62 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v62) = -128;
        }

        a9.n128_u8[0] = v58[3];
        a9.n128_f32[0] = a9.n128_u32[0];
        if (v62 >= 127)
        {
          v63 = 127;
        }

        else
        {
          v63 = v62;
        }

        a9.n128_f32[0] = rintf(v87 + (a9.n128_f32[0] * v88));
        v64 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v64) = -128;
        }

        if (v64 >= 127)
        {
          LOBYTE(v64) = 127;
        }

        v61[2] = v63;
        v61[3] = v64;
        result += 4;
      }

      while (result <= v17);
LABEL_34:
      v15 = v84;
      if (result < v84)
      {
        v65 = v84 - result;
        if (v65 < 4)
        {
          v67 = result;
          goto LABEL_50;
        }

        if ((v83 + v82 * v14) < 0x10)
        {
          v67 = result;
          goto LABEL_50;
        }

        if (v65 >= 0x10)
        {
          v66 = v65 & 0xFFFFFFFFFFFFFFF0;
          v68 = result;
          v69 = v65 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v70 = *(v13 + v68);
            v71 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3710)));
            v72 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3700)));
            v73 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3730)));
            v74 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vqtbl1q_s8(v70, xmmword_1003E3720)));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))), v19);
            v93.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71, v71, 8uLL))))), v19), v18);
            v93.val[2] = vminq_s32(v16, v18);
            v93.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), v19), v18);
            v93.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), v19), v18);
            a9 = vqtbl4q_s8(v93, xmmword_1003E36F0);
            *(v12 + v68) = a9;
            v68 += 16;
            v69 -= 16;
          }

          while (v69);
          if (v65 == v66)
          {
            goto LABEL_3;
          }

          if ((v65 & 0xC) == 0)
          {
            v67 = v66 + result;
            do
            {
LABEL_50:
              a9.n128_u8[0] = *(v13 + v67);
              a9.n128_f32[0] = rintf(v87 + (a9.n128_u32[0] * v88));
              v79 = a9.n128_f32[0];
              if (a9.n128_f32[0] <= -128)
              {
                LODWORD(v79) = -128;
              }

              if (v79 >= 127)
              {
                LOBYTE(v79) = 127;
              }

              *(v12 + v67++) = v79;
            }

            while (v84 != v67);
            goto LABEL_3;
          }
        }

        else
        {
          v66 = 0;
        }

        v67 = (v65 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v75 = v66 - (v65 & 0xFFFFFFFFFFFFFFFCLL);
        v76 = v66 + result;
        do
        {
          a9.n128_u32[0] = *(v13 + v76);
          v77 = vmlaq_f32(v85, v86, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(a9.n128_u64[0]))));
          v78 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v77.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v77, v77, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(v78, v16), v19), v18);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v12 + v76) = a9.n128_u32[0];
          v76 += 4;
          v75 += 4;
        }

        while (v75);
        if (v65 != (v65 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_50;
        }
      }

LABEL_3:
      v13 += a2;
      v12 += a6;
      ++v14;
      v11 = v91 - 1;
    }

    while (v91 != 1);
  }

  return result;
}

uint64_t sub_10021556C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = *a7 - 4;
    v85 = a5 - result;
    v86 = *a7;
    v84 = a6 - a2;
    v82 = result + 4;
    v83 = a5 + 4;
    v89 = *v10.i32;
    v90 = *v9.i32;
    v87 = vdupq_lane_s32(v10, 0);
    v88 = vdupq_lane_s32(v9, 0);
    do
    {
      v93 = v11;
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100226F7C(a9, *v16.i8, v94, v13, v12, v15);
      v18.i64[0] = 0x7F0000007FLL;
      v18.i64[1] = 0x7F0000007FLL;
      v19.i64[0] = 0x7F0000007FLL;
      v19.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v89;
      *v9.i32 = v90;
      if (result > v17)
      {
        goto LABEL_35;
      }

      v20 = result;
      v21 = v17 - result;
      if (v21 > 0x3B && ((v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL) + result, v12 + result < v82 + v14 * a2 + v22) ? (v23 = v13 + result >= v83 + v14 * a6 + v22) : (v23 = 1), v23))
      {
        v24 = (v21 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF0);
        v25 = v24 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v26 = (v13 + v20);
          v96 = vld4q_s8(v26);
          v27 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[0], xmmword_1003E3740), 0x18uLL);
          v28 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[0], xmmword_1003E3750), 0x18uLL);
          v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[0], xmmword_1003E3760), 0x18uLL);
          v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[0], xmmword_1003E3770), 0x18uLL);
          v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[1], xmmword_1003E3760), 0x18uLL);
          v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[1], xmmword_1003E3770), 0x18uLL);
          v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[1], xmmword_1003E3750), 0x18uLL);
          v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[1], xmmword_1003E3740), 0x18uLL);
          v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[2], xmmword_1003E3740), 0x18uLL);
          v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[2], xmmword_1003E3750), 0x18uLL);
          v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[2], xmmword_1003E3760), 0x18uLL);
          v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[2], xmmword_1003E3770), 0x18uLL);
          v96.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[3], xmmword_1003E3760), 0x18uLL);
          v96.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[3], xmmword_1003E3770), 0x18uLL);
          v39 = (v12 + v20);
          v40 = vmlaq_f32(v87, v88, v34);
          v41 = vmlaq_f32(v87, v88, v33);
          v42 = vmlaq_f32(v87, v88, v32);
          v43 = vmlaq_f32(v87, v88, v31);
          v44 = vmlaq_f32(v87, v88, v30);
          v45 = vmlaq_f32(v87, v88, v29);
          v46 = vmlaq_f32(v87, v88, v28);
          v47 = vmlaq_f32(v87, v88, v27);
          v48 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))));
          v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL)))));
          v50 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), v19);
          v51 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), v19);
          v52 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[3], xmmword_1003E3740), 0x18uLL));
          v96.val[3] = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v96.val[3], xmmword_1003E3750), 0x18uLL));
          v96.val[2] = vmlaq_f32(v87, v88, v96.val[1]);
          v53 = vmlaq_f32(v87, v88, v96.val[0]);
          v54 = vmlaq_f32(v87, v88, v38);
          v96.val[1] = vmlaq_f32(v87, v88, v37);
          v55 = vmlaq_f32(v87, v88, v36);
          v56 = vmlaq_f32(v87, v88, v35);
          v97.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(v51, v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL))))), v19), v18), vminq_s32(v50, v18)));
          v57 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), v19), v18);
          v97.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(v48, v19), v18), vminq_s32(vmaxq_s32(v49, v19), v18)));
          v97.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v96.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v96.val[1], v96.val[1], 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), v19), v18)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), v19), v18)));
          a9 = vuzp1q_s16(v57, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v96.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v96.val[2], v96.val[2], 8uLL))))), v19), v18));
          v16 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), v19), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v96.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v96.val[3], v96.val[3], 8uLL))))), v19), v18));
          v97.val[3] = vuzp1q_s8(a9, v16);
          vst4q_s8(v39, v97);
          v20 += 64;
          v25 -= 16;
        }

        while (v25);
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      do
      {
        v58 = v13 + result;
        a9.n128_u8[0] = *(v13 + result);
        v59 = vmovl_s16(*&vmovl_s8(a9.n128_u64[0])).u64[0];
        *v59.i32 = rintf(v89 + (v59.i32[0] * v90));
        v60 = *v59.i32;
        v61 = *v59.i32 <= -128;
        v59.i8[0] = *(v13 + result + 1);
        a9.n128_u64[0] = vmovl_s16(*&vmovl_s8(v59)).u64[0];
        if (v61)
        {
          LODWORD(v60) = -128;
        }

        a9.n128_f32[0] = rintf(v89 + (a9.n128_i32[0] * v90));
        v62 = a9.n128_f32[0];
        if (v60 >= 127)
        {
          LOBYTE(v60) = 127;
        }

        if (v62 <= -128)
        {
          LODWORD(v62) = -128;
        }

        v63 = (v12 + result);
        if (v62 >= 127)
        {
          LOBYTE(v62) = 127;
        }

        *v63 = v60;
        v63[1] = v62;
        a9.n128_u8[0] = *(v58 + 2);
        a9.n128_u64[0] = vmovl_s16(*&vmovl_s8(a9.n128_u64[0])).u64[0];
        a9.n128_f32[0] = rintf(v89 + (a9.n128_i32[0] * v90));
        v64 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v64) = -128;
        }

        a9.n128_u8[0] = *(v58 + 3);
        a9 = vmovl_s16(*&vmovl_s8(a9.n128_u64[0]));
        a9.n128_f32[0] = a9.n128_i32[0];
        if (v64 >= 127)
        {
          v65 = 127;
        }

        else
        {
          v65 = v64;
        }

        a9.n128_f32[0] = rintf(v89 + (a9.n128_f32[0] * v90));
        v66 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v66) = -128;
        }

        if (v66 >= 127)
        {
          LOBYTE(v66) = 127;
        }

        v63[2] = v65;
        v63[3] = v66;
        result += 4;
      }

      while (result <= v17);
LABEL_35:
      v15 = v86;
      if (result < v86)
      {
        v67 = v86 - result;
        if (v67 < 4)
        {
          v69 = result;
          goto LABEL_51;
        }

        if ((v85 + v84 * v14) < 0x10)
        {
          v69 = result;
          goto LABEL_51;
        }

        if (v67 >= 0x10)
        {
          v68 = v67 & 0xFFFFFFFFFFFFFFF0;
          v70 = result;
          v71 = v67 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v72 = *(v13 + v70);
            v73 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v72, xmmword_1003E3750), 0x18uLL));
            v74 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v72, xmmword_1003E3740), 0x18uLL));
            v75 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v72, xmmword_1003E3770), 0x18uLL));
            v76 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v72, xmmword_1003E3760), 0x18uLL));
            v16 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL))))), v19);
            v95.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL))))), v19), v18);
            v95.val[2] = vminq_s32(v16, v18);
            v95.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))), v19), v18);
            v95.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v76.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v76, v76, 8uLL))))), v19), v18);
            a9 = vqtbl4q_s8(v95, xmmword_1003E36F0);
            *(v12 + v70) = a9;
            v70 += 16;
            v71 -= 16;
          }

          while (v71);
          if (v67 == v68)
          {
            goto LABEL_3;
          }

          if ((v67 & 0xC) == 0)
          {
            v69 = v68 + result;
            do
            {
LABEL_51:
              a9.n128_u8[0] = *(v13 + v69);
              a9 = vmovl_s16(*&vmovl_s8(a9.n128_u64[0]));
              a9.n128_f32[0] = rintf(v89 + (a9.n128_i32[0] * v90));
              v81 = a9.n128_f32[0];
              if (a9.n128_f32[0] <= -128)
              {
                LODWORD(v81) = -128;
              }

              if (v81 >= 127)
              {
                LOBYTE(v81) = 127;
              }

              *(v12 + v69++) = v81;
            }

            while (v86 != v69);
            goto LABEL_3;
          }
        }

        else
        {
          v68 = 0;
        }

        v69 = (v67 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v77 = v68 - (v67 & 0xFFFFFFFFFFFFFFFCLL);
        v78 = v68 + result;
        do
        {
          a9.n128_u32[0] = *(v13 + v78);
          v79 = vmlaq_f32(v87, v88, vcvtq_n_f32_s32(vqtbl1q_s8(a9, xmmword_1003E3760), 0x18uLL));
          v80 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(v80, v16), v19), v18);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v12 + v78) = a9.n128_u32[0];
          v78 += 4;
          v77 += 4;
        }

        while (v77);
        if (v67 != (v67 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_51;
        }
      }

LABEL_3:
      v13 += a2;
      v12 += a6;
      ++v14;
      v11 = v93 - 1;
    }

    while (v93 != 1);
  }

  return result;
}

uint64_t sub_100215DE0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = result;
    v13 = 0;
    v14 = *a7;
    a9.n128_f64[0] = *a8;
    v15.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v95 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v90 = result + 2 * v14;
    v91 = result + 8;
    v92 = 2 * (a2 >> 1);
    v17 = a5;
    v96 = *v10.i32;
    v97 = *v9.i32;
    v93 = vdupq_lane_s32(v10, 0);
    v94 = vdupq_lane_s32(v9, 0);
    do
    {
      v18 = a6;
      v99 = a5 + v13 * a6;
      v19 = v95 * v13;
      a9.n128_u32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_1002271A8(a9, *v15.i8, v100, v12, v17, v14);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v96;
      *v9.i32 = v97;
      if (result > v16)
      {
        goto LABEL_35;
      }

      v22 = result;
      v23 = v16 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v99 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v17 + result < v91 + v19 + 8 * v24 + v26 * 2) ? (v27 = v12 + 2 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = &v12->i16[v26];
          v102 = vld4q_s16(v30);
          v30 += 32;
          v103 = vld4q_s16(v30);
          v31 = vcvtq_f32_u32(vmovl_u16(*v103.val[1].i8));
          v32 = vcvtq_f32_u32(vmovl_u16(*v102.val[2].i8));
          v33 = vcvtq_f32_u32(vmovl_high_u16(v102.val[2]));
          v34 = vcvtq_f32_u32(vmovl_high_u16(v103.val[1]));
          v35 = vcvtq_f32_u32(vmovl_u16(*v103.val[2].i8));
          v36 = vcvtq_f32_u32(vmovl_u16(*v102.val[3].i8));
          v37 = vcvtq_f32_u32(vmovl_high_u16(v103.val[2]));
          v38 = vcvtq_f32_u32(vmovl_high_u16(v102.val[3]));
          v39 = (v17 + v22);
          v40 = vcvtq_f32_u32(vmovl_u16(*v103.val[3].i8));
          v103.val[1] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v102.val[0])));
          v102.val[3] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_u16(*v102.val[0].i8)));
          v41 = vcvtq_f32_u32(vmovl_high_u16(v103.val[3]));
          v42 = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v102.val[1])));
          v102.val[0] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v103.val[0])));
          v103.val[2] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_u16(*v102.val[1].i8)));
          v103.val[0] = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_u16(*v103.val[0].i8)));
          v43 = vmlaq_f32(v93, v94, v34);
          v103.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
          v44 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
          v102.val[2] = vmlaq_f32(v93, v94, v31);
          v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v103.val[1].i8)));
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v103.val[1], v103.val[1], 8uLL))));
          v103.val[1] = vcvtq_f64_f32(vrndx_f32(*v103.val[0].i8));
          v47 = vcvtq_f64_f32(vrndx_f32(*v102.val[0].i8));
          v48 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v103.val[0], v103.val[0], 8uLL)));
          v103.val[3] = vmaxq_s32(vuzp1q_s32(v103.val[3], v44), v21);
          v103.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(v45, v46), v21), v20);
          v49 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v102.val[0], v102.val[0], 8uLL)));
          v102.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v102.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v102.val[3], v102.val[3], 8uLL))))), v21), v20), v103.val[0]);
          v103.val[0] = vmlaq_f32(v93, v94, v37);
          v50 = vmlaq_f32(v93, v94, v35);
          v51 = vmlaq_f32(v93, v94, v33);
          v52 = vmlaq_f32(v93, v94, v32);
          v53 = vmlaq_f32(v93, v94, v41);
          v54 = vmlaq_f32(v93, v94, v40);
          v55 = vmlaq_f32(v93, v94, v38);
          v56 = vmlaq_f32(v93, v94, v36);
          v57 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v102.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v102.val[2], v102.val[2], 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v21), v20));
          v102.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v103.val[1]), vcvtq_s64_f64(v48)), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v47), vcvtq_s64_f64(v49)), v21), v20));
          v102.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v103.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v103.val[0], v103.val[0], 8uLL))))), v21), v20);
          v103.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v103.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v103.val[2], v103.val[2], 8uLL))))), v21), v20), vminq_s32(v103.val[3], v20)), v57);
          v103.val[0] = vuzp1q_s8(v102.val[0], v102.val[2]);
          v103.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), v21), v20)));
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), v21), v20));
          v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), v21), v20), v102.val[3]);
          v103.val[2] = vuzp1q_s8(a9, v15);
          vst4q_s8(v39, v103);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v58 = 2 * result + 6;
      do
      {
        a9.n128_u16[0] = *(&v12->u16[-3] + v58);
        a9.n128_f32[0] = rintf(v96 + (a9.n128_u32[0] * v97));
        v59 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v59) = -128;
        }

        v60 = &v12->i8[2 * result];
        a9.n128_u16[0] = *(v60 + 1);
        a9.n128_f32[0] = a9.n128_u32[0];
        if (v59 >= 127)
        {
          LOBYTE(v59) = 127;
        }

        v61 = rintf(v96 + (a9.n128_f32[0] * v97));
        v62 = v61;
        if (v61 <= -128)
        {
          LODWORD(v62) = -128;
        }

        if (v62 >= 127)
        {
          LOBYTE(v62) = 127;
        }

        v63 = (v17 + result);
        *v63 = v59;
        v63[1] = v62;
        LOWORD(v61) = *(v60 + 2);
        v64 = rintf(v96 + (LODWORD(v61) * v97));
        v65 = v64;
        if (v64 <= -128)
        {
          LODWORD(v65) = -128;
        }

        LOWORD(v64) = *(v12->i16 + v58);
        v66 = v96 + (LODWORD(v64) * v97);
        if (v65 >= 127)
        {
          v67 = 127;
        }

        else
        {
          v67 = v65;
        }

        a9.n128_f32[0] = rintf(v66);
        v68 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v68) = -128;
        }

        if (v68 >= 127)
        {
          LOBYTE(v68) = 127;
        }

        v63[2] = v67;
        v63[3] = v68;
        result += 4;
        v58 += 8;
      }

      while (result <= v16);
LABEL_35:
      a6 = v18;
      if (result < v14)
      {
        v69 = v14 - result;
        if (v69 < 4)
        {
          v70 = result;
          goto LABEL_52;
        }

        if (v17 + result < v90 + v19 && v12 + 2 * result < v99 + v14)
        {
          v70 = result;
          goto LABEL_52;
        }

        if (v69 >= 0x10)
        {
          v71 = v69 & 0xFFFFFFFFFFFFFFF0;
          v72 = 2 * result;
          v73 = result;
          v74 = v69 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v76 = *(v12 + v72);
            v75 = *(&v12[1] + v72);
            v77 = vcvtq_f32_u32(vmovl_u16(*v76.i8));
            v78 = vcvtq_f32_u32(vmovl_u16(*v75.i8));
            v79 = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v75)));
            v80 = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_high_u16(v76)));
            v81 = vmlaq_f32(v93, v94, v78);
            v82 = vmlaq_f32(v93, v94, v77);
            v83 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))))), v21);
            v15 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), v21);
            v101.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), v21), v20);
            v101.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))))), v21), v20);
            v101.val[2] = vminq_s32(v15, v20);
            v101.val[0] = vminq_s32(v83, v20);
            a9 = vqtbl4q_s8(v101, xmmword_1003E36F0);
            *(v17 + v73) = a9;
            v72 += 32;
            v73 += 16;
            v74 -= 16;
          }

          while (v74);
          if (v69 == v71)
          {
            goto LABEL_3;
          }

          if ((v69 & 0xC) == 0)
          {
            v70 = v71 + result;
            do
            {
LABEL_52:
              a9.n128_u16[0] = v12->u16[v70];
              a9.n128_f32[0] = rintf(v96 + (a9.n128_u32[0] * v97));
              v89 = a9.n128_f32[0];
              if (a9.n128_f32[0] <= -128)
              {
                LODWORD(v89) = -128;
              }

              if (v89 >= 127)
              {
                LOBYTE(v89) = 127;
              }

              *(v17 + v70++) = v89;
            }

            while (v14 != v70);
            goto LABEL_3;
          }
        }

        else
        {
          v71 = 0;
        }

        v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v84 = v71 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
        v85 = v71 + result;
        v86 = 2 * v85;
        do
        {
          v87 = vmlaq_f32(v93, v94, vcvtq_f32_u32(vmovl_u16(*&v12->i8[v86])));
          v88 = vcvtq_f64_f32(vrndx_f32(*v87.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v87, v87, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v88), v15), v21), v20);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v17 + v85) = a9.n128_u32[0];
          v86 += 8;
          v85 += 4;
          v84 += 4;
        }

        while (v84);
        if (v69 != (v69 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v12 = (v12 + v92);
      v17 += v18;
      ++v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021665C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = result;
    v13 = 0;
    v14 = *a7;
    a9.n128_f64[0] = *a8;
    v15.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v92 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v87 = result + 2 * v14;
    v88 = result + 8;
    v89 = 2 * (a2 >> 1);
    v17 = a5;
    v93 = *v10.i32;
    v94 = *v9.i32;
    v90 = vdupq_lane_s32(v10, 0);
    v91 = vdupq_lane_s32(v9, 0);
    do
    {
      v18 = a6;
      v96 = a5 + v13 * a6;
      v19 = v92 * v13;
      a9.n128_u32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_1002273D4(a9, *v15.i8, v97, v12, v17, v14);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v93;
      *v9.i32 = v94;
      if (result > v16)
      {
        goto LABEL_35;
      }

      v22 = result;
      v23 = v16 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v96 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = result, v17 + result < v88 + v19 + 8 * v24 + v26 * 2) ? (v27 = v12 + 2 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = &v12->i16[v26];
          v99 = vld4q_s16(v30);
          v30 += 32;
          v100 = vld4q_s16(v30);
          v31 = vcvtq_f32_s32(vmovl_s16(*v100.val[1].i8));
          v32 = vcvtq_f32_s32(vmovl_s16(*v99.val[2].i8));
          v33 = vcvtq_f32_s32(vmovl_high_s16(v99.val[2]));
          v34 = vcvtq_f32_s32(vmovl_high_s16(v100.val[1]));
          v35 = vcvtq_f32_s32(vmovl_s16(*v100.val[2].i8));
          v36 = vcvtq_f32_s32(vmovl_s16(*v99.val[3].i8));
          v37 = vcvtq_f32_s32(vmovl_high_s16(v100.val[2]));
          v38 = vcvtq_f32_s32(vmovl_high_s16(v99.val[3]));
          v39 = (v17 + v22);
          v40 = vcvtq_f32_s32(vmovl_s16(*v100.val[3].i8));
          v100.val[1] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v99.val[0])));
          v99.val[3] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_s16(*v99.val[0].i8)));
          v41 = vcvtq_f32_s32(vmovl_high_s16(v100.val[3]));
          v42 = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v99.val[1])));
          v99.val[0] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v100.val[0])));
          v100.val[2] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_s16(*v99.val[1].i8)));
          v100.val[0] = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_s16(*v100.val[0].i8)));
          v43 = vmlaq_f32(v90, v91, v34);
          v100.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
          v44 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
          v99.val[2] = vmlaq_f32(v90, v91, v31);
          v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[1].i8)));
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[1], v100.val[1], 8uLL))));
          v100.val[1] = vcvtq_f64_f32(vrndx_f32(*v100.val[0].i8));
          v47 = vcvtq_f64_f32(vrndx_f32(*v99.val[0].i8));
          v48 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[0], v100.val[0], 8uLL)));
          v100.val[3] = vmaxq_s32(vuzp1q_s32(v100.val[3], v44), v21);
          v100.val[0] = vminq_s32(vmaxq_s32(vuzp1q_s32(v45, v46), v21), v20);
          v49 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v99.val[0], v99.val[0], 8uLL)));
          v99.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v99.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v99.val[3], v99.val[3], 8uLL))))), v21), v20), v100.val[0]);
          v100.val[0] = vmlaq_f32(v90, v91, v37);
          v50 = vmlaq_f32(v90, v91, v35);
          v51 = vmlaq_f32(v90, v91, v33);
          v52 = vmlaq_f32(v90, v91, v32);
          v53 = vmlaq_f32(v90, v91, v41);
          v54 = vmlaq_f32(v90, v91, v40);
          v55 = vmlaq_f32(v90, v91, v38);
          v56 = vmlaq_f32(v90, v91, v36);
          v57 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v99.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v99.val[2], v99.val[2], 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v21), v20));
          v99.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v100.val[1]), vcvtq_s64_f64(v48)), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v47), vcvtq_s64_f64(v49)), v21), v20));
          v99.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[0], v100.val[0], 8uLL))))), v21), v20);
          v100.val[1] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v100.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v100.val[2], v100.val[2], 8uLL))))), v21), v20), vminq_s32(v100.val[3], v20)), v57);
          v100.val[0] = vuzp1q_s8(v99.val[0], v99.val[2]);
          v100.val[3] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL))))), v21), v20)));
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51, v51, 8uLL))))), v21), v20));
          v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL))))), v21), v20), v99.val[3]);
          v100.val[2] = vuzp1q_s8(a9, v15);
          vst4q_s8(v39, v100);
          v22 += 64;
          v26 += 64;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v58 = 2 * result + 6;
      do
      {
        a9.n128_u16[0] = *(&v12->u16[-3] + v58);
        a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
        a9.n128_f32[0] = rintf(v93 + (a9.n128_i32[0] * v94));
        v59 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v59) = -128;
        }

        v60 = &v12->i8[2 * result];
        a9.n128_u16[0] = *(v60 + 1);
        a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
        a9.n128_f32[0] = rintf(v93 + (a9.n128_i32[0] * v94));
        if (v59 >= 127)
        {
          LOBYTE(v59) = 127;
        }

        v61 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v61) = -128;
        }

        if (v61 >= 127)
        {
          LOBYTE(v61) = 127;
        }

        v62 = (v17 + result);
        *v62 = v59;
        v62[1] = v61;
        a9.n128_u16[0] = *(v60 + 2);
        a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
        a9.n128_f32[0] = rintf(v93 + (a9.n128_i32[0] * v94));
        v63 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v63) = -128;
        }

        a9.n128_u16[0] = *(v12->u16 + v58);
        a9 = vmovl_s16(a9.n128_u64[0]);
        a9.n128_f32[0] = v93 + (a9.n128_i32[0] * v94);
        if (v63 >= 127)
        {
          v64 = 127;
        }

        else
        {
          v64 = v63;
        }

        a9.n128_f32[0] = rintf(a9.n128_f32[0]);
        v65 = a9.n128_f32[0];
        if (a9.n128_f32[0] <= -128)
        {
          LODWORD(v65) = -128;
        }

        if (v65 >= 127)
        {
          LOBYTE(v65) = 127;
        }

        v62[2] = v64;
        v62[3] = v65;
        result += 4;
        v58 += 8;
      }

      while (result <= v16);
LABEL_35:
      a6 = v18;
      if (result < v14)
      {
        v66 = v14 - result;
        if (v66 < 4)
        {
          v67 = result;
          goto LABEL_52;
        }

        if (v17 + result < v87 + v19 && v12 + 2 * result < v96 + v14)
        {
          v67 = result;
          goto LABEL_52;
        }

        if (v66 >= 0x10)
        {
          v68 = v66 & 0xFFFFFFFFFFFFFFF0;
          v69 = 2 * result;
          v70 = result;
          v71 = v66 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v73 = *(v12 + v69);
            v72 = *(&v12[1] + v69);
            v74 = vcvtq_f32_s32(vmovl_s16(*v73.i8));
            v75 = vcvtq_f32_s32(vmovl_s16(*v72.i8));
            v76 = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v72)));
            v77 = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_high_s16(v73)));
            v78 = vmlaq_f32(v90, v91, v75);
            v79 = vmlaq_f32(v90, v91, v74);
            v80 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v79.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v79, v79, 8uLL))))), v21);
            v15 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))))), v21);
            v98.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v76.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v76, v76, 8uLL))))), v21), v20);
            v98.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v77.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v77, v77, 8uLL))))), v21), v20);
            v98.val[2] = vminq_s32(v15, v20);
            v98.val[0] = vminq_s32(v80, v20);
            a9 = vqtbl4q_s8(v98, xmmword_1003E36F0);
            *(v17 + v70) = a9;
            v69 += 32;
            v70 += 16;
            v71 -= 16;
          }

          while (v71);
          if (v66 == v68)
          {
            goto LABEL_3;
          }

          if ((v66 & 0xC) == 0)
          {
            v67 = v68 + result;
            do
            {
LABEL_52:
              a9.n128_u16[0] = v12->u16[v67];
              a9 = vmovl_s16(a9.n128_u64[0]);
              a9.n128_f32[0] = rintf(v93 + (a9.n128_i32[0] * v94));
              v86 = a9.n128_f32[0];
              if (a9.n128_f32[0] <= -128)
              {
                LODWORD(v86) = -128;
              }

              if (v86 >= 127)
              {
                LOBYTE(v86) = 127;
              }

              *(v17 + v67++) = v86;
            }

            while (v14 != v67);
            goto LABEL_3;
          }
        }

        else
        {
          v68 = 0;
        }

        v67 = (v66 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v81 = v68 - (v66 & 0xFFFFFFFFFFFFFFFCLL);
        v82 = v68 + result;
        v83 = 2 * v82;
        do
        {
          v84 = vmlaq_f32(v90, v91, vcvtq_f32_s32(vmovl_s16(*&v12->i8[v83])));
          v85 = vcvtq_f64_f32(vrndx_f32(*v84.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84, v84, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v85), v15), v21), v20);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v17 + v82) = a9.n128_u32[0];
          v83 += 8;
          v82 += 4;
          v81 += 4;
        }

        while (v81);
        if (v66 != (v66 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v12 = (v12 + v89);
      v17 += v18;
      ++v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100216EEC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = result;
    v13 = 0;
    v14 = *a7;
    a9.n128_f64[0] = *a8;
    v15.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v75 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v70 = result + 4 * v14;
    v71 = result + 16;
    v72 = 4 * (a2 >> 2);
    v17 = a5;
    v76 = *v10.i32;
    v77 = *v9.i32;
    v73 = vdupq_lane_s32(v10, 0);
    v74 = vdupq_lane_s32(v9, 0);
    do
    {
      v18 = a6;
      v79 = a5 + v13 * a6;
      v19 = v75 * v13;
      a9.n128_u32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100227600(a9, *v15.i8, v80, v12, v17, v14);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v76;
      *v9.i32 = v77;
      if (result > v16)
      {
        goto LABEL_35;
      }

      v21 = result;
      v22 = v16 - result;
      if (v22 > 0x3B && ((v23 = v22 >> 2, v24 = v79 + 4 + (v22 & 0xFFFFFFFFFFFFFFFCLL) + result, v25 = result, v17 + result < v71 + v19 + 16 * v23 + v25 * 4) ? (v26 = v12 + 4 * result >= v24) : (v26 = 1), v26))
      {
        v27 = v23 + 1;
        result = result + 4 * (v27 & 0x7FFFFFFFFFFFFFF0);
        v28 = v27 & 0x7FFFFFFFFFFFFFF0;
        v29.i64[0] = 0x7F0000007FLL;
        v29.i64[1] = 0x7F0000007FLL;
        do
        {
          v30 = &v12->i32[v25];
          v31 = &v12[8].i32[v25];
          v32 = &v12[12].i32[v25];
          v81 = vld4q_f32(v30);
          v30 += 16;
          v83 = vld4q_f32(v31);
          v84 = vld4q_f32(v32);
          v85 = vld4q_f32(v30);
          v33 = vcvtq_f32_s32(v83.val[0]);
          v34 = vcvtq_f32_s32(v81.val[0]);
          v35 = vcvtq_f32_s32(v81.val[1]);
          v36 = vcvtq_f32_s32(v85.val[0]);
          v37 = vcvtq_f32_s32(v83.val[2]);
          v38 = vcvtq_f32_s32(v84.val[2]);
          v39 = vcvtq_f32_s32(v81.val[2]);
          v81.val[1] = vcvtq_f32_s32(v81.val[3]);
          v81.val[2] = vcvtq_f32_s32(v84.val[3]);
          v81.val[3] = vcvtq_f32_s32(v83.val[3]);
          v40 = (v17 + v21);
          v81.val[0] = vcvtq_f32_s32(v85.val[2]);
          v83.val[0] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v83.val[1]));
          v83.val[2] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v84.val[1]));
          v84.val[2] = vmlaq_f32(v73, v74, v35);
          v84.val[3] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v85.val[1]));
          v85.val[0] = vmlaq_f32(v73, v74, v34);
          v85.val[1] = vmlaq_f32(v73, v74, v36);
          v84.val[1] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v84.val[0]));
          v83.val[3] = vmlaq_f32(v73, v74, v33);
          v20.i64[0] = 0x7F0000007FLL;
          v20.i64[1] = 0x7F0000007FLL;
          v41 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83.val[2], v83.val[2], 8uLL)))));
          v84.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84.val[1], v84.val[1], 8uLL)))));
          v83.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[1].f32)));
          v84.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83.val[3], v83.val[3], 8uLL))))), v20);
          v85.val[2] = vmaxq_s32(v84.val[0], v20);
          v83.val[3] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84.val[2], v84.val[2], 8uLL))))), v20);
          v84.val[2] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[1], v85.val[1], 8uLL)));
          v85.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83.val[0], v83.val[0], 8uLL))))), v20);
          v83.val[0] = vminq_s32(v83.val[3], v29);
          v84.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.val[3].i8)));
          v83.val[3] = vmlaq_f32(v73, v74, v81.val[3]);
          v81.val[3] = vmlaq_f32(v73, v74, v81.val[2]);
          v81.val[2] = vmlaq_f32(v73, v74, v81.val[1]);
          v81.val[1] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84.val[3], v84.val[3], 8uLL)));
          v84.val[3] = vmlaq_f32(v73, v74, vcvtq_f32_s32(v85.val[3]));
          v42 = vmlaq_f32(v73, v74, v39);
          v85.val[3] = vmlaq_f32(v73, v74, v81.val[0]);
          v81.val[0] = vmlaq_f32(v73, v74, v38);
          v43 = vmlaq_f32(v73, v74, v37);
          v83.val[0] = vuzp1q_s16(v83.val[0], vminq_s32(vmaxq_s32(vuzp1q_s32(v84.val[0], vcvtq_s64_f64(v81.val[1])), v20), v29));
          v84.val[0] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[0], v85.val[0], 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(v83.val[2], vcvtq_s64_f64(v84.val[2])), v20), v29)), vuzp1q_s16(vminq_s32(v84.val[1], v29), vminq_s32(v85.val[2], v29)));
          v84.val[1] = vuzp1q_s8(v83.val[0], vuzp1q_s16(vminq_s32(v85.val[1], v29), vminq_s32(vmaxq_s32(v41, v20), v29)));
          v84.val[2] = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v85.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v85.val[3], v85.val[3], 8uLL))))), v20), v29)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81.val[0], v81.val[0], 8uLL))))), v20), v29)));
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81.val[2], v81.val[2], 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84.val[3], v84.val[3], 8uLL))))), v20), v29));
          v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83.val[3], v83.val[3], 8uLL))))), v20), v29), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81.val[3], v81.val[3], 8uLL))))), v20), v29));
          v84.val[3] = vuzp1q_s8(a9, v15);
          vst4q_s8(v40, v84);
          v21 += 64;
          v25 += 64;
          v28 -= 16;
        }

        while (v28);
        if (v27 == (v27 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v44 = 4 * result + 12;
      do
      {
        v45 = rintf(v76 + (*(&v12->i32[-3] + v44) * v77));
        if (v45 <= -128)
        {
          LODWORD(v45) = -128;
        }

        v46 = &v12->i32[result];
        if (v45 >= 127)
        {
          LOBYTE(v45) = 127;
        }

        v47 = rintf(v76 + (v46[1] * v77));
        if (v47 <= -128)
        {
          LODWORD(v47) = -128;
        }

        if (v47 >= 127)
        {
          LOBYTE(v47) = 127;
        }

        v48 = (v17 + result);
        *v48 = v45;
        v48[1] = v47;
        v49 = rintf(v76 + (v46[2] * v77));
        if (v49 <= -128)
        {
          LODWORD(v49) = -128;
        }

        if (v49 >= 127)
        {
          v50 = 127;
        }

        else
        {
          v50 = v49;
        }

        v51 = rintf(v76 + (*(v12->i32 + v44) * v77));
        if (v51 <= -128)
        {
          LODWORD(v51) = -128;
        }

        if (v51 >= 127)
        {
          LOBYTE(v51) = 127;
        }

        v48[2] = v50;
        v48[3] = v51;
        result += 4;
        v44 += 16;
      }

      while (result <= v16);
LABEL_35:
      a6 = v18;
      v52.i64[0] = 0x7F0000007FLL;
      v52.i64[1] = 0x7F0000007FLL;
      if (result < v14)
      {
        v53 = v14 - result;
        if (v53 < 4)
        {
          v54 = result;
          goto LABEL_52;
        }

        if (v17 + result < v70 + v19 && v12 + 4 * result < v79 + v14)
        {
          v54 = result;
          goto LABEL_52;
        }

        if (v53 >= 0x10)
        {
          v55 = v53 & 0xFFFFFFFFFFFFFFF0;
          v56 = 4 * result;
          v57 = result;
          v58 = v53 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v59 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(&v12[3] + v56)));
            v60 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(&v12[2] + v56)));
            v61 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(&v12[1] + v56)));
            v62 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(v12 + v56)));
            v63 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), v20);
            v15 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))), v20);
            v82.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL))))), v20), v52);
            v82.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL))))), v20), v52);
            v82.val[1] = vminq_s32(v15, v52);
            v82.val[0] = vminq_s32(v63, v52);
            a9 = vqtbl4q_s8(v82, xmmword_1003E36F0);
            *(v17 + v57) = a9;
            v56 += 64;
            v57 += 16;
            v58 -= 16;
          }

          while (v58);
          if (v53 == v55)
          {
            goto LABEL_3;
          }

          if ((v53 & 0xC) == 0)
          {
            v54 = v55 + result;
            do
            {
LABEL_52:
              v69 = rintf(v76 + (v12->i32[v54] * v77));
              if (v69 <= -128)
              {
                LODWORD(v69) = -128;
              }

              if (v69 >= 127)
              {
                LOBYTE(v69) = 127;
              }

              *(v17 + v54++) = v69;
            }

            while (v14 != v54);
            goto LABEL_3;
          }
        }

        else
        {
          v55 = 0;
        }

        v54 = (v53 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v64 = v55 - (v53 & 0xFFFFFFFFFFFFFFFCLL);
        v65 = v55 + result;
        v66 = 4 * v65;
        do
        {
          v67 = vmlaq_f32(v73, v74, vcvtq_f32_s32(*(v12 + v66)));
          v68 = vcvtq_f64_f32(vrndx_f32(*v67.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v67, v67, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v68), v15), v20), v52);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v17 + v65) = a9.n128_u32[0];
          v66 += 16;
          v65 += 4;
          v64 += 4;
        }

        while (v64);
        if (v53 != (v53 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v12 = (v12 + v72);
      v17 += v18;
      ++v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100217730(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = result;
    v13 = 0;
    v14 = *a7;
    a9.n128_f64[0] = *a8;
    v15.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v76 = a2 & 0xFFFFFFFFFFFFFFFCLL;
    v71 = result + 4 * v14;
    v72 = result + 16;
    v73 = 4 * (a2 >> 2);
    v17 = a5;
    v77 = *v10.i32;
    v78 = *v9.i32;
    v74 = vdupq_lane_s32(v10, 0);
    v75 = vdupq_lane_s32(v9, 0);
    do
    {
      v18 = a6;
      v80 = a5 + v13 * a6;
      v19 = v76 * v13;
      a9.n128_u32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100227848(a9, *v15.i8, &v81, v12, v17, v14);
      v20.i64[0] = 0x7F0000007FLL;
      v20.i64[1] = 0x7F0000007FLL;
      v21.i64[0] = 0x7F0000007FLL;
      v21.i64[1] = 0x7F0000007FLL;
      *v10.i32 = v77;
      *v9.i32 = v78;
      if (result > v16)
      {
        goto LABEL_35;
      }

      v22 = result;
      v23 = v16 - result;
      if (v23 > 0x3B && ((v24 = v23 >> 2, v25 = v80 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result, v26 = 4 * result, v17 + result < v72 + v19 + 16 * v24 + v26) ? (v27 = v12->u64 + 4 * result >= v25) : (v27 = 1), v27))
      {
        v28 = v24 + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF0);
        v29 = v28 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v30 = vmlaq_f32(v74, v75, *(v12 + v26 + 32));
          v31 = vmlaq_f32(v74, v75, *(v12 + v26 + 48));
          v32 = vmlaq_f32(v74, v75, *(v12 + v26 + 16));
          v33 = vmlaq_f32(v74, v75, *(v12 + v26));
          v34 = vmlaq_f32(v74, v75, *(v12 + v26 + 96));
          v35 = vmlaq_f32(v74, v75, *(v12 + v26 + 112));
          v36 = vmlaq_f32(v74, v75, *(v12 + v26 + 64));
          v37 = vmlaq_f32(v74, v75, *(v12 + v26 + 80));
          v38 = vmlaq_f32(v74, v75, *(v12 + v26 + 160));
          v39 = vmlaq_f32(v74, v75, *(v12 + v26 + 176));
          v40 = vmlaq_f32(v74, v75, *(v12 + v26 + 128));
          v41 = vmlaq_f32(v74, v75, *(v12 + v26 + 144));
          v42 = vmlaq_f32(v74, v75, *(v12 + v26 + 224));
          v43 = vmlaq_f32(v74, v75, *(v12 + v26 + 240));
          v44 = vmlaq_f32(v74, v75, *(v12 + v26 + 192));
          v45 = vmlaq_f32(v74, v75, *(v12 + v26 + 208));
          a9 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), v21), v20)));
          v46 = v17 + v22;
          *v46 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), v21), v20)));
          *(v46 + 16) = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), v21), v20)));
          v15 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), v21), v20)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL))))), v21), v20), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), v21), v20)));
          *(v46 + 32) = v15;
          *(v46 + 48) = a9;
          v22 += 64;
          v26 += 256;
          v29 -= 16;
        }

        while (v29);
        if (v28 == (v28 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v47 = 4 * result + 12;
      do
      {
        v48 = rintf(v77 + (*(&v12->f32[-3] + v47) * v78));
        if (v48 <= -128)
        {
          LODWORD(v48) = -128;
        }

        v49 = &v12->f32[result];
        v50 = rintf(v77 + (v49[1] * v78));
        if (v48 >= 127)
        {
          LOBYTE(v48) = 127;
        }

        if (v50 <= -128)
        {
          LODWORD(v50) = -128;
        }

        if (v50 >= 127)
        {
          LOBYTE(v50) = 127;
        }

        v51 = (v17 + result);
        *v51 = v48;
        v51[1] = v50;
        v52 = rintf(v77 + (v49[2] * v78));
        if (v52 <= -128)
        {
          LODWORD(v52) = -128;
        }

        if (v52 >= 127)
        {
          v53 = 127;
        }

        else
        {
          v53 = v52;
        }

        v54 = rintf(v77 + (*(v12->f32 + v47) * v78));
        if (v54 <= -128)
        {
          LODWORD(v54) = -128;
        }

        if (v54 >= 127)
        {
          LOBYTE(v54) = 127;
        }

        v51[2] = v53;
        v51[3] = v54;
        result += 4;
        v47 += 16;
      }

      while (result <= v16);
LABEL_35:
      a6 = v18;
      if (result < v14)
      {
        v55 = v14 - result;
        if (v55 < 4)
        {
          v56 = result;
          goto LABEL_52;
        }

        if (v17 + result < v71 + v19 && v12->u64 + 4 * result < v80 + v14)
        {
          v56 = result;
          goto LABEL_52;
        }

        if (v55 >= 0x10)
        {
          v57 = v55 & 0xFFFFFFFFFFFFFFF0;
          v58 = 4 * result;
          v59 = result;
          v60 = v55 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v61 = vmlaq_f32(v74, v75, *(v12 + v58 + 32));
            v62 = vmlaq_f32(v74, v75, *(v12 + v58 + 16));
            v63 = vmlaq_f32(v74, v75, *(v12 + v58));
            v64 = vmlaq_f32(v74, v75, *(v12 + v58 + 48));
            v15 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), v21);
            v82.val[2] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))), v21), v20);
            v82.val[1] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), v21), v20);
            v82.val[0] = vminq_s32(v15, v20);
            v82.val[3] = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))))), v21), v20);
            a9 = vqtbl4q_s8(v82, xmmword_1003E36F0);
            *(v17 + v59) = a9;
            v58 += 64;
            v59 += 16;
            v60 -= 16;
          }

          while (v60);
          if (v55 == v57)
          {
            goto LABEL_3;
          }

          if ((v55 & 0xC) == 0)
          {
            v56 = v57 + result;
            do
            {
LABEL_52:
              v70 = rintf(v77 + (v12->f32[v56] * v78));
              if (v70 <= -128)
              {
                LODWORD(v70) = -128;
              }

              if (v70 >= 127)
              {
                LOBYTE(v70) = 127;
              }

              *(v17 + v56++) = v70;
            }

            while (v14 != v56);
            goto LABEL_3;
          }
        }

        else
        {
          v57 = 0;
        }

        v56 = (v55 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v65 = v57 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
        v66 = v57 + result;
        v67 = 4 * v66;
        do
        {
          v68 = vmlaq_f32(v74, v75, *(v12 + v67));
          v69 = vcvtq_f64_f32(vrndx_f32(*v68.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v68, v68, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v69), v15), v21), v20);
          a9.n128_u64[0] = vmovn_s32(a9);
          a9.n128_u64[0] = vuzp1_s8(a9.n128_u64[0], a9.n128_u64[0]);
          *(v17 + v66) = a9.n128_u32[0];
          v67 += 16;
          v66 += 4;
          v65 += 4;
        }

        while (v65);
        if (v55 != (v55 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v12 = (v12 + v73);
      v17 += v18;
      ++v13;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_100217EF0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, double a9, double a10, float64x2_t a11, int16x8_t a12, __n128 a13, int32x4_t a14)
{
  v14 = a7[1];
  if (v14)
  {
    v15 = result;
    v16 = 0;
    v17 = *a7;
    v18 = *a8;
    v19 = a8[1];
    v20 = v17 - 4;
    v64 = result + 8 * v17;
    v65 = result + 32;
    v66 = 8 * (a2 >> 3);
    v67 = a2 & 0xFFFFFFFFFFFFFFF8;
    v21 = a5;
    v62 = v19;
    v63 = v18;
    v71 = v19;
    v72 = v18;
    v69 = vdupq_lane_s64(COERCE__INT64(v19), 0);
    v70 = vdupq_lane_s64(COERCE__INT64(v18), 0);
    do
    {
      v22 = a6;
      v73 = a5 + v16 * a6;
      v23 = v67 * v16;
      result = sub_100227A88(v18, v19, a11.f64[0], *a12.i64, a13.n128_f64[0], a14, v74, v15, v21, v17);
      v25 = v71;
      v24 = v72;
      if (result > v20)
      {
        goto LABEL_35;
      }

      v26 = result;
      v27 = v20 - result;
      if (v27 > 0x3B && ((v28 = v27 >> 2, v29 = v73 + 4 + (v27 & 0xFFFFFFFFFFFFFFFCLL) + result, v30 = 8 * result, v21 + result < v65 + v23 + 32 * v28 + v30) ? (v31 = &v15->f64[result] >= v29) : (v31 = 1), v31))
      {
        v32 = v28 + 1;
        result = result + 4 * (v32 & 0x7FFFFFFFFFFFFFF0);
        v33 = v32 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          a14 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 320)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 336)))));
          v34 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 352)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 368)))));
          v35.i64[0] = 0x7F0000007FLL;
          v35.i64[1] = 0x7F0000007FLL;
          v36.i64[0] = 0x7F0000007FLL;
          v36.i64[1] = 0x7F0000007FLL;
          v37 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 384)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 400))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 416)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 432))))), v35), v36)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 448)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 464))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 480)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 496))))), v35), v36)));
          v38 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 256)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 272))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 288)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 304))))), v35), v36));
          a13 = vuzp1q_s8(vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 128)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 144))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 160)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 176))))), v35), v36)), vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 192)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 208))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 224)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 240))))), v35), v36)));
          a12 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 48))))), v35), v36);
          a11 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 16))))), v35), v36), a12);
          v39 = v21 + v26;
          *v39 = vuzp1q_s8(a11, vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 80))))), v35), v36), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v30 + 112))))), v35), v36)));
          *(v39 + 16) = a13;
          *(v39 + 32) = vuzp1q_s8(v38, vuzp1q_s16(vminq_s32(vmaxq_s32(a14, v35), v36), vminq_s32(vmaxq_s32(v34, v35), v36)));
          *(v39 + 48) = v37;
          v26 += 64;
          v30 += 512;
          v33 -= 16;
        }

        while (v33);
        v19 = v62;
        v18 = v63;
        v25 = v71;
        v24 = v72;
        if (v32 == (v32 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_35;
        }
      }

      else
      {
        result = result;
      }

      v40 = 8 * result + 24;
      do
      {
        v41 = rint(v25 + *(&v15[-1] + v40 - 8) * v24);
        if (v41 <= -128)
        {
          LODWORD(v41) = -128;
        }

        v42 = &v15->f64[result];
        v43 = rint(v25 + v42[1] * v24);
        if (v41 >= 127)
        {
          LOBYTE(v41) = 127;
        }

        if (v43 <= -128)
        {
          LODWORD(v43) = -128;
        }

        if (v43 >= 127)
        {
          LOBYTE(v43) = 127;
        }

        v44 = (v21 + result);
        *v44 = v41;
        v44[1] = v43;
        v45 = rint(v25 + v42[2] * v24);
        if (v45 <= -128)
        {
          LODWORD(v45) = -128;
        }

        if (v45 >= 127)
        {
          v46 = 127;
        }

        else
        {
          v46 = v45;
        }

        v47 = rint(v25 + *(v15->f64 + v40) * v24);
        if (v47 <= -128)
        {
          LODWORD(v47) = -128;
        }

        if (v47 >= 127)
        {
          LOBYTE(v47) = 127;
        }

        v44[2] = v46;
        v44[3] = v47;
        result += 4;
        v40 += 32;
      }

      while (result <= v20);
LABEL_35:
      a6 = v22;
      v48.i64[0] = 0x7F0000007FLL;
      v48.i64[1] = 0x7F0000007FLL;
      v49.i64[0] = 0x7F0000007FLL;
      v49.i64[1] = 0x7F0000007FLL;
      if (result < v17)
      {
        v50 = v17 - result;
        if (v50 < 4)
        {
          v51 = result;
          goto LABEL_52;
        }

        if (v21 + result < v64 + v23 && &v15->f64[result] < v73 + v17)
        {
          v51 = result;
          goto LABEL_52;
        }

        if (v50 >= 0x10)
        {
          v52 = v50 & 0xFFFFFFFFFFFFFFF0;
          v53 = 8 * result;
          v54 = result;
          v55 = v50 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            a11 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 48))))), v48);
            a12 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 16))))), v48), v49);
            a13 = vminq_s32(a11, v49);
            a14 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 80))))), v48), v49);
            v56 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v53 + 112))))), v48), v49);
            *(v21 + v54) = vqtbl4q_s8(*a12.i8, xmmword_1003E36F0);
            v53 += 128;
            v54 += 16;
            v55 -= 16;
          }

          while (v55);
          if (v50 == v52)
          {
            goto LABEL_3;
          }

          if ((v50 & 0xC) == 0)
          {
            v51 = v52 + result;
            do
            {
LABEL_52:
              v61 = rint(v25 + v15->f64[v51] * v24);
              if (v61 <= -128)
              {
                LODWORD(v61) = -128;
              }

              if (v61 >= 127)
              {
                LOBYTE(v61) = 127;
              }

              *(v21 + v51++) = v61;
            }

            while (v17 != v51);
            goto LABEL_3;
          }
        }

        else
        {
          v52 = 0;
        }

        v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v57 = v52 - (v50 & 0xFFFFFFFFFFFFFFFCLL);
        v58 = v52 + result;
        v59 = 8 * v58;
        do
        {
          a11 = vmlaq_f64(v69, v70, *(v15 + v59));
          v60 = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(a11)), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v69, v70, *(v15 + v59 + 16))))), v48), v49));
          *(v21 + v58) = vuzp1_s8(v60, v60).u32[0];
          v59 += 32;
          v58 += 4;
          v57 += 4;
        }

        while (v57);
        if (v50 != (v50 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_52;
        }
      }

LABEL_3:
      v15 = (v15 + v66);
      v21 += v22;
      ++v16;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1002186E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, int16x8_t a9)
{
  v101 = result;
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = 0;
    v14 = *a7;
    a9.i64[0] = *a8;
    v15.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v98 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v92 = &a5->i8[2 * v14];
    v93 = &a5->i64[1];
    v94 = a2;
    v95 = 2 * (a6 >> 1);
    v17 = result;
    v99 = *v10.i32;
    v100 = *v9.i32;
    v96 = vdupq_lane_s32(v10, 0);
    v97 = vdupq_lane_s32(v9, 0);
    do
    {
      v104 = v11;
      v102 = v101 + v13 * a2;
      v103 = v98 * v13;
      a9.i32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100227CF4(a9, *v15.i8, v105, v17, v12, v14);
      v18.i64[0] = 0xFFFF0000FFFFLL;
      v18.i64[1] = 0xFFFF0000FFFFLL;
      *v10.i32 = v99;
      *v9.i32 = v100;
      if (result > v16)
      {
        goto LABEL_26;
      }

      v19 = result;
      v20 = v16 - result;
      if (v20 > 0x3B && ((v21 = result, v12->u64 + v21 * 2 < v102 + 4 + (v20 & 0xFFFFFFFFFFFFFFFCLL) + result) ? (v22 = v17 + result >= &v93[v20 >> 2] + 2 * result + v103) : (v22 = 1), v22))
      {
        v23 = (v20 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = (v17 + v19);
          v106 = vld4q_s8(v25);
          v26 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[0], xmmword_1003E3700));
          v27 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[0], xmmword_1003E3710));
          v28 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[0], xmmword_1003E3720));
          v29 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[1], xmmword_1003E3710));
          v30 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[1], xmmword_1003E3700));
          v31 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[1], xmmword_1003E3720));
          v32 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[1], xmmword_1003E3730));
          v33 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[2], xmmword_1003E3720));
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[2], xmmword_1003E3730));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[2], xmmword_1003E3700));
          v36 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[2], xmmword_1003E3710));
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[3], xmmword_1003E3720));
          v38 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[3], xmmword_1003E3730));
          v39 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[3], xmmword_1003E3710));
          v40 = vcvtq_f32_u32(vqtbl1q_s8(v106.val[3], xmmword_1003E3700));
          v41 = &v12->i16[v21];
          v106.val[0] = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v106.val[0], xmmword_1003E3730)));
          v106.val[1] = vmlaq_f32(v96, v97, v28);
          v42 = vmlaq_f32(v96, v97, v32);
          v43 = vmlaq_f32(v96, v97, v31);
          v44 = vmlaq_f32(v96, v97, v30);
          v45 = vmlaq_f32(v96, v97, v29);
          v106.val[3] = vmlaq_f32(v96, v97, v27);
          v106.val[2] = vmlaq_f32(v96, v97, v26);
          v46 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106.val[1], v106.val[1], 8uLL)))));
          v106.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106.val[2], v106.val[2], 8uLL))))), 0);
          v106.val[2] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0);
          v47 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0);
          v48 = vmlaq_f32(v96, v97, v40);
          v49 = vmlaq_f32(v96, v97, v39);
          v50 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106.val[0], v106.val[0], 8uLL))))), 0), v18);
          v51 = vmlaq_f32(v96, v97, v36);
          v52 = vmlaq_f32(v96, v97, v35);
          v53 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8)));
          v106.val[0] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL)));
          v54 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v18);
          v55 = vcvtq_s64_f64(v106.val[0]);
          v56 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8)));
          v106.val[0].i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
          v57 = vminq_s32(v47, v18);
          v58 = vmaxq_s32(vuzp1q_s32(v53, v55), 0);
          v59 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL))))), 0), v18);
          v60 = vmlaq_f32(v96, v97, v34);
          v61 = vmlaq_f32(v96, v97, v33);
          v62 = vmlaq_f32(v96, v97, v38);
          v63 = vmlaq_f32(v96, v97, v37);
          v64 = vminq_s32(vmaxq_s32(vuzp1q_s32(v56, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[0].i8)))), 0), v18);
          v107.val[0] = vuzp1q_s16(vminq_s32(v106.val[1], v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v106.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v106.val[3], v106.val[3], 8uLL))))), 0), v18));
          v107.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v18), vminq_s32(v106.val[2], v18));
          v107.val[2] = vuzp1q_s16(vminq_s32(v58, v18), v64);
          v107.val[3] = vuzp1q_s16(v59, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v49.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v49, v49, 8uLL))))), 0), v18));
          v106.val[2] = vuzp1q_s16(v57, v54);
          v106.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(v46, 0), v18), v50);
          v15 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))), 0), v18);
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), 0), v18);
          v65 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), 0), v18), a9);
          v106.val[3] = vuzp1q_s16(v15, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL))))), 0), v18));
          vst4q_s16(v41, *(&v106 + 16));
          v41 += 32;
          vst4q_s16(v41, v107);
          v21 += 64;
          v19 += 64;
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

      v66 = &v12->i16[result];
      do
      {
        v67 = v17 + result;
        a9.i8[0] = *(v17 + result);
        *&v68 = rintf(v99 + (a9.u32[0] * v100));
        v69 = *&v68 & ~(*&v68 >> 31);
        LOBYTE(v68) = *(v17 + result + 1);
        *a9.i32 = rintf(v99 + (v68 * v100));
        if (v69 >= 0xFFFF)
        {
          LOWORD(v69) = -1;
        }

        v70 = *a9.i32 & ~(*a9.i32 >> 31);
        if (v70 >= 0xFFFF)
        {
          LOWORD(v70) = -1;
        }

        *v66 = v69;
        v66[1] = v70;
        a9.i8[0] = *(v67 + 2);
        *a9.i32 = rintf(v99 + (a9.u32[0] * v100));
        v71 = *a9.i32 & ~(*a9.i32 >> 31);
        if (v71 >= 0xFFFF)
        {
          LOWORD(v71) = -1;
        }

        a9.i8[0] = *(v67 + 3);
        *a9.i32 = rintf(v99 + (a9.u32[0] * v100));
        v72 = *a9.i32 & ~(*a9.i32 >> 31);
        if (v72 >= 0xFFFF)
        {
          LOWORD(v72) = -1;
        }

        v66[2] = v71;
        v66[3] = v72;
        result += 4;
        v66 += 4;
      }

      while (result <= v16);
LABEL_26:
      a2 = v94;
      if (result < v14)
      {
        v73 = v14 - result;
        if (v73 < 4)
        {
          v74 = result;
          goto LABEL_45;
        }

        if (v12 + 2 * result < v102 + v14 && v17 + result < &v92[v103])
        {
          v74 = result;
          goto LABEL_45;
        }

        if (v73 >= 0x10)
        {
          v76 = v73 & 0xFFFFFFFFFFFFFFF0;
          v77 = 2 * result;
          v78 = result;
          v79 = v73 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v80 = *(v17 + v78);
            v81 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v80, xmmword_1003E3710)));
            v82 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v80, xmmword_1003E3700)));
            v83 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v80, xmmword_1003E3730)));
            v84 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vqtbl1q_s8(v80, xmmword_1003E3720)));
            a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84, v84, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83, v83, 8uLL))))), 0), v18));
            v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), 0), v18));
            v85 = (v12 + v77);
            *v85 = a9;
            v85[1] = v15;
            v78 += 16;
            v77 += 32;
            v79 -= 16;
          }

          while (v79);
          if (v73 == v76)
          {
            goto LABEL_3;
          }

          if ((v73 & 0xC) == 0)
          {
            v74 = v76 + result;
            do
            {
LABEL_45:
              a9.i8[0] = *(v17 + v74);
              *a9.i32 = rintf(v99 + (a9.u32[0] * v100));
              v91 = *a9.i32 & ~(*a9.i32 >> 31);
              if (v91 >= 0xFFFF)
              {
                LOWORD(v91) = -1;
              }

              v12->i16[v74++] = v91;
            }

            while (v14 != v74);
            goto LABEL_3;
          }
        }

        else
        {
          v76 = 0;
        }

        v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v86 = v76 - (v73 & 0xFFFFFFFFFFFFFFFCLL);
        v87 = v76 + result;
        v88 = 2 * v87;
        do
        {
          a9.i32[0] = *(v17 + v87);
          v89 = vmlaq_f32(v96, v97, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a9.i8))));
          v90 = vcvtq_f64_f32(vrndx_f32(*v89.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v89, v89, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v90), v15), 0), v18);
          *a9.i8 = vmovn_s32(a9);
          *(v12->i64 + v88) = a9.i64[0];
          v87 += 4;
          v88 += 8;
          v86 += 4;
        }

        while (v86);
        if (v73 != (v73 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_45;
        }
      }

LABEL_3:
      v17 += v94;
      v12 = (v12 + v95);
      ++v13;
      v11 = v104 - 1;
    }

    while (v104 != 1);
  }

  return result;
}

uint64_t sub_100218F54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, int16x8_t a9)
{
  v100 = result;
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = 0;
    v14 = *a7;
    a9.i64[0] = *a8;
    v15.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v97 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v91 = &a5->i8[2 * v14];
    v92 = &a5->i64[1];
    v93 = a2;
    v94 = 2 * (a6 >> 1);
    v17 = result;
    v98 = *v10.i32;
    v99 = *v9.i32;
    v95 = vdupq_lane_s32(v10, 0);
    v96 = vdupq_lane_s32(v9, 0);
    do
    {
      v103 = v11;
      v101 = v100 + v13 * a2;
      v102 = v97 * v13;
      a9.i32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100227F1C(a9, *v15.i8, v104, v17, v12, v14);
      v18.i64[0] = 0xFFFF0000FFFFLL;
      v18.i64[1] = 0xFFFF0000FFFFLL;
      *v10.i32 = v98;
      *v9.i32 = v99;
      if (result > v16)
      {
        goto LABEL_26;
      }

      v19 = result;
      v20 = v16 - result;
      if (v20 > 0x3B && ((v21 = result, v12->u64 + v21 * 2 < v101 + 4 + (v20 & 0xFFFFFFFFFFFFFFFCLL) + result) ? (v22 = v17 + result >= &v92[v20 >> 2] + 2 * result + v102) : (v22 = 1), v22))
      {
        v23 = (v20 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF0);
        v24 = v23 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v25 = (v17 + v19);
          v105 = vld4q_s8(v25);
          v26 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[0], xmmword_1003E3740), 0x18uLL);
          v27 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[0], xmmword_1003E3750), 0x18uLL);
          v28 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[0], xmmword_1003E3760), 0x18uLL);
          v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[1], xmmword_1003E3750), 0x18uLL);
          v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[1], xmmword_1003E3740), 0x18uLL);
          v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[1], xmmword_1003E3760), 0x18uLL);
          v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[1], xmmword_1003E3770), 0x18uLL);
          v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[2], xmmword_1003E3760), 0x18uLL);
          v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[2], xmmword_1003E3770), 0x18uLL);
          v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[2], xmmword_1003E3740), 0x18uLL);
          v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[2], xmmword_1003E3750), 0x18uLL);
          v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[3], xmmword_1003E3760), 0x18uLL);
          v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[3], xmmword_1003E3770), 0x18uLL);
          v39 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[3], xmmword_1003E3750), 0x18uLL);
          v40 = vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[3], xmmword_1003E3740), 0x18uLL);
          v41 = &v12->i16[v21];
          v105.val[0] = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v105.val[0], xmmword_1003E3770), 0x18uLL));
          v105.val[1] = vmlaq_f32(v95, v96, v28);
          v42 = vmlaq_f32(v95, v96, v32);
          v43 = vmlaq_f32(v95, v96, v31);
          v44 = vmlaq_f32(v95, v96, v30);
          v45 = vmlaq_f32(v95, v96, v29);
          v105.val[3] = vmlaq_f32(v95, v96, v27);
          v105.val[2] = vmlaq_f32(v95, v96, v26);
          v46 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105.val[1], v105.val[1], 8uLL)))));
          v105.val[1] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105.val[2], v105.val[2], 8uLL))))), 0);
          v105.val[2] = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0);
          v47 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))), 0);
          v48 = vmlaq_f32(v95, v96, v40);
          v49 = vmlaq_f32(v95, v96, v39);
          v50 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105.val[0], v105.val[0], 8uLL))))), 0), v18);
          v51 = vmlaq_f32(v95, v96, v36);
          v52 = vmlaq_f32(v95, v96, v35);
          v53 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.i8)));
          v105.val[0] = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52, v52, 8uLL)));
          v54 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))), 0), v18);
          v55 = vcvtq_s64_f64(v105.val[0]);
          v56 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.i8)));
          v105.val[0].i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
          v57 = vminq_s32(v47, v18);
          v58 = vmaxq_s32(vuzp1q_s32(v53, v55), 0);
          v59 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL))))), 0), v18);
          v60 = vmlaq_f32(v95, v96, v34);
          v61 = vmlaq_f32(v95, v96, v33);
          v62 = vmlaq_f32(v95, v96, v38);
          v63 = vmlaq_f32(v95, v96, v37);
          v64 = vminq_s32(vmaxq_s32(vuzp1q_s32(v56, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[0].i8)))), 0), v18);
          v106.val[0] = vuzp1q_s16(vminq_s32(v105.val[1], v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v105.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v105.val[3], v105.val[3], 8uLL))))), 0), v18));
          v106.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL))))), 0), v18), vminq_s32(v105.val[2], v18));
          v106.val[2] = vuzp1q_s16(vminq_s32(v58, v18), v64);
          v106.val[3] = vuzp1q_s16(v59, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v49.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v49, v49, 8uLL))))), 0), v18));
          v105.val[2] = vuzp1q_s16(v57, v54);
          v105.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(v46, 0), v18), v50);
          v15 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL))))), 0), v18);
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL))))), 0), v18);
          v65 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL))))), 0), v18), a9);
          v105.val[3] = vuzp1q_s16(v15, vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL))))), 0), v18));
          vst4q_s16(v41, *(&v105 + 16));
          v41 += 32;
          vst4q_s16(v41, v106);
          v21 += 64;
          v19 += 64;
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

      v66 = &v12->i16[result];
      do
      {
        v67 = (v17 + result);
        a9.i8[0] = *(v17 + result);
        a9.i64[0] = vmovl_s16(*&vmovl_s8(*a9.i8)).u64[0];
        *a9.i32 = rintf(v98 + (a9.i32[0] * v99));
        v68 = *a9.i32 & ~(*a9.i32 >> 31);
        if (v68 >= 0xFFFF)
        {
          LOWORD(v68) = -1;
        }

        a9.i8[0] = v67[1];
        a9.i64[0] = vmovl_s16(*&vmovl_s8(*a9.i8)).u64[0];
        *a9.i32 = rintf(v98 + (a9.i32[0] * v99));
        v69 = *a9.i32 & ~(*a9.i32 >> 31);
        if (v69 >= 0xFFFF)
        {
          LOWORD(v69) = -1;
        }

        *v66 = v68;
        v66[1] = v69;
        a9.i8[0] = v67[2];
        a9.i64[0] = vmovl_s16(*&vmovl_s8(*a9.i8)).u64[0];
        *a9.i32 = rintf(v98 + (a9.i32[0] * v99));
        v70 = *a9.i32 & ~(*a9.i32 >> 31);
        if (v70 >= 0xFFFF)
        {
          LOWORD(v70) = -1;
        }

        a9.i8[0] = v67[3];
        a9 = vmovl_s16(*&vmovl_s8(*a9.i8));
        *a9.i32 = rintf(v98 + (a9.i32[0] * v99));
        v71 = *a9.i32 & ~(*a9.i32 >> 31);
        if (v71 >= 0xFFFF)
        {
          LOWORD(v71) = -1;
        }

        v66[2] = v70;
        v66[3] = v71;
        result += 4;
        v66 += 4;
      }

      while (result <= v16);
LABEL_26:
      a2 = v93;
      if (result < v14)
      {
        v72 = v14 - result;
        if (v72 < 4)
        {
          v73 = result;
          goto LABEL_45;
        }

        if (v12 + 2 * result < v101 + v14 && v17 + result < &v91[v102])
        {
          v73 = result;
          goto LABEL_45;
        }

        if (v72 >= 0x10)
        {
          v75 = v72 & 0xFFFFFFFFFFFFFFF0;
          v76 = 2 * result;
          v77 = result;
          v78 = v72 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v79 = *(v17 + v77);
            v80 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v79, xmmword_1003E3750), 0x18uLL));
            v81 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v79, xmmword_1003E3740), 0x18uLL));
            v82 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v79, xmmword_1003E3770), 0x18uLL));
            v83 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(v79, xmmword_1003E3760), 0x18uLL));
            a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83, v83, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))))), 0), v18));
            v15 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL))))), 0), v18), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))))), 0), v18));
            v84 = (v12 + v76);
            *v84 = a9;
            v84[1] = v15;
            v77 += 16;
            v76 += 32;
            v78 -= 16;
          }

          while (v78);
          if (v72 == v75)
          {
            goto LABEL_3;
          }

          if ((v72 & 0xC) == 0)
          {
            v73 = v75 + result;
            do
            {
LABEL_45:
              a9.i8[0] = *(v17 + v73);
              a9 = vmovl_s16(*&vmovl_s8(*a9.i8));
              *a9.i32 = rintf(v98 + (a9.i32[0] * v99));
              v90 = *a9.i32 & ~(*a9.i32 >> 31);
              if (v90 >= 0xFFFF)
              {
                LOWORD(v90) = -1;
              }

              v12->i16[v73++] = v90;
            }

            while (v14 != v73);
            goto LABEL_3;
          }
        }

        else
        {
          v75 = 0;
        }

        v73 = (v72 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v85 = v75 - (v72 & 0xFFFFFFFFFFFFFFFCLL);
        v86 = v75 + result;
        v87 = 2 * v86;
        do
        {
          a9.i32[0] = *(v17 + v86);
          v88 = vmlaq_f32(v95, v96, vcvtq_n_f32_s32(vqtbl1q_s8(a9, xmmword_1003E3760), 0x18uLL));
          v89 = vcvtq_f64_f32(vrndx_f32(*v88.i8));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v88, v88, 8uLL))));
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v89), v15), 0), v18);
          *a9.i8 = vmovn_s32(a9);
          *(v12->i64 + v87) = a9.i64[0];
          v86 += 4;
          v87 += 8;
          v85 += 4;
        }

        while (v85);
        if (v72 != (v72 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_45;
        }
      }

LABEL_3:
      v17 += v93;
      v12 = (v12 + v94);
      ++v13;
      v11 = v103 - 1;
    }

    while (v103 != 1);
  }

  return result;
}

uint16x8_t *sub_1002197F0(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v65 = a5 - result;
    v62 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v63 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v64 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v60 = &result->i64[1];
    v61 = &a5->i64[1];
    v18 = 2 * (a6 >> 1);
    v19 = 2 * (a2 >> 1);
    v20 = &a5->i8[4];
    v68 = *v10.i32;
    v69 = *v9.i32;
    v66 = vdupq_lane_s32(v10, 0);
    v67 = vdupq_lane_s32(v9, 0);
    do
    {
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100228144(a9, *v16.i8, &v70, v13, v12, v15);
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      *v10.i32 = v68;
      *v9.i32 = v69;
      if (result <= v17)
      {
        v22 = result;
        v23 = v17 - result;
        if (v23 <= 0x1B)
        {
          goto LABEL_14;
        }

        v24 = v23 >> 2;
        v25 = result;
        v26 = v25 * 2 + 8 * v24;
        if (&v12->i8[v25 * 2] < v60 + v62 * v14 + v26 && v13 + 2 * result < v61 + v63 * v14 + v26)
        {
          goto LABEL_14;
        }

        v28 = v24 + 1;
        v22 = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF8);
        v29 = v28 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v30 = &v13->i16[v25];
          v71 = vld4q_s16(v30);
          v31 = vcvtq_f32_u32(vmovl_u16(*v71.val[0].i8));
          v32 = vcvtq_f32_u32(vmovl_high_u16(v71.val[0]));
          v33 = vcvtq_f32_u32(vmovl_u16(*v71.val[1].i8));
          v34 = vcvtq_f32_u32(vmovl_high_u16(v71.val[1]));
          v35 = vcvtq_f32_u32(vmovl_u16(*v71.val[2].i8));
          v36 = vcvtq_f32_u32(vmovl_high_u16(v71.val[2]));
          v37 = vcvtq_f32_u32(vmovl_u16(*v71.val[3].i8));
          v71.val[0] = vcvtq_f32_u32(vmovl_high_u16(v71.val[3]));
          v38 = &v12->i16[v25];
          v71.val[1] = vmlaq_f32(v66, v67, v32);
          v71.val[2] = vmlaq_f32(v66, v67, v31);
          v71.val[3] = vmlaq_f32(v66, v67, v34);
          v39 = vmlaq_f32(v66, v67, v33);
          v40 = vmlaq_f32(v66, v67, v36);
          v41 = vmlaq_f32(v66, v67, v35);
          v42 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[3], v71.val[3], 8uLL))))), 0);
          v71.val[3] = vmlaq_f32(v66, v67, v71.val[0]);
          v71.val[0] = vmlaq_f32(v66, v67, v37);
          v72.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21), vminq_s32(v42, v21));
          v72.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[2], v71.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[1], v71.val[1], 8uLL))))), 0), v21));
          v16 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[3], v71.val[3], 8uLL))))), 0), v21);
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[0], v71.val[0], 8uLL))))), 0), v21);
          v72.val[3] = vuzp1q_s16(a9, v16);
          v72.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))), 0), v21));
          vst4q_s16(v38, v72);
          v25 += 32;
          v29 -= 8;
        }

        while (v29);
        result = (result + 4 * (v28 & 0x7FFFFFFFFFFFFFF8));
        if (v28 != (v28 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_14:
          v43 = 2 * v22;
          v44 = v20;
          v45 = v13;
          result = v22;
          do
          {
            a9.n128_u16[0] = v45->u16[v22];
            a9.n128_f32[0] = rintf(v68 + (a9.n128_u32[0] * v69));
            v46 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            if (v46 >= 0xFFFF)
            {
              LOWORD(v46) = -1;
            }

            v47 = &v45->i8[v43];
            a9.n128_u16[0] = v45->u16[v43 / 2 + 1];
            a9.n128_f32[0] = rintf(v68 + (a9.n128_u32[0] * v69));
            v48 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            v49 = &v44[v43];
            *(v49 - 2) = v46;
            *(v49 - 1) = v48;
            a9.n128_u16[0] = *(v47 + 2);
            a9.n128_f32[0] = rintf(v68 + (a9.n128_u32[0] * v69));
            v50 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            if (v50 >= 0xFFFF)
            {
              LOWORD(v50) = -1;
            }

            a9.n128_u16[0] = *(v47 + 3);
            a9.n128_f32[0] = rintf(v68 + (a9.n128_u32[0] * v69));
            *&v44[2 * v22] = v50;
            if ((a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31)) >= 0xFFFF)
            {
              v51 = -1;
            }

            else
            {
              v51 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            }

            *(v49 + 1) = v51;
            result = (result + 4);
            v45 = (v45 + 8);
            v44 += 8;
          }

          while (result <= v17);
        }
      }

      if (result < v15)
      {
        v52 = result;
        v53 = v15 - result;
        if (v53 < 8)
        {
          goto LABEL_37;
        }

        if (v65 + v64 * v14 <= 0xF)
        {
          goto LABEL_37;
        }

        v54 = 2 * result;
        v55 = v53 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v56 = *(v13 + v54);
          v57 = vmlaq_f32(v66, v67, vcvtq_f32_u32(vmovl_high_u16(v56)));
          v58 = vmlaq_f32(v66, v67, vcvtq_f32_u32(vmovl_u16(*v56.i8)));
          v16 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL))))), 0), v21);
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL))))), 0), v21), v16);
          *(v12 + v54) = a9;
          v54 += 16;
          v55 -= 8;
        }

        while (v55);
        v52 = (v53 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v53 != (v53 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_37:
          do
          {
            a9.n128_u16[0] = v13->u16[v52];
            a9.n128_f32[0] = rintf(v68 + (a9.n128_u32[0] * v69));
            v59 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            if (v59 >= 0xFFFF)
            {
              LOWORD(v59) = -1;
            }

            v12->i16[v52++] = v59;
          }

          while (v15 != v52);
        }
      }

      v13 = (v13 + v19);
      v12 = (v12 + v18);
      ++v14;
      v20 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

int16x8_t *sub_100219D10(int16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, __n128 a9)
{
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = result;
    v14 = 0;
    v15 = *a7;
    a9.n128_f64[0] = *a8;
    v16.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v16.i64;
    v17 = v15 - 4;
    v65 = a5 - result;
    v62 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v63 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v64 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v60 = &result->i64[1];
    v61 = &a5->i64[1];
    v18 = 2 * (a6 >> 1);
    v19 = 2 * (a2 >> 1);
    v20 = &a5->i8[4];
    v68 = *v10.i32;
    v69 = *v9.i32;
    v66 = vdupq_lane_s32(v10, 0);
    v67 = vdupq_lane_s32(v9, 0);
    do
    {
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_10022838C(a9, *v16.i8, &v70, v13, v12, v15);
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      *v10.i32 = v68;
      *v9.i32 = v69;
      if (result <= v17)
      {
        v22 = result;
        v23 = v17 - result;
        if (v23 <= 0x1B)
        {
          goto LABEL_14;
        }

        v24 = v23 >> 2;
        v25 = result;
        v26 = v25 * 2 + 8 * v24;
        if (&v12->i8[v25 * 2] < v60 + v62 * v14 + v26 && v13 + 2 * result < v61 + v63 * v14 + v26)
        {
          goto LABEL_14;
        }

        v28 = v24 + 1;
        v22 = result + 4 * (v28 & 0x7FFFFFFFFFFFFFF8);
        v29 = v28 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v30 = &v13->i16[v25];
          v71 = vld4q_s16(v30);
          v31 = vcvtq_f32_s32(vmovl_s16(*v71.val[0].i8));
          v32 = vcvtq_f32_s32(vmovl_high_s16(v71.val[0]));
          v33 = vcvtq_f32_s32(vmovl_s16(*v71.val[1].i8));
          v34 = vcvtq_f32_s32(vmovl_high_s16(v71.val[1]));
          v35 = vcvtq_f32_s32(vmovl_s16(*v71.val[2].i8));
          v36 = vcvtq_f32_s32(vmovl_high_s16(v71.val[2]));
          v37 = vcvtq_f32_s32(vmovl_s16(*v71.val[3].i8));
          v71.val[0] = vcvtq_f32_s32(vmovl_high_s16(v71.val[3]));
          v38 = &v12->i16[v25];
          v71.val[1] = vmlaq_f32(v66, v67, v32);
          v71.val[2] = vmlaq_f32(v66, v67, v31);
          v71.val[3] = vmlaq_f32(v66, v67, v34);
          v39 = vmlaq_f32(v66, v67, v33);
          v40 = vmlaq_f32(v66, v67, v36);
          v41 = vmlaq_f32(v66, v67, v35);
          v42 = vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[3], v71.val[3], 8uLL))))), 0);
          v71.val[3] = vmlaq_f32(v66, v67, v71.val[0]);
          v71.val[0] = vmlaq_f32(v66, v67, v37);
          v72.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21), vminq_s32(v42, v21));
          v72.val[0] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[2], v71.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[1], v71.val[1], 8uLL))))), 0), v21));
          v16 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[3], v71.val[3], 8uLL))))), 0), v21);
          a9 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v71.val[0].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v71.val[0], v71.val[0], 8uLL))))), 0), v21);
          v72.val[3] = vuzp1q_s16(a9, v16);
          v72.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))), 0), v21));
          vst4q_s16(v38, v72);
          v25 += 32;
          v29 -= 8;
        }

        while (v29);
        result = (result + 4 * (v28 & 0x7FFFFFFFFFFFFFF8));
        if (v28 != (v28 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_14:
          v43 = 2 * v22;
          v44 = v20;
          v45 = v13;
          result = v22;
          do
          {
            a9.n128_u16[0] = v45->u16[v22];
            a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
            a9.n128_f32[0] = rintf(v68 + (a9.n128_i32[0] * v69));
            v46 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            if (v46 >= 0xFFFF)
            {
              LOWORD(v46) = -1;
            }

            v47 = &v45->i8[v43];
            a9.n128_u16[0] = v45->u16[v43 / 2 + 1];
            a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
            a9.n128_f32[0] = rintf(v68 + (a9.n128_i32[0] * v69));
            v48 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            v49 = &v44[v43];
            *(v49 - 2) = v46;
            *(v49 - 1) = v48;
            a9.n128_u16[0] = *(v47 + 2);
            a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
            a9.n128_f32[0] = rintf(v68 + (a9.n128_i32[0] * v69));
            v50 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            if (v50 >= 0xFFFF)
            {
              LOWORD(v50) = -1;
            }

            a9.n128_u16[0] = *(v47 + 3);
            a9 = vmovl_s16(a9.n128_u64[0]);
            a9.n128_f32[0] = rintf(v68 + (a9.n128_i32[0] * v69));
            *&v44[2 * v22] = v50;
            if ((a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31)) >= 0xFFFF)
            {
              v51 = -1;
            }

            else
            {
              v51 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            }

            *(v49 + 1) = v51;
            result = (result + 4);
            v45 = (v45 + 8);
            v44 += 8;
          }

          while (result <= v17);
        }
      }

      if (result < v15)
      {
        v52 = result;
        v53 = v15 - result;
        if (v53 < 8)
        {
          goto LABEL_37;
        }

        if (v65 + v64 * v14 <= 0xF)
        {
          goto LABEL_37;
        }

        v54 = 2 * result;
        v55 = v53 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v56 = *(v13 + v54);
          v57 = vmlaq_f32(v66, v67, vcvtq_f32_s32(vmovl_high_s16(v56)));
          v58 = vmlaq_f32(v66, v67, vcvtq_f32_s32(vmovl_s16(*v56.i8)));
          v16 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL))))), 0), v21);
          a9 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL))))), 0), v21), v16);
          *(v12 + v54) = a9;
          v54 += 16;
          v55 -= 8;
        }

        while (v55);
        v52 = (v53 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v53 != (v53 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_37:
          do
          {
            a9.n128_u16[0] = v13->u16[v52];
            a9 = vmovl_s16(a9.n128_u64[0]);
            a9.n128_f32[0] = rintf(v68 + (a9.n128_i32[0] * v69));
            v59 = a9.n128_f32[0] & ~(a9.n128_f32[0] >> 31);
            if (v59 >= 0xFFFF)
            {
              LOWORD(v59) = -1;
            }

            v12->i16[v52++] = v59;
          }

          while (v15 != v52);
        }
      }

      v13 = (v13 + v19);
      v12 = (v12 + v18);
      ++v14;
      v20 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021A244(uint64_t result, unint64_t a2, __n128 a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, int16x8_t *a10, unint64_t a11, int *a12, double *a13)
{
  v13 = a12[1];
  if (v13)
  {
    v15 = result;
    v16 = *a12;
    a3.n128_f64[0] = *a13;
    v17 = a13[1];
    *&a7 = *a13;
    *&v17 = v17;
    v18 = v16 - 4;
    v19 = 2 * (a11 >> 1);
    v20 = 4 * (a2 >> 2);
    v51 = v17;
    v52 = *&a7;
    v49 = vdupq_lane_s32(*&v17, 0);
    v50 = vdupq_lane_s32(*&a7, 0);
    do
    {
      a3.n128_u32[0] = LODWORD(a7);
      result = sub_1002285D4(a3, *&v17, &v53, v15, a10, v16);
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      if (result <= v18)
      {
        v22 = result;
        v23 = v18 - result;
        result = result;
        if (v23 <= 0x1B)
        {
          goto LABEL_9;
        }

        v24 = (v23 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v25 = v22;
        v26 = v22;
        v27 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = &v15->i32[v26];
          v54 = vld4q_f32(v28);
          v28 += 16;
          v55 = vld4q_f32(v28);
          v29 = vcvtq_f32_s32(v54.val[1]);
          v30 = vcvtq_f32_s32(v54.val[2]);
          v31 = vcvtq_f32_s32(v54.val[3]);
          v32 = &a10->i16[v25];
          v54.val[0] = vmlaq_f32(v49, v50, vcvtq_f32_s32(v54.val[0]));
          v54.val[1] = vmlaq_f32(v49, v50, vcvtq_f32_s32(v55.val[0]));
          v54.val[2] = vmlaq_f32(v49, v50, v29);
          v54.val[3] = vmlaq_f32(v49, v50, vcvtq_f32_s32(v55.val[1]));
          v55.val[1] = vcvtq_f64_f32(vrndx_f32(*v54.val[1].f32));
          v55.val[0] = vmlaq_f32(v49, v50, v30);
          v33 = vmlaq_f32(v49, v50, vcvtq_f32_s32(v55.val[2]));
          v34 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[1], v54.val[1], 8uLL))));
          v54.val[1] = vmlaq_f32(v49, v50, v31);
          v35 = vmlaq_f32(v49, v50, vcvtq_f32_s32(v55.val[3]));
          v55.val[2] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[2], v54.val[2], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[3], v54.val[3], 8uLL))))), 0), v21));
          v55.val[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[0], v54.val[0], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(v55.val[1]), v34), 0), v21));
          a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), 0), v21);
          v36 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54.val[1], v54.val[1], 8uLL))))), 0), v21), a3);
          v55.val[3] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55.val[0], v55.val[0], 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))))), 0), v21));
          vst4q_s16(v32, *(&v55 + 16));
          v25 += 32;
          v26 += 32;
          v27 -= 8;
        }

        while (v27);
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v37 = 2 * result;
          v38 = 4 * result;
          do
          {
            v39 = vmlaq_f32(v49, v50, vcvtq_f32_s32(*(v15 + v38)));
            a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21);
            a3.n128_u64[0] = vmovn_s32(a3);
            *(a10->i64 + v37) = a3.n128_u64[0];
            result += 4;
            v37 += 8;
            v38 += 16;
          }

          while (result <= v18);
        }
      }

      v17 = v51;
      *&a7 = v52;
      if (result < v16)
      {
        v40 = v16 - result;
        v41 = result;
        if (v40 <= 7)
        {
          goto LABEL_22;
        }

        v41 = (v40 & 0xFFFFFFFFFFFFFFF8) + result;
        v42 = 4 * result;
        v43 = 2 * result;
        v44 = v40 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45 = vmlaq_f32(v49, v50, vcvtq_f32_s32(*(&v15[1] + v42)));
          v46 = vmlaq_f32(v49, v50, vcvtq_f32_s32(*(v15 + v42)));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0), v21));
          *(a10 + v43) = a3;
          v42 += 32;
          v43 += 16;
          v44 -= 8;
        }

        while (v44);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            v47 = rintf(*&v51 + (v15->i32[v41] * v52));
            v48 = v47 & ~(v47 >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            a10->i16[v41++] = v48;
          }

          while (v16 != v41);
        }
      }

      v15 = (v15 + v20);
      a10 = (a10 + v19);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10021A66C(uint64_t result, unint64_t a2, int16x8_t a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, int16x8_t *a10, unint64_t a11, int *a12, double *a13)
{
  v13 = a12[1];
  if (v13)
  {
    v15 = result;
    v16 = *a12;
    a3.i64[0] = *a13;
    v17 = a13[1];
    *&a7 = *a13;
    *&v17 = v17;
    v18 = v16 - 4;
    v19 = 2 * (a11 >> 1);
    v20 = 4 * (a2 >> 2);
    v51 = v17;
    v52 = *&a7;
    v49 = vdupq_lane_s32(*&v17, 0);
    v50 = vdupq_lane_s32(*&a7, 0);
    do
    {
      a3.i32[0] = LODWORD(a7);
      result = sub_100228818(a3, *&v17, &v53, v15, a10, v16);
      v21.i64[0] = 0xFFFF0000FFFFLL;
      v21.i64[1] = 0xFFFF0000FFFFLL;
      if (result <= v18)
      {
        v22 = result;
        v23 = v18 - result;
        result = result;
        if (v23 <= 0x1B)
        {
          goto LABEL_9;
        }

        v24 = (v23 >> 2) + 1;
        result = result + 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v25 = 2 * v22;
        v26 = 4 * v22;
        v27 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = vmlaq_f32(v49, v50, *(v15 + v26 + 16));
          v29 = vmlaq_f32(v49, v50, *(v15 + v26));
          v30 = vmlaq_f32(v49, v50, *(v15 + v26 + 32));
          v31 = vmlaq_f32(v49, v50, *(v15 + v26 + 48));
          v32 = vmlaq_f32(v49, v50, *(v15 + v26 + 64));
          v33 = vmlaq_f32(v49, v50, *(v15 + v26 + 80));
          v34 = vmlaq_f32(v49, v50, *(v15 + v26 + 96));
          v35 = vmlaq_f32(v49, v50, *(v15 + v26 + 112));
          v36 = (a10 + v25);
          *v36 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v29.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v29, v29, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v28.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v28, v28, 8uLL))))), 0), v21));
          v36[1] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL))))), 0), v21));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))))), 0), v21));
          v36[2] = a3;
          v36[3] = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))))), 0), v21));
          v25 += 64;
          v26 += 128;
          v27 -= 8;
        }

        while (v27);
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v37 = 2 * result;
          v38 = 4 * result;
          do
          {
            v39 = vmlaq_f32(v49, v50, *(v15 + v38));
            a3 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))), 0), v21);
            *a3.i8 = vmovn_s32(a3);
            *(a10->i64 + v37) = a3.i64[0];
            result += 4;
            v37 += 8;
            v38 += 16;
          }

          while (result <= v18);
        }
      }

      v17 = v51;
      *&a7 = v52;
      if (result < v16)
      {
        v40 = v16 - result;
        v41 = result;
        if (v40 <= 7)
        {
          goto LABEL_22;
        }

        v41 = (v40 & 0xFFFFFFFFFFFFFFF8) + result;
        v42 = 4 * result;
        v43 = 2 * result;
        v44 = v40 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v45 = vmlaq_f32(v49, v50, *(v15 + v42 + 16));
          v46 = vmlaq_f32(v49, v50, *(v15 + v42));
          a3 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))), 0), v21), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))))), 0), v21));
          *(a10 + v43) = a3;
          v42 += 32;
          v43 += 16;
          v44 -= 8;
        }

        while (v44);
        if (v40 != (v40 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            v47 = rintf(*&v51 + (v15->f32[v41] * v52));
            v48 = v47 & ~(v47 >> 31);
            if (v48 >= 0xFFFF)
            {
              LOWORD(v48) = -1;
            }

            a10->i16[v41++] = v48;
          }

          while (v16 != v41);
        }
      }

      v15 = (v15 + v20);
      a10 = (a10 + v19);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10021AA70(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, double a9, double a10, float64x2_t a11, int32x4_t a12, float64x2_t a13, __n128 a14)
{
  v14 = a7[1];
  if (v14)
  {
    v16 = result;
    v17 = *a7;
    v18 = *a8;
    v19 = a8[1];
    a14.n128_f64[0] = v18;
    v20 = v17 - 4;
    v21 = 2 * (a6 >> 1);
    v22 = 8 * (a2 >> 3);
    v44 = a14;
    v42 = vdupq_lane_s64(COERCE__INT64(v19), 0);
    v43 = vdupq_lane_s64(COERCE__INT64(v18), 0);
    do
    {
      result = sub_100228A54(v18, v19, a11.f64[0], *a12.i64, a13.f64[0], a14, &v45, v16, a5, v17);
      v23.i64[0] = 0xFFFF0000FFFFLL;
      v23.i64[1] = 0xFFFF0000FFFFLL;
      if (result <= v20)
      {
        v24 = result;
        v25 = v20 - result;
        result = result;
        if (v25 <= 0x1B)
        {
          goto LABEL_9;
        }

        v26 = (v25 >> 2) + 1;
        result = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
        v27 = 2 * v24;
        v28 = 8 * v24;
        v29 = v26 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v30 = (a5 + v27);
          a12 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 128)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 144))))), 0), v23);
          a11 = vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 160)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 176))))), 0), v23);
          v31 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 192)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 208))))), 0), v23), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 224)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 240))))), 0), v23));
          v32 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 80))))), 0), v23), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 112))))), 0), v23));
          a13 = vuzp1q_s16(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 16))))), 0), v23), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v28 + 48))))), 0), v23));
          *v30 = a13;
          v30[1] = v32;
          v30[2] = vuzp1q_s16(a12, a11);
          v30[3] = v31;
          v27 += 64;
          v28 += 256;
          v29 -= 8;
        }

        while (v29);
        if (v26 != (v26 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v33 = 2 * result;
          v34 = 8 * result;
          do
          {
            a11 = vmlaq_f64(v42, v43, *(v16 + v34));
            *&a5->i8[v33] = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(a11)), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v34 + 16))))), 0), v23));
            result += 4;
            v33 += 8;
            v34 += 32;
          }

          while (result <= v20);
        }
      }

      a14 = v44;
      if (result < v17)
      {
        v35 = v17 - result;
        v36 = result;
        if (v35 <= 7)
        {
          goto LABEL_22;
        }

        v36 = (v35 & 0xFFFFFFFFFFFFFFF8) + result;
        v37 = 8 * result;
        v38 = 2 * result;
        v39 = v35 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          a13 = vmlaq_f64(v42, v43, *(v16 + v37));
          a12 = vcvtq_s64_f64(vrndxq_f64(a13));
          a11 = vuzp1q_s32(a12, vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v37 + 16)))));
          *(a5 + v38) = vuzp1q_s16(vminq_s32(vmaxq_s32(a11, 0), v23), vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v37 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v42, v43, *(v16 + v37 + 48))))), 0), v23));
          v37 += 64;
          v38 += 16;
          v39 -= 8;
        }

        while (v39);
        if (v35 != (v35 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_22:
          do
          {
            v40 = rint(v19 + v16->f64[v36] * v44.n128_f64[0]);
            v41 = v40 & ~(v40 >> 31);
            if (v41 >= 0xFFFF)
            {
              LOWORD(v41) = -1;
            }

            a5->i16[v36++] = v41;
          }

          while (v17 != v36);
        }
      }

      v16 = (v16 + v22);
      a5 = (a5 + v21);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_10021AE74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, int32x4_t a9)
{
  v92 = result;
  v11 = a7[1];
  if (v11)
  {
    v12 = a5;
    v13 = 0;
    v14 = *a7;
    a9.i64[0] = *a8;
    v15.i64[0] = a8[1];
    *v9.i32 = *a8;
    *v10.i32 = *v15.i64;
    v16 = v14 - 4;
    v89 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v84 = &a5->i64[1];
    v85 = a2;
    v83 = &a5->i8[2 * v14];
    v87 = 2 * (a6 >> 1);
    v17 = result;
    v90 = *v10.i32;
    v91 = *v9.i32;
    v88 = vdupq_lane_s32(v9, 0);
    v86 = vdupq_lane_s32(v10, 0);
    do
    {
      v96 = v11;
      v94 = v89 * v13;
      v95 = v13;
      v93 = v92 + v13 * a2;
      a9.i32[0] = v9.i32[0];
      v15.i32[0] = v10.i32[0];
      result = sub_100228CBC(a9, *v15.i8, v97, v17, v12, v14);
      *v10.i32 = v90;
      *v9.i32 = v91;
      if (result > v16)
      {
        goto LABEL_34;
      }

      v18 = result;
      v19 = v16 - result;
      if (v19 > 0x3B && ((v20 = result, v12->u64 + v20 * 2 < v93 + 4 + (v19 & 0xFFFFFFFFFFFFFFFCLL) + result) ? (v21 = v17 + result >= &v84[v19 >> 2] + 2 * result + v94) : (v21 = 1), v21))
      {
        v22 = (v19 >> 2) + 1;
        result = result + 4 * (v22 & 0x7FFFFFFFFFFFFFF0);
        v23 = v22 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v24 = (v17 + v18);
          v98 = vld4q_s8(v24);
          v25 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[0], xmmword_1003E3700));
          v26 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[0], xmmword_1003E3710));
          v27 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[0], xmmword_1003E3720));
          v28 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[0], xmmword_1003E3730));
          v29 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[1], xmmword_1003E3700));
          v30 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[1], xmmword_1003E3710));
          v31 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[1], xmmword_1003E3720));
          v32 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[1], xmmword_1003E3730));
          v33 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[2], xmmword_1003E3720));
          v34 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[2], xmmword_1003E3730));
          v35 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[2], xmmword_1003E3700));
          v36 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[2], xmmword_1003E3710));
          v37 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[3], xmmword_1003E3720));
          v38 = vcvtq_f32_u32(vqtbl1q_s8(v98.val[3], xmmword_1003E3730));
          v98.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v98.val[3], xmmword_1003E3700));
          v98.val[1] = vcvtq_f32_u32(vqtbl1q_s8(v98.val[3], xmmword_1003E3710));
          v39 = &v12->i16[v20];
          v40 = vmlaq_f32(v86, v88, v28);
          v41 = vmlaq_f32(v86, v88, v27);
          v42 = vmlaq_f32(v86, v88, v32);
          v43 = vmlaq_f32(v86, v88, v31);
          v44 = vmlaq_f32(v86, v88, v30);
          v98.val[3] = vmlaq_f32(v86, v88, v29);
          v98.val[2] = vmlaq_f32(v86, v88, v26);
          v45 = vmlaq_f32(v86, v88, v25);
          v46 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8)));
          v47 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL)));
          v48 = vmlaq_f32(v86, v88, v98.val[1]);
          v98.val[1] = vmlaq_f32(v86, v88, v98.val[0]);
          v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL)))));
          v98.val[0] = vmlaq_f32(v86, v88, v36);
          v50 = vmlaq_f32(v86, v88, v35);
          v51 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[0].i8)));
          v52 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[0], v98.val[0], 8uLL))));
          v98.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[2], v98.val[2], 8uLL))))));
          v53 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[1], v98.val[1], 8uLL)))));
          *v26.f32 = vqmovn_s32(v49);
          v54 = vmlaq_f32(v86, v88, v34);
          v55 = vmlaq_f32(v86, v88, v33);
          v99.val[1] = vqmovn_high_s32(*v26.f32, vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))))));
          v56 = vmlaq_f32(v86, v88, v38);
          v57 = vmlaq_f32(v86, v88, v37);
          v98.val[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v98.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v98.val[3], v98.val[3], 8uLL)))))), vuzp1q_s32(v46, vcvtq_s64_f64(v47)));
          v99.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))))));
          v98.val[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL)))))), vuzp1q_s32(v51, v52));
          v15 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL)))));
          a9 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL)))));
          v98.val[3] = vqmovn_high_s32(vqmovn_s32(v53), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL))))));
          v99.val[3] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v57.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v57, v57, 8uLL)))))), a9);
          v99.val[2] = vqmovn_high_s32(vqmovn_s32(v15), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))));
          vst4q_s16(v39, v99);
          v39 += 32;
          vst4q_s16(v39, v98);
          v20 += 64;
          v18 += 64;
          v23 -= 16;
        }

        while (v23);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF0))
        {
          goto LABEL_34;
        }
      }

      else
      {
        result = result;
      }

      v58 = &v12->i16[result];
      do
      {
        v59 = (v17 + result);
        a9.i8[0] = *(v17 + result);
        *a9.i32 = rintf(v90 + (a9.u32[0] * v91));
        v60 = *a9.i32;
        if (*a9.i32 <= -32768)
        {
          LODWORD(v60) = -32768;
        }

        if (v60 >= 0x7FFF)
        {
          LOWORD(v60) = 0x7FFF;
        }

        a9.i8[0] = v59[1];
        *a9.i32 = rintf(v90 + (a9.u32[0] * v91));
        v61 = *a9.i32;
        if (*a9.i32 <= -32768)
        {
          LODWORD(v61) = -32768;
        }

        if (v61 >= 0x7FFF)
        {
          LOWORD(v61) = 0x7FFF;
        }

        *v58 = v60;
        v58[1] = v61;
        a9.i8[0] = v59[2];
        *a9.i32 = rintf(v90 + (a9.u32[0] * v91));
        v62 = *a9.i32;
        if (*a9.i32 <= -32768)
        {
          LODWORD(v62) = -32768;
        }

        if (v62 >= 0x7FFF)
        {
          LOWORD(v62) = 0x7FFF;
        }

        a9.i8[0] = v59[3];
        *a9.i32 = rintf(v90 + (a9.u32[0] * v91));
        v63 = *a9.i32;
        if (*a9.i32 <= -32768)
        {
          LODWORD(v63) = -32768;
        }

        if (v63 >= 0x7FFF)
        {
          LOWORD(v63) = 0x7FFF;
        }

        v58[2] = v62;
        v58[3] = v63;
        result += 4;
        v58 += 4;
      }

      while (result <= v16);
LABEL_34:
      a2 = v85;
      if (result < v14)
      {
        v64 = v14 - result;
        if (v64 < 4)
        {
          v65 = result;
          goto LABEL_53;
        }

        if (v12 + 2 * result < v93 + v14 && v17 + result < &v83[v94])
        {
          v65 = result;
          goto LABEL_53;
        }

        if (v64 >= 0x10)
        {
          v67 = v64 & 0xFFFFFFFFFFFFFFF0;
          v68 = 2 * result;
          v69 = result;
          v70 = v64 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v71 = *(v17 + v69);
            v72 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vqtbl1q_s8(v71, xmmword_1003E3710)));
            v73 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vqtbl1q_s8(v71, xmmword_1003E3700)));
            v74 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vqtbl1q_s8(v71, xmmword_1003E3720)));
            v75 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vqtbl1q_s8(v71, xmmword_1003E3730)));
            a9 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74, v74, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v75.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v75, v75, 8uLL))))));
            v15 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v73.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v73, v73, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v72.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v72, v72, 8uLL))))));
            v76 = &v12->i8[v68];
            *v76 = a9;
            v76[1] = v15;
            v69 += 16;
            v68 += 32;
            v70 -= 16;
          }

          while (v70);
          if (v64 == v67)
          {
            goto LABEL_3;
          }

          if ((v64 & 0xC) == 0)
          {
            v65 = v67 + result;
            do
            {
LABEL_53:
              a9.i8[0] = *(v17 + v65);
              *a9.i32 = rintf(v90 + (a9.u32[0] * v91));
              v82 = *a9.i32;
              if (*a9.i32 <= -32768)
              {
                LODWORD(v82) = -32768;
              }

              if (v82 >= 0x7FFF)
              {
                LOWORD(v82) = 0x7FFF;
              }

              v12->i16[v65++] = v82;
            }

            while (v14 != v65);
            goto LABEL_3;
          }
        }

        else
        {
          v67 = 0;
        }

        v65 = (v64 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v77 = v67 - (v64 & 0xFFFFFFFFFFFFFFFCLL);
        v78 = v67 + result;
        v79 = 2 * v78;
        do
        {
          a9.i32[0] = *(v17 + v78);
          v80 = vmlaq_f32(v86, v88, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a9.i8))));
          v81 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v80.i8)));
          v15 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v80, v80, 8uLL))));
          a9 = vuzp1q_s32(v81, v15);
          *a9.i8 = vqmovn_s32(a9);
          *(v12->i64 + v79) = a9.i64[0];
          v78 += 4;
          v79 += 8;
          v77 += 4;
        }

        while (v77);
        if (v64 != (v64 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_53;
        }
      }

LABEL_3:
      v17 += v85;
      v12 = (v12 + v87);
      v13 = v95 + 1;
      v11 = v96 - 1;
    }

    while (v96 != 1);
  }

  return result;
}