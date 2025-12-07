uint64_t sub_277B75C74(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v72[127] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v52 = 0;
      v53 = (v7 + 18);
      do
      {
        v54 = &v71[v52];
        *v54 = vrhaddq_u16(*(v53 - 18), v53[-1]);
        v54[1] = vrhaddq_u16(*(v53 - 2), *v53);
        v52 += 2;
        v53 = (v53 + 2 * a2);
      }

      while ((v52 * 16) != 1056);
      v55 = v71[0];
      v56 = v72;
      v57 = 32;
      do
      {
        v58 = &v70[v57];
        v60 = v56[-2];
        v59 = v56[-1];
        v61 = *v56;
        v56 += 2;
        v58[-2] = vrhaddq_u16(v55, v59);
        v58[-1] = vrhaddq_u16(v60, v61);
        v57 += 32;
        v55 = v59;
      }

      while (v57 != 1056);
    }

    else
    {
      v9 = 0;
      v10 = (v7 + 18);
      v11 = 2 * a2;
      if (!a4)
      {
        do
        {
          v12 = &v71[v9];
          *v12 = vrhaddq_u16(*(v10 - 18), v10[-1]);
          v12[1] = vrhaddq_u16(*(v10 - 2), *v10);
          v9 += 2;
          v10 = (v10 + v11);
        }

        while ((v9 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v13 = &v71[v9];
        *v13 = vrhaddq_u16(*(v10 - 18), v10[-1]);
        v13[1] = vrhaddq_u16(*(v10 - 2), *v10);
        v9 += 2;
        v10 = (v10 + v11);
      }

      while ((v9 * 16) != 1056);
      v14 = vdupq_n_s16(8 - a4);
      v15 = vdupq_n_s16(a4);
      v16 = v71[0];
      v17 = v72;
      v18 = 32;
      do
      {
        v20 = v17[-2];
        v19 = v17[-1];
        v21 = *v17;
        v17 += 2;
        v22 = &v70[v18];
        v22[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v16, v14), v19, v15), 3uLL);
        v22[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v20, v14), v21, v15), 3uLL);
        v18 += 32;
        v16 = v19;
      }

      while (v18 != 1056);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v23 = 0;
    v24 = vdupq_n_s16(8 - a3);
    v25 = vdupq_n_s16(a3);
    v26 = (v7 + 18);
    v27 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v29 = &v71[v23];
        *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 1056);
      v30 = v71[0];
      v31 = v72;
      v32 = 32;
      do
      {
        v33 = &v70[v32];
        v35 = v31[-2];
        v34 = v31[-1];
        v36 = *v31;
        v31 += 2;
        v33[-2] = vrhaddq_u16(v30, v34);
        v33[-1] = vrhaddq_u16(v35, v36);
        v32 += 32;
        v30 = v34;
      }

      while (v32 != 1056);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v28 = &v71[v23];
          *v28 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
          v28[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
          v23 += 2;
          v26 = (v26 + v27);
        }

        while ((v23 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v37 = &v71[v23];
        *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 18), v24), v26[-1], v25), 3uLL);
        v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v26 - 2), v24), *v26, v25), 3uLL);
        v23 += 2;
        v26 = (v26 + v27);
      }

      while ((v23 * 16) != 1056);
      v38 = vdupq_n_s16(8 - a4);
      v39 = vdupq_n_s16(a4);
      v40 = v71[0];
      v41 = v72;
      v42 = 32;
      do
      {
        v44 = v41[-2];
        v43 = v41[-1];
        v45 = *v41;
        v41 += 2;
        v46 = &v70[v42];
        v46[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v40, v38), v43, v39), 3uLL);
        v46[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v44, v38), v45, v39), 3uLL);
        v42 += 32;
        v40 = v43;
      }

      while (v42 != 1056);
    }

LABEL_35:
    v62 = v70;
    return sub_277A6EA8C(v62 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v47 = 0;
    v48 = *v7;
    v49 = 2 * a2;
    do
    {
      v50 = &v71[v47];
      v51 = *(v7 + 2 * a2);
      *v50 = vrhaddq_u16(v48, v51);
      v50[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v49 + 16));
      v47 += 2;
      v7 += v49;
      v48 = v51;
    }

    while ((v47 * 16) != 1024);
    goto LABEL_38;
  }

  if (a4)
  {
    v63 = 0;
    v64 = vdupq_n_s16(8 - a4);
    v65 = vdupq_n_s16(a4);
    v66 = *v7;
    v67 = 2 * a2;
    do
    {
      v68 = &v71[v63];
      v69 = *(v7 + 2 * a2);
      *v68 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v66, v64), v69, v65), 3uLL);
      v68[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v64), *(v7 + v67 + 16), v65), 3uLL);
      v63 += 2;
      v7 += v67;
      v66 = v69;
    }

    while ((v63 * 16) != 1024);
LABEL_38:
    v62 = v71;
    return sub_277A6EA8C(v62 >> 1, 16, a5, a6, a7);
  }

  return sub_277A6EA8C(a1, a2, a5, a6, a7);
}

uint64_t sub_277B760FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v80[255] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v60 = 0;
      v61 = (v15 + 18);
      do
      {
        v62 = &v79[v60];
        *v62 = vrhaddq_u16(*(v61 - 18), v61[-1]);
        v62[1] = vrhaddq_u16(*(v61 - 2), *v61);
        v60 += 2;
        v61 = (v61 + 2 * v9);
      }

      while ((v60 * 16) != 2080);
      v63 = v79[0];
      v64 = v80;
      v65 = 32;
      do
      {
        v66 = &v78[v65];
        v68 = v64[-2];
        v67 = v64[-1];
        v69 = *v64;
        v64 += 2;
        v66[-2] = vrhaddq_u16(v63, v67);
        v66[-1] = vrhaddq_u16(v68, v69);
        v65 += 32;
        v63 = v67;
      }

      while (v65 != 2080);
    }

    else
    {
      v17 = 0;
      v18 = (v15 + 18);
      v19 = 2 * v9;
      if (!v11)
      {
        do
        {
          v20 = &v79[v17];
          *v20 = vrhaddq_u16(*(v18 - 18), v18[-1]);
          v20[1] = vrhaddq_u16(*(v18 - 2), *v18);
          v17 += 2;
          v18 = (v18 + v19);
        }

        while ((v17 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v21 = &v79[v17];
        *v21 = vrhaddq_u16(*(v18 - 18), v18[-1]);
        v21[1] = vrhaddq_u16(*(v18 - 2), *v18);
        v17 += 2;
        v18 = (v18 + v19);
      }

      while ((v17 * 16) != 2080);
      v22 = vdupq_n_s16(8 - v11);
      v23 = vdupq_n_s16(v11);
      v24 = v79[0];
      v25 = v80;
      v26 = 32;
      do
      {
        v28 = v25[-2];
        v27 = v25[-1];
        v29 = *v25;
        v25 += 2;
        v30 = &v78[v26];
        v30[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v24, v22), v27, v23), 3uLL);
        v30[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v28, v22), v29, v23), 3uLL);
        v26 += 32;
        v24 = v27;
      }

      while (v26 != 2080);
    }

    goto LABEL_35;
  }

  if (v10)
  {
    v31 = 0;
    v32 = vdupq_n_s16(8 - v10);
    v33 = vdupq_n_s16(v10);
    v34 = (v15 + 18);
    v35 = 2 * v9;
    if (v11 == 4)
    {
      do
      {
        v37 = &v79[v31];
        *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v34 - 18), v32), v34[-1], v33), 3uLL);
        v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v34 - 2), v32), *v34, v33), 3uLL);
        v31 += 2;
        v34 = (v34 + v35);
      }

      while ((v31 * 16) != 2080);
      v38 = v79[0];
      v39 = v80;
      v40 = 32;
      do
      {
        v41 = &v78[v40];
        v43 = v39[-2];
        v42 = v39[-1];
        v44 = *v39;
        v39 += 2;
        v41[-2] = vrhaddq_u16(v38, v42);
        v41[-1] = vrhaddq_u16(v43, v44);
        v40 += 32;
        v38 = v42;
      }

      while (v40 != 2080);
    }

    else
    {
      if (!v11)
      {
        do
        {
          v36 = &v79[v31];
          *v36 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v34 - 18), v32), v34[-1], v33), 3uLL);
          v36[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v34 - 2), v32), *v34, v33), 3uLL);
          v31 += 2;
          v34 = (v34 + v35);
        }

        while ((v31 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v45 = &v79[v31];
        *v45 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v34 - 18), v32), v34[-1], v33), 3uLL);
        v45[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v34 - 2), v32), *v34, v33), 3uLL);
        v31 += 2;
        v34 = (v34 + v35);
      }

      while ((v31 * 16) != 2080);
      v46 = vdupq_n_s16(8 - v11);
      v47 = vdupq_n_s16(v11);
      v48 = v79[0];
      v49 = v80;
      v50 = 32;
      do
      {
        v52 = v49[-2];
        v51 = v49[-1];
        v53 = *v49;
        v49 += 2;
        v54 = &v78[v50];
        v54[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v48, v46), v51, v47), 3uLL);
        v54[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v52, v46), v53, v47), 3uLL);
        v50 += 32;
        v48 = v51;
      }

      while (v50 != 2080);
    }

LABEL_35:
    v70 = v78;
    return sub_277A6EB60(v70 >> 1, 16, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v55 = 0;
    v56 = *v15;
    v57 = 2 * v9;
    do
    {
      v58 = &v79[v55];
      v59 = *(v15 + 2 * v9);
      *v58 = vrhaddq_u16(v56, v59);
      v58[1] = vrhaddq_u16(*(v15 + 16), *(v15 + v57 + 16));
      v55 += 2;
      v15 += v57;
      v56 = v59;
    }

    while ((v55 * 16) != 2048);
    goto LABEL_38;
  }

  if (v11)
  {
    v71 = 0;
    v72 = vdupq_n_s16(8 - v11);
    v73 = vdupq_n_s16(v11);
    v74 = *v15;
    v75 = 2 * v9;
    do
    {
      v76 = &v79[v71];
      v77 = *(v15 + 2 * v9);
      *v76 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v74, v72), v77, v73), 3uLL);
      v76[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + 16), v72), *(v15 + v75 + 16), v73), 3uLL);
      v71 += 2;
      v15 += v75;
      v74 = v77;
    }

    while ((v71 * 16) != 2048);
LABEL_38:
    v70 = v79;
    return sub_277A6EB60(v70 >> 1, 16, v12, v13, v14);
  }

  return sub_277A6EB60(v8, v9, v12, v13, v14);
}

uint64_t sub_277B765A4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v79 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v9 = 2 * a2;
    v10 = v78;
    if (a4 == 4)
    {
      v26 = 9;
      do
      {
        v27 = 0;
        v28 = -8;
        do
        {
          *&v10[v27] = vrhaddq_u16(*(v7 + v27), *(v7 + v27 + 2));
          v28 += 8;
          v27 += 16;
        }

        while (v28 < 0x18);
        v10 += 64;
        v7 += v9;
        --v26;
      }

      while (v26);
      v29 = v78;
      v30 = v77;
      v31 = 8;
      do
      {
        v32 = 0;
        v33 = -8;
        do
        {
          *&v30[v32] = vrhaddq_u16(*&v29[v32], *&v29[v32 + 64]);
          v33 += 8;
          v32 += 16;
        }

        while (v33 < 0x18);
        v29 += 64;
        v30 += 64;
        --v31;
      }

      while (v31);
    }

    else
    {
      if (!a4)
      {
        v11 = 8;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12), *(v7 + v12 + 2));
            v13 += 8;
            v12 += 16;
          }

          while (v13 < 0x18);
          v10 += 64;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v43 = 9;
      do
      {
        v44 = 0;
        v45 = -8;
        do
        {
          *&v10[v44] = vrhaddq_u16(*(v7 + v44), *(v7 + v44 + 2));
          v45 += 8;
          v44 += 16;
        }

        while (v45 < 0x18);
        v10 += 64;
        v7 += v9;
        --v43;
      }

      while (v43);
      v46 = 8;
      v47 = vdupq_n_s16(8 - a4);
      v48 = vdupq_n_s16(a4);
      v49 = v78;
      v50 = v77;
      do
      {
        v51 = 0;
        v52 = -8;
        do
        {
          *&v50[v51] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v51], v47), *&v49[v51 + 64], v48), 3uLL);
          v52 += 8;
          v51 += 16;
        }

        while (v52 < 0x18);
        v49 += 64;
        v50 += 64;
        --v46;
      }

      while (v46);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v14 = 8;
    if (a4 == 4)
    {
      v53 = vdupq_n_s16(8 - a3);
      v54 = vdupq_n_s16(a3);
      v55 = v78;
      v56 = 9;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          *&v55[v57] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v57), v53), *(v7 + v57 + 2), v54), 3uLL);
          v58 += 8;
          v57 += 16;
        }

        while (v58 < 0x18);
        v55 += 64;
        v7 += 2 * a2;
        --v56;
      }

      while (v56);
      v59 = v78;
      v60 = v77;
      v61 = 8;
      do
      {
        v62 = 0;
        v63 = -8;
        do
        {
          *&v60[v62] = vrhaddq_u16(*&v59[v62], *&v59[v62 + 64]);
          v63 += 8;
          v62 += 16;
        }

        while (v63 < 0x18);
        v59 += 64;
        v60 += 64;
        --v61;
      }

      while (v61);
    }

    else
    {
      if (!a4)
      {
        v15 = vdupq_n_s16(8 - a3);
        v16 = vdupq_n_s16(a3);
        v17 = v78;
        do
        {
          v18 = 0;
          v19 = -8;
          do
          {
            *&v17[v18] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v18), v15), *(v7 + v18 + 2), v16), 3uLL);
            v19 += 8;
            v18 += 16;
          }

          while (v19 < 0x18);
          v17 += 64;
          v7 += 2 * a2;
          --v14;
        }

        while (v14);
        goto LABEL_40;
      }

      v64 = vdupq_n_s16(8 - a3);
      v65 = vdupq_n_s16(a3);
      v66 = v78;
      v67 = 9;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v68), v64), *(v7 + v68 + 2), v65), 3uLL);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x18);
        v66 += 64;
        v7 += 2 * a2;
        --v67;
      }

      while (v67);
      v70 = 8;
      v71 = vdupq_n_s16(8 - a4);
      v72 = vdupq_n_s16(a4);
      v73 = v78;
      v74 = v77;
      do
      {
        v75 = 0;
        v76 = -8;
        do
        {
          *&v74[v75] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v73[v75], v71), *&v73[v75 + 64], v72), 3uLL);
          v76 += 8;
          v75 += 16;
        }

        while (v76 < 0x18);
        v73 += 64;
        v74 += 64;
        --v70;
      }

      while (v70);
    }

LABEL_67:
    v42 = v77;
    return sub_277A6EC34(v42 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v20 = 2 * a2;
    v21 = v78;
    v22 = 8;
    v23 = v7 + v20;
    do
    {
      v24 = 0;
      v25 = -8;
      do
      {
        *&v21[v24] = vrhaddq_u16(*(v7 + v24), *(v23 + v24));
        v25 += 8;
        v24 += 16;
      }

      while (v25 < 0x18);
      v21 += 64;
      v23 += v20;
      v7 += v20;
      --v22;
    }

    while (v22);
    goto LABEL_40;
  }

  if (a4)
  {
    v34 = 8;
    v35 = vdupq_n_s16(8 - a4);
    v36 = vdupq_n_s16(a4);
    v37 = 2 * a2;
    v38 = v7 + v37;
    v39 = v78;
    do
    {
      v40 = 0;
      v41 = -8;
      do
      {
        *&v39[v40] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v40), v35), *(v38 + v40), v36), 3uLL);
        v41 += 8;
        v40 += 16;
      }

      while (v41 < 0x18);
      v39 += 64;
      v38 += v37;
      v7 += v37;
      --v34;
    }

    while (v34);
LABEL_40:
    v42 = v78;
    return sub_277A6EC34(v42 >> 1, 32, a5, a6, a7);
  }

  return sub_277A6EC34(a1, a2, a5, a6, a7);
}

uint64_t sub_277B76A78(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v9 = 2 * a2;
    v10 = v73;
    if (a4 == 4)
    {
      v27 = 17;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v10[v28] = vrhaddq_u16(*(v7 + v28), *(v7 + v28 + 2));
          v29 += 8;
          v28 += 16;
        }

        while (v29 < 0x18);
        v10 += 64;
        v7 += v9;
        --v27;
      }

      while (v27);
      v30 = v73;
      v31 = v72;
      v32 = 16;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33] = vrhaddq_u16(*&v30[v33], *&v30[v33 + 64]);
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v30 += 64;
        v31 += 64;
        --v32;
      }

      while (v32);
    }

    else
    {
      if (!a4)
      {
        v11 = 16;
        do
        {
          v12 = 0;
          v13 = -8;
          do
          {
            *&v10[v12] = vrhaddq_u16(*(v7 + v12), *(v7 + v12 + 2));
            v13 += 8;
            v12 += 16;
          }

          while (v13 < 0x18);
          v10 += 64;
          v7 += v9;
          --v11;
        }

        while (v11);
        goto LABEL_40;
      }

      v44 = 17;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v10[v45] = vrhaddq_u16(*(v7 + v45), *(v7 + v45 + 2));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v10 += 64;
        v7 += v9;
        --v44;
      }

      while (v44);
      v47 = vdupq_n_s16(8 - a4);
      v48 = vdupq_n_s16(a4);
      v49 = v73;
      v50 = v72;
      v51 = 16;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v50[v52] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v49[v52], v47), *&v49[v52 + 64], v48), 3uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v49 += 64;
        v50 += 64;
        --v51;
      }

      while (v51);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v14 = vdupq_n_s16(8 - a3);
    v15 = vdupq_n_s16(a3);
    v16 = 2 * a2;
    v17 = v73;
    if (a4 == 4)
    {
      v54 = 17;
      do
      {
        v55 = 0;
        v56 = -8;
        do
        {
          *&v17[v55] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v55), v14), *(v7 + v55 + 2), v15), 3uLL);
          v56 += 8;
          v55 += 16;
        }

        while (v56 < 0x18);
        v17 += 64;
        v7 += v16;
        --v54;
      }

      while (v54);
      v57 = v73;
      v58 = v72;
      v59 = 16;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60] = vrhaddq_u16(*&v57[v60], *&v57[v60 + 64]);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v57 += 64;
        v58 += 64;
        --v59;
      }

      while (v59);
    }

    else
    {
      if (!a4)
      {
        v18 = 16;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v17[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19), v14), *(v7 + v19 + 2), v15), 3uLL);
            v20 += 8;
            v19 += 16;
          }

          while (v20 < 0x18);
          v17 += 64;
          v7 += v16;
          --v18;
        }

        while (v18);
        goto LABEL_40;
      }

      v62 = 17;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v17[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v63), v14), *(v7 + v63 + 2), v15), 3uLL);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v17 += 64;
        v7 += v16;
        --v62;
      }

      while (v62);
      v65 = vdupq_n_s16(8 - a4);
      v66 = vdupq_n_s16(a4);
      v67 = v73;
      v68 = v72;
      v69 = 16;
      do
      {
        v70 = 0;
        v71 = -8;
        do
        {
          *&v68[v70] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v67[v70], v65), *&v67[v70 + 64], v66), 3uLL);
          v71 += 8;
          v70 += 16;
        }

        while (v71 < 0x18);
        v67 += 64;
        v68 += 64;
        --v69;
      }

      while (v69);
    }

LABEL_67:
    v43 = v72;
    return sub_277A6ED2C(v43 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v21 = 2 * a2;
    v22 = v73;
    v23 = 16;
    v24 = v7 + v21;
    do
    {
      v25 = 0;
      v26 = -8;
      do
      {
        *&v22[v25] = vrhaddq_u16(*(v7 + v25), *(v24 + v25));
        v26 += 8;
        v25 += 16;
      }

      while (v26 < 0x18);
      v22 += 64;
      v24 += v21;
      v7 += v21;
      --v23;
    }

    while (v23);
    goto LABEL_40;
  }

  if (a4)
  {
    v35 = vdupq_n_s16(8 - a4);
    v36 = vdupq_n_s16(a4);
    v37 = 2 * a2;
    v38 = v7 + v37;
    v39 = v73;
    v40 = 16;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v39[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41), v35), *(v38 + v41), v36), 3uLL);
        v42 += 8;
        v41 += 16;
      }

      while (v42 < 0x18);
      v39 += 64;
      v38 += v37;
      v7 += v37;
      --v40;
    }

    while (v40);
LABEL_40:
    v43 = v73;
    return sub_277A6ED2C(v43 >> 1, 32, a5, a6, a7);
  }

  return sub_277A6ED2C(a1, a2, a5, a6, a7);
}

uint64_t sub_277B76F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82 = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v17 = 2 * v9;
    v18 = v81;
    if (v11 == 4)
    {
      v35 = 33;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          *&v18[v36] = vrhaddq_u16(*(v15 + v36), *(v15 + v36 + 2));
          v37 += 8;
          v36 += 16;
        }

        while (v37 < 0x18);
        v18 += 64;
        v15 += v17;
        --v35;
      }

      while (v35);
      v38 = v81;
      v39 = v80;
      v40 = 32;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41] = vrhaddq_u16(*&v38[v41], *&v38[v41 + 64]);
          v42 += 8;
          v41 += 16;
        }

        while (v42 < 0x18);
        v38 += 64;
        v39 += 64;
        --v40;
      }

      while (v40);
    }

    else
    {
      if (!v11)
      {
        v19 = 32;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrhaddq_u16(*(v15 + v20), *(v15 + v20 + 2));
            v21 += 8;
            v20 += 16;
          }

          while (v21 < 0x18);
          v18 += 64;
          v15 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v52 = 33;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v18[v53] = vrhaddq_u16(*(v15 + v53), *(v15 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v18 += 64;
        v15 += v17;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v11);
      v56 = vdupq_n_s16(v11);
      v57 = v81;
      v58 = v80;
      v59 = 32;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v57[v60], v55), *&v57[v60 + 64], v56), 3uLL);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x18);
        v57 += 64;
        v58 += 64;
        --v59;
      }

      while (v59);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v22 = vdupq_n_s16(8 - v10);
    v23 = vdupq_n_s16(v10);
    v24 = 2 * v9;
    v25 = v81;
    if (v11 == 4)
    {
      v62 = 33;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v25[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v63), v22), *(v15 + v63 + 2), v23), 3uLL);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v25 += 64;
        v15 += v24;
        --v62;
      }

      while (v62);
      v65 = v81;
      v66 = v80;
      v67 = 32;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68] = vrhaddq_u16(*&v65[v68], *&v65[v68 + 64]);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x18);
        v65 += 64;
        v66 += 64;
        --v67;
      }

      while (v67);
    }

    else
    {
      if (!v11)
      {
        v26 = 32;
        do
        {
          v27 = 0;
          v28 = -8;
          do
          {
            *&v25[v27] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v27), v22), *(v15 + v27 + 2), v23), 3uLL);
            v28 += 8;
            v27 += 16;
          }

          while (v28 < 0x18);
          v25 += 64;
          v15 += v24;
          --v26;
        }

        while (v26);
        goto LABEL_40;
      }

      v70 = 33;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v25[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v71), v22), *(v15 + v71 + 2), v23), 3uLL);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x18);
        v25 += 64;
        v15 += v24;
        --v70;
      }

      while (v70);
      v73 = vdupq_n_s16(8 - v11);
      v74 = vdupq_n_s16(v11);
      v75 = v81;
      v76 = v80;
      v77 = 32;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v76[v78] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v75[v78], v73), *&v75[v78 + 64], v74), 3uLL);
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x18);
        v75 += 64;
        v76 += 64;
        --v77;
      }

      while (v77);
    }

LABEL_67:
    v51 = v80;
    return sub_277A6EE24(v51 >> 1, 32, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v29 = 2 * v9;
    v30 = v81;
    v31 = 32;
    v32 = v15 + v29;
    do
    {
      v33 = 0;
      v34 = -8;
      do
      {
        *&v30[v33] = vrhaddq_u16(*(v15 + v33), *(v32 + v33));
        v34 += 8;
        v33 += 16;
      }

      while (v34 < 0x18);
      v30 += 64;
      v32 += v29;
      v15 += v29;
      --v31;
    }

    while (v31);
    goto LABEL_40;
  }

  if (v11)
  {
    v43 = vdupq_n_s16(8 - v11);
    v44 = vdupq_n_s16(v11);
    v45 = 2 * v9;
    v46 = v15 + v45;
    v47 = v81;
    v48 = 32;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        *&v47[v49] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v49), v43), *(v46 + v49), v44), 3uLL);
        v50 += 8;
        v49 += 16;
      }

      while (v50 < 0x18);
      v47 += 64;
      v46 += v45;
      v15 += v45;
      --v48;
    }

    while (v48);
LABEL_40:
    v51 = v81;
    return sub_277A6EE24(v51 >> 1, 32, v12, v13, v14);
  }

  return sub_277A6EE24(v8, v9, v12, v13, v14);
}

uint64_t sub_277B77410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v81[520] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v17 = 2 * v9;
    v18 = v81;
    if (v11 == 4)
    {
      v35 = 65;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          *&v18[v36] = vrhaddq_u16(*(v15 + v36 * 8), *(v15 + v36 * 8 + 2));
          v37 += 8;
          v36 += 2;
        }

        while (v37 < 0x18);
        v18 += 8;
        v15 += v17;
        --v35;
      }

      while (v35);
      v38 = v81;
      v39 = v80;
      v40 = 64;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41 * 8] = vrhaddq_u16(*&v38[v41], *&v38[v41 + 8]);
          v42 += 8;
          v41 += 2;
        }

        while (v42 < 0x18);
        v38 += 8;
        v39 += 64;
        --v40;
      }

      while (v40);
    }

    else
    {
      if (!v11)
      {
        v19 = 64;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrhaddq_u16(*(v15 + v20 * 8), *(v15 + v20 * 8 + 2));
            v21 += 8;
            v20 += 2;
          }

          while (v21 < 0x18);
          v18 += 8;
          v15 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v18[v53] = vrhaddq_u16(*(v15 + v53 * 8), *(v15 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x18);
        v18 += 8;
        v15 += v17;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v11);
      v56 = vdupq_n_s16(v11);
      v57 = v81;
      v58 = v80;
      v59 = 64;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v57[v60], v55), *&v57[v60 + 8], v56), 3uLL);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x18);
        v57 += 8;
        v58 += 64;
        --v59;
      }

      while (v59);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v22 = vdupq_n_s16(8 - v10);
    v23 = vdupq_n_s16(v10);
    v24 = 2 * v9;
    v25 = v81;
    if (v11 == 4)
    {
      v62 = 65;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v25[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v63 * 8), v22), *(v15 + v63 * 8 + 2), v23), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x18);
        v25 += 8;
        v15 += v24;
        --v62;
      }

      while (v62);
      v65 = v81;
      v66 = v80;
      v67 = 64;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68 * 8] = vrhaddq_u16(*&v65[v68], *&v65[v68 + 8]);
          v69 += 8;
          v68 += 2;
        }

        while (v69 < 0x18);
        v65 += 8;
        v66 += 64;
        --v67;
      }

      while (v67);
    }

    else
    {
      if (!v11)
      {
        v26 = 64;
        do
        {
          v27 = 0;
          v28 = -8;
          do
          {
            *&v25[v27] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v27 * 8), v22), *(v15 + v27 * 8 + 2), v23), 3uLL);
            v28 += 8;
            v27 += 2;
          }

          while (v28 < 0x18);
          v25 += 8;
          v15 += v24;
          --v26;
        }

        while (v26);
        goto LABEL_40;
      }

      v70 = 65;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v25[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v71 * 8), v22), *(v15 + v71 * 8 + 2), v23), 3uLL);
          v72 += 8;
          v71 += 2;
        }

        while (v72 < 0x18);
        v25 += 8;
        v15 += v24;
        --v70;
      }

      while (v70);
      v73 = vdupq_n_s16(8 - v11);
      v74 = vdupq_n_s16(v11);
      v75 = v81;
      v76 = v80;
      v77 = 64;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v76[v78 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v75[v78], v73), *&v75[v78 + 8], v74), 3uLL);
          v79 += 8;
          v78 += 2;
        }

        while (v79 < 0x18);
        v75 += 8;
        v76 += 64;
        --v77;
      }

      while (v77);
    }

LABEL_67:
    v51 = v80;
    return sub_277A6EF1C(v51 >> 1, 32, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v29 = 2 * v9;
    v30 = v81;
    v31 = 64;
    v32 = v15 + v29;
    do
    {
      v33 = 0;
      v34 = -8;
      do
      {
        *&v30[v33] = vrhaddq_u16(*(v15 + v33 * 8), *(v32 + v33 * 8));
        v34 += 8;
        v33 += 2;
      }

      while (v34 < 0x18);
      v30 += 8;
      v32 += v29;
      v15 += v29;
      --v31;
    }

    while (v31);
    goto LABEL_40;
  }

  if (v11)
  {
    v43 = vdupq_n_s16(8 - v11);
    v44 = vdupq_n_s16(v11);
    v45 = 2 * v9;
    v46 = v15 + v45;
    v47 = v81;
    v48 = 64;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        *&v47[v49] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v49 * 8), v43), *(v46 + v49 * 8), v44), 3uLL);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x18);
      v47 += 8;
      v46 += v45;
      v15 += v45;
      --v48;
    }

    while (v48);
LABEL_40:
    v51 = v81;
    return sub_277A6EF1C(v51 >> 1, 32, v12, v13, v14);
  }

  return sub_277A6EF1C(v8, v9, v12, v13, v14);
}

uint64_t sub_277B77910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82 = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v17 = 2 * v9;
    v18 = v81;
    if (v11 == 4)
    {
      v35 = 17;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          *&v18[v36] = vrhaddq_u16(*(v15 + v36), *(v15 + v36 + 2));
          v37 += 8;
          v36 += 16;
        }

        while (v37 < 0x38);
        v18 += 128;
        v15 += v17;
        --v35;
      }

      while (v35);
      v38 = v81;
      v39 = v80;
      v40 = 16;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41] = vrhaddq_u16(*&v38[v41], *&v38[v41 + 128]);
          v42 += 8;
          v41 += 16;
        }

        while (v42 < 0x38);
        v38 += 128;
        v39 += 128;
        --v40;
      }

      while (v40);
    }

    else
    {
      if (!v11)
      {
        v19 = 16;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrhaddq_u16(*(v15 + v20), *(v15 + v20 + 2));
            v21 += 8;
            v20 += 16;
          }

          while (v21 < 0x38);
          v18 += 128;
          v15 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v52 = 17;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v18[v53] = vrhaddq_u16(*(v15 + v53), *(v15 + v53 + 2));
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x38);
        v18 += 128;
        v15 += v17;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v11);
      v56 = vdupq_n_s16(v11);
      v57 = v81;
      v58 = v80;
      v59 = 16;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v57[v60], v55), *&v57[v60 + 128], v56), 3uLL);
          v61 += 8;
          v60 += 16;
        }

        while (v61 < 0x38);
        v57 += 128;
        v58 += 128;
        --v59;
      }

      while (v59);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v22 = vdupq_n_s16(8 - v10);
    v23 = vdupq_n_s16(v10);
    v24 = 2 * v9;
    v25 = v81;
    if (v11 == 4)
    {
      v62 = 17;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v25[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v63), v22), *(v15 + v63 + 2), v23), 3uLL);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x38);
        v25 += 128;
        v15 += v24;
        --v62;
      }

      while (v62);
      v65 = v81;
      v66 = v80;
      v67 = 16;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68] = vrhaddq_u16(*&v65[v68], *&v65[v68 + 128]);
          v69 += 8;
          v68 += 16;
        }

        while (v69 < 0x38);
        v65 += 128;
        v66 += 128;
        --v67;
      }

      while (v67);
    }

    else
    {
      if (!v11)
      {
        v26 = 16;
        do
        {
          v27 = 0;
          v28 = -8;
          do
          {
            *&v25[v27] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v27), v22), *(v15 + v27 + 2), v23), 3uLL);
            v28 += 8;
            v27 += 16;
          }

          while (v28 < 0x38);
          v25 += 128;
          v15 += v24;
          --v26;
        }

        while (v26);
        goto LABEL_40;
      }

      v70 = 17;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v25[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v71), v22), *(v15 + v71 + 2), v23), 3uLL);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x38);
        v25 += 128;
        v15 += v24;
        --v70;
      }

      while (v70);
      v73 = vdupq_n_s16(8 - v11);
      v74 = vdupq_n_s16(v11);
      v75 = v81;
      v76 = v80;
      v77 = 16;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v76[v78] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v75[v78], v73), *&v75[v78 + 128], v74), 3uLL);
          v79 += 8;
          v78 += 16;
        }

        while (v79 < 0x38);
        v75 += 128;
        v76 += 128;
        --v77;
      }

      while (v77);
    }

LABEL_67:
    v51 = v80;
    return sub_277A6F024(v51 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v29 = 2 * v9;
    v30 = v81;
    v31 = 16;
    v32 = v15 + v29;
    do
    {
      v33 = 0;
      v34 = -8;
      do
      {
        *&v30[v33] = vrhaddq_u16(*(v15 + v33), *(v32 + v33));
        v34 += 8;
        v33 += 16;
      }

      while (v34 < 0x38);
      v30 += 128;
      v32 += v29;
      v15 += v29;
      --v31;
    }

    while (v31);
    goto LABEL_40;
  }

  if (v11)
  {
    v43 = vdupq_n_s16(8 - v11);
    v44 = vdupq_n_s16(v11);
    v45 = 2 * v9;
    v46 = v15 + v45;
    v47 = v81;
    v48 = 16;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        *&v47[v49] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v49), v43), *(v46 + v49), v44), 3uLL);
        v50 += 8;
        v49 += 16;
      }

      while (v50 < 0x38);
      v47 += 128;
      v46 += v45;
      v15 += v45;
      --v48;
    }

    while (v48);
LABEL_40:
    v51 = v81;
    return sub_277A6F024(v51 >> 1, 64, v12, v13, v14);
  }

  return sub_277A6F024(v8, v9, v12, v13, v14);
}

uint64_t sub_277B77DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v81[528] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v17 = 2 * v9;
    v18 = v81;
    if (v11 == 4)
    {
      v35 = 33;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          *&v18[v36] = vrhaddq_u16(*(v15 + v36 * 8), *(v15 + v36 * 8 + 2));
          v37 += 8;
          v36 += 2;
        }

        while (v37 < 0x38);
        v18 += 16;
        v15 += v17;
        --v35;
      }

      while (v35);
      v38 = v81;
      v39 = v80;
      v40 = 32;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41 * 8] = vrhaddq_u16(*&v38[v41], *&v38[v41 + 16]);
          v42 += 8;
          v41 += 2;
        }

        while (v42 < 0x38);
        v38 += 16;
        v39 += 128;
        --v40;
      }

      while (v40);
    }

    else
    {
      if (!v11)
      {
        v19 = 32;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrhaddq_u16(*(v15 + v20 * 8), *(v15 + v20 * 8 + 2));
            v21 += 8;
            v20 += 2;
          }

          while (v21 < 0x38);
          v18 += 16;
          v15 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v52 = 33;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v18[v53] = vrhaddq_u16(*(v15 + v53 * 8), *(v15 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v18 += 16;
        v15 += v17;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v11);
      v56 = vdupq_n_s16(v11);
      v57 = v81;
      v58 = v80;
      v59 = 32;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v57[v60], v55), *&v57[v60 + 16], v56), 3uLL);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x38);
        v57 += 16;
        v58 += 128;
        --v59;
      }

      while (v59);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v22 = vdupq_n_s16(8 - v10);
    v23 = vdupq_n_s16(v10);
    v24 = 2 * v9;
    v25 = v81;
    if (v11 == 4)
    {
      v62 = 33;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v25[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v63 * 8), v22), *(v15 + v63 * 8 + 2), v23), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v25 += 16;
        v15 += v24;
        --v62;
      }

      while (v62);
      v65 = v81;
      v66 = v80;
      v67 = 32;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68 * 8] = vrhaddq_u16(*&v65[v68], *&v65[v68 + 16]);
          v69 += 8;
          v68 += 2;
        }

        while (v69 < 0x38);
        v65 += 16;
        v66 += 128;
        --v67;
      }

      while (v67);
    }

    else
    {
      if (!v11)
      {
        v26 = 32;
        do
        {
          v27 = 0;
          v28 = -8;
          do
          {
            *&v25[v27] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v27 * 8), v22), *(v15 + v27 * 8 + 2), v23), 3uLL);
            v28 += 8;
            v27 += 2;
          }

          while (v28 < 0x38);
          v25 += 16;
          v15 += v24;
          --v26;
        }

        while (v26);
        goto LABEL_40;
      }

      v70 = 33;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v25[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v71 * 8), v22), *(v15 + v71 * 8 + 2), v23), 3uLL);
          v72 += 8;
          v71 += 2;
        }

        while (v72 < 0x38);
        v25 += 16;
        v15 += v24;
        --v70;
      }

      while (v70);
      v73 = vdupq_n_s16(8 - v11);
      v74 = vdupq_n_s16(v11);
      v75 = v81;
      v76 = v80;
      v77 = 32;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v76[v78 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v75[v78], v73), *&v75[v78 + 16], v74), 3uLL);
          v79 += 8;
          v78 += 2;
        }

        while (v79 < 0x38);
        v75 += 16;
        v76 += 128;
        --v77;
      }

      while (v77);
    }

LABEL_67:
    v51 = v80;
    return sub_277A6F11C(v51 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v29 = 2 * v9;
    v30 = v81;
    v31 = 32;
    v32 = v15 + v29;
    do
    {
      v33 = 0;
      v34 = -8;
      do
      {
        *&v30[v33] = vrhaddq_u16(*(v15 + v33 * 8), *(v32 + v33 * 8));
        v34 += 8;
        v33 += 2;
      }

      while (v34 < 0x38);
      v30 += 16;
      v32 += v29;
      v15 += v29;
      --v31;
    }

    while (v31);
    goto LABEL_40;
  }

  if (v11)
  {
    v43 = vdupq_n_s16(8 - v11);
    v44 = vdupq_n_s16(v11);
    v45 = 2 * v9;
    v46 = v15 + v45;
    v47 = v81;
    v48 = 32;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        *&v47[v49] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v49 * 8), v43), *(v46 + v49 * 8), v44), 3uLL);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x38);
      v47 += 16;
      v46 += v45;
      v15 += v45;
      --v48;
    }

    while (v48);
LABEL_40:
    v51 = v81;
    return sub_277A6F11C(v51 >> 1, 64, v12, v13, v14);
  }

  return sub_277A6F11C(v8, v9, v12, v13, v14);
}

uint64_t sub_277B782EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v81[1040] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v17 = 2 * v9;
    v18 = v81;
    if (v11 == 4)
    {
      v35 = 65;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          *&v18[v36] = vrhaddq_u16(*(v15 + v36 * 8), *(v15 + v36 * 8 + 2));
          v37 += 8;
          v36 += 2;
        }

        while (v37 < 0x38);
        v18 += 16;
        v15 += v17;
        --v35;
      }

      while (v35);
      v38 = v81;
      v39 = v80;
      v40 = 64;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41 * 8] = vrhaddq_u16(*&v38[v41], *&v38[v41 + 16]);
          v42 += 8;
          v41 += 2;
        }

        while (v42 < 0x38);
        v38 += 16;
        v39 += 128;
        --v40;
      }

      while (v40);
    }

    else
    {
      if (!v11)
      {
        v19 = 64;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrhaddq_u16(*(v15 + v20 * 8), *(v15 + v20 * 8 + 2));
            v21 += 8;
            v20 += 2;
          }

          while (v21 < 0x38);
          v18 += 16;
          v15 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v18[v53] = vrhaddq_u16(*(v15 + v53 * 8), *(v15 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v18 += 16;
        v15 += v17;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v11);
      v56 = vdupq_n_s16(v11);
      v57 = v81;
      v58 = v80;
      v59 = 64;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v57[v60], v55), *&v57[v60 + 16], v56), 3uLL);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x38);
        v57 += 16;
        v58 += 128;
        --v59;
      }

      while (v59);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v22 = vdupq_n_s16(8 - v10);
    v23 = vdupq_n_s16(v10);
    v24 = 2 * v9;
    v25 = v81;
    if (v11 == 4)
    {
      v62 = 65;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v25[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v63 * 8), v22), *(v15 + v63 * 8 + 2), v23), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v25 += 16;
        v15 += v24;
        --v62;
      }

      while (v62);
      v65 = v81;
      v66 = v80;
      v67 = 64;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68 * 8] = vrhaddq_u16(*&v65[v68], *&v65[v68 + 16]);
          v69 += 8;
          v68 += 2;
        }

        while (v69 < 0x38);
        v65 += 16;
        v66 += 128;
        --v67;
      }

      while (v67);
    }

    else
    {
      if (!v11)
      {
        v26 = 64;
        do
        {
          v27 = 0;
          v28 = -8;
          do
          {
            *&v25[v27] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v27 * 8), v22), *(v15 + v27 * 8 + 2), v23), 3uLL);
            v28 += 8;
            v27 += 2;
          }

          while (v28 < 0x38);
          v25 += 16;
          v15 += v24;
          --v26;
        }

        while (v26);
        goto LABEL_40;
      }

      v70 = 65;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v25[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v71 * 8), v22), *(v15 + v71 * 8 + 2), v23), 3uLL);
          v72 += 8;
          v71 += 2;
        }

        while (v72 < 0x38);
        v25 += 16;
        v15 += v24;
        --v70;
      }

      while (v70);
      v73 = vdupq_n_s16(8 - v11);
      v74 = vdupq_n_s16(v11);
      v75 = v81;
      v76 = v80;
      v77 = 64;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v76[v78 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v75[v78], v73), *&v75[v78 + 16], v74), 3uLL);
          v79 += 8;
          v78 += 2;
        }

        while (v79 < 0x38);
        v75 += 16;
        v76 += 128;
        --v77;
      }

      while (v77);
    }

LABEL_67:
    v51 = v80;
    return sub_277A6F224(v51 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v29 = 2 * v9;
    v30 = v81;
    v31 = 64;
    v32 = v15 + v29;
    do
    {
      v33 = 0;
      v34 = -8;
      do
      {
        *&v30[v33] = vrhaddq_u16(*(v15 + v33 * 8), *(v32 + v33 * 8));
        v34 += 8;
        v33 += 2;
      }

      while (v34 < 0x38);
      v30 += 16;
      v32 += v29;
      v15 += v29;
      --v31;
    }

    while (v31);
    goto LABEL_40;
  }

  if (v11)
  {
    v43 = vdupq_n_s16(8 - v11);
    v44 = vdupq_n_s16(v11);
    v45 = 2 * v9;
    v46 = v15 + v45;
    v47 = v81;
    v48 = 64;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        *&v47[v49] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v49 * 8), v43), *(v46 + v49 * 8), v44), 3uLL);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x38);
      v47 += 16;
      v46 += v45;
      v15 += v45;
      --v48;
    }

    while (v48);
LABEL_40:
    v51 = v81;
    return sub_277A6F224(v51 >> 1, 64, v12, v13, v14);
  }

  return sub_277A6F224(v8, v9, v12, v13, v14);
}

uint64_t sub_277B787EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v81[2064] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v17 = 2 * v9;
    v18 = v81;
    if (v11 == 4)
    {
      v35 = 129;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          *&v18[v36] = vrhaddq_u16(*(v15 + v36 * 8), *(v15 + v36 * 8 + 2));
          v37 += 8;
          v36 += 2;
        }

        while (v37 < 0x38);
        v18 += 16;
        v15 += v17;
        --v35;
      }

      while (v35);
      v38 = v81;
      v39 = v80;
      v40 = 128;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41 * 8] = vrhaddq_u16(*&v38[v41], *&v38[v41 + 16]);
          v42 += 8;
          v41 += 2;
        }

        while (v42 < 0x38);
        v38 += 16;
        v39 += 128;
        --v40;
      }

      while (v40);
    }

    else
    {
      if (!v11)
      {
        v19 = 128;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrhaddq_u16(*(v15 + v20 * 8), *(v15 + v20 * 8 + 2));
            v21 += 8;
            v20 += 2;
          }

          while (v21 < 0x38);
          v18 += 16;
          v15 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v52 = 129;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v18[v53] = vrhaddq_u16(*(v15 + v53 * 8), *(v15 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x38);
        v18 += 16;
        v15 += v17;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v11);
      v56 = vdupq_n_s16(v11);
      v57 = v81;
      v58 = v80;
      v59 = 128;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v57[v60], v55), *&v57[v60 + 16], v56), 3uLL);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x38);
        v57 += 16;
        v58 += 128;
        --v59;
      }

      while (v59);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v22 = vdupq_n_s16(8 - v10);
    v23 = vdupq_n_s16(v10);
    v24 = 2 * v9;
    v25 = v81;
    if (v11 == 4)
    {
      v62 = 129;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v25[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v63 * 8), v22), *(v15 + v63 * 8 + 2), v23), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v25 += 16;
        v15 += v24;
        --v62;
      }

      while (v62);
      v65 = v81;
      v66 = v80;
      v67 = 128;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68 * 8] = vrhaddq_u16(*&v65[v68], *&v65[v68 + 16]);
          v69 += 8;
          v68 += 2;
        }

        while (v69 < 0x38);
        v65 += 16;
        v66 += 128;
        --v67;
      }

      while (v67);
    }

    else
    {
      if (!v11)
      {
        v26 = 128;
        do
        {
          v27 = 0;
          v28 = -8;
          do
          {
            *&v25[v27] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v27 * 8), v22), *(v15 + v27 * 8 + 2), v23), 3uLL);
            v28 += 8;
            v27 += 2;
          }

          while (v28 < 0x38);
          v25 += 16;
          v15 += v24;
          --v26;
        }

        while (v26);
        goto LABEL_40;
      }

      v70 = 129;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v25[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v71 * 8), v22), *(v15 + v71 * 8 + 2), v23), 3uLL);
          v72 += 8;
          v71 += 2;
        }

        while (v72 < 0x38);
        v25 += 16;
        v15 += v24;
        --v70;
      }

      while (v70);
      v73 = vdupq_n_s16(8 - v11);
      v74 = vdupq_n_s16(v11);
      v75 = v81;
      v76 = v80;
      v77 = 128;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v76[v78 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v75[v78], v73), *&v75[v78 + 16], v74), 3uLL);
          v79 += 8;
          v78 += 2;
        }

        while (v79 < 0x38);
        v75 += 16;
        v76 += 128;
        --v77;
      }

      while (v77);
    }

LABEL_67:
    v51 = v80;
    return sub_277A6F358(v51 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v29 = 2 * v9;
    v30 = v81;
    v31 = 128;
    v32 = v15 + v29;
    do
    {
      v33 = 0;
      v34 = -8;
      do
      {
        *&v30[v33] = vrhaddq_u16(*(v15 + v33 * 8), *(v32 + v33 * 8));
        v34 += 8;
        v33 += 2;
      }

      while (v34 < 0x38);
      v30 += 16;
      v32 += v29;
      v15 += v29;
      --v31;
    }

    while (v31);
    goto LABEL_40;
  }

  if (v11)
  {
    v43 = vdupq_n_s16(8 - v11);
    v44 = vdupq_n_s16(v11);
    v45 = 2 * v9;
    v46 = v15 + v45;
    v47 = v81;
    v48 = 128;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        *&v47[v49] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v49 * 8), v43), *(v46 + v49 * 8), v44), 3uLL);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x38);
      v47 += 16;
      v46 += v45;
      v15 += v45;
      --v48;
    }

    while (v48);
LABEL_40:
    v51 = v81;
    return sub_277A6F358(v51 >> 1, 64, v12, v13, v14);
  }

  return sub_277A6F358(v8, v9, v12, v13, v14);
}

uint64_t sub_277B78CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v81[2080] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v17 = 2 * v9;
    v18 = v81;
    if (v11 == 4)
    {
      v35 = 65;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          *&v18[v36] = vrhaddq_u16(*(v15 + v36 * 8), *(v15 + v36 * 8 + 2));
          v37 += 8;
          v36 += 2;
        }

        while (v37 < 0x78);
        v18 += 32;
        v15 += v17;
        --v35;
      }

      while (v35);
      v38 = v81;
      v39 = v80;
      v40 = 64;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41 * 8] = vrhaddq_u16(*&v38[v41], *&v38[v41 + 32]);
          v42 += 8;
          v41 += 2;
        }

        while (v42 < 0x78);
        v38 += 32;
        v39 += 256;
        --v40;
      }

      while (v40);
    }

    else
    {
      if (!v11)
      {
        v19 = 64;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrhaddq_u16(*(v15 + v20 * 8), *(v15 + v20 * 8 + 2));
            v21 += 8;
            v20 += 2;
          }

          while (v21 < 0x78);
          v18 += 32;
          v15 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v52 = 65;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v18[v53] = vrhaddq_u16(*(v15 + v53 * 8), *(v15 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x78);
        v18 += 32;
        v15 += v17;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v11);
      v56 = vdupq_n_s16(v11);
      v57 = v81;
      v58 = v80;
      v59 = 64;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v57[v60], v55), *&v57[v60 + 32], v56), 3uLL);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x78);
        v57 += 32;
        v58 += 256;
        --v59;
      }

      while (v59);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v22 = vdupq_n_s16(8 - v10);
    v23 = vdupq_n_s16(v10);
    v24 = 2 * v9;
    v25 = v81;
    if (v11 == 4)
    {
      v62 = 65;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v25[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v63 * 8), v22), *(v15 + v63 * 8 + 2), v23), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x78);
        v25 += 32;
        v15 += v24;
        --v62;
      }

      while (v62);
      v65 = v81;
      v66 = v80;
      v67 = 64;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68 * 8] = vrhaddq_u16(*&v65[v68], *&v65[v68 + 32]);
          v69 += 8;
          v68 += 2;
        }

        while (v69 < 0x78);
        v65 += 32;
        v66 += 256;
        --v67;
      }

      while (v67);
    }

    else
    {
      if (!v11)
      {
        v26 = 64;
        do
        {
          v27 = 0;
          v28 = -8;
          do
          {
            *&v25[v27] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v27 * 8), v22), *(v15 + v27 * 8 + 2), v23), 3uLL);
            v28 += 8;
            v27 += 2;
          }

          while (v28 < 0x78);
          v25 += 32;
          v15 += v24;
          --v26;
        }

        while (v26);
        goto LABEL_40;
      }

      v70 = 65;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v25[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v71 * 8), v22), *(v15 + v71 * 8 + 2), v23), 3uLL);
          v72 += 8;
          v71 += 2;
        }

        while (v72 < 0x78);
        v25 += 32;
        v15 += v24;
        --v70;
      }

      while (v70);
      v73 = vdupq_n_s16(8 - v11);
      v74 = vdupq_n_s16(v11);
      v75 = v81;
      v76 = v80;
      v77 = 64;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v76[v78 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v75[v78], v73), *&v75[v78 + 32], v74), 3uLL);
          v79 += 8;
          v78 += 2;
        }

        while (v79 < 0x78);
        v75 += 32;
        v76 += 256;
        --v77;
      }

      while (v77);
    }

LABEL_67:
    v51 = v80;
    return sub_277A6F48C(v51 >> 1, 128, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v29 = 2 * v9;
    v30 = v81;
    v31 = 64;
    v32 = v15 + v29;
    do
    {
      v33 = 0;
      v34 = -8;
      do
      {
        *&v30[v33] = vrhaddq_u16(*(v15 + v33 * 8), *(v32 + v33 * 8));
        v34 += 8;
        v33 += 2;
      }

      while (v34 < 0x78);
      v30 += 32;
      v32 += v29;
      v15 += v29;
      --v31;
    }

    while (v31);
    goto LABEL_40;
  }

  if (v11)
  {
    v43 = vdupq_n_s16(8 - v11);
    v44 = vdupq_n_s16(v11);
    v45 = 2 * v9;
    v46 = v15 + v45;
    v47 = v81;
    v48 = 64;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        *&v47[v49] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v49 * 8), v43), *(v46 + v49 * 8), v44), 3uLL);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x78);
      v47 += 32;
      v46 += v45;
      v15 += v45;
      --v48;
    }

    while (v48);
LABEL_40:
    v51 = v81;
    return sub_277A6F48C(v51 >> 1, 128, v12, v13, v14);
  }

  return sub_277A6F48C(v8, v9, v12, v13, v14);
}

uint64_t sub_277B791EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v81[4128] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v17 = 2 * v9;
    v18 = v81;
    if (v11 == 4)
    {
      v35 = 129;
      do
      {
        v36 = 0;
        v37 = -8;
        do
        {
          *&v18[v36] = vrhaddq_u16(*(v15 + v36 * 8), *(v15 + v36 * 8 + 2));
          v37 += 8;
          v36 += 2;
        }

        while (v37 < 0x78);
        v18 += 32;
        v15 += v17;
        --v35;
      }

      while (v35);
      v38 = v81;
      v39 = v80;
      v40 = 128;
      do
      {
        v41 = 0;
        v42 = -8;
        do
        {
          *&v39[v41 * 8] = vrhaddq_u16(*&v38[v41], *&v38[v41 + 32]);
          v42 += 8;
          v41 += 2;
        }

        while (v42 < 0x78);
        v38 += 32;
        v39 += 256;
        --v40;
      }

      while (v40);
    }

    else
    {
      if (!v11)
      {
        v19 = 128;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrhaddq_u16(*(v15 + v20 * 8), *(v15 + v20 * 8 + 2));
            v21 += 8;
            v20 += 2;
          }

          while (v21 < 0x78);
          v18 += 32;
          v15 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v52 = 129;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v18[v53] = vrhaddq_u16(*(v15 + v53 * 8), *(v15 + v53 * 8 + 2));
          v54 += 8;
          v53 += 2;
        }

        while (v54 < 0x78);
        v18 += 32;
        v15 += v17;
        --v52;
      }

      while (v52);
      v55 = vdupq_n_s16(8 - v11);
      v56 = vdupq_n_s16(v11);
      v57 = v81;
      v58 = v80;
      v59 = 128;
      do
      {
        v60 = 0;
        v61 = -8;
        do
        {
          *&v58[v60 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v57[v60], v55), *&v57[v60 + 32], v56), 3uLL);
          v61 += 8;
          v60 += 2;
        }

        while (v61 < 0x78);
        v57 += 32;
        v58 += 256;
        --v59;
      }

      while (v59);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v22 = vdupq_n_s16(8 - v10);
    v23 = vdupq_n_s16(v10);
    v24 = 2 * v9;
    v25 = v81;
    if (v11 == 4)
    {
      v62 = 129;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v25[v63] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v63 * 8), v22), *(v15 + v63 * 8 + 2), v23), 3uLL);
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x78);
        v25 += 32;
        v15 += v24;
        --v62;
      }

      while (v62);
      v65 = v81;
      v66 = v80;
      v67 = 128;
      do
      {
        v68 = 0;
        v69 = -8;
        do
        {
          *&v66[v68 * 8] = vrhaddq_u16(*&v65[v68], *&v65[v68 + 32]);
          v69 += 8;
          v68 += 2;
        }

        while (v69 < 0x78);
        v65 += 32;
        v66 += 256;
        --v67;
      }

      while (v67);
    }

    else
    {
      if (!v11)
      {
        v26 = 128;
        do
        {
          v27 = 0;
          v28 = -8;
          do
          {
            *&v25[v27] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v27 * 8), v22), *(v15 + v27 * 8 + 2), v23), 3uLL);
            v28 += 8;
            v27 += 2;
          }

          while (v28 < 0x78);
          v25 += 32;
          v15 += v24;
          --v26;
        }

        while (v26);
        goto LABEL_40;
      }

      v70 = 129;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v25[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v71 * 8), v22), *(v15 + v71 * 8 + 2), v23), 3uLL);
          v72 += 8;
          v71 += 2;
        }

        while (v72 < 0x78);
        v25 += 32;
        v15 += v24;
        --v70;
      }

      while (v70);
      v73 = vdupq_n_s16(8 - v11);
      v74 = vdupq_n_s16(v11);
      v75 = v81;
      v76 = v80;
      v77 = 128;
      do
      {
        v78 = 0;
        v79 = -8;
        do
        {
          *&v76[v78 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v75[v78], v73), *&v75[v78 + 32], v74), 3uLL);
          v79 += 8;
          v78 += 2;
        }

        while (v79 < 0x78);
        v75 += 32;
        v76 += 256;
        --v77;
      }

      while (v77);
    }

LABEL_67:
    v51 = v80;
    return sub_277A6F5C0(v51 >> 1, 128, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v29 = 2 * v9;
    v30 = v81;
    v31 = 128;
    v32 = v15 + v29;
    do
    {
      v33 = 0;
      v34 = -8;
      do
      {
        *&v30[v33] = vrhaddq_u16(*(v15 + v33 * 8), *(v32 + v33 * 8));
        v34 += 8;
        v33 += 2;
      }

      while (v34 < 0x78);
      v30 += 32;
      v32 += v29;
      v15 += v29;
      --v31;
    }

    while (v31);
    goto LABEL_40;
  }

  if (v11)
  {
    v43 = vdupq_n_s16(8 - v11);
    v44 = vdupq_n_s16(v11);
    v45 = 2 * v9;
    v46 = v15 + v45;
    v47 = v81;
    v48 = 128;
    do
    {
      v49 = 0;
      v50 = -8;
      do
      {
        *&v47[v49] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v49 * 8), v43), *(v46 + v49 * 8), v44), 3uLL);
        v50 += 8;
        v49 += 2;
      }

      while (v50 < 0x78);
      v47 += 32;
      v46 += v45;
      v15 += v45;
      --v48;
    }

    while (v48);
LABEL_40:
    v51 = v81;
    return sub_277A6F5C0(v51 >> 1, 128, v12, v13, v14);
  }

  return sub_277A6F5C0(v8, v9, v12, v13, v14);
}

uint64_t sub_277B796F0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8, uint64_t a9)
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
  return sub_2779958B4(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B79808(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8, uint64_t a9)
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
  return sub_27799593C(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B79920(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v26[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 80);
  sub_277B79A68(v26, v25, 8, 8, 8u, 4, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 64);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 5);
}

uint64_t sub_277B79A68(uint64_t result, uint64_t a2, int a3, int a4, unsigned int a5, int a6, unsigned int a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, __int16 a11, __int16 a12, __int16 a13)
{
  a9.i16[0] = a11;
  a10.i16[0] = a13;
  v13 = vdupq_n_s16(8 - a7);
  v14 = 2 * a3;
  v15 = vdupq_n_s16(a7);
  v16 = result + 2 * a4;
  do
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(result + v17), v13), *(v16 + v17), v15), 3uLL);
      *(a2 + v17) = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(a8 + v17), a10, 0), *v19.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(a8 + v17), a10, 0), v19, a9, 0), 4uLL);
      v18 += 8;
      v17 += 16;
    }

    while (v18 < a5);
    a8 += v17;
    a2 += 2 * a5;
    v16 += v14;
    result += v14;
    --a6;
  }

  while (a6);
  return result;
}

uint64_t sub_277B79AF8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v26[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 144);
  sub_277B79A68(v26, v25, 8, 8, 8u, 8, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 128);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 6);
}

uint64_t sub_277B79C48(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v26[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 272);
  sub_277B79A68(v26, v25, 8, 8, 8u, 16, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 256);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 7);
}

uint64_t sub_277B79D98(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v131 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v14 + 18);
      do
      {
        v55 = &v130[v53];
        v56 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v57 = vrhaddq_u16(*(v54 - 2), *v54);
        *v55 = v56;
        v55[1] = v57;
        v53 += 32;
        v54 = (v54 + 2 * a2);
      }

      while (v53 != 288);
      v56.i16[0] = *(a11 + 4);
      v57.i16[0] = *(a11 + 8);
      v58 = v130;
      v59 = v129;
      v60 = 8;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *v15++;
          v65 = vrhaddq_u16(*&v58[2 * v61], *&v58[2 * v61 + 32]);
          *&v59[2 * v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v64.i8, *v57.i8, 0), *v65.i8, *v56.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v64, *v57.i8, 0), v65, *v56.i8, 0), 4uLL);
          v61 = 8;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        v58 += 32;
        v59 += 32;
        --v60;
      }

      while (v60);
      v66 = 2 * a5;
      v67 = v129;
      v31 = 0uLL;
      v68 = 8;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v34 = vpadalq_s16(v34, v72);
          v31 = vmlal_s16(v31, *v72.i8, *v72.i8);
          v33 = vmlal_high_s16(v33, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      v80 = 0;
      v81 = (v14 + 18);
      do
      {
        v82 = &v130[v80];
        v83 = vrhaddq_u16(*(v81 - 18), v81[-1]);
        v84 = vrhaddq_u16(*(v81 - 2), *v81);
        *v82 = v83;
        v82[1] = v84;
        v80 += 32;
        v81 = (v81 + 2 * a2);
      }

      while (v80 != 288);
      v85 = v129;
      v86 = 8;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 8, a4, v15, *v83.i8, *v84.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v87 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v88 = 0;
        v89 = 1;
        do
        {
          v90 = v89;
          v91 = vsubq_s16(*&v85[2 * v88], *(v87 + 2 * v88));
          v34 = vpadalq_s16(v34, v91);
          v31 = vmlal_s16(v31, *v91.i8, *v91.i8);
          v33 = vmlal_high_s16(v33, v91, v91);
          v88 = 8;
          v89 = 0;
        }

        while ((v90 & 1) != 0);
        v85 += 32;
        v87 += 2 * a6;
        --v86;
      }

      while (v86);
    }

    else
    {
      a9.i16[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v22 = v130;
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
      v29 = 2 * a5;
      v30 = v130;
      v31 = 0uLL;
      v32 = 8;
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
        v29 += 2 * a6;
        --v32;
      }

      while (v32);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v92 = 0;
      v93 = vdupq_n_s16(8 - a3);
      v94 = vdupq_n_s16(a3);
      v95 = (v14 + 18);
      do
      {
        v96 = &v130[v92];
        v97 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 2), v93), *v95, v94), 3uLL);
        *v96 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 18), v93), v95[-1], v94), 3uLL);
        v96[1] = v97;
        v92 += 32;
        v95 = (v95 + 2 * a2);
      }

      while (v92 != 288);
      v93.i16[0] = *(a11 + 4);
      v94.i16[0] = *(a11 + 8);
      v98 = v130;
      v99 = v129;
      v100 = 8;
      do
      {
        v101 = 0;
        v102 = 1;
        do
        {
          v103 = v102;
          v104 = *v15++;
          v105 = vrhaddq_u16(*&v98[2 * v101], *&v98[2 * v101 + 32]);
          *&v99[2 * v101] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v104.i8, *v94.i8, 0), *v105.i8, *v93.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v104, *v94.i8, 0), v105, *v93.i8, 0), 4uLL);
          v101 = 8;
          v102 = 0;
        }

        while ((v103 & 1) != 0);
        v98 += 32;
        v99 += 32;
        --v100;
      }

      while (v100);
      v106 = 2 * a5;
      v107 = v129;
      v31 = 0uLL;
      v108 = 8;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v109 = 0;
        v110 = 1;
        do
        {
          v111 = v110;
          v112 = vsubq_s16(*&v107[2 * v109], *(v106 + 2 * v109));
          v34 = vpadalq_s16(v34, v112);
          v31 = vmlal_s16(v31, *v112.i8, *v112.i8);
          v33 = vmlal_high_s16(v33, v112, v112);
          v109 = 8;
          v110 = 0;
        }

        while ((v111 & 1) != 0);
        v107 += 32;
        v106 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else if (a4)
    {
      v113 = 0;
      v114 = vdupq_n_s16(8 - a3);
      v115 = vdupq_n_s16(a3);
      v116 = (v14 + 18);
      do
      {
        v117 = &v130[v113];
        v118 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 2), v114), *v116, v115), 3uLL);
        *v117 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 18), v114), v116[-1], v115), 3uLL);
        v117[1] = v118;
        v113 += 32;
        v116 = (v116 + 2 * a2);
      }

      while (v113 != 288);
      v119 = v129;
      v120 = 8;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 8, a4, v15, *v114.i8, *v115.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v121 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v122 = 0;
        v123 = 1;
        do
        {
          v124 = v123;
          v125 = vsubq_s16(*&v119[2 * v122], *(v121 + 2 * v122));
          v34 = vpadalq_s16(v34, v125);
          v31 = vmlal_s16(v31, *v125.i8, *v125.i8);
          v33 = vmlal_high_s16(v33, v125, v125);
          v122 = 8;
          v123 = 0;
        }

        while ((v124 & 1) != 0);
        v119 += 32;
        v121 += 2 * a6;
        --v120;
      }

      while (v120);
    }

    else
    {
      v39 = v130;
      v40 = 8;
      sub_277B79A68(v14, v130, a2, 1, 0x10u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v41 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = vsubq_s16(*&v39[2 * v42], *(v41 + 2 * v42));
          v34 = vpadalq_s16(v34, v45);
          v31 = vmlal_s16(v31, *v45.i8, *v45.i8);
          v33 = vmlal_high_s16(v33, v45, v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v41 += 2 * a6;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    if (a4 == 4)
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v46 = v130;
      v47 = 8;
      do
      {
        v48 = 0;
        v49 = 1;
        do
        {
          v50 = v49;
          v51 = *v15++;
          v52 = vrhaddq_u16(*(v14 + 2 * v48), *(v14 + 2 * v48 + 2 * a2));
          *&v46[2 * v48] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v51.i8, a10, 0), *v52.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v51, a10, 0), v52, a9, 0), 4uLL);
          v48 = 8;
          v49 = 0;
        }

        while ((v50 & 1) != 0);
        v14 += 2 * a2;
        v46 += 32;
        --v47;
      }

      while (v47);
    }

    else if (a4)
    {
      sub_277B79A68(v14, v130, a2, a2, 0x10u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
    }

    else
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v16 = v130;
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

    v73 = 2 * a5;
    v74 = v130;
    v31 = 0uLL;
    v75 = 8;
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
      v73 += 2 * a6;
      --v75;
    }

    while (v75);
  }

  v126 = vaddvq_s32(v34);
  v127 = vaddlvq_u32(vaddq_s32(v33, v31));
  *a7 = v127;
  return v127 - ((v126 * v126) >> 7);
}

uint64_t sub_277B7A510(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v131 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v14 + 18);
      do
      {
        v55 = &v130[v53];
        v56 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v57 = vrhaddq_u16(*(v54 - 2), *v54);
        *v55 = v56;
        v55[1] = v57;
        v53 += 32;
        v54 = (v54 + 2 * a2);
      }

      while (v53 != 544);
      v56.i16[0] = *(a11 + 4);
      v57.i16[0] = *(a11 + 8);
      v58 = v130;
      v59 = v129;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *v15++;
          v65 = vrhaddq_u16(*&v58[2 * v61], *&v58[2 * v61 + 32]);
          *&v59[2 * v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v64.i8, *v57.i8, 0), *v65.i8, *v56.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v64, *v57.i8, 0), v65, *v56.i8, 0), 4uLL);
          v61 = 8;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        v58 += 32;
        v59 += 32;
        --v60;
      }

      while (v60);
      v66 = 2 * a5;
      v67 = v129;
      v31 = 0uLL;
      v68 = 16;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v34 = vpadalq_s16(v34, v72);
          v31 = vmlal_s16(v31, *v72.i8, *v72.i8);
          v33 = vmlal_high_s16(v33, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      v80 = 0;
      v81 = (v14 + 18);
      do
      {
        v82 = &v130[v80];
        v83 = vrhaddq_u16(*(v81 - 18), v81[-1]);
        v84 = vrhaddq_u16(*(v81 - 2), *v81);
        *v82 = v83;
        v82[1] = v84;
        v80 += 32;
        v81 = (v81 + 2 * a2);
      }

      while (v80 != 544);
      v85 = v129;
      v86 = 16;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 16, a4, v15, *v83.i8, *v84.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v87 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v88 = 0;
        v89 = 1;
        do
        {
          v90 = v89;
          v91 = vsubq_s16(*&v85[2 * v88], *(v87 + 2 * v88));
          v34 = vpadalq_s16(v34, v91);
          v31 = vmlal_s16(v31, *v91.i8, *v91.i8);
          v33 = vmlal_high_s16(v33, v91, v91);
          v88 = 8;
          v89 = 0;
        }

        while ((v90 & 1) != 0);
        v85 += 32;
        v87 += 2 * a6;
        --v86;
      }

      while (v86);
    }

    else
    {
      a9.i16[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v22 = v130;
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
      v29 = 2 * a5;
      v30 = v130;
      v31 = 0uLL;
      v32 = 16;
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
        v29 += 2 * a6;
        --v32;
      }

      while (v32);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v92 = 0;
      v93 = vdupq_n_s16(8 - a3);
      v94 = vdupq_n_s16(a3);
      v95 = (v14 + 18);
      do
      {
        v96 = &v130[v92];
        v97 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 2), v93), *v95, v94), 3uLL);
        *v96 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 18), v93), v95[-1], v94), 3uLL);
        v96[1] = v97;
        v92 += 32;
        v95 = (v95 + 2 * a2);
      }

      while (v92 != 544);
      v93.i16[0] = *(a11 + 4);
      v94.i16[0] = *(a11 + 8);
      v98 = v130;
      v99 = v129;
      v100 = 16;
      do
      {
        v101 = 0;
        v102 = 1;
        do
        {
          v103 = v102;
          v104 = *v15++;
          v105 = vrhaddq_u16(*&v98[2 * v101], *&v98[2 * v101 + 32]);
          *&v99[2 * v101] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v104.i8, *v94.i8, 0), *v105.i8, *v93.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v104, *v94.i8, 0), v105, *v93.i8, 0), 4uLL);
          v101 = 8;
          v102 = 0;
        }

        while ((v103 & 1) != 0);
        v98 += 32;
        v99 += 32;
        --v100;
      }

      while (v100);
      v106 = 2 * a5;
      v107 = v129;
      v31 = 0uLL;
      v108 = 16;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v109 = 0;
        v110 = 1;
        do
        {
          v111 = v110;
          v112 = vsubq_s16(*&v107[2 * v109], *(v106 + 2 * v109));
          v34 = vpadalq_s16(v34, v112);
          v31 = vmlal_s16(v31, *v112.i8, *v112.i8);
          v33 = vmlal_high_s16(v33, v112, v112);
          v109 = 8;
          v110 = 0;
        }

        while ((v111 & 1) != 0);
        v107 += 32;
        v106 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else if (a4)
    {
      v113 = 0;
      v114 = vdupq_n_s16(8 - a3);
      v115 = vdupq_n_s16(a3);
      v116 = (v14 + 18);
      do
      {
        v117 = &v130[v113];
        v118 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 2), v114), *v116, v115), 3uLL);
        *v117 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 18), v114), v116[-1], v115), 3uLL);
        v117[1] = v118;
        v113 += 32;
        v116 = (v116 + 2 * a2);
      }

      while (v113 != 544);
      v119 = v129;
      v120 = 16;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 16, a4, v15, *v114.i8, *v115.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v121 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v122 = 0;
        v123 = 1;
        do
        {
          v124 = v123;
          v125 = vsubq_s16(*&v119[2 * v122], *(v121 + 2 * v122));
          v34 = vpadalq_s16(v34, v125);
          v31 = vmlal_s16(v31, *v125.i8, *v125.i8);
          v33 = vmlal_high_s16(v33, v125, v125);
          v122 = 8;
          v123 = 0;
        }

        while ((v124 & 1) != 0);
        v119 += 32;
        v121 += 2 * a6;
        --v120;
      }

      while (v120);
    }

    else
    {
      v39 = v130;
      v40 = 16;
      sub_277B79A68(v14, v130, a2, 1, 0x10u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v41 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = vsubq_s16(*&v39[2 * v42], *(v41 + 2 * v42));
          v34 = vpadalq_s16(v34, v45);
          v31 = vmlal_s16(v31, *v45.i8, *v45.i8);
          v33 = vmlal_high_s16(v33, v45, v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v41 += 2 * a6;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    if (a4 == 4)
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v46 = v130;
      v47 = 16;
      do
      {
        v48 = 0;
        v49 = 1;
        do
        {
          v50 = v49;
          v51 = *v15++;
          v52 = vrhaddq_u16(*(v14 + 2 * v48), *(v14 + 2 * v48 + 2 * a2));
          *&v46[2 * v48] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v51.i8, a10, 0), *v52.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v51, a10, 0), v52, a9, 0), 4uLL);
          v48 = 8;
          v49 = 0;
        }

        while ((v50 & 1) != 0);
        v14 += 2 * a2;
        v46 += 32;
        --v47;
      }

      while (v47);
    }

    else if (a4)
    {
      sub_277B79A68(v14, v130, a2, a2, 0x10u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
    }

    else
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v16 = v130;
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

    v73 = 2 * a5;
    v74 = v130;
    v31 = 0uLL;
    v75 = 16;
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
      v73 += 2 * a6;
      --v75;
    }

    while (v75);
  }

  v126 = vaddvq_s32(v34);
  v127 = vaddlvq_u32(vaddq_s32(v33, v31));
  *a7 = v127;
  return v127 - ((v126 * v126) >> 8);
}

uint64_t sub_277B7AC88(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v131 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v14 + 18);
      do
      {
        v55 = &v130[v53];
        v56 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v57 = vrhaddq_u16(*(v54 - 2), *v54);
        *v55 = v56;
        v55[1] = v57;
        v53 += 32;
        v54 = (v54 + 2 * a2);
      }

      while (v53 != 1056);
      v56.i16[0] = *(a11 + 4);
      v57.i16[0] = *(a11 + 8);
      v58 = v130;
      v59 = v129;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *v15++;
          v65 = vrhaddq_u16(*&v58[2 * v61], *&v58[2 * v61 + 32]);
          *&v59[2 * v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v64.i8, *v57.i8, 0), *v65.i8, *v56.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v64, *v57.i8, 0), v65, *v56.i8, 0), 4uLL);
          v61 = 8;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        v58 += 32;
        v59 += 32;
        --v60;
      }

      while (v60);
      v66 = 2 * a5;
      v67 = v129;
      v31 = 0uLL;
      v68 = 32;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v34 = vpadalq_s16(v34, v72);
          v31 = vmlal_s16(v31, *v72.i8, *v72.i8);
          v33 = vmlal_high_s16(v33, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      v80 = 0;
      v81 = (v14 + 18);
      do
      {
        v82 = &v130[v80];
        v83 = vrhaddq_u16(*(v81 - 18), v81[-1]);
        v84 = vrhaddq_u16(*(v81 - 2), *v81);
        *v82 = v83;
        v82[1] = v84;
        v80 += 32;
        v81 = (v81 + 2 * a2);
      }

      while (v80 != 1056);
      v85 = v129;
      v86 = 32;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 32, a4, v15, *v83.i8, *v84.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v87 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v88 = 0;
        v89 = 1;
        do
        {
          v90 = v89;
          v91 = vsubq_s16(*&v85[2 * v88], *(v87 + 2 * v88));
          v34 = vpadalq_s16(v34, v91);
          v31 = vmlal_s16(v31, *v91.i8, *v91.i8);
          v33 = vmlal_high_s16(v33, v91, v91);
          v88 = 8;
          v89 = 0;
        }

        while ((v90 & 1) != 0);
        v85 += 32;
        v87 += 2 * a6;
        --v86;
      }

      while (v86);
    }

    else
    {
      a9.i16[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v22 = v130;
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
      v29 = 2 * a5;
      v30 = v130;
      v31 = 0uLL;
      v32 = 32;
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
        v29 += 2 * a6;
        --v32;
      }

      while (v32);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v92 = 0;
      v93 = vdupq_n_s16(8 - a3);
      v94 = vdupq_n_s16(a3);
      v95 = (v14 + 18);
      do
      {
        v96 = &v130[v92];
        v97 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 2), v93), *v95, v94), 3uLL);
        *v96 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 18), v93), v95[-1], v94), 3uLL);
        v96[1] = v97;
        v92 += 32;
        v95 = (v95 + 2 * a2);
      }

      while (v92 != 1056);
      v93.i16[0] = *(a11 + 4);
      v94.i16[0] = *(a11 + 8);
      v98 = v130;
      v99 = v129;
      v100 = 32;
      do
      {
        v101 = 0;
        v102 = 1;
        do
        {
          v103 = v102;
          v104 = *v15++;
          v105 = vrhaddq_u16(*&v98[2 * v101], *&v98[2 * v101 + 32]);
          *&v99[2 * v101] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v104.i8, *v94.i8, 0), *v105.i8, *v93.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v104, *v94.i8, 0), v105, *v93.i8, 0), 4uLL);
          v101 = 8;
          v102 = 0;
        }

        while ((v103 & 1) != 0);
        v98 += 32;
        v99 += 32;
        --v100;
      }

      while (v100);
      v106 = 2 * a5;
      v107 = v129;
      v31 = 0uLL;
      v108 = 32;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v109 = 0;
        v110 = 1;
        do
        {
          v111 = v110;
          v112 = vsubq_s16(*&v107[2 * v109], *(v106 + 2 * v109));
          v34 = vpadalq_s16(v34, v112);
          v31 = vmlal_s16(v31, *v112.i8, *v112.i8);
          v33 = vmlal_high_s16(v33, v112, v112);
          v109 = 8;
          v110 = 0;
        }

        while ((v111 & 1) != 0);
        v107 += 32;
        v106 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else if (a4)
    {
      v113 = 0;
      v114 = vdupq_n_s16(8 - a3);
      v115 = vdupq_n_s16(a3);
      v116 = (v14 + 18);
      do
      {
        v117 = &v130[v113];
        v118 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 2), v114), *v116, v115), 3uLL);
        *v117 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 18), v114), v116[-1], v115), 3uLL);
        v117[1] = v118;
        v113 += 32;
        v116 = (v116 + 2 * a2);
      }

      while (v113 != 1056);
      v119 = v129;
      v120 = 32;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 32, a4, v15, *v114.i8, *v115.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v121 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v122 = 0;
        v123 = 1;
        do
        {
          v124 = v123;
          v125 = vsubq_s16(*&v119[2 * v122], *(v121 + 2 * v122));
          v34 = vpadalq_s16(v34, v125);
          v31 = vmlal_s16(v31, *v125.i8, *v125.i8);
          v33 = vmlal_high_s16(v33, v125, v125);
          v122 = 8;
          v123 = 0;
        }

        while ((v124 & 1) != 0);
        v119 += 32;
        v121 += 2 * a6;
        --v120;
      }

      while (v120);
    }

    else
    {
      v39 = v130;
      v40 = 32;
      sub_277B79A68(v14, v130, a2, 1, 0x10u, 32, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v41 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = vsubq_s16(*&v39[2 * v42], *(v41 + 2 * v42));
          v34 = vpadalq_s16(v34, v45);
          v31 = vmlal_s16(v31, *v45.i8, *v45.i8);
          v33 = vmlal_high_s16(v33, v45, v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v41 += 2 * a6;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    if (a4 == 4)
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v46 = v130;
      v47 = 32;
      do
      {
        v48 = 0;
        v49 = 1;
        do
        {
          v50 = v49;
          v51 = *v15++;
          v52 = vrhaddq_u16(*(v14 + 2 * v48), *(v14 + 2 * v48 + 2 * a2));
          *&v46[2 * v48] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v51.i8, a10, 0), *v52.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v51, a10, 0), v52, a9, 0), 4uLL);
          v48 = 8;
          v49 = 0;
        }

        while ((v50 & 1) != 0);
        v14 += 2 * a2;
        v46 += 32;
        --v47;
      }

      while (v47);
    }

    else if (a4)
    {
      sub_277B79A68(v14, v130, a2, a2, 0x10u, 32, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
    }

    else
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v16 = v130;
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

    v73 = 2 * a5;
    v74 = v130;
    v31 = 0uLL;
    v75 = 32;
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
      v73 += 2 * a6;
      --v75;
    }

    while (v75);
  }

  v126 = vaddvq_s32(v34);
  v127 = vaddlvq_u32(vaddq_s32(v33, v31));
  *a7 = v127;
  return v127 - ((v126 * v126) >> 9);
}

uint64_t sub_277B7B400(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v118 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v47 = v117;
      v48 = 17;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          v51 = *(v14 + v49 + 2);
          v52 = vrhaddq_u16(*(v14 + v49), v51);
          *&v47[v49] = v52;
          v50 += 8;
          v49 += 16;
        }

        while (v50 < 0x18);
        v47 += 64;
        v14 += 2 * a2;
        --v48;
      }

      while (v48);
      v52.i16[0] = *(a11 + 4);
      v51.i16[0] = *(a11 + 8);
      v53 = v117;
      v54 = v116;
      v55 = 16;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = vrhaddq_u16(*&v53[v56], *&v53[v56 + 64]);
          *&v54[v56] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v56), *v51.i8, 0), *v58.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v56), *v51.i8, 0), v58, *v52.i8, 0), 4uLL);
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v15 += v56;
        v53 += 64;
        v54 += 64;
        --v55;
      }

      while (v55);
      v59 = 2 * a5;
      v60 = v116;
      v27 = 0uLL;
      v61 = 16;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v62 = 0;
        v63 = -8;
        do
        {
          v64 = vsubq_s16(*&v60[v62], *(v59 + v62));
          v30 = vpadalq_s16(v30, v64);
          v27 = vmlal_s16(v27, *v64.i8, *v64.i8);
          v29 = vmlal_high_s16(v29, v64, v64);
          v63 += 8;
          v62 += 16;
        }

        while (v63 < 0x18);
        v60 += 64;
        v59 += 2 * a6;
        --v61;
      }

      while (v61);
    }

    else if (a4)
    {
      v71 = v117;
      v72 = 17;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          v75 = *(v14 + v73 + 2);
          v76 = vrhaddq_u16(*(v14 + v73), v75);
          *&v71[v73] = v76;
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v71 += 64;
        v14 += 2 * a2;
        --v72;
      }

      while (v72);
      v77 = v116;
      v78 = 16;
      sub_277B79A68(v117, v116, 32, 32, 0x20u, 16, a4, v15, *v76.i8, *v75.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v79 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v80 = 0;
        v81 = -8;
        do
        {
          v82 = vsubq_s16(*&v77[v80], *(v79 + v80));
          v30 = vpadalq_s16(v30, v82);
          v27 = vmlal_s16(v27, *v82.i8, *v82.i8);
          v29 = vmlal_high_s16(v29, v82, v82);
          v81 += 8;
          v80 += 16;
        }

        while (v81 < 0x18);
        v77 += 64;
        v79 += 2 * a6;
        --v78;
      }

      while (v78);
    }

    else
    {
      a9.i16[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v20 = v117;
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
      v25 = 2 * a5;
      v26 = v117;
      v27 = 0uLL;
      v28 = 16;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v31 = 0;
        v32 = -8;
        do
        {
          v33 = vsubq_s16(*&v26[v31], *(v25 + v31));
          v30 = vpadalq_s16(v30, v33);
          v27 = vmlal_s16(v27, *v33.i8, *v33.i8);
          v29 = vmlal_high_s16(v29, v33, v33);
          v32 += 8;
          v31 += 16;
        }

        while (v32 < 0x18);
        v26 += 64;
        v25 += 2 * a6;
        --v28;
      }

      while (v28);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v83 = vdupq_n_s16(8 - a3);
      v84 = vdupq_n_s16(a3);
      v85 = v117;
      v86 = 17;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v87), v83), *(v14 + v87 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v85 += 64;
        v14 += 2 * a2;
        --v86;
      }

      while (v86);
      v83.i16[0] = *(a11 + 4);
      v84.i16[0] = *(a11 + 8);
      v89 = v117;
      v90 = v116;
      v91 = 16;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vrhaddq_u16(*&v89[v92], *&v89[v92 + 64]);
          *&v90[v92] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v92), *v84.i8, 0), *v94.i8, *v83.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v92), *v84.i8, 0), v94, *v83.i8, 0), 4uLL);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v15 += v92;
        v89 += 64;
        v90 += 64;
        --v91;
      }

      while (v91);
      v95 = 2 * a5;
      v96 = v116;
      v27 = 0uLL;
      v97 = 16;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v98 = 0;
        v99 = -8;
        do
        {
          v100 = vsubq_s16(*&v96[v98], *(v95 + v98));
          v30 = vpadalq_s16(v30, v100);
          v27 = vmlal_s16(v27, *v100.i8, *v100.i8);
          v29 = vmlal_high_s16(v29, v100, v100);
          v99 += 8;
          v98 += 16;
        }

        while (v99 < 0x18);
        v96 += 64;
        v95 += 2 * a6;
        --v97;
      }

      while (v97);
    }

    else if (a4)
    {
      v101 = vdupq_n_s16(8 - a3);
      v102 = vdupq_n_s16(a3);
      v103 = v117;
      v104 = 17;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v105), v101), *(v14 + v105 + 2), v102), 3uLL);
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x18);
        v103 += 64;
        v14 += 2 * a2;
        --v104;
      }

      while (v104);
      v107 = v116;
      v108 = 16;
      sub_277B79A68(v117, v116, 32, 32, 0x20u, 16, a4, v15, *v101.i8, *v102.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v109 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v107[v110], *(v109 + v110));
          v30 = vpadalq_s16(v30, v112);
          v27 = vmlal_s16(v27, *v112.i8, *v112.i8);
          v29 = vmlal_high_s16(v29, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v107 += 64;
        v109 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else
    {
      v34 = v117;
      v35 = 16;
      sub_277B79A68(v14, v117, a2, 1, 0x20u, 16, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v36 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v34[v37], *(v36 + v37));
          v30 = vpadalq_s16(v30, v39);
          v27 = vmlal_s16(v27, *v39.i8, *v39.i8);
          v29 = vmlal_high_s16(v29, v39, v39);
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v34 += 64;
        v36 += 2 * a6;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    if (a4 == 4)
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v40 = 2 * a2;
      v41 = v14 + v40;
      v42 = v117;
      v43 = 16;
      do
      {
        v44 = 0;
        v45 = -8;
        do
        {
          v46 = vrhaddq_u16(*(v14 + v44), *(v41 + v44));
          *&v42[v44] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v44), a10, 0), *v46.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v44), a10, 0), v46, a9, 0), 4uLL);
          v45 += 8;
          v44 += 16;
        }

        while (v45 < 0x18);
        v15 += v44;
        v42 += 64;
        v41 += v40;
        v14 += v40;
        --v43;
      }

      while (v43);
    }

    else if (a4)
    {
      sub_277B79A68(v14, v117, a2, a2, 0x20u, 16, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
    }

    else
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v16 = v117;
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

    v65 = 2 * a5;
    v66 = v117;
    v27 = 0uLL;
    v67 = 16;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      v68 = 0;
      v69 = -8;
      do
      {
        v70 = vsubq_s16(*&v66[v68], *(v65 + v68));
        v30 = vpadalq_s16(v30, v70);
        v27 = vmlal_s16(v27, *v70.i8, *v70.i8);
        v29 = vmlal_high_s16(v29, v70, v70);
        v69 += 8;
        v68 += 16;
      }

      while (v69 < 0x18);
      v66 += 64;
      v65 += 2 * a6;
      --v67;
    }

    while (v67);
  }

  v113 = vaddvq_s32(v30);
  v114 = vaddlvq_u32(vaddq_s32(v29, v27));
  *a7 = v114;
  return v114 - ((v113 * v113) >> 9);
}

uint64_t sub_277B7BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      v56 = 33;
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

        while (v58 < 0x18);
        v55 += 64;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 32;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64], *&v61[v64 + 64]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x18);
        v23 += v64;
        v61 += 64;
        v62 += 64;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 32;
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

        while (v71 < 0x18);
        v68 += 64;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 33;
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

        while (v82 < 0x18);
        v79 += 64;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 32;
      sub_277B79A68(v125, v124, 32, 32, 0x20u, 32, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v89 < 0x18);
        v85 += 64;
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
      v29 = 32;
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

        while (v31 < 0x18);
        v23 += v30;
        v28 += 64;
        v21 += 2 * v10;
        --v29;
      }

      while (v29);
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 32;
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

        while (v40 < 0x18);
        v34 += 64;
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
      v94 = 33;
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

        while (v96 < 0x18);
        v93 += 64;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 32;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100], *&v97[v100 + 64]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x18);
        v23 += v100;
        v97 += 64;
        v98 += 64;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 32;
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

        while (v107 < 0x18);
        v104 += 64;
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
      v112 = 33;
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

        while (v114 < 0x18);
        v111 += 64;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 32;
      sub_277B79A68(v125, v124, 32, 32, 0x20u, 32, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v119 < 0x18);
        v115 += 64;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 32;
      sub_277B79A68(v21, v125, v10, 1, 0x20u, 32, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v46 < 0x18);
        v42 += 64;
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
      v51 = 32;
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

        while (v53 < 0x18);
        v23 += v52;
        v50 += 64;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x20u, 32, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 32;
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

        while (v27 < 0x18);
        v23 += v26;
        v24 += 64;
        v21 += 2 * v10;
        --v25;
      }

      while (v25);
    }

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 32;
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

      while (v77 < 0x18);
      v74 += 64;
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

uint64_t sub_277B7C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[520] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 65;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x18);
        v55 += 8;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 64;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 8]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x18);
        v23 += v64;
        v61 += 8;
        v62 += 64;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 64;
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

        while (v71 < 0x18);
        v68 += 64;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 65;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x18);
        v79 += 8;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 64;
      sub_277B79A68(v125, v124, 32, 32, 0x20u, 64, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v89 < 0x18);
        v85 += 64;
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
      v29 = 64;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
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
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x18);
        v34 += 8;
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
      v94 = 65;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x18);
        v93 += 8;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 64;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 8]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x18);
        v23 += v100;
        v97 += 8;
        v98 += 64;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 64;
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

        while (v107 < 0x18);
        v104 += 64;
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
      v112 = 65;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x18);
        v111 += 8;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 64;
      sub_277B79A68(v125, v124, 32, 32, 0x20u, 64, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v119 < 0x18);
        v115 += 64;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 64;
      sub_277B79A68(v21, v125, v10, 1, 0x20u, 64, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x18);
        v42 += 8;
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
      v51 = 64;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v23 += v52;
        v50 += 8;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x20u, 64, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 64;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
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

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 64;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x18);
      v74 += 8;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 11);
}

uint64_t sub_277B7CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[528] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 33;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x38);
        v55 += 16;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 32;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 16]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v23 += v64;
        v61 += 16;
        v62 += 128;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 32;
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
      v80 = 33;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v79 += 16;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 32;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 32, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
      v29 = 32;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
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
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 32;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x38);
        v34 += 16;
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
      v94 = 33;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x38);
        v93 += 16;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 32;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 16]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x38);
        v23 += v100;
        v97 += 16;
        v98 += 128;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 32;
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
      v112 = 33;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x38);
        v111 += 16;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 32;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 32, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
      v43 = 32;
      sub_277B79A68(v21, v125, v10, 1, 0x40u, 32, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v42 += 16;
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
      v51 = 32;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x38);
        v23 += v52;
        v50 += 16;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x40u, 32, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 32;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
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

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 32;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x38);
      v74 += 16;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 11);
}

uint64_t sub_277B7D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[1040] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 65;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x38);
        v55 += 16;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 64;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 16]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v23 += v64;
        v61 += 16;
        v62 += 128;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 64;
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
      v80 = 65;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v79 += 16;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 64;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 64, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
      v29 = 64;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
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
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x38);
        v34 += 16;
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
      v94 = 65;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x38);
        v93 += 16;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 64;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 16]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x38);
        v23 += v100;
        v97 += 16;
        v98 += 128;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 64;
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
      v112 = 65;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x38);
        v111 += 16;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 64;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 64, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
      v43 = 64;
      sub_277B79A68(v21, v125, v10, 1, 0x40u, 64, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v42 += 16;
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
      v51 = 64;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x38);
        v23 += v52;
        v50 += 16;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x40u, 64, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 64;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
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

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 64;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x38);
      v74 += 16;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 12);
}

uint64_t sub_277B7DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[2064] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 129;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x38);
        v55 += 16;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 128;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 16]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v23 += v64;
        v61 += 16;
        v62 += 128;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 128;
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
      v80 = 129;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x38);
        v79 += 16;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 128;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 128, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
      v29 = 128;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
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
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 128;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x38);
        v34 += 16;
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
      v94 = 129;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x38);
        v93 += 16;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 128;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 16]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x38);
        v23 += v100;
        v97 += 16;
        v98 += 128;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 128;
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
      v112 = 129;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x38);
        v111 += 16;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 128;
      sub_277B79A68(v125, v124, 64, 64, 0x40u, 128, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
      v43 = 128;
      sub_277B79A68(v21, v125, v10, 1, 0x40u, 128, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x38);
        v42 += 16;
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
      v51 = 128;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x38);
        v23 += v52;
        v50 += 16;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x40u, 128, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 128;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
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

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 128;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x38);
      v74 += 16;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 13);
}

uint64_t sub_277B7E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[2080] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 65;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x78);
        v55 += 32;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 64;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 32]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x78);
        v23 += v64;
        v61 += 32;
        v62 += 256;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 64;
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

        while (v71 < 0x78);
        v68 += 256;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 65;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x78);
        v79 += 32;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 64;
      sub_277B79A68(v125, v124, 128, 128, 0x80u, 64, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v89 < 0x78);
        v85 += 256;
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
      v29 = 64;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
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
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 64;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x78);
        v34 += 32;
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
      v94 = 65;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x78);
        v93 += 32;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 64;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 32]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x78);
        v23 += v100;
        v97 += 32;
        v98 += 256;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 64;
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

        while (v107 < 0x78);
        v104 += 256;
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
      v112 = 65;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x78);
        v111 += 32;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 64;
      sub_277B79A68(v125, v124, 128, 128, 0x80u, 64, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v119 < 0x78);
        v115 += 256;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 64;
      sub_277B79A68(v21, v125, v10, 1, 0x80u, 64, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x78);
        v42 += 32;
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
      v51 = 64;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x78);
        v23 += v52;
        v50 += 32;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x80u, 64, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 64;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
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

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 64;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x78);
      v74 += 32;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 13);
}

uint64_t sub_277B7EA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v125[4128] = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = 2 * v22;
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v55 = v125;
      v56 = 129;
      do
      {
        v57 = 0;
        v58 = -8;
        do
        {
          v59 = *(v21 + v57 * 8 + 2);
          v60 = vrhaddq_u16(*(v21 + v57 * 8), v59);
          *&v55[v57] = v60;
          v58 += 8;
          v57 += 2;
        }

        while (v58 < 0x78);
        v55 += 32;
        v21 += 2 * v10;
        --v56;
      }

      while (v56);
      v60.i16[0] = *(a9 + 4);
      v59.i16[0] = *(a9 + 8);
      v61 = v125;
      v62 = v124;
      v63 = 128;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          v66 = vrhaddq_u16(*&v61[v64 / 8], *&v61[v64 / 8 + 32]);
          *&v62[v64] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v64), *v59.i8, 0), *v66.i8, *v60.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v64), *v59.i8, 0), v66, *v60.i8, 0), 4uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x78);
        v23 += v64;
        v61 += 32;
        v62 += 256;
        --v63;
      }

      while (v63);
      v67 = 2 * v13;
      v68 = v124;
      v35 = 0uLL;
      v69 = 128;
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

        while (v71 < 0x78);
        v68 += 256;
        v67 += 2 * v14;
        --v69;
      }

      while (v69);
    }

    else if (v12)
    {
      v79 = v125;
      v80 = 129;
      do
      {
        v81 = 0;
        v82 = -8;
        do
        {
          v83 = *(v21 + v81 * 8 + 2);
          v84 = vrhaddq_u16(*(v21 + v81 * 8), v83);
          *&v79[v81] = v84;
          v82 += 8;
          v81 += 2;
        }

        while (v82 < 0x78);
        v79 += 32;
        v21 += 2 * v10;
        --v80;
      }

      while (v80);
      v85 = v124;
      v86 = 128;
      sub_277B79A68(v125, v124, 128, 128, 0x80u, 128, v12, v23, *v84.i8, *v83.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v89 < 0x78);
        v85 += 256;
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
      v29 = 128;
      do
      {
        v30 = 0;
        v31 = -8;
        do
        {
          v32 = vrhaddq_u16(*(v21 + v30), *(v21 + v30 + 2));
          *&v28[v30 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v30), v16, 0), *v32.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v30), v16, 0), v32, v15, 0), 4uLL);
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
      v33 = 2 * v13;
      v34 = v125;
      v35 = 0uLL;
      v36 = 128;
      v37 = 0uLL;
      v38 = 0uLL;
      do
      {
        v39 = 0;
        v40 = -8;
        do
        {
          v41 = vsubq_s16(*&v34[v39], *(v33 + v39 * 8));
          v38 = vpadalq_s16(v38, v41);
          v35 = vmlal_s16(v35, *v41.i8, *v41.i8);
          v37 = vmlal_high_s16(v37, v41, v41);
          v40 += 8;
          v39 += 2;
        }

        while (v40 < 0x78);
        v34 += 32;
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
      v94 = 129;
      do
      {
        v95 = 0;
        v96 = -8;
        do
        {
          *&v93[v95] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v95 * 8), v91), *(v21 + v95 * 8 + 2), v92), 3uLL);
          v96 += 8;
          v95 += 2;
        }

        while (v96 < 0x78);
        v93 += 32;
        v21 += 2 * v10;
        --v94;
      }

      while (v94);
      v91.i16[0] = *(a9 + 4);
      v92.i16[0] = *(a9 + 8);
      v97 = v125;
      v98 = v124;
      v99 = 128;
      do
      {
        v100 = 0;
        v101 = -8;
        do
        {
          v102 = vrhaddq_u16(*&v97[v100 / 8], *&v97[v100 / 8 + 32]);
          *&v98[v100] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v100), *v92.i8, 0), *v102.i8, *v91.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v100), *v92.i8, 0), v102, *v91.i8, 0), 4uLL);
          v101 += 8;
          v100 += 16;
        }

        while (v101 < 0x78);
        v23 += v100;
        v97 += 32;
        v98 += 256;
        --v99;
      }

      while (v99);
      v103 = 2 * v13;
      v104 = v124;
      v35 = 0uLL;
      v105 = 128;
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

        while (v107 < 0x78);
        v104 += 256;
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
      v112 = 129;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v21 + v113 * 8), v109), *(v21 + v113 * 8 + 2), v110), 3uLL);
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x78);
        v111 += 32;
        v21 += 2 * v10;
        --v112;
      }

      while (v112);
      v115 = v124;
      v116 = 128;
      sub_277B79A68(v125, v124, 128, 128, 0x80u, 128, v12, v23, *v109.i8, *v110.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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

        while (v119 < 0x78);
        v115 += 256;
        v117 += 2 * v19;
        --v116;
      }

      while (v116);
    }

    else
    {
      v42 = v125;
      v43 = 128;
      sub_277B79A68(v21, v125, v10, 1, 0x80u, 128, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
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
          v47 = vsubq_s16(*&v42[v45], *(v44 + v45 * 8));
          v38 = vpadalq_s16(v38, v47);
          v35 = vmlal_s16(v35, *v47.i8, *v47.i8);
          v37 = vmlal_high_s16(v37, v47, v47);
          v46 += 8;
          v45 += 2;
        }

        while (v46 < 0x78);
        v42 += 32;
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
      v51 = 128;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          v54 = vrhaddq_u16(*(v21 + v52), *(v49 + v52));
          *&v50[v52 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v52), v16, 0), *v54.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v52), v16, 0), v54, v15, 0), 4uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x78);
        v23 += v52;
        v50 += 32;
        v49 += v48;
        v21 += v48;
        --v51;
      }

      while (v51);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v125, v10, v10, 0x80u, 128, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v125;
      v25 = 128;
      do
      {
        v26 = 0;
        v27 = -8;
        do
        {
          *&v24[v26 / 8] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v23 + v26), v16, 0), *(v21 + v26), v15, 0), 4uLL);
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

    v73 = 2 * v20;
    v74 = v125;
    v35 = 0uLL;
    v75 = 128;
    v37 = 0uLL;
    v38 = 0uLL;
    do
    {
      v76 = 0;
      v77 = -8;
      do
      {
        v78 = vsubq_s16(*&v74[v76], *(v73 + v76 * 8));
        v38 = vpadalq_s16(v38, v78);
        v35 = vmlal_s16(v35, *v78.i8, *v78.i8);
        v37 = vmlal_high_s16(v37, v78, v78);
        v77 += 8;
        v76 += 2;
      }

      while (v77 < 0x78);
      v74 += 32;
      v73 += 2 * v19;
      --v75;
    }

    while (v75);
  }

  v121 = vaddvq_s32(v38);
  v122 = vaddlvq_u32(vaddq_s32(v37, v35));
  *v18 = v122;
  return v122 - ((v121 * v121) >> 14);
}

uint64_t sub_277B7F248(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8, uint64_t a9)
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
  return sub_277997618(v20 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B7F368(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint64_t a9)
{
  v12 = 0;
  v27 = *MEMORY[0x277D85DE8];
  v13 = vdupq_n_s16(8 - a3);
  v14 = vdupq_n_s16(a3);
  v15 = (2 * a1 + 2);
  do
  {
    *&v26[v12] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 - 2), v13), *v15, v14), 3uLL);
    v12 += 16;
    v15 = (v15 + 2 * a2);
  }

  while (v12 != 528);
  sub_277B79A68(v26, v25, 8, 8, 8u, 32, a4, 2 * a8, *v13.i8, *v14.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
  v16 = 0;
  v17 = (2 * a5);
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  do
  {
    v21 = vsubq_s16(*&v25[v16], *v17);
    v20 = vpadalq_s16(v20, v21);
    v18 = vmlal_s16(v18, *v21.i8, *v21.i8);
    v19 = vmlal_high_s16(v19, v21, v21);
    v16 += 16;
    v17 = (v17 + 2 * a6);
  }

  while (v16 != 512);
  v22 = vaddlvq_u32(vaddq_s32(v19, v18));
  *a7 = v22;
  v23 = vaddvq_s32(v20);
  return v22 - ((v23 * v23) >> 8);
}

uint64_t sub_277B7F4B8(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v131 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = (2 * a8);
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v14 + 18);
      do
      {
        v55 = &v130[v53];
        v56 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v57 = vrhaddq_u16(*(v54 - 2), *v54);
        *v55 = v56;
        v55[1] = v57;
        v53 += 32;
        v54 = (v54 + 2 * a2);
      }

      while (v53 != 160);
      v56.i16[0] = *(a11 + 4);
      v57.i16[0] = *(a11 + 8);
      v58 = v130;
      v59 = v129;
      v60 = 4;
      do
      {
        v61 = 0;
        v62 = 1;
        do
        {
          v63 = v62;
          v64 = *v15++;
          v65 = vrhaddq_u16(*&v58[2 * v61], *&v58[2 * v61 + 32]);
          *&v59[2 * v61] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v64.i8, *v57.i8, 0), *v65.i8, *v56.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v64, *v57.i8, 0), v65, *v56.i8, 0), 4uLL);
          v61 = 8;
          v62 = 0;
        }

        while ((v63 & 1) != 0);
        v58 += 32;
        v59 += 32;
        --v60;
      }

      while (v60);
      v66 = 2 * a5;
      v67 = v129;
      v31 = 0uLL;
      v68 = 4;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = vsubq_s16(*&v67[2 * v69], *(v66 + 2 * v69));
          v34 = vpadalq_s16(v34, v72);
          v31 = vmlal_s16(v31, *v72.i8, *v72.i8);
          v33 = vmlal_high_s16(v33, v72, v72);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v67 += 32;
        v66 += 2 * a6;
        --v68;
      }

      while (v68);
    }

    else if (a4)
    {
      v80 = 0;
      v81 = (v14 + 18);
      do
      {
        v82 = &v130[v80];
        v83 = vrhaddq_u16(*(v81 - 18), v81[-1]);
        v84 = vrhaddq_u16(*(v81 - 2), *v81);
        *v82 = v83;
        v82[1] = v84;
        v80 += 32;
        v81 = (v81 + 2 * a2);
      }

      while (v80 != 160);
      v85 = v129;
      v86 = 4;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 4, a4, v15, *v83.i8, *v84.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v87 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v88 = 0;
        v89 = 1;
        do
        {
          v90 = v89;
          v91 = vsubq_s16(*&v85[2 * v88], *(v87 + 2 * v88));
          v34 = vpadalq_s16(v34, v91);
          v31 = vmlal_s16(v31, *v91.i8, *v91.i8);
          v33 = vmlal_high_s16(v33, v91, v91);
          v88 = 8;
          v89 = 0;
        }

        while ((v90 & 1) != 0);
        v85 += 32;
        v87 += 2 * a6;
        --v86;
      }

      while (v86);
    }

    else
    {
      a9.i16[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v22 = v130;
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
      v29 = 2 * a5;
      v30 = v130;
      v31 = 0uLL;
      v32 = 4;
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
        v29 += 2 * a6;
        --v32;
      }

      while (v32);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v92 = 0;
      v93 = vdupq_n_s16(8 - a3);
      v94 = vdupq_n_s16(a3);
      v95 = (v14 + 18);
      do
      {
        v96 = &v130[v92];
        v97 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 2), v93), *v95, v94), 3uLL);
        *v96 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v95 - 18), v93), v95[-1], v94), 3uLL);
        v96[1] = v97;
        v92 += 32;
        v95 = (v95 + 2 * a2);
      }

      while (v92 != 160);
      v93.i16[0] = *(a11 + 4);
      v94.i16[0] = *(a11 + 8);
      v98 = v130;
      v99 = v129;
      v100 = 4;
      do
      {
        v101 = 0;
        v102 = 1;
        do
        {
          v103 = v102;
          v104 = *v15++;
          v105 = vrhaddq_u16(*&v98[2 * v101], *&v98[2 * v101 + 32]);
          *&v99[2 * v101] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v104.i8, *v94.i8, 0), *v105.i8, *v93.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v104, *v94.i8, 0), v105, *v93.i8, 0), 4uLL);
          v101 = 8;
          v102 = 0;
        }

        while ((v103 & 1) != 0);
        v98 += 32;
        v99 += 32;
        --v100;
      }

      while (v100);
      v106 = 2 * a5;
      v107 = v129;
      v31 = 0uLL;
      v108 = 4;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v109 = 0;
        v110 = 1;
        do
        {
          v111 = v110;
          v112 = vsubq_s16(*&v107[2 * v109], *(v106 + 2 * v109));
          v34 = vpadalq_s16(v34, v112);
          v31 = vmlal_s16(v31, *v112.i8, *v112.i8);
          v33 = vmlal_high_s16(v33, v112, v112);
          v109 = 8;
          v110 = 0;
        }

        while ((v111 & 1) != 0);
        v107 += 32;
        v106 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else if (a4)
    {
      v113 = 0;
      v114 = vdupq_n_s16(8 - a3);
      v115 = vdupq_n_s16(a3);
      v116 = (v14 + 18);
      do
      {
        v117 = &v130[v113];
        v118 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 2), v114), *v116, v115), 3uLL);
        *v117 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v116 - 18), v114), v116[-1], v115), 3uLL);
        v117[1] = v118;
        v113 += 32;
        v116 = (v116 + 2 * a2);
      }

      while (v113 != 160);
      v119 = v129;
      v120 = 4;
      sub_277B79A68(v130, v129, 16, 16, 0x10u, 4, a4, v15, *v114.i8, *v115.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v121 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v122 = 0;
        v123 = 1;
        do
        {
          v124 = v123;
          v125 = vsubq_s16(*&v119[2 * v122], *(v121 + 2 * v122));
          v34 = vpadalq_s16(v34, v125);
          v31 = vmlal_s16(v31, *v125.i8, *v125.i8);
          v33 = vmlal_high_s16(v33, v125, v125);
          v122 = 8;
          v123 = 0;
        }

        while ((v124 & 1) != 0);
        v119 += 32;
        v121 += 2 * a6;
        --v120;
      }

      while (v120);
    }

    else
    {
      v39 = v130;
      v40 = 4;
      sub_277B79A68(v14, v130, a2, 1, 0x10u, 4, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v41 = 2 * a5;
      v31 = 0uLL;
      v33 = 0uLL;
      v34 = 0uLL;
      do
      {
        v42 = 0;
        v43 = 1;
        do
        {
          v44 = v43;
          v45 = vsubq_s16(*&v39[2 * v42], *(v41 + 2 * v42));
          v34 = vpadalq_s16(v34, v45);
          v31 = vmlal_s16(v31, *v45.i8, *v45.i8);
          v33 = vmlal_high_s16(v33, v45, v45);
          v42 = 8;
          v43 = 0;
        }

        while ((v44 & 1) != 0);
        v39 += 32;
        v41 += 2 * a6;
        --v40;
      }

      while (v40);
    }
  }

  else
  {
    if (a4 == 4)
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v46 = v130;
      v47 = 4;
      do
      {
        v48 = 0;
        v49 = 1;
        do
        {
          v50 = v49;
          v51 = *v15++;
          v52 = vrhaddq_u16(*(v14 + 2 * v48), *(v14 + 2 * v48 + 2 * a2));
          *&v46[2 * v48] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v51.i8, a10, 0), *v52.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v51, a10, 0), v52, a9, 0), 4uLL);
          v48 = 8;
          v49 = 0;
        }

        while ((v50 & 1) != 0);
        v14 += 2 * a2;
        v46 += 32;
        --v47;
      }

      while (v47);
    }

    else if (a4)
    {
      sub_277B79A68(v14, v130, a2, a2, 0x10u, 4, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
    }

    else
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v16 = v130;
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

    v73 = 2 * a5;
    v74 = v130;
    v31 = 0uLL;
    v75 = 4;
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
      v73 += 2 * a6;
      --v75;
    }

    while (v75);
  }

  v126 = vaddvq_s32(v34);
  v127 = vaddlvq_u32(vaddq_s32(v33, v31));
  *a7 = v127;
  return v127 - ((v126 * v126) >> 6);
}

uint64_t sub_277B7FC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v18 = v17;
  v19 = v14;
  v20 = v13;
  v139 = *MEMORY[0x277D85DE8];
  v21 = 2 * v9;
  v23 = (2 * v22);
  if (v11 == 4)
  {
    if (v12 == 4)
    {
      v61 = 0;
      v62 = (v21 + 18);
      do
      {
        v63 = &v138[v61];
        v64 = vrhaddq_u16(*(v62 - 18), v62[-1]);
        v65 = vrhaddq_u16(*(v62 - 2), *v62);
        *v63 = v64;
        v63[1] = v65;
        v61 += 32;
        v62 = (v62 + 2 * v10);
      }

      while (v61 != 2080);
      v64.i16[0] = *(a9 + 4);
      v65.i16[0] = *(a9 + 8);
      v66 = v138;
      v67 = v137;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = 1;
        do
        {
          v71 = v70;
          v72 = *v23++;
          v73 = vrhaddq_u16(*&v66[2 * v69], *&v66[2 * v69 + 32]);
          *&v67[2 * v69] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v72.i8, *v65.i8, 0), *v73.i8, *v64.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v72, *v65.i8, 0), v73, *v64.i8, 0), 4uLL);
          v69 = 8;
          v70 = 0;
        }

        while ((v71 & 1) != 0);
        v66 += 32;
        v67 += 32;
        --v68;
      }

      while (v68);
      v74 = 2 * v13;
      v75 = v137;
      v39 = 0uLL;
      v76 = 64;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v77 = 0;
        v78 = 1;
        do
        {
          v79 = v78;
          v80 = vsubq_s16(*&v75[2 * v77], *(v74 + 2 * v77));
          v42 = vpadalq_s16(v42, v80);
          v39 = vmlal_s16(v39, *v80.i8, *v80.i8);
          v41 = vmlal_high_s16(v41, v80, v80);
          v77 = 8;
          v78 = 0;
        }

        while ((v79 & 1) != 0);
        v75 += 32;
        v74 += 2 * v14;
        --v76;
      }

      while (v76);
    }

    else if (v12)
    {
      v88 = 0;
      v89 = (v21 + 18);
      do
      {
        v90 = &v138[v88];
        v91 = vrhaddq_u16(*(v89 - 18), v89[-1]);
        v92 = vrhaddq_u16(*(v89 - 2), *v89);
        *v90 = v91;
        v90[1] = v92;
        v88 += 32;
        v89 = (v89 + 2 * v10);
      }

      while (v88 != 2080);
      v93 = v137;
      v94 = 64;
      sub_277B79A68(v138, v137, 16, 16, 0x10u, 64, v12, v23, *v91.i8, *v92.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v95 = 2 * v20;
      v39 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v96 = 0;
        v97 = 1;
        do
        {
          v98 = v97;
          v99 = vsubq_s16(*&v93[2 * v96], *(v95 + 2 * v96));
          v42 = vpadalq_s16(v42, v99);
          v39 = vmlal_s16(v39, *v99.i8, *v99.i8);
          v41 = vmlal_high_s16(v41, v99, v99);
          v96 = 8;
          v97 = 0;
        }

        while ((v98 & 1) != 0);
        v93 += 32;
        v95 += 2 * v19;
        --v94;
      }

      while (v94);
    }

    else
    {
      v15.i16[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v30 = v138;
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
          *&v30[2 * v32] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v35.i8, v16, 0), *v36.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v35, v16, 0), v36, v15, 0), 4uLL);
          v32 = 8;
          v33 = 0;
        }

        while ((v34 & 1) != 0);
        v21 += 2 * v10;
        v30 += 32;
        --v31;
      }

      while (v31);
      v37 = 2 * v13;
      v38 = v138;
      v39 = 0uLL;
      v40 = 64;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v43 = 0;
        v44 = 1;
        do
        {
          v45 = v44;
          v46 = vsubq_s16(*&v38[2 * v43], *(v37 + 2 * v43));
          v42 = vpadalq_s16(v42, v46);
          v39 = vmlal_s16(v39, *v46.i8, *v46.i8);
          v41 = vmlal_high_s16(v41, v46, v46);
          v43 = 8;
          v44 = 0;
        }

        while ((v45 & 1) != 0);
        v38 += 32;
        v37 += 2 * v14;
        --v40;
      }

      while (v40);
    }
  }

  else if (v11)
  {
    if (v12 == 4)
    {
      v100 = 0;
      v101 = vdupq_n_s16(8 - v11);
      v102 = vdupq_n_s16(v11);
      v103 = (v21 + 18);
      do
      {
        v104 = &v138[v100];
        v105 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v103 - 2), v101), *v103, v102), 3uLL);
        *v104 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v103 - 18), v101), v103[-1], v102), 3uLL);
        v104[1] = v105;
        v100 += 32;
        v103 = (v103 + 2 * v10);
      }

      while (v100 != 2080);
      v101.i16[0] = *(a9 + 4);
      v102.i16[0] = *(a9 + 8);
      v106 = v138;
      v107 = v137;
      v108 = 64;
      do
      {
        v109 = 0;
        v110 = 1;
        do
        {
          v111 = v110;
          v112 = *v23++;
          v113 = vrhaddq_u16(*&v106[2 * v109], *&v106[2 * v109 + 32]);
          *&v107[2 * v109] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v112.i8, *v102.i8, 0), *v113.i8, *v101.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v112, *v102.i8, 0), v113, *v101.i8, 0), 4uLL);
          v109 = 8;
          v110 = 0;
        }

        while ((v111 & 1) != 0);
        v106 += 32;
        v107 += 32;
        --v108;
      }

      while (v108);
      v114 = 2 * v13;
      v115 = v137;
      v39 = 0uLL;
      v116 = 64;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v117 = 0;
        v118 = 1;
        do
        {
          v119 = v118;
          v120 = vsubq_s16(*&v115[2 * v117], *(v114 + 2 * v117));
          v42 = vpadalq_s16(v42, v120);
          v39 = vmlal_s16(v39, *v120.i8, *v120.i8);
          v41 = vmlal_high_s16(v41, v120, v120);
          v117 = 8;
          v118 = 0;
        }

        while ((v119 & 1) != 0);
        v115 += 32;
        v114 += 2 * v14;
        --v116;
      }

      while (v116);
    }

    else if (v12)
    {
      v121 = 0;
      v122 = vdupq_n_s16(8 - v11);
      v123 = vdupq_n_s16(v11);
      v124 = (v21 + 18);
      do
      {
        v125 = &v138[v121];
        v126 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v124 - 2), v122), *v124, v123), 3uLL);
        *v125 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v124 - 18), v122), v124[-1], v123), 3uLL);
        v125[1] = v126;
        v121 += 32;
        v124 = (v124 + 2 * v10);
      }

      while (v121 != 2080);
      v127 = v137;
      v128 = 64;
      sub_277B79A68(v138, v137, 16, 16, 0x10u, 64, v12, v23, *v122.i8, *v123.i8, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v129 = 2 * v20;
      v39 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v130 = 0;
        v131 = 1;
        do
        {
          v132 = v131;
          v133 = vsubq_s16(*&v127[2 * v130], *(v129 + 2 * v130));
          v42 = vpadalq_s16(v42, v133);
          v39 = vmlal_s16(v39, *v133.i8, *v133.i8);
          v41 = vmlal_high_s16(v41, v133, v133);
          v130 = 8;
          v131 = 0;
        }

        while ((v132 & 1) != 0);
        v127 += 32;
        v129 += 2 * v19;
        --v128;
      }

      while (v128);
    }

    else
    {
      v47 = v138;
      v48 = 64;
      sub_277B79A68(v21, v138, v10, 1, 0x10u, 64, v11, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
      v49 = 2 * v20;
      v39 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      do
      {
        v50 = 0;
        v51 = 1;
        do
        {
          v52 = v51;
          v53 = vsubq_s16(*&v47[2 * v50], *(v49 + 2 * v50));
          v42 = vpadalq_s16(v42, v53);
          v39 = vmlal_s16(v39, *v53.i8, *v53.i8);
          v41 = vmlal_high_s16(v41, v53, v53);
          v50 = 8;
          v51 = 0;
        }

        while ((v52 & 1) != 0);
        v47 += 32;
        v49 += 2 * v19;
        --v48;
      }

      while (v48);
    }
  }

  else
  {
    if (v12 == 4)
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v54 = v138;
      v55 = 64;
      do
      {
        v56 = 0;
        v57 = 1;
        do
        {
          v58 = v57;
          v59 = *v23++;
          v60 = vrhaddq_u16(*(v21 + 2 * v56), *(v21 + 2 * v56 + 2 * v10));
          *&v54[2 * v56] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v59.i8, v16, 0), *v60.i8, v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v59, v16, 0), v60, v15, 0), 4uLL);
          v56 = 8;
          v57 = 0;
        }

        while ((v58 & 1) != 0);
        v21 += 2 * v10;
        v54 += 32;
        --v55;
      }

      while (v55);
    }

    else if (v12)
    {
      sub_277B79A68(v21, v138, v10, v10, 0x10u, 64, v12, v23, v15, v16, *(a9 + 4), HIWORD(*(a9 + 4)), *(a9 + 8));
    }

    else
    {
      v15.i32[0] = *(a9 + 4);
      v16.i16[0] = *(a9 + 8);
      v24 = v138;
      v25 = 64;
      do
      {
        v26 = 0;
        v27 = 1;
        do
        {
          v28 = v27;
          v29 = *v23++;
          *&v24[2 * v26] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*v29.i8, v16, 0), *(v21 + 2 * v26), v15, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(v29, v16, 0), *(v21 + 2 * v26), v15, 0), 4uLL);
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

    v81 = 2 * v20;
    v82 = v138;
    v39 = 0uLL;
    v83 = 64;
    v41 = 0uLL;
    v42 = 0uLL;
    do
    {
      v84 = 0;
      v85 = 1;
      do
      {
        v86 = v85;
        v87 = vsubq_s16(*&v82[2 * v84], *(v81 + 2 * v84));
        v42 = vpadalq_s16(v42, v87);
        v39 = vmlal_s16(v39, *v87.i8, *v87.i8);
        v41 = vmlal_high_s16(v41, v87, v87);
        v84 = 8;
        v85 = 0;
      }

      while ((v86 & 1) != 0);
      v82 += 32;
      v81 += 2 * v19;
      --v83;
    }

    while (v83);
  }

  v134 = vaddvq_s32(v42);
  v135 = vaddlvq_u32(vaddq_s32(v41, v39));
  *v18 = v135;
  return v135 - ((v134 * v134) >> 10);
}

uint64_t sub_277B803C4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8, uint16x4_t a9, uint16x4_t a10, uint64_t a11)
{
  v118 = *MEMORY[0x277D85DE8];
  v14 = 2 * a1;
  v15 = 2 * a8;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v47 = v117;
      v48 = 9;
      do
      {
        v49 = 0;
        v50 = -8;
        do
        {
          v51 = *(v14 + v49 + 2);
          v52 = vrhaddq_u16(*(v14 + v49), v51);
          *&v47[v49] = v52;
          v50 += 8;
          v49 += 16;
        }

        while (v50 < 0x18);
        v47 += 64;
        v14 += 2 * a2;
        --v48;
      }

      while (v48);
      v52.i16[0] = *(a11 + 4);
      v51.i16[0] = *(a11 + 8);
      v53 = v117;
      v54 = v116;
      v55 = 8;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          v58 = vrhaddq_u16(*&v53[v56], *&v53[v56 + 64]);
          *&v54[v56] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v56), *v51.i8, 0), *v58.i8, *v52.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v56), *v51.i8, 0), v58, *v52.i8, 0), 4uLL);
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v15 += v56;
        v53 += 64;
        v54 += 64;
        --v55;
      }

      while (v55);
      v59 = 2 * a5;
      v60 = v116;
      v27 = 0uLL;
      v61 = 8;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v62 = 0;
        v63 = -8;
        do
        {
          v64 = vsubq_s16(*&v60[v62], *(v59 + v62));
          v30 = vpadalq_s16(v30, v64);
          v27 = vmlal_s16(v27, *v64.i8, *v64.i8);
          v29 = vmlal_high_s16(v29, v64, v64);
          v63 += 8;
          v62 += 16;
        }

        while (v63 < 0x18);
        v60 += 64;
        v59 += 2 * a6;
        --v61;
      }

      while (v61);
    }

    else if (a4)
    {
      v71 = v117;
      v72 = 9;
      do
      {
        v73 = 0;
        v74 = -8;
        do
        {
          v75 = *(v14 + v73 + 2);
          v76 = vrhaddq_u16(*(v14 + v73), v75);
          *&v71[v73] = v76;
          v74 += 8;
          v73 += 16;
        }

        while (v74 < 0x18);
        v71 += 64;
        v14 += 2 * a2;
        --v72;
      }

      while (v72);
      v77 = v116;
      v78 = 8;
      sub_277B79A68(v117, v116, 32, 32, 0x20u, 8, a4, v15, *v76.i8, *v75.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v79 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v80 = 0;
        v81 = -8;
        do
        {
          v82 = vsubq_s16(*&v77[v80], *(v79 + v80));
          v30 = vpadalq_s16(v30, v82);
          v27 = vmlal_s16(v27, *v82.i8, *v82.i8);
          v29 = vmlal_high_s16(v29, v82, v82);
          v81 += 8;
          v80 += 16;
        }

        while (v81 < 0x18);
        v77 += 64;
        v79 += 2 * a6;
        --v78;
      }

      while (v78);
    }

    else
    {
      a9.i16[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v20 = v117;
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
      v25 = 2 * a5;
      v26 = v117;
      v27 = 0uLL;
      v28 = 8;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v31 = 0;
        v32 = -8;
        do
        {
          v33 = vsubq_s16(*&v26[v31], *(v25 + v31));
          v30 = vpadalq_s16(v30, v33);
          v27 = vmlal_s16(v27, *v33.i8, *v33.i8);
          v29 = vmlal_high_s16(v29, v33, v33);
          v32 += 8;
          v31 += 16;
        }

        while (v32 < 0x18);
        v26 += 64;
        v25 += 2 * a6;
        --v28;
      }

      while (v28);
    }
  }

  else if (a3)
  {
    if (a4 == 4)
    {
      v83 = vdupq_n_s16(8 - a3);
      v84 = vdupq_n_s16(a3);
      v85 = v117;
      v86 = 9;
      do
      {
        v87 = 0;
        v88 = -8;
        do
        {
          *&v85[v87] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v87), v83), *(v14 + v87 + 2), v84), 3uLL);
          v88 += 8;
          v87 += 16;
        }

        while (v88 < 0x18);
        v85 += 64;
        v14 += 2 * a2;
        --v86;
      }

      while (v86);
      v83.i16[0] = *(a11 + 4);
      v84.i16[0] = *(a11 + 8);
      v89 = v117;
      v90 = v116;
      v91 = 8;
      do
      {
        v92 = 0;
        v93 = -8;
        do
        {
          v94 = vrhaddq_u16(*&v89[v92], *&v89[v92 + 64]);
          *&v90[v92] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v92), *v84.i8, 0), *v94.i8, *v83.i8, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v92), *v84.i8, 0), v94, *v83.i8, 0), 4uLL);
          v93 += 8;
          v92 += 16;
        }

        while (v93 < 0x18);
        v15 += v92;
        v89 += 64;
        v90 += 64;
        --v91;
      }

      while (v91);
      v95 = 2 * a5;
      v96 = v116;
      v27 = 0uLL;
      v97 = 8;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v98 = 0;
        v99 = -8;
        do
        {
          v100 = vsubq_s16(*&v96[v98], *(v95 + v98));
          v30 = vpadalq_s16(v30, v100);
          v27 = vmlal_s16(v27, *v100.i8, *v100.i8);
          v29 = vmlal_high_s16(v29, v100, v100);
          v99 += 8;
          v98 += 16;
        }

        while (v99 < 0x18);
        v96 += 64;
        v95 += 2 * a6;
        --v97;
      }

      while (v97);
    }

    else if (a4)
    {
      v101 = vdupq_n_s16(8 - a3);
      v102 = vdupq_n_s16(a3);
      v103 = v117;
      v104 = 9;
      do
      {
        v105 = 0;
        v106 = -8;
        do
        {
          *&v103[v105] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v14 + v105), v101), *(v14 + v105 + 2), v102), 3uLL);
          v106 += 8;
          v105 += 16;
        }

        while (v106 < 0x18);
        v103 += 64;
        v14 += 2 * a2;
        --v104;
      }

      while (v104);
      v107 = v116;
      v108 = 8;
      sub_277B79A68(v117, v116, 32, 32, 0x20u, 8, a4, v15, *v101.i8, *v102.i8, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v109 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v110 = 0;
        v111 = -8;
        do
        {
          v112 = vsubq_s16(*&v107[v110], *(v109 + v110));
          v30 = vpadalq_s16(v30, v112);
          v27 = vmlal_s16(v27, *v112.i8, *v112.i8);
          v29 = vmlal_high_s16(v29, v112, v112);
          v111 += 8;
          v110 += 16;
        }

        while (v111 < 0x18);
        v107 += 64;
        v109 += 2 * a6;
        --v108;
      }

      while (v108);
    }

    else
    {
      v34 = v117;
      v35 = 8;
      sub_277B79A68(v14, v117, a2, 1, 0x20u, 8, a3, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
      v36 = 2 * a5;
      v27 = 0uLL;
      v29 = 0uLL;
      v30 = 0uLL;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          v39 = vsubq_s16(*&v34[v37], *(v36 + v37));
          v30 = vpadalq_s16(v30, v39);
          v27 = vmlal_s16(v27, *v39.i8, *v39.i8);
          v29 = vmlal_high_s16(v29, v39, v39);
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v34 += 64;
        v36 += 2 * a6;
        --v35;
      }

      while (v35);
    }
  }

  else
  {
    if (a4 == 4)
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v40 = 2 * a2;
      v41 = v14 + v40;
      v42 = v117;
      v43 = 8;
      do
      {
        v44 = 0;
        v45 = -8;
        do
        {
          v46 = vrhaddq_u16(*(v14 + v44), *(v41 + v44));
          *&v42[v44] = vrshrn_high_n_s32(vrshrn_n_s32(vmlal_lane_u16(vmull_lane_u16(*(v15 + v44), a10, 0), *v46.i8, a9, 0), 4uLL), vmlal_high_lane_u16(vmull_high_lane_u16(*(v15 + v44), a10, 0), v46, a9, 0), 4uLL);
          v45 += 8;
          v44 += 16;
        }

        while (v45 < 0x18);
        v15 += v44;
        v42 += 64;
        v41 += v40;
        v14 += v40;
        --v43;
      }

      while (v43);
    }

    else if (a4)
    {
      sub_277B79A68(v14, v117, a2, a2, 0x20u, 8, a4, v15, a9, a10, *(a11 + 4), HIWORD(*(a11 + 4)), *(a11 + 8));
    }

    else
    {
      a9.i32[0] = *(a11 + 4);
      a10.i16[0] = *(a11 + 8);
      v16 = v117;
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

    v65 = 2 * a5;
    v66 = v117;
    v27 = 0uLL;
    v67 = 8;
    v29 = 0uLL;
    v30 = 0uLL;
    do
    {
      v68 = 0;
      v69 = -8;
      do
      {
        v70 = vsubq_s16(*&v66[v68], *(v65 + v68));
        v30 = vpadalq_s16(v30, v70);
        v27 = vmlal_s16(v27, *v70.i8, *v70.i8);
        v29 = vmlal_high_s16(v29, v70, v70);
        v69 += 8;
        v68 += 16;
      }

      while (v69 < 0x18);
      v66 += 64;
      v65 += 2 * a6;
      --v67;
    }

    while (v67);
  }

  v113 = vaddvq_s32(v30);
  v114 = vaddlvq_u32(vaddq_s32(v29, v27));
  *a7 = v114;
  return v114 - ((v113 * v113) >> 8);
}