uint64_t sub_2779E7BA4(uint64_t result, int32x4_t *a2)
{
  v2 = 0;
  v218 = *MEMORY[0x277D85DE8];
  for (i = 496; i != 240; i -= 16)
  {
    *(&v156 + v2) = vqaddq_s32(*(result + v2), *(result + i));
    v2 += 16;
  }

  v4 = 240;
  v5 = 256;
  do
  {
    *(&v156 + v5) = vqsubq_s32(*(result + v4), *(result + v5));
    v4 -= 16;
    v5 += 16;
  }

  while (v4 != -16);
  v6 = 0;
  for (j = 240; j != 112; j -= 16)
  {
    *(&v188 + v6) = vqaddq_s32(*(&v156 + v6), *(&v156 + j));
    v6 += 16;
  }

  v8 = 112;
  v9 = 128;
  do
  {
    *(&v188 + v9) = vqsubq_s32(*(&v156 + v8), *(&v156 + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  v202 = v172;
  v203 = v173;
  v204 = v174;
  v205 = v175;
  v11 = vdupq_n_s32(0x16A0u);
  v12 = vdupq_n_s32(0xFFFFE960);
  v213 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v176, v183), v11), 0xDuLL);
  v212 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v177, v182), v11), 0xDuLL);
  v206 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v183, v11), v176, v12), 0xDuLL);
  v207 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v182, v11), v177, v12), 0xDuLL);
  v211 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v178, v181), v11), 0xDuLL);
  v210 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v179, v180), v11), 0xDuLL);
  v208 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v181, v11), v178, v12), 0xDuLL);
  v209 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v180, v11), v179, v12), 0xDuLL);
  v214 = v184;
  v215 = v185;
  v216 = v186;
  v217 = v187;
  for (k = 112; k != 48; k -= 16)
  {
    *(&v156 + v10) = vqaddq_s32(*(&v188 + v10), *(&v188 + k));
    v10 += 16;
  }

  v14 = 48;
  v15 = 64;
  do
  {
    *(&v156 + v15) = vqsubq_s32(*(&v188 + v14), *(&v188 + v15));
    v14 -= 16;
    v15 += 16;
  }

  while (v14 != -16);
  v164 = v194;
  v165 = v195;
  v16 = vdupq_n_s32(0x16A0u);
  v17 = vdupq_n_s32(0xFFFFE960);
  v168 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v197, v198), v16), 0xDuLL);
  v169 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v196, v199), v16), 0xDuLL);
  v166 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v199, v16), v196, v17), 0xDuLL);
  v167 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v198, v16), v197, v17), 0xDuLL);
  v170 = v200;
  v171 = v201;
  v18 = 368;
  v19 = 256;
  do
  {
    *(&v156 + v19) = vqaddq_s32(*(&v188 + v19), *(&v188 + v18));
    v18 -= 16;
    v19 += 16;
  }

  while (v18 != 304);
  v20 = 320;
  do
  {
    *(&v156 + v20) = vqsubq_s32(*(&v188 + v18), *(&v188 + v20));
    v18 -= 16;
    v20 += 16;
  }

  while (v18 != 240);
  v21 = 496;
  v22 = 384;
  do
  {
    *(&v156 + v22) = vqsubq_s32(*(&v188 + v21), *(&v188 + v22));
    v21 -= 16;
    v22 += 16;
  }

  while (v21 != 432);
  v23 = 448;
  v24 = 432;
  do
  {
    *(&v156 + v23) = vqaddq_s32(*(&v188 + v23), *(&v188 + v24));
    v23 += 16;
    v24 -= 16;
  }

  while (v23 != 512);
  v150 = vdupq_n_s32(0x16A0u);
  v155 = vdupq_n_s32(0xFFFFE960);
  v25 = vdupq_n_s32(0x1D90u);
  v26 = vdupq_n_s32(0xC40u);
  v27 = vdupq_n_s32(0xFFFFE270);
  v28 = vmlaq_s32(vmulq_s32(v184, v25), v175, v26);
  v152 = vmlaq_s32(vmulq_s32(v183, v26), v176, v27);
  v29 = vdupq_n_s32(0xFFFFF3C0);
  v30 = vmlaq_s32(vmulq_s32(v183, v27), v176, v29);
  v31 = vmlaq_s32(vmulq_s32(v182, v27), v177, v29);
  v190 = vqsubq_s32(v157, v158);
  v191 = vqsubq_s32(v156, v159);
  v153 = vmlaq_s32(vmulq_s32(v191, v25), v190, v26);
  v154 = vmlaq_s32(vmulq_s32(v191, v26), v190, v27);
  v200 = vqaddq_s32(v170, v169);
  v201 = vqaddq_s32(v171, v168);
  v195 = vqaddq_s32(v165, v166);
  v196 = vqsubq_s32(v165, v166);
  v198 = vqsubq_s32(v171, v168);
  v199 = vqsubq_s32(v170, v169);
  v197 = vqsubq_s32(v164, v167);
  v32 = vmlaq_s32(vmulq_s32(v199, v27), v196, v29);
  v215 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v185, v25), v174, v26), 0xDuLL);
  v204 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v185, v26), v174, v27), 0xDuLL);
  v33 = vqaddq_s32(v173, v204);
  v34 = vqsubq_s32(v173, v204);
  v192 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v162, v150), v161, v155), 0xDuLL);
  v193 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v161, v162), v150), 0xDuLL);
  v35 = vqaddq_s32(v160, v192);
  v36 = vqaddq_s32(v163, v193);
  v37 = vdupq_n_s32(0x1F64u);
  v38 = vdupq_n_s32(0x640u);
  v149 = vmlaq_s32(vmulq_s32(v36, v37), v35, v38);
  v39 = vdupq_n_s32(0xFFFFE09C);
  v151 = vmlaq_s32(vmulq_s32(v36, v38), v35, v39);
  v40 = vqaddq_s32(v186, v215);
  v41 = vmlaq_s32(vmulq_s32(v40, v37), v33, v38);
  v42 = vmlaq_s32(vmulq_s32(v40, v38), v33, v39);
  v43 = vqsubq_s32(v186, v215);
  v44 = vmlaq_s32(vmulq_s32(v43, v38), v34, v39);
  v45 = vmlaq_s32(vmulq_s32(v43, v39), v34, vdupq_n_s32(0xFFFFF9C0));
  v46 = vqsubq_s32(v160, v192);
  v47 = vqsubq_s32(v163, v193);
  v48 = vrshrq_n_s32(v31, 0xDuLL);
  v49 = vqsubq_s32(v178, v48);
  v50 = vqaddq_s32(v178, v48);
  v51 = vdupq_n_s32(0x11C8u);
  v52 = vdupq_n_s32(0x1A9Cu);
  v148 = vmlaq_s32(vmulq_s32(v47, v51), v46, v52);
  v53 = vmulq_s32(v47, v52);
  v54 = vdupq_n_s32(0xFFFFEE38);
  v147 = vmlaq_s32(v53, v46, v54);
  v55 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v182, v26), v177, v27), 0xDuLL);
  v56 = vqsubq_s32(v181, v55);
  v57 = vmlaq_s32(vmulq_s32(v56, v51), v49, v52);
  v58 = vmlaq_s32(vmulq_s32(v56, v52), v49, v54);
  v59 = vqaddq_s32(v181, v55);
  v60 = vmlaq_s32(vmulq_s32(v59, v52), v50, v54);
  v61 = vmlaq_s32(vmulq_s32(v59, v54), v50, vdupq_n_s32(0xFFFFE564));
  v194 = vqaddq_s32(v164, v167);
  v62 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v200, v25), v195, v26), 0xDuLL);
  v63 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v200, v26), v195, v27), 0xDuLL);
  v64 = vqaddq_s32(v201, v62);
  v65 = vqaddq_s32(v194, v63);
  v66 = vdupq_n_s32(0x324u);
  v67 = vmlaq_s32(vmulq_s32(v64, vdupq_n_s32(0x1FD8u)), v65, v66);
  v146 = vmlaq_s32(vmulq_s32(v64, v66), v65, vdupq_n_s32(0xFFFFE028));
  v68 = vqsubq_s32(v194, v63);
  v69 = vqsubq_s32(v201, v62);
  v70 = vdupq_n_s32(0x18BCu);
  v71 = vmlaq_s32(vmulq_s32(v69, vdupq_n_s32(0x144Cu)), v68, v70);
  v72 = vmlaq_s32(vmulq_s32(v69, v70), v68, vdupq_n_s32(0xFFFFEBB4));
  v73 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v199, v26), v196, v27), 0xDuLL);
  v74 = vrshrq_n_s32(v32, 0xDuLL);
  v75 = vqsubq_s32(v198, v73);
  v76 = vqsubq_s32(v197, v74);
  v77 = vdupq_n_s32(0xF14u);
  v78 = vmlaq_s32(vmulq_s32(v75, vdupq_n_s32(0x1C38u)), v76, v77);
  v79 = vmlaq_s32(vmulq_s32(v75, v77), v76, vdupq_n_s32(0xFFFFE3C8));
  v80 = vqaddq_s32(v197, v74);
  v81 = vqaddq_s32(v198, v73);
  v82 = vdupq_n_s32(0x1EA0u);
  v83 = vmlaq_s32(vmulq_s32(v81, vdupq_n_s32(0x94Cu)), v80, v82);
  v84 = vmlaq_s32(vmulq_s32(v81, v82), v80, vdupq_n_s32(0xFFFFF6B4));
  v85 = vrshrq_n_s32(v28, 0xDuLL);
  v86 = vrshrq_n_s32(v41, 0xDuLL);
  v87 = vrshrq_n_s32(v42, 0xDuLL);
  v88 = vqaddq_s32(v187, v85);
  v89 = vqaddq_s32(v88, v86);
  v90 = vrshrq_n_s32(vmlaq_s32(vmulq_s32(v184, v26), v175, v27), 0xDuLL);
  v91 = vqaddq_s32(v172, v90);
  v92 = vdupq_n_s32(0x190u);
  v93 = vqaddq_s32(v91, v87);
  v94 = vmlaq_s32(vmulq_s32(v89, vdupq_n_s32(0x1FF8u)), v93, v92);
  v95 = vmlaq_s32(vmulq_s32(v89, v92), v93, vdupq_n_s32(0xFFFFE008));
  v96 = vqsubq_s32(v91, v87);
  v97 = vqsubq_s32(v88, v86);
  v98 = vdupq_n_s32(0x17B4u);
  v99 = vmlaq_s32(vmulq_s32(v97, vdupq_n_s32(0x157Cu)), v96, v98);
  v100 = vmlaq_s32(vmulq_s32(v97, v98), v96, vdupq_n_s32(0xFFFFEA84));
  v101 = vqsubq_s32(v172, v90);
  v102 = vqsubq_s32(v187, v85);
  v103 = vrshrq_n_s32(v44, 0xDuLL);
  v104 = vrshrq_n_s32(v45, 0xDuLL);
  v105 = vqsubq_s32(v102, v103);
  v106 = vqsubq_s32(v101, v104);
  v107 = vdupq_n_s32(0xDB0u);
  v108 = vmlaq_s32(vmulq_s32(v105, vdupq_n_s32(0x1CECu)), v106, v107);
  v109 = vmlaq_s32(vmulq_s32(v105, v107), v106, vdupq_n_s32(0xFFFFE314));
  v110 = vqaddq_s32(v101, v104);
  v111 = vqaddq_s32(v102, v103);
  v112 = vdupq_n_s32(0x1E20u);
  v113 = vmlaq_s32(vmulq_s32(v111, vdupq_n_s32(0xAC8u)), v110, v112);
  v114 = vmlaq_s32(vmulq_s32(v111, v112), v110, vdupq_n_s32(0xFFFFF538));
  v115 = vrshrq_n_s32(v152, 0xDuLL);
  v116 = vrshrq_n_s32(v30, 0xDuLL);
  v117 = vrshrq_n_s32(v57, 0xDuLL);
  v118 = vrshrq_n_s32(v58, 0xDuLL);
  v119 = vqsubq_s32(v180, v115);
  v120 = vqaddq_s32(v119, v117);
  v121 = vdupq_n_s32(0x7C8u);
  v122 = vqsubq_s32(v179, v116);
  v123 = vqaddq_s32(v122, v118);
  v124 = vmlaq_s32(vmulq_s32(v120, vdupq_n_s32(0x1F0Cu)), v123, v121);
  v125 = vmlaq_s32(vmulq_s32(v120, v121), v123, vdupq_n_s32(0xFFFFE0F4));
  v126 = vqsubq_s32(v122, v118);
  v127 = vqsubq_s32(v119, v117);
  v128 = vdupq_n_s32(0x1B74u);
  v129 = vmlaq_s32(vmulq_s32(v127, vdupq_n_s32(0x1074u)), v126, v128);
  v130 = vmlaq_s32(vmulq_s32(v127, v128), v126, vdupq_n_s32(0xFFFFEF8C));
  v131 = vqaddq_s32(v179, v116);
  v132 = vqaddq_s32(v180, v115);
  v133 = vrshrq_n_s32(v60, 0xDuLL);
  v134 = vrshrq_n_s32(v61, 0xDuLL);
  v135 = vqsubq_s32(v132, v133);
  v136 = vqsubq_s32(v131, v134);
  v137 = vdupq_n_s32(0x1310u);
  v138 = vmlaq_s32(vmulq_s32(v135, vdupq_n_s32(0x19B4u)), v136, v137);
  v139 = vmlaq_s32(vmulq_s32(v135, v137), v136, vdupq_n_s32(0xFFFFE64C));
  v140 = vqaddq_s32(v131, v134);
  v141 = vqaddq_s32(v132, v133);
  v142 = vdupq_n_s32(0x1FA8u);
  v143 = vmlaq_s32(vmulq_s32(v141, vdupq_n_s32(0x4B4u)), v140, v142);
  v144 = vmlaq_s32(vmulq_s32(v141, v142), v140, vdupq_n_s32(0xFFFFFB4C));
  v188 = vqaddq_s32(v156, v159);
  v189 = vqaddq_s32(v157, v158);
  v145 = vmlaq_s32(vmulq_s32(v188, v150), v189, v155);
  *a2 = vrshrq_n_s32(vmulq_s32(vaddq_s32(v189, v188), v150), 0xDuLL);
  a2[1] = vrshrq_n_s32(v94, 0xDuLL);
  a2[2] = vrshrq_n_s32(v67, 0xDuLL);
  a2[3] = vrshrq_n_s32(v144, 0xDuLL);
  a2[4] = vrshrq_n_s32(v149, 0xDuLL);
  a2[5] = vrshrq_n_s32(v124, 0xDuLL);
  a2[6] = vrshrq_n_s32(v84, 0xDuLL);
  a2[7] = vrshrq_n_s32(v114, 0xDuLL);
  a2[8] = vrshrq_n_s32(v153, 0xDuLL);
  a2[9] = vrshrq_n_s32(v108, 0xDuLL);
  a2[10] = vrshrq_n_s32(v78, 0xDuLL);
  a2[11] = vrshrq_n_s32(v130, 0xDuLL);
  a2[12] = vrshrq_n_s32(v147, 0xDuLL);
  a2[13] = vrshrq_n_s32(v138, 0xDuLL);
  a2[14] = vrshrq_n_s32(v72, 0xDuLL);
  a2[15] = vrshrq_n_s32(v100, 0xDuLL);
  a2[16] = vrshrq_n_s32(v145, 0xDuLL);
  a2[17] = vrshrq_n_s32(v99, 0xDuLL);
  a2[18] = vrshrq_n_s32(v71, 0xDuLL);
  a2[19] = vrshrq_n_s32(v139, 0xDuLL);
  a2[20] = vrshrq_n_s32(v148, 0xDuLL);
  a2[21] = vrshrq_n_s32(v129, 0xDuLL);
  a2[22] = vrshrq_n_s32(v79, 0xDuLL);
  a2[23] = vrshrq_n_s32(v109, 0xDuLL);
  a2[24] = vrshrq_n_s32(v154, 0xDuLL);
  a2[25] = vrshrq_n_s32(v113, 0xDuLL);
  a2[26] = vrshrq_n_s32(v83, 0xDuLL);
  a2[27] = vrshrq_n_s32(v125, 0xDuLL);
  a2[28] = vrshrq_n_s32(v151, 0xDuLL);
  a2[29] = vrshrq_n_s32(v143, 0xDuLL);
  a2[30] = vrshrq_n_s32(v146, 0xDuLL);
  a2[31] = vrshrq_n_s32(v95, 0xDuLL);
  return result;
}

uint64_t sub_2779E858C(__int16 *a1, int32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v7 = a1;
  v80 = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> a4))
  {
    v11 = a5;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    sub_277A78D0C(a4, 0xAu, &v63);
    return sub_277A78E90(v7, a2, v5, &v63, v79, v11);
  }

  v8 = off_28866D6A0[a4];
  v9 = off_28866DC20[a4];
  v10 = 1;
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) == 0)
    {
      if (((1 << a4) & 0x80A0) != 0)
      {
        v10 = 0;
        goto LABEL_10;
      }

      if (a4 != 6)
      {
        goto LABEL_10;
      }

      v10 = 0;
    }

    v7 = &a1[15 * a3];
    v5 = -a3;
  }

LABEL_10:
  for (i = 0; i != 4; ++i)
  {
    (v8)(&v7[8 * i], &v63, v5, 13, a5);
    for (j = 0; j != 256; j += 16)
    {
      *(&v63 + j) = vrshrq_n_s16(*(&v63 + j), 4uLL);
    }

    v15 = vtrn1q_s16(v63, v64);
    v16 = vtrn2q_s16(v63, v64);
    v17 = vtrn1q_s16(v65, v66);
    v18 = vtrn2q_s16(v65, v66);
    v19 = vtrn1q_s16(v67, v68);
    v20 = vtrn2q_s16(v67, v68);
    v21 = vtrn1q_s16(v69, v70);
    v22 = vtrn2q_s16(v69, v70);
    v23 = vtrn1q_s32(v15, v17);
    v24 = vtrn2q_s32(v15, v17);
    v25 = vtrn1q_s32(v16, v18);
    v26 = vtrn2q_s32(v16, v18);
    v27 = vtrn1q_s32(v19, v21);
    v28 = vtrn2q_s32(v19, v21);
    v29 = vtrn1q_s32(v20, v22);
    v30 = vtrn2q_s32(v20, v22);
    v31 = vzip2q_s64(v23, v27);
    v23.i64[1] = v27.i64[0];
    v32 = vzip2q_s64(v25, v29);
    v25.i64[1] = v29.i64[0];
    v33 = vzip2q_s64(v24, v28);
    v24.i64[1] = v28.i64[0];
    v34 = vzip2q_s64(v26, v30);
    v26.i64[1] = v30.i64[0];
    v35 = &v79[32 * i];
    *v35 = v23;
    *(v35 + 1) = v25;
    *(v35 + 2) = v24;
    *(v35 + 3) = v26;
    *(v35 + 4) = v31;
    *(v35 + 5) = v32;
    *(v35 + 6) = v33;
    *(v35 + 7) = v34;
    v36 = &v79[32 * i + 128];
    v37 = vtrn1q_s16(v71, v72);
    v38 = vtrn2q_s16(v71, v72);
    v39 = vtrn1q_s16(v73, v74);
    v40 = vtrn2q_s16(v73, v74);
    v41 = vtrn1q_s16(v75, v76);
    v42 = vtrn2q_s16(v75, v76);
    v43 = vtrn1q_s16(v77, v78);
    v44 = vtrn2q_s16(v77, v78);
    v45 = vtrn1q_s32(v37, v39);
    v46 = vtrn2q_s32(v37, v39);
    v47 = vtrn1q_s32(v38, v40);
    v48 = vtrn2q_s32(v38, v40);
    v49 = vtrn1q_s32(v41, v43);
    v50 = vtrn2q_s32(v41, v43);
    v51 = vtrn1q_s32(v42, v44);
    v52 = vtrn2q_s32(v42, v44);
    v53 = vzip2q_s64(v45, v49);
    v45.i64[1] = v49.i64[0];
    v54 = vzip2q_s64(v47, v51);
    v47.i64[1] = v51.i64[0];
    v55 = vzip2q_s64(v46, v50);
    v46.i64[1] = v50.i64[0];
    v56 = vzip2q_s64(v48, v52);
    v48.i64[1] = v52.i64[0];
    *v36 = v45;
    *(v36 + 1) = v47;
    *(v36 + 2) = v46;
    *(v36 + 3) = v48;
    *(v36 + 4) = v53;
    *(v36 + 5) = v54;
    *(v36 + 6) = v55;
    *(v36 + 7) = v56;
  }

  v57 = 0;
  v58 = 1;
  do
  {
    v59 = v58;
    v60 = &v79[128 * v57];
    if ((v10 & 1) == 0)
    {
      for (k = 496; k != -16; k -= 16)
      {
        v62 = *v60++;
        *(&v63 + k) = v62;
      }

      v60 = &v63;
    }

    result = (v9)(v60, &a2[2 * v57], 16, 13);
    v58 = 0;
    v57 = 1;
  }

  while ((v59 & 1) != 0);
  return result;
}

uint64_t sub_2779E8870(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v9 = *MEMORY[0x277D85DE8];
  do
  {
    *&v8[v3] = vshlq_n_s16(*(result + v3), 2uLL);
    v3 += 16;
  }

  while (v3 != 512);
  v4 = 0;
  v5 = a2 + 1;
  v6 = vdupq_n_s16(0x16A1u);
  do
  {
    v7 = *&v8[v4];
    v5[-1] = vrshrq_n_s32(vmull_s16(*v7.i8, *v6.i8), 0xCuLL);
    *v5 = vrshrq_n_s32(vmull_high_s16(v7, v6), 0xCuLL);
    v4 += 16;
    v5 = (v5 + 4 * a3);
  }

  while (v4 != 512);
  return result;
}

uint64_t sub_2779E8920(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v267 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v203 = xmmword_277BEB8A0[16 * a4 - 157];
  v205 = xmmword_277BEB8A0[16 * a4 - 158];
  v207 = xmmword_277BEB8A0[16 * a4 - 155];
  v209 = xmmword_277BEB8A0[16 * a4 - 154];
  v210 = xmmword_277BEB8A0[16 * a4 - 153];
  v211 = xmmword_277BEB8A0[16 * a4 - 156];
  for (i = 496; i != 240; i -= 16)
  {
    *&v258[v4] = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v8 = 240;
  v9 = 256;
  do
  {
    *&v258[v9] = vqsubq_s16(*(result + v8), *(result + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  for (j = 240; j != 112; j -= 16)
  {
    *&v241[v10] = vqaddq_s16(*&v258[v10], *&v258[j]);
    v10 += 16;
  }

  v12 = 112;
  v13 = 128;
  do
  {
    *&v241[v13] = vqsubq_s16(*&v258[v12], *&v258[v13]);
    v12 -= 16;
    v13 += 16;
  }

  while (v12 != -16);
  v14 = 0;
  v257 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v6.i8, 1), *v266.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v6.i8, 1), v266, *v6.i8, 0), 0xDuLL);
  v256 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v260.i8, *v6.i8, 1), *v265.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v260, *v6.i8, 1), v265, *v6.i8, 0), 0xDuLL);
  v250 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v259.i8, *v6.i8, 2), *v266.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v259, *v6.i8, 2), v266, *v6.i8, 1), 0xDuLL);
  v251 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v260.i8, *v6.i8, 2), *v265.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v260, *v6.i8, 2), v265, *v6.i8, 1), 0xDuLL);
  v255 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v261.i8, *v6.i8, 1), *v264.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v261, *v6.i8, 1), v264, *v6.i8, 0), 0xDuLL);
  v254 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v262.i8, *v6.i8, 1), *v263.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v262, *v6.i8, 1), v263, *v6.i8, 0), 0xDuLL);
  v252 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v261.i8, *v6.i8, 2), *v264.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v261, *v6.i8, 2), v264, *v6.i8, 1), 0xDuLL);
  v253 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v262.i8, *v6.i8, 2), *v263.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v262, *v6.i8, 2), v263, *v6.i8, 1), 0xDuLL);
  for (k = 112; k != 48; k -= 16)
  {
    *(&v213 + v14) = vqaddq_s16(*&v241[v14], *&v241[k]);
    v14 += 16;
  }

  v16 = 48;
  v17 = 64;
  do
  {
    *(&v213 + v17) = vqsubq_s16(*&v241[v16], *&v241[v17]);
    v16 -= 16;
    v17 += 16;
  }

  while (v16 != -16);
  v224 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v244.i8, *v6.i8, 1), *v247.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v244, *v6.i8, 1), v247, *v6.i8, 0), 0xDuLL);
  v223 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v245.i8, *v6.i8, 1), *v246.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v245, *v6.i8, 1), v246, *v6.i8, 0), 0xDuLL);
  v18 = 368;
  v221 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v244.i8, *v6.i8, 2), *v247.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v244, *v6.i8, 2), v247, *v6.i8, 1), 0xDuLL);
  v222 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v245.i8, *v6.i8, 2), *v246.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v245, *v6.i8, 2), v246, *v6.i8, 1), 0xDuLL);
  v19 = 256;
  do
  {
    *(&v213 + v19) = vqaddq_s16(*&v258[v19], *&v241[v18]);
    v18 -= 16;
    v19 += 16;
  }

  while (v18 != 304);
  v20 = 320;
  do
  {
    *(&v213 + v20) = vqsubq_s16(*&v258[v18], *&v241[v20]);
    v18 -= 16;
    v20 += 16;
  }

  while (v18 != 240);
  v21 = 496;
  v22 = 384;
  do
  {
    *(&v213 + v22) = vqsubq_s16(*&v258[v21], *&v241[v22]);
    v21 -= 16;
    v22 += 16;
  }

  while (v21 != 432);
  v23 = 448;
  v24 = 432;
  do
  {
    *(&v213 + v23) = vqaddq_s16(*&v258[v23], *&v241[v24]);
    v23 += 16;
    v24 -= 16;
  }

  while (v23 != 512);
  v25 = 0;
  v26 = vqaddq_s16(v213, v216);
  v27 = vqaddq_s16(v214, v215);
  v28 = vqsubq_s16(v214, v215);
  v29 = vqsubq_s16(v213, v216);
  v30 = vmlal_lane_s16(vmull_lane_s16(*v218.i8, *v6.i8, 2), *v219.i8, *v6.i8, 1);
  v31 = vmlal_high_lane_s16(vmull_high_lane_s16(v218, *v6.i8, 2), v219, *v6.i8, 1);
  v32 = vqaddq_s16(v243, v221);
  v33 = vqsubq_s16(v243, v221);
  v34 = vqsubq_s16(v248, v224);
  v35 = vqaddq_s16(v248, v224);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v6, 5), *v238.i8, v6, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v6, 5), v238, v6, 4);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v227.i8, v6, 6), *v238.i8, v6, 5);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v227, v6, 6), v238, v6, 5);
  v177 = vmlal_laneq_s16(vmull_laneq_s16(*v228.i8, v6, 5), *v237.i8, v6, 4);
  v174 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v228, v6, 5), v237, v6, 4);
  v170 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v228, v6, 6), v237, v6, 5);
  v172 = vmlal_laneq_s16(vmull_laneq_s16(*v228.i8, v6, 6), *v237.i8, v6, 5);
  v40 = vmlal_laneq_s16(vmull_laneq_s16(*v229.i8, v6, 6), *v236.i8, v6, 5);
  v41 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v229, v6, 6), v236, v6, 5);
  v42 = vmlal_laneq_s16(vmull_laneq_s16(*v229.i8, v6, 7), *v236.i8, v6, 6);
  v43 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v229, v6, 7), v236, v6, 6);
  v44 = vmlal_laneq_s16(vmull_laneq_s16(*v230.i8, v6, 6), *v235.i8, v6, 5);
  v45 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v230, v6, 6), v235, v6, 5);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v230.i8, v6, 7), *v235.i8, v6, 6);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v230, v6, 7), v235, v6, 6);
  v202 = vmlal_lane_s16(vmull_lane_s16(*v27.i8, *v6.i8, 1), *v26.i8, *v6.i8, 0);
  v201 = vmlal_high_lane_s16(vmull_high_lane_s16(v27, *v6.i8, 1), v26, *v6.i8, 0);
  v199 = vmlal_high_lane_s16(vmull_high_lane_s16(v27, *v6.i8, 2), v26, *v6.i8, 1);
  v200 = vmlal_lane_s16(vmull_lane_s16(*v27.i8, *v6.i8, 2), *v26.i8, *v6.i8, 1);
  v198 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 5), *v29.i8, v6, 4);
  v197 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 5), v29, v6, 4);
  v195 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 6), v29, v6, 5);
  v196 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 6), *v29.i8, v6, 5);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v6, 5), *v35.i8, v6, 4);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v32, v6, 5), v35, v6, 4);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v32.i8, v6, 6), *v35.i8, v6, 5);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v32, v6, 6), v35, v6, 5);
  v52 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v6, 6), *v34.i8, v6, 5);
  v53 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v6, 6), v34, v6, 5);
  v54 = vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, v6, 7), *v34.i8, v6, 6);
  v55 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, v6, 7), v34, v6, 6);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v218.i8, *v6.i8, 1), *v219.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v218, *v6.i8, 1), v219, *v6.i8, 0), 0xDuLL);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(v30, 0xDuLL), v31, 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v44, 0xDuLL), v45, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v62 = vqaddq_s16(v217, v57);
  v63 = vqsubq_s16(v217, v57);
  v64 = vqsubq_s16(v220, v56);
  v65 = vqaddq_s16(v220, v56);
  v66 = vqaddq_s16(v226, v59);
  v67 = vqsubq_s16(v226, v59);
  v68 = vqsubq_s16(v231, v61);
  v69 = vqaddq_s16(v231, v61);
  v70 = vqaddq_s16(v234, v60);
  v71 = vqsubq_s16(v234, v60);
  v72 = vqsubq_s16(v239, v58);
  v73 = vqaddq_s16(v239, v58);
  v192 = vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v5.i8, 1), *v65.i8, *v5.i8, 0);
  v191 = vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v5.i8, 1), v65, *v5.i8, 0);
  v194 = vmlal_lane_s16(vmull_lane_s16(*v62.i8, *v5.i8, 2), *v65.i8, *v5.i8, 1);
  v193 = vmlal_high_lane_s16(vmull_high_lane_s16(v62, *v5.i8, 2), v65, *v5.i8, 1);
  v190 = vmlal_laneq_s16(vmull_laneq_s16(*v63.i8, v5, 4), *v64.i8, v5, 5);
  v189 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v63, v5, 4), v64, v5, 5);
  v188 = vmlal_laneq_s16(vmull_laneq_s16(*v63.i8, v5, 7), *v64.i8, v5, 4);
  v187 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v63, v5, 7), v64, v5, 4);
  v183 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v5.i8, 1), *v73.i8, *v5.i8, 0);
  v182 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v5.i8, 1), v73, *v5.i8, 0);
  v180 = vmlal_high_lane_s16(vmull_high_lane_s16(v66, *v5.i8, 2), v73, *v5.i8, 1);
  v181 = vmlal_lane_s16(vmull_lane_s16(*v66.i8, *v5.i8, 2), *v73.i8, *v5.i8, 1);
  v74 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v5.i8, 2), *v72.i8, *v5.i8, 1);
  v75 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v5.i8, 2), v72, *v5.i8, 1);
  v76 = vmlal_lane_s16(vmull_lane_s16(*v67.i8, *v5.i8, 3), *v72.i8, *v5.i8, 2);
  v77 = vmlal_high_lane_s16(vmull_high_lane_s16(v67, *v5.i8, 3), v72, *v5.i8, 2);
  v78 = vmlal_laneq_s16(vmull_laneq_s16(*v68.i8, v5, 4), *v71.i8, v5, 5);
  v79 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v68, v5, 4), v71, v5, 5);
  v80 = vmlal_laneq_s16(vmull_laneq_s16(*v68.i8, v5, 7), *v71.i8, v5, 4);
  v81 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v68, v5, 7), v71, v5, 4);
  v163 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v5, 7), *v70.i8, v5, 4);
  v162 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v5, 7), v70, v5, 4);
  v161 = vmlal_laneq_s16(vmull_laneq_s16(*v69.i8, v5, 6), *v70.i8, v5, 7);
  v160 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v69, v5, 6), v70, v5, 7);
  v82 = vqaddq_s16(v242, v222);
  v83 = vqsubq_s16(v242, v222);
  v84 = vqsubq_s16(v249, v223);
  v85 = vqaddq_s16(v249, v223);
  v86 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v87 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  v90 = vqsubq_s16(v82, v87);
  v91 = vqsubq_s16(v85, v86);
  v186 = vmlal_laneq_s16(vmull_laneq_s16(*v90.i8, v203, 4), *v91.i8, v203, 5);
  v185 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v90, v203, 4), v91, v203, 5);
  v168 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v90, v203, 7), v91, v203, 4);
  v169 = vmlal_laneq_s16(vmull_laneq_s16(*v90.i8, v203, 7), *v91.i8, v203, 4);
  v92 = vqsubq_s16(v83, v89);
  v93 = vqsubq_s16(v84, v88);
  v179 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v203.i8, 1), *v93.i8, *v203.i8, 0);
  v176 = vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v203.i8, 1), v93, *v203.i8, 0);
  v166 = vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v203.i8, 2), v93, *v203.i8, 1);
  v167 = vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v203.i8, 2), *v93.i8, *v203.i8, 1);
  v94 = vqaddq_s16(v82, v87);
  v95 = vqaddq_s16(v83, v89);
  v96 = vqaddq_s16(v84, v88);
  v97 = vqaddq_s16(v85, v86);
  v204 = vmlal_lane_s16(vmull_lane_s16(*v94.i8, *v205.i8, 1), *v97.i8, *v205.i8, 0);
  v184 = vmlal_high_lane_s16(vmull_high_lane_s16(v94, *v205.i8, 1), v97, *v205.i8, 0);
  v157 = vmlal_high_lane_s16(vmull_high_lane_s16(v94, *v205.i8, 2), v97, *v205.i8, 1);
  v158 = vmlal_lane_s16(vmull_lane_s16(*v94.i8, *v205.i8, 2), *v97.i8, *v205.i8, 1);
  v165 = vmlal_laneq_s16(vmull_laneq_s16(*v95.i8, v205, 4), *v96.i8, v205, 5);
  v164 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v95, v205, 4), v96, v205, 5);
  v159 = vmlal_laneq_s16(vmull_laneq_s16(*v95.i8, v205, 7), *v96.i8, v205, 4);
  v206 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v95, v205, 7), v96, v205, 4);
  v98 = vrshrn_high_n_s32(vrshrn_n_s32(v177, 0xDuLL), v174, 0xDuLL);
  v99 = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xDuLL), v170, 0xDuLL);
  v100 = vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xDuLL), v41, 0xDuLL);
  v101 = vrshrn_high_n_s32(vrshrn_n_s32(v42, 0xDuLL), v43, 0xDuLL);
  v102 = vrshrn_high_n_s32(vrshrn_n_s32(v74, 0xDuLL), v75, 0xDuLL);
  v103 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
  v104 = vrshrn_high_n_s32(vrshrn_n_s32(v78, 0xDuLL), v79, 0xDuLL);
  v105 = vrshrn_high_n_s32(vrshrn_n_s32(v80, 0xDuLL), v81, 0xDuLL);
  v106 = vqsubq_s16(v225, v99);
  v107 = vqsubq_s16(v240, v98);
  v108 = vqaddq_s16(v106, v103);
  v109 = vqaddq_s16(v107, v102);
  v178 = vmlal_laneq_s16(vmull_laneq_s16(*v108.i8, v207, 4), *v109.i8, v207, 5);
  v175 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v108, v207, 4), v109, v207, 5);
  v173 = vmlal_laneq_s16(vmull_laneq_s16(*v108.i8, v207, 7), *v109.i8, v207, 4);
  v171 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v108, v207, 7), v109, v207, 4);
  v110 = vqsubq_s16(v232, v101);
  v111 = vqsubq_s16(v233, v100);
  v112 = vqaddq_s16(v110, v105);
  v113 = vqaddq_s16(v111, v104);
  v156 = vmlal_lane_s16(vmull_lane_s16(*v112.i8, *v207.i8, 1), *v113.i8, *v207.i8, 0);
  v155 = vmlal_high_lane_s16(vmull_high_lane_s16(v112, *v207.i8, 1), v113, *v207.i8, 0);
  v114 = vmlal_lane_s16(vmull_lane_s16(*v112.i8, *v207.i8, 2), *v113.i8, *v207.i8, 1);
  v208 = vmlal_high_lane_s16(vmull_high_lane_s16(v112, *v207.i8, 2), v113, *v207.i8, 1);
  v115 = vqsubq_s16(v106, v103);
  v116 = vqsubq_s16(v110, v105);
  v117 = vqsubq_s16(v111, v104);
  v118 = vqsubq_s16(v107, v102);
  v119 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v209.i8, 1), *v118.i8, *v209.i8, 0);
  v120 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v209.i8, 1), v118, *v209.i8, 0);
  v121 = vmlal_lane_s16(vmull_lane_s16(*v115.i8, *v209.i8, 2), *v118.i8, *v209.i8, 1);
  v122 = vmlal_high_lane_s16(vmull_high_lane_s16(v115, *v209.i8, 2), v118, *v209.i8, 1);
  v153 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v209, 4), *v117.i8, v209, 5);
  v154 = v114;
  v123 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v209, 4), v117, v209, 5);
  v124 = vmlal_laneq_s16(vmull_laneq_s16(*v116.i8, v209, 7), *v117.i8, v209, 4);
  v125 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v116, v209, 7), v117, v209, 4);
  v126 = vqaddq_s16(v225, v99);
  v127 = vqaddq_s16(v232, v101);
  v128 = vqaddq_s16(v233, v100);
  v129 = vqaddq_s16(v240, v98);
  v130 = vrshrn_high_n_s32(vrshrn_n_s32(v183, 0xDuLL), v182, 0xDuLL);
  v131 = vrshrn_high_n_s32(vrshrn_n_s32(v181, 0xDuLL), v180, 0xDuLL);
  v132 = vrshrn_high_n_s32(vrshrn_n_s32(v163, 0xDuLL), v162, 0xDuLL);
  v133 = vrshrn_high_n_s32(vrshrn_n_s32(v161, 0xDuLL), v160, 0xDuLL);
  v134 = vqsubq_s16(v126, v131);
  v135 = vqsubq_s16(v129, v130);
  v136 = vmlal_laneq_s16(vmull_laneq_s16(*v134.i8, v210, 4), *v135.i8, v210, 5);
  v137 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v134, v210, 4), v135, v210, 5);
  v138 = vmlal_laneq_s16(vmull_laneq_s16(*v134.i8, v210, 7), *v135.i8, v210, 4);
  v139 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v134, v210, 7), v135, v210, 4);
  v140 = vqsubq_s16(v127, v133);
  v141 = vqsubq_s16(v128, v132);
  v142 = vmlal_lane_s16(vmull_lane_s16(*v140.i8, *v210.i8, 1), *v141.i8, *v210.i8, 0);
  v143 = vmlal_high_lane_s16(vmull_high_lane_s16(v140, *v210.i8, 1), v141, *v210.i8, 0);
  v144 = vmlal_lane_s16(vmull_lane_s16(*v140.i8, *v210.i8, 2), *v141.i8, *v210.i8, 1);
  v145 = vmlal_high_lane_s16(vmull_high_lane_s16(v140, *v210.i8, 2), v141, *v210.i8, 1);
  v146 = vqaddq_s16(v126, v131);
  v147 = vqaddq_s16(v127, v133);
  v148 = vqaddq_s16(v128, v132);
  v149 = vqaddq_s16(v129, v130);
  v212[0] = vrshrn_high_n_s32(vrshrn_n_s32(v202, 0xDuLL), v201, 0xDuLL);
  v212[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v146.i8, *v211.i8, 1), *v149.i8, *v211.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v146, *v211.i8, 1), v149, *v211.i8, 0), 0xDuLL);
  v212[30] = vrshrn_high_n_s32(vrshrn_n_s32(v158, 0xDuLL), v157, 0xDuLL);
  v212[31] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v146.i8, *v211.i8, 2), *v149.i8, *v211.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v146, *v211.i8, 2), v149, *v211.i8, 1), 0xDuLL);
  v212[16] = vrshrn_high_n_s32(vrshrn_n_s32(v200, 0xDuLL), v199, 0xDuLL);
  v212[17] = vrshrn_high_n_s32(vrshrn_n_s32(v136, 0xDuLL), v137, 0xDuLL);
  v212[14] = vrshrn_high_n_s32(vrshrn_n_s32(v169, 0xDuLL), v168, 0xDuLL);
  v212[15] = vrshrn_high_n_s32(vrshrn_n_s32(v138, 0xDuLL), v139, 0xDuLL);
  v212[8] = vrshrn_high_n_s32(vrshrn_n_s32(v198, 0xDuLL), v197, 0xDuLL);
  v212[9] = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xDuLL), v120, 0xDuLL);
  v212[22] = vrshrn_high_n_s32(vrshrn_n_s32(v167, 0xDuLL), v166, 0xDuLL);
  v212[23] = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
  v212[24] = vrshrn_high_n_s32(vrshrn_n_s32(v196, 0xDuLL), v195, 0xDuLL);
  v212[25] = vrshrn_high_n_s32(vrshrn_n_s32(v178, 0xDuLL), v175, 0xDuLL);
  v212[6] = vrshrn_high_n_s32(vrshrn_n_s32(v159, 0xDuLL), v206, 0xDuLL);
  v212[7] = vrshrn_high_n_s32(vrshrn_n_s32(v173, 0xDuLL), v171, 0xDuLL);
  v212[4] = vrshrn_high_n_s32(vrshrn_n_s32(v192, 0xDuLL), v191, 0xDuLL);
  v212[5] = vrshrn_high_n_s32(vrshrn_n_s32(v156, 0xDuLL), v155, 0xDuLL);
  v212[26] = vrshrn_high_n_s32(vrshrn_n_s32(v165, 0xDuLL), v164, 0xDuLL);
  v212[27] = vrshrn_high_n_s32(vrshrn_n_s32(v154, 0xDuLL), v208, 0xDuLL);
  v212[20] = vrshrn_high_n_s32(vrshrn_n_s32(v190, 0xDuLL), v189, 0xDuLL);
  v212[21] = vrshrn_high_n_s32(vrshrn_n_s32(v153, 0xDuLL), v123, 0xDuLL);
  v212[10] = vrshrn_high_n_s32(vrshrn_n_s32(v179, 0xDuLL), v176, 0xDuLL);
  v212[11] = vrshrn_high_n_s32(vrshrn_n_s32(v124, 0xDuLL), v125, 0xDuLL);
  v212[12] = vrshrn_high_n_s32(vrshrn_n_s32(v188, 0xDuLL), v187, 0xDuLL);
  v212[13] = vrshrn_high_n_s32(vrshrn_n_s32(v142, 0xDuLL), v143, 0xDuLL);
  v212[18] = vrshrn_high_n_s32(vrshrn_n_s32(v186, 0xDuLL), v185, 0xDuLL);
  v212[19] = vrshrn_high_n_s32(vrshrn_n_s32(v144, 0xDuLL), v145, 0xDuLL);
  v212[28] = vrshrn_high_n_s32(vrshrn_n_s32(v194, 0xDuLL), v193, 0xDuLL);
  v212[29] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v147.i8, v211, 4), *v148.i8, v211, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v147, v211, 4), v148, v211, 5), 0xDuLL);
  v212[2] = vrshrn_high_n_s32(vrshrn_n_s32(v204, 0xDuLL), v184, 0xDuLL);
  v212[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v147.i8, v211, 7), *v148.i8, v211, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v147, v211, 7), v148, v211, 4), 0xDuLL);
  v150 = a2 + 1;
  do
  {
    v151 = v212[v25];
    v152 = vdupq_n_s16(0x16A1u);
    v150[-1] = vrshrq_n_s32(vmull_s16(*v151.i8, *v152.i8), 0xCuLL);
    *v150 = vrshrq_n_s32(vmull_high_s16(v151, v152), 0xCuLL);
    ++v25;
    v150 = (v150 + 4 * a3);
  }

  while (v25 != 32);
  return result;
}

_OWORD *sub_2779E9598(_OWORD *result, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *result;
    v3 += 16;
    result = (result + 2 * a3);
  }

  while (v3 != 256);
  for (i = 0; i != 256; i += 16)
  {
    *&v7[i] = vshlq_n_s16(*&v7[i], 2uLL);
  }

  v5 = 0;
  v6 = vdupq_n_s16(0x2D42u);
  do
  {
    *(a2 + v5) = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*&v7[v5], *v6.i8), 0xCuLL), vmull_high_s16(*&v7[v5], v6), 0xCuLL);
    v5 += 16;
  }

  while (v5 != 256);
  return result;
}

int16x8_t *sub_2779E9660(int16x8_t *result, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v106 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v90 + v4) = *result;
    v4 += 16;
    result = (result + 2 * a3);
  }

  while (v4 != 256);
  for (i = 0; i != 256; i += 16)
  {
    *(&v90 + i) = vshlq_n_s16(*(&v90 + i), 2uLL);
  }

  v6 = &xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v6, 3), *v98.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v6, 3), v98, *v6, 0), 0xDuLL);
  v9 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v6, 2), *v98.i8, *v6, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v6, 2), v98, *v6, 3), 0xDuLL);
  v10 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v6, 1), *v94.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v101, *v6, 1), v94, *v6, 0), 0xDuLL);
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v101.i8, *v6, 2), *v94.i8, *v6, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v101, *v6, 2), v94, *v6, 1), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v99.i8, *v6, 1), *v96.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v99, *v6, 1), v96, *v6, 0), 0xDuLL);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v99.i8, *v6, 2), *v96.i8, *v6, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v99, *v6, 2), v96, *v6, 1), 0xDuLL);
  v14 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v6, 3), *v100.i8, *v6, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v6, 3), v100, *v6, 0), 0xDuLL);
  v15 = xmmword_277BEB8A0[16 * a4 - 156];
  v16 = xmmword_277BEB8A0[16 * a4 - 155];
  v17 = xmmword_277BEB8A0[16 * a4 - 154];
  v18 = xmmword_277BEB8A0[16 * a4 - 153];
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v6, 2), *v100.i8, *v6, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v6, 2), v100, *v6, 3), 0xDuLL);
  v20 = vqaddq_s16(v90, v8);
  v21 = vqsubq_s16(v9, v105);
  v22 = vqsubq_s16(v90, v8);
  v23 = vqaddq_s16(v105, v9);
  v24 = vqsubq_s16(v11, v93);
  v25 = vqaddq_s16(v102, v10);
  v26 = vqaddq_s16(v93, v11);
  v27 = vqsubq_s16(v102, v10);
  v28 = vqsubq_s16(v13, v91);
  v29 = vqaddq_s16(v104, v12);
  v30 = vqaddq_s16(v91, v13);
  v31 = vqsubq_s16(v104, v12);
  v32 = vqaddq_s16(v92, v14);
  v33 = vqsubq_s16(v19, v103);
  v34 = vqsubq_s16(v92, v14);
  v35 = vqaddq_s16(v103, v19);
  v36 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v6->i8, 5), *v24.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v6->i8, 5), v24, *v6->i8, 4), 0xDuLL);
  v37 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v6->i8, 6), *v24.i8, *v6->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v6->i8, 6), v24, *v6->i8, 5), 0xDuLL);
  v38 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, *v6->i8, 5), *v27.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v26, *v6->i8, 5), v27, *v6->i8, 4), 0xDuLL);
  v39 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, *v6->i8, 6), *v27.i8, *v6->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v26, *v6->i8, 6), v27, *v6->i8, 5), 0xDuLL);
  v40 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, *v6->i8, 5), *v32.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, *v6->i8, 5), v32, *v6->i8, 4), 0xDuLL);
  v41 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v33.i8, *v6->i8, 6), *v32.i8, *v6->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v33, *v6->i8, 6), v32, *v6->i8, 5), 0xDuLL);
  v42 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v35.i8, *v6->i8, 7), *v34.i8, *v6->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v35, *v6->i8, 7), v34, *v6->i8, 4), 0xDuLL);
  v43 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v35.i8, *v6->i8, 6), *v34.i8, *v6->i8, 7), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v35, *v6->i8, 6), v34, *v6->i8, 7), 0xDuLL);
  v44 = vqaddq_s16(v20, v36);
  v45 = vqaddq_s16(v21, v37);
  v46 = vqaddq_s16(v22, v38);
  v47 = vqsubq_s16(v39, v23);
  v48 = vqsubq_s16(v20, v36);
  v49 = vqsubq_s16(v21, v37);
  v50 = vqsubq_s16(v22, v38);
  v51 = vqaddq_s16(v23, v39);
  v52 = vqaddq_s16(v28, v40);
  v53 = vqaddq_s16(v29, v41);
  v54 = vqsubq_s16(v43, v30);
  v55 = vqaddq_s16(v31, v42);
  v56 = vqsubq_s16(v28, v40);
  v57 = vqsubq_s16(v29, v41);
  v58 = vqaddq_s16(v30, v43);
  v59 = vqsubq_s16(v31, v42);
  v60 = vmlal_lane_s16(vmull_lane_s16(*v53.i8, *v7.i8, 2), *v52.i8, *v7.i8, 1);
  v61 = vmlal_high_lane_s16(vmull_high_lane_s16(v53, *v7.i8, 2), v52, *v7.i8, 1);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v53.i8, *v7.i8, 1), *v52.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v53, *v7.i8, 1), v52, *v7.i8, 0), 0xDuLL);
  v63 = vrshrn_high_n_s32(vrshrn_n_s32(v60, 0xDuLL), v61, 0xDuLL);
  v64 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v55.i8, v7, 4), *v54.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v55, v7, 4), v54, v7, 5), 0xDuLL);
  v65 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v55.i8, v7, 7), *v54.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v55, v7, 7), v54, v7, 4), 0xDuLL);
  v66 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v7.i8, 0), *v57.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v7.i8, 0), v57, *v7.i8, 1), 0xDuLL);
  v67 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v56.i8, *v7.i8, 3), *v57.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v56, *v7.i8, 3), v57, *v7.i8, 0), 0xDuLL);
  v68 = vmlal_laneq_s16(vmull_laneq_s16(*v58.i8, v7, 4), *v59.i8, v7, 5);
  v69 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v58, v7, 4), v59, v7, 5);
  v70 = vmlal_laneq_s16(vmull_laneq_s16(*v58.i8, v7, 7), *v59.i8, v7, 4);
  v71 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v58, v7, 7), v59, v7, 4);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(v68, 0xDuLL), v69, 0xDuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v70, 0xDuLL), v71, 0xDuLL);
  v74 = vqaddq_s16(v44, v62);
  v75 = vqaddq_s16(v45, v63);
  v76 = vqaddq_s16(v46, v64);
  v77 = vqaddq_s16(v47, v65);
  v78 = vqaddq_s16(v48, v67);
  v79 = vqaddq_s16(v49, v66);
  v80 = vqaddq_s16(v50, v72);
  v81 = vqsubq_s16(v73, v51);
  v82 = vqsubq_s16(v44, v62);
  v83 = vqsubq_s16(v45, v63);
  v84 = vqsubq_s16(v46, v64);
  v85 = vqsubq_s16(v47, v65);
  v86 = vqsubq_s16(v48, v67);
  v87 = vqsubq_s16(v49, v66);
  v88 = vqsubq_s16(v50, v72);
  v89 = vqaddq_s16(v51, v73);
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v81.i8, *v18.i8, 2), *v80.i8, *v18.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v81, *v18.i8, 2), v80, *v18.i8, 1), 0xDuLL);
  a2[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v83.i8, v18, 4), *v82.i8, v18, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v83, v18, 4), v82, v18, 5), 0xDuLL);
  a2[8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v83.i8, v18, 7), *v82.i8, v18, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v83, v18, 7), v82, v18, 4), 0xDuLL);
  a2[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v81.i8, *v18.i8, 1), *v80.i8, *v18.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v81, *v18.i8, 1), v80, *v18.i8, 0), 0xDuLL);
  a2[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v79.i8, *v17.i8, 2), *v78.i8, *v17.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v79, *v17.i8, 2), v78, *v17.i8, 1), 0xDuLL);
  a2[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v85.i8, v17, 4), *v84.i8, v17, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v85, v17, 4), v84, v17, 5), 0xDuLL);
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v85.i8, v17, 7), *v84.i8, v17, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v85, v17, 7), v84, v17, 4), 0xDuLL);
  a2[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v79.i8, *v17.i8, 1), *v78.i8, *v17.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v79, *v17.i8, 1), v78, *v17.i8, 0), 0xDuLL);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v77.i8, *v16.i8, 2), *v76.i8, *v16.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v77, *v16.i8, 2), v76, *v16.i8, 1), 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v87.i8, v16, 4), *v86.i8, v16, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v87, v16, 4), v86, v16, 5), 0xDuLL);
  a2[12] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v87.i8, v16, 7), *v86.i8, v16, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v87, v16, 7), v86, v16, 4), 0xDuLL);
  a2[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v77.i8, *v16.i8, 1), *v76.i8, *v16.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v77, *v16.i8, 1), v76, *v16.i8, 0), 0xDuLL);
  a2[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v89.i8, v15, 5), *v88.i8, v15, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v89, v15, 5), v88, v15, 4), 0xDuLL);
  a2[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v75.i8, *v15.i8, 1), *v74.i8, *v15.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v75, *v15.i8, 1), v74, *v15.i8, 0), 0xDuLL);
  *a2 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v75.i8, *v15.i8, 2), *v74.i8, *v15.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v75, *v15.i8, 2), v74, *v15.i8, 1), 0xDuLL);
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v89.i8, v15, 6), *v88.i8, v15, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v89, v15, 6), v88, v15, 5), 0xDuLL);
  return result;
}

_OWORD *sub_2779E9BEC(_OWORD *result, int16x8_t *a2, int a3, int a4)
{
  v4 = 0;
  v102 = *MEMORY[0x277D85DE8];
  do
  {
    *&v84[v4] = *result;
    v4 += 16;
    result = (result + 2 * a3);
  }

  while (v4 != 256);
  for (i = 0; i != 256; i += 16)
  {
    *&v84[i] = vshlq_n_s16(*&v84[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  v9 = xmmword_277BEB8A0[16 * a4 - 158];
  v10 = xmmword_277BEB8A0[16 * a4 - 157];
  for (j = 240; j != 112; j -= 16)
  {
    *&v93[v6] = vqaddq_s16(*&v84[v6], *&v84[j]);
    v6 += 16;
  }

  v12 = 112;
  v13 = 128;
  do
  {
    *&v93[v13] = vqsubq_s16(*&v84[v12], *&v84[v13]);
    v12 -= 16;
    v13 += 16;
  }

  while (v12 != -16);
  v14 = 0;
  for (k = 112; k != 48; k -= 16)
  {
    *(&v85 + v14) = vqaddq_s16(*&v93[v14], *&v93[k]);
    v14 += 16;
  }

  v16 = 48;
  v17 = 64;
  do
  {
    *(&v85 + v17) = vqsubq_s16(*&v93[v16], *&v93[v17]);
    v16 -= 16;
    v17 += 16;
  }

  while (v16 != -16);
  v18 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v96.i8, *v8.i8, 1), *v99.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v96, *v8.i8, 1), v99, *v8.i8, 0), 0xDuLL);
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v96.i8, *v8.i8, 2), *v99.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v96, *v8.i8, 2), v99, *v8.i8, 1), 0xDuLL);
  v20 = vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v8.i8, 1), *v98.i8, *v8.i8, 0);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v8.i8, 1), v98, *v8.i8, 0);
  v22 = vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v8.i8, 2), *v98.i8, *v8.i8, 1);
  v23 = vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v8.i8, 2), v98, *v8.i8, 1);
  v24 = vqaddq_s16(v85, v88);
  v25 = vqaddq_s16(v86, v87);
  v26 = vqsubq_s16(v86, v87);
  v27 = vqsubq_s16(v85, v88);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v90.i8, *v8.i8, 1), *v91.i8, *v8.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v90, *v8.i8, 1), v91, *v8.i8, 0), 0xDuLL);
  v29 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v90.i8, *v8.i8, 2), *v91.i8, *v8.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v90, *v8.i8, 2), v91, *v8.i8, 1), 0xDuLL);
  v30 = vqaddq_s16(v95, v19);
  v31 = vqsubq_s16(v95, v19);
  v32 = vqsubq_s16(v100, v18);
  v33 = vqaddq_s16(v100, v18);
  v34 = vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v8.i8, 1), *v24.i8, *v8.i8, 0);
  v35 = vmlal_high_lane_s16(vmull_high_lane_s16(v25, *v8.i8, 1), v24, *v8.i8, 0);
  v36 = vmlal_lane_s16(vmull_lane_s16(*v25.i8, *v8.i8, 2), *v24.i8, *v8.i8, 1);
  v37 = vmlal_high_lane_s16(vmull_high_lane_s16(v25, *v8.i8, 2), v24, *v8.i8, 1);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, v8, 5), *v27.i8, v8, 4);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v26, v8, 5), v27, v8, 4);
  v40 = vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, v8, 6), *v27.i8, v8, 5);
  v41 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v26, v8, 6), v27, v8, 5);
  v42 = vqaddq_s16(v89, v29);
  v43 = vqsubq_s16(v89, v29);
  v44 = vqsubq_s16(v92, v28);
  v45 = vqaddq_s16(v92, v28);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v8, 5), *v33.i8, v8, 4);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v8, 5), v33, v8, 4);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v8, 6), *v33.i8, v8, 5);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v8, 6), v33, v8, 5);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v31.i8, v8, 6), *v32.i8, v8, 5);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v31, v8, 6), v32, v8, 5);
  v52 = vmlal_laneq_s16(vmull_laneq_s16(*v31.i8, v8, 7), *v32.i8, v8, 6);
  v53 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v31, v8, 7), v32, v8, 6);
  v54 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v7.i8, 1), *v45.i8, *v7.i8, 0);
  v55 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v7.i8, 1), v45, *v7.i8, 0);
  v56 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v7.i8, 2), *v45.i8, *v7.i8, 1);
  v57 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v7.i8, 2), v45, *v7.i8, 1);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(*v43.i8, v7, 4), *v44.i8, v7, 5);
  v59 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v43, v7, 4), v44, v7, 5);
  v60 = vmlal_laneq_s16(vmull_laneq_s16(*v43.i8, v7, 7), *v44.i8, v7, 4);
  v61 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v43, v7, 7), v44, v7, 4);
  v62 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xDuLL), v21, 0xDuLL);
  v63 = vrshrn_high_n_s32(vrshrn_n_s32(v22, 0xDuLL), v23, 0xDuLL);
  v64 = vqaddq_s16(v94, v63);
  v65 = vqsubq_s16(v94, v63);
  v66 = vqsubq_s16(v101, v62);
  v67 = vqaddq_s16(v101, v62);
  v68 = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xDuLL), v35, 0xDuLL);
  v69 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v70 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(v40, 0xDuLL), v41, 0xDuLL);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v74 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v75 = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v76 = vqaddq_s16(v64, v73);
  v77 = vqsubq_s16(v64, v73);
  v78 = vqsubq_s16(v65, v75);
  v79 = vqaddq_s16(v65, v75);
  v80 = vqaddq_s16(v66, v74);
  v81 = vqsubq_s16(v66, v74);
  v82 = vqsubq_s16(v67, v72);
  v83 = vqaddq_s16(v67, v72);
  *a2 = v68;
  a2[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v9.i8, 1), *v83.i8, *v9.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v9.i8, 1), v83, *v9.i8, 0), 0xDuLL);
  a2[14] = vrshrn_high_n_s32(vrshrn_n_s32(v56, 0xDuLL), v57, 0xDuLL);
  a2[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v9.i8, 2), *v83.i8, *v9.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v9.i8, 2), v83, *v9.i8, 1), 0xDuLL);
  a2[8] = v69;
  a2[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v10, 4), *v82.i8, v10, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v10, 4), v82, v10, 5), 0xDuLL);
  a2[6] = vrshrn_high_n_s32(vrshrn_n_s32(v60, 0xDuLL), v61, 0xDuLL);
  a2[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v10, 7), *v82.i8, v10, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v10, 7), v82, v10, 4), 0xDuLL);
  a2[4] = v70;
  a2[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v78.i8, *v10.i8, 1), *v81.i8, *v10.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v78, *v10.i8, 1), v81, *v10.i8, 0), 0xDuLL);
  a2[10] = vrshrn_high_n_s32(vrshrn_n_s32(v58, 0xDuLL), v59, 0xDuLL);
  a2[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v78.i8, *v10.i8, 2), *v81.i8, *v10.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v78, *v10.i8, 2), v81, *v10.i8, 1), 0xDuLL);
  a2[12] = v71;
  a2[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v79.i8, v9, 4), *v80.i8, v9, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v79, v9, 4), v80, v9, 5), 0xDuLL);
  a2[2] = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  a2[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v79.i8, v9, 7), *v80.i8, v9, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v79, v9, 7), v80, v9, 4), 0xDuLL);
  return result;
}

uint64_t sub_2779EA094(__int16 *a1, int32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = a3;
  v67 = a1;
  STACK[0x1938] = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> a4))
  {
    v69 = a5;
    *&STACK[0x1110] = 0u;
    *&STACK[0x1100] = 0u;
    *&STACK[0x10F0] = 0u;
    *&STACK[0x10E0] = 0u;
    sub_277A78D0C(a4, 9u, &STACK[0x10E0]);
    return sub_277A78E90(v67, a2, v65, &STACK[0x10E0], &STACK[0x1120], v69);
  }

  v168 = off_28866D7A0[a4];
  v68 = 1;
  v166 = off_28866DBA0[a4];
  if (a4 > 0xF)
  {
    goto LABEL_21;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
LABEL_9:
    v165 = v68;
    v67 = &a1[31 * a3];
    v65 = -a3;
    goto LABEL_10;
  }

  if (((1 << a4) & 0x80A0) == 0)
  {
    if (a4 == 6)
    {
      v68 = 0;
      goto LABEL_9;
    }

LABEL_21:
    v165 = 1;
    goto LABEL_10;
  }

  v165 = 0;
LABEL_10:
  v71 = 0;
  v72 = &v169;
  v73 = 1;
  do
  {
    v74 = v73;
    (v168)(&v67[v71], &STACK[0x1120], v65, 12, a5, a6, a7, a8);
    for (i = 0; i != 512; i += 16)
    {
      *(&STACK[0x1120] + i) = vrshrq_n_s16(*(&STACK[0x1120] + i), 4uLL);
    }

    v73 = 0;
    v76 = vtrn1q_s16(*&STACK[0x1120], *&STACK[0x1130]);
    v77 = vtrn2q_s16(*&STACK[0x1120], *&STACK[0x1130]);
    v78 = vtrn1q_s16(*&STACK[0x1140], *&STACK[0x1150]);
    v79 = vtrn2q_s16(*&STACK[0x1140], *&STACK[0x1150]);
    v80 = vtrn1q_s16(*&STACK[0x1160], *&STACK[0x1170]);
    v81 = vtrn2q_s16(*&STACK[0x1160], *&STACK[0x1170]);
    v82 = vtrn1q_s16(*&STACK[0x1180], *&STACK[0x1190]);
    v83 = vtrn2q_s16(*&STACK[0x1180], *&STACK[0x1190]);
    v84 = vtrn1q_s32(v76, v78);
    v85 = vtrn1q_s32(v77, v79);
    v86 = vtrn1q_s32(v80, v82);
    v87 = vzip2q_s64(v84, v86);
    v84.i64[1] = v86.i64[0];
    v88 = vtrn1q_s32(v81, v83);
    v89 = vzip2q_s64(v85, v88);
    v85.i64[1] = v88.i64[0];
    v90 = vtrn2q_s32(v76, v78);
    v91 = vtrn2q_s32(v80, v82);
    v92 = vzip2q_s64(v90, v91);
    v90.i64[1] = v91.i64[0];
    v93 = vtrn2q_s32(v77, v79);
    v94 = vtrn2q_s32(v81, v83);
    v95 = vzip2q_s64(v93, v94);
    v93.i64[1] = v94.i64[0];
    *v72 = v84;
    *(v72 + 1) = v85;
    *(v72 + 2) = v90;
    *(v72 + 3) = v93;
    *(v72 + 4) = v87;
    *(v72 + 5) = v89;
    *(v72 + 6) = v92;
    *(v72 + 7) = v95;
    v96 = &a37 + 2 * v71;
    v97 = vtrn1q_s16(*&STACK[0x11A0], *&STACK[0x11B0]);
    v98 = vtrn2q_s16(*&STACK[0x11A0], *&STACK[0x11B0]);
    v99 = vtrn1q_s16(*&STACK[0x11C0], *&STACK[0x11D0]);
    v100 = vtrn2q_s16(*&STACK[0x11C0], *&STACK[0x11D0]);
    v101 = vtrn1q_s16(*&STACK[0x11E0], *&STACK[0x11F0]);
    v102 = vtrn2q_s16(*&STACK[0x11E0], *&STACK[0x11F0]);
    v103 = vtrn1q_s16(*&STACK[0x1200], *&STACK[0x1210]);
    v104 = vtrn2q_s16(*&STACK[0x1200], *&STACK[0x1210]);
    v105 = vtrn1q_s32(v97, v99);
    v106 = vtrn2q_s32(v97, v99);
    v107 = vtrn1q_s32(v98, v100);
    v108 = vtrn2q_s32(v98, v100);
    v109 = vtrn1q_s32(v101, v103);
    v110 = vtrn2q_s32(v101, v103);
    v111 = vtrn1q_s32(v102, v104);
    v112 = vtrn2q_s32(v102, v104);
    v113 = vzip2q_s64(v105, v109);
    v105.i64[1] = v109.i64[0];
    v114 = vzip2q_s64(v107, v111);
    v107.i64[1] = v111.i64[0];
    v115 = vzip2q_s64(v106, v110);
    v106.i64[1] = v110.i64[0];
    v116 = vzip2q_s64(v108, v112);
    v108.i64[1] = v112.i64[0];
    *v96 = v105;
    *(v96 + 1) = v107;
    *(v96 + 2) = v106;
    *(v96 + 3) = v108;
    *(v96 + 4) = v113;
    *(v96 + 5) = v114;
    *(v96 + 6) = v115;
    *(v96 + 7) = v116;
    v117 = vtrn1q_s16(*&STACK[0x1220], *&STACK[0x1230]);
    v118 = vtrn2q_s16(*&STACK[0x1220], *&STACK[0x1230]);
    v119 = vtrn1q_s16(*&STACK[0x1240], *&STACK[0x1250]);
    v120 = vtrn2q_s16(*&STACK[0x1240], *&STACK[0x1250]);
    v121 = vtrn1q_s16(*&STACK[0x1260], *&STACK[0x1270]);
    v122 = vtrn2q_s16(*&STACK[0x1260], *&STACK[0x1270]);
    v123 = vtrn1q_s16(*&STACK[0x1280], *&STACK[0x1290]);
    v124 = vtrn2q_s16(*&STACK[0x1280], *&STACK[0x1290]);
    v125 = vtrn1q_s32(v117, v119);
    v126 = vtrn2q_s32(v117, v119);
    v127 = vtrn1q_s32(v118, v120);
    v128 = vtrn2q_s32(v118, v120);
    v129 = vtrn1q_s32(v121, v123);
    v130 = vtrn2q_s32(v121, v123);
    v131 = vtrn1q_s32(v122, v124);
    v132 = vtrn2q_s32(v122, v124);
    v133 = vzip2q_s64(v125, v129);
    v125.i64[1] = v129.i64[0];
    v134 = vzip2q_s64(v127, v131);
    v127.i64[1] = v131.i64[0];
    v135 = vzip2q_s64(v126, v130);
    v126.i64[1] = v130.i64[0];
    v136 = vzip2q_s64(v128, v132);
    v128.i64[1] = v132.i64[0];
    v137 = (&a65 + 2 * v71);
    *v137 = v125;
    v137[1] = v127;
    v137[2] = v126;
    v137[3] = v128;
    v137[4] = v133;
    v137[5] = v134;
    v137[6] = v135;
    v137[7] = v136;
    v138 = &STACK[0xFE0] + 2 * v71;
    v139 = vtrn1q_s16(*&STACK[0x12A0], *&STACK[0x12B0]);
    v140 = vtrn2q_s16(*&STACK[0x12A0], *&STACK[0x12B0]);
    v141 = vtrn1q_s16(*&STACK[0x12C0], *&STACK[0x12D0]);
    v142 = vtrn2q_s16(*&STACK[0x12C0], *&STACK[0x12D0]);
    v143 = vtrn1q_s16(*&STACK[0x12E0], *&STACK[0x12F0]);
    v144 = vtrn2q_s16(*&STACK[0x12E0], *&STACK[0x12F0]);
    v145 = vtrn1q_s16(*&STACK[0x1300], *&STACK[0x1310]);
    v146 = vtrn2q_s16(*&STACK[0x1300], *&STACK[0x1310]);
    v147 = vtrn1q_s32(v139, v141);
    v148 = vtrn2q_s32(v139, v141);
    v149 = vtrn1q_s32(v140, v142);
    v150 = vtrn2q_s32(v140, v142);
    v151 = vtrn1q_s32(v143, v145);
    v152 = vtrn2q_s32(v143, v145);
    v153 = vtrn1q_s32(v144, v146);
    v154 = vtrn2q_s32(v144, v146);
    v155 = vzip2q_s64(v147, v151);
    v147.i64[1] = v151.i64[0];
    v156 = vzip2q_s64(v149, v153);
    v149.i64[1] = v153.i64[0];
    v157 = vzip2q_s64(v148, v152);
    v148.i64[1] = v152.i64[0];
    v158 = vzip2q_s64(v150, v154);
    v150.i64[1] = v154.i64[0];
    *v138 = v147;
    *(v138 + 1) = v149;
    *(v138 + 2) = v148;
    *(v138 + 3) = v150;
    *(v138 + 4) = v155;
    *(v138 + 5) = v156;
    v72 = &a21;
    *(v138 + 6) = v157;
    *(v138 + 7) = v158;
    v71 = 8;
  }

  while ((v74 & 1) != 0);
  v159 = 0;
  v160 = &v169;
  do
  {
    if (v165)
    {
      v161 = (&v169 + 32 * v159);
    }

    else
    {
      v162 = v160;
      for (j = 240; j != -16; j -= 16)
      {
        v164 = *v162++;
        v161 = &STACK[0x1120];
        *(&STACK[0x1120] + j) = v164;
      }
    }

    result = (v166)(v161, &a2[2 * v159++], 32, 13);
    v160 += 32;
  }

  while (v159 != 4);
  return result;
}

uint64_t sub_2779EA504(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x2D42u);
  do
  {
    *&v9[v3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*(result + v3), *v4.i8), 0xCuLL), vmull_high_s16(*(result + v3), v4), 0xCuLL);
    v3 += 16;
  }

  while (v3 != 256);
  v5 = 0;
  v6 = a2 + 1;
  v7 = vdupq_n_s16(0x16A1u);
  do
  {
    v8 = *&v9[v5];
    v6[-1] = vrshrq_n_s32(vmull_s16(*v8.i8, *v7.i8), 0xCuLL);
    *v6 = vrshrq_n_s32(vmull_high_s16(v8, v7), 0xCuLL);
    v5 += 16;
    v6 = (v6 + 4 * a3);
  }

  while (v5 != 256);
  return result;
}

int16x8_t *sub_2779EA5C8(int16x8_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v110 = *MEMORY[0x277D85DE8];
  v5 = &xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = result[6];
  v7 = result[7];
  v9 = result[8];
  v10 = result[9];
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v7.i8, *v5, 3), *v9.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v7, *v5, 3), v9, *v5, 0), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v7.i8, *v5, 2), *v9.i8, *v5, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v7, *v5, 2), v9, *v5, 3), 0xDuLL);
  v14 = result[10];
  v13 = result[11];
  v15 = result[4];
  v16 = result[5];
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v5, 1), *v15.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v5, 1), v15, *v5, 0), 0xDuLL);
  v18 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v5, 2), *v15.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v5, 2), v15, *v5, 1), 0xDuLL);
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5, 1), *v8.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5, 1), v8, *v5, 0), 0xDuLL);
  v20 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5, 2), *v8.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5, 2), v8, *v5, 1), 0xDuLL);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v16, *v5, 2), v14, *v5, 3);
  v22 = vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v5, 2), *v14.i8, *v5, 3), 0xDuLL);
  v23 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v5, 3), *v14.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v16, *v5, 3), v14, *v5, 0), 0xDuLL);
  v24 = xmmword_277BEB8A0[16 * a4 - 156];
  v25 = xmmword_277BEB8A0[16 * a4 - 155];
  v26 = xmmword_277BEB8A0[16 * a4 - 154];
  v27 = xmmword_277BEB8A0[16 * a4 - 153];
  v28 = vrshrn_high_n_s32(v22, v21, 0xDuLL);
  v29 = result[1];
  v30 = vqaddq_s16(*result, v11);
  v32 = result[14];
  v31 = result[15];
  v33 = vqsubq_s16(v12, v31);
  v34 = vqsubq_s16(*result, v11);
  v35 = vqaddq_s16(v31, v12);
  v37 = result[2];
  v36 = result[3];
  v38 = vqsubq_s16(v18, v36);
  v39 = result[12];
  v40 = result[13];
  v41 = vqaddq_s16(v39, v17);
  v42 = vqaddq_s16(v36, v18);
  v43 = vqsubq_s16(v39, v17);
  v44 = vqsubq_s16(v20, v29);
  v45 = vqaddq_s16(v32, v19);
  v46 = vqaddq_s16(v29, v20);
  v47 = vqsubq_s16(v32, v19);
  v48 = vqaddq_s16(v37, v23);
  v49 = vqsubq_s16(v28, v40);
  v50 = vqsubq_s16(v37, v23);
  v51 = vqaddq_s16(v40, v28);
  v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, *v5->i8, 5), *v38.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, *v5->i8, 5), v38, *v5->i8, 4), 0xDuLL);
  v53 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, *v5->i8, 6), *v38.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, *v5->i8, 6), v38, *v5->i8, 5), 0xDuLL);
  v54 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, *v5->i8, 5), *v43.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, *v5->i8, 5), v43, *v5->i8, 4), 0xDuLL);
  v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, *v5->i8, 6), *v43.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, *v5->i8, 6), v43, *v5->i8, 5), 0xDuLL);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, *v5->i8, 5), *v48.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, *v5->i8, 5), v48, *v5->i8, 4), 0xDuLL);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, *v5->i8, 6), *v48.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, *v5->i8, 6), v48, *v5->i8, 5), 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v51.i8, *v5->i8, 7), *v50.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v51, *v5->i8, 7), v50, *v5->i8, 4), 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v51.i8, *v5->i8, 6), *v50.i8, *v5->i8, 7), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v51, *v5->i8, 6), v50, *v5->i8, 7), 0xDuLL);
  v60 = vqaddq_s16(v30, v52);
  v61 = vqaddq_s16(v33, v53);
  v62 = vqaddq_s16(v34, v54);
  v63 = vqsubq_s16(v55, v35);
  v64 = vqsubq_s16(v30, v52);
  v65 = vqsubq_s16(v33, v53);
  v66 = vqsubq_s16(v34, v54);
  v67 = vqaddq_s16(v35, v55);
  v68 = vqaddq_s16(v44, v56);
  v69 = vqaddq_s16(v45, v57);
  v70 = vqsubq_s16(v59, v46);
  v71 = vqaddq_s16(v47, v58);
  v72 = vqsubq_s16(v44, v56);
  v73 = vqsubq_s16(v45, v57);
  v74 = vqaddq_s16(v46, v59);
  v75 = vqsubq_s16(v47, v58);
  v76 = vmlal_lane_s16(vmull_lane_s16(*v69.i8, *v6.i8, 2), *v68.i8, *v6.i8, 1);
  v77 = vmlal_high_lane_s16(vmull_high_lane_s16(v69, *v6.i8, 2), v68, *v6.i8, 1);
  v78 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v69.i8, *v6.i8, 1), *v68.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v69, *v6.i8, 1), v68, *v6.i8, 0), 0xDuLL);
  v79 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
  v80 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v71.i8, v6, 4), *v70.i8, v6, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v71, v6, 4), v70, v6, 5), 0xDuLL);
  v81 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v71.i8, v6, 7), *v70.i8, v6, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v71, v6, 7), v70, v6, 4), 0xDuLL);
  v82 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v6.i8, 0), *v73.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v6.i8, 0), v73, *v6.i8, 1), 0xDuLL);
  v83 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v6.i8, 3), *v73.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v6.i8, 3), v73, *v6.i8, 0), 0xDuLL);
  v84 = vmlal_laneq_s16(vmull_laneq_s16(*v74.i8, v6, 4), *v75.i8, v6, 5);
  v85 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v74, v6, 4), v75, v6, 5);
  v86 = vmlal_laneq_s16(vmull_laneq_s16(*v74.i8, v6, 7), *v75.i8, v6, 4);
  v87 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v74, v6, 7), v75, v6, 4);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v84, 0xDuLL), v85, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v86, 0xDuLL), v87, 0xDuLL);
  v90 = vqaddq_s16(v60, v78);
  v91 = vqaddq_s16(v61, v79);
  v92 = vqaddq_s16(v62, v80);
  v93 = vqaddq_s16(v63, v81);
  v94 = vqaddq_s16(v64, v83);
  v95 = vqaddq_s16(v65, v82);
  v96 = vqaddq_s16(v66, v88);
  v97 = vqsubq_s16(v89, v67);
  v98 = vqsubq_s16(v60, v78);
  v99 = vqsubq_s16(v61, v79);
  v100 = vqsubq_s16(v62, v80);
  v101 = vqsubq_s16(v63, v81);
  v102 = vqsubq_s16(v64, v83);
  v103 = vqsubq_s16(v65, v82);
  v104 = vqsubq_s16(v66, v88);
  v105 = vqaddq_s16(v67, v89);
  v109[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v27.i8, 2), *v96.i8, *v27.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v27.i8, 2), v96, *v27.i8, 1), 0xDuLL);
  v109[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v99.i8, v27, 4), *v98.i8, v27, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v99, v27, 4), v98, v27, 5), 0xDuLL);
  v109[8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v99.i8, v27, 7), *v98.i8, v27, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v99, v27, 7), v98, v27, 4), 0xDuLL);
  v109[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v27.i8, 1), *v96.i8, *v27.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v27.i8, 1), v96, *v27.i8, 0), 0xDuLL);
  v109[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v26.i8, 2), *v94.i8, *v26.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v26.i8, 2), v94, *v26.i8, 1), 0xDuLL);
  v109[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v101.i8, v26, 4), *v100.i8, v26, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v101, v26, 4), v100, v26, 5), 0xDuLL);
  v109[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v101.i8, v26, 7), *v100.i8, v26, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v101, v26, 7), v100, v26, 4), 0xDuLL);
  v109[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v26.i8, 1), *v94.i8, *v26.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v26.i8, 1), v94, *v26.i8, 0), 0xDuLL);
  v109[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v25.i8, 2), *v92.i8, *v25.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v25.i8, 2), v92, *v25.i8, 1), 0xDuLL);
  v109[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v103.i8, v25, 4), *v102.i8, v25, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v103, v25, 4), v102, v25, 5), 0xDuLL);
  v109[12] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v103.i8, v25, 7), *v102.i8, v25, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v103, v25, 7), v102, v25, 4), 0xDuLL);
  v109[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v25.i8, 1), *v92.i8, *v25.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v25.i8, 1), v92, *v25.i8, 0), 0xDuLL);
  v109[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v105.i8, v24, 5), *v104.i8, v24, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v105, v24, 5), v104, v24, 4), 0xDuLL);
  v109[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v24.i8, 1), *v90.i8, *v24.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v24.i8, 1), v90, *v24.i8, 0), 0xDuLL);
  v109[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v24.i8, 2), *v90.i8, *v24.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v24.i8, 2), v90, *v24.i8, 1), 0xDuLL);
  v109[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v105.i8, v24, 6), *v104.i8, v24, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v105, v24, 6), v104, v24, 5), 0xDuLL);
  v106 = a2 + 1;
  do
  {
    v107 = v109[v4];
    v108 = vdupq_n_s16(0x16A1u);
    v106[-1] = vrshrq_n_s32(vmull_s16(*v107.i8, *v108.i8), 0xCuLL);
    *v106 = vrshrq_n_s32(vmull_high_s16(v107, v108), 0xCuLL);
    ++v4;
    v106 = (v106 + 4 * a3);
  }

  while (v4 != 16);
  return result;
}

uint64_t sub_2779EAB50(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v104 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v85 = xmmword_277BEB8A0[16 * a4 - 158];
  for (i = 240; i != 112; i -= 16)
  {
    *&v95[v4] = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v9 = 112;
  v10 = 128;
  do
  {
    *&v95[v10] = vqsubq_s16(*(result + v9), *(result + v10));
    v9 -= 16;
    v10 += 16;
  }

  while (v9 != -16);
  v11 = 0;
  for (j = 112; j != 48; j -= 16)
  {
    *(&v87 + v11) = vqaddq_s16(*&v95[v11], *&v95[j]);
    v11 += 16;
  }

  v13 = 48;
  v14 = 64;
  do
  {
    *(&v87 + v14) = vqsubq_s16(*&v95[v13], *&v95[v14]);
    v13 -= 16;
    v14 += 16;
  }

  while (v13 != -16);
  v15 = 0;
  v16 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v98.i8, *v6.i8, 1), *v101.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v98, *v6.i8, 1), v101, *v6.i8, 0), 0xDuLL);
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v98.i8, *v6.i8, 2), *v101.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v98, *v6.i8, 2), v101, *v6.i8, 1), 0xDuLL);
  v18 = vmlal_lane_s16(vmull_lane_s16(*v99.i8, *v6.i8, 1), *v100.i8, *v6.i8, 0);
  v19 = vmlal_high_lane_s16(vmull_high_lane_s16(v99, *v6.i8, 1), v100, *v6.i8, 0);
  v20 = vmlal_lane_s16(vmull_lane_s16(*v99.i8, *v6.i8, 2), *v100.i8, *v6.i8, 1);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v99, *v6.i8, 2), v100, *v6.i8, 1);
  v22 = vqaddq_s16(v87, v90);
  v23 = vqaddq_s16(v88, v89);
  v24 = vqsubq_s16(v88, v89);
  v25 = vqsubq_s16(v87, v90);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v6.i8, 1), *v93.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v6.i8, 1), v93, *v6.i8, 0), 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v92.i8, *v6.i8, 2), *v93.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v92, *v6.i8, 2), v93, *v6.i8, 1), 0xDuLL);
  v28 = vqaddq_s16(v97, v17);
  v29 = vqsubq_s16(v97, v17);
  v30 = vqsubq_s16(v102, v16);
  v31 = vqaddq_s16(v102, v16);
  v32 = vmlal_lane_s16(vmull_lane_s16(*v23.i8, *v6.i8, 1), *v22.i8, *v6.i8, 0);
  v33 = vmlal_high_lane_s16(vmull_high_lane_s16(v23, *v6.i8, 1), v22, *v6.i8, 0);
  v34 = vmlal_lane_s16(vmull_lane_s16(*v23.i8, *v6.i8, 2), *v22.i8, *v6.i8, 1);
  v35 = vmlal_high_lane_s16(vmull_high_lane_s16(v23, *v6.i8, 2), v22, *v6.i8, 1);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, v6, 5), *v25.i8, v6, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, v6, 5), v25, v6, 4);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, v6, 6), *v25.i8, v6, 5);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, v6, 6), v25, v6, 5);
  v40 = vqaddq_s16(v91, v27);
  v41 = vqsubq_s16(v91, v27);
  v42 = vqsubq_s16(v94, v26);
  v43 = vqaddq_s16(v94, v26);
  v44 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 5), *v31.i8, v6, 4);
  v45 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 5), v31, v6, 4);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 6), *v31.i8, v6, 5);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 6), v31, v6, 5);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v6, 6), *v30.i8, v6, 5);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v6, 6), v30, v6, 5);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v6, 7), *v30.i8, v6, 6);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v6, 7), v30, v6, 6);
  v52 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v5.i8, 1), *v43.i8, *v5.i8, 0);
  v53 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v5.i8, 1), v43, *v5.i8, 0);
  v54 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v5.i8, 2), *v43.i8, *v5.i8, 1);
  v55 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v5.i8, 2), v43, *v5.i8, 1);
  v56 = vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v5, 4), *v42.i8, v5, 5);
  v57 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, v5, 4), v42, v5, 5);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v5, 7), *v42.i8, v5, 4);
  v59 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, v5, 7), v42, v5, 4);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v18, 0xDuLL), v19, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xDuLL), v21, 0xDuLL);
  v62 = vqaddq_s16(v96, v61);
  v63 = vqsubq_s16(v96, v61);
  v64 = vqsubq_s16(v103, v60);
  v65 = vqaddq_s16(v103, v60);
  v66 = vrshrn_high_n_s32(vrshrn_n_s32(v32, 0xDuLL), v33, 0xDuLL);
  v67 = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xDuLL), v35, 0xDuLL);
  v68 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v69 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v70 = vrshrn_high_n_s32(vrshrn_n_s32(v44, 0xDuLL), v45, 0xDuLL);
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v74 = vqaddq_s16(v62, v71);
  v75 = vqsubq_s16(v62, v71);
  v76 = vqsubq_s16(v63, v73);
  v77 = vqaddq_s16(v63, v73);
  v78 = vqaddq_s16(v64, v72);
  v79 = vqsubq_s16(v64, v72);
  v80 = vqsubq_s16(v65, v70);
  v81 = vqaddq_s16(v65, v70);
  v86[0] = v66;
  v86[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v74.i8, *v85.i8, 1), *v81.i8, *v85.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v74, *v85.i8, 1), v81, *v85.i8, 0), 0xDuLL);
  v86[14] = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  v86[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v74.i8, *v85.i8, 2), *v81.i8, *v85.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v74, *v85.i8, 2), v81, *v85.i8, 1), 0xDuLL);
  v86[8] = v67;
  v86[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v75.i8, v7, 4), *v80.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v75, v7, 4), v80, v7, 5), 0xDuLL);
  v86[6] = vrshrn_high_n_s32(vrshrn_n_s32(v58, 0xDuLL), v59, 0xDuLL);
  v86[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v75.i8, v7, 7), *v80.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v75, v7, 7), v80, v7, 4), 0xDuLL);
  v86[4] = v68;
  v86[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v7.i8, 1), *v79.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v7.i8, 1), v79, *v7.i8, 0), 0xDuLL);
  v86[10] = vrshrn_high_n_s32(vrshrn_n_s32(v56, 0xDuLL), v57, 0xDuLL);
  v86[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v7.i8, 2), *v79.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v7.i8, 2), v79, *v7.i8, 1), 0xDuLL);
  v86[12] = v69;
  v86[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v85, 4), *v78.i8, v85, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v85, 4), v78, v85, 5), 0xDuLL);
  v86[2] = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v86[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v85, 7), *v78.i8, v85, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v85, 7), v78, v85, 4), 0xDuLL);
  v82 = a2 + 1;
  do
  {
    v83 = v86[v15];
    v84 = vdupq_n_s16(0x16A1u);
    v82[-1] = vrshrq_n_s32(vmull_s16(*v83.i8, *v84.i8), 0xCuLL);
    *v82 = vrshrq_n_s32(vmull_high_s16(v83, v84), 0xCuLL);
    ++v15;
    v82 = (v82 + 4 * a3);
  }

  while (v15 != 16);
  return result;
}

uint64_t sub_2779EAFF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v6 = a1;
  v50 = *MEMORY[0x277D85DE8];
  v7 = off_28866DB20[a4];
  v8 = off_28866DBA0[a4];
  v9 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) == 0)
  {
    if (a4 != 6)
    {
      goto LABEL_8;
    }

    v9 = 0;
LABEL_7:
    v6 = a1 + 14 * a3;
    v4 = -a3;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_8:
  v10 = 0;
  v11 = v40;
  v12 = 1;
  do
  {
    v13 = v12;
    (v7)(v6 + 2 * v10, &v42, v4, 13);
    for (i = 0; i != 128; i += 16)
    {
      *(&v42 + i) = vrshrq_n_s16(*(&v42 + i), 2uLL);
    }

    v12 = 0;
    v15 = vtrn1q_s16(v42, v43);
    v16 = vtrn2q_s16(v42, v43);
    v17 = vtrn1q_s16(v44, v45);
    v18 = vtrn2q_s16(v44, v45);
    v19 = vtrn1q_s16(v46, v47);
    v20 = vtrn2q_s16(v46, v47);
    v21 = vtrn1q_s16(v48, v49);
    v22 = vtrn2q_s16(v48, v49);
    v23 = vtrn1q_s32(v15, v17);
    v24 = vtrn2q_s32(v15, v17);
    v25 = vtrn1q_s32(v16, v18);
    v26 = vtrn2q_s32(v16, v18);
    v27 = vtrn1q_s32(v19, v21);
    v28 = vtrn2q_s32(v19, v21);
    v29 = vtrn1q_s32(v20, v22);
    v30 = vtrn2q_s32(v20, v22);
    v31 = vzip2q_s64(v23, v27);
    v23.i64[1] = v27.i64[0];
    v32 = vzip2q_s64(v25, v29);
    v25.i64[1] = v29.i64[0];
    v33 = vzip2q_s64(v24, v28);
    v24.i64[1] = v28.i64[0];
    v34 = vzip2q_s64(v26, v30);
    v26.i64[1] = v30.i64[0];
    *v11 = v23;
    v11[1] = v25;
    v11[2] = v24;
    v11[3] = v26;
    v11[4] = v31;
    v11[5] = v32;
    v11[6] = v33;
    v11[7] = v34;
    v11 = &v41;
    v10 = 8;
  }

  while ((v13 & 1) != 0);
  if (v9)
  {
    v35 = v40;
  }

  else
  {
    v36 = v40;
    for (j = 240; j != -16; j -= 16)
    {
      v38 = *v36++;
      v35 = &v42;
      *(&v42 + j) = v38;
    }
  }

  return (v8)(v35, a2, 8, 13);
}

void sub_2779EB1F4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = off_28866DAA0[a4];
  v6 = 1;
  if (a4 > 0xF)
  {
    goto LABEL_8;
  }

  if (((1 << a4) & 0x4110) != 0)
  {
    goto LABEL_7;
  }

  if (((1 << a4) & 0x80A0) != 0)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (a4 == 6)
  {
    v6 = 0;
LABEL_7:
    a1 += 30 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866D6A0[a4])(a1, &v56, a3, 13);
  for (i = 0; i != 256; i += 16)
  {
    *(&v56 + i) = vrshrq_n_s16(*(&v56 + i), 2uLL);
  }

  v8 = 0;
  v9 = vtrn1q_s16(v56, v57);
  v10 = vtrn2q_s16(v56, v57);
  v11 = vtrn1q_s16(v58, v59);
  v12 = vtrn2q_s16(v58, v59);
  v13 = vtrn1q_s16(v60, v61);
  v14 = vtrn2q_s16(v60, v61);
  v15 = vtrn1q_s16(v62, v63);
  v16 = vtrn2q_s16(v62, v63);
  v17 = vtrn1q_s32(v9, v11);
  v18 = vtrn2q_s32(v9, v11);
  v19 = vtrn1q_s32(v10, v12);
  v20 = vtrn2q_s32(v10, v12);
  v21 = vtrn1q_s32(v13, v15);
  v22 = vtrn2q_s32(v13, v15);
  v23 = vtrn1q_s32(v14, v16);
  v24 = vtrn2q_s32(v14, v16);
  v25 = vzip2q_s64(v17, v21);
  v17.i64[1] = v21.i64[0];
  v26 = vzip2q_s64(v19, v23);
  v19.i64[1] = v23.i64[0];
  v27 = vzip2q_s64(v18, v22);
  v18.i64[1] = v22.i64[0];
  v28 = vzip2q_s64(v20, v24);
  v20.i64[1] = v24.i64[0];
  v54[0] = v17;
  v54[1] = v19;
  v54[2] = v18;
  v54[3] = v20;
  v54[4] = v25;
  v54[5] = v26;
  v54[6] = v27;
  v54[7] = v28;
  v29 = vtrn1q_s16(v64, v65);
  v30 = vtrn2q_s16(v64, v65);
  v31 = vtrn1q_s16(v66, v67);
  v32 = vtrn2q_s16(v66, v67);
  v33 = vtrn1q_s16(v68, v69);
  v34 = vtrn2q_s16(v68, v69);
  v35 = vtrn1q_s16(v70, v71);
  v36 = vtrn2q_s16(v70, v71);
  v37 = vtrn1q_s32(v29, v31);
  v38 = vtrn2q_s32(v29, v31);
  v39 = vtrn1q_s32(v30, v32);
  v40 = vtrn2q_s32(v30, v32);
  v41 = vtrn1q_s32(v33, v35);
  v42 = vtrn2q_s32(v33, v35);
  v43 = vtrn1q_s32(v34, v36);
  v44 = vtrn2q_s32(v34, v36);
  v45 = vzip2q_s64(v37, v41);
  v37.i64[1] = v41.i64[0];
  v46 = vzip2q_s64(v39, v43);
  v39.i64[1] = v43.i64[0];
  v47 = vzip2q_s64(v38, v42);
  v38.i64[1] = v42.i64[0];
  v48 = vzip2q_s64(v40, v44);
  v40.i64[1] = v44.i64[0];
  v55[0] = v37;
  v55[1] = v39;
  v55[2] = v38;
  v55[3] = v40;
  v55[4] = v45;
  v55[5] = v46;
  v49 = v54;
  v50 = 1;
  v55[6] = v47;
  v55[7] = v48;
  do
  {
    v51 = v50;
    if ((v6 & 1) == 0)
    {
      for (j = 112; j != -16; j -= 16)
      {
        v53 = *v49++;
        *(&v56 + j) = v53;
      }

      v49 = &v56;
    }

    (v5)(v49, a2 + 4 * v8, 16, 13);
    v50 = 0;
    v49 = v55;
    v8 = 8;
  }

  while ((v51 & 1) != 0);
}

uint64_t sub_2779EB44C(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v9 = *MEMORY[0x277D85DE8];
  do
  {
    *&v8[v3] = vaddq_s16(*(result + v3), *(result + v3));
    v3 += 16;
  }

  while (v3 != 128);
  v4 = 0;
  v5 = a2 + 1;
  v6 = vdupq_n_s16(0x16A1u);
  do
  {
    v7 = *&v8[v4];
    v5[-1] = vrshrq_n_s32(vmull_s16(*v7.i8, *v6.i8), 0xCuLL);
    *v5 = vrshrq_n_s32(vmull_high_s16(v7, v6), 0xCuLL);
    v4 += 16;
    v5 = (v5 + 4 * a3);
  }

  while (v4 != 128);
  return result;
}

int32x4_t sub_2779EB4F4(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v49 = *MEMORY[0x277D85DE8];
  v5 = &xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 158];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v5, 3), *v10.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v5, 3), v10, *v5, 0), 0xDuLL);
  v13 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v8.i8, *v5, 2), *v10.i8, *v5, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v8, *v5, 2), v10, *v5, 3), 0xDuLL);
  v14 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v11.i8, *v5, 1), *v9.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v11, *v5, 1), v9, *v5, 0), 0xDuLL);
  v15 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v11.i8, *v5, 2), *v9.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v11, *v5, 2), v9, *v5, 1), 0xDuLL);
  v16 = a1[1];
  v17 = vqaddq_s16(*a1, v12);
  v19 = a1[6];
  v18 = a1[7];
  v20 = vqsubq_s16(v13, v18);
  v21 = vqsubq_s16(*a1, v12);
  v22 = vqaddq_s16(v18, v13);
  v23 = vqsubq_s16(v15, v16);
  v24 = vqaddq_s16(v19, v14);
  v25 = vqaddq_s16(v16, v15);
  v26 = vqsubq_s16(v19, v14);
  v27 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, *v5->i8, 5), *v23.i8, *v5->i8, 4);
  v28 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, *v5->i8, 5), v23, *v5->i8, 4);
  v29 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, *v5->i8, 6), *v23.i8, *v5->i8, 5);
  v30 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, *v5->i8, 6), v23, *v5->i8, 5);
  v31 = vrshrn_high_n_s32(vrshrn_n_s32(v27, 0xDuLL), v28, 0xDuLL);
  v32 = vrshrn_high_n_s32(vrshrn_n_s32(v29, 0xDuLL), v30, 0xDuLL);
  v33 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v5->i8, 5), *v26.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v5->i8, 5), v26, *v5->i8, 4), 0xDuLL);
  v34 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v25.i8, *v5->i8, 6), *v26.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v25, *v5->i8, 6), v26, *v5->i8, 5), 0xDuLL);
  v35 = vqaddq_s16(v17, v31);
  v36 = vqaddq_s16(v20, v32);
  v37 = vqaddq_s16(v21, v33);
  v38 = vqsubq_s16(v34, v22);
  v39 = vqsubq_s16(v17, v31);
  v40 = vqsubq_s16(v20, v32);
  v41 = vqsubq_s16(v21, v33);
  v42 = vqaddq_s16(v22, v34);
  v48[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v7.i8, 2), *v37.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v7.i8, 2), v37, *v7.i8, 1), 0xDuLL);
  v48[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v40.i8, v7, 4), *v39.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v40, v7, 4), v39, v7, 5), 0xDuLL);
  v48[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v40.i8, v7, 7), *v39.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v40, v7, 7), v39, v7, 4), 0xDuLL);
  v48[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v38.i8, *v7.i8, 1), *v37.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v38, *v7.i8, 1), v37, *v7.i8, 0), 0xDuLL);
  v48[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, v6, 5), *v41.i8, v6, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, v6, 5), v41, v6, 4), 0xDuLL);
  v48[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v6.i8, 1), *v35.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v36, *v6.i8, 1), v35, *v6.i8, 0), 0xDuLL);
  v48[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v36.i8, *v6.i8, 2), *v35.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v36, *v6.i8, 2), v35, *v6.i8, 1), 0xDuLL);
  v48[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, v6, 6), *v41.i8, v6, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, v6, 6), v41, v6, 5), 0xDuLL);
  v43 = a2 + 1;
  do
  {
    v44 = v48[v4];
    v45 = vdupq_n_s16(0x16A1u);
    v46 = vrshrq_n_s32(vmull_s16(*v44.i8, *v45.i8), 0xCuLL);
    result = vrshrq_n_s32(vmull_high_s16(v44, v45), 0xCuLL);
    v43[-1] = v46;
    *v43 = result;
    ++v4;
    v43 = (v43 + 4 * a3);
  }

  while (v4 != 8);
  return result;
}

uint64_t sub_2779EB778(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v45 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  for (i = 112; i != 48; i -= 16)
  {
    *(&v37 + v4) = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v8 = 48;
  v9 = 64;
  do
  {
    *(&v37 + v9) = vqsubq_s16(*(result + v8), *(result + v9));
    v8 -= 16;
    v9 += 16;
  }

  while (v8 != -16);
  v10 = 0;
  v11 = vqaddq_s16(v37, v40);
  v12 = vqaddq_s16(v38, v39);
  v13 = vqsubq_s16(v38, v39);
  v14 = vqsubq_s16(v37, v40);
  v15 = vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v6.i8, 2), *v43.i8, *v6.i8, 1);
  v16 = vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v6.i8, 2), v43, *v6.i8, 1);
  v17 = vmlal_lane_s16(vmull_lane_s16(*v12.i8, *v6.i8, 1), *v11.i8, *v6.i8, 0);
  v18 = vmlal_high_lane_s16(vmull_high_lane_s16(v12, *v6.i8, 1), v11, *v6.i8, 0);
  v19 = vmlal_lane_s16(vmull_lane_s16(*v12.i8, *v6.i8, 2), *v11.i8, *v6.i8, 1);
  v20 = vmlal_high_lane_s16(vmull_high_lane_s16(v12, *v6.i8, 2), v11, *v6.i8, 1);
  v21 = vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, v6, 5), *v14.i8, v6, 4);
  v22 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, v6, 5), v14, v6, 4);
  v23 = vmlal_laneq_s16(vmull_laneq_s16(*v13.i8, v6, 6), *v14.i8, v6, 5);
  v24 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v13, v6, 6), v14, v6, 5);
  v25 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v42.i8, *v6.i8, 1), *v43.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v42, *v6.i8, 1), v43, *v6.i8, 0), 0xDuLL);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(v15, 0xDuLL), v16, 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(v19, 0xDuLL), v20, 0xDuLL);
  v28 = vrshrn_high_n_s32(vrshrn_n_s32(v23, 0xDuLL), v24, 0xDuLL);
  v29 = vqaddq_s16(v41, v26);
  v30 = vqsubq_s16(v41, v26);
  v31 = vqsubq_s16(v44, v25);
  v32 = vqaddq_s16(v44, v25);
  v36[0] = vrshrn_high_n_s32(vrshrn_n_s32(v17, 0xDuLL), v18, 0xDuLL);
  v36[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v29.i8, *v5.i8, 1), *v32.i8, *v5.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v29, *v5.i8, 1), v32, *v5.i8, 0), 0xDuLL);
  v36[6] = v28;
  v36[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v29.i8, *v5.i8, 2), *v32.i8, *v5.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v29, *v5.i8, 2), v32, *v5.i8, 1), 0xDuLL);
  v36[4] = v27;
  v36[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v5, 4), *v31.i8, v5, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v5, 4), v31, v5, 5), 0xDuLL);
  v36[2] = vrshrn_high_n_s32(vrshrn_n_s32(v21, 0xDuLL), v22, 0xDuLL);
  v36[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v30.i8, v5, 7), *v31.i8, v5, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v30, v5, 7), v31, v5, 4), 0xDuLL);
  v33 = a2 + 1;
  v34 = vdupq_n_s16(0x16A1u);
  do
  {
    v35 = v36[v10];
    v33[-1] = vrshrq_n_s32(vmull_s16(*v35.i8, *v34.i8), 0xCuLL);
    *v33 = vrshrq_n_s32(vmull_high_s16(v35, v34), 0xCuLL);
    ++v10;
    v33 = (v33 + 4 * a3);
  }

  while (v10 != 8);
  return result;
}

uint64_t sub_2779EB9A8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = off_28866DA20[a4];
  v6 = 1;
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) == 0)
    {
      if (((1 << a4) & 0x80A0) != 0)
      {
        v6 = 0;
        goto LABEL_8;
      }

      if (a4 != 6)
      {
        goto LABEL_8;
      }

      v6 = 0;
    }

    a1 += 6 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866D9A0[a4])(a1, &v24, a3, 13);
  for (i = 0; i != 64; i += 16)
  {
    *(&v24 + i) = vrhaddq_s16(*(&v24 + i), 0);
  }

  v8 = vtrn1q_s16(v24, v25);
  v9 = vtrn2q_s16(v24, v25);
  v10 = vtrn1q_s16(v26, v27);
  v11 = vtrn2q_s16(v26, v27);
  v12 = vtrn1q_s32(v8, v10);
  v13 = vtrn2q_s32(v8, v10);
  v14 = vtrn1q_s32(v9, v11);
  *&v15 = vextq_s8(v12, v12, 8uLL).u64[0];
  v12.i64[1] = v14.i64[0];
  *(&v15 + 1) = vextq_s8(v14, v14, 8uLL).u64[0];
  v16 = vtrn2q_s32(v9, v11);
  v11.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
  v13.i64[1] = v16.i64[0];
  v23[0] = v12;
  v23[1] = v13;
  v11.i64[1] = vextq_s8(v16, v16, 8uLL).u64[0];
  v23[2] = v15;
  v23[3] = v11;
  if (v6)
  {
    v17 = v23;
  }

  else
  {
    v18 = v23;
    for (j = 56; j != -8; j -= 8)
    {
      v20 = *v18++;
      *&v22[j] = v20;
    }

    v17 = v22;
  }

  return (v5)(v17, a2, 4, 13);
}

uint64_t sub_2779EBB34(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v7 = *MEMORY[0x277D85DE8];
  do
  {
    *&v6[v3] = vadd_s16(*(result + v3), *(result + v3));
    v3 += 8;
  }

  while (v3 != 64);
  v4 = 0;
  v5 = vdup_n_s16(0x16A1u);
  do
  {
    *a2 = vrshrq_n_s32(vmull_s16(*&v6[v4], v5), 0xCuLL);
    v4 += 8;
    a2 = (a2 + 4 * a3);
  }

  while (v4 != 64);
  return result;
}

int32x4_t sub_2779EBBD0(int16x4_t *a1, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v35[8] = *MEMORY[0x277D85DE8];
  v5 = xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 158];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v8, *v5.i8, 3), v10, *v5.i8, 0), 0xDuLL);
  v13 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v8, *v5.i8, 2), v10, *v5.i8, 3), 0xDuLL);
  v14 = vmlal_lane_s16(vmull_lane_s16(v11, *v5.i8, 1), v9, *v5.i8, 0);
  v15 = vmlal_lane_s16(vmull_lane_s16(v11, *v5.i8, 2), v9, *v5.i8, 1);
  v16 = vqrshrn_n_s32(v14, 0xDuLL);
  *v14.i8 = vqrshrn_n_s32(v15, 0xDuLL);
  v17 = a1[1];
  v18 = vqadd_s16(*a1, v12);
  v20 = a1[6];
  v19 = a1[7];
  v21 = vqsub_s16(v13, v19);
  v22 = vqsub_s16(*a1, v12);
  v23 = vqadd_s16(v19, v13);
  *v15.i8 = vqsub_s16(*v14.i8, v17);
  v24 = vqadd_s16(v20, v16);
  *v14.i8 = vqadd_s16(v17, *v14.i8);
  v25 = vqsub_s16(v20, v16);
  v26 = vmlal_laneq_s16(vmull_laneq_s16(v24, v5, 5), *v15.i8, v5, 4);
  v27 = vmlal_laneq_s16(vmull_laneq_s16(v24, v5, 6), *v15.i8, v5, 5);
  *v15.i8 = vqrshrn_n_s32(v26, 0xDuLL);
  *v26.i8 = vqrshrn_n_s32(v27, 0xDuLL);
  v28 = vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, v5, 5), v25, v5, 4);
  v29 = vmlal_laneq_s16(vmull_laneq_s16(*v14.i8, v5, 6), v25, v5, 5);
  *v5.i8 = vqrshrn_n_s32(v28, 0xDuLL);
  v30 = vqrshrn_n_s32(v29, 0xDuLL);
  *v29.i8 = vqadd_s16(v18, *v15.i8);
  *v28.i8 = vqadd_s16(v21, *v26.i8);
  v31 = vqadd_s16(v22, *v5.i8);
  v32 = vqsub_s16(v30, v23);
  *v15.i8 = vqsub_s16(v18, *v15.i8);
  *v26.i8 = vqsub_s16(v21, *v26.i8);
  *v5.i8 = vqsub_s16(v22, *v5.i8);
  v33 = vqadd_s16(v23, v30);
  v35[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v32, *v7.i8, 2), v31, *v7.i8, 1), 0xDuLL);
  v35[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, v7, 4), *v15.i8, v7, 5), 0xDuLL);
  v35[4] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v26.i8, v7, 7), *v15.i8, v7, 4), 0xDuLL);
  v35[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v32, *v7.i8, 1), v31, *v7.i8, 0), 0xDuLL);
  v35[6] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v33, v6, 5), *v5.i8, v6, 4), 0xDuLL);
  v35[7] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v28.i8, *v6.i8, 1), *v29.i8, *v6.i8, 0), 0xDuLL);
  v35[0] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v28.i8, *v6.i8, 2), *v29.i8, *v6.i8, 1), 0xDuLL);
  v35[1] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v33, v6, 6), *v5.i8, v6, 5), 0xDuLL);
  do
  {
    result = vrshrq_n_s32(vmull_s16(v35[v4], vdup_n_s16(0x16A1u)), 0xCuLL);
    *a2 = result;
    ++v4;
    a2 = (a2 + 4 * a3);
  }

  while (v4 != 8);
  return result;
}

uint64_t sub_2779EBD88(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v35 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  for (i = 56; i != 24; i -= 8)
  {
    *(&v27 + v4) = vqadd_s16(*(result + v4), *(result + i));
    v4 += 8;
  }

  v8 = 24;
  v9 = 32;
  do
  {
    *(&v27 + v9) = vqsub_s16(*(result + v8), *(result + v9));
    v8 -= 8;
    v9 += 8;
  }

  while (v8 != -8);
  v10 = 0;
  v11 = vqadd_s16(v27, v30);
  v12 = vqadd_s16(v28, v29);
  v13 = vqsub_s16(v28, v29);
  v14 = vqsub_s16(v27, v30);
  v15 = vmlal_lane_s16(vmull_lane_s16(v32, *v6.i8, 2), v33, *v6.i8, 1);
  v16 = vmlal_lane_s16(vmull_lane_s16(v12, *v6.i8, 1), v11, *v6.i8, 0);
  v17 = vmlal_lane_s16(vmull_lane_s16(v12, *v6.i8, 2), v11, *v6.i8, 1);
  v18 = vmlal_laneq_s16(vmull_laneq_s16(v13, v6, 5), v14, v6, 4);
  v19 = vmlal_laneq_s16(vmull_laneq_s16(v13, v6, 6), v14, v6, 5);
  v20 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v32, *v6.i8, 1), v33, *v6.i8, 0), 0xDuLL);
  v21 = vqrshrn_n_s32(v15, 0xDuLL);
  *v15.i8 = vqadd_s16(v31, v21);
  v22 = vqsub_s16(v31, v21);
  v23 = vqsub_s16(v34, v20);
  v24 = vqadd_s16(v34, v20);
  v26[0] = vqrshrn_n_s32(v16, 0xDuLL);
  v26[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v15.i8, *v5.i8, 1), v24, *v5.i8, 0), 0xDuLL);
  v26[6] = vqrshrn_n_s32(v19, 0xDuLL);
  v26[7] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v15.i8, *v5.i8, 2), v24, *v5.i8, 1), 0xDuLL);
  v26[4] = vqrshrn_n_s32(v17, 0xDuLL);
  v26[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v22, v5, 4), v23, v5, 5), 0xDuLL);
  v26[2] = vqrshrn_n_s32(v18, 0xDuLL);
  v26[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v22, v5, 7), v23, v5, 4), 0xDuLL);
  v25 = vdup_n_s16(0x16A1u);
  do
  {
    *a2 = vrshrq_n_s32(vmull_s16(v26[v10++], v25), 0xCuLL);
    a2 = (a2 + 4 * a3);
  }

  while (v10 != 8);
  return result;
}

uint64_t sub_2779EBF2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v30[8] = *MEMORY[0x277D85DE8];
  v5 = off_28866D920[a4];
  v6 = 1;
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) == 0)
    {
      if (((1 << a4) & 0x80A0) != 0)
      {
        v6 = 0;
        goto LABEL_8;
      }

      if (a4 != 6)
      {
        goto LABEL_8;
      }

      v6 = 0;
    }

    a1 += 14 * a3;
    a3 = -a3;
  }

LABEL_8:
  (off_28866D8A0[a4])(a1, v30, a3, 13);
  v11 = 0;
  v12.i64[1] = 0;
  do
  {
    v30[v11] = vrhadd_s16(v30[v11], 0);
    ++v11;
  }

  while (v11 != 8);
  v12.i64[0] = v30[0];
  v7.i64[0] = v30[1];
  v13 = vzip1q_s16(v12, v7);
  v7.i64[0] = v30[2];
  v8.i64[0] = v30[3];
  v14 = vzip1q_s16(v7, v8);
  v8.i64[0] = v30[4];
  v9.i64[0] = v30[5];
  v15 = vzip1q_s16(v8, v9);
  v9.i64[0] = v30[6];
  v10.i64[0] = v30[7];
  v16 = vzip1q_s16(v9, v10);
  v17 = vzip1q_s32(v13, v14);
  v18 = vzip2q_s32(v13, v14);
  v19 = vzip1q_s32(v15, v16);
  v20 = vzip2q_s32(v15, v16);
  v21 = vzip2q_s64(v17, v19);
  v17.i64[1] = v19.i64[0];
  v29[0] = v17;
  v29[1] = v21;
  v22 = vzip2q_s64(v18, v20);
  v18.i64[1] = v20.i64[0];
  v29[2] = v18;
  v29[3] = v22;
  if (v6)
  {
    v23 = v29;
  }

  else
  {
    v24 = v29;
    for (i = 48; i != -16; i -= 16)
    {
      v26 = *v24++;
      *&v28[i] = v26;
    }

    v23 = v28;
  }

  return (v5)(v23, a2, 8, 13);
}

uint64_t sub_2779EC0B4(uint64_t result, int32x4_t *a2, int a3)
{
  v3 = 0;
  v10 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x16A1u);
  do
  {
    *&v9[v3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*(result + v3), *v4.i8), 0xCuLL), vmull_high_s16(*(result + v3), v4), 0xCuLL);
    v3 += 16;
  }

  while (v3 != 64);
  v5 = 0;
  v6 = a2 + 1;
  v7 = vdupq_n_s16(0x16A1u);
  do
  {
    v8 = *&v9[v5];
    v6[-1] = vrshrq_n_s32(vmull_s16(*v8.i8, *v7.i8), 0xCuLL);
    *v6 = vrshrq_n_s32(vmull_high_s16(v8, v7), 0xCuLL);
    v5 += 16;
    v6 = (v6 + 4 * a3);
  }

  while (v5 != 64);
  return result;
}

int16x8_t *sub_2779EC170(int16x8_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v21 = *MEMORY[0x277D85DE8];
  v5 = qword_277BEBCA0[a4 - 10];
  v6 = result[1];
  v7 = vqaddq_s16(*result, v6);
  v9 = result[2];
  v8 = result[3];
  v10 = vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_lane_s16(*result->i8, v5, 0), *v6.i8, v5, 1), *v8.i8, v5, 3), *v9.i8, v5, 2);
  v11 = vmlal_high_lane_s16(vmlal_high_lane_s16(vmlal_high_lane_s16(vmull_high_lane_s16(*result, v5, 0), v6, v5, 1), v8, v5, 3), v9, v5, 2);
  v12 = vmlal_lane_s16(vmlsl_lane_s16(vmlsl_lane_s16(vmull_lane_s16(*result->i8, v5, 3), *v9.i8, v5, 2), *v6.i8, v5, 0), *v8.i8, v5, 1);
  v13 = vmlal_high_lane_s16(vmlsl_high_lane_s16(vmlsl_high_lane_s16(vmull_high_lane_s16(*result, v5, 3), v9, v5, 2), v6, v5, 0), v8, v5, 1);
  v14 = vmlsl_lane_s16(vmull_lane_s16(*v7.i8, v5, 2), *v8.i8, v5, 2);
  v15 = vmlsl_high_lane_s16(vmull_high_lane_s16(v7, v5, 2), v8, v5, 2);
  v16 = vmul_s16(v5, 0x3000300030003);
  v20[0] = vrshrn_high_n_s32(vrshrn_n_s32(v10, 0xDuLL), v11, 0xDuLL);
  v20[1] = vrshrn_high_n_s32(vrshrn_n_s32(v14, 0xDuLL), v15, 0xDuLL);
  v20[2] = vrshrn_high_n_s32(vrshrn_n_s32(v12, 0xDuLL), v13, 0xDuLL);
  v20[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vsubq_s32(v12, v10), *v9.i8, v16, 2), 0xDuLL), vmlal_high_lane_s16(vsubq_s32(v13, v11), v9, v16, 2), 0xDuLL);
  v17 = a2 + 1;
  v18 = vdupq_n_s16(0x16A1u);
  do
  {
    v19 = v20[v4];
    v17[-1] = vrshrq_n_s32(vmull_s16(*v19.i8, *v18.i8), 0xCuLL);
    *v17 = vrshrq_n_s32(vmull_high_s16(v19, v18), 0xCuLL);
    ++v4;
    v17 = (v17 + 4 * a3);
  }

  while (v4 != 4);
  return result;
}

int16x8_t *sub_2779EC2A4(int16x8_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v17 = *MEMORY[0x277D85DE8];
  v5 = xmmword_277BEB8A0[16 * a4 - 160];
  v6 = result[1];
  v8 = result[2];
  v7 = result[3];
  v9 = vqaddq_s16(*result, v7);
  v10 = vqaddq_s16(v6, v8);
  v11 = vqsubq_s16(v6, v8);
  v12 = vqsubq_s16(*result, v7);
  v16[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5.i8, 1), *v9.i8, *v5.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5.i8, 1), v9, *v5.i8, 0), 0xDuLL);
  v16[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v11.i8, v5, 5), *v12.i8, v5, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v11, v5, 5), v12, v5, 4), 0xDuLL);
  v16[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5.i8, 2), *v9.i8, *v5.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5.i8, 2), v9, *v5.i8, 1), 0xDuLL);
  v16[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v11.i8, v5, 6), *v12.i8, v5, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v11, v5, 6), v12, v5, 5), 0xDuLL);
  v13 = a2 + 1;
  v14 = vdupq_n_s16(0x16A1u);
  do
  {
    v15 = v16[v4];
    v13[-1] = vrshrq_n_s32(vmull_s16(*v15.i8, *v14.i8), 0xCuLL);
    *v13 = vrshrq_n_s32(vmull_high_s16(v15, v14), 0xCuLL);
    ++v4;
    v13 = (v13 + 4 * a3);
  }

  while (v4 != 4);
  return result;
}

int16x4_t sub_2779EC3C4(void *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v8 = *MEMORY[0x277D85DE8];
  do
  {
    *&v7[v3] = *a1;
    v3 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 64);
  for (i = 0; i != 64; i += 8)
  {
    *&v7[i] = vshl_n_s16(*&v7[i], 2uLL);
  }

  for (j = 0; j != 64; j += 8)
  {
    result = vadd_s16(*&v7[j], *&v7[j]);
    *(a2 + j) = result;
  }

  return result;
}

int16x4_t sub_2779EC470(int16x4_t *a1, int16x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v42 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v34 + v4) = *a1;
    v4 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 64);
  for (i = 0; i != 64; i += 8)
  {
    *(&v34 + i) = vshl_n_s16(*(&v34 + i), 2uLL);
  }

  v6 = &xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 158];
  v8 = xmmword_277BEB8A0[16 * a4 - 157];
  v9 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v37, *v6, 3), v38, *v6, 0), 0xDuLL);
  v10 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v37, *v6, 2), v38, *v6, 3), 0xDuLL);
  v11 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v39, *v6, 1), v36, *v6, 0), 0xDuLL);
  v12 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v39, *v6, 2), v36, *v6, 1), 0xDuLL);
  v13 = vqadd_s16(v34, v9);
  v14 = vqsub_s16(v10, v41);
  v15 = vqsub_s16(v34, v9);
  v16 = vqadd_s16(v41, v10);
  v17 = vqsub_s16(v12, v35);
  v18 = vqadd_s16(v40, v11);
  v19 = vqadd_s16(v35, v12);
  v20 = vqsub_s16(v40, v11);
  v21 = vmlal_laneq_s16(vmull_laneq_s16(v18, *v6->i8, 5), v17, *v6->i8, 4);
  v22 = vmlal_laneq_s16(vmull_laneq_s16(v18, *v6->i8, 6), v17, *v6->i8, 5);
  v23 = vqrshrn_n_s32(v21, 0xDuLL);
  *v21.i8 = vqrshrn_n_s32(v22, 0xDuLL);
  v24 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v19, *v6->i8, 5), v20, *v6->i8, 4), 0xDuLL);
  v25 = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v19, *v6->i8, 6), v20, *v6->i8, 5), 0xDuLL);
  v26 = vqadd_s16(v13, v23);
  *v22.i8 = vqadd_s16(v14, *v21.i8);
  v27 = vqadd_s16(v15, v24);
  v28 = vqsub_s16(v25, v16);
  v29 = vqsub_s16(v13, v23);
  *v21.i8 = vqsub_s16(v14, *v21.i8);
  v30 = vqsub_s16(v15, v24);
  v31 = vqadd_s16(v16, v25);
  v32 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v22.i8, *v7.i8, 2), v26, *v7.i8, 1), 0xDuLL);
  a2[2] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v28, *v8.i8, 2), v27, *v8.i8, 1), 0xDuLL);
  a2[3] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v21.i8, v8, 4), v29, v8, 5), 0xDuLL);
  a2[4] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v21.i8, v8, 7), v29, v8, 4), 0xDuLL);
  a2[5] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v28, *v8.i8, 1), v27, *v8.i8, 0), 0xDuLL);
  a2[6] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v31, v7, 5), v30, v7, 4), 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v22.i8, *v7.i8, 1), v26, *v7.i8, 0), 0xDuLL);
  result = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v31, v7, 6), v30, v7, 5), 0xDuLL);
  *a2 = v32;
  a2[1] = result;
  return result;
}

int16x4_t sub_2779EC638(void *a1, int16x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v36 = *MEMORY[0x277D85DE8];
  do
  {
    *&v27[v4] = *a1;
    v4 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v4 != 64);
  for (i = 0; i != 64; i += 8)
  {
    *&v27[i] = vshl_n_s16(*&v27[i], 2uLL);
  }

  v6 = 0;
  v8 = xmmword_277BEB8A0[16 * a4 - 160];
  v7 = xmmword_277BEB8A0[16 * a4 - 159];
  for (j = 56; j != 24; j -= 8)
  {
    *(&v28 + v6) = vqadd_s16(*&v27[v6], *&v27[j]);
    v6 += 8;
  }

  v10 = 24;
  v11 = 32;
  do
  {
    *(&v28 + v11) = vqsub_s16(*&v27[v10], *&v27[v11]);
    v10 -= 8;
    v11 += 8;
  }

  while (v10 != -8);
  v12 = vqadd_s16(v28, v31);
  v13 = vqadd_s16(v29, v30);
  v14 = vqsub_s16(v29, v30);
  v15 = vqsub_s16(v28, v31);
  v16 = vmlal_lane_s16(vmull_lane_s16(v33, *v8.i8, 2), v34, *v8.i8, 1);
  v17 = vmlal_lane_s16(vmull_lane_s16(v13, *v8.i8, 1), v12, *v8.i8, 0);
  v18 = vmlal_lane_s16(vmull_lane_s16(v13, *v8.i8, 2), v12, *v8.i8, 1);
  v19 = vmlal_laneq_s16(vmull_laneq_s16(v14, v8, 5), v15, v8, 4);
  v20 = vmlal_laneq_s16(vmull_laneq_s16(v14, v8, 6), v15, v8, 5);
  v21 = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(v33, *v8.i8, 1), v34, *v8.i8, 0), 0xDuLL);
  v22 = vqrshrn_n_s32(v16, 0xDuLL);
  *v16.i8 = vqadd_s16(v32, v22);
  v23 = vqsub_s16(v32, v22);
  v24 = vqsub_s16(v35, v21);
  v25 = vqadd_s16(v35, v21);
  *a2 = vqrshrn_n_s32(v17, 0xDuLL);
  a2[1] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v7.i8, 1), v25, *v7.i8, 0), 0xDuLL);
  a2[6] = vqrshrn_n_s32(v20, 0xDuLL);
  a2[7] = vqrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v7.i8, 2), v25, *v7.i8, 1), 0xDuLL);
  a2[4] = vqrshrn_n_s32(v18, 0xDuLL);
  a2[5] = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v23, v7, 4), v24, v7, 5), 0xDuLL);
  result = vqrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(v23, v7, 7), v24, v7, 4), 0xDuLL);
  a2[2] = vqrshrn_n_s32(v19, 0xDuLL);
  a2[3] = result;
  return result;
}

uint64_t sub_2779EC7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v394 = v10;
  v11 = 0;
  v758 = *MEMORY[0x277D85DE8];
  v12 = v567;
  v13 = vdupq_n_s16(0x16A1u);
  v14 = vdupq_n_s16(0xE95Fu);
  v15 = &v569;
  v396 = vneg_f16(0x6161616161616161);
  v397 = vneg_f16(0x6565656565656565);
  v395 = vneg_f16(0x7777777777777777);
  v16 = 4038;
  v17 = 58408;
  v18 = 2185;
  v19 = 7895;
  v565 = v13;
  v564 = v14;
  do
  {
    v20 = 0;
    v21 = v8;
    do
    {
      v568[v20++] = *v21;
      v21 = (v21 + 2 * v9);
    }

    while (v20 != 64);
    v22 = 0;
    for (i = 63; i != 31; --i)
    {
      *&v741[v22 * 16] = vqaddq_s16(v568[v22], v568[i]);
      ++v22;
    }

    v24 = 32;
    do
    {
      *&v741[v24 * 16] = vqsubq_s16(v568[i--], v568[v24]);
      ++v24;
    }

    while (i != -1);
    v25 = 0;
    for (j = 496; j != 240; j -= 16)
    {
      *&v708[v25] = vqaddq_s16(*&v741[v25], *&v741[j]);
      v25 += 16;
    }

    v27 = 256;
    do
    {
      *&v708[v27] = vqsubq_s16(*&v741[j], *&v741[v27]);
      j -= 16;
      v27 += 16;
    }

    while (j != -16);
    v28 = 0;
    v740 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v742.i8, *v13.i8), *v757.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v742, v13), v757, v13), 0xDuLL);
    v739 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v743.i8, *v13.i8), *v756.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v743, v13), v756, v13), 0xDuLL);
    v725 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v742.i8, *v14.i8), *v757.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v742, v14), v757, v13), 0xDuLL);
    v726 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v743.i8, *v14.i8), *v756.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v743, v14), v756, v13), 0xDuLL);
    v738 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v744.i8, *v13.i8), *v755.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v744, v13), v755, v13), 0xDuLL);
    v737 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v745.i8, *v13.i8), *v754.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v745, v13), v754, v13), 0xDuLL);
    v727 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v744.i8, *v14.i8), *v755.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v744, v14), v755, v13), 0xDuLL);
    v728 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v745.i8, *v14.i8), *v754.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v745, v14), v754, v13), 0xDuLL);
    v736 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v746.i8, *v13.i8), *v753.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v746, v13), v753, v13), 0xDuLL);
    v735 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v747.i8, *v13.i8), *v752.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v747, v13), v752, v13), 0xDuLL);
    v729 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v746.i8, *v14.i8), *v753.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v746, v14), v753, v13), 0xDuLL);
    v730 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v747.i8, *v14.i8), *v752.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v747, v14), v752, v13), 0xDuLL);
    v734 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v748.i8, *v13.i8), *v751.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v748, v13), v751, v13), 0xDuLL);
    v733 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v749.i8, *v13.i8), *v750.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v749, v13), v750, v13), 0xDuLL);
    v731 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v748.i8, *v14.i8), *v751.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v748, v14), v751, v13), 0xDuLL);
    v732 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v749.i8, *v14.i8), *v750.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v749, v14), v750, v13), 0xDuLL);
    for (k = 240; k != 112; k -= 16)
    {
      *&v667[v28] = vqaddq_s16(*&v708[v28], *&v708[k]);
      v28 += 16;
    }

    v30 = 128;
    do
    {
      *&v667[v30] = vqsubq_s16(*&v708[k], *&v708[v30]);
      k -= 16;
      v30 += 16;
    }

    while (k != -16);
    v676 = v709;
    v677 = v710;
    v678 = v711;
    v679 = v712;
    v687 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v713.i8, *v13.i8), *v720.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v713, v13), v720, v13), 0xDuLL);
    v686 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v714.i8, *v13.i8), *v719.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v714, v13), v719, v13), 0xDuLL);
    v680 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v713.i8, *v14.i8), *v720.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v713, v14), v720, v13), 0xDuLL);
    v681 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v714.i8, *v14.i8), *v719.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v714, v14), v719, v13), 0xDuLL);
    v685 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v715.i8, *v13.i8), *v718.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v715, v13), v718, v13), 0xDuLL);
    v684 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v716.i8, *v13.i8), *v717.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v716, v13), v717, v13), 0xDuLL);
    v682 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v715.i8, *v14.i8), *v718.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v715, v14), v718, v13), 0xDuLL);
    v683 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v716.i8, *v14.i8), *v717.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v716, v14), v717, v13), 0xDuLL);
    v688 = v721;
    v689 = v722;
    v690 = v723;
    v691 = v724;
    v31 = 512;
    for (m = 752; m != 624; m -= 16)
    {
      *&v667[v31] = vqaddq_s16(*&v741[v31], *&v708[m]);
      v31 += 16;
    }

    v33 = 640;
    do
    {
      *&v667[v33] = vqsubq_s16(*&v741[m], *&v708[v33]);
      m -= 16;
      v33 += 16;
    }

    while (m != 496);
    v34 = 768;
    for (n = 1008; n != 880; n -= 16)
    {
      *&v667[v34] = vqsubq_s16(*&v741[n], *&v708[v34]);
      v34 += 16;
    }

    v36 = 880;
    for (ii = 896; ii != 1024; ii += 16)
    {
      *&v667[ii] = vqaddq_s16(*&v741[ii], *&v708[v36]);
      v36 -= 16;
    }

    v38 = 0;
    for (jj = 112; jj != 48; jj -= 16)
    {
      *(&v623 + v38) = vqaddq_s16(*&v667[v38], *&v667[jj]);
      v38 += 16;
    }

    v40 = 64;
    do
    {
      *(&v623 + v40) = vqsubq_s16(*&v667[jj], *&v667[v40]);
      jj -= 16;
      v40 += 16;
    }

    while (jj != -16);
    v634 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v670.i8, *v13.i8), *v673.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v670, v13), v673, v13), 0xDuLL);
    v633 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v671.i8, *v13.i8), *v672.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v671, v13), v672, v13), 0xDuLL);
    v631 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v670.i8, *v14.i8), *v673.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v670, v14), v673, v13), 0xDuLL);
    v632 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v671.i8, *v14.i8), *v672.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v671, v14), v672, v13), 0xDuLL);
    v41 = 256;
    for (kk = 368; kk != 304; kk -= 16)
    {
      *(&v623 + v41) = vqaddq_s16(*&v667[v41], *&v667[kk]);
      v41 += 16;
    }

    v43 = 320;
    do
    {
      *(&v623 + v43) = vqsubq_s16(*&v667[kk], *&v667[v43]);
      kk -= 16;
      v43 += 16;
    }

    while (kk != 240);
    v44 = 384;
    for (mm = 496; mm != 432; mm -= 16)
    {
      *(&v623 + v44) = vqsubq_s16(*&v667[mm], *&v667[v44]);
      v44 += 16;
    }

    v46 = 432;
    for (nn = 448; nn != 512; nn += 16)
    {
      *(&v623 + nn) = vqaddq_s16(*&v667[nn], *&v667[v46]);
      v46 -= 16;
    }

    v48 = vdupq_n_s16(0x1D90u);
    v49 = vdupq_n_s16(0xC3Fu);
    v50 = vdupq_n_s16(0xE270u);
    v666 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v692.i8, *v49.i8), *v707.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v692, v49), v707, v48), 0xDuLL);
    v665 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v693.i8, *v49.i8), *v706.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v693, v49), v706, v48), 0xDuLL);
    v651 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v692.i8, *v50.i8), *v707.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v692, v50), v707, v49), 0xDuLL);
    v652 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v693.i8, *v50.i8), *v706.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v693, v50), v706, v49), 0xDuLL);
    v664 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v694.i8, *v49.i8), *v705.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v694, v49), v705, v48), 0xDuLL);
    v663 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v695.i8, *v49.i8), *v704.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v695, v49), v704, v48), 0xDuLL);
    v653 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v694.i8, *v50.i8), *v705.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v694, v50), v705, v49), 0xDuLL);
    v654 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v695.i8, *v50.i8), *v704.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v695, v50), v704, v49), 0xDuLL);
    v51 = vdupq_n_s16(0xF3C1u);
    v662 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v696.i8, *v50.i8), *v703.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v696, v50), v703, v49), 0xDuLL);
    v661 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v697.i8, *v50.i8), *v702.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v697, v50), v702, v49), 0xDuLL);
    v655 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v696.i8, *v51.i8), *v703.i8, *v50.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v696, v51), v703, v50), 0xDuLL);
    v656 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v697.i8, *v51.i8), *v702.i8, *v50.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v697, v51), v702, v50), 0xDuLL);
    v660 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v698.i8, *v50.i8), *v701.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v698, v50), v701, v49), 0xDuLL);
    v659 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v699.i8, *v50.i8), *v700.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v699, v50), v700, v49), 0xDuLL);
    v657 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v698.i8, *v51.i8), *v701.i8, *v50.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v698, v51), v701, v50), 0xDuLL);
    v658 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v699.i8, *v51.i8), *v700.i8, *v50.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v699, v51), v700, v50), 0xDuLL);
    v569 = vqaddq_s16(v623, v626);
    v570 = vqaddq_s16(v624, v625);
    v571 = vqsubq_s16(v624, v625);
    v572 = vqsubq_s16(v623, v626);
    v574 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v628.i8, *v13.i8), *v629.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v628, v13), v629, v13), 0xDuLL);
    v573 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v628.i8, *v14.i8), *v629.i8, *v13.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v628, v14), v629, v13), 0xDuLL);
    v575 = vqaddq_s16(v668, v632);
    v576 = vqaddq_s16(v669, v631);
    v577 = vqsubq_s16(v669, v631);
    v578 = vqsubq_s16(v668, v632);
    v579 = vqsubq_s16(v675, v633);
    v580 = vqsubq_s16(v674, v634);
    v581 = vqaddq_s16(v674, v634);
    v582 = vqaddq_s16(v675, v633);
    v590 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v637.i8, *v49.i8), *v648.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v637, v49), v648, v48), 0xDuLL);
    v589 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v638.i8, *v49.i8), *v647.i8, *v48.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v638, v49), v647, v48), 0xDuLL);
    v583 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v637.i8, *v50.i8), *v648.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v637, v50), v648, v49), 0xDuLL);
    v584 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v638.i8, *v50.i8), *v647.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v638, v50), v647, v49), 0xDuLL);
    v588 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v639.i8, *v50.i8), *v646.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v639, v50), v646, v49), 0xDuLL);
    v587 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v640.i8, *v50.i8), *v645.i8, *v49.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v640, v50), v645, v49), 0xDuLL);
    v585 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v639.i8, *v51.i8), *v646.i8, *v50.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v639, v51), v646, v50), 0xDuLL);
    v586 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v640.i8, *v51.i8), *v645.i8, *v50.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v640, v51), v645, v50), 0xDuLL);
    v52 = 512;
    for (i1 = 624; i1 != 560; i1 -= 16)
    {
      *(&v569 + v52) = vqaddq_s16(*&v667[v52], *(&v623 + i1));
      v52 += 16;
    }

    v54 = 576;
    do
    {
      *(&v569 + v54) = vqsubq_s16(*&v667[i1], *(&v623 + v54));
      i1 -= 16;
      v54 += 16;
    }

    while (i1 != 496);
    v55 = 640;
    for (i2 = 752; i2 != 688; i2 -= 16)
    {
      *(&v569 + v55) = vqsubq_s16(*&v667[i2], *(&v623 + v55));
      v55 += 16;
    }

    v57 = 688;
    for (i3 = 704; i3 != 768; i3 += 16)
    {
      *(&v569 + i3) = vqaddq_s16(*&v667[i3], *(&v623 + v57));
      v57 -= 16;
    }

    v59 = 768;
    for (i4 = 880; i4 != 816; i4 -= 16)
    {
      *(&v569 + v59) = vqaddq_s16(*&v667[v59], *(&v623 + i4));
      v59 += 16;
    }

    v61 = 832;
    do
    {
      *(&v569 + v61) = vqsubq_s16(*&v667[i4], *(&v623 + v61));
      i4 -= 16;
      v61 += 16;
    }

    while (i4 != 752);
    v62 = 896;
    for (i5 = 1008; i5 != 944; i5 -= 16)
    {
      *(&v569 + v62) = vqsubq_s16(*&v667[i5], *(&v623 + v62));
      v62 += 16;
    }

    v64 = 944;
    for (i6 = 960; i6 != 1024; i6 += 16)
    {
      *(&v569 + i6) = vqaddq_s16(*&v667[i6], *(&v623 + v64));
      v64 -= 16;
    }

    v66 = 0;
    v563 = vmlal_s16(vmull_s16(*v571.i8, *v49.i8), *v572.i8, *v48.i8);
    v562 = vmlal_high_s16(vmull_high_s16(v571, v49), v572, v48);
    v561 = vmlal_s16(vmull_s16(*v571.i8, *v50.i8), *v572.i8, *v49.i8);
    v560 = vmlal_high_s16(vmull_high_s16(v571, v50), v572, v49);
    v67 = vmlal_s16(vmull_s16(*v576.i8, *v49.i8), *v581.i8, *v48.i8);
    v68 = vmlal_high_s16(vmull_high_s16(v576, v49), v581, v48);
    v69 = vmlal_s16(vmull_s16(*v576.i8, *v50.i8), *v581.i8, *v49.i8);
    v70 = vmlal_high_s16(vmull_high_s16(v576, v50), v581, v49);
    v71 = vqaddq_s16(v636, v583);
    v72 = vqsubq_s16(v636, v583);
    v73 = vqsubq_s16(v649, v590);
    v74 = vqaddq_s16(v649, v590);
    v75 = vdupq_n_s16(0x1F63u);
    v516 = vmlal_s16(vmull_s16(*v577.i8, *v50.i8), *v580.i8, *v49.i8);
    v76 = vdupq_n_s16(0x63Eu);
    v77 = vdupq_n_s16(0xE09Du);
    v514 = vmlal_high_s16(vmull_high_s16(v577, v50), v580, v49);
    v512 = vmlal_s16(vmull_s16(*v577.i8, *v51.i8), *v580.i8, *v50.i8);
    v508 = vmlal_high_s16(vmull_high_s16(v577, v51), v580, v50);
    v78 = vmlal_s16(vmull_s16(*v593.i8, *v76.i8), *v620.i8, *v75.i8);
    v79 = vmlal_high_s16(vmull_high_s16(v593, v76), v620, v75);
    v80 = vmlal_s16(vmull_s16(*v593.i8, *v77.i8), *v620.i8, *v76.i8);
    v81 = vmlal_high_s16(vmull_high_s16(v593, v77), v620, v76);
    v498 = vmlal_s16(vmull_s16(*v594.i8, *v76.i8), *v619.i8, *v75.i8);
    v496 = vmlal_high_s16(vmull_high_s16(v594, v76), v619, v75);
    v494 = vmlal_s16(vmull_s16(*v594.i8, *v77.i8), *v619.i8, *v76.i8);
    v492 = vmlal_high_s16(vmull_high_s16(v594, v77), v619, v76);
    v524 = vmlal_s16(vmull_s16(*v595.i8, *v77.i8), *v618.i8, *v76.i8);
    v522 = vmlal_high_s16(vmull_high_s16(v595, v77), v618, v76);
    v82 = vdupq_n_s16(0xF9C2u);
    v520 = vmlal_s16(vmull_s16(*v595.i8, *v82.i8), *v618.i8, *v77.i8);
    v518 = vmlal_high_s16(vmull_high_s16(v595, v82), v618, v77);
    v83 = vmlal_s16(vmull_s16(*v596.i8, *v77.i8), *v617.i8, *v76.i8);
    v84 = vmlal_high_s16(vmull_high_s16(v596, v77), v617, v76);
    v85 = vmlal_s16(vmull_s16(*v596.i8, *v82.i8), *v617.i8, *v77.i8);
    v86 = vmlal_high_s16(vmull_high_s16(v596, v82), v617, v77);
    v87 = vqaddq_s16(v627, v573);
    v88 = vqaddq_s16(v630, v574);
    v559 = vmlal_s16(vmull_s16(*v87.i8, *v76.i8), *v88.i8, *v75.i8);
    v558 = vmlal_high_s16(vmull_high_s16(v87, v76), v88, v75);
    v557 = vmlal_s16(vmull_s16(*v87.i8, *v77.i8), *v88.i8, *v76.i8);
    v556 = vmlal_high_s16(vmull_high_s16(v87, v77), v88, v76);
    v528 = vmlal_s16(vmull_s16(*v71.i8, *v76.i8), *v74.i8, *v75.i8);
    v526 = vmlal_high_s16(vmull_high_s16(v71, v76), v74, v75);
    v490 = vmlal_s16(vmull_s16(*v71.i8, *v77.i8), *v74.i8, *v76.i8);
    v488 = vmlal_high_s16(vmull_high_s16(v71, v77), v74, v76);
    v506 = vmlal_s16(vmull_s16(*v72.i8, *v77.i8), *v73.i8, *v76.i8);
    v504 = vmlal_high_s16(vmull_high_s16(v72, v77), v73, v76);
    v502 = vmlal_s16(vmull_s16(*v72.i8, *v82.i8), *v73.i8, *v77.i8);
    v500 = vmlal_high_s16(vmull_high_s16(v72, v82), v73, v77);
    v89 = vqsubq_s16(v627, v573);
    v90 = vqsubq_s16(v630, v574);
    v91 = vqsubq_s16(v641, v586);
    v92 = vqaddq_s16(v641, v586);
    v93 = vqaddq_s16(v644, v587);
    v94 = vqsubq_s16(v644, v587);
    v95 = vdupq_n_s16(0x11C7u);
    v96 = vdupq_n_s16(0x1A9Bu);
    v97 = vmlal_s16(vmull_s16(*v601.i8, *v96.i8), *v612.i8, *v95.i8);
    v98 = vmlal_high_s16(vmull_high_s16(v601, v96), v612, v95);
    v99 = vdupq_n_s16(0xEE39u);
    v100 = vmlal_s16(vmull_s16(*v601.i8, *v99.i8), *v612.i8, *v96.i8);
    v101 = vmlal_high_s16(vmull_high_s16(v601, v99), v612, v96);
    v538 = vmlal_s16(vmull_s16(*v602.i8, *v96.i8), *v611.i8, *v95.i8);
    v536 = vmlal_high_s16(vmull_high_s16(v602, v96), v611, v95);
    v534 = vmlal_s16(vmull_s16(*v602.i8, *v99.i8), *v611.i8, *v96.i8);
    v532 = vmlal_high_s16(vmull_high_s16(v602, v99), v611, v96);
    v546 = vmlal_s16(vmull_s16(*v603.i8, *v99.i8), *v610.i8, *v96.i8);
    v544 = vmlal_high_s16(vmull_high_s16(v603, v99), v610, v96);
    v542 = vmlal_s16(vmull_s16(*v603.i8, v397), *v610.i8, *v99.i8);
    v540 = vmlal_high_s16(vmull_s16(*&vextq_s8(v603, v603, 8uLL), v397), v610, v99);
    v102 = vmlal_s16(vmull_s16(*v604.i8, *v99.i8), *v609.i8, *v96.i8);
    v103 = vmlal_high_s16(vmull_high_s16(v604, v99), v609, v96);
    v104 = vmlal_s16(vmull_s16(*v604.i8, v397), *v609.i8, *v99.i8);
    v105 = vmlal_high_s16(vmull_s16(*&vextq_s8(v604, v604, 8uLL), v397), v609, v99);
    v553 = vmlal_s16(vmull_s16(*v89.i8, *v96.i8), *v90.i8, *v95.i8);
    v552 = vmlal_high_s16(vmull_high_s16(v89, v96), v90, v95);
    v551 = vmlal_s16(vmull_s16(*v89.i8, *v99.i8), *v90.i8, *v96.i8);
    v550 = vmlal_high_s16(vmull_high_s16(v89, v99), v90, v96);
    v486 = vmlal_s16(vmull_s16(*v91.i8, *v96.i8), *v94.i8, *v95.i8);
    v484 = vmlal_high_s16(vmull_high_s16(v91, v96), v94, v95);
    v482 = vmlal_s16(vmull_s16(*v91.i8, *v99.i8), *v94.i8, *v96.i8);
    v480 = vmlal_high_s16(vmull_high_s16(v91, v99), v94, v96);
    v474 = vmlal_s16(vmull_s16(*v92.i8, *v99.i8), *v93.i8, *v96.i8);
    v472 = vmlal_high_s16(vmull_high_s16(v92, v99), v93, v96);
    v468 = vmlal_high_s16(vmull_s16(*&vextq_s8(v92, v92, 8uLL), v397), v93, v99);
    v470 = vmlal_s16(vmull_s16(*v92.i8, v397), *v93.i8, *v99.i8);
    v106 = vrshrn_high_n_s32(vrshrn_n_s32(v67, 0xDuLL), v68, 0xDuLL);
    v107 = vrshrn_high_n_s32(vrshrn_n_s32(v69, 0xDuLL), v70, 0xDuLL);
    v108 = vrshrn_high_n_s32(vrshrn_n_s32(v78, 0xDuLL), v79, 0xDuLL);
    v109 = vrshrn_high_n_s32(vrshrn_n_s32(v80, 0xDuLL), v81, 0xDuLL);
    v110 = vqaddq_s16(v592, v109);
    v111 = vqsubq_s16(v592, v109);
    v112 = vqsubq_s16(v621, v108);
    v113 = vqaddq_s16(v621, v108);
    v114 = vqaddq_s16(v575, v107);
    v115 = vqaddq_s16(v582, v106);
    v116 = vdupq_n_s16(0x1FD9u);
    v117 = vdupq_n_s16(0x323u);
    v549 = vmlal_s16(vmull_s16(*v114.i8, *v117.i8), *v115.i8, *v116.i8);
    v548 = vmlal_high_s16(vmull_high_s16(v114, v117), v115, v116);
    v118 = vdupq_n_s16(0xE027u);
    v555 = vmlal_s16(vmull_s16(*v114.i8, *v118.i8), *v115.i8, *v117.i8);
    v554 = vmlal_high_s16(vmull_high_s16(v114, v118), v115, v117);
    v119 = vmlal_s16(vmull_s16(*v110.i8, *v117.i8), *v113.i8, *v116.i8);
    v120 = vmlal_high_s16(vmull_high_s16(v110, v117), v113, v116);
    v121 = vmlal_s16(vmull_s16(*v110.i8, *v118.i8), *v113.i8, *v117.i8);
    v122 = vmlal_high_s16(vmull_high_s16(v110, v118), v113, v117);
    v123 = vmlal_s16(vmull_s16(*v111.i8, *v118.i8), *v112.i8, *v117.i8);
    v124 = vmlal_high_s16(vmull_high_s16(v111, v118), v112, v117);
    v125 = vdupq_n_s16(0xFCDDu);
    v126 = vmlal_s16(vmull_s16(*v111.i8, *v125.i8), *v112.i8, *v118.i8);
    v127 = vmlal_high_s16(vmull_high_s16(v111, v125), v112, v118);
    v128 = vrshrn_high_n_s32(vrshrn_n_s32(v83, 0xDuLL), v84, 0xDuLL);
    v129 = vrshrn_high_n_s32(vrshrn_n_s32(v85, 0xDuLL), v86, 0xDuLL);
    v130 = vqsubq_s16(v575, v107);
    v131 = vqsubq_s16(v582, v106);
    v132 = vqsubq_s16(v597, v129);
    v133 = vqaddq_s16(v597, v129);
    v134 = vqaddq_s16(v616, v128);
    v135 = vdupq_n_s16(0x144Du);
    v136 = vdupq_n_s16(0x18BDu);
    v137 = vqsubq_s16(v616, v128);
    v138 = vmlal_s16(vmull_s16(*v130.i8, *v136.i8), *v131.i8, *v135.i8);
    v139 = vdupq_n_s16(0xEBB3u);
    v140 = vmlal_high_s16(vmull_high_s16(v130, v136), v131, v135);
    v531 = vmlal_s16(vmull_s16(*v130.i8, *v139.i8), *v131.i8, *v136.i8);
    v530 = vmlal_high_s16(vmull_high_s16(v130, v139), v131, v136);
    v418 = vmlal_s16(vmull_s16(*v132.i8, *v136.i8), *v137.i8, *v135.i8);
    v141 = vmlal_high_s16(vmull_high_s16(v132, v136), v137, v135);
    v142 = vmlal_s16(vmull_s16(*v132.i8, *v139.i8), *v137.i8, *v136.i8);
    v143 = vmlal_high_s16(vmull_high_s16(v132, v139), v137, v136);
    v432 = vmlal_s16(vmull_s16(*v133.i8, *v139.i8), *v134.i8, *v136.i8);
    v144 = vdupq_n_s16(0xE743u);
    v430 = vmlal_high_s16(vmull_high_s16(v133, v139), v134, v136);
    v428 = vmlal_s16(vmull_s16(*v133.i8, *v144.i8), *v134.i8, *v139.i8);
    v425 = vmlal_high_s16(vmull_high_s16(v133, v144), v134, v139);
    v145 = vrshrn_high_n_s32(vrshrn_n_s32(v516, 0xDuLL), v514, 0xDuLL);
    v146 = vrshrn_high_n_s32(vrshrn_n_s32(v512, 0xDuLL), v508, 0xDuLL);
    v147 = vrshrn_high_n_s32(vrshrn_n_s32(v97, 0xDuLL), v98, 0xDuLL);
    v148 = vrshrn_high_n_s32(vrshrn_n_s32(v100, 0xDuLL), v101, 0xDuLL);
    v149 = vqaddq_s16(v600, v148);
    v150 = vqsubq_s16(v600, v148);
    v151 = vqsubq_s16(v613, v147);
    v152 = vqaddq_s16(v613, v147);
    v153 = vqsubq_s16(v578, v146);
    v154 = vdupq_n_s16(0x1C39u);
    v155 = vdupq_n_s16(0xF16u);
    v156 = vqsubq_s16(v579, v145);
    v157 = vmlal_s16(vmull_s16(*v153.i8, *v155.i8), *v156.i8, *v154.i8);
    v158 = vdupq_n_s16(0xE3C7u);
    v517 = vmlal_high_s16(vmull_high_s16(v153, v155), v156, v154);
    v515 = vmlal_s16(vmull_s16(*v153.i8, *v158.i8), *v156.i8, *v155.i8);
    v513 = vmlal_high_s16(vmull_high_s16(v153, v158), v156, v155);
    v442 = vmlal_s16(vmull_s16(*v149.i8, *v155.i8), *v152.i8, *v154.i8);
    v440 = vmlal_high_s16(vmull_high_s16(v149, v155), v152, v154);
    v438 = vmlal_s16(vmull_s16(*v149.i8, *v158.i8), *v152.i8, *v155.i8);
    v436 = vmlal_high_s16(vmull_high_s16(v149, v158), v152, v155);
    v450 = vmlal_s16(vmull_s16(*v150.i8, *v158.i8), *v151.i8, *v155.i8);
    v159 = vdupq_n_s16(0xF0EAu);
    v448 = vmlal_high_s16(vmull_high_s16(v150, v158), v151, v155);
    v444 = vmlal_high_s16(vmull_high_s16(v150, v159), v151, v158);
    v446 = vmlal_s16(vmull_s16(*v150.i8, *v159.i8), *v151.i8, *v158.i8);
    v160 = vrshrn_high_n_s32(vrshrn_n_s32(v102, 0xDuLL), v103, 0xDuLL);
    v161 = vrshrn_high_n_s32(vrshrn_n_s32(v104, 0xDuLL), v105, 0xDuLL);
    v162 = vqaddq_s16(v578, v146);
    v163 = vqaddq_s16(v579, v145);
    v164 = vqsubq_s16(v605, v161);
    v165 = vqaddq_s16(v605, v161);
    v166 = vqaddq_s16(v608, v160);
    v167 = vdupq_n_s16(0x94Au);
    v168 = vqsubq_s16(v608, v160);
    v169 = vdupq_n_s16(0x1E9Fu);
    v170 = vmlal_s16(vmull_s16(*v162.i8, *v169.i8), *v163.i8, *v167.i8);
    v511 = vmlal_high_s16(vmull_high_s16(v162, v169), v163, v167);
    v171 = vdupq_n_s16(0xF6B6u);
    v510 = vmlal_s16(vmull_s16(*v162.i8, *v171.i8), *v163.i8, *v169.i8);
    v509 = vmlal_high_s16(vmull_high_s16(v162, v171), v163, v169);
    v458 = vmlal_s16(vmull_s16(*v164.i8, *v169.i8), *v168.i8, *v167.i8);
    v456 = vmlal_high_s16(vmull_high_s16(v164, v169), v168, v167);
    v454 = vmlal_s16(vmull_s16(*v164.i8, *v171.i8), *v168.i8, *v169.i8);
    v452 = vmlal_high_s16(vmull_high_s16(v164, v171), v168, v169);
    v172 = vmlal_s16(vmull_s16(*v165.i8, *v171.i8), *v166.i8, *v169.i8);
    v173 = vmlal_high_s16(vmull_high_s16(v165, v171), v166, v169);
    v174 = vmlal_s16(vmull_s16(*v165.i8, v396), *v166.i8, *v171.i8);
    v175 = vmlal_high_s16(vmull_s16(*&vextq_s8(v165, v165, 8uLL), v396), v166, v171);
    v176 = vrshrn_high_n_s32(vrshrn_n_s32(v528, 0xDuLL), v526, 0xDuLL);
    v177 = vrshrn_high_n_s32(vrshrn_n_s32(v490, 0xDuLL), v488, 0xDuLL);
    v178 = vqaddq_s16(v635, v584);
    v179 = vqaddq_s16(v650, v589);
    v180 = vqaddq_s16(v178, v177);
    v181 = vqaddq_s16(v179, v176);
    v182 = vdupq_n_s16(0x1FF6u);
    v183 = vdupq_n_s16(0x192u);
    v491 = vmlal_s16(vmull_s16(*v180.i8, *v183.i8), *v181.i8, *v182.i8);
    v489 = vmlal_high_s16(vmull_high_s16(v180, v183), v181, v182);
    v184 = vdupq_n_s16(0xE00Au);
    v529 = vmlal_s16(vmull_s16(*v180.i8, *v184.i8), *v181.i8, *v183.i8);
    v527 = vmlal_high_s16(vmull_high_s16(v180, v184), v181, v183);
    v185 = vqsubq_s16(v178, v177);
    v186 = vqsubq_s16(v179, v176);
    v187 = vdupq_n_s16(0x157Du);
    v188 = vdupq_n_s16(0x17B6u);
    v479 = vmlal_s16(vmull_s16(*v185.i8, *v188.i8), *v186.i8, *v187.i8);
    v478 = vmlal_high_s16(vmull_high_s16(v185, v188), v186, v187);
    v189 = vdupq_n_s16(0xEA83u);
    v476 = vmlal_high_s16(vmull_high_s16(v185, v189), v186, v188);
    v477 = vmlal_s16(vmull_s16(*v185.i8, *v189.i8), *v186.i8, *v188.i8);
    v190 = vqsubq_s16(v635, v584);
    v191 = vqsubq_s16(v650, v589);
    v192 = vrshrn_high_n_s32(vrshrn_n_s32(v506, 0xDuLL), v504, 0xDuLL);
    v193 = vrshrn_high_n_s32(vrshrn_n_s32(v502, 0xDuLL), v500, 0xDuLL);
    v194 = vqsubq_s16(v190, v193);
    v195 = vqsubq_s16(v191, v192);
    v196 = vdupq_n_s16(0x1CEDu);
    v197 = vdupq_n_s16(0xDAFu);
    v503 = vmlal_s16(vmull_s16(*v194.i8, *v197.i8), *v195.i8, *v196.i8);
    v501 = vmlal_high_s16(vmull_high_s16(v194, v197), v195, v196);
    v198 = vdupq_n_s16(0xE313u);
    v507 = vmlal_s16(vmull_s16(*v194.i8, *v198.i8), *v195.i8, *v197.i8);
    v505 = vmlal_high_s16(vmull_high_s16(v194, v198), v195, v197);
    v199 = vqaddq_s16(v190, v193);
    v200 = vqaddq_s16(v191, v192);
    v201 = vdupq_n_s16(0xF538u);
    v202 = vmull_s16(*v199.i8, *v201.i8);
    v203 = vmull_high_s16(v199, v201);
    v204 = vdupq_n_s16(0x1E21u);
    v464 = vmlal_high_s16(v203, v200, v204);
    v465 = vmlal_s16(v202, *v200.i8, *v204.i8);
    v205 = vrshrn_high_n_s32(vrshrn_n_s32(v486, 0xDuLL), v484, 0xDuLL);
    v206 = vrshrn_high_n_s32(vrshrn_n_s32(v482, 0xDuLL), v480, 0xDuLL);
    v207 = vqsubq_s16(v642, v585);
    v208 = vqsubq_s16(v643, v588);
    v209 = vqaddq_s16(v207, v206);
    v210 = vqaddq_s16(v208, v205);
    v211 = vdupq_n_s16(0x1F0Au);
    v212 = vdupq_n_s16(0x7C6u);
    v461 = vmlal_s16(vmull_s16(*v209.i8, *v212.i8), *v210.i8, *v211.i8);
    v460 = vmlal_high_s16(vmull_high_s16(v209, v212), v210, v211);
    v213 = vdupq_n_s16(0xE0F6u);
    v487 = vmlal_s16(vmull_s16(*v209.i8, *v213.i8), *v210.i8, *v212.i8);
    v485 = vmlal_high_s16(vmull_high_s16(v209, v213), v210, v212);
    v214 = vqsubq_s16(v207, v206);
    v215 = vqsubq_s16(v208, v205);
    v216 = vdupq_n_s16(0x1074u);
    v217 = vdupq_n_s16(0x1B73u);
    v483 = vmlal_s16(vmull_s16(*v214.i8, *v217.i8), *v215.i8, *v216.i8);
    v481 = vmlal_high_s16(vmull_high_s16(v214, v217), v215, v216);
    v218 = vdupq_n_s16(0xEF8Cu);
    v466 = vmlal_high_s16(vmull_high_s16(v214, v218), v215, v217);
    v467 = vmlal_s16(vmull_s16(*v214.i8, *v218.i8), *v215.i8, *v217.i8);
    v219 = vqaddq_s16(v642, v585);
    v220 = vqaddq_s16(v643, v588);
    v221 = vrshrn_high_n_s32(vrshrn_n_s32(v474, 0xDuLL), v472, 0xDuLL);
    v222 = vrshrn_high_n_s32(vrshrn_n_s32(v470, 0xDuLL), v468, 0xDuLL);
    v223 = vqsubq_s16(v219, v222);
    v224 = vqsubq_s16(v220, v221);
    v225 = vdupq_n_s16(0x19B4u);
    v226 = vdupq_n_s16(0x1310u);
    v463 = vmlal_s16(vmull_s16(*v223.i8, *v226.i8), *v224.i8, *v225.i8);
    v462 = vmlal_high_s16(vmull_high_s16(v223, v226), v224, v225);
    v227 = vdupq_n_s16(0xE64Cu);
    v469 = vmlal_high_s16(vmull_high_s16(v223, v227), v224, v226);
    v471 = vmlal_s16(vmull_s16(*v223.i8, *v227.i8), *v224.i8, *v226.i8);
    v228 = vqaddq_s16(v219, v222);
    v229 = vqaddq_s16(v220, v221);
    v230 = vdupq_n_s16(0x4B2u);
    v231 = vdupq_n_s16(0x1FA7u);
    v475 = vmlal_s16(vmull_s16(*v228.i8, *v231.i8), *v229.i8, *v230.i8);
    v473 = vmlal_high_s16(vmull_high_s16(v228, v231), v229, v230);
    v232 = vdupq_n_s16(0xFB4Eu);
    v434 = vmlal_high_s16(vmull_high_s16(v228, v232), v229, v231);
    v435 = vmlal_s16(vmull_s16(*v228.i8, *v232.i8), *v229.i8, *v231.i8);
    v233 = vrshrn_high_n_s32(vrshrn_n_s32(v498, 0xDuLL), v496, 0xDuLL);
    v234 = vrshrn_high_n_s32(vrshrn_n_s32(v494, 0xDuLL), v492, 0xDuLL);
    v417 = vrshrn_high_n_s32(vrshrn_n_s32(v119, 0xDuLL), v120, 0xDuLL);
    v420 = vrshrn_high_n_s32(vrshrn_n_s32(v121, 0xDuLL), v122, 0xDuLL);
    v421 = vqaddq_s16(v591, v234);
    v416 = vqaddq_s16(v622, v233);
    v235 = vqsubq_s16(v421, v420);
    v236 = vqsubq_s16(v416, v417);
    v237 = vdupq_n_s16(0x1611u);
    v238 = vdupq_n_s16(0x172Du);
    v499 = vmlal_s16(vmull_s16(*v235.i8, *v238.i8), *v236.i8, *v237.i8);
    v497 = vmlal_high_s16(vmull_high_s16(v235, v238), v236, v237);
    v239 = vdupq_n_s16(0xE9EFu);
    v495 = vmlal_s16(vmull_s16(*v235.i8, *v239.i8), *v236.i8, *v238.i8);
    v493 = vmlal_high_s16(vmull_high_s16(v235, v239), v236, v238);
    v240 = vqsubq_s16(v591, v234);
    v241 = vqsubq_s16(v622, v233);
    v242 = vrshrn_high_n_s32(vrshrn_n_s32(v123, 0xDuLL), v124, 0xDuLL);
    v243 = vrshrn_high_n_s32(vrshrn_n_s32(v126, 0xDuLL), v127, 0xDuLL);
    v244 = vqsubq_s16(v240, v243);
    v245 = vqsubq_s16(v241, v242);
    v246 = vdupq_n_s16(0x1D41u);
    v247 = vdupq_n_s16(0xCF8u);
    v415 = vmlal_s16(vmull_s16(*v244.i8, *v247.i8), *v245.i8, *v246.i8);
    v414 = vmlal_high_s16(vmull_high_s16(v244, v247), v245, v246);
    v248 = vdupq_n_s16(0xE2BFu);
    v427 = vmlal_s16(vmull_s16(*v244.i8, *v248.i8), *v245.i8, *v247.i8);
    v424 = vmlal_high_s16(vmull_high_s16(v244, v248), v245, v247);
    v249 = vqaddq_s16(v240, v243);
    v250 = vqaddq_s16(v241, v242);
    v251 = vdupq_n_s16(0xB84u);
    v252 = vdupq_n_s16(0x1DDBu);
    v423 = vmlal_s16(vmull_s16(*v249.i8, *v252.i8), *v250.i8, *v251.i8);
    v422 = vmlal_high_s16(vmull_high_s16(v249, v252), v250, v251);
    v253 = vdupq_n_s16(0xF47Cu);
    v412 = vmlal_high_s16(vmull_high_s16(v249, v253), v250, v252);
    v413 = vmlal_s16(vmull_s16(*v249.i8, *v253.i8), *v250.i8, *v252.i8);
    v254 = vrshrn_high_n_s32(vrshrn_n_s32(v524, 0xDuLL), v522, 0xDuLL);
    v255 = vrshrn_high_n_s32(vrshrn_n_s32(v520, 0xDuLL), v518, 0xDuLL);
    v256 = vrshrn_high_n_s32(vrshrn_n_s32(v418, 0xDuLL), v141, 0xDuLL);
    v257 = vrshrn_high_n_s32(vrshrn_n_s32(v142, 0xDuLL), v143, 0xDuLL);
    v258 = vqsubq_s16(v598, v255);
    v259 = vqsubq_s16(v615, v254);
    v260 = vqaddq_s16(v258, v257);
    v261 = vqaddq_s16(v259, v256);
    v262 = vdupq_n_s16(0x1F39u);
    v263 = vdupq_n_s16(0x703u);
    v419 = vmlal_s16(vmull_s16(*v260.i8, *v263.i8), *v261.i8, *v262.i8);
    v411 = vmlal_high_s16(vmull_high_s16(v260, v263), v261, v262);
    v264 = vdupq_n_s16(0xE0C7u);
    v525 = vmlal_s16(vmull_s16(*v260.i8, *v264.i8), *v261.i8, *v263.i8);
    v523 = vmlal_high_s16(vmull_high_s16(v260, v264), v261, v263);
    v265 = vqsubq_s16(v258, v257);
    v266 = vqsubq_s16(v259, v256);
    v267 = vdupq_n_s16(0x111Fu);
    v268 = vdupq_n_s16(0x1B09u);
    v521 = vmlal_s16(vmull_s16(*v265.i8, *v268.i8), *v266.i8, *v267.i8);
    v519 = vmlal_high_s16(vmull_high_s16(v265, v268), v266, v267);
    v269 = vdupq_n_s16(0xEEE1u);
    v409 = vmlal_high_s16(vmull_high_s16(v265, v269), v266, v268);
    v410 = vmlal_s16(vmull_s16(*v265.i8, *v269.i8), *v266.i8, *v268.i8);
    v270 = vqaddq_s16(v598, v255);
    v271 = vqaddq_s16(v615, v254);
    v272 = vrshrn_high_n_s32(vrshrn_n_s32(v432, 0xDuLL), v430, 0xDuLL);
    v273 = vrshrn_high_n_s32(vrshrn_n_s32(v428, 0xDuLL), v425, 0xDuLL);
    v274 = vqsubq_s16(v270, v273);
    v275 = vqsubq_s16(v271, v272);
    v276 = vdupq_n_s16(0x1A2Au);
    v277 = vdupq_n_s16(0x126Du);
    v408 = vmlal_s16(vmull_s16(*v274.i8, *v277.i8), *v275.i8, *v276.i8);
    v407 = vmlal_high_s16(vmull_high_s16(v274, v277), v275, v276);
    v278 = vdupq_n_s16(0xE5D6u);
    v426 = vmlal_high_s16(vmull_high_s16(v274, v278), v275, v277);
    v279 = vqaddq_s16(v270, v273);
    v280 = vqaddq_s16(v271, v272);
    v281 = vdupq_n_s16(0x579u);
    v282 = vdupq_n_s16(0x1F87u);
    v433 = vmlal_s16(vmull_s16(*v279.i8, *v282.i8), *v280.i8, *v281.i8);
    v429 = vmlal_s16(vmull_s16(*v274.i8, *v278.i8), *v275.i8, *v277.i8);
    v431 = vmlal_high_s16(vmull_high_s16(v279, v282), v280, v281);
    v283 = vdupq_n_s16(0xFA87u);
    v405 = vmlal_high_s16(vmull_high_s16(v279, v283), v280, v282);
    v406 = vmlal_s16(vmull_s16(*v279.i8, *v283.i8), *v280.i8, *v282.i8);
    v284 = vrshrn_high_n_s32(vrshrn_n_s32(v538, 0xDuLL), v536, 0xDuLL);
    v285 = vrshrn_high_n_s32(vrshrn_n_s32(v534, 0xDuLL), v532, 0xDuLL);
    v286 = vrshrn_high_n_s32(vrshrn_n_s32(v442, 0xDuLL), v440, 0xDuLL);
    v287 = vrshrn_high_n_s32(vrshrn_n_s32(v438, 0xDuLL), v436, 0xDuLL);
    v288 = vqaddq_s16(v599, v285);
    v289 = vqaddq_s16(v614, v284);
    v290 = vqaddq_s16(v288, v287);
    v291 = vqaddq_s16(v289, v286);
    v292 = vdupq_n_s16(0x1FC2u);
    v293 = vdupq_n_s16(0x3EBu);
    v439 = vmlal_s16(vmull_s16(*v290.i8, *v293.i8), *v291.i8, *v292.i8);
    v437 = vmlal_high_s16(vmull_high_s16(v290, v293), v291, v292);
    v294 = vdupq_n_s16(0xE03Eu);
    v539 = vmlal_s16(vmull_s16(*v290.i8, *v294.i8), *v291.i8, *v293.i8);
    v537 = vmlal_high_s16(vmull_high_s16(v290, v294), v291, v293);
    v295 = vqsubq_s16(v288, v287);
    v296 = vqsubq_s16(v289, v286);
    v297 = vdupq_n_s16(0x13B0u);
    v298 = vdupq_n_s16(0x193Au);
    v535 = vmlal_s16(vmull_s16(*v295.i8, *v298.i8), *v296.i8, *v297.i8);
    v533 = vmlal_high_s16(vmull_high_s16(v295, v298), v296, v297);
    v299 = vdupq_n_s16(0xEC50u);
    v441 = vmlal_high_s16(vmull_high_s16(v295, v299), v296, v298);
    v443 = vmlal_s16(vmull_s16(*v295.i8, *v299.i8), *v296.i8, *v298.i8);
    v300 = vqsubq_s16(v599, v285);
    v301 = vqsubq_s16(v614, v284);
    v302 = vrshrn_high_n_s32(vrshrn_n_s32(v450, 0xDuLL), v448, 0xDuLL);
    v303 = vrshrn_high_n_s32(vrshrn_n_s32(v446, 0xDuLL), v444, 0xDuLL);
    v304 = vqsubq_s16(v300, v303);
    v305 = vqsubq_s16(v301, v302);
    v306 = vdupq_n_s16(0x1BD8u);
    v307 = vdupq_n_s16(0xFC6u);
    v404 = vmlal_s16(vmull_s16(*v304.i8, *v307.i8), *v305.i8, *v306.i8);
    v403 = vmlal_high_s16(vmull_high_s16(v304, v307), v305, v306);
    v308 = vdupq_n_s16(0xE428u);
    v447 = vmlal_high_s16(vmull_high_s16(v304, v308), v305, v307);
    v449 = vmlal_s16(vmull_s16(*v304.i8, *v308.i8), *v305.i8, *v307.i8);
    v309 = vqaddq_s16(v300, v303);
    v310 = vqaddq_s16(v301, v302);
    v311 = vdupq_n_s16(0x889u);
    v312 = vdupq_n_s16(0x1ED7u);
    v451 = vmlal_s16(vmull_s16(*v309.i8, *v312.i8), *v310.i8, *v311.i8);
    v445 = vmlal_high_s16(vmull_high_s16(v309, v312), v310, v311);
    v402 = vmlal_s16(vmull_s16(*v309.i8, v395), *v310.i8, *v312.i8);
    v401 = vmlal_high_s16(vmull_s16(*&vextq_s8(v309, v309, 8uLL), v395), v310, v312);
    v313 = vrshrn_high_n_s32(vrshrn_n_s32(v546, 0xDuLL), v544, 0xDuLL);
    v314 = vrshrn_high_n_s32(vrshrn_n_s32(v542, 0xDuLL), v540, 0xDuLL);
    v315 = vrshrn_high_n_s32(vrshrn_n_s32(v458, 0xDuLL), v456, 0xDuLL);
    v316 = vrshrn_high_n_s32(vrshrn_n_s32(v454, 0xDuLL), v452, 0xDuLL);
    v457 = vqsubq_s16(v606, v314);
    v459 = vqsubq_s16(v607, v313);
    v317 = vqsubq_s16(v457, v316);
    v318 = vqsubq_s16(v459, v315);
    v319 = vdupq_n_s16(0xE63u);
    v320 = vdupq_n_s16(0x1C95u);
    v547 = vmlal_s16(vmull_s16(*v317.i8, *v320.i8), *v318.i8, *v319.i8);
    v545 = vmlal_high_s16(vmull_high_s16(v317, v320), v318, v319);
    v321 = vdupq_n_s16(0xF19Du);
    v453 = vmlal_s16(vmull_s16(*v317.i8, *v321.i8), *v318.i8, *v320.i8);
    v399 = vmlal_high_s16(vmull_high_s16(v317, v321), v318, v320);
    v322 = vqaddq_s16(v606, v314);
    v323 = vqaddq_s16(v607, v313);
    v324 = vrshrn_high_n_s32(vrshrn_n_s32(v172, 0xDuLL), v173, 0xDuLL);
    v325 = vrshrn_high_n_s32(vrshrn_n_s32(v174, 0xDuLL), v175, 0xDuLL);
    v326 = vqsubq_s16(v322, v325);
    v327 = vdupq_n_s16(0x183Bu);
    v328 = vqsubq_s16(v323, v324);
    v329 = vdupq_n_s16(0x14E7u);
    v398 = vmlal_s16(vmull_s16(*v326.i8, *v329.i8), *v328.i8, *v327.i8);
    v330 = vmlal_high_s16(vmull_high_s16(v326, v329), v328, v327);
    v331 = vdupq_n_s16(0xE7C5u);
    v455 = vmlal_s16(vmull_s16(*v326.i8, *v331.i8), *v328.i8, *v329.i8);
    v400 = vmlal_high_s16(vmull_high_s16(v326, v331), v328, v329);
    v332 = vqaddq_s16(v322, v325);
    v333 = vdupq_n_s16(0x25Bu);
    v334 = vdupq_n_s16(0x1FEAu);
    v335 = vqaddq_s16(v323, v324);
    v543 = vmlal_s16(vmull_s16(*v332.i8, *v334.i8), *v335.i8, *v333.i8);
    v336 = vdupq_n_s16(0xFDA5u);
    v541 = vmlal_high_s16(vmull_high_s16(v332, v334), v335, v333);
    v337 = vmlal_s16(vmull_s16(*v332.i8, *v336.i8), *v335.i8, *v334.i8);
    v338 = vmlal_high_s16(vmull_high_s16(v332, v336), v335, v334);
    v339 = vqaddq_s16(v421, v420);
    v340 = vqaddq_s16(v416, v417);
    v341 = vdupq_n_s16(0x1FFEu);
    v342 = vmlal_s16(vmull_s16(*v339.i8, 0xC900C900C900C9), *v340.i8, *v341.i8);
    v321.i64[0] = 0xC900C900C900C9;
    v321.i64[1] = 0xC900C900C900C9;
    v343 = vmlal_high_s16(vmull_high_s16(v339, v321), v340, v341);
    v344 = vdupq_n_s16(0xE002u);
    v568[63] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v339.i8, *v344.i8), *v340.i8, 0xC900C900C900C9), 0xDuLL), vmlal_high_s16(vmull_high_s16(v339, v344), v340, v321), 0xDuLL);
    v568[1] = vrshrn_high_n_s32(vrshrn_n_s32(v342, 0xDuLL), v343, 0xDuLL);
    v568[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v569.i8, *v565.i8), *v570.i8, *v565.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v569, v565), v570, v565), 0xDuLL);
    v345 = vqaddq_s16(v457, v316);
    v568[3] = vrshrn_high_n_s32(vrshrn_n_s32(v337, 0xDuLL), v338, 0xDuLL);
    v568[2] = vrshrn_high_n_s32(vrshrn_n_s32(v491, 0xDuLL), v489, 0xDuLL);
    v346 = vqaddq_s16(v459, v315);
    v568[5] = vrshrn_high_n_s32(vrshrn_n_s32(v439, 0xDuLL), v437, 0xDuLL);
    v568[4] = vrshrn_high_n_s32(vrshrn_n_s32(v549, 0xDuLL), v548, 0xDuLL);
    v568[7] = vrshrn_high_n_s32(vrshrn_n_s32(v406, 0xDuLL), v405, 0xDuLL);
    v568[6] = vrshrn_high_n_s32(vrshrn_n_s32(v435, 0xDuLL), v434, 0xDuLL);
    v568[9] = vrshrn_high_n_s32(vrshrn_n_s32(v419, 0xDuLL), v411, 0xDuLL);
    v568[8] = vrshrn_high_n_s32(vrshrn_n_s32(v559, 0xDuLL), v558, 0xDuLL);
    v568[11] = vrshrn_high_n_s32(vrshrn_n_s32(v402, 0xDuLL), v401, 0xDuLL);
    v568[10] = vrshrn_high_n_s32(vrshrn_n_s32(v461, 0xDuLL), v460, 0xDuLL);
    v347 = vdupq_n_s16(0x1E63u);
    v568[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v345.i8, 0xA0A0A0A0A0A0A0ALL), *v346.i8, *v347.i8), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v345, v345, 8uLL), 0xA0A0A0A0A0A0A0ALL), v346, v347), 0xDuLL);
    v568[12] = vrshrn_high_n_s32(vrshrn_n_s32(v510, 0xDuLL), v509, 0xDuLL);
    v568[15] = vrshrn_high_n_s32(vrshrn_n_s32(v413, 0xDuLL), v412, 0xDuLL);
    v568[14] = vrshrn_high_n_s32(vrshrn_n_s32(v465, 0xDuLL), v464, 0xDuLL);
    v568[17] = vrshrn_high_n_s32(vrshrn_n_s32(v415, 0xDuLL), v414, 0xDuLL);
    v568[16] = vrshrn_high_n_s32(vrshrn_n_s32(v563, 0xDuLL), v562, 0xDuLL);
    v568[19] = vrshrn_high_n_s32(vrshrn_n_s32(v453, 0xDuLL), v399, 0xDuLL);
    v568[18] = vrshrn_high_n_s32(vrshrn_n_s32(v503, 0xDuLL), v501, 0xDuLL);
    v568[21] = vrshrn_high_n_s32(vrshrn_n_s32(v404, 0xDuLL), v403, 0xDuLL);
    v568[20] = vrshrn_high_n_s32(vrshrn_n_s32(v157, 0xDuLL), v517, 0xDuLL);
    v568[23] = vrshrn_high_n_s32(vrshrn_n_s32(v410, 0xDuLL), v409, 0xDuLL);
    v568[22] = vrshrn_high_n_s32(vrshrn_n_s32(v467, 0xDuLL), v466, 0xDuLL);
    v568[25] = vrshrn_high_n_s32(vrshrn_n_s32(v408, 0xDuLL), v407, 0xDuLL);
    v568[24] = vrshrn_high_n_s32(vrshrn_n_s32(v551, 0xDuLL), v550, 0xDuLL);
    v568[27] = vrshrn_high_n_s32(vrshrn_n_s32(v443, 0xDuLL), v441, 0xDuLL);
    v568[26] = vrshrn_high_n_s32(vrshrn_n_s32(v463, 0xDuLL), v462, 0xDuLL);
    v568[29] = vrshrn_high_n_s32(vrshrn_n_s32(v398, 0xDuLL), v330, 0xDuLL);
    v568[28] = vrshrn_high_n_s32(vrshrn_n_s32(v531, 0xDuLL), v530, 0xDuLL);
    v568[31] = vrshrn_high_n_s32(vrshrn_n_s32(v495, 0xDuLL), v493, 0xDuLL);
    v568[30] = vrshrn_high_n_s32(vrshrn_n_s32(v477, 0xDuLL), v476, 0xDuLL);
    v568[33] = vrshrn_high_n_s32(vrshrn_n_s32(v499, 0xDuLL), v497, 0xDuLL);
    v568[32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v569.i8, *v564.i8), *v570.i8, *v565.i8), 0xDuLL), vmlal_high_s16(vmull_high_s16(v569, v564), v570, v565), 0xDuLL);
    v568[35] = vrshrn_high_n_s32(vrshrn_n_s32(v455, 0xDuLL), v400, 0xDuLL);
    v568[34] = vrshrn_high_n_s32(vrshrn_n_s32(v479, 0xDuLL), v478, 0xDuLL);
    v568[37] = vrshrn_high_n_s32(vrshrn_n_s32(v535, 0xDuLL), v533, 0xDuLL);
    v568[36] = vrshrn_high_n_s32(vrshrn_n_s32(v138, 0xDuLL), v140, 0xDuLL);
    v568[39] = vrshrn_high_n_s32(vrshrn_n_s32(v429, 0xDuLL), v426, 0xDuLL);
    v568[38] = vrshrn_high_n_s32(vrshrn_n_s32(v471, 0xDuLL), v469, 0xDuLL);
    v568[41] = vrshrn_high_n_s32(vrshrn_n_s32(v521, 0xDuLL), v519, 0xDuLL);
    v568[40] = vrshrn_high_n_s32(vrshrn_n_s32(v553, 0xDuLL), v552, 0xDuLL);
    v568[43] = vrshrn_high_n_s32(vrshrn_n_s32(v449, 0xDuLL), v447, 0xDuLL);
    v568[42] = vrshrn_high_n_s32(vrshrn_n_s32(v483, 0xDuLL), v481, 0xDuLL);
    v568[45] = vrshrn_high_n_s32(vrshrn_n_s32(v547, 0xDuLL), v545, 0xDuLL);
    v568[44] = vrshrn_high_n_s32(vrshrn_n_s32(v515, 0xDuLL), v513, 0xDuLL);
    v568[47] = vrshrn_high_n_s32(vrshrn_n_s32(v427, 0xDuLL), v424, 0xDuLL);
    v568[46] = vrshrn_high_n_s32(vrshrn_n_s32(v507, 0xDuLL), v505, 0xDuLL);
    v348 = vdupq_n_s16(0xE19Du);
    v568[49] = vrshrn_high_n_s32(vrshrn_n_s32(v423, 0xDuLL), v422, 0xDuLL);
    v568[48] = vrshrn_high_n_s32(vrshrn_n_s32(v561, 0xDuLL), v560, 0xDuLL);
    v568[51] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_s16(vmull_s16(*v345.i8, *v348.i8), *v346.i8, 0xA0A0A0A0A0A0A0ALL), 0xDuLL), vmlal_high_s16(vmull_s16(*&vextq_s8(v346, v346, 8uLL), 0xA0A0A0A0A0A0A0ALL), v345, v348), 0xDuLL);
    v568[52] = vrshrn_high_n_s32(vrshrn_n_s32(v170, 0xDuLL), v511, 0xDuLL);
    v568[53] = vrshrn_high_n_s32(vrshrn_n_s32(v451, 0xDuLL), v445, 0xDuLL);
    v568[54] = vrshrn_high_n_s32(vrshrn_n_s32(v487, 0xDuLL), v485, 0xDuLL);
    v568[55] = vrshrn_high_n_s32(vrshrn_n_s32(v525, 0xDuLL), v523, 0xDuLL);
    v568[56] = vrshrn_high_n_s32(vrshrn_n_s32(v557, 0xDuLL), v556, 0xDuLL);
    v568[57] = vrshrn_high_n_s32(vrshrn_n_s32(v433, 0xDuLL), v431, 0xDuLL);
    v568[58] = vrshrn_high_n_s32(vrshrn_n_s32(v475, 0xDuLL), v473, 0xDuLL);
    v568[59] = vrshrn_high_n_s32(vrshrn_n_s32(v539, 0xDuLL), v537, 0xDuLL);
    v568[60] = vrshrn_high_n_s32(vrshrn_n_s32(v555, 0xDuLL), v554, 0xDuLL);
    v568[61] = vrshrn_high_n_s32(vrshrn_n_s32(v543, 0xDuLL), v541, 0xDuLL);
    v568[62] = vrshrn_high_n_s32(vrshrn_n_s32(v529, 0xDuLL), v527, 0xDuLL);
    do
    {
      v568[v66] = vrshrq_n_s16(v568[v66], 2uLL);
      ++v66;
    }

    while (v66 != 64);
    v349 = v12;
    for (i7 = 112; i7 != 624; i7 += 128)
    {
      v351 = *&v567[i7 + 8016];
      v352 = *&v567[i7 + 8032];
      v353 = vtrn1q_s16(v351, v352);
      v354 = vtrn2q_s16(v351, v352);
      v355 = *&v567[i7 + 8048];
      v356 = *&v567[i7 + 8064];
      v357 = vtrn1q_s16(v355, v356);
      v358 = vtrn2q_s16(v355, v356);
      v359 = *&v567[i7 + 8080];
      v360 = *&v567[i7 + 8096];
      v361 = vtrn1q_s16(v359, v360);
      v362 = vtrn2q_s16(v359, v360);
      v363 = *&v567[i7 + 8112];
      v364 = v568[i7 / 0x10];
      v365 = vtrn1q_s16(v363, v364);
      v366 = vtrn2q_s16(v363, v364);
      v367 = vtrn1q_s32(v353, v357);
      v368 = vtrn2q_s32(v353, v357);
      v369 = vtrn1q_s32(v354, v358);
      v370 = vtrn2q_s32(v354, v358);
      v371 = vtrn1q_s32(v361, v365);
      v372 = vtrn2q_s32(v361, v365);
      v373 = vzip2q_s64(v367, v371);
      v367.i64[1] = v371.i64[0];
      v374 = vtrn1q_s32(v362, v366);
      v375 = vtrn2q_s32(v362, v366);
      v376 = vzip2q_s64(v369, v374);
      v369.i64[1] = v374.i64[0];
      v377 = vzip2q_s64(v368, v372);
      v368.i64[1] = v372.i64[0];
      v372.i64[0] = v370.i64[0];
      v372.i64[1] = v375.i64[0];
      v349[-4] = v367;
      v349[-3] = v369;
      v349[-2] = v368;
      v349[-1] = v372;
      *v349 = v373;
      v349[1] = v376;
      v349[2] = v377;
      v349[3] = vzip2q_s64(v370, v375);
      v349 += 64;
    }

    ++v11;
    v8 += 16;
    v12 += 8;
    v13 = v565;
    v14 = v564;
  }

  while (v11 != 8);
  v378 = 0;
  v379 = (v394 + 16);
  v380 = &v566;
  do
  {
    for (i8 = 0; i8 != 1024; i8 += 16)
    {
      v382 = *&v380[i8];
      *&v741[i8] = vmovl_s16(*v382.i8);
      *&v708[i8] = vmovl_high_s16(v382);
    }

    sub_2779E436C(v741, v741, 10, v16, v15, v17, v18, v19);
    result = sub_2779E436C(v708, v708, 10, v383, v384, v385, v386, v387);
    for (i9 = 0; i9 != 512; i9 += 16)
    {
      *&v741[i9] = vrshrq_n_s32(*&v741[i9], 2uLL);
    }

    for (i10 = 0; i10 != 512; i10 += 16)
    {
      *&v708[i10] = vrshrq_n_s32(*&v708[i10], 2uLL);
    }

    v391 = 0;
    v392 = v379;
    do
    {
      v393 = *&v708[v391];
      *(v392 - 1) = *&v741[v391];
      *v392 = v393;
      v391 += 16;
      v392 += 8;
    }

    while (v391 != 512);
    ++v378;
    v380 += 1024;
    v379 += 2;
  }

  while (v378 != 4);
  return result;
}

uint64_t sub_2779EEBA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v147 = *MEMORY[0x277D85DE8];
  if ((0xF1FEuLL >> v11))
  {
    v18 = v12;
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    sub_277A78D0C(v11, 3u, &v114);
    return sub_277A78E90(v15, v14, v13, &v114, v146, v18);
  }

  v16 = off_28866D7A0[v11];
  v17 = 1;
  v112 = off_28866D820[v11];
  v113 = v9;
  if (v11 <= 0xF)
  {
    if (((1 << v11) & 0x4110) == 0)
    {
      if (((1 << v11) & 0x80A0) != 0)
      {
        v17 = 0;
        goto LABEL_10;
      }

      if (v11 != 6)
      {
        goto LABEL_10;
      }

      v17 = 0;
    }

    v15 = (v8 + 62 * v10);
    v13 = -v10;
  }

LABEL_10:
  for (i = 0; i != 4; ++i)
  {
    (v16)(&v15[8 * i], &v114, v13, 12);
    for (j = 0; j != 512; j += 16)
    {
      *(&v114 + j) = vrshrq_n_s16(*(&v114 + j), 4uLL);
    }

    v22 = vtrn1q_s16(v114, v115);
    v23 = vtrn2q_s16(v114, v115);
    v24 = vtrn1q_s16(v116, v117);
    v25 = vtrn2q_s16(v116, v117);
    v26 = vtrn1q_s16(v118, v119);
    v27 = vtrn2q_s16(v118, v119);
    v28 = vtrn1q_s16(v120, v121);
    v29 = vtrn2q_s16(v120, v121);
    v30 = vtrn1q_s32(v22, v24);
    v31 = vtrn1q_s32(v23, v25);
    v32 = vtrn1q_s32(v26, v28);
    v33 = vzip2q_s64(v30, v32);
    v30.i64[1] = v32.i64[0];
    v34 = vtrn1q_s32(v27, v29);
    v35 = vzip2q_s64(v31, v34);
    v31.i64[1] = v34.i64[0];
    v36 = vtrn2q_s32(v22, v24);
    v37 = vtrn2q_s32(v26, v28);
    v38 = vzip2q_s64(v36, v37);
    v36.i64[1] = v37.i64[0];
    v39 = vtrn2q_s32(v23, v25);
    v40 = vtrn2q_s32(v27, v29);
    v41 = vzip2q_s64(v39, v40);
    v39.i64[1] = v40.i64[0];
    v42 = &v146[32 * i];
    *v42 = v30;
    *(v42 + 1) = v31;
    *(v42 + 2) = v36;
    *(v42 + 3) = v39;
    *(v42 + 4) = v33;
    *(v42 + 5) = v35;
    *(v42 + 6) = v38;
    *(v42 + 7) = v41;
    v43 = &v146[32 * i + 128];
    v44 = vtrn1q_s16(v122, v123);
    v45 = vtrn2q_s16(v122, v123);
    v46 = vtrn1q_s16(v124, v125);
    v47 = vtrn2q_s16(v124, v125);
    v48 = vtrn1q_s16(v126, v127);
    v49 = vtrn2q_s16(v126, v127);
    v50 = vtrn1q_s16(v128, v129);
    v51 = vtrn2q_s16(v128, v129);
    v52 = vtrn1q_s32(v44, v46);
    v53 = vtrn2q_s32(v44, v46);
    v54 = vtrn1q_s32(v45, v47);
    v55 = vtrn2q_s32(v45, v47);
    v56 = vtrn1q_s32(v48, v50);
    v57 = vtrn2q_s32(v48, v50);
    v58 = vtrn1q_s32(v49, v51);
    v59 = vtrn2q_s32(v49, v51);
    v60 = vzip2q_s64(v52, v56);
    v52.i64[1] = v56.i64[0];
    v61 = vzip2q_s64(v54, v58);
    v54.i64[1] = v58.i64[0];
    v62 = vzip2q_s64(v53, v57);
    v53.i64[1] = v57.i64[0];
    v63 = vzip2q_s64(v55, v59);
    v55.i64[1] = v59.i64[0];
    *v43 = v52;
    *(v43 + 1) = v54;
    *(v43 + 2) = v53;
    *(v43 + 3) = v55;
    *(v43 + 4) = v60;
    *(v43 + 5) = v61;
    *(v43 + 6) = v62;
    *(v43 + 7) = v63;
    v64 = vtrn1q_s16(v130, v131);
    v65 = vtrn2q_s16(v130, v131);
    v66 = vtrn1q_s16(v132, v133);
    v67 = vtrn2q_s16(v132, v133);
    v68 = vtrn1q_s16(v134, v135);
    v69 = vtrn2q_s16(v134, v135);
    v70 = vtrn1q_s16(v136, v137);
    v71 = vtrn2q_s16(v136, v137);
    v72 = vtrn1q_s32(v64, v66);
    v73 = vtrn2q_s32(v64, v66);
    v74 = vtrn1q_s32(v65, v67);
    v75 = vtrn2q_s32(v65, v67);
    v76 = vtrn1q_s32(v68, v70);
    v77 = vtrn2q_s32(v68, v70);
    v78 = vtrn1q_s32(v69, v71);
    v79 = vtrn2q_s32(v69, v71);
    v80 = vzip2q_s64(v72, v76);
    v72.i64[1] = v76.i64[0];
    v81 = vzip2q_s64(v74, v78);
    v74.i64[1] = v78.i64[0];
    v82 = vzip2q_s64(v73, v77);
    v73.i64[1] = v77.i64[0];
    v83 = vzip2q_s64(v75, v79);
    v75.i64[1] = v79.i64[0];
    v84 = &v146[32 * i + 256];
    *v84 = v72;
    *(v84 + 1) = v74;
    *(v84 + 2) = v73;
    *(v84 + 3) = v75;
    *(v84 + 4) = v80;
    *(v84 + 5) = v81;
    *(v84 + 6) = v82;
    *(v84 + 7) = v83;
    v85 = &v146[32 * i + 384];
    v86 = vtrn1q_s16(v138, v139);
    v87 = vtrn2q_s16(v138, v139);
    v88 = vtrn1q_s16(v140, v141);
    v89 = vtrn2q_s16(v140, v141);
    v90 = vtrn1q_s16(v142, v143);
    v91 = vtrn2q_s16(v142, v143);
    v92 = vtrn1q_s16(v144, v145);
    v93 = vtrn2q_s16(v144, v145);
    v94 = vtrn1q_s32(v86, v88);
    v95 = vtrn2q_s32(v86, v88);
    v96 = vtrn1q_s32(v87, v89);
    v97 = vtrn2q_s32(v87, v89);
    v98 = vtrn1q_s32(v90, v92);
    v99 = vtrn2q_s32(v90, v92);
    v100 = vtrn1q_s32(v91, v93);
    v101 = vtrn2q_s32(v91, v93);
    v102 = vzip2q_s64(v94, v98);
    v94.i64[1] = v98.i64[0];
    v103 = vzip2q_s64(v96, v100);
    v96.i64[1] = v100.i64[0];
    v104 = vzip2q_s64(v95, v99);
    v95.i64[1] = v99.i64[0];
    v105 = vzip2q_s64(v97, v101);
    v97.i64[1] = v101.i64[0];
    *v85 = v94;
    *(v85 + 1) = v96;
    *(v85 + 2) = v95;
    *(v85 + 3) = v97;
    *(v85 + 4) = v102;
    *(v85 + 5) = v103;
    *(v85 + 6) = v104;
    *(v85 + 7) = v105;
  }

  v106 = 0;
  v107 = v146;
  do
  {
    if (v17)
    {
      v108 = &v146[128 * v106];
    }

    else
    {
      v109 = v107;
      for (k = 496; k != -16; k -= 16)
      {
        v111 = *v109++;
        v108 = &v114;
        *(&v114 + k) = v111;
      }
    }

    result = (v112)(v108, &v113[2 * v106++], 32, 12);
    v107 += 128;
  }

  while (v106 != 4);
  return result;
}

uint64_t sub_2779EEFC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a3;
  v5 = a1;
  v80 = *MEMORY[0x277D85DE8];
  v6 = off_28866D6A0[a4];
  v7 = v62;
  v8 = 1;
  v60 = off_28866D720[a4];
  if (a4 <= 0xF)
  {
    if (((1 << a4) & 0x4110) != 0)
    {
LABEL_7:
      v5 = a1 + 30 * a3;
      v4 = -a3;
      goto LABEL_8;
    }

    if (((1 << a4) & 0x80A0) != 0)
    {
      v8 = 0;
      goto LABEL_8;
    }

    if (a4 == 6)
    {
      v8 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
  v9 = 0;
  v10 = 1;
  do
  {
    v11 = v10;
    (v6)(v5 + 2 * v9, &v64, v4, 13);
    for (i = 0; i != 256; i += 16)
    {
      *(&v64 + i) = vrshrq_n_s16(*(&v64 + i), 2uLL);
    }

    v10 = 0;
    v13 = vtrn1q_s16(v64, v65);
    v14 = vtrn2q_s16(v64, v65);
    v15 = vtrn1q_s16(v66, v67);
    v16 = vtrn2q_s16(v66, v67);
    v17 = vtrn1q_s16(v68, v69);
    v18 = vtrn2q_s16(v68, v69);
    v19 = vtrn1q_s16(v70, v71);
    v20 = vtrn2q_s16(v70, v71);
    v21 = vtrn1q_s32(v13, v15);
    v22 = vtrn2q_s32(v13, v15);
    v23 = vtrn1q_s32(v14, v16);
    v24 = vtrn2q_s32(v14, v16);
    v25 = vtrn1q_s32(v17, v19);
    v26 = vtrn2q_s32(v17, v19);
    v27 = vzip2q_s64(v21, v25);
    v21.i64[1] = v25.i64[0];
    v28 = vtrn1q_s32(v18, v20);
    v29 = vtrn2q_s32(v18, v20);
    v30 = vzip2q_s64(v23, v28);
    v23.i64[1] = v28.i64[0];
    v31 = vzip2q_s64(v22, v26);
    v22.i64[1] = v26.i64[0];
    v26.i64[0] = v24.i64[0];
    v26.i64[1] = v29.i64[0];
    *v7 = v21;
    v7[1] = v23;
    v7[2] = v22;
    v7[3] = v26;
    v7[4] = v27;
    v7[5] = v30;
    v7[6] = v31;
    v7[7] = vzip2q_s64(v24, v29);
    v32 = &v63[16 * v9 + 128];
    v33 = vtrn1q_s16(v72, v73);
    v34 = vtrn2q_s16(v72, v73);
    v35 = vtrn1q_s16(v74, v75);
    v36 = vtrn2q_s16(v74, v75);
    v37 = vtrn1q_s16(v76, v77);
    v38 = vtrn2q_s16(v76, v77);
    v39 = vtrn1q_s16(v78, v79);
    v40 = vtrn2q_s16(v78, v79);
    v41 = vtrn1q_s32(v33, v35);
    v42 = vtrn2q_s32(v33, v35);
    v43 = vtrn1q_s32(v34, v36);
    v44 = vtrn2q_s32(v34, v36);
    v45 = vtrn1q_s32(v37, v39);
    v46 = vtrn2q_s32(v37, v39);
    v47 = vtrn1q_s32(v38, v40);
    v48 = vtrn2q_s32(v38, v40);
    v49 = vzip2q_s64(v41, v45);
    v41.i64[1] = v45.i64[0];
    v50 = vzip2q_s64(v43, v47);
    v43.i64[1] = v47.i64[0];
    v51 = vzip2q_s64(v42, v46);
    v42.i64[1] = v46.i64[0];
    v52 = vzip2q_s64(v44, v48);
    v44.i64[1] = v48.i64[0];
    *v32 = v41;
    v32[1] = v43;
    v32[2] = v42;
    v32[3] = v44;
    v32[4] = v49;
    v32[5] = v50;
    v7 = v63;
    v32[6] = v51;
    v32[7] = v52;
    v9 = 8;
  }

  while ((v11 & 1) != 0);
  v53 = 0;
  v54 = 1;
  do
  {
    v55 = v54;
    v56 = &v62[256 * v53];
    if ((v8 & 1) == 0)
    {
      for (j = 240; j != -16; j -= 16)
      {
        v58 = *v56++;
        *(&v64 + j) = v58;
      }

      v56 = &v64;
    }

    result = (v60)(v56, a2 + 32 * v53, 16, 12);
    v54 = 0;
    v53 = 1;
  }

  while ((v55 & 1) != 0);
  return result;
}

int32x4_t sub_2779EF268(uint64_t a1, int32x4_t *a2, int a3)
{
  v3 = 0;
  v11 = *MEMORY[0x277D85DE8];
  v4 = vdupq_n_s16(0x2D42u);
  do
  {
    *&v10[v3] = vqrshrn_high_n_s32(vqrshrn_n_s32(vmull_s16(*(a1 + v3), *v4.i8), 0xCuLL), vmull_high_s16(*(a1 + v3), v4), 0xCuLL);
    v3 += 16;
  }

  while (v3 != 256);
  v5 = 0;
  v6 = a2 + 1;
  do
  {
    v7 = *&v10[v5];
    v8 = vmovl_s16(*v7.i8);
    result = vmovl_high_s16(v7);
    v6[-1] = v8;
    *v6 = result;
    v5 += 16;
    v6 = (v6 + 4 * a3);
  }

  while (v5 != 256);
  return result;
}

int16x8_t *sub_2779EF31C(int16x8_t *result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v109 = *MEMORY[0x277D85DE8];
  v5 = &xmmword_277BEB8A0[16 * a4 - 160];
  v6 = xmmword_277BEB8A0[16 * a4 - 159];
  v8 = result[6];
  v7 = result[7];
  v9 = result[8];
  v10 = result[9];
  v11 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v7.i8, *v5, 3), *v9.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v7, *v5, 3), v9, *v5, 0), 0xDuLL);
  v12 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v7.i8, *v5, 2), *v9.i8, *v5, 3), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v7, *v5, 2), v9, *v5, 3), 0xDuLL);
  v14 = result[10];
  v13 = result[11];
  v15 = result[4];
  v16 = result[5];
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v5, 1), *v15.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v5, 1), v15, *v5, 0), 0xDuLL);
  v18 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v13.i8, *v5, 2), *v15.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v13, *v5, 2), v15, *v5, 1), 0xDuLL);
  v19 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5, 1), *v8.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5, 1), v8, *v5, 0), 0xDuLL);
  v20 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v10.i8, *v5, 2), *v8.i8, *v5, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v10, *v5, 2), v8, *v5, 1), 0xDuLL);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v16, *v5, 2), v14, *v5, 3);
  v22 = vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v5, 2), *v14.i8, *v5, 3), 0xDuLL);
  v23 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v16.i8, *v5, 3), *v14.i8, *v5, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v16, *v5, 3), v14, *v5, 0), 0xDuLL);
  v24 = xmmword_277BEB8A0[16 * a4 - 156];
  v25 = xmmword_277BEB8A0[16 * a4 - 155];
  v26 = xmmword_277BEB8A0[16 * a4 - 154];
  v27 = xmmword_277BEB8A0[16 * a4 - 153];
  v28 = vrshrn_high_n_s32(v22, v21, 0xDuLL);
  v29 = result[1];
  v30 = vqaddq_s16(*result, v11);
  v32 = result[14];
  v31 = result[15];
  v33 = vqsubq_s16(v12, v31);
  v34 = vqsubq_s16(*result, v11);
  v35 = vqaddq_s16(v31, v12);
  v37 = result[2];
  v36 = result[3];
  v38 = vqsubq_s16(v18, v36);
  v39 = result[12];
  v40 = result[13];
  v41 = vqaddq_s16(v39, v17);
  v42 = vqaddq_s16(v36, v18);
  v43 = vqsubq_s16(v39, v17);
  v44 = vqsubq_s16(v20, v29);
  v45 = vqaddq_s16(v32, v19);
  v46 = vqaddq_s16(v29, v20);
  v47 = vqsubq_s16(v32, v19);
  v48 = vqaddq_s16(v37, v23);
  v49 = vqsubq_s16(v28, v40);
  v50 = vqsubq_s16(v37, v23);
  v51 = vqaddq_s16(v40, v28);
  v52 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, *v5->i8, 5), *v38.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, *v5->i8, 5), v38, *v5->i8, 4), 0xDuLL);
  v53 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, *v5->i8, 6), *v38.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, *v5->i8, 6), v38, *v5->i8, 5), 0xDuLL);
  v54 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, *v5->i8, 5), *v43.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, *v5->i8, 5), v43, *v5->i8, 4), 0xDuLL);
  v55 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v42.i8, *v5->i8, 6), *v43.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v42, *v5->i8, 6), v43, *v5->i8, 5), 0xDuLL);
  v56 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, *v5->i8, 5), *v48.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, *v5->i8, 5), v48, *v5->i8, 4), 0xDuLL);
  v57 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v49.i8, *v5->i8, 6), *v48.i8, *v5->i8, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v49, *v5->i8, 6), v48, *v5->i8, 5), 0xDuLL);
  v58 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v51.i8, *v5->i8, 7), *v50.i8, *v5->i8, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v51, *v5->i8, 7), v50, *v5->i8, 4), 0xDuLL);
  v59 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v51.i8, *v5->i8, 6), *v50.i8, *v5->i8, 7), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v51, *v5->i8, 6), v50, *v5->i8, 7), 0xDuLL);
  v60 = vqaddq_s16(v30, v52);
  v61 = vqaddq_s16(v33, v53);
  v62 = vqaddq_s16(v34, v54);
  v63 = vqsubq_s16(v55, v35);
  v64 = vqsubq_s16(v30, v52);
  v65 = vqsubq_s16(v33, v53);
  v66 = vqsubq_s16(v34, v54);
  v67 = vqaddq_s16(v35, v55);
  v68 = vqaddq_s16(v44, v56);
  v69 = vqaddq_s16(v45, v57);
  v70 = vqsubq_s16(v59, v46);
  v71 = vqaddq_s16(v47, v58);
  v72 = vqsubq_s16(v44, v56);
  v73 = vqsubq_s16(v45, v57);
  v74 = vqaddq_s16(v46, v59);
  v75 = vqsubq_s16(v47, v58);
  v76 = vmlal_lane_s16(vmull_lane_s16(*v69.i8, *v6.i8, 2), *v68.i8, *v6.i8, 1);
  v77 = vmlal_high_lane_s16(vmull_high_lane_s16(v69, *v6.i8, 2), v68, *v6.i8, 1);
  v78 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v69.i8, *v6.i8, 1), *v68.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v69, *v6.i8, 1), v68, *v6.i8, 0), 0xDuLL);
  v79 = vrshrn_high_n_s32(vrshrn_n_s32(v76, 0xDuLL), v77, 0xDuLL);
  v80 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v71.i8, v6, 4), *v70.i8, v6, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v71, v6, 4), v70, v6, 5), 0xDuLL);
  v81 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v71.i8, v6, 7), *v70.i8, v6, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v71, v6, 7), v70, v6, 4), 0xDuLL);
  v82 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v6.i8, 0), *v73.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v6.i8, 0), v73, *v6.i8, 1), 0xDuLL);
  v83 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v72.i8, *v6.i8, 3), *v73.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v72, *v6.i8, 3), v73, *v6.i8, 0), 0xDuLL);
  v84 = vmlal_laneq_s16(vmull_laneq_s16(*v74.i8, v6, 4), *v75.i8, v6, 5);
  v85 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v74, v6, 4), v75, v6, 5);
  v86 = vmlal_laneq_s16(vmull_laneq_s16(*v74.i8, v6, 7), *v75.i8, v6, 4);
  v87 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v74, v6, 7), v75, v6, 4);
  v88 = vrshrn_high_n_s32(vrshrn_n_s32(v84, 0xDuLL), v85, 0xDuLL);
  v89 = vrshrn_high_n_s32(vrshrn_n_s32(v86, 0xDuLL), v87, 0xDuLL);
  v90 = vqaddq_s16(v60, v78);
  v91 = vqaddq_s16(v61, v79);
  v92 = vqaddq_s16(v62, v80);
  v93 = vqaddq_s16(v63, v81);
  v94 = vqaddq_s16(v64, v83);
  v95 = vqaddq_s16(v65, v82);
  v96 = vqaddq_s16(v66, v88);
  v97 = vqsubq_s16(v89, v67);
  v98 = vqsubq_s16(v60, v78);
  v99 = vqsubq_s16(v61, v79);
  v100 = vqsubq_s16(v62, v80);
  v101 = vqsubq_s16(v63, v81);
  v102 = vqsubq_s16(v64, v83);
  v103 = vqsubq_s16(v65, v82);
  v104 = vqsubq_s16(v66, v88);
  v105 = vqaddq_s16(v67, v89);
  v108[6] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v27.i8, 2), *v96.i8, *v27.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v27.i8, 2), v96, *v27.i8, 1), 0xDuLL);
  v108[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v99.i8, v27, 4), *v98.i8, v27, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v99, v27, 4), v98, v27, 5), 0xDuLL);
  v108[8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v99.i8, v27, 7), *v98.i8, v27, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v99, v27, 7), v98, v27, 4), 0xDuLL);
  v108[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v27.i8, 1), *v96.i8, *v27.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v27.i8, 1), v96, *v27.i8, 0), 0xDuLL);
  v108[4] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v26.i8, 2), *v94.i8, *v26.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v26.i8, 2), v94, *v26.i8, 1), 0xDuLL);
  v108[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v101.i8, v26, 4), *v100.i8, v26, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v101, v26, 4), v100, v26, 5), 0xDuLL);
  v108[10] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v101.i8, v26, 7), *v100.i8, v26, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v101, v26, 7), v100, v26, 4), 0xDuLL);
  v108[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v95.i8, *v26.i8, 1), *v94.i8, *v26.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v95, *v26.i8, 1), v94, *v26.i8, 0), 0xDuLL);
  v108[2] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v25.i8, 2), *v92.i8, *v25.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v25.i8, 2), v92, *v25.i8, 1), 0xDuLL);
  v108[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v103.i8, v25, 4), *v102.i8, v25, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v103, v25, 4), v102, v25, 5), 0xDuLL);
  v108[12] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v103.i8, v25, 7), *v102.i8, v25, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v103, v25, 7), v102, v25, 4), 0xDuLL);
  v108[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v93.i8, *v25.i8, 1), *v92.i8, *v25.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v93, *v25.i8, 1), v92, *v25.i8, 0), 0xDuLL);
  v108[14] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v105.i8, v24, 5), *v104.i8, v24, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v105, v24, 5), v104, v24, 4), 0xDuLL);
  v108[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v24.i8, 1), *v90.i8, *v24.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v24.i8, 1), v90, *v24.i8, 0), 0xDuLL);
  v108[0] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v24.i8, 2), *v90.i8, *v24.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v24.i8, 2), v90, *v24.i8, 1), 0xDuLL);
  v108[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v105.i8, v24, 6), *v104.i8, v24, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v105, v24, 6), v104, v24, 5), 0xDuLL);
  v106 = a2 + 1;
  do
  {
    v107 = v108[v4];
    v106[-1] = vmovl_s16(*v107.i8);
    *v106 = vmovl_high_s16(v107);
    ++v4;
    v106 = (v106 + 4 * a3);
  }

  while (v4 != 16);
  return result;
}

uint64_t sub_2779EF894(uint64_t result, int32x4_t *a2, int a3, int a4)
{
  v4 = 0;
  v103 = *MEMORY[0x277D85DE8];
  v6 = xmmword_277BEB8A0[16 * a4 - 160];
  v5 = xmmword_277BEB8A0[16 * a4 - 159];
  v7 = xmmword_277BEB8A0[16 * a4 - 157];
  v84 = xmmword_277BEB8A0[16 * a4 - 158];
  for (i = 240; i != 112; i -= 16)
  {
    *&v94[v4] = vqaddq_s16(*(result + v4), *(result + i));
    v4 += 16;
  }

  v9 = 112;
  v10 = 128;
  do
  {
    *&v94[v10] = vqsubq_s16(*(result + v9), *(result + v10));
    v9 -= 16;
    v10 += 16;
  }

  while (v9 != -16);
  v11 = 0;
  for (j = 112; j != 48; j -= 16)
  {
    *(&v86 + v11) = vqaddq_s16(*&v94[v11], *&v94[j]);
    v11 += 16;
  }

  v13 = 48;
  v14 = 64;
  do
  {
    *(&v86 + v14) = vqsubq_s16(*&v94[v13], *&v94[v14]);
    v13 -= 16;
    v14 += 16;
  }

  while (v13 != -16);
  v15 = 0;
  v16 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v6.i8, 1), *v100.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v6.i8, 1), v100, *v6.i8, 0), 0xDuLL);
  v17 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v97.i8, *v6.i8, 2), *v100.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v97, *v6.i8, 2), v100, *v6.i8, 1), 0xDuLL);
  v18 = vmlal_lane_s16(vmull_lane_s16(*v98.i8, *v6.i8, 1), *v99.i8, *v6.i8, 0);
  v19 = vmlal_high_lane_s16(vmull_high_lane_s16(v98, *v6.i8, 1), v99, *v6.i8, 0);
  v20 = vmlal_lane_s16(vmull_lane_s16(*v98.i8, *v6.i8, 2), *v99.i8, *v6.i8, 1);
  v21 = vmlal_high_lane_s16(vmull_high_lane_s16(v98, *v6.i8, 2), v99, *v6.i8, 1);
  v22 = vqaddq_s16(v86, v89);
  v23 = vqaddq_s16(v87, v88);
  v24 = vqsubq_s16(v87, v88);
  v25 = vqsubq_s16(v86, v89);
  v26 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v6.i8, 1), *v92.i8, *v6.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v6.i8, 1), v92, *v6.i8, 0), 0xDuLL);
  v27 = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v91.i8, *v6.i8, 2), *v92.i8, *v6.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v91, *v6.i8, 2), v92, *v6.i8, 1), 0xDuLL);
  v28 = vqaddq_s16(v96, v17);
  v29 = vqsubq_s16(v96, v17);
  v30 = vqsubq_s16(v101, v16);
  v31 = vqaddq_s16(v101, v16);
  v32 = vmlal_lane_s16(vmull_lane_s16(*v23.i8, *v6.i8, 1), *v22.i8, *v6.i8, 0);
  v33 = vmlal_high_lane_s16(vmull_high_lane_s16(v23, *v6.i8, 1), v22, *v6.i8, 0);
  v34 = vmlal_lane_s16(vmull_lane_s16(*v23.i8, *v6.i8, 2), *v22.i8, *v6.i8, 1);
  v35 = vmlal_high_lane_s16(vmull_high_lane_s16(v23, *v6.i8, 2), v22, *v6.i8, 1);
  v36 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, v6, 5), *v25.i8, v6, 4);
  v37 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, v6, 5), v25, v6, 4);
  v38 = vmlal_laneq_s16(vmull_laneq_s16(*v24.i8, v6, 6), *v25.i8, v6, 5);
  v39 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v24, v6, 6), v25, v6, 5);
  v40 = vqaddq_s16(v90, v27);
  v41 = vqsubq_s16(v90, v27);
  v42 = vqsubq_s16(v93, v26);
  v43 = vqaddq_s16(v93, v26);
  v44 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 5), *v31.i8, v6, 4);
  v45 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 5), v31, v6, 4);
  v46 = vmlal_laneq_s16(vmull_laneq_s16(*v28.i8, v6, 6), *v31.i8, v6, 5);
  v47 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v28, v6, 6), v31, v6, 5);
  v48 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v6, 6), *v30.i8, v6, 5);
  v49 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v6, 6), v30, v6, 5);
  v50 = vmlal_laneq_s16(vmull_laneq_s16(*v29.i8, v6, 7), *v30.i8, v6, 6);
  v51 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v29, v6, 7), v30, v6, 6);
  v52 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v5.i8, 1), *v43.i8, *v5.i8, 0);
  v53 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v5.i8, 1), v43, *v5.i8, 0);
  v54 = vmlal_lane_s16(vmull_lane_s16(*v40.i8, *v5.i8, 2), *v43.i8, *v5.i8, 1);
  v55 = vmlal_high_lane_s16(vmull_high_lane_s16(v40, *v5.i8, 2), v43, *v5.i8, 1);
  v56 = vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v5, 4), *v42.i8, v5, 5);
  v57 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, v5, 4), v42, v5, 5);
  v58 = vmlal_laneq_s16(vmull_laneq_s16(*v41.i8, v5, 7), *v42.i8, v5, 4);
  v59 = vmlal_high_laneq_s16(vmull_high_laneq_s16(v41, v5, 7), v42, v5, 4);
  v60 = vrshrn_high_n_s32(vrshrn_n_s32(v18, 0xDuLL), v19, 0xDuLL);
  v61 = vrshrn_high_n_s32(vrshrn_n_s32(v20, 0xDuLL), v21, 0xDuLL);
  v62 = vqaddq_s16(v95, v61);
  v63 = vqsubq_s16(v95, v61);
  v64 = vqsubq_s16(v102, v60);
  v65 = vqaddq_s16(v102, v60);
  v66 = vrshrn_high_n_s32(vrshrn_n_s32(v32, 0xDuLL), v33, 0xDuLL);
  v67 = vrshrn_high_n_s32(vrshrn_n_s32(v34, 0xDuLL), v35, 0xDuLL);
  v68 = vrshrn_high_n_s32(vrshrn_n_s32(v36, 0xDuLL), v37, 0xDuLL);
  v69 = vrshrn_high_n_s32(vrshrn_n_s32(v38, 0xDuLL), v39, 0xDuLL);
  v70 = vrshrn_high_n_s32(vrshrn_n_s32(v44, 0xDuLL), v45, 0xDuLL);
  v71 = vrshrn_high_n_s32(vrshrn_n_s32(v46, 0xDuLL), v47, 0xDuLL);
  v72 = vrshrn_high_n_s32(vrshrn_n_s32(v48, 0xDuLL), v49, 0xDuLL);
  v73 = vrshrn_high_n_s32(vrshrn_n_s32(v50, 0xDuLL), v51, 0xDuLL);
  v74 = vqaddq_s16(v62, v71);
  v75 = vqsubq_s16(v62, v71);
  v76 = vqsubq_s16(v63, v73);
  v77 = vqaddq_s16(v63, v73);
  v78 = vqaddq_s16(v64, v72);
  v79 = vqsubq_s16(v64, v72);
  v80 = vqsubq_s16(v65, v70);
  v81 = vqaddq_s16(v65, v70);
  v85[0] = v66;
  v85[1] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v74.i8, *v84.i8, 1), *v81.i8, *v84.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v74, *v84.i8, 1), v81, *v84.i8, 0), 0xDuLL);
  v85[14] = vrshrn_high_n_s32(vrshrn_n_s32(v54, 0xDuLL), v55, 0xDuLL);
  v85[15] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v74.i8, *v84.i8, 2), *v81.i8, *v84.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v74, *v84.i8, 2), v81, *v84.i8, 1), 0xDuLL);
  v85[8] = v67;
  v85[9] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v75.i8, v7, 4), *v80.i8, v7, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v75, v7, 4), v80, v7, 5), 0xDuLL);
  v85[6] = vrshrn_high_n_s32(vrshrn_n_s32(v58, 0xDuLL), v59, 0xDuLL);
  v85[7] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v75.i8, v7, 7), *v80.i8, v7, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v75, v7, 7), v80, v7, 4), 0xDuLL);
  v85[4] = v68;
  v85[5] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v7.i8, 1), *v79.i8, *v7.i8, 0), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v7.i8, 1), v79, *v7.i8, 0), 0xDuLL);
  v85[10] = vrshrn_high_n_s32(vrshrn_n_s32(v56, 0xDuLL), v57, 0xDuLL);
  v85[11] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_s16(vmull_lane_s16(*v76.i8, *v7.i8, 2), *v79.i8, *v7.i8, 1), 0xDuLL), vmlal_high_lane_s16(vmull_high_lane_s16(v76, *v7.i8, 2), v79, *v7.i8, 1), 0xDuLL);
  v85[12] = v69;
  v85[13] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v84, 4), *v78.i8, v84, 5), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v84, 4), v78, v84, 5), 0xDuLL);
  v85[2] = vrshrn_high_n_s32(vrshrn_n_s32(v52, 0xDuLL), v53, 0xDuLL);
  v85[3] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_laneq_s16(vmull_laneq_s16(*v77.i8, v84, 7), *v78.i8, v84, 4), 0xDuLL), vmlal_high_laneq_s16(vmull_high_laneq_s16(v77, v84, 7), v78, v84, 4), 0xDuLL);
  v82 = a2 + 1;
  do
  {
    v83 = v85[v15];
    v82[-1] = vmovl_s16(*v83.i8);
    *v82 = vmovl_high_s16(v83);
    ++v15;
    v82 = (v82 + 4 * a3);
  }

  while (v15 != 16);
  return result;
}

double sub_2779EFD28(int16x8_t *a1, int32x4_t *a2, int a3, int a4)
{
  v285 = *MEMORY[0x277D85DE8];
  v4 = (((a4 - 4) >> 1) | ((a4 - 4) << 7));
  v5 = v4 > 5;
  v6 = (1 << v4) & 0x27;
  if (!v5 && v6 != 0)
  {
    a1 = (a1 + 14 * a3);
    a3 = -a3;
  }

  switch(a4)
  {
    case 0:
      sub_2779E1060(a1, &v276, a3, 13);
      for (i = 0; i != 128; i += 16)
      {
        *(&v276 + i) = vrhaddq_s16(*(&v276 + i), 0);
      }

      goto LABEL_73;
    case 1:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (j = 0; j != 128; j += 16)
      {
        *(&v276 + j) = vrhaddq_s16(*(&v276 + j), 0);
      }

      goto LABEL_73;
    case 2:
      sub_2779E1060(a1, &v276, a3, 13);
      for (k = 0; k != 128; k += 16)
      {
        *(&v276 + k) = vrhaddq_s16(*(&v276 + k), 0);
      }

      goto LABEL_102;
    case 3:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (m = 0; m != 128; m += 16)
      {
        *(&v276 + m) = vrhaddq_s16(*(&v276 + m), 0);
      }

      goto LABEL_102;
    case 4:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (n = 0; n != 128; n += 16)
      {
        *(&v276 + n) = vrhaddq_s16(*(&v276 + n), 0);
      }

      goto LABEL_73;
    case 5:
      sub_2779E1060(a1, &v276, a3, 13);
      for (ii = 0; ii != 128; ii += 16)
      {
        *(&v276 + ii) = vrhaddq_s16(*(&v276 + ii), 0);
      }

      v170 = vtrn1q_s16(v276, v277);
      v171 = vtrn2q_s16(v276, v277);
      v172 = vtrn1q_s16(v278, v279);
      v173 = vtrn2q_s16(v278, v279);
      v174 = vtrn1q_s16(v280, v281);
      v175 = vtrn2q_s16(v280, v281);
      v176 = vtrn1q_s16(v282, v283);
      v177 = vtrn2q_s16(v282, v283);
      v178 = vtrn1q_s32(v170, v172);
      v179 = vtrn2q_s32(v170, v172);
      v180 = vtrn1q_s32(v171, v173);
      v181 = vtrn2q_s32(v171, v173);
      v182 = vtrn1q_s32(v174, v176);
      v183 = vtrn2q_s32(v174, v176);
      v184 = vzip2q_s64(v178, v182);
      v178.i64[1] = v182.i64[0];
      v185 = vtrn1q_s32(v175, v177);
      v186 = vtrn2q_s32(v175, v177);
      v187 = vzip2q_s64(v180, v185);
      v180.i64[1] = v185.i64[0];
      v188 = vzip2q_s64(v179, v183);
      v179.i64[1] = v183.i64[0];
      v183.i64[0] = v181.i64[0];
      v183.i64[1] = v186.i64[0];
      v268 = v178;
      v269 = v180;
      v270 = v179;
      v271 = v183;
      v272 = v184;
      v273 = v187;
      v274 = v188;
      v275 = vzip2q_s64(v181, v186);
      v189 = &v268;
      for (jj = 112; jj != -16; jj -= 16)
      {
        v191 = *v189++;
        *(&v276 + jj) = v191;
      }

      goto LABEL_92;
    case 6:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (kk = 0; kk != 128; kk += 16)
      {
        *(&v276 + kk) = vrhaddq_s16(*(&v276 + kk), 0);
      }

      v197 = vtrn1q_s16(v276, v277);
      v198 = vtrn2q_s16(v276, v277);
      v199 = vtrn1q_s16(v278, v279);
      v200 = vtrn2q_s16(v278, v279);
      v201 = vtrn1q_s16(v280, v281);
      v202 = vtrn2q_s16(v280, v281);
      v203 = vtrn1q_s16(v282, v283);
      v204 = vtrn2q_s16(v282, v283);
      v205 = vtrn1q_s32(v197, v199);
      v206 = vtrn2q_s32(v197, v199);
      v207 = vtrn1q_s32(v198, v200);
      v208 = vtrn2q_s32(v198, v200);
      v209 = vtrn1q_s32(v201, v203);
      v210 = vtrn2q_s32(v201, v203);
      v211 = vzip2q_s64(v205, v209);
      v205.i64[1] = v209.i64[0];
      v212 = vtrn1q_s32(v202, v204);
      v213 = vtrn2q_s32(v202, v204);
      v214 = vzip2q_s64(v207, v212);
      v207.i64[1] = v212.i64[0];
      v215 = vzip2q_s64(v206, v210);
      v206.i64[1] = v210.i64[0];
      v210.i64[0] = v208.i64[0];
      v210.i64[1] = v213.i64[0];
      v268 = v205;
      v269 = v207;
      v270 = v206;
      v271 = v210;
      v272 = v211;
      v273 = v214;
      v274 = v215;
      v275 = vzip2q_s64(v208, v213);
      v216 = &v268;
      for (mm = 112; mm != -16; mm -= 16)
      {
        v218 = *v216++;
        *(&v276 + mm) = v218;
      }

      goto LABEL_92;
    case 7:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (nn = 0; nn != 128; nn += 16)
      {
        *(&v276 + nn) = vrhaddq_s16(*(&v276 + nn), 0);
      }

      v126 = vtrn1q_s16(v276, v277);
      v127 = vtrn2q_s16(v276, v277);
      v128 = vtrn1q_s16(v278, v279);
      v129 = vtrn2q_s16(v278, v279);
      v130 = vtrn1q_s16(v280, v281);
      v131 = vtrn2q_s16(v280, v281);
      v132 = vtrn1q_s16(v282, v283);
      v133 = vtrn2q_s16(v282, v283);
      v134 = vtrn1q_s32(v126, v128);
      v135 = vtrn2q_s32(v126, v128);
      v136 = vtrn1q_s32(v127, v129);
      v137 = vtrn2q_s32(v127, v129);
      v138 = vtrn1q_s32(v130, v132);
      v139 = vtrn2q_s32(v130, v132);
      v140 = vzip2q_s64(v134, v138);
      v134.i64[1] = v138.i64[0];
      v141 = vtrn1q_s32(v131, v133);
      v142 = vtrn2q_s32(v131, v133);
      v143 = vzip2q_s64(v136, v141);
      v136.i64[1] = v141.i64[0];
      v144 = vzip2q_s64(v135, v139);
      v135.i64[1] = v139.i64[0];
      v139.i64[0] = v137.i64[0];
      v139.i64[1] = v142.i64[0];
      v268 = v134;
      v269 = v136;
      v270 = v135;
      v271 = v139;
      v272 = v140;
      v273 = v143;
      v274 = v144;
      v275 = vzip2q_s64(v137, v142);
      v145 = &v268;
      for (i1 = 112; i1 != -16; i1 -= 16)
      {
        v147 = *v145++;
        *(&v276 + i1) = v147;
      }

      goto LABEL_92;
    case 8:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (i2 = 0; i2 != 128; i2 += 16)
      {
        *(&v276 + i2) = vrhaddq_s16(*(&v276 + i2), 0);
      }

      goto LABEL_102;
    case 9:
      for (i3 = 0; i3 != 128; i3 += 16)
      {
        *&v284[i3] = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i4 = 0; i4 != 128; i4 += 16)
      {
        *&v284[i4] = vshlq_n_s16(*&v284[i4], 2uLL);
      }

      for (i5 = 0; i5 != 128; i5 += 16)
      {
        *(&v276 + i5) = vaddq_s16(*&v284[i5], *&v284[i5]);
      }

      for (i6 = 0; i6 != 128; i6 += 16)
      {
        *(&v276 + i6) = vrhaddq_s16(*(&v276 + i6), 0);
      }

      v72 = 0;
      v73 = vtrn1q_s16(v276, v277);
      v74 = vtrn2q_s16(v276, v277);
      v75 = vtrn1q_s16(v278, v279);
      v76 = vtrn2q_s16(v278, v279);
      v77 = vtrn1q_s16(v280, v281);
      v78 = vtrn2q_s16(v280, v281);
      v79 = vtrn1q_s16(v282, v283);
      v80 = vtrn2q_s16(v282, v283);
      v81 = vtrn1q_s32(v73, v75);
      v82 = vtrn2q_s32(v73, v75);
      v83 = vtrn1q_s32(v74, v76);
      v84 = vtrn2q_s32(v74, v76);
      v85 = vtrn1q_s32(v77, v79);
      v86 = vtrn2q_s32(v77, v79);
      v87 = vtrn1q_s32(v78, v80);
      v88 = vtrn2q_s32(v78, v80);
      v89 = vzip2q_s64(v81, v85);
      v81.i64[1] = v85.i64[0];
      v90 = vzip2q_s64(v83, v87);
      v83.i64[1] = v87.i64[0];
      v91 = vzip2q_s64(v82, v86);
      v82.i64[1] = v86.i64[0];
      v92 = vzip2q_s64(v84, v88);
      v84.i64[1] = v88.i64[0];
      v268 = v81;
      v269 = v83;
      v270 = v82;
      v271 = v84;
      v272 = v89;
      v273 = v90;
      v274 = v91;
      v275 = v92;
      do
      {
        *&v284[v72] = vaddq_s16(*(&v268 + v72), *(&v268 + v72));
        v72 += 16;
      }

      while (v72 != 128);
      v93 = 0;
      v94 = a2 + 1;
      do
      {
        v95 = *&v284[v93];
        v96 = vmovl_s16(*v95.i8);
        v36 = vmovl_high_s16(v95);
        v94[-1] = v96;
        *v94 = v36;
        v93 += 16;
        v94 += 2;
      }

      while (v93 != 128);
      return *v36.i64;
    case 10:
      sub_2779E1060(a1, &v276, a3, 13);
      for (i7 = 0; i7 != 128; i7 += 16)
      {
        *(&v276 + i7) = vrhaddq_s16(*(&v276 + i7), 0);
      }

      v221 = 0;
      v222 = vtrn1q_s16(v276, v277);
      v223 = vtrn2q_s16(v276, v277);
      v224 = vtrn1q_s16(v278, v279);
      v225 = vtrn2q_s16(v278, v279);
      v226 = vtrn1q_s16(v280, v281);
      v227 = vtrn2q_s16(v280, v281);
      v228 = vtrn1q_s16(v282, v283);
      v229 = vtrn2q_s16(v282, v283);
      v230 = vtrn1q_s32(v222, v224);
      v231 = vtrn2q_s32(v222, v224);
      v232 = vtrn1q_s32(v223, v225);
      v233 = vtrn2q_s32(v223, v225);
      v234 = vtrn1q_s32(v226, v228);
      v235 = vtrn2q_s32(v226, v228);
      v236 = vtrn1q_s32(v227, v229);
      v237 = vtrn2q_s32(v227, v229);
      v238 = vzip2q_s64(v230, v234);
      v230.i64[1] = v234.i64[0];
      v239 = vzip2q_s64(v232, v236);
      v232.i64[1] = v236.i64[0];
      v240 = vzip2q_s64(v231, v235);
      v231.i64[1] = v235.i64[0];
      v241 = vzip2q_s64(v233, v237);
      v233.i64[1] = v237.i64[0];
      v268 = v230;
      v269 = v232;
      v270 = v231;
      v271 = v233;
      v272 = v238;
      v273 = v239;
      v274 = v240;
      v275 = v241;
      do
      {
        *&v284[v221] = vaddq_s16(*(&v268 + v221), *(&v268 + v221));
        v221 += 16;
      }

      while (v221 != 128);
      v242 = 0;
      v243 = a2 + 1;
      do
      {
        v244 = *&v284[v242];
        v245 = vmovl_s16(*v244.i8);
        v36 = vmovl_high_s16(v244);
        v243[-1] = v245;
        *v243 = v36;
        v242 += 16;
        v243 += 2;
      }

      while (v242 != 128);
      return *v36.i64;
    case 11:
      for (i8 = 0; i8 != 128; i8 += 16)
      {
        *&v284[i8] = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i9 = 0; i9 != 128; i9 += 16)
      {
        *&v284[i9] = vshlq_n_s16(*&v284[i9], 2uLL);
      }

      for (i10 = 0; i10 != 128; i10 += 16)
      {
        *(&v276 + i10) = vaddq_s16(*&v284[i10], *&v284[i10]);
      }

      for (i11 = 0; i11 != 128; i11 += 16)
      {
        *(&v276 + i11) = vrhaddq_s16(*(&v276 + i11), 0);
      }

LABEL_73:
      v149 = vtrn1q_s16(v276, v277);
      v150 = vtrn2q_s16(v276, v277);
      v151 = vtrn1q_s16(v278, v279);
      v152 = vtrn2q_s16(v278, v279);
      v153 = vtrn1q_s16(v280, v281);
      v154 = vtrn2q_s16(v280, v281);
      v155 = vtrn1q_s16(v282, v283);
      v156 = vtrn2q_s16(v282, v283);
      v157 = vtrn1q_s32(v149, v151);
      v158 = vtrn2q_s32(v149, v151);
      v159 = vtrn1q_s32(v150, v152);
      v160 = vtrn2q_s32(v150, v152);
      v161 = vtrn1q_s32(v153, v155);
      v162 = vtrn2q_s32(v153, v155);
      v163 = vtrn1q_s32(v154, v156);
      v164 = vtrn2q_s32(v154, v156);
      v165 = vzip2q_s64(v157, v161);
      v157.i64[1] = v161.i64[0];
      v166 = vzip2q_s64(v159, v163);
      v159.i64[1] = v163.i64[0];
      v167 = vzip2q_s64(v158, v162);
      v158.i64[1] = v162.i64[0];
      v168 = vzip2q_s64(v160, v164);
      v160.i64[1] = v164.i64[0];
      v268 = v157;
      v269 = v159;
      v270 = v158;
      v271 = v160;
      v272 = v165;
      v273 = v166;
      v274 = v167;
      v275 = v168;
      v36.i64[0] = sub_2779E1908(&v268, a2, 8, 13).u64[0];
      return *v36.i64;
    case 12:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (i12 = 0; i12 != 128; i12 += 16)
      {
        *(&v276 + i12) = vrhaddq_s16(*(&v276 + i12), 0);
      }

      v43 = 0;
      v44 = vtrn1q_s16(v276, v277);
      v45 = vtrn2q_s16(v276, v277);
      v46 = vtrn1q_s16(v278, v279);
      v47 = vtrn2q_s16(v278, v279);
      v48 = vtrn1q_s16(v280, v281);
      v49 = vtrn2q_s16(v280, v281);
      v50 = vtrn1q_s16(v282, v283);
      v51 = vtrn2q_s16(v282, v283);
      v52 = vtrn1q_s32(v44, v46);
      v53 = vtrn2q_s32(v44, v46);
      v54 = vtrn1q_s32(v45, v47);
      v55 = vtrn2q_s32(v45, v47);
      v56 = vtrn1q_s32(v48, v50);
      v57 = vtrn2q_s32(v48, v50);
      v58 = vtrn1q_s32(v49, v51);
      v59 = vtrn2q_s32(v49, v51);
      v60 = vzip2q_s64(v52, v56);
      v52.i64[1] = v56.i64[0];
      v61 = vzip2q_s64(v54, v58);
      v54.i64[1] = v58.i64[0];
      v62 = vzip2q_s64(v53, v57);
      v53.i64[1] = v57.i64[0];
      v63 = vzip2q_s64(v55, v59);
      v55.i64[1] = v59.i64[0];
      v268 = v52;
      v269 = v54;
      v270 = v53;
      v271 = v55;
      v272 = v60;
      v273 = v61;
      v274 = v62;
      v275 = v63;
      do
      {
        *&v284[v43] = vaddq_s16(*(&v268 + v43), *(&v268 + v43));
        v43 += 16;
      }

      while (v43 != 128);
      v64 = 0;
      v65 = a2 + 1;
      do
      {
        v66 = *&v284[v64];
        v67 = vmovl_s16(*v66.i8);
        v36 = vmovl_high_s16(v66);
        v65[-1] = v67;
        *v65 = v36;
        v64 += 16;
        v65 += 2;
      }

      while (v64 != 128);
      return *v36.i64;
    case 13:
      for (i13 = 0; i13 != 128; i13 += 16)
      {
        *&v284[i13] = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i14 = 0; i14 != 128; i14 += 16)
      {
        *&v284[i14] = vshlq_n_s16(*&v284[i14], 2uLL);
      }

      for (i15 = 0; i15 != 128; i15 += 16)
      {
        *(&v276 + i15) = vaddq_s16(*&v284[i15], *&v284[i15]);
      }

      for (i16 = 0; i16 != 128; i16 += 16)
      {
        *(&v276 + i16) = vrhaddq_s16(*(&v276 + i16), 0);
      }

LABEL_102:
      v247 = vtrn1q_s16(v276, v277);
      v248 = vtrn2q_s16(v276, v277);
      v249 = vtrn1q_s16(v278, v279);
      v250 = vtrn2q_s16(v278, v279);
      v251 = vtrn1q_s16(v280, v281);
      v252 = vtrn2q_s16(v280, v281);
      v253 = vtrn1q_s16(v282, v283);
      v254 = vtrn2q_s16(v282, v283);
      v255 = vtrn1q_s32(v247, v249);
      v256 = vtrn2q_s32(v247, v249);
      v257 = vtrn1q_s32(v248, v250);
      v258 = vtrn2q_s32(v248, v250);
      v259 = vtrn1q_s32(v251, v253);
      v260 = vtrn2q_s32(v251, v253);
      v261 = vtrn1q_s32(v252, v254);
      v262 = vtrn2q_s32(v252, v254);
      v263 = vzip2q_s64(v255, v259);
      v255.i64[1] = v259.i64[0];
      v264 = vzip2q_s64(v257, v261);
      v257.i64[1] = v261.i64[0];
      v265 = vzip2q_s64(v256, v260);
      v256.i64[1] = v260.i64[0];
      v266 = vzip2q_s64(v258, v262);
      v258.i64[1] = v262.i64[0];
      v268 = v255;
      v269 = v257;
      v270 = v256;
      v271 = v258;
      v272 = v263;
      v273 = v264;
      v274 = v265;
      v275 = v266;
      v219 = &v268;
      goto LABEL_103;
    case 14:
      sub_2779E0DD8(a1, &v276, a3, 13);
      for (i17 = 0; i17 != 128; i17 += 16)
      {
        *(&v276 + i17) = vrhaddq_s16(*(&v276 + i17), 0);
      }

      v11 = 0;
      v12 = vtrn1q_s16(v276, v277);
      v13 = vtrn2q_s16(v276, v277);
      v14 = vtrn1q_s16(v278, v279);
      v15 = vtrn2q_s16(v278, v279);
      v16 = vtrn1q_s16(v280, v281);
      v17 = vtrn2q_s16(v280, v281);
      v18 = vtrn1q_s16(v282, v283);
      v19 = vtrn2q_s16(v282, v283);
      v20 = vtrn1q_s32(v12, v14);
      v21 = vtrn2q_s32(v12, v14);
      v22 = vtrn1q_s32(v13, v15);
      v23 = vtrn2q_s32(v13, v15);
      v24 = vtrn1q_s32(v16, v18);
      v25 = vtrn2q_s32(v16, v18);
      v26 = vtrn1q_s32(v17, v19);
      v27 = vtrn2q_s32(v17, v19);
      v28 = vzip2q_s64(v20, v24);
      v20.i64[1] = v24.i64[0];
      v29 = vzip2q_s64(v22, v26);
      v22.i64[1] = v26.i64[0];
      v30 = vzip2q_s64(v21, v25);
      v21.i64[1] = v25.i64[0];
      v31 = vzip2q_s64(v23, v27);
      v23.i64[1] = v27.i64[0];
      v268 = v20;
      v269 = v22;
      v270 = v21;
      v271 = v23;
      v272 = v28;
      v273 = v29;
      v274 = v30;
      v275 = v31;
      do
      {
        *&v284[v11] = vaddq_s16(*(&v268 + v11), *(&v268 + v11));
        v11 += 16;
      }

      while (v11 != 128);
      v32 = 0;
      v33 = a2 + 1;
      do
      {
        v34 = *&v284[v32];
        v35 = vmovl_s16(*v34.i8);
        v36 = vmovl_high_s16(v34);
        v33[-1] = v35;
        *v33 = v36;
        v32 += 16;
        v33 += 2;
      }

      while (v32 != 128);
      return *v36.i64;
    case 15:
      for (i18 = 0; i18 != 128; i18 += 16)
      {
        *&v284[i18] = *a1;
        a1 = (a1 + 2 * a3);
      }

      for (i19 = 0; i19 != 128; i19 += 16)
      {
        *&v284[i19] = vshlq_n_s16(*&v284[i19], 2uLL);
      }

      for (i20 = 0; i20 != 128; i20 += 16)
      {
        *(&v276 + i20) = vaddq_s16(*&v284[i20], *&v284[i20]);
      }

      for (i21 = 0; i21 != 128; i21 += 16)
      {
        *(&v276 + i21) = vrhaddq_s16(*(&v276 + i21), 0);
      }

      v102 = vtrn1q_s16(v276, v277);
      v103 = vtrn2q_s16(v276, v277);
      v104 = vtrn1q_s16(v278, v279);
      v105 = vtrn2q_s16(v278, v279);
      v106 = vtrn1q_s16(v280, v281);
      v107 = vtrn2q_s16(v280, v281);
      v108 = vtrn1q_s16(v282, v283);
      v109 = vtrn2q_s16(v282, v283);
      v110 = vtrn1q_s32(v102, v104);
      v111 = vtrn2q_s32(v102, v104);
      v112 = vtrn1q_s32(v103, v105);
      v113 = vtrn2q_s32(v103, v105);
      v114 = vtrn1q_s32(v106, v108);
      v115 = vtrn2q_s32(v106, v108);
      v116 = vzip2q_s64(v110, v114);
      v110.i64[1] = v114.i64[0];
      v117 = vtrn1q_s32(v107, v109);
      v118 = vtrn2q_s32(v107, v109);
      v119 = vzip2q_s64(v112, v117);
      v112.i64[1] = v117.i64[0];
      v120 = vzip2q_s64(v111, v115);
      v111.i64[1] = v115.i64[0];
      v115.i64[0] = v113.i64[0];
      v115.i64[1] = v118.i64[0];
      v268 = v110;
      v269 = v112;
      v270 = v111;
      v271 = v115;
      v272 = v116;
      v273 = v119;
      v274 = v120;
      v275 = vzip2q_s64(v113, v118);
      v121 = &v268;
      for (i22 = 112; i22 != -16; i22 -= 16)
      {
        v123 = *v121++;
        *(&v276 + i22) = v123;
      }

LABEL_92:
      v219 = &v276;
LABEL_103:
      v36.i64[0] = sub_2779E1694(v219, a2, 8, 13).u64[0];
      break;
    default:
      return *v36.i64;
  }

  return *v36.i64;
}

double sub_2779F0994(int16x4_t *result, uint64_t a2, uint64_t a3, int a4, __n128 a5)
{
  v176 = *MEMORY[0x277D85DE8];
  v5 = (((a4 - 4) >> 1) | ((a4 - 4) << 7));
  v6 = v5 > 5;
  v7 = (1 << v5) & 0x27;
  if (!v6 && v7 != 0)
  {
    result = (result + 6 * a3);
    LODWORD(a3) = -a3;
  }

  switch(a4)
  {
    case 0:
      sub_2779F12CC(result, &v168, a3);
      v69 = 0;
      v70 = vtrn1_s16(v168, v169);
      v71 = vtrn2_s16(v168, v169);
      v72 = vtrn1_s16(v170, v171);
      v73 = vtrn2_s16(v170, v171);
      v74 = vzip1_s32(v70, v72);
      v75 = vzip2_s32(v70, v72);
      v76 = vzip1_s32(v71, v73);
      v77 = vzip2_s32(v71, v73);
      v78 = vadd_s16(v75, v76);
      v79 = vsub_s16(v76, v75);
      v80 = vadd_s16(v77, v74);
      v81 = vdup_n_s16(0x16A1u);
      v82 = vsub_s16(v74, v77);
      v83 = vmull_s16(v80, v81);
      v84 = vmlal_s16(v83, v78, v81);
      v85 = vmlsl_s16(v83, v78, v81);
      v86 = vdup_n_s16(0xC3Fu);
      v87 = vdup_n_s16(0x1D90u);
      v172 = vrshrn_n_s32(v84, 0xDuLL);
      v173 = vrshrn_n_s32(vmlal_s16(vmull_s16(v82, v87), v79, v86), 0xDuLL);
      v174 = vrshrn_n_s32(v85, 0xDuLL);
      v175 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v82, v86), v79, v87), 0xDuLL);
      do
      {
        a5 = vmovl_s16(*(&v172 + v69));
        *(a2 + 16 * v69++) = a5;
      }

      while (v69 != 4);
      return a5.n128_f64[0];
    case 1:
      sub_2779F13C0(result, &v168, a3);
      v88 = 0;
      v89 = vtrn1_s16(v168, v169);
      v90 = vtrn2_s16(v168, v169);
      v91 = vtrn1_s16(v170, v171);
      v92 = vtrn2_s16(v170, v171);
      v93 = vzip1_s32(v89, v91);
      v94 = vzip2_s32(v89, v91);
      v95 = vzip1_s32(v90, v92);
      v96 = vzip2_s32(v90, v92);
      v97 = vadd_s16(v94, v95);
      v98 = vsub_s16(v95, v94);
      v99 = vadd_s16(v96, v93);
      v100 = vdup_n_s16(0x16A1u);
      v101 = vsub_s16(v93, v96);
      v102 = vmull_s16(v99, v100);
      v103 = vmlal_s16(v102, v97, v100);
      v104 = vmlsl_s16(v102, v97, v100);
      v105 = vdup_n_s16(0xC3Fu);
      v106 = vdup_n_s16(0x1D90u);
      v172 = vrshrn_n_s32(v103, 0xDuLL);
      v173 = vrshrn_n_s32(vmlal_s16(vmull_s16(v101, v106), v98, v105), 0xDuLL);
      v174 = vrshrn_n_s32(v104, 0xDuLL);
      v175 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v101, v105), v98, v106), 0xDuLL);
      do
      {
        a5 = vmovl_s16(*(&v172 + v88));
        *(a2 + 16 * v88++) = a5;
      }

      while (v88 != 4);
      return a5.n128_f64[0];
    case 2:
      sub_2779F12CC(result, &v168, a3);
      goto LABEL_66;
    case 3:
    case 8:
      sub_2779F13C0(result, &v168, a3);
      goto LABEL_66;
    case 4:
      sub_2779F13C0(result, &v168, a3);
      v114 = 0;
      v115 = vtrn1_s16(v168, v169);
      v116 = vtrn2_s16(v168, v169);
      v117 = vtrn1_s16(v170, v171);
      v118 = vtrn2_s16(v170, v171);
      v119 = vzip1_s32(v115, v117);
      v120 = vzip2_s32(v115, v117);
      v121 = vzip1_s32(v116, v118);
      v122 = vzip2_s32(v116, v118);
      v123 = vadd_s16(v120, v121);
      v124 = vsub_s16(v121, v120);
      v125 = vadd_s16(v122, v119);
      v126 = vdup_n_s16(0x16A1u);
      v127 = vsub_s16(v119, v122);
      v128 = vmull_s16(v125, v126);
      v129 = vmlal_s16(v128, v123, v126);
      v130 = vmlsl_s16(v128, v123, v126);
      v131 = vdup_n_s16(0xC3Fu);
      v132 = vdup_n_s16(0x1D90u);
      v172 = vrshrn_n_s32(v129, 0xDuLL);
      v173 = vrshrn_n_s32(vmlal_s16(vmull_s16(v127, v132), v124, v131), 0xDuLL);
      v174 = vrshrn_n_s32(v130, 0xDuLL);
      v175 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v127, v131), v124, v132), 0xDuLL);
      do
      {
        a5 = vmovl_s16(*(&v172 + v114));
        *(a2 + 16 * v114++) = a5;
      }

      while (v114 != 4);
      return a5.n128_f64[0];
    case 5:
      sub_2779F12CC(result, &v168, a3);
      v142 = vtrn1_s16(v168, v169);
      v143 = vtrn2_s16(v168, v169);
      v144 = vtrn1_s16(v170, v171);
      v145 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v142, v144);
      v165 = vzip1_s32(v143, v145);
      v166 = vzip2_s32(v142, v144);
      v167 = vzip2_s32(v143, v145);
      v146 = &v164;
      for (i = 24; i != -8; i -= 8)
      {
        v148 = *v146++;
        *(&v168 + i) = v148;
      }

      goto LABEL_77;
    case 6:
      sub_2779F13C0(result, &v168, a3);
      v107 = vtrn1_s16(v168, v169);
      v108 = vtrn2_s16(v168, v169);
      v109 = vtrn1_s16(v170, v171);
      v110 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v107, v109);
      v165 = vzip1_s32(v108, v110);
      v166 = vzip2_s32(v107, v109);
      v167 = vzip2_s32(v108, v110);
      v111 = &v164;
      for (j = 24; j != -8; j -= 8)
      {
        v113 = *v111++;
        *(&v168 + j) = v113;
      }

      goto LABEL_77;
    case 7:
      sub_2779F13C0(result, &v168, a3);
      v156 = vtrn1_s16(v168, v169);
      v157 = vtrn2_s16(v168, v169);
      v158 = vtrn1_s16(v170, v171);
      v159 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v156, v158);
      v165 = vzip1_s32(v157, v159);
      v166 = vzip2_s32(v156, v158);
      v167 = vzip2_s32(v157, v159);
      v160 = &v164;
      for (k = 24; k != -8; k -= 8)
      {
        v162 = *v160++;
        *(&v168 + k) = v162;
      }

      goto LABEL_77;
    case 9:
      for (m = 0; m != 32; m += 8)
      {
        *(&v172 + m) = *result;
        result = (result + 2 * a3);
      }

      for (n = 0; n != 32; n += 8)
      {
        *(&v172 + n) = vshl_n_s16(*(&v172 + n), 2uLL);
      }

      v49 = 0;
      v50 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v168 + v49) = vqrshrn_n_s32(vmull_s16(*(&v172 + v49), v50), 0xCuLL);
        v49 += 8;
      }

      while (v49 != 32);
      v51 = 0;
      v52 = vtrn1_s16(v168, v169);
      v53 = vtrn2_s16(v168, v169);
      v54 = vtrn1_s16(v170, v171);
      v55 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v52, v54);
      v165 = vzip1_s32(v53, v55);
      v166 = vzip2_s32(v52, v54);
      v167 = vzip2_s32(v53, v55);
      v56 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v172 + v51) = vqrshrn_n_s32(vmull_s16(*(&v164 + v51), v56), 0xCuLL);
        v51 += 8;
      }

      while (v51 != 32);
      for (ii = 0; ii != 4; ++ii)
      {
        a5 = vmovl_s16(*(&v172 + ii));
        *(a2 + 16 * ii) = a5;
      }

      return a5.n128_f64[0];
    case 10:
      sub_2779F12CC(result, &v168, a3);
      v149 = 0;
      v150 = vtrn1_s16(v168, v169);
      v151 = vtrn2_s16(v168, v169);
      v152 = vtrn1_s16(v170, v171);
      v153 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v150, v152);
      v165 = vzip1_s32(v151, v153);
      v166 = vzip2_s32(v150, v152);
      v167 = vzip2_s32(v151, v153);
      v154 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v172 + v149) = vqrshrn_n_s32(vmull_s16(*(&v164 + v149), v154), 0xCuLL);
        v149 += 8;
      }

      while (v149 != 32);
      for (jj = 0; jj != 4; ++jj)
      {
        a5 = vmovl_s16(*(&v172 + jj));
        *(a2 + 16 * jj) = a5;
      }

      return a5.n128_f64[0];
    case 11:
      for (kk = 0; kk != 32; kk += 8)
      {
        *(&v172 + kk) = *result;
        result = (result + 2 * a3);
      }

      for (mm = 0; mm != 32; mm += 8)
      {
        *(&v172 + mm) = vshl_n_s16(*(&v172 + mm), 2uLL);
      }

      v19 = 0;
      v20 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v168 + v19) = vqrshrn_n_s32(vmull_s16(*(&v172 + v19), v20), 0xCuLL);
        v19 += 8;
      }

      while (v19 != 32);
      v21 = 0;
      v22 = vtrn1_s16(v168, v169);
      v23 = vtrn2_s16(v168, v169);
      v24 = vtrn1_s16(v170, v171);
      v25 = vtrn2_s16(v170, v171);
      v26 = vzip1_s32(v22, v24);
      v27 = vzip2_s32(v22, v24);
      v28 = vzip1_s32(v23, v25);
      v29 = vzip2_s32(v23, v25);
      v30 = vadd_s16(v27, v28);
      v31 = vsub_s16(v28, v27);
      v32 = vadd_s16(v29, v26);
      v33 = vdup_n_s16(0x16A1u);
      v34 = vsub_s16(v26, v29);
      v35 = vmull_s16(v32, v33);
      v36 = vmlal_s16(v35, v30, v33);
      v37 = vmlsl_s16(v35, v30, v33);
      v38 = vdup_n_s16(0xC3Fu);
      v39 = vdup_n_s16(0x1D90u);
      v172 = vrshrn_n_s32(v36, 0xDuLL);
      v173 = vrshrn_n_s32(vmlal_s16(vmull_s16(v34, v39), v31, v38), 0xDuLL);
      v174 = vrshrn_n_s32(v37, 0xDuLL);
      v175 = vrshrn_n_s32(vmlsl_s16(vmull_s16(v34, v38), v31, v39), 0xDuLL);
      do
      {
        a5 = vmovl_s16(*(&v172 + v21));
        *(a2 + 16 * v21++) = a5;
      }

      while (v21 != 4);
      return a5.n128_f64[0];
    case 12:
      sub_2779F13C0(result, &v168, a3);
      v40 = 0;
      v41 = vtrn1_s16(v168, v169);
      v42 = vtrn2_s16(v168, v169);
      v43 = vtrn1_s16(v170, v171);
      v44 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v41, v43);
      v165 = vzip1_s32(v42, v44);
      v166 = vzip2_s32(v41, v43);
      v167 = vzip2_s32(v42, v44);
      v45 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v172 + v40) = vqrshrn_n_s32(vmull_s16(*(&v164 + v40), v45), 0xCuLL);
        v40 += 8;
      }

      while (v40 != 32);
      for (nn = 0; nn != 4; ++nn)
      {
        a5 = vmovl_s16(*(&v172 + nn));
        *(a2 + 16 * nn) = a5;
      }

      return a5.n128_f64[0];
    case 13:
      for (i1 = 0; i1 != 32; i1 += 8)
      {
        *(&v172 + i1) = *result;
        result = (result + 2 * a3);
      }

      for (i2 = 0; i2 != 32; i2 += 8)
      {
        *(&v172 + i2) = vshl_n_s16(*(&v172 + i2), 2uLL);
      }

      v135 = 0;
      v136 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v168 + v135) = vqrshrn_n_s32(vmull_s16(*(&v172 + v135), v136), 0xCuLL);
        v135 += 8;
      }

      while (v135 != 32);
LABEL_66:
      v137 = vtrn1_s16(v168, v169);
      v138 = vtrn2_s16(v168, v169);
      v139 = vtrn1_s16(v170, v171);
      v140 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v137, v139);
      v165 = vzip1_s32(v138, v140);
      v166 = vzip2_s32(v137, v139);
      v167 = vzip2_s32(v138, v140);
      v141 = &v164;
      goto LABEL_78;
    case 14:
      sub_2779F13C0(result, &v168, a3);
      v10 = 0;
      v11 = vtrn1_s16(v168, v169);
      v12 = vtrn2_s16(v168, v169);
      v13 = vtrn1_s16(v170, v171);
      v14 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v11, v13);
      v165 = vzip1_s32(v12, v14);
      v166 = vzip2_s32(v11, v13);
      v167 = vzip2_s32(v12, v14);
      v15 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v172 + v10) = vqrshrn_n_s32(vmull_s16(*(&v164 + v10), v15), 0xCuLL);
        v10 += 8;
      }

      while (v10 != 32);
      for (i3 = 0; i3 != 4; ++i3)
      {
        a5 = vmovl_s16(*(&v172 + i3));
        *(a2 + 16 * i3) = a5;
      }

      return a5.n128_f64[0];
    case 15:
      for (i4 = 0; i4 != 32; i4 += 8)
      {
        *(&v172 + i4) = *result;
        result = (result + 2 * a3);
      }

      for (i5 = 0; i5 != 32; i5 += 8)
      {
        *(&v172 + i5) = vshl_n_s16(*(&v172 + i5), 2uLL);
      }

      v60 = 0;
      v61 = vdup_n_s16(0x16A1u);
      do
      {
        *(&v168 + v60) = vqrshrn_n_s32(vmull_s16(*(&v172 + v60), v61), 0xCuLL);
        v60 += 8;
      }

      while (v60 != 32);
      v62 = vtrn1_s16(v168, v169);
      v63 = vtrn2_s16(v168, v169);
      v64 = vtrn1_s16(v170, v171);
      v65 = vtrn2_s16(v170, v171);
      v164 = vzip1_s32(v62, v64);
      v165 = vzip1_s32(v63, v65);
      v166 = vzip2_s32(v62, v64);
      v167 = vzip2_s32(v63, v65);
      v66 = &v164;
      for (i6 = 24; i6 != -8; i6 -= 8)
      {
        v68 = *v66++;
        *(&v168 + i6) = v68;
      }

LABEL_77:
      v141 = &v168;
LABEL_78:
      a5.n128_u64[0] = sub_2779F14D0(v141, a2).u64[0];
      break;
    default:
      return a5.n128_f64[0];
  }

  return a5.n128_f64[0];
}

int16x4_t sub_2779F12CC(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v3 = 0;
  v21 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v17 + v3) = *a1;
    v3 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 32);
  for (i = 0; i != 32; i += 8)
  {
    *(&v17 + i) = vshl_n_s16(*(&v17 + i), 2uLL);
  }

  v5 = vadd_s16(v19, v18);
  v6 = vsub_s16(v18, v19);
  v7 = vsub_s16(v17, v20);
  v8 = vdup_n_s16(0x16A1u);
  v9 = vmull_s16(vadd_s16(v20, v17), v8);
  v10 = vmlal_s16(v9, v5, v8);
  v11 = vmlsl_s16(v9, v5, v8);
  v12 = vdup_n_s16(0xC3Fu);
  v13 = vdup_n_s16(0x1D90u);
  v14 = vmlal_s16(vmull_s16(v7, v13), v6, v12);
  v15 = vmlsl_s16(vmull_s16(v7, v12), v6, v13);
  *a2 = vrshrn_n_s32(v10, 0xDuLL);
  a2[1] = vrshrn_n_s32(v14, 0xDuLL);
  result = vrshrn_n_s32(v11, 0xDuLL);
  a2[2] = result;
  a2[3] = vrshrn_n_s32(v15, 0xDuLL);
  return result;
}

int16x4_t sub_2779F13C0(int16x4_t *a1, int16x4_t *a2, int a3)
{
  v3 = 0;
  v19 = *MEMORY[0x277D85DE8];
  do
  {
    *(&v15 + v3) = *a1;
    v3 += 8;
    a1 = (a1 + 2 * a3);
  }

  while (v3 != 32);
  for (i = 0; i != 32; i += 8)
  {
    *(&v15 + i) = vshl_n_s16(*(&v15 + i), 2uLL);
  }

  v5 = vdup_n_s16(0x1A21u);
  v6 = vdup_n_s16(0x1364u);
  v7 = vdup_n_s16(0xA52u);
  v8 = vdup_n_s16(0x1DB6u);
  v9 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v16, v6), v17, v5), v15, v7), v18, v8);
  v10 = vmlsl_s16(vmull_s16(vqadd_s16(v15, v16), v5), v18, v5);
  v11 = vaddq_s32(vmlsl_s16(vmull_s16(v18, v6), v17, v5), vmlsl_s16(vmull_s16(v15, v8), v16, v7));
  v12.i64[0] = 0x300000003;
  v12.i64[1] = 0x300000003;
  v13 = vaddq_s32(vsubq_s32(vmulq_s32(vmull_s16(v17, v5), v12), v9), v11);
  *a2 = vrshrn_n_s32(v9, 0xDuLL);
  a2[1] = vrshrn_n_s32(v10, 0xDuLL);
  result = vrshrn_n_s32(v11, 0xDuLL);
  a2[2] = result;
  a2[3] = vrshrn_n_s32(v13, 0xDuLL);
  return result;
}

int32x4_t sub_2779F14D0(int16x4_t *a1, uint64_t a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x277D85DE8];
  v3 = vdup_n_s16(0x1A21u);
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = vmull_s16(v5, v3);
  v8 = vdup_n_s16(0x1364u);
  v9 = vdup_n_s16(0xA52u);
  v10 = vdup_n_s16(0x1DB6u);
  v11 = vmlal_s16(vmlal_s16(vmlal_s16(vmull_s16(v4, v8), v5, v3), *a1, v9), v6, v10);
  v12 = vmlsl_s16(vmull_s16(vqadd_s16(*a1, v4), v3), v6, v3);
  v13 = vaddq_s32(vmlsl_s16(vmull_s16(v6, v8), v5, v3), vmlsl_s16(vmull_s16(*a1, v10), v4, v9));
  v14.i64[0] = 0x300000003;
  v14.i64[1] = 0x300000003;
  v16[0] = vrshrn_n_s32(v11, 0xDuLL);
  v16[1] = vrshrn_n_s32(v12, 0xDuLL);
  v16[2] = vrshrn_n_s32(v13, 0xDuLL);
  v16[3] = vrshrn_n_s32(vaddq_s32(vsubq_s32(vmulq_s32(v7, v14), v11), v13), 0xDuLL);
  do
  {
    result = vmovl_s16(v16[v2]);
    *(a2 + 16 * v2++) = result;
  }

  while (v2 != 4);
  return result;
}

uint64_t sub_2779F15BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a4;
  if ((0x20005uLL >> a5) & 1) != 0 || (v6 = 0x10003uLL >> a5, v7 = a2, v8 = a3, (v6))
  {
    v7 = a2;
    if (*a1)
    {
      if (*(a1 + 15020))
      {
        v7 = a2 + 1;
      }

      else
      {
        v7 = a2;
      }
    }

    if (*(a1 + 4))
    {
      if (*(a1 + 15016))
      {
        v8 = a3 + 1;
      }

      else
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = a3;
    }
  }

  return sub_2779F1650((a1 + 10776), *(a1 + 32) + 4 * (a3 + *(a1 + 56) * a2), *(a1 + 56), v7, v8, v5, (*(*(a1 + 7960) + 192) >> 3) & 1);
}

uint64_t sub_2779F1650(_DWORD *a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, int a7)
{
  v8 = a1[1060];
  v9 = a1[1061];
  v10 = a4 << (2 - v9);
  v11 = a5 << (2 - v8);
  v12 = dword_277C3BF30[a6] >> v9;
  v13 = dword_277C3BEE4[a6] >> v8;
  a1[1059] = 0;
  if (a5 | a4)
  {
    v14 = v11 + v13;
    if (v14 <= a1[1058])
    {
      v14 = a1[1058];
    }

    a1[1058] = v14;
    v12 += v10;
    if (v12 <= a1[1057])
    {
      v12 = a1[1057];
    }
  }

  else
  {
    a1[1058] = v13;
  }

  a1[1057] = v12;
  v15 = &a1[16 * v10] + 2 * v11;
  if (a7)
  {
    if (v9 == 1)
    {
      v16 = off_28866F478;
    }

    else
    {
      v16 = off_28866F510;
    }

    if (v8 == 1)
    {
      v17 = v16;
    }

    else
    {
      v17 = off_28866F5A8;
    }

    return (v17[a6])(2 * a2, a3, v15);
  }

  else
  {
    if (v9 == 1)
    {
      v19 = off_28866F2B0;
    }

    else
    {
      v19 = off_28866F348;
    }

    if (v8 == 1)
    {
      v20 = v19;
    }

    else
    {
      v20 = off_28866F3E0;
    }

    return (v20[a6])(a2, a3, v15);
  }
}

uint64_t sub_2779F1744(uint64_t a1, int a2, int a3, unsigned int a4, unsigned int a5)
{
  v88 = *MEMORY[0x277D85DE8];
  if (a4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  result = 0;
  v70 = a5;
  v71 = 8 * a2;
  v8 = a2;
  v9 = 2 * a2;
  v69 = a4;
  v75 = a5;
  v76 = v9;
  v77 = a2;
  do
  {
    v73 = v5;
    v72 = v6;
    if (a5 >= 1)
    {
      v10 = 0;
      v11 = a1 + v5;
      v74 = a1 + v71 * v6;
      do
      {
        v80 = v10;
        v81 = result;
        v79 = v11;
        if (a3)
        {
          v12 = 0;
          v13 = (2 * (v74 + 8 * v10));
          do
          {
            v14 = &v86[v12];
            v15 = vshll_high_n_u16(*v13, 2uLL);
            *v14 = vshll_n_u16(*v13->i8, 2uLL);
            v14[1] = v15;
            v12 += 32;
            v13 = (v13 + v9);
          }

          while (v12 != 256);
        }

        else
        {
          v16 = 0;
          v17 = v86;
          v18 = v11;
          do
          {
            for (i = 0; i != 8; ++i)
            {
              *&v17[4 * i] = 4 * *(v18 + i);
            }

            ++v16;
            v17 += 32;
            v18 += v8;
          }

          while (v16 != 8);
        }

        v20 = 8;
        v21 = 4;
        v22 = 4;
        v23 = 8;
        do
        {
          v24 = 0;
          v84 = v22;
          v82 = v23;
          v83 = v20;
          v25 = v20 >> 1;
          v26 = (v20 >> 1) - 1;
          if (v23 <= 1)
          {
            v27 = 1;
          }

          else
          {
            v27 = v23;
          }

          v28 = v21;
          v85 = v21;
          v29 = v21;
          do
          {
            v30 = &v86[32 * v24];
            v31 = v87;
            __memcpy_chk();
            v32 = &v30[v29];
            v33 = v87[0];
            if (v26)
            {
              v31 = v87;
              v34 = v25 - 1;
              v35 = &v86[32 * v24];
              do
              {
                v36 = v33;
                *v35 = 2 * v33;
                v37 = v31[2];
                v31 += 2;
                v33 = v37;
                v35[v28] = *(v31 - 1) - ((v36 + v37 + 1) >> 1);
                ++v35;
                --v34;
              }

              while (v34);
              v38 = &v35[v28];
            }

            else
            {
              v35 = &v86[32 * v24];
              v38 = &v30[v29];
            }

            *v35 = 2 * v33;
            *v38 = v31[1] - v33;
            v39 = &v30[v29];
            v40 = v25;
            do
            {
              v41 = v32;
              v42 = *v32++;
              *v30++ += (*v39 + v42 + 1) >> 1;
              v39 = v41;
              --v40;
            }

            while (v40);
            ++v24;
          }

          while (v24 != v27);
          v43 = 0;
          v44 = v86;
          do
          {
            v45 = v44;
            v46 = v82;
            v47 = v82;
            do
            {
              v48 = *v45;
              v45 += 8;
              v87[v46++] = v48;
              --v47;
            }

            while (v47);
            v49 = v87;
            if (v82 >> 1 == 1)
            {
              v52 = &v87[v82];
              v51 = &v87[v84];
            }

            else
            {
              v50 = (v82 >> 1) - 1;
              v51 = &v87[v84];
              v52 = &v87[v82];
              do
              {
                v53 = *v52;
                *v49++ = *v52;
                v54 = v52[2];
                v52 += 2;
                *v51++ = (2 * *(v52 - 1) - (v53 + v54) + 2) >> 2;
                --v50;
              }

              while (v50);
            }

            v55 = 0;
            v56 = *v52;
            *v49 = *v52;
            *v51 = (v52[1] - v56 + 1) >> 1;
            v57 = &v87[v84];
            v58 = v57;
            do
            {
              v59 = v57;
              v60 = *v57++;
              v87[v55++] += (*v58 + v60 + 1) >> 1;
              v58 = v59;
            }

            while (v82 >> 1 != v55);
            v61 = 0;
            v62 = v44;
            do
            {
              *v62 = v87[v61];
              v62 += 8;
              ++v61;
            }

            while (v82 != v61);
            ++v43;
            ++v44;
          }

          while (v43 != v83);
          v20 = v85;
          if (v84 < 2)
          {
            break;
          }

          v22 = (v84 + 1) >> 1;
          v21 = (v29 + 1) >> 1;
          v23 = v84;
        }

        while (v29 > 1);
        v63 = 0;
        v64 = 0;
        v65 = v86;
        v9 = v76;
        v8 = v77;
        do
        {
          for (j = 0; j != 8; ++j)
          {
            if (((j | v63) & 0xFFFFFFFC) != 0)
            {
              v67 = *&v65[4 * j];
              if (v67 < 0)
              {
                v67 = -v67;
              }

              v64 += v67;
            }
          }

          ++v63;
          v65 += 32;
        }

        while (v63 != 8);
        result = v81 + v64;
        v10 = v80 + 1;
        v11 = v79 + 8;
      }

      while (v80 + 1 != v75);
    }

    v6 = v72 + 1;
    a5 = v70;
    v5 = v73 + v71;
  }

  while (v72 + 1 != v69);
  return result;
}

uint64_t sub_2779F1B94(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(a2 + 2 * v3);
    v6 = (0x8000 - v5 - v4);
    if (v6 <= 4)
    {
      v6 = 4;
    }

    if (v6 >= 0x7FFF)
    {
      v7 = 0x7FFF;
    }

    else
    {
      v7 = v6;
    }

    v8 = 14 - (__clz(v7) ^ 0x1F);
    v9 = v7 << v8;
    v10 = v7 << v8 < 0x40;
    v11 = v3;
    if (a3)
    {
      v11 = *(a3 + 4 * v3);
    }

    *(result + 4 * v11) = word_277C31464[(v10 | ((255 - (((v9 << 8) + 0x4000) >> 15)) >> 23) | (((v9 << 8) + 0x4000) >> 15)) - 128] + (v8 << 9);
    ++v3;
    v4 = 0x8000 - v5;
  }

  while (v5);
  return result;
}

uint64_t sub_2779F1C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = v13;
  v19 = v18;
  v21 = v20;
  v22 = a11;
  v132 = *MEMORY[0x277D85DE8];
  v23 = ((v16 + (a11 - 1) * a9) >> 4) + 8;
  v24 = v11 - 3 * v12;
  v25 = v24 - 3;
  if (a10 == 4)
  {
    v26 = 4 * v12;
    v27 = v123;
    do
    {
      v28 = 0;
      v29 = &v124;
      v30 = v14;
      do
      {
        if ((v30 & 0xF) != 0)
        {
          result = (v30 >> 4);
          v32 = (v25 + result);
          v33 = vshrq_n_s16(*(v13 + 16 * (v30 & 0xF)), 1uLL);
          v34 = *v32;
          v35 = (v32 + v12);
          v36 = *v35;
          v37 = (v35 + v12);
          v38 = *(v37 + v12);
          v39 = vtrn1_s8(v34, v36);
          v40 = vtrn2_s8(v34, v36);
          v41 = vtrn1_s8(*v37, v38);
          v42 = vtrn2_s8(*v37, v38);
          v43 = vtrn1_s16(v39, v41);
          v44 = vtrn2_s16(v39, v41);
          v45 = vtrn1_s16(v40, v42);
          v46 = vtrn2_s16(v40, v42);
          v47 = vmovl_u8(v43);
          v48 = vmovl_u8(v45);
          v49 = vmovl_u8(v44);
          v50 = vmovl_u8(v46);
          *v48.i8 = vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmla_lane_s16(vmul_lane_s16(*v48.i8, *v33.i8, 1), *v47.i8, *v33.i8, 0), *v49.i8, *v33.i8, 2), *v50.i8, *v33.i8, 3), *&vextq_s8(v47, v47, 8uLL), v33, 4), *&vextq_s8(v48, v48, 8uLL), v33, 5), *&vextq_s8(v49, v49, 8uLL), v33, 6), *&vextq_s8(v50, v50, 8uLL), v33, 7);
          v124.i32[v28] = vqrshrun_n_s16(v48, 6uLL).u32[0];
        }

        else
        {
          v51 = 0;
          result = v24 + (v30 >> 4);
          do
          {
            v29->i8[v51++] = *result;
            result += v12;
          }

          while (v51 != 4);
        }

        v30 += v15;
        ++v28;
        v29 = (v29 + 4);
      }

      while (v28 != 4);
      v52 = vtrn1_s16(v124, v125);
      v53 = vtrn2_s16(v124, v125);
      v54 = vzip1_s32(v52, v53);
      v55 = vzip2_s32(v52, v53);
      v56 = vtrn1_s8(v54, v55);
      v57 = vtrn2_s8(v54, v55);
      *v27 = v56.i32[0];
      v27[32] = v56.i32[1];
      v27[16] = v57.i32[0];
      v27[48] = v57.i32[1];
      v25 += v26;
      v27 += 64;
      v24 += v26;
      v58 = __OFSUB__(v23, 4);
      v23 -= 4;
    }

    while (!((v23 < 0) ^ v58 | (v23 == 0)));
  }

  else
  {
    v59 = 8 * v12;
    v60 = v123;
    do
    {
      v61 = a10;
      v62 = v60;
      v63 = v14;
      do
      {
        v64 = 0;
        result = &v124;
        do
        {
          if ((v63 & 0xF) != 0)
          {
            v65 = (v25 + (v63 >> 4));
            v66 = vshrq_n_s16(*(v13 + 16 * (v63 & 0xF)), 1uLL);
            v67.i64[0] = *v65;
            v68.i64[0] = *(v65 + v12);
            v69 = (v65 + v12 + v12);
            v70.i64[0] = *v69;
            v71 = (v69 + v12);
            v72.i64[0] = *v71;
            v73 = (v71 + v12);
            v74 = *v73;
            v75 = (v73 + v12);
            v76 = *v75;
            v77 = (v75 + v12);
            v67.i64[1] = v74;
            v68.i64[1] = v76;
            v78 = vtrn1q_s8(v67, v68);
            v70.i64[1] = *v77;
            v72.i64[1] = *(v77 + v12);
            v79 = vtrn2q_s8(v67, v68);
            v80 = vtrn1q_s8(v70, v72);
            v81 = vtrn2q_s8(v70, v72);
            v82 = vtrn1q_s16(v78, v80);
            v83 = vtrn2q_s16(v78, v80);
            v84 = vtrn1q_s16(v79, v81);
            v85 = vtrn2q_s16(v79, v81);
            v86 = vuzp1q_s32(v82, v84);
            v87 = vuzp2q_s32(v82, v84);
            v88 = vuzp1q_s32(v83, v85);
            v89 = vuzp2q_s32(v83, v85);
            *(&v124 + v64) = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_lane_s16(vmovl_high_u8(v86), *v66.i8, 1), vmovl_u8(*v86.i8), *v66.i8, 0), vmovl_u8(*v88.i8), *v66.i8, 2), vmovl_high_u8(v88), *v66.i8, 3), vmovl_u8(*v87.i8), v66, 4), vmovl_high_u8(v87), v66, 5), vmovl_u8(*v89.i8), v66, 6), vmovl_high_u8(v89), v66, 7), 6uLL);
          }

          else
          {
            v90 = 0;
            v91 = (v24 + (v63 >> 4));
            do
            {
              *(result + v90++) = *v91;
              v91 += v12;
            }

            while (v90 != 8);
          }

          v63 += v15;
          ++v64;
          result += 8;
        }

        while (v64 != 8);
        *v92.i8 = v124;
        *v93.i8 = v125;
        v94.i64[0] = v126;
        v95.i64[0] = v127;
        v92.i64[1] = v128;
        v93.i64[1] = v129;
        v96 = vtrn1q_s8(v92, v93);
        v97 = vtrn2q_s8(v92, v93);
        v94.i64[1] = v130;
        v95.i64[1] = v131;
        v98 = vtrn1q_s8(v94, v95);
        v99 = vtrn2q_s8(v94, v95);
        v100 = vtrn1q_s16(v96, v98);
        v101 = vtrn2q_s16(v96, v98);
        v102 = vtrn1q_s16(v97, v99);
        v103 = vtrn2q_s16(v97, v99);
        v104 = vuzp1q_s32(v100, v102);
        v105 = vuzp2q_s32(v100, v102);
        v106 = vuzp1q_s32(v101, v103);
        v107 = vuzp2q_s32(v101, v103);
        *v62 = v104.i64[0];
        v62[8] = vextq_s8(v104, v104, 8uLL).u64[0];
        v62[16] = v106.i64[0];
        v62[24] = vextq_s8(v106, v106, 8uLL).u64[0];
        v62[32] = v105.i64[0];
        v62[40] = vextq_s8(v105, v105, 8uLL).u64[0];
        v62[48] = v107.i64[0];
        v62[56] = vextq_s8(v107, v107, 8uLL).u64[0];
        ++v62;
        v61 -= 8;
      }

      while (v61);
      v25 += v59;
      v60 += 512;
      v24 += v59;
      v58 = __OFSUB__(v23, 8);
      v23 -= 8;
    }

    while (!((v23 < 0) ^ v58 | (v23 == 0)));
  }

  if (a10 == 4)
  {
    do
    {
      v111 = &v123[64 * (v16 >> 4)];
      if ((v16 & 0xF) != 0)
      {
        v112 = vshrq_n_s16(*(v13 + 16 * (v16 & 0xF)), 1uLL);
        v113 = vmovl_u8(*v111);
        *v113.i8 = vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_laneq_s16(vmla_lane_s16(vmla_lane_s16(vmla_lane_s16(vmul_n_s16(*v113.i8, v112.i16[0]), *&vmovl_u8(v111[8]), *v112.i8, 1), *&vmovl_u8(v111[16]), *v112.i8, 2), *&vmovl_u8(v111[24]), *v112.i8, 3), *&vmovl_u8(v111[32]), v112, 4), *&vmovl_u8(v111[40]), v112, 5), *&vmovl_u8(v111[48]), v112, 6), *&vmovl_u8(v111[56]), v112, 7);
        v114 = vqrshrun_n_s16(v113, 6uLL).u32[0];
      }

      else
      {
        v114 = v111[24].u32[0];
      }

      v21->i32[0] = v114;
      v16 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  else if (a10 == 8)
  {
    do
    {
      v108 = &v123[64 * (v16 >> 4)];
      if ((v16 & 0xF) != 0)
      {
        v109 = vshrq_n_s16(*(v13 + 16 * (v16 & 0xF)), 1uLL);
        v110 = vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v108), v109.i16[0]), vmovl_u8(v108[8]), *v109.i8, 1), vmovl_u8(v108[16]), *v109.i8, 2), vmovl_u8(v108[24]), *v109.i8, 3), vmovl_u8(v108[32]), v109, 4), vmovl_u8(v108[40]), v109, 5), vmovl_u8(v108[48]), v109, 6), vmovl_u8(v108[56]), v109, 7), 6uLL);
      }

      else
      {
        v110 = v108[24];
      }

      *v21 = v110;
      v16 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  else
  {
    v115 = v16;
    do
    {
      v116 = &v123[64 * (v115 >> 4)];
      if ((v115 & 0xF) != 0)
      {
        v117 = 0;
        do
        {
          v118 = vshrq_n_s16(*(v17 + 16 * (v115 & 0xF)), 1uLL);
          v119 = *&v116[v117];
          v120 = *&v116[v117 + 64];
          v121 = *&v116[v117 + 128];
          v122 = *&v116[v117 + 192];
          *v21[v117 / 8].i8 = vqrshrun_high_n_s16(vqrshrun_n_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_u8(*v119.i8), v118.i16[0]), vmovl_u8(*v120.i8), *v118.i8, 1), vmovl_u8(*v121.i8), *v118.i8, 2), vmovl_u8(*v122.i8), *v118.i8, 3), vmovl_u8(*&v116[v117 + 256]), v118, 4), vmovl_u8(*&v116[v117 + 320]), v118, 5), vmovl_u8(*&v116[v117 + 384]), v118, 6), vmovl_u8(*&v116[v117 + 448]), v118, 7), 6uLL), vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_laneq_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmlaq_lane_s16(vmulq_n_s16(vmovl_high_u8(v119), v118.i16[0]), vmovl_high_u8(v120), *v118.i8, 1), vmovl_high_u8(v121), *v118.i8, 2), vmovl_high_u8(v122), *v118.i8, 3), vmovl_high_u8(*&v116[v117 + 256]), v118, 4), vmovl_high_u8(*&v116[v117 + 320]), v118, 5), vmovl_high_u8(*&v116[v117 + 384]), v118, 6), vmovl_high_u8(*&v116[v117 + 448]), v118, 7), 6uLL);
          v117 += 16;
        }

        while (a10 != v117);
      }

      else
      {
        result = memcpy(v21, v116 + 192, (a10 & 0xFFFFFFF0) - 16 + 16);
      }

      v115 += a9;
      v21 = (v21 + v19);
      --v22;
    }

    while (v22);
  }

  return result;
}

char *sub_2779F226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11)
{
  result = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v24 = v14;
  v25 = v13;
  v27 = v26;
  v28 = a11;
  v119 = *MEMORY[0x277D85DE8];
  v29 = ((v17 + (a11 - 1) * a9) >> 4) + 8;
  v30 = &result[-3 * v12 - 3];
  if (a10 == 4)
  {
    v31 = v110;
    do
    {
      v32 = 0;
      v33 = v15;
      do
      {
        v34 = *(v14 + 16 * (v33 & 0xF));
        v35 = &v30[v33 >> 4];
        *&_Q1 = *v35;
        v37 = &v35[v12];
        v38 = *v37;
        v39 = &v37[v12];
        _Q3.i64[0] = *v39;
        _Q5 = vshrn_high_n_s16(vshrn_n_s16(v34, 1uLL), v34, 1uLL);
        *(&_Q1 + 1) = v38;
        _Q3.i64[1] = *(v39 + v12);
        __asm
        {
          USDOT           V0.4S, V1.16B, V5.16B
          USDOT           V1.4S, V3.16B, V5.16B
        }

        v48 = vpaddq_s32(_Q0, _Q1);
        *v48.i8 = vmovn_s32(v48);
        v111.i32[v32] = vqrshrun_n_s16(v48, 6uLL).u32[0];
        v33 += v16;
        ++v32;
      }

      while (v32 != 4);
      v49 = vtrn1_s16(v111, v112);
      v50 = vtrn2_s16(v111, v112);
      v51 = vzip1_s32(v49, v50);
      v52 = vzip2_s32(v49, v50);
      v53 = vtrn1_s8(v51, v52);
      v54 = vtrn2_s8(v51, v52);
      *v31 = v53.i32[0];
      v31[32] = v53.i32[1];
      v31[16] = v54.i32[0];
      v31[48] = v54.i32[1];
      v30 += 4 * v12;
      v31 += 64;
      _VF = __OFSUB__(v29, 4);
      v29 -= 4;
    }

    while (!((v29 < 0) ^ _VF | (v29 == 0)));
  }

  else
  {
    v55 = v110;
    do
    {
      v56 = a10;
      v57 = v55;
      v58 = v15;
      do
      {
        for (i = 0; i != 64; i += 8)
        {
          v60 = *(v14 + 16 * (v58 & 0xF));
          v61 = &v30[v58 >> 4];
          *&_Q1 = *v61;
          v63 = &v61[v12];
          v64 = *v63;
          v65 = &v63[v12];
          *&_Q3 = *v65;
          v67 = &v65[v12];
          v68 = *v67;
          v69 = (v67 + v12);
          *&_Q5 = *v69;
          v71 = (v69 + v12);
          v72 = *v71;
          v73 = (v71 + v12);
          _Q7.i64[0] = *v73;
          *(&_Q1 + 1) = v64;
          *(&_Q3 + 1) = v68;
          *(&_Q5 + 1) = v72;
          _Q7.i64[1] = *(v73 + v12);
          _Q17 = vshrn_high_n_s16(vshrn_n_s16(v60, 1uLL), v60, 1uLL);
          __asm
          {
            USDOT           V0.4S, V1.16B, V17.16B
            USDOT           V1.4S, V3.16B, V17.16B
            USDOT           V2.4S, V5.16B, V17.16B
            USDOT           V3.4S, V7.16B, V17.16B
          }

          *(&v111 + i) = vqrshrun_n_s16(vuzp1q_s16(vpaddq_s32(_Q0, _Q1), vpaddq_s32(_Q2, _Q3)), 6uLL);
          v58 += v16;
        }

        *v78.i8 = v111;
        *v79.i8 = v112;
        v80.i64[0] = v113;
        v81.i64[0] = v114;
        v78.i64[1] = v115;
        v79.i64[1] = v116;
        v82 = vtrn1q_s8(v78, v79);
        v83 = vtrn2q_s8(v78, v79);
        v80.i64[1] = v117;
        v81.i64[1] = v118;
        v84 = vtrn1q_s8(v80, v81);
        v85 = vtrn2q_s8(v80, v81);
        v86 = vtrn1q_s16(v82, v84);
        v87 = vtrn2q_s16(v82, v84);
        v88 = vtrn1q_s16(v83, v85);
        v89 = vtrn2q_s16(v83, v85);
        v90 = vuzp1q_s32(v86, v88);
        _Q3 = vuzp2q_s32(v86, v88);
        _Q4 = vuzp1q_s32(v87, v89);
        v91 = vuzp2q_s32(v87, v89);
        _Q1 = vextq_s8(v90, v90, 8uLL);
        _Q5 = vextq_s8(_Q4, _Q4, 8uLL);
        _Q6 = vextq_s8(_Q3, _Q3, 8uLL);
        *v57 = v90.i64[0];
        _Q2 = vextq_s8(v91, v91, 8uLL);
        v57[8] = _Q1.i64[0];
        v57[16] = _Q4.i64[0];
        v57[24] = _Q5.i64[0];
        v57[32] = _Q3.i64[0];
        v57[40] = _Q6.i64[0];
        v57[48] = v91.i64[0];
        v57[56] = _Q2.i64[0];
        ++v57;
        v56 -= 8;
      }

      while (v56);
      v30 += 8 * v12;
      v55 += 512;
      _VF = __OFSUB__(v29, 8);
      v29 -= 8;
    }

    while (!((v29 < 0) ^ _VF | (v29 == 0)));
  }

  if (a10 == 4)
  {
    do
    {
      v92 = &v110[64 * (v17 >> 4)];
      if ((v17 & 0xF) != 0)
      {
        _Q0 = *(v14 + 16 * (v17 & 0xF));
        _Q0.i16[0] = vshrn_n_s16(_Q0, 1uLL).u16[0];
        *_Q1.i8 = vzip1_s8(*v92, v92[8]);
        *_Q2.i8 = vzip1_s8(v92[16], v92[24]);
        *_Q3.i8 = vzip1_s8(v92[32], v92[40]);
        *_Q4.i8 = vzip1_s8(v92[48], v92[56]);
        _Q1 = vzip1q_s16(_Q1, _Q2);
        _Q2 = vzip1q_s16(_Q3, _Q4);
        __asm
        {
          USDOT           V3.4S, V1.16B, V0.4B[0]
          USDOT           V3.4S, V2.16B, V0.4B[1]
        }

        *_Q0.i8 = vmovn_s32(_Q3);
        v95 = vqrshrun_n_s16(_Q0, 6uLL).u32[0];
      }

      else
      {
        v95 = v92[24].u32[0];
      }

      *v27 = v95;
      v17 += a9;
      v27 = (v27 + v13);
      --v28;
    }

    while (v28);
  }

  else
  {
    v96 = v17;
    do
    {
      v97 = &v110[64 * (v96 >> 4)];
      if ((v96 & 0xF) != 0)
      {
        v98 = 0;
        v99 = vshrn_n_s16(*(v24 + 16 * (v96 & 0xF)), 1uLL);
        _Q0 = vdupq_lane_s32(v99, 0);
        _Q1 = vdupq_lane_s32(v99, 1);
        do
        {
          _Q2.i64[0] = *&v97[v98];
          _Q3.i64[0] = *&v97[v98 + 64];
          _Q4.i64[0] = *&v97[v98 + 128];
          _Q5.i64[0] = *&v97[v98 + 192];
          _Q6.i64[0] = *&v97[v98 + 256];
          _Q7.i64[0] = *&v97[v98 + 320];
          v22.i64[0] = *&v97[v98 + 384];
          _Q17.i64[0] = *&v97[v98 + 448];
          v102 = vzip1q_s8(_Q2, _Q3);
          v103 = vzip1q_s8(_Q4, _Q5);
          v104 = vzip1q_s8(_Q6, _Q7);
          v105 = vzip1q_s8(v22, _Q17);
          _Q6 = vzip1q_s16(v102, v103);
          _Q2 = vzip2q_s16(v102, v103);
          _Q3 = vzip1q_s16(v104, v105);
          _Q4 = vzip2q_s16(v104, v105);
          __asm
          {
            USDOT           V5.4S, V6.16B, V0.16B
            USDOT           V5.4S, V3.16B, V1.16B
            USDOT           V3.4S, V2.16B, V0.16B
            USDOT           V3.4S, V4.16B, V1.16B
          }

          _Q2 = vuzp1q_s16(_Q5, _Q3);
          *&v27[v98 / 4] = vqrshrun_n_s16(_Q2, 6uLL);
          v98 += 8;
        }

        while (a10 != v98);
      }

      else
      {
        result = memcpy(v27, v97 + 192, (a10 & 0xFFFFFFF8) - 8 + 8);
      }

      v96 += a9;
      v27 = (v27 + v25);
      --v28;
    }

    while (v28);
  }

  return result;
}

uint64_t sub_2779F26B0(uint64_t result, int a2, _BYTE *a3, double a4, double a5, double a6, int32x4_t a7, int32x4_t a8)
{
  v8 = a2 + (a2 & 1u) - 4;
  if (v8 >= 4)
  {
    v18 = 0;
    v19 = (result + 1);
    do
    {
      v20 = 0;
      v21 = v18;
      v22 = 64;
      v23 = v19;
      v24 = word_277BEC0C0;
      do
      {
        v25 = *v23++;
        v26 = v25 + *(result + ((v21 + v20) & ~((v21 + v20) >> 31)));
        v27 = *v24++;
        v22 += v26 * v27;
        --v20;
      }

      while (v20 != -4);
      v28 = (v22 >> 7) & ~(v22 >> 31);
      if (v28 >= 255)
      {
        LOBYTE(v28) = -1;
      }

      *a3++ = v28;
      v18 = v21 + 2;
      v19 += 2;
    }

    while (!v21);
    if (a2 + (a2 & 1) == 8)
    {
      LODWORD(v29) = 4;
    }

    else
    {
      v30 = 0;
      v31.i64[0] = 0xFF000000FFLL;
      v31.i64[1] = 0xFF000000FFLL;
      do
      {
        a7.i32[0] = *(result + v30 + 5);
        a8.i32[0] = *(result + v30 + 1);
        a7 = vaddw_u16(vandq_s8(vmovl_u16(vrev64_s16(*&vmovl_u8(*a8.i8))), v31), *&vmovl_u8(*a7.i8));
        a8 = vmlaq_s32(xmmword_277BB73E0, a7, xmmword_277BB73D0);
        a7.i32[0] = vaddvq_s32(a8);
        v32 = (a7.i32[0] >> 7) & ~(a7.i32[0] >> 31);
        if (v32 >= 255)
        {
          LOBYTE(v32) = -1;
        }

        *a3++ = v32;
        v29 = v30 + 6;
        v30 += 2;
      }

      while (v29 < v8);
    }

    if (v29 < a2)
    {
      v33 = a2 - 1;
      v34 = v29;
      v35 = a2;
      v36 = v29 + 1;
      v37 = result + v29;
      do
      {
        v38 = 0;
        v39 = 64;
        v40 = v36;
        v41 = word_277BEC0C0;
        do
        {
          if (v40 >= v33)
          {
            v42 = v33;
          }

          else
          {
            v42 = v40;
          }

          v43 = *v41++;
          v39 += (*(result + v42) + *(v37 + v38--)) * v43;
          ++v40;
        }

        while (v38 != -4);
        v44 = (v39 >> 7) & ~(v39 >> 31);
        if (v44 >= 255)
        {
          LOBYTE(v44) = -1;
        }

        *a3++ = v44;
        v34 += 2;
        v36 += 2;
        v37 += 2;
      }

      while (v34 < v35);
    }
  }

  else if (a2 >= 1)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = 0;
      v12 = 64;
      v13 = v10;
      v14 = word_277BEC0C0;
      do
      {
        if (v13 >= a2 - 1)
        {
          v15 = a2 - 1;
        }

        else
        {
          v15 = v13;
        }

        v16 = *v14++;
        v12 += (*(result + v15) + *(result + ((v9 + v11) & ~((v9 + v11) >> 31)))) * v16;
        --v11;
        ++v13;
      }

      while (v11 != -4);
      v17 = (v12 >> 7) & ~(v12 >> 31);
      if (v17 >= 255)
      {
        LOBYTE(v17) = -1;
      }

      *a3++ = v17;
      v9 += 2;
      v10 += 2;
    }

    while (v9 < a2);
  }

  return result;
}

uint64_t sub_2779F28D8(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, double a9, double a10, double a11, int32x4_t a12, int32x4_t a13)
{
  v19 = a7 * a2;
  if (v19 <= 0x1FFFFFFE9 && (v20 = malloc_type_malloc(v19 + 23, 0x5F484EBFuLL)) != 0)
  {
    v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v21 - 8) = v20;
  }

  else
  {
    v21 = 0;
  }

  if (a3 <= a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = a3;
  }

  if (v22 < 0 || (v23 = malloc_type_malloc((v22 + 23), 0x5F484EBFuLL)) == 0)
  {
    v24 = 0;
    if ((a2 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = (v23 + 23) & 0xFFFFFFFFFFFFFFF0;
    *(v24 - 8) = v23;
    if ((a2 & 0x80000000) != 0)
    {
LABEL_16:
      v26 = 0;
      if (a6 < 0)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  v25 = malloc_type_malloc(a2 + 23, 0x5F484EBFuLL);
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF0);
  *(v26 - 1) = v25;
  if (a6 < 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v27 = malloc_type_malloc((a6 + 23), 0x5F484EBFuLL);
  if (v27)
  {
    v28 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF0);
    *(v28 - 1) = v27;
    goto LABEL_20;
  }

LABEL_19:
  v28 = 0;
LABEL_20:
  if (v21)
  {
    v29 = v24 == 0;
  }

  else
  {
    v29 = 1;
  }

  v31 = v29 || v26 == 0 || v28 == 0;
  v32 = !v31;
  v48 = v32;
  if (!v31)
  {
    v45 = a6;
    v46 = a8;
    if (a2 >= 1)
    {
      v33 = a3;
      v34 = v21;
      v35 = a2;
      do
      {
        sub_2779F2B50(a1, v33, v34, a7, v24, a9, a10, a11, a12, a13);
        v34 += a7;
        a1 += a4;
        --v35;
      }

      while (v35);
    }

    if (a7 >= 1)
    {
      v36 = 0;
      do
      {
        if (a2 >= 1)
        {
          v37 = (v21 + v36);
          v38 = a2;
          v39 = v26;
          do
          {
            *v39++ = *v37;
            v37 += a7;
            --v38;
          }

          while (v38);
        }

        sub_2779F2B50(v26, a2, v28, v45, v24, a9, a10, a11, a12, a13);
        if (v45 >= 1)
        {
          v40 = (a5 + v36);
          v41 = v45;
          v42 = v28;
          do
          {
            v43 = *v42++;
            *v40 = v43;
            v40 += v46;
            --v41;
          }

          while (v41);
        }

        ++v36;
      }

      while (v36 != a7);
    }
  }

  if (v21)
  {
    free(*(v21 - 8));
  }

  if (v24)
  {
    free(*(v24 - 8));
  }

  if (v26)
  {
    free(*(v26 - 1));
  }

  if (v28)
  {
    free(*(v28 - 1));
  }

  return v48;
}

char *sub_2779F2B50(char *__src, uint64_t a2, _BYTE *__dst, uint64_t a4, uint64_t a5, double a6, double a7, double a8, int32x4_t a9, int32x4_t a10)
{
  v11 = a2;
  v12 = __src;
  if (a2 == a4)
  {

    return memcpy(__dst, __src, a2);
  }

  v15 = a4;
  v16 = 0;
  v17 = a2;
  while (1)
  {
    v17 = (v17 + 1) >> 1;
    if (v17 < a4)
    {
      break;
    }

    ++v16;
    if (v17 == 1)
    {
      goto LABEL_10;
    }
  }

  if (!v16)
  {
LABEL_59:

    return sub_2779F2EE8(__src, v11, __dst, v15, a6, *&a7);
  }

LABEL_10:
  v18 = 0;
  v19 = 0;
  v20 = (a2 + 1) >> 1;
  v21 = (v16 - 1);
  v57 = v20;
  do
  {
    v22 = v11;
    v11 = (v11 + 1) >> 1;
    if (v19)
    {
      result = v18;
    }

    else
    {
      result = v12;
    }

    if (v11 == v15 && v19 == v21)
    {
      v18 = __dst;
    }

    else
    {
      v18 = (a5 + ((v19 << 31 >> 31) & v20));
    }

    if (v22)
    {
      if (v22 >= 7)
      {
        v34 = 0;
        v35 = 1;
        v36 = v18;
        do
        {
          v37 = v35;
          v38 = &result[v34];
          v39 = (result[v34] << 6) + 64;
          v40 = v34 - 1;
          for (i = 1; i != 4; ++i)
          {
            v39 += (v38[i] + result[v40 & ~(v40 >> 31)]) * asc_277BEC0C8[i];
            --v40;
          }

          v35 = 0;
          v42 = (v39 >> 7) & ~(v39 >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          *v36++ = v42;
          v34 = 2;
        }

        while ((v37 & 1) != 0);
        if (v22 == 7)
        {
          v43 = 4;
        }

        else
        {
          v44 = result + 5;
          v45 = result + 3;
          v46 = 4;
          do
          {
            v47 = 0;
            v48 = (result[v46] << 6) + 64;
            v49 = v45;
            do
            {
              v50 = *v49--;
              v48 += (v44[v47] + v50) * asc_277BEC0C8[v47 + 1];
              ++v47;
            }

            while (v47 != 3);
            v51 = (v48 >> 7) & ~(v48 >> 31);
            if (v51 >= 255)
            {
              LOBYTE(v51) = -1;
            }

            *v36++ = v51;
            v46 += 2;
            v44 += 2;
            v45 += 2;
          }

          while (v46 < (v22 - 3));
          v43 = v46;
        }

        for (; v22 > v43; v43 += 2)
        {
          v52 = (result[v43] << 6) + 64;
          v53 = result - 1;
          for (j = 1; j != 4; ++j)
          {
            v55 = v43 + j;
            if (v43 + j >= v22)
            {
              v55 = v22 - 1;
            }

            v52 += (result[v55] + v53[v43]) * asc_277BEC0C8[j];
            --v53;
          }

          v56 = (v52 >> 7) & ~(v52 >> 31);
          if (v56 >= 255)
          {
            LOBYTE(v56) = -1;
          }

          *v36++ = v56;
        }
      }

      else if (v22 >= 1)
      {
        v27 = 0;
        v28 = v18;
        do
        {
          v29 = (result[v27] << 6) + 64;
          v30 = -1;
          for (k = 1; k != 4; ++k)
          {
            v32 = v27 + k;
            if (v27 + k >= v22)
            {
              v32 = v22 - 1;
            }

            v29 += (result[v32] + result[(v27 + v30) & ~((v27 + v30) >> 31)]) * asc_277BEC0C8[k];
            --v30;
          }

          v33 = (v29 >> 7) & ~(v29 >> 31);
          if (v33 >= 255)
          {
            LOBYTE(v33) = -1;
          }

          *v28++ = v33;
          v27 += 2;
        }

        while (v27 < v22);
      }
    }

    else
    {
      v24 = v18;
      v25 = v21;
      v26 = v19;
      result = sub_2779F26B0(result, v22, v18, a6, a7, a8, a9, a10);
      v19 = v26;
      v21 = v25;
      v18 = v24;
      v20 = v57;
    }

    ++v19;
  }

  while (v19 != v16);
  if (v11 != v15)
  {
    __src = v18;
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_2779F2EE8(uint64_t result, int a2, _BYTE *a3, int a4, double a5, int32x2_t a6)
{
  if (a2 <= a4)
  {
    v7 = word_277BEBCC0;
  }

  else
  {
    v6 = 16 * a4;
    if (16 * a4 >= 13 * a2)
    {
      v7 = &unk_277BEC0D0;
    }

    else if (v6 >= 11 * a2)
    {
      v7 = &unk_277BEC4D0;
    }

    else if (v6 >= 9 * a2)
    {
      v7 = &unk_277BEC8D0;
    }

    else
    {
      v7 = &unk_277BECCD0;
    }
  }

  v8 = a4 / 2;
  v9 = (a4 / 2 + (a2 << 14)) / a4;
  if (a2 <= a4)
  {
    v8 = a4 / -2;
  }

  v10 = (v8 + ((a2 - a4) << 13)) / a4;
  if (v10 > 49023)
  {
    v22 = 0;
  }

  else
  {
    v11 = v10 + v9 + 128;
    if (v11 <= 49152)
    {
      v11 = 49152;
    }

    v12 = v11 - v10 - 128;
    if (v12 == v9)
    {
      v13 = (a4 / 2 + (a2 << 14)) / a4;
    }

    else
    {
      v13 = v9 + 1;
    }

    v14 = v12 == v9;
    v15 = (v12 - v13) / v9;
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    v17 = v16 & 0xFFFFFFFC;
    a6.i32[0] = v16;
    v18 = (v16 & 0xFFFFFFFC) + 4;
    v19 = 0uLL;
    v20.i64[0] = 0x100000001;
    v20.i64[1] = 0x100000001;
    do
    {
      v21 = v19;
      v19 = vaddq_s32(v19, v20);
      v18 -= 4;
    }

    while (v18);
    v22 = vaddvq_s32(vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v17), xmmword_277BB7060), vdupq_lane_s32(a6, 0)), v21, v19));
  }

  v23 = v10 + 128;
  v24 = a4 - 1;
  for (i = v10 + v9 * (a4 - 1) + 128; (i >> 14) + 4 >= a2; i -= v9)
  {
    --v24;
  }

  if (v22 <= v24)
  {
    if (v22)
    {
      for (j = 0; j != v22; ++j)
      {
        v35 = 0;
        v36 = 0;
        v37 = (v23 >> 14) - 3;
        v38 = 8;
        do
        {
          v36 += *(result + (v37 & ~(v37 >> 31))) * v7[((v23 >> 5) & 0x1F8) + v35++];
          ++v37;
          --v38;
        }

        while (v38);
        v39 = ((v36 + 64) >> 7) & ~((v36 + 64) >> 31);
        if (v39 >= 255)
        {
          LOBYTE(v39) = -1;
        }

        *a3++ = v39;
        v23 += v9;
      }
    }

    do
    {
      v40 = 0;
      v41 = 0;
      for (k = -3; k != 5; ++k)
      {
        v41 += *(result + (v23 >> 14) + k) * v7[((v23 >> 5) & 0x1F8) + v40++];
      }

      v43 = ((v41 + 64) >> 7) & ~((v41 + 64) >> 31);
      if (v43 >= 255)
      {
        LOBYTE(v43) = -1;
      }

      *a3++ = v43;
      v23 += v9;
      v14 = v22++ == v24;
    }

    while (!v14);
    v44 = v24 + 1;
    if (v24 + 1 < a4)
    {
      v45 = a2 - 1;
      do
      {
        v46 = 0;
        v47 = 0;
        v48 = (v23 >> 14) - 3;
        v49 = 8;
        do
        {
          if (v48 >= v45)
          {
            v50 = v45;
          }

          else
          {
            v50 = v48;
          }

          v47 += *(result + v50) * v7[((v23 >> 5) & 0x1F8) + v46++];
          ++v48;
          --v49;
        }

        while (v49);
        v51 = ((v47 + 64) >> 7) & ~((v47 + 64) >> 31);
        if (v51 >= 255)
        {
          LOBYTE(v51) = -1;
        }

        *a3++ = v51;
        ++v44;
        v23 += v9;
      }

      while (v44 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v26 = 0;
    v27 = a2 - 1;
    do
    {
      v28 = 0;
      v29 = 0;
      v30 = (v23 >> 14) - 3;
      v31 = 8;
      do
      {
        if (v30 >= v27)
        {
          v32 = v27;
        }

        else
        {
          v32 = v30;
        }

        v29 += *(result + (v32 & ~(v32 >> 31))) * v7[((v23 >> 5) & 0x1F8) + v28++];
        ++v30;
        --v31;
      }

      while (v31);
      v33 = ((v29 + 64) >> 7) & ~((v29 + 64) >> 31);
      if (v33 >= 255)
      {
        LOBYTE(v33) = -1;
      }

      *a3++ = v33;
      ++v26;
      v23 += v9;
    }

    while (v26 != a4);
  }

  return result;
}

char *sub_2779F3224(char *__src, int a2, void *__dst, int a4, uint64_t a5, int a6, double a7, int32x2_t a8)
{
  v9 = __src;
  if (a2 == a4)
  {

    return memcpy(__dst, __src, 2 * a2);
  }

  v10 = 0;
  v11 = a2;
  while (1)
  {
    v11 = (v11 + 1) >> 1;
    if (v11 < a4)
    {
      break;
    }

    ++v10;
    if (v11 == 1)
    {
      goto LABEL_10;
    }
  }

  if (!v10)
  {
LABEL_205:

    return sub_2779F3840(__src, a2, __dst, a4, a6, a7, a8);
  }

LABEL_10:
  v114 = v8;
  __src = 0;
  v12 = 0;
  v13 = (a2 + 1) >> 1;
  *&a7 = 0xC00000038;
  a8 = 64;
  do
  {
    v14 = a2;
    a2 = (a2 + 1) >> 1;
    if (v12)
    {
      v15 = __src;
    }

    else
    {
      v15 = v9;
    }

    v16 = a2 == a4 && v12 == v10 - 1;
    __src = (a5 + 2 * ((v12 << 31 >> 31) & v13));
    if (v16)
    {
      __src = __dst;
    }

    if (v14)
    {
      if (v14 >= 7)
      {
        v55 = 0;
        v56 = 1;
        v57 = __src;
        do
        {
          v58 = v56;
          v59 = &v15[2 * v55];
          v60 = (*v59 << 6) + 64;
          v61 = v55 - 1;
          v62 = 1u;
          do
          {
            v60 += (*&v59[v62 * 2] + *&v15[2 * (v61 & ~(v61 >> 31))]) * asc_277BEC0C8[v62];
            ++v62;
            --v61;
          }

          while (v62 != 4);
          v56 = 0;
          v63 = v60 >> 7;
          if (v63 >= 0x3FF)
          {
            v64 = 1023;
          }

          else
          {
            v64 = v63;
          }

          if (v63 >= 0xFFF)
          {
            v65 = 4095;
          }

          else
          {
            v65 = v63;
          }

          if (v63 >= 0xFF)
          {
            v66 = 255;
          }

          else
          {
            v66 = v63;
          }

          if (a6 != 12)
          {
            v65 = v66;
          }

          if (a6 != 10)
          {
            v64 = v65;
          }

          if ((v63 & 0x80000000) == 0)
          {
            v67 = v64;
          }

          else
          {
            v67 = 0;
          }

          *v57 = v67;
          v57 += 2;
          v55 = 2;
        }

        while ((v58 & 1) != 0);
        if (v14 == 7)
        {
          v68 = 4;
        }

        else
        {
          v90 = v15;
          v91 = 4;
          do
          {
            v92 = (*&v15[2 * v91] << 6) + 64;
            v93 = 10;
            v94 = L"#";
            v95 = 6;
            do
            {
              v96 = *v94++;
              v92 += (*&v90[v93] + *&v90[v95]) * v96;
              v93 += 2;
              v95 -= 2;
            }

            while (v95);
            v97 = v92 >> 7;
            if (v97 >= 0x3FF)
            {
              v98 = 1023;
            }

            else
            {
              v98 = v97;
            }

            if (v97 >= 0xFFF)
            {
              v99 = 4095;
            }

            else
            {
              v99 = v97;
            }

            if (v97 >= 0xFF)
            {
              v100 = 255;
            }

            else
            {
              v100 = v97;
            }

            if (a6 != 12)
            {
              v99 = v100;
            }

            if (a6 != 10)
            {
              v98 = v99;
            }

            if ((v97 & 0x80000000) == 0)
            {
              v101 = v98;
            }

            else
            {
              v101 = 0;
            }

            *v57 = v101;
            v57 += 2;
            v91 += 2;
            v90 += 4;
          }

          while (v91 < (v14 - 3));
          v68 = v91;
        }

        if (v68 < v14)
        {
          v102 = &v15[2 * v68 - 2];
          do
          {
            v103 = (*&v15[2 * v68] << 6) + 64;
            v104 = v102;
            for (i = 1; i != 4; ++i)
            {
              v107 = *v104--;
              v106 = v107;
              v108 = v68 + i;
              if (v68 + i >= v14 - 1)
              {
                v108 = v14 - 1;
              }

              v103 += (*&v15[2 * v108] + v106) * asc_277BEC0C8[i];
            }

            v109 = v103 >> 7;
            if (v109 >= 0x3FF)
            {
              v110 = 1023;
            }

            else
            {
              v110 = v109;
            }

            if (v109 >= 0xFFF)
            {
              v111 = 4095;
            }

            else
            {
              v111 = v109;
            }

            if (v109 >= 0xFF)
            {
              v112 = 255;
            }

            else
            {
              v112 = v109;
            }

            if (a6 != 12)
            {
              v111 = v112;
            }

            if (a6 != 10)
            {
              v110 = v111;
            }

            if ((v109 & 0x80000000) == 0)
            {
              v113 = v110;
            }

            else
            {
              v113 = 0;
            }

            *v57 = v113;
            v57 += 2;
            v68 += 2;
            v102 += 4;
          }

          while (v14 > v68);
        }
      }

      else if (v14 >= 1)
      {
        v31 = 0;
        v32 = __src;
        do
        {
          v33 = (*&v15[2 * v31] << 6) + 64;
          v34 = -1;
          for (j = 1; j != 4; ++j)
          {
            v36 = v31 + j;
            if (v31 + j >= v14 - 1)
            {
              v36 = v14 - 1;
            }

            v33 += (*&v15[2 * v36] + *&v15[2 * ((v31 + v34) & ~((v31 + v34) >> 31))]) * asc_277BEC0C8[j];
            --v34;
          }

          v37 = v33 >> 7;
          if (v37 >= 0x3FF)
          {
            v38 = 1023;
          }

          else
          {
            v38 = v37;
          }

          if (v37 >= 0xFFF)
          {
            v39 = 4095;
          }

          else
          {
            v39 = v37;
          }

          if (v37 >= 0xFF)
          {
            v40 = 255;
          }

          else
          {
            v40 = v37;
          }

          if (a6 != 12)
          {
            v39 = v40;
          }

          if (a6 != 10)
          {
            v38 = v39;
          }

          if ((v37 & 0x80000000) == 0)
          {
            v41 = v38;
          }

          else
          {
            v41 = 0;
          }

          *v32 = v41;
          v32 += 2;
          v31 += 2;
        }

        while (v31 < v14);
      }
    }

    else if (v14 >= 8)
    {
      v42 = 0;
      v43 = 1;
      v44 = __src;
      do
      {
        v45 = 0;
        v46 = v43;
        v47 = &v15[2 * v42 + 2];
        v48 = 64;
        do
        {
          v48 += (*(v47 + v45 * 2) + *&v15[2 * (v42 & ~(v42 >> 31))]) * word_277BEC0C0[v45];
          ++v45;
          LODWORD(v42) = v42 - 1;
        }

        while (v45 != 4);
        v43 = 0;
        v49 = v48 >> 7;
        if ((v48 >> 7) >= 0x3FF)
        {
          v50 = 1023;
        }

        else
        {
          v50 = v48 >> 7;
        }

        if (v49 >= 0xFFF)
        {
          LOWORD(v51) = 4095;
        }

        else
        {
          v51 = v48 >> 7;
        }

        if (v49 >= 0xFF)
        {
          v52 = 255;
        }

        else
        {
          v52 = v49;
        }

        if (a6 != 12)
        {
          LOWORD(v51) = v52;
        }

        if (a6 != 10)
        {
          v50 = v51;
        }

        if (v49 >= 0)
        {
          v53 = v50;
        }

        else
        {
          v53 = 0;
        }

        *v44 = v53;
        v44 += 2;
        v42 = 2;
      }

      while ((v46 & 1) != 0);
      if (v14 == 8)
      {
        v54 = 4;
      }

      else
      {
        v69 = 0;
        v70 = (v15 + 10);
        do
        {
          v71 = vaddvq_s32(vmlaq_s32(xmmword_277BB73E0, vaddl_u16(*v70, vrev64_s16(v70[-1])), xmmword_277BB73D0)) >> 7;
          if (v71 >= 0x3FF)
          {
            v72 = 1023;
          }

          else
          {
            v72 = v71;
          }

          if (v71 >= 0xFFF)
          {
            v73 = 4095;
          }

          else
          {
            v73 = v71;
          }

          if (v71 >= 0xFF)
          {
            v74 = 255;
          }

          else
          {
            v74 = v71;
          }

          if (a6 != 12)
          {
            v73 = v74;
          }

          if (a6 != 10)
          {
            v72 = v73;
          }

          if ((v71 & 0x80000000) == 0)
          {
            v75 = v72;
          }

          else
          {
            v75 = 0;
          }

          *&v44[v69] = v75;
          v76 = v69 + 2;
          v77 = v69 + 6;
          v70 = (v70 + 4);
          v69 += 2;
        }

        while (v77 < (v14 - 4));
        v44 += v76;
        v54 = v77;
      }

      if (v54 < v14)
      {
        v78 = &v15[2 * v54];
        do
        {
          v79 = 0;
          v80 = 64;
          v81 = v78;
          do
          {
            v83 = *v81;
            v81 -= 2;
            v82 = v83;
            if (v54 + v79 + 1 < v14 - 1)
            {
              v84 = v54 + v79 + 1;
            }

            else
            {
              v84 = v14 - 1;
            }

            v80 += (*&v15[2 * v84] + v82) * word_277BEC0C0[v79++];
          }

          while (v79 != 4);
          v85 = v80 >> 7;
          if ((v80 >> 7) >= 0x3FF)
          {
            v86 = 1023;
          }

          else
          {
            v86 = v80 >> 7;
          }

          if (v85 >= 0xFFF)
          {
            v87 = 4095;
          }

          else
          {
            v87 = v85;
          }

          if (v85 >= 0xFF)
          {
            v88 = 255;
          }

          else
          {
            v88 = v85;
          }

          if (a6 != 12)
          {
            v87 = v88;
          }

          if (a6 != 10)
          {
            v86 = v87;
          }

          if (v85 >= 0)
          {
            v89 = v86;
          }

          else
          {
            v89 = 0;
          }

          *v44 = v89;
          v44 += 2;
          LODWORD(v54) = v54 + 2;
          v78 += 4;
        }

        while (v14 > v54);
      }
    }

    else if (v14 >= 1)
    {
      v17 = 0;
      v18 = 1;
      v19 = __src;
      do
      {
        v20 = 0;
        v21 = 64;
        v22 = v18;
        v23 = word_277BEC0C0;
        do
        {
          if (v22 >= v14 - 1)
          {
            v24 = v14 - 1;
          }

          else
          {
            v24 = v22;
          }

          v25 = *v23++;
          v21 += (*&v15[2 * v24] + *&v15[2 * ((v17 + v20) & ~((v17 + v20) >> 31))]) * v25;
          --v20;
          ++v22;
        }

        while (v20 != -4);
        v26 = v21 >> 7;
        if ((v21 >> 7) >= 0x3FF)
        {
          v27 = 1023;
        }

        else
        {
          v27 = v21 >> 7;
        }

        if (v26 >= 0xFFF)
        {
          v28 = 4095;
        }

        else
        {
          v28 = v26;
        }

        if (v26 >= 0xFF)
        {
          v29 = 255;
        }

        else
        {
          v29 = v26;
        }

        if (a6 != 12)
        {
          v28 = v29;
        }

        if (a6 != 10)
        {
          v27 = v28;
        }

        if (v26 >= 0)
        {
          v30 = v27;
        }

        else
        {
          v30 = 0;
        }

        *v19 = v30;
        v19 += 2;
        v17 += 2;
        v18 += 2;
      }

      while (v17 < v14);
    }

    ++v12;
  }

  while (v12 != v10);
  v8 = v114;
  if (a2 != a4)
  {
    goto LABEL_205;
  }

  return __src;
}

uint64_t sub_2779F3840(uint64_t result, int a2, __int16 *a3, int a4, int a5, double a6, int32x2_t a7)
{
  if (a2 <= a4)
  {
    v8 = word_277BEBCC0;
  }

  else
  {
    v7 = 16 * a4;
    if (16 * a4 >= 13 * a2)
    {
      v8 = &unk_277BEC0D0;
    }

    else if (v7 >= 11 * a2)
    {
      v8 = &unk_277BEC4D0;
    }

    else if (v7 >= 9 * a2)
    {
      v8 = &unk_277BEC8D0;
    }

    else
    {
      v8 = &unk_277BECCD0;
    }
  }

  v9 = a4 / 2;
  v10 = (a4 / 2 + (a2 << 14)) / a4;
  if (a2 <= a4)
  {
    v9 = a4 / -2;
  }

  v11 = (v9 + ((a2 - a4) << 13)) / a4;
  if (v11 > 49023)
  {
    v23 = 0;
  }

  else
  {
    v12 = v11 + v10 + 128;
    if (v12 <= 49152)
    {
      v12 = 49152;
    }

    v13 = v12 - v11 - 128;
    if (v13 == v10)
    {
      v14 = (a4 / 2 + (a2 << 14)) / a4;
    }

    else
    {
      v14 = v10 + 1;
    }

    v15 = v13 == v10;
    v16 = (v13 - v14) / v10;
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = v16 + 1;
    }

    v18 = v17 & 0xFFFFFFFC;
    a7.i32[0] = v17;
    v19 = (v17 & 0xFFFFFFFC) + 4;
    v20 = 0uLL;
    v21.i64[0] = 0x100000001;
    v21.i64[1] = 0x100000001;
    do
    {
      v22 = v20;
      v20 = vaddq_s32(v20, v21);
      v19 -= 4;
    }

    while (v19);
    v23 = vaddvq_s32(vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(v18), xmmword_277BB7060), vdupq_lane_s32(a7, 0)), v22, v20));
  }

  v24 = v11 + 128;
  v25 = a4 - 1;
  for (i = v11 + v10 * (a4 - 1) + 128; (i >> 14) + 4 >= a2; i -= v10)
  {
    --v25;
  }

  if (v23 <= v25)
  {
    if (v23)
    {
      for (j = 0; j != v23; ++j)
      {
        v40 = 0;
        v41 = 0;
        v42 = (v24 >> 14) - 3;
        v43 = 8;
        do
        {
          v41 += *(result + 2 * (v42 & ~(v42 >> 31))) * v8[((v24 >> 5) & 0x1F8) + v40++];
          ++v42;
          --v43;
        }

        while (v43);
        v44 = (v41 + 64) >> 7;
        if (v44 >= 0x3FF)
        {
          v45 = 1023;
        }

        else
        {
          v45 = v44;
        }

        if (v44 >= 0xFFF)
        {
          v46 = 4095;
        }

        else
        {
          v46 = v44;
        }

        if (v44 >= 0xFF)
        {
          v47 = 255;
        }

        else
        {
          v47 = v44;
        }

        if (a5 != 12)
        {
          v46 = v47;
        }

        if (a5 != 10)
        {
          v45 = v46;
        }

        if ((v44 & 0x80000000) == 0)
        {
          v48 = v45;
        }

        else
        {
          v48 = 0;
        }

        *a3++ = v48;
        v24 += v10;
      }
    }

    v49 = v25 - v23 + 1;
    do
    {
      v50 = *(result - 6 + 2 * (v24 >> 14));
      v51 = *&v8[(v24 >> 5) & 0x1F8];
      v52 = (vaddvq_s32(vmlaq_s32(vmulq_s32(vmovl_high_u16(v50), vmovl_high_s16(v51)), vmovl_u16(*v50.i8), vmovl_s16(*v51.i8))) + 64) >> 7;
      if (v52 >= 0x3FF)
      {
        v53 = 1023;
      }

      else
      {
        v53 = v52;
      }

      if (v52 >= 0xFFF)
      {
        v54 = 4095;
      }

      else
      {
        v54 = v52;
      }

      if (v52 >= 0xFF)
      {
        v55 = 255;
      }

      else
      {
        v55 = v52;
      }

      if (a5 != 12)
      {
        v54 = v55;
      }

      if (a5 != 10)
      {
        v53 = v54;
      }

      if ((v52 & 0x80000000) == 0)
      {
        v56 = v53;
      }

      else
      {
        v56 = 0;
      }

      *a3++ = v56;
      v24 += v10;
      --v49;
    }

    while (v49);
    v57 = v25 + 1;
    if (v57 < a4)
    {
      v58 = a2 - 1;
      do
      {
        v59 = 0;
        v60 = 0;
        v61 = (v24 >> 14) - 3;
        v62 = 8;
        do
        {
          if (v61 >= v58)
          {
            v63 = v58;
          }

          else
          {
            v63 = v61;
          }

          v60 += *(result + 2 * v63) * v8[((v24 >> 5) & 0x1F8) + v59++];
          ++v61;
          --v62;
        }

        while (v62);
        v64 = (v60 + 64) >> 7;
        if (v64 >= 0x3FF)
        {
          v65 = 1023;
        }

        else
        {
          v65 = v64;
        }

        if (v64 >= 0xFFF)
        {
          v66 = 4095;
        }

        else
        {
          v66 = v64;
        }

        if (v64 >= 0xFF)
        {
          v67 = 255;
        }

        else
        {
          v67 = v64;
        }

        if (a5 != 12)
        {
          v66 = v67;
        }

        if (a5 != 10)
        {
          v65 = v66;
        }

        if ((v64 & 0x80000000) == 0)
        {
          v68 = v65;
        }

        else
        {
          v68 = 0;
        }

        *a3++ = v68;
        ++v57;
        v24 += v10;
      }

      while (v57 != a4);
    }
  }

  else if (a4 >= 1)
  {
    v27 = 0;
    v28 = a2 - 1;
    do
    {
      v29 = 0;
      v30 = 0;
      v31 = (v24 >> 14) - 3;
      v32 = 8;
      do
      {
        if (v31 >= v28)
        {
          v33 = v28;
        }

        else
        {
          v33 = v31;
        }

        v30 += *(result + 2 * (v33 & ~(v33 >> 31))) * v8[((v24 >> 5) & 0x1F8) + v29++];
        ++v31;
        --v32;
      }

      while (v32);
      v34 = (v30 + 64) >> 7;
      if (v34 >= 0x3FF)
      {
        v35 = 1023;
      }

      else
      {
        v35 = v34;
      }

      if (v34 >= 0xFFF)
      {
        v36 = 4095;
      }

      else
      {
        v36 = v34;
      }

      if (v34 >= 0xFF)
      {
        v37 = 255;
      }

      else
      {
        v37 = v34;
      }

      if (a5 != 12)
      {
        v36 = v37;
      }

      if (a5 != 10)
      {
        v35 = v36;
      }

      if ((v34 & 0x80000000) == 0)
      {
        v38 = v35;
      }

      else
      {
        v38 = 0;
      }

      *a3++ = v38;
      ++v27;
      v24 += v10;
    }

    while (v27 != a4);
  }

  return result;
}

uint64_t sub_2779F3C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v68 = v11;
  v12 = 0;
  v73 = *MEMORY[0x277D85DE8];
  v14 = *(&off_27A71D9A0 + 2 * v13);
  v52 = v10;
  if (v10 >= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = v10;
  }

  v61 = v15;
  v58 = v8 + 24;
  v59 = v8 + 16;
  v56 = v8 + 32;
  v57 = v8 + 40;
  v60 = v9 + 24;
  v54 = v9 + 40;
  v55 = v9 + 16;
  v51 = v9;
  v53 = v9 + 32;
  do
  {
    v62 = v12;
    v16 = *(v60 + 4 * (v12 != 0));
    if (v16 >= 1)
    {
      *&v65[8] = 0;
      v17 = *(v56 + 4 * (v12 != 0));
      v18 = *(v55 + 4 * (v12 != 0));
      v63 = *(v54 + 8 * v12);
      v64 = *(v57 + 8 * v12);
      v19 = *(v53 + 4 * (v12 != 0));
      v20 = *(v59 + 4 * (v12 != 0));
      *v65 = *(v58 + 4 * (v12 != 0));
      v69 = 16 * *v65;
      v21 = 16 * v20;
      v66 = -3 * v17;
      v67 = v17;
      do
      {
        if (*v65 == v16)
        {
          v22 = 0;
        }

        else
        {
          v22 = (v69 * *&v65[4] / v16 + v68) & 0xF;
        }

        if (v18 >= 1)
        {
          v23 = 0;
          v70 = v64 + *v65 * *&v65[4] / v16 * v17;
          v24 = v16 - *&v65[4];
          if (v16 - *&v65[4] >= 16)
          {
            v25 = 16;
          }

          else
          {
            v25 = v24;
          }

          v71 = v22;
          do
          {
            if (v20 == v18)
            {
              v26 = 0;
            }

            else
            {
              v26 = (v21 * v23 / v18 + v68) & 0xF;
            }

            v27 = v70 + v20 * v23 / v18;
            v28 = v63 + *&v65[4] * v19 + v23;
            v29 = v18 - v23;
            if (v18 - v23 < 16 || v24 <= 15)
            {
              if (v29 >= 16)
              {
                v30 = 16;
              }

              else
              {
                v30 = v29;
              }

              v31 = (v22 + (v25 - 1) * (v69 / v16)) >> 4;
              if (v31 >= -7)
              {
                v32 = 0;
                v33 = v27 + v66 - 3;
                v34 = v31 + 7;
                v35 = v72;
                do
                {
                  if (v29 >= 1)
                  {
                    v36 = 0;
                    v37 = v26;
                    do
                    {
                      v38 = 0;
                      v39 = 0;
                      do
                      {
                        v39 += *(v14 + 16 * (v37 & 0xF) + 2 * v38) * *(v33 + (v37 >> 4) + v38);
                        ++v38;
                      }

                      while (v38 != 8);
                      v40 = ((v39 + 64) >> 7) & ~((v39 + 64) >> 31);
                      if (v40 >= 255)
                      {
                        LOBYTE(v40) = -1;
                      }

                      v35[v36] = v40;
                      v37 += v21 / v18;
                      ++v36;
                    }

                    while (v36 != v30);
                  }

                  v33 += v17;
                  v35 += 64;
                }

                while (v32++ != v34);
              }

              v22 = v71;
              if (v29 >= 1)
              {
                v42 = 0;
                v43 = v72;
                do
                {
                  if (v24 >= 1)
                  {
                    v44 = 0;
                    v45 = v71;
                    do
                    {
                      v46 = 0;
                      v47 = 0;
                      v48 = (v45 >> 4) << 6;
                      do
                      {
                        v47 += *(v14 + 16 * (v45 & 0xF) + v46) * v43[v48];
                        v46 += 2;
                        v48 += 64;
                      }

                      while (v46 != 16);
                      v49 = ((v47 + 64) >> 7) & ~((v47 + 64) >> 31);
                      if (v49 >= 255)
                      {
                        LOBYTE(v49) = -1;
                      }

                      *(v28 + v44 * v19) = v49;
                      v45 += v69 / v16;
                      ++v44;
                    }

                    while (v44 != v25);
                  }

                  ++v43;
                  ++v28;
                  ++v42;
                }

                while (v42 != v30);
              }
            }

            else
            {
              off_280ABCBD8(v27);
              v22 = v71;
              v17 = v67;
            }

            v23 += 16;
          }

          while (v18 > v23);
        }

        *&v65[4] += 16;
      }

      while (*&v65[4] < v16);
    }

    v12 = v62 + 1;
  }

  while (v62 + 1 != v61);

  return sub_277A48A28(v51, v52);
}

BOOL sub_2779F4074(uint64_t a1, uint64_t a2, int a3, unsigned int a4, double a5, double a6, double a7, int32x4_t a8, int32x4_t a9)
{
  v9 = a1;
  v10 = 0;
  v11 = 0;
  if (a4 >= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = a4;
  }

  v67 = a1 + 24;
  v68 = a1 + 40;
  v65 = a1 + 32;
  v66 = a1 + 16;
  v63 = a2 + 24;
  v64 = a2 + 40;
  v61 = a2 + 32;
  v62 = a2 + 16;
  v55 = v12;
  do
  {
    v13 = *(v68 + 8 * v10);
    v14 = *(v67 + 4 * (v10 != 0));
    v15 = *(v66 + 4 * (v10 != 0));
    v16 = *(v65 + 4 * (v10 != 0));
    v17 = *(v63 + 4 * (v10 != 0));
    v18 = *(v62 + 4 * (v10 != 0));
    v19 = *(v61 + 4 * (v10 != 0));
    if ((*(v9 + 192) & 8) != 0)
    {
      v59 = *(v64 + 8 * v10);
      v20 = 2 * v14;
      v72 = *(v63 + 4 * (v10 != 0));
      v73 = *(v67 + 4 * (v10 != 0));
      if (v20 * v18 <= 0x1FFFFFFE9)
      {
        v22 = malloc_type_malloc(v20 * v18 + 23, 0x5F484EBFuLL);
        if (v22)
        {
          v21 = (v22 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v21 - 8) = v22;
        }

        else
        {
          v21 = 0;
        }

        v17 = v72;
        LODWORD(v14) = v73;
      }

      else
      {
        v21 = 0;
      }

      if (v15 <= v14)
      {
        v23 = v14;
      }

      else
      {
        v23 = v15;
      }

      v24 = 2 * v23;
      v58 = v15;
      if (v24 <= 0x1FFFFFFE9)
      {
        v26 = malloc_type_malloc(v24 + 23, 0x5F484EBFuLL);
        if (v26)
        {
          v25 = (v26 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v25 - 8) = v26;
        }

        else
        {
          v25 = 0;
        }

        v17 = v72;
        LODWORD(v14) = v73;
      }

      else
      {
        v25 = 0;
      }

      v27 = v25;
      if (v20 <= 0x1FFFFFFE9)
      {
        v28 = malloc_type_malloc(v20 + 23, 0x5F484EBFuLL);
        if (v28)
        {
          __src = ((v28 + 23) & 0xFFFFFFFFFFFFFFF0);
          *(__src - 1) = v28;
        }

        else
        {
          __src = 0;
        }

        v25 = v27;
        v17 = v72;
        LODWORD(v14) = v73;
      }

      else
      {
        __src = 0;
      }

      v29 = 2 * v17;
      v60 = v10;
      v57 = v19;
      if (v29 <= 0x1FFFFFFE9)
      {
        v31 = v18;
        v34 = malloc_type_malloc(v29 + 23, 0x5F484EBFuLL);
        v30 = v16;
        if (v34)
        {
          v32 = (v34 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v32 - 8) = v34;
        }

        else
        {
          v32 = 0;
        }

        v25 = v27;
        v33 = __src;
        LODWORD(v14) = v73;
      }

      else
      {
        v30 = v16;
        v31 = v18;
        v32 = 0;
        v33 = __src;
      }

      v70 = v21;
      v35 = v32;
      if (v21 && v25 && v33 && v32)
      {
        v36 = 2 * v31;
        if (v14 >= 1)
        {
          v37 = (2 * v13);
          v38 = 2 * v30;
          v39 = v70;
          v40 = v73;
          do
          {
            sub_2779F3224(v37, v58, v39, v31, v27, a3, a5, *&a6);
            v25 = v27;
            v39 += v36;
            v37 += v38;
            --v40;
          }

          while (v40);
        }

        v42 = v72;
        v41 = v73;
        v33 = __src;
        v32 = v35;
        if (v31 >= 1)
        {
          v43 = 0;
          v44 = v70;
          do
          {
            if (v41 >= 1)
            {
              v45 = v41;
              v46 = v44;
              v47 = __src;
              do
              {
                *v47 = *v46;
                v47 += 2;
                v46 = (v46 + v36);
                --v45;
              }

              while (v45);
            }

            sub_2779F3224(__src, v41, v35, v42, v25, a3, a5, *&a6);
            v32 = v35;
            v42 = v72;
            if (v72 >= 1)
            {
              v48 = (2 * (v59 + v43));
              v49 = v72;
              v50 = v35;
              do
              {
                v51 = *v50++;
                *v48 = v51;
                v48 += v57;
                --v49;
              }

              while (v49);
            }

            ++v43;
            v44 += 2;
            v25 = v27;
            v41 = v73;
          }

          while (v43 != v31);
        }
      }

      if (v70)
      {
        free(*(v70 - 1));
        v32 = v35;
        v25 = v27;
      }

      v9 = a1;
      v10 = v60;
      if (v25)
      {
        free(*(v25 - 8));
        v32 = v35;
      }

      if (v33)
      {
        free(*(v33 - 1));
        v32 = v35;
      }

      v12 = v55;
      if (v32)
      {
        free(*(v32 - 8));
      }
    }

    else if (!sub_2779F28D8(*(v68 + 8 * v10), v14, v15, v16, *(v64 + 8 * v10), v17, v18, v19, a5, a6, a7, a8, a9))
    {
      return v11;
    }

    v11 = ++v10 >= v12;
  }

  while (v10 != v12);
  sub_277A48A28(a2, a4);
  return 1;
}

void sub_2779F445C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v90 = a7;
  v88 = a3;
  v7 = a1;
  v8 = a6 >= 1 && *(*(a1 + 24696) + 96) != 0;
  LODWORD(v9) = *(a1 + 24720);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = (*(a1 + 56) + ((1 << v8) >> 1)) >> v8;
    v12 = *(a1 + 72) + ((1 << v8) >> 1);
    v13 = v12 >> v8;
    v14 = ((v12 >> v8) + (v12 >> 31)) >> 1;
    v99 = (v14 + (v11 << 14)) / v13;
    v86 = 5 * a7;
    v89 = 10 * a7;
    v94 = *(a1 + 80);
    v95 = v13;
    v15 = (((v14 + ((v11 - v13) << 13)) / v13) - ((v99 * v13 - (v11 << 14)) / 2) + 128) & 0x3FFF;
    v93 = 2 - v8;
    v83 = a3;
    v92 = a1 + 24780;
    v81 = 5 * a7;
    v16 = 10 * a7;
    v17 = 2 * a3;
    do
    {
      v18 = *(v7 + 24696);
      v19 = *(v18 + 36);
      v20 = *(v92 + 4 * v10) << v19;
      v21 = v10 + 1;
      v22 = *(v92 + 4 * (v10 + 1)) << v19;
      if (v22 >= *(v7 + 536))
      {
        v22 = *(v7 + 536);
      }

      v23 = v20 << v93;
      v24 = v22 << v93;
      v25 = v24 - v23;
      v26 = v23 * v94 / 8;
      v27 = (v9 - 1);
      v28 = v24 * v94;
      v29 = v24 * v94 + 7;
      if (v28 < 0)
      {
        v28 = v29;
      }

      v30 = v28 >> 3;
      if (v10 == v27)
      {
        v30 = v95;
      }

      v31 = a2 + v23;
      v32 = (a4 + v26);
      v33 = v30 - v26;
      v100 = v25;
      v101 = v30 - v26;
      if (*(v18 + 76))
      {
        v34 = *(v18 + 72);
        v35 = 2 * v31;
        v36 = v35 - 10;
        v37 = v35 + 2 * v25;
        if (v10)
        {
          v38 = 0;
          goto LABEL_15;
        }

        if (v89 > 0x1FFFFFFE9)
        {
          goto LABEL_52;
        }

        v54 = (a4 + v26);
        v55 = *(v18 + 72);
        v56 = malloc_type_malloc(v89 + 23, 0x5F484EBFuLL);
        LOBYTE(v34) = v55;
        v21 = 1;
        if (!v56)
        {
          goto LABEL_52;
        }

        v32 = v54;
        v38 = (v56 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v38 - 8) = v56;
        if (!v38)
        {
          goto LABEL_52;
        }

        if (v90 < 1)
        {
          if (v27)
          {
            v91 = v27;
            sub_277988544((v35 - 2), v88, (2 * v32), a5, v101, v90, v15, v99, v34);
            v40 = 0;
LABEL_69:
            v7 = a1;
            goto LABEL_70;
          }

LABEL_17:
          v82 = v34;
          v84 = v32;
          v39 = malloc_type_malloc(v89 + 23, 0x5F484EBFuLL);
          if (!v39)
          {
            goto LABEL_33;
          }

          v91 = v27;
          v40 = (v39 + 23) & 0xFFFFFFFFFFFFFFF0;
          *(v40 - 8) = v39;
          v41 = v90;
          if (!v40)
          {
            goto LABEL_33;
          }

          if (v90 < 1)
          {
            sub_277988544((v35 - 2), v88, (2 * v84), a5, v101, v90, v15, v99, v82);
            if (v10)
            {
              goto LABEL_95;
            }

            v7 = a1;
            if (!v38)
            {
              goto LABEL_89;
            }

LABEL_70:
            free(*(v38 - 8));
LABEL_71:
            if (v10 != v91)
            {
              goto LABEL_90;
            }

            if (v90 >= 1)
            {
              v77 = 0;
              do
              {
                v78 = *(v40 + v77);
                *(v37 + 8) = *(v40 + v77 + 8);
                *v37 = v78;
                v77 += 10;
                v37 += v17;
              }

              while (v16 != v77);
              goto LABEL_89;
            }

            goto LABEL_88;
          }

          v42 = 0;
          v43 = v37;
          v32 = v84;
          LOBYTE(v34) = v82;
          do
          {
            v44 = (v40 + v42);
            v45 = *v43;
            v44[1].i16[0] = v43[1].i16[0];
            *v44 = v45;
            LODWORD(v44) = v43[-1].u16[3];
            *v43 = vdup_n_s16(v44);
            v43[1].i16[0] = v44;
            v42 += 10;
            v43 = (v43 + v17);
          }

          while (v16 != v42);
          v33 = v101;
        }

        else
        {
          v57 = 0;
          v58 = (v35 - 10);
          do
          {
            v59 = (v38 + v57);
            v60 = *v58;
            v59[1].i16[0] = v58[1].i16[0];
            *v59 = v60;
            LODWORD(v59) = v58[1].u16[1];
            *v58 = vdup_n_s16(v59);
            v58[1].i16[0] = v59;
            v57 += 10;
            v58 = (v58 + v17);
          }

          while (v16 != v57);
          v33 = v101;
LABEL_15:
          if (v10 == v27)
          {
            if (v89 > 0x1FFFFFFE9)
            {
              goto LABEL_33;
            }

            goto LABEL_17;
          }

          v91 = v27;
          v40 = 0;
          v41 = v90;
        }

        v61 = (v35 - 2);
        v62 = v41;
        sub_277988544(v61, v88, (2 * v32), a5, v33, v41, v15, v99, v34);
        if (v10)
        {
          v7 = a1;
          goto LABEL_71;
        }

        v71 = v38;
        v72 = v90;
        if (v62 >= 1)
        {
          do
          {
            v73 = *v71;
            *(v36 + 8) = *(v71 + 8);
            *v36 = v73;
            v71 += 10;
            v36 += v17;
            --v72;
          }

          while (v72);
          goto LABEL_69;
        }

        if (v38)
        {
          goto LABEL_69;
        }

        goto LABEL_65;
      }

      v46 = v31 - 5;
      v47 = (v31 + v25);
      if (v10)
      {
        v38 = 0;
      }

      else
      {
        if (v86 > 0x1FFFFFFE9)
        {
          goto LABEL_52;
        }

        v63 = (a4 + v26);
        v64 = malloc_type_malloc(v86 + 23, 0x5F484EBFuLL);
        if (!v64)
        {
          goto LABEL_52;
        }

        v32 = v63;
        v38 = (v64 + 23) & 0xFFFFFFFFFFFFFFF0;
        *(v38 - 8) = v64;
        if (!v38)
        {
          goto LABEL_52;
        }

        if (v90 < 1)
        {
          if (v27)
          {
            v91 = v27;
            sub_277AE4D80(v31 - 1, v88, v32, a5, v101, v90, v15, v99);
            v40 = 0;
LABEL_81:
            v7 = a1;
            goto LABEL_82;
          }

          goto LABEL_27;
        }

        v65 = 0;
        v66 = (v31 - 5);
        do
        {
          v67 = v38 + v65;
          v68 = *v66;
          *(v67 + 4) = *(v66 + 4);
          *v67 = v68;
          LODWORD(v67) = 16843009 * *(v66 + 5);
          *v66 = v67;
          *(v66 + 4) = v67;
          v65 += 5;
          v66 = (v66 + v83);
        }

        while (v81 != v65);
        v33 = v101;
      }

      if (v10 == v27)
      {
        if (v86 > 0x1FFFFFFE9)
        {
          goto LABEL_33;
        }

LABEL_27:
        v85 = v32;
        v48 = malloc_type_malloc(v86 + 23, 0x5F484EBFuLL);
        if (!v48 || (v91 = v27, v40 = (v48 + 23) & 0xFFFFFFFFFFFFFFF0, *(v40 - 8) = v48, v49 = v90, !v40))
        {
LABEL_33:
          if (v38)
          {
            free(*(v38 - 8));
          }

LABEL_52:
          v7 = a1;
          sub_2779F5C10(*(a1 + 48), 2, "Error upscaling frame");
          goto LABEL_90;
        }

        if (v90 < 1)
        {
          sub_277AE4D80(v31 - 1, v88, v85, a5, v101, v90, v15, v99);
          if (v10)
          {
LABEL_95:
            v7 = a1;
LABEL_89:
            free(*(v40 - 8));
            goto LABEL_90;
          }

          v7 = a1;
          if (!v38)
          {
            goto LABEL_89;
          }

LABEL_82:
          free(*(v38 - 8));
LABEL_83:
          if (v10 != v91)
          {
            goto LABEL_90;
          }

          if (v90 >= 1)
          {
            v79 = 0;
            do
            {
              v80 = *(v40 + v79);
              *(v47 + 4) = *(v40 + v79 + 4);
              *v47 = v80;
              v79 += 5;
              v47 = (v47 + v83);
            }

            while (v81 != v79);
            goto LABEL_89;
          }

          goto LABEL_88;
        }

        v50 = 0;
        v51 = v47;
        v32 = v85;
        do
        {
          v52 = v40 + v50;
          v53 = *v51;
          *(v52 + 4) = *(v51 + 4);
          *v52 = v53;
          LODWORD(v52) = 16843009 * *(v51 - 1);
          *v51 = v52;
          *(v51 + 4) = v52;
          v50 += 5;
          v51 = (v51 + v83);
        }

        while (v81 != v50);
        v33 = v101;
        goto LABEL_54;
      }

      v91 = v27;
      v40 = 0;
      v49 = v90;
LABEL_54:
      v69 = v31 - 1;
      v70 = v49;
      sub_277AE4D80(v69, v88, v32, a5, v33, v49, v15, v99);
      if (v10)
      {
        v7 = a1;
        goto LABEL_83;
      }

      v74 = v38;
      v75 = v90;
      if (v70 >= 1)
      {
        do
        {
          v76 = *v74;
          *(v46 + 4) = *(v74 + 4);
          *v46 = v76;
          v74 += 5;
          v46 += v83;
          --v75;
        }

        while (v75);
        goto LABEL_81;
      }

      if (v38)
      {
        goto LABEL_81;
      }

LABEL_65:
      v7 = a1;
      if (v91)
      {
        goto LABEL_90;
      }

LABEL_88:
      if (v40)
      {
        goto LABEL_89;
      }

LABEL_90:
      v15 = (v15 - (v100 << 14) + v101 * v99);
      v9 = *(v7 + 24720);
      v10 = v21;
    }

    while (v21 < v9);
  }
}

int *sub_2779F4BE8(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, double a9, double a10, double a11, int32x2_t a12, unsigned __int8 a13)
{
  v16 = a3;
  v19 = 56;
  if (a7)
  {
    v19 = 72;
  }

  v20 = *(a1 + v19);
  v21 = 60;
  if (a7)
  {
    v21 = 76;
  }

  v22 = *(a1 + v21);
  if (v20 == a2[4] && v22 == a2[6])
  {
    return a2;
  }

  v23 = *(a1 + 24696);
  v24 = *(v23 + 77);
  if (*(v23 + 77))
  {
    v25 = 1;
  }

  else
  {
    v25 = 3;
  }

  if (sub_27797AC44(a3, v20, v22, *(v23 + 96), *(v23 + 100), *(v23 + 76), a8, *(a1 + 512), a9, a10, a11, a12, a13, 0))
  {
    sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate scaled buffer");
  }

  v34 = a2[4];
  v35 = a2[6];
  v36 = 4 * v22;
  v37 = 4 * v20 < v34 || v36 < v35;
  v38 = 16 * v34;
  v39 = v37 || v38 < v20;
  v40 = 16 * v35;
  v41 = v39 || v40 < v22;
  if (v41 || 16 * v20 % v34 || v38 % v20 || 16 * v22 % v35 || v40 % v22)
  {
    if (4 * v20 != 3 * v34)
    {
      goto LABEL_48;
    }

    v42 = v36 == 3 * v35;
  }

  else
  {
    v42 = 1;
  }

  v43 = v24 != 0 && v42;
  if (!v24 && v42)
  {
    v44 = a2[5];
    v45 = a2[7];
    v46 = v16[5];
    v47 = v16[7];
    v48 = 4 * v47;
    if (4 * v46 >= v44 && v48 >= v45 && 16 * v44 >= v46 && 16 * v45 >= v47 && !(16 * v46 % v44) && !(16 * v44 % v46) && !(16 * v47 % v45) && !(16 * v45 % v47))
    {
      v43 = 1;
      if (a6)
      {
        goto LABEL_39;
      }

      goto LABEL_48;
    }

    if (4 * v46 != 3 * v44)
    {
      goto LABEL_48;
    }

    v43 = v48 == 3 * v45;
  }

  if (a6)
  {
LABEL_39:
    if (v43 && *(*(a1 + 24696) + 72) == 8)
    {
      sub_277988938(a2, v16, a4, a5, v25, v29, v30, v26, v27, v28);
      return v16;
    }
  }

LABEL_48:
  if (!sub_2779F4074(a2, v16, *(*(a1 + 24696) + 72), v25, *v29.i64, *v30.i64, v31, v32, v33))
  {
    sub_2779F5C10(*(a1 + 48), 2, "Failed to allocate buffers during resize");
  }

  return v16;
}

uint64_t sub_2779F4E7C(unsigned __int16 *a1, char *__filename)
{
  v3 = fopen(__filename, "w");
  v4 = 10622;
  do
  {
    v5 = *a1++;
    fprintf(v3, "%d ", v5);
    --v4;
  }

  while (v4);

  return fclose(v3);
}

int16x8_t *sub_2779F4F00(int16x8_t *result, unsigned int a2, int a3, int a4, _DWORD *a5, uint64_t *a6)
{
  if (a3 == 8)
  {
    v6 = 0uLL;
    v7 = 0uLL;
    do
    {
      v7 = vpadalq_s16(v7, *result);
      v6 = vmlal_high_s16(vmlal_s16(v6, *result->i8, *result->i8), *result, *result);
      result = (result + 2 * a2);
      --a4;
    }

    while (a4);
    goto LABEL_8;
  }

  if (a3 == 4)
  {
    v6 = 0uLL;
    v7 = 0uLL;
    do
    {
      v8.i64[0] = result->i64[0];
      v8.i64[1] = *(result->i64 + 2 * a2);
      v7 = vpadalq_s16(v7, v8);
      v6 = vmlal_s16(vmlal_s16(v6, *v8.i8, *v8.i8), v8.u64[1], v8.u64[1]);
      result = (result + 4 * a2);
      a4 -= 2;
    }

    while (a4);
LABEL_8:
    *a5 = vaddvq_s32(v7);
    v9 = vaddlvq_s32(v6);
    goto LABEL_20;
  }

  v10 = 0;
  if (508 / a3 >= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = 508 / a3;
  }

  v12 = 0uLL;
  v13 = 0uLL;
  do
  {
    v14 = 0uLL;
    do
    {
      v15 = a3;
      v16 = result;
      do
      {
        v17 = *v16++;
        v12 = vpadalq_s16(v12, v17);
        v14 = vmlal_high_s16(vmlal_s16(v14, *v17.i8, *v17.i8), v17, v17);
        v15 -= 8;
      }

      while (v15);
      result = (result + 2 * a2);
      ++v10;
    }

    while (v10 < v11 && v10 < a4);
    v13 = vpadalq_s32(v13, v14);
    v11 += 508 / a3;
  }

  while (v10 < a4);
  *a5 = vaddvq_s32(v12);
  v9 = vaddvq_s64(v13);
LABEL_20:
  *a6 = v9;
  return result;
}

int *sub_2779F5008(uint64_t a1, double a2, double a3, double a4, int32x2_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a1;
  v13 = a1 + 270312;
  v14 = a1 + 245616;
  LOBYTE(v15) = 8;
  *(a1 + 245696) = 8;
  v16 = *(a1 + 271128);
  v17 = *(a1 + 271132);
  v18 = v16 | (v17 << 32);
  v19 = *(a1 + 272180);
  if (v19 == 1)
  {
    goto LABEL_52;
  }

  if (!v19 && !*(*a1 + 23172))
  {
    if (*(*a1 + 51016))
    {
      v25 = *(a1 + 245672);
      v26 = *(a1 + 245676);
      if (__PAIR64__(v26, v25) != __PAIR64__(v17, v16))
      {
        v18 = v25 | (v26 << 32);
        goto LABEL_5;
      }
    }
  }

  if (*(a1 + 644192) == 1)
  {
LABEL_5:
    LOBYTE(v15) = 8;
    goto LABEL_52;
  }

  v20 = (a1 + 463456);
  v21 = *(a1 + 463532);
  if (v21 && (v22 = *(a1 + 463536), v22))
  {
    v18 = v21 | (v22 << 32);
    *(a1 + 463532) = 0;
    *(a1 + 463536) = 0;
    if (!*(a1 + 271352))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (*(*v13 + 58))
    {
      goto LABEL_11;
    }

    v27 = *(a1 + 271336);
    if (v27 == 2)
    {
      dword_280A72370 = 1103515245 * dword_280A72370 + 12345;
      v28 = ((HIWORD(dword_280A72370) & 0x7FFF) - 9 * ((7282 * (HIWORD(dword_280A72370) & 0x7FFF)) >> 16)) + 8;
    }

    else
    {
      if (v27 != 1)
      {
        goto LABEL_11;
      }

      if (*v14)
      {
        v28 = *(a1 + 271337);
      }

      else
      {
        v28 = *(a1 + 271338);
      }
    }

    if (v28 != 8)
    {
      if (v16 >= 16)
      {
        LODWORD(v56) = 16;
      }

      else
      {
        LODWORD(v56) = v16;
      }

      v57 = (8 * v16 + (v28 >> 1)) / v28;
      if (v57 <= v56)
      {
        v56 = v56;
      }

      else
      {
        v56 = v57;
      }

      if (v17 >= 16)
      {
        v58 = 16;
      }

      else
      {
        v58 = v17;
      }

      LODWORD(v59) = (8 * v17 + (v28 >> 1)) / v28;
      if (v59 <= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v59;
      }

      v18 = v56 | (v59 << 32);
    }
  }

LABEL_11:
  v23 = *(a1 + 644200);
  LOBYTE(a1) = 8;
  if (v23 <= 2)
  {
    if (v23 != 1)
    {
      if (v23 == 2)
      {
        dword_280A72374 = 1103515245 * dword_280A72374 + 12345;
        LODWORD(a1) = HIWORD(dword_280A72374) - 9 * ((7282 * (HIWORD(dword_280A72374) & 0x7FFF)) >> 16) + 8;
      }

      goto LABEL_42;
    }

    goto LABEL_22;
  }

  if (v23 == 3)
  {
    if (*(v14 + 495))
    {
      goto LABEL_42;
    }

    if ((*(v13 + 980) | 2) == 2)
    {
      sub_277A5BDA4(v12, v16, v17, a2, a3);
      v16 = *(v13 + 816);
      v17 = *(v13 + 820);
    }

    v63 = 0;
    v24 = sub_277A5A188(v12, v16, v17, *v20, &v63 + 4, &v63, a11, a12);
    if ((*v14 & 0xFD) != 0)
    {
      v29 = 271340;
    }

    else
    {
      v29 = 271344;
    }

    if (v24 > *(v12 + v29))
    {
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  if (v23 == 4 && (*(v14 + 495) & 1) == 0)
  {
    if ((*(v13 + 980) | 2) == 2)
    {
      sub_277A5BDA4(v12, v16, v17, a2, a3);
      v16 = *(v13 + 816);
      v17 = *(v13 + 820);
    }

    v63 = 0;
    v24 = sub_277A5A188(v12, v16, v17, *v20, &v63 + 4, &v63, a11, a12);
    if (v24 > (*(v12 + 395412) == 2) << 7)
    {
      if (!*(v12 + 395412))
      {
LABEL_22:
        if (*v14)
        {
          LOBYTE(a1) = *(v13 + 1036);
        }

        else
        {
          LOBYTE(a1) = *(v13 + 1037);
        }

        goto LABEL_42;
      }

LABEL_38:
      LOBYTE(a1) = sub_2779F5578(v12, v24);
      goto LABEL_42;
    }

LABEL_39:
    LOBYTE(a1) = 8;
  }

LABEL_42:
  v15 = a1;
  v30 = *(v13 + 816);
  v31 = v30 * a1;
  v32 = v31 + (v31 >> 31);
  if (8 * v18 < v31 / 2)
  {
    v33 = *(v13 + 1024);
    v34 = *(v12 + 644200);
    v35 = *(v13 + 820);
    v36 = ((v18 >> 33) + 8 * v35) / SHIDWORD(v18);
    if (((v18 >> 1) + 8 * v30) / v18 > v36)
    {
      v36 = ((v18 >> 1) + 8 * v30) / v18;
    }

    if (v33 == 2 || v34 != 2)
    {
      v43 = 8 * v30;
      v44 = 8 * v35;
      if (v33 != 2 || v34 == 2)
      {
        if (v33 == 2 && v34 == 2)
        {
          v52 = v30 | (v35 << 32);
          if (v30 >= 16)
          {
            v53 = 16;
          }

          else
          {
            v53 = *(v13 + 816);
          }

          if (v35 >= 16)
          {
            LODWORD(v35) = 16;
          }

          while (1)
          {
            if (v36 > a1)
            {
              --v36;
            }

            else
            {
              v15 = (a1 - 1);
            }

            v18 = v52;
            if (v36 != 8)
            {
              LODWORD(v54) = (v43 + v36 / 2) / v36;
              if (v54 <= v53)
              {
                v54 = v53;
              }

              else
              {
                v54 = v54;
              }

              LODWORD(v55) = (v44 + v36 / 2) / v36;
              if (v55 <= v35)
              {
                v55 = v35;
              }

              else
              {
                v55 = v55;
              }

              v18 = v54 | (v55 << 32);
            }

            if (8 * v18 >= (v30 * v15) / 2)
            {
              break;
            }

            LOBYTE(a1) = v15;
            if (v36 <= 8)
            {
              LOBYTE(a1) = v15;
              if (v15 <= 8)
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        v45 = a1;
        v46 = 0x80u / a1;
        v18 = v30 | (v35 << 32);
        if (v46 != 8)
        {
          if (v30 >= 16)
          {
            LODWORD(v47) = 16;
          }

          else
          {
            LODWORD(v47) = *(v13 + 816);
          }

          v48 = (v43 + (v46 >> 1)) / v46;
          if (v48 <= v47)
          {
            v47 = v47;
          }

          else
          {
            v47 = v48;
          }

          if (v35 >= 16)
          {
            LODWORD(v49) = 16;
          }

          else
          {
            LODWORD(v49) = *(v13 + 820);
          }

          v50 = (v44 + (v46 >> 1)) / v46;
          if (v50 <= v49)
          {
            v49 = v49;
          }

          else
          {
            v49 = v50;
          }

          v18 = v47 | (v49 << 32);
        }

        if (v45 <= 0xE && 8 * v18 < v32 >> 1)
        {
          v51 = v46 - 1;
          if (v46 == 9)
          {
            v18 = v30 | (v35 << 32);
          }

          else
          {
            if (v30 >= 16)
            {
              LODWORD(v30) = 16;
            }

            v60 = (v43 + v51 / 2) / v51;
            if (v60 <= v30)
            {
              v30 = v30;
            }

            else
            {
              v30 = v60;
            }

            if (v35 >= 16)
            {
              v61 = 16;
            }

            else
            {
              v61 = *(v13 + 820);
            }

            LODWORD(v62) = (v44 + v51 / 2) / v51;
            if (v62 <= v61)
            {
              v62 = v61;
            }

            else
            {
              v62 = v62;
            }

            v18 = v30 | (v62 << 32);
          }
        }
      }
    }

    else
    {
      v15 = 128 / v36;
      v37 = (128 / v36);
      if (8 * v18 < (v37 * v30) / 2 && v37 > 8)
      {
        LOBYTE(v15) = v15 - 1;
      }
    }
  }

LABEL_52:
  v39 = HIDWORD(v18);
  *(v14 + 72) = v18;
  *(v14 + 80) = v15;
  if (v15 != 8)
  {
    if (v18 >= 16)
    {
      v40 = 16;
    }

    else
    {
      v40 = v18;
    }

    v41 = (8 * v18 + (v15 >> 1)) / v15;
    if (v41 <= v40)
    {
      LODWORD(v18) = v40;
    }

    else
    {
      LODWORD(v18) = v41;
    }
  }

  return sub_277ACBCC0(v12, v18, v39, a2, a3, a4, a5);
}

uint64_t sub_2779F5578(uint64_t a1, int a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v2 = *a1 + 400;
  v3 = *(v2 + *(a1 + 463456));
  if (v3 != 3 && v3 != 0)
  {
    return 8;
  }

  v5 = a2;
  v6 = a1;
  v7 = (a1 + 271352);
  v8 = *(a1 + 272264);
  v9 = *(a1 + 97136);
  v10 = *(v8 + 16);
  v11 = a1 + 395108;
  v12 = *(v8 + 24);
  memset(v56, 0, sizeof(v56));
  if ((*(v8 + 192) & 8) != 0)
  {
    if (v12 < 5)
    {
      goto LABEL_37;
    }

    v45 = v2;
    v46 = a1;
    v47 = a2;
    v48 = a1 + 395108;
    v49 = (a1 + 271352);
    v14 = 0;
    v26 = 0;
    v27 = 2 * *(v8 + 40);
    v50 = v12 - 4;
    v28 = 2 * v9 - 14;
    do
    {
      if (v10 >= 17)
      {
        v29 = 0;
        do
        {
          sub_2779AD650(v27 + 2 * *(v8 + 32) * v26 + 2 * v29, v54, *(v8 + 32), 0xBu);
          v30 = v55;
          for (i = 8; i != 128; i += 8)
          {
            *(v56 + i) += (((1 << v28) >> 1) + *(v30 - 32) * *(v30 - 32) + *(v30 - 16) * *(v30 - 16) + *v30 * *v30 + v30[16] * v30[16]) >> v28;
            ++v30;
          }

          ++v14;
          v29 += 16;
        }

        while (v10 - 16 > v29);
      }

      v26 += 4;
    }

    while (v26 < v50);
  }

  else
  {
    v45 = v2;
    v46 = a1;
    v47 = a2;
    v49 = (a1 + 271352);
    if (v12 < 5)
    {
      v14 = 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = v12 - 4;
      do
      {
        if (v10 >= 17)
        {
          v16 = 0;
          do
          {
            v17 = 0;
            v18 = *(v8 + 40);
            v19 = *(v8 + 32);
            v20 = v16 + v13 * v19;
            v21 = v51;
            do
            {
              v22 = 0;
              v23 = v20;
              do
              {
                *&v21[v22] = *(v18 + v23);
                v22 += 2;
                ++v23;
              }

              while (v22 != 32);
              ++v17;
              v21 += 32;
              v20 += v19;
            }

            while (v17 != 4);
            sub_2779AD650(v51, v54, 16, 0xBu);
            v24 = v55;
            for (j = 8; j != 128; j += 8)
            {
              *(v56 + j) += (*(v24 - 16) * *(v24 - 16) + *(v24 - 32) * *(v24 - 32) + *v24 * *v24 + v24[16] * v24[16] + 2) >> 2;
              ++v24;
            }

            ++v14;
            v16 += 16;
          }

          while (v10 - 16 > v16);
        }

        v13 += 4;
      }

      while (v15 > v13);
    }

    v48 = v11;
  }

  v11 = v48;
  v7 = v49;
  v5 = v47;
  v2 = v45;
  v6 = v46;
  if (v14)
  {
    for (k = 8; k != 128; k += 8)
    {
      *&v51[k] = *(v56 + k) / v14;
    }

    v34 = *&v53[1];
    v35 = v53;
    for (m = 15; m > 1; --m)
    {
      v34 = v34 + *v35;
      *v35-- = v34;
    }

    goto LABEL_38;
  }

LABEL_37:
  memset_pattern16(v52, &unk_277BB7C30, 0x78uLL);
LABEL_38:
  if (*(v2 + *(v6 + 463456)) == 3)
  {
    v37 = 0.008;
  }

  else if (*(v2 + *(v6 + 463456)))
  {
    v37 = 0.0;
  }

  else
  {
    v37 = dbl_277BB73F0[*v11 < 2];
  }

  if (v5 >= 0xFF)
  {
    v38 = 255;
  }

  else
  {
    v38 = v5;
  }

  if (v5 < 0)
  {
    v38 = 0;
  }

  v39 = vcvtd_n_f64_s32(word_277BFE1FA[v38], 2uLL);
  v40 = v39 * (v37 * v39);
  if (v40 >= v52[0] * 0.2)
  {
    v40 = v52[0] * 0.2;
  }

  v41 = 15;
  while (1)
  {
    v42 = v41 + 1;
    if (*&v51[8 * v41] > v40)
    {
      break;
    }

    --v41;
    if (v42 <= 9)
    {
      v32 = 16;
      goto LABEL_55;
    }
  }

  v32 = 23 - v41;
LABEL_55:
  if (*v7 == 4 && *(v11 + 304) != 2)
  {
    v43 = v32;
    if (v32 <= 9u)
    {
      v43 = 9;
    }

    if (*v11 > 1)
    {
      return v43;
    }
  }

  return v32;
}