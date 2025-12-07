uint64_t sweepBox_HeightFieldGeom(float32x2_t *a1, float32x2_t *a2, double a3, float a4, double a5, double a6, double a7, uint64_t a8, float *a9, uint64_t a10, float32x2_t *a11, uint64_t a12, __int16 *a13)
{
  v15 = a11;
  v18 = *&a3;
  v19 = a1;
  v20.i32[0] = *(a10 + 48);
  v21 = *(a10 + 52);
  LODWORD(a7) = *(a10 + 56);
  v22 = (((fabsf(*(a10 + 12)) * v21) + (fabsf(*a10) * v20.f32[0])) + (fabsf(*(a10 + 24)) * *&a7)) + a4;
  v23 = (((fabsf(*(a10 + 16)) * v21) + (fabsf(*(a10 + 4)) * v20.f32[0])) + (fabsf(*(a10 + 28)) * *&a7)) + a4;
  *&a3 = (((fabsf(*(a10 + 20)) * v21) + (fabsf(*(a10 + 8)) * v20.f32[0])) + (fabsf(*(a10 + 32)) * *&a7)) + a4;
  v24 = a9[4] * -2.0;
  *v13.i32 = a9[5] * -2.0;
  v25 = a9[6] * -2.0;
  v26 = a9[2];
  v27 = a9[3];
  v28 = (v27 * v27) + -0.5;
  v29 = *a9;
  v30 = a9[1];
  v31 = ((*v13.i32 * v30) + (*a9 * v24)) + (v26 * v25);
  *&v32 = ((v24 * v28) - (((v30 * v25) - (v26 * *v13.i32)) * v27)) + (*a9 * v31);
  *&_Q22 = -*a9;
  *&v34 = ((*v13.i32 * v28) - (((v26 * v24) - (*a9 * v25)) * v27)) + (v30 * v31);
  *(&_Q22 + 1) = -v30;
  *(&_Q22 + 2) = -v26;
  *(&_Q22 + 3) = v27;
  *v13.i32 = ((v25 * v28) - (((*a9 * *v13.i32) - (v30 * v24)) * v27)) + (v26 * v31);
  *&v35 = __PAIR64__(v34, v32);
  *(&v35 + 1) = v13.u32[0];
  v254[1] = v35;
  LODWORD(v35) = a11->i32[0];
  v36 = a11->f32[1];
  v37 = a11[1].f32[0];
  v38 = (a11->f32[0] * v18) + (a11->f32[0] * v18);
  v39 = (v36 * v18) + (v36 * v18);
  v40 = (v37 * v18) + (v37 * v18);
  v41 = (-(v30 * v39) - (v29 * v38)) - (v26 * v40);
  *&v42 = __PAIR64__(LODWORD(v21), v20.u32[0]);
  *(&v42 + 1) = LODWORD(a7);
  v251 = 3;
  v252 = 0;
  v247[0] = 0;
  v247[1] = 0;
  v253 = v42;
  v254[0] = _Q22;
  v20.f32[1] = v21;
  v43 = vpmin_f32(vdup_lane_s32(*&a7, 0), v20);
  v43.f32[0] = vpmin_f32(v43, v43).f32[0];
  v248 = 0.15 * v43.f32[0];
  v249 = 0.05 * v43.f32[0];
  v250 = 0.05 * v43.f32[0];
  *(a12 + 48) = 2139095039;
  v245 = a1[1];
  v246 = a1;
  v44 = a1[3].f32[0];
  __asm { FMOV            V4.2S, #1.0 }

  v243 = vrev64_s32(vdiv_f32(_D4, a1[2]));
  v244 = 1.0 / v44;
  v50 = *a13;
  v229[1] = &v243;
  v230 = v50;
  v231 = 0;
  v232 = (a1[3].i8[4] & 2 | v50 & 0x80) != 0;
  v233 = (v50 & 0x40) != 0;
  v229[0] = &unk_1F5D221E8;
  v234 = v254;
  v235 = a2;
  v236 = v247;
  v238 = ((v27 * ((v26 * v39) - (v30 * v40))) + (v38 * v28)) - (v29 * v41);
  v239 = ((v27 * ((v29 * v40) - (v26 * v38))) + (v39 * v28)) - (v30 * v41);
  v240 = ((v27 * ((v30 * v38) - (v29 * v39))) + (v40 * v28)) - (v26 * v41);
  v241 = a12;
  v242 = a4;
  v51 = vneg_f32(0x80000000800000);
  v237 = v51;
  *(a12 + 16) = -1;
  *&v42 = a2[3].f32[0] * -2.0;
  v51.i32[0] = a2[1].i32[0];
  v13.i32[0] = a2[1].i32[1];
  v52 = (*v13.i32 * *v13.i32) + -0.5;
  _S26 = *(a10 + 44) + *(a10 + 44);
  *&_Q22 = *&v35 + *&v35;
  _S21 = v36 + v36;
  _S19 = v37 + v37;
  v56 = vdup_lane_s32(v13, 0);
  *&v35 = a2[2];
  v57 = vmul_f32(*&v35, 0xC0000000C0000000);
  _D20 = *a2;
  LODWORD(v35) = HIDWORD(*a2);
  v59 = (vmuls_lane_f32(*&v57.i32[1], *a2, 1) + (COERCE_FLOAT(*a2) * *v57.i32)) + (*v51.i32 * *&v42);
  _D23 = vzip1_s32(v51, *a2);
  v61.i32[0] = vdup_lane_s32(v57, 1).u32[0];
  v61.f32[1] = *&v42;
  v62 = vneg_f32(_D23);
  _D10.i32[0] = vdup_lane_s32(*a2, 1).u32[0];
  _D10.i32[1] = v51.i32[0];
  v64 = vneg_f32(vmla_f32(vmul_f32(v61, v62), vext_s8(v61, v57, 4uLL), _D10));
  v65 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v64, *v13.i32), v57, v52), *a2, v59);
  *v64.i32 = -*&v35;
  *v57.i32 = ((*&v42 * v52) - (((-*&v35 * *v57.i32) + (COERCE_FLOAT(*a2) * *&v57.i32[1])) * *v13.i32)) + (*v51.i32 * v59);
  _D29 = vadd_f32(*(a10 + 36), *(a10 + 36));
  _S30 = _D29.i32[1];
  __asm
  {
    FMLS            S10, S29, V23.S[1]
    FMLS            S10, S26, V23.S[0]
  }

  v68.i32[0] = vdup_lane_s32(_D29, 1).u32[0];
  v68.f32[1] = _S26;
  v69 = vdup_lane_s32(v62, 0);
  v69.f32[0] = -*&v35;
  v70 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vmla_f32(vmul_f32(_D23, v68), vext_s8(v68, _D29, 4uLL), v69), *v13.i32), _D29, v52), vext_s8(v62, v69, 4uLL), _D10.f32[0]);
  __asm
  {
    FMLS            S29, S30, V23.S[1]
    FMLS            S26, S10, V23.S[0]
  }

  v72 = *v57.i32 + _S26;
  v227 = vadd_f32(v65, v70);
  v228 = v72;
  __asm
  {
    FMLS            S26, S22, V23.S[1]
    FMLS            S26, S19, V23.S[0]
    FMLS            S24, S19, V20.S[1]
    FMLS            S11, S26, V23.S[1]
    FMLS            S24, S22, V23.S[0]
    FMLS            S13, S26, V20.S[1]
    FMLS            S22, S21, V23.S[1]
    FMLS            S12, S26, V23.S[0]
  }

  v225 = _S11;
  v226 = __PAIR64__(LODWORD(_S12), LODWORD(_S13));
  *v13.i32 = *&v62.i32[1] - *&_D20;
  v80 = vdup_lane_s32(v13, 0);
  *&v35 = -*&v35 - *&v35;
  *v51.i32 = *v62.i32 - *v51.i32;
  *&_Q22 = vmuls_lane_f32(*&v62.i32[1] - *&_D20, v62, 1);
  v81 = vmul_n_f32(vdup_lane_s32(v64, 0), *&v35);
  v82 = vmul_n_f32(vdup_lane_s32(v51, 0), *v62.i32);
  v83 = vmul_n_f32(v80, *v64.i32);
  v84 = vmul_n_f32(v80, *v62.i32);
  v85 = vmul_n_f32(v56, *&v62.i32[1] - *&_D20);
  v86 = vmul_n_f32(vdup_lane_s32(*&v35, 0), *v62.i32);
  *&v35 = vmul_n_f32(v56, *&v35);
  v87 = vmul_n_f32(v56, *v51.i32);
  v88 = vsub_f32(_D4, vdup_lane_s32(*&_Q22, 0));
  *&_Q22 = vsub_f32(v88, v82);
  v88.f32[0] = vsub_f32(v88, v81).f32[0];
  v43.f32[0] = (1.0 - v81.f32[1]) - v82.f32[1];
  v89 = vdup_lane_s32(vadd_f32(v83, v87), 0);
  v89.i32[0] = v43.i32[0];
  v90 = vadd_f32(vabs_f32(vmul_n_f32(vext_s8(vadd_f32(v84, *&v35), vsub_f32(v86, v85), 4uLL), *&a3)), vadd_f32(vabs_f32(vmul_n_f32(v89, v22)), vabs_f32(vmul_n_f32(vext_s8(vsub_f32(v83, v87), *&_Q22, 4uLL), v23))));
  *&a3 = fabsf(*&a3 * v88.f32[0]) + (fabsf(v22 * vsub_f32(v84, *&v35).f32[0]) + fabsf(v23 * vadd_f32(v85, v86).f32[0]));
  v219 = v227;
  *&a3 = ((v72 + *&a3) + (*&a3 - v72)) * 0.5;
  v223 = COERCE_DOUBLE(vmul_f32(vadd_f32(vadd_f32(v90, v227), vsub_f32(v90, v227)), 0x3F0000003F000000));
  v224 = LODWORD(a3);
  HeightFieldTraceSegmentSweepHelper::HeightFieldTraceSegmentSweepHelper(v220, &v243, &v223, a3, v223, COERCE_DOUBLE(COERCE_UNSIGNED_INT(0.5) | 0x3F00000000000000));
  v91 = v220[0];
  v92 = v220[1];
  v273[0] = 0;
  if (physx::Gu::intersectRayAABB2(&v221, &v222, &v227, &v225, v273 + 1, v273, v18))
  {
    v93 = 0;
    v94 = v219.f32[1];
    v95 = *(v91 + 16);
    v255[0] = 0;
    v256 = v91;
    v257 = v95;
    v272 = 0;
    v96 = (_S11 * v18) + v219.f32[0];
    v97 = (_S13 * v18) + v219.f32[1];
    if (v97 >= v219.f32[1])
    {
      v98 = v219.f32[1];
    }

    else
    {
      v98 = (_S13 * v18) + v219.f32[1];
    }

    v99 = *v92;
    v100 = v92[1];
    v101 = v98 - v100;
    if (v97 > v219.f32[1])
    {
      v94 = (_S13 * v18) + v219.f32[1];
    }

    v102 = v94 + v100;
    v103 = *v91;
    v104 = *(v91 + 4);
    v261 = v101 * v104;
    v262 = v102 * v104;
    if (v96 >= v219.f32[0])
    {
      v105 = v219.f32[0];
    }

    else
    {
      v105 = (_S11 * v18) + v219.f32[0];
    }

    v106 = v103 * (v105 - v99);
    v107 = *(v95 + 56);
    if (v106 >= 0.0)
    {
      v93 = v107 - 2;
      if (v106 <= (v107 - 2))
      {
        v93 = vcvtms_u32_f32(v106);
      }
    }

    v108 = (_S12 * v18) + v72;
    v263 = v93;
    if (v96 <= v219.f32[0])
    {
      v96 = v219.f32[0];
    }

    v109 = v103 * (v96 + v99);
    if (v109 >= 0.0)
    {
      v110 = v107 - 1;
      if (v109 <= (v107 - 1))
      {
        v110 = vcvtps_u32_f32(v109);
      }
    }

    else
    {
      v110 = 0;
    }

    v264 = v110;
    if (v108 >= v72)
    {
      v111 = v72;
    }

    else
    {
      v111 = (_S12 * v18) + v72;
    }

    v112 = v92[2];
    v113 = *(v91 + 8);
    v114 = v113 * (v111 - v112);
    v115 = *(v95 + 60);
    if (v114 >= 0.0)
    {
      v116 = v115 - 2;
      if (v114 <= (v115 - 2))
      {
        v116 = vcvtms_u32_f32(v114);
      }
    }

    else
    {
      v116 = 0;
    }

    v117 = v219.f32[0] + (_S11 * *(v273 + 1));
    v265 = v116;
    if (v108 <= v72)
    {
      v108 = v72;
    }

    v118 = v113 * (v108 + v112);
    v119 = v115 - 1;
    if (v118 >= 0.0)
    {
      v120 = v115 - 1;
      if (v118 <= v119)
      {
        v120 = vcvtps_u32_f32(v118);
      }
    }

    else
    {
      v120 = 0;
    }

    v266 = v120;
    v121 = v99 * v103;
    v122 = ceilf(v99 * v103);
    v123 = v112 * v113;
    v124 = ceilf(v112 * v113);
    v259 = vcvtps_s32_f32(v121) + 1;
    v260 = vcvtps_s32_f32(v123) + 1;
    v125 = v117 * v103;
    v126 = 0.0000001 - v122;
    if ((v117 * v103) > (0.0000001 - v122))
    {
      v126 = v117 * v103;
    }

    if (v126 >= (v122 + ((v107 - 1) * 1.0)))
    {
      v127 = v122 + ((v107 - 1) * 1.0);
    }

    else
    {
      v127 = v126;
    }

    v128 = (v72 + (_S12 * *(v273 + 1))) * v113;
    v129 = 0.0000001 - v124;
    if (v128 > (0.0000001 - v124))
    {
      v129 = (v72 + (_S12 * *(v273 + 1))) * v113;
    }

    v130 = v124 + (v119 * 1.0);
    if (v129 < v130)
    {
      v130 = v129;
    }

    v131 = (v219.f32[0] + (_S11 * *v273)) * v103;
    v132 = (v72 + (_S12 * *v273)) * v113;
    if ((v131 - v125) < 0.0)
    {
      v133 = -1.0;
    }

    else
    {
      v133 = 1.0;
    }

    if ((v132 - v128) < 0.0)
    {
      v134 = -1.0;
    }

    else
    {
      v134 = 1.0;
    }

    if (vabds_f32(v131, v125) >= 1.0e-10)
    {
      v135 = v131 - v125;
    }

    else
    {
      v135 = v133 * 1.0e-10;
    }

    if (vabds_f32(v132, v128) >= 1.0e-10)
    {
      v136 = v132 - v128;
    }

    else
    {
      v136 = v134 * 1.0e-10;
    }

    v137 = floorf(v127);
    v138 = ceilf(v127);
    v139 = floorf(v130);
    v140 = ceilf(v130);
    if (v136 <= 0.0)
    {
      v141 = v140;
    }

    else
    {
      v141 = v139;
    }

    if (v135 <= 0.0)
    {
      v142 = v138;
    }

    else
    {
      v142 = v137;
    }

    if (v135 <= 0.0)
    {
      if (v137 == v127)
      {
        v143 = v137 + -1.0;
      }

      else
      {
        v143 = v137;
      }
    }

    else if (v138 == v127)
    {
      v143 = v138 + 1.0;
    }

    else
    {
      v143 = v138;
    }

    if (v136 <= 0.0)
    {
      if (v139 == v130)
      {
        v144 = v139 + -1.0;
      }

      else
      {
        v144 = v139;
      }
    }

    else if (v140 == v130)
    {
      v144 = v140 + 1.0;
    }

    else
    {
      v144 = v140;
    }

    v206 = v19;
    v145 = (v143 - v125) / v135;
    v146 = (v144 - v128) / v136;
    if (v145 < 0.0)
    {
      v145 = fabsf(0.0000001 / v135);
    }

    v207 = v15;
    v147 = v142;
    v148 = v141;
    v216 = v134;
    v217 = v133;
    if (v146 < 0.0)
    {
      v146 = fabsf(0.0000001 / v136);
    }

    v149 = 1.0 / fabsf(v135);
    v150 = fabsf(v136);
    if (v217 >= 1)
    {
      v151 = 0;
    }

    else
    {
      v151 = -1;
    }

    if (v216 >= 1)
    {
      v152 = 0;
    }

    else
    {
      v152 = -1;
    }

    v214 = v152;
    v215 = v115;
    v213 = 0.0 - v124;
    v211 = v149;
    v212 = v124 + v115;
    v153 = 0.0 - v122;
    v154 = v122 + v107;
    v210 = 1.0 / v150;
    while (1)
    {
      if (v145 >= v146)
      {
        v155 = v146;
      }

      else
      {
        v155 = v145;
      }

      if ((v255[0] & 1) == 0)
      {
        v255[0] = 1;
        v258 = v229;
        v267 = v215;
        v268 = v151;
        v271[0] = xmmword_1E3116B20;
        v269 = v214;
        LODWORD(v270) = v147 - v259;
        v159 = v259 + v147;
        DWORD1(v270) = v259 + v147;
        DWORD2(v270) = v148 - v260;
        v160 = v260 + v148;
        HIDWORD(v270) = v260 + v148;
        if ((v147 - v259) <= (v259 + v147))
        {
          v161 = v147 - v259 + v151;
          v162 = v214;
          v163 = v151;
          do
          {
            if (v161 >= v263)
            {
              if (v161 >= v264)
              {
                break;
              }

              if (SDWORD2(v270) <= v160)
              {
                v164 = DWORD2(v270) + v162;
                do
                {
                  if (v164 >= v265)
                  {
                    if (v164 >= v266)
                    {
                      break;
                    }

                    if (!physx::Gu::HeightFieldTraceUtil::OverlapTraceSegment<CapsuleTraceSegmentReport>::testVertexIndex(v255, v164 + v161 * v267))
                    {
                      goto LABEL_152;
                    }

                    v160 = HIDWORD(v270);
                    v162 = v269;
                  }

                  v166 = v164++ < v160 + v162;
                }

                while (v166);
                v159 = DWORD1(v270);
                v163 = v268;
              }
            }

            v166 = v161++ < (v159 + v163);
          }

          while (v166);
          if (v272)
          {
            if (!(*(*v258 + 16))(v258))
            {
              goto LABEL_152;
            }

            v272 = 0;
          }
        }

        goto LABEL_118;
      }

      v156 = v147 - v259;
      LODWORD(v271[0]) = v147 - v259;
      DWORD1(v271[0]) = v259 + v147;
      v157 = v148 - v260;
      DWORD2(v271[0]) = v148 - v260;
      HIDWORD(v271[0]) = v260 + v148;
      if (v147 - v259 != v270)
      {
        break;
      }

      if (v157 != DWORD2(v270))
      {
        if (v157 >= SDWORD2(v270))
        {
          v157 = v260 + v148;
        }

        v209 = v157;
        v218 = v147 - v259;
        v158 = 4;
LABEL_112:
        LODWORD(v92) = *(v271 + v158);
        v208 = v147 - v259 == v270;
      }

      if (v218 <= v92)
      {
        if (v208)
        {
          v169 = v269 + v209;
          if (v269 + v209 >= v265 && v169 < v266)
          {
            v170 = v268;
            v171 = v268 + v218;
            do
            {
              if (v171 >= v264)
              {
                break;
              }

              if (v171 >= v263)
              {
                if (!physx::Gu::HeightFieldTraceUtil::OverlapTraceSegment<CapsuleTraceSegmentReport>::testVertexIndex(v255, v169 + v267 * v171))
                {
                  goto LABEL_152;
                }

                v170 = v268;
              }

              v166 = v171++ < v92 + v170;
            }

            while (v166);
          }
        }

        else
        {
          v172 = v268 + v209;
          if (v268 + v209 >= v263 && v172 < v264)
          {
            v173 = v269;
            v174 = v269 + v218;
            do
            {
              if (v174 >= v266)
              {
                break;
              }

              if (v174 >= v265)
              {
                if (!physx::Gu::HeightFieldTraceUtil::OverlapTraceSegment<CapsuleTraceSegmentReport>::testVertexIndex(v255, v174 + v267 * v172))
                {
                  goto LABEL_152;
                }

                v173 = v269;
              }

              v166 = v174++ < v92 + v173;
            }

            while (v166);
          }
        }
      }

      if (v272)
      {
        if (!(*(*v258 + 16))(v258))
        {
          goto LABEL_152;
        }

        v272 = 0;
      }

      v270 = v271[0];
LABEL_118:
      if (v145 >= v146)
      {
        v148 += v216;
        v167 = (v148 + v216);
        if (v213 > v167 || v212 <= v167)
        {
LABEL_152:
          v19 = v206;
          v15 = v207;
          goto LABEL_153;
        }

        v146 = v210 + v146;
      }

      else
      {
        v147 += v217;
        v165 = (v147 + v217);
        v166 = v153 <= v165 && v154 > v165;
        if (!v166)
        {
          goto LABEL_152;
        }

        v145 = v211 + v145;
      }

      if (v155 >= 1.0001)
      {
        goto LABEL_152;
      }
    }

    if (v156 >= v270)
    {
      v156 = v259 + v147;
    }

    v209 = v156;
    v218 = v148 - v260;
    v158 = 12;
    goto LABEL_112;
  }

LABEL_153:
  v175 = v231;
  if (v231 == 1)
  {
    if (HIBYTE(v231) == 1)
    {
      *(a12 + 20) = 1026;
      if ((v230 & 0x200) == 0 || (physx::Gu::computeBox_HeightFieldMTD(v19) & 1) == 0)
      {
        *(a12 + 48) = 0;
        v204 = -v15[1].f32[0];
        *(a12 + 36) = vneg_f32(*v15);
        *(a12 + 44) = v204;
        return v175;
      }

      v176 = *(a12 + 20) | 1;
    }

    else
    {
      v177 = *(a12 + 36);
      v178 = *(a12 + 40);
      v179 = *(a12 + 44);
      v180 = ((v178 * v178) + (v177 * v177)) + (v179 * v179);
      v181 = 0.0;
      v182 = 0.0;
      v183 = 0.0;
      if (v180 > 0.0)
      {
        v184 = 1.0 / sqrtf(v180);
        v181 = v177 * v184;
        v182 = v178 * v184;
        v183 = v179 * v184;
      }

      if ((((v182 * v239) + (v181 * v238)) + (v183 * v240)) > 0.0)
      {
        v181 = -v181;
        v182 = -v182;
        v183 = -v183;
      }

      *(a12 + 48) = *(a12 + 48) * v18;
      v185 = v181 + v181;
      v186 = v182 + v182;
      v187 = v183 + v183;
      v189 = a9[2];
      v188 = a9[3];
      v190 = (v188 * v188) + -0.5;
      v191 = *a9;
      v192 = a9[1];
      v193 = ((v192 * v186) + (*a9 * v185)) + (v189 * v187);
      v194 = ((v188 * ((v192 * v187) - (v189 * v186))) + (v185 * v190)) + (*a9 * v193);
      v195 = ((v188 * ((v189 * v185) - (*a9 * v187))) + (v186 * v190)) + (v192 * v193);
      v196 = ((v188 * ((*a9 * v186) - (v192 * v185))) + (v187 * v190)) + (v189 * v193);
      *(a12 + 40) = v195;
      *(a12 + 44) = v196;
      v197 = *(a12 + 24) + *(a12 + 24);
      v198 = *(a12 + 28) + *(a12 + 28);
      v199 = *(a12 + 32) + *(a12 + 32);
      v200 = ((v192 * v198) + (v191 * v197)) + (v189 * v199);
      v201 = a9[6] + (((v188 * ((v191 * v198) - (v192 * v197))) + (v199 * v190)) + (v189 * v200));
      *(a12 + 36) = v194;
      v202 = ((v188 * ((v192 * v199) - (v189 * v198))) + (v197 * v190)) + (v191 * v200);
      v203 = a9[5] + (((v188 * ((v189 * v197) - (v191 * v199))) + (v198 * v190)) + (v192 * v200));
      *(a12 + 24) = a9[4] + v202;
      *(a12 + 28) = v203;
      *(a12 + 32) = v201;
      v176 = 1027;
    }

    *(a12 + 20) = v176;
  }

  return v175;
}

float physx::Gu::HeightField::getHeight(physx::Gu::HeightField *this, float a2, float a3)
{
  v3 = fmaxf(a2, 0.0);
  v4 = fmaxf(a3, 0.0);
  v5 = 1.0 - ((v4 + 1.0) * 0.000001);
  v6 = *(this + 17);
  if (v3 >= ((1.0 - ((v3 + 1.0) * 0.000001)) + *(this + 16)))
  {
    v3 = (1.0 - ((v3 + 1.0) * 0.000001)) + *(this + 16);
  }

  if (v4 >= (v5 + v6))
  {
    v4 = v5 + v6;
  }

  v7 = floorf(v3);
  v8 = v3 - v7;
  v9 = floorf(v4);
  v10 = v4 - v9;
  v11 = (v9 + (v7 * *(this + 18)));
  v12 = *(this + 10);
  v13 = (v12 + 4 * v11);
  if ((v13[1] & 0x80000000) == 0)
  {
    v14 = *(v12 + 4 * (*(this + 15) + v11));
    v15 = *(v12 + 4 * (v11 + 1));
    if ((v8 + v10) >= 1.0)
    {
      v22 = *(v12 + 4 * (*(this + 15) + v11 + 1));
      v17 = v22 + ((1.0 - v10) * (v14 - v22));
      v8 = 1.0 - v8;
      v18 = v15 - v22;
    }

    else
    {
      v16 = *v13;
      v17 = v16 + (v10 * (v15 - v16));
      v18 = v14 - v16;
    }

    return v17 + (v8 * v18);
  }

  v19 = *v13;
  v20 = *(v12 + 4 * (*(this + 15) + v11 + 1));
  if (v10 > v8)
  {
    v21 = *(v12 + 4 * (v11 + 1));
    v17 = v19 + (v10 * (v21 - v19));
    v18 = v20 - v21;
    return v17 + (v8 * v18);
  }

  v24 = *(v12 + 4 * (*(this + 15) + v11));
  return (v19 + (v8 * (v24 - v19))) + (v10 * (v20 - v24));
}

uint64_t physx::Gu::HeightField::getTriangleMaterialIndex(physx::Gu::HeightField *this, unsigned int a2)
{
  v2 = *(this + 10) + 4 * (a2 >> 1);
  v3 = (v2 + 2);
  v4 = (v2 + 3);
  if ((a2 & 1) == 0)
  {
    v4 = v3;
  }

  return *v4 & 0x7F;
}

uint64_t physx::Gu::HeightField::getTriangleNormal@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2 >> 1;
  v4 = *(this + 80);
  if (*(v4 + 4 * v3 + 2) < 0)
  {
    if (a2)
    {
      v17 = *(v4 + 4 * (v3 + 1));
      v11 = -(v17 - *(v4 + 4 * (*(this + 60) + v3 + 1)));
      v12 = *(v4 + 4 * v3) - v17;
    }

    else
    {
      v10 = *(v4 + 4 * (*(this + 60) + v3));
      v11 = -(*(v4 + 4 * v3) - v10);
      v12 = v10 - *(v4 + 4 * (*(this + 60) + v3 + 1));
    }
  }

  else
  {
    if (a2)
    {
      v13 = *(this + 60);
      v14 = v3 + 1;
      v15 = v13 + v3 + 1;
      v16 = v13 + v3;
      v8 = *(v4 + 4 * v15);
      v7 = *(v4 + 4 * v16);
      v9 = *(v4 + 4 * v14) - v8;
    }

    else
    {
      v5 = v3 + 1;
      v6 = *(this + 60) + v3;
      v7 = *(v4 + 4 * v3);
      v8 = *(v4 + 4 * v5);
      v9 = v7 - *(v4 + 4 * v6);
    }

    v11 = -v9;
    v12 = v7 - v8;
  }

  *a3 = v11;
  *(a3 + 4) = -1082130432;
  *(a3 + 8) = -v12;
  return this;
}

char *physx::Gu::HeightFieldTraceUtil::traceSegment<physx::Gu::TriggerTraceSegmentCallback,false,false>(uint64_t a1, float32x2_t *a2, float32x2_t *a3, _BYTE *a4, uint64_t a5)
{
  v172 = *MEMORY[0x1E69E9840];
  v170 = 0;
  result = physx::Gu::intersectRayAABB2(a5, (a5 + 12), a2, a3, &v170 + 1, &v170, 1.0);
  if (result)
  {
    v10 = a3->f32[1];
    v11 = a3[1].f32[0];
    v12 = a2->f32[1];
    v13 = (*(&v170 + 1) * v10) + v12;
    v14 = a2[1].f32[0];
    v15 = (*(&v170 + 1) * v11) + v14;
    v16 = a2->f32[0] + (a3->f32[0] * *&v170);
    v159 = v12;
    v17 = v12 + (v10 * *&v170);
    v18 = *(a1 + 16);
    v19 = *(v18 + 56);
    v20 = *(v18 + 60);
    v21 = (v19 - 1) * 1.0;
    v22 = (v20 - 1) * 1.0;
    v23 = *a1;
    v24 = ((*(&v170 + 1) * a3->f32[0]) + a2->f32[0]) * *a1;
    v25 = fmaxf(v24, 0.0000001);
    if (v25 >= v21)
    {
      v26 = v21 + 0.0;
    }

    else
    {
      v26 = v25;
    }

    v27 = *(a1 + 8);
    v28 = v15 * v27;
    v29 = fmaxf(v15 * v27, 0.0000001);
    if (v29 >= v22)
    {
      v30 = v22 + 0.0;
    }

    else
    {
      v30 = v29;
    }

    v31 = (v14 + (v11 * *&v170)) * v27;
    if (((v16 * v23) - v24) < 0.0)
    {
      v32 = -1.0;
    }

    else
    {
      v32 = 1.0;
    }

    if ((v31 - v28) < 0.0)
    {
      v33 = -1.0;
    }

    else
    {
      v33 = 1.0;
    }

    if (vabds_f32(v16 * v23, v24) >= 1.0e-10)
    {
      v34 = (v16 * v23) - v24;
    }

    else
    {
      v34 = v32 * 1.0e-10;
    }

    if (vabds_f32(v31, v28) >= 1.0e-10)
    {
      v35 = v31 - v28;
    }

    else
    {
      v35 = v33 * 1.0e-10;
    }

    v36 = a3->f32[0] * v23;
    v37 = v11 * v27;
    v38 = sqrtf(((v10 * v10) + (v36 * v36)) + (v37 * v37));
    v39 = v38 <= 1.0e-20;
    v149 = v38;
    v40 = 1.0 / v38;
    v41 = v36 * (1.0 / v38);
    v42 = v10 * v40;
    v43 = v37 * v40;
    if (!v39)
    {
      v36 = v41;
    }

    v163 = v36;
    if (v39)
    {
      v44 = v37;
    }

    else
    {
      v10 = v42;
      v44 = v43;
    }

    v45 = floorf(v26);
    v46 = ceilf(v26);
    v47 = floorf(v30);
    v48 = ceilf(v30);
    if (v35 <= 0.0)
    {
      v49 = v48;
    }

    else
    {
      v49 = v47;
    }

    v50 = v45 + -1.0;
    if (v45 != v26)
    {
      v50 = v45;
    }

    if (v46 == v26)
    {
      v51 = v46 + 1.0;
    }

    else
    {
      v51 = v46;
    }

    if (v34 > 0.0)
    {
      v52 = v51;
    }

    else
    {
      v45 = v46;
      v52 = v50;
    }

    v53 = v47 + -1.0;
    if (v47 != v30)
    {
      v53 = v47;
    }

    if (v48 == v30)
    {
      v54 = v48 + 1.0;
    }

    else
    {
      v54 = v48;
    }

    if (v35 <= 0.0)
    {
      v54 = v53;
    }

    v55 = (v52 - v24) / v34;
    v56 = (v54 - v28) / v35;
    if (v55 < 0.0)
    {
      v55 = fabsf(0.0000001 / v34);
    }

    v57 = v45;
    v58 = v49;
    v59 = v17 - v13;
    v60 = v32;
    v61 = v33;
    if (v56 < 0.0)
    {
      v56 = fabsf(0.0000001 / v35);
    }

    v62 = *(*(a1 + 24) + 16);
    v153 = v14 * v27;
    v154 = a2->f32[0] * v23;
    v151 = 1.0 / fabsf(v34);
    v63 = v57;
    v64 = v58;
    v65 = v13 + (v59 * 0.0);
    v66 = *(v18 + 80);
    v67 = v60 + (1 - v61) / 2;
    v68 = 2 - v67;
    v69 = v67 + 1;
    v161 = -v163;
    v162 = -v44;
    v160 = -v10;
    v152 = v19;
    result = "omToByAnimationINS_7Vector2IfEEEE";
    v150 = 1.0 / fabsf(v35);
    v157 = v32;
    v158 = v13;
    v155 = v17 - v13;
    v156 = v33;
    while (1)
    {
      v70 = v65;
      if (v55 >= v56)
      {
        v71 = v56;
      }

      else
      {
        v71 = v55;
      }

      v65 = v13 + (v71 * v59);
      v72 = v57 + v60;
      v73 = v62 * *(v66 + 4 * (v58 + v57 * v20));
      v74 = v62 * *(v66 + 4 * (v58 + v57 * v20 + v61));
      v75 = *(v66 + 4 * (v58 + (v57 + v60) * v20));
      v171[0] = v73;
      v171[1] = v74;
      v76 = v62 * v75;
      v77 = v62 * *(v66 + 4 * (v58 + (v57 + v60) * v20 + v61));
      v171[2] = v76;
      v171[3] = v77;
      if (v76 >= v77)
      {
        v78 = v77;
      }

      else
      {
        v78 = v62 * v75;
      }

      if (v76 <= v77)
      {
        v76 = v77;
      }

      if (v73 >= v74)
      {
        v79 = v74;
      }

      else
      {
        v79 = v73;
      }

      if (v73 <= v74)
      {
        v73 = v74;
      }

      if (v79 >= v78)
      {
        v80 = v78;
      }

      else
      {
        v80 = v79;
      }

      if (v73 <= v76)
      {
        v73 = v76;
      }

      if (v70 >= v65)
      {
        v81 = v13 + (v71 * v59);
      }

      else
      {
        v81 = v70;
      }

      if (v70 <= v65)
      {
        v70 = v13 + (v71 * v59);
      }

      v82 = v70 + 0.0001;
      if ((v81 + -0.0001) <= v73 && v82 >= v80)
      {
        v84 = v171[(1 - v61) / 2 - v60 + 1];
        v85 = v171[v68];
        v86 = v171[v69];
        v87 = v171[v60 - (1 - v61) / 2 + 2];
        if (v63 >= (v32 + v63))
        {
          v88 = v32 + v63;
        }

        else
        {
          v88 = v63;
        }

        if (v63 <= (v32 + v63))
        {
          v89 = v32 + v63;
        }

        else
        {
          v89 = v63;
        }

        if (v64 >= (v33 + v64))
        {
          v90 = v33 + v64;
        }

        else
        {
          v90 = v64;
        }

        if (v64 <= (v33 + v64))
        {
          v91 = v33 + v64;
        }

        else
        {
          v91 = v64;
        }

        v168 = v171[v68];
        v169 = v88;
        v166 = v89;
        v167 = v91;
        v164 = v91;
        v165 = v87;
        if (v72 >= v57)
        {
          v92 = v57;
        }

        else
        {
          v92 = v57 + v60;
        }

        v93 = v58 + v61;
        if (v58 + v61 >= v58)
        {
          v93 = v58;
        }

        v94 = v66 + 4 * (v93 + v92 * v20);
        v95 = *(v94 + 2);
        if ((v95 & 0x80) != 0)
        {
          v96 = &v169;
          v97 = &v167;
          v98 = &v168;
          v99 = v91;
          v91 = v90;
          v100 = v89;
        }

        else
        {
          v96 = &v166;
          v97 = &v164;
          v98 = &v165;
          v99 = v90;
          v87 = v86;
          v86 = v84;
          v84 = v85;
          v100 = v88;
        }

        if ((v101 = v88 - v100, v102 = v84 - v86, v103 = v91 - v90, v104 = v89 - v100, v105 = v87 - v86, v106 = v99 - v90, v107 = ((v87 - v86) * v162) + (v10 * (v99 - v90)), v108 = ((v99 - v90) * v161) + (v44 * (v89 - v100)), v109 = ((v89 - v100) * v160) + (v163 * (v87 - v86)), v110 = (((v84 - v86) * v108) + ((v88 - v100) * v107)) + ((v91 - v90) * v109), fabsf(v110) < 1.4211e-14) || (v127 = 1.0 / v110, v128 = v154 - v100, v129 = v159 - v86, v130 = v153 - v90, v131 = ((((v159 - v86) * v108) + (v128 * v107)) + ((v153 - v90) * v109)) * v127, v131 < -0.0001) || v131 > 1.0001 || (v132 = (v129 * v103) - (v130 * v102), v133 = (v130 * v101) - (v128 * v103), v134 = (v128 * v102) - (v129 * v101), v135 = v127 * (((v10 * v133) + (v163 * v132)) + (v44 * v134)), v135 < -0.0001) || ((v136 = ~v95 & 0x7F, (v131 + v135) <= 1.0001) ? (v137 = v136 == 0) : (v137 = 1), v137 || ((v112 = v127 * (((v105 * v133) + (v104 * v132)) + (v106 * v134)), v112 >= 0.0) ? (v138 = v112 > v149) : (v138 = 1), v138)))
        {
          v111 = 1;
          v112 = 3.4028e38;
        }

        else
        {
          v111 = 0;
        }

        if ((v113 = v89 - *v96, v114 = *v98, v115 = v87 - *v98, v116 = *v97, v117 = v99 - *v97, v118 = v88 - *v96, v119 = v84 - *v98, v120 = v91 - *v97, v121 = (v119 * v162) + (v10 * v120), v122 = (v120 * v161) + (v44 * v118), v123 = (v118 * v160) + (v163 * v119), v124 = ((v115 * v122) + (v113 * v121)) + (v117 * v123), v32 = v157, fabsf(v124) < 1.4211e-14) || (v139 = 1.0 / v124, v140 = v154 - *v96, v141 = v159 - v114, v142 = v153 - v116, v143 = ((((v159 - v114) * v122) + (v140 * v121)) + ((v153 - v116) * v123)) * v139, v143 < -0.0001) || v143 > 1.0001 || (v144 = (v141 * v117) - (v142 * v115), v145 = (v142 * v113) - (v140 * v117), v146 = (v140 * v115) - (v141 * v113), v147 = (((v10 * v145) + (v163 * v144)) + (v44 * v146)) * v139, v147 < -0.0001) || (v143 + v147) > 1.0001 || ((v126 = (((v119 * v145) + (v118 * v144)) + (v120 * v146)) * v139, v126 >= 0.0) ? (v148 = v126 > v149) : (v148 = 1), v148 || (~*(v94 + 3) & 0x7F) == 0))
        {
          v125 = 1;
          v126 = 3.4028e38;
        }

        else
        {
          v125 = 0;
        }

        if (v126 > v112)
        {
          v125 = 1;
        }

        v13 = v158;
        v59 = v155;
        v33 = v156;
        if (((v112 <= v126) & ~v111) != 0 || !v125)
        {
          break;
        }
      }

      if (v55 >= v56)
      {
        v58 += v61;
        if (v58 + v61 < 0 || (v58 + v61) >= v20)
        {
          return result;
        }

        v64 = v33 + v64;
        v56 = v150 + v56;
      }

      else
      {
        if (v72 + v60 < 0 || (v72 + v60) >= v152)
        {
          return result;
        }

        v63 = v32 + v63;
        v55 = v151 + v55;
        v57 += v60;
      }

      if (v71 >= 0.9999)
      {
        return result;
      }
    }

    *a4 = 1;
  }

  return result;
}

float multiplyInverseRTLeft(float *a1, float *a2, float *a3)
{
  v3 = a2[8];
  v4 = a3[8];
  v5 = a3[9] - a2[9];
  v6 = a3[10] - a2[10];
  v7 = a3[11] - a2[11];
  v8 = a2[1];
  v9 = (v6 * v8) + (*a2 * v5);
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = (v6 * v12) + (v11 * v5);
  v15 = a2[6];
  v16 = a2[7];
  v17 = (v6 * v16) + (v15 * v5);
  v18 = a3[1];
  v19 = (*a2 * *a3) + (v8 * v18);
  v20 = (v11 * *a3) + (v12 * v18);
  v21 = (v15 * *a3) + (v16 * v18);
  v22 = a3[2];
  v23 = a3[3];
  v24 = v19 + (v10 * v22);
  v25 = v20 + (v13 * v22);
  v26 = v21 + (v3 * v22);
  v27 = a3[4];
  v28 = a3[5];
  v29 = ((*a2 * v23) + (v8 * v27)) + (v10 * v28);
  v30 = ((v11 * v23) + (v12 * v27)) + (v13 * v28);
  v31 = ((v15 * v23) + (v16 * v27)) + (v3 * v28);
  v32 = a3[6];
  v33 = a3[7];
  v34 = (*a2 * v32) + (v8 * v33);
  *a1 = v24;
  a1[1] = v25;
  a1[2] = v26;
  a1[3] = v29;
  a1[4] = v30;
  a1[5] = v31;
  a1[6] = v34 + (v10 * v4);
  a1[7] = ((v11 * v32) + (v12 * v33)) + (v13 * v4);
  a1[8] = ((v15 * v32) + (v16 * v33)) + (v3 * v4);
  a1[9] = v9 + (v10 * v7);
  result = v17 + (v3 * v7);
  a1[10] = v14 + (v13 * v7);
  a1[11] = result;
  return result;
}

BOOL CapsuleTraceSegmentReport::onEvent(CapsuleTraceSegmentReport *this, uint64_t a2, unsigned int *a3, __n128 a4, float32x4_t a5, float32x4_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = a2;
    v10 = *(this + 1);
    v11 = *(this + 6);
    v12 = v28;
    v13 = a3;
    do
    {
      v14 = *v13++;
      physx::Gu::HeightFieldUtil::getTriangle(v10, v11, v12, 0, 0, v14, 1, 1);
      v12 += 36;
      --v9;
    }

    while (v9);
  }

  v22[0] = 0;
  v22[1] = 0;
  v23 = -1;
  v24 = 0;
  v26 = 0;
  v25 = 0uLL;
  v27 = 3.4028e38;
  v15 = *(this + 3);
  v16 = *(this + 4);
  a4.n128_u32[0] = *(this + 14);
  v20 = *(this + 8);
  if ((physx::Gu::sweepCapsuleTriangles_Precise(a2, v28, v15, v16, 0, v22, v21, &v20, a4, a5, a6, *(this + 20), 0) & 1) == 0)
  {
    return 1;
  }

  v17 = v27;
  v18 = *(this + 5);
  if (v27 > *(v18 + 48))
  {
    return 1;
  }

  *(v18 + 16) = a3[v23];
  *(v18 + 40) = v26;
  *(v18 + 24) = v25;
  *(v18 + 48) = v17;
  *(this + 18) = 1;
  if (v27 == 0.0)
  {
    result = 0;
    *(this + 19) = 1;
  }

  else
  {
    return (*(this + 21) & 1) == 0;
  }

  return result;
}

uint64_t HeightFieldTraceSegmentSweepHelper::HeightFieldTraceSegmentSweepHelper(uint64_t a1, uint64_t a2, float32x2_t *a3, double a4, double a5, double a6)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  physx::Gu::HeightFieldUtil::computeLocalBounds(a2, a1 + 16, a4, a5, a6);
  v8 = *(a1 + 24) - a3[1].f32[0];
  *(a1 + 16) = vsub_f32(*(a1 + 16), *a3);
  *(a1 + 24) = v8;
  v9 = *(a1 + 36) + a3[1].f32[0];
  *(a1 + 28) = vadd_f32(*(a1 + 28), *a3);
  *(a1 + 36) = v9;
  return a1;
}

BOOL ConvexTraceSegmentReport::onEvent(ConvexTraceSegmentReport *this, unsigned int a2, unsigned int *a3)
{
  v78 = xmmword_1E30474D0;
  v79 = 0;
  v80 = 0;
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v67 = this + 328;
    v7 = this + 128;
    v68 = vdupq_n_s32(0x3EAAAA9Fu);
    for (i = a2; i != v5; v6 = ++v5 >= i)
    {
      v9 = a3[v5];
      physx::Gu::HeightFieldUtil::getTriangle(*(this + 1), &v78, &v70, 0, 0, v9, 0, 0);
      v11.i32[0] = *(this + 104);
      if ((*(this + 20) & 1) != 0 || (((*(this + 102) * (((v75 - v72) * (v76 - v73)) - ((v73 - v70) * (v77.f32[1] - v75)))) + ((((v74 - v71) * (v77.f32[1] - v75)) - ((v75 - v72) * (v77.f32[0] - v74))) * *(this + 101))) + ((((v73 - v70) * (v77.f32[0] - v74)) - ((v74 - v71) * (v76 - v73))) * *(this + 103))) > 0.0)
      {
        v10.i32[0] = *(this + 88);
        v69 = v10;
        v92 = 0u;
        v91 = 0;
        v12 = *(this + 2);
        v13 = *(this + 3);
        v14 = vmulq_n_f32(v12, v70);
        v14.i32[3] = 0;
        v15 = vmulq_n_f32(v13, v71);
        v15.i32[3] = 0;
        v17 = *(this + 4);
        v16 = *(this + 5);
        v18 = vmulq_n_f32(v17, v72);
        v18.i32[3] = 0;
        v19 = vaddq_f32(vaddq_f32(v14, v15), v18);
        v20 = vmulq_n_f32(v12, v73);
        v20.i32[3] = 0;
        v21 = vmulq_n_f32(v13, v74);
        v21.i32[3] = 0;
        v22 = vmulq_n_f32(v17, v75);
        v22.i32[3] = 0;
        v23 = vaddq_f32(v16, v19);
        v24 = vaddq_f32(vaddq_f32(v20, v21), v22);
        v25 = vmulq_n_f32(v12, v76);
        v25.i32[3] = 0;
        v26 = vmulq_n_f32(v13, v77.f32[0]);
        v26.i32[3] = 0;
        v27 = vmulq_lane_f32(v17, v77, 1);
        v27.i32[3] = 0;
        v28 = vaddq_f32(v16, v24);
        v29 = vaddq_f32(v16, vaddq_f32(vaddq_f32(v25, v26), v27));
        v87 = 0;
        v30 = vmulq_f32(vaddq_f32(v29, vaddq_f32(v23, v28)), v68);
        v30.i32[3] = 0;
        v84 = v30;
        v88 = v23;
        v89 = v28;
        v90 = v29;
        v85 = 0x7F7FFFFF00000000;
        v86 = 0x57F7FFFFFLL;
        v83[0] = &unk_1F5D21A20;
        v83[1] = &v84;
        v82[0] = &unk_1F5D21818;
        v82[1] = v7;
        v81 = vsubq_f32(v30, *(this + 8));
        v94 = 0u;
        v95[0] = 0u;
        v93 = 0;
        if (physx::Gu::gjkRaycast<physx::Gu::LocalConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(v83, v82, &v81, v11, &v91, &v92, this + 23, &v93, &v94, v95))
        {
          if (*&v91 >= v93.f32[0])
          {
            *(this + 19) = 1;
            *(this + 80) = v9;
            *(this + 162) = 1026;
            v66 = -*(this + 100);
            *(v67 + 12) = vneg_f32(*(this + 392));
            *(this + 87) = v66;
            *(this + 88) = 0;
            *(this + 18) = 1;
            return v6;
          }

          v31 = vmul_f32(v93, *(this + 384));
          if (vcgt_f32(vdup_lane_s32(v69, 0), v31).u8[0])
          {
            v33 = *(this + 6);
            v32 = *(this + 7);
            v34 = v33;
            v34.i32[3] = 0;
            v35 = vdupq_laneq_s32(v33, 3).u64[0];
            v37 = v94;
            v36 = v95[0];
            LODWORD(v38) = vmla_f32(0xBF000000BF000000, v35, v35).u32[0];
            v39 = vmulq_n_f32(v95[0], v38);
            v39.i32[3] = 0;
            *(this + 80) = v9;
            v40 = vextq_s8(v34, v34, 8uLL).u64[0];
            v41 = vext_s8(*v33.f32, v40, 4uLL);
            v42 = vmls_f32(vmul_f32(*&vextq_s8(v36, v36, 4uLL), *v33.f32), v41, *v36.i8);
            *v43.f32 = vext_s8(v42, vmls_f32(vmul_f32(*v36.i8, v40), *v33.f32, *&vextq_s8(v36, v36, 8uLL)), 4uLL);
            v43.i64[1] = v42.u32[0];
            v44 = vmlaq_laneq_f32(v39, v43, v33, 3);
            v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
            v45 = vmulq_f32(v36, v34);
            v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
            v46 = vmlaq_n_f32(v44, v34, vpadd_f32(*v45.f32, *v45.f32).f32[0]);
            v47 = vextq_s8(v46, v46, 8uLL).u32[0];
            v48 = vmulq_n_f32(v37, v38);
            v48.i32[3] = 0;
            v49 = vmls_f32(vmul_f32(*&vextq_s8(v37, v37, 4uLL), *v33.f32), v41, *v37.i8);
            *v50.f32 = vext_s8(v49, vmls_f32(vmul_f32(*v37.i8, v40), *v33.f32, *&vextq_s8(v37, v37, 8uLL)), 4uLL);
            v50.i64[1] = v49.u32[0];
            v51 = vmlaq_laneq_f32(v48, v50, v33, 3);
            v51.i64[1] = vextq_s8(v51, v51, 8uLL).u32[0];
            v52 = vmulq_f32(v37, v34);
            v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
            v53 = vmlaq_n_f32(v51, v34, vpadd_f32(*v52.f32, *v52.f32).f32[0]);
            v54 = vaddq_f32(v53, v53);
            v54.i32[3] = 0;
            *(this + 162) = 1027;
            v55 = vmulq_f32(v54, v54);
            v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
            v56 = vpadd_f32(*v55.f32, *v55.f32);
            v57 = vrsqrte_f32(v56);
            v58 = 4;
            do
            {
              v57 = vmul_f32(v57, vrsqrts_f32(vmul_f32(v57, v57), v56));
              --v58;
            }

            while (v58);
            v59 = vbsl_s8(vdup_lane_s32(vceqz_f32(v56), 0), v56, vmul_f32(v56, v57));
            v60 = vrecpe_f32(v59);
            v61 = 4;
            do
            {
              v60 = vmul_f32(v60, vrecps_f32(v59, v60));
              --v61;
            }

            while (v61);
            v46.i64[1] = v47;
            v62.i64[0] = 0x4000000040000000;
            v62.i64[1] = 0x4000000040000000;
            v63 = vmlaq_f32(v32, v62, v46);
            v64 = vmulq_n_f32(v54, v60.f32[0]);
            v63.i32[3] = v64.i32[0];
            *v67 = v63;
            *(this + 43) = vextq_s8(v64, v64, 4uLL).u64[0];
            *(this + 88) = v31.i32[0];
            *(this + 18) = 1;
            if ((*(this + 21) & 1) != 0 || v31.f32[0] == 0.0)
            {
              return v6;
            }
          }
        }
      }
    }
  }

  return 1;
}

BOOL physx::Gu::gjkRaycast<physx::Gu::LocalConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(uint64_t a1, uint64_t a2, float32x4_t *a3, int32x2_t a4, uint64_t a5, float32x4_t *a6, float32x4_t *a7, float32x2_t *a8, float32x4_t *a9, int8x16_t *a10)
{
  v235 = *MEMORY[0x1E69E9840];
  v212 = vmlaq_f32(*a6, 0, *a7);
  v14 = vextq_s8(v212, v212, 8uLL).u32[0];
  v223 = 1;
  v15 = vmulq_f32(*a3, *a3);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(vpadd_f32(*v15.f32, *v15.f32), 0x3400000034000000), 0)), *a3, xmmword_1E3047670);
  v17 = vmulq_f32(v16, v16);
  v17.i64[0] = vpaddq_f32(v17, v17).u64[0];
  v18 = vpadd_f32(*v17.f32, *v17.f32);
  v19 = vrsqrte_f32(v18);
  v20 = 4;
  do
  {
    v19 = vmul_f32(v19, vrsqrts_f32(vmul_f32(v19, v19), v18));
    --v20;
  }

  while (v20);
  v21 = vbsl_s8(vdup_lane_s32(vceqz_f32(v18), 0), v18, vmul_f32(v18, v19));
  v22 = vrecpe_f32(v21);
  v23 = 4;
  do
  {
    v22 = vmul_f32(v22, vrecps_f32(v21, v22));
    --v23;
  }

  while (v23);
  v24 = vdup_lane_s32(a4, 0);
  v25.i64[0] = v212.i64[0];
  v25.i64[1] = v14;
  v213 = v25;
  v26 = vmulq_n_f32(v16, v22.f32[0]);
  v26.i32[3] = 0;
  v222 = v26;
  v27 = vnegq_f32(v26);
  v27.i32[3] = 0;
  v28 = *(a1 + 8);
  v29 = v28[3];
  v30 = v28[4];
  v31 = v28[5];
  v32 = vmulq_f32(v27, v29);
  v32.i64[0] = vpaddq_f32(v32, v32).u64[0];
  *v32.f32 = vpadd_f32(*v32.f32, *v32.f32);
  v33 = vmulq_f32(v27, v30);
  v33.i64[0] = vpaddq_f32(v33, v33).u64[0];
  *v33.f32 = vpadd_f32(*v33.f32, *v33.f32);
  v34 = vmulq_f32(v27, v31);
  v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
  *v34.f32 = vpadd_f32(*v34.f32, *v34.f32);
  v218 = vbslq_s8(vmovl_s16(vdup_lane_s16(vand_s8(vcgt_f32(*v32.f32, *v34.f32), vcgt_f32(*v32.f32, *v33.f32)), 0)), v29, vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(*v33.f32, *v34.f32), 0)), v30, v31));
  *v35.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v222);
  v36 = v35;
  v37 = vsubq_f32(v218, v35);
  v232 = v37;
  v233 = 0u;
  memset(v234, 0, sizeof(v234));
  v229 = v218;
  v230 = 0u;
  memset(v231, 0, sizeof(v231));
  v226 = v36;
  v38 = vnegq_f32(v37);
  v38.i32[3] = 0;
  v227 = 0u;
  memset(v228, 0, sizeof(v228));
  v39 = (*(a2 + 8) + 24);
  *v36.f32 = vld1_dup_f32(v39);
  v40 = vneg_f32(0x80000000800000);
  *v36.f32 = vmul_f32(vmin_f32(*v36.f32, v40), vdup_n_s32(0x3DCCCCCDu));
  v41 = vadd_f32(v24, *v36.f32);
  v42 = vmul_f32(*v36.f32, *v36.f32);
  v43 = vmul_f32(v41, v41);
  v44 = vmulq_f32(v38, v38);
  v45 = vpaddq_f32(v44, v44);
  v46 = vpadd_f32(*v45.f32, *v45.f32);
  v206 = v42;
  *v45.f32 = vcgt_f32(v46, v42);
  v47 = vdupq_lane_s32(*v45.f32, 0);
  v45.i32[0] = -1;
  v205 = v45;
  v48 = v37;
  v49.i64[0] = -1;
  v49.i64[1] = -1;
  v209 = v38;
  v50 = v38;
  v51 = 0;
  while (1)
  {
    v52 = v37;
    v53.i64[0] = -1;
    v53.i64[1] = -1;
    *v53.i8 = vmovn_s32(vceqq_s32(v47, v53));
    v54 = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
    if (v54 != -1)
    {
      break;
    }

    v55 = vmulq_f32(v50, v50);
    v55.i64[0] = vpaddq_f32(v55, v55).u64[0];
    v56 = vpadd_f32(*v55.f32, *v55.f32);
    v57 = vrsqrte_f32(v56);
    v58 = 4;
    do
    {
      v57 = vmul_f32(v57, vrsqrts_f32(vmul_f32(v57, v57), v56));
      --v58;
    }

    while (v58);
    v214 = v52;
    v59 = vbsl_s8(vdup_lane_s32(vceqz_f32(v56), 0), v56, vmul_f32(v56, v57));
    v60 = vrecpe_f32(v59);
    v61 = 4;
    do
    {
      v60 = vmul_f32(v60, vrecps_f32(v59, v60));
      --v61;
    }

    while (v61);
    v211 = v50;
    v62 = vmulq_n_f32(v50, v60.f32[0]);
    v62.i32[3] = 0;
    v215 = v62;
    v63 = vnegq_f32(v62);
    v63.i32[3] = 0;
    v221 = v63;
    v64 = *(a1 + 8);
    v65 = v64[3];
    v66 = v64[4];
    v67 = v64[5];
    v68 = vmulq_f32(v62, v65);
    v68.i64[0] = vpaddq_f32(v68, v68).u64[0];
    *v68.f32 = vpadd_f32(*v68.f32, *v68.f32);
    v69 = vmulq_f32(v62, v66);
    v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
    *v69.f32 = vpadd_f32(*v69.f32, *v69.f32);
    v70 = vmulq_f32(v62, v67);
    v70.i64[0] = vpaddq_f32(v70, v70).u64[0];
    *v70.f32 = vpadd_f32(*v70.f32, *v70.f32);
    v219 = vbslq_s8(vmovl_s16(vdup_lane_s16(vand_s8(vcgt_f32(*v68.f32, *v70.f32), vcgt_f32(*v68.f32, *v69.f32)), 0)), v65, vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(*v69.f32, *v70.f32), 0)), v66, v67));
    *v71.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v221);
    v72 = v219;
    v73 = vaddq_f32(v213, v71);
    v37 = vsubq_f32(v219, v73);
    v74 = vnegq_f32(v37);
    v74.i32[3] = 0;
    v75 = vmulq_f32(v215, v74);
    v75.i64[0] = vpaddq_f32(v75, v75).u64[0];
    v76 = vsub_f32(vpadd_f32(*v75.f32, *v75.f32), v41);
    if (v76.f32[0] > 0.0)
    {
      v77 = vmulq_f32(v215, *a7);
      v77.i64[0] = vpaddq_f32(v77, v77).u64[0];
      v78 = vpadd_f32(*v77.f32, *v77.f32);
      if (v78.f32[0] >= 0.0)
      {
        return v54 != -1;
      }

      v79 = vrecpe_f32(v78);
      v80 = 4;
      do
      {
        v79 = vmul_f32(v79, vrecps_f32(v78, v79));
        --v80;
      }

      while (v80);
      v81 = vsub_f32(v51, vmul_f32(v76, v79));
      if (vcgt_f32(v81, v51).u8[0])
      {
        if (v81.f32[0] > 1.0)
        {
          return v54 != -1;
        }

        v82 = vmlaq_n_f32(*a6, *a7, v81.f32[0]);
        v82.i64[1] = vextq_s8(v82, v82, 8uLL).u32[0];
        v216 = v82;
        v83 = vsubq_f32(v82, v213);
        v210 = v81;
        v226 = vaddq_f32(v226, v83);
        v227 = vaddq_f32(v227, v83);
        v228[0] = vaddq_f32(v228[0], v83);
        v232 = vsubq_f32(v229, v226);
        v233 = vsubq_f32(v230, v227);
        v234[0] = vsubq_f32(v231[0], v228[0]);
        *v84.i64 = physx::Gu::LocalConvex<physx::Gu::ConvexHullV>::support(a2, &v221);
        v72 = v219;
        v73 = vaddq_f32(v216, v84);
        v37 = vsubq_f32(v219, v73);
        v46 = v40;
        v209 = v211;
        v213 = v216;
        v51 = v210;
      }

      else
      {
        v51 = v81;
      }
    }

    v85 = v223;
    *(&v229 + v223) = v72;
    *(&v226 + v85) = v73;
    v223 = v85 + 1;
    *(&v232 + v85) = v37;
    if (v85 == 3)
    {
      physx::Gu::closestPtPointTetrahedron(&v232, &v229, &v226, &v223);
LABEL_36:
      v48 = v214;
      goto LABEL_61;
    }

    if (v85 == 2)
    {
      v37 = v232;
      v100 = vsubq_f32(v233, v232);
      v101 = vsubq_f32(v234[0], v232);
      v103 = vmls_f32(vmul_f32(*v100.i8, *&vextq_s8(v101, v101, 4uLL)), *&vextq_s8(v100, v100, 4uLL), *v101.i8);
      *v102.f32 = vext_s8(v103, vmls_f32(vmul_f32(*&vextq_s8(v100, v100, 8uLL), *v101.i8), *v100.i8, *&vextq_s8(v101, v101, 8uLL)), 4uLL);
      v103.i32[1] = 0;
      v223 = 3;
      v104 = vpadd_f32(vmul_f32(*v102.f32, *v102.f32), vmul_f32(v103.u32[0], v103.u32[0]));
      v105 = vpadd_f32(v104, v104);
      if (v105.f32[0] <= 0.00000011921)
      {
        v223 = 2;
        v142 = vmulq_f32(v100, v100);
        v142.i64[0] = vpaddq_f32(v142, v142).u64[0];
        v143 = vpadd_f32(*v142.f32, *v142.f32);
        if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v143), 0), *v232.i8).u32[0] == -1)
        {
          v223 = 1;
          goto LABEL_36;
        }

        v144 = vnegq_f32(v232);
        v144.i32[3] = 0;
        v145 = vmulq_f32(v144, v100);
        v145.i64[0] = vpaddq_f32(v145, v145).u64[0];
        v146 = vpadd_f32(*v145.f32, *v145.f32);
        v147 = vrecpe_f32(v143);
        v148 = 4;
        v48 = v214;
        do
        {
          v147 = vmul_f32(v147, vrecps_f32(v143, v147));
          --v148;
        }

        while (v148);
        v149 = vmul_f32(v146, v147);
        __asm { FMOV            V2.2S, #1.0 }

        v37 = vmlaq_n_f32(v232, v100, vmax_f32(vmin_f32(v149, _D2), 0).f32[0]);
        goto LABEL_41;
      }

      *&v102.u32[2] = v103;
      v106 = vextq_s8(v233, v233, 8uLL).u64[0];
      v107 = vextq_s8(v234[0], v234[0], 8uLL).u64[0];
      v108 = vextq_s8(v234[0], v234[0], 4uLL).u64[0];
      v109 = vextq_s8(v233, v233, 4uLL).u64[0];
      v110 = vmls_f32(vmul_f32(*v233.f32, v108), v109, *v234[0].f32);
      *v111.f32 = vext_s8(v110, vmls_f32(vmul_f32(v106, *v234[0].f32), *v233.f32, v107), 4uLL);
      v111.i64[1] = v110.u32[0];
      v112 = vextq_s8(v232, v232, 8uLL).u64[0];
      v113 = vextq_s8(v232, v232, 4uLL).u64[0];
      v114 = vmls_f32(vmul_f32(v113, *v234[0].f32), v108, *v232.i8);
      *v115.f32 = vext_s8(v114, vmls_f32(vmul_f32(*v232.i8, v107), *v234[0].f32, v112), 4uLL);
      v115.i64[1] = v114.u32[0];
      v116 = vmls_f32(vmul_f32(*v232.i8, v109), v113, *v233.f32);
      *v117.f32 = vext_s8(v116, vmls_f32(vmul_f32(v112, *v233.f32), *v232.i8, v106), 4uLL);
      v117.i64[1] = v116.u32[0];
      v118 = vmulq_f32(v111, v102);
      v118.i64[0] = vpaddq_f32(v118, v118).u64[0];
      v119 = vpadd_f32(*v118.f32, *v118.f32);
      v120 = vmulq_f32(v115, v102);
      v120.i64[0] = vpaddq_f32(v120, v120).u64[0];
      v121 = vpadd_f32(*v120.f32, *v120.f32);
      v122 = vmulq_f32(v117, v102);
      v122.i64[0] = vpaddq_f32(v122, v122).u64[0];
      v123 = vpadd_f32(*v122.f32, *v122.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v121), vcgez_f32(v119)), vcgez_f32(v123)), 0), *v232.i8).u32[0] == -1)
      {
        v151 = vmulq_f32(v232, v102);
        v152 = vextq_s8(v151, v151, 8uLL).u64[0];
        v153 = vrecpe_f32(v105);
        v154 = 4;
        do
        {
          v153 = vmul_f32(v153, vrecps_f32(v105, v153));
          --v154;
        }

        while (v154);
        v155 = vpadd_f32(*v151.i8, v152);
        v37 = vmulq_n_f32(v102, vmul_f32(v153, vpadd_f32(v155, v155)).f32[0]);
        v37.i32[3] = 0;
        goto LABEL_36;
      }

      v124 = vnegq_f32(v232);
      v124.i32[3] = 0;
      v125 = vnegq_f32(v233);
      v125.i32[3] = 0;
      v126 = vmulq_f32(v124, v100);
      v126.i64[0] = vpaddq_f32(v126, v126).u64[0];
      v127 = vpadd_f32(*v126.f32, *v126.f32);
      v128 = vmulq_f32(v100, v125);
      v128.i64[0] = vpaddq_f32(v128, v128).u64[0];
      v129 = vpadd_f32(*v128.f32, *v128.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v123), vand_s8(vclez_f32(v129), vcgez_f32(v127))), 0), *v232.i8).u32[0] != -1)
      {
        v130 = vnegq_f32(v234[0]);
        v130.i32[3] = 0;
        v131 = vmulq_f32(v125, v101);
        v131.i64[0] = vpaddq_f32(v131, v131).u64[0];
        v132 = vpadd_f32(*v131.f32, *v131.f32);
        v133 = vmulq_f32(v100, v130);
        v133.i64[0] = vpaddq_f32(v133, v133).u64[0];
        v134 = vpadd_f32(*v133.f32, *v133.f32);
        v135 = vmulq_f32(v101, v130);
        v135.i64[0] = vpaddq_f32(v135, v135).u64[0];
        v136 = vpadd_f32(*v135.f32, *v135.f32);
        if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v132, v129), vcge_f32(v134, v136)), vclez_f32(v119)), 0), *v232.i8).u32[0] == -1)
        {
          v162 = vsub_f32(v132, v129);
          v163 = vadd_f32(v162, vsub_f32(v134, v136));
          v164 = vrecpe_f32(v163);
          v165 = 4;
          do
          {
            v164 = vmul_f32(v164, vrecps_f32(v163, v164));
            --v165;
          }

          while (v165);
          v166 = vmlaq_n_f32(v233, vsubq_f32(v234[0], v233), vmul_f32(v162, vbsl_s8(vcgt_f32(vabs_f32(v163), 0x3400000034000000), v164, 0)).f32[0]);
          v166.i64[1] = vextq_s8(v166, v166, 8uLL).u32[0];
          v140 = 2;
          v37 = v166;
          v141 = 1;
        }

        else
        {
          v137 = vmulq_f32(v124, v101);
          v137.i64[0] = vpaddq_f32(v137, v137).u64[0];
          v138 = vpadd_f32(*v137.f32, *v137.f32);
          if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v121), vand_s8(vclez_f32(v136), vcgez_f32(v138))), 0), *v232.i8).u32[0] != -1)
          {
            if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v138), vclez_f32(v127)), 0), *v232.i8).u32[0] == -1)
            {
              v141 = 0;
              v140 = 1;
            }

            else
            {
              *v37.i8 = vdup_lane_s16(vand_s8(vcge_f32(v129, v132), vcgez_f32(v129)), 0);
              *v37.i8 = vuzp1_s8(*v37.i8, *v37.i8);
              v139 = v37.i32[0];
              v140 = 1;
              v37 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v37, v205), 0), v233, v234[0]);
              if (v139 == -1)
              {
                v141 = 1;
              }

              else
              {
                v141 = 2;
              }
            }

            v159 = &v227;
            v160 = &v230;
            v161 = &v233;
LABEL_59:
            v48 = v214;
LABEL_60:
            v170 = *(&v229 + v141);
            v171 = *v161;
            v172 = *v160;
            v173 = *(&v226 + v141);
            v174 = *v159;
            v232 = *(&v232 + v141);
            v233 = v171;
            v229 = v170;
            v230 = v172;
            v226 = v173;
            v227 = v174;
            v223 = v140;
            goto LABEL_61;
          }

          v167 = vsub_f32(v138, v136);
          v168 = vrecpe_f32(v167);
          v169 = 4;
          do
          {
            v168 = vmul_f32(v168, vrecps_f32(v167, v168));
            --v169;
          }

          while (v169);
          v141 = 0;
          v37 = vmlaq_n_f32(v232, v101, vmul_f32(v138, vbsl_s8(vcgt_f32(vabs_f32(v167), 0x3400000034000000), v168, 0)).f32[0]);
          v37.i64[1] = vextq_s8(v37, v37, 8uLL).u32[0];
          v140 = 2;
        }

        v160 = v231;
        v159 = v228;
        v161 = v234;
        goto LABEL_59;
      }

      v156 = vsub_f32(v127, v129);
      v157 = vrecpe_f32(v156);
      v158 = 4;
      v48 = v214;
      do
      {
        v157 = vmul_f32(v157, vrecps_f32(v156, v157));
        --v158;
      }

      while (v158);
      v141 = 0;
      v37 = vmlaq_n_f32(v232, v100, vmul_f32(v127, vbsl_s8(vcgt_f32(vabs_f32(v156), 0x3400000034000000), v157, 0)).f32[0]);
      v37.i64[1] = vextq_s8(v37, v37, 8uLL).u32[0];
      v140 = 2;
      v159 = &v227;
      v160 = &v230;
      v161 = &v233;
      goto LABEL_60;
    }

    v48 = v214;
    if (v85 != 1)
    {
      goto LABEL_61;
    }

    v37 = v232;
    v86 = vsubq_f32(v233, v232);
    v87 = vmulq_f32(v86, v86);
    v87.i64[0] = vpaddq_f32(v87, v87).u64[0];
    v88 = vpadd_f32(*v87.f32, *v87.f32);
    if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v88), 0), *v232.i8).u32[0] != -1)
    {
      v89 = vnegq_f32(v232);
      v89.i32[3] = 0;
      v90 = vmulq_f32(v89, v86);
      v90.i64[0] = vpaddq_f32(v90, v90).u64[0];
      v91 = vpadd_f32(*v90.f32, *v90.f32);
      v92 = vrecpe_f32(v88);
      v93 = 4;
      do
      {
        v92 = vmul_f32(v92, vrecps_f32(v88, v92));
        --v93;
      }

      while (v93);
      v94 = vmul_f32(v91, v92);
      __asm { FMOV            V3.2S, #1.0 }

      v37 = vmlaq_n_f32(v232, v86, vmax_f32(vmin_f32(v94, _D3), 0).f32[0]);
LABEL_41:
      v37.i64[1] = vextq_s8(v37, v37, 8uLL).u32[0];
      goto LABEL_61;
    }

    v223 = 1;
LABEL_61:
    v50 = vnegq_f32(v37);
    v50.i32[3] = 0;
    v175 = vmulq_f32(v37, v37);
    v175.i64[0] = vpaddq_f32(v175, v175).u64[0];
    v176 = vpadd_f32(*v175.f32, *v175.f32);
    v177 = vcgt_f32(v46, v176);
    v49 = vdupq_lane_s32(vand_s8(v177, 0x100000001), 0);
    v47 = vdupq_lane_s32(vand_s8(vcgt_f32(v176, v43), v177), 0);
    v46 = v176;
  }

  v178 = v48;
  v179 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vandq_s8(vdupq_lane_s32(vcgt_f32(v46, v206), 0), v49), 0x1FuLL)), v50, v209);
  v180 = vmulq_f32(v179, v179);
  v180.i64[0] = vpaddq_f32(v180, v180).u64[0];
  v181 = vpadd_f32(*v180.f32, *v180.f32);
  v182 = vrsqrte_f32(v181);
  v183 = 4;
  do
  {
    v182 = vmul_f32(v182, vrsqrts_f32(vmul_f32(v182, v182), v181));
    --v183;
  }

  while (v183);
  v184 = vbsl_s8(vdup_lane_s32(vceqz_f32(v181), 0), v181, vmul_f32(v181, v182));
  v185 = vrecpe_f32(v184);
  v186 = 4;
  do
  {
    v185 = vmul_f32(v185, vrecps_f32(v184, v185));
    --v186;
  }

  while (v186);
  v187 = vdupq_n_s32(-*(*(a1 + 8) + 32));
  v188 = vmulq_n_f32(v179, v185.f32[0]);
  v188.i32[3] = 0;
  v189 = vnegq_f32(vandq_s8(vdupq_lane_s32(vcgtz_f32(v184), 0), v188));
  v189.i32[3] = 0;
  *a9 = v189;
  *a8 = v51;
  v190 = vbslq_s8(vcltzq_s32(vshlq_n_s32(v49, 0x1FuLL)), v52, v178);
  v221 = v190;
  if (v223 == 3)
  {
    v224 = 0;
    v225 = 0;
    v217 = v189;
    v220 = v187;
    physx::Gu::barycentricCoordinates(&v221, &v232, &v233, v234, &v225, &v224);
    v189 = v217;
    v187 = v220;
    v49.i32[1] = v229.i32[1];
    v201 = vmulq_n_f32(vsubq_f32(v230, v229), v225.f32[0]);
    v201.i32[3] = 0;
    v202 = vmulq_n_f32(vsubq_f32(v231[0], v229), v224.f32[0]);
    v202.i32[3] = 0;
    v191 = vaddq_f32(v229, vaddq_f32(v201, v202));
    v192 = a10;
  }

  else if (v223 == 2)
  {
    v193 = vsubq_f32(v232, v190);
    v194 = vsubq_f32(vsubq_f32(v233, v190), v193);
    v195 = vmulq_f32(v194, v194);
    v195.i64[0] = vpaddq_f32(v195, v195).u64[0];
    v196 = vpadd_f32(*v195.f32, *v195.f32);
    v197 = vrecpe_f32(v196);
    v198 = 4;
    v192 = a10;
    do
    {
      v197 = vmul_f32(v197, vrecps_f32(v196, v197));
      --v198;
    }

    while (v198);
    v199 = vnegq_f32(v193);
    v199.i32[3] = 0;
    v200 = vmulq_f32(v199, v194);
    v200.i64[0] = vpaddq_f32(v200, v200).u64[0];
    v191 = vmlaq_n_f32(v229, vsubq_f32(v230, v229), vmul_f32(vbsl_s8(vcgtz_f32(v196), v197, 0), vpadd_f32(*v200.f32, *v200.f32)).f32[0]);
    v49.i32[1] = 0;
    v191.i64[1] = vextq_s8(v191, v191, 8uLL).u32[0];
  }

  else
  {
    v191 = 0uLL;
    v192 = a10;
    if (v223 == 1)
    {
      v191 = v229;
    }
  }

  v49.i32[0] = *(*(a1 + 8) + 16);
  v203 = vmlsq_lane_f32(v191, v189, *v49.i8, 0);
  v203.i64[1] = vextq_s8(v203, v203, 8uLL).u32[0];
  *v192 = vbslq_s8(v187, v203, v191);
  return v54 != -1;
}

BOOL BoxTraceSegmentReport::onEvent(BoxTraceSegmentReport *this, unsigned int a2, unsigned int *a3)
{
  v73 = 0;
  v72 = 0uLL;
  v3.i64[0] = *(this + 7);
  v3.i64[1] = *(this + 16);
  v71 = v3;
  if (a2)
  {
    v6 = 0;
    v7 = a2;
    v8 = 1;
    for (i = a2; i; --i)
    {
      v11 = *a3++;
      v10 = v11;
      physx::Gu::HeightFieldUtil::getTriangle(*(this + 1), *(this + 4), v67, 0, 0, v11, 1, 1);
      v12.i64[0] = *v67;
      v12.i64[1] = *&v67[8];
      v13.i64[0] = *&v67[12];
      v13.i64[1] = v68;
      *v14.f32 = v69;
      v14.i64[1] = v70;
      v15 = *(this + 3);
      v16 = *v15;
      v16.i32[3] = 0;
      v17 = vdupq_laneq_s32(*v15, 3).u64[0];
      LODWORD(v18) = vmla_f32(0xBF000000BF000000, v17, v17).u32[0];
      v19 = vmulq_n_f32(v12, v18);
      v19.i32[3] = 0;
      v20 = vextq_s8(v16, v16, 8uLL).u64[0];
      v21 = vextq_s8(v12, v12, 8uLL).u64[0];
      v22 = vext_s8(*v15, v20, 4uLL);
      v23 = vmls_f32(vmul_f32(vext_s8(*v67, v21, 4uLL), *v15), v22, *v67);
      *v24.f32 = vext_s8(v23, vmls_f32(vmul_f32(*v67, v20), *v15, v21), 4uLL);
      v24.i64[1] = v23.u32[0];
      v25 = vmlaq_laneq_f32(v19, v24, *v15, 3);
      v25.i64[1] = vextq_s8(v25, v25, 8uLL).u32[0];
      v26 = vmulq_f32(v12, v16);
      v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
      v27 = vmlaq_n_f32(v25, v16, vpadd_f32(*v26.f32, *v26.f32).f32[0]);
      v27.i64[1] = vextq_s8(v27, v27, 8uLL).u32[0];
      v28.i64[0] = 0x4000000040000000;
      v28.i64[1] = 0x4000000040000000;
      v29 = vmlaq_f32(*(v15 + 16), v28, v27);
      v29.i64[1] = vextq_s8(v29, v29, 8uLL).u32[0];
      v30 = vmulq_n_f32(v13, v18);
      v30.i32[3] = 0;
      v27.i64[0] = vextq_s8(v13, v13, 8uLL).u64[0];
      v31 = vmls_f32(vmul_f32(vext_s8(*&v67[12], *v27.i8, 4uLL), *v15), v22, *&v67[12]);
      *v32.f32 = vext_s8(v31, vmls_f32(vmul_f32(*&v67[12], v20), *v15, *v27.i8), 4uLL);
      v32.i64[1] = v31.u32[0];
      v33 = vmlaq_laneq_f32(v30, v32, *v15, 3);
      v33.i64[1] = vextq_s8(v33, v33, 8uLL).u32[0];
      v34 = vmulq_f32(v13, v16);
      v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
      v35 = vmlaq_n_f32(v33, v16, vpadd_f32(*v34.f32, *v34.f32).f32[0]);
      v35.i64[1] = vextq_s8(v35, v35, 8uLL).u32[0];
      v36 = vmlaq_f32(*(v15 + 16), v28, v35);
      v36.i64[1] = vextq_s8(v36, v36, 8uLL).u32[0];
      v37 = vmulq_n_f32(v14, v18);
      v37.i32[3] = 0;
      v32.i64[0] = vextq_s8(v14, v14, 8uLL).u64[0];
      *v35.i8 = vmls_f32(vmul_f32(*v15, vext_s8(v69, *v32.f32, 4uLL)), v22, v69);
      *v38.f32 = vext_s8(*v35.i8, vmls_f32(vmul_f32(v69, v20), *v15, *v32.f32), 4uLL);
      v38.i64[1] = v35.u32[0];
      v39 = vmlaq_laneq_f32(v37, v38, *v15, 3);
      v39.i64[1] = vextq_s8(v39, v39, 8uLL).u32[0];
      v40 = vmulq_f32(v14, v16);
      v40.i64[0] = vpaddq_f32(v40, v40).u64[0];
      v41 = vmlaq_n_f32(v39, v16, vpadd_f32(*v40.f32, *v40.f32).f32[0]);
      v41.i64[1] = vextq_s8(v41, v41, 8uLL).u32[0];
      v42 = vmlaq_f32(*(v15 + 16), v28, v41);
      v42.i64[1] = vextq_s8(v42, v42, 8uLL).u32[0];
      if ((*(this + 20) & 1) != 0 || (v43 = vsubq_f32(v42, v36), v44 = vsubq_f32(v29, v36), v45 = vmls_f32(vmul_f32(*v43.i8, *&vextq_s8(v44, v44, 4uLL)), *&vextq_s8(v43, v43, 4uLL), *v44.i8), *v43.i8 = vext_s8(v45, vmls_f32(vmul_f32(*&vextq_s8(v43, v43, 8uLL), *v44.i8), *v43.i8, *&vextq_s8(v44, v44, 8uLL)), 4uLL), v43.i64[1] = v45.u32[0], v46 = vmulq_f32(v43, v71), v46.i64[0] = vpaddq_f32(v46, v46).u64[0], vpadd_f32(*v46.f32, *v46.f32).f32[0] < *&v73))
      {
        v63 = 0;
        v47 = vmulq_f32(vaddq_f32(v42, vaddq_f32(v29, v36)), vdupq_n_s32(0x3EAAAA9Fu));
        v47.i32[3] = 0;
        v60 = v47;
        v64 = v29;
        v65 = v36;
        v66 = v42;
        v61 = 0x7F7FFFFF00000000;
        v62 = 0x57F7FFFFFLL;
        v59[1] = &v60;
        v58 = *(this + 5);
        v59[0] = &unk_1F5D21A20;
        v57 = &unk_1F5D21A80;
        v56 = 0u;
        v48 = vsubq_f32(v47, *v58);
        v56 = v48;
        v48.i32[0] = *(this + 20);
        v75 = 0u;
        v76[0] = 0u;
        v74 = 0;
        if (physx::Gu::gjkRaycast<physx::Gu::LocalConvex<physx::Gu::TriangleV>,physx::Gu::LocalConvex<physx::Gu::BoxV>>(v59, &v57, &v56, *v48.f32, &v73, &v72, &v71, &v74, &v75, v76))
        {
          v50 = *&v73;
          v49 = v74;
          v52 = v75;
          v51 = v76[0];
          *(this + 18) = 1;
          if (v49.f32[0] <= v50)
          {
            v55 = *(this + 9);
            *(v55 + 48) = 0;
            *(v55 + 16) = v10;
            *(this + 19) = 1;
            return v6;
          }

          if (COERCE_FLOAT(*(this + 6)) > v49.f32[0])
          {
            *(this + 6) = v49;
            v53 = *(this + 9);
            *(v53 + 48) = v49.i32[0];
            *(v53 + 40) = vextq_s8(v52, v52, 4uLL).u64[0];
            v51.i32[3] = v52.i32[0];
            *(v53 + 24) = v51;
            *(v53 + 16) = v10;
            if (*(this + 21))
            {
              return v6;
            }
          }
        }
      }

      v6 = v8++ >= v7;
    }
  }

  return 1;
}

uint64_t physx::Gu::HeightFieldTraceUtil::OverlapTraceSegment<CapsuleTraceSegmentReport>::testVertexIndex(uint64_t a1, unsigned int a2)
{
  v2 = *(*(a1 + 16) + 80);
  v3 = (v2 + 4 * a2);
  v4 = *v3;
  v5 = *(v2 + 4 * (a2 + 1));
  v6 = *(v2 + 4 * (*(a1 + 64) + a2));
  v7 = *(v2 + 4 * (*(a1 + 64) + a2 + 1));
  v8 = *(a1 + 44);
  if (v8 < v4 && v8 < v5 && v8 < v6 && v8 < v7)
  {
    return 1;
  }

  v13 = *(a1 + 40);
  v14 = v13 <= v4 || v13 <= v5;
  v15 = v14 || v13 <= v6;
  if (!v15 && v13 > v7)
  {
    return 1;
  }

  if ((~*(v3 + 2) & 0x7F) != 0)
  {
    v18 = *(a1 + 364);
    if (v18 == 64)
    {
      if (!(*(**(a1 + 24) + 16))(*(a1 + 24), 64, a1 + 108))
      {
        return 0;
      }

      v18 = 0;
      v2 = *(*(a1 + 16) + 80);
    }

    *(a1 + 364) = v18 + 1;
    *(a1 + 4 * v18 + 108) = 2 * a2;
  }

  v19 = 1;
  if ((~*(v2 + 4 * a2 + 3) & 0x7F) != 0)
  {
    v20 = *(a1 + 364);
    if (v20 != 64 || (v21 = (*(**(a1 + 24) + 16))(*(a1 + 24), 64, a1 + 108), v20 = 0, v21))
    {
      *(a1 + 364) = v20 + 1;
      *(a1 + 4 * v20 + 108) = (2 * a2) | 1;
      return v19;
    }

    return 0;
  }

  return v19;
}

uint64_t physx::Gu::intersectOBBOBB(float *a1, float *a2, float *a3, float *a4, float *a5, uint64_t a6, int a7)
{
  v7 = 0;
  v8 = 0;
  v55 = *MEMORY[0x1E69E9840];
  v9 = *a5 - *a2;
  v10 = a5[1] - a2[1];
  v11 = a5[2] - a2[2];
  v12 = ((v10 * a3[1]) + (v9 * *a3)) + (v11 * a3[2]);
  v13 = ((v10 * a3[4]) + (v9 * a3[3])) + (v11 * a3[5]);
  v14 = ((v10 * a3[7]) + (v9 * a3[6])) + (v11 * a3[8]);
  *v36 = v12;
  *&v36[1] = v13;
  *&v36[2] = v14;
  do
  {
    v15 = &a3[3 * v8];
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = (a6 + 8);
    v20 = v7;
    v21 = 3;
    do
    {
      v22 = (v17 * *(v19 - 1)) + (v16 * *(v19 - 2));
      v23 = *v19;
      v19 += 3;
      v24 = v22 + (v18 * v23);
      *(&v46 + v20) = v24;
      *(&v37 + v20) = fabsf(v24) + 0.000001;
      v20 += 4;
      --v21;
    }

    while (v21);
    ++v8;
    v7 += 12;
  }

  while (v8 != 3);
  v25 = 0;
  v26 = *a4;
  v27 = a4[1];
  v28 = a4[2];
  for (i = &v39; fabsf(*&v36[v25]) <= (a1[v25] + (((v27 * *(i - 1)) + (v26 * *(i - 2))) + (v28 * *i))); i += 3)
  {
    if (++v25 == 3)
    {
      v30 = 0;
      v31 = *a1;
      v32 = a1[1];
      v33 = a1[2];
      while (fabsf(((v13 * *(&v49 + v30)) + (v12 * *(&v46 + v30))) + (v14 * *(&v52 + v30))) <= (a4[v30 / 4] + (((v32 * *(&v40 + v30)) + (v31 * *(&v37 + v30))) + (v33 * *(&v43 + v30)))))
      {
        v30 += 4;
        if (v30 == 12)
        {
          if (!a7)
          {
            return 1;
          }

          if (fabsf((v14 * v49) - (v13 * v52)) <= (((v33 * v40) + (v32 * v43)) + ((v28 * v38) + (v27 * v39))) && fabsf((v53 * -v13) + (v14 * v50)) <= (((v33 * v41) + (v32 * v44)) + ((v28 * v37) + (v26 * v39))) && fabsf((v54 * -v13) + (v14 * v51)) <= (((v27 * v37) + (v26 * v38)) + ((v33 * v42) + (v32 * v45))) && fabsf((v12 * v52) - (v14 * v46)) <= (((v33 * v37) + (v31 * v43)) + ((v28 * v41) + (v27 * v42))) && fabsf((v47 * -v14) + (v12 * v53)) <= (((v33 * v38) + (v31 * v44)) + ((v28 * v40) + (v26 * v42))) && fabsf((v48 * -v14) + (v12 * v54)) <= (((v27 * v40) + (v26 * v41)) + ((v33 * v39) + (v31 * v45))) && fabsf((v13 * v46) - (v12 * v49)) <= (((v32 * v37) + (v31 * v40)) + ((v28 * v44) + (v27 * v45))))
          {
            v34 = -v12;
            if (fabsf((v50 * v34) + (v13 * v47)) <= (((v32 * v38) + (v31 * v41)) + ((v28 * v43) + (v26 * v45))) && fabsf((v51 * v34) + (v13 * v48)) <= (((v27 * v43) + (v26 * v44)) + ((v32 * v39) + (v31 * v42))))
            {
              return 1;
            }
          }

          return 0;
        }
      }

      return 0;
    }
  }

  return 0;
}

BOOL physx::Gu::intersectCapsuleTriangle(float *a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a5;
  v9 = a5[1];
  v10 = *a2 - *a5;
  v11 = v7 - v9;
  v12 = a2[2];
  v13 = a5[2];
  v14 = v12 - v13;
  v15 = *a6;
  v16 = a6[1];
  v17 = a6[2];
  v18 = (((v7 - v9) * v16) + (v10 * *a6)) + ((v12 - v13) * v17);
  if (v18 > 0.0)
  {
    v19 = ((v16 * v16) + (v15 * v15)) + (v17 * v17);
    if (v18 >= v19)
    {
      v10 = v10 - v15;
      v11 = v11 - v16;
      v14 = v14 - v17;
    }

    else
    {
      v20 = v18 / v19;
      v10 = v10 - (v15 * v20);
      v11 = v11 - (v16 * v20);
      v14 = v14 - (v17 * v20);
    }
  }

  v21 = ((v11 * v11) + (v10 * v10)) + (v14 * v14);
  v22 = a5[6];
  if (v21 <= (v22 * v22))
  {
    return 1;
  }

  else
  {
    v23 = *a1;
    v24 = a1[1];
    v25 = a1[2];
    v26 = ((v9 * v24) + (v8 * *a1)) + (v13 * v25);
    v27 = a5[3];
    v28 = a5[4];
    v29 = a5[5];
    v30 = ((v24 * v28) + (v27 * *a1)) + (v29 * v25);
    if (v26 <= v30)
    {
      v31 = ((v24 * v28) + (v27 * *a1)) + (v29 * v25);
    }

    else
    {
      v31 = ((v9 * v24) + (v8 * *a1)) + (v13 * v25);
    }

    if (v26 > v30)
    {
      v26 = ((v24 * v28) + (v27 * *a1)) + (v29 * v25);
    }

    v32 = v22 * sqrtf(((v24 * v24) + (v23 * v23)) + (v25 * v25));
    v33 = v26 - v32;
    v34 = v32 + v31;
    v35 = ((v7 * v24) + (v6 * v23)) + (v12 * v25);
    v36 = *a3;
    v37 = a3[1];
    v38 = a3[2];
    v39 = ((v24 * v37) + (*a3 * v23)) + (v38 * v25);
    if (v39 >= v35)
    {
      v40 = ((v7 * v24) + (v6 * v23)) + (v12 * v25);
    }

    else
    {
      v40 = ((v24 * v37) + (*a3 * v23)) + (v38 * v25);
    }

    if (v39 <= v35)
    {
      v41 = ((v7 * v24) + (v6 * v23)) + (v12 * v25);
    }

    else
    {
      v41 = ((v24 * v37) + (*a3 * v23)) + (v38 * v25);
    }

    v42 = *a4;
    v43 = a4[1];
    v44 = (v24 * v43) + (*a4 * v23);
    v45 = a4[2];
    v46 = v44 + (v45 * v25);
    if (v46 >= v40)
    {
      v47 = v40;
    }

    else
    {
      v47 = v46;
    }

    if (v46 <= v41)
    {
      v46 = v41;
    }

    if (v34 < v47 || v46 < v33)
    {
      return 0;
    }

    v49 = v36 - v6;
    v50 = v37 - v7;
    v51 = v38 - v12;
    v52 = a6[3];
    v135 = a6[4];
    v53 = ((v50 * v50) + (v49 * v49)) + (v51 * v51);
    v54 = ((v16 * (v37 - v7)) + ((v36 - v6) * v15)) + ((v38 - v12) * v17);
    v55 = (((v9 - v7) * (v37 - v7)) + ((v36 - v6) * (v8 - v6))) + ((v38 - v12) * (v13 - v12));
    v56 = (v53 * v52) - (v54 * v54);
    v57 = 0.0;
    if (v56 != 0.0)
    {
      v57 = ((v54 * -((((v9 - v7) * v16) + (v15 * (v8 - v6))) + (v17 * (v13 - v12)))) + (v55 * v52)) / v56;
    }

    v134 = a6[3];
    if (v57 < 0.0)
    {
      v57 = 0.0;
    }

    v58 = v57 <= 1.0 ? v57 : 1.0;
    v59 = v135 * ((v58 * v54) - ((((v9 - v7) * v16) + (v15 * (v8 - v6))) + (v17 * (v13 - v12))));
    if (v59 >= 0.0)
    {
      v61 = a5[3];
      if (v59 > 1.0)
      {
        v63 = (v54 + v55) / v53;
        if (v63 < 0.0)
        {
          v63 = 0.0;
        }

        v59 = 1.0;
        if (v63 <= 1.0)
        {
          v58 = v63;
        }

        else
        {
          v58 = 1.0;
        }
      }
    }

    else
    {
      v60 = v55 / v53;
      v59 = 0.0;
      if ((v55 / v53) < 0.0)
      {
        v60 = 0.0;
      }

      v58 = v60 <= 1.0 ? v60 : 1.0;
      v61 = a5[3];
    }

    v64 = ((v8 - v6) + (v15 * v59)) - (v49 * v58);
    v65 = ((v9 - v7) + (v16 * v59)) - (v50 * v58);
    v66 = ((v13 - v12) + (v17 * v59)) - (v51 * v58);
    v67 = ((v9 * v65) + (v8 * v64)) + (v13 * v66);
    v68 = ((v28 * v65) + (v61 * v64)) + (v29 * v66);
    if (v67 <= v68)
    {
      v69 = ((v28 * v65) + (v61 * v64)) + (v29 * v66);
    }

    else
    {
      v69 = ((v9 * v65) + (v8 * v64)) + (v13 * v66);
    }

    if (v67 > v68)
    {
      v67 = ((v28 * v65) + (v61 * v64)) + (v29 * v66);
    }

    v70 = v22 * sqrtf(((v65 * v65) + (v64 * v64)) + (v66 * v66));
    v71 = v67 - v70;
    v72 = v69 + v70;
    v73 = ((v7 * v65) + (v6 * v64)) + (v12 * v66);
    v74 = ((v37 * v65) + (v36 * v64)) + (v38 * v66);
    if (v74 >= v73)
    {
      v75 = ((v7 * v65) + (v6 * v64)) + (v12 * v66);
    }

    else
    {
      v75 = ((v37 * v65) + (v36 * v64)) + (v38 * v66);
    }

    if (v74 > v73)
    {
      v73 = ((v37 * v65) + (v36 * v64)) + (v38 * v66);
    }

    v76 = ((v43 * v65) + (v42 * v64)) + (v45 * v66);
    if (v76 >= v75)
    {
      v77 = v75;
    }

    else
    {
      v77 = v76;
    }

    if (v76 <= v73)
    {
      v76 = v73;
    }

    if (v72 < v77 || v76 < v71)
    {
      return 0;
    }

    v79 = v42 - v36;
    v80 = v43 - v37;
    v81 = v45 - v38;
    v82 = ((v80 * v80) + (v79 * v79)) + (v81 * v81);
    v83 = ((v16 * (v43 - v37)) + ((v42 - v36) * v15)) + ((v45 - v38) * v17);
    v84 = (((v9 - v37) * (v43 - v37)) + ((v42 - v36) * (v8 - v36))) + ((v45 - v38) * (v13 - v38));
    v85 = (v82 * v134) - (v83 * v83);
    v86 = 0.0;
    if (v85 != 0.0)
    {
      v86 = ((v83 * -(((v16 * (v9 - v37)) + (v15 * (v8 - v36))) + (v17 * (v13 - v38)))) + (v84 * v134)) / v85;
    }

    if (v86 < 0.0)
    {
      v86 = 0.0;
    }

    v87 = v86 <= 1.0 ? v86 : 1.0;
    v88 = v135 * ((v87 * v83) - (((v16 * (v9 - v37)) + (v15 * (v8 - v36))) + (v17 * (v13 - v38))));
    if (v88 >= 0.0)
    {
      v90 = a5[3];
      if (v88 > 1.0)
      {
        v91 = (v83 + v84) / v82;
        if (v91 < 0.0)
        {
          v91 = 0.0;
        }

        v88 = 1.0;
        if (v91 <= 1.0)
        {
          v87 = v91;
        }

        else
        {
          v87 = 1.0;
        }
      }
    }

    else
    {
      v89 = v84 / v82;
      v88 = 0.0;
      if ((v84 / v82) < 0.0)
      {
        v89 = 0.0;
      }

      v87 = v89 <= 1.0 ? v89 : 1.0;
      v90 = a5[3];
    }

    v92 = ((v8 - v36) + (v15 * v88)) - (v79 * v87);
    v93 = ((v9 - v37) + (v16 * v88)) - (v80 * v87);
    v94 = ((v13 - v38) + (v17 * v88)) - (v81 * v87);
    v95 = ((v9 * v93) + (v8 * v92)) + (v13 * v94);
    v96 = ((v28 * v93) + (v90 * v92)) + (v29 * v94);
    if (v95 <= v96)
    {
      v97 = ((v28 * v93) + (v90 * v92)) + (v29 * v94);
    }

    else
    {
      v97 = ((v9 * v93) + (v8 * v92)) + (v13 * v94);
    }

    if (v95 > v96)
    {
      v95 = ((v28 * v93) + (v90 * v92)) + (v29 * v94);
    }

    v98 = v22 * sqrtf(((v93 * v93) + (v92 * v92)) + (v94 * v94));
    v99 = v95 - v98;
    v100 = v97 + v98;
    v101 = ((v7 * v93) + (v6 * v92)) + (v12 * v94);
    v102 = ((v37 * v93) + (v36 * v92)) + (v38 * v94);
    if (v102 >= v101)
    {
      v103 = ((v7 * v93) + (v6 * v92)) + (v12 * v94);
    }

    else
    {
      v103 = ((v37 * v93) + (v36 * v92)) + (v38 * v94);
    }

    if (v102 > v101)
    {
      v101 = ((v37 * v93) + (v36 * v92)) + (v38 * v94);
    }

    v104 = ((v43 * v93) + (v42 * v92)) + (v45 * v94);
    if (v104 >= v103)
    {
      v105 = v103;
    }

    else
    {
      v105 = v104;
    }

    if (v104 <= v101)
    {
      v104 = v101;
    }

    if (v100 < v105 || v104 < v99)
    {
      return 0;
    }

    else
    {
      v108 = v6 - v42;
      v109 = v7 - v43;
      v110 = v12 - v45;
      v111 = ((v109 * v109) + (v108 * v108)) + (v110 * v110);
      v112 = ((v16 * (v7 - v43)) + ((v6 - v42) * v15)) + ((v12 - v45) * v17);
      v113 = (((v7 - v43) * (v9 - v43)) + ((v6 - v42) * (v8 - v42))) + ((v12 - v45) * (v13 - v45));
      v114 = (v111 * v134) - (v112 * v112);
      v115 = 0.0;
      v116 = 0.0;
      if (v114 != 0.0)
      {
        v116 = ((v112 * -(((v16 * (v9 - v43)) + (v15 * (v8 - v42))) + (v17 * (v13 - v45)))) + (v113 * v134)) / v114;
      }

      if (v116 >= 0.0)
      {
        v115 = v116;
      }

      if (v115 <= 1.0)
      {
        v117 = v115;
      }

      else
      {
        v117 = 1.0;
      }

      v118 = v135 * ((v117 * v112) - (((v16 * (v9 - v43)) + (v15 * (v8 - v42))) + (v17 * (v13 - v45))));
      if (v118 >= 0.0)
      {
        v119 = a5[3];
        if (v118 > 1.0)
        {
          v117 = 0.0;
          if (((v112 + v113) / v111) >= 0.0)
          {
            v117 = (v112 + v113) / v111;
          }

          v118 = 1.0;
          if (v117 > 1.0)
          {
            v117 = 1.0;
          }
        }
      }

      else
      {
        v117 = v113 / v111;
        v118 = 0.0;
        if ((v113 / v111) < 0.0)
        {
          v117 = 0.0;
        }

        if (v117 > 1.0)
        {
          v117 = 1.0;
        }

        v119 = a5[3];
      }

      v120 = ((v8 - v42) + (v15 * v118)) - (v108 * v117);
      v121 = ((v9 - v43) + (v16 * v118)) - (v109 * v117);
      v122 = ((v13 - v45) + (v17 * v118)) - (v110 * v117);
      v123 = ((v9 * v121) + (v8 * v120)) + (v13 * v122);
      v124 = ((v28 * v121) + (v119 * v120)) + (v29 * v122);
      if (v123 <= v124)
      {
        v125 = ((v28 * v121) + (v119 * v120)) + (v29 * v122);
      }

      else
      {
        v125 = v123;
      }

      if (v123 > v124)
      {
        v123 = ((v28 * v121) + (v119 * v120)) + (v29 * v122);
      }

      v126 = v22 * sqrtf(((v121 * v121) + (v120 * v120)) + (v122 * v122));
      v127 = v123 - v126;
      v128 = v125 + v126;
      v129 = ((v7 * v121) + (v6 * v120)) + (v12 * v122);
      v130 = ((v37 * v121) + (v36 * v120)) + (v38 * v122);
      if (v130 >= v129)
      {
        v131 = v129;
      }

      else
      {
        v131 = ((v37 * v121) + (v36 * v120)) + (v38 * v122);
      }

      if (v130 > v129)
      {
        v129 = ((v37 * v121) + (v36 * v120)) + (v38 * v122);
      }

      v132 = ((v43 * v121) + (v42 * v120)) + (v45 * v122);
      if (v132 < v131)
      {
        v131 = ((v43 * v121) + (v42 * v120)) + (v45 * v122);
      }

      if (v132 > v129)
      {
        v129 = ((v43 * v121) + (v42 * v120)) + (v45 * v122);
      }

      return v129 >= v127 && v128 >= v131;
    }
  }
}

BOOL physx::Gu::intersectEdgeEdge(float *a1, float *a2, float32x2_t *a3, float *a4, float *a5, float *a6, float32x2_t *a7)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a2[1] - v8;
  v10 = a1[2];
  v11 = a2[2] - v10;
  v41[0] = *a2 - *a1;
  v41[1] = v9;
  v41[2] = v11;
  v13 = a3->f32[1];
  v12 = a3[1].f32[0];
  v14 = (v9 * v12) - (v11 * v13);
  v15 = (v11 * a3->f32[0]) - (v41[0] * v12);
  v16 = (v41[0] * v13) - (v9 * a3->f32[0]);
  v17 = ((v8 * v15) + (v14 * v7)) + (v16 * v10);
  v18 = *a4;
  v19 = a4[1];
  v20 = a4[2];
  v21 = (((v15 * v19) + (*a4 * v14)) + (v20 * v16)) - v17;
  v22 = a5[1];
  v23 = a5[2];
  if ((v21 * ((((v15 * v22) + (*a5 * v14)) + (v23 * v16)) - v17)) > 0.0)
  {
    return 0;
  }

  v24 = *a5 - v18;
  v25 = v22 - v19;
  v26 = v23 - v20;
  v27 = ((v15 * v25) + (v14 * v24)) + (v16 * v26);
  if (v27 == 0.0)
  {
    return 0;
  }

  v28 = v21 / v27;
  a7->f32[0] = v18 - (v24 * v28);
  a7->f32[1] = v19 - (v25 * v28);
  a7[1].f32[0] = v20 - (v26 * v28);
  v29 = fabsf(v14);
  v30 = fabsf(v15);
  v31 = fabsf(v16);
  if (v30 > v29 && v30 > v31)
  {
    v33 = 0;
    v34 = 2;
LABEL_10:
    v35 = v33;
    v33 = v34;
    goto LABEL_12;
  }

  v33 = 1;
  if (v31 > v29)
  {
    v34 = 0;
    goto LABEL_10;
  }

  v35 = 2;
LABEL_12:
  v36 = ((v41[v33] * (a7->f32[v35] - a1[v35])) - (v41[v35] * (a7->f32[v33] - a1[v33]))) / ((v41[v33] * a3->f32[v35]) - (v41[v35] * a3->f32[v33]));
  *a6 = v36;
  if (v36 < 0.0)
  {
    return 0;
  }

  v38 = v36 * a3[1].f32[0];
  v39 = vsub_f32(*a7, vmul_n_f32(*a3, v36));
  *a7 = v39;
  v40 = a7[1].f32[0] - v38;
  a7[1].f32[0] = v40;
  return ((((a1[1] - v39.f32[1]) * (a2[1] - v39.f32[1])) + ((*a1 - v39.f32[0]) * (*a2 - v39.f32[0]))) + ((a1[2] - v40) * (a2[2] - v40))) < 0.001;
}

uint64_t physx::Gu::rayAABBIntersect2(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v6 = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  v24 = -1.0;
  v12 = 1;
  v13 = a2;
  do
  {
    v14 = *(a3 + 4 * v6);
    v15 = (a1 + 4 * v6);
    if (v14 >= *v15)
    {
      if (v14 <= *v13)
      {
        goto LABEL_8;
      }

      *(a5 + 4 * v6) = *v13;
      v16 = *(a4 + 4 * v6);
      v15 = v13;
      if (v16 != 0.0)
      {
LABEL_4:
        v12 = 0;
        *(&v22 + v6) = (*v15 - *(a3 + 4 * v6)) / v16;
        goto LABEL_8;
      }
    }

    else
    {
      *(a5 + 4 * v6) = *v15;
      v16 = *(a4 + 4 * v6);
      if (v16 != 0.0)
      {
        goto LABEL_4;
      }
    }

    v12 = 0;
LABEL_8:
    ++v6;
    ++v13;
  }

  while (v6 != 3);
  if (v12)
  {
    *a5 = *a3;
    *(a5 + 8) = *(a3 + 8);
    *a6 = 0.0;
    return 1;
  }

  else
  {
    if (v24 <= *(&v22 | (4 * (v23 > v22))))
    {
      v18 = v23 > v22;
    }

    else
    {
      v18 = 2;
    }

    v19 = *(&v22 + v18);
    if ((LODWORD(v19) & 0x80000000) == 0)
    {
      v20 = 0;
      while (1)
      {
        if (v18 != v20)
        {
          v21 = *(a3 + v20 * 4) + (v19 * *(a4 + v20 * 4));
          *(a5 + v20 * 4) = v21;
          if (v21 < (*(a1 + v20 * 4) + -0.00001) || v21 > (a2[v20] + 0.00001))
          {
            break;
          }
        }

        if (++v20 == 3)
        {
          *a6 = v19;
          return (v18 + 1);
        }
      }
    }

    return 0;
  }
}

uint64_t physx::Gu::intersectRayAABB(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6)
{
  v6 = 0;
  *a5 = -3.4028e38;
  *a6 = 3.4028e38;
  v7 = 3.4028e38;
  v8 = -1;
  do
  {
    v9 = *(a4 + 4 * v6);
    if (fabsf(v9) >= 0.00000011921)
    {
      v11 = *(a3 + 4 * v6);
      v12 = 1.0 / v9;
      v13 = v12 * (*(a1 + 4 * v6) - v11);
      v14 = *(a2 + 4 * v6) - v11;
      v15 = v12 * v14;
      if (v13 <= (v12 * v14))
      {
        v16 = v12 * (*(a1 + 4 * v6) - v11);
      }

      else
      {
        v16 = v12 * v14;
      }

      if (v13 <= (v12 * v14))
      {
        v17 = v12 * v14;
      }

      else
      {
        v17 = v13;
      }

      v18 = *a5;
      if (v16 > *a5)
      {
        if (v13 <= v15)
        {
          v8 = v6;
        }

        else
        {
          v8 = v6 + 3;
        }

        *a5 = v16;
        v7 = *a6;
        v18 = v16;
      }

      if (v17 < v7)
      {
        *a6 = v17;
        v18 = *a5;
        v7 = v17;
      }

      v19 = 0xFFFFFFFFLL;
      if (v7 < 0.00000011921 || v18 > v7)
      {
        return v19;
      }
    }

    else
    {
      v10 = *(a3 + 4 * v6);
      if (v10 < *(a1 + 4 * v6) || v10 > *(a2 + 4 * v6))
      {
        return 0xFFFFFFFFLL;
      }
    }

    ++v6;
  }

  while (v6 != 3);
  if (fmaxf(*a5, 0.00000011921) > v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v8;
  }
}

BOOL physx::Gu::intersectRayAABB2(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float *a5, float *a6, float a7)
{
  v7 = vmaxnm_f32(vabs_f32(*a4), vdup_n_s32(0x3089705Fu));
  v8 = vbsl_s8(vcgez_f32(*a4), v7, vneg_f32(v7));
  __asm { FMOV            V2.2S, #1.0 }

  v14 = vdiv_f32(_D2, v8);
  v15 = vmul_f32(vsub_f32(vadd_f32(*a1, vdup_n_s32(0xB727C5AC)), *a3), v14);
  v16 = vmul_f32(vsub_f32(vadd_f32(*a2, vdup_n_s32(0x3727C5ACu)), *a3), v14);
  v17 = vbsl_s8(vcgt_f32(v16, v15), v15, v16);
  v18 = vbsl_s8(vcgt_f32(v15, v16), v15, v16);
  v15.i32[0] = a4[1].i32[0];
  v19 = fmaxf(fabsf(v15.f32[0]), 0.000000001);
  if (v15.f32[0] < 0.0)
  {
    v20 = -v19;
  }

  else
  {
    v20 = v19;
  }

  v21 = 1.0 / v20;
  v22 = a3[1].f32[0];
  v23 = ((a1[1].f32[0] + -0.00001) - v22) * v21;
  v24 = ((a2[1].f32[0] + 0.00001) - v22) * v21;
  if (v23 >= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  if (v23 > v24)
  {
    v24 = v23;
  }

  if (*v17.i32 <= *&v17.i32[1])
  {
    v17.i32[0] = v17.i32[1];
  }

  if (*v17.i32 <= v25)
  {
    *v17.i32 = v25;
  }

  if (*v18.i32 >= *&v18.i32[1])
  {
    v18.i32[0] = v18.i32[1];
  }

  if (*v18.i32 >= v24)
  {
    *v18.i32 = v24;
  }

  *a5 = fmaxf(*v17.i32, 0.0);
  if (*v18.i32 < a7)
  {
    a7 = *v18.i32;
  }

  *a6 = a7;
  return *a5 < a7;
}

void physx::Gu::intersectRayCapsuleInternal(float32x2_t *a1, float32x2_t *a2, float *a3, float *a4, float *a5, __n128 a6)
{
  v6 = a6.n128_f32[0];
  v7 = a4[1];
  v9 = *a3;
  v8 = a3[1];
  v10 = *a4 - *a3;
  v11 = v7 - v8;
  v12 = a4[2];
  v13 = a3[2];
  v14 = v12 - v13;
  v15 = sqrtf(((v11 * v11) + (v10 * v10)) + (v14 * v14));
  if (v15 != 0.0)
  {
    v10 = v10 * (1.0 / v15);
    v11 = v11 * (1.0 / v15);
    v14 = v14 * (1.0 / v15);
  }

  if (v15 <= 0.000001)
  {
    v21 = a1->f32[1];
    v22 = v21 - v8;
    v23 = a1[1].f32[0];
    v24 = v23 - v13;
    v25 = v22 * v22;
    v26 = (((v21 - v7) * (v21 - v7)) + ((a1->f32[0] - *a4) * (a1->f32[0] - *a4))) + ((v23 - v12) * (v23 - v12));
    if (((v25 + ((a1->f32[0] - v9) * (a1->f32[0] - v9))) + (v24 * v24)) > v26)
    {
      v26 = (v25 + ((a1->f32[0] - v9) * (a1->f32[0] - v9))) + (v24 * v24);
    }

    physx::Gu::intersectRaySphere(a1, a2, a3, a5, (v26 + v6) + (v26 + v6), v6, 0);
    return;
  }

  v16 = 0.0;
  if (v15 <= 0.0)
  {
    v20 = 0.0;
    v19 = 0.0;
  }

  else
  {
    v17 = v14 * v14;
    if (fabsf(v10) >= fabsf(v11))
    {
      v27 = 1.0 / sqrtf(v17 + (v10 * v10));
      v20 = -(v14 * v27);
      v19 = v10 * v27;
    }

    else
    {
      v18 = 1.0 / sqrtf(v17 + (v11 * v11));
      v16 = v14 * v18;
      v19 = -(v11 * v18);
      v20 = 0.0;
    }
  }

  v28 = (v11 * v19) - (v14 * v16);
  v29 = (v14 * v20) - (v10 * v19);
  v30 = (v10 * v16) - (v11 * v20);
  v31 = sqrtf(((v29 * v29) + (v28 * v28)) + (v30 * v30));
  if (v31 > 0.0)
  {
    v32 = 1.0 / v31;
    v28 = v28 * v32;
    v29 = v29 * v32;
    v30 = v30 * v32;
  }

  v33 = a2->f32[1];
  v34 = a2[1].f32[0];
  v35 = ((v16 * v33) + (v20 * a2->f32[0])) + (v19 * v34);
  v36 = ((v29 * v33) + (v28 * a2->f32[0])) + (v30 * v34);
  v37 = ((v11 * v33) + (v10 * a2->f32[0])) + (v14 * v34);
  v38 = sqrtf(((v36 * v36) + (v35 * v35)) + (v37 * v37));
  v39 = 1.0 / v38;
  if (v38 == 0.0)
  {
    v39 = 0.0;
  }

  v40 = a1->f32[0] - v9;
  v41 = a1->f32[1] - v8;
  v42 = a1[1].f32[0] - v13;
  v43 = ((v16 * v41) + (v20 * v40)) + (v19 * v42);
  v44 = ((v29 * v41) + (v28 * v40)) + (v30 * v42);
  v45 = ((v11 * v41) + (v10 * v40)) + (v14 * v42);
  v46 = v6 * v6;
  if (v38 < 0.00000011921 || (v47 = v37 * v39, fabsf(v37 * v39) >= 1.0))
  {
    v52 = (v46 - (v43 * v43)) - (v44 * v44);
    if (v37 >= 0.0 || v52 < 0.0)
    {
      if (v37 <= 0.0 || v52 < 0.0)
      {
        return;
      }

      v56 = sqrtf(v52);
      v54 = -((v45 + v56) * v39);
      v55 = v39 * ((v15 - v45) + v56);
    }

    else
    {
      v53 = sqrtf(v52);
      v54 = v39 * (v45 + v53);
      v55 = -(((v15 - v45) + v53) * v39);
    }

    *a5 = v54;
    a5[1] = v55;
    return;
  }

  v48 = ((v36 * v39) * (v36 * v39)) + ((v35 * v39) * (v35 * v39));
  v49 = (v44 * (v36 * v39)) + (v43 * (v35 * v39));
  v50 = ((v44 * v44) + (v43 * v43)) - v46;
  v51 = (v49 * v49) - (v48 * v50);
  if (v51 < 0.0)
  {
    return;
  }

  if (v51 <= 0.0)
  {
    v62 = -v49 / v48;
    v63 = v45 + (v62 * v47);
    if (v63 >= 0.0 && v63 <= v15)
    {
      *a5 = v39 * v62;
      return;
    }

    v61 = 0;
  }

  else
  {
    v57 = sqrtf(v51);
    v58 = (1.0 / v48) * (-v49 - v57);
    v59 = v45 + (v58 * v47);
    v60 = v59 >= -0.001;
    if (v59 > (v15 + 0.001))
    {
      v60 = 0;
    }

    if (v60)
    {
      *a5 = v39 * v58;
      v61 = 1;
    }

    else
    {
      v61 = 0;
    }

    v65 = (1.0 / v48) * (v57 - v49);
    v66 = v45 + (v65 * v47);
    if (v66 >= -0.001 && v66 <= (v15 + 0.001))
    {
      a5[v61] = v39 * v65;
      if (v60)
      {
        return;
      }

      v61 = 1;
    }
  }

  v68 = v49 + (v45 * v47);
  v69 = v50 + (v45 * v45);
  v70 = -(v69 - (v68 * v68));
  if (v70 <= 0.0)
  {
    if (v70 != 0.0 || (v45 - (v68 * v47)) > 0.0)
    {
      goto LABEL_57;
    }

    v73 = -v68;
  }

  else
  {
    v71 = sqrtf(v70);
    v72 = -v68 - v71;
    if ((v45 + (v72 * v47)) <= 0.0)
    {
      a5[v61] = v39 * v72;
      if (v61 == 1)
      {
        return;
      }

      v61 = 1;
    }

    v73 = v71 - v68;
    if ((v45 + (v73 * v47)) > 0.0)
    {
      goto LABEL_57;
    }
  }

  a5[v61] = v39 * v73;
  if (v61 == 1)
  {
    return;
  }

  v61 = 1;
LABEL_57:
  v74 = v68 - (v47 * v15);
  v75 = -((v69 + (v15 * (v15 + (v45 * -2.0)))) - (v74 * v74));
  if (v75 <= 0.0)
  {
    if (v75 == 0.0 && (v45 - (v74 * v47)) >= v15)
    {
      a5[v61] = v39 * -v74;
    }
  }

  else
  {
    v76 = sqrtf(v75);
    v77 = -v74 - v76;
    if ((v45 + (v77 * v47)) >= v15)
    {
      a5[v61] = v39 * v77;
      if (v61 == 1)
      {
        return;
      }

      v61 = 1;
    }

    v78 = v76 - v74;
    if ((v45 + (v78 * v47)) >= v15)
    {
      a5[v61] = v39 * v78;
    }
  }
}

float physx::Gu::intersectRaySphere(float32x2_t *a1, float32x2_t *a2, float *a3, float *a4, float a5, float a6, uint64_t a7)
{
  v8 = a1[1].f32[0];
  v9 = a2[1].f32[0];
  v10 = fmaxf((sqrtf((((COERCE_FLOAT(HIDWORD(*a1)) - a3[1]) * (COERCE_FLOAT(HIDWORD(*a1)) - a3[1])) + ((COERCE_FLOAT(*a1) - *a3) * (COERCE_FLOAT(*a1) - *a3))) + ((v8 - a3[2]) * (v8 - a3[2]))) - a6) + -10.0, 0.0);
  v13 = vadd_f32(*a1, vmul_n_f32(*a2, v10));
  v14 = v8 + (v9 * v10);
  v12 = v10;
  if (physx::Gu::intersectRaySphereBasic(&v13, a2, a3, a4, a7, a5 - v10, a6))
  {
    result = v12 + *a4;
    *a4 = result;
  }

  return result;
}

uint64_t physx::Gu::intersectRaySphereBasic(float32x2_t *a1, float32x2_t *a2, float *a3, float *a4, uint64_t a5, float a6, float a7)
{
  v7 = a1->f32[1];
  v8 = *a3 - a1->f32[0];
  v9 = a3[1] - v7;
  v10 = a1[1].f32[0];
  v11 = a3[2] - v10;
  v12 = ((v9 * v9) + (v8 * v8)) + (v11 * v11);
  if (v12 <= (a7 * a7))
  {
    if (a5)
    {
      *a5 = a1->i32[0];
      *(a5 + 4) = v7;
      *(a5 + 8) = v10;
    }

    *a4 = 0.0;
  }

  else
  {
    v13 = ((v9 * a2->f32[1]) + (a2->f32[0] * v8)) + (a2[1].f32[0] * v11);
    if (v13 <= 0.0 || (v13 - a6) > a7)
    {
      return 0;
    }

    v15 = (a7 * a7) - (v12 - (v13 * v13));
    if (v15 < 0.0)
    {
      return 0;
    }

    v16 = v13 - sqrtf(v15);
    *a4 = v16;
    if (v16 > a6)
    {
      return 0;
    }

    if (a5)
    {
      v18 = (v16 * a2[1].f32[0]) + a1[1].f32[0];
      *a5 = vadd_f32(vmul_n_f32(*a2, v16), *a1);
      *(a5 + 8) = v18;
    }
  }

  return 1;
}

BOOL physx::Gu::intersectSphereBox(physx::Gu *this, const Sphere *a2, const physx::Gu::Box *a3)
{
  v3 = *(a2 + 8);
  v4 = *this - *(a2 + 9);
  v5 = *(this + 1) - *(a2 + 10);
  v6 = *(this + 2) - *(a2 + 11);
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = ((v5 * v7) + (*a2 * v4)) + (v8 * v6);
  v11 = *(a2 + 4);
  v12 = *(a2 + 5);
  v13 = ((v5 * v11) + (v9 * v4)) + (v12 * v6);
  v14 = *(a2 + 6);
  v15 = *(a2 + 7);
  v16 = *(a2 + 12);
  v17 = *(a2 + 13);
  v18 = -v16;
  if (v10 > v16)
  {
    v19 = 1;
  }

  else
  {
    v16 = ((v5 * v7) + (*a2 * v4)) + (v8 * v6);
    v19 = 0;
  }

  v20 = v10 < v18;
  v21 = ((v5 * v15) + (v14 * v4)) + (v3 * v6);
  if (v10 >= v18)
  {
    v22 = v16;
  }

  else
  {
    v22 = v18;
  }

  if (v20)
  {
    v19 = 1;
  }

  v23 = -v17;
  if (v13 > v17)
  {
    v19 = 1;
  }

  else
  {
    v17 = ((v5 * v11) + (v9 * v4)) + (v12 * v6);
  }

  v24 = v13 < v23;
  if (v13 >= v23)
  {
    v25 = v17;
  }

  else
  {
    v25 = v23;
  }

  if (v24)
  {
    v19 = 1;
  }

  v26 = *(a2 + 14);
  v27 = -v26;
  result = 1;
  if (v21 < -v26 || (v21 <= v26 ? (v27 = ((v5 * v15) + (v14 * v4)) + (v3 * v6)) : (v19 = 1, v27 = *(a2 + 14)), v19 == 1))
  {
    v28 = v6 - (((v8 * v22) + (v12 * v25)) + (v3 * v27));
    if (((((v5 - (((v7 * v22) + (v11 * v25)) + (v15 * v27))) * (v5 - (((v7 * v22) + (v11 * v25)) + (v15 * v27)))) + ((v4 - (((*a2 * v22) + (v9 * v25)) + (v14 * v27))) * (v4 - (((*a2 * v22) + (v9 * v25)) + (v14 * v27))))) + (v28 * v28)) > (*(this + 3) * *(this + 3)))
    {
      return 0;
    }
  }

  return result;
}

BOOL physx::Gu::intersectTriangleBox_Unsafe(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5 = *a1;
  v6 = vsubq_f32(*a3, *a1);
  v7 = *a4;
  v8 = *a5;
  if ((atomic_load_explicit(_MergedGlobals_584, memory_order_acquire) & 1) == 0)
  {
    v67 = a2;
    v73 = v6;
    v71 = v7;
    v72 = v5;
    v70 = v8;
    v68 = __cxa_guard_acquire(_MergedGlobals_584);
    v8 = v70;
    v7 = v71;
    v5 = v72;
    v6 = v73;
    a2 = v67;
    if (v68)
    {
      *&v69 = 0x8000000080000000;
      *(&v69 + 1) = 0x8000000080000000;
      xmmword_1EE1C4A30 = v69;
      __cxa_guard_release(_MergedGlobals_584);
      v8 = v70;
      v7 = v71;
      v5 = v72;
      v6 = v73;
      a2 = v67;
    }
  }

  v9 = *a2;
  if ((~vuzp1_s8(vmovn_s32(vcgeq_f32(*a2, vabsq_f32(v6))), *a2->f32).u32[0] & 0xFFFFFF) == 0)
  {
    return 1;
  }

  v11 = vsubq_f32(v7, v5);
  v12 = vsubq_f32(v8, v5);
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vminq_f32(vminq_f32(v6, v11), v12), v9)), *v9.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vsubq_f32(0, v9), vmaxq_f32(vmaxq_f32(v6, v11), v12))), *v9.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v13 = vsubq_f32(v11, v6);
  v14 = vsubq_f32(v12, v11);
  v15 = vextq_s8(v13, v13, 8uLL).u64[0];
  v16 = vextq_s8(v14, v14, 8uLL).u64[0];
  v17 = vmls_f32(vmul_f32(*v13.i8, *&vextq_s8(v14, v14, 4uLL)), *&vextq_s8(v13, v13, 4uLL), *v14.i8);
  *v18.i8 = vext_s8(v17, vmls_f32(vmul_f32(v15, *v14.i8), *v13.i8, v16), 4uLL);
  v18.i64[1] = v17.u32[0];
  v19 = v18;
  v19.i32[3] = 0;
  v20 = vandq_s8(xmmword_1EE1C4A30, v18);
  v21 = v6;
  v21.i32[3] = 0;
  v22 = vmulq_f32(v21, v19);
  v22.i64[0] = vpaddq_f32(v22, v22).u64[0];
  v23 = vpadd_f32(*v22.f32, *v22.f32);
  v24 = vorrq_s8(v20, v9);
  v24.i32[3] = 0;
  v25 = vmulq_f32(v19, v24);
  v25.i64[0] = vpaddq_f32(v25, v25).u64[0];
  *v25.f32 = vcgt_f32(v23, vpadd_f32(*v25.f32, *v25.f32));
  if ((vuzp1_s8(vuzp1_s16(*v25.f32, *v25.f32), *v9.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v26 = vorrq_s8(veorq_s8(v20, xmmword_1EE1C4A30), v9);
  v26.i32[3] = 0;
  v27 = vmulq_f32(v19, v26);
  v27.i64[0] = vpaddq_f32(v27, v27).u64[0];
  *v27.f32 = vcgt_f32(vpadd_f32(*v27.f32, *v27.f32), v23);
  if ((vuzp1_s8(vuzp1_s16(*v27.f32, *v27.f32), *v9.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  *v28.f32 = vext_s8(*v13.i8, v15, 4uLL);
  v28.i64[1] = __PAIR64__(v15.u32[1], v13.u32[0]);
  v29.i64[0] = vextq_s8(v6, v6, 4uLL).u64[0];
  v29.i64[1] = __PAIR64__(vextq_s8(v6, v6, 8uLL).u32[1], v6.u32[0]);
  v30 = vextq_s8(v11, v11, 8uLL).u64[0];
  *v31.f32 = vext_s8(*v11.i8, v30, 4uLL);
  v31.i64[1] = __PAIR64__(v30.u32[1], v11.u32[0]);
  v32 = vmlsq_f32(vmulq_f32(v6, v28), v13, v29);
  v33 = vmlsq_f32(vmulq_f32(v11, v28), v13, v31);
  v34 = vextq_s8(v12, v12, 8uLL).u64[0];
  *v35.f32 = vext_s8(*v12.i8, v34, 4uLL);
  v35.i64[1] = __PAIR64__(v34.u32[1], v12.u32[0]);
  v36 = vmlsq_f32(vmulq_f32(v12, v28), v13, v35);
  v37 = vabsq_f32(v13);
  v38 = vextq_s8(v37, v37, 8uLL).u64[0];
  *v39.f32 = vext_s8(*v37.i8, v38, 4uLL);
  v40.i64[0] = vextq_s8(v9, v9, 4uLL).u64[0];
  v40.i64[1] = __PAIR64__(vextq_s8(v9, v9, 8uLL).u32[1], v9.u32[0]);
  v41 = vmulq_f32(v37, v40);
  v37.i32[1] = v38.i32[1];
  v39.i64[1] = v37.i64[0];
  v42 = vmlaq_f32(v41, v39, v9);
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vminq_f32(vminq_f32(v32, v33), v36), v42)), *v9.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vsubq_f32(0, v42), vmaxq_f32(vmaxq_f32(v32, v33), v36))), *v9.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v43 = vnegq_f32(v29);
  v44 = vnegq_f32(v31);
  *v45.f32 = vext_s8(*v14.i8, v16, 4uLL);
  v45.i64[1] = __PAIR64__(v16.u32[1], v14.u32[0]);
  v46 = vnegq_f32(v35);
  v47 = vmlaq_f32(vmulq_f32(v6, v45), v14, v43);
  v48 = vmlaq_f32(vmulq_f32(v11, v45), v14, v44);
  v49 = vmlaq_f32(vmulq_f32(v12, v45), v14, v46);
  v50 = vabsq_f32(v14);
  v51 = vextq_s8(v50, v50, 8uLL).u64[0];
  *v52.f32 = vext_s8(*v50.i8, v51, 4uLL);
  v53 = vmulq_f32(v50, v40);
  v50.i32[1] = v51.i32[1];
  v52.i64[1] = v50.i64[0];
  v54 = vmlaq_f32(v53, v52, v9);
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vminq_f32(vminq_f32(v47, v48), v49), v54)), *v9.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vsubq_f32(0, v54), vmaxq_f32(vmaxq_f32(v47, v48), v49))), *v9.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v55 = vsubq_f32(v6, v12);
  v56 = vextq_s8(v55, v55, 8uLL).u64[0];
  *v57.f32 = vext_s8(*v55.i8, v56, 4uLL);
  v57.i64[1] = __PAIR64__(v56.u32[1], v55.u32[0]);
  v58 = vmlaq_f32(vmulq_f32(v6, v57), v55, v43);
  v59 = vmlaq_f32(vmulq_f32(v11, v57), v55, v44);
  v60 = vmlaq_f32(vmulq_f32(v12, v57), v55, v46);
  v61 = vabdq_f32(v6, v12);
  v57.i64[0] = vextq_s8(v61, v61, 8uLL).u64[0];
  *v62.f32 = vext_s8(*v61.i8, *v57.f32, 4uLL);
  v63 = vmulq_f32(v61, v40);
  v61.i32[1] = v57.i32[1];
  v62.i64[1] = v61.i64[0];
  v64 = vmlaq_f32(v63, v62, v9);
  v65 = vmovn_s32(vcgtq_f32(vminq_f32(vminq_f32(v58, v59), v60), v64));
  if ((vuzp1_s8(v65, v65).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v66 = vmovn_s32(vcgtq_f32(vsubq_f32(0, v64), vmaxq_f32(vmaxq_f32(v58, v59), v60)));
  return (vuzp1_s8(v66, v66).u32[0] & 0xFFFFFF) == 0;
}

BOOL physx::Gu::intersectTriangleBox(uint64_t a1, float *a2, float *a3, float *a4, double a5, float32x4_t a6, float32x4_t a7)
{
  v8 = *(a1 + 32);
  a6.i32[0] = *(a1 + 36);
  v9 = *a2 - a6.f32[0];
  v10 = *(a1 + 40);
  a7.i32[0] = *(a1 + 44);
  v11 = a2[1] - v10;
  v12 = a2[2] - a7.f32[0];
  v13 = *a1;
  v14 = *(a1 + 4);
  v15 = *(a1 + 8);
  v16 = *(a1 + 12);
  *v7.i32 = ((v11 * v14) + (*a1 * v9)) + (v15 * v12);
  v18 = *(a1 + 16);
  v17 = *(a1 + 20);
  v19 = *(a1 + 24);
  v20 = *(a1 + 28);
  *&v7.i32[1] = ((v11 * v18) + (v16 * v9)) + (v17 * v12);
  *&v7.i32[2] = ((v11 * v20) + (v19 * v9)) + (v8 * v12);
  v21 = *a3;
  v22 = a3[1];
  v23 = a3[2];
  v24 = *a4;
  v25 = a4[1];
  v26 = a4[2];
  if ((atomic_load_explicit(_MergedGlobals_584, memory_order_acquire) & 1) == 0)
  {
    v92 = a1;
    v98 = a6.i32[0];
    v99 = v8;
    v100 = v13;
    v101 = a7.i32[0];
    v97 = v15;
    v102 = v17;
    v103 = v16;
    v104 = v19;
    v105 = v10;
    v106 = v14;
    v107 = v20;
    v108 = v18;
    v109 = v26;
    v110 = v23;
    v111 = v21;
    v112 = v24;
    v113 = v22;
    v114 = v25;
    v96 = v7;
    v93 = __cxa_guard_acquire(_MergedGlobals_584);
    v7 = v96;
    v22 = v113;
    v25 = v114;
    v21 = v111;
    v24 = v112;
    v26 = v109;
    v23 = v110;
    v20 = v107;
    v18 = v108;
    v14 = v106;
    v19 = v104;
    v10 = v105;
    v17 = v102;
    v16 = v103;
    v13 = v100;
    a7.i32[0] = v101;
    v15 = v97;
    a6.i32[0] = v98;
    v8 = v99;
    v94 = v93;
    a1 = v92;
    if (v94)
    {
      *&v95 = 0x8000000080000000;
      *(&v95 + 1) = 0x8000000080000000;
      xmmword_1EE1C4A30 = v95;
      __cxa_guard_release(_MergedGlobals_584);
      v7 = v96;
      v22 = v113;
      v25 = v114;
      v21 = v111;
      v24 = v112;
      v26 = v109;
      v23 = v110;
      v20 = v107;
      v18 = v108;
      v14 = v106;
      v19 = v104;
      v10 = v105;
      v17 = v102;
      v16 = v103;
      v13 = v100;
      a7.i32[0] = v101;
      v15 = v97;
      a6.i32[0] = v98;
      v8 = v99;
      a1 = v92;
    }
  }

  v27 = *(a1 + 48);
  if ((~vuzp1_s8(vmovn_s32(vcgeq_f32(v27, vabsq_f32(v7))), *v27.i8).u32[0] & 0xFFFFFF) == 0)
  {
    return 1;
  }

  v29 = v22 - v10;
  v30 = v25 - v10;
  v31 = v21 - a6.f32[0];
  v32 = v14 * v29;
  v33 = v18 * v29;
  v34 = v24 - a6.f32[0];
  a6.f32[0] = v14 * v30;
  v35 = v18 * v30;
  v36 = v23 - a7.f32[0];
  v37 = v26 - a7.f32[0];
  a7.f32[0] = (v32 + (v13 * v31)) + (v15 * (v23 - a7.f32[0]));
  a6.f32[0] = (a6.f32[0] + (v13 * v34)) + (v15 * v37);
  a7.f32[1] = (v33 + (v16 * v31)) + (v17 * v36);
  a6.f32[1] = (v35 + (v16 * v34)) + (v17 * v37);
  a7.f32[2] = ((v20 * v29) + (v19 * v31)) + (v8 * v36);
  a6.f32[2] = ((v20 * v30) + (v19 * v34)) + (v8 * v37);
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vminq_f32(vminq_f32(v7, a7), a6), v27)), *v27.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vsubq_f32(0, v27), vmaxq_f32(vmaxq_f32(v7, a7), a6))), *v27.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v38 = vsubq_f32(a7, v7);
  v39 = vsubq_f32(a6, a7);
  v40 = vextq_s8(v38, v38, 8uLL).u64[0];
  v41 = vextq_s8(v39, v39, 8uLL).u64[0];
  v42 = vmls_f32(vmul_f32(*v38.i8, *&vextq_s8(v39, v39, 4uLL)), *&vextq_s8(v38, v38, 4uLL), *v39.i8);
  *v43.i8 = vext_s8(v42, vmls_f32(vmul_f32(v40, *v39.i8), *v38.i8, v41), 4uLL);
  v43.i64[1] = v42.u32[0];
  v44 = v43;
  v44.i32[3] = 0;
  v45 = vandq_s8(xmmword_1EE1C4A30, v43);
  v46 = v7;
  v46.i32[3] = 0;
  v47 = vmulq_f32(v46, v44);
  v47.i64[0] = vpaddq_f32(v47, v47).u64[0];
  v48 = vpadd_f32(*v47.f32, *v47.f32);
  v49 = vorrq_s8(v45, v27);
  v49.i32[3] = 0;
  v50 = vmulq_f32(v44, v49);
  v50.i64[0] = vpaddq_f32(v50, v50).u64[0];
  *v50.f32 = vcgt_f32(v48, vpadd_f32(*v50.f32, *v50.f32));
  if ((vuzp1_s8(vuzp1_s16(*v50.f32, *v50.f32), *v27.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v51 = vorrq_s8(veorq_s8(v45, xmmword_1EE1C4A30), v27);
  v51.i32[3] = 0;
  v52 = vmulq_f32(v44, v51);
  v52.i64[0] = vpaddq_f32(v52, v52).u64[0];
  *v52.f32 = vcgt_f32(vpadd_f32(*v52.f32, *v52.f32), v48);
  if ((vuzp1_s8(vuzp1_s16(*v52.f32, *v52.f32), *v27.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  *v53.f32 = vext_s8(*v38.i8, v40, 4uLL);
  v53.i64[1] = __PAIR64__(v40.u32[1], v38.u32[0]);
  v54.i64[0] = vextq_s8(v7, v7, 4uLL).u64[0];
  v54.i64[1] = __PAIR64__(vextq_s8(v7, v7, 8uLL).u32[1], v7.u32[0]);
  v55 = vextq_s8(a7, a7, 8uLL).u64[0];
  *v56.f32 = vext_s8(*a7.f32, v55, 4uLL);
  v56.i64[1] = __PAIR64__(v55.u32[1], a7.u32[0]);
  v57 = vmlsq_f32(vmulq_f32(v7, v53), v38, v54);
  v58 = vmlsq_f32(vmulq_f32(a7, v53), v38, v56);
  v59 = vextq_s8(a6, a6, 8uLL).u64[0];
  *v60.f32 = vext_s8(*a6.f32, v59, 4uLL);
  v60.i64[1] = __PAIR64__(v59.u32[1], a6.u32[0]);
  v61 = vmlsq_f32(vmulq_f32(a6, v53), v38, v60);
  v62 = vabsq_f32(v38);
  v63 = vextq_s8(v62, v62, 8uLL).u64[0];
  *v64.f32 = vext_s8(*v62.i8, v63, 4uLL);
  v65.i64[0] = vextq_s8(v27, v27, 4uLL).u64[0];
  v65.i64[1] = __PAIR64__(vextq_s8(v27, v27, 8uLL).u32[1], v27.u32[0]);
  v66 = vmulq_f32(v62, v65);
  v62.i32[1] = v63.i32[1];
  v64.i64[1] = v62.i64[0];
  v67 = vmlaq_f32(v66, v64, v27);
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vminq_f32(vminq_f32(v57, v58), v61), v67)), *v27.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vsubq_f32(0, v67), vmaxq_f32(vmaxq_f32(v57, v58), v61))), *v27.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v68 = vnegq_f32(v54);
  v69 = vnegq_f32(v56);
  *v70.f32 = vext_s8(*v39.i8, v41, 4uLL);
  v70.i64[1] = __PAIR64__(v41.u32[1], v39.u32[0]);
  v71 = vnegq_f32(v60);
  v72 = vmlaq_f32(vmulq_f32(v7, v70), v39, v68);
  v73 = vmlaq_f32(vmulq_f32(a7, v70), v39, v69);
  v74 = vmlaq_f32(vmulq_f32(a6, v70), v39, v71);
  v75 = vabsq_f32(v39);
  v76 = vextq_s8(v75, v75, 8uLL).u64[0];
  *v77.f32 = vext_s8(*v75.i8, v76, 4uLL);
  v78 = vmulq_f32(v75, v65);
  v75.i32[1] = v76.i32[1];
  v77.i64[1] = v75.i64[0];
  v79 = vmlaq_f32(v78, v77, v27);
  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vminq_f32(vminq_f32(v72, v73), v74), v79)), *v27.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  if ((vuzp1_s8(vmovn_s32(vcgtq_f32(vsubq_f32(0, v79), vmaxq_f32(vmaxq_f32(v72, v73), v74))), *v27.i8).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v80 = vsubq_f32(v7, a6);
  v81 = vextq_s8(v80, v80, 8uLL).u64[0];
  *v82.f32 = vext_s8(*v80.i8, v81, 4uLL);
  v82.i64[1] = __PAIR64__(v81.u32[1], v80.u32[0]);
  v83 = vmlaq_f32(vmulq_f32(v7, v82), v80, v68);
  v84 = vmlaq_f32(vmulq_f32(a7, v82), v80, v69);
  v85 = vmlaq_f32(vmulq_f32(a6, v82), v80, v71);
  v86 = vabdq_f32(v7, a6);
  v82.i64[0] = vextq_s8(v86, v86, 8uLL).u64[0];
  *v87.f32 = vext_s8(*v86.i8, *v82.f32, 4uLL);
  v88 = vmulq_f32(v86, v65);
  v86.i32[1] = v82.i32[1];
  v87.i64[1] = v86.i64[0];
  v89 = vmlaq_f32(v88, v87, v27);
  v90 = vmovn_s32(vcgtq_f32(vminq_f32(vminq_f32(v83, v84), v85), v89));
  if ((vuzp1_s8(v90, v90).u32[0] & 0xFFFFFF) != 0)
  {
    return 0;
  }

  v91 = vmovn_s32(vcgtq_f32(vsubq_f32(0, v89), vmaxq_f32(vmaxq_f32(v83, v84), v85)));
  return (vuzp1_s8(v91, v91).u32[0] & 0xFFFFFF) == 0;
}

uint64_t physx::Gu::sweepSphereSphere(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float *a4, float32x2_t *a5, float a6, float a7)
{
  v7 = a2->f32[1];
  v8 = a2[1].f32[0];
  v9 = a1->f32[1];
  v10 = a1[1].f32[0];
  v11 = a2->f32[0] - a1->f32[0];
  v12 = v7 - v9;
  v13 = v8 - v10;
  v14 = (((v12 * v12) + (v11 * v11)) + (v13 * v13)) - ((a6 + a7) * (a6 + a7));
  if (v14 <= 0.0 || (v15 = (v8 + a3[1].f32[0]) - v8, v16 = ((a2->f32[0] + a3->f32[0]) - a2->f32[0]) - (a1->f32[0] - a1->f32[0]), v17 = ((v7 + a3->f32[1]) - v7) - (v9 - v9), v18 = v15 - (v10 - v10), v19 = ((v17 * v17) + (v16 * v16)) + (v18 * v18), v19 == 0.0))
  {
    *a4 = 0.0;
  }

  else
  {
    v20 = (((v12 * v17) + (v16 * v11)) + (v18 * v13)) + (((v12 * v17) + (v16 * v11)) + (v18 * v13));
    v21 = (v14 * (v19 * -4.0)) + (v20 * v20);
    if (v21 < 0.0)
    {
      return 0;
    }

    v22 = sqrtf(v21);
    v23 = 1.0 / (v19 + v19);
    v24 = -v20;
    v25 = v23 * (v22 - v20);
    v26 = v23 * (v24 - v22);
    if (v25 <= v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    if (v25 > v26)
    {
      v26 = v25;
    }

    *a4 = v27;
    if (v26 < 0.0 || v27 > 1.0)
    {
      return 0;
    }

    if (v27 != 0.0)
    {
      v34 = (v27 * a3[1].f32[0]) + a2[1].f32[0];
      v30 = vsub_f32(vadd_f32(vmul_n_f32(*a3, v27), *a2), *a1);
      v31 = v34 - a1[1].f32[0];
      goto LABEL_16;
    }
  }

  v30 = vneg_f32(*a3);
  v31 = -a3[1].f32[0];
LABEL_16:
  *a5 = v30;
  a5[1].f32[0] = v31;
  v32 = sqrtf((COERCE_FLOAT(vmul_f32(v30, v30).i32[1]) + (v30.f32[0] * v30.f32[0])) + (v31 * v31));
  if (v32 > 0.0)
  {
    v33 = 1.0 / v32;
    *a5 = vmul_n_f32(v30, v33);
    a5[1].f32[0] = v31 * v33;
  }

  return 1;
}

uint64_t physx::Gu::sweepSphereVSTri(uint64_t a1, float *a2, float32x2_t *a3, float32x2_t *a4, float *a5, _BYTE *a6, int a7, __n128 a8)
{
  v10 = a8.n128_f32[0];
  v123 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  v11 = *(a1 + 20);
  v12 = *(a1 + 8);
  v13 = v11 - v12;
  v14 = *(a1 + 12);
  v15 = *a1;
  v16 = vsub_f32(v14, *a1);
  v17 = *(a1 + 24);
  v18 = vsub_f32(v17, *a1);
  v19 = *(a1 + 32);
  _S20 = v19 - v12;
  if (!a7)
  {
    goto LABEL_28;
  }

  v21 = a3->f32[0];
  v22 = a3->f32[1];
  v23 = a3->f32[0] - v15.f32[0];
  v24 = a3[1].f32[0];
  v25 = (vmuls_lane_f32(v22 - v15.f32[1], v16, 1) + (v16.f32[0] * v23)) + (v13 * (v24 - v12));
  v26 = (vmuls_lane_f32(v22 - v15.f32[1], v18, 1) + (v18.f32[0] * v23)) + (_S20 * (v24 - v12));
  if (v25 > 0.0 || (v27 = *(a1 + 8), v28 = *a1, v26 > 0.0))
  {
    v29 = ((v16.f32[1] * (v22 - v14.f32[1])) + (v16.f32[0] * (v21 - v14.f32[0]))) + (v13 * (v24 - v11));
    v30 = ((v18.f32[1] * (v22 - v14.f32[1])) + (v18.f32[0] * (v21 - v14.f32[0]))) + (_S20 * (v24 - v11));
    v31 = v29 < 0.0 || v30 > v29;
    v27 = *(a1 + 20);
    v28 = *(a1 + 12);
    if (v31)
    {
      v32 = (v25 * v30) - (v29 * v26);
      if (v29 > 0.0 || v25 < 0.0 || v32 > 0.0)
      {
        v36 = ((v16.f32[1] * (v22 - v17.f32[1])) + (v16.f32[0] * (v21 - v17.f32[0]))) + (v13 * (v24 - v19));
        v37 = ((v18.f32[1] * (v22 - v17.f32[1])) + (v18.f32[0] * (v21 - v17.f32[0]))) + (_S20 * (v24 - v19));
        v38 = v37 < 0.0 || v36 > v37;
        v27 = *(a1 + 32);
        v28 = *(a1 + 24);
        if (!v38)
        {
          goto LABEL_27;
        }

        v39 = (v36 * v26) - (v25 * v37);
        if (v37 > 0.0 || v39 > 0.0 || v26 < 0.0)
        {
          v41 = (v29 * v37) - (v36 * v30);
          if (v41 <= 0.0 && (v42 = v30 - v29, v42 >= 0.0) && (v36 - v37) >= 0.0)
          {
            v117 = v42 / (v42 + (v36 - v37));
            v28 = vadd_f32(v14, vmul_n_f32(vsub_f32(v17, v14), v117));
            v27 = v11 + ((v19 - v11) * v117);
          }

          else
          {
            v43 = 1.0 / (v32 + (v41 + v39));
            v44 = v39 * v43;
            v45 = v32 * v43;
            v28 = vadd_f32(vmul_n_f32(v18, v45), vadd_f32(v15, vmul_n_f32(v16, v44)));
            v27 = (_S20 * v45) + (v12 + (v13 * v44));
          }

          goto LABEL_27;
        }

        v40 = v26 / (v26 - v37);
        v34 = vmul_n_f32(v18, v40);
        v35 = _S20 * v40;
      }

      else
      {
        v33 = v25 / (v25 - v29);
        v34 = vmul_n_f32(v16, v33);
        v35 = v13 * v33;
      }

      v28 = vadd_f32(v15, v34);
      v27 = v12 + v35;
    }
  }

LABEL_27:
  if (((((v28.f32[1] - v22) * (v28.f32[1] - v22)) + ((v28.f32[0] - v21) * (v28.f32[0] - v21))) + ((v27 - v24) * (v27 - v24))) <= (v10 * v10))
  {
    *a5 = 0.0;
    return 1;
  }

LABEL_28:
  _D2 = *a4;
  v47 = a4[1].f32[0];
  __asm { FMLA            S26, S20, V2.S[1] }

  v52 = (v47 * v18.f32[0]) - (COERCE_FLOAT(*a4) * _S20);
  v53 = (-COERCE_FLOAT(HIDWORD(*a4)) * v18.f32[0]) + (COERCE_FLOAT(*a4) * v18.f32[1]);
  v54 = (vmuls_lane_f32(v52, v16, 1) + (v16.f32[0] * _S26)) + (v13 * v53);
  if (fabsf(v54) < 0.00001)
  {
    return 0;
  }

  v56 = a2[1];
  v57 = a2[2] * v10;
  v58 = ((_D2.f32[1] * (v56 * v10)) + (_D2.f32[0] * (*a2 * v10))) + (v47 * v57);
  v59 = -v57;
  if (v58 >= 0.0)
  {
    v60 = -(v56 * v10);
  }

  else
  {
    v59 = a2[2] * v10;
    v60 = v56 * v10;
  }

  if (v58 >= 0.0)
  {
    v61 = -(*a2 * v10);
  }

  else
  {
    v61 = *a2 * v10;
  }

  v62 = a3[1].f32[0];
  v63 = v62 - v59;
  v64 = *a3;
  v65 = (COERCE_FLOAT(*a3) - v61) - v15.f32[0];
  v66 = (COERCE_FLOAT(HIDWORD(*a3)) - v60) - v15.f32[1];
  v67 = v63 - v12;
  v68 = (1.0 / v54) * (((v52 * v66) + (v65 * _S26)) + (v67 * v53));
  v69 = (v66 * v13) - (v67 * v16.f32[1]);
  v70 = (v67 * v16.f32[0]) - (v65 * v13);
  v71 = (v65 * v16.f32[1]) - (v66 * v16.f32[0]);
  v72 = (1.0 / v54) * (((_D2.f32[1] * v70) + (_D2.f32[0] * v69)) + (v47 * v71));
  if (v68 >= 0.0 && v68 <= 1.0 && v72 >= 0.0 && (v68 + v72) <= 1.0)
  {
    v90 = (1.0 / v54) * (((v18.f32[1] * v70) + (v18.f32[0] * v69)) + (_S20 * v71));
    if (v90 < 0.0)
    {
      return 0;
    }

    *a5 = v90;
    result = 1;
    *a6 = 1;
    return result;
  }

  if (v68 >= 0.0)
  {
    if (v72 >= 0.0)
    {
      v100 = 2;
    }

    else
    {
      if ((v68 + v72) <= 1.0)
      {
LABEL_65:
        v80 = 0;
        goto LABEL_66;
      }

      v82 = vmuls_lane_f32(v72, v17, 1);
      v83 = (v68 * v14.f32[0]) + (v72 * v17.f32[0]);
      v84 = (v11 * v68) + (v19 * v72);
      v85 = (1.0 - v68) - v72;
      v86 = v15.f32[1] * v85;
      v87 = v12 * v85;
      v88 = v83 + (v15.f32[0] * v85);
      v89 = (vmuls_lane_f32(v68, v14, 1) + v82) + v86;
      if ((((v16.f32[1] * (v89 - v15.f32[1])) + (v16.f32[0] * (v88 - v15.f32[0]))) + (v13 * ((v84 + v87) - v12))) >= (((v16.f32[1] * v16.f32[1]) + (v16.f32[0] * v16.f32[0])) + (v13 * v13)))
      {
        v14.f32[0] = vsub_f32(v14, v17).f32[0];
        v80 = 1;
        if (((((v14.f32[1] - v17.f32[1]) * (v89 - v17.f32[1])) + (v14.f32[0] * (v88 - v17.f32[0]))) + ((v11 - v19) * ((v84 + v87) - v19))) < ((((v14.f32[1] - v17.f32[1]) * (v14.f32[1] - v17.f32[1])) + (v14.f32[0] * v14.f32[0])) + ((v11 - v19) * (v11 - v19))))
        {
          goto LABEL_68;
        }

        goto LABEL_61;
      }

      v100 = 0;
    }

    v80 = 1;
    goto LABEL_71;
  }

  if (v72 < 0.0)
  {
    v75 = (1.0 - v68) - v72;
    v76 = ((v68 * v14.f32[0]) + (v72 * v17.f32[0])) + (v15.f32[0] * v75);
    v77 = (vmuls_lane_f32(v68, v14, 1) + vmuls_lane_f32(v72, v17, 1)) + (v15.f32[1] * v75);
    v78 = ((v11 * v68) + (v19 * v72)) + (v12 * v75);
    v79 = vsub_f32(v15, v14).f32[0];
    if (((((v15.f32[1] - v14.f32[1]) * (v77 - v14.f32[1])) + (v79 * (v76 - v14.f32[0]))) + ((v12 - v11) * (v78 - v11))) >= ((((v15.f32[1] - v14.f32[1]) * (v15.f32[1] - v14.f32[1])) + (v79 * v79)) + ((v12 - v11) * (v12 - v11))))
    {
      v80 = 0;
      v81 = vsub_f32(v15, v17).f32[0];
      if (((((v15.f32[1] - v17.f32[1]) * (v77 - v17.f32[1])) + (v81 * (v76 - v17.f32[0]))) + ((v12 - v19) * (v78 - v19))) < ((((v15.f32[1] - v17.f32[1]) * (v15.f32[1] - v17.f32[1])) + (v81 * v81)) + ((v12 - v19) * (v12 - v19))))
      {
        goto LABEL_68;
      }

LABEL_61:
      v119.i32[0] = 0;
      physx::Gu::intersectRaySphere(a3, a4, (a1 + 12 * v80), &v119, 3.4028e38, v10, 0);
      if ((v99 & 1) == 0)
      {
        return 0;
      }

      *a5 = v119.f32[0];
      return 1;
    }

    goto LABEL_65;
  }

  if ((v68 + v72) <= 1.0)
  {
    v80 = 0;
LABEL_68:
    v100 = 2;
    goto LABEL_71;
  }

  v91 = vmuls_lane_f32(v72, v17, 1);
  v92 = (v68 * v14.f32[0]) + (v72 * v17.f32[0]);
  v93 = (v11 * v68) + (v19 * v72);
  v94 = (1.0 - v68) - v72;
  v95 = v15.f32[1] * v94;
  v96 = v12 * v94;
  v97 = v92 + (v15.f32[0] * v94);
  v98 = (vmuls_lane_f32(v68, v14, 1) + v91) + v95;
  if ((((v18.f32[1] * (v98 - v15.f32[1])) + (v18.f32[0] * (v97 - v15.f32[0]))) + (_S20 * ((v93 + v96) - v12))) >= (((v18.f32[1] * v18.f32[1]) + (v18.f32[0] * v18.f32[0])) + (_S20 * _S20)))
  {
    v17.f32[0] = vsub_f32(v17, v14).f32[0];
    v80 = 2;
    if (((((v17.f32[1] - v14.f32[1]) * (v98 - v14.f32[1])) + (v17.f32[0] * (v97 - v14.f32[0]))) + ((v19 - v11) * ((v93 + v96) - v11))) >= ((((v17.f32[1] - v14.f32[1]) * (v17.f32[1] - v14.f32[1])) + (v17.f32[0] * v17.f32[0])) + ((v19 - v11) * (v19 - v11))))
    {
      goto LABEL_61;
    }

LABEL_66:
    v100 = 1;
    goto LABEL_71;
  }

  v100 = 0;
  v80 = 2;
LABEL_71:
  v101 = (a1 + 12 * v80);
  v102 = (a1 + 12 * v100);
  v103 = v101[1].f32[0];
  v104 = v102[1].f32[0] - v103;
  v105 = vsub_f32(*v102, *v101);
  a8.n128_u64[0] = vsub_f32(v64, *v101);
  v106 = v62 - v103;
  v107 = (COERCE_FLOAT(vmul_f32(v105, *&a8).i32[1]) + (a8.n128_f32[0] * v105.f32[0])) + (v106 * v104);
  if (v107 > 0.0)
  {
    v108 = (vmuls_lane_f32(v105.f32[1], v105, 1) + (v105.f32[0] * v105.f32[0])) + (v104 * v104);
    if (v107 >= v108)
    {
      a8.n128_u64[0] = vsub_f32(a8.n128_u64[0], v105);
    }

    else
    {
      v109 = v107 / v108;
      v104 = v104 * v109;
      a8.n128_u64[0] = vsub_f32(a8.n128_u64[0], vmul_n_f32(v105, v109));
    }

    v106 = v106 - v104;
  }

  v110 = sqrtf((COERCE_FLOAT(vmul_f32(*&a8, *&a8).i32[1]) + (a8.n128_f32[0] * a8.n128_f32[0])) + (v106 * v106)) - v10;
  if (v110 <= 0.0)
  {
    v114 = 1;
    v112 = 0.0;
  }

  else
  {
    v111 = v110 + -10.0;
    v112 = 0.0;
    if (v110 <= 10.0)
    {
      v111 = 0.0;
    }

    v118 = v111;
    v119 = vadd_f32(v64, vmul_n_f32(_D2, v111));
    v120 = v62 + (v47 * v111);
    a8.n128_f32[0] = v10;
    physx::Gu::intersectRayCapsuleInternal(&v119, a4, v101, v102, &v121, a8);
    v114 = v113 != 0;
    if (v113)
    {
      v115 = v121;
      if (v121 >= v122 && v113 != 1)
      {
        v115 = v122;
      }

      v112 = v118 + v115;
    }
  }

  result = 0;
  if (v114 && v112 >= 0.0)
  {
    *a5 = v112;
    return 1;
  }

  return result;
}

uint64_t physx::Gu::sweepSphereTriangles(uint64_t result, uint64_t a2, float32x2_t *a3, float32x2_t *a4, unsigned int *a5, uint64_t a6, float32x2_t *a7, int a8, __n128 a9, float a10, char a11, char a12, unsigned __int8 a13)
{
  if (!result)
  {
    return result;
  }

  v15 = a9.n128_f32[0];
  v18 = result;
  if (a5)
  {
    v19 = *a5;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0;
  v21 = a8 | a11;
  v22 = ((a3->f32[1] * a4->f32[1]) + (a3->f32[0] * a4->f32[0])) + (a3[1].f32[0] * a4[1].f32[0]);
  v23 = v22 - (a9.n128_f32[0] + 0.002);
  v86 = 2.0;
  v91 = -1;
  v24 = a10;
  a9.n128_u32[1] = 0;
  v89 = 0.0;
  v90 = 0.0;
  v88 = 0.0;
  while (1)
  {
    if (v19 == v20)
    {
      v25 = 0;
    }

    else
    {
      v25 = v20;
    }

    if (v20)
    {
      v26 = v25;
    }

    else
    {
      v26 = v19;
    }

    v27 = (a2 + 36 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = v27[4];
    v33 = v27[5];
    v34 = v27[6];
    v35 = v27[7];
    v36 = v27[8];
    v37 = ((*v27 + v31) + v34) * 0.33333;
    v38 = ((v29 + v32) + v35) * 0.33333;
    v39 = ((v30 + v33) + v36) * 0.33333;
    v40 = v37 - a3->f32[0];
    v41 = v38 - a3->f32[1];
    v42 = v39 - a3[1].f32[0];
    v43 = a4->f32[0];
    v44 = a4->f32[1];
    v45 = a4[1].f32[0];
    v46 = fmaxf(((v41 * v44) + (v40 * a4->f32[0])) + (v42 * v45), 0.0);
    if (v46 >= v24)
    {
      v46 = v24;
    }

    v47 = (sqrtf((((v41 - (v44 * v46)) * (v41 - (v44 * v46))) + ((v40 - (v43 * v46)) * (v40 - (v43 * v46)))) + ((v42 - (v45 * v46)) * (v42 - (v45 * v46)))) - v15) + -0.0001;
    v57 = v47 < 0.0;
    v48 = v47 * v47;
    v50 = !v57 && v48 > ((((v38 - v29) * (v38 - v29)) + ((v37 - v28) * (v37 - v28))) + ((v39 - v30) * (v39 - v30))) && v48 > ((((v38 - v32) * (v38 - v32)) + ((v37 - v31) * (v37 - v31))) + ((v39 - v33) * (v39 - v33)));
    v51 = (((v38 - v35) * (v38 - v35)) + ((v37 - v34) * (v37 - v34))) + ((v39 - v36) * (v39 - v36));
    if (v50 && v48 > v51)
    {
      goto LABEL_67;
    }

    v53 = ((v29 * v44) + (v28 * v43)) + (v30 * v45);
    v54 = ((v32 * v44) + (v31 * v43)) + (v33 * v45);
    v55 = ((v35 * v44) + (v34 * v43)) + (v36 * v45);
    if (v53 >= v54)
    {
      v56 = ((v32 * v44) + (v31 * v43)) + (v33 * v45);
    }

    else
    {
      v56 = ((v29 * v44) + (v28 * v43)) + (v30 * v45);
    }

    if (v56 >= v55)
    {
      v56 = ((v35 * v44) + (v34 * v43)) + (v36 * v45);
    }

    if (v56 > ((v15 + 0.002) + (v22 + v24)))
    {
      goto LABEL_67;
    }

    v57 = v54 < v23 && v53 < v23;
    if (v57 && v55 < v23)
    {
      goto LABEL_67;
    }

    v60 = v31 - v28;
    v61 = v32 - v29;
    v62 = v33 - v30;
    v63 = v34 - v28;
    v64 = v35 - v29;
    v65 = v36 - v30;
    v66 = (v61 * v65) - (v62 * (v35 - v29));
    v67 = (v62 * v63) - (v60 * v65);
    a9.n128_f32[0] = (v60 * v64) - (v61 * v63);
    if ((v21 & 1) == 0 && (((v67 * v44) + (v66 * v43)) + (a9.n128_f32[0] * v45)) > 0.0)
    {
      goto LABEL_67;
    }

    v68 = sqrtf(((v67 * v67) + (v66 * v66)) + (a9.n128_f32[0] * a9.n128_f32[0]));
    if (v68 == 0.0)
    {
      goto LABEL_67;
    }

    v69 = 1.0 / v68;
    v92 = v67 * v69;
    v93 = v66 * v69;
    *&v97 = v66 * v69;
    *(&v97 + 1) = v67 * v69;
    v70 = a9.n128_f32[0] * v69;
    v98 = a9.n128_f32[0] * v69;
    v95 = 0.0;
    a9.n128_f32[0] = v15;
    if (!physx::Gu::sweepSphereVSTri(v27, &v97, a3, a4, &v95, &v94, a13, a9) || v95 > a10)
    {
      goto LABEL_67;
    }

    v71 = a4[1].f32[0];
    v72 = -fabsf((vmuls_lane_f32(v92, *a4, 1) + (v93 * COERCE_FLOAT(*a4))) + (v70 * v71));
    if (v95 <= v24)
    {
      v73 = v24;
    }

    else
    {
      v73 = v95;
    }

    if (v73 < 1.0)
    {
      v73 = 1.0;
    }

    v74 = v73 * 0.001;
    if ((v24 - v74) <= v95)
    {
      v75 = v24 + v74;
      if (v86 <= v72 || v75 <= v95)
      {
        v77 = v86 == v72 && v95 < v24;
        v78 = v77;
        if (v95 != 0.0 && !v78)
        {
          goto LABEL_67;
        }
      }
    }

    if (v95 == 0.0)
    {
      *a7 = vneg_f32(*a4);
      a7[1].f32[0] = -v71;
      *(a6 + 16) = v26;
      *(a6 + 20) = 1026;
      v83 = -a4[1].f32[0];
      *(a6 + 36) = vneg_f32(*a4);
      *(a6 + 44) = v83;
      *(a6 + 48) = 0;
      return 1;
    }

    if (a12)
    {
      break;
    }

    v88 = v93;
    v89 = v92;
    v90 = v70;
    v86 = v72;
    v24 = v95;
    v91 = v26;
LABEL_67:
    if (v18 == ++v20)
    {
      goto LABEL_68;
    }
  }

  v91 = v26;
  v24 = v95;
  v89 = v92;
  v90 = v70;
  v88 = v93;
LABEL_68:
  if (v91 == -1)
  {
    return 0;
  }

  physx::Gu::computeSphereTriImpactData(&v97, &v95, a3, a4, a2 + 36 * v91, v24);
  if (!a11 || a8)
  {
    v82 = v95;
    v79 = LODWORD(v89);
    v81 = LODWORD(v90);
    v80 = LODWORD(v88);
  }

  else
  {
    v80 = LODWORD(v88);
    v79 = LODWORD(v89);
    v81 = LODWORD(v90);
    v82 = v95;
    if ((((v89 * a4->f32[1]) + (v88 * a4->f32[0])) + (v90 * a4[1].f32[0])) > 0.0)
    {
      v82 = -v95;
      v96 = vneg_f32(v96);
    }
  }

  *(a6 + 24) = v97;
  *(a6 + 32) = v98;
  *(a6 + 36) = v82;
  *(a6 + 40) = v96;
  *(a6 + 48) = v24;
  *(a6 + 16) = v91;
  *(a6 + 20) = 3;
  a7->i32[0] = v80;
  a7->i32[1] = v79;
  result = 1;
  a7[1].i32[0] = v81;
  return result;
}

void physx::Gu::computeSphereTriImpactData(float *a1, float *a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5, float a6)
{
  v9 = a4[1].f32[0] * a6;
  v10 = a3[1].f32[0];
  v30 = vadd_f32(vmul_n_f32(*a4, a6), *a3);
  v31 = v9 + v10;
  v29 = 0;
  physx::Gu::closestPtPointTriangle(&v30, a5, (a5 + 12), (a5 + 24), &v29 + 1, &v29, &v27);
  v11 = v27.i32[1];
  v12 = v30.f32[0] - v27.f32[0];
  v13 = v30.f32[1] - v27.f32[1];
  v14 = v28;
  v15 = v31 - v28;
  v16 = sqrtf(((v13 * v13) + (v12 * v12)) + (v15 * v15));
  if (v16 > 0.0)
  {
    v12 = v12 * (1.0 / v16);
    v13 = v13 * (1.0 / v16);
    v15 = v15 * (1.0 / v16);
  }

  if (v16 < 0.001)
  {
    v17 = *(a5 + 4);
    v18 = *(a5 + 8);
    v19 = *(a5 + 12) - *a5;
    v20 = *(a5 + 24) - *a5;
    v21 = *(a5 + 16) - v17;
    v22 = *(a5 + 20) - v18;
    v23 = *(a5 + 28) - v17;
    v24 = *(a5 + 32) - v18;
    v12 = (v21 * v24) - (v22 * v23);
    v13 = (v22 * v20) - (v19 * v24);
    v15 = (v19 * v23) - (v21 * v20);
    v25 = sqrtf(((v13 * v13) + (v12 * v12)) + (v15 * v15));
    if (v25 > 0.0)
    {
      v26 = 1.0 / v25;
      v12 = v12 * v26;
      v13 = v13 * v26;
      v15 = v15 * v26;
    }
  }

  *a1 = v27.f32[0];
  *(a1 + 1) = v11;
  a1[2] = v14;
  *a2 = v12;
  a2[1] = v13;
  a2[2] = v15;
}

void physx::Gu::computeBoxTriImpactData(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, uint64_t a5, float a6, double a7, double a8, __n128 a9, double a10, double a11, double a12, __n128 a13)
{
  v239 = *MEMORY[0x1E69E9840];
  v18 = a3[1].f32[0];
  v19 = *a3;
  a9.n128_u64[0] = vneg_f32(*a3);
  v203 = a9.n128_u64[0];
  v204 = -v18;
  v205 = v19;
  v206 = v18;
  v20 = a4[1].f32[0];
  v21 = 1.0 / v20;
  _ZF = v20 == 0.0;
  v23 = 0.0;
  if (!_ZF)
  {
    *&v23 = v21;
  }

  v24 = vceqz_f32(*a4);
  __asm { FMOV            V9.2S, #1.0 }

  v201 = COERCE_DOUBLE(vbic_s8(vdiv_f32(_D9, *a4), v24));
  v202 = LODWORD(v23);
  v200 = 2139095039;
  if (physx::Gu::sweepBoxTriangle(a5, &v203, a4, &v201, a1, a2, &v200, 0, v23, v201, *&v24, a9, a10, a11, a12, a13) && (a2->f32[0] != 0.0 || a2->f32[1] != 0.0 || a2[1].f32[0] != 0.0))
  {
    return;
  }

  v32 = a4[1].f32[0];
  _S8 = v32 * a6;
  v34 = vmul_n_f32(*a4, a6);
  v35 = (v32 * a6) + (v32 * -0.1);
  *v29.f32 = vadd_f32(v34, vmul_f32(*a4, vdup_n_s32(0xBDCCCCCD)));
  *v30.f32 = vsub_f32(*a5, *v29.f32);
  *v31.f32 = vsub_f32(*(a5 + 12), *v29.f32);
  *v29.f32 = vsub_f32(*(a5 + 24), *v29.f32);
  v30.f32[2] = *(a5 + 8) - v35;
  v31.f32[2] = *(a5 + 20) - v35;
  v29.f32[2] = *(a5 + 32) - v35;
  v36 = vaddq_f32(v30, v31);
  v31.i32[3] = 0;
  v30.i32[3] = 0;
  v37 = vaddq_f32(v36, v29);
  v29.i32[3] = 0;
  v38 = vdupq_n_s32(0x3EAAAA9Fu);
  v221 = 0;
  v39 = vmulq_f32(v37, v38);
  v39.i32[3] = 0;
  v218 = v39;
  v222 = v30;
  v223 = v31;
  v224 = v29;
  v219 = 0x7F7FFFFF00000000;
  v220 = 0x57F7FFFFFLL;
  *v38.f32 = *a3;
  v40 = v38;
  v40.i32[2] = a3[1].i32[0];
  v41 = vdup_laneq_s32(v40, 2);
  v40.i32[3] = 0;
  v215 = 3;
  v216 = 0;
  v211[0] = 0;
  v211[1] = 0;
  v217 = v40;
  *v38.f32 = vpmin_f32(v41, *v38.f32);
  v42 = vpmin_f32(*v38.f32, *v38.f32);
  *v40.i32 = 0.15 * *v42.i32;
  *v42.i32 = 0.05 * *v42.i32;
  v212 = v40.i32[0];
  v213 = v42.i32[0];
  v214 = v42.i32[0];
  v209 = &unk_1F5D21A20;
  v210 = &v218;
  v208 = v211;
  v207 = &unk_1F5D21A80;
  v227 = 0;
  v43 = vmulq_f32(v39, v39);
  v43.i64[0] = vpaddq_f32(v43, v43).u64[0];
  v47 = v41;
  v44 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgtz_f32(vpadd_f32(*v43.f32, *v43.f32)), 0)), 0x1FuLL)), v39, xmmword_1E3047670);
  v226 = v44;
  v45 = vmulq_f32(v44, v44);
  v45.i64[0] = vpaddq_f32(v45, v45).u64[0];
  v46 = vpadd_f32(*v45.f32, *v45.f32);
  *v47.i8 = vrsqrte_f32(v46);
  v48 = 4;
  do
  {
    *v47.i8 = vmul_f32(*v47.i8, vrsqrts_f32(vmul_f32(*v47.i8, *v47.i8), v46));
    --v48;
  }

  while (v48);
  v49 = vbsl_s8(vdup_lane_s32(vceqz_f32(v46), 0), v46, vmul_f32(v46, *v47.i8));
  v50 = vrecpe_f32(v49);
  v51 = 4;
  do
  {
    v50 = vmul_f32(v50, vrecps_f32(v49, v50));
    --v51;
  }

  while (v51);
  v193 = v34;
  v52 = vmulq_n_f32(v44, v50.f32[0]);
  v52.i32[3] = 0;
  *v47.i8 = vdup_lane_s32(v42, 0);
  v53 = vneg_f32(0x80000000800000);
  *v47.i8 = vmul_f32(vmin_f32(*v47.i8, v53), vdup_n_s32(0x3DCCCCCDu));
  v54 = vmax_f32(*v47.i8, vdup_n_s32(0x358637BDu));
  v47.i32[0] = -1;
  v192 = v47;
  while (1)
  {
    v55 = v52;
    v56 = v53;
    v57 = v44;
    v225 = v44;
    v58 = vnegq_f32(v44);
    v58.i32[3] = 0;
    v65 = v210[3];
    v59 = v210[4];
    v60 = v210[5];
    v61 = vmulq_f32(v58, v65);
    v61.i64[0] = vpaddq_f32(v61, v61).u64[0];
    *v61.f32 = vpadd_f32(*v61.f32, *v61.f32);
    v62 = vmulq_f32(v58, v59);
    v62.i64[0] = vpaddq_f32(v62, v62).u64[0];
    *v62.f32 = vpadd_f32(*v62.f32, *v62.f32);
    v63 = vmulq_f32(v58, v60);
    v63.i64[0] = vpaddq_f32(v63, v63).u64[0];
    *v63.f32 = vpadd_f32(*v63.f32, *v63.f32);
    v64 = vbslq_s8(vmovl_s16(vdup_lane_s16(vand_s8(vcgt_f32(*v61.f32, *v63.f32), vcgt_f32(*v61.f32, *v62.f32)), 0)), v65, vbslq_s8(vmovl_s16(vdup_lane_s16(vcgt_f32(*v62.f32, *v63.f32), 0)), v59, v60));
    v65.i64[0] = 0;
    v65.i32[2] = 0;
    v66 = *(v208 + 3);
    v67 = vnegq_f32(v66);
    v67.i32[3] = 0;
    v68 = vbslq_s8(vcgtzq_f32(v57), v66, v67);
    v44 = vsubq_f32(v64, v68);
    v69 = vmulq_f32(v55, v44);
    v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
    v70 = vpadd_f32(*v69.f32, *v69.f32);
    if (v70.f32[0] > 3.4028e38)
    {
      _Q6.i64[0] = 0;
      _Q6.i32[2] = 0;
LABEL_78:
      v160 = v193;
      goto LABEL_79;
    }

    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgtz_f32(v70), vcgt_f32(v70, vmul_f32(v56, vdup_n_s32(0x3F7FF141u)))), 0), *v44.f32).u32[0] == -1)
    {
      break;
    }

    v71 = v227;
    *(&v233 + v227) = v64;
    *(&v230 + v71) = v68;
    v227 = v71 + 1;
    *(&v236 + v71) = v44;
    if (v71 == 3)
    {
      v194 = v57;
      v197 = v55;
      physx::Gu::closestPtPointTetrahedron(&v236, &v233, &v230, &v227);
      v57 = v194;
      v55 = v197;
      goto LABEL_51;
    }

    if (v71 != 2)
    {
      if (v71 != 1)
      {
        goto LABEL_51;
      }

      v44 = v236;
      v72 = vsubq_f32(v237, v236);
      v73 = vmulq_f32(v72, v72);
      v73.i64[0] = vpaddq_f32(v73, v73).u64[0];
      v74 = vpadd_f32(*v73.f32, *v73.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v74), 0), *v236.f32).u32[0] != -1)
      {
        v75 = vnegq_f32(v236);
        v75.i32[3] = 0;
        v76 = vmulq_f32(v75, v72);
        v76.i64[0] = vpaddq_f32(v76, v76).u64[0];
        v77 = vpadd_f32(*v76.f32, *v76.f32);
        v78 = vrecpe_f32(v74);
        v79 = 4;
        do
        {
          v78 = vmul_f32(v78, vrecps_f32(v74, v78));
          --v79;
        }

        while (v79);
        v44 = vmlaq_n_f32(v236, v72, vmax_f32(vmin_f32(vmul_f32(v77, v78), _D9), 0).f32[0]);
LABEL_35:
        v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
        goto LABEL_51;
      }

LABEL_36:
      v227 = 1;
      goto LABEL_51;
    }

    v44 = v236;
    v80 = vsubq_f32(v237, v236);
    v81 = vsubq_f32(v238[0], v236);
    v83 = vmls_f32(vmul_f32(*v80.i8, *&vextq_s8(v81, v81, 4uLL)), *&vextq_s8(v80, v80, 4uLL), *v81.i8);
    *v82.f32 = vext_s8(v83, vmls_f32(vmul_f32(*&vextq_s8(v80, v80, 8uLL), *v81.i8), *v80.i8, *&vextq_s8(v81, v81, 8uLL)), 4uLL);
    v83.i32[1] = 0;
    v227 = 3;
    v84 = vpadd_f32(vmul_f32(*v82.f32, *v82.f32), vmul_f32(v83.u32[0], v83.u32[0]));
    v85 = vpadd_f32(v84, v84);
    if (v85.f32[0] <= 0.00000011921)
    {
      v227 = 2;
      v122 = vmulq_f32(v80, v80);
      v122.i64[0] = vpaddq_f32(v122, v122).u64[0];
      v123 = vpadd_f32(*v122.f32, *v122.f32);
      if (vuzp1_s8(vdup_lane_s16(vcge_f32(0x3400000034000000, v123), 0), *v236.f32).u32[0] != -1)
      {
        v124 = vnegq_f32(v236);
        v124.i32[3] = 0;
        v125 = vmulq_f32(v124, v80);
        v125.i64[0] = vpaddq_f32(v125, v125).u64[0];
        v126 = vpadd_f32(*v125.f32, *v125.f32);
        v127 = vrecpe_f32(v123);
        v128 = 4;
        do
        {
          v127 = vmul_f32(v127, vrecps_f32(v123, v127));
          --v128;
        }

        while (v128);
        v44 = vmlaq_n_f32(v236, v80, vmax_f32(vmin_f32(vmul_f32(v126, v127), _D9), 0).f32[0]);
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    *&v82.u32[2] = v83;
    v86 = vextq_s8(v237, v237, 8uLL).u64[0];
    v87 = vextq_s8(v238[0], v238[0], 8uLL).u64[0];
    v88 = vextq_s8(v238[0], v238[0], 4uLL).u64[0];
    v89 = vextq_s8(v237, v237, 4uLL).u64[0];
    v90 = vmls_f32(vmul_f32(*v237.f32, v88), v89, *v238[0].f32);
    *v91.f32 = vext_s8(v90, vmls_f32(vmul_f32(v86, *v238[0].f32), *v237.f32, v87), 4uLL);
    v91.i64[1] = v90.u32[0];
    v92 = vextq_s8(v236, v236, 8uLL).u64[0];
    v93 = vextq_s8(v236, v236, 4uLL).u64[0];
    v94 = vmls_f32(vmul_f32(v93, *v238[0].f32), v88, *v236.f32);
    *v95.f32 = vext_s8(v94, vmls_f32(vmul_f32(*v236.f32, v87), *v238[0].f32, v92), 4uLL);
    v95.i64[1] = v94.u32[0];
    v96 = vmls_f32(vmul_f32(*v236.f32, v89), v93, *v237.f32);
    *v97.f32 = vext_s8(v96, vmls_f32(vmul_f32(v92, *v237.f32), *v236.f32, v86), 4uLL);
    v97.i64[1] = v96.u32[0];
    v98 = vmulq_f32(v91, v82);
    v98.i64[0] = vpaddq_f32(v98, v98).u64[0];
    v99 = vpadd_f32(*v98.f32, *v98.f32);
    v100 = vmulq_f32(v95, v82);
    v100.i64[0] = vpaddq_f32(v100, v100).u64[0];
    v101 = vpadd_f32(*v100.f32, *v100.f32);
    v102 = vmulq_f32(v97, v82);
    v102.i64[0] = vpaddq_f32(v102, v102).u64[0];
    v103 = vpadd_f32(*v102.f32, *v102.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcgez_f32(v101), vcgez_f32(v99)), vcgez_f32(v103)), 0), *v236.f32).u32[0] == -1)
    {
      v129 = vmulq_f32(v236, v82);
      v130 = vrecpe_f32(v85);
      v131 = 4;
      do
      {
        v130 = vmul_f32(v130, vrecps_f32(v85, v130));
        --v131;
      }

      while (v131);
      v132 = vpaddq_f32(v129, v129).u64[0];
      v44 = vmulq_n_f32(v82, vmul_f32(v130, vpadd_f32(v132, v132)).f32[0]);
      v44.i32[3] = 0;
      goto LABEL_51;
    }

    v104 = vnegq_f32(v236);
    v104.i32[3] = 0;
    v105 = vnegq_f32(v237);
    v105.i32[3] = 0;
    v106 = vmulq_f32(v104, v80);
    v106.i64[0] = vpaddq_f32(v106, v106).u64[0];
    v107 = vpadd_f32(*v106.f32, *v106.f32);
    v108 = vmulq_f32(v80, v105);
    v108.i64[0] = vpaddq_f32(v108, v108).u64[0];
    v109 = vpadd_f32(*v108.f32, *v108.f32);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v103), vand_s8(vclez_f32(v109), vcgez_f32(v107))), 0), *v236.f32).u32[0] == -1)
    {
      v133 = vsub_f32(v107, v109);
      v134 = vrecpe_f32(v133);
      v135 = 4;
      do
      {
        v134 = vmul_f32(v134, vrecps_f32(v133, v134));
        --v135;
      }

      while (v135);
      v121 = 0;
      v44 = vmlaq_n_f32(v236, v80, vmul_f32(v107, vbsl_s8(vcgt_f32(vabs_f32(v133), 0x3400000034000000), v134, 0)).f32[0]);
      v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
      v120 = 2;
    }

    else
    {
      v110 = vnegq_f32(v238[0]);
      v110.i32[3] = 0;
      v111 = vmulq_f32(v105, v81);
      v111.i64[0] = vpaddq_f32(v111, v111).u64[0];
      v112 = vpadd_f32(*v111.f32, *v111.f32);
      v113 = vmulq_f32(v80, v110);
      v113.i64[0] = vpaddq_f32(v113, v113).u64[0];
      v114 = vpadd_f32(*v113.f32, *v113.f32);
      v115 = vmulq_f32(v81, v110);
      v115.i64[0] = vpaddq_f32(v115, v115).u64[0];
      v116 = vpadd_f32(*v115.f32, *v115.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vand_s8(vcge_f32(v112, v109), vcge_f32(v114, v116)), vclez_f32(v99)), 0), *v236.f32).u32[0] == -1)
      {
        v139 = vsub_f32(v112, v109);
        v140 = vadd_f32(v139, vsub_f32(v114, v116));
        v141 = vrecpe_f32(v140);
        v142 = 4;
        do
        {
          v141 = vmul_f32(v141, vrecps_f32(v140, v141));
          --v142;
        }

        while (v142);
        v143 = vmlaq_n_f32(v237, vsubq_f32(v238[0], v237), vmul_f32(v139, vbsl_s8(vcgt_f32(vabs_f32(v140), 0x3400000034000000), v141, 0)).f32[0]);
        v120 = 2;
        v136 = v232;
        v137 = v235;
        v143.i64[1] = vextq_s8(v143, v143, 8uLL).u32[0];
        v138 = v238;
        v121 = 1;
        v44 = v143;
        goto LABEL_50;
      }

      v117 = vmulq_f32(v104, v81);
      v117.i64[0] = vpaddq_f32(v117, v117).u64[0];
      v118 = vpadd_f32(*v117.f32, *v117.f32);
      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v101), vand_s8(vclez_f32(v116), vcgez_f32(v118))), 0), *v236.f32).u32[0] == -1)
      {
        v144 = vsub_f32(v118, v116);
        v145 = vrecpe_f32(v144);
        v146 = 4;
        do
        {
          v145 = vmul_f32(v145, vrecps_f32(v144, v145));
          --v146;
        }

        while (v146);
        v121 = 0;
        v44 = vmlaq_n_f32(v236, v81, vmul_f32(v118, vbsl_s8(vcgt_f32(vabs_f32(v144), 0x3400000034000000), v145, 0)).f32[0]);
        v44.i64[1] = vextq_s8(v44, v44, 8uLL).u32[0];
        v120 = 2;
        v136 = v232;
        v137 = v235;
        v138 = v238;
        goto LABEL_50;
      }

      if (vuzp1_s8(vdup_lane_s16(vand_s8(vclez_f32(v118), vclez_f32(v107)), 0), *v236.f32).u32[0] == -1)
      {
        v121 = 0;
        v120 = 1;
      }

      else
      {
        *v44.f32 = vdup_lane_s16(vand_s8(vcge_f32(v109, v112), vcgez_f32(v109)), 0);
        *v44.f32 = vuzp1_s8(*v44.f32, *v44.f32);
        v119 = v44.i32[0];
        v120 = 1;
        v44 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v44, v192), 0), v237, v238[0]);
        if (v119 == -1)
        {
          v121 = 1;
        }

        else
        {
          v121 = 2;
        }
      }
    }

    v136 = &v231;
    v137 = &v234;
    v138 = &v237;
LABEL_50:
    v147 = *(&v233 + v121);
    v148 = *v138;
    v149 = *v137;
    v150 = *(&v230 + v121);
    v151 = *v136;
    v236 = *(&v236 + v121);
    v237 = v148;
    v233 = v147;
    v234 = v149;
    v230 = v150;
    v231 = v151;
    v227 = v120;
LABEL_51:
    v226 = v44;
    v152 = vmulq_f32(v44, v44);
    v152.i64[0] = vpaddq_f32(v152, v152).u64[0];
    v153 = vpadd_f32(*v152.f32, *v152.f32);
    v154 = vrsqrte_f32(v153);
    v155 = 4;
    do
    {
      v154 = vmul_f32(v154, vrsqrts_f32(vmul_f32(v154, v154), v153));
      --v155;
    }

    while (v155);
    v53 = vbsl_s8(vdup_lane_s32(vceqz_f32(v153), 0), v153, vmul_f32(v153, v154));
    v156 = vrecpe_f32(v53);
    v157 = 4;
    do
    {
      v156 = vmul_f32(v156, vrecps_f32(v53, v156));
      --v157;
    }

    while (v157);
    v52 = vmulq_n_f32(v44, v156.f32[0]);
    v52.i32[3] = 0;
    v158 = vcgt_f32(v56, v53);
    if (vuzp1_s8(vdup_lane_s16(vand_s8(vcgt_f32(v53, v54), v158), 0), *v44.f32).u32[0] != -1)
    {
      v161 = vdup_lane_s16(v158, 0);
      if (vuzp1_s8(v161, v161).u32[0] == -1)
      {
        goto LABEL_83;
      }

      i32 = v210[1].i32;
      v163 = vld1_dup_f32(i32);
      v164 = (v208 + 2);
      v165 = vld1_dup_f32(v164);
      LODWORD(v166) = vmin_f32(v163, v165).u32[0];
      if (v227 == 3)
      {
        v228 = 0;
        v229 = 0;
        v195 = v166;
        v199 = v55;
        physx::Gu::barycentricCoordinates(&v225, &v236, &v237, v238, &v229, &v228);
        v166 = v195;
        v55 = v199;
        v185 = vmulq_n_f32(vsubq_f32(v231, v230), v229.f32[0]);
        v185.i32[3] = 0;
        v186 = vmulq_n_f32(vsubq_f32(v232[0], v230), v228.f32[0]);
        v186.i32[3] = 0;
        v65 = vaddq_f32(v230, vaddq_f32(v185, v186));
      }

      else if (v227 == 2)
      {
        v177 = vsubq_f32(v236, v57);
        v178 = vsubq_f32(vsubq_f32(v237, v57), v177);
        v179 = vmulq_f32(v178, v178);
        v179.i64[0] = vpaddq_f32(v179, v179).u64[0];
        v180 = vpadd_f32(*v179.f32, *v179.f32);
        v181 = vrecpe_f32(v180);
        v182 = 4;
        do
        {
          v181 = vmul_f32(v181, vrecps_f32(v180, v181));
          --v182;
        }

        while (v182);
        v183 = vnegq_f32(v177);
        v183.i32[3] = 0;
        v184 = vmulq_f32(v183, v178);
        v184.i64[0] = vpaddq_f32(v184, v184).u64[0];
        v65 = vmlaq_n_f32(v230, vsubq_f32(v231, v230), vmul_f32(vbsl_s8(vcgtz_f32(v180), v181, 0), vpadd_f32(*v184.f32, *v184.f32)).f32[0]);
        v65.i32[2] = vextq_s8(v65, v65, 8uLL).u32[0];
      }

      else
      {
        v65.i64[0] = 0;
        v65.i32[2] = 0;
        if (v227 == 1)
        {
          v65 = v230;
        }
      }

      if (vmax_f32(v56, 0).f32[0] <= (0.2 * v166))
      {
LABEL_83:
        *a1 = 0;
        a1[1].i32[0] = 0;
        v190 = -a4[1].f32[0];
        v191 = vneg_f32(*a4);
        goto LABEL_84;
      }

      _Q6 = vnegq_f32(v55);
      goto LABEL_78;
    }
  }

  _Q6 = vnegq_f32(v55);
  _Q6.i32[3] = 0;
  if (v227 == 3)
  {
    v228 = 0;
    v229 = 0;
    v198 = _Q6;
    physx::Gu::barycentricCoordinates(&v226, &v236, &v237, v238, &v229, &v228);
    _Q6 = v198;
    v175 = vmulq_n_f32(vsubq_f32(v231, v230), v229.f32[0]);
    v175.i32[3] = 0;
    v176 = vmulq_n_f32(vsubq_f32(v232[0], v230), v228.f32[0]);
    v176.i32[3] = 0;
    v65 = vaddq_f32(v230, vaddq_f32(v175, v176));
    goto LABEL_78;
  }

  if (v227 == 2)
  {
    v167 = vsubq_f32(v236, v57);
    v168 = vsubq_f32(vsubq_f32(v237, v57), v167);
    v169 = vmulq_f32(v168, v168);
    v169.i64[0] = vpaddq_f32(v169, v169).u64[0];
    v170 = vpadd_f32(*v169.f32, *v169.f32);
    v171 = vrecpe_f32(v170);
    v172 = 4;
    v160 = v193;
    do
    {
      v171 = vmul_f32(v171, vrecps_f32(v170, v171));
      --v172;
    }

    while (v172);
    v173 = vnegq_f32(v167);
    v173.i32[3] = 0;
    v174 = vmulq_f32(v173, v168);
    v174.i64[0] = vpaddq_f32(v174, v174).u64[0];
    v65 = vmlaq_n_f32(v230, vsubq_f32(v231, v230), vmul_f32(vbsl_s8(vcgtz_f32(v170), v171, 0), vpadd_f32(*v174.f32, *v174.f32)).f32[0]);
    v65.i32[2] = vextq_s8(v65, v65, 8uLL).u32[0];
  }

  else
  {
    v160 = v193;
    if (v227 == 1)
    {
      v65 = v230;
    }
  }

LABEL_79:
  *a1 = vadd_f32(v160, *v65.i8);
  a1[1].f32[0] = _S8 + *&v65.i32[2];
  __asm { FMLA            S0, S8, V6.S[2] }

  v188 = _S0 <= 0.0;
  v189 = _S0 > 0.0;
  v190 = -_Q6.f32[2];
  if (v188)
  {
    v190 = _Q6.f32[2];
  }

  v191 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v189), 0x1FuLL)), vneg_f32(*_Q6.f32), *_Q6.f32);
LABEL_84:
  *a2 = v191;
  a2[1].f32[0] = v190;
}

float32_t physx::Gu::computeEdgeEdgeNormal(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, float a7)
{
  v7 = a7 + -0.1;
  v8 = ((a7 + -0.1) * a6[1].f32[0]) + a2[1].f32[0];
  v9 = a4[1].f32[0];
  v10 = a3[1].f32[0];
  v11 = vadd_f32(vmul_n_f32(*a6, v7), *a2);
  v12 = vsub_f32(*a4, v11);
  v13 = *a3;
  LODWORD(v14) = HIDWORD(*a3);
  v15 = (vmuls_lane_f32(v14, *a3, 1) + (v13.f32[0] * v13.f32[0])) + (v10 * v10);
  v16 = *a5;
  v17 = a5[1].f32[0];
  v18 = (vmuls_lane_f32(COERCE_FLOAT(HIDWORD(*a5)), *a5, 1) + (v16.f32[0] * v16.f32[0])) + (v17 * v17);
  v19 = (vmuls_lane_f32(v14, *a5, 1) + (COERCE_FLOAT(*a3) * COERCE_FLOAT(*a5))) + (v10 * v17);
  v20 = (vmuls_lane_f32(v12.f32[1], *a3, 1) + (COERCE_FLOAT(*a3) * v12.f32[0])) + (v10 * (v9 - v8));
  v21 = (v15 * v18) - (v19 * v19);
  v22 = -((vmuls_lane_f32(v12.f32[1], *a5, 1) + (COERCE_FLOAT(*a5) * v12.f32[0])) + (v17 * (v9 - v8)));
  v23 = 0.0;
  if (v21 != 0.0)
  {
    v24 = ((v19 * v22) + (v20 * v18)) / v21;
    if (v24 >= 0.0)
    {
      v23 = v24;
      if (v24 > 1.0)
      {
        v23 = 1.0;
      }
    }
  }

  v25 = (v22 + (v23 * v19)) / v18;
  if (v25 >= 0.0)
  {
    if (v25 > 1.0)
    {
      v28 = (v20 + v19) / v15;
      v29 = 1.0;
      if (v28 <= 1.0)
      {
        v29 = v28;
      }

      if (v28 >= 0.0)
      {
        v23 = v29;
      }

      else
      {
        v23 = 0.0;
      }

      v25 = 1.0;
    }
  }

  else
  {
    v26 = v20 / v15;
    v25 = 0.0;
    v27 = 1.0;
    if (v26 <= 1.0)
    {
      v27 = v26;
    }

    if (v26 >= 0.0)
    {
      v23 = v27;
    }

    else
    {
      v23 = 0.0;
    }
  }

  result = (v8 + (v10 * v23)) - (v9 + (v17 * v25));
  *a1 = vsub_f32(vadd_f32(v11, vmul_n_f32(v13, v23)), vadd_f32(*a4, vmul_n_f32(v16, v25)));
  a1[1].f32[0] = result;
  return result;
}

uint64_t physx::Gu::contactCapsuleConvex(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v411 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v4;
  v13 = v3;
  v14 = 0;
  v465 = *MEMORY[0x1E69E9840];
  v15 = *(v4 + 32);
  v16 = (v4 + 16);
  v17 = *(v4 + 16);
  v18 = (v4 + 4);
  v19 = *(v4 + 4);
  v20 = v19;
  v20.i32[3] = 0;
  v56.i32[0] = *(v8 + 4);
  v59.i32[0] = *(v8 + 8);
  v61.i32[0] = *(v8 + 12);
  v21 = v10[4] - *(v8 + 16);
  v22 = v10[5] - *(v8 + 20);
  v23 = v10[6] - *(v8 + 24);
  v24 = v21 + v21;
  v25 = v22 + v22;
  v26 = v23 + v23;
  v27 = (v61.f32[0] * v61.f32[0]) + -0.5;
  v28 = (-(v56.f32[0] * v25) - (*v8 * v24)) - (v59.f32[0] * v26);
  *&v29 = ((v61.f32[0] * ((v59.f32[0] * v25) - (v56.f32[0] * v26))) + (v24 * v27)) - (*v8 * v28);
  *&v30 = ((v61.f32[0] * ((*v8 * v26) - (v59.f32[0] * v24))) + (v25 * v27)) - (v56.f32[0] * v28);
  v31 = ((v61.f32[0] * ((v56.f32[0] * v24) - (*v8 * v25))) + (v26 * v27)) - (v59.f32[0] * v28);
  v33 = v10[2];
  v32 = v10[3];
  v34 = v10[1];
  v35 = (((v61.f32[0] * *v10) - (*v8 * v32)) - (v56.f32[0] * v33)) + (v34 * v59.f32[0]);
  *v36.i32 = (((v61.f32[0] * v34) - (v56.f32[0] * v32)) - (v59.f32[0] * *v10)) + (v33 * *v8);
  *v37.i32 = (((v61.f32[0] * v33) - (v59.f32[0] * v32)) - (*v8 * v34)) + (*v10 * v56.f32[0]);
  v56.f32[0] = (((*v8 * *v10) + (v61.f32[0] * v32)) + (v56.f32[0] * v34)) + (v59.f32[0] * v33);
  v38.i32[3] = 0;
  v38.i64[0] = __PAIR64__(v30, v29);
  *v61.f32 = vdup_lane_s32(v37, 0);
  *v56.f32 = vdup_lane_s32(*v56.f32, 0);
  *v39.i32 = v35 + v35;
  v40 = *v36.i32 + *v36.i32;
  v41 = *v37.i32 + *v37.i32;
  *v42.i32 = v35 * (v35 + v35);
  v43 = vmul_n_f32(vdup_lane_s32(v36, 0), *v36.i32 + *v36.i32);
  *v59.f32 = vmul_n_f32(*v61.f32, *v37.i32 + *v37.i32);
  v44 = vmul_n_f32(vdup_lane_s32(v39, 0), *v36.i32);
  v45 = vmul_n_f32(*v61.f32, *v39.i32);
  v46 = vmul_n_f32(*v56.f32, *v39.i32);
  *v61.f32 = vmul_n_f32(*v61.f32, v40);
  v47 = vmul_n_f32(*v56.f32, v40);
  v48 = vmul_n_f32(*v56.f32, v41);
  __asm { FMOV            V17.2S, #1.0 }

  v54 = vsub_f32(_D17, vdup_lane_s32(v42, 0));
  v55 = vsub_f32(v45, v47);
  *v56.f32 = vext_s8(vsub_f32(vsub_f32(_D17, v43), *v59.f32), vadd_f32(v44, v48), 4uLL);
  v57 = vsub_f32(v44, v48);
  v58 = vadd_f32(v46, *v61.f32);
  *v59.f32 = vext_s8(v57, vsub_f32(v54, *v59.f32), 4uLL);
  v60 = vsub_f32(v54, v43);
  *v61.f32 = vext_s8(vadd_f32(v45, v47), vsub_f32(*v61.f32, v46), 4uLL);
  if (*(v4 + 4) == 1.0 && *(v4 + 8) == 1.0)
  {
    v14 = *(v4 + 12) == 1.0;
  }

  v62 = *(v3 + 8);
  v38.f32[2] = v31;
  *&v56.u32[2] = v55;
  *&v59.u32[2] = v58;
  *&v61.u32[2] = v60;
  LOBYTE(v452) = 0;
  memset(v451, 0, sizeof(v451));
  v461 = v15 + 32;
  v463 = *(v15 + 72) + 20 * *(v15 + 71);
  v464 = *(v15 + 70);
  v63.i64[0] = *(v15 + 92);
  v63.i64[1] = *(v15 + 100);
  v64 = vmulq_f32(v20, v63);
  *v64.i8 = vpmin_f32(vdup_laneq_s32(v64, 2), *v64.i8);
  *v64.i32 = vpmin_f32(*v64.i8, *v64.i8).f32[0];
  *&v451[1] = vmul_n_f32(0x3D4CCCCD3DCCCCCDLL, *v64.i32);
  *(&v451[1] + 2) = 0.025 * *v64.i32;
  if (v14)
  {
    v455 = xmmword_1E3047670;
    v456 = xmmword_1E3047680;
    v457 = xmmword_1E30476A0;
    v458 = xmmword_1E3047670;
    v459 = xmmword_1E3047680;
    v460 = xmmword_1E30476A0;
    v65 = 0uLL;
  }

  else
  {
    v66 = vrecpeq_f32(v20);
    v67 = 4;
    do
    {
      v66 = vmulq_f32(v66, vrecpsq_f32(v66, v20));
      --v67;
    }

    while (v67);
    *v68.f32 = vdup_lane_s32(*v19.f32, 0);
    v68.i64[1] = v68.u32[0];
    if ((~vuzp1_s8(vmovn_s32(vceqq_f32(v68, v20)), *v38.f32).u32[0] & 0xFFFFFF) != 0)
    {
      v74 = vdup_lane_s32(*v17.f32, 1);
      v75 = vdup_laneq_s32(v17, 2);
      v76 = vdup_laneq_s32(v17, 3);
      v77 = vaddq_f32(v17, v17);
      v78 = vmul_lane_f32(v74, *v77.f32, 1);
      v79 = vmul_laneq_f32(v75, v77, 2);
      v80 = vmul_n_f32(v74, v77.f32[0]);
      v81 = vmul_n_f32(v75, v77.f32[0]);
      v82 = vmul_n_f32(v76, v77.f32[0]);
      v83 = vmul_lane_f32(v75, *v77.f32, 1);
      v84 = vmul_lane_f32(v76, *v77.f32, 1);
      v85 = vmul_laneq_f32(v76, v77, 2);
      v86 = vsub_f32(_D17, vdup_lane_s32(vmul_f32(*v17.f32, *v77.f32), 0));
      *v77.f32 = vsub_f32(vsub_f32(_D17, v78), v79);
      v87 = vadd_f32(v80, v85);
      v88 = vsub_f32(v81, v84);
      v89 = vsub_f32(v80, v85);
      v90 = vadd_f32(v81, v84);
      v91 = vsub_f32(v83, v82);
      v92 = vext_s8(v90, v91, 4uLL);
      v93 = vsub_f32(v86, v79);
      *v94.f32 = vext_s8(*v77.f32, *&vdupq_lane_s32(v89, 1), 4uLL);
      v94.i64[1] = vdup_lane_s32(v92, 0).u32[0];
      v95 = vsub_f32(v86, v78);
      *v96.f32 = vext_s8(*&vdupq_lane_s32(v87, 0), v93, 4uLL);
      v96.i64[1] = vdup_lane_s32(v92, 1).u32[0];
      v97 = vadd_f32(v83, v82);
      *v98.f32 = vext_s8(*&vdupq_lane_s32(v88, 0), v97, 4uLL);
      v98.i64[1] = vdup_lane_s32(v95, 0).u32[0];
      v99 = vmulq_n_f32(v94, v19.f32[0]);
      v99.i32[3] = 0;
      v100 = vmulq_lane_f32(v96, *v19.f32, 1);
      v100.i32[3] = 0;
      v101 = vmulq_laneq_f32(v98, v19, 2);
      v101.i32[3] = 0;
      v102 = vmulq_lane_f32(v99, *v77.f32, 1);
      v102.i32[3] = 0;
      v103 = vmulq_n_f32(v100, *v87.i32);
      v103.i32[3] = 0;
      v104 = vmulq_n_f32(v101, *v88.i32);
      v104.i32[3] = 0;
      v69 = vaddq_f32(v104, vaddq_f32(v102, v103));
      v105 = vmulq_lane_f32(v99, v89, 1);
      v105.i32[3] = 0;
      v106 = vmulq_n_f32(v100, *v93.i32);
      v106.i32[3] = 0;
      v1 = vmulq_n_f32(v101, *v97.i32);
      v1.i32[3] = 0;
      v70 = vaddq_f32(v1, vaddq_f32(v105, v106));
      v107 = vmulq_lane_f32(v99, v90, 1);
      v107.i32[3] = 0;
      v108 = vmulq_n_f32(v100, *v91.i32);
      v108.i32[3] = 0;
      v109 = vmulq_n_f32(v101, *v95.i32);
      v109.i32[3] = 0;
      v71 = vaddq_f32(v109, vaddq_f32(v107, v108));
      v455 = v69;
      v456 = v70;
      v110 = vmulq_n_f32(v94, v66.f32[0]);
      v110.i32[3] = 0;
      v111 = vmulq_lane_f32(v96, *v66.f32, 1);
      v111.i32[3] = 0;
      v112 = vmulq_laneq_f32(v98, v66, 2);
      v112.i32[3] = 0;
      v113 = vmulq_lane_f32(v110, *v77.f32, 1);
      v113.i32[3] = 0;
      v114 = vmulq_n_f32(v111, *v87.i32);
      v114.i32[3] = 0;
      v115 = vmulq_n_f32(v112, *v88.i32);
      v115.i32[3] = 0;
      v116 = vaddq_f32(v115, vaddq_f32(v113, v114));
      v117 = vmulq_lane_f32(v110, v89, 1);
      v117.i32[3] = 0;
      v118 = vmulq_n_f32(v111, *v93.i32);
      v118.i32[3] = 0;
      v119 = vmulq_n_f32(v112, *v97.i32);
      v119.i32[3] = 0;
      v120 = vmulq_lane_f32(v110, v90, 1);
      v120.i32[3] = 0;
      v121 = vmulq_n_f32(v111, *v91.i32);
      v121.i32[3] = 0;
      v122 = vmulq_n_f32(v112, *v95.i32);
      v122.i32[3] = 0;
      v72 = vaddq_f32(v119, vaddq_f32(v117, v118));
      v73 = vaddq_f32(v122, vaddq_f32(v120, v121));
      v457 = v71;
      v458 = v116;
    }

    else
    {
      v66.i32[3] = 0;
      v69 = vmulq_f32(v20, xmmword_1E3047670);
      v70 = vmulq_f32(v20, xmmword_1E3047680);
      v71 = vmulq_f32(v20, xmmword_1E30476A0);
      v455 = v69;
      v456 = v70;
      v72 = vmulq_f32(v66, xmmword_1E3047680);
      v73 = vmulq_f32(v66, xmmword_1E30476A0);
      v457 = v71;
      v458 = vmulq_f32(v66, xmmword_1E3047670);
    }

    v459 = v72;
    v460 = v73;
    v123 = vmulq_f32(v69, 0);
    v123.i32[3] = 0;
    v124 = vmulq_f32(v70, 0);
    v124.i32[3] = 0;
    v125 = vmulq_f32(v71, 0);
    v125.i32[3] = 0;
    v65 = vaddq_f32(v125, vaddq_f32(v124, v123));
    v451[0] = v65;
  }

  v418 = 0u;
  v424 = 0u;
  v441 = 0u;
  v442 = v38;
  v439 = 0;
  v462 = *(v15 + 80);
  v126 = vmulq_n_f32(xmmword_1E3047670, *&v62);
  v127 = vmulq_n_f32(v56, v126.f32[0]);
  v127.i32[3] = 0;
  v128 = vmulq_lane_f32(v59, *v126.f32, 1);
  v128.i32[3] = 0;
  v129 = vmulq_laneq_f32(v61, v126, 2);
  v129.i32[3] = 0;
  v130 = vaddq_f32(v129, vaddq_f32(v128, v127));
  v449 = 0;
  v447 = vaddq_f32(v38, v130);
  v448 = vsubq_f32(v38, v130);
  v443 = 0;
  v444 = 0x400000000;
  LOBYTE(v445) = 1;
  v431 = &v442;
  v429 = v451;
  v430 = &unk_1F5D217B8;
  v428 = &unk_1F5D21818;
  v427 = vsubq_f32(v38, v65);
  v437 = vneg_f32(0x80000000800000);
  if (physx::Gu::gjk<physx::Gu::LocalConvex<physx::Gu::CapsuleV>,physx::Gu::LocalConvex<physx::Gu::ConvexHullV>>(&v430, &v428, &v427, &v437, &v418, &v424, &v441, &v439) == 2)
  {
    v131 = 0.0;
  }

  else
  {
    v131 = *&v439;
    v133 = v9[2];
    v132 = v9[3];
    v134 = (v132 * v132) + -0.5;
    v135 = v9[1];
    v136 = (((*&v424.i32[1] + *&v424.i32[1]) * v135) + (*v9 * (*v424.i32 + *v424.i32))) + (v133 * (*&v424.i32[2] + *&v424.i32[2]));
    v2.f32[0] = v9[4] + (((v132 * ((v135 * (*&v424.i32[2] + *&v424.i32[2])) - (v133 * (*&v424.i32[1] + *&v424.i32[1])))) + ((*v424.i32 + *v424.i32) * v134)) + (*v9 * v136));
    v1.f32[0] = v9[5] + (((v132 * ((v133 * (*v424.i32 + *v424.i32)) - (*v9 * (*&v424.i32[2] + *&v424.i32[2])))) + ((*&v424.i32[1] + *&v424.i32[1]) * v134)) + (v135 * v136));
    v373 = v9[6] + (((v132 * ((*v9 * (*&v424.i32[1] + *&v424.i32[1])) - (v135 * (*v424.i32 + *v424.i32)))) + ((*&v424.i32[2] + *&v424.i32[2]) * v134)) + (v133 * v136));
    v137 = (((v441.f32[1] + v441.f32[1]) * v135) + (*v9 * (v441.f32[0] + v441.f32[0]))) + (v133 * (v441.f32[2] + v441.f32[2]));
    v412 = ((v132 * ((v135 * (v441.f32[2] + v441.f32[2])) - (v133 * (v441.f32[1] + v441.f32[1])))) + ((v441.f32[0] + v441.f32[0]) * v134)) + (*v9 * v137);
    v406 = ((v132 * ((*v9 * (v441.f32[1] + v441.f32[1])) - (v135 * (v441.f32[0] + v441.f32[0])))) + ((v441.f32[2] + v441.f32[2]) * v134)) + (v133 * v137);
    v408 = ((v132 * ((v133 * (v441.f32[0] + v441.f32[0])) - (*v9 * (v441.f32[2] + v441.f32[2])))) + ((v441.f32[1] + v441.f32[1]) * v134)) + (v135 * v137);
  }

  if (v131 >= (*(v13 + 4) + *v7))
  {
    return 0;
  }

  v138 = 0;
  v139 = *v11;
  v140 = v11[1];
  v141 = v139 + v139;
  v143 = v11[2];
  v142 = v11[3];
  v144 = v142 + v142;
  v145 = ((v142 * (v142 + v142)) + -1.0) + (v139 * (v139 + v139));
  v146 = (v141 * v140) + (v143 * (v142 + v142));
  v147 = (v141 * v143) - (v140 * v144);
  v148 = *(v13 + 8);
  v149 = v145 * v148;
  v150 = v148 * v146;
  v151 = v147 * v148;
  v152 = v11[4];
  v153 = v11[5];
  v154 = v152 + v149;
  v155 = v153 + v150;
  v156 = v11[6];
  v157 = v151 + v156;
  *v424.i32 = v152 + v149;
  *&v424.i32[1] = v153 + v150;
  v158 = v152 - v149;
  v159 = v153 - v150;
  v160 = v156 - v151;
  *&v424.i32[2] = v151 + v156;
  *&v424.i32[3] = v152 - v149;
  v425 = v153 - v150;
  v426 = v156 - v151;
  v161 = 2;
  if ((v152 + v149) == (v152 - v149) && v155 == v159)
  {
    v138 = v157 == v160;
    if (v157 == v160)
    {
      v161 = 1;
    }

    else
    {
      v161 = 2;
    }
  }

  v378 = v131;
  v418 = xmmword_1E3047670;
  v419 = xmmword_1E3047670;
  v420 = xmmword_1E3060D60;
  v421 = xmmword_1E3047680;
  v422 = 0x3F80000000000000;
  v423 = 0;
  if (*(v12 + 4) != 1.0 || *(v12 + 8) != 1.0 || *(v12 + 12) != 1.0)
  {
    physx::Cm::FastVertex2ShapeScaling::init(&v418, v18, v16);
  }

  physx::Gu::getPolygonalData_Convex(&v442, *(v12 + 48), &v418);
  if (v378 <= 0.0)
  {
    v403 = v158;
    v200 = v13;
    v201 = *(v13 + 4);
    v202 = v443;
    v203 = v444;
    v204 = *v9;
    v205 = v9[1];
    v206 = v9[2];
    v207 = v9[3];
    v208 = v205 + v205;
    v209 = v206 + v206;
    v210 = v205 * (v205 + v205);
    v211 = v206 * (v206 + v206);
    v212 = (v204 + v204) * v205;
    v213 = (v204 + v204) * v206;
    v214 = (v204 + v204) * v207;
    v215 = v208 * v206;
    v216 = v208 * v207;
    v217 = v209 * v207;
    *v451 = (1.0 - v210) - v211;
    *(v451 + 1) = v212 + v217;
    v218 = 1.0 - (v204 * (v204 + v204));
    *(v451 + 2) = v213 - v216;
    *(v451 + 3) = v212 - v217;
    *&v451[1] = v218 - v211;
    *(&v451[1] + 1) = v215 + v214;
    *(&v451[1] + 2) = v213 + v216;
    *(&v451[1] + 3) = v215 - v214;
    v453 = *(v9 + 2);
    v219 = *(v9 + 6);
    v452 = v218 - v210;
    v454 = v219;
    if (v443)
    {
      v220 = (v444 + 8);
      *&v165 = 0;
      v221 = 0.0;
      v2.i32[0] = 2139095039;
      v222 = v443;
      while (1)
      {
        v413 = v165;
        v223 = v220[-1].f32[0];
        v224 = v220[-1].f32[1];
        v225 = ((v223 * *(v451 + 2)) + (v224 * *(&v451[1] + 1))) + (v220->f32[0] * v452);
        *v441.f32 = vadd_f32(vadd_f32(vmul_n_f32(*&v451[0], v223), vmul_n_f32(*(v451 + 12), v224)), vmul_n_f32(*(&v451[1] + 8), v220->f32[0]));
        v441.f32[2] = v225;
        LODWORD(v430) = 0;
        if (!GuTestAxis(v441.f32, v424.i32, &v442, &v418, v451, &v430, v201))
        {
          return 0;
        }

        v226.i32[0] = v430;
        HIDWORD(v163) = v441.i32[1];
        *(&v165 + 1) = *(&v413 + 1);
        *&v165 = vbsl_s8(vdup_lane_s32(vcgt_f32(v2, v226), 0), *v441.f32, *&v413);
        if (*&v430 < v2.f32[0])
        {
          v221 = v441.f32[2];
          v2.f32[0] = *&v430;
        }

        v220 = (v220 + 20);
        if (!--v222)
        {
          goto LABEL_41;
        }
      }
    }

    *&v165 = 0;
    v221 = 0.0;
    v2.i32[0] = 2139095039;
LABEL_41:
    v379 = v157;
    v381 = v154;
    v374 = v155;
    v371 = v159;
    if (!v138)
    {
      v227 = v403 - v154;
      v228 = v159 - v155;
      v229 = v160 - v157;
      v230 = ((v228 * v228) + (v227 * v227)) + (v229 * v229);
      v231 = 0.0;
      v232 = 0.0;
      v233 = 0.0;
      if (v230 > 0.0)
      {
        v234 = 1.0 / sqrtf(v230);
        v231 = v227 * v234;
        v232 = v228 * v234;
        v233 = v229 * v234;
      }

      if (v202)
      {
        v235 = -v233;
        v236 = -v231;
        v237 = -v232;
        v238 = (v203 + 8);
        v409 = v233;
        do
        {
          v239 = *(v238 - 2);
          v240 = *(v238 - 1);
          v241 = ((v239 * *v451) + (v240 * *(v451 + 3))) + (*v238 * *(&v451[1] + 2));
          v242 = ((v239 * *(v451 + 1)) + (v240 * *&v451[1])) + (*v238 * *(&v451[1] + 3));
          v243 = ((v239 * *(v451 + 2)) + (v240 * *(&v451[1] + 1))) + (*v238 * v452);
          v244 = (v242 * v235) + (v232 * v243);
          v245 = (v243 * v236) + (v233 * v241);
          v246 = (v241 * v237) + (v231 * v242);
          if (fabsf(v244) > 0.000001 || fabsf(v245) > 0.000001 || fabsf(v246) > 0.000001)
          {
            v247 = v231;
            v414 = v165;
            v248 = ((v245 * v245) + (v244 * v244)) + (v246 * v246);
            v249 = 0.0;
            v250 = 0.0;
            v251 = 0.0;
            if (v248 > 0.0)
            {
              v252 = 1.0 / sqrtf(v248);
              v249 = v244 * v252;
              v250 = v245 * v252;
              v251 = v246 * v252;
            }

            v441.i64[0] = __PAIR64__(LODWORD(v250), LODWORD(v249));
            v441.f32[2] = v251;
            LODWORD(v430) = 0;
            if (!GuTestAxis(v441.f32, v424.i32, &v442, &v418, v451, &v430, v201))
            {
              return 0;
            }

            v253.i32[0] = v430;
            HIDWORD(v163) = v441.i32[1];
            *(&v165 + 1) = *(&v414 + 1);
            *&v165 = vbsl_s8(vdup_lane_s32(vcgt_f32(v2, v253), 0), *v441.f32, *&v414);
            if (*&v430 < v2.f32[0])
            {
              v221 = v441.f32[2];
              v2.f32[0] = *&v430;
            }

            v231 = v247;
            v237 = -v232;
            v233 = v409;
          }

          v238 += 5;
          --v202;
        }

        while (v202);
      }
    }

    v254 = v379;
    v255 = v9[1];
    v256 = v9[2];
    v257 = v9[3];
    v258 = (((v442.f32[1] + v442.f32[1]) * v255) + (*v9 * (v442.f32[0] + v442.f32[0]))) + (v256 * (v442.f32[2] + v442.f32[2]));
    v259 = (v257 * v257) + -0.5;
    v260 = v381;
    v261 = v374;
    *v164.i32 = v9[5] + (((((v256 * (v442.f32[0] + v442.f32[0])) - (*v9 * (v442.f32[2] + v442.f32[2]))) * v257) + ((v442.f32[1] + v442.f32[1]) * v259)) + (v255 * v258));
    v262 = (vmuls_lane_f32(((v374 + v371) * 0.5) - *v164.i32, *&v165, 1) + (*&v165 * (((v381 + v403) * 0.5) - (v9[4] + (((v257 * ((v255 * (v442.f32[2] + v442.f32[2])) - (v256 * (v442.f32[1] + v442.f32[1])))) + ((v442.f32[0] + v442.f32[0]) * v259)) + (*v9 * v258)))))) + (v221 * (((v379 + v160) * 0.5) - (v9[6] + (((v257 * ((*v9 * (v442.f32[1] + v442.f32[1])) - (v255 * (v442.f32[0] + v442.f32[0])))) + ((v442.f32[2] + v442.f32[2]) * v259)) + (v256 * v258)))));
    if (v262 >= 0.0)
    {
      *&v163 = v221;
    }

    else
    {
      *&v163 = -v221;
    }

    *v162.i8 = vcltz_s32(vshl_n_s32(vdup_n_s32(v262 < 0.0), 0x1FuLL));
    v387 = vbsl_s8(*v162.i8, vneg_f32(*&v165), *&v165);
    v432 = v387;
    v389 = *&v163;
    v433 = *&v163;
    v162.i32[0] = *v7;
    GuGenerateVFContacts2(v411, v9, &v442, v18, v161, &v424, &v432, *(v200 + 4), v162, v163, v164);
    v263 = v411[512].u32[0];
    v264 = v138;
    if (v263 == 2)
    {
      v264 = 1;
    }

    if (v264)
    {
      return 1;
    }

    v385 = *(v200 + 4);
    v265 = *v7;
    UniqueConvexEdges = physx::Gu::findUniqueConvexEdges(512, v451, v443, v444, v446);
    v430 = __PAIR64__(LODWORD(v374), LODWORD(v381));
    *&v431 = v379;
    v428 = __PAIR64__(LODWORD(v371), LODWORD(v403));
    *&v429 = v160;
    _S0 = v403 - v381;
    v268 = v371 - v374;
    v269 = v160 - v379;
    v270 = sqrtf(((v268 * v268) + (_S0 * _S0)) + (v269 * v269));
    if (v270 > 0.0)
    {
      v271 = 0.01 / v270;
      v272 = _S0 * v271;
      v273 = v268 * v271;
      v274 = v269 * v271;
      v260 = v381 - v272;
      v261 = v374 - v273;
      *&v430 = v381 - v272;
      *(&v430 + 1) = v374 - v273;
      v254 = v379 - v274;
      *&v431 = v379 - v274;
      *&v428 = v403 + v272;
      *(&v428 + 1) = v371 + v273;
      *&v429 = v160 + v274;
      _S0 = (v403 + v272) - (v381 - v272);
      v268 = (v371 + v273) - (v374 - v273);
      v269 = (v160 + v274) - (v379 - v274);
    }

    v427.i64[0] = __PAIR64__(LODWORD(v268), LODWORD(_S0));
    v427.f32[2] = v269;
    _V5.S[1] = v387.i32[1];
    v276 = vmuls_lane_f32(-v269, v387, 1) + (v268 * v389);
    __asm { FMLA            S1, S0, V5.S[1] }

    v441.f32[0] = v276;
    v441.f32[1] = (v269 * v387.f32[0]) - (_S0 * v389);
    v441.f32[2] = _S1;
    v441.f32[3] = -(((v261 * v441.f32[1]) + (v276 * v260)) + (_S1 * v254));
    v278 = fabsf(v276);
    v279 = fabsf(v441.f32[1]);
    v280 = fabsf(_S1);
    if (v279 <= v278 || v279 <= v280)
    {
      v283 = 1;
      if (v280 <= v278)
      {
        v285 = 2;
        if (!UniqueConvexEdges)
        {
          return 1;
        }

LABEL_78:
        v415 = 1.0 / ((v427.f32[v283] * *(&v432 + v285)) - (v427.f32[v285] * *(&v432 + v283)));
        v287 = v445;
        v289 = v9[2];
        v288 = v9[3];
        v290 = (v288 * v288) + -0.5;
        v292 = *v9;
        v291 = v9[1];
        v407 = -*v9;
        v410 = -v289;
        v405 = -v291;
        v293 = UniqueConvexEdges;
        v399 = *(&v418 + 1);
        v401 = *&v418;
        v395 = *(&v418 + 3);
        v397 = *(&v418 + 2);
        v391 = *(&v419 + 1);
        v393 = *&v419;
        v294 = *(&v419 + 1);
        v295 = v451 + 1;
        v296 = *&v420;
        do
        {
          v297 = *v295;
          v298 = (v287 + 12 * *(v295 - 1));
          v299 = v298[1];
          v300 = v395 * v299;
          v301 = (v399 * *v298) + (v393 * v299);
          v302 = (v397 * *v298) + (v391 * v299);
          v303 = v298[2];
          v304 = *(&v294 + 1) * v303;
          v305 = v302 + (v296 * v303);
          v306 = (((v401 * *v298) + v300) + (*&v294 * v303)) + (((v401 * *v298) + v300) + (*&v294 * v303));
          v307 = (v301 + v304) + (v301 + v304);
          v308 = v305 + v305;
          v309 = ((v291 * v307) + (v292 * v306)) + (v289 * v308);
          v310 = ((v288 * ((v307 * v410) + (v291 * v308))) + (v306 * v290)) + (v292 * v309);
          v311 = ((v288 * ((v308 * v407) + (v289 * v306))) + (v307 * v290)) + (v291 * v309);
          v312 = ((v288 * ((v306 * v405) + (v292 * v307))) + (v308 * v290)) + (v289 * v309);
          v313 = v9[4];
          v314 = v9[5];
          *&v315 = v313 + v310;
          *&v316 = v314 + v311;
          v317 = v9[6];
          v439 = __PAIR64__(v316, v315);
          v440 = v317 + v312;
          v318 = (v287 + 12 * v297);
          v319 = v318[1];
          v320 = v395 * v319;
          v321 = (v399 * *v318) + (v393 * v319);
          v322 = (v397 * *v318) + (v391 * v319);
          v323 = v318[2];
          v324 = *(&v294 + 1) * v323;
          v325 = v322 + (v296 * v323);
          v326 = (((v401 * *v318) + v320) + (*&v294 * v323)) + (((v401 * *v318) + v320) + (*&v294 * v323));
          v327 = (v321 + v324) + (v321 + v324);
          v328 = v325 + v325;
          v329 = ((v291 * v327) + (v292 * v326)) + (v289 * v328);
          v437.f32[0] = v313 + (((v288 * ((v327 * v410) + (v291 * v328))) + (v326 * v290)) + (v292 * v329));
          v437.f32[1] = v314 + (((v288 * ((v328 * v407) + (v289 * v326))) + (v327 * v290)) + (v291 * v329));
          v438 = v317 + (((v288 * ((v326 * v405) + (v292 * v327))) + (v328 * v290)) + (v289 * v329));
          v416.i32[0] = 0;
          if (intersectEdgeEdgePreca(&v430, &v428, &v427, v441.f32, v283, v285, &v432, &v439, v415, -v385 - v265, &v437, &v416, &v435) && v263 <= 0x3F)
          {
            v330 = v416.f32[0];
            v331 = -(v385 + v416.f32[0]);
            v332 = v436 - (v389 * v416.f32[0]);
            v333 = &v411[8 * v263++];
            v411[512].i32[0] = v263;
            *v333 = v387;
            v333[2] = vsub_f32(v435, vmul_n_f32(v387, v330));
            v333[3].f32[0] = v332;
            v333[1].f32[0] = v389;
            v333[1].f32[1] = v331;
            v333[6].i32[1] = -1;
          }

          v295 += 16;
          --v293;
        }

        while (v293);
        return 1;
      }

      v284 = 0;
    }

    else
    {
      v283 = 0;
      v284 = 2;
    }

    v285 = v283;
    v283 = v284;
    if (!UniqueConvexEdges)
    {
      return 1;
    }

    goto LABEL_78;
  }

  *v164.i32 = v408;
  *&v163 = -v408;
  v376 = -v408;
  v377 = -v412;
  v416.f32[0] = -v412;
  v416.f32[1] = -v408;
  v375 = -v406;
  v417 = -v406;
  v162.i32[0] = *v7;
  GuGenerateVFContacts2(v411, v9, &v442, v18, v161, &v424, &v416, *(v13 + 4), v162, v163, v164);
  v166 = v411[512].u32[0];
  if (v166 != 2)
  {
    if (v138)
    {
LABEL_94:
      if (!v166)
      {
        v368 = v378 - *(v13 + 4);
        v411[512].i32[0] = 1;
        *v411 = v416;
        v369 = v417;
        v411[2].i32[0] = v2.i32[0];
        v411[2].i32[1] = v1.i32[0];
        v411[3].f32[0] = v373;
        v411[1].f32[0] = v369;
        v411[1].f32[1] = v368;
        v411[6].i32[1] = -1;
      }

      return 1;
    }

    v370 = v1.i32[0];
    v167 = *v9;
    v168 = v9[1];
    v169 = v9[2];
    v170 = v9[3];
    v171 = v168 + v168;
    v172 = v169 + v169;
    v173 = v168 * (v168 + v168);
    v174 = v169 * (v169 + v169);
    v175 = (v167 + v167) * v168;
    v176 = (v167 + v167) * v169;
    v177 = (v167 + v167) * v170;
    v178 = v171 * v169;
    v179 = v171 * v170;
    v180 = v172 * v170;
    v181 = 1.0 - (v167 * (v167 + v167));
    v384 = v9[5];
    v386 = v9[4];
    v383 = v9[6];
    v372 = *(v13 + 4);
    v182 = *v7;
    v402 = v175 + v180;
    v404 = (1.0 - v173) - v174;
    v398 = v175 - v180;
    v400 = v176 - v179;
    v394 = v178 + v177;
    v396 = v181 - v174;
    v390 = v178 - v177;
    v392 = v176 + v179;
    v388 = v181 - v173;
    v441.f32[0] = (((v175 + v180) * v376) + (v404 * v377)) + ((v176 - v179) * v375);
    v441.f32[1] = (((v181 - v174) * v376) + ((v175 - v180) * v377)) + ((v178 + v177) * v375);
    v441.f32[2] = (((v178 - v177) * v376) + ((v176 + v179) * v377)) + ((v181 - v173) * v375);
    v183 = v450(&v442, &v418, &v441);
    v430 = __PAIR64__(LODWORD(v155), LODWORD(v154));
    *&v431 = v157;
    v428 = __PAIR64__(LODWORD(v159), LODWORD(v158));
    *&v429 = v160;
    v184 = v158 - v154;
    v185 = v159 - v155;
    v186 = v160 - v157;
    v187 = sqrtf(((v185 * v185) + (v184 * v184)) + (v186 * v186));
    if (v187 > 0.0)
    {
      v188 = 0.01 / v187;
      v189 = v184 * v188;
      v190 = v185 * v188;
      v191 = v186 * v188;
      v154 = v154 - v189;
      v155 = v155 - v190;
      v430 = __PAIR64__(LODWORD(v155), LODWORD(v154));
      v157 = v157 - v191;
      *&v431 = v157;
      *&v428 = v158 + v189;
      *(&v428 + 1) = v159 + v190;
      *&v429 = v160 + v191;
      v184 = (v158 + v189) - v154;
      v185 = (v159 + v190) - v155;
      v186 = (v160 + v191) - v157;
    }

    v427.i64[0] = __PAIR64__(LODWORD(v185), LODWORD(v184));
    v427.f32[2] = v186;
    v192 = (v408 * v186) + (v185 * v375);
    v193 = (v406 * v184) + (v186 * v377);
    v194 = (v412 * v185) + (v184 * v376);
    *v451 = -v192;
    *(v451 + 1) = -v193;
    *(v451 + 2) = -v194;
    *(v451 + 3) = -((-(v193 * v155) - (v192 * v154)) + (-v194 * v157));
    v195 = fabsf(v192);
    v196 = fabsf(v193);
    v197 = fabsf(v194);
    if (v196 <= v195 || v196 <= v197)
    {
      v198 = 1;
      if (v197 <= v195)
      {
        v286 = 2;
        goto LABEL_85;
      }

      v199 = 0;
    }

    else
    {
      v198 = 0;
      v199 = 2;
    }

    v286 = v198;
    v198 = v199;
LABEL_85:
    v334 = (v444 + 20 * v183);
    v335 = v334[18];
    v166 = v411[512].u32[0];
    if (v334[18])
    {
      v336 = 0;
      v337 = v445;
      v338 = v446 + *(v334 + 8);
      v339 = v335 - 1;
      v340 = *(&v418 + 1);
      v380 = *&v418;
      v382 = 1.0 / ((v427.f32[v286] * v416.f32[v198]) - (v427.f32[v198] * v416.f32[v286]));
      v341 = *(&v418 + 1);
      v342 = v419;
      v343 = *&v420;
      do
      {
        v344 = (v337 + 12 * *(v338 + v339));
        v345 = v344[1];
        v346 = (v380 * *v344) + (*(&v341 + 1) * v345);
        v347 = (v340 * *v344) + (*&v342 * v345);
        v348 = (*&v341 * *v344) + (*(&v342 + 1) * v345);
        v349 = v344[2];
        v350 = v346 + (*(&v342 + 2) * v349);
        v351 = v347 + (*(&v342 + 3) * v349);
        v352 = v348 + (v343 * v349);
        *&v439 = v386 + ((v392 * v352) + ((v404 * v350) + (v398 * v351)));
        *(&v439 + 1) = v384 + ((v390 * v352) + ((v402 * v350) + (v396 * v351)));
        v440 = v383 + ((v388 * v352) + ((v400 * v350) + (v394 * v351)));
        v353 = (v337 + 12 * *(v338 + v336));
        v354 = v353[1];
        v355 = (v380 * *v353) + (*(&v341 + 1) * v354);
        v356 = (v340 * *v353) + (*&v342 * v354);
        v357 = (*&v341 * *v353) + (*(&v342 + 1) * v354);
        v358 = v353[2];
        v359 = v355 + (*(&v342 + 2) * v358);
        v360 = v356 + (*(&v342 + 3) * v358);
        v361 = v357 + (v343 * v358);
        v437.f32[0] = v386 + ((v392 * v361) + ((v404 * v359) + (v398 * v360)));
        v437.f32[1] = v384 + ((v390 * v361) + ((v402 * v359) + (v396 * v360)));
        v438 = v383 + ((v388 * v361) + ((v400 * v359) + (v394 * v360)));
        v434 = 0.0;
        v432 = __PAIR64__(LODWORD(v408), LODWORD(v412));
        v433 = v406;
        if (intersectEdgeEdgePreca(&v430, &v428, &v427, v451, v198, v286, &v432, &v439, v382, 0.0, &v437, &v434, &v435) && v434 < (v372 + v182) && v166 <= 0x3F)
        {
          v362 = (v406 * v434) + v436;
          v363 = v435.f32[0];
          v364 = (v408 * v434) + v435.f32[1];
          v365 = v434 - v372;
          v366 = v412 * v434;
          v367 = &v411[8 * v166++];
          v411[512].i32[0] = v166;
          v367->f32[0] = v377;
          v367->f32[1] = v376;
          v367[2].f32[0] = v366 + v363;
          v367[2].f32[1] = v364;
          v367[3].f32[0] = v362;
          v367[1].f32[0] = v375;
          v367[1].f32[1] = v365;
          v367[6].i32[1] = -1;
        }

        v339 = v336++;
      }

      while (v335 != v336);
      v166 = v411[512].u32[0];
    }

    v1.i32[0] = v370;
    goto LABEL_94;
  }

  return 1;
}

void GuGenerateVFContacts2(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, float32x2_t *a7, float a8, int32x4_t a9, double a10, int32x4_t a11)
{
  v15 = *a9.i32;
  v18 = 1.0 / *(a4 + 8);
  __asm { FMOV            V2.2S, #1.0 }

  *a9.i8 = vdiv_f32(_D2, *a4);
  v76 = *a9.i8;
  v77 = v18;
  v78 = *(a4 + 12);
  v23 = a2[4] * -2.0;
  *a9.i32 = a2[5] * -2.0;
  _D2.f32[0] = a2[6] * -2.0;
  v25 = a2[2];
  v24 = a2[3];
  *a11.i32 = (v24 * v24) + -0.5;
  v26 = a2[1];
  v27 = ((*a9.i32 * v26) + (*a2 * v23)) + (v25 * _D2.f32[0]);
  v28 = ((v23 * *a11.i32) - (((v26 * _D2.f32[0]) - (v25 * *a9.i32)) * v24)) + (*a2 * v27);
  v29 = ((*a9.i32 * *a11.i32) - (((v25 * v23) - (*a2 * _D2.f32[0])) * v24)) + (v26 * v27);
  v30 = (_D2.f32[0] * *a11.i32) - (((*a2 * *a9.i32) - (v26 * v23)) * v24);
  v75[0] = -*a2;
  v75[1] = -v26;
  v75[2] = -v25;
  v75[3] = v24;
  v75[4] = v28;
  v75[5] = v29;
  v75[6] = v30 + (v25 * v27);
  physx::operator*(&v76, v75, &v79, a9, a11);
  v31 = 0;
  v32 = a7->f32[1];
  v33 = a7[1].f32[0];
  v34 = v79;
  v35 = v80;
  v36 = v81;
  v37 = v82;
  v38 = -(v32 * v82);
  v39 = v83;
  v40 = v84;
  v41 = -(v32 * v83);
  v42 = -(v32 * v84) - (a7->f32[0] * v81);
  v43 = v85;
  v44 = v86;
  v45 = (v38 - (a7->f32[0] * v79)) - (v33 * v85);
  v46 = (v41 - (a7->f32[0] * v80)) - (v33 * v86);
  v47 = v87;
  v48 = v88;
  v49 = v42 - (v33 * v87);
  v50 = v89;
  v51 = v90;
  v52 = *(a3 + 16);
  v53 = *(a3 + 24);
  v54 = (a8 + v15) + -0.00001;
  v55 = *(a1 + 4096);
  do
  {
    if (v52)
    {
      v56 = (a6 + 12 * v31);
      v57 = *v56;
      v58 = v56[1].f32[0];
      v59 = v48 + (((v34 * COERCE_FLOAT(*v56)) + vmuls_lane_f32(v37, *v56, 1)) + (v43 * v58));
      v60 = v50 + (((v35 * COERCE_FLOAT(*v56)) + vmuls_lane_f32(v39, *v56, 1)) + (v44 * v58));
      v61 = v51 + (((v36 * COERCE_FLOAT(*v56)) + vmuls_lane_f32(v40, *v56, 1)) + (v47 * v58));
      v62 = 3.4028e38;
      v63 = -3.4028e38;
      v64 = v52;
      v65 = v53;
      do
      {
        v66 = v65[1];
        v67 = v65[2];
        v68 = v65[3] + (((v60 * v66) + (v59 * *v65)) + (v61 * v67));
        v69 = ((v46 * v66) + (*v65 * v45)) + (v67 * v49);
        v70 = -v68 / v69;
        if (v69 <= 0.0000001)
        {
          if (v69 >= -0.0000001)
          {
            if (v68 > 0.0)
            {
              goto LABEL_21;
            }
          }

          else if (v63 <= v70)
          {
            v63 = -v68 / v69;
          }
        }

        else if (v62 >= v70)
        {
          v62 = -v68 / v69;
        }

        v65 += 5;
        --v64;
      }

      while (v64);
      if (v63 < v54)
      {
        _ZF = v63 >= v62 || v63 == -3.4028e38;
        if (!_ZF && v55 <= 0x3F)
        {
          v72 = a7[1].f32[0];
          v73 = (a1 + (v55++ << 6));
          *(a1 + 4096) = v55;
          v73[1].f32[0] = v72;
          v74 = vsub_f32(v57, vmul_n_f32(*a7, v63));
          *v73 = *a7;
          v73[2] = v74;
          v73[3].f32[0] = v58 - (v63 * v72);
          v73[1].f32[1] = v63 - a8;
          v73[6].i32[1] = -1;
        }
      }
    }

LABEL_21:
    ++v31;
  }

  while (v31 != a5);
}

uint64_t physx::Gu::SourceMesh::remapTopology(uint64_t this, const unsigned int *a2)
{
  v2 = *(this + 24);
  if (v2)
  {
    v4 = this;
    v5 = *(this + 32);
    v6 = physx::shdfnd::Foundation::mInstance;
    v7 = (*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance);
    v9 = *(v6 + 24);
    v8 = v6 + 24;
    v10 = *(v9 + 16);
    if (v5)
    {
      if (v7)
      {
        v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::IndTri32>::getName() [T = physx::Gu::IndTri32]";
      }

      else
      {
        v11 = "<allocation names disabled>";
      }

      v12 = v10(v8, 12 * v2 + 16, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4.cpp", 92);
      v13 = v12;
      *v12 = 12;
      v12[1] = v2;
      v14 = v12 + 2;
      if (*(v4 + 24))
      {
        v15 = 0;
        v16 = v12 + 2;
        do
        {
          v17 = *(v4 + 32) + 12 * a2[v15];
          v18 = *v17;
          *(v16 + 2) = *(v17 + 8);
          *v16 = v18;
          v16 = (v16 + 12);
          ++v15;
          v19 = *(v4 + 24);
        }

        while (v15 < v19);
        v20 = (12 * v19);
      }

      else
      {
        v20 = 0;
      }

      v28 = *(v4 + 32);
    }

    else
    {
      if (v7)
      {
        v21 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::IndTri16>::getName() [T = physx::Gu::IndTri16]";
      }

      else
      {
        v21 = "<allocation names disabled>";
      }

      v22 = v10(v8, 6 * v2 + 16, v21, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4.cpp", 102);
      v13 = v22;
      *v22 = 6;
      v22[1] = v2;
      v14 = v22 + 2;
      if (*(v4 + 24))
      {
        v23 = 0;
        v24 = v22 + 2;
        do
        {
          v25 = *(v4 + 40) + 6 * a2[v23];
          v26 = *v25;
          *(v24 + 2) = *(v25 + 4);
          *v24 = v26;
          v24 = (v24 + 6);
          ++v23;
          v27 = *(v4 + 24);
        }

        while (v23 < v27);
        v20 = (6 * v27);
      }

      else
      {
        v20 = 0;
      }

      v28 = *(v4 + 40);
    }

    memcpy(v28, v14, v20);
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v13);
    v29 = *(v4 + 24);
    if (v29)
    {
      this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v29, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4.cpp", 111);
      v30 = this;
      if (*(v4 + 24))
      {
        v31 = 0;
        v32 = *(v4 + 16);
        do
        {
          v33 = a2;
          if (v32)
          {
            v33 = (v32 + 4 * *a2);
          }

          *(this + 4 * v31++) = *v33;
          ++a2;
        }

        while (v31 < *(v4 + 24));
        if (!v32)
        {
          goto LABEL_29;
        }

LABEL_28:
        this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
LABEL_29:
        *(v4 + 16) = v30;
        return this;
      }
    }

    else
    {
      v30 = 0;
    }

    if (!*(v4 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  return this;
}

float physx::Gu::BV4Tree::init(float32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8) + *(a3 + 20)) * 0.5;
  a1[1] = vmul_f32(vadd_f32(*a3, *(a3 + 12)), 0x3F0000003F000000);
  a1[2].f32[0] = v3;
  v4 = *(a3 + 8);
  v5 = *(a3 + 12) - *a3;
  v6 = *(a3 + 20);
  v7 = *(a3 + 16) - *(a3 + 4);
  *a1 = a2;
  result = sqrtf((((v7 * 0.5) * (v7 * 0.5)) + ((v5 * 0.5) * (v5 * 0.5))) + (((v6 - v4) * 0.5) * ((v6 - v4) * 0.5)));
  a1[2].f32[1] = result;
  return result;
}

double physx::Gu::BV4Tree::release(physx::Gu::BV4Tree *this)
{
  if ((*(this + 68) & 1) == 0 && *(this + 4))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  *this = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 62) = 0;
  return result;
}

double physx::Gu::BV4Tree::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 69) = *(a2 + 69);
  *a2 = 0;
  *(a2 + 24) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 62) = 0;
  return result;
}

uint64_t physx::Gu::BV4Tree::exportExtraData(uint64_t result, uint64_t a2)
{
  if (*(result + 24))
  {
    v3 = result;
    (*(*a2 + 24))(a2, 16);
    v4 = *(v3 + 32);
    v5 = (16 * *(v3 + 24));
    v6 = *(*a2 + 16);

    return v6(a2, v4, v5);
  }

  return result;
}

uint64_t physx::Gu::BV4Tree::load(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t), int a3)
{
  physx::Gu::BV4Tree::release(a1);
  v14 = 0;
  physx::readChunk(&v14 + 3, &v14 + 2, &v14 + 1, &v14, a2);
  result = 0;
  if (HIBYTE(v14) == 66 && BYTE2(v14) == 86 && BYTE1(v14) == 52 && v14 == 32)
  {
    v15 = 0;
    (**a2)(a2, &v15, 4);
    v7 = 1;
    if (v15 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 1;
      if (v15 != 0x1000000)
      {
        v9 = bswap32(v15);
        if (a3)
        {
          v7 = v9;
        }

        else
        {
          v7 = v15;
        }

        if (v7 > 3)
        {
          return 0;
        }

        v8 = a3;
      }
    }

    physx::readFloatBuffer((a1 + 8), 3u, v8, a2);
    *(a1 + 20) = physx::readFloat(v8, a2);
    *(a1 + 40) = physx::readDword(v8, a2);
    physx::readFloatBuffer((a1 + 44), 3u, v8, a2);
    physx::readFloatBuffer((a1 + 56), 3u, v8, a2);
    v10 = v7 != 3 || physx::readDword(v8, a2) != 0;
    *(a1 + 69) = v10;
    Dword = physx::readDword(v8, a2);
    *(a1 + 24) = Dword;
    if (Dword)
    {
      v12 = (16 * Dword);
      if (v12)
      {
        v13 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v12, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4.cpp", 280);
      }

      else
      {
        v13 = 0;
      }

      *(a1 + 32) = v13;
      (**a2)(a2);
    }

    else
    {
      *(a1 + 32) = 0;
    }

    return 1;
  }

  return result;
}

void *physx::Gu::AABBTree::release(void *this)
{
  v1 = this;
  v2 = this[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 - 24;
      v6 = 48 * v4;
      do
      {
        v7 = v5 + v6;
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        v6 -= 48;
      }

      while (v6);
    }

    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v3);
    v1[1] = 0;
  }

  if (*v1)
  {
    this = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v1 = 0;
  return this;
}

BOOL physx::Gu::AABBTree::buildFromMesh(physx::Gu::AABBTree *this, physx::Gu::SourceMesh *a2, unsigned int a3)
{
  v3 = *(a2 + 6);
  if (v3)
  {
    if (v3 == -1)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 24 * (v3 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4Build.cpp", 252);
      v7 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 12 * (v3 + 1), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4Build.cpp", 253);
    }

    v8 = *(a2 + 1);
    v9 = *(a2 + 4);
    v10 = (v6 + 24);
    v11 = (*(a2 + 5) + 4);
    v12 = (v9 + 4);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = v7;
    v15 = v3;
    do
    {
      if (v9)
      {
        v16 = *(v12 - 1);
        v17 = *v12;
        v18 = v12[1];
      }

      else
      {
        v16 = *(v11 - 2);
        v17 = *(v11 - 1);
        v18 = *v11;
      }

      v19 = *(v8 + 12 * v16);
      v20 = *(v8 + 12 * v17);
      v21 = *(v8 + 12 * v18);
      v22 = vminq_f32(vminq_f32(v19, v20), v21);
      v23 = vmaxq_f32(vmaxq_f32(v19, v20), v21);
      v24 = vaddq_f32(v22, v23);
      v22.i32[3] = v23.i32[0];
      *(v10 - 6) = v22;
      *(v10 - 1) = vextq_s8(v23, v23, 4uLL).u64[0];
      *v10 = v23.i32[3];
      *v14 = vmulq_f32(v24, v13);
      v14 = (v14 + 12);
      v10 += 6;
      v11 += 3;
      v12 += 3;
      --v15;
    }

    while (v15);
    physx::Gu::AABBTree::release(this);
    v42 = 1;
    v25 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v3, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4Build.cpp", 283);
    v26 = 0;
    *this = v25;
    v27 = vdupq_n_s64(v3 - 1);
    v28 = (v25 + 8);
    v29 = xmmword_1E3049640;
    v30 = xmmword_1E3049620;
    v31 = vdupq_n_s64(4uLL);
    do
    {
      v32 = vmovn_s64(vcgeq_u64(v27, v30));
      if (vuzp1_s16(v32, *v27.i8).u8[0])
      {
        *(v28 - 2) = v26;
      }

      if (vuzp1_s16(v32, *&v27).i8[2])
      {
        *(v28 - 1) = v26 + 1;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, *&v29))).i32[1])
      {
        *v28 = v26 + 2;
        v28[1] = v26 + 3;
      }

      v26 += 4;
      v29 = vaddq_s64(v29, v31);
      v30 = vaddq_s64(v30, v31);
      v28 += 4;
    }

    while (((v3 + 3) & 0x1FFFFFFFCLL) != v26);
    v33 = (2 * v3 - 1);
    v34 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v35 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::AABBTreeNode>::getName() [T = physx::Gu::AABBTreeNode]";
    }

    else
    {
      v35 = "<allocation names disabled>";
    }

    v36 = (*(*(v34 + 24) + 16))(v34 + 24, 48 * v33 + 16, v35, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4Build.cpp", 291);
    *v36 = 48;
    *(v36 + 8) = v33;
    v37 = v36 + 16;
    v38 = 48 * (2 * v3 - 2) + 48;
    v39 = v36 + 40;
    do
    {
      *v39 = 0;
      *(v39 + 8) = 0;
      *(v39 + 16) = 0;
      v39 += 48;
      v38 -= 48;
    }

    while (v38);
    *(this + 1) = v37;
    *(v36 + 48) = *this;
    *(v36 + 56) = v3;
    local_BuildHierarchy(v37, v6, v7, &v42, v37, a3);
    *(this + 4) = v42;
    if (v7)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    if (v6)
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  return v3 != 0;
}

uint64_t local_BuildHierarchy(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v11 = result;
  v43 = *MEMORY[0x1E69E9840];
  while (1)
  {
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = (a2 + 24 * *v12);
    v15 = *v14;
    v16 = *(v14 + 12);
    v17 = *(a3 + 12 * *v12);
    if (v13 >= 2)
    {
      v18 = v13 - 1;
      v19 = v12 + 1;
      do
      {
        v20 = *v19++;
        v21 = a2 + 24 * v20;
        v15 = vminq_f32(v15, *v21);
        v16 = vmaxq_f32(v16, *(v21 + 12));
        v17 = vaddq_f32(v17, *(a3 + 12 * v20));
        --v18;
      }

      while (v18);
    }

    v15.i32[3] = v16.i32[0];
    *v11 = v15;
    *(v11 + 16) = vextq_s8(v16, v16, 4uLL).u64[0];
    if (v13 <= a6)
    {
      break;
    }

    v22 = vmulq_n_f32(v17, 1.0 / v13);
    v23 = 0uLL;
    v24 = v13;
    do
    {
      v25 = *v12++;
      v26 = vsubq_f32(*(a3 + 12 * v25), v22);
      v23 = vaddq_f32(v23, vmulq_f32(v26, v26));
      --v24;
    }

    while (v24);
    v42 = vmulq_n_f32(v23, 1.0 / (v13 - 1));
    if (v42.n128_f32[2] <= *(&v42 | (4 * (v42.n128_f32[1] > v42.n128_f32[0]))))
    {
      v27 = v42.n128_f32[1] > v42.n128_f32[0];
    }

    else
    {
      v27 = 2;
    }

    v28 = local_Split(v11, a3, v27);
    if (v28)
    {
      v29 = v28 == v13;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      v30 = local_Split(v11, a3, 0) / *(v11 + 40);
      v31 = local_Split(v11, a3, 1u) / *(v11 + 40);
      v32 = local_Split(v11, a3, 2u) / *(v11 + 40);
      v42.n128_f32[0] = (v30 + -0.5) * (v30 + -0.5);
      v42.n128_f32[1] = (v31 + -0.5) * (v31 + -0.5);
      v33 = ((v32 + -0.5) * (v32 + -0.5)) >= v42.n128_f32[v42.n128_f32[1] < v42.n128_f32[0]] ? v42.n128_f32[1] < v42.n128_f32[0] : 2;
      v28 = local_Split(v11, a3, v33);
      v34 = *(v11 + 40);
      v35 = v28 == v34 || v28 == 0;
      v36 = v34 >> 1;
      if (v35)
      {
        v28 = v36;
      }
    }

    v37 = *a4;
    v38 = a5 + 48 * *a4;
    *(v11 + 24) = v38;
    *a4 = v37 + 2;
    v39 = v38 + 48;
    if (a5)
    {
      v40 = v38 + 48;
    }

    else
    {
      v40 = 0;
    }

    v41 = *(v11 + 32);
    *(v38 + 32) = v41;
    *(v38 + 40) = v28;
    *(v40 + 32) = v41 + 4 * v28;
    *(v40 + 40) = *(v11 + 40) - v28;
    result = local_BuildHierarchy(v38, a2, a3, a4, a5, a6);
    v11 = v39;
  }

  return result;
}

uint64_t physx::Gu::AABBTree::walk(BOOL (*)(physx::Gu::AABBTreeNode const*,unsigned int,void *),void *)const::Local::_Walk(uint64_t result, unsigned int *a2, unsigned int *a3, uint64_t (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  if (result)
  {
    v9 = result;
    v10 = *a3 + 1;
    *a3 = v10;
    if (v10 > *a2)
    {
      *a2 = v10;
    }

    if (!a4 || (result = a4(result, *a3, a5), result))
    {
      result = *(v9 + 24);
      if (result)
      {
        result = physx::Gu::AABBTree::walk(BOOL (*)(physx::Gu::AABBTreeNode const*,unsigned int,void *),void *)const::Local::_Walk(result, a2, a3, a4, a5);
        --*a3;
        v11 = *(v9 + 24);
        if (v11)
        {
          result = physx::Gu::AABBTree::walk(BOOL (*)(physx::Gu::AABBTreeNode const*,unsigned int,void *),void *)const::Local::_Walk(v11 + 48, a2, a3, a4, a5);
          --*a3;
        }
      }
    }
  }

  return result;
}

uint64_t BV4BuildParams::allocateNode(BV4BuildParams *this)
{
  v2 = *(this + 3);
  if (!v2 || (v3 = *(v2 + 51208), v3 == 256))
  {
    v4 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v5 = "static const char *physx::shdfnd::ReflectionAllocator<BV4BuildParams::Slab>::getName() [T = BV4BuildParams::Slab]";
    }

    else
    {
      v5 = "<allocation names disabled>";
    }

    v2 = (*(*(v4 + 24) + 16))(v4 + 24, 51224, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4Build.cpp", 509);
    v6 = 0;
    v7 = 8;
    __asm { FMOV            V1.2S, #-1.0 }

    do
    {
      v13 = v6;
      v14 = 192;
      do
      {
        v15 = v2 + v13;
        *(v15 + 48) = 0xFFFFFFFFLL;
        *(v15 + 20) = xmmword_1E3116C80;
        *(v15 + 36) = _D1;
        *(v15 + 56) = 0;
        v13 += 48;
        v14 -= 48;
      }

      while (v14);
      v7 += 200;
      v6 += 200;
    }

    while (v7 != 51208);
    v3 = 0;
    *(v2 + 51208) = 0;
    *(v2 + 51216) = *(this + 3);
    *(this + 3) = v2;
  }

  *(v2 + 51208) = v3 + 1;
  return v2 + 200 * v3 + 8;
}

BOOL physx::Gu::BuildBV4Ex(physx::Gu *this, physx::Gu::BV4Tree *a2, physx::Gu::SourceMesh *a3, float a4)
{
  v4 = a3;
  v8 = *(a2 + 6);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v9 = physx::Gu::AABBTree::buildFromMesh(&v55, a2, a3);
  if (!v9)
  {
    goto LABEL_10;
  }

  if (v8)
  {
    v10 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4Build.cpp", 1483);
  }

  else
  {
    v10 = 0;
  }

  v54 = a2;
  *v49 = v10;
  *&v49[8] = v4;
  *&v49[12] = 0;
  *&v49[16] = v8;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v63.i32[0] = 0;
  v61.i32[0] = 0;
  v11 = v56;
  physx::Gu::AABBTree::walk(BOOL (*)(physx::Gu::AABBTreeNode const*,unsigned int,void *),void *)const::Local::_Walk(v56, &v63, &v61, gReorderCallback, v49);
  physx::Gu::SourceMesh::remapTopology(a2, v10);
  if (v10)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v10);
  }

  v12 = *(a2 + 6);
  if (v12 <= v4 || v12 <= 4)
  {
    physx::Gu::BV4Tree::init(this, a2, v11);
    goto LABEL_10;
  }

  BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_Check(*(v11 + 24));
  *&v50 = a4;
  *(&v50 + 4) = 0;
  *v49 = 1;
  *&v49[12] = 0;
  *&v49[4] = 0;
  Node = BV4BuildParams::allocateNode(v49);
  _BuildBV4(&v55, Node, v11, v49);
  physx::Gu::BV4Tree::init(this, a2, v56);
  *(this + 69) = 1;
  v15.i64[0] = *(Node + 40);
  v15.i64[1] = *(Node + 88);
  v16.i64[0] = *(Node + 136);
  v16.i64[1] = *(Node + 184);
  v17.i64[0] = 0xFFFFFFFFLL;
  v17.i64[1] = 0xFFFFFFFFLL;
  v18 = vbicq_s8(xmmword_1E3102070, vuzp1q_s32(vceqq_s64(v15, v17), vceqq_s64(v16, v17)));
  v18.i32[0] = vaddvq_s32(v18);
  *v18.i8 = vcnt_s8(*v18.i8);
  v18.i16[0] = vaddlv_u8(*v18.i8);
  v19 = v18.i32[0];
  v20 = vaddvq_s32(*&v49[4]);
  v21 = v20;
  v22 = (v20 << 6);
  if (v22)
  {
    v23 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, (v20 << 6), "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4Build.cpp", 1090);
  }

  else
  {
    v23 = 0;
  }

  if ((v19 - 2) >= 3)
  {
    v24 = -1;
  }

  else
  {
    v24 = 2 * (v19 - 2);
  }

  v66 = 0;
  v67 = 4;
  *(this + 10) = v24;
  v65 = 0;
  if (*(this + 69) == 1)
  {
    v59 = 0x80000000800000;
    v60 = -8388609;
    v58[0] = 0x80000000800000;
    v58[1].i32[0] = -8388609;
    _ComputeMaxValues(Node, &v59, v58);
    v25 = 32767.0 / *&v60;
    v26 = *&v60 == 0.0;
    v27 = vdupq_n_s32(0x46FFFE00u);
    *v28.f32 = v59;
    v29 = vceqz_f32(v59);
    v30 = vdiv_f32(*v27.f32, v59);
    v28.i64[1] = __PAIR64__(v58[0].u32[0], v60);
    *(this + 44) = vdivq_f32(v28, v27);
    if (v26)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v25;
    }

    v32 = 32767.0 / v58[1].f32[0];
    if (v58[1].f32[0] == 0.0)
    {
      v32 = 0.0;
    }

    *(this + 60) = vdiv_f32(*(v58 + 4), *v27.f32);
    v63 = vbic_s8(v30, v29);
    v64 = v31;
    v61 = vbic_s8(vdiv_f32(*v27.f32, v58[0]), vceqz_f32(v58[0]));
    v62 = v32;
    _FlattenQ(v23, 0, &v67, Node, &v66, &v65, &v63, &v61, this + 44, this + 56);
  }

  v33 = 4 * v21;
  v34 = *(&v50 + 4);
  if (*(&v50 + 4))
  {
    do
    {
      v35 = *(v34 + 51216);
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      v34 = v35;
    }

    while (v35);
  }

  *(&v50 + 4) = 0;
  if (*(this + 69) == 1)
  {
    if (!v33)
    {
      memcpy(0, v23, v22);
      goto LABEL_40;
    }

    v36 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v37 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Gu::BVDataPackedT<physx::Gu::QuantizedAABB>>::getName() [T = physx::Gu::BVDataPackedT<physx::Gu::QuantizedAABB>]";
    }

    else
    {
      v37 = "<allocation names disabled>";
    }

    v38 = (*(*(v36 + 24) + 16))(v36 + 24, 16 * (4 * v21), v37, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/common/src/../../geomutils/src/mesh/GuBV4Build.cpp", 1218);
    memcpy(v38, v23, v22);
    if ((v21 & 0x3FFFFFFF) != 0)
    {
      v39 = 0;
      v40 = v38 + 6;
      v41 = v38;
      v42 = v23;
      do
      {
        v43 = 0;
        v44 = v40;
        do
        {
          v45 = &v42[v43];
          HIDWORD(v46) = *(v44 - 6);
          LODWORD(v46) = HIDWORD(v46);
          *v45 = v46 >> 16;
          HIDWORD(v46) = *(v44 - 2);
          LODWORD(v46) = HIDWORD(v46);
          *(v45 + 4) = v46 >> 16;
          HIDWORD(v46) = *(v44 + 2);
          LODWORD(v46) = HIDWORD(v46);
          *(v45 + 8) = v46 >> 16;
          *(v45 + 12) = *&v41[4 * v43 + 12];
          v43 += 4;
          v44 += 16;
        }

        while (v43 != 16);
        ++v39;
        v42 += 64;
        v40 += 64;
        v41 += 64;
      }

      while (v39 != (v21 & 0x3FFFFFFF));
    }

    else if (!v38)
    {
      goto LABEL_40;
    }

    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, v38);
  }

LABEL_40:
  *(this + 6) = v33;
  *(this + 4) = v23;
  v47 = *(&v50 + 4);
  if (*(&v50 + 4))
  {
    do
    {
      v48 = *(v47 + 51216);
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
      v47 = v48;
    }

    while (v48);
  }

LABEL_10:
  physx::Gu::AABBTree::release(&v55);
  return v9;
}

uint64_t gReorderCallback(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!*(a1 + 24))
  {
    v3 = *(a1 + 40);
    ++*(a3 + v3 + 5);
    if (v3)
    {
      v4 = *(a1 + 32);
      v5 = *a3;
      v6 = *(a3 + 3);
      do
      {
        *(v5 + 4 * v6) = *v4;
        v7 = *(a3 + 3);
        *v4++ = v7;
        v6 = v7 + 1;
        *(a3 + 3) = v6;
        --v3;
      }

      while (v3);
    }
  }

  return 1;
}

uint64_t MeshRayCollider::collideOBB(const physx::Gu::Box *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 88);
  v10 = (*(a3 + 92) >> 1) & 1;
  v12 = *(a3 + 40);
  v11 = *(a3 + 48);
  *v38 = 0;
  v38[2] = 0;
  v34 = 0;
  v35 = 0.0;
  RayRTreeCallback<0,false>::RayRTreeCallback(v36, a4, v10, v11, v12, v38, &v34, a2, v9, 0.0);
  if (!a5)
  {
    goto LABEL_13;
  }

  v13 = *(a1 + 8);
  v14 = *a1;
  v15 = *(a1 + 4);
  if (v13 >= 0.0)
  {
    if (v14 < -v15)
    {
      v19 = (0.5 / sqrtf(v13 + ((1.0 - v14) - v15))) * (*(a1 + 1) - *(a1 + 3));
      goto LABEL_11;
    }

    v21 = v13 + ((v14 + 1.0) + v15);
    v20 = 0.5 / sqrtf(v21);
  }

  else
  {
    if (v14 <= v15)
    {
      v16 = ((1.0 - v14) + v15) - v13;
      v17 = *(a1 + 6);
      v18 = *(a1 + 2);
    }

    else
    {
      v16 = ((v14 + 1.0) - v15) - v13;
      v17 = *(a1 + 5);
      v18 = *(a1 + 7);
    }

    v20 = v17 - v18;
    v21 = 0.5 / sqrtf(v16);
  }

  v19 = v21 * v20;
LABEL_11:
  if (fabsf(v19) <= 0.9999)
  {
LABEL_13:
    physx::Gu::RTree::traverseOBB(a3 + 160, a1, 4u, v38, v37);
    return RayRTreeCallback<0,false>::~RayRTreeCallback(v36);
  }

  v22 = *(a1 + 13);
  v23 = *(a1 + 14);
  v25 = *(a1 + 11);
  v24 = *(a1 + 12);
  v26 = ((fabsf(*(a1 + 3)) * v22) + (fabsf(v14) * v24)) + (fabsf(*(a1 + 6)) * v23);
  v27 = ((fabsf(v15) * v22) + (fabsf(*(a1 + 1)) * v24)) + (fabsf(*(a1 + 7)) * v23);
  v28 = ((fabsf(*(a1 + 5)) * v22) + (fabsf(*(a1 + 2)) * v24)) + (fabsf(v13) * v23);
  v29 = *(a1 + 9);
  v30 = *(a1 + 10);
  *&v34 = v29 - v26;
  *(&v34 + 1) = v30 - v27;
  v35 = v25 - v28;
  *&v32 = v29 + v26;
  *(&v32 + 1) = v27 + v30;
  v33 = v28 + v25;
  physx::Gu::RTree::traverseAABB(a3 + 160, &v34, &v32, 4, v38, v37);
  return RayRTreeCallback<0,false>::~RayRTreeCallback(v36);
}

uint64_t MeshRayCollider::collide<1,1>(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, float a7)
{
  v54 = *MEMORY[0x1E69E9840];
  if (a7 == 0.0)
  {
    RayRTreeCallback<1,false>::RayRTreeCallback(&v29, a5, (*(a4 + 92) >> 1) & 1, *(a4 + 48), *(a4 + 40), a1, a2, a3, *(a4 + 88), a7, a6);
    v11 = *a6;
    v12 = a6[1];
    v13 = a6[2];
    v14 = *a1;
    v15 = a1[1];
    v16 = a1[2];
    *&v27 = *a1 - *a6;
    *(&v27 + 1) = v15 - v12;
    v28 = v16 - v13;
    *&v25 = v11 + v14;
    *(&v25 + 1) = v12 + v15;
    v26 = v13 + v16;
    physx::Gu::RTree::traverseAABB(a4 + 160, &v27, &v25, 4, v53, v30);
    return RayRTreeCallback<1,false>::~RayRTreeCallback(&v29);
  }

  else
  {
    v18 = *(a4 + 88);
    v19 = (*(a4 + 92) >> 1) & 1;
    v29 = &unk_1F5D22450;
    v30[0] = &unk_1F5D22480;
    v30[1] = a5;
    v31 = v19;
    v20 = vextq_s8(*(a4 + 40), *(a4 + 40), 8uLL);
    v32 = v20;
    v20.i64[0] = *a1;
    v21 = *a2;
    v20.i32[2] = a1[2];
    v22 = v20;
    v22.i32[3] = *a2;
    v33 = a6;
    v34 = v22;
    v35 = *(a2 + 4);
    v36 = a3;
    v37 = v18;
    v38 = a7;
    v39 = 0;
    v40 = 0;
    v41 = -1;
    v42 = 0;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v46 = 2139095039;
    v47 = 0;
    v49 = *(a5 + 8) == 1;
    *&v23 = __PAIR64__(v35, v21);
    *&v24 = *a6;
    *(&v24 + 2) = a6[2];
    v48 = 0;
    *(&v24 + 1) = DWORD2(v24);
    v20.i32[3] = 0;
    v50 = v24;
    v51 = v20;
    *(&v23 + 1) = HIDWORD(v35);
    v52 = v23;
    physx::Gu::RTree::traverseRay<1>(a4 + 160, a1, a2, a7, 4, v53, &v29, a6);
    return RayRTreeCallback<1,true>::~RayRTreeCallback(&v29);
  }
}

uint64_t physx::Gu::raycast_triangleMesh_RTREE(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, unsigned __int16 *a6, unsigned int a7, uint64_t a8, float a9, int32x4_t a10, double a11, int32x4_t a12)
{
  v131 = *MEMORY[0x1E69E9840];
  v21 = a2 + 4;
  v22 = *(a2 + 4);
  a10.i32[0] = *(a2 + 12);
  v23 = 1.0;
  if (v22.f32[0] == 1.0 && COERCE_FLOAT(HIDWORD(*(a2 + 4))) == 1.0 && *a10.i32 == 1.0)
  {
    v50 = 0;
    v51 = a4[1] - a3[5];
    v52 = a4[2] - a3[6];
    v53 = (*a4 - a3[4]) + (*a4 - a3[4]);
    v54 = v51 + v51;
    v55 = v52 + v52;
    v57 = a3[2];
    v56 = a3[3];
    v58 = (v56 * v56) + -0.5;
    v59 = *a3;
    v60 = a3[1];
    v61 = ((v54 * v60) + (*a3 * v53)) + (v57 * v55);
    v41.f32[0] = ((v53 * v58) - (((v60 * v55) - (v57 * v54)) * v56)) + (*a3 * v61);
    v49 = ((v54 * v58) - (((v57 * v53) - (*a3 * v55)) * v56)) + (v60 * v61);
    v42 = ((v55 * v58) - (((*a3 * v54) - (v60 * v53)) * v56)) + (v57 * v61);
    v97.f32[0] = v41.f32[0];
    v97.f32[1] = v49;
    v98 = v42;
    v62 = *a5 + *a5;
    v63 = a5[1] + a5[1];
    v64 = a5[2] + a5[2];
    v65 = ((v60 * v63) + (v59 * v62)) + (v57 * v64);
    v46.f32[0] = ((v62 * v58) - (((v60 * v64) - (v57 * v63)) * v56)) + (v59 * v65);
    v47 = ((v63 * v58) - (((v57 * v62) - (v59 * v64)) * v56)) + (v60 * v65);
    v45 = ((v64 * v58) - (((v59 * v63) - (v60 * v62)) * v56)) + (v57 * v65);
    v95 = __PAIR64__(LODWORD(v47), v46.u32[0]);
    v96 = v45;
  }

  else
  {
    __asm { FMOV            V2.2S, #1.0 }

    v80 = vdiv_f32(_D2, v22);
    v81 = 1.0 / *a10.i32;
    v82 = *(a2 + 16);
    v29 = a3[4] * -2.0;
    *a10.i32 = a3[5] * -2.0;
    _D2.f32[0] = a3[6] * -2.0;
    v31 = a3[2];
    v30 = a3[3];
    *a12.i32 = (v30 * v30) + -0.5;
    v32 = a3[1];
    v33 = ((*a10.i32 * v32) + (*a3 * v29)) + (v31 * _D2.f32[0]);
    v34 = ((v29 * *a12.i32) - (((v32 * _D2.f32[0]) - (v31 * *a10.i32)) * v30)) + (*a3 * v33);
    v35 = ((*a10.i32 * *a12.i32) - (((v31 * v29) - (*a3 * _D2.f32[0])) * v30)) + (v32 * v33);
    v36 = (_D2.f32[0] * *a12.i32) - (((*a3 * *a10.i32) - (v32 * v29)) * v30);
    v130[0] = -*a3;
    v130[1] = -v32;
    v130[2] = -v31;
    v130[3] = v30;
    v130[4] = v34;
    v130[5] = v35;
    v130[6] = v36 + (v31 * v33);
    physx::operator*(&v80, v130, &v103, a10, a12);
    v92 = v104;
    v94 = v106;
    v91 = v103;
    v93 = v105;
    v37 = a4[1];
    v38 = vadd_f32(vmul_n_f32(v103, *a4), vmul_n_f32(*(&v104 + 4), v37));
    v39 = (*&v104 * *a4) + (*(&v104 + 3) * v37);
    v40 = a4[2];
    v41 = vadd_f32(*(v106.i64 + 4), vadd_f32(v38, vmul_n_f32(v105, v40)));
    v42 = *&v106.i32[3] + (v39 + (*v106.i32 * v40));
    v97 = v41;
    v98 = v42;
    v43 = a5[1];
    v44 = a5[2];
    v45 = ((*&v104 * *a5) + (*(&v104 + 3) * v43)) + (*v106.i32 * v44);
    v46 = vadd_f32(vadd_f32(vmul_n_f32(v103, *a5), vmul_n_f32(*(&v104 + 4), v43)), vmul_n_f32(v105, v44));
    v95 = v46;
    v96 = v45;
    v47 = v46.f32[1];
    v48 = sqrtf((vmuls_lane_f32(v46.f32[1], v46, 1) + (v46.f32[0] * v46.f32[0])) + (v45 * v45));
    v23 = 1.0 / v48;
    if (v48 > 0.0)
    {
      v46.f32[0] = v46.f32[0] * v23;
      v47 = v46.f32[1] * v23;
      LODWORD(v95) = v46.i32[0];
      *(&v95 + 1) = v46.f32[1] * v23;
      v45 = v45 * v23;
      v96 = v45;
    }

    a9 = (v48 * a9) + 0.001;
    v49 = v41.f32[1];
    v50 = &v91;
  }

  v66 = *(a2 + 32);
  v67 = *a6;
  v68 = (v66 & 2 | *a6 & 0x80) != 0;
  v69 = (*a6 & 0x40) == 0;
  if (a7 >= 2)
  {
    v69 = 2;
  }

  v81 = *&v69;
  v80 = &unk_1F5D22228;
  *(&v82 + 4) = a8;
  HIDWORD(v82) = 0;
  v83 = a7;
  v84 = v21;
  v85 = a3;
  v86 = v50;
  v87 = v67;
  v88 = a5;
  v89 = (v66 & 2) != 0;
  v90 = v23;
  if (a9 == 0.0)
  {
    v77 = v41.f32[0];
    v78 = v49;
    v79 = v42;
    RayRTreeCallback<0,false>::RayRTreeCallback(&v103, &v80, (*(a1 + 92) >> 1) & 1, *(a1 + 48), *(a1 + 40), &v97, &v95, v68, *(a1 + 88), a9);
    v101 = __PAIR64__(LODWORD(v78), LODWORD(v77));
    v102 = v79;
    *&v99 = v77 + 0.0;
    *(&v99 + 1) = v78 + 0.0;
    v100 = v79 + 0.0;
    physx::Gu::RTree::traverseAABB(a1 + 160, &v101, &v99, 4, v130, &v104);
    RayRTreeCallback<0,false>::~RayRTreeCallback(&v103);
  }

  else
  {
    v70 = *(a1 + 88);
    v71 = (*(a1 + 92) >> 1) & 1;
    v103 = &unk_1F5D223B8;
    *&v104 = &unk_1F5D223E8;
    *(&v104 + 1) = &v80;
    v105.i32[0] = v71;
    v106 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
    v107 = 0;
    v108 = v41.i32[0];
    v109 = v49;
    v110 = v42;
    v111 = v46.i32[0];
    v112 = v47;
    v113 = v45;
    v114 = v68;
    v115 = v70;
    v116 = a9;
    v117 = 0;
    v118 = 0;
    v119 = -1;
    v120 = 0;
    v122 = 0;
    v123 = 0;
    v121 = 0;
    v124 = 2139095039;
    v125 = 0;
    v73 = (v67 & 0x40) == 0 && a7 < 2;
    v127 = v73;
    v126 = 0;
    *&v74 = __PAIR64__(LODWORD(v49), v41.u32[0]);
    *(&v74 + 1) = LODWORD(v42);
    *&v75 = __PAIR64__(LODWORD(v47), v46.u32[0]);
    *(&v75 + 1) = LODWORD(v45);
    v128 = v74;
    v129 = v75;
    physx::Gu::RTree::traverseRay<0>(a1 + 160, &v97, &v95, a9, 4, v130, &v103);
    RayRTreeCallback<0,true>::~RayRTreeCallback(&v103);
  }

  return HIDWORD(v82);
}

uint64_t physx::Gu::intersectSphereVsMesh_RTREE(float *a1, uint64_t a2, float *a3, float *a4, uint64_t a5, int8x16_t a6, int32x4_t a7)
{
  v8 = *a4;
  a7.i32[0] = a4[1];
  a6.i32[0] = a4[2];
  if (*a4 == 1.0 && *a7.i32 == 1.0 && *a6.i32 == 1.0)
  {
    DWORD2(v90) = 2;
    *&v91 = v82;
    *(&v91 + 1) = a5;
    LOWORD(v92) = 0;
    v60 = a1[1] - a3[5];
    v61 = a1[3];
    v62 = a1[2] - a3[6];
    v63 = (*a1 - a3[4]) + (*a1 - a3[4]);
    v64 = v60 + v60;
    v65 = v62 + v62;
    v67 = a3[2];
    v66 = a3[3];
    v68 = (v66 * v66) + -0.5;
    v69 = *a3;
    v70 = a3[1];
    v71 = ((v64 * v70) + (*a3 * v63)) + (v67 * v65);
    v72 = ((v64 * v68) - (((v67 * v63) - (*a3 * v65)) * v66)) + (v70 * v71);
    *&v90 = &unk_1F5D224E8;
    *(&v94 + 1) = v72;
    *(&v94 + 2) = ((v65 * v68) - (((v69 * v64) - (v70 * v63)) * v66)) + (v67 * v71);
    v93 = v61 * v61;
    *&v94 = ((v63 * v68) - (((v70 * v65) - (v67 * v64)) * v66)) + (v69 * v71);
    *&v102 = *&v94;
    *(&v102 + 1) = v72;
    v103 = SDWORD2(v94);
    v112 = 1065353216;
    v113 = 0.0;
    v100.i32[0] = fmaxf(v61, 0.001);
    v100.i32[1] = v100.i32[0];
    v101 = v100.f32[0];
    MeshRayCollider::collide<1,1>(&v102, &v112, 1, a2, &v90, &v100, 0.0);
    v73 = v92;
  }

  else
  {
    v11 = ((v8 * *a7.i32) * *a6.i32) < 0.0;
    v12 = a4[3];
    v13 = a4[4];
    v14 = a4[5];
    v15 = a4[6];
    v16 = v13 + v13;
    v17 = v14 + v14;
    v18 = v13 * (v13 + v13);
    v19 = v14 * (v14 + v14);
    v20 = (v12 + v12) * v13;
    v21 = (v12 + v12) * v14;
    v22 = (v12 + v12) * v15;
    v23 = v16 * v14;
    v24 = v16 * v15;
    v25 = v17 * v15;
    v26 = (1.0 - v18) - v19;
    v27 = v20 + v25;
    v28 = v21 - v24;
    v29 = v20 - v25;
    v30 = 1.0 - (v12 * (v12 + v12));
    v31 = v30 - v19;
    v32 = v23 + v22;
    v33 = v21 + v24;
    v34 = v23 - v22;
    v35 = v30 - v18;
    v36 = v8 * v26;
    v37 = v8 * v29;
    v38 = v8 * v33;
    v39 = *a7.i32 * v27;
    v40 = *a7.i32 * v31;
    *a7.i32 = *a7.i32 * v34;
    v41 = *a6.i32 * v28;
    v42 = *a6.i32 * v32;
    *a6.i32 = *a6.i32 * v35;
    *&v112 = (v28 * v41) + ((v26 * v36) + (v27 * v39));
    *(&v112 + 1) = (v28 * v42) + ((v26 * v37) + (v27 * v40));
    v113 = (*a6.i32 * v28) + ((v26 * v38) + (v27 * *a7.i32));
    v114 = (v32 * v41) + ((v29 * v36) + (v31 * v39));
    v115 = (v32 * v42) + ((v29 * v37) + (v31 * v40));
    v116 = (*a6.i32 * v32) + ((v29 * v38) + (v31 * *a7.i32));
    v117 = (v35 * v41) + ((v33 * v36) + (v34 * v39));
    v118 = (v35 * v42) + ((v33 * v37) + (v34 * v40));
    v119 = (v35 * *a6.i32) + ((v33 * v38) + (v34 * *a7.i32));
    v43 = 2;
    v103 = 2;
    v104 = &v112;
    v105 = a5;
    v106 = 0;
    v107 = v11;
    v102 = &unk_1F5D22540;
    a6.i32[0] = *a1;
    *&v44 = *(a1 + 1);
    *a7.i32 = (*a1 - a3[4]) + (*a1 - a3[4]);
    v45 = (*&v44 - a3[5]) + (*&v44 - a3[5]);
    v46 = (*(&v44 + 1) - a3[6]) + (*(&v44 + 1) - a3[6]);
    v48 = a3[2];
    v47 = a3[3];
    v49 = (v47 * v47) + -0.5;
    v50 = a3[1];
    v51 = ((v45 * v50) + (*a3 * *a7.i32)) + (v48 * v46);
    v52 = ((*a7.i32 * v49) - (((v50 * v46) - (v48 * v45)) * v47)) + (*a3 * v51);
    v53 = ((v45 * v49) - (((v48 * *a7.i32) - (*a3 * v46)) * v47)) + (v50 * v51);
    *a7.i32 = ((v46 * v49) - (((*a3 * v45) - (v50 * *a7.i32)) * v47)) + (v48 * v51);
    v110 = v53;
    v111 = a7.i32[0];
    a7.i32[0] = a1[3];
    v108 = *a7.i32 * *a7.i32;
    v109 = v52;
    v90 = xmmword_1E3047670;
    v91 = xmmword_1E3047670;
    v92 = 1065353216;
    DWORD2(v44) = a7.i32[0];
    HIDWORD(v44) = a7.i32[0];
    v93 = *a6.i32;
    v54 = v83;
    v94 = v44;
    v95 = a7.i32[0];
    physx::Gu::computeVertexSpaceOBB(v82, &v90, a3, a4, a6, a7);
    if (v88 <= v89)
    {
      v55 = v89;
    }

    else
    {
      v55 = v88;
    }

    if (v87 >= v55)
    {
      v58 = 0;
      v56 = 1;
      v59 = v84;
      v57 = v83;
      v54 = v82;
    }

    else
    {
      v56 = 0;
      v57 = v82;
      if (v88 >= v89)
      {
        v58 = 1;
        v43 = 2;
        v59 = v84;
      }

      else
      {
        v58 = 2;
        v43 = 1;
        v59 = v83;
        v54 = v84;
      }
    }

    v74 = *(&v87 + v58);
    v75 = v74 * v54[1].f32[0];
    v76 = fabsf(v57[1].f32[0]);
    v77 = *(&v87 + v56);
    v78 = fabsf(v59[1].f32[0]);
    v79 = *(&v87 + v43);
    v80 = vmul_n_f32(*v54, v74);
    v100 = vsub_f32(v85, v80);
    v101 = v86 - v75;
    v96 = vadd_f32(vadd_f32(vmul_n_f32(vabs_f32(*v57), v77), vmul_n_f32(vabs_f32(*v59), v79)), vdup_n_s32(0x3A83126Fu));
    v97 = ((v76 * v77) + (v78 * v79)) + 0.001;
    v98 = v80;
    v99 = v75;
    MeshRayCollider::collide<1,1>(&v100, &v98, 1, a2, &v102, &v96, 2.0);
    v73 = v106;
  }

  return v73 & 1;
}

uint64_t physx::Gu::intersectBoxVsMesh_RTREE(uint64_t a1, uint64_t a2, int32x4_t *a3, void *a4, uint64_t a5, int8x16_t a6, int32x4_t a7)
{
  a7.i32[0] = *a4;
  v11 = *(a4 + 1);
  v12 = *(a4 + 2);
  v13 = 1.0;
  if (*a4 == 1.0 && v11 == 1.0 && v12 == 1.0)
  {
    v88 = *a3[1].i32 * -2.0;
    v89 = *&a3[1].i32[1] * -2.0;
    v90 = *&a3[1].i32[2] * -2.0;
    v91 = *&a3->i32[2];
    v92 = *&a3->i32[3];
    v93 = (v92 * v92) + -0.5;
    v94 = *a3->i32;
    v95 = *&a3->i32[1];
    v96 = ((v89 * v95) + (*a3->i32 * v88)) + (v91 * v90);
    v97 = ((v88 * v93) - (((v95 * v90) - (v91 * v89)) * v92)) + (*a3->i32 * v96);
    v98 = ((v89 * v93) - (((v91 * v88) - (*a3->i32 * v90)) * v92)) + (v95 * v96);
    v99 = ((v90 * v93) - (((*a3->i32 * v89) - (v95 * v88)) * v92)) + (v91 * v96);
    v100 = *a1 + *a1;
    v101 = *(a1 + 4) + *(a1 + 4);
    v102 = *(a1 + 8) + *(a1 + 8);
    v103 = (-(v95 * v101) - (*a3->i32 * v100)) - (v91 * v102);
    v104 = ((v92 * ((v91 * v101) - (v95 * v102))) + (v100 * v93)) - (*a3->i32 * v103);
    v105 = ((v92 * ((*a3->i32 * v102) - (v91 * v100))) + (v101 * v93)) - (v95 * v103);
    v106 = ((v92 * ((v95 * v100) - (*a3->i32 * v101))) + (v102 * v93)) - (v91 * v103);
    v107 = *(a1 + 12) + *(a1 + 12);
    v108 = *(a1 + 16) + *(a1 + 16);
    v109 = *(a1 + 20) + *(a1 + 20);
    v110 = (-(v95 * v108) - (*a3->i32 * v107)) - (v91 * v109);
    v111 = (v92 * ((v91 * v108) - (v95 * v109))) + (v107 * v93);
    v112 = v111 - (*a3->i32 * v110);
    v113 = ((v92 * ((*a3->i32 * v109) - (v91 * v107))) + (v108 * v93)) - (v95 * v110);
    v114 = (v92 * ((v95 * v107) - (*a3->i32 * v108))) + (v109 * v93);
    v115 = v114 - (v91 * v110);
    v116 = *(a1 + 24) + *(a1 + 24);
    v117 = *(a1 + 28) + *(a1 + 28);
    v118 = *(a1 + 32) + *(a1 + 32);
    v119 = (-(v95 * v117) - (*a3->i32 * v116)) - (v91 * v118);
    v120 = ((v92 * ((v91 * v117) - (v95 * v118))) + (v116 * v93)) - (*a3->i32 * v119);
    v121 = ((v92 * ((*a3->i32 * v118) - (v91 * v116))) + (v117 * v93)) - (v95 * v119);
    v122 = ((v92 * ((v95 * v116) - (*a3->i32 * v117))) + (v118 * v93)) - (v91 * v119);
    v123 = *(a1 + 36) + *(a1 + 36);
    v124 = *(a1 + 40) + *(a1 + 40);
    v125 = *(a1 + 44) + *(a1 + 44);
    v126 = (-(v95 * v124) - (*a3->i32 * v123)) - (v91 * v125);
    v127 = ((v92 * ((v91 * v124) - (v95 * v125))) + (v123 * v93)) - (*a3->i32 * v126);
    v128 = ((v92 * ((*a3->i32 * v125) - (v91 * v123))) + (v124 * v93)) - (v95 * v126);
    v129 = ((v92 * ((v95 * v123) - (*a3->i32 * v124))) + (v125 * v93)) - (v91 * v126);
    v130 = v97 + v127;
    v131 = v98 + v128;
    v132 = v99 + v129;
    v133 = *(a1 + 48);
    v134 = *(a1 + 52);
    v135 = *(a1 + 56);
    *v172 = v104;
    *&v172[1] = v105;
    *&v172[2] = v106;
    *&v172[3] = v112;
    *&v172[4] = v113;
    *&v172[5] = v115;
    *&v172[6] = v120;
    *&v172[7] = v121;
    *&v172[8] = v122;
    *&v172[9] = v130;
    *&v172[10] = v131;
    *&v172[11] = v132;
    v172[12] = v133;
    v172[13] = v134;
    v172[14] = v135;
    v136 = (v112 * v121) - (v113 * v120);
    v137 = ((v105 * ((v115 * v120) - (v112 * v122))) + (v104 * ((v113 * v122) - (v115 * v121)))) + (v106 * v136);
    if (v137 == 0.0)
    {
      v141 = 0.0;
      v142 = 0.0;
      v143 = 0.0;
      v144 = 1.0;
      v145 = 0.0;
      v146 = 0.0;
      v147 = 0.0;
      v148 = 1.0;
    }

    else
    {
      v138 = -(v114 + (-v91 * v110));
      v139 = -(v111 + (-v94 * v110));
      v140 = 1.0 / v137;
      v13 = ((v113 * v122) - (v121 * v115)) * (1.0 / v137);
      v141 = -(((v105 * v122) - (v121 * v106)) * (1.0 / v137));
      v142 = ((v105 * v115) - (v106 * v113)) * (1.0 / v137);
      v143 = -(((v120 * v138) + (v112 * v122)) * (1.0 / v137));
      v144 = ((v104 * v122) - (v106 * v120)) * v140;
      v145 = -(((v104 * v115) - (v106 * v112)) * v140);
      v146 = v136 * v140;
      v147 = -(((v104 * v121) - (v105 * v120)) * v140);
      v148 = ((v105 * v139) + (v104 * v113)) * v140;
    }

    *v173 = v13;
    *&v173[1] = v141;
    *&v173[2] = v142;
    *&v173[3] = v143;
    *&v173[4] = v144;
    *&v173[5] = v145;
    *&v173[6] = v146;
    *&v173[7] = v147;
    *&v173[8] = v148;
    v156 = 2;
    v157 = v173;
    v158 = a5;
    v159 = 0;
    v155 = &unk_1F5D22580;
    *v171 = -((-(v131 * v144) - (v130 * v141)) - (v132 * v147));
    *(v171 + 1) = -((-(v131 * v145) - (v130 * v142)) - (v132 * v148));
    v168 = __PAIR64__(v134, v133);
    v170 = -((-(v131 * v143) - (v130 * v13)) - (v132 * v146));
    v169 = v135;
  }

  else
  {
    *a6.i32 = (*a7.i32 * v11) * v12;
    v17 = *a6.i32 < 0.0;
    physx::Gu::computeVertexSpaceOBB(v172, a1, a3->i32, a4, a6, a7);
    v18 = vdup_lane_s32(*a3->i8, 1);
    v19 = vdup_laneq_s32(*a3, 2);
    v20 = vdup_laneq_s32(*a3, 3);
    _Q4 = vaddq_f32(*a3, *a3);
    v22 = vdup_lane_s32(vmul_f32(*a3->i8, *_Q4.f32), 0);
    v23 = vmul_lane_f32(v18, *_Q4.f32, 1);
    v24 = vmul_laneq_f32(v19, _Q4, 2);
    v25 = vmul_n_f32(v18, _Q4.f32[0]);
    v26 = vmul_n_f32(v19, _Q4.f32[0]);
    v27 = vmul_n_f32(v20, _Q4.f32[0]);
    v28 = vmul_lane_f32(v19, *_Q4.f32, 1);
    v29 = vmul_lane_f32(v20, *_Q4.f32, 1);
    v30 = vmul_laneq_f32(v20, _Q4, 2);
    __asm { FMOV            V4.2S, #1.0 }

    v34 = vsub_f32(*_Q4.f32, v22);
    v35 = vadd_f32(v25, v30);
    v150 = vsub_f32(v26, v29);
    v36 = vsub_f32(v25, v30);
    v37 = vsub_f32(v34, v24);
    v38 = vadd_f32(v28, v27);
    v39 = vadd_f32(v26, v29);
    v40 = vsub_f32(v28, v27);
    v41 = vsub_f32(v34, v23).f32[0];
    v42 = *(a4 + 2);
    v23.i32[0] = *a1;
    v43 = *(a1 + 4);
    v44 = *(a1 + 8);
    v26.i32[0] = *(a1 + 12);
    v29.i32[0] = *(a1 + 16);
    v30.i32[0] = *(a1 + 20);
    v27.i32[0] = *(a1 + 24);
    v24.i32[0] = *(a1 + 28);
    _Q4.i32[0] = *(a1 + 32);
    v34.i32[0] = *(a1 + 36);
    v25.i32[0] = *(a1 + 40);
    v45 = *(a1 + 44);
    v46 = (-(v25.f32[0] * v43) - (*a1 * v34.f32[0])) - (v44 * v45);
    v153 = (-(v25.f32[0] * v24.f32[0]) - (v27.f32[0] * v34.f32[0])) - (_Q4.f32[0] * v45);
    v154 = (-(v25.f32[0] * v29.f32[0]) - (v26.f32[0] * v34.f32[0])) - (v30.f32[0] * v45);
    v34.i32[0] = a3[1].i32[0];
    v25.i32[0] = a3[1].i32[1];
    v47 = *&a3[1].i32[2];
    v156 = 2;
    v157 = v173;
    v158 = a5;
    LOBYTE(v159) = 0;
    HIBYTE(v159) = v17;
    v151 = ((v26.f32[0] * v34.f32[0]) + (v29.f32[0] * v25.f32[0])) + (v30.f32[0] * v47);
    v152 = (v27.f32[0] * v34.f32[0]) + (v24.f32[0] * v25.f32[0]);
    v48 = v46 + (((v23.f32[0] * v34.f32[0]) + (v43 * v25.f32[0])) + (v44 * v47));
    v49 = *(a4 + 12);
    v50 = *(a4 + 20);
    v51 = vadd_f32(v49, v49);
    v52 = vmul_f32(v49, __PAIR64__(v51.u32[1], v49.u32[0]));
    v53 = vadd_f32(v49, __PAIR64__(v51.u32[1], v49.u32[0]));
    v54 = vmul_lane_f32(v50, v51, 1);
    v55 = vmul_n_f32(v50, vadd_f32(v50, v50).f32[0]);
    v56 = vmul_n_f32(v50, v53.f32[0]);
    v57 = vext_s8(v52, v53, 4uLL);
    v58 = vmul_f32(v49, v53).f32[0];
    v49.i32[0] = 1.0;
    v53.i32[0] = vsub_f32(v49, v57).u32[0];
    v59 = vmul_f32(v49, v57);
    v57.f32[0] = 1.0 - v58;
    v53.i32[1] = v59.i32[1];
    v60 = vsub_f32(v53, v55);
    v53.i32[0] = v57.i32[0];
    v61 = vrev64_s32(v54);
    v62 = vext_s8(vadd_f32(v59, v55), vsub_f32(v53, v55), 4uLL);
    v53.i32[0] = vsub_f32(v56, v61).u32[0];
    *v52.i32 = v57.f32[0] - *&v52.i32[1];
    v63 = vadd_f32(v56, v61);
    v64 = vsub_f32(v61, v56);
    v65 = vmul_f32(*a4, __PAIR64__(v64.u32[1], v63.u32[0]));
    v53.i32[1] = v63.i32[1];
    v66 = vadd_f32(vadd_f32(vmul_n_f32(v60, v65.f32[0]), vmul_lane_f32(v62, v65, 1)), vmul_n_f32(v53, (v57.f32[0] - *&v52.i32[1]) * v42));
    v67 = vaddv_f32(vmul_f32(__PAIR64__(v64.u32[1], v63.u32[0]), v65)) + (*v52.i32 * (*v52.i32 * v42));
    v68 = vmul_n_f32(v60, COERCE_FLOAT(*a4));
    v69 = vmul_n_f32(v68, v63.f32[0]);
    v70 = vmul_lane_f32(v62, *a4, 1);
    v71 = vmul_n_f32(v53, v42);
    v72 = vadd_f32(vadd_f32(vmul_n_f32(v60, v68.f32[0]), vmul_n_f32(v62, v70.f32[0])), vmul_n_f32(v53, v71.f32[0]));
    v73 = vadd_f32(vadd_f32(vmul_lane_f32(v60, v68, 1), vmul_lane_f32(v62, v70, 1)), vmul_lane_f32(v53, v71, 1));
    v74 = vadd_f32(vadd_f32(v69, vmul_lane_f32(v70, v64, 1)), vmul_n_f32(v71, *v52.i32));
    v71.f32[0] = vadd_f32(vmul_f32(v40, v66), vadd_f32(vmul_f32(v35, v72), vmul_f32(v37, v73))).f32[0];
    v75 = vmul_f32(vzip1_s32(v40, v35), vzip2_s32(v66, v72));
    v76 = vadd_f32(vmul_lane_f32(v66, v39, 1), vadd_f32(vmul_n_f32(v72, (1.0 - v23.f32[1]) - v24.f32[1]), vmul_lane_f32(v73, v36, 1)));
    v77 = vadd_f32(v75, vadd_f32(vdup_lane_s32(v75, 1), vmul_lane_f32(v37, v73, 1)));
    *v78.i8 = vadd_f32(vmul_n_f32(v66, v41), vadd_f32(vmul_n_f32(v72, *v150.i32), vmul_n_f32(v73, *v38.i32)));
    v79 = vdup_lane_s32(v37, 0);
    v79.f32[0] = (1.0 - v23.f32[1]) - v24.f32[1];
    v80 = vadd_f32(vmul_f32(v79, v74), vmul_f32(vext_s8(v36, v35, 4uLL), vrev64_s32(v74)));
    v79.f32[0] = v67 * v41;
    v81 = vzip1q_s32(v78, vdupq_lane_s32(*v78.i8, 1));
    v82 = vadd_f32(vmul_n_f32(vext_s8(v39, v40, 4uLL), v67), v80);
    *v38.i32 = v79.f32[0] + vaddv_f32(vmul_f32(vzip1_s32(v150, v38), v74));
    v39.f32[0] = (v44 * *v78.i32) + ((v23.f32[0] * *v76.i32) + (v43 * v71.f32[0]));
    *v40.i32 = (v30.f32[0] * *v78.i32) + ((v26.f32[0] * *v76.i32) + (v29.f32[0] * v71.f32[0]));
    *v78.i8 = v76;
    v78.i64[1] = __PAIR64__(v76.u32[1], v77.u32[0]);
    v83 = vext_s8(v76, v77, 4uLL);
    *v84.f32 = vdup_lane_s32(v77, 0);
    *&v84.u32[2] = v83;
    v85.i64[0] = __PAIR64__(v23.u32[0], v27.u32[0]);
    v85.i64[1] = __PAIR64__(v27.u32[0], v29.u32[0]);
    v86 = vmulq_f32(v85, v78);
    v84.i32[0] = v71.i32[0];
    v85.i64[0] = __PAIR64__(LODWORD(v43), v24.u32[0]);
    v85.i64[1] = __PAIR64__(v24.u32[0], v26.u32[0]);
    v87 = vmulq_f32(v85, v84);
    v85.i64[0] = __PAIR64__(LODWORD(v44), _Q4.u32[0]);
    v85.i64[1] = __PAIR64__(_Q4.u32[0], v30.u32[0]);
    v26.f32[1] = v43;
    v23.i32[1] = v29.i32[0];
    v30.f32[1] = v44;
    v160 = v39.i32[0];
    v161 = v40.i32[0];
    v162 = vaddq_f32(vmulq_f32(v85, v81), vaddq_f32(v86, v87));
    v163 = vrev64_s32(vadd_f32(vmul_n_f32(v30, *v38.i32), vadd_f32(vmul_f32(v26, v82), vrev64_s32(vmul_f32(v23, v82)))));
    v164 = ((v27.f32[0] * v82.f32[0]) + vmuls_lane_f32(v24.f32[0], v82, 1)) + (*v38.i32 * _Q4.f32[0]);
    v165 = v48;
    v166 = v154 + v151;
    v167 = v153 + (v152 + (_Q4.f32[0] * v47));
    v168 = *(a1 + 48);
    v169 = *(a1 + 56);
    v155 = &unk_1F5D225C0;
    v171[0] = 0;
    v170 = 0.0;
  }

  MeshRayCollider::collideOBB(v172, 1, a2, &v155, 1);
  return v159 & 1;
}

uint64_t physx::Gu::intersectCapsuleVsMesh_RTREE(Capsule *a1, uint64_t a2, float *a3, float *a4, uint64_t a5)
{
  v130 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  v8 = a4[1];
  v9 = a4[2];
  if (*a4 == 1.0 && v8 == 1.0 && v9 == 1.0)
  {
    v97 = 2;
    v98 = v110;
    v99 = a5;
    v100 = 0;
    v96 = &unk_1F5D22600;
    v67 = a3[4];
    v66 = a3[5];
    v68 = a3[6];
    v69 = *(a1 + 3);
    v70 = (*a1 - v67) + (*a1 - v67);
    v71 = (*(a1 + 1) - v66) + (*(a1 + 1) - v66);
    v72 = (*(a1 + 2) - v68) + (*(a1 + 2) - v68);
    v74 = a3[2];
    v73 = a3[3];
    v75 = (v73 * v73) + -0.5;
    v76 = *a3;
    v77 = a3[1];
    v78 = ((v71 * v77) + (*a3 * v70)) + (v74 * v72);
    v79 = ((v70 * v75) - (((v77 * v72) - (v74 * v71)) * v73)) + (*a3 * v78);
    v80 = ((v71 * v75) - (((v74 * v70) - (*a3 * v72)) * v73)) + (v77 * v78);
    v81 = ((v72 * v75) - (((*a3 * v71) - (v77 * v70)) * v73)) + (v74 * v78);
    *v101 = v79;
    *&v101[1] = v80;
    v82 = *(a1 + 6);
    v83 = (v69 - v67) + (v69 - v67);
    v84 = (*(a1 + 4) - v66) + (*(a1 + 4) - v66);
    v85 = (*(a1 + 5) - v68) + (*(a1 + 5) - v68);
    v86 = ((v77 * v84) + (v76 * v83)) + (v74 * v85);
    v87 = ((v83 * v75) - (((v77 * v85) - (v74 * v84)) * v73)) + (v76 * v86);
    *&v101[2] = v81;
    *&v101[3] = v87;
    v102 = ((v84 * v75) - (((v74 * v83) - (v76 * v85)) * v73)) + (v77 * v86);
    v103 = ((v85 * v75) - (((v76 * v84) - (v77 * v83)) * v73)) + (v74 * v86);
    v88 = v87 - v79;
    v89 = v102 - v80;
    v90 = v103 - v81;
    v91 = ((v89 * v89) + (v88 * v88)) + (v90 * v90);
    v104 = v82;
    v105 = v87 - v79;
    v106 = v102 - v80;
    v107 = v90;
    v92 = 1.0 / v91;
    if (v91 == 0.0)
    {
      v92 = 0.0;
    }

    v108 = ((v89 * v89) + (v88 * v88)) + (v90 * v90);
    v109 = v92;
    v95[0] = v82;
    v95[1] = v82;
    v95[2] = v82;
    v94[0] = v87 - v79;
    v94[1] = v102 - v80;
    v94[2] = v90;
    RayRTreeCallback<1,false>::RayRTreeCallback(&v111, &v96, (*(a2 + 92) >> 1) & 1, *(a2 + 48), *(a2 + 40), v101, v94, 1, *(a2 + 88), 1.0, v95);
    physx::Gu::RTree::traverseRay<1>(a2 + 160, v101, v94, 1.0, 4, v129, &v111, v95);
    RayRTreeCallback<1,false>::~RayRTreeCallback(&v111);
    v65 = v100;
  }

  else
  {
    v13 = a4[3];
    v14 = a4[4];
    v15 = a4[5];
    v16 = a4[6];
    v17 = v14 + v14;
    v18 = v15 + v15;
    v19 = v14 * (v14 + v14);
    v20 = v15 * (v15 + v15);
    v21 = (v13 + v13) * v14;
    v22 = (v13 + v13) * v15;
    v23 = (v13 + v13) * v16;
    v24 = v17 * v15;
    v25 = v17 * v16;
    v26 = v18 * v16;
    v27 = (1.0 - v19) - v20;
    v28 = v21 + v26;
    v29 = v22 - v25;
    v30 = v21 - v26;
    v31 = 1.0 - (v13 * (v13 + v13));
    v32 = v31 - v20;
    v33 = v24 + v23;
    v34 = v22 + v25;
    v35 = v24 - v23;
    v36 = v31 - v19;
    v129[0] = (v29 * (v9 * v29)) + ((v27 * (v7 * v27)) + (v28 * (v8 * v28)));
    v129[1] = (v29 * (v9 * v33)) + ((v27 * (v7 * v30)) + (v28 * (v8 * v32)));
    v129[2] = ((v9 * v36) * v29) + ((v27 * (v7 * v34)) + (v28 * (v8 * v35)));
    v129[3] = (v33 * (v9 * v29)) + ((v30 * (v7 * v27)) + (v32 * (v8 * v28)));
    v129[4] = (v33 * (v9 * v33)) + ((v30 * (v7 * v30)) + (v32 * (v8 * v32)));
    v129[5] = ((v9 * v36) * v33) + ((v30 * (v7 * v34)) + (v32 * (v8 * v35)));
    v129[6] = (v36 * (v9 * v29)) + ((v34 * (v7 * v27)) + (v35 * (v8 * v28)));
    v129[7] = (v36 * (v9 * v33)) + ((v34 * (v7 * v30)) + (v35 * (v8 * v32)));
    v129[8] = (v36 * (v9 * v36)) + ((v34 * (v7 * v34)) + (v35 * (v8 * v35)));
    v112 = 2;
    v113 = v129;
    v114 = a5;
    v115 = 0;
    v116 = ((v7 * v8) * v9) < 0.0;
    v111 = &unk_1F5D22640;
    v37 = *(a1 + 6);
    v39 = a3[4];
    v38 = a3[5];
    v40 = a3[6];
    v41 = *(a1 + 3);
    v42 = (*a1 - v39) + (*a1 - v39);
    v43 = (*(a1 + 1) - v38) + (*(a1 + 1) - v38);
    v44 = (*(a1 + 2) - v40) + (*(a1 + 2) - v40);
    v46 = a3[2];
    v45 = a3[3];
    v47 = (v45 * v45) + -0.5;
    v48 = *a3;
    v49 = a3[1];
    v50 = ((v43 * v49) + (*a3 * v42)) + (v46 * v44);
    v51 = ((v42 * v47) - (((v49 * v44) - (v46 * v43)) * v45)) + (*a3 * v50);
    v52 = ((v43 * v47) - (((v46 * v42) - (*a3 * v44)) * v45)) + (v49 * v50);
    v53 = ((v44 * v47) - (((*a3 * v43) - (v49 * v42)) * v45)) + (v46 * v50);
    v117 = v51;
    v118 = v52;
    v54 = (v41 - v39) + (v41 - v39);
    v55 = (*(a1 + 4) - v38) + (*(a1 + 4) - v38);
    v56 = (*(a1 + 5) - v40) + (*(a1 + 5) - v40);
    v57 = ((v49 * v55) + (v48 * v54)) + (v46 * v56);
    v119 = v53;
    v120 = ((v54 * v47) - (((v49 * v56) - (v46 * v55)) * v45)) + (v48 * v57);
    v121 = ((v55 * v47) - (((v46 * v54) - (v48 * v56)) * v45)) + (v49 * v57);
    v122 = ((v56 * v47) - (((v48 * v55) - (v49 * v54)) * v45)) + (v46 * v57);
    v58 = v120 - v51;
    v59 = v121 - v52;
    v60 = v122 - v53;
    v61 = ((v59 * v59) + (v58 * v58)) + (v60 * v60);
    v123 = v37;
    v124 = v120 - v51;
    v125 = v121 - v52;
    v126 = v60;
    v62 = 1.0 / v61;
    if (v61 == 0.0)
    {
      v62 = 0.0;
    }

    v127 = ((v59 * v59) + (v58 * v58)) + (v60 * v60);
    v128 = v62;
    *v63.i32 = physx::Gu::Box::create(v110, a1);
    physx::Gu::computeVertexSpaceOBB(&v96, v110, a3, a4, v63, v64);
    MeshRayCollider::collideOBB(&v96, 1, a2, &v111, 1);
    v65 = v115;
  }

  return v65 & 1;
}

uint64_t physx::Gu::sweepCapsule_MeshGeom_RTREE(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, uint64_t a6, __int16 *a7, float a8, float a9)
{
  v15 = a4[5];
  v16 = a4[6] + a9;
  v17 = *a4;
  v18 = a4[1];
  v101[0] = *a4;
  v101[1] = v18;
  v19 = a4[2];
  v20 = a4[3];
  v101[2] = v19;
  v101[3] = v20;
  v21 = a4[4];
  v101[4] = v21;
  v101[5] = v15;
  v101[6] = v16;
  v23 = *(a2 + 4);
  v24 = *(a2 + 8);
  v22 = (a2 + 4);
  v26 = v23 == 1.0 && v24 == 1.0 && *(a2 + 12) == 1.0;
  v27 = *(a2 + 32);
  v28 = a3[4];
  v29 = a3[5];
  v30 = v17 - v28;
  v31 = a3[6];
  v32 = v30 + v30;
  v33 = (v18 - v29) + (v18 - v29);
  v34 = (v19 - v31) + (v19 - v31);
  v36 = a3[2];
  v35 = a3[3];
  v37 = (v35 * v35) + -0.5;
  v39 = *a3;
  v38 = a3[1];
  v40 = ((v33 * v38) + (*a3 * v32)) + (v36 * v34);
  v41 = ((v32 * v37) - (((v38 * v34) - (v36 * v33)) * v35)) + (*a3 * v40);
  v42 = ((v33 * v37) - (((v36 * v32) - (*a3 * v34)) * v35)) + (v38 * v40);
  v43 = ((v34 * v37) - (((*a3 * v33) - (v38 * v32)) * v35)) + (v36 * v40);
  v44 = (v20 - v28) + (v20 - v28);
  v45 = (v21 - v29) + (v21 - v29);
  v46 = (v15 - v31) + (v15 - v31);
  v47 = ((v45 * v38) + (*a3 * v44)) + (v36 * v46);
  v48 = ((v44 * v37) - (((v38 * v46) - (v36 * v45)) * v35)) + (*a3 * v47);
  v49 = ((v45 * v37) - (((v36 * v44) - (*a3 * v46)) * v35)) + (v38 * v47);
  v50 = ((v46 * v37) - (((*a3 * v45) - (v38 * v44)) * v35)) + (v36 * v47);
  v51 = (v43 + v50) * 0.5;
  v99.f32[0] = (v41 + v48) * 0.5;
  v99.f32[1] = (v42 + v49) * 0.5;
  v100 = v51;
  v52 = *a5 + *a5;
  v53 = a5[1] + a5[1];
  v54 = a5[2] + a5[2];
  v55 = ((v38 * v53) + (v39 * v52)) + (v36 * v54);
  v56 = ((v52 * v37) - (((v38 * v54) - (v36 * v53)) * v35)) + (v39 * v55);
  v57 = ((v53 * v37) - (((v36 * v52) - (v39 * v54)) * v35)) + (v38 * v55);
  v58 = ((v54 * v37) - (((v39 * v53) - (v38 * v52)) * v35)) + (v36 * v55);
  v97.f32[0] = v56;
  v97.f32[1] = v57;
  v98 = v58;
  v95.f32[0] = v16 + (vabds_f32(v41, v48) * 0.5);
  v95.f32[1] = v16 + (vabds_f32(v42, v49) * 0.5);
  v96 = v16 + (vabds_f32(v43, v50) * 0.5);
  if (v26)
  {
    v59 = v38 + v38;
    v60 = v36 + v36;
    v61 = v38 * (v38 + v38);
    v62 = v36 * (v36 + v36);
    v63 = (v39 + v39) * v38;
    v64 = (v39 + v39) * v36;
    v65 = v35 * (v39 + v39);
    v66 = v59 * v36;
    v67 = v35 * v59;
    v68 = v35 * v60;
    v69 = 1.0;
    v70 = v63 + v68;
    v71 = v63 - v68;
    *&v92 = (1.0 - v61) - v62;
    *(&v92 + 1) = v70;
    v72 = 1.0 - (v39 * (v39 + v39));
    *(&v92 + 2) = v64 - v67;
    *(&v92 + 3) = v71;
    *&v93 = v72 - v62;
    *(&v93 + 1) = v65 + v66;
    *(&v93 + 2) = v64 + v67;
    *(&v93 + 3) = v66 - v65;
    v94[0] = v72 - v61;
    v94[1] = v28;
    v94[2] = v29;
    v94[3] = v31;
    v73 = a8;
  }

  else
  {
    v88 = (v41 + v48) * 0.5;
    v89 = (v42 + v49) * 0.5;
    physx::operator*(a3, v22, v90);
    v92 = *v90;
    v93 = *&v90[16];
    *v94 = v91[0];
    v85 = (v56 * a8) + v88;
    v86 = (v57 * a8) + v89;
    v87 = (v58 * a8) + v51;
    v74 = 1.0 / *(a2 + 12);
    __asm { FMOV            V2.2S, #1.0 }

    v102 = vdiv_f32(_D2, *(a2 + 4));
    v103 = v74;
    *v104 = *(a2 + 16);
    physx::Cm::FastVertex2ShapeScaling::init(v90, &v102, v104);
    v79 = v100;
    v80 = v96;
    v100 = ((v88 * *&v90[8]) + (v89 * *&v90[20])) + (v100 * *v91);
    v96 = (fabsf(*&v90[8] * v95.f32[0]) + fabsf(*&v90[20] * v95.f32[1])) + fabsf(*v91 * v96);
    v99 = vadd_f32(vadd_f32(vmul_n_f32(*v90, v88), vmul_n_f32(*&v90[12], v89)), vmul_n_f32(*&v90[24], v79));
    v95 = vadd_f32(vadd_f32(vabs_f32(vmul_n_f32(*v90, v95.f32[0])), vabs_f32(vmul_n_f32(*&v90[12], v95.f32[1]))), vabs_f32(vmul_n_f32(*&v90[24], v80)));
    v81 = vsub_f32(vadd_f32(vadd_f32(vmul_n_f32(*v90, v85), vmul_n_f32(*&v90[12], v86)), vmul_n_f32(*&v90[24], v87)), v99);
    v82 = (((v85 * *&v90[8]) + (v86 * *&v90[20])) + (v87 * *v91)) - v100;
    v97 = v81;
    v98 = v82;
    v83 = sqrtf((COERCE_FLOAT(vmul_f32(v81, v81).i32[1]) + (v81.f32[0] * v81.f32[0])) + (v82 * v82));
    v73 = 0.0;
    if (v83 >= 1.0e-20)
    {
      v97 = vmul_n_f32(v81, 1.0 / v83);
      v98 = v82 * (1.0 / v83);
      v73 = v83;
    }

    v69 = v73 / a8;
  }

  physx::Gu::SweepCapsuleMeshHitCallback::SweepCapsuleMeshHitCallback(v90, a6, &v92, (v27 & 2) != 0, v101, a5, a7, ((*(a2 + 4) * *(a2 + 8)) * *(a2 + 12)) < 0.0, a8, v69);
  MeshRayCollider::collide<1,1>(&v99, &v97, 1, a1, v90, &v95, v73);
  return physx::Gu::SweepCapsuleMeshHitCallback::finalizeHit(v90, a6, v101, a2);
}

uint64_t physx::Gu::sweepBox_MeshGeom_RTREE(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4, int32x2_t *a5, uint64_t a6, unsigned __int16 *a7, __n128 a8, __n128 a9, __n128 a10)
{
  v219 = a8.n128_u64[0];
  v220 = a9.n128_u64[0];
  v254 = *MEMORY[0x1E69E9840];
  v19 = *(a2 + 4);
  v20 = *(a2 + 8);
  v18 = (a2 + 4);
  if (v19 == 1.0 && v20 == 1.0)
  {
    v22 = (*a7 >> 7) & 1;
    v23 = (*(a2 + 32) >> 1) & 1;
    if (*(a2 + 12) == 1.0)
    {
      v24 = a3->f32[0];
      v25 = a3->f32[1];
      v26 = a3[1].f32[0];
      v27 = a3[1].f32[1];
      v28 = v25 * (v25 + v25);
      v29 = v26 * (v26 + v26);
      v30 = (v24 + v24) * v25;
      v31 = (v24 + v24) * v26;
      v32 = (v24 + v24) * v27;
      v10.f32[0] = (v25 + v25) * v26;
      v33 = (v25 + v25) * v27;
      v34 = (v26 + v26) * v27;
      v35 = (1.0 - v28) - v29;
      v36 = v30 + v34;
      v37 = v31 - v33;
      v38 = v30 - v34;
      v39 = 1.0 - (v24 * (v24 + v24));
      v215 = v39 - v29;
      v216 = v10.f32[0] + v32;
      v217.f32[0] = v31 + v33;
      v217.f32[1] = v10.f32[0] - v32;
      v218 = v39 - v28;
      v41 = a3[2].f32[0];
      v40 = a3[2].f32[1];
      v42 = a3[3].f32[0];
      v43.f32[0] = -v26;
      v44 = -v24 - v24;
      v45.f32[0] = -v25 - v25;
      v46 = -v26 - v26;
      v47 = -(v25 * v45.f32[0]);
      v48.f32[0] = -(v25 * v44);
      v10.f32[0] = 1.0 - v47;
      v49 = (a3->f32[0] * v44) + 1.0;
      v50 = v49 - v47;
      v52 = *(a4 + 32);
      v51 = *(a4 + 36);
      v53 = *(a4 + 40);
      v54 = *(a4 + 44);
      v56 = *a4;
      v55 = *(a4 + 4);
      v45.f32[1] = v44;
      v43.f32[1] = v27;
      v57 = vrev64_s32(vmul_n_f32(v45, v43.f32[0]));
      v58 = vmul_n_f32(v43, v46);
      v59.i32[0] = vsub_f32(v10, v58).u32[0];
      v60 = __PAIR64__(v48.u32[0], v10.u32[0]);
      v61 = vmul_n_f32(v45, v27);
      v48.f32[1] = v49;
      v62 = vadd_f32(v57, v61);
      v63 = vsub_f32(v57, v61);
      v64 = __PAIR64__(v63.u32[1], v62.u32[0]);
      v59.i32[1] = vadd_f32(v60, *&v58).i32[1];
      v65 = *(a4 + 12);
      v66 = vsub_f32(v48, vrev64_s32(v58));
      v238 = vadd_f32(vadd_f32(vmul_n_f32(v59, v51 - v41), vmul_n_f32(v66, v53 - v40)), vmul_n_f32(__PAIR64__(v63.u32[1], v62.u32[0]), v54 - v42));
      v67 = __PAIR64__(v66.u32[1], v59.u32[0]);
      v68 = vmul_f32(v59, __PAIR64__(LODWORD(v56), LODWORD(v65)));
      v69 = vmul_f32(v59, vrev64_s32(__PAIR64__(LODWORD(v56), LODWORD(v65))));
      v71 = *(a4 + 16);
      v70 = *(a4 + 20);
      v72 = vmul_f32(v66, __PAIR64__(LODWORD(v55), LODWORD(v71)));
      v73 = vmul_f32(v66, __PAIR64__(LODWORD(v71), LODWORD(v55)));
      v74 = vdup_lane_s32(v66, 0);
      v66.i32[1] = v59.i32[1];
      v59.i32[0] = v74.i32[1];
      v75 = *a5;
      v76 = vmul_f32(v59, vrev64_s32(*a5));
      v239 = (((v51 - v41) * v63.f32[0]) + vmuls_lane_f32(v53 - v40, v62, 1)) + (v50 * (v54 - v42));
      v77 = *a5[1].i32;
      v78 = vadd_f32(vadd_f32(v76, vmul_f32(v67, v75)), vmul_n_f32(__PAIR64__(v63.u32[1], v62.u32[0]), v77));
      v79 = vaddv_f32(vmul_f32(__PAIR64__(v62.u32[1], v63.u32[0]), v75)) + (v50 * v77);
      v80 = vadd_f32(v68, v72);
      v81 = vadd_f32(v69, v73);
      v82 = *(a4 + 24);
      v83 = vmul_lane_f32(__PAIR64__(v82.u32[1], LODWORD(v55)), v62, 1);
      v72.f32[0] = (v65 * v63.f32[0]) + vmuls_lane_f32(v71, v62, 1);
      v84 = *(a4 + 8);
      v85 = vadd_f32(v80, vmul_f32(v64, __PAIR64__(LODWORD(v84), LODWORD(v70))));
      v86 = vadd_f32(v81, vmul_f32(v64, __PAIR64__(LODWORD(v70), LODWORD(v84))));
      v72.f32[0] = v72.f32[0] + (v50 * v70);
      v87 = vadd_f32(vadd_f32(vmul_f32(v66, vrev64_s32(v82)), vmul_f32(v67, v82)), vmul_n_f32(v64, v52));
      v88 = *(a4 + 48);
      v89 = vmul_f32(vabs_f32(v85), vrev64_s32(v88));
      v90 = vabs_f32(v86);
      v91 = v51;
      v92 = vadd_f32(v89, vmul_f32(v90, v88));
      v93 = vdup_lane_s32(v82, 0);
      v93.f32[0] = v56;
      v94 = vadd_f32(vadd_f32(vmul_n_f32(v93, v63.f32[0]), v83), vmul_n_f32(__PAIR64__(LODWORD(v52), LODWORD(v84)), v50));
      v93.f32[0] = vmuls_lane_f32(fabsf(v72.f32[0]), v88, 1);
      v88.i32[1] = *(a4 + 56);
      v95 = vmul_f32(vabs_f32(v94), v88);
      v96 = vadd_f32(v92, vmul_n_f32(vabs_f32(v87), *&v88.i32[1]));
      v221 = vmul_n_f32(v78, *v219.i32);
      v97 = v79 * *v219.i32;
      v98 = (v95.f32[0] + v93.f32[0]) + v95.f32[1];
      v99 = *&v82.i32[1];
      v100 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v22 = (*a7 >> 7) & 1;
    v23 = (*(a2 + 32) >> 1) & 1;
  }

  physx::operator*(a3, v18, &v242);
  v118 = *a3->f32;
  *v170.i8 = vdup_lane_s32(*a3, 1);
  v101 = vdup_laneq_s32(*a3->f32, 2);
  v102 = vdup_laneq_s32(*a3->f32, 3);
  _Q4 = vaddq_f32(v118, v118);
  *v118.i8 = vdup_lane_s32(vmul_f32(*a3, *_Q4.f32), 0);
  v104 = vmul_lane_f32(*v170.i8, *_Q4.f32, 1);
  v105 = vmul_laneq_f32(v101, _Q4, 2);
  *v170.i8 = vmul_n_f32(*v170.i8, _Q4.f32[0]);
  v106 = vmul_n_f32(v101, _Q4.f32[0]);
  v107 = vmul_n_f32(v102, _Q4.f32[0]);
  v108 = vmul_lane_f32(v101, *_Q4.f32, 1);
  v109 = vmul_lane_f32(v102, *_Q4.f32, 1);
  v110 = vmul_laneq_f32(v102, _Q4, 2);
  __asm { FMOV            V4.2S, #1.0 }

  *v118.i8 = vsub_f32(*_Q4.f32, *v118.i8);
  _Q4.f32[0] = vadd_f32(*v170.i8, v110).f32[0];
  v114 = vsub_f32(v106, v109).f32[0];
  v115 = vsub_f32(*v170.i8, v110);
  v116 = vsub_f32(*v118.i8, v105).f32[0];
  v117 = vadd_f32(v108, v107).f32[0];
  *v170.i8 = vadd_f32(v106, v109);
  v108.f32[0] = vsub_f32(v108, v107).f32[0];
  v110.f32[0] = vsub_f32(*v118.i8, v104).f32[0];
  v118.i32[0] = 1.0;
  v104.f32[0] = (1.0 - v104.f32[1]) - v105.f32[1];
  v105.i32[0] = *(a2 + 20);
  v106.i32[0] = *(a2 + 24);
  v107.i32[0] = *(a2 + 28);
  v119 = *(a2 + 12);
  v109.i32[0] = *(a2 + 16);
  v120 = v105.f32[0] + v105.f32[0];
  v121 = v106.f32[0] + v106.f32[0];
  v122 = v105.f32[0] * (v105.f32[0] + v105.f32[0]);
  v123 = v106.f32[0] * (v106.f32[0] + v106.f32[0]);
  v105.f32[0] = (v109.f32[0] + v109.f32[0]) * v105.f32[0];
  v124 = (v109.f32[0] + v109.f32[0]) * v106.f32[0];
  v125 = (v109.f32[0] + v109.f32[0]) * v107.f32[0];
  v106.f32[0] = v120 * v106.f32[0];
  v126 = v120 * v107.f32[0];
  v107.f32[0] = v121 * v107.f32[0];
  v127 = (1.0 - v122) - v123;
  v128 = v105.f32[0] + v107.f32[0];
  v129 = v124 - v126;
  v105.f32[0] = v105.f32[0] - v107.f32[0];
  v107.f32[0] = 1.0 - (v109.f32[0] * (v109.f32[0] + v109.f32[0]));
  v109.f32[0] = v107.f32[0] - v123;
  v130 = v106.f32[0] + v125;
  v131 = v124 + v126;
  v106.f32[0] = v106.f32[0] - v125;
  v107.f32[0] = v107.f32[0] - v122;
  v132 = *(a2 + 4);
  v133 = *(a2 + 8);
  v134 = v132 * v127;
  v135 = v132 * v105.f32[0];
  v136 = v132 * v131;
  v137 = v128 * v133;
  v138 = v109.f32[0] * v133;
  v139 = v106.f32[0] * v133;
  v140 = v129 * v119;
  v141 = v130 * v119;
  v142 = v107.f32[0] * v119;
  v143 = v127 * v135;
  v144 = v128 * v138;
  v145 = (v127 * v134) + (v128 * v137);
  v146 = (v127 * v136) + (v128 * v139);
  v147 = v145 + (v129 * v140);
  v148 = (v143 + v144) + (v129 * v141);
  v149 = v146 + (v129 * v142);
  v150 = (v105.f32[0] * v134) + (v109.f32[0] * v137);
  v151 = (v105.f32[0] * v135) + (v109.f32[0] * v138);
  v105.f32[0] = (v105.f32[0] * v136) + (v109.f32[0] * v139);
  v152 = v130 * v141;
  v109.f32[0] = v150 + (v130 * v140);
  v153 = v105.f32[0] + (v130 * v142);
  v154 = v131 * v136;
  v155 = ((v131 * v134) + (v106.f32[0] * v137)) + (v107.f32[0] * v140);
  v156 = ((v131 * v135) + (v106.f32[0] * v138)) + (v107.f32[0] * v141);
  v157 = (v154 + (v106.f32[0] * v139)) + (v107.f32[0] * v142);
  v158 = vmuls_lane_f32(v149, *v170.i8, 1) + ((v104.f32[0] * v147) + vmuls_lane_f32(v148, v115, 1));
  v159 = (v149 * v108.f32[0]) + ((v147 * _Q4.f32[0]) + (v148 * v116));
  v160 = (v149 * v110.f32[0]) + ((v147 * v114) + (v148 * v117));
  v161 = (v109.f32[0] * v114) + ((v151 + v152) * v117);
  v162 = vmuls_lane_f32(v153, *v170.i8, 1) + ((v104.f32[0] * v109.f32[0]) + vmuls_lane_f32(v151 + v152, v115, 1));
  v163 = (v153 * v108.f32[0]) + ((v109.f32[0] * _Q4.f32[0]) + ((v151 + v152) * v116));
  v164 = (v153 * v110.f32[0]) + v161;
  _Q4.f32[0] = (v155 * _Q4.f32[0]) + (v156 * v116);
  v165 = (v155 * v114) + (v156 * v117);
  v166 = vmuls_lane_f32(v157, *v170.i8, 1) + ((v104.f32[0] * v155) + vmuls_lane_f32(v156, v115, 1));
  v167 = (v157 * v108.f32[0]) + _Q4.f32[0];
  v168 = (v157 * v110.f32[0]) + v165;
  v169 = (v162 * v167) - (v163 * v166);
  *v170.i32 = ((v159 * ((v164 * v166) - (v162 * v168))) + (v158 * ((v163 * v168) - (v164 * v167)))) + (v160 * v169);
  if (*v170.i32 == 0.0)
  {
    v170.i64[0] = 0;
    v172 = 0.0;
    v173 = 0.0;
    v174 = 1.0;
    v175 = 0.0;
    v176 = 0.0;
    v177 = 0.0;
    v178 = 1.0;
  }

  else
  {
    v171 = 1.0 / *v170.i32;
    *v118.i32 = ((v163 * v168) - (v167 * v164)) * (1.0 / *v170.i32);
    *v170.i32 = -(((v159 * v168) - (v167 * v160)) * (1.0 / *v170.i32));
    v172 = ((v159 * v164) - (v160 * v163)) * v171;
    v173 = -(((v166 * -v164) + (v162 * v168)) * v171);
    v174 = ((v158 * v168) - (v160 * v166)) * v171;
    v175 = -(((v158 * v164) - (v160 * v162)) * v171);
    v176 = v169 * v171;
    v177 = -(((v158 * v167) - (v159 * v166)) * v171);
    v178 = ((v159 * -v162) + (v158 * v163)) * v171;
  }

  v36 = v242.f32[1];
  v35 = v242.f32[0];
  v37 = v243;
  v215 = v244.f32[1];
  v38 = v244.f32[0];
  v216 = v245;
  v217 = v246;
  v218 = v247;
  v41 = v248;
  v40 = v249;
  v42 = v250;
  v179 = a3[2].f32[0];
  v180 = a3[2].f32[1];
  v181 = a3[3].f32[0];
  v230 = __PAIR64__(v170.u32[0], v118.u32[0]);
  v231 = v172;
  v232 = __PAIR64__(LODWORD(v174), LODWORD(v173));
  v233 = v175;
  v234 = __PAIR64__(LODWORD(v177), LODWORD(v176));
  v235 = v178;
  v236.f32[0] = (-(v180 * v173) - (*v118.i32 * v179)) - (v176 * v181);
  v236.f32[1] = (-(v180 * v174) - (*v170.i32 * v179)) - (v177 * v181);
  v237 = (-(v180 * v175) - (v172 * v179)) - (v178 * v181);
  physx::transform(&v230, a4, &v242, v118, v170);
  v100 = 0;
  v96 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vabs_f32(v244), v252), vabs_f32(v242), v251), vabs_f32(v246), v253);
  v98 = ((fabsf(v245) * v252) + (fabsf(v243) * v251)) + (fabsf(v247) * v253);
  v52 = *(a4 + 32);
  v91 = *(a4 + 36);
  v53 = *(a4 + 40);
  v54 = *(a4 + 44);
  v239 = (((v91 * v231) + (v53 * v233)) + (v54 * v235)) + v237;
  v182 = *a5->i32 * *v219.i32;
  v183 = *&a5->i32[1] * *v219.i32;
  *v82.i32 = *a5[1].i32 * *v219.i32;
  v238 = vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(v230, v91), vmul_n_f32(v232, v53)), vmul_n_f32(v234, v54)), v236);
  v221 = vadd_f32(vadd_f32(vmul_n_f32(v230, v182), vmul_n_f32(v232, v183)), vmul_n_f32(v234, *v82.i32));
  v97 = ((v231 * v182) + (v233 * v183)) + (v235 * *v82.i32);
  v56 = *a4;
  v55 = *(a4 + 4);
  v84 = *(a4 + 8);
  v65 = *(a4 + 12);
  v71 = *(a4 + 16);
  v70 = *(a4 + 20);
  v82.i32[0] = *(a4 + 24);
  v99 = *(a4 + 28);
LABEL_12:
  v240 = vmul_f32(vadd_f32(v96, vdup_lane_s32(v220, 0)), vdup_n_s32(0x3F8147AEu));
  v241 = (v98 + *v220.i32) * 1.01;
  v230.f32[0] = ((v56 * v35) + (v55 * v36)) + (v84 * v37);
  v230.f32[1] = ((v65 * v35) + (v71 * v36)) + (v70 * v37);
  v231 = ((*v82.i32 * v35) + (v99 * v36)) + (v52 * v37);
  v232.f32[0] = ((v56 * v38) + (v55 * v215)) + (v84 * v216);
  v232.f32[1] = ((v65 * v38) + (v71 * v215)) + (v70 * v216);
  v233 = ((*v82.i32 * v38) + (v99 * v215)) + (v52 * v216);
  v234.f32[0] = ((v56 * v217.f32[0]) + (v55 * v217.f32[1])) + (v84 * v218);
  v234.f32[1] = ((v65 * v217.f32[0]) + (v71 * v217.f32[1])) + (v70 * v218);
  v235 = ((*v82.i32 * v217.f32[0]) + (v99 * v217.f32[1])) + (v52 * v218);
  v236.f32[0] = ((-(v53 * v55) - (v56 * v91)) - (v84 * v54)) + (((v56 * v41) + (v55 * v40)) + (v84 * v42));
  v236.f32[1] = ((-(v53 * v71) - (v65 * v91)) - (v70 * v54)) + (((v65 * v41) + (v71 * v40)) + (v70 * v42));
  v237 = ((-(v53 * v99) - (*v82.i32 * v91)) - (v52 * v54)) + (((*v82.i32 * v41) + (v99 * v40)) + (v52 * v42));
  v184 = *(a4 + 32);
  v185 = *(a4 + 16);
  if (v184 >= 0.0)
  {
    v193 = v55 - v65;
    if (v56 < -v185)
    {
      v194 = v184 + ((1.0 - v56) - v185);
      v195 = 0.5 / sqrtf(v194);
      v189 = (*v82.i32 + v84) * v195;
      v190 = v195 * (*(a4 + 20) + *(a4 + 28));
      v191 = v194 * v195;
      v192 = v193 * v195;
      goto LABEL_20;
    }

    v197 = v184 + ((v56 + 1.0) + v185);
    v198 = 0.5 / sqrtf(v197);
    v189 = v198 * (*(a4 + 20) - *(a4 + 28));
    v190 = (*v82.i32 - v84) * v198;
    v191 = v193 * v198;
  }

  else
  {
    v186 = v65 + v55;
    if (v56 > v185)
    {
      v187 = ((v56 + 1.0) - v185) - v184;
      v188 = 0.5 / sqrtf(v187);
      v189 = v187 * v188;
      v190 = v186 * v188;
      v191 = (*v82.i32 + v84) * v188;
      v192 = v188 * (*(a4 + 20) - *(a4 + 28));
      goto LABEL_20;
    }

    v196 = ((1.0 - v56) + v185) - v184;
    v197 = *v82.i32 - v84;
    v198 = 0.5 / sqrtf(v196);
    v189 = v186 * v198;
    v190 = v196 * v198;
    v191 = v198 * (*(a4 + 20) + *(a4 + 28));
  }

  v192 = v197 * v198;
LABEL_20:
  v199 = fmaxf(sqrtf((vmuls_lane_f32(v221.f32[1], v221, 1) + (v221.f32[0] * v221.f32[0])) + (v97 * v97)), 0.00001);
  v200 = v199 / *v219.i32;
  if (v100)
  {
    v200 = 1.0;
  }

  v226.i64[0] = __PAIR64__(LODWORD(v190), LODWORD(v189));
  v226.i64[1] = __PAIR64__(LODWORD(v192), LODWORD(v191));
  v227 = v91;
  v228 = v53;
  v229 = v54;
  v201 = *&a5->i32[1];
  v202 = (v56 * *a5->i32) + (v55 * v201);
  v203 = (v65 * *a5->i32) + (v71 * v201);
  v204 = (*v82.i32 * *a5->i32) + (v99 * v201);
  v205 = *a5[1].i32;
  v224.f32[0] = v202 + (v84 * v205);
  v224.f32[1] = v203 + (v70 * v205);
  v225 = v204 + (v52 * v205);
  v223[0] = v224.f32[0] * *v219.i32;
  v223[1] = v224.f32[1] * *v219.i32;
  v223[2] = v225 * *v219.i32;
  physx::Gu::SweepBoxMeshHitCallback::SweepBoxMeshHitCallback(&v242, 2, &v230, (v23 | v22) & 1, a4, v223, &v224, a5, v219, *v220.i32, v200, a7, ((*(a2 + 4) * *(a2 + 8)) * *(a2 + 12)) < 0.0);
  v222[0] = (1.0 / v199) * v221.f32[0];
  v222[1] = vmuls_lane_f32(1.0 / v199, v221, 1);
  v222[2] = v97 * (1.0 / v199);
  MeshRayCollider::collide<1,1>(&v238, v222, (v23 | v22) & 1, a1, &v242, &v240, v199);
  return physx::Gu::SweepBoxMeshHitCallback::finalizeHit(&v242, a6, a2, a3, &v226, &v224, v22, v23, v206, v207, v208, v209, v210, v211, v212, v213);
}

BOOL intersectEdgeEdgePreca(float *a1, float *a2, uint64_t a3, float *a4, unsigned int a5, unsigned int a6, float32x2_t *a7, float *a8, float a9, float a10, float *a11, float *a12, float32x2_t *a13)
{
  v13 = *a8;
  v14 = a8[1];
  v15 = a4[1];
  v16 = a8[2];
  v17 = a4[2];
  v18 = a4[3];
  v19 = (((v14 * v15) + (*a8 * *a4)) + (v16 * v17)) + v18;
  v20 = a11[1];
  v21 = a11[2];
  if ((v19 * (v18 + (((v15 * v20) + (*a11 * *a4)) + (v21 * v17)))) > 0.0)
  {
    return 0;
  }

  v22 = *a11 - v13;
  v23 = v20 - v14;
  v24 = v21 - v16;
  v25 = ((v15 * v23) + (*a4 * v22)) + (v17 * v24);
  if (v25 == 0.0)
  {
    return 0;
  }

  v26 = v19 / v25;
  a13->f32[0] = v13 - (v22 * v26);
  a13->f32[1] = v14 - (v23 * v26);
  a13[1].f32[0] = v16 - (v24 * v26);
  v27 = ((*(a3 + 4 * a5) * (a13->f32[a6] - a1[a6])) - (*(a3 + 4 * a6) * (a13->f32[a5] - a1[a5]))) * a9;
  *a12 = v27;
  if (v27 < a10)
  {
    return 0;
  }

  v29 = v27 * a7[1].f32[0];
  v30 = vsub_f32(*a13, vmul_n_f32(*a7, v27));
  *a13 = v30;
  v31 = a13[1].f32[0] - v29;
  a13[1].f32[0] = v31;
  return ((((a1[1] - v30.f32[1]) * (a2[1] - v30.f32[1])) + ((*a1 - v30.f32[0]) * (*a2 - v30.f32[0]))) + ((a1[2] - v31) * (a2[2] - v31))) < 0.0;
}

uint64_t GuTestAxis(float *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, float a7)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = ((a2[1] * v9) + (*a2 * *a1)) + (a2[2] * v10);
  v12 = ((v9 * a2[4]) + (a2[3] * *a1)) + (a2[5] * v10);
  if (v11 <= v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v11 <= v12)
  {
    v11 = v12;
  }

  v14 = v11 + a7;
  v17 = 0;
  (*(a3 + 88))(a3, a1, a5, a4, &v17 + 4, &v17);
  if (v14 < *(&v17 + 1) || *&v17 < (v13 - a7))
  {
    return 0;
  }

  v16 = v14 - *(&v17 + 1);
  if ((v14 - *(&v17 + 1)) >= (*&v17 - (v13 - a7)))
  {
    v16 = *&v17 - (v13 - a7);
  }

  *a6 = v16;
  return 1;
}

uint64_t local_Split(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = *(a1 + 32);
  v7 = (*(a1 + 4 * a3) + *(a1 + 4 * a3 + 12)) * 0.5;
  v8 = v6;
  do
  {
    v9 = *v8;
    if (*(a2 + 4 * a3 + 12 * *v8) > v7)
    {
      *v8 = v6[result];
      v6[result] = v9;
      result = (result + 1);
    }

    ++v8;
    --v3;
  }

  while (v3);
  return result;
}

uint64_t BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_Check(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result + 48;
    v11 = 0;
    BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(result, &v11 + 1, &v11);
    v10 = 0;
    BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(v2, &v10 + 1, &v10);
    if (HIDWORD(v11) > HIDWORD(v10))
    {
      v3 = v1;
      v4 = *(v1 + 24);
      v5 = *(v1 + 32);
      v6 = *(v1 + 40);
      v7 = *(v1 + 48);
      v8 = *(v1 + 64);
      *(v1 + 24) = *(v1 + 72);
      *(v1 + 40) = *(v1 + 88);
      v9 = *v1;
      *v1 = v7;
      *(v1 + 48) = v9;
      *&v7 = *(v1 + 16);
      *(v1 + 16) = v8;
      *(v1 + 64) = v7;
      *(v1 + 72) = v4;
      *(v1 + 80) = v5;
      *(v1 + 88) = v6;
      v1 = v2;
      v2 = v3;
    }

    BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_Check(*(v1 + 24));
    return BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_Check(*(v2 + 24));
  }

  return result;
}

uint64_t _BuildBV4(uint64_t *a1, _DWORD *a2, float *a3, uint64_t a4)
{
  while (1)
  {
    while (1)
    {
      v8 = *(a3 + 3);
      v9 = v8 ? v8 + 48 : 0;
      v10 = *(v8 + 24);
      v11 = *(v9 + 24);
      if (!v10)
      {
        break;
      }

      if (!v11)
      {
        ++*(a4 + 12);
        setPrimitive(*a1, a2, 2u, v8 + 48, *(a4 + 20));
        v15 = *(v8 + 24);
        if (v15)
        {
          a3 = v15 + 12;
        }

        else
        {
          a3 = 0;
        }

        v16 = setNode(*a1, a2, 0, *(v8 + 24), a4);
        v17 = setNode(*a1, a2, 1u, a3, a4);
        a2[12] = precomputeNodeSorting(v8, (v8 + 48));
        result = precomputeNodeSorting(v15, a3);
        a2[24] = result;
        if (!v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      ++*(a4 + 16);
      a3 = v11 + 12;
      v12 = setNode(*a1, a2, 0, v10, a4);
      v18 = setNode(*a1, a2, 1u, (v10 + 12), a4);
      v19 = setNode(*a1, a2, 2u, v11, a4);
      v13 = setNode(*a1, a2, 3u, (v11 + 12), a4);
      a2[12] = precomputeNodeSorting(v8, (v8 + 48));
      a2[24] = precomputeNodeSorting(v10, v10 + 12);
      result = precomputeNodeSorting(v11, v11 + 12);
      a2[36] = result;
      if (v12)
      {
        result = _BuildBV4(a1, v12, v10, a4);
      }

      if (v18)
      {
        result = _BuildBV4(a1, v18, (v10 + 12), a4);
      }

      if (v19)
      {
        result = _BuildBV4(a1, v19, v11, a4);
      }

      a2 = v13;
      if (!v13)
      {
        return result;
      }
    }

    if (!v11)
    {
      break;
    }

    ++*(a4 + 8);
    setPrimitive(*a1, a2, 0, v8, *(a4 + 20));
    v15 = *(v9 + 24);
    if (v15)
    {
      a3 = v15 + 12;
    }

    else
    {
      a3 = 0;
    }

    v16 = setNode(*a1, a2, 1u, v15, a4);
    v17 = setNode(*a1, a2, 2u, a3, a4);
    a2[12] = precomputeNodeSorting(v8, (v8 + 48));
    result = precomputeNodeSorting(v15, a3);
    a2[36] = result;
    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_19:
    result = _BuildBV4(a1, v16, v15, a4);
LABEL_20:
    a2 = v17;
    if (!v17)
    {
      return result;
    }
  }

  ++*(a4 + 4);
  setPrimitive(*a1, a2, 0, v8, *(a4 + 20));
  setPrimitive(*a1, a2, 1u, v8 + 48, *(a4 + 20));
  result = precomputeNodeSorting(v8, (v8 + 48));
  a2[12] = result;
  return result;
}

uint64_t BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v4 = *a3;
  v5 = *a3 + 1;
  *a3 = v5;
  if (*a2 <= v5)
  {
    v6 = v4 + 1;
  }

  else
  {
    v6 = *a2;
  }

  *a2 = v6;
  result = *(a1 + 24);
  if (result)
  {
    result = BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(result, a2, a3);
    --*a3;
    v10 = *(a1 + 24);
    if (v10)
    {
      result = BuildBV4Internal(physx::Gu::BV4Tree &,physx::Gu::AABBTree const&,physx::Gu::SourceMesh *,float,BOOL)::Local::_CheckMD(v10 + 48, a2, a3);
      --*a3;
    }
  }

  return result;
}

uint64_t setPrimitive(uint64_t result, uint64_t a2, unsigned int a3, uint64_t a4, float a5)
{
  v5 = *(a4 + 40);
  v6 = *(a4 + 32);
  v7 = a2 + 48 * a3;
  v8 = vextq_s8(*a4, *a4, 8uLL);
  v9 = vextq_s8(*a4, v8, 0xCuLL);
  v10 = vsubq_f32(*a4, v9);
  *(v9.i64 + 4) = *(a4 + 16);
  v11 = vaddq_f32(*a4, v9);
  v11.i32[3] = v10.i32[3];
  v12 = vsub_f32(*(a4 + 16), vext_s8(*a4, *v8.i8, 4uLL));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v13 = vmulq_f32(v11, v8);
  v14 = vmul_f32(v12, 0x3F0000003F000000);
  *(v7 + 12) = v13;
  *(v7 + 28) = v14;
  if (a5 != 0.0)
  {
    *(v7 + 24) = v13.f32[3] + a5;
    *(v7 + 28) = v14.f32[0] + a5;
    *(v7 + 32) = v14.f32[1] + a5;
  }

  *(v7 + 40) = (2 * (v5 & 0x8000000F | (16 * (((v6 - result) >> 2) & 0x7FFFFFF)))) | 1;
  return result;
}

uint64_t precomputeNodeSorting(float *a1, float *a2)
{
  v2 = ((*a1 + a1[3]) * 0.5) - ((*a2 + a2[3]) * 0.5);
  v3 = ((a1[1] + a1[4]) * 0.5) - ((a2[1] + a2[4]) * 0.5);
  v4 = ((a1[2] + a1[5]) * 0.5) - ((a2[2] + a2[5]) * 0.5);
  v5 = v3 * 0.57735;
  v6 = (v3 * 0.57735) + (v2 * 0.57735);
  v7 = v3 * -0.57735;
  v8 = v7 + (v2 * 0.57735);
  v9 = v8 + (v4 * 0.57735);
  v10 = v8 + (v4 * -0.57735);
  v11 = v5 + (v2 * -0.57735);
  v12 = v11 + (v4 * 0.57735);
  v13 = v11 + (v4 * -0.57735);
  v14 = v7 + (v2 * -0.57735);
  if ((v6 + (v4 * -0.57735)) >= 0.0)
  {
    v15 = (((v6 + (v4 * 0.57735)) >= 0.0) << 7) | 0x40;
  }

  else
  {
    v15 = ((v6 + (v4 * 0.57735)) >= 0.0) << 7;
  }

  if (v9 >= 0.0)
  {
    v15 |= 0x20u;
  }

  if (v10 >= 0.0)
  {
    v15 |= 0x10u;
  }

  if (v12 >= 0.0)
  {
    v15 |= 8u;
  }

  if (v13 >= 0.0)
  {
    v15 |= 4u;
  }

  if ((v14 + (v4 * 0.57735)) >= 0.0)
  {
    v15 |= 2u;
  }

  return v15 | ((v14 + (v4 * -0.57735)) >= 0.0);
}

uint64_t setNode(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, BV4BuildParams *this)
{
  if (*(a4 + 24))
  {
    v5 = a2 + 48 * a3;
    v6 = v5 + 8;
    v7 = vextq_s8(*a4, *a4, 8uLL);
    v8 = vextq_s8(*a4, v7, 0xCuLL);
    v9 = vsubq_f32(*a4, v8);
    *(v8.i64 + 4) = *(a4 + 16);
    v10 = vaddq_f32(*a4, v8);
    v10.i32[3] = v9.i32[3];
    v11 = vsub_f32(*(a4 + 16), vext_s8(*a4, *v7.i8, 4uLL));
    v7.i64[0] = 0x3F0000003F000000;
    v7.i64[1] = 0x3F0000003F000000;
    v12 = vmulq_f32(v10, v7);
    v13 = vmul_f32(v11, 0x3F0000003F000000);
    *(v5 + 12) = v12;
    *(v5 + 28) = v13;
    v14 = *(this + 5);
    if (v14 != 0.0)
    {
      *(v5 + 24) = v12.f32[3] + v14;
      *(v5 + 28) = v13.f32[0] + v14;
      *(v5 + 32) = v13.f32[1] + v14;
    }

    ++*this;
    result = BV4BuildParams::allocateNode(this);
    *(v6 + 32) = result;
  }

  else
  {
    setPrimitive(a1, a2, a3, a4, *(this + 5));
    return 0;
  }

  return result;
}

uint64_t _ComputeMaxValues(uint64_t a1, float *a2, float *a3)
{
  v5 = a1 + 20;
  v6 = 4;
  do
  {
    result = *(v5 + 20);
    if (result != 0xFFFFFFFFLL)
    {
      v9 = *(v5 - 8);
      v8 = *(v5 - 4);
      v10 = *v5;
      v11 = *(v5 + 4);
      v13 = *(v5 + 8);
      v12 = *(v5 + 12);
      v14 = vabds_f32(v9, v11);
      if (v14 > *a2)
      {
        *a2 = v14;
      }

      v15 = fabsf(v8 - v13);
      if (v15 > a2[1])
      {
        a2[1] = v15;
      }

      v16 = fabsf(v10 - v12);
      if (v16 > a2[2])
      {
        a2[2] = v16;
      }

      v17 = fabsf(v9 + v11);
      if (v17 > *a3)
      {
        *a3 = v17;
      }

      v18 = fabsf(v8 + v13);
      if (v18 > a3[1])
      {
        a3[1] = v18;
      }

      v19 = fabsf(v10 + v12);
      if (v19 > a3[2])
      {
        a3[2] = v19;
      }

      if ((result & 1) == 0)
      {
        result = _ComputeMaxValues(result, a2, a3);
      }
    }

    v5 += 48;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t _FlattenQ(uint64_t result, unsigned int a2, int *a3, void *a4, unsigned int *a5, unsigned int *a6, float *a7, float *a8, uint64_t a9, uint64_t a10)
{
  v12 = result;
  v74 = *MEMORY[0x1E69E9840];
  v13 = *a6 + 1;
  *a6 = v13;
  if (v13 > *a5)
  {
    *a5 = v13;
  }

  v14.i64[0] = a4[5];
  v14.i64[1] = a4[11];
  v15.i64[0] = a4[17];
  v15.i64[1] = a4[23];
  v16.i64[0] = 0xFFFFFFFFLL;
  v16.i64[1] = 0xFFFFFFFFLL;
  v17 = vuzp1q_s32(vceqq_s64(v14, v16), vceqq_s64(v15, v16));
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(v17))))
  {
    v18 = 0;
    v19 = vaddvq_s32(vbicq_s8(xmmword_1E3102070, v17));
    v20 = *a7;
    v21 = a7[1];
    v22 = a7[2];
    v23 = *a8;
    v24 = a8[1];
    v25 = a8[2];
    v10.i32[0] = v19 & 0xF;
    v26 = vcnt_s8(v10);
    v26.i16[0] = vaddlv_u8(v26);
    v27 = v26.u32[0];
    do
    {
      v28 = 0;
      v29 = &a4[6 * v18 + 1];
      v30 = v29[1];
      v31 = v29[2];
      v33 = v29[3];
      v32 = v29[4];
      *&v34 = v30 - v32;
      v35 = v29[5];
      v36 = v29[6];
      *&v37 = v31 - v35;
      *&v38 = v30 + v32;
      *&v39 = v31 + v35;
      v40 = v12 + 16 * (v18 + a2);
      *(v40 + 2) = (v20 * *&v34);
      *(v40 + 6) = (v21 * *&v37);
      *(v40 + 10) = (v22 * (v33 - v36));
      *v40 = (v23 * *&v38);
      *(v40 + 4) = (v24 * *&v39);
      *(v40 + 8) = (v25 * (v33 + v36));
      *&v71[0] = __PAIR64__(v37, v34);
      *(v71 + 2) = v33 - v36;
      v72 = __PAIR64__(v39, v38);
      *&v73 = v33 + v36;
      do
      {
        result = v40 + 4 * v28;
        v41 = *(a9 + 4 * v28);
        v42 = *(a10 + 4 * v28);
        v43 = *(&v72 + v28);
        v44 = *(v71 + v28);
        v45 = *(result + 2);
        v46 = *result;
LABEL_7:
        v47 = v41 * v45;
        if (v45)
        {
          v48 = v47 <= v44;
        }

        else
        {
          v48 = 1;
        }

        while (v46 != 0x7FFF && (v42 * v46) < v43)
        {
          *result = ++v46;
          if (!v48)
          {
LABEL_18:
            *(result + 2) = --v45;
            goto LABEL_7;
          }
        }

        if (v47 > v44 && v45 != 0)
        {
          goto LABEL_18;
        }

        ++v28;
      }

      while (v28 != 3);
      *(v40 + 12) = *(v29 + 4);
      ++v18;
    }

    while (v18 != v27);
  }

  v50 = 0;
  v72 = -1;
  v73 = -1;
  v51 = (v12 + 16 * a2 + 12);
  v52 = a4 + 6;
  v53 = 4;
  memset(v71, 0, sizeof(v71));
  do
  {
    v54 = *(v52 - 1);
    if (v54 == 0xFFFFFFFFLL)
    {
      *(v51 - 3) = 0;
      *(v51 - 1) = 0xFFFFFFFF00000000;
    }

    else if ((v54 & 1) == 0)
    {
      v55 = *a3;
      *a3 += 4;
      v56.i64[0] = v54[5];
      v56.i64[1] = v54[11];
      v57.i64[0] = v54[17];
      v57.i64[1] = v54[23];
      v58 = vbicq_s8(xmmword_1E3102070, vuzp1q_s32(vceqq_s64(v56, v16), vceqq_s64(v57, v16)));
      v58.i32[0] = vaddvq_s32(v58);
      *v58.i8 = vcnt_s8(*v58.i8);
      v58.i16[0] = vaddlv_u8(*v58.i8);
      result = ((v55 << 11) | (2 * v58.i32[0])) - 4;
      *(&v72 + v50) = v55;
      *(v71 + v50++) = v54;
      *v51 = result | (8 * *v52);
    }

    v51 += 4;
    v52 += 12;
    --v53;
  }

  while (v53);
  if (v50)
  {
    v59 = v50;
    v60 = v71;
    v61 = &v72;
    v70 = a6;
    do
    {
      v63 = *v61;
      v61 = (v61 + 4);
      v62 = v63;
      v64 = *v60++;
      v65 = v12;
      v66 = a5;
      v67 = v12;
      v68 = a7;
      v69 = a8;
      result = _FlattenQ(v65, v62, a3, v64, a5, a6, a7, a8, a9, a10);
      a8 = v69;
      a7 = v68;
      v12 = v67;
      a6 = v70;
      a5 = v66;
      --*v70;
      --v59;
    }

    while (v59);
  }

  return result;
}

BOOL RayMeshColliderCallback::processHit(uint64_t a1, float *a2, float *a3, float *a4, float *a5)
{
  v6 = a2[13];
  v5 = a2[14];
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = *a4;
  v11 = a4[1];
  v12 = a4[2];
  v13 = *a5;
  v14 = a5[1];
  v15 = a5[2];
  v92 = *a2;
  v93 = *(a2 + 4);
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v16[2];
  v22 = v16[3];
  v23 = (v22 * v22) + -0.5;
  v24 = *v16;
  v25 = v16[1];
  if ((*(a1 + 56) & 2) != 0)
  {
    v32 = ((v11 - v8) * (v15 - v9)) - ((v12 - v9) * (v14 - v8));
    v33 = ((v12 - v9) * (v13 - v7)) - ((v10 - v7) * (v15 - v9));
    v34 = ((v10 - v7) * (v14 - v8)) - ((v11 - v8) * (v13 - v7));
    v35 = *(a1 + 48);
    if (v35)
    {
      v26 = ((v33 * v35[1]) + (*v35 * v32)) + (v35[2] * v34);
      v28 = ((v33 * v35[4]) + (v35[3] * v32)) + (v35[5] * v34);
      v29 = ((v33 * v35[7]) + (v35[6] * v32)) + (v35[8] * v34);
      v36 = (v18 * v19) * v20;
      v37 = v36 < 0.0;
      if (v36 < 0.0)
      {
        v30 = *(a2 + 14);
      }

      else
      {
        v30 = *(a2 + 13);
      }

      if (v37)
      {
        v31 = *(a2 + 13);
      }

      else
      {
        v31 = *(a2 + 14);
      }
    }

    else
    {
      v38 = v32 + v32;
      v39 = v33 + v33;
      v40 = v34 + v34;
      v41 = ((v39 * v25) + (v24 * v38)) + (v21 * v40);
      v26 = ((v22 * ((v39 * -v21) + (v25 * v40))) + (v38 * v23)) + (v24 * v41);
      v28 = ((v22 * ((v40 * -v24) + (v21 * v38))) + (v39 * v23)) + (v25 * v41);
      v29 = ((v22 * ((v38 * -v25) + (v24 * v39))) + (v40 * v23)) + (v21 * v41);
      v30 = *(a2 + 13);
      v31 = *(a2 + 14);
    }

    v42 = sqrtf(((v28 * v28) + (v26 * v26)) + (v29 * v29));
    if (v42 > 0.0)
    {
      v43 = 1.0 / v42;
      v26 = v26 * v43;
      v28 = v28 * v43;
      v29 = v29 * v43;
    }

    if (*(a1 + 72) == 1 && (((v28 * *(*(a1 + 64) + 4)) + (v26 * **(a1 + 64))) + (v29 * *(*(a1 + 64) + 8))) > 0.0)
    {
      v26 = -v26;
      v28 = -v28;
      v29 = -v29;
    }

    v27 = 1035;
  }

  else
  {
    v26 = 0.0;
    v27 = 1033;
    v28 = 0.0;
    v29 = 0.0;
    v30 = *(a2 + 13);
    v31 = *(a2 + 14);
  }

  v44 = *(a1 + 24);
  v45 = *(a1 + 28);
  if (v44 != v45)
  {
    v46 = (1.0 - v6) - v5;
    v47 = v6 * v11;
    v48 = v5 * v13;
    v49 = v5 * v14;
    v50 = ((v46 * v9) + (v6 * v12)) + (v5 * v15);
    v51 = (((v46 * v7) + (v6 * v10)) + v48) + (((v46 * v7) + (v6 * v10)) + v48);
    v52 = (((v46 * v8) + v47) + v49) + (((v46 * v8) + v47) + v49);
    v53 = v50 + v50;
    v54 = v17[3];
    v55 = v17[4];
    v56 = v17[5];
    v57 = v17[6];
    v58 = (v57 * v57) + -0.5;
    v59 = v57 * ((v56 * v51) - (v54 * v53));
    v60 = v57 * ((v54 * v52) - (v55 * v51));
    v61 = ((v52 * v55) + (v54 * v51)) + (v56 * v53);
    v62 = (v57 * ((v55 * v53) - (v56 * v52))) + (v51 * v58);
    v63 = v19 * ((v59 + (v52 * v58)) + (v55 * v61));
    v64 = v20 * ((v60 + (v53 * v58)) + (v56 * v61));
    v65 = (v18 * (v62 + (v54 * v61))) + (v18 * (v62 + (v54 * v61)));
    v66 = v63 + v63;
    v67 = v64 + v64;
    v68 = -(((v55 * v67) - (v56 * v66)) * v57);
    v69 = -(((v56 * v65) - (v54 * v67)) * v57);
    v70 = -(((v54 * v66) - (v55 * v65)) * v57);
    v71 = ((v55 * v66) + (v54 * v65)) + (v56 * v67);
    v72 = ((v68 + (v65 * v58)) + (v54 * v71)) + ((v68 + (v65 * v58)) + (v54 * v71));
    v73 = ((v69 + (v66 * v58)) + (v55 * v71)) + ((v69 + (v66 * v58)) + (v55 * v71));
    v74 = ((v70 + (v67 * v58)) + (v56 * v71)) + ((v70 + (v67 * v58)) + (v56 * v71));
    v75 = v22 * ((v25 * v74) - (v21 * v73));
    v76 = v22 * ((v21 * v72) - (v24 * v74));
    v77 = v22 * ((v24 * v73) - (v25 * v72));
    v78 = ((v25 * v73) + (v24 * v72)) + (v21 * v74);
    v79 = v75 + (v72 * v23);
    v80 = v76 + (v73 * v23);
    v81 = v77 + (v74 * v23);
    v82 = a2[12];
    v83 = v79 + (v24 * v78);
    v84 = v80 + (v25 * v78);
    v85 = v16[4];
    v86 = v16[5];
    v87 = v16[6];
    v88 = *(a1 + 76);
    v89 = *(a1 + 16);
    *(a1 + 24) = v44 + 1;
    v90 = v89 + (v44 << 6);
    *v90 = v92;
    *(v90 + 16) = v93;
    *(v90 + 20) = v27;
    *(v90 + 24) = v85 + v83;
    *(v90 + 28) = v86 + v84;
    *(v90 + 32) = v87 + (v81 + (v21 * v78));
    *(v90 + 36) = v26;
    *(v90 + 40) = v28;
    *(v90 + 44) = v29;
    *(v90 + 48) = v82 * v88;
    *(v90 + 52) = v30;
    *(v90 + 56) = v31;
  }

  return v44 != v45;
}

uint64_t RayRTreeCallback<0,false>::RayRTreeCallback(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, float a9, float a10)
{
  *result = &unk_1F5D22268;
  *(result + 8) = &unk_1F5D22298;
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a4;
  *(result + 40) = a5;
  *(result + 48) = 0;
  *&v10 = *a6;
  *(result + 56) = *a6;
  v11 = *(a6 + 8);
  *(result + 64) = v11;
  *&v12 = *a7;
  *(result + 68) = *a7;
  v13 = *(a7 + 8);
  *(result + 76) = v13;
  *(result + 80) = a8;
  *(result + 84) = a9;
  *(result + 88) = a10;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = -1;
  *(result + 116) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  *(result + 120) = 0;
  *(result + 144) = 2139095039;
  *(result + 152) = 0;
  *(result + 209) = *(a2 + 8) == 1;
  *(&v10 + 1) = v11;
  *(&v12 + 1) = v13;
  *(result + 208) = 0;
  *(result + 240) = v10;
  *(result + 256) = v12;
  return result;
}