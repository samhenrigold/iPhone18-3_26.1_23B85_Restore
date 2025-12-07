uint64_t sub_277B80B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v126 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 17;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 + 2);
          v60 = vrhaddq_u16(*(v21 + v57), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x38);
        v55 += 128;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 16;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64], *&v61[v64 + 128]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v23 += v64;
        v61 += 128;
        v62 += 128;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 16;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          v72 = vsubq_s16(*&v68[v70], *(v67 + v70));
          v38 = vpadalq_s16(v38, v72);
          v35 = vmlal_s16(v35, *v72.i8, *v72.i8);
          v37 = vmlal_high_s16(v37, v72, v72);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x38);
        v68 += 128;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 17;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 + 2);
          v84 = vrhaddq_u16(*(v21 + v81), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 16;
        }

        while (v82 < 0x38);
        v79 += 128;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 16;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 16, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v87 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v88 = 0;
        v89 = -8;
        do
        {
          v90 = vsubq_s16(*&v85[v88], *(v87 + v88));
          v38 = vpadalq_s16(v38, v90);
          v35 = vmlal_s16(v35, *v90.i8, *v90.i8);
          v37 = vmlal_high_s16(v37, v90, v90);
          v89 += 8;
          v88 += 16;
        }

        while (v89 < 0x38);
        v85 += 128;
        v87 += 2 * v19;
        --v86;
      }

      while (v86);
    }

    else
    {
      v15.i16[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v28 = v125;
      v29 = 16;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
          v31 += 8;
          v30 += 16;
        }

        while (v31 < 0x38);
        v23 += v30;
        v28 += 128;
        v21 += 2 * v10;
        --v29;
      }

      while (v29);
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 16;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 16;
        }

        while (v40 < 0x38);
        v34 += 128;
        v33 += 2 * v14;
        --v36;
      }

      while (v36);
    }
  }

  else if (v11)
  {
    if (v12 == 4)
    {
      v91 = vdupq_n_s16(8 - v11);
      v92 = vdupq_n_s16(v11);
      v93 = v125;
      v94 = 17;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95), v91), *(v21 + v95 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 16;
        }

        while (v96 < 0x38);
        v93 += 128;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 16;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100], *&v97[v100 + 128]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x38);
        v23 += v100;
        v97 += 128;
        v98 += 128;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 16;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v106 = 0;
        v107 = -8;
        do
        {
          v108 = vsubq_s16(*&v104[v106], *(v103 + v106));
          v38 = vpadalq_s16(v38, v108);
          v35 = vmlal_s16(v35, *v108.i8, *v108.i8);
          v37 = vmlal_high_s16(v37, v108, v108);
          v107 += 8;
          v106 += 16;
        }

        while (v107 < 0x38);
        v104 += 128;
        v103 += 2 * v14;
        --v105;
      }

      while (v105);
    }

    else if (v12)
    {
      v109 = vdupq_n_s16(8 - v11);
      v110 = vdupq_n_s16(v11);
      v111 = v125;
      v112 = 17;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113), v109), *(v21 + v113 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 16;
        }

        while (v114 < 0x38);
        v111 += 128;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 16;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 16, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v117 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v118 = 0;
        v119 = -8;
        do
        {
          v120 = vsubq_s16(*&v115[v118], *(v117 + v118));
          v38 = vpadalq_s16(v38, v120);
          v35 = vmlal_s16(v35, *v120.i8, *v120.i8);
          v37 = vmlal_high_s16(v37, v120, v120);
          v119 += 8;
          v118 += 16;
        }

        while (v119 < 0x38);
        v115 += 128;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 16;
      sub_277B79A68(v21, v125, v10, 1, 0x40u, 16, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v44 = 2 * v20;
      v35 = 0uLL;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x38);
        v42 += 128;
        v44 += 2 * v19;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v48 = 2 * v10;
      v49 = v21 + v48;
      v50 = v125;
      v51 = 16;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x38);
        v23 += v52;
        v50 += 128;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x40u, 16, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 16;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
          v27 += 8;
          v26 += 16;
        }

        while (v27 < 0x38);
        v23 += v26;
        v24 += 128;
        v21 += 2 * v10;
        --v25;
      }

      while (v25);
    }

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 16;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 16;
      }

      while (v77 < 0x38);
      v74 += 128;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 10);
}

uint64_t sub_277B812E0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[5] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 40);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 32);
  return sub_2779960F8(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B813F8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[9] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 72);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 64);
  return sub_2779961A0(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B81510(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 80);
  sub_277B79A68(v18, v17, 8, 8, 8u, 4, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996248(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B8160C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 144);
  sub_277B79A68(v18, v17, 8, 8, 8u, 8, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_2779962D4(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B81710(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 272);
  sub_277B79A68(v18, v17, 8, 8, 8u, 16, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996360(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B81814(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 8;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 288);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 288);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 8;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_2779963EC(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 288);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 8, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 288);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 8;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 8;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 8;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_2779963EC(v69, 16, a5, a6, a7);
}

uint64_t sub_277B81CEC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 544);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 544);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 16;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277996494(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 544);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 16, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 544);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 16;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 16;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 16;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277996494(v69, 16, a5, a6, a7);
}

uint64_t sub_277B821C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 32;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 1056);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 1056);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 32;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 32, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_27799653C(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 1056);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 32, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 1056);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 32;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 32;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 32, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 32;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_27799653C(v69, 16, a5, a6, a7);
}

uint64_t sub_277B8269C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v20 = v71;
        v21 = 16;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
            *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v15 += v22;
          v20 += 64;
          v14 += 2 * a2;
          --v21;
        }

        while (v21);
        goto LABEL_35;
      }

      v46 = v71;
      v47 = 17;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          v50 = *(v14 + v48 + 2);
          v51 = vrhaddq_u16(*(v14 + v48), v50);
          *&v46[v48] = v51;
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v46 += 64;
        v14 += 2 * a2;
        --v47;
      }

      while (v47);
      goto LABEL_55;
    }

    v33 = v71;
    v34 = 17;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v37 = *(v14 + v35 + 2);
        v38 = vrhaddq_u16(*(v14 + v35), v37);
        *&v33[v35] = v38;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v33 += 64;
      v14 += 2 * a2;
      --v34;
    }

    while (v34);
    v38.i16[0] = *(a11 + 4);
    v37.i16[0] = *(a11 + 8);
    v39 = v71;
    v40 = v70;
    v41 = 16;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        v44 = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
        *&v40[v42] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v42), *v37.i8, 0), *v44.i8, *v38.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v42), *v37.i8, 0), v44, *v38.i8, 0), 4uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v15 += v42;
      v39 += 64;
      v40 += 64;
      --v41;
    }

    while (v41);
LABEL_49:
    v45 = v70;
    goto LABEL_50;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v25 = v71;
        sub_277B79A68(v14, v71, a2, 1, 0x20u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_56:
        v64 = v25 >> 1;
        return sub_2779965E4(v64, 32, a5, a6, a7);
      }

      v51 = vdupq_n_s16(8 - a3);
      v50 = vdupq_n_s16(a3);
      v65 = v71;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v67), v51), *(v14 + v67 + 2), v50), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v14 += 2 * a2;
        --v66;
      }

      while (v66);
LABEL_55:
      v25 = v70;
      sub_277B79A68(v71, v70, 32, 32, 0x20u, 16, a4, v15, *v51.i8, *v50.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_56;
    }

    v52 = vdupq_n_s16(8 - a3);
    v53 = vdupq_n_s16(a3);
    v54 = v71;
    v55 = 17;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v56), v52), *(v14 + v56 + 2), v53), 3uLL);
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v54 += 64;
      v14 += 2 * a2;
      --v55;
    }

    while (v55);
    v52.i16[0] = *(a11 + 4);
    v53.i16[0] = *(a11 + 8);
    v58 = v71;
    v59 = v70;
    v60 = 16;
    do
    {
      v61 = 0;
      v62 = -8;
      do
      {
        v63 = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
        *&v59[v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v61), *v53.i8, 0), *v63.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v61), *v53.i8, 0), v63, *v52.i8, 0), 4uLL);
        v62 += 8;
        v61 += 16;
      }

      while (v62 < 0x18);
      v15 += v61;
      v58 += 64;
      v59 += 64;
      --v60;
    }

    while (v60);
    goto LABEL_49;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v26 = 2 * a2;
    v27 = v14 + v26;
    v28 = v71;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        v32 = vrhaddq_u16(*(v14 + v30), *(v27 + v30));
        *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v30), a10, 0), *v32.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v30), a10, 0), v32, a9, 0), 4uLL);
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v15 += v30;
      v28 += 64;
      v27 += v26;
      v14 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v71, a2, a2, 0x20u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v71;
    v17 = 16;
    do
    {
      v18 = 0;
      v19 = -8;
      do
      {
        *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
        v19 += 8;
        v18 += 16;
      }

      while (v19 < 0x18);
      v15 += v18;
      v16 += 64;
      v14 += 2 * a2;
      --v17;
    }

    while (v17);
  }

LABEL_35:
  v45 = v71;
LABEL_50:
  v64 = v45 >> 1;
  return sub_2779965E4(v64, 32, a5, a6, a7);
}

uint64_t sub_277B82B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v80 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v23 += v30;
          v28 += 64;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 33;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 + 2);
          v59 = vrhaddq_u16(*(v21 + v56), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v54 += 64;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 33;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 + 2);
        v46 = vrhaddq_u16(*(v21 + v43), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v41 += 64;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50], *&v47[v50 + 64]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v23 += v50;
      v47 += 64;
      v48 += 64;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x20u, 32, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277996688(v72, 32, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75), v59), *(v21 + v75 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 32, 32, 0x20u, 32, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 33;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64), v60), *(v21 + v64 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 16;
      }

      while (v65 < 0x18);
      v62 += 64;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 32;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69], *&v66[v69 + 64]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x18);
      v23 += v69;
      v66 += 64;
      v67 += 64;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v23 += v38;
      v36 += 64;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x20u, 32, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 32;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += v26;
      v24 += 64;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277996688(v72, 32, v20, v18, v16);
}

uint64_t sub_277B83070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[520] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v23 += v30;
          v28 += 8;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x18);
        v54 += 8;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x18);
      v41 += 8;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 8]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v23 += v50;
      v47 += 8;
      v48 += 64;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x20u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_27799672C(v72, 32, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x18);
        v73 += 8;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 32, 32, 0x20u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x18);
      v62 += 8;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 8]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x18);
      v23 += v69;
      v66 += 8;
      v67 += 64;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v23 += v38;
      v36 += 8;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x20u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += v26;
      v24 += 8;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_27799672C(v72, 32, v20, v18, v16);
}

uint64_t sub_277B835A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[528] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 33;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 33;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 32, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_2779967D0(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 32, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 33;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 32;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 32, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 32;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_2779967D0(v72, 64, v20, v18, v16);
}

uint64_t sub_277B83AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[1040] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277996874(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277996874(v72, 64, v20, v18, v16);
}

uint64_t sub_277B84000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[2064] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 129;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 129;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 128, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277996918(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 128, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 129;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 128;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 128, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 128;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277996918(v72, 64, v20, v18, v16);
}

uint64_t sub_277B84530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[2080] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v23 += v30;
          v28 += 32;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x78);
        v54 += 32;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x78);
      v41 += 32;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 32]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x78);
      v23 += v50;
      v47 += 32;
      v48 += 256;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x80u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_2779969BC(v72, 128, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 128, 128, 0x80u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x78);
      v62 += 32;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 32]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x78);
      v23 += v69;
      v66 += 32;
      v67 += 256;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v23 += v38;
      v36 += 32;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x80u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x78);
      v23 += v26;
      v24 += 32;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_2779969BC(v72, 128, v20, v18, v16);
}

uint64_t sub_277B84A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[4128] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v23 += v30;
          v28 += 32;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 129;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x78);
        v54 += 32;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 129;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x78);
      v41 += 32;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 32]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x78);
      v23 += v50;
      v47 += 32;
      v48 += 256;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x80u, 128, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277996A60(v72, 128, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 128, 128, 0x80u, 128, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 129;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x78);
      v62 += 32;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 128;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 32]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x78);
      v23 += v69;
      v66 += 32;
      v67 += 256;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v23 += v38;
      v36 += 32;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x80u, 128, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 128;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x78);
      v23 += v26;
      v24 += 32;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277996A60(v72, 128, v20, v18, v16);
}

uint64_t sub_277B84F94(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[17] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 136);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 128);
  return sub_277997938(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B850B4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 528);
  sub_277B79A68(v18, v17, 8, 8, 8u, 32, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_2779979E0(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B851B8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 4;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 160);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 160);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 4;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 4, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277997A6C(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 160);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 4, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 160);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 4;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 4;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 4, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 4;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277997A6C(v69, 16, a5, a6, a7);
}

uint64_t sub_277B85690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v84 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = (2 * v22);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v30 = v83;
        v31 = 64;
        do
        {
          v32 = 0;
          v33 = 1;
          do
          {
            v34 = v33;
            v35 = *v23++;
            v36 = vrhaddq_u16(*(v21 + 2 * v32), *(v21 + 2 * v32 + 2));
            *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, v14, 0), *v36.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, v14, 0), v36, v13, 0), 4uLL);
            v32 = 8;
            v33 = 0;
          }

          while ((v34 & 1) != 0);
          v21 += 2 * v10;
          v30 += 32;
          --v31;
        }

        while (v31);
        goto LABEL_33;
      }

      v59 = 0;
      v60 = (v21 + 18);
      do
      {
        v61 = &v83[v59];
        *v61 = vrhaddq_u16(*(v60 - 18), v60[-1]);
        v62 = *v60;
        v63 = vrhaddq_u16(*(v60 - 2), *v60);
        v61[1] = v63;
        v59 += 32;
        v60 = (v60 + 2 * v10);
      }

      while (v59 != 2080);
      goto LABEL_47;
    }

    v45 = 0;
    v46 = (v21 + 18);
    do
    {
      v47 = &v83[v45];
      *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
      v48 = *v46;
      v49 = vrhaddq_u16(*(v46 - 2), *v46);
      v47[1] = v49;
      v45 += 32;
      v46 = (v46 + 2 * v10);
    }

    while (v45 != 2080);
    v49.i16[0] = *(a9 + 4);
    v48.i16[0] = *(a9 + 8);
    v50 = v83;
    v51 = v82;
    v52 = 64;
    do
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v55 = v54;
        v56 = *v23++;
        v57 = vrhaddq_u16(*&v50[2 * v53], *&v50[2 * v53 + 32]);
        *&v51[2 * v53] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v56.i8, *v48.i8, 0), *v57.i8, *v49.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v56, *v48.i8, 0), v57, *v49.i8, 0), 4uLL);
        v53 = 8;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      v50 += 32;
      v51 += 32;
      --v52;
    }

    while (v52);
LABEL_43:
    v58 = v82;
    goto LABEL_44;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v37 = v83;
        sub_277B79A68(v21, v83, v10, 1, 0x10u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_48:
        v77 = v37 >> 1;
        return sub_277997B14(v77, 16, v20, v18, v16);
      }

      v78 = 0;
      v63 = vdupq_n_s16(8 - v11);
      v62 = vdupq_n_s16(v11);
      v79 = (v21 + 18);
      do
      {
        v80 = &v83[v78];
        *v80 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 18), v63), v79[-1], v62), 3uLL);
        v80[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 2), v63), *v79, v62), 3uLL);
        v78 += 32;
        v79 = (v79 + 2 * v10);
      }

      while (v78 != 2080);
LABEL_47:
      v37 = v82;
      sub_277B79A68(v83, v82, 16, 16, 0x10u, 64, v12, v23, *v63.i8, *v62.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_48;
    }

    v64 = 0;
    v65 = vdupq_n_s16(8 - v11);
    v66 = vdupq_n_s16(v11);
    v67 = (v21 + 18);
    do
    {
      v68 = &v83[v64];
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 - 18), v65), v67[-1], v66), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 - 2), v65), *v67, v66), 3uLL);
      v64 += 32;
      v67 = (v67 + 2 * v10);
    }

    while (v64 != 2080);
    v65.i16[0] = *(a9 + 4);
    v66.i16[0] = *(a9 + 8);
    v69 = v83;
    v70 = v82;
    v71 = 64;
    do
    {
      v72 = 0;
      v73 = 1;
      do
      {
        v74 = v73;
        v75 = *v23++;
        v76 = vrhaddq_u16(*&v69[2 * v72], *&v69[2 * v72 + 32]);
        *&v70[2 * v72] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v75.i8, *v66.i8, 0), *v76.i8, *v65.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v75, *v66.i8, 0), v76, *v65.i8, 0), 4uLL);
        v72 = 8;
        v73 = 0;
      }

      while ((v74 & 1) != 0);
      v69 += 32;
      v70 += 32;
      --v71;
    }

    while (v71);
    goto LABEL_43;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v38 = v83;
    v39 = 64;
    do
    {
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = v41;
        v43 = *v23++;
        v44 = vrhaddq_u16(*(v21 + 2 * v40), *(v21 + 2 * v40 + 2 * v10));
        *&v38[2 * v40] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v43.i8, v14, 0), *v44.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v43, v14, 0), v44, v13, 0), 4uLL);
        v40 = 8;
        v41 = 0;
      }

      while ((v42 & 1) != 0);
      v21 += 2 * v10;
      v38 += 32;
      --v39;
    }

    while (v39);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v83, v10, v10, 0x10u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v83;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = v27;
        v29 = *v23++;
        *&v24[2 * v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v29.i8, v14, 0), *(v21 + 2 * v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v29, v14, 0), *(v21 + 2 * v26), v13, 0), 4uLL);
        v26 = 8;
        v27 = 0;
      }

      while ((v28 & 1) != 0);
      v21 += 2 * v10;
      v24 += 32;
      --v25;
    }

    while (v25);
  }

LABEL_33:
  v58 = v83;
LABEL_44:
  v77 = v58 >> 1;
  return sub_277997B14(v77, 16, v20, v18, v16);
}

uint64_t sub_277B85B84(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v20 = v71;
        v21 = 8;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
            *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v15 += v22;
          v20 += 64;
          v14 += 2 * a2;
          --v21;
        }

        while (v21);
        goto LABEL_35;
      }

      v46 = v71;
      v47 = 9;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          v50 = *(v14 + v48 + 2);
          v51 = vrhaddq_u16(*(v14 + v48), v50);
          *&v46[v48] = v51;
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v46 += 64;
        v14 += 2 * a2;
        --v47;
      }

      while (v47);
      goto LABEL_55;
    }

    v33 = v71;
    v34 = 9;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v37 = *(v14 + v35 + 2);
        v38 = vrhaddq_u16(*(v14 + v35), v37);
        *&v33[v35] = v38;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v33 += 64;
      v14 += 2 * a2;
      --v34;
    }

    while (v34);
    v38.i16[0] = *(a11 + 4);
    v37.i16[0] = *(a11 + 8);
    v39 = v71;
    v40 = v70;
    v41 = 8;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        v44 = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
        *&v40[v42] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v42), *v37.i8, 0), *v44.i8, *v38.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v42), *v37.i8, 0), v44, *v38.i8, 0), 4uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v15 += v42;
      v39 += 64;
      v40 += 64;
      --v41;
    }

    while (v41);
LABEL_49:
    v45 = v70;
    goto LABEL_50;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v25 = v71;
        sub_277B79A68(v14, v71, a2, 1, 0x20u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_56:
        v64 = v25 >> 1;
        return sub_277997BBC(v64, 32, a5, a6, a7);
      }

      v51 = vdupq_n_s16(8 - a3);
      v50 = vdupq_n_s16(a3);
      v65 = v71;
      v66 = 9;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v67), v51), *(v14 + v67 + 2), v50), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v14 += 2 * a2;
        --v66;
      }

      while (v66);
LABEL_55:
      v25 = v70;
      sub_277B79A68(v71, v70, 32, 32, 0x20u, 8, a4, v15, *v51.i8, *v50.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_56;
    }

    v52 = vdupq_n_s16(8 - a3);
    v53 = vdupq_n_s16(a3);
    v54 = v71;
    v55 = 9;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v56), v52), *(v14 + v56 + 2), v53), 3uLL);
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v54 += 64;
      v14 += 2 * a2;
      --v55;
    }

    while (v55);
    v52.i16[0] = *(a11 + 4);
    v53.i16[0] = *(a11 + 8);
    v58 = v71;
    v59 = v70;
    v60 = 8;
    do
    {
      v61 = 0;
      v62 = -8;
      do
      {
        v63 = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
        *&v59[v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v61), *v53.i8, 0), *v63.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v61), *v53.i8, 0), v63, *v52.i8, 0), 4uLL);
        v62 += 8;
        v61 += 16;
      }

      while (v62 < 0x18);
      v15 += v61;
      v58 += 64;
      v59 += 64;
      --v60;
    }

    while (v60);
    goto LABEL_49;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v26 = 2 * a2;
    v27 = v14 + v26;
    v28 = v71;
    v29 = 8;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        v32 = vrhaddq_u16(*(v14 + v30), *(v27 + v30));
        *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v30), a10, 0), *v32.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v30), a10, 0), v32, a9, 0), 4uLL);
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v15 += v30;
      v28 += 64;
      v27 += v26;
      v14 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v71, a2, a2, 0x20u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v71;
    v17 = 8;
    do
    {
      v18 = 0;
      v19 = -8;
      do
      {
        *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
        v19 += 8;
        v18 += 16;
      }

      while (v19 < 0x18);
      v15 += v18;
      v16 += 64;
      v14 += 2 * a2;
      --v17;
    }

    while (v17);
  }

LABEL_35:
  v45 = v71;
LABEL_50:
  v64 = v45 >> 1;
  return sub_277997BBC(v64, 32, a5, a6, a7);
}

uint64_t sub_277B86060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v80 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 16;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 128;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 17;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 + 2);
          v59 = vrhaddq_u16(*(v21 + v56), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x38);
        v54 += 128;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 17;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 + 2);
        v46 = vrhaddq_u16(*(v21 + v43), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v41 += 128;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50], *&v47[v50 + 128]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 128;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 16, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997C60(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 17;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75), v59), *(v21 + v75 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x38);
        v73 += 128;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 16, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 17;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64), v60), *(v21 + v64 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 16;
      }

      while (v65 < 0x38);
      v62 += 128;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 16;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69], *&v66[v69 + 128]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 128;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 16;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 128;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 16, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 16;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 128;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997C60(v72, 64, v20, v18, v16);
}

uint64_t sub_277B86558(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[5] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 40);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 32);
  return sub_277996B04(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B86670(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[9] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 72);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 64);
  return sub_277996BAC(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B86788(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 80);
  sub_277B79A68(v18, v17, 8, 8, 8u, 4, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996C54(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B86884(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 144);
  sub_277B79A68(v18, v17, 8, 8, 8u, 8, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996CE0(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B86988(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 272);
  sub_277B79A68(v18, v17, 8, 8, 8u, 16, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277996D6C(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B86A8C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 8;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 288);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 288);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 8;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277996DF8(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 288);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 8, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 288);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 8;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 8;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 8;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277996DF8(v69, 16, a5, a6, a7);
}

uint64_t sub_277B86F64(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 16;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 544);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 544);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 16;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277996EA0(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 544);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 16, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 544);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 16;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 16;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 16;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277996EA0(v69, 16, a5, a6, a7);
}

uint64_t sub_277B8743C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 32;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 1056);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 1056);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 32;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 32, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277996F48(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 1056);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 32, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 1056);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 32;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 32;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 32, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 32;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277996F48(v69, 16, a5, a6, a7);
}

uint64_t sub_277B87914(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v20 = v71;
        v21 = 16;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
            *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v15 += v22;
          v20 += 64;
          v14 += 2 * a2;
          --v21;
        }

        while (v21);
        goto LABEL_35;
      }

      v46 = v71;
      v47 = 17;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          v50 = *(v14 + v48 + 2);
          v51 = vrhaddq_u16(*(v14 + v48), v50);
          *&v46[v48] = v51;
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v46 += 64;
        v14 += 2 * a2;
        --v47;
      }

      while (v47);
      goto LABEL_55;
    }

    v33 = v71;
    v34 = 17;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v37 = *(v14 + v35 + 2);
        v38 = vrhaddq_u16(*(v14 + v35), v37);
        *&v33[v35] = v38;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v33 += 64;
      v14 += 2 * a2;
      --v34;
    }

    while (v34);
    v38.i16[0] = *(a11 + 4);
    v37.i16[0] = *(a11 + 8);
    v39 = v71;
    v40 = v70;
    v41 = 16;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        v44 = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
        *&v40[v42] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v42), *v37.i8, 0), *v44.i8, *v38.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v42), *v37.i8, 0), v44, *v38.i8, 0), 4uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v15 += v42;
      v39 += 64;
      v40 += 64;
      --v41;
    }

    while (v41);
LABEL_49:
    v45 = v70;
    goto LABEL_50;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v25 = v71;
        sub_277B79A68(v14, v71, a2, 1, 0x20u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_56:
        v64 = v25 >> 1;
        return sub_277996FF0(v64, 32, a5, a6, a7);
      }

      v51 = vdupq_n_s16(8 - a3);
      v50 = vdupq_n_s16(a3);
      v65 = v71;
      v66 = 17;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v67), v51), *(v14 + v67 + 2), v50), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v14 += 2 * a2;
        --v66;
      }

      while (v66);
LABEL_55:
      v25 = v70;
      sub_277B79A68(v71, v70, 32, 32, 0x20u, 16, a4, v15, *v51.i8, *v50.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_56;
    }

    v52 = vdupq_n_s16(8 - a3);
    v53 = vdupq_n_s16(a3);
    v54 = v71;
    v55 = 17;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v56), v52), *(v14 + v56 + 2), v53), 3uLL);
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v54 += 64;
      v14 += 2 * a2;
      --v55;
    }

    while (v55);
    v52.i16[0] = *(a11 + 4);
    v53.i16[0] = *(a11 + 8);
    v58 = v71;
    v59 = v70;
    v60 = 16;
    do
    {
      v61 = 0;
      v62 = -8;
      do
      {
        v63 = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
        *&v59[v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v61), *v53.i8, 0), *v63.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v61), *v53.i8, 0), v63, *v52.i8, 0), 4uLL);
        v62 += 8;
        v61 += 16;
      }

      while (v62 < 0x18);
      v15 += v61;
      v58 += 64;
      v59 += 64;
      --v60;
    }

    while (v60);
    goto LABEL_49;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v26 = 2 * a2;
    v27 = v14 + v26;
    v28 = v71;
    v29 = 16;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        v32 = vrhaddq_u16(*(v14 + v30), *(v27 + v30));
        *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v30), a10, 0), *v32.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v30), a10, 0), v32, a9, 0), 4uLL);
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v15 += v30;
      v28 += 64;
      v27 += v26;
      v14 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v71, a2, a2, 0x20u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v71;
    v17 = 16;
    do
    {
      v18 = 0;
      v19 = -8;
      do
      {
        *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
        v19 += 8;
        v18 += 16;
      }

      while (v19 < 0x18);
      v15 += v18;
      v16 += 64;
      v14 += 2 * a2;
      --v17;
    }

    while (v17);
  }

LABEL_35:
  v45 = v71;
LABEL_50:
  v64 = v45 >> 1;
  return sub_277996FF0(v64, 32, a5, a6, a7);
}

uint64_t sub_277B87DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v80 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v23 += v30;
          v28 += 64;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 33;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 + 2);
          v59 = vrhaddq_u16(*(v21 + v56), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v54 += 64;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 33;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 + 2);
        v46 = vrhaddq_u16(*(v21 + v43), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x18);
      v41 += 64;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50], *&v47[v50 + 64]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v23 += v50;
      v47 += 64;
      v48 += 64;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x20u, 32, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997094(v72, 32, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75), v59), *(v21 + v75 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 32, 32, 0x20u, 32, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 33;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64), v60), *(v21 + v64 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 16;
      }

      while (v65 < 0x18);
      v62 += 64;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 32;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69], *&v66[v69 + 64]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x18);
      v23 += v69;
      v66 += 64;
      v67 += 64;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v23 += v38;
      v36 += 64;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x20u, 32, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 32;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += v26;
      v24 += 64;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997094(v72, 32, v20, v18, v16);
}

uint64_t sub_277B882E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[520] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x18);
          v23 += v30;
          v28 += 8;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x18);
        v54 += 8;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x18);
      v41 += 8;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 8]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v23 += v50;
      v47 += 8;
      v48 += 64;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x20u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997138(v72, 32, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x18);
        v73 += 8;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 32, 32, 0x20u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x18);
      v62 += 8;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 8]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x18);
      v23 += v69;
      v66 += 8;
      v67 += 64;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x18);
      v23 += v38;
      v36 += 8;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x20u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += v26;
      v24 += 8;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997138(v72, 32, v20, v18, v16);
}

uint64_t sub_277B88818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[528] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 32;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 33;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 33;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 32, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997208(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 33;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 32, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 33;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 32;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 32;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 32, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 32;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997208(v72, 64, v20, v18, v16);
}

uint64_t sub_277B88D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[1040] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_2779972D8(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_2779972D8(v72, 64, v20, v18, v16);
}

uint64_t sub_277B89278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[2064] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 16;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 129;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x38);
        v54 += 16;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 129;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x38);
      v41 += 16;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 16]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 16;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 128, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_2779973A8(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x38);
        v73 += 16;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 128, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 129;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x38);
      v62 += 16;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 128;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 16]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 16;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 16;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 128, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 128;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 16;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_2779973A8(v72, 64, v20, v18, v16);
}

uint64_t sub_277B897A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[2080] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 64;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v23 += v30;
          v28 += 32;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 65;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x78);
        v54 += 32;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 65;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x78);
      v41 += 32;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 32]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x78);
      v23 += v50;
      v47 += 32;
      v48 += 256;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x80u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997478(v72, 128, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 65;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 128, 128, 0x80u, 64, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 65;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x78);
      v62 += 32;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 64;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 32]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x78);
      v23 += v69;
      v66 += 32;
      v67 += 256;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 64;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v23 += v38;
      v36 += 32;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x80u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x78);
      v23 += v26;
      v24 += 32;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997478(v72, 128, v20, v18, v16);
}

uint64_t sub_277B89CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v79[4128] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 128;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x78);
          v23 += v30;
          v28 += 32;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 129;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 * 8 + 2);
          v59 = vrhaddq_u16(*(v21 + v56 * 8), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 2;
        }

        while (v57 < 0x78);
        v54 += 32;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 129;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 * 8 + 2);
        v46 = vrhaddq_u16(*(v21 + v43 * 8), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 2;
      }

      while (v44 < 0x78);
      v41 += 32;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50 / 8], *&v47[v50 / 8 + 32]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x78);
      v23 += v50;
      v47 += 32;
      v48 += 256;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x80u, 128, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_277997548(v72, 128, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 129;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75 * 8), v59), *(v21 + v75 * 8 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 2;
        }

        while (v76 < 0x78);
        v73 += 32;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 128, 128, 0x80u, 128, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 129;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64 * 8), v60), *(v21 + v64 * 8 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 2;
      }

      while (v65 < 0x78);
      v62 += 32;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 128;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69 / 8], *&v66[v69 / 8 + 32]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x78);
      v23 += v69;
      v66 += 32;
      v67 += 256;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 128;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x78);
      v23 += v38;
      v36 += 32;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x80u, 128, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 128;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x78);
      v23 += v26;
      v24 += 32;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_277997548(v72, 128, v20, v18, v16);
}

uint64_t sub_277B8A20C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v9 = 0;
  v21[17] = *MEMORY[0x277D85DE8];
  v10 = vdup_n_s16(8 - a3);
  v11 = vdup_n_s16(a3);
  v12 = (2 * a1 + 2);
  do
  {
    v13 = vrshr_n_u16(vmla_s16(vmul_s16(*(v12 - 2), v10), *v12, v11), 3uLL);
    v21[v9++] = v13;
    v12 = (v12 + 2 * a2);
  }

  while ((v9 * 8) != 136);
  v14 = 0;
  v10.i16[0] = *(a9 + 4);
  v15 = vdup_n_s16(8 - a4);
  v13.i16[0] = *(a9 + 8);
  v16 = vdup_n_s16(a4);
  v17 = v21[0];
  do
  {
    v18 = v21[v14 / 8 + 1];
    *&v20[v14] = vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(2 * a8 + v14), v13, 0), vrshr_n_u16(vmla_s16(vmul_s16(v17, v15), v18, v16), 3uLL), v10, 0), 4uLL);
    v14 += 8;
    v17 = v18;
  }

  while (v14 != 128);
  return sub_277997D04(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B8A32C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v18[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 528);
  sub_277B79A68(v18, v17, 8, 8, 8u, 32, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  return sub_277997DAC(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B8A430(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v76 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v22 = v75;
        v23 = 4;
        do
        {
          v24 = 0;
          v25 = 1;
          do
          {
            v26 = v25;
            v27 = *v15++;
            v28 = vrhaddq_u16(*(v14 + 2 * v24), *(v14 + 2 * v24 + 2));
            *&v22[2 * v24] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v27.i8, a10, 0), *v28.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v27, a10, 0), v28, a9, 0), 4uLL);
            v24 = 8;
            v25 = 0;
          }

          while ((v26 & 1) != 0);
          v14 += 2 * a2;
          v22 += 32;
          --v23;
        }

        while (v23);
        goto LABEL_33;
      }

      v51 = 0;
      v52 = (v14 + 18);
      do
      {
        v53 = &v75[v51];
        *v53 = vrhaddq_u16(*(v52 - 18), v52[-1]);
        v54 = *v52;
        v55 = vrhaddq_u16(*(v52 - 2), *v52);
        v53[1] = v55;
        v51 += 32;
        v52 = (v52 + 2 * a2);
      }

      while (v51 != 160);
      goto LABEL_47;
    }

    v37 = 0;
    v38 = (v14 + 18);
    do
    {
      v39 = &v75[v37];
      *v39 = vrhaddq_u16(*(v38 - 18), v38[-1]);
      v40 = *v38;
      v41 = vrhaddq_u16(*(v38 - 2), *v38);
      v39[1] = v41;
      v37 += 32;
      v38 = (v38 + 2 * a2);
    }

    while (v37 != 160);
    v41.i16[0] = *(a11 + 4);
    v40.i16[0] = *(a11 + 8);
    v42 = v75;
    v43 = v74;
    v44 = 4;
    do
    {
      v45 = 0;
      v46 = 1;
      do
      {
        v47 = v46;
        v48 = *v15++;
        v49 = vrhaddq_u16(*&v42[2 * v45], *&v42[2 * v45 + 32]);
        *&v43[2 * v45] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v48.i8, *v40.i8, 0), *v49.i8, *v41.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v48, *v40.i8, 0), v49, *v41.i8, 0), 4uLL);
        v45 = 8;
        v46 = 0;
      }

      while ((v47 & 1) != 0);
      v42 += 32;
      v43 += 32;
      --v44;
    }

    while (v44);
LABEL_43:
    v50 = v74;
    goto LABEL_44;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v29 = v75;
        sub_277B79A68(v14, v75, a2, 1, 0x10u, 4, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_48:
        v69 = v29 >> 1;
        return sub_277997E38(v69, 16, a5, a6, a7);
      }

      v70 = 0;
      v55 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v71 = (v14 + 18);
      do
      {
        v72 = &v75[v70];
        *v72 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 18), v55), v71[-1], v54), 3uLL);
        v72[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v71 - 2), v55), *v71, v54), 3uLL);
        v70 += 32;
        v71 = (v71 + 2 * a2);
      }

      while (v70 != 160);
LABEL_47:
      v29 = v74;
      sub_277B79A68(v75, v74, 16, 16, 0x10u, 4, a4, v15, *v55.i8, *v54.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_48;
    }

    v56 = 0;
    v57 = vdupq_n_s16(8 - a3);
    v58 = vdupq_n_s16(a3);
    v59 = (v14 + 18);
    do
    {
      v60 = &v75[v56];
      *v60 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 18), v57), v59[-1], v58), 3uLL);
      v60[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v59 - 2), v57), *v59, v58), 3uLL);
      v56 += 32;
      v59 = (v59 + 2 * a2);
    }

    while (v56 != 160);
    v57.i16[0] = *(a11 + 4);
    v58.i16[0] = *(a11 + 8);
    v61 = v75;
    v62 = v74;
    v63 = 4;
    do
    {
      v64 = 0;
      v65 = 1;
      do
      {
        v66 = v65;
        v67 = *v15++;
        v68 = vrhaddq_u16(*&v61[2 * v64], *&v61[2 * v64 + 32]);
        *&v62[2 * v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v67.i8, *v58.i8, 0), *v68.i8, *v57.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v67, *v58.i8, 0), v68, *v57.i8, 0), 4uLL);
        v64 = 8;
        v65 = 0;
      }

      while ((v66 & 1) != 0);
      v61 += 32;
      v62 += 32;
      --v63;
    }

    while (v63);
    goto LABEL_43;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v30 = v75;
    v31 = 4;
    do
    {
      v32 = 0;
      v33 = 1;
      do
      {
        v34 = v33;
        v35 = *v15++;
        v36 = vrhaddq_u16(*(v14 + 2 * v32), *(v14 + 2 * v32 + 2 * a2));
        *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, a10, 0), *v36.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, a10, 0), v36, a9, 0), 4uLL);
        v32 = 8;
        v33 = 0;
      }

      while ((v34 & 1) != 0);
      v14 += 2 * a2;
      v30 += 32;
      --v31;
    }

    while (v31);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v75, a2, a2, 0x10u, 4, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v75;
    v17 = 4;
    do
    {
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = v19;
        v21 = *v15++;
        *&v16[2 * v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v21.i8, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v21, a10, 0), *(v14 + 2 * v18), a9, 0), 4uLL);
        v18 = 8;
        v19 = 0;
      }

      while ((v20 & 1) != 0);
      v14 += 2 * a2;
      v16 += 32;
      --v17;
    }

    while (v17);
  }

LABEL_33:
  v50 = v75;
LABEL_44:
  v69 = v50 >> 1;
  return sub_277997E38(v69, 16, a5, a6, a7);
}

uint64_t sub_277B8A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v84 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = (2 * v22);
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v30 = v83;
        v31 = 64;
        do
        {
          v32 = 0;
          v33 = 1;
          do
          {
            v34 = v33;
            v35 = *v23++;
            v36 = vrhaddq_u16(*(v21 + 2 * v32), *(v21 + 2 * v32 + 2));
            *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, v14, 0), *v36.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, v14, 0), v36, v13, 0), 4uLL);
            v32 = 8;
            v33 = 0;
          }

          while ((v34 & 1) != 0);
          v21 += 2 * v10;
          v30 += 32;
          --v31;
        }

        while (v31);
        goto LABEL_33;
      }

      v59 = 0;
      v60 = (v21 + 18);
      do
      {
        v61 = &v83[v59];
        *v61 = vrhaddq_u16(*(v60 - 18), v60[-1]);
        v62 = *v60;
        v63 = vrhaddq_u16(*(v60 - 2), *v60);
        v61[1] = v63;
        v59 += 32;
        v60 = (v60 + 2 * v10);
      }

      while (v59 != 2080);
      goto LABEL_47;
    }

    v45 = 0;
    v46 = (v21 + 18);
    do
    {
      v47 = &v83[v45];
      *v47 = vrhaddq_u16(*(v46 - 18), v46[-1]);
      v48 = *v46;
      v49 = vrhaddq_u16(*(v46 - 2), *v46);
      v47[1] = v49;
      v45 += 32;
      v46 = (v46 + 2 * v10);
    }

    while (v45 != 2080);
    v49.i16[0] = *(a9 + 4);
    v48.i16[0] = *(a9 + 8);
    v50 = v83;
    v51 = v82;
    v52 = 64;
    do
    {
      v53 = 0;
      v54 = 1;
      do
      {
        v55 = v54;
        v56 = *v23++;
        v57 = vrhaddq_u16(*&v50[2 * v53], *&v50[2 * v53 + 32]);
        *&v51[2 * v53] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v56.i8, *v48.i8, 0), *v57.i8, *v49.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v56, *v48.i8, 0), v57, *v49.i8, 0), 4uLL);
        v53 = 8;
        v54 = 0;
      }

      while ((v55 & 1) != 0);
      v50 += 32;
      v51 += 32;
      --v52;
    }

    while (v52);
LABEL_43:
    v58 = v82;
    goto LABEL_44;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v37 = v83;
        sub_277B79A68(v21, v83, v10, 1, 0x10u, 64, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_48:
        v77 = v37 >> 1;
        return sub_277997EE0(v77, 16, v20, v18, v16);
      }

      v78 = 0;
      v63 = vdupq_n_s16(8 - v11);
      v62 = vdupq_n_s16(v11);
      v79 = (v21 + 18);
      do
      {
        v80 = &v83[v78];
        *v80 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 18), v63), v79[-1], v62), 3uLL);
        v80[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v79 - 2), v63), *v79, v62), 3uLL);
        v78 += 32;
        v79 = (v79 + 2 * v10);
      }

      while (v78 != 2080);
LABEL_47:
      v37 = v82;
      sub_277B79A68(v83, v82, 16, 16, 0x10u, 64, v12, v23, *v63.i8, *v62.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_48;
    }

    v64 = 0;
    v65 = vdupq_n_s16(8 - v11);
    v66 = vdupq_n_s16(v11);
    v67 = (v21 + 18);
    do
    {
      v68 = &v83[v64];
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 - 18), v65), v67[-1], v66), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v67 - 2), v65), *v67, v66), 3uLL);
      v64 += 32;
      v67 = (v67 + 2 * v10);
    }

    while (v64 != 2080);
    v65.i16[0] = *(a9 + 4);
    v66.i16[0] = *(a9 + 8);
    v69 = v83;
    v70 = v82;
    v71 = 64;
    do
    {
      v72 = 0;
      v73 = 1;
      do
      {
        v74 = v73;
        v75 = *v23++;
        v76 = vrhaddq_u16(*&v69[2 * v72], *&v69[2 * v72 + 32]);
        *&v70[2 * v72] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v75.i8, *v66.i8, 0), *v76.i8, *v65.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v75, *v66.i8, 0), v76, *v65.i8, 0), 4uLL);
        v72 = 8;
        v73 = 0;
      }

      while ((v74 & 1) != 0);
      v69 += 32;
      v70 += 32;
      --v71;
    }

    while (v71);
    goto LABEL_43;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v38 = v83;
    v39 = 64;
    do
    {
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = v41;
        v43 = *v23++;
        v44 = vrhaddq_u16(*(v21 + 2 * v40), *(v21 + 2 * v40 + 2 * v10));
        *&v38[2 * v40] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v43.i8, v14, 0), *v44.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v43, v14, 0), v44, v13, 0), 4uLL);
        v40 = 8;
        v41 = 0;
      }

      while ((v42 & 1) != 0);
      v21 += 2 * v10;
      v38 += 32;
      --v39;
    }

    while (v39);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v83, v10, v10, 0x10u, 64, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v83;
    v25 = 64;
    do
    {
      v26 = 0;
      v27 = 1;
      do
      {
        v28 = v27;
        v29 = *v23++;
        *&v24[2 * v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v29.i8, v14, 0), *(v21 + 2 * v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v29, v14, 0), *(v21 + 2 * v26), v13, 0), 4uLL);
        v26 = 8;
        v27 = 0;
      }

      while ((v28 & 1) != 0);
      v21 += 2 * v10;
      v24 += 32;
      --v25;
    }

    while (v25);
  }

LABEL_33:
  v58 = v83;
LABEL_44:
  v77 = v58 >> 1;
  return sub_277997EE0(v77, 16, v20, v18, v16);
}

uint64_t sub_277B8ADFC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v72 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        a9.i16[0] = *(a11 + 4);
        a10.i16[0] = *(a11 + 8);
        v20 = v71;
        v21 = 8;
        do
        {
          v22 = 0;
          v23 = -8;
          do
          {
            v24 = vrhaddq_u16(*(v14 + v22), *(v14 + v22 + 2));
            *&v20[v22] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v22), a10, 0), *v24.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v22), a10, 0), v24, a9, 0), 4uLL);
            v23 += 8;
            v22 += 16;
          }

          while (v23 < 0x18);
          v15 += v22;
          v20 += 64;
          v14 += 2 * a2;
          --v21;
        }

        while (v21);
        goto LABEL_35;
      }

      v46 = v71;
      v47 = 9;
      do
      {
        v48 = 0;
        v49 = -8;
        do
        {
          v50 = *(v14 + v48 + 2);
          v51 = vrhaddq_u16(*(v14 + v48), v50);
          *&v46[v48] = v51;
          v49 += 8;
          v48 += 16;
        }

        while (v49 < 0x18);
        v46 += 64;
        v14 += 2 * a2;
        --v47;
      }

      while (v47);
      goto LABEL_55;
    }

    v33 = v71;
    v34 = 9;
    do
    {
      v35 = 0;
      v36 = -8;
      do
      {
        v37 = *(v14 + v35 + 2);
        v38 = vrhaddq_u16(*(v14 + v35), v37);
        *&v33[v35] = v38;
        v36 += 8;
        v35 += 16;
      }

      while (v36 < 0x18);
      v33 += 64;
      v14 += 2 * a2;
      --v34;
    }

    while (v34);
    v38.i16[0] = *(a11 + 4);
    v37.i16[0] = *(a11 + 8);
    v39 = v71;
    v40 = v70;
    v41 = 8;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        v44 = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
        *&v40[v42] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v42), *v37.i8, 0), *v44.i8, *v38.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v42), *v37.i8, 0), v44, *v38.i8, 0), 4uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v15 += v42;
      v39 += 64;
      v40 += 64;
      --v41;
    }

    while (v41);
LABEL_49:
    v45 = v70;
    goto LABEL_50;
  }

  if (a3)
  {
    if (a4 != 4)
    {
      if (!a4)
      {
        v25 = v71;
        sub_277B79A68(v14, v71, a2, 1, 0x20u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
LABEL_56:
        v64 = v25 >> 1;
        return sub_277997F88(v64, 32, a5, a6, a7);
      }

      v51 = vdupq_n_s16(8 - a3);
      v50 = vdupq_n_s16(a3);
      v65 = v71;
      v66 = 9;
      do
      {
        v67 = 0;
        v68 = -8;
        do
        {
          *&v65[v67] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v67), v51), *(v14 + v67 + 2), v50), 3uLL);
          v68 += 8;
          v67 += 16;
        }

        while (v68 < 0x18);
        v65 += 64;
        v14 += 2 * a2;
        --v66;
      }

      while (v66);
LABEL_55:
      v25 = v70;
      sub_277B79A68(v71, v70, 32, 32, 0x20u, 8, a4, v15, *v51.i8, *v50.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      goto LABEL_56;
    }

    v52 = vdupq_n_s16(8 - a3);
    v53 = vdupq_n_s16(a3);
    v54 = v71;
    v55 = 9;
    do
    {
      v56 = 0;
      v57 = -8;
      do
      {
        *&v54[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v56), v52), *(v14 + v56 + 2), v53), 3uLL);
        v57 += 8;
        v56 += 16;
      }

      while (v57 < 0x18);
      v54 += 64;
      v14 += 2 * a2;
      --v55;
    }

    while (v55);
    v52.i16[0] = *(a11 + 4);
    v53.i16[0] = *(a11 + 8);
    v58 = v71;
    v59 = v70;
    v60 = 8;
    do
    {
      v61 = 0;
      v62 = -8;
      do
      {
        v63 = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
        *&v59[v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v61), *v53.i8, 0), *v63.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v61), *v53.i8, 0), v63, *v52.i8, 0), 4uLL);
        v62 += 8;
        v61 += 16;
      }

      while (v62 < 0x18);
      v15 += v61;
      v58 += 64;
      v59 += 64;
      --v60;
    }

    while (v60);
    goto LABEL_49;
  }

  if (a4 == 4)
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v26 = 2 * a2;
    v27 = v14 + v26;
    v28 = v71;
    v29 = 8;
    do
    {
      v30 = 0;
      v31 = -8;
      do
      {
        v32 = vrhaddq_u16(*(v14 + v30), *(v27 + v30));
        *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v30), a10, 0), *v32.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v30), a10, 0), v32, a9, 0), 4uLL);
        v31 += 8;
        v30 += 16;
      }

      while (v31 < 0x18);
      v15 += v30;
      v28 += 64;
      v27 += v26;
      v14 += v26;
      --v29;
    }

    while (v29);
  }

  else if (a4)
  {
    sub_277B79A68(v14, v71, a2, a2, 0x20u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
  }

  else
  {
    a9.i32[0] = *(a11 + 4);
    a10.i16[0] = *(a11 + 8);
    v16 = v71;
    v17 = 8;
    do
    {
      v18 = 0;
      v19 = -8;
      do
      {
        *&v16[v18] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v18), a10, 0), *(v14 + v18), a9, 0), 4uLL);
        v19 += 8;
        v18 += 16;
      }

      while (v19 < 0x18);
      v15 += v18;
      v16 += 64;
      v14 += 2 * a2;
      --v17;
    }

    while (v17);
  }

LABEL_35:
  v45 = v71;
LABEL_50:
  v64 = v45 >> 1;
  return sub_277997F88(v64, 32, a5, a6, a7);
}

uint64_t sub_277B8B2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v80 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v13.i16[0] = *(a9 + 4);
        v14.i16[0] = *(a9 + 8);
        v28 = v79;
        v29 = 16;
        do
        {
          v30 = 0;
          v31 = -8;
          do
          {
            v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
            *&v28[v30] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v14, 0), *v32.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v14, 0), v32, v13, 0), 4uLL);
            v31 += 8;
            v30 += 16;
          }

          while (v31 < 0x38);
          v23 += v30;
          v28 += 128;
          v21 += 2 * v10;
          --v29;
        }

        while (v29);
        goto LABEL_35;
      }

      v54 = v79;
      v55 = 17;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = *(v21 + v56 + 2);
          v59 = vrhaddq_u16(*(v21 + v56), v58);
          *&v54[v56] = v59;
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x38);
        v54 += 128;
        v21 += 2 * v10;
        --v55;
      }

      while (v55);
      goto LABEL_55;
    }

    v41 = v79;
    v42 = 17;
    do
    {
      v43 = 0;
      v44 = -8;
      do
      {
        v45 = *(v21 + v43 + 2);
        v46 = vrhaddq_u16(*(v21 + v43), v45);
        *&v41[v43] = v46;
        v44 += 8;
        v43 += 16;
      }

      while (v44 < 0x38);
      v41 += 128;
      v21 += 2 * v10;
      --v42;
    }

    while (v42);
    v46.i16[0] = *(a9 + 4);
    v45.i16[0] = *(a9 + 8);
    v47 = v79;
    v48 = v78;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        v52 = vrhaddq_u16(*&v47[v50], *&v47[v50 + 128]);
        *&v48[v50] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v50), *v45.i8, 0), *v52.i8, *v46.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v50), *v45.i8, 0), v52, *v46.i8, 0), 4uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v23 += v50;
      v47 += 128;
      v48 += 128;
      --v49;
    }

    while (v49);
LABEL_49:
    v53 = v78;
    goto LABEL_50;
  }

  if (v11)
  {
    if (v12 != 4)
    {
      if (!v12)
      {
        v33 = v79;
        sub_277B79A68(v21, v79, v10, 1, 0x40u, 16, v11, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
LABEL_56:
        v72 = v33 >> 1;
        return sub_27799802C(v72, 64, v20, v18, v16);
      }

      v59 = vdupq_n_s16(8 - v11);
      v58 = vdupq_n_s16(v11);
      v73 = v79;
      v74 = 17;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v73[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v75), v59), *(v21 + v75 + 2), v58), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x38);
        v73 += 128;
        v21 += 2 * v10;
        --v74;
      }

      while (v74);
LABEL_55:
      v33 = v78;
      sub_277B79A68(v79, v78, 64, 64, 0x40u, 16, v12, v23, *v59.i8, *v58.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      goto LABEL_56;
    }

    v60 = vdupq_n_s16(8 - v11);
    v61 = vdupq_n_s16(v11);
    v62 = v79;
    v63 = 17;
    do
    {
      v64 = 0;
      v65 = -8;
      do
      {
        *&v62[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v64), v60), *(v21 + v64 + 2), v61), 3uLL);
        v65 += 8;
        v64 += 16;
      }

      while (v65 < 0x38);
      v62 += 128;
      v21 += 2 * v10;
      --v63;
    }

    while (v63);
    v60.i16[0] = *(a9 + 4);
    v61.i16[0] = *(a9 + 8);
    v66 = v79;
    v67 = v78;
    v68 = 16;
    do
    {
      v69 = 0;
      v70 = -8;
      do
      {
        v71 = vrhaddq_u16(*&v66[v69], *&v66[v69 + 128]);
        *&v67[v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v69), *v61.i8, 0), *v71.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v69), *v61.i8, 0), v71, *v60.i8, 0), 4uLL);
        v70 += 8;
        v69 += 16;
      }

      while (v70 < 0x38);
      v23 += v69;
      v66 += 128;
      v67 += 128;
      --v68;
    }

    while (v68);
    goto LABEL_49;
  }

  if (v12 == 4)
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v34 = 2 * v10;
    v35 = v21 + v34;
    v36 = v79;
    v37 = 16;
    do
    {
      v38 = 0;
      v39 = -8;
      do
      {
        v40 = vrhaddq_u16(*(v21 + v38), *(v35 + v38));
        *&v36[v38] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v38), v14, 0), *v40.i8, v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v38), v14, 0), v40, v13, 0), 4uLL);
        v39 += 8;
        v38 += 16;
      }

      while (v39 < 0x38);
      v23 += v38;
      v36 += 128;
      v35 += v34;
      v21 += v34;
      --v37;
    }

    while (v37);
  }

  else if (v12)
  {
    sub_277B79A68(v21, v79, v10, v10, 0x40u, 16, v12, v23, v13, v14, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  }

  else
  {
    v13.i32[0] = *(a9 + 4);
    v14.i16[0] = *(a9 + 8);
    v24 = v79;
    v25 = 16;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v24[v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v14, 0), *(v21 + v26), v13, 0), 4uLL);
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x38);
      v23 += v26;
      v24 += 128;
      v21 += 2 * v10;
      --v25;
    }

    while (v25);
  }

LABEL_35:
  v53 = v79;
LABEL_50:
  v72 = v53 >> 1;
  return sub_27799802C(v72, 64, v20, v18, v16);
}

void sub_277B8B7D0(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = 0;
  v7 = a2;
  v8 = a4;
  v9 = 2 * a4;
  v10 = 3 * a4;
  v49 = 3 * a2;
  v50 = 2 * a2;
  v11 = 4 * a4;
  v12 = 4 * a2;
  v13 = 4 * a2;
  v14 = a1 + 3 * a2;
  v15 = a1 + 2 * a2;
  v16 = a4;
  v17 = 6 * a4;
  v18 = 4 * a4;
  v48 = v10;
  v19 = a1;
  v20 = a1 + a2;
  v21 = 4 * a2;
  v22 = v11;
  LODWORD(v23) = a6;
  do
  {
    v24 = v23;
    v25 = v22;
    v26 = v21;
    v27 = (a3 + 2 * 4 * v6 * v8);
    if (a5 < 7)
    {
      v33 = a1 + 4 * v6 * v7;
      v34 = a5;
    }

    else
    {
      v28 = 0;
      v29 = a5 + 8;
      do
      {
        v30 = vmovl_u8(*(v20 + v28));
        v31 = vmovl_u8(*(v15 + v28));
        v32 = vmovl_u8(*(v14 + v28));
        *v27 = vmovl_u8(*(v19 + v28));
        *(v27 + v16 * 2) = v30;
        *(v27 + v18) = v31;
        *(v27++ + v17) = v32;
        v28 += 8;
        v29 -= 8;
      }

      while (v29 > 0xF);
      v33 = v19 + v28;
      v34 = a5 - v28;
    }

    if (v34 >= 1)
    {
      for (i = 0; i != v34; ++i)
      {
        v27->i16[i] = *(v33 + i);
        v27->i16[i + v16] = *(v33 + v7 + i);
        v27->i16[v9 + i] = *(v33 + v50 + i);
        v27->i16[i + v48] = *(v33 + v49 + i);
      }
    }

    ++v6;
    v23 = (v24 - 4);
    v22 += v11;
    v21 += v12;
    v19 += v13;
    v14 += v13;
    v15 += v13;
    v20 += v13;
  }

  while (v24 > 7);
  v36 = 2 * v8;
  if (v24 >= 5)
  {
    v37 = 0;
    v38 = (a3 + 2 * v25);
    v39 = (a1 + v26);
    do
    {
      v40 = v39;
      v41 = v38;
      v42 = a5;
      if (a5 >= 1)
      {
        do
        {
          v43 = *v40++;
          *v41++ = v43;
          --v42;
        }

        while (v42);
      }

      ++v37;
      v38 = (v38 + v36);
      v39 += v7;
    }

    while (v37 < v23);
  }

  v44 = 2 * a5;
  v45 = (a3 + 2 * v8 * a6);
  v46 = 5;
  do
  {
    bzero(v45, v44 + 4);
    v45 += v36;
    --v46;
  }

  while (v46);
}

uint64_t sub_277B8BA38(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = (&unk_277C3C250 + 16 * a8);
  v16 = *v15;
  v17 = malloc_type_malloc(0x17BBFuLL, 0x5F484EBFuLL);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v18 - 1) = v17;
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v311 = v15;
  v312 = v16;
  v313 = a7;
  v314 = a6;
  v317 = a5;
  v19 = 0;
  v309 = a2 + 9;
  v310 = (a2 + 9) & 0xFFFFFFFC;
  v319 = v310 + 16;
  v335 = (2 * (v310 + 16));
  v334 = a1 - 6 * a4 - 6;
  v20 = 4 * v335;
  v315 = a4;
  v347 = (8 * (v310 + 16));
  v21 = 2 * v347;
  v22 = 16 * v335;
  v23 = 4 * v347;
  v24 = 4 * a4;
  v25 = 16 * a4;
  v332 = v24 + v25 - 6 * a4 + a1 - 6;
  v26 = 2 * a4;
  v330 = v25 - 6 * a4 + a1 - 6;
  v331 = v25 + v26 - 6 * a4 + a1 - 6;
  v27 = 6 * a4;
  v328 = v24 + 8 * a4 - 6 * a4 + a1 - 6;
  v329 = v27 + 8 * a4 - 6 * a4 + a1 - 6;
  v327 = v26 + 8 * a4 - 6 * a4 + a1 - 6;
  v326 = 8 * a4 - 6 * a4 + a1 - 6;
  v28 = 12 * v335;
  v29 = 8 * v335;
  v324 = v24 - 6 * a4 + a1 - 6;
  v325 = v27 - 6 * a4 + a1 - 6;
  v316 = a1;
  v323 = v26 - 6 * a4 + a1 - 6;
  v318 = v18 + 64800;
  v321 = a2;
  v30 = a2 + 6;
  v346 = a3 + 6;
  v320 = a3;
  v322 = a3 + 14;
  do
  {
    v336 = v30;
    v31 = &v18[6 * v335 + 64800];
    v32 = v323;
    v33 = &v18[8 * v335 + 64800];
    v34 = v334;
    v36 = v324;
    v35 = v325;
    v38 = v326;
    v37 = v327;
    v40 = v328;
    v39 = v329;
    v42 = v330;
    v41 = v331;
    v43 = v332;
    v342 = v22;
    v344 = v20;
    v44 = v20;
    v338 = v29;
    v340 = v28;
    v45 = v28;
    v46 = v22;
    v47 = &v18[4 * v335 + 64800];
    v48 = &v18[2 * v335 + 64800];
    v49 = v322;
    do
    {
      v50 = &v18[v44];
      v51 = *(v34 + v19);
      v52 = *(v32 + v19);
      v53 = *(v36 + v19);
      v54 = *(v35 + v19);
      v55 = *(v38 + v19);
      v56 = *(v37 + v19);
      v57 = *(v40 + v19);
      v58 = *(v39 + v19);
      v59 = *(v42 + v19);
      v60 = *(v41 + v19);
      v61 = *(v43 + v19);
      v62 = vaddq_s16(v57, v56);
      v63 = vaddq_s16(v59, v58);
      v64 = vaddq_s16(vaddq_s16(v54, v53), v55);
      *(v48 + v19) = vaddq_s16(vaddq_s16(v52, v51), v64);
      *(v47 + v19) = vaddq_s16(v62, v64);
      *(v31 + v19) = vaddq_s16(vaddq_s16(v62, v55), v63);
      *(v33 + v19) = vaddq_s16(vaddq_s16(v63, vaddq_s16(v57, v60)), v61);
      v65 = vmlal_s16(vmull_s16(*v57.i8, *v57.i8), *v56.i8, *v56.i8);
      v66 = vmlal_s16(vmlal_s16(vmull_s16(*v54.i8, *v54.i8), *v53.i8, *v53.i8), *v55.i8, *v55.i8);
      v67 = vaddq_s32(v65, v66);
      v68 = vmlal_s16(vmlal_s16(v65, *v58.i8, *v58.i8), *v59.i8, *v59.i8);
      *v50 = vaddq_s32(vmlal_s16(vmull_s16(*v52.i8, *v52.i8), *v51.i8, *v51.i8), v66);
      v69 = &v18[v29];
      *v69 = v67;
      v70 = &v18[v45];
      *v70 = vmlal_s16(v68, *v55.i8, *v55.i8);
      v71 = &v18[v46];
      *v71 = vmlal_s16(vaddq_s32(vmlsl_s16(vmull_s16(*v60.i8, *v60.i8), *v56.i8, *v56.i8), v68), *v61.i8, *v61.i8);
      v72 = vmlal_high_s16(vmull_high_s16(v52, v52), v51, v51);
      v73 = vmlal_high_s16(vmull_high_s16(v57, v57), v56, v56);
      v74 = vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v54, v54), v53, v53), v55, v55);
      v75 = vaddq_s32(v73, v74);
      v76 = vmlal_high_s16(vmlal_high_s16(v73, v58, v58), v59, v59);
      v49 -= 8;
      v48 += v21;
      v47 += v21;
      v46 += v23;
      v45 += v23;
      v29 += v23;
      v44 += v23;
      v43 += v25;
      v41 += v25;
      v42 += v25;
      v39 += v25;
      v40 += v25;
      v37 += v25;
      v50[1] = vaddq_s32(v72, v74);
      v69[1] = v75;
      v38 += v25;
      v35 += v25;
      v36 += v25;
      v32 += v25;
      v70[1] = vmlal_high_s16(v76, v55, v55);
      v71[1] = vmlal_high_s16(vaddq_s32(vmlsl_high_s16(vmull_high_s16(v60, v60), v56, v56), v76), v61, v61);
      v34 += v25;
      v33 += v21;
      v31 += v21;
    }

    while (v49 > 8);
    v19 += 16;
    v22 = v342 + 32;
    v28 = v340 + 32;
    v29 = v338 + 32;
    v20 = v344 + 32;
    v30 = v336 - 8;
  }

  while (v336 > 8);
  v77 = 4 * (v321 + 10);
  bzero(v318, 2 * (v321 + 10));
  bzero(v18, v77);
  bzero(&v318[2 * v319], 2 * (v321 + 10));
  bzero(&v18[4 * v319], v77);
  if (v320 >= -5)
  {
    v78 = (v320 + 8) - 2;
    v79 = v321 + 8 * (v309 >> 2) + 40;
    do
    {
      v80 = &v318[2 * v79];
      *(v80 + 2) = 0;
      *v80 = 0;
      v81 = &v18[4 * v79];
      *(v81 + 2) = 0;
      *v81 = 0;
      v79 += v319;
      --v78;
    }

    while (v78);
  }

  v82 = 0;
  v83 = (2 * (v310 + 16));
  v84 = 16 * v335;
  v85 = 4 * v347;
  v86 = 12 * v335;
  v87 = 8 * v335;
  v88 = 4 * v335;
  v89 = 16 * v335 + 32408;
  v90 = 12 * v335 + 32408;
  v91 = 8 * v335 + 32408;
  v92 = 4 * v335 + 32408;
  v93 = 8 * v335 + 64808;
  v333 = 2 * v347;
  v94 = 6 * v335 + 64808;
  v95 = 4 * v335 + 64808;
  v96 = 2 * v335;
  v97 = 4 * v335;
  v98 = 2 * v335 + 64808;
  do
  {
    v345 = v82;
    v99 = &v18[4 * v335 + 4 * v82 * v347];
    v100 = &v18[2 * v335 + 64800 + 2 * v82 * v347];
    v101 = *v100;
    v102 = (v100 + 2 * v83);
    v103 = *v102;
    v104 = (v102 + 2 * v83);
    v105 = *(v104 + 2 * v335);
    v106 = vtrn1_s16(v101, v103);
    v107 = vtrn2_s16(v101, v103);
    v108 = vtrn1_s16(*v104, v105);
    v109 = vtrn2_s16(*v104, v105);
    v110 = vzip1_s32(v106, v108);
    v111 = vzip2_s32(v106, v108);
    v112 = vzip1_s32(v107, v109);
    v113 = vzip2_s32(v107, v109);
    v114 = (v99 + 4 * v83);
    v115 = *v114;
    v116 = (v114 + 4 * v83);
    v117 = *(v116 + 4 * v335);
    v118 = vtrn1q_s32(*v99, v115);
    v131 = vtrn2q_s32(*v99, v115);
    v119 = vtrn1q_s32(*v116, v117);
    v120 = vzip2q_s64(v118, v119);
    v121.i64[0] = v118.i64[0];
    v121.i64[1] = v119.i64[0];
    v122 = vtrn2q_s32(*v116, v117);
    v123 = vzip2q_s64(v131, v122);
    v124 = v98;
    v125 = v95;
    v126 = v94;
    v127 = v93;
    v128 = v92;
    v129 = v91;
    v337 = v90;
    v339 = v89;
    v130 = v97;
    v131.i64[1] = v122.i64[0];
    v341 = v87;
    v343 = v86;
    v132 = v86;
    v133 = v84;
    v134 = v84;
    v135 = v321 + 10;
    do
    {
      v136 = *&v18[v124];
      v137 = *&v18[v125];
      v138 = &v18[v130];
      v139 = *&v18[v126];
      v140 = *&v18[v127];
      v141 = vtrn1_s16(v136, v137);
      v142 = vtrn2_s16(v136, v137);
      v143 = vtrn1_s16(v139, v140);
      v144 = vtrn2_s16(v139, v140);
      v145 = vzip1_s32(v141, v143);
      v146 = vzip2_s32(v141, v143);
      v147 = vaddl_s16(v111, v112);
      v112 = vzip1_s32(v142, v144);
      v148 = vaddl_s16(v145, v113);
      v113 = vzip2_s32(v142, v144);
      v149 = *&v18[v130 + 16];
      v150 = &v18[v87];
      v151 = *&v18[v87 + 16];
      v152 = &v18[v132];
      v153 = *&v18[v132 + 16];
      v154 = &v18[v134];
      v155 = *&v18[v134 + 16];
      v156 = vtrn1q_s32(v149, v151);
      v157 = vtrn2q_s32(v149, v151);
      v158 = vtrn1q_s32(v153, v155);
      v159 = vtrn2q_s32(v153, v155);
      v160 = vzip2q_s64(v156, v158);
      v153.i64[0] = v156.i64[0];
      v153.i64[1] = v158.i64[0];
      v161 = vzip2q_s64(v157, v159);
      v162 = vaddq_s32(v120, v131);
      v131.i64[0] = v157.i64[0];
      v131.i64[1] = v159.i64[0];
      v163 = vaddq_s32(v147, v148);
      v164 = vaddq_s32(vaddl_s16(v112, v146), v148);
      v165 = vaddw_s16(v163, v110);
      v166 = vaddw_s16(v163, v112);
      v167 = vaddw_s16(v164, v111);
      v168 = vaddw_s16(v164, v113);
      v169 = vtrn1q_s32(v165, v166);
      v170 = vtrn2q_s32(v165, v166);
      v171 = vtrn1q_s32(v167, v168);
      v172 = vtrn2q_s32(v167, v168);
      v173 = vzip2q_s64(v169, v171);
      v169.i64[1] = v171.i64[0];
      v174 = vzip2q_s64(v170, v172);
      v170.i64[1] = v172.i64[0];
      *&v18[v128] = v169;
      *&v18[v129] = v170;
      *&v18[v90] = v173;
      v175 = vaddq_s32(v153, v123);
      *&v18[v89] = v174;
      v176 = vaddq_s32(v162, v175);
      v177 = vaddq_s32(vaddq_s32(v131, v160), v175);
      v178 = vaddq_s32(v176, v121);
      v179 = vaddq_s32(v176, v131);
      v180 = vaddq_s32(v177, v120);
      v181 = vaddq_s32(v177, v161);
      v182 = vtrn1q_s32(v178, v179);
      v183 = vtrn2q_s32(v178, v179);
      v184 = vtrn1q_s32(v180, v181);
      v185 = vtrn2q_s32(v180, v181);
      v186 = vzip2q_s64(v182, v184);
      v182.i64[1] = v184.i64[0];
      v187 = vzip2q_s64(v183, v185);
      v135 -= 4;
      v134 += 16;
      v132 += 16;
      v87 += 16;
      v130 += 16;
      v89 += 16;
      v90 += 16;
      v129 += 16;
      v128 += 16;
      v127 += 8;
      v183.i64[1] = v185.i64[0];
      v126 += 8;
      v125 += 8;
      v124 += 8;
      v110 = v145;
      *(v138 + 8) = v182;
      *(v150 + 8) = v183;
      v111 = v146;
      v121 = v153;
      *(v152 + 8) = v186;
      *(v154 + 8) = v187;
      v120 = v160;
      v123 = v161;
    }

    while (v135 > 4);
    v82 = v345 + 1;
    v84 = v133 + v85;
    v86 = v343 + v85;
    v87 = v341 + v85;
    v97 += v85;
    v89 = v339 + v85;
    v83 = (2 * (v310 + 16));
    v90 = v337 + v85;
    v91 += v85;
    v92 += v85;
    v93 += v333;
    v94 += v333;
    v95 += v333;
    v98 += v333;
    v188 = __OFSUB__(v346, 8);
    v346 -= 8;
  }

  while (!((v346 < 0) ^ v188 | (v346 == 0)));
  v189 = 3 * v319;
  v190 = &v18[4 * ((3 * v319) | 3) - 4 + 4 * (-16 - v310)];
  v191 = &v318[2 * ((3 * v319) | 3) - 2 + 2 * (-16 - v310)];
  v192 = &v18[4 * ((3 * v319) | 3) + 32396 + 4 * (-16 - v310)];
  v193 = v320 + 2;
  v194 = v311[2];
  v195 = ((2 * v312) | 1) * ((2 * v312) | 1);
  if (v313 < 9)
  {
    v237 = 0;
    v238 = vdupq_n_s32(v195);
    v239 = &dword_277C3C350[v195 - 1];
    v240 = vld1q_dup_f32(v239);
    v241 = vdupq_n_s32(v194);
    v242.i64[0] = 0xFF000000FFLL;
    v242.i64[1] = 0xFF000000FFLL;
    v243.i64[0] = 0x10000000100;
    v243.i64[1] = 0x10000000100;
    v206 = v315;
    v205 = v316;
    do
    {
      v244 = (v190 + 4 * v347 * v237);
      v245 = (v192 + 4 * v347 * v237);
      v246 = (v191 + 2 * v347 * v237);
      v247 = v321 + 2;
      do
      {
        v248 = 0;
        v249 = (v244 + 4 * v335);
        v250 = (v249 + 4 * v335);
        v251 = *v245;
        v252 = (v245 + 4 * v335);
        v253 = *v252;
        v254 = (v252 + 4 * v335);
        v255 = *v254;
        v256 = (v254 + 4 * v335);
        v257 = *v256;
        v258 = vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*(v250 + 4 * v335), v238), vmulq_s32(v257, v257)), v241), 0x14uLL);
        v259 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v249, v238), vmulq_s32(v253, v253)), v241), 0x14uLL), v242);
        v260 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v250, v238), vmulq_s32(v255, v255)), v241), 0x14uLL), v242);
        *v244 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v244, v238), vmulq_s32(*v245, *v245)), v241), 0x14uLL), v242);
        *v249 = v259;
        *v250 = v260;
        *(v250 + 4 * v335) = vminq_u32(v258, v242);
        v261 = v244;
        v262 = v246;
        do
        {
          for (i = 0; i != 4; ++i)
          {
            v262->i16[i] = dword_277C3C3B4[v261->i32[i]];
          }

          ++v248;
          v262 = (v262 + v96);
          v261 = (v261 + v88);
        }

        while (v248 != 4);
        v264 = (v246 + 2 * v335);
        v265 = *v264;
        v266 = (v264 + 2 * v335);
        v267 = vmulq_s32(vmulq_s32(v257, v240), vsubw_u16(v243, *(v266 + 2 * v335)));
        v268 = vrshrq_n_u32(vmulq_s32(vmulq_s32(v255, v240), vsubw_u16(v243, *v266)), 0xCuLL);
        *v245++ = vrshrq_n_u32(vmulq_s32(vmulq_s32(v251, v240), vsubw_u16(v243, *v246)), 0xCuLL);
        *v252 = vrshrq_n_u32(vmulq_s32(vmulq_s32(v253, v240), vsubw_u16(v243, v265)), 0xCuLL);
        *v254 = v268;
        *v256 = vrshrq_n_u32(v267, 0xCuLL);
        ++v244;
        ++v246;
        v188 = __OFSUB__(v247, 4);
        v247 -= 4;
      }

      while (!((v247 < 0) ^ v188 | (v247 == 0)));
      ++v237;
      v188 = __OFSUB__(v193, 8);
      v193 -= 8;
    }

    while (!((v193 < 0) ^ v188 | (v193 == 0)));
  }

  else
  {
    v196 = 0;
    v197 = vdupq_n_s32(8 - v313);
    v198 = vdupq_n_s32(16 - 2 * v313);
    v199 = vdupq_n_s32(v195);
    v200 = &dword_277C3C350[v195 - 1];
    v201 = vld1q_dup_f32(v200);
    v202 = vdupq_n_s32(v194);
    v203.i64[0] = 0xFF000000FFLL;
    v203.i64[1] = 0xFF000000FFLL;
    v204.i64[0] = 0x10000000100;
    v204.i64[1] = 0x10000000100;
    v206 = v315;
    v205 = v316;
    do
    {
      v207 = (v190 + 4 * v347 * v196);
      v208 = (v192 + 4 * v347 * v196);
      v209 = (v191 + 2 * v347 * v196);
      v210 = v321 + 2;
      do
      {
        v211 = 0;
        v212 = (v207 + 4 * v335);
        v213 = (v212 + 4 * v335);
        v214 = *v208;
        v215 = (v208 + 4 * v335);
        v216 = *v215;
        v217 = (v215 + 4 * v335);
        v218 = *v217;
        v219 = (v217 + 4 * v335);
        v220 = *v219;
        v221 = vrshlq_u32(*v208, v197);
        v222 = vrshlq_u32(*v215, v197);
        v223 = vrshlq_u32(*v217, v197);
        v224 = vrshlq_u32(*v219, v197);
        v225 = vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*(v213 + 4 * v335), v198), v199), vmulq_s32(v224, v224)), v202), 0x14uLL);
        v226 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v212, v198), v199), vmulq_s32(v222, v222)), v202), 0x14uLL), v203);
        v227 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v213, v198), v199), vmulq_s32(v223, v223)), v202), 0x14uLL), v203);
        *v207 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v207, v198), v199), vmulq_s32(v221, v221)), v202), 0x14uLL), v203);
        *v212 = v226;
        *v213 = v227;
        *(v213 + 4 * v335) = vminq_u32(v225, v203);
        v228 = v207;
        v229 = v209;
        do
        {
          for (j = 0; j != 4; ++j)
          {
            v229->i16[j] = dword_277C3C3B4[v228->i32[j]];
          }

          ++v211;
          v229 = (v229 + v96);
          v228 = (v228 + v88);
        }

        while (v211 != 4);
        v231 = (v209 + 2 * v335);
        v232 = *v231;
        v233 = (v231 + 2 * v335);
        v234 = vmulq_s32(vmulq_s32(v220, v201), vsubw_u16(v204, *(v233 + 2 * v335)));
        v235 = vrshrq_n_u32(vmulq_s32(vmulq_s32(v218, v201), vsubw_u16(v204, *v233)), 0xCuLL);
        *v208++ = vrshrq_n_u32(vmulq_s32(vmulq_s32(v214, v201), vsubw_u16(v204, *v209)), 0xCuLL);
        *v215 = vrshrq_n_u32(vmulq_s32(vmulq_s32(v216, v201), vsubw_u16(v204, v232)), 0xCuLL);
        *v217 = v235;
        *v219 = vrshrq_n_u32(v234, 0xCuLL);
        ++v207;
        ++v209;
        v188 = __OFSUB__(v210, 4);
        v210 -= 4;
      }

      while (!((v210 < 0) ^ v188 | (v210 == 0)));
      ++v196;
      v188 = __OFSUB__(v193, 8);
      v193 -= 8;
    }

    while (!((v193 < 0) ^ v188 | (v193 == 0)));
  }

  v269 = 0;
  v270 = 4 * v189 + 32432;
  v271 = 4 * v319;
  if (v320 <= 1)
  {
    v272 = 1;
  }

  else
  {
    v272 = v320;
  }

  v273 = 2 * v189;
  v274 = &v18[v270];
  v275 = 2 * v319;
  v276 = &v18[v273 + 64808];
  v277 = v275 + v273 + 64804;
  v278 = v273 - v275 + 64804;
  v279 = v270 - 4 * v319;
  v280.i64[0] = 0x5000500050005;
  v280.i64[1] = 0x5000500050005;
  v281.i64[0] = 0x6000600060006;
  v281.i64[1] = 0x6000600060006;
  v282.i64[0] = 0x500000005;
  v282.i64[1] = 0x500000005;
  v283 = v270 + 4 * v319;
  do
  {
    v284 = (v205 + 2 * v269 * v206);
    v285 = (v317 + 4 * v269 * v314);
    if (v269)
    {
      v298 = v276;
      v299 = v274;
      v300 = v321 + 8;
      do
      {
        v301 = *v284++;
        v302 = v301;
        v303 = *(v298 - 4);
        v304 = *(v298 - 2);
        v305 = *v298++;
        v306 = vmulq_s16(vaddq_s16(v305, v303), v280);
        v307 = vmulq_s16(v304, v281);
        v308 = vmlaq_s32(vmlaq_s32(*(v299 - 4), vaddl_high_u16(v306, v307), vmovl_high_s16(v302)), vaddq_s32(vaddq_s32(*(v299 - 4), *(v299 - 8)), *v299), v282);
        *v285 = vrshrq_n_s32(vmlaq_s32(vmlaq_s32(*(v299 - 20), vaddq_s32(vaddq_s32(*(v299 - 20), *(v299 - 24)), v299[-1]), v282), vaddl_u16(*v306.i8, *v307.i8), vmovl_s16(*v302.i8)), 8uLL);
        v285[1] = vrshrq_n_s32(v308, 8uLL);
        v285 += 2;
        v300 -= 8;
        v299 += 2;
      }

      while (v300 > 8);
    }

    else
    {
      v286 = v278;
      v287 = v277;
      v288 = v283;
      v289 = v279;
      v290 = v321 + 8;
      do
      {
        v291 = *v284++;
        v292 = vmulq_s16(vaddq_s16(vaddq_s16(*&v18[v286 + 4], *&v18[v286]), vaddq_s16(*&v18[v287], *&v18[v287 + 4])), v280);
        v293 = vmulq_s16(vaddq_s16(*&v18[v287 + 2], *&v18[v286 + 2]), v281);
        v294 = vaddq_s32(*&v18[v288 - 20], *&v18[v289 - 20]);
        v295 = vaddq_s32(*&v18[v288 - 4], *&v18[v289 - 4]);
        v296 = vrshrq_n_s32(vmlaq_s32(vmlaq_s32(v294, vaddl_u16(*v292.i8, *v293.i8), vmovl_s16(*v291.i8)), vaddq_s32(vaddq_s32(vaddq_s32(*&v18[v289 - 16], *&v18[v289 - 24]), vaddq_s32(*&v18[v288 - 24], *&v18[v288 - 16])), v294), v282), 9uLL);
        v297 = vrshrq_n_s32(vmlaq_s32(vmlaq_s32(v295, vaddl_high_u16(v292, v293), vmovl_high_s16(v291)), vaddq_s32(vaddq_s32(vaddq_s32(*&v18[v289], *&v18[v289 - 8]), vaddq_s32(*&v18[v288 - 8], *&v18[v288])), v295), v282), 9uLL);
        v290 -= 8;
        v289 += 32;
        v288 += 32;
        *v285 = v296;
        v285[1] = v297;
        v285 += 2;
        v287 += 16;
        v286 += 16;
      }

      while (v290 > 8);
    }

    ++v269;
    v274 = (v274 + v271);
    v276 += v275;
    v279 += v271;
    v283 += v271;
    v277 += v275;
    v278 += v275;
  }

  while (v269 != v272);
  free(*(v18 - 1));
  return 0;
}

uint64_t sub_277B8C81C(uint64_t a1, int a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v15 = &unk_277C3C250 + 16 * a8;
  v16 = *(v15 + 1);
  v17 = malloc_type_malloc(0x17BBFuLL, 0x5F484EBFuLL);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v18 - 1) = v17;
  if (!v18)
  {
    return 0xFFFFFFFFLL;
  }

  v297 = v15;
  v298 = v16;
  v299 = a7;
  v300 = a6;
  v302 = a5;
  v19 = 0;
  v295 = a2 + 9;
  v296 = (a2 + 9) & 0xFFFFFFFC;
  v314 = a4;
  v304 = a2;
  v20 = a2 + 6;
  v21 = 2 * (v296 + 16);
  v313 = a3 + 6;
  v22 = (v296 + 16);
  v23 = 4 * (v296 + 16);
  v305 = a1 - 6 * a4 - 6;
  v306 = v18 + 81000;
  v24 = 8 * a4;
  v301 = a1;
  v25 = v24 - 6 * a4 + a1 - 6;
  v26 = 2 * a4;
  v27 = 4 * v21;
  v28 = 4 * v23;
  v29 = 8 * v22 + v27;
  v30 = v27 + 4 * v22;
  v31 = 2 * v21 + 81000;
  v32 = v31 + 6 * v22;
  v307 = v23;
  v33 = 2 * v23;
  v34 = v31 + 4 * v22;
  v35 = 6 * a4;
  v36 = 4 * a4;
  v303 = v296 + 16;
  v37 = v31 + 2 * v22;
  v38 = v27 + 12 * v22;
  do
  {
    v311 = v20;
    v312 = v19;
    v39 = (v305 + 16 * v19 + 2 * v314);
    v40 = *v39;
    v41 = (v39 + 2 * v314);
    v42 = *v41;
    v43 = *(v41 + 2 * v314);
    v44 = vaddq_s16(v43, *v41);
    v45 = vaddq_s16(v44, v40);
    v46 = vmull_s16(*v43.i8, *v43.i8);
    v47 = vmlal_s16(v46, *v42.i8, *v42.i8);
    v48 = vmlal_s16(v47, *v40.i8, *v40.i8);
    v49 = vmull_high_s16(v43, v43);
    v50 = vmlal_high_s16(v49, v42, v42);
    v51 = 10;
    v52 = v31;
    v53 = vmlal_high_s16(v50, v40, v40);
    v54 = v37;
    v55 = v34;
    v56 = v32;
    v308 = v38;
    v309 = v27;
    v57 = v27;
    v58 = v30;
    v59 = v29;
    v310 = v25;
    v60 = v25;
    do
    {
      v61 = &v18[v57];
      v62 = *v60;
      v63 = *(v60 + v26);
      v64 = *(v60 + v36);
      v65 = vaddq_s16(v63, *v60);
      v66 = vaddq_s16(v65, v43);
      v43 = *(v60 + v35);
      v67 = vaddq_s16(*v60, v44);
      v44 = vaddq_s16(v43, v64);
      *&v18[v52] = v45;
      *&v18[v54] = v67;
      *&v18[v55] = v66;
      v45 = vaddq_s16(v44, v63);
      *&v18[v56] = vaddq_s16(v64, v65);
      v68 = vmlal_s16(vmull_s16(*v63.i8, *v63.i8), *v62.i8, *v62.i8);
      v69 = vaddq_s32(v68, v46);
      v46 = vmull_s16(*v43.i8, *v43.i8);
      *v61 = v48;
      v70 = &v18[v58];
      *v70 = vmlal_s16(v47, *v62.i8, *v62.i8);
      v47 = vmlal_s16(v46, *v64.i8, *v64.i8);
      v71 = &v18[v59];
      *v71 = v69;
      v72 = &v18[v38];
      *v72 = vmlal_s16(v68, *v64.i8, *v64.i8);
      v73 = vmlal_high_s16(v50, v62, v62);
      v74 = vmlal_high_s16(vmull_high_s16(v63, v63), v62, v62);
      v75 = vaddq_s32(v74, v49);
      v49 = vmull_high_s16(v43, v43);
      v61[1] = v53;
      v70[1] = v73;
      v50 = vmlal_high_s16(v49, v64, v64);
      v60 = (v60 + v24);
      v38 += v28;
      v59 += v28;
      v58 += v28;
      v57 += v28;
      v56 += v33;
      v55 += v33;
      v54 += v33;
      v52 += v33;
      v51 -= 4;
      v71[1] = v75;
      v72[1] = vmlal_high_s16(v74, v64, v64);
      v48 = vmlal_s16(v47, *v63.i8, *v63.i8);
      v53 = vmlal_high_s16(v50, v63, v63);
    }

    while (a3 + v51 > 4);
    v19 = v312 + 1;
    v25 = v310 + 16;
    v38 = v308 + 32;
    v29 += 32;
    v30 += 32;
    v27 = v309 + 32;
    v32 += 16;
    v34 += 16;
    v37 += 16;
    v31 += 16;
    v20 = v311 - 8;
  }

  while (v311 > 8);
  v76 = 4 * (v304 + 10);
  v77 = v18 + 81000;
  bzero(v306, 2 * (v304 + 10));
  bzero(v18, v76);
  bzero(&v306[2 * v22], 2 * (v304 + 10));
  bzero(&v18[4 * v22], v76);
  if (a3 >= -5)
  {
    v78 = (a3 + 8) - 2;
    v79 = v304 + 8 * (v295 >> 2) + 40;
    do
    {
      v80 = &v306[2 * v79];
      *(v80 + 2) = 0;
      *v80 = 0;
      v81 = &v18[4 * v79];
      *(v81 + 2) = 0;
      *v81 = 0;
      v79 += v303;
      --v78;
    }

    while (v78);
  }

  v82 = 0;
  v83 = 0;
  v84 = 4 * v22;
  v85 = 2 * v22;
  v86 = 4 * (v296 + 16);
  do
  {
    v87 = 12 * v22 + 16 + 4 * v82;
    v88 = 8 * v22 + 8 + 4 * v82;
    v89 = 4 * v22 + 8 + 4 * v82;
    v90 = 4 * v82 + 8;
    v91 = 6 * v22 + 81004 + 2 * v82;
    v92 = 4 * v22 + 81004 + 2 * v82;
    v93 = 2 * v22 + 81004 + 2 * v82;
    v94 = 2 * v82 + 81004;
    v95 = &v77[2 * v86 * v83];
    v96 = &v18[4 * v86 * v83];
    v97 = *v95;
    v98 = (v95 + 2 * v22);
    v99 = *v98;
    v100 = (v98 + 2 * v22);
    v101 = *v100;
    v102 = vtrn2_s16(v97, v99);
    v97.i16[3] = v99.i16[2];
    v103 = vtrn2_s16(*v100, *(v100 + 2 * v22));
    v101.i16[3] = WORD2(*(v100 + 2 * v22));
    v104 = vzip2_s32(v97, v101);
    v105 = vzip1_s32(v102, v103);
    v106 = vzip2_s32(v102, v103);
    v107 = *v96;
    v108 = (v96 + 4 * v22);
    v109 = *v108;
    v110 = (v108 + 4 * v22);
    v111 = *v110;
    v112 = vtrn2q_s32(v107, v109);
    v107.i32[3] = v109.i32[2];
    v113 = vtrn2q_s32(*v110, *(v110 + 4 * v22));
    v111.i32[3] = *(&v110->i64[1] + v84);
    v114 = vzip2q_s64(v112, v113);
    v112.i64[1] = v113.i64[0];
    v115 = vzip2q_s64(v107, v111);
    v116 = vadd_s16(v106, v104);
    v117 = vadd_s16(v116, v105);
    v118 = vaddq_s32(v114, v115);
    v119 = vaddq_s32(v118, v112);
    v120 = v304 + 10;
    do
    {
      v121 = &v18[v90];
      v122 = *&v18[v94 + 4];
      v123 = *&v18[v93 + 4];
      v124 = *&v18[v92 + 4];
      v125 = *&v18[v91 + 4];
      v126 = vtrn1_s16(v122, v123);
      v127 = vtrn2_s16(v122, v123);
      v128 = vtrn1_s16(v124, v125);
      v129 = vtrn2_s16(v124, v125);
      v130 = vzip1_s32(v126, v128);
      v131 = vzip2_s32(v126, v128);
      v132 = vzip1_s32(v127, v129);
      v133 = vadd_s16(v130, v132);
      v134 = vadd_s16(v133, v106);
      v106 = vzip2_s32(v127, v129);
      v135 = *&v18[v90 + 8];
      v136 = &v18[v89];
      v137 = *&v18[v89 + 8];
      v138 = &v18[v88];
      v139 = *&v18[v88 + 8];
      v140 = &v18[v87];
      v141 = *&v18[v87];
      v142 = vtrn1q_s32(v135, v137);
      v143 = vtrn2q_s32(v135, v137);
      v144 = vtrn1q_s32(v139, v141);
      v145 = vtrn2q_s32(v139, v141);
      v146 = vzip2q_s64(v142, v144);
      v142.i64[1] = v144.i64[0];
      v147 = vzip2q_s64(v143, v145);
      v143.i64[1] = v145.i64[0];
      v148 = vadd_s16(v116, v130);
      v149 = vadd_s16(v133, v131);
      v116 = vadd_s16(v131, v106);
      v150 = vtrn1_s16(v117, v148);
      v151 = vtrn2_s16(v117, v148);
      v117 = vadd_s16(v116, v132);
      v152 = vtrn1_s16(v134, v149);
      v153 = vtrn2_s16(v134, v149);
      *&v18[v94] = vzip1_s32(v150, v152);
      *&v18[v93] = vzip1_s32(v151, v153);
      *&v18[v92] = vzip2_s32(v150, v152);
      *&v18[v91] = vzip2_s32(v151, v153);
      v154 = vaddq_s32(v118, v142);
      v155 = vaddq_s32(v142, v143);
      v156 = vaddq_s32(v155, v114);
      v157 = vaddq_s32(v155, v146);
      v118 = vaddq_s32(v146, v147);
      v158 = vtrn1q_s32(v119, v154);
      v159 = vtrn2q_s32(v119, v154);
      v160 = vaddq_s32(v118, v143);
      v161 = vtrn1q_s32(v156, v157);
      v162 = vtrn2q_s32(v156, v157);
      v163 = vzip2q_s64(v158, v161);
      v158.i64[1] = v161.i64[0];
      v164 = vzip2q_s64(v159, v162);
      v87 += 16;
      v88 += 16;
      v159.i64[1] = v162.i64[0];
      v89 += 16;
      v90 += 16;
      v91 += 8;
      v92 += 8;
      *v121 = v158;
      *v136 = v159;
      v93 += 8;
      v94 += 8;
      v120 -= 4;
      *v138 = v163;
      *(v140 - 8) = v164;
      v119 = v160;
      v114 = v147;
    }

    while (v120 > 4);
    ++v83;
    v86 = 4 * (v296 + 16);
    v82 += v307;
    v165 = __OFSUB__(v313, 4);
    v313 -= 4;
    v77 = v18 + 81000;
  }

  while (!((v313 < 0) ^ v165 | (v313 == 0)));
  v166 = 3 * v303;
  v167 = &v18[4 * ((3 * v303) | 3) - 4 + 4 * (-16 - v296)];
  v168 = &v18[2 * ((3 * v303) | 3) + 64798 + 2 * (-16 - v296)];
  v169 = &v306[2 * ((3 * v303) | 3) - 2 + 2 * (-16 - v296)];
  v170 = &v18[4 * ((3 * v303) | 3) + 32396 + 4 * (-16 - v296)];
  v171 = a3 + 2;
  v172 = *(v297 + 3);
  v173 = ((2 * v298) | 1) * ((2 * v298) | 1);
  if (v299 < 9)
  {
    v226 = 0;
    v227 = vdupq_n_s32(v173);
    v118.i32[0] = dword_277C3C350[v173 - 1];
    v228 = vdupq_n_s32(v172);
    v229.i64[0] = 0xFF000000FFLL;
    v229.i64[1] = 0xFF000000FFLL;
    v230.i64[0] = 0x100010001000100;
    v230.i64[1] = 0x100010001000100;
    v182 = v301;
    v181 = v302;
    do
    {
      v231 = (v168 + 2 * v307 * v226);
      v232 = (v167 + 4 * v307 * v226);
      v233 = (v169 + 2 * v307 * v226);
      v234 = (v170 + 4 * v307 * v226);
      v235 = v304 + 2;
      do
      {
        v236 = 0;
        v237 = (v232 + 4 * v22);
        v238 = (v237 + 4 * v22);
        v239 = (v232 + 4 * v22 + 16);
        v240 = (v233 + 2 * v22);
        v241 = *v240;
        v242 = (v240 + 2 * v22);
        v243 = *(v242 + 2 * v22);
        v244 = *v242;
        v245 = (v239 + 4 * v22);
        v246 = *v233->i8;
        v247 = vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*(v245 + 4 * v22), v227), vmull_high_u16(v243, v243)), v228), 0x14uLL);
        v248 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v237, v227), vmull_u16(*v241.i8, *v241.i8)), v228), 0x14uLL), v229);
        v249 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v238, v227), vmull_u16(*v244.i8, *v244.i8)), v228), 0x14uLL), v229);
        v250 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*(v238 + 4 * v22), v227), vmull_u16(*v243.i8, *v243.i8)), v228), 0x14uLL), v229);
        v251 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(v232[1], v227), vmull_high_u16(v246, v246)), v228), 0x14uLL), v229);
        v252 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v239, v227), vmull_high_u16(v241, v241)), v228), 0x14uLL), v229);
        v253 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v245, v227), vmull_high_u16(v244, v244)), v228), 0x14uLL), v229);
        *v232 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(*v232, v227), vmull_u16(*v233, *v233)), v228), 0x14uLL), v229);
        *v237 = v248;
        *v238 = v249;
        *(v238 + 4 * v22) = v250;
        v232[1] = v251;
        *v239 = v252;
        *v245 = v253;
        *(v245 + 4 * v22) = vminq_u32(v247, v229);
        v254 = v232;
        v255 = v231;
        do
        {
          for (i = 0; i != 8; ++i)
          {
            v255->i16[i] = dword_277C3C3B4[v254->i32[i]];
          }

          ++v236;
          v255 = (v255 + v85);
          v254 = (v254 + v84);
        }

        while (v236 != 4);
        v257 = (v231 + 2 * v22);
        v258 = *v257;
        v259 = (v257 + 2 * v22);
        v260 = vsubq_s16(v230, *v231);
        v261 = vsubq_s16(v230, v258);
        v262 = vsubq_s16(v230, *v259);
        v263 = vsubq_s16(v230, *(v259 + 2 * v22));
        *v234 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v246.i8, *v118.i8, 0), vmovl_u16(*v260.i8)), 0xCuLL);
        v264 = (v234 + 4 * v22);
        *v264 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v241.i8, *v118.i8, 0), vmovl_u16(*v261.i8)), 0xCuLL);
        v265 = (v264 + 4 * v22);
        *v265 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v244.i8, *v118.i8, 0), vmovl_u16(*v262.i8)), 0xCuLL);
        *(v265 + 4 * v22) = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v243.i8, *v118.i8, 0), vmovl_u16(*v263.i8)), 0xCuLL);
        v234[1] = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v246, *v118.i8, 0), vmovl_high_u16(v260)), 0xCuLL);
        v266 = v234 + 1;
        v267 = (v266 + 4 * v22);
        *v267 = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v241, *v118.i8, 0), vmovl_high_u16(v261)), 0xCuLL);
        v268 = (v267 + 4 * v22);
        *v268 = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v244, *v118.i8, 0), vmovl_high_u16(v262)), 0xCuLL);
        *(v268 + 4 * v22) = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v243, *v118.i8, 0), vmovl_high_u16(v263)), 0xCuLL);
        v234 = v266 + 1;
        v232 += 2;
        v233 += 2;
        ++v231;
        v165 = __OFSUB__(v235, 8);
        v235 -= 8;
      }

      while (!((v235 < 0) ^ v165 | (v235 == 0)));
      ++v226;
      v165 = __OFSUB__(v171, 4);
      v171 -= 4;
    }

    while (!((v171 < 0) ^ v165 | (v171 == 0)));
  }

  else
  {
    v174 = 0;
    v175 = vdupq_n_s16(8 - v299);
    v176 = vdupq_n_s32(16 - 2 * v299);
    v177 = vdupq_n_s32(v173);
    v119.i32[0] = dword_277C3C350[v173 - 1];
    v178 = vdupq_n_s32(v172);
    v179.i64[0] = 0xFF000000FFLL;
    v179.i64[1] = 0xFF000000FFLL;
    v180.i64[0] = 0x100010001000100;
    v180.i64[1] = 0x100010001000100;
    v182 = v301;
    v181 = v302;
    do
    {
      v183 = (v167 + 4 * v307 * v174);
      v184 = (v169 + 2 * v307 * v174);
      v185 = (v170 + 4 * v307 * v174);
      v186 = (v168 + 2 * v307 * v174);
      v187 = v304 + 2;
      do
      {
        v188 = 0;
        v189 = (v183 + 4 * v22);
        v190 = (v189 + 4 * v22);
        v191 = (v183 + 4 * v22 + 16);
        v192 = (v184 + 2 * v22);
        v193 = *v192;
        v194 = (v192 + 2 * v22);
        v195 = *(v194 + 2 * v22);
        v196 = *v194;
        v197 = (v191 + 4 * v22);
        v198 = *v184;
        v199 = vrshlq_u16(*v184, v175);
        v200 = vrshlq_u16(v193, v175);
        v201 = vrshlq_u16(v196, v175);
        v202 = vrshlq_u16(v195, v175);
        v203 = vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*(v197 + 4 * v22), v176), v177), vmull_high_u16(v202, v202)), v178), 0x14uLL);
        v204 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v189, v176), v177), vmull_u16(*v200.i8, *v200.i8)), v178), 0x14uLL), v179);
        v205 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v190, v176), v177), vmull_u16(*v201.i8, *v201.i8)), v178), 0x14uLL), v179);
        v206 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*(v190 + 4 * v22), v176), v177), vmull_u16(*v202.i8, *v202.i8)), v178), 0x14uLL), v179);
        v207 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(v183[1], v176), v177), vmull_high_u16(v199, v199)), v178), 0x14uLL), v179);
        v208 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v191, v176), v177), vmull_high_u16(v200, v200)), v178), 0x14uLL), v179);
        v209 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v197, v176), v177), vmull_high_u16(v201, v201)), v178), 0x14uLL), v179);
        *v183 = vminq_u32(vrshrq_n_u32(vmulq_s32(vqsubq_u32(vmulq_s32(vrshlq_u32(*v183, v176), v177), vmull_u16(*v199.i8, *v199.i8)), v178), 0x14uLL), v179);
        *v189 = v204;
        *v190 = v205;
        *(v190 + 4 * v22) = v206;
        v183[1] = v207;
        *v191 = v208;
        *v197 = v209;
        *(v197 + 4 * v22) = vminq_u32(v203, v179);
        v210 = v183;
        v211 = v186;
        do
        {
          for (j = 0; j != 8; ++j)
          {
            v211->i16[j] = dword_277C3C3B4[v210->i32[j]];
          }

          ++v188;
          v211 = (v211 + v85);
          v210 = (v210 + v84);
        }

        while (v188 != 4);
        v213 = (v186 + 2 * v22);
        v214 = *v213;
        v215 = (v213 + 2 * v22);
        v216 = vsubq_s16(v180, *v186);
        v217 = vsubq_s16(v180, v214);
        v218 = vsubq_s16(v180, *v215);
        v219 = vsubq_s16(v180, *(v215 + 2 * v22));
        *v185 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v198.i8, *v119.i8, 0), vmovl_u16(*v216.i8)), 0xCuLL);
        v220 = (v185 + 4 * v22);
        *v220 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v193.i8, *v119.i8, 0), vmovl_u16(*v217.i8)), 0xCuLL);
        v221 = (v220 + 4 * v22);
        *v221 = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v196.i8, *v119.i8, 0), vmovl_u16(*v218.i8)), 0xCuLL);
        *(v221 + 4 * v22) = vrshrq_n_u32(vmulq_s32(vmull_lane_u16(*v195.i8, *v119.i8, 0), vmovl_u16(*v219.i8)), 0xCuLL);
        v185[1] = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v198, *v119.i8, 0), vmovl_high_u16(v216)), 0xCuLL);
        v222 = v185 + 1;
        v223 = (v222 + 4 * v22);
        *v223 = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v193, *v119.i8, 0), vmovl_high_u16(v217)), 0xCuLL);
        v224 = (v223 + 4 * v22);
        *v224 = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v196, *v119.i8, 0), vmovl_high_u16(v218)), 0xCuLL);
        *(v224 + 4 * v22) = vrshrq_n_u32(vmulq_s32(vmull_high_lane_u16(v195, *v119.i8, 0), vmovl_high_u16(v219)), 0xCuLL);
        v185 = v222 + 1;
        v183 += 2;
        ++v184;
        ++v186;
        v165 = __OFSUB__(v187, 8);
        v187 -= 8;
      }

      while (!((v187 < 0) ^ v165 | (v187 == 0)));
      ++v174;
      v165 = __OFSUB__(v171, 4);
      v171 -= 4;
    }

    while (!((v171 < 0) ^ v165 | (v171 == 0)));
  }

  v269 = 0;
  v270 = 4 * v166 + 32432;
  if (a3 <= 1)
  {
    v271 = 1;
  }

  else
  {
    v271 = a3;
  }

  v272 = v270 - 4 * v22;
  v273 = 2 * v166;
  v274 = v273 + 64804;
  v275 = v273 - 2 * v22 + 64806;
  v276 = v270 + 4 * v22;
  v277.i64[0] = 0x3000300030003;
  v277.i64[1] = 0x3000300030003;
  v278 = v274 + 2 * v22;
  do
  {
    v279 = (v182 + 2 * v269 * v314);
    v280 = (v181 + 4 * v269 * v300);
    v281 = v275;
    v282 = v274;
    v283 = v270;
    v284 = v278;
    v285 = v276;
    v286 = v272;
    v287 = v304 + 8;
    do
    {
      v288 = *v279++;
      v289 = vshlq_n_s16(vaddq_s16(vaddq_s16(vaddq_s16(*&v18[v282], *&v18[v281]), vaddq_s16(*&v18[v282 + 2], *&v18[v282 + 4])), *&v18[v284 + 2]), 2uLL);
      v290 = vmulq_s16(vaddq_s16(vaddq_s16(*&v18[v281 + 2], *&v18[v281 - 2]), vaddq_s16(*&v18[v284], *&v18[v284 + 4])), v277);
      v291 = vaddq_s32(vaddq_s32(*&v18[v286 - 16], *&v18[v286 - 24]), vaddq_s32(*&v18[v285 - 24], *&v18[v285 - 16]));
      v292 = vaddq_s32(vaddq_s32(*&v18[v286], *&v18[v286 - 8]), vaddq_s32(*&v18[v285 - 8], *&v18[v285]));
      v293 = vaddq_s32(vmlaq_s32(vnegq_s32(v292), vaddl_high_u16(v290, v289), vmovl_high_s16(v288)), vshlq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(*&v18[v283 - 8], *&v18[v286 - 4]), vaddq_s32(*&v18[v283 - 4], *&v18[v283])), *&v18[v285 - 4]), v292), 2uLL));
      v294 = vrshrq_n_s32(vaddq_s32(vmlaq_s32(vnegq_s32(v291), vaddl_u16(*v290.i8, *v289.i8), vmovl_s16(*v288.i8)), vshlq_n_s32(vaddq_s32(vaddq_s32(vaddq_s32(vaddq_s32(*&v18[v283 - 24], *&v18[v286 - 20]), vaddq_s32(*&v18[v283 - 20], *&v18[v283 - 16])), *&v18[v285 - 20]), v291), 2uLL)), 9uLL);
      v287 -= 8;
      v286 += 32;
      v285 += 32;
      v284 += 16;
      v283 += 32;
      *v280 = v294;
      v280[1] = vrshrq_n_s32(v293, 9uLL);
      v280 += 2;
      v282 += 16;
      v281 += 16;
    }

    while (v287 > 8);
    ++v269;
    v272 += v84;
    v276 += v84;
    v278 += v85;
    v270 += v84;
    v274 += v85;
    v275 += v85;
  }

  while (v269 != v271);
  free(*(v18 - 1));
  return 0;
}