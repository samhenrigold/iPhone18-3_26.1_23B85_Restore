uint64_t non_linearity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v9;
  __I[320] = *MEMORY[0x1E69E9840];
  __C = 0;
  if (a9 == 320)
  {
    v22 = 5;
  }

  else
  {
    v22 = 4;
  }

  v23 = flt_19B0AFFA8[a9 == 320];
  vDSP_meanv(v10, 1, &__C, v22);
  v25 = *&__C <= v23 || v12 != 2;
  if (v18 < v20)
  {
    goto LABEL_77;
  }

  if (v18 - v20 <= 0x2F)
  {
    goto LABEL_77;
  }

  v26 = *v16;
  v27 = v16[2];
  v20[1] = v16[1];
  v20[2] = v27;
  *v20 = v26;
  if (v20 + 3 < v20)
  {
    goto LABEL_77;
  }

  __I[0] = 0xAAAAAAAAAAAAAAAALL;
  vDSP_maxmgvi(v21, 1, &__C + 1, __I, 0x140uLL);
  v28 = SLOWORD(__I[0]);
  v29 = 1.0;
  if (*(&__C + 1) <= 1.0)
  {
    v30 = 0.67;
  }

  else
  {
    v30 = 0.67 / *(&__C + 1);
  }

  v31 = *v14;
  if (*v14 <= 0.0 || v31 > (v30 * 1024.0))
  {
    *v14 = v30;
  }

  else
  {
    if (!LOWORD(__I[0]))
    {
      memset(__I, 255, 0xA00uLL);
      memset(v63, 255, sizeof(v63));
      v62 = v31;
      goto LABEL_39;
    }

    v32 = log((v30 / v31));
    v29 = exp(((1.0 / v28) * v32));
    v30 = v31;
  }

  memset(__I, 255, 0xA00uLL);
  memset(v63, 255, sizeof(v63));
  v62 = v30;
  if (v28 < 1)
  {
LABEL_39:
    v33 = 1;
    goto LABEL_40;
  }

  LOWORD(v33) = 1;
  do
  {
    v34 = &v63[v33 - 1];
    v36 = v34 - 1 < &v62 || v34 > __I || v34 - 1 >= v34;
    v37 = v34 + 1;
    if (v36 || v37 > __I || v34 >= v37)
    {
      goto LABEL_77;
    }

    *v34 = v29 * *(v34 - 1);
    LODWORD(v33) = (v33 + 1);
  }

  while (v33 <= v28);
  v33 = v33;
LABEL_40:
  vDSP_vfill(&v63[v33 - 2], &v63[v33 - 1], 1, 320 - v33);
  if (v25)
  {
    vDSP_vssq(v21, 1, __I, 1, 0x140uLL);
  }

  else
  {
    MEMORY[0x19EAE60E0](v21, 1, __I, 1, 320);
  }

  MEMORY[0x19EAE5FA0](__I, 1, &v62, 1, v20 + 3, 1, 320);
  *v14 = *&v63[318];
  v60 = 0;
  HIDWORD(__C) = 0;
  vDSP_maxmgvi(v21 + 320, 1, &__C + 1, &v60, 0x140uLL);
  v40 = v60 + 320;
  v41 = 1.0;
  if (*(&__C + 1) <= 1.0)
  {
    v42 = 0.67;
  }

  else
  {
    v42 = 0.67 / *(&__C + 1);
  }

  v43 = *v14;
  if (*v14 <= 0.0 || v43 > (v42 * 1024.0))
  {
    *v14 = v42;
    v44 = v40 << 16;
  }

  else
  {
    v44 = v40 << 16;
    if (v40 << 16 == 20971520)
    {
      *&v63[319] = *v14;
LABEL_53:
      v46 = 319;
      v47 = 321;
      goto LABEL_70;
    }

    v45 = log((v42 / v43));
    v41 = exp(((1.0 / ((v44 >> 16) - 320)) * v45));
    v42 = v43;
  }

  *&v63[319] = v42;
  if (v44 >> 16 < 321)
  {
    goto LABEL_53;
  }

  v48 = 321;
  do
  {
    v49 = &v63[v48 - 1];
    v51 = v49 - 1 < &v62 || v49 > __I || v49 - 1 >= v49;
    v52 = v49 + 1;
    if (v51 || v52 > __I || v49 >= v52)
    {
      goto LABEL_77;
    }

    *v49 = v41 * *(v49 - 1);
    ++v48;
  }

  while (v44 >> 16 >= v48);
  v47 = v48;
  v46 = 640 - v48;
LABEL_70:
  vDSP_vfill(&v63[v47 - 2], &v63[v47 - 1], 1, v46);
  v55 = v21 + 320;
  if (v25)
  {
    vDSP_vssq(v55, 1, &__I[160], 1, 0x140uLL);
  }

  else
  {
    MEMORY[0x19EAE60E0](v55, 1, &__I[160], 1, 320);
  }

  result = MEMORY[0x19EAE5FA0](&__I[160], 1, &v63[319], 1, v20 + 83, 1, 320);
  *v14 = *&v63[638];
  v57 = v20 + 160;
  if (v20 + 160 < v20 || v18 < v57 || v18 - v57 <= 0x2F || (v58 = *v57, v59 = v20[162], v16[1] = v20[161], v16[2] = v59, *v16 = v58, v16 + 3 < v16))
  {
LABEL_77:
    __break(0x5519u);
  }

  return result;
}

uint64_t FdCng_encodeSID(uint64_t *a1, uint64_t a2, float a3)
{
  v83[1] = *MEMORY[0x1E69E9840];
  v76 = *a1;
  memset(v82, 0, sizeof(v82));
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81[6] = v6;
  v81[7] = v6;
  v81[4] = v6;
  v81[5] = v6;
  v81[2] = v6;
  v81[3] = v6;
  v81[0] = v6;
  v81[1] = v6;
  *&v6 = -1;
  *(&v6 + 1) = -1;
  __C[6] = v6;
  __C[7] = v6;
  __C[4] = v6;
  __C[5] = v6;
  __C[2] = v6;
  __C[3] = v6;
  __C[0] = v6;
  __C[1] = v6;
  v7 = 0.0;
  v8 = 0.0;
  v9 = *(a1 + 702);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = a1 + 229;
    v12 = a1 + 241;
    while (1)
    {
      v13 = (a1 + v10 * 4 + 1832);
      v14 = (a1 + v10 * 4 + 1836);
      v15 = v14 > v12 || v13 > v14;
      v16 = !v15 && v13 >= v11;
      v17 = &v82[v10];
      v18 = &v82[v10 + 1];
      v19 = v16 && v17 >= v82;
      v20 = !v19 || v18 > v83;
      if (v20 || v17 > v18)
      {
        break;
      }

      v22 = log10((*v13 + 0.0001));
      v23 = v22 * 10.0;
      v82[v10] = v23;
      v8 = v8 + v23;
      if (v9 == ++v10)
      {
        goto LABEL_20;
      }
    }

LABEL_95:
    __break(0x5519u);
  }

LABEL_20:
  for (i = 4; i != 17; ++i)
  {
    v7 = v82[i] + v7;
  }

  if (v9 > 0)
  {
    v25 = v82;
    v26 = v9;
    do
    {
      v27 = v25 + 1;
      v28 = v25 < v82 || v27 > v83;
      if (v28 || v25 > v27)
      {
        goto LABEL_95;
      }

      *v25 = *v25 - (v7 / 13.0);
      ++v25;
    }

    while (--v26);
  }

  LODWORD(__A[0]) = 1065353216;
  vDSP_vfill(__A, __C, 1, v9);
  msvq_enc(&cdk_37bits, &hBitsN, 0, 0, 0, 0, v82, v83, levels_37bits, &bits_37bits, 6, __C, v81, v9, 24, v81, v82);
  if (v9 > 0x20)
  {
    goto LABEL_95;
  }

  memset(__A, 0, sizeof(__A));
  memset(v78, 0, sizeof(v78));
  memset(v77, 0, sizeof(v77));
  msvq_dec(&cdk_37bits, &hBitsN, __A, v78, 6, v9, 24, v81, v82, v77);
  v30 = 0.0;
  if (v9 >= 1)
  {
    v31 = v82;
    v32 = v9;
    do
    {
      v33 = *v31++;
      v30 = v33 + v30;
      --v32;
    }

    while (v32);
  }

  v34 = (v8 - v30) / v9;
  v35 = *(v76 + 16312);
  v36 = *(v76 + 16308);
  v37 = &scaleTable;
  v38 = 20;
  while (*v37 != v35 || v37[1] > v36 || v37[2] <= v36)
  {
    v37 += 4;
    if (!--v38)
    {
      v39 = v34 + -6.0;
      goto LABEL_43;
    }
  }

  v39 = *(v37 + 3) + v34;
LABEL_43:
  v40 = vcvtms_s32_f32(((v39 * 1.5) + 60.0) + 0.5);
  v41 = v40 & ~(v40 >> 31);
  if (v41 >= 127)
  {
    v42 = 127;
  }

  else
  {
    v42 = v41;
  }

  if (v9 >= 1)
  {
    v43 = (v76 + 14860);
    v44 = v82;
    v45 = v9;
    while ((v43 + 1) <= v76 + 14956 && v43 <= v43 + 1)
    {
      v47 = *v44++;
      v48 = __exp10(((v47 + ((v42 - 60) / 1.5)) / 10.0));
      *v43++ = v48;
      if (!--v45)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_95;
  }

LABEL_53:
  if (v35 == 2)
  {
    if (v36 > 13200)
    {
      goto LABEL_61;
    }
  }

  else if (v35)
  {
    goto LABEL_61;
  }

  v49 = v76 + 14860 + 4 * v9;
  v50 = (v49 - 4);
  if (v49 - 4 < v76 + 14860 || v49 > v76 + 14956 || v50 > v49)
  {
    goto LABEL_95;
  }

  *v50 = *v50 * 0.8;
LABEL_61:
  if (*a2 == 2)
  {
    v51 = 0;
    v52 = &bits_37bits;
    do
    {
      v53 = v52 + 1;
      if (v52 < &bits_37bits || v53 > ENR_ATT || v52 > v53)
      {
        goto LABEL_95;
      }

      v56 = *(a2 + 40);
      v57 = v56 + 7812;
      v58 = *(a2 + 50);
      v59 = (v56 + 4 * v58);
      v60 = v59 + 2;
      v61 = v59 < v56 || v60 > v57;
      if (v61 || v59 > v60)
      {
        goto LABEL_95;
      }

      v63 = *v52++;
      *v59 = *(v81 + v51);
      v59[1] = v63;
      *(a2 + 50) = v58 + 1;
      v64 = *(a2 + 36) + v63;
      *(a2 + 36) = v64;
      v51 += 4;
    }

    while (v51 != 24);
    v65 = (v56 + 4 * (v58 + 1));
    if (v65 < v56 || (v65 + 2) > v57 || v65 > v65 + 2)
    {
      goto LABEL_95;
    }

    *v65 = v42;
    v65[1] = 7;
    *(a2 + 50) = v58 + 2;
    *(a2 + 36) = v64 + 7;
  }

  else
  {
    push_indice(a2, 2, 1, 1);
    push_indice(a2, 3, *(a2 + 130), 2);
    push_indice(a2, 3, *(a2 + 140) == 320, 1);
    v66 = 0;
    v67 = &bits_37bits;
    do
    {
      v68 = v67 + 1;
      if (v67 < &bits_37bits || v68 > ENR_ATT || v67 > v68)
      {
        goto LABEL_95;
      }

      v71 = *v67++;
      push_indice(a2, 16, *(v81 + v66), v71);
      v66 += 4;
    }

    while (v66 != 24);
    push_indice(a2, 1387, v42, 7);
  }

  v72 = *(a1 + 701) - *(a1 + 700);
  if (v72 > 0x154)
  {
    goto LABEL_95;
  }

  v73 = *(a1 + 702);
  if (v73 > 0x18)
  {
    goto LABEL_95;
  }

  scalebands((v76 + 14860), (a1 + 364), v73, a1 + 2812, *(a1 + 727), v72, (v76 + 13004), 1);
  return lpc_from_spectrum(v76 + 13004, v76 + 14364, *(a1 + 700), *(a1 + 699), *(v76 + 68), *(v76 + 11640), *(v76 + 11648), a3, v74, (v76 + 14960), v76 + 15028, *(v76 + 11656));
}

void generate_comfort_noise_enc(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v146[0] = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 39840);
  v3 = *v2;
  if (*v2 > (*v2 + 16320))
  {
    goto LABEL_161;
  }

  v4 = v1;
  v5 = v3 + 13004;
  v6 = (v3 + 14364);
  v7 = v3 + 14366;
  v8 = v3 + 1352;
  v138 = v1 + 110868;
  v9 = *(v1 + 110868);
  v10 = *(v1 + 130);
  v11 = *(v1 + 36264);
  v12 = *(v2 + 2800);
  if (v12)
  {
    *(v3 + 1352) = 0;
    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, (v3 + 1360), 1, (2 * v12 - 2));
    v13 = *(v2 + 2800);
    v14 = (v8 + 8 * v13);
    v15 = (v3 + 13004);
  }

  else
  {
    if (v6 > v7)
    {
      goto LABEL_161;
    }

    v13 = 0;
    v16 = 31821 * *v6 + 13849;
    v17 = v16;
    v18 = 31821 * v16 + 13849;
    v19 = v18;
    v20 = 31821 * v18 + 13849;
    *v6 = v20;
    v15 = (v3 + 13008);
    *(v3 + 1352) = (((v17 + v19) + v20) * 0.000030518) * sqrtf(*(v3 + 13004));
    v14 = (v3 + 1360);
  }

  v21 = v3 + 3912;
  v22 = *(v2 + 2796);
  v23 = v5 + 4 * v22 - 4 * v13;
  if (v15 < v23)
  {
    while (v14)
    {
      if ((v14 + 1) > v21)
      {
        break;
      }

      if (v14 > v14 + 1)
      {
        break;
      }

      if (v14 < v8)
      {
        break;
      }

      if (v6 > v7)
      {
        break;
      }

      v24 = 31821 * *v6 + 13849;
      v25 = v24;
      v26 = 31821 * v24 + 13849;
      v27 = 31821 * v26 + 13849;
      *v6 = v27;
      v28 = ((v25 + v26) + v27) * 0.000030518;
      *v14 = v28;
      v29 = v15 + 1;
      if (v15 + 1 > v6 || v15 > v29 || v15 < v5)
      {
        break;
      }

      *v14 = v28 * sqrtf(*v15 * 0.5);
      v30 = v14 + 2;
      v31 = v14 + 1;
      v32 = v30 > v21 || v31 > v30;
      if (v32 || v31 < v8)
      {
        break;
      }

      v34 = 31821 * v27 + 13849;
      v35 = v34;
      v36 = 31821 * v34 + 13849;
      v37 = v35 + v36;
      v38 = 31821 * v36 + 13849;
      *v6 = v38;
      v39 = (v37 + v38) * 0.000030518;
      *v31 = v39;
      *v31 = v39 * sqrtf(*v15 * 0.5);
      v14 = v31 + 1;
      ++v15;
      if (v29 >= v23)
      {
        goto LABEL_24;
      }
    }

LABEL_161:
    __break(0x5519u);
  }

LABEL_24:
  v40 = (v8 + 8 * v22);
  if (v40 < v8)
  {
    goto LABEL_161;
  }

  v41 = (v4 + 26054);
  v42 = *(v3 + 68) - 2 * v22;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, v40, 1, v42);
  v43 = 0;
  *(v3 + 1356) = 0;
  if (*(v4 + 13) >= 2401)
  {
    v44 = *(v3 + 68);
    LODWORD(__A[0]) = 0;
    vDSP_vfill(__A, (v3 + 6472), 1, v44);
    v45 = *v4;
    v43 = *v41 > 0 && v45 == 2 || v45 == 1;
  }

  __A[0] = (v3 + 6472);
  __A[1] = (v3 + 9032);
  __A[2] = (v3 + 6472);
  v48 = *(v3 + 11616);
  if (v48 < *(v3 + 11632))
  {
    goto LABEL_161;
  }

  v49 = v3 + 72;
  SynthesisSTFT((v3 + 1352), v3 + 3912, (v3 + 72), v3 + 1352, __A, v48, *(v3 + 11624), v43, v3);
  v50 = *(v3 + 64);
  if (v50 > 320 || (v50 & 0x8000) != 0)
  {
    goto LABEL_161;
  }

  LODWORD(__A[0]) = -1;
  vDSP_dotpr((v3 + 15028), 1, (v3 + 15028), 1, __A, v50 & 0x7FFF);
  v51 = *(v3 + 64);
  v52 = log10(((*__A / v51) + 0.1));
  v53 = v52 / 0.30103;
  if (v10)
  {
    v54 = 1.5;
    if (v10 == 1)
    {
      if ((v11 & 0x8000) != 0)
      {
        v55 = &dword_19B3A0FE4;
      }

      else
      {
        v55 = &ENR_ATT[v11];
        if (v55 < ENR_ATT || v55 + 1 > &subband_search_offsets_13p2kbps_Har || v55 > v55 + 1)
        {
          goto LABEL_161;
        }
      }

      v54 = *v55;
    }

    v53 = v53 - v54;
  }

  v56 = (*(v4 + 6229) * 0.8);
  v57 = v56 + exp2(v53) * 0.200000003;
  *(v4 + 6229) = v57;
  if (*(v4 + 13) >= 2401 && *v4 == 2)
  {
    memset(__A, 255, sizeof(__A));
    v58 = *v6;
    v143 = -1;
    *&v59 = -1;
    *(&v59 + 1) = -1;
    v142[2] = v59;
    v142[3] = v59;
    v142[0] = v59;
    v142[1] = v59;
    if (*v41 < 1)
    {
      v139 = v142;
      v140 = &v144;
      v141 = v142;
      lsp2a_stab((v4 + 2602), &v139);
      v81 = v51 / 2;
      v82 = *(v4 + 62);
      v83 = 0.0;
      if (v51 > 1)
      {
        v84 = 0;
        do
        {
          v85 = &v4[2 * (v51 / -2) + 766 + 2 * v84];
          v86 = (v85 + 1);
          v87 = v85 < v4 + 63 || v86 > (v4 + 766);
          if (v87 || v85 > v86)
          {
            goto LABEL_161;
          }

          v83 = v83 + (*v85 * *v85);
        }

        while (v81 > ++v84);
      }

      if (v51 >= 1)
      {
        v89 = 0;
        v90 = sqrtf(v83 / v81);
        v91 = 0.0;
        do
        {
          v92 = __A + v89;
          v93 = v92 + 1;
          if (v92 < __A || v93 > v146 || v92 > v93)
          {
            goto LABEL_161;
          }

          v96 = 31821 * v58 + 13849;
          v97 = v96;
          v98 = 31821 * v96 + 13849;
          v58 = 31821 * v98 + 13849;
          v99 = ((v97 + v98) + (31821 * v98 + 13849)) * 0.000030518;
          *v92 = v99;
          v91 = v91 + (v99 * v99);
          ++v89;
        }

        while (v51 > v89);
        v100 = 0;
        v101 = v90 / sqrtf(v91 / v51);
        do
        {
          v102 = __A + v100;
          v103 = v102 + 1;
          v104 = v102 < __A || v103 > v146;
          if (v104 || v102 > v103)
          {
            goto LABEL_161;
          }

          *v102 = v101 * *v102;
        }

        while (v51 > ++v100);
      }

      if (v51 > 2048 || (v51 & 0x8000) != 0)
      {
        goto LABEL_161;
      }

      syn_filt(v142);
      LODWORD(v139) = v82;
      deemph(__A, v51, &v139, v9);
      if (v51 >= 2)
      {
        v106 = 0;
        LOWORD(v107) = 0;
        while (1)
        {
          v108 = __A + v107;
          v109 = v108 + 1;
          v110 = v108 < __A || v109 > v146;
          if (v110 || v108 > v109)
          {
            break;
          }

          v107 = v107;
          v112 = (*(v3 + 11616) + 4 * (v106 + v81));
          v113 = (v112 + 1) > *(v3 + 11624) || v112 > v112 + 1;
          v114 = !v113 && v112 >= *(v3 + 11632);
          v115 = (v49 + 4 * v107);
          v116 = v115 + 1;
          v117 = !v114 || v116 > v8;
          v118 = v117 || v115 > v116;
          if (v118 || v115 < v49)
          {
            break;
          }

          *v115 = *v115 + (*v108 * *v112);
          LOWORD(v107) = v107 + 1;
          v106 = v107;
          if (v81 <= v107)
          {
            return;
          }
        }

        goto LABEL_161;
      }
    }

    else
    {
      v60 = (v4 + 38036);
      v61 = *(v4 + 19357);
      v62 = *(v4 + 19358);
      v63 = *(v4 + 19359);
      v64 = v4[38713];
      if (v64 == 4)
      {
        LOWORD(v64) = 0;
      }

      v65 = -*(v4 + 19362) & (*(v4 + 19362) >> 31);
      v139 = (v3 + 72);
      v140 = (v3 + 1352);
      v141 = (v3 + 72);
      tcx_windowing_synthesis_current_frame(&v139, v4 + 17218, (v4 + 35276), v4 + 19025, (v4 + 38470), v4 + 19235, (v4 + 38590), v61, v62, v63, 0, v64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v51 / 2, v65, 1, 0, 0);
      if (v4[38048])
      {
        v66 = *(v3 + 64);
        if (v66 >= 1)
        {
          v67 = 0;
          v68 = 0;
          v69 = v4 + 24774;
          v70 = (56250 * (*(v138 + 952) / 100) * 0x29F16B11C6D1E109) >> 64;
          v71 = ((v70 >> 63) + (v70 >> 14));
          while (1)
          {
            v72 = &v69[2 * v71 + 2 * v67];
            v73 = v72 + 1;
            v74 = v72 < v69 || v73 > v41;
            v75 = v74 || v72 > v73;
            v76 = (v49 + 4 * v68);
            v77 = v76 + 1;
            v78 = v75 || v77 > v8;
            v79 = v78 || v76 > v77;
            if (v79 || v76 < v49)
            {
              break;
            }

            *v76 = *v72 + *v76;
            v67 = ++v68;
            if (v66 <= v68)
            {
              return;
            }
          }

          goto LABEL_161;
        }
      }

      else
      {
        v120 = *(v4 + 19359);
        if (v120 > 0x3C)
        {
          goto LABEL_161;
        }

        v121 = *(v4 + 19358);
        if (v121 > 0xD2)
        {
          goto LABEL_161;
        }

        v122 = *v60;
        v123 = *(v4 + 9510);
        if (*v60 > v123)
        {
          goto LABEL_161;
        }

        if (*(v4 + 9511) > v122)
        {
          goto LABEL_161;
        }

        v124 = *(v4 + 19357);
        if ((v124 & 0x80000000) != 0 || (v123 - v122) >> 2 < v124)
        {
          goto LABEL_161;
        }

        v125 = v4 + 988;
        tcx_windowing_synthesis_past_frame((v4 + 988), (v4 + 1756), v122, (v4 + 38050), (v4 + 38470), v124, v121, v120, v4[38713]);
        v126 = *(v4 + 19357);
        if (v126 >= 1)
        {
          v127 = 0;
          while (1)
          {
            v128 = v127;
            v129 = &v125[2 * v127];
            v130 = (v129 + 1);
            v131 = v129 < v125 || v130 > (v4 + 1756);
            v132 = v131 || v129 > v130;
            v133 = (v49 + 4 * v128);
            v134 = v133 + 1;
            v135 = v132 || v134 > v8;
            v136 = v135 || v133 > v134;
            if (v136 || v133 < v49)
            {
              break;
            }

            *v133 = *v129 + *v133;
            v127 = v128 + 1;
            if (v126 <= (v128 + 1))
            {
              return;
            }
          }

          goto LABEL_161;
        }
      }
    }
  }
}

void calc_residu(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  if (a4 >= 1)
  {
    LOWORD(v8) = 0;
    v9 = a2 + 4 * a4;
    v10 = 4 * a4 - 253;
    for (i = a3; ; i += 68)
    {
      v12 = (a2 + 4 * v8);
      v13 = v12 <= v9 && v12 >= a2;
      v14 = v13 && 4 * v8 <= v10;
      if (!v14 || i < a3)
      {
        break;
      }

      v16 = v8;
      vDSP_conv((*a1 + 4 * v8 - 64), 1, (i + 64), -1, v12, 1, 0x40uLL, 0x11uLL);
      v8 = (v16 + 64);
      if (v8 >= a4)
      {
        return;
      }
    }

    __break(0x5519u);
  }
}

void SynthesisSTFT(DSPComplex *a1, unint64_t a2, float *a3, unint64_t a4, char **a5, unint64_t a6, unint64_t a7, int a8, uint64_t a9)
{
  v97 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  RFFTN(a1, a2, *(a9 + 11640), *(a9 + 11648), *(a9 + 68), 1, *(a9 + 11656));
  v17 = *(a9 + 64);
  v18 = *a5;
  v19 = a5[2];
  v20 = &(*a5)[4 * v17];
  if (v20 < v19 || v18 < v19)
  {
    goto LABEL_149;
  }

  if (v17 < 1)
  {
    v27 = v17;
  }

  else
  {
    v93 = a8;
    v22 = a5[1];
    if (v22 < v18)
    {
      goto LABEL_149;
    }

    v23 = a4;
    v24 = 4 * (v17 & 0x7FFF);
    v25 = v20 <= v22 && v22 - v20 >= v24;
    if (!v25 || v22 - v18 < v24)
    {
      goto LABEL_149;
    }

    memmove(v18, v20, v24);
    if (&v18[v24] < v18)
    {
      goto LABEL_149;
    }

    v17 = *(a9 + 64);
    v18 = *a5;
    v19 = a5[2];
    v27 = v17;
    a4 = v23;
    a8 = v93;
  }

  v28 = &v18[4 * v27];
  if (v28 < v19)
  {
    goto LABEL_149;
  }

  v94 = NAN;
  __A = 0.0;
  vDSP_vfill(&__A, v28, 1, v17);
  v29 = *(a9 + 64);
  if (!a8)
  {
    if (v29 >= 0)
    {
      v38 = *(a9 + 64);
    }

    else
    {
      v38 = v29 + 3;
    }

    v39 = v38 >> 2;
    v40 = 3 * v29 / 4;
    v41 = (v38 >> 2);
    if (v40 <= v41)
    {
LABEL_63:
      v50 = 5 * v29 / 4;
      if (v50 <= v41)
      {
        v30 = v39;
        goto LABEL_85;
      }

      v51 = v39;
      while (1)
      {
        v52 = (a1 + 4 * v51);
        p_imag = &v52->imag;
        v54 = v52 < a1 || p_imag > a2;
        if (v54 || v52 > p_imag)
        {
          break;
        }

        v56 = v51;
        v57 = &(*a5)[4 * v51];
        v58 = v57 + 4 > a5[1] || v57 > v57 + 4;
        if (v58 || v57 < a5[2])
        {
          break;
        }

        *v57 = v52->real;
        v51 = v56 + 1;
        v33 = v50 <= (v56 + 1);
        v30 = v56 + 1;
        if (v33)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      while (1)
      {
        v42 = (a1 + 4 * v39);
        v43 = &v42->imag;
        v44 = v42 < a1 || v43 > a2;
        if (v44 || v42 > v43)
        {
          break;
        }

        v46 = (a6 + 4 * (v41 + v29 / -4));
        if (v46 < a6 || (v46 + 1) > a7 || v46 > v46 + 1)
        {
          break;
        }

        v47 = &(*a5)[4 * v39];
        v48 = v47 + 1 > a5[1] || v47 > v47 + 1;
        if (v48 || v47 < a5[2])
        {
          break;
        }

        *v47 = *v47 + (v42->real * *v46);
        LOWORD(v39) = v39 + 1;
        v41 = v39;
        if (v40 <= v39)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_149:
    __break(0x5519u);
  }

  if (v29 >= 1)
  {
    v30 = 0;
    while (1)
    {
      v31 = (a1 + 4 * v30);
      v32 = &v31->imag;
      v33 = v31 < a1 || v32 > a2;
      if (v33 || v31 > v32)
      {
        goto LABEL_149;
      }

      v35 = &(*a5)[4 * v30];
      v36 = v35 + 4 > a5[1] || v35 > v35 + 4;
      if (v36 || v35 < a5[2])
      {
        goto LABEL_149;
      }

      *v35 = v31->real;
      if (5 * v29 / 4 <= ++v30)
      {
        goto LABEL_85;
      }
    }
  }

  v30 = 0;
LABEL_85:
  v60 = 7 * v29 / 4;
  v61 = v30;
  if (v60 > v30)
  {
    v62 = v30;
    while (1)
    {
      v63 = (a1 + 4 * v62);
      v64 = &v63->imag;
      v65 = v63 < a1 || v64 > a2;
      v66 = v65 || v63 > v64;
      v67 = (a6 + 4 * (3 * v29 / -4 + v61));
      v68 = (v67 + 1);
      v69 = !v66 && v67 >= a6;
      v70 = !v69 || v68 > a7;
      if (v70 || v67 > v68)
      {
        goto LABEL_149;
      }

      v72 = &(*a5)[4 * v62];
      v73 = v72 + 1 > a5[1] || v72 > v72 + 1;
      if (v73 || v72 < a5[2])
      {
        goto LABEL_149;
      }

      *v72 = v63->real * *v67;
      v61 = ++v62;
      if (v60 <= v62)
      {
        goto LABEL_114;
      }
    }
  }

  v62 = v30;
LABEL_114:
  v75 = *(a9 + 68);
  if (v75 > v61)
  {
    v76 = a5[2];
    do
    {
      v77 = &(*a5)[4 * v62];
      v78 = v77 + 4 > a5[1] || v77 > v77 + 4;
      if (v78 || v77 < v76)
      {
        goto LABEL_149;
      }

      *v77 = 0;
    }

    while (v75 > ++v62);
  }

  v80 = v29 + 3;
  if (v29 >= 0)
  {
    v80 = v29;
  }

  if (a4 < a3)
  {
    goto LABEL_149;
  }

  if ((v29 & 0x8000) != 0)
  {
    goto LABEL_149;
  }

  if ((a4 - a3) >> 2 < v29)
  {
    goto LABEL_149;
  }

  v82 = *a5;
  v81 = a5[1];
  v83 = &(*a5)[4 * (v80 >> 2)];
  if (v83 > v81)
  {
    goto LABEL_149;
  }

  v84 = a5[2];
  if (v84 > v83 || v29 > (v81 - v83) >> 2)
  {
    goto LABEL_149;
  }

  v85 = (v75 / 2);
  if (v29 >= 1)
  {
    v86 = v29 & 0x7FFF;
    do
    {
      v87 = *v83++;
      *a3++ = v87 * v85;
      --v86;
    }

    while (v86);
    v82 = *a5;
    v81 = a5[1];
  }

  if (v29 > 0x140u)
  {
    goto LABEL_149;
  }

  v88 = &v82[4 * (v80 >> 2) - 68];
  if (v88 > v81 || v84 > v88)
  {
    goto LABEL_149;
  }

  v90 = (v29 + 17);
  if (v90 > &v81[-v88] >> 2)
  {
    goto LABEL_149;
  }

  v91 = 0;
  do
  {
    __b[v91] = *(v88 + 4 * v91) * v85;
    ++v91;
  }

  while (v90 != v91);
  v94 = __b[0];
  if (v29 > 0x140u)
  {
    goto LABEL_149;
  }

  preemph(&__b[1], (v29 + 16), &v94, 0.68);
  v92 = *(a9 + 64);
  if (v92 > 320 || (v92 & 0x8000) != 0)
  {
    goto LABEL_149;
  }

  vDSP_conv(&__b[1], 1, (a9 + 15024), -1, (a9 + 15028), 1, v92 & 0x7FFF, 0x11uLL);
}

float tcx_windowing_synthesis_current_frame(void *a1, float *a2, unint64_t a3, float *a4, unint64_t a5, float *a6, unint64_t a7, int a8, unsigned int a9, unsigned int a10, int a11, int a12, float *a13, float *a14, unint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, unint64_t a22, int a23, int a24, int a25, int a26, int a27)
{
  v193 = a20;
  v31 = a23;
  v32 = a13;
  v33 = a14;
  v195[0] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v35 = a8 >> 1;
  if (a11 || a26 != 1)
  {
    if (a11 != 1 || a25)
    {
      if (a11 == 1 && a25)
      {
        if (v35 + a24 < 1)
        {
LABEL_89:
          if (a8 < 1)
          {
            return result;
          }

          v72 = a8;
          v73 = v35 + a24;
          v74 = a2;
          while (v74 >= a2 && (v74 + 1) <= a3 && v74 <= v74 + 1)
          {
            v75 = (*a1 + 4 * v73);
            v76 = (v75 + 1) > a1[1] || v75 > v75 + 1;
            if (v76 || v75 < a1[2])
            {
              break;
            }

            v78 = *v74++;
            result = v78 * *v75;
            *v75 = result;
            ++v73;
            if (!--v72)
            {
              return result;
            }
          }
        }

        else
        {
          v67 = 0;
          v68 = a1[2];
          while (1)
          {
            v69 = (*a1 + v67);
            v70 = (v69 + 1) > a1[1] || v69 > v69 + 1;
            if (v70 || v69 < v68)
            {
              break;
            }

            *v69 = 0;
            v67 += 4;
            if (4 * (v35 + a24) == v67)
            {
              goto LABEL_89;
            }
          }
        }
      }

      else if (a11 == 1 || a25)
      {
        if (a12 == 2)
        {
          v159 = a10;
          if ((a8 - a10) <= 1)
          {
            v161 = 0;
            v165 = a6;
            v164 = a7;
LABEL_306:
            if (a10 < 1)
            {
              return result;
            }

            v183 = 4 * v161;
            v184 = v165;
            while (v184 >= v165 && (v184 + 1) <= v164 && v184 <= v184 + 1)
            {
              v185 = (*a1 + v183);
              v186 = (v185 + 1) > a1[1] || v185 > v185 + 1;
              if (v186 || v185 < a1[2])
              {
                break;
              }

              v188 = *v184++;
              result = v188 * *v185;
              *v185 = result;
              v183 += 4;
              if (!--v159)
              {
                return result;
              }
            }
          }

          else
          {
            v160 = 0;
            v161 = (a8 - a10) >> 1;
            v162 = a1[2];
            v163 = v161;
            v165 = a6;
            v164 = a7;
            while (1)
            {
              v166 = (*a1 + v160);
              v167 = (v166 + 1) > a1[1] || v166 > v166 + 1;
              if (v167 || v166 < v162)
              {
                break;
              }

              *v166 = 0;
              v160 += 4;
              if (!--v163)
              {
                goto LABEL_306;
              }
            }
          }
        }

        else if (a12 == 3)
        {
          v149 = a9;
          if ((a8 - a9) <= 1)
          {
            v151 = 0;
            v155 = a4;
            v154 = a5;
LABEL_290:
            if (a9 < 1)
            {
              return result;
            }

            v177 = 4 * v151;
            v178 = v155;
            while (v178 >= v155 && (v178 + 1) <= v154 && v178 <= v178 + 1)
            {
              v179 = (*a1 + v177);
              v180 = (v179 + 1) > a1[1] || v179 > v179 + 1;
              if (v180 || v179 < a1[2])
              {
                break;
              }

              v182 = *v178++;
              result = v182 * *v179;
              *v179 = result;
              v177 += 4;
              if (!--v149)
              {
                return result;
              }
            }
          }

          else
          {
            v150 = 0;
            v151 = (a8 - a9) >> 1;
            v152 = a1[2];
            v153 = v151;
            v155 = a4;
            v154 = a5;
            while (1)
            {
              v156 = (*a1 + v150);
              v157 = (v156 + 1) > a1[1] || v156 > v156 + 1;
              if (v157 || v156 < v152)
              {
                break;
              }

              *v156 = 0;
              v150 += 4;
              if (!--v153)
              {
                goto LABEL_290;
              }
            }
          }
        }

        else
        {
          if (a8 < 1)
          {
            return result;
          }

          v169 = 0;
          while (1)
          {
            v170 = &a2[v169];
            v171 = &a2[v169 + 1];
            v172 = &a2[v169] < a2 || v171 > a3;
            if (v172 || v170 > v171)
            {
              break;
            }

            v174 = (*a1 + v169 * 4);
            v175 = (v174 + 1) > a1[1] || v174 > v174 + 1;
            if (v175 || v174 < a1[2])
            {
              break;
            }

            result = *v170 * *v174;
            *v174 = result;
            if (a8 == ++v169)
            {
              return result;
            }
          }
        }
      }

      else
      {
        if (a8 < 1)
        {
          return result;
        }

        v91 = 0;
        do
        {
          v92 = &a2[v91];
          v93 = &a2[v91 + 1];
          if (&a2[v91] < a2 || v93 > a3 || v92 > v93)
          {
            goto LABEL_321;
          }

          v96 = a1[2];
          v97 = (*a1 + v91 * 4);
          v98 = (v97 + 1) > a1[1] || v97 > v97 + 1;
          if (v98 || v97 < v96)
          {
            goto LABEL_321;
          }

          *v97 = *v92 * *v97;
          ++v91;
        }

        while (a8 != v91);
        v100 = 0;
        while (1)
        {
          v101 = (a17 + v100);
          v102 = a17 + v100 + 4;
          v103 = a17 + v100 < a17 || v102 > a18;
          if (v103 || v101 > v102)
          {
            break;
          }

          v105 = (*a1 + v100);
          v106 = (v105 + 1) > a1[1] || v105 > v105 + 1;
          if (v106 || v105 < v96)
          {
            break;
          }

          result = *v101 + *v105;
          *v105 = result;
          v100 += 4;
          if (4 * a8 == v100)
          {
            return result;
          }
        }
      }
    }

    else
    {
      v37 = v35 - a24;
      if (v35 - a24 < 1)
      {
LABEL_23:
        if (a27)
        {
          if (a27 >= 0)
          {
            v43 = a27;
          }

          else
          {
            v43 = a27 + 7;
          }

          if (a14 - a13 < 253 || a14 < a13 || (a27 + 7) > 0xF0E)
          {
            goto LABEL_321;
          }

          v33 = v195;
          v44 = v43 >> 3;
          lerp(a13, __b, (v43 >> 3), 64);
          v45 = a8 >> 1;
          if (v44 >= 0x80)
          {
            if (a27 >= 24)
            {
              if (v44 <= 3)
              {
                v46 = 3;
              }

              else
              {
                v46 = v44;
              }

              v47 = v46 - 2;
              v48 = &__b[2];
              while (v48 - 2 >= __b && v48 + 1 <= v195 && v48 <= v48 + 1)
              {
                *v48 = ((*(v48 - 1) * 0.35) + (*(v48 - 2) * 0.25)) + (*v48 * 0.4);
                ++v48;
                if (!--v47)
                {
                  goto LABEL_40;
                }
              }

              goto LABEL_321;
            }

LABEL_40:
            v49 = &__b[v44];
            v50 = v49 - 1;
            if (v49 - 1 < __b)
            {
              goto LABEL_321;
            }

            if (v49 > v195)
            {
              goto LABEL_321;
            }

            if (v50 > v49)
            {
              goto LABEL_321;
            }

            v51 = v49 - 2;
            if (v51 < __b || v51 > v50)
            {
              goto LABEL_321;
            }

            result = 0.35;
            v52 = *v51;
            v53 = ((*v50 * 0.35) + (*v50 * 0.4)) + (*v51 * 0.25);
            *v50 = v53;
            *v51 = ((v53 * 0.35) + (v52 * 0.4)) + (v53 * 0.25);
            if (a27 >= 24)
            {
              v54 = v44 - 3;
              do
              {
                v55 = &__b[v54];
                v56 = v55 + 1;
                v57 = v55 < __b || v56 > v195;
                v58 = v57 || v55 > v56;
                v59 = v55 + 2;
                v60 = !v58 && v56 >= __b;
                v61 = !v60 || v59 > v195;
                v62 = v61 || v56 > v59;
                v63 = v55 + 3;
                v64 = !v62 && v59 >= __b;
                v65 = !v64 || v63 > v195;
                if (v65 || v59 > v63)
                {
                  goto LABEL_321;
                }

                *v55 = ((v55[1] * 0.35) + (*v55 * 0.4)) + (v55[2] * 0.25);
                v41 = v54-- <= 0;
              }

              while (!v41);
            }
          }

          if (a27 < 8)
          {
            return result;
          }

          v32 = __b;
        }

        else
        {
          if (a24 >= 1)
          {
            v108 = 0;
            if (2 * a24 <= 1)
            {
              v109 = 1;
            }

            else
            {
              v109 = 2 * a24;
            }

            v110 = a15 + 4 * (a23 - 2 * a24);
            v111 = 4 * v109;
            v112 = a23 - 1;
            v113 = (a21 + 8 * a24 - 4);
            do
            {
              v114 = (a21 + v108);
              v115 = a21 + v108 + 4;
              v116 = a21 + v108 < a21 || v115 > a22;
              if (v116 || v114 > v115)
              {
                goto LABEL_321;
              }

              v118 = a1[2];
              v119 = (*a1 + 4 * v37);
              v120 = (v119 + 1) > a1[1] || v119 > v119 + 1;
              if (v120 || v119 < v118)
              {
                goto LABEL_321;
              }

              *v119 = *v114 * *v119;
              v122 = (v110 + v108);
              if (v110 + v108 < a15)
              {
                goto LABEL_321;
              }

              if ((v122 + 1) > a16)
              {
                goto LABEL_321;
              }

              if (v122 > v122 + 1)
              {
                goto LABEL_321;
              }

              if (v113 < a21)
              {
                goto LABEL_321;
              }

              if ((v113 + 1) > a22)
              {
                goto LABEL_321;
              }

              if (v113 > v113 + 1)
              {
                goto LABEL_321;
              }

              v123 = (*a1 + 4 * v37);
              if ((v123 + 1) > a1[1])
              {
                goto LABEL_321;
              }

              if (v123 > v123 + 1)
              {
                goto LABEL_321;
              }

              if (v123 < v118)
              {
                goto LABEL_321;
              }

              *v123 = *v123 + ((*v122 * *v113) * *v113);
              v124 = (a15 + 4 * v112);
              if (v124 < a15)
              {
                goto LABEL_321;
              }

              if ((v124 + 1) > a16)
              {
                goto LABEL_321;
              }

              if (v124 > v124 + 1)
              {
                goto LABEL_321;
              }

              v125 = (*a1 + 4 * v37);
              if ((v125 + 1) > a1[1] || v125 > v125 + 1 || v125 < v118)
              {
                goto LABEL_321;
              }

              v126 = *v113--;
              *v125 = *v125 + ((*v124 * *v114) * v126);
              v108 += 4;
              --v112;
              ++v37;
            }

            while (v111 != v108);
          }

          if (a23 >= 1)
          {
            v127 = a15 + 4 * a23;
            v128 = 4 * ((16 - a23) & ~((16 - a23) >> 31));
            v129 = 4 * (v35 + a24);
            v130 = 64;
            do
            {
              v131 = (v127 + v128 - 64);
              v132 = v127 + v128 - 60;
              v133 = v131 < a15 || v132 > a16;
              if (v133 || v131 > v132)
              {
                goto LABEL_321;
              }

              v135 = *a1 + v128 + v129;
              v136 = (v135 - 64);
              v137 = v135 - 60;
              v138 = v137 > a1[1] || v136 > v137;
              if (v138 || v136 < a1[2])
              {
                goto LABEL_321;
              }

              *v136 = *v136 - *v131;
              v130 -= 4;
              v129 += 4;
              v127 += 4;
            }

            while (v128 != v130);
          }

          if (a14 < a13)
          {
            goto LABEL_321;
          }

          if (a14 - a13 < 253)
          {
            goto LABEL_321;
          }

          *(a13 + 14) = 0u;
          *(a13 + 15) = 0u;
          *(a13 + 12) = 0u;
          *(a13 + 13) = 0u;
          *(a13 + 10) = 0u;
          *(a13 + 11) = 0u;
          *(a13 + 8) = 0u;
          *(a13 + 9) = 0u;
          *(a13 + 6) = 0u;
          *(a13 + 7) = 0u;
          *(a13 + 4) = 0u;
          *(a13 + 5) = 0u;
          *(a13 + 2) = 0u;
          *(a13 + 3) = 0u;
          *a13 = 0u;
          *(a13 + 1) = 0u;
          v140 = a1[1];
          v141 = *a1 + 4 * v35 + 4 * a24 - 64;
          if (v141 > v140 || (v140 - v141) < 61 || a1[2] > v141)
          {
            goto LABEL_321;
          }

          v44 = 64;
          syn_filt(a19);
          v45 = a8 >> 1;
        }

        v142 = v45 + a24;
        result = v44;
        v143 = v44;
        v144 = v32;
        while (v144 >= v32 && v144 + 1 <= v33 && v144 <= v144 + 1)
        {
          v145 = (*a1 + 4 * v142);
          v146 = (v145 + 1) > a1[1] || v145 > v145 + 1;
          if (v146 || v145 < a1[2])
          {
            break;
          }

          v148 = *v144++;
          *v145 = *v145 - ((v148 * v143) / result);
          ++v142;
          if (!--v143)
          {
            return result;
          }
        }

        goto LABEL_321;
      }

      v38 = 0;
      v39 = a1[2];
      while (1)
      {
        v40 = (*a1 + v38);
        v41 = (v40 + 1) > a1[1] || v40 > v40 + 1;
        if (v41 || v40 < v39)
        {
          break;
        }

        *v40 = 0;
        v38 += 4;
        if (4 * (v35 - a24) == v38)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_321:
    __break(0x5519u);
  }

  if (a27)
  {
    if (a14 < a13)
    {
      goto LABEL_321;
    }

    if (a23 > 0x1E0)
    {
      goto LABEL_321;
    }

    v36 = ((a23 << 9) / a27);
    if ((v36 & 0x80000000) != 0 || a14 - a13 < v36)
    {
      goto LABEL_321;
    }

    v33 = v195;
    lerp(a13, __b, a23, v36);
    v32 = __b;
    if (!a23)
    {
      return result;
    }

LABEL_115:
    v83 = 0;
    v84 = 0;
    result = a23;
    v85 = a1[2];
    while (1)
    {
      v86 = (*a1 + v84 * 4);
      v87 = (v86 + 1) > a1[1] || v86 > v86 + 1;
      if (v87 || v86 < v85)
      {
        break;
      }

      *v86 = (v83 / result) * *v86;
      v89 = &v32[v84];
      if (&v32[v84] < v32)
      {
        break;
      }

      if (v89 + 1 > v33)
      {
        break;
      }

      if (v89 > v89 + 1)
      {
        break;
      }

      v90 = (*a1 + v84 * 4);
      if ((v90 + 1) > a1[1] || v90 > v90 + 1 || v90 < v85)
      {
        break;
      }

      *v90 = *v90 + ((*v89 * v31) / result);
      ++v84;
      --v31;
      ++v83;
      if (a23 == v84)
      {
        return result;
      }
    }

    goto LABEL_321;
  }

  v79 = a14 - a13;
  if (a14 < a13)
  {
    goto LABEL_321;
  }

  if (a23 < 0)
  {
    goto LABEL_321;
  }

  v80 = v79 >> 2;
  if (v79 >> 2 < a23)
  {
    goto LABEL_321;
  }

  if (a23 >= 1)
  {
    bzero(a13, 4 * a23);
    v35 = a8 >> 1;
  }

  v81 = a1[1];
  v82 = *a1 + 4 * v35 + 4 * a24 - 64;
  if (v82 > v81 || (v81 - v82) < 61 || a1[2] > v82 || (a23 & 0x8000) != 0 || v80 < a23)
  {
    goto LABEL_321;
  }

  syn_filt(a19);
  if (a23)
  {
    goto LABEL_115;
  }

  return result;
}

unint64_t tcx_windowing_synthesis_past_frame(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, unsigned int a7, unsigned int a8, int a9)
{
  if (a9 == 3)
  {
    v39 = (a6 - a7) / 2;
    if (a7 >= 1)
    {
      v40 = 0;
      v41 = 4 * a7;
      v42 = v39;
      v43 = 4 * v39;
      v44 = a4;
      while (1)
      {
        v45 = v44 + v41;
        v46 = (v44 + v41 - 4);
        v47 = v46 < a4 || v45 > a4 + 4 * a7;
        v48 = v47 || v46 > v45;
        v49 = result + v43;
        v50 = result + v43 + 4;
        v51 = !v48 && v49 >= result;
        v52 = !v51 || v50 > a2;
        if (v52 || v49 > v50)
        {
          goto LABEL_80;
        }

        *(result + 4 * v42) = *v46 * *(result + 4 * v42);
        ++v42;
        v40 -= 4;
        v44 -= 4;
        v43 += 4;
        if (!(v41 + v40))
        {
          v39 = v42;
          break;
        }
      }
    }

    if (v39 < a6)
    {
      v54 = a6 - v39;
      for (i = (result + 4 * v39); i >= result && (i + 1) <= a2 && i <= i + 1; ++i)
      {
        *i = 0;
        if (!--v54)
        {
          return result;
        }
      }

      goto LABEL_80;
    }
  }

  else if (a9 == 2)
  {
    v22 = (a6 - a8) / 2;
    if (a8 >= 1)
    {
      v23 = 0;
      v24 = 4 * a8;
      v25 = v22;
      v26 = 4 * v22;
      v27 = a5;
      while (1)
      {
        v28 = v27 + v24;
        v29 = (v27 + v24 - 4);
        v30 = v29 < a5 || v28 > a5 + 4 * a8;
        v31 = v30 || v29 > v28;
        v32 = result + v26;
        v33 = result + v26 + 4;
        v34 = !v31 && v32 >= result;
        v35 = !v34 || v33 > a2;
        if (v35 || v32 > v33)
        {
          goto LABEL_80;
        }

        *(result + 4 * v25) = *v29 * *(result + 4 * v25);
        ++v25;
        v23 -= 4;
        v27 -= 4;
        v26 += 4;
        if (!(v24 + v23))
        {
          v22 = v25;
          break;
        }
      }
    }

    if (v22 < a6)
    {
      v37 = a6 - v22;
      for (j = (result + 4 * v22); j >= result && (j + 1) <= a2 && j <= j + 1; ++j)
      {
        *j = 0;
        if (!--v37)
        {
          return result;
        }
      }

      goto LABEL_80;
    }
  }

  else
  {
    if (a9)
    {
      v9 = 1;
    }

    else
    {
      v9 = a6 < 1;
    }

    if (!v9)
    {
      v10 = 0;
      v11 = 4 * a6;
      for (k = a3; ; k -= 4)
      {
        v13 = k + v11;
        v14 = (k + v11 - 4);
        v15 = v14 < a3 || v13 > a3 + 4 * a6;
        v16 = v15 || v14 > v13;
        v17 = (result + v10);
        v18 = result + v10 + 4;
        v19 = !v16 && v17 >= result;
        v20 = !v19 || v18 > a2;
        if (v20 || v17 > v18)
        {
          break;
        }

        *v17 = *v14 * *v17;
        v10 += 4;
        if (v11 == v10)
        {
          return result;
        }
      }

LABEL_80:
      __break(0x5519u);
    }
  }

  return result;
}

DSPComplex *RFFTN(DSPComplex *result, unint64_t a2, unint64_t a3, unint64_t a4, int a5, int a6, const vDSP_DFT_SetupStruct **a7)
{
  v9 = result;
  v112 = *MEMORY[0x1E69E9840];
  if (a5 == 512)
  {
    memset(__b, 255, sizeof(__b));
    if (a6 == -1)
    {
      v93 = 0;
      v94 = __b;
      do
      {
        v95 = &v9[v93];
        p_imag = &v9[v93].imag;
        if (&v9[v93] < v9 || p_imag > a2 || v95 > p_imag)
        {
          goto LABEL_131;
        }

        real = v95->real;
        v99 = &v95[1];
        *v94 = real;
        if (p_imag < v9 || v99 > a2 || p_imag > v99)
        {
          goto LABEL_131;
        }

        v94[256] = p_imag->real;
        ++v93;
        ++v94;
      }

      while (v93 != 256);
      vDSP_DFT_Execute(*a7, __b, &__b[256], v9, &v9[128]);
      v101 = 0;
      v102 = &__b[1];
      do
      {
        v103 = (v9 + v101);
        v104 = &v9->imag + v101;
        if ((v9 + v101) < v9 || v104 > a2 || v103 > v104)
        {
          goto LABEL_131;
        }

        *(v102 - 1) = *v103;
        v107 = v103 + 256;
        if (v103 + 256 < v9)
        {
          goto LABEL_131;
        }

        v108 = (v103 + 257);
        if (v108 > a2 || v107 > v108)
        {
          goto LABEL_131;
        }

        *v102 = *v107;
        v102 += 2;
        v101 += 4;
      }

      while (v101 != 1024);
      LODWORD(__Z[0].realp) = 1056964608;
      v92 = __Z;
    }

    else
    {
      __Z[0].realp = __b;
      __Z[0].imagp = &__b[256];
      vDSP_ctoz(v9, 2, __Z, 1, 0x100uLL);
      vDSP_DFT_Execute(a7[1], __b, &__b[256], v9, &v9[128]);
      v84 = 0;
      v85 = &__b[1];
      do
      {
        v86 = (v9 + v84);
        v87 = &v9->imag + v84;
        if ((v9 + v84) < v9 || v87 > a2 || v86 > v87)
        {
          goto LABEL_131;
        }

        *(v85 - 1) = *v86;
        v90 = v86 + 256;
        if (v86 + 256 < v9)
        {
          goto LABEL_131;
        }

        v91 = (v86 + 257);
        if (v91 > a2 || v90 > v91)
        {
          goto LABEL_131;
        }

        *v85 = *v90;
        v85 += 2;
        v84 += 4;
      }

      while (v84 != 1024);
      v109 = 989855744;
      v92 = &v109;
    }

    MEMORY[0x19EAE6090](__b, 1, v92, __b, 1, 512);
    if (a2 < v9 || a2 - v9 < 0x800 || (result = memcpy(v9, __b, 0x800uLL), &v9[256] < v9))
    {
LABEL_131:
      __break(0x5519u);
    }
  }

  else if (a5 == 640)
  {
    memset(__b, 255, 0x500uLL);
    memset(__Z, 255, sizeof(__Z));
    if (a6 != -1)
    {
      v12 = &v9->imag;
      if (&v9->imag <= a2 && v12 >= v9 && &v9[1] <= a2 && v12 <= &v9[1])
      {
        v13 = 0;
        v14 = 0;
        imag = v9->imag;
        v16 = v9->real + imag;
        v17 = (v9->real - imag) * 0.0015625;
        v9->real = v16 * 0.0015625;
        v9->imag = v17;
        v18 = 160;
        while (1)
        {
          v19 = a3 + v14;
          v20 = (a3 + v14 + 4);
          v21 = a3 + v14 + 8;
          v22 = v20 < a3 || v21 > a4;
          if (v22 || v20 > v21)
          {
            break;
          }

          v24 = (v19 + 644);
          if (v19 + 644 < a3)
          {
            break;
          }

          v25 = v19 + 648;
          if (v25 > a4)
          {
            break;
          }

          if (v24 > v25)
          {
            break;
          }

          v26 = &v9[v13 + 1];
          if (v26 < v9)
          {
            break;
          }

          v27 = &v9[v13 + 1].imag;
          if (v27 > a2)
          {
            break;
          }

          if (v26 > v27)
          {
            break;
          }

          v28 = &v9[v18 + 159];
          if (v28 < v9)
          {
            break;
          }

          v29 = &v9[v18 + 159].imag;
          if (v29 > a2)
          {
            break;
          }

          if (v28 > v29)
          {
            break;
          }

          v30 = &v9[v13 + 1].imag;
          if (v30 < v9)
          {
            break;
          }

          v31 = &v9[v13 + 2];
          if (v31 > a2)
          {
            break;
          }

          if (v30 > v31)
          {
            break;
          }

          v32 = &v9[v18 + 159].imag;
          if (v32 < v9)
          {
            break;
          }

          v33 = &v9[v18 + 160];
          if (v33 > a2 || v32 > v33)
          {
            break;
          }

          v34 = *v26 - *v28;
          v35 = *v30 + *v32;
          v36 = (*v24 * v35) + (*v20 * v34);
          v37 = (*v20 * v35) - (*v24 * v34);
          v38 = *v26 + *v28;
          v39 = *v30 - *v32;
          *v26 = (v38 + v36) * 0.0015625;
          *v30 = (v39 + v37) * -0.0015625;
          *v28 = (v38 - v36) * 0.0015625;
          *v32 = (v39 - v37) * 0.0015625;
          v14 += 4;
          --v18;
          ++v13;
          if (v14 == 640)
          {
            goto LABEL_32;
          }
        }
      }

      goto LABEL_131;
    }

LABEL_32:
    v40 = 0;
    for (i = 0; i != 320; ++i)
    {
      v42 = &v9[v40];
      v43 = &v9[v40].imag;
      if (&v9[v40] < v9 || v43 > a2 || v42 > v43)
      {
        goto LABEL_131;
      }

      v47 = v42->real;
      v46 = &v42[1];
      __b[i] = v47;
      if (v43 < v9 || v46 > a2 || v43 > v46)
      {
        goto LABEL_131;
      }

      *(&__Z[0].realp + i * 4) = v43->real;
      ++v40;
    }

    result = DoRTFT320(__b, __Z);
    v48 = 0;
    for (j = 0; j != 320; ++j)
    {
      v50 = &v9[v48];
      v51 = &v9[v48].imag;
      if (&v9[v48] < v9 || v51 > a2 || v50 > v51)
      {
        goto LABEL_131;
      }

      *v50 = __b[j];
      v54 = (v50 + 2);
      if (v51 < v9)
      {
        goto LABEL_131;
      }

      if (v54 > a2 || v51 > v54)
      {
        goto LABEL_131;
      }

      v51->real = *(&__Z[0].realp + j * 4);
      ++v48;
    }

    if (a6 == -1)
    {
      v56 = &v9->imag;
      if (&v9->imag <= a2 && v56 >= v9 && &v9[1] <= a2 && v56 <= &v9[1])
      {
        v57 = 0;
        v58 = 0;
        v59 = v9->imag;
        v60 = v9->real - v59;
        v9->real = v9->real + v59;
        v9->imag = v60;
        for (k = 160; ; --k)
        {
          v62 = a3 + v58;
          v63 = (a3 + v58 + 4);
          v64 = a3 + v58 + 8;
          v65 = v63 < a3 || v64 > a4;
          if (v65 || v63 > v64)
          {
            break;
          }

          v67 = (v62 + 644);
          if (v62 + 644 < a3)
          {
            break;
          }

          v68 = v62 + 648;
          if (v68 > a4)
          {
            break;
          }

          if (v67 > v68)
          {
            break;
          }

          v69 = &v9[v57 + 1];
          if (v69 < v9)
          {
            break;
          }

          v70 = &v9[v57 + 1].imag;
          if (v70 > a2)
          {
            break;
          }

          if (v69 > v70)
          {
            break;
          }

          v71 = &v9[k + 159];
          if (v71 < v9)
          {
            break;
          }

          v72 = &v9[k + 159].imag;
          if (v72 > a2)
          {
            break;
          }

          if (v71 > v72)
          {
            break;
          }

          v73 = &v9[v57 + 1].imag;
          if (v73 < v9)
          {
            break;
          }

          v74 = &v9[v57 + 2];
          if (v74 > a2)
          {
            break;
          }

          if (v73 > v74)
          {
            break;
          }

          v75 = &v9[k + 159].imag;
          if (v75 < v9)
          {
            break;
          }

          v76 = &v9[k + 160];
          if (v76 > a2 || v75 > v76)
          {
            break;
          }

          v77 = *v69 - *v71;
          v78 = *v73 + *v75;
          v79 = (*v63 * v77) - (*v67 * v78);
          v80 = (*v63 * v78) + (*v67 * v77);
          v81 = *v69 + *v71;
          v82 = *v73 - *v75;
          *v69 = (v81 - v79) * 0.5;
          *v73 = (v82 - v80) * 0.5;
          *v71 = (v81 + v79) * 0.5;
          *v75 = (v82 + v80) * -0.5;
          v58 += 4;
          ++v57;
          if (v58 == 640)
          {
            return result;
          }
        }
      }

      goto LABEL_131;
    }
  }

  return result;
}

int *msvq_enc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, unint64_t a10, int a11, float *a12, unint64_t a13, int a14, int a15, int *a16, unint64_t a17)
{
  v17 = MEMORY[0x1EEE9AC00](a1);
  v19 = v18;
  v21 = v20;
  v224 = v23;
  v225 = v22;
  v25 = v24;
  v227 = v26;
  v228 = v27;
  v226 = v17;
  v261[0] = *MEMORY[0x1E69E9840];
  bzero(v260, 0x1000uLL);
  *&v28 = -1;
  *(&v28 + 1) = -1;
  v258[4] = v28;
  v258[5] = v28;
  v258[2] = v28;
  v258[3] = v28;
  v258[0] = v28;
  v258[1] = v28;
  v257[0] = v28;
  v257[1] = v28;
  v256[6] = v28;
  v256[7] = v28;
  v256[4] = v28;
  v256[5] = v28;
  v256[2] = v28;
  v256[3] = v28;
  v256[0] = v28;
  v256[1] = v28;
  memset(__b, 170, sizeof(__b));
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v254[2] = v29;
  v254[3] = v29;
  v254[0] = v29;
  v254[1] = v29;
  if ((16 * a11) >= 1)
  {
    v30 = (16 * a11);
    v31 = __b;
    do
    {
      v32 = v31 + 4;
      if (v31 < __b || v32 > v256 || v31 > v32)
      {
        goto LABEL_347;
      }

      *v31 = 0;
      v31 += 4;
      --v30;
    }

    while (v30);
  }

  v35 = 0;
  v36 = &v260[2 * a14];
  do
  {
    v37 = v254 + v35 + 4;
    if ((v254 + v35) < v254 || v37 > __b || v254 + v35 > v37)
    {
      goto LABEL_347;
    }

    *(v254 + v35) = 0;
    v35 += 4;
  }

  while (v35 != 32);
  v40 = 0.0;
  if (a14 >= 1)
  {
    v41 = v21;
    v42 = a12;
    v43 = a14;
    do
    {
      if (v41 < v21 || (v41 + 1) > v19 || v41 > v41 + 1 || v42 < a12 || (v42 + 1) > a13 || v42 > v42 + 1)
      {
        goto LABEL_347;
      }

      v44 = *v41++;
      v45 = v44 * v44;
      v46 = *v42++;
      v40 = v40 + (v45 * v46);
      --v43;
    }

    while (v43);
  }

  __A = v40;
  vDSP_vfill(&__A, v258, 1, 8uLL);
  v47 = a11;
  v48 = 0;
  v49 = &v260[2 * a14];
  do
  {
    v50 = a14;
    if (a14 < 1)
    {
      v52 = v49;
    }

    else
    {
      v51 = v21;
      do
      {
        if (v51 < v21)
        {
          goto LABEL_347;
        }

        if ((v51 + 1) > v19)
        {
          goto LABEL_347;
        }

        if (v51 > v51 + 1)
        {
          goto LABEL_347;
        }

        if (v49 < v260)
        {
          goto LABEL_347;
        }

        v52 = v49 + 1;
        if (v49 + 1 > v261 || v49 > v52)
        {
          goto LABEL_347;
        }

        v53 = *v51++;
        *v49++ = v53;
        --v50;
      }

      while (v50);
    }

    ++v48;
    v49 = v52;
  }

  while (v48 != 8);
  v54 = 0;
  v248 = 0;
  v56 = (a9 + 1) <= a10 && a9 + 1 >= a9;
  v223 = v56;
  v57 = 4 * a14 - 4;
  v58 = 32;
  v59 = 1;
  v234 = __b;
  __dst = v260;
  v60 = &__b[32 * a11];
  do
  {
    v247 = v36;
    v229 = v58;
    v249 = v54;
    v250 = v234;
    v234 = v60;
    v61 = (v226 + 16 * v54);
    v62 = v61 + 2;
    if (v61 < v226 || v62 > v227 || v61 > v62)
    {
      goto LABEL_347;
    }

    v251 = v61[1];
    v252 = *v61;
    v233 = a15;
    v240 = a14;
    if (v228)
    {
      v65 = (v228 + 4 * v54);
      if (v65 < v228 || (v65 + 1) > v225 || v65 > v65 + 1)
      {
        goto LABEL_347;
      }

      v233 = *v65;
      v240 = *v65;
    }

    if (v25)
    {
      v66 = (v25 + 4 * v54);
      if (v66 < v25)
      {
        goto LABEL_347;
      }

      if ((v66 + 1) > v224)
      {
        goto LABEL_347;
      }

      if (v66 > v66 + 1)
      {
        goto LABEL_347;
      }

      v67 = *v66;
      if (v67 > 0x20)
      {
        goto LABEL_347;
      }

      if (v67)
      {
        bzero(v256, 4 * v67);
        v47 = a11;
        v236 = v67;
      }

      else
      {
        v236 = 0;
      }
    }

    else
    {
      v236 = 0;
      LODWORD(v67) = 0;
    }

    v68 = v256 + 4 * v67 + 4 * v240;
    if (v68 > v257)
    {
      goto LABEL_347;
    }

    if (v256 > v68)
    {
      goto LABEL_347;
    }

    v235 = a14 - (v240 + v236);
    if (v235 < 0 || (v257 - v68) >> 2 < v235)
    {
      goto LABEL_347;
    }

    if (v235 >= 1)
    {
      bzero(v68, 4 * (a14 - (v240 + v236)));
      v47 = a11;
    }

    v69 = 0;
    v70 = (v257 + v229);
    v71 = (v257 + v248);
    v72 = v257 + v248;
    v245 = v67;
    do
    {
      v73 = &v72[v69 * 4];
      if (&v72[v69 * 4] < v257 || v73 + 4 > &v259 || v73 > v73 + 4)
      {
        goto LABEL_347;
      }

      v71[v69++] = 3.4028e38;
    }

    while (v69 != 8);
    if (v249)
    {
      v74 = &a9[v249];
      if (v74 < a9 || (v74 + 1) > a10 || v74 > v74 + 1)
      {
        goto LABEL_347;
      }

      v75 = v236;
      v232 = v240;
      if (*v74 >= 1)
      {
        v76 = 0;
        v77 = 0;
        v78 = v256 + 4 * v236;
        v79 = v252;
        v80 = &a12[v236];
        do
        {
          if (v240 < 1)
          {
            v82 = 0.0;
          }

          else
          {
            v81 = 0;
            v82 = 0.0;
            do
            {
              v83 = &v80[v81];
              v84 = &v80[v81 + 1];
              v86 = &v80[v81] < a12 || v84 > a13 || v83 > v84;
              v87 = (v79 + v81 * 4);
              v88 = v79 + v81 * 4 + 4;
              v91 = !v86 && v88 <= v251 && v87 <= v88 && v87 >= v252;
              v92 = &v78[v81 * 4];
              v93 = &v78[v81 * 4 + 4];
              if (!v91 || v92 < v256 || v93 > v257 || v92 > v93)
              {
                goto LABEL_347;
              }

              v97 = *v83 * *v87;
              *v92 = v97;
              v82 = v82 + (*v87 * v97);
              ++v81;
            }

            while (v240 != v81);
          }

          v98 = 0;
          v99 = *v256;
          v100 = v247;
          do
          {
            v101 = v100 + 1;
            if (v100 < v260 || v101 > v261 || v100 > v101)
            {
              goto LABEL_347;
            }

            v104 = *v100 * v99;
            if (a14 >= 2)
            {
              v105 = 0;
              v101 = &v100[a14 - 2 + 2];
              while (1)
              {
                v106 = &v100[v105 / 4 + 1];
                v107 = &v100[v105 / 4 + 2];
                v108 = v106 < v260 || v107 > v261;
                v109 = v108 || v106 > v107;
                v110 = (v256 + v105 + 4);
                v111 = (v256 + v105 + 8);
                v112 = !v109 && v110 >= v256;
                v113 = !v112 || v111 > v257;
                if (v113 || v110 > v111)
                {
                  break;
                }

                v104 = v104 + (*v106 * *v110);
                v105 += 4;
                if (v57 == v105)
                {
                  goto LABEL_144;
                }
              }

LABEL_347:
              __break(0x5519u);
            }

LABEL_144:
            v100 = v101;
            v115 = &v70[v98];
            if (v115 < v257)
            {
              goto LABEL_347;
            }

            if (v115 + 1 > &v259)
            {
              goto LABEL_347;
            }

            if (v115 > v115 + 1)
            {
              goto LABEL_347;
            }

            v116 = &v71[v76];
            if (v116 < v257 || v116 + 1 > &v259 || v116 > v116 + 1)
            {
              goto LABEL_347;
            }

            v117 = (v82 + (v104 * -2.0)) + *v115;
            if (v117 < *v116)
            {
              *v116 = v117;
              v118 = &v250[4 * v249 + 4 * v76 * v47];
              if (v118 >= __b && v118 + 4 <= v256 && v118 <= v118 + 4)
              {
                *v118 = v77;
                v119 = v254 + v76;
                if (v119 >= v254 && v119 + 1 <= __b && v119 <= v119 + 1)
                {
                  v76 = 0;
                  *v119 = v98;
                  v120 = v248;
                  v121 = 1;
                  while (1)
                  {
                    v122 = (v257 + v120 + 4);
                    v123 = (v257 + v120 + 8);
                    v124 = v122 < v257 || v123 > &v259;
                    v125 = v124 || v122 > v123;
                    v126 = &v71[v76];
                    v127 = v126 + 1;
                    v128 = !v125 && v126 >= v257;
                    v129 = !v128 || v127 > &v259;
                    if (v129 || v126 > v127)
                    {
                      break;
                    }

                    if (*v122 > *v126)
                    {
                      v76 = v121;
                    }

                    ++v121;
                    v120 += 4;
                    if (v121 == 8)
                    {
                      goto LABEL_177;
                    }
                  }
                }
              }

              goto LABEL_347;
            }

LABEL_177:
            ++v98;
          }

          while (v98 != v59);
          ++v77;
          v79 += 4 * v233;
        }

        while (v77 < *v74);
      }
    }

    else
    {
      if (!v223)
      {
        goto LABEL_347;
      }

      v133 = v247 + 1 <= v261 && v247 <= v247 + 1 && v247 >= v260;
      v135 = v70 + 1 <= &v259 && v70 <= v70 + 1;
      v75 = v236;
      v136 = *a9;
      v232 = v240;
      if (*a9 >= 1)
      {
        v137 = 0;
        v138 = 0;
        v139 = v256 + 4 * v236;
        v140 = v252;
        v141 = &a12[v236];
        do
        {
          if (v240 < 1)
          {
            v143 = 0.0;
            if (!v133)
            {
              goto LABEL_347;
            }
          }

          else
          {
            v142 = 0;
            v143 = 0.0;
            do
            {
              v144 = &v141[v142];
              v145 = &v141[v142 + 1];
              v147 = &v141[v142] < a12 || v145 > a13 || v144 > v145;
              v148 = (v140 + v142 * 4);
              v149 = v140 + v142 * 4 + 4;
              v152 = !v147 && v149 <= v251 && v148 <= v149 && v148 >= v252;
              v153 = &v139[v142 * 4];
              v154 = &v139[v142 * 4 + 4];
              if (!v152 || v153 < v256 || v154 > v257 || v153 > v154)
              {
                goto LABEL_347;
              }

              v158 = *v144 * *v148;
              *v153 = v158;
              v143 = v143 + (*v148 * v158);
              ++v142;
            }

            while (v240 != v142);
            if (!v133)
            {
              goto LABEL_347;
            }
          }

          v159 = *v247 * *v256;
          if (a14 >= 2)
          {
            v160 = 0;
            do
            {
              v161 = &v247[v160 / 4 + 1];
              v162 = &v247[v160 / 4 + 2];
              v164 = v161 < v260 || v162 > v261 || v161 > v162;
              v165 = (v256 + v160 + 4);
              v166 = (v256 + v160 + 8);
              if (v164 || v165 < v256 || v166 > v257 || v165 > v166)
              {
                goto LABEL_347;
              }

              v159 = v159 + (*v161 * *v165);
              v160 += 4;
            }

            while (v57 != v160);
          }

          if (!v135)
          {
            goto LABEL_347;
          }

          v170 = &v71[v137];
          if (v170 < v257 || v170 + 1 > &v259 || v170 > v170 + 1)
          {
            goto LABEL_347;
          }

          v171 = (v143 + (v159 * -2.0)) + *v70;
          if (v171 < *v170)
          {
            *v170 = v171;
            v172 = &v250[4 * v137 * v47];
            if (v172 < __b)
            {
              goto LABEL_347;
            }

            if (v172 + 4 > v256)
            {
              goto LABEL_347;
            }

            if (v172 > v172 + 4)
            {
              goto LABEL_347;
            }

            *v172 = v138;
            v173 = v254 + v137;
            if (v173 < v254 || v173 + 1 > __b || v173 > v173 + 1)
            {
              goto LABEL_347;
            }

            v137 = 0;
            *v173 = 0;
            v174 = v248;
            for (i = 1; i != 8; ++i)
            {
              v176 = (v257 + v174 + 4);
              v177 = (v257 + v174 + 8);
              v179 = v176 < v257 || v177 > &v259 || v176 > v177;
              v180 = &v71[v137];
              v181 = v180 + 1;
              if (v179 || v180 < v257 || v181 > &v259 || v180 > v181)
              {
                goto LABEL_347;
              }

              if (*v176 > *v180)
              {
                v137 = i;
              }

              v174 += 4;
            }

            v136 = *a9;
          }

          ++v138;
          v140 += 4 * v233;
        }

        while (v138 < v136);
      }
    }

    v185 = 0;
    __len = 4 * v236;
    v239 = 4 * (v235 & 0x7FFFu);
    v186 = __dst;
    v187 = &__dst[v75];
    v231 = &v247[v75];
    do
    {
      v188 = v254 + 4 * v185;
      v189 = v188 + 4;
      v190 = v188 < v254 || v189 > __b;
      v244 = v254 + v185;
      if (v190 || v188 > v189)
      {
        goto LABEL_347;
      }

      v243 = v185 * v47;
      v192 = &v250[4 * v185 * v47 + 4 * v249];
      v193 = v192 + 4;
      v194 = v192 < __b || v193 > v256;
      if (v194 || v192 > v193)
      {
        goto LABEL_347;
      }

      v196 = *(v254 + v185) * a14;
      v197 = &v247[v196];
      if (v197 < v260 || v186 < v260)
      {
        goto LABEL_347;
      }

      v198 = *v192;
      v242 = v185;
      v246 = v186;
      if (v236)
      {
        if (v261 < v186 || v197 > v261)
        {
          goto LABEL_347;
        }

        if (v261 - v197 < __len || v261 - v186 < __len)
        {
          goto LABEL_347;
        }

        v238 = *(v254 + v185) * a14;
        v237 = *v192;
        memmove(v186, &v247[v196], __len);
        v198 = v237;
        v196 = v238;
        v186 = v246;
        LODWORD(v47) = a11;
        if (&v246[__len / 4] < v246)
        {
          goto LABEL_347;
        }
      }

      if (v240 >= 1)
      {
        v200 = 0;
        v201 = v252 + 4 * v198 * v233;
        v202 = &v231[v196];
        v203 = v232;
        do
        {
          v204 = &v202[v200];
          if (&v202[v200] < v260)
          {
            goto LABEL_347;
          }

          v205 = v204 + 1 > v261 || v204 > v204 + 1;
          v206 = (v201 + v200 * 4);
          v207 = v201 + v200 * 4 + 4;
          v208 = v205 || v207 > v251;
          v209 = v208 || v206 > v207;
          v210 = !v209 && v206 >= v252;
          v211 = &v187[v200];
          v212 = &v187[v200 + 1];
          v213 = v210 && v211 >= v260;
          v214 = !v213 || v212 > v261;
          if (v214 || v211 > v212)
          {
            goto LABEL_347;
          }

          *v211 = *v204 - *v206;
          ++v200;
        }

        while (--v203);
      }

      v216 = &v197[v245 + v240];
      if (v216 < v260)
      {
        goto LABEL_347;
      }

      v217 = &v186[v245 + v240];
      if (v217 < v260)
      {
        goto LABEL_347;
      }

      if (v235 >= 1)
      {
        if (v261 < v217)
        {
          goto LABEL_347;
        }

        if (v216 > v261)
        {
          goto LABEL_347;
        }

        if (v261 - v216 < v239)
        {
          goto LABEL_347;
        }

        if (v261 - v217 < v239)
        {
          goto LABEL_347;
        }

        memmove(&v186[v245 + v240], v216, v239);
        v186 = v246;
        LODWORD(v47) = a11;
        if (&v217[v239 / 4] < v217)
        {
          goto LABEL_347;
        }
      }

      v218 = &v234[4 * *v244 * v47];
      if (v218 < __b)
      {
        goto LABEL_347;
      }

      v219 = &v250[4 * v243];
      if (v219 < __b)
      {
        goto LABEL_347;
      }

      v220 = &v186[a14];
      mvi2i(v218, v256, v219, v256, v249);
      v186 = v220;
      v47 = a11;
      v185 = v242 + 1;
      v187 += a14;
    }

    while (v242 != 7);
    v54 = v249 + 1;
    v59 = 8;
    v60 = v250;
    v58 = v248;
    v36 = __dst;
    v248 = v229;
    __dst = v247;
  }

  while (v249 + 1 != a11);
  v221 = &v250[4 * minimum(v71, 8, 0) * a11];
  if (v221 < __b)
  {
    goto LABEL_347;
  }

  return mvi2i(v221, v256, a16, a17, a11);
}

void msvq_dec(unint64_t a1, unint64_t a2, void *a3, void *a4, int a5, int a6, int a7, uint64_t a8, char *a9, void *a10)
{
  v13 = a9;
  v14 = 4 * a6;
  if (a6 > 0)
  {
    bzero(a9, 4 * a6);
    v13 = a9;
  }

  v47 = v14;
  if (*a10)
  {
    v15 = a6 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
LABEL_17:
    v21 = 0;
    v48 = &v13[4 * a6];
    while (1)
    {
      v22 = a7;
      v23 = a6;
      if (*a3)
      {
        v24 = (*a3 + 4 * v21);
        if (v24 >= v24 + 1 || (v24 + 1) > a3[1] || v24 < a3[2])
        {
          goto LABEL_76;
        }

        v22 = *v24;
        v23 = *v24;
      }

      if (*a4)
      {
        v27 = (*a4 + 4 * v21);
        if (v27 >= v27 + 1 || (v27 + 1) > a4[1] || v27 < a4[2])
        {
          goto LABEL_76;
        }

        v30 = *v27;
      }

      else
      {
        v30 = 0;
      }

      v31 = (a1 + 16 * v21);
      if (v31 < a1)
      {
        goto LABEL_76;
      }

      if ((v31 + 2) > a2)
      {
        goto LABEL_76;
      }

      if (v31 > v31 + 2)
      {
        goto LABEL_76;
      }

      v32 = &v13[4 * v30];
      if (v32 > v48 || v32 < v13 || v23 > (v47 - 4 * v30) >> 2 || (v23 & 0x8000) != 0)
      {
        goto LABEL_76;
      }

      v33 = v31[1];
      v34 = *v31 + 4 * *(a8 + 4 * v21) * v22;
      v35 = v34 > v33 || *v31 > v34;
      if (v35 || v23 > (v33 - v34) >> 2)
      {
        goto LABEL_76;
      }

      MEMORY[0x19EAE5DC0]();
      v13 = a9;
      if (*a10)
      {
        if (v23 >= 1)
        {
          break;
        }
      }

LABEL_74:
      if (++v21 == a5)
      {
        return;
      }
    }

    v36 = 0;
    v37 = 0;
    v38 = a10[2];
    while (1)
    {
      v39 = (*a10 + 2 * (v36 + v30));
      v40 = (v39 + 1) > a10[1] || v39 >= v39 + 1;
      if (v40 || v39 < v38)
      {
        break;
      }

      v42 = (*v31 + 4 * (v36 + *(a8 + 4 * v21) * v22));
      v43 = v42 + 1;
      v44 = v42 < *v31 || v43 > v31[1];
      if (v44 || v42 >= v43)
      {
        break;
      }

      v46 = ((*v42 + *v42) * 1.28) + *v39;
      if (v46 >= 0x7FFF)
      {
        v46 = 0x7FFF;
      }

      if (v46 <= -32768)
      {
        LOWORD(v46) = 0x8000;
      }

      *v39 = v46;
      v36 = ++v37;
      if (v23 <= v37)
      {
        goto LABEL_74;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = a10[2];
    while (1)
    {
      v18 = (*a10 + v16);
      v19 = (v18 + 1) > a10[1] || v18 >= v18 + 1;
      if (v19 || v18 < v17)
      {
        break;
      }

      *v18 = 0;
      v16 += 2;
      if (2 * a6 == v16)
      {
        goto LABEL_17;
      }
    }
  }

LABEL_76:
  __break(0x5519u);
}

void scalebands(float *__src, unint64_t a2, int a3, unint64_t a4, int a5, int a6, char *__dst, int a8)
{
  if (a6 != a3)
  {
    while (1)
    {
      if (a6 < 1)
      {
        return;
      }

      v11 = a4;
      v12 = 0;
      v13 = 0;
      v63 = a4 + 4 * a3;
      v64 = &__src[a3];
      v14 = &__dst[4 * a6];
      v15 = a5;
      v60 = a2 + 4 * a3;
      v57 = a6;
      while (1)
      {
        v62 = v15;
        if (!a8 && v13 < a5)
        {
          goto LABEL_71;
        }

        v16 = &__src[v13];
        v17 = v16 + 1;
        if (v16 < __src || v17 > v64 || v16 >= v17)
        {
          goto LABEL_5;
        }

        v20 = (v11 + 4 * v13);
        if (v20 < v11 || (v20 + 1) > v63 || v20 > v20 + 1)
        {
          goto LABEL_5;
        }

        v21 = *v20;
        if (v12 <= v21)
        {
          break;
        }

LABEL_27:
        v26 = 1.0;
        if (v13 + 1 < v62)
        {
          v27 = v13 + 1;
          do
          {
            v28 = (v11 + 4 * v27);
            v29 = v28 + 1;
            v30 = v28 < v11 || v29 > v63;
            if (v30 || v28 >= v29)
            {
              goto LABEL_5;
            }

            v32 = &__src[v27];
            if (v32 < __src || v32 + 1 > v64 || v32 > v32 + 1)
            {
              goto LABEL_5;
            }

            v33 = *v28;
            v34 = &normReciprocal[4 * (*v28 - *(v11 + 4 * v13))];
            v35 = v34 + 1;
            v36 = v34 < normReciprocal || v35 > inv_tbl;
            if (v36 || v34 >= v35)
            {
              goto LABEL_5;
            }

            v38 = __src[v13];
            v39 = log((*v32 + 1.0e-20));
            v40 = log((v38 + 1.0e-20));
            v26 = exp((v39 - v40) * *v34);
            v41 = v12;
            if (v12 < v33)
            {
              v41 = v33;
              v42 = v33 - v12;
              v43 = &__dst[4 * v12];
              while (v43 >= __dst && v43 + 1 <= v14 && v43 <= v43 + 1)
              {
                v38 = v38 * v26;
                *v43++ = v38;
                if (!--v42)
                {
                  v12 = v33;
                  goto LABEL_53;
                }
              }

              goto LABEL_5;
            }

LABEL_53:
            v44 = &__dst[4 * v41];
            if (v44 < __dst || v44 + 4 > v14 || v44 > v44 + 4)
            {
              goto LABEL_5;
            }

            ++v12;
            *v44 = *v32;
            v13 = v27++;
          }

          while (v27 != v62);
        }

        if (v26 > 1.0)
        {
          v26 = 1.0;
        }

        v45 = v62 - 1;
        v46 = &__src[v45];
        if (v46 < __src)
        {
          goto LABEL_5;
        }

        if (v46 + 1 > v64)
        {
          goto LABEL_5;
        }

        if (v46 > v46 + 1)
        {
          goto LABEL_5;
        }

        v47 = (a2 + 4 * v45);
        if (v47 < a2 || (v47 + 1) > v60 || v47 > v47 + 1)
        {
          goto LABEL_5;
        }

        v48 = *v47;
        if (v12 <= v48)
        {
          v49 = *v46;
          v50 = v48 - v12 + 1;
          v51 = &__dst[4 * v12];
          while (v51 >= __dst && v51 + 1 <= v14 && v51 <= v51 + 1)
          {
            v49 = v26 * v49;
            *v51++ = v49;
            if (!--v50)
            {
              goto LABEL_71;
            }
          }

          goto LABEL_5;
        }

LABEL_71:
        v52 = a2 + 4 * v62;
        v53 = (v52 - 4);
        if (v52 - 4 < a2 || v52 > v60 || v53 >= v52)
        {
          goto LABEL_5;
        }

        v12 = *v53 + 1;
        v13 = v62;
        v15 = a3;
        a6 = v57;
        if (v12 >= v57)
        {
          return;
        }
      }

      v22 = *v16;
      v23 = v12 - 1;
      v24 = &__dst[4 * v12];
      while (v24 >= __dst)
      {
        v25 = v23;
        if (v24 + 4 > v14 || v24 > v24 + 4)
        {
          break;
        }

        *v24 = v22;
        v24 += 4;
        ++v23;
        if (v21 == v25 + 1)
        {
          v12 = v25 + 2;
          goto LABEL_27;
        }
      }

LABEL_5:
      __break(0x5519u);
    }
  }

  if (a6 >= 1)
  {
    v10 = 4 * a6;
    if (v10 > 4 * a6)
    {
      goto LABEL_5;
    }

    memmove(__dst, __src, 4 * a6);
    if (&__dst[v10] < __dst)
    {
      goto LABEL_5;
    }
  }
}

uint64_t lpc_from_spectrum(unint64_t a1, unint64_t a2, int a3, signed int a4, int a5, unint64_t a6, unint64_t a7, float a8, uint64_t a9, float *a10, unint64_t a11, const vDSP_DFT_SetupStruct **a12)
{
  v53[1] = *MEMORY[0x1E69E9840];
  *&v20 = -1;
  *(&v20 + 1) = -1;
  v52[7] = v20;
  v52[6] = v20;
  v52[5] = v20;
  v52[4] = v20;
  v52[3] = v20;
  v52[2] = v20;
  v52[1] = v20;
  v52[0] = v20;
  v21 = v51;
  memset(v51, 255, sizeof(v51));
  p_imag = &v51[0].imag;
  if (a3 < 1)
  {
    v26 = 0;
  }

  else
  {
    v23 = a3;
    do
    {
      if (p_imag - 1 < v51 || p_imag > v52 || p_imag - 1 > p_imag)
      {
        goto LABEL_61;
      }

      *(p_imag - 1) = 0.001;
      if (p_imag < v51 || p_imag + 1 > v52 || p_imag > p_imag + 1)
      {
        goto LABEL_61;
      }

      *p_imag = 0.0;
      p_imag += 2;
      --v23;
    }

    while (v23);
    v21 = (p_imag - 1);
    v26 = a3;
  }

  if (v26 >= a4)
  {
    a4 = v26;
  }

  else
  {
    v27 = 0;
    v28 = a4 - v26;
    v29 = (a1 - 4 * a3 + 4 * v26);
    do
    {
      if (v29 < a1)
      {
        goto LABEL_61;
      }

      if ((v29 + 1) > a2)
      {
        goto LABEL_61;
      }

      if (v29 > v29 + 1)
      {
        goto LABEL_61;
      }

      v30 = &v21[v27 / 2];
      if (&v21[v27 / 2] < v51)
      {
        goto LABEL_61;
      }

      v31 = &v21[v27 / 2].imag;
      if (v31 > v52 || v30 > v31)
      {
        goto LABEL_61;
      }

      v32 = &p_imag[v27];
      v33 = *v29;
      if (*v29 < 0.001)
      {
        v33 = 0.001;
      }

      *v30 = v33;
      if (v32 < v51)
      {
        goto LABEL_61;
      }

      v34 = &p_imag[v27 + 1];
      if (v34 > v52 || v32 > v34)
      {
        goto LABEL_61;
      }

      v32->real = 0.0;
      ++v29;
      v27 += 2;
      --v28;
    }

    while (v28);
    v21 = (v21 + v27 * 4);
    p_imag = (p_imag + v27 * 4);
  }

  v35 = a5 / 2;
  v36 = a5 / 2 - a4;
  if (a5 / 2 > a4)
  {
    while (1)
    {
      v37 = &v21->imag;
      v38 = v21 < v51 || v37 > v52;
      if (v38 || v21 > v37)
      {
        break;
      }

      v21->real = 0.001;
      if (p_imag < v51 || p_imag + 1 > v52 || p_imag > p_imag + 1)
      {
        break;
      }

      *p_imag = 0.0;
      p_imag += 2;
      ++v21;
      if (!--v36)
      {
        goto LABEL_44;
      }
    }

LABEL_61:
    __break(0x5519u);
  }

LABEL_44:
  v51[0].imag = 0.001;
  if (a5 <= 1)
  {
    v41 = (a8 * a8) + 1.0;
    imag = 0.001;
  }

  else
  {
    v40 = 0;
    v41 = (a8 * a8) + 1.0;
    v42 = v51;
    do
    {
      v43 = &v42->imag;
      if (v42 < v51 || v43 > v52 || v42 > v43)
      {
        goto LABEL_61;
      }

      v46 = cos(((v40 * -6.2832) / a5));
      v42->real = (v41 + ((a8 * -2.0) * v46)) * v42->real;
      ++v42;
      ++v40;
    }

    while (v35 != v40);
    imag = v51[0].imag;
  }

  v51[0].imag = (v41 + (a8 * 2.0)) * imag;
  RFFTN(v51, v52, a6, a7, a5, 1, a12);
  for (i = 0; i != 68; i += 4)
  {
    *(v52 + i) = (*(&v51[0].real + i) * v35) * v35;
  }

  v49 = *v52;
  if (*v52 < 100.0)
  {
    v49 = 100.0;
  }

  *v52 = v49 * 1.0005;
  return lev_dur(a10, a11, v52, v53, 16, 0, 0);
}

int *mvi2i(int *result, unint64_t a2, int *a3, unint64_t a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = a5;
    if (a3 >= result)
    {
      v9 = a5 + 1;
      v10 = a5;
      v11 = result;
      for (i = a3; ; --i)
      {
        v13 = &v11[v10];
        v14 = &v11[v10 - 1];
        v15 = v14 < result || v13 > a2;
        if (v15 || v14 > v13)
        {
          break;
        }

        v17 = &i[v10];
        v18 = &i[v10 - 1];
        if (v18 < a3 || v17 > a4 || v18 > v17)
        {
          break;
        }

        *v18 = *v14;
        --v9;
        --v11;
        if (v9 <= 1)
        {
          return result;
        }
      }
    }

    else
    {
      v6 = result;
      for (j = a3; v6 >= result && (v6 + 1) <= a2 && v6 <= v6 + 1 && j >= a3 && (j + 1) <= a4 && j <= j + 1; ++j)
      {
        v8 = *v6++;
        *j = v8;
        if (!--v5)
        {
          return result;
        }
      }
    }

    __break(0x5519u);
  }

  return result;
}

void lpc_quantization(uint64_t a1, int a2, int a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, __int128 a13, unint64_t a14, unint64_t a15, float *a16, unint64_t a17, __int128 *a18, unint64_t a19, __int16 a20, __int16 a21, __int16 a22, int a23, int *a24, unint64_t a25, _DWORD *a26, unint64_t a27, _WORD *a28, int a29, uint64_t a30, __int128 *a31, _WORD *a32, unint64_t a33, __int16 *a34)
{
  v37 = a1;
  v39 = a24;
  v38 = a25;
  v40 = a9;
  v41 = a14;
  *v148 = *MEMORY[0x1E69E9840];
  *&v42 = -1;
  *(&v42 + 1) = -1;
  v137 = v42;
  v138 = v42;
  v135 = v42;
  v136 = v42;
  v134[2] = v42;
  v134[3] = v42;
  v134[0] = v42;
  v134[1] = v42;
  v133[2] = v42;
  v133[3] = v42;
  v133[0] = v42;
  v133[1] = v42;
  v132[2] = v42;
  v132[3] = v42;
  v132[0] = v42;
  v132[1] = v42;
  if (a3)
  {
    if (a3 != 1)
    {
      v87 = 0;
      *a28 = 0;
      goto LABEL_104;
    }

    v126 = 1;
    if (a7 < a6 || (a7 - a6) < 61)
    {
      goto LABEL_169;
    }

    v43 = 0;
    v44 = a29;
    v45 = a29 * 0.5;
    do
    {
      *(v134 + v43) = (v45 / 3.1416) * acosf(*(a6 + v43));
      v43 += 4;
    }

    while (v43 != 64);
    v37 = a1;
    if (*(a1 + 18636) > 0 || *(a1 + 104) < 2401 || *(a1 + 23324))
    {
      *(a1 + 23324) = 0;
      v47 = 1;
    }

    else
    {
      v47 = 0;
    }

    v41 = a14;
    v48 = *(a1 + 130);
    v49 = *(a1 + 96);
    v50 = *a30;
    v51 = *(a30 + 8);
    if (a22 == 1 && a29 == 16000)
    {
      v52 = a34;
      lsf_end_enc(a1, v134, &v135, a13, *(&a13 + 1), a18, a19, v51, v44, v46, a16, a17, 31, 3, v48, v50, v49, (a1 + 5464), (a1 + 5460), v47, 1, a24, a25, a34, a32, a33, 3);
    }

    else
    {
      v52 = a34;
      lsf_end_enc(a1, v134, &v135, a13, *(&a13 + 1), a18, a19, v51, v44, v46, a16, a17, 31, a22, v48, v50, v49, (a1 + 5464), (a1 + 5460), v47, 1, a24, a25, a34, a32, a33, a22);
    }

    v130 = *v52;
    FEC_lsf_estim_enc(a1, *(a1 + 140), v132, v133);
    __b[0] = a13;
    *&__b[1] = a13;
    *&v144 = v132;
    *(&v144 + 1) = v133;
    *&v145 = v132;
    lsf_stab(__b, &v144, 0);
    if ((a22 & 0xFFFFFFFE) == 2 && v88 < 0.45 && *(a1 + 67468))
    {
      *(a1 + 23324) = 1;
    }

    v40 = a9;
    if ((*(&a13 + 1) - a13) < 61)
    {
      goto LABEL_169;
    }

    if (*(&a13 + 1) < a13)
    {
      goto LABEL_169;
    }

    if (a12 < a11)
    {
      goto LABEL_169;
    }

    if ((a12 - a11) < 61)
    {
      goto LABEL_169;
    }

    for (i = 0; i != 64; i += 4)
    {
      *(a11 + i) = cosf((*(a13 + i) * 3.1416) / v45);
    }

    v38 = a25;
    v39 = a24;
    if ((a26 + 1) > a27 || a26 + 1 < a26)
    {
      goto LABEL_169;
    }

    *a26 = 31;
  }

  else
  {
    v126 = 0;
    if (a7 < a6 || (a7 - a6) <= 60)
    {
      goto LABEL_169;
    }

    v53 = 0;
    v54 = a29;
    v55 = a29 * 0.5;
    v56 = v55 / 3.1416;
    do
    {
      *(v134 + v53) = v56 * acosf(*(a6 + v53));
      v53 += 4;
    }

    while (v53 != 64);
    if (a2 == 2)
    {
      if (a10 < a9 || (a10 - a9) < 61)
      {
        goto LABEL_169;
      }

      for (j = 0; j != 64; j += 4)
      {
        *(v133 + j) = v56 * acosf(*(a9 + j));
      }
    }

    if (*(&a13 + 1) < a13)
    {
      goto LABEL_169;
    }

    if ((*(&a13 + 1) - a13) < 61)
    {
      goto LABEL_169;
    }

    *&v58 = -1;
    *(&v58 + 1) = -1;
    v146 = v58;
    v147 = v58;
    v144 = v58;
    v145 = v58;
    memset(__b, 170, sizeof(__b));
    *&v59 = -1;
    *(&v59 + 1) = -1;
    v141 = v59;
    v142 = v59;
    v139 = v59;
    v140 = v59;
    *(a13 + 32) = 0u;
    *(a13 + 48) = 0u;
    *a13 = 0u;
    *(a13 + 16) = 0u;
    vlpc_1st_cod(v134, &v135, a13, a13 + 64, &v139, __b, v54);
    v61 = a24 + 1;
    if ((a24 + 1) > a25)
    {
      goto LABEL_169;
    }

    if (v61 < a24)
    {
      goto LABEL_169;
    }

    *a24 = v60;
    v62 = a24 + 2;
    v63 = vlpc_2st_cod(v134, &v135, a13, (a13 + 64), v61, a25, v54, 0);
    if ((a24 + 2) > a25)
    {
      goto LABEL_169;
    }

    if (v61 > v62)
    {
      goto LABEL_169;
    }

    if (v62 < a24)
    {
      goto LABEL_169;
    }

    if ((a24 + 3) > a25)
    {
      goto LABEL_169;
    }

    if (v62 > a24 + 3)
    {
      goto LABEL_169;
    }

    v125 = a26 + 1;
    if ((a26 + 1) > a27)
    {
      goto LABEL_169;
    }

    if (v125 < a26)
    {
      goto LABEL_169;
    }

    v130 = a24[1] + a24[2] + 3;
    v64 = &a24[v130];
    *a26 = v63 + 8;
    if (v64 < a24)
    {
      goto LABEL_169;
    }

    v65 = v64 + 1;
    if ((v64 + 1) > a25 || v64 > v65)
    {
      goto LABEL_169;
    }

    *v64 = 0;
    if (a2 == 2)
    {
      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      vlpc_1st_cod(v133, v134, &v135, &v139, &v139, __b, v54);
      v67 = v64 + 2;
      if ((v64 + 2) > a25)
      {
        goto LABEL_169;
      }

      if (v65 > v67)
      {
        goto LABEL_169;
      }

      v64[1] = v66;
      v68 = vlpc_2st_cod(v133, v134, &v135, &v139, v64 + 2, a25, v54, 0);
      v69 = v64 + 3;
      if ((v64 + 3) > a25 || v67 > v69 || (v64 + 4) > a25 || v69 > v64 + 4)
      {
        goto LABEL_169;
      }

      v70 = v68 + 8;
      v124 = *v67;
      v123 = *v69;
      v71 = *a13;
      v72 = *(a13 + 16);
      v73 = *(a13 + 48);
      v146 = *(a13 + 32);
      v147 = v73;
      v144 = v71;
      v145 = v72;
      v74 = vlpc_2st_cod(v133, v134, &v144, v148, __b, &v144, v54, 3);
      if (v74 >= v70)
      {
        v77 = v124 + v123 + 3;
        v74 = v70;
      }

      else
      {
        v75 = __b[0];
        v76 = DWORD1(__b[0]);
        *v64 = 1;
        v135 = v144;
        v136 = v145;
        v137 = v146;
        v138 = v147;
        v77 = v75 + v76 + 2;
        if (v77 >= 1)
        {
          for (k = 0; k != v77; ++k)
          {
            v79 = __b + k * 4 + 4;
            v80 = (__b + k * 4) < __b || v79 > &v144;
            v81 = v80 || __b + k * 4 > v79;
            v82 = &v64[k + 1];
            v83 = &v64[k + 2];
            v84 = !v81 && v82 >= a24;
            v85 = !v84 || v83 > a25;
            if (v85 || v82 > v83)
            {
              goto LABEL_169;
            }

            *v82 = *(__b + k * 4);
          }
        }
      }

      if ((a26 + 2) > a27 || v125 > a26 + 2)
      {
        goto LABEL_169;
      }

      v130 += 1 + v77;
      *v125 = v74 + 1;
    }

    v41 = a14;
    v37 = a1;
    if (a12 < a11 || (a12 - a11) < 61)
    {
      goto LABEL_169;
    }

    for (m = 0; m != 64; m += 4)
    {
      *(a11 + m) = cosf((*(a13 + m) * 3.1416) / v55);
    }

    if (a2 == 2)
    {
      if (a15 < a14 || (a15 - a14) < 61)
      {
        goto LABEL_169;
      }

      for (n = 0; n != 64; n += 4)
      {
        *(a14 + n) = cosf((*(&v135 + n) * 3.1416) / v55);
      }

      v38 = a25;
      v39 = a24;
      v37 = a1;
    }

    else
    {
      v38 = a25;
      v39 = a24;
    }
  }

  v87 = v130;
  *a28 = 0;
  if (v130 < 1)
  {
    if (!v126)
    {
      return;
    }

LABEL_104:
    if (!a23)
    {
      return;
    }

    if (*(v37 + 122148))
    {
      v96 = &v39[v87];
      if (v96 >= v39 && (v96 + 1) <= v38 && v96 <= v96 + 1)
      {
        *v96 = 0;
        return;
      }
    }

    else
    {
      v131 = v87;
      if (a10 >= v40 && (a10 - v40) >= 61)
      {
        v97 = 0;
        v98 = a29 * 0.5;
        do
        {
          *(v133 + v97) = (v98 / 3.1416) * acosf(*(v40 + v97));
          v97 += 4;
        }

        while (v97 != 64);
        v139 = *a31;
        *&v140 = *(a31 + 2);
        *&v99 = -1;
        *(&v99 + 1) = -1;
        __b[2] = v99;
        __b[3] = v99;
        __b[0] = v99;
        __b[1] = v99;
        v146 = v99;
        v147 = v99;
        v100 = a22 == 1 ? &tbl_mid_gen_wb_5b : &min_distance_thr;
        v101 = a22 == 1 ? tbl_mid_unv_wb_5b : &tbl_mid_gen_wb_5b;
        v144 = v99;
        v145 = v99;
        Unified_weighting(&v139, v133, v134, &v144, v148, a20, a22 == 1, a29);
        v102 = 0;
        v103 = 0;
        v104 = 3.4028e38;
        v105 = v101;
        do
        {
          v106 = 0;
          v107 = 0.0;
          do
          {
            v108 = &v105[v106 / 4];
            v109 = &v105[v106 / 4 + 1];
            if (&v105[v106 / 4] < v101 || v109 > v100 || v108 > v109)
            {
              goto LABEL_169;
            }

            v112 = (a4 + v106);
            if (a4 + v106 < a4)
            {
              goto LABEL_169;
            }

            if ((v112 + 1) > a5)
            {
              goto LABEL_169;
            }

            if (v112 > v112 + 1)
            {
              goto LABEL_169;
            }

            v113 = (a13 + v106);
            if (a13 + v106 < a13)
            {
              goto LABEL_169;
            }

            if ((v113 + 1) > *(&a13 + 1))
            {
              goto LABEL_169;
            }

            if (v113 > v113 + 1)
            {
              goto LABEL_169;
            }

            v114 = (__b + v106);
            if ((__b + v106) < __b || v114 + 1 > &__b[4] || v114 > v114 + 1)
            {
              goto LABEL_169;
            }

            v115 = (*v108 * *v113) + ((1.0 - *v108) * *v112);
            *(__b + v106) = v115;
            if (v106)
            {
              v116 = (&v142 + v106 + 12);
              if ((&v142 + v106 + 12) < __b || v116 > v114)
              {
                goto LABEL_169;
              }

              v117 = *v116 + 80.0;
              if (v115 < v117)
              {
                *v114 = v117;
                v115 = v117;
              }
            }

            v118 = v133 + v106;
            if ((v133 + v106) < v133)
            {
              goto LABEL_169;
            }

            if (v118 + 4 > v134)
            {
              goto LABEL_169;
            }

            if (v118 > v118 + 4)
            {
              goto LABEL_169;
            }

            v119 = &v144 + v106;
            if ((&v144 + v106) < &v144 || v119 + 4 > v148 || v119 > v119 + 4)
            {
              goto LABEL_169;
            }

            v107 = v107 + ((*(&v144 + v106) * (*(v133 + v106) - v115)) * (*(v133 + v106) - v115));
            v106 += 4;
          }

          while (v106 != 64);
          if (v107 >= v104)
          {
            v120 = v102;
          }

          else
          {
            v120 = v103;
          }

          v102 = v120;
          if (v107 < v104)
          {
            v104 = v107;
          }

          ++v103;
          v105 += 16;
        }

        while (v103 != 32);
        v121 = &a24[v131];
        if (v121 >= a24 && (v121 + 1) <= a25 && v121 <= v121 + 1)
        {
          *v121 = v120;
          if ((a5 - a4) >= 61 && a5 >= a4 && *(&a13 + 1) >= a13 && (*(&a13 + 1) - a13) >= 61)
          {
            midlsf_dec(a4, a13, v120, &v135, a22, 0, 0, 1);
            reorder_lsf(&v135, 80.0, a29);
            if (a15 >= v41 && (a15 - v41) >= 61)
            {
              for (ii = 0; ii != 64; ii += 4)
              {
                *(v41 + ii) = cosf((*(&v135 + ii) * 3.1416) / v98);
              }

              return;
            }
          }
        }
      }
    }

LABEL_169:
    __break(0x5519u);
  }

  LOWORD(v92) = 0;
  v93 = v130 + 1;
  v94 = &v39[v130 - 1];
  do
  {
    if (v94 < v39 || (v94 + 2) > v38 || v94 > v94 + 2)
    {
      goto LABEL_169;
    }

    v95 = *v94;
    v94 -= 2;
    v92 = 31821 * (v95 + (v92 >> 1)) + 13849;
    *a28 = v92;
    --v93;
  }

  while (v93 > 1);
  v87 = v130;
  if (v126)
  {
    goto LABEL_104;
  }
}

void ShapeSpectrum(_DWORD *a1, float *a2, unint64_t a3, float *a4, unint64_t a5, uint64_t a6, int a7, uint64_t a8, float *a9, unint64_t a10, int a11, uint64_t a12)
{
  v12 = a7;
  v13 = a6;
  v76 = *MEMORY[0x1E69E9840];
  v16 = (a1 + 4096);
  if (*(a12 + 110824))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = *(a12 + 110896);
  }

  if (!*(a12 + 52108))
  {
    v12 = a7 + (a1[4289] >> 2);
    v13 = a1[2144] + a6 - (a1[4290] & (a1[4290] >> 31));
  }

  v18 = *(a12 + 64) < 13200 || *(a12 + 67462) != 0;
  v75 = -1;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  v74[2] = v19;
  v74[3] = v19;
  v74[0] = v19;
  v74[1] = v19;
  if (a3 < a2 || (a3 - a2) <= 64)
  {
    goto LABEL_115;
  }

  v20 = 0.5625;
  if (v18)
  {
    get_gain((a2 + 1), a2, 0x10u, 0);
    v20 = v21 + 0.09375;
    if (v20 > 1.0)
    {
      v20 = 1.0;
    }
  }

  *(a12 + 110608) = v20;
  if (*(a12 + 122152))
  {
    if (v13 >= 200)
    {
      v22 = 200;
    }

    else
    {
      v22 = v13;
    }

    v16[231] = SFM_Cal(a9, a10, v22);
  }

  v23 = *(a12 + 64);
  v24 = 0.0;
  if (v23 == 13200 || v23 == 9600)
  {
    v25 = 0.0;
    if (*(a12 + 130) == 2)
    {
      if (v13 >= 1)
      {
        v26 = v13;
        v27 = 0.0;
        v28 = a9;
        do
        {
          if (v28 < a9 || (v28 + 1) > a10 || v28 > v28 + 1)
          {
            goto LABEL_115;
          }

          v29 = *v28++;
          v30 = fabsf(v29);
          if (v30 > v27)
          {
            v27 = v30;
          }

          --v26;
        }

        while (v26);
        v25 = v27 * 16.0;
      }

      v31 = (v12 - v13);
      if (v31 >= 1)
      {
        v32 = &a9[v13];
        v24 = 0.0;
        while (v32 >= a9 && (v32 + 1) <= a10 && v32 <= v32 + 1)
        {
          v33 = *v32++;
          v34 = fabsf(v33);
          if (v34 > v24)
          {
            v24 = v34;
          }

          if (!--v31)
          {
            goto LABEL_41;
          }
        }

LABEL_115:
        __break(0x5519u);
      }
    }
  }

  else
  {
    v25 = 0.0;
  }

LABEL_41:
  weight_a(a2, a3, v74, &v76, 16, v17);
  if (a5 < a4 || (a5 - a4) < 253)
  {
    goto LABEL_115;
  }

  lpc2mdct(v74, &v76, a4);
  mdct_preShaping(a9, a10, v13, a4, a5);
  v35 = v12 - v13;
  if (v12 - v13 >= 1)
  {
    v36 = a4 + 63;
    if (a4 + 63 < a4)
    {
      goto LABEL_115;
    }

    if ((a4 + 64) > a5)
    {
      goto LABEL_115;
    }

    if (v36 > a4 + 64)
    {
      goto LABEL_115;
    }

    v37 = &a9[v13];
    if (v37 > a10 || v37 < a9 || (v35 & 0x8000) != 0 || (a10 - v37) >> 2 < v35)
    {
      goto LABEL_115;
    }

    if (v35 >= 1)
    {
      v38 = *v36;
      v39 = v35 & 0x7FFF;
      v40 = 1.0 / v38;
      do
      {
        *v37 = *v37 * v40;
        ++v37;
        --v39;
      }

      while (v39);
    }
  }

  v41 = *(a12 + 64);
  if ((v41 == 13200 || v41 == 9600) && *(a12 + 130) == 2)
  {
    v42 = 1.5;
    if (!*(a12 + 122158))
    {
      v42 = 3.0;
    }

    v43 = (v13 / 2);
    v44 = 0.0;
    if (v13 > 1)
    {
      v45 = 0;
      v46 = 0;
      v47 = &a9[v13 - 1];
      v48 = 0.0;
      while (v47 >= a9 && (v47 + 1) <= a10 && v47 <= v47 + 1)
      {
        v49 = *v47--;
        v50 = fabsf(v49);
        if (v50 > v48)
        {
          v48 = v50;
          v46 = v45;
        }

        if (v43 == ++v45)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_115;
    }

    v46 = 0;
    v48 = 0.0;
LABEL_69:
    v51 = v13 - v43;
    if (v13 - v43 >= 1)
    {
      v52 = -v51;
      v53 = &a9[v51 - 1];
      v44 = 0.0;
      while (v53 >= a9 && (v53 + 1) <= a10 && v53 <= v53 + 1)
      {
        v54 = *v53--;
        v55 = fabsf(v54);
        if (v55 > v44)
        {
          v44 = v55;
        }

        if (v55 > v48)
        {
          v46 = v43;
        }

        LODWORD(v43) = v43 + 1;
        if (__CFADD__(v52++, 1))
        {
          goto LABEL_80;
        }
      }

      goto LABEL_115;
    }

LABEL_80:
    if (v44 <= v48)
    {
      v57 = v48;
    }

    else
    {
      v57 = v44;
    }

    if (v35 < 1)
    {
      v60 = 0.0;
      v65 = 0.0;
    }

    else
    {
      v58 = 0;
      v59 = 0;
      v60 = 0.0;
      v61 = (v12 - v13);
      v62 = &a9[v13];
      do
      {
        if (v62 < a9 || (v62 + 1) > a10 || v62 > v62 + 1)
        {
          goto LABEL_115;
        }

        v63 = *v62++;
        v64 = fabsf(v63);
        if (v64 > v60)
        {
          v60 = v64;
          v59 = v58;
        }

        ++v58;
        --v61;
      }

      while (v61);
      v65 = v59 * 4.0;
    }

    v66 = (v60 * v65) <= (v57 * v46) || v25 <= v24;
    v67 = v42 * v48;
    if (!v66 && v60 > v67)
    {
      v69 = &a9[v13];
      if (v69 > a10 || v69 < a9 || (v35 & 0x8000) != 0 || (a10 - v69) >> 2 < v35)
      {
        goto LABEL_115;
      }

      if (v35 >= 1)
      {
        v70 = v35 & 0x7FFF;
        v71 = v67 / v60;
        do
        {
          *v69 = *v69 * v71;
          ++v69;
          --v70;
        }

        while (v70);
      }
    }
  }

  if (*(a12 + 111808) && *(a12 + 116900) && !a11 && *(a12 + 116912) > 0.0)
  {
    PsychAdaptLowFreqEmph(a9, a10, a4, a5);
  }
}

void QuantizeSpectrum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, unint64_t a10, int a11, int a12, unsigned int a13, int a14, int a15, float *a16, unint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, int *a22, unint64_t a23, int a24, uint64_t a25, int **a26)
{
  v26 = MEMORY[0x1EEE9AC00](a1);
  v731 = v27;
  v740 = v28;
  v715 = v29;
  v30 = a12;
  v795[0] = *MEMORY[0x1E69E9840];
  v742 = v31;
  v759 = (a25 + 52108);
  v760 = v32;
  LODWORD(v736) = *(v26 + 8556);
  v33 = *(v26 + 8576);
  *v771 = v26;
  v729 = v26 + 0x4000;
  v718 = *(a25 + 111820);
  v714 = v34;
  if (*(a25 + 52108))
  {
    v764 = a13;
    v722 = *(v26 + 8576);
    v35 = a11;
  }

  else
  {
    *(v26 + 7224) = 0;
    v35 = (v33 + a11);
    v30 = *(v26 + 17152) + a12;
    v764 = a13 + (*(v26 + 17156) >> 2);
    v36 = *(v26 + 17160);
    if (v36 < 0)
    {
      v35 = (v35 - v36);
      v30 -= *(v26 + 17164);
    }

    else
    {
      v36 = 0;
    }

    v722 = v36;
    *(a25 + 110612) = 0;
  }

  v777 = -1431655766;
  v776 = NAN;
  v775 = NAN;
  memset(v786, 255, sizeof(v786));
  memset(__b, 255, sizeof(__b));
  memset(v774, 170, sizeof(v774));
  v773 = NAN;
  *&v37 = -1;
  *(&v37 + 1) = -1;
  v782[0] = v37;
  v782[1] = v37;
  v782[2] = v37;
  v782[3] = v37;
  v783 = -1;
  v794[0] = v782;
  v794[1] = v784;
  v794[2] = v782;
  lsp2a_stab(a25 + 5204, v794);
  v38 = a16;
  if (*(a25 + 122152))
  {
    if (a11 >= 200)
    {
      v39 = 200;
    }

    else
    {
      v39 = a11;
    }

    v40 = SFM_Cal(a16, a17, v39);
    v41 = 0.4;
    v42 = 0.1;
    if (a11 < 257 || a11 == 320)
    {
      v38 = a16;
      v43 = v729;
    }

    else
    {
      v38 = a16;
      v43 = v729;
      if (a11 != 512)
      {
        v41 = 0.35;
        v42 = 0.04;
      }
    }

    *(a25 + 122154) = v40 < v41;
    if (*(v43 + 924) < v42)
    {
      *(a25 + 122154) = 1;
    }
  }

  if (v764 >= 1)
  {
    if (a17 < v38)
    {
      goto LABEL_1289;
    }

    v44 = 4 * (v764 & 0x7FFF);
    if (a17 - v38 < v44)
    {
      goto LABEL_1289;
    }

    if (v44 >= 0x12C1)
    {
      goto LABEL_1289;
    }

    memmove(__b, v38, 4 * (v764 & 0x7FFF));
    v38 = a16;
    if (&__b[v44 / 4] < __b)
    {
      goto LABEL_1289;
    }
  }

  if (*(a25 + 129336))
  {
    v723 = *(a25 + 125964);
    v45 = *(a25 + 125968);
    v46 = v764;
  }

  else
  {
    v46 = v764;
    *(a25 + 125968) = v764;
    v45 = v764;
    v723 = v764;
  }

  v752 = v35;
  v717 = v30;
  if (v35 <= v30)
  {
    v47 = v30;
  }

  else
  {
    v47 = v35;
  }

  if (v45 < v47)
  {
    v48 = v47 - v45;
    v49 = &v38[v45];
    do
    {
      if (v49 < v38 || (v49 + 1) > a17 || v49 > v49 + 1)
      {
        goto LABEL_1289;
      }

      *v49++ = 0.0;
      --v48;
    }

    while (v48);
  }

  v50 = &a22[a20];
  __n = v50 + 5;
  v51 = v50 + 7;
  v753 = v50 + 8;
  v755 = a14 - 10;
  v746 = v50 + 7;
  if (*(a25 + 122158))
  {
    PsychAdaptLowFreqEmph(v38, a17, v740, v731);
    v766 = a26[1];
    v769 = *a26;
    v52 = *(a25 + 116904);
    v53 = *(a25 + 140);
    if (v52 >= v53)
    {
      LOWORD(v54) = -1;
    }

    else
    {
      v54 = ((v53 * *(a25 + 111848)) << 8) / (*(a25 + 116908) + *(a25 + 111848) * v52);
    }

    if (__n < a22)
    {
      goto LABEL_1289;
    }

    v748 = (__n + 4);
    if (__n + 4 < a22)
    {
      goto LABEL_1289;
    }

    v737 = v54;
    v58 = *(a25 + 86160);
    v59 = v58;
    v60 = 1.0 / *(a25 + 110896);
    if (v58 >= 0.0)
    {
      v63 = v59 * 32768.0 + 0.5;
      LOWORD(v62) = 0x7FFF;
      if (v63 < 32767.0)
      {
        v62 = v63;
      }
    }

    else
    {
      v61 = v59 * 32768.0 + -0.5;
      LOWORD(v62) = 0x8000;
      if (v61 > -32768.0)
      {
        v62 = v61;
      }
    }

    v64 = v62;
    v65 = v60 * 0.5;
    v66 = (v60 * 0.5);
    if (v65 >= 0.0)
    {
      v67 = v66 * 32768.0 + 0.5;
      v68 = v35;
      if (v67 >= 32767.0)
      {
        LOWORD(v69) = 0x7FFF;
LABEL_69:
        v80 = *v759;
        v81 = *(a25 + 130);
        v82 = *(a25 + 86152);
        memset(v788, 170, sizeof(v788));
        v778 = -21846;
        memset(v787, 170, sizeof(v787));
        tcx_arith_render_envelope(v742, v760, v68, v764, v64, v69, v788, &v789);
        if (v764 >= 1)
        {
          v83 = a16;
          v84 = v769;
          v85 = v764;
          while (v83 >= a16 && (v83 + 1) <= a17 && v83 <= v83 + 1)
          {
            if (*v83 >= 0.0)
            {
              if (v84 < v769 || v84 + 1 > v766 || v84 > v84 + 1)
              {
                goto LABEL_1289;
              }

              *v84 = 0;
            }

            else
            {
              *v83 = -*v83;
              if (v84 < v769 || v84 + 1 > v766 || v84 > v84 + 1)
              {
                goto LABEL_1289;
              }

              *v84 = 1;
            }

            ++v84;
            ++v83;
            if (!--v85)
            {
              goto LABEL_84;
            }
          }

          goto LABEL_1289;
        }

LABEL_84:
        if (!v80)
        {
          if ((__n + 1) > a23 || __n + 1 < __n)
          {
            goto LABEL_1289;
          }

          v90 = 0;
          *__n = 0;
          v719 = a14 - 10;
          v88 = v764;
          v89 = a25;
LABEL_204:
          if (*(v89 + 129336))
          {
            v167 = *(v89 + 125964);
            if (v167 >= v88)
            {
              LOWORD(v167) = v88;
            }
          }

          else
          {
            LOWORD(v167) = v88;
          }

          v711 = v90;
          tcx_arith_scale_envelope(v764, v167, v788, &v789, v719, v81 > 1, v788, &v789, &v778);
          v168 = v778;
          v169 = v778 - 1;
          if (v168 == -32768)
          {
            v169 = 0x8000;
          }

          v738 = v88 - 1;
          if (v88 >= 1)
          {
            v170 = v169;
            v171 = v788;
            v172 = v787;
            v173 = v764;
            do
            {
              v174 = v171 + 1;
              v175 = v171 < v788 || v174 > &v789;
              v176 = v175 || v171 > v174;
              v177 = v172 + 1;
              v178 = !v176 && v172 >= v787;
              v179 = !v178 || v177 > v788;
              if (v179 || v172 > v177)
              {
                goto LABEL_1289;
              }

              v182 = *v171++;
              v181 = v182;
              if (v182 == 0x8000)
              {
                LOWORD(v183) = 0x7FFF;
              }

              else
              {
                v183 = -v181;
              }

              *v172++ = expfp(v183, v170);
            }

            while (--v173);
          }

          v184 = v764;
          v185 = tcx_arith_rateloop(a16, a17, v764, v788, &v789, v168, v787, v788, v719, a25 + 111856, a25 + 116656, (a25 + 3528));
          kMax = tcx_arith_find_kMax(a16, a17, v764, a25 + 111856, a25 + 116656, v185, v82);
          v713 = kMax;
          if ((kMax & 0x80000000) != 0)
          {
            v193 = 0;
            v195 = 0;
            LOWORD(v789) = -21846;
            v792[0] = -21846;
            v192 = 0xFFFF00000000;
            v794[0] = 0xFFFF00000000;
            LODWORD(v794[1]) = 0;
            v211 = kMax;
          }

          else
          {
            v187 = kMax + 1;
            v188 = a16;
            v189 = v788;
            v190 = v187;
            do
            {
              if (v188 < a16 || (v188 + 1) > a17 || v188 > v188 + 1 || v189 < v788 || v189 + 1 > &v789 || v189 > v189 + 1)
              {
                goto LABEL_1289;
              }

              v191 = *v188++;
              *v189++ = (v82 + (v191 * v185));
              --v190;
            }

            while (v190);
            LOWORD(v789) = -21846;
            v792[0] = -21846;
            v192 = 0xFFFF00000000;
            v794[0] = 0xFFFF00000000;
            LODWORD(v794[1]) = 0;
            v193 = 0;
            if ((kMax & 0x80000000) != 0)
            {
              v195 = 0;
              v211 = kMax;
            }

            else
            {
              v194 = 0;
              v195 = 0;
              v726 = kMax + 1;
              v196 = (v788 + 4);
              v197 = v788;
              v198 = kMax;
              while (1)
              {
                v199 = v788 + v194;
                v200 = v199 + 1;
                if (v199 < v788 || v200 > &v789 || v199 > v200)
                {
                  goto LABEL_1289;
                }

                v203 = *(v788 + v194);
                v204 = &v787[v194];
                v205 = v204 + 1 > v788 || v204 > v204 + 1;
                v206 = !v205 && v204 >= v787;
                v207 = v206;
                if (v203)
                {
                  if (!v207)
                  {
                    goto LABEL_1289;
                  }

                  while (1)
                  {
                    powfp_odd2(*v204, v203, &v789, v792);
                    if (v792[0] + 2 <= v789)
                    {
                      break;
                    }

                    v203 = *v199 - 1;
                    *v199 = v203;
                  }

                  v208 = ari_encode_14bits_range(v748, a23, v195, v719, v794, v792[0] >> 1, (v789 >> 1));
                  v209 = &v769[v194];
                  if (v209 < v769 || v209 + 1 > v766 || v209 > v209 + 1)
                  {
                    goto LABEL_1289;
                  }

                  v210 = ari_encode_14bits_sign(v748, a23, v208, v719, v794, *v209);
                }

                else
                {
                  if (!v207)
                  {
                    goto LABEL_1289;
                  }

                  v210 = ari_encode_14bits_range(v748, a23, v195, v719, v794, (*v204 >> 1), 0x4000);
                }

                if (SHIDWORD(v794[0]) <= SLODWORD(v794[0]))
                {
                  break;
                }

                v192 = v794[0];
                ++v194;
                --v198;
                v196 = (v196 + 4);
                v193 = v794[1];
                --v187;
                v197 = (v197 + 4);
                v195 = v210;
                if (v194 == v726)
                {
                  v211 = v713;
                  goto LABEL_290;
                }
              }

              v212 = *(v788 + v194);
              if (v212 < 2)
              {
                goto LABEL_294;
              }

              v794[0] = v192;
              LODWORD(v794[1]) = v193;
              v213 = v212 - 1;
              *v199 = v213;
              powfp_odd2(v787[v194], v213, &v789, v792);
              v214 = ari_encode_14bits_range(v748, a23, v195, v719, v794, v792[0] >> 1, (v789 >> 1));
              v215 = &v769[v194];
              if (v215 < v769 || v215 + 1 > v766 || v215 > v215 + 1)
              {
                goto LABEL_1289;
              }

              v210 = ari_encode_14bits_sign(v748, a23, v214, v719, v794, *v215);
              if (SHIDWORD(v794[0]) <= SLODWORD(v794[0]))
              {
LABEL_294:
                v794[0] = v192;
                LODWORD(v794[1]) = v193;
                v211 = v194 - 1;
                if (v713 >= v194)
                {
                  do
                  {
                    v225 = (v197 + 4);
                    v226 = v197 < v788 || v225 > &v789;
                    if (v226 || v197 > v225)
                    {
                      goto LABEL_1289;
                    }

                    *v197 = 0;
                    v197 = (v197 + 4);
                  }

                  while (--v187);
                }
              }

              else
              {
                v192 = v794[0];
                v193 = v794[1];
                if (v713 > v194)
                {
                  do
                  {
                    v216 = (v196 + 4);
                    v217 = v196 < v788 || v216 > &v789;
                    if (v217 || v196 > v216)
                    {
                      goto LABEL_1289;
                    }

                    *v196 = 0;
                    v196 = (v196 + 4);
                  }

                  while (--v198);
                }

                v211 = v194;
LABEL_290:
                v195 = v210;
              }
            }

            v184 = v764;
          }

          if (v211 + 1 >= v184)
          {
            v232 = v195;
          }

          else
          {
            v228 = &v787[v211 + 1];
            while (1)
            {
              v229 = v228 + 1;
              if (v228 < v787 || v229 > v788 || v228 > v229)
              {
                goto LABEL_1289;
              }

              v232 = ari_encode_14bits_range(v748, a23, v195, v719, v794, (*v228 >> 1), 0x4000);
              if (SHIDWORD(v794[0]) <= SLODWORD(v794[0]))
              {
                break;
              }

              v192 = v794[0];
              v193 = v794[1];
              ++v211;
              ++v228;
              v195 = v232;
              if (v738 == v211)
              {
                goto LABEL_318;
              }
            }

            v794[0] = v192;
            LODWORD(v794[1]) = v193;
            v232 = v195;
            if (v211 != v738)
            {
              v235 = (__n + 4);
              v236 = a23;
              v233 = v195;
              v234 = v719;
LABEL_319:
              done = ari_done_cbr_encoding_14bits(v235, v236, v233, v234, v794);
              v237 = a16;
              if ((v713 & 0x80000000) == 0)
              {
                v238 = 0;
                v239 = v713 + 1;
                while (1)
                {
                  v240 = v788 + v238 * 4 + 4;
                  v241 = (v788 + v238 * 4) < v788 || v240 > &v789;
                  v242 = v241 || v788 + v238 * 4 > v240;
                  v243 = &v769[v238];
                  v244 = &v769[v238 + 1];
                  v245 = !v242 && v243 >= v769;
                  v246 = !v245 || v244 > v766;
                  v247 = v246 || v243 > v244;
                  v248 = &a16[v238];
                  v249 = &a16[v238 + 1];
                  v250 = !v247 && v248 >= a16;
                  v251 = !v250 || v249 > a17;
                  if (v251 || v248 > v249)
                  {
                    goto LABEL_1289;
                  }

                  *v248 = (*(v788 + v238 * 4) - 2 * *v243 * *(v788 + v238 * 4));
                  if (v713 + 1 == ++v238)
                  {
                    goto LABEL_349;
                  }
                }
              }

              v239 = 0;
LABEL_349:
              if (v752 <= v764)
              {
                v253 = v764;
              }

              else
              {
                v253 = v752;
              }

              if (v239 < v253)
              {
                v254 = &a16[v239];
                while (v254 >= a16 && (v254 + 1) <= a17 && v254 <= v254 + 1)
                {
                  *v254++ = 0.0;
                  if (v253 <= ++v239)
                  {
                    goto LABEL_358;
                  }
                }

                goto LABEL_1289;
              }

LABEL_358:
              LODWORD(v255) = v764;
              if (v753 < a22 || v748 > a23 || v753 > v748)
              {
                goto LABEL_1289;
              }

              v756 = v755 - v711;
              *v753 = v756;
              v75 = 1.0;
              if (v723 >= 1)
              {
                v256 = 0;
                v257 = 0;
                v258 = a16;
                v259 = v723;
                while (v258 >= a16 && (v258 + 1) <= a17 && v258 <= v258 + 1)
                {
                  v260 = *v258++;
                  v261 = v260;
                  if (v260 < 0)
                  {
                    v261 = -v261;
                  }

                  v257 += 2 * v261 * v256++;
                  if (!--v259)
                  {
                    goto LABEL_371;
                  }
                }

                goto LABEL_1289;
              }

              v257 = 0;
LABEL_371:
              v262 = __n + 4;
LABEL_573:
              if (v255 < 1)
              {
                v750 = 0;
              }

              else
              {
                v352 = v255;
                v353 = v786;
                do
                {
                  v354 = v353 + 1;
                  if (v353 < v786 || v354 > v787 || v353 > v354)
                  {
                    goto LABEL_1289;
                  }

                  *v353++ = 1065353216;
                  --v352;
                }

                while (v352);
                v750 = 1;
              }

              goto LABEL_586;
            }
          }

LABEL_318:
          v233 = v232;
          v234 = v232 + v193 + 16;
          v235 = (__n + 4);
          v236 = a23;
          goto LABEL_319;
        }

        v86 = *(a25 + 86172);
        v87 = *(a25 + 116912);
        v781 = -1431655766;
        v780 = -1431655766;
        bzero(v794, 0xC80uLL);
        v779 = 0.0;
        memset(v792, 170, sizeof(v792));
        v725 = v81;
        if ((v86 - 4) > 0xFFFFFFFD)
        {
          v91 = (v764 >> 4);
          v92 = 1.0 / ((2 * v91) | 1);
          if (v91 < 1)
          {
            v110 = 0;
            v93 = 0.0;
            v94 = a16;
          }

          else
          {
            v93 = 0.0;
            v94 = a16;
            v95 = a16;
            v96 = (v764 >> 4);
            do
            {
              if (v95 < a16 || (v95 + 1) > a17 || v95 > v95 + 1)
              {
                goto LABEL_1289;
              }

              v97 = *v95++;
              v93 = v93 + v97;
              --v96;
            }

            while (v96);
            v98 = 0;
            v99 = &a16[v91];
            do
            {
              v100 = &a16[v98 + 1];
              v102 = &a16[v98] < a16 || v100 > a17 || &a16[v98] > v100;
              v103 = v794 + v98 * 4;
              v104 = v794 + v98 * 4 + 4;
              v105 = !v102 && v103 >= v794;
              if (!v105 || v104 > &v794[400] || v103 > v104)
              {
                goto LABEL_1289;
              }

              v108 = a16[v98] - (v93 * v92);
              if (v108 < 0.0)
              {
                v108 = 0.0;
              }

              *(v794 + v98 * 4) = v108;
              v109 = &v99[v98];
              if (&v99[v98] < a16 || (v109 + 1) > a17 || v109 > v109 + 1)
              {
                goto LABEL_1289;
              }

              v93 = v93 + *v109;
              ++v98;
            }

            while (v91 != v98);
            v110 = v764 >> 4;
          }

          v122 = (v764 - v91);
          if (v110 < v122)
          {
            v123 = v110;
            v124 = v110;
            v125 = &v94[v91];
            v126 = v94;
            v127 = v794;
            v128 = &v94[-v91];
            do
            {
              v129 = &v126[v124];
              v130 = &v126[v124 + 1];
              v132 = &v126[v124] < v94 || v130 > a17 || v129 > v130;
              v133 = (v127 + v124 * 4);
              v134 = v127 + v124 * 4 + 4;
              if (v132 || v133 < v794 || v134 > &v794[400] || v133 > v134)
              {
                goto LABEL_1289;
              }

              v138 = *v129 - (v93 * v92);
              if (v138 < 0.0)
              {
                v138 = 0.0;
              }

              *v133 = v138;
              v139 = &v128[v124];
              if (&v128[v124] < v94)
              {
                goto LABEL_1289;
              }

              if ((v139 + 1) > a17)
              {
                goto LABEL_1289;
              }

              if (v139 > v139 + 1)
              {
                goto LABEL_1289;
              }

              v140 = &v125[v124];
              if (&v125[v124] < v94 || (v140 + 1) > a17 || v140 > v140 + 1)
              {
                goto LABEL_1289;
              }

              ++v123;
              ++v125;
              v93 = (v93 - *v139) + *v140;
              ++v128;
              v127 = (v127 + 4);
              ++v126;
            }

            while (v123 < v122);
            v110 = v123;
          }

          if (v110 < v764)
          {
            v141 = v764 - v110;
            v142 = v110;
            v143 = v94;
            v144 = v794;
            v145 = &v94[-v91];
            do
            {
              v146 = &v143[v142];
              v147 = &v143[v142 + 1];
              v148 = &v143[v142] < v94 || v147 > a17;
              v149 = v148 || v146 > v147;
              v150 = (v144 + v142 * 4);
              v151 = v144 + v142 * 4 + 4;
              v152 = !v149 && v150 >= v794;
              v153 = !v152 || v151 > &v794[400];
              if (v153 || v150 > v151)
              {
                goto LABEL_1289;
              }

              v155 = *v146 - (v93 * v92);
              if (v155 < 0.0)
              {
                v155 = 0.0;
              }

              *v150 = v155;
              v156 = &v145[v142];
              if (&v145[v142] < v94 || (v156 + 1) > a17 || v156 > v156 + 1)
              {
                goto LABEL_1289;
              }

              v93 = v93 - *v156;
              ++v145;
              v144 = (v144 + 4);
              ++v143;
            }

            while (--v141);
          }

          v157 = SearchPeriodicityIndex(v794, &v794[400], v94, a17, v764, a14 - 11, v737, &v779, v87);
          v158 = __n + 1;
          if (__n + 1 < __n || v746 > a23 || v158 > v746)
          {
            goto LABEL_1289;
          }

          *v158 = v157;
          v159 = v764 < 256 || a14 < 162;
          v160 = v159;
          UnmapIndex(v157, v764 > 255, v737, v160, &v780, &v781);
          v161 = v780;
          v789 = v792;
          v790 = v793;
          v791 = v792;
          v162 = v781;
          tcx_hm_render(v781, v780, &v789);
          if (v746)
          {
            if (v753 > a23 || v746 > v753)
            {
              goto LABEL_1289;
            }
          }

          v789 = 0x3E4CCCCD3F000000;
          v744 = v86;
          v164 = v86 == 2;
          v165 = (&v789 | (4 * v164));
          if (v165 < &v789 || v165 + 1 > &v790 || v165 > v165 + 1)
          {
            goto LABEL_1289;
          }

          v88 = v764;
          if (*v165 > v779)
          {
            goto LABEL_198;
          }

          LODWORD(__N) = v764;
          re = tcx_hm_get_re(a16, a17, 0, v162, v161, v792, v793, v163, v788, &v789, __N);
          v221 = *&re;
          v222 = (&qGains + 8 * v164);
          if (v86 != 3)
          {
            v223 = 0;
            v284 = -4;
            v285 = v222;
            v286 = a16;
            while (v285 >= v222 && v285 + 1 <= v222 + 4 && v285 <= v285 + 1)
            {
              v287 = *v285;
              LODWORD(__Na) = v764;
              v288 = tcx_hm_get_re(v286, a17, *v285, v162, v161, v792, v793, v219, v788, &v789, __Na);
              if (v223)
              {
                v289 = 1.0;
              }

              else
              {
                v289 = 1.05;
              }

              if ((v289 * *&v288) < v221)
              {
                *v746 = v284 + 4;
                v223 = v287;
                v221 = *&v288;
              }

              ++v285;
              v105 = __CFADD__(v284++, 1);
              v286 = a16;
              if (v105)
              {
                goto LABEL_416;
              }
            }

            goto LABEL_1289;
          }

          v223 = *v222;
          LODWORD(__Na) = v764;
          v224 = tcx_hm_get_re(a16, a17, *v222, v162, v161, v792, v793, v219, v788, &v789, __Na);
          if ((*&v224 * 1.05) >= v221)
          {
LABEL_198:
            v89 = a25;
          }

          else
          {
            *v746 = 0;
LABEL_416:
            v290 = v223;
            v88 = v764;
            v89 = a25;
            if (v290 >= 1)
            {
              *__n = 1;
              v291 = __n[1];
              if ((v291 & 0x100) != 0)
              {
                v701 = &NumRatioBits + 68 * (v764 > 255);
                v702 = &v701[4 * (v291 >> 9)];
                v166 = a14 - 10;
                v293 = v744;
                if (v702 < v701 || v702 + 4 > v701 + 68 || v702 > v702 + 4)
                {
                  goto LABEL_1289;
                }

                v292 = *v702 + 1;
              }

              else
              {
                v292 = 9;
                v166 = a14 - 10;
                v293 = v744;
              }

              v789 = v792;
              if (v293 == 2)
              {
                v90 = v292 + 2;
              }

              else
              {
                v90 = v292;
              }

              v790 = v793;
              v791 = v792;
              tcx_hm_modify_envelope(v290, v162, v161, &v789, v788, &v789, v764);
              goto LABEL_203;
            }
          }

          *__n = 0xFFFFFFFF00000000;
          if (v753 > a23 || v746 > v753)
          {
            goto LABEL_1289;
          }

          *v746 = 0;
          v90 = 1;
        }

        else
        {
          v88 = v764;
          v89 = a25;
          if ((__n + 1) > a23 || __n + 1 < __n)
          {
            goto LABEL_1289;
          }

          v90 = 0;
          *__n = 0;
        }

        v166 = a14 - 10;
LABEL_203:
        v719 = v166 - v90;
        v81 = v725;
        goto LABEL_204;
      }
    }

    else
    {
      v67 = v66 * 32768.0 + -0.5;
      v68 = v35;
      if (v67 <= -32768.0)
      {
        LOWORD(v69) = 0x8000;
        goto LABEL_69;
      }
    }

    v69 = v67;
    goto LABEL_69;
  }

  v709 = &a22[a20];
  if (*(v729 + 912) && *v759)
  {
    if (a15 || (v55 = *(a25 + 116904), v56 = *(a25 + 140), v55 >= v56))
    {
      LOWORD(v57) = -1;
    }

    else
    {
      v57 = ((v56 * *(a25 + 111848)) << 8) / (*(a25 + 116908) + *(a25 + 111848) * v55);
    }

    v111 = a14 - 11;
    if (*(a25 + 116900))
    {
      v112 = *(a25 + 116912);
    }

    else
    {
      v112 = -1.0;
    }

    v70 = v753;
    v263 = v57;
    v264 = SearchPeriodicityIndex(v38, a17, 0, 0, v46, v111, v57, &v773, v112);
    v265 = v263;
    v266 = v264;
    ConfigureContextHm(v46, v111, v264, v265, a26);
    v712 = v266;
    if ((v266 & 0x100) != 0)
    {
      v268 = (&NumRatioBits + 68 * (v46 > 255));
      v269 = &v268[v266 >> 9];
      if (v269 < v268 || v269 + 1 > v268 + 17 || v269 > v269 + 1)
      {
        goto LABEL_1289;
      }

      v267 = a14 - 11;
      v119 = *v269;
    }

    else
    {
      v267 = a14 - 11;
      v119 = 8;
    }

    if (a17 < a16)
    {
      goto LABEL_1289;
    }

    if ((v46 & 0x80000000) != 0)
    {
      goto LABEL_1289;
    }

    if ((a17 - a16) >> 2 < v46)
    {
      goto LABEL_1289;
    }

    v270.n128_f32[0] = SQ_gain(a16, (*(a21 + 3344) * v267), v46);
    if (v753 < a22 || v753 > a23 || v46 > 0x4B0 || v46 > (a23 - v753) >> 2)
    {
      goto LABEL_1289;
    }

    v75 = v270.n128_f32[0];
    v271.n128_u32[0] = *(v729 + 896);
    tcx_scalar_quantization(a16, v753, v46, (a25 + 111856), a15, v270, v271, v272, v273);
    v777 = 0;
    v274 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v753, a23, v46, &v774[1], &v774[4], v267, &v777, 0);
    v774[2] = 0;
    v275 = v267;
    v113 = v267 - v119;
    v276 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v753, a23, v46, v774, &v774[3], v113, &v774[2], a26);
    v277 = v777;
    if (v777 <= v274)
    {
      v278 = v274;
    }

    else
    {
      v278 = v777;
    }

    v279 = v774[2];
    v280 = v276;
    if (v774[2] <= v276)
    {
      v281 = v276;
    }

    else
    {
      v281 = v774[2];
    }

    v282 = v278 - (v119 + v281);
    if (v282 > 2)
    {
      goto LABEL_398;
    }

    if (v282 < 0)
    {
      v282 = -v282;
    }

    if (v282 > 2 || v773 <= 2.6)
    {
      v121 = a16;
      if (__n < a22)
      {
        goto LABEL_1289;
      }

      v294 = __n + 1;
      if ((__n + 1) > a23)
      {
        goto LABEL_1289;
      }

      if (__n > v294)
      {
        goto LABEL_1289;
      }

      *__n = 0;
      if (v51 > a23)
      {
        goto LABEL_1289;
      }

      if (v294 > v51)
      {
        goto LABEL_1289;
      }

      *v294 = v712;
      if (v51 > v753)
      {
        goto LABEL_1289;
      }

      *v51 = v774[1];
      v708 = 1;
      v712 = -1;
      v279 = v277;
      v280 = v274;
      v113 = v275;
    }

    else
    {
LABEL_398:
      v121 = a16;
      if (__n < a22)
      {
        goto LABEL_1289;
      }

      v283 = __n + 1;
      if ((__n + 1) > a23)
      {
        goto LABEL_1289;
      }

      if (__n > v283)
      {
        goto LABEL_1289;
      }

      *__n = 1;
      if (v51 > a23)
      {
        goto LABEL_1289;
      }

      if (v283 > v51)
      {
        goto LABEL_1289;
      }

      *v283 = v712;
      if (v51 > v753)
      {
        goto LABEL_1289;
      }

      *v51 = v774[0];
      v774[4] = v774[3];
      v777 = v279;
      v708 = v119 >= 0;
    }

    done = v280;
    v120 = v279;
    if (v279)
    {
      v114 = v279;
    }

    else
    {
      v114 = v280;
    }
  }

  else
  {
    v70 = (v50 + 8);
    if (a17 < v38)
    {
      goto LABEL_1289;
    }

    if ((v46 & 0x80000000) != 0)
    {
      goto LABEL_1289;
    }

    if ((a17 - v38) >> 2 < v46)
    {
      goto LABEL_1289;
    }

    v71.n128_f32[0] = SQ_gain(v38, (*(a21 + 3344) * v755), v46);
    if (v753 < a22 || v753 > a23 || v46 > 0x4B0 || v46 > (a23 - v753) >> 2)
    {
      goto LABEL_1289;
    }

    v75 = v71.n128_f32[0];
    v72.n128_u32[0] = *(v729 + 896);
    tcx_scalar_quantization(a16, v753, v46, (a25 + 111856), a15, v71, v72, v73, v74);
    v777 = 0;
    if (v51)
    {
      if (v51 < a22 || v51 > v753)
      {
        goto LABEL_1289;
      }

      v76 = v753;
      v77 = a23;
      v78 = v46;
      v79 = v51;
    }

    else
    {
      v76 = v753;
      v77 = a23;
      v78 = v46;
      v79 = 0;
    }

    v113 = a14 - 10;
    v114 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v76, v77, v78, v79, &v774[4], v755, &v777, 0);
    v119 = 0;
    v708 = 0;
    done = v114;
    v120 = v777;
    if (v777)
    {
      v114 = v777;
    }

    v712 = -1;
    v121 = a16;
  }

  v756 = v113;
  v295 = v113;
  if ((v46 & (v46 - 1)) != 0)
  {
    v296 = v114;
  }

  else
  {
    v296 = v114 + 1;
  }

  v297 = *(a21 + 3344) * (v295 / v296);
  *(a21 + 3344) = v297;
  v298 = 1.25;
  if (v297 > 1.25 || (v298 = 0.75, v297 < 0.75))
  {
    *(a21 + 3344) = v298;
  }

  if (v70 < a22 || (v299 = *(v729 + 896), v51) && (v51 < a22 || v70 > a23 || v51 > v70))
  {
LABEL_1289:
    __break(0x5519u);
  }

  v707 = v119;
  v300 = 0;
  v301 = v70;
  v302 = 0;
  v303 = *(v729 + 900);
  v304 = a26;
  if (v712 < 0)
  {
    v304 = 0;
  }

  v767 = v304;
  LODWORD(v794[0]) = v120;
  LODWORD(v788[0]) = *v51;
  v305 = v774[4];
  v306 = (v295 * -0.0025) + 2.3;
  v117.n128_u32[0] = 1.0;
  if (v306 < 1.0)
  {
    v306 = 1.0;
  }

  v727 = v306;
  v710 = 1.0 / v306;
  v749 = 1.0 / v295;
  v307 = v756;
  v308 = a23 - v301;
  v310 = a23 < v301 || v46 > 0x4B0;
  v312 = a17 < v121 || v308 >> 2 < v46 || v310;
  v705 = (a17 - v121) >> 2;
  v706 = v308 >> 2;
  if (v705 < v46)
  {
    v313 = 1;
  }

  else
  {
    v313 = v312;
  }

  v314 = 0.25;
  v315 = 0.0;
  v316 = 4;
  v317 = 0.0;
  v761 = v75;
  v318 = 0.0;
  v319 = 0.0;
  do
  {
    v320 = v75;
    if (v303 != 2)
    {
      if (LODWORD(v794[0]))
      {
        if (!v300)
        {
          v115.n128_f64[0] = __exp10((v314 / 10.0));
          v121 = a16;
          v115.n128_f32[0] = v115.n128_f64[0];
          v75 = v75 * v115.n128_f32[0];
          v314 = v314 + v314;
LABEL_477:
          v302 = 1;
          v317 = v320;
          if (v313)
          {
            goto LABEL_1289;
          }

          goto LABEL_482;
        }

        v321 = v75 * v315;
        v302 = 1;
        v317 = v75;
      }

      else
      {
        if (!v302)
        {
          v115.n128_f64[0] = __exp10((v314 / -10.0));
          v121 = a16;
          v115.n128_f32[0] = v115.n128_f64[0];
          v75 = v75 * v115.n128_f32[0];
          v314 = v314 + v314;
          goto LABEL_481;
        }

        v321 = v75 * v317;
        v302 = 1;
        v315 = v75;
      }

      v300 = 1;
      v75 = sqrtf(v321);
      if (v313)
      {
        goto LABEL_1289;
      }

      goto LABEL_482;
    }

    if (LODWORD(v794[0]))
    {
      v318 = (LODWORD(v794[0]) - v307 + 10);
      if (v300)
      {
        v75 = ((v315 * v318) + (v75 * v319)) / (v319 + v318);
        v302 = 1;
        v317 = v320;
        goto LABEL_469;
      }

      v117.n128_f32[0] = v727;
      v75 = v75 * (((((SLODWORD(v794[0]) / 0.96) * v749) + -1.0) * v727) + 1.0);
      goto LABEL_477;
    }

    v319 = (v756 + 10 - v114);
    if (v302)
    {
      v75 = ((v318 * v75) + (v317 * v319)) / (v318 + v319);
      v302 = 1;
      v315 = v320;
LABEL_469:
      v300 = 1;
      if (v313)
      {
        goto LABEL_1289;
      }

      goto LABEL_482;
    }

    v117.n128_f32[0] = v710;
    v75 = v75 * (1.0 - ((((v114 * -0.96) * v749) + 1.0) * v710));
LABEL_481:
    v300 = 1;
    v315 = v320;
    if (v313)
    {
      goto LABEL_1289;
    }

LABEL_482:
    v115.n128_f32[0] = v75;
    v116.n128_u32[0] = v299;
    tcx_scalar_quantization(v121, v753, v764, (a25 + 111856), a15, v115, v116, v117, v118);
    LODWORD(v794[0]) = v303 < 1;
    v307 = v756;
    v114 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v753, a23, v764, v788, &v774[4], v756, v794, v767);
    if (v303 >= 1)
    {
      if ((v322 = v774[4], v323 = v794[0], v774[4] >= v305) && SLODWORD(v794[0]) >= v120 || (!LODWORD(v794[0]) ? (v324 = v120 <= 0) : (v324 = 1), !v324 ? (v325 = v774[4] <= v305) : (v325 = 1), !v325 || !(LODWORD(v794[0]) | v120)))
      {
        *v746 = v788[0];
        v761 = v75;
        done = v114;
        v305 = v322;
        v120 = v323;
      }
    }

    --v316;
    v121 = a16;
  }

  while (v316);
  if (v303 < 1)
  {
    v120 = v794[0];
    v327 = v746;
    *v746 = v788[0];
    done = v114;
    v255 = v764;
    v326 = a22;
    v262 = v753;
  }

  else
  {
    v255 = v764;
    v262 = v753;
    v75 = v761;
    v115.n128_f32[0] = v761;
    v116.n128_u32[0] = v299;
    tcx_scalar_quantization(a16, v753, v764, (a25 + 111856), a15, v115, v116, v117, v118);
    v774[4] = v305;
    v326 = a22;
    v327 = v746;
  }

  v777 = v120;
  if (!v708)
  {
    goto LABEL_527;
  }

  if (v774[4] < v255)
  {
    v328 = v255 - v774[4];
    v329 = &v326[a20 + 8 + v774[4]];
    while (v329 >= v326 && (v329 + 1) <= a23 && v329 <= v329 + 1)
    {
      *v329++ = 0;
      if (!--v328)
      {
        goto LABEL_507;
      }
    }

    goto LABEL_1289;
  }

LABEL_507:
  v774[2] = 1;
  if ((v712 & 0x80000000) == 0)
  {
    v330 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v262, a23, v255, &v774[1], &v774[3], v756, &v774[2], 0);
    if (!v774[2])
    {
      v237 = a16;
      if (done > v330 + v707)
      {
        if (__n < v326)
        {
          goto LABEL_1289;
        }

        if ((__n + 1) > a23)
        {
          goto LABEL_1289;
        }

        if (__n > __n + 1)
        {
          goto LABEL_1289;
        }

        *__n = 0;
        if (v327 < v326 || v262 > a23 || v327 > v262)
        {
          goto LABEL_1289;
        }

        v120 = 0;
        v756 += v707;
        *v327 = v774[1];
        v774[4] = v774[3];
        v777 = 0;
        v712 = -1;
        done = v330;
      }

      goto LABEL_528;
    }

LABEL_527:
    v237 = a16;
    goto LABEL_528;
  }

  v331 = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v262, a23, v255, v774, &v774[3], v756 - v707, &v774[2], a26);
  if (v774[2])
  {
    goto LABEL_527;
  }

  v237 = a16;
  if (done > v331 + v707)
  {
    if (__n < v326)
    {
      goto LABEL_1289;
    }

    v332 = __n + 1;
    if ((__n + 1) > a23)
    {
      goto LABEL_1289;
    }

    if (__n > v332)
    {
      goto LABEL_1289;
    }

    *__n = 1;
    if (v327 < v326)
    {
      goto LABEL_1289;
    }

    if (v262 > a23)
    {
      goto LABEL_1289;
    }

    if (v327 > v262)
    {
      goto LABEL_1289;
    }

    *v327 = v774[0];
    if (v332 > v327)
    {
      goto LABEL_1289;
    }

    v120 = 0;
    v712 = *v332;
    v774[4] = v774[3];
    v777 = 0;
    done = v331;
    v756 -= v707;
  }

LABEL_528:
  v116.n128_f64[0] = v75;
  v117.n128_u32[0] = 1126170624;
  v115.n128_f64[0] = sqrt((160.0 / v255));
  if (v115.n128_f64[0] > v75)
  {
    if (v262 > a23 || v706 < v255 || v705 < v255)
    {
      goto LABEL_1289;
    }

    v75 = v115.n128_f64[0];
    v116.n128_u32[0] = *(v729 + 896);
    v115.n128_f32[0] = v75;
    tcx_scalar_quantization(v237, v262, v255, (a25 + 111856), a15, v115, v116, v117, v118);
    v777 = 1;
    if (v327)
    {
      if (v327 < v326 || v327 > v262)
      {
        goto LABEL_1289;
      }

      if (v712 < 0)
      {
        v333 = 0;
      }

      else
      {
        v333 = a26;
      }

      v334 = v262;
      v335 = a23;
      v336 = v255;
      v337 = v327;
    }

    else
    {
      if (v712 < 0)
      {
        v333 = 0;
      }

      else
      {
        v333 = a26;
      }

      v334 = v262;
      v335 = a23;
      v336 = v255;
      v337 = 0;
    }

    done = ACcontextMapping_encode2_estimate_no_mem_s17_LC(v334, v335, v336, v337, &v774[4], v756, &v777, v333);
    v120 = v777;
    v237 = a16;
  }

  if (v120 && v774[4] < v255)
  {
    v338 = v255 - v774[4];
    v339 = &v326[a20 + 8 + v774[4]];
    while (v339 >= v326 && (v339 + 1) <= a23 && v339 <= v339 + 1)
    {
      *v339++ = 0;
      if (!--v338)
      {
        goto LABEL_551;
      }
    }

    goto LABEL_1289;
  }

LABEL_551:
  if (v255 >= 1)
  {
    v340 = 0;
    v341 = 0;
    v257 = 0;
    do
    {
      v342 = &v709[v341 + 8];
      v343 = &v709[v341 + 9];
      v345 = v342 < v326 || v343 > a23 || v342 > v343;
      v346 = &v237[v341];
      v347 = &v237[v341 + 1];
      if (v345 || v346 < v237 || v347 > a17 || v346 > v347)
      {
        goto LABEL_1289;
      }

      v351 = *v342;
      *v346 = v351;
      if (v351 < 0)
      {
        v351 = -v351;
      }

      v257 += 2 * v351 * v340;
      ++v341;
      ++v340;
    }

    while (v255 != v341);
    v766 = 0;
    v769 = 0;
    goto LABEL_573;
  }

  v750 = 0;
  v257 = 0;
  v766 = 0;
  v769 = 0;
LABEL_586:
  if (!a15)
  {
    AdaptLowFreqDeemph(v237, a17, *(a25 + 122158), v740, v731, v752, v786, v787);
    v237 = a16;
  }

  if (a17 < v237)
  {
    goto LABEL_1289;
  }

  if (v255 > 0x4B0)
  {
    goto LABEL_1289;
  }

  v762 = (a17 - v237) >> 2;
  v747 = v255;
  if (v762 < v255)
  {
    goto LABEL_1289;
  }

  v754 = v262;
  get_gain(__b, v237, v255, &v775);
  if (v357 <= 0.0)
  {
    v358 = v75;
  }

  else
  {
    v358 = v357;
  }

  v359 = a25;
  v360 = v358;
  if (*(a25 + 64) >= 13200)
  {
    v360 = v358;
    if (!*(a25 + 67462))
    {
      if (a22 && ((a22 + 1) > a23 || a22 + 1 < a22))
      {
        goto LABEL_1289;
      }

      v361 = sqrtf(v255 / 160.0);
      v362 = log10((v361 * v358));
      v363 = vcvtms_s32_f32((v362 * 28.0) + 0.5);
      v364 = v363 & ~(v363 >> 31);
      if (v364 >= 127)
      {
        v364 = 127;
      }

      *a22 = v364;
      v365 = __exp10((v364 / 28.0));
      v360 = v365 / v361;
      v359 = a25;
    }
  }

  if (!*(v729 + 914))
  {
    v419 = v752;
    v367 = a16;
    goto LABEL_854;
  }

  v366 = v756 - done;
  v367 = a16;
  if (!*(a25 + 122158))
  {
    v420 = v262;
    v421 = &v262[v255];
    if (v421 > a23 || v421 < a22 || (a23 - v421) < 9)
    {
      goto LABEL_1289;
    }

    v422 = 0;
    v423 = v360;
    do
    {
      if (v423 > v358)
      {
        v424 = &gain_corr_inv_fac;
      }

      else
      {
        v424 = gain_corr_fac;
      }

      *(v421 + 4 * v422) = v423 <= v358;
      v423 = v423 * v424[v422];
      if (v422 < v366)
      {
        v360 = v423;
      }

      ++v422;
    }

    while (v422 != 3);
    v425 = *(v729 + 896);
    if (a15)
    {
      v426 = 0;
    }

    else
    {
      v426 = v786;
    }

    if (a15)
    {
      v427 = 0;
    }

    else
    {
      v427 = v787;
    }

    if (v366 >= 100)
    {
      v428 = 100;
    }

    else
    {
      v428 = v756 - done;
    }

    v429 = 0.5 - (v425 * 0.5);
    v430 = v425 * 0.5;
    if (a15)
    {
      if (v255 < 1)
      {
        v434 = 3;
      }

      else
      {
        v431 = 0;
        if (v366 >= 95)
        {
          v432 = 95;
        }

        else
        {
          v432 = v756 - done;
        }

        v433 = v432 + 5;
        v434 = 3;
        do
        {
          if (v434 >= v428)
          {
            v429 = 0.0;
            v430 = 0.0;
            if (v434 >= v433)
            {
              break;
            }
          }

          v435 = &a16[v431];
          if (&a16[v431] < a16 || (v435 + 1) > a17 || v435 > v435 + 1)
          {
            goto LABEL_1289;
          }

          v436 = *v435;
          if (*v435 != 0.0)
          {
            v437 = &__b[v431];
            v438 = &__b[v431 + 1];
            if (v438 > v786 || v437 > v438)
            {
              goto LABEL_1289;
            }

            v439 = *v437;
            v440 = (v421 + 4 * v434);
            v443 = (v440 + 1) <= a23 && v440 <= v440 + 1 && v440 >= v421;
            if (v439 >= (v436 * v360))
            {
              if (!v443)
              {
                goto LABEL_1289;
              }

              *v440 = 1;
              if (v436 <= 0.0)
              {
                v446 = v430;
              }

              else
              {
                v446 = v429;
              }

              v445 = v436 + v446;
            }

            else
            {
              if (!v443)
              {
                goto LABEL_1289;
              }

              *v440 = 0;
              if (v436 <= 0.0)
              {
                v444 = v429;
              }

              else
              {
                v444 = v430;
              }

              v445 = v436 - v444;
            }

            ++v434;
            *v435 = v445;
          }

          ++v431;
        }

        while (v255 != v431);
        LODWORD(v794[0]) = v434;
        v447 = v428 - 2;
        if (v434 < v428 - 2)
        {
          v448 = 1;
          v449 = a16;
          v450 = __b;
          while (v449 >= v367 && (v449 + 1) <= a17 && v449 <= v449 + 1)
          {
            if (*v449 == 0.0)
            {
              if (v450 < __b || v450 + 1 > v786 || v450 > v450 + 1)
              {
                goto LABEL_1289;
              }

              refine_0(v449, v421, a23, v794, *v450, v360, v425, 1.0);
              v367 = a16;
              v434 = v794[0];
            }

            if (v448 < v255)
            {
              ++v450;
              ++v448;
              ++v449;
              if (v434 < v447)
              {
                continue;
              }
            }

            goto LABEL_761;
          }

          goto LABEL_1289;
        }

LABEL_761:
        v420 = v754;
        if (v434 > 99)
        {
LABEL_852:
          v419 = v752;
          v359 = a25;
          goto LABEL_853;
        }
      }

      v485 = v434 - 100;
      v486 = &v420[v255 + v434];
      while (v486 >= v421 && (v486 + 1) <= a23 && v486 <= v486 + 1)
      {
        *v486++ = 0;
        v105 = __CFADD__(v485++, 1);
        if (v105)
        {
          goto LABEL_852;
        }
      }

      goto LABEL_1289;
    }

    if (v255 < 1)
    {
      v460 = 3;
    }

    else
    {
      v456 = 0;
      if (v366 >= 95)
      {
        v457 = 95;
      }

      else
      {
        v457 = v756 - done;
      }

      v458 = v457 + 5;
      v459 = v255;
      v460 = 3;
      do
      {
        if (v460 >= v428)
        {
          v429 = 0.0;
          v430 = 0.0;
          if (v460 >= v458)
          {
            break;
          }
        }

        v461 = &a16[v456];
        if (&a16[v456] < a16 || (v461 + 1) > a17 || v461 > v461 + 1)
        {
          goto LABEL_1289;
        }

        v462 = *v461;
        if (*v461 != 0.0)
        {
          v463 = (v426 + v456 * 4);
          if ((v426 + v456 * 4) < v426 || v463 + 1 > v427 || v463 > v463 + 1)
          {
            goto LABEL_1289;
          }

          v464 = *v463;
          if (*v463 > 0.5)
          {
            v465 = &__b[v456];
            v466 = &__b[v456 + 1];
            if (v466 > v786 || v465 > v466)
            {
              goto LABEL_1289;
            }

            v467 = *v465;
            v468 = (v421 + 4 * v460);
            v471 = (v468 + 1) <= a23 && v468 <= v468 + 1 && v468 >= v421;
            if (v467 >= (v462 * v360))
            {
              if (!v471)
              {
                goto LABEL_1289;
              }

              *v468 = 1;
              if (v462 <= 0.0)
              {
                v474 = v430;
              }

              else
              {
                v474 = v429;
              }

              v473 = v462 + (v474 * v464);
            }

            else
            {
              if (!v471)
              {
                goto LABEL_1289;
              }

              *v468 = 0;
              if (v462 <= 0.0)
              {
                v472 = v429;
              }

              else
              {
                v472 = v430;
              }

              v473 = v462 - (v472 * v464);
            }

            ++v460;
            *v461 = v473;
          }
        }

        ++v456;
      }

      while (v255 != v456);
      LODWORD(v794[0]) = v460;
      v475 = v428 - 2;
      if (v460 < v428 - 2)
      {
        v476 = 0;
        v477 = 1;
        while (1)
        {
          v478 = (v367 + v476);
          v479 = v367 + v476 + 4;
          v480 = v367 + v476 < v367 || v479 > a17;
          if (v480 || v478 > v479)
          {
            goto LABEL_1289;
          }

          if (*v478 == 0.0)
          {
            v482 = (v426 + v476);
            if ((v426 + v476) < v426 || v482 + 1 > v427 || v482 > v482 + 1)
            {
              goto LABEL_1289;
            }

            v483 = *v482;
            if (*v482 > 0.5)
            {
              v484 = &__b[v476 / 4];
              if (&__b[v476 / 4] < __b || v484 + 1 > v786 || v484 > v484 + 1)
              {
                goto LABEL_1289;
              }

              refine_0(v478, v421, a23, v794, *v484, v360, v425, v483);
              v367 = a16;
              v460 = v794[0];
            }
          }

          if (v477 < v459)
          {
            v476 += 4;
            ++v477;
            if (v460 < v475)
            {
              continue;
            }
          }

          break;
        }
      }

      v420 = v754;
      if (v460 > 99)
      {
        goto LABEL_852;
      }
    }

    v487 = v460 - 100;
    v488 = &v420[v747 + v460];
    while (v488 >= v421 && (v488 + 1) <= a23 && v488 <= v488 + 1)
    {
      *v488++ = 0;
      v105 = __CFADD__(v487++, 1);
      if (v105)
      {
        goto LABEL_852;
      }
    }

    goto LABEL_1289;
  }

  v368 = &v262[v756 - v366];
  if (v368 < a22)
  {
    goto LABEL_1289;
  }

  v369 = 0;
  v370 = v255;
  if (v366 >= 100)
  {
    v371 = 100;
  }

  else
  {
    v371 = v756 - done;
  }

  if (v370 < 1)
  {
    v359 = a25;
  }

  else
  {
    v359 = a25;
    if (v366 >= 1)
    {
      v372 = *(v729 + 896);
      memset(v794, 170, sizeof(v794));
      v367 = a16;
      v373 = 0;
      v369 = 0;
      v374 = 0;
      v375 = -v360;
      v376 = 1;
      do
      {
        v377 = &a16[v373];
        v378 = &a16[v373 + 1];
        if (&a16[v373] < a16 || v378 > a17 || v377 > v378)
        {
          goto LABEL_1289;
        }

        v381 = *v377;
        if (*v377 == 0.0)
        {
          v394 = (v794 + 4 * v374);
          if (v394 < v794 || (v394 + 4) > v795 || v394 > (v394 + 4))
          {
            goto LABEL_1289;
          }

          ++v374;
          *v394 = v376 - 1;
        }

        else
        {
          v382 = &v769[v373];
          if (&v769[v373] < v769)
          {
            goto LABEL_1289;
          }

          if (v382 + 1 > v766)
          {
            goto LABEL_1289;
          }

          if (v382 > v382 + 1)
          {
            goto LABEL_1289;
          }

          v383 = &__b[v373];
          v384 = &__b[v373 + 1];
          if (v384 > v786 || v383 > v384)
          {
            goto LABEL_1289;
          }

          v385 = *(v786 + v373 * 4) * (1 - 2 * *v382);
          v386 = v381 - (v385 * (v372 * 0.5));
          v387 = v381 + (v385 * (0.5 - (v372 * 0.5)));
          v388 = fabsf(*v383 + (v375 * v386));
          v389 = fabsf(*v383 + (v375 * v387));
          v390 = (v368 + 4 * v369);
          v393 = (v390 + 1) <= a23 && v390 <= v390 + 1 && v390 >= v368;
          if (v388 >= v389)
          {
            *v377 = v387;
            if (!v393)
            {
              goto LABEL_1289;
            }

            ++v369;
            *v390 = 1;
          }

          else
          {
            *v377 = v386;
            if (!v393)
            {
              goto LABEL_1289;
            }

            ++v369;
            *v390 = 0;
          }
        }

        if (v376 >= v764)
        {
          break;
        }

        ++v373;
        ++v376;
      }

      while (v369 < v371);
      if (v374 >= 1 && v369 < v371 - 1)
      {
        v395 = v794;
        v396 = 1;
        while (1)
        {
          v397 = v395 + 4;
          v398 = v395 < v794 || v397 > v795;
          if (v398 || v395 > v397)
          {
            goto LABEL_1289;
          }

          v400 = *v395;
          v401 = v786 + 4 * v400;
          v402 = v401 + 4;
          v403 = v401 < v786 || v402 > v787;
          if (v403 || v401 > v402)
          {
            goto LABEL_1289;
          }

          v405 = &__b[v400];
          v406 = v405 + 1;
          v407 = v405 < __b || v406 > v786;
          if (v407 || v405 > v406)
          {
            goto LABEL_1289;
          }

          v409 = ((1.0 - v372) * 0.33) * *(v786 + v400);
          v410 = fabsf(*v405);
          v411 = (v368 + 4 * v369);
          v412 = v411 + 1;
          v415 = (v411 + 1) <= a23 && v411 <= v412 && v411 >= v368;
          if (v410 <= (v409 * v360))
          {
            if (!v415)
            {
              goto LABEL_1289;
            }

            ++v369;
            *v411 = 0;
          }

          else
          {
            if (!v415)
            {
              goto LABEL_1289;
            }

            *v411 = 1;
            v416 = &v769[v400];
            if (v416 < v769)
            {
              goto LABEL_1289;
            }

            if (v416 + 1 > v766)
            {
              goto LABEL_1289;
            }

            if (v416 > v416 + 1)
            {
              goto LABEL_1289;
            }

            v417 = (v411 + 2);
            if (v417 > a23)
            {
              goto LABEL_1289;
            }

            if (v412 > v417)
            {
              goto LABEL_1289;
            }

            *v412 = 1 - *v416;
            v418 = &a16[v400];
            if (v418 < a16 || (v418 + 1) > a17 || v418 > v418 + 1)
            {
              goto LABEL_1289;
            }

            v369 += 2;
            *v418 = v409 * (2 - 4 * *v416);
          }

          if (v396 < v374)
          {
            ++v396;
            v395 = (v395 + 4);
            if (v369 < v371 - 1)
            {
              continue;
            }
          }

          break;
        }
      }
    }
  }

  if (v369 >= v366)
  {
    v419 = v752;
LABEL_853:
    LODWORD(v255) = v764;
    goto LABEL_854;
  }

  v451 = v369;
  v452 = 4 * v369;
  LODWORD(v255) = v764;
  do
  {
    v453 = v368 + v452 + 4;
    if (v368 + v452 < a22 || v453 > a23 || v368 + v452 > v453)
    {
      goto LABEL_1289;
    }

    *(v368 + 4 * v451++) = 0;
    v452 += 4;
  }

  while (v451 < v366);
  v419 = v752;
  v359 = a25;
LABEL_854:
  v489 = a25 + 116900;
  v730 = (v359 + 110608);
  if (*(v359 + 111808) && *(a25 + 116900) && !a19 && *(a25 + 116912) > 0.0)
  {
    if (v731 < v740 || v731 - v740 < 33 || v762 < 32)
    {
      goto LABEL_1289;
    }

    PsychAdaptLowFreqDeemph(v367, v740, 0, 0);
    v367 = a16;
    v419 = v752;
    v359 = a25;
    v489 = a25 + 116900;
  }

  v490 = v419;
  v491 = (*v771 + 17168);
  if (v723 >= ((*(v359 + 122108) * v419) + 0.5))
  {
    v492 = ((*(v359 + 122108) * v419) + 0.5);
  }

  else
  {
    v492 = v723;
  }

  v493 = *(v359 + 64);
  if (v493 < 96000)
  {
    v497 = 8;
    if (v493 >= 13200)
    {
      if (*(v359 + 67462))
      {
        v497 = 8;
      }

      else
      {
        v497 = 6;
      }
    }

    if (a15)
    {
      v498 = *(v489 + 12);
      if (*(*v771 + 17296) && *v759)
      {
        if (__n < a22 || (__n + 1) > a23 || __n > __n + 1)
        {
          goto LABEL_1289;
        }

        LODWORD(v419) = v752;
        v359 = a25;
        if (v498 <= (*__n * 0.3125))
        {
          v498 = *__n * 0.3125;
        }
      }

      else if (v498 <= 0.0)
      {
        v498 = 0.0;
      }

      if (v419 == *(v359 + 140) >> 1)
      {
        v495 = 3;
      }

      else
      {
        v495 = ((v498 + v498) * 6.4) + 4;
      }
    }

    else
    {
      v495 = 8;
    }

    v499 = *v730;
    v500 = v419 / v497;
    v501 = a22 + 1;
    if (a22 == -4)
    {
      tcx_noise_factor(__b, v786, v367, a17, v500, v492, v495, v419, v360, v499, &v776, 0);
    }

    else
    {
      if (v501 < a22 || (a22 + 2) > a23 || v501 > a22 + 2)
      {
        goto LABEL_1289;
      }

      tcx_noise_factor(__b, v786, v367, a17, v500, v492, v495, v752, v360, v499, &v776, a22 + 1);
    }

    v367 = a16;
    if (v501 < a22 || (a22 + 2) > a23 || v501 > a22 + 2)
    {
      goto LABEL_1289;
    }

    if (*v501 == 2)
    {
      v503 = *(v730 + 1);
      if (v503 < 0)
      {
        v503 = -v503;
      }

      v496 = a25;
      if (v503 >= 6)
      {
        *v501 = 1;
        v776 = 0.09375;
        v504 = *(v730 + 1);
        if (v504 >= 0)
        {
          v505 = ~v504;
        }

        else
        {
          v505 = 5;
        }

        *(v730 + 1) = v505;
        goto LABEL_910;
      }
    }

    else
    {
      v496 = a25;
      if (*v501 == 1)
      {
        v502 = *(v730 + 1);
        if (v502 < 0)
        {
          v502 = -v502;
        }

        *(v730 + 1) = v502 + 1;
        goto LABEL_910;
      }
    }

    v730[1] = 0.0;
    goto LABEL_910;
  }

  v776 = 0.0;
  v494 = a22 + 1;
  if (a22 + 1 < a22 || (a22 + 2) > a23 || v494 > a22 + 2)
  {
    goto LABEL_1289;
  }

  *v494 = 0;
  v495 = 8;
  v496 = a25;
LABEL_910:
  v506 = *(v496 + 64);
  if (v506 < 13200 || *(v496 + 67462))
  {
    if (v731 - v740 < 253 || v731 < v740 || (v752 & 0x80000000) != 0 || v762 < v752 || v752 > 2040)
    {
      goto LABEL_1289;
    }

    v507 = v752;
    tcxFormantEnhancement(v786, v740, v367, v752);
    v496 = a25;
    v506 = *(a25 + 64);
  }

  else
  {
    v507 = v752;
  }

  v508 = *v771;
  if (v776 <= 0.0)
  {
    v514 = a17;
  }

  else
  {
    v510 = v714 < v715 || (v714 - v715) < 65;
    if (v506 < 13200)
    {
      if (v510)
      {
        goto LABEL_1289;
      }
    }

    else
    {
      v511 = a16;
      if (v510)
      {
        goto LABEL_1289;
      }

      if (!*(a25 + 67462))
      {
        v507 = v752;
        v512 = v752 / 6;
        v513 = 0.5625;
        goto LABEL_933;
      }
    }

    v507 = v752;
    v512 = v752 / 8;
    get_gain(v715 + 4, v715, 0x10u, 0);
    v511 = a16;
    v513 = v515 + 0.09375;
    if (v513 > 1.0)
    {
      v513 = 1.0;
    }

LABEL_933:
    *v730 = v513;
    v514 = a17;
    tcx_noise_filling(v511, a17, v257, v512, v723, v495, v507, v513, v776, v419, 0, 0);
    v496 = a25;
    v506 = *(a25 + 64);
    v508 = *v771;
  }

  if (v506 >= 13200 && !*(v496 + 67462))
  {
    v527 = a16;
    goto LABEL_950;
  }

  if (v750)
  {
    v516 = v255;
    v517 = 0.000001;
    v518 = a16;
    v519 = a22;
    while (v518 >= a16 && (v518 + 1) <= a17 && v518 <= v518 + 1)
    {
      v520 = *v518++;
      v517 = v517 + (v520 * v520);
      if (!--v516)
      {
        goto LABEL_944;
      }
    }

    goto LABEL_1289;
  }

  v517 = 0.000001;
  v519 = a22;
LABEL_944:
  if (v519 && ((v519 + 1) > a23 || v519 + 1 < v519))
  {
    goto LABEL_1289;
  }

  v521 = v360 * sqrtf(v775 / v517);
  v522 = sqrtf(v255 / 160.0);
  v523 = log10((v522 * v521));
  v524 = vcvtms_s32_f32((v523 * 28.0) + 0.5);
  v525 = v524 & ~(v524 >> 31);
  if (v525 >= 127)
  {
    v525 = 127;
  }

  *v519 = v525;
  v526 = __exp10((v525 / 28.0));
  v508 = *v771;
  v527 = a16;
  *&v526 = v526;
  v360 = *&v526 / v522;
  v507 = v752;
  v496 = a25;
  v514 = a17;
LABEL_950:
  v528 = (v508 + 8552);
  mdct_noiseShaping(v527, v514, v507, v740, v731);
  v724 = v496 + 86172;
  if (!*(v496 + 86172))
  {
    v360 = *(*v771 + 17304) * v360;
  }

  v529 = a24;
  v530 = a16;
  if (v764 >= 1)
  {
    v531 = v255;
    v532 = a16;
    do
    {
      *v532 = *v532 * v360;
      ++v532;
      --v531;
    }

    while (v531);
  }

  v739 = v528[1];
  v777 = v739;
  v732 = v528;
  if (a15 && v507 == *(v496 + 140) >> 1)
  {
    if (v255 <= v507)
    {
      v533 = v507;
    }

    else
    {
      v533 = v255;
    }

    if (*v491)
    {
      v534 = a19 == 0;
    }

    else
    {
      v534 = 1;
    }

    if (v534)
    {
      v535 = v533;
    }

    else
    {
      v535 = v255;
    }

    if (v535 > 0x7F8 || v762 < v535)
    {
      goto LABEL_1289;
    }

    tcxInvertWindowGrouping(*v771, v786, a16, v535, a19, *v759, v739, a24, 0);
    v530 = a16;
    v507 = v752;
    v496 = a25;
    v514 = a17;
  }

  v537 = a11;
  v538 = *v771;
  if (*v491)
  {
    v539 = *v771 + 48 * (*(v496 + 140) == a11) + 17176;
    v540 = v539 + 24 * ((a24 | *v759) == 0);
    if (v540)
    {
      v541 = v540 + 24;
      v542 = v540 < v539 || v541 > *v771 + 48 * (*(v496 + 140) == a11) + 17224;
      if (v542 || v540 > v541)
      {
        goto LABEL_1289;
      }
    }

    *(*v771 + 17272) = v540;
    if (a19)
    {
      ApplyTnsFilter(v540, a18, v530, v514, 0);
      v538 = *v771;
      v530 = a16;
      if (a15)
      {
        if (v507 == *(v496 + 140) >> 1 && (v528[1] || !a24 && !*v528 && !v739) && v507 <= v764)
        {
          v544 = (a16 + 8);
          if (a16 + 8 < a16)
          {
            goto LABEL_1289;
          }

          v545 = v764 >> 1;
          if (v764 >= 2)
          {
            if (a17 < v544)
            {
              goto LABEL_1289;
            }

            v546 = 4 * v545;
            if (a17 - v544 < v546)
            {
              goto LABEL_1289;
            }

            memmove(v786, a16 + 8, 4 * v545);
            v530 = a16;
            if ((v786 + v546) < v786)
            {
              goto LABEL_1289;
            }
          }

          v547 = (v530 + 4 * v545);
          if (v547 < v530)
          {
            goto LABEL_1289;
          }

          v514 = a17;
          if (a17 < v547)
          {
            goto LABEL_1289;
          }

          if (a17 - v547 <= 0x1F)
          {
            goto LABEL_1289;
          }

          v548 = v786[1];
          *v547 = v786[0];
          v547[1] = v548;
          v538 = *v771;
          v496 = a25;
          if (v547 + 2 < v547)
          {
            goto LABEL_1289;
          }

          v537 = a11;
          v507 = v752;
          v529 = a24;
          if (v764 >= 0x12)
          {
            if (a17 < v544)
            {
              goto LABEL_1289;
            }

            v549 = (4 * v545 + 262112) & 0x3FFFC;
            if (v549 > 0x1FC0)
            {
              goto LABEL_1289;
            }

            if (a17 - v544 < v549)
            {
              goto LABEL_1289;
            }

            memmove(v544, &v786[2], (4 * v545 + 262112) & 0x3FFFC);
            v538 = *v771;
            v530 = a16;
            if (&v544[v549] < v544)
            {
              goto LABEL_1289;
            }
          }
        }
      }
    }
  }

  v728 = 56250 * (v718 / 100) / 100000;
  v721 = (v496 + 77426);
  if (!a15 || v507 != *(v496 + 140) >> 1)
  {
    if (*(v496 + 77426) != -2)
    {
      memset(v794, 255, sizeof(v794));
      v585 = v786 + v736 / 2 + v728;
      if (v585 > v787)
      {
        goto LABEL_1289;
      }

      if (v786 > v585)
      {
        goto LABEL_1289;
      }

      if (v762 < v752)
      {
        goto LABEL_1289;
      }

      if ((v787 - v585) >> 2 < v752)
      {
        goto LABEL_1289;
      }

      if ((v752 & 0x8000) != 0)
      {
        goto LABEL_1289;
      }

      v586 = v752;
      edct(a16);
      if (v586 > 1200)
      {
        goto LABEL_1289;
      }

      if (v586 >= 1)
      {
        v587 = sqrtf(v490 / 160.0);
        v588 = v752 & 0x7FFF;
        v589 = v794;
        do
        {
          v590 = *v585++;
          *v589++ = v590 * v587;
          --v588;
        }

        while (v588);
        if (v586 > 640)
        {
          goto LABEL_1289;
        }
      }

      v591 = *v528;
      v592 = v528[1];
      v788[0] = v786;
      v788[1] = v787;
      v788[2] = v786;
      window_ola(v794, v788, a25 + 49548, v586, v592, v591, 0, 0, 0, 0);
      v583 = 0;
      v582 = 1;
      goto LABEL_1071;
    }

    TCX_MDCT_Inverse(v530, v514, v786, v787, v736, v507 - v736, v736);
    v794[0] = v786;
    v794[1] = v787;
    v794[2] = v786;
    v584 = (a25 + 52108);
    tcx_windowing_synthesis_current_frame(v794, (*v771 + 5520), *v771 + 7200, (*v771 + 7228), *v771 + 8068, (*v771 + 8068), *v771 + 8308, v736, *(*v771 + 8560), *(*v771 + 8564), *v759 == 0, v528[1], *(a21 + 3328), *(a21 + 3336), v496 + 1976, v496 + 3512, 0, 0, v782, v784, *v771 + 8308, *v771 + 8548, v537 >> 1, -v722 & (v722 >> 31), *v759, 0, 0);
    goto LABEL_1086;
  }

  v550 = v528[1];
  if (!v528[1])
  {
    if (v529 || *v528)
    {
      TCX_MDCT_Inverse(a16, v514, v786, v787, v736, v507 - v736, v736);
      v794[0] = v786;
      v794[1] = v787;
      v794[2] = v786;
      v584 = (a25 + 52108);
      if (v739)
      {
        v593 = 1;
      }

      else
      {
        v593 = v529 < 1;
      }

      v594 = v593;
      if (v594 & 1 | (*v759 == 0))
      {
        v595 = v739;
      }

      else
      {
        v595 = 2;
      }

      tcx_windowing_synthesis_current_frame(v794, (*v771 + 5520), *v771 + 7200, (*v771 + 7228), *v771 + 8068, (*v771 + 8068), *v771 + 8308, v736, *(*v771 + 8560), *(*v771 + 8564), *v759 == 0, v595, *(a21 + 3328), *(a21 + 3336), v496 + 1976, v496 + 3512, 0, 0, v782, v784, *v771 + 8308, *v771 + 8548, a11 >> 1, -v722 & (v722 >> 31), *v759, 0, 0);
    }

    else
    {
      memset(v794, 255, 0xCA8uLL);
      v668 = v507 >> 1;
      if (v507 <= v764)
      {
        v669 = v764;
      }

      else
      {
        v669 = v507;
      }

      v670 = *(*v771 + 8564);
      LODWORD(v788[0]) = 0;
      vDSP_vfill(v788, v794, 1, 0x32AuLL);
      v671 = v794 + 4 * v668;
      if (v671 < v794)
      {
        goto LABEL_1289;
      }

      v672 = *(v721 + 9);
      v673 = v752 >> 1;
      TCX_MDCT_Inverse(a16, a17, v794 + v668, &v794[405], 0, v673 - (v670 >> 1), v670);
      v674 = a16;
      v736 = v672;
      v675 = v672 >> 1;
      v676 = v786 + 4 * (v672 >> 1);
      if (v676 < v786)
      {
        goto LABEL_1289;
      }

      v677 = v670 >> 1;
      if (((v670 >> 1) + v673) >= 1)
      {
        if (v676 > v787)
        {
          goto LABEL_1289;
        }

        if (v671 > &v794[405])
        {
          goto LABEL_1289;
        }

        v678 = 4 * v668;
        v679 = 4 * (((v670 >> 1) + v673) & 0x7FFFu);
        if (3240 - v678 < v679)
        {
          goto LABEL_1289;
        }

        if (8160 - 4 * v675 < v679)
        {
          goto LABEL_1289;
        }

        memcpy(v676, v671, v679);
        v674 = a16;
        if (&v676[v679] < v676)
        {
          goto LABEL_1289;
        }
      }

      v680 = &v674[v669 >> 1];
      if (v680 < v674)
      {
        goto LABEL_1289;
      }

      TCX_MDCT_Inverse(v680, a17, v794, &v794[405], v670, v673 - v670, v670);
      v788[0] = v794;
      v788[1] = &v794[405];
      v788[2] = v794;
      tcx_windowing_synthesis_current_frame(v788, (*v771 + 5520), *v771 + 7200, (*v771 + 7228), *v771 + 8068, (*v771 + 8068), *v771 + 8308, v670, *(*v771 + 8560), *(*v771 + 8564), 0, 2, *(a21 + 3328), *(a21 + 3336), a25 + 1976, a25 + 3512, 0, 0, v782, v784, *v771 + 8308, *v771 + 8548, v673, -v722 & (v722 >> 31), 1, 0, 0);
      v681 = *(*v771 + 8564);
      if (v681 > 0x3C)
      {
        goto LABEL_1289;
      }

      v682 = *(*v771 + 8560);
      if (v682 > 0xD2)
      {
        goto LABEL_1289;
      }

      v683 = *(*v771 + 7200);
      v684 = *(*v771 + 7208);
      if (v683 > v684)
      {
        goto LABEL_1289;
      }

      if (*(*v771 + 7216) > v683)
      {
        goto LABEL_1289;
      }

      v685 = &v676[4 * v673];
      v686 = &v685[-4 * v677];
      if ((v670 & 0x80000000) != 0)
      {
        goto LABEL_1289;
      }

      if ((v684 - v683) >> 2 < v670)
      {
        goto LABEL_1289;
      }

      if (v686 < v786)
      {
        goto LABEL_1289;
      }

      tcx_windowing_synthesis_past_frame(&v685[-4 * v677], v787, v683, *v771 + 7228, *v771 + 8068, v670, v682, v681, 2);
      if (v686 > v787)
      {
        goto LABEL_1289;
      }

      if ((v787 - v686) >> 2 < v670)
      {
        goto LABEL_1289;
      }

      if ((v670 & 0x8000) != 0)
      {
        goto LABEL_1289;
      }

      if (v670 > 810)
      {
        goto LABEL_1289;
      }

      MEMORY[0x19EAE5DC0](v794, 1, &v685[-4 * v677], 1, &v685[-4 * v677], 1, v670 & 0x7FFF);
      v687 = v794 + 4 * v670;
      if (v687 < v794)
      {
        goto LABEL_1289;
      }

      v688 = &v685[4 * v677];
      if (v688 < v786)
      {
        goto LABEL_1289;
      }

      if (v673 >= 1)
      {
        if (v787 < v688)
        {
          goto LABEL_1289;
        }

        if (v687 > &v794[405])
        {
          goto LABEL_1289;
        }

        v689 = 4 * (v752 >> 1);
        if (3240 - 4 * v670 < v689)
        {
          goto LABEL_1289;
        }

        if (v787 - v688 < v689)
        {
          goto LABEL_1289;
        }

        memcpy(v688, v687, 4 * (v752 >> 1));
        if (&v688[v689] < v688)
        {
          goto LABEL_1289;
        }
      }

      if (v736 >= 1)
      {
        v690 = v736 >> 1;
        v691 = ~v690 + v736;
        v692 = 4 * v690;
        do
        {
          v693 = v786 + v692 + 4;
          v694 = (v786 + v692) < v786 || v693 > v787;
          v695 = v694 || v786 + v692 > v693;
          v696 = v786 + v691;
          v697 = v696 + 1;
          v698 = !v695 && v696 >= v786;
          v699 = !v698 || v697 > v787;
          if (v699 || v696 > v697)
          {
            goto LABEL_1289;
          }

          *v696 = -*(v786 + v690++);
          --v691;
          v692 += 4;
        }

        while (v690 < v736);
      }

      v788[0] = v786;
      v788[1] = v787;
      v788[2] = v786;
      v584 = (a25 + 52108);
      tcx_windowing_synthesis_current_frame(v788, (*v771 + 5520), *v771 + 7200, (*v771 + 7228), *v771 + 8068, (*v771 + 8068), *v771 + 8308, v736, *(*v771 + 8560), *(*v771 + 8564), *v759 == 0, 0, *(a21 + 3328), *(a21 + 3336), a25 + 1976, a25 + 3512, 0, 0, v782, v784, *v771 + 8308, *v771 + 8548, v673, -v722 & (v722 >> 31), *v759, 0, 0);
    }

LABEL_1086:
    v582 = 0;
    v583 = 1;
    goto LABEL_1087;
  }

  v551 = v538;
  memset(v794, 255, 0xCA8uLL);
  v552 = 8560;
  if (v550 == 2)
  {
    v552 = 8564;
  }

  v553 = *(v551 + v552);
  LODWORD(v788[0]) = 0;
  vDSP_vfill(v788, v794, 1, 0x32AuLL);
  v720 = v722 + (v553 >> 1);
  v554 = a16;
  if (v720 > 0x7F8)
  {
    goto LABEL_1289;
  }

  v555 = v752 >> 1;
  v556 = v553 >> 1;
  if (v752 <= v764)
  {
    v557 = v764;
  }

  else
  {
    v557 = v752;
  }

  v558 = v557 >> 1;
  if (v720)
  {
    bzero(v786, 4 * v720);
    v554 = a16;
  }

  v559 = 0;
  v770 = *v771 + 8308;
  v768 = -v722 & (v722 >> 31);
  v763 = a25 + 3512;
  v765 = a25 + 1976;
  v560 = v786 + 4 * v722;
  v758 = *v771 + 8548;
  v716 = v556;
  v561 = (v553 & 0x8000) == 0 && v553 < 811;
  v562 = v561;
  v745 = v562;
  v772 = v794 + 4 * v553;
  __na = 4 * (v752 >> 1);
  v563 = v772 <= &v794[405] && 3240 - 4 * v553 >= (4 * (v752 >> 1));
  v564 = !v563;
  v733 = v564;
  v565 = 1;
  v741 = &v560[4 * v556];
  v757 = &v560[-4 * v556];
  v751 = &v757[4 * v555];
  do
  {
    v566 = v565;
    v567 = &v554[v559 * v558];
    if (v567 < v554)
    {
      goto LABEL_1289;
    }

    TCX_MDCT_Inverse(v567, a17, v794, &v794[405], v553, v555 - v553, v553);
    v788[0] = v794;
    v788[1] = &v794[405];
    v788[2] = v794;
    v568 = *(*v771 + 8560);
    v569 = *(*v771 + 8564);
    if (v566)
    {
      v570 = v739;
      if (v739 != 2)
      {
        v570 = v528[1];
      }

      v571.n128_f32[0] = tcx_windowing_synthesis_current_frame(v788, (*v771 + 5520), *v771 + 7200, (*v771 + 7228), *v771 + 8068, (*v771 + 8068), v770, v553, v568, v569, *v759 == 0, v570, *(a21 + 3328), *(a21 + 3336), v765, v763, 0, 0, v782, v784, v770, v758, v555, v768, *v759, 0, 0);
    }

    else
    {
      tcx_windowing_synthesis_current_frame(v788, (*v771 + 5520), *v771 + 7200, (*v771 + 7228), *v771 + 8068, (*v771 + 8068), v770, v553, v568, v569, 0, 2, *(a21 + 3328), *(a21 + 3336), v765, v763, 0, 0, v782, v784, v770, v758, v555, v768, 1, 0, 0);
      v572 = *(*v771 + 8564);
      if (v572 > 0x3C)
      {
        goto LABEL_1289;
      }

      v573 = *(*v771 + 8560);
      if (v573 > 0xD2)
      {
        goto LABEL_1289;
      }

      v574 = *(*v771 + 7200);
      v575 = *(*v771 + 7208);
      if (v574 > v575 || *(*v771 + 7216) > v574 || (v553 & 0x80000000) != 0 || (v575 - v574) >> 2 < v553 || v751 < v786)
      {
        goto LABEL_1289;
      }

      tcx_windowing_synthesis_past_frame(v751, v787, v574, *v771 + 7228, *v771 + 8068, v553, v573, v572, 2);
    }

    v576 = v559 * v555;
    v577 = &v757[4 * v576];
    if (v577 > v787)
    {
      goto LABEL_1289;
    }

    if (v786 > v577)
    {
      goto LABEL_1289;
    }

    if (v553 > (v787 - v577) >> 2 || !v745)
    {
      goto LABEL_1289;
    }

    MEMORY[0x19EAE5DC0](v794, 1, v577, 1, &v757[4 * v576], 1, v553 & 0x7FFF, v571);
    v554 = a16;
    if (v772 < v794)
    {
      goto LABEL_1289;
    }

    v578 = &v741[4 * v576];
    if (v578 < v786)
    {
      goto LABEL_1289;
    }

    if (v555 >= 1)
    {
      v579 = v733;
      if (v787 < v578)
      {
        v579 = 1;
      }

      if (v579)
      {
        goto LABEL_1289;
      }

      if (v787 - v578 < __na)
      {
        goto LABEL_1289;
      }

      memcpy(v578, v772, __na);
      v554 = a16;
      if (&v578[__na] < v578)
      {
        goto LABEL_1289;
      }
    }

    v565 = 0;
    v559 = 1;
  }

  while ((v566 & 1) != 0);
  v580 = v786 + 4 * v752 + 4 * v722 + 4 * v716;
  if (v580 > v787)
  {
    goto LABEL_1289;
  }

  if (v786 > v580)
  {
    goto LABEL_1289;
  }

  v581 = v736 - v720;
  if (((v736 - v720) & 0x80000000) != 0 || (v787 - v580) >> 2 < v581)
  {
    goto LABEL_1289;
  }

  if (v581 >= 1)
  {
    bzero(v580, 4 * (v736 - v720));
  }

  v582 = 0;
  v583 = 1;
LABEL_1071:
  v584 = (a25 + 52108);
LABEL_1087:
  if (*v584 >= 1 && (v717 == *(v724 + 12) >> 1 && *(v730 + 300) || *v721 == -2))
  {
    if (*(*v771 + 7224))
    {
      v596 = v736 - *(*v771 + 8564);
      if (v596 >= 1)
      {
        v597 = 0;
        v598 = a25 + 49548 + 4 * v728;
        while (1)
        {
          v599 = (v598 + v597);
          v600 = a25 + 4 * v728 + 49552 + v597;
          v601 = v598 + v597 < (a25 + 49548) || v600 > v759;
          v602 = v601 || v599 > v600;
          v603 = v786 + v597;
          v604 = v786 + v597 + 4;
          v605 = !v602 && v603 >= v786;
          v606 = !v605 || v604 > v787;
          if (v606 || v603 > v604)
          {
            goto LABEL_1289;
          }

          *(v786 + v597) = *v599 + *(v786 + v597);
          v597 += 4;
          if (4 * v596 == v597)
          {
            goto LABEL_1116;
          }
        }
      }

      v596 = 0;
LABEL_1116:
      if (v596 < v736)
      {
        v609 = *v771 + 8068;
        v610 = 4 * v596;
        v611 = a25 + 4 * v728 + 49552;
        v612 = ~v596 + v736;
        v613 = v736 - v596;
        v614 = v786;
        v615 = a25 + 49548 + 4 * v728;
        do
        {
          v616 = (v615 + v610);
          v617 = v611 + v610;
          v618 = v615 + v610 < (a25 + 49548) || v617 > v759;
          if (v618 || v616 > v617)
          {
            goto LABEL_1289;
          }

          v620 = (v609 + 4 * v612);
          if (v620 < v609)
          {
            goto LABEL_1289;
          }

          if ((v620 + 1) > *v771 + 8308)
          {
            goto LABEL_1289;
          }

          if (v620 > v620 + 1)
          {
            goto LABEL_1289;
          }

          v621 = (v614 + v610);
          if ((v614 + v610) < v786 || v621 + 1 > v787 || v621 > v621 + 1)
          {
            goto LABEL_1289;
          }

          v614 = (v614 + 4);
          *v621 = *v621 + (*v616 * *v620);
          --v612;
          v615 += 4;
          v611 += 4;
        }

        while (--v613);
      }
    }

    else
    {
      if (a24 < 1)
      {
        v608 = v739;
      }

      else
      {
        v608 = v739;
        if (!v739)
        {
          v608 = 2 * (*v732 == 0);
        }
      }

      v622 = *(*v771 + 8564);
      v623 = v732[1];
      if (v623 != 2 && v608 != 0)
      {
        v623 = v608;
      }

      if (v622 > 0x3C)
      {
        goto LABEL_1289;
      }

      v625 = *(*v771 + 8560);
      if (v625 > 0xD2)
      {
        goto LABEL_1289;
      }

      v626 = *(*v771 + 7200);
      v627 = *(*v771 + 7208);
      if (v626 > v627 || *(*v771 + 7216) > v626 || (v736 & 0x80000000) != 0 || (v627 - v626) >> 2 < v736)
      {
        goto LABEL_1289;
      }

      tcx_windowing_synthesis_past_frame(a21 + 1792, a21 + 3328, v626, *v771 + 7228, *v771 + 8068, v736, v625, v622, v623);
      if (v736)
      {
        v628 = 0;
        do
        {
          v629 = (a21 + v628 + 1792);
          v630 = a21 + v628 + 1796;
          v631 = v629 < a21 + 1792 || v630 > a21 + 3328;
          v632 = v631 || v629 > v630;
          v633 = v786 + v628;
          v634 = v786 + v628 + 4;
          v635 = !v632 && v633 >= v786;
          v636 = !v635 || v634 > v787;
          if (v636 || v633 > v634)
          {
            goto LABEL_1289;
          }

          *(v786 + v628) = *v629 + *(v786 + v628);
          v628 += 4;
        }

        while (4 * v736 != v628);
      }
    }
  }

  if (!v583)
  {
    *(*v771 + 7224) = v582;
    goto LABEL_1222;
  }

  if (a24 <= 0 && v717 == *(v724 + 12) >> 1)
  {
    v638 = v752;
    goto LABEL_1216;
  }

  v639 = v786 + 4 * v752 + -4 * v728;
  if (v639 < v786)
  {
    goto LABEL_1289;
  }

  v640 = a25 + 49548;
  v641 = v736 + v728;
  if ((v736 + v728) >= 1)
  {
    if (v787 < v639)
    {
      goto LABEL_1289;
    }

    v642 = 4 * (v641 & 0x7FFF);
    if (v787 - v639 < v642 || v642 >= 0xA01)
    {
      goto LABEL_1289;
    }

    memcpy((a25 + 49548), v639, v642);
  }

  v643 = v640 + 4 * v728;
  v644 = (v643 + 4 * v736);
  if (v644 > v759 || v640 > v644 || v728 > (v759 - v644) >> 2 || v728 < 0)
  {
    goto LABEL_1289;
  }

  if (v728 >= 1)
  {
    bzero(v644, (4 * v728));
  }

  v645 = *(*v771 + 8564);
  if (v645 > 0x3C)
  {
    goto LABEL_1289;
  }

  v646 = *(*v771 + 8560);
  if (v646 > 0xD2)
  {
    goto LABEL_1289;
  }

  v647 = *(*v771 + 7200);
  v648 = *(*v771 + 7208);
  if (v647 > v648 || *(*v771 + 7216) > v647 || (v736 & 0x80000000) != 0 || (v648 - v647) >> 2 < v736 || v643 < v640)
  {
    goto LABEL_1289;
  }

  v649 = v752;
  v638 = v752;
  tcx_windowing_synthesis_past_frame(v643, v759, v647, *v771 + 7228, *v771 + 8068, v736, v646, v645, *v732);
  if (!*v732)
  {
    if (v728)
    {
      v650 = v728;
      v651 = -1;
      v652 = (v640 + 4 * v641);
      do
      {
        v653 = v786 + v649 + v651;
        v654 = v653 + 1;
        v655 = v653 < v786 || v654 > v787;
        if (v655 || v653 > v654)
        {
          goto LABEL_1289;
        }

        v657 = (*(*v771 + 7200) + 4 * v651);
        v658 = (v657 + 1) > *(*v771 + 7208) || v657 > v657 + 1;
        v659 = !v658 && v657 >= *(*v771 + 7216);
        v660 = v652 + 1;
        v661 = v659 && v652 >= v640;
        v662 = !v661 || v660 > v759;
        if (v662 || v652 > v660)
        {
          goto LABEL_1289;
        }

        *v652++ = *v653 * *v657;
        --v651;
        --v650;
        v649 = v752;
      }

      while (v650);
    }

    *v732 = 4;
  }

LABEL_1216:
  *(*v771 + 7224) = v582;
  v664 = v786 + 4 * v638;
  if (v664 < v786)
  {
    goto LABEL_1289;
  }

  if (v736 >= 1)
  {
    if (v664 > v787)
    {
      goto LABEL_1289;
    }

    v665 = 4 * (v736 & 0x7FFF);
    if (8160 - 4 * v638 < v665)
    {
      goto LABEL_1289;
    }

    if (v665 >= 0x601)
    {
      goto LABEL_1289;
    }

    memcpy((a21 + 1792), v664, 4 * (v736 & 0x7FFF));
    if (a21 + 1792 + v665 < a21 + 1792)
    {
      goto LABEL_1289;
    }
  }

LABEL_1222:
  v666 = v786 + 4 * (v736 >> 1) + -4 * v722;
  if (v666 < v786)
  {
    goto LABEL_1289;
  }

  if (a11 >= 1)
  {
    if (a10 < a9)
    {
      goto LABEL_1289;
    }

    if (v666 > v787)
    {
      goto LABEL_1289;
    }

    v667 = 4 * a11;
    if (v787 - v666 < v667)
    {
      goto LABEL_1289;
    }

    if (a10 - a9 < v667)
    {
      goto LABEL_1289;
    }

    memmove(a9, v666, 4 * a11);
    if (&a9[v667] < a9)
    {
      goto LABEL_1289;
    }
  }

  *(v730 + 311) = v752;
}

void coder_tcx_post(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = v11;
  v63 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v10;
  *&v67[4] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v23 = *(v22 + 140);
  if (v23 >= 1)
  {
    if (v15 < v17)
    {
      goto LABEL_51;
    }

    if (4 * v23 > v15 - v17)
    {
      goto LABEL_51;
    }

    if (v23 >= 0x3C1)
    {
      goto LABEL_51;
    }

    memmove(__b, v17, 4 * v23);
    if (&__b[v23] < __b)
    {
      goto LABEL_51;
    }
  }

  v24 = *(v19 + 17288);
  v25 = *v12;
  v26 = v12[2];
  __C = NAN;
  memset(v66, 255, sizeof(v66));
  if (v23 <= 0)
  {
    v31 = *(v21 + 48);
    *&v66[32] = *(v21 + 32);
    *&v66[48] = v31;
    *&v66[64] = *(v21 + 64);
    v32 = *(v21 + 16);
    *v66 = *v21;
    *&v66[16] = v32;
  }

  else
  {
    v27 = v15 - v17;
    if (v15 < v17)
    {
      goto LABEL_51;
    }

    v28 = 4 * v23;
    if (4 * v23 > v27)
    {
      goto LABEL_51;
    }

    memmove(v17, __b, 4 * v23);
    if (&v17[v28] < v17)
    {
      goto LABEL_51;
    }

    v29 = *(v21 + 48);
    *&v66[32] = *(v21 + 32);
    *&v66[48] = v29;
    *&v66[64] = *(v21 + 64);
    v30 = *(v21 + 16);
    *v66 = *v21;
    *&v66[16] = v30;
    memcpy(&v66[68], __b, 4 * v23);
    if (&v66[v28 + 68] < &v66[68])
    {
      goto LABEL_51;
    }
  }

  v33 = &v66[4 * v23];
  if (v33 < v66)
  {
    goto LABEL_51;
  }

  if (v67 < v33)
  {
    goto LABEL_51;
  }

  if (&v67[-v33] <= 0x43)
  {
    goto LABEL_51;
  }

  v34 = (v21 + 68);
  v35 = *(v33 + 48);
  *(v21 + 32) = *(v33 + 32);
  *(v21 + 48) = v35;
  *(v21 + 64) = *(v33 + 64);
  v36 = *(v33 + 16);
  *v21 = *v33;
  *(v21 + 16) = v36;
  if (v21 + 68 < v21)
  {
    goto LABEL_51;
  }

  if (!*(v22 + 111808))
  {
    v37 = v25 + 4 * (17 * *(v22 + 110864) - 17);
    if (v37 < v26)
    {
      goto LABEL_51;
    }

    vDSP_conv(&v66[4 * v23], 1, (v37 + 64), -1, &__C, 1, 1uLL, 0x11uLL);
    v38 = a9 + 4 * v23;
    v39 = (v38 - 4);
    if (v38 - 4 < a9 || v38 > a10 || v39 > v38)
    {
      goto LABEL_51;
    }

    *(v21 + 1348) = *v39 - __C;
  }

  __C = *v66;
  v40 = (v23 + 16);
  if (v40 > 1216)
  {
    goto LABEL_51;
  }

  if (((v23 + 16) & 0x8000) != 0)
  {
    goto LABEL_51;
  }

  v41 = v33 + 4;
  preemph(&v66[4], v40, &__C, v24);
  if (v33 + 4 < v66)
  {
    goto LABEL_51;
  }

  if (v67 < v41)
  {
    goto LABEL_51;
  }

  if (&v67[-v41] <= 0x3F)
  {
    goto LABEL_51;
  }

  v42 = (v21 + 1416);
  v43 = *(v33 + 20);
  *(v21 + 1352) = *v41;
  *(v21 + 1368) = v43;
  v44 = *(v33 + 52);
  *(v21 + 1384) = *(v33 + 36);
  *(v21 + 1400) = v44;
  if (v21 + 1416 < v21 + 1352)
  {
    goto LABEL_51;
  }

  v45 = (v21 + 1480);
  v46 = *(v33 + 20);
  *v42 = *v41;
  *(v21 + 1432) = v46;
  v47 = *(v33 + 52);
  *(v21 + 1448) = *(v33 + 36);
  *(v21 + 1464) = v47;
  if (v21 + 1480 < v42)
  {
    goto LABEL_51;
  }

  v48 = v33 - 172;
  if (v33 - 172 < v66)
  {
    goto LABEL_51;
  }

  if (v67 < v48)
  {
    goto LABEL_51;
  }

  if (&v67[-v48] <= 0xEF)
  {
    goto LABEL_51;
  }

  v49 = *(v33 + 36);
  *(v21 + 1672) = *(v33 + 20);
  *(v21 + 1688) = v49;
  *(v21 + 1704) = *(v33 + 52);
  v50 = *(v33 - 28);
  *(v21 + 1608) = *(v33 - 44);
  *(v21 + 1624) = v50;
  v51 = *(v33 + 4);
  *(v21 + 1640) = *(v33 - 12);
  *(v21 + 1656) = v51;
  v52 = *(v33 - 92);
  *(v21 + 1544) = *(v33 - 108);
  *(v21 + 1560) = v52;
  v53 = *(v33 - 60);
  *(v21 + 1576) = *(v33 - 76);
  *(v21 + 1592) = v53;
  v54 = *(v33 - 156);
  *v45 = *v48;
  *(v21 + 1496) = v54;
  v55 = *(v33 - 124);
  *(v21 + 1512) = *(v33 - 140);
  *(v21 + 1528) = v55;
  if (v21 + 1720 < v45)
  {
    goto LABEL_51;
  }

  if (v23 == 320 || !*(v22 + 111808))
  {
    if (v23 > 319)
    {
      v60 = (v33 - 1276);
      v61 = (v63 + 64);
      v59 = (v21 + 68);
      v62 = 320;
      goto LABEL_49;
    }

    v56 = &v34[v23];
    if (v56 >= v34)
    {
      v57 = v21 + 1348;
      if ((320 - v23) < 1 || v57 >= v56 && (v58 = 4 * (320 - v23), v58 <= v57 - v56) && v23 < 0x141 && (memmove(v34, v56, 4 * (320 - v23)), &v34[v58 / 4] >= v34))
      {
        v59 = (v57 - 4 * v23);
        if (v59 <= v57 && v34 <= v59 && (v23 & 0x8000) == 0 && (4 * v23) >> 2 >= v23)
        {
          v60 = &v66[4];
          v61 = (v63 + 64);
          v62 = v23;
LABEL_49:
          vDSP_conv(v60, 1, v61, -1, v59, 1, v62, 0x11uLL);
          return;
        }
      }
    }

LABEL_51:
    __break(0x5519u);
  }
}

unint64_t enc_prm(unint64_t result, unsigned int *a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, unint64_t a7, unint64_t a8, __n128 a9, unsigned __int16 *a10, unint64_t a11, __int16 a12)
{
  LODWORD(v19) = result;
  v20 = (a5 + 110824);
  v21 = (a5 + 67462);
  v322[0] = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v22) = *(a5 + 110864);
  v23 = *(a5 + 88);
  v317 = *(a5 + 52108);
  v315 = *(a5 + 36);
  v304 = (a5 + 110824);
  v316 = (a5 + 67462);
  v301 = v23;
  if (*(a5 + 8) == 1)
  {
    v24 = &FrameSizeConfig[6 * *(a5 + 68704)];
    v25 = v24 + 12;
    v26 = v24 < FrameSizeConfig || v25 > inter6_2;
    if (v26 || v24 > v25)
    {
      goto LABEL_655;
    }

    v21 = (a5 + 67462);
    *(a5 + 68716) += *(v24 + 7);
    result = signalling_mode1_tcx20_enc(a5, 1);
    v20 = v304;
    v23 = v301;
  }

  v300 = (a5 + 129336);
  v14 = (a5 + 86028);
  v28 = (a5 + 77424);
  if (!v20[246])
  {
    if (v23)
    {
      if (*(a5 + 8) == 1)
      {
        v29 = *(a5 + 40);
        v35 = *(a5 + 50);
        v24 = v29 + 4 * v35;
        if (v24 < v29)
        {
          goto LABEL_655;
        }

        LOWORD(v13) = v29 + 7812;
        v12 = v24 + 4;
        if (v24 + 4 > v29 + 7812 || v24 > v12)
        {
          goto LABEL_655;
        }

        *v24 = *(a5 + 86172);
        *(v24 + 2) = 2;
        LOWORD(v24) = v35 + 1;
        *(a5 + 50) = v35 + 1;
        v34 = *(a5 + 36) + 2;
      }

      else if (*(a5 + 6) == 2)
      {
        v29 = *(a5 + 40);
        v24 = *(a5 + 50);
        v12 = v29 + 4 * v24;
        if (v12 < v29)
        {
          goto LABEL_655;
        }

        v36 = v29 + 7812;
        v13 = v12 + 4;
        if (v12 + 4 > v29 + 7812)
        {
          goto LABEL_655;
        }

        if (v12 > v13)
        {
          goto LABEL_655;
        }

        *v12 = 65537;
        *(a5 + 50) = v24 + 1;
        LODWORD(v12) = *(a5 + 36);
        *(a5 + 36) = v12 + 1;
        v13 = v29 + 4 * (v24 + 1);
        if (v13 < v29)
        {
          goto LABEL_655;
        }

        if (v13 + 4 > v36)
        {
          goto LABEL_655;
        }

        if (v13 > v13 + 4)
        {
          goto LABEL_655;
        }

        *v13 = 0x10000;
        *(a5 + 50) = v24 + 2;
        *(a5 + 36) = v12 + 2;
        v13 = v29 + 4 * (v24 + 2);
        if (v13 < v29 || v13 + 4 > v36 || v13 > v13 + 4)
        {
          goto LABEL_655;
        }

        *v13 = *(a5 + 86172);
        *(v13 + 2) = 2;
        LOWORD(v24) = v24 + 3;
        *(a5 + 50) = v24;
        v34 = v12 + 4;
      }

      else
      {
        if (*v21 == 1)
        {
          result = a5 + 77424;
          v56 = &unk_19B3791D8;
          v12 = *(a5 + 64);
          LODWORD(v24) = 2;
          while (*(v56 - 2) != v12)
          {
            v13 = (v56 - 4);
            if (v56 - 4 >= acelp_sig_tbl && v56 <= ACB_bits_tbl)
            {
              LODWORD(v24) = v24 + 1;
              v26 = v13 > v56;
              v56 += 4;
              if (!v26)
              {
                continue;
              }
            }

            goto LABEL_655;
          }

          LOWORD(v13) = v24 - 2;
          v281 = &acelp_sig_tbl[(v24 - 2)];
          v12 = (v281 + 1);
          v282 = v281 + 2;
          if (v12 >= acelp_sig_tbl && v282 <= ACB_bits_tbl && v12 <= v282)
          {
            LODWORD(v12) = *v12;
            v285 = *(a5 + 86172);
            *(a5 + 129780) = (v285 - 2) < 3;
            LOWORD(v13) = v24;
            v286 = &acelp_sig_tbl[v24];
            if (v286 >= acelp_sig_tbl && v286 + 1 <= ACB_bits_tbl && v286 <= v286 + 1)
            {
              v287 = (v56 + 4);
              v288 = (8 * *(a5 + 130)) | (((v285 - 2) < 3) << 6) | v285 | 0x80;
              do
              {
                if (*v286 == v288)
                {
                  goto LABEL_656;
                }

                v286 = v287;
                if (v287 < acelp_sig_tbl)
                {
                  break;
                }

                ++v287;
                if (v286 + 1 > ACB_bits_tbl)
                {
                  break;
                }

                LOWORD(v24) = v24 + 1;
              }

              while (v286 <= v287);
            }
          }

          goto LABEL_655;
        }

        v29 = *(a5 + 40);
        v57 = *(a5 + 50);
        v24 = v29 + 4 * v57;
        if (v24 < v29)
        {
          goto LABEL_655;
        }

        LOWORD(v13) = v29 + 7812;
        v12 = v24 + 4;
        if (v24 + 4 > v29 + 7812 || v24 > v12)
        {
          goto LABEL_655;
        }

        *v24 = *(a5 + 86172) + 4;
        *(v24 + 2) = 3;
        LOWORD(v24) = v57 + 1;
        *(a5 + 50) = v57 + 1;
        v34 = *(a5 + 36) + 3;
      }

      v302 = 0;
      *(a5 + 36) = v34;
      goto LABEL_99;
    }

    if (*v21 == 1)
    {
      result = a5 + 77424;
      v13 = &unk_19B3791D8;
      v12 = *(a5 + 64);
      LODWORD(v24) = 2;
      while (*(v13 - 16) != v12)
      {
        if (v13 - 8 >= acelp_sig_tbl && v13 <= ACB_bits_tbl)
        {
          LODWORD(v24) = v24 + 1;
          v26 = v13 - 8 > v13;
          v13 += 8;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_655;
      }

      LODWORD(v12) = v24 - 2;
      v40 = &acelp_sig_tbl[(v24 - 2)];
      v41 = (v40 + 1);
      v42 = v40 + 2;
      if (v41 < acelp_sig_tbl || v42 > ACB_bits_tbl || v41 > v42)
      {
        goto LABEL_655;
      }

      LODWORD(v12) = v24;
      v45 = &acelp_sig_tbl[v24];
      if (v45 < acelp_sig_tbl || v45 + 1 > ACB_bits_tbl || v45 > v45 + 1)
      {
        goto LABEL_655;
      }

      v46 = (v13 + 8);
      LODWORD(v13) = *v41;
      while (*v45 != (v19 | (8 * *(a5 + 130)) | (*(a5 + 129780) << 6) | 0x80))
      {
        v45 = v46;
        if (v46 >= acelp_sig_tbl)
        {
          ++v46;
          if (v45 + 1 <= ACB_bits_tbl)
          {
            LOWORD(v24) = v24 + 1;
            if (v45 <= v46)
            {
              continue;
            }
          }
        }

        goto LABEL_655;
      }

      v29 = *(a5 + 40);
      v47 = v29 + 7812;
      v48 = *(a5 + 50);
      v49 = (v29 + 4 * v48);
      v50 = v49 + 2;
      if (v49 < v29 || v50 > v47 || v49 > v50)
      {
        goto LABEL_655;
      }

      *v49 = v24 - v12;
      v49[1] = v13;
      *(a5 + 50) = v48 + 1;
      LODWORD(v12) = *(a5 + 36) + v13;
      *(a5 + 36) += v13;
      v24 = v29 + 4 * (v48 + 1);
      v13 = v24 + 4;
      v53 = v24 < v29 || v13 > v47;
      v54 = v53 || v24 > v13;
      v23 = v301;
      if (v54)
      {
        goto LABEL_655;
      }

      v28 = (a5 + 77424);
      v55 = 0x10000;
      goto LABEL_671;
    }

    v29 = *(a5 + 40);
    v37 = *(a5 + 50);
    v24 = v29 + 4 * v37;
    if (v24 < v29)
    {
      goto LABEL_655;
    }

    LOWORD(v13) = v29 + 7812;
    v12 = v24 + 4;
    if (v24 + 4 > v29 + 7812 || v24 > v12)
    {
      goto LABEL_655;
    }

    *v24 = v19;
    *(v24 + 2) = 3;
    LOWORD(v24) = v37 + 1;
    *(a5 + 50) = v37 + 1;
    v38 = *(a5 + 36);
    v34 = v38 + 3;
    *(a5 + 36) = v38 + 3;
    goto LABEL_52;
  }

  v29 = *(a5 + 40);
  v24 = *(a5 + 50);
  v30 = (v29 + 4 * v24);
  if (v30 < v29)
  {
    goto LABEL_655;
  }

  v12 = v29 + 7812;
  v13 = (v30 + 2);
  if ((v30 + 2) > v29 + 7812)
  {
    goto LABEL_655;
  }

  if (v30 > v13)
  {
    goto LABEL_655;
  }

  *v30 = v23 == 2;
  v30[1] = 1;
  *(a5 + 50) = v24 + 1;
  v31 = *(a5 + 36);
  *(a5 + 36) = v31 + 1;
  v13 = v29 + 4 * (v24 + 1);
  if (v13 < v29 || v13 + 4 > v12 || v13 > v13 + 4)
  {
    goto LABEL_655;
  }

  v32 = *(a5 + 3536);
  if (v32 <= 3)
  {
    v33 = 0x2000100010000uLL >> (16 * v32);
  }

  else
  {
    v33 = 3;
  }

  *v13 = v33;
  *(v13 + 2) = 2;
  LOWORD(v24) = v24 + 2;
  *(a5 + 50) = v24;
  v34 = v31 + 3;
  while (1)
  {
    *(a5 + 36) = v34;
    if (v23)
    {
      v302 = 0;
LABEL_99:
      v303 = v23;
    }

    else
    {
LABEL_52:
      v302 = 1;
      if (v14[1] < 1)
      {
        v39 = 0;
        v303 = 0;
        goto LABEL_120;
      }

      v303 = 0;
    }

    v12 = v29 + 4 * v24;
    if (v12 < v29)
    {
      goto LABEL_655;
    }

    v13 = v12 + 4;
    if (v12 + 4 > v29 + 7812 || v12 > v13)
    {
      goto LABEL_655;
    }

    v58 = v317 || v23 == 2;
    v59 = v58;
    *v12 = v59;
    *(v12 + 2) = 1;
    LOWORD(v13) = v24 + 1;
    *(a5 + 50) = v24 + 1;
    *(a5 + 36) = ++v34;
    if (v23)
    {
      LODWORD(v12) = *v28;
      if (v12 == 2)
      {
        v60 = 2;
      }

      else if (v12 == 3)
      {
        v60 = 2;
      }

      else
      {
        LODWORD(v12) = 0;
        v60 = 1;
      }

      v13 = v29 + 4 * v13;
      if (v13 < v29 || v13 + 4 > v29 + 7812 || v13 > v13 + 4)
      {
        goto LABEL_655;
      }

      *v13 = v12;
      *(v13 + 2) = v60;
      LOWORD(v24) = v24 + 2;
      *(a5 + 50) = v24;
      v34 += v60;
      *(a5 + 36) = v34;
      v39 = 1;
    }

    else
    {
      v39 = 0;
      LOWORD(v24) = v24 + 1;
    }

LABEL_120:
    v296 = v28;
    v61 = (a5 + 122116);
    if (*(a5 + 122164))
    {
      v12 = a5 + 122160;
      LOWORD(v13) = a5 - 8200;
      if (a5 + 122160 > (a5 + 122872))
      {
        goto LABEL_655;
      }

      v62 = *v12;
      v12 = v29 + 7812;
      if (v62 < 2)
      {
        v13 = v29 + 4 * v24;
        if (v13 < v29 || v13 + 4 > v12 || v13 > v13 + 4)
        {
          goto LABEL_655;
        }

        v63 = v24;
        *v13 = 0;
        v68 = 1;
        v67 = 1;
        LODWORD(v13) = 1;
        v69 = v304;
        v61 = (a5 + 122116);
      }

      else
      {
        v13 = v29 + 4 * v24;
        if (v13 < v29)
        {
          goto LABEL_655;
        }

        if (v13 + 4 > v12)
        {
          goto LABEL_655;
        }

        if (v13 > v13 + 4)
        {
          goto LABEL_655;
        }

        *v13 = 65537;
        *(a5 + 50) = v24 + 1;
        *(a5 + 36) = v34 + 1;
        v13 = v29 + 4 * (v24 + 1);
        v61 = (a5 + 122116);
        if (v13 < v29 || v13 + 4 > v12 || v13 > v13 + 4)
        {
          goto LABEL_655;
        }

        v63 = (v24 + 1);
        v64 = *(a5 + 122172) - *(a5 + 122168);
        v65 = v64 - 8;
        v66 = v64 + 8;
        if (v65 < 0xFFFFFFF1)
        {
          v66 = 0;
        }

        *v13 = v66;
        LODWORD(v13) = 5;
        v67 = 2;
        v68 = 4;
        v69 = v304;
      }

      *(v29 + 4 * v63 + 2) = v68;
      LOWORD(v24) = v24 + v67;
      *(a5 + 50) = v24;
      v34 += v13;
      *(a5 + 36) = v34;
    }

    else
    {
      v69 = v304;
    }

    LODWORD(v12) = *v61;
    if (!*v61)
    {
      goto LABEL_152;
    }

    if (v19)
    {
      v70 = v39;
    }

    else
    {
      v70 = 1;
    }

    if ((v70 & 1) != 0 || !*(a5 + 52108) && !*(a5 + 18608) || v61[10])
    {
      v61[1] = 0;
    }

    LODWORD(v12) = v302;
    if (v302)
    {
      v12 = v29 + 4 * v24;
      if (v12 < v29)
      {
        goto LABEL_655;
      }

      v13 = v12 + 4;
      if (v12 + 4 > v29 + 7812 || v12 > v13)
      {
        goto LABEL_655;
      }

      *v12 = v61[1];
      LOWORD(v13) = 1;
      *(v12 + 2) = 1;
      v71 = v24 + 1;
      *(a5 + 50) = v24 + 1;
      *(a5 + 36) = ++v34;
    }

    else
    {
LABEL_152:
      v71 = v24;
    }

    v297 = v34;
    v61[10] = 0;
    v72 = v39 ^ 1;
    if (!*v69)
    {
      v72 = 1;
    }

    v318 = v14;
    v298 = v22;
    if ((v72 & 1) == 0)
    {
      LOWORD(v24) = a4 + 24;
      if (a4 + 24 >= a4)
      {
        v12 = *a4;
        v24 = *a4 + 4;
        if (v24 <= *(a4 + 8) && v12 <= v24)
        {
          v73 = *(a4 + 16);
          if (v12 >= v73)
          {
            v74 = 0;
            LODWORD(v12) = *v12;
            *a4 = v24;
            LOWORD(v13) = 7812;
            while (1)
            {
              v75 = v24 + 4 > *(a4 + 8) || v24 > v24 + 4;
              if (v75 || v24 < v73)
              {
                break;
              }

              v77 = *(a5 + 40);
              v78 = *(a5 + 50);
              v79 = (v77 + 4 * v78);
              result = (v79 + 2);
              v80 = v79 < v77 || result > v77 + 7812;
              if (v80 || v79 > result)
              {
                break;
              }

              v82 = lsf_numbits[v74];
              *v79 = *v24;
              v79[1] = v82;
              *(a5 + 50) = v78 + 1;
              *(a5 + 36) += v82;
              v83 = *a4;
              v24 = *a4 + 4;
              *a4 = v24;
              v74 += 2;
              if (v74 == 6)
              {
                if (!v12)
                {
                  LOWORD(v24) = 13;
                  goto LABEL_292;
                }

                v12 = *(a4 + 8);
                if (v83 + 8 <= v12 && v24 <= v83 + 8 && v24 >= v73)
                {
                  v12 = *(a5 + 40);
                  v84 = *(a5 + 50);
                  v85 = (v12 + 4 * v84);
                  if (v85 >= v12)
                  {
                    v13 = v12 + 7812;
                    v12 = (v85 + 2);
                    if ((v85 + 2) <= v13 && v85 <= v12)
                    {
                      *v85 = *v24;
                      v85[1] = 2;
                      *(a5 + 50) = v84 + 1;
                      *(a5 + 36) += 2;
                      *a4 += 4;
                      LOWORD(v24) = 15;
                      goto LABEL_292;
                    }
                  }
                }

                goto LABEL_655;
              }
            }
          }
        }
      }

      goto LABEL_655;
    }

    v86 = v69[240];
    if (v86 == 1)
    {
      break;
    }

    if (v86)
    {
      goto LABEL_291;
    }

    v87 = *a4;
    v24 = *(a4 + 16);
    if (*a4 >= v24)
    {
      LODWORD(v22) = 0;
      v88 = 0;
      LOWORD(v305) = 0;
      LODWORD(v24) = 0;
      if (v301 == 1)
      {
        v89 = 1;
      }

      else
      {
        v89 = 2;
      }

      v308 = v89;
      v90 = *(a4 + 8);
      v312 = v90;
      v306 = a3;
      while (1)
      {
        if (!v22)
        {
          goto LABEL_202;
        }

        v91 = (v87 + 4 * v88);
        v12 = (v91 + 1);
        if (v91 < v87 || v12 > v90 || v91 > v12)
        {
          goto LABEL_655;
        }

        ++v88;
        v94 = *v91;
        if (v94)
        {
          LODWORD(v12) = 0;
        }

        else
        {
LABEL_202:
          v12 = v87 + 4 * v88;
          v95 = v12 + 4;
          if (v12 < v87 || v95 > v90 || v12 > v95)
          {
            goto LABEL_655;
          }

          LOWORD(v94) = 0;
          ++v88;
          v305 = *v12;
          LODWORD(v12) = 1;
        }

        v98 = (v87 + 4 * v88);
        if (v98 < v87)
        {
          goto LABEL_655;
        }

        v13 = (v98 + 1);
        if ((v98 + 1) > v90)
        {
          goto LABEL_655;
        }

        if (v98 > v13)
        {
          goto LABEL_655;
        }

        v100 = *v98;
        v99 = v98 + 2;
        a4 = v100;
        if (v99 > v90 || v13 > v99)
        {
          goto LABEL_655;
        }

        v101 = v88 + 2;
        v102 = *v13;
        if (v22)
        {
          if (v303 == 1 || v22 != 1)
          {
            v88 = a4 + v101 + v102;
            goto LABEL_260;
          }

          v103 = *(a5 + 40);
          v13 = *(a5 + 50);
          v104 = (v103 + 4 * v13);
          if (v104 < v103 || (v104 + 2) > v103 + 7812 || v104 > v104 + 2)
          {
            goto LABEL_655;
          }

          v105 = *(a5 + 50);
          *v104 = v94;
          LODWORD(v13) = 1;
          v104[1] = 1;
          v106 = v105 + 1;
          *(a5 + 50) = v105 + 1;
          ++*(a5 + 36);
        }

        else
        {
          LODWORD(v13) = 0;
          v103 = *(a5 + 40);
          v106 = *(a5 + 50);
        }

        v107 = v13 + v24;
        if (v12)
        {
          v24 = v103 + 4 * v106;
          if (v24 < v103)
          {
            goto LABEL_655;
          }

          LOWORD(v13) = v103 + 7812;
          v12 = v24 + 4;
          if (v24 + 4 > v103 + 7812 || v24 > v12)
          {
            goto LABEL_655;
          }

          *v24 = v305;
          *(v24 + 2) = 8;
          *(a5 + 50) = ++v106;
          LOWORD(v24) = *(a5 + 36) + 8;
          *(a5 + 36) = v24;
          v107 += 8;
        }

        v12 = v103 + 4 * v106;
        if (v12 < v103)
        {
          goto LABEL_655;
        }

        v24 = v103 + 7812;
        v13 = v12 + 4;
        if (v12 + 4 > v103 + 7812 || v12 > v13)
        {
          goto LABEL_655;
        }

        v108 = (a4 - 6) >= 0xFFFFFFFC ? a4 - 2 : 3;
        *v12 = v108;
        *(v12 + 2) = 2;
        *(a5 + 50) = v106 + 1;
        LODWORD(v12) = *(a5 + 36);
        *(a5 + 36) = v12 + 2;
        v13 = v103 + 4 * (v106 + 1);
        if (v13 < v103 || v13 + 4 > v24 || v13 > v13 + 4)
        {
          goto LABEL_655;
        }

        if ((v102 - 6) >= 0xFFFFFFFC)
        {
          v109 = v102 - 2;
        }

        else
        {
          v109 = 3;
        }

        *v13 = v109;
        *(v13 + 2) = 2;
        *(a5 + 50) = v106 + 2;
        LOWORD(v24) = v12 + 4;
        *(a5 + 36) = v12 + 4;
        v310 = v107;
        if (a4 < 7)
        {
          if (a4 < 5)
          {
            if (a4)
            {
              LODWORD(v19) = 0;
              goto LABEL_249;
            }

            v19 = 3;
          }

          else
          {
            v19 = (a4 - 4);
          }
        }

        else
        {
          v19 = (a4 - 3);
        }

        result = unary_code(v19, a5);
LABEL_249:
        if (v102 < 7)
        {
          if (v102 < 5)
          {
            if (v102)
            {
              LODWORD(v110) = 0;
              goto LABEL_257;
            }

            v110 = 3;
          }

          else
          {
            v110 = (v102 - 4);
          }
        }

        else
        {
          v110 = (v102 - 3);
        }

        result = unary_code(v110, a5);
LABEL_257:
        v111 = v87 + 4 * v101;
        if (v111 < v87)
        {
          goto LABEL_655;
        }

        a3 = (4 * a4);
        result = unpack4bits(a3, v111, v312, a5);
        a4 = (a4 + v101);
        v112 = v87 + 4 * a4;
        if (v112 < v87)
        {
          goto LABEL_655;
        }

        result = unpack4bits((4 * v102), v112, v312, a5);
        v90 = v312;
        v14 = v318;
        v88 = v102 + a4;
        LODWORD(v24) = a3 + 4 * v102 + v310 + v19 + v110 + 4;
LABEL_260:
        a3 = v306;
        LODWORD(v22) = v22 + 1;
        if (v308 == v22)
        {
          goto LABEL_292;
        }
      }
    }

    while (1)
    {
LABEL_655:
      __break(0x5519u);
LABEL_656:
      v29 = *(a5 + 40);
      v289 = v29 + 7812;
      v48 = *(a5 + 50);
      v290 = (v29 + 4 * v48);
      v291 = v290 + 2;
      if (v290 >= v29 && v291 <= v289 && v290 <= v291)
      {
        *v290 = v24 - v13;
        v290[1] = v12;
        *(a5 + 50) = v48 + 1;
        LODWORD(v12) = *(a5 + 36) + v12;
        *(a5 + 36) = v12;
        v24 = v29 + 4 * (v48 + 1);
        v13 = v24 + 4;
        v294 = v24 < v29 || v13 > v289;
        v295 = v294 || v24 > v13;
        v23 = v301;
        if (!v295)
        {
          break;
        }
      }
    }

    v28 = result;
    v55 = 65537;
LABEL_671:
    *v24 = v55;
    LOWORD(v24) = v48 + 2;
    *(a5 + 50) = v48 + 2;
    v34 = v12 + 1;
    v315 = 3;
  }

  LOWORD(v13) = a10;
  LODWORD(v12) = a11;
  if (v19 == 2 && v69[249] == 16000)
  {
    v114 = v302;
  }

  else
  {
    v114 = 0;
  }

  v115 = *a4;
  v24 = *(a4 + 16);
  if (v114 == 1)
  {
    if (v115 < v24)
    {
      goto LABEL_655;
    }

    if (a12 >= 1)
    {
      LOWORD(v24) = 0;
      v116 = *(a4 + 8);
      v117 = a12;
      v118 = a10;
      result = v297;
      while (1)
      {
        v119 = (v115 + 1) > v116 || v115 > v115 + 1;
        v120 = (v118 + 1);
        v121 = !v119 && v118 >= a10;
        v122 = !v121 || v120 > a11;
        if (v122 || v118 > v120)
        {
          goto LABEL_655;
        }

        v124 = (v29 + 4 * v71);
        if (v124 < v29 || (v124 + 2) > v29 + 7812 || v124 > v124 + 2)
        {
          goto LABEL_655;
        }

        v125 = *v118;
        *v124 = *v115;
        v124[1] = v125;
        *(a5 + 50) = ++v71;
        result = (result + v125);
        *(a5 + 36) = result;
        v126 = *v118++;
        LOWORD(v24) = v126 + v24;
        ++v115;
        if (!--v117)
        {
          goto LABEL_292;
        }
      }
    }

LABEL_291:
    LOWORD(v24) = 0;
    goto LABEL_292;
  }

  if (v115 < v24)
  {
    goto LABEL_655;
  }

  v267 = *(a4 + 8);
  v268 = v316[632];
  if (a12 >= 1)
  {
    LOWORD(v24) = 0;
    v269 = a12;
    result = v29 + 7812;
    v270 = a10;
    v271 = v297;
    v272 = *a4;
    while (1)
    {
      v115 = v272 + 1;
      v273 = (v272 + 1) > v267 || v272 > v115;
      v274 = (v270 + 1);
      v275 = !v273 && v270 >= a10;
      v276 = !v275 || v274 > a11;
      if (v276 || v270 > v274)
      {
        goto LABEL_655;
      }

      v278 = (v29 + 4 * v71);
      if (v278 < v29 || (v278 + 2) > result || v278 > v278 + 2)
      {
        goto LABEL_655;
      }

      v279 = *v270;
      *v278 = *v272;
      v278[1] = v279;
      *(a5 + 50) = ++v71;
      v271 += v279;
      *(a5 + 36) = v271;
      v280 = *v270++;
      LOWORD(v24) = v24 + v280;
      ++v272;
      if (!--v269)
      {
        goto LABEL_631;
      }
    }
  }

  LOWORD(v24) = 0;
  v271 = v34;
LABEL_631:
  if (v19 != 2 && !v303 && v268)
  {
    v12 = (v115 + 1);
    if ((v115 + 1) > v267)
    {
      goto LABEL_655;
    }

    if (v115 > v12)
    {
      goto LABEL_655;
    }

    v12 = v29 + 4 * v71;
    if (v12 < v29)
    {
      goto LABEL_655;
    }

    LOWORD(v13) = v29 + 7812;
    if (v12 + 4 > v29 + 7812 || v12 > v12 + 4)
    {
      goto LABEL_655;
    }

    *v12 = *v115;
    *(v12 + 2) = 5;
    *(a5 + 50) = v71 + 1;
    *(a5 + 36) = v271 + 5;
    LOWORD(v24) = v24 + 5;
  }

LABEL_292:
  v309 = (a5 + 116656);
  LOWORD(v127) = v302;
  if (v302)
  {
    v128 = &ACELP_BPF_BITS[v316[645]];
    v12 = ACELP_NRG_BITS;
    if (v128 >= ACELP_NRG_BITS || v128 < ACELP_BPF_BITS)
    {
      goto LABEL_655;
    }

    v129 = *v128;
    if (v129)
    {
      v13 = *(a5 + 40);
      v12 = *(a5 + 50);
      v130 = (v13 + 4 * v12);
      if (v130 < v13)
      {
        goto LABEL_655;
      }

      v131 = v13 + 7812;
      v13 = (v130 + 2);
      if ((v130 + 2) > v131 || v130 > v13)
      {
        goto LABEL_655;
      }

      LODWORD(v13) = *v309;
      *v130 = *v309;
      v130[1] = v129;
      *(a5 + 50) = v12 + 1;
      *(a5 + 36) += v129;
    }

    v132 = &ACELP_NRG_BITS[v316[646]];
    v12 = ACELP_LTP_BITS_SFR;
    if (v132 >= ACELP_LTP_BITS_SFR || v132 < ACELP_NRG_BITS)
    {
      goto LABEL_655;
    }

    v127 = *v132;
    if (v127)
    {
      if ((a2 + 1) > a3)
      {
        goto LABEL_655;
      }

      if (a2 + 1 < a2)
      {
        goto LABEL_655;
      }

      v13 = *(a5 + 40);
      v12 = *(a5 + 50);
      v133 = (v13 + 4 * v12);
      if (v133 < v13)
      {
        goto LABEL_655;
      }

      v134 = v13 + 7812;
      v13 = (v133 + 2);
      if ((v133 + 2) > v134 || v133 > v13)
      {
        goto LABEL_655;
      }

      LODWORD(v13) = *a2;
      *v133 = *a2;
      v133[1] = v127;
      *(a5 + 50) = v12 + 1;
      *(a5 + 36) += v127;
      v127 = 1;
    }

    if (v298 >= 1)
    {
      LOWORD(v135) = 0;
      v12 = a5 + 68776;
      v13 = a5 + 68796;
      v136 = a5 + 68766;
      v137 = &ACELP_LTP_BITS_SFR[5 * v316[648]];
      result = PulseConfTable;
      do
      {
        v138 = &v137[v135];
        if (v138 >= v137 + 5 || v138 < v137)
        {
          goto LABEL_655;
        }

        v140 = *v138;
        if (v140)
        {
          v141 = &a2[v127];
          if (v141 < a2)
          {
            goto LABEL_655;
          }

          if ((v141 + 1) > a3)
          {
            goto LABEL_655;
          }

          if (v141 > v141 + 1)
          {
            goto LABEL_655;
          }

          v142 = *(a5 + 40);
          v22 = *(a5 + 50);
          v143 = (v142 + 4 * v22);
          if (v143 < v142)
          {
            goto LABEL_655;
          }

          a4 = v142 + 7812;
          if ((v143 + 2) > v142 + 7812 || v143 > v143 + 2)
          {
            goto LABEL_655;
          }

          ++v127;
          *v143 = *v141;
          v143[1] = v140;
          *(a5 + 50) = v22 + 1;
          *(a5 + 36) += v140;
        }

        if (v316[650] == 2)
        {
          v144 = &a2[v127];
          if (v144 < a2)
          {
            goto LABEL_655;
          }

          if ((v144 + 1) > a3)
          {
            goto LABEL_655;
          }

          if (v144 > v144 + 1)
          {
            goto LABEL_655;
          }

          v22 = *(a5 + 40);
          v145 = *(a5 + 50);
          v146 = (v22 + 4 * v145);
          if (v146 < v22)
          {
            goto LABEL_655;
          }

          v147 = v22 + 7812;
          v22 = (v146 + 2);
          if ((v146 + 2) > v147 || v146 > v22)
          {
            goto LABEL_655;
          }

          ++v127;
          *v146 = *v144;
          v146[1] = 1;
          *(a5 + 50) = v145 + 1;
          ++*(a5 + 36);
        }

        v135 = v135;
        v148 = (v12 + 4 * v135);
        if (v148 < v12 || (v148 + 1) > v13 || v148 > v148 + 1)
        {
          goto LABEL_655;
        }

        v149 = &PulseConfTable[19 * *v148];
        v150 = v149 + 19;
        v151 = v149 < PulseConfTable || v150 > sidparts_encoder_noise_est;
        if (v151 || v149 > v150)
        {
          goto LABEL_655;
        }

        v153 = *v149;
        v154 = *v149 >> 4;
        v155 = v127;
        if (v154 >= 1)
        {
          v155 = v127;
          do
          {
            v22 = &a2[v155];
            v156 = v22 + 4;
            v157 = v22 < a2 || v156 > a3;
            if (v157 || v22 > v156)
            {
              goto LABEL_655;
            }

            v19 = *(a5 + 40);
            a4 = *(a5 + 50);
            v159 = (v19 + 4 * a4);
            v160 = (v159 + 2);
            v161 = v159 < v19 || v160 > v19 + 7812;
            if (v161 || v159 > v160)
            {
              goto LABEL_655;
            }

            a4 = *(a5 + 50);
            ++v155;
            *v159 = *v22;
            v159[1] = 16;
            *(a5 + 50) = a4 + 1;
            LOWORD(v22) = *(a5 + 36) + 16;
            *(a5 + 36) = v22;
          }

          while (--v154);
        }

        v163 = v153 & 0xF;
        if (v163)
        {
          v164 = &a2[v155];
          if (v164 < a2)
          {
            goto LABEL_655;
          }

          if ((v164 + 1) > a3)
          {
            goto LABEL_655;
          }

          if (v164 > v164 + 1)
          {
            goto LABEL_655;
          }

          v165 = *(a5 + 40);
          v22 = *(a5 + 50);
          v166 = (v165 + 4 * v22);
          if (v166 < v165)
          {
            goto LABEL_655;
          }

          a4 = v165 + 7812;
          if ((v166 + 2) > v165 + 7812 || v166 > v166 + 2)
          {
            goto LABEL_655;
          }

          *v166 = *v164;
          v166[1] = v163;
          *(a5 + 50) = v22 + 1;
          *(a5 + 36) += v163;
        }

        v167 = (v136 + 2 * v135);
        if (v167 < v136)
        {
          goto LABEL_655;
        }

        if ((v167 + 1) > v12)
        {
          goto LABEL_655;
        }

        if (v167 > v167 + 1)
        {
          goto LABEL_655;
        }

        v168 = &ACELP_GAINS_BITS[*v167];
        if (v168 >= ACELP_LTP_MODE)
        {
          goto LABEL_655;
        }

        if (v168 < ACELP_GAINS_BITS)
        {
          goto LABEL_655;
        }

        v169 = &a2[(v127 + 8)];
        if (v169 < a2)
        {
          goto LABEL_655;
        }

        if ((v169 + 1) > a3)
        {
          goto LABEL_655;
        }

        if (v169 > v169 + 1)
        {
          goto LABEL_655;
        }

        v170 = *(a5 + 40);
        v22 = *(a5 + 50);
        v171 = (v170 + 4 * v22);
        if (v171 < v170)
        {
          goto LABEL_655;
        }

        a4 = v170 + 7812;
        if ((v171 + 2) > v170 + 7812 || v171 > v171 + 2)
        {
          goto LABEL_655;
        }

        v172 = *v168;
        v127 += 9;
        *v171 = *v169;
        v171[1] = v172;
        *(a5 + 50) = v22 + 1;
        *(a5 + 36) += v172;
        LOWORD(v135) = v135 + 1;
      }

      while (v298 > v135);
    }
  }

  if (v301 == 2)
  {
    v193 = a5 + 122116;
    if (!*v300)
    {
      v207 = 0;
      v196 = v297;
      goto LABEL_450;
    }

    v194 = a5 + 125628;
    v195 = a5 + 125948;
    v12 = *(a5 + 125948);
    v196 = v297;
    v13 = 0;
    if (*(a5 + 125948) >= 8)
    {
      do
      {
        v197 = (v194 + v13);
        if (v194 + v13 >= v195 || v197 < v194)
        {
          goto LABEL_655;
        }

        v199 = *(a5 + 40);
        result = *(a5 + 50);
        v200 = (v199 + 4 * result);
        v201 = (v200 + 2);
        v202 = v200 < v199 || v201 > v199 + 7812;
        if (v202 || v200 > v201)
        {
          goto LABEL_655;
        }

        result = *(a5 + 50);
        *v200 = *v197;
        v200[1] = 8;
        *(a5 + 50) = result + 1;
        *(a5 + 36) += 8;
        ++v13;
      }

      while (v13 < v12 >> 3);
      v13 = v13;
    }

    LODWORD(v12) = v12 & 7;
    if (!v12)
    {
      goto LABEL_448;
    }

    v13 += v194;
    if (v13 < v195 && v13 >= v194)
    {
      v204 = *(a5 + 40);
      v205 = *(a5 + 50);
      v206 = (v204 + 4 * v205);
      if (v206 >= v204 && (v206 + 2) <= v204 + 7812 && v206 <= v206 + 2)
      {
        *v206 = *v13 >> (8 - v12);
        v206[1] = v12;
        *(a5 + 50) = v205 + 1;
        *(a5 + 36) += v12;
LABEL_448:
        v207 = *(a5 + 125972);
LABEL_450:
        v208 = 0;
        v22 = 0;
        LODWORD(v12) = v196 - v315;
        LOWORD(v13) = v316 + 1254;
        v313 = v316 + 627;
        v311 = v24 + (v196 - v315) + v207;
        v316 = (a5 + 86048);
        v209 = 1;
        while (1)
        {
          v210 = v209;
          LODWORD(v19) = *(a5 + 36);
          if (v208)
          {
            LOWORD(v24) = *(a5 + 36);
            if (*(v193 + 36))
            {
              v211 = *(a5 + 40);
              v12 = v211 + 7812;
              v212 = *(a5 + 50);
              v24 = v211 + 4 * v212;
              v13 = v24 + 4;
              if (v24 < v211 || v13 > v12 || v24 > v13)
              {
                goto LABEL_655;
              }

              *v24 = *(v193 + 38);
              *(v24 + 2) = 1;
              *(a5 + 50) = v212 + 1;
              LOWORD(v24) = v19 + 1;
              *(a5 + 36) = v19 + 1;
            }
          }

          else
          {
            LOWORD(v24) = *(a5 + 36);
          }

          v215 = &a2[729 * v22];
          v216 = v215 + 1;
          if (v215 < a2 || v216 > a3 || v215 > v216)
          {
            goto LABEL_655;
          }

          v219 = *(a5 + 40);
          v12 = v219 + 7812;
          v220 = *(a5 + 50);
          v221 = (v219 + 4 * v220);
          v13 = (v221 + 2);
          v222 = v221 < v219 || v13 > v12;
          if (v222 || v221 > v13)
          {
            goto LABEL_655;
          }

          v13 = (v215 + 2);
          *v221 = *v215;
          v221[1] = 7;
          *(a5 + 50) = v220 + 1;
          *(a5 + 36) = v24 + 7;
          if ((v215 + 2) > a3 || v216 > v13)
          {
            goto LABEL_655;
          }

          v225 = (v219 + 4 * (v220 + 1));
          if (v225 < v219 || (v225 + 2) > v12 || v225 > v225 + 2)
          {
            goto LABEL_655;
          }

          *v225 = *v216;
          v225[1] = 3;
          v226 = v220 + 2;
          *(a5 + 50) = v220 + 2;
          *(a5 + 36) = v24 + 10;
          if (v210)
          {
            if (*(a5 + 116900) || v304[249] >= 25601)
            {
              v227 = v215 + 3;
              if ((v215 + 3) > a3 || v13 > v227)
              {
                goto LABEL_655;
              }

              v228 = *v13;
              v13 = v219 + 4 * v226;
              v231 = v13 + 4 <= v12 && v13 <= v13 + 4 && v13 >= v219;
              if (v228)
              {
                if (!v231)
                {
                  goto LABEL_655;
                }

                *v13 = 65537;
                *(a5 + 50) = v220 + 3;
                *(a5 + 36) = v24 + 11;
                v13 = (v215 + 4);
                if ((v215 + 4) > a3)
                {
                  goto LABEL_655;
                }

                if (v227 > v13)
                {
                  goto LABEL_655;
                }

                v232 = (v219 + 4 * (v220 + 3));
                if (v232 < v219)
                {
                  goto LABEL_655;
                }

                if ((v232 + 2) > v12)
                {
                  goto LABEL_655;
                }

                if (v232 > v232 + 2)
                {
                  goto LABEL_655;
                }

                *v232 = v215[3];
                v232[1] = 9;
                v233 = v220 + 4;
                *(a5 + 50) = v220 + 4;
                *(a5 + 36) = v24 + 20;
                if ((v215 + 5) > a3)
                {
                  goto LABEL_655;
                }

                if (v13 > (v215 + 5))
                {
                  goto LABEL_655;
                }

                v234 = (v219 + 4 * v233);
                if (v234 < v219 || (v234 + 2) > v12 || v234 > v234 + 2)
                {
                  goto LABEL_655;
                }

                v12 = v233;
                *v234 = *v13;
                LOWORD(v13) = 22;
                v235 = 5;
                v236 = 2;
              }

              else
              {
                if (!v231)
                {
                  goto LABEL_655;
                }

                v12 = v226;
                *v13 = 0;
                LOWORD(v13) = 11;
                v235 = 3;
                v236 = 1;
              }

              *(v219 + 4 * v12 + 2) = v236;
              *(a5 + 50) = v220 + v235;
              *(a5 + 36) = v24 + v13;
            }

            v237 = *v14 >> 1;
            if (!v317)
            {
              v237 += *v14 >> 2;
            }
          }

          else
          {
            v237 = *v14 >> 1;
          }

          v322[0] = 0;
          v238 = v317 | v22;
          if (v14[3])
          {
            result = &v316[12 * (v238 == 0)];
            if (result)
            {
              LOWORD(v24) = a5 + 20512;
              if (result < v316)
              {
                goto LABEL_655;
              }

              v24 = result + 24;
              if (result + 24 > a5 + 86096 || result > v24)
              {
                goto LABEL_655;
              }
            }

            *(v14 + 29) = result;
            v319 = v215 + 5;
            v320 = a3;
            v321 = a2;
            result = WriteTnsData(result, &v319, v322 + 1, a5, v322);
            v14 = v318;
            a4 = WORD2(v322[0]) + 5;
          }

          else
          {
            a4 = 5;
          }

          LOWORD(v24) = 1;
          if (*(v14 + 70) && v238)
          {
            v239 = &v215[a4];
            if (v239 < a2)
            {
              goto LABEL_655;
            }

            v240 = (v239 + 1);
            if ((v239 + 1) > a3)
            {
              goto LABEL_655;
            }

            if (v239 > v240)
            {
              goto LABEL_655;
            }

            v13 = *(a5 + 40);
            v24 = *(a5 + 50);
            v12 = v13 + 4 * v24;
            if (v12 < v13)
            {
              goto LABEL_655;
            }

            v241 = v13 + 7812;
            v13 = v12 + 4;
            if (v12 + 4 > v241 || v12 > v13)
            {
              goto LABEL_655;
            }

            v242 = *(v14 + 34);
            LOWORD(v13) = *(a5 + 50);
            v243 = *v239;
            *v12 = *v239;
            LOWORD(v24) = 1;
            *(v12 + 2) = 1;
            *(a5 + 50) = v13 + 1;
            LODWORD(v12) = (*(a5 + 36))++ + 1;
            if (v243)
            {
              v24 = (v239 + 2);
              if ((v239 + 2) > a3 || v240 > v24)
              {
                goto LABEL_655;
              }

              result = EncodeIndex(((v242 + v242) * v237) > 255, *v240, a5);
              v14 = v318;
              LOWORD(v24) = 0;
            }
          }

          v244 = &v215[(a4 + 3)];
          if (v244 < a2 || v244 - 4 < a2 || v244 > a3 || v244 - 4 > v244)
          {
            goto LABEL_655;
          }

          LODWORD(v12) = *(a5 + 36) - v315;
          LODWORD(v13) = *v313 - (v311 + v22) + 1;
          v245 = a7 + 56 * v22;
          LOWORD(v24) = (v245 != 0) & ~v24;
          if (v24)
          {
            if (v245 < a7)
            {
              goto LABEL_655;
            }

            v24 = v245 + 56;
            if (v245 + 56 > a8 || v245 > v24)
            {
              goto LABEL_655;
            }

            v246 = a5;
          }

          else
          {
            v246 = a5;
          }

          result = ACcontextMapping_encode2_no_mem_s17_LC(v246);
          v209 = 0;
          v208 = 1;
          v22 = 1;
          v14 = v318;
          v193 = a5 + 122116;
          if ((v210 & 1) == 0)
          {
            return result;
          }
        }
      }
    }

    goto LABEL_655;
  }

  if (v301 != 1)
  {
    return result;
  }

  LOWORD(v24) = *(a5 + 122152);
  if (v24)
  {
    v12 = *(a5 + 40);
    v173 = *(a5 + 50);
    v24 = v12 + 4 * v173;
    if (v24 < v12)
    {
      goto LABEL_655;
    }

    v13 = v12 + 7812;
    v12 = v24 + 4;
    if (v24 + 4 > v13 || v24 > v12)
    {
      goto LABEL_655;
    }

    *v24 = *(a5 + 122154);
    *(v24 + 2) = 1;
    *(a5 + 50) = v173 + 1;
    LOWORD(v24) = *(a5 + 36) + 1;
    *(a5 + 36) = v24;
  }

  v12 = &a2[v127];
  if (v12 < a2)
  {
    goto LABEL_655;
  }

  v24 = v12 + 4;
  if (v12 + 4 > a3)
  {
    goto LABEL_655;
  }

  if (v12 > v24)
  {
    goto LABEL_655;
  }

  v24 = *(a5 + 40);
  v174 = *(a5 + 50);
  v175 = (v24 + 4 * v174);
  if (v175 < v24)
  {
    goto LABEL_655;
  }

  v13 = v24 + 7812;
  if ((v175 + 2) > v24 + 7812)
  {
    goto LABEL_655;
  }

  if (v175 > v175 + 2)
  {
    goto LABEL_655;
  }

  *v175 = *v12;
  v175[1] = 7;
  *(a5 + 50) = v174 + 1;
  LODWORD(v12) = *(a5 + 36);
  *(a5 + 36) = v12 + 7;
  v176 = &a2[(v127 + 1)];
  if (v176 < a2)
  {
    goto LABEL_655;
  }

  if ((v176 + 1) > a3)
  {
    goto LABEL_655;
  }

  if (v176 > v176 + 1)
  {
    goto LABEL_655;
  }

  v177 = (v24 + 4 * (v174 + 1));
  if (v177 < v24 || (v177 + 2) > v13 || v177 > v177 + 2)
  {
    goto LABEL_655;
  }

  *v177 = *v176;
  v177[1] = 3;
  v178 = v174 + 2;
  *(a5 + 50) = v174 + 2;
  *(a5 + 36) = v12 + 10;
  if (*(a5 + 116900) || v304[249] >= 25601)
  {
    v179 = &a2[(v127 + 2)];
    if (v179 < a2)
    {
      goto LABEL_655;
    }

    v180 = v179 + 1;
    if ((v179 + 1) > a3 || v179 > v180)
    {
      goto LABEL_655;
    }

    result = *v179;
    v181 = (v24 + 4 * v178);
    v184 = (v181 + 1) <= v13 && v181 <= v181 + 1 && v181 >= v24;
    if (result)
    {
      if (!v184)
      {
        goto LABEL_655;
      }

      *v181 = 65537;
      *(a5 + 50) = v174 + 3;
      *(a5 + 36) = v12 + 11;
      v185 = v179 + 2;
      if ((v179 + 2) > a3)
      {
        goto LABEL_655;
      }

      if (v180 > v185)
      {
        goto LABEL_655;
      }

      v186 = (v24 + 4 * (v174 + 3));
      if (v186 < v24)
      {
        goto LABEL_655;
      }

      if ((v186 + 2) > v13)
      {
        goto LABEL_655;
      }

      if (v186 > v186 + 2)
      {
        goto LABEL_655;
      }

      *v186 = v179[1];
      v186[1] = 9;
      v187 = v174 + 4;
      *(a5 + 50) = v174 + 4;
      *(a5 + 36) = v12 + 20;
      v188 = (v179 + 3);
      if (v188 > a3)
      {
        goto LABEL_655;
      }

      if (v185 > v188)
      {
        goto LABEL_655;
      }

      v189 = (v24 + 4 * v187);
      if (v189 < v24 || (v189 + 2) > v13 || v189 > v189 + 2)
      {
        goto LABEL_655;
      }

      v13 = v187;
      *v189 = *v185;
      v190 = 22;
      v191 = 5;
      v192 = 2;
    }

    else
    {
      if (!v184)
      {
        goto LABEL_655;
      }

      v13 = v178;
      *v181 = 0;
      v190 = 11;
      v191 = 3;
      v192 = 1;
    }

    *(v24 + 4 * v13 + 2) = v192;
    *(a5 + 50) = v174 + v191;
    *(a5 + 36) = v12 + v190;
  }

  a4 = *v14;
  if (!v317)
  {
    v247 = v296[12] + a6;
    a4 = (a4 + (a4 >> 2));
    v248 = v14[1];
    LODWORD(v12) = v247 - v248;
    if (v248 < 0)
    {
      v247 -= v248;
    }

    a6 = v247;
  }

  v249 = v127 + 5;
  v322[0] = 0;
  v250 = a5 + 122116;
  if (v14[3])
  {
    v251 = *(v14 + 29);
    v319 = &a2[v249];
    v320 = a3;
    v321 = a2;
    result = WriteTnsData(v251, &v319, v322 + 1, a5, v322);
    v14 = v318;
    v249 += WORD2(v322[0]);
  }

  LODWORD(v22) = ((*(v14 + 34) + *(v14 + 34)) * a6);
  if (*(a5 + 122158))
  {
    LOWORD(v24) = v317;
    if (v317)
    {
      v252 = &a2[v249];
      if (v252 < a2)
      {
        goto LABEL_655;
      }

      v250 = a5 + 122116;
      if ((v14[36] & 0xFFFFFFFE) == 2)
      {
        v24 = (v252 + 1);
        if ((v252 + 1) > a3)
        {
          goto LABEL_655;
        }

        if (v24 < v252)
        {
          goto LABEL_655;
        }

        v12 = *(a5 + 40);
        v253 = *(a5 + 50);
        v254 = (v12 + 4 * v253);
        if (v254 < v12)
        {
          goto LABEL_655;
        }

        v13 = v12 + 7812;
        v12 = (v254 + 2);
        if ((v254 + 2) > v13 || v254 > v12)
        {
          goto LABEL_655;
        }

        LODWORD(v12) = *v252;
        *v254 = *v252;
        LOWORD(v13) = 1;
        v254[1] = 1;
        *(a5 + 50) = v253 + 1;
        ++*(a5 + 36);
        if (v12)
        {
          v19 = (v252 + 2);
          if ((v252 + 2) > a3 || v24 > v19)
          {
            goto LABEL_655;
          }

          result = EncodeIndex(v22 > 255, *v24, a5);
          v14 = v318;
          if (v318[36] == 2)
          {
            v24 = (v252 + 3);
            if ((v252 + 3) > a3)
            {
              goto LABEL_655;
            }

            if (v19 > v24)
            {
              goto LABEL_655;
            }

            v255 = *(a5 + 40);
            v256 = *(a5 + 50);
            v24 = v255 + 4 * v256;
            if (v24 < v255)
            {
              goto LABEL_655;
            }

            LODWORD(v12) = v255 + 7812;
            if (v24 + 4 > v255 + 7812 || v24 > v24 + 4)
            {
              goto LABEL_655;
            }

            *v24 = *v19;
            *(v24 + 2) = 2;
            *(a5 + 50) = v256 + 1;
            *(a5 + 36) += 2;
          }
        }
      }
    }
  }

  v257 = 1;
  if (*(v14 + 70))
  {
    LOWORD(v24) = v317;
    if (v317)
    {
      v258 = &a2[v249];
      if (v258 < a2)
      {
        goto LABEL_655;
      }

      v24 = (v258 + 1);
      if ((v258 + 1) > a3)
      {
        goto LABEL_655;
      }

      if (v258 > v24)
      {
        goto LABEL_655;
      }

      v13 = *(a5 + 40);
      v12 = *(a5 + 50);
      v259 = (v13 + 4 * v12);
      if (v259 < v13)
      {
        goto LABEL_655;
      }

      v260 = v13 + 7812;
      v13 = (v259 + 2);
      if ((v259 + 2) > v260 || v259 > v13)
      {
        goto LABEL_655;
      }

      LODWORD(v12) = *(a5 + 50);
      LODWORD(v13) = *v258;
      *v259 = *v258;
      v259[1] = 1;
      *(a5 + 50) = v12 + 1;
      ++*(a5 + 36);
      if (v13)
      {
        v261 = (v258 + 2);
        if (v261 > a3 || v24 > v261)
        {
          goto LABEL_655;
        }

        result = EncodeIndex(v22 > 255, *v24, a5);
        v14 = v318;
        v257 = 0;
      }

      v250 = a5 + 122116;
    }
  }

  if (*v300)
  {
    *(v250 + 3860) = 0;
    result = IGFEncWriteBitstream(a5 + 123968);
    v14 = v318;
  }

  v262 = *(a5 + 36) - v315;
  if (*v316)
  {
    v262 += v316[5];
  }

  v263 = (v316[627] - v262);
  if (*(v250 + 42))
  {
    LOWORD(v24) = v249 + 4;
    v264 = &a2[(v249 + 4)];
    if (v264 <= a3 && v264 >= a2 && (v263 & 0x80000000) == 0)
    {
      LOWORD(v24) = v263;
      if ((a3 - v264) >> 2 >= v263)
      {
        return push_next_bits(a5, v264, v263);
      }
    }

    goto LABEL_655;
  }

  LOWORD(v24) = v249 + 3;
  v265 = &a2[(v249 + 3)];
  if (v265 < a2)
  {
    goto LABEL_655;
  }

  v24 = (v265 - 1);
  if (v265 - 1 < a2 || v265 > a3 || v24 > v265)
  {
    goto LABEL_655;
  }

  if (((a7 != 0) & ~v257) == 0)
  {
    v266 = a5;
    return ACcontextMapping_encode2_no_mem_s17_LC(v266);
  }

  v24 = a7 + 56;
  if (a7 + 56 > a8 || v24 < a7)
  {
    goto LABEL_655;
  }

  v266 = a5;
  return ACcontextMapping_encode2_no_mem_s17_LC(v266);
}