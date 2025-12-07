float *maximum(float *result, int a2, float *a3)
{
  if (result + 1 < result || (v3 = &result[a2], result + 1 > v3))
  {
LABEL_20:
    __break(0x5519u);
    return result;
  }

  v4 = *result;
  if (a2 >= 2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = &result[v5 + 1];
      v9 = &result[v5 + 2];
      v10 = v8 < result || v9 > v3;
      if (v10 || v8 > v9)
      {
        goto LABEL_20;
      }

      if (result[v7] > v4)
      {
        v4 = result[v7];
        v6 = v7;
      }

      ++v7;
      ++v5;
      if (a2 == v7)
      {
        if (!a3)
        {
          return v6;
        }

        goto LABEL_16;
      }
    }
  }

  v6 = 0;
  if (a3)
  {
LABEL_16:
    *a3 = v4;
  }

  return v6;
}

void GenShapedSHBExcitation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, __int16 *a11, unint64_t a12, __int16 a13, float *a14, float *a15, unint64_t a16, uint64_t a17, float *a18, unint64_t a19, const void *a20, _WORD *a21, uint64_t a22, float *a23, uint64_t a24, __int16 a25)
{
  v25 = MEMORY[0x1EEE9AC00](a1);
  v149 = v26;
  v28 = v27;
  v151 = v25;
  v152 = v29;
  __dst = v30;
  v148 = v31;
  v33 = v32;
  v175[160] = *MEMORY[0x1E69E9840];
  v171[1] = -1;
  v171[0] = -1;
  v169 = -1;
  v168[1] = -1;
  v168[0] = -1;
  memset(v167, 255, sizeof(v167));
  memset(v166, 255, sizeof(v166));
  memset(v165, 255, sizeof(v165));
  memset(v162, 255, sizeof(v162));
  memset(__b, 255, sizeof(__b));
  v160 = -1;
  v159[0] = -1;
  v159[1] = -1;
  *&v34 = -1;
  *(&v34 + 1) = -1;
  v158[18] = v34;
  v158[19] = v34;
  v158[16] = v34;
  v158[17] = v34;
  v158[14] = v34;
  v158[15] = v34;
  v158[12] = v34;
  v158[13] = v34;
  v158[10] = v34;
  v158[11] = v34;
  v158[8] = v34;
  v158[9] = v34;
  v158[6] = v34;
  v158[7] = v34;
  v158[4] = v34;
  v158[5] = v34;
  v158[2] = v34;
  v158[3] = v34;
  v158[0] = v34;
  v158[1] = v34;
  v157 = -1;
  __C[0] = v34;
  __C[1] = v34;
  memset(v155, 255, sizeof(v155));
  LODWORD(v175[0]) = 0;
  vDSP_vfill(v175, __C, 1, 0xAuLL);
  LODWORD(v175[0]) = 0;
  vDSP_vfill(v175, v171, 1, 4uLL);
  v35 = 0;
  v36 = xmmword_19B0A5840;
  v37 = xmmword_19B0A5850;
  do
  {
    v38 = vdupq_n_s64(1uLL);
    *&v166[v35] = vbslq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v37, v38)), vceqzq_s64(vandq_s8(v36, v38))), vnegq_f32(*(a10 + v35 * 4)), *(a10 + v35 * 4));
    v39 = vdupq_n_s64(4uLL);
    v36 = vaddq_s64(v36, v39);
    v37 = vaddq_s64(v37, v39);
    v35 += 4;
  }

  while (v35 != 640);
  Decimate_allpass_steep(v166, v28, (v28 + 7), 640, v165, v166);
  autocorr(v165, v167, v168, 5, 320, &win_flatten, cos_fb_exc, 1, 1);
  v40 = 0;
  v167[0] = fmaxf(v167[0], 0.00000001);
  do
  {
    v167[v40] = v167[v40] * *&wac[v40];
    ++v40;
  }

  while (v40 != 5);
  v167[0] = v167[0] + 0.00000001;
  lev_dur(v168, &v170, v167, v168, 4, v162, v163);
  v175[0] = v171;
  v175[1] = v172;
  v175[2] = v171;
  fir(v165);
  if (a24 >= 24400)
  {
    v41 = 0;
    while (1)
    {
      v42 = (a19 + 4 * (v41 / 0x50u));
      v43 = v42 + 1;
      v44 = v42 < a19 || v43 > a19 + 16;
      if (v44 || v42 > v43)
      {
        break;
      }

      __b[v41] = *v42 * __b[v41];
      if (++v41 == 320)
      {
        goto LABEL_15;
      }
    }

LABEL_174:
    __break(0x5519u);
  }

LABEL_15:
  memset(v164, 255, sizeof(v164));
  v46 = 0;
  v47 = 0.00001;
  do
  {
    v48 = *&__b[v46];
    *&v164[v46 * 4] = vabsq_f32(v48);
    v49 = vmulq_f32(v48, v48);
    v47 = (((v47 + v49.f32[0]) + v49.f32[1]) + v49.f32[2]) + v49.f32[3];
    v46 += 4;
  }

  while (v46 != 320);
  v50 = 0;
  v51 = 4;
  if ((a24 - 7200) < 0x1771)
  {
    v52 = 4;
  }

  else
  {
    v52 = 5;
  }

  if ((a24 - 7200) >= 0x1771)
  {
    v51 = 5;
  }

  v53 = 4 * v51;
  v54 = 0.0;
  do
  {
    v54 = v54 + *(a12 + v50);
    v50 += 4;
  }

  while (v53 != v50);
  v55 = v54 / v52;
  if (a13 == 11)
  {
    if (*a21 == 20)
    {
      v56 = 0.68;
    }

    else
    {
      v57 = pow(v55, 3.0);
      v56 = fmaxf(0.68 - v57, 0.48);
    }
  }

  else
  {
    v56 = 0.48;
  }

  v58 = fminf(fmaxf((v55 * -0.49875) + 1.0987, 0.6), 0.999);
  v59 = 1.0 - v58;
  v60 = -v58;
  v61 = *v152;
  if (*v152 == 0.0 && (a24 == 9600 || a24 == 24400 || a24 == 16400))
  {
    v62 = 0;
    v63 = 0.0;
    do
    {
      v63 = (((v63 + COERCE_FLOAT(*&v164[v62])) + COERCE_FLOAT(HIDWORD(*&v164[v62]))) + COERCE_FLOAT(*&v164[v62 + 8])) + COERCE_FLOAT(HIDWORD(*&v164[v62]));
      v62 += 16;
    }

    while (v62 != 80);
    if (a13 != 11 || a25 == 0)
    {
      v60 = -0.8;
      v59 = 0.2;
      v58 = 0.8;
    }

    v61 = v58 * (v63 / 20.0);
  }

  memset(v163, 255, sizeof(v163));
  v64 = 0;
  *v65.i32 = -v60;
  do
  {
    v66 = v61 + (v59 * *&v164[v64]);
    *&v163[v64] = v66;
    v61 = v66 * *v65.i32;
    v64 += 4;
  }

  while (v64 != 1280);
  *v152 = v61;
  create_random_vector(v165, 0x100u, a11, v65);
  create_random_vector(&v165[256], 0x40u, a11, v67);
  v68 = 0;
  v69 = 0.00001;
  do
  {
    v70 = vmulq_f32(*&v163[v68 * 4], *&v165[v68]);
    *&v165[v68] = v70;
    v71 = vmulq_f32(v70, v70);
    v69 = (((v69 + v71.f32[0]) + v71.f32[1]) + v71.f32[2]) + v71.f32[3];
    v68 += 4;
  }

  while (v68 != 320);
  if (a24 >= 24400)
  {
    v72 = *a21;
    if (v72 == 20)
    {
      memset(v173, 255, sizeof(v173));
      memset(v172, 255, sizeof(v172));
      memcpy(v175, a20, 0x500uLL);
      memcpy(v174, v165, sizeof(v174));
      __A = NAN;
      vDSP_dotpr(v175, 1, v175, 1, &__A, 0x140uLL);
      v73 = 0;
      v74 = sqrtf(v47 / (__A + 0.00001));
      v75 = sqrtf(v47 / v69);
      do
      {
        *&v174[v73 * 8] = vmulq_n_f32(*&v174[v73 * 8], v75);
        *&v175[v73] = vmulq_n_f32(*&v175[v73], v74);
        v73 += 2;
      }

      while (v73 != 160);
      for (i = 0; i != 1280; i += 16)
      {
        v77 = *&v174[i];
        *&v173[i / 4] = vsubq_f32(*&v175[i / 8], v77);
        *&v172[i / 4] = vsubq_f32(*&__b[i / 4], v77);
      }

      __A = NAN;
      vDSP_dotpr(v173, 1, v172, 1, &__A, 0x140uLL);
      v78 = __A;
      __A = NAN;
      vDSP_dotpr(v172, 1, v172, 1, &__A, 0x140uLL);
      v79 = v78 / __A;
      v80 = 0.1;
      v81 = (v78 / __A) <= 0.1;
      v82 = (v78 / __A) >= 0.99 || (v78 / __A) <= 0.1;
      if (v79 < 0.99)
      {
        v81 = 1;
      }

      if (!v81)
      {
        v80 = 0.99;
      }

      if (v82)
      {
        v79 = v80;
      }

      *v159 = v79;
      v83 = ((v79 + -0.125) * 8.0) + 0.5;
      if (v83 > 7.0)
      {
        v83 = 7.0;
      }

      if (v83 < 0.0)
      {
        v83 = 0.0;
      }

      *a21 = v83;
      __A = (v83 * 0.125) + 0.125;
      vDSP_vfill(&__A, v159, 1, 5uLL);
      v84 = *v159;
    }

    else
    {
      v84 = vcvts_n_f32_s32(v72, 3uLL);
    }

    v85 = 0;
    v44 = v84 <= 0.7;
    v86 = 0.8;
    if (!v44)
    {
      v86 = 1.0;
    }

    do
    {
      *(a12 + v85) = v86 * *(a12 + v85);
      v85 += 4;
    }

    while (v85 != 20);
  }

  memcpy(__dst, v165, 0x500uLL);
  if (__dst + 320 < __dst)
  {
    goto LABEL_174;
  }

  deemph(v165, 320, a14, 0.68);
  if (a9 != 1)
  {
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = a9 == 2;
    if (a24 < 24400)
    {
      v93 = 4;
    }

    else
    {
      v93 = 5;
    }

    if (a24 >= 24400)
    {
      v92 = 0;
    }

    v153 = v92;
    if (a24 >= 24400)
    {
      v94 = 64;
    }

    else
    {
      v94 = 80;
    }

    while (1)
    {
      v95 = (a12 + 4 * v90);
      v96 = (v95 + 1) > a12 + 20 || v95 > v95 + 1;
      v97 = !v96 && v95 >= a12;
      v98 = v97;
      if (v153)
      {
        if (!v98)
        {
          goto LABEL_174;
        }

        v99 = *v95;
        v100 = sqrtf(*v95);
        v101 = sqrtf(v100);
        v102 = v69 == 0.0 ? 0.0 : sqrtf((v47 * (1.0 - v100)) / v69);
      }

      else
      {
        if (!v98)
        {
          goto LABEL_174;
        }

        v99 = *v95;
        v103 = ((v33 * -0.15) + 1.0) * *v95;
        v101 = sqrtf(v103);
        v102 = sqrtf((v47 * (1.0 - v103)) / v69);
        if (v69 == 0.0)
        {
          v102 = 0.0;
        }
      }

      v104 = 0;
      do
      {
        v105 = &__b[v91];
        v106 = v105 + 1;
        v108 = v105 < __b || v106 > v162 || v105 > v106;
        v109 = &v165[v91];
        v110 = v109 + 1;
        if (v108 || v109 < v165 || v110 > v166 || v109 > v110)
        {
          goto LABEL_174;
        }

        __b[v91] = (v102 * v165[v91]) + (v101 * __b[v91]);
        ++v104;
        ++v91;
      }

      while (v94 > v104);
      v114 = 320 * v89 / v93;
      v115 = &__b[v114];
      if (v115 > v162 || __b > v115 || v94 > (1280 - 4 * v114) >> 2)
      {
        goto LABEL_174;
      }

      v116 = sqrtf(1.0 - v99);
      preemph(v115, v94, a15, (v116 * 0.68) / (v101 + v116));
      v89 = ++v90;
      if (v93 <= v90)
      {
        goto LABEL_120;
      }
    }
  }

  v87 = 0;
  v88 = sqrtf(v47 / v69);
  if (v69 == 0.0)
  {
    v88 = 0.0;
  }

  do
  {
    *&__b[v87] = vmulq_n_f32(*&v165[v87], v88);
    v87 += 4;
  }

  while (v87 != 320);
  preemph(__b, 320, a15, 0.68);
LABEL_120:
  if (a24 > 24399)
  {
    LODWORD(v175[0]) = 0;
    vDSP_vfill(v175, __C, 1, 0xAuLL);
    syn_filt(a16);
    v118 = 0;
    v119 = 0.0;
    do
    {
      v120 = vmulq_f32(v158[v118], v158[v118]);
      v119 = (((v119 + v120.f32[0]) + v120.f32[1]) + v120.f32[2]) + v120.f32[3];
      ++v118;
    }

    while (v118 != 20);
    if (a16 + 44 < a16)
    {
      goto LABEL_174;
    }

    v121 = v119 * 0.125;
    syn_filt(a16 + 44);
    v122 = 0;
    v123 = 0.0;
    do
    {
      v124 = vmulq_f32(v158[v122], v158[v122]);
      v123 = (((v123 + v124.f32[0]) + v124.f32[1]) + v124.f32[2]) + v124.f32[3];
      ++v122;
    }

    while (v122 != 20);
    if (a16 + 88 < a16)
    {
      goto LABEL_174;
    }

    v125 = v123 * 0.125;
    syn_filt(a16 + 88);
    v126 = 0;
    v127 = 0.0;
    do
    {
      v128 = vmulq_f32(v158[v126], v158[v126]);
      v127 = (((v127 + v128.f32[0]) + v128.f32[1]) + v128.f32[2]) + v128.f32[3];
      ++v126;
    }

    while (v126 != 20);
    if (a16 + 132 < a16)
    {
      goto LABEL_174;
    }

    v129 = v127 * 0.125;
    syn_filt(a16 + 132);
    v130 = 0;
    v131 = 0.0;
    do
    {
      v132 = vmulq_f32(v158[v130], v158[v130]);
      v131 = (((v131 + v132.f32[0]) + v132.f32[1]) + v132.f32[2]) + v132.f32[3];
      ++v130;
    }

    while (v130 != 20);
    if (a24 <= 0x7D00)
    {
      v133 = 0;
      v134 = sqrt((*a18 / (((v121 + v125) + v129) + (v131 * 0.125))));
      do
      {
        *&__b[v133] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*&__b[v133]), v134)), vmulq_n_f64(vcvt_hight_f64_f32(*&__b[v133]), v134));
        v133 += 4;
      }

      while (v133 != 320);
    }

    if (v149 < v151)
    {
      goto LABEL_174;
    }

    if ((v149 - v151) < 317)
    {
      goto LABEL_174;
    }

    syn_filt(a16);
    if (v149 < v151 + 320)
    {
      goto LABEL_174;
    }

    if (v151 + 320 < v151)
    {
      goto LABEL_174;
    }

    if ((v149 - (v151 + 320)) < 317)
    {
      goto LABEL_174;
    }

    syn_filt(a16 + 44);
    if (v149 < v151 + 640)
    {
      goto LABEL_174;
    }

    if (v151 + 640 < v151)
    {
      goto LABEL_174;
    }

    if ((v149 - (v151 + 640)) < 317)
    {
      goto LABEL_174;
    }

    syn_filt(a16 + 88);
    if (v149 < v151 + 960 || v151 + 960 < v151 || (v149 - (v151 + 960)) < 317)
    {
      goto LABEL_174;
    }

    syn_filt(a16 + 132);
    v117 = v148;
  }

  else
  {
    if (v149 < v151 || (v149 - v151) < 1277)
    {
      goto LABEL_174;
    }

    v117 = v148;
    syn_filt(v148);
  }

  if (a13 == 11)
  {
    syn_filt(v117);
    for (j = 0; j != 320; ++j)
    {
      v136 = &cos_fb_exc[j & 0x1F];
      v137 = v136 + 1;
      if (v136 < cos_fb_exc || v137 > skip_bands_SWB_TBE || v136 > v137)
      {
        goto LABEL_174;
      }

      v155[j] = *v136 * v155[j];
    }

    v140 = __dst + 1;
    v141 = &v155[1];
    v142 = -2;
    do
    {
      *(v140 - 1) = -*(v141 - 1);
      v143 = v141 + 1 > __C || v141 > v141 + 1;
      v144 = (v140 + 1);
      if (v143 || v144 > (__dst + 320) || v140 > v144)
      {
        goto LABEL_174;
      }

      v147 = *v141;
      v141 += 2;
      *v140 = v147;
      v140 += 2;
      v142 += 2;
    }

    while (v142 < 0x13E);
    deemph(__dst, 320, a23, v56);
  }

  else
  {
    bzero(__dst, 0x500uLL);
  }
}

float *PostShortTerm(float **a1, float *a2, unint64_t a3, float *a4, uint64_t a5, _DWORD *a6, float a7, float *a8, uint64_t a9, unint64_t a10, unint64_t a11)
{
  *&v33[12] = *MEMORY[0x1E69E9840];
  *&v17 = -1;
  *(&v17 + 1) = -1;
  *&v32[12] = v17;
  __C = v17;
  *v32 = v17;
  v30[1] = v17;
  v30[2] = v17;
  v29[1] = v17;
  v30[0] = v17;
  v29[0] = v17;
  v27 = -1;
  v26[18] = v17;
  v26[19] = v17;
  v26[16] = v17;
  v26[17] = v17;
  v26[14] = v17;
  v26[15] = v17;
  v26[12] = v17;
  v26[13] = v17;
  v26[10] = v17;
  v26[11] = v17;
  v26[8] = v17;
  v26[9] = v17;
  v26[6] = v17;
  v26[7] = v17;
  v26[4] = v17;
  v26[5] = v17;
  v26[2] = v17;
  v26[3] = v17;
  v26[0] = v17;
  v26[1] = v17;
  v24 = NAN;
  __A = 0.0;
  vDSP_vfill(&__A, &__C, 1, 0xBuLL);
  __A = 0.0;
  vDSP_vfill(&__A, v29, 1, 0x14uLL);
  __A = 0.0;
  vDSP_vfill(&__A, v26, 1, 0x51uLL);
  weight_a(a2, a3, &__C, v33, 10, (a7 * 0.15) + 0.65);
  weight_a(a2, a3, v29, &__C, 10, (a7 * -0.15) + 0.65);
  vDSP_conv(*a1 - 10, 1, v30 + 2, -1, v26 + 1, 1, 0x50uLL, 0xBuLL);
  LODWORD(v26[0]) = *a6;
  calc_st_filt(v29, &__C, v33, &v24, v26 + 1, a10, a11, 80, 8);
  syn_filt(&__C);
  filt_mu(v26, &v28, a4, 0x50u, 8, v24);
  v18 = *a1;
  v19 = a1[1];
  v20 = v19 >= *a1;
  v21 = v19 - *a1;
  if (!v20 || a1[2] > v18 || v21 <= 316)
  {
    __break(0x5519u);
  }

  return scale_st(v18, a4, a8, 80, 8);
}

float *EstimateSHBGainShape(int a1, float *a2, unint64_t a3, unint64_t a4, unint64_t a5, float *a6, unint64_t a7, uint64_t a8, float *a9, unint64_t a10)
{
  if (a1 == 10)
  {
    v10 = 0;
    v12 = full_band_bpf_3 >= word_19B36C14C && skip_bands_WB_TBE <= word_19B36C14C;
    v13 = skip_bands_WB_TBE <= &word_19B36C14C[6] && full_band_bpf_3 >= &word_19B36C15A;
    v14 = v13;
    v15 = a4 + 4 * skip_bands_WB_TBE[0];
    v16 = &a2[skip_bands_WB_TBE[0]];
    result = a9 + 9;
    v111 = 1.0e-10;
    v17 = 0.0;
    v18 = 0.0;
LABEL_16:
    if ((v10 & 1) == 0)
    {
      v18 = 1.0e-10;
      v17 = 1.0e-10;
    }

    v19 = &skip_bands_WB_TBE[v10];
    if (v10)
    {
      if (v19 >= skip_bands_WB_TBE && v19 + 1 <= full_band_bpf_3 && v19 <= v19 + 1)
      {
        v21 = 0;
        v22 = *v19;
        v23 = a4 + 4 * v22;
        v24 = &a2[v22];
        while (1)
        {
          v25 = &v24[v21];
          v26 = &v24[v21 + 1];
          v27 = &v24[v21] < a2 || v26 > a3;
          v28 = v27 || v25 > v26;
          v29 = &a9[v21 + 1];
          v30 = &a9[v21 + 2];
          v31 = !v28 && v29 >= a9;
          v32 = !v31 || v30 > a10;
          v33 = v32 || v29 > v30;
          v34 = (v23 + v21 * 4);
          v35 = v23 + v21 * 4 + 4;
          v36 = !v33 && v34 >= a4;
          v37 = !v36 || v35 > a5;
          if (v37 || v34 > v35)
          {
            break;
          }

          v17 = v17 + ((*v25 * *v29) * (*v25 * *v29));
          v18 = v18 + ((*v29 * *v34) * (*v29 * *v34));
          if (++v21 == 10)
          {
            goto LABEL_98;
          }
        }
      }
    }

    else if (v12)
    {
      v39 = 0;
      v40 = a9 + 2;
      while (1)
      {
        v41 = &v16[v39];
        v42 = &v16[v39 + 1];
        v43 = &v16[v39] < a2 || v42 > a3;
        v44 = v43 || v41 > v42;
        v45 = (v40 + 1);
        v46 = !v44 && v40 >= a9;
        v47 = !v46 || v45 > a10;
        v48 = v47 || v40 > v45;
        v49 = (v15 + v39 * 4);
        v50 = v15 + v39 * 4 + 4;
        v51 = !v48 && v49 >= a4;
        v52 = !v51 || v50 > a5;
        if (v52 || v49 > v50)
        {
          break;
        }

        v54 = *v40;
        v40 += 2;
        v17 = v17 + ((*v41 * v54) * (*v41 * v54));
        v18 = v18 + ((v54 * *v49) * (v54 * *v49));
        if (++v39 == 5)
        {
          v55 = 0;
          while (1)
          {
            v56 = &v16[v55 + 5];
            v57 = &v16[v55 + 6];
            v58 = v56 < a2 || v57 > a3;
            v59 = v58 || v56 > v57;
            v60 = (v15 + v55 * 4 + 20);
            v61 = v15 + v55 * 4 + 24;
            v62 = !v59 && v60 >= a4;
            v63 = !v62 || v61 > a5;
            if (v63 || v60 > v61)
            {
              goto LABEL_255;
            }

            v17 = v17 + (*v56 * *v56);
            v18 = v18 + (*v60 * *v60);
            if (++v55 == 5)
            {
LABEL_98:
              if (v10 == 7)
              {
                if (v14)
                {
                  v65 = 0;
                  v66 = a9 + 8;
                  while (1)
                  {
                    v67 = &a2[v65 + 80];
                    v68 = &a2[v65 + 81];
                    v69 = v67 < a2 || v68 > a3;
                    v70 = v69 || v67 > v68;
                    v71 = (v66 + 1);
                    v72 = !v70 && v66 >= a9;
                    v73 = !v72 || v71 > a10;
                    v74 = v73 || v66 > v71;
                    v75 = (a4 + v65 * 4 + 320);
                    v76 = a4 + v65 * 4 + 324;
                    v77 = !v74 && v75 >= a4;
                    v78 = !v77 || v76 > a5;
                    if (v78 || v75 > v76)
                    {
                      break;
                    }

                    v80 = *v66;
                    v66 -= 2;
                    v17 = v17 + ((*v67 * v80) * (*v67 * v80));
                    v18 = v18 + ((v80 * *v75) * (v80 * *v75));
                    if (++v65 == 5)
                    {
                      goto LABEL_158;
                    }
                  }
                }
              }

              else if (v19 >= skip_bands_WB_TBE && v19 + 1 <= full_band_bpf_3 && v19 <= v19 + 1)
              {
                v81 = 0;
                v82 = *v19;
                v83 = a4 + 4 * v82;
                v84 = &a2[v82];
                v85 = a9 + 9;
                while (1)
                {
                  v86 = &v84[v81 + 10];
                  v87 = &v84[v81 + 11];
                  v88 = v86 < a2 || v87 > a3;
                  v89 = v88 || v86 > v87;
                  v90 = (v85 + 1);
                  v91 = !v89 && v85 >= a9;
                  v92 = !v91 || v90 > a10;
                  v93 = v92 || v85 > v90;
                  v94 = (v83 + v81 * 4 + 40);
                  v95 = v83 + v81 * 4 + 44;
                  v96 = !v93 && v94 >= a4;
                  v97 = !v96 || v95 > a5;
                  if (v97 || v94 > v95)
                  {
                    break;
                  }

                  v99 = *v85--;
                  v17 = v17 + ((*v86 * v99) * (*v86 * v99));
                  v18 = v18 + ((v99 * *v94) * (v99 * *v94));
                  if (++v81 == 10)
                  {
LABEL_158:
                    if (v10)
                    {
                      v100 = &a6[v10 >> 1];
                      if (v100 < a6 || (v100 + 1) > a7 || v100 > v100 + 1)
                      {
                        goto LABEL_255;
                      }

                      v101 = sqrtf(v17 / v18);
                      if (v18 == 0.0)
                      {
                        v101 = 0.0;
                      }

                      *v100 = v101;
                      v111 = v111 + (v101 * v101);
                    }

                    if (++v10 != 8)
                    {
                      goto LABEL_16;
                    }

LABEL_247:
                    v168 = sqrtf(1.0 / v111);
                    v169 = v111 == 0.0;
                    v170 = 0.0;
                    if (!v169)
                    {
                      v170 = v168;
                    }

                    v171 = 4;
                    for (i = a6; i >= a6 && (i + 1) <= a7 && i <= i + 1; ++i)
                    {
                      *i = v170 * *i;
                      if (!--v171)
                      {
                        return result;
                      }
                    }

                    goto LABEL_255;
                  }
                }
              }

              goto LABEL_255;
            }
          }
        }
      }
    }
  }

  else
  {
    v102 = 0;
    v103 = 4 * (a1 & 0x3FFF) - a1;
    v104 = a1;
    v105 = 4 * (a1 & 0x3FFF);
    v106 = -a1;
    v107 = &a9[a1 - 1];
    v108 = 16 * (a1 & 0x3FFF);
    result = a2;
    v110 = a4;
    v111 = 1.0e-10;
LABEL_167:
    v112 = 0;
    v113 = v102 * v105;
    v114 = a9 + 1;
    v115 = v104;
    v116 = 1.0e-10;
    v117 = 1.0e-10;
    while (1)
    {
      v118 = v113 + (v112 >> 32);
      v119 = &a2[v118];
      v120 = (v119 + 1);
      v121 = v119 < a2 || v120 > a3;
      v122 = v121 || v119 > v120;
      v123 = (v114 + 1);
      v124 = !v122 && v114 >= a9;
      v125 = !v124 || v123 > a10;
      v126 = v125 || v114 > v123;
      v127 = (a4 + 4 * v118);
      v128 = (v127 + 1);
      v129 = !v126 && v127 >= a4;
      v130 = !v129 || v128 > a5;
      if (v130 || v127 > v128)
      {
        break;
      }

      v132 = *v114++;
      v116 = v116 + ((*v119 * v132) * (*v119 * v132));
      v117 = v117 + ((v132 * *v127) * (v132 * *v127));
      v112 += 0x100000000;
      if (!--v115)
      {
        v133 = 0;
        v134 = 0;
        v135 = v113 + v104;
        while (1)
        {
          v136 = v135 + v133;
          v137 = &a2[v136];
          v138 = (v137 + 1);
          v139 = v137 < a2 || v138 > a3;
          v140 = v139 || v137 > v138;
          v141 = (a4 + 4 * v136);
          v142 = (v141 + 1);
          v143 = !v140 && v141 >= a4;
          v144 = !v143 || v142 > a5;
          if (v144 || v141 > v142)
          {
            goto LABEL_255;
          }

          v116 = v116 + (*v137 * *v137);
          v117 = v117 + (*v141 * *v141);
          v133 = ++v134;
          if (v103 <= v134)
          {
            v146 = v102 + 1;
            v147 = result;
            v148 = v110;
            v149 = v107;
            v150 = v106;
            while (1)
            {
              v151 = &v147[v108 / 4];
              v152 = &v147[v108 / 4 + 1];
              v153 = &v147[v108 / 4] < a2 || v152 > a3;
              v154 = v153 || v151 > v152;
              v155 = (v149 + 1);
              v156 = !v154 && v149 >= a9;
              v157 = !v156 || v155 > a10;
              v158 = v157 || v149 > v155;
              v159 = (v148 + v108);
              v160 = v148 + v108 + 4;
              v161 = !v158 && v159 >= a4;
              v162 = !v161 || v160 > a5;
              if (v162 || v159 > v160)
              {
                goto LABEL_255;
              }

              v164 = *v149--;
              v116 = v116 + ((*v151 * v164) * (*v151 * v164));
              v117 = v117 + ((v164 * *v159) * (v164 * *v159));
              v148 += 4;
              ++v147;
              v13 = __CFADD__(v150++, 1);
              if (v13)
              {
                v165 = &a6[v102];
                if (v165 < a6 || (v165 + 1) > a7 || v165 > v165 + 1)
                {
                  goto LABEL_255;
                }

                v166 = sqrtf(v116 / v117);
                if (v117 == 0.0)
                {
                  v167 = 0.0;
                }

                else
                {
                  v167 = v166;
                }

                *v165 = v167;
                v111 = v111 + (v167 * v167);
                v110 += v108;
                result = (result + v108);
                v102 = v146;
                if (v146 != 4)
                {
                  goto LABEL_167;
                }

                goto LABEL_247;
              }
            }
          }
        }
      }
    }
  }

LABEL_255:
  __break(0x5519u);
  return result;
}

float *pow_off_pk(float *result, int a2, __int16 a3)
{
  if (result + 1 >= result)
  {
    v3 = &result[a2];
    if (result + 1 <= v3)
    {
      v4 = 0;
      v5 = *result * *result;
      LOWORD(v6) = 1;
      while (1)
      {
        v7 = &result[v6];
        v8 = v7 + 1;
        v9 = v7 < result || v8 > v3;
        v10 = v9 || v7 >= v8;
        v11 = &result[v4];
        v12 = v11 + 1;
        v13 = !v10 && v11 >= result;
        v14 = !v13 || v12 > v3;
        if (v14 || v11 >= v12)
        {
          break;
        }

        v5 = v5 + (*v7 * *v7);
        if (*v7 > *v11)
        {
          v4 = v6;
        }

        v6 = (v6 + a3);
        if (v6 >= a2)
        {
          v16 = &result[v4];
          v17 = v16 + 1;
          if (v16 < result || v17 > v3 || v16 >= v17)
          {
            break;
          }

          return result;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

void QuantizeSHBsubgains(_WORD *a1, float *a2, unint64_t a3, int a4)
{
  v63[1] = *MEMORY[0x1E69E9840];
  *&v7 = -1;
  *(&v7 + 1) = -1;
  __C[2] = v7;
  __C[3] = v7;
  __C[0] = v7;
  __C[1] = v7;
  if (a4 == 5)
  {
    __A = 1.0;
    vDSP_vfill(&__A, __C, 1, 4uLL);
    for (i = 0; i != 4; ++i)
    {
      v9 = &a2[i];
      v10 = &a2[i + 1];
      v12 = &a2[i] < a2 || v10 > a3 || v9 > v10;
      v13 = v9 + 4;
      v14 = (v9 + 5);
      if (v12 || v13 < a2 || v14 > a3 || v13 > v14)
      {
        goto LABEL_99;
      }

      v18 = log10(*v9);
      *v13 = v18 * 20.0;
    }

    if (a2 + 4 >= a2)
    {
      v19 = closest_centroid(a2 + 4, a3, __C, v63, HBCB_SubGain5bit, SHBCB_FrameGain64, 32, 4u);
      v20 = &HBCB_SubGain5bit[16 * v19];
      if (v20 >= HBCB_SubGain5bit && a3 >= a2 && v20 <= SHBCB_FrameGain64 && v19 != 32 && a3 - a2 > 0xF)
      {
        *a2 = *v20;
        push_indice(a1, 1446, v19, 5);
        for (j = 0; j != 4; ++j)
        {
          v22 = &a2[j];
          v23 = &a2[j + 1];
          if (&a2[j] < a2 || v23 > a3 || v22 > v23)
          {
            goto LABEL_99;
          }

          v26 = __exp10((*v22 / 20.0));
          *v22 = v26;
        }

        v27 = 7;
        while (1)
        {
          v28 = &a2[v27 >> 1];
          v29 = (v28 + 1);
          v30 = v28 < a2 || v29 > a3;
          v31 = v30 || v28 > v29;
          v32 = &a2[v27];
          v33 = (v32 + 1);
          v34 = !v31 && v32 >= a2;
          v35 = !v34 || v33 > a3;
          if (v35 || v32 > v33)
          {
            break;
          }

          *v32 = *v28;
          v37 = v27-- == 0;
          if (v37)
          {
            return;
          }
        }
      }
    }

    goto LABEL_99;
  }

  for (k = 0; k != 4; ++k)
  {
    v39 = &a2[k];
    v40 = &a2[k + 1];
    if (&a2[k] < a2 || v40 > a3 || v39 > v40)
    {
      goto LABEL_99;
    }

    v43 = log10((*v39 + 0.001));
    *v39 = v43;
  }

  if (a3 < a2 || (a3 - a2) < 13)
  {
LABEL_99:
    __break(0x5519u);
  }

  v44 = vquant(a2, 0, 0, a2, SHBCB_SubGain5bit, mirror_point_q_cb, 4u, 32);
  for (m = 0; m != 4; ++m)
  {
    v46 = &a2[m];
    v47 = &a2[m + 1];
    if (&a2[m] < a2 || v47 > a3 || v46 > v47)
    {
      goto LABEL_99;
    }

    v50 = __exp10(*v46);
    *v46 = v50;
  }

  v51 = 15;
  do
  {
    v52 = (a2 + (v51 & 0xFFFC));
    v53 = (v52 + 1);
    v55 = v52 < a2 || v53 > a3 || v52 > v53;
    v56 = &a2[v51];
    v57 = (v56 + 1);
    if (v55 || v56 < a2 || v57 > a3 || v56 > v57)
    {
      goto LABEL_99;
    }

    *v56 = *v52;
    v37 = v51-- == 0;
  }

  while (!v37);
  if (*a1 == 2)
  {
    a1[28615] = v44;
  }

  else
  {

    push_indice(a1, 1446, v44, 5);
  }
}

unint64_t EstimateSHBFrameGain(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, float *a6, unint64_t a7, float *a8, unint64_t a9, unint64_t a10, float *a11, unint64_t a12)
{
  v16 = a1;
  v212[0] = *MEMORY[0x1E69E9840];
  if (a1 == 10)
  {
    v17 = skip_bands_WB_TBE;
    v203 = full_band_bpf_3;
    v208 = 5;
    v18 = 80;
  }

  else
  {
    v17 = skip_bands_SWB_TBE;
    v203 = skip_bands_WB_TBE;
    v208 = 20;
    v18 = 320;
  }

  v207 = v18;
  memset(__b, 255, sizeof(__b));
  __A = 0.0;
  v206 = v208 + v207;
  vDSP_vfill(&__A, __b, 1, (v208 + v207));
  if (v16 == 10)
  {
    v19 = 0;
    v20 = (a6 + 1) <= a7 && a6 + 1 >= a6;
    v21 = !v20;
    v22 = a11 + 2;
    v23 = a3;
    do
    {
      if ((v22 + 1) <= a12 && v22 <= v22 + 1 && v22 >= a11)
      {
        v26 = v21;
      }

      else
      {
        v26 = 1;
      }

      if ((v26 & 1) != 0 || v17 + 1 > v203)
      {
        goto LABEL_340;
      }

      v27 = *v17;
      v28 = v19 + v27;
      v29 = (a4 + 4 * v28);
      v30 = (v29 + 1);
      v31 = v29 < a4 || v30 > a5;
      v32 = v31 || v29 > v30;
      v33 = &__b[v28];
      v34 = v33 + 1;
      v35 = !v32 && v33 >= __b;
      v36 = !v35 || v34 > v212;
      if (v36 || v33 > v34)
      {
        goto LABEL_340;
      }

      *v33 = (*v22 * *a6) * *v29;
      v38 = v19 + v27 + 5;
      v39 = (a4 + 4 * v38);
      if (v39 < a4)
      {
        goto LABEL_340;
      }

      if ((v39 + 1) > a5)
      {
        goto LABEL_340;
      }

      if (v39 > v39 + 1)
      {
        goto LABEL_340;
      }

      v40 = &__b[v38];
      if (v40 < __b || v40 + 1 > v212 || v40 > v40 + 1)
      {
        goto LABEL_340;
      }

      *v40 = *v39 * *a6;
      ++v19;
      v22 += 2;
    }

    while (v19 != 5);
    for (i = 1; i != 8; ++i)
    {
      v42 = 0;
      v43 = 0;
      v44 = &a6[i];
      v47 = (v44 + 1) <= a7 && v44 <= v44 + 1 && v44 >= a6;
      v48 = &v17[i];
      v51 = v48 + 1 <= v203 && v48 <= v48 + 1 && v48 >= v17;
      v52 = 0x3FFFFFFFFFFFFFF6;
      do
      {
        v53 = &a11[v52 + 11];
        v54 = &a11[v52 + 12];
        if (v53 < a11 || v54 > a12 || v53 > v54)
        {
          goto LABEL_340;
        }

        if (!v47)
        {
          goto LABEL_340;
        }

        v57 = &a11[v42 + 9];
        if (v57 < a11)
        {
          goto LABEL_340;
        }

        v58 = &a11[v42 + 10];
        if (v58 > a12)
        {
          goto LABEL_340;
        }

        if (v57 > v58)
        {
          goto LABEL_340;
        }

        if (!v51)
        {
          goto LABEL_340;
        }

        v59 = v43 + *v48;
        result = a4 + 4 * v59;
        if (result < a4)
        {
          goto LABEL_340;
        }

        if (result + 4 > a5)
        {
          goto LABEL_340;
        }

        if (result > result + 4)
        {
          goto LABEL_340;
        }

        v61 = &__b[v59];
        if (v61 < __b || v61 + 1 > v212 || v61 > v61 + 1)
        {
          goto LABEL_340;
        }

        *v61 = ((*v57 * *(v44 - 1)) + (a11[++v43] * *v44)) * *result;
        --v42;
        ++v52;
      }

      while (v52 * 4);
    }

    v62 = 0;
    v63 = a6 + 7;
    v66 = (a6 + 8) > a7 || v63 > a6 + 8 || v63 < a6;
    v68 = v17 + 8 >= v17 && v17 + 9 <= v203;
    v69 = a11 + 8;
    while (1)
    {
      v70 = (v69 + 1) > a12 || v69 > v69 + 1;
      v71 = !v70 && v69 >= a11;
      v72 = !v71 || v66;
      if (v72 || !v68)
      {
        break;
      }

      v73 = v62 + v17[8];
      v74 = (a4 + 4 * v73);
      v75 = (v74 + 1);
      v76 = v74 < a4 || v75 > a5;
      v77 = v76 || v74 > v75;
      v78 = &__b[v73];
      v79 = v78 + 1;
      v80 = !v77 && v78 >= __b;
      v81 = !v80 || v79 > v212;
      if (v81 || v78 > v79)
      {
        break;
      }

      v83 = *v69;
      v69 -= 2;
      *v78 = (v83 * *v63) * *v74;
      if (++v62 == 5)
      {
        goto LABEL_264;
      }
    }

LABEL_340:
    __break(0x5519u);
  }

  v84 = 0;
  v85 = v16;
  v87 = (a6 + 1) > a7 || a6 + 1 < a6;
  v88 = v16;
  v89 = a11 + 1;
  v90 = v16;
  v23 = a3;
  do
  {
    v91 = (a4 + (v84 >> 46));
    v92 = (v91 + 1);
    if (v91 < a4 || v92 > a5 || v91 > v92)
    {
      goto LABEL_340;
    }

    v95 = (v89 + 1) > a12 || v89 > v89 + 1;
    v96 = !v95 && v89 >= a11;
    if (!v96 || v87)
    {
      goto LABEL_340;
    }

    v98 = &__b[v84 >> 48];
    if (v98 < __b || v98 + 1 > v212 || v98 > v98 + 1)
    {
      goto LABEL_340;
    }

    v99 = *v89++;
    *v98 = (*v91 * v99) * *a6;
    v84 += 0x1000000000000;
    --v90;
  }

  while (v90);
  v100 = 0;
  v101 = (4 * v16) - v16;
  do
  {
    v102 = 0;
    v103 = &a6[4 * v100];
    do
    {
      v104 = (a4 + 4 * v16);
      v105 = (v104 + 1);
      v107 = v104 < a4 || v105 > a5 || v104 > v105;
      v108 = &__b[v16];
      v109 = v108 + 1;
      if (v107 || v108 < __b || v109 > v212 || v108 > v109)
      {
        goto LABEL_340;
      }

      __b[v16] = *v104 * *v103;
      LOWORD(v16) = v16 + 1;
      ++v102;
    }

    while (v101 > v102);
    v113 = v103 + 4;
    v116 = (v103 + 5) > a7 || v113 > v103 + 5 || v113 < a6;
    LODWORD(result) = v85 - 1;
    v117 = a11 + 1;
    v118 = -v88;
    do
    {
      v119 = (a4 + 4 * v16);
      v120 = (v119 + 1);
      if (v119 < a4 || v120 > a5 || v119 > v120)
      {
        goto LABEL_340;
      }

      v123 = &a11[result];
      if (v123 < a11 || (v123 + 1) > a12 || v123 > v123 + 1)
      {
        goto LABEL_340;
      }

      v124 = (v117 + 1) > a12 || v117 > v117 + 1;
      v125 = !v124 && v117 >= a11;
      if (!v125 || v116)
      {
        goto LABEL_340;
      }

      v127 = &__b[v16];
      if (v127 < __b || v127 + 1 > v212 || v127 > v127 + 1)
      {
        goto LABEL_340;
      }

      v128 = *v117++;
      __b[v16] = *v119 * ((v128 * *v113) + (*v123 * *v103));
      LOWORD(v16) = v16 + 1;
      result = (result - 1);
      v20 = __CFADD__(v118++, 1);
    }

    while (!v20);
    ++v100;
  }

  while (v100 != 3);
  v129 = 0;
  v130 = a6 + 12;
  v133 = (a6 + 13) > a7 || v130 > a6 + 13 || v130 < a6;
  do
  {
    v134 = (a4 + 4 * v16);
    v137 = (v134 + 1) > a5 || v134 > v134 + 1 || v134 < a4 || v133;
    if (v137)
    {
      goto LABEL_340;
    }

    v138 = &__b[v16];
    if (v138 < __b || v138 + 1 > v212 || v138 > v138 + 1)
    {
      goto LABEL_340;
    }

    __b[v16] = *v134 * *v130;
    LOWORD(v16) = v16 + 1;
    ++v129;
  }

  while (v101 > v129);
  v139 = -65536;
  v140 = v85;
  do
  {
    v141 = (a4 + 4 * v16);
    v142 = (v141 + 1);
    v144 = v141 < a4 || v142 > a5 || v141 > v142;
    v145 = &a11[v85 + (v139 >> 16)];
    v146 = (v145 + 1);
    v149 = v144 || v145 < a11 || v146 > a12 || v145 > v146;
    v150 = &__b[v16];
    v151 = v150 + 1;
    if (v149 || v150 < __b || v151 > v212 || v150 > v151)
    {
      goto LABEL_340;
    }

    __b[v16] = (*v141 * *v145) * *v130;
    LOWORD(v16) = v16 + 1;
    v139 -= 0x10000;
    --v140;
  }

  while (v140);
LABEL_264:
  v155 = 0;
  v156 = 1.0e-10;
  v157 = 1.0e-10;
  do
  {
    v158 = v155;
    v159 = (a2 + 4 * v155);
    v160 = v159 + 1;
    v162 = v159 < a2 || v160 > v23 || v159 > v160;
    v163 = (a9 + 4 * v158);
    v164 = (v163 + 1);
    v167 = v162 || v163 < a9 || v164 > a10 || v163 > v164;
    v168 = &__b[v158];
    v169 = v168 + 1;
    if (v167 || v168 < __b || v169 > v212 || v168 > v169)
    {
      goto LABEL_340;
    }

    v156 = v156 + ((*v159 * *v163) * (*v159 * *v163));
    v173 = *v163 * __b[v158];
    v157 = v157 + (v173 * v173);
    v155 = v158 + 1;
  }

  while (v208 > (v158 + 1));
  v174 = v155;
  if (v207 > v155)
  {
    do
    {
      v175 = v155;
      v176 = (a2 + 4 * v155);
      v177 = v176 + 1;
      v179 = v176 < a2 || v177 > v23 || v176 > v177;
      v180 = &__b[v175];
      v181 = v180 + 1;
      if (v179 || v180 < __b || v181 > v212 || v180 > v181)
      {
        goto LABEL_340;
      }

      v156 = v156 + (*v176 * *v176);
      v157 = v157 + (__b[v175] * __b[v175]);
      v155 = v175 + 1;
    }

    while (v207 > (v175 + 1));
    v174 = v155;
  }

  for (j = v208 + v207; v206 > v174; j = v208 + v207)
  {
    v186 = v155;
    v187 = (a2 + 4 * v155);
    v188 = v187 + 1;
    v189 = v187 < a2 || v188 > v23;
    v190 = v189 || v187 > v188;
    v191 = (a9 + 4 * (j + ~v174));
    v192 = (v191 + 1);
    v193 = !v190 && v191 >= a9;
    v194 = !v193 || v192 > a10;
    v195 = v194 || v191 > v192;
    v196 = &__b[v186];
    v197 = v196 + 1;
    v198 = !v195 && v196 >= __b;
    v199 = !v198 || v197 > v212;
    if (v199 || v196 > v197)
    {
      goto LABEL_340;
    }

    v156 = v156 + ((*v187 * *v191) * (*v187 * *v191));
    v201 = *v191 * __b[v186];
    v157 = v157 + (v201 * v201);
    v155 = v186 + 1;
    v174 = (v186 + 1);
  }

  v202 = sqrtf(v156 / v157);
  if (v157 == 0.0)
  {
    v202 = 0.0;
  }

  *a8 = v202;
  return result;
}

void QuantizeSHBframegain(_WORD *a1, float *a2, int a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1 + 28616;
  v30 = NAN;
  if (a3 == 5)
  {
    if (a2 + 1 < a2)
    {
      goto LABEL_45;
    }

    v13 = *a2;
    if (v13 <= 0.000001)
    {
      v14 = 501.19;
    }

    else
    {
      v14 = pow(v13, -0.899999976);
    }

    v32 = -21846;
    v29 = v14;
    if (a4 == 350)
    {
      singlevectortest_gain(a2, 16, &v32, &v29, &v30, &v30, v31, a8, SHBCB_FrameGain16, window_wb);
      LOWORD(v17) = v32;
      if (v30 <= (*a2 * 1.06) || v32 < 1)
      {
        goto LABEL_31;
      }

      LOWORD(v17) = v32 - 1;
      v27 = &SHBCB_FrameGain16[(v32 - 1)];
      if (v27 >= SHBCB_FrameGain16 && v27 + 1 <= window_wb && v27 <= v27 + 1)
      {
        v30 = *v27;
LABEL_31:
        v11[9] = v17;
        goto LABEL_34;
      }

LABEL_45:
      __break(0x5519u);
      return;
    }

    singlevectortest_gain(a2, 64, &v32, &v29, &v30, &v30, v31, a8, SHBCB_FrameGain64, lsf_grid);
    LOWORD(v17) = v32;
    v24 = a1;
    v23 = v32;
    v25 = 6;
LABEL_33:
    push_indice(v24, 1447, v23, v25);
    goto LABEL_34;
  }

  v15 = log10((*a2 + 0.001));
  v16 = ((v15 + 1.0) / 0.15) + 0.5;
  if (v16 > 31.0)
  {
    v16 = 31.0;
  }

  if (v16 < 0.0)
  {
    v16 = 0.0;
  }

  v17 = v16;
  v18 = v15 + 0.074250003;
  v19 = ((v16 * 0.15) + -1.0);
  if (v18 < v19 && v17 != 0)
  {
    do
    {
      LOWORD(v17) = v17 - 1;
      v19 = ((v17 * 0.15) + -1.0);
    }

    while (v18 < v19 && v17 != 0);
  }

  v22 = __exp10(v19);
  v30 = v22;
  if (*a1 != 2)
  {
    v23 = v17;
    v24 = a1;
    v25 = 5;
    goto LABEL_33;
  }

  *v11 = v17;
LABEL_34:
  *a5 = v17;
  if (a1[33731])
  {
    if (a1[33735] != 7)
    {
      v28 = *a2;
      if (*a2 <= 1.25)
      {
        LOWORD(v17) = 0;
      }

      else if (v28 <= 3.0)
      {
        LOWORD(v17) = 1;
      }

      else if (v28 <= 6.0)
      {
        LOWORD(v17) = 2;
      }

      else
      {
        LOWORD(v17) = 3;
      }
    }

    *a5 = v17;
  }

  *a2 = v30;
}

uint64_t singlevectortest_gain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10)
{
  v10 = MEMORY[0x1EEE9AC00](a1);
  v69 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v10;
  v72[0] = *MEMORY[0x1E69E9840];
  v70 = 0;
  memset(__b, 255, sizeof(__b));
  v23 = 0;
  v24 = 0;
  v26 = (v17 + 1) > v15 || v17 + 1 < v17;
  v27 = 1.0e10;
  do
  {
    v28 = &__b[4 * v23];
    v29 = v28 + 4;
    v31 = v28 < __b || v29 > v72 || v28 > v29;
    if (v31 || ((*&__b[4 * v23] = 0, v32 = (a9 + 4 * v23), (v32 + 1) <= a10) ? (v33 = v32 > v32 + 1) : (v33 = 1), !v33 ? (v34 = v32 >= a9) : (v34 = 0), v34 ? (v35 = v22 + 1 >= v22) : (v35 = 0), !v35 ? (v36 = 1) : (v36 = v26), v36 == 1))
    {
      LOWORD(v70) = v24;
      goto LABEL_100;
    }

    v37 = *v22;
    v38 = ((*v17 * (*v22 - *v32)) * (*v22 - *v32)) + 0.0;
    *&__b[4 * v23] = v38;
    if (v38 < v27)
    {
      v24 = v23;
      v27 = v38;
    }

    ++v23;
  }

  while (v23 != v21);
  LOWORD(v70) = v24;
  v39 = &__b[4 * v24];
  v40 = v39 + 1;
  if (v39 < __b || v40 > v72 || v39 > v40)
  {
LABEL_100:
    __break(0x5519u);
  }

  *v39 = 1343554297;
  for (i = 1; i != 4; ++i)
  {
    v44 = 0;
    v45 = &__b[2 * i - 8];
    v48 = v45 + 1 <= __b && v45 <= v45 + 1 && v45 >= &v70;
    v49 = 1.0e10;
    do
    {
      result = 4 * v44;
      while (1)
      {
        v51 = &__b[result + 4];
        if (&__b[result] < __b || v51 > v72 || &__b[result] > v51)
        {
          goto LABEL_100;
        }

        v54 = *&__b[4 * v44];
        if (v54 < v49)
        {
          break;
        }

        ++v44;
        result += 4;
        if (v21 == v44)
        {
          if (v48)
          {
            goto LABEL_65;
          }

          goto LABEL_100;
        }
      }

      if (!v48)
      {
        goto LABEL_100;
      }

      *v45 = v44;
      result = v44 + 1;
      v49 = v54;
    }

    while (v21 - 1 != v44++);
LABEL_65:
    v56 = &__b[4 * *v45];
    v57 = v56 + 1;
    if (v56 < __b || v57 > v72 || v56 > v57)
    {
      goto LABEL_100;
    }

    *v56 = 1343554297;
  }

  v60 = (a9 + 4 * v70);
  if (v60 < a9)
  {
    goto LABEL_100;
  }

  if (v69 < v13)
  {
    goto LABEL_100;
  }

  if (a10 < v60)
  {
    goto LABEL_100;
  }

  if (a10 - v60 < 4)
  {
    goto LABEL_100;
  }

  if (v69 - v13 <= 3)
  {
    goto LABEL_100;
  }

  *v13 = *v60;
  if (v13 + 1 < v13)
  {
    goto LABEL_100;
  }

  v61 = 0;
  v62 = 0;
  *v19 = v70;
  v63 = (v37 + 0.0) * 1.1;
  do
  {
    if (!v62)
    {
      v64 = (a9 + 4 * *&__b[v61 - 8]);
      v65 = a10 - v64;
      if (a10 < v64 || v64 < a9 || v65 < 1)
      {
        goto LABEL_100;
      }

      if (v63 < (*v64 + 0.0))
      {
        v62 = 0;
        goto LABEL_97;
      }

      if (a10 < v64 || v65 <= 3)
      {
        goto LABEL_100;
      }

      *v13 = *v64;
      *v19 = *&__b[v61 - 8];
    }

    v62 = 1;
LABEL_97:
    v61 += 2;
  }

  while (v61 != 8);
  return result;
}

unint64_t vquant(unint64_t result, float *a2, unint64_t a3, float *a4, unint64_t a5, unint64_t a6, unsigned int a7, int a8)
{
  v8 = result;
  v9 = a7;
  if (a2)
  {
    v10 = a2;
    v11 = result;
    v12 = a7;
    while (v10 >= a2 && (v10 + 1) <= a3 && v10 <= v10 + 1)
    {
      v13 = *v10++;
      *v11 = *v11 - v13;
      ++v11;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v14 = 0;
    result = 0;
    v15 = 0;
    v16 = 1.0e16;
LABEL_8:
    v17 = (a5 + 4 * v15);
    v15 += a7;
    v18 = 0.0;
    v19 = v8;
    v20 = a7;
    while (v17 >= a5 && (v17 + 1) <= a6 && v17 <= v17 + 1)
    {
      v21 = *v19++;
      v22 = v21;
      v23 = *v17++;
      v18 = v18 + ((v22 - v23) * (v22 - v23));
      if (!--v20)
      {
        if (v18 >= v16)
        {
          result = result;
        }

        else
        {
          result = v14;
        }

        if (v18 < v16)
        {
          v16 = v18;
        }

        if (++v14 != a8)
        {
          goto LABEL_8;
        }

        if (!a4)
        {
          return result;
        }

        v24 = (a5 + 4 * (result * a7));
        v25 = a4;
        v26 = a7;
        while (v24 >= a5 && (v24 + 1) <= a6 && v24 <= v24 + 1)
        {
          v27 = *v24++;
          *v25++ = v27;
          if (!--v26)
          {
            if (!a2)
            {
              return result;
            }

            v28 = a2;
            while (v28 >= a2 && (v28 + 1) <= a3 && v28 <= v28 + 1)
            {
              v29 = *v28++;
              *a4 = v29 + *a4;
              ++a4;
              if (!--v9)
              {
                return result;
              }
            }

            goto LABEL_32;
          }
        }

        break;
      }
    }
  }

LABEL_32:
  __break(0x5519u);
  return result;
}

char *calc_st_filt(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5, unint64_t a6, unint64_t a7, int a8, __int16 a9)
{
  v26[1] = *MEMORY[0x1E69E9840];
  *&v12 = -1;
  *(&v12 + 1) = -1;
  v25[3] = v12;
  v25[4] = v12;
  v25[1] = v12;
  v25[2] = v12;
  v25[0] = v12;
  v13 = a7 - a6;
  if (a9 != 8)
  {
    if (a7 >= a6 && v13 >= 61)
    {
      goto LABEL_7;
    }

LABEL_21:
    __break(0x5519u);
  }

  if (a7 < a6 || v13 <= 36)
  {
    goto LABEL_21;
  }

LABEL_7:
  result = syn_filt(a2);
  v15 = 0;
  v16 = 0.0;
  do
  {
    v17 = vmulq_f32(v25[v15], v25[v15]);
    v16 = (((v16 + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3];
    ++v15;
  }

  while (v15 != 5);
  v18 = 0;
  v19 = 0.0;
  do
  {
    if ((v25 + v18 + 8) > v26)
    {
      goto LABEL_21;
    }

    v19 = v19 + (*(v25 + v18) * *(v25 + v18 + 4));
    v18 += 4;
  }

  while (v18 != 76);
  v20 = 0.0;
  v21 = 0.0;
  if (v16 != 0.0)
  {
    v21 = 0.0;
    if (v16 >= fabsf(v19))
    {
      v21 = -v19 / v16;
    }
  }

  v22 = 0;
  *a4 = v21;
  do
  {
    v23 = vabsq_f32(v25[v22]);
    v20 = (((v20 + v23.f32[0]) + v23.f32[1]) + v23.f32[2]) + v23.f32[3];
    ++v22;
  }

  while (v22 != 5);
  if (v20 > 1.0)
  {
    v24 = a8;
    do
    {
      *a5 = (1.0 / v20) * *a5;
      ++a5;
      --v24;
    }

    while (v24);
  }

  return result;
}

char *syn_filt(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v51 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v1;
  v53[0] = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  v16 = 4 * v12;
  result = __memcpy_chk();
  if (result > &result[v16])
  {
    goto LABEL_43;
  }

  v18 = (__b + 4 * v12);
  if (v12 == 16)
  {
    v19 = (v15 + 4);
    if (v15 + 4 < v15)
    {
      goto LABEL_43;
    }

    if (v15 + 68 > v14)
    {
      goto LABEL_43;
    }

    if (v19 > v15 + 68)
    {
      goto LABEL_43;
    }

    v20 = v18 - 4;
    if (&v18[-4] < __b || v20 > v18)
    {
      goto LABEL_43;
    }

    if (v6 >= 1)
    {
      v21 = vrev64q_s32(*v19);
      v22 = vextq_s8(v21, v21, 8uLL);
      v23 = vrev64q_s32(*(v15 + 20));
      v24 = vextq_s8(v23, v23, 8uLL);
      v25 = vrev64q_s32(*(v15 + 36));
      v26 = vextq_s8(v25, v25, 8uLL);
      v27 = vrev64q_s32(*(v15 + 52));
      v28 = vextq_s8(v27, v27, 8uLL);
      v30 = v18[-2];
      v29 = v18[-1];
      v32 = *v20;
      v31 = v18[-3];
      v33 = v6;
      v34 = &__b[4];
      do
      {
        v35 = v34->u64 + 4;
        v36 = v34 < __b || v35 > v53;
        if (v36 || v34 >= v35)
        {
          goto LABEL_43;
        }

        v38 = vaddq_f32(vmlaq_f32(vmulq_f32(v28, v32), v30, v24), vmlaq_f32(vmulq_f32(v26, v31), v29, v22));
        v39 = *v10++;
        *v38.i32 = v39 - vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL)));
        v34->i32[0] = v38.i32[0];
        v34 = (v34 + 4);
        *v8++ = v38.i32[0];
        v32 = vextq_s8(v32, v31, 4uLL);
        v31 = vextq_s8(v31, v30, 4uLL);
        v30 = vextq_s8(v30, v29, 4uLL);
        v29 = vextq_s8(v29, v22, 4uLL);
        v29.i32[3] = v38.i32[0];
      }

      while (--v33);
    }
  }

  else if (v6 >= 1)
  {
    v40 = 0;
    while (1)
    {
      v41 = v10[v40];
      v42 = 1;
      LOWORD(v43) = 1;
      do
      {
        v44 = (v15 + 4 * v42);
        v45 = v44 + 1;
        if (v44 < v15 || v45 > v14 || v44 >= v45)
        {
          goto LABEL_43;
        }

        v48 = &v18->f32[v40 - v42];
        if (v48 < __b || v48 + 1 > v53 || v48 > v48 + 1)
        {
          goto LABEL_43;
        }

        v41 = v41 - (*v44 * *v48);
        LOWORD(v42) = v43 + 1;
        v43 = (v43 + 1);
        v42 = v42;
      }

      while (v43 <= v12);
      v49 = &v18->f32[v40];
      if (v49 < __b || v49 + 1 > v53 || v49 > v49 + 1)
      {
        break;
      }

      *v49 = v41;
      *&v8[v40++] = v41;
      if (v40 == v6)
      {
        goto LABEL_37;
      }
    }

LABEL_43:
    __break(0x5519u);
  }

LABEL_37:
  if (v51)
  {
    v50 = (v18 + 4 * v6 + -4 * v12);
    if (v53 < v50)
    {
      goto LABEL_43;
    }

    if (__b > v50)
    {
      goto LABEL_43;
    }

    if (v16 > v53 - v50)
    {
      goto LABEL_43;
    }

    result = memcpy(v4, v50, 4 * v12);
    if (&v4[v16] < v4)
    {
      goto LABEL_43;
    }
  }

  return result;
}

unint64_t filt_mu(unint64_t result, unint64_t a2, float *a3, unsigned __int16 a4, int a5, float a6)
{
  v6 = &flt_19B0AF950[a6 > 0.0];
  if (a5 == 8)
  {
    v6 = (&unk_19B0AFEF8 + 4 * (a6 > 0.0));
  }

  v7 = *v6 * a6;
  v8 = 1.0 / (1.0 - fabsf(v7));
  v9 = a4;
  for (i = (result + 4); ; ++i)
  {
    v11 = (i - 1) < result || i > a2;
    v12 = v11 || i - 1 > i;
    v13 = (i + 1);
    v14 = v12 || v13 > a2;
    if (v14 || i > v13)
    {
      break;
    }

    *a3++ = v8 * ((v7 * *(i - 1)) + *i);
    if (!--v9)
    {
      return result;
    }
  }

  __break(0x5519u);
  return result;
}

float *scale_st(float *result, float *a2, float *a3, int a4, int a5)
{
  if (a4 <= 0)
  {
    v11 = *a3;
    goto LABEL_12;
  }

  v5 = flt_19B0AFF00[a5 == 8];
  v6 = a4;
  v7 = 0.0;
  v8 = a4;
  do
  {
    v9 = *result++;
    v7 = v7 + fabsf(v9);
    --v8;
  }

  while (v8);
  v10 = 0.0;
  if (v7 == 0.0)
  {
    goto LABEL_5;
  }

  v12 = a2;
  v13 = a4;
  do
  {
    v14 = *v12++;
    v10 = v10 + fabsf(v14);
    --v13;
  }

  while (v13);
  v11 = 0.0;
  if (v10 != 0.0)
  {
    v10 = flt_19B0AFF08[a5 == 8] * (v7 / v10);
LABEL_5:
    v11 = *a3;
    do
    {
      v11 = v10 + (v5 * v11);
      *a2 = v11 * *a2;
      ++a2;
      --v6;
    }

    while (v6);
  }

LABEL_12:
  *a3 = v11;
  return result;
}

float *Decimate_allpass_steep(float *result, float *a2, unint64_t a3, int a4, float *a5, unint64_t a6)
{
  v6 = a2 + 1;
  v7 = a2 + 2;
  v8 = a2 + 3;
  v11 = (a2 + 3) <= a3 && v7 <= v8 && v7 >= a2;
  if (v6 <= a3 && v6 >= a2)
  {
    v12 = a4 >> 1;
    v13 = &result[a4];
    v14 = result;
    v15 = a4 >> 1;
    v16 = a5;
    while (v14 >= result)
    {
      if (v14 + 1 > v13)
      {
        break;
      }

      if (v14 > v14 + 1)
      {
        break;
      }

      v17 = *a2 + (*v14 * 0.060565);
      *a2 = *v14 + (v17 * -0.060565);
      if (v7 > a3)
      {
        break;
      }

      v18 = *v6 + (v17 * 0.42943);
      if (fabsf(v18) < 1.0e-12)
      {
        if (v18 >= 0.0)
        {
          v19 = 1.0;
        }

        else
        {
          v19 = -1.0;
        }

        v18 = v19 * 1.0e-12;
      }

      *v6 = v17 + (v18 * -0.42943);
      if (!v11 || v16 < a5 || (v16 + 1) > a6 || v16 > v16 + 1)
      {
        break;
      }

      v20 = *v7 + (v18 * 0.80873);
      *v16++ = v20;
      *v7 = v18 + (v20 * -0.80873);
      v14 += 2;
      if (!--v15)
      {
        if (v8 >= a2)
        {
          v21 = a2 + 4;
          if ((a2 + 4) <= a3 && v8 <= v21)
          {
            v22 = a2 + 6;
            if (a2 + 6 >= a2 && (a2 + 7) <= a3 && v22 <= a2 + 7)
            {
              v23 = a2[6];
              v24 = a2[3] + (v23 * 0.22063);
              a2[3] = v23 + (v24 * -0.22063);
              v25 = a2 + 5;
              if ((a2 + 5) <= a3)
              {
                v26 = *v21 + (v24 * 0.63594);
                if (fabsf(v26) < 1.0e-12)
                {
                  v27 = 1.0;
                  if (v26 < 0.0)
                  {
                    v27 = -1.0;
                  }

                  v26 = v27 * 1.0e-12;
                }

                *v21 = v24 + (v26 * -0.63594);
                v28 = *v25 + (v26 * 0.94152);
                *v25 = v26 + (v28 * -0.94152);
                v29 = a5 + 1;
                if ((a5 + 1) <= a6 && v29 >= a5)
                {
                  v30 = 0;
                  *a5 = (*a5 + v28) * 0.5;
                  if (v12 <= 2)
                  {
                    v12 = 2;
                  }

                  v31 = 8 * v12 - 8;
                  while (1)
                  {
                    v32 = &result[v30 / 4 + 2];
                    v33 = &result[v30 / 4 + 1];
                    v34 = v33 < result || v32 > v13;
                    if (v34 || v33 > v32)
                    {
                      break;
                    }

                    v36 = *v8 + (*v33 * 0.22063);
                    *v8 = *v33 + (v36 * -0.22063);
                    v37 = *v21 + (v36 * 0.63594);
                    if (fabsf(v37) < 1.0e-12)
                    {
                      if (v37 >= 0.0)
                      {
                        v38 = 1.0;
                      }

                      else
                      {
                        v38 = -1.0;
                      }

                      v37 = v38 * 1.0e-12;
                    }

                    *v21 = v36 + (v37 * -0.63594);
                    v39 = *v25 + (v37 * 0.94152);
                    *v25 = v37 + (v39 * -0.94152);
                    if (v29 < a5 || (v29 + 1) > a6 || v29 > v29 + 1)
                    {
                      break;
                    }

                    *v29 = (*v29 + v39) * 0.5;
                    ++v29;
                    v30 += 8;
                    if (v31 == v30)
                    {
                      v40 = v13 - 1;
                      if (v13 >= 4 && v40 >= result)
                      {
                        *v22 = *v40;
                        return result;
                      }

                      goto LABEL_62;
                    }
                  }
                }
              }
            }
          }
        }

        break;
      }
    }
  }

LABEL_62:
  __break(0x5519u);
  return result;
}

float *create_random_vector(float *result, unsigned __int16 a2, __int16 *a3, int32x2_t a4)
{
  v4 = a3 + 1;
  if (a3 + 1 <= a3 + 2 && v4 >= a3)
  {
    a4.i16[0] = *a3;
    a4.i16[2] = *v4;
    v6 = vmla_s32(vdup_n_s32(0x3619u), a4, vdup_n_s32(0x7C4Du));
    v7 = v6.i32[1];
    *a3 = v6.i16[0];
    a3[1] = v6.i16[2];
    v8 = *&vabs_s32(vcvt_s32_f32(vmul_f32(vcvt_f32_s32(vshr_n_s32(vshl_n_s32(v6, 0x10uLL), 0x10uLL)), vdup_n_s32(0x3BFF9724u)))) & 0xFFFF00FFFFFF00FFLL;
    LOBYTE(v9) = BYTE4(v8);
    v10 = v8;
    if (HIDWORD(v8) == v8)
    {
      do
      {
        v7 = 31821 * v7 + 13849;
        v9 = (v7 * 0.0078);
        if (v9 < 0)
        {
          v9 = -v9;
        }
      }

      while (v9 == v8);
      *v4 = v7;
    }

    v11 = 31821 * v6.i32[0] + 13849;
    *a3 = v11;
    v12 = flt_19B0AFF18[(v11 >> 15) & 1];
    v13 = 31821 * v7 + 13849;
    v14 = flt_19B0AFF20[(v13 >> 15) & 1];
    a3[1] = v13;
    v15 = a2;
    while (1)
    {
      v16 = &gaus_dico_swb[v10];
      v17 = v16 + 1;
      v18 = v16 < gaus_dico_swb || v17 > lag_window_8k;
      v19 = v18 || v16 > v17;
      v20 = &gaus_dico_swb[v9];
      v21 = v20 + 1;
      v22 = !v19 && v20 >= gaus_dico_swb;
      v23 = !v22 || v21 > lag_window_8k;
      if (v23 || v20 > v21)
      {
        break;
      }

      *result++ = (v14 * *v20) + (v12 * *v16);
      ++v10;
      LOBYTE(v9) = v9 + 1;
      if (!--v15)
      {
        return result;
      }
    }
  }

  __break(0x5519u);
  return result;
}

float *preemph(float *result, int a2, float *a3, float a4)
{
  v4 = &result[a2];
  v5 = a2 - 1;
  v6 = &result[v5];
  v7 = v6 + 1;
  if (v6 >= result && v7 <= v4 && v6 <= v7)
  {
    v10 = *v6;
    if (v5 < 1)
    {
LABEL_20:
      if (result + 1 >= result && result + 1 <= v4)
      {
        *result = *result - (a4 * *a3);
        *a3 = v10;
        return result;
      }
    }

    else
    {
      while (1)
      {
        v11 = &result[v5];
        v12 = v11 + 1;
        v13 = v11 < result || v12 > v4;
        if (v13 || v11 > v12)
        {
          break;
        }

        v15 = &result[(v5 - 1)];
        if (v15 < result || v15 + 1 > v4 || v15 > v15 + 1)
        {
          break;
        }

        *v11 = *v11 + (-a4 * *v15);
        v16 = v5;
        LOWORD(v5) = v5 - 1;
        if (v16 <= 1)
        {
          goto LABEL_20;
        }
      }
    }
  }

  __break(0x5519u);
  return result;
}

float root_a_over_b(float a1, float a2)
{
  result = 0.0;
  if (a1 > 0.0 && a2 > 0.0)
  {
    if (fabsf(a1) == INFINITY)
    {
      return 3.4028e38;
    }

    else if (fabsf(a2) != INFINITY)
    {
      v4 = a1 + 1.0;
      v5 = 0;
      if ((a1 + 1.0) <= 1.0)
      {
        v6 = a1 + 1.0;
      }

      else
      {
        v6 = a1 + 1.0;
        do
        {
          v6 = v6 * 0.5;
          --v5;
        }

        while (v6 > 1.0);
      }

      v7 = a2 + 1.0;
      while (v6 < 0.5)
      {
        v6 = v6 + v6;
        ++v5;
      }

      v8 = (v5 & 0xFFFE);
      v9 = ldexp(1.0, v8);
      v10 = 0;
      if (v7 <= 1.0)
      {
        v11 = v7;
      }

      else
      {
        v11 = v7;
        do
        {
          v11 = v11 * 0.5;
          --v10;
        }

        while (v11 > 1.0);
      }

      v12 = v4 * v9;
      while (v11 < 0.5)
      {
        v11 = v11 + v11;
        ++v10;
      }

      v13 = (v10 & 0xFFFE);
      v14 = ldexp(1.0, v13);
      v15 = v7 * v14;
      v16 = (((((v15 * v15) * 0.4429) + (v15 * -0.8815)) + 0.7176) + (((((v15 * v15) * 1.6608) + (v15 * -3.3056)) + 2.6908) * v12)) + ((v12 * ((((v15 * v15) * -0.4695) + (v15 * 0.9346)) + -0.7609)) * v12);
      v17 = ldexp(1.0, (v13 - v8) >> 1);
      return v16 * v17;
    }
  }

  return result;
}

void decimate_2_over_3_allpass(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v42 = *MEMORY[0x1E69E9840];
  bzero(&v41[1], 0x1DF8uLL);
  v11 = 0;
  v12 = (v10 + 1);
  v13.i32[0] = *v10;
  v13.f32[1] = *v10 + *v3;
  v41[0] = vrev64_s32(vmla_f32(vmul_f32(*(v3 + 4), vdup_n_s32(0xBE2FC000)), 0x3E47F5553EC7F555, v13));
  v14 = 959;
  do
  {
    if (v12 < v10)
    {
      goto LABEL_20;
    }

    if (v12 + 1 > v10 + 960)
    {
      goto LABEL_20;
    }

    if (v12 > v12 + 1)
    {
      goto LABEL_20;
    }

    v15 = &v41[v11];
    if (&v41[v11] < v41)
    {
      goto LABEL_20;
    }

    if (&v15[1].u8[4] > &v42)
    {
      goto LABEL_20;
    }

    v16 = *v12;
    v17 = (*v41[v11].i32 * -0.17163) + ((*v12 + *(v12 - 1)) * 0.19527);
    *v41[v11 + 1].i32 = v17;
    if (&v41[v11 + 2] > &v42)
    {
      goto LABEL_20;
    }

    v18 = (*&v15->i32[1] * -0.17163) + (v16 * 0.39054);
    *&v15[1].i32[1] = v18;
    ++v12;
    ++v11;
    --v14;
  }

  while (v14);
  *v3 = v10[959];
  if (&v41[v11].u8[4] < v41)
  {
LABEL_20:
    __break(0x5519u);
  }

  v19 = 0;
  v20 = 0;
  *(v3 + 4) = v18;
  *(v3 + 8) = v17;
  v21 = v9;
  do
  {
    v22 = (v41 + v19);
    v23 = (v41 + v19 + 4);
    if (v23 > &v42)
    {
      goto LABEL_20;
    }

    v24 = v5[9];
    v25 = v5[8] + ((*v22 - v24) * 0.87204);
    v26 = v5[10];
    v27 = v24 + ((v25 - v26) * 0.43896);
    v28 = v26 + ((v27 - v5[11]) * 0.99097);
    v5[8] = *v22;
    v5[9] = v25;
    v5[10] = v27;
    v5[11] = v28;
    if (v21 < v9)
    {
      goto LABEL_20;
    }

    if ((v21 + 1) > v7)
    {
      goto LABEL_20;
    }

    if (v21 > v21 + 1)
    {
      goto LABEL_20;
    }

    *v21 = v28;
    v29 = (&v41[1] + v19);
    if (v29 > &v42)
    {
      goto LABEL_20;
    }

    v30 = v5[5];
    v31 = v5[4] + ((*v23 - v30) * 0.77881);
    v32 = v5[6];
    v33 = v30 + ((v31 - v32) * 0.21936);
    v34 = v32 + ((v33 - v5[7]) * 0.9707);
    v5[4] = *v23;
    v5[5] = v31;
    v5[6] = v33;
    v5[7] = v34;
    *v21 = v34 + *v21;
    if (&v41[1].u8[v19 + 4] > &v42)
    {
      goto LABEL_20;
    }

    v35 = v5[1];
    v36 = *v5 + ((*v29 - v35) * 0.072266);
    v37 = v5[2];
    v38 = v35 + ((v36 - v37) * 0.62698);
    v39 = v37 + ((v38 - v5[3]) * 0.93402);
    *v5 = *v29;
    v5[1] = v36;
    v5[2] = v38;
    v5[3] = v39;
    *v21 = v39 + *v21;
    v19 += 12;
    ++v21;
  }

  while (v20++ < 0x27F);
}

unint64_t cldfbSynthesis(void *a1, void *a2, unint64_t a3, unint64_t a4, int a5, int *a6)
{
  v319[1] = *MEMORY[0x1E69E9840];
  v9 = a6[1];
  v10 = *a6;
  v11 = v10;
  if (a5 < 0)
  {
    v12 = a6[1];
  }

  else if (v9 >= (a5 + v10 - 1) / v10)
  {
    v12 = (a5 + v10 - 1) / v10;
  }

  else
  {
    v12 = a6[1];
  }

  v269 = a6[36];
  v13.i64[0] = -1;
  v13.i64[1] = -1;
  v318[25] = v13;
  v318[24] = v13;
  v318[23] = v13;
  v318[22] = v13;
  v318[21] = v13;
  v318[20] = v13;
  v318[19] = v13;
  v318[18] = v13;
  v318[17] = v13;
  v318[16] = v13;
  v318[15] = v13;
  v318[14] = v13;
  v318[13] = v13;
  v318[12] = v13;
  v318[11] = v13;
  v318[10] = v13;
  v318[9] = v13;
  v318[8] = v13;
  v318[7] = v13;
  v318[6] = v13;
  v318[5] = v13;
  v318[4] = v13;
  v318[3] = v13;
  v318[2] = v13;
  v318[1] = v13;
  v317[3] = v13;
  v318[0] = v13;
  v317[1] = v13;
  v317[2] = v13;
  v316[25] = v13;
  v317[0] = v13;
  v316[23] = v13;
  v316[24] = v13;
  v316[21] = v13;
  v316[22] = v13;
  v316[19] = v13;
  v316[20] = v13;
  v316[17] = v13;
  v316[18] = v13;
  v316[15] = v13;
  v316[16] = v13;
  v316[13] = v13;
  v316[14] = v13;
  v316[11] = v13;
  v316[12] = v13;
  v316[9] = v13;
  v316[10] = v13;
  v316[7] = v13;
  v316[8] = v13;
  v316[5] = v13;
  v316[6] = v13;
  v316[3] = v13;
  v316[4] = v13;
  v316[1] = v13;
  v316[2] = v13;
  v315[3] = v13;
  v316[0] = v13;
  v315[1] = v13;
  v315[2] = v13;
  v314 = v13;
  v315[0] = v13;
  v312 = v13;
  v313 = v13;
  v310 = v13;
  v311 = v13;
  v308 = v13;
  v309 = v13;
  v306 = v13;
  v307 = v13;
  v304 = v13;
  v305 = v13;
  v302 = v13;
  v303 = v13;
  v300 = v13;
  v301 = v13;
  v298 = v13;
  v299 = v13;
  v296 = v13;
  v297 = v13;
  v294 = v13;
  v295 = v13;
  v293 = v13;
  v291 = v13;
  v292 = v13;
  v289 = v13;
  v290 = v13;
  v287 = v13;
  v288 = v13;
  v285 = v13;
  v286 = v13;
  v14 = *(a6 + 15);
  v15 = *(a6 + 17);
  if (v14 < v15)
  {
    goto LABEL_263;
  }

  v16 = &v14[4 * v10 * v9];
  if (v16 < v15)
  {
    goto LABEL_263;
  }

  result = *(a6 + 8);
  v270 = *(a6 + 7);
  v19 = *(a6 + 9);
  v18 = *(a6 + 10);
  v20 = *(a6 + 16);
  v21 = a6[2];
  v22 = *(a6 + 2);
  v267 = v15;
  v275 = v10;
  v276 = v19;
  v271 = v18;
  v272 = result;
  v266 = v20;
  if (v21 >= 1)
  {
    if (v20 < v16)
    {
      goto LABEL_263;
    }

    if (v14 > v20)
    {
      goto LABEL_263;
    }

    v23 = 4 * (v21 & 0x7FFF);
    if (v20 - v14 < v23)
    {
      goto LABEL_263;
    }

    if (v20 - v16 < v23)
    {
      goto LABEL_263;
    }

    memmove(v16, v14, v23);
    v10 = v275;
    v19 = v276;
    v18 = v271;
    result = v272;
    if (&v16[v23] < v16)
    {
      goto LABEL_263;
    }
  }

  v24 = v270;
  if (v12 >= 1)
  {
    v25 = 0;
    v26 = v10 >> 1;
    v27 = 2 * v10;
    v28 = a6[1] * v11;
    v29 = &v14[4 * v28];
    v30 = 4 * v28;
    v31 = &v270[4];
    v33 = &v270[4] > result || v270 > v31;
    v34 = v19 + 32;
    v253 = v270 + 4;
    v35 = &v270[5] > result || v31 > &v270[5];
    v264 = v27;
    v262 = 4 * v27;
    v36 = v35;
    v259 = v10 - v269;
    v248 = v26 - 2;
    v247 = v26 + v10 - 2;
    v261 = &v285.i8[8 * v10 - 4];
    if (v19 + 40 > v18 || v34 > v19 + 40)
    {
      v36 = 1;
    }

    v280 = &v285.i8[4 * v26];
    v281 = &v285.i8[4 * v26 + 4 * v10];
    v251 = v10 >> 2;
    v252 = (v19 + 32);
    v38 = v34 > v18 || v19 > v34;
    v39 = v38 || v33;
    v250 = v36 | v39;
    v278 = 8 * (v10 >> 2);
    v279 = 8 * (v10 >> 1);
    v277 = &v14[36 * v11 + v30];
    v256 = v33;
    v257 = v26 - 1;
    v246 = v26 - 1 + v11;
    v40 = v38;
    v254 = v36;
    v255 = v40;
    v249 = v26 - (v10 >> 2);
    v260 = 4 * v10;
    v258 = v10 - 1;
    v274 = -4 * v10;
    v283 = a3 + 4 * v10;
    v265 = v10 >> 1;
    v263 = a1;
    while (v269 < 1)
    {
LABEL_78:
      if (v26 == 10)
      {
        if (v256 || (v255 & 1) != 0 || (v254 & 1) != 0)
        {
          goto LABEL_263;
        }

        v59 = (*a1 + 24 * v25);
        v60 = (v59 + 3) > a1[1] || v59 > v59 + 3;
        if (v60 || v59 < a1[2])
        {
          goto LABEL_263;
        }

        v62 = *v59;
        v63 = v59[1];
        v64 = v59[2];
        v65 = v62 + 64;
        v66 = v62 + 64 > v63 || v62 > v65;
        v67 = !v66 && v62 >= v64;
        v68 = v62 + 80;
        v69 = !v67 || v68 > v63;
        if (v69 || v65 > v68)
        {
          goto LABEL_263;
        }

        v71 = *v24;
        v72 = *(v24 + 16);
        v73 = *v19;
        v74 = *(v19 + 16);
        v75 = *v253;
        v76 = *v252;
        v78 = *(v62 + 32);
        v77 = *(v62 + 48);
        v80 = *v62;
        v79 = *(v62 + 16);
        v81 = *(v62 + 64);
        v82 = vuzp1q_s32(*v62, v79);
        v83 = vuzp1q_s32(v78, v77);
        v84 = vzip1_s32(*v81.f32, *&vextq_s8(v81, v81, 8uLL));
        v81.i32[0] = v81.i32[3];
        v77.i32[0] = v77.i32[3];
        v81.i64[1] = v77.i64[0];
        v85 = vrev64q_s32(vuzp2q_s32(v78, v79));
        v80.i32[0] = vextq_s8(v80, v80, 8uLL).i32[1];
        v325.val[0] = vmlaq_f32(vmulq_f32(v74, vnegq_f32(v85)), v72, v83);
        v325.val[1] = vmlaq_f32(vmulq_f32(v72, v85), v74, v83);
        v322.val[0] = vmlaq_f32(vmulq_f32(*v19, vnegq_f32(v81)), *v24, v82);
        v322.val[1] = vmlaq_f32(vmulq_f32(*v24, v81), *v19, v82);
        *v85.f32 = vmla_f32(vmul_f32(*v252, vneg_f32(*v80.i8)), *v253, v84);
        *v78.i8 = vmla_f32(vmul_f32(*v253, *v80.i8), *v252, v84);
        v86 = v317;
        vst2q_f32(v86, v322);
        v86 += 8;
        vst2q_f32(v86, v325);
        v87 = v318;
        vst2_f32(v87, *(&v78 - 8));
        v88 = (*a2 + 24 * v25);
        if ((v88 + 3) > a2[1])
        {
          goto LABEL_263;
        }

        if (v88 > v88 + 3)
        {
          goto LABEL_263;
        }

        if (v88 < a2[2])
        {
          goto LABEL_263;
        }

        v89 = *v88;
        v90 = v88[1];
        v91 = *v88 + 64;
        if (v91 > v90 || v89 > v91 || v89 < v88[2] || v89 + 80 > v90 || v91 > v89 + 80)
        {
          goto LABEL_263;
        }

        v93 = *(v89 + 32);
        v92 = *(v89 + 48);
        v95 = *v89;
        v94 = *(v89 + 16);
        v96 = *(v89 + 64);
        v97 = vuzp1q_s32(*v89, v94);
        v98 = vuzp1q_s32(v93, v92);
        v99 = vzip1_s32(*v96.f32, *&vextq_s8(v96, v96, 8uLL));
        v96.i32[0] = v96.i32[3];
        v92.i32[0] = v92.i32[3];
        v96.i64[1] = v92.i64[0];
        v100 = vrev64q_s32(vuzp2q_s32(v93, v94));
        v326.val[0] = vmlsq_f32(vmulq_f32(v74, vnegq_f32(v100)), v72, v98);
        v326.val[1] = vmlsq_f32(vmulq_f32(v72, v100), v74, v98);
        v323.val[0] = vmlsq_f32(vmulq_f32(v73, vnegq_f32(v96)), v71, v97);
        v95.i32[0] = vextq_s8(v95, v95, 8uLL).i32[1];
        v323.val[1] = vmlsq_f32(vmulq_f32(v71, v96), v73, v97);
        v320.val[0] = vmls_f32(vmul_f32(v76, vneg_f32(*v95.i8)), v75, v99);
        v320.val[1] = vmls_f32(vmul_f32(v75, *v95.i8), v76, v99);
        v101 = v315;
        vst2q_f32(v101, v323);
        v101 += 8;
        vst2q_f32(v101, v326);
        v102 = v316;
        vst2_f32(v102, v320);
      }

      else if (v26 >= 1)
      {
        v103 = 0;
        v104 = v258;
        v105 = v24;
        v106 = v19;
        do
        {
          v107 = v317 + v103;
          if ((v317 + v103))
          {
            if (v107 < v317)
            {
              goto LABEL_263;
            }

            v108 = v317 + v103 + 4;
            if (v108 > v319 || v107 > v108)
            {
              goto LABEL_263;
            }
          }

          v110 = (v317 + v103 + 4);
          if ((v317 + v103) != -4)
          {
            if (v110 < v317)
            {
              goto LABEL_263;
            }

            v111 = (v317 + v103 + 8);
            if (v111 > v319 || v110 > v111)
            {
              goto LABEL_263;
            }
          }

          v112 = (*a1 + 24 * v25);
          v113 = (v112 + 3) > a1[1] || v112 > v112 + 3;
          if (v113 || v112 < a1[2])
          {
            goto LABEL_263;
          }

          v115 = *v112;
          v116 = v112[1];
          v117 = v112[2];
          v118 = (*v112 + v103);
          v119 = (v118 + 1) > v116 || v118 > v118 + 1;
          if (v119 || v118 < v117)
          {
            goto LABEL_263;
          }

          v121 = (v115 + 4 * v104);
          v122 = (v121 + 1) > v116 || v121 > v121 + 1;
          if (v122 || v121 < v117)
          {
            goto LABEL_263;
          }

          if ((v105 + 1) > result)
          {
            goto LABEL_263;
          }

          if (v105 > v105 + 1)
          {
            goto LABEL_263;
          }

          if (v105 < v24)
          {
            goto LABEL_263;
          }

          if ((v106 + 1) > v18)
          {
            goto LABEL_263;
          }

          if (v106 > v106 + 1)
          {
            goto LABEL_263;
          }

          if (v106 < v19)
          {
            goto LABEL_263;
          }

          v124 = *v118;
          v125 = *v121;
          v126 = *v105;
          v127 = *v106;
          *(v317 + v103) = (*v118 * *v105) - (*v121 * *v106);
          *v110 = (v125 * v126) + (v124 * v127);
          v128 = v315 + v103;
          if ((v315 + v103))
          {
            if (v128 < v315)
            {
              goto LABEL_263;
            }

            v129 = v315 + v103 + 4;
            if (v129 > v317 || v128 > v129)
            {
              goto LABEL_263;
            }
          }

          v130 = (v315 + v103 + 4);
          if ((v315 + v103) != -4)
          {
            if (v130 < v315)
            {
              goto LABEL_263;
            }

            v131 = (v315 + v103 + 8);
            if (v131 > v317 || v130 > v131)
            {
              goto LABEL_263;
            }
          }

          v132 = (*a2 + 24 * v25);
          if ((v132 + 3) > a2[1])
          {
            goto LABEL_263;
          }

          if (v132 > v132 + 3)
          {
            goto LABEL_263;
          }

          if (v132 < a2[2])
          {
            goto LABEL_263;
          }

          v133 = v132[1];
          v134 = (*v132 + v103);
          if ((v134 + 1) > v133)
          {
            goto LABEL_263;
          }

          if (v134 > v134 + 1)
          {
            goto LABEL_263;
          }

          v135 = v132[2];
          if (v134 < v135)
          {
            goto LABEL_263;
          }

          v136 = (*v132 + 4 * v104);
          if ((v136 + 1) > v133 || v136 > v136 + 1 || v136 < v135)
          {
            goto LABEL_263;
          }

          v137 = *v134;
          v138 = *v136;
          v139 = *v105++;
          v140 = v139;
          v141 = *v106++;
          *(v315 + v103) = -(*v136 * v141) - (*v134 * v140);
          *v130 = (v138 * v140) - (v137 * v141);
          v103 += 8;
          v104 -= 2;
        }

        while (v279 != v103);
      }

      fft_cldfb(v317, v319, v26);
      fft_cldfb(v315, v317, v26);
      if (v26 == 10)
      {
        if (v250)
        {
          goto LABEL_263;
        }

        v143 = *(v24 + 16);
        v144 = *(v276 + 16);
        v145 = *(v24 + 32);
        v146 = *(v276 + 32);
        v147 = v317;
        v321 = vld2q_f32(v147);
        v147 += 8;
        v324 = vld2q_f32(v147);
        v148 = v318;
        *(&v142 - 8) = vld2_f32(v148);
        v149 = vmlaq_f32(vmulq_f32(*v276, vnegq_f32(v321.val[1])), *v24, v321.val[0]);
        v150 = vmlaq_f32(vmulq_f32(v144, vnegq_f32(v324.val[1])), v143, v324.val[0]);
        *v152.i8 = vmla_f32(vmul_f32(v146, vneg_f32(*v142.i8)), v145, v151);
        v153 = vmlaq_f32(vmulq_f32(*v24, v321.val[1]), *v276, v321.val[0]);
        v154 = vmlaq_f32(vmulq_f32(v143, v324.val[1]), v144, v324.val[0]);
        v155 = v315;
        *(&v321 + 16) = vld2q_f32(v155);
        v155 += 8;
        *v321.val[0].f32 = vmla_f32(vmul_f32(v145, *v142.i8), v146, v151);
        *(&v324 + 16) = vld2q_f32(v155);
        v156 = v316;
        v142 = vld2_f32(v156);
        v158 = vmlaq_f32(vmulq_f32(*v276, vnegq_f32(v324.val[0])), *v24, v321.val[1]);
        v159 = vmlaq_f32(vmulq_f32(v144, vnegq_f32(v157)), v143, v324.val[1]);
        v161 = vmla_f32(vmul_f32(v146, vneg_f32(v160)), v145, *v142.i8);
        v162 = vmlaq_f32(vmulq_f32(*v24, v324.val[0]), *v276, v321.val[1]);
        v163 = vmlaq_f32(vmulq_f32(v143, v157), v144, v324.val[1]);
        *v321.val[1].f32 = vmla_f32(vmul_f32(v145, v160), v146, *v142.i8);
        *v146.i32 = -*&v152.i32[1] - v321.val[1].f32[1];
        v164 = vdupq_lane_s32(v146, 0);
        v324.val[0] = vextq_s8(v150, v150, 4uLL);
        v324.val[1] = vextq_s8(v163, v150, 4uLL);
        v165 = vsubq_f32(vnegq_f32(v324.val[0]), v324.val[1]);
        v157.f32[1] = -*v152.i32 - v321.val[1].f32[0];
        v157.i32[3] = v165.i32[2];
        v165.i32[3] = v165.i32[0];
        *v142.i8 = vsub_f32(vneg_f32(*v321.val[0].f32), v161);
        v166 = vsubq_f32(vnegq_f32(vextq_s8(v154, v150, 4uLL)), vextq_s8(v159, v150, 4uLL));
        v167 = vextq_s8(v166, v142, 8uLL);
        v168 = vzip1q_s32(v166, v150);
        *v321.val[1].f32 = vsub_f32(*v152.i8, *v321.val[1].f32);
        v164.i32[0] = v321.val[1].i32[1];
        *v321.val[0].f32 = vsub_f32(v161, *v321.val[0].f32);
        v152.i32[0] = vdup_lane_s32(*v142.i8, 1).u32[0];
        v152.i32[3] = v321.val[0].i32[1];
        *v321.val[0].f32 = vdup_lane_s32(*v321.val[0].f32, 0);
        v324.val[0] = vsubq_f32(v324.val[0], v324.val[1]);
        v324.val[1] = vsubq_f32(v158, v153);
        v169 = vsubq_f32(v159, v154);
        v321.val[0].i64[1] = vextq_s8(v169, v169, 8uLL).u64[0];
        v321.val[1] = vextq_s8(v324.val[0], v321.val[1], 8uLL);
        v164.i32[1] = v324.val[1].i32[0];
        *&v164.i32[2] = v153.f32[0] + v158.f32[0];
        v170 = vaddq_f32(v153, v158);
        v171 = vtrn2q_s32(v170, v157);
        v171.i32[2] = v170.i32[2];
        v172 = vaddq_f32(v149, v162);
        v167.i32[1] = v172.i32[2];
        v167.i32[3] = v172.i32[1];
        v168.i32[1] = vaddq_f32(v150, v163).u32[0];
        v168.i32[3] = v172.i32[3];
        v152.i32[1] = v172.i32[0];
        v321.val[1].i32[1] = v324.val[1].i32[2];
        v173 = vaddq_f32(v154, v159);
        v321.val[1].i32[3] = v324.val[1].i32[1];
        v174 = vzip1q_s32(v324.val[0], v169);
        v174.i32[3] = v324.val[1].i32[3];
        v175 = vsubq_f32(v149, v162);
        v176 = vtrn2q_s32(v175, v321.val[0]);
        v176.i32[2] = v175.i32[2];
        v152.i32[2] = v175.i32[0];
        v177 = vzip1q_s32(vextq_s8(v175, vsubq_f32(v150, v163), 0xCuLL), v169);
        v177.i32[1] = v169.i32[2];
        v285 = v168;
        v286 = v167;
        v287 = v152;
        v288 = v176;
        v289 = v177;
        v290 = v174;
        v291 = v321.val[1];
        v292 = v164;
        v293 = v171;
        v294 = vtrn2q_s32(vzip2q_s32(v165, vextq_s8(v170, v173, 4uLL)), v165);
      }

      else
      {
        if (v251 >= 1)
        {
          v178 = 0;
          v180 = v257;
          v179 = v258;
          v182 = v247;
          v181 = v248;
          do
          {
            v183 = v317 + v179 - 1;
            v184 = v183 + 1;
            v185 = v183 < v317 || v184 > v319;
            if (v185 || v183 > v184)
            {
              goto LABEL_263;
            }

            v187 = (v24 + 4 * v180);
            if ((v187 + 1) > v272)
            {
              goto LABEL_263;
            }

            if (v187 > v187 + 1)
            {
              goto LABEL_263;
            }

            if (v187 < v24)
            {
              goto LABEL_263;
            }

            v188 = v317 + v179;
            if (v188 < v317)
            {
              goto LABEL_263;
            }

            if (v188 + 1 > v319)
            {
              goto LABEL_263;
            }

            if (v188 > v188 + 1)
            {
              goto LABEL_263;
            }

            v189 = (v276 + 4 * v180);
            if ((v189 + 1) > v271)
            {
              goto LABEL_263;
            }

            if (v189 > v189 + 1)
            {
              goto LABEL_263;
            }

            if (v189 < v276)
            {
              goto LABEL_263;
            }

            v190 = v315 + v179 - 1;
            if (v190 < v315)
            {
              goto LABEL_263;
            }

            if (v190 + 1 > v317)
            {
              goto LABEL_263;
            }

            if (v190 > v190 + 1)
            {
              goto LABEL_263;
            }

            v191 = v315 + v179;
            if (v191 < v315)
            {
              goto LABEL_263;
            }

            if (v191 + 1 > v317)
            {
              goto LABEL_263;
            }

            if (v191 > v191 + 1)
            {
              goto LABEL_263;
            }

            v192 = &v281[v178 + 4];
            if (v192 < &v285)
            {
              goto LABEL_263;
            }

            v193 = &v281[v178 + 8];
            if (v193 > v315)
            {
              goto LABEL_263;
            }

            if (v192 > v193)
            {
              goto LABEL_263;
            }

            v194 = *v183;
            v195 = *v187;
            v196 = *v188;
            v197 = *v189;
            v198 = (*v183 * *v187) - (*v188 * *v189);
            v199 = *v190;
            v200 = *v191;
            v201 = (*v187 * *v191) + (*v190 * *v189);
            *v192 = -v198 - v201;
            v202 = &v285.i32[v181];
            if (v202 < &v285)
            {
              goto LABEL_263;
            }

            if (v202 + 1 > v315)
            {
              goto LABEL_263;
            }

            if (v202 > v202 + 1)
            {
              goto LABEL_263;
            }

            v203 = (v195 * v196) + (v194 * v197);
            v204 = (v199 * v195) - (v200 * v197);
            *v202 = -v203 - v204;
            v205 = &v285.i32[v182];
            if (v205 < &v285)
            {
              goto LABEL_263;
            }

            if (v205 + 1 > v315)
            {
              goto LABEL_263;
            }

            if (v205 > v205 + 1)
            {
              goto LABEL_263;
            }

            *v205 = v198 - v201;
            v206 = &v280[v178 + 4];
            if (v206 < &v285)
            {
              goto LABEL_263;
            }

            v207 = &v280[v178 + 8];
            if (v207 > v315 || v206 > v207)
            {
              goto LABEL_263;
            }

            v178 += 8;
            --v180;
            *v206 = v204 - v203;
            v182 -= 2;
            v181 -= 2;
            v179 -= 2;
          }

          while (v278 != v178);
        }

        if (v249 >= 1)
        {
          v208 = 0;
          v209 = 0;
          v210 = v257;
          v211 = v246;
          do
          {
            v212 = (v317 + v209);
            v213 = (v317 + v209 + 4);
            v214 = (v317 + v209) < v317 || v213 > v319;
            if (v214 || v212 > v213)
            {
              goto LABEL_263;
            }

            v216 = (v24 + v208);
            v217 = v24 + v208 + 4;
            if (v217 > v272)
            {
              goto LABEL_263;
            }

            if (v216 > v217)
            {
              goto LABEL_263;
            }

            if (v216 < v24)
            {
              goto LABEL_263;
            }

            v218 = (v317 + v209 + 4);
            if (v218 < v317)
            {
              goto LABEL_263;
            }

            v219 = (v317 + v209 + 8);
            if (v219 > v319)
            {
              goto LABEL_263;
            }

            if (v218 > v219)
            {
              goto LABEL_263;
            }

            v220 = (v276 + v208);
            v221 = v276 + v208 + 4;
            if (v221 > v271)
            {
              goto LABEL_263;
            }

            if (v220 > v221)
            {
              goto LABEL_263;
            }

            if (v220 < v276)
            {
              goto LABEL_263;
            }

            v222 = v315 + v209;
            if ((v315 + v209) < v315)
            {
              goto LABEL_263;
            }

            if (v222 + 4 > v317)
            {
              goto LABEL_263;
            }

            if (v222 > v222 + 4)
            {
              goto LABEL_263;
            }

            v223 = (v315 + v209 + 4);
            if (v223 < v315)
            {
              goto LABEL_263;
            }

            v224 = (v315 + v209 + 8);
            if (v224 > v317)
            {
              goto LABEL_263;
            }

            if (v223 > v224)
            {
              goto LABEL_263;
            }

            v225 = &v281[v209];
            if (&v281[v209] < &v285)
            {
              goto LABEL_263;
            }

            if (v225 + 1 > v315)
            {
              goto LABEL_263;
            }

            if (v225 > v225 + 1)
            {
              goto LABEL_263;
            }

            v226 = *v212;
            v227 = *v216;
            v228 = *v218;
            v229 = *v220;
            v230 = (*v216 * *v218) + (*v212 * *v220);
            v231 = *(v315 + v209);
            v232 = *v223;
            v233 = (v231 * *v216) - (*v223 * *v220);
            *v225 = v230 + v233;
            v234 = &v285.i32[v210];
            if (v234 < &v285)
            {
              goto LABEL_263;
            }

            if (v234 + 1 > v315)
            {
              goto LABEL_263;
            }

            if (v234 > v234 + 1)
            {
              goto LABEL_263;
            }

            v235 = (v226 * v227) - (v228 * v229);
            v236 = (v227 * v232) + (v231 * v229);
            *v234 = v235 + v236;
            v237 = &v285.i32[v211];
            if (v237 < &v285)
            {
              goto LABEL_263;
            }

            if (v237 + 1 > v315)
            {
              goto LABEL_263;
            }

            if (v237 > v237 + 1)
            {
              goto LABEL_263;
            }

            *v237 = v233 - v230;
            v238 = &v280[v209];
            if (&v280[v209] < &v285 || v238 + 1 > v315 || v238 > v238 + 1)
            {
              goto LABEL_263;
            }

            v209 += 8;
            *v238 = v235 - v236;
            v208 += 4;
            v211 -= 2;
            v210 -= 2;
          }

          while (8 * v249 != v209);
        }
      }

      v273 = v25;
      v239 = 0;
      v240 = 5;
      do
      {
        MEMORY[0x19EAE5F20](v22 + v239, 1, v261, -1, v29 + v239, 1, v29 + v239, 1, v264);
        v239 += v262;
        --v240;
      }

      while (v240);
      v24 = v270;
      a1 = v263;
      if (v275 >= 1)
      {
        v241 = 0;
        v242 = v277;
        while (v242 >= v267)
        {
          if ((v242 + 4) > v266)
          {
            break;
          }

          if (v242 > v242 + 4)
          {
            break;
          }

          v243 = v283 + v241;
          v244 = (v283 + v241 - 4);
          if (v244 < a3 || v243 > a4 || v244 > v243)
          {
            break;
          }

          v245 = *v242;
          v242 += 4;
          *v244 = v245;
          v241 -= 4;
          if (!(4 * v11 + v241))
          {
            goto LABEL_260;
          }
        }

        goto LABEL_263;
      }

LABEL_260:
      v29 = (v29 + v274);
      if (v29 < v267)
      {
        goto LABEL_263;
      }

      __A = 0.0;
      vDSP_vfill(&__A, v29, 1, v11);
      v26 = v265;
      v18 = v271;
      result = v272;
      v10 = v275;
      v19 = v276;
      ++v25;
      v283 += v260;
      v277 += v274;
      if (v273 + 1 == v12)
      {
        return result;
      }
    }

    v41 = a1[2];
    v42 = v259;
    while (1)
    {
      v43 = (*a1 + 24 * v25);
      v44 = (v43 + 3) > a1[1] || v43 > v43 + 3;
      if (v44 || v43 < v41)
      {
        break;
      }

      v46 = v43[1];
      v47 = v43[2];
      v48 = (*v43 + 4 * v42);
      v49 = (v48 + 1) > v46 || v48 > v48 + 1;
      if (v49 || v48 < v47)
      {
        break;
      }

      *v48 = 0;
      v51 = (*a2 + 24 * v25);
      v52 = (v51 + 3) > a2[1] || v51 > v51 + 3;
      if (v52 || v51 < a2[2])
      {
        break;
      }

      v54 = v51[1];
      v55 = v51[2];
      v56 = (*v51 + 4 * v42);
      v57 = (v56 + 1) > v54 || v56 > v56 + 1;
      if (v57 || v56 < v55)
      {
        break;
      }

      *v56 = 0;
      if (++v42 >= v10)
      {
        goto LABEL_78;
      }
    }

LABEL_263:
    __break(0x5519u);
  }

  return result;
}

void fft_cldfb(float32x2_t *result, unint64_t a2, int a3)
{
  v442[1] = *MEMORY[0x1E69E9840];
  if (a3 > 15)
  {
    switch(a3)
    {
      case 16:
        if (a2 < result || (a2 - result) < 125)
        {
          goto LABEL_134;
        }

        v417 = result[6].f32[0];
        v418 = result[14].f32[0];
        v400 = result[6].f32[1];
        v401 = result[14].f32[1];
        v411 = result[5].f32[0];
        v413 = result[13].f32[0];
        v414 = result[5].f32[1];
        v415 = result[13].f32[1];
        v406 = result[4].f32[0];
        v407 = result[12].f32[0];
        v409 = result[4].f32[1];
        v410 = result[12].f32[1];
        v167 = result[1].f32[1];
        v403 = result[1].f32[0];
        v169 = result[9].f32[0];
        v168 = result[9].f32[1];
        v170 = result->f32[1];
        v172 = result[8].f32[0];
        v171 = result[8].f32[1];
        v173 = result->f32[0] + v172;
        v174 = v173 + (v406 + v407);
        v433 = v173 - (v406 + v407);
        v175 = (v170 + v171) + (v409 + v410);
        v431 = (v170 + v171) - (v409 + v410);
        v176 = (v403 + v169) + (v411 + v413);
        v177 = (v403 + v169) - (v411 + v413);
        v178 = (v167 + v168) + (v414 + v415);
        v179 = (v167 + v168) - (v414 + v415);
        v181 = result[2].f32[0];
        v180 = result[2].f32[1];
        v182 = result[10].f32[0];
        v183 = result[10].f32[1];
        v184 = (v181 + v182) + (v417 + v418);
        v429 = (v181 + v182) - (v417 + v418);
        v185 = (v180 + v183) + (v400 + v401);
        v427 = (v180 + v183) - (v400 + v401);
        v186 = result[7].f32[0];
        v187 = result[7].f32[1];
        v189 = result[15].f32[0];
        v188 = result[15].f32[1];
        v191 = result[3].f32[0];
        v190 = result[3].f32[1];
        v193 = result[11].f32[0];
        v192 = result[11].f32[1];
        v194 = (v191 + v193) + (v186 + v189);
        v195 = (v191 + v193) - (v186 + v189);
        v196 = (v190 + v192) + (v187 + v188);
        v197 = (v190 + v192) - (v187 + v188);
        v420 = v174 + v184;
        v425 = v174 - v184;
        v419 = v175 + v185;
        v424 = v175 - v185;
        v435 = v176 + v194;
        v423 = v176 - v194;
        v402 = v178 + v196;
        v421 = v177 + v195;
        v422 = v196 - v178;
        v405 = v177 - v195;
        v198 = v179 + v197;
        v199 = v179 - v197;
        v200 = result->f32[0] - v172;
        v201 = v181 - v182;
        v202 = v180 - v183;
        v203 = v191 - v193;
        v204 = v190 - v192;
        v205 = v406 - v407;
        v206 = v186 - v189;
        v207 = v187 - v188;
        v208 = ((v403 - v169) + v206) * -0.38268;
        v209 = v201 + (v417 - v418);
        v210 = v201 - (v417 - v418);
        v211 = v202 + (v400 - v401);
        v212 = ((v191 - v193) + (v411 - v413)) * -0.92388;
        v213 = v203 - (v411 - v413);
        v214 = ((v403 - v169) - v206) * 0.92388;
        v215 = ((v167 - v168) - v207) * 0.92388;
        v216 = (v204 + (v414 - v415)) * 0.92388;
        v217 = ((v167 - v168) + v207) * 0.38268;
        v218 = (v204 - (v414 - v415)) * 0.38268;
        v219 = (v216 * -0.41421) + (v217 * 2.4142);
        v220 = (v212 * -0.41421) + (v208 * 2.4142);
        v221 = ((v213 * 0.38268) * -2.4142) + (v214 * 0.41421);
        v222 = (v218 * -2.4142) + (v215 * 0.41421);
        v223 = v216 + v217;
        v404 = v212 + v208;
        v224 = (v213 * 0.38268) + v214;
        v225 = v218 + v215;
        v408 = v218 + v215;
        v226 = v200 + (v211 * 0.70711);
        v227 = (v170 - v171) + (v209 * -0.70711);
        v228 = (v170 - v171) - (v209 * -0.70711);
        v229 = (v210 * 0.70711) - (v409 - v410);
        v230 = (v409 - v410) + (v210 * 0.70711);
        v231 = (v202 - (v400 - v401)) * 0.70711;
        v232 = v205 + v231;
        v233 = v205 - v231;
        v412 = v226 - v230;
        v416 = v230 + v226;
        result->f32[0] = v420 + v435;
        result->f32[1] = v419 + v402;
        result[1].f32[0] = (v230 + v226) + (v224 + v223);
        result[1].f32[1] = (v227 - v233) + (v404 + v225);
        v234 = (v405 + v198) * 0.70711;
        v235 = (v199 - v421) * 0.70711;
        result[2].f32[0] = (v433 + v427) + v234;
        result[2].f32[1] = (v431 - v429) + v235;
        result[3].f32[0] = (v226 - v230) + (v221 + v219);
        result[3].f32[1] = (v227 + v233) + (v220 + v222);
        result[4].f32[0] = v425 - v422;
        result[4].f32[1] = v424 - v423;
        v236 = v200 - (v211 * 0.70711);
        result[5].f32[0] = (v236 - v229) + (v219 - v221);
        result[5].f32[1] = (v228 - v232) + (v220 - v222);
        v237 = (v198 - v405) * 0.70711;
        v238 = (v421 + v199) * -0.70711;
        result[6].f32[0] = (v433 - v427) + v237;
        result[6].f32[1] = (v431 + v429) + v238;
        result[7].f32[0] = (v229 + v236) + (v223 - v224);
        result[7].f32[1] = (v228 + v232) + (v404 - v408);
        result[8].f32[0] = v420 - v435;
        result[8].f32[1] = v419 - v402;
        result[9].f32[0] = v416 - (v224 + v223);
        result[9].f32[1] = (v227 - v233) - (v404 + v225);
        result[10].f32[0] = (v433 + v427) - v234;
        result[10].f32[1] = (v431 - v429) - v235;
        result[11].f32[0] = v412 - (v221 + v219);
        result[11].f32[1] = (v227 + v233) - (v220 + v222);
        result[12].f32[0] = v425 + v422;
        result[12].f32[1] = v424 + v423;
        result[13].f32[0] = (v236 - v229) - (v219 - v221);
        result[13].f32[1] = (v228 - v232) - (v220 - v222);
        result[14].f32[0] = (v433 - v427) - v237;
        result[14].f32[1] = (v431 + v429) - v238;
        result[15].f32[0] = (v229 + v236) - (v223 - v224);
        result[15].f32[1] = (v228 + v232) - (v404 - v408);
        break;
      case 20:
        if (a2 < result || (a2 - result) < 157)
        {
          goto LABEL_134;
        }

        v290 = result[11];
        v292 = result[18];
        v291 = result[19];
        v293 = vsub_f32(v290, v291);
        v295 = result[6];
        v294 = result[7];
        v297 = result[2];
        v296 = result[3];
        v298 = vsub_f32(v294, v296);
        v299 = vdup_n_s32(0x3F737871u);
        v300 = vadd_f32(v290, v291);
        v301 = vadd_f32(v294, v296);
        v302 = vsub_f32(v300, v301);
        v303 = vdup_n_s32(0x3F0F1BBDu);
        v304 = vadd_f32(v301, v300);
        v305 = result[14];
        v306 = vadd_f32(result[15], v304);
        __asm { FMOV            V2.2S, #-1.25 }

        v308 = vadd_f32(v295, v305);
        v309 = vadd_f32(v297, v292);
        v310 = vadd_f32(v309, v308);
        v311 = vadd_f32(result[10], v310);
        v312 = vmla_f32(v311, _D2, v310);
        v430 = vmul_f32(vsub_f32(v308, v309), v303);
        v313 = result[4];
        v314 = result[1];
        v315 = result[16];
        v316 = result[17];
        v318 = result[12];
        v317 = result[13];
        v319 = vrev64_s32(vsub_f32(v295, v305));
        v428 = vrev64_s32(vsub_f32(v297, v292));
        v320 = vmul_f32(vadd_f32(v428, v319), v299);
        v321 = vdup_n_s32(0xBFC4F8C4);
        v322 = vmla_f32(v320, v321, v319);
        v434 = vsub_f32(v312, v430);
        v319.i32[0] = vadd_f32(v434, v322).u32[0];
        v319.i32[1] = vsub_f32(*&v434, *&v322).i32[1];
        v436 = v319;
        v323 = vmla_f32(v306, _D2, v304);
        v324 = result[8];
        v325 = result[9];
        v326 = vadd_f32(v314, v325);
        v327 = vadd_f32(v316, v317);
        v328 = vadd_f32(v327, v326);
        v329 = vadd_f32(result[5], v328);
        v330 = vmla_f32(v329, _D2, v328);
        v331 = vmul_f32(vsub_f32(v326, v327), v303);
        v332 = vrev64_s32(vsub_f32(v314, v325));
        v333 = vrev64_s32(vsub_f32(v316, v317));
        v334 = vadd_f32(v315, v313);
        v335 = vadd_f32(v318, v324);
        v336 = vadd_f32(v335, v334);
        v337 = vadd_f32(*result, v336);
        v338 = vmla_f32(v337, _D2, v336);
        v339 = vmul_f32(vadd_f32(v333, v332), v299);
        v340 = vmla_f32(v339, v321, v332);
        v432 = vsub_f32(v330, v331);
        v341.i32[0] = vadd_f32(v432, v340).u32[0];
        v341.i32[1] = vsub_f32(*&v432, *&v340).i32[1];
        v342 = vrev64_s32(v293);
        v426 = vrev64_s32(v298);
        v343 = vsub_f32(v334, v335);
        v344 = vmul_f32(vadd_f32(v426, v342), v299);
        v345 = vmul_f32(v302, v303);
        v346 = vmul_f32(v343, v303);
        v347 = vsub_f32(v338, v346);
        v348 = vrev64_s32(vsub_f32(v315, v313));
        v349 = vrev64_s32(vsub_f32(v318, v324));
        v350 = vmul_f32(vadd_f32(v349, v348), v299);
        v351 = vmla_f32(v350, v321, v348);
        v352.i32[0] = vadd_f32(v347, v351).u32[0];
        v352.i32[1] = vsub_f32(*&v347, *&v351).i32[1];
        v353 = vmla_f32(v344, v321, v342);
        v354 = vsub_f32(v323, v345);
        v326.i32[0] = vadd_f32(v354, v353).u32[0];
        v326.i32[1] = vsub_f32(*&v354, *&v353).i32[1];
        v355 = vadd_f32(v337, v311);
        v324.f32[0] = vsub_f32(v337, v311).f32[0];
        v318.f32[0] = v337.f32[1] + v311.f32[1];
        v299.f32[0] = v337.f32[1] - v311.f32[1];
        v356 = vadd_f32(v329, v306);
        v292.f32[0] = vsub_f32(v329, v306).f32[0];
        result->i32[0] = vadd_f32(v355, v356).u32[0];
        result->f32[1] = v318.f32[0] + (v329.f32[1] + v306.f32[1]);
        result[5].f32[0] = v324.f32[0] - (v306.f32[1] - v329.f32[1]);
        result[5].f32[1] = v299.f32[0] - v292.f32[0];
        result[10].i32[0] = vsub_f32(v355, v356).u32[0];
        result[10].f32[1] = v318.f32[0] - (v329.f32[1] + v306.f32[1]);
        v337.f32[0] = v324.f32[0] + (v306.f32[1] - v329.f32[1]);
        v355.f32[0] = v299.f32[0] + v292.f32[0];
        v357 = vadd_f32(v430, v312);
        v358 = vdup_n_s32(0xBEB9FEB1);
        v359 = vmla_f32(v320, v358, v428);
        v360 = vadd_f32(v357, v359);
        v361 = vsub_f32(v357, v359);
        v362 = vadd_f32(v331, v330);
        v363 = vmla_f32(v339, v358, v333);
        v364 = vadd_f32(v362, v363);
        v365 = vsub_f32(v362, v363);
        v366 = vadd_f32(v346, v338);
        v367 = vmla_f32(v350, v358, v349);
        v368 = vadd_f32(v366, v367);
        v369 = vsub_f32(v366, v367);
        result[15].i32[0] = v337.i32[0];
        result[15].i32[1] = v355.i32[0];
        v370 = vadd_f32(v345, v323);
        v371 = vmla_f32(v344, v358, v426);
        v372 = vadd_f32(v370, v371);
        v373 = vsub_f32(v370, v371);
        v374 = vadd_f32(__PAIR64__(v369.u32[1], v368.u32[0]), __PAIR64__(v361.u32[1], v360.u32[0]));
        v375 = vadd_f32(__PAIR64__(v365.u32[1], v364.u32[0]), __PAIR64__(v373.u32[1], v372.u32[0]));
        v376 = vsub_f32(__PAIR64__(v369.u32[1], v368.u32[0]), __PAIR64__(v361.u32[1], v360.u32[0]));
        v377 = vsub_f32(vext_s8(__PAIR64__(v373.u32[1], v372.u32[0]), __PAIR64__(v365.u32[1], v364.u32[0]), 4uLL), vext_s8(__PAIR64__(v365.u32[1], v364.u32[0]), __PAIR64__(v373.u32[1], v372.u32[0]), 4uLL));
        v378 = vsub_f32(v376, v377);
        v379 = vadd_f32(v376, v377);
        v380 = vadd_f32(vzip2_s32(v340, v322), vzip2_s32(v432, v434));
        v381 = vsub_f32(vzip1_s32(v347, v432), vzip1_s32(v351, v340));
        v382 = vsub_f32(vzip1_s32(v434, v354), vzip1_s32(v322, v353));
        v383 = vadd_f32(vzip2_s32(v353, v351), vzip2_s32(v354, v347));
        v384 = vsub_f32(v381, v382);
        v385 = vsub_f32(v383, v380);
        v386 = vext_s8(v381, v380, 4uLL);
        v381.i32[1] = v383.i32[1];
        v387 = vext_s8(v382, v383, 4uLL);
        v382.i32[1] = v380.i32[1];
        v388 = vadd_f32(v381, v382);
        v389 = vadd_f32(v386, v387);
        result[8] = vadd_f32(v388, v389);
        result[9] = v378;
        v390 = __PAIR64__(v384.u32[1], v385.u32[0]);
        v391 = vadd_f32(v385, v384);
        v384.i32[1] = v385.i32[1];
        result[13] = vsub_f32(v384, v390);
        result[14] = vsub_f32(v374, v375);
        result[18] = vsub_f32(v388, v389);
        result[19] = v379;
        result[3] = v391;
        result[4] = vadd_f32(v374, v375);
        v392 = vadd_f32(v352, v436);
        v393 = vadd_f32(v341, v326);
        v394 = vsub_f32(v352, v436);
        v395 = vsub_f32(vext_s8(v326, v341, 4uLL), vext_s8(v341, v326, 4uLL));
        v361.i32[1] = v360.i32[1];
        v365.i32[1] = v364.i32[1];
        v369.i32[1] = v368.i32[1];
        v373.i32[1] = v372.i32[1];
        v396 = vadd_f32(v369, v361);
        v397 = vadd_f32(v365, v373);
        result[16] = vadd_f32(v396, v397);
        result[17] = vsub_f32(v394, v395);
        result[6] = vsub_f32(v396, v397);
        result[7] = vadd_f32(v394, v395);
        v398 = vsub_f32(v369, v361);
        v399 = vsub_f32(vext_s8(v373, v365, 4uLL), vext_s8(v365, v373, 4uLL));
        result[1] = vsub_f32(v398, v399);
        result[2] = vsub_f32(v392, v393);
        result[11] = vadd_f32(v398, v399);
        result[12] = vadd_f32(v392, v393);
        break;
      case 30:
        if (a2 < result || (a2 - result) < 237)
        {
          goto LABEL_134;
        }

        v62 = 0;
        *&v63 = -1;
        *(&v63 + 1) = -1;
        v441[1] = v63;
        v441[2] = v63;
        v440 = v63;
        v441[0] = v63;
        v439[1] = v63;
        v439[2] = v63;
        v438 = v63;
        v439[0] = v63;
        v437[5] = v63;
        v437[6] = v63;
        v437[3] = v63;
        v437[4] = v63;
        v437[1] = v63;
        v437[2] = v63;
        v64 = result + 30;
        v437[0] = v63;
        do
        {
          v65 = &result[v62 / 8];
          if (&result[v62 / 8] < result)
          {
            goto LABEL_134;
          }

          v66 = (v65 + 4);
          if (&v65->i32[1] > v64)
          {
            goto LABEL_134;
          }

          if (v65 > v66)
          {
            goto LABEL_134;
          }

          v67 = &v437[v62 / 0x10] + 1;
          if (v67 > v442)
          {
            goto LABEL_134;
          }

          v68 = &result[v62 / 8 + 1];
          LODWORD(v437[v62 / 0x10]) = result[v62 / 8].i32[0];
          if (v68 > v64)
          {
            goto LABEL_134;
          }

          if (v66 > v68)
          {
            goto LABEL_134;
          }

          v69 = &v437[v62 / 0x10] + 2;
          if (v69 > v442)
          {
            goto LABEL_134;
          }

          v70 = v65 + 15;
          *v67 = v66->i32[0];
          if (v70 < result)
          {
            goto LABEL_134;
          }

          v71 = (&result[v62 / 8 + 15] + 4);
          if (v71 > v64)
          {
            goto LABEL_134;
          }

          if (v70 > v71)
          {
            goto LABEL_134;
          }

          if (&v438 + v62 + 12 > v442)
          {
            goto LABEL_134;
          }

          *(&v438 + v62 + 8) = v70->i32[0];
          v72 = &result[v62 / 8 + 16];
          if (v72 > v64)
          {
            goto LABEL_134;
          }

          if (v71 > v72)
          {
            goto LABEL_134;
          }

          if (&v439[v62 / 0x10] > v442)
          {
            goto LABEL_134;
          }

          *(&v438 + v62 + 12) = v71->i32[0];
          v73 = (&result[v62 / 8 + 16] + 4);
          if (v73 > v64)
          {
            goto LABEL_134;
          }

          if (v72 > v73)
          {
            goto LABEL_134;
          }

          *v69 = v72->i32[0];
          v74 = &result[v62 / 8 + 17];
          if (v74 > v64)
          {
            goto LABEL_134;
          }

          if (v73 > v74)
          {
            goto LABEL_134;
          }

          HIDWORD(v437[v62 / 0x10]) = v73->i32[0];
          v75 = (&result[v62 / 8 + 1] + 4);
          if (v75 > v64)
          {
            goto LABEL_134;
          }

          if (v68 > v75)
          {
            goto LABEL_134;
          }

          if ((&v439[v62 / 0x10] + 4) > v442)
          {
            goto LABEL_134;
          }

          LODWORD(v439[v62 / 0x10]) = v68->i32[0];
          v76 = &result[v62 / 8 + 2];
          if (v76 > v64 || v75 > v76 || (&v439[v62 / 0x10] + 8) > v442)
          {
            goto LABEL_134;
          }

          DWORD1(v439[v62 / 0x10]) = v75->i32[0];
          v62 += 16;
        }

        while (v62 != 112);
        v77 = &result[v62 / 8];
        v78 = &result[v62 / 8 - 2];
        v79 = (&result[v62 / 8] + 4);
        if (v79 > v64)
        {
          goto LABEL_134;
        }

        if (v77 > v79)
        {
          goto LABEL_134;
        }

        v80 = &v437[v62 / 0x10];
        if (v80 < v437)
        {
          goto LABEL_134;
        }

        v81 = v80 + 1;
        if (v80 + 1 > v442)
        {
          goto LABEL_134;
        }

        if (v80 > v81)
        {
          goto LABEL_134;
        }

        *v80 = v77->i32[0];
        v82 = v78 + 3;
        if (v82 > v64)
        {
          goto LABEL_134;
        }

        if (v79 > v82)
        {
          goto LABEL_134;
        }

        if (v80 + 2 > v442)
        {
          goto LABEL_134;
        }

        if (v81 > v80 + 2)
        {
          goto LABEL_134;
        }

        v83 = v77 + 13;
        *v81 = v79->i32[0];
        v84 = (v77 + 124);
        if (&v77[15].i32[1] > v64)
        {
          goto LABEL_134;
        }

        v85 = v77 + 15;
        if (v85 > v84)
        {
          goto LABEL_134;
        }

        v86 = v80 + 30;
        if (v80 + 30 < v437)
        {
          goto LABEL_134;
        }

        v87 = v80 + 26;
        v88 = v80 + 31;
        if (v88 > v442)
        {
          goto LABEL_134;
        }

        if (v86 > v88)
        {
          goto LABEL_134;
        }

        *v86 = v85->i32[0];
        if (&v83[3] > v64 || v84 > &v83[3] || v87 + 6 > v442 || v88 > v87 + 6)
        {
          goto LABEL_134;
        }

        *v88 = v84->i32[0];
        fft15(v437);
        fft15(&v438 + 8);
        v89 = 0;
        v90 = 0;
        do
        {
          v91 = (v437 + v89);
          v92 = &result[v90];
          v93 = (v437 + v89 + 4);
          v94 = (&v438 + v89 + 12);
          v95 = v93 > v442 || v94 > v442;
          v96 = v92 + 1;
          if (v95 || v92 < result || v96 > v64 || v92 > v96)
          {
            goto LABEL_134;
          }

          v100 = &v92[15];
          v101 = *v91;
          v102 = v91[30];
          v92->f32[0] = *v91 + v102;
          v103 = &v92[15] + 1;
          if (v100 < result)
          {
            goto LABEL_134;
          }

          if (v103 > v64 || v100 > v103)
          {
            goto LABEL_134;
          }

          *v100 = v101 - v102;
          if ((v439 + v89) > v442)
          {
            goto LABEL_134;
          }

          v105 = &result[v90 + 1];
          if (v105 > v64)
          {
            goto LABEL_134;
          }

          if (v96 > v105)
          {
            goto LABEL_134;
          }

          v106 = *v93;
          v107 = *v94;
          *v96 = *v93 + *v94;
          v108 = &result[v90 + 16];
          if (v108 > v64)
          {
            goto LABEL_134;
          }

          if (v103 > v108)
          {
            goto LABEL_134;
          }

          *v103 = v106 - v107;
          v109 = (v437 + v89);
          if (&v440 + v89 + 12 > v442)
          {
            goto LABEL_134;
          }

          v110 = &result[v90 + 16] + 1;
          if (v110 > v64)
          {
            goto LABEL_134;
          }

          if (v108 > v110)
          {
            goto LABEL_134;
          }

          v111 = v91[16];
          v112 = v91[46];
          v108->f32[0] = v111 + v112;
          v113 = &result[v90 + 1] + 1;
          if (v113 > v64)
          {
            goto LABEL_134;
          }

          if (v105 > v113)
          {
            goto LABEL_134;
          }

          v105->f32[0] = v111 - v112;
          if ((v441 + v89) > v442)
          {
            goto LABEL_134;
          }

          v114 = &result[v90 + 17];
          if (v114 > v64)
          {
            goto LABEL_134;
          }

          if (v110 > v114)
          {
            goto LABEL_134;
          }

          v115 = v109[17];
          v116 = v109[47];
          *v110 = v115 + v116;
          v117 = &result[v90 + 2];
          if (v117 > v64 || v113 > v117)
          {
            goto LABEL_134;
          }

          *v113 = v115 - v116;
          v90 += 2;
          v89 += 8;
        }

        while ((v90 * 8) != 112);
        v118 = (v437 + v89);
        if ((v437 + v89) < v437)
        {
          goto LABEL_134;
        }

        v119 = v118 - 2;
        v120 = v118 + 1;
        if (v118 + 1 > v442)
        {
          goto LABEL_134;
        }

        if (v118 > v120)
        {
          goto LABEL_134;
        }

        v121 = v118 + 30;
        if (v118 + 30 < v437)
        {
          goto LABEL_134;
        }

        v122 = v118 + 28;
        v123 = v118 + 31;
        if (v118 + 31 > v442)
        {
          goto LABEL_134;
        }

        if (v121 > v123)
        {
          goto LABEL_134;
        }

        v124 = &result[v90];
        v125 = &result[v90 - 2];
        v126 = &result[v90] + 1;
        if (v126 > v64)
        {
          goto LABEL_134;
        }

        if (v124 > v126)
        {
          goto LABEL_134;
        }

        v127 = *v118;
        v128 = *v121;
        v124->f32[0] = *v118 + *v121;
        v129 = &v124[15] + 1;
        if (&v124[15].i32[1] > v64)
        {
          goto LABEL_134;
        }

        if (&v124[15] > v129)
        {
          goto LABEL_134;
        }

        v124[15].f32[0] = v127 - v128;
        v130 = v119 + 4;
        if (v130 > v442)
        {
          goto LABEL_134;
        }

        if (v120 > v130)
        {
          goto LABEL_134;
        }

        if (v122 + 4 > v442)
        {
          goto LABEL_134;
        }

        if (v123 > v122 + 4)
        {
          goto LABEL_134;
        }

        if (&v125[3] > v64)
        {
          goto LABEL_134;
        }

        if (v126 > &v125[3])
        {
          goto LABEL_134;
        }

        v131 = *v120;
        v132 = *v123;
        *v126 = *v120 + *v123;
        if (&v124[16] > v64 || v129 > &v124[16])
        {
          goto LABEL_134;
        }

        *v129 = v131 - v132;
        break;
    }
  }

  else
  {
    switch(a3)
    {
      case 5:
        if (&result[1] < result)
        {
          goto LABEL_134;
        }

        if (&result[1] + 4 > a2)
        {
          goto LABEL_134;
        }

        if (&result[1] > &result[1].i32[1])
        {
          goto LABEL_134;
        }

        v133 = result + 4;
        if (&result[4] < result)
        {
          goto LABEL_134;
        }

        v134 = (result + 36);
        if (&result[4] + 4 > a2)
        {
          goto LABEL_134;
        }

        if (v133 > v134)
        {
          goto LABEL_134;
        }

        if (&result[2] + 4 > a2)
        {
          goto LABEL_134;
        }

        if (&result[3] + 4 > a2)
        {
          goto LABEL_134;
        }

        v135 = result[1].f32[0];
        v136 = result[4].f32[0];
        v137 = v135 + v136;
        v138 = result[2].f32[0];
        v139 = result[3].f32[0];
        v140 = v138 + v139;
        v141 = (v135 + v136) + (v138 + v139);
        v142 = result->f32[0] + v141;
        result->f32[0] = v142;
        if (v133 > a2 || v134 < result || &result[5] > a2 || v134 > &result[5])
        {
          goto LABEL_134;
        }

        v143 = result[4].f32[1];
        v144 = result[1].f32[1];
        v145 = result[2].f32[1];
        v146 = result[3].f32[1];
        v147 = (v143 + v144) + (v145 + v146);
        v148 = ((v143 + v144) - (v145 + v146)) * 0.55902;
        v149 = v145 - v146;
        v150 = v144 - v143;
        v151 = v138 - v139;
        v152 = v135 - v136;
        v153 = (v152 + v151) * 0.95106;
        v154 = v153 + (v151 * -0.36327);
        v155 = v153 + (v152 * -1.5388);
        v156 = v142 + (v141 * -1.25);
        v157 = (v137 - v140) * 0.55902;
        v158 = v157 + v156;
        v159 = v156 - v157;
        v160 = result->f32[1] + v147;
        v161 = v160 + (v147 * -1.25);
        v162 = v161 - v148;
        v163 = v148 + v161;
        v164 = (v150 + v149) * 0.95106;
        v165 = v164 + (v150 * -1.5388);
        v166 = v164 + (v149 * -0.36327);
        result->f32[1] = v160;
        result[1].f32[0] = v158 + v166;
        result[1].f32[1] = v163 - v154;
        result[2].f32[0] = v159 - v165;
        result[4].f32[0] = v158 - v166;
        result[4].f32[1] = v154 + v163;
        result[2].f32[1] = v155 + v162;
        result[3].f32[0] = v159 + v165;
        result[3].f32[1] = v162 - v155;
        break;
      case 8:
        if (a2 < result || (a2 - result) <= 60)
        {
          goto LABEL_134;
        }

        v239 = result->f32[1];
        v240 = result[4].f32[0];
        v241 = result[4].f32[1];
        v242 = result[1].f32[0];
        v243 = result[1].f32[1];
        v244 = result[5].f32[0];
        v245 = result[5].f32[1];
        v246 = result[2].f32[0];
        v247 = result[2].f32[1];
        v248 = result[6].f32[0];
        v249 = result[6].f32[1];
        v250 = result[3].f32[0];
        v251 = result[3].f32[1];
        v252 = result[7].f32[0];
        v253 = result[7].f32[1];
        v254 = v250 - v252;
        v255 = v250 + v252;
        v256 = v247 - v249;
        v257 = v247 + v249;
        v258 = v246 - v248;
        v259 = v246 + v248;
        v260 = v243 - v245;
        v261 = v243 + v245;
        v262 = v242 - v244;
        v263 = v242 + v244;
        v264 = v239 - v241;
        v265 = v239 + v241;
        v266 = result->f32[0] - v240;
        v267 = result->f32[0] + v240;
        v268 = v251 + v253;
        v269 = v251 - v253;
        v270 = v267 + v259;
        v271 = v267 - v259;
        v272 = v265 + v257;
        v273 = v265 - v257;
        v274 = v266 - v256;
        v275 = v266 + v256;
        v276 = v264 + v258;
        v277 = v264 - v258;
        v278 = v263 + v255;
        v279 = v263 - v255;
        v280 = v261 + v268;
        v281 = v268 - v261;
        v282 = v262 + v254;
        v283 = v262 - v254;
        v284 = v260 + v269;
        v285 = v260 - v269;
        v286 = (v283 + v284) * 0.70711;
        v287 = (v284 - v283) * 0.70711;
        v288 = (v285 - v282) * 0.70711;
        result->f32[0] = v270 + v278;
        result->f32[1] = v272 + v280;
        result[4].f32[0] = v270 - v278;
        result[4].f32[1] = v272 - v280;
        result[2].f32[0] = v271 - v281;
        result[2].f32[1] = v273 - v279;
        v289 = (v282 + v285) * -0.70711;
        result[6].f32[0] = v271 + v281;
        result[6].f32[1] = v273 + v279;
        result[3].f32[0] = v274 + v287;
        result[3].f32[1] = v276 + v289;
        result[7].f32[0] = v274 - v287;
        result[7].f32[1] = v276 - v289;
        result[1].f32[0] = v275 + v286;
        result[1].f32[1] = v277 + v288;
        result[5].f32[0] = v275 - v286;
        result[5].f32[1] = v277 - v288;
        break;
      case 10:
        if (a2 >= result && (a2 - result) >= 77)
        {
          v4 = result[1];
          v6 = result[8];
          v5 = result[9];
          v8 = result[6];
          v7 = result[7];
          v10 = result[2];
          v9 = result[3];
          v11 = vrev64_s32(vsub_f32(v4, v5));
          v12 = vrev64_s32(vsub_f32(v7, v9));
          v13 = vdup_n_s32(0x3F737871u);
          v14 = vmul_f32(vadd_f32(v11, v12), v13);
          v15 = vadd_f32(v4, v5);
          v16 = vadd_f32(v7, v9);
          v17 = vadd_f32(v15, v16);
          v18 = vdup_n_s32(0x3F0F1BBDu);
          v19 = vmul_f32(vsub_f32(v15, v16), v18);
          v20 = result[4];
          v21 = vadd_f32(result[5], v17);
          __asm { FMOV            V23.2S, #-1.25 }

          v26 = vadd_f32(v8, v20);
          v27 = vadd_f32(v10, v6);
          v28 = vadd_f32(v26, v27);
          v29 = vadd_f32(*result, v28);
          v30 = vmla_f32(v29, _D23, v28);
          v31 = vmul_f32(vsub_f32(v26, v27), v18);
          v32 = vrev64_s32(vsub_f32(v8, v20));
          v33 = vrev64_s32(vsub_f32(v10, v6));
          *v34.f32 = vadd_f32(v31, v30);
          v34.i64[1] = v34.i64[0];
          v35 = vmul_f32(vadd_f32(v32, v33), v13);
          v36 = vdup_n_s32(0xBEB9FEB1);
          *v37.f32 = vmla_f32(v35, v36, v33);
          v37.i64[1] = v37.i64[0];
          v38 = vaddq_f32(v34, v37);
          v39 = vsubq_f32(v34, v37);
          v39.i32[3] = v38.i32[3];
          v40 = vmla_f32(v21, _D23, v17);
          *v41.f32 = vadd_f32(v19, v40);
          v41.i64[1] = v41.i64[0];
          *v42.f32 = vmla_f32(v14, v36, v12);
          v42.i64[1] = v42.i64[0];
          v43 = vaddq_f32(v41, v42);
          v44 = vsubq_f32(v41, v42);
          v44.i32[3] = v43.i32[3];
          *v41.f32 = vadd_f32(v29, v21);
          v45 = vsubq_f32(v39, v44);
          v39.i32[0] = v38.i32[0];
          v44.i32[0] = v43.i32[0];
          v46 = vsub_f32(v30, v31);
          v47 = vdup_n_s32(0xBFC4F8C4);
          v48 = vmla_f32(v35, v47, v32);
          v49 = vadd_f32(v46, v48);
          v50 = vsub_f32(v46, v48);
          v51 = __PAIR64__(v50.u32[1], v49.u32[0]);
          v52 = vsub_f32(v29, v21);
          v53 = vsub_f32(v40, v19);
          v54 = vmla_f32(v14, v47, v11);
          v55 = vadd_f32(v53, v54);
          v56 = vsub_f32(v53, v54);
          v57 = __PAIR64__(v56.u32[1], v55.u32[0]);
          *result = *v41.f32;
          result[1] = vsub_f32(__PAIR64__(v50.u32[1], v49.u32[0]), __PAIR64__(v56.u32[1], v55.u32[0]));
          *&v58 = vaddq_f32(v39, v44).u64[0];
          *(&v58 + 1) = v45.i64[1];
          v50.i32[1] = v49.i32[1];
          v56.i32[1] = v55.i32[1];
          *result[2].f32 = v58;
          result[4] = vadd_f32(v50, v56);
          result[5] = v52;
          v59 = vextq_s8(v39, v39, 8uLL);
          v60 = vextq_s8(v44, v44, 8uLL);
          *&v61 = vadd_f32(v51, v57);
          *(&v61 + 1) = vsub_f32(*&vextq_s8(v59, v59, 8uLL), *&vextq_s8(v60, v60, 8uLL));
          *v59.i8 = vadd_f32(*v59.i8, *v60.i8);
          v59.u64[1] = vsub_f32(v50, v56);
          *result[6].f32 = v61;
          *result[8].f32 = v59;
          return;
        }

LABEL_134:
        __break(0x5519u);
        break;
    }
  }
}

float32x2_t fft15(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v14 = *(a1 + 8);
  v15 = vadd_f32(v14, v4);
  v16 = vadd_f32(v2, v6);
  v17 = vadd_f32(v15, v16);
  v18 = vadd_f32(v8, v10);
  v19 = vadd_f32(v13, v11);
  v20 = vadd_f32(v18, v19);
  v21 = vadd_f32(v17, v20);
  v22 = vadd_f32(vadd_f32(v3, v12), v21);
  v23 = vsub_f32(v15, v16);
  v24 = vsub_f32(v18, v19);
  v25 = vadd_f32(v23, v24);
  v26 = vrev64_s32(vmul_f32(vsub_f32(v25, vsub_f32(v3, v12)), 0xBF5DB3D73F5DB3D7));
  v27 = vadd_f32(v1, v9);
  v28 = vadd_f32(v7, v5);
  v29 = vadd_f32(v27, v28);
  __asm { FMOV            V26.2S, #-1.25 }

  v35 = vmul_f32(vadd_f32(v29, v21), _D26);
  v36 = vsub_f32(v14, v4);
  v37 = vsub_f32(v13, v11);
  v38 = vsub_f32(v36, v37);
  v39 = vsub_f32(v27, v28);
  v40 = vsub_f32(v2, v6);
  v41 = vsub_f32(v8, v10);
  v10.f32[0] = vsub_f32(v40, v41).f32[0];
  v42 = vadd_f32(v40, v41);
  v43 = vadd_f32(v36, v37);
  v36.i32[1] = v40.i32[1];
  v37.i32[1] = v41.i32[1];
  v44 = vsub_f32(v36, v37);
  v45 = vsub_f32(v1, v9);
  v46 = vadd_f32(v29, vadd_f32(v22, *a1));
  v47 = vsub_f32(v23, v24);
  v48 = vsub_f32(v17, v20);
  v49 = vadd_f32(vsub_f32(v7, v5), v43);
  v50 = vsub_f32(v45, v42);
  v7.f32[0] = 2.3083 * *v43.i32;
  v45.f32[0] = vmuls_lane_f32(1.3327, v38, 1);
  v51 = vmul_f32(vsub_f32(v47, v39), vdup_n_s32(0x3F0F1BBDu));
  v52 = vmul_f32(vadd_f32(v50, v49), 0x3F167918BF167918);
  v53 = vsub_f32(v43, v42);
  v54 = vmul_f32(vzip1_s32(vdup_lane_s32(v43, 1), v53), 0x3F61B5A4C013BA93);
  v20.f32[0] = 0.3146 * v10.f32[0];
  v55 = __PAIR64__(v44.u32[1], v10.u32[0]);
  v56 = vmul_f32(v44, 0x3EA113883FAA9521);
  v44.i32[1] = v38.i32[1];
  v57 = vmul_f32(vadd_f32(v55, v44), vdup_n_s32(0x3F02503Fu));
  v38.f32[0] = vmuls_lane_f32(0.54491, v42, 1);
  v58 = vdup_lane_s32(v42, 0);
  v58.i32[0] = v53.i32[1];
  v59 = vmul_f32(v58, 0x3F0B7F05BF61B5A4);
  __asm { FMOV            V27.2S, #-1.5 }

  v61 = vmul_f32(v22, _D27);
  v62 = vzip1_s32(v47, v48);
  v47.i32[0] = v48.i32[1];
  v63 = vmul_f32(v62, 0x3EF7DEF6BF56A99BLL);
  v64 = vmul_f32(v47, 0xBF56A99BBEF7DEF6);
  v65 = vmul_f32(vzip2_s32(v25, v21), 0x3FF000003F8A9067);
  v66 = vmul_f32(vzip1_s32(v21, v25), 0xBF8A90673FF00000);
  *v43.i32 = 1.5388 * v49.f32[0];
  v67 = vmul_f32(vext_s8(v49, v50, 4uLL), 0xBEB9FEB1BFC4F8C4);
  v68 = vsub_f32(v35, v51);
  v69 = vadd_f32(v66, v65);
  v70 = vadd_f32(v63, v64);
  *v25.i32 = v38.f32[0] + v59.f32[0];
  v96 = v20.f32[0] + v57.f32[0];
  v50.f32[0] = vmuls_lane_f32(0.36327, v50, 1) + *&v52.i32[1];
  v71 = vadd_f32(v46, v61);
  v72 = vadd_f32(v26, v71);
  v73 = vadd_f32(v35, v51);
  v74 = v73.f32[1];
  v73.i32[1] = v68.i32[1];
  v75 = vadd_f32(vrev64_s32(v52), v67);
  v76 = vsub_f32(v73, v75);
  *v21.i32 = v68.f32[0] + v50.f32[0];
  v67.f32[0] = (v20.f32[0] + v57.f32[0]) + *v25.i32;
  v77 = vsub_f32(v54, v59);
  v78 = vsub_f32(v56, v57);
  v79 = vsub_f32(v77, v78);
  v78.i32[1] = vadd_f32(v56, v57).i32[1];
  v56.i32[0] = vsub_f32(v66, v65).u32[0];
  v56.i32[1] = v69.i32[1];
  v20.i32[0] = vsub_f32(v71, v26).u32[0];
  v80 = vadd_f32(v56, __PAIR64__(v72.u32[1], v20.u32[0]));
  v59.i32[0] = vsub_f32(v63, v64).u32[0];
  v81 = vsub_f32(v64, v63);
  v82 = vadd_f32(v78, v77);
  v83 = vadd_f32(v69, v72);
  v69.f32[0] = v7.f32[0] - v54.f32[1];
  v54.f32[0] = vsub_f32(v83, v70).f32[0];
  v59.i32[1] = v70.i32[1];
  v84 = vadd_f32(v70, v83);
  v83.f32[0] = v45.f32[0] - v57.f32[1];
  v45.f32[0] = *v52.i32 + *v43.i32;
  v26.i32[0] = v66.i32[1];
  v85 = vsub_f32(vzip2_s32(v65, v71), v26);
  *v52.i32 = (*v52.i32 + *v43.i32) + v74;
  v45.f32[0] = v74 - v45.f32[0];
  v86 = vadd_f32(v75, v73);
  v87 = vadd_f32(v80, v59);
  v88 = __PAIR64__(vsub_f32(v80, v70).u32[1], v87.u32[0]);
  v89 = vadd_f32(v86, v88);
  v90 = vsub_f32(v89, v79);
  v66.i32[0] = vadd_f32(v79, vadd_f32(v76, v87)).u32[0];
  v91 = __PAIR64__(v82.u32[1], v67.u32[0]);
  *v71.i32 = v69.f32[0] - v83.f32[0];
  v69.f32[0] = v69.f32[0] + v83.f32[0];
  *(a1 + 8) = v67.f32[0] + ((v68.f32[0] + v50.f32[0]) + v54.f32[0]);
  v67.f32[0] = vaddv_f32(v85);
  *(a1 + 12) = vext_s8(vadd_f32(v89, v82), v90, 4uLL);
  *(a1 + 20) = (*v52.i32 + (v81.f32[1] + v67.f32[0])) - *v71.i32;
  *(a1 + 24) = vadd_f32(v76, v46).u32[0];
  *(a1 + 28) = v45.f32[0] + v46.f32[1];
  v75.i32[0] = v50.i32[0];
  v92 = vsub_f32(v68, v75);
  v54.i32[1] = v88.i32[1];
  v20.i32[1] = v85.i32[1];
  *(a1 + 32) = vsub_f32(vadd_f32(v92, v54), v91);
  *(a1 + 40) = v20;
  *(a1 + 48) = vadd_f32(__PAIR64__(v86.u32[1], v21.u32[0]), v46);
  *(a1 + 56) = vsub_f32(vadd_f32(v86, v84), v82).u32[0];
  *(a1 + 60) = (*v52.i32 + v87.f32[1]) - v69.f32[0];
  *(a1 + 64) = v66.i32[0];
  *(a1 + 68) = *v71.i32 + (v45.f32[0] + (v81.f32[1] + v67.f32[0]));
  *(a1 + 72) = vadd_f32(v92, v46);
  *(a1 + 80) = v72;
  *(a1 + 100) = *v52.i32 + v46.f32[1];
  *(a1 + 104) = vadd_f32(v82, vadd_f32(v76, v84)).u32[0];
  *(a1 + 108) = v69.f32[0] + (v45.f32[0] + v87.f32[1]);
  v77.i32[0] = v25.i32[0];
  v78.f32[0] = v96;
  v93 = vsub_f32(v77, v78);
  v80.i32[1] = v67.i32[0];
  v59.i32[1] = v81.i32[1];
  v94 = vsub_f32(v80, v59);
  *(a1 + 88) = v93.f32[0] + (*v21.i32 + v94.f32[0]);
  *a1 = v46;
  *(a1 + 92) = vext_s8(vadd_f32(v93, vadd_f32(v86, v94)), vadd_f32(v86, v46), 4uLL);
  result = vsub_f32(vadd_f32(v92, v94), v93);
  *(a1 + 112) = result;
  return result;
}

char *GenShapedWBExcitation(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float *a5, float *a6, unint64_t a7, uint64_t a8, float *a9, unint64_t a10, float *a11, unint64_t a12, uint64_t a13, __int16 a14, float *a15, __int16 *a16, uint64_t a17, __int16 a18, __int16 a19)
{
  v102 = *MEMORY[0x1E69E9840];
  v97[0] = -1;
  v97[1] = -1;
  v73[0] = -1;
  v73[1] = -1;
  v20 = ((((COERCE_FLOAT(*a17) + 0.0) + COERCE_FLOAT(HIDWORD(*a17))) + COERCE_FLOAT(*(a17 + 8))) + COERCE_FLOAT(HIDWORD(*a17))) * 0.25;
  if (a19)
  {
    v21 = 0.2;
    v22 = -0.8;
    v23 = a6;
    v24 = a7;
    if (a14 != 2 && v20 <= 0.35)
    {
      v25 = v20 < 0.2 || a14 == 1;
      if (v25)
      {
        v22 = -0.99;
      }

      else
      {
        v22 = -0.96;
      }

      if (v25)
      {
        v21 = 0.01;
      }

      else
      {
        v21 = 0.05;
      }
    }
  }

  else
  {
    v23 = a6;
    v24 = a7;
    v21 = 0.05;
    v22 = -0.96;
  }

  __C = -1;
  v98 = -1;
  v99 = -1;
  memset(__b, 255, sizeof(__b));
  *&v26 = -1;
  *(&v26 + 1) = -1;
  v94[0] = v26;
  v94[1] = v26;
  v94[2] = v26;
  v94[3] = v26;
  v94[4] = v26;
  v94[5] = v26;
  v94[6] = v26;
  v94[7] = v26;
  v94[8] = v26;
  v94[9] = v26;
  v94[10] = v26;
  v94[11] = v26;
  v94[12] = v26;
  v94[13] = v26;
  v94[14] = v26;
  v94[15] = v26;
  v94[16] = v26;
  v94[17] = v26;
  v94[18] = v26;
  v94[19] = v26;
  LODWORD(__A[0]) = 0;
  vDSP_vfill(__A, &__C, 1, 2uLL);
  Decimate_allpass_steep(a15, v23, v24, 640, __b, v97);
  flip_spectrum_and_decimby4(__b, v94, __A, a9, a10, a11, a12, 0);
  if (a18)
  {
    create_random_vector(a4, 0x50u, a16, v27);
  }

  else
  {
    autocorr(v94, v97, &v98, 3, 80, win_flatten_4k, wac, 1, 1);
    v28 = 0;
    LODWORD(v97[0]) = fmaxf(*v97, 0.00000001);
    do
    {
      *(v97 + v28 * 4) = *(v97 + v28 * 4) * *&wac[v28];
      ++v28;
    }

    while (v28 != 3);
    *&v29 = -1;
    *(&v29 + 1) = -1;
    __A[18] = v29;
    __A[19] = v29;
    __A[16] = v29;
    __A[17] = v29;
    __A[14] = v29;
    __A[15] = v29;
    __A[12] = v29;
    __A[13] = v29;
    __A[10] = v29;
    __A[11] = v29;
    __A[8] = v29;
    __A[9] = v29;
    __A[6] = v29;
    __A[7] = v29;
    __A[4] = v29;
    __A[5] = v29;
    __A[2] = v29;
    __A[3] = v29;
    __A[0] = v29;
    __A[1] = v29;
    lev_dur(&v98, &v100, v97, &v98, 2, v73, &v74);
    *&v74 = &__C;
    *(&v74 + 1) = &v102;
    *&v75 = &__C;
    fir(v94);
    v30 = 0;
    v31 = 0.00001;
    do
    {
      v32 = *&a4[v30 / 4];
      __A[v30 / 0x10] = vabsq_f32(v32);
      v33 = vmulq_f32(v32, v32);
      v31 = (((v31 + v33.f32[0]) + v33.f32[1]) + v33.f32[2]) + v33.f32[3];
      v30 += 16;
    }

    while (v30 != 320);
    v34 = 0;
    *&v35 = -1;
    *(&v35 + 1) = -1;
    v92 = v35;
    v93 = v35;
    v90 = v35;
    v91 = v35;
    v88 = v35;
    v89 = v35;
    v86 = v35;
    v87 = v35;
    v84 = v35;
    v85 = v35;
    v82 = v35;
    v83 = v35;
    v80 = v35;
    v81 = v35;
    v78 = v35;
    v79 = v35;
    v76 = v35;
    v77 = v35;
    v74 = v35;
    v75 = v35;
    *&v35 = -v22;
    v36 = *a5;
    do
    {
      v37 = v36 + (v21 * *(__A + v34));
      *(&v74 + v34) = v37;
      v36 = v37 * *&v35;
      v34 += 4;
    }

    while (v34 != 320);
    *a5 = v36;
    create_random_vector(v94, 0x50u, a16, *&v35);
    v38 = 0;
    v39 = 0.00001;
    do
    {
      v40 = vmulq_f32(*(&v74 + v38 * 16), v94[v38]);
      v94[v38] = v40;
      v41 = vmulq_f32(v40, v40);
      v39 = (((v39 + v41.f32[0]) + v41.f32[1]) + v41.f32[2]) + v41.f32[3];
      ++v38;
    }

    while (v38 != 20);
    v43 = v20 < 0.2 && a19 != 0;
    if (a14 == 1 || v43)
    {
      v68 = 0;
      v69 = sqrtf(v31 / v39);
      if (v39 == 0.0)
      {
        v69 = 0.0;
      }

      do
      {
        *&a4[v68 / 4] = vmulq_n_f32(v94[v68 / 0x10], v69);
        v68 += 16;
      }

      while (v68 != 320);
    }

    else
    {
      v44 = 0;
      v45 = 0;
      v47 = a14 == 2 && a19 != 0;
      do
      {
        v48 = *(a17 + 4 * v44) + *(a17 + 4 * v44);
        if (v48 > 1.0)
        {
          v48 = 1.0;
        }

        if (v47)
        {
          v49 = v48;
        }

        else
        {
          v49 = *(a17 + 4 * v44);
        }

        v50 = 0.0;
        if (v49 > 0.0)
        {
          v51 = 0;
          for (i = v49; i > 1.0; --v51)
          {
            i = i * 0.5;
          }

          while (i < 0.5)
          {
            i = i + i;
            ++v51;
          }

          v53 = v51 & 0xFFFE;
          v54 = ldexp(1.0, (v51 & 0xFFFE));
          v55 = (((v49 * v54) * 1.0127) + 0.27) + (((v49 * v54) * -0.2864) * (v49 * v54));
          v56 = exp2(-(v53 >> 1));
          v50 = v55 * v56;
        }

        v57 = root_a_over_b(v31 * (1.0 - v49), v39);
        v58 = 0;
        do
        {
          v59 = &a4[v45];
          v60 = (v59 + 1);
          v62 = v59 < a4 || v60 > (a4 + 80) || v59 >= v60;
          v63 = v94 + 4 * v45;
          v64 = v63 + 4;
          if (v62 || v63 < v94 || v64 > __A || v63 >= v64)
          {
            __break(0x5519u);
          }

          *v59 = (v57 * *(v94 + v45++)) + (v50 * *v59);
          v62 = v58++ >= 0x13;
        }

        while (!v62);
        ++v44;
      }

      while (v44 != 4);
    }
  }

  return syn_filt(a2);
}

float *ScaleShapedSHB(int a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, float *a6, unint64_t a7, float a8, uint64_t a9, unint64_t a10, unint64_t a11, float *a12, unint64_t a13)
{
  v18 = a1;
  v205[0] = *MEMORY[0x1E69E9840];
  if (a1 == 10)
  {
    v19 = skip_bands_WB_TBE;
    v197 = full_band_bpf_3;
    v202 = 5;
    v20 = 80;
  }

  else
  {
    v19 = skip_bands_SWB_TBE;
    v197 = skip_bands_WB_TBE;
    v202 = 20;
    v20 = 320;
  }

  v199 = v20;
  memset(__b, 255, sizeof(__b));
  __A = 0.0;
  v200 = v202 + v199;
  vDSP_vfill(&__A, __b, 1, (v202 + v199));
  if (v18 == 10)
  {
    v21 = 0;
    v22 = (a6 + 1) <= a7 && a6 + 1 >= a6;
    v23 = !v22;
    v24 = a12 + 2;
    v25 = a5;
    v26 = v199;
    do
    {
      if ((v24 + 1) <= a13 && v24 <= v24 + 1 && v24 >= a12)
      {
        v29 = v23;
      }

      else
      {
        v29 = 1;
      }

      if ((v29 & 1) != 0 || v19 + 1 > v197)
      {
        goto LABEL_332;
      }

      v30 = *v19;
      v31 = v21 + v30;
      v32 = (a2 + 4 * v31);
      v33 = (v32 + 1);
      v34 = v32 < a2 || v33 > a3;
      v35 = v34 || v32 > v33;
      v36 = &__b[v31];
      v37 = v36 + 1;
      v38 = !v35 && v36 >= __b;
      v39 = !v38 || v37 > v205;
      if (v39 || v36 > v37)
      {
        goto LABEL_332;
      }

      *v36 = (*v24 * *a6) * *v32;
      v41 = v21 + v30 + 5;
      v42 = (a2 + 4 * v41);
      if (v42 < a2)
      {
        goto LABEL_332;
      }

      if ((v42 + 1) > a3)
      {
        goto LABEL_332;
      }

      if (v42 > v42 + 1)
      {
        goto LABEL_332;
      }

      v43 = &__b[v41];
      if (v43 < __b || v43 + 1 > v205 || v43 > v43 + 1)
      {
        goto LABEL_332;
      }

      *v43 = *v42 * *a6;
      ++v21;
      v24 += 2;
    }

    while (v21 != 5);
    for (i = 1; i != 8; ++i)
    {
      v45 = 0;
      v46 = 0;
      v47 = &a6[i];
      v50 = (v47 + 1) <= a7 && v47 <= v47 + 1 && v47 >= a6;
      v51 = &v19[i];
      v54 = v51 + 1 <= v197 && v51 <= v51 + 1 && v51 >= v19;
      v55 = 0x3FFFFFFFFFFFFFF6;
      do
      {
        v56 = &a12[v55 + 11];
        v57 = &a12[v55 + 12];
        if (v56 < a12 || v57 > a13 || v56 > v57)
        {
          goto LABEL_332;
        }

        if (!v50)
        {
          goto LABEL_332;
        }

        v60 = &a12[v45 + 9];
        if (v60 < a12)
        {
          goto LABEL_332;
        }

        v61 = &a12[v45 + 10];
        if (v61 > a13)
        {
          goto LABEL_332;
        }

        if (v60 > v61)
        {
          goto LABEL_332;
        }

        if (!v54)
        {
          goto LABEL_332;
        }

        v62 = v46 + *v51;
        result = (a2 + 4 * v62);
        if (result < a2)
        {
          goto LABEL_332;
        }

        if ((result + 1) > a3)
        {
          goto LABEL_332;
        }

        if (result > result + 1)
        {
          goto LABEL_332;
        }

        v64 = &__b[v62];
        if (v64 < __b || v64 + 1 > v205 || v64 > v64 + 1)
        {
          goto LABEL_332;
        }

        *v64 = ((*v60 * *(v47 - 1)) + (a12[++v46] * *v47)) * *result;
        --v45;
        ++v55;
      }

      while (v55 * 4);
    }

    v65 = 0;
    v66 = a6 + 7;
    v69 = (a6 + 8) > a7 || v66 > a6 + 8 || v66 < a6;
    v71 = v19 + 8 >= v19 && v19 + 9 <= v197;
    v72 = a12 + 8;
    while (1)
    {
      v73 = (v72 + 1) > a13 || v72 > v72 + 1;
      v74 = !v73 && v72 >= a12;
      v75 = !v74 || v69;
      if (v75 || !v71)
      {
        break;
      }

      v76 = v65 + v19[8];
      v77 = (a2 + 4 * v76);
      v78 = (v77 + 1);
      v79 = v77 < a2 || v78 > a3;
      v80 = v79 || v77 > v78;
      v81 = &__b[v76];
      v82 = v81 + 1;
      v83 = !v80 && v81 >= __b;
      v84 = !v83 || v82 > v205;
      if (v84 || v81 > v82)
      {
        break;
      }

      v86 = *v72;
      v72 -= 2;
      *v81 = (v86 * *v66) * *v77;
      if (++v65 == 5)
      {
        goto LABEL_264;
      }
    }

LABEL_332:
    __break(0x5519u);
  }

  v87 = 0;
  v89 = (a6 + 1) > a7 || a6 + 1 < a6;
  v90 = v18;
  v91 = a12 + 1;
  v92 = v18;
  v25 = a5;
  v26 = v199;
  do
  {
    v93 = (a2 + (v87 >> 46));
    v94 = (v93 + 1);
    if (v93 < a2 || v94 > a3 || v93 > v94)
    {
      goto LABEL_332;
    }

    v97 = (v91 + 1) > a13 || v91 > v91 + 1;
    v98 = !v97 && v91 >= a12;
    if (!v98 || v89)
    {
      goto LABEL_332;
    }

    v100 = &__b[v87 >> 48];
    if (v100 < __b || v100 + 1 > v205 || v100 > v100 + 1)
    {
      goto LABEL_332;
    }

    v101 = *v91++;
    *v100 = (*v93 * v101) * *a6;
    v87 += 0x1000000000000;
    --v92;
  }

  while (v92);
  v102 = 0;
  v103 = (4 * v18) - v18;
  do
  {
    v104 = 0;
    v105 = &a6[4 * v102];
    do
    {
      v106 = (a2 + 4 * v18);
      v107 = (v106 + 1);
      v109 = v106 < a2 || v107 > a3 || v106 > v107;
      v110 = &__b[v18];
      v111 = v110 + 1;
      if (v109 || v110 < __b || v111 > v205 || v110 > v111)
      {
        goto LABEL_332;
      }

      __b[v18] = *v106 * *v105;
      LOWORD(v18) = v18 + 1;
      ++v104;
    }

    while (v103 > v104);
    v115 = 0;
    v116 = v105 + 4;
    v119 = (v105 + 5) > a7 || v116 > v105 + 5 || v116 < a6;
    result = (4 * v90);
    v120 = v90 - 1;
    do
    {
      v121 = (a2 + 4 * v18);
      v122 = (v121 + 1);
      if (v121 < a2 || v122 > a3 || v121 > v122)
      {
        goto LABEL_332;
      }

      v125 = result + a12;
      v126 = result + a12 - 4;
      if (v126 < a12 || v125 > a13 || v126 > v125)
      {
        goto LABEL_332;
      }

      v127 = &a12[v115 + 1];
      v128 = &a12[v115 + 2];
      v129 = v128 > a13 || v127 > v128;
      v130 = !v129 && v127 >= a12;
      if (!v130 || v119)
      {
        goto LABEL_332;
      }

      v132 = &__b[v18];
      if (v132 < __b || v132 + 1 > v205 || v132 > v132 + 1)
      {
        goto LABEL_332;
      }

      __b[v18] = *v121 * ((*v127 * *v116) + (a12[v120] * *v105));
      LOWORD(v18) = v18 + 1;
      --v120;
      ++v115;
      --result;
    }

    while (v120 != -1);
    ++v102;
  }

  while (v102 != 3);
  v133 = 0;
  v134 = a6 + 12;
  v137 = (a6 + 13) > a7 || v134 > a6 + 13 || v134 < a6;
  do
  {
    v138 = (a2 + 4 * v18);
    v141 = (v138 + 1) > a3 || v138 > v138 + 1 || v138 < a2 || v137;
    if (v141)
    {
      goto LABEL_332;
    }

    v142 = &__b[v18];
    if (v142 < __b || v142 + 1 > v205 || v142 > v142 + 1)
    {
      goto LABEL_332;
    }

    __b[v18] = *v138 * *v134;
    LOWORD(v18) = v18 + 1;
    ++v133;
  }

  while (v103 > v133);
  v143 = -v90;
  v144 = &a12[v90 - 1];
  do
  {
    v145 = (a2 + 4 * v18);
    v146 = (v145 + 1);
    v148 = v145 < a2 || v146 > a3 || v145 > v146;
    v149 = (v144 + 1);
    v152 = v148 || v144 < a12 || v149 > a13 || v144 > v149;
    v153 = &__b[v18];
    v154 = v153 + 1;
    if (v152 || v153 < __b || v154 > v205 || v153 > v154)
    {
      goto LABEL_332;
    }

    v158 = *v144--;
    __b[v18] = (*v145 * v158) * *v134;
    LOWORD(v18) = v18 + 1;
    v22 = __CFADD__(v143++, 1);
  }

  while (!v22);
LABEL_264:
  v159 = 0;
  v160 = 0;
  do
  {
    v161 = v160;
    v162 = &__b[v160];
    v163 = v162 + 1;
    v165 = v162 < __b || v163 > v205 || v162 > v163;
    v166 = (a10 + 4 * v161);
    v167 = (v166 + 1);
    if (v165 || v166 < a10 || v167 > a11 || v166 > v167)
    {
      goto LABEL_332;
    }

    v171 = (a2 + 4 * v161);
    if (v171 < a2)
    {
      goto LABEL_332;
    }

    if ((v171 + 1) > a3)
    {
      goto LABEL_332;
    }

    if (v171 > v171 + 1)
    {
      goto LABEL_332;
    }

    v172 = (__b[v161] * *v166) * a8;
    *v171 = v172;
    v173 = (a4 + 4 * v161);
    if (v173 < a4)
    {
      goto LABEL_332;
    }

    if ((v173 + 1) > v25)
    {
      goto LABEL_332;
    }

    if (v173 > v173 + 1)
    {
      goto LABEL_332;
    }

    *v171 = v172 + *v173;
    v174 = (a2 + 4 * (v159 + v202));
    if (v174 < a2 || (v174 + 1) > a3 || v174 > v174 + 1)
    {
      goto LABEL_332;
    }

    *v174 = __b[v161] * a8;
    v160 = v161 + 1;
    v159 = (v161 + 1);
  }

  while (v202 > v159);
  if (v26 > v159)
  {
    do
    {
      v175 = v160;
      v176 = &__b[v160];
      v177 = v176 + 1;
      v179 = v176 < __b || v177 > v205 || v176 > v177;
      v180 = (a2 + 4 * v175);
      v181 = (v180 + 1);
      if (v179 || v180 < a2 || v181 > a3 || v180 > v181)
      {
        goto LABEL_332;
      }

      *v180 = __b[v175] * a8;
      v160 = v175 + 1;
    }

    while (v26 > (v175 + 1));
    v159 = v160;
  }

  v185 = v160;
  v186 = v202 + v199;
  if (v200 > v159)
  {
    while (1)
    {
      v187 = &__b[v185];
      v188 = v187 + 1;
      v189 = v187 < __b || v188 > v205;
      v190 = v189 || v187 > v188;
      v191 = (a10 + 4 * (v186 + ~v159));
      v192 = (v191 + 1);
      v193 = !v190 && v191 >= a10;
      v194 = !v193 || v192 > a11;
      if (v194 || v191 > v192)
      {
        break;
      }

      v196 = (a4 + 4 * (v159 - v26));
      if (v196 < a4 || (v196 + 1) > v25 || v196 > v196 + 1)
      {
        break;
      }

      *v196 = (*v187 * *v191) * a8;
      v159 = ++v185;
      v186 = v202 + v199;
      if (v200 <= v185)
      {
        return result;
      }
    }

    goto LABEL_332;
  }

  return result;
}

float *flip_spectrum_and_decimby4(unint64_t a1, float *a2, unint64_t a3, float *a4, unint64_t a5, float *a6, unint64_t a7, int a8)
{
  v46 = *MEMORY[0x1E69E9840];
  memset(__b, 255, sizeof(__b));
  memset(v44, 255, sizeof(v44));
  if (a8)
  {
    v16 = 0;
    v17 = a1 + 1280;
    v18 = -2;
    v19 = 80;
    do
    {
      v20 = a1 + v16 * 4;
      if (a1 + v16 * 4 < a1 || (v20 + 4 <= v17 ? (v21 = v20 > v20 + 4) : (v21 = 1), (v22 = &v44[v16], v23 = &v44[v16 + 1], !v21) ? (v24 = v22 >= v44) : (v24 = 0), v24 ? (v25 = v23 > __b) : (v25 = 1), !v25 ? (v26 = v22 > v23) : (v26 = 1), v26 || (v27 = (a1 + v16 * 4 + 4), v28 = a1 + v16 * 4 + 8, v44[v16] = ((v18 + 2) * -0.0125) * *(a1 + v16 * 4), v27 < a1) || v28 > v17 || v27 > v28 || (v29 = &v44[v16 + 1], v29 < v44) || (v30 = &v44[v16 + 2], v30 > __b) || v29 > v30))
      {
LABEL_52:
        __break(0x5519u);
      }

      *v29 = ((v18 + 3) * 0.0125) * *v27;
      v18 += 2;
      v16 += 2;
    }

    while (v18 < 0x4E);
  }

  else
  {
    v19 = 0;
  }

  v31 = a1 + 1280;
  do
  {
    v32 = a1 + 4 * v19;
    v33 = v32 + 4;
    v35 = v32 < a1 || v33 > v31 || v32 > v33;
    v36 = &v44[v19];
    v37 = v36 + 1;
    if (v35 || v36 < v44 || v37 > __b || v36 > v37)
    {
      goto LABEL_52;
    }

    v44[v19] = -*(a1 + 4 * v19);
    v41 = (a1 + 4 * (v19 | 1));
    if (v41 < a1)
    {
      goto LABEL_52;
    }

    if ((v41 + 1) > v31)
    {
      goto LABEL_52;
    }

    if (v41 > v41 + 1)
    {
      goto LABEL_52;
    }

    v42 = &v44[v19 | 1];
    if (v42 < v44 || v42 + 1 > __b || v42 > v42 + 1)
    {
      goto LABEL_52;
    }

    *v42 = *v41;
    v24 = v19 >= 0x13E;
    v19 += 2;
  }

  while (!v24);
  Decimate_allpass_steep(v44, a4, a5, 320, __b, &v46);
  return Decimate_allpass_steep(__b, a6, a7, 160, a2, a3);
}

void core_encode_openloop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float *a9, unint64_t a10, unint64_t a11, unint64_t a12, uint64_t *a13, __int16 a14, __int16 a15)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  v17 = v16;
  v771 = v18;
  v794 = v19;
  v795 = v20;
  v779 = v21;
  v23 = v22;
  v24 = v15;
  v1135[1] = *MEMORY[0x1E69E9840];
  *&v25 = -1;
  *(&v25 + 1) = -1;
  v954 = v25;
  v955 = v25;
  v952 = v25;
  v953 = v25;
  v950 = v25;
  v951 = v25;
  v948 = v25;
  v949 = v25;
  v946 = v25;
  v947 = v25;
  v944 = v25;
  v945 = v25;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v943[0] = v26;
  v943[1] = v26;
  v941 = -21846;
  v940[0] = v26;
  v940[1] = v26;
  v938 = -1;
  v937[19] = v25;
  v937[20] = v25;
  v937[17] = v25;
  v937[18] = v25;
  v937[15] = v25;
  v937[16] = v25;
  v937[13] = v25;
  v937[14] = v25;
  v937[11] = v25;
  v937[12] = v25;
  v937[9] = v25;
  v937[10] = v25;
  v937[7] = v25;
  v937[8] = v25;
  v937[5] = v25;
  v937[6] = v25;
  v937[3] = v25;
  v937[4] = v25;
  v937[1] = v25;
  v937[2] = v25;
  v937[0] = v25;
  v935 = -1;
  v934[19] = v25;
  v934[20] = v25;
  v934[17] = v25;
  v934[18] = v25;
  v934[15] = v25;
  v934[16] = v25;
  v934[13] = v25;
  v934[14] = v25;
  v934[11] = v25;
  v934[12] = v25;
  v934[9] = v25;
  v934[10] = v25;
  v934[7] = v25;
  v934[8] = v25;
  v934[5] = v25;
  v934[6] = v25;
  v934[3] = v25;
  v934[4] = v25;
  v934[1] = v25;
  v934[2] = v25;
  v934[0] = v25;
  memset(v933, 170, sizeof(v933));
  memset(v932, 170, sizeof(v932));
  memset(v931, 170, sizeof(v931));
  v881 = 0xAAAAAAAAAAAAAAAALL;
  *&v27 = 0xAAAAAAAAAAAAAAAALL;
  *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v880 = v27;
  v879 = v27;
  *&v27 = -1;
  *(&v27 + 1) = -1;
  v930 = v27;
  v929 = v27;
  v928 = v27;
  v927 = v27;
  v926 = v27;
  v925 = v27;
  v924 = v27;
  v923 = v27;
  v920[1] = 0;
  v920[0] = 0;
  v921 = 0;
  v918 = -1;
  v917[1] = -1;
  v917[0] = -1;
  memset(v915, 170, sizeof(v915));
  v914[3] = v27;
  v914[2] = v27;
  v914[1] = v27;
  v914[0] = v27;
  v913[16] = v27;
  v913[15] = v27;
  v913[14] = v27;
  v913[13] = v27;
  v913[12] = v27;
  v913[11] = v27;
  v913[10] = v27;
  v913[9] = v27;
  v913[8] = v27;
  v913[7] = v27;
  v913[6] = v27;
  v913[5] = v27;
  v913[4] = v27;
  v913[3] = v27;
  v913[2] = v27;
  v913[1] = v27;
  v913[0] = v27;
  v912[3] = v27;
  v912[2] = v27;
  v912[1] = v27;
  v912[0] = v27;
  v911[3] = v27;
  v911[2] = v27;
  v911[1] = v27;
  v911[0] = v27;
  v910 = v27;
  v909 = v27;
  v908 = v27;
  v907 = v27;
  memset(__b, 255, sizeof(__b));
  memset(__C, 255, sizeof(__C));
  *&v28 = -1;
  *(&v28 + 1) = -1;
  v903[2] = v28;
  v903[3] = v28;
  v903[0] = v28;
  v903[1] = v28;
  v902[2] = v28;
  v902[3] = v28;
  v902[0] = v28;
  v902[1] = v28;
  v901[2] = v28;
  v901[3] = v28;
  v901[0] = v28;
  v901[1] = v28;
  v900[2] = v28;
  v900[3] = v28;
  v900[0] = v28;
  v900[1] = v28;
  v899[2] = v28;
  v899[3] = v28;
  v899[0] = v28;
  v899[1] = v28;
  v29 = *(v24 + 5220);
  v898[0] = *(v24 + 5204);
  v898[1] = v29;
  v30 = *(v24 + 5252);
  v768 = (v24 + 5268);
  v769 = v24 + 5204;
  v898[2] = *(v24 + 5236);
  v898[3] = v30;
  v31 = *(v24 + 5284);
  v897[0] = *(v24 + 5268);
  v897[1] = v31;
  v32 = *(v24 + 5316);
  v897[2] = *(v24 + 5300);
  v897[3] = v32;
  LODWORD(v1006[0]) = 0;
  vDSP_vfill(v1006, __b, 1, 0x241uLL);
  __src = (v24 + 252);
  memcpy(__b, (v24 + 252), 0x500uLL);
  LODWORD(v1006[0]) = 0;
  vDSP_vfill(v1006, __C, 1, 0x1F0uLL);
  v33 = *(v24 + 1552);
  __C[0] = *(v24 + 1536);
  __C[1] = v33;
  v34 = *(v24 + 1584);
  __C[2] = *(v24 + 1568);
  __C[3] = v34;
  v35 = (v24 + 67628);
  v36 = *(v24 + 1616);
  *(v24 + 67564) = *(v24 + 1600);
  *(v24 + 67580) = v36;
  v37 = *(v24 + 1648);
  *(v24 + 67596) = *(v24 + 1632);
  *(v24 + 67612) = v37;
  if (v24 + 67628 < (v24 + 67564))
  {
    goto LABEL_1033;
  }

  v38 = (v24 + 67462);
  *(v24 + 67532) = *(v24 + 1532);
  *(v24 + 67536) = *(v24 + 18436);
  v805 = (v24 + 18436);
  v770 = (v24 + 67536);
  *(v24 + 67552) = *(v24 + 18452);
  *(v24 + 67560) = *(v24 + 1968);
  v755 = v24 + 67560;
  v39 = *(v24 + 37968);
  *v35 = *(v24 + 37952);
  *(v24 + 67644) = v39;
  v760 = (v24 + 67532);
  if (v24 + 67660 < v35)
  {
    goto LABEL_1033;
  }

  v40 = 0;
  v41 = v24 + 122092;
  v762 = v24 + 116656;
  v42 = v24 + 110816;
  v759 = (v24 + 105808);
  v773 = (v24 + 96528);
  v757 = (v24 + 77424);
  v772 = (v24 + 26812);
  v767 = (v24 + 5332);
  v763 = v24 + 86024;
  v761 = (v24 + 184);
  v806 = (v24 + 1532);
  v784 = (v24 + 1536);
  v783 = (v24 + 37952);
  *(v24 + 67660) = *(v24 + 1972);
  v43 = v771;
  do
  {
    v44 = &v933[v40 + 1];
    if (&v933[v40] < v933 || v44 > v934 || &v933[v40] > v44)
    {
      goto LABEL_1033;
    }

    v933[v40++] = 0;
  }

  while (v40 != 136);
  v47 = 1458;
  v48 = v932;
  do
  {
    v49 = v48 + 1;
    if (v48 < v932 || v49 > v933 || v48 > v49)
    {
      goto LABEL_1033;
    }

    *v48++ = 0;
    --v47;
  }

  while (v47);
  v796 = v24 + 36272;
  v754 = (v24 + 67660);
  v756 = v24 + 67628;
  mvi2i((v24 + 122096), v24 + 122108, &v932[2], v933, 3);
  v877 = 0;
  HIDWORD(v882) = 0;
  v878[0] = v931;
  v878[1] = v932;
  if (v23 != 2 || (v52 = 0, *(v24 + 111784) != 1))
  {
    v52 = *(v24 + 68728);
  }

  *(v24 + 68726) = v52;
  v53 = *(v24 + 88);
  v871 = v24;
  v825 = (v24 + 67462);
  v812 = v24 + 110816;
  v791 = v24 + 122092;
  v815 = v23;
  if (*(v24 + 88))
  {
    v785 = 0.0;
    if (*(v24 + 110824))
    {
LABEL_311:
      v67 = v24 + 5268;
      goto LABEL_312;
    }
  }

  if (*(v24 + 110828))
  {
    E_LPC_lsp_unweight(v769, v769, v768, 1.0 / *(v24 + 110896));
    *(v24 + 110828) = 0;
    v53 = *(v24 + 88);
  }

  v54 = v24 + 122156;
  v55 = v24 + 122158;
  v764 = (v24 + 122156);
  if (v53 == 1)
  {
    if (v54 > v55)
    {
      goto LABEL_1033;
    }

    v56 = *(v24 + 68726);
    v57 = *(v24 + 68720);
    v42 = v24 + 110816;
    v58 = *(v24 + 111784);
    v59 = *(v24 + 111820);
    *&v1006[0] = v24 + 3540;
    *(&v1006[0] + 1) = v24 + 4564;
    *&v1006[1] = v24 + 3540;
    v60 = (v17 + 64);
    *&v1005[0] = v24 + 4564;
    *(&v1005[0] + 1) = v24 + 5076;
    *&v1005[1] = v24 + 4564;
    v43 = v771;
    v751 = v59;
    v750 = (v24 + 122156);
    v749 = v56;
    *&v748[4] = 5;
    *v748 = v57;
    v746 = (v24 + 18476);
    v747 = v24 + 18540;
    v744 = (v24 + 18540);
    v745 = v24 + 18604;
    *&v743 = &v952;
    *(&v743 + 1) = v956;
    v61 = v771 + 64;
    v740 = v17;
    v742 = v17 + 64;
    v62 = v24;
    v63 = 1;
  }

  else
  {
    if (v54 > v55)
    {
      goto LABEL_1033;
    }

    v63 = v53;
    v64 = *(v24 + 68726);
    v65 = *(v24 + 68720);
    v58 = *(v24 + 111784);
    v66 = *(v24 + 111820);
    *&v1006[0] = v24 + 3540;
    *(&v1006[0] + 1) = v24 + 4564;
    *&v1006[1] = v24 + 3540;
    v60 = &v952;
    *&v1005[0] = v24 + 4564;
    *(&v1005[0] + 1) = v24 + 5076;
    *&v1005[1] = v24 + 4564;
    v42 = v24 + 110816;
    v41 = v24 + 122092;
    v751 = v66;
    v750 = (v24 + 122156);
    v749 = v64;
    *&v748[4] = v23;
    *v748 = v65;
    v746 = (v24 + 18476);
    v747 = v24 + 18540;
    v744 = (v24 + 18540);
    v745 = v24 + 18604;
    *&v743 = &v952;
    *(&v743 + 1) = v956;
    v61 = v771 + 64;
    v740 = v17;
    v742 = v17 + 64;
    v43 = v771;
    v62 = v24;
  }

  v67 = v24 + 5268;
  lpc_quantization(v62, v63, v58, v768, v767, v43, v61, v60, v740, v742, &v948, &v952, v743, &v944, &v948, v744, v745, v746, v747, *v748, *&v748[2], *&v748[4], v749, v933, v934, &v882 + 1, &v883, v750, v751, v1006, v1005, v915, v916, &v877);
  if (*(v41 + 56))
  {
    v68 = v948;
    v69 = v949;
    *v769 = v948;
    *(v24 + 5220) = v69;
    v70 = v950;
    v71 = v951;
    *(v24 + 5236) = v950;
    *(v24 + 5252) = v71;
    v72 = v953;
    *v768 = v952;
    *(v24 + 5284) = v72;
    v73 = v955;
    *(v24 + 5300) = v954;
    *(v24 + 5316) = v73;
    v944 = v68;
    v945 = v69;
    v946 = v70;
    v947 = v71;
  }

  *&v1006[0] = &v952;
  *(&v1006[0] + 1) = v956;
  *&v1006[1] = &v952;
  *&v1005[0] = v24 + 5268;
  *(&v1005[0] + 1) = v24 + 5332;
  *&v1005[1] = v24 + 5268;
  lsf_stab(v1006, v1005, 0);
  v785 = v74;
  v53 = *(v24 + 88);
  if (!*(v24 + 88))
  {
    v75 = *(v24 + 140);
    if (*(v24 + 68726))
    {
      int_lsp4(v75, v769, &v944, &v948, v937, v939, 0);
    }

    else
    {
      int_lsp(v75, v769, &v948, v937, v939, interpol_frac_12k8, scaleTcxTable, 0);
    }

    v76 = *(v24 + 68716) - (HIDWORD(v882) + *(v42 + 36));
    if (*v38)
    {
      v76 -= *(v24 + 67472);
    }

    if (*(v24 + 129336))
    {
      v76 -= get_tbe_bits(*(v24 + 64), *(v24 + 130), *v38);
    }

    if (*(v24 + 68726))
    {
      v76 -= 5;
    }

    if (*(v41 + 72))
    {
      v76 -= *(v41 + 68);
    }

    if (*(v24 + 52108))
    {
      TBEreset_enc(v24, *(v24 + 130));
    }

    v875 = *(v24 + 86216);
    v876 = *(v24 + 86232);
    if (*(v24 + 99928) < *(v24 + 99944))
    {
      goto LABEL_1033;
    }

    v753 = *(v24 + 99928);
    v752 = *(v24 + 99936);
    v872 = v932;
    v873 = v933;
    v874 = v932;
    v77 = a13[1];
    v803 = *a13;
    v78 = a13[2];
    memset(v896, 170, sizeof(v896));
    v895 = -3.0316e-13;
    v894 = 0xAAAAAAAAFFFFFFFFLL;
    v893 = -1;
    v892 = NAN;
    v888 = NAN;
    *(&v890 + 1) = -1;
    *&v890 = -1;
    v889 = -1;
    memset(v1003, 255, sizeof(v1003));
    *&v79 = -1;
    *(&v79 + 1) = -1;
    v1134 = v79;
    v1133 = v79;
    v1132 = v79;
    v1131 = v79;
    v1130 = v79;
    v1129 = v79;
    v1128 = v79;
    v1127 = v79;
    v1126 = v79;
    v1125 = v79;
    v1124 = v79;
    v1123 = v79;
    v1122 = v79;
    v1121 = v79;
    v1120 = v79;
    v1119 = v79;
    v1118 = v79;
    v1117 = v79;
    v1116 = v79;
    v1115 = v79;
    v1114 = v79;
    v1113 = v79;
    v1112 = v79;
    v1111 = v79;
    v1110 = v79;
    v1109 = v79;
    v1108 = v79;
    v1107 = v79;
    v1106 = v79;
    v1105 = v79;
    v1104 = v79;
    v1103 = v79;
    v1102 = v79;
    v1101 = v79;
    v1100 = v79;
    v1099 = v79;
    v1098 = v79;
    v1097 = v79;
    v1096 = v79;
    v1095 = v79;
    v1094 = v79;
    v1093 = v79;
    v1092 = v79;
    v1091 = v79;
    v1090 = v79;
    v1089 = v79;
    v1088 = v79;
    v1087 = v79;
    v1086 = v79;
    v1085 = v79;
    v1084 = v79;
    v1083 = v79;
    v1082 = v79;
    v1081 = v79;
    v1080 = v79;
    v1079 = v79;
    v1078 = v79;
    v1077 = v79;
    v1076 = v79;
    v1075 = v79;
    v1074 = v79;
    v1073 = v79;
    v1072 = v79;
    v1071 = v79;
    v1070 = v79;
    v1069 = v79;
    v1068 = v79;
    v1067 = v79;
    v1066 = v79;
    v1065 = v79;
    v1064 = v79;
    v1063 = v79;
    v1062 = v79;
    v1061 = v79;
    v1060 = v79;
    v1059 = v79;
    v1058 = v79;
    v1057 = v79;
    v1056 = v79;
    v1055 = v79;
    v1054 = v79;
    v1053 = v79;
    v1052 = v79;
    v1051 = v79;
    v1050 = v79;
    v1049 = v79;
    v1048 = v79;
    v1047 = v79;
    v1046 = v79;
    v1045 = v79;
    v1044 = v79;
    v1043 = v79;
    v1042 = v79;
    v1041 = v79;
    v1040 = v79;
    v1039 = v79;
    v1038 = v79;
    v1037 = v79;
    v1036 = v79;
    v1035 = v79;
    v1034 = v79;
    v1033 = v79;
    v1032 = v79;
    v1031 = v79;
    v1030 = v79;
    v1029 = v79;
    v1028 = v79;
    v1027 = v79;
    v1026 = v79;
    v1025 = v79;
    v1024 = v79;
    v1023 = v79;
    memset(v1006, 255, 0xA04uLL);
    *&v80 = -1;
    *(&v80 + 1) = -1;
    v1022 = v80;
    v1021 = v80;
    v1020 = v80;
    v1019 = v80;
    v1018 = v80;
    v1017 = v80;
    v1016 = v80;
    v1015 = v80;
    v1014 = v80;
    v1013 = v80;
    v1012 = v80;
    v1011 = v80;
    v1010 = v80;
    v1009 = v80;
    v1008 = v80;
    v1007 = v80;
    memset(v1005, 255, 0x7C0uLL);
    memset(v1002, 255, sizeof(v1002));
    v887 = NAN;
    v886 = NAN;
    v885 = NAN;
    *&v81 = -1;
    *(&v81 + 1) = -1;
    v1000 = v81;
    v1001 = v81;
    v998 = v81;
    v999 = v81;
    v996 = v81;
    v997 = v81;
    v994 = v81;
    v995 = v81;
    v992 = v81;
    v993 = v81;
    v990 = v81;
    v991 = v81;
    v988 = v81;
    v989 = v81;
    v986 = v81;
    v987 = v81;
    v985 = v81;
    v984 = v81;
    v983 = v81;
    v982 = v81;
    v981 = v81;
    v980 = v81;
    v979 = v81;
    v978 = v81;
    v977 = v81;
    v976 = v81;
    v975 = v81;
    v974 = v81;
    v973 = v81;
    v972 = v81;
    v971[1] = v81;
    v971[0] = v81;
    v970 = v81;
    v969 = v81;
    v968 = v81;
    v967 = v81;
    v966 = v81;
    v965 = v81;
    v964 = v81;
    v963 = v81;
    v962 = v81;
    v961 = v81;
    v960 = v81;
    v959 = v81;
    v957 = v81;
    v958 = v81;
    *v956 = v81;
    *&v956[16] = v81;
    BITS_ALLOC_config_acelp(v76, v23, (v24 + 68724), *(v24 + 68720), *(v24 + 110864));
    *__A = 0;
    vDSP_vfill(__A, v956, 1, 0x40uLL);
    if (*(v24 + 52108) >= 1)
    {
      *v783 = 0u;
      *(v24 + 37968) = 0u;
    }

    memcpy(v1006, __src, 0x500uLL);
    v82 = &v1006[80] + *(v24 + 140);
    if (v82 < v1006)
    {
      goto LABEL_1033;
    }

    if (v82 + 1 > &v1006[160] + 1)
    {
      goto LABEL_1033;
    }

    if (v82 > v82 + 1)
    {
      goto LABEL_1033;
    }

    v83 = *(v24 + 140);
    *v82 = 0;
    v84 = *(v24 + 1552);
    v1005[0] = *v784;
    v1005[1] = v84;
    v85 = *(v24 + 1584);
    v1005[2] = *(v24 + 1568);
    v1005[3] = v85;
    v896[4] = 0;
    v895 = 0.0;
    HIDWORD(v894) = 0;
    if (v83 > 0x141)
    {
      goto LABEL_1033;
    }

    v780 = (v795 + 3);
    *__A = v875;
    *&__A[16] = v876;
    calc_residu(__A, &v1006[80], v937, v83);
    v86 = v24 + 67462;
    v87 = *(v24 + 68754);
    if (v87 < 1)
    {
      HIDWORD(v893) = 0;
      v88 = v24;
    }

    else
    {
      if (v872 && (v872 >= v872 + 1 || v872 + 1 > v873 || v872 < v874))
      {
        goto LABEL_1033;
      }

      v88 = v24;
      v86 = v24 + 67462;
      Es_pred_enc(&v893 + 1, v872++, *(v24 + 140), &v1006[80], &v1006[160] + 4, v795, v780, *(v24 + 68756), v87 != 1);
    }

    v89 = *(v88 + 140);
    v90 = 204;
    if (v89 == 256)
    {
      v90 = 136;
    }

    v91 = v937 + v90;
    v92 = *(v91 + 3);
    *(v88 + 57180) = *(v91 + 2);
    *(v88 + 57196) = v92;
    *(v88 + 57212) = *(v91 + 16);
    v93 = *(v91 + 1);
    *(v88 + 57148) = *v91;
    *(v88 + 57164) = v93;
    if (v89 < 1)
    {
      v865 = v937;
      v98 = v24 + 110816;
    }

    else
    {
      v94 = 0;
      v95 = 0;
      v96 = v1006[80];
      v765 = (v86 + 1300);
      v813 = v88 + 68776;
      v788 = (v86 + 1282);
      v777 = (v86 + 1286);
      v776 = v88 + 68766;
      v774 = v88 + 67668;
      v775 = vdup_n_s32(0x3C23D70Au);
      v97 = 0.0;
      v823 = v794;
      v865 = v937;
      v845 = a9;
      v842 = v920;
      v838 = v917;
      v98 = v24 + 110816;
      v766 = v77;
      v778 = v78;
      do
      {
        v99 = &v1006[80] + v95;
        v100 = v99 + 1;
        if (v99 < v1006 || v100 > &v1006[160] + 1 || v99 > v100)
        {
          goto LABEL_1033;
        }

        *v99 = v96;
        v797 = v94 + 64;
        v103 = &v1006[96] + v94;
        if (v103 < v1006)
        {
          goto LABEL_1033;
        }

        if (v103 + 1 > &v1006[160] + 1)
        {
          goto LABEL_1033;
        }

        if (v103 > v103 + 1)
        {
          goto LABEL_1033;
        }

        v828 = v95;
        v831 = (&v1005[4] + 4 * v95);
        v835 = (v831 - 4);
        if (v831 - 4 < v1005 || v865 < v937 || v823 < v794)
        {
          goto LABEL_1033;
        }

        __B = &v1006[80] + v95;
        v96 = *v103;
        v104 = *(v98 + 52);
        *__A = v875;
        *&__A[16] = v876;
        find_targets(__A, v835, &v1005[124], v95, v806, v784, v865, v104, v939, &v1006[80], &v1006[160] + 4, 64, v823, (v794 + 85), &v1071, &v1087, &v1087, &v1103, &v1119, v1135, (v88 + 110872), (v88 + 110896));
        gp_clip(*(v24 + 96), v795, v780, v828, v23, &v1071, v805);
        v807 = v105;
        if (*(v24 + 68760))
        {
          v106 = *(v24 + 68758);
          *__A = &v872;
          *&__A[8] = &v875;
          *&__A[16] = &v872;
          *&v883 = __B;
          *(&v883 + 1) = &v1006[160] + 4;
          v884 = v1006;
          Mode2_pit_encode(v106, v828, __A, &v883, v779, (v779 + 3), &v896[3], &v896[2], &v896[1], v896, &v896[4], &v894 + 1, &v895, &v1119, v1135, &v1071, &v1087, *(v98 + 1012), HIDWORD(*(v98 + 1012)), *(v98 + 1020), HIDWORD(*(v98 + 1012)), *(v98 + 1028), *(v98 + 1032));
          v107 = *(v98 + 1032);
          v819 = LODWORD(v895);
          if (v107 == 6)
          {
            v109 = (&v1006[160] + 4) >= __B && &v1006[160] + 4 - __B > 256;
            v110 = __B;
            v111 = v778;
            if (LODWORD(v895) == 3)
            {
              v77 = v766;
              if (!v109)
              {
                goto LABEL_1033;
              }

              __n = HIDWORD(v894);
              *__A = __B;
              *&__A[8] = &v1006[160] + 4;
              *&__A[16] = v1006;
              v741 = 6;
              v855 = v896[4];
              v112 = SLOWORD(v896[4]);
              v113 = (2 * WORD2(v894));
            }

            else
            {
              v77 = v766;
              if (!v109)
              {
                goto LABEL_1033;
              }

              *__A = __B;
              *&__A[8] = &v1006[160] + 4;
              *&__A[16] = v1006;
              v741 = 6;
              v855 = v896[4];
              v112 = SLOWORD(v896[4]);
              __n = HIDWORD(v894);
              v113 = SWORD2(v894);
            }

            v119 = inter6_2;
            v120 = PulseConfTable;
            v121 = 17;
          }

          else
          {
            v118 = (&v1006[160] + 4) >= __B && &v1006[160] + 4 - __B > 256;
            v110 = __B;
            v111 = v778;
            if (LODWORD(v895) == v107 >> 1)
            {
              v77 = v766;
              if (!v118)
              {
                goto LABEL_1033;
              }

              __n = HIDWORD(v894);
              *__A = __B;
              *&__A[8] = &v1006[160] + 4;
              *&__A[16] = v1006;
              v741 = 4;
              v855 = v896[4];
              v112 = SLOWORD(v896[4]);
              v113 = (2 * WORD2(v894));
            }

            else
            {
              v77 = v766;
              if (!v118)
              {
                goto LABEL_1033;
              }

              *__A = __B;
              *&__A[8] = &v1006[160] + 4;
              *&__A[16] = v1006;
              v741 = 4;
              v855 = v896[4];
              v112 = SLOWORD(v896[4]);
              __n = HIDWORD(v894);
              v113 = SWORD2(v894);
            }

            v119 = inter4_2;
            v120 = &post_dct_wind;
            v121 = 16;
          }

          pred_lt4(__A, v110, v112, v113, 65, v119, v120, v121, v741);
          v122 = *(v24 + 140);
          v123 = *(v24 + 96);
          *__A = &v1006[80];
          *&__A[8] = &v1006[160] + 4;
          *&__A[16] = v1006;
          v124 = lp_filt_exc_enc(2u, v123, 0, v23, v828, __A, &v1119, v1135, &v1071, &v1087, &v1039, &v1055, &v1055, &v1071, 64, v122, v1003, &v1004, v807, &v893, v765);
          v114 = v803;
          v116 = v819;
          v115 = __n;
          if (*v765 == 2)
          {
            if (v872 + 1 > v873)
            {
              goto LABEL_1033;
            }

            if (v872 > v872 + 1)
            {
              goto LABEL_1033;
            }

            v125 = v874;
            if (v872 < v874)
            {
              goto LABEL_1033;
            }

            *v872++ = v124;
            v874 = v125;
          }

          HIDWORD(v889) = *v1003;
          *(&v890 + 1) = ((*&v1003[4] + -0.01) * -0.5) + 0.01;
        }

        else
        {
          LODWORD(v893) = 0;
          DWORD1(v890) = 0;
          HIDWORD(v889) = 0;
          v1039 = 0u;
          v1040 = 0u;
          v1041 = 0u;
          v1042 = 0u;
          v1043 = 0u;
          v1044 = 0u;
          v1045 = 0u;
          v1046 = 0u;
          v1047 = 0u;
          v1048 = 0u;
          v1049 = 0u;
          v1050 = 0u;
          v1051 = 0u;
          v1052 = 0u;
          v1053 = 0u;
          v1054 = 0u;
          v114 = v803;
          v111 = v778;
          if ((&v1006[160] + 4) < __B || &v1006[160] + 4 - __B < 253)
          {
            goto LABEL_1033;
          }

          v115 = 0;
          *(__B + 14) = 0uLL;
          *(__B + 15) = 0uLL;
          *(__B + 12) = 0uLL;
          *(__B + 13) = 0uLL;
          *(__B + 10) = 0uLL;
          *(__B + 11) = 0uLL;
          *(__B + 8) = 0uLL;
          *(__B + 9) = 0uLL;
          *(__B + 6) = 0uLL;
          *(__B + 7) = 0uLL;
          *(__B + 4) = 0uLL;
          *(__B + 5) = 0uLL;
          *(__B + 2) = 0uLL;
          *(__B + 3) = 0uLL;
          *__B = 0uLL;
          *(__B + 1) = 0uLL;
          v855 = 64;
          v896[4] = 64;
          HIDWORD(v894) = 0;
          v116 = 1;
          LODWORD(v895) = 1;
        }

        if (*(v24 + 129336))
        {
          v126 = v115;
          if (*(v98 + 1004) == 12800)
          {
            v127 = (((vcvts_n_f32_s32(v115, 2uLL) * 5.0) * 0.5) + 5.0) + 0.5;
            v128 = (v114 + 4 * (5 * v94 / 2));
            v129 = v97 + 5 * v94 / 2 - v127 - 5 * v855 / 2 + 5;
            v130 = 160;
            do
            {
              v131 = (v114 + 4 * v129);
              _CF = (v131 + 1) <= v77 && v131 <= v131 + 1 && v131 >= v111;
              v134 = v128 + 1;
              if (!_CF || v134 > v77 || v128 > v134 || v128 < v111)
              {
                goto LABEL_1033;
              }

              *v128++ = *v131;
              ++v129;
              --v130;
            }

            while (v130);
            v138 = (v127 + 5 * v855 / 2 - 5) + ((v855 * -5.0) * 0.5);
            v139 = -0.625;
          }

          else
          {
            v140 = ((v126 * 0.5) + 4.0) + 0.5;
            v141 = (v114 + 8 * v94);
            v142 = v97 + 2 * v94 - v140 - 2 * v855 + 4;
            v143 = 128;
            do
            {
              v144 = (v114 + 4 * v142);
              v146 = (v144 + 1) <= v77 && v144 <= v144 + 1 && v144 >= v111;
              v147 = v141 + 1;
              if (!v146 || v147 > v77 || v141 > v147 || v141 < v111)
              {
                goto LABEL_1033;
              }

              *v141++ = *v144;
              ++v142;
              --v143;
            }

            while (v143);
            v138 = (v140 + 2 * v855 - 4) + (v855 * -2.0);
            v139 = -0.5;
          }

          v97 = v97 + (v138 + (v126 * v139));
        }

        if (v94 >= 0)
        {
          v151 = v94;
        }

        else
        {
          v151 = v94 + 63;
        }

        v152 = &a9[v151 >> 6];
        if (v152 < a9)
        {
          goto LABEL_1033;
        }

        if ((v152 + 1) > a10)
        {
          goto LABEL_1033;
        }

        if (v152 > v152 + 1)
        {
          goto LABEL_1033;
        }

        v153 = (v115 / v116) + v855;
        *v152 = v153;
        __na = v151 >> 6;
        v820 = (v813 + 4 * __na);
        if (v820 < v813)
        {
          goto LABEL_1033;
        }

        if ((v820 + 2) > v88 + 68796)
        {
          goto LABEL_1033;
        }

        if (v820 > v820 + 2)
        {
          goto LABEL_1033;
        }

        v154 = *(v24 + 1968);
        v155 = *(v813 + 4 * __na);
        v156 = *(v24 + 68730);
        v157 = *(v24 + 68732);
        v158 = *(v24 + 68734);
        v159 = *(v24 + 68736);
        v160 = *(v24 + 68738);
        v161 = *v788;
        v162 = *v777;
        v163 = *(v98 + 1008);
        *__A = &v872;
        *&__A[8] = &v875;
        *&__A[16] = &v872;
        v164 = *(v24 + 140);
        v165 = *(v24 + 38068);
        v166 = *(v24 + 64);
        *&v883 = &v1006[80];
        *(&v883 + 1) = &v1006[160] + 4;
        v884 = v1006;
        E_ACELP_innovative_codebook(&v883, v855, v115, v116, v155, v156, v157, v158, *&v893, v154, v161, v162, v159, SHIWORD(v159), v160, SHIWORD(v160), v828, v865, v939, &v1119, v1135, &v1071, &v1087, &v1087, &v1103, &v1039, &v1055, &v1023, &v1039, v163, __A, &v1103, &v1119, v164, v165, v166);
        E_corr_xy2(&v1071, &v1087, &v1039, &v1055, &v1023, &v1039, v1003, &v1004);
        *&v890 = *&v1003[8] + 0.01;
        *(&v890 + 1) = vmla_f32(v775, COERCE_FLOAT32X2_T(--0.0000305175998), *&v1003[12]);
        *__A = -1;
        vDSP_dotpr(&v1071, 1, &v1071, 1, __A, 0x40uLL);
        *&v889 = *__A + 0.01;
        v167 = (v776 + 2 * __na);
        if (v167 < v776 || (v167 + 1) > v813 || v167 > v167 + 1)
        {
          goto LABEL_1033;
        }

        v168 = *v167;
        if (v168 == 7)
        {
          v169 = 0;
          v170 = *v788;
          v171 = *(v24 + 1968);
          v172 = *v764;
          do
          {
            v173 = 31821 * v172 + 13849;
            v174 = &v986 + v169;
            if ((&v986 + v169) < &v986 || (v174 + 4 <= v1002 ? (v175 = v174 > v174 + 4) : (v175 = 1), v175))
            {
              *v764 = v173;
              goto LABEL_1033;
            }

            v176 = vcvts_n_f32_s32(v173, 0xFuLL);
            v177 = 31821 * v173 + 13849;
            v178 = vcvts_n_f32_s32(v177, 0xFuLL);
            v172 = 31821 * v177 + 13849;
            *(&v986 + v169) = (v176 + v178) + vcvts_n_f32_s32(v172, 0xFuLL);
            v169 += 4;
          }

          while (v169 != 256);
          *v764 = v172;
          if (v939 < v865 || v939 - v865 < 65)
          {
            goto LABEL_1033;
          }

          cb_shape(1, 0, 0, 1u, 0, v865, &v986, v170, 0.9, v171, 0.0);
          *__A = &v986;
          *&__A[8] = v1002;
          *&__A[16] = &v986;
          conv_evs(__A, &v1119, v971, 64);
          v885 = 0.0;
          *__A = -1;
          vDSP_dotpr(v971, 1, v971, 1, __A, 0x40uLL);
          *v1003 = *__A + 0.01;
          *__A = -1;
          vDSP_dotpr(v971, 1, &v1023, 1, __A, 0x40uLL);
          *&v1003[16] = *__A + 0.01;
          HIDWORD(v889) = *v1003;
          *(&v890 + 3) = *__A + 0.01;
          LOWORD(v168) = *v167;
          v98 = v24 + 110816;
        }

        else
        {
          v885 = 0.0;
          v986 = 0u;
          v987 = 0u;
          v988 = 0u;
          v989 = 0u;
          v990 = 0u;
          v991 = 0u;
          v992 = 0u;
          v993 = 0u;
          v994 = 0u;
          v995 = 0u;
          v996 = 0u;
          v997 = 0u;
          v998 = 0u;
          v999 = 0u;
          v1000 = 0u;
          v1001 = 0u;
          memset(v971, 0, sizeof(v971));
          v972 = 0u;
          v973 = 0u;
          v974 = 0u;
          v975 = 0u;
          v976 = 0u;
          v977 = 0u;
          v978 = 0u;
          v979 = 0u;
          v980 = 0u;
          v981 = 0u;
          v982 = 0u;
          v983 = 0u;
          v984 = 0u;
          v985 = 0u;
        }

        *__A = &v872;
        *&__A[8] = &v875;
        *&__A[16] = &v872;
        encode_acelp_gains(&v1103, &v1119, v168, v807, &v889, &v893, &v892, __A, *(&v893 + 1), &v887, &v886, &v986, v1002, &v885, *(v98 + 996));
        v179 = *&v893;
        gp_clip_test_gain_pit(*(v24 + 96), v805, v24 + 18460, *&v893);
        if ((&v1006[160] + 4) < __B)
        {
          goto LABEL_1033;
        }

        if (&v1006[160] + 4 - __B < 253)
        {
          goto LABEL_1033;
        }

        v180 = v892;
        est_tilt(__B, &v1103, &v888, v179, v892);
        *(v24 + 1968) = v181;
        v183 = (v774 + 4 * __na);
        if (v183 < v774 || (v183 + 1) > v88 + 67688 || v183 > v183 + 1)
        {
          goto LABEL_1033;
        }

        v184 = 0;
        *v183 = v181;
        v185 = v885;
        *v806 = ((*(&v1086 + 3) - (v179 * *(&v1054 + 3))) - (v180 * *(&v1038 + 3))) - (v885 * *(&v985 + 3));
        do
        {
          v186 = &v1006[80] + v94;
          v187 = v186 + 1;
          if (v186 < v1006 || v187 > &v1006[160] + 1 || v186 > v187)
          {
            goto LABEL_1033;
          }

          v190 = (v179 * *v186) + (v185 * *(&v986 + v184));
          *(&v1007 + v184) = v190;
          *v186 = v190 + (v180 * *(&v1103 + v184));
          v184 += 4;
          ++v94;
        }

        while (v184 != 256);
        v191 = *(v24 + 140);
        v192 = v888;
        v193 = (a11 + 4 * __na);
        if (v193 && (v193 < a11 || (v193 + 1) > a12 || v193 > v193 + 1))
        {
          goto LABEL_1033;
        }

        *__A = v803;
        *&__A[8] = v77;
        *&__A[16] = v111;
        *&v182 = v180;
        prep_tbe_exc(v191, v828, &v1103, v193, __A, v956, v179, v182, v888, 0.0);
        enhancer(2, 0xFFFFFFFFFFFFFFFFLL, *v820, 0, v23, *(v24 + 140), (v24 + 1972), &v1103, v192, v785, v887, v886, v179, &v1007, v783, v88 + 37984);
        v194 = v1002 + 4 * v828;
        if (v828 > 256)
        {
          goto LABEL_1033;
        }

        if (v194 > v1003)
        {
          goto LABEL_1033;
        }

        if (v1002 > v194)
        {
          goto LABEL_1033;
        }

        syn_filt(v865);
        if (v1005 > v831)
        {
          goto LABEL_1033;
        }

        if (v831 > &v1005[124])
        {
          goto LABEL_1033;
        }

        if (v835 > &v1005[124])
        {
          goto LABEL_1033;
        }

        if (&v1005[124] - v835 < 61)
        {
          goto LABEL_1033;
        }

        if (&v1005[124] - v831 < 253)
        {
          goto LABEL_1033;
        }

        syn_filt(v865);
        if (v845 < a9)
        {
          goto LABEL_1033;
        }

        if ((v845 + 1) > a10)
        {
          goto LABEL_1033;
        }

        if (v845 > v845 + 1)
        {
          goto LABEL_1033;
        }

        *v845 = v153 + 0.5;
        if (v842 < v920)
        {
          goto LABEL_1033;
        }

        if (v842 + 1 > v922)
        {
          goto LABEL_1033;
        }

        if (v842 > v842 + 1)
        {
          goto LABEL_1033;
        }

        *v842 = v179;
        if (v838 < v917 || v838 + 1 > v919 || v838 > v838 + 1)
        {
          goto LABEL_1033;
        }

        v823 += 17;
        v865 += 17;
        v94 = v797;
        v89 = *(v24 + 140);
        *v838 = v180;
        *(v24 + 122168) = v855;
        v95 = v797;
        ++v845;
        ++v842;
        ++v838;
      }

      while (v89 > v797);
    }

    v195 = &v1006[80] + 4 * v89;
    v196 = v195 - 1280;
    if (v195 - 1280 < v1006)
    {
      goto LABEL_1033;
    }

    if (&v1006[160] + 4 < v196)
    {
      goto LABEL_1033;
    }

    if ((&v1006[160] + 4 - v196) <= 0x4FF)
    {
      goto LABEL_1033;
    }

    v197 = v89;
    memcpy(__src, v196, 0x500uLL);
    v198 = &v1005[4] + 4 * v197;
    v199 = v198 - 64;
    if (v198 - 64 < v1005)
    {
      goto LABEL_1033;
    }

    if (&v1005[124] < v199)
    {
      goto LABEL_1033;
    }

    if ((&v1005[124] - v199) <= 0x3F)
    {
      goto LABEL_1033;
    }

    v200 = *(v198 - 3);
    *v784 = *v199;
    *(v24 + 1552) = v200;
    v201 = *(v198 - 1);
    *(v24 + 1568) = *(v198 - 2);
    *(v24 + 1584) = v201;
    v202 = v198 - 240;
    if (v202 < v1005)
    {
      goto LABEL_1033;
    }

    if (&v1005[124] < v202)
    {
      goto LABEL_1033;
    }

    if ((&v1005[124] - v202) <= 0xEF)
    {
      goto LABEL_1033;
    }

    v203 = *(v202 + 10);
    *(v24 + 1840) = *(v202 + 11);
    v204 = *(v202 + 13);
    *(v24 + 1856) = *(v202 + 12);
    *(v24 + 1872) = v204;
    *(v24 + 1888) = *(v202 + 14);
    v205 = *(v202 + 6);
    *(v24 + 1776) = *(v202 + 7);
    v206 = *(v202 + 9);
    *(v24 + 1792) = *(v202 + 8);
    *(v24 + 1808) = v206;
    *(v24 + 1824) = v203;
    v207 = *(v202 + 2);
    *(v24 + 1712) = *(v202 + 3);
    v208 = *(v202 + 5);
    *(v24 + 1728) = *(v202 + 4);
    *(v24 + 1744) = v208;
    *(v24 + 1760) = v205;
    v209 = *(v202 + 1);
    *(v24 + 1664) = *v202;
    *(v24 + 1680) = v209;
    v210 = v195 - 1312;
    *(v24 + 1696) = v207;
    if (v195 - 1312 < v1006 || &v1006[160] + 4 < v210 || (&v1006[160] + 4 - v210) <= 0x1F)
    {
      goto LABEL_1033;
    }

    v211 = *(v195 - 81);
    *(v24 + 122648) = *v210;
    *(v24 + 122664) = v211;
    if (v197 < 1)
    {
      LODWORD(v894) = *(v24 + 248);
      if (v197 > 0x1E0)
      {
        goto LABEL_1033;
      }
    }

    else
    {
      if (v197 >= 0x141)
      {
        goto LABEL_1033;
      }

      memcpy(&v1005[4], v1002, 4 * (v197 & 0x3FFF));
      LODWORD(v894) = *(v24 + 248);
    }

    deemph(&v1005[4], v197, &v894, *(v98 + 52));
    v212 = *(v24 + 140);
    v213 = (v212 + ((v212 & 0x8000) >> 15)) << 16 >> 17;
    v214 = (&v1005[4] + 4 * v213);
    if (v214 < v1005)
    {
      goto LABEL_1033;
    }

    if (v212 >= 2)
    {
      if (&v1005[124] < v214)
      {
        goto LABEL_1033;
      }

      v215 = 4 * (((v212 + ((v212 & 0x8000) >> 15)) >> 1) & 0x3FFF);
      if (&v1005[124] - v214 < v215 || v213 >= 0x181)
      {
        goto LABEL_1033;
      }

      memcpy((v24 + 1976), v214, v215);
    }

    v216 = (v1005 + 4 * v212 - 4);
    if (v216 < v1005)
    {
      goto LABEL_1033;
    }

    if (&v1005[124] < v216)
    {
      goto LABEL_1033;
    }

    if ((&v1005[124] - v216) <= 0x43)
    {
      goto LABEL_1033;
    }

    v217 = *(&v1005[2] + 4 * v212 + 12);
    *(v24 + 216) = *(&v1005[1] + 4 * v212 + 12);
    *(v24 + 232) = v217;
    *(v24 + 248) = *(&v1005[3] + v212 + 3);
    v218 = *(v1005 + 4 * v212 + 12);
    *v761 = *v216;
    *(v24 + 200) = v218;
    if (v212 >= 1)
    {
      if (v752 < v753)
      {
        goto LABEL_1033;
      }

      if (v212 > 0x1E0)
      {
        goto LABEL_1033;
      }

      v219 = 4 * v212;
      if (v219 > v752 - v753)
      {
        goto LABEL_1033;
      }

      memmove(v753, &v1005[4], v219);
      if (&v753[v219] < v753)
      {
        goto LABEL_1033;
      }
    }

    v220 = v865 - 17;
    if (v865 - 17 < v937 || v939 < v220 || (v939 - v220) <= 0x43)
    {
      goto LABEL_1033;
    }

    memmove((v24 + 18720), v220, 0x44uLL);
    *(v24 + 18788) = HIDWORD(v893);
    v221 = *(v24 + 122140);
    v222 = (v24 + 122808);
    v223 = (v24 + 122744);
    v224 = *(v24 + 122116);
    *&v225 = -1;
    *(&v225 + 1) = -1;
    v1006[3] = v225;
    v1006[2] = v225;
    v1006[1] = v225;
    v1006[0] = v225;
    v226 = 0.0;
    v227 = 4;
    v228 = (v24 + 122744);
    v23 = v23;
    v38 = (v24 + 67462);
    do
    {
      if (v228 < v223 || v228 + 1 > v222 || v228 > v228 + 1)
      {
        goto LABEL_1033;
      }

      v229 = *v228++;
      v226 = v226 + v229;
      --v227;
    }

    while (v227);
    v230 = v226 * 0.25;
    if (v224)
    {
      v231 = *(v24 + 122824);
      v1006[0] = *v222;
      v1006[1] = v231;
      v232 = *(v24 + 122856);
      v1006[2] = *(v24 + 122840);
      v1006[3] = v232;
      modify_lsf(v1006, &v1006[4], v221, 1);
      v233 = 0;
      v234 = 0;
      v235 = v24 + 122808;
      v236 = 0.0;
      v237 = 0.0;
      do
      {
        v238 = &v222[v233];
        if (&v222[v233] < v222)
        {
          goto LABEL_1033;
        }

        v239 = v235 + v233 * 4 + 4;
        if (v239 > v24 + 122872 || v238 > v239)
        {
          goto LABEL_1033;
        }

        v241 = v235 + v233 * 4 - 64;
        if (v241 < v223)
        {
          goto LABEL_1033;
        }

        v242 = v235 + v233 * 4 - 60;
        if (v242 > v222 || v241 > v242)
        {
          goto LABEL_1033;
        }

        v243 = v222[v233 - 16];
        v244 = (*v238 - v243) * (*v238 - v243);
        v245 = (*(v1006 + v233 * 4) - v243) * (*(v1006 + v233 * 4) - v243);
        v236 = v236 + v244;
        v237 = v237 + v245;
        if (v244 > v245)
        {
          ++v234;
        }

        ++v233;
      }

      while (v233 != 16);
      v246 = 800.0;
      if (v221 == 16000)
      {
        v246 = 1000.0;
      }

      v41 = v24 + 122092;
      if (v237 * 1.15 >= v236)
      {
        goto LABEL_286;
      }

      v247 = 90.0;
      if (v221 == 16000)
      {
        v247 = 112.5;
      }

      v248 = *(v24 + 122132);
      _ZF = (v230 - v248) > v247 && v23 == 3;
      _NF = _ZF && v248 < v246;
      if (_NF && v234 > 2)
      {
        v252 = 1;
      }

      else
      {
LABEL_286:
        v252 = 0;
      }
    }

    else
    {
      v252 = 0;
      v41 = v24 + 122092;
    }

    v253 = 0;
    *(v41 + 26) = v252;
    v254 = v953;
    *v223 = v952;
    *(v24 + 122760) = v254;
    v255 = v955;
    *(v24 + 122776) = v954;
    *(v24 + 122792) = v255;
    v256 = *(v24 + 122696);
    *v222 = *(v24 + 122680);
    *(v24 + 122824) = v256;
    v257 = *(v24 + 122728);
    *(v24 + 122840) = *(v24 + 122712);
    *(v24 + 122856) = v257;
    v258 = *v917;
    *(v41 + 36) = v917[0];
    *(v41 + 40) = v230;
    v259 = *v920;
    v43 = v771;
    do
    {
      v260 = (v917 + v253 + 4);
      v261 = (&v917[1] + v253);
      if (v260 < v917 || v261 > v919 || v260 > v261)
      {
        goto LABEL_1033;
      }

      v258 = *v260 + v258;
      *(v41 + 36) = v258;
      v264 = (v920 + v253 + 4);
      if (v264 < v920)
      {
        goto LABEL_1033;
      }

      v265 = (&v920[1] + v253);
      if (v265 > v922 || v264 > v265)
      {
        goto LABEL_1033;
      }

      if (*v264 < v259)
      {
        v259 = *v264;
      }

      v253 += 4;
    }

    while (v253 != 12);
    if (v258 / (*(v41 + 32) + 0.000001) < 1.098 || v259 > 0.82)
    {
      *(v41 + 26) = 0;
    }

    *(v41 + 32) = v258;
    if (*(v41 + 52) > 0.02)
    {
      *(v41 + 26) = 0;
    }

    *(v41 + 52) = v785;
    *(v41 + 548) = v761;
    encoderSideLossSimulation(v24, v41 + 68, &v952, v956, *(v41 + 84), *(v24 + 140), v785);
    v266 = v795 + 1;
    if (v795 + 1 < v795 || (v795 + 2) > v780 || v266 > v795 + 2)
    {
      goto LABEL_1033;
    }

    *(v24 + 116928) = *v266;
    *v757 = 262148;
    v53 = *(v24 + 88);
    v42 = v24 + 110816;
    goto LABEL_311;
  }

LABEL_312:
  if (v53 == 1)
  {
    if (*(v42 + 8))
    {
      if (*v38)
      {
        v267 = *(v24 + 18556);
        v907 = *(v24 + 18540);
        v908 = v267;
        v268 = *(v24 + 18588);
        v909 = *(v24 + 18572);
        v910 = v268;
      }

      v269 = 0;
      v270 = *(v24 + 86172);
      *&v271 = -1;
      *(&v271 + 1) = -1;
      v1006[3] = v271;
      v1006[2] = v271;
      v1006[1] = v271;
      v1006[0] = v271;
      __asm { FMOV            V0.4S, #0.875 }

      v274.i64[0] = 0x3E0000003E000000;
      v274.i64[1] = 0x3E0000003E000000;
      do
      {
        v1006[v269] = vmlaq_f32(vmulq_f32(v43[v269], _Q0), v274, *(v24 + 5396 + v269 * 16));
        ++v269;
      }

      while (v269 != 4);
      *&v1005[0] = v934;
      *(&v1005[0] + 1) = v936;
      *&v1005[1] = v934;
      lsp2a_stab(v1006, v1005);
      weight_a(v934, v936, v934, v936, 16, *(v42 + 80));
      *&v1006[0] = v934;
      *(&v1006[0] + 1) = v936;
      *&v1006[1] = v934;
      a2lsp_stab(v1006, v912, v43);
      for (i = 0; i != 64; i += 4)
      {
        *(v911 + i) = acosf(*(v912 + i)) * 2037.2;
      }

      Q_lsf_tcxlpc(v911, v912, &v923, &v927, v943, &v944, v933, v934, *(v38 + 629), v270 == 2, v24 + 18540, v24 + 18604, *(v24 + 86172), v24 + 3540, v24 + 4564);
      v276 = 0;
      if (v933[0])
      {
        v277 = 15;
      }

      else
      {
        v277 = 13;
      }

      HIDWORD(v882) = v277;
      v846 = vdupq_n_s32(0x45C80000u);
      v850 = vdupq_n_s32(0x40490FDBu);
      do
      {
        v866 = vdivq_f32(vmulq_f32(*(&v923 + v276), v850), v846);
        v856 = cosf(v866.f32[1]);
        *&v278 = cosf(v866.f32[0]);
        *(&v278 + 1) = v856;
        v857 = v278;
        v279 = cosf(v866.f32[2]);
        v280 = v857;
        *(&v280 + 2) = v279;
        v858 = v280;
        v281 = cosf(v866.f32[3]);
        v282 = v858;
        *(&v282 + 3) = v281;
        *(&v927 + v276) = v282;
        v276 += 16;
      }

      while (v276 != 64);
      *&v1006[0] = v934;
      *(&v1006[0] + 1) = v936;
      *&v1006[1] = v934;
      lsp2a_stab(&v927, v1006);
      v42 = v24 + 110816;
    }

    else
    {
      v283 = 0;
      *&v284 = -1;
      *(&v284 + 1) = -1;
      v1006[3] = v284;
      v1006[2] = v284;
      v1006[1] = v284;
      v1006[0] = v284;
      __asm { FMOV            V0.4S, #0.875 }

      v286.i64[0] = 0x3E0000003E000000;
      v286.i64[1] = 0x3E0000003E000000;
      do
      {
        v1006[v283] = vmlaq_f32(vmulq_f32(*(&v948 + v283 * 16), _Q0), v286, *(v769 + v283 * 16));
        ++v283;
      }

      while (v283 != 4);
      *&v1005[0] = v934;
      *(&v1005[0] + 1) = v936;
      *&v1005[1] = v934;
      lsp2a_stab(v1006, v1005);
    }

    if (*(v41 + 66))
    {
      basop_E_LPC_f_lsp_a_conversion(v943, v940, v942);
    }

    v287 = *(v38 + 627) - (HIDWORD(v882) + *(v42 + 40));
    if (*v38)
    {
      v287 -= v38[5];
    }

    if (*(v24 + 8) == 1)
    {
      v288 = &FrameSizeConfig[6 * *(v38 + 621)];
      v289 = v288 + 6;
      if (v288 < FrameSizeConfig || v289 > inter6_2 || v288 > v289)
      {
        goto LABEL_1033;
      }

      v292 = *(v288 + 7);
      v293 = v292 - signalling_mode1_tcx20_enc(v24, 0) + 1;
    }

    else if (*(v24 + 6) == 2)
    {
      v293 = -1;
    }

    else
    {
      v293 = 0;
    }

    v294 = v293 + v287;
    if (*(v41 + 72))
    {
      v294 -= *(v41 + 68);
    }

    v847 = v294;
    v851 = *(v24 + 99928);
    if (v851 < *(v24 + 99944))
    {
      goto LABEL_1033;
    }

    v843 = *(v24 + 99936);
    v829 = *v41;
    v295 = v24 + 77424;
    v296 = *v757;
    v297 = (v296 & 0xFFFFFFFE) == 2 ? -2 : -1;
    v832 = v297;
    v298 = v24 + 110608;
    v836 = *(v24 + 111808);
    v859 = *(v24 + 86028);
    v299 = *(v24 + 86184);
    v867 = *(v24 + 140);
    LODWORD(v1071) = -1;
    LODWORD(v1055) = -1;
    LODWORD(v1039) = 0;
    LODWORD(v1023) = 0;
    *&v300 = -1;
    *(&v300 + 1) = -1;
    v1002[14] = v300;
    v1002[15] = v300;
    v1002[12] = v300;
    v1002[13] = v300;
    v1002[10] = v300;
    v1002[11] = v300;
    v1002[8] = v300;
    v1002[9] = v300;
    v1002[6] = v300;
    v1002[7] = v300;
    v1002[4] = v300;
    v1002[5] = v300;
    v1002[2] = v300;
    v1002[3] = v300;
    v1002[0] = v300;
    v1002[1] = v300;
    memset(v1006, 255, sizeof(v1006));
    memset(v1005, 255, sizeof(v1005));
    LODWORD(v1087) = v299;
    v839 = v299;
    if (*(v24 + 77426) == -2)
    {
      v301 = *v763;
      v1119 = *(v24 + 105712);
      *&v1120 = *(v24 + 105728);
      WindowSignal(v24 + 68872, v301, -2, v296, &v1071, &v1055, &v1119, &v1087, v1006, &v1007, 1);
      v302 = v1087;
      v303 = (v24 + 105808);
      TCX_MDCT(v1006);
      v305 = v24 + 67462;
    }

    else
    {
      v1119 = *(v24 + 105736);
      *&v1120 = *(v24 + 105752);
      wtda(&v1119);
      v306 = *v763;
      v307 = *(v24 + 77426);
      if (v307 == 4)
      {
        LOWORD(v307) = 0;
      }

      v308 = *v757;
      if (v308 == 4)
      {
        LOWORD(v308) = 0;
      }

      v1119 = *(v24 + 105712);
      *&v1120 = *(v24 + 105728);
      WindowSignal(v24 + 68872, v306, v307, v308, &v1071, &v1055, &v1119, &v1087, v1005, v1006, 1);
      v302 = v1087;
      v305 = v24 + 67462;
      v303 = (v24 + 105808);
      if ((v1087 & 0x8000) != 0 || v1087 > 1200)
      {
        goto LABEL_1033;
      }

      edct(v1006);
      if (v302 < 1)
      {
        v295 = v24 + 77424;
      }

      else
      {
        v309 = sqrtf(160.0 / v302);
        v310 = v302 & 0x7FFF;
        v311 = (v24 + 105808);
        v295 = v24 + 77424;
        do
        {
          *v311 = *v311 * v309;
          ++v311;
          --v310;
        }

        while (v310);
      }
    }

    if (*(v305 + 1258))
    {
      attenuateNbSpectrum(v302, v303, v24 + 110608);
    }

    v312 = v1005;
    v313 = v1006;
    if (*(v295 + 2) == 65534)
    {
      v313 = &v1007;
      v312 = v1006;
    }

    AnalyzePowerSpectrum(v24, v302 * *(v24 + 140) / *(v24 + 86184), v302, v1071, v1055, v303, v24 + 110608, v304, v312, v313, v1006, &v1007);
    if (*(v24 + 86040))
    {
      v315 = *(v24 + 52108);
      v316 = v24 + 48 * (*(v24 + 140) == v867) + 86048;
      v317 = v316 + 24 * (*(v24 + 52108) == 0);
      if (v317)
      {
        v318 = v317 + 24;
        v319 = v317 < v316 || v318 > v24 + 48 * (*(v24 + 140) == v867) + 86096;
        if (v319 || v317 > v318)
        {
          goto LABEL_1033;
        }
      }

      *(v24 + 86144) = v317;
      if (v24 + 129332 > (v24 + 129336))
      {
        goto LABEL_1033;
      }

      TNSAnalysis(v24 + 68872, v302, 1, v315 == 0, v303, v24 + 110608, (v24 + 110616), (v24 + 110816), (v24 + 129332));
    }

    else
    {
      *v812 = 0;
    }

    if (*(v24 + 129336))
    {
      *&v1119 = v24 + 105808;
      *(&v1119 + 1) = v24 + 110608;
      *&v1120 = v24 + 105808;
      v321 = *v812;
      v322 = *(v24 + 52108) == 0;
      *&v1103 = v1006;
      *(&v1103 + 1) = &v1007;
      *&v1104 = v1006;
      ProcessIGF(v24 + 123968, v24, &v1119, &v1103, 1, v321, v322);
    }

    v323 = v24;
    v324 = v847 - v829 + v832;
    ShapeSpectrum((v323 + 68872), v934, v936, v1002, &v1002[16], v867, v859, v314, v759, v298, *v812, v323);
    v326 = v759;
    if (*(v323 + 129336))
    {
      v324 -= *(v791 + 3884);
    }

    v38 = v825;
    v327 = *(v763 + 16);
    if (v327)
    {
      v328 = *(v763 + 120);
      *&v1119 = &v932[5];
      *(&v1119 + 1) = v933;
      *&v1120 = v932;
      v329 = v871;
      v330 = v812;
      EncodeTnsData(v328, v871 + 110616, v812, &v1119, &v1039, &v1023);
      v331 = v1023;
      v327 = v1039;
      v326 = v759;
    }

    else
    {
      v331 = 0;
      v329 = v871;
      v330 = v812;
    }

    QuantizeSpectrum(v329 + 68872, v934, v936, v940, v942, v1002, &v1002[16], v325, v851, v843, v867, v839, v859, v324 - v331, v836, v326, v298, v329 + 110616, *v330, v327, v761, v932, v933, 0, v329, v878);
    v332 = v773[425];
    v23 = v815;
    v41 = v791;
    v43 = v771;
    if (v332 < v773[427])
    {
      goto LABEL_1033;
    }

    v333 = v773[426];
    *&v1006[0] = v794;
    *(&v1006[0] + 1) = v794 + 85;
    *&v1006[1] = v794;
    if (*v773 < v773[2])
    {
      goto LABEL_1033;
    }

    v24 = v329;
    coder_tcx_post(v329, v761, v329 + 68872, v332, v333, v934, v936, v1006, *v773, v773[1]);
    *(v791 + 548) = v761;
    *(v791 + 76) = *(v762 + 248);
    v42 = v812;
    if (*(v812 + 8))
    {
      E_LPC_lsp_unweight(&v927, &v948, &v952, 1.0 / *(v812 + 80));
    }

    encoderSideLossSimulation(v329, v791 + 68, &v952, v956, 1, *(v329 + 140), v785);
    v67 = v768;
  }

  v334 = *v43;
  v335 = v43[1];
  v336 = v43[3];
  *(v24 + 5428) = v43[2];
  *(v24 + 5444) = v336;
  *(v24 + 5396) = v334;
  *(v24 + 5412) = v335;
  if (*(v42 + 8) && *(v24 + 88))
  {
    v337 = v924;
    *v67 = v923;
    *(v67 + 16) = v337;
    v338 = v926;
    *(v67 + 32) = v925;
    *(v67 + 48) = v338;
    v339 = v928;
    *v769 = v927;
    *(v769 + 16) = v339;
    v340 = v930;
    *(v769 + 32) = v929;
    *(v769 + 48) = v340;
    *(v42 + 12) = 1;
    lsf_update_memory(*(v38 + 629), v67, v24 + 18540, v24 + 18540);
    *(v24 + 5460) = 0;
    *(v24 + 5464) = 1065353216;
    gp_clip_test_lsf(*(v24 + 96), v67, v767, v805, v24 + 18460, 0);
    v341 = *(v67 + 16);
    *(v24 + 18476) = *v67;
    *(v24 + 18492) = v341;
    v342 = *(v67 + 32);
    v343 = *(v67 + 48);
    *(v24 + 18508) = v342;
    *(v24 + 18524) = v343;
  }

  else
  {
    v344 = v953;
    *v67 = v952;
    *(v67 + 16) = v344;
    v345 = v955;
    *(v67 + 32) = v954;
    *(v67 + 48) = v345;
    v346 = v949;
    *v769 = v948;
    *(v769 + 16) = v346;
    v342 = v950;
    v347 = v951;
    *(v769 + 32) = v950;
    *(v769 + 48) = v347;
  }

  if (a14 && *(v24 + 144))
  {
    v348 = (v772[594] + 1);
    if (v348 >= 8)
    {
      LOWORD(v348) = 8;
    }

    v772[594] = v348;
  }

  else if (a15 && *(v24 + 144))
  {
    v772[594] = 0;
  }

  else if (!*(v24 + 144))
  {
    goto LABEL_418;
  }

  if (!*(v24 + 130) && *(v42 + 8) && *(v24 + 88))
  {
    memset(v1006, 255, 0x500uLL);
    memset(v1005, 255, 0x400uLL);
    LODWORD(v1002[4]) = -1;
    *&v357 = -1;
    *(&v357 + 1) = -1;
    v1002[2] = v357;
    v1002[3] = v357;
    v1002[0] = v357;
    v1002[1] = v357;
    LODWORD(v1123) = -1;
    v1122 = v357;
    v1121 = v357;
    v1120 = v357;
    v1119 = v357;
    v1106 = v357;
    v1105 = v357;
    v1104 = v357;
    v1103 = v357;
    v358 = v773[425];
    v359 = v358 - 256;
    v360 = v773[427];
    if (v358 - 256 < v360)
    {
      goto LABEL_1033;
    }

    v361 = v773[426];
    _CF = v361 >= v359;
    v362 = v361 - v359;
    if (!_CF)
    {
      goto LABEL_1033;
    }

    if (v362 <= 0x4FF)
    {
      goto LABEL_1033;
    }

    memmove(v1006, (v358 - 256), 0x500uLL);
    v363 = (v358 - 260);
    if (v358 - 260 > v359 || v363 < v360)
    {
      goto LABEL_1033;
    }

    LODWORD(v1007) = *v363;
    preemph(v1006, 320, &v1007, *(v812 + 52));
    autocorr(v1006, &v1119, &v1123 + 4, 16, 320, LP_assym_window, dicn_inv, 0, 0);
    lag_wind_11465(&v1119, &v1123 + 4, 12800, 0);
    lev_dur(v1002, &v1002[4] + 4, &v1119, &v1123 + 4, 16, 0, 0);
    *&v1087 = v1002;
    *(&v1087 + 1) = &v1002[4] + 4;
    *&v1088 = v1002;
    a2lsp_stab(&v1087, &v1103, v771);
    v43 = v771;
    vDSP_conv(&v1006[12], 1, &v1002[4], -1, v1005, 1, 0x100uLL, 0x11uLL);
    v364 = *(v24 + 140);
    v365 = *v796;
    *&v1087 = v24 + 27328;
    *(&v1087 + 1) = v24 + 27360;
    *&v1088 = v24 + 27328;
    *&v1071 = v24 + 26816;
    *(&v1071 + 1) = v24 + 27328;
    *&v1072 = v24 + 26816;
    *&v1055 = v24 + 27360;
    *(&v1055 + 1) = v24 + 28000;
    *&v1056 = v24 + 27360;
    *&v1039 = v24 + 28004;
    *(&v1039 + 1) = v24 + 36196;
    *&v1040 = v24 + 28004;
    *&v1023 = v24 + 36200;
    *(&v1023 + 1) = v24 + 36264;
    *&v1024 = v24 + 36200;
    cng_params_upd(&v1103, v1005, &v1005[64], v364, (v24 + 26812), &v1087, (v24 + 26810), &v1071, 0, &v1055, (v24 + 28002), &v1039, &v1023, v365);
  }

  else
  {
    v349 = *(v24 + 140);
    v350 = &v806[-v349];
    if (v350 < __src)
    {
      goto LABEL_1033;
    }

    v351 = *v796;
    *&v1006[0] = v24 + 27328;
    *(&v1006[0] + 1) = v24 + 27360;
    *&v1006[1] = v24 + 27328;
    *&v1005[0] = v24 + 26816;
    *(&v1005[0] + 1) = v24 + 27328;
    *&v1005[1] = v24 + 26816;
    *&v1002[0] = v24 + 27360;
    *(&v1002[0] + 1) = v24 + 28000;
    *&v1002[1] = v24 + 27360;
    *&v1119 = v24 + 28004;
    *(&v1119 + 1) = v24 + 36196;
    *&v1120 = v24 + 28004;
    *&v1103 = v24 + 36200;
    *(&v1103 + 1) = v24 + 36264;
    *&v1104 = v24 + 36200;
    cng_params_upd(v43, v350, v806, v349, (v24 + 26812), v1006, (v24 + 26810), v1005, 0, v1002, (v24 + 28002), &v1119, &v1103, v351);
  }

  if (*(v24 + 140) == 256 && ((v352 = (v24 + 36300 + (*v772 << 6)), v352 < v24 + 36300) || v24 + 36812 < v352 || (512 - (*v772 << 6)) <= 0x3F || (v342 = *v767, v353 = v767[1], v354 = v767[3], v352[2] = v767[2], v352[3] = v354, *v352 = v342, v352[1] = v353, &v352[4] < v352)) || (v355 = (v24 + 36280 + 2 * *v772), v355 < v24 + 36280) || (v355 + 1) > v24 + 36296 || v355 > v355 + 1)
  {
LABEL_1033:
    __break(0x5519u);
  }

  *v355 = *(v24 + 140) != 256;
  v42 = v812;
  if (v772[594] > 1)
  {
    dtx_hangover_control(v24, v43);
  }

LABEL_418:
  if (*(v24 + 88) >= 1 || *(v41 + 56))
  {
    *(v24 + 116896) = 0;
    v342 = 0uLL;
    *(v24 + 116864) = 0u;
    *(v24 + 116880) = 0u;
    *(v24 + 116832) = 0u;
    *(v24 + 116848) = 0u;
    *(v24 + 116800) = 0u;
    *(v24 + 116816) = 0u;
    *(v24 + 116768) = 0u;
    *(v24 + 116784) = 0u;
    *(v24 + 116736) = 0u;
    *(v24 + 116752) = 0u;
    *(v24 + 116704) = 0u;
    *(v24 + 116720) = 0u;
    *(v24 + 116672) = 0u;
    *(v24 + 116688) = 0u;
    *(v24 + 116656) = 0u;
    goto LABEL_421;
  }

  if (v38[645] >= 1)
  {
    v781 = v38[645];
    v793 = *(v763 + 168);
    if (v793 < *(v763 + 184))
    {
      goto LABEL_1033;
    }

    v786 = *(v763 + 176);
    v413 = v773[425];
    v414 = v773[426];
    v415 = v773[427];
    v416 = *(v24 + 140);
    memset(v1006, 255, 0x23CuLL);
    memset(v1005, 255, 0x23CuLL);
    v417 = v24;
    if (v416 == 320)
    {
      v418 = subf_norm_groups;
    }

    else
    {
      v418 = &filt_lp_16kHz;
    }

    if (v416 == 320)
    {
      v419 = &filt_lp_16kHz;
    }

    else
    {
      v419 = &filt_lp;
    }

    if (v416 == 320)
    {
      v420 = 15;
    }

    else
    {
      v420 = 12;
    }

    v421 = (8 * v420);
    v422 = (v1006 + v421);
    v423 = (v1005 + v421);
    v424 = &unk_19B3587A8;
    if (v416 == 320)
    {
      v424 = &unk_19B3587DC;
    }

    v426 = v422 > (&v1006[35] + 12) || v1006 > v422;
    v792 = v426;
    v853 = (v1005 + v421);
    v428 = v423 > (&v1005[35] + 12) || v1005 > v423;
    v790 = v428;
    v430 = v424 <= v418 && v419 <= v424;
    __Ba = v430;
    if (v416 >= 1)
    {
      v863 = 0;
      v431 = (v417 + 116660);
      v811 = (v417 + 116780);
      v808 = v1006 + 4 * v420;
      v432 = *v419;
      v814 = v417 + 116660 + v421;
      __nb = (8 * v420);
      v810 = v417 + 116780 + v421;
      v433 = 4 * v420;
      v434 = 0.000001;
      v435 = v793;
      v798 = v413;
      v436 = v413;
      v437 = 0;
      v342.n128_u32[0] = 0;
      v438 = 0.0;
      v869 = v416;
      v439 = v1005 + 4 * v420;
      v782 = v1005 + 4 * v420;
      v826 = v1006 + v421;
      v440 = (v1005 + v421);
      v824 = v431;
      v840 = v439;
      while (1)
      {
        v833 = v342.n128_f32[0];
        v441 = &a9[v437];
        v442 = (v441 + 1);
        if (v441 < a9 || v442 > a10 || v441 > v442)
        {
          goto LABEL_1033;
        }

        v445 = v920 + v437;
        if (v445 < v920 || v445 + 1 > v922 || v445 > v445 + 1)
        {
          goto LABEL_1033;
        }

        v446 = *v445;
        if (*v445 > 1.0)
        {
          v446 = 1.0;
        }

        if (v446 < 0.0)
        {
          v446 = 0.0;
        }

        v849 = v435;
        *v844 = v436;
        v837 = v437;
        if (v446 <= 0.0)
        {
          if (v792)
          {
            goto LABEL_1033;
          }

          v422[14] = 0u;
          v422[15] = 0u;
          v422[12] = 0u;
          v422[13] = 0u;
          v422[10] = 0u;
          v422[11] = 0u;
          v422[8] = 0u;
          v422[9] = 0u;
          v422[6] = 0u;
          v422[7] = 0u;
          v422[4] = 0u;
          v422[5] = 0u;
          v422[2] = 0u;
          v422[3] = 0u;
          *v422 = 0u;
          v422[1] = 0u;
          if (v790)
          {
            goto LABEL_1033;
          }

          v440[14] = 0uLL;
          v440[15] = 0uLL;
          v440[12] = 0uLL;
          v440[13] = 0uLL;
          v440[10] = 0uLL;
          v440[11] = 0uLL;
          v440[8] = 0uLL;
          v440[9] = 0uLL;
          v440[6] = 0uLL;
          v440[7] = 0uLL;
          v440[4] = 0uLL;
          v440[5] = 0uLL;
          v440[2] = 0uLL;
          v440[3] = 0uLL;
          *v440 = 0uLL;
          v440[1] = 0uLL;
        }

        else
        {
          v447 = *v441;
          v448 = v416 - v863 - v447;
          v449 = v436 + 4 * v447;
          v450 = 0.01;
          v451 = 0.01;
          if (v448 < 1)
          {
            goto LABEL_571;
          }

          v452 = 0;
          v453 = (v869 - v447) & ~((v869 - v447) >> 31);
          if (v453 >= 0x40)
          {
            v453 = 64;
          }

          if (v453 <= 1)
          {
            v453 = 1;
          }

          v454 = 4 * v453;
          v455 = v436 - 4 * v447;
          v451 = 0.01;
          v450 = 0.01;
          do
          {
            v456 = (v436 + v452);
            v457 = v436 + v452 + 4;
            if (v457 > v414 || v456 > v457 || v456 < v415)
            {
              goto LABEL_1033;
            }

            v460 = (v455 + v452);
            v461 = v455 + v452 + 4;
            if (v461 > v414)
            {
              goto LABEL_1033;
            }

            if (v460 > v461)
            {
              goto LABEL_1033;
            }

            if (v460 < v415)
            {
              goto LABEL_1033;
            }

            v462 = (v449 + v452);
            v463 = v449 + v452 + 4;
            if (v463 > v414 || v462 > v463 || v462 < v415)
            {
              goto LABEL_1033;
            }

            v464 = (*v462 * 0.5) + (*v460 * 0.5);
            v450 = v450 + (*v456 * v464);
            v451 = v451 + (v464 * v464);
            v452 += 4;
          }

          while (v454 != v452);
          if (v448 > 63)
          {
            v480 = 0;
          }

          else
          {
LABEL_571:
            v465 = 64;
            if (((v869 - v447) & ~((v869 - v447) >> 31)) < 0x40uLL)
            {
              v465 = (v869 - v447) & ~((v869 - v447) >> 31);
            }

            v466 = v465 - 1;
            v467 = v465 + v863;
            v468 = 4 * (v465 + v863 - v447);
            v469 = 4 * v467;
            v470 = v798;
            do
            {
              v471 = (v470 + v469);
              v472 = v470 + v469 + 4;
              v474 = v472 <= v414 && v471 <= v472 && v471 >= v415;
              v475 = (v470 + v468);
              v476 = v470 + v468 + 4;
              if (!v474 || v476 > v414 || v475 > v476 || v475 < v415)
              {
                goto LABEL_1033;
              }

              v450 = v450 + (*v471 * *v475);
              v451 = v451 + (*v475 * *v475);
              ++v466;
              v470 += 4;
            }

            while (v466 < 0x3F);
            v480 = 1;
          }

          v481 = 1.0;
          if ((v450 / v451) <= 1.0)
          {
            v481 = v450 / v451;
            if ((v450 / v451) < 0.0)
            {
              v481 = 0.0;
            }
          }

          v482 = 0.01;
          if (v448 >= 1)
          {
            v483 = 0;
            v484 = (v869 - v447) & ~((v869 - v447) >> 31);
            if (v484 >= 0x40)
            {
              v484 = 64;
            }

            if (v484 <= 1)
            {
              v484 = 1;
            }

            v485 = 4 * v484;
            v486 = v436 - 4 * v447;
            v482 = 0.01;
            do
            {
              v487 = (v436 + v483);
              v488 = v436 + v483 + 4;
              v489 = v488 > v414 || v487 > v488;
              v490 = !v489 && v487 >= v415;
              v491 = (v486 + v483);
              v492 = v486 + v483 + 4;
              v493 = !v490 || v492 > v414;
              v494 = v493 || v491 > v492;
              v495 = !v494 && v491 >= v415;
              v496 = (v449 + v483);
              v497 = v449 + v483 + 4;
              v498 = !v495 || v497 > v414;
              v499 = v498 || v496 > v497;
              v500 = !v499 && v496 >= v415;
              v501 = &v439[v483];
              v502 = &v439[v483 + 4];
              v503 = v500 && v501 >= v1005;
              v504 = !v503 || v502 > &v1005[35] + 12;
              if (v504 || v501 > v502)
              {
                goto LABEL_1033;
              }

              v506 = (v481 * ((*v487 + (*v491 * -0.5)) + (*v496 * -0.5))) + (*(v796 + 3184) * 0.9);
              *v501 = v506;
              *(v796 + 3184) = v506;
              v482 = v482 + (v506 * v506);
              v483 += 4;
            }

            while (v485 != v483);
          }

          if (v480)
          {
            v507 = 0;
            v508 = v481 * 0.5;
            if (((v869 - v447) & ~((v869 - v447) >> 31)) >= 0x40uLL)
            {
              v509 = 64;
            }

            else
            {
              v509 = (v869 - v447) & ~((v869 - v447) >> 31);
            }

            v510 = v509 - 1;
            v511 = &v782[4 * v509];
            v512 = v798 + 4 * (v509 + v863 - v447);
            v513 = v436 + 4 * v509;
            do
            {
              v514 = (v513 + v507);
              v515 = v513 + v507 + 4;
              v516 = v515 > v414 || v514 > v515;
              v517 = !v516 && v514 >= v415;
              v518 = (v512 + v507);
              v519 = v512 + v507 + 4;
              v520 = !v517 || v519 > v414;
              v521 = v520 || v518 > v519;
              v522 = !v521 && v518 >= v415;
              v523 = &v511[v507];
              v524 = &v511[v507 + 4];
              v525 = v522 && v523 >= v1005;
              v526 = !v525 || v524 > &v1005[35] + 12;
              if (v526 || v523 > v524)
              {
                goto LABEL_1033;
              }

              v528 = (v508 * (*v514 - *v518)) + (*(v796 + 3184) * 0.9);
              *v523 = v528;
              *(v796 + 3184) = v528;
              v482 = v482 + (v528 * v528);
              ++v510;
              v507 += 4;
            }

            while (v510 < 0x3F);
          }

          v800 = v480;
          v799 = v416 - v863 - v447;
          v802 = v447;
          v804 = v447;
          v529 = log10(v482) * 10.0;
          v530 = (v529 * 0.01) + (*(v796 + 3180) * 0.99);
          *(v796 + 3180) = v530;
          v531 = __exp10((v530 * 0.1));
          v532 = 0.5;
          v533 = (v450 * 0.5) / (v451 + v531);
          if (v533 <= 0.5)
          {
            v532 = v533;
            if (v533 < 0.0)
            {
              v532 = 0.0;
            }
          }

          v422 = v826;
          v431 = v824;
          if (v799 >= 1)
          {
            v534 = 0;
            v535 = (v869 - v802) & ~((v869 - v802) >> 31);
            if (v535 >= 0x40)
            {
              v535 = 64;
            }

            if (v535 <= 1)
            {
              v535 = 1;
            }

            v536 = 4 * v535;
            v537 = *v844 - 4 * v804;
            do
            {
              v538 = (*v844 + v534);
              v539 = *v844 + v534 + 4;
              v540 = v539 > v414 || v538 > v539;
              v541 = !v540 && v538 >= v415;
              v542 = (v537 + v534);
              v543 = v537 + v534 + 4;
              v544 = !v541 || v543 > v414;
              v545 = v544 || v542 > v543;
              v546 = !v545 && v542 >= v415;
              v547 = (v449 + v534);
              v548 = v449 + v534 + 4;
              v549 = !v546 || v548 > v414;
              v550 = v549 || v547 > v548;
              v551 = !v550 && v547 >= v415;
              v552 = &v826[v534];
              v553 = &v826[v534 + 4];
              v554 = v551 && v552 >= v1006;
              v555 = !v554 || v553 > &v1006[35] + 12;
              if (v555 || v552 > v553)
              {
                goto LABEL_1033;
              }

              *v552 = v532 * ((*v538 + (*v542 * -0.5)) + (*v547 * -0.5));
              v557 = (v849 + v534);
              if (v849 + v534 < v793)
              {
                goto LABEL_1033;
              }

              if ((v557 + 1) > v786)
              {
                goto LABEL_1033;
              }

              if (v557 > v557 + 1)
              {
                goto LABEL_1033;
              }

              v558 = (v853 + v534);
              if ((v853 + v534) < v1005 || v558 + 1 > &v1005[35] + 3 || v558 > v558 + 1)
              {
                goto LABEL_1033;
              }

              *v558 = *v557 - *v538;
              v534 += 4;
            }

            while (v536 != v534);
          }

          if (v800)
          {
            v559 = 0;
            if (((v869 - v802) & ~((v869 - v802) >> 31)) >= 0x40uLL)
            {
              v560 = 64;
            }

            else
            {
              v560 = (v869 - v802) & ~((v869 - v802) >> 31);
            }

            v561 = v853 + 4 * v560;
            v562 = v560 - 1;
            v563 = &v826[4 * v560];
            v564 = v793 + 4 * (v560 + v863);
            v565 = v798 + 4 * (v560 + v863 - v804);
            v566 = *v844 + 4 * v560;
            do
            {
              v567 = (v566 + v559);
              v568 = v566 + v559 + 4;
              v569 = v568 > v414 || v567 > v568;
              v570 = !v569 && v567 >= v415;
              v571 = (v565 + v559);
              v572 = v565 + v559 + 4;
              v573 = !v570 || v572 > v414;
              v574 = v573 || v571 > v572;
              v575 = !v574 && v571 >= v415;
              v576 = &v563[v559];
              v577 = &v563[v559 + 4];
              v578 = v575 && v576 >= v1006;
              v579 = !v578 || v577 > &v1006[35] + 12;
              if (v579 || v576 > v577)
              {
                goto LABEL_1033;
              }

              *v576 = (v532 * (*v567 - *v571)) * 0.5;
              v581 = (v564 + v559);
              if (v564 + v559 < v793)
              {
                goto LABEL_1033;
              }

              if ((v581 + 1) > v786)
              {
                goto LABEL_1033;
              }

              if (v581 > v581 + 1)
              {
                goto LABEL_1033;
              }

              v582 = &v561[v559];
              if (&v561[v559] < v1005 || v582 + 1 > &v1005[35] + 3 || v582 > v582 + 1)
              {
                goto LABEL_1033;
              }

              *v582 = *v581 - *v567;
              ++v562;
              v559 += 4;
            }

            while (v562 < 0x3F);
          }
        }

        v583 = v422;
        v584 = v431;
        memcpy(v1006, v431, __nb);
        if (v1006 > v583)
        {
          goto LABEL_1033;
        }

        memcpy(v584, &v1006[16], __nb);
        if (v814 < v584)
        {
          goto LABEL_1033;
        }

        memcpy(v1005, v811, __nb);
        if (v1005 > v853)
        {
          goto LABEL_1033;
        }

        memcpy(v811, &v1005[16], __nb);
        if (v810 < v811 || !__Ba)
        {
          goto LABEL_1033;
        }

        v585 = 0;
        v586 = v1006;
        v587 = 0.000001;
        v588 = 0.000001;
        do
        {
          v589 = &v808[4 * v585];
          v590 = v589 + 1;
          v592 = v589 < v1006 || v590 > &v1006[35] + 3 || v589 > v590;
          v593 = &v840[4 * v585];
          v594 = v593 + 1;
          if (v592 || v593 < v1005 || v594 > &v1005[35] + 3 || v593 > v594)
          {
            goto LABEL_1033;
          }

          v598 = 0;
          v599 = v432 * *v589;
          v600 = *v593;
          v601 = v419 + 1;
          v602 = v586;
          v603 = v586;
          do
          {
            if (v601 < v419)
            {
              goto LABEL_1033;
            }

            if (v601 + 1 > v418)
            {
              goto LABEL_1033;
            }

            if (v601 > v601 + 1)
            {
              goto LABEL_1033;
            }

            v604 = v602 + v433;
            v605 = (v602 + v433 - 4);
            if (v605 < v1006)
            {
              goto LABEL_1033;
            }

            if (v604 > &v1006[35] + 12)
            {
              goto LABEL_1033;
            }

            if (v605 > v604)
            {
              goto LABEL_1033;
            }

            v606 = (v603 + v433 + 4);
            if (v606 < v1006)
            {
              goto LABEL_1033;
            }

            v607 = v603 + v433 + 8;
            if (v607 > &v1006[35] + 12 || v606 > v607)
            {
              goto LABEL_1033;
            }

            v608 = *v601++;
            v598 -= 4;
            v599 = v599 + (v608 * (*v605 + *v606));
            v603 = (v603 + 4);
            v602 = (v602 - 4);
          }

          while (v433 + v598);
          v434 = v434 + (v599 * v599);
          v438 = v438 + (v599 * v600);
          v587 = v587 + ((v600 + v599) * (v600 + v599));
          v588 = v588 + (v600 * v600);
          ++v585;
          v586 = (v586 + 4);
        }

        while (v585 != 64);
        v342.n128_f64[0] = log10((v588 / v587));
        v440 = v853;
        v439 = v840;
        v431 = v824;
        v422 = v826;
        v342.n128_f32[0] = v342.n128_f64[0];
        v342.n128_f32[0] = v833 + v342.n128_f32[0];
        v863 += 64;
        v437 = v837 + 1;
        v869 -= 64;
        v436 = *v844 + 256;
        v435 = v849 + 256;
        if (v837 == (v416 - 1) >> 6)
        {
          v609 = v342.n128_f32[0] > 0.0;
          v23 = v815;
          goto LABEL_864;
        }
      }
    }

    v609 = 0;
    v438 = 0.0;
    v434 = 0.000001;
LABEL_864:
    v24 = v871;
    v38 = v825;
    v42 = v812;
    v41 = v791;
    v43 = v771;
    if (v781 != 2)
    {
      v639 = 2;
      goto LABEL_868;
    }

    v342.n128_f32[0] = ((v438 / v434) * -2.0) + 0.5;
    v638 = v342.n128_f32[0];
    *v762 = v342.n128_f32[0];
    if (v342.n128_f32[0] > 3)
    {
      v639 = 3;
LABEL_868:
      *v762 = v639;
      goto LABEL_421;
    }

    if (v638 < 0)
    {
      v638 = 0;
      *v762 = 0;
    }

    v739 = !v609;
    if (v638)
    {
      v739 = 1;
    }

    if ((v739 & 1) == 0)
    {
      v639 = 1;
      goto LABEL_868;
    }
  }

LABEL_421:
  *&v1006[0] = v933;
  *(&v1006[0] + 1) = v934;
  *&v1006[1] = v933;
  enc_prm(v23, v932, v933, v1006, v24, *(v24 + 140), v878, &v882, v342, v915, v916, v877);
  if (!*v38)
  {
    return;
  }

  LODWORD(v1006[0]) = 0;
  vDSP_vfill(v1006, v901, 1, 0x10uLL);
  if (*(v24 + 88))
  {
    Q_lsf_tcxlpc(v911, v912, &v923, &v927, v943, &v944, v933, v934, *(v38 + 629), 0, &v907, v911, 3, v24 + 3540, v24 + 4564);
    v38[113] = v933[1];
    v38[114] = v933[2];
    v38[115] = v933[3];
  }

  else
  {
    v366 = 0;
    v367 = *(v42 + 1004);
    do
    {
      *(v902 + v366) = ((v367 * 0.5) / 3.1416) * acosf(*(v43 + v366));
      v366 += 4;
    }

    while (v366 != 64);
    vlpc_1st_cod(v902, v903, v901, v902, v903, __C, v367);
    v368 = 0;
    v38[113] = v369;
    do
    {
      v370 = vsubq_f32(v902[v368], v901[v368]);
      v900[v368++] = v370;
    }

    while (v368 != 4);
    v371 = 0;
    v372 = 0;
    v38[114] = 0;
    v370.n128_u32[0] = 1621981420;
    v373 = lsf_q_diff_cb_8b_rf;
    do
    {
      v374 = 0;
      v375 = 0.0;
      do
      {
        v376 = v900 + v374 + 4;
        v378 = (v900 + v374) < v900 || v376 > v901 || v900 + v374 > v376;
        v379 = &v373[v374 / 4];
        v380 = &v373[v374 / 4 + 1];
        v383 = v378 || v379 < lsf_q_diff_cb_8b_rf || v380 > LP_assym_window || v379 > v380;
        v384 = v903 + v374;
        v385 = v903 + v374 + 4;
        if (v383 || v384 < v903 || v385 > __C || v384 > v385)
        {
          goto LABEL_1033;
        }

        v375 = v375 + ((*(v903 + v374) * (*(v900 + v374) - *v379)) * (*(v900 + v374) - *v379));
        v374 += 4;
      }

      while (v374 != 64);
      if (v375 < v370.n128_f32[0])
      {
        v38[114] = v372;
        v371 = v372;
        v370.n128_f32[0] = v375;
      }

      ++v372;
      v373 += 16;
    }

    while (v372 != 256);
    if (v371 > 255)
    {
      goto LABEL_1033;
    }

    v389 = &lsf_q_diff_cb_8b_rf[16 * v371];
    if (v389 > LP_assym_window || v389 < lsf_q_diff_cb_8b_rf)
    {
      goto LABEL_1033;
    }

    MEMORY[0x19EAE5DC0](v901, 1, v370);
    v_sort(v899, 0, 15, 16);
    v42 = v812;
    reorder_lsf(v899, 50.0, *(v812 + 1004));
  }

  v390 = *(v24 + 88);
  if (*(v24 + 88))
  {
    v391 = *(v24 + 3536);
    v38[573] = *(v24 + 3536);
    v392 = v932[0];
    *(v38 + 583) = v932[0];
    v393 = *(v38 + 585);
    if (v393)
    {
      v394 = v393 * 1.6;
      if (v394 < v392 && *(v762 + 256) <= 0.2)
      {
        v392 = v394;
        if (v394 >= 127)
        {
          v392 = 127;
        }

        *(v38 + 583) = v392;
      }
    }

    v395 = *(v24 + 52108);
    if (v390 == 1 && v395 == 1)
    {
      if (*(v38 + 571) == 1 && ((v396 = *(v762 + 248), vcvts_n_f32_s32(*(v24 + 140), 1uLL) >= v396) || *(v762 + 256) <= 0.4) && v396 == *(v38 + 565) && !*(v38 + 567) && !*(v38 + 569))
      {
        v395 = 1;
        if ((*v42 & *(v763 + 16)) == 0)
        {
          v412 = 0;
          goto LABEL_1011;
        }
      }

      else
      {
        v395 = 1;
      }
    }

    else if (!*(v24 + 52108))
    {
      if (!v393)
      {
        v412 = 1;
        goto LABEL_1011;
      }

      v411 = *(v24 + 52108);
LABEL_852:
      v635 = v393 * 0.97 <= v392 || *(v42 + 116) == 0;
      v412 = 1;
      v636 = v635 && v393 * 0.9 <= v392;
      v395 = v411;
      v637 = 1;
      if (!v636)
      {
LABEL_1012:
        *(v38 + 565) = *(v762 + 248);
        *(v38 + 569) = *(v38 + 567);
        *(v38 + 567) = *v42 & *(v763 + 16);
        *(v38 + 571) = v395;
        *(v38 + 601) = *(v41 + 8);
        v38[101] = 6;
        if (v23 && v395)
        {
          if (v412)
          {
            v38[101] = 17;
            if (v637)
            {
              v737 = 2;
            }

            else
            {
              v737 = 3;
            }

            v38[4] = v737;
            v738 = 17;
          }

          else
          {
            v737 = 1;
            v38[4] = 1;
            v738 = 28;
            v38[101] = 28;
          }
        }

        else
        {
          v737 = 0;
          v38[4] = 0;
          v738 = 6;
        }

        *(v38 + 17) = v737;
        v38[7] = v738;
        return;
      }

LABEL_1011:
      v637 = 0;
      goto LABEL_1012;
    }

    if (v391 >= 2 && *(v24 + 3538) >= 2)
    {
      v634 = *(v762 + 256) <= 0.4 && v395 != 0xFFFF;
      v412 = !v634;
      if (!v393)
      {
        goto LABEL_1011;
      }

      v411 = v395;
      if (v634)
      {
        goto LABEL_1011;
      }
    }

    else
    {
      v411 = 0xFFFF;
      v412 = v395 == 0xFFFF;
      if (!v393 || v395 != 0xFFFF)
      {
        goto LABEL_1011;
      }
    }

    goto LABEL_852;
  }

  v397 = 0;
  *v356.i32 = *(v42 + 1004) * 0.5;
  v848 = vdupq_n_s32(0x40490FDBu);
  v852 = vdupq_lane_s32(v356, 0);
  do
  {
    v868 = vdivq_f32(vmulq_f32(v899[v397], v848), v852);
    v860 = cosf(v868.f32[1]);
    *&v398 = cosf(v868.f32[0]);
    *(&v398 + 1) = v860;
    v861 = v398;
    v399 = cosf(v868.f32[2]);
    v400 = v861;
    *(&v400 + 2) = v399;
    v862 = v400;
    v401 = cosf(v868.f32[3]);
    v402 = v862;
    *(&v402 + 3) = v401;
    v914[v397++] = v402;
  }

  while (v397 != 4);
  int_lsp(*(v24 + 140), v898, v914, v913, v914, interpol_frac_12k8, scaleTcxTable, 0);
  *&v1006[0] = v899;
  *(&v1006[0] + 1) = v900;
  *&v1006[1] = v899;
  *&v1005[0] = v897;
  *(&v1005[0] + 1) = v898;
  *&v1005[1] = v897;
  lsf_stab(v1006, v1005, 0);
  v789 = v403;
  v404 = *(v42 + 48);
  v405 = v38[619];
  LODWORD(v1006[0]) = -1;
  LODWORD(v1005[0]) = -1;
  v38[101] = 0;
  if (v404 >= 6u)
  {
    goto LABEL_1033;
  }

  v406 = v38 + 103;
  if (v404)
  {
    v407 = v404 & 7;
    v408 = 0.0;
    v409 = (v38 + 103);
    do
    {
      v410 = *v409++;
      v408 = v408 + v410;
      --v407;
    }

    while (v407);
  }

  else
  {
    v408 = 0.0;
  }

  LODWORD(v1005[0]) = *v406;
  maximum((v38 + 103), v404, v1005);
  LODWORD(v1006[0]) = *v406;
  minimum((v38 + 103), v404, v1006);
  v611 = a9 + 1;
  if ((a9 + 1) > a10)
  {
    goto LABEL_1033;
  }

  if (v611 < a9)
  {
    goto LABEL_1033;
  }

  v612 = a9 + 2;
  if ((a9 + 2) > a10)
  {
    goto LABEL_1033;
  }

  if (v611 > v612)
  {
    goto LABEL_1033;
  }

  if (v612 < a9)
  {
    goto LABEL_1033;
  }

  v613 = a9 + 3;
  if ((a9 + 3) > a10 || v612 > v613 || v613 < a9 || (a9 + 4) > a10 || v613 > a9 + 4)
  {
    goto LABEL_1033;
  }

  v614 = a9[1];
  v615 = vabds_f32(*a9, v614);
  v616 = a9[2];
  v617 = vabds_f32(v614, v616);
  v618 = vabds_f32(v616, *v613);
  v619 = *v1005;
  if (v405 == 1)
  {
    v620 = *a9 - v614;
    v621 = v614 - v616;
    v622 = v616 - *v613;
    v623 = v620 != 0.0;
    if (v621 != 0.0)
    {
      v623 = 1;
    }

    if (*v1005 <= 0.48)
    {
      v623 = 1;
    }

    if (v622 != 0.0)
    {
      v623 = 1;
    }

    v624 = v23 != 2 || v623;
    v625 = *v1005 <= 0.47;
    v626 = 1.0;
  }

  else
  {
    v627 = *v1005;
    v628 = v615 > 0.25;
    if (v617 > 0.25)
    {
      v628 = 1;
    }

    if (v627 <= 0.47)
    {
      v628 = 1;
    }

    if (v618 > 0.25)
    {
      v628 = 1;
    }

    v624 = v23 != 2 || v628;
    v625 = v627 <= 0.45;
    v626 = 1.25;
  }

  v629 = 0u;
  if (v615 > v626)
  {
    v625 = 1;
  }

  if (v617 > v626)
  {
    v625 = 1;
  }

  if (v618 > v626)
  {
    v625 = 1;
  }

  v630 = v23 != 3 || v625;
  v631 = v38[101];
  v632 = v631 + 22;
  v38[101] = v631 + 22;
  v38[4] = 4;
  if (!v23 || !v630 || !v624)
  {
    goto LABEL_872;
  }

  if (v23 == 1)
  {
    v629 = 7u;
LABEL_872:
    v38[4] = v629;
    goto LABEL_873;
  }

  if (v23 == 3 && v619 < 0.05)
  {
    v629 = 5u;
    goto LABEL_872;
  }

  v629 = 4u;
  if (v23 == 3 && (v408 / v404) < 0.3)
  {
    v629 = 6u;
    goto LABEL_872;
  }

LABEL_873:
  v640 = &ACELP_NRG_MODE + v629 + 24;
  if (v640 >= &ACELP_LTF_MODE)
  {
    goto LABEL_1033;
  }

  if (v640 < &byte_19B375AD8)
  {
    goto LABEL_1033;
  }

  v641 = v629;
  v642 = &ACELP_LTF_MODE + v629 + 24;
  if (v642 >= ACELP_LTF_BITS)
  {
    goto LABEL_1033;
  }

  if (v642 < &byte_19B375AF8)
  {
    goto LABEL_1033;
  }

  v643 = &ACELP_LTP_MODE[v629 + 24];
  if (v643 >= ACELP_GAINS_MODE)
  {
    goto LABEL_1033;
  }

  if (v643 < &byte_19B39DBB4)
  {
    goto LABEL_1033;
  }

  v644 = &ACELP_GAINS_MODE[v629 + 24];
  if (v644 >= mfreq_loc || v644 < &byte_19B39DBD4)
  {
    goto LABEL_1033;
  }

  v645 = *(&ACELP_NRG_MODE + v629 + 24);
  v646 = *(&ACELP_LTF_MODE + v629 + 24);
  v647 = ACELP_LTP_MODE[v629 + 24];
  v648 = ACELP_GAINS_MODE[v641 + 24];
  if (v641 <= 4)
  {
    if (v641)
    {
      v649 = v812;
      if (v641 != 4)
      {
        goto LABEL_912;
      }

      v650 = &ACELP_NRG_BITS[v645];
      if (v650 >= ACELP_LTP_BITS_SFR)
      {
        goto LABEL_1033;
      }

      if (v650 < ACELP_NRG_BITS)
      {
        goto LABEL_1033;
      }

      v651 = &ACELP_LTF_BITS[v646];
      if (v651 >= &wscw16q15)
      {
        goto LABEL_1033;
      }

      if (v651 < ACELP_LTF_BITS)
      {
        goto LABEL_1033;
      }

      v652 = &ACELP_GAINS_BITS[v648];
      if (v652 >= ACELP_LTP_MODE || v652 < ACELP_GAINS_BITS)
      {
        goto LABEL_1033;
      }

      v610.i32[0] = *&ACELP_LTP_BITS_SFR[5 * v647];
      v632 = v631 + *v651 + 2 * *v652 + vaddv_s16(*&vmovl_u8(v610)) + *v650 + 24;
    }

    else
    {
      v632 = 6;
    }

LABEL_910:
    v649 = v812;
    goto LABEL_911;
  }

  if (v641 == 5)
  {
    v653 = &ACELP_NRG_BITS[v645];
    if (&ACELP_NRG_BITS[v645] >= ACELP_LTP_BITS_SFR)
    {
      goto LABEL_1033;
    }

    if (v653 < ACELP_NRG_BITS)
    {
      goto LABEL_1033;
    }

    v654 = &ACELP_LTF_BITS[v646];
    if (v654 >= &wscw16q15)
    {
      goto LABEL_1033;
    }

    if (v654 < ACELP_LTF_BITS)
    {
      goto LABEL_1033;
    }

    v655 = &ACELP_GAINS_BITS[v648];
    if (v655 >= ACELP_LTP_MODE || v655 < ACELP_GAINS_BITS)
    {
      goto LABEL_1033;
    }

    v632 = v631 + *v653 + *v654 + 2 * *v655 + 52;
    goto LABEL_910;
  }

  if (v641 == 6)
  {
    v656 = &ACELP_NRG_BITS[v645];
    if (v656 >= ACELP_LTP_BITS_SFR)
    {
      goto LABEL_1033;
    }

    if (v656 < ACELP_NRG_BITS)
    {
      goto LABEL_1033;
    }

    v657 = &ACELP_LTF_BITS[v646];
    if (v657 >= &wscw16q15)
    {
      goto LABEL_1033;
    }

    if (v657 < ACELP_LTF_BITS)
    {
      goto LABEL_1033;
    }

    v658 = &ACELP_GAINS_BITS[v648];
    if (v658 >= ACELP_LTP_MODE || v658 < ACELP_GAINS_BITS)
    {
      goto LABEL_1033;
    }

    v610.i32[0] = *&ACELP_LTP_BITS_SFR[5 * v647];
    v632 = v631 + *v657 + 2 * *v658 + vaddv_s16(*&vmovl_u8(v610)) + *v656 + 38;
    goto LABEL_910;
  }

  v649 = v812;
  if (v641 == 7)
  {
    v632 = v631 + 46;
LABEL_911:
    v38[101] = v632;
  }

LABEL_912:
  *(v38 + 17) = v641;
  v38[7] = v632;
  if (v641)
  {
    *v1003 = *(v24 + 86216);
    *&v1003[16] = *(v24 + 86232);
    LODWORD(v875) = -1431655766;
    LODWORD(v872) = -1431655766;
    v896[4] = -1431655766;
    v896[3] = -1431655766;
    *&v987 = -1;
    *(&v986 + 1) = -1;
    *&v986 = -1;
    memset(v971, 255, 24);
    *&v659 = -1;
    *(&v659 + 1) = -1;
    v1002[14] = v659;
    v1002[15] = v659;
    v1002[12] = v659;
    v1002[13] = v659;
    v1002[10] = v659;
    v1002[11] = v659;
    v1002[8] = v659;
    v1002[9] = v659;
    v1002[6] = v659;
    v1002[7] = v659;
    v1002[4] = v659;
    v1002[5] = v659;
    v1002[2] = v659;
    v1002[3] = v659;
    v1002[0] = v659;
    v1002[1] = v659;
    v1134 = v659;
    v1133 = v659;
    v1132 = v659;
    v1131 = v659;
    v1130 = v659;
    v1129 = v659;
    v1128 = v659;
    v1127 = v659;
    v1126 = v659;
    v1125 = v659;
    v1124 = v659;
    v1123 = v659;
    v1122 = v659;
    v1121 = v659;
    v1120 = v659;
    v1119 = v659;
    v1118 = v659;
    v1117 = v659;
    v1116 = v659;
    v1115 = v659;
    v1114 = v659;
    v1113 = v659;
    v1112 = v659;
    v1111 = v659;
    v1110 = v659;
    v1109 = v659;
    v1108 = v659;
    v1107 = v659;
    v1106 = v659;
    v1105 = v659;
    v1104 = v659;
    v1103 = v659;
    v1102 = v659;
    v1101 = v659;
    v1100 = v659;
    v1099 = v659;
    v1098 = v659;
    v1097 = v659;
    v1096 = v659;
    v1095 = v659;
    v1094 = v659;
    v1093 = v659;
    v1092 = v659;
    v1091 = v659;
    v1090 = v659;
    v1089 = v659;
    v1088 = v659;
    v1087 = v659;
    v1086 = v659;
    v1085 = v659;
    v1084 = v659;
    v1083 = v659;
    v1082 = v659;
    v1081 = v659;
    v1080 = v659;
    v1079 = v659;
    v1078 = v659;
    v1077 = v659;
    v1076 = v659;
    v1075 = v659;
    v1074 = v659;
    v1073 = v659;
    v1072 = v659;
    v1071 = v659;
    v1070 = v659;
    v1069 = v659;
    v1068 = v659;
    v1067 = v659;
    v1066 = v659;
    v1065 = v659;
    v1064 = v659;
    v1063 = v659;
    v1062 = v659;
    v1061 = v659;
    v1060 = v659;
    v1059 = v659;
    v1058 = v659;
    v1057 = v659;
    v1056 = v659;
    v1055 = v659;
    v1054 = v659;
    v1053 = v659;
    v1052 = v659;
    v1051 = v659;
    v1050 = v659;
    v1049 = v659;
    v1048 = v659;
    v1047 = v659;
    v1046 = v659;
    v1045 = v659;
    v1044 = v659;
    v1043 = v659;
    v1042 = v659;
    v1041 = v659;
    v1040 = v659;
    v1039 = v659;
    v1038 = v659;
    v1037 = v659;
    v1036 = v659;
    v1035 = v659;
    v1034 = v659;
    v1033 = v659;
    v1032 = v659;
    v1031 = v659;
    v1030 = v659;
    v1029 = v659;
    v1028 = v659;
    v1027 = v659;
    v1026 = v659;
    v1025 = v659;
    v1024 = v659;
    v1023 = v659;
    memset(v1005, 255, 0x400uLL);
    memset(v1006, 255, 0x500uLL);
    v892 = NAN;
    *&v660 = -1;
    *(&v660 + 1) = -1;
    v1022 = v660;
    v1021 = v660;
    v1020 = v660;
    v1019 = v660;
    v1018 = v660;
    v1017 = v660;
    v1016 = v660;
    v1015 = v660;
    v1014 = v660;
    v1013 = v660;
    v1012 = v660;
    v1011 = v660;
    v1010 = v660;
    v1009 = v660;
    v1008 = v660;
    v1007 = v660;
    memset(v956, 170, 24);
    v893 = 0;
    LODWORD(v883) = 0;
    *&v896[1] = 0;
    v895 = 0.0;
    v894 = 0;
    *__A = 0;
    vDSP_vfill(__A, v1002, 1, 0x40uLL);
    v841 = v641;
    BITS_ALLOC_config_acelp(v632, v641, (v24 + 68796), 0, *(v649 + 48));
    if (*(v24 + 52108) >= 1)
    {
      *v756 = 0u;
      *(v756 + 16) = 0u;
    }

    v661 = *(v24 + 140);
    if (v661 > 0x101)
    {
      goto LABEL_1033;
    }

    *__A = *v1003;
    *&__A[16] = *&v1003[16];
    calc_residu(__A, &__b[1280], v913, v661);
    v896[0] = 0;
    v662 = v871;
    if (v641 != 7)
    {
      v663 = v825[682];
      if (v663 >= 1)
      {
        Es_pred_enc(v896, (v871 + 68284), *(v871 + 140), &__b[1280], &v907, v795, (v795 + 3), v825[683], v663 > 1);
      }
    }

    if (*(v871 + 140) >= 1)
    {
      v664 = 0;
      v854 = 0;
      *&v665 = &v907;
      *(&v665 + 1) = __b;
      v830 = v665;
      v666 = *&__b[1280];
      *v809 = v871 + 68838;
      v834 = v871 + 68848;
      v801 = (v825 + 686);
      v787 = v871 + 68320;
      v667 = vdup_n_s32(0x3C23D70Au);
      *&v668 = 0.0;
      v864 = v794;
      v870 = v913;
      do
      {
        if (v641 == 7)
        {
          if (!v664)
          {
            *__A = v1005;
            *&__A[8] = &v1005[64];
            *&__A[16] = v1005;
            nelp_encoder(v662, &__b[1280], &v907, __A, 0);
          }

          v684 = (v1005 + 4 * v664);
          if (v684 < v1005 || v684 > &v1005[64] || v664 == 256)
          {
            goto LABEL_1033;
          }

          v685 = v684[11];
          v1035 = v684[12];
          v686 = v684[12];
          v1036 = v684[13];
          v687 = v684[13];
          v1037 = v684[14];
          v688 = v684[14];
          v1038 = v684[15];
          v689 = v684[7];
          v1031 = v684[8];
          v690 = v684[8];
          v1032 = v684[9];
          v691 = v684[9];
          v1033 = v684[10];
          v692 = v684[10];
          v1034 = v684[11];
          v693 = v684[3];
          v1027 = v684[4];
          v694 = v684[4];
          v1028 = v684[5];
          v695 = v684[5];
          v1029 = v684[6];
          v696 = v684[6];
          v1030 = v684[7];
          v697 = v684[1];
          v1023 = *v684;
          v698 = *v684;
          v1024 = v684[1];
          v1025 = v684[2];
          v699 = v684[2];
          v1026 = v684[3];
          *&__b[1472] = v686;
          *&__b[1488] = v687;
          v700 = v684[15];
          *&__b[1504] = v688;
          *&__b[1520] = v700;
          *&__b[1408] = v690;
          *&__b[1424] = v691;
          *&__b[1440] = v692;
          *&__b[1456] = v685;
          *&__b[1344] = v694;
          *&__b[1360] = v695;
          *&__b[1376] = v696;
          *&__b[1392] = v689;
          *&__b[1280] = v698;
          *&__b[1296] = v697;
          *&__b[1312] = v699;
          *&__b[1328] = v693;
          v662 = v871;
        }

        else
        {
          v669 = &__b[4 * v664 + 1280];
          if (v669 + 1 > &v907 || v669 > v669 + 1 || v669 < __b)
          {
            goto LABEL_1033;
          }

          *v669 = v666;
          v672 = v669 + 64;
          if (v669 + 65 > &v907)
          {
            goto LABEL_1033;
          }

          if (v672 > v669 + 65)
          {
            goto LABEL_1033;
          }

          if (v669 + 64 < __b)
          {
            goto LABEL_1033;
          }

          v673 = v664;
          v674 = __C + 4 * v664;
          if (v674 < __C)
          {
            goto LABEL_1033;
          }

          if (v870 < v913)
          {
            goto LABEL_1033;
          }

          if (v864 < v794)
          {
            goto LABEL_1033;
          }

          v666 = *v672;
          v675 = *(v812 + 52);
          *__A = *v1003;
          *&__A[16] = *&v1003[16];
          find_targets(__A, v674, v905, v664, v760, v770, v870, v675, v914, &__b[1280], &v907, 64, v864, (v794 + 85), &v1119, v1135, &v1103, &v1119, &v1087, &v1103, (v871 + 110872), (v871 + 110896));
          gp_clip(*(v871 + 96), v795, (v795 + 3), v664, v815, &v1119, v770);
          v827 = v676;
          v677 = (*v809 + 2 * (v664 >> 6));
          if (v677 < *v809 || (v677 + 1) > v834 || v677 > v677 + 1)
          {
            goto LABEL_1033;
          }

          if (!*v677)
          {
            v895 = *&v668;
          }

          if (v825[685])
          {
            *v956 = v871 + 67744 + 4 * v854;
            *&v956[8] = v871 + 67764;
            *&v956[16] = v871 + 67744;
            v678 = v825[684];
            *__A = v956;
            *&__A[8] = &v956[24];
            *&__A[16] = v956;
            v889 = &__b[4 * v664 + 1280];
            v890 = v830;
            Mode2_pit_encode(v678, v664, __A, &v889, v779, (v779 + 3), &v875, &v872, &v896[4], &v896[3], &v883, &v896[1], &v896[2], &v1087, &v1103, &v1119, v1135, *(v812 + 1012), HIDWORD(*(v812 + 1012)), *(v812 + 1020), HIDWORD(*(v812 + 1012)), *(v812 + 1028), *(v812 + 1032));
            v679 = v896[2];
            v681 = &v907 >= v669 && &v907 - v669 > 256;
            if (v896[2] == *(v812 + 1032) >> 1)
            {
              if (!v681)
              {
                goto LABEL_1033;
              }

              v682 = v896[1];
              v683 = v883;
              *__A = &__b[4 * v664 + 1280];
              *&__A[8] = &v907;
              *&__A[16] = __b;
              pred_lt4(__A, v669, v883, (2 * LOWORD(v896[1])), 65, inter4_2, &post_dct_wind, 0x10u, 4);
            }

            else
            {
              if (!v681)
              {
                goto LABEL_1033;
              }

              v683 = v883;
              *__A = &__b[4 * v664 + 1280];
              *&__A[8] = &v907;
              *&__A[16] = __b;
              v682 = v896[1];
              pred_lt4(__A, v669, v883, SLOWORD(v896[1]), 65, inter4_2, &post_dct_wind, 0x10u, 4);
            }

            v702 = *(v871 + 140);
            if (*v677 <= 0)
            {
              v703 = 100;
            }

            else
            {
              v703 = *v677;
            }

            v704 = *(v871 + 96);
            *__A = &__b[1280];
            *&__A[8] = v830;
            v705 = lp_filt_exc_enc(2u, v704, 0, v703, v664, __A, &v1087, &v1103, &v1119, v1135, &v1055, &v1071, &v1071, &v1087, 64, v702, v971, &v971[1] + 8, v827, &v895, v801);
            v701 = v682;
            if (*v801 == 2)
            {
              v706 = (v787 + 4 * v854);
              if (v706 < v787 || (v706 + 1) > v871 + 68340 || v706 > v706 + 1)
              {
                goto LABEL_1033;
              }

              *v706 = v705;
            }

            DWORD1(v986) = v971[0];
            *(&v986 + 3) = ((*(v971 + 1) + -0.01) * -0.5) + 0.01;
          }

          else
          {
            v895 = 0.0;
            HIDWORD(v986) = 0;
            DWORD1(v986) = 0;
            v1055 = 0u;
            v1056 = 0u;
            v1057 = 0u;
            v1058 = 0u;
            v1059 = 0u;
            v1060 = 0u;
            v1061 = 0u;
            v1062 = 0u;
            v1063 = 0u;
            v1064 = 0u;
            v1065 = 0u;
            v1066 = 0u;
            v1067 = 0u;
            v1068 = 0u;
            v1069 = 0u;
            v1070 = 0u;
            if (&v907 < v669 || &v907 - v669 < 253)
            {
              goto LABEL_1033;
            }

            v701 = 0;
            *(v669 + 14) = 0uLL;
            *(v669 + 15) = 0uLL;
            *(v669 + 12) = 0uLL;
            *(v669 + 13) = 0uLL;
            *(v669 + 10) = 0uLL;
            *(v669 + 11) = 0uLL;
            *(v669 + 8) = 0uLL;
            *(v669 + 9) = 0uLL;
            *(v669 + 6) = 0uLL;
            *(v669 + 7) = 0uLL;
            *(v669 + 4) = 0uLL;
            *(v669 + 5) = 0uLL;
            *(v669 + 2) = 0uLL;
            *(v669 + 3) = 0uLL;
            *v669 = 0uLL;
            *(v669 + 1) = 0uLL;
            v683 = 64;
            LODWORD(v883) = 64;
            *&v896[1] = 0x100000000;
            v679 = 1;
          }

          v707 = (v834 + 4 * (v664 >> 6));
          if (v707 < v834 || (v707 + 1) > v871 + 68868 || v707 > v707 + 1)
          {
            goto LABEL_1033;
          }

          v708 = *v707;
          if (*v707 < 0)
          {
            *__A = 0;
            vDSP_vfill(__A, v1002, 1, 0x40uLL);
            *__A = 0;
            vDSP_vfill(__A, &v1039, 1, 0x40uLL);
            v718 = v871;
          }

          else
          {
            *v956 = v871 + 67924 + 4 * v854;
            *&v956[8] = v871 + 67944;
            *&v956[16] = v871 + 67924;
            v709 = *(v825 + 679);
            v710 = *(v825 + 677);
            v711 = v825[674];
            v712 = v825[673];
            v713 = v825[672];
            v714 = v825[671];
            v715 = v825[670];
            v716 = *(v825 + 49);
            v717 = *(v812 + 1008);
            *__A = v956;
            *&__A[8] = &v956[24];
            *&__A[16] = v956;
            v718 = v871;
            v719 = *(v871 + 140);
            v720 = *(v796 + 1796);
            v721 = *(v871 + 64);
            v889 = &__b[1280];
            v890 = v830;
            E_ACELP_innovative_codebook(&v889, v683, v701, v679, v708, v715, v714, v713, v895, v716, v710, v709, v712, SHIWORD(v712), v711, SHIWORD(v711), v664, v870, v914, &v1087, &v1103, &v1119, v1135, &v1103, &v1119, &v1055, &v1071, &v1039, &v1055, v717, __A, v1002, &v1002[16], v719, v720, v721);
          }

          if (*(v718 + 140) - 64 <= v664)
          {
            goto LABEL_994;
          }

          E_corr_xy2(&v1119, v1135, &v1055, &v1071, &v1039, &v1055, v971, &v971[1] + 8);
          *(&v986 + 2) = *(v971 + 2) + 0.01;
          *&v987 = vmla_f32(v667, COERCE_FLOAT32X2_T(--0.0000305175998), *(v971 + 12));
          *__A = -1;
          vDSP_dotpr(&v1119, 1, &v1119, 1, __A, 0x40uLL);
          *&v986 = *__A + 0.01;
          v892 = 0.0;
          v1007 = 0u;
          v1008 = 0u;
          v1009 = 0u;
          v1010 = 0u;
          v1011 = 0u;
          v1012 = 0u;
          v1013 = 0u;
          v1014 = 0u;
          v1015 = 0u;
          v1016 = 0u;
          v1017 = 0u;
          v1018 = 0u;
          v1019 = 0u;
          v1020 = 0u;
          v1021 = 0u;
          v1022 = 0u;
          v722 = *v677;
          if (*v677)
          {
            *v956 = v871 + 68104 + 4 * v854;
            *&v956[8] = v871 + 68124;
            *&v956[16] = v871 + 68104;
            *__A = v956;
            *&__A[8] = &v956[24];
            *&__A[16] = v956;
            encode_acelp_gains(v1002, &v1002[16], v722, v827, &v986, &v895, &v894 + 1, __A, *v896, &v893 + 1, &v893, &v1007, &v1023, &v892, *(v812 + 996));
          }

          v723 = v895;
          gp_clip_test_gain_pit(*(v871 + 96), v770, v755, v895);
          if (&v907 < v669 || &v907 - v669 < 253)
          {
            goto LABEL_1033;
          }

          v724 = *(&v894 + 1);
          est_tilt(v669, v1002, &v894, v723, *(&v894 + 1));
          v725 = 0;
          *(v825 + 49) = v726;
          v727 = v892;
          *(v825 + 35) = ((*(&v1134 + 3) - (v723 * *(&v1070 + 3))) - (v724 * *(&v1054 + 3))) + (v892 * -0.0);
          v728 = v664;
          do
          {
            v729 = &__b[4 * v728 + 1280];
            if (v729 + 1 > &v907 || v729 > v729 + 1 || v729 < __b)
            {
              goto LABEL_1033;
            }

            v732 = (v723 * *v729) + (v727 * *(&v1007 + v725));
            *(&v1023 + v725) = v732;
            *v729 = v732 + (v724 * *(v1002 + v725));
            v725 += 4;
            ++v728;
          }

          while (v725 != 256);
          v662 = v871;
          enhancer(2, 0xFFFFFFFFFFFFFFFFLL, *v707, 0, v815, *(v871 + 140), v754, v1002, *&v894, v789, *(&v893 + 1), *&v893, v723, &v1023, v756, v754);
        }

        LODWORD(v641) = v841;
        if (v841 == 7)
        {
          v733 = *(v662 + 140);
          if (v733 - 64 <= v664)
          {
            goto LABEL_1008;
          }
        }

        v673 = v664;
LABEL_994:
        v734 = v1006 + 4 * v673;
        if (v664 > 256)
        {
          goto LABEL_1033;
        }

        if (v734 > &v1006[80])
        {
          goto LABEL_1033;
        }

        if (v1006 > v734)
        {
          goto LABEL_1033;
        }

        if (v870 < v913)
        {
          goto LABEL_1033;
        }

        syn_filt(v870);
        v735 = &__C[4] + 4 * v673;
        if (v735 - 64 > v905)
        {
          goto LABEL_1033;
        }

        if (__C > v735 - 64)
        {
          goto LABEL_1033;
        }

        v736 = &__b[4 * v673 + 1280];
        if (&v905[-v735] < 253 || v735 > v905 || &v905[-v735 + 64] < 61 || __C > v735 || v736 > &v907 || __b > v736 || &v907 - v736 < 253)
        {
          goto LABEL_1033;
        }

        syn_filt(v870);
        v864 += 17;
        v870 += 17;
        ++v854;
        *&v668 = v895;
        v662 = v871;
        LOWORD(v733) = *(v871 + 140);
        LODWORD(v641) = v841;
LABEL_1008:
        v664 = (v664 + 64);
      }

      while (v664 < v733);
    }
  }
}