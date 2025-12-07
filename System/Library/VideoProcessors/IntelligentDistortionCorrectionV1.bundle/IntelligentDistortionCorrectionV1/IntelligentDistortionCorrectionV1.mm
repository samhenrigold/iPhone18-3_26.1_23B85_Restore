uint64_t idcComputeGlobalTransform(int32x2_t *a1, void *a2, void *a3, float32x2_t *a4, __n128 a5, __n128 a6)
{
  v9 = a5.n128_u32[1];
  v154 = a5;
  v155 = a6;
  v10 = a5.n128_u32[0];
  v11 = a3;
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v14 = (&v146 - ((v13 + 15) & 0xFFFFFFFF0));
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = (&v146 - v16);
  v18 = MEMORY[0x2A1C7C4A8](v15);
  v20 = &v146 - v19;
  v152 = v18;
  if (!v18 || !a4)
  {
    sub_2957BE258();
LABEL_45:
    v125 = 4294954516;
    goto LABEL_33;
  }

  if (v10 < 2 || v9 <= 1)
  {
    sub_2957BE1E0();
    goto LABEL_45;
  }

  if (v155.n128_u32[0] < 2 || v155.n128_u32[1] <= 1)
  {
    sub_2957BE168();
    goto LABEL_45;
  }

  v151 = a4;
  v21 = v10 - v155.n128_u32[0];
  if (v10 < v155.n128_u32[0])
  {
    sub_2957BE0F0();
    goto LABEL_45;
  }

  v150 = &v146;
  v22 = v9 - v155.n128_u32[1];
  if (v9 < v155.n128_u32[1])
  {
    sub_2957BE078();
    v125 = 4294954516;
  }

  else
  {
    v155.n128_u32[0] = v9 - 1;
    v159 = vdupq_n_s64(1uLL);
    v23.i64[0] = v154.n128_u32[0];
    v23.i64[1] = v154.n128_u32[1];
    v160 = 0;
    v161 = v23;
    v162 = 1;
    [v152 getBytes:&v146 - v19 bytesPerRow:8 * v10 fromRegion:&v159 mipmapLevel:0];
    v24 = a1[3];
    v25 = a1[9];
    v23.i64[0] = v25.i32[0];
    v23.i64[1] = v25.i32[1];
    v26 = vcvtq_f64_s64(v23);
    v27.n128_u64[0] = a1[11];
    v153 = v26;
    v154 = v27;
    v23.i64[0] = v27.n128_i32[0];
    v23.i64[1] = v27.n128_i32[1];
    v28 = vcvtq_f64_s64(v23);
    v23.i64[0] = *a2;
    v23.i64[1] = HIDWORD(*a2);
    v29 = vcvtq_f64_s64(v23);
    v27.n128_u64[0] = a2[2];
    v23.i64[0] = v27.n128_i32[0];
    v23.i64[1] = v27.n128_i32[1];
    v30 = vcvtq_f64_s64(v23);
    v27.n128_u64[0] = *&v26.f64[1];
    v31 = v28.f64[1];
    v32 = v29.f64[1];
    v33 = v30.f64[1];
    v147 = v28;
    v148 = v29;
    v146 = v30;
    v34 = CGRectContainsRect(*v26.f64, *v29.f64);
    v39 = v22 >> 1;
    v40 = v9 - (v22 >> 1);
    v41 = 0.0;
    v42.f64[0] = 0.0;
    if (v22 >> 1 >= v40)
    {
      goto LABEL_24;
    }

    LODWORD(v43) = 0;
    v35 = vcvt_f32_s32(v24);
    v44 = vcvt_f32_s32(v25);
    v45 = vcvt_f32_f64(vdivq_f64(v147, v146));
    v37 = vcvtq_f64_f32(v45);
    *&v37.f64[0] = vcvt_f32_f64(vmlsq_f64(v153, v148, v37));
    v46 = 1.0 / fmaxf(v154.n128_i32[0] + -1.0, 1.0);
    _S5 = 1.0 / fmaxf(v154.n128_i32[1] + -1.0, 1.0);
    v48 = (a1[5].i32[0] - 1) / (v10 - 1);
    v49 = v10 * v39 + (v21 >> 1);
    v50 = (a1[5].i32[1] - 1) / v155.n128_u32[0];
    do
    {
      if (v21 >> 1 < v10 - (v21 >> 1))
      {
        v51 = v21 >> 1;
        v52 = v49;
        do
        {
          v53.f32[0] = v48 * v51;
          v53.f32[1] = v50 * v39;
          v54 = vadd_f32(*&v20[8 * v52], v35);
          v55 = vmla_f32(*&v37.f64[0], v45, v54);
          v56 = vadd_f32(v53, v35);
          if (v34)
          {
            v57 = -1;
          }

          else
          {
            v57 = 0;
          }

          _D18 = vsub_f32(vbsl_s8(vdup_n_s32(v57), v55, v54), v44);
          _D17 = vsub_f32(v56, v44);
          v60.f32[0] = v46 * _D17.f32[0];
          __asm { FMLS            S20, S5, V17.S[1] }

          _D17.f32[0] = v46 * _D18.f32[0];
          v60.i32[1] = _S20;
          __asm { FMLS            S20, S5, V18.S[1] }

          _D17.i32[1] = _S20;
          v14[v43] = v60;
          v17[v43] = _D17;
          LODWORD(v43) = v43 + 1;
          ++v52;
          ++v51;
        }

        while (v10 + (v21 >> 1) - (v21 & 0xFFFFFFFE) != v51);
      }

      ++v39;
      v49 += v10;
    }

    while (v39 != v40);
    *v42.f64 = v43;
    if (v43)
    {
      v67 = v43;
      v68 = 0;
      v69 = v14;
      v70 = v17;
      v43 = v43;
      v71 = 0;
      do
      {
        v72 = *v69++;
        v71 = vadd_f32(v71, v72);
        v73 = *v70++;
        v68 = vadd_f32(v68, v73);
        --v43;
      }

      while (v43);
      v148 = v42;
      v74 = vdup_lane_s32(*&v42.f64[0], 0);
      v75 = vdiv_f32(v71, v74);
      v76 = vdiv_f32(v68, v74);
      v77 = 0.0;
      v78 = v14;
      v79 = v17;
      v80 = v67;
      v41 = 0.0;
      do
      {
        v81 = *v78++;
        v82 = vsub_f32(v81, v75);
        v41 = v41 + hypotf(v82.f32[0], v82.f32[1]);
        v83 = *v79++;
        v84 = vsub_f32(v83, v76);
        v77 = v77 + hypotf(v84.f32[0], v84.f32[1]);
        --v80;
      }

      while (v80);
      v85 = 0;
      v42 = v148;
    }

    else
    {
LABEL_24:
      v67 = 0;
      v35.f32[0] = 0.0 / *v42.f64;
      v76 = vdup_lane_s32(v35, 0);
      v85 = 1;
      v77 = 0.0;
      v75 = v76;
    }

    *v37.f64 = (*v42.f64 * 1.4142) / v41;
    v202 = 0.0;
    v201 = 0u;
    v200 = 0u;
    v199 = 0u;
    v198 = 0u;
    v197 = 0u;
    v196 = 0u;
    v195 = 0u;
    v194 = 0u;
    v193 = 0u;
    v192 = 0u;
    v191 = 0u;
    v190 = 0u;
    _S8 = (*v42.f64 * 1.4142) / v77;
    v189 = 0u;
    v188 = 0u;
    v187 = 0u;
    v186 = 0u;
    v185 = 0u;
    v184 = 0u;
    v183 = 0u;
    v182 = 0u;
    v36.n128_u64[0] = vmul_n_f32(v75, -*v37.f64);
    v155 = v36;
    *&v38.f64[0] = vmul_n_f32(v76, -_S8);
    v87 = v151;
    v146 = v37;
    v147 = v38;
    if (v85)
    {
      v88 = 0;
      v89 = 0;
      v90 = 0.0;
      _S1 = 0;
      v92 = 0.0;
      _S16 = 0;
      v94 = 0.0;
      _S2 = 0;
      v96 = 0.0;
      v97 = 0.0;
      v98 = 0.0;
      _S4 = 0;
      v100 = 0.0;
      _S22 = 0;
      v102 = 0.0;
      v103 = 0.0;
      _S24 = 0;
      v105 = 0.0;
      v106 = 0.0;
      v107 = 0.0;
    }

    else
    {
      v148 = v42;
      v154.n128_u32[0] = HIDWORD(v38.f64[0]);
      *&v153.f64[0] = vdup_lane_s32(*&v37.f64[0], 0);
      v88 = 0;
      v108 = 0.0;
      v109 = 0.0;
      v92 = 0.0;
      v100 = 0.0;
      v96 = 0.0;
      v105 = 0.0;
      v94 = 0.0;
      v103 = 0.0;
      v107 = 0.0;
      v102 = 0.0;
      v106 = 0.0;
      v90 = 0.0;
      v98 = 0.0;
      v97 = 0.0;
      v110 = 0;
      do
      {
        v111 = *v14++;
        _D10 = v111;
        v113 = *v17++;
        _V11.S[1] = HIDWORD(v113);
        _S12 = *v38.f64 + (_S8 * *&v113);
        __asm { FMLA            S9, S8, V11.S[1] }

        v98 = v98 - _S12;
        _D13 = vmla_f32(v155.n128_u64[0], _D10, *&v153.f64[0]);
        _D10.i32[0] = _D13.i32[1];
        v102 = v102 + _D13.f32[1];
        v107 = v107 + (_D13.f32[0] * _D13.f32[1]);
        __asm { FMLA            S16, S10, V13.S[1] }

        v103 = v103 - (_S12 * _D13.f32[0]);
        __asm { FMLS            S4, S12, V13.S[1] }

        _D10.f32[0] = vmuls_lane_f32(_D13.f32[1], _D13, 1);
        v118 = _S8;
        _D8 = vmul_n_f32(_D13, _D13.f32[0]);
        v105 = v105 - (_S12 * _D8.f32[0]);
        v96 = v96 - (_S9 * _D8.f32[0]);
        __asm
        {
          FMLS            S24, S12, V8.S[1]
          FMLS            S2, S9, V8.S[1]
          FMLS            S22, S12, V8.S[1]
        }

        v100 = v100 - (_D10.f32[0] * _S12);
        v92 = v92 - (_D10.f32[0] * _S9);
        v90 = v90 - _S9;
        v94 = v94 - (_S9 * _D13.f32[0]);
        __asm { FMLS            S1, S9, V13.S[1] }

        v109 = v109 + ((_S9 * _S9) + (_S12 * _S12));
        v106 = v106 + _D13.f32[0];
        v97 = v97 + (_D13.f32[0] * _D13.f32[0]);
        v110 = vadd_f32(v110, vmla_n_f32(vmul_n_f32(vmul_n_f32(_D8, _S9), _S9), vmul_n_f32(_D8, _S12), _S12));
        _S8 = v118;
        v108 = v108 + ((_S12 * (_D10.f32[0] * _S12)) + ((_D10.f32[0] * _S9) * _S9));
        v88 = vadd_f32(v88, vmla_n_f32(vmul_n_f32(vmul_n_f32(_D13, _S9), _S9), vmul_n_f32(_D13, _S12), _S12));
        --v67;
      }

      while (v67);
      *&v182 = __PAIR64__(LODWORD(v107), LODWORD(v97));
      *(&v184 + 1) = __PAIR64__(LODWORD(v102), _S16);
      *(&v188 + 2) = v98;
      *(&v195 + 1) = v90;
      LODWORD(v193) = _S1;
      *(&v182 + 2) = v106;
      *(&v183 + 1) = __PAIR64__(_S24, LODWORD(v105));
      *(&v192 + 3) = v92;
      *&v184 = v103;
      *(&v190 + 1) = v96;
      *(&v190 + 1) = __PAIR64__(LODWORD(v94), _S2);
      *&v186 = __PAIR64__(_S4, LODWORD(v100));
      HIDWORD(v185) = _S22;
      v202 = v109;
      *&v197 = v110;
      DWORD2(v197) = v88.i32[0];
      *(&v199 + 1) = __PAIR64__(v88.u32[1], LODWORD(v108));
      v89 = v110.i32[1];
      LODWORD(v42.f64[0]) = LODWORD(v148.f64[0]);
    }

    *(&v184 + 1) = v107;
    *(&v186 + 1) = __PAIR64__(LODWORD(v102), LODWORD(v106));
    *&v200 = __PAIR64__(_S4, LODWORD(v103));
    *(&v195 + 1) = __PAIR64__(_S22, LODWORD(v105));
    HIDWORD(v197) = _S24;
    *&v198 = __PAIR64__(_S4, LODWORD(v100));
    LODWORD(v187) = LODWORD(v42.f64[0]);
    *(&v200 + 1) = __PAIR64__(LODWORD(v94), LODWORD(v98));
    *&v196 = __PAIR64__(LODWORD(v96), LODWORD(v103));
    *(&v198 + 1) = __PAIR64__(LODWORD(v92), _S2);
    *(&v189 + 1) = __PAIR64__(LODWORD(v107), LODWORD(v97));
    *&v201 = __PAIR64__(LODWORD(v90), _S1);
    *(&v191 + 3) = v107;
    *&v190 = v106;
    *&v192 = __PAIR64__(LODWORD(v102), _S16);
    *(&v194 + 1) = __PAIR64__(LODWORD(v94), LODWORD(v42.f64[0]));
    *(&v196 + 1) = __PAIR64__(LODWORD(v94), _S2);
    *&v199 = __PAIR64__(v89, _S1);
    *&v194 = __PAIR64__(LODWORD(v102), LODWORD(v106));
    DWORD2(v192) = _S2;
    *&v188 = __PAIR64__(_S4, LODWORD(v103));
    LODWORD(v195) = _S1;
    *(&v201 + 1) = v88;
    qmemcpy(v181, "LIV", sizeof(v181));
    v180 = 9;
    v179 = 9;
    v178 = 1065353216;
    v177 = 1065353216;
    v176 = 1;
    v175 = 1;
    v174 = 794552063;
    v173 = 1;
    v164 = 9;
    v163 = 512;
    v157 = 0;
    v145 = &v158;
    v120 = ssyevx_NEWLAPACK();
    if (v157 || (v122.f32[0] = v170, v121.f32[0] = v171, _S0 = v172, v124 = v172 + (vmuls_lane_f32(v171, v155.n128_u64[0], 1) + (v155.n128_f32[0] * v170)), fabsf(v124) < 1.0e-10))
    {
      fig_log_get_emitter();
      v125 = 4294954513;
      LODWORD(v145) = -12783;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v145, v149, *&v146.f64[0], *&v146.f64[1], LODWORD(v147.f64[0]), *&v147.f64[1], *&v148.f64[0], LODWORD(v148.f64[1]));
    }

    else
    {
      v127 = 0;
      v128 = v155.n128_u64[0];
      _D21 = *&v147.f64[0];
      v130 = *v146.f64 / (_S8 * v124);
      v131 = 1.0 / (_S8 * v124);
      v132.f32[0] = v166;
      v133 = (v155.n128_f32[1] * v166) + (*&v165 * v155.n128_f32[0]);
      v134 = v167;
      v135 = *v146.f64 / v124;
      v136 = vmul_n_f32(vmls_lane_f32(__PAIR64__(v168, v165), *&v147.f64[0], v122, 0), v130);
      v87[1].f32[0] = v170 * v135;
      *v87 = v136;
      v132.i32[1] = v169;
      v87[3].f32[0] = v121.f32[0] * v135;
      v87[2] = vmul_n_f32(vmls_lane_f32(v132, _D21, v121, 0), v130);
      _S2 = -(v122.f32[0] * *&v128);
      _S1 = -(v121.f32[0] * *(&v128 + 1));
      v139.f32[0] = v131 * ((((v133 + v134) + (_S2 * _D21.f32[0])) + (_S1 * _D21.f32[0])) - (_D21.f32[0] * _S0));
      __asm
      {
        FMLA            S4, S2, V21.S[1]
        FMLA            S4, S1, V21.S[1]
        FMLS            S4, S0, V21.S[1]
      }

      v139.f32[1] = v131 * _S4;
      v87[5].i32[0] = 1065353216;
      v87[4] = v139;
      while (2)
      {
        v143 = 0;
        v144 = *v87[2 * v127].f32;
        do
        {
          v156 = v144;
          if ((*(&v156 & 0xFFFFFFFFFFFFFFF3 | (4 * (v143 & 3))) & 0x7FFFFFFFu) >= 0x7F800000)
          {
            sub_2957BE000(v120);
            v125 = 4294954513;
            goto LABEL_33;
          }

          ++v143;
        }

        while (v143 != 3);
        if (++v127 != 3)
        {
          continue;
        }

        break;
      }

      v125 = 0;
    }
  }

LABEL_33:

  return v125;
}

uint64_t idcComputeInverseDistortionPolynomial(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5)
{
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v8 = hypot(*(a2 + 16), *(a2 + 20));
  v9 = 0;
  v10 = v8 * a5;
  do
  {
    *(&v97 + v9) = *(a1 + 4 * v9);
    ++v9;
  }

  while (v9 != 7);
  v11 = 0;
  v12 = (a4 / 100.0 + 1.0) * (v10 * 0.5);
  v13 = a4 / (*&v97 + (*&v98 + (*&v99 + (*&v100 + (*&v101 + (*&v102 + *&v103 * v12) * v12) * v12) * v12) * v12) * v12);
  do
  {
    *(&v97 + v11) = v13 * *(&v97 + v11);
    v11 += 8;
  }

  while (v11 != 56);
  v14 = 0;
  memset(v104, 0, 512);
  v15 = vdupq_lane_s64(v103, 0);
  v16 = vdupq_lane_s64(v102, 0);
  v17 = vdupq_lane_s64(v101, 0);
  v18 = vdupq_lane_s64(v100, 0);
  v19 = 0x100000000;
  v20 = vdupq_n_s64(0x4058C00000000000uLL);
  v21 = vdupq_lane_s64(v99, 0);
  v22 = vdupq_n_s64(0x4059000000000000uLL);
  __asm { FMOV            V17.2D, #1.0 }

  v27 = vdupq_lane_s64(v98, 0);
  v28 = vdupq_lane_s64(v97, 0);
  do
  {
    v29.i64[0] = v19.u32[0];
    v29.i64[1] = v19.u32[1];
    v30 = vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v29), v12), v20);
    v31 = vdivq_f64(v30, vaddq_f64(vdivq_f64(vmlaq_f64(v28, v30, vmlaq_f64(v27, v30, vmlaq_f64(v21, v30, vmlaq_f64(v18, v30, vmlaq_f64(v17, v30, vmlaq_f64(v16, v30, v15)))))), v22), _Q17));
    v32 = &v104[v14];
    *v32 = v31;
    v32[50] = vbicq_s8(vmulq_f64(vdivq_f64(vsubq_f64(v31, v30), v30), v22), vceqzq_f64(v30));
    v19 = vadd_s32(v19, 0x200000002);
    ++v14;
  }

  while (v14 != 50);
  sub_2957B2098(v104, &v105, __src, &v113);
  v34 = v33;
  v35 = 0;
  v36 = 0;
  v116 = v105;
  v117 = v106;
  v118 = v107;
  v37 = 0.0001;
  while (2)
  {
    v93 = v36;
    v96 = v35;
    memcpy(__dst, __src, sizeof(__dst));
    v38 = 0;
    v110 = v113;
    v111 = v114;
    v112 = v115;
    do
    {
      __dst[v38] = (v37 + 1.0) * *&__src[v38 * 8];
      v38 += 7;
    }

    while (v38 != 42);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    memset(v119, 0, 24);
    do
    {
      v42 = 0;
      v43 = 0.0;
      v44 = __dst;
      do
      {
        if (*(v119 + v42) != 1)
        {
          for (i = 0; i != 6; ++i)
          {
            if (!*(v119 + i))
            {
              v46 = fabs(v44[i]);
              if (v46 >= v43)
              {
                v41 = i;
                v40 = v42;
                v43 = v46;
              }
            }
          }
        }

        ++v42;
        v44 += 6;
      }

      while (v42 != 6);
      ++*(v119 + v41);
      if (v40 == v41)
      {
        v47 = 6 * v41;
      }

      else
      {
        v48 = 0;
        v47 = 6 * v41;
        v49 = &__dst[6 * v40];
        v50 = &__dst[6 * v41];
        do
        {
          v51 = v49[v48];
          v49[v48] = v50[v48];
          v50[v48++] = v51;
        }

        while (v48 != 6);
        v52 = *(&v110 + v40);
        *(&v110 + v40) = *(&v110 + v41);
        *(&v110 + v41) = v52;
      }

      *(&v119[3] + v39) = v40;
      *(&v119[6] + v39) = v41;
      v53 = __dst[7 * v41];
      if (fabs(v53) < 1.0e-40)
      {
        fig_log_get_emitter();
        v76 = v83;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v83, v80, v83, a3, 0x3FB999999999999ALL, &v105, v93);
        fig_log_get_emitter();
        v75 = 4294954513;
        LODWORD(v78) = -12783;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v78, v76, v81, v84, v87, v89, v91, v94);
        fig_log_get_emitter();
        LODWORD(v79) = -12783;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v79, v76, v82, v85, v88, v90, v92, v95);
        return v75;
      }

      v54 = 0;
      __dst[7 * v41] = 1.0;
      v55 = &__dst[v47];
      v56 = 1.0 / v53;
      do
      {
        *&v55[v54] = vmulq_n_f64(*&v55[v54], v56);
        v54 += 2;
      }

      while (v54 != 6);
      v57 = 0;
      *(&v110 + v41) = v56 * *(&v110 + v41);
      v58 = __dst;
      v59 = &__dst[v41];
      do
      {
        if (v57 != v41)
        {
          v60 = 0;
          v61 = v59[6 * v57];
          v59[6 * v57] = 0.0;
          do
          {
            v58[v60] = v58[v60] - v55[v60] * v61;
            ++v60;
          }

          while (v60 != 6);
          *(&v110 + v57) = *(&v110 + v57) - *(&v110 + v41) * v61;
        }

        ++v57;
        v58 += 6;
      }

      while (v57 != 6);
      ++v39;
    }

    while (v39 != 6);
    v62 = 5;
    do
    {
      v63 = v62;
      v64 = *(&v119[3] + v62);
      v65 = *(&v119[6] + v63);
      if (v64 != v65)
      {
        v66 = 6;
        do
        {
          v67 = __dst[v64];
          __dst[v64] = __dst[v65];
          __dst[v65] = v67;
          v65 += 6;
          v64 += 6;
          --v66;
        }

        while (v66);
      }

      v62 = v63 - 1;
    }

    while (v63);
    do
    {
      *(&v116 + v63) = vaddq_f64(*(&v104[100] + v63), *(&v110 + v63));
      v63 += 16;
    }

    while (v63 != 48);
    sub_2957B2098(v104, &v116, __dst, &v110);
    v69 = vabdd_f64(v68, v34);
    if (v69 >= 1.00000001e-10 && v68 >= v34)
    {
      v36 = 0;
      v37 = v37 * 10.0;
      v72 = v96;
      goto LABEL_50;
    }

    v71 = v68;
    memcpy(__src, __dst, sizeof(__src));
    v113 = v110;
    v114 = v111;
    v115 = v112;
    v105 = v116;
    v106 = v117;
    v36 = v93;
    v72 = v96;
    if (v69 < 1.00000001e-10)
    {
      v36 = v93 + 1;
    }

    v107 = v118;
    if (v71 > 0.000000248015873 && v36 < 3)
    {
      v37 = v37 * 0.1;
      v34 = v71;
LABEL_50:
      v35 = v72 + 1;
      if (v35 != 20)
      {
        continue;
      }
    }

    break;
  }

  for (j = 0; j != 6; ++j)
  {
    v74 = *(&v105 + j);
    *(a3 + 4 * j) = v74;
  }

  return 0;
}

double *sub_2957B2098(double *result, double *a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = *result * *result;
  v27 = v5 * (v5 * v5);
  v28 = v5 * v5 * (v5 * v5);
  v29 = v5 * v5 * v27;
  v30 = v27 * v27;
  v6 = result[100] - (v5 * v5 * a2[1] + *a2 * v5 + a2[2] * v27 + a2[3] * v28 + a2[4] * v29 + a2[5] * (v27 * v27));
  v7 = 1;
  v8 = a3;
  do
  {
    v9 = 0;
    v10 = *(&v25 + v4);
    do
    {
      *(v8 + 8 * v9) = v10 * *(&v25 + v9);
      ++v9;
    }

    while (v7 != v9);
    *(a4 + 8 * v4++) = v6 * v10;
    ++v7;
    v8 += 48;
  }

  while (v4 != 6);
  v11 = v6 * v6;
  for (i = 1; i != 100; ++i)
  {
    v13 = 0;
    v25 = result[i] * result[i];
    v14 = v25;
    v26 = v14 * v14;
    v27 = v14 * (v14 * v14);
    v28 = v26 * v26;
    v29 = v14 * v14 * v27;
    v30 = v27 * v27;
    v15 = result[i + 100] - (v14 * v14 * a2[1] + *a2 * v14 + a2[2] * v27 + a2[3] * (v26 * v26) + a2[4] * v29 + a2[5] * (v27 * v27));
    v16 = a3;
    v17 = 1;
    do
    {
      v18 = 0;
      v19 = *(&v25 + v13);
      do
      {
        *(v16 + 8 * v18) = *(v16 + 8 * v18) + v19 * *(&v25 + v18);
        ++v18;
      }

      while (v17 != v18);
      *(a4 + 8 * v13) = *(a4 + 8 * v13) + v15 * v19;
      ++v13;
      ++v17;
      v16 += 48;
    }

    while (v13 != 6);
    v11 = v11 + v15 * v15;
  }

  v20 = a3 + 48;
  v21 = (a3 + 8);
  for (j = 1; j != 6; ++j)
  {
    v23 = 0;
    v24 = v21;
    do
    {
      *v24 = *(v20 + 8 * v23);
      v24 += 6;
      ++v23;
    }

    while (j != v23);
    v20 += 48;
    ++v21;
  }

  return result;
}

float32x2_t forwardDistort(int a1, int a2, float32x2_t *a3)
{
  v3 = vadd_f32(a3[2], a3[12]);
  v4.f32[0] = a1;
  v4.f32[1] = a2;
  v5 = vmla_f32(vneg_f32(v3), *a3, v4);
  v6 = vmul_f32(v5, v5);
  v7 = 1.0;
  if (a3[30].i8[2] == 1)
  {
    LODWORD(v7) = vmul_lane_f32(a3[10], a3[10], 1).u32[0];
  }

  v8 = (a3[13].f32[0] * (v6.f32[1] + (v5.f32[0] * v5.f32[0]))) / v7;
  if (v8 >= 1.0)
  {
    v10 = v8 * v8;
    v9 = ((((((a3[18].f32[0] + (a3[18].f32[1] * v8)) + (a3[19].f32[0] * (v8 * v8))) + (a3[19].f32[1] * (v8 * (v8 * v8)))) + (a3[20].f32[0] * (v10 * v10))) + (((v10 * v10) * a3[20].f32[1]) * v8)) + (((v10 * v10) * a3[21].f32[0]) * v10)) + (((v10 * v10) * a3[21].f32[1]) * (v8 * (v8 * v8)));
  }

  else
  {
    v9 = a3[18].f32[0] + ((a3[18].f32[1] + ((a3[19].f32[0] + ((a3[19].f32[1] + ((a3[20].f32[0] + ((a3[20].f32[1] + ((a3[21].f32[0] + (a3[21].f32[1] * v8)) * v8)) * v8)) * v8)) * v8)) * v8)) * v8);
  }

  return vdiv_f32(vmla_n_f32(v3, v5, 1.0 / ((v9 * 0.01) + 1.0)), *a3);
}

float32x2_t inverseDistort(int a1, int a2, float32x2_t *a3)
{
  v3 = vadd_f32(a3[2], a3[12]);
  v4.f32[0] = a1;
  v4.f32[1] = a2;
  v5 = vmla_f32(vneg_f32(v3), *a3, v4);
  v6 = vmul_f32(v5, v5);
  v7 = 1.0;
  if (a3[30].i8[2] == 1)
  {
    LODWORD(v7) = vmul_lane_f32(a3[10], a3[10], 1).u32[0];
  }

  v8 = (a3[13].f32[0] * (v6.f32[1] + (v5.f32[0] * v5.f32[0]))) / v7;
  if (v8 >= 1.0)
  {
    v10 = v8 * v8;
    v9 = ((((((a3[14].f32[0] + (a3[14].f32[1] * v8)) + (a3[15].f32[0] * (v8 * v8))) + (a3[15].f32[1] * (v8 * (v8 * v8)))) + (a3[16].f32[0] * (v10 * v10))) + (((v10 * v10) * a3[16].f32[1]) * v8)) + (((v10 * v10) * a3[17].f32[0]) * v10)) + (((v10 * v10) * a3[17].f32[1]) * (v8 * (v8 * v8)));
  }

  else
  {
    v9 = a3[14].f32[0] + ((a3[14].f32[1] + ((a3[15].f32[0] + ((a3[15].f32[1] + ((a3[16].f32[0] + ((a3[16].f32[1] + ((a3[17].f32[0] + (a3[17].f32[1] * v8)) * v8)) * v8)) * v8)) * v8)) * v8)) * v8);
  }

  return vdiv_f32(vmla_n_f32(v3, v5, 1.0 / ((v9 * 0.01) + 1.0)), *a3);
}

void sub_2957B5930(uint64_t a1)
{
  v2 = *(a1 + 120);
}

uint64_t sub_2957B5C3C()
{

  return fig_log_get_emitter();
}

double rectangleC1toC0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = a1;
  v6 = a2 + a4;
  v7 = a3 + a5;
  v8 = sub_2957B5CDC(a1, a2, a3);
  v9 = sub_2957B5CDC(v5, v6, v7);
  if (v8 >= v9)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

double sub_2957B5CDC(int a1, double result, double a3)
{
  v3 = 1.0 - a3;
  if (a1 <= 4)
  {
    if (a1 == 2)
    {
      return 1.0 - result;
    }

    else if (a1 == 3)
    {
      return 1.0 - result;
    }
  }

  else if (a1 > 6)
  {
    if (a1 == 7)
    {
      return 1.0 - v3;
    }

    else if (a1 == 8)
    {
      return 1.0 - v3;
    }
  }

  else
  {
    if (a1 == 6)
    {
      result = v3;
    }

    if (a1 == 5)
    {
      return v3;
    }
  }

  return result;
}

double rectangleC0toC1(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = a1;
  v6 = a2 + a4;
  v7 = a3 + a5;
  v8 = sub_2957B5E00(a1, a2, a3);
  v9 = sub_2957B5E00(v5, v6, v7);
  if (v8 >= v9)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

double sub_2957B5E00(int a1, double result, double a3)
{
  if (a1 <= 4)
  {
    if (a1 == 2)
    {
      return 1.0 - result;
    }

    else if (a1 == 3)
    {
      return 1.0 - result;
    }
  }

  else if (a1 > 6)
  {
    if (a1 == 7)
    {
      return 1.0 - a3;
    }

    else if (a1 == 8)
    {
      return a3;
    }
  }

  else
  {
    v3 = a3;
    v4 = (1.0 - v3);
    if (a1 != 6)
    {
      v4 = result;
    }

    if (a1 == 5)
    {
      return a3;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t utlIntToOrientation(int a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = (a1 - 1) >= 8;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v3 == 1)
  {
    *a2 = a1;
  }

  return v3;
}

uint64_t cubicRegression(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v6 = &v53 - v5;
  v7 = 0;
  if (v1 && v2)
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
    if (v3 < 1)
    {
      v13 = 0.0;
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
      v10 = v3;
      v11 = v1;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0;
      do
      {
        v15 = *v11++;
        v16.f32[0] = v15;
        v16.f32[1] = v15 * v15;
        v12 = v15 + v12;
        v17 = vmul_n_f32(v16, v15 * v15);
        v16.i32[1] = vdup_lane_s32(v17, 0).u32[0];
        v16.f32[0] = v15 * v15;
        v13 = v13 + 1.0;
        v9 = (v15 * v15) + v9;
        v8 = vadd_f32(v17, v8);
        v14 = vadd_f32(vmul_n_f32(v16, v17.f32[0]), v14);
        --v10;
      }

      while (v10);
      v57 = __PAIR64__(LODWORD(v9), LODWORD(v12));
      v58 = v8;
      v59 = v14;
    }

    v18 = 0;
    v56 = v13;
    v19 = &v56;
    do
    {
      v20 = *v19++;
      *(&v61 + v18) = v20;
      v18 += 16;
    }

    while (v18 != 64);
    v21 = (v61 * v66) - (v65 * v62);
    v22 = (v61 * v67) - (v65 * v63);
    v23 = (v61 * v68) - (v65 * v64);
    v24 = (v62 * v67) - (v66 * v63);
    v25 = (v62 * v68) - (v66 * v64);
    v26 = (v63 * v68) - (v67 * v64);
    v27 = (v71 * v76) - (v75 * v72);
    v28 = (v70 * v76) - (v74 * v72);
    v29 = (v70 * v75) - (v74 * v71);
    v30 = (v69 * v76) - (v73 * v72);
    v31 = (v69 * v75) - (v73 * v71);
    v32 = (v69 * v74) - (v73 * v70);
    if (fabsf((((((v21 * v27) - (v22 * v28)) + (v23 * v29)) + (v24 * v30)) - (v25 * v31)) + (v26 * v32)) < 0.000001)
    {
      return 0;
    }

    else
    {
      v33 = 0;
      v54 = (v28 * -v67) + (v66 * v27);
      v55 = (((((v21 * v27) - (v22 * v28)) + (v23 * v29)) + (v24 * v30)) - (v25 * v31)) + (v26 * v32);
      v60[0] = (v54 + (v68 * v29)) * (1.0 / v55);
      v60[1] = (((v63 * v28) - (v62 * v27)) - (v64 * v29)) * (1.0 / v55);
      v60[2] = (((v25 * -v75) + (v74 * v26)) + (v76 * v24)) * (1.0 / v55);
      v60[3] = (((v71 * v25) - (v70 * v26)) - (v72 * v24)) * (1.0 / v55);
      v60[4] = (((v67 * v30) + (-v65 * v27)) - (v68 * v31)) * (1.0 / v55);
      v60[5] = (((v61 * v27) - (v63 * v30)) + (v64 * v31)) * (1.0 / v55);
      v60[6] = (((v23 * v75) + (-v73 * v26)) - (v76 * v22)) * (1.0 / v55);
      v60[7] = (((v69 * v26) - (v71 * v23)) + (v72 * v22)) * (1.0 / v55);
      v60[8] = (((v30 * -v66) + (v65 * v28)) + (v68 * v32)) * (1.0 / v55);
      v60[9] = (((v62 * v30) - (v61 * v28)) - (v64 * v32)) * (1.0 / v55);
      v60[10] = (((v23 * -v74) + (v73 * v25)) + (v76 * v21)) * (1.0 / v55);
      v60[11] = (((v23 * v70) - (v69 * v25)) - (v72 * v21)) * (1.0 / v55);
      v60[12] = (((v66 * v31) + (-v65 * v29)) + (-v67 * v32)) * (1.0 / v55);
      v60[13] = (((v61 * v29) - (v62 * v31)) + (v63 * v32)) * (1.0 / v55);
      v60[14] = (((v22 * v74) + (-v73 * v24)) + (-v75 * v21)) * (1.0 / v55);
      v60[15] = (((v69 * v24) - (v70 * v22)) + (v71 * v21)) * (1.0 / v55);
      v34 = v6;
      do
      {
        if (v3 >= 1)
        {
          v35 = &v60[4 * v33];
          v36 = *v35;
          v37 = v35[1];
          v38 = v35[2];
          v39 = v35[3];
          v40 = v3;
          v41 = v1;
          v42 = v34;
          do
          {
            v43 = *v41++;
            *v42++ = ((v36 + (v37 * v43)) + (v38 * (v43 * v43))) + (v39 * (v43 * (v43 * v43)));
            --v40;
          }

          while (v40);
        }

        ++v33;
        v34 += v3;
      }

      while (v33 != 4);
      for (i = 0; i != 4; ++i)
      {
        v45 = 0.0;
        if (v3 >= 1)
        {
          v46 = v3;
          v47 = v2;
          v48 = v6;
          do
          {
            v49 = *v48++;
            v50 = v49;
            v51 = *v47++;
            v45 = v45 + (v50 * v51);
            --v46;
          }

          while (v46);
        }

        *(v4 + 4 * i) = v45;
        v6 += v3;
      }

      return 1;
    }
  }

  return v7;
}

void sub_2957B89A0(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_2957B89FC(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void sub_2957B8FD4(uint64_t a1)
{
  v7 = [MEMORY[0x29EDBB7C8] matrixDescriptorWithRows:216 columns:216 rowBytes:864 dataType:268435488];
  if (v7)
  {
    v2 = objc_alloc(MEMORY[0x29EDBB7C0]);
    v3 = [*(*(a1 + 32) + 8) device];
    v4 = [v2 initWithDevice:v3 descriptor:v7];

    if (v4)
    {
      v5 = [*(*(a1 + 32) + 8) commandQueue];
      v6 = [v5 commandBuffer];

      if (v6)
      {
        [*(*(a1 + 32) + 296) encodeToCommandBuffer:v6 sourceMatrix:v4 resultMatrix:v4 status:0];
        [v6 commit];
      }

      else
      {
        sub_2957C3288(a1, v4);
      }
    }

    else
    {
      sub_2957C3320(a1);
    }
  }

  else
  {
    sub_2957C33A0(a1);
  }
}

void *sub_2957BA50C(uint64_t a1, void *a2)
{
  result = [a2 status];
  *(*(a1 + 32) + 8) = result;
  return result;
}

void *sub_2957BA53C(uint64_t a1, void *a2)
{
  result = [a2 status];
  *(*(a1 + 32) + 12) = result;
  return result;
}

void *sub_2957BA56C(uint64_t a1, void *a2)
{
  result = [a2 status];
  *(*(a1 + 32) + 16) = result;
  return result;
}

void *sub_2957BA59C(uint64_t a1, void *a2)
{
  result = [a2 status];
  *(*(a1 + 32) + 20) = result;
  return result;
}

void sub_2957BDF58(uint64_t a1)
{
  v2 = *(a1 + 24);
}

void sub_2957BDFA4(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t sub_2957BDFE8()
{

  return [v0 translateError:v1];
}

void sub_2957BEB54(const char *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

uint64_t sub_2957BFE30(int a1, _DWORD *a2)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  v5 = a1;
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
  *a2 = -12780;
  return result;
}

uint64_t sub_2957BFEC0(int a1, _DWORD *a2)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  v5 = a1;
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
  *a2 = -12780;
  return result;
}

uint64_t sub_2957C05EC(_DWORD *a1)
{
  sub_2957B5C3C();
  sub_2957B5C04();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  sub_2957B5C3C();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sub_2957C069C(_DWORD *a1)
{
  sub_2957B5C3C();
  sub_2957B5C04();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  sub_2957B5C3C();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sub_2957C074C(_DWORD *a1)
{
  sub_2957B5C3C();
  sub_2957B5C04();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  sub_2957B5C3C();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

void sub_2957C0B44(int a1, void *a2, const char *a3)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  v5 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, a3, v10, v11, v12, v13);
}

void sub_2957C0BEC(const char *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_2957C2564(int a1, void *a2, void *a3)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  v6 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, vars0, vars8);
}

void sub_2957C25F8(int a1, void *a2, void *a3, void *a4)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  v8 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_2957C2970(const char *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_2957C2A00(const char *a1)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v1, v2, v3, a1, v6, v7, vars0, vars8);
}

void sub_2957C3288(uint64_t a1, const char *a2)
{
  fig_log_get_emitter();
  sub_2957B1984();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, a2, v7, v8, vars0, vars8);
  sub_2957BAC18();
}

void sub_2957C3608()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v2;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

void sub_2957C3694()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v2;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

void sub_2957C3720()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v2;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

void sub_2957C37AC()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v2;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

void sub_2957C3838()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v2;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

void *sub_2957C4D24()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C4DB0()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C4E3C()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

uint64_t sub_2957C4FB8(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  sub_2957B1984();
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v10, v11, v12, v13, v14, v15, v16);
  *a3 = *a2;
  *a4 = *(a1 + 1092);
  return result;
}

void *sub_2957C5148()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C524C()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C52D8()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C5364()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void sub_2957C546C(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  fig_log_get_emitter();
  sub_2957B5BDC();
  v8 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v9, v10, v11, v12, v13, v14, v15);
  *a4 = [a2 translateError:a1];
}

void *sub_2957C5944()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C59D0()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C677C()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C6808()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

void *sub_2957C6894()
{
  sub_2957BAC08();
  fig_log_get_emitter();
  sub_2957B5BDC();
  v3 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
  result = sub_2957BDFE8();
  *v0 = result;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59B60](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2A1C76640](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}