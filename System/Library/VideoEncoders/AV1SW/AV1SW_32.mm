int32x4_t *sub_277AF1CC8(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = vdupq_n_s32(1 << (a3 - 1));
  v8 = &dword_277C42240[64 * a3 - 578];
  v9 = vld1q_dup_f32(v8);
  v10 = vshlq_s32(vmlaq_s32(v7, v9, *result), v6);
  v11 = &dword_277C42240[64 * a3 - 638];
  v12 = vld1q_dup_f32(v11);
  v13 = vshlq_s32(vmlsq_s32(v7, v12, *result), v6);
  v14 = &dword_277C42240[64 * a3 - 632];
  v15 = vld1q_dup_f32(v14);
  v16 = &dword_277C42240[64 * a3 - 584];
  v17 = vld1q_dup_f32(v16);
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v10), v17, v13), v6);
  v19 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v15), v17, v10), v6);
  v20 = &dword_277C42240[64 * a3 - 624];
  v21 = vld1q_dup_f32(v20);
  v22 = &dword_277C42240[64 * a3 - 592];
  v23 = vld1q_dup_f32(v22);
  v24 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v21, v10), v23, v13), v6);
  v25 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v21), v23, v10), v6);
  v26 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v21, v18), v23, v19), v6);
  v27 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v19, v21), v23, v18), v6);
  v28 = &dword_277C42240[64 * a3 - 608];
  v29 = vld1q_dup_f32(v28);
  v30 = vmlaq_s32(v7, v29, v10);
  v31 = vmulq_s32(v29, v13);
  v32 = vshlq_s32(vaddq_s32(v30, v31), v6);
  v33 = vshlq_s32(vsubq_s32(v30, v31), v6);
  v34 = vmlaq_s32(v7, v29, v24);
  v35 = vmulq_s32(v29, v25);
  v36 = vshlq_s32(vaddq_s32(v34, v35), v6);
  v37 = vshlq_s32(vsubq_s32(v34, v35), v6);
  v38 = vmlaq_s32(v7, v29, v18);
  v39 = vmulq_s32(v29, v19);
  v40 = vshlq_s32(vaddq_s32(v38, v39), v6);
  v41 = vshlq_s32(vsubq_s32(v38, v39), v6);
  v42 = vmlaq_s32(v7, v29, v26);
  v43 = vmulq_s32(v29, v27);
  v44 = vshlq_s32(vaddq_s32(v42, v43), v6);
  v45 = vshlq_s32(vsubq_s32(v42, v43), v6);
  if (a4)
  {
    v46 = vnegq_s32(v18);
    v47 = vnegq_s32(v24);
    *a2 = v10;
    a2[1] = v46;
    v48 = vnegq_s32(v44);
    v49 = vnegq_s32(v32);
    v50 = vnegq_s32(v41);
    v51 = vnegq_s32(v37);
    v52 = vnegq_s32(v27);
    v53 = vnegq_s32(v13);
  }

  else
  {
    if (a5 <= 10)
    {
      v54 = 10;
    }

    else
    {
      v54 = a5;
    }

    v55 = 32 << v54;
    v56 = vdupq_n_s32(-v55);
    v57 = vdupq_n_s32(v55 - 1);
    v58 = vdupq_n_s32(-a6);
    v59 = vdupq_n_s32(1 << a6 >> 1);
    *a2 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v10, v59), v58), v56), v57);
    a2[1] = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v18), v58), v56), v57);
    v26 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v26, v59), v58), v56), v57);
    v47 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v24), v58), v56), v57);
    v36 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v36, v59), v58), v56), v57);
    v48 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v44), v58), v56), v57);
    v40 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v40, v59), v58), v56), v57);
    v49 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v32), v58), v56), v57);
    v33 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v33, v59), v58), v56), v57);
    v50 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v41), v58), v56), v57);
    v45 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v45, v59), v58), v56), v57);
    v51 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v37), v58), v56), v57);
    v25 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v25, v59), v58), v56), v57);
    v52 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v27), v58), v56), v57);
    v19 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v19, v59), v58), v56), v57);
    v53 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v59, v13), v58), v56), v57);
  }

  a2[2] = v26;
  a2[3] = v47;
  a2[4] = v36;
  a2[5] = v48;
  a2[6] = v40;
  a2[7] = v49;
  a2[8] = v33;
  a2[9] = v50;
  a2[10] = v45;
  a2[11] = v51;
  a2[12] = v25;
  a2[13] = v52;
  a2[14] = v19;
  a2[15] = v53;
  return result;
}

int32x4_t sub_277AF1F9C(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(-a3);
  v12 = vdupq_n_s32(1 << (a3 - 1));
  v13 = &dword_277C42240[64 * a3 - 580];
  v14 = vld1q_dup_f32(v13);
  v15 = &dword_277C42240[64 * a3 - 636];
  v16 = vld1q_dup_f32(v15);
  v17 = &dword_277C42240[64 * a3 - 612];
  v18 = vld1q_dup_f32(v17);
  v19 = &dword_277C42240[64 * a3 - 604];
  v20 = vld1q_dup_f32(v19);
  v21 = a1[1];
  v22 = a1[2];
  v23 = &dword_277C42240[64 * a3 - 596];
  v24 = vld1q_dup_f32(v23);
  v25 = a1[9];
  v26 = &dword_277C42240[64 * a3 - 628];
  v27 = vld1q_dup_f32(v26);
  v28 = a1[12];
  v29 = a1[13];
  v30 = vmlaq_s32(v12, v27, v29);
  v31 = &dword_277C42240[64 * a3 - 588];
  v32 = vld1q_dup_f32(v31);
  v33 = a1[3];
  v34 = vmlaq_s32(v12, v27, v33);
  v35 = a1[4];
  v36 = a1[5];
  v37 = vmlaq_s32(v12, v24, v36);
  v38 = vmlsq_s32(v30, v33, v32);
  v39 = vmlaq_s32(v34, v32, v29);
  v40 = a1[10];
  v41 = a1[11];
  v42 = vmlaq_s32(v12, v24, v41);
  v43 = &dword_277C42240[64 * a3 - 620];
  v44 = vld1q_dup_f32(v43);
  v45 = vmlsq_s32(v37, v41, v44);
  v46 = vmlaq_s32(v42, v44, v36);
  v47 = a1[6];
  v48 = a1[7];
  v49 = vmlsq_s32(vmlaq_s32(v12, v18, v25), v48, v20);
  v50 = vmlaq_s32(v12, v18, v48);
  v51 = a1[14];
  v52 = a1[15];
  v53 = vshlq_s32(vmlsq_s32(vmlaq_s32(v12, v14, v21), v52, v16), v11);
  v54 = vshlq_s32(v49, v11);
  v55 = vshlq_s32(v45, v11);
  v56 = vshlq_s32(v38, v11);
  v57 = vshlq_s32(v39, v11);
  v58 = vshlq_s32(v46, v11);
  v59 = vshlq_s32(vmlaq_s32(v50, v20, v25), v11);
  v60 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v14, v52), v16, v21), v11);
  v61 = &dword_277C42240[64 * a3 - 584];
  v62 = vld1q_dup_f32(v61);
  v63 = &dword_277C42240[64 * a3 - 616];
  v64 = vld1q_dup_f32(v63);
  v65 = vmlaq_s32(v12, v64, v40);
  v66 = vmlaq_s32(v12, v64, v47);
  v67 = &dword_277C42240[64 * a3 - 600];
  v68 = vld1q_dup_f32(v67);
  v69 = vmlsq_s32(v65, v47, v68);
  v70 = &dword_277C42240[64 * a3 - 632];
  v71 = vld1q_dup_f32(v70);
  v72 = vmlsq_s32(vmlaq_s32(v12, v62, v22), v51, v71);
  v73 = vmlaq_s32(v66, v68, v40);
  v74 = vmlaq_s32(vmlaq_s32(v12, v62, v51), v71, v22);
  v75 = vaddq_s32(v54, v53);
  v76 = vminq_s32(vmaxq_s32(vsubq_s32(v53, v54), v9), v10);
  v77 = vaddq_s32(v56, v55);
  v78 = vminq_s32(vmaxq_s32(vsubq_s32(v56, v55), v9), v10);
  v79 = vaddq_s32(v58, v57);
  v80 = vminq_s32(vmaxq_s32(vsubq_s32(v57, v58), v9), v10);
  v81 = vaddq_s32(v60, v59);
  v82 = vminq_s32(vmaxq_s32(vsubq_s32(v60, v59), v9), v10);
  LODWORD(v70) = dword_277C42240[64 * a3 - 592];
  v83 = vdupq_n_s32(v70);
  v84 = dword_277C42240[64 * a3 - 624];
  v85 = vdupq_n_s32(v84);
  v86 = vmlsq_s32(vmlaq_s32(v12, v83, v35), v28, v85);
  v87 = vmlaq_s32(vmlaq_s32(v12, v83, v28), v85, v35);
  v88 = vmlaq_s32(vmlaq_s32(v12, vdupq_n_s32(-v70), v78), vdupq_n_s32(-v84), v80);
  v89 = vmlaq_s32(v12, v83, v80);
  v90 = vmlaq_s32(v12, v83, v76);
  v91 = vmlsq_s32(vmlaq_s32(v12, v83, v82), v76, v85);
  v92 = vmlsq_s32(v89, v78, v85);
  v93 = vshlq_s32(v72, v11);
  v94 = vshlq_s32(v69, v11);
  v95 = vshlq_s32(v73, v11);
  v96 = vshlq_s32(v74, v11);
  v97 = vminq_s32(vmaxq_s32(v75, v9), v10);
  v98 = vminq_s32(vmaxq_s32(v77, v9), v10);
  v99 = vminq_s32(vmaxq_s32(v79, v9), v10);
  v100 = vminq_s32(vmaxq_s32(v81, v9), v10);
  v101 = vmlaq_s32(v90, v85, v82);
  v102 = &dword_277C42240[64 * a3 - 608];
  v103 = vld1q_dup_f32(v102);
  v104 = vmlaq_s32(v12, v103, *a1);
  v105 = vmulq_s32(v103, a1[8]);
  v106 = vshlq_s32(vaddq_s32(v104, v105), v11);
  v107 = vshlq_s32(vsubq_s32(v104, v105), v11);
  v108 = vshlq_s32(v86, v11);
  v109 = vshlq_s32(v87, v11);
  v110 = vminq_s32(vmaxq_s32(vaddq_s32(v94, v93), v9), v10);
  v111 = vminq_s32(vmaxq_s32(vsubq_s32(v93, v94), v9), v10);
  v112 = vminq_s32(vmaxq_s32(vaddq_s32(v96, v95), v9), v10);
  v113 = vminq_s32(vmaxq_s32(vsubq_s32(v96, v95), v9), v10);
  v114 = vshlq_s32(v91, v11);
  v115 = vshlq_s32(v88, v11);
  v116 = vshlq_s32(v92, v11);
  v117 = vshlq_s32(v101, v11);
  v118 = vsubq_s32(v106, v109);
  v119 = vminq_s32(vmaxq_s32(vaddq_s32(v109, v106), v9), v10);
  v120 = vminq_s32(vmaxq_s32(v118, v9), v10);
  v121 = vsubq_s32(v107, v108);
  v122 = vminq_s32(vmaxq_s32(vaddq_s32(v108, v107), v9), v10);
  v123 = vminq_s32(vmaxq_s32(v121, v9), v10);
  v124 = vmulq_s32(v111, v103);
  v125 = vmlaq_s32(v12, v113, v103);
  v126 = vshlq_s32(vsubq_s32(v125, v124), v11);
  v127 = vshlq_s32(vaddq_s32(v125, v124), v11);
  v128 = vaddq_s32(v98, v97);
  v129 = vsubq_s32(v97, v98);
  v130 = vaddq_s32(v115, v114);
  v131 = vminq_s32(vmaxq_s32(vsubq_s32(v114, v115), v9), v10);
  v132 = vaddq_s32(v100, v99);
  v133 = vsubq_s32(v100, v99);
  v134 = vaddq_s32(v117, v116);
  v135 = vminq_s32(vmaxq_s32(vsubq_s32(v117, v116), v9), v10);
  v136 = vaddq_s32(v119, v112);
  v137 = vsubq_s32(v119, v112);
  v138 = vaddq_s32(v127, v122);
  v139 = vsubq_s32(v122, v127);
  v140 = vaddq_s32(v126, v123);
  v141 = vsubq_s32(v123, v126);
  v142 = vaddq_s32(v120, v110);
  v143 = vsubq_s32(v120, v110);
  v144 = vmulq_s32(v131, v103);
  v145 = vmlaq_s32(v12, v135, v103);
  v146 = vsubq_s32(v145, v144);
  v147 = vaddq_s32(v145, v144);
  v148 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v133, v9), v10), v103);
  v149 = vmulq_s32(vminq_s32(vmaxq_s32(v129, v9), v10), v103);
  v150 = vsubq_s32(v148, v149);
  v151 = vaddq_s32(v148, v149);
  v152 = vminq_s32(vmaxq_s32(v132, v9), v10);
  v153 = vminq_s32(vmaxq_s32(v134, v9), v10);
  v154 = vminq_s32(vmaxq_s32(v136, v9), v10);
  v155 = vminq_s32(vmaxq_s32(v138, v9), v10);
  v156 = vshlq_s32(v146, v11);
  v157 = vshlq_s32(v147, v11);
  v158 = vshlq_s32(v150, v11);
  v159 = vshlq_s32(v151, v11);
  *a2 = vminq_s32(vmaxq_s32(vaddq_s32(v154, v152), v9), v10);
  a2[1] = vminq_s32(vmaxq_s32(vaddq_s32(v155, v153), v9), v10);
  a2[14] = vminq_s32(vmaxq_s32(vsubq_s32(v155, v153), v9), v10);
  a2[15] = vminq_s32(vmaxq_s32(vsubq_s32(v154, v152), v9), v10);
  v160 = vminq_s32(vmaxq_s32(v140, v9), v10);
  v161 = vminq_s32(vmaxq_s32(v142, v9), v10);
  a2[2] = vminq_s32(vmaxq_s32(vaddq_s32(v157, v160), v9), v10);
  a2[3] = vminq_s32(vmaxq_s32(vaddq_s32(v159, v161), v9), v10);
  a2[12] = vminq_s32(vmaxq_s32(vsubq_s32(v161, v159), v9), v10);
  a2[13] = vminq_s32(vmaxq_s32(vsubq_s32(v160, v157), v9), v10);
  v162 = vminq_s32(vmaxq_s32(v141, v9), v10);
  v163 = vminq_s32(vmaxq_s32(v143, v9), v10);
  a2[4] = vminq_s32(vmaxq_s32(vaddq_s32(v158, v163), v9), v10);
  a2[5] = vminq_s32(vmaxq_s32(vaddq_s32(v156, v162), v9), v10);
  a2[10] = vminq_s32(vmaxq_s32(vsubq_s32(v162, v156), v9), v10);
  a2[11] = vminq_s32(vmaxq_s32(vsubq_s32(v163, v158), v9), v10);
  v164 = vminq_s32(vmaxq_s32(v128, v9), v10);
  v165 = vminq_s32(vmaxq_s32(v130, v9), v10);
  v166 = vminq_s32(vmaxq_s32(v137, v9), v10);
  v167 = vminq_s32(vmaxq_s32(v139, v9), v10);
  a2[6] = vminq_s32(vmaxq_s32(vaddq_s32(v167, v165), v9), v10);
  a2[7] = vminq_s32(vmaxq_s32(vaddq_s32(v166, v164), v9), v10);
  v168 = vmaxq_s32(vsubq_s32(v167, v165), v9);
  result = vminq_s32(vmaxq_s32(vsubq_s32(v166, v164), v9), v10);
  a2[8] = result;
  a2[9] = vminq_s32(v168, v10);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v171 = 10;
    }

    else
    {
      v171 = a5;
    }

    v172 = 32 << v171;
    v177 = vdupq_n_s32(v172 - 1);
    v178 = vdupq_n_s32(-v172);
    sub_277AEAB84(a2, a6);
    v173 = a2 + 2;
    v174 = -4;
    do
    {
      v175 = vminq_s32(vmaxq_s32(v173[-1], v178), v177);
      v173[-2] = vminq_s32(vmaxq_s32(v173[-2], v178), v177);
      v173[-1] = v175;
      result = vminq_s32(vmaxq_s32(*v173, v178), v177);
      v176 = vminq_s32(vmaxq_s32(v173[1], v178), v177);
      *v173 = result;
      v173[1] = v176;
      v173 += 4;
      v174 += 4;
    }

    while (v174 < 0xC);
  }

  return result;
}

void sub_277AF254C(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(-a3);
  v12 = vdupq_n_s32(1 << (a3 - 1));
  v13 = &dword_277C42240[64 * a3 - 636];
  v14 = vld1q_dup_f32(v13);
  v15 = a1[1];
  v16 = vshlq_s32(vmlaq_s32(v12, v14, v15), v11);
  v17 = &dword_277C42240[64 * a3 - 580];
  v18 = vld1q_dup_f32(v17);
  v19 = vshlq_s32(vmlaq_s32(v12, v18, v15), v11);
  v21 = a1[6];
  v20 = a1[7];
  v22 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 604]), v20), v11);
  v23 = &dword_277C42240[64 * a3 - 612];
  v24 = vld1q_dup_f32(v23);
  v25 = vshlq_s32(vmlaq_s32(v12, v24, v20), v11);
  v26 = &dword_277C42240[64 * a3 - 620];
  v27 = vld1q_dup_f32(v26);
  v28 = a1[4];
  v29 = a1[5];
  v30 = vmlaq_s32(v12, v27, v29);
  v31 = &dword_277C42240[64 * a3 - 596];
  v32 = vld1q_dup_f32(v31);
  v33 = vshlq_s32(v30, v11);
  v34 = vshlq_s32(vmlaq_s32(v12, v32, v29), v11);
  v35 = a1[2];
  v36 = a1[3];
  v37 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 588]), v36), v11);
  v38 = &dword_277C42240[64 * a3 - 628];
  v39 = vld1q_dup_f32(v38);
  v40 = vshlq_s32(vmlaq_s32(v12, v39, v36), v11);
  v41 = &dword_277C42240[64 * a3 - 632];
  v42 = vld1q_dup_f32(v41);
  v43 = vshlq_s32(vmlaq_s32(v12, v42, v35), v11);
  v44 = &dword_277C42240[64 * a3 - 584];
  v45 = vld1q_dup_f32(v44);
  v46 = vshlq_s32(vmlaq_s32(v12, v45, v35), v11);
  v47 = vshlq_s32(vmlaq_s32(v12, vdupq_n_s32(-dword_277C42240[64 * a3 - 600]), v21), v11);
  v48 = &dword_277C42240[64 * a3 - 616];
  v49 = vld1q_dup_f32(v48);
  v50 = vshlq_s32(vmlaq_s32(v12, v49, v21), v11);
  v51 = vaddq_s32(v22, v19);
  v52 = vsubq_s32(v19, v22);
  v53 = vminq_s32(vmaxq_s32(v51, v9), v10);
  v54 = vminq_s32(vmaxq_s32(v52, v9), v10);
  v55 = vminq_s32(vmaxq_s32(vaddq_s32(v37, v34), v9), v10);
  v56 = vminq_s32(vmaxq_s32(vsubq_s32(v37, v34), v9), v10);
  v57 = vminq_s32(vmaxq_s32(vaddq_s32(v40, v33), v9), v10);
  v58 = vminq_s32(vmaxq_s32(vsubq_s32(v40, v33), v9), v10);
  v59 = vaddq_s32(v25, v16);
  v60 = vsubq_s32(v16, v25);
  v61 = vminq_s32(vmaxq_s32(v59, v9), v10);
  v62 = vminq_s32(vmaxq_s32(v60, v9), v10);
  v63 = &dword_277C42240[64 * a3 - 608];
  v64 = vld1q_dup_f32(v63);
  v65 = vshlq_s32(vmlaq_s32(v12, v64, *a1), v11);
  LODWORD(v63) = dword_277C42240[64 * a3 - 624];
  v66 = vdupq_n_s32(v63);
  v67 = vshlq_s32(vmlaq_s32(v12, v66, v28), v11);
  v68 = dword_277C42240[64 * a3 - 592];
  v69 = vdupq_n_s32(v68);
  v70 = vshlq_s32(vmlaq_s32(v12, v69, v28), v11);
  v71 = vminq_s32(vmaxq_s32(vaddq_s32(v47, v46), v9), v10);
  v72 = vminq_s32(vmaxq_s32(vsubq_s32(v46, v47), v9), v10);
  v73 = vminq_s32(vmaxq_s32(vaddq_s32(v50, v43), v9), v10);
  v74 = vminq_s32(vmaxq_s32(vsubq_s32(v43, v50), v9), v10);
  v75 = vshlq_s32(vmlaq_s32(vmlsq_s32(v12, v54, v66), v69, v62), v11);
  v76 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v66, v62), v69, v54), v11);
  v77 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, vdupq_n_s32(-v63), v58), vdupq_n_s32(-v68), v56), v11);
  v78 = vshlq_s32(vmlaq_s32(vmlsq_s32(v12, v56, v66), v69, v58), v11);
  v79 = vminq_s32(vmaxq_s32(vaddq_s32(v67, v65), v9), v10);
  v80 = vminq_s32(vmaxq_s32(vsubq_s32(v65, v67), v9), v10);
  v81 = vminq_s32(vmaxq_s32(vaddq_s32(v70, v65), v9), v10);
  v82 = vminq_s32(vmaxq_s32(vsubq_s32(v65, v70), v9), v10);
  v83 = vmulq_s32(v72, v64);
  v84 = vmlaq_s32(v12, v74, v64);
  v85 = vshlq_s32(vsubq_s32(v84, v83), v11);
  v86 = vshlq_s32(vaddq_s32(v84, v83), v11);
  v87 = vminq_s32(vmaxq_s32(vaddq_s32(v55, v53), v9), v10);
  v88 = vminq_s32(vmaxq_s32(vsubq_s32(v53, v55), v9), v10);
  v89 = vminq_s32(vmaxq_s32(vaddq_s32(v77, v75), v9), v10);
  v90 = vminq_s32(vmaxq_s32(vsubq_s32(v75, v77), v9), v10);
  v91 = vminq_s32(vmaxq_s32(vaddq_s32(v61, v57), v9), v10);
  v92 = vminq_s32(vmaxq_s32(vsubq_s32(v61, v57), v9), v10);
  v93 = vsubq_s32(v76, v78);
  v94 = vminq_s32(vmaxq_s32(vaddq_s32(v78, v76), v9), v10);
  v95 = vminq_s32(vmaxq_s32(v93, v9), v10);
  v96 = vsubq_s32(v79, v73);
  v97 = vminq_s32(vmaxq_s32(vaddq_s32(v79, v73), v9), v10);
  v98 = vminq_s32(vmaxq_s32(v96, v9), v10);
  v99 = vminq_s32(vmaxq_s32(vaddq_s32(v86, v81), v9), v10);
  v100 = vminq_s32(vmaxq_s32(vsubq_s32(v81, v86), v9), v10);
  v101 = vsubq_s32(v82, v85);
  v102 = vminq_s32(vmaxq_s32(vaddq_s32(v85, v82), v9), v10);
  v103 = vminq_s32(vmaxq_s32(v101, v9), v10);
  v104 = vminq_s32(vmaxq_s32(vaddq_s32(v80, v71), v9), v10);
  v105 = vminq_s32(vmaxq_s32(vsubq_s32(v80, v71), v9), v10);
  v106 = vmulq_s32(v90, v64);
  v107 = vmlaq_s32(v12, v95, v64);
  v108 = vshlq_s32(vsubq_s32(v107, v106), v11);
  v109 = vshlq_s32(vaddq_s32(v107, v106), v11);
  v110 = vmulq_s32(v88, v64);
  v111 = vmlaq_s32(v12, v92, v64);
  v112 = vshlq_s32(vsubq_s32(v111, v110), v11);
  v113 = vshlq_s32(vaddq_s32(v111, v110), v11);
  *a2 = vminq_s32(vmaxq_s32(vaddq_s32(v97, v91), v9), v10);
  a2[1] = vminq_s32(vmaxq_s32(vaddq_s32(v99, v94), v9), v10);
  a2[14] = vminq_s32(vmaxq_s32(vsubq_s32(v99, v94), v9), v10);
  a2[15] = vminq_s32(vmaxq_s32(vsubq_s32(v97, v91), v9), v10);
  a2[2] = vminq_s32(vmaxq_s32(vaddq_s32(v109, v102), v9), v10);
  a2[3] = vminq_s32(vmaxq_s32(vaddq_s32(v113, v104), v9), v10);
  a2[12] = vminq_s32(vmaxq_s32(vsubq_s32(v104, v113), v9), v10);
  a2[13] = vminq_s32(vmaxq_s32(vsubq_s32(v102, v109), v9), v10);
  a2[4] = vminq_s32(vmaxq_s32(vaddq_s32(v112, v105), v9), v10);
  a2[5] = vminq_s32(vmaxq_s32(vaddq_s32(v108, v103), v9), v10);
  a2[10] = vminq_s32(vmaxq_s32(vsubq_s32(v103, v108), v9), v10);
  a2[11] = vminq_s32(vmaxq_s32(vsubq_s32(v105, v112), v9), v10);
  a2[6] = vminq_s32(vmaxq_s32(vaddq_s32(v100, v89), v9), v10);
  a2[7] = vminq_s32(vmaxq_s32(vaddq_s32(v98, v87), v9), v10);
  a2[8] = vminq_s32(vmaxq_s32(vsubq_s32(v98, v87), v9), v10);
  a2[9] = vminq_s32(vmaxq_s32(vsubq_s32(v100, v89), v9), v10);
  if (!a4)
  {
    if (a5 <= 10)
    {
      v115 = 10;
    }

    else
    {
      v115 = a5;
    }

    v116 = 32 << v115;
    v121 = vdupq_n_s32(v116 - 1);
    v122 = vdupq_n_s32(-v116);
    sub_277AEAB84(a2, a6);
    v117 = a2 + 2;
    v118 = -4;
    do
    {
      v119 = vminq_s32(vmaxq_s32(v117[-1], v122), v121);
      v117[-2] = vminq_s32(vmaxq_s32(v117[-2], v122), v121);
      v117[-1] = v119;
      v120 = vminq_s32(vmaxq_s32(v117[1], v122), v121);
      *v117 = vminq_s32(vmaxq_s32(*v117, v122), v121);
      v117[1] = v120;
      v117 += 4;
      v118 += 4;
    }

    while (v118 < 0xC);
  }
}

__n128 sub_277AF2AA8(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = &dword_277C42240[64 * a3 - 608];
  v10 = vld1q_dup_f32(v9);
  v11 = vshlq_s32(vmlaq_s32(vdupq_n_s32(1 << (a3 - 1)), v10, *a1), vdupq_n_s32(-a3));
  if (a4)
  {
    v12 = vdupq_n_s32(-v8);
    v13 = vdupq_n_s32(v8 - 1);
  }

  else
  {
    if (a5 <= 10)
    {
      v14 = 10;
    }

    else
    {
      v14 = a5;
    }

    v15 = 32 << v14;
    v12 = vdupq_n_s32(-v15);
    v13 = vdupq_n_s32(v15 - 1);
    if (a6)
    {
      v11 = vshlq_s32(vaddq_s32(v11, vdupq_n_s32(1 << a6 >> 1)), vdupq_n_s32(-a6));
    }
  }

  v16 = vminq_s32(vmaxq_s32(v11, v12), v13);
  *a1 = v16;
  *a2 = v16;
  v17 = *a1;
  a2[1] = *a1;
  a2[2] = v17;
  v18 = *a1;
  a2[3] = *a1;
  a2[4] = v18;
  v19 = *a1;
  a2[5] = *a1;
  a2[6] = v19;
  v20 = *a1;
  a2[7] = *a1;
  a2[8] = v20;
  v21 = *a1;
  a2[9] = *a1;
  a2[10] = v21;
  v22 = *a1;
  a2[11] = *a1;
  a2[12] = v22;
  v23 = *a1;
  a2[13] = *a1;
  a2[14] = v23;
  result = *a1;
  a2[15] = *a1;
  return result;
}

int32x4_t *sub_277AF2BC0(int32x4_t *result, int32x4_t *a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = vaddq_s32(*result, *result);
  *a2 = v6;
  v7 = vaddq_s32(result[1], result[1]);
  a2[1] = v7;
  v8 = vaddq_s32(result[2], result[2]);
  a2[2] = v8;
  v9 = vaddq_s32(result[3], result[3]);
  a2[3] = v9;
  v10 = vaddq_s32(result[4], result[4]);
  a2[4] = v10;
  v11 = vaddq_s32(result[5], result[5]);
  a2[5] = v11;
  v12 = vaddq_s32(result[6], result[6]);
  a2[6] = v12;
  v13 = vaddq_s32(result[7], result[7]);
  a2[7] = v13;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v14 = 10;
    }

    else
    {
      v14 = a5;
    }

    v15 = 32 << v14;
    v16 = -(32 << v14);
    v17 = v15 - 1;
    if (a6)
    {
      v18 = vdupq_n_s32(-a6);
      *a2 = vrshlq_s32(v6, v18);
      a2[1] = vrshlq_s32(v7, v18);
      a2[2] = vrshlq_s32(v8, v18);
      a2[3] = vrshlq_s32(v9, v18);
      a2[4] = vrshlq_s32(v10, v18);
      a2[5] = vrshlq_s32(v11, v18);
      a2[6] = vrshlq_s32(v12, v18);
      a2[7] = vrshlq_s32(v13, v18);
    }

    v19 = 0;
    v20 = vdupq_n_s32(v16);
    v21 = vdupq_n_s32(v17);
    v22 = 1;
    do
    {
      v23 = v22;
      v24 = &a2[v19];
      v25 = vminq_s32(vmaxq_s32(v24[1], v20), v21);
      *v24 = vminq_s32(vmaxq_s32(*v24, v20), v21);
      v24[1] = v25;
      v26 = vminq_s32(vmaxq_s32(v24[3], v20), v21);
      v24[2] = vminq_s32(vmaxq_s32(v24[2], v20), v21);
      v24[3] = v26;
      v19 = 4;
      v22 = 0;
    }

    while ((v23 & 1) != 0);
  }

  return result;
}

int32x4_t *sub_277AF2CD4(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  if (v6 + a5 <= 15)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = 1 << (v6 + a5 - 1);
  }

  v8 = vdupq_n_s32(-v7);
  v9 = vdupq_n_s32(v7 - 1);
  v10 = vdupq_n_s32(-a3);
  v11 = vdupq_n_s32(1 << (a3 - 1));
  v12 = &dword_277C42240[64 * a3 - 636];
  v13 = vld1q_dup_f32(v12);
  v15 = result[6];
  v14 = result[7];
  v16 = &dword_277C42240[64 * a3 - 580];
  v17 = vld1q_dup_f32(v16);
  v18 = result[1];
  v19 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v13, v14), v17, *result), v10);
  v20 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, *result, v13), v17, v14), v10);
  v21 = &dword_277C42240[64 * a3 - 620];
  v22 = vld1q_dup_f32(v21);
  v24 = result[4];
  v23 = result[5];
  v25 = &dword_277C42240[64 * a3 - 596];
  v26 = vld1q_dup_f32(v25);
  v27 = result[2];
  v28 = result[3];
  v29 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v22, v23), v26, v27), v10);
  v30 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v27, v22), v26, v23), v10);
  v31 = &dword_277C42240[64 * a3 - 604];
  v32 = vld1q_dup_f32(v31);
  v33 = &dword_277C42240[64 * a3 - 612];
  v34 = vld1q_dup_f32(v33);
  v35 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v32, v28), v34, v24), v10);
  v36 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v24, v32), v34, v28), v10);
  v37 = &dword_277C42240[64 * a3 - 588];
  v38 = vld1q_dup_f32(v37);
  v39 = &dword_277C42240[64 * a3 - 628];
  v40 = vld1q_dup_f32(v39);
  v41 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v38, v18), v40, v15), v10);
  v42 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v15, v38), v40, v18), v10);
  v43 = vminq_s32(vmaxq_s32(vaddq_s32(v35, v19), v8), v9);
  v44 = vminq_s32(vmaxq_s32(vsubq_s32(v19, v35), v8), v9);
  v45 = vaddq_s32(v36, v20);
  v46 = vsubq_s32(v20, v36);
  v47 = vminq_s32(vmaxq_s32(v45, v8), v9);
  v48 = vminq_s32(vmaxq_s32(v46, v8), v9);
  v49 = vminq_s32(vmaxq_s32(vaddq_s32(v41, v29), v8), v9);
  v50 = vminq_s32(vmaxq_s32(vsubq_s32(v29, v41), v8), v9);
  v51 = vaddq_s32(v42, v30);
  v52 = vsubq_s32(v30, v42);
  v53 = vminq_s32(vmaxq_s32(v51, v8), v9);
  v54 = &dword_277C42240[64 * a3 - 624];
  v55 = vld1q_dup_f32(v54);
  v56 = vminq_s32(vmaxq_s32(v52, v8), v9);
  v57 = &dword_277C42240[64 * a3 - 592];
  v58 = vld1q_dup_f32(v57);
  v59 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v55, v44), v58, v48), v10);
  v60 = vshlq_s32(vmlaq_s32(vmlsq_s32(v11, v48, v55), v58, v44), v10);
  v61 = vshlq_s32(vmlsq_s32(vmlaq_s32(v11, v55, v56), v50, v58), v10);
  v62 = vshlq_s32(vmlaq_s32(vmlaq_s32(v11, v55, v50), v58, v56), v10);
  v63 = vminq_s32(vmaxq_s32(vaddq_s32(v49, v43), v8), v9);
  v64 = vminq_s32(vmaxq_s32(vsubq_s32(v43, v49), v8), v9);
  v65 = vminq_s32(vmaxq_s32(vaddq_s32(v53, v47), v8), v9);
  v66 = vminq_s32(vmaxq_s32(vsubq_s32(v47, v53), v8), v9);
  v67 = vminq_s32(vmaxq_s32(vaddq_s32(v61, v59), v8), v9);
  v68 = vminq_s32(vmaxq_s32(vsubq_s32(v59, v61), v8), v9);
  v69 = vaddq_s32(v62, v60);
  v70 = vsubq_s32(v60, v62);
  v71 = vminq_s32(vmaxq_s32(v69, v8), v9);
  v72 = vminq_s32(vmaxq_s32(v70, v8), v9);
  v73 = &dword_277C42240[64 * a3 - 608];
  v74 = vld1q_dup_f32(v73);
  v75 = vmlaq_s32(v11, v74, v64);
  v76 = vmulq_s32(v74, v66);
  v77 = vshlq_s32(vaddq_s32(v75, v76), v10);
  v78 = vshlq_s32(vsubq_s32(v75, v76), v10);
  v79 = vmlaq_s32(v11, v74, v68);
  v80 = vmulq_s32(v74, v72);
  v81 = vshlq_s32(vaddq_s32(v79, v80), v10);
  v82 = vshlq_s32(vsubq_s32(v79, v80), v10);
  if (a4)
  {
    v83 = vnegq_s32(v67);
    v84 = vnegq_s32(v77);
    v85 = vnegq_s32(v82);
    v86 = vnegq_s32(v65);
  }

  else
  {
    if (a5 <= 10)
    {
      v87 = 10;
    }

    else
    {
      v87 = a5;
    }

    v88 = 32 << v87;
    v89 = vdupq_n_s32(-v88);
    v90 = vdupq_n_s32(v88 - 1);
    v91 = vdupq_n_s32(-a6);
    v92 = vdupq_n_s32(1 << a6 >> 1);
    v63 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v63, v92), v91), v89), v90);
    v83 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v92, v67), v91), v89), v90);
    v81 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v81, v92), v91), v89), v90);
    v84 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v92, v77), v91), v89), v90);
    v78 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v78, v92), v91), v89), v90);
    v85 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v92, v82), v91), v89), v90);
    v71 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v71, v92), v91), v89), v90);
    v86 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v92, v65), v91), v89), v90);
  }

  *a2 = v63;
  a2[1] = v83;
  a2[2] = v81;
  a2[3] = v84;
  a2[4] = v78;
  a2[5] = v85;
  a2[6] = v71;
  a2[7] = v86;
  return result;
}

int32x4_t *sub_277AF3038(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  v6 = vdupq_n_s32(-a3);
  v7 = vdupq_n_s32(1 << (a3 - 1));
  v8 = &dword_277C42240[64 * a3 - 580];
  v9 = vld1q_dup_f32(v8);
  v10 = vshlq_s32(vmlaq_s32(v7, v9, *result), v6);
  v11 = &dword_277C42240[64 * a3 - 636];
  v12 = vld1q_dup_f32(v11);
  v13 = vshlq_s32(vnegq_s32(vmlaq_s32(v7, v12, *result)), v6);
  v14 = &dword_277C42240[64 * a3 - 624];
  v15 = vld1q_dup_f32(v14);
  v16 = &dword_277C42240[64 * a3 - 592];
  v17 = vld1q_dup_f32(v16);
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v7, v15, v10), v17, v13), v6);
  v19 = vshlq_s32(vmlaq_s32(vmlsq_s32(v7, v13, v15), v17, v10), v6);
  v20 = &dword_277C42240[64 * a3 - 608];
  v21 = vld1q_dup_f32(v20);
  v22 = vmlaq_s32(v7, v21, v10);
  v23 = vmulq_s32(v21, v13);
  v24 = vshlq_s32(vaddq_s32(v22, v23), v6);
  v25 = vshlq_s32(vsubq_s32(v22, v23), v6);
  v26 = vmlaq_s32(v7, v21, v18);
  v27 = vmulq_s32(v21, v19);
  v28 = vshlq_s32(vaddq_s32(v26, v27), v6);
  v29 = vshlq_s32(vsubq_s32(v26, v27), v6);
  if (a4)
  {
    v30 = vnegq_s32(v18);
    v31 = vnegq_s32(v24);
    v32 = vnegq_s32(v29);
    v33 = vnegq_s32(v13);
  }

  else
  {
    if (a5 <= 10)
    {
      v34 = 10;
    }

    else
    {
      v34 = a5;
    }

    v35 = 32 << v34;
    v36 = vdupq_n_s32(-v35);
    v37 = vdupq_n_s32(v35 - 1);
    v38 = vdupq_n_s32(-a6);
    v39 = vdupq_n_s32(1 << a6 >> 1);
    v10 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v10, v39), v38), v36), v37);
    v30 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v39, v18), v38), v36), v37);
    v28 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v28, v39), v38), v36), v37);
    v31 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v39, v24), v38), v36), v37);
    v25 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v25, v39), v38), v36), v37);
    v32 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v39, v29), v38), v36), v37);
    v19 = vminq_s32(vmaxq_s32(vshlq_s32(vaddq_s32(v19, v39), v38), v36), v37);
    v33 = vminq_s32(vmaxq_s32(vshlq_s32(vsubq_s32(v39, v13), v38), v36), v37);
  }

  *a2 = v10;
  a2[1] = v30;
  a2[2] = v28;
  a2[3] = v31;
  a2[4] = v25;
  a2[5] = v32;
  a2[6] = v19;
  a2[7] = v33;
  return result;
}

int32x4_t *sub_277AF31E4(int32x4_t *result, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + a5;
  if (v7 <= 15)
  {
    v8 = 0x8000;
  }

  else
  {
    v8 = 1 << (v7 - 1);
  }

  v9 = vdupq_n_s32(-v8);
  v10 = vdupq_n_s32(v8 - 1);
  v11 = vdupq_n_s32(-a3);
  v12 = vdupq_n_s32(1 << (a3 - 1));
  v13 = result[1];
  v14 = &dword_277C42240[64 * a3 - 584];
  v15 = vld1q_dup_f32(v14);
  v16 = result[6];
  v17 = result[7];
  LODWORD(v14) = dword_277C42240[64 * a3 - 632];
  v18 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v15, v13), vdupq_n_s32(-v14), v17), v11);
  v19 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v15, v17), vdupq_n_s32(v14), v13), v11);
  v20 = result[5];
  v21 = &dword_277C42240[64 * a3 - 616];
  v22 = vld1q_dup_f32(v21);
  v23 = result[2];
  v24 = result[3];
  LODWORD(v21) = dword_277C42240[64 * a3 - 600];
  v25 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v22, v20), vdupq_n_s32(-v21), v24), v11);
  v26 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v22, v24), vdupq_n_s32(v21), v20), v11);
  v27 = &dword_277C42240[64 * a3 - 608];
  v28 = vld1q_dup_f32(v27);
  v29 = vmlaq_s32(v12, v28, *result);
  v30 = vmulq_s32(v28, result[4]);
  v31 = vshlq_s32(vaddq_s32(v29, v30), v11);
  v32 = vshlq_s32(vsubq_s32(v29, v30), v11);
  v33 = &dword_277C42240[64 * a3 - 592];
  v34 = vld1q_dup_f32(v33);
  v35 = dword_277C42240[64 * a3 - 624];
  v36 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v34, v23), vdupq_n_s32(-v35), v16), v11);
  v37 = vshlq_s32(vmlaq_s32(vmlaq_s32(v12, v34, v16), vdupq_n_s32(v35), v23), v11);
  v38 = vaddq_s32(v25, v18);
  v39 = vsubq_s32(v18, v25);
  v40 = vminq_s32(vmaxq_s32(v38, v9), v10);
  v41 = vaddq_s32(v26, v19);
  v42 = vsubq_s32(v19, v26);
  v43 = vminq_s32(vmaxq_s32(v41, v9), v10);
  v44 = vaddq_s32(v37, v31);
  v45 = vsubq_s32(v31, v37);
  v46 = vminq_s32(vmaxq_s32(v44, v9), v10);
  v47 = vminq_s32(vmaxq_s32(v45, v9), v10);
  v48 = vminq_s32(vmaxq_s32(vaddq_s32(v36, v32), v9), v10);
  v49 = vminq_s32(vmaxq_s32(vsubq_s32(v32, v36), v9), v10);
  v50 = vmulq_s32(vminq_s32(vmaxq_s32(v39, v9), v10), v28);
  v51 = vmlaq_s32(v12, vminq_s32(vmaxq_s32(v42, v9), v10), v28);
  v52 = vshlq_s32(vaddq_s32(v51, v50), v11);
  v53 = vshlq_s32(vsubq_s32(v51, v50), v11);
  v54 = vminq_s32(vmaxq_s32(vaddq_s32(v46, v43), v9), v10);
  v55 = vminq_s32(vmaxq_s32(vsubq_s32(v46, v43), v9), v10);
  v56 = vaddq_s32(v52, v48);
  v57 = vsubq_s32(v48, v52);
  v58 = vminq_s32(vmaxq_s32(v56, v9), v10);
  v59 = vminq_s32(vmaxq_s32(v57, v9), v10);
  *a2 = v54;
  a2[1] = v58;
  a2[6] = v59;
  a2[7] = v55;
  v60 = vsubq_s32(v49, v53);
  v61 = vminq_s32(vmaxq_s32(vaddq_s32(v53, v49), v9), v10);
  v62 = vminq_s32(vmaxq_s32(v60, v9), v10);
  v63 = vminq_s32(vmaxq_s32(vaddq_s32(v47, v40), v9), v10);
  a2[2] = v61;
  a2[3] = v63;
  v64 = vminq_s32(vmaxq_s32(vsubq_s32(v47, v40), v9), v10);
  a2[4] = v64;
  a2[5] = v62;
  if (!a4)
  {
    if (a5 <= 10)
    {
      v65 = 10;
    }

    else
    {
      v65 = a5;
    }

    v66 = 32 << v65;
    v67 = -(32 << v65);
    v68 = v66 - 1;
    if (a6)
    {
      v69 = vdupq_n_s32(-a6);
      *a2 = vrshlq_s32(v54, v69);
      a2[1] = vrshlq_s32(v58, v69);
      a2[2] = vrshlq_s32(v61, v69);
      a2[3] = vrshlq_s32(v63, v69);
      a2[4] = vrshlq_s32(v64, v69);
      a2[5] = vrshlq_s32(v62, v69);
      a2[6] = vrshlq_s32(v59, v69);
      a2[7] = vrshlq_s32(v55, v69);
    }

    v70 = 0;
    v71 = vdupq_n_s32(v67);
    v72 = vdupq_n_s32(v68);
    v73 = 1;
    do
    {
      v74 = v73;
      v75 = &a2[v70];
      v76 = vminq_s32(vmaxq_s32(v75[1], v71), v72);
      *v75 = vminq_s32(vmaxq_s32(*v75, v71), v72);
      v75[1] = v76;
      v77 = vminq_s32(vmaxq_s32(v75[3], v71), v72);
      v75[2] = vminq_s32(vmaxq_s32(v75[2], v71), v72);
      v75[3] = v77;
      v70 = 4;
      v73 = 0;
    }

    while ((v74 & 1) != 0);
  }

  return result;
}

int32x4_t sub_277AF34C0(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6)
{
  if (a4)
  {
    v6 = 6;
  }

  else
  {
    v6 = 8;
  }

  if (v6 + a5 <= 15)
  {
    v7 = 0x8000;
  }

  else
  {
    v7 = 1 << (v6 + a5 - 1);
  }

  v8 = &dword_277C42240[64 * a3 - 608];
  v9 = vld1q_dup_f32(v8);
  v10 = vaddq_s32(vshlq_s32(vmulq_s32(v9, *a1), vdupq_n_s32(-a3)), vdupq_n_s32(1 << (a3 - 1)));
  if (a4)
  {
    v11 = vdupq_n_s32(-v7);
    v12 = vdupq_n_s32(v7 - 1);
  }

  else
  {
    if (a5 <= 10)
    {
      v13 = 10;
    }

    else
    {
      v13 = a5;
    }

    v14 = 32 << v13;
    v11 = vdupq_n_s32(-v14);
    v12 = vdupq_n_s32(v14 - 1);
    v10 = vshlq_s32(vaddq_s32(v10, vdupq_n_s32(1 << a6 >> 1)), vdupq_n_s32(-a6));
  }

  result = vminq_s32(vmaxq_s32(v10, v11), v12);
  *a2 = result;
  a2[1] = result;
  a2[2] = result;
  a2[3] = result;
  a2[4] = result;
  a2[5] = result;
  a2[6] = result;
  a2[7] = result;
  return result;
}

uint64_t sub_277AF359C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = result;
  v98 = *MEMORY[0x277D85DE8];
  if (v11 < 9)
  {
    v17 = (v12 - 2);
    v18 = dword_277C31650[v17];
    v92 = *(&off_27A7239B8 + v12);
    v19 = dword_277C3BEE4[v12];
    v20 = dword_277C3BF30[v12];
    v21 = v20;
    if (v20 >= 32)
    {
      v22 = 32;
    }

    else
    {
      v22 = dword_277C3BF30[v12];
    }

    v78 = v9;
    v79 = v10;
    v90 = v13;
    v84 = dword_277C3BF30[v12];
    if (v19 == v20)
    {
      goto LABEL_6;
    }

    if (v19 <= v20)
    {
      if (v20 == 2 * v19)
      {
        v24 = -1;
        goto LABEL_29;
      }

      if (v20 == 4 * v19)
      {
        v24 = -2;
        goto LABEL_29;
      }
    }

    else
    {
      if (v19 == 2 * v20)
      {
        v24 = 1;
LABEL_29:
        v91 = v24;
        goto LABEL_30;
      }

      if (v19 == 4 * v20)
      {
        v24 = 2;
        goto LABEL_29;
      }
    }

LABEL_6:
    v91 = 0;
LABEL_30:
    v81 = dword_277C3BEE4[v12];
    v93 = (v19 >> 2);
    v80 = *(&off_28866ED60 + 12 * dword_277C3BE98[v12] + 4 * byte_277C31574[v11] + dword_277C315D0[v18] - 24);
    v82 = v11 > 8;
    v83 = v11;
    v89 = ((v18 + 8) >> 2) & 0xE;
    if (v89)
    {
      v27 = 0;
      v28 = dword_277C31694[v17];
      v85 = (v28 & 0x18) + 8;
      v88 = *(&off_28866ED60 + 12 * dword_277C31584[v12] + 4 * byte_277C31564[v11] + dword_277C315D0[v28] - 24);
      v87 = v82 | (0x11Fu >> v11);
      v29 = (((v28 >> 3) & 3) << 7) + 128;
      v30 = 4 * v22;
      v31 = v97;
      v32 = &v97[(v93 - 1) * v84];
      v33 = vdupq_n_s32(0xB50u);
      v86 = v33;
      do
      {
        v34 = 0;
        v35 = v16;
        do
        {
          *&v94[v34] = *v35;
          v34 += 16;
          v35 = (v35 + v30);
        }

        while (v29 != v34);
        if (v91 == 1 || v91 == -1)
        {
          v36 = v94;
          v37 = v85;
          do
          {
            *v36 = vrshrq_n_s32(vmulq_s32(*v36, v33), 0xCuLL);
            ++v36;
            --v37;
          }

          while (v37);
        }

        result = v88(v94, v94, 12, 0, v90, -*v92);
        if (v87)
        {
          v38 = v31;
          v39 = v95;
          v40 = v93;
          if (v93 >= 1)
          {
            do
            {
              v41 = v39[-2];
              v42 = v39[-1];
              v43 = vtrn1q_s32(v41, v42);
              v44 = vtrn2q_s32(v41, v42);
              v45 = *v39;
              v46 = v39[1];
              v39 += 4;
              v47 = vtrn1q_s32(v45, v46);
              v48 = vzip2q_s64(v43, v47);
              v43.i64[1] = v47.i64[0];
              v49 = vtrn2q_s32(v45, v46);
              v50 = vzip2q_s64(v44, v49);
              v44.i64[1] = v49.i64[0];
              v38[-2] = v43;
              v38[-1] = v44;
              *v38 = v48;
              v38[1] = v50;
              v38 += v84;
              --v40;
            }

            while (v40);
          }
        }

        else
        {
          v51 = v32;
          v52 = v95;
          v53 = v93;
          if (v93 >= 1)
          {
            do
            {
              v54 = v52[1];
              v55 = vtrn1q_s32(v54, *v52);
              v56 = vtrn2q_s32(v54, *v52);
              v58 = v52[-2];
              v57 = v52[-1];
              v59 = vtrn1q_s32(v57, v58);
              v60 = vzip2q_s64(v55, v59);
              v55.i64[1] = v59.i64[0];
              v61 = vtrn2q_s32(v57, v58);
              v62 = vzip2q_s64(v56, v61);
              v56.i64[1] = v61.i64[0];
              v51[-2] = v55;
              v51[-1] = v56;
              *v51 = v60;
              v51[1] = v62;
              v52 += 4;
              v51 -= v84;
              --v53;
            }

            while (v53);
          }
        }

        ++v27;
        v16 += 16;
        v32 += 4;
        v31 += 4;
        v33 = v86;
      }

      while (v27 != v89);
    }

    if (v93 >= 1)
    {
      v63 = 0;
      v64 = v96;
      do
      {
        result = v80(&v96[v63 * v84], &v96[v63 * v84], 12, 1, v90, 0);
        v65 = vdupq_n_s32(v92[1]);
        v66 = v64;
        v67 = v21;
        do
        {
          *v66 = vrshlq_s32(*v66, v65);
          ++v66;
          --v67;
        }

        while (v67);
        ++v63;
        v64 += v84;
      }

      while (v63 != v93);
    }

    v68 = (v81 >> 3);
    if (v68 >= 1)
    {
      v69 = 0;
      v70 = 0;
      v71 = 2 * v78;
      v72 = vdupq_n_s32(~(-1 << v90));
      if ((v82 | (0xAFu >> v83)))
      {
        v73 = 0;
      }

      else
      {
        v73 = (v84 - 1);
      }

      v74 = &v96[v73];
      v75 = 16;
      if (((v82 | (0xAFu >> v83)) & 1) == 0)
      {
        v75 = -16;
      }

      do
      {
        v76 = &v74[v69];
        v77 = v71;
        result = v21;
        do
        {
          *v77->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v76, *v77), 0), v72)), vminq_s32(vmaxq_s32(vaddw_high_s16(v76[v21], *v77->i8), 0), v72));
          v77 = (v77 + 2 * v79);
          v76 = (v76 + v75);
          --result;
        }

        while (result);
        ++v70;
        v71 += 16;
        v69 += 2 * v21;
      }

      while (v70 != v68);
    }

    return result;
  }

  if (v11 <= 0xF)
  {
    if (((1 << v11) & 0x5400) != 0)
    {
      v25 = (2 * v9);

      return sub_277AF3BE0(result, v25, v10, v11, v12, v13);
    }

    else if (((1 << v11) & 0xA800) != 0)
    {
      v23 = (2 * v9);

      return sub_277AF4018(result, v23, v10, v11, v12, v13);
    }

    else if (v11 == 9)
    {
      v26 = 2 * v9;

      return sub_277AF44DC(result, v26, v10, v12, v13, v13, v14, v15);
    }
  }

  return result;
}

uint64_t sub_277AF3BE0(uint64_t result, int16x4_t *a2, int a3, int a4, unsigned int a5, unsigned int a6)
{
  v7 = result;
  v66[124] = *MEMORY[0x277D85DE8];
  v8 = dword_277C3BF30[a5];
  v9 = v8;
  if (v8 >= 32)
  {
    v10 = 32;
  }

  else
  {
    v10 = dword_277C3BF30[a5];
  }

  v61 = *(&off_27A7239B8 + a5);
  v11 = dword_277C3BEE4[a5];
  if (v11 >= 32)
  {
    v12 = 32;
  }

  else
  {
    v12 = v11;
  }

  v56 = dword_277C3BF30[a5];
  v55 = dword_277C3BEE4[a5];
  if (v11 == v8)
  {
    goto LABEL_8;
  }

  if (v11 <= v8)
  {
    if (v8 == 2 * v11)
    {
      v13 = -1;
      goto LABEL_18;
    }

    if (v8 == 4 * v11)
    {
      v13 = -2;
      goto LABEL_18;
    }

LABEL_8:
    v60 = 0;
    goto LABEL_19;
  }

  if (v11 != 2 * v8)
  {
    if (v11 == 4 * v8)
    {
      v13 = 2;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v13 = 1;
LABEL_18:
  v60 = v13;
LABEL_19:
  v14 = (v12 >> 2);
  v54 = *(&off_28866ED60 + 12 * dword_277C3BE98[a5] + 4 * byte_277C31574[a4] + dword_277C315D0[v10 - 1] - 24);
  v52 = (a4 - 4) >> 1;
  v51 = (v52 | ((a4 - 4) << 7)) > 5u;
  v59 = ((v10 + 7) >> 2) & 0xFFFFFFFE;
  if (v59 >= 1)
  {
    v15 = 0;
    v16 = 4 * v10;
    v58 = *(&off_28866ED60 + 12 * dword_277C31584[a5] + 4 * byte_277C31564[a4] - 24);
    v17 = v66;
    v18 = vdupq_n_s32(0xB50u);
    v19 = 16 * v8;
    v57 = v18;
    do
    {
      v20 = 0;
      v21 = v7;
      do
      {
        v63[v20++] = *v21;
        v21 = (v21 + v16);
      }

      while (v12 != v20);
      if (v60 == 1 || v60 == -1)
      {
        v22 = v63;
        v23 = v12;
        do
        {
          *v22 = vrshrq_n_s32(vmulq_s32(*v22, v18), 0xCuLL);
          ++v22;
          --v23;
        }

        while (v23);
      }

      result = v58(v63, v63, 12, 0, a6, -*v61);
      v24 = v17;
      v25 = &v64;
      v26 = (v12 >> 2);
      if (v14 >= 1)
      {
        do
        {
          v27 = v25[-2];
          v28 = v25[-1];
          v29 = vtrn1q_s32(v27, v28);
          v30 = vtrn2q_s32(v27, v28);
          v31 = v25[1];
          v32 = vtrn1q_s32(*v25, v31);
          v33 = vtrn2q_s32(*v25, v31);
          v34 = vzip2q_s64(v29, v32);
          v29.i64[1] = v32.i64[0];
          v32.i64[0] = v30.i64[0];
          v32.i64[1] = v33.i64[0];
          v35 = vzip2q_s64(v30, v33);
          v25[-2] = v29;
          v25[-1] = v32;
          *v25 = v34;
          v25[1] = v35;
          v25 += 4;
          v24[-2] = v29;
          v24[-1] = v32;
          *v24 = v34;
          v24[1] = v35;
          v24 = (v24 + v19);
          --v26;
        }

        while (v26);
      }

      ++v15;
      v7 += 16;
      v17 += 4;
      v18 = v57;
    }

    while (v15 != v59);
  }

  if (v14 >= 1)
  {
    v36 = 0;
    v37 = v65;
    do
    {
      result = v54(&v65[v36 * v56], &v65[v36 * v56], 12, 1, a6, 0);
      v38 = vdupq_n_s32(v61[1]);
      v39 = v37;
      v40 = v9;
      do
      {
        *v39 = vrshlq_s32(*v39, v38);
        ++v39;
        --v40;
      }

      while (v40);
      ++v36;
      v37 += v56;
    }

    while (v36 != v14);
  }

  v41 = (v55 >> 3);
  if (v41 >= 1)
  {
    v42 = 0;
    v43 = 0;
    v44 = vdupq_n_s32(~(-1 << a6));
    if ((v51 | (0x18u >> v52)))
    {
      v45 = 0;
    }

    else
    {
      v45 = (v56 - 1);
    }

    v46 = &v65[v45];
    v47 = 16;
    if (((v51 | (0x18u >> v52)) & 1) == 0)
    {
      v47 = -16;
    }

    do
    {
      v48 = &v46[v42];
      v49 = a2;
      v50 = v9;
      do
      {
        *v49->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v48, *v49), 0), v44)), vminq_s32(vmaxq_s32(vaddw_high_s16(v48[v9], *v49->i8), 0), v44));
        v49 = (v49 + 2 * a3);
        v48 = (v48 + v47);
        --v50;
      }

      while (v50);
      ++v43;
      a2 += 2;
      v42 += 2 * v9;
    }

    while (v43 != v41);
  }

  return result;
}

uint64_t sub_277AF4018(uint64_t result, int16x4_t *a2, int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v6 = result;
  v85 = *MEMORY[0x277D85DE8];
  v7 = dword_277C3BEE4[a5];
  v78 = *(&off_27A7239B8 + a5);
  if (v7 >= 32)
  {
    v8 = 32;
  }

  else
  {
    v8 = dword_277C3BEE4[a5];
  }

  v9 = dword_277C3BF30[a5];
  v10 = v9;
  if (v9 >= 32)
  {
    v11 = 32;
  }

  else
  {
    v11 = dword_277C3BF30[a5];
  }

  v69 = dword_277C3BF30[a5];
  v68 = dword_277C3BEE4[a5];
  if (v7 == v9)
  {
    goto LABEL_8;
  }

  if (v7 <= v9)
  {
    if (v9 == 2 * v7)
    {
      v12 = -1;
      goto LABEL_18;
    }

    if (v9 == 4 * v7)
    {
      v12 = -2;
      goto LABEL_18;
    }

LABEL_8:
    v77 = 0;
    goto LABEL_19;
  }

  if (v7 != 2 * v9)
  {
    if (v7 == 4 * v9)
    {
      v12 = 2;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_18:
  v77 = v12;
LABEL_19:
  v80 = (v8 >> 2);
  v67 = *(&off_28866ED60 + 12 * dword_277C3BE98[a5] + 4 * byte_277C31574[a4] - 24);
  v71 = a4 > 0xF;
  v72 = a4;
  v76 = (v11 >> 2);
  if (v76 >= 1)
  {
    v13 = 0;
    v14 = v8 - 1;
    v15 = (v14 & 0xFFFFFFF8) + 8;
    v75 = *(&off_28866ED60 + 12 * dword_277C31584[a5] + 4 * byte_277C31564[a4] + dword_277C315D0[v14] - 24);
    v74 = v71 | (0x7F1Fu >> a4);
    v16 = 4 * v11;
    v17 = v84;
    v18 = &v84[(v80 - 1) * v10];
    v19 = vdupq_n_s32(0xB50u);
    v73 = v19;
    do
    {
      v20 = 0;
      v21 = v6;
      do
      {
        v81[v20++] = *v21;
        v21 = (v21 + v16);
      }

      while (v15 != v20);
      if (v77 == 1 || v77 == -1)
      {
        v22 = v81;
        v23 = -v15;
        do
        {
          *v22 = vrshrq_n_s32(vmulq_s32(*v22, v19), 0xCuLL);
          ++v22;
        }

        while (!__CFADD__(v23++, 1));
      }

      result = v75(v81, v81, 12, 0, a6, -*v78);
      if (v74)
      {
        v25 = v17;
        v26 = v82;
        v27 = v80;
        if (v80 >= 1)
        {
          do
          {
            v28 = v26[-2];
            v29 = v26[-1];
            v30 = vtrn1q_s32(v28, v29);
            v31 = vtrn2q_s32(v28, v29);
            v32 = *v26;
            v33 = v26[1];
            v26 += 4;
            v34 = vtrn1q_s32(v32, v33);
            v35 = vzip2q_s64(v30, v34);
            v30.i64[1] = v34.i64[0];
            v36 = vtrn2q_s32(v32, v33);
            v37 = vzip2q_s64(v31, v36);
            v31.i64[1] = v36.i64[0];
            v25[-2] = v30;
            v25[-1] = v31;
            *v25 = v35;
            v25[1] = v37;
            v25 += v10;
            --v27;
          }

          while (v27);
        }
      }

      else
      {
        v38 = v18;
        v39 = v82;
        v40 = v80;
        if (v80 >= 1)
        {
          do
          {
            v41 = v39[1];
            v42 = vtrn1q_s32(v41, *v39);
            v43 = vtrn2q_s32(v41, *v39);
            v45 = v39[-2];
            v44 = v39[-1];
            v46 = vtrn1q_s32(v44, v45);
            v47 = vzip2q_s64(v42, v46);
            v42.i64[1] = v46.i64[0];
            v48 = vtrn2q_s32(v44, v45);
            v49 = vzip2q_s64(v43, v48);
            v43.i64[1] = v48.i64[0];
            v38[-2] = v42;
            v38[-1] = v43;
            *v38 = v47;
            v38[1] = v49;
            v39 += 4;
            v38 -= v10;
            --v40;
          }

          while (v40);
        }
      }

      ++v13;
      v6 += 16;
      v18 += 4;
      v17 += 4;
      v19 = v73;
    }

    while (v13 != v76);
  }

  v50 = a2;
  if (v80 >= 1)
  {
    v51 = 0;
    v52 = v83;
    do
    {
      result = v67(&v83[v51 * v10], &v83[v51 * v10], 12, 1, a6, 0);
      v53 = vdupq_n_s32(v78[1]);
      v54 = v52;
      v55 = v69;
      do
      {
        *v54 = vrshlq_s32(*v54, v53);
        ++v54;
        --v55;
      }

      while (v55);
      ++v51;
      v52 += v10;
    }

    while (v51 != v80);
  }

  v56 = (v68 >> 3);
  if (v56 >= 1)
  {
    v57 = 0;
    v58 = 0;
    v59 = vdupq_n_s32(~(-1 << a6));
    if ((v71 | (0xBEAFu >> v72)))
    {
      v60 = 0;
    }

    else
    {
      v60 = (v10 - 1);
    }

    v61 = &v83[v60];
    v62 = 16;
    if (((v71 | (0xBEAFu >> v72)) & 1) == 0)
    {
      v62 = -16;
    }

    do
    {
      v63 = &v61[v57];
      v64 = v50;
      v65 = v10;
      do
      {
        *v64->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v63, *v64), 0), v59)), vminq_s32(vmaxq_s32(vaddw_high_s16(v63[v10], *v64->i8), 0), v59));
        v64 = (v64 + 2 * a3);
        v63 = (v63 + v62);
        --v65;
      }

      while (v65);
      ++v58;
      v50 += 2;
      v57 += 2 * v69;
    }

    while (v58 != v56);
  }

  return result;
}

uint64_t sub_277AF44DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v64 = v11;
  v13 = v12;
  v14 = result;
  v68[508] = *MEMORY[0x277D85DE8];
  v63 = *(&off_27A7239B8 + v10);
  v15 = dword_277C3BEE4[v10];
  v16 = dword_277C3BF30[v10];
  v17 = v16;
  if (v16 >= 32)
  {
    v18 = 32;
  }

  else
  {
    v18 = dword_277C3BF30[v10];
  }

  if (v15 >= 32)
  {
    v19 = 32;
  }

  else
  {
    v19 = v15;
  }

  v55 = v9;
  v58 = dword_277C3BF30[v10];
  v57 = dword_277C3BEE4[v10];
  if (v15 == v16)
  {
    goto LABEL_8;
  }

  if (v15 <= v16)
  {
    if (v16 == 2 * v15)
    {
      v20 = -1;
      goto LABEL_18;
    }

    if (v16 == 4 * v15)
    {
      v20 = -2;
      goto LABEL_18;
    }

LABEL_8:
    v62 = 0;
    goto LABEL_19;
  }

  if (v15 != 2 * v16)
  {
    if (v15 == 4 * v16)
    {
      v20 = 2;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  v20 = 1;
LABEL_18:
  v62 = v20;
LABEL_19:
  v21 = (v19 >> 2);
  v56 = *(&off_28866ED60 + 12 * dword_277C3BE98[v10] - 16);
  v61 = (v18 >> 2);
  if (v61 >= 1)
  {
    v22 = 0;
    v23 = 4 * v18;
    v60 = *(&off_28866ED60 + 12 * dword_277C31584[v10] - 16);
    v24 = v68;
    v25 = 16 * v16;
    v26 = vdupq_n_s32(0xB50u);
    v59 = v26;
    do
    {
      v27 = 0;
      v28 = v14;
      do
      {
        v65[v27++] = *v28;
        v28 = (v28 + v23);
      }

      while (v19 != v27);
      if (v62 == 1 || v62 == -1)
      {
        v29 = v65;
        v30 = v19;
        do
        {
          *v29 = vrshrq_n_s32(vmulq_s32(*v29, v26), 0xCuLL);
          ++v29;
          --v30;
        }

        while (v30);
      }

      result = v60(v65, v65, 12, 0, v64, -*v63);
      v31 = v24;
      v32 = &v66;
      v33 = (v19 >> 2);
      if (v21 >= 1)
      {
        do
        {
          v34 = v32[-2];
          v35 = v32[-1];
          v36 = vtrn1q_s32(v34, v35);
          v37 = vtrn2q_s32(v34, v35);
          v38 = v32[1];
          v39 = vtrn1q_s32(*v32, v38);
          v40 = vtrn2q_s32(*v32, v38);
          v41 = vzip2q_s64(v36, v39);
          v36.i64[1] = v39.i64[0];
          v39.i64[0] = v37.i64[0];
          v39.i64[1] = v40.i64[0];
          v42 = vzip2q_s64(v37, v40);
          v32[-2] = v36;
          v32[-1] = v39;
          *v32 = v41;
          v32[1] = v42;
          v32 += 4;
          v31[-2] = v36;
          v31[-1] = v39;
          *v31 = v41;
          v31[1] = v42;
          v31 = (v31 + v25);
          --v33;
        }

        while (v33);
      }

      ++v22;
      v14 += 16;
      v24 += 4;
      v26 = v59;
    }

    while (v22 != v61);
  }

  if (v21 >= 1)
  {
    v43 = 0;
    v44 = v67;
    do
    {
      result = v56(&v67[v43 * v58], &v67[v43 * v58], 12, 1, v64, 0);
      v45 = vdupq_n_s32(v63[1]);
      v46 = v44;
      v47 = v17;
      do
      {
        *v46 = vrshlq_s32(*v46, v45);
        ++v46;
        --v47;
      }

      while (v47);
      ++v43;
      v44 += v58;
    }

    while (v43 != v21);
  }

  v48 = (v57 >> 3);
  if (v48 >= 1)
  {
    v49 = 0;
    v50 = 0;
    v51 = vdupq_n_s32(~(-1 << v64));
    do
    {
      v52 = &v67[v49];
      v53 = v13;
      v54 = v17;
      do
      {
        *v53->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(*v52, *v53), 0), v51)), vminq_s32(vmaxq_s32(vaddw_high_s16(v52[v17], *v53->i8), 0), v51));
        ++v52;
        v53 = (v53 + 2 * v55);
        --v54;
      }

      while (v54);
      ++v50;
      v49 += 2 * v58;
      v13 += 2;
    }

    while (v50 != v48);
  }

  return result;
}

double sub_277AF48AC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v530 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v11 = a1;
  v12 = *a4;
  v13 = a4[2];
  switch(*(a4 + 1))
  {
    case 0:
      if (a4[1])
      {
        if (a4[5] < 2)
        {
          v218 = 0;
          v219 = (2 * a2);
          v220 = (*a1 >> 2) - (*a1 >> 3);
          v482.i32[2] = *a1 >> 3;
          v482.i32[3] = v482.i32[2];
          v221 = 2 * a3;
          v222 = 3 * a3;
          v482.i64[0] = __PAIR64__(v482.u32[2], v220);
          do
          {
            v223 = v482.i32[v218];
            v224 = v223 >> 1;
            v225 = v223 - (v223 >> 1) + *v219;
            if (v13 == 12)
            {
              if (v225 >= 0xFFF)
              {
                v236 = 4095;
              }

              else
              {
                v236 = v225;
              }

              if (v225 >= 0)
              {
                v237 = v236;
              }

              else
              {
                v237 = 0;
              }

              *v219 = v237;
              v238 = v224 + v219[a3];
              if (v238 >= 0xFFF)
              {
                v239 = 4095;
              }

              else
              {
                v239 = v224 + v219[a3];
              }

              if (v238 >= 0)
              {
                v240 = v239;
              }

              else
              {
                v240 = 0;
              }

              v219[a3] = v240;
              v241 = v224 + v219[v221];
              if (v241 >= 0xFFF)
              {
                v242 = 4095;
              }

              else
              {
                v242 = v224 + v219[v221];
              }

              if (v241 >= 0)
              {
                v243 = v242;
              }

              else
              {
                v243 = 0;
              }

              v219[v221] = v243;
              v234 = v224 + v219[v222];
              if (v234 >= 0xFFF)
              {
                v235 = 4095;
              }

              else
              {
                v235 = v234;
              }
            }

            else if (v13 == 10)
            {
              if (v225 >= 0x3FF)
              {
                v226 = 1023;
              }

              else
              {
                v226 = v225;
              }

              if (v225 >= 0)
              {
                v227 = v226;
              }

              else
              {
                v227 = 0;
              }

              *v219 = v227;
              v228 = v224 + v219[a3];
              if (v228 >= 0x3FF)
              {
                v229 = 1023;
              }

              else
              {
                v229 = v224 + v219[a3];
              }

              if (v228 >= 0)
              {
                v230 = v229;
              }

              else
              {
                v230 = 0;
              }

              v219[a3] = v230;
              v231 = v224 + v219[v221];
              if (v231 >= 0x3FF)
              {
                v232 = 1023;
              }

              else
              {
                v232 = v224 + v219[v221];
              }

              if (v231 >= 0)
              {
                v233 = v232;
              }

              else
              {
                v233 = 0;
              }

              v219[v221] = v233;
              v234 = v224 + v219[v222];
              if (v234 >= 0x3FF)
              {
                v235 = 1023;
              }

              else
              {
                v235 = v234;
              }
            }

            else
            {
              if (v225 >= 0xFF)
              {
                v244 = 255;
              }

              else
              {
                v244 = v225;
              }

              if (v225 >= 0)
              {
                v245 = v244;
              }

              else
              {
                v245 = 0;
              }

              *v219 = v245;
              v246 = v224 + v219[a3];
              if (v246 >= 0xFF)
              {
                v247 = 255;
              }

              else
              {
                v247 = v224 + v219[a3];
              }

              if (v246 >= 0)
              {
                v248 = v247;
              }

              else
              {
                v248 = 0;
              }

              v219[a3] = v248;
              v249 = v224 + v219[v221];
              if (v249 >= 0xFF)
              {
                v250 = 255;
              }

              else
              {
                v250 = v224 + v219[v221];
              }

              if (v249 >= 0)
              {
                v251 = v250;
              }

              else
              {
                v251 = 0;
              }

              v219[v221] = v251;
              v234 = v224 + v219[v222];
              if (v234 >= 0xFF)
              {
                v235 = 255;
              }

              else
              {
                v235 = v234;
              }
            }

            if ((v234 & 0x80000000) == 0)
            {
              v252 = v235;
            }

            else
            {
              v252 = 0;
            }

            v219[v222] = v252;
            ++v219;
            ++v218;
          }

          while ((v218 * 4) != 16);
        }

        else
        {
          v14 = 0;
          do
          {
            v15 = &v482.i32[v14 / 4];
            v16 = *(a1 + v14 + 16);
            v17 = *(a1 + v14 + 48);
            v18 = (v16 >> 2) + (*(a1 + v14) >> 2);
            v19 = (*(a1 + v14 + 32) >> 2) - (v17 >> 2);
            v20 = (v18 - v19) >> 1;
            v21 = v20 - (v17 >> 2);
            v22 = v20 - (v16 >> 2);
            *v15 = v18 - v21;
            v15[4] = v21;
            v15[8] = v22;
            v15[12] = v22 + v19;
            v14 += 4;
          }

          while (v14 != 16);
          v23 = 0;
          v24 = (2 * a2);
          v25 = 2 * a3;
          v26 = 3 * a3;
          do
          {
            v27 = v482.i32[v23 + 1];
            v28 = v482.i32[v23 + 3];
            v29 = v27 + v482.i32[v23];
            v30 = v482.i32[v23 + 2] - v28;
            v31 = (v29 - v30) >> 1;
            v32 = v31 - v28;
            v33 = v31 - v27;
            v34 = v33 + v30;
            v35 = v29 - v32 + *v24;
            if (v13 == 12)
            {
              if (v35 >= 0xFFF)
              {
                v46 = 4095;
              }

              else
              {
                v46 = v29 - v32 + *v24;
              }

              if (v35 >= 0)
              {
                v47 = v46;
              }

              else
              {
                v47 = 0;
              }

              *v24 = v47;
              v48 = v32 + v24[v9];
              if (v48 >= 0xFFF)
              {
                v49 = 4095;
              }

              else
              {
                v49 = v48;
              }

              if (v48 >= 0)
              {
                v50 = v49;
              }

              else
              {
                v50 = 0;
              }

              v24[v9] = v50;
              v51 = v33 + v24[v25];
              if (v51 >= 0xFFF)
              {
                v52 = 4095;
              }

              else
              {
                v52 = v51;
              }

              if (v51 >= 0)
              {
                v53 = v52;
              }

              else
              {
                v53 = 0;
              }

              v24[v25] = v53;
              v44 = v34 + v24[v26];
              if (v44 >= 0xFFF)
              {
                v45 = 4095;
              }

              else
              {
                v45 = v44;
              }
            }

            else if (v13 == 10)
            {
              if (v35 >= 0x3FF)
              {
                v36 = 1023;
              }

              else
              {
                v36 = v29 - v32 + *v24;
              }

              if (v35 >= 0)
              {
                v37 = v36;
              }

              else
              {
                v37 = 0;
              }

              *v24 = v37;
              v38 = v32 + v24[v9];
              if (v38 >= 0x3FF)
              {
                v39 = 1023;
              }

              else
              {
                v39 = v38;
              }

              if (v38 >= 0)
              {
                v40 = v39;
              }

              else
              {
                v40 = 0;
              }

              v24[v9] = v40;
              v41 = v33 + v24[v25];
              if (v41 >= 0x3FF)
              {
                v42 = 1023;
              }

              else
              {
                v42 = v41;
              }

              if (v41 >= 0)
              {
                v43 = v42;
              }

              else
              {
                v43 = 0;
              }

              v24[v25] = v43;
              v44 = v34 + v24[v26];
              if (v44 >= 0x3FF)
              {
                v45 = 1023;
              }

              else
              {
                v45 = v44;
              }
            }

            else
            {
              if (v35 >= 0xFF)
              {
                v54 = 255;
              }

              else
              {
                v54 = v29 - v32 + *v24;
              }

              if (v35 >= 0)
              {
                v55 = v54;
              }

              else
              {
                v55 = 0;
              }

              *v24 = v55;
              v56 = v32 + v24[v9];
              if (v56 >= 0xFF)
              {
                v57 = 255;
              }

              else
              {
                v57 = v56;
              }

              if (v56 >= 0)
              {
                v58 = v57;
              }

              else
              {
                v58 = 0;
              }

              v24[v9] = v58;
              v59 = v33 + v24[v25];
              if (v59 >= 0xFF)
              {
                v60 = 255;
              }

              else
              {
                v60 = v59;
              }

              if (v59 >= 0)
              {
                v61 = v60;
              }

              else
              {
                v61 = 0;
              }

              v24[v25] = v61;
              v44 = v34 + v24[v26];
              if (v44 >= 0xFF)
              {
                v45 = 255;
              }

              else
              {
                v45 = v44;
              }
            }

            if ((v44 & 0x80000000) == 0)
            {
              v62 = v45;
            }

            else
            {
              v62 = 0;
            }

            v24[v26] = v62;
            ++v24;
            v23 += 4;
          }

          while ((v23 * 4) != 64);
        }
      }

      else
      {
        v216 = (2 * a2);
        v217 = *a4;

        *a5.i64 = sub_277AE8EB8(a1, v216, a3, v217, v13, *a5.i64);
      }

      return *a5.i64;
    case 1:
      if ((v12 - 9) > 6u)
      {
        v180 = 2 * a2;
        if (*a4 > 3u)
        {
          if (*a4 <= 5u)
          {
            if (v12 == 4)
            {
              v411 = *(a1 + 16);
              v482 = *a1;
              v483 = v411;
              v412 = *(a1 + 48);
              v484 = *(a1 + 32);
              v485 = v412;
              v413 = *(a1 + 80);
              v486 = *(a1 + 64);
              v487 = v413;
              v414 = *(a1 + 112);
              v488 = *(a1 + 96);
              v489 = v414;
              v415 = *(a1 + 144);
              v490 = *(a1 + 128);
              v491 = v415;
              v416 = *(a1 + 176);
              v492 = *(a1 + 160);
              v493 = v416;
              v417 = *(a1 + 208);
              v494 = *(a1 + 192);
              v495 = v417;
              v418 = *(a1 + 240);
              v496 = *(a1 + 224);
              v497 = v418;
              sub_277AE9D58(&v482, &v514, 0, v13, 1);
LABEL_274:
              v419 = vtrn1q_s32(v514, v516);
              v420 = vtrn2q_s32(v514, v516);
              v421 = vtrn1q_s32(v518, v520);
              v422 = vtrn2q_s32(v518, v520);
              v423 = vzip2q_s64(v419, v421);
              v419.i64[1] = v421.i64[0];
              v424 = vzip2q_s64(v420, v422);
              v420.i64[1] = v422.i64[0];
              v425 = vtrn1q_s32(v515, v517);
              v426 = vtrn2q_s32(v515, v517);
              v427 = vtrn1q_s32(v519, v521);
              v428 = vtrn2q_s32(v519, v521);
              v429 = vzip2q_s64(v425, v427);
              *&v430 = v425.i64[0];
              *(&v430 + 1) = v427.i64[0];
              v431 = vzip2q_s64(v426, v428);
              *&v432 = v426.i64[0];
              *(&v432 + 1) = v428.i64[0];
              v433 = vtrn1q_s32(v522, v524);
              v434 = vtrn2q_s32(v522, v524);
              v435 = vtrn1q_s32(v526, v528);
              v436 = vtrn2q_s32(v526, v528);
              v437 = vzip2q_s64(v433, v435);
              v433.i64[1] = v435.i64[0];
              v482 = v419;
              v483 = v433;
              v438 = vzip2q_s64(v434, v436);
              v434.i64[1] = v436.i64[0];
              v484 = v420;
              v485 = v434;
              v486 = v423;
              v487 = v437;
              v488 = v424;
              v489 = v438;
              v439 = vtrn1q_s32(v523, v525);
              v440 = vtrn2q_s32(v523, v525);
              v441 = vtrn1q_s32(v527, v529);
              v442 = vtrn2q_s32(v527, v529);
              v443 = vzip2q_s64(v439, v441);
              v439.i64[1] = v441.i64[0];
              v490 = v430;
              v491 = v439;
              v444 = vzip2q_s64(v440, v442);
              v440.i64[1] = v442.i64[0];
              v492 = v432;
              v493 = v440;
              v494 = v429;
              v495 = v443;
              v496 = v431;
              v497 = v444;
              sub_277AEA4A0(&v482, &v514, 1, v13, 0);
              v374 = v180;
              v375 = v9;
              v376 = 0;
              goto LABEL_275;
            }

            v297 = *(a1 + 16);
            v482 = *a1;
            v483 = v297;
            v298 = *(a1 + 48);
            v484 = *(a1 + 32);
            v485 = v298;
            v299 = *(a1 + 80);
            v486 = *(a1 + 64);
            v487 = v299;
            v300 = *(a1 + 112);
            v488 = *(a1 + 96);
            v489 = v300;
            v301 = *(a1 + 144);
            v490 = *(a1 + 128);
            v491 = v301;
            v302 = *(a1 + 176);
            v492 = *(a1 + 160);
            v493 = v302;
            v303 = *(a1 + 208);
            v494 = *(a1 + 192);
            v495 = v303;
            v304 = *(a1 + 240);
            v496 = *(a1 + 224);
            v497 = v304;
            sub_277AEA4A0(&v482, &v514, 0, v13, 1);
            v305 = vtrn1q_s32(v514, v516);
            v306 = vtrn2q_s32(v514, v516);
            v307 = vtrn1q_s32(v518, v520);
            v308 = vtrn2q_s32(v518, v520);
            v309 = vzip2q_s64(v305, v307);
            v305.i64[1] = v307.i64[0];
            v310 = vzip2q_s64(v306, v308);
            v306.i64[1] = v308.i64[0];
            v311 = vtrn1q_s32(v515, v517);
            v312 = vtrn2q_s32(v515, v517);
            v313 = vtrn1q_s32(v519, v521);
            v314 = vtrn2q_s32(v519, v521);
            v315 = vzip2q_s64(v311, v313);
            *&v316 = v311.i64[0];
            *(&v316 + 1) = v313.i64[0];
            v317 = vzip2q_s64(v312, v314);
            *&v318 = v312.i64[0];
            *(&v318 + 1) = v314.i64[0];
            v319 = vtrn1q_s32(v522, v524);
            v320 = vtrn2q_s32(v522, v524);
            v321 = vtrn1q_s32(v526, v528);
            v322 = vtrn2q_s32(v526, v528);
            v323 = vzip2q_s64(v319, v321);
            v319.i64[1] = v321.i64[0];
            v482 = v305;
            v483 = v319;
            v324 = vzip2q_s64(v320, v322);
            v320.i64[1] = v322.i64[0];
            v484 = v306;
            v485 = v320;
            v486 = v309;
            v487 = v323;
            v488 = v310;
            v489 = v324;
            v325 = vtrn1q_s32(v523, v525);
            v326 = vtrn2q_s32(v523, v525);
            v327 = vtrn1q_s32(v527, v529);
            v328 = vtrn2q_s32(v527, v529);
            v329 = vzip2q_s64(v325, v327);
            v325.i64[1] = v327.i64[0];
            v490 = v316;
            v491 = v325;
            v330 = vzip2q_s64(v326, v328);
            v326.i64[1] = v328.i64[0];
            v492 = v318;
            v493 = v326;
            v494 = v315;
            v495 = v329;
            v496 = v317;
            v497 = v330;
            sub_277AE9D58(&v482, &v514, 1, v13, 0);
          }

          else
          {
            if (v12 == 6)
            {
              v377 = *(a1 + 16);
              v482 = *a1;
              v483 = v377;
              v378 = *(a1 + 48);
              v484 = *(a1 + 32);
              v485 = v378;
              v379 = *(a1 + 80);
              v486 = *(a1 + 64);
              v487 = v379;
              v380 = *(a1 + 112);
              v488 = *(a1 + 96);
              v489 = v380;
              v381 = *(a1 + 144);
              v490 = *(a1 + 128);
              v491 = v381;
              v382 = *(a1 + 176);
              v492 = *(a1 + 160);
              v493 = v382;
              v383 = *(a1 + 208);
              v494 = *(a1 + 192);
              v495 = v383;
              v384 = *(a1 + 240);
              v496 = *(a1 + 224);
              v497 = v384;
              sub_277AEA4A0(&v482, &v514, 0, v13, 1);
              v385 = vtrn1q_s32(v514, v516);
              v386 = vtrn2q_s32(v514, v516);
              v387 = vtrn1q_s32(v518, v520);
              v388 = vtrn2q_s32(v518, v520);
              v389 = vzip2q_s64(v385, v387);
              v385.i64[1] = v387.i64[0];
              v390 = vzip2q_s64(v386, v388);
              v386.i64[1] = v388.i64[0];
              v391 = vtrn1q_s32(v515, v517);
              v392 = vtrn2q_s32(v515, v517);
              v393 = vtrn1q_s32(v519, v521);
              v394 = vtrn2q_s32(v519, v521);
              v395 = vzip2q_s64(v391, v393);
              *&v396 = v391.i64[0];
              *(&v396 + 1) = v393.i64[0];
              v397 = vzip2q_s64(v392, v394);
              *&v398 = v392.i64[0];
              *(&v398 + 1) = v394.i64[0];
              v399 = vtrn1q_s32(v522, v524);
              v400 = vtrn2q_s32(v522, v524);
              v401 = vtrn1q_s32(v526, v528);
              v402 = vtrn2q_s32(v526, v528);
              v403 = vzip2q_s64(v399, v401);
              v399.i64[1] = v401.i64[0];
              v482 = v385;
              v483 = v399;
              v404 = vzip2q_s64(v400, v402);
              v400.i64[1] = v402.i64[0];
              v484 = v386;
              v485 = v400;
              v486 = v389;
              v487 = v403;
              v488 = v390;
              v489 = v404;
              v405 = vtrn1q_s32(v523, v525);
              v406 = vtrn2q_s32(v523, v525);
              v407 = vtrn1q_s32(v527, v529);
              v408 = vtrn2q_s32(v527, v529);
              v409 = vzip2q_s64(v405, v407);
              v405.i64[1] = v407.i64[0];
              v490 = v396;
              v491 = v405;
              v410 = vzip2q_s64(v406, v408);
              v406.i64[1] = v408.i64[0];
              v492 = v398;
              v493 = v406;
              v494 = v395;
              v495 = v409;
              v496 = v397;
              v497 = v410;
              sub_277AEA4A0(&v482, &v514, 1, v13, 0);
              v374 = v180;
              v375 = v9;
              v376 = 1;
LABEL_275:
              v445 = 1;
LABEL_279:
              a5.i64[0] = sub_277AEA06C(&v514, v374, v375, v376, v445, 4, v13).u64[0];
              return *a5.i64;
            }

            if (v12 != 7)
            {
              if (v12 != 8)
              {
                return *a5.i64;
              }

              v181 = *(a1 + 16);
              v482 = *a1;
              v483 = v181;
              v182 = *(a1 + 48);
              v484 = *(a1 + 32);
              v485 = v182;
              v183 = *(a1 + 80);
              v486 = *(a1 + 64);
              v487 = v183;
              v184 = *(a1 + 112);
              v488 = *(a1 + 96);
              v489 = v184;
              v185 = *(a1 + 144);
              v490 = *(a1 + 128);
              v491 = v185;
              v186 = *(a1 + 176);
              v492 = *(a1 + 160);
              v493 = v186;
              v187 = *(a1 + 208);
              v494 = *(a1 + 192);
              v495 = v187;
              v188 = *(a1 + 240);
              v496 = *(a1 + 224);
              v497 = v188;
              sub_277AEA4A0(&v482, &v514, 0, v13, 1);
              goto LABEL_274;
            }

            v446 = *(a1 + 16);
            v482 = *a1;
            v483 = v446;
            v447 = *(a1 + 48);
            v484 = *(a1 + 32);
            v485 = v447;
            v448 = *(a1 + 80);
            v486 = *(a1 + 64);
            v487 = v448;
            v449 = *(a1 + 112);
            v488 = *(a1 + 96);
            v489 = v449;
            v450 = *(a1 + 144);
            v490 = *(a1 + 128);
            v491 = v450;
            v451 = *(a1 + 176);
            v492 = *(a1 + 160);
            v493 = v451;
            v452 = *(a1 + 208);
            v494 = *(a1 + 192);
            v495 = v452;
            v453 = *(a1 + 240);
            v496 = *(a1 + 224);
            v497 = v453;
            sub_277AEA4A0(&v482, &v514, 0, v13, 1);
            v454 = vtrn1q_s32(v514, v516);
            v455 = vtrn2q_s32(v514, v516);
            v456 = vtrn1q_s32(v518, v520);
            v457 = vtrn2q_s32(v518, v520);
            v458 = vzip2q_s64(v454, v456);
            v454.i64[1] = v456.i64[0];
            v459 = vzip2q_s64(v455, v457);
            v455.i64[1] = v457.i64[0];
            v460 = vtrn1q_s32(v515, v517);
            v461 = vtrn2q_s32(v515, v517);
            v462 = vtrn1q_s32(v519, v521);
            v463 = vtrn2q_s32(v519, v521);
            v464 = vzip2q_s64(v460, v462);
            *&v465 = v460.i64[0];
            *(&v465 + 1) = v462.i64[0];
            v466 = vzip2q_s64(v461, v463);
            *&v467 = v461.i64[0];
            *(&v467 + 1) = v463.i64[0];
            v468 = vtrn1q_s32(v522, v524);
            v469 = vtrn2q_s32(v522, v524);
            v470 = vtrn1q_s32(v526, v528);
            v471 = vtrn2q_s32(v526, v528);
            v472 = vzip2q_s64(v468, v470);
            v468.i64[1] = v470.i64[0];
            v482 = v454;
            v483 = v468;
            v473 = vzip2q_s64(v469, v471);
            v469.i64[1] = v471.i64[0];
            v484 = v455;
            v485 = v469;
            v486 = v458;
            v487 = v472;
            v488 = v459;
            v489 = v473;
            v474 = vtrn1q_s32(v523, v525);
            v475 = vtrn2q_s32(v523, v525);
            v476 = vtrn1q_s32(v527, v529);
            v477 = vtrn2q_s32(v527, v529);
            v478 = vzip2q_s64(v474, v476);
            v474.i64[1] = v476.i64[0];
            v490 = v465;
            v491 = v474;
            v479 = vzip2q_s64(v475, v477);
            v475.i64[1] = v477.i64[0];
            v492 = v467;
            v493 = v475;
            v494 = v464;
            v495 = v478;
            v496 = v466;
            v497 = v479;
            sub_277AEA4A0(&v482, &v514, 1, v13, 0);
          }

          v374 = v180;
          v375 = v9;
          v376 = 1;
LABEL_278:
          v445 = 0;
          goto LABEL_279;
        }

        if (*a4 > 1u)
        {
          if (v12 != 2)
          {
            v263 = *(a1 + 16);
            v482 = *a1;
            v483 = v263;
            v264 = *(a1 + 48);
            v484 = *(a1 + 32);
            v485 = v264;
            v265 = *(a1 + 80);
            v486 = *(a1 + 64);
            v487 = v265;
            v266 = *(a1 + 112);
            v488 = *(a1 + 96);
            v489 = v266;
            v267 = *(a1 + 144);
            v490 = *(a1 + 128);
            v491 = v267;
            v268 = *(a1 + 176);
            v492 = *(a1 + 160);
            v493 = v268;
            v269 = *(a1 + 208);
            v494 = *(a1 + 192);
            v495 = v269;
            v270 = *(a1 + 240);
            v496 = *(a1 + 224);
            v497 = v270;
            sub_277AEA4A0(&v482, &v514, 0, v13, 1);
            goto LABEL_262;
          }

          v340 = *(a1 + 16);
          v482 = *a1;
          v483 = v340;
          v341 = *(a1 + 48);
          v484 = *(a1 + 32);
          v485 = v341;
          v342 = *(a1 + 80);
          v486 = *(a1 + 64);
          v487 = v342;
          v343 = *(a1 + 112);
          v488 = *(a1 + 96);
          v489 = v343;
          v344 = *(a1 + 144);
          v490 = *(a1 + 128);
          v491 = v344;
          v345 = *(a1 + 176);
          v492 = *(a1 + 160);
          v493 = v345;
          v346 = *(a1 + 208);
          v494 = *(a1 + 192);
          v495 = v346;
          v347 = *(a1 + 240);
          v496 = *(a1 + 224);
          v497 = v347;
          sub_277AEA4A0(&v482, &v514, 0, v13, 1);
        }

        else
        {
          if (*a4)
          {
            v253 = *(a1 + 16);
            v482 = *a1;
            v483 = v253;
            v254 = *(a1 + 48);
            v484 = *(a1 + 32);
            v485 = v254;
            v255 = *(a1 + 80);
            v486 = *(a1 + 64);
            v487 = v255;
            v256 = *(a1 + 112);
            v488 = *(a1 + 96);
            v489 = v256;
            v257 = *(a1 + 144);
            v490 = *(a1 + 128);
            v491 = v257;
            v258 = *(a1 + 176);
            v492 = *(a1 + 160);
            v493 = v258;
            v259 = *(a1 + 208);
            v494 = *(a1 + 192);
            v495 = v259;
            v260 = *(a1 + 240);
            v496 = *(a1 + 224);
            v497 = v260;
            sub_277AE9D58(&v482, &v514, 0, v13, 1);
LABEL_262:
            v271 = vtrn1q_s32(v514, v516);
            v272 = vtrn2q_s32(v514, v516);
            v273 = vtrn1q_s32(v518, v520);
            v274 = vtrn2q_s32(v518, v520);
            v275 = vzip2q_s64(v271, v273);
            v271.i64[1] = v273.i64[0];
            v276 = vzip2q_s64(v272, v274);
            v272.i64[1] = v274.i64[0];
            v277 = vtrn1q_s32(v515, v517);
            v278 = vtrn2q_s32(v515, v517);
            v279 = vtrn1q_s32(v519, v521);
            v280 = vtrn2q_s32(v519, v521);
            v281 = vzip2q_s64(v277, v279);
            *&v282 = v277.i64[0];
            *(&v282 + 1) = v279.i64[0];
            v283 = vzip2q_s64(v278, v280);
            *&v284 = v278.i64[0];
            *(&v284 + 1) = v280.i64[0];
            v285 = vtrn1q_s32(v522, v524);
            v286 = vtrn2q_s32(v522, v524);
            v287 = vtrn1q_s32(v526, v528);
            v288 = vtrn2q_s32(v526, v528);
            v289 = vzip2q_s64(v285, v287);
            v285.i64[1] = v287.i64[0];
            v482 = v271;
            v483 = v285;
            v290 = vzip2q_s64(v286, v288);
            v286.i64[1] = v288.i64[0];
            v484 = v272;
            v485 = v286;
            v486 = v275;
            v487 = v289;
            v488 = v276;
            v489 = v290;
            v291 = vtrn1q_s32(v523, v525);
            v292 = vtrn2q_s32(v523, v525);
            v293 = vtrn1q_s32(v527, v529);
            v294 = vtrn2q_s32(v527, v529);
            v295 = vzip2q_s64(v291, v293);
            v291.i64[1] = v293.i64[0];
            v490 = v282;
            v491 = v291;
            v296 = vzip2q_s64(v292, v294);
            v292.i64[1] = v294.i64[0];
            v492 = v284;
            v493 = v292;
            v494 = v281;
            v495 = v295;
            v496 = v283;
            v497 = v296;
            sub_277AEA4A0(&v482, &v514, 1, v13, 0);
LABEL_271:
            v374 = v180;
            v375 = v9;
            v376 = 0;
            goto LABEL_278;
          }

          v332 = *(a1 + 16);
          v482 = *a1;
          v483 = v332;
          v333 = *(a1 + 48);
          v484 = *(a1 + 32);
          v485 = v333;
          v334 = *(a1 + 80);
          v486 = *(a1 + 64);
          v487 = v334;
          v335 = *(a1 + 112);
          v488 = *(a1 + 96);
          v489 = v335;
          v336 = *(a1 + 144);
          v490 = *(a1 + 128);
          v491 = v336;
          v337 = *(a1 + 176);
          v492 = *(a1 + 160);
          v493 = v337;
          v338 = *(a1 + 208);
          v494 = *(a1 + 192);
          v495 = v338;
          v339 = *(a1 + 240);
          v496 = *(a1 + 224);
          v497 = v339;
          sub_277AE9D58(&v482, &v514, 0, v13, 1);
        }

        v348 = vtrn1q_s32(v514, v516);
        v349 = vtrn2q_s32(v514, v516);
        v350 = vtrn1q_s32(v518, v520);
        v351 = vtrn2q_s32(v518, v520);
        v352 = vzip2q_s64(v348, v350);
        v348.i64[1] = v350.i64[0];
        v353 = vzip2q_s64(v349, v351);
        v349.i64[1] = v351.i64[0];
        v354 = vtrn1q_s32(v515, v517);
        v355 = vtrn2q_s32(v515, v517);
        v356 = vtrn1q_s32(v519, v521);
        v357 = vtrn2q_s32(v519, v521);
        v358 = vzip2q_s64(v354, v356);
        *&v359 = v354.i64[0];
        *(&v359 + 1) = v356.i64[0];
        v360 = vzip2q_s64(v355, v357);
        *&v361 = v355.i64[0];
        *(&v361 + 1) = v357.i64[0];
        v362 = vtrn1q_s32(v522, v524);
        v363 = vtrn2q_s32(v522, v524);
        v364 = vtrn1q_s32(v526, v528);
        v365 = vtrn2q_s32(v526, v528);
        v366 = vzip2q_s64(v362, v364);
        v362.i64[1] = v364.i64[0];
        v482 = v348;
        v483 = v362;
        v367 = vzip2q_s64(v363, v365);
        v363.i64[1] = v365.i64[0];
        v484 = v349;
        v485 = v363;
        v486 = v352;
        v487 = v366;
        v488 = v353;
        v489 = v367;
        v368 = vtrn1q_s32(v523, v525);
        v369 = vtrn2q_s32(v523, v525);
        v370 = vtrn1q_s32(v527, v529);
        v371 = vtrn2q_s32(v527, v529);
        v372 = vzip2q_s64(v368, v370);
        v368.i64[1] = v370.i64[0];
        v490 = v359;
        v491 = v368;
        v373 = vzip2q_s64(v369, v371);
        v369.i64[1] = v371.i64[0];
        v492 = v361;
        v493 = v369;
        v494 = v358;
        v495 = v372;
        v496 = v360;
        v497 = v373;
        sub_277AE9D58(&v482, &v514, 1, v13, 0);
        goto LABEL_271;
      }

      if (((1 << v12) & 0x5400) != 0)
      {
        v261 = (2 * a2);
        v262 = *a4;

        sub_277AF3BE0(a1, v261, a3, v262, 1u, v13);
      }

      else if (((1 << v12) & 0xA800) != 0)
      {
        v102 = (2 * a2);
        v103 = *a4;

        sub_277AF4018(a1, v102, a3, v103, 1u, v13);
      }

      else
      {
        v331 = 2 * a2;

        sub_277AF44DC(a1, v331, a3, 1, v13, a7, a8, a9);
      }

      return *a5.i64;
    case 2:
      v63 = *a4;
      v64 = 2;
      goto LABEL_150;
    case 3:
      v63 = *a4;
      v64 = 3;
      goto LABEL_150;
    case 4:
      v63 = *a4;
      v64 = 4;
      goto LABEL_150;
    case 5:
      v104 = 0;
      v105 = (2 * a2);
      v512 = 0u;
      v513 = 0u;
      v510 = 0u;
      v511 = 0u;
      v508 = 0u;
      v509 = 0u;
      v506 = 0u;
      v507 = 0u;
      v504 = 0u;
      v505 = 0u;
      v502 = 0u;
      v503 = 0u;
      v500 = 0u;
      v501 = 0u;
      v498 = 0u;
      v499 = 0u;
      v496 = 0u;
      v497 = 0u;
      v494 = 0u;
      v495 = 0u;
      v492 = 0u;
      v493 = 0u;
      v490 = 0u;
      v491 = 0u;
      v488 = 0u;
      v489 = 0u;
      v486 = 0u;
      v487 = 0u;
      v106 = 32 * byte_277C31564[v12];
      v107 = &off_28866ED60 + 4 * byte_277C31574[v12];
      v484 = 0u;
      v485 = 0u;
      v482 = 0u;
      v483 = 0u;
      v108 = *(&off_28866ED60 + v106);
      v109 = a1;
      v110 = v107[13];
      do
      {
        v111 = *v109;
        v109 += 2;
        *(&v514 + v104) = v111;
        v104 += 16;
      }

      while (v104 != 64);
      v112 = (a1 + 16);
      v113 = &v518;
      for (i = 64; i != 128; i += 16)
      {
        v115 = *v112;
        v112 += 2;
        *(&v514 + i) = v115;
      }

      v116 = 0;
      v117 = vdupq_n_s32(0xB50u);
      do
      {
        *(&v514 + v116) = vrshrq_n_s32(vmulq_s32(*(&v514 + v116), v117), 0xCuLL);
        v116 += 16;
      }

      while (v116 != 128);
      v108(&v514, &v514, 12, 0, v13, 0);
      v108(&v518, &v518, 12, 0, v13, 0);
      if (v12 > 0xF || ((0x7F1Fu >> v12) & 1) != 0)
      {
        v122 = vtrn1q_s32(v514, v515);
        v123 = vtrn2q_s32(v514, v515);
        v189 = vtrn1q_s32(v516, v517);
        v190 = vtrn2q_s32(v516, v517);
        v121 = vzip2q_s64(v122, v189);
        v122.i64[1] = v189.i64[0];
        v124 = vzip2q_s64(v123, v190);
        v123.i64[1] = v190.i64[0];
        v126 = vtrn1q_s32(v518, v519);
        v127 = vtrn2q_s32(v518, v519);
        v125 = v520;
        v113 = &v521;
      }

      else
      {
        v122 = vtrn1q_s32(v517, v516);
        v118 = vtrn2q_s32(v517, v516);
        v119 = vtrn1q_s32(v515, v514);
        v120 = vtrn2q_s32(v515, v514);
        v121 = vzip2q_s64(v122, v119);
        v122.i64[1] = v119.i64[0];
        v123.i64[0] = v118.i64[0];
        v123.i64[1] = v120.i64[0];
        v124 = vzip2q_s64(v118, v120);
        v125 = v519;
        v126 = vtrn1q_s32(v521, v520);
        v127 = vtrn2q_s32(v521, v520);
      }

      v482 = v122;
      v483 = v123;
      v484 = v121;
      v485 = v124;
      v191 = vtrn1q_s32(v125, *v113);
      v192 = vtrn2q_s32(v125, *v113);
      v193.i64[0] = v126.i64[0];
      v193.i64[1] = v191.i64[0];
      v194.i64[0] = v127.i64[0];
      v194.i64[1] = v192.i64[0];
      v486 = v193;
      v487 = v194;
      v488 = vzip2q_s64(v126, v191);
      v489 = vzip2q_s64(v127, v192);
      (v110)(&v482, &v482, 12, 1, v13, 0);
      for (j = 0; j != 128; j += 16)
      {
        *(&v482 + j) = vrshrq_n_s32(*(&v482 + j), 4uLL);
      }

      v196 = 16;
      if (!((v12 > 0xF) | (0xBEAFu >> v12) & 1))
      {
        v196 = -16;
      }

      a5.i64[0] = vdupq_n_s16(~(-1 << v13)).u64[0];
      v197 = 112;
      if ((v12 > 0xF) | (0xBEAFu >> v12) & 1)
      {
        v197 = 0;
      }

      v198 = 8;
      do
      {
        *v105 = vmax_s16(vmin_s16(vadd_s16(*v105, vmovn_s32(*(&v482 + v197))), *a5.i8), 0);
        v105 = (v105 + 2 * v9);
        v197 += v196;
        --v198;
      }

      while (v198);
      return *a5.i64;
    case 6:
      v147 = 0;
      v148 = *(&off_28866ED60 + 4 * byte_277C31574[v12]);
      v149 = *(a1 + 80);
      v150 = (2 * a2);
      v151 = &off_28866ED60 + 4 * byte_277C31564[v12];
      v152 = (v12 > 0xF) | (0xBEAFu >> v12);
      v518 = *(a1 + 64);
      v519 = v149;
      v153 = *(a1 + 112);
      v520 = *(a1 + 96);
      v521 = v153;
      v154 = *(a1 + 16);
      v514 = *a1;
      v515 = v154;
      v155 = *(a1 + 48);
      v516 = *(a1 + 32);
      v517 = v155;
      v156 = vdupq_n_s32(0xB50u);
      v157 = v151[13];
      do
      {
        *(&v514 + v147) = vrshrq_n_s32(vmulq_s32(*(&v514 + v147), v156), 0xCuLL);
        v147 += 16;
      }

      while (v147 != 128);
      v158 = &v514;
      (v157)(&v514, &v514, 12, 0, v13, 0);
      if (v12 <= 0xF && ((0x7F1Fu >> v12) & 1) == 0)
      {
        v159 = &v514;
        for (k = 112; k != -16; k -= 16)
        {
          v161 = *v159++;
          v158 = &v482;
          *(&v482 + k) = v161;
        }
      }

      v162 = 0;
      v163 = 1;
      do
      {
        v164 = &v158[v162];
        v165 = v158[v162];
        v166 = v158[v162 + 1];
        v167 = vtrn1q_s32(v165, v166);
        v168 = vtrn2q_s32(v165, v166);
        v169 = v158[v162 + 2];
        v170 = v158[v162 + 3];
        v171 = vtrn1q_s32(v169, v170);
        v172 = vtrn2q_s32(v169, v170);
        v173 = vzip2q_s64(v167, v171);
        v167.i64[1] = v171.i64[0];
        v171.i64[0] = v168.i64[0];
        v171.i64[1] = v172.i64[0];
        v174 = v163;
        *v164 = v167;
        v164[1] = v171;
        v164[2] = v173;
        v164[3] = vzip2q_s64(v168, v172);
        v148(&v158[v162], &v158[v162], 12, 1, v13, 0);
        v163 = 0;
        v162 = 4;
      }

      while ((v174 & 1) != 0);
      for (m = 0; m != 8; ++m)
      {
        v158[m] = vrshrq_n_s32(v158[m], 4uLL);
      }

      v176 = 16;
      if ((v152 & 1) == 0)
      {
        v176 = -16;
      }

      a5 = vdupq_n_s32(~(-1 << v13));
      if (v152)
      {
        v177 = 0;
      }

      else
      {
        v177 = 3;
      }

      v178 = &v158[v177 + 4];
      v179 = 4;
      do
      {
        *v150->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v178[-4], *v150), 0), a5)), vminq_s32(vmaxq_s32(vaddw_high_s16(*v178, *v150->i8), 0), a5));
        v150 = (v150 + 2 * v9);
        v178 = (v178 + v176);
        --v179;
      }

      while (v179);
      return *a5.i64;
    case 7:
      v63 = *a4;
      v64 = 7;
      goto LABEL_150;
    case 8:
      v63 = *a4;
      v64 = 8;
      goto LABEL_150;
    case 9:
      v63 = *a4;
      v64 = 9;
      goto LABEL_150;
    case 0xA:
      v63 = *a4;
      v64 = 10;
      goto LABEL_150;
    case 0xB:
      v63 = *a4;
      v64 = 11;
      goto LABEL_150;
    case 0xC:
      v63 = *a4;
      v64 = 12;
      goto LABEL_150;
    case 0xD:
      v128 = 0;
      v129 = *(&off_28866ED60 + 4 * byte_277C31564[v12]);
      v130 = (2 * a2);
      v481 = *(&off_28866ED60 + 4 * byte_277C31574[v12] + 26);
      v131 = &v514;
      do
      {
        v132 = 0;
        v133 = v11;
        do
        {
          v134 = *v133;
          v133 += 4;
          v131[v132++] = v134;
        }

        while (v132 != 4);
        v129(&v514 + 4 * v128, &v514 + 4 * v128, 12, 0, v13, 1);
        ++v128;
        v131 += 4;
        v11 += 16;
      }

      while (v128 != 4);
      if (v12 > 0xF || ((0x7F1Fu >> v12) & 1) != 0)
      {
        v199 = &v516;
        v200 = &v484;
        v201 = 4;
        do
        {
          v202 = v199[-2];
          v203 = v199[-1];
          v204 = vtrn1q_s32(v202, v203);
          v205 = vtrn2q_s32(v202, v203);
          v206 = *v199;
          v207 = v199[1];
          v199 += 4;
          v208 = vtrn1q_s32(v206, v207);
          v209 = vzip2q_s64(v204, v208);
          v204.i64[1] = v208.i64[0];
          v210 = vtrn2q_s32(v206, v207);
          v211 = vzip2q_s64(v205, v210);
          v205.i64[1] = v210.i64[0];
          v200[-2] = v204;
          v200[-1] = v205;
          *v200 = v209;
          v200[1] = v211;
          v200 += 4;
          --v201;
        }

        while (v201);
      }

      else
      {
        v135 = &v484;
        v136 = &v516;
        v137 = 4;
        do
        {
          v138 = v136[1];
          v139 = vtrn1q_s32(v138, *v136);
          v140 = vtrn2q_s32(v138, *v136);
          v142 = v136[-2];
          v141 = v136[-1];
          v143 = vtrn1q_s32(v141, v142);
          v144 = vzip2q_s64(v139, v143);
          v139.i64[1] = v143.i64[0];
          v145 = vtrn2q_s32(v141, v142);
          v146 = vzip2q_s64(v140, v145);
          v140.i64[1] = v145.i64[0];
          v135[-2] = v139;
          v135[-1] = v140;
          *v135 = v144;
          v135[1] = v146;
          v135 += 4;
          v136 += 4;
          --v137;
        }

        while (v137);
      }

      v481(&v482, &v482, 12, 1, v13, 0);
      for (n = 0; n != 256; n += 16)
      {
        *(&v482 + n) = vrshrq_n_s32(*(&v482 + n), 4uLL);
      }

      v213 = 16;
      if ((v12 > 0xF) | (0xBEAFu >> v12) & 1)
      {
        v214 = 16;
      }

      else
      {
        v214 = -16;
      }

      a5.i64[0] = vdupq_n_s16(~(-1 << v13)).u64[0];
      v215 = 240;
      if ((v12 > 0xF) | (0xBEAFu >> v12) & 1)
      {
        v215 = 0;
      }

      do
      {
        *v130 = vmax_s16(vmin_s16(vadd_s16(*v130, vmovn_s32(*(&v482 + v215))), *a5.i8), 0);
        v130 = (v130 + 2 * v9);
        v215 += v214;
        --v213;
      }

      while (v213);
      return *a5.i64;
    case 0xE:
      v65 = *(&off_28866ED60 + 4 * byte_277C31564[v12] + 26);
      v66 = *(&off_28866ED60 + 4 * byte_277C31574[v12]);
      v67 = *(a1 + 208);
      v526 = *(a1 + 192);
      v527 = v67;
      v68 = *(a1 + 240);
      v528 = *(a1 + 224);
      v529 = v68;
      v69 = *(a1 + 144);
      v522 = *(a1 + 128);
      v523 = v69;
      v70 = *(a1 + 176);
      v524 = *(a1 + 160);
      v525 = v70;
      v71 = *(a1 + 80);
      v518 = *(a1 + 64);
      v519 = v71;
      v72 = *(a1 + 112);
      v520 = *(a1 + 96);
      v521 = v72;
      v73 = *(a1 + 16);
      v514 = *a1;
      v515 = v73;
      v74 = *(a1 + 48);
      v516 = *(a1 + 32);
      v517 = v74;
      v75 = &v514;
      v65(&v514, &v514, 12, 0, v13, 1);
      if (v12 <= 0xF && ((0x7F1Fu >> v12) & 1) == 0)
      {
        v76 = &v514;
        for (ii = 240; ii != -16; ii -= 16)
        {
          v78 = *v76++;
          v75 = &v482;
          *(&v482 + ii) = v78;
        }
      }

      v79 = 2 * a2;
      v80 = (v12 > 0xF) | (0xBEAFu >> v12);
      v81 = 4;
      v82 = v75;
      do
      {
        v83 = v82[1];
        v84 = vtrn1q_s32(*v82, v83);
        v85 = vtrn2q_s32(*v82, v83);
        v86 = v82[2];
        v87 = v82[3];
        v88 = vtrn1q_s32(v86, v87);
        v89 = vtrn2q_s32(v86, v87);
        v90 = vzip2q_s64(v84, v88);
        v84.i64[1] = v88.i64[0];
        v91 = vzip2q_s64(v85, v89);
        v85.i64[1] = v89.i64[0];
        *v82 = v84;
        v82[1] = v85;
        v82[2] = v90;
        v82[3] = v91;
        v66(v82, v82, 12, 1, v13, 0);
        v82 += 4;
        --v81;
      }

      while (v81);
      for (jj = 0; jj != 16; ++jj)
      {
        v75[jj] = vrshrq_n_s32(v75[jj], 4uLL);
      }

      v93 = 0;
      v94 = 16;
      if ((v80 & 1) == 0)
      {
        v94 = -16;
      }

      a5 = vdupq_n_s32(~(-1 << v13));
      if (v80)
      {
        v95 = 0;
      }

      else
      {
        v95 = 3;
      }

      i64 = v75[v95 + 4].i64;
      v97 = 1;
      do
      {
        v98 = v97;
        v99 = (v79 + 2 * v93);
        v100 = 4;
        v101 = (i64 + 16 * v93);
        do
        {
          *v99->i8 = vqmovn_high_u32(vqmovn_u32(vminq_s32(vmaxq_s32(vaddw_s16(v101[-4], *v99), 0), a5)), vminq_s32(vmaxq_s32(vaddw_high_s16(*v101, *v99->i8), 0), a5));
          v99 = (v99 + 2 * v9);
          v101 = (v101 + v94);
          --v100;
        }

        while (v100);
        v97 = 0;
        v93 = 8;
      }

      while ((v98 & 1) != 0);
      return *a5.i64;
    case 0xF:
      v63 = *a4;
      v64 = 15;
      goto LABEL_150;
    case 0x10:
      v63 = *a4;
      v64 = 16;
      goto LABEL_150;
    case 0x11:
      v63 = *a4;
      v64 = 17;
      goto LABEL_150;
    case 0x12:
      v63 = *a4;
      v64 = 18;
LABEL_150:

      sub_277AF359C(a1, a2, a3, v63, v64, v13, a8, a9);
      return *a5.i64;
    default:
      return *a5.i64;
  }
}

int *sub_277AF62F8(int *result, int a2, int a3, int a4, int a5)
{
  v5 = -1;
  if (a2 > 2 * a4 || 2 * a5 < a3 || 16 * a2 < a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = -1;
    if (16 * a3 >= a5)
    {
      v5 = (a4 / 2 + (a2 << 14)) / a4;
      v6 = (a5 / 2 + (a3 << 14)) / a5;
      result[2] = (v5 + 8) >> 4;
      result[3] = (v6 + 8) >> 4;
    }
  }

  *result = v5;
  result[1] = v6;
  return result;
}

uint64_t sub_277AF6378(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v4 = result;
    v5 = *(result + 24);
    v6 = a2 - 1;
    v7 = a2 - 1;
    v8 = (*result + (v7 << 6));
    pthread_mutex_lock(v8);
    if (*(*(v4 + 16) + 4 * v6) - (v5 + *(v4 + 28)) < a3)
    {
      do
      {
        pthread_cond_wait((*(v4 + 8) + 48 * v7), v8);
      }

      while (*(*(v4 + 16) + 4 * v7) - (v5 + *(v4 + 28)) < a3);
    }

    return pthread_mutex_unlock(v8);
  }

  return result;
}

uint64_t sub_277AF6430(uint64_t result, int a2, int a3, int a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (a4 - 1 <= a3)
  {
    v7 = v6 + a4 + *(result + 28);
  }

  else
  {
    v7 = a3;
    if (a3 % v6)
    {
      return result;
    }
  }

  pthread_mutex_lock((*result + (a2 << 6)));
  v9 = v5[1];
  v8 = v5[2];
  v10 = *(v8 + 4 * a2);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  *(v8 + 4 * a2) = v10;
  pthread_cond_signal((v9 + 48 * a2));
  v11 = (*v5 + (a2 << 6));

  return pthread_mutex_unlock(v11);
}

double sub_277AF64E0(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      if (a1[8] < 1)
      {
        goto LABEL_7;
      }

      v3 = 0;
      v4 = 0;
      do
      {
        pthread_mutex_destroy((*a1 + v3));
        ++v4;
        v3 += 64;
      }

      while (v4 < a1[8]);
      v2 = *a1;
      if (*a1)
      {
LABEL_7:
        free(*(v2 - 8));
      }
    }

    v5 = *(a1 + 1);
    if (v5)
    {
      if (a1[8] < 1)
      {
        goto LABEL_13;
      }

      v6 = 0;
      v7 = 0;
      do
      {
        pthread_cond_destroy((*(a1 + 1) + v6));
        ++v7;
        v6 += 48;
      }

      while (v7 < a1[8]);
      v5 = *(a1 + 1);
      if (v5)
      {
LABEL_13:
        free(*(v5 - 8));
      }
    }

    v8 = *(a1 + 2);
    if (v8)
    {
      free(*(v8 - 8));
    }

    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }

  return result;
}

void sub_277AF65C4(uint64_t a1)
{
  v10 = a1 + 634424;
  v11 = *(a1 + 634424);
  if (v11 >= 1)
  {
    v2 = 0;
    v3 = *(a1 + 634428);
    v4 = 21280;
    do
    {
      if (v3 >= 1)
      {
        v5 = v4;
        v6 = v3;
        do
        {
          v7 = *(a1 + 463544);
          sub_277AF64E0((v7 + v5 + 2488));
          if (*(a1 + 271168))
          {
            v8 = *(v7 + v5);
            if (v8)
            {
              free(*(v8 - 8));
            }

            *(v7 + v5) = 0;
          }

          v5 += 23824;
          --v6;
        }

        while (v6);
      }

      ++v2;
      v4 += 23824 * v3;
    }

    while (v2 != v11);
  }

  v9 = *(v10 + 272);
  if (v9)
  {
    free(*(v9 - 8));
  }

  *(v10 + 272) = 0;
  *(v10 + 8) = 0;
  *(v10 + 280) = 0;
}

uint64_t sub_277AF66D0(uint64_t a1, int a2)
{
  v4 = a1 + 634712;
  v5 = a1 + 270312;
  v6 = a1 + 245664;
  result = setjmp((*(a1 + 245664) + 212));
  if (result)
  {
    v8 = *v6;
    *(v8 + 208) = 0;
    result = sub_2779F5C78(*a1 + 51032, v8);
  }

  *(*v6 + 208) = 1;
  if (!a2 && *(v5 + 1897) != 1)
  {
    goto LABEL_20;
  }

  if (!*v4)
  {
    v9 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
    if (v9)
    {
      v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v10 - 8) = v9;
      *v4 = v10;
      result = v10;
      if (v10)
      {
LABEL_11:
        result = pthread_mutex_init(result, 0);
        goto LABEL_12;
      }
    }

    else
    {
      *v4 = 0;
    }

    sub_2779F5C10(*v6, 2, "Failed to allocate enc_row_mt->mutex_");
    result = *v4;
    if (!*v4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (*(v4 + 8))
  {
    goto LABEL_19;
  }

  v11 = malloc_type_malloc(0x47uLL, 0x5F484EBFuLL);
  if (!v11)
  {
    *(v4 + 8) = 0;
    goto LABEL_17;
  }

  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v12 - 8) = v11;
  *(v4 + 8) = v12;
  result = v12;
  if (!v12)
  {
LABEL_17:
    sub_2779F5C10(*v6, 2, "Failed to allocate enc_row_mt->cond_");
    result = *(v4 + 8);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  result = pthread_cond_init(result, 0);
LABEL_19:
  if (a2)
  {
    goto LABEL_74;
  }

LABEL_20:
  v13 = (a1 + 643344);
  if (*(a1 + 643344))
  {
    goto LABEL_27;
  }

  v14 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v14)
  {
    *v13 = 0;
    goto LABEL_25;
  }

  v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v15 - 8) = v14;
  *v13 = v15;
  result = v15;
  if (!v15)
  {
LABEL_25:
    sub_2779F5C10(*v6, 2, "Failed to allocate gm_sync->mutex_");
    result = *v13;
    if (!*v13)
    {
      goto LABEL_27;
    }
  }

  result = pthread_mutex_init(result, 0);
LABEL_27:
  if (*(a1 + 643360))
  {
    goto LABEL_34;
  }

  v16 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v16)
  {
    *(a1 + 643360) = 0;
    goto LABEL_32;
  }

  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v17 - 8) = v16;
  *(a1 + 643360) = v17;
  result = v17;
  if (!v17)
  {
LABEL_32:
    sub_2779F5C10(*v6, 2, "Failed to allocate tf_sync->mutex_");
    result = *(a1 + 643360);
    if (!result)
    {
      goto LABEL_34;
    }
  }

  result = pthread_mutex_init(result, 0);
LABEL_34:
  if (*(a1 + 643376))
  {
    goto LABEL_41;
  }

  v18 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
  if (!v18)
  {
    *(a1 + 643376) = 0;
    goto LABEL_39;
  }

  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v19 - 8) = v18;
  *(a1 + 643376) = v19;
  result = v19;
  if (!v19)
  {
LABEL_39:
    sub_2779F5C10(*v6, 2, "Failed to allocate cdef_sync->mutex_");
    result = *(a1 + 643376);
    if (!result)
    {
      goto LABEL_41;
    }
  }

  result = pthread_mutex_init(result, 0);
LABEL_41:
  v20 = ((*(v6 + 12) >> 2) + 31) >> 5;
  v21 = *a1 + 73728;
  v22 = 1336;
  if (*(*a1 + 75084) > 1)
  {
    v22 = 1312;
  }

  v23 = *(v21 + v22);
  if (!*(v4 + 168) || v20 != *(v4 + 172) || v23 > *(v4 + 184))
  {
    sub_2779CE694(a1 + 634808);
    result = sub_2779CE28C(a1 + 634808, a1 + 245616, v20, *(v6 + 8), v23);
  }

  if (!*(v4 + 72))
  {
    v24 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
    if (v24)
    {
      v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v25 - 8) = v24;
      *(v4 + 72) = v25;
      result = v25;
      if (v25)
      {
LABEL_53:
        result = pthread_mutex_init(result, 0);
        goto LABEL_54;
      }
    }

    else
    {
      *(v4 + 72) = 0;
    }

    sub_2779F5C10(*v6, 2, "Failed to allocate tpl_row_mt->mutex_");
    result = *(v4 + 72);
    if (result)
    {
      goto LABEL_53;
    }
  }

LABEL_54:
  if (*(*v5 + 68) && (*(v6 + 452) & 1) == 0 && !*(v5 + 604))
  {
    if ((*(v6 + 12) + (*(a1 + 396328) >> 1)) / *(a1 + 396328) <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = (*(v6 + 12) + (*(a1 + 396328) >> 1)) / *(a1 + 396328);
    }

    v27 = 1348;
    if (*(v21 + 1356) > 1)
    {
      v27 = 1312;
    }

    v28 = *(v21 + v27);
    if (!*(v4 + 296) || v26 > *(v4 + 300) || v28 > *(v4 + 308) || *(v4 + 304) <= 2)
    {
      sub_2779D1E04(a1 + 634936);
      result = sub_2779D19B4(a1 + 634936, a1 + 245616, v28, v26, 3u);
    }
  }

  if (!*(v4 + 352))
  {
    v29 = malloc_type_malloc(0x57uLL, 0x5F484EBFuLL);
    if (v29)
    {
      v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v30 - 8) = v29;
      *(v4 + 352) = v30;
      result = v30;
      if (v30)
      {
LABEL_73:
        result = pthread_mutex_init(result, 0);
        goto LABEL_74;
      }
    }

    else
    {
      *(v4 + 352) = 0;
    }

    sub_2779F5C10(*v6, 2, "Failed to allocate pack_bs_sync->mutex_");
    result = *(v4 + 352);
    if (result)
    {
      goto LABEL_73;
    }
  }

LABEL_74:
  *(*v6 + 208) = 0;
  return result;
}

uint64_t sub_277AF6B80(uint64_t result, int a2)
{
  v2 = result + 75040;
  v3 = *(result + 75040);
  v4 = (result + 75060);
  if (*(result + 75084) > 1)
  {
    v4 = (result + 75040);
  }

  v62 = *v4;
  if (v3 < 1)
  {
    goto LABEL_145;
  }

  v5 = a2;
  v6 = result;
  v63 = (result + 49100);
  v64 = result + 75040;
  do
  {
    v7 = v3--;
    v8 = *(v2 + 64) + 456 * v3;
    if (!v3)
    {
      goto LABEL_6;
    }

    v11 = malloc_type_malloc(0x26E77uLL, 0x5F484EBFuLL);
    if (!v11 || (v12 = ((v11 + 39) & 0xFFFFFFFFFFFFFFE0), *(v12 - 1) = v11, !v12))
    {
      sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td");
      v12 = 0;
    }

    bzero(v12, 0x26E50uLL);
    *(v8 + 8) = v12;
    *(v8 + 16) = v12;
    sub_2779C9490(v6 + 49072, (v12 + 19338), (v6 + 51032));
    result = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
    v69 = v12 + 19337;
    if (result)
    {
      v13 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v13 - 8) = result;
      v12[19363] = v13;
      if (v13)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12[19363] = 0;
    }

    result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->tmp_conv_dst");
LABEL_24:
    if (v7 <= *(v2 + 4))
    {
      result = sub_2779C96A8(*(v6 + 352), 6, (v12 + 19338));
      v12[19375] = result;
      if (!result)
      {
        result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate PICK_MODE_CONTEXT");
      }
    }

    if (v5 || v7 > v62)
    {
      goto LABEL_6;
    }

    v67 = v8;
    v68 = v3;
    if (sub_2779C9F18(*(v6 + 352), v12))
    {
      sub_2779F5C10(v6 + 51032, 2, "Failed to allocate SMS tree");
    }

    v14 = 0;
    v66 = v12 + 19910;
    v15 = 1;
    do
    {
      v16 = 0;
      v17 = v15;
      v18 = 1;
      do
      {
        v19 = v18;
        v20 = malloc_type_malloc(0x4017uLL, 0x5F484EBFuLL);
        v21 = &v12[2 * v14 + 19349];
        if (v20)
        {
          v22 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v22 - 8) = v20;
          *(v21 + 8 * v16) = v22;
          if (v22)
          {
            goto LABEL_38;
          }
        }

        else
        {
          *(v21 + 8 * v16) = 0;
        }

        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->hash_value_buffer[x][y]");
LABEL_38:
        v18 = 0;
        v16 = 1;
      }

      while ((v19 & 1) != 0);
      v15 = 0;
      v14 = 1;
    }

    while ((v17 & 1) != 0);
    v23 = malloc_type_malloc(0xD7uLL, 0x5F484EBFuLL);
    if (v23 && (v24 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF0), *(v24 - 1) = v23, v24))
    {
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xA0) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0xB0) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x80) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x90) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x60) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x70) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x40) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x50) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x20) = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x30) = 0u;
      *v24 = 0u;
      *(((v23 + 23) & 0xFFFFFFFFFFFFFFF0) + 0x10) = 0u;
      v25 = v12 + 19337;
      *v69 = v24;
    }

    else
    {
      v25 = v12 + 19337;
      *v69 = 0;
      sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->counts");
    }

    v2 = v64;
    v3 = v68;
    result = malloc_type_malloc(0x5017uLL, 0x5F484EBFuLL);
    if (!result)
    {
      v25[20] = 0;
      v5 = a2;
      v8 = v67;
      goto LABEL_48;
    }

    v26 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v26 - 8) = result;
    v25[20] = v26;
    v5 = a2;
    v8 = v67;
    if (!v26)
    {
LABEL_48:
      result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->palette_buffer");
    }

    v27 = *(v6 + 352);
    if (*(v27 + 271184))
    {
      v28 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
      if (!v28)
      {
        v30 = v12 + 19337;
        v12[19353] = 0;
        goto LABEL_63;
      }

      v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v29 - 8) = v28;
      v30 = v12 + 19337;
      v12[19353] = v29;
      if (!v29)
      {
LABEL_63:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate obmc_buffer->wsrc");
      }

      v33 = malloc_type_malloc(0x10017uLL, 0x5F484EBFuLL);
      if (!v33)
      {
        v30[17] = 0;
        goto LABEL_68;
      }

      v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v34 - 8) = v33;
      v30[17] = v34;
      if (!v34)
      {
LABEL_68:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate obmc_buffer->mask");
      }

      v35 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
      if (!v35)
      {
        v30[18] = 0;
        goto LABEL_73;
      }

      v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v36 - 8) = v35;
      v30[18] = v36;
      if (!v36)
      {
LABEL_73:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate obmc_buffer->above_pred");
      }

      v37 = malloc_type_malloc(0xC017uLL, 0x5F484EBFuLL);
      if (!v37)
      {
        v30[19] = 0;
        goto LABEL_78;
      }

      v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v38 - 8) = v37;
      v30[19] = v38;
      if (!v38)
      {
LABEL_78:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate obmc_buffer->left_pred");
      }

      v39 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (!v39)
      {
        v30[21] = 0;
        goto LABEL_83;
      }

      v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v40 - 8) = v39;
      v30[21] = v40;
      if (!v40)
      {
LABEL_83:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->pred0");
      }

      v41 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (!v41)
      {
        v30[22] = 0;
        goto LABEL_88;
      }

      v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v42 - 8) = v41;
      v30[22] = v42;
      if (!v42)
      {
LABEL_88:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->pred1");
      }

      v43 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
      if (!v43)
      {
        v30[23] = 0;
        goto LABEL_93;
      }

      v44 = (v43 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v44 - 8) = v43;
      v30[23] = v44;
      if (!v44)
      {
LABEL_93:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->residual1");
      }

      v45 = malloc_type_malloc(0x8027uLL, 0x5F484EBFuLL);
      if (!v45)
      {
        v30[24] = 0;
        goto LABEL_98;
      }

      v46 = (v45 + 39) & 0xFFFFFFFFFFFFFFE0;
      *(v46 - 8) = v45;
      v30[24] = v46;
      if (!v46)
      {
LABEL_98:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->diff10");
      }

      v47 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (!v47)
      {
        v30[25] = 0;
        goto LABEL_103;
      }

      v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v48 - 8) = v47;
      v30[25] = v48;
      if (!v48)
      {
LABEL_103:
        sub_2779F5C10(v6 + 51032, 2, "Failed to allocate bufs->tmp_best_mask_buf");
      }

      v49 = 0;
      v50 = v12 + 19365;
      v51 = 1;
      while (2)
      {
        v52 = v51;
        result = malloc_type_malloc(0x18027uLL, 0x5F484EBFuLL);
        if (result)
        {
          v53 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
          *(v53 - 8) = result;
          v50[v49] = v53;
          if (!v53)
          {
LABEL_109:
            result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->tmp_pred_bufs[j]");
          }

          v51 = 0;
          v49 = 1;
          if ((v52 & 1) == 0)
          {
            v27 = *(v6 + 352);
            v8 = v67;
            v3 = v68;
            goto LABEL_112;
          }

          continue;
        }

        break;
      }

      v50[v49] = 0;
      goto LABEL_109;
    }

LABEL_112:
    if ((*(v27 + 245616) & 0xFD) == 0)
    {
      v54 = v27 + 395528;
      if (!*(v54 + 856) && !*v54 && (*(v54 + 568) || *(v54 + 572)))
      {
        result = malloc_type_malloc((2uLL >> v63[49] << 16) | 0x17, 0x5F484EBFuLL);
        if (!result)
        {
          *v66 = 0;
          goto LABEL_125;
        }

        v55 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v55 - 8) = result;
        *v66 = v55;
        if (!v55)
        {
LABEL_125:
          result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->pixel_gradient_info");
        }
      }
    }

    v56 = *(v6 + 352);
    v57 = (v56 + 270312);
    if (*(v56 + 272208) == 2)
    {
      v58 = v56 + 395528;
      if (!*v58 || v57[457] * -0.25 + 1.0 > 0.0 && (!*(v58 + 856) || *(v58 + 904)))
      {
        result = malloc_type_malloc(16 * byte_277C3F990[*(*v57 + 28)] * byte_277C36D60[*(*v57 + 28)] + 23, 0x5F484EBFuLL);
        if (!result)
        {
          v12[19911] = 0;
          goto LABEL_135;
        }

        v59 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v59 - 8) = result;
        v12[19911] = v59;
        if (!v59)
        {
LABEL_135:
          result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->src_var_info_of_4x4_sub_blocks");
        }
      }
    }

    if (*(*(v6 + 352) + 395528) == 2)
    {
      if (*v63 == 12)
      {
        v60 = 43687;
      }

      else
      {
        v60 = 174679;
      }

      result = malloc_type_malloc(v60, 0x5F484EBFuLL);
      if (!result)
      {
        v12[19373] = 0;
        goto LABEL_144;
      }

      v61 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v61 - 8) = result;
      v12[19373] = v61;
      if (!v61)
      {
LABEL_144:
        result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate td->vt64x64");
      }
    }

LABEL_6:
    if (v5)
    {
      continue;
    }

    if (*(*(v6 + 352) + 272209) != 1 || v7 > v62)
    {
      continue;
    }

    if (!v3)
    {
      if (*(v6 + 328) >= 1)
      {
        v31 = 0;
        do
        {
          result = malloc_type_malloc(0x5313uLL, 0x5F484EBFuLL);
          if (result)
          {
            v32 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
            *(v32 - 8) = result;
          }

          else
          {
            v32 = 0;
          }

          *(*(v6 + 8 * v31) + 241040) = v32;
          if (!*(*(v6 + 8 * v31) + 241040))
          {
            result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate ppi->parallel_cpi[j]->td.tctx");
          }

          ++v31;
        }

        while (v31 < *(v6 + 328));
        continue;
      }

      break;
    }

    result = malloc_type_malloc(0x5313uLL, 0x5F484EBFuLL);
    if (result)
    {
      v10 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
      *(v10 - 8) = result;
      *(*(v8 + 8) + 154976) = v10;
      if (v10)
      {
        continue;
      }
    }

    else
    {
      *(*(v8 + 8) + 154976) = 0;
    }

    result = sub_2779F5C10(v6 + 51032, 2, "Failed to allocate thread_data->td->tctx");
  }

  while (v7 > 1);
LABEL_145:
  *(v2 + 116) = v62;
  return result;
}

pthread_mutex_t *sub_277AF74F0(uint64_t a1, unsigned int a2)
{
  v3 = a1 + 73728;
  v4 = a2;
  if (a2 <= 0x9249248 && (v5 = malloc_type_malloc(56 * a2 + 23, 0x5F484EBFuLL)) != 0)
  {
    v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v6 - 8) = v5;
    *(v3 + 1368) = v6;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *(v3 + 1368) = 0;
  }

  sub_2779F5C10(a1 + 51032, 2, "Failed to allocate p_mt_info->workers");
LABEL_7:
  v7 = sub_2779724A8(v4, 0x1C8uLL);
  *(v3 + 1376) = v7;
  if (!v7)
  {
    sub_2779F5C10(a1 + 51032, 2, "Failed to allocate p_mt_info->tile_thr_data");
  }

  v8 = 0;
  v9 = 0;
  v10 = 448;
  do
  {
    v11 = *(v3 + 1368) + v8;
    v12 = *(v3 + 1376);
    *(v11 + 48) = 0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *v11 = 0u;
    *(v11 + 16) = "aom enc worker";
    v13 = (v12 + v10);
    *v13 = v9;
    v13[1] = v9;
    if (v9)
    {
      if (!sub_277985F5C(v11))
      {
        sub_2779F5C10(a1 + 51032, 1, "Tile encoder thread creation failed");
      }
    }

    result = sub_277985E48(v11, 1);
    ++*(v3 + 1312);
    ++v9;
    v10 += 456;
    v8 += 56;
  }

  while (v4 != v9);
  return result;
}

void sub_277AF7658(uint64_t a1)
{
  v1 = a1 + 73728;
  if (*(a1 + 75040) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_277985DDC((*(v1 + 1368) + v2));
      ++v3;
      v2 += 56;
    }

    while (v3 < *(v1 + 1312));
  }
}

uint64_t sub_277AF76B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 188) - 1) >= 2 && !*(a1 + 51016) && (*(a2 + 864) & 1) == 0 && (*(a2 + 946) & 1) == 0 && !*(a2 + 1104) && (*(a2 + 290) & 1) == 0 && !*(a2 + 232) && *(a2 + 1076) == 2 && *(a2 + 1032) >= 2 && (*(a2 + 1106))
  {
    return 1;
  }

  v4 = *(a1 + 328);
  if (v4 < 2)
  {
    return 0;
  }

  v5 = v4 - 1;
  v6 = (a1 + 8);
  do
  {
    v7 = *v6;
    v8 = *(*v6 + 245848);
    if (v8)
    {
      --*v8;
      *(v7 + 245848) = 0;
    }

    ++v6;
    --v5;
  }

  while (v5);
  v9 = *(*(a1 + 352) + 463456);
  v10 = (*(a1 + 6664) - v9) & ~((*(a1 + 6664) - v9) >> 31);
  v11 = a1 + 4 * v9;
  bzero((v11 + 12668), 4 * v10);
  bzero((a1 + 13668 + v9), v10);
  bzero((v11 + 6668), 4 * v10);
  memset((a1 + 32 * v9 + 14168), 255, 32 * v10);
  memset((v11 + 22168), 255, 4 * v10);
  result = 0;
  *(a1 + 328) = 1;
  return result;
}

uint64_t sub_277AF782C(uint64_t a1, _DWORD *a2)
{
  *(a1 + 75084) = 0;
  if (!sub_277AF76B4(a1, a2))
  {
    return 1;
  }

  v4 = *(a1 + 352);
  v5 = (v4 + 246148);
  v6 = *(v4 + 270312);
  LOBYTE(v4) = *(v6 + 36);
  v7 = ~(-1 << v4);
  v8 = (*v5 + v7) >> v4;
  v9 = (((v5[1] + v7) >> v4) + 1) >> 1;
  if (v9 >= v8)
  {
    v9 = v8;
  }

  v10 = a2[6];
  if (v10 >= a2[7])
  {
    v10 = a2[7];
  }

  v12 = v10 > 480 && *(v6 + 28) == 12;
  v13 = (v9 + dword_277BB6FD8[v12]) / dword_277BB6FE0[v12];
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = a2[258];
  v16 = v15 / v14;
  if ((a2[84] > 0 || a2[85] >= 1) && v16 < 4)
  {
    v16 = 1;
  }

  if (v16 >= 4)
  {
    v16 = 4;
  }

  if (v16 <= 1)
  {
    v16 = 1;
  }

  v17 = *(a1 + 328);
  if (v16 >= v17)
  {
    v18 = *(a1 + 328);
  }

  else
  {
    v18 = v16;
  }

  if (v17 == 1)
  {
    result = v16;
  }

  else
  {
    result = v18;
  }

  if (result > 1)
  {
    v20 = result * v9;
    if (v20 >= v15)
    {
      v20 = a2[258];
    }

    *(a1 + 75084) = v20;
  }

  return result;
}

void sub_277AF7970(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a1 + 73728;
  v36 = 0;
  v35 = 0;
  v31 = *(a1 + 75040);
  if (v31 > 0)
  {
    v4 = (a1 + 75112);
    v30 = a1 + 75120;
    v5 = a1 + 75044;
    v29 = a1 + 32;
    do
    {
      v6 = (*(v32 + 1368) + 56 * v35);
      *(v30 + 8 * v36) = v6;
      v7 = *(a1 + 8 * v36);
      v8 = *(v7 + 245664);
      if (setjmp((v8 + 212)))
      {
        *(v8 + 208) = 0;
        if (v35 >= 1)
        {
          v9 = 0;
          for (i = 0; i < v35; i += *(v11 + 634344))
          {
            v11 = *(a1 + 8 * v9);
            v12 = *(v11 + 270312);
            if (*v4)
            {
              v13 = *(v12 + 77);
              *(*(v11 + 643408) + 40) = *(v11 + 643416);
              v14 = 0;
              do
              {
                v15 = v14;
                *(*(v11 + 643408) + 8 * v14 + 16) = *(v11 + 643424 + 8 * v14);
                if (v13)
                {
                  break;
                }

                ++v14;
              }

              while (v15 < 2);
              v12 = *(v11 + 270312);
            }

            if (*(v12 + 68) && (*(v11 + 246116) & 1) == 0 && !*(v11 + 270916))
            {
              *(*(v11 + 635032) + 432 * (i + *(v11 + 634344) - 1)) = *(v11 + 643448);
            }

            ++v9;
          }
        }

        sub_2779F5C78(a1 + 51032, v8);
      }

      *(v8 + 208) = 1;
      *(v7 + 634400) = *(v32 + 1368) + 56 * v35;
      *(v7 + 634408) = *(v32 + 1376) + 456 * v35;
      v16 = (v31 - v35) / (a3 - v36);
      *(v7 + 634344) = v16;
      for (j = 0; j != 48; j += 4)
      {
        v18 = *(v5 + j);
        if (v16 < v18)
        {
          v18 = (v31 - v35) / (a3 - v36);
        }

        *(v7 + 634348 + j) = v18;
      }

      if (*v4)
      {
        v19 = *v4 + 488 * v35;
        v20 = *(v19 + 40);
        *(v7 + 643408) = v19;
        *(v7 + 643416) = v20;
        v21 = *(v7 + 270312);
        v22 = *(v21 + 77);
        v23 = v19 + 16;
        v24 = 0;
        do
        {
          v25 = v24;
          *(v7 + 643424 + 8 * v24) = *(v23 + 8 * v24);
          if (v22)
          {
            break;
          }

          ++v24;
        }

        while (v25 < 2);
      }

      else
      {
        v21 = *(v7 + 270312);
      }

      if (*(v21 + 68) && (*(v7 + 246116) & 1) == 0 && !*(v7 + 270916))
      {
        v26 = *(v7 + 635032);
        v27 = 432 * (v35 + v16 - 1);
        *(v7 + 643448) = *(v26 + v27);
        *(v26 + v27) = *(v7 + 268864);
      }

      v35 += v16;
      sub_277A82424(v7 + 245616, v4, v7 + 643376, *(v32 + 1312), 0);
      v6[3] = sub_277AF7DAC;
      v6[4] = v7;
      v28 = a2;
      if (v36)
      {
        v28 = v29 + 72 * v36 - 72;
      }

      v6[5] = v28;
      ++v36;
      *(v8 + 208) = 0;
    }

    while (v35 < v31);
  }

  *(v32 + 1424) = a3;
}

uint64_t sub_277AF7DCC(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 >= 1)
  {
    v3 = result;
    v4 = (result + 395960);
    v5 = (result + 270312);
    v6 = result + 245616;
    v7 = (result + 86064);
    v8 = result + 212616;
    v66 = (result + 245376);
    v67 = (result + 634400);
    v9 = a3;
    v64 = (result + 270312);
    v65 = (result + 395960);
    v63 = result + 245616;
    v61 = (result + 133624);
    v62 = (result + 86064);
    while (1)
    {
      v10 = v7;
      v70 = v9;
      v12 = v9 - 1;
      v11 = v9 == 1;
      v13 = (*v67 + 56 * (v9 - 1));
      v14 = v67[1] + 456 * v12;
      v13[3] = a2;
      v13[4] = v14;
      v13[5] = 0;
      *(v14 + 452) = v12;
      v69 = v12;
      *(v14 + 448) = v12;
      *v14 = v3;
      if (!v11)
      {
        v10 = *(v14 + 16);
      }

      *(v14 + 8) = v10;
      *(v10 + 19368) = 0;
      *(v10 + 19364) = 0;
      *(v10 + 154680) = 0u;
      if (v10 == v7)
      {
        goto LABEL_28;
      }

      memcpy(v10, v7, 0x256A0uLL);
      v15 = v3;
      memcpy((*(v14 + 8) + 153264), (v3 + 239328), 0x598uLL);
      v16 = 0;
      v17 = *(v14 + 8);
      v18 = *(v17 + 154824);
      v17[1051] = *(v17 + 154840);
      v17[1050] = v18;
      v19 = 1;
      do
      {
        v20 = 0;
        v21 = v19;
        v22 = 1;
        do
        {
          v23 = v22;
          memcpy(*(*(v14 + 8) + 16 * v16 + 8 * v20 + 154792), *(v8 + 16 * v16 + 8 * v20), 0x4000uLL);
          v22 = 0;
          v24 = *(v14 + 8) + 16 * v16 + 8 * v20;
          *(v24 + 126552) = *(v24 + 154792);
          v20 = 1;
        }

        while ((v23 & 1) != 0);
        v19 = 0;
        v16 = 1;
      }

      while ((v21 & 1) != 0);
      v5 = v64;
      v4 = v65;
      v3 = v15;
      v6 = v63;
      if (*v65)
      {
        break;
      }

LABEL_17:
      v10 = *(v14 + 8);
      if (!v65[42])
      {
        v7 = v62;
        goto LABEL_28;
      }

      *(v10 + 5946) = 0;
      v7 = v62;
      if (v65[106])
      {
        goto LABEL_29;
      }

      if ((*v63 & 0xFD) == 0 && *(v63 + 495) == 1 && *(v63 + 496) && v64[467] != 1 && *(v3 + 644192) != 1)
      {
        v29 = malloc_type_malloc(0x4002FuLL, 0x5F484EBFuLL);
        if (v29)
        {
          v30 = v29;
          v31 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF0);
          *(v31 - 1) = v30;
          v32 = *(v14 + 8);
          *(v32 + 153256) = v31;
          if (!v31)
          {
LABEL_68:
            sub_2779F5C10(*(v63 + 48), 2, "Failed to allocate thread_data->td->dv_costs_alloc", v61);
            v32 = *(v14 + 8);
            v31 = *(v32 + 153256);
          }

          *(v32 + 47568) = v31;
          memcpy(v31, v61[1], 0x40018uLL);
          v10 = *(v14 + 8);
          goto LABEL_28;
        }

        *(*(v14 + 8) + 153256) = 0;
        goto LABEL_68;
      }

LABEL_28:
      if (v4[106])
      {
        goto LABEL_29;
      }

      if (v4[74])
      {
        v38 = malloc_type_malloc(0x625FuLL, 0x5F484EBFuLL);
        if (v38)
        {
          v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v39 - 8) = v38;
          *(v10 + 19138) = v39;
          if (v39)
          {
            goto LABEL_61;
          }
        }

        else
        {
          *(v10 + 19138) = 0;
        }

        sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->txfm_search_info.mb_rd_record", v61);
      }

LABEL_61:
      if ((*v6 & 0xFD) == 0)
      {
        goto LABEL_29;
      }

      v59 = malloc_type_malloc(0x5301FuLL, 0x5F484EBFuLL);
      if (v59)
      {
        v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v60 - 8) = v59;
        *(v10 + 14536) = v60;
        if (v60)
        {
          goto LABEL_29;
        }
      }

      else
      {
        *(v10 + 14536) = 0;
      }

      sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->inter_modes_info", v61);
LABEL_29:
      sub_277A55DE8(v6, v10);
      v33 = malloc_type_malloc(0x8017uLL, 0x5F484EBFuLL);
      if (v33)
      {
        v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v34 - 8) = v33;
        *(v10 + 1398) = v34;
        if (v34)
        {
          goto LABEL_34;
        }
      }

      else
      {
        *(v10 + 1398) = 0;
      }

      sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->e_mbd.seg_mask", v61);
LABEL_34:
      if (v5[467] != 1 && *(v3 + 644192) != 1 && (!v4[106] || v4[118]) && *(v4 + 320))
      {
        v35 = 16624 * dword_277C31748[*(v4 + 320)];
        if (v35 > 0x1FFFFFFE9 || (v36 = malloc_type_malloc(v35 + 23, 0x5F484EBFuLL)) == 0)
        {
          *(v10 + 14534) = 0;
LABEL_48:
          sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->winner_mode_stats", v61);
          goto LABEL_49;
        }

        v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v37 - 8) = v36;
        *(v10 + 14534) = v37;
        if (!v37)
        {
          goto LABEL_48;
        }
      }

LABEL_49:
      v40 = 4 * (1 << byte_277C3BCB6[*(*v5 + 28)]);
      if (v40 <= 0x1FFFFFFD9 && (result = malloc_type_malloc(v40 + 39, 0x5F484EBFuLL)) != 0)
      {
        v41 = (result + 39) & 0xFFFFFFFFFFFFFFE0;
        *(v41 - 8) = result;
        *(v10 + 19143) = v41;
        if (v41)
        {
          goto LABEL_55;
        }
      }

      else
      {
        *(v10 + 19143) = 0;
      }

      result = sub_2779F5C10(*(v6 + 48), 2, "Failed to allocate mb->dqcoeff_buf", v61);
LABEL_55:
      v42 = *(v14 + 8);
      v43 = v42 + 153224;
      v42 += 86580;
      *v42 = 0;
      *(v42 + 8) = 0;
      *v43 = 0;
      v44 = *(v43 + 1472);
      if (v44 != v66)
      {
        v45 = *v66;
        v46 = v66[1];
        v47 = v66[3];
        v44[2] = v66[2];
        v44[3] = v47;
        *v44 = v45;
        v44[1] = v46;
        v48 = v66[4];
        v49 = v66[5];
        v50 = v66[7];
        v44[6] = v66[6];
        v44[7] = v50;
        v44[4] = v48;
        v44[5] = v49;
        v51 = v66[8];
        v52 = v66[9];
        v53 = v66[11];
        v44[10] = v66[10];
        v44[11] = v53;
        v44[8] = v51;
        v44[9] = v52;
      }

      if (v70 == 1)
      {
        return result;
      }

      v54 = *(v14 + 8);
      *(v54 + 16832) = *(v54 + 154856);
      v55 = *(v54 + 154880);
      *(v54 + 16840) = *(v54 + 154864);
      *(v54 + 16856) = v55;
      *(v54 + 16872) = *(v54 + 154896);
      v56 = *(v14 + 8);
      v56[2110] = v56[19363];
      v56[2111] = v56[19365];
      *(*(v14 + 8) + 16896) = *(*(v14 + 8) + 154928);
      v57 = *(v14 + 8);
      v58 = *(v57 + 159288);
      *(v57 + 128696) = *(v57 + 159280);
      *(v57 + 153216) = v58;
      *(v57 + 15448) = *(v57 + 16880);
      *(*(v14 + 8) + 15464) = *(*(v14 + 8) + 16896);
      v9 = v69;
    }

    v25 = malloc_type_malloc(0x8003FuLL, 0x5F484EBFuLL);
    if (v25)
    {
      v26 = v25;
      v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF0);
      *(v27 - 1) = v26;
      v28 = *(v14 + 8);
      *(v28 + 153248) = v27;
      if (v27)
      {
LABEL_16:
        *(v28 + 47560) = v27;
        memcpy(v27, *v61, 0x80028uLL);
        goto LABEL_17;
      }
    }

    else
    {
      *(*(v14 + 8) + 153248) = 0;
    }

    sub_2779F5C10(*(v63 + 48), 2, "Failed to allocate thread_data->td->mv_costs_alloc", v61);
    v28 = *(v14 + 8);
    v27 = *(v28 + 153248);
    goto LABEL_16;
  }

  return result;
}

void sub_277AF84BC(int8x8_t *a1, unsigned int a2)
{
  if (a2 >= 1)
  {
    v2 = &a1[80434] + 1;
    v35 = a1 + 33789;
    v36 = a1 + 49409;
    v3 = a1 + 29897;
    v4 = a1 + 30672;
    v32 = a1 + 29917;
    v33 = a1 + 10758;
    v31 = &a1[30069] + 4;
    for (i = a2; ; --i)
    {
      v6 = *(*&a1[79300] + 56 * i - 24);
      v7 = *(v6 + 8);
      *v2 |= *(v7 + 154944);
      v2[68] |= *(v7 + 154948);
      if ((a1[30702].i8[0] & 0xFD) != 0)
      {
        if (v35[127].i8[0] == 3)
        {
          *(*&a1[57929] + 28) = vadd_s32(*(*&a1[57929] + 28), *(v7 + 86580));
        }

        v36->i32[0] += *(v7 + 86588);
      }

      v2[327] += *(v7 + 153224);
      if (v7 != v33)
      {
        if (v36[86].i32[0])
        {
          v8 = *(v7 + 153248);
          if (v8)
          {
            free(*(v8 - 8));
            v7 = *(v6 + 8);
          }

          *(v7 + 153248) = 0;
        }

        if (v36[107].i32[0])
        {
          v9 = *(v7 + 153256);
          if (v9)
          {
            free(*(v9 - 8));
            v7 = *(v6 + 8);
          }

          *(v7 + 153256) = 0;
        }
      }

      v10 = *(*v35 + 77);
      v11 = *(v7 + 153104);
      if (v11)
      {
        free(*(v11 - 8));
      }

      v12 = (v7 + 116272);
      *(v7 + 153104) = 0;
      v13 = *(v7 + 116288);
      if (v13)
      {
        free(*(v13 - 8));
      }

      *(v7 + 116288) = 0;
      v14 = v10 ? 1 : 3;
      v15 = v7;
      do
      {
        if (*v15)
        {
          free(*(*v15 - 8));
        }

        *v15 = 0;
        v15 += 17;
        --v14;
      }

      while (v14);
      v16 = *(v7 + 11184);
      if (v16)
      {
        free(*(v16 - 8));
      }

      *(v7 + 11184) = 0;
      if (*v12)
      {
        free(*(*v12 - 8));
      }

      *v12 = 0;
      v17 = *(v7 + 153144);
      if (v17)
      {
        free(*(v17 - 8));
      }

      *(v7 + 153144) = 0;
      if (i == 1)
      {
        break;
      }

      v18 = 0;
      v19 = *(v6 + 8);
      v20 = v19 + 18944;
      v21 = v19[19337];
      do
      {
        v4->i32[v18] += *(*&v21 + v18 * 4);
        ++v18;
      }

      while (v18 != 48);
      v22 = 0;
      v3[19] = vorr_s8(v3[19], v19[19158]);
      v23 = v19 + 19159;
      v24 = v32;
      do
      {
        for (j = 0; j != 16; ++j)
        {
          v24->i32[j] += v23->i32[j];
        }

        ++v22;
        v24 += 8;
        v23 += 8;
      }

      while (v22 != 19);
      v26 = &v20[367] + 1;
      v27 = v31;
      v28 = 22;
      do
      {
        v29 = *v27;
        *(v27 - 1) += *(v26 - 1);
        v30 = *v26;
        v26 += 2;
        *v27 = v29 + v30;
        v27 += 2;
        --v28;
      }

      while (v28);
      v3[194].i32[0] += v20[389].i32[0];
      v3[194].i32[1] += v20[389].i32[1];
      *&v3[196] += *&v20[391];
      *&v3[197] += *&v20[392];
      v3[195].i32[0] += v20[390].i32[0];
      v3->i32[0] += v20[195].i32[0];
    }
  }
}

uint64_t sub_277AF8868(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (*a1 + 270312);
  v6 = *(*a1 + 270336);
  v5 = *(*a1 + 270340);
  *(v3 + 11152) = a1 + 24;
  if (setjmp((a1 + 236)))
  {
    result = 0;
  }

  else
  {
    *(a1 + 232) = 1;
    if (*(v2 + 396384))
    {
      v8 = sub_2779C9BC8(*(*v4 + 28));
      *(*(a1 + 8) + 159296) = v9;
      if (!v9)
      {
        sub_2779F5C10(*(v3 + 11152), 2, "Failed to allocate PC_TREE", v8);
      }
    }

    else
    {
      *(*(a1 + 8) + 159296) = 0;
    }

    for (i = *(a1 + 448); i < v5 * v6; i = *(v2 + 634344) + v11)
    {
      v11 = i;
      v12 = i / v6;
      v13 = i % v6;
      v14 = *(a1 + 8);
      v15 = *(v2 + 463544) + 23824 * (i % v6 + v4[6] * (i / v6)) + 32;
      *(v14 + 11064) = v15;
      *(v14 + 16776) = v15;
      sub_277A60FBC(v2, v14, v12, v13);
    }

    if (*(*v4 + 77))
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    sub_2779C9C3C(*(*(a1 + 8) + 159296), v16, 0, 0, *(v2 + 395528));
    *(*(a1 + 8) + 159296) = 0;
    result = 1;
  }

  *(a1 + 232) = 0;
  return result;
}

uint64_t sub_277AF8A04(uint64_t a1)
{
  v1 = *(a1 + 272136);
  if (v1 < 2)
  {
    return 1;
  }

  v3 = *(a1 + 270340);
  if (v3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = (a1 + 246148);
    v7 = a1 + 270656;
    do
    {
      if (*(a1 + 270336) <= 0)
      {
        ++v5;
      }

      else
      {
        v8 = *(*(a1 + 270312) + 36);
        v9 = *(v7 + 4 * v5++) << v8;
        v10 = *(v7 + 4 * v5) << v8;
        v11 = *(a1 + 644276);
        if (v10 >= *v6)
        {
          v10 = *v6;
        }

        v12 = (v10 + ~v9 + (1 << byte_277C3CFCC[v11])) >> byte_277C3CFCC[v11];
        v13 = byte_277C42228[v11];
        v14 = *(a1 + 270396);
        v15 = (a1 + 270400);
        v16 = *(a1 + 270336);
        do
        {
          v17 = v14 << v8;
          v18 = *v15++;
          v14 = v18;
          v19 = v18 << v8;
          if (v18 << v8 >= *(a1 + 246152))
          {
            v19 = *(a1 + 246152);
          }

          v20 = (((v19 + ~v17 + (1 << v13)) >> v13) + 1) >> 1;
          if (v20 >= v12)
          {
            v20 = v12;
          }

          v4 += v20;
          --v16;
        }

        while (v16);
      }
    }

    while (v5 != v3);
  }

  if (v1 >= v4)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_277AF8B44(uint64_t a1, int a2, int a3, int a4)
{
  v29 = a1 + 245664;
  v7 = *(a1 + 270340);
  v25 = *(a1 + 270336);
  v21 = a1 + 270312;
  v22 = a1 + 634432;
  sub_277AF65C4(a1);
  v24 = v7;
  if (v7 >= 1)
  {
    v8 = 0;
    if (a3 <= 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = a3;
    }

    v10 = v9 - 1;
    v27 = 21280;
    v28 = 21244 * (v9 - 1);
    while (1)
    {
      v26 = v8;
      if (v25 >= 1)
      {
        break;
      }

LABEL_16:
      v8 = v26 + 1;
      v27 += 23824 * v25;
      if (v26 + 1 == v24)
      {
        goto LABEL_17;
      }
    }

    v11 = v27;
    v12 = v25;
    while (1)
    {
      v13 = *(a1 + 463544);
      sub_277AF96C0(v13 + v11 + 2488, a1 + 245616, a2);
      if (a4)
      {
        if (v10 > 0x62B7A || (v14 = malloc_type_malloc(v28 + 23, 0x5F484EBFuLL)) == 0)
        {
          *(v13 + v11) = 0;
LABEL_14:
          sub_2779F5C10(*v29, 2, "Failed to allocate this_tile->row_ctx", v21);
          goto LABEL_15;
        }

        v15 = (v14 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v15 - 8) = v14;
        *(v13 + v11) = v15;
        if (!v15)
        {
          goto LABEL_14;
        }
      }

LABEL_15:
      v11 += 23824;
      if (!--v12)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  v16 = (*(v29 + 484) + (1 << *(*v21 + 36)) - 1) >> *(*v21 + 36);
  v17 = 4 * v16;
  if (v17 > 0x1FFFFFFE9 || (result = malloc_type_malloc(v17 + 23, 0x5F484EBFuLL)) == 0)
  {
    v20 = v22;
    *(v22 + 264) = 0;
LABEL_22:
    result = sub_2779F5C10(*v29, 2, "Failed to allocate enc_row_mt->num_tile_cols_done", v21);
    goto LABEL_23;
  }

  v19 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v19 - 8) = result;
  v20 = v22;
  *(v22 + 264) = v19;
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_23:
  *v20 = a2;
  v20[1] = a3 - 1;
  v20[68] = v16;
  return result;
}

uint64_t sub_277AF8D6C(uint64_t a1)
{
  v1 = a1;
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1 + 634696;
  v5 = *(a1 + 452);
  v6 = *(*a1 + 634712);
  v7 = *(a1 + 432);
  *(v3 + 11152) = a1 + 24;
  v117 = v2 + 61404;
  v114 = v2;
  if (v2[160866])
  {
    if (v2[67160])
    {
      v8 = 1;
    }

    else
    {
      v8 = v2[67161] != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v116 = v8;
  if (setjmp((a1 + 236)))
  {
    v111 = v7;
    *(v1 + 232) = 0;
    pthread_mutex_lock(v6);
    *(v4 + 12) = 1;
    pthread_cond_broadcast(*(v4 + 24));
    pthread_mutex_unlock(v6);
    v109 = v114 + 270312;
    v106 = *(v114 + 270340);
    if (v106 >= 1)
    {
      v9 = *(*v109 + 32);
      v105 = *(v114 + 270336);
      v104 = *(v114 + 270336);
      v10 = 0;
      do
      {
        v103 = v10;
        if (v104 >= 1)
        {
          v11 = 0;
          v101 = v10 * v105;
          do
          {
            v12 = (*(v114 + 463544) + 23824 * v11 + 23824 * v101);
            v13 = *v12;
            if (*v12 < v12[1])
            {
              v14 = 0;
              v15 = ((v12[3] + (1 << *(*v109 + 36)) + ~v12[2]) >> *(*v109 + 36));
              do
              {
                v16 = v13;
                (*(v4 + 40))(v12 + 5942, v14, (v15 - 1), v15);
                v13 = v16 + v9;
                v14 = (v14 + 1);
              }

              while (v16 + v9 < v12[1]);
            }

            ++v11;
          }

          while (v11 != v105);
        }

        v10 = v103 + 1;
      }

      while (v103 + 1 != v106);
    }

    if (v116)
    {
      pthread_mutex_lock(*(v111 + 96));
      *(v111 + 120) = 1;
      pthread_mutex_unlock(*(v111 + 96));
      sub_2779D126C(*(v114 + 246148), *(v114 + 246152), v111, *(*v109 + 36));
    }

    return 0;
  }

  *(v1 + 232) = 1;
  v113 = *(*(v117 + 3087) + 36);
  v18 = *(v114 + 4 * v5 + 634440);
  if (*(v114 + 396384))
  {
    v19 = sub_2779C9BC8(*(*(v117 + 3087) + 28));
    v20 = *(v1 + 8);
    *(v20 + 159296) = v21;
    if (!v21)
    {
      sub_2779F5C10(*(v3 + 11152), 2, "Failed to allocate PC_TREE", v19);
      v20 = *(v1 + 8);
    }
  }

  else
  {
    v22 = *(v1 + 8);
    *(v22 + 159296) = 0;
    v20 = v22;
  }

  *(v20 + 11064) = *(v117 + 3088);
  v23 = v18;
  v115 = v1;
  v112 = v6;
  while (1)
  {
    pthread_mutex_lock(v6);
    if (*(v4 + 12))
    {
      pthread_mutex_unlock(v6);
      goto LABEL_87;
    }

    v24 = *(v114 + 463544);
    v25 = v24 + 23824 * v23;
    v26 = v117;
    v27 = *(v25 + 4);
    v28 = (v25 + 23804);
    if (*v28 < v27)
    {
      v29 = v28;
      v30 = *v28;
      v31 = v29;
      v32 = v23;
      goto LABEL_54;
    }

    v26 = v117;
    v33 = v117[6181];
    if (v33 < 1)
    {
      break;
    }

    v34 = *(v114 + 463544);
    v35 = v117[6180];
    v36 = (v24 + 23808);
    v37 = 23824 * v35;
    v38 = 0x7FFFFFFFLL;
    v39 = 0xFFFFFFFFLL;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    do
    {
      if (v35 < 1)
      {
        v63 = v38;
        v62 = v39;
      }

      else
      {
        v43 = *(*(v117 + 3087) + 36);
        v44 = 1 << v43;
        v45 = v34;
        v46 = v36;
        v47 = v41;
        v48 = v117[6180];
        v49 = v40;
        v50 = v38;
        do
        {
          v51 = v39;
          v52 = v48;
          v53 = v47;
          v54 = v46;
          v55 = v45[1];
          v56 = (((v45[3] + v44 + ~v45[2]) >> v43) + 1) >> 1;
          if (v56 >= (v55 + v44 + ~*v45) >> v43)
          {
            v56 = (v55 + v44 + ~*v45) >> v43;
          }

          v57 = *v54;
          if (*v54 < v56)
          {
            v58 = v55 - *(v54 - 1);
            if (v58 >= 1)
            {
              v59 = v57 < v50;
              if (v57 >= v50)
              {
                v50 = v50;
              }

              else
              {
                v50 = v57;
              }

              if (v59)
              {
                LODWORD(v49) = 0;
                v60 = 1;
              }

              else
              {
                v60 = 0;
              }

              v61 = v58 > v49;
              if ((v60 & v61) != 0)
              {
                v49 = v58;
              }

              else
              {
                v49 = v49;
              }

              if ((v60 & v61) != 0)
              {
                v51 = v53;
              }

              else
              {
                v51 = v51;
              }
            }
          }

          v62 = v51;
          v63 = v50;
          v47 = v53 + 1;
          v46 = v54 + 5956;
          v45 += 5956;
          v40 = v49;
          v39 = v62;
          --v48;
        }

        while (v52 != 1);
      }

      v38 = v63;
      ++v42;
      v41 += v35;
      v36 = (v36 + v37);
      v34 = (v34 + v37);
      v39 = v62;
    }

    while (v42 != v33);
    v64 = v62;
    if (v62 == -1)
    {
      break;
    }

    v32 = v62;
    v65 = v24 + 23824 * v62;
    v66 = *(v65 + 4);
    v67 = (v65 + 23804);
    if (*v67 >= v66)
    {
      v70 = -1;
      goto LABEL_56;
    }

    v68 = v67;
    v30 = *v67;
    v31 = v68;
    v23 = v62;
LABEL_54:
    v69 = *(*(v26 + 3087) + 32);
    ++*(v24 + 23824 * v32 + 23808);
    *v31 = v69 + v30;
    v64 = v23;
    v70 = v30;
LABEL_56:
    v110 = v64;
    v71 = v32;
    pthread_mutex_unlock(v6);
    v72 = *(v114 + 463544) + 23824 * v71;
    v73 = *(v72 + 20);
    v74 = *(v72 + 16);
    v75 = *(v72 + 21296);
    v76 = *(v1 + 8);
    v77 = (v76 + 153104);
    v78 = *(v76 + 154976);
    *(v76 + 11064) = v78;
    *(v76 + 16776) = v72 + 32;
    *(v76 + 154912) = 0;
    if (!v75 || (*(v76 + 16768) = *(v72 + 21280), v70 == *v72))
    {
      memcpy(v78, (v72 + 32), 0x52FCuLL);
    }

    v102 = v73;
    v108 = v70;
    v79 = v70 >> v113;
    v80 = (v117 + 6332);
    v81 = 3;
    if (*(*(v117 + 3087) + 77))
    {
      v81 = 1;
    }

    v82 = v81;
    v83 = 8384;
    do
    {
      v84 = *v80++;
      *(v76 + v83) = *(v84 + 8 * v74);
      v83 += 8;
      --v82;
    }

    while (v82);
    *(v76 + 8504) = *(*(v117 + 3165) + 8 * v74);
    *(v76 + 8544) = *(*(v117 + 3169) + 8 * v74);
    v85 = *(v117 + 3087);
    bzero((v76 + 11192), 0x1000uLL);
    *(v76 + 15432) = *(v85 + 96);
    *(v76 + 15428) = 0;
    *(v76 + 15440) = 0;
    *(v76 + 15290) = 0;
    *(v76 + 15288) = 0;
    if (*v77)
    {
      sub_2779FB5E8(*v77 + 16968);
    }

    sub_277A5D75C(v114, v76, v74, v102, v108);
    v6 = v112;
    pthread_mutex_lock(v112);
    *(v72 + 21288) += *(v76 + 154912);
    --*(v72 + 23808);
    ++*(*v4 + 4 * v79);
    pthread_cond_broadcast(*(v4 + 24));
    pthread_mutex_unlock(v112);
    v23 = v110;
    v1 = v115;
  }

  pthread_mutex_unlock(v6);
  if (v116)
  {
    v86 = *(v1 + 432);
    v87 = *(v4 + 16);
    v107 = ((v117[133] + (1 << *(*(v117 + 3087) + 36)) - 1) >> *(*(v117 + 3087) + 36)) - 1;
    while (1)
    {
      pthread_mutex_lock(*(v86 + 96));
      if ((*(v86 + 120) & 1) != 0 || (v88 = *(v86 + 116), v88 >= *(v86 + 112)))
      {
        v98 = *(v86 + 96);
        goto LABEL_82;
      }

      *(v86 + 116) = v88 + 1;
      v89 = *(v86 + 104);
      pthread_mutex_unlock(*(v86 + 96));
      if (!v89)
      {
        goto LABEL_83;
      }

      v90 = (v89 + 16 * v88);
      v91 = *(v1 + 440);
      v92 = v90[3];
      v93 = *v90;
      pthread_mutex_lock(v87);
      if (*(v4 + 12))
      {
        break;
      }

      v100 = v92;
      if (v107 >= (v93 >> v113) + 1)
      {
        v94 = (v93 >> v113) + 1;
      }

      else
      {
        v94 = v107;
      }

      v95 = v93 >> v113;
      v96 = v94;
      while (1)
      {
        v97 = v117[6180];
        if (*(*v4 + 4 * v95) >= v97 && *(*v4 + 4 * v96) >= v97)
        {
          break;
        }

        pthread_cond_wait(*(v4 + 24), v87);
        if (*(v4 + 12))
        {
          v98 = v87;
          v1 = v115;
          goto LABEL_82;
        }
      }

      pthread_mutex_unlock(v87);
      sub_2779CE7E8(*v91, *(v91 + 8), v91 + 16, *(v91 + 7840), *v90, v90[1], v90[2], v100, v86, (v91 + 7848), (v91 + 8360), v113);
      v1 = v115;
    }

    v98 = v87;
LABEL_82:
    pthread_mutex_unlock(v98);
  }

LABEL_83:
  if (*(*(v117 + 3087) + 77))
  {
    v99 = 1;
  }

  else
  {
    v99 = 3;
  }

  sub_2779C9C3C(*(*(v1 + 8) + 159296), v99, 0, 0, *(v114 + 395528));
  *(*(v1 + 8) + 159296) = 0;
LABEL_87:
  *(v1 + 232) = 0;
  return 1;
}

uint64_t sub_277AF96C0(uint64_t a1, uint64_t a2, int a3)
{
  v6 = a3;
  v7 = a3 << 6;
  if (v7 <= 0x1FFFFFFE9 && (v8 = malloc_type_malloc(v7 | 0x17, 0x5F484EBFuLL)) != 0)
  {
    v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v9 - 8) = v8;
    *a1 = v9;
    if (v9)
    {
      if (a3 < 1)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    *a1 = 0;
  }

  sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate row_mt_sync->mutex_");
  if (*a1 && a3 > 0)
  {
LABEL_9:
    v10 = 0;
    v11 = a3;
    do
    {
      pthread_mutex_init((*a1 + v10), 0);
      v10 += 64;
      --v11;
    }

    while (v11);
  }

LABEL_11:
  if ((48 * v6) <= 0x1FFFFFFE9 && (v12 = malloc_type_malloc(48 * v6 + 23, 0x5F484EBFuLL)) != 0)
  {
    v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v13 - 8) = v12;
    *(a1 + 8) = v13;
    v14 = (a1 + 8);
    if (v13)
    {
      if (a3 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    *(a1 + 8) = 0;
    v14 = (a1 + 8);
  }

  sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate row_mt_sync->cond_");
  if (*v14 && a3 > 0)
  {
LABEL_19:
    v15 = 0;
    v16 = a3;
    do
    {
      pthread_cond_init((*v14 + v15), 0);
      v15 += 48;
      --v16;
    }

    while (v16);
  }

LABEL_21:
  if ((4 * v6) > 0x1FFFFFFE9 || (result = malloc_type_malloc(4 * v6 + 23, 0x5F484EBFuLL)) == 0)
  {
    *(a1 + 16) = 0;
LABEL_26:
    result = sub_2779F5C10(*(a2 + 48), 2, "Failed to allocate row_mt_sync->num_finished_cols");
    goto LABEL_27;
  }

  v18 = (result + 23) & 0xFFFFFFFFFFFFFFF0;
  *(v18 - 8) = result;
  *(a1 + 16) = v18;
  if (!v18)
  {
    goto LABEL_26;
  }

LABEL_27:
  *(a1 + 32) = a3;
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_277AF9890(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1 + 634709;
  v4 = *(*a1 + 634712);
  v5 = (*a1 + 270336);
  v6 = *(a1 + 113);
  *(a1[1] + 11152) = a1 + 3;
  v72 = v2;
  if (!setjmp(a1 + 59))
  {
    v70 = (v2 + 270336);
    v68 = v2;
    v71 = a1;
    *(a1 + 58) = 1;
    v16 = *(v2 + 4 * v6 + 634440);
    v17 = *(v2 + 644276);
    v67 = byte_277C36D60[v17];
    v69 = v4;
    while (1)
    {
      pthread_mutex_lock(v4);
      if (*v3)
      {
LABEL_46:
        pthread_mutex_unlock(v4);
        *(v71 + 58) = 0;
        return 1;
      }

      v18 = *(v2 + 463544);
      v19 = v18 + 23824 * v16;
      v20 = *(v19 + 4);
      v21 = (v19 + 23804);
      if (*v21 < v20)
      {
        break;
      }

      v25 = v70[1];
      if (v25 < 1)
      {
        goto LABEL_46;
      }

      v26 = *(v2 + 463544);
      v27 = *v70;
      v28 = (v18 + 23808);
      v29 = 23824 * *v70;
      v30 = 0x7FFFFFFFLL;
      v31 = 0xFFFFFFFFLL;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      do
      {
        if (v27 < 1)
        {
          v51 = v30;
        }

        else
        {
          v35 = byte_277C3CFCC[v17];
          v36 = v26;
          v37 = v28;
          v38 = v33;
          v39 = *v70;
          v40 = v31;
          v41 = v32;
          do
          {
            v42 = v37;
            v43 = v36;
            v44 = v36[1];
            v45 = (((v43[3] + (1 << byte_277C42228[v17]) + ~v43[2]) >> byte_277C42228[v17]) + 1) >> 1;
            if (v45 >= (v44 + (1 << v35) + ~*v43) >> v35)
            {
              v45 = (v44 + (1 << v35) + ~*v43) >> v35;
            }

            v46 = *v37;
            if (*v42 < v45)
            {
              v47 = v44 - *(v42 - 1);
              if (v47 >= 1)
              {
                v48 = v46 < v30;
                if (v46 >= v30)
                {
                  v30 = v30;
                }

                else
                {
                  v30 = v46;
                }

                if (v48)
                {
                  LODWORD(v41) = 0;
                  v49 = 1;
                }

                else
                {
                  v49 = 0;
                }

                v50 = v47 > v41;
                if ((v49 & v50) != 0)
                {
                  v41 = v47;
                }

                else
                {
                  v41 = v41;
                }

                if ((v49 & v50) != 0)
                {
                  v40 = v38;
                }

                else
                {
                  v40 = v40;
                }
              }
            }

            ++v38;
            v37 = v42 + 5956;
            v36 = v43 + 5956;
            v51 = v30;
            v32 = v41;
            v31 = v40;
            --v39;
          }

          while (v39);
        }

        v30 = v51;
        ++v34;
        v33 += v27;
        v28 = (v28 + v29);
        v26 = (v26 + v29);
      }

      while (v34 != v25);
      v52 = v31;
      v2 = v72;
      v4 = v69;
      if (v31 == -1)
      {
        goto LABEL_46;
      }

      v22 = v31;
      v53 = v18 + 23824 * v31;
      v54 = *(v53 + 4);
      v55 = (v53 + 23804);
      v23 = *v55;
      if (*v55 < v54)
      {
        v24 = v55;
        v16 = v31;
        goto LABEL_43;
      }

      v23 = -1;
LABEL_45:
      v56 = v52;
      v57 = v22;
      v4 = v69;
      pthread_mutex_unlock(v69);
      v58 = (*(v2 + 463544) + 23824 * v57);
      sub_2779B1630(v68, v71[1], v58, v23 >> byte_277C3CFCC[v17], v17);
      pthread_mutex_lock(v69);
      --v58[5952];
      pthread_mutex_unlock(v69);
      v16 = v56;
    }

    v22 = v16;
    v23 = *v21;
    v24 = v21;
LABEL_43:
    ++*(v18 + 23824 * v22 + 23808);
    *v24 = v23 + v67;
    v52 = v16;
    goto LABEL_45;
  }

  *(a1 + 58) = 0;
  pthread_mutex_lock(v4);
  *v3 = 1;
  pthread_mutex_unlock(v4);
  v66 = *(v2 + 270340);
  if (v66 < 1)
  {
    return 0;
  }

  v7 = byte_277C36D60[*(v2 + 644276)];
  v64 = *v5;
  v65 = *(v2 + 644276);
  v63 = *v5;
  v8 = 0;
  do
  {
    v62 = v8;
    if (v63 >= 1)
    {
      v9 = 0;
      v61 = v8 * v64;
      v59 = 1 << byte_277C42228[v65];
      v60 = byte_277C42228[v65];
      do
      {
        v10 = (*(v72 + 463544) + 23824 * v9 + 23824 * v61);
        v11 = *v10;
        if (*v10 < v10[1])
        {
          v12 = 0;
          v13 = ((v10[3] + v59 + ~v10[2]) >> v60);
          do
          {
            v14 = v11;
            (*(v3 + 27))(v10 + 5942, v12, (v13 - 1), v13);
            v11 = v14 + v7;
            v12 = (v12 + 1);
          }

          while (v14 + v7 < v10[1]);
        }

        ++v9;
      }

      while (v9 != v64);
    }

    v8 = v62 + 1;
  }

  while (v62 + 1 != v66);
  return 0;
}

uint64_t sub_277AF9DA0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v4 = result;
    v5 = *(result + 24);
    v6 = a2 - 1;
    v7 = a2 - 1;
    v8 = (*result + (v7 << 6));
    pthread_mutex_lock(v8);
    if (*(*(v4 + 16) + 4 * v6) - v5 < a3)
    {
      do
      {
        pthread_cond_wait((*(v4 + 8) + 48 * v7), v8);
      }

      while (*(*(v4 + 16) + 4 * v7) - v5 < a3);
    }

    return pthread_mutex_unlock(v8);
  }

  return result;
}

uint64_t sub_277AF9E48(uint64_t result, int a2, int a3, int a4)
{
  v5 = result;
  v6 = *(result + 24);
  if (a4 - 1 <= a3)
  {
    v7 = v6 + a4;
  }

  else
  {
    v7 = a3;
    if (a3 % v6)
    {
      return result;
    }
  }

  pthread_mutex_lock((*result + (a2 << 6)));
  v9 = v5[1];
  v8 = v5[2];
  v10 = *(v8 + 4 * a2);
  if (v10 <= v7)
  {
    v10 = v7;
  }

  *(v8 + 4 * a2) = v10;
  pthread_cond_signal((v9 + 48 * a2));
  v11 = (*v5 + (a2 << 6));

  return pthread_mutex_unlock(v11);
}

double sub_277AF9EF0(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (a1[7] < 1)
    {
      goto LABEL_6;
    }

    v3 = 0;
    v4 = 0;
    do
    {
      pthread_mutex_destroy((*a1 + v3));
      ++v4;
      v3 += 64;
    }

    while (v4 < a1[7]);
    v2 = *a1;
    if (*a1)
    {
LABEL_6:
      free(*(v2 - 8));
    }
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    if (a1[7] < 1)
    {
      goto LABEL_12;
    }

    v6 = 0;
    v7 = 0;
    do
    {
      pthread_cond_destroy((*(a1 + 1) + v6));
      ++v7;
      v6 += 48;
    }

    while (v7 < a1[7]);
    v5 = *(a1 + 1);
    if (v5)
    {
LABEL_12:
      free(*(v5 - 8));
    }
  }

  v8 = *(a1 + 2);
  if (v8)
  {
    free(*(v8 - 8));
  }

  *(a1 + 4) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t sub_277AF9FCC(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a1;
  v5 = *a1 + 634776;
  v6 = (*a1 + 246148);
  v7 = *(**a1 + 74904);
  *(v3 + 11152) = a1 + 24;
  v8 = *(v5 + 8);
  if (setjmp((a1 + 236)))
  {
    *(a1 + 232) = 0;
    pthread_mutex_lock(v8);
    *v5 = 1;
    pthread_mutex_unlock(v8);
    v9 = *v4;
    v10 = *(*v4 + 54269);
    if (v10 <= 0xF)
    {
      if (v10 == 4)
      {
        v11 = 0;
        goto LABEL_21;
      }

      if (v10 == 8)
      {
        v11 = 3u;
        goto LABEL_21;
      }
    }

    else if (v10 != 16)
    {
      if (v10 == 64)
      {
        v11 = 0xCu;
        goto LABEL_21;
      }

      if (v10 == 32)
      {
        v11 = 9u;
LABEL_21:
        if (*v6 >= 1)
        {
          v14 = 0;
          v15 = byte_277C36D60[v11];
          v16 = ((v6[1] + (1 << byte_277C42228[v11] >> 1)) >> byte_277C42228[v11]);
          v17 = 0;
          do
          {
            v18 = v17;
            (*(v5 + 24))(v9 + 74872, v14, (v16 - 1), v16);
            v17 = v18 + v15;
            v14 = (v14 + 1);
          }

          while (v18 + v15 < *v6);
        }

        return 0;
      }
    }

    v11 = 6u;
    goto LABEL_21;
  }

  *(a1 + 232) = 1;
  v12 = *(*v4 + 54269);
  if (v12 <= 0xF)
  {
    if (v12 == 4)
    {
      v13 = 0;
      goto LABEL_28;
    }

    if (v12 == 8)
    {
      v13 = 3u;
      goto LABEL_28;
    }

LABEL_19:
    v13 = 6u;
    goto LABEL_28;
  }

  if (v12 == 16)
  {
    goto LABEL_19;
  }

  if (v12 == 64)
  {
    v13 = 0xCu;
    goto LABEL_28;
  }

  if (v12 != 32)
  {
    goto LABEL_19;
  }

  v13 = 9u;
LABEL_28:
  v20 = byte_277C39398[v13];
  v49 = v13;
  v21 = byte_277C36D60[v13];
  *(v3 + 155096) = 0;
  *(v3 + 159200) = 0x10000000000;
  bzero((v3 + 155104), 0x1000uLL);
  v50 = a1;
  v22 = *(a1 + 448);
  v23 = v22 * v21;
  v48 = v3;
  if (v22 * v21 < *v6)
  {
    v24 = v2;
    v25 = v6;
    v47 = (v3 + 128748);
    v26 = v22 * v21;
    v27 = *v6;
    v28 = -32 * v23;
    v43 = -(v22 * v21);
    v44 = 32 * v7 * v21;
    v41 = -(v21 + v23);
    v42 = ~v22 * v21;
    v29 = -8 - 4 * (v21 + v23);
    v45 = v7 * v21;
    v46 = v20;
    v30 = 4 * v7 * v21;
    v31 = 8 - 4 * v23;
    v32 = 0;
    v33 = v26;
    do
    {
      v34 = v29;
      v35 = v31;
      v36 = *(v24 + 272132);
      v37 = v35 - v36;
      if (v35 - v36 <= v34)
      {
        v37 = v34;
      }

      v38 = v36 + 4 * (v42 + v27 + v32) - 8;
      if (v38 >= 4 * (v43 + v27 + v32) + 8)
      {
        v38 = 4 * (v43 + v27 + v32) + 8;
      }

      *v47 = v37;
      *(v48 + 128752) = v38;
      *(v48 + 8348) = v28;
      *(v48 + 8352) = 32 * (v41 + v27 + v32);
      v39 = v24;
      v40 = v25;
      sub_277A22B74(v4, (v48 + 155056), v48, v33, v49, v46);
      v25 = v40;
      v33 += v45;
      v27 = *v40;
      v28 -= v44;
      v32 -= v45;
      v29 = v34 - v30;
      v31 = v35 - v30;
      v24 = v39;
    }

    while (v33 < *v40);
  }

  *(v50 + 232) = 0;
  return 1;
}

uint64_t sub_277AFA390(uint64_t *a1)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v4 = *a1 + 643360;
  v5 = *v4;
  v3[1394] = a1 + 3;
  if (setjmp(a1 + 59))
  {
    *(a1 + 58) = 0;
    pthread_mutex_lock(v5);
    *(v4 + 12) = 1;
    pthread_mutex_unlock(v5);
    return 0;
  }

  else
  {
    v7 = v2;
    v8 = v2 + 270312;
    *(a1 + 58) = 1;
    v9 = *(*(v2 + 270312) + 77);
    memset(v27, 0, 24);
    v10 = v9 == 0;
    v11 = 3;
    if (!v10)
    {
      v11 = 1;
    }

    v12 = 8 * v11;
    v13 = 0;
    v14 = 60;
    do
    {
      v27[v13 / 8] = v3[v14];
      v13 += 8;
      v14 += 326;
    }

    while (v12 != v13);
    v15 = v3[1035];
    v3[1045] = v2 + 273352;
    v3[1046] = v2 + 273352;
    v3[1035] = v3 + 19378;
    *(v3[19378] + 24) = 0;
    while (1)
    {
      v16 = *(v8 + 3084);
      v17 = *v4;
      pthread_mutex_lock(*v4);
      if (*(v4 + 12))
      {
        break;
      }

      v18 = *(v4 + 8);
      if (v18 >= v16)
      {
        break;
      }

      v19 = *(v4 + 8);
      *(v4 + 8) = v18 + 1;
      pthread_mutex_unlock(v17);
      sub_277B0EBDC(v7, v3, v19, v20, v21, v22, v23, v24);
    }

    pthread_mutex_unlock(v17);
    v25 = v3 + 60;
    v26 = 0;
    do
    {
      *v25 = v27[v26 / 8];
      v26 += 8;
      v25 += 326;
    }

    while (v12 != v26);
    v3[1035] = v15;
    *(a1 + 58) = 0;
    return 1;
  }
}

uint64_t sub_277AFA564(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(*a1 + 643344);
  v5 = *a1 + 643344;
  v6 = *(a1 + 452);
  v7 = a1 + 24;
  *(v3 + 11152) = a1 + 24;
  if (setjmp((a1 + 236)))
  {
    *(a1 + 232) = 0;
    pthread_mutex_lock(v4);
    *(v5 + 8) = 1;
    pthread_mutex_unlock(v4);
    return 0;
  }

  else
  {
    v16 = v7;
    *(a1 + 232) = 1;
    v9 = *(v2 + v6 + 643272);
    v10 = v2 + 98708;
    v11 = v2 + 160834;
    for (i = v5; ; v5 = i)
    {
      pthread_mutex_lock(v4);
      if (*(v5 + 8))
      {
        break;
      }

      v12 = v2 + v9 + 643338;
      v13 = *v12;
      if (v10[v9] <= v13 || (LODWORD(v14) = v9, *(v11 + v9)))
      {
        if (v2[98876])
        {
          break;
        }

        v14 = v9 == 0;
        v12 = v9 ? v2 + 643338 : v2 + 643339;
        v13 = *v12;
        if (v10[v9 == 0] <= v13)
        {
          break;
        }

        v9 = v9 == 0;
        if (*(v11 + v14))
        {
          break;
        }
      }

      v15 = SLOBYTE(v2[14 * v14 + 98711 + 2 * v13]);
      *v12 = v13 + 1;
      pthread_mutex_unlock(v4);
      if (v15 == -1)
      {
        goto LABEL_19;
      }

      sub_277B1E00C(v2, v16, (v2 + 98692), v15, v3 + 159208, *(v3 + 159272), v2[98738], v2[98739]);
      pthread_mutex_lock(v4);
      if (v2[98876])
      {
        if (LOBYTE(v2[9 * v15 + 67513]) <= 1u)
        {
          *(v11 + v9) = 1;
        }
      }

      pthread_mutex_unlock(v4);
    }

    pthread_mutex_unlock(v4);
LABEL_19:
    *(a1 + 232) = 0;
    return 1;
  }
}

uint64_t sub_277AFA790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  STACK[0x3858] = *MEMORY[0x277D85DE8];
  v9 = *v8;
  v10 = v8[1];
  v38 = *v8;
  v11 = *v8 + 634710;
  v12 = (*v8)[79339];
  v13 = *v8 + 61537;
  v14 = byte_277C3F990[*(*v8 + 644504)];
  v15 = **v8;
  *(v10 + 11152) = v8 + 3;
  if (setjmp(v8 + 59))
  {
    *(v8 + 58) = 0;
    pthread_mutex_lock(v12);
    *v11 = 1;
    pthread_mutex_unlock(v12);
    v16 = *(v9 + 61538);
    v18 = v16 + 8;
    v17 = v16 < -8;
    v19 = v16 + 23;
    if (!v17)
    {
      v19 = v18;
    }

    if (*v13 < 1)
    {
      return 0;
    }

    else
    {
      v20 = 0;
      v21 = byte_277C3F990[*(v9 + 644504)];
      v22 = (v19 >> 4);
      v23 = *v38;
      v24 = 0;
      do
      {
        v25 = v24;
        (*(v11 + 58))(v23 + 85848, v20, (v22 - 1), v22);
        v24 = v25 + v21;
        v20 = (v20 + 1);
      }

      while (v25 + v21 < *v13);
      return 0;
    }
  }

  else
  {
    v27 = v15 + 81920;
    *(v8 + 58) = 1;
    v39 = 0;
    v40 = 0;
    while (1)
    {
      pthread_mutex_lock(v12);
      if (*v11)
      {
        break;
      }

      v28 = *(v27 + 3964);
      if (v28 >= *v13)
      {
        break;
      }

      v29 = *(v27 + 3964);
      ++*(v27 + 3968);
      *(v27 + 3964) = v28 + v14;
      pthread_mutex_unlock(v12);
      sub_277B0DACC(v38, v10, v10 + 416, v29, &STACK[0x3040], &STACK[0x2040], &STACK[0x1040], &v41, v30, v31, v32, v33, v34, v35, v36, v37, &v40, &v39, v8[1][19367]);
      pthread_mutex_lock(v12);
      --*(v27 + 3968);
      pthread_mutex_unlock(v12);
    }

    pthread_mutex_unlock(v12);
    *(v8 + 58) = 0;
    return 1;
  }
}

void sub_277AFA9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, void *a10, int a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v95 = v12;
  v102 = v13;
  v99 = v14;
  v16 = v15;
  v18 = v17;
  v104 = v19;
  v105 = v20;
  v21 = v11;
  v112 = *MEMORY[0x277D85DE8];
  v103 = v11 + 643264;
  v22 = (v11 + 634400);
  v23 = v11 + 270336;
  v96 = v11 + 245664;
  v24 = v107;
  bzero(v107, 0x800uLL);
  for (i = 24; i != 45080; i += 88)
  {
    *&v108[i] = v24;
    v24 += 4;
  }

  v101 = v22;
  v94 = v23;
  v26 = (*(v23 + 4) * *v23);
  LODWORD(v23) = *(v103 + 932);
  bzero(v111, 0x800uLL);
  v27 = (v26 - 1 + v23) / v23;
  if (v26 >= 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = *(v21 + 463544) + 8;
    v32 = 1;
    do
    {
      v33 = &v108[v28];
      v34 = (*(v31 - 4) - *(v31 - 8)) * (*(v31 + 4) - *v31);
      v35 = 88 * (v26 - 1) == v28 || v30 + 1 == v27;
      *(v33 + 21) = v32;
      v32 = v35;
      v33[56] = v16;
      *v33 = v18;
      *(v33 + 15) = 0;
      *(v33 + 16) = 0;
      *(v33 + 20) = v32;
      v36 = v111[v29];
      *(v33 + 9) = *(v31 + 8);
      *(v33 + 17) = v34;
      v111[v29] = v36 + v34;
      if (v35)
      {
        ++v29;
        v30 = 0;
      }

      else
      {
        ++v30;
      }

      v28 += 88;
      v31 += 23824;
    }

    while (88 * v26 != v28);
  }

  v100 = v21;
  bzero(v110, 0x1000uLL);
  v37 = *(v103 + 1024);
  v98 = v37;
  v38 = v104;
  if (v23 >= 1)
  {
    v39 = 0;
    v40 = 0;
    v97 = *(v96 + 484) * *(v96 + 488);
    v41 = v108;
    v38 = v104;
    v42 = *(v103 + 1024);
    do
    {
      if (v40 == v23 - 1)
      {
        v37 = 0;
      }

      else
      {
        v37 = v42 - v98 * v111[v40] / v97;
        v42 = v98 * v111[v40] / v97;
      }

      *(v41 + 4) = v38;
      *(v41 + 5) = v38;
      sub_2779FC42C(v100, v100 + 86480, v41, v39);
      v38 += v42;
      v110[v40++] = v42 - *(v41 + 16);
      v23 = *(v103 + 932);
      v39 += v27;
      v41 += 88 * v27;
      v42 = v37;
    }

    while (v40 < v23);
  }

  v43 = v98;
  if (v26 >= 1)
  {
    v44 = 0;
    v45 = v109;
    v46 = v104;
    do
    {
      v47 = *(v45 + 9);
      v48 = v37;
      if (v47)
      {
        v48 = v110[v44];
        v43 = v48;
      }

      v49 = *(v45 + 8);
      if (v49)
      {
        v37 = 0;
      }

      else
      {
        v37 = v48 - v43 * *(v45 + 5) / v111[v44];
        v48 = v43 * *(v45 + 5) / v111[v44];
      }

      *v45 = v48;
      if (v47)
      {
        v38 = *(v45 - 2);
        v46 = *(v45 - 1);
        v48 += *(v45 + 4);
        *v45 = v48;
      }

      else
      {
        *(v45 - 2) = v38;
        *(v45 - 1) = v46;
      }

      v45 += 88;
      if (v49)
      {
        ++v44;
      }

      v38 += v48;
      --v26;
    }

    while (v26);
  }

  if (a11 >= 1)
  {
    v50 = v100 + 86064;
    v51 = a11;
    v52 = 456 * a11 - 456;
    v53 = 56 * a11 - 24;
    v54 = 0uLL;
    do
    {
      v55 = *v101;
      v56 = v101[1];
      v57 = v56 + v52;
      if (v52)
      {
        v58 = *(v57 + 16);
        *(v57 + 8) = v58;
        if (v58 != v50)
        {
          memcpy(v58, (v100 + 86064), 0x256A0uLL);
          v54 = 0uLL;
          v58 = *(v57 + 8);
        }
      }

      else
      {
        *(v57 + 8) = v50;
        v58 = v100 + 86064;
      }

      --v51;
      v59 = v56 + v52;
      *v59 = v100;
      *(v59 + 448) = v51;
      *(v59 + 452) = v51;
      v60 = (v55 + v53);
      *(v58 + 154968) = 0;
      *(v58 + 154952) = v54;
      *(v60 - 1) = sub_277AFB204;
      *v60 = v57;
      v60[1] = v108;
      v52 -= 456;
      v53 -= 56;
    }

    while ((v51 + 1) > 1);
  }

  v61 = *v94 * v94[1];
  *v103 = 0;
  *(v103 + 4) = 0;
  v62 = v61;
  bzero((v100 + 635072), 16 * v62);
  if (v62)
  {
    v63 = 0;
    v64 = v101 + 85;
    v65 = (*(v100 + 463544) + 21288);
    do
    {
      *(v64 - 1) = *v65;
      *v64 = v63;
      v64 += 8;
      ++v63;
      v65 += 2978;
    }

    while (v62 != v63);
  }

  qsort((v100 + 635072), v62, 0x10uLL, sub_277AFB1CC);
  if (a11 >= 1)
  {
    v66 = a11 - 1;
    v67 = 56 * a11;
    v68 = v67 + *v101;
    v69 = (v68 - 56);
    *(v68 - 8) = 0;
    v70 = v67 - 64;
    do
    {
      sub_277985E48(v69, 2);
      v71 = *v101;
      *(v71 + v70) = 0;
      v70 -= 56;
      --v66;
      v69 = (v71 + 56 * v66);
    }

    while (v66);
    v72 = v71 + v70;
    v73 = *(v71 + v70 + 32);
    if (v73)
    {
      *(v72 + 56) |= v73(*(v72 + 40), *(v72 + 48)) == 0;
    }
  }

  v74 = *v101;
  v75 = *(*v101 + 48);
  memset(v110, 0, 404);
  if (v75)
  {
    memcpy(v110, (*(v74 + 32) + 24), 0x194uLL);
  }

  if (a11 >= 2)
  {
    v76 = a11 + 1;
    v77 = 56 * a11;
    do
    {
      v78 = *v101 + v77;
      sub_277985E48((v78 - 56), 1);
      if (*(v78 - 8))
      {
        memcpy(v110, (*(v78 - 24) + 24), 0x194uLL);
        v75 = 1;
      }

      --v76;
      v77 -= 56;
    }

    while (v76 > 2);
  }

  if (v75)
  {
    sub_2779F5C78(*v96, v110);
  }

  *(*(*(v74 + 32) + 8) + 11152) = *v96;
  v79 = (v94[1] * *v94);
  v110[0] = 0;
  v111[0] = 1;
  if (v79 >= 1)
  {
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = v109;
    v84 = v104;
    do
    {
      if (*(v83 + 9))
      {
        v84 = &v104[*v105];
        v85 = *(v83 + 3);
        v86 = *(v83 + 4);
        *a10 += v86;
        *a9 = v85;
      }

      else
      {
        v86 = v110[0];
      }

      v87 = *(v83 - 4);
      v88 = *(v83 + 8);
      v110[0] = v87 + v86 + 4 * (v88 == 0);
      if (v87 > *v95)
      {
        *v102 = v80;
        *v95 = v87;
      }

      v89 = **(v83 - 3);
      v90 = (v89 + v87);
      v106 = v89 + v87;
      if (v80)
      {
        memmove(&v104[v82], &v104[v81], v90);
      }

      if (v88)
      {
        sub_277A06124(v100, v99, *(v83 - 6), v110, v84, &v106, a10, v102, v111, *a9, v83[8]);
        LODWORD(v90) = v106;
      }

      v91 = *v83;
      v83 += 88;
      v81 += v91;
      v82 += v90;
      *v105 += v90;
      ++v80;
    }

    while (v79 != v80);
  }

  if (a11 >= 1)
  {
    v92 = a11 + 1;
    v93 = 456 * a11 - 448;
    do
    {
      sub_277A062CC(v100, *(v101[1] + v93));
      --v92;
      v93 -= 456;
    }

    while (v92 > 1);
  }
}

uint64_t sub_277AFB1CC(uint64_t a1, uint64_t a2)
{
  v2 = *a1 == *a2;
  if (*a1 > *a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 1;
  if (v2)
  {
    if (*(a1 + 8) > *(a2 + 8))
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_277AFB204(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = (*a1 + 643264);
  v6 = *(*a1 + 270336);
  v7 = *(*a1 + 270340);
  v8 = *(*a1 + 635064);
  *(*(a1 + 8) + 11152) = a1 + 24;
  if (setjmp((a1 + 236)))
  {
    *(a1 + 232) = 0;
    pthread_mutex_lock(v8);
    *(v5 + 4) = 1;
    pthread_mutex_unlock(v8);
    return 0;
  }

  else
  {
    v14 = a2;
    v10 = v7 * v6;
    *(a1 + 232) = 1;
    while (1)
    {
      pthread_mutex_lock(v8);
      if (v5[1])
      {
        break;
      }

      v11 = *v5;
      if (v11 == v10)
      {
        break;
      }

      *v5 = v11 + 1;
      v12 = *(v4 + 635072 + 16 * v11 + 8);
      pthread_mutex_unlock(v8);
      v13 = *(a1 + 8);
      *(v13 + 11064) = *(v4 + 463544) + 23824 * v12 + 32;
      sub_2779FF228(v4, v13, v14 + 88 * v12);
    }

    pthread_mutex_unlock(v8);
    *(a1 + 232) = 0;
    return 1;
  }
}

uint64_t sub_277AFB610(uint64_t a1, int a2)
{
  if (a2 < 2)
  {
    return 1;
  }

  if (*(a1 + 272209) == 1)
  {
    v3 = *(a1 + 270340);
    if (v3 < 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v6 = (a1 + 246148);
      v7 = a1 + 270656;
      do
      {
        if (*(a1 + 270336) <= 0)
        {
          ++v5;
        }

        else
        {
          v8 = *(*(a1 + 270312) + 36);
          v9 = *(v7 + 4 * v5++) << v8;
          v10 = *v6;
          if (*(v7 + 4 * v5) << v8 < *v6)
          {
            v10 = *(v7 + 4 * v5) << v8;
          }

          v11 = (v10 + ~v9 + (1 << v8)) >> v8;
          v12 = *(a1 + 270396);
          v13 = (a1 + 270400);
          v14 = *(a1 + 270336);
          do
          {
            v15 = v12 << v8;
            v16 = *v13++;
            v12 = v16;
            v17 = v16 << v8;
            if (v16 << v8 >= *(a1 + 246152))
            {
              v17 = *(a1 + 246152);
            }

            v18 = (((v17 + ~v15 + (1 << v8)) >> v8) + 1) >> 1;
            if (v18 >= v11)
            {
              v18 = v11;
            }

            v4 += v18;
            --v14;
          }

          while (v14);
        }
      }

      while (v5 != v3);
    }

    if (v4 >= a2)
    {
      return a2;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v19 = *(a1 + 270340) * *(a1 + 270336);
    if (v19 >= a2)
    {
      return a2;
    }

    else
    {
      return v19;
    }
  }
}

char *sub_277AFB734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v22 = v14;
  v23 = v13;
  v25 = v24;
  v26 = a11;
  v130 = *MEMORY[0x277D85DE8];
  v27 = ((v17 + (a11 - 1) * a9) >> 4) + 8;
  v28 = &result[-3 * v12 - 3];
  if (a10 == 4)
  {
    v29 = v121;
    v30.i64[0] = 0x8080808080808080;
    v30.i64[1] = 0x8080808080808080;
    do
    {
      v31 = 0;
      v32 = v15;
      do
      {
        v33 = *(v14 + 16 * (v32 & 0xF));
        v34 = &v28[v32 >> 4];
        v35.i64[0] = *v34;
        v36 = (v34 + v12);
        v37 = *v36;
        v38 = (v36 + v12);
        _Q4.i64[0] = *v38;
        _Q6 = vshrn_high_n_s16(vshrn_n_s16(v33, 1uLL), v33, 1uLL);
        v35.i64[1] = v37;
        _Q4.i64[1] = *(v38 + v12);
        _Q1 = veorq_s8(v35, v30);
        _Q2 = veorq_s8(_Q4, v30);
        __asm
        {
          SDOT            V3.4S, V1.16B, V6.16B
          SDOT            V1.4S, V2.16B, V6.16B
        }

        v49 = vpaddq_s32(_Q3, _Q1);
        *v49.i8 = vmovn_s32(v49);
        v122.i32[v31] = vqrshrun_n_s16(v49, 6uLL).u32[0];
        v32 += v16;
        ++v31;
      }

      while (v31 != 4);
      v50 = vtrn1_s16(v122, v123);
      v51 = vtrn2_s16(v122, v123);
      v52 = vzip1_s32(v50, v51);
      v53 = vzip2_s32(v50, v51);
      v54 = vtrn1_s8(v52, v53);
      v55 = vtrn2_s8(v52, v53);
      *v29 = v54.i32[0];
      v29[32] = v54.i32[1];
      v29[16] = v55.i32[0];
      v29[48] = v55.i32[1];
      v28 += 4 * v12;
      v29 += 64;
      _VF = __OFSUB__(v27, 4);
      v27 -= 4;
    }

    while (!((v27 < 0) ^ _VF | (v27 == 0)));
  }

  else
  {
    v56 = v121;
    v57.i64[0] = 0x8080808080808080;
    v57.i64[1] = 0x8080808080808080;
    do
    {
      v58 = a10;
      v59 = v56;
      v60 = v15;
      do
      {
        for (i = 0; i != 64; i += 8)
        {
          v62 = *(v14 + 16 * (v60 & 0xF));
          v63 = &v28[v60 >> 4];
          v64.i64[0] = *v63;
          v65 = (v63 + v12);
          v66 = *v65;
          v67.i64[0] = *(v65 + v12);
          v68 = (v65 + v12 + v12);
          v69 = *v68;
          v70 = (v68 + v12);
          result = v70 + v12;
          v71.i64[0] = *v70;
          v72 = *(v70 + v12);
          v73 = (v70 + v12 + v12);
          v20.i64[0] = *v73;
          v64.i64[1] = v66;
          v67.i64[1] = v69;
          v71.i64[1] = v72;
          _Q18 = vshrn_high_n_s16(vshrn_n_s16(v62, 1uLL), v62, 1uLL);
          v20.i64[1] = *(v73 + v12);
          _Q1 = veorq_s8(v64, v57);
          _Q2 = veorq_s8(v67, v57);
          _Q3 = veorq_s8(v71, v57);
          __asm
          {
            SDOT            V4.4S, V1.16B, V18.16B
            SDOT            V1.4S, V2.16B, V18.16B
          }

          _Q5 = veorq_s8(v20, v57);
          __asm
          {
            SDOT            V2.4S, V3.16B, V18.16B
            SDOT            V3.4S, V5.16B, V18.16B
          }

          *(&v122 + i) = vqrshrun_n_s16(vuzp1q_s16(vpaddq_s32(_Q4, _Q1), vpaddq_s32(_Q2, _Q3)), 6uLL);
          v60 += v16;
        }

        *v83.i8 = v122;
        *v84.i8 = v123;
        v85.i64[0] = v124;
        v86.i64[0] = v125;
        v83.i64[1] = v126;
        v84.i64[1] = v127;
        v87 = vtrn1q_s8(v83, v84);
        v88 = vtrn2q_s8(v83, v84);
        v85.i64[1] = v128;
        v86.i64[1] = v129;
        v89 = vtrn1q_s8(v85, v86);
        v90 = vtrn2q_s8(v85, v86);
        v91 = vtrn1q_s16(v87, v89);
        v92 = vtrn2q_s16(v87, v89);
        v93 = vtrn1q_s16(v88, v90);
        v94 = vtrn2q_s16(v88, v90);
        v95 = vuzp1q_s32(v91, v93);
        _Q4 = vuzp2q_s32(v91, v93);
        _Q5 = vuzp1q_s32(v92, v94);
        v96 = vuzp2q_s32(v92, v94);
        _Q2 = vextq_s8(v95, v95, 8uLL);
        _Q6 = vextq_s8(_Q5, _Q5, 8uLL);
        v19 = vextq_s8(_Q4, _Q4, 8uLL);
        *v59 = v95.i64[0];
        _Q3 = vextq_s8(v96, v96, 8uLL);
        v59[8] = _Q2.i64[0];
        v59[16] = _Q5.i64[0];
        v59[24] = _Q6.i64[0];
        v59[32] = _Q4.i64[0];
        v59[40] = v19.i64[0];
        v59[48] = v96.i64[0];
        v59[56] = _Q3.i64[0];
        ++v59;
        v58 -= 8;
      }

      while (v58);
      v28 += 8 * v12;
      v56 += 512;
      _VF = __OFSUB__(v27, 8);
      v27 -= 8;
    }

    while (!((v27 < 0) ^ _VF | (v27 == 0)));
  }

  if (a10 == 4)
  {
    v97.i64[0] = 0x8080808080808080;
    v97.i64[1] = 0x8080808080808080;
    do
    {
      v98 = &v121[64 * (v17 >> 4)];
      if ((v17 & 0xF) != 0)
      {
        _Q1 = *(v14 + 16 * (v17 & 0xF));
        _Q1.i16[0] = vshrn_n_s16(_Q1, 1uLL).u16[0];
        *_Q2.i8 = vzip1_s8(*v98, v98[8]);
        *_Q3.i8 = vzip1_s8(v98[16], v98[24]);
        *_Q4.i8 = vzip1_s8(v98[32], v98[40]);
        *_Q5.i8 = vzip1_s8(v98[48], v98[56]);
        _Q2 = veorq_s8(vzip1q_s16(_Q2, _Q3), v97);
        _Q3 = veorq_s8(vzip1q_s16(_Q4, _Q5), v97);
        __asm
        {
          SDOT            V4.4S, V2.16B, V1.4B[0]
          SDOT            V4.4S, V3.16B, V1.4B[1]
        }

        *_Q1.i8 = vmovn_s32(_Q4);
        v101 = vqrshrun_n_s16(_Q1, 6uLL).u32[0];
      }

      else
      {
        v101 = v98[24].u32[0];
      }

      *v25 = v101;
      v17 += a9;
      v25 = (v25 + v13);
      --v26;
    }

    while (v26);
  }

  else
  {
    v102.i64[0] = 0x8080808080808080;
    v102.i64[1] = 0x8080808080808080;
    v103 = v17;
    do
    {
      v104 = &v121[64 * (v103 >> 4)];
      if ((v103 & 0xF) != 0)
      {
        v105 = 0;
        v106 = vshrn_n_s16(*(v22 + 16 * (v103 & 0xF)), 1uLL);
        _Q0 = vdupq_lane_s32(v106, 0);
        _Q1 = vdupq_lane_s32(v106, 1);
        do
        {
          _Q2.i64[0] = *&v104[v105];
          _Q3.i64[0] = *&v104[v105 + 64];
          _Q4.i64[0] = *&v104[v105 + 128];
          _Q5.i64[0] = *&v104[v105 + 192];
          _Q6.i64[0] = *&v104[v105 + 256];
          v19.i64[0] = *&v104[v105 + 320];
          v20.i64[0] = *&v104[v105 + 384];
          v21.i64[0] = *&v104[v105 + 448];
          v109 = vzip1q_s8(_Q2, _Q3);
          v110 = vzip1q_s8(_Q4, _Q5);
          v111 = vzip1q_s8(_Q6, v19);
          v112 = vzip1q_s8(v20, v21);
          v113 = vzip1q_s16(v109, v110);
          v114 = vzip2q_s16(v109, v110);
          v115 = vzip1q_s16(v111, v112);
          v116 = vzip2q_s16(v111, v112);
          _Q5 = veorq_s8(v113, v102);
          _Q2 = veorq_s8(v114, v102);
          _Q3 = veorq_s8(v115, v102);
          _Q4 = veorq_s8(v116, v102);
          __asm
          {
            SDOT            V6.4S, V5.16B, V0.16B
            SDOT            V6.4S, V3.16B, V1.16B
            SDOT            V3.4S, V2.16B, V0.16B
            SDOT            V3.4S, V4.16B, V1.16B
          }

          _Q2 = vuzp1q_s16(_Q6, _Q3);
          *&v25[v105 / 4] = vqrshrun_n_s16(_Q2, 6uLL);
          v105 += 8;
        }

        while (a10 != v105);
      }

      else
      {
        result = memcpy(v25, v104 + 192, (a10 & 0xFFFFFFF8) - 8 + 8);
        v102.i64[0] = 0x8080808080808080;
        v102.i64[1] = 0x8080808080808080;
      }

      v103 += a9;
      v25 = (v25 + v23);
      --v26;
    }

    while (v26);
  }

  return result;
}

uint64_t sub_277AFBBBC(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  *(result + 168) = 0;
  *(result + 164) = 0;
  do
  {
    for (i = 0; i != 8; ++i)
    {
      if ((*(result + 132 + 4 * v2) >> i))
      {
        v1 |= i > 4;
        *(result + 168) = v1;
        *(result + 164) = v2;
      }
    }

    ++v2;
  }

  while (v2 != 8);
  return result;
}

void sub_277AFBC10(uint64_t a1, uint64_t a2, __int128 *a3, unsigned int a4, uint64_t a5, int64_t a6)
{
  v489 = *MEMORY[0x277D85DE8];
  v8 = (a1 + 270312);
  v9 = **(a2 + 8280);
  v10 = *(*(a1 + 270312) + 77);
  v443 = 0;
  v444 = 0;
  v442 = 0;
  v440 = 0;
  v441 = 0;
  *(a5 + 456) = 0;
  *(v9 + 16) = -256;
  v11 = *(v9 + 167);
  *(v9 + 8) = 0;
  *(v9 + 167) = v11 & 0xFF3F;
  v429 = a6;
  *&v454 = a6;
  v12 = **(a2 + 8280);
  *&v447[0] = 0x7FFFFFFFFFFFFFFFLL;
  *(&v472 + 5) = 0;
  *&v472 = 0;
  LODWORD(v445[0]) = 0;
  v399 = v9;
  v407 = v10;
  if (*(a1 + 271404) == 1 && *(a1 + 246111) && ((v13 = *v12, v13 > 0xF) || ((1 << v13) & 0xE007) == 0))
  {
    v409 = *(a2 + 16832);
    v414 = 1;
  }

  else
  {
    v414 = 0;
    v409 = 0;
  }

  v14 = a1 + 394960;
  v15 = *(a2 + 8304);
  v16 = *(a2 + 8296);
  if (v15)
  {
    v15 = *(v15 + 2);
  }

  v17 = a2 + 150988;
  v435 = (a1 + 245616);
  if (v16)
  {
    v16 = *(v16 + 2);
  }

  v18 = dword_277C393C4[v15];
  v19 = dword_277C393C4[v16];
  v12[88] = 0;
  v20 = *(a1 + 396096);
  if (v20)
  {
    sub_277AA1B30(a2, a4, *(*v8 + 28), &v472, 0, flt_277BB7D30[v20 - 1]);
  }

  v12[91] = 0;
  v12[142] = 0;
  v21 = *(v8 + 423);
  *(v17 + 44) = v21 == 1;
  if (*(v14 + 1220))
  {
    v22 = 1;
  }

  else
  {
    v22 = v8[1774];
  }

  *v17 = v22;
  *(v17 + 4) = *(v14 + 1224);
  *(v17 + 32) = *(v14 + 56);
  *(v17 + 40) = *(v14 + 68);
  if (v21 == 1)
  {
    *(v17 + 28) = 1;
    *(v17 + 20) = 0;
  }

  else
  {
    if (*(v14 + 1316))
    {
      *(v17 + 28) = *(v14 + 32);
      v23 = *(v14 + 44);
    }

    else
    {
      *(v17 + 28) = *(v14 + 28);
      v23 = *(v14 + 40);
    }

    *(v17 + 20) = v23;
  }

  v24 = *(v14 + 1304);
  v25 = v24 == 0;
  if (v24)
  {
    v26 = (v14 + 8);
  }

  else
  {
    v26 = v14;
  }

  v27 = 394972;
  if (v25)
  {
    v27 = 394964;
  }

  *(v17 + 12) = *v26;
  *(v17 + 16) = *(a1 + v27);
  v28 = *(v14 + 1308);
  v29 = *(v14 + 24);
  *(v17 + 24) = v29;
  if (v28)
  {
    v29 = *(v14 + 25);
    *(v17 + 24) = v29;
  }

  v427 = v8;
  v433 = a5;
  v437 = (a2 + 116272);
  if (v29 == 2)
  {
    v30 = 1;
  }

  else
  {
    v30 = 2;
  }

  if (v435[499])
  {
    v30 = 0;
  }

  *(v17 + 36) = v30;
  v31 = *(v14 + 1252);
  *(v17 + 8) = *(v14 + 1216);
  if (v31)
  {
    *(v17 + 8) = dword_277C31DF8[2 * v31 - 2];
  }

  if (*(v17 + 48) != 1)
  {
    v32 = *(v17 + 2116);
    if (v32)
    {
      *(v32 + 16960) = 0;
    }
  }

  v33 = (a2 + 126552);
  v400 = (a2 + 47568);
  v430 = (a2 + 16904);
  v413 = (a2 + 8288);
  v431 = (a2 + 676 * v18 + 52 * v19 + 17952);
  *(v17 + 48) = 1;
  v464 = *(v12 + 7);
  v465 = *(v12 + 8);
  v466 = *(v12 + 9);
  v467 = *(v12 + 10);
  v460 = *(v12 + 3);
  v461 = *(v12 + 4);
  v462 = *(v12 + 5);
  v463 = *(v12 + 6);
  v457 = *v12;
  v458 = *(v12 + 1);
  v459 = *(v12 + 2);
  v34 = *v437;
  if (*v437)
  {
    v35 = dword_277C31748[*(v14 + 1320)];
    v36 = byte_277C3CAE8[a4] * byte_277C3CAFE[a4];
    do
    {
      *(v34 + 224) = 0;
      *(v34 + 192) = 0u;
      *(v34 + 208) = 0u;
      *(v34 + 160) = 0u;
      *(v34 + 176) = 0u;
      *(v34 + 128) = 0u;
      *(v34 + 144) = 0u;
      *(v34 + 96) = 0u;
      *(v34 + 112) = 0u;
      *(v34 + 64) = 0u;
      *(v34 + 80) = 0u;
      *(v34 + 32) = 0u;
      *(v34 + 48) = 0u;
      *v34 = 0u;
      *(v34 + 16) = 0u;
      bzero((v34 + 232), v36);
      *(v34 + 16616) = 0;
      v34 += 16624;
      --v35;
    }

    while (v35);
  }

  *(a2 + 116280) = 0;
  memset_pattern16(__b, &unk_277BB7D90, 0x20uLL);
  for (i = 0; i != 936; i += 72)
  {
    memset_pattern16(&v471[i], &unk_277BB7D90, 0x48uLL);
  }

  v38 = 0;
  v428 = a4;
  v405 = a2 + 11108;
  v422 = a4 & 0xFC;
  v424 = v429;
  v39 = v427;
  do
  {
    sub_277A9FE58(v38, v12, *(v14 + 1184));
    v488 = 0;
    memset(__src, 0, sizeof(__src));
    v47 = v12[88];
    v48 = v12[2];
    v49 = (v48 - 9);
    if (v49 >= 0xFA)
    {
      if ((v427[1765] & 1) == 0)
      {
        goto LABEL_150;
      }
    }

    else if (v49 < 0xF8)
    {
      v50 = 1;
      goto LABEL_50;
    }

    if (v427[1764] != 1)
    {
      goto LABEL_150;
    }

    v50 = 0;
LABEL_50:
    if (v427[1761] != 1)
    {
      if ((v48 - 9) < 3u)
      {
        goto LABEL_150;
      }

      if (!*(v14 + 1144))
      {
        goto LABEL_62;
      }

LABEL_60:
      if (v48 == 9 && !*(v14 + 1152))
      {
        goto LABEL_150;
      }

      goto LABEL_62;
    }

    v51 = *(v14 + 1144);
    if ((v48 & 0xFE) == 0xA && v51 != 0)
    {
      goto LABEL_150;
    }

    if (v51)
    {
      goto LABEL_60;
    }

LABEL_62:
    if (v48 != 12 || (v427[1762]) && (!*(a2 + 128680) || v48 == *(*(a2 + 128688) + 2)) && ((v50 & 1) != 0 || !*(&v472 + v48) && (a4 >= 3 && (v427[1766] & 1) != 0 || !v12[88])) && ((*(a1 + 396052 + 4 * byte_277C39398[a4]) >> v48))
    {
      if (!*(v14 + 1184))
      {
        v50 = 1;
      }

      if ((v50 & 1) != 0 || (v47 & 1) == 0 || v424 == 0x7FFFFFFFFFFFFFFFLL || (v58 = v424 + (v424 >> 3), v59 = &v471[72 * v12[2] + 8 * v47], *(v59 + 3) <= v58) || *(v59 + 5) <= v58)
      {
        if (v422 == 12)
        {
          v53 = 3;
        }

        else
        {
          v53 = byte_277C39398[a4];
        }

        v54 = sub_277AA2650(v435, a2, 0, a4, v53, 1, 0, v40, v41, v42, v43, v44, v45, v46);
        v55 = *(v14 + 1176);
        if (*(v14 + 1180))
        {
          v56 = *(**(a2 + 8280) + 2);
          v57 = *(a2 + 8289) == 1 && *(*(a2 + 8296) + 2) != v56;
          v61 = a1;
          v62 = *v413 == 1 && *(*(a2 + 8304) + 2) != v56;
          v60 = v55 - 1;
          if (*v430 > 127)
          {
            if (v57 && v62)
            {
              goto LABEL_96;
            }
          }

          else
          {
            if (!v57 && !v62)
            {
              goto LABEL_100;
            }

LABEL_96:
            if (v55 <= 2)
            {
              v63 = 2;
            }

            else
            {
              v63 = *(v14 + 1176);
            }

            v60 = v63 - 2;
          }
        }

        else
        {
          v60 = v55 - 1;
          v61 = a1;
        }

LABEL_100:
        if (sub_277AA31FC(v54, v447, __b, v55, v60))
        {
          goto LABEL_150;
        }

        sub_277A45044(v61, a2, __src, a4, v424, v64, v65, v66);
        v67 = __src[0];
        if (LODWORD(__src[0]) == 0x7FFFFFFF)
        {
          goto LABEL_150;
        }

        if (*(v405 + 4 * (*(v12 + 167) & 7)))
        {
          v68 = __src[0];
        }

        else
        {
          v68 = __src[0];
          if (*v12)
          {
            v69 = 0;
            if (a4 && *(v17 + 36) == 2)
            {
              v70 = v12[145];
              v71 = byte_277C3BD80[a4];
              for (j = 0; v71 != v70; v71 = byte_277C3295E[v71])
              {
                ++j;
              }

              v73 = *v413;
              v74 = **(a2 + 8544);
              if (v73 == 1)
              {
                v75 = *(a2 + 8304);
                if ((*(v75 + 167) & 0x80) != 0 || v75[16] >= 1)
                {
                  v74 = byte_277C3CAFE[*v75];
                }
              }

              v76 = *(a2 + 8289);
              v77 = **(a2 + 8552);
              if (*(a2 + 8289))
              {
                v78 = *(a2 + 8296);
                if ((*(v78 + 167) & 0x80) != 0 || v78[16] >= 1)
                {
                  v77 = byte_277C3CAE8[*v78];
                }
              }

              v79 = byte_277C3BD80[***(a2 + 8280)];
              if (dword_277C3BF30[v79] > v77)
              {
                v76 = 0;
              }

              if (dword_277C3BEE4[v79] > v74)
              {
                v73 = 0;
              }

              v69 = *(a2 + 35992 + 60 * (byte_277C32948[a4] - 1) + 20 * (v76 + v73) + 4 * j);
            }

            v68 = LODWORD(__src[0]) - v69;
          }
        }

        v395 = v68;
        v80 = __src[1];
        v390 = v488;
        v81 = sub_277AA32C4(a1, a2, v12, a4, v431[v12[2]]) + v67;
        v392 = v80;
        v82 = ((*(a2 + 16920) * v81 + 256) >> 9) + (v80 << 7);
        if (v427[1896] == 2 && v82 != 0x7FFFFFFFFFFFFFFFLL)
        {
          sub_277AA37BC(a1, a2, a4);
          v82 = (v83 * v82);
        }

        *&v471[72 * v12[2] + 32 + 8 * v47] = v82;
        if (v82 != 0x7FFFFFFFFFFFFFFFLL && *(v14 + 1320) != 0)
        {
          v85 = *v437;
          if ((*v435 & 0xFD) == 0 || !v12[142])
          {
            v86 = dword_277C31748[*(v14 + 1320)];
            v87 = a2 + 116272;
            v88 = *(a2 + 116280);
            if (!v88)
            {
              goto LABEL_144;
            }

            if (v88 < 1)
            {
              LODWORD(v88) = 0;
            }

            else
            {
              v89 = 0;
              v90 = (v85 + 216);
              while (*v90 <= v82)
              {
                v90 += 2078;
                if (v88 == ++v89)
                {
                  goto LABEL_140;
                }
              }

              LODWORD(v88) = v89;
            }

LABEL_140:
            if (v88 != v86)
            {
              if (v88 < v86 - 1)
              {
                v387 = dword_277C31748[*(v14 + 1320)];
                v384 = *v437;
                memmove((v85 + 16624 * v88 + 16624), (v85 + 16624 * v88), 16624 * (v86 + ~v88));
                v85 = v384;
                v86 = v387;
              }

              v87 = a2 + 116272;
LABEL_144:
              v91 = v85 + 16624 * v88;
              v92 = *v12;
              v93 = *(v12 + 2);
              *(v91 + 16) = *(v12 + 1);
              *(v91 + 32) = v93;
              *v91 = v92;
              v94 = *(v12 + 3);
              v95 = *(v12 + 4);
              v96 = *(v12 + 6);
              *(v91 + 80) = *(v12 + 5);
              *(v91 + 96) = v96;
              *(v91 + 48) = v94;
              *(v91 + 64) = v95;
              v97 = *(v12 + 7);
              v40 = *(v12 + 8);
              v41 = *(v12 + 9);
              v42 = *(v12 + 10);
              *(v91 + 144) = v41;
              *(v91 + 160) = v42;
              *(v91 + 112) = v97;
              *(v91 + 128) = v40;
              *(v91 + 16616) = 0;
              *(v91 + 216) = v82;
              v98 = *(v87 + 8);
              if (v98 + 1 < v86)
              {
                v99 = v98 + 1;
              }

              else
              {
                v99 = v86;
              }

              *(v87 + 8) = v99;
            }
          }
        }

        if (v82 < v424)
        {
          v464 = *(v12 + 7);
          v465 = *(v12 + 8);
          v466 = *(v12 + 9);
          v467 = *(v12 + 10);
          v460 = *(v12 + 3);
          v461 = *(v12 + 4);
          v462 = *(v12 + 5);
          v463 = *(v12 + 6);
          v457 = *v12;
          v458 = *(v12 + 1);
          v459 = *(v12 + 2);
          LODWORD(v445[0]) = 1;
          HIDWORD(v444) = v81;
          HIDWORD(v443) = v395;
          v441 = v392;
          HIBYTE(v442) = v390;
          memcpy(*(v433 + 280), (a2 + 151049), *(v433 + 416));
          memcpy(*(v433 + 408), *(a2 + 8328), *(v433 + 416));
          v424 = v82;
        }
      }
    }

LABEL_150:
    v38 = (v38 + 1);
  }

  while (v38 != 61);
  *&v454 = v424;
  v100 = a2;
  v101 = a1;
  if (v414)
  {
    sub_277A32CB4(a1, a2, a4, *v431, &v457, v409, &v454, &v444 + 4, &v443 + 1, &v441, &v442 + 1, v445, v433, *(v433 + 280), *(v433 + 408));
  }

  v102 = v435;
  if (!LODWORD(v445[0]))
  {
    goto LABEL_268;
  }

  if (a4 == 255)
  {
    goto LABEL_209;
  }

  if (!*(*v427 + 60))
  {
    goto LABEL_209;
  }

  if (((0x1F07FFuLL >> a4) & 1) == 0)
  {
    goto LABEL_209;
  }

  if (((0x2F0BFFuLL >> a4) & 1) == 0)
  {
    goto LABEL_209;
  }

  if (*(v14 + 1152) == 2)
  {
    goto LABEL_209;
  }

  v410 = *v431;
  v415 = BYTE2(v457);
  v103 = **(a2 + 8280);
  v103[5].i8[11] = 1;
  v103->i8[2] = 0;
  v425 = v103;
  v103[8].i8[14] = 0;
  if (*(a2 + 128680))
  {
    if (!*(*(a2 + 128688) + 91))
    {
      goto LABEL_209;
    }
  }

  v104 = 0;
  v105 = *&v447[0];
  v388 = 0;
  v391 = 1;
  __n = v454;
  v385 = 1;
  while (2)
  {
    v101 = a1;
LABEL_163:
    *&v477 = 0;
    v475 = 0u;
    v476 = 0u;
    v425[5].i8[10] = v104;
    if (*(v14 + 1152) != 1 || ((byte_277BFDBEC[v415] >> v104)) && (!*(a2 + 128680) || v104 == *(*(a2 + 128688) + 90)))
    {
      if (v422 == 12)
      {
        v106 = 3;
      }

      else
      {
        v106 = byte_277C39398[a4];
      }

      v107 = sub_277AA2650(v435, v100, 0, a4, v106, 1, 0, v40, v41, v42, v43, v44, v45, v46);
      if (v105 != 0x7FFFFFFFFFFFFFFFLL && v107 > v105 + (v105 >> 2))
      {
        goto LABEL_175;
      }

      if (v107 < v105)
      {
        v105 = v107;
      }

      sub_277A45044(v101, v100, &v475, a4, __n, v108, v109, v110);
      if (v475 == 0x7FFFFFFF)
      {
LABEL_175:
        v39 = v427;
        break;
      }

      v402 = v475;
      v396 = sub_277AA32C4(v101, v100, v425, a4, v410) + v402;
      v393 = *(&v475 + 1);
      v111 = ((*(a2 + 16920) * v396 + 256) >> 9) + (*(&v475 + 1) << 7);
      v39 = v427;
      if (v427[1896] == 2 && v111 != 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_277AA37BC(a1, v100, a4);
        v111 = (v112 * v111);
      }

      if (v111 != 0x7FFFFFFFFFFFFFFFLL && *(v14 + 1320) != 0)
      {
        v114 = *v437;
        if ((*v435 & 0xFD) == 0 || !v425[8].i8[14])
        {
          v115 = dword_277C31748[*(v14 + 1320)];
          v116 = a2 + 116272;
          v117 = *(a2 + 116280);
          if (!v117)
          {
            goto LABEL_197;
          }

          if (v117 < 1)
          {
            LODWORD(v117) = 0;
          }

          else
          {
            v118 = 0;
            v119 = (v114 + 216);
            while (*v119 <= v111)
            {
              v119 += 2078;
              if (v117 == ++v118)
              {
                goto LABEL_193;
              }
            }

            LODWORD(v117) = v118;
          }

LABEL_193:
          if (v117 != v115)
          {
            if (v117 < v115 - 1)
            {
              v382 = dword_277C31748[*(v14 + 1320)];
              v380 = *v437;
              memmove((v114 + 16624 * v117 + 16624), (v114 + 16624 * v117), 16624 * (v115 + ~v117));
              v114 = v380;
              v115 = v382;
            }

            v116 = a2 + 116272;
LABEL_197:
            v120 = (v114 + 16624 * v117);
            v121 = *v425;
            v122 = v425[2];
            v120[1] = v425[1];
            v120[2] = v122;
            *v120 = v121;
            v123 = v425[3];
            v124 = v425[4];
            v125 = v425[6];
            v120[5] = v425[5];
            v120[6] = v125;
            v120[3] = v123;
            v120[4] = v124;
            v126 = v425[7];
            v40 = v425[8];
            v41 = v425[9];
            v42 = v425[10];
            v120[9] = v41;
            v120[10] = v42;
            v120[7] = v126;
            v120[8] = v40;
            v120[1038].i8[8] = 0;
            v120[13].i64[1] = v111;
            v127 = *(v116 + 8);
            if (v127 + 1 < v115)
            {
              v128 = v127 + 1;
            }

            else
            {
              v128 = v115;
            }

            *(v116 + 8) = v128;
          }
        }
      }

      if (v111 < __n)
      {
        v385 = v425[9].i8[1];
        v388 = v425[5].i16[5];
        v100 = a2;
        __nc = *(v433 + 416);
        __memcpy_chk();
        memcpy(*(v433 + 280), (a2 + 151049), __nc);
        v391 = 0;
        HIDWORD(v444) = v396;
        HIDWORD(v443) = v402;
        v441 = v393;
        HIBYTE(v442) = v477;
        ++v104;
        __n = v111;
        if (v104 != 5)
        {
          continue;
        }

        *&v454 = v111;
        *&v447[0] = v105;
        v101 = a1;
        v102 = v435;
        goto LABEL_208;
      }

      v100 = a2;
      v101 = a1;
    }

    break;
  }

  if (++v104 != 5)
  {
    goto LABEL_163;
  }

  *&v454 = __n;
  *&v447[0] = v105;
  v102 = v435;
  if (v391)
  {
    goto LABEL_209;
  }

LABEL_208:
  v425->i8[2] = 0;
  v425[9].i8[1] = v385;
  v425[5].i16[5] = v388;
  memcpy(*(v433 + 408), __src, *(v433 + 416));
  v464 = *(v12 + 7);
  v465 = *(v12 + 8);
  v466 = *(v12 + 9);
  v467 = *(v12 + 10);
  v460 = *(v12 + 3);
  v461 = *(v12 + 4);
  v462 = *(v12 + 5);
  v463 = *(v12 + 6);
  v457 = *v12;
  v458 = *(v12 + 1);
  v459 = *(v12 + 2);
LABEL_209:
  if (!LODWORD(v445[0]))
  {
LABEL_268:
    v155 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_326;
  }

  if (!*(v14 + 1320))
  {
    v156 = v12[2];
    v157 = *(v14 + 1336);
    if (v157 == 3)
    {
      if ((v156 > 0x18 || ((1 << v156) & 0x1390000) == 0) && v156 != 22 && v12[144] && *v430 < 128)
      {
        goto LABEL_325;
      }
    }

    else if (v157 != 2)
    {
      if (v157 == 1)
      {
        if (*(v17 + 2164) < (64 - 48 * *v430 / 256))
        {
          goto LABEL_325;
        }
      }

      else if (v157 >= 4 && (*(v14 + 1300) < 5 || *v430 >= 71) && v12[144])
      {
        goto LABEL_325;
      }
    }

    v158 = *(v12 + 167);
    if ((v158 & 0x80) != 0 || v12[16] >= 1)
    {
      if (v156 - 25 >= 0xFFFFFFF4 && *(v14 + 1224) != 0x7FFFFFFF && (v39[1773] & 1) == 0)
      {
LABEL_300:
        v25 = *(v39 + 423) == 1;
        *(v17 + 44) = v25;
        *v17 = -NAN;
        *(v17 + 32) = *(v14 + 60);
        *(v17 + 40) = *(v14 + 72);
        if (v25)
        {
          *(v17 + 28) = 1;
          *(v17 + 20) = 0;
        }

        else
        {
          if (*(v14 + 1316))
          {
            *(v17 + 28) = *(v14 + 36);
            v159 = *(v14 + 48);
          }

          else
          {
            *(v17 + 28) = *(v14 + 28);
            v159 = *(v14 + 40);
          }

          *(v17 + 20) = v159;
        }

        v160 = *(v14 + 1304);
        v161 = v160 == 0;
        if (v160)
        {
          v162 = (v14 + 16);
        }

        else
        {
          v162 = v14;
        }

        v163 = 394980;
        if (v161)
        {
          v163 = 394964;
        }

        *(v17 + 12) = *v162;
        *(v17 + 16) = *(v101 + v163);
        v164 = *(v14 + 1308);
        v165 = *(v14 + 24);
        *(v17 + 24) = v165;
        if (v164)
        {
          v165 = *(v14 + 26);
          *(v17 + 24) = v165;
        }

        if (v165 == 2)
        {
          v166 = 1;
        }

        else
        {
          v166 = 2;
        }

        if (v102[499])
        {
          v166 = 0;
        }

        *(v17 + 36) = v166;
        v167 = *(v14 + 1252);
        *(v17 + 8) = *(v14 + 1216);
        if (v167)
        {
          *(v17 + 8) = dword_277C31DF8[2 * v167 - 1];
        }

        if (*(v17 + 48) != 2)
        {
          v168 = *(v17 + 2116);
          if (v168)
          {
            *(v168 + 16960) = 0;
          }
        }

        *(v17 + 48) = 2;
        *(v12 + 7) = v464;
        *(v12 + 8) = v465;
        *(v12 + 9) = v466;
        *(v12 + 10) = v467;
        *(v12 + 3) = v460;
        *(v12 + 4) = v461;
        *(v12 + 5) = v462;
        *(v12 + 6) = v463;
        *v12 = v457;
        *(v12 + 1) = v458;
        *(v12 + 2) = v459;
        sub_277AA3A7C(v101, v100, a4, v431, &v454, &v444 + 1, &v443 + 1, &v441, &v442 + 1, &v457, v433);
        goto LABEL_325;
      }
    }

    else if (*(v14 + 1220) && (v39[1774] & 1) == 0 && v39[1772] != 1)
    {
      goto LABEL_300;
    }

    if ((!*(v14 + 1304) || (*(v101 + (v158 & 7) + 272256) | 2) == 2) && !*(v14 + 1308))
    {
      goto LABEL_325;
    }

    goto LABEL_300;
  }

  __na = *(v100 + 592);
  v129 = byte_277C3CAE8[a4] >> *(v100 + 440);
  v130 = byte_277C3CAFE[a4] >> *(v100 + 436);
  v131 = (a2 + 116272);
  if (*(a2 + 116280) < 1)
  {
    v154 = 0;
    goto LABEL_275;
  }

  v132 = 0;
  v133 = 0;
  v134 = 0;
  v403 = v129;
  v397 = v130;
  v416 = (v130 * v129);
  v411 = v17 + 2116;
  while (2)
  {
    v135 = (*v131 + v132);
    v136 = *v135;
    v137 = v135[2];
    *(v12 + 1) = v135[1];
    *(v12 + 2) = v137;
    *v12 = v136;
    v138 = v135[3];
    v139 = v135[4];
    v140 = v135[6];
    *(v12 + 5) = v135[5];
    *(v12 + 6) = v140;
    *(v12 + 3) = v138;
    *(v12 + 4) = v139;
    v141 = v135[7];
    v142 = v135[8];
    v143 = v135[10];
    *(v12 + 9) = v135[9];
    *(v12 + 10) = v143;
    *(v12 + 7) = v141;
    *(v12 + 8) = v142;
    v144 = v12[2];
    v145 = *(v14 + 1336);
    switch(v145)
    {
      case 3:
        if (v144 <= 0x18 && ((1 << v144) & 0x1390000) != 0 || v144 == 22 || !v12[144] || *v430 >= 128)
        {
          goto LABEL_228;
        }

        break;
      case 2:
        goto LABEL_228;
      case 1:
        if (*(v17 + 2164) < (64 - 48 * *v430 / 256))
        {
          break;
        }

LABEL_228:
        v146 = *(v12 + 167);
        if ((v146 & 0x80) == 0 && v12[16] < 1)
        {
          if (!*(v14 + 1220) || (v39[1774] & 1) != 0 || v39[1772] == 1)
          {
            goto LABEL_237;
          }

          goto LABEL_240;
        }

        if (v144 - 25 >= 0xFFFFFFF4 && *(v14 + 1224) != 0x7FFFFFFF && (v39[1773] & 1) == 0)
        {
          goto LABEL_240;
        }

LABEL_237:
        if (*(v14 + 1304) && (*(v101 + 272256 + (v146 & 7)) | 2) != 2 || *(v14 + 1308))
        {
LABEL_240:
          if (v12[142])
          {
            memcpy(__na, (*v437 + v132 + 232), v416);
          }

          v25 = *(v39 + 423) == 1;
          *(v17 + 44) = v25;
          *v17 = -NAN;
          *(v17 + 32) = *(v14 + 60);
          *(v17 + 40) = *(v14 + 72);
          if (v25)
          {
            v147 = 0;
            *(v17 + 28) = 1;
          }

          else if (*(v14 + 1316))
          {
            *(v17 + 28) = *(v14 + 36);
            v147 = *(v14 + 48);
          }

          else
          {
            *(v17 + 28) = *(v14 + 28);
            v147 = *(v14 + 40);
          }

          *(v17 + 20) = v147;
          v148 = (v14 + 16);
          if (!*(v14 + 1304))
          {
            v148 = v14;
          }

          v149 = 394980;
          if (!*(v14 + 1304))
          {
            v149 = 394964;
          }

          *(v17 + 12) = *v148;
          *(v17 + 16) = *(v101 + v149);
          v150 = *(v14 + 1308);
          v151 = *(v14 + 24);
          *(v17 + 24) = v151;
          if (v150)
          {
            v151 = *(v14 + 26);
            *(v17 + 24) = v151;
          }

          if (v151 == 2)
          {
            v152 = 1;
          }

          else
          {
            v152 = 2;
          }

          if (v435[499])
          {
            v152 = 0;
          }

          *(v17 + 36) = v152;
          v153 = *(v14 + 1252);
          *(v17 + 8) = *(v14 + 1216);
          if (v153)
          {
            *(v17 + 8) = dword_277C31DF8[2 * v153 - 1];
          }

          if (*(v17 + 48) != 2 && *v411)
          {
            *(*v411 + 16960) = 0;
          }

          *(v17 + 48) = 2;
          if (sub_277AA3A7C(v101, a2, a4, v431, &v454, &v444 + 1, &v443 + 1, &v441, &v442 + 1, &v457, v433))
          {
            v134 = v133;
          }
        }

        break;
      default:
        if (v145 < 4 || *(v14 + 1300) >= 5 && *v430 < 71 || !v12[144])
        {
          goto LABEL_228;
        }

        break;
    }

    ++v133;
    v131 = (a2 + 116272);
    v132 += 16624;
    if (v133 < *(a2 + 116280))
    {
      continue;
    }

    break;
  }

  v154 = v134;
  v102 = v435;
  v100 = a2;
  v129 = v403;
  v130 = v397;
LABEL_275:
  if (BYTE14(v465))
  {
    memcpy(__na, (*v437 + 16624 * v154 + 232), (v130 * v129));
  }

LABEL_325:
  *(v12 + 7) = v464;
  *(v12 + 8) = v465;
  *(v12 + 9) = v466;
  *(v12 + 10) = v467;
  *(v12 + 3) = v460;
  *(v12 + 4) = v461;
  *(v12 + 5) = v462;
  *(v12 + 6) = v463;
  *v12 = v457;
  *(v12 + 1) = v458;
  *(v12 + 2) = v459;
  memcpy(*(v100 + 8328), *(v433 + 408), *(v433 + 416));
  v155 = v454;
LABEL_326:
  v25 = *(v39 + 423) == 1;
  *(v17 + 44) = v25;
  *v17 = -NAN;
  *(v17 + 32) = *(v14 + 52);
  *(v17 + 40) = *(v14 + 64);
  if (v25)
  {
    v169 = 0;
    *(v17 + 28) = 1;
  }

  else
  {
    *(v17 + 28) = *(v14 + 28);
    v169 = *(v14 + 40);
  }

  *(v17 + 20) = v169;
  *(v17 + 12) = *v14;
  *(v17 + 16) = *(v14 + 4);
  v170 = *(v14 + 24);
  *(v17 + 24) = v170;
  if (v170 == 2)
  {
    v171 = 1;
  }

  else
  {
    v171 = 2;
  }

  if (v102[499])
  {
    v171 = 0;
  }

  *(v17 + 36) = v171;
  *(v17 + 8) = *(v14 + 1216);
  if (*(v17 + 48))
  {
    v172 = *(v17 + 2116);
    if (v172)
    {
      *(v172 + 16960) = 0;
    }
  }

  *(v17 + 48) = 0;
  if (v155 >= v429)
  {
    v173 = a3;
    *a3 = 0x7FFFFFFF;
  }

  else
  {
    v173 = a3;
    if (v407)
    {
      v174 = 0;
      goto LABEL_363;
    }

    if (*(v100 + 428) == 1 && !*(*v39 + 77))
    {
      v175 = **(v100 + 8280);
      v176 = *v175;
      if (*(v405 + 4 * (*(v175 + 167) & 7)))
      {
        if (!byte_277C3BCDE[4 * v176 + 2 * *(v100 + 3044) + *(v100 + 3048)])
        {
          goto LABEL_348;
        }
      }

      else if ((0x1F07FFuLL >> v176) & 1) != 0 && ((0x2F0BFFuLL >> v176))
      {
LABEL_348:
        memcpy((v100 + 151049), *(v433 + 280), *(v433 + 416));
        memcpy(*(v100 + 8328), *(v433 + 408), *(v433 + 416));
      }
    }

    v177 = **(v100 + 8280);
    if (*(v405 + 4 * (*(v177 + 167) & 7)))
    {
      v178 = 0;
    }

    else
    {
      v178 = byte_277C3BD80[byte_277C3BCDE[4 * *v177 + 2 * *(v100 + 3044) + *(v100 + 3048)]];
      if (v178 > 0x10)
      {
        if (v178 == 17)
        {
          v178 = 9;
        }

        else if (v178 == 18)
        {
          v178 = 10;
        }
      }

      else if ((v178 - 11) < 2 || v178 == 4)
      {
        v178 = 3;
      }
    }

    sub_277A9FEC8(v101, v100, &v444, &v443, &v440, &v442, a4, v178);
    v174 = v444;
LABEL_363:
    v180 = *(v100 + 8304);
    v181 = *(v100 + 8296);
    if (v180)
    {
      v180 = *(v180 + 144);
    }

    v182 = SHIDWORD(v444) + v174;
    if (v181)
    {
      v183 = *(v181 + 144);
    }

    else
    {
      v183 = 0;
    }

    v184 = v182 + *(v100 + 35968 + 8 * (v183 + v180));
    *a3 = v184;
    v185 = v440 + v441;
    *(a3 + 1) = v440 + v441;
    v186 = ((*(a2 + 16920) * v184 + 256) >> 9) + (v185 << 7);
    *(a3 + 2) = v186;
    *(a3 + 32) = 0;
    v187 = v429;
    if (v186 >= v429)
    {
      v186 = v429;
    }

    if (v184 != 0x7FFFFFFF)
    {
      v187 = v186;
    }

    v429 = v187;
  }

  if ((*v102 & 0xFD) != 0 || v102[495] != 1 || !v102[496] || v39[898] != 1 || !*(v14 + 832) || *(v14 + 1424))
  {
    goto LABEL_542;
  }

  if (*(*v39 + 77))
  {
    v188 = 1;
  }

  else
  {
    v188 = 3;
  }

  v438 = v188;
  LODWORD(v189) = *(v100 + 416);
  v412 = byte_277C3CAFE[a4];
  v190 = *(v100 + 420);
  v432 = byte_277C3CAE8[a4];
  v191 = v102;
  v192 = *(*v39 + 36);
  v398 = **(v100 + 8280);
  sub_277978170(v191, (v100 + 416), v398, 0, v100 + 16632, v100 + 8728, v100 + 10584, (v100 + 16664), v100 + 16696);
  *(v100 + 16400) = *(v100 + 10584);
  v193 = *(v100 + 8744);
  *(v100 + 15472) = *(v100 + 8728);
  *(v100 + 15488) = v193;
  v453 = 0;
  sub_277B1C5E0(0, v100 + 15472, 0, &v453 + 4, &v453);
  v194 = HIDWORD(v453);
  if (HIDWORD(v453) == -2147450880)
  {
    v194 = 0;
  }

  HIDWORD(v453) = v194;
  if (v453 == -2147450880)
  {
    v195 = 0;
  }

  else
  {
    v195 = v453;
  }

  LODWORD(v453) = v195;
  if (v194)
  {
    v196 = v194;
  }

  else
  {
    v196 = v195;
  }

  v452 = v196;
  if (!v196)
  {
    v197 = *(*v39 + 32);
    v198 = v189 - v197;
    v199 = (-32 * v197) & 0xFFE0;
    v200 = -134217728 - (v197 << 21);
    if (v198 >= *(v100 + 8256))
    {
      v196 = v199;
    }

    else
    {
      v196 = v200;
    }

    v452 = v196;
  }

  v423 = v189 >> v192;
  v426 = v190;
  __nb = v190 >> v192;
  *(v100 + 15472) = v196;
  sub_277A8B4EC((v100 + 416), __b, *(v100 + 8376), 0, 0, v438);
  v201 = 0;
  v202 = 480;
  do
  {
    v203 = (v100 + v202);
    v204 = *&__b[v201 + 2];
    *v203 = *&__b[v201];
    v203[1] = v204;
    v201 += 4;
    v202 += 2608;
  }

  while (4 * v438 != v201);
  v205 = v398[9];
  v483 = v398[8];
  v484 = v205;
  v485 = v398[10];
  v206 = v398[5];
  v479 = v398[4];
  v480 = v206;
  v207 = v398[7];
  v481 = v398[6];
  v482 = v207;
  v208 = v398[1];
  v475 = *v398;
  v476 = v208;
  v209 = v398[3];
  v477 = v398[2];
  v478 = v209;
  v210 = a3[1];
  v472 = *a3;
  v473 = v210;
  v474 = *(a3 + 4);
  bzero(__src, 0x400uLL);
  __memcpy_chk();
  v469 = 0u;
  v470 = 0u;
  v467 = 0u;
  v468 = 0u;
  v465 = 0u;
  v466 = 0u;
  v463 = 0u;
  v464 = 0u;
  v461 = 0u;
  v462 = 0u;
  v459 = 0u;
  v460 = 0u;
  v457 = 0u;
  v458 = 0u;
  v211 = *(v14 + 720);
  v212 = *(v14 + 724);
  v213 = v412;
  if (v412 >= v432)
  {
    v214 = v432;
  }

  else
  {
    v214 = v412;
  }

  if (v214 >= 0x20 && v212 == 1 || v214 >= 0x10 && v212 >= 2 && *(v100 + 89440) <= 3u && *v430 <= 191)
  {
    v215 = HIWORD(v196);
    if (v211 > 0xA)
    {
      LODWORD(v211) = 0;
    }

    else
    {
      LODWORD(v211) = byte_277C39598[v211];
    }
  }

  else
  {
    v215 = HIWORD(v196);
  }

  v406 = ((((v196 >= 0) + v215) << 13) + 24576) & 0xFFFF0000 | ((((v196 & 0x8000) == 0) + v196 + 3) >> 3);
  sub_277B99138(&v457, a1, v100, a4, &v452, ((((v196 >= 0) + v215) << 13) + 24576) & 0xFFFF0000 | ((((v196 & 0x8000) == 0) + v196 + 3) >> 3), a1 + 418944, v211, 0);
  v216 = 0;
  v217 = *v400;
  v218 = *v400 + 0x40000;
  HIDWORD(v465) = 1;
  v394 = 32 * v189;
  v379 = v218;
  v381 = v217;
  *(&v467 + 1) = v217;
  LODWORD(v219) = v426;
  v389 = 8 * v432;
  v386 = 8 * v412;
  v383 = (v426 >> 4) - 4;
  v468 = *(v218 + 8);
  v220 = v100 + 126604;
  v221 = v100 + 127644;
  v401 = v429;
  v404 = a2 + 126568;
  v222 = 1;
  v223 = v435;
  v408 = v189;
  while (2)
  {
    v439 = v222;
    DWORD2(v462) = 4 * (*(a2 + 8264) - v219);
    if (v216)
    {
      v224 = *(*v39 + 32);
      v225 = v224 * __nb;
      v226 = v224 * (v423 + 1);
      if (v226 >= *(a2 + 8260))
      {
        v226 = *(a2 + 8260);
      }
    }

    else
    {
      v225 = *(a2 + 8268);
      v226 = *(*v39 + 32) * v423;
    }

    v227 = 4 * (*(a2 + 8256) - v189);
    HIDWORD(v462) = 4 * (v225 - v219) - v213;
    LODWORD(v463) = v227;
    DWORD1(v463) = 4 * (v226 - v189) - v432;
    sub_277B993C4(&v462 + 2, v452, SHIWORD(v452));
    if (SHIDWORD(v462) < SDWORD2(v462) || SDWORD1(v463) < v463)
    {
      LODWORD(v219) = v426;
      v228 = v439;
      goto LABEL_519;
    }

    v229 = *(v14 + 1740);
    v451 = 0;
    v450 = 0;
    v449 = 0;
    v428 = v428 & 0xFFFFFFFF00000000 | v406;
    v230 = sub_277B99630(v406, &v457, v229, 0, &v451, &v449, 0);
    if (v223[495] != 1)
    {
      goto LABEL_506;
    }

    if (v435[496] != 1)
    {
      goto LABEL_506;
    }

    if ((*v435 & 0xFD) != 0)
    {
      goto LABEL_506;
    }

    v231 = byte_277C3CAFE[v457];
    if (v231 != byte_277C3CAE8[v457])
    {
      goto LABEL_506;
    }

    v376 = v457;
    v378 = v230;
    v232 = **(&v458 + 1);
    v233 = *(*(&v458 + 1) + 24);
    v234 = *(a2 + 416);
    v235 = *(a2 + 420);
    v236 = v231 >> 1;
    if ((*(*(a2 + 8376) + 192) & 8) != 0)
    {
      v247 = 0;
      v248 = 2 * v232;
      v249 = *v33;
      v250 = *(a2 + 126568);
      do
      {
        v251 = 0;
        do
        {
          v252 = 0;
          v253 = 0;
          v254 = (v248 + 2 * v247 * v233 + 2 * v251);
          LODWORD(v454) = *v254;
          DWORD1(v454) = *(v254 + 2 * v233);
          do
          {
            v253 = *(v220 + 4 * (*(&v454 + v252++) ^ (v253 >> (*(a2 + 126600) - 8)))) ^ (v253 << 8);
          }

          while (v252 != 8);
          v255 = 0;
          v256 = 0;
          v257 = (v251 >> 1) + (v247 >> 1) * v236;
          *(a2 + 126592) = v253;
          *(v249 + 4 * v257) = *(a2 + 127628) & v253;
          do
          {
            v256 = *(v221 + 4 * (*(&v454 + v255++) ^ (v256 >> (*(a2 + 127640) - 8)))) ^ (v256 << 8);
          }

          while (v255 != 8);
          *(a2 + 127632) = v256;
          *(v250 + 4 * v257) = *(a2 + 128668) & v256;
          v251 += 2;
        }

        while (v251 < v231);
        v247 += 2;
      }

      while (v247 < v231);
    }

    else
    {
      v237 = 0;
      v238 = *v33;
      v239 = *(a2 + 126568);
      do
      {
        v240 = 0;
        v241 = v232 + v237 * v233;
        do
        {
          v242 = 0;
          v243 = 0;
          LOWORD(v454) = *(v241 + v240);
          WORD1(v454) = *(v241 + v240 + v233);
          do
          {
            v243 = *(v220 + 4 * (*(&v454 + v242++) ^ (v243 >> (*(a2 + 126600) - 8)))) ^ (v243 << 8);
          }

          while (v242 != 4);
          v244 = 0;
          v245 = 0;
          v246 = (v240 >> 1) + (v237 >> 1) * v236;
          *(a2 + 126592) = v243;
          *(v238 + 4 * v246) = *(a2 + 127628) & v243;
          do
          {
            v245 = *(v221 + 4 * (*(&v454 + v244++) ^ (v245 >> (*(a2 + 127640) - 8)))) ^ (v245 << 8);
          }

          while (v244 != 4);
          *(a2 + 127632) = v245;
          *(v239 + 4 * v246) = *(a2 + 128668) & v245;
          v240 += 2;
        }

        while (v240 < v231);
        v237 += 2;
      }

      while (v237 < v231);
    }

    v258 = 0;
    v374 = 4 * v235;
    v375 = v234;
    v371 = v235;
    v373 = 4 * v234;
    v259 = 1;
    v260 = v231 >> 2;
    v261 = 4;
    do
    {
      v259 = 1 - v259;
      v258 = 1 - v258;
      if (v260)
      {
        v262 = 0;
        LODWORD(v263) = 0;
        v264 = v33[v259];
        v265 = v33[v258];
        v266 = *(v404 + 8 * v259);
        v267 = *(v404 + 8 * v258);
        do
        {
          v268 = 0;
          v263 = v263;
          do
          {
            v269 = 0;
            v270 = 0;
            v271 = 2 * v236 * v262 + 2 * v268;
            v272 = v271;
            *&v273 = *(v264 + 4 * v271);
            v274 = v271 + v236;
            *(&v273 + 1) = *(v264 + 4 * v274);
            v454 = v273;
            do
            {
              v270 = *(v220 + 4 * (*(&v454 + v269++) ^ (v270 >> (*(a2 + 126600) - 8)))) ^ (v270 << 8);
            }

            while (v269 != 16);
            v275 = 0;
            v276 = 0;
            *(a2 + 126592) = v270;
            *(v265 + 4 * v263) = *(a2 + 127628) & v270;
            *&v277 = *(v266 + 4 * v272);
            *(&v277 + 1) = *(v266 + 4 * v274);
            v454 = v277;
            do
            {
              v276 = *(v221 + 4 * (*(&v454 + v275++) ^ (v276 >> (*(a2 + 127640) - 8)))) ^ (v276 << 8);
            }

            while (v275 != 16);
            *(a2 + 127632) = v276;
            *(v267 + 4 * v263++) = *(a2 + 128668) & v276;
            ++v268;
          }

          while (v268 != v260);
          ++v262;
        }

        while (v262 != v260);
      }

      LODWORD(v236) = v260;
      v260 >>= 1;
      v261 *= 2;
    }

    while (v261 <= v231);
    v278 = *(*(a2 + 126584) + 8 * (**(a2 + 126552 + 8 * v258) | (sub_277AE4640(v231) << 16)));
    v39 = v427;
    v230 = v378;
    if (!v278 || (v279 = *v278, *v278 < 2))
    {
LABEL_506:
      v219 = v426;
      if (v230 != 0x7FFFFFFF)
      {
        LOWORD(v285) = v451;
        v319 = HIWORD(v451);
        v189 = v408;
        goto LABEL_509;
      }

      LODWORD(v189) = v408;
LABEL_517:
      v213 = v412;
      goto LABEL_518;
    }

    v280 = *(v278 + 16);
    if (v280)
    {
      v281 = *(v278 + 24);
    }

    else
    {
      v281 = 0;
    }

    v283 = v374;
    v282 = v375;
    v284 = v373;
    v285 = 0;
    v286 = **(v404 + 8 * v258);
    v287 = 32 * v375;
    v288 = 32 * v371;
    v289 = 8 * v231;
    v368 = 0x10003uLL >> v376;
    v367 = 0x20005uLL >> v376;
    v290 = (v371 >> 4) - 4;
    v291 = (v281 + 4);
    v372 = 0x7FFFFFFF;
    while (2)
    {
      if (v286 == *v291)
      {
        v292 = *(v291 - 1) - v284;
        v293 = v287 + (8 * v292);
        v294 = *(a2 + 8256);
        if (v293 >= 32 * v294)
        {
          v295 = v288 + (8 * (*(v291 - 2) - v283));
          v296 = *(a2 + 8264);
          if (v295 >= 32 * v296)
          {
            v297 = v293 + v289;
            if (v293 + v289 <= 32 * *(a2 + 8260))
            {
              v377 = *(v291 - 2) - v283;
              v298 = v295 + v289;
              v299 = *(a2 + 8268);
              if (v295 + v289 <= 32 * v299)
              {
                v369 = v290;
                v370 = v289;
                v300 = *(*v39 + 36);
                if (*(a2 + 428) == 1 && !*(*v39 + 77) && ((v368 & 1) != 0 && *(a2 + 3044) && v295 < 32 * v296 + 32 || (v367 & 1) != 0 && *(a2 + 3048) && v293 < 32 * v294 + 32))
                {
                  goto LABEL_499;
                }

                v301 = ((v297 >> 3) - 1) / (4 << v300);
                v302 = (v298 >> 3) - 1;
                v303 = ((v299 + ~v296) >> 4) + 1;
                v304 = v301 * v303 + (v302 >> 6);
                v305 = v290 + v303 * (v282 >> v300);
                v306 = (v282 >> v300) - v301;
                if (v282 >> v300 < v301 || v304 >= v305)
                {
                  v289 = v370;
                  goto LABEL_500;
                }

                v308 = v302 >> 6;
                v309 = 4 << v300 <= 64 ? 5 : 6;
                v289 = v370;
                if (v308 < v290 + v306 * v309 && v377 >= SDWORD2(v462) && v377 <= SHIDWORD(v462) && v292 >= v463)
                {
                  v363 = v287;
                  v364 = v286;
                  v365 = v280;
                  v366 = v285;
                  if (v292 > SDWORD1(v463))
                  {
                    v230 = v378;
                    v283 = v374;
                    v282 = v375;
                    v284 = v373;
                  }

                  else
                  {
                    DWORD2(v454) = 0;
                    *&v454 = 0;
                    v310 = (*(*(&v457 + 1) + 24))(**(&v458 + 1), *(*(&v458 + 1) + 24), *v458 + v377 + *(v458 + 24) * v292);
                    DWORD1(v454) = v310;
                    if (BYTE4(v467) == 4)
                    {
                      goto LABEL_493;
                    }

                    v311 = **(&v466 + 1);
                    v312 = (8 * v292 - v311);
                    v313 = *(*(&v466 + 1) + 2);
                    v314 = (8 * v377 - v313);
                    if (v312 < 0)
                    {
                      v312 = -v312;
                    }

                    if (v314 < 0)
                    {
                      v314 = -v314;
                    }

                    if (BYTE4(v467) == 3)
                    {
                      LODWORD(v315) = (v314 + v312) >> 3;
                    }

                    else if (BYTE4(v467) == 1)
                    {
                      LODWORD(v315) = (v314 + v312) >> 2;
                    }

                    else
                    {
                      if (!BYTE4(v467))
                      {
                        v315 = ((*(v468 + 4 * (8 * v292 - v311)) + *(*(&v468 + 1) + 4 * (8 * v377 - v313)) + *(*(&v467 + 1) + ((4 * (v313 != (8 * v377))) | (8 * (v311 != (8 * v292)))))) * v469 + 0x2000) >> 14;
                        goto LABEL_494;
                      }

LABEL_493:
                      LODWORD(v315) = 0;
                    }

LABEL_494:
                    v282 = v375;
                    v316 = v292 | (v377 << 16);
                    v317 = v315 + v310;
                    v318 = v372;
                    v284 = v373;
                    v285 = v366;
                    if (v317 < v372)
                    {
                      v285 = v316;
                      v318 = v317;
                    }

                    v372 = v318;
                    v39 = v427;
                    v230 = v378;
                    v283 = v374;
                  }

                  v280 = v365;
                  v287 = v363;
                  v286 = v364;
LABEL_499:
                  v290 = v369;
                  v289 = v370;
                }
              }
            }
          }
        }
      }

LABEL_500:
      v291 = (v291 + v280);
      if (--v279)
      {
        continue;
      }

      break;
    }

    if (v372 >= v230)
    {
      goto LABEL_506;
    }

    v451 = v285;
    v319 = HIWORD(v285);
    v189 = v408;
    v219 = v426;
LABEL_509:
    v320 = 8 * v319;
    v321 = (8 * v319) >> 3;
    if (v321 < SDWORD2(v462))
    {
      goto LABEL_517;
    }

    if (v321 > SHIDWORD(v462))
    {
      goto LABEL_517;
    }

    v322 = 8 * v285;
    v323 = ((8 * v285) >> 3);
    if (v323 < v463)
    {
      goto LABEL_517;
    }

    if (v323 > SDWORD1(v463))
    {
      goto LABEL_517;
    }

    v324 = v394 + v322;
    v325 = *(a2 + 8256);
    if (v324 < 32 * v325)
    {
      goto LABEL_517;
    }

    v326 = 32 * v426 + v320;
    v327 = *(a2 + 8264);
    if (v326 < 32 * v327)
    {
      goto LABEL_517;
    }

    if (v324 + v389 > 32 * *(a2 + 8260))
    {
      goto LABEL_517;
    }

    v328 = *(a2 + 8268);
    if (v326 + v386 > 32 * v328)
    {
      goto LABEL_517;
    }

    v329 = *(*v39 + 36);
    if (*(a2 + 428) == 1 && !*(*v39 + 77) && (((0x10003uLL >> a4) & 1) != 0 && *(a2 + 3044) && v326 < 32 * v327 + 32 || ((0x20005uLL >> a4) & 1) != 0 && *(a2 + 3048) && v324 < 32 * v325 + 32))
    {
      goto LABEL_517;
    }

    v330 = (((v324 + v389) >> 3) - 1) / (4 << v329);
    if (v189 >> v329 < v330)
    {
      goto LABEL_517;
    }

    v331 = ((v326 + v386) >> 3) - 1;
    if (v330 * (((v328 + ~v327) >> 4) + 1) + (v331 >> 6) >= v383 + (((v328 + ~v327) >> 4) + 1) * (v189 >> v329))
    {
      goto LABEL_517;
    }

    v332 = 4 << v329 <= 64 ? 5 : 6;
    if (v331 >> 6 >= v383 + ((v189 >> v329) - v330) * v332)
    {
      goto LABEL_517;
    }

    *(v398 + 71) = 0;
    *(v398 + 126) = 0u;
    *(v398 + 110) = 0u;
    *(v398 + 94) = 0u;
    *(v398 + 91) = 0;
    *(v398 + 167) |= 0x80u;
    *(v398 + 1) = 0;
    *(v398 + 24) = 0;
    *(v398 + 2) = (v319 << 19) | (8 * v285);
    *(v398 + 5) = 196611;
    *(v398 + 144) = 0;
    sub_2779CCAB4(v435, a2 + 416, v189, v219, 0, a4, 0, 2 * (*(*v39 + 77) == 0));
    v333 = *(*(v379 + 8) + 4 * (v322 - v452)) + *(*(v379 + 16) + 4 * (v320 - HIWORD(v452))) + *(v381 + ((4 * (HIWORD(v452) != v320)) | (8 * (v322 != v452))));
    v334 = *(a2 + 29644);
    v456 = 0;
    v454 = 0u;
    v455 = 0u;
    v448 = 0;
    memset(v447, 0, sizeof(v447));
    v446 = 0;
    memset(v445, 0, sizeof(v445));
    if (sub_277A45FBC(a1, a2, a4, &v454, v447, v445, v334 + ((120 * v333 + 64) >> 7), 0x7FFFFFFFFFFFFFFFLL))
    {
      v335 = ((*(a2 + 16920) * v454 + 256) >> 9) + (*(&v454 + 1) << 7);
      *&v455 = v335;
      if (v335 < v401)
      {
        v336 = v398[9];
        v483 = v398[8];
        v484 = v336;
        v485 = v398[10];
        v337 = v398[5];
        v479 = v398[4];
        v480 = v337;
        v338 = v398[7];
        v481 = v398[6];
        v482 = v338;
        v339 = v398[1];
        v475 = *v398;
        v476 = v339;
        v340 = v398[3];
        v477 = v398[2];
        v478 = v340;
        v472 = v454;
        v473 = v455;
        v474 = v456;
        __memcpy_chk();
        __memcpy_chk();
        v401 = v335;
      }
    }

    v39 = v427;
    LODWORD(v189) = v408;
    v213 = v412;
    LODWORD(v219) = v426;
LABEL_518:
    v228 = v439;
    v223 = v435;
LABEL_519:
    v222 = 0;
    v216 = 1;
    if (v228)
    {
      continue;
    }

    break;
  }

  v341 = v480;
  v398[4] = v479;
  v398[5] = v341;
  v342 = v485;
  v398[9] = v484;
  v398[10] = v342;
  v343 = v483;
  v398[7] = v482;
  v398[8] = v343;
  v398[6] = v481;
  v344 = v476;
  *v398 = v475;
  v398[1] = v344;
  v345 = v478;
  v398[2] = v477;
  v398[3] = v345;
  v346 = v473;
  v173 = a3;
  *a3 = v472;
  a3[1] = v346;
  *(a3 + 4) = v474;
  v100 = a2;
  memcpy((a2 + 151049), __src, *(a2 + 8724) * *(a2 + 8725));
  memcpy(*(a2 + 8328), v471, *(v433 + 416));
  if (v401 < v429)
  {
    *(v433 + 456) = *(v399 + 144);
    memcpy(*(v433 + 280), (a2 + 151049), *(v433 + 416));
  }

LABEL_542:
  if (*v173 != 0x7FFFFFFF)
  {
    v347 = **(v100 + 8280);
    v348 = v347[6];
    v350 = v347[3];
    v349 = v347[4];
    *(v433 + 80) = v347[5];
    *(v433 + 96) = v348;
    *(v433 + 48) = v350;
    *(v433 + 64) = v349;
    v351 = v347[10];
    v353 = v347[7];
    v352 = v347[8];
    *(v433 + 144) = v347[9];
    *(v433 + 160) = v351;
    *(v433 + 112) = v353;
    *(v433 + 128) = v352;
    v354 = *v347;
    v355 = v347[2];
    *(v433 + 16) = v347[1];
    *(v433 + 32) = v355;
    *v433 = v354;
    v356 = **(v100 + 8280);
    v357 = *(v356 + 17);
    v358 = *(v356 + 16);
    if (v357 >= 1)
    {
      if (v357 >= 5u && v358 < 5)
      {
LABEL_550:
        LOBYTE(v358) = v358 + 4 * v357 - 13;
      }

      else
      {
        v359 = 0;
        while (byte_277C3BCCC[v359] != v358 || v357 != byte_277C3BCD5[v359])
        {
          if (++v359 == 9)
          {
            goto LABEL_550;
          }
        }

        LOBYTE(v358) = v359 + 20;
      }
    }

    v360 = (v100 + 15472 + 32 * v358);
    v361 = v360[1];
    *(v433 + 176) = *v360;
    *(v433 + 192) = v361;
    *(v433 + 208) = *(v100 + 8 * v358 + 16400);
    *(v433 + 252) = *(v100 + 2 * v358 + 16696);
    *(v433 + 216) = *(v100 + v358 + 16632);
    v362 = *(v100 + 16664);
    *(v433 + 236) = *(v100 + 16680);
    *(v433 + 220) = v362;
    memcpy(*(v433 + 408), *(v100 + 8328), *(v433 + 416));
  }
}