uint64_t sub_277B3EB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v83 = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 17;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37), *(v15 + v37 + 2));
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x38);
        v19 += 128;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 16;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 128]);
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x38);
        v39 += 128;
        v40 += 128;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 16;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21), *(v15 + v21 + 2));
            v22 += 8;
            v21 += 16;
          }

          while (v22 < 0x38);
          v19 += 128;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 17;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54), *(v15 + v54 + 2));
          v55 += 8;
          v54 += 16;
        }

        while (v55 < 0x38);
        v19 += 128;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 128], v57), 3uLL);
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v58 += 128;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 17;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64), v23), *(v15 + v64 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v26 += 128;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 16;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 128]);
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v66 += 128;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 16;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28), v23), *(v15 + v28 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 16;
          }

          while (v29 < 0x38);
          v26 += 128;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 17;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72), v23), *(v15 + v72 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 16;
        }

        while (v73 < 0x38);
        v26 += 128;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 16;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 128], v75), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x38);
        v76 += 128;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277997C60(v52 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 16;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34), *(v33 + v34));
        v35 += 8;
        v34 += 16;
      }

      while (v35 < 0x38);
      v31 += 128;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50), v44), *(v47 + v50), v45), 3uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v48 += 128;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277997C60(v52 >> 1, 64, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997C60(v16, v9, v12, v13, v14);
}

uint64_t sub_277B3F014(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v7 = 0;
  v18[5] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 40);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 32);
  return sub_277996B04(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B3F10C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v7 = 0;
  v18[9] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 72);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 64);
  return sub_277996BAC(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B3F204(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 80);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 64);
  return sub_277996C54(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3F2FC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 144);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 128);
  return sub_277996CE0(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3F3FC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 272);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 256);
  return sub_277996D6C(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B3F4FC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[31] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 288);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 288);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 256);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 288);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 288);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 288);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 288);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 256);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 288);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 288);
    }

LABEL_35:
    v63 = v71;
    return sub_277996DF8(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 256);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 256);
LABEL_38:
    v63 = v72;
    return sub_277996DF8(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996DF8(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3F988(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[63] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 544);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 544);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 544);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 544);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 544);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 544);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 512);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 544);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 544);
    }

LABEL_35:
    v63 = v71;
    return sub_277996EA0(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 512);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 512);
LABEL_38:
    v63 = v72;
    return sub_277996EA0(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996EA0(v8, a2, a5, a6, a7);
}

uint64_t sub_277B3FE14(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[127] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 1056);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 1056);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 1056);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 1056);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 1056);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 1056);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 1024);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 1056);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 1056);
    }

LABEL_35:
    v63 = v71;
    return sub_277996F48(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 1024);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 1024);
LABEL_38:
    v63 = v72;
    return sub_277996F48(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996F48(v8, a2, a5, a6, a7);
}

uint64_t sub_277B402A0(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v75 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v10 = 2 * a2;
    v11 = v74;
    if (a4 == 4)
    {
      v28 = 17;
      do
      {
        v29 = 0;
        v30 = -8;
        do
        {
          *&v11[v29] = vrhaddq_u16(*(v7 + v29), *(v7 + v29 + 2));
          v30 += 8;
          v29 += 16;
        }

        while (v30 < 0x18);
        v11 += 64;
        v7 += v10;
        --v28;
      }

      while (v28);
      v31 = v74;
      v32 = v73;
      v33 = 16;
      do
      {
        v34 = 0;
        v35 = -8;
        do
        {
          *&v32[v34] = vrhaddq_u16(*&v31[v34], *&v31[v34 + 64]);
          v35 += 8;
          v34 += 16;
        }

        while (v35 < 0x18);
        v31 += 64;
        v32 += 64;
        --v33;
      }

      while (v33);
    }

    else
    {
      if (!a4)
      {
        v12 = 16;
        do
        {
          v13 = 0;
          v14 = -8;
          do
          {
            *&v11[v13] = vrhaddq_u16(*(v7 + v13), *(v7 + v13 + 2));
            v14 += 8;
            v13 += 16;
          }

          while (v14 < 0x18);
          v11 += 64;
          v7 += v10;
          --v12;
        }

        while (v12);
        goto LABEL_40;
      }

      v45 = 17;
      do
      {
        v46 = 0;
        v47 = -8;
        do
        {
          *&v11[v46] = vrhaddq_u16(*(v7 + v46), *(v7 + v46 + 2));
          v47 += 8;
          v46 += 16;
        }

        while (v47 < 0x18);
        v11 += 64;
        v7 += v10;
        --v45;
      }

      while (v45);
      v48 = vdupq_n_s16(8 - a4);
      v49 = vdupq_n_s16(a4);
      v50 = v74;
      v51 = v73;
      v52 = 16;
      do
      {
        v53 = 0;
        v54 = -8;
        do
        {
          *&v51[v53] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v50[v53], v48), *&v50[v53 + 64], v49), 3uLL);
          v54 += 8;
          v53 += 16;
        }

        while (v54 < 0x18);
        v50 += 64;
        v51 += 64;
        --v52;
      }

      while (v52);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v15 = vdupq_n_s16(8 - a3);
    v16 = vdupq_n_s16(a3);
    v17 = 2 * a2;
    v18 = v74;
    if (a4 == 4)
    {
      v55 = 17;
      do
      {
        v56 = 0;
        v57 = -8;
        do
        {
          *&v18[v56] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v56), v15), *(v7 + v56 + 2), v16), 3uLL);
          v57 += 8;
          v56 += 16;
        }

        while (v57 < 0x18);
        v18 += 64;
        v7 += v17;
        --v55;
      }

      while (v55);
      v58 = v74;
      v59 = v73;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrhaddq_u16(*&v58[v61], *&v58[v61 + 64]);
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    else
    {
      if (!a4)
      {
        v19 = 16;
        do
        {
          v20 = 0;
          v21 = -8;
          do
          {
            *&v18[v20] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v20), v15), *(v7 + v20 + 2), v16), 3uLL);
            v21 += 8;
            v20 += 16;
          }

          while (v21 < 0x18);
          v18 += 64;
          v7 += v17;
          --v19;
        }

        while (v19);
        goto LABEL_40;
      }

      v63 = 17;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v18[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v64), v15), *(v7 + v64 + 2), v16), 3uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x18);
        v18 += 64;
        v7 += v17;
        --v63;
      }

      while (v63);
      v66 = vdupq_n_s16(8 - a4);
      v67 = vdupq_n_s16(a4);
      v68 = v74;
      v69 = v73;
      v70 = 16;
      do
      {
        v71 = 0;
        v72 = -8;
        do
        {
          *&v69[v71] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v68[v71], v66), *&v68[v71 + 64], v67), 3uLL);
          v72 += 8;
          v71 += 16;
        }

        while (v72 < 0x18);
        v68 += 64;
        v69 += 64;
        --v70;
      }

      while (v70);
    }

LABEL_67:
    v44 = v73;
    return sub_277996FF0(v44 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v22 = 2 * a2;
    v23 = v74;
    v24 = 16;
    v25 = v7 + v22;
    do
    {
      v26 = 0;
      v27 = -8;
      do
      {
        *&v23[v26] = vrhaddq_u16(*(v7 + v26), *(v25 + v26));
        v27 += 8;
        v26 += 16;
      }

      while (v27 < 0x18);
      v23 += 64;
      v25 += v22;
      v7 += v22;
      --v24;
    }

    while (v24);
    goto LABEL_40;
  }

  if (a4)
  {
    v36 = vdupq_n_s16(8 - a4);
    v37 = vdupq_n_s16(a4);
    v38 = 2 * a2;
    v39 = v7 + v38;
    v40 = v74;
    v41 = 16;
    do
    {
      v42 = 0;
      v43 = -8;
      do
      {
        *&v40[v42] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v42), v36), *(v39 + v42), v37), 3uLL);
        v43 += 8;
        v42 += 16;
      }

      while (v43 < 0x18);
      v40 += 64;
      v39 += v38;
      v7 += v38;
      --v41;
    }

    while (v41);
LABEL_40:
    v44 = v74;
    return sub_277996FF0(v44 >> 1, 32, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277996FF0(v8, a2, a5, a6, a7);
}

uint64_t sub_277B40760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v83 = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 33;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37), *(v15 + v37 + 2));
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x18);
        v19 += 64;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 32;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 64]);
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x18);
        v39 += 64;
        v40 += 64;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 32;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21), *(v15 + v21 + 2));
            v22 += 8;
            v21 += 16;
          }

          while (v22 < 0x18);
          v19 += 64;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 33;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54), *(v15 + v54 + 2));
          v55 += 8;
          v54 += 16;
        }

        while (v55 < 0x18);
        v19 += 64;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 64], v57), 3uLL);
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x18);
        v58 += 64;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 33;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64), v23), *(v15 + v64 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x18);
        v26 += 64;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 64]);
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v66 += 64;
        v67 += 64;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 32;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28), v23), *(v15 + v28 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 16;
          }

          while (v29 < 0x18);
          v26 += 64;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 33;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72), v23), *(v15 + v72 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 16;
        }

        while (v73 < 0x18);
        v26 += 64;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 32;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 64], v75), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x18);
        v76 += 64;
        v77 += 64;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277997094(v52 >> 1, 32, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 32;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34), *(v33 + v34));
        v35 += 8;
        v34 += 16;
      }

      while (v35 < 0x18);
      v31 += 64;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50), v44), *(v47 + v50), v45), 3uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x18);
      v48 += 64;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277997094(v52 >> 1, 32, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997094(v16, v9, v12, v13, v14);
}

uint64_t sub_277B40C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[520] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 65;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x18);
        v19 += 8;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 64;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 8]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x18);
        v39 += 8;
        v40 += 64;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 64;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x18);
          v19 += 8;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 65;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x18);
        v19 += 8;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 8], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x18);
        v58 += 8;
        v59 += 64;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 65;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x18);
        v26 += 8;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 8]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x18);
        v66 += 8;
        v67 += 64;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 64;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x18);
          v26 += 8;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 65;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x18);
        v26 += 8;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 64;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 8], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x18);
        v76 += 8;
        v77 += 64;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277997138(v52 >> 1, 32, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 64;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x18);
      v31 += 8;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x18);
      v48 += 8;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277997138(v52 >> 1, 32, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997138(v16, v9, v12, v13, v14);
}

uint64_t sub_277B41144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[528] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 33;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v19 += 16;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 32;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 16]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v39 += 16;
        v40 += 128;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 32;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x38);
          v19 += 16;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 33;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x38);
        v19 += 16;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 32;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 16], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 33;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x38);
        v26 += 16;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 32;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 16]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 32;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x38);
          v26 += 16;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 33;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x38);
        v26 += 16;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 32;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 16], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v76 += 16;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277997208(v52 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 32;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x38);
      v31 += 16;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 32;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x38);
      v48 += 16;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277997208(v52 >> 1, 64, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997208(v16, v9, v12, v13, v14);
}

uint64_t sub_277B41648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[1040] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 65;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v19 += 16;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 64;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 16]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v39 += 16;
        v40 += 128;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 64;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x38);
          v19 += 16;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 65;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x38);
        v19 += 16;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 16], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 65;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x38);
        v26 += 16;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 16]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 64;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x38);
          v26 += 16;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 65;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x38);
        v26 += 16;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 64;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 16], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v76 += 16;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_2779972D8(v52 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 64;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x38);
      v31 += 16;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x38);
      v48 += 16;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_2779972D8(v52 >> 1, 64, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_2779972D8(v16, v9, v12, v13, v14);
}

uint64_t sub_277B41B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[2064] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 129;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x38);
        v19 += 16;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 128;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 16]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x38);
        v39 += 16;
        v40 += 128;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 128;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x38);
          v19 += 16;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 129;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x38);
        v19 += 16;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 128;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 16], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x38);
        v58 += 16;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 129;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x38);
        v26 += 16;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 128;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 16]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x38);
        v66 += 16;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 128;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x38);
          v26 += 16;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 129;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x38);
        v26 += 16;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 128;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 16], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x38);
        v76 += 16;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_2779973A8(v52 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 128;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x38);
      v31 += 16;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x38);
      v48 += 16;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_2779973A8(v52 >> 1, 64, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_2779973A8(v16, v9, v12, v13, v14);
}

uint64_t sub_277B42050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[2080] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 65;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x78);
        v19 += 32;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 64;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 32]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x78);
        v39 += 32;
        v40 += 256;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 64;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x78);
          v19 += 32;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 65;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x78);
        v19 += 32;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 64;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 32], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v58 += 32;
        v59 += 256;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 65;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x78);
        v26 += 32;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 64;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 32]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x78);
        v66 += 32;
        v67 += 256;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 64;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x78);
          v26 += 32;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 65;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x78);
        v26 += 32;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 64;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 32], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v76 += 32;
        v77 += 256;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277997478(v52 >> 1, 128, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 64;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x78);
      v31 += 32;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 64;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x78);
      v48 += 32;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277997478(v52 >> 1, 128, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997478(v16, v9, v12, v13, v14);
}

uint64_t sub_277B42554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v82[4128] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 129;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37 * 8), *(v15 + v37 * 8 + 2));
          v38 += 8;
          v37 += 2;
        }

        while (v38 < 0x78);
        v19 += 32;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 128;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42 * 8] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 32]);
          v43 += 8;
          v42 += 2;
        }

        while (v43 < 0x78);
        v39 += 32;
        v40 += 256;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 128;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21 * 8), *(v15 + v21 * 8 + 2));
            v22 += 8;
            v21 += 2;
          }

          while (v22 < 0x78);
          v19 += 32;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 129;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54 * 8), *(v15 + v54 * 8 + 2));
          v55 += 8;
          v54 += 2;
        }

        while (v55 < 0x78);
        v19 += 32;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 128;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 32], v57), 3uLL);
          v62 += 8;
          v61 += 2;
        }

        while (v62 < 0x78);
        v58 += 32;
        v59 += 256;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 129;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64 * 8), v23), *(v15 + v64 * 8 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 2;
        }

        while (v65 < 0x78);
        v26 += 32;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 128;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69 * 8] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 32]);
          v70 += 8;
          v69 += 2;
        }

        while (v70 < 0x78);
        v66 += 32;
        v67 += 256;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 128;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28 * 8), v23), *(v15 + v28 * 8 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 2;
          }

          while (v29 < 0x78);
          v26 += 32;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 129;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72 * 8), v23), *(v15 + v72 * 8 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 2;
        }

        while (v73 < 0x78);
        v26 += 32;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 128;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79 * 8] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 32], v75), 3uLL);
          v80 += 8;
          v79 += 2;
        }

        while (v80 < 0x78);
        v76 += 32;
        v77 += 256;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_277997548(v52 >> 1, 128, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 128;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34 * 8), *(v33 + v34 * 8));
        v35 += 8;
        v34 += 2;
      }

      while (v35 < 0x78);
      v31 += 32;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 128;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50 * 8), v44), *(v47 + v50 * 8), v45), 3uLL);
        v51 += 8;
        v50 += 2;
      }

      while (v51 < 0x78);
      v48 += 32;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_277997548(v52 >> 1, 128, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997548(v16, v9, v12, v13, v14);
}

uint64_t sub_277B42A5C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, _DWORD *a7)
{
  v7 = 0;
  v18[17] = *MEMORY[0x277D85DE8];
  v8 = vdup_n_s16(8 - a3);
  v9 = vdup_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshr_n_u16(vmla_s16(vmul_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 8) != 136);
  v11 = 0;
  v12 = vdup_n_s16(8 - a4);
  v13 = vdup_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 8] = vrshr_n_u16(vmla_s16(vmul_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 8) != 128);
  return sub_277997D04(v17 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B42B5C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v8 = vdupq_n_s16(8 - a3);
  v9 = vdupq_n_s16(a3);
  v10 = (2 * a1 + 2);
  do
  {
    v18[v7++] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v10 - 2), v8), *v10, v9), 3uLL);
    v10 = (v10 + 2 * a2);
  }

  while ((v7 * 16) != 528);
  v11 = 0;
  v12 = vdupq_n_s16(8 - a4);
  v13 = vdupq_n_s16(a4);
  v14 = v18[0];
  do
  {
    v15 = v18[v11 + 1];
    *&v17[v11 * 16] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v14, v12), v15, v13), 3uLL);
    ++v11;
    v14 = v15;
  }

  while ((v11 * 16) != 512);
  return sub_277997DAC(v17 >> 1, 8, a5, a6, a7);
}

uint64_t sub_277B42C5C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v73[15] = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v53 = 0;
      v54 = (v7 + 18);
      do
      {
        v55 = &v72[v53];
        *v55 = vrhaddq_u16(*(v54 - 18), v54[-1]);
        v55[1] = vrhaddq_u16(*(v54 - 2), *v54);
        v53 += 2;
        v54 = (v54 + 2 * a2);
      }

      while ((v53 * 16) != 160);
      v56 = v72[0];
      v57 = v73;
      v58 = 32;
      do
      {
        v59 = &v71[v58];
        v61 = v57[-2];
        v60 = v57[-1];
        v62 = *v57;
        v57 += 2;
        v59[-2] = vrhaddq_u16(v56, v60);
        v59[-1] = vrhaddq_u16(v61, v62);
        v58 += 32;
        v56 = v60;
      }

      while (v58 != 160);
    }

    else
    {
      v10 = 0;
      v11 = (v7 + 18);
      v12 = 2 * a2;
      if (!a4)
      {
        do
        {
          v13 = &v72[v10];
          *v13 = vrhaddq_u16(*(v11 - 18), v11[-1]);
          v13[1] = vrhaddq_u16(*(v11 - 2), *v11);
          v10 += 2;
          v11 = (v11 + v12);
        }

        while ((v10 * 16) != 128);
        goto LABEL_38;
      }

      do
      {
        v14 = &v72[v10];
        *v14 = vrhaddq_u16(*(v11 - 18), v11[-1]);
        v14[1] = vrhaddq_u16(*(v11 - 2), *v11);
        v10 += 2;
        v11 = (v11 + v12);
      }

      while ((v10 * 16) != 160);
      v15 = vdupq_n_s16(8 - a4);
      v16 = vdupq_n_s16(a4);
      v17 = v72[0];
      v18 = v73;
      v19 = 32;
      do
      {
        v21 = v18[-2];
        v20 = v18[-1];
        v22 = *v18;
        v18 += 2;
        v23 = &v71[v19];
        v23[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v17, v15), v20, v16), 3uLL);
        v23[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v21, v15), v22, v16), 3uLL);
        v19 += 32;
        v17 = v20;
      }

      while (v19 != 160);
    }

    goto LABEL_35;
  }

  if (a3)
  {
    v24 = 0;
    v25 = vdupq_n_s16(8 - a3);
    v26 = vdupq_n_s16(a3);
    v27 = (v7 + 18);
    v28 = 2 * a2;
    if (a4 == 4)
    {
      do
      {
        v30 = &v72[v24];
        *v30 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v30[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 160);
      v31 = v72[0];
      v32 = v73;
      v33 = 32;
      do
      {
        v34 = &v71[v33];
        v36 = v32[-2];
        v35 = v32[-1];
        v37 = *v32;
        v32 += 2;
        v34[-2] = vrhaddq_u16(v31, v35);
        v34[-1] = vrhaddq_u16(v36, v37);
        v33 += 32;
        v31 = v35;
      }

      while (v33 != 160);
    }

    else
    {
      if (!a4)
      {
        do
        {
          v29 = &v72[v24];
          *v29 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
          v29[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
          v24 += 2;
          v27 = (v27 + v28);
        }

        while ((v24 * 16) != 128);
        goto LABEL_38;
      }

      do
      {
        v38 = &v72[v24];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 18), v25), v27[-1], v26), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v27 - 2), v25), *v27, v26), 3uLL);
        v24 += 2;
        v27 = (v27 + v28);
      }

      while ((v24 * 16) != 160);
      v39 = vdupq_n_s16(8 - a4);
      v40 = vdupq_n_s16(a4);
      v41 = v72[0];
      v42 = v73;
      v43 = 32;
      do
      {
        v45 = v42[-2];
        v44 = v42[-1];
        v46 = *v42;
        v42 += 2;
        v47 = &v71[v43];
        v47[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v41, v39), v44, v40), 3uLL);
        v47[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v45, v39), v46, v40), 3uLL);
        v43 += 32;
        v41 = v44;
      }

      while (v43 != 160);
    }

LABEL_35:
    v63 = v71;
    return sub_277997E38(v63 >> 1, 16, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v48 = 0;
    v49 = *v7;
    v50 = 2 * a2;
    do
    {
      v51 = &v72[v48];
      v52 = *(v7 + 2 * a2);
      *v51 = vrhaddq_u16(v49, v52);
      v51[1] = vrhaddq_u16(*(v7 + 16), *(v7 + v50 + 16));
      v48 += 2;
      v7 += v50;
      v49 = v52;
    }

    while ((v48 * 16) != 128);
    goto LABEL_38;
  }

  if (a4)
  {
    v64 = 0;
    v65 = vdupq_n_s16(8 - a4);
    v66 = vdupq_n_s16(a4);
    v67 = *v7;
    v68 = 2 * a2;
    do
    {
      v69 = &v72[v64];
      v70 = *(v7 + 2 * a2);
      *v69 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v67, v65), v70, v66), 3uLL);
      v69[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + 16), v65), *(v7 + v68 + 16), v66), 3uLL);
      v64 += 2;
      v7 += v68;
      v67 = v70;
    }

    while ((v64 * 16) != 128);
LABEL_38:
    v63 = v72;
    return sub_277997E38(v63 >> 1, 16, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997E38(v8, a2, a5, a6, a7);
}

uint64_t sub_277B430E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v81[255] = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v61 = 0;
      v62 = (v15 + 18);
      do
      {
        v63 = &v80[v61];
        *v63 = vrhaddq_u16(*(v62 - 18), v62[-1]);
        v63[1] = vrhaddq_u16(*(v62 - 2), *v62);
        v61 += 2;
        v62 = (v62 + 2 * v9);
      }

      while ((v61 * 16) != 2080);
      v64 = v80[0];
      v65 = v81;
      v66 = 32;
      do
      {
        v67 = &v79[v66];
        v69 = v65[-2];
        v68 = v65[-1];
        v70 = *v65;
        v65 += 2;
        v67[-2] = vrhaddq_u16(v64, v68);
        v67[-1] = vrhaddq_u16(v69, v70);
        v66 += 32;
        v64 = v68;
      }

      while (v66 != 2080);
    }

    else
    {
      v18 = 0;
      v19 = (v15 + 18);
      v20 = 2 * v9;
      if (!v11)
      {
        do
        {
          v21 = &v80[v18];
          *v21 = vrhaddq_u16(*(v19 - 18), v19[-1]);
          v21[1] = vrhaddq_u16(*(v19 - 2), *v19);
          v18 += 2;
          v19 = (v19 + v20);
        }

        while ((v18 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v22 = &v80[v18];
        *v22 = vrhaddq_u16(*(v19 - 18), v19[-1]);
        v22[1] = vrhaddq_u16(*(v19 - 2), *v19);
        v18 += 2;
        v19 = (v19 + v20);
      }

      while ((v18 * 16) != 2080);
      v23 = vdupq_n_s16(8 - v11);
      v24 = vdupq_n_s16(v11);
      v25 = v80[0];
      v26 = v81;
      v27 = 32;
      do
      {
        v29 = v26[-2];
        v28 = v26[-1];
        v30 = *v26;
        v26 += 2;
        v31 = &v79[v27];
        v31[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v25, v23), v28, v24), 3uLL);
        v31[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v29, v23), v30, v24), 3uLL);
        v27 += 32;
        v25 = v28;
      }

      while (v27 != 2080);
    }

    goto LABEL_35;
  }

  if (v10)
  {
    v32 = 0;
    v33 = vdupq_n_s16(8 - v10);
    v34 = vdupq_n_s16(v10);
    v35 = (v15 + 18);
    v36 = 2 * v9;
    if (v11 == 4)
    {
      do
      {
        v38 = &v80[v32];
        *v38 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 18), v33), v35[-1], v34), 3uLL);
        v38[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 2), v33), *v35, v34), 3uLL);
        v32 += 2;
        v35 = (v35 + v36);
      }

      while ((v32 * 16) != 2080);
      v39 = v80[0];
      v40 = v81;
      v41 = 32;
      do
      {
        v42 = &v79[v41];
        v44 = v40[-2];
        v43 = v40[-1];
        v45 = *v40;
        v40 += 2;
        v42[-2] = vrhaddq_u16(v39, v43);
        v42[-1] = vrhaddq_u16(v44, v45);
        v41 += 32;
        v39 = v43;
      }

      while (v41 != 2080);
    }

    else
    {
      if (!v11)
      {
        do
        {
          v37 = &v80[v32];
          *v37 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 18), v33), v35[-1], v34), 3uLL);
          v37[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 2), v33), *v35, v34), 3uLL);
          v32 += 2;
          v35 = (v35 + v36);
        }

        while ((v32 * 16) != 2048);
        goto LABEL_38;
      }

      do
      {
        v46 = &v80[v32];
        *v46 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 18), v33), v35[-1], v34), 3uLL);
        v46[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v35 - 2), v33), *v35, v34), 3uLL);
        v32 += 2;
        v35 = (v35 + v36);
      }

      while ((v32 * 16) != 2080);
      v47 = vdupq_n_s16(8 - v11);
      v48 = vdupq_n_s16(v11);
      v49 = v80[0];
      v50 = v81;
      v51 = 32;
      do
      {
        v53 = v50[-2];
        v52 = v50[-1];
        v54 = *v50;
        v50 += 2;
        v55 = &v79[v51];
        v55[-2] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v49, v47), v52, v48), 3uLL);
        v55[-1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v53, v47), v54, v48), 3uLL);
        v51 += 32;
        v49 = v52;
      }

      while (v51 != 2080);
    }

LABEL_35:
    v71 = v79;
    return sub_277997EE0(v71 >> 1, 16, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v56 = 0;
    v57 = *v15;
    v58 = 2 * v9;
    do
    {
      v59 = &v80[v56];
      v60 = *(v15 + 2 * v9);
      *v59 = vrhaddq_u16(v57, v60);
      v59[1] = vrhaddq_u16(*(v15 + 16), *(v15 + v58 + 16));
      v56 += 2;
      v15 += v58;
      v57 = v60;
    }

    while ((v56 * 16) != 2048);
    goto LABEL_38;
  }

  if (v11)
  {
    v72 = 0;
    v73 = vdupq_n_s16(8 - v11);
    v74 = vdupq_n_s16(v11);
    v75 = *v15;
    v76 = 2 * v9;
    do
    {
      v77 = &v80[v72];
      v78 = *(v15 + 2 * v9);
      *v77 = vrshrq_n_u16(vmlaq_s16(vmulq_s16(v75, v73), v78, v74), 3uLL);
      v77[1] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + 16), v73), *(v15 + v76 + 16), v74), 3uLL);
      v72 += 2;
      v15 += v76;
      v75 = v78;
    }

    while ((v72 * 16) != 2048);
LABEL_38:
    v71 = v80;
    return sub_277997EE0(v71 >> 1, 16, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997EE0(v16, v9, v12, v13, v14);
}

uint64_t sub_277B43594(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7)
{
  v80 = *MEMORY[0x277D85DE8];
  v7 = 2 * a1;
  if (a3 == 4)
  {
    v10 = 2 * a2;
    v11 = v79;
    if (a4 == 4)
    {
      v27 = 9;
      do
      {
        v28 = 0;
        v29 = -8;
        do
        {
          *&v11[v28] = vrhaddq_u16(*(v7 + v28), *(v7 + v28 + 2));
          v29 += 8;
          v28 += 16;
        }

        while (v29 < 0x18);
        v11 += 64;
        v7 += v10;
        --v27;
      }

      while (v27);
      v30 = v79;
      v31 = v78;
      v32 = 8;
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
        v12 = 8;
        do
        {
          v13 = 0;
          v14 = -8;
          do
          {
            *&v11[v13] = vrhaddq_u16(*(v7 + v13), *(v7 + v13 + 2));
            v14 += 8;
            v13 += 16;
          }

          while (v14 < 0x18);
          v11 += 64;
          v7 += v10;
          --v12;
        }

        while (v12);
        goto LABEL_40;
      }

      v44 = 9;
      do
      {
        v45 = 0;
        v46 = -8;
        do
        {
          *&v11[v45] = vrhaddq_u16(*(v7 + v45), *(v7 + v45 + 2));
          v46 += 8;
          v45 += 16;
        }

        while (v46 < 0x18);
        v11 += 64;
        v7 += v10;
        --v44;
      }

      while (v44);
      v47 = 8;
      v48 = vdupq_n_s16(8 - a4);
      v49 = vdupq_n_s16(a4);
      v50 = v79;
      v51 = v78;
      do
      {
        v52 = 0;
        v53 = -8;
        do
        {
          *&v51[v52] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v50[v52], v48), *&v50[v52 + 64], v49), 3uLL);
          v53 += 8;
          v52 += 16;
        }

        while (v53 < 0x18);
        v50 += 64;
        v51 += 64;
        --v47;
      }

      while (v47);
    }

    goto LABEL_67;
  }

  if (a3)
  {
    v15 = 8;
    if (a4 == 4)
    {
      v54 = vdupq_n_s16(8 - a3);
      v55 = vdupq_n_s16(a3);
      v56 = v79;
      v57 = 9;
      do
      {
        v58 = 0;
        v59 = -8;
        do
        {
          *&v56[v58] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v58), v54), *(v7 + v58 + 2), v55), 3uLL);
          v59 += 8;
          v58 += 16;
        }

        while (v59 < 0x18);
        v56 += 64;
        v7 += 2 * a2;
        --v57;
      }

      while (v57);
      v60 = v79;
      v61 = v78;
      v62 = 8;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v61[v63] = vrhaddq_u16(*&v60[v63], *&v60[v63 + 64]);
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v60 += 64;
        v61 += 64;
        --v62;
      }

      while (v62);
    }

    else
    {
      if (!a4)
      {
        v16 = vdupq_n_s16(8 - a3);
        v17 = vdupq_n_s16(a3);
        v18 = v79;
        do
        {
          v19 = 0;
          v20 = -8;
          do
          {
            *&v18[v19] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v19), v16), *(v7 + v19 + 2), v17), 3uLL);
            v20 += 8;
            v19 += 16;
          }

          while (v20 < 0x18);
          v18 += 64;
          v7 += 2 * a2;
          --v15;
        }

        while (v15);
        goto LABEL_40;
      }

      v65 = vdupq_n_s16(8 - a3);
      v66 = vdupq_n_s16(a3);
      v67 = v79;
      v68 = 9;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v69), v65), *(v7 + v69 + 2), v66), 3uLL);
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v67 += 64;
        v7 += 2 * a2;
        --v68;
      }

      while (v68);
      v71 = 8;
      v72 = vdupq_n_s16(8 - a4);
      v73 = vdupq_n_s16(a4);
      v74 = v79;
      v75 = v78;
      do
      {
        v76 = 0;
        v77 = -8;
        do
        {
          *&v75[v76] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v74[v76], v72), *&v74[v76 + 64], v73), 3uLL);
          v77 += 8;
          v76 += 16;
        }

        while (v77 < 0x18);
        v74 += 64;
        v75 += 64;
        --v71;
      }

      while (v71);
    }

LABEL_67:
    v43 = v78;
    return sub_277997F88(v43 >> 1, 32, a5, a6, a7);
  }

  if (a4 == 4)
  {
    v21 = 2 * a2;
    v22 = v79;
    v23 = 8;
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
    v35 = 8;
    v36 = vdupq_n_s16(8 - a4);
    v37 = vdupq_n_s16(a4);
    v38 = 2 * a2;
    v39 = v7 + v38;
    v40 = v79;
    do
    {
      v41 = 0;
      v42 = -8;
      do
      {
        *&v40[v41] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v7 + v41), v36), *(v39 + v41), v37), 3uLL);
        v42 += 8;
        v41 += 16;
      }

      while (v42 < 0x18);
      v40 += 64;
      v39 += v38;
      v7 += v38;
      --v35;
    }

    while (v35);
LABEL_40:
    v43 = v79;
    return sub_277997F88(v43 >> 1, 32, a5, a6, a7);
  }

  v8 = a1 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_277997F88(v8, a2, a5, a6, a7);
}

uint64_t sub_277B43A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v83 = *MEMORY[0x277D85DE8];
  v15 = 2 * v8;
  if (v10 == 4)
  {
    v18 = 2 * v9;
    v19 = v82;
    if (v11 == 4)
    {
      v36 = 17;
      do
      {
        v37 = 0;
        v38 = -8;
        do
        {
          *&v19[v37] = vrhaddq_u16(*(v15 + v37), *(v15 + v37 + 2));
          v38 += 8;
          v37 += 16;
        }

        while (v38 < 0x38);
        v19 += 128;
        v15 += v18;
        --v36;
      }

      while (v36);
      v39 = v82;
      v40 = v81;
      v41 = 16;
      do
      {
        v42 = 0;
        v43 = -8;
        do
        {
          *&v40[v42] = vrhaddq_u16(*&v39[v42], *&v39[v42 + 128]);
          v43 += 8;
          v42 += 16;
        }

        while (v43 < 0x38);
        v39 += 128;
        v40 += 128;
        --v41;
      }

      while (v41);
    }

    else
    {
      if (!v11)
      {
        v20 = 16;
        do
        {
          v21 = 0;
          v22 = -8;
          do
          {
            *&v19[v21] = vrhaddq_u16(*(v15 + v21), *(v15 + v21 + 2));
            v22 += 8;
            v21 += 16;
          }

          while (v22 < 0x38);
          v19 += 128;
          v15 += v18;
          --v20;
        }

        while (v20);
        goto LABEL_40;
      }

      v53 = 17;
      do
      {
        v54 = 0;
        v55 = -8;
        do
        {
          *&v19[v54] = vrhaddq_u16(*(v15 + v54), *(v15 + v54 + 2));
          v55 += 8;
          v54 += 16;
        }

        while (v55 < 0x38);
        v19 += 128;
        v15 += v18;
        --v53;
      }

      while (v53);
      v56 = vdupq_n_s16(8 - v11);
      v57 = vdupq_n_s16(v11);
      v58 = v82;
      v59 = v81;
      v60 = 16;
      do
      {
        v61 = 0;
        v62 = -8;
        do
        {
          *&v59[v61] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v58[v61], v56), *&v58[v61 + 128], v57), 3uLL);
          v62 += 8;
          v61 += 16;
        }

        while (v62 < 0x38);
        v58 += 128;
        v59 += 128;
        --v60;
      }

      while (v60);
    }

    goto LABEL_67;
  }

  if (v10)
  {
    v23 = vdupq_n_s16(8 - v10);
    v24 = vdupq_n_s16(v10);
    v25 = 2 * v9;
    v26 = v82;
    if (v11 == 4)
    {
      v63 = 17;
      do
      {
        v64 = 0;
        v65 = -8;
        do
        {
          *&v26[v64] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v64), v23), *(v15 + v64 + 2), v24), 3uLL);
          v65 += 8;
          v64 += 16;
        }

        while (v65 < 0x38);
        v26 += 128;
        v15 += v25;
        --v63;
      }

      while (v63);
      v66 = v82;
      v67 = v81;
      v68 = 16;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(*&v66[v69], *&v66[v69 + 128]);
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x38);
        v66 += 128;
        v67 += 128;
        --v68;
      }

      while (v68);
    }

    else
    {
      if (!v11)
      {
        v27 = 16;
        do
        {
          v28 = 0;
          v29 = -8;
          do
          {
            *&v26[v28] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v28), v23), *(v15 + v28 + 2), v24), 3uLL);
            v29 += 8;
            v28 += 16;
          }

          while (v29 < 0x38);
          v26 += 128;
          v15 += v25;
          --v27;
        }

        while (v27);
        goto LABEL_40;
      }

      v71 = 17;
      do
      {
        v72 = 0;
        v73 = -8;
        do
        {
          *&v26[v72] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v72), v23), *(v15 + v72 + 2), v24), 3uLL);
          v73 += 8;
          v72 += 16;
        }

        while (v73 < 0x38);
        v26 += 128;
        v15 += v25;
        --v71;
      }

      while (v71);
      v74 = vdupq_n_s16(8 - v11);
      v75 = vdupq_n_s16(v11);
      v76 = v82;
      v77 = v81;
      v78 = 16;
      do
      {
        v79 = 0;
        v80 = -8;
        do
        {
          *&v77[v79] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v76[v79], v74), *&v76[v79 + 128], v75), 3uLL);
          v80 += 8;
          v79 += 16;
        }

        while (v80 < 0x38);
        v76 += 128;
        v77 += 128;
        --v78;
      }

      while (v78);
    }

LABEL_67:
    v52 = v81;
    return sub_27799802C(v52 >> 1, 64, v12, v13, v14);
  }

  if (v11 == 4)
  {
    v30 = 2 * v9;
    v31 = v82;
    v32 = 16;
    v33 = v15 + v30;
    do
    {
      v34 = 0;
      v35 = -8;
      do
      {
        *&v31[v34] = vrhaddq_u16(*(v15 + v34), *(v33 + v34));
        v35 += 8;
        v34 += 16;
      }

      while (v35 < 0x38);
      v31 += 128;
      v33 += v30;
      v15 += v30;
      --v32;
    }

    while (v32);
    goto LABEL_40;
  }

  if (v11)
  {
    v44 = vdupq_n_s16(8 - v11);
    v45 = vdupq_n_s16(v11);
    v46 = 2 * v9;
    v47 = v15 + v46;
    v48 = v82;
    v49 = 16;
    do
    {
      v50 = 0;
      v51 = -8;
      do
      {
        *&v48[v50] = vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v15 + v50), v44), *(v47 + v50), v45), 3uLL);
        v51 += 8;
        v50 += 16;
      }

      while (v51 < 0x38);
      v48 += 128;
      v47 += v46;
      v15 += v46;
      --v49;
    }

    while (v49);
LABEL_40:
    v52 = v82;
    return sub_27799802C(v52 >> 1, 64, v12, v13, v14);
  }

  v16 = v8 & 0x7FFFFFFFFFFFFFFFLL;

  return sub_27799802C(v16, v9, v12, v13, v14);
}

uint64_t sub_277B43F4C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8)
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
  return sub_2779958B4(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B44050(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, unsigned int a6, int *a7, uint64_t a8)
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
  return sub_27799593C(v18 >> 1, 4u, a5, a6, a7);
}

uint64_t sub_277B44154(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
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

  while ((v8 * 16) != 80);
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

  while (v12 != 64);
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

  while (v17 != 64);
  v23 = vaddlvq_u32(vaddq_s32(v20, v19));
  *a7 = v23;
  v24 = vaddvq_s32(v21);
  return v23 - ((v24 * v24) >> 5);
}

uint64_t sub_277B442A4(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
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

  while ((v8 * 16) != 144);
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

  while (v12 != 128);
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

  while (v17 != 128);
  v23 = vaddlvq_u32(vaddq_s32(v20, v19));
  *a7 = v23;
  v24 = vaddvq_s32(v21);
  return v23 - ((v24 * v24) >> 6);
}

uint64_t sub_277B443FC(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
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

  while ((v8 * 16) != 272);
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

  while (v12 != 256);
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

  while (v17 != 256);
  v23 = vaddlvq_u32(vaddq_s32(v20, v19));
  *a7 = v23;
  v24 = vaddvq_s32(v21);
  return v23 - ((v24 * v24) >> 7);
}

uint64_t sub_277B44554(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
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

      while (v53 != 288);
      v57 = (2 * a8);
      v58 = v156;
      v59 = v155;
      v60 = 8;
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
      v67 = 8;
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

      while (v87 != 288);
      v91 = (2 * a8);
      v92 = 8;
      v93 = vdupq_n_s16(8 - a4);
      v94 = vdupq_n_s16(a4);
      v95 = v156;
      v96 = v155;
      do
      {
        v97 = 0;
        v98 = 1;
        do
        {
          v99 = v98;
          v100 = *v91++;
          *&v96[2 * v97] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v95[2 * v97], v93), *&v95[2 * v97 + 32], v94), 3uLL), v100);
          v97 = 8;
          v98 = 0;
        }

        while ((v99 & 1) != 0);
        v95 += 32;
        v96 += 32;
        --v92;
      }

      while (v92);
      v101 = 2 * a5;
      v102 = v155;
      v23 = 0uLL;
      v103 = 8;
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
      v16 = 8;
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
      v24 = 8;
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

      while (v108 != 288);
      v114 = (2 * a8);
      v115 = v156;
      v116 = v155;
      v117 = 8;
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
      v124 = 8;
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

      while (v129 != 288);
      v135 = (2 * a8);
      v136 = 8;
      v137 = vdupq_n_s16(8 - a4);
      v138 = vdupq_n_s16(a4);
      v139 = v156;
      v140 = v155;
      do
      {
        v141 = 0;
        v142 = 1;
        do
        {
          v143 = v142;
          v144 = *v135++;
          *&v140[2 * v141] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v139[2 * v141], v137), *&v139[2 * v141 + 32], v138), 3uLL), v144);
          v141 = 8;
          v142 = 0;
        }

        while ((v143 & 1) != 0);
        v139 += 32;
        v140 += 32;
        --v136;
      }

      while (v136);
      v145 = 2 * a5;
      v146 = v155;
      v23 = 0uLL;
      v147 = 8;
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
      v31 = 8;
      v32 = vdupq_n_s16(8 - a3);
      v33 = (2 * a8);
      v34 = vdupq_n_s16(a3);
      v35 = v156;
      do
      {
        v36 = 0;
        v37 = 1;
        do
        {
          v38 = v37;
          v39 = *v33++;
          *&v35[2 * v36] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v36), v32), *(v8 + 2 * v36 + 2), v34), 3uLL), v39);
          v36 = 8;
          v37 = 0;
        }

        while ((v38 & 1) != 0);
        v8 += 2 * a2;
        v35 += 32;
        --v31;
      }

      while (v31);
      v40 = 2 * a5;
      v41 = v156;
      v23 = 0uLL;
      v42 = 8;
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
      v48 = 8;
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
      v72 = 8;
      v73 = vdupq_n_s16(8 - a4);
      v74 = vdupq_n_s16(a4);
      v75 = v156;
      do
      {
        v76 = 0;
        v77 = 1;
        do
        {
          v78 = v77;
          v79 = *v9++;
          *&v75[2 * v76] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + 2 * v76), v73), *(v8 + 2 * v76 + 2 * a2), v74), 3uLL), v79);
          v76 = 8;
          v77 = 0;
        }

        while ((v78 & 1) != 0);
        v8 += 2 * a2;
        v75 += 32;
        --v72;
      }

      while (v72);
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

      while ((v10 * 16) != 256);
    }

    v80 = 2 * a5;
    v81 = v156;
    v23 = 0uLL;
    v82 = 8;
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
  return v153 - ((v152 * v152) >> 7);
}

uint64_t sub_277B44D3C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
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

      while (v53 != 544);
      v57 = (2 * a8);
      v58 = v156;
      v59 = v155;
      v60 = 16;
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
      v67 = 16;
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

      while (v87 != 544);
      v91 = vdupq_n_s16(8 - a4);
      v92 = (2 * a8);
      v93 = vdupq_n_s16(a4);
      v94 = v156;
      v95 = v155;
      v96 = 16;
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
      v103 = 16;
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
      v16 = 16;
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
      v24 = 16;
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

      while (v108 != 544);
      v114 = (2 * a8);
      v115 = v156;
      v116 = v155;
      v117 = 16;
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
      v124 = 16;
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

      while (v129 != 544);
      v135 = vdupq_n_s16(8 - a4);
      v136 = (2 * a8);
      v137 = vdupq_n_s16(a4);
      v138 = v156;
      v139 = v155;
      v140 = 16;
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
      v147 = 16;
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
      v35 = 16;
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
      v42 = 16;
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
      v48 = 16;
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
      v75 = 16;
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

      while ((v10 * 16) != 512);
    }

    v80 = 2 * a5;
    v81 = v156;
    v23 = 0uLL;
    v82 = 16;
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
  return v153 - ((v152 * v152) >> 8);
}

uint64_t sub_277B45534(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
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

      while (v53 != 1056);
      v57 = (2 * a8);
      v58 = v156;
      v59 = v155;
      v60 = 32;
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
      v67 = 32;
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

      while (v87 != 1056);
      v91 = vdupq_n_s16(8 - a4);
      v92 = (2 * a8);
      v93 = vdupq_n_s16(a4);
      v94 = v156;
      v95 = v155;
      v96 = 32;
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
      v103 = 32;
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
      v16 = 32;
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
      v24 = 32;
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

      while (v108 != 1056);
      v114 = (2 * a8);
      v115 = v156;
      v116 = v155;
      v117 = 32;
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
      v124 = 32;
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

      while (v129 != 1056);
      v135 = vdupq_n_s16(8 - a4);
      v136 = (2 * a8);
      v137 = vdupq_n_s16(a4);
      v138 = v156;
      v139 = v155;
      v140 = 32;
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
      v147 = 32;
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
      v35 = 32;
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
      v42 = 32;
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
      v48 = 32;
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
      v75 = 32;
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

      while ((v10 * 16) != 1024);
    }

    v80 = 2 * a5;
    v81 = v156;
    v23 = 0uLL;
    v82 = 32;
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
  return v153 - ((v152 * v152) >> 9);
}

uint64_t sub_277B45D2C(uint64_t a1, int a2, unsigned int a3, unsigned int a4, uint64_t a5, int a6, _DWORD *a7, uint64_t a8)
{
  v138 = *MEMORY[0x277D85DE8];
  v8 = 2 * a1;
  if (a3 == 4)
  {
    if (a4 == 4)
    {
      v47 = v137;
      v48 = 17;
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
      v54 = 16;
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
      v59 = 16;
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
      v78 = 17;
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
      v81 = vdupq_n_s16(8 - a4);
      v82 = 2 * a8;
      v83 = vdupq_n_s16(a4);
      v84 = v137;
      v85 = v136;
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
      v89 = 2 * a5;
      v90 = v136;
      v21 = 0uLL;
      v91 = 16;
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
      v19 = 2 * a5;
      v20 = v137;
      v21 = 0uLL;
      v22 = 16;
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
    if (a4 == 4)
    {
      v95 = vdupq_n_s16(8 - a3);
      v96 = vdupq_n_s16(a3);
      v97 = v137;
      v98 = 17;
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
      v104 = 16;
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
      v109 = 16;
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
      v116 = 17;
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
      v119 = vdupq_n_s16(8 - a4);
      v120 = 2 * a8;
      v121 = vdupq_n_s16(a4);
      v122 = v137;
      v123 = v136;
      v124 = 16;
      do
      {
        v125 = 0;
        v126 = -8;
        do
        {
          *&v123[v125] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v122[v125], v119), *&v122[v125 + 64], v121), 3uLL), *(v120 + v125));
          v126 += 8;
          v125 += 16;
        }

        while (v126 < 0x18);
        v120 += v125;
        v122 += 64;
        v123 += 64;
        --v124;
      }

      while (v124);
      v127 = 2 * a5;
      v128 = v136;
      v21 = 0uLL;
      v129 = 16;
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
      v28 = 2 * a8;
      v29 = vdupq_n_s16(8 - a3);
      v30 = vdupq_n_s16(a3);
      v31 = v137;
      v32 = 16;
      do
      {
        v33 = 0;
        v34 = -8;
        do
        {
          *&v31[v33] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v33), v29), *(v8 + v33 + 2), v30), 3uLL), *(v28 + v33));
          v34 += 8;
          v33 += 16;
        }

        while (v34 < 0x18);
        v28 += v33;
        v31 += 64;
        v8 += 2 * a2;
        --v32;
      }

      while (v32);
      v35 = 2 * a5;
      v36 = v137;
      v21 = 0uLL;
      v37 = 16;
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
      v44 = 16;
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
      v63 = vdupq_n_s16(8 - a4);
      v64 = vdupq_n_s16(a4);
      v65 = 2 * a2;
      v66 = v8 + v65;
      v67 = v137;
      v68 = 16;
      do
      {
        v69 = 0;
        v70 = -8;
        do
        {
          *&v67[v69] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*(v8 + v69), v63), *(v66 + v69), v64), 3uLL), *(v9 + v69));
          v70 += 8;
          v69 += 16;
        }

        while (v70 < 0x18);
        v9 += v69;
        v67 += 64;
        v66 += v65;
        v8 += v65;
        --v68;
      }

      while (v68);
    }

    else
    {
      v10 = v137;
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

    v71 = 2 * a5;
    v72 = v137;
    v21 = 0uLL;
    v73 = 16;
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
  return v134 - ((v133 * v133) >> 9);
}

uint64_t sub_277B4653C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v146 = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v55 = v145;
      v56 = 33;
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

        while (v58 < 0x18);
        v55 += 64;
        v16 += 2 * v9;
        --v56;
      }

      while (v56);
      v59 = 2 * v15;
      v60 = v145;
      v61 = v144;
      v62 = 32;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v61[v63] = vrhaddq_u16(vrhaddq_u16(*&v60[v63], *&v60[v63 + 64]), *(v59 + v63));
          v64 += 8;
          v63 += 16;
        }

        while (v64 < 0x18);
        v59 += v63;
        v60 += 64;
        v61 += 64;
        --v62;
      }

      while (v62);
      v65 = 2 * v12;
      v66 = v144;
      v29 = 0uLL;
      v67 = 32;
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

        while (v69 < 0x18);
        v66 += 64;
        v65 += 2 * v13;
        --v67;
      }

      while (v67);
    }

    else if (v11)
    {
      v85 = v145;
      v86 = 33;
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

        while (v88 < 0x18);
        v85 += 64;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v145;
      v93 = v144;
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
      v97 = 2 * v12;
      v98 = v144;
      v29 = 0uLL;
      v99 = 32;
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

        while (v101 < 0x18);
        v98 += 64;
        v97 += 2 * v13;
        --v99;
      }

      while (v99);
    }

    else
    {
      v22 = 2 * v15;
      v23 = v145;
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
      v27 = 2 * v12;
      v28 = v145;
      v29 = 0uLL;
      v30 = 32;
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

        while (v34 < 0x18);
        v28 += 64;
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
      v106 = 33;
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

        while (v108 < 0x18);
        v105 += 64;
        v16 += 2 * v9;
        --v106;
      }

      while (v106);
      v109 = 2 * v15;
      v110 = v145;
      v111 = v144;
      v112 = 32;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113] = vrhaddq_u16(vrhaddq_u16(*&v110[v113], *&v110[v113 + 64]), *(v109 + v113));
          v114 += 8;
          v113 += 16;
        }

        while (v114 < 0x18);
        v109 += v113;
        v110 += 64;
        v111 += 64;
        --v112;
      }

      while (v112);
      v115 = 2 * v12;
      v116 = v144;
      v29 = 0uLL;
      v117 = 32;
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

        while (v119 < 0x18);
        v116 += 64;
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
      v124 = 33;
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

        while (v126 < 0x18);
        v123 += 64;
        v16 += 2 * v9;
        --v124;
      }

      while (v124);
      v127 = vdupq_n_s16(8 - v11);
      v128 = 2 * v15;
      v129 = vdupq_n_s16(v11);
      v130 = v145;
      v131 = v144;
      v132 = 32;
      do
      {
        v133 = 0;
        v134 = -8;
        do
        {
          *&v131[v133] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v130[v133], v127), *&v130[v133 + 64], v129), 3uLL), *(v128 + v133));
          v134 += 8;
          v133 += 16;
        }

        while (v134 < 0x18);
        v128 += v133;
        v130 += 64;
        v131 += 64;
        --v132;
      }

      while (v132);
      v135 = 2 * v12;
      v136 = v144;
      v29 = 0uLL;
      v137 = 32;
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

        while (v139 < 0x18);
        v136 += 64;
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
      v40 = 32;
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

        while (v42 < 0x18);
        v36 += v41;
        v39 += 64;
        v16 += 2 * v9;
        --v40;
      }

      while (v40);
      v43 = 2 * v12;
      v44 = v145;
      v29 = 0uLL;
      v45 = 32;
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

        while (v47 < 0x18);
        v44 += 64;
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
      v52 = 32;
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

        while (v54 < 0x18);
        v17 += v53;
        v51 += 64;
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
      v76 = 32;
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

        while (v78 < 0x18);
        v17 += v77;
        v75 += 64;
        v74 += v73;
        v16 += v73;
        --v76;
      }

      while (v76);
    }

    else
    {
      v18 = v145;
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

    v79 = 2 * v12;
    v80 = v145;
    v29 = 0uLL;
    v81 = 32;
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

      while (v83 < 0x18);
      v80 += 64;
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

uint64_t sub_277B46D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v145[520] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v55 = v145;
      v56 = 65;
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

        while (v58 < 0x18);
        v55 += 8;
        v16 += 2 * v9;
        --v56;
      }

      while (v56);
      v59 = 2 * v15;
      v60 = v145;
      v61 = v144;
      v62 = 64;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v61[v63 * 8] = vrhaddq_u16(vrhaddq_u16(*&v60[v63], *&v60[v63 + 8]), *(v59 + v63 * 8));
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x18);
        v59 += v63 * 8;
        v60 += 8;
        v61 += 64;
        --v62;
      }

      while (v62);
      v65 = 2 * v12;
      v66 = v144;
      v29 = 0uLL;
      v67 = 64;
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

        while (v69 < 0x18);
        v66 += 64;
        v65 += 2 * v13;
        --v67;
      }

      while (v67);
    }

    else if (v11)
    {
      v85 = v145;
      v86 = 65;
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

        while (v88 < 0x18);
        v85 += 8;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v145;
      v93 = v144;
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
      v97 = 2 * v12;
      v98 = v144;
      v29 = 0uLL;
      v99 = 64;
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

        while (v101 < 0x18);
        v98 += 64;
        v97 += 2 * v13;
        --v99;
      }

      while (v99);
    }

    else
    {
      v22 = 2 * v15;
      v23 = v145;
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
      v27 = 2 * v12;
      v28 = v145;
      v29 = 0uLL;
      v30 = 64;
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

        while (v34 < 0x18);
        v28 += 8;
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
      v106 = 65;
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

        while (v108 < 0x18);
        v105 += 8;
        v16 += 2 * v9;
        --v106;
      }

      while (v106);
      v109 = 2 * v15;
      v110 = v145;
      v111 = v144;
      v112 = 64;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113 * 8] = vrhaddq_u16(vrhaddq_u16(*&v110[v113], *&v110[v113 + 8]), *(v109 + v113 * 8));
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x18);
        v109 += v113 * 8;
        v110 += 8;
        v111 += 64;
        --v112;
      }

      while (v112);
      v115 = 2 * v12;
      v116 = v144;
      v29 = 0uLL;
      v117 = 64;
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

        while (v119 < 0x18);
        v116 += 64;
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
      v124 = 65;
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

        while (v126 < 0x18);
        v123 += 8;
        v16 += 2 * v9;
        --v124;
      }

      while (v124);
      v127 = vdupq_n_s16(8 - v11);
      v128 = 2 * v15;
      v129 = vdupq_n_s16(v11);
      v130 = v145;
      v131 = v144;
      v132 = 64;
      do
      {
        v133 = 0;
        v134 = -8;
        do
        {
          *&v131[v133 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v130[v133], v127), *&v130[v133 + 8], v129), 3uLL), *(v128 + v133 * 8));
          v134 += 8;
          v133 += 2;
        }

        while (v134 < 0x18);
        v128 += v133 * 8;
        v130 += 8;
        v131 += 64;
        --v132;
      }

      while (v132);
      v135 = 2 * v12;
      v136 = v144;
      v29 = 0uLL;
      v137 = 64;
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

        while (v139 < 0x18);
        v136 += 64;
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
      v40 = 64;
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

        while (v42 < 0x18);
        v36 += v41;
        v39 += 8;
        v16 += 2 * v9;
        --v40;
      }

      while (v40);
      v43 = 2 * v12;
      v44 = v145;
      v29 = 0uLL;
      v45 = 64;
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

        while (v47 < 0x18);
        v44 += 8;
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
      v52 = 64;
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

        while (v54 < 0x18);
        v17 += v53;
        v51 += 8;
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
      v76 = 64;
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

        while (v78 < 0x18);
        v17 += v77;
        v75 += 8;
        v74 += v73;
        v16 += v73;
        --v76;
      }

      while (v76);
    }

    else
    {
      v18 = v145;
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

    v79 = 2 * v12;
    v80 = v145;
    v29 = 0uLL;
    v81 = 64;
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

      while (v83 < 0x18);
      v80 += 8;
      v79 += 2 * v13;
      --v81;
    }

    while (v81);
  }

  v141 = vaddvq_s32(v32);
  v142 = vaddlvq_u32(vaddq_s32(v31, v29));
  *v14 = v142;
  return v142 - ((v141 * v141) >> 11);
}

uint64_t sub_277B475D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v145[528] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v55 = v145;
      v56 = 33;
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

        while (v58 < 0x38);
        v55 += 16;
        v16 += 2 * v9;
        --v56;
      }

      while (v56);
      v59 = 2 * v15;
      v60 = v145;
      v61 = v144;
      v62 = 32;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v61[v63 * 8] = vrhaddq_u16(vrhaddq_u16(*&v60[v63], *&v60[v63 + 16]), *(v59 + v63 * 8));
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v59 += v63 * 8;
        v60 += 16;
        v61 += 128;
        --v62;
      }

      while (v62);
      v65 = 2 * v12;
      v66 = v144;
      v29 = 0uLL;
      v67 = 32;
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
      v86 = 33;
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

        while (v88 < 0x38);
        v85 += 16;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v145;
      v93 = v144;
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
      v97 = 2 * v12;
      v98 = v144;
      v29 = 0uLL;
      v99 = 32;
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
      v27 = 2 * v12;
      v28 = v145;
      v29 = 0uLL;
      v30 = 32;
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

        while (v34 < 0x38);
        v28 += 16;
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
      v106 = 33;
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

        while (v108 < 0x38);
        v105 += 16;
        v16 += 2 * v9;
        --v106;
      }

      while (v106);
      v109 = 2 * v15;
      v110 = v145;
      v111 = v144;
      v112 = 32;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113 * 8] = vrhaddq_u16(vrhaddq_u16(*&v110[v113], *&v110[v113 + 16]), *(v109 + v113 * 8));
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x38);
        v109 += v113 * 8;
        v110 += 16;
        v111 += 128;
        --v112;
      }

      while (v112);
      v115 = 2 * v12;
      v116 = v144;
      v29 = 0uLL;
      v117 = 32;
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
      v124 = 33;
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

        while (v126 < 0x38);
        v123 += 16;
        v16 += 2 * v9;
        --v124;
      }

      while (v124);
      v127 = vdupq_n_s16(8 - v11);
      v128 = 2 * v15;
      v129 = vdupq_n_s16(v11);
      v130 = v145;
      v131 = v144;
      v132 = 32;
      do
      {
        v133 = 0;
        v134 = -8;
        do
        {
          *&v131[v133 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v130[v133], v127), *&v130[v133 + 16], v129), 3uLL), *(v128 + v133 * 8));
          v134 += 8;
          v133 += 2;
        }

        while (v134 < 0x38);
        v128 += v133 * 8;
        v130 += 16;
        v131 += 128;
        --v132;
      }

      while (v132);
      v135 = 2 * v12;
      v136 = v144;
      v29 = 0uLL;
      v137 = 32;
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
      v40 = 32;
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

        while (v42 < 0x38);
        v36 += v41;
        v39 += 16;
        v16 += 2 * v9;
        --v40;
      }

      while (v40);
      v43 = 2 * v12;
      v44 = v145;
      v29 = 0uLL;
      v45 = 32;
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

        while (v47 < 0x38);
        v44 += 16;
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
      v52 = 32;
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

        while (v54 < 0x38);
        v17 += v53;
        v51 += 16;
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
      v76 = 32;
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

        while (v78 < 0x38);
        v17 += v77;
        v75 += 16;
        v74 += v73;
        v16 += v73;
        --v76;
      }

      while (v76);
    }

    else
    {
      v18 = v145;
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

    v79 = 2 * v12;
    v80 = v145;
    v29 = 0uLL;
    v81 = 32;
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

      while (v83 < 0x38);
      v80 += 16;
      v79 += 2 * v13;
      --v81;
    }

    while (v81);
  }

  v141 = vaddvq_s32(v32);
  v142 = vaddlvq_u32(vaddq_s32(v31, v29));
  *v14 = v142;
  return v142 - ((v141 * v141) >> 11);
}

uint64_t sub_277B47E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v145[1040] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v55 = v145;
      v56 = 65;
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

        while (v58 < 0x38);
        v55 += 16;
        v16 += 2 * v9;
        --v56;
      }

      while (v56);
      v59 = 2 * v15;
      v60 = v145;
      v61 = v144;
      v62 = 64;
      do
      {
        v63 = 0;
        v64 = -8;
        do
        {
          *&v61[v63 * 8] = vrhaddq_u16(vrhaddq_u16(*&v60[v63], *&v60[v63 + 16]), *(v59 + v63 * 8));
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v59 += v63 * 8;
        v60 += 16;
        v61 += 128;
        --v62;
      }

      while (v62);
      v65 = 2 * v12;
      v66 = v144;
      v29 = 0uLL;
      v67 = 64;
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
      v86 = 65;
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

        while (v88 < 0x38);
        v85 += 16;
        v16 += 2 * v9;
        --v86;
      }

      while (v86);
      v89 = vdupq_n_s16(8 - v11);
      v90 = 2 * v15;
      v91 = vdupq_n_s16(v11);
      v92 = v145;
      v93 = v144;
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
      v97 = 2 * v12;
      v98 = v144;
      v29 = 0uLL;
      v99 = 64;
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
      v27 = 2 * v12;
      v28 = v145;
      v29 = 0uLL;
      v30 = 64;
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

        while (v34 < 0x38);
        v28 += 16;
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
      v106 = 65;
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

        while (v108 < 0x38);
        v105 += 16;
        v16 += 2 * v9;
        --v106;
      }

      while (v106);
      v109 = 2 * v15;
      v110 = v145;
      v111 = v144;
      v112 = 64;
      do
      {
        v113 = 0;
        v114 = -8;
        do
        {
          *&v111[v113 * 8] = vrhaddq_u16(vrhaddq_u16(*&v110[v113], *&v110[v113 + 16]), *(v109 + v113 * 8));
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x38);
        v109 += v113 * 8;
        v110 += 16;
        v111 += 128;
        --v112;
      }

      while (v112);
      v115 = 2 * v12;
      v116 = v144;
      v29 = 0uLL;
      v117 = 64;
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
      v124 = 65;
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

        while (v126 < 0x38);
        v123 += 16;
        v16 += 2 * v9;
        --v124;
      }

      while (v124);
      v127 = vdupq_n_s16(8 - v11);
      v128 = 2 * v15;
      v129 = vdupq_n_s16(v11);
      v130 = v145;
      v131 = v144;
      v132 = 64;
      do
      {
        v133 = 0;
        v134 = -8;
        do
        {
          *&v131[v133 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v130[v133], v127), *&v130[v133 + 16], v129), 3uLL), *(v128 + v133 * 8));
          v134 += 8;
          v133 += 2;
        }

        while (v134 < 0x38);
        v128 += v133 * 8;
        v130 += 16;
        v131 += 128;
        --v132;
      }

      while (v132);
      v135 = 2 * v12;
      v136 = v144;
      v29 = 0uLL;
      v137 = 64;
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
      v40 = 64;
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

        while (v42 < 0x38);
        v36 += v41;
        v39 += 16;
        v16 += 2 * v9;
        --v40;
      }

      while (v40);
      v43 = 2 * v12;
      v44 = v145;
      v29 = 0uLL;
      v45 = 64;
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

        while (v47 < 0x38);
        v44 += 16;
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
      v52 = 64;
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

        while (v54 < 0x38);
        v17 += v53;
        v51 += 16;
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
      v76 = 64;
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

        while (v78 < 0x38);
        v17 += v77;
        v75 += 16;
        v74 += v73;
        v16 += v73;
        --v76;
      }

      while (v76);
    }

    else
    {
      v18 = v145;
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

    v79 = 2 * v12;
    v80 = v145;
    v29 = 0uLL;
    v81 = 64;
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

      while (v83 < 0x38);
      v80 += 16;
      v79 += 2 * v13;
      --v81;
    }

    while (v81);
  }

  v141 = vaddvq_s32(v32);
  v142 = vaddlvq_u32(vaddq_s32(v31, v29));
  *v14 = v142;
  return v142 - ((v141 * v141) >> 12);
}

uint64_t sub_277B486AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v145[2064] = *MEMORY[0x277D85DE8];
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

        while (v58 < 0x38);
        v55 += 16;
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
          *&v61[v63 * 8] = vrhaddq_u16(vrhaddq_u16(*&v60[v63], *&v60[v63 + 16]), *(v59 + v63 * 8));
          v64 += 8;
          v63 += 2;
        }

        while (v64 < 0x38);
        v59 += v63 * 8;
        v60 += 16;
        v61 += 128;
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

        while (v88 < 0x38);
        v85 += 16;
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

        while (v34 < 0x38);
        v28 += 16;
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

        while (v108 < 0x38);
        v105 += 16;
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
          *&v111[v113 * 8] = vrhaddq_u16(vrhaddq_u16(*&v110[v113], *&v110[v113 + 16]), *(v109 + v113 * 8));
          v114 += 8;
          v113 += 2;
        }

        while (v114 < 0x38);
        v109 += v113 * 8;
        v110 += 16;
        v111 += 128;
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

        while (v126 < 0x38);
        v123 += 16;
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
          *&v131[v133 * 8] = vrhaddq_u16(vrshrq_n_u16(vmlaq_s16(vmulq_s16(*&v130[v133], v127), *&v130[v133 + 16], v129), 3uLL), *(v128 + v133 * 8));
          v134 += 8;
          v133 += 2;
        }

        while (v134 < 0x38);
        v128 += v133 * 8;
        v130 += 16;
        v131 += 128;
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

        while (v42 < 0x38);
        v36 += v41;
        v39 += 16;
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

        while (v47 < 0x38);
        v44 += 16;
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

        while (v54 < 0x38);
        v17 += v53;
        v51 += 16;
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

        while (v78 < 0x38);
        v17 += v77;
        v75 += 16;
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

        while (v21 < 0x38);
        v17 += v20;
        v18 += 16;
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

      while (v83 < 0x38);
      v80 += 16;
      v79 += 2 * v13;
      --v81;
    }

    while (v81);
  }

  v141 = vaddvq_s32(v32);
  v142 = vaddlvq_u32(vaddq_s32(v31, v29));
  *v14 = v142;
  return v142 - ((v141 * v141) >> 13);
}

uint64_t sub_277B48F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5, a6, a7, a8);
  v145[2080] = *MEMORY[0x277D85DE8];
  v16 = 2 * v8;
  if (v10 == 4)
  {
    if (v11 == 4)
    {
      v55 = v145;
      v56 = 65;
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
      v62 = 64;
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
      v67 = 64;
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
      v86 = 65;
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
      v97 = 2 * v12;
      v98 = v144;
      v29 = 0uLL;
      v99 = 64;
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
      v27 = 2 * v12;
      v28 = v145;
      v29 = 0uLL;
      v30 = 64;
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
      v106 = 65;
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
      v112 = 64;
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
      v117 = 64;
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
      v124 = 65;
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
      v132 = 64;
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
      v137 = 64;
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
      v40 = 64;
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
      v45 = 64;
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
      v52 = 64;
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
      v76 = 64;
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

    v79 = 2 * v12;
    v80 = v145;
    v29 = 0uLL;
    v81 = 64;
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
  return v142 - ((v141 * v141) >> 13);
}