uint64_t sub_1AF27CBA0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v149 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = sub_1AF1A4CE8(v3, a2);
  v13 = sub_1AF1A4F84(v3, a2);
  v14 = sub_1AF1A4604(v3, 3, 0, a2);
  v16 = v14;
  if (!v12 && (v17 = sub_1AF0D5194(v14, v15), v14 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT), v14))
  {
    sub_1AFDF1DA0(v17, v15, v18, v19, v20, v21, v22, v23);
    if (!v13)
    {
LABEL_7:
      v24 = sub_1AF0D5194(v14, v15);
      v14 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
      if (v14)
      {
        sub_1AFDF1E18(v24, v15, v25, v26, v27, v28, v29, v30);
      }
    }
  }

  else if (!v13)
  {
    goto LABEL_7;
  }

  if (!v16)
  {
    v31 = sub_1AF0D5194(v14, v15);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1E90(v31, v15, v32, v33, v34, v35, v36, v37);
    }
  }

  v38 = sub_1AF1AE6EC(v12, v15);
  v40 = sub_1AF1A3CCC(v3, v39);
  v127 = v38;
  v38 *= 16;
  v41 = malloc_type_calloc(v38, 1uLL, 0xF2B949B2uLL);
  length = v38;
  v42 = malloc_type_calloc(v38, 1uLL, 0x756BB57AuLL);
  v141 = 0u;
  v142 = 0u;
  sub_1AF1AE1A8(v12, v43, &v141);
  v139 = 0u;
  v140 = 0u;
  sub_1AF1AE1A8(v16, v44, &v139);
  if (v40 < 1)
  {
    v47 = 0;
    goto LABEL_60;
  }

  v46 = 0;
  v47 = 0;
  v128 = v40;
  v129 = v3;
  do
  {
    v48 = sub_1AF1A3D1C(v3, v46, 1);
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v49 = sub_1AF1A767C(v48, 0, &v135);
    if (BYTE2(v137) > 1u)
    {
      goto LABEL_57;
    }

    v53 = v136;
    v47 = v136 != 0;
    if (!v136)
    {
      goto LABEL_56;
    }

    v54 = 0;
    do
    {
      if (BYTE2(v137))
      {
        if (v54)
        {
          v55 = 1;
        }

        else
        {
          v55 = 2;
        }

        if (v54)
        {
          v56 = 2;
        }

        else
        {
          v56 = 1;
        }

        v57 = BYTE2(v137) != 5;
        v58 = 1;
        if (BYTE2(v137) == 1)
        {
          v57 = 1;
        }

        else
        {
          v55 = 2;
        }

        if (BYTE2(v137) != 1)
        {
          v56 = 1;
        }
      }

      else
      {
        v58 = 3;
        v57 = 3;
        v55 = 2;
        v56 = 1;
      }

      if (v135)
      {
        v59 = DWORD2(v135);
        v60 = BYTE3(v137);
        v61 = v138 + DWORD2(v138) * v54 * v57;
        v62 = v58 * v54;
        v63 = v138 + (v56 + v58 * v54) * DWORD2(v138);
        v64 = v138 + (v55 + v62) * DWORD2(v138);
        if (v64 <= v61)
        {
          v65 = v61;
        }

        else
        {
          v65 = v64;
        }

        if (v63 <= v65)
        {
          v66 = v65;
        }

        else
        {
          v66 = v63;
        }

        if (*(&v135 + 1) < (BYTE3(v137) + BYTE3(v137) * v66))
        {
          v67 = sub_1AF0D5194(v49, v45);
          if (!os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
LABEL_40:
            v68 = 0;
            v69 = 0;
            v70 = 0;
            goto LABEL_42;
          }

          *buf = 136315650;
          v144 = "CFXIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
          v145 = 1024;
          v146 = v66;
          v147 = 2048;
          v148 = v59 / v60;
          v105 = v67;
          v106 = "Error: %s - index (%u) out of bounds (%lu)";
          v107 = 28;
LABEL_55:
          _os_log_error_impl(&dword_1AF0CE000, v105, OS_LOG_TYPE_ERROR, v106, buf, v107);
          goto LABEL_40;
        }

        switch(BYTE3(v137))
        {
          case 4u:
            v70 = *(v135 + 4 * v61);
            v69 = *(v135 + 4 * v63);
            v68 = *(v135 + 4 * v64);
            break;
          case 2u:
            v70 = *(v135 + 2 * v61);
            v69 = *(v135 + 2 * v63);
            v68 = *(v135 + 2 * v64);
            break;
          case 1u:
            v70 = *(v135 + v61);
            v69 = *(v135 + v63);
            v68 = *(v135 + v64);
            break;
          default:
            v104 = sub_1AF0D5194(v49, v45);
            if (!os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            *buf = 67109120;
            LODWORD(v144) = v60;
            v105 = v104;
            v106 = "Unreachable code: Invalid bytes per index (%d)";
            v107 = 8;
            goto LABEL_55;
        }
      }

      else
      {
        v70 = v57 * v54;
        v69 = v56 + v58 * v54;
        v68 = v55 + v58 * v54;
      }

LABEL_42:
      *v71.i64 = sub_1AF279750(BYTE4(v142), (v141 + v70 * BYTE6(v142)), v50, v51.f32[0], v52);
      v134 = v71;
      *v74.i64 = sub_1AF279750(BYTE4(v142), (v141 + v69 * BYTE6(v142)), v71, v72, v73);
      v133 = v74;
      *v77.i64 = sub_1AF279750(BYTE4(v142), (v141 + v68 * BYTE6(v142)), v74, v75, v76);
      v132 = v77;
      *v80.i64 = sub_1AF279750(BYTE4(v140), (v139 + v70 * BYTE6(v140)), v77, v78, v79);
      v131 = v80;
      *v83.i64 = sub_1AF279750(BYTE4(v140), (v139 + v69 * BYTE6(v140)), v80, v81, v82);
      v130 = v83;
      *v50.i64 = sub_1AF279750(BYTE4(v140), (v139 + v68 * BYTE6(v140)), v83, v84, v85);
      v86 = vsubq_f32(v130, v131).u64[0];
      v87 = vsubq_f32(v50, v131).u64[0];
      v88 = v86.f32[1];
      v89 = *(&v87 + 1);
      v50.f32[0] = -*&v87;
      v90 = vmuls_lane_f32(-*&v87, v86, 1) + (v86.f32[0] * *(&v87 + 1));
      if (v90 == 0.0)
      {
        v88 = v86.f32[1] + 0.00000011921;
        v89 = *(&v87 + 1) + -0.00000011921;
        v86.f32[0] = v86.f32[0] + -0.00000011921;
        *&v87 = *&v87 + -0.00000011921;
        v50.f32[0] = -*&v87;
        v90 = (v86.f32[0] * (*(&v87 + 1) + -0.00000011921)) - (*&v87 * (v86.f32[1] + 0.00000011921));
      }

      v91 = vsubq_f32(v133, v134);
      v92 = vsubq_f32(v132, v134);
      v93 = 1.0 / v90;
      v94 = -v88;
      v95 = v93 * ((v89 * v91.f32[2]) - (v88 * v92.f32[2]));
      v96 = 16 * v70;
      v97 = v96 | 8;
      *&v41[v97] = v95 + *&v41[v97];
      v98 = (16 * v69) | 8;
      v99 = 4 * v69;
      *&v41[v98] = v95 + *&v41[v98];
      v100 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*v92.f32, v94), *v91.f32, v89), v93);
      *&v41[v96] = vadd_f32(*&v41[v96], v100);
      v101 = 16 * v68;
      *&v41[v99 * 4] = vadd_f32(v100, *&v41[v99 * 4]);
      *&v41[v101] = vadd_f32(v100, *&v41[v101]);
      v102 = v101 | 8;
      *&v41[v102] = v95 + *&v41[v102];
      v52 = v93 * ((v91.f32[2] * v50.f32[0]) + (v86.f32[0] * v92.f32[2]));
      *(v42 + v97) = v52 + *(v42 + v97);
      *(v42 + v98) = v52 + *(v42 + v98);
      v103 = vmul_n_f32(vmla_n_f32(vmul_n_f32(*v91.f32, v50.f32[0]), *v92.f32, v86.f32[0]), v93);
      *&v42[v96 / 4] = vadd_f32(v103, *&v42[v96 / 4]);
      *&v42[v99] = vadd_f32(v103, *&v42[v99]);
      v51 = *&v42[v101 / 4];
      *v50.f32 = vadd_f32(v103, v51);
      *&v42[v101 / 4] = v50.i64[0];
      v50.f32[0] = v52 + *(v42 + (v101 | 8));
      *(v42 + v102) = v50.i32[0];
      ++v54;
    }

    while (v53 != v54);
    v47 = 1;
LABEL_56:
    v40 = v128;
    v3 = v129;
LABEL_57:
    ++v46;
  }

  while (v46 != v40);
LABEL_60:
  v135 = 0u;
  v136 = 0u;
  sub_1AF1AE1A8(v13, v45, &v135);
  if (v127 >= 1)
  {
    v111 = 0;
    v112 = 0;
    do
    {
      *v113.i64 = sub_1AF279750(BYTE4(v136), (v135 + v111 * BYTE6(v136)), v108, v109, v110.f32[0]);
      v114 = &v41[4 * v112];
      v115.i64[0] = *v114;
      v116 = &v41[4 * v112 + 8];
      v117 = v115;
      v117.i32[2] = *v116;
      v115.i32[2] = *v116;
      v118 = vmulq_f32(v113, v115);
      v118.f32[0] = v118.f32[2] + vaddv_f32(*v118.f32);
      v110 = vmlsq_lane_f32(v117, v113, *v118.f32, 0);
      v119 = vmulq_f32(v110, v110);
      v120 = COERCE_UNSIGNED_INT(v119.f32[2] + vaddv_f32(*v119.f32));
      v121 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL), vnegq_f32(v113)), v117, vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL));
      *v113.f32 = vrsqrte_f32(v120);
      *v113.f32 = vmul_f32(*v113.f32, vrsqrts_f32(v120.u32[0], vmul_f32(*v113.f32, *v113.f32)));
      v122 = vmulq_n_f32(v110, vmul_f32(*v113.f32, vrsqrts_f32(v120.u32[0], vmul_f32(*v113.f32, *v113.f32))).f32[0]);
      *v116 = v122.i32[2];
      *v114 = v122.i64[0];
      v122.i64[0] = *&v42[v112];
      v122.i32[2] = v42[v112 + 2];
      v108 = vmulq_f32(vextq_s8(vuzp1q_s32(v121, v121), v121, 0xCuLL), v122);
      v109 = vaddv_f32(*v108.f32);
      if ((v108.f32[2] + v109) < 0.0)
      {
        v108.f32[0] = -1.0;
      }

      else
      {
        v108.f32[0] = 1.0;
      }

      *(v114 + 3) = v108.i32[0];
      ++v111;
      v112 += 4;
    }

    while (v127 != v111);
  }

  free(v42);
  if (v47)
  {
    v123 = CFDataCreateWithBytesNoCopy(0, v41, length, *MEMORY[0x1E695E480]);
    v124 = sub_1AF1ADBE4(v123, 4, v127, 4, 1);
    CFRelease(v123);
  }

  else
  {
    free(v41);
    return 0;
  }

  return v124;
}

uint64_t sub_1AF27D340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDB530(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v15 = sub_1AF1A4CE8(a1, a2);
  if (!v15)
  {
    v16 = sub_1AF0D5194(0, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1DA0(v16, v14, v17, v18, v19, v20, v21, v22);
    }
  }

  if (!sub_1AF1A3CCC(a1, v14))
  {
    return 0;
  }

  v24 = sub_1AF1AE6EC(v15, v23);
  v25 = sub_1AF1B6A14(0, 1, v24, 3, 1);
  sub_1AF27D42C(a1, v15, v25, a2, a3);
  sub_1AF1ADBE0(v25);
  return v25;
}

void sub_1AF27D42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v78 = 0u;
  v79 = 0u;
  sub_1AF1AE1A8(a2, a2, &v78);
  if (BYTE4(v79) == 8 && (v76 = 0u, v77 = 0u, sub_1AF1AE1A8(a3, v10, &v76), BYTE4(v77) == 8))
  {
    if (v79)
    {
      if (v5)
      {
        v12 = sub_1AF1AC224(a2, v11);
      }

      else
      {
        v12 = 0;
      }

      v13 = sub_1AF1A3CCC(a1, v11);
      v15 = sub_1AF1AE6EC(a3, v14);
      v17 = v15;
      v18 = BYTE6(v77);
      if (BYTE6(v77) == 12)
      {
        LODWORD(__pattern4) = 0;
        memset_pattern4(v76, &__pattern4, 12 * v15);
      }

      else if (v15)
      {
        v19 = 0;
        v20 = v76;
        v21 = v15;
        do
        {
          v22 = v20 + v19;
          *v22 = 0;
          *(v22 + 8) = 0;
          v19 += v18;
          --v21;
        }

        while (v21);
      }

      if (v13 >= 1)
      {
        v23 = 0;
        v24 = v79 - 1;
        while (1)
        {
          v25 = sub_1AF1A3D1C(a1, v23, v6);
          v26 = v6 ? 0 : sub_1AF1A4C6C(a1, 0, 0);
          v74 = 0u;
          v75 = 0u;
          __pattern4 = 0u;
          v73 = 0u;
          v27 = sub_1AF1A767C(v25, v26, &__pattern4);
          if ((v74.n128_u8[2] & 0xFA) == 0)
          {
            break;
          }

          v29 = sub_1AF0D5194(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v30 = v29;
            v31 = "Warning: CFXUnifyNormalsFromGeometry can only process triangles and polygons";
LABEL_22:
            _os_log_impl(&dword_1AF0CE000, v30, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
          }

LABEL_27:
          if (v13 == ++v23)
          {
            goto LABEL_28;
          }
        }

        if (__pattern4)
        {
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = sub_1AF280D2C;
          v65[3] = &unk_1E7A7DC70;
          v71 = v24;
          v66 = v78;
          v67 = v79;
          v68 = v12;
          v69 = v76;
          v70 = v77;
          *buf = __pattern4;
          v62 = v73;
          v63 = v74;
          v64 = v75;
          sub_1AF1A80E4(buf, v65, v74);
          goto LABEL_27;
        }

        v32 = sub_1AF0D5194(v27, v28);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        *buf = 0;
        v30 = v32;
        v31 = "Warning: CFXUnifyNormalsFromGeometry empty indices";
        goto LABEL_22;
      }

LABEL_28:
      v33 = BYTE6(v77);
      if (v12 && v17)
      {
        v34 = 0;
        v35 = 0;
        v36 = v76;
        do
        {
          v37 = v12[v35];
          if (v35 != v37)
          {
            v38 = (v36 + (v37 * v33));
            v39 = *(v38 + 2);
            v40 = *v38;
            v41 = v36 + v34;
            *v41 = v40;
            *(v41 + 8) = v39;
          }

          ++v35;
          v34 += v33;
        }

        while (v17 != v35);
      }

      if (v33 == 12 && (v17 & 0xFFFFFFFC) != 0)
      {
        v42 = 0;
        do
        {
          v43 = (v76 + v42 * BYTE6(v77));
          *v16.f32 = vld3q_f32(v43);
          v46 = vaddq_f32(vmulq_f32(v45, v45), vaddq_f32(vmulq_f32(v16, v16), vmulq_f32(v44, v44)));
          v47 = vrsqrteq_f32(v46);
          v48 = vmulq_f32(v47, vrsqrtsq_f32(v46, vmulq_f32(v47, v47)));
          v49 = vmulq_f32(v48, vrsqrtsq_f32(v46, vmulq_f32(v48, v48)));
          v80.val[0] = vmulq_f32(v16, v49);
          v80.val[1] = vmulq_f32(v44, v49);
          v80.val[2] = vmulq_f32(v45, v49);
          vst3q_f32(v43, v80);
          v42 += 4;
        }

        while (v42 < (v17 & 0xFFFFFFFC));
      }

      else
      {
        v42 = 0;
      }

      if (v42 < v17)
      {
        v50 = v76;
        v51 = BYTE6(v77);
        v52 = BYTE6(v77) * v42;
        v53 = v17 - v42;
        do
        {
          v54 = v50 + v52;
          v16.i64[0] = *v54;
          v55 = v16;
          v55.i32[2] = *(v54 + 8);
          v56 = vmulq_f32(v55, v55);
          v56.f32[0] = v56.f32[2] + vaddv_f32(*v56.f32);
          v57 = vdupq_lane_s32(*v56.f32, 0);
          v57.i32[3] = 0;
          v58 = vrsqrteq_f32(v57);
          v59 = vmulq_f32(v58, vrsqrtsq_f32(v57, vmulq_f32(v58, v58)));
          v16.i32[2] = v55.i32[2];
          v60 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v56.f32[0] != 0.0)), 0x1FuLL));
          v60.i32[3] = 0;
          v16 = vbslq_s8(vcltzq_s32(v60), vmulq_f32(v55, vmulq_f32(v59, vrsqrtsq_f32(v57, vmulq_f32(v59, v59)))), v16);
          *v54 = v16.i64[0];
          *(v54 + 8) = v16.i32[2];
          v52 += v51;
          --v53;
        }

        while (v53);
      }

      free(v12);
    }
  }

  else
  {
    sub_1AF2809FC(a1, a2, a3, v6, v5);
  }
}

uint64_t sub_1AF27D874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v6 = sub_1AF0D5194(a1, 0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDE3258(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!sub_1AF1A3CCC(a2, a2))
  {
    return 0;
  }

  v14 = sub_1AF1A4CE8(a1, a3);
  if (!v14)
  {
    v15 = sub_1AF0D5194(0, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF1FD8(v15, v13, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = sub_1AF1AE6EC(v14, v13);
  v23 = sub_1AF1B6A14(0, 1, v22, 3, 1);
  sub_1AF27D42C(a2, v14, v23, a3, 0);
  sub_1AF1ADBE0(v23);
  return v23;
}

void sub_1AF27D958(uint64_t a1, uint64_t a2, float a3)
{
  v4 = sub_1AF1CF7E8(a1, a2);
  v5.n128_f32[0] = a3;

  sub_1AF27D994(v4, 1, v5);
}

void sub_1AF27D994(__n128 *result, int a2, __n128 a3)
{
  if (result)
  {
    v18 = a3.n128_u64[0];
    *v5.i64 = sub_1AF1B9F08(result);
    sub_1AF1B9F10(result, vmulq_n_f32(v5, *v18.i32));
    if (sub_1AF1B8774(result, v6))
    {
      *v8.i64 = sub_1AF1BA28C(result, v7);
      v9.i64[0] = 0x3400000034000000;
      v9.i64[1] = 0x3400000034000000;
      v10 = vcgeq_f32(v9, vabsq_f32(v8));
      v10.i32[3] = v10.i32[2];
      if ((vminvq_u32(v10) & 0x80000000) == 0)
      {
        sub_1AF1BA2E4(result, v7, vmulq_n_f32(v8, *v18.i32));
      }
    }

    v11 = sub_1AF1B75A0(result, v7);
    if (v11)
    {
      v13 = sub_1AF1B2C1C(v11, v12);
      if (v13)
      {
        sub_1AF27DB88(v13, vdupq_lane_s32(v18, 0));
      }
    }

    v14 = sub_1AF1B75E8(result, v12);
    if (v14)
    {
      sub_1AF27DAC4(v14, v15, *v18.i32);
    }

    v16 = sub_1AF1BB260(result, v15);
    if (v16)
    {
      sub_1AF27DB20(v16, v17, *v18.i32);
    }

    if (a2)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1AF27DB78;
      v19[3] = &unk_1E7A7DC00;
      v20 = v18.i32[0];
      sub_1AF1B7E14(result, v19);
    }
  }
}

void sub_1AF27DAC4(uint64_t a1, uint64_t a2, float a3)
{
  v5 = sub_1AF19CC98(a1, a2);
  sub_1AF19CCE0(a1, v6, v5 * a3);
  v9 = sub_1AF19CBFC(a1, v7) * a3;

  sub_1AF19CC44(a1, v8, v9);
}

float32x2_t sub_1AF27DB20(uint64_t a1, uint64_t a2, float a3)
{
  v4 = sub_1AF15D9E8(a1, a2);
  sub_1AF15DA30(a1, v5, v4 * a3);
  v7 = sub_1AF15E428(a1, v6);
  result = vmul_n_f32(*(v7 + 4), a3);
  *(v7 + 4) = result;
  return result;
}

void sub_1AF27DB88(uint64_t a1, float32x4_t a2)
{
  v3 = sub_1AF1A4CE8(a1, 0);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1AF1A4C6C(a1, 0, 0);
    v7 = sub_1AF1AF040(v4, v6);
    v9 = sub_1AF1AE6EC(v7, v8);
    if (v9 >= 1)
    {
      v11 = v9;
      for (i = 0; i != v11; ++i)
      {
        *v13.i64 = sub_1AF1AF084(v7, i, v10);
        sub_1AF1B6C38(v7, i, vmulq_f32(a2, v13), v14);
      }
    }

    sub_1AF1ADBE0(v7);
    sub_1AF1A44D4(a1, v7, 0, v5);
    CFRelease(v7);
  }

  v15 = a2.f32[1] != a2.f32[2];
  if (a2.f32[0] != a2.f32[2])
  {
    v15 = 0;
  }

  v16 = a2.f32[0] == a2.f32[1] && v15;
  v17 = sub_1AF1A4F84(a1, 0);
  if (!v16)
  {
    v18 = v17;
    if (v17)
    {
      v19 = sub_1AF1A4C6C(a1, 1, 0);
      v21 = sub_1AF1AF040(v18, v20);
      v23 = sub_1AF1AE6EC(v21, v22);
      if (v23 >= 1)
      {
        v25 = v23;
        v26 = 0;
        __asm { FMOV            V0.4S, #1.0 }

        v35 = vdivq_f32(_Q0, a2);
        do
        {
          *v32.i64 = sub_1AF1AF084(v21, v26, v24);
          sub_1AF1B6C38(v21, v26++, vmulq_f32(v35, v32), v33);
        }

        while (v25 != v26);
      }

      sub_1AF1ADBE0(v21);
      sub_1AF1A44D4(a1, v21, 0, v19);

      CFRelease(v21);
    }
  }
}

BOOL sub_1AF27DD4C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1AF1B1FE0(a1, a2);
  if (v4 < 1)
  {
    return 0;
  }

  else
  {
    v5 = v4;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = sub_1AF1B2030(a1, v6);
      v10 = sub_1AF1A1270(v8, v9);
      if (v10)
      {
        v11 = sub_1AF1656E4(v10, 6, 0);
        if (v11)
        {
          if (sub_1AF166220(v11, v12))
          {
            break;
          }
        }
      }

      v7 = ++v6 < v5;
      if (v5 == v6)
      {
        return v7;
      }
    }

    if (a2)
    {
      *a2 = v6;
    }
  }

  return v7;
}

uint64_t sub_1AF27DDF0(uint64_t a1, uint64_t a2)
{
  if (sub_1AF1A4604(a1, 4, 0, a2))
  {
    return 1;
  }

  v5 = sub_1AF1A4CE8(a1, a2);
  if (v5)
  {
    v7 = v5;
    v8 = sub_1AF1A4C6C(a1, 0, 0);
    v9 = sub_1AF1A4F84(a1, a2);
    if (!v9)
    {
      result = sub_1AF27D340(a1, a2, 0);
      if (!result)
      {
        return result;
      }

      v9 = result;
      if (a2 == 1)
      {
        sub_1AF1A44DC(a1, result, 0);
      }

      else if (!a2)
      {
        sub_1AF1A44D4(a1, result, 0, v8);
      }

      CFRelease(v9);
    }

    v11 = sub_1AF1A4604(a1, 3, 0, a2);
    if (v11)
    {
      v13 = v11;
      v31 = 0u;
      v32 = 0u;
      sub_1AF1AE1A8(v7, v12, &v31);
      v29 = 0u;
      v30 = 0u;
      sub_1AF1AE1A8(v9, v14, &v29);
      v27 = 0u;
      v28 = 0u;
      sub_1AF1AE1A8(v13, v15, &v27);
      if (BYTE7(v32) == 1 && BYTE8(v32) >= 3u && BYTE7(v30) == 1 && BYTE8(v30) >= 3u && BYTE7(v28) == 1 && BYTE8(v28) >= 2u)
      {
        v16 = sub_1AF27C4D8(a1, a2);
      }

      else
      {
        v16 = sub_1AF27CBA0(a1, a2);
      }

      v25 = v16;
      if (v16)
      {
LABEL_32:
        if (a2 == 1)
        {
          sub_1AF1A44DC(a1, v25, 0);
        }

        else if (!a2)
        {
          sub_1AF1A44D4(a1, v25, 0, v8);
        }

        CFRelease(v25);
        return 1;
      }
    }

    else
    {
      v18 = sub_1AF0D5194(0, v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2050();
      }

      v20 = sub_1AF1AE6EC(v7, v19);
      v21 = 16 * v20;
      v22 = malloc_type_calloc(16 * v20, 1uLL, 0x3061F7B7uLL);
      v23 = v22;
      if (v20 >= 1)
      {
        memset_pattern16(v22, &xmmword_1AFE201A0, v21);
      }

      v24 = CFDataCreateWithBytesNoCopy(0, v23, v21, *MEMORY[0x1E695E480]);
      v25 = sub_1AF1ADBE4(v24, 4, v20, 4, 1);
      CFRelease(v24);
      if (v25)
      {
        goto LABEL_32;
      }
    }

    v26 = sub_1AF0D5194(v16, v17);
    result = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1AFDF2084();
      return 0;
    }
  }

  else
  {
    v10 = sub_1AF0D5194(0, v6);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_1AFDF20B8();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF27E0C4(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDCF18(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = sub_1AF27DD4C(a1, &v14);
  if (result)
  {
    result = sub_1AF1B2C1C(a1, v13);
    if (result)
    {
      return sub_1AF27DDF0(result, a2);
    }
  }

  return result;
}

uint64_t sub_1AF27E144(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF27E380;
  v16[3] = &unk_1E7A7DC28;
  v16[4] = &v21;
  v16[5] = &v17;
  sub_1AF1A2BEC(a1, 0, v16);
  v2 = v22[3];
  if (v2)
  {
    v3 = v18[3] * v2;
    v4 = sub_1AF288058(v3);
    v5 = CFDataCreateWithBytesNoCopy(0, v4, v3, *MEMORY[0x1E695E488]);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7 = sub_1AF1A2E00(v5, v6);
    v8 = sub_1AF1A516C(a1, 0);
    sub_1AF1A5208(v7, v8);
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF27E450;
    v10[3] = &unk_1E7A7DC50;
    v10[4] = &v12;
    v10[5] = &v17;
    v10[6] = &v21;
    v10[7] = v11;
    v10[8] = v5;
    v10[9] = v7;
    sub_1AF1A2BEC(a1, 0, v10);
    CFRelease(v13[3]);
    CFRelease(v5);
    _Block_object_dispose(v11, 8);
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v7;
}

void sub_1AF27E32C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 112), 8);
  _Block_object_dispose((v1 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1AF27E380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1AF080(a2, a2);
  *(*(*(a1 + 32) + 8) + 24) += sub_1AF1CB328(v4, v5);
  v6 = *(*(*(a1 + 40) + 8) + 24);
  v8 = sub_1AF1AE6EC(a2, v7);
  v10 = *(*(a1 + 40) + 8);
  if (v6)
  {
    if (v8 != *(v10 + 24))
    {
      v11 = sub_1AF0D5194(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_1AF0CE000, v11, OS_LOG_TYPE_DEFAULT, "Warning: Cannot create an interleaved copy, count mismatch", v12, 2u);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
    *(v10 + 24) = v8;
  }
}

uint64_t sub_1AF27E450(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_1AF1AF080(a2, a2);
  v10 = v9;
  if (*(*(a1[4] + 8) + 24))
  {
    v11 = sub_1AF1CAED8(v9);
    v12 = sub_1AF1CAED0(v10);
    v13 = sub_1AF1CAE64(v11, v12, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
    v14 = sub_1AF1ADD44(v13, a3);
    CFRelease(v13);
    sub_1AF1CB108(v13, *(*(a1[4] + 8) + 24), v15);
    sub_1AF1A44D4(a1[9], v14, a4, a5);
    CFRelease(v14);
  }

  else
  {
    v16 = a1[8];
    v17 = sub_1AF1CAED8(v9);
    v18 = sub_1AF1CAED0(v10);
    *(*(a1[4] + 8) + 24) = sub_1AF1ADC58(a3, v16, v17, v18, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24), *(*(a1[7] + 8) + 24));
    v13 = sub_1AF1AF080(*(*(a1[4] + 8) + 24), v19);
    sub_1AF1A44D4(a1[9], *(*(a1[4] + 8) + 24), a4, a5);
  }

  sub_1AF1CB3A4(v10, v13, 0);
  result = sub_1AF1CB328(v10, v20);
  *(*(a1[7] + 8) + 24) += result;
  return result;
}

uint64_t sub_1AF27E5F0(__n128 *a1, uint64_t a2)
{
  v2 = a2;
  memset(&v136, 0, sizeof(v136));
  v4 = sub_1AF1CF7E8(a1, a2);
  v6 = v4;
  v7 = xmmword_1AFE201A0;
  __asm { FMOV            V1.4S, #1.0 }

  v134 = xmmword_1AFE201A0;
  v135 = _Q1;
  if ((v2 & 1) == 0)
  {
    v13 = sub_1AF1B7C8C(v4, &v134, 0);
    if (!v13)
    {
      v23 = sub_1AF1B8588(v13, v5);
      sub_1AF15C19C(v23, v44);
      v46 = v45;
      sub_1AF1BB2D4(v23, v45);
      sub_1AF16CC34(v23, @"default camera");
      CFRelease(v46);
      return v23;
    }

    v7 = v134;
    _Q1 = v135;
  }

  v14 = vsubq_f32(v7, _Q1);
  v15 = vaddq_f32(v7, _Q1);
  v16 = vmulq_f32(vsubq_f32(v15, v14), vdupq_n_s32(0x3DCCCCCDu));
  v17 = vsubq_f32(v14, v16);
  v18 = vaddq_f32(v15, v16);
  if (v2)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20 = vdupq_n_s32(v19);
  v130 = vbslq_s8(v20, v18, v15);
  v129 = vbslq_s8(v20, v17, v14);
  *v139.columns[0].i64 = sub_1AF1B7F84(v6, v5);
  v140 = __invert_f4(v139);
  v124 = v140.columns[1];
  v125 = v140.columns[0];
  v122 = v140.columns[3];
  v123 = v140.columns[2];
  v23 = sub_1AF1B8588(v21, v22);
  sub_1AF15C19C(v23, v24);
  v26 = v25;
  sub_1AF1BB2D4(v23, v25);
  sub_1AF16CC34(v23, @"default camera");
  CFRelease(v26);
  v28 = sub_1AF15E428(v26, v27);
  v29.i64[0] = 0x3F0000003F000000;
  v29.i64[1] = 0x3F0000003F000000;
  v128 = vmulq_f32(vaddq_f32(v129, v130), v29);
  v31 = sub_1AF1CFC48(a1, v30);
  v32.i32[0] = 0;
  v33.i64[0] = 0x3400000034000000;
  v33.i64[1] = 0x3400000034000000;
  v34 = vcgeq_f32(v33, vabsq_f32(v31));
  v34.i32[3] = v34.i32[2];
  v34.i32[0] = vminvq_u32(v34);
  v126 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v32, v34), 0), xmmword_1AFE20160, v31);
  v36 = sub_1AF15D850(v26, v35);
  v37 = tan(v36 * 0.5 * 3.14159265 / 180.0);
  v38.i64[0] = 0x3F0000003F000000;
  v38.i64[1] = 0x3F0000003F000000;
  v39 = vmulq_f32(vsubq_f32(v130, v129), v38);
  *&v37 = 1.0 / v37;
  v40 = vmulq_n_f32(v39, *&v37);
  v41 = v126.f32[0] != 0.0 || v126.f32[1] != 0.0;
  if (v41)
  {
    if (v40.f32[0] < v40.f32[1])
    {
      v40.f32[0] = v40.f32[1];
    }

    v42.i64[0] = v128.i64[0];
    v42.f32[2] = v128.f32[2] + (v39.f32[2] + v40.f32[0]);
    v42.i32[3] = v128.i32[3];
    v43 = v128;
  }

  else if (v126.f32[2] == 0.0)
  {
    v43 = v128;
    v42 = v128;
  }

  else
  {
    if (v40.f32[0] < v40.f32[2])
    {
      v40.f32[0] = v40.f32[2];
    }

    v43 = v128;
    v42.i32[0] = v128.i32[0];
    v42.f32[1] = v128.f32[1] - (v39.f32[1] + v40.f32[0]);
    v42.i64[1] = v128.i64[1];
  }

  v47 = vceqq_f32(v43, v42);
  v47.i32[3] = v47.i32[2];
  v121 = v42;
  if ((vminvq_u32(v47) & 0x80000000) != 0)
  {
    v71.columns[3] = xmmword_1AFE201A0;
    v71.columns[2] = xmmword_1AFE20180;
    v71.columns[1] = xmmword_1AFE20160;
    v71.columns[0] = xmmword_1AFE20150;
  }

  else
  {
    v48 = vsubq_f32(v43, v42);
    v49 = vmulq_f32(v48, v48);
    *&v50 = v49.f32[2] + vaddv_f32(*v49.f32);
    v51 = vrsqrte_f32(v50);
    v52 = vmul_f32(v51, vrsqrts_f32(v50, vmul_f32(v51, v51)));
    v53 = vmulq_n_f32(v48, vmul_f32(v52, vrsqrts_f32(v50, vmul_f32(v52, v52))).f32[0]);
    v54 = vmulq_f32(v126, v126);
    v52.f32[0] = v54.f32[2] + vaddv_f32(*v54.f32);
    *v54.f32 = vrsqrte_f32(v52.u32[0]);
    *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v54.f32, *v54.f32)));
    v55 = vmulq_n_f32(v126, vmul_f32(*v54.f32, vrsqrts_f32(v52.u32[0], vmul_f32(*v54.f32, *v54.f32))).f32[0]);
    v56 = vextq_s8(vuzp1q_s32(v53, v53), v53, 0xCuLL);
    v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), vnegq_f32(v53)), v55, v56);
    v58 = vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL);
    v59 = vmulq_f32(v57, v57);
    v49.f32[0] = v59.f32[1] + (v59.f32[2] + v59.f32[0]);
    *v59.f32 = vrsqrte_f32(v49.u32[0]);
    *v59.f32 = vmul_f32(*v59.f32, vrsqrts_f32(v49.u32[0], vmul_f32(*v59.f32, *v59.f32)));
    v60 = vmulq_n_f32(v58, vmul_f32(*v59.f32, vrsqrts_f32(v49.u32[0], vmul_f32(*v59.f32, *v59.f32))).f32[0]);
    v61 = vmlaq_f32(vmulq_f32(v56, vnegq_f32(v60)), v53, vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
    v62 = vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL);
    v63 = vmulq_f32(v42, v60);
    v64 = vmulq_f32(v42, v53);
    v53.f32[3] = -(v64.f32[2] + vaddv_f32(*v64.f32));
    v65 = vnegq_f32(v53);
    v66 = vzip1q_s32(v60, v65);
    v60.f32[3] = -(v63.f32[2] + vaddv_f32(*v63.f32));
    v67 = vmulq_f32(v42, v62);
    v68 = vzip1q_s32(v62, 0);
    v62.f32[3] = -(v67.f32[2] + vaddv_f32(*v67.f32));
    v69 = vzip2q_s32(v60, v65);
    v70 = vzip2q_s32(v62, xmmword_1AFE201A0);
    v71.columns[0] = vzip1q_s32(v66, v68);
    v71.columns[1] = vzip2q_s32(v66, v68);
    v71.columns[2] = vzip1q_s32(v69, v70);
    v71.columns[3] = vzip2q_s32(v69, v70);
  }

  v136 = v71;
  v141 = __invert_f4(v71);
  if (v2)
  {
    v120 = v141;
    if (v126.f32[1] == 0.0)
    {
      if (v126.f32[2] == 0.0)
      {
        v78 = xmmword_1AFE47420;
      }

      else
      {
        v78 = xmmword_1AFE47410;
      }
    }

    else
    {
      v78 = xmmword_1AFE47400;
    }

    v127 = v78;
    v79 = __sincosf_stret(*&v78);
    v80.i32[0] = 0;
    v80.i32[1] = LODWORD(v79.__cosval);
    v80.i64[1] = LODWORD(v79.__sinval);
    v81.i32[0] = 0;
    v81.f32[1] = -v79.__sinval;
    v81.i64[1] = LODWORD(v79.__cosval);
    v118 = v81;
    v119 = v80;
    v82 = __sincosf_stret(*(&v127 + 1));
    v83.i32[3] = 0;
    v83.i64[0] = LODWORD(v82.__cosval);
    v83.f32[2] = -v82.__sinval;
    v84.i64[0] = LODWORD(v82.__sinval);
    v84.i64[1] = LODWORD(v82.__cosval);
    v116 = v84;
    v117 = v83;
    v85 = __sincosf_stret(*(&v127 + 2));
    v86 = 0;
    v87.i32[1] = 0;
    v87.i64[1] = 0;
    v137.columns[0] = xmmword_1AFE20150;
    v137.columns[1] = v119;
    v137.columns[2] = v118;
    memset(&v138, 0, 48);
    do
    {
      v138.columns[v86] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, COERCE_FLOAT(*&v137.columns[v86])), xmmword_1AFE20160, *v137.columns[v86].f32, 1), v116, v137.columns[v86], 2);
      ++v86;
    }

    while (v86 != 3);
    v88 = 0;
    cosval_low = LODWORD(v85.__cosval);
    cosval_low.i32[1] = LODWORD(v85.__sinval);
    cosval_low.i32[2] = 0;
    v87.f32[0] = -v85.__sinval;
    v90 = v87;
    v90.i32[1] = LODWORD(v85.__cosval);
    v90.i32[2] = 0;
    v137.columns[0] = v138.columns[0];
    v137.columns[1] = v138.columns[1];
    v137.columns[2] = v138.columns[2];
    memset(&v138, 0, 48);
    do
    {
      v138.columns[v88] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(cosval_low, COERCE_FLOAT(*&v137.columns[v88])), v90, *v137.columns[v88].f32, 1), xmmword_1AFE20180, v137.columns[v88], 2);
      ++v88;
    }

    while (v88 != 3);
    v91 = 0;
    v92 = v138.columns[0];
    v93 = v138.columns[1];
    v94 = v138.columns[2];
    v92.i32[3] = 0;
    v93.i32[3] = 0;
    v94.i32[3] = 0;
    v95 = vnegq_f32(v128);
    v95.i32[3] = 1.0;
    v137.columns[0] = xmmword_1AFE20150;
    v137.columns[1] = xmmword_1AFE20160;
    v137.columns[2] = xmmword_1AFE20180;
    v137.columns[3] = v95;
    memset(&v138, 0, sizeof(v138));
    do
    {
      v138.columns[v91] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*&v137.columns[v91])), v93, *v137.columns[v91].f32, 1), v94, v137.columns[v91], 2), xmmword_1AFE201A0, v137.columns[v91], 3);
      ++v91;
    }

    while (v91 != 4);
    v96 = 0;
    v97 = v128;
    v97.i32[3] = 1.0;
    v137 = v138;
    memset(&v138, 0, sizeof(v138));
    do
    {
      v138.columns[v96] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*&v137.columns[v96])), xmmword_1AFE20160, *v137.columns[v96].f32, 1), xmmword_1AFE20180, v137.columns[v96], 2), v97, v137.columns[v96], 3);
      ++v96;
    }

    while (v96 != 4);
    v98 = 0;
    v99 = v138.columns[0];
    v100 = v138.columns[1];
    v101 = v138.columns[2];
    v102 = v138.columns[3];
    v137 = v120;
    memset(&v138, 0, sizeof(v138));
    do
    {
      v138.columns[v98] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, COERCE_FLOAT(*&v137.columns[v98])), v100, *v137.columns[v98].f32, 1), v101, v137.columns[v98], 2), v102, v137.columns[v98], 3);
      ++v98;
    }

    while (v98 != 4);
    v141 = v138;
    v136.columns[0] = v138.columns[0];
  }

  v103 = 0;
  v137 = v141;
  memset(&v138, 0, sizeof(v138));
  do
  {
    v138.columns[v103] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125, COERCE_FLOAT(*&v137.columns[v103])), v124, *v137.columns[v103].f32, 1), v123, v137.columns[v103], 2), v122, v137.columns[v103], 3);
    ++v103;
  }

  while (v103 != 4);
  v136 = v138;
  sub_1AF1BA204(v23, &v136, v72, v73, v74, v75, v76, v77);
  v105 = 1;
  if (v41)
  {
    v105 = 2;
  }

  v132 = v129;
  v106 = *(&v132 & 0xFFFFFFFFFFFFFFF3 | (4 * (v105 & 3)));
  v133 = v128;
  *(&v133 & 0xFFFFFFFFFFFFFFF3 | (4 * (v105 & 3))) = v106;
  v107 = v133;
  v107.i32[3] = v128.i32[3];
  v108 = vsubq_f32(v121, v107);
  v109 = vmulq_f32(v108, v108);
  v110 = vsubq_f32(v121, v130);
  v111 = vmulq_f32(v110, v110);
  v112 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v109, v109, 8uLL), *&vextq_s8(v111, v111, 8uLL)), vadd_f32(vzip1_s32(*v109.i8, *v111.i8), vzip2_s32(*v109.i8, *v111.i8))));
  if (v112.f32[0] != 0.0 && v112.f32[1] != 0.0 && (v112.f32[1] / v112.f32[0]) < 250.0)
  {
    v113 = sqrt((v112.f32[1] / v112.f32[0]) / 250.0);
    v112.f32[0] = v112.f32[0] * v113;
    v112.f32[1] = v112.f32[1] / v113;
  }

  v131 = v112.f32[0];
  sub_1AF15E10C(v28, v104, v112.f32[1]);
  sub_1AF15E220(v28, v114, v131);
  return v23;
}

uint64_t sub_1AF27EE18(uint64_t a1, float32x4_t *a2, __n128 a3)
{
  v44 = a3;
  memset(v43, 0, sizeof(v43));
  v6 = sub_1AF27F12C(a1, v43);
  if (v6)
  {
    v50 = *sub_1AF1B9B04(a1, v5);
    v51 = __invert_f4(v50);
    v41 = v51.columns[1];
    v42 = v51.columns[0];
    v39 = v51.columns[3];
    v40 = v51.columns[2];
    v7 = sub_1AF15E62C(v43, &v44);
    v12 = 0;
    v13 = *v7;
    v14 = *(v7 + 1);
    v15 = *(v7 + 2);
    v16 = *(v7 + 3);
    v45[0] = v42;
    v45[1] = v41;
    v45[2] = v40;
    v45[3] = v39;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    do
    {
      *(&v46 + v12 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, COERCE_FLOAT(v45[v12])), v14, *&v45[v12], 1), v15, v45[v12], 2), v16, v45[v12], 3);
      ++v12;
    }

    while (v12 != 4);
    v9.f32[0] = *&v46.i32[3] - *v46.i32;
    v9.f32[1] = *&v47.i32[3] - *v47.i32;
    v9.f32[2] = *(&v48 + 3) - *&v48;
    v17 = vmulq_f32(v9, v9);
    v9.f32[3] = *(&v49 + 3) - *&v49;
    v10.f32[0] = *&v46.i32[3] + *v46.i32;
    v10.f32[1] = *&v47.i32[3] + *v47.i32;
    v10.f32[2] = *(&v48 + 3) + *&v48;
    v18 = vmulq_f32(v10, v10);
    v10.f32[3] = *(&v49 + 3) + *&v49;
    v11.f32[0] = *&v46.i32[3] + *&v46.i32[1];
    v11.f32[1] = *&v47.i32[3] + *&v47.i32[1];
    v11.f32[2] = *(&v48 + 3) + *(&v48 + 1);
    v19 = vmulq_f32(v11, v11);
    v11.f32[3] = *(&v49 + 3) + *(&v49 + 1);
    v8.f32[0] = *&v46.i32[3] - *&v46.i32[1];
    v8.f32[1] = *&v47.i32[3] - *&v47.i32[1];
    v8.f32[2] = *(&v48 + 3) - *(&v48 + 1);
    v20 = vmulq_f32(v8, v8);
    v8.f32[3] = *(&v49 + 3) - *(&v49 + 1);
    v21 = vextq_s8(v47, v47, 8uLL);
    v22 = vextq_s8(v46, v46, 8uLL).u64[0];
    *v21.f32 = vsub_f32(vzip2_s32(v22, *v21.f32), vzip1_s32(v22, *v21.f32));
    v21.f32[2] = *(&v48 + 3) - *(&v48 + 2);
    v23 = vmulq_f32(v21, v21);
    v24 = v21;
    v24.f32[3] = *(&v49 + 3) - *(&v49 + 2);
    v25 = vzip2q_s32(v46, v47);
    v25.i32[2] = DWORD2(v48);
    v26 = vmulq_f32(v25, v25);
    v25.i32[3] = DWORD2(v49);
    v27 = vaddv_f32(*v17.f32);
    *v17.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v27));
    *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v27), vmul_f32(*v17.f32, *v17.f32)));
    v28 = vmulq_n_f32(v9, vmul_f32(*v17.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v17.f32[2] + v27), vmul_f32(*v17.f32, *v17.f32))).f32[0]);
    v17.f32[0] = v18.f32[2] + vaddv_f32(*v18.f32);
    v29 = vrsqrte_f32(v17.u32[0]);
    v30 = vmul_f32(v29, vrsqrts_f32(v17.u32[0], vmul_f32(v29, v29)));
    v31 = vmulq_n_f32(v10, vmul_f32(v30, vrsqrts_f32(v17.u32[0], vmul_f32(v30, v30))).f32[0]);
    *&v32 = v19.f32[2] + vaddv_f32(*v19.f32);
    *v17.f32 = vrsqrte_f32(v32);
    *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v32, vmul_f32(*v17.f32, *v17.f32)));
    v17.i32[0] = vmul_f32(*v17.f32, vrsqrts_f32(v32, vmul_f32(*v17.f32, *v17.f32))).u32[0];
    *&v33 = v20.f32[2] + vaddv_f32(*v20.f32);
    v34 = vmulq_n_f32(v11, v17.f32[0]);
    *v17.f32 = vrsqrte_f32(v33);
    *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v33, vmul_f32(*v17.f32, *v17.f32)));
    v35 = vmulq_n_f32(v8, vmul_f32(*v17.f32, vrsqrts_f32(v33, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
    v17.f32[0] = v26.f32[2] + vaddv_f32(*v26.f32);
    *v26.f32 = vrsqrte_f32(v17.u32[0]);
    *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v17.u32[0], vmul_f32(*v26.f32, *v26.f32)));
    v36 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v17.u32[0], vmul_f32(*v26.f32, *v26.f32))).f32[0]);
    *&v37 = v23.f32[2] + vaddv_f32(*v23.f32);
    *v26.f32 = vrsqrte_f32(v37);
    *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v37, vmul_f32(*v26.f32, *v26.f32)));
    *a2 = v28;
    a2[1] = v31;
    a2[2] = v34;
    a2[3] = v35;
    a2[4] = v36;
    a2[5] = vmulq_n_f32(v24, vmul_f32(*v26.f32, vrsqrts_f32(v37, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
  }

  return v6;
}

uint64_t sub_1AF27F12C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF20EC(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1BB260(a1, a2);
  if (v11)
  {
    v13 = sub_1AF15E428(v11, v12);
    v15 = v13[1];
    v14 = v13[2];
    *a2 = *v13;
    *(a2 + 16) = v15;
    *(a2 + 32) = v14;
    v16 = v13[6];
    v18 = v13[3];
    v17 = v13[4];
    *(a2 + 80) = v13[5];
    *(a2 + 96) = v16;
    *(a2 + 48) = v18;
    *(a2 + 64) = v17;
    v19 = v13[9];
    v20 = v13[10];
    v22 = v13[7];
    v21 = v13[8];
    *(a2 + 144) = v19;
    *(a2 + 160) = v20;
    *(a2 + 112) = v22;
    *(a2 + 128) = v21;
    if ((*a2 & 4) != 0)
    {
      v23 = *(a2 + 152);
      v24 = v23;
      v25 = *(a2 + 168);
      *&v19 = v25 / v23;
      v26 = v25 / (v24 + 1.0);
      v27 = (v25 + -1.0) / v24;
      if (*(a2 + 156) == 0.0)
      {
        v26 = v27;
      }

      *&v26 = v26;
      v28 = vcgt_f32(*&v19, *&v26);
      DWORD1(v19) = LODWORD(v26);
      *(a2 + 4) = vbsl_s8(vdup_lane_s32(v28, 0), vrev64_s32(*&v19), *&v19);
    }

    return 1;
  }

  else
  {
    result = sub_1AF1B75E8(a1, v12);
    if (result)
    {
      return sub_1AF19BC90(result, a2);
    }
  }

  return result;
}

void sub_1AF27F230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a2 && a4)
  {
    v6 = sub_1AF1CF7E8(a4, a2);
    if (v6)
    {
      v49 = 0u;
      v50 = 0u;
      v48 = 0;
      if (sub_1AF1B7C8C(v6, &v49, &v48))
      {
        v9 = sub_1AF1B9B04(a2, v8);
        if (v9)
        {
          v11 = 0;
          v12 = *(v9 + 48);
          v13 = vmlaq_f32(vmlaq_f32(vnegq_f32(*(v9 + 32)), 0, *(v9 + 16)), 0, *v9);
          v14 = vmulq_f32(v13, v13);
          v14.f32[0] = v14.f32[2] + vaddv_f32(*v14.f32);
          v15 = v14.f32[0] != 0.0;
          v16 = vdupq_lane_s32(*v14.f32, 0);
          v16.i32[3] = 0;
          v17 = vrsqrteq_f32(v16);
          v18 = vmulq_f32(v17, vrsqrtsq_f32(v16, vmulq_f32(v17, v17)));
          v19 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v15)), 0x1FuLL));
          v19.i32[3] = 0;
          v20 = vbslq_s8(vcltzq_s32(v19), vmulq_f32(v13, vmulq_f32(v18, vrsqrtsq_f32(v16, vmulq_f32(v18, v18)))), v13);
          v21 = vsubq_f32(v49, v50);
          v22 = v21;
          v22.f32[1] = v49.f32[1] - v50.f32[1];
          v23 = v22;
          v23.f32[2] = v49.f32[2] - v50.f32[2];
          v22.f32[2] = v49.f32[2] + v50.f32[2];
          v21.f32[1] = v49.f32[1] + v50.f32[1];
          v24 = v21;
          v24.f32[2] = v49.f32[2] - v50.f32[2];
          v51[0] = v23;
          v51[1] = v22;
          v21.f32[2] = v49.f32[2] + v50.f32[2];
          v51[2] = v24;
          v51[3] = v21;
          v25 = vaddq_f32(v49, v50);
          v26 = v25;
          v26.f32[1] = v49.f32[1] - v50.f32[1];
          v27 = v26;
          v27.f32[2] = v49.f32[2] - v50.f32[2];
          v26.f32[2] = v49.f32[2] + v50.f32[2];
          v51[4] = v27;
          v51[5] = v26;
          v25.f32[1] = v49.f32[1] + v50.f32[1];
          v28 = v25;
          v28.f32[2] = v49.f32[2] - v50.f32[2];
          v25.f32[2] = v49.f32[2] + v50.f32[2];
          v51[6] = v28;
          v51[7] = v25;
          v29 = 3.4028e38;
          v30 = -3.4028e38;
          do
          {
            v31 = vmulq_f32(vsubq_f32(v51[v11], v12), v20);
            v32 = vaddv_f32(*v31.f32);
            if ((v31.f32[2] + v32) < v29)
            {
              v29 = v31.f32[2] + v32;
            }

            v33 = fabsf(v31.f32[2] + v32);
            if (v33 >= v30)
            {
              v30 = v33;
            }

            ++v11;
          }

          while (v11 != 8);
          v34 = vmulq_f32(v50, v50);
          *v34.i32 = sqrtf(vaddv_f32(vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL))));
          v35 = *v34.i32 + *v34.i32;
          v36 = fminf(v30, 1000000.0);
          v38 = v36 + v36 * 0.05;
          if (v35 <= v38)
          {
            v35 = v38;
          }

          v39 = fmax(v35 * 0.0001, 0.001);
          if (v39 > 1.0)
          {
            v39 = 1.0;
          }

          v40 = v39;
          v37 = v29 + v29 * -0.05;
          if (v40 < v37)
          {
            v40 = v29 + v29 * -0.05;
          }

          if (v40 > v38)
          {
            v38 = v40;
          }

          if (v48)
          {
            v41 = v38 + v38;
          }

          else
          {
            v41 = v38;
          }

          v42 = v41 * 0.001;
          if (v42 <= v40)
          {
            v43 = v42;
          }

          else
          {
            v43 = v40;
          }

          if (v43 > v41)
          {
            v44 = sub_1AF0D5194(v9, v10);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF2198(v44, v43, v41);
            }
          }

          *(a1 + 4) = v43;
          *(a1 + 8) = v41;
        }

        else
        {
          v47 = sub_1AF0D5194(0, v10);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF2234();
          }
        }
      }

      else
      {
        *(a1 + 4) = 0x447A00003DCCCCCDLL;
      }
    }

    else
    {
      v46 = sub_1AF0D5194(0, v7);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2268();
      }
    }
  }

  else
  {
    v45 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF2164();
    }
  }
}

float32x4_t sub_1AF27F590(uint64_t a1, float32x4_t *a2, __n128 *a3)
{
  v5 = sub_1AF1B9B04(a1, a2);
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = vmlaq_f32(vmlaq_f32(vmlaq_f32(*(v5 + 48), 0, v7), 0, v6), 0, *v5);
  v9 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v7, *a2, 2), v6, *a2->f32, 1), *v5, COERCE_FLOAT(*a2));
  v10 = vmulq_f32(v9, v9);
  v6.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  *v10.f32 = vrsqrte_f32(v6.u32[0]);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v10.f32, *v10.f32)));
  result = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v11 = vmulq_f32(v8, result);
  result.f32[3] = -(v11.f32[2] + vaddv_f32(*v11.f32));
  *a3 = result;
  return result;
}

__n128 sub_1AF27F634(__n128 *a1, uint64_t a2, uint64_t a3)
{
  v21 = sub_1AF1CFC48(a1, a2);
  v20 = 0uLL;
  sub_1AF27F590(a2, &v21, &v20);
  _Q0 = v20;
  v6 = vnegq_f32(v20);
  _S2 = vmuls_lane_f32(-2.0, v6, 2);
  _D5 = vmul_f32(*v6.f32, 0xC0000000C0000000);
  __asm { FMLS            S6, S5, V0.S[0] }

  _S7 = _D5.i32[1];
  HIDWORD(v15) = 0;
  *&v15 = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v6.f32[0], _D5, 1)), _S6);
  *(&v15 + 2) = _S2 * v6.f32[0];
  __asm { FMLS            S16, S7, V0.S[1] }

  *&_Q6 = __PAIR64__(_S16, COERCE_UNSIGNED_INT(vmuls_lane_f32(_D5.f32[0], *v6.f32, 1)));
  *(&_Q6 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(_S2, *v6.f32, 1));
  *a3 = v15;
  *(a3 + 16) = _Q6;
  *&v18 = vmul_laneq_f32(_D5, v6, 2);
  __asm { FMLS            S6, S2, V0.S[2] }

  *(&v18 + 1) = _Q6;
  result.n128_u64[0] = vmul_laneq_f32(_D5, v6, 3);
  result.n128_u64[1] = __PAIR64__(1.0, COERCE_UNSIGNED_INT(vmuls_lane_f32(_S2, v6, 3)));
  *(a3 + 32) = v18;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_1AF27F708(__n128 *a1, double a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  sub_1AF130864(a1);
  v23 = sub_1AF130548(a1);
  memset(v24, 0, sizeof(v24));
  v8 = sub_1AF12F10C(a1, v7);
  if (v8 && (v9 = v8, sub_1AF27F12C(v8, v24)))
  {
    if (sub_1AF15E5E0(v24, v10))
    {
      sub_1AF15E598(v24, v11);
    }

    else
    {
      v14 = v23.n128_f32[2] / fmax(v23.n128_f32[3], 0.000001);
      sub_1AF15DE9C(v24, v11, v14);
      v27 = *sub_1AF1B9B04(v9, v15);
      v28 = __invert_f4(v27);
      v17 = 0;
      v25[0] = a3;
      v25[1] = a4;
      v25[2] = a5;
      v25[3] = a6;
      memset(v26, 0, sizeof(v26));
      do
      {
        v26[v17] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28.columns[0], COERCE_FLOAT(v25[v17])), v28.columns[1], *&v25[v17], 1), v28.columns[2], v25[v17], 2), v28.columns[3], v25[v17], 3);
        ++v17;
      }

      while (v17 != 4);
      v18 = sub_1AF15E470(v24, v16);
      sin(v18 / 180.0 * 3.14159265 * 0.5);
    }

    return sub_1AF1B9B04(v9, v12);
  }

  else
  {
    sub_1AF13050C(a1, 1);
    return sub_1AF13050C(a1, 0);
  }
}

uint64_t sub_1AF27FA48(uint64_t result, int a2, float32x2_t a3, float32_t a4)
{
  if (a2 >= 1)
  {
    v4 = 0;
    a3.f32[1] = a4;
    __asm { FMOV            V2.2S, #-1.0 }

    do
    {
      if (v4)
      {
        v10 = 0.5;
        v11.i32[0] = 0;
        v12 = v4;
        do
        {
          if (v12)
          {
            v11.f32[0] = v10 + v11.f32[0];
          }

          v10 = v10 * 0.5;
          v13 = v12 > 1;
          v12 >>= 1;
        }

        while (v13);
        v14 = 0.0;
        v15 = v4;
        v16 = 0.33333;
        do
        {
          if (v15 != 3 * (v15 / 3))
          {
            v14 = v14 + ((v15 % 3) * v16);
          }

          v16 = v16 * 0.33333;
          v17 = v15 + 2;
          v15 /= 3;
        }

        while (v17 > 4);
        v11.f32[1] = v14;
      }

      else
      {
        v11 = 0;
      }

      *(result + 8 * v4++) = vmul_f32(vmla_f32(_D2, 0x4000000040000000, v11), a3);
    }

    while (v4 != a2);
  }

  return result;
}

float32x4_t *sub_1AF27FB18(float32x4_t *result, int a2, float a3, float a4, float a5)
{
  if (a2 >= 1)
  {
    for (i = 0; i != a2; result[i++] = v15)
    {
      if (i)
      {
        v6 = 0.5;
        v7 = 0.0;
        v8 = i;
        do
        {
          if (v8)
          {
            v7 = v6 + v7;
          }

          v6 = v6 * 0.5;
          v9 = v8 > 1;
          v8 >>= 1;
        }

        while (v9);
        v10 = 0.0;
        v11 = i;
        v12 = 0.33333;
        do
        {
          if (v11 != 3 * (v11 / 3))
          {
            v10 = v10 + ((v11 % 3) * v12);
          }

          v12 = v12 * 0.33333;
          v13 = v11 + 2;
          v11 /= 3;
        }

        while (v13 >= 5);
        v14 = ((v7 * 2.0) + -1.0) * a3;
        v15 = result[i];
        v15.f32[0] = v14;
        v15.f32[1] = ((v10 * 2.0) + -1.0) * a4;
      }

      else
      {
        v15.i64[0] = 0;
        v15.i64[1] = result->i64[1];
        *result = v15;
      }

      v15.i64[1] = COERCE_UNSIGNED_INT(sqrtf(COERCE_FLOAT(vmulq_f32(v15, v15).i32[1]) + (v15.f32[0] * v15.f32[0])) * a5);
    }
  }

  return result;
}

uint64_t sub_1AF27FC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v47 - 4 * v6;
  if (v6 < 1)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = (v7 + 2);
  do
  {
    v11 = sub_1AF1AE1A8(*(a1 + 8 * v9), v6, v52);
    v13 = v52[0];
    v14 = v52[1];
    v10[-1] = v52[0];
    *v10 = v14;
    if (v8)
    {
      if (v8 != v10->i32[0])
      {
        v36 = sub_1AF0D5194(v11, v6);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF229C();
        }

        return 0;
      }
    }

    else
    {
      v8 = v10->i32[0];
    }

    v10 += 2;
    ++v9;
  }

  while (a2 != v9);
  if (!v8)
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  v51 = v7;
  v18 = v7 + 22;
  v19 = 1;
  do
  {
    if (a2 < 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v21 = v18;
      while (1)
      {
        *v22.i64 = sub_1AF279750(*(v21 - 2), (*(v21 - 22) + v17 * *v21), v13, v14.f32[0], v12);
        v14.i64[0] = 0x3400000034000000;
        v14.i64[1] = 0x3400000034000000;
        v13 = vcgeq_f32(vabsq_f32(v22), v14);
        v13.i32[0] = vmaxvq_u32(v13);
        if (v13.i32[0] < 0)
        {
          break;
        }

        v21 += 32;
        if (a2 == ++v20)
        {
          goto LABEL_17;
        }
      }
    }

    if (v20 == a2)
    {
LABEL_17:
      v19 |= v15++ > a3;
    }

    else
    {
      v15 = 0;
      v16 += v19 & 1;
      v19 = 0;
    }

    ++v17;
  }

  while (v17 != v8);
  if (!v16)
  {
    return 0;
  }

  if (v8 >= 0xFFFF)
  {
    v23 = 4;
  }

  else
  {
    v23 = 2;
  }

  v24 = 1;
  if (v8 >= 0xFFFF)
  {
    v24 = 2;
  }

  v25 = 2 * (v16 << v24);
  v50 = malloc_type_malloc(v25, 0x77DAE7D8uLL);
  v48 = v25;
  v49 = v23;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v51 += 22;
  v32 = 1;
  do
  {
    if (a2 < 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = 0;
      v34 = v51;
      while (1)
      {
        *v35.i64 = sub_1AF279750(*(v34 - 2), (*(v34 - 22) + v29 * *v34), v26, v27.f32[0], v28);
        v27.i64[0] = 0x3400000034000000;
        v27.i64[1] = 0x3400000034000000;
        v26 = vcgeq_f32(vabsq_f32(v35), v27);
        v26.i32[0] = vmaxvq_u32(v26);
        if (v26.i32[0] < 0)
        {
          break;
        }

        v34 += 32;
        if (a2 == ++v33)
        {
          goto LABEL_34;
        }
      }
    }

    if (v33 == a2)
    {
LABEL_34:
      if (!(v32 & 1 | (v30 <= a3)))
      {
        if (v8 > 0xFFFE)
        {
          *&v50[8 * v31 + 4] = v29 - v30;
        }

        else
        {
          *&v50[4 * v31 + 2] = v29 - v30;
        }

        ++v31;
        v32 = 1;
      }

      ++v30;
    }

    else if (v32)
    {
      v30 = 0;
      v32 = 0;
      if (v8 > 0xFFFE)
      {
        *&v50[8 * v31] = v29;
      }

      else
      {
        *&v50[4 * v31] = v29;
      }
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    ++v29;
  }

  while (v29 != v8);
  if (v32)
  {
    v40 = v49;
    v41 = v48;
  }

  else
  {
    v42 = (2 * v31) | 1;
    if (v8 > 0xFFFE)
    {
      *&v50[4 * v42] = v8 - v30;
    }

    else
    {
      *&v50[2 * v42] = v8 - v30;
    }

    v40 = v49;
    v41 = v48;
    LODWORD(v31) = v31 + 1;
  }

  v43 = v50;
  v44 = CFDataCreate(*MEMORY[0x1E695E480], v50, v41);
  free(v43);
  v38 = sub_1AF1A6834(v45, v46);
  sub_1AF1A699C(v38, 2);
  sub_1AF1A72A0(v38, v31, v44, v40);
  CFRelease(v44);
  return v38;
}

void sub_1AF27FFF8(uint64_t a1, uint64_t a2, float32x4_t a3, __n128 a4, double a5, int8x16_t a6, int8x16_t a7)
{
  a6.i32[0] = a4.n128_i32[2];
  a7.i32[0] = 1.0;
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  v12 = *vbslq_s8(v11, a7, a6).i32;
  v13 = a4.n128_f32[1] / (fabsf(a4.n128_f32[2]) + 1.0);
  v14 = vmuls_lane_f32(v13, a4.n128_u64[0], 1);
  v7.f32[0] = -(a4.n128_f32[0] * v13);
  v8.f32[0] = a4.n128_f32[2] + (v12 * v14);
  v19.f32[0] = v12 * v7.f32[0];
  v8.f32[1] = v12 * v7.f32[0];
  v21.f32[0] = -a4.n128_f32[0];
  v8.f32[2] = -a4.n128_f32[0];
  v15 = vmulq_f32(a3, v8);
  v18.f32[1] = -v8.f32[0];
  v18.f32[2] = v7.f32[0];
  v7.f32[1] = 1.0 - v14;
  v7.i32[2] = vmuls_lane_f32(-v12, a4.n128_u64[0], 1);
  v16 = v15.f32[2] + vaddv_f32(*v15.f32);
  v22.f32[0] = -v16;
  v17 = vmulq_f32(a3, v7);
  v17.f32[0] = v17.f32[2] + vaddv_f32(*v17.f32);
  v18.f32[3] = -(v13 * -a4.n128_f32[0]);
  v19.f32[1] = -(v12 * v7.f32[0]);
  v19.i32[2] = v7.i32[1];
  v19.f32[3] = -v7.f32[1];
  v20 = -(a4.n128_f32[1] * -v12);
  v21.i32[1] = a4.n128_u32[0];
  v21.i32[2] = v7.i32[2];
  v21.f32[3] = v20;
  v22.f32[1] = v16;
  v22.f32[2] = -v17.f32[0];
  v22.f32[3] = v17.f32[0];
  v23 = *(a1 + 16);
  if (*(a1 + 23) == 1)
  {
    if (v23)
    {
      v24 = 0;
      v25 = vnegq_f32(v22);
      do
      {
        v26 = (*a1 + v24 * *(a1 + 22));
        v27 = vcgtq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v19, v26[1]), v18, *v26), v21, v26[2]), v25);
        v28 = vand_s8(*&vextq_s8(v27, v27, 8uLL), 0x800000004);
        *(a2 + v24++) = v27.i8[4] & 2 | (v27.i32[0] < 0) | v28.i8[0] | v28.i8[4];
      }

      while (v24 < *(a1 + 16));
    }
  }

  else if (v23)
  {
    v29 = 0;
    v30 = vnegq_f32(v22);
    v32 = v30;
    v34 = v19;
    v35 = v18;
    v33 = v21;
    do
    {
      *v31.i64 = sub_1AF279750(*(a1 + 20), (*a1 + v29 * *(a1 + 22)), v30, a4.n128_f32[0], v20);
      v30 = vcgtq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v34, *v31.f32, 1), v35, v31.f32[0]), v33, v31, 2), v32);
      a4.n128_u64[0] = vand_s8(*&vextq_s8(v30, v30, 8uLL), 0x800000004);
      *(a2 + v29++) = v30.i8[4] & 2 | (v30.i32[0] < 0) | a4.n128_u8[0] | a4.n128_u8[4];
    }

    while (v29 < *(a1 + 16));
  }
}

void sub_1AF280210(void *a1, CFArrayRef theArray, uint64_t a3)
{
  *&v63[5] = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v7 = Count;
    v8 = *CFArrayGetValueAtIndex(theArray, 0);
    v10 = sub_1AF1A707C(v8, v9);
    v12 = sub_1AF1A7034(v8, v11);
    if (v12 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    bytes = v13;
    if (*(a3 + 8))
    {
      v14 = v12;
      v58 = v10;
      v61 = a1;
      if (v7 < 1)
      {
        v16 = 0;
        v15 = 0;
      }

      else
      {
        v15 = 0;
        v16 = 0;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v20 = ValueAtIndex;
          if (ValueAtIndex[2] != a1)
          {
            v21 = sub_1AF0D5194(ValueAtIndex, v19);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              sub_1AFDF22D0(v62, v63, v21);
            }
          }

          v22 = *v20;
          v23 = sub_1AF1A7674(*v20);
          if (i < v7 - 1 && v14 == 1)
          {
            if (sub_1AF1A7674(v22))
            {
              v16 += 3;
            }

            else
            {
              v16 += 2;
            }
          }

          v15 += v23;
        }
      }

      v37 = v16 + 2 * v7 + v15;
      if (v14 == 1)
      {
        v38 = v37 - 2;
      }

      else
      {
        v37 = v15 * bytes;
        v38 = v15;
      }

      length = v37 * *(a3 + 12);
      v57 = v38;
      bytesa = sub_1AF288058(length);
      if (v7 >= 1)
      {
        v39 = 0;
        v40 = bytesa;
        do
        {
          v41 = CFArrayGetValueAtIndex(theArray, v39);
          v42 = *v41;
          Value = CFDictionaryGetValue(*(a3 + 16), v41);
          v44 = sub_1AF280650(v40, v42, Value, *(a3 + 12));
          v40 = v44;
          if (v14 == 1 && v39 < v7 - 1)
          {
            memcpy(v44, &v44[-*(a3 + 12)], *(a3 + 12));
            v45 = (v40 + *(a3 + 12));
            if (sub_1AF1A7674(v42))
            {
              memcpy(v45, v45 - *(a3 + 12), *(a3 + 12));
              v45 = (v45 + *(a3 + 12));
            }

            v46 = CFArrayGetValueAtIndex(theArray, ++v39);
            v47 = *v46;
            v48 = CFDictionaryGetValue(*(a3 + 16), v46);
            v49 = *(a3 + 12);
            v50 = sub_1AF1A7C24(v47, 0, 0, 0) + v48;
            if (v49 == 2)
            {
              *v45 = v50;
            }

            else if (v49 == 4)
            {
              *v45 = v50;
            }

            else
            {
              *v45 = v50;
            }

            a1 = v61;
            v40 = v45 + *(a3 + 12);
          }

          else
          {
            ++v39;
          }
        }

        while (v39 != v7);
      }

      v51 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytesa, length, *MEMORY[0x1E695E480]);
      v53 = sub_1AF1A6834(v51, v52);
      sub_1AF1A718C(v53, v58);
      sub_1AF1A6A70(v53, v14, v57, v51, *(a3 + 12));
      CFRelease(v51);
      v55 = sub_1AF1B2C1C(*a3, v54);
      sub_1AF1A4FB0(v55, v53);
      CFRelease(v53);
      if (a1)
      {
        sub_1AF1B32F8(*a3, a1);
      }
    }

    else if (v7 >= 1)
    {
      v24 = 0;
      v25 = *MEMORY[0x1E695E480];
      do
      {
        v26 = CFArrayGetValueAtIndex(theArray, v24);
        v27 = *v26;
        v28 = sub_1AF1A7674(*v26) * bytes * *(a3 + 12);
        v29 = sub_1AF288058(v28);
        v30 = CFDictionaryGetValue(*(a3 + 16), v26);
        sub_1AF280650(v29, v27, v30, *(a3 + 12));
        v32 = sub_1AF1A6A84(v27, v31);
        v33 = CFDataCreateWithBytesNoCopy(v25, v29, v28, v25);
        v34 = sub_1AF1A7674(v32);
        sub_1AF1A72A0(v32, v34, v33, *(a3 + 12));
        CFRelease(v33);
        v36 = sub_1AF1B2C1C(*a3, v35);
        sub_1AF1A4FB0(v36, v32);
        CFRelease(v32);
        if (a1)
        {
          sub_1AF1B32F8(*a3, a1);
        }

        ++v24;
      }

      while (v7 != v24);
    }

    sub_1AF27B1C0(theArray);
  }
}

uint64_t sub_1AF280650(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = sub_1AF1A7674(a2);
  if (sub_1AF1A7034(a2, v9) == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  sub_1AF1A79D0(a2, v10, &v32);
  if (sub_1AF1A7034(a2, v12) == 1)
  {
    if (a4 == 2)
    {
      if (v8 < -1)
      {
        v19 = 0;
      }

      else
      {
        v18 = 0;
        v19 = v8 + 2;
        do
        {
          v29 = v32;
          v30 = v33;
          v31 = v34;
          *(a1 + 2 * v18) = sub_1AF1A7BA8(&v29, 3 * (v18 / 3), v18 % 3, 0) + a3;
          ++v18;
        }

        while (v19 != v18);
      }

      return a1 + 2 * v19;
    }

    else if (a4 == 1)
    {
      if (v8 < -1)
      {
        v14 = 0;
      }

      else
      {
        v13 = 0;
        v14 = v8 + 2;
        do
        {
          v29 = v32;
          v30 = v33;
          v31 = v34;
          *(a1 + v13) = sub_1AF1A7BA8(&v29, 3 * (v13 / 3), v13 % 3, 0) + a3;
          ++v13;
        }

        while (v14 != v13);
      }

      return a1 + v14;
    }

    else
    {
      if (v8 < -1)
      {
        v24 = 0;
      }

      else
      {
        v23 = 0;
        v24 = v8 + 2;
        do
        {
          v29 = v32;
          v30 = v33;
          v31 = v34;
          *(a1 + 4 * v23) = sub_1AF1A7BA8(&v29, 3 * (v23 / 3), v23 % 3, 0) + a3;
          ++v23;
        }

        while (v24 != v23);
      }

      return a1 + 4 * v24;
    }
  }

  else if (a4 == 1)
  {
    if (v8 < 1)
    {
      v21 = 0;
    }

    else
    {
      v20 = 0;
      v21 = 0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          v29 = v32;
          v30 = v33;
          v31 = v34;
          *(a1 + v21 + i) = sub_1AF1A7BA8(&v29, v20, i, 0) + a3;
        }

        ++v20;
        v21 += i;
      }

      while (v20 != v8);
    }

    return a1 + v21;
  }

  else if (a4 == 2)
  {
    if (v8 < 1)
    {
      v16 = 0;
    }

    else
    {
      v15 = 0;
      v16 = 0;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          v29 = v32;
          v30 = v33;
          v31 = v34;
          *(a1 + 2 * v16 + 2 * j) = sub_1AF1A7BA8(&v29, v15, j, 0) + a3;
        }

        ++v15;
        v16 += j;
      }

      while (v15 != v8);
    }

    return a1 + 2 * v16;
  }

  else
  {
    if (v8 < 1)
    {
      v26 = 0;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      do
      {
        for (k = 0; k != v11; ++k)
        {
          v29 = v32;
          v30 = v33;
          v31 = v34;
          *(a1 + 4 * v26 + 4 * k) = sub_1AF1A7BA8(&v29, v25, k, 0) + a3;
        }

        ++v25;
        v26 += k;
      }

      while (v25 != v8);
    }

    return a1 + 4 * v26;
  }
}

uint64_t sub_1AF280994(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 & 0xFD) == 0)
  {
    v3 = result;
    v4 = a3;
    v5 = *(*(result + 32) + 8 * a3 + 72);
    result = sub_1AF1AF178(a2);
    if (v5 <= result)
    {
      v6 = result;
    }

    else
    {
      v6 = v5;
    }

    *(*(v3 + 32) + 8 * v4 + 72) = v6;
  }

  return result;
}

void sub_1AF2809FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = sub_1AF1A3CCC(a1, a2);
  v12 = sub_1AF1AE6EC(a3, v11);
  v56 = 0u;
  v57 = 0u;
  sub_1AF1AE1A8(a2, v13, &v56);
  v54 = 0u;
  v55 = 0u;
  sub_1AF1AE1A8(a3, v14, &v54);
  if (a5)
  {
    v19 = sub_1AF1AC224(a2, v15);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = 0;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  for (i = 0; i != v12; ++i)
  {
    sub_1AF279B88(BYTE4(v55), v54 + i * BYTE6(v55), 0);
  }

LABEL_7:
  if (v10 >= 1)
  {
    v21 = 0;
    v38 = v57 - 1;
    do
    {
      v22 = sub_1AF1A3D1C(a1, v21, a4);
      if (a4)
      {
        v23 = 0;
      }

      else
      {
        v23 = sub_1AF1A4C6C(a1, 0, 0);
      }

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v24 = sub_1AF1A767C(v22, v23, &v50);
      if ((v52.n128_u8[2] & 0xFA) != 0)
      {
        v26 = sub_1AF0D5194(v24, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1AF0CE000, v26, OS_LOG_TYPE_DEFAULT, "Warning: CFXUnifyNormalsFromGeometry can only process triangles and polygons", buf, 2u);
        }
      }

      else
      {
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = sub_1AF280F68;
        v43[3] = &unk_1E7A7DC70;
        v49 = v38;
        v44 = v56;
        v45 = v57;
        v46 = v19;
        v47 = v54;
        v48 = v55;
        *buf = v50;
        v40 = v51;
        v41 = v52;
        v42 = v53;
        sub_1AF1A80E4(buf, v43, v52);
      }

      ++v21;
    }

    while (v10 != v21);
  }

  if (v19 && v12)
  {
    for (j = 0; j != v12; ++j)
    {
      v28 = v19[j];
      if (j != v28)
      {
        *v29.i64 = sub_1AF279750(BYTE4(v55), (v54 + v28 * BYTE6(v55)), v16, v17, v18);
        sub_1AF279B88(BYTE4(v55), v54 + j * BYTE6(v55), v29);
      }
    }
  }

  if (v12)
  {
    for (k = 0; k != v12; ++k)
    {
      *v31.i64 = sub_1AF279750(BYTE4(v55), (v54 + k * BYTE6(v55)), v16, v17, v18);
      v32 = vmulq_f32(v31, v31);
      v32.f32[0] = v32.f32[2] + vaddv_f32(*v32.f32);
      v33 = vdupq_lane_s32(*v32.f32, 0);
      v33.i32[3] = 0;
      v34 = vrsqrteq_f32(v33);
      v35 = vmulq_f32(v34, vrsqrtsq_f32(v33, vmulq_f32(v34, v34)));
      v36 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v32.f32[0] != 0.0)), 0x1FuLL));
      v36.i32[3] = 0;
      v37 = vbslq_s8(vcltzq_s32(v36), vmulq_f32(v31, vmulq_f32(v35, vrsqrtsq_f32(v33, vmulq_f32(v35, v35)))), v31);
      v37.i32[3] = v31.i32[3];
      sub_1AF279B88(BYTE4(v55), v54 + k * BYTE6(v55), v37);
    }
  }

  free(v19);
}

void sub_1AF280D2C(uint64_t result, uint64_t a2, unsigned int *a3, unsigned int a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, int32x4_t a8)
{
  v9 = a3;
  if (a4 <= 2)
  {
    v23 = sub_1AF0D5194(result, a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2314(v23, v24, v25, v26, v27, v28, v29, v30);
      if (!a4)
      {
        return;
      }
    }

    else if (!a4)
    {
      return;
    }
  }

  else if (a4 == 3)
  {
    v11 = *(result + 104);
    v12 = *a3;
    if (v11 < *a3)
    {
      v12 = *(result + 104);
    }

    v13 = *(result + 32);
    v14 = *(result + 54);
    v15 = v13 + v12 * v14;
    a5.i64[0] = *v15;
    a5.i32[2] = *(v15 + 8);
    *a6.f32 = vmul_s32(vmin_u32(vdup_n_s32(v11), *(a3 + 1)), vdup_n_s32(v14));
    v16 = v13 + a6.u32[0];
    a7.i64[0] = *v16;
    a7.i32[2] = *(v16 + 8);
    v17 = v13 + a6.u32[1];
    a6.i64[0] = *v17;
    a6.i32[2] = *(v17 + 8);
    v18 = vsubq_f32(a7, a5);
    v19 = vsubq_f32(a6, a5);
    v20 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
    v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL), vnegq_f32(v18)), v19, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v22.i32[3] = 0;
LABEL_21:
    v52 = *(result + 104);
    v53 = *(result + 64);
    v54 = *(result + 72);
    v55 = a4;
    v56 = *(result + 94);
    do
    {
      v58 = *v9++;
      v57 = v58;
      if (v52 < v58)
      {
        v57 = v52;
      }

      if (v53)
      {
        v57 = *(v53 + 4 * v57);
      }

      v59 = v54 + v57 * v56;
      v20.i64[0] = *v59;
      v20.i32[2] = *(v59 + 8);
      v20 = vaddq_f32(v22, v20);
      *v59 = v20.i64[0];
      *(v59 + 8) = v20.i32[2];
      --v55;
    }

    while (v55);
    return;
  }

  v31 = 0uLL;
  v32 = a4;
  v33 = v9;
  do
  {
    v35 = *v33++;
    v34 = v35;
    if (*(result + 104) < v35)
    {
      v34 = *(result + 104);
    }

    v36 = *(result + 32) + v34 * *(result + 54);
    a6.i64[0] = *v36;
    a6.i32[2] = *(v36 + 8);
    v31 = vaddq_f32(v31, a6);
    --v32;
  }

  while (v32);
  v37 = 0;
  a6.f32[0] = a4;
  v20 = vdivq_f32(v31, vdupq_lane_s32(*a6.f32, 0));
  v38 = *(result + 104);
  v39 = *(result + 32);
  v40 = *(result + 54);
  v22 = 0uLL;
  do
  {
    v41 = v22;
    v42 = v9[v37];
    if (v38 < v42)
    {
      v42 = *(result + 104);
    }

    v43 = a4 - 1 == v37;
    v44 = v37 + 1;
    v45 = (v37 + 1);
    if (v43)
    {
      v45 = 0;
    }

    v46 = v9[v45];
    if (v38 < v46)
    {
      v46 = *(result + 104);
    }

    v47 = v39 + v42 * v40;
    v22.i64[0] = *v47;
    v22.i32[2] = *(v47 + 8);
    v48 = v39 + v46 * v40;
    a8.i64[0] = *v48;
    a8.i32[2] = *(v48 + 8);
    v49 = vsubq_f32(v22, v20);
    v50 = vsubq_f32(a8, v20);
    v51 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL));
    a8 = vuzp1q_s32(v51, v51);
    v22 = vaddq_f32(v41, vextq_s8(a8, v51, 0xCuLL));
    v22.i32[3] = v41.i32[3];
    v37 = v44;
  }

  while (a4 != v44);
  if (a4)
  {
    goto LABEL_21;
  }
}

void sub_1AF280F68(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4, float32x4_t a5, float a6, float32x4_t a7)
{
  LODWORD(v7) = a4;
  v8 = a3;
  if (a4 <= 2)
  {
    v25 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2314(v25, v26, v27, v28, v29, v30, v31, v32);
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }
  }

  else if (a4 == 3)
  {
    v10 = *(a1 + 104);
    v11 = *a3;
    if (v10 < *a3)
    {
      v11 = *(a1 + 104);
    }

    if (v10 >= a3[1])
    {
      v12 = a3[1];
    }

    else
    {
      v12 = *(a1 + 104);
    }

    if (v10 >= a3[2])
    {
      v13 = a3[2];
    }

    else
    {
      v13 = *(a1 + 104);
    }

    *v14.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v11 * *(a1 + 54)), a5, a6, a7.f32[0]);
    v60 = v14;
    *v17.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v12 * *(a1 + 54)), v14, v15, v16);
    v58 = v17;
    *v20.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v13 * *(a1 + 54)), v17, v18, v19);
    v21 = vsubq_f32(v58, v60);
    v22 = vsubq_f32(v20, v60);
    a7 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v21)), v22, a7);
    v24 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
    v24.i32[3] = 0;
    v61 = v24;
LABEL_29:
    v7 = v7;
    do
    {
      v52 = *(a1 + 64);
      v53 = v8;
      if (v52)
      {
        v53 = (v52 + 4 * *v8);
      }

      v54 = *(a1 + 72);
      v55 = *v53 * *(a1 + 94);
      *v56.i64 = sub_1AF279750(*(a1 + 92), (v54 + v55), v24, v23.f32[0], a7.f32[0]);
      sub_1AF279B88(*(a1 + 92), v54 + v55, vaddq_f32(v61, v56));
      ++v8;
      --v7;
    }

    while (v7);
    return;
  }

  v23 = 0uLL;
  v33 = v7;
  v34 = v8;
  do
  {
    v62 = v23;
    v35 = *(a1 + 104);
    v37 = *v34++;
    v36 = v37;
    if (v35 >= v37)
    {
      v35 = v36;
    }

    *a5.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v35 * *(a1 + 54)), a5, v23.f32[0], a7.f32[0]);
    v23 = vaddq_f32(v62, a5);
    --v33;
  }

  while (v33);
  v38 = 0;
  a5.f32[0] = v7;
  v57 = vdivq_f32(v23, vdupq_lane_s32(*a5.f32, 0));
  v24 = 0uLL;
  do
  {
    v63 = v24;
    v39 = *(a1 + 104);
    v40 = v8[v38];
    if (v39 < v40)
    {
      v40 = *(a1 + 104);
    }

    v41 = v38 + 1;
    if (v7 - 1 == v38)
    {
      v42 = 0;
    }

    else
    {
      v42 = (v38 + 1);
    }

    v43 = v8[v42];
    if (v39 >= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = *(a1 + 104);
    }

    *v45.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v40 * *(a1 + 54)), v24, v23.f32[0], a7.f32[0]);
    v59 = v45;
    *v48.i64 = sub_1AF279750(*(a1 + 52), (*(a1 + 32) + v44 * *(a1 + 54)), v45, v46, v47);
    v49 = vsubq_f32(v59, v57);
    v50 = vsubq_f32(v48, v57);
    a7 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), vnegq_f32(v49)), v50, a7);
    v51 = vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL);
    v23.i32[0] = v63.i32[0];
    v24 = vaddq_f32(v63, v51);
    v24.i32[3] = v63.i32[3];
    v38 = v41;
  }

  while (v7 != v41);
  v61 = v24;
  if (v7)
  {
    goto LABEL_29;
  }
}

void sub_1AF28120C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

CFStringRef sub_1AF281240(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v4 = sub_1AF3753A8(a1);
  v5 = *(a1 + 16);
  if (v5)
  {
    v5 = sub_1AF1B955C(v5, v3);
  }

  return CFStringCreateWithFormat(v2, 0, @"<%s %p | %@ %f,%f,%f>", v4, a1, v5, COERCE_FLOAT(*(a1 + 96)), COERCE_FLOAT(HIDWORD(*(a1 + 96))), COERCE_FLOAT(*(a1 + 104)));
}

uint64_t sub_1AF2812CC()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6587D0 = result;
  return result;
}

uint64_t sub_1AF2812F4(uint64_t a1)
{
  if (qword_1EB6587D8 != -1)
  {
    sub_1AFDF238C();
  }

  v2 = qword_1EB6587D0;

  return sub_1AF0D160C(v2, 0xD0uLL);
}

uint64_t sub_1AF28133C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

uint64_t sub_1AF281384(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

CFTypeRef sub_1AF2813CC(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 16);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 16) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1AF28144C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

uint64_t sub_1AF281494(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

uint64_t sub_1AF2814DC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 64;
}

uint64_t sub_1AF281524(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 96;
}

uint64_t sub_1AF28156C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 80;
}

double sub_1AF2815B4(float32x4_t *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[7];
  v12 = a1[8];
  v13 = a1[9];
  v14 = vmulq_f32(v11, v11);
  v15 = vmulq_f32(v12, v12);
  v16 = vmulq_f32(v13, v13);
  v17 = vzip1q_s32(v14, v16);
  v18 = vzip2q_s32(v14, v16);
  v19 = vtrn2q_s32(v14, v15);
  v19.i32[2] = v16.i32[1];
  v20 = vaddq_f32(vzip1q_s32(v18, vdupq_laneq_s32(v15, 2)), vaddq_f32(vzip1q_s32(v17, v15), v19));
  __asm { FMOV            V5.4S, #1.0 }

  v26 = vceqzq_f32(v20);
  v26.i32[3] = 0;
  v27 = vbslq_s8(vcltzq_s32(v26), v20, vdivq_f32(_Q5, v20));
  *&result = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(vmulq_laneq_f32(v13, v27, 2), a1[5], 2), vmulq_lane_f32(v12, *v27.f32, 1), *a1[5].f32, 1), vmulq_n_f32(v11, v27.f32[0]), COERCE_FLOAT(*&a1[5])).u64[0];
  return result;
}

uint64_t sub_1AF281664(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 112;
}

float sub_1AF2816AC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF23A0(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 176);
}

double sub_1AF2816F4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2418(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 16);
  v12 = 0.0;
  if (v11)
  {
    v13 = sub_1AF1B75A0(v11, a2);
    if (v13)
    {
      v15 = sub_1AF1B2C1C(v13, v14);
      if (v15)
      {
        v16 = v15;
        v17 = sub_1AF1A4604(v15, 3, a2, 0);
        if (v17)
        {
          v18 = v17;
          v19 = sub_1AF1A4CE8(v16, 0);
          if (v19)
          {
            v20 = v19;
            v21 = sub_1AF1A3D1C(v16, *(a1 + 32), 0);
            if (v21)
            {
              v22 = v21;
              v23 = sub_1AF1A4C6C(v16, 3, a2);
              v24 = sub_1AF1A4C6C(v16, 0, 0);
              v25 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 48), v23);
              v26 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 52), v23);
              v28 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 56), v23);
              v42 = v26;
              v43 = v25;
              v29 = v28;
              if (v24 != v23)
              {
                v25 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 48), v24);
                v26 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 52), v24);
                v29 = sub_1AF1A7C24(v22, *(a1 + 40), *(a1 + 56), v24);
              }

              *&v30 = sub_1AF1AF084(v20, v25, v27);
              v45[0] = v30;
              *&v32 = sub_1AF1AF084(v20, v26, v31);
              v45[1] = v32;
              *&v34 = sub_1AF1AF084(v20, v29, v33);
              v45[2] = v34;
              v44.i32[2] = 0;
              v44.i64[0] = 0;
              sub_1AF1DA3CC(v45, (a1 + 64), &v44);
              v36 = sub_1AF1AF104(v18, v43, v35);
              v38 = sub_1AF1AF104(v18, v42, v37);
              v40 = sub_1AF1AF104(v18, v28, v39);
              return COERCE_DOUBLE(vmla_laneq_f32(vmla_n_f32(vmul_lane_f32(*&v38, *v44.f32, 1), *&v36, v44.f32[0]), *&v40, v44, 2));
            }
          }
        }
      }
    }
  }

  return v12;
}

uint64_t sub_1AF281920(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x2_t *a5, __n128 a6)
{
  v9 = a2;
  v10 = a1;
  v45 = a6;
  memset(v44, 0, sizeof(v44));
  if (!a3)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF20EC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v19 = sub_1AF27F12C(a3, v44);
  if (v19)
  {
    if (a4 && (v44[0] & 2) != 0)
    {
      sub_1AF27F230(v44, a3, 0, a4);
    }

    v20 = sub_1AF15E62C(v44, &v45);
    v42 = *(v20 + 1);
    v43 = *v20;
    v40 = *(v20 + 3);
    v41 = *(v20 + 2);
    v51 = *sub_1AF1B9B04(a3, v21);
    v52 = __invert_f4(v51);
    v22 = 0;
    v23 = v45;
    v46 = v52;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    do
    {
      *(&v47 + v22 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, COERCE_FLOAT(*&v46.columns[v22])), v42, *v46.columns[v22].f32, 1), v41, v46.columns[v22], 2), v40, v46.columns[v22], 3);
      ++v22;
    }

    while (v22 != 4);
    if (v9 >= 1)
    {
      v24 = v47;
      v25 = v48;
      v26 = vcvtq_f64_f32(*v23.i8);
      v27 = v9;
      v28 = vextq_s8(v23, v23, 8uLL).u64[0];
      __asm
      {
        FMOV            V5.2S, #1.0
        FMOV            V6.2D, #0.5
      }

      v35 = v49;
      v36 = v50;
      do
      {
        v37 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v36, v35, *v10, 2), v25, *v10->f32, 1), v24, COERCE_FLOAT(*v10));
        if (v37.f32[3] == 0.0)
        {
          break;
        }

        v38 = 1.0 / v37.f32[3];
        if ((1.0 / v37.f32[3]) == 0.0)
        {
          break;
        }

        a5[1].f32[0] = 1.0 - vmuls_lane_f32(v38, v37, 2);
        *a5 = vcvt_f32_f64(vaddq_f64(vmulq_f64(vcvtq_f64_f32(vmul_f32(v28, vadd_f32(vmul_n_f32(*v37.f32, v38), _D5))), _Q6), v26));
        a5 += 2;
        ++v10;
        --v27;
      }

      while (v27);
    }
  }

  return v19;
}

uint64_t sub_1AF281AF8(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, __n128 a6)
{
  v9 = a2;
  if (!a3)
  {
    v11 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF20EC(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  memset(v28, 0, sizeof(v28));
  result = sub_1AF27F12C(a3, v28);
  if (result)
  {
    if (a4 && (v28[0] & 2) != 0)
    {
      sub_1AF27F230(v28, a3, 0, a4);
    }

    result = sub_1AF15EAD0(v28, a1, v9, a5, a6);
    if (result)
    {
      v21 = sub_1AF1B9B04(a3, v20);
      if (v9 >= 1)
      {
        v23 = v21[2];
        v22 = v21[3];
        v24 = v9;
        v26 = *v21;
        v25 = v21[1];
        do
        {
          *a5 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v22, v23, *a5, 2), v25, *a5->f32, 1), v26, COERCE_FLOAT(*a5));
          ++a5;
          --v24;
        }

        while (v24);
      }

      return 1;
    }
  }

  return result;
}

double sub_1AF281C18(uint64_t a1, uint64_t a2, float32x4_t *a3, _OWORD *a4, __n128 a5, __n128 a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    __asm { FMOV            V2.4S, #1.0 }

    *&_Q2 = a6.n128_u64[0];
    v16[0] = a6;
    v16[1] = _Q2;
    sub_1AF281AF8(v16, 2, a1, a2, &v14, a5);
    if (a3)
    {
      a5.n128_u64[0] = v14.i64[0];
      *a3 = v14;
    }

    if (a4)
    {
      a5.n128_u64[0] = v15;
      *a4 = v15;
    }
  }

  return a5.n128_f64[0];
}

_OWORD *sub_1AF281CB8(_OWORD *result, CFDictionaryRef theDict)
{
  result[26] = 0u;
  result[27] = 0u;
  result[24] = 0u;
  result[25] = 0u;
  result[22] = 0u;
  result[23] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  *result = 0u;
  result[1] = 0u;
  *result = -1;
  *(result + 10) = 1;
  *(result + 4) = *(result + 4) & 0xE400 | 0xA3F;
  if (!theDict)
  {
    return result;
  }

  v3 = result;
  Value = CFDictionaryGetValue(theDict, @"kHitTestAllLayers");
  v5 = MEMORY[0x1E695E4D0];
  if (Value)
  {
    if (CFEqual(*MEMORY[0x1E695E4D0], Value))
    {
      v6 = 3;
    }

    else
    {
      v6 = 1;
    }

    *(v3 + 10) = v6;
  }

  v7 = CFDictionaryGetValue(theDict, @"kHitTestLayerMask");
  if (v7)
  {
    v10 = objc_msgSend_integerValue(v7, v8, v9);
    if (v10 >= 1)
    {
      *(v3 + 10) = v10;
    }
  }

  v11 = CFDictionaryGetValue(theDict, @"kHitTestClipToZRange");
  if (v11)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFFFD | (2 * (CFEqual(*v5, v11) != 0));
  }

  v12 = CFDictionaryGetValue(theDict, @"kHitTestIgnoreLockedNodes");
  if (v12)
  {
    *(v3 + 4) = *(v3 + 4) & 0xEFFF | ((CFEqual(*v5, v12) != 0) << 12);
  }

  v13 = CFDictionaryGetValue(theDict, @"kHitTestBackFaceCulling");
  if (v13)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFFF7 | (8 * (CFEqual(*v5, v13) != 0));
  }

  v14 = CFDictionaryGetValue(theDict, @"kHitTestSkipTransparentNode");
  if (v14)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFFEF | (16 * (CFEqual(*v5, v14) != 0));
  }

  v15 = CFDictionaryGetValue(theDict, @"kHitTestCategoryBitMask");
  if (v15)
  {
    valuePtr = 0;
    CFNumberGetValue(v15, kCFNumberLongType, &valuePtr);
    *v3 = valuePtr;
  }

  v16 = CFDictionaryGetValue(theDict, @"kHitTestSkipHiddenNode");
  if (v16)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFFDF | (32 * (CFEqual(*v5, v16) != 0));
  }

  v17 = CFDictionaryGetValue(theDict, @"kHitTestSkipParticleEmitter");
  if (v17)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFFBF | ((CFEqual(*v5, v17) != 0) << 6);
  }

  v18 = CFDictionaryGetValue(theDict, @"kHitTestIgnoreChildNodes");
  if (v18)
  {
    v19 = CFEqual(*v5, v18);
    v20 = *(v3 + 4) & 0xFFFE;
    if (!v19)
    {
      ++v20;
    }

    *(v3 + 4) = v20;
  }

  v21 = CFDictionaryGetValue(theDict, @"kHitTestFirstFoundOnly");
  if (v21)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFEFF | ((CFEqual(*v5, v21) != 0) << 8);
  }

  v22 = CFDictionaryGetValue(theDict, @"kHitTestSortResults");
  if (v22)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFFFB | (4 * (CFEqual(*v5, v22) != 0));
  }

  v23 = CFDictionaryGetValue(theDict, @"kHitTestSearchMode");
  if (v23)
  {
    v26 = objc_msgSend_integerValue(v23, v24, v25);
    switch(v26)
    {
      case 2:
        v27 = *(v3 + 4) & 0xFCFF | 0x100;
        goto LABEL_39;
      case 1:
        v27 = *(v3 + 4) & 0xFCFF;
        goto LABEL_39;
      case 0:
        v27 = *(v3 + 4) & 0xFCFF | 0x200;
LABEL_39:
        *(v3 + 4) = v27;
        break;
    }
  }

  v28 = CFDictionaryGetValue(theDict, @"kHitTestBoundingBoxOnly");
  if (v28)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFF7F | ((CFEqual(*v5, v28) != 0) << 7);
  }

  v29 = CFDictionaryGetValue(theDict, @"kHitTestShowDebugInfo");
  if (v29)
  {
    *(v3 + 4) = *(v3 + 4) & 0xFBFF | ((CFEqual(*v5, v29) != 0) << 10);
  }

  v30 = CFDictionaryGetValue(theDict, @"kHitTestResultIgnoreLightArea");
  if (v30)
  {
    *(v3 + 4) = *(v3 + 4) & 0xF7FF | ((CFEqual(*v5, v30) & 1) << 11);
  }

  result = CFDictionaryGetValue(theDict, @"auth");
  *(v3 + 54) = result;
  return result;
}

void sub_1AF282124(uint64_t a1, unsigned int a2, int a3, int a4, int a5, float a6, float32x4_t a7, __n128 a8)
{
  v14 = sub_1AF2812F4(a1);
  sub_1AF2813CC(v14, *(a1 + 112));
  v15 = *(v14 + 24);
  v16 = *(a1 + 120);
  if (v15 != v16)
  {
    if (v15)
    {
      CFRelease(*(v14 + 24));
      *(v14 + 24) = 0;
      v16 = *(a1 + 120);
    }

    if (v16)
    {
      v16 = CFRetain(v16);
    }

    *(v14 + 24) = v16;
  }

  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  v19 = *(a1 + 176);
  *(v14 + 144) = *(a1 + 160);
  *(v14 + 160) = v19;
  *(v14 + 112) = v17;
  *(v14 + 128) = v18;
  *(v14 + 80) = a8;
  *(v14 + 32) = *(a1 + 192);
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 52) = a4;
  *(v14 + 56) = a5;
  *(v14 + 64) = a7;
  *(v14 + 96) = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(a1 + 176), *(a1 + 160), a7, 2), *(a1 + 144), *a7.f32, 1), *(a1 + 128), a7.f32[0]);
  if ((*(a1 + 8) & 0x200) != 0)
  {
    v20 = a6 / *(a1 + 108);
    *(a1 + 108) = a6;
    *(a1 + 60) = v20 * *(a1 + 60);
  }

  CFArrayAppendValue(*(a1 + 328), v14);

  CFRelease(v14);
}

void sub_1AF282244(uint64_t a1, unsigned int a2, int a3, int a4, int a5, float a6, float32x4_t a7, __n128 a8)
{
  v14 = sub_1AF2812F4(a1);
  sub_1AF2813CC(v14, *(a1 + 112));
  v15 = *(a1 + 128);
  v16 = *(a1 + 144);
  v17 = *(a1 + 176);
  *(v14 + 144) = *(a1 + 160);
  *(v14 + 160) = v17;
  *(v14 + 112) = v15;
  *(v14 + 128) = v16;
  *(v14 + 80) = a8;
  *(v14 + 32) = *(a1 + 192);
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  *(v14 + 52) = a4;
  *(v14 + 56) = a5;
  *(v14 + 96) = a7;
  v21 = __invert_f4(*(a1 + 128));
  *(v14 + 64) = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v21.columns[3], v21.columns[2], a7, 2), v21.columns[1], *a7.f32, 1), v21.columns[0], a7.f32[0]);
  if ((*(a1 + 8) & 0x200) != 0)
  {
    *(a1 + 60) = a6;
  }

  CFArrayAppendValue(*(a1 + 328), v14);

  CFRelease(v14);
}

BOOL sub_1AF282328(uint64_t a1, unsigned int *a2, unsigned int a3, float32x4_t a4, float32x4_t a5, __n128 a6, uint64_t a7, char a8, uint64_t a9)
{
  if (a3)
  {
    v11 = a5;
    v12 = a4;
    v15 = 0;
    v16 = a6.n128_f32[3];
    v17 = *(a9 + 8);
    v18 = a3;
    v19 = 1;
    v20 = 1;
    v21 = 3 * a3;
    while (1)
    {
      v22 = *(a1 + 16 * v15);
      v23 = *(a1 + 16 * (v15 + 1));
      v24 = *(a1 + 16 * (v15 + 2));
      v25 = vsubq_f32(v23, v22);
      v26 = vsubq_f32(v24, v22);
      v27 = vnegq_f32(v25);
      v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v27), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
      v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
      v30 = vmulq_f32(v28, v28);
      v30.f32[0] = v30.f32[1] + (v30.f32[2] + v30.f32[0]);
      v31 = vdupq_lane_s32(*v30.f32, 0);
      v31.i32[3] = 0;
      v32 = vrsqrteq_f32(v31);
      v33 = vmulq_f32(v32, vrsqrtsq_f32(v31, vmulq_f32(v32, v32)));
      v34 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v30.f32[0] != 0.0)), 0x1FuLL));
      v34.i32[3] = 0;
      v36 = vbslq_s8(vcltzq_s32(v34), vmulq_f32(vmulq_f32(v33, vrsqrtsq_f32(v31, vmulq_f32(v33, v33))), v29), v29);
      v35 = vmulq_f32(v36, v22);
      v36.n128_f32[3] = -(v35.f32[2] + vaddv_f32(*v35.f32));
      v37 = vmulq_f32(v11, v36);
      v38 = vaddv_f32(vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL)));
      if (v17 & 8) == 0 || (a8)
      {
        if (v38 == 0.0)
        {
          goto LABEL_17;
        }
      }

      else if (v38 >= 0.0)
      {
        goto LABEL_17;
      }

      v39 = vmulq_f32(v12, v36);
      v40 = -vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL))) / v38;
      if (v40 >= 0.0 && v40 <= v16)
      {
        v42 = vmlaq_n_f32(v12, v11, v40);
        v43 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), v27), vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), v26);
        v44 = vmulq_f32(v43, v43);
        v44.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
        v27.i64[0] = 0;
        v27.i32[2] = 0;
        if (fabsf(v44.f32[0]) >= 1.1755e-38)
        {
          v45 = vsubq_f32(v24, v42);
          v46 = vsubq_f32(v23, v42);
          v47 = vsubq_f32(v22, v42);
          v48 = vextq_s8(vextq_s8(v46, v46, 0xCuLL), v46, 8uLL);
          v49 = vextq_s8(vextq_s8(v45, v45, 0xCuLL), v45, 8uLL);
          v50 = vmlaq_f32(vmulq_f32(v49, vnegq_f32(v46)), v48, v45);
          v51 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
          v52 = vmlaq_f32(vmulq_f32(v51, vnegq_f32(v45)), v49, v47);
          v53 = vmlaq_f32(vmulq_f32(v48, vnegq_f32(v47)), v51, v46);
          v54 = vmulq_f32(v43, v50);
          v55 = vmulq_f32(v43, v52);
          v56 = vmulq_f32(v43, v53);
          v57 = vzip2q_s32(v54, v56);
          v58 = vzip1q_s32(vzip1q_s32(v54, v56), v55);
          v59 = vtrn2q_s32(v54, v55);
          v59.i32[2] = v56.i32[1];
          v60 = vdivq_f32(vaddq_f32(vzip1q_s32(v57, vdupq_laneq_s32(v55, 2)), vaddq_f32(v58, v59)), vdupq_lane_s32(*v44.f32, 0));
          v59.i64[0] = 0xBF000000BF000000;
          v59.i64[1] = 0xBF000000BF000000;
          v61 = vabsq_f32(vaddq_f32(v60, v59));
          v59.i64[0] = 0x3F0000003F000000;
          v59.i64[1] = 0x3F0000003F000000;
          v27 = vcgeq_f32(v59, v61);
        }

        v27.i32[3] = v27.i32[2];
        if ((vminvq_u32(v27) & 0x80000000) != 0)
        {
          sub_1AF282124(a9, *a2, 0, 1, 2, v40, v42, v36);
          v12 = a4;
          v11 = a5;
          v17 = *(a9 + 8);
          if ((v17 & 0x100) != 0)
          {
            return v20;
          }
        }
      }

LABEL_17:
      v20 = v19 < v18;
      ++a2;
      v15 += 3;
      ++v19;
      if (v21 == v15)
      {
        return v20;
      }
    }
  }

  return 0;
}

uint64_t sub_1AF2825F4(uint64_t a1, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDDBBAC(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  result = *(a1 + 208);
  if (result)
  {
    goto LABEL_5;
  }

  if ((*(a2 + 34) & 0xFA) == 0)
  {
    v17 = *(a2 + 4) + 31;
    *(a1 + 216) = v17 >> 5;
    v18 = malloc_type_malloc(v17 & 0xFFFFFFE0, 0x1000040E0EAB150uLL);
    *(a1 + 208) = v18;
    v20 = *(a3 + 23);
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v96 = 0;
    v97 = &v96;
    v98 = 0x3020000000;
    v21.i64[0] = 0x80000000800000;
    v21.i64[1] = 0x80000000800000;
    v99 = vnegq_f32(v21);
    v92 = 0;
    v93 = &v92;
    v94 = 0x3020000000;
    v95 = v21;
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 0;
    if (*(a2 + 34) == 4)
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v22 = a3[1];
      v70 = *a3;
      v71 = v22;
      v23 = a2[1];
      v72 = *a2;
      v73 = v23;
      v24 = a2[3];
      v26 = *a2;
      v25 = a2[1];
      v74 = a2[2];
      v75 = v24;
      v69[2] = sub_1AF282CC4;
      v69[3] = &unk_1E7A7DC98;
      v77 = v20 == 1;
      v69[4] = &v96;
      v69[5] = &v92;
      v76 = a1;
      v69[6] = &v86;
      v69[7] = &v82;
      v78 = v26;
      v79 = v25;
      v27 = a2[3];
      v80 = a2[2];
      v81 = v27;
      sub_1AF1A80E4(&v78, v69, v27);
    }

    else
    {
      v91 = 0;
      v90 = 0;
      if (*(a2 + 4))
      {
        v28 = 0;
        v29.i64[0] = 0x80000000800000;
        v29.i64[1] = 0x80000000800000;
        v66 = vnegq_f32(v29);
        do
        {
          v30 = a2[1];
          v78 = *a2;
          v79 = v30;
          v31 = a2[3];
          v80 = a2[2];
          v81 = v31;
          sub_1AF282A64(&v78, v28, &v90, &v90 + 1, &v91);
          if (v20 == 1)
          {
            v35 = *(a3 + 22);
            v36 = *a3 + (v90 * v35);
            v37.i64[0] = *v36;
            v37.i64[1] = *(v36 + 8);
            v38 = *a3 + (HIDWORD(v90) * v35);
            v39.i64[0] = *v38;
            v39.i64[1] = *(v38 + 8);
            v40 = *a3 + (v91 * v35);
            v41.i64[0] = *v40;
            v41.i64[1] = *(v40 + 8);
          }

          else
          {
            *v42.i64 = sub_1AF279750(*(a3 + 20), (*a3 + v90 * *(a3 + 22)), v32, v33, v34);
            v68 = v42;
            *v45.i64 = sub_1AF279750(*(a3 + 20), (*a3 + HIDWORD(v90) * *(a3 + 22)), v42, v43, v44);
            v67 = v45;
            *v41.i64 = sub_1AF279750(*(a3 + 20), (*a3 + v91 * *(a3 + 22)), v45, v46, v47);
            v39 = v67;
            v37 = v68;
          }

          v48 = v97;
          v97[2] = vminnmq_f32(vminnmq_f32(vminnmq_f32(v97[2], v37), v39), v41);
          v49 = v93;
          v93[2] = vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v93[2], v37), v39), v41);
          v50 = *(v87 + 6) + 1;
          *(v87 + 6) = v50;
          if (v50 > 0x1F || (v51 = *(a2 + 4), v28 >= v51 - 1))
          {
            v52 = *(a1 + 208);
            v53 = *(v83 + 6);
            *(v83 + 6) = v53 + 1;
            v54 = (v52 + 32 * v53);
            v55 = v48[2];
            v56 = v49[2];
            v55.i32[3] = 1.0;
            v56.i32[3] = 1.0;
            v57.i64[0] = 0x3F0000003F000000;
            v57.i64[1] = 0x3F0000003F000000;
            *v54 = vmulq_f32(vaddq_f32(v55, v56), v57);
            v54[1] = vmulq_f32(vsubq_f32(v56, v55), v57);
            v97[2] = v66;
            v55.i64[0] = 0x80000000800000;
            v55.i64[1] = 0x80000000800000;
            v93[2] = v55;
            *(v87 + 6) = 0;
            v51 = *(a2 + 4);
          }

          ++v28;
        }

        while (v28 < v51);
      }
    }

    if (*(v83 + 6) != *(a1 + 216))
    {
      v58 = sub_1AF0D5194(v18, v19);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF2490(v58, v59, v60, v61, v62, v63, v64, v65);
      }
    }

    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v92, 8);
    _Block_object_dispose(&v96, 8);
    _Block_object_dispose(&v86, 8);
    result = *(a1 + 208);
LABEL_5:
    *a4 = *(a1 + 216);
    return result;
  }

  return 0;
}

void sub_1AF282A14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 256), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_1AF282A64(uint64_t *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 34);
  v10 = 3;
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (a2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = v9 != 5;
  if (v9 == 1)
  {
    v13 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (v9 != 1)
  {
    v12 = 1;
  }

  v14 = v9 == 0;
  if (*(a1 + 34))
  {
    v15 = 1;
  }

  else
  {
    v15 = 3;
  }

  if (*(a1 + 34))
  {
    v10 = v13;
    v16 = v11;
  }

  else
  {
    v16 = 2;
  }

  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v12;
  }

  v18 = *a1;
  if (!*a1)
  {
    *a3 = v10 * a2;
    *a4 = v17 + v15 * a2;
    v29 = v16 + v15 * a2;
LABEL_33:
    *a5 = v29;
    return;
  }

  v19 = *(a1 + 35);
  v20 = a1[6];
  v21 = a1[7];
  v22 = v20 + v10 * a2 * v21;
  v23 = v15 * a2;
  v24 = v20 + v21 * (v17 + v15 * a2);
  v25 = v20 + v21 * (v16 + v23);
  if (v25 <= v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = v25;
  }

  if (v24 <= v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = v24;
  }

  if (a1[1] < (v19 + v19 * v27))
  {
    v28 = sub_1AF0D5194(1, a2);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = a1[1];
      v32 = *(a1 + 35);
      v33 = 136315650;
      v34 = "CFXIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
      v35 = 1024;
      v36 = v27;
      v37 = 2048;
      v38 = v31 / v32;
      _os_log_error_impl(&dword_1AF0CE000, v28, OS_LOG_TYPE_ERROR, "Error: %s - index (%u) out of bounds (%lu)", &v33, 0x1Cu);
    }

    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    return;
  }

  switch(v19)
  {
    case 4:
      *a3 = *(v18 + 4 * v22);
      *a4 = *(v18 + 4 * v24);
      v29 = *(v18 + 4 * v25);
      goto LABEL_33;
    case 2:
      *a3 = *(v18 + 2 * v22);
      *a4 = *(v18 + 2 * v24);
      v29 = *(v18 + 2 * v25);
      goto LABEL_33;
    case 1:
      *a3 = *(v18 + v22);
      *a4 = *(v18 + v24);
      v29 = *(v18 + v25);
      goto LABEL_33;
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  v30 = sub_1AF0D5194(1, a2);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDDC54C(a1 + 35, v30);
  }
}

float32x4_t sub_1AF282CC4(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, float32x4_t result, float32x4_t a6, float a7)
{
  if (*(a1 + 168))
  {
    if (a4)
    {
      v10 = a4;
      result.i32[3] = 0;
      do
      {
        v11 = *a3++;
        v12 = *(a1 + 64) + v11 * *(a1 + 86);
        v13.i64[0] = *v12;
        v13.i32[2] = *(v12 + 8);
        v13.i32[3] = result.i32[3];
        *(*(*(a1 + 32) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 32) + 8) + 32), v13);
        *(*(*(a1 + 40) + 8) + 32) = vmaxnmq_f32(*(*(*(a1 + 40) + 8) + 32), v13);
        result = v13;
        --v10;
      }

      while (v10);
    }
  }

  else if (a4)
  {
    v14 = a4;
    do
    {
      v15 = *a3++;
      *v16.i64 = sub_1AF279750(*(a1 + 84), (*(a1 + 64) + v15 * *(a1 + 86)), result, a6.f32[0], a7);
      *(*(*(a1 + 32) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 32) + 8) + 32), v16);
      v17 = *(*(a1 + 40) + 8);
      a6 = v17[2];
      result = vmaxnmq_f32(a6, v16);
      v17[2] = result;
      --v14;
    }

    while (v14);
  }

  if (++*(*(*(a1 + 48) + 8) + 24) > 0x1Fu || *(a1 + 112) - 1 <= a2)
  {
    v18 = *(*(a1 + 160) + 208);
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 24);
    *(v19 + 24) = v20 + 1;
    v21 = (v18 + 32 * v20);
    v22 = *(*(*(a1 + 32) + 8) + 32);
    v23 = *(*(*(a1 + 40) + 8) + 32);
    v22.i32[3] = 1.0;
    v23.i32[3] = 1.0;
    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    *v21 = vmulq_f32(vaddq_f32(v22, v23), v24);
    v21[1] = vmulq_f32(vsubq_f32(v23, v22), v24);
    result.i64[0] = 0x80000000800000;
    result.i64[1] = 0x80000000800000;
    *(*(*(a1 + 32) + 8) + 32) = vnegq_f32(result);
    *(*(*(a1 + 40) + 8) + 32) = result;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  return result;
}

BOOL sub_1AF282E70(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v6 = *(a3 + 248);
  v79 = *(a3 + 232);
  v80 = v6;
  v7 = *(a3 + 280);
  v81 = *(a3 + 264);
  v82 = v7;
  if ((*(a3 + 8) & 8) != 0)
  {
    v8 = *(a3 + 296) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0;
  v10 = *(a3 + 223);
  v11 = *(a3 + 297);
  v73 = *(a3 + 64);
  v77 = *(a3 + 80);
  v12 = *(a3 + 96);
  v84 = 0;
  v83 = 0;
  v13 = a2 - a1;
  if (a2 > a1)
  {
    v14 = *(&v12 + 3);
    v9 = 1;
    v15 = a1;
    v76 = a2;
    do
    {
      v78[0] = v79;
      v78[1] = v80;
      v78[2] = v81;
      v78[3] = v82;
      if (v11)
      {
        v16 = (&v83 + 4);
        v17 = &v83;
      }

      else
      {
        v16 = &v83;
        v17 = (&v83 + 4);
      }

      sub_1AF282A64(v78, v15, v16, v17, &v84);
      v21 = v3 + (v83 * v5);
      if (v10 == 1)
      {
        v23.i64[0] = *v21;
        v22 = v3 + (HIDWORD(v83) * v5);
        v24.i64[0] = *v22;
        v23.i64[1] = *(v21 + 8);
        v24.i64[1] = *(v22 + 8);
        v25 = v3 + (v84 * v5);
        v26.i64[0] = *v25;
        v26.i64[1] = *(v25 + 8);
      }

      else
      {
        *v27.i64 = sub_1AF279750(v4, v21, v18, v19, v20);
        v75 = v27;
        *v30.i64 = sub_1AF279750(v4, (v3 + (HIDWORD(v83) * v5)), v27, v28, v29);
        v74 = v30;
        *v26.i64 = sub_1AF279750(v4, (v3 + (v84 * v5)), v30, v31, v32);
        v24 = v74;
        v23 = v75;
      }

      v33 = vsubq_f32(v24, v23);
      v34 = vsubq_f32(v26, v23);
      v35 = vnegq_f32(v33);
      v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v35), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
      v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
      v38 = vmulq_f32(v36, v36);
      v38.f32[0] = v38.f32[1] + (v38.f32[2] + v38.f32[0]);
      v39 = vdupq_lane_s32(*v38.f32, 0);
      v39.i32[3] = 0;
      v40 = vrsqrteq_f32(v39);
      v41 = vmulq_f32(v40, vrsqrtsq_f32(v39, vmulq_f32(v40, v40)));
      v42 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v38.f32[0] != 0.0)), 0x1FuLL));
      v42.i32[3] = 0;
      v44 = vbslq_s8(vcltzq_s32(v42), vmulq_f32(vmulq_f32(v41, vrsqrtsq_f32(v39, vmulq_f32(v41, v41))), v37), v37);
      v43 = vmulq_f32(v23, v44);
      v44.n128_f32[3] = -(v43.f32[2] + vaddv_f32(*v43.f32));
      v45 = vmulq_f32(v77, v44);
      v46 = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
      if (v8)
      {
        if (v46 >= 0.0)
        {
          goto LABEL_25;
        }
      }

      else if (v46 == 0.0)
      {
        goto LABEL_25;
      }

      v47 = vmulq_f32(v73, v44);
      v48 = -vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL))) / v46;
      if (v48 >= 0.0 && v48 <= v14)
      {
        v50 = vmlaq_n_f32(v73, v77, v48);
        v51 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v35), vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL), v34);
        v52 = vmulq_f32(v51, v51);
        v52.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
        v35.i64[0] = 0;
        v35.i32[2] = 0;
        if (fabsf(v52.f32[0]) >= 1.1755e-38)
        {
          v53 = vsubq_f32(v26, v50);
          v54 = vsubq_f32(v24, v50);
          v55 = vsubq_f32(v23, v50);
          v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
          v57 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
          v58 = vmlaq_f32(vmulq_f32(v57, vnegq_f32(v54)), v56, v53);
          v59 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
          v60 = vmlaq_f32(vmulq_f32(v59, vnegq_f32(v53)), v57, v55);
          v61 = vmlaq_f32(vmulq_f32(v56, vnegq_f32(v55)), v59, v54);
          v62 = vmulq_f32(v51, v58);
          v63 = vmulq_f32(v51, v60);
          v64 = vmulq_f32(v51, v61);
          v65 = vdupq_laneq_s32(v63, 2);
          v66 = vzip1q_s32(vzip1q_s32(v62, v64), v63);
          v67 = vtrn2q_s32(v62, v63);
          v67.i32[2] = v64.i32[1];
          v68 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v62, v64), v65), vaddq_f32(v66, v67)), vdupq_lane_s32(*v52.f32, 0));
          v69.i64[0] = 0xBF000000BF000000;
          v69.i64[1] = 0xBF000000BF000000;
          v70 = vabsq_f32(vaddq_f32(v68, v69));
          v69.i64[0] = 0x3F0000003F000000;
          v69.i64[1] = 0x3F0000003F000000;
          v35 = vcgeq_f32(v69, v70);
        }

        v35.i32[3] = v35.i32[2];
        if ((vminvq_u32(v35) & 0x80000000) != 0)
        {
          sub_1AF282124(a3, v15, 0, 1, 2, v48, v50, v44);
          if ((*(a3 + 8) & 0x100) != 0)
          {
            return v9;
          }
        }
      }

LABEL_25:
      v9 = ++v15 < v76;
      --v13;
    }

    while (v13);
  }

  return v9;
}

uint64_t sub_1AF28328C(unsigned int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v32[0] = a1;
  v32[1] = a2 - a1;
  v6 = *(a3 + 223) == 1;
  if ((*(a3 + 8) & 8) != 0)
  {
    v7 = *(a3 + 296) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 297);
  v9 = *(a3 + 80);
  v17 = *(a3 + 64);
  v18 = v9;
  v19 = *(a3 + 96);
  v28 = 0;
  v29 = &v27 + 1;
  v30 = 0x2020000000;
  v31 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF2833E0;
  v16[3] = &unk_1E7A7DCC0;
  v24 = v8;
  v25 = v6;
  v23 = v5;
  v26 = v4;
  v27 = v7 & 1;
  v21 = v3;
  v22 = a3;
  v20 = &v27 + 1;
  v11 = *(a3 + 232);
  v12 = *(a3 + 248);
  v13 = v32;
  v14 = 1;
  *v15 = *(a3 + 266);
  *&v15[14] = *(a3 + 280);
  sub_1AF1AA060(&v11, v16, *&v15[14]);
  _Block_object_dispose(&v27 + 1, 8);
  return 0;
}

void sub_1AF2833E0(float32x4_t *a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5, float32x4_t a6, float32x4_t a7, int8x16_t a8)
{
  v12 = 0;
  v13 = (a4 - 2);
  v14 = a3 + 4;
  while (v13 != v12)
  {
    v15 = (a1[6].i8[12] ? a3 : v14);
    v16 = (a1[6].i8[12] ? v14 : a3);
    v17 = *v16;
    v18 = *v15;
    v19 = *(a3 + 4 * (v12 + 2));
    if (a1[6].i8[13] == 1)
    {
      v20 = a1[5].i64[1];
      v21 = a1[6].i32[2];
      v22 = v20 + (v21 * v17);
      v23.i64[0] = *v22;
      v23.i64[1] = *(v22 + 8);
      v24 = v20 + (v21 * v18);
      v25.i64[0] = *v24;
      v25.i64[1] = *(v24 + 8);
      v26 = v20 + (v21 * v19);
      a6.i64[0] = *v26;
      a6.i32[2] = *(v26 + 8);
      a6.i32[3] = 0;
    }

    else
    {
      *v27.i64 = sub_1AF279750(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v17)), a6, a7.f32[0], *a8.i32);
      v71 = v27;
      *v30.i64 = sub_1AF279750(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v18)), v27, v28, v29);
      v70 = v30;
      *a6.i64 = sub_1AF279750(a1[6].u8[14], (a1[5].i64[1] + (a1[6].i32[2] * v19)), v30, v31, v32);
      v25 = v70;
      v23 = v71;
    }

    v33 = vsubq_f32(v25, v23);
    v34 = vsubq_f32(a6, v23);
    v35 = vnegq_f32(v33);
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v35), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v37 = vmulq_f32(v36, v36);
    v37.f32[0] = v37.f32[1] + (v37.f32[2] + v37.f32[0]);
    v38 = vdupq_lane_s32(*v37.f32, 0);
    v39 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v38.i32[3] = 0;
    v40 = vrsqrteq_f32(v38);
    v41 = vmulq_f32(v40, vrsqrtsq_f32(v38, vmulq_f32(v40, v40)));
    v42 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v37.f32[0] != 0.0)), 0x1FuLL));
    v42.i32[3] = 0;
    a8 = vbslq_s8(vcltzq_s32(v42), vmulq_f32(v39, vmulq_f32(v41, vrsqrtsq_f32(v38, vmulq_f32(v41, v41)))), v39);
    v43 = vmulq_f32(v23, a8);
    *&a8.i32[3] = -(v43.f32[2] + vaddv_f32(*v43.f32));
    v44 = a1[3];
    v45 = vmulq_f32(a8, v44);
    v46 = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
    if (a1[6].i8[15] == 1)
    {
      if (v46 >= 0.0)
      {
        return;
      }
    }

    else if (v46 == 0.0)
    {
      return;
    }

    v47 = a1[2];
    v48 = vmulq_f32(a8, v47);
    v49 = -vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL))) / v46;
    if (v49 < 0.0 || v49 > a1[4].f32[3])
    {
      break;
    }

    a7 = vmlaq_n_f32(v47, v44, v49);
    v51 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v35), vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL), v34);
    v52 = vmulq_f32(v51, v51);
    v52.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
    v35.i64[0] = 0;
    v35.i32[2] = 0;
    if (fabsf(v52.f32[0]) >= 1.1755e-38)
    {
      v53 = vsubq_f32(a6, a7);
      v54 = vsubq_f32(v25, a7);
      v55 = vsubq_f32(v23, a7);
      v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
      v57 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
      v58 = vmlaq_f32(vmulq_f32(v57, vnegq_f32(v54)), v56, v53);
      v59 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
      v60 = vmlaq_f32(vmulq_f32(v59, vnegq_f32(v53)), v57, v55);
      v61 = vmlaq_f32(vmulq_f32(v56, vnegq_f32(v55)), v59, v54);
      v62 = vmulq_f32(v51, v58);
      v63 = vmulq_f32(v51, v60);
      v64 = vmulq_f32(v51, v61);
      v65 = vdupq_laneq_s32(v63, 2);
      v66 = vzip1q_s32(vzip1q_s32(v62, v64), v63);
      v67 = vtrn2q_s32(v62, v63);
      v67.i32[2] = v64.i32[1];
      v68 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v62, v64), v65), vaddq_f32(v66, v67)), vdupq_lane_s32(*v52.f32, 0));
      v69.i64[0] = 0xBF000000BF000000;
      v69.i64[1] = 0xBF000000BF000000;
      a6 = vabsq_f32(vaddq_f32(v68, v69));
      v69.i64[0] = 0x3F0000003F000000;
      v69.i64[1] = 0x3F0000003F000000;
      v35 = vcgeq_f32(v69, a6);
    }

    v35.i32[3] = v35.i32[2];
    a6.i32[0] = vminvq_u32(v35);
    v14 += 4;
    ++v12;
    if (a6.i32[0] < 0)
    {
      sub_1AF282124(a1[6].i64[0], a2, 0, v12, v12 + 1, v49, a7, a8);
      if ((*(a1[6].i64[0] + 8) & 0x100) != 0)
      {
        *a5 = 1;
        *(*(a1[5].i64[0] + 8) + 24) = 1;
      }

      return;
    }
  }
}

BOOL sub_1AF283740(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v88 = *MEMORY[0x1E69E9840];
  v4 = *(a3 + 200);
  v74 = *(a3 + 220);
  v5 = *(a3 + 222);
  v6 = *(a3 + 248);
  v82 = *(a3 + 232);
  v83 = v6;
  v7 = *(a3 + 280);
  v84 = *(a3 + 264);
  v85 = v7;
  if ((*(a3 + 8) & 8) != 0)
  {
    v8 = *(a3 + 296) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  v80 = 0;
  v9 = *(a3 + 223);
  v10 = *(a3 + 297);
  v75 = *(a3 + 64);
  v78 = *(a3 + 80);
  v11 = *(a3 + 96);
  v87 = 0;
  v86 = 0;
  v12 = a2 - a1;
  if (a2 > a1)
  {
    v13 = *(&v11 + 3);
    v80 = 1;
    v14 = a1;
    v79 = a2;
    v73 = v8;
    do
    {
      v81[0] = v82;
      v81[1] = v83;
      v81[2] = v84;
      v81[3] = v85;
      if (v10)
      {
        v15 = (&v86 + 4);
        v16 = &v86;
      }

      else
      {
        v15 = &v86;
        v16 = (&v86 + 4);
      }

      sub_1AF282A64(v81, v14, v15, v16, &v87);
      v20 = HIDWORD(v86);
      v21 = v87;
      if (((*(*(a3 + 320) + HIDWORD(v86)) & *(*(a3 + 320) + v86)) & *(*(a3 + 320) + v87)) != 0)
      {
        goto LABEL_10;
      }

      v22 = v4 + (v86 * v5);
      if (v9 == 1)
      {
        v23.i64[0] = *v22;
        v23.i64[1] = *(v22 + 8);
        v24 = v4 + (HIDWORD(v86) * v5);
        v25.i64[0] = *v24;
        v25.i64[1] = *(v24 + 8);
        v26 = v4 + v87 * v5;
        v27.i64[0] = *v26;
        v27.i64[1] = *(v26 + 8);
      }

      else
      {
        *v28.i64 = sub_1AF279750(v74, v22, v17, v18, v19);
        v77 = v28;
        *v31.i64 = sub_1AF279750(v74, (v4 + (v20 * v5)), v28, v29, v30);
        v76 = v31;
        v8 = v73;
        *v27.i64 = sub_1AF279750(v74, (v4 + v21 * v5), v31, v32, v33);
        v25 = v76;
        v23 = v77;
      }

      v34 = vsubq_f32(v25, v23);
      v35 = vsubq_f32(v27, v23);
      v36 = vnegq_f32(v34);
      v37 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), v36), v35, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
      v38 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v39 = vmulq_f32(v37, v37);
      v39.f32[0] = v39.f32[1] + (v39.f32[2] + v39.f32[0]);
      v40 = vdupq_lane_s32(*v39.f32, 0);
      v40.i32[3] = 0;
      v41 = vrsqrteq_f32(v40);
      v42 = vmulq_f32(v41, vrsqrtsq_f32(v40, vmulq_f32(v41, v41)));
      v43 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v39.f32[0] != 0.0)), 0x1FuLL));
      v43.i32[3] = 0;
      v45 = vbslq_s8(vcltzq_s32(v43), vmulq_f32(vmulq_f32(v42, vrsqrtsq_f32(v40, vmulq_f32(v42, v42))), v38), v38);
      v44 = vmulq_f32(v23, v45);
      v45.n128_f32[3] = -(v44.f32[2] + vaddv_f32(*v44.f32));
      v46 = vmulq_f32(v78, v45);
      v47 = vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL)));
      if (v8)
      {
        if (v47 >= 0.0)
        {
          goto LABEL_10;
        }
      }

      else if (v47 == 0.0)
      {
        goto LABEL_10;
      }

      v48 = vmulq_f32(v75, v45);
      v49 = -vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL))) / v47;
      if (v49 >= 0.0 && v49 <= v13)
      {
        v51 = vmlaq_n_f32(v75, v78, v49);
        v52 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL), v36), vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v35);
        v53 = vmulq_f32(v52, v52);
        v53.f32[0] = v53.f32[2] + vaddv_f32(*v53.f32);
        v36.i64[0] = 0;
        v36.i32[2] = 0;
        if (fabsf(v53.f32[0]) >= 1.1755e-38)
        {
          v54 = vsubq_f32(v27, v51);
          v55 = vsubq_f32(v25, v51);
          v56 = vsubq_f32(v23, v51);
          v57 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
          v58 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
          v59 = vmlaq_f32(vmulq_f32(v58, vnegq_f32(v55)), v57, v54);
          v60 = vextq_s8(vextq_s8(v56, v56, 0xCuLL), v56, 8uLL);
          v61 = vmlaq_f32(vmulq_f32(v60, vnegq_f32(v54)), v58, v56);
          v62 = vmlaq_f32(vmulq_f32(v57, vnegq_f32(v56)), v60, v55);
          v63 = vmulq_f32(v52, v59);
          v64 = vmulq_f32(v52, v61);
          v65 = vmulq_f32(v52, v62);
          v66 = vdupq_laneq_s32(v64, 2);
          v67 = vzip1q_s32(vzip1q_s32(v63, v65), v64);
          v68 = vtrn2q_s32(v63, v64);
          v68.i32[2] = v65.i32[1];
          v69 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v63, v65), v66), vaddq_f32(v67, v68)), vdupq_lane_s32(*v53.f32, 0));
          v70.i64[0] = 0xBF000000BF000000;
          v70.i64[1] = 0xBF000000BF000000;
          v71 = vabsq_f32(vaddq_f32(v69, v70));
          v70.i64[0] = 0x3F0000003F000000;
          v70.i64[1] = 0x3F0000003F000000;
          v36 = vcgeq_f32(v70, v71);
        }

        v36.i32[3] = v36.i32[2];
        if ((vminvq_u32(v36) & 0x80000000) != 0)
        {
          sub_1AF282124(a3, v14, 0, 1, 2, v49, v51, v45);
          if ((*(a3 + 8) & 0x100) != 0)
          {
            return v80;
          }
        }
      }

LABEL_10:
      v80 = ++v14 < v79;
      --v12;
    }

    while (v12);
  }

  return v80;
}

uint64_t sub_1AF283B74(unsigned int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  v4 = *(a3 + 220);
  v5 = *(a3 + 222);
  v32[0] = a1;
  v32[1] = a2 - a1;
  v6 = *(a3 + 223) == 1;
  if ((*(a3 + 8) & 8) != 0)
  {
    v7 = *(a3 + 296) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 297);
  v9 = *(a3 + 80);
  v17 = *(a3 + 64);
  v18 = v9;
  v19 = *(a3 + 96);
  v28 = 0;
  v29 = &v27 + 1;
  v30 = 0x2020000000;
  v31 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1AF283CC8;
  v16[3] = &unk_1E7A7DCC0;
  v24 = v8;
  v25 = v6;
  v21 = a3;
  v22 = v3;
  v23 = v5;
  v26 = v4;
  v27 = v7 & 1;
  v20 = &v27 + 1;
  v11 = *(a3 + 232);
  v12 = *(a3 + 248);
  v13 = v32;
  v14 = 1;
  *v15 = *(a3 + 266);
  *&v15[14] = *(a3 + 280);
  sub_1AF1AA060(&v11, v16, *&v15[14]);
  _Block_object_dispose(&v27 + 1, 8);
  return 0;
}

void sub_1AF283CC8(float32x4_t *a1, unsigned int a2, uint64_t a3, int a4, _BYTE *a5, float32x4_t a6, float32x4_t a7, int8x16_t a8)
{
  v12 = 0;
  v13 = (a4 - 2);
  for (i = a3 + 4; v13 != v12; i += 4)
  {
    v15 = (a1[6].i8[12] ? a3 : i);
    v16 = (a1[6].i8[12] ? i : a3);
    v17 = *v16;
    v18 = *v15;
    v19 = *(a3 + 4 * (v12 + 2));
    if (((*(*(a1[5].i64[1] + 320) + v18) & *(*(a1[5].i64[1] + 320) + v17)) & *(*(a1[5].i64[1] + 320) + v19)) != 0)
    {
      break;
    }

    if (a1[6].i8[13] == 1)
    {
      v20 = a1[6].i64[0];
      v21 = a1[6].i32[2];
      v22 = v20 + (v21 * v17);
      v23.i64[0] = *v22;
      v23.i64[1] = *(v22 + 8);
      v24 = v20 + (v21 * v18);
      v25.i64[0] = *v24;
      v25.i64[1] = *(v24 + 8);
      v26 = v20 + (v21 * v19);
      a6.i64[0] = *v26;
      a6.i32[2] = *(v26 + 8);
      a6.i32[3] = 0;
    }

    else
    {
      *v27.i64 = sub_1AF279750(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v17)), a6, a7.f32[0], *a8.i32);
      v71 = v27;
      *v30.i64 = sub_1AF279750(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v18)), v27, v28, v29);
      v70 = v30;
      *a6.i64 = sub_1AF279750(a1[6].u8[14], (a1[6].i64[0] + (a1[6].i32[2] * v19)), v30, v31, v32);
      v25 = v70;
      v23 = v71;
    }

    v33 = vsubq_f32(v25, v23);
    v34 = vsubq_f32(a6, v23);
    v35 = vnegq_f32(v33);
    v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL), v35), v34, vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL));
    v37 = vmulq_f32(v36, v36);
    v37.f32[0] = v37.f32[1] + (v37.f32[2] + v37.f32[0]);
    v38 = vdupq_lane_s32(*v37.f32, 0);
    v39 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
    v38.i32[3] = 0;
    v40 = vrsqrteq_f32(v38);
    v41 = vmulq_f32(v40, vrsqrtsq_f32(v38, vmulq_f32(v40, v40)));
    v42 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v37.f32[0] != 0.0)), 0x1FuLL));
    v42.i32[3] = 0;
    a8 = vbslq_s8(vcltzq_s32(v42), vmulq_f32(v39, vmulq_f32(v41, vrsqrtsq_f32(v38, vmulq_f32(v41, v41)))), v39);
    v43 = vmulq_f32(v23, a8);
    *&a8.i32[3] = -(v43.f32[2] + vaddv_f32(*v43.f32));
    v44 = a1[3];
    v45 = vmulq_f32(a8, v44);
    v46 = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
    if (a1[6].i8[15] == 1)
    {
      if (v46 >= 0.0)
      {
        return;
      }
    }

    else if (v46 == 0.0)
    {
      return;
    }

    v47 = a1[2];
    v48 = vmulq_f32(a8, v47);
    v49 = -vaddv_f32(vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL))) / v46;
    if (v49 < 0.0 || v49 > a1[4].f32[3])
    {
      break;
    }

    a7 = vmlaq_n_f32(v47, v44, v49);
    v51 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v34, v34, 0xCuLL), v34, 8uLL), v35), vextq_s8(vextq_s8(v33, v33, 0xCuLL), v33, 8uLL), v34);
    v52 = vmulq_f32(v51, v51);
    v52.f32[0] = v52.f32[2] + vaddv_f32(*v52.f32);
    v35.i64[0] = 0;
    v35.i32[2] = 0;
    if (fabsf(v52.f32[0]) >= 1.1755e-38)
    {
      v53 = vsubq_f32(a6, a7);
      v54 = vsubq_f32(v25, a7);
      v55 = vsubq_f32(v23, a7);
      v56 = vextq_s8(vextq_s8(v54, v54, 0xCuLL), v54, 8uLL);
      v57 = vextq_s8(vextq_s8(v53, v53, 0xCuLL), v53, 8uLL);
      v58 = vmlaq_f32(vmulq_f32(v57, vnegq_f32(v54)), v56, v53);
      v59 = vextq_s8(vextq_s8(v55, v55, 0xCuLL), v55, 8uLL);
      v60 = vmlaq_f32(vmulq_f32(v59, vnegq_f32(v53)), v57, v55);
      v61 = vmlaq_f32(vmulq_f32(v56, vnegq_f32(v55)), v59, v54);
      v62 = vmulq_f32(v51, v58);
      v63 = vmulq_f32(v51, v60);
      v64 = vmulq_f32(v51, v61);
      v65 = vdupq_laneq_s32(v63, 2);
      v66 = vzip1q_s32(vzip1q_s32(v62, v64), v63);
      v67 = vtrn2q_s32(v62, v63);
      v67.i32[2] = v64.i32[1];
      v68 = vdivq_f32(vaddq_f32(vzip1q_s32(vzip2q_s32(v62, v64), v65), vaddq_f32(v66, v67)), vdupq_lane_s32(*v52.f32, 0));
      v69.i64[0] = 0xBF000000BF000000;
      v69.i64[1] = 0xBF000000BF000000;
      a6 = vabsq_f32(vaddq_f32(v68, v69));
      v69.i64[0] = 0x3F0000003F000000;
      v69.i64[1] = 0x3F0000003F000000;
      v35 = vcgeq_f32(v69, a6);
    }

    v35.i32[3] = v35.i32[2];
    a6.i32[0] = vminvq_u32(v35);
    ++v12;
    if (a6.i32[0] < 0)
    {
      sub_1AF282124(a1[5].i64[1], a2, 0, v12, v12 + 1, v49, a7, a8);
      if ((*(a1[5].i64[1] + 8) & 0x100) != 0)
      {
        *a5 = 1;
        *(*(a1[5].i64[0] + 8) + 24) = 1;
      }

      return;
    }
  }
}

BOOL sub_1AF284048(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v10 = a2;
  v11 = a1;
  v12 = *(a3 + 200);
  v13 = *(a3 + 222);
  v14 = *(a3 + 232);
  if (*(a3 + 280) != __PAIR128__(1, 0))
  {
    v15 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2508(v15);
    }
  }

  v16 = v10 - v11;
  if (v10 <= v11)
  {
    return 0;
  }

  else
  {
    v17 = v11;
    v18 = 1;
    v19.i64[0] = 0xBF000000BF000000;
    v19.i64[1] = 0xBF000000BF000000;
    v20.i64[0] = 0x3F0000003F000000;
    v20.i64[1] = 0x3F0000003F000000;
    v21 = 3 * v11;
    do
    {
      if (((*(*(a3 + 320) + *(v14 + 2 * (v21 + 1))) & *(*(a3 + 320) + *(v14 + 2 * v21))) & *(*(a3 + 320) + *(v14 + 2 * (v21 + 2)))) == 0)
      {
        v22 = v12 + *(v14 + 2 * v21) * v13;
        a7.i64[0] = *v22;
        a7.i32[2] = *(v22 + 8);
        v23 = v12 + *(v14 + 2 * (v21 + 1)) * v13;
        a8.i64[0] = *v23;
        a8.i32[2] = *(v23 + 8);
        v24 = v12 + *(v14 + 2 * (v21 + 2)) * v13;
        a9.i64[0] = *v24;
        a9.i32[2] = *(v24 + 8);
        v25 = vsubq_f32(a8, a7);
        v26 = vsubq_f32(a9, a7);
        v27 = vnegq_f32(v25);
        v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), v27), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
        v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        v30 = vmulq_f32(v28, v28);
        v30.f32[0] = v30.f32[1] + (v30.f32[2] + v30.f32[0]);
        v31 = vdupq_lane_s32(*v30.f32, 0);
        v31.i32[3] = 0;
        v32 = vrsqrteq_f32(v31);
        v33 = vmulq_f32(v32, vrsqrtsq_f32(v31, vmulq_f32(v32, v32)));
        v34 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v30.f32[0] != 0.0)), 0x1FuLL));
        v34.i32[3] = 0;
        v36 = vbslq_s8(vcltzq_s32(v34), vmulq_f32(vmulq_f32(v33, vrsqrtsq_f32(v31, vmulq_f32(v33, v33))), v29), v29);
        v35 = vmulq_f32(a7, v36);
        v36.n128_f32[3] = -(v35.f32[2] + vaddv_f32(*v35.f32));
        v37 = *(a3 + 80);
        v38 = vmulq_f32(v37, v36);
        v39 = vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)));
        if (v39 < 0.0)
        {
          v40 = *(a3 + 64);
          v41 = vmulq_f32(v40, v36);
          v42 = -vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL))) / v39;
          if (v42 >= 0.0 && v42 <= *(a3 + 108))
          {
            v44 = vmlaq_n_f32(v40, v37, v42);
            v45 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), v27), vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL), v26);
            v46 = vmulq_f32(v45, v45);
            v46.f32[0] = v46.f32[2] + vaddv_f32(*v46.f32);
            v27.i64[0] = 0;
            v27.i32[2] = 0;
            if (fabsf(v46.f32[0]) >= 1.1755e-38)
            {
              v47 = vsubq_f32(a9, v44);
              v48 = vsubq_f32(a8, v44);
              v49 = vsubq_f32(a7, v44);
              v50 = vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL);
              v51 = vextq_s8(vextq_s8(v47, v47, 0xCuLL), v47, 8uLL);
              v52 = vmlaq_f32(vmulq_f32(v51, vnegq_f32(v48)), v50, v47);
              v53 = vextq_s8(vextq_s8(v49, v49, 0xCuLL), v49, 8uLL);
              v54 = vmlaq_f32(vmulq_f32(v53, vnegq_f32(v47)), v51, v49);
              v55 = vmlaq_f32(vmulq_f32(v50, vnegq_f32(v49)), v53, v48);
              v56 = vmulq_f32(v45, v52);
              a9 = vmulq_f32(v45, v54);
              v57 = vmulq_f32(v45, v55);
              v58 = vzip2q_s32(v56, v57);
              v59 = vzip1q_s32(vzip1q_s32(v56, v57), a9);
              v60 = vtrn2q_s32(v56, a9);
              v60.i32[2] = v57.i32[1];
              v61 = vaddq_f32(vzip1q_s32(v58, vdupq_laneq_s32(a9, 2)), vaddq_f32(v59, v60));
              a8 = vdupq_lane_s32(*v46.f32, 0);
              a7 = vabsq_f32(vaddq_f32(vdivq_f32(v61, a8), v19));
              v27 = vcgeq_f32(v20, a7);
            }

            v27.i32[3] = v27.i32[2];
            if ((vminvq_u32(v27) & 0x80000000) != 0)
            {
              sub_1AF282124(a3, v17, 0, 1, 2, v42, v44, v36);
              v20.i64[0] = 0x3F0000003F000000;
              v20.i64[1] = 0x3F0000003F000000;
              v19.i64[0] = 0xBF000000BF000000;
              v19.i64[1] = 0xBF000000BF000000;
              if ((*(a3 + 8) & 0x100) != 0)
              {
                break;
              }
            }
          }
        }
      }

      v18 = ++v17 < v10;
      v21 += 3;
      --v16;
    }

    while (v16);
  }

  return v18;
}

BOOL sub_1AF28435C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v10 = a2;
  v11 = a1;
  v12 = *(a3 + 200);
  v13 = *(a3 + 222);
  v14 = *(a3 + 232);
  if (*(a3 + 280) != __PAIR128__(1, 0))
  {
    v15 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF25A0(v15);
    }
  }

  v16 = v10 - v11;
  if (v10 <= v11)
  {
    return 0;
  }

  else
  {
    v17 = v11;
    v18 = 1;
    v19 = 3 * v11;
    do
    {
      if (v14)
      {
        v20 = *(v14 + 2 * v19);
        v21 = *(v14 + 2 * (v19 + 1));
        v22 = *(v14 + 2 * (v19 + 2));
      }

      else
      {
        v20 = 3 * v17;
        v21 = 3 * v17 + 1;
        v22 = 3 * v17 + 2;
      }

      v23 = v12 + v20 * v13;
      a7.i64[0] = *v23;
      a7.i32[2] = *(v23 + 8);
      v24 = v12 + v21 * v13;
      a8.i64[0] = *v24;
      a8.i32[2] = *(v24 + 8);
      v25 = v12 + v22 * v13;
      a9.i64[0] = *v25;
      a9.i32[2] = *(v25 + 8);
      v26 = vsubq_f32(a8, a7);
      v27 = vsubq_f32(a9, a7);
      v28 = vnegq_f32(v26);
      v29 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), v28), v27, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL));
      v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
      v31 = vmulq_f32(v29, v29);
      v31.f32[0] = v31.f32[1] + (v31.f32[2] + v31.f32[0]);
      v32 = vdupq_lane_s32(*v31.f32, 0);
      v32.i32[3] = 0;
      v33 = vrsqrteq_f32(v32);
      v34 = vmulq_f32(v33, vrsqrtsq_f32(v32, vmulq_f32(v33, v33)));
      v35 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v31.f32[0] != 0.0)), 0x1FuLL));
      v35.i32[3] = 0;
      v37 = vbslq_s8(vcltzq_s32(v35), vmulq_f32(vmulq_f32(v34, vrsqrtsq_f32(v32, vmulq_f32(v34, v34))), v30), v30);
      v36 = vmulq_f32(a7, v37);
      v37.n128_f32[3] = -(v36.f32[2] + vaddv_f32(*v36.f32));
      v38 = *(a3 + 80);
      v39 = vmulq_f32(v38, v37);
      v40 = vaddv_f32(vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL)));
      if (v40 < 0.0)
      {
        v41 = *(a3 + 64);
        v42 = vmulq_f32(v41, v37);
        v43 = -vaddv_f32(vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL))) / v40;
        if (v43 >= 0.0 && v43 <= *(a3 + 108))
        {
          v45 = vmlaq_n_f32(v41, v38, v43);
          v46 = vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL), v28), vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), v27);
          v47 = vmulq_f32(v46, v46);
          v47.f32[0] = v47.f32[2] + vaddv_f32(*v47.f32);
          v28.i64[0] = 0;
          v28.i32[2] = 0;
          if (fabsf(v47.f32[0]) >= 1.1755e-38)
          {
            v48 = vsubq_f32(a9, v45);
            v49 = vsubq_f32(a8, v45);
            v50 = vsubq_f32(a7, v45);
            v51 = vextq_s8(vextq_s8(v49, v49, 0xCuLL), v49, 8uLL);
            v52 = vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL);
            v53 = vmlaq_f32(vmulq_f32(v52, vnegq_f32(v49)), v51, v48);
            v54 = vextq_s8(vextq_s8(v50, v50, 0xCuLL), v50, 8uLL);
            v55 = vmlaq_f32(vmulq_f32(v54, vnegq_f32(v48)), v52, v50);
            v56 = vmlaq_f32(vmulq_f32(v51, vnegq_f32(v50)), v54, v49);
            v57 = vmulq_f32(v46, v53);
            a9 = vmulq_f32(v46, v55);
            v58 = vmulq_f32(v46, v56);
            v59 = vzip2q_s32(v57, v58);
            v60 = vzip1q_s32(vzip1q_s32(v57, v58), a9);
            v61 = vtrn2q_s32(v57, a9);
            v61.i32[2] = v58.i32[1];
            v62 = vdivq_f32(vaddq_f32(vzip1q_s32(v59, vdupq_laneq_s32(a9, 2)), vaddq_f32(v60, v61)), vdupq_lane_s32(*v47.f32, 0));
            v61.i64[0] = 0xBF000000BF000000;
            v61.i64[1] = 0xBF000000BF000000;
            a7 = vabsq_f32(vaddq_f32(v62, v61));
            a8.i64[0] = 0x3F0000003F000000;
            a8.i64[1] = 0x3F0000003F000000;
            v28 = vcgeq_f32(a8, a7);
          }

          v28.i32[3] = v28.i32[2];
          if ((vminvq_u32(v28) & 0x80000000) != 0)
          {
            sub_1AF282124(a3, v17, 0, 1, 2, v43, v45, v37);
            if ((*(a3 + 8) & 0x100) != 0)
            {
              break;
            }
          }
        }
      }

      v18 = ++v17 < v10;
      v19 += 3;
      --v16;
    }

    while (v16);
  }

  return v18;
}

BOOL sub_1AF28466C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = sub_1AF1B1FE0(a2, a2);
  v10 = sub_1AF1B2C1C(a2, v9);
  v11 = sub_1AF1A4CE8(v10, 0);
  v12 = sub_1AF1A4C6C(v10, 0, 0);
  v85 = 0u;
  v86 = 0u;
  sub_1AF1AE1A8(v11, v13, &v85);
  if (!v85)
  {
    return 0;
  }

  v16 = sub_1AF1C7E8C(a1, v14);
  if (!v16)
  {
    v17 = sub_1AF0D5194(0, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2638(v17, v15, v18, v19, v20, v21, v22, v23);
    }
  }

  v83 = 0u;
  v84 = 0u;
  v24 = sub_1AF1AE1A8(v16, v15, &v83);
  if (BYTE7(v84) != 15 || BYTE8(v84) != 4)
  {
    v40 = sub_1AF0D5194(v24, v25);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF26B0();
    }

    return 0;
  }

  v44 = BYTE7(v86) == 1;
  v26 = *(a4 + 80);
  v80 = *(a4 + 64);
  v81 = v26;
  v82 = *(a4 + 96);
  v27 = sub_1AF1A3CCC(v10, v25);
  if (v27 < 1)
  {
    return 0;
  }

  v29 = 0;
  v28.n128_u64[0] = vdup_n_s16(a3);
  v30 = 1;
  v31.i64[0] = 0x80000000800000;
  v31.i64[1] = 0x80000000800000;
  v43 = vnegq_f32(v31);
  v28.n128_u64[0] = vuzp1_s8(v28.n128_u64[0], v28.n128_u64[0]);
  v42 = v28;
  do
  {
    *(a4 + 192) = v29;
    v32 = sub_1AF1A3D1C(v10, v29, 0);
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    sub_1AF1A767C(v32, v12, &v76);
    if (((v8 > 0) & ((*(a4 + 8) & 8) >> 3)) == 1)
    {
      v33 = sub_1AF1B2030(a2, v29 % v8);
      v35 = sub_1AF1A1224(v33, v34);
      v37 = sub_1AF1A1378(v33, v36);
    }

    else
    {
      v37 = 0;
      v35 = 0;
    }

    if ((BYTE2(v78) & 0xFA) == 0)
    {
      v74[0] = 0;
      v74[1] = v74;
      v74[2] = 0x2020000000;
      v75 = 0;
      v89[0] = 0;
      v89[1] = v89;
      v89[2] = 0x3020000000;
      v90 = v43;
      v87[0] = 0;
      v87[1] = v87;
      v87[2] = 0x3020000000;
      *&v38 = 0x80000000800000;
      *(&v38 + 1) = 0x80000000800000;
      v88 = v38;
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      v73 = 0;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v54 = v83;
      v55 = v84;
      v56 = v85;
      v57 = v86;
      v62 = v78;
      v63 = v79;
      v60 = v76;
      v61 = v77;
      v48 = v81;
      v49 = v82;
      v47 = v80;
      v46[2] = sub_1AF284A70;
      v46[3] = &unk_1E7A7DCE8;
      v67 = v37;
      v66 = v42.n128_u32[0];
      v68 = v44;
      v50 = v89;
      v51 = v87;
      v58 = &v92;
      v59 = &v91;
      v69 = v35;
      v64 = v29;
      v65 = a4;
      v52 = v74;
      v53 = &v70;
      v45[0] = v76;
      v45[1] = v77;
      v45[2] = v78;
      v45[3] = v79;
      sub_1AF1A9C98(v45, v46, v42);
      v39 = *(v71 + 24);
      _Block_object_dispose(&v70, 8);
      _Block_object_dispose(v87, 8);
      _Block_object_dispose(v89, 8);
      _Block_object_dispose(v74, 8);
      if (v39)
      {
        break;
      }
    }

    v30 = ++v29 < v27;
  }

  while (v27 != v29);
  return v30;
}

void sub_1AF284A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_1AF284A70(uint64_t a1, int a2, uint8x8_t a3, uint8x8_t a4, uint8x8_t a5, uint8x8_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, _BYTE *a13)
{
  v14 = a8;
  v17 = *(a1 + 276);
  v18 = v17 == 1;
  if (v17 == 1)
  {
    v19 = a11;
  }

  else
  {
    v19 = a10;
  }

  if (v18)
  {
    v20 = a10;
  }

  else
  {
    v20 = a11;
  }

  v21 = *(a1 + 112);
  v22 = *(a1 + 134);
  a3.i32[0] = *(v21 + (v19 * v22));
  v26 = vmovl_u8(a3);
  a4.i32[0] = *(v21 + (v20 * v22));
  a5.i32[0] = *(v21 + (v22 * a12));
  v23 = vmovl_u8(a5).u64[0];
  a6.i32[0] = *(a1 + 272);
  v24 = vmovl_u8(a6).u64[0];
  *v26.f32 = vorr_s8(vceq_s16(*v26.f32, v24), vceq_s16(*&vmovl_u8(a4), v24));
  v25 = vceq_s16(v23, v24);
  *v26.f32 = vorr_s8(*v26.f32, v25);
  *v26.f32 = vuzp1_s8(*v26.f32, *v26.f32);
  v26.i8[0] = vmaxv_u8(*v26.f32);
  if (v26.i8[0] < 0)
  {
    if (*(a1 + 277) == 1)
    {
      v28 = *(a1 + 144);
      v29 = *(a1 + 166);
      v30 = v28 + (v19 * v29);
      v31.i64[0] = *v30;
      v31.i64[1] = *(v30 + 8);
      v32 = v28 + (v20 * v29);
      v33.i64[0] = *v32;
      v33.i64[1] = *(v32 + 8);
      v34 = v28 + (v29 * a12);
      v35.i64[0] = *v34;
      v35.i64[1] = *(v34 + 8);
    }

    else
    {
      *v36.i64 = sub_1AF279750(*(a1 + 164), (*(a1 + 144) + v19 * *(a1 + 166)), v26, *v25.i32, *v23.i32);
      v57 = v36;
      *v39.i64 = sub_1AF279750(*(a1 + 164), (*(a1 + 144) + v20 * *(a1 + 166)), v36, v37, v38);
      v56 = v39;
      *v35.i64 = sub_1AF279750(*(a1 + 164), (*(a1 + 144) + *(a1 + 166) * a12), v39, v40, v41);
      v33 = v56;
      v31 = v57;
    }

    *(*(*(a1 + 80) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 80) + 8) + 32), v31);
    *(*(*(a1 + 80) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 80) + 8) + 32), v33);
    *(*(*(a1 + 80) + 8) + 32) = vminnmq_f32(*(*(*(a1 + 80) + 8) + 32), v35);
    *(*(*(a1 + 88) + 8) + 32) = vmaxnmq_f32(*(*(*(a1 + 88) + 8) + 32), v31);
    *(*(*(a1 + 88) + 8) + 32) = vmaxnmq_f32(*(*(*(a1 + 88) + 8) + 32), v33);
    *(*(*(a1 + 88) + 8) + 32) = vmaxnmq_f32(*(*(*(a1 + 88) + 8) + 32), v35);
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24))) = v31;
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24) + 1)) = v33;
    *(*(a1 + 176) + 16 * (3 * *(*(*(a1 + 96) + 8) + 24) + 2)) = v35;
    *(*(a1 + 184) + 4 * (*(*(*(a1 + 96) + 8) + 24))++) = a2;
  }

  v42 = *(*(a1 + 96) + 8);
  v43 = *(v42 + 24);
  if (v43 > 0x1F || v14 - 3 == a9 && *(a1 + 208) - 1 == a2)
  {
    *(v42 + 24) = 0;
    v44 = *(*(a1 + 80) + 8);
    v45 = v44[2];
    v46 = *(*(*(a1 + 88) + 8) + 32);
    v47.i64[0] = 0x80000000800000;
    v47.i64[1] = 0x80000000800000;
    v44[2] = vnegq_f32(v47);
    *(*(*(a1 + 88) + 8) + 32) = v47;
    v48 = *(a1 + 32);
    v49 = *(a1 + 64);
    v50 = vmulq_f32(vsubq_f32(v45, v48), v49);
    v51 = vmulq_f32(vsubq_f32(v46, v48), v49);
    v50.i32[3] = 0;
    v51.i32[3] = 0;
    v52 = vminnmq_f32(v50, v51);
    v53 = vmaxnmq_f32(v50, v51);
    v54 = fmaxf(fmaxf(v52.f32[0], v52.f32[2]), v52.f32[1]);
    if (fminf(fminf(v53.f32[0], v53.f32[2]), v53.f32[1]) >= v54 && v54 < COERCE_FLOAT(HIDWORD(*(a1 + 64))) && sub_1AF282328(*(a1 + 176), *(a1 + 184), v43, v48, *(a1 + 48), v49, a8, *(a1 + 278), *(a1 + 264)))
    {
      *(*(*(a1 + 104) + 8) + 24) = 1;
      *a13 = 1;
    }
  }
}

uint64_t sub_1AF284DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF1CA094(a1, *(a2 + 112));
  v5 = sub_1AF15B294(a1);
  v7 = sub_1AF1B75A0(*(a2 + 112), v6);
  v8 = v7;
  if ((*(a2 + 8) & 0x80) != 0 || v7)
  {
    v9 = sub_1AF1C7594(v5);
    v10 = sub_1AF1C7594(a1);
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      if (Count >= 1)
      {
        v13 = Count;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v16 = (v4 + 32 * v15);
          if ((vminvq_u32(vcgezq_f32(v16[1])) & 0x80000000) != 0)
          {
            v95 = *v16;
            v97 = v16[1];
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
            *(a2 + 120) = ValueAtIndex;
            v19 = sub_1AF1B9B04(ValueAtIndex, v18);
            v20 = *v19;
            v21 = *(v19 + 16);
            v22 = *(v19 + 32);
            v23 = *(v19 + 48);
            v24 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v23, v22, v95, 2), v21, *v95.f32, 1), *v19, v95.f32[0]);
            v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), vnegq_f32(v21)), v22, vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL));
            v26 = vmulq_f32(*v19, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
            *v25.i32 = vaddv_f32(*v26.f32);
            v27 = 1.0;
            if ((v26.f32[2] + *v25.i32) < 0.0)
            {
              v27 = -1.0;
            }

            v28 = vmulq_f32(v20, v20);
            v29 = vmulq_f32(v21, v21);
            v30 = vadd_f32(vzip1_s32(*v28.i8, *v29.i8), vzip2_s32(*v28.i8, *v29.i8));
            v31 = vextq_s8(v28, v28, 8uLL);
            *v31.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v31.f32, *&vextq_s8(v29, v29, 8uLL)), v30));
            v32 = vmulq_f32(v22, v22);
            v31.i32[2] = sqrtf(v32.f32[2] + vaddv_f32(*v32.f32));
            v33 = vmulq_n_f32(v31, v27);
            v34 = vdivq_f32(v20, vdupq_lane_s32(*v33.f32, 0));
            v35 = vdivq_f32(v21, vdupq_lane_s32(*v33.f32, 1));
            v36 = vdivq_f32(v22, vdupq_laneq_s32(v33, 2));
            v37 = vmulq_f32(v97, v33);
            v38 = *(a2 + 16);
            v39 = *(a2 + 32);
            v40 = vsubq_f32(v24, v38);
            v41 = vzip1q_s32(vzip1q_s32(v34, v36), v35);
            v42 = vtrn2q_s32(v34, v35);
            v42.i32[2] = v36.i32[1];
            v43 = vzip1q_s32(vzip2q_s32(v34, v36), vdupq_laneq_s32(v35, 2));
            v44 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v42, *v40.f32, 1), v41, v40.f32[0]), v43, v40, 2);
            v45 = vaddq_f32(v37, v44);
            v46 = vsubq_f32(v44, v37);
            v37.i32[3] = v97.i32[3];
            v101.columns[1] = v34;
            v101.columns[2] = v35;
            v47 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v42, *v39.f32, 1), v41, v39.f32[0]), v43, v39, 2);
            v49 = vdivq_f32(v45, v47);
            v48 = vdivq_f32(v46, v47);
            v49.i32[3] = 0;
            v48.i32[3] = 0;
            v101.columns[3] = v36;
            v102 = v37;
            v50 = vminnmq_f32(v49, v48);
            v51 = vmaxnmq_f32(v49, v48);
            v52 = fmaxf(fmaxf(*v50.i32, *&v50.i32[2]), *&v50.i32[1]);
            v53 = fminf(fminf(v51.f32[0], v51.f32[2]), v51.f32[1]);
            if (v53 >= v52 && v53 >= 0.0 && v52 < *(a2 + 60))
            {
              LODWORD(v55) = *v50.i32 < *&v50.i32[1];
              if (*v50.i32 < *&v50.i32[1])
              {
                v50.i32[0] = v50.i32[1];
              }

              if (*v50.i32 < *&v50.i32[2])
              {
                v55 = 2;
              }

              else
              {
                v55 = v55;
              }

              if (v52 >= 0.0)
              {
                v56 = v52;
              }

              else
              {
                v56 = v53;
              }

              v57 = v101.columns[v55 + 1];
              v100 = v47;
              v58 = *(&v100 | (4 * v55));
              *v50.i32 = -v58;
              v49.i32[0] = 1.0;
              v59.i64[0] = 0x8000000080000000;
              v59.i64[1] = 0x8000000080000000;
              v50.i32[0] = vbslq_s8(v59, v49, v50).u32[0];
              if (v58 == 0.0)
              {
                v60 = -0.0;
              }

              else
              {
                v60 = *v50.i32;
              }

              if ((*(a2 + 8) & 0x80) != 0)
              {
                v91 = v60;
                v92 = v57;
                v94 = v39;
                v96 = v56;
                v98 = v38;
                v73 = sub_1AF2812F4(v19);
                sub_1AF2813CC(v73, *(a2 + 112));
                v74 = *(v73 + 24);
                if (v74 != ValueAtIndex)
                {
                  if (v74)
                  {
                    CFRelease(v74);
                    *(v73 + 24) = 0;
                  }

                  if (ValueAtIndex)
                  {
                    v75 = CFRetain(ValueAtIndex);
                  }

                  else
                  {
                    v75 = 0;
                  }

                  *(v73 + 24) = v75;
                }

                v93 = vmulq_n_f32(v92, v91);
                v99 = vmlaq_n_f32(v98, v94, v96);
                v86 = *(a2 + 128);
                v87 = *(a2 + 144);
                v88 = *(a2 + 176);
                *(v73 + 144) = *(a2 + 160);
                *(v73 + 160) = v88;
                *(v73 + 112) = v86;
                *(v73 + 128) = v87;
                *(v73 + 96) = v99;
                v105 = __invert_f4(*(a2 + 128));
                v105.columns[3] = vmlaq_lane_f32(vmlaq_laneq_f32(v105.columns[3], v105.columns[2], v99, 2), v105.columns[1], *v99.f32, 1);
                v105.columns[2] = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v105.columns[2], v93, 2), v105.columns[1], *v93.f32, 1), v105.columns[0], v93.f32[0]);
                v105.columns[1] = vmulq_f32(v105.columns[2], v105.columns[2]);
                *&v89 = v105.columns[1].f32[2] + vaddv_f32(*v105.columns[1].f32);
                v105.columns[3] = vmlaq_n_f32(v105.columns[3], v105.columns[0], v99.f32[0]);
                *v105.columns[0].f32 = vrsqrte_f32(v89);
                *v105.columns[0].f32 = vmul_f32(*v105.columns[0].f32, vrsqrts_f32(v89, vmul_f32(*v105.columns[0].f32, *v105.columns[0].f32)));
                *(v73 + 64) = v105.columns[3];
                *(v73 + 80) = vmulq_n_f32(v105.columns[2], vmul_f32(*v105.columns[0].f32, vrsqrts_f32(v89, vmul_f32(*v105.columns[0].f32, *v105.columns[0].f32))).f32[0]);
                CFArrayAppendValue(*(a2 + 328), v73);
                CFRelease(v73);
                v85 = *(a2 + 8);
                if ((v85 & 0x200) != 0)
                {
                  *(a2 + 60) = v96;
                }

LABEL_43:
                v14 = 1;
                if ((v85 & 0x100) != 0)
                {
                  return v14 & 1;
                }

                goto LABEL_44;
              }

              v61 = 0;
              v62 = (v9 + (v15 << 6));
              v63 = v62[1];
              v64 = v62[2];
              v65 = v62[3];
              v103[0] = *v62;
              v103[1] = v63;
              v103[2] = v64;
              v103[3] = v65;
              memset(&v101, 0, sizeof(v101));
              do
              {
                v101.columns[v61] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(v103[v61])), v21, *&v103[v61], 1), v22, v103[v61], 2), v23, v103[v61], 3);
                ++v61;
              }

              while (v61 != 4);
              v104 = __invert_f4(v101);
              v66 = *(a2 + 16);
              v67 = *(a2 + 32);
              v68 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v104.columns[3], v104.columns[2], v66, 2), v104.columns[1], *v66.f32, 1), v104.columns[0], v66.f32[0]);
              if (COERCE_FLOAT(HIDWORD(*(a2 + 48))) >= 1.0e20)
              {
                v76 = vaddq_f32(v66, v67);
                v77 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v104.columns[3], v104.columns[2], v76, 2), v104.columns[1], *v76.f32, 1), v104.columns[0], v76.f32[0]), v68);
                v71 = vmulq_f32(v77, v77);
                *&v78 = v71.f32[2] + vaddv_f32(*v71.f32);
                *v71.f32 = vrsqrte_f32(v78);
                *v71.f32 = vmul_f32(*v71.f32, vrsqrts_f32(v78, vmul_f32(*v71.f32, *v71.f32)));
                v72 = vmulq_n_f32(v77, vmul_f32(*v71.f32, vrsqrts_f32(v78, vmul_f32(*v71.f32, *v71.f32))).f32[0]);
                v68.i32[3] = 1.0;
                v71.i32[0] = 2139095040;
              }

              else
              {
                v69 = vmlaq_laneq_f32(v66, v67, *(a2 + 48), 3);
                v70 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v104.columns[3], v104.columns[2], v69, 2), v104.columns[1], *v69.f32, 1), v104.columns[0], v69.f32[0]), v68);
                v71 = vmulq_f32(v70, v70);
                v68.i32[3] = 1.0;
                v71.f32[0] = sqrtf(v71.f32[2] + vaddv_f32(*v71.f32));
                v72 = vdivq_f32(v70, vdupq_lane_s32(*v71.f32, 0));
              }

              v79 = v72;
              v72.i32[3] = 0;
              __asm { FMOV            V3.4S, #1.0 }

              v84 = vdivq_f32(_Q3, v79);
              v84.i32[3] = v71.i32[0];
              *(a2 + 64) = v68;
              *(a2 + 80) = v72;
              *(a2 + 96) = v84;
              if (sub_1AF28466C(v5, v8, v15, a2))
              {
                v85 = *(a2 + 8);
                goto LABEL_43;
              }
            }
          }

LABEL_44:
          if (++v15 == v13)
          {
            return v14 & 1;
          }
        }
      }
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1AF2852EC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v245 = *MEMORY[0x1E69E9840];
  v1[14] = v3;
  v1[15] = 0;
  v1[24] = 0;
  v5 = sub_1AF1B9B04(v3, v1);
  v6 = v5[2];
  v7 = v5[3];
  v221 = v5[1];
  v224 = *v5;
  *(v2 + 128) = *v5;
  *(v2 + 144) = v221;
  v218 = v7;
  v220 = v6;
  *(v2 + 160) = v6;
  *(v2 + 176) = v7;
  v9 = sub_1AF1B92C8(v4, v8);
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AF1C9420(v9);
    if (sub_1AF1CA3DC(v11))
    {

      return sub_1AF284DA0(v10, v2);
    }

    *v13.columns[0].i64 = sub_1AF1CA3E8(v10, v11, v224, v221, v220, v218);
  }

  else
  {
    v13.columns[1] = v221;
    v13.columns[0] = v224;
    v13.columns[3] = v218;
    v13.columns[2] = v220;
  }

  v239 = 0.0;
  v247 = __invert_f4(v13);
  v15 = *(v2 + 16);
  v16 = *(v2 + 32);
  v17 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v247.columns[3], v247.columns[2], v15, 2), v247.columns[1], *v15.f32, 1), v247.columns[0], v15.f32[0]);
  if (COERCE_FLOAT(HIDWORD(*(v2 + 48))) >= 1.0e20)
  {
    v22 = vaddq_f32(v15, v16);
    v23 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v247.columns[3], v247.columns[2], v22, 2), v247.columns[1], *v22.f32, 1), v247.columns[0], v22.f32[0]), v17);
    v20 = vmulq_f32(v23, v23);
    *&v24 = v20.f32[2] + vaddv_f32(*v20.f32);
    *v20.f32 = vrsqrte_f32(v24);
    *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v24, vmul_f32(*v20.f32, *v20.f32)));
    v21 = vmulq_n_f32(v23, vmul_f32(*v20.f32, vrsqrts_f32(v24, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
    v17.i32[3] = 1.0;
    v20.i32[0] = 2139095040;
  }

  else
  {
    v18 = vmlaq_laneq_f32(v15, v16, *(v2 + 48), 3);
    v19 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v247.columns[3], v247.columns[2], v18, 2), v247.columns[1], *v18.f32, 1), v247.columns[0], v18.f32[0]), v17);
    v17.i32[3] = 1.0;
    v20 = vmulq_f32(v19, v19);
    v20.f32[0] = sqrtf(v20.f32[2] + vaddv_f32(*v20.f32));
    v21 = vdivq_f32(v19, vdupq_lane_s32(*v20.f32, 0));
  }

  v25 = v21;
  v21.i32[3] = 0;
  __asm { FMOV            V3.4S, #1.0 }

  v225 = _Q3;
  v30 = vdivq_f32(_Q3, v25);
  v30.i32[3] = v20.i32[0];
  *(v2 + 64) = v17;
  *(v2 + 80) = v21;
  *(v2 + 96) = v30;
  if ((*(v2 + 9) & 8) == 0)
  {
    v31 = sub_1AF1B75E8(v4, v14);
    if (v31)
    {
      v32 = v31;
      if (sub_1AF19CBB4(v31, v14) == 5)
      {
        if (sub_1AF19D3B0(v32, v14))
        {
          v33.i32[0] = *(v2 + 88);
          v34.i32[0] = 1.0;
          v35.i64[0] = 0x8000000080000000;
          v35.i64[1] = 0x8000000080000000;
          v34.i32[0] = vbslq_s8(v35, v34, v33).u32[0];
          if (*v33.i32 == 0.0)
          {
            *v34.i32 = 0.0;
          }

          v36 = *v34.i32;
          v37 = sub_1AF19D540(v32, v14);
          v234 = 0u;
          v235 = 0u;
          v233 = 0u;
          sub_1AF19D5A0(v32, v38, &v233);
          if (v233 > 2u)
          {
            if (v233 == 3)
            {
              v43 = *(v2 + 64);
              v40 = *(v2 + 80);
              v78 = vdivq_f32(v225, v234);
              v79 = vabsq_f32(v78);
              v79.i32[3] = 0;
              v80.i64[0] = 0x8000000080000000;
              v80.i64[1] = 0x8000000080000000;
              v81 = vorrq_s8(vandq_s8(v78, v80), vabsq_f32(vmaxnmq_f32(v79, xmmword_1AFE20A30)));
              v82 = v81.u32[0];
              v83.i32[0] = 0;
              v83.i64[1] = 0;
              v83.i32[1] = v81.i32[1];
              v84.i64[0] = 0;
              v84.i64[1] = v81.u32[2];
              v85 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, v84, v43, 2), v83.u64[0], *v43.f32, 1), v81.u32[0], v43.f32[0]);
              if (COERCE_FLOAT(HIDWORD(*(v2 + 96))) >= 1.0e20)
              {
                v90 = vaddq_f32(v43, v40);
                v91 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, v84, v90, 2), v83, *v90.f32, 1), v82, v90.f32[0]), v85);
                v88 = vmulq_f32(v91, v91);
                v90.f32[0] = v88.f32[2] + vaddv_f32(*v88.f32);
                *v88.f32 = vrsqrte_f32(v90.u32[0]);
                *v88.f32 = vmul_f32(*v88.f32, vrsqrts_f32(v90.u32[0], vmul_f32(*v88.f32, *v88.f32)));
                v89 = vmulq_n_f32(v91, vmul_f32(*v88.f32, vrsqrts_f32(v90.u32[0], vmul_f32(*v88.f32, *v88.f32))).f32[0]);
                v85.i32[3] = 1.0;
                v88.i32[0] = 2139095040;
              }

              else
              {
                v86 = vmlaq_laneq_f32(v43, v40, *(v2 + 96), 3);
                v87 = vsubq_f32(vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(0, v84, v86, 2), v83, *v86.f32, 1), v82, v86.f32[0]), v85);
                v85.i32[3] = 1.0;
                v88 = vmulq_f32(v87, v87);
                v88.f32[0] = sqrtf(v88.f32[2] + vaddv_f32(*v88.f32));
                v89 = vdivq_f32(v87, vdupq_lane_s32(*v88.f32, 0));
              }

              v92 = vmulq_f32(v85, v89);
              v93 = v92.f32[2] + vaddv_f32(*v92.f32);
              v94 = vmulq_f32(v85, v85);
              v95 = (v94.f32[2] + vaddv_f32(*v94.f32)) + -1.0;
              if (v95 <= 0.0 || v93 <= 0.0)
              {
                v96 = -(v95 - (v93 * v93));
                if (v96 >= 0.0)
                {
                  v97 = sqrtf(v96);
                  v98 = -v93 - v97;
                  v99 = v93 + v97;
                  if (v98 >= 0.0)
                  {
                    v99 = v98;
                  }

                  if (v99 <= v88.f32[0])
                  {
                    v89.i32[3] = 0;
                    v100 = vmlaq_n_f32(v85, v89, v99);
                    v101 = vsubq_f32(vmulq_f32(v234, v100), v43);
                    v102 = vmulq_f32(v101, v101);
                    v45 = sqrtf(v102.f32[2] + vaddv_f32(*v102.f32));
                    v239 = v45;
                    v103 = vdivq_f32(v100, v234);
                    v104 = vmulq_f32(v103, v103);
                    *&v105 = v104.f32[2] + vaddv_f32(*v104.f32);
                    *v104.f32 = vrsqrte_f32(v105);
                    *v104.f32 = vmul_f32(*v104.f32, vrsqrts_f32(v105, vmul_f32(*v104.f32, *v104.f32)));
                    v51 = vmulq_n_f32(v103, vmul_f32(*v104.f32, vrsqrts_f32(v105, vmul_f32(*v104.f32, *v104.f32))).f32[0]);
                    goto LABEL_70;
                  }
                }
              }
            }

            else if (v233 == 4)
            {
              v52 = v36 > 0.0 ? 1 : v37;
              if (v52 == 1)
              {
                v40 = *(v2 + 80);
                v53 = vmulq_f32(v40, xmmword_1AFE47470);
                v54 = vaddv_f32(vadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL)));
                if (v54 != 0.0)
                {
                  v43 = *(v2 + 64);
                  v55 = vmulq_f32(v43, xmmword_1AFE47470);
                  v45 = -vaddv_f32(vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL))) / v54;
                  if (v45 >= 0.0 && v45 <= *(v2 + 108))
                  {
                    if (v235)
                    {
                      v57 = 0;
                      v58 = 0;
                      v51.n128_u64[0] = 0;
                      v51.n128_u32[3] = 0;
                      v51.n128_f32[2] = -v36;
                      v59 = vmlaq_n_f32(v43, v40, v45);
                      v60 = vmulq_f32(v59, xmmword_1AFE20650);
                      v61 = vmulq_f32(v59, xmmword_1AFE20160);
                      v62 = vadd_f32(vzip1_s32(*&vextq_s8(v60, v60, 8uLL), *&vextq_s8(v61, v61, 8uLL)), vadd_f32(vzip1_s32(*v60.i8, *v61.i8), vzip2_s32(*v60.i8, *v61.i8)));
                      v63.i32[1] = v62.i32[1];
                      v63.i32[0] = -859915232;
                      v64 = vsub_f32(v63, v62);
                      v65 = -*&v64.i32[1];
                      v66 = vdup_lane_s32(v64, 0);
                      do
                      {
                        v67 = *(*(&v235 + 1) + 8 * v57);
                        if (v235 - 1 == v57)
                        {
                          v68 = 0;
                        }

                        else
                        {
                          v68 = v57 + 1;
                        }

                        v69 = *(*(&v235 + 1) + 8 * v68);
                        v70 = vsub_f32(v62, v67);
                        v71 = vsub_f32(v63, v67);
                        v72 = vsub_f32(v69, v67);
                        if (((-v72.f32[1] * v70.f32[0]) + (v72.f32[0] * v70.f32[1])) >= 0.0 == ((-v72.f32[1] * v71.f32[0]) + (v72.f32[0] * v71.f32[1])) < 0.0)
                        {
                          v73 = vsub_f32(v69, v62);
                          v74 = vsub_f32(v67, v62);
                          v75 = vcgez_f32(vmla_f32(vmul_n_f32(vzip1_s32(v74, v73), v65), vzip2_s32(v74, v73), v66));
                          v58 ^= veor_s8(v75, vdup_lane_s32(v75, 1)).u8[0];
                        }

                        ++v57;
                      }

                      while (v235 != v57);
                      v239 = v45;
                      if (v58)
                      {
                        goto LABEL_70;
                      }
                    }

                    else
                    {
                      v239 = v45;
                    }
                  }
                }
              }
            }
          }

          else if (v233 == 1)
          {
            if (v36 > 0.0)
            {
              v76 = 1;
            }

            else
            {
              v76 = v37;
            }

            if (v76 == 1)
            {
              v240 = 0u;
              v241 = xmmword_1AFE20180;
              v242 = xmmword_1AFE20150;
              v243.i64[0] = v234;
              v222 = *(v2 + 80);
              v226 = *(v2 + 64);
              v77 = sub_1AF286180(&v240, &v239, v226, v222, *(v2 + 96));
              v51.n128_u64[0] = 0;
              v51.n128_u32[3] = 0;
              v40 = v222;
              v43 = v226;
              if (v77)
              {
                v51.n128_f32[2] = -v36;
                v45 = v239;
                goto LABEL_70;
              }
            }
          }

          else if (v233 == 2)
          {
            v39 = v36 > 0.0 ? 1 : v37;
            if (v39 == 1)
            {
              v40 = *(v2 + 80);
              v41 = vmulq_f32(v40, xmmword_1AFE47460);
              v42 = vaddv_f32(vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL)));
              if (v42 != 0.0)
              {
                v43 = *(v2 + 64);
                v44 = vmulq_f32(v43, xmmword_1AFE47460);
                v45 = -vaddv_f32(vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL))) / v42;
                if (v45 >= 0.0 && v45 <= *(v2 + 108))
                {
                  v47 = vmlaq_n_f32(v43, v40, v45);
                  v48 = vmulq_f32(v47, xmmword_1AFE20150);
                  v49 = vmulq_f32(v47, xmmword_1AFE20160);
                  v50 = vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v48, v48, 8uLL), *&vextq_s8(v49, v49, 8uLL)), vadd_f32(vzip1_s32(*v48.i8, *v49.i8), vzip2_s32(*v48.i8, *v49.i8))), *&v234);
                  if (vaddv_f32(vmul_f32(v50, v50)) <= 1.0)
                  {
                    v51.n128_u64[0] = 0;
                    v51.n128_u32[3] = 0;
                    v51.n128_f32[2] = -v36;
                    v239 = v45;
LABEL_70:
                    sub_1AF282124(v2, 0, 0, 0, 0, v45, vmlaq_n_f32(v43, v40, v45), v51);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if ((*(v4 + 221) & 8) != 0)
  {
    v143 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(*(v2 + 160), *(v2 + 304), 2), *(v2 + 144), *(v2 + 304), 1), *(v2 + 128), COERCE_FLOAT(*(v2 + 304)));
    v144 = vmulq_f32(v143, v143);
    *&v145 = v144.f32[2] + vaddv_f32(*v144.f32);
    *v144.f32 = vrsqrte_f32(v145);
    *v144.f32 = vmul_f32(*v144.f32, vrsqrts_f32(v145, vmul_f32(*v144.f32, *v144.f32)));
    v146 = vmulq_n_f32(v143, vmul_f32(*v144.f32, vrsqrts_f32(v145, vmul_f32(*v144.f32, *v144.f32))).f32[0]);
    v147 = vmulq_f32(*(v2 + 176), v146);
    v148 = -(v147.f32[2] + vaddv_f32(*v147.f32));
    v149 = v146;
    v149.f32[3] = v148;
    v150 = vmulq_f32(*(v2 + 32), v149);
    v151 = vaddv_f32(vadd_f32(*v150.i8, *&vextq_s8(v150, v150, 8uLL)));
    if (v151 == 0.0)
    {
      return 0;
    }

    v152 = vmulq_f32(v149, *(v2 + 16));
    v153 = -vaddv_f32(vadd_f32(*v152.i8, *&vextq_s8(v152, v152, 8uLL))) / v151;
    if (v153 < 0.0 || v153 > *(v2 + 60))
    {
      return 0;
    }

    v227 = v146;
    v239 = v153;
  }

  else
  {
    v233 = 0u;
    v234 = 0u;
    if ((sub_1AF1B7A3C(v4, &v233) & 1) == 0)
    {
      return 0;
    }

    v106 = *(v2 + 128);
    v107 = *(v2 + 144);
    v108 = *(v2 + 160);
    v109 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(*(v2 + 176), v108, v233, 2), v107, *&v233, 1), v106, *&v233);
    v110 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL), vnegq_f32(v107)), v108, vextq_s8(vuzp1q_s32(v107, v107), v107, 0xCuLL));
    v111 = vmulq_f32(v106, vextq_s8(vuzp1q_s32(v110, v110), v110, 0xCuLL));
    _NF = (v111.f32[2] + vaddv_f32(*v111.f32)) < 0.0;
    v112 = 1.0;
    if (_NF)
    {
      v112 = -1.0;
    }

    v113 = vmulq_f32(v106, v106);
    v114 = vmulq_f32(v107, v107);
    v115 = vadd_f32(vzip1_s32(*v113.i8, *v114.i8), vzip2_s32(*v113.i8, *v114.i8));
    v116 = vextq_s8(v113, v113, 8uLL);
    *v116.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v116.f32, *&vextq_s8(v114, v114, 8uLL)), v115));
    v117 = vmulq_f32(v108, v108);
    v116.i32[2] = sqrtf(v117.f32[2] + vaddv_f32(*v117.f32));
    v118 = vmulq_n_f32(v116, v112);
    v119 = vdivq_f32(v106, vdupq_lane_s32(*v118.f32, 0));
    v120 = vdivq_f32(v107, vdupq_lane_s32(*v118.f32, 1));
    v121 = vdivq_f32(v108, vdupq_laneq_s32(v118, 2));
    v135 = vmulq_f32(v234, v118);
    v122 = *(v2 + 32);
    v123 = vsubq_f32(v109, *(v2 + 16));
    v124 = vzip1q_s32(vzip1q_s32(v119, v121), v120);
    v125 = vtrn2q_s32(v119, v120);
    v125.i32[2] = v121.i32[1];
    v126 = vzip1q_s32(vzip2q_s32(v119, v121), vdupq_laneq_s32(v120, 2));
    v127 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v125, *v123.f32, 1), v124, v123.f32[0]), v126, v123, 2);
    v128 = vaddq_f32(v135, v127);
    v129 = vsubq_f32(v127, v135);
    v135.i32[3] = HIDWORD(v234);
    v241 = v119;
    v242 = v120;
    v130 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v125, *v122.f32, 1), v124, v122.f32[0]), v126, v122, 2);
    v132 = vdivq_f32(v128, v130);
    v131 = vdivq_f32(v129, v130);
    v132.i32[3] = 0;
    v131.i32[3] = 0;
    v243 = v121;
    v244 = v135;
    v133 = vminnmq_f32(v132, v131);
    v134 = vmaxnmq_f32(v132, v131);
    v135.f32[0] = fmaxf(fmaxf(v133.f32[0], v133.f32[2]), v133.f32[1]);
    v136 = fminf(fminf(v134.f32[0], v134.f32[2]), v134.f32[1]);
    if (v136 < v135.f32[0])
    {
      return 0;
    }

    _NF = v136 >= v239 && v135.f32[0] < *(v2 + 60);
    if (!_NF)
    {
      return 0;
    }

    LODWORD(v138) = v133.f32[0] < v133.f32[1];
    if (v133.f32[0] < v133.f32[1])
    {
      v133.f32[0] = v133.f32[1];
    }

    if (v133.f32[0] < v133.f32[2])
    {
      v138 = 2;
    }

    else
    {
      v138 = v138;
    }

    if (v135.f32[0] >= v239)
    {
      v139 = v135.f32[0];
    }

    else
    {
      v139 = v136;
    }

    v239 = v139;
    v140 = *(&v241 + v138);
    v141 = (&v229 | (4 * v138));
    v229 = v130;
    v135.f32[0] = -*v141;
    v132.i32[0] = 1.0;
    v142.i64[0] = 0x8000000080000000;
    v142.i64[1] = 0x8000000080000000;
    v135.i32[0] = vbslq_s8(v142, v132, v135).u32[0];
    if (*v141 == 0.0)
    {
      v135.f32[0] = -0.0;
    }

    v227 = vmulq_n_f32(v140, v135.f32[0]);
  }

  v156 = sub_1AF1B75A0(v4, v14);
  if (!v156)
  {
    goto LABEL_157;
  }

  v158 = v156;
  v159 = sub_1AF1B2C1C(v156, v157);
  if (!v159)
  {
    goto LABEL_157;
  }

  v161 = v159;
  v162 = sub_1AF1A3CCC(v159, v160);
  if (v162 < 1)
  {
    goto LABEL_157;
  }

  v163 = v162;
  v164 = sub_1AF1A3D1C(v161, 0, 0);
  v166 = sub_1AF1A7034(v164, v165);
  v167 = sub_1AF1A72E0(v166);
  v169 = 0;
  if (!v167)
  {
    v170 = 1;
    do
    {
      v171 = v170;
      if (v163 == v170)
      {
        break;
      }

      v172 = sub_1AF1A3D1C(v161, v170, 0);
      v174 = sub_1AF1A7034(v172, v173);
      v175 = sub_1AF1A72E0(v174);
      v170 = v171 + 1;
    }

    while (!v175);
    v169 = v171 >= v163;
  }

  if (v169 || (*(v2 + 8) & 0x80) != 0 || (*(v4 + 221) & 8) != 0)
  {
LABEL_157:
    sub_1AF282244(v2, 0, 0, 0, 0, v239, vmlaq_n_f32(*(v2 + 16), *(v2 + 32), v239), v227);
    return 1;
  }

  v176 = sub_1AF1B1FE0(v158, v168);
  v177 = sub_1AF1A4CE8(v161, 0);
  if (!v177)
  {
    return 0;
  }

  v178 = v177;
  v179 = sub_1AF1A4C6C(v161, 0, 0);
  v237 = 0u;
  v238 = 0u;
  sub_1AF1AE1A8(v178, v180, &v237);
  if (!v237)
  {
    return 0;
  }

  v228 = v238;
  if (v238 <= 0xFFF)
  {
    v233 = v237;
    v234 = v238;
    sub_1AF27FFF8(&v233, &v240, *(v2 + 64), *(v2 + 80), *(v2 + 96), v182, v183);
    *(v2 + 320) = &v240;
  }

  v223 = BYTE7(v238);
  v184 = sub_1AF1A3CCC(v161, v181);
  if (v184 < 1)
  {
    return 0;
  }

  v185 = v184;
  v186 = 0;
  v155 = 1;
  v217 = v176;
  v219 = v179;
  while (1)
  {
    *(v2 + 192) = v186;
    v187 = sub_1AF1A3D1C(v161, v186, 0);
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    sub_1AF1A767C(v187, v179, &v233);
    if (sub_1AF170C98(v187) || !sub_1AF1A72E0(SBYTE2(v235)))
    {
      goto LABEL_155;
    }

    v188 = 0;
    if ((*(v2 + 8) & 8) != 0)
    {
      v189 = 0;
      if (v176 >= 1)
      {
        v190 = sub_1AF1B2030(v158, v186 % v176);
        v188 = sub_1AF1A1224(v190, v191);
        v192 = v190;
        v179 = v219;
        v189 = sub_1AF1A1378(v192, v193);
      }
    }

    else
    {
      v189 = 0;
    }

    v194 = v234;
    *(v2 + 232) = v233;
    *(v2 + 248) = v194;
    v195 = v236;
    *(v2 + 264) = v235;
    *(v2 + 280) = v195;
    v196 = v238;
    *(v2 + 200) = v237;
    v197 = v223 == 1;
    *(v2 + 296) = v188;
    *(v2 + 297) = v189 == 1;
    v198 = BYTE2(v235);
    if (BYTE2(v235))
    {
      v197 = 0;
    }

    *(v2 + 216) = v196;
    if (BYTE3(v235) != 2)
    {
      v197 = 0;
    }

    if (v189)
    {
      v197 = 0;
    }

    if (v228 <= 0xFFF)
    {
      _ZF = v198 == 4;
      v199 = sub_1AF283740;
      if (_ZF)
      {
        v199 = sub_1AF283B74;
      }

      if (v197)
      {
        v199 = sub_1AF284048;
        if (((*(v2 + 8) & 8) == 0) | v188 & 1)
        {
          v199 = sub_1AF283740;
        }
      }

      (v199)(0, v234, v2);
      goto LABEL_155;
    }

    if (v198 == 4)
    {
      v200 = sub_1AF28328C;
    }

    else
    {
      v200 = sub_1AF282E70;
    }

    if (v197)
    {
      if (((*(v2 + 8) & 8) == 0) | v188 & 1)
      {
        v200 = sub_1AF282E70;
      }

      else
      {
        v200 = sub_1AF28435C;
      }
    }

    if (v234 < 0x41)
    {
      v216 = (v200)(0);
      v179 = v219;
      if (v216)
      {
        return v155;
      }

      goto LABEL_155;
    }

    v232 = 0;
    v231[0] = v233;
    v231[1] = v234;
    v231[2] = v235;
    v231[3] = v236;
    v230[0] = v237;
    v230[1] = v238;
    v201 = sub_1AF2825F4(v187, v231, v230, &v232);
    if (v232)
    {
      break;
    }

LABEL_153:
    v176 = v217;
    v179 = v219;
LABEL_155:
    v155 = ++v186 < v185;
    if (v186 == v185)
    {
      return v155;
    }
  }

  v202 = v201;
  v203 = 0;
  v204 = v202 + 1;
  v205 = 32 * v232;
  while (1)
  {
    v206 = v204[-1];
    v207 = *(v2 + 64);
    v208 = *(v2 + 96);
    v209 = vmulq_f32(vsubq_f32(vsubq_f32(v206, *v204), v207), v208);
    v210 = vmulq_f32(vsubq_f32(vaddq_f32(v206, *v204), v207), v208);
    v209.i32[3] = 0;
    v210.i32[3] = 0;
    v211 = vminnmq_f32(v209, v210);
    v212 = vmaxnmq_f32(v209, v210);
    v213 = fmaxf(fmaxf(v211.f32[0], v211.f32[2]), v211.f32[1]);
    v214 = v203 + 32;
    v215 = fminf(fminf(v212.f32[0], v212.f32[2]), v212.f32[1]) >= v213 && v213 < COERCE_FLOAT(HIDWORD(*(v2 + 96)));
    if (v215 && v200())
    {
      return v155;
    }

    v204 += 2;
    v203 = v214;
    if (v205 == v214)
    {
      goto LABEL_153;
    }
  }
}

uint64_t sub_1AF286180(uint64_t a1, float *a2, float32x4_t a3, float32x4_t a4, __n128 a5)
{
  v5 = *(a1 + 16);
  v6 = vmulq_f32(v5, *a1);
  v7 = -(v6.f32[2] + vaddv_f32(*v6.f32));
  v8 = v5;
  v8.f32[3] = v7;
  v9 = vmulq_f32(a4, v8);
  v10 = vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)));
  if (v10 == 0.0)
  {
    return 0;
  }

  v11 = vmulq_f32(a3, v8);
  v12 = -vaddv_f32(vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL))) / v10;
  if (v12 < 0.0 || v12 > a5.n128_f32[3])
  {
    return 0;
  }

  v14 = vmlaq_n_f32(a3, a4, v12);
  v15 = *(a1 + 32);
  v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), vnegq_f32(v5)), v15, vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL));
  v17 = vsubq_f32(v14, *a1);
  v18 = vmulq_f32(v15, v17);
  v19 = vmulq_f32(v17, vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL));
  v20 = vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v19.i8), vzip2_s32(*v18.i8, *v19.i8)));
  v21 = *(a1 + 48);
  v22 = vcgt_f32(vneg_f32(v21), v20);
  if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  v23 = vcgt_f32(v20, v21);
  if ((vpmax_u32(v23, v23).u32[0] & 0x80000000) != 0)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = v12;
  }

  return 1;
}

uint64_t sub_1AF286274(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 4);
  if ((v5 & 0x1000) != 0)
  {
    if (sub_1AF1BC2F0(a2))
    {
      return 1;
    }

    v4 = *(a1 + 32);
    v5 = *(v4 + 4);
  }

  if ((v5 & 0x20) == 0)
  {
    goto LABEL_7;
  }

  if (sub_1AF1B7348(a2, a2))
  {
    return 1;
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 4);
LABEL_7:
  if ((~v5 & 0x30) == 0)
  {
    if (sub_1AF1B8A30(a2, a2) == 0.0)
    {
      return 1;
    }

    v4 = *(a1 + 32);
  }

  v7 = *v4;
  if ((sub_1AF1BAF14(a2, a2) & v7) != 0 && ((*(*(a1 + 32) + 10) >> sub_1AF1BC2B8(a2)) & 1) != 0 && (*(a2 + 220) & 8) != 0 && sub_1AF2852EC(a2) && (*(*(a1 + 32) + 8) & 0x100) != 0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF286358(_BOOL8 a1, float32x4_t *a2, CFDictionaryRef theDict)
{
  v5 = a1;
  if (!a1 && (v6 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDDFD68(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF26E4(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  memset(__src, 0, 448);
  sub_1AF281CB8(__src, theDict);
  __src[19] = sub_1AF1CFC48(v5, v21);
  *(&__src[20] + 1) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v23 = *a2;
  v24 = vsubq_f32(a2[1], *a2);
  if ((BYTE8(__src[0]) & 2) != 0)
  {
    v23.i32[3] = 1.0;
    v27 = vmulq_f32(v24, v24);
    v27.f32[0] = sqrtf(v27.f32[2] + vaddv_f32(*v27.f32));
    v26 = vdivq_f32(v24, vdupq_lane_s32(*v27.f32, 0));
  }

  else
  {
    v27 = vmulq_f32(v24, v24);
    *&v25 = v27.f32[2] + vaddv_f32(*v27.f32);
    *v27.f32 = vrsqrte_f32(v25);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v25, vmul_f32(*v27.f32, *v27.f32)));
    v26 = vmulq_n_f32(v24, vmul_f32(*v27.f32, vrsqrts_f32(v25, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    v23.i32[3] = 1.0;
    v27.i32[0] = 2139095040;
  }

  v28 = v26;
  v26.i32[3] = 0;
  __asm { FMOV            V4.4S, #1.0 }

  v83 = _Q4;
  v34 = vdivq_f32(_Q4, v28);
  v34.i32[3] = v27.i32[0];
  __src[1] = v23;
  __src[2] = v26;
  __src[3] = v34;
  v35 = sub_1AF1CF7E8(v5, v22);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"kHitTestRootNode");
  }

  else
  {
    Value = 0;
  }

  if (!Value)
  {
    Value = v35;
  }

  if ((BYTE8(__src[0]) & 1) != 0 && Value == v35)
  {
    v94.n128_u64[0] = 0;
    v92 = 0u;
    v93 = 0u;
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = sub_1AF286A88;
    v103[3] = &unk_1E7A7DD28;
    v103[4] = __src;
    sub_1AF1271CC(v103, &v92);
    *&v92 = *&__src[0];
    BYTE12(v93) = (WORD4(__src[0]) & 0x200) != 0;
    if ((BYTE8(__src[0]) & 0x20) != 0)
    {
      DWORD1(v93) |= 2u;
    }

    if ((BYTE8(__src[0]) & 0x40) != 0)
    {
      DWORD1(v93) |= 0x20u;
    }

    DWORD2(v93) = BYTE10(__src[0]);
    v38 = sub_1AF1D01D0(v5, v37);
    sub_1AF127D6C(v38);
    if ((WORD4(__src[0]) & 0x1000) != 0)
    {
      Count = CFArrayGetCount(*(&__src[20] + 1));
      if (Count >= 1)
      {
        v40 = Count;
        v41 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(&__src[20] + 1), v41);
          v44 = sub_1AF28133C(ValueAtIndex, v43);
          if (v44 && sub_1AF1BC2FC(v44))
          {
            CFArrayRemoveValueAtIndex(*(&__src[20] + 1), v41);
            --v40;
          }

          else
          {
            ++v41;
          }
        }

        while (v41 < v40);
      }
    }
  }

  else if (BYTE8(__src[0]))
  {
    *&v92 = MEMORY[0x1E69E9820];
    *(&v92 + 1) = 3221225472;
    *&v93 = sub_1AF286274;
    *(&v93 + 1) = &unk_1E7A7DD08;
    v94.n128_u64[0] = __src;
    sub_1AF1B94AC(Value, &v92);
  }

  else
  {
    sub_1AF2852EC(Value);
  }

  v45 = CFArrayGetCount(*(&__src[20] + 1));
  if (v45 < 1)
  {
    goto LABEL_38;
  }

  v46 = v45;
  for (i = 0; i != v46; ++i)
  {
    v48 = CFArrayGetValueAtIndex(*(&__src[20] + 1), i);
    v50 = vsubq_f32(*sub_1AF281524(v48, v49), *a2);
    v51 = vmulq_f32(v50, v50);
    v48[44] = v51.f32[2] + vaddv_f32(*v51.f32);
  }

  v52 = WORD4(__src[0]);
  if (v46 != 1 && (BYTE8(__src[0]) & 4) != 0)
  {
    v105.location = 0;
    v105.length = v46;
    CFArraySortValues(*(&__src[20] + 1), v105, sub_1AF286AF0, 0);
LABEL_38:
    v52 = WORD4(__src[0]);
  }

  if ((v52 & 0x400) != 0 && *&__src[27])
  {
    v102 = 0uLL;
    sub_1AF163FFC(&v102, 1.0, 0.0, 0.0, 1.0);
    v101 = 0uLL;
    sub_1AF163FFC(&v101, 0.0, 1.0, 0.0, 1.0);
    v100[1] = 0;
    v100[0] = 0;
    sub_1AF163FFC(v100, 0.0, 0.0, 1.0, 1.0);
    sub_1AF0FDC90(*&__src[27], v53, 5.0);
    v54 = CFArrayGetCount(*(&__src[20] + 1));
    if (v54 >= 1)
    {
      v55 = v54;
      for (j = 0; j != v55; ++j)
      {
        v58 = CFArrayGetValueAtIndex(*(&__src[20] + 1), j);
        v96 = 0;
        v97 = &v96;
        v98 = 0x2020000000;
        v99 = 1065353216;
        v59 = v58[1].n128_i64[0];
        if (v59)
        {
          v60 = sub_1AF1B75A0(v59, v57);
          if (v60)
          {
            v62 = sub_1AF1B2C1C(v60, v61);
            v63 = v62;
            if (v62)
            {
              v64 = sub_1AF1A4C6C(v62, 0, 0);
              v65 = sub_1AF1A4CE8(v63, 0);
              if (v65)
              {
                v66 = sub_1AF1A3D1C(v63, v58[2].n128_i64[0], 0);
                if (v66)
                {
                  v94 = 0u;
                  v95 = 0u;
                  v92 = 0u;
                  v93 = 0u;
                  sub_1AF1A767C(v66, v64, &v92);
                  v91[0] = v58[2].n128_u64[1];
                  v91[1] = 1;
                  *(&v93 + 1) = v91;
                  v94.n128_u16[0] = 1;
                  v85[0] = MEMORY[0x1E69E9820];
                  v85[1] = 3221225472;
                  v85[2] = sub_1AF286B08;
                  v85[3] = &unk_1E7A7DD50;
                  v89 = v65;
                  v88 = &v96;
                  memcpy(v86, __src, sizeof(v86));
                  v90 = v58;
                  v87 = v102;
                  v84[0] = v92;
                  v84[1] = v93;
                  v84[2] = v94;
                  v84[3] = v95;
                  sub_1AF1AA060(v84, v85, v94);
                }
              }
            }
          }
        }

        v67 = v58[6];
        v67.n128_u32[3] = *(v97 + 6);
        sub_1AF0FE168(*&__src[27], 0, &v101, v67);
        v68 = v58[7];
        v69 = v58[8];
        v70 = v58[9];
        v71 = vmulq_f32(v68, v68);
        v72 = vmulq_f32(v69, v69);
        v73 = vmulq_f32(v70, v70);
        v74 = vzip2q_s32(v71, v73);
        v75 = vzip1q_s32(vzip1q_s32(v71, v73), v72);
        v76 = vtrn2q_s32(v71, v72);
        v76.i32[2] = v73.i32[1];
        v77 = vaddq_f32(vzip1q_s32(v74, vdupq_laneq_s32(v72, 2)), vaddq_f32(v75, v76));
        v78 = vceqzq_f32(v77);
        v78.i32[3] = 0;
        v79 = vbslq_s8(vcltzq_s32(v78), v77, vdivq_f32(v83, v77));
        v80 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(vmulq_laneq_f32(v70, v79, 2), v58[5], 2), vmulq_lane_f32(v69, *v79.f32, 1), v58[5].n128_u64[0], 1), vmulq_n_f32(v68, v79.f32[0]), COERCE_FLOAT(*&v58[5]));
        v81 = vmulq_f32(v80, v80);
        v79.f32[0] = v81.f32[2] + vaddv_f32(*v81.f32);
        *v81.f32 = vrsqrte_f32(v79.u32[0]);
        *v81.f32 = vmul_f32(*v81.f32, vrsqrts_f32(v79.u32[0], vmul_f32(*v81.f32, *v81.f32)));
        sub_1AF0FDFAC(*&__src[27], 0, v100, v58[6], vaddq_f32(v58[6], vmulq_n_f32(v80, vmul_f32(*v81.f32, vrsqrts_f32(v79.u32[0], vmul_f32(*v81.f32, *v81.f32))).f32[0])));
        _Block_object_dispose(&v96, 8);
      }
    }

    sub_1AF0FDCFC(*&__src[27]);
  }

  return *(&__src[20] + 1);
}

uint64_t sub_1AF286A88(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v5 = result;
    for (i = 0; i < a3; ++i)
    {
      result = sub_1AF2852EC(*(a2 + 8 * i));
      if (result && (*(*(v5 + 32) + 8) & 0x100) != 0)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_1AF286AF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v3 = *(a2 + 176);
  if (v2 < v3)
  {
    return -1;
  }

  else
  {
    return v2 > v3;
  }
}

void sub_1AF286B08(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v27.f32[-4 * v7];
  if (v10)
  {
    v11 = 0uLL;
    v12 = v7;
    v13 = &v27 - v7;
    do
    {
      v27 = v11;
      v14 = *a3++;
      *v15.i64 = sub_1AF1AF084(*(a1 + 504), v14, v8);
      v16 = v27;
      *v13++ = v15;
      v11 = vaddq_f32(v16, v15);
      --v12;
    }

    while (v12);
    v15.f32[0] = a4;
    v17 = vdivq_f32(v11, vdupq_lane_s32(*v15.f32, 0));
    v18 = 3.4028e38;
    v19 = v7;
    v20 = &v27 - v7;
    do
    {
      v21 = *v20++;
      v22 = vsubq_f32(v21, v17);
      v23 = vmulq_f32(v22, v22);
      v18 = fminf(v18, sqrtf(v23.f32[2] + vaddv_f32(*v23.f32)));
      --v19;
    }

    while (v19);
    *(*(*(a1 + 496) + 8) + 24) = v18 * 0.5;
    do
    {
      v24 = v9[v19];
      v25 = v19 + 1;
      if (v7 - 1 == v19)
      {
        v26 = 0;
      }

      else
      {
        v26 = v19 + 1;
      }

      sub_1AF0FE080(*(a1 + 464), (*(a1 + 512) + 112), (a1 + 480), 0, v24, v9[v26]);
      v19 = v25;
    }

    while (v7 != v25);
  }

  else
  {
    *(*(*(a1 + 496) + 8) + 24) = 2130706431;
  }
}

uint64_t sub_1AF286C78(_BOOL8 a1, uint64_t a2, const __CFDictionary *a3, double a4, __n128 a5, __n128 a6)
{
  v8 = a1;
  v58 = *MEMORY[0x1E69E9840];
  if (a1 || (v40 = a4, v42 = a5, v9 = sub_1AF0D5194(0, a2), a1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT), a4 = v40, a5 = v42, !a1))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_12:
    v25 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF20EC(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    return 0;
  }

  sub_1AFDDFD68(v9, a2, v10, v11, v12, v13, v14, v15);
  a4 = v40;
  a5 = v42;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_4:
  __asm { FMOV            V3.4S, #1.0 }

  *&_Q3 = a4;
  a6.n128_f64[0] = a4;
  v45 = a6;
  v46 = _Q3;
  v21 = sub_1AF281AF8(&v45, 2, a2, v8, &v56, a5);
  v44[0] = v56;
  v44[1] = v57;
  if (!v21)
  {
    return 0;
  }

  v41 = v57;
  v43 = v56;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"kHitTestClipToZRange");
    if (Value)
    {
      if (!CFEqual(*MEMORY[0x1E695E4D0], Value))
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        if (sub_1AF27F12C(a2, &v45))
        {
          if (v45.n128_u8[0])
          {
            v34 = sub_1AF1B9AB4(a2, v23);
            v35 = vsubq_f32(v41, v43);
            v36 = vmulq_f32(v35, v35);
            *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
            *v36.f32 = vrsqrte_f32(v37);
            *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
            v38 = vmulq_n_f32(v35, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
            v39 = vmulq_f32(vsubq_f32(v43, v34), v38);
            v39.f32[0] = v39.f32[2] + vaddv_f32(*v39.f32);
            v24 = vmlsq_lane_f32(v43, v38, *v39.f32, 0);
          }

          else
          {
            v24 = *(sub_1AF1B9B04(a2, v23) + 48);
          }

          v44[0] = v24;
          return sub_1AF286358(v8, v44, a3);
        }

        return 0;
      }
    }
  }

  return sub_1AF286358(v8, v44, a3);
}

uint64_t sub_1AF286E6C(const void *a1, float32x4_t a2, float32x4_t a3)
{
  v4 = sub_1AF2812F4(a1);
  v6 = sub_1AF1B9B04(a1, v5);
  v20 = *v6;
  *(v4 + 112) = v6->columns[0];
  *(v4 + 128) = v20.columns[1];
  *(v4 + 144) = v20.columns[2];
  *(v4 + 160) = v20.columns[3];
  v21 = __invert_f4(v20);
  v16 = v21.columns[0];
  v17 = v21.columns[1];
  v15 = v21.columns[2];
  *(v4 + 96) = a2;
  *(v4 + 64) = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(v21.columns[3], v21.columns[2], a2, 2), v21.columns[1], *a2.f32, 1), v21.columns[0], a2.f32[0]);
  sub_1AF2813CC(v4, a1);
  v7 = vmlaq_n_f32(vmlaq_lane_f32(vmulq_laneq_f32(v15, a3, 2), v17, *a3.f32, 1), v16, a3.f32[0]);
  v8 = vmulq_f32(a3, a3);
  v9 = vmulq_f32(v7, v7);
  v9.f32[0] = v9.f32[2] + vaddv_f32(*v9.f32);
  v10 = vdupq_lane_s32(*v9.f32, 0);
  v10.i32[3] = 0;
  v11 = vrsqrteq_f32(v10);
  v12 = vmulq_f32(v11, vrsqrtsq_f32(v10, vmulq_f32(v11, v11)));
  v13 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v9.f32[0] != 0.0)), 0x1FuLL));
  v13.i32[3] = 0;
  *(v4 + 80) = vbslq_s8(vcltzq_s32(v13), vmulq_f32(v7, vmulq_n_f32(vmulq_f32(v12, vrsqrtsq_f32(v10, vmulq_f32(v12, v12))), sqrtf(v8.f32[2] + vaddv_f32(*v8.f32)))), v7);
  return v4;
}

uint64_t sub_1AF286F84(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  nullsub_106();
  v7 = v6;
  v8 = sub_1AF1DA1C8(a1);
  _Q4 = *v8;
  _S3 = *(a2 + 8);
  __asm { FMLA            S0, S3, V4.S[2] }

  if (_S0 == 0.0)
  {
    return 0;
  }

  _Q4 = *v7;
  __asm { FMLA            S1, S3, V4.S[2] }

  v18 = -(*(a2 + 12) + _S1) / _S0;
  if (v18 < 0.0)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = vmlaq_n_f32(*v7, *v8, v18);
  }

  return 1;
}

BOOL sub_1AF28702C(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  nullsub_106();
  v7 = v6;
  v8 = sub_1AF1DA1C8(a1);
  _Q4 = *v8;
  _S3 = *(a2 + 8);
  __asm { FMLA            S0, S3, V4.S[2] }

  if (a3 && _S0 != 0.0)
  {
    _Q4 = *v7;
    __asm { FMLA            S1, S3, V4.S[2] }

    *a3 = vmlaq_n_f32(*v7, *v8, -(*(a2 + 12) + _S1) / _S0);
  }

  return _S0 != 0.0;
}

void sub_1AF2870C8(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
    a1[4] = 0;
  }
}

uint64_t sub_1AF287120()
{
  result = _CFRuntimeRegisterClass();
  qword_1EB6587E0 = result;
  return result;
}

uint64_t sub_1AF287148()
{
  if (qword_1EB6587E8 != -1)
  {
    sub_1AFDF27A0();
  }

  v1 = sub_1AF0D160C(qword_1EB6587E0, 0x28uLL);
  if (!v1)
  {
    v2 = sub_1AF0D5194(0, v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF27B4(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return v1;
}

uint64_t sub_1AF2871B8(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF282C(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = sub_1AF1A7034(a1, a2);
  if (v11)
  {
    v13 = sub_1AF0D5194(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF28A4();
    }

    return 0;
  }

  else
  {
    v14 = sub_1AF287148();
    v15 = sub_1AF1A73C0(a1, (v14 + 40));
    *(v14 + 16) = CFRetain(a1);
    *(v14 + 48) = sub_1AF1A7674(a1);
    *(v14 + 32) = CFDataCreateMutableCopy(0, 3 * a2 * *(v14 + 40), v15);
  }

  return v14;
}

void sub_1AF28728C(uint64_t a1, unsigned int a2)
{
  v3 = 1;
  if (a2 > 0xFF)
  {
    v3 = 2;
  }

  if (HIWORD(a2))
  {
    v4 = 4;
  }

  else
  {
    v4 = v3;
  }

  if (v4 > *(a1 + 40))
  {
    v6 = CFDataGetLength(*(a1 + 32)) / *(a1 + 40);
    v7 = 2;
    if (!HIWORD(a2))
    {
      v7 = a2 > 0xFF;
    }

    v8 = v6 << v7;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v8);
    v12 = *(a1 + 40);
    switch(v12)
    {
      case 4:
        BytePtr = CFDataGetBytePtr(*(a1 + 32));
        v25 = sub_1AF0D5194(BytePtr, v24);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
      case 2:
        v18 = CFDataGetBytePtr(*(a1 + 32));
        if (a2 >= 0x10000)
        {
          v20 = v18;
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v22 = *v20;
              v20 += 2;
              *MutableBytePtr = v22;
              MutableBytePtr += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        v27 = sub_1AF0D5194(v18, v19);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
      case 1:
        v13 = CFDataGetBytePtr(*(a1 + 32));
        v15 = v13;
        if (v4 == 4)
        {
          v28 = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v29 = *v15++;
              *v28 = v29;
              v28 += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        if (v4 == 2)
        {
          v16 = CFDataGetMutableBytePtr(Mutable);
          if (v6 >= 1)
          {
            do
            {
              v17 = *v15++;
              *v16 = v17;
              v16 += 2;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        v30 = sub_1AF0D5194(v13, v14);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          break;
        }

LABEL_32:
        v31 = *(a1 + 32);
        if (v31)
        {
          CFRelease(v31);
        }

        *(a1 + 40) = v4;
        *(a1 + 32) = Mutable;
        return;
      default:
        v26 = sub_1AF0D5194(v10, v11);
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

        break;
    }

    sub_1AFDF28D8();
    goto LABEL_32;
  }
}

uint64_t sub_1AF287480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v8 = *(a1 + 40);
  v9 = (3 * a2 + a3) * v8;
  if (v8 > 3)
  {
    if (v8 == 4 || v8 == 8)
    {
      return *&MutableBytePtr[v9];
    }
  }

  else
  {
    if (v8 == 1)
    {
      return MutableBytePtr[v9];
    }

    if (v8 == 2)
    {
      return *&MutableBytePtr[v9];
    }
  }

  v11 = sub_1AF0D5194(MutableBytePtr, v7);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF290C();
  }

  return -1;
}

void sub_1AF28752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF28728C(a1, a4);
  MutableBytePtr = CFDataGetMutableBytePtr(*(a1 + 32));
  v10 = *(a1 + 40);
  v11 = (3 * a2 + a3) * v10;
  if (v10 > 3)
  {
    if (v10 == 4)
    {
      *&MutableBytePtr[v11] = a4;
      return;
    }

    if (v10 == 8)
    {
      *&MutableBytePtr[v11] = a4;
      return;
    }
  }

  else
  {
    if (v10 == 1)
    {
      MutableBytePtr[v11] = a4;
      return;
    }

    if (v10 == 2)
    {
      *&MutableBytePtr[v11] = a4;
      return;
    }
  }

  v12 = sub_1AF0D5194(MutableBytePtr, v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF290C();
  }
}

void sub_1AF2875E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    v10 = sub_1AF0D5194(0, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF2940(v10, a2, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 24) = 0;
  }

  if (*(a1 + 48) >= a2)
  {
    v19 = sub_1AF287480(a1, a2, 1);
    v20 = sub_1AF287480(a1, a2, 2);
    v21 = *(a1 + 48);
    v22 = *(a1 + 32);
    Length = CFDataGetLength(v22);
    CFDataSetLength(v22, Length + (9 * *(a1 + 40)));
    sub_1AF28752C(a1, a2, 1, a4);
    sub_1AF28752C(a1, a2, 2, a3);
    sub_1AF28752C(a1, v21, 0, a3);
    sub_1AF28752C(a1, v21, 1, a5);
    sub_1AF28752C(a1, v21, 2, v20);
    sub_1AF28752C(a1, v21 + 1, 0, a3);
    sub_1AF28752C(a1, v21 + 1, 1, a4);
    sub_1AF28752C(a1, v21 + 1, 2, a5);
    sub_1AF28752C(a1, v21 + 2, 0, a4);
    sub_1AF28752C(a1, v21 + 2, 1, v19);
    sub_1AF28752C(a1, v21 + 2, 2, a5);
    *(a1 + 48) += 3;
  }

  else
  {
    v18 = sub_1AF0D5194(v17, a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF29B8();
    }
  }
}

uint64_t sub_1AF2877C8(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = sub_1AF0D5194(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDF2940(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(v2 + 24);
  if (!v10)
  {
    v10 = sub_1AF1A6834(a1, a2);
    v12 = sub_1AF1A707C(*(v2 + 16), v11);
    sub_1AF1A718C(v10, v12);
    Copy = CFDataCreateCopy(0, *(v2 + 32));
    sub_1AF1A6A70(v10, 0, *(v2 + 48), Copy, *(v2 + 40));
    CFRelease(Copy);
    *(v2 + 24) = v10;
  }

  return v10;
}

uint64_t sub_1AF287870(int a1)
{
  if (qword_1ED73B1E8[0] != -1)
  {
    sub_1AF0D5230();
  }

  return qword_1ED73B160[a1];
}

const char *sub_1AF2878B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, a3);
  v8 = objc_msgSend_infoDictionary(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, a1);
  if (!v10)
  {
    return a2;
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return a2;
  }

  return objc_msgSend_BOOLValue(v11, v12, v13);
}

_DWORD *sub_1AF2879EC(uint64_t a1, unsigned int *a2, uint64_t a3, int *a4)
{
  v5 = (a3 - 2);
  if (a3 <= 2)
  {
    v6 = 0;
    *a4 = 0;
    return v6;
  }

  v7 = a3;
  if (a3 == 4)
  {
    v6 = malloc_type_malloc(0x18uLL, 0x100004052888210uLL);
    *v6 = *a2;
    v6[1] = a2[1];
    v6[2] = a2[2];
    v6[3] = *a2;
    v6[4] = a2[2];
    v6[5] = a2[3];
    v9 = 6;
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v6 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
    *v6 = *a2;
    v6[1] = a2[1];
    v6[2] = a2[2];
    v9 = 3;
LABEL_7:
    *a4 = v9;
    return v6;
  }

  *v12.i64 = sub_1AF1AF084(a1, *a2, a3);
  v69 = v12;
  *v15.i64 = sub_1AF1AF084(a1, a2[1], v13);
  v16 = 0;
  v17 = 0;
  v18 = vsubq_f32(v15, v69);
  v19 = vmulq_f32(v18, v18);
  *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  *v19.f32 = vrsqrte_f32(v20);
  *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
  v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
  v65 = vnegq_f32(v21);
  v67 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
  v63 = v21;
  v64 = 0u;
  for (i = 2; i != v7; v16 = ++i >= v7)
  {
    *v23.i64 = sub_1AF1AF084(a1, a2[i], v14);
    v24 = vsubq_f32(v23, v69);
    v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), v65), v24, v67);
    v26 = vmulq_f32(v25, v25);
    if ((v26.f32[1] + (v26.f32[2] + v26.f32[0])) != 0.0)
    {
      v27 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
      v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), v65), v27, v67);
      v29 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
      v30 = vmulq_f32(v28, v28);
      *&v31 = v30.f32[1] + (v30.f32[2] + v30.f32[0]);
      *v30.f32 = vrsqrte_f32(v31);
      *v30.f32 = vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32)));
      v32 = vmulq_n_f32(v29, vmul_f32(*v30.f32, vrsqrts_f32(v31, vmul_f32(*v30.f32, *v30.f32))).f32[0]);
      if (v17)
      {
        v33 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), vnegq_f32(v64)), v32, vextq_s8(vuzp1q_s32(v64, v64), v64, 0xCuLL));
        v34 = vmulq_f32(v33, v33);
        v17 = 1;
        if ((v34.f32[1] + (v34.f32[2] + v34.f32[0])) > 0.00001)
        {
          break;
        }
      }

      else
      {
        v17 = 1;
        v64 = v32;
      }
    }
  }

  if (v16 && (v17 & 1) != 0)
  {
    v36 = malloc_type_malloc(72 * v7, 0x1000040994742BFuLL);
    v37 = 0;
    v38 = v36 + 69;
    v39 = 0.0;
    v62 = *MEMORY[0x1E695EFF8];
    v40.f64[0] = 0.0;
    v41 = 0.0;
    v42.f64[0] = 0.0;
    do
    {
      v66 = v42.f64[0];
      v68 = v40.f64[0];
      *v43.i64 = sub_1AF1AF084(a1, a2[v37], v35);
      v44 = vsubq_f32(v43, v69);
      v45 = vmulq_f32(v63, v44);
      v46 = vmulq_f32(v64, v44);
      v47 = a2[v37];
      v48 = vcvtq_f64_f32(vadd_f32(vzip1_s32(*&vextq_s8(v45, v45, 8uLL), *&vextq_s8(v46, v46, 8uLL)), vadd_f32(vzip1_s32(*v45.i8, *v46.i8), vzip2_s32(*v45.i8, *v46.i8))));
      *(v38 - 69) = v48;
      *(v38 - 53) = v62;
      *(v38 - 37) = v62;
      *(v38 - 21) = v62;
      *(v38 - 5) = 0;
      *(v38 - 1) = 0;
      *v38 = v47;
      if (v37)
      {
        v42.f64[0] = fmin(v66, *v48.i64);
        v40.f64[0] = fmin(v68, *&v48.i64[1]);
        v40.f64[1] = fmax(v39, *&v48.i64[1]);
        v42.f64[1] = fmax(v41, *v48.i64);
      }

      else
      {
        v40 = vdupq_laneq_s64(v48, 1);
        v42 = vdupq_lane_s64(v48.i64[0], 0);
      }

      ++v37;
      v41 = v42.f64[1];
      v39 = v40.f64[1];
      v38 += 72;
    }

    while (v7 != v37);
    v80 = 0;
    v76 = v36;
    v77 = v7;
    v78 = v7;
    v79 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(v42, xmmword_1AFE47490)), vaddq_f64(v40, xmmword_1AFE47490));
    v49 = sub_1AF221C80(&v76);
    if (v49 != 2)
    {
      sub_1AF221CFC(&v76);
    }

    v75 = 0;
    v70 = &v76;
    v71 = 1;
    v73 = 0;
    v72 = 0;
    v74 = 0;
    v50 = sub_1AF2215CC(&v70, &v75);
    v51 = malloc_type_malloc(12 * v75, 0x100004052888210uLL);
    v6 = v51;
    if (v75)
    {
      v52 = 0;
      v53 = 16;
      if (v49 == 2)
      {
        v54 = 8;
      }

      else
      {
        v54 = 16;
      }

      if (v49 != 2)
      {
        v53 = 8;
      }

      v55 = 2;
      v56 = v50;
      do
      {
        v51[v55 - 2] = *(*v56 + 69);
        v51[v55 - 1] = *(*&v56[v54] + 69);
        v51[v55] = *(*&v56[v53] + 69);
        ++v52;
        v55 += 3;
        v56 += 56;
      }

      while (v52 < v75);
    }

    else if (!v50)
    {
LABEL_39:
      free(v36);
      *a4 = v50;
      return v6;
    }

    free(v50);
    LODWORD(v50) = 3 * v75;
    goto LABEL_39;
  }

  v57 = 3 * v5;
  v58 = malloc_type_malloc(4 * (3 * v5), 0x100004052888210uLL);
  v6 = v58;
  v59 = a2 + 2;
  v60 = 2;
  do
  {
    v58[v60 - 2] = *a2;
    v58[v60 - 1] = *(v59 - 1);
    v61 = *v59++;
    v58[v60] = v61;
    v60 += 3;
    --v5;
  }

  while (v5);
  *a4 = v57;
  return v6;
}

uint64_t sub_1AF287EF8(uint64_t a1)
{
  if (!off_1EB6587F0 || ((v2 = off_1EB6587F0(a1, qword_1EB658800), v3 = off_1EB6587F8, v2) ? (v4 = off_1EB6587F8 == 0) : (v4 = 1), v4))
  {
    v5 = objc_alloc(MEMORY[0x1E695DEF0]);

    return MEMORY[0x1EEE66B58](v5, sel_initWithContentsOfURL_options_error_, a1);
  }

  else
  {
    v6 = qword_1EB658800;

    return v3(a1, v6);
  }
}

CGImageSourceRef sub_1AF287FA4(const __CFURL *a1)
{
  if (off_1EB6587F0)
  {
    if (off_1EB6587F0(a1, qword_1EB658800) && off_1EB6587F8 != 0)
    {
      v4 = off_1EB6587F8(a1, qword_1EB658800);
      if (v4)
      {
        v5 = v4;
        v6 = CGImageSourceCreateWithData(v4, 0);
        CFRelease(v5);
        return v6;
      }

      return 0;
    }
  }

  if (!sub_1AF1D637C(a1))
  {
    return 0;
  }

  return CGImageSourceCreateWithURL(a1, 0);
}

uint64_t sub_1AF288070(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >= 46)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF29EC(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return qword_1AFE474A0[v2];
}

uint64_t sub_1AF2880C4(const __CFString *a1)
{
  v2 = CFStringFind(a1, @"[", 4uLL);
  if (v2.length)
  {
    v7.length = v2.location;
    v7.location = 0;
    v3 = CFStringCreateWithSubstring(0, a1, v7);
    v4 = sub_1AF288144(v3);
    CFRelease(v3);
    return v4;
  }

  else
  {

    return sub_1AF288144(a1);
  }
}

uint64_t sub_1AF288144(const __CFString *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (CFStringCompare(a1, @"int", 0) == kCFCompareEqualTo)
  {
    return 2;
  }

  if (CFStringCompare(a1, @"long", 0) == kCFCompareEqualTo)
  {
    return 45;
  }

  if (CFStringCompare(a1, @"BOOL", 0) == kCFCompareEqualTo)
  {
    return 3;
  }

  if (CFStringCompare(a1, @"texture1d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texture2d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texture3d", 0) == kCFCompareEqualTo || CFStringCompare(a1, @"texturecube", 0) == kCFCompareEqualTo)
  {
    return 5;
  }

  if (CFStringCompare(a1, @"float", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  if (CFStringCompare(a1, @"float2", 0) == kCFCompareEqualTo)
  {
    return 7;
  }

  if (CFStringCompare(a1, @"float3", 0) == kCFCompareEqualTo)
  {
    return 8;
  }

  if (CFStringCompare(a1, @"float4", 0) == kCFCompareEqualTo)
  {
    return 9;
  }

  if (CFStringCompare(a1, @"int2", 0) == kCFCompareEqualTo)
  {
    return 17;
  }

  if (CFStringCompare(a1, @"int3", 0) == kCFCompareEqualTo)
  {
    return 18;
  }

  if (CFStringCompare(a1, @"int4", 0) == kCFCompareEqualTo)
  {
    return 19;
  }

  if (CFStringCompare(a1, @"float4x4", 0) == kCFCompareEqualTo)
  {
    return 10;
  }

  result = CFStringCompare(a1, @"none", 0);
  if (result)
  {
    result = CFStringCompare(a1, @"sampler", 0);
    if (result)
    {
      v4 = sub_1AF0D5194(result, v3);
      result = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        v5 = 138412290;
        v6 = a1;
        _os_log_impl(&dword_1AF0CE000, v4, OS_LOG_TYPE_DEFAULT, "Warning: CFXBaseTypeFromMetalString: unknown type name '%@'", &v5, 0xCu);
        return 0;
      }
    }
  }

  return result;
}

__CFString *sub_1AF2883D8(uint64_t a1, uint64_t a2)
{
  if (a1 >= 46)
  {
    v3 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF29EC(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return @"unknown type";
  }

  else if (a1 > 0x2D)
  {
    return @"unknown type";
  }

  else
  {
    return off_1E7A7DD90[a1];
  }
}

uint64_t sub_1AF28844C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0x2E)
  {
    return word_1AFE47610[3 * a1];
  }

  else
  {
    v2 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF2A64();
    }

    return 0;
  }
}

uint64_t sub_1AF2884B4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0x2E)
  {
    return HIBYTE(word_1AFE47610[3 * a1 + 1]);
  }

  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF2A64();
  }

  return 1;
}

uint64_t sub_1AF288518(uint64_t a1, uint64_t a2)
{
  if (a1 < 0x2E)
  {
    return LOBYTE(word_1AFE47610[3 * a1 + 1]);
  }

  v2 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF2A64();
  }

  return 0;
}

uint64_t sub_1AF28857C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0x2E)
  {
    v3 = word_1AFE47610[3 * a1 + 2];
  }

  else
  {
    v2 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF2A64();
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1AF2885E4(uint64_t a1, uint64_t a2)
{
  LOWORD(v2) = a1;
  if (a1 > 15)
  {
    if (a1 > 33)
    {
      switch(a1)
      {
        case '""':
          if ((a2 - 1) >= 4)
          {
            v17 = sub_1AF0D5194(a1, a2);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2D88();
            }

            LOWORD(v2) = 34;
          }

          else
          {
            LOWORD(v2) = a2 + 33;
          }

          return v2;
        case '&':
          if ((a2 - 1) >= 4)
          {
            v20 = sub_1AF0D5194(a1, a2);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2C90();
            }

            LOWORD(v2) = 38;
          }

          else
          {
            LOWORD(v2) = a2 + 37;
          }

          return v2;
        case '-':
          if (a2 != 1)
          {
            v3 = sub_1AF0D5194(a1, a2);
            if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2B1C();
            }
          }

          LOWORD(v2) = 45;
          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x10:
          if ((a2 - 1) >= 4)
          {
            v15 = sub_1AF0D5194(a1, a2);
            LOWORD(v2) = 16;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2E04();
              LOWORD(v2) = 16;
            }
          }

          else
          {
            v2 = 0x1E001D001C0010uLL >> (16 * (a2 - 1));
          }

          return v2;
        case 0x14:
          if (a2 != 1)
          {
            if (a2 == 4)
            {
              LOWORD(v2) = 26;
              return v2;
            }

            v24 = sub_1AF0D5194(a1, a2);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2F78();
            }
          }

          LOWORD(v2) = 20;
          return v2;
        case 0x15:
          if (a2 != 1)
          {
            if (a2 == 4)
            {
              LOWORD(v2) = 27;
              return v2;
            }

            v22 = sub_1AF0D5194(a1, a2);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              sub_1AFDF2E80();
            }
          }

          LOWORD(v2) = 21;
          return v2;
      }
    }

LABEL_46:
    if (a2 != 1)
    {
      v6 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDF3070(v6, v7, v8, v9, v10, v11, v12, v13);
      }
    }

    return v2;
  }

  if (a1 > 12)
  {
    if (a1 != 13)
    {
      if (a1 != 14)
      {
        if (a2 != 1)
        {
          if (a2 == 4)
          {
            LOWORD(v2) = 24;
            return v2;
          }

          v23 = sub_1AF0D5194(a1, a2);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1AFDF2FF4();
          }
        }

        LOWORD(v2) = 15;
        return v2;
      }

      if ((a2 - 1) < 4)
      {
        v4 = 16 * (a2 - 1);
        v5 = 0x2C002B002A000ELL;
        goto LABEL_43;
      }

      v19 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2C14();
      }

      LOWORD(v2) = 14;
      return v2;
    }

    if ((a2 - 1) >= 4)
    {
      v16 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2D0C();
      }

      LOWORD(v2) = 13;
      return v2;
    }

    v4 = 16 * (a2 - 1);
    v5 = 0x210020001F000DLL;
LABEL_43:
    v2 = v5 >> v4;
    return v2;
  }

  if (a1 == 1)
  {
    if ((a2 - 1) >= 4)
    {
      v14 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF2B98();
      }

      LOWORD(v2) = 1;
      return v2;
    }

    v4 = 16 * (a2 - 1);
    v5 = 0x9000800070001;
    goto LABEL_43;
  }

  if (a1 != 2)
  {
    if (a1 == 4)
    {
      if (a2 != 1)
      {
        if (a2 == 4)
        {
          LOWORD(v2) = 25;
          return v2;
        }

        v21 = sub_1AF0D5194(a1, a2);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1AFDF2EFC();
        }
      }

      LOWORD(v2) = 4;
      return v2;
    }

    goto LABEL_46;
  }

  if ((a2 - 1) < 4)
  {
    v4 = 16 * (a2 - 1);
    v5 = 0x13001200110002;
    goto LABEL_43;
  }

  v18 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF2AA0();
  }

  LOWORD(v2) = 2;
  return v2;
}

BOOL sub_1AF288A0C(_BOOL8 a1, uint64_t *a2, uint64_t *a3, _BYTE *a4)
{
  v7 = a1;
  if (a1 >= 46 && (v8 = sub_1AF0D5194(a1, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF29EC(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_4;
    }
  }

  else if (a2)
  {
LABEL_4:
    if (a3 && a4)
    {
      goto LABEL_8;
    }
  }

  v15 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    sub_1AFDF30E8(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_8:
  v23 = &word_1AFE47610[3 * v7];
  v24 = v23[3];
  *a2 = v23[2];
  *a3 = v24;
  LOBYTE(v23) = v23[4];
  *a4 = v23 & 1;
  return sub_1AF288ADC(*a2, v24, v23 & 1) == v7;
}

uint64_t sub_1AF288ADC(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        if (a3)
        {
          LOWORD(v7) = 6;
        }

        else
        {
          LOWORD(v7) = 45;
        }

        return v7;
      }

      goto LABEL_34;
    }

    v8 = a2 - 1;
    if (a3)
    {
      if ((a2 - 1) < 4)
      {
        v7 = 0x9000800070001uLL >> (16 * v8);
        return v7;
      }

      goto LABEL_17;
    }

    if ((a2 - 1) < 4)
    {
      v5 = 16 * v8;
      v6 = 0x13001200110002;
      goto LABEL_27;
    }

LABEL_28:
    if ((byte_1EB658809 & 1) == 0)
    {
      byte_1EB658809 = 1;
      v10 = sub_1AF0D5194(a1, a2);
      a1 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        sub_1AFDF3160();
      }
    }

    if (a2 == 1)
    {
      LOWORD(v7) = 15;
      return v7;
    }

    if (a2 == 4)
    {
      LOWORD(v7) = 24;
      return v7;
    }

    goto LABEL_34;
  }

  if (a1 == 1)
  {
    if (a3)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (a1 == 2)
  {
    v4 = a2 - 1;
    if (a3)
    {
      if ((a2 - 1) < 4)
      {
        v5 = 16 * v4;
        v6 = 0x2C002B002A000ELL;
LABEL_27:
        v7 = v6 >> v5;
        return v7;
      }

LABEL_17:
      if ((byte_1EB658808 & 1) == 0)
      {
        byte_1EB658808 = 1;
        v9 = sub_1AF0D5194(a1, a2);
        a1 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
        if (a1)
        {
          sub_1AFDF3160();
        }
      }

      if (a2 == 1)
      {
        LOWORD(v7) = 20;
        return v7;
      }

      if (a2 == 4)
      {
        LOWORD(v7) = 26;
        return v7;
      }

      goto LABEL_34;
    }

    if ((a2 - 1) < 4)
    {
      v5 = 16 * v4;
      v6 = 0x210020001F000DLL;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_34:
  v11 = sub_1AF0D5194(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF319C();
  }

  LOWORD(v7) = 0;
  return v7;
}

float32_t sub_1AF288CA0(_BOOL8 a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t a5)
{
  v8 = a1;
  if (!a2 && (v9 = sub_1AF0D5194(a1, 0), a1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF31D8(v9, a2, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDF3250(v16, a2, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (!a4)
  {
    v23 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDF32C8(v23, a2, v24, v25, v26, v27, v28, v29);
    }
  }

  switch(v8)
  {
    case 1:
      a5.f32[0] = *a2 + *a3;
      a4->i32[0] = a5.i32[0];
      break;
    case 2:
      a4->i32[0] = *a3 + *a2;
      break;
    case 3:
    case 4:
    case 5:
    case 11:
    case 15:
      v30 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF337C();
      }

      break;
    case 6:
      *a5.i64 = *a2 + *a3;
      goto LABEL_23;
    case 7:
    case 17:
      *a5.f32 = vadd_f32(*a2, *a3);
LABEL_23:
      a4->i64[0] = a5.i64[0];
      break;
    case 8:
    case 9:
    case 18:
    case 19:
      a5 = vaddq_f32(*a2, *a3);
      *a4 = a5;
      break;
    case 10:
      a5 = vaddq_f32(*a2, *a3);
      v33 = vaddq_f32(*(a2 + 16), *(a3 + 16));
      v34 = vaddq_f32(*(a2 + 32), *(a3 + 32));
      v35 = vaddq_f32(*(a2 + 48), *(a3 + 48));
      *a4 = a5;
      a4[1] = v33;
      a4[2] = v34;
      a4[3] = v35;
      break;
    case 12:
      a5.f32[0] = sub_1AF16405C(a2, a3, a4->f32);
      break;
    case 13:
    case 16:
      a4->i16[0] = *a3 + *a2;
      break;
    case 14:
      v31 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3340();
      }

      break;
    case 45:
      a4->i64[0] = *a3 + *a2;
      break;
    default:
      v32 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF33F0();
      }

      break;
  }

  return a5.f32[0];
}

float32_t sub_1AF288EA0(_BOOL8 a1, _OWORD *a2, float32x4_t *a3, uint64_t a4, float32x4_t a5)
{
  v8 = a1;
  if (!a2 && (v9 = sub_1AF0D5194(a1, 0), a1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF31D8(v9, a2, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDF3250(v16, a2, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (!a4)
  {
    v23 = sub_1AF0D5194(a1, a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF32C8(v23, v24, v25, v26, v27, v28, v29, v30);
    }
  }

  if (v8 != 10)
  {
    return sub_1AF288CA0(v8, a2, a3, a4, a5);
  }

  v31 = 0;
  v32 = *a3;
  v33 = a3[1];
  v34 = a3[2];
  v35 = a3[3];
  v36 = a2[1];
  v37 = a2[2];
  v38 = a2[3];
  v43[0] = *a2;
  v43[1] = v36;
  v43[2] = v37;
  v43[3] = v38;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  do
  {
    *(&v44 + v31 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v43[v31])), v33, *&v43[v31], 1), v34, v43[v31], 2), v35, v43[v31], 3);
    ++v31;
  }

  while (v31 != 4);
  result = *&v44;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  *a4 = v44;
  *(a4 + 16) = v40;
  *(a4 + 32) = v41;
  *(a4 + 48) = v42;
  return result;
}

float32_t sub_1AF288FD8(_BOOL8 a1, uint64_t a2, uint64_t a3, float32x4_t *a4, float32x4_t a5)
{
  v8 = a1;
  if (!a2 && (v9 = sub_1AF0D5194(a1, 0), a1 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT)))
  {
    sub_1AFDF31D8(v9, a2, v10, v11, v12, v13, v14, v15);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v16 = sub_1AF0D5194(a1, a2);
  a1 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    sub_1AFDF3250(v16, a2, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (!a4)
  {
    v23 = sub_1AF0D5194(a1, a2);
    a1 = os_log_type_enabled(v23, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      sub_1AFDF32C8(v23, a2, v24, v25, v26, v27, v28, v29);
    }
  }

  switch(v8)
  {
    case 1:
      a5.f32[0] = *a2 - *a3;
      a4->i32[0] = a5.i32[0];
      break;
    case 2:
      a4->i32[0] = *a2 - *a3;
      break;
    case 3:
    case 4:
    case 5:
    case 11:
    case 15:
      v30 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3468();
      }

      break;
    case 6:
      *a5.i64 = *a2 - *a3;
      goto LABEL_23;
    case 7:
    case 17:
      *a5.f32 = vsub_f32(*a2, *a3);
LABEL_23:
      a4->i64[0] = a5.i64[0];
      break;
    case 8:
    case 9:
    case 18:
    case 19:
      a5 = vsubq_f32(*a2, *a3);
      *a4 = a5;
      break;
    case 10:
      a5 = vsubq_f32(*a2, *a3);
      v33 = vsubq_f32(*(a2 + 16), *(a3 + 16));
      v34 = vsubq_f32(*(a2 + 32), *(a3 + 32));
      v35 = vsubq_f32(*(a2 + 48), *(a3 + 48));
      *a4 = a5;
      a4[1] = v33;
      a4[2] = v34;
      a4[3] = v35;
      break;
    case 12:
      a5.f32[0] = sub_1AF1640A0(a2, a3, a4->f32);
      break;
    case 13:
    case 16:
      a4->i16[0] = *a2 - *a3;
      break;
    case 14:
      v31 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF342C();
      }

      break;
    case 45:
      a4->i64[0] = *a2 - *a3;
      break;
    default:
      v32 = sub_1AF0D5194(a1, a2);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF34DC();
      }

      break;
  }

  return a5.f32[0];
}

char *sub_1AF2891EC(char *result)
{
  if (result)
  {
    v1 = result;
    result = CFStringGetCStringPtr(result, 0x600u);
    if (!result)
    {

      return objc_msgSend_UTF8String(v1, v2, v3);
    }
  }

  return result;
}

CFCharacterSetRef sub_1AF28923C(uint64_t a1, CFStringRef theString, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  if (theString)
  {
    *(a1 + 144) = theString;
    *(a1 + 168) = a3;
    *(a1 + 176) = a4;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    *(a1 + 152) = CharactersPtr;
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    *(a1 + 160) = CStringPtr;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
  }

  *(a1 + 200) = a3;
  *(a1 + 208) = 0;
  *(a1 + 216) = a5;
  *(a1 + 224) = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  result = CFCharacterSetGetPredefined(kCFCharacterSetAlphaNumeric);
  *(a1 + 232) = result;
  return result;
}

void sub_1AF2892E0(UniChar *buffer, uint64_t *a2, uint64_t a3)
{
  for (i = *a2; i < a3; *a2 = i)
  {
    if (i < 0 || (v7 = *(buffer + 20), v7 <= i))
    {
      v9 = 0;
    }

    else
    {
      v8 = *(buffer + 17);
      if (v8)
      {
        v9 = *(v8 + 2 * *(buffer + 19) + 2 * i);
      }

      else
      {
        v10 = *(buffer + 18);
        if (v10)
        {
          v9 = *(v10 + *(buffer + 19) + i);
        }

        else
        {
          if (*(buffer + 22) <= i || (v11 = *(buffer + 21), v11 > i))
          {
            v12 = i - 4;
            if (i < 4)
            {
              v12 = 0;
            }

            if (v12 + 64 < v7)
            {
              v7 = v12 + 64;
            }

            *(buffer + 21) = v12;
            *(buffer + 22) = v7;
            v13.length = v7 - v12;
            v13.location = *(buffer + 19) + v12;
            CFStringGetCharacters(*(buffer + 16), v13, buffer);
            v11 = *(buffer + 21);
          }

          v9 = buffer[i - v11];
        }
      }
    }

    if (v9 != 12288 && (v9 - 0x2000) >= 0xCu && v9 >= 0x21u && (v9 - 127) > 0x21u)
    {
      break;
    }

    i = *a2 + 1;
  }
}

BOOL sub_1AF289408(const __CFString *a1, const __CFString *a2)
{
  Length = CFStringGetLength(a1);
  v5 = CFStringGetLength(a2);
  theString = a1;
  v46 = 0;
  v47 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v44 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v32 = 0uLL;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  v48 = 0;
  v49 = 0;
  v45 = CStringPtr;
  v31[0] = a2;
  v33 = v5;
  v34 = 0;
  v8 = CFStringGetCharactersPtr(a2);
  v9 = 0;
  v31[1] = v8;
  if (!v8)
  {
    v9 = CFStringGetCStringPtr(a2, 0x600u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *buffer = 0u;
  v36 = 0u;
  *(&v33 + 1) = 0;
  v34 = 0;
  *&v32 = v9;
  v21 = 0;
  v22 = 0;
  sub_1AF2892E0(buffer, &v22, Length);
LABEL_6:
  sub_1AF2892E0(v23, &v21, v5);
  v10 = v21;
  while (1)
  {
    if (v10 == v5)
    {
      return 1;
    }

    v11 = v22;
    if (v22 == Length)
    {
      goto LABEL_51;
    }

    if (v22 < 0 || (v12 = v47, v47 <= v22))
    {
      v13 = 0;
    }

    else if (v44)
    {
      v13 = v44[v46 + v22];
    }

    else if (v45)
    {
      v13 = v45[v46 + v22];
    }

    else
    {
      if (v49 <= v22 || (v16 = v48, v48 > v22))
      {
        v17 = v22 - 4;
        if (v22 < 4)
        {
          v17 = 0;
        }

        if (v17 + 64 < v47)
        {
          v12 = v17 + 64;
        }

        v48 = v17;
        v49 = v12;
        v50.length = v12 - v17;
        v50.location = v46 + v17;
        CFStringGetCharacters(theString, v50, buffer);
        v16 = v48;
      }

      v13 = buffer[v11 - v16];
    }

    if (v10 < 0 || (v14 = v33, v33 <= v10))
    {
      v15 = 0;
    }

    else if (v31[1])
    {
      v15 = *(&v31[1]->isa + *(&v32 + 1) + v10);
    }

    else if (v32)
    {
      v15 = *(v32 + *(&v32 + 1) + v10);
    }

    else
    {
      if (v34 <= v10 || (v18 = *(&v33 + 1), *(&v33 + 1) > v10))
      {
        v19 = v10 - 4;
        if (v10 < 4)
        {
          v19 = 0;
        }

        if (v19 + 64 < v33)
        {
          v14 = v19 + 64;
        }

        *(&v33 + 1) = v19;
        v34 = v14;
        v51.length = v14 - v19;
        v51.location = *(&v32 + 1) + v19;
        CFStringGetCharacters(v31[0], v51, v23);
        v18 = *(&v33 + 1);
      }

      v15 = v23[v10 - v18];
    }

    if (v15 == 12288 || (v15 - 0x2000) < 0xCu || v15 < 0x21u || (v15 - 127) <= 0x21u)
    {
      if (v13 == 12288 || (v13 - 0x2000) < 0xCu || v13 < 0x21u || (v13 - 127) <= 0x21u)
      {
        sub_1AF2892E0(buffer, &v22, Length);
        goto LABEL_6;
      }

LABEL_51:
      sub_1AF2892E0(v23, &v21, v5);
      return v21 == v5;
    }

    if (v13 != v15)
    {
      return 0;
    }

    v21 = ++v10;
    v22 = v11 + 1;
  }
}

uint64_t sub_1AF289744()
{
  result = dword_1ED726828;
  if (dword_1ED726828 == -1)
  {
    dword_1ED726828 = 0;
    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse2", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 1u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse3", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 2u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.supplementalsse3", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 2u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse4_1", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 8u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.sse4_2", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 0x10u;
    }

    v3 = 0;
    v2 = 4;
    if (!sysctlbyname("hw.optional.avx1_0", &v3, &v2, 0, 0) && v3)
    {
      dword_1ED726828 |= 0x20u;
    }

    v3 = 0;
    v2 = 4;
    v1 = sysctlbyname("hw.optional.fma", &v3, &v2, 0, 0);
    result = dword_1ED726828;
    if (!v1)
    {
      if (v3)
      {
        result = dword_1ED726828 | 0x40u;
        dword_1ED726828 |= 0x40u;
      }
    }
  }

  return result;
}

uint64_t sub_1AF289940(uint64_t *a1, int a2)
{
  v2 = a1[26] + a1[25];
  v3 = a1[1] + *a1;
  *(a1 + 217) = 0;
  if (v2 >= v3)
  {
    return 0;
  }

  v6 = (a1 + 2);
  while (1)
  {
    v7 = v2 - *a1;
    if (v7 < 0 || (v8 = a1[22], v8 <= v7))
    {
      v10 = 0;
    }

    else
    {
      v9 = a1[19];
      if (v9)
      {
        v10 = *(v9 + 2 * a1[21] + 2 * v7);
      }

      else
      {
        v31 = a1[20];
        if (v31)
        {
          v10 = *(v31 + a1[21] + v7);
        }

        else
        {
          if (a1[24] <= v7 || (v32 = a1[23], v32 > v7))
          {
            v33 = v7 - 4;
            if (v7 < 4)
            {
              v33 = 0;
            }

            if (v33 + 64 < v8)
            {
              v8 = v33 + 64;
            }

            a1[23] = v33;
            a1[24] = v8;
            v56.length = v8 - v33;
            v56.location = a1[21] + v33;
            CFStringGetCharacters(a1[18], v56, v6);
            v32 = a1[23];
          }

          v10 = v6[v7 - v32];
        }
      }
    }

    v11 = v2 + 1;
    if (!CFCharacterSetIsCharacterMember(a1[28], v10))
    {
      break;
    }

    v12 = -v2;
    v13 = v2 + 65;
    do
    {
      v14 = *a1;
      v15 = v2 - *a1 + 1;
      if (v15 < 0 || (v16 = a1[22], v16 <= v15))
      {
        v19 = 0;
      }

      else
      {
        v17 = a1[19];
        if (v17)
        {
          v18 = v17 - 2 * v14 + 2 * a1[21] + 2 * v2;
LABEL_14:
          v19 = *(v18 + 2);
          goto LABEL_16;
        }

        v20 = a1[20];
        if (!v20)
        {
          if (a1[24] <= v15 || (v21 = a1[23], v21 > v15))
          {
            v22 = v11 - v14;
            if ((v11 - v14) >= 4)
            {
              v22 = 4;
            }

            v23 = v14 + v22;
            v24 = v2 - (v14 + v22);
            v25 = v24 + 1;
            v26 = v24 + 65;
            if (v26 >= v16)
            {
              v26 = a1[22];
            }

            a1[23] = v25;
            a1[24] = v26;
            v27 = v2 + a1[21] - v14 - v22;
            v28 = v13 - v14 - v22;
            if (v16 >= v28)
            {
              v16 = v28;
            }

            v55.length = v12 + v23 + v16 - 1;
            v55.location = v27 + 1;
            CFStringGetCharacters(a1[18], v55, v6);
            v21 = a1[23];
          }

          v18 = &v6[v2 - (v21 + v14)];
          goto LABEL_14;
        }

        v19 = *(v20 + v2 + a1[21] - v14 + 1);
      }

LABEL_16:
      ++v2;
      --v12;
      ++v13;
      ++v11;
    }

    while (CFCharacterSetIsCharacterMember(a1[28], v19));
    v29 = a1[25] + a1[26];
    a1[25] = v29;
    a1[26] = v2 - v29;
    if (*(a1 + 216) == 1)
    {
      result = 1;
      *(a1 + 217) = 1;
      return result;
    }

LABEL_35:
    if (v2 >= v3)
    {
      return 0;
    }
  }

  if (v10 != 95 && !CFCharacterSetIsCharacterMember(a1[29], v10))
  {
    v30 = a1[25] + a1[26];
    a1[25] = v30;
    a1[26] = v11 - v30;
    ++v2;
    if ((a1[27] & 1) == 0)
    {
      goto LABEL_35;
    }

    return 1;
  }

  v34 = 0;
  v35 = v2 + 1;
  while (2)
  {
    v36 = -v35;
    v37 = v35 + 64;
    v38 = v11;
    while (2)
    {
      v11 = v38;
      v39 = *a1;
      v40 = v35 - *a1;
      if (v40 < 0 || (v41 = a1[22], v41 <= v40))
      {
        v43 = 0;
      }

      else
      {
        v42 = a1[19];
        if (v42)
        {
          v43 = *(v42 - 2 * v39 + 2 * a1[21] + 2 * v35);
        }

        else
        {
          v46 = a1[20];
          if (v46)
          {
            v43 = *(v46 + a1[21] - v39 + v35);
          }

          else
          {
            if (a1[24] <= v40 || (v47 = a1[23], v47 > v40))
            {
              if (v40 >= 4)
              {
                v40 = 4;
              }

              v48 = v39 + v40;
              v49 = v35 - (v39 + v40);
              v50 = v49 + 64;
              if (v49 + 64 >= v41)
              {
                v50 = a1[22];
              }

              a1[23] = v49;
              a1[24] = v50;
              v51 = a1[21] - v39 - v40;
              v52 = v37 - v39 - v40;
              if (v41 >= v52)
              {
                v41 = v52;
              }

              v57.location = v35 + v51;
              v57.length = v36 + v48 + v41;
              CFStringGetCharacters(a1[18], v57, v6);
              v47 = a1[23];
            }

            v43 = v6[v35 - (v47 + v39)];
          }
        }

        if (v43 == 95)
        {
          CFCharacterSetIsCharacterMember(a1[28], 0x5Fu);
LABEL_56:
          --v36;
          ++v37;
          v38 = ++v35;
          if (v34)
          {
            goto LABEL_76;
          }

          continue;
        }
      }

      break;
    }

    IsCharacterMember = CFCharacterSetIsCharacterMember(a1[29], v43);
    v45 = CFCharacterSetIsCharacterMember(a1[28], v43);
    if (IsCharacterMember)
    {
      goto LABEL_56;
    }

    if (a2)
    {
      ++v35;
      v34 = 1;
      if (v43 == 42)
      {
        v11 = v35;
        continue;
      }

      if (v45)
      {
        continue;
      }
    }

    break;
  }

LABEL_76:
  v53 = a1[25] + a1[26];
  a1[25] = v53;
  a1[26] = v11 - v53;
  return 1;
}

CFURLRef sub_1AF289D68(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_length(a1, a2, a3);
  if (result)
  {
    PathComponent = objc_msgSend_lastPathComponent(a1, v5, v6);
    if (objc_msgSend_isEqualToString_(a1, v8, PathComponent))
    {
      v11 = 0;
    }

    else
    {
      v11 = objc_msgSend_stringByDeletingLastPathComponent(a1, v9, v10);
    }

    v12 = objc_msgSend_pathExtension(a1, v9, v10);
    v15 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v13, v14);
    BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.vfx");
    v17 = CFBundleCopyResourceURL(BundleWithIdentifier, v15, v12, 0);
    if (!v17)
    {
      MainBundle = CFBundleGetMainBundle();
      v17 = CFBundleCopyResourceURL(MainBundle, v15, v12, v11);
    }

    return v17;
  }

  return result;
}

CFURLRef sub_1AF289E38(void *a1, const char *a2, uint64_t a3)
{
  v3 = sub_1AF289D68(a1, a2, a3);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  return v4;
}

uint64_t sub_1AF289E6C(const __CFURL *a1)
{
  MainBundle = CFBundleGetMainBundle();
  v3 = 0;
  if (!a1)
  {
    return v3;
  }

  v4 = MainBundle;
  if (!MainBundle)
  {
    return v3;
  }

  *packageCreator = 0;
  CFBundleGetPackageInfo(MainBundle, &packageCreator[1], packageCreator);
  if (packageCreator[1] != 1095782476)
  {
    return 0;
  }

  v5 = CFBundleCopyBundleURL(v4);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFURLCopyPath(v5);
  v8 = CFURLCopyPath(a1);
  v11 = v8;
  if (v7 && v8)
  {
    v12 = objc_msgSend_stringByStandardizingPath(v8, v9, v10);
    v15 = objc_msgSend_stringByStandardizingPath(v7, v13, v14);
    v16 = CFStringFind(v12, v15, 1uLL);
    if (v16.location)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16.length <= 0;
    }

    v18 = !v17;
    goto LABEL_15;
  }

  v18 = 0;
  v3 = 0;
  if (v7)
  {
LABEL_15:
    CFRelease(v7);
    v3 = v18;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  CFRelease(v6);
  return v3;
}

uint64_t sub_1AF289F78(void *a1, uint64_t *a2, uint64_t a3)
{
  *a2 = objc_msgSend_length(a1, a2, a3);

  return objc_msgSend_contents(a1, v4, v5);
}

uint64_t sub_1AF289FB8(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_storageMode(a1, a2, a3) == 2)
  {
    if ((byte_1EB65880A & 1) == 0)
    {
      byte_1EB65880A = 1;
      v6 = sub_1AF0D5194(2, v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3518();
      }
    }

    return 0;
  }

  else
  {
    v8 = MEMORY[0x1E695DEF0];
    v9 = objc_msgSend_contents(a1, v4, v5);
    v13 = objc_msgSend_length(a1, v10, v11);

    return objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v8, v12, v9, v13, 0);
  }
}

uint64_t sub_1AF28A070(uint64_t a1, uint64_t a2)
{
  if (qword_1EB658810 != -1)
  {
    sub_1AFDF3554();
  }

  return byte_1EB644858;
}

void sub_1AF28A0A8()
{
  v3 = CFXMTLCreateSystemDefaultDevice();
  byte_1EB644858 |= objc_msgSend_supportsFeatureSet_(v3, v0, 1);
  byte_1EB644858 |= objc_msgSend_supportsFeatureSet_(v3, v1, 3);
  byte_1EB644858 |= objc_msgSend_supportsFeatureSet_(v3, v2, 4);
}