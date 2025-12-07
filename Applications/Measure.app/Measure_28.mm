uint64_t sub_10021B688(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, int32x4_t a9)
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
      result = sub_100228EE4(a9, *v15.i8, v97, v17, v12, v14);
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
          v25 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[0], xmmword_1003E3740), 0x18uLL);
          v26 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[0], xmmword_1003E3750), 0x18uLL);
          v27 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[0], xmmword_1003E3760), 0x18uLL);
          v28 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[0], xmmword_1003E3770), 0x18uLL);
          v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[1], xmmword_1003E3740), 0x18uLL);
          v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[1], xmmword_1003E3750), 0x18uLL);
          v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[1], xmmword_1003E3760), 0x18uLL);
          v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[1], xmmword_1003E3770), 0x18uLL);
          v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[2], xmmword_1003E3760), 0x18uLL);
          v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[2], xmmword_1003E3770), 0x18uLL);
          v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[2], xmmword_1003E3740), 0x18uLL);
          v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[2], xmmword_1003E3750), 0x18uLL);
          v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[3], xmmword_1003E3760), 0x18uLL);
          v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[3], xmmword_1003E3770), 0x18uLL);
          v98.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[3], xmmword_1003E3740), 0x18uLL);
          v98.val[1] = vcvtq_n_f32_s32(vqtbl1q_s8(v98.val[3], xmmword_1003E3750), 0x18uLL);
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
        a9.i64[0] = vmovl_s16(*&vmovl_s8(*a9.i8)).u64[0];
        *a9.i32 = rintf(v90 + (a9.i32[0] * v91));
        v60 = *a9.i32;
        if (*a9.i32 <= -32768)
        {
          LODWORD(v60) = -32768;
        }

        a9.i8[0] = v59[1];
        a9.i64[0] = vmovl_s16(*&vmovl_s8(*a9.i8)).u64[0];
        *a9.i32 = rintf(v90 + (a9.i32[0] * v91));
        v61 = *a9.i32;
        if (v60 >= 0x7FFF)
        {
          LOWORD(v60) = 0x7FFF;
        }

        if (v61 <= -32768)
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
        a9.i64[0] = vmovl_s16(*&vmovl_s8(*a9.i8)).u64[0];
        *a9.i32 = rintf(v90 + (a9.i32[0] * v91));
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
        a9 = vmovl_s16(*&vmovl_s8(*a9.i8));
        *a9.i32 = rintf(v90 + (a9.i32[0] * v91));
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
            v72 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v71, xmmword_1003E3750), 0x18uLL));
            v73 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v71, xmmword_1003E3740), 0x18uLL));
            v74 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v71, xmmword_1003E3760), 0x18uLL));
            v75 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(v71, xmmword_1003E3770), 0x18uLL));
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
              a9 = vmovl_s16(*&vmovl_s8(*a9.i8));
              *a9.i32 = rintf(v90 + (a9.i32[0] * v91));
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
          v80 = vmlaq_f32(v86, v88, vcvtq_n_f32_s32(vqtbl1q_s8(a9, xmmword_1003E3760), 0x18uLL));
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

uint16x8_t *sub_10021BEC4(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, __n128 a9)
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
    v67 = a5 - result;
    v64 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v65 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v66 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v62 = &result->i64[1];
    v63 = &a5->i64[1];
    v18 = 2 * (a6 >> 1);
    v68 = 2 * (a2 >> 1);
    v19 = &a5->i8[4];
    v71 = *v10.i32;
    v72 = *v9.i32;
    v69 = vdupq_lane_s32(v10, 0);
    v70 = vdupq_lane_s32(v9, 0);
    do
    {
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_10022910C(a9, *v16.i8, &v73, v13, v12, v15);
      *v10.i32 = v71;
      *v9.i32 = v72;
      if (result <= v17)
      {
        v20 = result;
        v21 = v17 - result;
        if (v21 <= 0x1B)
        {
          goto LABEL_14;
        }

        v22 = v21 >> 2;
        v23 = result;
        v24 = v23 * 2 + 8 * v22;
        if (&v12->i8[v23 * 2] < v62 + v64 * v14 + v24 && v13 + 2 * result < v63 + v65 * v14 + v24)
        {
          goto LABEL_14;
        }

        v26 = v22 + 1;
        v20 = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
        v27 = v26 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = &v13->i16[v23];
          v74 = vld4q_s16(v28);
          v29 = vcvtq_f32_u32(vmovl_u16(*v74.val[0].i8));
          v30 = vcvtq_f32_u32(vmovl_high_u16(v74.val[0]));
          v31 = vcvtq_f32_u32(vmovl_u16(*v74.val[1].i8));
          v32 = vcvtq_f32_u32(vmovl_high_u16(v74.val[1]));
          v33 = vcvtq_f32_u32(vmovl_u16(*v74.val[2].i8));
          v34 = vcvtq_f32_u32(vmovl_high_u16(v74.val[2]));
          v35 = vcvtq_f32_u32(vmovl_u16(*v74.val[3].i8));
          v74.val[0] = vcvtq_f32_u32(vmovl_high_u16(v74.val[3]));
          v74.val[1] = vmlaq_f32(v69, v70, v30);
          v74.val[2] = vmlaq_f32(v69, v70, v29);
          v74.val[3] = vmlaq_f32(v69, v70, v32);
          v36 = vmlaq_f32(v69, v70, v31);
          v37 = vmlaq_f32(v69, v70, v34);
          v38 = vmlaq_f32(v69, v70, v33);
          v39 = vmlaq_f32(v69, v70, v74.val[0]);
          v40 = vmlaq_f32(v69, v70, v35);
          v41 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[3], v74.val[3], 8uLL))))));
          a9 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL)))));
          v16 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[2], v74.val[2], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[1], v74.val[1], 8uLL))))));
          v74.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))));
          v42 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL)))))), a9);
          v43 = &v12->i16[v23];
          vst4q_s16(v43, *v16.i8);
          v23 += 32;
          v27 -= 8;
        }

        while (v27);
        result = (result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8));
        if (v26 != (v26 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_14:
          v44 = 2 * v20;
          v45 = v19;
          v46 = v13;
          result = v20;
          do
          {
            a9.n128_u16[0] = v46->u16[v20];
            a9.n128_f32[0] = rintf(v71 + (a9.n128_u32[0] * v72));
            v47 = a9.n128_f32[0];
            if (a9.n128_f32[0] <= -32768)
            {
              LODWORD(v47) = -32768;
            }

            if (v47 >= 0x7FFF)
            {
              LOWORD(v47) = 0x7FFF;
            }

            v48 = &v46->i8[v44];
            a9.n128_u16[0] = v46->u16[v44 / 2 + 1];
            a9.n128_f32[0] = rintf(v71 + (a9.n128_u32[0] * v72));
            v49 = a9.n128_f32[0];
            if (a9.n128_f32[0] <= -32768)
            {
              LODWORD(v49) = -32768;
            }

            if (v49 >= 0x7FFF)
            {
              LOWORD(v49) = 0x7FFF;
            }

            v50 = &v45[v44];
            *(v50 - 2) = v47;
            *(v50 - 1) = v49;
            a9.n128_u16[0] = *(v48 + 2);
            a9.n128_f32[0] = rintf(v71 + (a9.n128_u32[0] * v72));
            v51 = a9.n128_f32[0];
            if (a9.n128_f32[0] <= -32768)
            {
              LODWORD(v51) = -32768;
            }

            a9.n128_u16[0] = *(v48 + 3);
            a9.n128_f32[0] = rintf(v71 + (a9.n128_u32[0] * v72));
            v52 = a9.n128_f32[0];
            if (v51 >= 0x7FFF)
            {
              LOWORD(v51) = 0x7FFF;
            }

            if (v52 <= -32768)
            {
              LODWORD(v52) = -32768;
            }

            *&v45[2 * v20] = v51;
            if (v52 >= 0x7FFF)
            {
              v53 = 0x7FFF;
            }

            else
            {
              v53 = v52;
            }

            *(v50 + 1) = v53;
            result = (result + 4);
            v46 = (v46 + 8);
            v45 += 8;
          }

          while (result <= v17);
        }
      }

      if (result < v15)
      {
        v54 = result;
        v55 = v15 - result;
        if (v55 < 8)
        {
          goto LABEL_47;
        }

        if (v67 + v66 * v14 <= 0xF)
        {
          goto LABEL_47;
        }

        v56 = 2 * result;
        v57 = v55 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v58 = *(v13 + v56);
          v59 = vmlaq_f32(v69, v70, vcvtq_f32_u32(vmovl_high_u16(v58)));
          v60 = vmlaq_f32(v69, v70, vcvtq_f32_u32(vmovl_u16(*v58.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8)));
          a9 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(v16, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL))))));
          *(v12 + v56) = a9;
          v56 += 16;
          v57 -= 8;
        }

        while (v57);
        v54 = (v55 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v55 != (v55 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_47:
          do
          {
            a9.n128_u16[0] = v13->u16[v54];
            a9.n128_f32[0] = rintf(v71 + (a9.n128_u32[0] * v72));
            v61 = a9.n128_f32[0];
            if (a9.n128_f32[0] <= -32768)
            {
              LODWORD(v61) = -32768;
            }

            if (v61 >= 0x7FFF)
            {
              LOWORD(v61) = 0x7FFF;
            }

            v12->i16[v54++] = v61;
          }

          while (v15 != v54);
        }
      }

      v13 = (v13 + v68);
      v12 = (v12 + v18);
      ++v14;
      v19 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

int16x8_t *sub_10021C3C0(int16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, __n128 a9)
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
    v67 = a5 - result;
    v64 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v65 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v66 = (a6 & 0xFFFFFFFFFFFFFFFELL) - (a2 & 0xFFFFFFFFFFFFFFFELL);
    v62 = &result->i64[1];
    v63 = &a5->i64[1];
    v18 = 2 * (a6 >> 1);
    v68 = 2 * (a2 >> 1);
    v19 = &a5->i8[4];
    v71 = *v10.i32;
    v72 = *v9.i32;
    v69 = vdupq_lane_s32(v10, 0);
    v70 = vdupq_lane_s32(v9, 0);
    do
    {
      a9.n128_u32[0] = v9.i32[0];
      v16.i32[0] = v10.i32[0];
      result = sub_100229354(a9, *v16.i8, &v73, v13, v12, v15);
      *v10.i32 = v71;
      *v9.i32 = v72;
      if (result <= v17)
      {
        v20 = result;
        v21 = v17 - result;
        if (v21 <= 0x1B)
        {
          goto LABEL_14;
        }

        v22 = v21 >> 2;
        v23 = result;
        v24 = v23 * 2 + 8 * v22;
        if (&v12->i8[v23 * 2] < v62 + v64 * v14 + v24 && v13 + 2 * result < v63 + v65 * v14 + v24)
        {
          goto LABEL_14;
        }

        v26 = v22 + 1;
        v20 = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8);
        v27 = v26 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v28 = &v13->i16[v23];
          v74 = vld4q_s16(v28);
          v29 = vcvtq_f32_s32(vmovl_s16(*v74.val[0].i8));
          v30 = vcvtq_f32_s32(vmovl_high_s16(v74.val[0]));
          v31 = vcvtq_f32_s32(vmovl_s16(*v74.val[1].i8));
          v32 = vcvtq_f32_s32(vmovl_high_s16(v74.val[1]));
          v33 = vcvtq_f32_s32(vmovl_s16(*v74.val[2].i8));
          v34 = vcvtq_f32_s32(vmovl_high_s16(v74.val[2]));
          v35 = vcvtq_f32_s32(vmovl_s16(*v74.val[3].i8));
          v74.val[0] = vcvtq_f32_s32(vmovl_high_s16(v74.val[3]));
          v74.val[1] = vmlaq_f32(v69, v70, v30);
          v74.val[2] = vmlaq_f32(v69, v70, v29);
          v74.val[3] = vmlaq_f32(v69, v70, v32);
          v36 = vmlaq_f32(v69, v70, v31);
          v37 = vmlaq_f32(v69, v70, v34);
          v38 = vmlaq_f32(v69, v70, v33);
          v39 = vmlaq_f32(v69, v70, v74.val[0]);
          v40 = vmlaq_f32(v69, v70, v35);
          v41 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[3].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[3], v74.val[3], 8uLL))))));
          a9 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL)))));
          v16 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[2].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[2], v74.val[2], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v74.val[1].i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v74.val[1], v74.val[1], 8uLL))))));
          v74.val[0] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))))));
          v42 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v38.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v38, v38, 8uLL)))))), a9);
          v43 = &v12->i16[v23];
          vst4q_s16(v43, *v16.i8);
          v23 += 32;
          v27 -= 8;
        }

        while (v27);
        result = (result + 4 * (v26 & 0x7FFFFFFFFFFFFFF8));
        if (v26 != (v26 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_14:
          v44 = 2 * v20;
          v45 = v19;
          v46 = v13;
          result = v20;
          do
          {
            a9.n128_u16[0] = v46->u16[v20];
            a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
            a9.n128_f32[0] = rintf(v71 + (a9.n128_i32[0] * v72));
            v47 = a9.n128_f32[0];
            if (a9.n128_f32[0] <= -32768)
            {
              LODWORD(v47) = -32768;
            }

            if (v47 >= 0x7FFF)
            {
              LOWORD(v47) = 0x7FFF;
            }

            v48 = &v46->i8[v44];
            a9.n128_u16[0] = v46->u16[v44 / 2 + 1];
            a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
            a9.n128_f32[0] = rintf(v71 + (a9.n128_i32[0] * v72));
            v49 = a9.n128_f32[0];
            if (a9.n128_f32[0] <= -32768)
            {
              LODWORD(v49) = -32768;
            }

            if (v49 >= 0x7FFF)
            {
              LOWORD(v49) = 0x7FFF;
            }

            v50 = &v45[v44];
            *(v50 - 2) = v47;
            *(v50 - 1) = v49;
            a9.n128_u16[0] = *(v48 + 2);
            a9.n128_u64[0] = vmovl_s16(a9.n128_u64[0]).u64[0];
            a9.n128_f32[0] = rintf(v71 + (a9.n128_i32[0] * v72));
            v51 = a9.n128_f32[0];
            if (a9.n128_f32[0] <= -32768)
            {
              LODWORD(v51) = -32768;
            }

            a9.n128_u16[0] = *(v48 + 3);
            a9 = vmovl_s16(a9.n128_u64[0]);
            a9.n128_f32[0] = rintf(v71 + (a9.n128_i32[0] * v72));
            v52 = a9.n128_f32[0];
            if (v51 >= 0x7FFF)
            {
              LOWORD(v51) = 0x7FFF;
            }

            if (v52 <= -32768)
            {
              LODWORD(v52) = -32768;
            }

            *&v45[2 * v20] = v51;
            if (v52 >= 0x7FFF)
            {
              v53 = 0x7FFF;
            }

            else
            {
              v53 = v52;
            }

            *(v50 + 1) = v53;
            result = (result + 4);
            v46 = (v46 + 8);
            v45 += 8;
          }

          while (result <= v17);
        }
      }

      if (result < v15)
      {
        v54 = result;
        v55 = v15 - result;
        if (v55 < 8)
        {
          goto LABEL_47;
        }

        if (v67 + v66 * v14 <= 0xF)
        {
          goto LABEL_47;
        }

        v56 = 2 * result;
        v57 = v55 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v58 = *(v13 + v56);
          v59 = vmlaq_f32(v69, v70, vcvtq_f32_s32(vmovl_high_s16(v58)));
          v60 = vmlaq_f32(v69, v70, vcvtq_f32_s32(vmovl_s16(*v58.i8)));
          v16 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8)));
          a9 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(v16, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL))))));
          *(v12 + v56) = a9;
          v56 += 16;
          v57 -= 8;
        }

        while (v57);
        v54 = (v55 & 0xFFFFFFFFFFFFFFF8) + result;
        if (v55 != (v55 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_47:
          do
          {
            a9.n128_u16[0] = v13->u16[v54];
            a9 = vmovl_s16(a9.n128_u64[0]);
            a9.n128_f32[0] = rintf(v71 + (a9.n128_i32[0] * v72));
            v61 = a9.n128_f32[0];
            if (a9.n128_f32[0] <= -32768)
            {
              LODWORD(v61) = -32768;
            }

            if (v61 >= 0x7FFF)
            {
              LOWORD(v61) = 0x7FFF;
            }

            v12->i16[v54++] = v61;
          }

          while (v15 != v54);
        }
      }

      v13 = (v13 + v68);
      v12 = (v12 + v18);
      ++v14;
      v19 += v18;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_10021C8D0(uint64_t result, unint64_t a2, __n128 a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, int16x8_t *a10, unint64_t a11, int *a12, double *a13)
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
    v48 = v17;
    v49 = *&a7;
    v46 = vdupq_lane_s32(*&v17, 0);
    v47 = vdupq_lane_s32(*&a7, 0);
    do
    {
      a3.n128_u32[0] = LODWORD(a7);
      result = sub_10022959C(a3, *&v17, &v50, v15, a10, v16);
      if (result <= v18)
      {
        v21 = result;
        v22 = v18 - result;
        result = result;
        if (v22 <= 0x1B)
        {
          goto LABEL_9;
        }

        v23 = (v22 >> 2) + 1;
        result = result + 4 * (v23 & 0x7FFFFFFFFFFFFFF8);
        v24 = v21;
        v25 = v21;
        v26 = v23 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v27 = &v15->i32[v25];
          v51 = vld4q_f32(v27);
          v27 += 16;
          v52 = vld4q_f32(v27);
          v28 = vcvtq_f32_s32(v51.val[1]);
          v29 = vcvtq_f32_s32(v51.val[2]);
          v30 = vcvtq_f32_s32(v51.val[3]);
          v51.val[1] = vmlaq_f32(v46, v47, vcvtq_f32_s32(v51.val[0]));
          v51.val[2] = vmlaq_f32(v46, v47, vcvtq_f32_s32(v52.val[1]));
          v51.val[3] = vmlaq_f32(v46, v47, v28);
          v51.val[0] = vmlaq_f32(v46, v47, vcvtq_f32_s32(v52.val[0]));
          v52.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51.val[1], v51.val[1], 8uLL)))));
          v52.val[0] = vmlaq_f32(v46, v47, vcvtq_f32_s32(v52.val[2]));
          v31 = vmlaq_f32(v46, v47, v29);
          v32 = vmlaq_f32(v46, v47, vcvtq_f32_s32(v52.val[3]));
          v33 = vmlaq_f32(v46, v47, v30);
          v51.val[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51.val[3], v51.val[3], 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51.val[2], v51.val[2], 8uLL))))));
          a3 = vqmovn_high_s32(vqmovn_s32(v52.val[1]), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v51.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v51.val[0], v51.val[0], 8uLL))))));
          v51.val[3] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))));
          v51.val[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v52.val[0].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v52.val[0], v52.val[0], 8uLL))))));
          v34 = &a10->i16[v24];
          vst4q_s16(v34, *a3.n128_u64);
          v24 += 32;
          v25 += 32;
          v26 -= 8;
        }

        while (v26);
        if (v23 != (v23 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v35 = 2 * result;
          v36 = 4 * result;
          do
          {
            v37 = vmlaq_f32(v46, v47, vcvtq_f32_s32(*(v15 + v36)));
            a3 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v37.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v37, v37, 8uLL)))));
            a3.n128_u64[0] = vqmovn_s32(a3);
            *(a10->i64 + v35) = a3.n128_u64[0];
            result += 4;
            v35 += 8;
            v36 += 16;
          }

          while (result <= v18);
        }
      }

      v17 = v48;
      *&a7 = v49;
      if (result < v16)
      {
        v38 = v16 - result;
        v39 = result;
        if (v38 <= 7)
        {
          goto LABEL_24;
        }

        v39 = (v38 & 0xFFFFFFFFFFFFFFF8) + result;
        v40 = 4 * result;
        v41 = 2 * result;
        v42 = v38 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v43 = vmlaq_f32(v46, v47, vcvtq_f32_s32(*(&v15[1] + v40)));
          v44 = vmlaq_f32(v46, v47, vcvtq_f32_s32(*(v15 + v40)));
          a3 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))))));
          *(a10 + v41) = a3;
          v40 += 32;
          v41 += 16;
          v42 -= 8;
        }

        while (v42);
        if (v38 != (v38 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_24:
          do
          {
            v45 = rintf(*&v48 + (v15->i32[v39] * v49));
            if (v45 <= -32768)
            {
              LODWORD(v45) = -32768;
            }

            if (v45 >= 0x7FFF)
            {
              LOWORD(v45) = 0x7FFF;
            }

            a10->i16[v39++] = v45;
          }

          while (v16 != v39);
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

uint64_t sub_10021CCBC(uint64_t result, unint64_t a2, __n128 a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, int16x8_t *a11, unint64_t a12, int *a13, unint64_t *a14)
{
  v14 = a13[1];
  if (v14)
  {
    v16 = result;
    v17 = *a13;
    a3.n128_u64[0] = *a14;
    v18.i64[0] = a14[1];
    a3.n128_f32[0] = *a14;
    *&a8 = *v18.i64;
    v19 = v17 - 4;
    v20 = 2 * (a12 >> 1);
    v21 = 4 * (a2 >> 2);
    v51 = *&a8;
    v52 = a3;
    v49 = vdupq_lane_s32(*&a8, 0);
    v50 = vdupq_lane_s32(a3.n128_u64[0], 0);
    do
    {
      v18.i32[0] = LODWORD(a8);
      result = sub_1002297E0(a3, *v18.i8, &v53, v16, a11, v17);
      if (result <= v19)
      {
        v22 = result;
        v23 = v19 - result;
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
          v28 = vmlaq_f32(v49, v50, *(v16 + v26 + 48));
          v29 = vmlaq_f32(v49, v50, *(v16 + v26 + 32));
          v30 = vmlaq_f32(v49, v50, *(v16 + v26 + 16));
          v31 = vmlaq_f32(v49, v50, *(v16 + v26));
          v32 = vmlaq_f32(v49, v50, *(v16 + v26 + 80));
          v33 = vmlaq_f32(v49, v50, *(v16 + v26 + 64));
          v34 = vmlaq_f32(v49, v50, *(v16 + v26 + 112));
          v35 = vmlaq_f32(v49, v50, *(v16 + v26 + 96));
          v36 = (a11 + v25);
          v18 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))))));
          *v36 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v31.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v31, v31, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v30, v30, 8uLL))))));
          v36[1] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v29.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v29, v29, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v28.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v28, v28, 8uLL))))));
          v36[2] = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v32.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v32, v32, 8uLL))))));
          v36[3] = v18;
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
            v39 = vmlaq_f32(v49, v50, *(v16 + v38));
            v40 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8)));
            v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL))));
            *&a11->i8[v37] = vqmovn_s32(vuzp1q_s32(v40, v18));
            result += 4;
            v37 += 8;
            v38 += 16;
          }

          while (result <= v19);
        }
      }

      *&a8 = v51;
      a3 = v52;
      if (result < v17)
      {
        v41 = v17 - result;
        v42 = result;
        if (v41 <= 7)
        {
          goto LABEL_24;
        }

        v42 = (v41 & 0xFFFFFFFFFFFFFFF8) + result;
        v43 = 4 * result;
        v44 = 2 * result;
        v45 = v41 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v46 = vmlaq_f32(v49, v50, *(v16 + v43 + 16));
          v47 = vmlaq_f32(v49, v50, *(v16 + v43));
          v18 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL)))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))))));
          *(a11 + v44) = v18;
          v43 += 32;
          v44 += 16;
          v45 -= 8;
        }

        while (v45);
        if (v41 != (v41 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_24:
          do
          {
            v48 = rintf(v51 + (v16->f32[v42] * v52.n128_f32[0]));
            if (v48 <= -32768)
            {
              LODWORD(v48) = -32768;
            }

            if (v48 >= 0x7FFF)
            {
              LOWORD(v48) = 0x7FFF;
            }

            a11->i16[v42++] = v48;
          }

          while (v17 != v42);
        }
      }

      v16 = (v16 + v21);
      a11 = (a11 + v20);
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_10021D084(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, int16x8_t *a5, unint64_t a6, int *a7, double *a8, double a9, double a10, float64x2_t a11, int32x4_t a12, float64x2_t a13, __n128 a14)
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
    v42 = a14;
    v40 = vdupq_lane_s64(COERCE__INT64(v19), 0);
    v41 = vdupq_lane_s64(COERCE__INT64(v18), 0);
    do
    {
      result = sub_100229A1C(v18, v19, a11.f64[0], *a12.i64, a13.f64[0], a14, &v43, v16, a5, v17);
      if (result <= v20)
      {
        v23 = result;
        v24 = v20 - result;
        result = result;
        if (v24 <= 0x1B)
        {
          goto LABEL_9;
        }

        v25 = (v24 >> 2) + 1;
        result = result + 4 * (v25 & 0x7FFFFFFFFFFFFFF8);
        v26 = 2 * v23;
        v27 = 8 * v23;
        v28 = v25 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v29 = &a5->i8[v26];
          v30 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 160)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 176)))));
          a13 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 128)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 144)))));
          v31 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 192)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 208)))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 224)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 240))))));
          a11 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 64)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 80)))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 96)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 112))))));
          a12 = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 16)))))), vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 32)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v27 + 48))))));
          *v29 = a12;
          v29[1] = a11;
          v29[2] = vqmovn_high_s32(vqmovn_s32(a13), v30);
          v29[3] = v31;
          v26 += 64;
          v27 += 256;
          v28 -= 8;
        }

        while (v28);
        if (v25 != (v25 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_9:
          v32 = 2 * result;
          v33 = 8 * result;
          do
          {
            a11 = vmlaq_f64(v40, v41, *(v16 + v33));
            *&a5->i8[v32] = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(a11)), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v33 + 16))))));
            result += 4;
            v32 += 8;
            v33 += 32;
          }

          while (result <= v20);
        }
      }

      a14 = v42;
      if (result < v17)
      {
        v34 = v17 - result;
        v35 = result;
        if (v34 <= 7)
        {
          goto LABEL_24;
        }

        v35 = (v34 & 0xFFFFFFFFFFFFFFF8) + result;
        v36 = 8 * result;
        v37 = 2 * result;
        v38 = v34 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          a13 = vmlaq_f64(v40, v41, *(v16 + v36 + 48));
          a12 = vcvtq_s64_f64(vrndxq_f64(a13));
          a11 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v36 + 32)))), a12);
          *(a5 + v37) = vqmovn_high_s32(vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v36)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v40, v41, *(v16 + v36 + 16)))))), a11);
          v36 += 64;
          v37 += 16;
          v38 -= 8;
        }

        while (v38);
        if (v34 != (v34 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_24:
          do
          {
            v39 = rint(v19 + v16->f64[v35] * v42.n128_f64[0]);
            if (v39 <= -32768)
            {
              LODWORD(v39) = -32768;
            }

            if (v39 >= 0x7FFF)
            {
              LOWORD(v39) = 0x7FFF;
            }

            a5->i16[v35++] = v39;
          }

          while (v17 != v35);
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

uint64_t sub_10021D44C(uint64_t result, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, int32x4_t *a8, unint64_t a9, int *a10, double *a11, int64x2_t a12)
{
  v84 = result;
  v12 = a10[1];
  if (v12)
  {
    v13 = a8;
    v14 = 0;
    v15 = *a10;
    v16 = a11[1];
    *&a5 = *a11;
    *&v16 = v16;
    v17 = v15 - 4;
    v80 = &a8->i8[4 * v15];
    v81 = a8 + 1;
    v82 = 4 * (a9 >> 2);
    v83 = a9 & 0xFFFFFFFFFFFFFFFCLL;
    v18 = result;
    v85 = v16;
    v86 = a5;
    v89 = vdupq_lane_s32(*&v16, 0);
    v90 = vdupq_lane_s32(*&a5, 0);
    while (1)
    {
      v19 = a2;
      v87 = v84 + v14 * a2;
      v88 = v83 * v14;
      result = sub_100229C84(*&a5, *&v16, a5, a12, v91, v18, v13, v15);
      v16 = v85;
      a5 = v86;
      if (result > v17)
      {
        goto LABEL_18;
      }

      v21 = result;
      v22 = v17 - result;
      if (v22 <= 0x3B)
      {
        break;
      }

      v23 = result;
      if (v13->u64 + v23 * 4 < v87 + 4 + (v22 & 0xFFFFFFFFFFFFFFFCLL) + result && v18 + result < &v81[v22 >> 2] + 4 * result + v88)
      {
        break;
      }

      v25 = (v22 >> 2) + 1;
      result = result + 4 * (v25 & 0x7FFFFFFFFFFFFFF0);
      v26 = v25 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v27 = (v18 + v21);
        v94 = vld4q_s8(v27);
        v28 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3720));
        v29 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3730));
        v30 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3700));
        v31 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[0], xmmword_1003E3710));
        v32 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3720));
        v33 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3730));
        v34 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3700));
        v35 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[1], xmmword_1003E3710));
        v36 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3720));
        v37 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3730));
        v38 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3700));
        v39 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[2], xmmword_1003E3710));
        v40 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3720));
        v41 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3730));
        v42 = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3700));
        v94.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v94.val[3], xmmword_1003E3710));
        v43 = &v13->i32[v23];
        v94.val[1] = vmlaq_f32(v89, v90, v31);
        v94.val[2] = vmlaq_f32(v89, v90, v35);
        v44 = vmlaq_f32(v89, v90, v30);
        v94.val[3] = vmlaq_f32(v89, v90, v34);
        v45 = vmlaq_f32(v89, v90, v33);
        v46 = vmlaq_f32(v89, v90, v29);
        v47 = vmlaq_f32(v89, v90, v32);
        v48 = vmlaq_f32(v89, v90, v28);
        v49 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8)));
        v50 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8)));
        v51 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL)));
        v52 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL))));
        v53 = vmlaq_f32(v89, v90, v39);
        v54 = vmlaq_f32(v89, v90, v94.val[0]);
        v55 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8)));
        v56 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))));
        v57 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[1], v94.val[1], 8uLL)))));
        v94.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[2], v94.val[2], 8uLL)))));
        v94.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v53.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v53, v53, 8uLL)))));
        v58 = vmlaq_f32(v89, v90, v38);
        v59 = vmlaq_f32(v89, v90, v42);
        v94.val[2] = vuzp1q_s32(v55, v56);
        v95.val[0] = vuzp1q_s32(v50, vcvtq_s64_f64(v51));
        v95.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v94.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v94.val[3], v94.val[3], 8uLL)))));
        v95.val[2] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v58.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v58, v58, 8uLL)))));
        v60 = vmlaq_f32(v89, v90, v41);
        v61 = vmlaq_f32(v89, v90, v37);
        v95.val[3] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL)))));
        v92.val[1] = vuzp1q_s32(v49, v52);
        v92.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL)))));
        v62 = vmlaq_f32(v89, v90, v40);
        v92.val[3] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))));
        v63 = vmlaq_f32(v89, v90, v36);
        v20 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8)));
        v92.val[2] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL)))));
        v93.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL)))));
        a12 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8)));
        v93.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL)))));
        v93.val[3] = vuzp1q_s32(a12, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL)))));
        v93.val[2] = vuzp1q_s32(v20, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL)))));
        v64 = &v13[8].i32[v23];
        v65 = &v13[12].i32[v23];
        vst4q_f32(v43, v93);
        v43 += 16;
        vst4q_f32(v64, v95);
        vst4q_f32(v65, v94);
        vst4q_f32(v43, v92);
        v23 += 64;
        v21 += 64;
        v26 -= 16;
      }

      while (v26);
      v16 = v85;
      a5 = v86;
      if (v25 != (v25 & 0x7FFFFFFFFFFFFFF0))
      {
        goto LABEL_16;
      }

LABEL_18:
      a2 = v19;
      if (result < v15)
      {
        v72 = result;
        v73 = v15 - result;
        if (v73 > 3 && (v13 + 4 * result < v87 + v15 ? (v74 = v18 + result >= &v80[v88]) : (v74 = 1), v74))
        {
          v75 = (v73 & 0xFFFFFFFFFFFFFFFCLL) + result;
          v76 = 4 * result;
          v77 = v73 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v20.i32[0] = *(v18 + v72);
            v78 = vmlaq_f32(v89, v90, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v20.i8))));
            v79 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v78.i8)));
            a12 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v78, v78, 8uLL))));
            v20 = vuzp1q_s32(v79, a12);
            *(v13 + v76) = v20;
            v72 += 4;
            v76 += 16;
            v77 -= 4;
          }

          while (v77);
          if (v73 == (v73 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_3;
          }
        }

        else
        {
          v75 = result;
        }

        do
        {
          v20.i8[0] = *(v18 + v75);
          *v20.i32 = rintf(*&v16 + (v20.u32[0] * *&a5));
          v13->i32[v75++] = *v20.i32;
        }

        while (v15 != v75);
      }

LABEL_3:
      v18 += v19;
      v13 = (v13 + v82);
      ++v14;
      if (!--v12)
      {
        return result;
      }
    }

    result = result;
LABEL_16:
    v66 = &v13->i32[result];
    do
    {
      v20.i8[0] = *(v18 + result);
      *&v67 = rintf(*&v16 + (v20.u32[0] * *&a5));
      v68 = *&v67;
      LOBYTE(v67) = *(v18 + result + 1);
      *&v69 = rintf(*&v16 + (v67 * *&a5));
      *v66 = v68;
      v66[1] = *&v69;
      LOBYTE(v69) = *(v18 + result + 2);
      *&v70 = rintf(*&v16 + (v69 * *&a5));
      v71 = *&v70;
      LOBYTE(v70) = *(v18 + result + 3);
      *v20.i32 = rintf(*&v16 + (v70 * *&a5));
      v66[2] = v71;
      v66[3] = *v20.i32;
      result += 4;
      v66 += 4;
    }

    while (result <= v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10021DA7C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int32x4_t *a5, unint64_t a6, int *a7, double *a8, double a9, double a10, int32x4_t a11, int64x2_t a12)
{
  v98 = result;
  v14 = a7[1];
  if (v14)
  {
    v15 = a5;
    v16 = 0;
    v17 = *a7;
    v18.i64[0] = a8[1];
    *v12.i32 = *a8;
    *v13.i32 = *v18.i64;
    v19 = v17 - 4;
    v93 = &a5->i8[4 * v17];
    v94 = a5 + 1;
    v96 = 4 * (a6 >> 2);
    v97 = a6 & 0xFFFFFFFFFFFFFFFCLL;
    v20 = result;
    v99 = v13.i32[0];
    v100 = v12.i32[0];
    v103 = vdupq_lane_s32(v13, 0);
    v104 = vdupq_lane_s32(v12, 0);
    v95 = a2;
    while (1)
    {
      v101 = v98 + v16 * a2;
      v102 = v97 * v16;
      v18.i32[0] = v13.i32[0];
      result = sub_100229E94(*v12.i32, *v18.i8, *a11.i64, a12, v105, v20, v15, v17);
      v13.i32[0] = v99;
      v12.i32[0] = v100;
      if (result > v19)
      {
        goto LABEL_18;
      }

      v22 = result;
      v23 = v19 - result;
      if (v23 <= 0x3B)
      {
        break;
      }

      v24 = result;
      if (v15->u64 + v24 * 4 < v101 + 4 + (v23 & 0xFFFFFFFFFFFFFFFCLL) + result && v20 + result < &v94[v23 >> 2] + 4 * result + v102)
      {
        break;
      }

      v26 = (v23 >> 2) + 1;
      result = result + 4 * (v26 & 0x7FFFFFFFFFFFFFF0);
      v27 = v26 & 0x7FFFFFFFFFFFFFF0;
      do
      {
        v28 = (v20 + v22);
        v108 = vld4q_s8(v28);
        v29 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[0], xmmword_1003E3760), 0x18uLL);
        v30 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[0], xmmword_1003E3770), 0x18uLL);
        v31 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[0], xmmword_1003E3740), 0x18uLL);
        v32 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[0], xmmword_1003E3750), 0x18uLL);
        v33 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[1], xmmword_1003E3760), 0x18uLL);
        v34 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[1], xmmword_1003E3770), 0x18uLL);
        v35 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[1], xmmword_1003E3740), 0x18uLL);
        v36 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[1], xmmword_1003E3750), 0x18uLL);
        v37 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[2], xmmword_1003E3760), 0x18uLL);
        v38 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[2], xmmword_1003E3770), 0x18uLL);
        v39 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[2], xmmword_1003E3740), 0x18uLL);
        v40 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[2], xmmword_1003E3750), 0x18uLL);
        v41 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[3], xmmword_1003E3760), 0x18uLL);
        v42 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[3], xmmword_1003E3770), 0x18uLL);
        v43 = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[3], xmmword_1003E3740), 0x18uLL);
        v108.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v108.val[3], xmmword_1003E3750), 0x18uLL);
        v44 = &v15->i32[v24];
        v108.val[1] = vmlaq_f32(v103, v104, v32);
        v108.val[2] = vmlaq_f32(v103, v104, v36);
        v45 = vmlaq_f32(v103, v104, v31);
        v108.val[3] = vmlaq_f32(v103, v104, v35);
        v46 = vmlaq_f32(v103, v104, v34);
        v47 = vmlaq_f32(v103, v104, v30);
        v48 = vmlaq_f32(v103, v104, v33);
        v49 = vmlaq_f32(v103, v104, v29);
        v30.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
        a11 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v49.i8)));
        v50 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v46.i8)));
        v51 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v45.i8)));
        v52 = vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v45, v45, 8uLL)));
        v53 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v46, v46, 8uLL))));
        v54 = vmlaq_f32(v103, v104, v40);
        v55 = vmlaq_f32(v103, v104, v108.val[0]);
        v56 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8)));
        v57 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL))));
        v58 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.val[1].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108.val[1], v108.val[1], 8uLL)))));
        v108.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.val[2].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108.val[2], v108.val[2], 8uLL)))));
        v108.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL)))));
        v59 = vmlaq_f32(v103, v104, v39);
        v60 = vmlaq_f32(v103, v104, v43);
        v108.val[2] = vuzp1q_s32(v56, v57);
        v109.val[0] = vuzp1q_s32(v51, vcvtq_s64_f64(v52));
        v109.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v108.val[3].f32))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v108.val[3], v108.val[3], 8uLL)))));
        v109.val[2] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v59.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v59, v59, 8uLL)))));
        v61 = vmlaq_f32(v103, v104, v42);
        v62 = vmlaq_f32(v103, v104, v38);
        v109.val[3] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v60.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v60, v60, 8uLL)))));
        v106.val[1] = vuzp1q_s32(v50, v53);
        v106.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v47.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v47, v47, 8uLL)))));
        v63 = vmlaq_f32(v103, v104, v41);
        v106.val[3] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v61.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v61, v61, 8uLL)))));
        v64 = vmlaq_f32(v103, v104, v37);
        v21 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v64.i8)));
        v106.val[2] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v62.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v62, v62, 8uLL)))));
        v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v64, v64, 8uLL))));
        v107.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v48.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v48, v48, 8uLL)))));
        a12 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v63.i8)));
        v107.val[0] = vuzp1q_s32(a11, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v30.f32))));
        v107.val[3] = vuzp1q_s32(a12, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v63, v63, 8uLL)))));
        v107.val[2] = vuzp1q_s32(v21, v18);
        v65 = &v15[8].i32[v24];
        v66 = &v15[12].i32[v24];
        vst4q_f32(v44, v107);
        v44 += 16;
        vst4q_f32(v65, v109);
        vst4q_f32(v66, v108);
        vst4q_f32(v44, v106);
        v24 += 64;
        v22 += 64;
        v27 -= 16;
      }

      while (v27);
      v13.i32[0] = v99;
      v12.i32[0] = v100;
      if (v26 != (v26 & 0x7FFFFFFFFFFFFFF0))
      {
        goto LABEL_16;
      }

LABEL_18:
      a2 = v95;
      if (result < v17)
      {
        v73 = v17 - result;
        if (v73 < 4)
        {
          v74 = result;
          goto LABEL_37;
        }

        if (v15 + 4 * result < v101 + v17 && v20 + result < &v93[v102])
        {
          v74 = result;
          goto LABEL_37;
        }

        if (v73 >= 0x10)
        {
          v76 = v73 & 0xFFFFFFFFFFFFFFF0;
          v77 = 4 * result;
          v78 = result;
          v79 = v73 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v80 = *(v20 + v78);
            v81 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3760), 0x18uLL));
            v82 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3770), 0x18uLL));
            v83 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3740), 0x18uLL));
            v84 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v80, xmmword_1003E3750), 0x18uLL));
            v85 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v84.i8)));
            a12 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v84, v84, 8uLL))));
            v86 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v82.i8)));
            v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v82, v82, 8uLL))));
            a11 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v83.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v83, v83, 8uLL)))));
            v87 = (v15 + v77);
            v87[2] = a11;
            v87[3] = vuzp1q_s32(v85, a12);
            v21 = vuzp1q_s32(v86, v18);
            *v87 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v81.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v81, v81, 8uLL)))));
            v87[1] = v21;
            v78 += 16;
            v77 += 64;
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
LABEL_37:
              v21.i8[0] = *(v20 + v74);
              v21.i64[0] = vmovl_s16(*&vmovl_s8(*v21.i8)).u64[0];
              *v21.i32 = rintf(*v13.i32 + (v21.i32[0] * *v12.i32));
              v15->i32[v74++] = *v21.i32;
            }

            while (v17 != v74);
            goto LABEL_3;
          }
        }

        else
        {
          v76 = 0;
        }

        v74 = (v73 & 0xFFFFFFFFFFFFFFFCLL) + result;
        v88 = v76 - (v73 & 0xFFFFFFFFFFFFFFFCLL);
        v89 = v76 + result;
        v90 = 4 * v89;
        do
        {
          v21.i32[0] = *(v20 + v89);
          v91 = vmlaq_f32(v103, v104, vcvtq_n_f32_s32(vqtbl1q_s8(v21, xmmword_1003E3760), 0x18uLL));
          v92 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v91.i8)));
          v18 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v91, v91, 8uLL))));
          v21 = vuzp1q_s32(v92, v18);
          *(v15 + v90) = v21;
          v89 += 4;
          v90 += 16;
          v88 += 4;
        }

        while (v88);
        if (v73 == (v73 & 0xFFFFFFFFFFFFFFFCLL))
        {
          goto LABEL_3;
        }

        goto LABEL_37;
      }

LABEL_3:
      v20 += v95;
      v15 = (v15 + v96);
      ++v16;
      if (!--v14)
      {
        return result;
      }
    }

    result = result;
LABEL_16:
    v67 = &v15->i32[result];
    do
    {
      v21.i8[0] = *(v20 + result);
      v68 = vmovl_s16(*&vmovl_s8(*v21.i8)).u64[0];
      *v68.i32 = rintf(*v13.i32 + (v68.i32[0] * *v12.i32));
      v69 = *v68.i32;
      v68.i8[0] = *(v20 + result + 1);
      v70 = vmovl_s16(*&vmovl_s8(v68)).u64[0];
      *v70.i32 = rintf(*v13.i32 + (v70.i32[0] * *v12.i32));
      *v67 = v69;
      v67[1] = *v70.i32;
      v70.i8[0] = *(v20 + result + 2);
      v71 = vmovl_s16(*&vmovl_s8(v70)).u64[0];
      *v71.i32 = rintf(*v13.i32 + (v71.i32[0] * *v12.i32));
      v72 = *v71.i32;
      v71.i8[0] = *(v20 + result + 3);
      v21 = vmovl_s16(*&vmovl_s8(v71));
      *v21.i32 = rintf(*v13.i32 + (v21.i32[0] * *v12.i32));
      v67[2] = v72;
      v67[3] = *v21.i32;
      result += 4;
      v67 += 4;
    }

    while (result <= v19);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_10021E20C(uint64_t result, unint64_t a2, double a3, double a4, int32x4_t a5, int64x2_t a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, int32x4_t *a13, unint64_t a14, int *a15, double *a16)
{
  v17 = a15[1];
  if (v17)
  {
    v19 = result;
    v20 = *a15;
    v21.i64[0] = a16[1];
    *&a10 = *a16;
    *v16.i32 = *v21.i64;
    v22 = v20 - 4;
    v23 = 4 * (a14 >> 2);
    v24 = 2 * (a2 >> 1);
    v52 = *v16.i32;
    v53 = *&a10;
    v54 = vdupq_lane_s32(v16, 0);
    v55 = vdupq_lane_s32(*&a10, 0);
    do
    {
      v21.i32[0] = v16.i32[0];
      result = sub_10022A0A4(*&a10, *v21.i8, *a5.i64, a6, &v56, v19, a13, v20);
      *v16.i32 = v52;
      *&a10 = v53;
      if (result <= v22)
      {
        v26 = result;
        v27 = v22 - result;
        result = result;
        if (v27 <= 0xB)
        {
          goto LABEL_9;
        }

        v28 = (v27 >> 2) + 1;
        result = result + 4 * (v28 & 0x7FFFFFFFFFFFFFFCLL);
        v29 = v26;
        v30 = v26;
        v31 = v28 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v32 = &v19->i16[v30];
          v57 = vld4_s16(v32);
          v33 = vcvtq_f32_u32(vmovl_u16(v57.val[2]));
          v34 = &a13->i32[v29];
          *v57.val[1].i8 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_u16(v57.val[1])));
          *v57.val[2].i8 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_u16(v57.val[0])));
          v58.val[1] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v57.val[1]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*v57.val[1].i8, *v57.val[1].i8, 8uLL)))));
          v58.val[0] = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v57.val[2]))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*v57.val[2].i8, *v57.val[2].i8, 8uLL)))));
          *v57.val[1].i8 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_u16(v57.val[3])));
          *v57.val[0].i8 = vmlaq_f32(v54, v55, v33);
          a5 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v57.val[0])));
          v25 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*v57.val[0].i8, *v57.val[0].i8, 8uLL))));
          a6 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v57.val[1])));
          v21 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(*v57.val[1].i8, *v57.val[1].i8, 8uLL))));
          v58.val[3] = vuzp1q_s32(a6, v21);
          v58.val[2] = vuzp1q_s32(a5, v25);
          vst4q_f32(v34, v58);
          v29 += 16;
          v30 += 16;
          v31 -= 4;
        }

        while (v31);
        if (v28 != (v28 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_9:
          v35 = 2 * result + 6;
          v36 = &a13->i32[result];
          do
          {
            v25.i16[0] = *(&v19->i16[-3] + v35);
            *&v37 = rintf(v52 + (v25.u32[0] * v53));
            v38 = *&v37;
            v39 = &v19->i8[2 * result];
            LOWORD(v37) = *(v39 + 1);
            *&v40 = rintf(v52 + (v37 * v53));
            *v36 = v38;
            v36[1] = *&v40;
            LOWORD(v40) = *(v39 + 2);
            *&v41 = rintf(v52 + (v40 * v53));
            v42 = *&v41;
            LOWORD(v41) = *(v19->i16 + v35);
            *v25.i32 = rintf(v52 + (v41 * v53));
            v36[2] = v42;
            v36[3] = *v25.i32;
            result += 4;
            v35 += 8;
            v36 += 4;
          }

          while (result <= v22);
        }
      }

      if (result < v20)
      {
        v43 = v20 - result;
        v44 = result;
        if (v43 <= 7)
        {
          goto LABEL_20;
        }

        v44 = (v43 & 0xFFFFFFFFFFFFFFF8) + result;
        v45 = 2 * result;
        v46 = 4 * result;
        v47 = v43 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v48 = *(v19 + v45);
          v49 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_u16(*v48.i8)));
          v50 = vmlaq_f32(v54, v55, vcvtq_f32_u32(vmovl_high_u16(v48)));
          v21 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8)));
          a6 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v49.i8)));
          a5 = vuzp1q_s32(a6, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v49, v49, 8uLL)))));
          v25 = vuzp1q_s32(v21, vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL)))));
          v51 = (a13 + v46);
          *v51 = a5;
          v51[1] = v25;
          v45 += 16;
          v46 += 32;
          v47 -= 8;
        }

        while (v47);
        if (v43 != (v43 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_20:
          do
          {
            v25.i16[0] = v19->i16[v44];
            *v25.i32 = rintf(v52 + (v25.u32[0] * v53));
            a13->i32[v44++] = *v25.i32;
          }

          while (v20 != v44);
        }
      }

      v19 = (v19 + v24);
      a13 = (a13 + v23);
      --v17;
    }

    while (v17);
  }

  return result;
}

int16x8_t *sub_10021E548(int16x8_t *result, unint64_t a2, double a3, double a4, double a5, double a6, __n128 a7, __n128 a8, uint64_t a9, uint64_t a10, int32x4_t *a11, unint64_t a12, int *a13, uint64_t a14)
{
  v14 = a13[1];
  if (!v14)
  {
    return result;
  }

  v15 = *a13;
  v16 = *a14;
  a7.n128_f32[0] = *a14;
  a8.n128_f32[0] = *(a14 + 8);
  v17 = a2 >> 1;
  v18 = a12 >> 2;
  v19 = v15 - 8;
  if (v15 < 8)
  {
    if (v15 >= 1)
    {
      v20 = &a11->i32[3];
      v21 = 4 * v18;
      v22 = &result->i16[3];
      v23 = 2 * v17;
      do
      {
        v16.i16[0] = *(v22 - 3);
        v16 = vmovl_s16(v16).u64[0];
        *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
        *(v20 - 3) = *v16.i32;
        if (v15 != 1)
        {
          v16.i16[0] = *(v22 - 2);
          v16 = vmovl_s16(v16).u64[0];
          *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
          *(v20 - 2) = *v16.i32;
          if (v15 != 2)
          {
            v16.i16[0] = *(v22 - 1);
            v16 = vmovl_s16(v16).u64[0];
            *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
            *(v20 - 1) = *v16.i32;
            if (v15 != 3)
            {
              v16.i16[0] = *v22;
              v16 = vmovl_s16(v16).u64[0];
              *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
              *v20 = *v16.i32;
              if (v15 != 4)
              {
                v16.i16[0] = v22[1];
                v16 = vmovl_s16(v16).u64[0];
                *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
                v20[1] = *v16.i32;
                if (v15 != 5)
                {
                  v16.i16[0] = v22[2];
                  v16 = vmovl_s16(v16).u64[0];
                  *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
                  v20[2] = *v16.i32;
                  if (v15 != 6)
                  {
                    v16.i16[0] = v22[3];
                    v16 = vmovl_s16(v16).u64[0];
                    *v16.i32 = rintf(a8.n128_f32[0] + (v16.i32[0] * a7.n128_f32[0]));
                    v20[3] = *v16.i32;
                  }
                }
              }
            }
          }
        }

        v20 = (v20 + v21);
        v22 = (v22 + v23);
        --v14;
      }

      while (v14);
    }

    return result;
  }

  v24 = vdupq_lane_s32(a8.n128_u64[0], 0);
  v25 = v19;
  v26 = v19 <= 7;
  v27 = 7;
  if (!v26)
  {
    v27 = v25;
  }

  v28 = v27 & 0x7FFFFFF8;
  v29 = v28 + 9;
  if (v28 + 9 <= v15)
  {
    v29 = *a13;
  }

  v30 = v29 - 8 - v28;
  v31 = v29 & 7;
  v32 = v30 - v31;
  v33 = vdupq_lane_s32(a7.n128_u64[0], 0);
  v34 = vdupq_lane_s32(a8.n128_u64[0], 0);
  v35 = v29 - 8 - v31 - v28;
  v36 = result + 1;
  v37 = 2 * v17;
  v38 = a11 + 2;
  v39 = 4 * v18;
  while (2)
  {
    v40 = 0;
    v41 = v38;
    v42 = v36;
    do
    {
      v43 = v42;
      v44 = v41;
      v45 = result[v40 / 8];
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_22;
        }
      }

      else
      {
        v119 = result;
        v50 = a11;
        v115 = v14;
        v107 = a8;
        v111 = a7;
        v103 = v24;
        v95 = v31;
        v99 = v30;
        v91 = v32;
        v83 = v34;
        v87 = v33;
        v75 = v36;
        v79 = v35;
        v67 = v38;
        v71 = v37;
        v63 = v39;
        v59 = v45;
        sub_1003C83B4();
        v45 = v59;
        v39 = v63;
        v38 = v67;
        v37 = v71;
        v36 = v75;
        v35 = v79;
        v34 = v83;
        v33 = v87;
        v32 = v91;
        v31 = v95;
        v30 = v99;
        v24 = v103;
        a8 = v107;
        a7 = v111;
        v14 = v115;
        a11 = v50;
        result = v119;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_22;
        }
      }

      v120 = result;
      v51 = a11;
      v116 = v14;
      v108 = a8;
      v112 = a7;
      v104 = v24;
      v96 = v31;
      v100 = v30;
      v92 = v32;
      v84 = v34;
      v88 = v33;
      v76 = v36;
      v80 = v35;
      v68 = v38;
      v72 = v37;
      v64 = v39;
      v60 = v45;
      sub_1003C83FC();
      v45 = v60;
      v39 = v64;
      v38 = v68;
      v37 = v72;
      v36 = v76;
      v35 = v80;
      v34 = v84;
      v33 = v88;
      v32 = v92;
      v31 = v96;
      v30 = v100;
      v24 = v104;
      a8 = v108;
      a7 = v112;
      v14 = v116;
      a11 = v51;
      result = v120;
LABEL_22:
      v46 = vaddq_f32(v24, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v45.i8)), a7.n128_f32[0]));
      v47 = &a11[v40 / 4];
      *v47 = vcvtq_s32_f32(vaddq_f32(v46, vorrq_s8(vandq_s8(xmmword_1004B0010, v46), xmmword_1004B0030)));
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v121 = result;
        v57 = a11;
        v117 = v14;
        v109 = a8;
        v113 = a7;
        v105 = v24;
        v97 = v31;
        v101 = v30;
        v93 = v32;
        v85 = v34;
        v89 = v33;
        v77 = v36;
        v81 = v35;
        v69 = v38;
        v73 = v37;
        v65 = v39;
        v61 = v45;
        sub_1003C83B4();
        v45 = v61;
        v39 = v65;
        v38 = v69;
        v37 = v73;
        v36 = v77;
        v35 = v81;
        v34 = v85;
        v33 = v89;
        v32 = v93;
        v31 = v97;
        v30 = v101;
        v24 = v105;
        a8 = v109;
        a7 = v113;
        v14 = v117;
        a11 = v57;
        result = v121;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_24;
        }
      }

      v122 = result;
      v58 = a11;
      v118 = v14;
      v110 = a8;
      v114 = a7;
      v106 = v24;
      v98 = v31;
      v102 = v30;
      v94 = v32;
      v86 = v34;
      v90 = v33;
      v78 = v36;
      v82 = v35;
      v70 = v38;
      v74 = v37;
      v66 = v39;
      v62 = v45;
      sub_1003C83FC();
      v45 = v62;
      v39 = v66;
      v38 = v70;
      v37 = v74;
      v36 = v78;
      v35 = v82;
      v34 = v86;
      v33 = v90;
      v32 = v94;
      v31 = v98;
      v30 = v102;
      v24 = v106;
      a8 = v110;
      a7 = v114;
      v14 = v118;
      a11 = v58;
      result = v122;
LABEL_24:
      v48 = vaddq_f32(v24, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v45)), a7.n128_f32[0]));
      v49 = vcvtq_s32_f32(vaddq_f32(v48, vorrq_s8(vandq_s8(xmmword_1004B0010, v48), xmmword_1004B0030)));
      v47[1] = v49;
      v40 += 8;
      v42 = v43 + 1;
      v41 = v44 + 2;
    }

    while (v40 <= v25);
    if (v15 > v40)
    {
      v52 = v40 & 0xFFFFFFF8;
      if (v30 <= 7)
      {
        goto LABEL_39;
      }

      v52 += v32;
      v53 = v35;
      do
      {
        v54 = *v43++;
        v55 = vmlaq_f32(v34, v33, vcvtq_f32_s32(vmovl_s16(*v54.i8)));
        v56 = vmlaq_f32(v34, v33, vcvtq_f32_s32(vmovl_high_s16(v54)));
        v49 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v56.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v56, v56, 8uLL)))));
        *v44 = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v55.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v55, v55, 8uLL)))));
        v44[1] = v49;
        v44 += 2;
        v53 -= 8;
      }

      while (v53);
      if (v31)
      {
LABEL_39:
        do
        {
          v49.i16[0] = result->i16[v52];
          v49.i64[0] = vmovl_s16(*v49.i8).u64[0];
          *v49.i32 = rintf(a8.n128_f32[0] + (v49.i32[0] * a7.n128_f32[0]));
          a11->i32[v52++] = *v49.i32;
        }

        while (v52 < v15);
      }
    }

    result = (result + v37);
    a11 = (a11 + v39);
    v36 = (v36 + v37);
    v38 = (v38 + v39);
    if (--v14)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_10021EA78(uint64_t result, unint64_t a2, double a3, double a4, double a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, int *a12, unint64_t *a13)
{
  v13 = a12[1];
  if (!v13)
  {
    return result;
  }

  v14 = *a12;
  a6.n128_u64[0] = *a13;
  a7.n128_u64[0] = a13[1];
  v15 = a2 >> 2;
  v16 = a11 >> 2;
  if (v14 >= 4)
  {
    v21 = 0;
    v22 = vdupq_lane_s64(a7.n128_i64[0], 0);
    v23 = a10 - result;
    v24 = (a11 & 0xFFFFFFFFFFFFFFFCLL) - (a2 & 0xFFFFFFFFFFFFFFFCLL);
    v25 = v14 & 3;
    v26 = vdupq_lane_s64(a6.n128_i64[0], 0);
    v27 = v22;
    v28 = 4 * v16;
    v29 = 4 * v15;
    v30 = v25 - v14;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = v23 + v24 * v21;
      v35 = 4;
      do
      {
        v36 = v35;
        v38 = *(result + v31);
        v37 = *(result + v31 + 8);
        if (atomic_load_explicit(byte_1004B0130, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0130, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v72 = result;
          v74 = a10;
          v68 = a7;
          v70 = a6;
          v66 = v22;
          v62 = v24;
          v64 = v23;
          v60 = v25;
          v56 = v27;
          v58 = v26;
          v52 = v29;
          v54 = v28;
          v48 = v34;
          v50 = v30;
          sub_1003C84D4();
          v34 = v48;
          v30 = v50;
          v29 = v52;
          v28 = v54;
          v27 = v56;
          v26 = v58;
          v25 = v60;
          v24 = v62;
          v23 = v64;
          v22 = v66;
          a7 = v68;
          a6 = v70;
          result = v72;
          a10 = v74;
          if (atomic_load_explicit(byte_1004B0130, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        v73 = result;
        v75 = a10;
        v69 = a7;
        v71 = a6;
        v67 = v22;
        v63 = v24;
        v65 = v23;
        v61 = v25;
        v57 = v27;
        v59 = v26;
        v53 = v29;
        v55 = v28;
        v49 = v34;
        v51 = v30;
        sub_1003C84D4();
        v34 = v49;
        v30 = v51;
        v29 = v53;
        v28 = v55;
        v27 = v57;
        v26 = v59;
        v25 = v61;
        v24 = v63;
        v23 = v65;
        v22 = v67;
        a7 = v69;
        a6 = v71;
        result = v73;
        a10 = v75;
LABEL_14:
        v39.i64[0] = v38;
        v39.i64[1] = SHIDWORD(v38);
        v40 = vcvtq_f64_s64(v39);
        v39.i64[0] = v37;
        v39.i64[1] = SHIDWORD(v37);
        *(a10 + v31) = vuzp1q_s32(vcvtaq_s64_f64(vaddq_f64(v22, vmulq_n_f64(v40, a6.n128_f64[0]))), vcvtaq_s64_f64(vaddq_f64(v22, vmulq_n_f64(vcvtq_f64_s64(v39), a6.n128_f64[0]))));
        v33 += 0x400000000;
        v32 += 4;
        v31 += 16;
        v35 = v36 + 4;
      }

      while (v14 - 4 >= v32);
      if (v14 > v32)
      {
        v41 = v33 >> 32;
        v42 = v14 - (v33 >> 32);
        if (v42 < 4)
        {
          goto LABEL_28;
        }

        if (v34 < 0x10)
        {
          goto LABEL_28;
        }

        v41 += v42 - v25;
        v43 = v30 + v36;
        v44 = 4 * v36;
        do
        {
          v45 = *(result + v44);
          v46.i64[0] = SDWORD2(v45);
          v46.i64[1] = SHIDWORD(v45);
          v47 = vcvtq_f64_s64(v46);
          v46.i64[0] = v45;
          v46.i64[1] = SDWORD1(v45);
          *(a10 + v44) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v27, v26, vcvtq_f64_s64(v46)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v27, v26, v47))));
          v44 += 16;
          v43 += 4;
        }

        while (v43);
        if (v25)
        {
LABEL_28:
          do
          {
            *(a10 + 4 * v41) = rint(a7.n128_f64[0] + *(result + 4 * v41) * a6.n128_f64[0]);
            ++v41;
          }

          while (v41 < v14);
        }
      }

      ++v21;
      a10 += v28;
      result += v29;
      if (!--v13)
      {
        return result;
      }
    }
  }

  if (v14 >= 1)
  {
    v17 = (result + 8);
    v18 = 4 * v15;
    v19 = (a10 + 8);
    v20 = 4 * v16;
    do
    {
      *(v19 - 2) = rint(a7.n128_f64[0] + *(v17 - 2) * a6.n128_f64[0]);
      if (v14 != 1)
      {
        *(v19 - 1) = rint(a7.n128_f64[0] + *(v17 - 1) * a6.n128_f64[0]);
        if (v14 != 2)
        {
          *v19 = rint(a7.n128_f64[0] + *v17 * a6.n128_f64[0]);
        }
      }

      v17 = (v17 + v18);
      v19 = (v19 + v20);
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_10021ED88(uint64_t result, unint64_t a2, double a3, double a4, double a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, int *a12, double *a13)
{
  v13 = a12[1];
  if (!v13)
  {
    return result;
  }

  v14 = *a12;
  a6.n128_f32[0] = *a13;
  a7.n128_f32[0] = a13[1];
  v15 = a2 >> 2;
  v16 = a11 >> 2;
  v17 = v14 - 4;
  if (v14 >= 4)
  {
    v22 = vdupq_lane_s32(a7.n128_u64[0], 0);
    v23 = v14 & 3;
    v24 = 4 * v15;
    v25 = 4 * v16;
    v26 = vdupq_lane_s32(a6.n128_u64[0], 0);
    v27 = v23 - v14;
    while (1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 4;
      do
      {
        v32 = v31;
        v33 = *(result + v28);
        if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v62 = result;
          v64 = a10;
          v60 = v13;
          v58 = v14;
          v54 = a7;
          v56 = a6;
          v52 = v22;
          v48 = v24;
          v50 = v23;
          v46 = v25;
          v44 = v26;
          v42 = v27;
          v40 = v33;
          sub_1003C83B4();
          v33 = v40;
          v27 = v42;
          v26 = v44;
          v25 = v46;
          v24 = v48;
          v23 = v50;
          v22 = v52;
          a7 = v54;
          a6 = v56;
          v14 = v58;
          v13 = v60;
          result = v62;
          a10 = v64;
          if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        v63 = result;
        v65 = a10;
        v61 = v13;
        v59 = v14;
        v55 = a7;
        v57 = a6;
        v53 = v22;
        v49 = v24;
        v51 = v23;
        v47 = v25;
        v45 = v26;
        v43 = v27;
        v41 = v33;
        sub_1003C83FC();
        v33 = v41;
        v27 = v43;
        v26 = v45;
        v25 = v47;
        v24 = v49;
        v23 = v51;
        v22 = v53;
        a7 = v55;
        a6 = v57;
        v14 = v59;
        v13 = v61;
        result = v63;
        a10 = v65;
LABEL_14:
        v34 = vaddq_f32(v22, vmulq_n_f32(v33, a6.n128_f32[0]));
        *(a10 + v28) = vcvtq_s32_f32(vaddq_f32(v34, vorrq_s8(vandq_s8(xmmword_1004B0010, v34), xmmword_1004B0030)));
        v30 += 0x400000000;
        v29 += 4;
        v28 += 16;
        v31 = v32 + 4;
      }

      while (v17 >= v29);
      if (v14 > v29)
      {
        v35 = v30 >> 32;
        v36 = v14 - (v30 >> 32);
        if (v36 < 4)
        {
          goto LABEL_27;
        }

        v35 += v36 - v23;
        v37 = v27 + v32;
        v38 = 4 * v32;
        do
        {
          v39 = vmlaq_f32(v22, v26, *(result + v38));
          *(a10 + v38) = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v39.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v39, v39, 8uLL)))));
          v38 += 16;
          v37 += 4;
        }

        while (v37);
        if (v23)
        {
LABEL_27:
          do
          {
            *(a10 + 4 * v35) = rintf(a7.n128_f32[0] + (*(result + 4 * v35) * a6.n128_f32[0]));
            ++v35;
          }

          while (v35 < v14);
        }
      }

      result += v24;
      a10 += v25;
      if (!--v13)
      {
        return result;
      }
    }
  }

  if (v14 >= 1)
  {
    v18 = (result + 8);
    v19 = 4 * v15;
    v20 = (a10 + 8);
    v21 = 4 * v16;
    do
    {
      *(v20 - 2) = rintf(a7.n128_f32[0] + (*(v18 - 2) * a6.n128_f32[0]));
      if (v14 != 1)
      {
        *(v20 - 1) = rintf(a7.n128_f32[0] + (*(v18 - 1) * a6.n128_f32[0]));
        if (v14 != 2)
        {
          *v20 = rintf(a7.n128_f32[0] + (*v18 * a6.n128_f32[0]));
        }
      }

      v18 = (v18 + v19);
      v20 = (v20 + v21);
      --v13;
    }

    while (v13);
  }

  return result;
}

float64x2_t *sub_10021F068(float64x2_t *result, unint64_t a2, double a3, double a4, double a5, __n128 a6, __n128 a7, uint64_t a8, uint64_t a9, int32x4_t *a10, unint64_t a11, int *a12, unint64_t *a13)
{
  v13 = a12[1];
  if (!v13)
  {
    return result;
  }

  v14 = *a12;
  a6.n128_u64[0] = *a13;
  a7.n128_u64[0] = a13[1];
  v15 = a2 >> 3;
  v16 = a11 >> 2;
  if (v14 >= 4)
  {
    v21 = vdupq_lane_s64(a7.n128_i64[0], 0);
    v22 = v14 & 3;
    v23 = vdupq_lane_s64(a6.n128_i64[0], 0);
    v24 = 4 * v16;
    v25 = v21;
    v26 = result + 1;
    v27 = 8 * v15;
    v28 = v22 - v14;
    while (1)
    {
      v29 = 0;
      v30 = 0;
      v31 = 4;
      v32 = v26;
      v33 = a10;
      do
      {
        v34 = v31;
        v35 = v32[-1];
        v36 = *v32;
        if (atomic_load_explicit(byte_1004B0130, memory_order_acquire))
        {
          if (atomic_load_explicit(byte_1004B0130, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        else
        {
          v66 = result;
          v68 = a10;
          v64 = a6;
          v60 = v21;
          v62 = a7;
          v58 = v22;
          v56 = v23;
          v54 = v24;
          v52 = v25;
          v48 = v27;
          v50 = v26;
          v46 = v28;
          v42 = v35;
          v44 = v36;
          sub_1003C84D4();
          v35 = v42;
          v36 = v44;
          v28 = v46;
          v27 = v48;
          v26 = v50;
          v25 = v52;
          v24 = v54;
          v23 = v56;
          v22 = v58;
          v21 = v60;
          a7 = v62;
          a6 = v64;
          result = v66;
          a10 = v68;
          if (atomic_load_explicit(byte_1004B0130, memory_order_acquire))
          {
            goto LABEL_14;
          }
        }

        v67 = result;
        v69 = a10;
        v65 = a6;
        v61 = v21;
        v63 = a7;
        v59 = v22;
        v57 = v23;
        v55 = v24;
        v53 = v25;
        v49 = v27;
        v51 = v26;
        v47 = v28;
        v43 = v35;
        v45 = v36;
        sub_1003C84D4();
        v35 = v43;
        v36 = v45;
        v28 = v47;
        v27 = v49;
        v26 = v51;
        v25 = v53;
        v24 = v55;
        v23 = v57;
        v22 = v59;
        v21 = v61;
        a7 = v63;
        a6 = v65;
        result = v67;
        a10 = v69;
LABEL_14:
        *v33++ = vuzp1q_s32(vcvtaq_s64_f64(vaddq_f64(v21, vmulq_n_f64(v35, a6.n128_f64[0]))), vcvtaq_s64_f64(vaddq_f64(v21, vmulq_n_f64(v36, a6.n128_f64[0]))));
        v30 += 0x400000000;
        v29 += 4;
        v32 += 2;
        v31 = v34 + 4;
      }

      while (v14 - 4 >= v29);
      if (v14 > v29)
      {
        v37 = v30 >> 32;
        v38 = v14 - (v30 >> 32);
        if (v38 < 4)
        {
          goto LABEL_27;
        }

        v37 += v38 - v22;
        v39 = v28 + v34;
        v40 = 8 * v34;
        v41 = 4 * v34;
        do
        {
          *(a10 + v41) = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v25, v23, *(result + v40)))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v25, v23, *(result + v40 + 16)))));
          v40 += 32;
          v41 += 16;
          v39 += 4;
        }

        while (v39);
        if (v22)
        {
LABEL_27:
          do
          {
            a10->i32[v37] = rint(a7.n128_f64[0] + result->f64[v37] * a6.n128_f64[0]);
            ++v37;
          }

          while (v37 < v14);
        }
      }

      a10 = (a10 + v24);
      v26 = (v26 + v27);
      result = (result + v27);
      if (!--v13)
      {
        return result;
      }
    }
  }

  if (v14 >= 1)
  {
    v17 = result + 1;
    v18 = 8 * v15;
    v19 = &a10->i64[1];
    v20 = 4 * v16;
    do
    {
      *(v19 - 2) = rint(a7.n128_f64[0] + v17[-1].f64[0] * a6.n128_f64[0]);
      if (v14 != 1)
      {
        *(v19 - 1) = rint(a7.n128_f64[0] + v17[-1].f64[1] * a6.n128_f64[0]);
        if (v14 != 2)
        {
          *v19 = rint(a7.n128_f64[0] + v17->f64[0] * a6.n128_f64[0]);
        }
      }

      v17 = (v17 + v18);
      v19 = (v19 + v20);
      --v13;
    }

    while (v13);
  }

  return result;
}

const char *sub_10021F340(const char *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10, uint64_t a11, uint64_t a12, float32x4_t *a13, unint64_t a14, int *a15, uint64_t a16)
{
  v16 = a15[1];
  if (!v16)
  {
    return result;
  }

  v17 = *a15;
  v18 = *a16;
  v19 = *(a16 + 8);
  *v18.i32 = *a16;
  *&v19 = v19;
  v20 = vdupq_lane_s32(*&v19, 0);
  v21 = a14 >> 2;
  v22 = vdupq_lane_s32(v18, 0);
  v23 = v17 - 4;
  v24 = (v17 - 8);
  if (v17 < 8)
  {
    if (v17 < 4)
    {
      if (v17 >= 1)
      {
        v25 = result + 2;
        v26 = &a13->i32[2];
        do
        {
          v20.i8[0] = *(v25 - 2);
          v20.f32[0] = *&v19 + (v20.u32[0] * *v18.i32);
          *(v26 - 2) = v20.i32[0];
          if (v17 != 1)
          {
            v20.i8[0] = *(v25 - 1);
            v20.f32[0] = *&v19 + (v20.u32[0] * *v18.i32);
            *(v26 - 1) = v20.i32[0];
            if (v17 != 2)
            {
              v20.i8[0] = *v25;
              v20.f32[0] = *&v19 + (v20.u32[0] * *v18.i32);
              *v26 = v20.i32[0];
            }
          }

          v25 += a2;
          v26 += v21;
          --v16;
        }

        while (v16);
      }

      return result;
    }

    v75 = 0;
    if (v23 <= 3)
    {
      v76 = 3;
    }

    else
    {
      v76 = v17 - 4;
    }

    v77 = ((v76 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v78 = a14 & 0xFFFFFFFFFFFFFFFCLL;
    v79 = v17 - (v77 >> 32);
    v80 = (v16 - 1);
    v81 = a13[1].u64 + 4 * v21 * v80 + ((4 * v76) & 0x1FFFFFFF0);
    v82 = &result[v80 * a2 + 4 + (v76 & 0x7FFFFFFC)];
    v83 = (v76 >> 2) + 1;
    v84 = v77 >> 30;
    v85 = &result[v79];
    v87 = v82 > a13 && v81 > result;
    v88 = v79 & 0xFFFFFFFFFFFFFFF8;
    v89 = v23 < 60 || ((a14 | a2) & 0x8000000000000000) != 0 || v87;
    v90 = vdupq_lane_s32(v18, 0);
    v91 = vdupq_lane_s32(*&v19, 0);
    v92 = &a13->i64[1] + 4;
    v93 = 4 * v21;
    v94 = a13 + 1;
    v95 = result + 4;
    v96 = -v84;
    v97 = a13;
    while (1)
    {
      if (v89)
      {
        v98 = 0;
      }

      else
      {
        v126 = vld4q_s8(result);
        v99 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v126.val[0].i8, v18) & 0xFF00FF00FF00FFLL)));
        v100 = vextq_s8(v126.val[0], v126.val[0], 8uLL).u64[0];
        a10 = vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v100, v18) & 0xFF00FF00FF00FFLL)));
        a9 = vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v100, v18) & 0xFF00FF00FF00FFLL)));
        v101 = vextq_s8(v126.val[1], v126.val[1], 8uLL).u64[0];
        v123.val[1] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v126.val[1].i8, v18) & 0xFF00FF00FF00FFLL))));
        v123.val[0] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v126.val[0].i8, v18) & 0xFF00FF00FF00FFLL))));
        v123.val[3] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v126.val[3].i8, v18) & 0xFF00FF00FF00FFLL))));
        v123.val[2] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v126.val[2].i8, v18) & 0xFF00FF00FF00FFLL))));
        v102 = v97;
        vst4q_f32(v102, v123);
        v102 += 16;
        v103 = vextq_s8(v126.val[2], v126.val[2], 8uLL).u64[0];
        v126.val[0].i64[0] = vextq_s8(v126.val[3], v126.val[3], 8uLL).u64[0];
        v128.val[1] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v101, v18) & 0xFF00FF00FF00FFLL))));
        v123.val[1] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v101, v18) & 0xFF00FF00FF00FFLL))));
        v124.val[1] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v126.val[1].i8, v18) & 0xFF00FF00FF00FFLL))));
        v124.val[0] = vmlaq_f32(v91, v90, v99);
        v124.val[3] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v126.val[3].i8, v18) & 0xFF00FF00FF00FFLL))));
        v124.val[2] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v126.val[2].i8, v18) & 0xFF00FF00FF00FFLL))));
        vst4q_f32(v102, v124);
        v123.val[0] = vmlaq_f32(v91, v90, a10);
        v123.val[3] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(*v126.val[0].i8, v18) & 0xFF00FF00FF00FFLL))));
        v123.val[2] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip1_s8(v103, v18) & 0xFF00FF00FF00FFLL))));
        v104 = (v97 + 128);
        vst4q_f32(v104, v123);
        v128.val[0] = vmlaq_f32(v91, v90, a9);
        v128.val[3] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(*v126.val[0].i8, v18) & 0xFF00FF00FF00FFLL))));
        v128.val[2] = vmlaq_f32(v91, v90, vcvtq_f32_u32(vmovl_u16((*&vzip2_s8(v103, v18) & 0xFF00FF00FF00FFLL))));
        v105 = (v97 + 192);
        vst4q_f32(v105, v128);
        v98 = 4 * (v83 & 0x3FFFFFF0);
        if (v83 == (v83 & 0x3FFFFFF0))
        {
          goto LABEL_50;
        }
      }

      v106 = (v92 + 4 * v98);
      do
      {
        a9.i8[0] = result[v98];
        *&v107 = *&v19 + (a9.u32[0] * *v18.i32);
        a10.i8[0] = result[v98 + 1];
        *&v108 = *&v19 + (a10.u32[0] * *v18.i32);
        *(v106 - 3) = *&v107;
        v109 = v97 + 4 * v98;
        *(v109 + 4) = *&v108;
        LOBYTE(v107) = result[v98 + 2];
        a9.f32[0] = *&v19 + (v107 * *v18.i32);
        LOBYTE(v108) = result[v98 + 3];
        a10.f32[0] = *&v19 + (v108 * *v18.i32);
        *(v109 + 8) = a9.i32[0];
        *v106 = a10.f32[0];
        v106 += 4;
        v98 += 4;
      }

      while (v98 <= v23);
LABEL_50:
      if (v17 > v98)
      {
        v110 = v98;
        if (v79 < 8 || v97 + 4 * v98 < &v85[v75 * a2 + v98] && &result[v98] < &a13->i8[4 * v98 + 4 * v17 + v96 + v78 * v75])
        {
          goto LABEL_61;
        }

        v111 = v98 + v88;
        v112 = &v95[v110];
        v113 = v79 & 0xFFFFFFFFFFFFFFF8;
        v114 = (v94 + 4 * v110);
        do
        {
          a9.i32[0] = *(v112 - 1);
          a10.i32[0] = *v112;
          a10 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a10.f32)));
          v115 = vmlaq_f32(v20, v22, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*a9.f32))));
          a9 = vmlaq_f32(v20, v22, a10);
          v114[-1] = v115;
          *v114 = a9;
          v114 += 2;
          v112 += 2;
          v113 -= 8;
        }

        while (v113);
        v110 = v111;
        if (v79 != v88)
        {
LABEL_61:
          do
          {
            a9.i8[0] = result[v110];
            a9.f32[0] = *&v19 + (a9.u32[0] * *v18.i32);
            *(v97 + 4 * v110++) = a9.i32[0];
          }

          while (v17 != v110);
        }
      }

      result += a2;
      v97 += v93;
      ++v75;
      v92 += v93;
      v94 = (v94 + v93);
      v95 += a2;
      if (!--v16)
      {
        return result;
      }
    }
  }

  v27 = 0;
  v121 = a14 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = (v24 & 0xFFFFFFF8) + 8;
  v29 = v28 | 4;
  if ((v28 | 4) <= v23 + 1)
  {
    v29 = v23 + 1;
  }

  v30 = ~v28 + v29;
  v31 = v30 >> 2;
  v119 = v30;
  v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
  v33 = (v30 >> 2) + 1;
  v34 = a13 + 1;
  v120 = &a13[v31 + 1];
  v35 = result + 4;
  v36 = &result[v32 + 4];
  v37 = a13->i64 + 4 * v17;
  v38 = &result[v17];
  v117 = v33;
  v118 = v33 & 0x7FFFFFFFFFFFFFF0;
  v116 = 4 * (v33 & 0x7FFFFFFFFFFFFFF0);
  v39 = vdupq_lane_s32(v18, 0);
  v40 = vdupq_lane_s32(*&v19, 0);
  v41 = 4 * v21;
  v42 = &a13->i64[1] + 4;
  do
  {
    v43 = 0;
    v44 = 0;
    v45 = 8;
    v46 = v34;
    do
    {
      v47 = v45;
      v48 = vmovl_u8(*&result[v44]);
      v49 = vaddq_f32(v20, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v48.i8)), *v18.i32));
      v50 = vaddq_f32(v20, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v48)), *v18.i32));
      v44 += 8;
      v46[-1] = v49;
      *v46 = v50;
      v43 += 0x800000000;
      v46 += 2;
      v45 += 8;
    }

    while (v44 <= v24);
    if (v23 >= v44)
    {
      v44 = v43 >> 32;
      if (v119 <= 0x3B)
      {
        goto LABEL_23;
      }

      v51 = v43 >> 30;
      if (a13 + v51 < &v36[v27 * a2 + v44] && &result[v44] < v120 + v121 * v27 + v51)
      {
        goto LABEL_23;
      }

      v44 += v116;
      v52 = v47;
      v53 = v47;
      v54 = v118;
      do
      {
        v55 = &result[v52];
        v125 = vld4q_s8(v55);
        v127.val[1] = vmlaq_f32(v40, v39, vcvtq_f32_u32(vqtbl1q_s8(v125.val[1], xmmword_1003E3730)));
        v127.val[0] = vmlaq_f32(v40, v39, vcvtq_f32_u32(vqtbl1q_s8(v125.val[0], xmmword_1003E3730)));
        v127.val[3] = vmlaq_f32(v40, v39, vcvtq_f32_u32(vqtbl1q_s8(v125.val[3], xmmword_1003E3730)));
        v127.val[2] = vmlaq_f32(v40, v39, vcvtq_f32_u32(vqtbl1q_s8(v125.val[2], xmmword_1003E3730)));
        v122.val[1] = vmlaq_f32(v40, v39, vcvtq_f32_u32(vqtbl1q_s8(v125.val[1], xmmword_1003E3720)));
        v122.val[0] = vmlaq_f32(v40, v39, vcvtq_f32_u32(vqtbl1q_s8(v125.val[0], xmmword_1003E3720)));
        v122.val[3] = vmlaq_f32(v40, v39, vcvtq_f32_u32(vqtbl1q_s8(v125.val[3], xmmword_1003E3720)));
        v122.val[2] = vmlaq_f32(v40, v39, vcvtq_f32_u32(vqtbl1q_s8(v125.val[2], xmmword_1003E3720)));
        v56 = &a13->f32[v53];
        vst4q_f32(v56, v122);
        v56 += 16;
        vst4q_f32(v56, v127);
        v57 = &a13[8].f32[v53];
        v58 = &a13[12].f32[v53];
        v59 = vcvtq_f32_u32(vqtbl1q_s8(v125.val[0], xmmword_1003E3700));
        v49 = vcvtq_f32_u32(vqtbl1q_s8(v125.val[0], xmmword_1003E3710));
        v60 = vcvtq_f32_u32(vqtbl1q_s8(v125.val[1], xmmword_1003E3700));
        v61 = vcvtq_f32_u32(vqtbl1q_s8(v125.val[1], xmmword_1003E3710));
        v62 = vcvtq_f32_u32(vqtbl1q_s8(v125.val[2], xmmword_1003E3700));
        v63 = vcvtq_f32_u32(vqtbl1q_s8(v125.val[2], xmmword_1003E3710));
        v125.val[0] = vcvtq_f32_u32(vqtbl1q_s8(v125.val[3], xmmword_1003E3700));
        v50 = vcvtq_f32_u32(vqtbl1q_s8(v125.val[3], xmmword_1003E3710));
        v125.val[1] = vmlaq_f32(v40, v39, v49);
        v125.val[2] = vmlaq_f32(v40, v39, v61);
        v125.val[3] = vmlaq_f32(v40, v39, v63);
        v64 = vmlaq_f32(v40, v39, v50);
        v127.val[0] = vmlaq_f32(v40, v39, v59);
        v127.val[1] = vmlaq_f32(v40, v39, v60);
        v127.val[2] = vmlaq_f32(v40, v39, v62);
        v127.val[3] = vmlaq_f32(v40, v39, v125.val[0]);
        vst4q_f32(v57, v127);
        vst4q_f32(v58, *(&v125 + 16));
        v53 += 64;
        v52 += 64;
        v54 -= 16;
      }

      while (v54);
      if (v117 != v118)
      {
LABEL_23:
        v65 = (v42 + 4 * v44);
        do
        {
          v50.i8[0] = result[v44];
          *&v66 = *&v19 + (v50.u32[0] * *v18.i32);
          v49.i8[0] = result[v44 + 1];
          *&v67 = *&v19 + (v49.u32[0] * *v18.i32);
          *(v65 - 3) = *&v66;
          v68 = a13->i64 + 4 * v44;
          *(v68 + 4) = *&v67;
          LOBYTE(v66) = result[v44 + 2];
          v50.f32[0] = *&v19 + (v66 * *v18.i32);
          LOBYTE(v67) = result[v44 + 3];
          v49.f32[0] = *&v19 + (v67 * *v18.i32);
          *(v68 + 8) = v50.i32[0];
          *v65 = v49.f32[0];
          v65 += 4;
          v44 += 4;
        }

        while (v44 <= v23);
      }
    }

    if (v44 < v17)
    {
      v69 = v44;
      v70 = v17 - v44;
      if (v70 <= 7 || &a13->f32[v44] < &v38[v27 * a2] && &result[v44] < v37 + v121 * v27)
      {
        goto LABEL_62;
      }

      v71 = (v34 + 4 * v44);
      v72 = &v35[v44];
      v73 = v70 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v50.i32[0] = *(v72 - 1);
        v49.i32[0] = *v72;
        v49 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v49.f32)));
        v74 = vmlaq_f32(v20, v22, vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v50.f32))));
        v50 = vmlaq_f32(v20, v22, v49);
        v71[-1] = v74;
        *v71 = v50;
        v71 += 2;
        v72 += 2;
        v73 -= 8;
      }

      while (v73);
      v69 = (v70 & 0xFFFFFFFFFFFFFFF8) + v44;
      if (v70 != (v70 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_62:
        do
        {
          v50.i8[0] = result[v69];
          v50.f32[0] = *&v19 + (v50.u32[0] * *v18.i32);
          a13->i32[v69++] = v50.i32[0];
        }

        while (v17 != v69);
      }
    }

    result += a2;
    a13 = (a13 + v41);
    ++v27;
    v34 = (v34 + v41);
    v42 += v41;
    v35 += a2;
    --v16;
  }

  while (v16);
  return result;
}

const char *sub_10021FBDC(const char *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, float32x4_t *a13, unint64_t a14, int *a15, uint64_t a16)
{
  v16 = a15[1];
  if (!v16)
  {
    return result;
  }

  v17 = *a15;
  v18 = *a16;
  v19 = *(a16 + 8);
  *v18.i32 = *a16;
  *&v19 = v19;
  v20 = vdupq_lane_s32(*&v19, 0);
  v21 = a14 >> 2;
  v22 = vdupq_lane_s32(v18, 0);
  v23 = v17 - 4;
  v24 = (v17 - 8);
  if (v17 >= 8)
  {
    v27 = 0;
    v135 = a14 & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v24 & 0xFFFFFFF8) + 8;
    v29 = v28 | 4;
    if ((v28 | 4) <= v23 + 1)
    {
      v29 = v23 + 1;
    }

    v30 = ~v28 + v29;
    v31 = v30 >> 2;
    v133 = v30;
    v32 = v30 & 0xFFFFFFFFFFFFFFFCLL;
    v33 = (v30 >> 2) + 1;
    v34 = a13 + 1;
    v35 = &a13[v31 + 1];
    v36 = &result[v32 + 4];
    v37 = a13->i64 + 4 * v17;
    v38 = &result[v17];
    v131 = v33;
    v132 = v33 & 0x7FFFFFFFFFFFFFF0;
    v130 = 4 * (v33 & 0x7FFFFFFFFFFFFFF0);
    v39 = vdupq_lane_s32(v18, 0);
    v40 = vdupq_lane_s32(*&v19, 0);
    v41 = 4 * v21;
    v42 = &a13->i64[1] + 4;
    while (1)
    {
      v43 = 0;
      v44 = 0;
      v45 = 8;
      v46 = v34;
      do
      {
        v47 = v45;
        v48 = vmovl_s8(*&result[v44]);
        v49 = vaddq_f32(v20, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v48.i8)), *v18.i32));
        v50 = vaddq_f32(v20, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v48)), *v18.i32));
        v44 += 8;
        v46[-1] = v49;
        *v46 = v50;
        v43 += 0x800000000;
        v46 += 2;
        v45 += 8;
      }

      while (v44 <= v24);
      if (v23 >= v44)
      {
        v44 = v43 >> 32;
        if (v133 <= 0x3B || a13 + (v43 >> 30) < &v36[v27 * a2 + v44] && &result[v44] < v35 + v135 * v27 + (v43 >> 30))
        {
          goto LABEL_23;
        }

        v44 += v130;
        v51 = v47;
        v52 = v47;
        v53 = v132;
        do
        {
          v54 = &result[v51];
          v138 = vld4q_s8(v54);
          v140.val[1] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[1], xmmword_1003E3770), 0x18uLL));
          v140.val[0] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[0], xmmword_1003E3770), 0x18uLL));
          v140.val[3] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[3], xmmword_1003E3770), 0x18uLL));
          v140.val[2] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[2], xmmword_1003E3770), 0x18uLL));
          v136.val[1] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[1], xmmword_1003E3760), 0x18uLL));
          v136.val[0] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[0], xmmword_1003E3760), 0x18uLL));
          v136.val[3] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[3], xmmword_1003E3760), 0x18uLL));
          v136.val[2] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[2], xmmword_1003E3760), 0x18uLL));
          v55 = &a13->f32[v52];
          vst4q_f32(v55, v136);
          v55 += 16;
          vst4q_f32(v55, v140);
          v56 = &a13[8].f32[v52];
          v57 = &a13[12].f32[v52];
          v58 = vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[0], xmmword_1003E3740), 0x18uLL);
          v49 = vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[0], xmmword_1003E3750), 0x18uLL);
          v59 = vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[1], xmmword_1003E3740), 0x18uLL);
          v60 = vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[1], xmmword_1003E3750), 0x18uLL);
          v61 = vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[2], xmmword_1003E3740), 0x18uLL);
          v62 = vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[2], xmmword_1003E3750), 0x18uLL);
          v138.val[0] = vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[3], xmmword_1003E3740), 0x18uLL);
          v50 = vcvtq_n_f32_s32(vqtbl1q_s8(v138.val[3], xmmword_1003E3750), 0x18uLL);
          v138.val[1] = vmlaq_f32(v40, v39, v49);
          v138.val[2] = vmlaq_f32(v40, v39, v60);
          v138.val[3] = vmlaq_f32(v40, v39, v62);
          v63 = vmlaq_f32(v40, v39, v50);
          v140.val[0] = vmlaq_f32(v40, v39, v58);
          v140.val[1] = vmlaq_f32(v40, v39, v59);
          v140.val[2] = vmlaq_f32(v40, v39, v61);
          v140.val[3] = vmlaq_f32(v40, v39, v138.val[0]);
          vst4q_f32(v56, v140);
          vst4q_f32(v57, *(&v138 + 16));
          v52 += 64;
          v51 += 64;
          v53 -= 16;
        }

        while (v53);
        if (v131 != v132)
        {
LABEL_23:
          v64 = (v42 + 4 * v44);
          do
          {
            v50.i8[0] = result[v44];
            v65 = vmovl_s16(*&vmovl_s8(*v50.f32)).u64[0];
            *v65.i32 = *&v19 + (v65.i32[0] * *v18.i32);
            v49.i8[0] = result[v44 + 1];
            v66 = vmovl_s16(*&vmovl_s8(*v49.f32)).u64[0];
            *v66.i32 = *&v19 + (v66.i32[0] * *v18.i32);
            *(v64 - 3) = v65.i32[0];
            v67 = a13->i64 + 4 * v44;
            *(v67 + 4) = v66.i32[0];
            v65.i8[0] = result[v44 + 2];
            v50 = vmovl_s16(*&vmovl_s8(v65));
            v50.f32[0] = *&v19 + (v50.i32[0] * *v18.i32);
            v66.i8[0] = result[v44 + 3];
            v49.i64[0] = vmovl_s16(*&vmovl_s8(v66)).u64[0];
            v49.f32[0] = *&v19 + (v49.i32[0] * *v18.i32);
            *(v67 + 8) = v50.i32[0];
            *v64 = v49.i32[0];
            v64 += 4;
            v44 += 4;
          }

          while (v44 <= v23);
        }
      }

      if (v44 >= v17)
      {
        goto LABEL_13;
      }

      v68 = v44;
      v69 = v17 - v44;
      if (v69 >= 4)
      {
        if (&a13->f32[v44] >= &v38[v27 * a2] || &result[v44] >= v37 + v135 * v27)
        {
          if (v69 < 0x10)
          {
            v71 = 0;
LABEL_37:
            v70 = (v69 & 0xFFFFFFFFFFFFFFFCLL) + v68;
            v78 = v71 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
            v79 = v71 + v68;
            v80 = 4 * v79;
            do
            {
              v50.i32[0] = *&result[v79];
              v50 = vcvtq_n_f32_s32(vqtbl1q_s8(v50, xmmword_1003E3760), 0x18uLL);
              *(a13 + v80) = vmlaq_f32(v20, v22, v50);
              v79 += 4;
              v80 += 16;
              v78 += 4;
            }

            while (v78);
            if (v69 == (v69 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_13;
            }

            goto LABEL_42;
          }

          v71 = v69 & 0xFFFFFFFFFFFFFFF0;
          v72 = 4 * v44;
          v73 = v44;
          v74 = v69 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v75 = *&result[v73];
            v76 = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v75, xmmword_1003E3760), 0x18uLL));
            v77 = (a13 + v72);
            v77[2] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v75, xmmword_1003E3740), 0x18uLL));
            v77[3] = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v75, xmmword_1003E3750), 0x18uLL));
            v50 = vmlaq_f32(v40, v39, vcvtq_n_f32_s32(vqtbl1q_s8(v75, xmmword_1003E3770), 0x18uLL));
            *v77 = v76;
            v77[1] = v50;
            v73 += 16;
            v72 += 64;
            v74 -= 16;
          }

          while (v74);
          if (v69 == v71)
          {
            goto LABEL_13;
          }

          if ((v69 & 0xC) != 0)
          {
            goto LABEL_37;
          }

          v70 = v71 + v68;
        }

        else
        {
          v70 = v44;
        }
      }

      else
      {
        v70 = v44;
      }

      do
      {
LABEL_42:
        v50.i8[0] = result[v70];
        v50.i64[0] = vmovl_s16(*&vmovl_s8(*v50.f32)).u64[0];
        v50.f32[0] = *&v19 + (v50.i32[0] * *v18.i32);
        a13->i32[v70++] = v50.i32[0];
      }

      while (v17 != v70);
LABEL_13:
      result += a2;
      a13 = (a13 + v41);
      ++v27;
      v34 = (v34 + v41);
      v42 += v41;
      if (!--v16)
      {
        return result;
      }
    }
  }

  if (v17 >= 4)
  {
    v81 = 0;
    if (v23 <= 3)
    {
      v82 = 3;
    }

    else
    {
      v82 = v17 - 4;
    }

    v83 = ((v82 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v84 = v83 >> 32;
    v85 = v17 - (v83 >> 32);
    v86 = (v16 - 1);
    v87 = a13[1].u64 + 4 * v21 * v86 + ((4 * v82) & 0x1FFFFFFF0);
    v88 = &result[v86 * a2 + 4 + (v82 & 0x7FFFFFFC)];
    v89 = (v82 >> 2) + 1;
    v90 = v83 >> 30;
    v91 = &result[v85];
    v93 = v88 > a13 && v87 > result;
    v94 = vdupq_lane_s32(v18, 0);
    v95 = vdupq_lane_s32(*&v19, 0);
    v96 = v85 & 0xFFFFFFFFFFFFFFF0;
    v97 = v23 < 60 || ((a14 | a2) & 0x8000000000000000) != 0 || v93;
    v98 = &a13->i64[1] + 4;
    v99 = 4 * v21;
    v134 = (v84 & 0xFFFFFFFFFFFFFFFCLL | v17 & 3) - v17;
    v100 = -v90;
    v101 = a13;
    while (1)
    {
      if (v97)
      {
        v102 = 0;
      }

      else
      {
        v139 = vld4q_s8(result);
        v103 = vextq_s8(v139.val[0], v139.val[0], 8uLL).u64[0];
        v104 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(*v139.val[1].f32, v18), 8uLL), 8uLL)));
        v105 = vzip2_s8(*v139.val[1].f32, v18);
        v106 = vextq_s8(v139.val[1], v139.val[1], 8uLL).u64[0];
        v107 = vextq_s8(v139.val[2], v139.val[2], 8uLL).u64[0];
        v108 = vextq_s8(v139.val[3], v139.val[3], 8uLL).u64[0];
        v139.val[1] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(v106, v18), 8uLL), 8uLL))));
        v137.val[1] = vmlaq_f32(v95, v94, v104);
        v137.val[0] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(*v139.val[0].f32, v18), 8uLL), 8uLL))));
        v137.val[3] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(*v139.val[3].f32, v18), 8uLL), 8uLL))));
        v137.val[2] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(*v139.val[2].f32, v18), 8uLL), 8uLL))));
        v109 = v101;
        vst4q_f32(v109, v137);
        v109 += 16;
        v137.val[0] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(v106, v18), 8uLL), 8uLL))));
        v110 = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(v105, 8uLL), 8uLL))));
        v137.val[3] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(*v139.val[0].f32, v18), 8uLL), 8uLL))));
        a9 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(v108, v18), 8uLL), 8uLL)));
        v111 = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(*v139.val[3].f32, v18), 8uLL), 8uLL))));
        v112 = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(*v139.val[2].f32, v18), 8uLL), 8uLL))));
        vst4q_f32(v109, *(&v137 + 48));
        a10 = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(v103, v18), 8uLL), 8uLL))));
        v137.val[2] = vmlaq_f32(v95, v94, a9);
        v137.val[1] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(v107, v18), 8uLL), 8uLL))));
        v113 = (v101 + 128);
        vst4q_f32(v113, *a10.n128_u64);
        v139.val[0] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(v103, v18), 8uLL), 8uLL))));
        v139.val[3] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(v108, v18), 8uLL), 8uLL))));
        v139.val[2] = vmlaq_f32(v95, v94, vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(v107, v18), 8uLL), 8uLL))));
        v114 = (v101 + 192);
        vst4q_f32(v114, v139);
        v102 = 4 * (v89 & 0x3FFFFFF0);
        if (v89 == (v89 & 0x3FFFFFF0))
        {
          goto LABEL_60;
        }
      }

      v115 = (v98 + 4 * v102);
      do
      {
        a9.n128_u8[0] = result[v102];
        v116 = vmovl_s16(*&vmovl_s8(a9.n128_u64[0])).u64[0];
        *v116.i32 = *&v19 + (v116.i32[0] * *v18.i32);
        a10.n128_u8[0] = result[v102 + 1];
        v117 = vmovl_s16(*&vmovl_s8(a10.n128_u64[0])).u64[0];
        *v117.i32 = *&v19 + (v117.i32[0] * *v18.i32);
        *(v115 - 3) = v116.i32[0];
        v118 = v101 + 4 * v102;
        *(v118 + 4) = v117.i32[0];
        v116.i8[0] = result[v102 + 2];
        a9 = vmovl_s16(*&vmovl_s8(v116));
        a9.n128_f32[0] = *&v19 + (a9.n128_i32[0] * *v18.i32);
        v117.i8[0] = result[v102 + 3];
        a10.n128_u64[0] = vmovl_s16(*&vmovl_s8(v117)).u64[0];
        a10.n128_f32[0] = *&v19 + (a10.n128_i32[0] * *v18.i32);
        *(v118 + 8) = a9.n128_u32[0];
        *v115 = a10.n128_u32[0];
        v115 += 4;
        v102 += 4;
      }

      while (v102 <= v23);
LABEL_60:
      if (v17 > v102)
      {
        v119 = v102;
        if (v85 < 4)
        {
          v102 = v102;
          goto LABEL_75;
        }

        if (v101 + 4 * v102 < &v91[v81 * a2 + v102] && &result[v102] < &a13->i8[4 * v102 + 4 * v17 + v100 + (a14 & 0xFFFFFFFFFFFFFFFCLL) * v81])
        {
          v102 = v102;
          goto LABEL_75;
        }

        if (v85 >= 0x10)
        {
          v121 = 4 * v102;
          v122 = v119;
          v123 = v85 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v124 = *&result[v122];
            v125 = vmlaq_f32(v95, v94, vcvtq_n_f32_s32(vqtbl1q_s8(v124, xmmword_1003E3760), 0x18uLL));
            a10 = vmlaq_f32(v95, v94, vcvtq_n_f32_s32(vqtbl1q_s8(v124, xmmword_1003E3740), 0x18uLL));
            v126 = v101 + v121;
            *(v126 + 32) = a10;
            *(v126 + 48) = vmlaq_f32(v95, v94, vcvtq_n_f32_s32(vqtbl1q_s8(v124, xmmword_1003E3750), 0x18uLL));
            a9 = vmlaq_f32(v95, v94, vcvtq_n_f32_s32(vqtbl1q_s8(v124, xmmword_1003E3770), 0x18uLL));
            *v126 = v125;
            *(v126 + 16) = a9;
            v122 += 16;
            v121 += 64;
            v123 -= 16;
          }

          while (v123);
          if (v85 == v96)
          {
            goto LABEL_54;
          }

          v120 = v85 & 0xFFFFFFFFFFFFFFF0;
          if ((v85 & 0xC) == 0)
          {
            v102 = v119 + v96;
            do
            {
LABEL_75:
              a9.n128_u8[0] = result[v102];
              a9.n128_u64[0] = vmovl_s16(*&vmovl_s8(a9.n128_u64[0])).u64[0];
              a9.n128_f32[0] = *&v19 + (a9.n128_i32[0] * *v18.i32);
              *(v101 + 4 * v102++) = a9.n128_u32[0];
            }

            while (v17 != v102);
            goto LABEL_54;
          }
        }

        else
        {
          v120 = 0;
        }

        v102 = v119 + v85 - (v17 & 3);
        v127 = v134 + v120;
        v128 = v120 + v119;
        v129 = 4 * v128;
        do
        {
          a9.n128_u32[0] = *&result[v128];
          a9 = vcvtq_n_f32_s32(vqtbl1q_s8(a9, xmmword_1003E3760), 0x18uLL);
          a10 = vmlaq_f32(v20, v22, a9);
          *(v101 + v129) = a10;
          v128 += 4;
          v129 += 16;
          v127 += 4;
        }

        while (v127);
        if ((v17 & 3) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_75;
      }

LABEL_54:
      result += a2;
      v101 += v99;
      ++v81;
      v98 += v99;
      if (!--v16)
      {
        return result;
      }
    }
  }

  if (v17 >= 1)
  {
    v25 = result + 2;
    v26 = &a13->i32[2];
    do
    {
      v20.i8[0] = *(v25 - 2);
      v20.i64[0] = vmovl_s16(*&vmovl_s8(*v20.f32)).u64[0];
      v20.f32[0] = *&v19 + (v20.i32[0] * *v18.i32);
      *(v26 - 2) = v20.i32[0];
      if (v17 != 1)
      {
        v20.i8[0] = *(v25 - 1);
        v20.i64[0] = vmovl_s16(*&vmovl_s8(*v20.f32)).u64[0];
        v20.f32[0] = *&v19 + (v20.i32[0] * *v18.i32);
        *(v26 - 1) = v20.i32[0];
        if (v17 != 2)
        {
          v20.i8[0] = *v25;
          v20.i64[0] = vmovl_s16(*&vmovl_s8(*v20.f32)).u64[0];
          v20.f32[0] = *&v19 + (v20.i32[0] * *v18.i32);
          *v26 = v20.i32[0];
        }
      }

      v25 += a2;
      v26 += v21;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint16x8_t *sub_100220680(uint16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, unint64_t a6, unsigned int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a8;
  v11 = *(a8 + 8);
  *v10.i32 = *a8;
  *&v11 = v11;
  v12 = a2 >> 1;
  v13 = a6 >> 2;
  v14 = v8 - 1;
  v15 = vdupq_lane_s32(*&v11, 0);
  v16 = vdupq_lane_s32(v10, 0);
  if (v9 >= 8)
  {
    v19 = (v9 - 8);
    v20 = (v9 - 4);
    v21 = (v19 & 0xFFFFFFF8) + 8;
    v22 = v21 | 4;
    if ((v21 | 4uLL) <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    v23 = ~v21 + v22;
    v24 = (v23 >> 2) + 1;
    v25 = vdupq_lane_s32(v10, 0);
    v26 = vdupq_lane_s32(*&v11, 0);
    v27 = a5 + 1;
    v28 = 4 * v13;
    v29 = 2 * v12;
    v30 = a5 + 2;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      v33 = v14;
      v34 = 8;
      v35 = result;
      v36 = v27;
      do
      {
        v37 = v34;
        v38 = *v35++;
        v39 = vaddq_f32(v15, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v38)), *v10.i32));
        v32 += 8;
        v36[-1] = vaddq_f32(v15, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v38.i8)), *v10.i32));
        *v36 = v39;
        v31 += 0x800000000;
        v36 += 2;
        v34 += 8;
      }

      while (v32 <= v19);
      if (v20 >= v32)
      {
        v40 = v31 >> 32;
        if (v23 <= 0xB)
        {
          goto LABEL_22;
        }

        v40 += 4 * (v24 & 0x7FFFFFFFFFFFFFFCLL);
        v41 = v37;
        v42 = v37;
        v43 = v24 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &result->i16[v42];
          v105 = vld4_s16(v44);
          v45 = vcvtq_f32_u32(vmovl_u16(v105.val[0]));
          v39 = vcvtq_f32_u32(vmovl_u16(v105.val[3]));
          v46 = &a5->f32[v41];
          v107.val[1] = vmlaq_f32(v26, v25, vcvtq_f32_u32(vmovl_u16(v105.val[1])));
          v107.val[0] = vmlaq_f32(v26, v25, v45);
          v107.val[3] = vmlaq_f32(v26, v25, v39);
          v107.val[2] = vmlaq_f32(v26, v25, vcvtq_f32_u32(vmovl_u16(v105.val[2])));
          vst4q_f32(v46, v107);
          v41 += 16;
          v42 += 16;
          v43 -= 4;
        }

        while (v43);
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_22:
          v47 = 4 * v40;
          v48 = 2 * v40;
          do
          {
            v39 = vcvtq_f32_u32(vmovl_u16(*&result->i8[v48]));
            *(a5 + v47) = vmlaq_f32(v26, v25, v39);
            v40 += 4;
            v47 += 16;
            v48 += 8;
          }

          while (v40 <= v20);
        }
      }

      else
      {
        LODWORD(v40) = v32;
      }

      if (v40 >= v9)
      {
        goto LABEL_13;
      }

      v49 = v40;
      v50 = v9 - v40;
      v51 = v49;
      if (v50 >= 4)
      {
        if (v50 < 0x10)
        {
          v52 = 0;
LABEL_32:
          v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + v49;
          v59 = v52 - (v50 & 0xFFFFFFFFFFFFFFFCLL);
          v60 = v52 + v49;
          v61 = 2 * v60;
          v62 = 4 * v60;
          do
          {
            v39 = vcvtq_f32_u32(vmovl_u16(*&result->i8[v61]));
            *(a5 + v62) = vmlaq_f32(v15, v16, v39);
            v61 += 8;
            v62 += 16;
            v59 += 4;
          }

          while (v59);
          if (v50 == (v50 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_37;
        }

        v52 = v50 & 0xFFFFFFFFFFFFFFF0;
        v53 = (v30 + 4 * v49);
        v54 = (result + 2 * v49);
        v55 = v50 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v56 = *v54;
          v57 = v54[1];
          v54 += 2;
          v58 = vmlaq_f32(v26, v25, vcvtq_f32_u32(vmovl_u16(*v56.i8)));
          v39 = vmlaq_f32(v26, v25, vcvtq_f32_u32(vmovl_high_u16(v56)));
          v53[-2] = v58;
          v53[-1] = v39;
          *v53 = vmlaq_f32(v26, v25, vcvtq_f32_u32(vmovl_u16(*v57.i8)));
          v53[1] = vmlaq_f32(v26, v25, vcvtq_f32_u32(vmovl_high_u16(v57)));
          v53 += 4;
          v55 -= 16;
        }

        while (v55);
        if (v50 == v52)
        {
          goto LABEL_13;
        }

        if ((v50 & 0xC) != 0)
        {
          goto LABEL_32;
        }

        v51 = v52 + v49;
      }

      do
      {
LABEL_37:
        v39.i16[0] = result->i16[v51];
        v39.f32[0] = *&v11 + (v39.u32[0] * *v10.i32);
        a5->i32[v51++] = v39.i32[0];
      }

      while (v9 != v51);
LABEL_13:
      --v14;
      v27 = (v27 + v28);
      result = (result + v29);
      a5 = (a5 + v28);
      v30 = (v30 + v28);
      if (!v33)
      {
        return result;
      }
    }
  }

  if (v9 >= 4)
  {
    v63 = (v9 - 4);
    v64 = v63 & 0x7FFFFFFC;
    v65 = v64 + 4;
    if (v64 + 5 <= v9)
    {
      v66 = v9;
    }

    else
    {
      v66 = (v63 & 0x7FFFFFFC) + 5;
    }

    v67 = v66 - 4;
    v68 = v66 - 4 - v64;
    v69 = (v63 >> 2) + 1;
    v70 = vdupq_lane_s32(v10, 0);
    v71 = vdupq_lane_s32(*&v11, 0);
    v72 = v66 & 3;
    v73 = 4 * v13;
    v74 = 2 * v12;
    v75 = (v63 >> 2) & 0x1FFFFFFF;
    v76 = &result->i8[8 * v75];
    v77 = (v76 + 24);
    v78 = &a5[v75];
    v79 = v78 + 3;
    v80 = v67 - v72 - v64;
    v81 = v76 + 8;
    v82 = v78 + 1;
    while (1)
    {
      v83 = v14;
      if (v63 < 0xC)
      {
        break;
      }

      v85 = v69 & 0x3FFFFFFC;
      v86 = result;
      v87 = a5;
      do
      {
        v106 = vld4_s16(v86->i16);
        v86 += 2;
        v88 = vcvtq_f32_u32(vmovl_u16(v106.val[0]));
        v89 = vcvtq_f32_u32(vmovl_u16(v106.val[3]));
        v108.val[1] = vmlaq_f32(v71, v70, vcvtq_f32_u32(vmovl_u16(v106.val[1])));
        v108.val[0] = vmlaq_f32(v71, v70, v88);
        v108.val[3] = vmlaq_f32(v71, v70, v89);
        v108.val[2] = vmlaq_f32(v71, v70, vcvtq_f32_u32(vmovl_u16(v106.val[2])));
        vst4q_f32(v87->f32, v108);
        v87 += 4;
        v85 -= 4;
      }

      while (v85);
      v84 = 4 * (v69 & 0x3FFFFFFC);
      if (v69 != (v69 & 0x3FFFFFFC))
      {
        goto LABEL_49;
      }

LABEL_51:
      if (v9 > v84)
      {
        v92 = (v63 & 0x7FFFFFFC) + 4;
        if (v68 >= 4)
        {
          if (v68 >= 0x10)
          {
            v94 = v79;
            v95 = v77;
            v96 = v68 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v97 = v95[-1];
              v98 = vcvtq_f32_u32(vmovl_high_u16(*v95));
              v99 = vmlaq_f32(v71, v70, vcvtq_f32_u32(vmovl_u16(*v97.i8)));
              v89 = vmlaq_f32(v71, v70, vcvtq_f32_u32(vmovl_high_u16(v97)));
              v100 = vmlaq_f32(v71, v70, vcvtq_f32_u32(vmovl_u16(*v95->i8)));
              v94[-2] = v99;
              v94[-1] = v89;
              *v94 = v100;
              v94[1] = vmlaq_f32(v71, v70, v98);
              v94 += 4;
              v95 += 2;
              v96 -= 16;
            }

            while (v96);
            if (v68 == (v68 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_43;
            }

            v93 = v68 & 0xFFFFFFFFFFFFFFF0;
            v92 = v65 + (v68 & 0xFFFFFFFFFFFFFFF0);
            if ((v68 & 0xC) != 0)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v93 = 0;
LABEL_59:
            v101 = v80 - v93;
            v102 = &v81[2 * v93];
            v103 = (v82 + 4 * v93);
            do
            {
              v104 = *v102++;
              v89 = vcvtq_f32_u32(vmovl_u16(v104));
              *v103++ = vmlaq_f32(v15, v16, v89);
              v101 -= 4;
            }

            while (v101);
            v92 = v65 + v68 - v72;
            if (!v72)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v89.i16[0] = result->i16[v92];
          v89.f32[0] = *&v11 + (v89.u32[0] * *v10.i32);
          a5->i32[v92++] = v89.i32[0];
        }

        while (v92 < v9);
      }

LABEL_43:
      v14 = v83 - 1;
      a5 = (a5 + v73);
      result = (result + v74);
      v77 = (v77 + v74);
      v79 = (v79 + v73);
      v81 += v74;
      v82 = (v82 + v73);
      if (!v83)
      {
        return result;
      }
    }

    v84 = 0;
LABEL_49:
    v90 = 4 * v84;
    v91 = 2 * v84;
    do
    {
      v89 = vcvtq_f32_u32(vmovl_u16(*&result->i8[v91]));
      *(a5 + v90) = vmlaq_f32(v71, v70, v89);
      v84 += 4;
      v90 += 16;
      v91 += 8;
    }

    while (v84 <= v63);
    goto LABEL_51;
  }

  if (v9 >= 1)
  {
    v17 = &result->i16[2];
    v18 = &a5->i64[1];
    do
    {
      v15.i16[0] = *(v17 - 2);
      v15.f32[0] = *&v11 + (v15.u32[0] * *v10.i32);
      *(v18 - 2) = v15.i32[0];
      if (v9 != 1)
      {
        v15.i16[0] = *(v17 - 1);
        v15.f32[0] = *&v11 + (v15.u32[0] * *v10.i32);
        *(v18 - 1) = v15.i32[0];
        if (v9 != 2)
        {
          v15.i16[0] = *v17;
          v15.f32[0] = *&v11 + (v15.u32[0] * *v10.i32);
          *v18 = v15.i32[0];
        }
      }

      v17 += v12;
      v18 = (v18 + 4 * v13);
      --v8;
    }

    while (v8);
  }

  return result;
}

int16x8_t *sub_100220C44(int16x8_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, unint64_t a6, unsigned int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a8;
  v11 = *(a8 + 8);
  *v10.i32 = *a8;
  *&v11 = v11;
  v12 = a2 >> 1;
  v13 = a6 >> 2;
  v14 = v8 - 1;
  v15 = vdupq_lane_s32(*&v11, 0);
  v16 = vdupq_lane_s32(v10, 0);
  if (v9 >= 8)
  {
    v19 = (v9 - 8);
    v20 = (v9 - 4);
    v21 = (v19 & 0xFFFFFFF8) + 8;
    v22 = v21 | 4;
    if ((v21 | 4uLL) <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    v23 = ~v21 + v22;
    v24 = (v23 >> 2) + 1;
    v25 = vdupq_lane_s32(v10, 0);
    v26 = vdupq_lane_s32(*&v11, 0);
    v27 = a5 + 1;
    v28 = 4 * v13;
    v29 = 2 * v12;
    v30 = a5 + 2;
    while (1)
    {
      v31 = 0;
      v32 = 0;
      v33 = v14;
      v34 = 8;
      v35 = result;
      v36 = v27;
      do
      {
        v37 = v34;
        v38 = *v35++;
        v39 = vaddq_f32(v15, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v38)), *v10.i32));
        v32 += 8;
        v36[-1] = vaddq_f32(v15, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v38.i8)), *v10.i32));
        *v36 = v39;
        v31 += 0x800000000;
        v36 += 2;
        v34 += 8;
      }

      while (v32 <= v19);
      if (v20 >= v32)
      {
        v40 = v31 >> 32;
        if (v23 <= 0xB)
        {
          goto LABEL_22;
        }

        v40 += 4 * (v24 & 0x7FFFFFFFFFFFFFFCLL);
        v41 = v37;
        v42 = v37;
        v43 = v24 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v44 = &result->i16[v42];
          v105 = vld4_s16(v44);
          v45 = vcvtq_f32_s32(vmovl_s16(v105.val[0]));
          v39 = vcvtq_f32_s32(vmovl_s16(v105.val[3]));
          v46 = &a5->f32[v41];
          v107.val[1] = vmlaq_f32(v26, v25, vcvtq_f32_s32(vmovl_s16(v105.val[1])));
          v107.val[0] = vmlaq_f32(v26, v25, v45);
          v107.val[3] = vmlaq_f32(v26, v25, v39);
          v107.val[2] = vmlaq_f32(v26, v25, vcvtq_f32_s32(vmovl_s16(v105.val[2])));
          vst4q_f32(v46, v107);
          v41 += 16;
          v42 += 16;
          v43 -= 4;
        }

        while (v43);
        if (v24 != (v24 & 0x7FFFFFFFFFFFFFFCLL))
        {
LABEL_22:
          v47 = 4 * v40;
          v48 = 2 * v40;
          do
          {
            v39 = vcvtq_f32_s32(vmovl_s16(*&result->i8[v48]));
            *(a5 + v47) = vmlaq_f32(v26, v25, v39);
            v40 += 4;
            v47 += 16;
            v48 += 8;
          }

          while (v40 <= v20);
        }
      }

      else
      {
        LODWORD(v40) = v32;
      }

      if (v40 >= v9)
      {
        goto LABEL_13;
      }

      v49 = v40;
      v50 = v9 - v40;
      v51 = v49;
      if (v50 >= 4)
      {
        if (v50 < 0x10)
        {
          v52 = 0;
LABEL_32:
          v51 = (v50 & 0xFFFFFFFFFFFFFFFCLL) + v49;
          v59 = v52 - (v50 & 0xFFFFFFFFFFFFFFFCLL);
          v60 = v52 + v49;
          v61 = 2 * v60;
          v62 = 4 * v60;
          do
          {
            v39 = vcvtq_f32_s32(vmovl_s16(*&result->i8[v61]));
            *(a5 + v62) = vmlaq_f32(v15, v16, v39);
            v61 += 8;
            v62 += 16;
            v59 += 4;
          }

          while (v59);
          if (v50 == (v50 & 0xFFFFFFFFFFFFFFFCLL))
          {
            goto LABEL_13;
          }

          goto LABEL_37;
        }

        v52 = v50 & 0xFFFFFFFFFFFFFFF0;
        v53 = (v30 + 4 * v49);
        v54 = (result + 2 * v49);
        v55 = v50 & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v56 = *v54;
          v57 = v54[1];
          v54 += 2;
          v58 = vmlaq_f32(v26, v25, vcvtq_f32_s32(vmovl_s16(*v56.i8)));
          v39 = vmlaq_f32(v26, v25, vcvtq_f32_s32(vmovl_high_s16(v56)));
          v53[-2] = v58;
          v53[-1] = v39;
          *v53 = vmlaq_f32(v26, v25, vcvtq_f32_s32(vmovl_s16(*v57.i8)));
          v53[1] = vmlaq_f32(v26, v25, vcvtq_f32_s32(vmovl_high_s16(v57)));
          v53 += 4;
          v55 -= 16;
        }

        while (v55);
        if (v50 == v52)
        {
          goto LABEL_13;
        }

        if ((v50 & 0xC) != 0)
        {
          goto LABEL_32;
        }

        v51 = v52 + v49;
      }

      do
      {
LABEL_37:
        v39.i16[0] = result->i16[v51];
        v39.i64[0] = vmovl_s16(*v39.f32).u64[0];
        v39.f32[0] = *&v11 + (v39.i32[0] * *v10.i32);
        a5->i32[v51++] = v39.i32[0];
      }

      while (v9 != v51);
LABEL_13:
      --v14;
      v27 = (v27 + v28);
      result = (result + v29);
      a5 = (a5 + v28);
      v30 = (v30 + v28);
      if (!v33)
      {
        return result;
      }
    }
  }

  if (v9 >= 4)
  {
    v63 = (v9 - 4);
    v64 = v63 & 0x7FFFFFFC;
    v65 = v64 + 4;
    if (v64 + 5 <= v9)
    {
      v66 = v9;
    }

    else
    {
      v66 = (v63 & 0x7FFFFFFC) + 5;
    }

    v67 = v66 - 4;
    v68 = v66 - 4 - v64;
    v69 = (v63 >> 2) + 1;
    v70 = vdupq_lane_s32(v10, 0);
    v71 = vdupq_lane_s32(*&v11, 0);
    v72 = v66 & 3;
    v73 = 4 * v13;
    v74 = 2 * v12;
    v75 = (v63 >> 2) & 0x1FFFFFFF;
    v76 = &result->i8[8 * v75];
    v77 = (v76 + 24);
    v78 = &a5[v75];
    v79 = v78 + 3;
    v80 = v67 - v72 - v64;
    v81 = v76 + 8;
    v82 = v78 + 1;
    while (1)
    {
      v83 = v14;
      if (v63 < 0xC)
      {
        break;
      }

      v85 = v69 & 0x3FFFFFFC;
      v86 = result;
      v87 = a5;
      do
      {
        v106 = vld4_s16(v86->i16);
        v86 += 2;
        v88 = vcvtq_f32_s32(vmovl_s16(v106.val[0]));
        v89 = vcvtq_f32_s32(vmovl_s16(v106.val[3]));
        v108.val[1] = vmlaq_f32(v71, v70, vcvtq_f32_s32(vmovl_s16(v106.val[1])));
        v108.val[0] = vmlaq_f32(v71, v70, v88);
        v108.val[3] = vmlaq_f32(v71, v70, v89);
        v108.val[2] = vmlaq_f32(v71, v70, vcvtq_f32_s32(vmovl_s16(v106.val[2])));
        vst4q_f32(v87->f32, v108);
        v87 += 4;
        v85 -= 4;
      }

      while (v85);
      v84 = 4 * (v69 & 0x3FFFFFFC);
      if (v69 != (v69 & 0x3FFFFFFC))
      {
        goto LABEL_49;
      }

LABEL_51:
      if (v9 > v84)
      {
        v92 = (v63 & 0x7FFFFFFC) + 4;
        if (v68 >= 4)
        {
          if (v68 >= 0x10)
          {
            v94 = v79;
            v95 = v77;
            v96 = v68 & 0xFFFFFFFFFFFFFFF0;
            do
            {
              v97 = v95[-1];
              v98 = vcvtq_f32_s32(vmovl_high_s16(*v95));
              v99 = vmlaq_f32(v71, v70, vcvtq_f32_s32(vmovl_s16(*v97.i8)));
              v89 = vmlaq_f32(v71, v70, vcvtq_f32_s32(vmovl_high_s16(v97)));
              v100 = vmlaq_f32(v71, v70, vcvtq_f32_s32(vmovl_s16(*v95->i8)));
              v94[-2] = v99;
              v94[-1] = v89;
              *v94 = v100;
              v94[1] = vmlaq_f32(v71, v70, v98);
              v94 += 4;
              v95 += 2;
              v96 -= 16;
            }

            while (v96);
            if (v68 == (v68 & 0xFFFFFFFFFFFFFFF0))
            {
              goto LABEL_43;
            }

            v93 = v68 & 0xFFFFFFFFFFFFFFF0;
            v92 = v65 + (v68 & 0xFFFFFFFFFFFFFFF0);
            if ((v68 & 0xC) != 0)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v93 = 0;
LABEL_59:
            v101 = v80 - v93;
            v102 = &v81[2 * v93];
            v103 = (v82 + 4 * v93);
            do
            {
              v104 = *v102++;
              v89 = vcvtq_f32_s32(vmovl_s16(v104));
              *v103++ = vmlaq_f32(v15, v16, v89);
              v101 -= 4;
            }

            while (v101);
            v92 = v65 + v68 - v72;
            if (!v72)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v89.i16[0] = result->i16[v92];
          v89.i64[0] = vmovl_s16(*v89.f32).u64[0];
          v89.f32[0] = *&v11 + (v89.i32[0] * *v10.i32);
          a5->i32[v92++] = v89.i32[0];
        }

        while (v92 < v9);
      }

LABEL_43:
      v14 = v83 - 1;
      a5 = (a5 + v73);
      result = (result + v74);
      v77 = (v77 + v74);
      v79 = (v79 + v73);
      v81 += v74;
      v82 = (v82 + v73);
      if (!v83)
      {
        return result;
      }
    }

    v84 = 0;
LABEL_49:
    v90 = 4 * v84;
    v91 = 2 * v84;
    do
    {
      v89 = vcvtq_f32_s32(vmovl_s16(*&result->i8[v91]));
      *(a5 + v90) = vmlaq_f32(v71, v70, v89);
      v84 += 4;
      v90 += 16;
      v91 += 8;
    }

    while (v84 <= v63);
    goto LABEL_51;
  }

  if (v9 >= 1)
  {
    v17 = &result->i16[2];
    v18 = &a5->i64[1];
    do
    {
      v15.i16[0] = *(v17 - 2);
      v15.i64[0] = vmovl_s16(*v15.f32).u64[0];
      v15.f32[0] = *&v11 + (v15.i32[0] * *v10.i32);
      *(v18 - 2) = v15.i32[0];
      if (v9 != 1)
      {
        v15.i16[0] = *(v17 - 1);
        v15.i64[0] = vmovl_s16(*v15.f32).u64[0];
        v15.f32[0] = *&v11 + (v15.i32[0] * *v10.i32);
        *(v18 - 1) = v15.i32[0];
        if (v9 != 2)
        {
          v15.i16[0] = *v17;
          v15.i64[0] = vmovl_s16(*v15.f32).u64[0];
          v15.f32[0] = *&v11 + (v15.i32[0] * *v10.i32);
          *v18 = v15.i32[0];
        }
      }

      v17 += v12;
      v18 = (v18 + 4 * v13);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_10022121C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = a2 >> 2;
    v13 = a6 >> 2;
    v14 = (v9 - 4);
    if (v9 >= 4)
    {
      v20 = vdupq_lane_s64(*&v11, 0);
      v21 = vdupq_lane_s64(v10, 0);
      v22 = (v14 & 0xFFFFFFFC) + 4;
      v23 = v22 + 4;
      if (v22 + 4 <= v14 + 1)
      {
        v23 = v14 + 1;
      }

      v24 = v23 + ~v22;
      v25 = (v24 >> 2) + 1;
      v26 = vdupq_lane_s64(v10, 0);
      v27 = vdupq_lane_s64(*&v11, 0);
      v28 = 4 * v13;
      v29 = 4 * v12;
      do
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 4;
        do
        {
          v34 = *(result + v30);
          v35 = *(result + v30 + 8);
          v36.i64[0] = v34;
          v36.i64[1] = SHIDWORD(v34);
          v37 = vcvtq_f64_s64(v36);
          v36.i64[0] = v35;
          v36.i64[1] = SHIDWORD(v35);
          *(a5 + v30) = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v27, vmulq_n_f64(v37, *&v10))), vaddq_f64(v27, vmulq_n_f64(vcvtq_f64_s64(v36), *&v10)));
          v38 = v33;
          v32 += 4;
          v31 += 0x400000000;
          v30 += 16;
          v33 += 4;
        }

        while (v32 <= v14);
        if (v14 >= v32)
        {
          v39 = v31 >> 32;
          if (v24 <= 3)
          {
            goto LABEL_21;
          }

          v39 += 4 * (v25 & 0x7FFFFFFFFFFFFFFELL);
          v40 = 4 * v38;
          v41 = v25 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v42 = (result + v40);
            v61 = vld4_f32(v42);
            v43.i64[0] = v61.val[0].i32[0];
            v43.i64[1] = v61.val[0].i32[1];
            v62.val[0] = vcvt_f32_f64(vmlaq_f64(v20, v21, vcvtq_f64_s64(v43)));
            v43.i64[0] = v61.val[1].i32[0];
            v43.i64[1] = v61.val[1].i32[1];
            v62.val[1] = vcvt_f32_f64(vmlaq_f64(v20, v21, vcvtq_f64_s64(v43)));
            v43.i64[0] = v61.val[2].i32[0];
            v43.i64[1] = v61.val[2].i32[1];
            v62.val[2] = vcvt_f32_f64(vmlaq_f64(v20, v21, vcvtq_f64_s64(v43)));
            v43.i64[0] = v61.val[3].i32[0];
            v43.i64[1] = v61.val[3].i32[1];
            v62.val[3] = vcvt_f32_f64(vmlaq_f64(v20, v21, vcvtq_f64_s64(v43)));
            v44 = (a5 + v40);
            vst4_f32(v44, v62);
            v40 += 32;
            v41 -= 2;
          }

          while (v41);
          if (v25 != (v25 & 0x7FFFFFFFFFFFFFFELL))
          {
LABEL_21:
            v45 = 4 * v39;
            do
            {
              v46 = *(result + v45);
              v47.i64[0] = v46;
              v47.i64[1] = SDWORD1(v46);
              v48 = vcvtq_f64_s64(v47);
              v47.i64[0] = SDWORD2(v46);
              v47.i64[1] = SHIDWORD(v46);
              *(a5 + v45) = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v27, v26, v48)), vmlaq_f64(v27, v26, vcvtq_f64_s64(v47)));
              v39 += 4;
              v45 += 16;
            }

            while (v39 <= v14);
          }
        }

        else
        {
          LODWORD(v39) = v32;
        }

        if (v39 < v9)
        {
          v49 = v39;
          v50 = v9 - v39;
          v39 = v39;
          if (v50 <= 7)
          {
            goto LABEL_32;
          }

          v39 = (v50 & 0xFFFFFFFFFFFFFFF8) + v39;
          v51 = 4 * v49;
          v52 = v50 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v53 = *(result + v51);
            v54 = *(result + v51 + 16);
            v55.i64[0] = v53;
            v55.i64[1] = SDWORD1(v53);
            v56 = vcvtq_f64_s64(v55);
            v55.i64[0] = SDWORD2(v53);
            v55.i64[1] = SHIDWORD(v53);
            v57 = vcvtq_f64_s64(v55);
            v55.i64[0] = v54;
            v55.i64[1] = SDWORD1(v54);
            v58 = vcvtq_f64_s64(v55);
            v55.i64[0] = SDWORD2(v54);
            v55.i64[1] = SHIDWORD(v54);
            v59 = (a5 + v51);
            *v59 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v27, v26, v56)), vmlaq_f64(v27, v26, v57));
            v59[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v27, v26, v58)), vmlaq_f64(v27, v26, vcvtq_f64_s64(v55)));
            v51 += 32;
            v52 -= 8;
          }

          while (v52);
          if (v50 != (v50 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_32:
            do
            {
              v60 = v11 + *(result + 4 * v39) * *&v10;
              *(a5 + 4 * v39++) = v60;
            }

            while (v9 != v39);
          }
        }

        a5 += v28;
        result += v29;
        --v8;
      }

      while (v8);
    }

    else if (v9 >= 1)
    {
      v15 = (result + 8);
      v16 = (a5 + 8);
      do
      {
        v17 = v11 + *(v15 - 2) * *&v10;
        *(v16 - 2) = v17;
        if (v9 != 1)
        {
          v18 = v11 + *(v15 - 1) * *&v10;
          *(v16 - 1) = v18;
          if (v9 != 2)
          {
            v19 = v11 + *v15 * *&v10;
            *v16 = v19;
          }
        }

        v15 += v12;
        v16 += v13;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

unint64_t sub_100221540(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = *(a8 + 8);
    *v10.i32 = *a8;
    *&v11 = v11;
    v12 = a2 >> 2;
    v13 = a6 >> 2;
    if (v9 >= 4)
    {
      v16 = 0;
      v17 = vdupq_lane_s32(*&v11, 0);
      v18 = v8 - 1;
      v19 = vdupq_lane_s32(v10, 0);
      v20 = (v9 - 4);
      v21 = a5 - result;
      v22 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v23 = (a6 & 0xFFFFFFFFFFFFFFFCLL) - (a2 & 0xFFFFFFFFFFFFFFFCLL);
      v24 = (v20 & 0xFFFFFFFC) + 4;
      v25 = v24 + 4;
      if (v24 + 4 <= (v20 + 1))
      {
        v25 = v20 + 1;
      }

      v26 = v25 + ~v24;
      v27 = ((4 * v26) & 0xFFFFFFFFFFFFFFF0) + 16;
      v28 = (v26 >> 2) + 1;
      v29 = a5 + v27;
      v30 = result + v27;
      v31 = vdupq_lane_s32(v10, 0);
      v32 = vdupq_lane_s32(*&v11, 0);
      v33 = vdup_lane_s32(v10, 0);
      v34 = vdup_lane_s32(*&v11, 0);
      v35 = 4 * v13;
      do
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = v18;
        v40 = 4;
        do
        {
          *(a5 + v36) = vaddq_f32(v17, vmulq_n_f32(*(result + v36), *v10.i32));
          v41 = v40;
          v38 += 4;
          v37 += 0x400000000;
          v36 += 16;
          v40 += 4;
        }

        while (v38 <= v20);
        if (v20 >= v38)
        {
          v42 = v37 >> 32;
          if (v26 <= 0xB || a5 < v30 + v22 * v16 && result < v29 + (a6 & 0xFFFFFFFFFFFFFFFCLL) * v16)
          {
            goto LABEL_23;
          }

          v42 += 4 * (v28 & 0x7FFFFFFFFFFFFFFCLL);
          v43 = 4 * v41;
          v44 = v28 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v45 = (a5 + v43);
            v46 = vmlaq_f32(v32, v31, *(result + v43 + 48));
            v47 = vmlaq_f32(v32, v31, *(result + v43 + 16));
            v48 = vmlaq_f32(v32, v31, *(result + v43 + 32));
            *v45 = vmlaq_f32(v32, v31, *(result + v43));
            v45[1] = v47;
            v45[2] = v48;
            v45[3] = v46;
            v43 += 64;
            v44 -= 4;
          }

          while (v44);
          if (v28 != (v28 & 0x7FFFFFFFFFFFFFFCLL))
          {
LABEL_23:
            v49 = 4 * v42;
            do
            {
              v50 = (a5 + v49);
              *v50 = vmla_f32(v34, v33, *(result + v49));
              v50[1] = vmla_f32(v34, v33, *(result + v49 + 8));
              v42 += 4;
              v49 += 16;
            }

            while (v42 <= v20);
          }
        }

        else
        {
          LODWORD(v42) = v38;
        }

        if (v42 < v9)
        {
          v51 = v42;
          v52 = v9 - v42;
          if (v52 < 8)
          {
            goto LABEL_35;
          }

          if (v21 + v23 * v16 <= 0x1F)
          {
            goto LABEL_35;
          }

          v53 = (v52 & 0xFFFFFFFFFFFFFFF8) + v51;
          v54 = 4 * v51;
          v55 = v52 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v56 = vmlaq_f32(v17, v19, *(result + v54 + 16));
            v57 = (a5 + v54);
            *v57 = vmlaq_f32(v17, v19, *(result + v54));
            v57[1] = v56;
            v54 += 32;
            v55 -= 8;
          }

          while (v55);
          v51 = v53;
          if (v52 != (v52 & 0xFFFFFFFFFFFFFFF8))
          {
LABEL_35:
            do
            {
              *(a5 + 4 * v51) = *&v11 + (*(result + 4 * v51) * *v10.i32);
              ++v51;
            }

            while (v9 != v51);
          }
        }

        result += 4 * v12;
        a5 += v35;
        --v18;
        ++v16;
      }

      while (v39);
    }

    else if (v9 >= 1)
    {
      v14 = (result + 8);
      v15 = (a5 + 8);
      do
      {
        *(v15 - 2) = *&v11 + (*(v14 - 2) * *v10.i32);
        if (v9 != 1)
        {
          *(v15 - 1) = *&v11 + (*(v14 - 1) * *v10.i32);
          if (v9 != 2)
          {
            *v15 = *&v11 + (*v14 * *v10.i32);
          }
        }

        v14 += v12;
        v15 += v13;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

float64x2_t *sub_100221824(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, unint64_t a6, unsigned int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = a2 >> 3;
    v13 = a6 >> 2;
    if (v9 >= 4)
    {
      v19 = v8 - 1;
      v20 = vdupq_lane_s64(*&v11, 0);
      v21 = vdupq_lane_s64(v10, 0);
      v22 = (v9 - 4);
      v23 = (v22 & 0xFFFFFFFC) + 4;
      v24 = v23 + 4;
      if (v23 + 4 <= (v22 + 1))
      {
        v24 = v22 + 1;
      }

      v25 = v24 + ~v23;
      v26 = (v25 >> 2) + 1;
      v27 = vdupq_lane_s64(*&v11, 0);
      v28 = vdupq_lane_s64(v10, 0);
      v29 = 4 * v13;
      v30 = result + 1;
      v31 = 8 * v12;
      v32 = &a5->i64[1];
      do
      {
        v33 = 0;
        v34 = 0;
        v35 = v19;
        v36 = 4;
        v37 = v30;
        v38 = a5;
        do
        {
          *v38++ = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v27, vmulq_n_f64(v37[-1], *&v10))), vaddq_f64(v27, vmulq_n_f64(*v37, *&v10)));
          v39 = v36;
          v34 += 4;
          v33 += 0x400000000;
          v37 += 2;
          v36 += 4;
        }

        while (v34 <= v22);
        if (v22 >= v34)
        {
          v40 = v33 >> 32;
          if (v25 <= 3)
          {
            goto LABEL_21;
          }

          v40 += 4 * (v26 & 0x7FFFFFFFFFFFFFFELL);
          v41 = v39;
          v42 = v39;
          v43 = v26 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v44 = &result->f64[v42];
            v57 = vld4q_f64(v44);
            v56.val[0] = vcvt_f32_f64(vmlaq_f64(v20, v21, v57.val[0]));
            v56.val[1] = vcvt_f32_f64(vmlaq_f64(v20, v21, v57.val[1]));
            v56.val[2] = vcvt_f32_f64(vmlaq_f64(v20, v21, v57.val[2]));
            v56.val[3] = vcvt_f32_f64(vmlaq_f64(v20, v21, v57.val[3]));
            v45 = &a5->f32[v41];
            vst4_f32(v45, v56);
            v41 += 8;
            v42 += 8;
            v43 -= 2;
          }

          while (v43);
          if (v26 != (v26 & 0x7FFFFFFFFFFFFFFELL))
          {
LABEL_21:
            v46 = 4 * v40;
            v47 = 8 * v40;
            do
            {
              *(a5 + v46) = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v27, v28, *(result + v47))), vmlaq_f64(v27, v28, *(result + v47 + 16)));
              v40 += 4;
              v46 += 16;
              v47 += 32;
            }

            while (v40 <= v22);
          }
        }

        else
        {
          LODWORD(v40) = v34;
        }

        if (v40 < v9)
        {
          v48 = v40;
          v49 = v9 - v40;
          v40 = v40;
          if (v49 <= 3)
          {
            goto LABEL_32;
          }

          v40 = (v49 & 0xFFFFFFFFFFFFFFFCLL) + v40;
          v50 = (v32 + 4 * v48);
          v51 = (result + 8 * v48);
          v52 = v49 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v53 = *v51;
            v54 = v51[1];
            v51 += 2;
            v50[-1] = vcvt_f32_f64(vmlaq_f64(v20, v21, v53));
            *v50 = vcvt_f32_f64(vmlaq_f64(v20, v21, v54));
            v50 += 2;
            v52 -= 4;
          }

          while (v52);
          if (v49 != (v49 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_32:
            do
            {
              v55 = v11 + result->f64[v40] * *&v10;
              a5->f32[v40++] = v55;
            }

            while (v9 != v40);
          }
        }

        v19 = v35 - 1;
        a5 = (a5 + v29);
        v30 = (v30 + v31);
        result = (result + v31);
        v32 = (v32 + v29);
      }

      while (v35);
    }

    else if (v9 >= 1)
    {
      v14 = result + 1;
      v15 = &a5->f32[2];
      do
      {
        v16 = v11 + v14[-1].f64[0] * *&v10;
        *(v15 - 2) = v16;
        if (v9 != 1)
        {
          v17 = v11 + v14[-1].f64[1] * *&v10;
          *(v15 - 1) = v17;
          if (v9 != 2)
          {
            v18 = v11 + v14->f64[0] * *&v10;
            *v15 = v18;
          }
        }

        v14 = (v14 + 8 * v12);
        v15 += v13;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

const char *sub_100221AD8(const char *result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, float64x2_t a8, __n128 a9, uint64_t a10, uint64_t a11, float64x2_t *a12, unint64_t a13, int *a14, double *a15)
{
  v15 = a14[1];
  if (!v15)
  {
    return result;
  }

  v16 = *a14;
  v17 = *a15;
  v18 = a15[1];
  v19 = a13 >> 3;
  v20 = v16 - 4;
  v21 = (v16 - 8);
  v223 = a2;
  if (v16 >= 8)
  {
    v24 = 0;
    v25 = vdupq_lane_s64(*&v18, 0);
    v26 = a13 & 0xFFFFFFFFFFFFFFF8;
    v27 = (v21 & 0xFFFFFFF8) + 8;
    v28 = v27 | 4;
    if ((v27 | 4) <= v20 + 1)
    {
      v28 = v20 + 1;
    }

    v29 = ~v27 + v28;
    v30 = a12 + 2;
    v31 = &a12[2 * (v29 >> 2) + 2];
    v32 = &result[(v29 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v33 = (a12 + 8 * v16);
    v34 = &result[v16];
    v219 = (v29 >> 2) + 1;
    v220 = v29;
    v215 = &result[v16];
    v35 = vdupq_lane_s64(v17, 0);
    v36 = vdupq_lane_s64(*&v18, 0);
    v37 = 8 * v19;
    v38 = (a12 + 24);
    v221 = v26;
    v217 = v32;
    v218 = v31;
    v216 = v33;
    while (1)
    {
      v39 = 0;
      v40 = 0;
      v41 = v33 + v26 * v24;
      v42 = &v34[v24 * a2];
      v43 = 8;
      v44 = v30;
      do
      {
        v45 = v43;
        v46 = vmovl_u8(*&result[v40]);
        v47 = vmovl_u16(*v46.i8);
        v48 = vmovl_high_u16(v46);
        v49.i64[0] = v47.u32[0];
        v49.i64[1] = v47.u32[1];
        v50 = vaddq_f64(v25, vmulq_n_f64(vcvtq_f64_u64(v49), *&v17));
        v49.i64[0] = v47.u32[2];
        v49.i64[1] = v47.u32[3];
        v51 = vaddq_f64(v25, vmulq_n_f64(vcvtq_f64_u64(v49), *&v17));
        v49.i64[0] = v48.u32[0];
        v49.i64[1] = v48.u32[1];
        v52 = vaddq_f64(v25, vmulq_n_f64(vcvtq_f64_u64(v49), *&v17));
        v49.i64[0] = v48.u32[2];
        v49.i64[1] = v48.u32[3];
        v53 = vaddq_f64(v25, vmulq_n_f64(vcvtq_f64_u64(v49), *&v17));
        v44[-2] = v50;
        v44[-1] = v51;
        v40 += 8;
        *v44 = v52;
        v44[1] = v53;
        v44 += 4;
        v39 += 0x800000000;
        v43 += 8;
      }

      while (v40 <= v21);
      if (v20 >= v40)
      {
        v40 = v39 >> 32;
        if (v29 <= 0x3B)
        {
          goto LABEL_23;
        }

        v54 = v39 >> 29;
        if (a12 + v54 < &v32[v24 * a2 + v40] && &result[v40] < v31 + v26 * v24 + v54)
        {
          goto LABEL_23;
        }

        v222 = v33 + v26 * v24;
        v40 += 4 * (v219 & 0x7FFFFFFFFFFFFFF0);
        v55 = v45;
        v56 = v45;
        v57 = v219 & 0x7FFFFFFFFFFFFFF0;
        do
        {
          v58 = &result[v55];
          v224 = vld4q_s8(v58);
          v59.i32[0] = LOBYTE(v224.val[0].f64[0]);
          v59.i32[1] = BYTE1(v224.val[0].f64[0]);
          v60 = vand_s8(v59, 0xFF000000FFLL);
          v61.i32[0] = LOBYTE(v224.val[1].f64[0]);
          v62.i64[0] = v60.u32[0];
          v62.i64[1] = v60.u32[1];
          v61.i32[1] = BYTE1(v224.val[1].f64[0]);
          v63 = vand_s8(v61, 0xFF000000FFLL);
          v64 = vcvtq_f64_u64(v62);
          v62.i64[0] = v63.u32[0];
          v62.i64[1] = v63.u32[1];
          v226.val[1] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          v63.i32[0] = LOBYTE(v224.val[3].f64[0]);
          v63.i32[1] = BYTE1(v224.val[3].f64[0]);
          v226.val[0] = vmlaq_f64(v36, v35, v64);
          *&v64.f64[0] = vand_s8(v63, 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[3] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = LOBYTE(v224.val[2].f64[0]);
          HIDWORD(v64.f64[0]) = BYTE1(v224.val[2].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[2] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE4(v224.val[1].f64[0]);
          v65 = &a12[8].f64[v56];
          v66 = &a12[12].f64[v56];
          v67 = &a12[16].f64[v56];
          v68 = &a12[20].f64[v56];
          v69 = &a12->f64[v56];
          vst4q_f64(v69, v226);
          v69 += 8;
          HIDWORD(v64.f64[0]) = BYTE5(v224.val[1].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[1] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE4(v224.val[0].f64[0]);
          HIDWORD(v64.f64[0]) = BYTE5(v224.val[0].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[0] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE4(v224.val[3].f64[0]);
          HIDWORD(v64.f64[0]) = BYTE5(v224.val[3].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[3] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE4(v224.val[2].f64[0]);
          HIDWORD(v64.f64[0]) = BYTE5(v224.val[2].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[2] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE6(v224.val[1].f64[0]);
          vst4q_f64(v65, v226);
          HIDWORD(v64.f64[0]) = HIBYTE(v224.val[1].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[1] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE6(v224.val[0].f64[0]);
          HIDWORD(v64.f64[0]) = HIBYTE(v224.val[0].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[0] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE6(v224.val[3].f64[0]);
          HIDWORD(v64.f64[0]) = HIBYTE(v224.val[3].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[3] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE6(v224.val[2].f64[0]);
          HIDWORD(v64.f64[0]) = HIBYTE(v224.val[2].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[2] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE2(v224.val[1].f64[0]);
          HIDWORD(v64.f64[0]) = BYTE3(v224.val[1].f64[0]);
          vst4q_f64(v66, v226);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[1] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE2(v224.val[0].f64[0]);
          HIDWORD(v64.f64[0]) = BYTE3(v224.val[0].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[0] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE2(v224.val[3].f64[0]);
          HIDWORD(v64.f64[0]) = BYTE3(v224.val[3].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[3] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE2(v224.val[2].f64[0]);
          HIDWORD(v64.f64[0]) = BYTE3(v224.val[2].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v226.val[2] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          *&v64.f64[0] = vextq_s8(v224.val[0], v224.val[0], 8uLL).u64[0];
          vst4q_f64(v69, v226);
          *&v51.f64[0] = vextq_s8(v224.val[1], v224.val[1], 8uLL).u64[0];
          LODWORD(v226.val[0].f64[0]) = LOBYTE(v51.f64[0]);
          HIDWORD(v226.val[0].f64[0]) = BYTE1(v51.f64[0]);
          *&v226.val[0].f64[0] = vand_s8(*&v226.val[0].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v226.val[0].f64[0]);
          v62.i64[1] = HIDWORD(v226.val[0].f64[0]);
          *&v226.val[0].f64[0] = vextq_s8(v224.val[2], v224.val[2], 8uLL).u64[0];
          *&v224.val[0].f64[0] = vextq_s8(v224.val[3], v224.val[3], 8uLL).u64[0];
          v226.val[3] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = LOBYTE(v64.f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE1(v64.f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v226.val[2] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = LOBYTE(v224.val[0].f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE1(v224.val[0].f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v70 = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = LOBYTE(v226.val[0].f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE1(v226.val[0].f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v71 = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = BYTE2(v51.f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE3(v51.f64[0]);
          vst4q_f64(v67, *(&v226 + 32));
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v226.val[2] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = BYTE2(v64.f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE3(v64.f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v226.val[1] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = BYTE2(v224.val[0].f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE3(v224.val[0].f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v72 = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = BYTE2(v226.val[0].f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE3(v226.val[0].f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v226.val[3] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = BYTE4(v51.f64[0]);
          vst4q_f64(v68, *(&v226 + 16));
          HIDWORD(v224.val[1].f64[0]) = BYTE5(v51.f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v226.val[2] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = BYTE4(v64.f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE5(v64.f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v226.val[1] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = BYTE4(v224.val[0].f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE5(v224.val[0].f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v73 = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v224.val[1].f64[0]) = BYTE4(v226.val[0].f64[0]);
          HIDWORD(v224.val[1].f64[0]) = BYTE5(v226.val[0].f64[0]);
          *&v224.val[1].f64[0] = vand_s8(*&v224.val[1].f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v224.val[1].f64[0]);
          v62.i64[1] = HIDWORD(v224.val[1].f64[0]);
          v226.val[3] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          v74 = &a12[24].f64[v56];
          vst4q_f64(v74, *(&v226 + 16));
          LODWORD(v64.f64[0]) = BYTE6(v64.f64[0]);
          HIDWORD(v64.f64[0]) = HIBYTE(v64.f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          LODWORD(v65) = BYTE6(v224.val[0].f64[0]);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v75 = HIBYTE(v224.val[0].f64[0]);
          v224.val[0] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE6(v51.f64[0]);
          HIDWORD(v64.f64[0]) = HIBYTE(v51.f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v224.val[1] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          LODWORD(v64.f64[0]) = BYTE6(v226.val[0].f64[0]);
          HIDWORD(v64.f64[0]) = HIBYTE(v226.val[0].f64[0]);
          *&v64.f64[0] = vand_s8(*&v64.f64[0], 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v224.val[2] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v62));
          *&v64.f64[0] = vand_s8(__PAIR64__(v75, v65), 0xFF000000FFLL);
          v62.i64[0] = LODWORD(v64.f64[0]);
          v62.i64[1] = HIDWORD(v64.f64[0]);
          v53 = vcvtq_f64_u64(v62);
          v224.val[3] = vmlaq_f64(v36, v35, v53);
          v76 = &a12[28].f64[v56];
          vst4q_f64(v76, v224);
          v56 += 64;
          v55 += 64;
          v57 -= 16;
        }

        while (v57);
        v29 = v220;
        a2 = v223;
        v26 = v221;
        v41 = v222;
        v32 = v217;
        v31 = v218;
        v34 = v215;
        v33 = v216;
        if (v219 != (v219 & 0x7FFFFFFFFFFFFFF0))
        {
LABEL_23:
          v77 = &v38->f64[v40];
          do
          {
            LOBYTE(v53.f64[0]) = result[v40];
            v78 = v18 + *&v53.f64[0] * *&v17;
            LOBYTE(v51.f64[0]) = result[v40 + 1];
            v79 = v18 + *&v51.f64[0] * *&v17;
            *(v77 - 3) = v78;
            v80 = (a12 + 8 * v40);
            v80->f64[1] = v79;
            LOBYTE(v78) = result[v40 + 2];
            v53.f64[0] = v18 + *&v78 * *&v17;
            LOBYTE(v79) = result[v40 + 3];
            v51.f64[0] = v18 + *&v79 * *&v17;
            v80[1].f64[0] = v53.f64[0];
            *v77 = v51.f64[0];
            v77 += 4;
            v40 += 4;
          }

          while (v40 <= v20);
        }
      }

      if (v40 >= v16)
      {
        goto LABEL_13;
      }

      v81 = v16 - v40;
      if (v81 >= 4)
      {
        if (&a12->f64[v40] >= v42 || &result[v40] >= v41)
        {
          if (v81 < 0x10)
          {
            v83 = 0;
LABEL_37:
            v82 = (v81 & 0xFFFFFFFFFFFFFFFCLL) + v40;
            v116 = v83 - (v81 & 0xFFFFFFFFFFFFFFFCLL);
            v117 = v83 + v40;
            v118 = 8 * v117;
            do
            {
              LODWORD(v53.f64[0]) = *&result[v117];
              v119 = vmovl_u16(*&vmovl_u8(*&v53.f64[0]));
              v120 = vand_s8(*v119.i8, 0xFF000000FFLL);
              v121.i64[0] = v120.u32[0];
              v121.i64[1] = v120.u32[1];
              v122 = vcvtq_f64_u64(v121);
              *v119.i8 = vand_s8(*&vextq_s8(v119, v119, 8uLL), 0xFF000000FFLL);
              v121.i64[0] = v119.u32[0];
              v121.i64[1] = v119.u32[1];
              v53 = vmlaq_f64(v36, v35, v122);
              v123 = (a12 + v118);
              *v123 = v53;
              v123[1] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v121));
              v117 += 4;
              v118 += 32;
              v116 += 4;
            }

            while (v116);
            if (v81 == (v81 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_13;
            }

            goto LABEL_42;
          }

          v83 = v81 & 0xFFFFFFFFFFFFFFF0;
          v84 = 8 * v40;
          v85 = v40;
          v86 = v81 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v87 = *&result[v85];
            v88.i32[0] = v87.u8[6];
            v88.i32[1] = v87.u8[7];
            v89.i32[0] = v87.u8[4];
            v90 = vand_s8(v88, 0xFF000000FFLL);
            v89.i32[1] = v87.u8[5];
            v91 = vand_s8(v89, 0xFF000000FFLL);
            v92.i64[0] = v90.u32[0];
            v92.i64[1] = v90.u32[1];
            v93 = v92;
            v94.i32[0] = v87.u8[2];
            v94.i32[1] = v87.u8[3];
            v92.i64[0] = v91.u32[0];
            v92.i64[1] = v91.u32[1];
            v95 = v92;
            v96 = vand_s8(v94, 0xFF000000FFLL);
            v92.i64[0] = v96.u32[0];
            v92.i64[1] = v96.u32[1];
            v97 = v92;
            v98.i32[0] = v87.u8[0];
            v98.i32[1] = v87.u8[1];
            v99 = vand_s8(v98, 0xFF000000FFLL);
            v92.i64[0] = v99.u32[0];
            v92.i64[1] = v99.u32[1];
            v87.i64[0] = vextq_s8(v87, v87, 8uLL).u64[0];
            v100.i32[0] = v87.u8[6];
            v100.i32[1] = v87.u8[7];
            v101 = vand_s8(v100, 0xFF000000FFLL);
            v102 = vcvtq_f64_u64(v92);
            v103.i32[0] = v87.u8[4];
            v92.i64[0] = v101.u32[0];
            v92.i64[1] = v101.u32[1];
            v104 = v92;
            v103.i32[1] = v87.u8[5];
            v105 = vand_s8(v103, 0xFF000000FFLL);
            v92.i64[0] = v105.u32[0];
            v92.i64[1] = v105.u32[1];
            v106 = v92;
            v107.i32[0] = v87.u8[2];
            v107.i32[1] = v87.u8[3];
            v108 = vand_s8(v107, 0xFF000000FFLL);
            v92.i64[0] = v108.u32[0];
            v92.i64[1] = v108.u32[1];
            v109.i32[0] = v87.u8[0];
            v109.i32[1] = v87.u8[1];
            *v87.i8 = vand_s8(v109, 0xFF000000FFLL);
            v110 = vcvtq_f64_u64(v92);
            v92.i64[0] = v87.u32[0];
            v92.i64[1] = v87.u32[1];
            v111 = vmlaq_f64(v36, v35, v102);
            v112 = vmlaq_f64(v36, v35, vcvtq_f64_u64(v97));
            v113 = vmlaq_f64(v36, v35, vcvtq_f64_u64(v95));
            v114 = vmlaq_f64(v36, v35, vcvtq_f64_u64(v93));
            v115 = (a12 + v84);
            v53 = vmlaq_f64(v36, v35, vcvtq_f64_u64(v104));
            v115[2] = v113;
            v115[3] = v114;
            *v115 = v111;
            v115[1] = v112;
            v115[6] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v106));
            v115[7] = v53;
            v115[4] = vmlaq_f64(v36, v35, vcvtq_f64_u64(v92));
            v115[5] = vmlaq_f64(v36, v35, v110);
            v85 += 16;
            v84 += 128;
            v86 -= 16;
          }

          while (v86);
          if (v81 == v83)
          {
            goto LABEL_13;
          }

          if ((v81 & 0xC) != 0)
          {
            goto LABEL_37;
          }

          v82 = v83 + v40;
        }

        else
        {
          v82 = v40;
        }
      }

      else
      {
        v82 = v40;
      }

      do
      {
LABEL_42:
        LOBYTE(v53.f64[0]) = result[v82];
        v53.f64[0] = v18 + *&v53.f64[0] * *&v17;
        a12->f64[v82++] = v53.f64[0];
      }

      while (v16 != v82);
LABEL_13:
      result += a2;
      a12 = (a12 + v37);
      ++v24;
      v30 = (v30 + v37);
      v38 = (v38 + v37);
      if (!--v15)
      {
        return result;
      }
    }
  }

  if (v16 >= 4)
  {
    v124 = 0;
    if (v20 <= 3)
    {
      v125 = 3;
    }

    else
    {
      v125 = v16 - 4;
    }

    v126 = ((v125 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v127 = v126 >> 32;
    v128 = v16 - (v126 >> 32);
    v129 = (v15 - 1);
    v130 = &a12[2].f64[v19 * v129] + ((8 * v125) & 0x3FFFFFFE0);
    v131 = &result[v129 * a2 + 4 + (v125 & 0x7FFFFFFC)];
    v132 = (v125 >> 2) + 1;
    v133 = v126 >> 29;
    v134 = &result[v128];
    v136 = v131 > a12 && v130 > result;
    v137 = vdupq_lane_s64(v17, 0);
    v138 = vdupq_lane_s64(*&v18, 0);
    v139 = v128 & 0xFFFFFFFFFFFFFFF0;
    v140 = v20 < 60 || ((a13 | a2) & 0x8000000000000000) != 0 || v136;
    v141 = (a12 + 24);
    v142 = 8 * v19;
    v143 = (v127 & 0xFFFFFFFFFFFFFFFCLL | v16 & 3) - v16;
    v144 = -v133;
    v145 = a12;
    while (1)
    {
      if (v140)
      {
        v146 = 0;
      }

      else
      {
        v225 = vld4q_s8(result);
        v147 = vextq_s8(v225.val[0], v225.val[0], 8uLL).u64[0];
        v148.i32[0] = LOBYTE(v225.val[0].f64[0]);
        v148.i32[1] = BYTE1(v225.val[0].f64[0]);
        v149 = vand_s8(v148, 0xFF000000FFLL);
        v150.i64[0] = v149.u32[0];
        v150.i64[1] = v149.u32[1];
        v151.i32[0] = LOBYTE(v225.val[1].f64[0]);
        v151.i32[1] = BYTE1(v225.val[1].f64[0]);
        v152 = vcvtq_f64_u64(v150);
        v153 = vand_s8(v151, 0xFF000000FFLL);
        v150.i64[0] = v153.u32[0];
        v150.i64[1] = v153.u32[1];
        v227.val[1] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        v153.i32[0] = BYTE2(v225.val[0].f64[0]);
        v153.i32[1] = BYTE3(v225.val[0].f64[0]);
        v154 = vand_s8(v153, 0xFF000000FFLL);
        v150.i64[0] = v154.u32[0];
        v150.i64[1] = v154.u32[1];
        v155 = v150;
        v227.val[0] = vmlaq_f64(v138, v137, v152);
        LODWORD(v152.f64[0]) = LOBYTE(v225.val[3].f64[0]);
        HIDWORD(v152.f64[0]) = BYTE1(v225.val[3].f64[0]);
        *&v152.f64[0] = vand_s8(*&v152.f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v152.f64[0]);
        v150.i64[1] = HIDWORD(v152.f64[0]);
        v227.val[3] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v152.f64[0]) = LOBYTE(v225.val[2].f64[0]);
        HIDWORD(v152.f64[0]) = BYTE1(v225.val[2].f64[0]);
        *&v152.f64[0] = vand_s8(*&v152.f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v152.f64[0]);
        v150.i64[1] = HIDWORD(v152.f64[0]);
        v227.val[2] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v152.f64[0]) = BYTE2(v225.val[1].f64[0]);
        HIDWORD(v152.f64[0]) = BYTE3(v225.val[1].f64[0]);
        v156 = v145;
        vst4q_f64(v156, v227);
        v156 += 8;
        *&v152.f64[0] = vand_s8(*&v152.f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v152.f64[0]);
        v150.i64[1] = HIDWORD(v152.f64[0]);
        v227.val[1] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v152.f64[0]) = BYTE4(v225.val[0].f64[0]);
        HIDWORD(v152.f64[0]) = BYTE5(v225.val[0].f64[0]);
        *&v152.f64[0] = vand_s8(*&v152.f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v152.f64[0]);
        v150.i64[1] = HIDWORD(v152.f64[0]);
        a9 = v150;
        v227.val[0] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v155));
        v155.i32[0] = BYTE2(v225.val[3].f64[0]);
        v155.i32[1] = BYTE3(v225.val[3].f64[0]);
        *v155.i8 = vand_s8(*v155.i8, 0xFF000000FFLL);
        v150.i64[0] = v155.u32[0];
        v150.i64[1] = v155.u32[1];
        v227.val[3] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        v155.i32[0] = BYTE2(v225.val[2].f64[0]);
        v155.i32[1] = BYTE3(v225.val[2].f64[0]);
        *v155.i8 = vand_s8(*v155.i8, 0xFF000000FFLL);
        v150.i64[0] = v155.u32[0];
        v150.i64[1] = v155.u32[1];
        v227.val[2] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        v155.i32[0] = BYTE4(v225.val[1].f64[0]);
        v155.i32[1] = BYTE5(v225.val[1].f64[0]);
        vst4q_f64(v156, v227);
        *v155.i8 = vand_s8(*v155.i8, 0xFF000000FFLL);
        v150.i64[0] = v155.u32[0];
        v150.i64[1] = v155.u32[1];
        v227.val[1] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        v155.i32[0] = BYTE6(v225.val[0].f64[0]);
        v155.i32[1] = HIBYTE(v225.val[0].f64[0]);
        v227.val[0] = vmlaq_f64(v138, v137, vcvtq_f64_u64(a9));
        a9.n128_u32[0] = BYTE4(v225.val[3].f64[0]);
        a9.n128_u32[1] = BYTE5(v225.val[3].f64[0]);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v150.i64[0] = a9.n128_u32[0];
        v150.i64[1] = a9.n128_u32[1];
        v227.val[3] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        a9.n128_u32[0] = BYTE4(v225.val[2].f64[0]);
        a9.n128_u32[1] = BYTE5(v225.val[2].f64[0]);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v150.i64[0] = a9.n128_u32[0];
        v150.i64[1] = a9.n128_u32[1];
        v227.val[2] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        a9.n128_u64[0] = vand_s8(*v155.i8, 0xFF000000FFLL);
        v150.i64[0] = a9.n128_u32[0];
        v150.i64[1] = a9.n128_u32[1];
        v157 = (v145 + 128);
        vst4q_f64(v157, v227);
        v227.val[0] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        a9.n128_u32[0] = BYTE6(v225.val[1].f64[0]);
        a9.n128_u32[1] = HIBYTE(v225.val[1].f64[0]);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v150.i64[0] = a9.n128_u32[0];
        v150.i64[1] = a9.n128_u32[1];
        v227.val[1] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        a9.n128_u32[0] = BYTE6(v225.val[2].f64[0]);
        a9.n128_u32[1] = HIBYTE(v225.val[2].f64[0]);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v150.i64[0] = a9.n128_u32[0];
        v150.i64[1] = a9.n128_u32[1];
        v227.val[2] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        a9.n128_u32[0] = BYTE6(v225.val[3].f64[0]);
        a9.n128_u32[1] = HIBYTE(v225.val[3].f64[0]);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v150.i64[0] = a9.n128_u32[0];
        v150.i64[1] = a9.n128_u32[1];
        v227.val[3] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        a9.n128_u32[0] = v147;
        a9.n128_u32[1] = BYTE1(v147);
        a9.n128_u64[0] = vand_s8(a9.n128_u64[0], 0xFF000000FFLL);
        v150.i64[0] = a9.n128_u32[0];
        v150.i64[1] = a9.n128_u32[1];
        v158 = vcvtq_f64_u64(v150);
        v159 = (v145 + 192);
        vst4q_f64(v159, v227);
        a9.n128_u64[0] = vextq_s8(v225.val[1], v225.val[1], 8uLL).u64[0];
        v155.i32[0] = a9.n128_u8[0];
        v155.i32[1] = a9.n128_u8[1];
        *v155.i8 = vand_s8(*v155.i8, 0xFF000000FFLL);
        v150.i64[0] = v155.u32[0];
        v150.i64[1] = v155.u32[1];
        *&v227.val[0].f64[0] = vextq_s8(v225.val[2], v225.val[2], 8uLL).u64[0];
        v155.i64[0] = vextq_s8(v225.val[3], v225.val[3], 8uLL).u64[0];
        v225.val[1] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v227.val[1].f64[0]) = BYTE2(v147);
        HIDWORD(v227.val[1].f64[0]) = BYTE3(v147);
        *&v227.val[1].f64[0] = vand_s8(*&v227.val[1].f64[0], 0xFF000000FFLL);
        v225.val[0] = vmlaq_f64(v138, v137, v158);
        LODWORD(v227.val[2].f64[0]) = v155.u8[0];
        HIDWORD(v227.val[2].f64[0]) = v155.u8[1];
        *&v227.val[2].f64[0] = vand_s8(*&v227.val[2].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v227.val[2].f64[0]);
        v150.i64[1] = HIDWORD(v227.val[2].f64[0]);
        v225.val[3] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v227.val[2].f64[0]) = LOBYTE(v227.val[0].f64[0]);
        HIDWORD(v227.val[2].f64[0]) = BYTE1(v227.val[0].f64[0]);
        v150.i64[0] = LODWORD(v227.val[1].f64[0]);
        v150.i64[1] = HIDWORD(v227.val[1].f64[0]);
        v227.val[1] = v150;
        *&v227.val[2].f64[0] = vand_s8(*&v227.val[2].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v227.val[2].f64[0]);
        v150.i64[1] = HIDWORD(v227.val[2].f64[0]);
        v225.val[2] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v227.val[2].f64[0]) = a9.n128_u8[2];
        HIDWORD(v227.val[2].f64[0]) = a9.n128_u8[3];
        *&v227.val[2].f64[0] = vand_s8(*&v227.val[2].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v227.val[2].f64[0]);
        v150.i64[1] = HIDWORD(v227.val[2].f64[0]);
        v160 = (v145 + 256);
        vst4q_f64(v160, v225);
        v227.val[3] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v225.val[0].f64[0]) = BYTE2(v227.val[0].f64[0]);
        HIDWORD(v225.val[0].f64[0]) = BYTE3(v227.val[0].f64[0]);
        v227.val[2] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v227.val[1]));
        LODWORD(v225.val[1].f64[0]) = v155.u8[2];
        HIDWORD(v225.val[1].f64[0]) = v155.u8[3];
        *&v225.val[1].f64[0] = vand_s8(*&v225.val[1].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v225.val[1].f64[0]);
        v150.i64[1] = HIDWORD(v225.val[1].f64[0]);
        v161 = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        *&v225.val[0].f64[0] = vand_s8(*&v225.val[0].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v225.val[0].f64[0]);
        v150.i64[1] = HIDWORD(v225.val[0].f64[0]);
        v162 = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v225.val[0].f64[0]) = BYTE4(v147);
        HIDWORD(v225.val[0].f64[0]) = BYTE5(v147);
        v163 = (v145 + 320);
        vst4q_f64(v163, *(&v227 + 32));
        *&v225.val[0].f64[0] = vand_s8(*&v225.val[0].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v225.val[0].f64[0]);
        v150.i64[1] = HIDWORD(v225.val[0].f64[0]);
        v227.val[1] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v225.val[0].f64[0]) = a9.n128_u8[4];
        HIDWORD(v225.val[0].f64[0]) = a9.n128_u8[5];
        *&v225.val[0].f64[0] = vand_s8(*&v225.val[0].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v225.val[0].f64[0]);
        v150.i64[1] = HIDWORD(v225.val[0].f64[0]);
        v227.val[2] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v225.val[0].f64[0]) = BYTE4(v227.val[0].f64[0]);
        HIDWORD(v225.val[0].f64[0]) = BYTE5(v227.val[0].f64[0]);
        *&v225.val[0].f64[0] = vand_s8(*&v225.val[0].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v225.val[0].f64[0]);
        v150.i64[1] = HIDWORD(v225.val[0].f64[0]);
        v227.val[3] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        LODWORD(v225.val[0].f64[0]) = v155.u8[4];
        HIDWORD(v225.val[0].f64[0]) = v155.u8[5];
        *&v225.val[0].f64[0] = vand_s8(*&v225.val[0].f64[0], 0xFF000000FFLL);
        v150.i64[0] = LODWORD(v225.val[0].f64[0]);
        v150.i64[1] = HIDWORD(v225.val[0].f64[0]);
        v164 = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        v165 = (v145 + 384);
        vst4q_f64(v165, *(&v227 + 16));
        LODWORD(v225.val[0].f64[0]) = BYTE6(v147);
        HIDWORD(v225.val[0].f64[0]) = HIBYTE(v147);
        v166 = vand_s8(*&v225.val[0].f64[0], 0xFF000000FFLL);
        v150.i64[0] = v166.u32[0];
        v150.i64[1] = v166.u32[1];
        v225.val[0] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        v166.i32[0] = a9.n128_u8[6];
        v166.i32[1] = a9.n128_u8[7];
        v167 = vand_s8(v166, 0xFF000000FFLL);
        v150.i64[0] = v167.u32[0];
        v150.i64[1] = v167.u32[1];
        v225.val[1] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        v167.i32[0] = BYTE6(v227.val[0].f64[0]);
        v167.i32[1] = HIBYTE(v227.val[0].f64[0]);
        v168 = vand_s8(v167, 0xFF000000FFLL);
        v150.i64[0] = v168.u32[0];
        v150.i64[1] = v168.u32[1];
        v225.val[2] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v150));
        v168.i32[0] = v155.u8[6];
        v168.i32[1] = v155.u8[7];
        a2 = v223;
        v169 = vand_s8(v168, 0xFF000000FFLL);
        v150.i64[0] = v169.u32[0];
        v150.i64[1] = v169.u32[1];
        a8 = vcvtq_f64_u64(v150);
        v225.val[3] = vmlaq_f64(v138, v137, a8);
        v170 = (v145 + 448);
        vst4q_f64(v170, v225);
        v146 = 4 * (v132 & 0x3FFFFFF0);
        if (v132 == (v132 & 0x3FFFFFF0))
        {
          goto LABEL_60;
        }
      }

      v171 = &v141->f64[v146];
      do
      {
        LOBYTE(a8.f64[0]) = result[v146];
        v172 = v18 + *&a8.f64[0] * *&v17;
        a9.n128_u8[0] = result[v146 + 1];
        v173 = v18 + a9.n128_u64[0] * *&v17;
        *(v171 - 3) = v172;
        v174 = v145 + 8 * v146;
        *(v174 + 8) = v173;
        LOBYTE(v172) = result[v146 + 2];
        a8.f64[0] = v18 + *&v172 * *&v17;
        LOBYTE(v173) = result[v146 + 3];
        a9.n128_f64[0] = v18 + *&v173 * *&v17;
        *(v174 + 16) = a8.f64[0];
        *v171 = a9.n128_f64[0];
        v171 += 4;
        v146 += 4;
      }

      while (v146 <= v20);
LABEL_60:
      if (v16 > v146)
      {
        v175 = v146;
        if (v128 < 4)
        {
          v146 = v146;
          goto LABEL_75;
        }

        if (v145 + 8 * v146 < &v134[v124 * a2 + v146] && &result[v146] < &a12->f64[v146 + v16] + v144 + (a13 & 0xFFFFFFFFFFFFFFF8) * v124)
        {
          v146 = v146;
          goto LABEL_75;
        }

        if (v128 >= 0x10)
        {
          v177 = 8 * v146;
          v178 = v175;
          v179 = v128 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v180 = *&result[v178];
            v181.i32[0] = v180.u8[6];
            v181.i32[1] = v180.u8[7];
            v182.i32[0] = v180.u8[4];
            v183 = vand_s8(v181, 0xFF000000FFLL);
            v182.i32[1] = v180.u8[5];
            v184 = vand_s8(v182, 0xFF000000FFLL);
            v185.i64[0] = v183.u32[0];
            v185.i64[1] = v183.u32[1];
            v186 = v185;
            v187.i32[0] = v180.u8[2];
            v187.i32[1] = v180.u8[3];
            v185.i64[0] = v184.u32[0];
            v185.i64[1] = v184.u32[1];
            v188 = v185;
            v189 = vand_s8(v187, 0xFF000000FFLL);
            v185.i64[0] = v189.u32[0];
            v185.i64[1] = v189.u32[1];
            v190 = v185;
            v191.i32[0] = v180.u8[0];
            v191.i32[1] = v180.u8[1];
            v192 = vand_s8(v191, 0xFF000000FFLL);
            v185.i64[0] = v192.u32[0];
            v185.i64[1] = v192.u32[1];
            v180.i64[0] = vextq_s8(v180, v180, 8uLL).u64[0];
            v193.i32[0] = v180.u8[6];
            v193.i32[1] = v180.u8[7];
            v194 = vand_s8(v193, 0xFF000000FFLL);
            v195 = vcvtq_f64_u64(v185);
            v196.i32[0] = v180.u8[4];
            v185.i64[0] = v194.u32[0];
            v185.i64[1] = v194.u32[1];
            v197 = v185;
            v196.i32[1] = v180.u8[5];
            v198 = vand_s8(v196, 0xFF000000FFLL);
            v185.i64[0] = v198.u32[0];
            v185.i64[1] = v198.u32[1];
            v199 = v185;
            v200.i32[0] = v180.u8[2];
            v200.i32[1] = v180.u8[3];
            v201 = vand_s8(v200, 0xFF000000FFLL);
            v185.i64[0] = v201.u32[0];
            v185.i64[1] = v201.u32[1];
            v202.i32[0] = v180.u8[0];
            v202.i32[1] = v180.u8[1];
            *v180.i8 = vand_s8(v202, 0xFF000000FFLL);
            v203 = vcvtq_f64_u64(v185);
            v185.i64[0] = v180.u32[0];
            v185.i64[1] = v180.u32[1];
            v204 = vmlaq_f64(v138, v137, v195);
            v205 = vmlaq_f64(v138, v137, vcvtq_f64_u64(v190));
            v206 = vmlaq_f64(v138, v137, vcvtq_f64_u64(v188));
            a9 = vmlaq_f64(v138, v137, vcvtq_f64_u64(v186));
            v207 = v145 + v177;
            a8 = vmlaq_f64(v138, v137, vcvtq_f64_u64(v197));
            *(v207 + 32) = v206;
            *(v207 + 48) = a9;
            *v207 = v204;
            *(v207 + 16) = v205;
            *(v207 + 96) = vmlaq_f64(v138, v137, vcvtq_f64_u64(v199));
            *(v207 + 112) = a8;
            *(v207 + 64) = vmlaq_f64(v138, v137, vcvtq_f64_u64(v185));
            *(v207 + 80) = vmlaq_f64(v138, v137, v203);
            v178 += 16;
            v177 += 128;
            v179 -= 16;
          }

          while (v179);
          if (v128 == v139)
          {
            goto LABEL_54;
          }

          v176 = v128 & 0xFFFFFFFFFFFFFFF0;
          if ((v128 & 0xC) == 0)
          {
            v146 = v175 + v139;
            do
            {
LABEL_75:
              LOBYTE(a8.f64[0]) = result[v146];
              a8.f64[0] = v18 + *&a8.f64[0] * *&v17;
              *(v145 + 8 * v146++) = a8.f64[0];
            }

            while (v16 != v146);
            goto LABEL_54;
          }
        }

        else
        {
          v176 = 0;
        }

        v146 = v175 + v128 - (v16 & 3);
        v208 = v143 + v176;
        v209 = v176 + v175;
        v210 = 8 * v209;
        do
        {
          LODWORD(a8.f64[0]) = *&result[v209];
          v211 = vmovl_u16(*&vmovl_u8(*&a8.f64[0]));
          v212 = vand_s8(*v211.i8, 0xFF000000FFLL);
          v213.i64[0] = v212.u32[0];
          v213.i64[1] = v212.u32[1];
          a9 = vcvtq_f64_u64(v213);
          *v211.i8 = vand_s8(*&vextq_s8(v211, v211, 8uLL), 0xFF000000FFLL);
          v213.i64[0] = v211.u32[0];
          v213.i64[1] = v211.u32[1];
          a8 = vmlaq_f64(v138, v137, a9);
          v214 = (v145 + v210);
          *v214 = a8;
          v214[1] = vmlaq_f64(v138, v137, vcvtq_f64_u64(v213));
          v209 += 4;
          v210 += 32;
          v208 += 4;
        }

        while (v208);
        if ((v16 & 3) == 0)
        {
          goto LABEL_54;
        }

        goto LABEL_75;
      }

LABEL_54:
      result += a2;
      v145 += v142;
      ++v124;
      v141 = (v141 + v142);
      if (!--v15)
      {
        return result;
      }
    }
  }

  if (v16 >= 1)
  {
    v22 = result + 2;
    f64 = a12[1].f64;
    do
    {
      LOBYTE(a5) = *(v22 - 2);
      a5 = v18 + *&a5 * *&v17;
      *(f64 - 2) = a5;
      if (v16 != 1)
      {
        LOBYTE(a5) = *(v22 - 1);
        a5 = v18 + *&a5 * *&v17;
        *(f64 - 1) = a5;
        if (v16 != 2)
        {
          LOBYTE(a5) = *v22;
          a5 = v18 + *&a5 * *&v17;
          *f64 = a5;
        }
      }

      v22 += a2;
      f64 += v19;
      --v15;
    }

    while (v15);
  }

  return result;
}

const char *sub_100222D80(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = a2;
  v10 = *a7;
  v11 = *a8;
  v12 = a8[1];
  v13 = a6 >> 3;
  v14 = v10 - 4;
  v15 = (v10 - 8);
  if (v10 >= 8)
  {
    v18 = 0;
    v19 = vdupq_lane_s64(*&v12, 0);
    v20 = a6 & 0xFFFFFFFFFFFFFFF8;
    v21 = (v15 & 0xFFFFFFF8) + 8;
    v22 = v21 | 4;
    if ((v21 | 4) <= v14 + 1)
    {
      v22 = v14 + 1;
    }

    v23 = ~v21 + v22;
    v24 = a5 + 2;
    v25 = &a5[2 * (v23 >> 2) + 2];
    v26 = &result[(v23 & 0xFFFFFFFFFFFFFFFCLL) + 4];
    v27 = (a5 + 8 * v10);
    v230 = (v23 >> 2) + 1;
    v231 = v23;
    v28 = vdupq_lane_s64(v11, 0);
    v239 = v10;
    v226 = &result[v10];
    v29 = vdupq_lane_s64(*&v12, 0);
    v30 = 8 * v13;
    v31 = &result[v10];
    v32 = (a5 + 24);
    v234 = v30;
    v232 = v20;
    v228 = v26;
    v229 = v25;
    v227 = v27;
    while (1)
    {
      v33 = 0;
      v34 = 0;
      v35 = v27 + v20 * v18;
      v36 = &v31[v18 * v9];
      v37 = 8;
      v38 = v24;
      do
      {
        v39 = v37;
        v40 = vmovl_s8(*&result[v34]);
        v41 = vmovl_s16(*v40.i8);
        v42 = vmovl_high_s16(v40);
        v43 = vaddq_f64(v19, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*v42.i8)), *&v11));
        v44 = vaddq_f64(v19, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v42, v42, 8uLL))), *&v11));
        v38[-2] = vaddq_f64(v19, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*v41.i8)), *&v11));
        v38[-1] = vaddq_f64(v19, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v41, v41, 8uLL))), *&v11));
        v34 += 8;
        *v38 = v43;
        v38[1] = v44;
        v38 += 4;
        v33 += 0x800000000;
        v37 += 8;
      }

      while (v34 <= v15);
      if (v14 >= v34)
      {
        break;
      }

      if (v34 < v10)
      {
        goto LABEL_28;
      }

LABEL_13:
      result += v9;
      a5 = (a5 + v30);
      ++v18;
      v24 = (v24 + v30);
      v32 = (v32 + v30);
      if (!--v8)
      {
        return result;
      }
    }

    v240 = &v31[v18 * v9];
    v34 = v33 >> 32;
    if (v23 <= 0x3B)
    {
      goto LABEL_25;
    }

    v45 = v33 >> 29;
    if (a5 + v45 < &v26[v18 * v9 + v34] && &result[v34] < v25 + v20 * v18 + v45)
    {
      goto LABEL_25;
    }

    v235 = v27 + v20 * v18;
    v236 = v32;
    v237 = v24;
    v238 = v8;
    v34 += 4 * (v230 & 0x7FFFFFFFFFFFFFF0);
    v46 = v39;
    v47 = v39;
    v48 = v230 & 0x7FFFFFFFFFFFFFF0;
    do
    {
      v49 = &result[v46];
      v241 = vld4q_s8(v49);
      v50.i32[0] = LOBYTE(v241.val[0].f64[0]);
      v50.i32[1] = BYTE1(v241.val[0].f64[0]);
      v51.i32[0] = BYTE2(v241.val[0].f64[0]);
      v51.i32[1] = BYTE3(v241.val[0].f64[0]);
      v52 = vshr_n_s32(vshl_n_s32(v50, 0x18uLL), 0x18uLL);
      v53.i64[0] = v52.i32[0];
      v53.i64[1] = v52.i32[1];
      v54.i32[0] = LOBYTE(v241.val[1].f64[0]);
      v54.i32[1] = BYTE1(v241.val[1].f64[0]);
      v55 = vcvtq_f64_s64(v53);
      v56 = vshr_n_s32(vshl_n_s32(v54, 0x18uLL), 0x18uLL);
      v53.i64[0] = v56.i32[0];
      v53.i64[1] = v56.i32[1];
      v243.val[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v56.i32[0] = BYTE4(v241.val[1].f64[0]);
      v243.val[0] = vmlaq_f64(v29, v28, v55);
      LODWORD(v55.f64[0]) = LOBYTE(v241.val[3].f64[0]);
      v56.i32[1] = BYTE5(v241.val[1].f64[0]);
      HIDWORD(v55.f64[0]) = BYTE1(v241.val[3].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[3] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = LOBYTE(v241.val[2].f64[0]);
      HIDWORD(v55.f64[0]) = BYTE1(v241.val[2].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[2] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v57 = &a5[8].f64[v47];
      v58 = &a5[12].f64[v47];
      v59 = &a5->f64[v47];
      vst4q_f64(v59, v243);
      v59 += 8;
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(v56, 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE4(v241.val[0].f64[0]);
      HIDWORD(v55.f64[0]) = BYTE5(v241.val[0].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[0] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE4(v241.val[3].f64[0]);
      HIDWORD(v55.f64[0]) = BYTE5(v241.val[3].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[3] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE4(v241.val[2].f64[0]);
      HIDWORD(v55.f64[0]) = BYTE5(v241.val[2].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[2] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE6(v241.val[1].f64[0]);
      HIDWORD(v55.f64[0]) = HIBYTE(v241.val[1].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      vst4q_f64(v57, v243);
      v243.val[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE6(v241.val[0].f64[0]);
      HIDWORD(v55.f64[0]) = HIBYTE(v241.val[0].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[0] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE6(v241.val[3].f64[0]);
      HIDWORD(v55.f64[0]) = HIBYTE(v241.val[3].f64[0]);
      v60 = vshr_n_s32(vshl_n_s32(v51, 0x18uLL), 0x18uLL);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[3] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE6(v241.val[2].f64[0]);
      v53.i64[0] = v60.i32[0];
      v53.i64[1] = v60.i32[1];
      v61 = v53;
      HIDWORD(v55.f64[0]) = HIBYTE(v241.val[2].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v243.val[2] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE2(v241.val[1].f64[0]);
      HIDWORD(v55.f64[0]) = BYTE3(v241.val[1].f64[0]);
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      vst4q_f64(v58, v243);
      v243.val[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v55.f64[0]) = BYTE2(v241.val[3].f64[0]);
      HIDWORD(v55.f64[0]) = BYTE3(v241.val[3].f64[0]);
      v243.val[0] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v61));
      *v61.i8 = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      v243.val[3] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v61.i32[0] = BYTE2(v241.val[2].f64[0]);
      v61.i32[1] = BYTE3(v241.val[2].f64[0]);
      *v61.i8 = vshr_n_s32(vshl_n_s32(*v61.i8, 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      v243.val[2] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      vst4q_f64(v59, v243);
      v61.i64[0] = vextq_s8(v241.val[0], v241.val[0], 8uLL).u64[0];
      v62 = v61.u8[2];
      LODWORD(v55.f64[0]) = v61.u8[0];
      v63 = vextq_s8(v241.val[1], v241.val[1], 8uLL).u64[0];
      HIDWORD(v55.f64[0]) = v61.u8[1];
      LODWORD(v243.val[0].f64[0]) = v63.u8[0];
      HIDWORD(v243.val[0].f64[0]) = v63.u8[1];
      LODWORD(v58) = v61.u8[3];
      v64 = v61.u8[4];
      *&v55.f64[0] = vshr_n_s32(vshl_n_s32(*&v55.f64[0], 0x18uLL), 0x18uLL);
      LODWORD(v57) = v61.u8[5];
      LODWORD(v59) = v61.u8[6];
      v53.i64[0] = SLODWORD(v55.f64[0]);
      v53.i64[1] = SHIDWORD(v55.f64[0]);
      v65 = v53;
      *&v243.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v243.val[0].f64[0], 0x18uLL), 0x18uLL);
      v66 = v61.u8[7];
      v67 = v63.u8[2];
      v53.i64[0] = SLODWORD(v243.val[0].f64[0]);
      v53.i64[1] = SHIDWORD(v243.val[0].f64[0]);
      *&v243.val[1].f64[0] = vextq_s8(v241.val[2], v241.val[2], 8uLL).u64[0];
      v68 = v63.u8[3];
      v69 = v63.u8[4];
      v61.i64[0] = vextq_s8(v241.val[3], v241.val[3], 8uLL).u64[0];
      v70 = v63.u8[5];
      v71 = v63.u8[6];
      v72 = v63.u8[7];
      v241.val[2] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v63.i32[0] = v61.u8[0];
      v63.i32[1] = v61.u8[1];
      v241.val[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v65));
      *v65.i8 = vshr_n_s32(vshl_n_s32(v63, 0x18uLL), 0x18uLL);
      v53.i64[0] = v65.i32[0];
      v53.i64[1] = v65.i32[1];
      v243.val[0] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v73 = &a5[16].f64[v47];
      v63.i32[0] = LOBYTE(v243.val[1].f64[0]);
      v63.i32[1] = BYTE1(v243.val[1].f64[0]);
      v74 = &a5[20].f64[v47];
      v75 = vshr_n_s32(vshl_n_s32(v63, 0x18uLL), 0x18uLL);
      v53.i64[0] = v75.i32[0];
      v53.i64[1] = v75.i32[1];
      v241.val[3] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      *v65.i8 = vshr_n_s32(vshl_n_s32(__PAIR64__(v58, v62), 0x18uLL), 0x18uLL);
      v53.i64[0] = v65.i32[0];
      v53.i64[1] = v65.i32[1];
      v76 = vcvtq_f64_s64(v53);
      v77 = vshr_n_s32(vshl_n_s32(__PAIR64__(v68, v67), 0x18uLL), 0x18uLL);
      v53.i64[0] = v77.i32[0];
      v53.i64[1] = v77.i32[1];
      vst4q_f64(v73, *(&v241 + 16));
      v241.val[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v241.val[0] = vmlaq_f64(v29, v28, v76);
      LODWORD(v76.f64[0]) = v61.u8[2];
      HIDWORD(v76.f64[0]) = v61.u8[3];
      *&v76.f64[0] = vshr_n_s32(vshl_n_s32(*&v76.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v76.f64[0]);
      v53.i64[1] = SHIDWORD(v76.f64[0]);
      v241.val[3] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      LODWORD(v76.f64[0]) = BYTE2(v243.val[1].f64[0]);
      HIDWORD(v76.f64[0]) = BYTE3(v243.val[1].f64[0]);
      *&v76.f64[0] = vshr_n_s32(vshl_n_s32(*&v76.f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = SLODWORD(v76.f64[0]);
      v53.i64[1] = SHIDWORD(v76.f64[0]);
      v241.val[2] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      *&v76.f64[0] = vshr_n_s32(vshl_n_s32(__PAIR64__(v70, v69), 0x18uLL), 0x18uLL);
      vst4q_f64(v74, v241);
      LODWORD(v241.val[0].f64[0]) = v61.u8[4];
      HIDWORD(v241.val[0].f64[0]) = v61.u8[5];
      v53.i64[0] = SLODWORD(v76.f64[0]);
      v53.i64[1] = SHIDWORD(v76.f64[0]);
      LODWORD(v74) = v61.u8[6];
      LODWORD(v73) = v61.u8[7];
      v241.val[2] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      *v61.i8 = vshr_n_s32(vshl_n_s32(__PAIR64__(v57, v64), 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      v241.val[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      *v61.i8 = vshr_n_s32(vshl_n_s32(*&v241.val[0].f64[0], 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      v243.val[0] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v61.i32[0] = BYTE4(v243.val[1].f64[0]);
      v61.i32[1] = BYTE5(v243.val[1].f64[0]);
      *v61.i8 = vshr_n_s32(vshl_n_s32(*v61.i8, 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      v241.val[3] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v78 = &a5[24].f64[v47];
      *v61.i8 = vshr_n_s32(vshl_n_s32(__PAIR64__(v72, v71), 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      vst4q_f64(v78, *(&v241 + 16));
      v241.val[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      *v61.i8 = vshr_n_s32(vshl_n_s32(__PAIR64__(v66, v59), 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      v241.val[0] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      *v61.i8 = vshr_n_s32(vshl_n_s32(__PAIR64__(v73, v74), 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      v241.val[3] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v53));
      v61.i32[0] = BYTE6(v243.val[1].f64[0]);
      v61.i32[1] = HIBYTE(v243.val[1].f64[0]);
      *v61.i8 = vshr_n_s32(vshl_n_s32(*v61.i8, 0x18uLL), 0x18uLL);
      v53.i64[0] = v61.i32[0];
      v53.i64[1] = v61.i32[1];
      v44 = vcvtq_f64_s64(v53);
      v241.val[2] = vmlaq_f64(v29, v28, v44);
      v79 = &a5[28].f64[v47];
      vst4q_f64(v79, v241);
      v47 += 64;
      v46 += 64;
      v48 -= 16;
    }

    while (v48);
    v23 = v231;
    v20 = v232;
    v9 = a2;
    v8 = v238;
    v24 = v237;
    v26 = v228;
    v25 = v229;
    v31 = v226;
    v27 = v227;
    v30 = v234;
    v35 = v235;
    v32 = v236;
    if (v230 != (v230 & 0x7FFFFFFFFFFFFFF0))
    {
LABEL_25:
      v80 = &v32->f64[v34];
      do
      {
        v81 = v12 + result[v34 + 1] * *&v11;
        *(v80 - 3) = v12 + result[v34] * *&v11;
        v82 = (a5 + 8 * v34);
        v82->f64[1] = v81;
        v44.f64[0] = v12 + result[v34 + 2] * *&v11;
        v83 = v12 + result[v34 + 3] * *&v11;
        v82[1].f64[0] = v44.f64[0];
        *v80 = v83;
        v80 += 4;
        v34 += 4;
      }

      while (v34 <= v14);
    }

    v10 = v239;
    v36 = v240;
    if (v34 >= v239)
    {
      goto LABEL_13;
    }

LABEL_28:
    v84 = v10 - v34;
    if (v84 < 4)
    {
      v85 = v34;
      goto LABEL_44;
    }

    if (&a5->f64[v34] < v36 && &result[v34] < v35)
    {
      v85 = v34;
      goto LABEL_44;
    }

    if (v84 >= 0x10)
    {
      v87 = v32;
      v86 = v84 & 0xFFFFFFFFFFFFFFF0;
      v88 = 8 * v34;
      v89 = v34;
      v90 = v84 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v91 = *&result[v89];
        v92.i32[0] = v91.u8[6];
        v92.i32[1] = v91.u8[7];
        v93.i32[0] = v91.u8[4];
        v93.i32[1] = v91.u8[5];
        v94 = vshr_n_s32(vshl_n_s32(v92, 0x18uLL), 0x18uLL);
        v95.i32[0] = v91.u8[2];
        v96 = vshr_n_s32(vshl_n_s32(v93, 0x18uLL), 0x18uLL);
        v95.i32[1] = v91.u8[3];
        v97.i64[0] = v94.i32[0];
        v97.i64[1] = v94.i32[1];
        v98 = v97;
        v99.i32[0] = v91.u8[0];
        v97.i64[0] = v96.i32[0];
        v97.i64[1] = v96.i32[1];
        v100 = v97;
        v101 = vshr_n_s32(vshl_n_s32(v95, 0x18uLL), 0x18uLL);
        v99.i32[1] = v91.u8[1];
        v102 = vshr_n_s32(vshl_n_s32(v99, 0x18uLL), 0x18uLL);
        v97.i64[0] = v101.i32[0];
        v97.i64[1] = v101.i32[1];
        v103 = v97;
        v97.i64[0] = v102.i32[0];
        v97.i64[1] = v102.i32[1];
        v104 = vextq_s8(v91, v91, 8uLL).u64[0];
        v105.i32[0] = BYTE6(v104);
        v106 = vcvtq_f64_s64(v98);
        v105.i32[1] = HIBYTE(v104);
        *v98.i8 = vshl_n_s32(v105, 0x18uLL);
        v105.i32[0] = BYTE4(v104);
        *v98.i8 = vshr_n_s32(*v98.i8, 0x18uLL);
        v105.i32[1] = BYTE5(v104);
        v107 = vshr_n_s32(vshl_n_s32(v105, 0x18uLL), 0x18uLL);
        v108 = vcvtq_f64_s64(v97);
        v109.i32[0] = BYTE2(v104);
        v97.i64[0] = v98.i32[0];
        v97.i64[1] = v98.i32[1];
        v110 = v97;
        v97.i64[0] = v107.i32[0];
        v97.i64[1] = v107.i32[1];
        v109.i32[1] = BYTE3(v104);
        v111 = vshr_n_s32(vshl_n_s32(v109, 0x18uLL), 0x18uLL);
        v112.i32[0] = v104;
        v113 = BYTE1(v104);
        v114 = vcvtq_f64_s64(v97);
        v97.i64[0] = v111.i32[0];
        v97.i64[1] = v111.i32[1];
        v112.i32[1] = v113;
        v115 = vshr_n_s32(vshl_n_s32(v112, 0x18uLL), 0x18uLL);
        v116 = vcvtq_f64_s64(v97);
        v97.i64[0] = v115.i32[0];
        v97.i64[1] = v115.i32[1];
        v117 = vmlaq_f64(v29, v28, v108);
        v118 = vmlaq_f64(v29, v28, vcvtq_f64_s64(v103));
        v119 = vmlaq_f64(v29, v28, vcvtq_f64_s64(v100));
        v120 = vmlaq_f64(v29, v28, v106);
        v121 = (a5 + v88);
        v44 = vmlaq_f64(v29, v28, vcvtq_f64_s64(v110));
        v121[2] = v119;
        v121[3] = v120;
        *v121 = v117;
        v121[1] = v118;
        v121[6] = vmlaq_f64(v29, v28, v114);
        v121[7] = v44;
        v121[4] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v97));
        v121[5] = vmlaq_f64(v29, v28, v116);
        v89 += 16;
        v88 += 128;
        v90 -= 16;
      }

      while (v90);
      v10 = v239;
      v30 = v234;
      v32 = v87;
      if (v84 == v86)
      {
        goto LABEL_13;
      }

      if ((v84 & 0xC) == 0)
      {
        v85 = v86 + v34;
        do
        {
LABEL_44:
          a5->f64[v85] = v12 + result[v85] * *&v11;
          ++v85;
        }

        while (v10 != v85);
        goto LABEL_13;
      }
    }

    else
    {
      v86 = 0;
    }

    v85 = (v84 & 0xFFFFFFFFFFFFFFFCLL) + v34;
    v122 = v86 - (v84 & 0xFFFFFFFFFFFFFFFCLL);
    v123 = v86 + v34;
    v124 = 8 * v123;
    do
    {
      LODWORD(v44.f64[0]) = *&result[v123];
      v125 = vmovl_u16(*&vmovl_u8(*&v44.f64[0]));
      v126 = vshr_n_s32(vshl_n_s32(*v125.i8, 0x18uLL), 0x18uLL);
      v127.i64[0] = v126.i32[0];
      v127.i64[1] = v126.i32[1];
      v128 = vcvtq_f64_s64(v127);
      *v125.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v125, v125, 8uLL), 0x18uLL), 0x18uLL);
      v127.i64[0] = v125.i32[0];
      v127.i64[1] = v125.i32[1];
      v44 = vmlaq_f64(v29, v28, v128);
      v129 = (a5 + v124);
      *v129 = v44;
      v129[1] = vmlaq_f64(v29, v28, vcvtq_f64_s64(v127));
      v123 += 4;
      v124 += 32;
      v122 += 4;
    }

    while (v122);
    if (v84 == (v84 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

  if (v10 >= 4)
  {
    v130 = 0;
    if (v14 <= 3)
    {
      v131 = 3;
    }

    else
    {
      v131 = v10 - 4;
    }

    v132 = ((v131 << 32) & 0x7FFFFFFC00000000) + 0x400000000;
    v133 = v132 >> 32;
    v134 = v10 - (v132 >> 32);
    v135 = (v8 - 1);
    v136 = &a5[2].f64[v13 * v135] + ((8 * v131) & 0x3FFFFFFE0);
    v137 = &result[v135 * v9 + 4 + (v131 & 0x7FFFFFFC)];
    v138 = (v131 >> 2) + 1;
    v139 = v132 >> 29;
    v140 = &result[v134];
    v142 = v137 > a5 && v136 > result;
    v143 = vdupq_lane_s64(v11, 0);
    v144 = vdupq_lane_s64(*&v12, 0);
    v145 = v134 & 0xFFFFFFFFFFFFFFF0;
    v146 = v14 < 60 || ((a6 | v9) & 0x8000000000000000) != 0 || v142;
    v147 = (a5 + 24);
    v148 = 8 * v13;
    v149 = (v133 & 0xFFFFFFFFFFFFFFFCLL | v10 & 3) - v10;
    v150 = -v139;
    v151 = a5;
    while (1)
    {
      if (v146)
      {
        v152 = 0;
      }

      else
      {
        v242 = vld4q_s8(result);
        v153 = vextq_s8(v242.val[0], v242.val[0], 8uLL).u64[0];
        v154.i32[0] = LOBYTE(v242.val[0].f64[0]);
        v154.i32[1] = BYTE1(v242.val[0].f64[0]);
        v155 = vshr_n_s32(vshl_n_s32(v154, 0x18uLL), 0x18uLL);
        v156.i64[0] = v155.i32[0];
        v156.i64[1] = v155.i32[1];
        v157 = vcvtq_f64_s64(v156);
        v158.i32[0] = LOBYTE(v242.val[1].f64[0]);
        v158.i32[1] = BYTE1(v242.val[1].f64[0]);
        v159 = vshr_n_s32(vshl_n_s32(v158, 0x18uLL), 0x18uLL);
        v156.i64[0] = v159.i32[0];
        v156.i64[1] = v159.i32[1];
        v244.val[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        v159.i32[0] = BYTE2(v242.val[0].f64[0]);
        v159.i32[1] = BYTE3(v242.val[0].f64[0]);
        v160 = vshr_n_s32(vshl_n_s32(v159, 0x18uLL), 0x18uLL);
        v156.i64[0] = v160.i32[0];
        v156.i64[1] = v160.i32[1];
        v161 = vcvtq_f64_s64(v156);
        v244.val[0] = vmlaq_f64(v144, v143, v157);
        LODWORD(v157.f64[0]) = LOBYTE(v242.val[3].f64[0]);
        HIDWORD(v157.f64[0]) = BYTE1(v242.val[3].f64[0]);
        *&v157.f64[0] = vshr_n_s32(vshl_n_s32(*&v157.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v157.f64[0]);
        v156.i64[1] = SHIDWORD(v157.f64[0]);
        v244.val[3] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v157.f64[0]) = LOBYTE(v242.val[2].f64[0]);
        HIDWORD(v157.f64[0]) = BYTE1(v242.val[2].f64[0]);
        *&v157.f64[0] = vshr_n_s32(vshl_n_s32(*&v157.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v157.f64[0]);
        v156.i64[1] = SHIDWORD(v157.f64[0]);
        v244.val[2] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v157.f64[0]) = BYTE2(v242.val[1].f64[0]);
        HIDWORD(v157.f64[0]) = BYTE3(v242.val[1].f64[0]);
        v162 = v151;
        vst4q_f64(v162, v244);
        v162 += 8;
        *&v157.f64[0] = vshr_n_s32(vshl_n_s32(*&v157.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v157.f64[0]);
        v156.i64[1] = SHIDWORD(v157.f64[0]);
        v244.val[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v157.f64[0]) = BYTE4(v242.val[0].f64[0]);
        HIDWORD(v157.f64[0]) = BYTE5(v242.val[0].f64[0]);
        *&v157.f64[0] = vshr_n_s32(vshl_n_s32(*&v157.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v157.f64[0]);
        v156.i64[1] = SHIDWORD(v157.f64[0]);
        v163 = vcvtq_f64_s64(v156);
        v244.val[0] = vmlaq_f64(v144, v143, v161);
        LODWORD(v161.f64[0]) = BYTE2(v242.val[3].f64[0]);
        HIDWORD(v161.f64[0]) = BYTE3(v242.val[3].f64[0]);
        *&v161.f64[0] = vshr_n_s32(vshl_n_s32(*&v161.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v161.f64[0]);
        v156.i64[1] = SHIDWORD(v161.f64[0]);
        v244.val[3] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v161.f64[0]) = BYTE2(v242.val[2].f64[0]);
        HIDWORD(v161.f64[0]) = BYTE3(v242.val[2].f64[0]);
        *&v161.f64[0] = vshr_n_s32(vshl_n_s32(*&v161.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v161.f64[0]);
        v156.i64[1] = SHIDWORD(v161.f64[0]);
        v244.val[2] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v161.f64[0]) = BYTE4(v242.val[1].f64[0]);
        HIDWORD(v161.f64[0]) = BYTE5(v242.val[1].f64[0]);
        vst4q_f64(v162, v244);
        *&v161.f64[0] = vshr_n_s32(vshl_n_s32(*&v161.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v161.f64[0]);
        v156.i64[1] = SHIDWORD(v161.f64[0]);
        v244.val[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v161.f64[0]) = BYTE6(v242.val[0].f64[0]);
        HIDWORD(v161.f64[0]) = HIBYTE(v242.val[0].f64[0]);
        *&v161.f64[0] = vshr_n_s32(vshl_n_s32(*&v161.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v161.f64[0]);
        v156.i64[1] = SHIDWORD(v161.f64[0]);
        v164 = v156;
        v244.val[0] = vmlaq_f64(v144, v143, v163);
        LODWORD(v163.f64[0]) = BYTE4(v242.val[3].f64[0]);
        HIDWORD(v163.f64[0]) = BYTE5(v242.val[3].f64[0]);
        *&v163.f64[0] = vshr_n_s32(vshl_n_s32(*&v163.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v163.f64[0]);
        v156.i64[1] = SHIDWORD(v163.f64[0]);
        v244.val[3] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v163.f64[0]) = BYTE4(v242.val[2].f64[0]);
        HIDWORD(v163.f64[0]) = BYTE5(v242.val[2].f64[0]);
        *&v163.f64[0] = vshr_n_s32(vshl_n_s32(*&v163.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v163.f64[0]);
        v156.i64[1] = SHIDWORD(v163.f64[0]);
        v244.val[2] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v163.f64[0]) = BYTE6(v242.val[1].f64[0]);
        HIDWORD(v163.f64[0]) = HIBYTE(v242.val[1].f64[0]);
        *&v163.f64[0] = vshr_n_s32(vshl_n_s32(*&v163.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v163.f64[0]);
        v156.i64[1] = SHIDWORD(v163.f64[0]);
        v165 = (v151 + 128);
        vst4q_f64(v165, v244);
        v244.val[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v163.f64[0]) = BYTE6(v242.val[2].f64[0]);
        HIDWORD(v163.f64[0]) = HIBYTE(v242.val[2].f64[0]);
        v244.val[0] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v164));
        v164.i32[0] = BYTE6(v242.val[3].f64[0]);
        v164.i32[1] = HIBYTE(v242.val[3].f64[0]);
        *v164.i8 = vshr_n_s32(vshl_n_s32(*v164.i8, 0x18uLL), 0x18uLL);
        v156.i64[0] = v164.i32[0];
        v156.i64[1] = v164.i32[1];
        v244.val[3] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        *&v163.f64[0] = vshr_n_s32(vshl_n_s32(*&v163.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v163.f64[0]);
        v156.i64[1] = SHIDWORD(v163.f64[0]);
        v244.val[2] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v163.f64[0]) = v153;
        HIDWORD(v163.f64[0]) = BYTE1(v153);
        *&v163.f64[0] = vshr_n_s32(vshl_n_s32(*&v163.f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v163.f64[0]);
        v156.i64[1] = SHIDWORD(v163.f64[0]);
        v166 = (v151 + 192);
        vst4q_f64(v166, v244);
        v244.val[0] = vcvtq_f64_s64(v156);
        *&v163.f64[0] = vextq_s8(v242.val[1], v242.val[1], 8uLL).u64[0];
        v164.i32[0] = LOBYTE(v163.f64[0]);
        v164.i32[1] = BYTE1(v163.f64[0]);
        *v164.i8 = vshr_n_s32(vshl_n_s32(*v164.i8, 0x18uLL), 0x18uLL);
        v156.i64[0] = v164.i32[0];
        v156.i64[1] = v164.i32[1];
        v167 = vextq_s8(v242.val[2], v242.val[2], 8uLL).u64[0];
        v164.i64[0] = vextq_s8(v242.val[3], v242.val[3], 8uLL).u64[0];
        v242.val[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v244.val[1].f64[0]) = BYTE2(v153);
        HIDWORD(v244.val[1].f64[0]) = BYTE3(v153);
        *&v244.val[1].f64[0] = vshr_n_s32(vshl_n_s32(*&v244.val[1].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v244.val[1].f64[0]);
        v156.i64[1] = SHIDWORD(v244.val[1].f64[0]);
        v244.val[1] = vcvtq_f64_s64(v156);
        v242.val[0] = vmlaq_f64(v144, v143, v244.val[0]);
        LODWORD(v244.val[0].f64[0]) = v164.u8[0];
        HIDWORD(v244.val[0].f64[0]) = v164.u8[1];
        *&v244.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v244.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v244.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v244.val[0].f64[0]);
        v242.val[3] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v244.val[0].f64[0]) = v167;
        HIDWORD(v244.val[0].f64[0]) = BYTE1(v167);
        *&v244.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v244.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v244.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v244.val[0].f64[0]);
        v242.val[2] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v244.val[0].f64[0]) = BYTE2(v163.f64[0]);
        HIDWORD(v244.val[0].f64[0]) = BYTE3(v163.f64[0]);
        *&v244.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v244.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v244.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v244.val[0].f64[0]);
        v168 = (v151 + 256);
        vst4q_f64(v168, v242);
        v242.val[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v244.val[0].f64[0]) = v164.u8[2];
        HIDWORD(v244.val[0].f64[0]) = v164.u8[3];
        v242.val[0] = vmlaq_f64(v144, v143, v244.val[1]);
        *&v244.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v244.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v244.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v244.val[0].f64[0]);
        v242.val[3] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v244.val[0].f64[0]) = BYTE2(v167);
        HIDWORD(v244.val[0].f64[0]) = BYTE3(v167);
        *&v244.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v244.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v244.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v244.val[0].f64[0]);
        v242.val[2] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v244.val[0].f64[0]) = BYTE4(v163.f64[0]);
        HIDWORD(v244.val[0].f64[0]) = BYTE5(v163.f64[0]);
        v169 = (v151 + 320);
        vst4q_f64(v169, v242);
        *&v242.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v244.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v242.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v242.val[0].f64[0]);
        v242.val[2] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v242.val[0].f64[0]) = BYTE4(v153);
        HIDWORD(v242.val[0].f64[0]) = BYTE5(v153);
        *&v242.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v242.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v242.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v242.val[0].f64[0]);
        v242.val[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v242.val[0].f64[0]) = v164.u8[4];
        HIDWORD(v242.val[0].f64[0]) = v164.u8[5];
        *&v242.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v242.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v242.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v242.val[0].f64[0]);
        v244.val[0] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        LODWORD(v242.val[0].f64[0]) = BYTE4(v167);
        HIDWORD(v242.val[0].f64[0]) = BYTE5(v167);
        *&v242.val[0].f64[0] = vshr_n_s32(vshl_n_s32(*&v242.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = SLODWORD(v242.val[0].f64[0]);
        v156.i64[1] = SHIDWORD(v242.val[0].f64[0]);
        v242.val[3] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        v170 = (v151 + 384);
        vst4q_f64(v170, *(&v242 + 16));
        LODWORD(v242.val[0].f64[0]) = BYTE6(v153);
        HIDWORD(v242.val[0].f64[0]) = HIBYTE(v153);
        v171 = vshr_n_s32(vshl_n_s32(*&v242.val[0].f64[0], 0x18uLL), 0x18uLL);
        v156.i64[0] = v171.i32[0];
        v156.i64[1] = v171.i32[1];
        v242.val[0] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        v171.i32[0] = BYTE6(v163.f64[0]);
        v171.i32[1] = HIBYTE(v163.f64[0]);
        v172 = vshr_n_s32(vshl_n_s32(v171, 0x18uLL), 0x18uLL);
        v156.i64[0] = v172.i32[0];
        v156.i64[1] = v172.i32[1];
        v242.val[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        v172.i32[0] = BYTE6(v167);
        v172.i32[1] = HIBYTE(v167);
        v173 = vshr_n_s32(vshl_n_s32(v172, 0x18uLL), 0x18uLL);
        v156.i64[0] = v173.i32[0];
        v156.i64[1] = v173.i32[1];
        v242.val[2] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v156));
        v173.i32[0] = v164.u8[6];
        v173.i32[1] = v164.u8[7];
        v174 = vshr_n_s32(vshl_n_s32(v173, 0x18uLL), 0x18uLL);
        v156.i64[0] = v174.i32[0];
        v156.i64[1] = v174.i32[1];
        v175 = vcvtq_f64_s64(v156);
        v242.val[3] = vmlaq_f64(v144, v143, v175);
        v176 = (v151 + 448);
        vst4q_f64(v176, v242);
        v152 = 4 * (v138 & 0x3FFFFFF0);
        if (v138 == (v138 & 0x3FFFFFF0))
        {
          goto LABEL_62;
        }
      }

      f64 = v147[v152 / 2].f64;
      do
      {
        v178 = v12 + result[v152 + 1] * *&v11;
        *(f64 - 3) = v12 + result[v152] * *&v11;
        v179 = v151 + 8 * v152;
        *(v179 + 8) = v178;
        v175.f64[0] = v12 + result[v152 + 2] * *&v11;
        v180 = v12 + result[v152 + 3] * *&v11;
        *(v179 + 16) = v175.f64[0];
        *f64 = v180;
        f64 += 4;
        v152 += 4;
      }

      while (v152 <= v14);
LABEL_62:
      if (v10 > v152)
      {
        v181 = v152;
        if (v134 < 4)
        {
          v182 = v152;
          goto LABEL_77;
        }

        if (v151 + 8 * v152 < &v140[v130 * v9 + v152] && &result[v152] < &a5->f64[v152 + v10] + v150 + (a6 & 0xFFFFFFFFFFFFFFF8) * v130)
        {
          v182 = v152;
          goto LABEL_77;
        }

        if (v134 >= 0x10)
        {
          v184 = 8 * v152;
          v185 = v152;
          v186 = v134 & 0xFFFFFFFFFFFFFFF0;
          do
          {
            v187 = *&result[v185];
            v188.i32[0] = v187.u8[6];
            v188.i32[1] = v187.u8[7];
            v189.i32[0] = v187.u8[4];
            v189.i32[1] = v187.u8[5];
            v190 = vshr_n_s32(vshl_n_s32(v188, 0x18uLL), 0x18uLL);
            v191.i32[0] = v187.u8[2];
            v192 = vshr_n_s32(vshl_n_s32(v189, 0x18uLL), 0x18uLL);
            v191.i32[1] = v187.u8[3];
            v193.i64[0] = v190.i32[0];
            v193.i64[1] = v190.i32[1];
            v194 = v193;
            v195.i32[0] = v187.u8[0];
            v193.i64[0] = v192.i32[0];
            v193.i64[1] = v192.i32[1];
            v196 = v193;
            v197 = vshr_n_s32(vshl_n_s32(v191, 0x18uLL), 0x18uLL);
            v195.i32[1] = v187.u8[1];
            v198 = vshr_n_s32(vshl_n_s32(v195, 0x18uLL), 0x18uLL);
            v193.i64[0] = v197.i32[0];
            v193.i64[1] = v197.i32[1];
            v199 = v193;
            v193.i64[0] = v198.i32[0];
            v193.i64[1] = v198.i32[1];
            v200 = vextq_s8(v187, v187, 8uLL).u64[0];
            v201.i32[0] = BYTE6(v200);
            v202 = vcvtq_f64_s64(v194);
            v201.i32[1] = HIBYTE(v200);
            *v194.i8 = vshl_n_s32(v201, 0x18uLL);
            v201.i32[0] = BYTE4(v200);
            *v194.i8 = vshr_n_s32(*v194.i8, 0x18uLL);
            v201.i32[1] = BYTE5(v200);
            v203 = vshr_n_s32(vshl_n_s32(v201, 0x18uLL), 0x18uLL);
            v204 = vcvtq_f64_s64(v193);
            v205.i32[0] = BYTE2(v200);
            v193.i64[0] = v194.i32[0];
            v193.i64[1] = v194.i32[1];
            v206 = v193;
            v193.i64[0] = v203.i32[0];
            v193.i64[1] = v203.i32[1];
            v205.i32[1] = BYTE3(v200);
            v207 = vshr_n_s32(vshl_n_s32(v205, 0x18uLL), 0x18uLL);
            v208.i32[0] = v200;
            v209 = BYTE1(v200);
            v210 = vcvtq_f64_s64(v193);
            v193.i64[0] = v207.i32[0];
            v193.i64[1] = v207.i32[1];
            v208.i32[1] = v209;
            v211 = vshr_n_s32(vshl_n_s32(v208, 0x18uLL), 0x18uLL);
            v212 = vcvtq_f64_s64(v193);
            v193.i64[0] = v211.i32[0];
            v193.i64[1] = v211.i32[1];
            v213 = vmlaq_f64(v144, v143, v204);
            v214 = vmlaq_f64(v144, v143, vcvtq_f64_s64(v199));
            v215 = vmlaq_f64(v144, v143, vcvtq_f64_s64(v196));
            v216 = vmlaq_f64(v144, v143, v202);
            v217 = (v151 + v184);
            v175 = vmlaq_f64(v144, v143, vcvtq_f64_s64(v206));
            v217[2] = v215;
            v217[3] = v216;
            *v217 = v213;
            v217[1] = v214;
            v217[6] = vmlaq_f64(v144, v143, v210);
            v217[7] = v175;
            v217[4] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v193));
            v217[5] = vmlaq_f64(v144, v143, v212);
            v185 += 16;
            v184 += 128;
            v186 -= 16;
          }

          while (v186);
          if (v134 == v145)
          {
            goto LABEL_56;
          }

          v183 = v134 & 0xFFFFFFFFFFFFFFF0;
          if ((v134 & 0xC) == 0)
          {
            v182 = v181 + v145;
            do
            {
LABEL_77:
              *(v151 + 8 * v182) = v12 + result[v182] * *&v11;
              ++v182;
            }

            while (v10 != v182);
            goto LABEL_56;
          }
        }

        else
        {
          v183 = 0;
        }

        v182 = v181 + v134 - (v10 & 3);
        v218 = v149 + v183;
        v219 = v183 + v181;
        v220 = 8 * v219;
        do
        {
          LODWORD(v175.f64[0]) = *&result[v219];
          v221 = vmovl_u16(*&vmovl_u8(*&v175.f64[0]));
          v222 = vshr_n_s32(vshl_n_s32(*v221.i8, 0x18uLL), 0x18uLL);
          v223.i64[0] = v222.i32[0];
          v223.i64[1] = v222.i32[1];
          v224 = vcvtq_f64_s64(v223);
          *v221.i8 = vshr_n_s32(vshl_n_s32(*&vextq_s8(v221, v221, 8uLL), 0x18uLL), 0x18uLL);
          v223.i64[0] = v221.i32[0];
          v223.i64[1] = v221.i32[1];
          v175 = vmlaq_f64(v144, v143, v224);
          v225 = (v151 + v220);
          *v225 = v175;
          v225[1] = vmlaq_f64(v144, v143, vcvtq_f64_s64(v223));
          v219 += 4;
          v220 += 32;
          v218 += 4;
        }

        while (v218);
        if ((v10 & 3) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_77;
      }

LABEL_56:
      result += v9;
      v151 += v148;
      ++v130;
      v147 = (v147 + v148);
      if (!--v8)
      {
        return result;
      }
    }
  }

  if (v10 >= 1)
  {
    v16 = result + 2;
    v17 = a5[1].f64;
    do
    {
      *(v17 - 2) = v12 + *(v16 - 2) * *&v11;
      if (v10 != 1)
      {
        *(v17 - 1) = v12 + *(v16 - 1) * *&v11;
        if (v10 != 2)
        {
          *v17 = v12 + *v16 * *&v11;
        }
      }

      v16 += a2;
      v17 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint16x8_t *sub_1002241C0(uint16x8_t *result, unint64_t a2, double a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8, uint64_t a9, uint64_t a10, float64x2_t *a11, unint64_t a12, unsigned int *a13, double *a14)
{
  v14 = a13[1];
  if (!v14)
  {
    return result;
  }

  v15 = *a13;
  v16 = *a14;
  v17 = a14[1];
  v18 = a2 >> 1;
  v19 = a12 >> 3;
  v20 = v14 - 1;
  if (v15 < 8)
  {
    if (v15 < 4)
    {
      if (v15 >= 1)
      {
        v21 = &result->i16[2];
        v22 = a11 + 1;
        do
        {
          LOWORD(a5) = *(v21 - 2);
          a5 = v17 + *&a5 * *&v16;
          v22[-1].f64[0] = a5;
          if (v15 != 1)
          {
            LOWORD(a5) = *(v21 - 1);
            a5 = v17 + *&a5 * *&v16;
            v22[-1].f64[1] = a5;
            if (v15 != 2)
            {
              LOWORD(a5) = *v21;
              a5 = v17 + *&a5 * *&v16;
              v22->f64[0] = a5;
            }
          }

          v21 += v18;
          v22 = (v22 + 8 * v19);
          --v14;
        }

        while (v14);
      }

      return result;
    }

    v99 = (v15 - 4);
    v100 = (v99 & 0x7FFFFFFC) + 5;
    if (v100 <= v15)
    {
      v100 = v15;
    }

    v101 = v100 - (v99 & 0x7FFFFFFC) - 4;
    v102 = (v99 >> 2) + 1;
    v103 = vdupq_lane_s64(v16, 0);
    v104 = vdupq_lane_s64(*&v17, 0);
    v105 = 8 * v19;
    v106 = 2 * v18;
    v107 = (v99 >> 2) & 0x1FFFFFFF;
    v108 = 8 * v107 + 8;
    v109 = 32 * v107 + 32;
    while (1)
    {
      v110 = v20;
      if (v99 < 0x1C)
      {
        break;
      }

      v112 = v102 & 0x3FFFFFF8;
      v113 = result;
      v114 = a11;
      do
      {
        v164 = vld4q_s16(v113->i16);
        v113 += 4;
        v115 = vmovl_u16(*&v164.val[0].f64[0]);
        v116.i64[0] = v115.u32[0];
        v116.i64[1] = v115.u32[1];
        v117 = vcvtq_f64_u64(v116);
        v116.i64[0] = v115.u32[2];
        v116.i64[1] = v115.u32[3];
        v118 = vcvtq_f64_u64(v116);
        v119 = vmovl_high_u16(v164.val[0]);
        v116.i64[0] = v119.u32[0];
        v116.i64[1] = v119.u32[1];
        a7 = vcvtq_f64_u64(v116);
        v116.i64[0] = v119.u32[2];
        v116.i64[1] = v119.u32[3];
        v120 = vcvtq_f64_u64(v116);
        v121 = vmovl_u16(*&v164.val[1].f64[0]);
        v116.i64[0] = v121.u32[0];
        v116.i64[1] = v121.u32[1];
        v122 = vcvtq_f64_u64(v116);
        v116.i64[0] = v121.u32[2];
        v116.i64[1] = v121.u32[3];
        v123 = vcvtq_f64_u64(v116);
        v124 = vmovl_high_u16(v164.val[1]);
        v116.i64[0] = v124.u32[0];
        v116.i64[1] = v124.u32[1];
        v125 = vcvtq_f64_u64(v116);
        v116.i64[0] = v124.u32[2];
        v116.i64[1] = v124.u32[3];
        v126 = vcvtq_f64_u64(v116);
        v127 = vmovl_u16(*&v164.val[2].f64[0]);
        v116.i64[0] = v127.u32[0];
        v116.i64[1] = v127.u32[1];
        v128 = vcvtq_f64_u64(v116);
        v116.i64[0] = v127.u32[2];
        v116.i64[1] = v127.u32[3];
        v129 = vcvtq_f64_u64(v116);
        v130 = vmovl_high_u16(v164.val[2]);
        v131 = vmovl_u16(*&v164.val[3].f64[0]);
        v116.i64[0] = v131.u32[0];
        v116.i64[1] = v131.u32[1];
        v132 = vmovl_high_u16(v164.val[3]);
        v164.val[1] = vmlaq_f64(v104, v103, v122);
        v164.val[0] = vmlaq_f64(v104, v103, v117);
        v164.val[3] = vmlaq_f64(v104, v103, vcvtq_f64_u64(v116));
        v164.val[2] = vmlaq_f64(v104, v103, v128);
        v133 = v114;
        vst4q_f64(v133, v164);
        v133 += 8;
        v134 = vmlaq_f64(v104, v103, v120);
        v135 = vmlaq_f64(v104, v103, v125);
        v161.val[1] = vmlaq_f64(v104, v103, v123);
        v116.i64[0] = v130.u32[0];
        v116.i64[1] = v130.u32[1];
        v136 = vcvtq_f64_u64(v116);
        v116.i64[0] = v130.u32[2];
        v116.i64[1] = v130.u32[3];
        v137 = vcvtq_f64_u64(v116);
        v116.i64[0] = v131.u32[2];
        v116.i64[1] = v131.u32[3];
        v138 = vcvtq_f64_u64(v116);
        v161.val[0] = vmlaq_f64(v104, v103, v118);
        v116.i64[0] = v132.u32[0];
        v116.i64[1] = v132.u32[1];
        a8 = vcvtq_f64_u64(v116);
        v116.i64[0] = v132.u32[2];
        v116.i64[1] = v132.u32[3];
        v161.val[3] = vmlaq_f64(v104, v103, v138);
        v161.val[2] = vmlaq_f64(v104, v103, v129);
        vst4q_f64(v133, v161);
        v164.val[3] = vmlaq_f64(v104, v103, a7);
        v139 = vmlaq_f64(v104, v103, a8);
        v140 = vmlaq_f64(v104, v103, v136);
        f64 = v114[8].f64;
        vst4q_f64(f64, *(&v164 + 48));
        v164.val[0] = vmlaq_f64(v104, v103, v126);
        v164.val[1] = vmlaq_f64(v104, v103, v137);
        v164.val[2] = vmlaq_f64(v104, v103, vcvtq_f64_u64(v116));
        v142 = v114[12].f64;
        vst4q_f64(v142, v164);
        v114 += 16;
        v112 -= 8;
      }

      while (v112);
      v111 = 4 * (v102 & 0x3FFFFFF8);
      if (v102 != (v102 & 0x3FFFFFF8))
      {
        goto LABEL_40;
      }

LABEL_42:
      if (v15 > v111)
      {
        v148 = (v99 & 0x7FFFFFFC) + 4;
        v149 = v109;
        v150 = v108;
        v151 = v101 & 0xFFFFFFFFFFFFFFF8;
        if (v101 < 8)
        {
          goto LABEL_50;
        }

        do
        {
          v152 = *(result + v150);
          v153 = vmovl_high_u16(v152);
          v154.i64[0] = v153.u32[2];
          v154.i64[1] = v153.u32[3];
          v155 = vcvtq_f64_u64(v154);
          v154.i64[0] = v153.u32[0];
          v154.i64[1] = v153.u32[1];
          v156 = vcvtq_f64_u64(v154);
          v157 = vmovl_u16(*v152.i8);
          v154.i64[0] = v157.u32[2];
          v154.i64[1] = v157.u32[3];
          v158 = vcvtq_f64_u64(v154);
          v154.i64[0] = v157.u32[0];
          v154.i64[1] = v157.u32[1];
          a7 = vmlaq_f64(v104, v103, v156);
          a8 = vmlaq_f64(v104, v103, v155);
          v159 = (a11 + v149);
          v159[2] = a7;
          v159[3] = a8;
          *v159 = vmlaq_f64(v104, v103, vcvtq_f64_u64(v154));
          v159[1] = vmlaq_f64(v104, v103, v158);
          v150 += 16;
          v149 += 64;
          v151 -= 8;
        }

        while (v151);
        v148 = (v99 & 0x7FFFFFFC) + 4 + (v101 & 0xFFFFFFFFFFFFFFF8);
        if (v101 != (v101 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_50:
          do
          {
            LOWORD(a7.f64[0]) = result->i16[v148];
            a7.f64[0] = v17 + *&a7.f64[0] * *&v16;
            a11->f64[v148++] = a7.f64[0];
          }

          while (v148 < v15);
        }
      }

      v20 = v110 - 1;
      a11 = (a11 + v105);
      result = (result + v106);
      if (!v110)
      {
        return result;
      }
    }

    v111 = 0;
LABEL_40:
    v143 = 2 * v111 + 6;
    v144 = &a11[v111 / 2];
    do
    {
      LOWORD(a7.f64[0]) = *(&result->i16[-3] + v143);
      v145 = v17 + *&a7.f64[0] * *&v16;
      v146 = &result->i8[2 * v111];
      LOWORD(a8.f64[0]) = *(v146 + 1);
      v147 = v17 + *&a8.f64[0] * *&v16;
      v144->f64[0] = v145;
      v144->f64[1] = v147;
      LOWORD(v145) = *(v146 + 2);
      a7.f64[0] = v17 + *&v145 * *&v16;
      LOWORD(v147) = *(result->i16 + v143);
      a8.f64[0] = v17 + *&v147 * *&v16;
      v144[1].f64[0] = a7.f64[0];
      v144[1].f64[1] = a8.f64[0];
      v111 += 4;
      v143 += 8;
      v144 += 2;
    }

    while (v111 <= v99);
    goto LABEL_42;
  }

  v23 = vdupq_lane_s64(*&v17, 0);
  v24 = (v15 - 8);
  v25 = (v15 - 4);
  v26 = (v24 & 0xFFFFFFF8) + 8;
  v27 = v26 | 4;
  if ((v26 | 4uLL) <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  v28 = ~v26 + v27;
  v29 = (v28 >> 2) + 1;
  v30 = vdupq_lane_s64(v16, 0);
  v31 = vdupq_lane_s64(*&v17, 0);
  v32 = a11 + 2;
  v33 = 8 * v19;
  v34 = 2 * v18;
  v35 = &a11[1].f64[1];
  v36 = &result->i8[4];
  do
  {
    v37 = 0;
    v38 = 0;
    v39 = v20;
    v40 = 8;
    v41 = result;
    v42 = v32;
    do
    {
      v43 = v40;
      v44 = *v41++;
      v45 = vmovl_u16(*v44.i8);
      v46 = vmovl_high_u16(v44);
      v47.i64[0] = v45.u32[0];
      v47.i64[1] = v45.u32[1];
      v48 = vaddq_f64(v23, vmulq_n_f64(vcvtq_f64_u64(v47), *&v16));
      v47.i64[0] = v45.u32[2];
      v47.i64[1] = v45.u32[3];
      v49 = vaddq_f64(v23, vmulq_n_f64(vcvtq_f64_u64(v47), *&v16));
      v47.i64[0] = v46.u32[0];
      v47.i64[1] = v46.u32[1];
      v50 = vaddq_f64(v23, vmulq_n_f64(vcvtq_f64_u64(v47), *&v16));
      v47.i64[0] = v46.u32[2];
      v47.i64[1] = v46.u32[3];
      v51 = vaddq_f64(v23, vmulq_n_f64(vcvtq_f64_u64(v47), *&v16));
      v42[-2] = v48;
      v42[-1] = v49;
      v38 += 8;
      *v42 = v50;
      v42[1] = v51;
      v42 += 4;
      v37 += 0x800000000;
      v40 += 8;
    }

    while (v38 <= v24);
    if (v25 >= v38)
    {
      v52 = v37 >> 32;
      if (v28 <= 0x1B)
      {
        goto LABEL_22;
      }

      v52 += 4 * (v29 & 0x7FFFFFFFFFFFFFF8);
      v53 = v43;
      v54 = v43;
      v55 = v29 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v56 = &result->i16[v54];
        v162 = vld4q_s16(v56);
        v57 = vmovl_u16(*v162.val[0].i8);
        v58.i64[0] = v57.u32[0];
        v58.i64[1] = v57.u32[1];
        v59 = vcvtq_f64_u64(v58);
        v58.i64[0] = v57.u32[2];
        v58.i64[1] = v57.u32[3];
        v60 = vcvtq_f64_u64(v58);
        v61 = vmovl_u16(*v162.val[1].i8);
        v58.i64[0] = v61.u32[0];
        v58.i64[1] = v61.u32[1];
        v62 = vcvtq_f64_u64(v58);
        v58.i64[0] = v61.u32[2];
        v58.i64[1] = v61.u32[3];
        v63 = vcvtq_f64_u64(v58);
        v64 = vmovl_u16(*v162.val[2].i8);
        v58.i64[0] = v64.u32[0];
        v58.i64[1] = v64.u32[1];
        v65 = vcvtq_f64_u64(v58);
        v58.i64[0] = v64.u32[2];
        v58.i64[1] = v64.u32[3];
        v66 = vcvtq_f64_u64(v58);
        v67 = vmovl_u16(*v162.val[3].i8);
        v58.i64[0] = v67.u32[0];
        v58.i64[1] = v67.u32[1];
        v68 = vcvtq_f64_u64(v58);
        v58.i64[0] = v67.u32[2];
        v58.i64[1] = v67.u32[3];
        v69 = &a11->f64[v53];
        v163.val[1] = vmlaq_f64(v31, v30, v63);
        v163.val[0] = vmlaq_f64(v31, v30, v60);
        v163.val[3] = vmlaq_f64(v31, v30, vcvtq_f64_u64(v58));
        v163.val[2] = vmlaq_f64(v31, v30, v66);
        v160.val[1] = vmlaq_f64(v31, v30, v62);
        v160.val[0] = vmlaq_f64(v31, v30, v59);
        v160.val[3] = vmlaq_f64(v31, v30, v68);
        v160.val[2] = vmlaq_f64(v31, v30, v65);
        v70 = &a11[8].f64[v53];
        v71 = &a11[12].f64[v53];
        vst4q_f64(v69, v160);
        v69 += 8;
        vst4q_f64(v69, v163);
        v72 = vmovl_high_u16(v162.val[0]);
        v58.i64[0] = v72.u32[0];
        v58.i64[1] = v72.u32[1];
        v49 = vcvtq_f64_u64(v58);
        v58.i64[0] = v72.u32[2];
        v58.i64[1] = v72.u32[3];
        v51 = vcvtq_f64_u64(v58);
        v73 = vmovl_high_u16(v162.val[1]);
        v58.i64[0] = v73.u32[0];
        v58.i64[1] = v73.u32[1];
        v74 = vcvtq_f64_u64(v58);
        v58.i64[0] = v73.u32[2];
        v58.i64[1] = v73.u32[3];
        v48 = vcvtq_f64_u64(v58);
        v75 = vmovl_high_u16(v162.val[2]);
        v58.i64[0] = v75.u32[0];
        v58.i64[1] = v75.u32[1];
        v76 = vcvtq_f64_u64(v58);
        v58.i64[0] = v75.u32[2];
        v58.i64[1] = v75.u32[3];
        v77 = vcvtq_f64_u64(v58);
        v162.val[0] = vmovl_high_u16(v162.val[3]);
        v58.i64[0] = v162.val[0].u32[0];
        v58.i64[1] = v162.val[0].u32[1];
        v162.val[1] = vcvtq_f64_u64(v58);
        v58.i64[0] = v162.val[0].u32[2];
        v58.i64[1] = v162.val[0].u32[3];
        v78 = vmlaq_f64(v31, v30, v51);
        v79 = vmlaq_f64(v31, v30, v48);
        v163.val[0] = vmlaq_f64(v31, v30, v77);
        v163.val[1] = vmlaq_f64(v31, v30, vcvtq_f64_u64(v58));
        v163.val[3] = vmlaq_f64(v31, v30, v74);
        v163.val[2] = vmlaq_f64(v31, v30, v49);
        v80 = vmlaq_f64(v31, v30, v162.val[1]);
        v81 = vmlaq_f64(v31, v30, v76);
        vst4q_f64(v70, *(&v163 + 32));
        vst4q_f64(v71, v163);
        v53 += 32;
        v54 += 32;
        v55 -= 8;
      }

      while (v55);
      if (v29 != (v29 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_22:
        v82 = &v35[8 * v52];
        v83 = &v36[2 * v52];
        do
        {
          LOWORD(v51.f64[0]) = *(v83 - 2);
          v84 = v17 + *&v51.f64[0] * *&v16;
          LOWORD(v49.f64[0]) = result->i16[v52 + 1];
          v49.f64[0] = v17 + *&v49.f64[0] * *&v16;
          *(v82 - 3) = v84;
          v85 = &a11->f64[v52];
          LOWORD(v84) = *v83;
          v51.f64[0] = v17 + *&v84 * *&v16;
          LOWORD(v48.f64[0]) = *(v83 + 1);
          v48.f64[0] = v17 + *&v48.f64[0] * *&v16;
          *(v85 + 1) = *&v49.f64[0];
          *(v85 + 2) = *&v51.f64[0];
          *v82 = v48.f64[0];
          v82 += 4;
          v52 += 4;
          v83 += 8;
        }

        while (v52 <= v25);
      }
    }

    else
    {
      LODWORD(v52) = v38;
    }

    if (v52 < v15)
    {
      v86 = v52;
      v87 = v15 - v52;
      v52 = v52;
      if (v87 <= 7)
      {
        goto LABEL_51;
      }

      v52 = (v87 & 0xFFFFFFFFFFFFFFF8) + v52;
      v88 = 2 * v86;
      v89 = 8 * v86;
      v90 = v87 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v91 = *(result + v88);
        v92 = vmovl_high_u16(v91);
        v93.i64[0] = v92.u32[2];
        v93.i64[1] = v92.u32[3];
        v94 = vcvtq_f64_u64(v93);
        v93.i64[0] = v92.u32[0];
        v93.i64[1] = v92.u32[1];
        v95 = vcvtq_f64_u64(v93);
        v96 = vmovl_u16(*v91.i8);
        v93.i64[0] = v96.u32[2];
        v93.i64[1] = v96.u32[3];
        v97 = vcvtq_f64_u64(v93);
        v93.i64[0] = v96.u32[0];
        v93.i64[1] = v96.u32[1];
        v51 = vmlaq_f64(v31, v30, v95);
        v98 = (a11 + v89);
        v98[2] = v51;
        v98[3] = vmlaq_f64(v31, v30, v94);
        *v98 = vmlaq_f64(v31, v30, vcvtq_f64_u64(v93));
        v98[1] = vmlaq_f64(v31, v30, v97);
        v88 += 16;
        v89 += 64;
        v90 -= 8;
      }

      while (v90);
      if (v87 != (v87 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_51:
        do
        {
          LOWORD(v51.f64[0]) = result->i16[v52];
          v51.f64[0] = v17 + *&v51.f64[0] * *&v16;
          a11->f64[v52++] = v51.f64[0];
        }

        while (v15 != v52);
      }
    }

    v20 = v39 - 1;
    v32 = (v32 + v33);
    result = (result + v34);
    a11 = (a11 + v33);
    v35 += v33;
    v36 += v34;
  }

  while (v39);
  return result;
}

int16x8_t *sub_100224928(int16x8_t *result, unint64_t a2, double a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8, uint64_t a9, uint64_t a10, float64x2_t *a11, unint64_t a12, unsigned int *a13, double *a14)
{
  v14 = a13[1];
  if (!v14)
  {
    return result;
  }

  v15 = *a13;
  v16 = *a14;
  v17 = a14[1];
  v18 = a2 >> 1;
  v19 = a12 >> 3;
  v20 = v14 - 1;
  if (v15 < 8)
  {
    if (v15 < 4)
    {
      if (v15 >= 1)
      {
        v21 = &result->i16[2];
        v22 = a11 + 1;
        do
        {
          LOWORD(a5) = *(v21 - 2);
          a5 = v17 + vmovl_s16(*&a5).i32[0] * *&v16;
          v22[-1].f64[0] = a5;
          if (v15 != 1)
          {
            LOWORD(a5) = *(v21 - 1);
            a5 = v17 + vmovl_s16(*&a5).i32[0] * *&v16;
            v22[-1].f64[1] = a5;
            if (v15 != 2)
            {
              LOWORD(a5) = *v21;
              a5 = v17 + vmovl_s16(*&a5).i32[0] * *&v16;
              v22->f64[0] = a5;
            }
          }

          v21 += v18;
          v22 = (v22 + 8 * v19);
          --v14;
        }

        while (v14);
      }

      return result;
    }

    v98 = (v15 - 4);
    v99 = (v98 & 0x7FFFFFFC) + 5;
    if (v99 <= v15)
    {
      v99 = v15;
    }

    v100 = v99 - (v98 & 0x7FFFFFFC) - 4;
    v101 = (v98 >> 2) + 1;
    v102 = vdupq_lane_s64(v16, 0);
    v103 = vdupq_lane_s64(*&v17, 0);
    v104 = 8 * v19;
    v105 = 2 * v18;
    v106 = (v98 >> 2) & 0x1FFFFFFF;
    v107 = 8 * v106 + 8;
    v108 = 32 * v106 + 32;
    while (1)
    {
      v109 = v20;
      if (v98 < 0x1C)
      {
        break;
      }

      v111 = v101 & 0x3FFFFFF8;
      v112 = result;
      v113 = a11;
      do
      {
        v163 = vld4q_s16(v112->i16);
        v112 += 4;
        v114 = vmovl_s16(*&v163.val[0].f64[0]);
        v115.i64[0] = v114.i32[0];
        v115.i64[1] = v114.i32[1];
        v116 = vcvtq_f64_s64(v115);
        v115.i64[0] = v114.i32[2];
        v115.i64[1] = v114.i32[3];
        v117 = vcvtq_f64_s64(v115);
        v118 = vmovl_high_s16(v163.val[0]);
        v115.i64[0] = v118.i32[0];
        v115.i64[1] = v118.i32[1];
        a7 = vcvtq_f64_s64(v115);
        v115.i64[0] = v118.i32[2];
        v115.i64[1] = v118.i32[3];
        v119 = vcvtq_f64_s64(v115);
        v120 = vmovl_s16(*&v163.val[1].f64[0]);
        v115.i64[0] = v120.i32[0];
        v115.i64[1] = v120.i32[1];
        v121 = vcvtq_f64_s64(v115);
        v115.i64[0] = v120.i32[2];
        v115.i64[1] = v120.i32[3];
        v122 = vcvtq_f64_s64(v115);
        v123 = vmovl_high_s16(v163.val[1]);
        v115.i64[0] = v123.i32[0];
        v115.i64[1] = v123.i32[1];
        v124 = vcvtq_f64_s64(v115);
        v115.i64[0] = v123.i32[2];
        v115.i64[1] = v123.i32[3];
        v125 = vcvtq_f64_s64(v115);
        v126 = vmovl_s16(*&v163.val[2].f64[0]);
        v115.i64[0] = v126.i32[0];
        v115.i64[1] = v126.i32[1];
        v127 = vcvtq_f64_s64(v115);
        v115.i64[0] = v126.i32[2];
        v115.i64[1] = v126.i32[3];
        v128 = vcvtq_f64_s64(v115);
        v129 = vmovl_high_s16(v163.val[2]);
        v130 = vmovl_s16(*&v163.val[3].f64[0]);
        v115.i64[0] = v130.i32[0];
        v115.i64[1] = v130.i32[1];
        v131 = vmovl_high_s16(v163.val[3]);
        v163.val[1] = vmlaq_f64(v103, v102, v121);
        v163.val[0] = vmlaq_f64(v103, v102, v116);
        v163.val[3] = vmlaq_f64(v103, v102, vcvtq_f64_s64(v115));
        v163.val[2] = vmlaq_f64(v103, v102, v127);
        v132 = v113;
        vst4q_f64(v132, v163);
        v132 += 8;
        v133 = vmlaq_f64(v103, v102, v119);
        v134 = vmlaq_f64(v103, v102, v124);
        v160.val[1] = vmlaq_f64(v103, v102, v122);
        v115.i64[0] = v129.i32[0];
        v115.i64[1] = v129.i32[1];
        v135 = vcvtq_f64_s64(v115);
        v115.i64[0] = v129.i32[2];
        v115.i64[1] = v129.i32[3];
        v136 = vcvtq_f64_s64(v115);
        v115.i64[0] = v130.i32[2];
        v115.i64[1] = v130.i32[3];
        v137 = vcvtq_f64_s64(v115);
        v160.val[0] = vmlaq_f64(v103, v102, v117);
        v115.i64[0] = v131.i32[0];
        v115.i64[1] = v131.i32[1];
        a8 = vcvtq_f64_s64(v115);
        v115.i64[0] = v131.i32[2];
        v115.i64[1] = v131.i32[3];
        v160.val[3] = vmlaq_f64(v103, v102, v137);
        v160.val[2] = vmlaq_f64(v103, v102, v128);
        vst4q_f64(v132, v160);
        v163.val[3] = vmlaq_f64(v103, v102, a7);
        v138 = vmlaq_f64(v103, v102, a8);
        v139 = vmlaq_f64(v103, v102, v135);
        f64 = v113[8].f64;
        vst4q_f64(f64, *(&v163 + 48));
        v163.val[0] = vmlaq_f64(v103, v102, v125);
        v163.val[1] = vmlaq_f64(v103, v102, v136);
        v163.val[2] = vmlaq_f64(v103, v102, vcvtq_f64_s64(v115));
        v141 = v113[12].f64;
        vst4q_f64(v141, v163);
        v113 += 16;
        v111 -= 8;
      }

      while (v111);
      v110 = 4 * (v101 & 0x3FFFFFF8);
      if (v101 != (v101 & 0x3FFFFFF8))
      {
        goto LABEL_40;
      }

LABEL_42:
      if (v15 > v110)
      {
        v147 = (v98 & 0x7FFFFFFC) + 4;
        v148 = v108;
        v149 = v107;
        v150 = v100 & 0xFFFFFFFFFFFFFFF8;
        if (v100 < 8)
        {
          goto LABEL_50;
        }

        do
        {
          v151 = *(result + v149);
          v152 = vmovl_high_s16(v151);
          v153.i64[0] = v152.i32[2];
          v153.i64[1] = v152.i32[3];
          v154 = vcvtq_f64_s64(v153);
          v153.i64[0] = v152.i32[0];
          v153.i64[1] = v152.i32[1];
          v155 = vcvtq_f64_s64(v153);
          v156 = vmovl_s16(*v151.i8);
          v153.i64[0] = v156.i32[2];
          v153.i64[1] = v156.i32[3];
          v157 = vcvtq_f64_s64(v153);
          v153.i64[0] = v156.i32[0];
          v153.i64[1] = v156.i32[1];
          a7 = vmlaq_f64(v103, v102, v155);
          a8 = vmlaq_f64(v103, v102, v154);
          v158 = (a11 + v148);
          v158[2] = a7;
          v158[3] = a8;
          *v158 = vmlaq_f64(v103, v102, vcvtq_f64_s64(v153));
          v158[1] = vmlaq_f64(v103, v102, v157);
          v149 += 16;
          v148 += 64;
          v150 -= 8;
        }

        while (v150);
        v147 = (v98 & 0x7FFFFFFC) + 4 + (v100 & 0xFFFFFFFFFFFFFFF8);
        if (v100 != (v100 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_50:
          do
          {
            LOWORD(a7.f64[0]) = result->i16[v147];
            a7.f64[0] = v17 + vmovl_s16(*&a7.f64[0]).i32[0] * *&v16;
            a11->f64[v147++] = a7.f64[0];
          }

          while (v147 < v15);
        }
      }

      v20 = v109 - 1;
      a11 = (a11 + v104);
      result = (result + v105);
      if (!v109)
      {
        return result;
      }
    }

    v110 = 0;
LABEL_40:
    v142 = 2 * v110 + 6;
    v143 = &a11[v110 / 2];
    do
    {
      LOWORD(a7.f64[0]) = *(&result->i16[-3] + v142);
      v144 = v17 + vmovl_s16(*&a7.f64[0]).i32[0] * *&v16;
      v145 = &result->i8[2 * v110];
      LOWORD(a8.f64[0]) = *(v145 + 1);
      v146 = v17 + vmovl_s16(*&a8.f64[0]).i32[0] * *&v16;
      v143->f64[0] = v144;
      v143->f64[1] = v146;
      LOWORD(v144) = *(v145 + 2);
      a7.f64[0] = v17 + vmovl_s16(*&v144).i32[0] * *&v16;
      LOWORD(v146) = *(result->i16 + v142);
      a8.f64[0] = v17 + vmovl_s16(*&v146).i32[0] * *&v16;
      v143[1].f64[0] = a7.f64[0];
      v143[1].f64[1] = a8.f64[0];
      v110 += 4;
      v142 += 8;
      v143 += 2;
    }

    while (v110 <= v98);
    goto LABEL_42;
  }

  v23 = vdupq_lane_s64(*&v17, 0);
  v24 = (v15 - 8);
  v25 = (v15 - 4);
  v26 = (v24 & 0xFFFFFFF8) + 8;
  v27 = v26 | 4;
  if ((v26 | 4uLL) <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  v28 = ~v26 + v27;
  v29 = (v28 >> 2) + 1;
  v30 = vdupq_lane_s64(v16, 0);
  v31 = vdupq_lane_s64(*&v17, 0);
  v32 = a11 + 2;
  v33 = 8 * v19;
  v34 = 2 * v18;
  v35 = &a11[1].f64[1];
  v36 = &result->i8[4];
  do
  {
    v37 = 0;
    v38 = 0;
    v39 = v20;
    v40 = 8;
    v41 = result;
    v42 = v32;
    do
    {
      v43 = *v41++;
      v44 = v40;
      v45 = vmovl_s16(*v43.i8);
      v46 = vmovl_high_s16(v43);
      v47 = vaddq_f64(v23, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*v45.i8)), *&v16));
      v48 = vaddq_f64(v23, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v45, v45, 8uLL))), *&v16));
      v49 = vaddq_f64(v23, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*v46.i8)), *&v16));
      v50 = vaddq_f64(v23, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v46, v46, 8uLL))), *&v16));
      v42[-2] = v47;
      v42[-1] = v48;
      v38 += 8;
      *v42 = v49;
      v42[1] = v50;
      v42 += 4;
      v37 += 0x800000000;
      v40 += 8;
    }

    while (v38 <= v24);
    if (v25 >= v38)
    {
      v51 = v37 >> 32;
      if (v28 <= 0x1B)
      {
        goto LABEL_22;
      }

      v51 += 4 * (v29 & 0x7FFFFFFFFFFFFFF8);
      v52 = v44;
      v53 = v44;
      v54 = v29 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v55 = &result->i16[v53];
        v161 = vld4q_s16(v55);
        v56 = vmovl_s16(*v161.val[0].i8);
        v57.i64[0] = v56.i32[0];
        v57.i64[1] = v56.i32[1];
        v58 = vcvtq_f64_s64(v57);
        v57.i64[0] = v56.i32[2];
        v57.i64[1] = v56.i32[3];
        v59 = vcvtq_f64_s64(v57);
        v60 = vmovl_s16(*v161.val[1].i8);
        v57.i64[0] = v60.i32[0];
        v57.i64[1] = v60.i32[1];
        v61 = vcvtq_f64_s64(v57);
        v57.i64[0] = v60.i32[2];
        v57.i64[1] = v60.i32[3];
        v62 = vcvtq_f64_s64(v57);
        v63 = vmovl_s16(*v161.val[2].i8);
        v57.i64[0] = v63.i32[0];
        v57.i64[1] = v63.i32[1];
        v64 = vcvtq_f64_s64(v57);
        v57.i64[0] = v63.i32[2];
        v57.i64[1] = v63.i32[3];
        v65 = vcvtq_f64_s64(v57);
        v66 = vmovl_s16(*v161.val[3].i8);
        v57.i64[0] = v66.i32[0];
        v57.i64[1] = v66.i32[1];
        v67 = vcvtq_f64_s64(v57);
        v57.i64[0] = v66.i32[2];
        v57.i64[1] = v66.i32[3];
        v68 = &a11->f64[v52];
        v162.val[1] = vmlaq_f64(v31, v30, v62);
        v162.val[0] = vmlaq_f64(v31, v30, v59);
        v162.val[3] = vmlaq_f64(v31, v30, vcvtq_f64_s64(v57));
        v162.val[2] = vmlaq_f64(v31, v30, v65);
        v159.val[1] = vmlaq_f64(v31, v30, v61);
        v159.val[0] = vmlaq_f64(v31, v30, v58);
        v159.val[3] = vmlaq_f64(v31, v30, v67);
        v159.val[2] = vmlaq_f64(v31, v30, v64);
        v69 = &a11[8].f64[v52];
        v70 = &a11[12].f64[v52];
        vst4q_f64(v68, v159);
        v68 += 8;
        vst4q_f64(v68, v162);
        v71 = vmovl_high_s16(v161.val[0]);
        v57.i64[0] = v71.i32[0];
        v57.i64[1] = v71.i32[1];
        v48 = vcvtq_f64_s64(v57);
        v57.i64[0] = v71.i32[2];
        v57.i64[1] = v71.i32[3];
        v50 = vcvtq_f64_s64(v57);
        v72 = vmovl_high_s16(v161.val[1]);
        v57.i64[0] = v72.i32[0];
        v57.i64[1] = v72.i32[1];
        v73 = vcvtq_f64_s64(v57);
        v57.i64[0] = v72.i32[2];
        v57.i64[1] = v72.i32[3];
        v47 = vcvtq_f64_s64(v57);
        v74 = vmovl_high_s16(v161.val[2]);
        v57.i64[0] = v74.i32[0];
        v57.i64[1] = v74.i32[1];
        v75 = vcvtq_f64_s64(v57);
        v57.i64[0] = v74.i32[2];
        v57.i64[1] = v74.i32[3];
        v76 = vcvtq_f64_s64(v57);
        v161.val[0] = vmovl_high_s16(v161.val[3]);
        v57.i64[0] = v161.val[0].i32[0];
        v57.i64[1] = v161.val[0].i32[1];
        v161.val[1] = vcvtq_f64_s64(v57);
        v57.i64[0] = v161.val[0].i32[2];
        v57.i64[1] = v161.val[0].i32[3];
        v77 = vmlaq_f64(v31, v30, v50);
        v78 = vmlaq_f64(v31, v30, v47);
        v162.val[0] = vmlaq_f64(v31, v30, v76);
        v162.val[1] = vmlaq_f64(v31, v30, vcvtq_f64_s64(v57));
        v162.val[3] = vmlaq_f64(v31, v30, v73);
        v162.val[2] = vmlaq_f64(v31, v30, v48);
        v79 = vmlaq_f64(v31, v30, v161.val[1]);
        v80 = vmlaq_f64(v31, v30, v75);
        vst4q_f64(v69, *(&v162 + 32));
        vst4q_f64(v70, v162);
        v52 += 32;
        v53 += 32;
        v54 -= 8;
      }

      while (v54);
      if (v29 != (v29 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_22:
        v81 = &v35[8 * v51];
        v82 = &v36[2 * v51];
        do
        {
          LOWORD(v50.f64[0]) = *(v82 - 2);
          v83 = v17 + vmovl_s16(*&v50.f64[0]).i32[0] * *&v16;
          LOWORD(v48.f64[0]) = result->i16[v51 + 1];
          v48.f64[0] = v17 + vmovl_s16(*&v48.f64[0]).i32[0] * *&v16;
          *(v81 - 3) = v83;
          v84 = &a11->f64[v51];
          LOWORD(v83) = *v82;
          v50.f64[0] = v17 + vmovl_s16(*&v83).i32[0] * *&v16;
          LOWORD(v47.f64[0]) = *(v82 + 1);
          v47.f64[0] = v17 + vmovl_s16(*&v47.f64[0]).i32[0] * *&v16;
          *(v84 + 1) = *&v48.f64[0];
          *(v84 + 2) = *&v50.f64[0];
          *v81 = v47.f64[0];
          v81 += 4;
          v51 += 4;
          v82 += 8;
        }

        while (v51 <= v25);
      }
    }

    else
    {
      LODWORD(v51) = v38;
    }

    if (v51 < v15)
    {
      v85 = v51;
      v86 = v15 - v51;
      v51 = v51;
      if (v86 <= 7)
      {
        goto LABEL_51;
      }

      v51 = (v86 & 0xFFFFFFFFFFFFFFF8) + v51;
      v87 = 2 * v85;
      v88 = 8 * v85;
      v89 = v86 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v90 = *(result + v87);
        v91 = vmovl_high_s16(v90);
        v92.i64[0] = v91.i32[2];
        v92.i64[1] = v91.i32[3];
        v93 = vcvtq_f64_s64(v92);
        v92.i64[0] = v91.i32[0];
        v92.i64[1] = v91.i32[1];
        v94 = vcvtq_f64_s64(v92);
        v95 = vmovl_s16(*v90.i8);
        v92.i64[0] = v95.i32[2];
        v92.i64[1] = v95.i32[3];
        v96 = vcvtq_f64_s64(v92);
        v92.i64[0] = v95.i32[0];
        v92.i64[1] = v95.i32[1];
        v50 = vmlaq_f64(v31, v30, v94);
        v97 = (a11 + v88);
        v97[2] = v50;
        v97[3] = vmlaq_f64(v31, v30, v93);
        *v97 = vmlaq_f64(v31, v30, vcvtq_f64_s64(v92));
        v97[1] = vmlaq_f64(v31, v30, v96);
        v87 += 16;
        v88 += 64;
        v89 -= 8;
      }

      while (v89);
      if (v86 != (v86 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_51:
        do
        {
          LOWORD(v50.f64[0]) = result->i16[v51];
          v50.f64[0] = v17 + vmovl_s16(*&v50.f64[0]).i32[0] * *&v16;
          a11->f64[v51++] = v50.f64[0];
        }

        while (v15 != v51);
      }
    }

    v20 = v39 - 1;
    v32 = (v32 + v33);
    result = (result + v34);
    a11 = (a11 + v33);
    v35 += v33;
    v36 += v34;
  }

  while (v39);
  return result;
}

uint64_t sub_100225100(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, double *a5, unint64_t a6, unsigned int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a8;
  v11 = a8[1];
  v12 = a2 >> 2;
  v13 = a6 >> 3;
  v14 = v8 - 1;
  if (v9 < 8)
  {
    if (v9 < 4)
    {
      if (v9 >= 1)
      {
        v15 = (result + 8);
        v16 = a5 + 2;
        do
        {
          *(v16 - 2) = v11 + *(v15 - 2) * *&v10;
          if (v9 != 1)
          {
            *(v16 - 1) = v11 + *(v15 - 1) * *&v10;
            if (v9 != 2)
            {
              *v16 = v11 + *v15 * *&v10;
            }
          }

          v15 += v12;
          v16 += v13;
          --v8;
        }

        while (v8);
      }

      return result;
    }

    v67 = (v9 - 4);
    v68 = (v67 & 0x7FFFFFFC) + 5;
    if (v68 <= v9)
    {
      v68 = *a7;
    }

    v69 = v68 - (v67 & 0x7FFFFFFC) - 4;
    v70 = (v67 >> 2) + 1;
    v71 = vdupq_lane_s64(v10, 0);
    v72 = vdupq_lane_s64(*&v11, 0);
    v73 = 8 * v13;
    v74 = 4 * v12;
    v75 = result + 8;
    v76 = (v67 >> 2) & 0x1FFFFFFF;
    v77 = &a5[4 * v76 + 8];
    v78 = result + 16 * v76 + 32;
    while (1)
    {
      v79 = v14;
      if (v67 < 4)
      {
        break;
      }

      v81 = v70 & 0x3FFFFFFE;
      v82 = result;
      v83 = a5;
      do
      {
        v103 = vld4_f32(v82);
        v82 += 8;
        v84.i64[0] = v103.val[0].i32[0];
        v84.i64[1] = v103.val[0].i32[1];
        v85 = vcvtq_f64_s64(v84);
        v84.i64[0] = v103.val[1].i32[0];
        v84.i64[1] = v103.val[1].i32[1];
        v86 = vcvtq_f64_s64(v84);
        v84.i64[0] = v103.val[2].i32[0];
        v84.i64[1] = v103.val[2].i32[1];
        v87 = vcvtq_f64_s64(v84);
        v84.i64[0] = v103.val[3].i32[0];
        v84.i64[1] = v103.val[3].i32[1];
        v104.val[1] = vmlaq_f64(v72, v71, v86);
        v104.val[0] = vmlaq_f64(v72, v71, v85);
        v104.val[3] = vmlaq_f64(v72, v71, vcvtq_f64_s64(v84));
        v104.val[2] = vmlaq_f64(v72, v71, v87);
        vst4q_f64(v83, v104);
        v83 += 8;
        v81 -= 2;
      }

      while (v81);
      v80 = 4 * (v70 & 0x3FFFFFFE);
      if (v70 != (v70 & 0x3FFFFFFE))
      {
        goto LABEL_40;
      }

LABEL_42:
      if (v9 > v80)
      {
        v93 = (v67 & 0x7FFFFFFC) + 4;
        v94 = v78;
        v95 = v77;
        v96 = v69 & 0xFFFFFFFFFFFFFFF8;
        if (v69 < 8)
        {
          goto LABEL_50;
        }

        do
        {
          v97 = *(v94 - 16);
          v98.i64[0] = SDWORD2(v97);
          v98.i64[1] = SHIDWORD(v97);
          v99 = vcvtq_f64_s64(v98);
          v98.i64[0] = v97;
          v98.i64[1] = SDWORD1(v97);
          v100 = vcvtq_f64_s64(v98);
          v98.i64[0] = *(v94 + 8);
          v98.i64[1] = HIDWORD(*v94);
          v101 = vcvtq_f64_s64(v98);
          v98.i64[0] = *v94;
          v98.i64[1] = HIDWORD(*v94);
          v95[-2] = vmlaq_f64(v72, v71, v100);
          v95[-1] = vmlaq_f64(v72, v71, v99);
          *v95 = vmlaq_f64(v72, v71, vcvtq_f64_s64(v98));
          v95[1] = vmlaq_f64(v72, v71, v101);
          v95 += 4;
          v94 += 32;
          v96 -= 8;
        }

        while (v96);
        v93 = (v67 & 0x7FFFFFFC) + 4 + (v69 & 0xFFFFFFFFFFFFFFF8);
        if (v69 != (v69 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_50:
          do
          {
            a5[v93] = v11 + *(result + 4 * v93) * *&v10;
            ++v93;
          }

          while (v93 < v9);
        }
      }

      v14 = v79 - 1;
      a5 = (a5 + v73);
      result += v74;
      v75 += v74;
      v77 = (v77 + v73);
      v78 += v74;
      if (!v79)
      {
        return result;
      }
    }

    v80 = 0;
LABEL_40:
    v88 = &a5[v80];
    v89 = (v75 + 4 * v80);
    do
    {
      v90 = *(v89 - 1);
      v91.i64[0] = v90;
      v91.i64[1] = SHIDWORD(v90);
      v92 = vmlaq_f64(v72, v71, vcvtq_f64_s64(v91));
      v91.i64[0] = *v89;
      v91.i64[1] = HIDWORD(*v89);
      *v88 = v92;
      *(v88 + 1) = vmlaq_f64(v72, v71, vcvtq_f64_s64(v91));
      v88 += 4;
      v80 += 4;
      v89 += 2;
    }

    while (v80 <= v67);
    goto LABEL_42;
  }

  v17 = vdupq_lane_s64(*&v11, 0);
  v18 = (v9 - 8);
  v19 = (v9 - 4);
  v20 = (v18 & 0xFFFFFFF8) + 8;
  v21 = v20 | 4;
  if ((v20 | 4uLL) <= v19 + 1)
  {
    v21 = v19 + 1;
  }

  v22 = ~v20 + v21;
  v23 = (v22 >> 2) + 1;
  v24 = vdupq_lane_s64(v10, 0);
  v25 = vdupq_lane_s64(*&v11, 0);
  v26 = (result + 16);
  v27 = 4 * v12;
  v28 = a5 + 4;
  v29 = 8 * v13;
  do
  {
    v30 = 0;
    v31 = 0;
    v32 = v14;
    v33 = 8;
    v34 = v28;
    v35 = v26;
    do
    {
      v36 = v33;
      v37 = *v35[-2].i8;
      v38 = vaddq_f64(v17, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*v35)), *&v10));
      v39 = vaddq_f64(v17, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(*v35->i8, *v35->i8, 8uLL))), *&v10));
      v34[-2] = vaddq_f64(v17, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*v37.i8)), *&v10));
      v34[-1] = vaddq_f64(v17, vmulq_n_f64(vcvtq_f64_f32(vcvt_f32_s32(*&vextq_s8(v37, v37, 8uLL))), *&v10));
      v31 += 8;
      v30 += 0x800000000;
      *v34 = v38;
      v34[1] = v39;
      v34 += 4;
      v35 += 4;
      v33 += 8;
    }

    while (v31 <= v18);
    if (v19 >= v31)
    {
      v40 = v30 >> 32;
      if (v22 <= 3)
      {
        goto LABEL_22;
      }

      v40 += 4 * (v23 & 0x7FFFFFFFFFFFFFFELL);
      v41 = v36;
      v42 = 4 * v36;
      v43 = v23 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v44 = (result + v42);
        v102 = vld4_f32(v44);
        v45.i64[0] = v102.val[0].i32[0];
        v45.i64[1] = v102.val[0].i32[1];
        v46 = vcvtq_f64_s64(v45);
        v45.i64[0] = v102.val[1].i32[0];
        v45.i64[1] = v102.val[1].i32[1];
        v47 = vcvtq_f64_s64(v45);
        v45.i64[0] = v102.val[2].i32[0];
        v45.i64[1] = v102.val[2].i32[1];
        v48 = vcvtq_f64_s64(v45);
        v45.i64[0] = v102.val[3].i32[0];
        v45.i64[1] = v102.val[3].i32[1];
        v49 = &a5[v41];
        v105.val[1] = vmlaq_f64(v25, v24, v47);
        v105.val[0] = vmlaq_f64(v25, v24, v46);
        v105.val[3] = vmlaq_f64(v25, v24, vcvtq_f64_s64(v45));
        v105.val[2] = vmlaq_f64(v25, v24, v48);
        vst4q_f64(v49, v105);
        v41 += 8;
        v42 += 32;
        v43 -= 2;
      }

      while (v43);
      if (v23 != (v23 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_22:
        v50 = (result + 4 * v40);
        v51 = &a5[v40];
        do
        {
          v52 = *v50;
          v53 = v50[1];
          v50 += 2;
          v54.i64[0] = v52;
          v54.i64[1] = SHIDWORD(v52);
          v55 = vmlaq_f64(v25, v24, vcvtq_f64_s64(v54));
          v54.i64[0] = v53;
          v54.i64[1] = SHIDWORD(v53);
          *v51 = v55;
          *(v51 + 1) = vmlaq_f64(v25, v24, vcvtq_f64_s64(v54));
          v51 += 4;
          v40 += 4;
        }

        while (v40 <= v19);
      }
    }

    else
    {
      LODWORD(v40) = v31;
    }

    if (v40 < v9)
    {
      v56 = v40;
      v57 = v9 - v40;
      v40 = v40;
      if (v57 <= 7)
      {
        goto LABEL_51;
      }

      v40 = (v57 & 0xFFFFFFFFFFFFFFF8) + v40;
      v58 = &v28[v56];
      v59 = (result + 4 * v56);
      v60 = v57 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v61 = *v59;
        v62 = v59[1];
        v59 += 2;
        v63.i64[0] = SDWORD2(v61);
        v63.i64[1] = SHIDWORD(v61);
        v64 = vcvtq_f64_s64(v63);
        v63.i64[0] = v61;
        v63.i64[1] = SDWORD1(v61);
        v65 = vcvtq_f64_s64(v63);
        v63.i64[0] = SDWORD2(v62);
        v63.i64[1] = SHIDWORD(v62);
        v66 = vcvtq_f64_s64(v63);
        v63.i64[0] = v62;
        v63.i64[1] = SDWORD1(v62);
        v58[-2] = vmlaq_f64(v25, v24, v65);
        v58[-1] = vmlaq_f64(v25, v24, v64);
        *v58 = vmlaq_f64(v25, v24, vcvtq_f64_s64(v63));
        v58[1] = vmlaq_f64(v25, v24, v66);
        v58 += 4;
        v60 -= 8;
      }

      while (v60);
      if (v57 != (v57 & 0xFFFFFFFFFFFFFFF8))
      {
LABEL_51:
        do
        {
          a5[v40] = v11 + *(result + 4 * v40) * *&v10;
          ++v40;
        }

        while (v9 != v40);
      }
    }

    v14 = v32 - 1;
    v26 = (v26 + v27);
    v28 = (v28 + v29);
    a5 = (a5 + v29);
    result += v27;
  }

  while (v32);
  return result;
}

float32x2_t *sub_10022562C(float32x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, double *a5, unint64_t a6, unsigned int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a8;
  v11 = *(a8 + 1);
  v12 = a2 >> 2;
  v13 = a6 >> 3;
  v14 = v8 - 1;
  v15 = vdupq_lane_s64(v11, 0);
  v16 = vdupq_lane_s64(*a8, 0);
  if (v9 < 8)
  {
    if (v9 < 4)
    {
      if (v9 >= 1)
      {
        v17 = result + 1;
        v18 = a5 + 2;
        do
        {
          *(v18 - 2) = *&v11 + v17[-1].f32[0] * *&v10;
          if (v9 != 1)
          {
            *(v18 - 1) = *&v11 + v17[-1].f32[1] * *&v10;
            if (v9 != 2)
            {
              *v18 = *&v11 + v17->f32[0] * *&v10;
            }
          }

          v17 = (v17 + 4 * v12);
          v18 += v13;
          --v8;
        }

        while (v8);
      }

      return result;
    }

    v59 = (v9 - 4);
    v60 = v59 & 0x7FFFFFFC;
    if (v60 + 5 <= v9)
    {
      v61 = *a7;
    }

    else
    {
      v61 = (v59 & 0x7FFFFFFC) + 5;
    }

    v62 = v61 - 4;
    v63 = v61 - 4 - v60;
    v64 = (v59 >> 2) + 1;
    v65 = v61 & 3;
    v66 = vdupq_lane_s64(v10, 0);
    v67 = vdupq_lane_s64(v11, 0);
    v68 = 8 * v13;
    v69 = 4 * v12;
    v70 = result + 1;
    v71 = v62 - v65 - v60;
    v72 = (v59 >> 2) & 0x1FFFFFFF;
    v73 = &a5[4 * v72 + 6];
    v74 = &result[2 * v72 + 3];
    while (1)
    {
      v75 = v14;
      if (v59 < 4)
      {
        break;
      }

      v77 = v64 & 0x3FFFFFFE;
      v78 = result;
      v79 = a5;
      do
      {
        v89 = vld4_f32(v78);
        v78 += 4;
        v91.val[1] = vmlaq_f64(v67, v66, vcvtq_f64_f32(v89.val[1]));
        v91.val[0] = vmlaq_f64(v67, v66, vcvtq_f64_f32(v89.val[0]));
        v91.val[3] = vmlaq_f64(v67, v66, vcvtq_f64_f32(v89.val[3]));
        v91.val[2] = vmlaq_f64(v67, v66, vcvtq_f64_f32(v89.val[2]));
        vst4q_f64(v79, v91);
        v79 += 8;
        v77 -= 2;
      }

      while (v77);
      v76 = 4 * (v64 & 0x3FFFFFFE);
      if (v64 != (v64 & 0x3FFFFFFE))
      {
        goto LABEL_41;
      }

LABEL_43:
      if (v9 > v76)
      {
        v83 = (v59 & 0x7FFFFFFC) + 4;
        v84 = v74;
        v85 = v73;
        v86 = v71;
        if (v63 < 4)
        {
          goto LABEL_51;
        }

        do
        {
          v87 = vmlaq_f64(v15, v16, vcvtq_f64_f32(*v84));
          v85[-1] = vmlaq_f64(v15, v16, vcvtq_f64_f32(v84[-1]));
          *v85 = v87;
          v85 += 2;
          v84 += 2;
          v86 -= 4;
        }

        while (v86);
        v83 = (v59 & 0x7FFFFFFC) + 4 + v63 - v65;
        if (v65)
        {
LABEL_51:
          do
          {
            a5[v83] = *&v11 + result->f32[v83] * *&v10;
            ++v83;
          }

          while (v83 < v9);
        }
      }

      v14 = v75 - 1;
      a5 = (a5 + v68);
      result = (result + v69);
      v70 = (v70 + v69);
      v73 = (v73 + v68);
      v74 = (v74 + v69);
      if (!v75)
      {
        return result;
      }
    }

    v76 = 0;
LABEL_41:
    v80 = &a5[v76];
    v81 = &v70[v76 / 2];
    do
    {
      v82 = vmlaq_f64(v67, v66, vcvtq_f64_f32(*v81));
      *v80 = vmlaq_f64(v67, v66, vcvtq_f64_f32(v81[-1]));
      *(v80 + 1) = v82;
      v80 += 4;
      v76 += 4;
      v81 += 2;
    }

    while (v76 <= v59);
    goto LABEL_43;
  }

  v19 = (v9 - 8);
  v20 = (v9 - 4);
  v21 = (v19 & 0xFFFFFFF8) + 8;
  v22 = v21 | 4;
  if ((v21 | 4uLL) <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  v23 = ~v21 + v22;
  v24 = (v23 >> 2) + 1;
  v25 = vdupq_lane_s64(v10, 0);
  v26 = vdupq_lane_s64(v11, 0);
  v27 = result + 2;
  v28 = 4 * v12;
  v29 = a5 + 4;
  v30 = 8 * v13;
  v31 = a5 + 2;
  do
  {
    v32 = 0;
    v33 = 0;
    v34 = v14;
    v35 = 8;
    v36 = v29;
    v37 = v27;
    do
    {
      v38 = v35;
      v39 = *v37[-2].f32;
      v40 = vaddq_f64(v15, vmulq_n_f64(vcvtq_f64_f32(*v37), *&v10));
      v41 = vaddq_f64(v15, vmulq_n_f64(vcvt_hight_f64_f32(*v37->f32), *&v10));
      v36[-2] = vaddq_f64(v15, vmulq_n_f64(vcvtq_f64_f32(*v39.f32), *&v10));
      v36[-1] = vaddq_f64(v15, vmulq_n_f64(vcvt_hight_f64_f32(v39), *&v10));
      v33 += 8;
      v32 += 0x800000000;
      *v36 = v40;
      v36[1] = v41;
      v36 += 4;
      v37 += 4;
      v35 += 8;
    }

    while (v33 <= v19);
    if (v20 >= v33)
    {
      v42 = v32 >> 32;
      if (v23 <= 3)
      {
        goto LABEL_22;
      }

      v42 += 4 * (v24 & 0x7FFFFFFFFFFFFFFELL);
      v43 = v38;
      v44 = 4 * v38;
      v45 = v24 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v46 = (result + v44);
        v88 = vld4_f32(v46);
        v47 = &a5[v43];
        v90.val[1] = vmlaq_f64(v26, v25, vcvtq_f64_f32(v88.val[1]));
        v90.val[0] = vmlaq_f64(v26, v25, vcvtq_f64_f32(v88.val[0]));
        v90.val[3] = vmlaq_f64(v26, v25, vcvtq_f64_f32(v88.val[3]));
        v90.val[2] = vmlaq_f64(v26, v25, vcvtq_f64_f32(v88.val[2]));
        vst4q_f64(v47, v90);
        v43 += 8;
        v44 += 32;
        v45 -= 2;
      }

      while (v45);
      if (v24 != (v24 & 0x7FFFFFFFFFFFFFFELL))
      {
LABEL_22:
        v48 = (result + 4 * v42);
        v49 = &a5[v42];
        do
        {
          v50 = *v48;
          v51 = v48[1];
          v48 += 2;
          *v49 = vmlaq_f64(v26, v25, vcvtq_f64_f32(v50));
          v49[1] = vmlaq_f64(v26, v25, vcvtq_f64_f32(v51));
          v49 += 2;
          v42 += 4;
        }

        while (v42 <= v20);
      }
    }

    else
    {
      LODWORD(v42) = v33;
    }

    if (v42 < v9)
    {
      v52 = v42;
      v53 = v9 - v42;
      v42 = v42;
      if (v53 <= 3)
      {
        goto LABEL_52;
      }

      v42 = (v53 & 0xFFFFFFFFFFFFFFFCLL) + v42;
      v54 = &v31[v52];
      v55 = (result + 4 * v52);
      v56 = v53 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v57 = *v55;
        v58 = v55[1];
        v55 += 2;
        v54[-1] = vmlaq_f64(v15, v16, vcvtq_f64_f32(v57));
        *v54 = vmlaq_f64(v15, v16, vcvtq_f64_f32(v58));
        v54 += 2;
        v56 -= 4;
      }

      while (v56);
      if (v53 != (v53 & 0xFFFFFFFFFFFFFFFCLL))
      {
LABEL_52:
        do
        {
          a5[v42] = *&v11 + result->f32[v42] * *&v10;
          ++v42;
        }

        while (v9 != v42);
      }
    }

    v14 = v34 - 1;
    v27 = (v27 + v28);
    v29 = (v29 + v30);
    a5 = (a5 + v30);
    result = (result + v28);
    v31 = (v31 + v30);
  }

  while (v34);
  return result;
}

unint64_t sub_100225AC0(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, unsigned int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = a2 >> 3;
    v13 = a6 >> 3;
    if (v9 >= 4)
    {
      v16 = 0;
      v17 = vdupq_lane_s64(*&v11, 0);
      v18 = v8 - 1;
      v19 = vdupq_lane_s64(v10, 0);
      v20 = (v9 - 4);
      v21 = a5 - result;
      v22 = a2 & 0xFFFFFFFFFFFFFFF8;
      v23 = (a6 & 0xFFFFFFFFFFFFFFF8) - (a2 & 0xFFFFFFFFFFFFFFF8);
      v24 = (v20 & 0xFFFFFFFC) + 4;
      v25 = v24 + 4;
      if (v24 + 4 <= (v20 + 1))
      {
        v25 = v20 + 1;
      }

      v26 = v25 + ~v24;
      v27 = ((8 * v26) & 0xFFFFFFFFFFFFFFE0) + 32;
      v28 = (v26 >> 2) + 1;
      v29 = a5 + v27;
      v30 = result + v27;
      v31 = vdupq_lane_s64(v10, 0);
      v32 = vdupq_lane_s64(*&v11, 0);
      do
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = v18;
        v37 = 4;
        do
        {
          v38 = v37;
          v39 = vaddq_f64(v17, vmulq_n_f64(*(result + v33 + 16), *&v10));
          v40 = (a5 + v33);
          v35 += 4;
          *v40 = vaddq_f64(v17, vmulq_n_f64(*(result + v33), *&v10));
          v40[1] = v39;
          v34 += 0x400000000;
          v33 += 32;
          v37 = v38 + 4;
        }

        while (v35 <= v20);
        if (v20 >= v35)
        {
          v41 = v34 >> 32;
          if (v26 <= 3 || a5 < v30 + v22 * v16 && result < v29 + (a6 & 0xFFFFFFFFFFFFFFF8) * v16)
          {
            goto LABEL_23;
          }

          v41 += 4 * (v28 & 0x7FFFFFFFFFFFFFFELL);
          v42 = 8 * v38;
          v43 = v28 & 0x7FFFFFFFFFFFFFFELL;
          do
          {
            v44 = (a5 + v42);
            v45 = vmlaq_f64(v32, v31, *(result + v42 + 48));
            v46 = vmlaq_f64(v32, v31, *(result + v42 + 16));
            v47 = vmlaq_f64(v32, v31, *(result + v42 + 32));
            *v44 = vmlaq_f64(v32, v31, *(result + v42));
            v44[1] = v46;
            v44[2] = v47;
            v44[3] = v45;
            v42 += 64;
            v43 -= 2;
          }

          while (v43);
          if (v28 != (v28 & 0x7FFFFFFFFFFFFFFELL))
          {
LABEL_23:
            v48 = 8 * v41;
            do
            {
              v49 = (a5 + v48);
              *v49 = vmlaq_f64(v32, v31, *(result + v48));
              v49[1] = vmlaq_f64(v32, v31, *(result + v48 + 16));
              v41 += 4;
              v48 += 32;
            }

            while (v41 <= v20);
          }
        }

        else
        {
          LODWORD(v41) = v35;
        }

        if (v41 < v9)
        {
          v50 = v41;
          v51 = v9 - v41;
          if (v51 < 4)
          {
            goto LABEL_35;
          }

          if (v21 + v23 * v16 <= 0x1F)
          {
            goto LABEL_35;
          }

          v52 = (v51 & 0xFFFFFFFFFFFFFFFCLL) + v50;
          v53 = 8 * v50;
          v54 = v51 & 0xFFFFFFFFFFFFFFFCLL;
          do
          {
            v55 = vmlaq_f64(v17, v19, *(result + v53 + 16));
            v56 = (a5 + v53);
            *v56 = vmlaq_f64(v17, v19, *(result + v53));
            v56[1] = v55;
            v53 += 32;
            v54 -= 4;
          }

          while (v54);
          v50 = v52;
          if (v51 != (v51 & 0xFFFFFFFFFFFFFFFCLL))
          {
LABEL_35:
            do
            {
              *(a5 + 8 * v50) = v11 + *(result + 8 * v50) * *&v10;
              ++v50;
            }

            while (v9 != v50);
          }
        }

        result += 8 * v12;
        a5 += 8 * v13;
        --v18;
        ++v16;
      }

      while (v36);
    }

    else if (v9 >= 1)
    {
      v14 = (result + 16);
      v15 = (a5 + 16);
      do
      {
        *(v15 - 2) = v11 + *(v14 - 2) * *&v10;
        if (v9 != 1)
        {
          *(v15 - 1) = v11 + *(v14 - 1) * *&v10;
          if (v9 != 2)
          {
            *v15 = v11 + *v14 * *&v10;
          }
        }

        v14 += v12;
        v15 += v13;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_100225DAC(__n128 a1, int32x2_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a4;
        v45 = result;
        v33 = a5;
        v29 = v6;
        v37 = v11;
        v21 = v8;
        v25 = a1;
        sub_1003C83B4();
        v8 = v21;
        a1 = v25;
        v11 = v37;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v29;
        a4 = v41;
        result = v45;
        a5 = v33;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v42 = a4;
      v46 = result;
      v34 = a5;
      v30 = v6;
      v38 = v11;
      v22 = v8;
      v26 = a1;
      sub_1003C83FC();
      v8 = v22;
      a1 = v26;
      v11 = v38;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v30;
      a4 = v42;
      result = v46;
      a5 = v34;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
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
      v43 = a4;
      v47 = result;
      v35 = a5;
      v31 = v6;
      v39 = v11;
      v23 = v8;
      v27 = a1;
      v17 = v13;
      v19 = v12;
      sub_1003C83B4();
      v13 = v17;
      v12 = v19;
      v8 = v23;
      a1 = v27;
      v11 = v39;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v31;
      a4 = v43;
      result = v47;
      a5 = v35;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v44 = a4;
        v48 = result;
        v36 = a5;
        v32 = v6;
        v40 = v11;
        v24 = v8;
        v28 = a1;
        v18 = v13;
        v20 = v12;
        sub_1003C83FC();
        v13 = v18;
        v12 = v20;
        v8 = v24;
        a1 = v28;
        v11 = v40;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a4 = v44;
        result = v48;
        a5 = v36;
      }

LABEL_8:
      v14 = vmovl_u8(v11);
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v14.i8)), a1.n128_f32[0]));
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v14)), a1.n128_f32[0]));
      *(a5 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13, v15), v12)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v10[1], v16), v9[3])))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100225FD8(__n128 a1, int32x2_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *(a4 + result);
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v41 = a4;
        v45 = result;
        v33 = a5;
        v29 = v6;
        v37 = v11;
        v21 = v8;
        v25 = a1;
        sub_1003C83B4();
        v8 = v21;
        a1 = v25;
        v11 = v37;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v29;
        a4 = v41;
        result = v45;
        a5 = v33;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v42 = a4;
      v46 = result;
      v34 = a5;
      v30 = v6;
      v38 = v11;
      v22 = v8;
      v26 = a1;
      sub_1003C83FC();
      v8 = v22;
      a1 = v26;
      v11 = v38;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v30;
      a4 = v42;
      result = v46;
      a5 = v34;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
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
      v43 = a4;
      v47 = result;
      v35 = a5;
      v31 = v6;
      v39 = v11;
      v23 = v8;
      v27 = a1;
      v17 = v13;
      v19 = v12;
      sub_1003C83B4();
      v13 = v17;
      v12 = v19;
      v8 = v23;
      a1 = v27;
      v11 = v39;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v31;
      a4 = v43;
      result = v47;
      a5 = v35;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v44 = a4;
        v48 = result;
        v36 = a5;
        v32 = v6;
        v40 = v11;
        v24 = v8;
        v28 = a1;
        v18 = v13;
        v20 = v12;
        sub_1003C83FC();
        v13 = v18;
        v12 = v20;
        v8 = v24;
        a1 = v28;
        v11 = v40;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a4 = v44;
        result = v48;
        a5 = v36;
      }

LABEL_8:
      v14 = vmovl_s8(v11);
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v14.i8)), a1.n128_f32[0]));
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v14)), a1.n128_f32[0]));
      *(a5 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v13, v15), v12)))), vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v10[1], v16), v9[3])))));
      result += 8;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100226204(__n128 a1, int32x2_t a2, uint64_t a3, uint16x8_t *a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v40 = a4;
        v44 = result;
        v36 = a5;
        v32 = v6;
        v28 = a1;
        v20 = v11;
        v24 = v8;
        sub_1003C83B4();
        v11 = v20;
        v8 = v24;
        a1 = v28;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a5 = v36;
        a4 = v40;
        result = v44;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v41 = a4;
      v45 = result;
      v37 = a5;
      v33 = v6;
      v29 = a1;
      v21 = v11;
      v25 = v8;
      sub_1003C83FC();
      v11 = v21;
      v8 = v25;
      a1 = v29;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v33;
      a5 = v37;
      a4 = v41;
      result = v45;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
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
      v42 = a4;
      v46 = result;
      v38 = a5;
      v34 = v6;
      v30 = a1;
      v22 = v11;
      v26 = v8;
      v16 = v13;
      v18 = v12;
      sub_1003C83B4();
      v13 = v16;
      v12 = v18;
      v11 = v22;
      v8 = v26;
      a1 = v30;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v34;
      a5 = v38;
      a4 = v42;
      result = v46;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v43 = a4;
        v47 = result;
        v39 = a5;
        v35 = v6;
        v31 = a1;
        v23 = v11;
        v27 = v8;
        v17 = v13;
        v19 = v12;
        sub_1003C83FC();
        v13 = v17;
        v12 = v19;
        v11 = v23;
        v8 = v27;
        a1 = v31;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v35;
        a5 = v39;
        a4 = v43;
        result = v47;
      }

LABEL_8:
      v14 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_u16(*v11.i8)), a1.n128_f32[0]));
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_u32(vmovl_high_u16(v11)), a1.n128_f32[0]));
      *(a5 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v10[1], v15), v9[3])))));
      result += 8;
      ++a4;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_100226430(__n128 a1, int32x2_t a2, uint64_t a3, int16x8_t *a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = &off_1004B0000;
    v10 = &off_1004B0000;
    while (1)
    {
      v11 = *a4;
      if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
      {
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
          goto LABEL_6;
        }
      }

      else
      {
        v40 = a4;
        v44 = result;
        v36 = a5;
        v32 = v6;
        v28 = a1;
        v20 = v11;
        v24 = v8;
        sub_1003C83B4();
        v11 = v20;
        v8 = v24;
        a1 = v28;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v32;
        a5 = v36;
        a4 = v40;
        result = v44;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v12 = v9[3];
          v13 = v10[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v41 = a4;
      v45 = result;
      v37 = a5;
      v33 = v6;
      v29 = a1;
      v21 = v11;
      v25 = v8;
      sub_1003C83FC();
      v11 = v21;
      v8 = v25;
      a1 = v29;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v33;
      a5 = v37;
      a4 = v41;
      result = v45;
      v12 = xmmword_1004B0030;
      v13 = xmmword_1004B0010;
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
      v42 = a4;
      v46 = result;
      v38 = a5;
      v34 = v6;
      v30 = a1;
      v22 = v11;
      v26 = v8;
      v16 = v13;
      v18 = v12;
      sub_1003C83B4();
      v13 = v16;
      v12 = v18;
      v11 = v22;
      v8 = v26;
      a1 = v30;
      v10 = &off_1004B0000;
      v9 = &off_1004B0000;
      v6 = v34;
      a5 = v38;
      a4 = v42;
      result = v46;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v43 = a4;
        v47 = result;
        v39 = a5;
        v35 = v6;
        v31 = a1;
        v23 = v11;
        v27 = v8;
        v17 = v13;
        v19 = v12;
        sub_1003C83FC();
        v13 = v17;
        v12 = v19;
        v11 = v23;
        v8 = v27;
        a1 = v31;
        v10 = &off_1004B0000;
        v9 = &off_1004B0000;
        v6 = v35;
        a5 = v39;
        a4 = v43;
        result = v47;
      }

LABEL_8:
      v14 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v11.i8)), a1.n128_f32[0]));
      v15 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(v11)), a1.n128_f32[0]));
      *(a5 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v14, vorrq_s8(vandq_s8(v13, v14), v12)))), vcvtq_s32_f32(vaddq_f32(v15, vorrq_s8(vandq_s8(v10[1], v15), v9[3])))));
      result += 8;
      ++a4;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_10022665C(__n128 a1, int32x2_t a2, uint64_t a3, int32x4_t *a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = a4 + 1;
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
          goto LABEL_6;
        }
      }

      else
      {
        v50 = result;
        v38 = v9;
        v42 = a5;
        v46 = v6;
        v34 = a1;
        v26 = v13;
        v30 = v8;
        v22 = v12;
        sub_1003C83B4();
        v12 = v22;
        v13 = v26;
        v8 = v30;
        a1 = v34;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v38;
        a5 = v42;
        v6 = v46;
        result = v50;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v14 = v10[3];
          v15 = v11[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v51 = result;
      v39 = v9;
      v43 = a5;
      v47 = v6;
      v35 = a1;
      v27 = v13;
      v31 = v8;
      v23 = v12;
      sub_1003C83FC();
      v12 = v23;
      v13 = v27;
      v8 = v31;
      a1 = v35;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v39;
      a5 = v43;
      v6 = v47;
      result = v51;
      v14 = xmmword_1004B0030;
      v15 = xmmword_1004B0010;
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
      v52 = result;
      v40 = v9;
      v44 = a5;
      v48 = v6;
      v36 = a1;
      v28 = v13;
      v32 = v8;
      v20 = v14;
      v24 = v12;
      v18 = v15;
      sub_1003C83B4();
      v15 = v18;
      v14 = v20;
      v12 = v24;
      v13 = v28;
      v8 = v32;
      a1 = v36;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v40;
      a5 = v44;
      v6 = v48;
      result = v52;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v53 = result;
        v41 = v9;
        v45 = a5;
        v49 = v6;
        v37 = a1;
        v29 = v13;
        v33 = v8;
        v21 = v14;
        v25 = v12;
        v19 = v15;
        sub_1003C83FC();
        v15 = v19;
        v14 = v21;
        v12 = v25;
        v13 = v29;
        v8 = v33;
        a1 = v37;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v41;
        a5 = v45;
        v6 = v49;
        result = v53;
      }

LABEL_8:
      v16 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(v12), a1.n128_f32[0]));
      v17 = vaddq_f32(v8, vmulq_n_f32(vcvtq_f32_s32(v13), a1.n128_f32[0]));
      *(a5 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14)))), vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3])))));
      result += 8;
      v9 += 2;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_1002268A4(__n128 a1, int32x2_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, int a6)
{
  v6 = a6 - 8;
  if (a6 >= 8)
  {
    result = 0;
    v8 = vdupq_lane_s32(a2, 0);
    v9 = a4 + 1;
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
          goto LABEL_6;
        }
      }

      else
      {
        v50 = result;
        v38 = v9;
        v42 = a5;
        v46 = v6;
        v34 = a1;
        v26 = v12;
        v30 = v8;
        v22 = v13;
        sub_1003C83B4();
        v13 = v22;
        v12 = v26;
        v8 = v30;
        a1 = v34;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v38;
        a5 = v42;
        v6 = v46;
        result = v50;
        if (atomic_load_explicit(byte_1004B0040, memory_order_acquire))
        {
LABEL_6:
          v14 = v10[3];
          v15 = v11[1];
          if (atomic_load_explicit(byte_1004B0020, memory_order_acquire))
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      v51 = result;
      v39 = v9;
      v43 = a5;
      v47 = v6;
      v35 = a1;
      v27 = v12;
      v31 = v8;
      v23 = v13;
      sub_1003C83FC();
      v13 = v23;
      v12 = v27;
      v8 = v31;
      a1 = v35;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v39;
      a5 = v43;
      v6 = v47;
      result = v51;
      v14 = xmmword_1004B0030;
      v15 = xmmword_1004B0010;
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
      v52 = result;
      v40 = v9;
      v44 = a5;
      v48 = v6;
      v36 = a1;
      v28 = v12;
      v32 = v8;
      v20 = v14;
      v24 = v13;
      v18 = v15;
      sub_1003C83B4();
      v15 = v18;
      v14 = v20;
      v13 = v24;
      v12 = v28;
      v8 = v32;
      a1 = v36;
      v11 = &off_1004B0000;
      v10 = &off_1004B0000;
      v9 = v40;
      a5 = v44;
      v6 = v48;
      result = v52;
      if ((atomic_load_explicit(byte_1004B0040, memory_order_acquire) & 1) == 0)
      {
LABEL_13:
        v53 = result;
        v41 = v9;
        v45 = a5;
        v49 = v6;
        v37 = a1;
        v29 = v12;
        v33 = v8;
        v21 = v14;
        v25 = v13;
        v19 = v15;
        sub_1003C83FC();
        v15 = v19;
        v14 = v21;
        v13 = v25;
        v12 = v29;
        v8 = v33;
        a1 = v37;
        v11 = &off_1004B0000;
        v10 = &off_1004B0000;
        v9 = v41;
        a5 = v45;
        v6 = v49;
        result = v53;
      }

LABEL_8:
      v16 = vaddq_f32(v8, vmulq_n_f32(v12, a1.n128_f32[0]));
      v17 = vaddq_f32(v8, vmulq_n_f32(v13, a1.n128_f32[0]));
      *(a5 + result) = vqmovun_s16(vqmovn_high_s32(vqmovn_s32(vcvtq_s32_f32(vaddq_f32(v16, vorrq_s8(vandq_s8(v15, v16), v14)))), vcvtq_s32_f32(vaddq_f32(v17, vorrq_s8(vandq_s8(v11[1], v17), v10[3])))));
      result += 8;
      v9 += 2;
      if (v6 < result)
      {
        return result;
      }
    }
  }

  return 0;
}