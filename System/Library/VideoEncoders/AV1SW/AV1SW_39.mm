uint64_t sub_277B49784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v145[4128] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v55 = v145;
      v56 = 129;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          *&v55[v57] = vrhaddq_u16(*(v16 + v57 * 8), *(v16 + v57 * 8 + 2));
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x78);
        v55 += 32;
        v16 += 2 * v9;
        --v56;
      }

      while (v56);
      v59 = 2 * v15;
      v60 = v145;
      v61 = v144;
      v62 = 128;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v61[v63 * 8] = vrhaddq_u16(vrhaddq_u16(*&v60[v63], *&v60[v63 + 32]), *(v59 + v63 * 8));
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x78);
        v59 += v63 * 8;
        v60 += 32;
        v61 += 256;
        --v62;
      }

      while (v62);
      v65 = 2 * v12;
      v66 = v144;
      v29 = 0uLL;
      v67 = 128;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          v70 = vsubq_s16(*&v66[v68], *(v65 + v68));
          v32 = vpadalq_s16(v32, v70);
          v29 = vmlal_s16(v29, *v70.i8, *v70.i8);
          v31 = vmlal_high_s16(v31, v70, v70);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x78);
        v66 += 256;
        v65 += 2 * v13;
        --v67;
      }

      while (v67);
    }

    else if (v11)
    {
      v85 = v145;
      v86 = 129;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(*(v16 + v87 * 8), *(v16 + v87 * 8 + 2));
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v85 += 32;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v145;
      v93 = v144;
      v94 = 128;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 32], v91), 3uLL), *(v90 + v95 * 8));
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x78);
        v90 += v95 * 8;
        v92 += 32;
        v93 += 256;
        --v94;
      }

      while (v94);
      v97 = 2 * v12;
      v98 = v144;
      v29 = 0uLL;
      v99 = 128;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vsubq_s16(*&v98[v100], *(v97 + v100));
          v32 = vpadalq_s16(v32, v102);
          v29 = vmlal_s16(v29, *v102.i8, *v102.i8);
          v31 = vmlal_high_s16(v31, v102, v102);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x78);
        v98 += 256;
        v97 += 2 * v13;
        --v99;
      }

      while (v99);
    }

    else
    {
      v22 = 2 * v15;
      v23 = v145;
      v24 = 128;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          *&v23[v25 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
          v26 += 8;
          v25 += 16;
        }

        while (v26 < 0x78);
        v22 += v25;
        v23 += 32;
        v16 += 2 * v9;
        --v24;
      }

      while (v24);
      v27 = 2 * v12;
      v28 = v145;
      v29 = 0uLL;
      v30 = 128;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          v35 = vsubq_s16(*&v28[v33], *(v27 + v33 * 8));
          v32 = vpadalq_s16(v32, v35);
          v29 = vmlal_s16(v29, *v35.i8, *v35.i8);
          v31 = vmlal_high_s16(v31, v35, v35);
          v34 += 8;
          v33 += 2;
        }

        while (v34 < 0x78);
        v28 += 32;
        v27 += 2 * v13;
        --v30;
      }

      while (v30);
    }
  }

  else if (v10)
  {
    if (v11 == 4)
    {
      v103 = vdupq_n_s16(8 - v10);
      v104 = vdupq_n_s16(v10);
      v105 = v145;
      v106 = 129;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          *&v105[v107] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v107 * 8), v103), *(v16 + v107 * 8 + 2), v104), 3uLL);
          v108 += 8;
          v107 += 2;
        }

        while (v108 < 0x78);
        v105 += 32;
        v16 += 2 * v9;
        --v106;
      }

      while (v106);
      v109 = 2 * v15;
      v110 = v145;
      v111 = v144;
      v112 = 128;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113 * 8] = vrhaddq_u16(vrhaddq_u16(*&v110[v113], *&v110[v113 + 32]), *(v109 + v113 * 8));
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x78);
        v109 += v113 * 8;
        v110 += 32;
        v111 += 256;
        --v112;
      }

      while (v112);
      v115 = 2 * v12;
      v116 = v144;
      v29 = 0uLL;
      v117 = 128;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          v120 = vsubq_s16(*&v116[v118], *(v115 + v118));
          v32 = vpadalq_s16(v32, v120);
          v29 = vmlal_s16(v29, *v120.i8, *v120.i8);
          v31 = vmlal_high_s16(v31, v120, v120);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x78);
        v116 += 256;
        v115 += 2 * v13;
        --v117;
      }

      while (v117);
    }

    else if (v11)
    {
      v121 = vdupq_n_s16(8 - v10);
      v122 = vdupq_n_s16(v10);
      v123 = v145;
      v124 = 129;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v125 * 8), v121), *(v16 + v125 * 8 + 2), v122), 3uLL);
          v126 += 8;
          v125 += 2;
        }

        while (v126 < 0x78);
        v123 += 32;
        v16 += 2 * v9;
        --v124;
      }

      while (v124);
      v127 = vdupq_n_s16(8 - v11);
      v128 = 2 * v15;
      v129 = vdupq_n_s16(v11);
      v130 = v145;
      v131 = v144;
      v132 = 128;
      do
      {
        v133 = 0;
        v134 = -8;
        do
        {
          *&v131[v133 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v130[v133], v127), *&v130[v133 + 32], v129), 3uLL), *(v128 + v133 * 8));
          v134 += 8;
          v133 += 2;
        }

        while (v134 < 0x78);
        v128 += v133 * 8;
        v130 += 32;
        v131 += 256;
        --v132;
      }

      while (v132);
      v135 = 2 * v12;
      v136 = v144;
      v29 = 0uLL;
      v137 = 128;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v138 = 0;
        v139 = -8;
        do
        {
          v140 = vsubq_s16(*&v136[v138], *(v135 + v138));
          v32 = vpadalq_s16(v32, v140);
          v29 = vmlal_s16(v29, *v140.i8, *v140.i8);
          v31 = vmlal_high_s16(v31, v140, v140);
          v139 += 8;
          v138 += 16;
        }

        while (v139 < 0x78);
        v136 += 256;
        v135 += 2 * v13;
        --v137;
      }

      while (v137);
    }

    else
    {
      v36 = 2 * v15;
      v37 = vdupq_n_s16(8 - v10);
      v38 = vdupq_n_s16(v10);
      v39 = v145;
      v40 = 128;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v41), v37), *(v16 + v41 + 2), v38), 3uLL), *(v36 + v41));
          v42 += 8;
          v41 += 16;
        }

        while (v42 < 0x78);
        v36 += v41;
        v39 += 32;
        v16 += 2 * v9;
        --v40;
      }

      while (v40);
      v43 = 2 * v12;
      v44 = v145;
      v29 = 0uLL;
      v45 = 128;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          v48 = vsubq_s16(*&v44[v46], *(v43 + v46 * 8));
          v32 = vpadalq_s16(v32, v48);
          v29 = vmlal_s16(v29, *v48.i8, *v48.i8);
          v31 = vmlal_high_s16(v31, v48, v48);
          v47 += 8;
          v46 += 2;
        }

        while (v47 < 0x78);
        v44 += 32;
        v43 += 2 * v13;
        --v45;
      }

      while (v45);
    }
  }

  else
  {
    v17 = 2 * v15;
    if (v11 == 4)
    {
      v49 = 2 * v9;
      v50 = v16 + v49;
      v51 = v145;
      v52 = 128;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v53), *(v50 + v53)), *(v17 + v53));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x78);
        v17 += v53;
        v51 += 32;
        v50 += v49;
        v16 += v49;
        --v52;
      }

      while (v52);
    }

    else if (v11)
    {
      v71 = vdupq_n_s16(8 - v11);
      v72 = vdupq_n_s16(v11);
      v73 = 2 * v9;
      v74 = v16 + v73;
      v75 = v145;
      v76 = 128;
      do
      {
        v77 = 0;
        v78 = -8;
        do
        {
          *&v75[v77 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v77), v71), *(v74 + v77), v72), 3uLL), *(v17 + v77));
          v78 += 8;
          v77 += 16;
        }

        while (v78 < 0x78);
        v17 += v77;
        v75 += 32;
        v74 += v73;
        v16 += v73;
        --v76;
      }

      while (v76);
    }

    else
    {
      v18 = v145;
      v19 = 128;
      do
      {
        v20 = 0;
        v21 = -8;
        do
        {
          *&v18[v20 / 8] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
          v21 += 8;
          v20 += 16;
        }

        while (v21 < 0x78);
        v17 += v20;
        v18 += 32;
        v16 += 2 * v9;
        --v19;
      }

      while (v19);
    }

    v79 = 2 * v12;
    v80 = v145;
    v29 = 0uLL;
    v81 = 128;
    v31 = 0uLL;
    v32 = 0uLL;
    do
    {
      v82 = 0;
      v83 = -8;
      do
      {
        v84 = vsubq_s16(*&v80[v82], *(v79 + v82 * 8));
        v32 = vpadalq_s16(v32, v84);
        v29 = vmlal_s16(v29, *v84.i8, *v84.i8);
        v31 = vmlal_high_s16(v31, v84, v84);
        v83 += 8;
        v82 += 2;
      }

      while (v83 < 0x78);
      v80 += 32;
      v79 += 2 * v13;
      --v81;
    }

    while (v81);
  }

  v141 = vaddvq_s32(v32);
  v142 = vaddlvq_u32(vaddq_s32(v31, v29));
  *v14 = v142;
  return v142 - ((v141 * v141) >> 14);
}

uint64_t sub_277B49FF4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8)
{
  v8 = 0;
  v19[17] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 136);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_277997618(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B4A100(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v28 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v27[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 528);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v27[0];
  do
  {
    v16 = v27[v12 / 0x10 + 1];
    *&v26[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 512);
  v17 = 0;
  v18 = (2 * a5);
  v19 = 0uLL;
  v20 = 0uLL;
  v21 = 0uLL;
  do
  {
    v22 = vsubq_s16(*&v26[v17], *v18);
    v21 = vpadalq_s16(v21, v22);
    v19 = vmlal_s16(v19, *v22.i8, *v22.i8);
    v20 = vmlal_high_s16(v20, v22, v22);
    v17 += 16;
    v18 = (v18 + 2 * a6);
  }

  while (v17 != 512);
  v23 = vaddlvq_u32(vaddq_s32(v20, v19));
  *a7 = v23;
  v24 = vaddvq_s32(v21);
  return v23 - ((v24 * v24) >> 8);
}

uint64_t sub_277B4A258(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v157 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v8 + 18);
      do
      {
        v55 = &v156[v53];
        v56 = vrhaddq_u16(*(v54 - 2), *v54);
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = v56;
        v53 += 32;
        v54 = (v54 + 2 * a2);
      }

      while (v53 != 160);
      v57 = (2 * a8);
      v58 = v156;
      v59 = v155;
      v60 = 4;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *v57++;
          *&v59[2 * v61] = vrhaddq_u16(vrhaddq_u16(*&v58[2 * v61], *&v58[2 * v61 + 32]), v64);
          v61 = 8;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        v58 += 32;
        v59 += 32;
        --v60;
      }

      while (v60);
      v65 = 2 * a5;
      v66 = v155;
      v23 = 0uLL;
      v67 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v68 = 0;
        v69 = 1;
        do
        {
          v70 = v69;
          v71 = vsubq_s16(*&v66[2 * v68], *(v65 + 2 * v68));
          v26 = vpadalq_s16(v26, v71);
          v23 = vmlal_s16(v23, *v71.i8, *v71.i8);
          v25 = vmlal_high_s16(v25, v71, v71);
          v68 = 8;
          v69 = 0;
        }

        while ((v70 & 1) != 0);
        v66 += 32;
        v65 += 2 * a6;
        --v67;
      }

      while (v67);
    }

    else if (a4)
    {
      v87 = 0;
      v88 = (v8 + 18);
      do
      {
        v89 = &v156[v87];
        v90 = vrhaddq_u16(*(v88 - 2), *v88);
        *v89 = vrhaddq_u16(*(v88 - 18), v88[-1]);
        v89[1] = v90;
        v87 += 32;
        v88 = (v88 + 2 * a2);
      }

      while (v87 != 160);
      v91 = vdupq_n_s16(8 - a4);
      v92 = (2 * a8);
      v93 = vdupq_n_s16(a4);
      v94 = v156;
      v95 = v155;
      v96 = 4;
      do
      {
        v97 = 0;
        v98 = 1;
        do
        {
          v99 = v98;
          v100 = *v92++;
          *&v95[2 * v97] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v94[2 * v97], v91), *&v94[2 * v97 + 32], v93), 3uLL), v100);
          v97 = 8;
          v98 = 0;
        }

        while ((v99 & 1) != 0);
        v94 += 32;
        v95 += 32;
        --v96;
      }

      while (v96);
      v101 = 2 * a5;
      v102 = v155;
      v23 = 0uLL;
      v103 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v104 = 0;
        v105 = 1;
        do
        {
          v106 = v105;
          v107 = vsubq_s16(*&v102[2 * v104], *(v101 + 2 * v104));
          v26 = vpadalq_s16(v26, v107);
          v23 = vmlal_s16(v23, *v107.i8, *v107.i8);
          v25 = vmlal_high_s16(v25, v107, v107);
          v104 = 8;
          v105 = 0;
        }

        while ((v106 & 1) != 0);
        v102 += 32;
        v101 += 2 * a6;
        --v103;
      }

      while (v103);
    }

    else
    {
      v14 = (2 * a8);
      v15 = v156;
      v16 = 4;
      do
      {
        v17 = 0;
        v18 = 1;
        do
        {
          v19 = v18;
          v20 = *v14++;
          *&v15[2 * v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v17), *(v8 + 2 * v17 + 2)), v20);
          v17 = 8;
          v18 = 0;
        }

        while ((v19 & 1) != 0);
        v8 += 2 * a2;
        v15 += 32;
        --v16;
      }

      while (v16);
      v21 = 2 * a5;
      v22 = v156;
      v23 = 0uLL;
      v24 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v27 = 0;
        v28 = 1;
        do
        {
          v29 = v28;
          v30 = vsubq_s16(*&v22[2 * v27], *(v21 + 2 * v27));
          v26 = vpadalq_s16(v26, v30);
          v23 = vmlal_s16(v23, *v30.i8, *v30.i8);
          v25 = vmlal_high_s16(v25, v30, v30);
          v27 = 8;
          v28 = 0;
        }

        while ((v29 & 1) != 0);
        v22 += 32;
        v21 += 2 * a6;
        --v24;
      }

      while (v24);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v108 = 0;
      v109 = vdupq_n_s16(8 - a3);
      v110 = vdupq_n_s16(a3);
      v111 = (v8 + 18);
      do
      {
        v112 = &v156[v108];
        v113 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v111 - 2), v109), *v111, v110), 3uLL);
        *v112 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v111 - 18), v109), v111[-1], v110), 3uLL);
        v112[1] = v113;
        v108 += 32;
        v111 = (v111 + 2 * a2);
      }

      while (v108 != 160);
      v114 = (2 * a8);
      v115 = v156;
      v116 = v155;
      v117 = 4;
      do
      {
        v118 = 0;
        v119 = 1;
        do
        {
          v120 = v119;
          v121 = *v114++;
          *&v116[2 * v118] = vrhaddq_u16(vrhaddq_u16(*&v115[2 * v118], *&v115[2 * v118 + 32]), v121);
          v118 = 8;
          v119 = 0;
        }

        while ((v120 & 1) != 0);
        v115 += 32;
        v116 += 32;
        --v117;
      }

      while (v117);
      v122 = 2 * a5;
      v123 = v155;
      v23 = 0uLL;
      v124 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v125 = 0;
        v126 = 1;
        do
        {
          v127 = v126;
          v128 = vsubq_s16(*&v123[2 * v125], *(v122 + 2 * v125));
          v26 = vpadalq_s16(v26, v128);
          v23 = vmlal_s16(v23, *v128.i8, *v128.i8);
          v25 = vmlal_high_s16(v25, v128, v128);
          v125 = 8;
          v126 = 0;
        }

        while ((v127 & 1) != 0);
        v123 += 32;
        v122 += 2 * a6;
        --v124;
      }

      while (v124);
    }

    else if (a4)
    {
      v129 = 0;
      v130 = vdupq_n_s16(8 - a3);
      v131 = vdupq_n_s16(a3);
      v132 = (v8 + 18);
      do
      {
        v133 = &v156[v129];
        v134 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v132 - 2), v130), *v132, v131), 3uLL);
        *v133 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v132 - 18), v130), v132[-1], v131), 3uLL);
        v133[1] = v134;
        v129 += 32;
        v132 = (v132 + 2 * a2);
      }

      while (v129 != 160);
      v135 = vdupq_n_s16(8 - a4);
      v136 = (2 * a8);
      v137 = vdupq_n_s16(a4);
      v138 = v156;
      v139 = v155;
      v140 = 4;
      do
      {
        v141 = 0;
        v142 = 1;
        do
        {
          v143 = v142;
          v144 = *v136++;
          *&v139[2 * v141] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v138[2 * v141], v135), *&v138[2 * v141 + 32], v137), 3uLL), v144);
          v141 = 8;
          v142 = 0;
        }

        while ((v143 & 1) != 0);
        v138 += 32;
        v139 += 32;
        --v140;
      }

      while (v140);
      v145 = 2 * a5;
      v146 = v155;
      v23 = 0uLL;
      v147 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v148 = 0;
        v149 = 1;
        do
        {
          v150 = v149;
          v151 = vsubq_s16(*&v146[2 * v148], *(v145 + 2 * v148));
          v26 = vpadalq_s16(v26, v151);
          v23 = vmlal_s16(v23, *v151.i8, *v151.i8);
          v25 = vmlal_high_s16(v25, v151, v151);
          v148 = 8;
          v149 = 0;
        }

        while ((v150 & 1) != 0);
        v146 += 32;
        v145 += 2 * a6;
        --v147;
      }

      while (v147);
    }

    else
    {
      v31 = (2 * a8);
      v32 = vdupq_n_s16(8 - a3);
      v33 = vdupq_n_s16(a3);
      v34 = v156;
      v35 = 4;
      do
      {
        v36 = 0;
        v37 = 1;
        do
        {
          v38 = v37;
          v39 = *v31++;
          *&v34[2 * v36] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v36), v32), *(v8 + 2 * v36 + 2), v33), 3uLL), v39);
          v36 = 8;
          v37 = 0;
        }

        while ((v38 & 1) != 0);
        v8 += 2 * a2;
        v34 += 32;
        --v35;
      }

      while (v35);
      v40 = 2 * a5;
      v41 = v156;
      v23 = 0uLL;
      v42 = 4;
      v25 = 0uLL;
      v26 = 0uLL;
      do
      {
        v43 = 0;
        v44 = 1;
        do
        {
          v45 = v44;
          v46 = vsubq_s16(*&v41[2 * v43], *(v40 + 2 * v43));
          v26 = vpadalq_s16(v26, v46);
          v23 = vmlal_s16(v23, *v46.i8, *v46.i8);
          v25 = vmlal_high_s16(v25, v46, v46);
          v43 = 8;
          v44 = 0;
        }

        while ((v45 & 1) != 0);
        v41 += 32;
        v40 += 2 * a6;
        --v42;
      }

      while (v42);
    }
  }

  else
  {
    v9 = (2 * a8);
    if (a4 == 4)
    {
      v47 = v156;
      v48 = 4;
      do
      {
        v49 = 0;
        v50 = 1;
        do
        {
          v51 = v50;
          v52 = *v9++;
          *&v47[2 * v49] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v49), *(v8 + 2 * v49 + 2 * a2)), v52);
          v49 = 8;
          v50 = 0;
        }

        while ((v51 & 1) != 0);
        v8 += 2 * a2;
        v47 += 32;
        --v48;
      }

      while (v48);
    }

    else if (a4)
    {
      v72 = vdupq_n_s16(8 - a4);
      v73 = vdupq_n_s16(a4);
      v74 = v156;
      v75 = 4;
      do
      {
        v76 = 0;
        v77 = 1;
        do
        {
          v78 = v77;
          v79 = *v9++;
          *&v74[2 * v76] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v76), v72), *(v8 + 2 * v76 + 2 * a2), v73), 3uLL), v79);
          v76 = 8;
          v77 = 0;
        }

        while ((v78 & 1) != 0);
        v8 += 2 * a2;
        v74 += 32;
        --v75;
      }

      while (v75);
    }

    else
    {
      v10 = 0;
      v11 = (v8 + 16);
      do
      {
        v12 = &v156[v10 * 16];
        v13 = vrhaddq_u16(*v11, v9[v10 + 1]);
        *v12 = vrhaddq_u16(v11[-1], v9[v10]);
        v12[1] = v13;
        v10 += 2;
        v11 = (v11 + 2 * a2);
      }

      while ((v10 * 16) != 128);
    }

    v80 = 2 * a5;
    v81 = v156;
    v23 = 0uLL;
    v82 = 4;
    v25 = 0uLL;
    v26 = 0uLL;
    do
    {
      v83 = 0;
      v84 = 1;
      do
      {
        v85 = v84;
        v86 = vsubq_s16(*&v81[2 * v83], *(v80 + 2 * v83));
        v26 = vpadalq_s16(v26, v86);
        v23 = vmlal_s16(v23, *v86.i8, *v86.i8);
        v25 = vmlal_high_s16(v25, v86, v86);
        v83 = 8;
        v84 = 0;
      }

      while ((v85 & 1) != 0);
      v81 += 32;
      v80 += 2 * a6;
      --v82;
    }

    while (v82);
  }

  v152 = vaddvq_s32(v26);
  v153 = vaddlvq_u32(vaddq_s32(v25, v23));
  *a7 = v153;
  return v153 - ((v152 * v152) >> 6);
}

uint64_t sub_277B4AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v165 = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v61 = 0;
      v62 = (v16 + 18);
      do
      {
        v63 = &v164[v61];
        v64 = vrhaddq_u16(*(v62 - 2), *v62);
        *v63 = vrhaddq_u16(*(v62 - 18), v62[-1]);
        v63[1] = v64;
        v61 += 32;
        v62 = (v62 + 2 * v9);
      }

      while (v61 != 2080);
      v65 = (2 * v15);
      v66 = v164;
      v67 = v163;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = *v65++;
          *&v67[2 * v69] = vrhaddq_u16(vrhaddq_u16(*&v66[2 * v69], *&v66[2 * v69 + 32]), v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v66 += 32;
        v67 += 32;
        --v68;
      }

      while (v68);
      v73 = 2 * v12;
      v74 = v163;
      v31 = 0uLL;
      v75 = 64;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v76 = 0;
        v77 = 1;
        do
        {
          v78 = v77;
          v79 = vsubq_s16(*&v74[2 * v76], *(v73 + 2 * v76));
          v34 = vpadalq_s16(v34, v79);
          v31 = vmlal_s16(v31, *v79.i8, *v79.i8);
          v33 = vmlal_high_s16(v33, v79, v79);
          v76 = 8;
          v77 = 0;
        }

        while ((v78 & 1) != 0);
        v74 += 32;
        v73 += 2 * v13;
        --v75;
      }

      while (v75);
    }

    else if (v11)
    {
      v95 = 0;
      v96 = (v16 + 18);
      do
      {
        v97 = &v164[v95];
        v98 = vrhaddq_u16(*(v96 - 2), *v96);
        *v97 = vrhaddq_u16(*(v96 - 18), v96[-1]);
        v97[1] = v98;
        v95 += 32;
        v96 = (v96 + 2 * v9);
      }

      while (v95 != 2080);
      v99 = vdupq_n_s16(8 - v11);
      v100 = (2 * v15);
      v101 = vdupq_n_s16(v11);
      v102 = v164;
      v103 = v163;
      v104 = 64;
      do
      {
        v105 = 0;
        v106 = 1;
        do
        {
          v107 = v106;
          v108 = *v100++;
          *&v103[2 * v105] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v102[2 * v105], v99), *&v102[2 * v105 + 32], v101), 3uLL), v108);
          v105 = 8;
          v106 = 0;
        }

        while ((v107 & 1) != 0);
        v102 += 32;
        v103 += 32;
        --v104;
      }

      while (v104);
      v109 = 2 * v12;
      v110 = v163;
      v31 = 0uLL;
      v111 = 64;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v112 = 0;
        v113 = 1;
        do
        {
          v114 = v113;
          v115 = vsubq_s16(*&v110[2 * v112], *(v109 + 2 * v112));
          v34 = vpadalq_s16(v34, v115);
          v31 = vmlal_s16(v31, *v115.i8, *v115.i8);
          v33 = vmlal_high_s16(v33, v115, v115);
          v112 = 8;
          v113 = 0;
        }

        while ((v114 & 1) != 0);
        v110 += 32;
        v109 += 2 * v13;
        --v111;
      }

      while (v111);
    }

    else
    {
      v22 = (2 * v15);
      v23 = v164;
      v24 = 64;
      do
      {
        v25 = 0;
        v26 = 1;
        do
        {
          v27 = v26;
          v28 = *v22++;
          *&v23[2 * v25] = vrhaddq_u16(vrhaddq_u16(*(v16 + 2 * v25), *(v16 + 2 * v25 + 2)), v28);
          v25 = 8;
          v26 = 0;
        }

        while ((v27 & 1) != 0);
        v16 += 2 * v9;
        v23 += 32;
        --v24;
      }

      while (v24);
      v29 = 2 * v12;
      v30 = v164;
      v31 = 0uLL;
      v32 = 64;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v35 = 0;
        v36 = 1;
        do
        {
          v37 = v36;
          v38 = vsubq_s16(*&v30[2 * v35], *(v29 + 2 * v35));
          v34 = vpadalq_s16(v34, v38);
          v31 = vmlal_s16(v31, *v38.i8, *v38.i8);
          v33 = vmlal_high_s16(v33, v38, v38);
          v35 = 8;
          v36 = 0;
        }

        while ((v37 & 1) != 0);
        v30 += 32;
        v29 += 2 * v13;
        --v32;
      }

      while (v32);
    }
  }

  else if (v10)
  {
    if (v11 == 4)
    {
      v116 = 0;
      v117 = vdupq_n_s16(8 - v10);
      v118 = vdupq_n_s16(v10);
      v119 = (v16 + 18);
      do
      {
        v120 = &v164[v116];
        v121 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v119 - 2), v117), *v119, v118), 3uLL);
        *v120 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v119 - 18), v117), v119[-1], v118), 3uLL);
        v120[1] = v121;
        v116 += 32;
        v119 = (v119 + 2 * v9);
      }

      while (v116 != 2080);
      v122 = (2 * v15);
      v123 = v164;
      v124 = v163;
      v125 = 64;
      do
      {
        v126 = 0;
        v127 = 1;
        do
        {
          v128 = v127;
          v129 = *v122++;
          *&v124[2 * v126] = vrhaddq_u16(vrhaddq_u16(*&v123[2 * v126], *&v123[2 * v126 + 32]), v129);
          v126 = 8;
          v127 = 0;
        }

        while ((v128 & 1) != 0);
        v123 += 32;
        v124 += 32;
        --v125;
      }

      while (v125);
      v130 = 2 * v12;
      v131 = v163;
      v31 = 0uLL;
      v132 = 64;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v133 = 0;
        v134 = 1;
        do
        {
          v135 = v134;
          v136 = vsubq_s16(*&v131[2 * v133], *(v130 + 2 * v133));
          v34 = vpadalq_s16(v34, v136);
          v31 = vmlal_s16(v31, *v136.i8, *v136.i8);
          v33 = vmlal_high_s16(v33, v136, v136);
          v133 = 8;
          v134 = 0;
        }

        while ((v135 & 1) != 0);
        v131 += 32;
        v130 += 2 * v13;
        --v132;
      }

      while (v132);
    }

    else if (v11)
    {
      v137 = 0;
      v138 = vdupq_n_s16(8 - v10);
      v139 = vdupq_n_s16(v10);
      v140 = (v16 + 18);
      do
      {
        v141 = &v164[v137];
        v142 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v140 - 2), v138), *v140, v139), 3uLL);
        *v141 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v140 - 18), v138), v140[-1], v139), 3uLL);
        v141[1] = v142;
        v137 += 32;
        v140 = (v140 + 2 * v9);
      }

      while (v137 != 2080);
      v143 = vdupq_n_s16(8 - v11);
      v144 = (2 * v15);
      v145 = vdupq_n_s16(v11);
      v146 = v164;
      v147 = v163;
      v148 = 64;
      do
      {
        v149 = 0;
        v150 = 1;
        do
        {
          v151 = v150;
          v152 = *v144++;
          *&v147[2 * v149] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v146[2 * v149], v143), *&v146[2 * v149 + 32], v145), 3uLL), v152);
          v149 = 8;
          v150 = 0;
        }

        while ((v151 & 1) != 0);
        v146 += 32;
        v147 += 32;
        --v148;
      }

      while (v148);
      v153 = 2 * v12;
      v154 = v163;
      v31 = 0uLL;
      v155 = 64;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v156 = 0;
        v157 = 1;
        do
        {
          v158 = v157;
          v159 = vsubq_s16(*&v154[2 * v156], *(v153 + 2 * v156));
          v34 = vpadalq_s16(v34, v159);
          v31 = vmlal_s16(v31, *v159.i8, *v159.i8);
          v33 = vmlal_high_s16(v33, v159, v159);
          v156 = 8;
          v157 = 0;
        }

        while ((v158 & 1) != 0);
        v154 += 32;
        v153 += 2 * v13;
        --v155;
      }

      while (v155);
    }

    else
    {
      v39 = (2 * v15);
      v40 = vdupq_n_s16(8 - v10);
      v41 = vdupq_n_s16(v10);
      v42 = v164;
      v43 = 64;
      do
      {
        v44 = 0;
        v45 = 1;
        do
        {
          v46 = v45;
          v47 = *v39++;
          *&v42[2 * v44] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + 2 * v44), v40), *(v16 + 2 * v44 + 2), v41), 3uLL), v47);
          v44 = 8;
          v45 = 0;
        }

        while ((v46 & 1) != 0);
        v16 += 2 * v9;
        v42 += 32;
        --v43;
      }

      while (v43);
      v48 = 2 * v12;
      v49 = v164;
      v31 = 0uLL;
      v50 = 64;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v51 = 0;
        v52 = 1;
        do
        {
          v53 = v52;
          v54 = vsubq_s16(*&v49[2 * v51], *(v48 + 2 * v51));
          v34 = vpadalq_s16(v34, v54);
          v31 = vmlal_s16(v31, *v54.i8, *v54.i8);
          v33 = vmlal_high_s16(v33, v54, v54);
          v51 = 8;
          v52 = 0;
        }

        while ((v53 & 1) != 0);
        v49 += 32;
        v48 += 2 * v13;
        --v50;
      }

      while (v50);
    }
  }

  else
  {
    v17 = (2 * v15);
    if (v11 == 4)
    {
      v55 = v164;
      v56 = 64;
      do
      {
        v57 = 0;
        v58 = 1;
        do
        {
          v59 = v58;
          v60 = *v17++;
          *&v55[2 * v57] = vrhaddq_u16(vrhaddq_u16(*(v16 + 2 * v57), *(v16 + 2 * v57 + 2 * v9)), v60);
          v57 = 8;
          v58 = 0;
        }

        while ((v59 & 1) != 0);
        v16 += 2 * v9;
        v55 += 32;
        --v56;
      }

      while (v56);
    }

    else if (v11)
    {
      v80 = vdupq_n_s16(8 - v11);
      v81 = vdupq_n_s16(v11);
      v82 = v164;
      v83 = 64;
      do
      {
        v84 = 0;
        v85 = 1;
        do
        {
          v86 = v85;
          v87 = *v17++;
          *&v82[2 * v84] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + 2 * v84), v80), *(v16 + 2 * v84 + 2 * v9), v81), 3uLL), v87);
          v84 = 8;
          v85 = 0;
        }

        while ((v86 & 1) != 0);
        v16 += 2 * v9;
        v82 += 32;
        --v83;
      }

      while (v83);
    }

    else
    {
      v18 = 0;
      v19 = (v16 + 16);
      do
      {
        v20 = &v164[v18 * 16];
        v21 = vrhaddq_u16(*v19, v17[v18 + 1]);
        *v20 = vrhaddq_u16(v19[-1], v17[v18]);
        v20[1] = v21;
        v18 += 2;
        v19 = (v19 + 2 * v9);
      }

      while ((v18 * 16) != 2048);
    }

    v88 = 2 * v12;
    v89 = v164;
    v31 = 0uLL;
    v90 = 64;
    v33 = 0uLL;
    v34 = 0uLL;
    do
    {
      v91 = 0;
      v92 = 1;
      do
      {
        v93 = v92;
        v94 = vsubq_s16(*&v89[2 * v91], *(v88 + 2 * v91));
        v34 = vpadalq_s16(v34, v94);
        v31 = vmlal_s16(v31, *v94.i8, *v94.i8);
        v33 = vmlal_high_s16(v33, v94, v94);
        v91 = 8;
        v92 = 0;
      }

      while ((v93 & 1) != 0);
      v89 += 32;
      v88 += 2 * v13;
      --v90;
    }

    while (v90);
  }

  v160 = vaddvq_s32(v34);
  v161 = vaddlvq_u32(vaddq_s32(v33, v31));
  *v14 = v161;
  return v161 - ((v160 * v160) >> 10);
}

uint64_t sub_277B4B264(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v138 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v47 = v137;
      v48 = 9;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          *&v47[v49] = vrhaddq_u16(*(v8 + v49), *(v8 + v49 + 2));
          v50 += 8;
          v49 += 16;
        }

        while (v50 < 0x18);
        v47 += 64;
        v8 += 2 * a2;
        --v48;
      }

      while (v48);
      v51 = 2 * a8;
      v52 = v137;
      v53 = v136;
      v54 = 8;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v53[v55] = vrhaddq_u16(vrhaddq_u16(*&v52[v55], *&v52[v55 + 64]), *(v51 + v55));
          v56 += 8;
          v55 += 16;
        }

        while (v56 < 0x18);
        v51 += v55;
        v52 += 64;
        v53 += 64;
        --v54;
      }

      while (v54);
      v57 = 2 * a5;
      v58 = v136;
      v21 = 0uLL;
      v59 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          v62 = vsubq_s16(*&v58[v60], *(v57 + v60));
          v24 = vpadalq_s16(v24, v62);
          v21 = vmlal_s16(v21, *v62.i8, *v62.i8);
          v23 = vmlal_high_s16(v23, v62, v62);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v58 += 64;
        v57 += 2 * a6;
        --v59;
      }

      while (v59);
    }

    else if (a4)
    {
      v77 = v137;
      v78 = 9;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrhaddq_u16(*(v8 + v79), *(v8 + v79 + 2));
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = 2 * a8;
      v82 = 8;
      v83 = vdupq_n_s16(8 - a4);
      v84 = vdupq_n_s16(a4);
      v85 = v137;
      v86 = v136;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v86[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v87], v83), *&v85[v87 + 64], v84), 3uLL), *(v81 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v81 += v87;
        v85 += 64;
        v86 += 64;
        --v82;
      }

      while (v82);
      v89 = 2 * a5;
      v90 = v136;
      v21 = 0uLL;
      v91 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vsubq_s16(*&v90[v92], *(v89 + v92));
          v24 = vpadalq_s16(v24, v94);
          v21 = vmlal_s16(v21, *v94.i8, *v94.i8);
          v23 = vmlal_high_s16(v23, v94, v94);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v90 += 64;
        v89 += 2 * a6;
        --v91;
      }

      while (v91);
    }

    else
    {
      v14 = 2 * a8;
      v15 = v137;
      v16 = 8;
      do
      {
        v17 = 0;
        v18 = -8;
        do
        {
          *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
          v18 += 8;
          v17 += 16;
        }

        while (v18 < 0x18);
        v14 += v17;
        v15 += 64;
        v8 += 2 * a2;
        --v16;
      }

      while (v16);
      v19 = 2 * a5;
      v20 = v137;
      v21 = 0uLL;
      v22 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          v27 = vsubq_s16(*&v20[v25], *(v19 + v25));
          v24 = vpadalq_s16(v24, v27);
          v21 = vmlal_s16(v21, *v27.i8, *v27.i8);
          v23 = vmlal_high_s16(v23, v27, v27);
          v26 += 8;
          v25 += 16;
        }

        while (v26 < 0x18);
        v20 += 64;
        v19 += 2 * a6;
        --v22;
      }

      while (v22);
    }
  }

  else if (a3)
  {
    v28 = 8;
    if (a4 == 4)
    {
      v95 = vdupq_n_s16(8 - a3);
      v96 = vdupq_n_s16(a3);
      v97 = v137;
      v98 = 9;
      do
      {
        v99 = 0;
        v100 = -8;
        do
        {
          *&v97[v99] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v99), v95), *(v8 + v99 + 2), v96), 3uLL);
          v100 += 8;
          v99 += 16;
        }

        while (v100 < 0x18);
        v97 += 64;
        v8 += 2 * a2;
        --v98;
      }

      while (v98);
      v101 = 2 * a8;
      v102 = v137;
      v103 = v136;
      v104 = 8;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105] = vrhaddq_u16(vrhaddq_u16(*&v102[v105], *&v102[v105 + 64]), *(v101 + v105));
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x18);
        v101 += v105;
        v102 += 64;
        v103 += 64;
        --v104;
      }

      while (v104);
      v107 = 2 * a5;
      v108 = v136;
      v21 = 0uLL;
      v109 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v108[v110], *(v107 + v110));
          v24 = vpadalq_s16(v24, v112);
          v21 = vmlal_s16(v21, *v112.i8, *v112.i8);
          v23 = vmlal_high_s16(v23, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v108 += 64;
        v107 += 2 * a6;
        --v109;
      }

      while (v109);
    }

    else if (a4)
    {
      v113 = vdupq_n_s16(8 - a3);
      v114 = vdupq_n_s16(a3);
      v115 = v137;
      v116 = 9;
      do
      {
        v117 = 0;
        v118 = -8;
        do
        {
          *&v115[v117] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v117), v113), *(v8 + v117 + 2), v114), 3uLL);
          v118 += 8;
          v117 += 16;
        }

        while (v118 < 0x18);
        v115 += 64;
        v8 += 2 * a2;
        --v116;
      }

      while (v116);
      v119 = 2 * a8;
      v120 = 8;
      v121 = vdupq_n_s16(8 - a4);
      v122 = vdupq_n_s16(a4);
      v123 = v137;
      v124 = v136;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v124[v125] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v123[v125], v121), *&v123[v125 + 64], v122), 3uLL), *(v119 + v125));
          v126 += 8;
          v125 += 16;
        }

        while (v126 < 0x18);
        v119 += v125;
        v123 += 64;
        v124 += 64;
        --v120;
      }

      while (v120);
      v127 = 2 * a5;
      v128 = v136;
      v21 = 0uLL;
      v129 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v130 = 0;
        v131 = -8;
        do
        {
          v132 = vsubq_s16(*&v128[v130], *(v127 + v130));
          v24 = vpadalq_s16(v24, v132);
          v21 = vmlal_s16(v21, *v132.i8, *v132.i8);
          v23 = vmlal_high_s16(v23, v132, v132);
          v131 += 8;
          v130 += 16;
        }

        while (v131 < 0x18);
        v128 += 64;
        v127 += 2 * a6;
        --v129;
      }

      while (v129);
    }

    else
    {
      v29 = vdupq_n_s16(8 - a3);
      v30 = 2 * a8;
      v31 = vdupq_n_s16(a3);
      v32 = v137;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v32[v33] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v31), 3uLL), *(v30 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v30 += v33;
        v32 += 64;
        v8 += 2 * a2;
        --v28;
      }

      while (v28);
      v35 = 2 * a5;
      v36 = v137;
      v21 = 0uLL;
      v37 = 8;
      v23 = 0uLL;
      v24 = 0uLL;
      do
      {
        v38 = 0;
        v39 = -8;
        do
        {
          v40 = vsubq_s16(*&v36[v38], *(v35 + v38));
          v24 = vpadalq_s16(v24, v40);
          v21 = vmlal_s16(v21, *v40.i8, *v40.i8);
          v23 = vmlal_high_s16(v23, v40, v40);
          v39 += 8;
          v38 += 16;
        }

        while (v39 < 0x18);
        v36 += 64;
        v35 += 2 * a6;
        --v37;
      }

      while (v37);
    }
  }

  else
  {
    v9 = 2 * a8;
    if (a4 == 4)
    {
      v41 = 2 * a2;
      v42 = v8 + v41;
      v43 = v137;
      v44 = 8;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v43[v45] = vrhaddq_u16(vrhaddq_u16(*(v8 + v45), *(v42 + v45)), *(v9 + v45));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v9 += v45;
        v43 += 64;
        v42 += v41;
        v8 += v41;
        --v44;
      }

      while (v44);
    }

    else if (a4)
    {
      v63 = 8;
      v64 = vdupq_n_s16(8 - a4);
      v65 = vdupq_n_s16(a4);
      v66 = 2 * a2;
      v67 = v8 + v66;
      v68 = v137;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v68[v69] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v64), *(v67 + v69), v65), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v9 += v69;
        v68 += 64;
        v67 += v66;
        v8 += v66;
        --v63;
      }

      while (v63);
    }

    else
    {
      v10 = v137;
      v11 = 8;
      do
      {
        v12 = 0;
        v13 = -8;
        do
        {
          *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
          v13 += 8;
          v12 += 16;
        }

        while (v13 < 0x18);
        v9 += v12;
        v10 += 64;
        v8 += 2 * a2;
        --v11;
      }

      while (v11);
    }

    v71 = 2 * a5;
    v72 = v137;
    v21 = 0uLL;
    v73 = 8;
    v23 = 0uLL;
    v24 = 0uLL;
    do
    {
      v74 = 0;
      v75 = -8;
      do
      {
        v76 = vsubq_s16(*&v72[v74], *(v71 + v74));
        v24 = vpadalq_s16(v24, v76);
        v21 = vmlal_s16(v21, *v76.i8, *v76.i8);
        v23 = vmlal_high_s16(v23, v76, v76);
        v75 += 8;
        v74 += 16;
      }

      while (v75 < 0x18);
      v72 += 64;
      v71 += 2 * a6;
      --v73;
    }

    while (v73);
  }

  v133 = vaddvq_s32(v24);
  v134 = vaddlvq_u32(vaddq_s32(v23, v21));
  *a7 = v134;
  return v134 - ((v133 * v133) >> 8);
}

uint64_t sub_277B4BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v146 = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v55 = v145;
      v56 = 17;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          *&v55[v57] = vrhaddq_u16(*(v16 + v57), *(v16 + v57 + 2));
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x38);
        v55 += 128;
        v16 += 2 * v9;
        --v56;
      }

      while (v56);
      v59 = 2 * v15;
      v60 = v145;
      v61 = v144;
      v62 = 16;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v61[v63] = vrhaddq_u16(vrhaddq_u16(*&v60[v63], *&v60[v63 + 128]), *(v59 + v63));
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x38);
        v59 += v63;
        v60 += 128;
        v61 += 128;
        --v62;
      }

      while (v62);
      v65 = 2 * v12;
      v66 = v144;
      v29 = 0uLL;
      v67 = 16;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          v70 = vsubq_s16(*&v66[v68], *(v65 + v68));
          v32 = vpadalq_s16(v32, v70);
          v29 = vmlal_s16(v29, *v70.i8, *v70.i8);
          v31 = vmlal_high_s16(v31, v70, v70);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x38);
        v66 += 128;
        v65 += 2 * v13;
        --v67;
      }

      while (v67);
    }

    else if (v11)
    {
      v85 = v145;
      v86 = 17;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(*(v16 + v87), *(v16 + v87 + 2));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x38);
        v85 += 128;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v145;
      v93 = v144;
      v94 = 16;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 128], v91), 3uLL), *(v90 + v95));
          v96 += 8;
          v95 += 16;
        }

        while (v96 < 0x38);
        v90 += v95;
        v92 += 128;
        v93 += 128;
        --v94;
      }

      while (v94);
      v97 = 2 * v12;
      v98 = v144;
      v29 = 0uLL;
      v99 = 16;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vsubq_s16(*&v98[v100], *(v97 + v100));
          v32 = vpadalq_s16(v32, v102);
          v29 = vmlal_s16(v29, *v102.i8, *v102.i8);
          v31 = vmlal_high_s16(v31, v102, v102);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x38);
        v98 += 128;
        v97 += 2 * v13;
        --v99;
      }

      while (v99);
    }

    else
    {
      v22 = 2 * v15;
      v23 = v145;
      v24 = 16;
      do
      {
        v25 = 0;
        v26 = -8;
        do
        {
          *&v23[v25] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
          v26 += 8;
          v25 += 16;
        }

        while (v26 < 0x38);
        v22 += v25;
        v23 += 128;
        v16 += 2 * v9;
        --v24;
      }

      while (v24);
      v27 = 2 * v12;
      v28 = v145;
      v29 = 0uLL;
      v30 = 16;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          v35 = vsubq_s16(*&v28[v33], *(v27 + v33));
          v32 = vpadalq_s16(v32, v35);
          v29 = vmlal_s16(v29, *v35.i8, *v35.i8);
          v31 = vmlal_high_s16(v31, v35, v35);
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x38);
        v28 += 128;
        v27 += 2 * v13;
        --v30;
      }

      while (v30);
    }
  }

  else if (v10)
  {
    if (v11 == 4)
    {
      v103 = vdupq_n_s16(8 - v10);
      v104 = vdupq_n_s16(v10);
      v105 = v145;
      v106 = 17;
      do
      {
        v107 = 0;
        v108 = -8;
        do
        {
          *&v105[v107] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v107), v103), *(v16 + v107 + 2), v104), 3uLL);
          v108 += 8;
          v107 += 16;
        }

        while (v108 < 0x38);
        v105 += 128;
        v16 += 2 * v9;
        --v106;
      }

      while (v106);
      v109 = 2 * v15;
      v110 = v145;
      v111 = v144;
      v112 = 16;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrhaddq_u16(vrhaddq_u16(*&v110[v113], *&v110[v113 + 128]), *(v109 + v113));
          v114 += 8;
          v113 += 16;
        }

        while (v114 < 0x38);
        v109 += v113;
        v110 += 128;
        v111 += 128;
        --v112;
      }

      while (v112);
      v115 = 2 * v12;
      v116 = v144;
      v29 = 0uLL;
      v117 = 16;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          v120 = vsubq_s16(*&v116[v118], *(v115 + v118));
          v32 = vpadalq_s16(v32, v120);
          v29 = vmlal_s16(v29, *v120.i8, *v120.i8);
          v31 = vmlal_high_s16(v31, v120, v120);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x38);
        v116 += 128;
        v115 += 2 * v13;
        --v117;
      }

      while (v117);
    }

    else if (v11)
    {
      v121 = vdupq_n_s16(8 - v10);
      v122 = vdupq_n_s16(v10);
      v123 = v145;
      v124 = 17;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v125), v121), *(v16 + v125 + 2), v122), 3uLL);
          v126 += 8;
          v125 += 16;
        }

        while (v126 < 0x38);
        v123 += 128;
        v16 += 2 * v9;
        --v124;
      }

      while (v124);
      v127 = vdupq_n_s16(8 - v11);
      v128 = 2 * v15;
      v129 = vdupq_n_s16(v11);
      v130 = v145;
      v131 = v144;
      v132 = 16;
      do
      {
        v133 = 0;
        v134 = -8;
        do
        {
          *&v131[v133] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v130[v133], v127), *&v130[v133 + 128], v129), 3uLL), *(v128 + v133));
          v134 += 8;
          v133 += 16;
        }

        while (v134 < 0x38);
        v128 += v133;
        v130 += 128;
        v131 += 128;
        --v132;
      }

      while (v132);
      v135 = 2 * v12;
      v136 = v144;
      v29 = 0uLL;
      v137 = 16;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v138 = 0;
        v139 = -8;
        do
        {
          v140 = vsubq_s16(*&v136[v138], *(v135 + v138));
          v32 = vpadalq_s16(v32, v140);
          v29 = vmlal_s16(v29, *v140.i8, *v140.i8);
          v31 = vmlal_high_s16(v31, v140, v140);
          v139 += 8;
          v138 += 16;
        }

        while (v139 < 0x38);
        v136 += 128;
        v135 += 2 * v13;
        --v137;
      }

      while (v137);
    }

    else
    {
      v36 = 2 * v15;
      v37 = vdupq_n_s16(8 - v10);
      v38 = vdupq_n_s16(v10);
      v39 = v145;
      v40 = 16;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v41), v37), *(v16 + v41 + 2), v38), 3uLL), *(v36 + v41));
          v42 += 8;
          v41 += 16;
        }

        while (v42 < 0x38);
        v36 += v41;
        v39 += 128;
        v16 += 2 * v9;
        --v40;
      }

      while (v40);
      v43 = 2 * v12;
      v44 = v145;
      v29 = 0uLL;
      v45 = 16;
      v31 = 0uLL;
      v32 = 0uLL;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          v48 = vsubq_s16(*&v44[v46], *(v43 + v46));
          v32 = vpadalq_s16(v32, v48);
          v29 = vmlal_s16(v29, *v48.i8, *v48.i8);
          v31 = vmlal_high_s16(v31, v48, v48);
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x38);
        v44 += 128;
        v43 += 2 * v13;
        --v45;
      }

      while (v45);
    }
  }

  else
  {
    v17 = 2 * v15;
    if (v11 == 4)
    {
      v49 = 2 * v9;
      v50 = v16 + v49;
      v51 = v145;
      v52 = 16;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(vrhaddq_u16(*(v16 + v53), *(v50 + v53)), *(v17 + v53));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v17 += v53;
        v51 += 128;
        v50 += v49;
        v16 += v49;
        --v52;
      }

      while (v52);
    }

    else if (v11)
    {
      v71 = vdupq_n_s16(8 - v11);
      v72 = vdupq_n_s16(v11);
      v73 = 2 * v9;
      v74 = v16 + v73;
      v75 = v145;
      v76 = 16;
      do
      {
        v77 = 0;
        v78 = -8;
        do
        {
          *&v75[v77] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v77), v71), *(v74 + v77), v72), 3uLL), *(v17 + v77));
          v78 += 8;
          v77 += 16;
        }

        while (v78 < 0x38);
        v17 += v77;
        v75 += 128;
        v74 += v73;
        v16 += v73;
        --v76;
      }

      while (v76);
    }

    else
    {
      v18 = v145;
      v19 = 16;
      do
      {
        v20 = 0;
        v21 = -8;
        do
        {
          *&v18[v20] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
          v21 += 8;
          v20 += 16;
        }

        while (v21 < 0x38);
        v17 += v20;
        v18 += 128;
        v16 += 2 * v9;
        --v19;
      }

      while (v19);
    }

    v79 = 2 * v12;
    v80 = v145;
    v29 = 0uLL;
    v81 = 16;
    v31 = 0uLL;
    v32 = 0uLL;
    do
    {
      v82 = 0;
      v83 = -8;
      do
      {
        v84 = vsubq_s16(*&v80[v82], *(v79 + v82));
        v32 = vpadalq_s16(v32, v84);
        v29 = vmlal_s16(v29, *v84.i8, *v84.i8);
        v31 = vmlal_high_s16(v31, v84, v84);
        v83 += 8;
        v82 += 16;
      }

      while (v83 < 0x38);
      v80 += 128;
      v79 += 2 * v13;
      --v81;
    }

    while (v81);
  }

  v141 = vaddvq_s32(v32);
  v142 = vaddlvq_u32(vaddq_s32(v31, v29));
  *v14 = v142;
  return v142 - ((v141 * v141) >> 10);
}

uint64_t sub_277B4C288(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[5] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 40);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 32);
  return sub_2779960F8(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B4C38C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[9] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 72);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 64);
  return sub_2779961A0(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B4C490(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 80);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 64);
  return sub_277996248(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B4C594(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 144);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_2779962D4(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B4C6A0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 272);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 256);
  return sub_277996360(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B4C7AC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 288);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 8;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 8;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 288);
      v58 = (2 * a8);
      v59 = 8;
      v60 = vdupq_n_s16(8 - a4);
      v61 = vdupq_n_s16(a4);
      v62 = v98;
      v63 = v97;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v58++;
          *&v63[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v62[2 * v64], v60), *&v62[2 * v64 + 32], v61), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v62 += 32;
        v63 += 32;
        --v59;
      }

      while (v59);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 288);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 8;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = 8;
        v21 = vdupq_n_s16(8 - a3);
        v22 = (2 * a8);
        v23 = vdupq_n_s16(a3);
        v24 = v98;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v22++;
            *&v24[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v23), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v24 += 32;
          --v20;
        }

        while (v20);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 288);
      v86 = (2 * a8);
      v87 = 8;
      v88 = vdupq_n_s16(8 - a4);
      v89 = vdupq_n_s16(a4);
      v90 = v98;
      v91 = v97;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v86++;
          *&v91[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v90[2 * v92], v88), *&v90[2 * v92 + 32], v89), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v90 += 32;
        v91 += 32;
        --v87;
      }

      while (v87);
    }

LABEL_59:
    v54 = v97;
    return sub_2779963EC(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 8;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = 8;
    v47 = vdupq_n_s16(8 - a4);
    v48 = vdupq_n_s16(a4);
    v49 = v98;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v49[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v47), *(v8 + 2 * v50 + 2 * a2), v48), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v49 += 32;
      --v46;
    }

    while (v46);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 256);
  }

LABEL_38:
  v54 = v98;
  return sub_2779963EC(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B4CD1C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 544);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 16;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 16;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 544);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 16;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 544);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 16;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 16;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 544);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 16;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277996494(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 16;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 512);
  }

LABEL_38:
  v54 = v98;
  return sub_277996494(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B4D29C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 1056);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 32;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 32;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 1056);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 32;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 1056);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 32;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 32;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 1056);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 32;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_27799653C(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 32;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 1024);
  }

LABEL_38:
  v54 = v98;
  return sub_27799653C(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B4D81C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = v91;
      v33 = 17;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * a2;
        --v33;
      }

      while (v33);
      v36 = 2 * a8;
      v37 = v91;
      v38 = v90;
      v39 = 16;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!a4)
      {
        v14 = 2 * a8;
        v15 = v91;
        v16 = 16;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * a2;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * a2;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - a4);
      v56 = 2 * a8;
      v57 = vdupq_n_s16(a4);
      v58 = v91;
      v59 = v90;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 64], v57), 3uLL), *(v56 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v56 += v61;
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v63 = vdupq_n_s16(8 - a3);
      v64 = vdupq_n_s16(a3);
      v65 = v91;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * a2;
        --v66;
      }

      while (v66);
      v69 = 2 * a8;
      v70 = v91;
      v71 = v90;
      v72 = 16;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!a4)
      {
        v19 = 2 * a8;
        v20 = vdupq_n_s16(8 - a3);
        v21 = vdupq_n_s16(a3);
        v22 = v91;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v19 += v24;
          v22 += 64;
          v8 += 2 * a2;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - a3);
      v76 = vdupq_n_s16(a3);
      v77 = v91;
      v78 = 17;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - a4);
      v82 = 2 * a8;
      v83 = vdupq_n_s16(a4);
      v84 = v91;
      v85 = v90;
      v86 = 16;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 64], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v82 += v87;
        v84 += 64;
        v85 += 64;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_2779965E4(v50 >> 1, 32, a5, a6, a7);
  }

  v9 = 2 * a8;
  if (a4 == 4)
  {
    v26 = 2 * a2;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    v42 = vdupq_n_s16(8 - a4);
    v43 = vdupq_n_s16(a4);
    v44 = 2 * a2;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 16;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v46 += 64;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 16;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * a2;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_2779965E4(v50 >> 1, 32, a5, a6, a7);
}

uint64_t sub_277B4DDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v100 = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 33;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42), *(v16 + v42 + 2));
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x18);
        v40 += 64;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 32;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 64]), *(v44 + v48));
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v44 += v48;
        v45 += 64;
        v46 += 64;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 32;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x18);
          v22 += v25;
          v23 += 64;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61), *(v16 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v59 += 64;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 64], v65), 3uLL), *(v64 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v64 += v69;
        v66 += 64;
        v67 += 64;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75), v71), *(v16 + v75 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 32;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 64]), *(v77 + v81));
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x18);
        v77 += v81;
        v78 += 64;
        v79 += 64;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 32;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x18);
          v27 += v32;
          v30 += 64;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 33;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87), v83), *(v16 + v87 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v85 += 64;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 32;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 64], v91), 3uLL), *(v90 + v95));
          v96 += 8;
          v95 += 16;
        }

        while (v96 < 0x18);
        v90 += v95;
        v92 += 64;
        v93 += 64;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_277996688(v58 >> 1, 32, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v17 += v38;
      v36 += 64;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 32;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v17 += v56;
      v54 += 64;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 32;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x18);
      v17 += v20;
      v18 += 64;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_277996688(v58 >> 1, 32, v12, v13, v14);
}

uint64_t sub_277B4E348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v99[520] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 65;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42 * 8), *(v16 + v42 * 8 + 2));
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x18);
        v40 += 8;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 64;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48 * 8] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 8]), *(v44 + v48 * 8));
          v49 += 8;
          v48 += 2;
        }

        while (v49 < 0x18);
        v44 += v48 * 8;
        v45 += 8;
        v46 += 64;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 64;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x18);
          v22 += v25;
          v23 += 8;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61 * 8), *(v16 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x18);
        v59 += 8;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 8], v65), 3uLL), *(v64 + v69 * 8));
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x18);
        v64 += v69 * 8;
        v66 += 8;
        v67 += 64;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75 * 8), v71), *(v16 + v75 * 8 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x18);
        v73 += 8;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 64;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81 * 8] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 8]), *(v77 + v81 * 8));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x18);
        v77 += v81 * 8;
        v78 += 8;
        v79 += 64;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 64;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x18);
          v27 += v32;
          v30 += 8;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 65;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87 * 8), v83), *(v16 + v87 * 8 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x18);
        v85 += 8;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 64;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 8], v91), 3uLL), *(v90 + v95 * 8));
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x18);
        v90 += v95 * 8;
        v92 += 8;
        v93 += 64;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_27799672C(v58 >> 1, 32, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v17 += v38;
      v36 += 8;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 64;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v17 += v56;
      v54 += 8;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 64;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20 / 8] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x18);
      v17 += v20;
      v18 += 8;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_27799672C(v58 >> 1, 32, v12, v13, v14);
}

uint64_t sub_277B4E924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v99[528] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 33;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42 * 8), *(v16 + v42 * 8 + 2));
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v40 += 16;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 32;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48 * 8] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 16]), *(v44 + v48 * 8));
          v49 += 8;
          v48 += 2;
        }

        while (v49 < 0x38);
        v44 += v48 * 8;
        v45 += 16;
        v46 += 128;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 32;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x38);
          v22 += v25;
          v23 += 16;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61 * 8), *(v16 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v59 += 16;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 16], v65), 3uLL), *(v64 + v69 * 8));
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v64 += v69 * 8;
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75 * 8), v71), *(v16 + v75 * 8 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 32;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81 * 8] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 16]), *(v77 + v81 * 8));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v77 += v81 * 8;
        v78 += 16;
        v79 += 128;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 32;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x38);
          v27 += v32;
          v30 += 16;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 33;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87 * 8), v83), *(v16 + v87 * 8 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v85 += 16;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 32;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 16], v91), 3uLL), *(v90 + v95 * 8));
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x38);
        v90 += v95 * 8;
        v92 += 16;
        v93 += 128;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_2779967D0(v58 >> 1, 64, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v17 += v38;
      v36 += 16;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 32;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x38);
      v17 += v56;
      v54 += 16;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 32;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20 / 8] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x38);
      v17 += v20;
      v18 += 16;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_2779967D0(v58 >> 1, 64, v12, v13, v14);
}

uint64_t sub_277B4EF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v99[1040] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 65;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42 * 8), *(v16 + v42 * 8 + 2));
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v40 += 16;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 64;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48 * 8] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 16]), *(v44 + v48 * 8));
          v49 += 8;
          v48 += 2;
        }

        while (v49 < 0x38);
        v44 += v48 * 8;
        v45 += 16;
        v46 += 128;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 64;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x38);
          v22 += v25;
          v23 += 16;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61 * 8), *(v16 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v59 += 16;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 16], v65), 3uLL), *(v64 + v69 * 8));
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v64 += v69 * 8;
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75 * 8), v71), *(v16 + v75 * 8 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 64;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81 * 8] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 16]), *(v77 + v81 * 8));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v77 += v81 * 8;
        v78 += 16;
        v79 += 128;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 64;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x38);
          v27 += v32;
          v30 += 16;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 65;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87 * 8), v83), *(v16 + v87 * 8 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v85 += 16;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 64;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 16], v91), 3uLL), *(v90 + v95 * 8));
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x38);
        v90 += v95 * 8;
        v92 += 16;
        v93 += 128;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_277996874(v58 >> 1, 64, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v17 += v38;
      v36 += 16;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 64;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x38);
      v17 += v56;
      v54 += 16;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 64;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20 / 8] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x38);
      v17 += v20;
      v18 += 16;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_277996874(v58 >> 1, 64, v12, v13, v14);
}

uint64_t sub_277B4F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v99[2064] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 129;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42 * 8), *(v16 + v42 * 8 + 2));
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v40 += 16;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 128;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48 * 8] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 16]), *(v44 + v48 * 8));
          v49 += 8;
          v48 += 2;
        }

        while (v49 < 0x38);
        v44 += v48 * 8;
        v45 += 16;
        v46 += 128;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 128;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x38);
          v22 += v25;
          v23 += 16;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 129;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61 * 8), *(v16 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v59 += 16;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 128;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 16], v65), 3uLL), *(v64 + v69 * 8));
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v64 += v69 * 8;
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75 * 8), v71), *(v16 + v75 * 8 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 128;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81 * 8] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 16]), *(v77 + v81 * 8));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v77 += v81 * 8;
        v78 += 16;
        v79 += 128;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 128;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x38);
          v27 += v32;
          v30 += 16;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 129;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87 * 8), v83), *(v16 + v87 * 8 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x38);
        v85 += 16;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 128;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 16], v91), 3uLL), *(v90 + v95 * 8));
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x38);
        v90 += v95 * 8;
        v92 += 16;
        v93 += 128;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_277996918(v58 >> 1, 64, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v17 += v38;
      v36 += 16;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 128;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x38);
      v17 += v56;
      v54 += 16;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 128;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20 / 8] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x38);
      v17 += v20;
      v18 += 16;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_277996918(v58 >> 1, 64, v12, v13, v14);
}

uint64_t sub_277B4FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v99[2080] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 65;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42 * 8), *(v16 + v42 * 8 + 2));
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x78);
        v40 += 32;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 64;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48 * 8] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 32]), *(v44 + v48 * 8));
          v49 += 8;
          v48 += 2;
        }

        while (v49 < 0x78);
        v44 += v48 * 8;
        v45 += 32;
        v46 += 256;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 64;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x78);
          v22 += v25;
          v23 += 32;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61 * 8), *(v16 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v59 += 32;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 32], v65), 3uLL), *(v64 + v69 * 8));
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x78);
        v64 += v69 * 8;
        v66 += 32;
        v67 += 256;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75 * 8), v71), *(v16 + v75 * 8 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 64;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81 * 8] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 32]), *(v77 + v81 * 8));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x78);
        v77 += v81 * 8;
        v78 += 32;
        v79 += 256;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 64;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x78);
          v27 += v32;
          v30 += 32;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 65;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87 * 8), v83), *(v16 + v87 * 8 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v85 += 32;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 64;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 32], v91), 3uLL), *(v90 + v95 * 8));
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x78);
        v90 += v95 * 8;
        v92 += 32;
        v93 += 256;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_2779969BC(v58 >> 1, 128, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v17 += v38;
      v36 += 32;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 64;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x78);
      v17 += v56;
      v54 += 32;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 64;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20 / 8] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x78);
      v17 += v20;
      v18 += 32;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_2779969BC(v58 >> 1, 128, v12, v13, v14);
}

uint64_t sub_277B50094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v99[4128] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 129;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42 * 8), *(v16 + v42 * 8 + 2));
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x78);
        v40 += 32;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 128;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48 * 8] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 32]), *(v44 + v48 * 8));
          v49 += 8;
          v48 += 2;
        }

        while (v49 < 0x78);
        v44 += v48 * 8;
        v45 += 32;
        v46 += 256;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 128;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x78);
          v22 += v25;
          v23 += 32;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 129;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61 * 8), *(v16 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v59 += 32;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 128;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 32], v65), 3uLL), *(v64 + v69 * 8));
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x78);
        v64 += v69 * 8;
        v66 += 32;
        v67 += 256;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75 * 8), v71), *(v16 + v75 * 8 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 128;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81 * 8] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 32]), *(v77 + v81 * 8));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x78);
        v77 += v81 * 8;
        v78 += 32;
        v79 += 256;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 128;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x78);
          v27 += v32;
          v30 += 32;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 129;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87 * 8), v83), *(v16 + v87 * 8 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x78);
        v85 += 32;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 128;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 32], v91), 3uLL), *(v90 + v95 * 8));
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x78);
        v90 += v95 * 8;
        v92 += 32;
        v93 += 256;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_277996A60(v58 >> 1, 128, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v17 += v38;
      v36 += 32;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 128;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x78);
      v17 += v56;
      v54 += 32;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 128;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20 / 8] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x78);
      v17 += v20;
      v18 += 32;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_277996A60(v58 >> 1, 128, v12, v13, v14);
}

uint64_t sub_277B50674(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[17] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 136);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_277997938(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B50780(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 528);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 512);
  return sub_2779979E0(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B5088C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 160);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 4;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 4;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 160);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 4;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 160);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 4;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 4;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 160);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 4;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277997A6C(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 4;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 4;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 128);
  }

LABEL_38:
  v54 = v98;
  return sub_277997A6C(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B50E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v107 = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v43 = 0;
      v44 = (v16 + 18);
      do
      {
        v45 = &v106[v43];
        *v45 = vrhaddq_u16(*(v44 - 18), v44[-1]);
        v45[1] = vrhaddq_u16(*(v44 - 2), *v44);
        v43 += 32;
        v44 = (v44 + 2 * v9);
      }

      while (v43 != 2080);
      v46 = (2 * v15);
      v47 = v106;
      v48 = v105;
      v49 = 64;
      do
      {
        v50 = 0;
        v51 = 1;
        do
        {
          v52 = v51;
          v53 = *v46++;
          *&v48[2 * v50] = vrhaddq_u16(vrhaddq_u16(*&v47[2 * v50], *&v47[2 * v50 + 32]), v53);
          v50 = 8;
          v51 = 0;
        }

        while ((v52 & 1) != 0);
        v47 += 32;
        v48 += 32;
        --v49;
      }

      while (v49);
    }

    else
    {
      if (!v11)
      {
        v21 = (2 * v15);
        v22 = v106;
        v23 = 64;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v21++;
            *&v22[2 * v24] = vrhaddq_u16(vrhaddq_u16(*(v16 + 2 * v24), *(v16 + 2 * v24 + 2)), v27);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v16 += 2 * v9;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_38;
      }

      v63 = 0;
      v64 = (v16 + 18);
      do
      {
        v65 = &v106[v63];
        *v65 = vrhaddq_u16(*(v64 - 18), v64[-1]);
        v65[1] = vrhaddq_u16(*(v64 - 2), *v64);
        v63 += 32;
        v64 = (v64 + 2 * v9);
      }

      while (v63 != 2080);
      v66 = vdupq_n_s16(8 - v11);
      v67 = (2 * v15);
      v68 = vdupq_n_s16(v11);
      v69 = v106;
      v70 = v105;
      v71 = 64;
      do
      {
        v72 = 0;
        v73 = 1;
        do
        {
          v74 = v73;
          v75 = *v67++;
          *&v70[2 * v72] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v69[2 * v72], v66), *&v69[2 * v72 + 32], v68), 3uLL), v75);
          v72 = 8;
          v73 = 0;
        }

        while ((v74 & 1) != 0);
        v69 += 32;
        v70 += 32;
        --v71;
      }

      while (v71);
    }

    goto LABEL_59;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v76 = 0;
      v77 = vdupq_n_s16(8 - v10);
      v78 = vdupq_n_s16(v10);
      v79 = (v16 + 18);
      do
      {
        v80 = &v106[v76];
        *v80 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 18), v77), v79[-1], v78), 3uLL);
        v80[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 2), v77), *v79, v78), 3uLL);
        v76 += 32;
        v79 = (v79 + 2 * v9);
      }

      while (v76 != 2080);
      v81 = (2 * v15);
      v82 = v106;
      v83 = v105;
      v84 = 64;
      do
      {
        v85 = 0;
        v86 = 1;
        do
        {
          v87 = v86;
          v88 = *v81++;
          *&v83[2 * v85] = vrhaddq_u16(vrhaddq_u16(*&v82[2 * v85], *&v82[2 * v85 + 32]), v88);
          v85 = 8;
          v86 = 0;
        }

        while ((v87 & 1) != 0);
        v82 += 32;
        v83 += 32;
        --v84;
      }

      while (v84);
    }

    else
    {
      if (!v11)
      {
        v28 = (2 * v15);
        v29 = vdupq_n_s16(8 - v10);
        v30 = vdupq_n_s16(v10);
        v31 = v106;
        v32 = 64;
        do
        {
          v33 = 0;
          v34 = 1;
          do
          {
            v35 = v34;
            v36 = *v28++;
            *&v31[2 * v33] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + 2 * v33), v29), *(v16 + 2 * v33 + 2), v30), 3uLL), v36);
            v33 = 8;
            v34 = 0;
          }

          while ((v35 & 1) != 0);
          v16 += 2 * v9;
          v31 += 32;
          --v32;
        }

        while (v32);
        goto LABEL_38;
      }

      v89 = 0;
      v90 = vdupq_n_s16(8 - v10);
      v91 = vdupq_n_s16(v10);
      v92 = (v16 + 18);
      do
      {
        v93 = &v106[v89];
        *v93 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v92 - 18), v90), v92[-1], v91), 3uLL);
        v93[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v92 - 2), v90), *v92, v91), 3uLL);
        v89 += 32;
        v92 = (v92 + 2 * v9);
      }

      while (v89 != 2080);
      v94 = vdupq_n_s16(8 - v11);
      v95 = (2 * v15);
      v96 = vdupq_n_s16(v11);
      v97 = v106;
      v98 = v105;
      v99 = 64;
      do
      {
        v100 = 0;
        v101 = 1;
        do
        {
          v102 = v101;
          v103 = *v95++;
          *&v98[2 * v100] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v97[2 * v100], v94), *&v97[2 * v100 + 32], v96), 3uLL), v103);
          v100 = 8;
          v101 = 0;
        }

        while ((v102 & 1) != 0);
        v97 += 32;
        v98 += 32;
        --v99;
      }

      while (v99);
    }

LABEL_59:
    v62 = v105;
    return sub_277997B14(v62 >> 1, 16, v12, v13, v14);
  }

  v17 = (2 * v15);
  if (v11 == 4)
  {
    v37 = v106;
    v38 = 64;
    do
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = v40;
        v42 = *v17++;
        *&v37[2 * v39] = vrhaddq_u16(vrhaddq_u16(*(v16 + 2 * v39), *(v16 + 2 * v39 + 2 * v9)), v42);
        v39 = 8;
        v40 = 0;
      }

      while ((v41 & 1) != 0);
      v16 += 2 * v9;
      v37 += 32;
      --v38;
    }

    while (v38);
  }

  else if (v11)
  {
    v54 = vdupq_n_s16(8 - v11);
    v55 = vdupq_n_s16(v11);
    v56 = v106;
    v57 = 64;
    do
    {
      v58 = 0;
      v59 = 1;
      do
      {
        v60 = v59;
        v61 = *v17++;
        *&v56[2 * v58] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + 2 * v58), v54), *(v16 + 2 * v58 + 2 * v9), v55), 3uLL), v61);
        v58 = 8;
        v59 = 0;
      }

      while ((v60 & 1) != 0);
      v16 += 2 * v9;
      v56 += 32;
      --v57;
    }

    while (v57);
  }

  else
  {
    v18 = 0;
    v19 = (v16 + 16);
    do
    {
      v20 = &v106[v18 * 16];
      *v20 = vrhaddq_u16(v19[-1], v17[v18]);
      v20[1] = vrhaddq_u16(*v19, v17[v18 + 1]);
      v18 += 2;
      v19 = (v19 + 2 * v9);
    }

    while ((v18 * 16) != 2048);
  }

LABEL_38:
  v62 = v106;
  return sub_277997B14(v62 >> 1, 16, v12, v13, v14);
}

uint64_t sub_277B513A8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = v91;
      v33 = 9;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * a2;
        --v33;
      }

      while (v33);
      v36 = 2 * a8;
      v37 = v91;
      v38 = v90;
      v39 = 8;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!a4)
      {
        v14 = 2 * a8;
        v15 = v91;
        v16 = 8;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * a2;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 9;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * a2;
        --v52;
      }

      while (v52);
      v55 = 2 * a8;
      v56 = 8;
      v57 = vdupq_n_s16(8 - a4);
      v58 = vdupq_n_s16(a4);
      v59 = v91;
      v60 = v90;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v60[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v59[v61], v57), *&v59[v61 + 64], v58), 3uLL), *(v55 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v55 += v61;
        v59 += 64;
        v60 += 64;
        --v56;
      }

      while (v56);
    }

    goto LABEL_69;
  }

  if (a3)
  {
    v19 = 8;
    if (a4 == 4)
    {
      v63 = vdupq_n_s16(8 - a3);
      v64 = vdupq_n_s16(a3);
      v65 = v91;
      v66 = 9;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * a2;
        --v66;
      }

      while (v66);
      v69 = 2 * a8;
      v70 = v91;
      v71 = v90;
      v72 = 8;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!a4)
      {
        v20 = vdupq_n_s16(8 - a3);
        v21 = 2 * a8;
        v22 = vdupq_n_s16(a3);
        v23 = v91;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v23[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v22), 3uLL), *(v21 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v21 += v24;
          v23 += 64;
          v8 += 2 * a2;
          --v19;
        }

        while (v19);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - a3);
      v76 = vdupq_n_s16(a3);
      v77 = v91;
      v78 = 9;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = 2 * a8;
      v82 = 8;
      v83 = vdupq_n_s16(8 - a4);
      v84 = vdupq_n_s16(a4);
      v85 = v91;
      v86 = v90;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v86[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v85[v87], v83), *&v85[v87 + 64], v84), 3uLL), *(v81 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v81 += v87;
        v85 += 64;
        v86 += 64;
        --v82;
      }

      while (v82);
    }

LABEL_69:
    v50 = v90;
    return sub_277997BBC(v50 >> 1, 32, a5, a6, a7);
  }

  v9 = 2 * a8;
  if (a4 == 4)
  {
    v26 = 2 * a2;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 8;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    v42 = 8;
    v43 = vdupq_n_s16(8 - a4);
    v44 = vdupq_n_s16(a4);
    v45 = 2 * a2;
    v46 = v8 + v45;
    v47 = v91;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v47[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v43), *(v46 + v48), v44), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v47 += 64;
      v46 += v45;
      v8 += v45;
      --v42;
    }

    while (v42);
  }

  else
  {
    v10 = v91;
    v11 = 8;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * a2;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277997BBC(v50 >> 1, 32, a5, a6, a7);
}

uint64_t sub_277B51918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v100 = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 17;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42), *(v16 + v42 + 2));
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x38);
        v40 += 128;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 16;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 128]), *(v44 + v48));
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x38);
        v44 += v48;
        v45 += 128;
        v46 += 128;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 16;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x38);
          v22 += v25;
          v23 += 128;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 17;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61), *(v16 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v59 += 128;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 16;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 128], v65), 3uLL), *(v64 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v64 += v69;
        v66 += 128;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 17;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75), v71), *(v16 + v75 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x38);
        v73 += 128;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 16;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 128]), *(v77 + v81));
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x38);
        v77 += v81;
        v78 += 128;
        v79 += 128;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 16;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x38);
          v27 += v32;
          v30 += 128;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 17;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87), v83), *(v16 + v87 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x38);
        v85 += 128;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 16;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 128], v91), 3uLL), *(v90 + v95));
          v96 += 8;
          v95 += 16;
        }

        while (v96 < 0x38);
        v90 += v95;
        v92 += 128;
        v93 += 128;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_277997C60(v58 >> 1, 64, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 16;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v17 += v38;
      v36 += 128;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 16;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x38);
      v17 += v56;
      v54 += 128;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 16;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x38);
      v17 += v20;
      v18 += 128;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_277997C60(v58 >> 1, 64, v12, v13, v14);
}

uint64_t sub_277B51EBC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[5] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 40);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 32);
  return sub_277996B04(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B51FC0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v19[9] = *MEMORY[0x277D85DE8];
  v9 = vdup_n_s16(8 - a3);
  v10 = vdup_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 8) != 72);
  v12 = 0;
  v13 = vdup_n_s16(8 - a4);
  v14 = vdup_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 8 + 1];
    *&v18[v12] = vrhadd_u16(vrshr_n_u16(vmla_s16(vmul_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 8;
    v15 = v16;
  }

  while (v12 != 64);
  return sub_277996BAC(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B520C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 80);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 64);
  return sub_277996C54(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B521C8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 144);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 128);
  return sub_277996CE0(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B522D4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v8 = 0;
  v20 = *MEMORY[0x277D85DE8];
  v9 = vdupq_n_s16(8 - a3);
  v10 = vdupq_n_s16(a3);
  v11 = (2 * a1 + 2);
  do
  {
    v19[v8++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v11 - 2), v9), *v11, v10), 3uLL);
    v11 = (v11 + 2 * a2);
  }

  while ((v8 * 16) != 272);
  v12 = 0;
  v13 = vdupq_n_s16(8 - a4);
  v14 = vdupq_n_s16(a4);
  v15 = v19[0];
  do
  {
    v16 = v19[v12 / 0x10 + 1];
    *&v18[v12] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(v15, v13), v16, v14), 3uLL), *(2 * a8 + v12));
    v12 += 16;
    v15 = v16;
  }

  while (v12 != 256);
  return sub_277996D6C(v18 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B523E0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 288);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 8;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 8;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 288);
      v58 = (2 * a8);
      v59 = 8;
      v60 = vdupq_n_s16(8 - a4);
      v61 = vdupq_n_s16(a4);
      v62 = v98;
      v63 = v97;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v58++;
          *&v63[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v62[2 * v64], v60), *&v62[2 * v64 + 32], v61), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v62 += 32;
        v63 += 32;
        --v59;
      }

      while (v59);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 288);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 8;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = 8;
        v21 = vdupq_n_s16(8 - a3);
        v22 = (2 * a8);
        v23 = vdupq_n_s16(a3);
        v24 = v98;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v22++;
            *&v24[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v23), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v24 += 32;
          --v20;
        }

        while (v20);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 288);
      v86 = (2 * a8);
      v87 = 8;
      v88 = vdupq_n_s16(8 - a4);
      v89 = vdupq_n_s16(a4);
      v90 = v98;
      v91 = v97;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v86++;
          *&v91[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v90[2 * v92], v88), *&v90[2 * v92 + 32], v89), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v90 += 32;
        v91 += 32;
        --v87;
      }

      while (v87);
    }

LABEL_59:
    v54 = v97;
    return sub_277996DF8(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 8;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = 8;
    v47 = vdupq_n_s16(8 - a4);
    v48 = vdupq_n_s16(a4);
    v49 = v98;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v49[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v47), *(v8 + 2 * v50 + 2 * a2), v48), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v49 += 32;
      --v46;
    }

    while (v46);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 256);
  }

LABEL_38:
  v54 = v98;
  return sub_277996DF8(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B52950(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 544);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 16;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 16;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 544);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 16;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 544);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 16;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 16;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 544);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 16;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277996EA0(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 16;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 512);
  }

LABEL_38:
  v54 = v98;
  return sub_277996EA0(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B52ED0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v35 = 0;
      v36 = (v8 + 18);
      do
      {
        v37 = &v98[v35];
        *v37 = vrhaddq_u16(*(v36 - 18), v36[-1]);
        v37[1] = vrhaddq_u16(*(v36 - 2), *v36);
        v35 += 32;
        v36 = (v36 + 2 * a2);
      }

      while (v35 != 1056);
      v38 = (2 * a8);
      v39 = v98;
      v40 = v97;
      v41 = 32;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = *v38++;
          *&v40[2 * v42] = vrhaddq_u16(vrhaddq_u16(*&v39[2 * v42], *&v39[2 * v42 + 32]), v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v40 += 32;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!a4)
      {
        v13 = (2 * a8);
        v14 = v98;
        v15 = 32;
        do
        {
          v16 = 0;
          v17 = 1;
          do
          {
            v18 = v17;
            v19 = *v13++;
            *&v14[2 * v16] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v16), *(v8 + 2 * v16 + 2)), v19);
            v16 = 8;
            v17 = 0;
          }

          while ((v18 & 1) != 0);
          v8 += 2 * a2;
          v14 += 32;
          --v15;
        }

        while (v15);
        goto LABEL_38;
      }

      v55 = 0;
      v56 = (v8 + 18);
      do
      {
        v57 = &v98[v55];
        *v57 = vrhaddq_u16(*(v56 - 18), v56[-1]);
        v57[1] = vrhaddq_u16(*(v56 - 2), *v56);
        v55 += 32;
        v56 = (v56 + 2 * a2);
      }

      while (v55 != 1056);
      v58 = vdupq_n_s16(8 - a4);
      v59 = (2 * a8);
      v60 = vdupq_n_s16(a4);
      v61 = v98;
      v62 = v97;
      v63 = 32;
      do
      {
        v64 = 0;
        v65 = 1;
        do
        {
          v66 = v65;
          v67 = *v59++;
          *&v62[2 * v64] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v61[2 * v64], v58), *&v61[2 * v64 + 32], v60), 3uLL), v67);
          v64 = 8;
          v65 = 0;
        }

        while ((v66 & 1) != 0);
        v61 += 32;
        v62 += 32;
        --v63;
      }

      while (v63);
    }

    goto LABEL_59;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v68 = 0;
      v69 = vdupq_n_s16(8 - a3);
      v70 = vdupq_n_s16(a3);
      v71 = (v8 + 18);
      do
      {
        v72 = &v98[v68];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v69), v71[-1], v70), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v69), *v71, v70), 3uLL);
        v68 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v68 != 1056);
      v73 = (2 * a8);
      v74 = v98;
      v75 = v97;
      v76 = 32;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = *v73++;
          *&v75[2 * v77] = vrhaddq_u16(vrhaddq_u16(*&v74[2 * v77], *&v74[2 * v77 + 32]), v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v74 += 32;
        v75 += 32;
        --v76;
      }

      while (v76);
    }

    else
    {
      if (!a4)
      {
        v20 = (2 * a8);
        v21 = vdupq_n_s16(8 - a3);
        v22 = vdupq_n_s16(a3);
        v23 = v98;
        v24 = 32;
        do
        {
          v25 = 0;
          v26 = 1;
          do
          {
            v27 = v26;
            v28 = *v20++;
            *&v23[2 * v25] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v25), v21), *(v8 + 2 * v25 + 2), v22), 3uLL), v28);
            v25 = 8;
            v26 = 0;
          }

          while ((v27 & 1) != 0);
          v8 += 2 * a2;
          v23 += 32;
          --v24;
        }

        while (v24);
        goto LABEL_38;
      }

      v81 = 0;
      v82 = vdupq_n_s16(8 - a3);
      v83 = vdupq_n_s16(a3);
      v84 = (v8 + 18);
      do
      {
        v85 = &v98[v81];
        *v85 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 18), v82), v84[-1], v83), 3uLL);
        v85[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v84 - 2), v82), *v84, v83), 3uLL);
        v81 += 32;
        v84 = (v84 + 2 * a2);
      }

      while (v81 != 1056);
      v86 = vdupq_n_s16(8 - a4);
      v87 = (2 * a8);
      v88 = vdupq_n_s16(a4);
      v89 = v98;
      v90 = v97;
      v91 = 32;
      do
      {
        v92 = 0;
        v93 = 1;
        do
        {
          v94 = v93;
          v95 = *v87++;
          *&v90[2 * v92] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v89[2 * v92], v86), *&v89[2 * v92 + 32], v88), 3uLL), v95);
          v92 = 8;
          v93 = 0;
        }

        while ((v94 & 1) != 0);
        v89 += 32;
        v90 += 32;
        --v91;
      }

      while (v91);
    }

LABEL_59:
    v54 = v97;
    return sub_277996F48(v54 >> 1, 16, a5, a6, a7);
  }

  v9 = (2 * a8);
  if (a4 == 4)
  {
    v29 = v98;
    v30 = 32;
    do
    {
      v31 = 0;
      v32 = 1;
      do
      {
        v33 = v32;
        v34 = *v9++;
        *&v29[2 * v31] = vrhaddq_u16(vrhaddq_u16(*(v8 + 2 * v31), *(v8 + 2 * v31 + 2 * a2)), v34);
        v31 = 8;
        v32 = 0;
      }

      while ((v33 & 1) != 0);
      v8 += 2 * a2;
      v29 += 32;
      --v30;
    }

    while (v30);
  }

  else if (a4)
  {
    v46 = vdupq_n_s16(8 - a4);
    v47 = vdupq_n_s16(a4);
    v48 = v98;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = 1;
      do
      {
        v52 = v51;
        v53 = *v9++;
        *&v48[2 * v50] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v50), v46), *(v8 + 2 * v50 + 2 * a2), v47), 3uLL), v53);
        v50 = 8;
        v51 = 0;
      }

      while ((v52 & 1) != 0);
      v8 += 2 * a2;
      v48 += 32;
      --v49;
    }

    while (v49);
  }

  else
  {
    v10 = 0;
    v11 = (v8 + 16);
    do
    {
      v12 = &v98[v10 * 16];
      *v12 = vrhaddq_u16(v11[-1], v9[v10]);
      v12[1] = vrhaddq_u16(*v11, v9[v10 + 1]);
      v10 += 2;
      v11 = (v11 + 2 * a2);
    }

    while ((v10 * 16) != 1024);
  }

LABEL_38:
  v54 = v98;
  return sub_277996F48(v54 >> 1, 16, a5, a6, a7);
}

uint64_t sub_277B53450(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v92 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v32 = v91;
      v33 = 17;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*(v8 + v34), *(v8 + v34 + 2));
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v32 += 64;
        v8 += 2 * a2;
        --v33;
      }

      while (v33);
      v36 = 2 * a8;
      v37 = v91;
      v38 = v90;
      v39 = 16;
      do
      {
        v40 = 0;
        v41 = -8;
        do
        {
          *&v38[v40] = vrhaddq_u16(vrhaddq_u16(*&v37[v40], *&v37[v40 + 64]), *(v36 + v40));
          v41 += 8;
          v40 += 16;
        }

        while (v41 < 0x18);
        v36 += v40;
        v37 += 64;
        v38 += 64;
        --v39;
      }

      while (v39);
    }

    else
    {
      if (!a4)
      {
        v14 = 2 * a8;
        v15 = v91;
        v16 = 16;
        do
        {
          v17 = 0;
          v18 = -8;
          do
          {
            *&v15[v17] = vrhaddq_u16(vrhaddq_u16(*(v8 + v17), *(v8 + v17 + 2)), *(v14 + v17));
            v18 += 8;
            v17 += 16;
          }

          while (v18 < 0x18);
          v14 += v17;
          v15 += 64;
          v8 += 2 * a2;
          --v16;
        }

        while (v16);
        goto LABEL_42;
      }

      v51 = v91;
      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrhaddq_u16(*(v8 + v53), *(v8 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v51 += 64;
        v8 += 2 * a2;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - a4);
      v56 = 2 * a8;
      v57 = vdupq_n_s16(a4);
      v58 = v91;
      v59 = v90;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v55), *&v58[v61 + 64], v57), 3uLL), *(v56 + v61));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v56 += v61;
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_69;
  }

  if (a3)
  {
    if (a4 == 4)
    {
      v63 = vdupq_n_s16(8 - a3);
      v64 = vdupq_n_s16(a3);
      v65 = v91;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v67), v63), *(v8 + v67 + 2), v64), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v8 += 2 * a2;
        --v66;
      }

      while (v66);
      v69 = 2 * a8;
      v70 = v91;
      v71 = v90;
      v72 = 16;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          *&v71[v73] = vrhaddq_u16(vrhaddq_u16(*&v70[v73], *&v70[v73 + 64]), *(v69 + v73));
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v69 += v73;
        v70 += 64;
        v71 += 64;
        --v72;
      }

      while (v72);
    }

    else
    {
      if (!a4)
      {
        v19 = 2 * a8;
        v20 = vdupq_n_s16(8 - a3);
        v21 = vdupq_n_s16(a3);
        v22 = v91;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = -8;
          do
          {
            *&v22[v24] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v24), v20), *(v8 + v24 + 2), v21), 3uLL), *(v19 + v24));
            v25 += 8;
            v24 += 16;
          }

          while (v25 < 0x18);
          v19 += v24;
          v22 += 64;
          v8 += 2 * a2;
          --v23;
        }

        while (v23);
        goto LABEL_42;
      }

      v75 = vdupq_n_s16(8 - a3);
      v76 = vdupq_n_s16(a3);
      v77 = v91;
      v78 = 17;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v79), v75), *(v8 + v79 + 2), v76), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v77 += 64;
        v8 += 2 * a2;
        --v78;
      }

      while (v78);
      v81 = vdupq_n_s16(8 - a4);
      v82 = 2 * a8;
      v83 = vdupq_n_s16(a4);
      v84 = v91;
      v85 = v90;
      v86 = 16;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v84[v87], v81), *&v84[v87 + 64], v83), 3uLL), *(v82 + v87));
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v82 += v87;
        v84 += 64;
        v85 += 64;
        --v86;
      }

      while (v86);
    }

LABEL_69:
    v50 = v90;
    return sub_277996FF0(v50 >> 1, 32, a5, a6, a7);
  }

  v9 = 2 * a8;
  if (a4 == 4)
  {
    v26 = 2 * a2;
    v27 = v8 + v26;
    v28 = v91;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        *&v28[v30] = vrhaddq_u16(vrhaddq_u16(*(v8 + v30), *(v27 + v30)), *(v9 + v30));
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v9 += v30;
      v28 += 64;
      v27 += v26;
      v8 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    v42 = vdupq_n_s16(8 - a4);
    v43 = vdupq_n_s16(a4);
    v44 = 2 * a2;
    v45 = v8 + v44;
    v46 = v91;
    v47 = 16;
    do
    {
      v48 = 0;
      v49 = -8;
      do
      {
        *&v46[v48] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v48), v42), *(v45 + v48), v43), 3uLL), *(v9 + v48));
        v49 += 8;
        v48 += 16;
      }

      while (v49 < 0x18);
      v9 += v48;
      v46 += 64;
      v45 += v44;
      v8 += v44;
      --v47;
    }

    while (v47);
  }

  else
  {
    v10 = v91;
    v11 = 16;
    do
    {
      v12 = 0;
      v13 = -8;
      do
      {
        *&v10[v12] = vrhaddq_u16(*(v8 + v12), *(v9 + v12));
        v13 += 8;
        v12 += 16;
      }

      while (v13 < 0x18);
      v9 += v12;
      v10 += 64;
      v8 += 2 * a2;
      --v11;
    }

    while (v11);
  }

LABEL_42:
  v50 = v91;
  return sub_277996FF0(v50 >> 1, 32, a5, a6, a7);
}

uint64_t sub_277B539D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v100 = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 33;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42), *(v16 + v42 + 2));
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x18);
        v40 += 64;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 32;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 64]), *(v44 + v48));
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v44 += v48;
        v45 += 64;
        v46 += 64;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 32;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x18);
          v22 += v25;
          v23 += 64;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 33;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61), *(v16 + v61 + 2));
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v59 += 64;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 64], v65), 3uLL), *(v64 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v64 += v69;
        v66 += 64;
        v67 += 64;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75), v71), *(v16 + v75 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 32;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 64]), *(v77 + v81));
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x18);
        v77 += v81;
        v78 += 64;
        v79 += 64;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 32;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x18);
          v27 += v32;
          v30 += 64;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 33;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87), v83), *(v16 + v87 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v85 += 64;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 32;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 64], v91), 3uLL), *(v90 + v95));
          v96 += 8;
          v95 += 16;
        }

        while (v96 < 0x18);
        v90 += v95;
        v92 += 64;
        v93 += 64;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_277997094(v58 >> 1, 32, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v17 += v38;
      v36 += 64;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 32;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v17 += v56;
      v54 += 64;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 32;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x18);
      v17 += v20;
      v18 += 64;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_277997094(v58 >> 1, 32, v12, v13, v14);
}

uint64_t sub_277B53F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v99[520] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v40 = v99;
      v41 = 65;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*(v16 + v42 * 8), *(v16 + v42 * 8 + 2));
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x18);
        v40 += 8;
        v16 += 2 * v9;
        --v41;
      }

      while (v41);
      v44 = 2 * v15;
      v45 = v99;
      v46 = v98;
      v47 = 64;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          *&v46[v48 * 8] = vrhaddq_u16(vrhaddq_u16(*&v45[v48], *&v45[v48 + 8]), *(v44 + v48 * 8));
          v49 += 8;
          v48 += 2;
        }

        while (v49 < 0x18);
        v44 += v48 * 8;
        v45 += 8;
        v46 += 64;
        --v47;
      }

      while (v47);
    }

    else
    {
      if (!v11)
      {
        v22 = 2 * v15;
        v23 = v99;
        v24 = 64;
        do
        {
          v25 = 0;
          v26 = -8;
          do
          {
            *&v23[v25 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v25), *(v16 + v25 + 2)), *(v22 + v25));
            v26 += 8;
            v25 += 16;
          }

          while (v26 < 0x18);
          v22 += v25;
          v23 += 8;
          v16 += 2 * v9;
          --v24;
        }

        while (v24);
        goto LABEL_42;
      }

      v59 = v99;
      v60 = 65;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*(v16 + v61 * 8), *(v16 + v61 * 8 + 2));
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x18);
        v59 += 8;
        v16 += 2 * v9;
        --v60;
      }

      while (v60);
      v63 = vdupq_n_s16(8 - v11);
      v64 = 2 * v15;
      v65 = vdupq_n_s16(v11);
      v66 = v99;
      v67 = v98;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v66[v69], v63), *&v66[v69 + 8], v65), 3uLL), *(v64 + v69 * 8));
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x18);
        v64 += v69 * 8;
        v66 += 8;
        v67 += 64;
        --v68;
      }

      while (v68);
    }

    goto LABEL_69;
  }

  if (v10)
  {
    if (v11 == 4)
    {
      v71 = vdupq_n_s16(8 - v10);
      v72 = vdupq_n_s16(v10);
      v73 = v99;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v75 * 8), v71), *(v16 + v75 * 8 + 2), v72), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x18);
        v73 += 8;
        v16 += 2 * v9;
        --v74;
      }

      while (v74);
      v77 = 2 * v15;
      v78 = v99;
      v79 = v98;
      v80 = 64;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          *&v79[v81 * 8] = vrhaddq_u16(vrhaddq_u16(*&v78[v81], *&v78[v81 + 8]), *(v77 + v81 * 8));
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x18);
        v77 += v81 * 8;
        v78 += 8;
        v79 += 64;
        --v80;
      }

      while (v80);
    }

    else
    {
      if (!v11)
      {
        v27 = 2 * v15;
        v28 = vdupq_n_s16(8 - v10);
        v29 = vdupq_n_s16(v10);
        v30 = v99;
        v31 = 64;
        do
        {
          v32 = 0;
          v33 = -8;
          do
          {
            *&v30[v32 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v32), v28), *(v16 + v32 + 2), v29), 3uLL), *(v27 + v32));
            v33 += 8;
            v32 += 16;
          }

          while (v33 < 0x18);
          v27 += v32;
          v30 += 8;
          v16 += 2 * v9;
          --v31;
        }

        while (v31);
        goto LABEL_42;
      }

      v83 = vdupq_n_s16(8 - v10);
      v84 = vdupq_n_s16(v10);
      v85 = v99;
      v86 = 65;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v87 * 8), v83), *(v16 + v87 * 8 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 2;
        }

        while (v88 < 0x18);
        v85 += 8;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v99;
      v93 = v98;
      v94 = 64;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v92[v95], v89), *&v92[v95 + 8], v91), 3uLL), *(v90 + v95 * 8));
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x18);
        v90 += v95 * 8;
        v92 += 8;
        v93 += 64;
        --v94;
      }

      while (v94);
    }

LABEL_69:
    v58 = v98;
    return sub_277997138(v58 >> 1, 32, v12, v13, v14);
  }

  v17 = 2 * v15;
  if (v11 == 4)
  {
    v34 = 2 * v9;
    v35 = v16 + v34;
    v36 = v99;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        *&v36[v38 / 8] = vrhaddq_u16(vrhaddq_u16(*(v16 + v38), *(v35 + v38)), *(v17 + v38));
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v17 += v38;
      v36 += 8;
      v35 += v34;
      v16 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v11)
  {
    v50 = vdupq_n_s16(8 - v11);
    v51 = vdupq_n_s16(v11);
    v52 = 2 * v9;
    v53 = v16 + v52;
    v54 = v99;
    v55 = 64;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56 / 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v16 + v56), v50), *(v53 + v56), v51), 3uLL), *(v17 + v56));
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v17 += v56;
      v54 += 8;
      v53 += v52;
      v16 += v52;
      --v55;
    }

    while (v55);
  }

  else
  {
    v18 = v99;
    v19 = 64;
    do
    {
      v20 = 0;
      v21 = -8;
      do
      {
        *&v18[v20 / 8] = vrhaddq_u16(*(v16 + v20), *(v17 + v20));
        v21 += 8;
        v20 += 16;
      }

      while (v21 < 0x18);
      v17 += v20;
      v18 += 8;
      v16 += 2 * v9;
      --v19;
    }

    while (v19);
  }

LABEL_42:
  v58 = v99;
  return sub_277997138(v58 >> 1, 32, v12, v13, v14);
}