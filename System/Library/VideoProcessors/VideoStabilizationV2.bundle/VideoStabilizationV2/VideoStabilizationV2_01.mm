uint64_t sbp_gvs_gaussianAverageComputeCorrection(uint64_t a1, const char *a2, int a3, char *a4, float a5)
{
  v270 = 0u;
  v271 = 0u;
  v269 = 0;
  v268 = 0;
  v8 = (a1 + 27136);
  v267 = 1;
  v265 = 0u;
  v266 = 0u;
  v263 = 0u;
  v264 = 0u;
  v261 = 0u;
  v262 = 0u;
  objc_msgSend_getSmoothingAnalysisArrays(*(a1 + 29400));
  if (v8[1001])
  {
    v9 = *(v8 + 579);
    v10 = *(v8 + 576) + v9 + a2;
    do
    {
      v10 -= v9;
    }

    while (v10 >= v9);
    v11 = (a1 + 29408);
    v242 = v10;
  }

  else
  {
    v242 = 0;
    v11 = 0;
  }

  v12 = *(v263 + 8 * a2);
  v13 = *(v263 + 8 * SDWORD2(v265));
  v14 = (*(&v262 + 1) + 144 * a2);
  v254 = *v14;
  v15 = v14[4];
  v17 = v14[1];
  v16 = v14[2];
  v257 = v14[3];
  v258 = v15;
  v255 = v17;
  v256 = v16;
  v18 = v14[8];
  v20 = v14[5];
  v19 = v14[6];
  v260[1] = v14[7];
  v260[2] = v18;
  v259 = v20;
  v260[0] = v19;
  v239 = *v8;
  v21 = *(a1 + 29400);
  if (v8[3112] == 1)
  {
    v236 = v13;
    v22 = v12;
    *&v251 = 0;
    v249 = 0u;
    v250 = 0u;
    v248 = 0u;
    objc_msgSend_getFaceSmoothingArrays(v21);
    v23 = *(v8 + 786);
    if (*(v8 + 781) >= 1.0)
    {
      v24 = *(v8 + 781);
    }

    else
    {
      v24 = 1.0;
    }

    if (*(v8 + 785) <= v23)
    {
      v25 = *(v8 + 785);
    }

    else
    {
      v25 = *(v8 + 786);
    }

    v26 = fminf(fmaxf(((*(v8 + 783) + (((*(v8 + 780) * a5) - *(v8 + 783)) * *(&stru_20.cmd + 12 * a2))) - *(v8 + 783)) / (*(v8 + 784) - *(v8 + 783)), 0.0), 1.0);
    v27 = powf(v26, v24);
    v28 = v25 + ((v27 / (v27 + powf(1.0 - v26, v24))) * (v23 - v25));
    *&v29 = v28;
    v241 = ([*(a1 + 30288) updateBiasTrackingAndFaceCorrectionQuaternionWithFaceSmoothingArrays:&v248 biasTrackingSigma:a2 centerFrameOffset:v29] & 1) != 0 || v28 == *(v8 + 787);
    v12 = v22;
    v21 = *(a1 + 29400);
    v13 = v236;
  }

  else
  {
    v241 = 1;
  }

  v253 = 0;
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  v248 = 0u;
  if (v21)
  {
    objc_msgSend_getQuaternionSmoothingArrays(v21);
  }

  *(a1 + 196) = 1065353216;
  if (*v8)
  {
    v30 = &v268;
    if (!*(a1 + 204) && !*(a1 + 392))
    {
      v30 = 0;
    }

    if (v8[1664])
    {
      v31 = &v269;
    }

    else
    {
      v31 = 0;
    }

    v270.f64[0] = GVSComputeGaussianAverageQuaternion(&v248, *(a1 + 176), a2, v239 != 0, v31, v30, a5, *(v8 + 597));
    v270.f64[1] = v32;
    v271.f64[0] = v33;
    v271.f64[1] = v34;
    if (v8[3112] == 1)
    {
      [*(a1 + 30288) faceCorrection];
      v270.f64[0] = GVSApplyFaceCorrectionQuaternionToStabilizedQuaternion(v35, v270.f64[0], v270.f64[1], v271.f64[0], v271.f64[1]);
      v270.f64[1] = v36;
      v271.f64[0] = v37;
      v271.f64[1] = v38;
    }

    if (*(a1 + 29568))
    {
      v270.f64[0] = FigMotionMultiplyQuaternions((v262 + 32 * a2), v270.f64);
      v270.f64[1] = v39;
      v271.f64[0] = v40;
      v271.f64[1] = v41;
    }

    if (*(v8 + 650) > 0.0)
    {
      v42.n128_u32[1] = 0;
      v42.n128_u64[1] = 0;
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v243 = 0u;
      v43 = *(a1 + 29400);
      if (v43)
      {
        objc_msgSend_getRollSmoothingArraysForBaseTransform_(v43);
      }

      if (v11)
      {
        v44 = v11[3];
        if (v44)
        {
          v42.n128_f32[0] = fminf((a5 / 30.0) * 4.0, *(v8 + 581));
          v45 = (v44 + 12 * v242);
          *v46.i64 = GVSComputeSmoothedHorizonQuaternion(&v243, a2, v42);
          v233 = v46;
          v274 = FigMotionInverseOfQuaternion(&v270);
          v275 = v47;
          v276 = v48;
          v277 = v49;
          v50.i32[0] = GVSRotateVectorByQuaternion(v45, &v274).u32[0];
          v273[0] = v50.f32[0];
          v273[1] = v51;
          v273[2] = v52;
          v237 = v50.f32[0];
          v50.f32[1] = v51;
          v229 = *v50.f32;
          v231 = v52;
          v53 = sqrtf(vaddv_f32(*&vmulq_f32(v50, v50)));
          v54 = 0.0;
          if (v53 > 0.0000001)
          {
            v54 = atan2f(v237, v51) * 0.5;
          }

          v55 = __sincosf_stret(v54);
          v56 = vmulq_n_f32(xmmword_435D0, v55.__sinval);
          v57 = v56;
          v57.i32[3] = LODWORD(v55.__cosval);
          v58 = vmulq_f32(v57, xmmword_433E0);
          v59 = vnegq_f32(v58);
          v60 = vtrn2q_s32(v58, vtrn1q_s32(v58, v59));
          v61 = vmulq_lane_f32(vextq_s8(v58, v59, 8uLL), v229, 1);
          v62 = vrev64q_s32(v58);
          v62.i32[0] = v59.i32[1];
          v62.i32[3] = v59.i32[2];
          v63 = vmlaq_n_f32(vmlaq_n_f32(v61, vextq_s8(v60, v60, 8uLL), v237), v62, v231);
          v64 = vnegq_f32(v63);
          v65 = vtrn2q_s32(v63, vtrn1q_s32(v63, v64));
          v66 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v63, v64, 8uLL), *v56.f32, 1), vextq_s8(v65, v65, 8uLL), v56.f32[0]);
          v67 = vrev64q_s32(v63);
          v67.i32[0] = v64.i32[1];
          v67.i32[3] = v64.i32[2];
          v238 = v57;
          v68 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v63, v57, 3), v67, v56, 2), v66);
          v69 = vmulq_f32(v68, xmmword_435E0);
          if ((v69.f32[2] + vaddv_f32(*v69.f32)) >= 0.0)
          {
            v80 = a5;
            v101 = vaddq_f32(v68, xmmword_435E0);
            v102 = vmulq_f32(v101, v101);
            *&v103 = v102.f32[2] + vaddv_f32(*v102.f32);
            *v102.f32 = vrsqrte_f32(v103);
            *v102.f32 = vmul_f32(*v102.f32, vrsqrts_f32(v103, vmul_f32(*v102.f32, *v102.f32)));
            v104 = vmulq_n_f32(v101, vmul_f32(*v102.f32, vrsqrts_f32(v103, vmul_f32(*v102.f32, *v102.f32))).f32[0]);
            v105 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v104, v104), v104, 0xCuLL), vnegq_f32(v68)), v104, vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL));
            v106 = vextq_s8(vuzp1q_s32(v105, v105), v105, 0xCuLL);
            v107 = vmulq_f32(v68, v104);
            *&v106.i32[3] = v107.f32[2] + vaddv_f32(*v107.f32);
            v232 = v106;
          }

          else
          {
            v71 = vmulq_f32(v68, v68);
            v70 = vaddv_f32(*v71.f32);
            v71.i32[1] = 0;
            *&v72 = v71.f32[2] + v70;
            v73 = vrsqrte_f32(COERCE_UNSIGNED_INT(v71.f32[2] + v70));
            v74 = vmul_f32(v73, vrsqrts_f32(v72, vmul_f32(v73, v73)));
            v75 = vrsqrte_f32(1065353216);
            v76 = vmul_f32(v75, vrsqrts_f32(1065353216, vmul_f32(v75, v75)));
            v77 = vaddq_f32(vmulq_n_f32(v68, vmul_f32(v74, vrsqrts_f32(v72, vmul_f32(v74, v74))).f32[0]), vmulq_n_f32(xmmword_435E0, vmul_f32(v76, vrsqrts_f32(1065353216, vmul_f32(v76, v76))).f32[0]));
            v78 = vmulq_f32(v77, v77);
            v79 = v78.f32[2] + vaddv_f32(*v78.f32);
            if (v79 <= 1.4211e-14)
            {
              v108 = vabsq_f32(v68);
              v109 = v108.f32[1];
              v110 = v108.f32[2];
              if (v108.f32[0] > v108.f32[1] || v108.f32[0] > v108.f32[2])
              {
                v80 = a5;
                v112 = vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL);
                if (v109 <= v110)
                {
                  v113 = vmlaq_f32(vmulq_f32(v68, xmmword_43610), xmmword_435E0, v112);
                }

                else
                {
                  v113 = vmlaq_f32(vmulq_f32(v68, xmmword_43620), xmmword_435D0, v112);
                }
              }

              else
              {
                v80 = a5;
                v113 = vmlaq_f32(vmulq_f32(v68, xmmword_435F0), xmmword_43600, vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL));
              }

              v114 = vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL);
              v115 = vmulq_f32(v113, v113);
              *&v116 = v115.f32[1] + (v115.f32[2] + v115.f32[0]);
              *v115.f32 = vrsqrte_f32(v116);
              *v115.f32 = vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32)));
              v100 = vmulq_n_f32(v114, vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32))).f32[0]);
              v100.i32[3] = 0;
            }

            else
            {
              v80 = a5;
              v81 = v79;
              v82 = vrsqrte_f32(LODWORD(v79));
              v83 = vmul_f32(v82, vrsqrts_f32(LODWORD(v81), vmul_f32(v82, v82)));
              v84 = vmulq_n_f32(v77, vmul_f32(v83, vrsqrts_f32(LODWORD(v81), vmul_f32(v83, v83))).f32[0]);
              v85 = vaddq_f32(v68, v84);
              v86 = vmulq_f32(v85, v85);
              *&v87 = v86.f32[2] + vaddv_f32(*v86.f32);
              *v86.f32 = vrsqrte_f32(v87);
              *v86.f32 = vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32)));
              v88 = vmulq_n_f32(v85, vmul_f32(*v86.f32, vrsqrts_f32(v87, vmul_f32(*v86.f32, *v86.f32))).f32[0]);
              v89 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL), vnegq_f32(v68)), v88, vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL));
              v90 = vmulq_f32(v68, v88);
              v91 = vaddq_f32(v84, xmmword_435E0);
              v92 = vmulq_f32(v91, v91);
              v71.f32[0] = v92.f32[2] + vaddv_f32(*v92.f32);
              *v92.f32 = vrsqrte_f32(*v71.f32);
              *v92.f32 = vmul_f32(*v92.f32, vrsqrts_f32(*v71.f32, vmul_f32(*v92.f32, *v92.f32)));
              v93 = vmulq_n_f32(v91, vmul_f32(*v92.f32, vrsqrts_f32(*v71.f32, vmul_f32(*v92.f32, *v92.f32))).f32[0]);
              v94 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v93, v93), v93, 0xCuLL), vnegq_f32(v84)), v93, vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL));
              v95 = vextq_s8(vuzp1q_s32(v94, v94), v94, 0xCuLL);
              v96 = vmulq_f32(v84, v93);
              v95.f32[3] = v96.f32[2] + vaddv_f32(*v96.f32);
              v97 = vnegq_f32(v95);
              v98 = vtrn2q_s32(v95, vtrn1q_s32(v95, v97));
              v99 = vrev64q_s32(v95);
              v99.i32[0] = v97.i32[1];
              v99.i32[3] = v97.i32[2];
              v100 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v95, v90.f32[2] + vaddv_f32(*v90.f32)), v99, *v89.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v95, v97, 8uLL), v89.f32[0]), vextq_s8(v98, v98, 8uLL), v89, 2));
            }

            v232 = v100;
          }

          v117 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v270), v271), xmmword_43630);
          v118 = vnegq_f32(v233);
          v119 = vtrn2q_s32(v233, vtrn1q_s32(v233, v118));
          v120 = vrev64q_s32(v233);
          v120.i32[0] = v118.i32[1];
          v120.i32[3] = v118.i32[2];
          v234 = vaddq_f32(vmlaq_lane_f32(vmulq_laneq_f32(vextq_s8(v233, v118, 8uLL), v117, 2), vextq_s8(v119, v119, 8uLL), *v117.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(v233, v117.f32[0]), v120, v117, 3));
          GVSComputeRollPitchFromGravity(v273);
          v122 = (1.5533 - v121) / 0.50615;
          v123.i64[0] = 0;
          v124 = 1.0;
          v125 = fminf(fmaxf(v122, 0.0), 1.0);
          v126 = vmulq_f32(v234, xmmword_433D0);
          *v126.f32 = vadd_f32(*v126.f32, *&vextq_s8(v126, v126, 8uLL));
          v126.f32[0] = vaddv_f32(*v126.f32);
          v127 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v126, v123)), 0), vnegq_f32(v234), v234);
          v128 = 1.0 - v125;
          v129 = vsubq_f32(xmmword_433D0, v127);
          v130 = vmulq_f32(v129, v129);
          v230 = v127;
          v131 = vaddq_f32(v127, xmmword_433D0);
          v132 = vmulq_f32(v131, v131);
          v133 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v130.i8, *&vextq_s8(v130, v130, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v132.i8, *&vextq_s8(v132, v132, 8uLL)))));
          v134 = v133 + v133;
          _ZF = (v133 + v133) == 0.0;
          v136 = 1.0;
          if (!_ZF)
          {
            v136 = sinf(v134) / v134;
          }

          v137 = v136;
          v138 = vrecpe_f32(LODWORD(v136));
          v139 = vmul_f32(v138, vrecps_f32(LODWORD(v137), v138));
          LODWORD(v140) = vmul_f32(v139, vrecps_f32(LODWORD(v137), v139)).u32[0];
          if ((v134 * v128) != 0.0)
          {
            v227 = v140;
            v139.f32[0] = sinf(v134 * v128);
            v140 = v227;
            v124 = v139.f32[0] / (v134 * v128);
          }

          v139.f32[0] = v128 * (v140 * v124);
          v141 = vdupq_lane_s32(v139, 0);
          v142 = v134 * v125;
          v143 = 1.0;
          if (v142 != 0.0)
          {
            v226 = v141;
            v228 = v140;
            v144 = sinf(v142);
            v141 = v226;
            v140 = v228;
            v143 = v144 / v142;
          }

          v145 = xmmword_433D0;
          v146 = vmlaq_f32(vmulq_n_f32(v230, v125 * (v140 * v143)), xmmword_433D0, v141);
          v147 = vmulq_f32(v146, v146);
          v148 = vadd_f32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
          a5 = v80;
          if (vaddv_f32(v148) != 0.0)
          {
            v149 = vadd_f32(v148, vdup_lane_s32(v148, 1)).u32[0];
            v150 = vrsqrte_f32(v149);
            v151 = vmul_f32(v150, vrsqrts_f32(v149, vmul_f32(v150, v150)));
            v145 = vmulq_n_f32(v146, vmul_f32(v151, vrsqrts_f32(v149, vmul_f32(v151, v151))).f32[0]);
          }

          v152 = vnegq_f32(v238);
          v153 = vtrn2q_s32(v238, vtrn1q_s32(v238, v152));
          v154 = vrev64q_s32(v238);
          v154.i32[0] = v152.i32[1];
          v154.i32[3] = v152.i32[2];
          v155 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v238, v152, 8uLL), *v232.f32, 1), vextq_s8(v153, v153, 8uLL), v232.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v238, v232, 3), v154, v232, 2));
          v156 = vmulq_f32(v155, xmmword_433E0);
          v157 = vnegq_f32(v156);
          v158 = vtrn2q_s32(v156, vtrn1q_s32(v156, v157));
          v159 = vrev64q_s32(v156);
          v159.i32[0] = v157.i32[1];
          v159.i32[3] = v157.i32[2];
          v160 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v156, v157, 8uLL), *v145.f32, 1), vextq_s8(v158, v158, 8uLL), v145.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v156, v145, 3), v159, v145, 2));
          _Q2 = vnegq_f32(v160);
          v162 = vtrn2q_s32(v160, vtrn1q_s32(v160, _Q2));
          _Q4 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v160, _Q2, 8uLL), *v155.f32, 1), vextq_s8(v162, v162, 8uLL), v155.f32[0]);
          _Q3 = vrev64q_s32(v160);
          _Q3.i32[0] = _Q2.i32[1];
          _Q3.i32[3] = _Q2.i32[2];
          _Q1 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v160, v155, 3), _Q3, v155, 2), _Q4);
          _Q2.i32[0] = _Q1.i32[1];
          _Q4.i32[0] = _Q1.i32[3];
          v155.f32[0] = vmuls_lane_f32(_Q1.f32[2], _Q1, 3);
          __asm
          {
            FMLA            S3, S2, V1.S[1]
            FMLA            S3, S4, V1.S[3]
          }

          v169 = atan2f((v155.f32[0] + (_Q1.f32[0] * _Q1.f32[1])) + (v155.f32[0] + (_Q1.f32[0] * _Q1.f32[1])), _Q3.f32[0] - (_Q1.f32[0] * _Q1.f32[0]));
          v272[1] = 0;
          v272[2] = 0;
          v170 = __sincos_stret(v169 * 0.5);
          v272[3] = *&v170.__sinval;
          v272[0] = *&v170.__cosval;
          v270.f64[0] = FigMotionMultiplyQuaternions(v270.f64, v272);
          v270.f64[1] = v171;
          v271.f64[0] = v172;
          v271.f64[1] = v173;
        }
      }
    }
  }

  v174 = *(*(&v248 + 1) + 8 * a2);
  v272[0] = vmul_n_f32(v268, *(&v254 + 1));
  if (*(a1 + 176) <= 0)
  {
    if (!*v8)
    {
      goto LABEL_103;
    }

    goto LABEL_106;
  }

  v175 = 0;
  v176 = v12 - v13;
  v177 = vmul_n_f32(vsub_f32(v174, v269), *(&v254 + 1));
  v178 = a1 + 27872;
  v179 = (a1 + 27152);
  do
  {
    if (*(v8 + 507) < 1)
    {
      if (*v8)
      {
        v183 = (*(v261 + 8 * v175) + 32 * a2);
        v184 = &v270;
      }

      else
      {
        v243 = 0u;
        v244 = 0u;
        v243.f64[0] = GVSComputeGaussianAverageQuaternion(&v248, v175, a2, v239 != 0, 0, 0, a5, *(v8 + 597));
        v243.f64[1] = v185;
        v244.f64[0] = v186;
        v244.f64[1] = v187;
        if (v8[3112] == 1)
        {
          [*(a1 + 30288) faceCorrection];
          v243.f64[0] = GVSApplyFaceCorrectionQuaternionToStabilizedQuaternion(v188, v243.f64[0], v243.f64[1], v244.f64[0], v244.f64[1]);
          v243.f64[1] = v189;
          v244.f64[0] = v190;
          v244.f64[1] = v191;
        }

        if (*(a1 + 29568))
        {
          v243.f64[0] = FigMotionMultiplyQuaternions((v262 + 32 * a2), v243.f64);
          v243.f64[1] = v192;
          v244.f64[0] = v193;
          v244.f64[1] = v194;
        }

        v183 = (*(v261 + 8 * v175) + 32 * a2);
        v184 = &v243;
      }

      v182 = FigMotionMultiplyByInverseOfQuaternion(v184->f64, v183);
      *v178 = v182;
      *(v178 + 8) = v195;
      *(v178 + 16) = v196;
      *(v178 + 24) = v197;
    }

    else
    {
      v180 = (*(&v261 + 1) + 32 * a2);
      v181 = v180[1];
      *v178 = *v180;
      *(v178 + 16) = v181;
      v182 = *v178;
    }

    if (v182 < 0.0)
    {
      v241 = 0;
      v198 = -*(v178 + 24);
      *v178 = -v182;
      *(v178 + 8) = vnegq_f64(*(v178 + 8));
      *(v178 + 24) = v198;
    }

    *&v243.f64[0] = v177;
    if (v11)
    {
      *&v243.f64[0] = vadd_f32(v177, *(*(v11[1] + 8 * v242) + 8 * v175));
      v199 = GVSComputeTransformFromCameraMotion(v178, (a1 + 336), &v254, &v243, v272, v179);
      if (v199)
      {
        goto LABEL_111;
      }

      v200 = v11[2];
      v201 = v179;
      if (v200)
      {
        if (([*(v200 + 240 * v242) isValid] & 1) != 0 || (v202 = objc_msgSend(*(v11[2] + 240 * v242 + 8), "isValid"), v201 = v179, v202))
        {
          v203 = GVSCheckDistortedTransformFits(v179, v260 + 1, (a1 + 136), v11[2] + 240 * v242, v176 > 0.2468, &v267);
          if (v203)
          {
            v225 = v203;
            sbp_gvs_gaussianAverageComputeCorrection_cold_1();
            return v225;
          }

          goto LABEL_87;
        }
      }
    }

    else
    {
      v199 = GVSComputeTransformFromCameraMotion(v178, (a1 + 336), &v254, &v243, v272, v179);
      if (v199)
      {
LABEL_111:
        v225 = v199;
        sbp_gvs_gaussianAverageComputeCorrection_cold_2();
        return v225;
      }

      v201 = a1 + 27152 + 36 * v175;
    }

    v204 = limitTransformToOverscan(a1 + 128, v260 + 1, v201, *(&v255 + 1));
    if (v204)
    {
      v225 = v204;
      sbp_gvs_gaussianAverageComputeCorrection_cold_3();
      return v225;
    }

    v267 = *(a1 + 196) >= 1.0;
LABEL_87:
    v205 = *v8;
    v207 = DWORD2(v265) != HIDWORD(v265) && v176 <= 0.295;
    if (*v8 != 0 || v241 || v207)
    {
      v208 = v267;
    }

    else
    {
      v208 = 0;
      v267 = 0;
    }

    if (a3 && !v208)
    {
      break;
    }

    ++v175;
    v179 += 9;
    v178 += 32;
  }

  while (v175 < *(a1 + 176));
  if (v205)
  {
    goto LABEL_106;
  }

LABEL_103:
  v209 = *(a1 + 176) - 1;
  v210 = *(a1 + 176) / 2;
  v243.f64[0] = FigMotionMultiplyQuaternions((*(v261 + 8 * (v209 / 2)) + 32 * a2), (a1 + 27872 + 32 * ((v209 + (v209 >> 31)) >> 1)));
  v243.f64[1] = v211;
  v244.f64[0] = v212;
  v244.f64[1] = v213;
  if (v210 == v209 / 2)
  {
    v270 = v243;
    v271 = v244;
  }

  else
  {
    v274 = FigMotionMultiplyQuaternions((*(v261 + 8 * v210) + 32 * a2), (a1 + 27872 + 32 * v210));
    v275 = v214;
    v276 = v215;
    v277 = v216;
    v270.f64[0] = GVSInterpolateQuaternionsLERP(&v274, &v243, 1, 0, 0.5);
    v270.f64[1] = v217;
    v271.f64[0] = v218;
    v271.f64[1] = v219;
  }

LABEL_106:
  v220 = v271;
  *(a1 + 28096) = v270;
  *(a1 + 28112) = v220;
  *(a1 + 28224) = v269;
  *(a1 + 28232) = v268;
  if (*(*(&v249 + 1) + a2) == 1)
  {
    v243.f64[0] = FigMotionMultiplyByInverseOfQuaternion(v270.f64, (*(v248 + 8 * *(a1 + 176)) + 32 * a2));
    v243.f64[1] = v221;
    v244.f64[0] = v222;
    v244.f64[1] = v223;
    v274 = 0.0;
    GVSComputeTranslationFromCameraMotion(v243.f64, &v274, *(&v254 + 1));
    if (fmaxf(fabsf(*&v274), fabsf(*(&v274 + 1))) > 1.0)
    {
      v267 = 0;
    }
  }

  v225 = 0;
  *a4 = v267;
  return v225;
}

uint64_t limitTransformToOverscan(uint64_t a1, double *a2, uint64_t a3, float a4)
{
  v6 = 1.0;
  if (*(a1 + 40) <= 2u)
  {
    *(a3 + 24) = 0;
    *(a3 + 32) = 1065353216;
  }

  result = GVSFindBestPerspectiveTransform(a3, a2, (a1 + 24), &v6, a4);
  if (result)
  {
    *(a1 + 74) = 1;
  }

  else if (v6 < *(a1 + 68))
  {
    *(a1 + 68) = v6;
  }

  return result;
}

void _runVideoDeghostingRepairOnSingleFrame(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  _updateVideoDeghostingGhostInformationLookAhead([v7 ghostInformationLookAheadPointer], a2, a4, a3);
  [v7 setRepairInputSampleBuffer:*(*a2 + 8 * a4)];
  [v7 setRepairInputDetectionResult:*(a2[1] + 24 * a4 + 8)];
  v8 = [v7 repair];

  if (v8)
  {
    _runVideoDeghostingRepairOnSingleFrame_cold_1(v8);
  }
}

uint64_t _runSmartStyleIntegrate(uint64_t a1, CMAttachmentBearerRef target)
{
  v2 = a1;
  rect.origin.x = 0.0;
  rect.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  rect.size = _Q0;
  if (!a1)
  {
    _runSmartStyleIntegrate_cold_13(0, target);
    v14 = 0;
    v11 = 0;
LABEL_32:
    v12 = 0;
    v10 = 0;
    goto LABEL_42;
  }

  if (!target)
  {
    _runSmartStyleIntegrate_cold_12();
    v14 = 0;
    v11 = 0;
    v2 = 0;
    goto LABEL_32;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _runSmartStyleIntegrate_cold_1(target);
  }

  v9 = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail];

    if (v11)
    {
      v12 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
      if (v12)
      {
        v13 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients;
        v14 = [v10 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];

        if (!v14)
        {
          _runSmartStyleIntegrate_cold_8();
LABEL_41:
          v11 = 0;
          v2 = 0;
          goto LABEL_42;
        }

        ImageBuffer = CMSampleBufferGetImageBuffer(v11);
        if (ImageBuffer)
        {
          v16 = ImageBuffer;
          v17 = CMSampleBufferGetImageBuffer(v14);
          if (v17)
          {
            v18 = v17;
            v31 = v13;
            v32 = v10;
            v19 = v2 + 28672;
            v20 = *(v2 + 30105);
            v21 = [v12 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleLearnedRect];

            if (v21 && v20 && !CGRectMakeWithDictionaryRepresentation(v21, &rect))
            {
              _runSmartStyleIntegrate_cold_2();
            }

            v22 = kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent;
            v11 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent, 0);
            v23 = objc_alloc_init(*(v2 + 30160));
            v14 = v23;
            if (!v23)
            {
              _runSmartStyleIntegrate_cold_5();
              v2 = 0;
              v29 = 4294954510;
LABEL_26:
              v10 = v32;
              goto LABEL_27;
            }

            [v23 setMetalSharedEvent:v11];
            [v14 setInputMetadataDict:v12];
            [v14 setInputUnstyledThumbnailPixelBuffer:v16];
            [v14 setInputStyleCoefficientsPixelBuffer:v18];
            [v14 setPrimaryCaptureRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
            if (v20)
            {
              v24 = [*(v2 + 30128) configuration];
              v25 = [v24 styleEngineConfiguration];
              [v25 globalLinearSystemMixFactor];
              [v14 setGlobalLinearSystemMixFactor:?];
            }

            else
            {
              updated = _updateSmartStyleGlobalMixFactor(v2, v12);
              if (updated)
              {
                v29 = updated;
                _runSmartStyleIntegrate_cold_3();
LABEL_46:
                v2 = 0;
                goto LABEL_26;
              }

              LODWORD(v27) = *(v2 + 30212);
              [v14 setGlobalLinearSystemMixFactor:v27];
            }

            [*(v2 + 30128) setInputOutput:v14];
            v28 = [*(v2 + 30128) process];
            if (!v28)
            {
              v2 = [*(v2 + 30128) outputIntegratedStyleCoefficientsTexture];
              if (!*(v19 + 1434))
              {
                _setAttachedMediaToSampleBuffer(target, v31, 0);
              }

              _setAttachedMediaToSampleBuffer(target, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingIntegratedForwardLearnedCoefficients, v2);
              if (v11)
              {
                CMRemoveAttachment(target, v22);
              }

              v29 = 0;
              goto LABEL_26;
            }

            v29 = v28;
            _runSmartStyleIntegrate_cold_4();
            goto LABEL_46;
          }

          _runSmartStyleIntegrate_cold_6();
        }

        else
        {
          _runSmartStyleIntegrate_cold_7();
        }
      }

      else
      {
        _runSmartStyleIntegrate_cold_9();
      }

      v14 = 0;
      goto LABEL_41;
    }

    _runSmartStyleIntegrate_cold_10();
    v14 = 0;
  }

  else
  {
    _runSmartStyleIntegrate_cold_11();
    v14 = 0;
    v11 = 0;
  }

  v2 = 0;
  v12 = 0;
LABEL_42:
  v29 = 4294954516;
LABEL_27:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  return v29;
}

uint64_t _runSmartStyleApplyOnUnstabilizedThumbnail(uint64_t a1, CMAttachmentBearerRef target)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  destinationBuffer = 0;
  cf = 0;
  if (!a1)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_15(0, target);
LABEL_38:
    v21 = 0;
    v23 = 0;
    v5 = 0;
    v4 = 0;
LABEL_43:
    PixelBufferFromPool = 4294954516;
    goto LABEL_29;
  }

  if (!target)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_14();
    goto LABEL_38;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_1(target);
  }

  v4 = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v4)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_13();
    v21 = 0;
    v23 = 0;
    v5 = 0;
    goto LABEL_43;
  }

  v5 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  if (!v5)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_12();
LABEL_42:
    v21 = 0;
    v23 = 0;
    goto LABEL_43;
  }

  v6 = [v4 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail];

  if (!v6)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_11();
    goto LABEL_42;
  }

  v31 = v5;
  ImageBuffer = CMSampleBufferGetImageBuffer(v6);
  if (!ImageBuffer)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_10();
LABEL_47:
    v21 = 0;
    v23 = 0;
    PixelBufferFromPool = 4294954516;
    v5 = v31;
    goto LABEL_29;
  }

  v8 = ImageBuffer;
  v9 = [v4 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];

  if (!v9)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_9();
    goto LABEL_47;
  }

  v10 = CMSampleBufferGetImageBuffer(v9);
  if (!v10)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_8();
    goto LABEL_47;
  }

  v11 = v10;
  v29 = v4;
  if (*(a1 + 25))
  {
    v12 = *(a1 + 27148);
    v13 = v12 | 2;
    if (v12 == 2)
    {
      v14 = 66000;
    }

    else
    {
      v14 = 0;
    }

    if (v13 == 3)
    {
      v15 = 66000;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail;
  v17 = [*(a1 + 48) objectForKeyedSubscript:{kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail, v29}];
  v18 = [*(a1 + 56) objectForKeyedSubscript:v16];
  PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v17, v18, 0, v15, 0, 0, &destinationBuffer);

  if (PixelBufferFromPool)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_2(PixelBufferFromPool);
    v21 = 0;
    v23 = 0;
LABEL_50:
    v4 = v30;
    v5 = v31;
    goto LABEL_29;
  }

  CVBufferPropagateAttachments(v8, destinationBuffer);
  v20 = kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent;
  v21 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent, 0);
  v22 = objc_alloc_init(*(a1 + 30160));
  v23 = v22;
  if (!v22)
  {
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_7();
    PixelBufferFromPool = 4294954510;
    goto LABEL_50;
  }

  [v22 setMetalSharedEvent:v21];
  [v23 setInputUnstyledPixelBuffer:v8];
  v5 = v31;
  [v23 setInputMetadataDict:v31];
  [v23 setInputStyleCoefficientsPixelBuffer:v11];
  [v23 setOutputStyledPixelBuffer:destinationBuffer];
  [*(a1 + 30136) setInputOutput:v23];
  v24 = [*(a1 + 30136) process];
  if (v24)
  {
    PixelBufferFromPool = v24;
    _runSmartStyleApplyOnUnstabilizedThumbnail_cold_3();
    v4 = v30;
  }

  else
  {
    v25 = [*(a1 + 30136) finishProcessing];
    if (v25)
    {
      PixelBufferFromPool = v25;
      _runSmartStyleApplyOnUnstabilizedThumbnail_cold_4();
    }

    else
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v6, 1, &timingArrayOut, 0);
      if (SampleTimingInfoArray)
      {
        PixelBufferFromPool = SampleTimingInfoArray;
        _runSmartStyleApplyOnUnstabilizedThumbnail_cold_5();
      }

      else
      {
        v27 = sbp_internalCreateSampleBufferWithNewPixelBuffer(destinationBuffer, *(a1 + 64), v16, &timingArrayOut, &cf);
        if (v27)
        {
          PixelBufferFromPool = v27;
          _runSmartStyleApplyOnUnstabilizedThumbnail_cold_6();
        }

        else
        {
          _setAttachedMediaToSampleBuffer(target, v16, cf);
          if (v21)
          {
            CMRemoveAttachment(target, v20);
          }

          PixelBufferFromPool = 0;
        }
      }
    }

    v4 = v30;
  }

LABEL_29:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return PixelBufferFromPool;
}

uint64_t sbp_gvs_createStabilizedAttachmentsPixelBuffers(uint64_t a1, void *target, opaqueCMSampleBuffer *a3, _OWORD *a4)
{
  v57 = 0;
  v58 = 0;
  if (!a1)
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_10(0, target);
LABEL_57:
    PixelBufferFromPool = 4294954516;
    goto LABEL_47;
  }

  if (!target)
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_9();
    goto LABEL_57;
  }

  if (!a3)
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_8();
    goto LABEL_57;
  }

  if (*(a1 + 172))
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_1();
    goto LABEL_57;
  }

  v6 = *(a1 + 128);
  v7 = *(a1 + 132);
  v55 = 0uLL;
  v56.f64[0] = v6;
  v56.f64[1] = v7;
  if (*(a1 + 224))
  {
    *&timingArrayOut.duration.value = *a4;
    ensureValidBufferRectIsCompatibleWithGPU(v6, v7, &timingArrayOut);
    v8.i64[0] = SLODWORD(timingArrayOut.duration.value);
    v8.i64[1] = SHIDWORD(timingArrayOut.duration.value);
    v9 = vcvtq_f64_s64(v8);
    v8.i64[0] = timingArrayOut.duration.timescale;
    v8.i64[1] = timingArrayOut.duration.flags;
    v55 = v9;
    v56 = vcvtq_f64_s64(v8);
  }

  v10 = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v10)
  {
    PixelBufferFromPool = 0;
    goto LABEL_47;
  }

  v11 = v10;
  ImageBuffer = CMSampleBufferGetImageBuffer(a3);
  if (!ImageBuffer)
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_7(v11);
    goto LABEL_57;
  }

  v13 = ImageBuffer;
  Width = CVPixelBufferGetWidth(ImageBuffer);
  Height = CVPixelBufferGetHeight(v13);
  v54[0] = kFigCaptureStreamMetadataOutputKey_HumanFullBodiesMask;
  v54[1] = kFigCaptureStreamMetadataOutputKey_HumanSkinsMask;
  v54[2] = kFigCaptureStreamMetadataOutputKey_HumanHairMask;
  v54[3] = kFigCaptureStreamMetadataOutputKey_SkyMask;
  v44 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLinearThumbnail;
  v54[4] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLinearThumbnail;
  v16 = [NSArray arrayWithObjects:v54 count:5];
  v17 = [NSMutableArray arrayWithArray:v16];

  if (v17)
  {
    v18 = CMGetAttachment(target, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    v40 = (a1 + 27148);
    if (*(a1 + 30107))
    {
      v19 = &__kCFBooleanTrue;
    }

    else
    {
      v53[0] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail;
      v53[1] = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail;
      v21 = [NSArray arrayWithObjects:v53 count:2];
      [v17 addObjectsFromArray:v21];

      v19 = &__kCFBooleanFalse;
    }

    v38 = v18;
    [v18 setObject:v19 forKeyedSubscript:kFigVideoStabilizationSampleBufferAttachmentKey_OutputSmartStyleUnstyledEnabled];
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v22 = v11;
    v23 = [v22 countByEnumeratingWithState:&v49 objects:v48 count:16];
    v45 = v17;
    if (v23)
    {
      v24 = v23;
      v25 = *v50;
      key = kCVImageBufferTransferFunctionKey;
      v41 = COERCE_DOUBLE(__PAIR64__(Height, Width));
      v42 = target;
      v43 = v22;
      while (2)
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v50 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v49 + 1) + 8 * i);
          if ([v17 containsObject:v27])
          {
            memset(&timingArrayOut, 0, sizeof(timingArrayOut));
            v28 = [v22 objectForKeyedSubscript:v27];

            v29 = CMSampleBufferGetImageBuffer(v28);
            if (*(a1 + 25))
            {
              if (*v40 == 2)
              {
                v30 = 66000;
              }

              else
              {
                v30 = 0;
              }

              if ((*v40 | 2) == 3)
              {
                v31 = 66000;
              }

              else
              {
                v31 = v30;
              }
            }

            else
            {
              v31 = 0;
            }

            v32 = [*(a1 + 48) objectForKeyedSubscript:v27];
            v33 = [*(a1 + 56) objectForKeyedSubscript:v27];
            PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v32, v33, 0, v31, 0, 0, &v58);

            if (PixelBufferFromPool)
            {
              sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_2(PixelBufferFromPool);
LABEL_45:
              v22 = v43;
              goto LABEL_46;
            }

            CVBufferPropagateAttachments(v29, v58);
            if ([v27 isEqual:v44])
            {
              CVBufferRemoveAttachment(v58, key);
            }

            v34 = AffineTransformArrayApplyOnAttachment(*(a1 + 88), v42, v27, v58, *(a1 + 27408), &v55, COERCE_DOUBLE(vrev64_s32(*(a1 + 180))), COERCE_DOUBLE(vrev64_s32(*(a1 + 188))), v41);
            if (v34)
            {
              PixelBufferFromPool = v34;
              sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_3();
              goto LABEL_45;
            }

            SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(v28, 1, &timingArrayOut, 0);
            if (SampleTimingInfoArray)
            {
              PixelBufferFromPool = SampleTimingInfoArray;
              sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_4();
              goto LABEL_45;
            }

            v36 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v58, *(a1 + 64), v27, &timingArrayOut, &v57);
            if (v36)
            {
              PixelBufferFromPool = v36;
              sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_5();
              goto LABEL_45;
            }

            _setAttachedMediaToSampleBuffer(a3, v27, v57);
            _setAttachedMediaToSampleBuffer(v42, v27, 0);
            if (v58)
            {
              CFRelease(v58);
              v58 = 0;
            }

            v17 = v45;
            v22 = v43;
            if (v57)
            {
              CFRelease(v57);
              v57 = 0;
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v49 objects:v48 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    PixelBufferFromPool = 0;
LABEL_46:
  }

  else
  {
    sbp_gvs_createStabilizedAttachmentsPixelBuffers_cold_6(v11);
    PixelBufferFromPool = 4294954510;
  }

LABEL_47:
  if (v58)
  {
    CFRelease(v58);
    v58 = 0;
  }

  if (v57)
  {
    CFRelease(v57);
  }

  return PixelBufferFromPool;
}

uint64_t _runSmartStyleReverseLearning(uint64_t a1, const void *a2, void *target)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v30 = 0;
  cf = 0;
  v29 = 0;
  if (!a1)
  {
    _runSmartStyleReverseLearning_cold_13(0, a2, target);
LABEL_39:
    PixelBufferFromPool = 4294954516;
    goto LABEL_24;
  }

  if (!a2)
  {
    _runSmartStyleReverseLearning_cold_12();
    goto LABEL_39;
  }

  if (!target)
  {
    _runSmartStyleReverseLearning_cold_11();
    goto LABEL_39;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _runSmartStyleReverseLearning_cold_1(a2);
  }

  v6 = CMGetAttachment(target, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v6)
  {
    _runSmartStyleReverseLearning_cold_10();
    goto LABEL_39;
  }

  v7 = v6;
  v8 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail;
  v9 = [v6 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail];

  if (!v9)
  {
    _runSmartStyleReverseLearning_cold_9(v7);
    goto LABEL_39;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(v9);
  if (!ImageBuffer)
  {
    _runSmartStyleReverseLearning_cold_8(v7);
    goto LABEL_39;
  }

  v11 = ImageBuffer;
  v12 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail;
  v13 = [v7 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail];

  if (!v13)
  {
    _runSmartStyleReverseLearning_cold_7(v7);
    goto LABEL_39;
  }

  v14 = CMSampleBufferGetImageBuffer(v13);
  if (!v14)
  {
    _runSmartStyleReverseLearning_cold_6(v7);
    goto LABEL_39;
  }

  v15 = v14;
  v27 = v8;
  v28 = a2;
  if (*(a1 + 25))
  {
    v16 = *(a1 + 27148);
    v17 = v16 | 2;
    if (v16 == 2)
    {
      v18 = 66000;
    }

    else
    {
      v18 = 0;
    }

    if (v17 == 3)
    {
      v19 = 66000;
    }

    else
    {
      v19 = v18;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients;
  v21 = [*(a1 + 48) objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients];
  v22 = [*(a1 + 56) objectForKeyedSubscript:v20];
  PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v21, v22, 0, v19, 0, 0, &v30);

  if (PixelBufferFromPool)
  {
    _runSmartStyleReverseLearning_cold_2();
  }

  else
  {
    v24 = [*(a1 + 30144) learnTransformFrom:v11 to:v15 outputCoefficients:v30 outputIntegratedCoefficients:&v29];
    if (v24)
    {
      PixelBufferFromPool = v24;
      _runSmartStyleReverseLearning_cold_3();
    }

    else
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(target, 1, &timingArrayOut, 0);
      if (SampleTimingInfoArray)
      {
        PixelBufferFromPool = SampleTimingInfoArray;
        _runSmartStyleReverseLearning_cold_4();
      }

      else
      {
        PixelBufferFromPool = sbp_internalCreateSampleBufferWithNewPixelBuffer(v30, *(a1 + 64), v20, &timingArrayOut, &cf);
        if (PixelBufferFromPool)
        {
          _runSmartStyleReverseLearning_cold_5();
        }

        else
        {
          _setAttachedMediaToSampleBuffer(v28, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingIntegratedReverseLearnedCoefficients, v29);
          _setAttachedMediaToSampleBuffer(target, v20, cf);
          _setAttachedMediaToSampleBuffer(target, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients, 0);
          _setAttachedMediaToSampleBuffer(target, v27, 0);
          _setAttachedMediaToSampleBuffer(target, v12, 0);
        }
      }
    }
  }

LABEL_24:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  return PixelBufferFromPool;
}

uint64_t sbp_gvs_createStabilizedPixelBuffer(uint64_t a1, CMSampleBufferRef sbuf, int32x4_t *a3, __CVBuffer *a4)
{
  if (!a1)
  {
    sbp_gvs_createStabilizedPixelBuffer_cold_13(0, sbuf);
    return 4294954516;
  }

  if (!sbuf)
  {
    sbp_gvs_createStabilizedPixelBuffer_cold_12();
    return 4294954516;
  }

  v6 = a4;
  if (!a4)
  {
    sbp_gvs_createStabilizedPixelBuffer_cold_11();
    return 4294954516;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    sbp_gvs_createStabilizedPixelBuffer_cold_10();
    return 4294954516;
  }

  v10 = ImageBuffer;
  v11 = a1 + 27148;
  if (CMGetAttachment(ImageBuffer, @"InputDepthPixelBuffer", 0))
  {
    value[0] = 0;
    if (*(a1 + 25))
    {
      if (*v11 == 2)
      {
        v12 = 66000;
      }

      else
      {
        v12 = 0;
      }

      if ((*v11 | 2) == 3)
      {
        v13 = 66000;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = [*(a1 + 48) objectForKeyedSubscript:@"OutputBufferDepth"];
    v15 = [*(a1 + 56) objectForKeyedSubscript:@"OutputBufferDepth"];
    PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v14, v15, 0, v13, 0, 0, value);

    if (PixelBufferFromPool)
    {
      sbp_gvs_createStabilizedPixelBuffer_cold_1(PixelBufferFromPool, value);
      return PixelBufferFromPool;
    }

    CMSetAttachment(v10, @"OutputDepthPixelBuffer", value[0], 0);
    if (value[0])
    {
      CFRelease(value[0]);
    }
  }

  if (!*(a1 + 172) && *(a1 + 30106))
  {
    value[0] = 0;
    if (*(a1 + 25))
    {
      if (*v11 == 2)
      {
        v22 = 66000;
      }

      else
      {
        v22 = 0;
      }

      if ((*v11 | 2) == 3)
      {
        v23 = 66000;
      }

      else
      {
        v23 = v22;
      }
    }

    else
    {
      v23 = 0;
    }

    v63 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingDeltaMap;
    v64 = [*(a1 + 48) objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingDeltaMap];
    v65 = [*(a1 + 56) objectForKeyedSubscript:v63];
    PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v64, v65, 0, v23, 0, 0, value);

    if (PixelBufferFromPool)
    {
      sbp_gvs_createStabilizedPixelBuffer_cold_2(PixelBufferFromPool, value);
      return PixelBufferFromPool;
    }

    CMSetAttachment(v10, @"OutputSmartStyleDeltaMapPixelBuffer", value[0], 0);
    if (value[0])
    {
      CFRelease(value[0]);
    }
  }

  v17 = kFigCaptureSampleBufferAttachmentKey_LowResImageUsedByVideoEncoder;
  v18 = [*(a1 + 48) objectForKeyedSubscript:kFigCaptureSampleBufferAttachmentKey_LowResImageUsedByVideoEncoder];

  if (v18)
  {
    value[0] = 0;
    if (*(a1 + 25))
    {
      v19 = v6;
      if (*v11 == 2)
      {
        v20 = 66000;
      }

      else
      {
        v20 = 0;
      }

      if ((*v11 | 2) == 3)
      {
        v21 = 66000;
      }

      else
      {
        v21 = v20;
      }
    }

    else
    {
      v19 = v6;
      v21 = 0;
    }

    v24 = [*(a1 + 48) objectForKeyedSubscript:v17];
    v25 = [*(a1 + 56) objectForKeyedSubscript:v17];
    PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v24, v25, 0, v21, 0, 0, value);

    if (PixelBufferFromPool)
    {
      sbp_gvs_createStabilizedPixelBuffer_cold_3(PixelBufferFromPool, value);
      return PixelBufferFromPool;
    }

    CMSetAttachment(v10, @"LowResolutionImageUsedByVideoEncoder", value[0], 0);
    if (value[0])
    {
      CFRelease(value[0]);
    }

    v6 = v19;
  }

  v26 = *(a1 + 172);
  v27 = *(a1 + 27408);
  if ((v26 - 1) >= 2)
  {
    if (v26 != 3 && v26)
    {
      PixelBufferFromPool = 4294954516;
    }

    else
    {
      v28 = *(a1 + 128);
      v29 = *(a1 + 132);
      value[0] = 0;
      value[1] = 0;
      v69.f64[0] = v28;
      v69.f64[1] = v29;
      if (*(a1 + 224))
      {
        v67 = *a3;
        ensureValidBufferRectIsCompatibleWithGPU(v28, v29, &v67);
        v30.i64[0] = v67.i32[0];
        v30.i64[1] = v67.i32[1];
        v31 = vcvtq_f64_s64(v30);
        v30.i64[0] = v67.i32[2];
        v30.i64[1] = v67.i32[3];
        *value = v31;
        v69 = vcvtq_f64_s64(v30);
      }

      if (*(a1 + 29612) && *(a1 + 29656) && *(a1 + 29675) == 1)
      {
        if (gGMFigKTraceEnabled == 1)
        {
          sbp_gvs_createStabilizedPixelBuffer_cold_5(sbuf, a1 + 29656, &v67);
        }

        if ([*(a1 + 29648) computeLTCsCorrection:*(a1 + 29664) forPTS:? shouldShutdown:? skipFrame:?])
        {
          sbp_gvs_createStabilizedPixelBuffer_cold_6();
        }

        if (gGMFigKTraceEnabled == 1)
        {
          kdebug_trace();
        }
      }

      else
      {
        v33 = *(a1 + 29680);
        v34 = __OFSUB__(v33, 1);
        v35 = v33 - 1;
        if (v35 < 0 == v34)
        {
          *(a1 + 29680) = v35;
        }
      }

      v36 = sbp_gvs_transformImageRender(a1, sbuf, v6, value, a1 + 128, v27, *(a1 + 29656));
      if (!v36)
      {
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v38 = Mutable;
          v39 = kFigCaptureVideoSTFAnalyticsKey_VideoSTFLTMApplied;
          v40 = [NSNumber numberWithBool:*(a1 + 29676)];
          CFDictionarySetValue(v38, v39, v40);

          v41 = kFigCaptureVideoSTFAnalyticsKey_CancellationReason;
          v42 = [NSNumber numberWithInt:*(a1 + 29684)];
          CFDictionarySetValue(v38, v41, v42);

          v43 = kFigCaptureVideoSTFAnalyticsKey_AnalyticsVersion;
          v44 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 29648) videoSTFAnalyticsVersion]);
          CFDictionarySetValue(v38, v43, v44);

          if (*(a1 + 29676) == 1)
          {
            v46 = [*(a1 + 29648) getAnalyticsData:*(a1 + 29664)];
            if (v46)
            {
              sbp_gvs_createStabilizedPixelBuffer_cold_8();
            }

            else
            {
              v47 = HIDWORD(v46);
              v48 = v45;
              v49 = kFigCaptureVideoSTFAnalyticsKey_MeanCorrectionLevel;
              v50 = [NSNumber numberWithInt:v47];
              CFDictionarySetValue(v38, v49, v50);

              v51 = kFigCaptureVideoSTFAnalyticsKey_MaxCorrectionLevel;
              LODWORD(v52) = v48;
              v53 = [NSNumber numberWithFloat:v52];
              CFDictionarySetValue(v38, v51, v53);
            }
          }

          CMSetAttachment(sbuf, kFigVideoStabilizationSampleBufferAttachmentKey_VideoSTFAnalytics, v38, 1u);
          CFRelease(v38);
        }

        else
        {
          sbp_gvs_createStabilizedPixelBuffer_cold_9();
        }

        goto LABEL_63;
      }

      PixelBufferFromPool = v36;
      sbp_gvs_createStabilizedPixelBuffer_cold_7(v36, value);
    }

LABEL_67:
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", PixelBufferFromPool, v4, v66, v4, v67.i32[0], v67.i64[1], value[0], LODWORD(value[1]));
    return PixelBufferFromPool;
  }

  v32 = sbp_gvs_transformImageRender(a1, sbuf, v6, 0, a1 + 128, *(a1 + 27408), 0);
  if (v32)
  {
    PixelBufferFromPool = v32;
    sbp_gvs_createStabilizedPixelBuffer_cold_4();
    goto LABEL_67;
  }

LABEL_63:
  if (*(v11 + 2628) == 1)
  {
    v54 = CVBufferCopyAttachments(v6, kCVAttachmentMode_ShouldPropagate);
    if (v54)
    {
      v55 = CFAutorelease(v54);
    }

    else
    {
      v55 = 0;
    }

    v56 = kCVImageBufferColorPrimariesKey;
    v57 = CFDictionaryGetValue(v55, kCVImageBufferColorPrimariesKey);
    v58 = kCVImageBufferTransferFunctionKey;
    v59 = CFDictionaryGetValue(v55, kCVImageBufferTransferFunctionKey);
    v60 = kCVImageBufferYCbCrMatrixKey;
    v61 = CFDictionaryGetValue(v55, kCVImageBufferYCbCrMatrixKey);
    CVBufferPropagateAttachments(v10, v6);
    CVBufferSetAttachment(v6, v56, v57, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(v6, v58, v59, kCVAttachmentMode_ShouldPropagate);
    CVBufferSetAttachment(v6, v60, v61, kCVAttachmentMode_ShouldPropagate);
  }

  return 0;
}

uint64_t _runSmartStyleReverseLearningAndComputeDeltaMap(uint64_t a1, CMSampleBufferRef sbuf, opaqueCMSampleBuffer *a3)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v27 = 0;
  cf = 0;
  if (!a1)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_13(0, sbuf);
LABEL_38:
    PixelBufferFromPool = 4294954516;
    goto LABEL_24;
  }

  if (!sbuf)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_12();
    goto LABEL_38;
  }

  if (!a3)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_11();
    goto LABEL_38;
  }

  if (gGMFigKTraceEnabled == 1)
  {
    _runSmartStyleReverseLearning_cold_1(sbuf);
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
  if (!ImageBuffer)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_10();
    goto LABEL_38;
  }

  v7 = ImageBuffer;
  v8 = CMSampleBufferGetImageBuffer(a3);
  if (!v8)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_9();
    goto LABEL_38;
  }

  v9 = v8;
  v10 = CMGetAttachment(v7, @"OutputSmartStyleUnstyledPixelBuffer", 0);
  if (!v10)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_8();
    goto LABEL_38;
  }

  v11 = v10;
  v12 = CMGetAttachment(v7, @"OutputSmartStyleDeltaMapPixelBuffer", 0);
  if (!v12)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_7();
    goto LABEL_38;
  }

  v13 = v12;
  if (*(a1 + 25))
  {
    v14 = *(a1 + 27148);
    v15 = v14 | 2;
    if (v14 == 2)
    {
      v16 = 66000;
    }

    else
    {
      v16 = 0;
    }

    if (v15 == 3)
    {
      v17 = 66000;
    }

    else
    {
      v17 = v16;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients;
  v19 = [*(a1 + 48) objectForKeyedSubscript:{kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingReverseLearnedCoefficients, v27}];
  v20 = [*(a1 + 56) objectForKeyedSubscript:v18];
  PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v19, v20, 0, v17, 0, 0, &v27);

  if (PixelBufferFromPool)
  {
    _runSmartStyleReverseLearningAndComputeDeltaMap_cold_2(PixelBufferFromPool);
  }

  else
  {
    v22 = [*(a1 + 30144) learnTransformFrom:v9 to:v11 outputCoefficients:v27 outputIntegratedCoefficients:0];
    if (v22)
    {
      PixelBufferFromPool = v22;
      _runSmartStyleReverseLearningAndComputeDeltaMap_cold_3();
    }

    else
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a3, 1, &timingArrayOut, 0);
      if (SampleTimingInfoArray)
      {
        PixelBufferFromPool = SampleTimingInfoArray;
        _runSmartStyleReverseLearningAndComputeDeltaMap_cold_4();
      }

      else
      {
        v24 = sbp_internalCreateSampleBufferWithNewPixelBuffer(v27, *(a1 + 64), v18, &timingArrayOut, &cf);
        if (v24)
        {
          PixelBufferFromPool = v24;
          _runSmartStyleReverseLearningAndComputeDeltaMap_cold_5();
        }

        else
        {
          v25 = [*(a1 + 30152) computeDeltaMapForSourcePixelBuffer:v11 targetPixelBuffer:v9 coefficients:v27 outputDeltaMapPixelBuffer:v13];
          PixelBufferFromPool = v25;
          if (v25)
          {
            _runSmartStyleReverseLearningAndComputeDeltaMap_cold_6(v25);
          }

          else
          {
            _setAttachedMediaToSampleBuffer(a3, v18, cf);
            _setAttachedMediaToSampleBuffer(a3, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients, 0);
            _setAttachedMediaToSampleBuffer(a3, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingStyledThumbnail, 0);
            _setAttachedMediaToSampleBuffer(a3, kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail, 0);
          }
        }
      }
    }
  }

LABEL_24:
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return PixelBufferFromPool;
}

uint64_t ensureValidBufferRectIsCompatibleWithGPU(uint64_t result, uint64_t a2, int32x4_t *a3)
{
  if (!a3)
  {
    return ensureValidBufferRectIsCompatibleWithGPU_cold_1(result, a2);
  }

  v3 = *a3;
  if ((vmaxv_u16(vmovn_s32(vcgtq_s32(xmmword_43640, *a3))) & 1) != 0 || ((v4 = HIDWORD(*a3), v5 = v3.i32[3] + v3.i32[1], v3.i32[2] + v3.i32[0] >= 1) ? (v6 = v5 < 1) : (v6 = 1), !v6 ? (v7 = v3.i32[3] <= a2) : (v7 = 0), v7 ? (v8 = v3.i32[2] <= result) : (v8 = 0), v8 ? (v9 = v3.i32[2] + v3.i32[0] <= result) : (v9 = 0), v9 ? (v10 = v5 <= a2) : (v10 = 0), v10 ? (v11 = v3.i32[1] < a2) : (v11 = 0), v11 ? (v12 = v3.i32[0] < result) : (v12 = 0), !v12))
  {
    a3->i64[0] = 0;
    a3->i32[2] = result;
    a3->i32[3] = a2;
    return result;
  }

  if ((v3.i8[4] & 1) == 0)
  {
    if ((v3.i8[12] & 1) == 0)
    {
      return result;
    }

    goto LABEL_36;
  }

  v13 = a2 - 1;
  if (v3.i32[1] == a2 - 1)
  {
    v14 = v3.i32[1] - 1;
  }

  else
  {
    v14 = v3.i32[1] + 1;
  }

  if (v14 < a2)
  {
    v13 = v14;
  }

  a3->i32[1] = v13;
  v4 = v5 - v13;
  a3->i32[3] = v4;
  if (v4)
  {
LABEL_36:
    if (v4 <= 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = v4 - 1;
    }

    a3->i32[3] = v15;
  }

  return result;
}

id sbp_gvs_transformImageRender(uint64_t a1, opaqueCMSampleBuffer *a2, __CVBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a7;
  v14 = COERCE_DOUBLE(vrev64_s32(*(a5 + 60)));
  v15 = *(a1 + 172);
  if ((v15 - 1) >= 3)
  {
    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = AffineTransformArrayApply(*(a1 + 88), a2, a3, a6, a4, v13, COERCE_DOUBLE(vrev64_s32(*(a5 + 52))), v14);
    }
  }

  else
  {
    v16 = *(a1 + 112);
    ImageBuffer = CMSampleBufferGetImageBuffer(a2);
    v18 = [v16 enqueuePixelBufferForRendering:ImageBuffer inputValidBufferRect:a4 metadata:CMGetAttachment(a2 ltmLUT:kFigCaptureSampleBufferAttachmentKey_MetadataDictionary outputPixelBuffer:0) transformCounts:v13 transforms3x3:a3 transformStrides:{a6, COERCE_DOUBLE(vrev64_s32(*(a5 + 52))), v14}];
  }

  return v18;
}

float invert3x3Matrix(uint64_t a1, float32x4_t *a2)
{
  v4 = 0;
  v5 = 1.0;
  v6 = 0;
  do
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = &v30;
    v11 = a1;
    do
    {
      for (i = 0; i != 3; ++i)
      {
        v10[i] = 0.0;
        if (v7 && v4 != i)
        {
          *(&v30 + 3 * v9 + v8) = *(v11 + 4 * i);
          if (v8 > 0)
          {
            ++v9;
          }

          v8 = v8 < 1;
        }
      }

      ++v7;
      v11 += 12;
      v10 += 3;
    }

    while (v7 != 3);
    *v6.i32 = *v6.i32 + (v5 * (*(a1 + 4 * v4) * ((v30 * v33) - (v31 * v32))));
    v5 = -v5;
    ++v4;
  }

  while (v4 != 3);
  if (*v6.i32 == 0.0)
  {

    puts("\nMATRIX IS NOT INVERSIBLE");
  }

  else
  {
    v27 = v6;
    for (j = 0; j != 3; ++j)
    {
      for (k = 0; k != 3; ++k)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v19 = &v30;
        v20 = a1;
        do
        {
          for (m = 0; m != 3; ++m)
          {
            v19[m] = 0.0;
            if (v16 != j && k != m)
            {
              *(&v30 + 3 * v18 + v17) = *(v20 + 4 * m);
              if (v17 > 0)
              {
                ++v18;
              }

              v17 = v17 < 1;
            }
          }

          ++v16;
          v20 += 12;
          v19 += 3;
        }

        while (v16 != 3);
        v22 = powf(-1.0, (k + j));
        v23 = v22 * ((v30 * v33) - (v31 * v32));
        if (v23 == 0.0)
        {
          v23 = 0.0;
        }

        *&v28[3 * j + k] = v23;
      }
    }

    v24.i32[0] = v28[0];
    v25.i64[0] = __PAIR64__(v28[7], v28[4]);
    v24.i32[1] = *(v28 | 0xC);
    v24.i64[1] = __PAIR64__(v28[1], v28[6]);
    v26 = vdupq_lane_s32(v27, 0);
    v25.i64[1] = __PAIR64__(v28[5], v28[2]);
    *a2 = vdivq_f32(v24, v26);
    a2[1] = vdivq_f32(v25, v26);
    result = v29 / *v27.i32;
    a2[2].f32[0] = v29 / *v27.i32;
  }

  return result;
}

__n128 _computeProjectedPoints(float *a1, uint64_t a2, uint64_t a3, __n128 result)
{
  v7 = 0;
  v11 = 0;
  v8 = 1;
  do
  {
    v9 = v8;
    GVSComputePerspectiveProjectedPoint(a1, &v11 + 1, &v11, *(a2 + 8 * v7), *(a2 + 8 * v7 + 4));
    v8 = 0;
    v10 = vcvtq_f64_f32(__PAIR64__(v11, HIDWORD(v11)));
    *(a3 + 16 * v7) = v10;
    v7 = 1;
  }

  while ((v9 & 1) != 0);
  return v10;
}

uint64_t sbp_gvs_iir_ComputeCorrection(uint64_t a1, uint64_t *a2, float a3, double *a4, uint64_t a5, float32x2_t *a6, BOOL *a7)
{
  FigMotionInterpolateQuaternionsByAngle(a2, a4, a3);
  v25[0] = v12;
  v25[1] = v13;
  v25[2] = v14;
  v25[3] = v15;
  v24[0] = FigMotionMultiplyByInverseOfQuaternion(v25, a2);
  v24[1] = v16;
  v24[2] = v17;
  v24[3] = v18;
  v19 = GVSComputeTransformFromCameraMotion(v24, (a1 + 336), a5, a6, 0, v26);
  if (v19)
  {
    v21 = v19;
    sbp_gvs_iir_ComputeCorrection_cold_1();
LABEL_7:
    v22 = 1;
    goto LABEL_4;
  }

  *(a1 + 196) = 1065353216;
  v20 = limitTransformToOverscan(a1 + 128, (a5 + 104), v26, *(a5 + 20));
  v21 = v20;
  if (v20)
  {
    sbp_gvs_iir_ComputeCorrection_cold_2(v20);
    goto LABEL_7;
  }

  v22 = *(a1 + 196) >= 1.0;
LABEL_4:
  *a7 = v22;
  return v21;
}

id _createNSArray(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  for (i = 0; i != 28; i += 4)
  {
    LODWORD(v3) = *(a1 + i);
    v5 = [NSNumber numberWithFloat:v3];
    [v2 addObject:v5];
  }

  return v2;
}

id OUTLINED_FUNCTION_22()
{

  return [v0 setObject:v1 forKeyedSubscript:?];
}

uint64_t OUTLINED_FUNCTION_24(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return kdebug_trace();
}

Float64 OUTLINED_FUNCTION_32(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  a9 = a11;
  a10 = a12;

  return CMTimeGetSeconds(&a9);
}

void OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  _getPresentationTimeStampForSampleBuffer(a1, 0, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t OUTLINED_FUNCTION_42()
{

  return fig_log_get_emitter();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return fig_log_get_emitter();
}

uint64_t GVSComputeTransforms(uint64_t a1, int32x4_t *a2, uint64_t __n, uint64_t a4, uint64_t a5, _OWORD *__src, float a7, float a8, float a9, double a10, int8x16_t a11)
{
  v11 = __src;
  v42 = __PAIR64__(LODWORD(a10), LODWORD(a9));
  v16 = *(a1 + 40);
  if (*(a1 + 74))
  {
    v17 = xmmword_43600;
    *__src = xmmword_43600;
    __src[1] = xmmword_43600;
    *(__src + 8) = 1065353216;
    v17.i32[0] = *(__n + 20);
    FigMotionApplyDigitalZoomToTransform(1, __src, v17, *a2, *&a2->i64[1], a10, a11);
  }

  if (*(a1 + 60) < 1)
  {
    GVSApplyTransformLimit(a1, (__n + 104), v16 < 3, v11, *(__n + 20));
  }

  else
  {
    v18 = *(a1 + 52);
    if (v18 > 0)
    {
      v37 = a2;
      v19 = 0;
      v20 = *(a1 + 12);
      v21 = v20 + *(a1 + 20) - 1;
      v22 = v11;
      v23 = v20;
      do
      {
        if (*(a1 + 74))
        {
          if (v19)
          {
            v24 = *v11;
            v25 = v11[1];
            *(v22 + 32) = *(v11 + 8);
            *v22 = v24;
            *(v22 + 16) = v25;
          }
        }

        else
        {
          if (v23 >= v21)
          {
            v23 = v21;
          }

          v41 = __PAIR64__(LODWORD(a8), LODWORD(a7));
          if (a5)
          {
            v41 = vadd_f32(__PAIR64__(LODWORD(a8), LODWORD(a7)), *(a5 + 8 * v19));
          }

          v26 = ((*(a1 + 48) - 1) * (v23 - v20)) / (*(a1 + 20) + -1.0);
          v27 = a4 + 32 * vcvtms_s32_f32(v26);
          FigMotionInterpolateQuaternionsByAngle(v27, (v27 + 32), v26 - floorf(v26));
          v43[0] = v28;
          v43[1] = v29;
          v43[2] = v30;
          v43[3] = v31;
          GVSComputeTransformFromCameraMotion(v43, v37, __n, &v41, &v42, v22);
        }

        GVSApplyTransformLimit(a1, (__n + 104), v16 < 3, v22, *(__n + 20));
        ++v19;
        v23 += *(a1 + 60);
        v18 = *(a1 + 52);
        v22 += 36;
      }

      while (v19 < v18);
    }

    if (*(a1 + 56) >= 2)
    {
      v32 = 36 * v18;
      v33 = 1;
      do
      {
        memcpy(v11 + 36 * *(a1 + 52) * v33++, v11, v32);
      }

      while (v33 < *(a1 + 56));
    }
  }

  if (*(a1 + 75) && *(a1 + 56) * *(a1 + 52) >= 1)
  {
    v34 = 0;
    v35 = (*(a1 + 16) + 2 * *(a1 + 8));
    do
    {
      FigMotionPostMultiplyScalingTranslationToTransform(v11, -1.0, v35, 1.0, 0.0);
      ++v34;
      v11 = (v11 + 36);
    }

    while (v34 < *(a1 + 56) * *(a1 + 52));
  }

  return 0;
}

float GVSApplyTransformLimit(uint64_t a1, double *a2, int a3, uint64_t a4, float result)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 28);
  v8 = *(a1 + 32);
  v7 = *(a1 + 36);
  if (a3)
  {
    *(a4 + 24) = 0;
    *(a4 + 32) = 1065353216;
  }

  if (*(a1 + 40) == 4)
  {
    *a4 = 1065353216;
    *(a4 + 12) = 0x3F80000000000000;
    *(a4 + 24) = 0;
    *(a4 + 32) = 1065353216;
  }

  if (*(a1 + 72) && *(a1 + 68) < 1.0)
  {
    v9 = *a2 + (a2[2] + -1.0) * 0.5;
    if (result <= 0.0)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 1.0 / result;
    }

    v13 = a2[1] + (a2[3] + -1.0) * 0.5;
    v14 = v5 + (v7 + -1.0) * 0.5;
    if (a3)
    {
      *(a4 + 24) = 0;
      *(a4 + 32) = 1065353216;
    }

    v15 = 0;
    v11 = v9;
    v12 = v6 + (v8 + -1.0) * 0.5;
    v16 = v11 - (v10 * v12);
    do
    {
      *(a4 + v15) = *(a1 + 68) * *(a4 + v15);
      v15 += 4;
    }

    while (v15 != 36);
    *a4 = *a4 + ((1.0 - *(a1 + 68)) * v10);
    *(a4 + 8) = *(a4 + 8) + ((1.0 - *(a1 + 68)) * v16);
    v17 = *(a4 + 20);
    *(a4 + 16) = *(a4 + 16) + ((1.0 - *(a1 + 68)) * v10);
    *(a4 + 20) = v17 + ((1.0 - *(a1 + 68)) * (v13 - (v10 * v14)));
    result = *(a4 + 32) + (1.0 - *(a1 + 68));
    *(a4 + 32) = result;
  }

  return result;
}

uint64_t GVSComputeTransformFromCameraMotion(double *a1, float64x2_t *a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, float *a6)
{
  v8 = 0uLL;
  v9 = 0uLL;
  if (a4)
  {
    v9 = vcvtq_f64_f32(*a4);
  }

  v10 = *(a3 + 4);
  v11 = *a2;
  if (a5)
  {
    v8 = vcvtq_f64_f32(*a5);
  }

  v20 = v10;
  v21 = vaddq_f64(v11, v9);
  v18 = v10;
  v19 = vsubq_f64(v11, v8);
  v16 = v11;
  GVSInverseRotationMatrixFromQuaternion(a1, v17);
  *v12.i64 = FigMotionComputeTransformFromRotation(&v20, &v18, v17, a6);
  v12.i32[0] = *(a3 + 20);
  FigMotionApplyDigitalZoomToTransform(1, a6, v12, v16, v16.n128_f64[1], v13, v14);
  return 0;
}

float GVSInverseRotationMatrixFromQuaternion(double *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 + v2;
  v5 = a1[2];
  v6 = a1[3];
  v7 = v5 + v5;
  v8 = v6 + v6;
  *&v2 = v2;
  *&v5 = v5;
  *&v6 = v6;
  *&v6 = *&v6 * v8;
  v9 = 1.0 - (*&v2 * v4);
  v10 = (1.0 - (*&v5 * v7)) - *&v6;
  *(a2 + 32) = v9 - (*&v5 * v7);
  *&v5 = *&v5 * v8;
  *&v3 = v3;
  v11 = v4 * *&v3;
  *(a2 + 16) = v9 - *&v6;
  *(a2 + 20) = *&v5 - v11;
  *&v6 = (*&v2 * v7) + (v8 * *&v3);
  *a2 = v10;
  *(a2 + 4) = (*&v2 * v7) - (v8 * *&v3);
  *&v2 = *&v2 * v8;
  *&v3 = v7 * *&v3;
  *(a2 + 8) = *&v2 + *&v3;
  *(a2 + 12) = LODWORD(v6);
  result = *&v2 - *&v3;
  *(a2 + 24) = result;
  *(a2 + 28) = *&v5 + v11;
  return result;
}

uint64_t GVSComputeTranslationFromCameraMotion(double *a1, float32x2_t *a2, float a3)
{
  GVSInverseRotationMatrixFromQuaternion(a1, v6);
  if (fabsf(v9) <= 0.00000001)
  {
    GVSComputeTranslationFromCameraMotion_cold_1();
    return 4294967291;
  }

  else
  {
    result = 0;
    *a2 = vmul_n_f32(__PAIR64__(v8, v7), a3 / v9);
  }

  return result;
}

float GVSComputePerspectiveProjectedPoint(float *a1, float *a2, float *a3, float a4, float a5)
{
  v5 = (a1[8] + (a1[7] * a5)) + (a1[6] * a4);
  if (fabsf(v5) > 0.00000001)
  {
    v5 = 1.0 / v5;
  }

  *a2 = ((a1[2] + (a1[1] * a5)) + (*a1 * a4)) * v5;
  result = v5 * ((a1[5] + (a1[4] * a5)) + (a1[3] * a4));
  *a3 = result;
  return result;
}

float32_t GVSComputeMinimumZoomFactor(float64x2_t *a1, int32x2_t *a2)
{
  __asm { FMOV            V1.2S, #-1.0 }

  v7 = vdiv_f32(vadd_f32(vcvt_f32_s32(a2[1]), _D1), vadd_f32(vadd_f32(vcvt_f32_f64(*a1), _D1), vdup_n_s32(0xBF804189)));
  if (v7.f32[0] <= v7.f32[1])
  {
    v7.f32[0] = v7.f32[1];
  }

  return v7.f32[0];
}

uint64_t GVSFindBestPerspectiveTransform(float *a1, double *a2, int *a3, float *a4, float a5)
{
  v6 = 0;
  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = a3[3];
  if (a5 <= 0.0)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 1.0 / a5;
  }

  v12 = *a2;
  v13 = a2[2];
  v14 = a2[1];
  v15 = a2[3];
  v16 = v7 + (v9 + -1.0) * 0.5;
  v17 = (v12 + ((v13 + -1.0) * 0.5)) - (v11 * v16);
  v18 = v8 + (v10 + -1.0) * 0.5;
  v19 = (v14 + ((v15 + -1.0) * 0.5)) - (v11 * v18);
  v66 = v7;
  v67 = v8;
  v68 = (v7 + v9 - 1);
  v69 = v8;
  v70 = v7;
  v71 = (v8 + v10 - 1);
  v72 = v68;
  v73 = v71;
  v20 = (v14 + v15) + -1.0;
  v21 = a1[6];
  v22 = a1[7];
  v23 = a1[8];
  v24 = a1[1];
  v25 = a1[2];
  v26 = a1[3];
  v27 = a1[4];
  v28 = a1[5];
  v29 = v12 + 0.5;
  v30 = v14 + 0.5;
  v65 = (v12 + v13) + -1.0;
  v31 = v65 + -0.5;
  v32 = *a1 - v11;
  v33 = v23 + -1.0;
  v34 = v20 + -0.5;
  v35 = v27 - v11;
  v36 = 3.4028e38;
  do
  {
    v38 = *(&v66 + v6);
    v37 = *(&v66 + v6 + 4);
    v39 = (v23 + (v22 * v37)) + (v21 * v38);
    if (fabsf(v39) <= 0.00000001)
    {
      v40 = (v23 + (v22 * v37)) + (v21 * v38);
    }

    else
    {
      v40 = 1.0 / v39;
    }

    v41 = ((v25 + (v24 * v37)) + (*a1 * v38)) * v40;
    if (v41 < v29)
    {
      v42 = ((v25 + ((v37 * v24) + (v32 * v38))) - v17) - ((((v37 * v22) + (v21 * v38)) + v33) * v29);
      v43 = -1.0;
      if (fabsf(v42) < 0.00000001)
      {
        goto LABEL_15;
      }

      v44 = v29 - (v38 * v11);
      goto LABEL_14;
    }

    v43 = 1.0;
    if (v41 > v31)
    {
      v42 = ((v25 + ((v37 * v24) + (v32 * v38))) - v17) - ((((v37 * v22) + (v21 * v38)) + v33) * v31);
      v43 = -1.0;
      if (fabsf(v42) >= 0.00000001)
      {
        v44 = v31 - (v38 * v11);
LABEL_14:
        v43 = (v44 - v17) / v42;
      }
    }

LABEL_15:
    v45 = v40 * ((v28 + (v27 * v37)) + (v26 * v38));
    if (v45 >= v30)
    {
      v47 = 1.0;
      if (v45 <= v34)
      {
        goto LABEL_22;
      }

      v46 = ((v28 + ((v37 * v35) + (v26 * v38))) - v19) - ((((v37 * v22) + (v21 * v38)) + v33) * v34);
      v47 = -2.0;
      if (fabsf(v46) < 0.00000001)
      {
        goto LABEL_22;
      }

      v48 = v34 - (v37 * v11);
    }

    else
    {
      v46 = ((v28 + ((v37 * v35) + (v26 * v38))) - v19) - ((((v37 * v22) + (v21 * v38)) + v33) * v30);
      v47 = -2.0;
      if (fabsf(v46) < 0.00000001)
      {
        goto LABEL_22;
      }

      v48 = v30 - (v37 * v11);
    }

    v47 = (v48 - v19) / v46;
LABEL_22:
    if (v43 >= v47)
    {
      v49 = v47;
    }

    else
    {
      v49 = v43;
    }

    if (v36 >= v49)
    {
      v36 = v49;
    }

    v6 += 8;
  }

  while (v6 != 32);
  if (v36 >= 0.0 && v36 <= 1.0)
  {
    if (a4)
    {
      *a4 = v36;
    }

    if (v36 < 1.0)
    {
      for (i = 0; i != 9; ++i)
      {
        a1[i] = v36 * a1[i];
      }

      v53 = 0;
      *a1 = *a1 + ((1.0 - v36) * v11);
      a1[2] = a1[2] + ((1.0 - v36) * v17);
      v54 = a1[5] + ((1.0 - v36) * v19);
      a1[4] = a1[4] + ((1.0 - v36) * v11);
      a1[5] = v54;
      a1[8] = (1.0 - v36) + a1[8];
      v55 = &v67;
      do
      {
        v56 = *(v55 - 1);
        v57 = *v55;
        v58 = (a1[8] + (a1[7] * *v55)) + (a1[6] * v56);
        if (fabsf(v58) <= 0.00000001)
        {
          v59 = (a1[8] + (a1[7] * *v55)) + (a1[6] * v56);
        }

        else
        {
          v59 = 1.0 / v58;
        }

        v60 = ((a1[2] + (a1[1] * v57)) + (*a1 * v56)) * v59;
        v61 = v59 * ((a1[5] + (a1[4] * v57)) + (a1[3] * v56));
        if (v60 < v12 || v60 > v65 || v61 < v14 || v61 > v20)
        {
          fprintf(__stderrp, "Warning! Corner[%d] =(%f ; %f) is still outside of boundary: output position =(%f ; %f)\n", v53, v56, v57, v60, v61);
        }

        ++v53;
        v55 += 2;
      }

      while (v53 != 4);
    }

    return 0;
  }

  else
  {
    fprintf(__stderrp, "Error in LimitPerspectiveTransform, minLimitFactor %f\n", v36);
    return 0xFFFFFFFFLL;
  }
}

float32x2_t GVSRotateVectorByQuaternion(float *a1, uint64_t a2)
{
  v2.f64[0] = *(a2 + 24);
  v2.f64[1] = *a2;
  v3 = *(a2 + 8);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = vnegq_f64(v3);
  v8 = vmulq_f64(v2, xmmword_43790);
  v9 = vextq_s8(v8, vnegq_f64(v8), 8uLL);
  v10 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v8, v5), v9, v4), vextq_s8(v3, v7, 8uLL), v6);
  v11 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v3, v5), vextq_s8(v7, v3, 8uLL), v4), v9, v6);
  return vcvt_f32_f64(vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v10, *a2), vextq_s8(vnegq_f64(v10), v10, 8uLL), *(a2 + 24)), vmlaq_n_f64(vmulq_n_f64(v11, v3.f64[1]), vextq_s8(v11, vnegq_f64(v11), 8uLL), v3.f64[0])));
}

double GVSInterpolateQuaternionsLERP(uint64_t a1, uint64_t a2, int a3, char *a4, float a5)
{
  v27 = 1.0 - a5;
  v28 = a5;
  v10 = FigMotionQuaternionDotProduct(a1, a2);
  v11 = *a1;
  v12 = *a2;
  if (v10 >= 0.0)
  {
    v13 = v12 * v28 + v11 * v27;
    v14 = vmlaq_n_f64(vmulq_n_f64(*(a2 + 8), v28), *(a1 + 8), v27);
    v15 = *(a1 + 24);
    v16 = *(a2 + 24) * v28;
  }

  else
  {
    v13 = v11 * v27 - v12 * v28;
    v14 = vmlaq_n_f64(vmulq_n_f64(vnegq_f64(*(a2 + 8)), v28), *(a1 + 8), v27);
    v15 = *(a1 + 24);
    v16 = -(*(a2 + 24) * v28);
  }

  *v31 = v13;
  *&v31[8] = v14;
  *&v31[24] = v16 + v15 * v27;
  v17 = FigMotionQuaternionDotProduct(v31, v31);
  if (!a3 && v17 >= 0.5)
  {
    v18 = 0;
    if (!a4)
    {
      return *v31;
    }

    goto LABEL_12;
  }

  if (v17 >= 0.04)
  {
    v25 = 1.0 / sqrt(v17);
    *v31 = vmulq_n_f64(*v31, v25);
    *&v31[16] = vmulq_n_f64(*&v31[16], v25);
  }

  else
  {
    v19 = *(a1 + 16);
    v30[0] = *a1;
    v30[1] = v19;
    v20 = *(a2 + 16);
    v29[0] = *a2;
    v29[1] = v20;
    FigMotionNormalizeQuaternion(v30);
    FigMotionNormalizeQuaternion(v29);
    FigMotionInterpolateQuaternionsByAngle(v30, v29[0].f64, a5);
    *v31 = v21;
    *&v31[8] = v22;
    *&v31[16] = v23;
    *&v31[24] = v24;
  }

  v18 = 1;
  if (a4)
  {
LABEL_12:
    *a4 = v18;
  }

  return *v31;
}

double GVSInterpolateQuatfNLERP(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  v5 = vmlaq_n_f32(a1, vsubq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v4, v3), 0), vnegq_f32(a2), a2), a1), a3);
  v6 = vmulq_f32(v5, v5);
  v7 = vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  if (vaddv_f32(v7) == 0.0)
  {
    return *&_PromotedConst_0;
  }

  v9 = vadd_f32(v7, vdup_lane_s32(v7, 1)).u32[0];
  v10 = vrsqrte_f32(v9);
  v11 = vmul_f32(v10, vrsqrts_f32(v9, vmul_f32(v10, v10)));
  *&result = vmulq_n_f32(v5, vmul_f32(v11, vrsqrts_f32(v9, vmul_f32(v11, v11))).f32[0]).u64[0];
  return result;
}

double GVSQuatfFromDeltaRotation(float32x4_t a1, double a2)
{
  v3 = vmulq_f32(a1, a1);
  *&a2 = sqrtf(v3.f32[2] + vaddv_f32(*v3.f32));
  if (*&a2 <= 0.0001)
  {
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    *&result = vmulq_f32(a1, v5).u64[0];
  }

  else
  {
    *&result = vdivq_f32(vmulq_n_f32(a1, __sincosf_stret(*&a2 * 0.5).__sinval), vdupq_lane_s32(*&a2, 0)).u64[0];
  }

  return result;
}

double GVSInterpolateQuatfLERP(BOOL *a1, float32x4_t a2, float32x4_t a3, float a4)
{
  v6 = vmulq_f32(a2, a3);
  v7 = vextq_s8(v6, v6, 8uLL);
  *v6.f32 = vadd_f32(*v6.f32, *v7.f32);
  v6.f32[0] = vaddv_f32(*v6.f32);
  v7.i64[0] = 0;
  v8 = vmlaq_n_f32(a2, vsubq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v7, v6), 0), vnegq_f32(a3), a3), a2), a4);
  v9 = vmulq_f32(v8, v8);
  v10 = vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v11 = vaddv_f32(v10);
  if (v11 < 0.5)
  {
    if (v11 < 0.04)
    {
      v12 = vmulq_f32(a2, a2);
      v13 = vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL));
      v14 = xmmword_433D0;
      v15 = xmmword_433D0;
      if (vaddv_f32(v13) != 0.0)
      {
        v16 = vadd_f32(v13, vdup_lane_s32(v13, 1)).u32[0];
        v17 = vrsqrte_f32(v16);
        v18 = vmul_f32(v17, vrsqrts_f32(v16, vmul_f32(v17, v17)));
        v15 = vmulq_n_f32(a2, vmul_f32(v18, vrsqrts_f32(v16, vmul_f32(v18, v18))).f32[0]);
      }

      v19 = vmulq_f32(a3, a3);
      v20 = vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL));
      if (vaddv_f32(v20) != 0.0)
      {
        v21 = vadd_f32(v20, vdup_lane_s32(v20, 1)).u32[0];
        v22 = vrsqrte_f32(v21);
        v23 = vmul_f32(v22, vrsqrts_f32(v21, vmul_f32(v22, v22)));
        v14 = vmulq_n_f32(a3, vmul_f32(v23, vrsqrts_f32(v21, vmul_f32(v23, v23))).f32[0]);
      }

      v24 = vmulq_f32(v15, v14);
      v25 = vextq_s8(v24, v24, 8uLL);
      *v24.f32 = vadd_f32(*v24.f32, *v25.f32);
      v24.f32[0] = vaddv_f32(*v24.f32);
      v25.i64[0] = 0;
      v26 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v24, v25)), 0), vnegq_f32(v14), v14);
      v27 = 1.0;
      v59 = v15;
      v60 = a4;
      v28 = 1.0 - a4;
      v29 = vsubq_f32(v15, v26);
      v30 = vmulq_f32(v29, v29);
      v58 = v26;
      v31 = vaddq_f32(v15, v26);
      v32 = vmulq_f32(v31, v31);
      v33 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL)))));
      v34 = v33 + v33;
      v35 = (v33 + v33) == 0.0;
      v36 = 1.0;
      if (!v35)
      {
        v36 = sinf(v34) / v34;
      }

      v37 = v36;
      v38 = vrecpe_f32(LODWORD(v36));
      v39 = vmul_f32(v38, vrecps_f32(LODWORD(v37), v38));
      LODWORD(v40) = vmul_f32(v39, vrecps_f32(LODWORD(v37), v39)).u32[0];
      if ((v28 * v34) != 0.0)
      {
        v56 = v40;
        v39.f32[0] = sinf(v28 * v34);
        v40 = v56;
        v27 = v39.f32[0] / (v28 * v34);
      }

      v39.f32[0] = v28 * (v40 * v27);
      v41 = vdupq_lane_s32(v39, 0);
      v42 = v60;
      v43 = v34 * v60;
      v44 = 1.0;
      if (v43 != 0.0)
      {
        v55 = v41;
        v57 = v40;
        v45 = sinf(v43);
        v41 = v55;
        v40 = v57;
        v42 = v60;
        v44 = v45 / v43;
      }

      v46 = vmlaq_f32(vmulq_n_f32(v58, (v40 * v44) * v42), v59, v41);
      v47 = vmulq_f32(v46, v46);
      v48 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
      if (vaddv_f32(v48) == 0.0)
      {
        v8.i64[0] = 0;
        if (!a1)
        {
          return *v8.i64;
        }
      }

      else
      {
        v52 = vadd_f32(v48, vdup_lane_s32(v48, 1)).u32[0];
        v53 = vrsqrte_f32(v52);
        v54 = vmul_f32(v53, vrsqrts_f32(v52, vmul_f32(v53, v53)));
        v8.i64[0] = vmulq_n_f32(v46, vmul_f32(v54, vrsqrts_f32(v52, vmul_f32(v54, v54))).f32[0]).u64[0];
        if (!a1)
        {
          return *v8.i64;
        }
      }

      goto LABEL_18;
    }

    v49 = vadd_f32(v10, vdup_lane_s32(v10, 1)).u32[0];
    v50 = vrsqrte_f32(v49);
    v8.i64[0] = vmulq_n_f32(v8, vmul_f32(v50, vrsqrts_f32(v49, vmul_f32(v50, v50))).f32[0]).u64[0];
  }

  if (a1)
  {
LABEL_18:
    *a1 = v11 < 0.5;
  }

  return *v8.i64;
}

double GVSGetDefaultExtrinsicToIMU(int a1)
{
  result = 0.707106781;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

uint64_t GVSQuaternionFromRotationMatrix(uint64_t a1, double *a2, int64x2_t a3, __n128 a4, double a5, double a6, int64x2_t a7, double a8, float64x2_t a9)
{
  if (!a1 || !a2)
  {
    GVSQuaternionFromRotationMatrix_cold_2(v50);
    return LODWORD(v50[0]);
  }

  v9 = 0;
  v10 = *a1;
  a3.i64[0] = *(a1 + 16);
  v11 = *(a1 + 24);
  a7.i64[0] = *(a1 + 40);
  a4.n128_u64[0] = *(a1 + 48);
  v12 = *(a1 + 56);
  a9.f64[0] = *(a1 + 64);
  v13 = vzip2q_s64(*a1, v11);
  *&v14.f64[0] = a4.n128_u64[0];
  *&v14.f64[1] = v12;
  v50[0] = vzip1q_s64(*a1, v11);
  v50[1] = a4;
  v50[2] = v13;
  v50[3] = vdupq_lane_s64(v12, 0);
  v50[4] = vzip1q_s64(a3, a7);
  v50[5] = a9;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  do
  {
    v16 = v50[v9];
    v15 = v50[v9 + 1];
    v17 = (&v51 + v9 * 16);
    *v17 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, v16.f64[0]), v11, v16, 1), v14, *&v15);
    v17[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a3, v16.f64[0]), a7, v16, 1), a9, *&v15);
    v9 += 2;
  }

  while (v9 != 6);
  v18 = *&matrix_identity_double3x3.columns[0].f64[2];
  v19 = vabdq_f64(v52, v18);
  v18.f64[0] = 0.000001;
  v20 = vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL);
  v21 = vandq_s8(vandq_s8(vcgeq_f64(v20, vabdq_f64(v53, *matrix_identity_double3x3.columns[1].f64)), vcgeq_f64(v20, vabdq_f64(v51, *matrix_identity_double3x3.columns[0].f64))), vcgeq_f64(v20, vabdq_f64(v55, *matrix_identity_double3x3.columns[2].f64)));
  if ((v21.i64[0] & v21.i64[1] & vandq_s8(vandq_s8(vcgeq_f64(v18, vabdq_f64(v54, *&matrix_identity_double3x3.columns[1].f64[2])), vcgeq_f64(v18, v19)), vcgeq_f64(v18, vabdq_f64(v56, *&matrix_identity_double3x3.columns[2].f64[2]))).u64[0] & 0x8000000000000000) == 0)
  {
    GVSQuaternionFromRotationMatrix_cold_1(v50);
    return LODWORD(v50[0]);
  }

  v22 = v10.f64[0] + v11.f64[1] + a9.f64[0];
  if (v22 >= 0.0)
  {
    v30 = sqrt(v22 + 1.0);
    v31 = v30 + v30;
    v32 = 1.0 / (v30 + v30);
    v26 = (*a7.i64 - *&v12) * v32;
    v27 = (a4.n128_f64[0] - *a3.i64) * v32;
    v28 = v32 * vsubq_f64(vdupq_laneq_s64(v10, 1), v11).f64[0];
    v29 = v31 * 0.25;
  }

  else if (v10.f64[0] < v11.f64[1] || v10.f64[0] < a9.f64[0])
  {
    v33 = 1.0 - v10.f64[0];
    v34 = v11.f64[1] < a9.f64[0];
    v35 = sqrt(1.0 - v10.f64[0] - v11.f64[1] + a9.f64[0]);
    v36 = v35 + v35;
    v37 = 1.0 / v36;
    v38 = (*a3.i64 + a4.n128_f64[0]) * (1.0 / v36);
    v39 = *a7.i64 + *&v12;
    v40 = v39 * (1.0 / v36);
    v41 = vdupq_laneq_s64(v10, 1);
    v42 = v36 * 0.25;
    v43 = v37 * vsubq_f64(v41, v11).f64[0];
    v44 = sqrt(v11.f64[1] + v33 - a9.f64[0]);
    v45 = v44 + v44;
    v46 = 1.0 / v45 * vaddq_f64(v41, v11).f64[0];
    v47 = v45 * 0.25;
    v48 = v39 * (1.0 / v45);
    v29 = (a4.n128_f64[0] - *a3.i64) * (1.0 / v45);
    if (v34)
    {
      v26 = v38;
    }

    else
    {
      v26 = v46;
    }

    if (v34)
    {
      v27 = v40;
    }

    else
    {
      v27 = v47;
    }

    if (v34)
    {
      v28 = v42;
    }

    else
    {
      v28 = v48;
    }

    if (v34)
    {
      v29 = v43;
    }
  }

  else
  {
    v23 = sqrt(v10.f64[0] + 1.0 - v11.f64[1] - a9.f64[0]);
    v24 = v23 + v23;
    v25 = 1.0 / v24;
    v26 = v24 * 0.25;
    v27 = v25 * vaddq_f64(vdupq_laneq_s64(v10, 1), v11).f64[0];
    v28 = (*a3.i64 + a4.n128_f64[0]) * v25;
    v29 = (*a7.i64 - *&v12) * v25;
  }

  result = 0;
  a2[2] = v27;
  a2[3] = v28;
  *a2 = v29;
  a2[1] = v26;
  return result;
}

void GVSComputeRollPitchFromGravity(float *a1)
{
  if (a1)
  {
    v1 = *a1;
    v2 = a1[1];
    v3 = a1[2];
    v4 = sqrtf(((v2 * v2) + (v1 * v1)) + (v3 * v3));
    if (v4 > 0.99 && asinf(fabsf(v3 / v4)) < 1.5533)
    {
      atan2f(v1, v2);
    }
  }
}

uint64_t GVSExtractMetadataFromTopToBottomRows(const __CFDictionary *a1, int *a2, void *a3, uint64_t a4, uint64_t a5, int32x2_t *a6, uint64_t a7, double *a8, uint64_t a9, float32x2_t *a10, float32x2_t *a11, float *a12, int a13)
{
  v20 = a3;
  v201 = v20;
  if (!a6)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_22(&buffer);
    goto LABEL_217;
  }

  v215 = a2;
  if (!a2)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_21(&buffer);
    goto LABEL_217;
  }

  if (!a1)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_20(&buffer);
    goto LABEL_217;
  }

  if (!a7)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_19(&buffer);
    goto LABEL_217;
  }

  v206 = a2 + 2048;
  v21 = v20;
  valuePtr = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 88) = 0;
  *(a7 + 96) = 0;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  buffer.origin = CGRectZero.origin;
  buffer.size = size;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    v22 = llround(buffer.origin.y);
    *(a7 + 88) = llround(buffer.origin.x);
    *(a7 + 92) = v22;
    v23 = llround(buffer.size.height);
    *(a7 + 96) = llround(buffer.size.width);
    *(a7 + 100) = v23;
  }

  *(a7 + 104) = origin;
  *(a7 + 120) = size;
  FigCFDictionaryGetCGRectIfPresent();
  *(a7 + 20) = 1065353216;
  FigCFDictionaryGetFloatIfPresent();
  v200 = (a7 + 20);
  *(a7 + 12) = CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_SphereMode);
  Value = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_CurrentFocusPosition);
  theDict = a1;
  v211 = a7;
  v221 = a4;
  v204 = a5;
  v207 = v21;
  if (!Value)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_8(&buffer);
LABEL_212:
    x_low = LODWORD(buffer.origin.x);
LABEL_213:

    if (!x_low)
    {
      goto LABEL_72;
    }

LABEL_209:
    GVSExtractMetadataFromTopToBottomRows_cold_10(x_low);
    goto LABEL_194;
  }

  CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  *a7 = valuePtr;
  FigCFDictionaryGetFloatIfPresent();
  v25 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_ExposureTime);
  if (!v25)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_7(&buffer);
    goto LABEL_212;
  }

  CFNumberGetValue(v25, kCFNumberFloat64Type, &v229);
  *(a7 + 48) = v229;
  v26 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_FrameRollingShutterSkew);
  if (!v26)
  {
    v26 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_RollingShutterSkew);
    if (!v26)
    {
      GVSExtractMetadataFromTopToBottomRows_cold_6(&buffer);
      goto LABEL_212;
    }
  }

  CFNumberGetValue(v26, kCFNumberSInt32Type, &v228);
  *(a7 + 56) = v228 / 1000000.0;
  v27 = CFDictionaryGetValue(a1, kFigMotionAttachmentsSampleBufferProcessorMetadata_FramePTSSeconds);
  if (!v27)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_5(&buffer);
LABEL_206:
    x_low = LODWORD(buffer.origin.x);
    goto LABEL_213;
  }

  CFNumberGetValue(v27, kCFNumberDoubleType, &v227);
  *(a7 + 32) = v227;
  v28 = &kFigMotionAttachmentsSampleBufferProcessorMetadata_MotionData;
  if (*(a2 + 10260))
  {
    v28 = &kFigMotionAttachmentsSampleBufferProcessorMetadata_MotionAttachmentsISPMotionData;
  }

  v29 = CFDictionaryGetValue(a1, *v28);
  if (!v29)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_4(&buffer);
    goto LABEL_206;
  }

  v30 = v29;
  v31 = CFDictionaryGetValue(v29, kFigMotionAttachmentsSampleBufferProcessorMetadata_FusedMotion);
  v203 = a6;
  if (v31)
  {
    v32 = v31;
    v33 = CFDictionaryContainsKey(v30, kFigMotionAttachmentsSampleBufferProcessorMetadata_GroupDelayCompensationApplied);
    v34 = v21;
    Count = CFArrayGetCount(v32);
    if (v33)
    {
      v36 = *(a2 + 1281);
    }

    else
    {
      v36 = *(a2 + 1281) + -0.005;
    }

    if (Count >= 1)
    {
      v37 = 0;
      v38 = a2 + 2;
      v217 = a2 + 514;
      v39 = Count & 0x7FFFFFFF;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v32, v37);
        if (!ValueAtIndex)
        {
          goto LABEL_31;
        }

        v41 = ValueAtIndex;
        v42 = CFArrayGetCount(ValueAtIndex);
        if (v42 < 1)
        {
          goto LABEL_31;
        }

        v43 = *v215;
        v44 = &v38[2 * v43];
        if (!FigCFArrayGetDoubleAtIndex())
        {
          goto LABEL_31;
        }

        *v44 = v36 + *v44;
        v45 = CFArrayGetValueAtIndex(v41, 2);
        if (!v45)
        {
          goto LABEL_31;
        }

        v46 = v45;
        v234.length = CFDataGetLength(v45);
        v47 = &v217[8 * v43];
        v234.location = 0;
        CFDataGetBytes(v46, v234, v47);
        if (!v34)
        {
          goto LABEL_30;
        }

        v48 = [v34 extractGravityData];
        if (v42 < 4 || !v48)
        {
          goto LABEL_30;
        }

        v49 = CFArrayGetValueAtIndex(v41, 3);
        if (v49)
        {
          break;
        }

LABEL_31:
        if (v39 == ++v37)
        {
          goto LABEL_32;
        }
      }

      v50 = v49;
      LODWORD(buffer.origin.y) = 0;
      buffer.origin.x = 0.0;
      v235.length = CFDataGetLength(v49);
      v235.location = 0;
      CFDataGetBytes(v50, v235, &buffer);
      [v34 pushSample:&buffer withPose:v47 atTime:*v44];
LABEL_30:
      *v215 = (*v215 + 1);
      goto LABEL_31;
    }

LABEL_32:

    a6 = v203;
    a1 = theDict;
    a7 = v211;
    a4 = v221;
    v21 = v207;
  }

  if (a4)
  {
    v51 = CFDictionaryGetValue(a1, kFigMotionAttachmentsSampleBufferProcessorMetadata_MotionAttachmentsISPHallData);
    if (v51)
    {
      v52 = v51;
      rect2 = *(v221 + 16420);
      v53 = CFArrayGetCount(v51);
      if (v53 > 2)
      {
        GVSExtractMetadataFromTopToBottomRows_cold_2(&buffer);
LABEL_196:
        x_low = LODWORD(buffer.origin.x);
        if (LODWORD(buffer.origin.x))
        {
          GVSExtractMetadataFromTopToBottomRows_cold_9(LODWORD(buffer.origin.x));
          v21 = v207;
LABEL_208:

          goto LABEL_209;
        }
      }

      else if (v53 >= 1)
      {
        v54 = 0;
        v202 = (v221 + 8);
        v55 = v221 + 16416;
        v56 = v221 + 16424;
        v57 = v53 & 0x7FFFFFFF;
        v212 = vdupq_lane_s64(COERCE__INT64(1.0 - rect2), 0);
        v208 = v57;
        v209 = v52;
        do
        {
          v58 = CFArrayGetValueAtIndex(v52, v54);
          if (v58)
          {
            v59 = v58;
            v231 = 0;
            v60 = CFArrayGetValueAtIndex(v58, 0);
            if (v60)
            {
              CFNumberGetValue(v60, kCFNumberIntType, &v231);
            }

            v61 = v231;
            if (v231 > 1)
            {
              GVSExtractMetadataFromTopToBottomRows_cold_1(&v231, &buffer);
              goto LABEL_196;
            }

            v62 = CFArrayGetValueAtIndex(v59, 1);
            if (v62)
            {
              v63 = v62;
              v64 = CFArrayGetCount(v62);
              if (v64 >= 1)
              {
                v65 = 0;
                v66 = &v202[4096 * v61];
                v67 = v64 & 0x7FFFFFFF;
                do
                {
                  buffer.origin.x = 0.0;
                  *v232 = 0;
                  v68 = CFArrayGetValueAtIndex(v63, v65);
                  v69 = CFArrayGetValueAtIndex(v68, 0);
                  v70 = CFArrayGetValueAtIndex(v68, 1);
                  if (v69)
                  {
                    v71 = v70;
                    if (v70)
                    {
                      if (CFDataGetLength(v70) == 8)
                      {
                        CFNumberGetValue(v69, kCFNumberDoubleType, &buffer);
                        v236.location = 0;
                        v236.length = 8;
                        CFDataGetBytes(v71, v236, v232);
                        v72 = v231;
                        v73 = *(v221 + 4 * v231);
                        *(v221 + 4 * v231) = (v73 + 1) & 0x1FF;
                        *&v66[8 * v73] = buffer.origin.x + *(v221 + 16408);
                        if (*(v55 + v72))
                        {
                          if (!*(v221 + 16418))
                          {
                            *(v56 + 8 * v72) = *v232;
                          }

                          *(v55 + v72) = 0;
                        }

                        v74 = v221 + 8200 + (v72 << 12);
                        if (*(v221 + 16418))
                        {
                          *(v74 + 8 * v73) = *v232;
                        }

                        else
                        {
                          v75 = *v232;
                          *(v74 + 8 * v73) = vsub_f32(*v232, *(v56 + 8 * v72));
                          *(v56 + 8 * v72) = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(vmul_n_f32(*(v56 + 8 * v72), rect2)), v212, vcvtq_f64_f32(v75)));
                        }
                      }
                    }
                  }

                  ++v65;
                }

                while (v67 != v65);
              }

              v57 = v208;
              v52 = v209;
            }
          }

          ++v54;
        }

        while (v54 != v57);
      }
    }

    a1 = theDict;
    v76 = CFDictionaryGetValue(theDict, kFigMotionAttachmentsSampleBufferProcessorMetadata_SphereScalingFactor);
    if (v76)
    {
      a7 = v211;
      CFNumberGetValue(v76, kCFNumberFloatType, (v211 + 16));
      a6 = v203;
      a4 = v221;
    }

    else
    {
      v77 = CFDictionaryGetValue(theDict, kFigMotionAttachmentsSampleBufferProcessorMetadata_ScalingFactor);
      a6 = v203;
      a7 = v211;
      a4 = v221;
      if (v77)
      {
        LODWORD(buffer.origin.x) = 0;
        CFNumberGetValue(v77, kCFNumberFloatType, &buffer);
        *(v211 + 16) = *&buffer.origin.x / 1.5;
      }

      else
      {
        *(v211 + 16) = 1065353216;
      }
    }

    v21 = v207;
  }

  v78 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_PortType);
  if (v78)
  {
    v79 = portIndexFromPortType(v78, (a7 + 136));
    if (v79)
    {
      x_low = v79;
      GVSExtractMetadataFromTopToBottomRows_cold_3();
      goto LABEL_208;
    }
  }

  if (FigCFDictionaryGetInt32IfPresent())
  {
    v80 = *(a7 + 140);
  }

  else
  {
    v80 = 1;
  }

  a5 = v204;
  if (v80 <= 1)
  {
    v80 = 1;
  }

  *(a7 + 140) = v80;

LABEL_72:
  v225 = 0;
  v226 = 0;
  if (*(a7 + 88) == 0)
  {
    v81 = a6->i32[0];
    v82 = a6->i32[1];
    *(a7 + 96) = a6->i32[0];
    *(a7 + 100) = v82;
  }

  else
  {
    v81 = *(a7 + 96);
    v82 = *(a7 + 100);
  }

  v83 = *(a7 + 88);
  v84 = *(a7 + 92);
  v85 = v81;
  v86 = v82;
  if (CGRectIsEmpty(*(a7 + 104)) || (v240.origin.x = v83, v240.origin.y = v84, v240.size.width = v85, v240.size.height = v86, v237 = CGRectIntersection(*(a7 + 104), v240), *(a7 + 104) = v237, CGRectIsNull(v237)))
  {
    *(a7 + 104) = v83;
    *(a7 + 112) = v84;
    *(a7 + 120) = v85;
    *(a7 + 128) = v86;
  }

  else
  {
    v83 = *(a7 + 104);
    v84 = *(a7 + 112);
    v85 = *(a7 + 120);
    v86 = *(a7 + 128);
  }

  v238.origin.x = v83;
  v238.origin.y = v84;
  v238.size.width = v85;
  v238.size.height = v86;
  if (CGRectIsEmpty(v238))
  {
    v88.i64[0] = a6->i32[0];
    v88.i64[1] = HIDWORD(*a6);
    v87 = vcvtq_f64_s64(v88);
    *(a7 + 104) = 0;
    *(a7 + 112) = 0;
    *(a7 + 120) = v87;
  }

  if (*(a7 + 136) == 4)
  {
    v89 = kFigCaptureSampleBufferMetadata_ImageCircle;
    if (CFDictionaryContainsKey(a1, kFigCaptureSampleBufferMetadata_ImageCircle))
    {
      v90 = *a6;
      if (CFDictionaryContainsKey(a1, v89))
      {
        if (CFDictionaryGetValue(a1, v89))
        {
          memset(&buffer, 0, 16);
          if (FigCFDictionaryGetCGPointIfPresent())
          {
            memset(v232, 0, sizeof(v232));
            if (FigCFDictionaryGetCGSizeIfPresent())
            {
              v95 = vcvt_f32_s32(v90);
              v96 = vmul_f32(v95, vcvt_f32_f64(buffer.origin));
              *&v97 = vaddv_f32(vmul_f32(v95, vcvt_f32_f64(*v232))) * 0.5;
              if (a6[9].i8[5])
              {
                memset(v232, 0, sizeof(v232));
                v98 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorMetadata_InputFrameCropOffset);
                if (v98)
                {
                  CGPointMakeWithDictionaryRepresentation(v98, v232);
                }

                v100 = v96;
                v101 = vcvt_f32_s32(*(a7 + 88));
                *v99.i8 = vcvt_f32_s32(*(a7 + 96));
                v103 = a6[1];
                v102 = a6[2];
                v104.i64[0] = v102.i32[0];
                v104.i64[1] = v102.i32[1];
                v105 = vcvtq_f64_s64(v104);
                v104.i64[0] = v103.i32[0];
                v104.i64[1] = v103.i32[1];
                __asm { FMOV            V5.2D, #0.5 }

                v111 = vdivq_f64(v105, vdupq_lane_s64(COERCE__INT64(*(a7 + 20)), 0));
                v112 = vmlsq_f64(vaddq_f64(*v232, vmlaq_f64(vcvtq_f64_s64(v104), _Q5, v105)), _Q5, v111);
                height = v111.height;
                if (v111.width < v111.height)
                {
                  v114 = 1;
                }

                else
                {
                  v114 = 2;
                }

                v218 = v112;
                buffer.origin = v112;
                buffer.size = v111;
                rect2a = v111.width;
                v115 = GVSConfineRectToCircle(v100, v97, v114, &buffer, v101, v99, v111.width, v105.f64[0], v112.x, _Q5.f64[0]);
                if (v115)
                {
                  v198 = v115;
                  fig_log_get_emitter();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v198, v13, v199, v13, v200, v201, v202, v203);
                  x = buffer.origin.x;
                  y = buffer.origin.y;
                  v118 = buffer.size.height;
                  width = buffer.size.width;
                }

                else
                {
                  v241.origin.x = v218.x;
                  x = buffer.origin.x;
                  y = buffer.origin.y;
                  v118 = buffer.size.height;
                  width = buffer.size.width;
                  v241.origin.y = v218.y;
                  v241.size.width = rect2a;
                  v241.size.height = height;
                  if (!CGRectContainsRect(buffer, v241))
                  {
                    v118 = height;
                    width = rect2a;
                    y = v218.y;
                    x = v218.x;
                  }
                }

                v120 = llround(x);
                v121 = llround(y);
                *(a7 + 88) = v120;
                *(a7 + 92) = v121;
                v122 = llround(width);
                v123 = llround(v118);
                *(a7 + 96) = v122;
                *(a7 + 100) = v123;
                v242.origin.x = v120;
                v242.origin.y = v121;
                buffer.origin.x = v120;
                buffer.origin.y = v121;
                v242.size.width = v122;
                v242.size.height = v123;
                buffer.size.width = v122;
                buffer.size.height = v123;
                v239 = CGRectIntersection(*(a7 + 104), v242);
                *(a7 + 104) = v239;
                if (CGRectIsNull(v239))
                {
                  HIDWORD(v87.f64[0]) = HIDWORD(buffer.origin.x);
                  v124 = buffer.size;
                  *(a7 + 104) = buffer.origin;
                  *(a7 + 120) = v124;
                }
              }

              else
              {
                v125 = *(a7 + 120);
                *&v125.f64[0] = vcvt_f32_f64(v125);
                if (GVSConfineRectToCircle(v96, v97, 0, (a7 + 104), vcvt_f32_f64(*(a7 + 104)), v125, v91, v92, v93, v94))
                {
                  GVSExtractMetadataFromTopToBottomRows_cold_11();
                }
              }

              goto LABEL_100;
            }

            GVSExtractMetadataFromTopToBottomRows_cold_12(v232, &buffer);
          }

          else
          {
            GVSExtractMetadataFromTopToBottomRows_cold_13(&buffer);
          }
        }

        else
        {
          GVSExtractMetadataFromTopToBottomRows_cold_14();
        }
      }

      GVSExtractMetadataFromTopToBottomRows_cold_15(&v229);
      x_low = v229;
      goto LABEL_194;
    }
  }

LABEL_100:
  if (a6[9].i8[4])
  {
    v126 = CFDictionaryGetValue(a1, kFigVideoStabilizationSampleBufferProcessorMetadata_InputFrameCropOffset);
    if (v126)
    {
      memset(&buffer, 0, 16);
      CGPointMakeWithDictionaryRepresentation(v126, &buffer.origin);
      v127.i64[0] = a6->i32[0];
      v127.i64[1] = HIDWORD(*a6);
      *&v87.f64[0] = vcvt_f32_f64(vmulq_f64(buffer.origin, vcvtq_f64_s64(v127)));
      *(a7 + 24) = v87.f64[0];
    }
  }

  LODWORD(v87.f64[0]) = *v200;
  if (a6[9].i8[0])
  {
    v128 = vcvt_f32_s32(a6[4]);
    v129 = vcvt_f32_f64(*(a7 + 120));
    __asm { FMOV            V3.2S, #-1.0 }

    v131 = vadd_f32(v128, _D3);
    v132 = vadd_f32(v129, _D3);
    v133 = vdiv_f32(v131, vadd_f32(v132, vdup_n_s32(0xBF804189)));
    if (v133.f32[0] <= v133.f32[1])
    {
      v133.f32[0] = v133.f32[1];
    }

    if (*v87.f64 < v133.f32[0])
    {
      *v200 = v133.i32[0];
      LODWORD(v87.f64[0]) = v133.i32[0];
    }

    v134 = vsub_f32(vmla_f32(vcvt_f32_f64(*(a7 + 104)), 0x3F0000003F000000, v132), vmla_f32(vcvt_f32_s32(a6[3]), 0x3F0000003F000000, v131));
    v135 = vmul_f32(vsub_f32(v129, vdiv_f32(v128, vdup_lane_s32(*&v87.f64[0], 0))), 0x3F0000003F000000);
    __asm { FMOV            V2.2S, #0.75 }

    v137 = vmaxnm_f32(vmla_f32(0xBF000000BF000000, _D2, v135), 0);
    v138 = vminnm_f32(vmaxnm_f32(*(a7 + 24), vsub_f32(v134, v137)), vadd_f32(v137, v134));
    *(a7 + 24) = v138;
    v139 = v138.f32[1];
  }

  else
  {
    v139 = *(a7 + 28);
  }

  v140 = a6[2].i32[1];
  v141 = v140;
  if (*v87.f64 <= 0.0)
  {
    *v87.f64 = 1.0;
  }

  v142 = v141 / *v87.f64;
  v143 = *(a7 + 48);
  v144 = *(a7 + 56) / *(a7 + 100);
  v145 = *(a7 + 32) + v144 * ((v139 + ((vcvts_n_f32_s32(v140, 1uLL) + a6[1].i32[1]) - (v142 * 0.5))) - *(a7 + 92));
  *(a7 + 40) = v145;
  v146 = v144 * v142;
  v147 = v145 - v143 * 0.5;
  v148 = v147 + v146 * ((v140 + -1.0) / v140 * 0.5);
  *(a7 + 64) = v146;
  *(a7 + 72) = v148;
  v149 = *(a5 + 40);
  v223 = *(a5 + 24);
  v224 = v149;
  v150 = 0;
  if (*(a5 + 56) == 1)
  {
    v151 = CFDictionaryGetValue(a1, kFigCaptureStreamMetadata_PortType);
    v152 = [*(a5 + 64) objectForKeyedSubscript:v151];
    v153 = v152;
    if (v152 && [v152 length] == stru_20.segname)
    {
      v154 = [v153 bytes];
      *&v223 = FigMotionMultiplyQuaternions(&v223, v154);
      *(&v223 + 1) = v155;
      *&v224 = v156;
      *(&v224 + 1) = v157;
      LODWORD(v229) = 1065353216;
      FigCFDictionaryGetFloatIfPresent();
      v158 = *(a7 + 140);
      v159 = *a6;
      v219 = CGPointZero;
      buffer.origin = CGPointZero;
      if (FigMotionComputeRawSensorCenterInBuffer(a1, v159, v158, v158, &buffer, *&v229))
      {
        v160 = *(a7 + 16);
        v150 = vmul_n_f32(*(v154 + 32), v160);
        v161 = v204;
      }

      else
      {
        v160 = *(a7 + 16);
        v162 = vmla_n_f32(vcvt_f32_f64(buffer.origin), *(v154 + 32), v160);
        v161 = v204;
        v150 = vsub_f32(v162, vcvt_f32_f64(*v204));
      }

      if ((*(v161 + 57) & 1) == 0)
      {
        v163 = *a6;
        *v232 = v219;
        if (!FigMotionComputeOpticalCenterInBuffer(a1, v163, v158, v158, 0, v232, v160 / *&v229))
        {
          v150 = vcvt_f32_f64(vsubq_f64(*v232, *v161));
        }
      }
    }

    v21 = v207;
  }

  if (a10)
  {
    *a10 = v150;
  }

  v164 = v146 + v147;
  GVSComputeMotionBlur(v215, a4, a7, &v223, (a7 + 80));
  v165 = a8;
  if (a8)
  {
    if (a13 == 1)
    {
      FigMotionComputeQuaternionForTimeStamp(v215, a8, v206 + 2066, v148);
      if (*(v206 + 2066))
      {
        v166 = 1;
        goto LABEL_133;
      }

      GVSExtractMetadataFromTopToBottomRows_cold_18(&buffer);
LABEL_217:
      x_low = LODWORD(buffer.origin.x);
      goto LABEL_194;
    }

    LOBYTE(buffer.origin.x) = 0;
    *(v206 + 2066) = 1;
    if (a13 >= 1)
    {
      v167 = 0;
      v168 = a8;
      do
      {
        FigMotionComputeQuaternionForTimeStamp(v215, v168, &buffer, v147 + v167 * ((v164 - v147) / (a13 + -1.0)));
        *(v206 + 2066) &= LOBYTE(buffer.origin.x);
        ++v167;
        v168 += 4;
      }

      while (a13 != v167);
    }

    FigMotionComputeQuaternionForTimeStamp(v215, &a8[4 * a13], &buffer, v148);
    *(v206 + 2066) &= LOBYTE(buffer.origin.x);
    if ((a13 & 0x80000000) == 0)
    {
      v166 = a13 + 1;
LABEL_133:
      v169 = v166;
      do
      {
        *v165 = FigMotionMultiplyQuaternions(v165, &v223);
        *(v165 + 1) = v170;
        *(v165 + 2) = v171;
        *(v165 + 3) = v172;
        v165 += 4;
        --v169;
      }

      while (v169);
    }
  }

  v173 = a11;
  if (a9)
  {
    if (v21 && (v174 = [v21 extractGravityData], a8) && v174)
    {
      [v21 computeGravity:a9 forTimestamp:v148];
    }

    else
    {
      *a9 = 0;
      *(a9 + 8) = 0;
    }
  }

  v222 = 0;
  if (a12)
  {
    v175 = *a12;
    v176 = *(v211 + 136);
    FigMotionStashQuadraBinningFactor(theDict, a12, *(v211 + 136));
    FigMotionUpdateBaseZoomFactorAdjustment(theDict, a12, v176);
    if ((v175 & 2) != 0 && v176 != *(a12 + 111))
    {
      *v232 = 0;
      LODWORD(v229) = 0;
      if (!FigCFDictionaryGetFloat32IfPresent() || !FigCFDictionaryGetFloat32IfPresent())
      {
        FigGetUpTime();
        v195 = FigHostTimeToNanoseconds();
        if (!low_freq_error_logging_last_log || (v195 - low_freq_error_logging_last_log) >= 0x3B9ACA00)
        {
          if (low_freq_error_logging_filtered)
          {
            low_freq_error_logging_filtered = 0;
          }

          low_freq_error_logging_last_log = v195;
          if ((v175 & 4) == 0)
          {
            goto LABEL_163;
          }

          goto LABEL_148;
        }

        ++low_freq_error_logging_filtered;
        if ((v175 & 4) != 0)
        {
LABEL_148:
          v179 = *(a12 + 111);
          if (v176 != v179)
          {
            v180 = *(a12 + 112);
            if (v176 != v180)
            {
              v181 = 0;
              v182 = BravoCurrentToReferenceMapping[3 * v179 + v176];
              if (v179 == 2 && v180 != 2)
              {
                LODWORD(buffer.origin.x) = 4;
                FigCFDictionaryGetInt32IfPresent();
                v181 = LODWORD(buffer.origin.x) != 4;
              }

              v183 = v176 == 2 || v181;
              FigMotionComputeParallaxShift(theDict, a12, a12[12 * v182 + 30], a12[12 * v182 + 34], *(v211 + 16), v176, v183, (a12 + 113));
              a12[132] = *(v211 + 16);
            }

            if ((a12[130] & 1) == 0)
            {
              *&v177 = a12[114];
              v184.f32[0] = FigMotionAdjustParallaxShiftForScalingFactor(a12[113], v177, a12[132], *(v211 + 16));
              v184.i32[1] = v185;
              v222 = vadd_f32(v222, v184);
            }
          }

          if (v176 != *(a12 + 112))
          {
            FigMotionClearFocalLengthData(a12);
            if (v176 == *(a12 + 111))
            {
              *(a12 + 113) = 0;
            }
          }

          FigMotionStashFocalLengthData(theDict, a12, v176);
        }

LABEL_163:
        x_low = 0;
        *(a12 + 112) = v176;
        v187 = v221;
        if (!v221 || !a11)
        {
          goto LABEL_194;
        }

        v188 = vadd_f32(v150, v222);
        v189 = v211;
        if (!*(v211 + 12))
        {
          goto LABEL_185;
        }

        goto LABEL_170;
      }

      *&buffer.origin.x = vcvt_f32_f64(*v204);
      v178 = FigMotionComputeBravoTranslation(theDict, a12, v176, &buffer, &v222, *v232, *&v229);
      if (v178)
      {
        x_low = v178;
        GVSExtractMetadataFromTopToBottomRows_cold_16(v178, &buffer, &v229, v232);
        goto LABEL_194;
      }
    }

    if ((v175 & 4) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_163;
  }

  x_low = 0;
  v187 = v221;
  if (!v221 || !a11)
  {
    goto LABEL_194;
  }

  v188 = vadd_f32(v150, 0);
  v189 = v211;
  if (!*(v211 + 12))
  {
    if (*(v204 + 56) != 1)
    {
      bzero(a11, 8 * a6[6].i32[1]);
LABEL_193:
      x_low = 0;
      goto LABEL_194;
    }

LABEL_185:
    v196 = a6[6].u32[1];
    if (v196 >= 1)
    {
      do
      {
        *v173++ = v188;
        --v196;
      }

      while (v196);
    }

    goto LABEL_193;
  }

LABEL_170:
  if (a13 != 1)
  {
    if (a6[6].i32[1] >= 1)
    {
      v191 = 0;
      v192 = 0;
      v193 = v141;
      do
      {
        if (v192 >= v140 - 1)
        {
          v194 = v140 - 1;
        }

        else
        {
          v194 = v192;
        }

        FigMotionComputeLensMovementForTimeStamp(v187, v173, *(v189 + 136), v147 + (v164 - v147) * v194 / v193, *(v189 + 16));
        *v173 = vadd_f32(v188, *v173);
        ++v173;
        ++v191;
        v192 = a6[7].i32[1] + v194;
      }

      while (v191 < a6[6].i32[1]);
    }

    goto LABEL_193;
  }

  v190 = FigMotionComputeLensMovementForTimeStamp(v187, a11, *(v189 + 136), v148, *(v189 + 16));
  x_low = v190;
  if (v190)
  {
    GVSExtractMetadataFromTopToBottomRows_cold_17(v190);
  }

  else
  {
    *a11 = vadd_f32(v188, *a11);
  }

LABEL_194:

  return x_low;
}

uint64_t GVSComputeMotionBlur(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, void *a5)
{
  if (!a5)
  {
    GVSComputeMotionBlur_cold_6(&v28);
    return v28.u32[0];
  }

  if (!a1)
  {
    GVSComputeMotionBlur_cold_5(&v28);
    return v28.u32[0];
  }

  if (!a3)
  {
    GVSComputeMotionBlur_cold_4(&v28);
    return v28.u32[0];
  }

  if (!a4)
  {
    GVSComputeMotionBlur_cold_3(&v28);
    return v28.u32[0];
  }

  *a5 = 0;
  v10 = *(a3 + 72);
  v11 = *(a3 + 48) * 0.5;
  v12 = v10 - v11;
  v13 = v10 + v11;
  v36 = 1;
  v35 = 1;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  FigMotionComputeQuaternionForTimeStamp(a1, &v33, &v36, v10 - v11);
  FigMotionComputeQuaternionForTimeStamp(a1, &v31, &v35, v13);
  if (v36 && v35)
  {
    *&v33 = FigMotionMultiplyQuaternions(&v33, a4);
    *(&v33 + 1) = v15;
    *&v34 = v16;
    *(&v34 + 1) = v17;
    *&v31 = FigMotionMultiplyQuaternions(&v31, a4);
    *(&v31 + 1) = v18;
    *&v32 = v19;
    *(&v32 + 1) = v20;
    v30 = 0;
    v29[0] = FigMotionMultiplyByInverseOfQuaternion(&v31, &v33);
    v29[1] = v21;
    v29[2] = v22;
    v29[3] = v23;
    v24 = GVSComputeTranslationFromCameraMotion(v29, &v30, *(a3 + 4));
    if (v24)
    {
      v25 = v24;
      GVSComputeMotionBlur_cold_1();
    }

    else
    {
      if (a2 && *(a3 + 12))
      {
        v27 = 0;
        v28 = 0;
        FigMotionComputeLensMovementForTimeStamp(a2, &v28, *(a3 + 136), v12, *(a3 + 16));
        FigMotionComputeLensMovementForTimeStamp(a2, &v27, *(a3 + 136), v13, *(a3 + 16));
        v30 = vsub_f32(v30, vsub_f32(v27, v28));
      }

      v25 = 0;
      *a5 = v30;
    }
  }

  else
  {
    GVSComputeMotionBlur_cold_2(v14);
    return 0xFFFFFFFFLL;
  }

  return v25;
}

uint64_t GVSExtractCameraGeometryFromCameraInfoByPortType(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[NSMutableDictionary dictionary];
  v5 = v4;
  v43 = v3;
  if (!v3)
  {
    GVSExtractCameraGeometryFromCameraInfoByPortType_cold_6(v44);
LABEL_36:
    v29 = v44[0];
    goto LABEL_33;
  }

  if (!a2)
  {
    GVSExtractCameraGeometryFromCameraInfoByPortType_cold_5(v44);
    goto LABEL_36;
  }

  v35 = a2;
  v42 = v4;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [v3 allKeys];
  v6 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
  if (!v6)
  {
    v29 = 0;
    goto LABEL_28;
  }

  v7 = v6;
  v40 = kFigCaptureCameraInfoKey_PixelSize;
  v41 = *v51;
  v39 = kFigCaptureCameraInfoKey_OpticalCenterOffsetInPhysicalSensorDimensions;
  v36 = kFigCaptureCameraInfoKey_OpticalCenterOffset;
  v38 = kFigCaptureCameraInfoKey_CameraPoseMatrix;
  do
  {
    v8 = 0;
    do
    {
      if (*v51 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v50 + 1) + 8 * v8);
      v10 = [v43 objectForKeyedSubscript:v9];
      v11 = [v10 objectForKeyedSubscript:v40];
      if (!v11)
      {
        GVSExtractCameraGeometryFromCameraInfoByPortType_cold_4();
LABEL_31:

        v29 = 4294954516;
LABEL_32:
        v5 = v42;

        goto LABEL_33;
      }

      v12 = v11;
      v13 = [v10 objectForKeyedSubscript:v39];
      if (!v13)
      {
        v13 = [v10 objectForKeyedSubscript:v36];
        if (!v13)
        {
          GVSExtractCameraGeometryFromCameraInfoByPortType_cold_3(v12);
          goto LABEL_31;
        }
      }

      v14 = v13;
      point.x = 0.0;
      point.y = 0.0;
      CGPointMakeWithDictionaryRepresentation(v13, &point);
      v15 = [v10 objectForKeyedSubscript:v38];
      v16 = v15;
      if (!v15)
      {
        GVSExtractCameraGeometryFromCameraInfoByPortType_cold_2();
LABEL_24:
        v30 = 0;
        v29 = 4294954516;
        goto LABEL_19;
      }

      if ([v15 length] != &stru_20.segname[8])
      {
        GVSExtractCameraGeometryFromCameraInfoByPortType_cold_1();
        goto LABEL_24;
      }

      v17 = [v16 bytes];
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      v18 = vcvt_f32_f64(point);
      [v12 floatValue];
      v26 = 0;
      v47 = vmul_n_f32(v18, *v19.i32);
      v27 = v44;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          *v19.i64 = v17[i];
          *&v27[2 * i] = v19.i64[0];
        }

        ++v26;
        v17 += 4;
        v27 += 6;
      }

      while (v26 != 3);
      v29 = GVSQuaternionFromRotationMatrix(v44, &v45, v19, v20, v21, v22, v23, v24, v25);
      v30 = v29 == 0;
      if (!v29)
      {
        *(&v46 + 1) = -*(&v46 + 1);
        v31 = [[NSData alloc] initWithBytes:&v45 length:40];
        [v42 setObject:v31 forKeyedSubscript:v9];
      }

LABEL_19:

      if (!v30)
      {
        goto LABEL_32;
      }

      v8 = v8 + 1;
    }

    while (v8 != v7);
    v32 = [obj countByEnumeratingWithState:&v50 objects:v49 count:16];
    v7 = v32;
  }

  while (v32);
LABEL_28:

  v5 = v42;
  v33 = v42;
  *v35 = v42;
LABEL_33:

  return v29;
}

float32x2_t GVSComputeOverscanUsage(int32x2_t *a1, float64x2_t *a2, uint64_t a3)
{
  v3 = 0;
  v4 = a1[3];
  v5 = a1[4];
  v6 = v29;
  v28 = v4.i32[0];
  v29[0] = v4.i32[1];
  v7 = vcvt_f32_s32(vadd_s32(vadd_s32(v4, v5), -1));
  v29[1] = *v7.i32;
  v29[2] = v29[0];
  v29[3] = v28;
  v30 = vrev64_s32(v7);
  v31 = v7.i32[1];
  v8 = a1[6].i32[1];
  v9 = (a1[7].i32[0] - 1) * v8;
  v27[0] = 0;
  v27[1] = v9;
  v27[2] = v8 - 1;
  v27[3] = v8 - 1 + v9;
  v10 = vcvt_f32_f64(*a2);
  __asm { FMOV            V2.2S, #-1.0 }

  v16 = vadd_f32(vadd_f32(v10, vcvt_f32_f64(a2[1])), _D2);
  result = vneg_f32(0x80000000800000);
  do
  {
    v18 = a3 + 36 * v27[v3];
    v19 = *(v6 - 1);
    v20 = (*(v18 + 32) + (*(v18 + 28) * *v6)) + (*(v18 + 24) * v19);
    v21.i32[0] = *v18;
    v24.i32[0] = *(v18 + 4);
    v22.i32[0] = *(v18 + 8);
    v23 = (v18 + 12);
    v24.i32[1] = *(v18 + 16);
    v25 = (v18 + 20);
    if (fabsf(v20) > 0.00000001)
    {
      v20 = 1.0 / v20;
    }

    v22.i32[1] = *v25;
    v21.i32[1] = *v23;
    v26 = vmul_n_f32(vmla_n_f32(vmla_n_f32(v22, v24, *v6), v21, v19), v20);
    result = vminnm_f32(result, vminnm_f32(vmaxnm_f32(vsub_f32(v26, v10), 0), vmaxnm_f32(vsub_f32(v16, v26), 0)));
    v6 += 2;
    ++v3;
  }

  while (v3 != 4);
  return result;
}

uint64_t GVSConfineRectToCircle(uint64_t a1, int a2, int a3, float64x2_t *a4, float32x2_t a5, int32x4_t a6, double a7, double a8, double a9, double a10)
{
  v10 = vsub_f32(a5, a1);
  v11.i32[0] = 0;
  v11.i32[1] = a6.i32[0];
  v11.i64[1] = a6.u32[0];
  v12 = vzip1q_s32(a6, a6);
  v12.i64[0] = 0;
  v13 = vaddq_f32(v11, vdupq_lane_s32(v10, 0));
  v14 = vaddq_f32(v12, vdupq_lane_s32(v10, 1));
  v15 = vabsq_f32(v13);
  v16 = vabsq_f32(v14);
  if (a3 == 2)
  {
    if (vminvq_f32(v15) < *&a2)
    {
      *&a10 = *&a2 * *&a2;
      v16 = vminnmq_f32(vsqrtq_f32(vmlsq_f32(vdupq_lane_s32(*&a10, 0), v15, v15)), v16);
      goto LABEL_9;
    }

    GVSConfineRectToCircle_cold_1();
    return 4294954516;
  }

  if (a3 != 1)
  {
    if (*&a2 > 0.0)
    {
      v17 = vmlaq_f32(vmulq_f32(v14, v14), v13, v13);
      v18 = vrsqrteq_f32(v17);
      v19 = vmulq_f32(v18, vrsqrtsq_f32(v17, vmulq_f32(v18, v18)));
      v20 = vmulq_n_f32(vmulq_f32(v19, vrsqrtsq_f32(v17, vmulq_f32(v19, v19))), *&a2);
      __asm { FMOV            V6.4S, #1.0 }

      v26 = vminnmq_f32(v20, _Q6);
      v15 = vmulq_f32(v15, v26);
      v16 = vmulq_f32(v16, v26);
      goto LABEL_9;
    }

    GVSConfineRectToCircle_cold_3();
    return 4294954516;
  }

  if (vminvq_f32(v16) >= *&a2)
  {
    GVSConfineRectToCircle_cold_2();
    return 4294954516;
  }

  *&a10 = *&a2 * *&a2;
  v15 = vminnmq_f32(vsqrtq_f32(vmlsq_f32(vdupq_lane_s32(*&a10, 0), v16, v16)), v15);
LABEL_9:
  v27 = 0;
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v29 = vabsq_f32(v15);
  v30 = vorrq_s8(vandq_s8(v13, v28), v29);
  v29.i32[0] = a1;
  v31 = vaddq_f32(vdupq_lane_s32(*v29.i8, 0), v30);
  v32 = vaddq_f32(vdupq_lane_s32(a1, 1), vorrq_s8(vandq_s8(v14, v28), vabsq_f32(v16)));
  v33 = vextq_s8(v32, v32, 8uLL).u64[0];
  v29.i64[0] = vextq_s8(v31, v31, 8uLL).u64[0];
  *v28.i8 = vzip2_s32(*v29.i8, *v32.i8);
  v29.i32[1] = v33.i32[1];
  *v32.i8 = vmaxnm_f32(vzip1_s32(*v31.i8, *v32.i8), *v28.i8);
  *a4 = vcvtq_f64_f32(*v32.i8);
  a4[1] = vcvtq_f64_f32(vsub_f32(vminnm_f32(vext_s8(*v31.i8, v33, 4uLL), *v29.i8), *v32.i8));
  return v27;
}

affineGPUMetal *AffineTransformContextAlloc(void *a1)
{
  v1 = a1;
  v2 = [NSBundle bundleWithPath:@"/System/Library/VideoProcessors/VideoStabilizationV2.bundle"];
  if (!v2)
  {
    AffineTransformContextAlloc_cold_3();
LABEL_8:
    v6 = 0;
    goto LABEL_5;
  }

  v3 = [[FigMetalContext alloc] initWithbundle:v2 andOptionalCommandQueue:v1];
  if (!v3)
  {
    AffineTransformContextAlloc_cold_2();
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [[affineGPUMetal alloc] initWithMetalContext:v3];
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  else
  {
    AffineTransformContextAlloc_cold_1(v4);
  }

LABEL_5:

  return v6;
}

uint64_t AffineTransformArrayApply(void *a1, opaqueCMSampleBuffer *a2, __CVBuffer *a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8)
{
  v15 = a6;
  v16 = a1;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v18 = CMGetAttachment(a2, @"MetadataDictionary", 0);
  v19 = v18;
  if (v18)
  {
    v20 = [v18 objectForKeyedSubscript:@"QuadraBinningFactor"];
    v21 = v20 != 0;

    WidthOfPlane = CVPixelBufferGetWidthOfPlane(ImageBuffer, 0);
    v29 = COERCE_DOUBLE(__PAIR64__(CVPixelBufferGetHeightOfPlane(ImageBuffer, 0), WidthOfPlane));
    v23 = CVPixelBufferGetWidthOfPlane(a3, 0);
    v24 = [v16 setTransformsArray:a4 transforms3x3:a5 transformStrides:v21 inputSize:a7 outputSize:a8 pixelBufferValidRect:v29 isQuadraSensor:{COERCE_DOUBLE(__PAIR64__(CVPixelBufferGetHeightOfPlane(a3, 0), v23))}];
    v25 = v24;
    if (v24)
    {
      AffineTransformArrayApply_cold_1(v24);
    }

    else
    {
      v26 = [v16 renderWithSampleBuffer:a2 pixelBufferValidRect:a5 ltmLUT:v15 outputPixelBuffer:a3 isAttachmentRendering:0];
      if (v26)
      {
        v28 = v26;
        AffineTransformArrayApply_cold_2();
        v25 = v28;
      }
    }
  }

  else
  {
    AffineTransformArrayApply_cold_3();
    v25 = 4294954516;
  }

  return v25;
}

uint64_t AffineTransformArrayApplyOnAttachmentPixelBuffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7, double a8, double a9, double a10)
{
  v19 = a6;
  v20 = a1;
  if (v19)
  {
    v21 = [v19 objectForKeyedSubscript:@"QuadraBinningFactor"];
    v22 = v21 != 0;

    v23 = [v20 setTransformsArray:a4 transforms3x3:a5 transformStrides:v22 inputSize:a9 outputSize:a10 pixelBufferValidRect:a7 isQuadraSensor:a8];
    if (v23)
    {
      v24 = v23;
      AffineTransformArrayApplyOnAttachmentPixelBuffer_cold_1();
    }

    else
    {
      v24 = [v20 renderWithPixelBuffer:a2 metadata:v19 pixelBufferValidRect:a5 ltmLUT:0 outputPixelBuffer:a3 isAttachmentRendering:1];
    }
  }

  else
  {
    AffineTransformArrayApplyOnAttachmentPixelBuffer_cold_2();
    v24 = 4294954516;
  }

  return v24;
}

uint64_t AffineTransformArrayApplyOnAttachment(void *a1, opaqueCMSampleBuffer *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v16 = a3;
  v17 = a1;
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v19 = ImageBuffer;
  if (!ImageBuffer)
  {
    AffineTransformArrayApplyOnAttachment_cold_7();
    goto LABEL_13;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(ImageBuffer, 0);
  v21 = __PAIR64__(CVPixelBufferGetHeightOfPlane(v19, 0), WidthOfPlane);
  v22.i64[0] = v21;
  *&v22.i64[1] = a9;
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v22))))
  {
    AffineTransformArrayApplyOnAttachment_cold_1();
    v19 = 0;
LABEL_13:
    v28 = 0;
LABEL_14:
    v31 = 4294954516;
    goto LABEL_9;
  }

  v33 = *&v21;
  v23 = CMGetAttachment(a2, @"MetadataDictionary", 0);
  v19 = v23;
  if (!v23)
  {
    AffineTransformArrayApplyOnAttachment_cold_6();
    goto LABEL_13;
  }

  v24 = [(__CVBuffer *)v23 objectForKeyedSubscript:@"QuadraBinningFactor"];
  v25 = v24 != 0;

  v26 = [v17 setTransformsArray:a5 transforms3x3:a6 transformStrides:v25 inputSize:a7 outputSize:a8 pixelBufferValidRect:v33 isQuadraSensor:a9];
  if (v26)
  {
    v31 = v26;
    AffineTransformArrayApplyOnAttachment_cold_2();
    v28 = 0;
    goto LABEL_9;
  }

  v27 = CMGetAttachment(a2, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v28 = v27;
  if (!v27)
  {
    AffineTransformArrayApplyOnAttachment_cold_5();
    goto LABEL_14;
  }

  v29 = [v27 objectForKeyedSubscript:v16];

  if (!v29)
  {
    AffineTransformArrayApplyOnAttachment_cold_4();
    goto LABEL_14;
  }

  CMSetAttachment(v29, @"AttachmentName", v16, 1u);
  v30 = [v17 renderWithSampleBuffer:v29 pixelBufferValidRect:a6 ltmLUT:0 outputPixelBuffer:a4 isAttachmentRendering:1];
  v31 = v30;
  if (v30)
  {
    AffineTransformArrayApplyOnAttachment_cold_3(v30);
  }

LABEL_9:

  return v31;
}

void AffineTransformFinish(void *a1)
{
  v1 = a1;
  [v1 finish];
  [v1 resetFirstFrameParameters];
}

void AffineTransformContextRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

id AffineTransformGetBlurBuffersDimensions(void *a1, int a2, int a3, int *a4, int *a5)
{
  result = [a1 getBlurBuffersDecimationFactor];
  *a4 = a2 / result;
  *a5 = a3 / result;
  return result;
}

void __destructor_8_AB8s8n2_s8_AE(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void __117__affineGPUMetal_renderWithPixelBuffer_metadata_pixelBufferValidRect_ltmLUT_outputPixelBuffer_isAttachmentRendering___block_invoke(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __117__affineGPUMetal_renderWithPixelBuffer_metadata_pixelBufferValidRect_ltmLUT_outputPixelBuffer_isAttachmentRendering___block_invoke_2(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __77__affineGPUMetal__renderBlurInputTextures_inputTexturesCount_outputTextures___block_invoke(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __77__affineGPUMetal__renderBlurInputTextures_inputTexturesCount_outputTextures___block_invoke_2(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __87__affineGPUMetal__blurDeltaMapBordersFromStyledPixelBuffer_withUnstyledPixelBuffer_to___block_invoke(id a1, MTLCommandBuffer *a2)
{
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void __87__affineGPUMetal__blurDeltaMapBordersFromStyledPixelBuffer_withUnstyledPixelBuffer_to___block_invoke_2(id a1, MTLCommandBuffer *a2)
{
  v2 = a2;
  if ([(MTLCommandBuffer *)v2 status]== &dword_4)
  {
    [(MTLCommandBuffer *)v2 GPUEndTime];
    [(MTLCommandBuffer *)v2 GPUStartTime];
  }

  else
  {
    [(MTLCommandBuffer *)v2 status];
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }
}

void sub_1E0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, id a48, id a49, char a50)
{
  for (i = 24; i != -24; i -= 24)
  {
    __destructor_8_AB8s8n2_s8_AE((&a41 + i));
  }

  for (j = 48; j != -24; j -= 24)
  {
    __destructor_8_AB8s8n2_s8_AE((&a50 + j));
  }

  _Unwind_Resume(a1);
}

void __copy_assignment_8_8_t0w4_AB8s8n2_s8_AE(_DWORD *a1, _DWORD *a2)
{
  v2 = (a2 + 2);
  *a1 = *a2;
  v3 = (a1 + 2);
  v4 = 16;
  do
  {
    v5 = *v2++;
    objc_storeStrong(v3++, v5);
    v4 -= 8;
  }

  while (v4);
}

void sub_1F9B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void __43__affineGPUMetal__addCommandBufferHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[593] |= [v4 status] != &dword_4;
  }
}

void sub_206BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _ispCallbackHandler(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = a1;
  *(v7 + 26) = a2;
  v16 = v7;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
    v7 = v16;
  }

  if (!a2 && a3 >= 1 && a4)
  {
    v8 = a3;
    v9 = (a4 + 8);
    do
    {
      if ([*(v7 + 4) containsObject:*(v9 - 1)])
      {
        CVPixelBufferGetTypeID();
        CFGetTypeID(*v9);
      }

      v9 += 2;
      --v8;
      v7 = v16;
    }

    while (v8);
  }

  dispatch_semaphore_wait(*(v7 + 12), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_signal(*(v16 + 10));
  --*(v16 + 28);
  dispatch_semaphore_signal(*(v16 + 12));
  if (a4)
  {
    v10 = *(a4 + 8);
    if (a3 >= 2)
    {
      v11 = kFigCaptureISPProcessingSessionOutputID_PrimaryScalerLowRes;
      v12 = (a4 + 24);
      v13 = a3 - 1;
      while (![*(v12 - 1) isEqual:v11])
      {
        v12 += 2;
        if (!--v13)
        {
          goto LABEL_18;
        }
      }

      CMSetAttachment(v10, @"LowResolutionImageUsedByVideoEncoder", *v12, 0);
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_18:
  WeakRetained = objc_loadWeakRetained(v16 + 21);

  if (WeakRetained)
  {
    v15 = objc_loadWeakRetained(v16 + 21);
    [v15 didCompleteRenderingOfBuffer:v10 withStatus:a2];
  }

  else
  {
    dispatch_semaphore_signal(*(v16 + 11));
  }
}

__int128 *_mapTransform2TileCoordinates(__int128 *result, int a2, int a3, int a4, int a5, uint64_t a6)
{
  v6 = *result;
  v7 = result[1];
  *(a6 + 32) = *(result + 8);
  *a6 = v6;
  *(a6 + 16) = v7;
  v8 = result + 2;
  v9 = (a6 + 8);
  v10 = -3;
  do
  {
    v11 = (*(v8 - 1) * a5) + (*(v8 - 2) * a4);
    v12 = *v8;
    v8 += 3;
    *v9 = v12 + v11;
    v9 += 3;
    v10 += 3;
  }

  while (v10 < 6);
  v13 = 3;
  v14 = a6;
  do
  {
    *v14 = *v14 - (v14[6] * a2);
    ++v14;
    --v13;
  }

  while (v13);
  v15 = (a6 + 12);
  v16 = 3;
  do
  {
    *v15 = *v15 - (v15[3] * a3);
    ++v15;
    --v16;
  }

  while (v16);
  return result;
}

float *_updateTileBoundingBox(float *result, uint64_t a2, _WORD *a3)
{
  v3 = 0;
  v4 = result[6];
  v5 = result[7];
  v6 = result[8];
  v7 = *result;
  v8 = result[1];
  v9 = result[2];
  v10 = result[3];
  v11 = result[4];
  v12 = result[5];
  LOWORD(v13) = *a3;
  LOWORD(v14) = a3[1];
  LOWORD(v15) = a3[2];
  LOWORD(v16) = a3[3];
  do
  {
    v17 = *(&v22 + v3);
    v18 = *(&v22 + v3 + 2);
    v19 = (v6 + ((v5 * v18) + (v4 * v17)));
    if (fabs(v19) > 0.00000001)
    {
      v19 = 1.0 / v19;
    }

    v20 = v19 * (v9 + ((v8 * v18) + (v7 * v17)));
    if (v20 < v13)
    {
      v13 = v20;
      *a3 = v20;
    }

    if (v20 > v14)
    {
      v14 = (v20 + 1.0);
      a3[1] = v14;
    }

    v21 = v19 * (v12 + ((v11 * v18) + (v10 * v17)));
    if (v21 < v15)
    {
      v15 = v21;
      a3[2] = v21;
    }

    if (v21 > v16)
    {
      v16 = (v21 + 1.0);
      a3[3] = v16;
    }

    v3 += 4;
  }

  while (v3 != 16);
  return result;
}

uint64_t portIndexFromPortType(const void *a1, int *a2)
{
  if (!a1)
  {
    portIndexFromPortType_cold_2(&v9);
    return v9;
  }

  if (!a2)
  {
    portIndexFromPortType_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingCamera))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingTelephotoCamera))
  {
    result = 0;
    v6 = 1;
LABEL_17:
    *a2 = v6;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingSuperWideCamera))
  {
    result = 0;
    v6 = 2;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingCamera))
  {
    result = 0;
    v6 = 3;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingSuperWideCamera))
  {
    result = 0;
    v6 = 4;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_FrontFacingInfraredCamera))
  {
    result = 0;
    v6 = 5;
    goto LABEL_17;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingSparseTimeOfFlightCamera))
  {
    result = 0;
    v6 = 6;
    goto LABEL_17;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954513, "(Fig)", 93, v2);
}

uint64_t bravoTransitionCameraIndexFromPortType(const void *a1, int *a2)
{
  if (!a1)
  {
    bravoTransitionCameraIndexFromPortType_cold_2(&v9);
    return v9;
  }

  if (!a2)
  {
    bravoTransitionCameraIndexFromPortType_cold_1(&v8);
    return v8;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingCamera))
  {
    result = 0;
    *a2 = 0;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingTelephotoCamera))
  {
    result = 0;
    v6 = 1;
LABEL_9:
    *a2 = v6;
    return result;
  }

  if (CFEqual(a1, kFigCapturePortType_BackFacingSuperWideCamera))
  {
    result = 0;
    v6 = 2;
    goto LABEL_9;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954513, "(Fig)", 140, v2);
}

void FigMotionQuaternionFromDeltaRotation(float *a1)
{
  v1 = sqrtf(((a1[1] * a1[1]) + (*a1 * *a1)) + (a1[2] * a1[2]));
  if (v1 > 1.0e-10)
  {
    __sincos_stret(v1 * 0.5);
  }
}

uint64_t FigMotionComputeLensPositionScalingFactor(const __CFDictionary *a1, int width, uint64_t a3, unsigned int a4, uint64_t a5, float *a6)
{
  if (!a1)
  {
    FigMotionComputeLensPositionScalingFactor_cold_5(&v17);
    return LODWORD(v17.x);
  }

  if (!a6)
  {
    FigMotionComputeLensPositionScalingFactor_cold_4(&v17);
    return LODWORD(v17.x);
  }

  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v19 = CGRectZero.origin;
  v20 = size;
  SensorValidCropRect = FigMotionGetSensorValidCropRect(a1, &v19);
  if (SensorValidCropRect)
  {
    v13 = SensorValidCropRect;
    FigMotionComputeLensPositionScalingFactor_cold_1();
    return v13;
  }

  if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_ValidBufferRect))
  {
    v17 = origin;
    v18 = size;
    FigCFDictionaryGetCGRectIfPresent();
    if (size.height > 0.0 && v18.width > 0.0)
    {
      width = v18.width;
    }
  }

  v12 = v20.width;
  if (v12 <= 0.0)
  {
    FigMotionComputeLensPositionScalingFactor_cold_3(&v17);
    return LODWORD(v17.x);
  }

  if (a4 <= 0)
  {
    FigMotionComputeLensPositionScalingFactor_cold_2(&v17);
    return LODWORD(v17.x);
  }

  v13 = 0;
  *a6 = width / (a4 * v12);
  return v13;
}

uint64_t FigMotionGetSensorValidCropRect(const __CFDictionary *a1, uint64_t a2)
{
  if (!CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_SensorRawValidBufferRect))
  {
    if (CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_TotalSensorCropRect))
    {
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v4 = 381;
        goto LABEL_12;
      }
    }

    else
    {
      if (!CFDictionaryContainsKey(a1, kFigCaptureStreamMetadata_RawCropRect))
      {
        v4 = 393;
        goto LABEL_12;
      }

      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v4 = 388;
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (FigCFDictionaryGetCGRectIfPresent())
  {
    return 0;
  }

  v4 = 373;
LABEL_12:
  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "(Fig)", v4, v2);
}

uint64_t FigMotionGetISPHallData(const __CFData *a1, uint64_t a2, int *a3, int a4)
{
  Length = CFDataGetLength(a1);
  if (Length <= 7)
  {
    FigMotionGetISPHallData_cold_3(&time);
  }

  else
  {
    v10 = Length;
    BytePtr = CFDataGetBytePtr(a1);
    if (*BytePtr >= 2u)
    {
      FigMotionGetISPHallData_cold_2(&time);
    }

    else
    {
      v12 = 16;
      if (*BytePtr == 1)
      {
        v12 = 24;
      }

      if (v10 == v12 * *(BytePtr + 1) + 8)
      {
        if (a3)
        {
          goto LABEL_7;
        }

LABEL_26:
        FigMotionGetISPHallData_cold_4(&time);
        return LODWORD(time.value);
      }

      FigMotionGetISPHallData_cold_1(&time);
    }
  }

  value_low = LODWORD(time.value);
  if (LODWORD(time.value))
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", value_low, v4, v25, time.value, time.timescale, time.epoch, v27, v28);
    return value_low;
  }

  BytePtr = 0;
  if (!a3)
  {
    goto LABEL_26;
  }

LABEL_7:
  v13 = *(BytePtr + 1);
  if (v13 >= a4)
  {
    v13 = a4;
  }

  *a3 = v13;
  if (*BytePtr == 1)
  {
    if (v13 >= 1)
    {
      v19 = 0;
      v20 = (BytePtr + 16);
      v21 = (a2 + 12);
      do
      {
        v22 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v22, 1000000000);
        *(v21 - 3) = CMTimeGetSeconds(&time);
        *(v21 - 1) = *v20 * 0.0039062;
        *v21 = v20[1] * 0.0039062;
        v21[1] = v20[2] * 0.0039062;
        v21[2] = v20[3] * 0.0039062;
        ++v19;
        v20 += 6;
        v21 += 6;
      }

      while (v19 < *a3);
    }
  }

  else
  {
    if (*BytePtr)
    {
      return 4294954515;
    }

    if (v13 >= 1)
    {
      v14 = 0;
      v15 = (a2 + 16);
      v16 = (BytePtr + 20);
      do
      {
        v17 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v17, 1000000000);
        *(v15 - 2) = CMTimeGetSeconds(&time);
        *(v15 - 2) = *(v16 - 1) * 0.0039062;
        v18 = *v16;
        v16 += 4;
        *(v15 - 1) = v18 * 0.0039062;
        *v15 = 0.0;
        v15 += 3;
        ++v14;
      }

      while (v14 < *a3);
    }
  }

  return 0;
}

uint64_t FigMotionClearFocalLengthData(uint64_t a1)
{
  if (a1)
  {
    memset_pattern16((a1 + 484), &unk_43A70, 0xCuLL);
    memset_pattern16((a1 + 496), &unk_43A70, 0xCuLL);
    memset_pattern16((a1 + 508), &unk_43A70, 0xCuLL);
    return 0;
  }

  else
  {
    FigMotionClearFocalLengthData_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionStashQuadraBinningFactor(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  else
  {
    FigMotionStashQuadraBinningFactor_cold_1(&v4);
    return v4;
  }
}

uint64_t FigMotionStashFocalLengthData(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    return 0;
  }

  else
  {
    FigMotionStashFocalLengthData_cold_1(&v4);
    return v4;
  }
}

uint64_t FigMotionUpdateBaseZoomFactorAdjustment(uint64_t a1, uint64_t a2, int a3)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    return 0;
  }

  else
  {
    FigMotionUpdateBaseZoomFactorAdjustment_cold_1(&v4);
    return v4;
  }
}

uint64_t FigMotionComputeBravoTranslation(uint64_t a1, uint64_t a2, int a3, float32x2_t *a4, float32x2_t *a5, float a6, float a7)
{
  _S8 = a6;
  v36 = 0.0;
  if (!FigCFDictionaryGetFloatIfPresent())
  {
    if (!FigCFDictionaryGetFloatIfPresent() && !FigCFDictionaryGetFloatIfPresent())
    {
      FigMotionComputeBravoTranslation_cold_1(&v37);
      return v37;
    }

    v36 = 0.0 * a7;
  }

  v14 = *(a2 + 444);
  v35 = *(a2 + 4 + 8 * v14);
  _D1 = *(a2 + 4 + 8 * a3);
  v16 = BravoCurrentToReferenceMapping_0[3 * v14 + a3];
  v17 = (*(a2 + 4 * v16 + 80) * *(a2 + 40 + 4 * a3)) / *(a2 + 40 + 4 * v14);
  v18 = (*(a2 + 64 + 4 * a3) * _S8) / *(a2 + 64 + 4 * v14);
  v19 = COERCE_FLOAT(*a4) + (v17 * (v18 * *&v35));
  v20 = COERCE_FLOAT(HIDWORD(*a4)) - (COERCE_FLOAT(HIDWORD(*a4)) + (v17 * (v18 * *(&v35 + 1))));
  __asm { FMLA            S4, S8, V1.S[1] }

  v34.f32[0] = COERCE_FLOAT(*a4) + (_S8 * *&_D1);
  v34.i32[1] = _S4;
  v26 = a2 + 48 * v16;
  v27 = COERCE_FLOAT(*a4) - v19;
  *v13.i32 = ((v20 * *(v26 + 144)) + (*(v26 + 140) * v27)) + (*(v26 + 148) * v36);
  v28 = 0;
  if (fabsf(*v13.i32) > 0.00000001 && v36 > 0.00000001)
  {
    v30.i32[0] = *(v26 + 108);
    v31.i32[0] = *(v26 + 112);
    v29 = (v26 + 108);
    v32.i32[0] = v29[2];
    v31.i32[1] = v29[5];
    v30.i32[1] = v29[4];
    v32.i32[1] = v29[6];
    v28 = vsub_f32(vadd_f32(v34, vdiv_f32(vmul_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v31, v20), v30, v27), v32, v36), v36), vdup_lane_s32(v13, 0))), *a4);
  }

  result = 0;
  *a5 = v28;
  return result;
}

void FigMotionComputeQuaternionForTimeStamp(uint64_t a1, void *a2, char *a3, double a4)
{
  v8 = a1 + 0x2000;
  v9 = *(a1 + 10257) == 0;
  if (a2)
  {
    *a2 = 0x3FF0000000000000;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  v10 = 0;
  v11 = flt_439E0[v9];
  v12 = a1 + 8;
  v13 = 1.0;
  v14 = -1;
  do
  {
    v15 = *(v12 + 8 * v10) - a4;
    v16 = fabsf(v15);
    if (v13 > v16)
    {
      v13 = v16;
      v14 = v10;
    }

    ++v10;
  }

  while (v10 != 256);
  if (v13 > v11 && !*(a1 + 10256))
  {
    low_freq_error_logging();
  }

  if (v14 != -1)
  {
    v17 = *(v12 + 8 * v14);
    if (v17 >= a4)
    {
      v23 = (v14 - 1);
      if (v14 + 255 <= 0)
      {
        v23 = -(1 - v14);
      }

      v21 = v23;
      v20 = *(v12 + 8 * v14);
      v17 = *(v12 + 8 * v23);
      v19 = v14;
    }

    else
    {
      if (v14 + 1 <= 0)
      {
        v18 = --(v14 + 1);
      }

      else
      {
        v18 = (v14 + 1);
      }

      v19 = v18;
      v20 = *(v12 + 8 * v18);
      v21 = v14;
    }

    v24 = vabdd_f64(v20, a4);
    v25 = v11;
    v27 = v20 >= a4 && v24 <= v25 && v17 <= a4;
    v28 = vabdd_f64(v17, a4);
    if (v27 && v28 <= v25)
    {
      if (vabdd_f64(v20, v17) > 0.000001)
      {
        v33 = (a4 - v17) / (v20 - v17);
        FigMotionInterpolateQuaternionsByAngle(a1 + 2056 + 32 * v21, (a1 + 2056 + 32 * v19), v33);
        *a2 = v34;
        a2[1] = v35;
        a2[2] = v36;
        a2[3] = v37;
        goto LABEL_34;
      }

      v30 = a1 + 32 * v21;
    }

    else
    {
      v30 = a1 + 32 * v14;
    }

    v31 = (v30 + 2056);
    v32 = v31[1];
    *a2 = *v31;
    *(a2 + 1) = v32;
LABEL_34:
    v22 = 1;
    goto LABEL_35;
  }

  if (!*(v8 + 2064))
  {
    low_freq_error_logging();
  }

  v22 = 0;
LABEL_35:
  *a3 = v22;
}

float64_t FigMotionMultiplyByInverseOfQuaternion(double *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = vnegq_f64(*(a2 + 1));
  v5 = -*(a2 + 3);
  return FigMotionMultiplyQuaternions(&v3, a1);
}

uint64_t FigMotionInitializeQuaternion(void *a1)
{
  if (!a1)
  {
    return 4294954516;
  }

  result = 0;
  *a1 = 0x3FF0000000000000;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t low_freq_error_logging()
{
  FigGetUpTime();
  result = FigHostTimeToNanoseconds();
  if (low_freq_error_logging_last_log_0)
  {
    v1 = (result - low_freq_error_logging_last_log_0) >= 0x3B9ACA00;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (low_freq_error_logging_filtered_0)
    {
      low_freq_error_logging_filtered_0 = 0;
    }

    low_freq_error_logging_last_log_0 = result;
  }

  else
  {
    ++low_freq_error_logging_filtered_0;
  }

  return result;
}

void FigMotionInterpolateQuaternionsByAngle(uint64_t a1, double *a2, float a3)
{
  v18 = *a1;
  v19 = vnegq_f64(*(a1 + 8));
  v20 = -*(a1 + 24);
  v5 = FigMotionMultiplyQuaternions(&v18, a2);
  v8 = v7;
  v10 = v9;
  if (fabs(v5) <= 1.0)
  {
    v11 = v6;
    v12 = acos(v5);
    v13 = sin(v12);
    v14 = a3;
    v15 = v12 * v14;
    if (v13 <= 0.00000001)
    {
      cosval = cos(v15);
    }

    else
    {
      v16 = __sincos_stret(v15);
      cosval = v16.__cosval;
      v14 = v16.__sinval / v13;
    }

    v18 = cosval;
    v19.f64[0] = v8 * v14;
    v19.f64[1] = v10 * v14;
    v20 = v11 * v14;
    FigMotionMultiplyQuaternions(a1, &v18);
  }
}

uint64_t FigMotionComputeLensMovementAndSagForTimeStamp(uint64_t a1, float32x2_t *a2, float32x2_t *a3, int a4, double a5, float a6)
{
  *a2 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  v8 = 0;
  v9 = a1 + (a4 << 12);
  v10 = v9 + 8;
  v11 = 1.0;
  v12 = -1;
  do
  {
    v13 = *(v10 + 8 * v8) - a5;
    v14 = fabsf(v13);
    if (v11 > v14)
    {
      v11 = v14;
      v12 = v8;
    }

    ++v8;
  }

  while (v8 != 512);
  if (v12 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v38 = v6;
  v39 = v7;
  v15 = *(a1 + 8 * a4 + 16392);
  if (!a3 || v15)
  {
    v16 = v9 + 8200;
    v17 = v12;
    v18 = *(v10 + 8 * v12);
    if (v18 >= a5)
    {
      v27 = v12 + 511;
      v20 = -v27 < 0;
      v28 = -v27 & 0x1FF;
      v29 = v27 & 0x1FF;
      if (v20)
      {
        v30 = v29;
      }

      else
      {
        v30 = -v28;
      }

      v25 = v30;
      v24 = v18;
      v18 = *(v10 + 8 * v30);
      v23 = v17;
    }

    else
    {
      v19 = v12 + 1;
      v20 = -v19 < 0;
      v21 = -v19 & 0x1FF;
      v22 = v19 & 0x1FF;
      if (!v20)
      {
        v22 = -v21;
      }

      v23 = v22;
      v24 = *(v10 + 8 * v22);
      v25 = v17;
    }

    if (v24 >= a5 && (vabdd_f64(v24, a5) <= 0.00200000009 ? (v31 = v18 <= a5) : (v31 = 0), v31 && vabdd_f64(v18, a5) <= 0.00200000009))
    {
      if (vabdd_f64(v24, v18) > 0.000001)
      {
        v34 = v24 - v18;
        v35 = (a5 - v18) / v34;
        v36 = vmla_n_f32(vmul_n_f32(*(v16 + 8 * v23), v35), *(v16 + 8 * v25), 1.0 - v35);
        *a2 = v36;
        if (a3)
        {
          *&v34 = 1.0 - v35;
          *a3 = vmla_f32(vmul_n_f32(*(v15 + 8 * v23), v35), vdup_lane_s32(*&v34, 0), *(v15 + 8 * v25));
          goto LABEL_29;
        }

        goto LABEL_36;
      }

      v32 = *(v16 + 8 * v25);
      *a2 = v32;
      if (a3)
      {
        v33 = *(v15 + 8 * v25);
        goto LABEL_28;
      }
    }

    else
    {
      v32 = *(v16 + 8 * v17);
      *a2 = v32;
      if (a3)
      {
        v33 = *(v15 + 8 * v17);
LABEL_28:
        *a3 = v33;
LABEL_29:
        result = 0;
        *a2 = vmul_n_f32(*a2, a6);
        *a3 = vmul_n_f32(*a3, a6);
        return result;
      }
    }

    v36 = v32;
LABEL_36:
    result = 0;
    *a2 = vmul_n_f32(v36, a6);
    return result;
  }

  FigMotionComputeLensMovementAndSagForTimeStamp_cold_1(&v37);
  return v37;
}

double FigMotionPreMultiplyScalingTranslationToTransform(uint64_t a1, int8x16_t a2, int32x4_t a3, float a4, float a5, int8x16_t a6)
{
  a6.i32[0] = *(a1 + 24);
  v6 = a3;
  *&v6.i32[1] = a5;
  v7 = vzip1q_s32(v6, v6);
  v7.i32[2] = a3.i32[0];
  v8 = a2;
  *&v8.i32[1] = a4;
  v9 = vzip1q_s32(v8, v8);
  v9.i32[2] = a2.i32[0];
  a2.i64[0] = *(a1 + 28);
  v10 = vextq_s8(vextq_s8(a6, a6, 4uLL), a2, 0xCuLL);
  v10.i32[3] = v10.i32[0];
  *a1 = vmlaq_f32(vmulq_f32(v10, v7), *a1, v9);
  *a2.i8 = vmla_n_f32(vmul_n_f32(*a2.i8, a5), *(a1 + 16), a4);
  *(a1 + 16) = a2.i64[0];
  return *a2.i64;
}

float FigMotionPostMultiplyScalingTranslationToTransform(float *a1, float a2, float a3, float a4, float a5)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[6];
  v10 = a1[7];
  v11 = (a1[2] + (a5 * v6)) + (a3 * *a1);
  v12 = (a1[5] + (a5 * v8)) + (a3 * v7);
  a1[8] = (a1[8] + (a5 * v10)) + (a3 * v9);
  v13 = v5 * a2;
  a1[2] = v11;
  a1[3] = v7 * a2;
  result = v9 * a2;
  *a1 = v13;
  a1[1] = v6 * a4;
  a1[4] = v8 * a4;
  a1[5] = v12;
  a1[6] = result;
  a1[7] = v10 * a4;
  return result;
}

double FigMotionApplyDigitalZoomToTransform(int a1, float *a2, int8x16_t a3, int32x4_t a4, double a5, double a6, int8x16_t a7)
{
  if (*a3.i32 > 0.0)
  {
    *a7.i32 = 1.0 / *a3.i32;
    if (a1)
    {
      v7 = 1.0 / *a3.i32;
    }

    else
    {
      v7 = *a3.i32;
    }

    v8 = *a4.i64;
    *a4.i32 = (1.0 - v7) * v8;
    v9 = a5;
    v10 = (1.0 - v7) * v9;
    if (a1)
    {
      *a3.i32 = FigMotionPostMultiplyScalingTranslationToTransform(a2, 1.0 / *a3.i32, *a4.i32, *a7.i32, v10);
    }

    else
    {
      *a3.i64 = FigMotionPreMultiplyScalingTranslationToTransform(a2, a3, a4, *a3.i32, v10, a7);
    }
  }

  return *a3.i64;
}

double FigMotionComputeTransformFromRotation(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  *(a4 + 32) = *(a3 + 8);
  *a4 = v6;
  *(a4 + 16) = v7;
  *&v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  FigMotionPostMultiplyScalingTranslationToTransform(a4, 1.0 / *a2, -*&v7 / *a2, 1.0 / *a2, -v8 / *a2);
  v10.i32[0] = *a1;
  v11.i64[0] = *(a1 + 8);
  *v11.i32 = *v11.i64;
  v12 = *(a1 + 16);
  v13 = *a1;

  return FigMotionPreMultiplyScalingTranslationToTransform(a4, v10, v11, v13, v12, v9);
}

double FigMotionAdjustBravoDataForReferenceCamera(uint64_t a1)
{
  if (a1)
  {
    if ((*a1 & 6) != 0)
    {
      _computeExtrinsicMatrixBetweenCamera(a1, 0, 6, 2);
      _computeExtrinsicMatrixBetweenCamera(a1, 5, 4, 2);
      _invertExtrinsicMatrixStoredInBravoData(a1, 2, 1);
      _computeExtrinsicMatrixBetweenCamera(a1, 1, 6, 4);
      _invertExtrinsicMatrixStoredInBravoData(a1, 0, 1);
      _invertExtrinsicMatrixStoredInBravoData(a1, 0, 2);
      result = 0.0;
      *(a1 + 396) = 0u;
      *(a1 + 412) = 0u;
      *(a1 + 428) = 0u;
      *(a1 + 396) = 1065353216;
      *(a1 + 416) = 1065353216;
      *(a1 + 436) = 1065353216;
    }
  }

  return result;
}

uint64_t _computeExtrinsicMatrixBetweenCamera(uint64_t a1, int a2, int a3, int a4)
{
  v4 = 0;
  v5 = a1 + 108;
  v6 = (a1 + 108 + 48 * a3);
  v7 = (a1 + 108 + 48 * a4);
  v8 = v34;
  v9 = v33;
  v10 = v6;
  v11 = v7;
  do
  {
    v12 = 0;
    v13 = v9;
    do
    {
      *&v8[8 * v12] = v10[v12];
      *v13 = v11[v12];
      v13 += 3;
      ++v12;
    }

    while (v12 != 3);
    ++v4;
    v8 += 24;
    ++v9;
    v11 += 4;
    v10 += 4;
  }

  while (v4 != 3);
  v14 = 0;
  v15 = v33;
  do
  {
    v16 = 0;
    v17 = v34;
    do
    {
      v18 = 0;
      v19 = 0.0;
      v20 = v17;
      do
      {
        v21 = *v20;
        v20 += 3;
        v19 = v19 + *&v15[v18] * v21;
        v18 += 8;
      }

      while (v18 != 24);
      *&v32[6 * v14 + 3 + 2 * v16++] = v19;
      ++v17;
    }

    while (v16 != 3);
    ++v14;
    v15 += 24;
  }

  while (v14 != 3);
  v22 = 0;
  v23 = 0;
  v24 = v6[7] - v7[7];
  v25 = v5 + 48 * a2;
  v32[0] = v6[3] - v7[3];
  v32[1] = v24;
  v32[2] = v6[11] - v7[11];
  v26 = v25;
  do
  {
    v27 = 0;
    v28 = (4 * v23) | 3;
    *(v25 + 4 * v28) = 0;
    result = v22;
    do
    {
      v30 = *(&v32[3] + result);
      *(v26 + v27 * 4) = v30;
      v31 = *(v25 + 4 * v28) + *&v33[result] * v32[v27];
      *(v25 + 4 * v28) = v31;
      ++v27;
      result += 8;
    }

    while (v27 != 3);
    ++v23;
    v22 += 24;
    v26 += 16;
  }

  while (v23 != 3);
  return result;
}

float _invertExtrinsicMatrixStoredInBravoData(uint64_t a1, int a2, int a3)
{
  v3 = 0;
  v4 = BravoCurrentToReferenceMapping_0[3 * a3 + a2];
  v5 = (a1 + 108 + 48 * BravoCurrentToReferenceMapping_0[3 * a2 + a3]);
  do
  {
    *(a1 + 108 + 48 * v4 + v3 * 4) = v5[dword_43A1C[v3]];
    ++v3;
  }

  while (v3 != 12);
  v6 = (a1 + 48 * v4 + 120);
  v7 = 3;
  do
  {
    result = -(((*(v6 - 2) * v5[7]) + (*(v6 - 3) * v5[3])) + (*(v6 - 1) * v5[11]));
    *v6 = result;
    v6 += 4;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t FigMotionGetBravoDataFromDictionary(const __CFDictionary *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, kFigCapturePortType_BackFacingCamera);
    if (Value)
    {
      v5 = Value;
      v6 = CFDictionaryGetValue(a1, kFigCapturePortType_BackFacingTelephotoCamera);
      v7 = CFDictionaryGetValue(a1, kFigCapturePortType_BackFacingSuperWideCamera);
      if (v6 | v7)
      {
        v8 = v7;
        memset_pattern16((a2 + 28), &unk_43A60, 0xCuLL);
        memset_pattern16((a2 + 40), &unk_43A60, 0xCuLL);
        *(a2 + 64) = 0x100000001;
        *(a2 + 72) = 1;
        v9 = a2 + 108;
        v10 = 80;
        do
        {
          *(a2 + v10) = 1065353216;
          *v9 = 0uLL;
          *(v9 + 16) = 0uLL;
          *(v9 + 32) = 0uLL;
          *v9 = 1065353216;
          v10 += 4;
          *(v9 + 20) = 1065353216;
          *(v9 + 40) = 1065353216;
          v9 += 48;
        }

        while (v10 != 108);
        if (v6 && (v11 = FigMotionExtractCameraInfo(v6, a2, 1u, 2), v11))
        {
          v17 = v11;
          FigMotionGetBravoDataFromDictionary_cold_1();
        }

        else if (v8 && (v12 = FigMotionExtractCameraInfo(v8, a2, 2u, 4), v12))
        {
          v17 = v12;
          FigMotionGetBravoDataFromDictionary_cold_2();
        }

        else
        {
          CameraInfo = FigMotionExtractCameraInfo(v5, a2, 0, 6);
          if (CameraInfo)
          {
            v17 = CameraInfo;
            FigMotionGetBravoDataFromDictionary_cold_3();
          }

          else
          {
            for (i = 0; i != 3; ++i)
            {
              v15 = 0;
              v16 = dword_43A4C[i];
              do
              {
                *(a2 + 80 + 4 * BravoCurrentToReferenceMapping_0[3 * v16 + dword_43A4C[v15]]) = *(a2 + 28 + 4 * dword_43A4C[v15]) / *(a2 + 28 + 4 * v16);
                ++v15;
              }

              while (v15 != 3);
            }

            return 0;
          }
        }
      }

      else
      {
        FigMotionGetBravoDataFromDictionary_cold_4(&v19);
        return v19;
      }
    }

    else
    {
      FigMotionGetBravoDataFromDictionary_cold_5(&v20);
      return v20;
    }
  }

  else
  {
    FigMotionGetBravoDataFromDictionary_cold_6(&v21);
    return v21;
  }

  return v17;
}

uint64_t FigMotionExtractCameraInfo(const __CFDictionary *a1, uint64_t a2, unsigned int a3, int a4)
{
  v7 = a3;
  if (a1)
  {
    if (FigCFDictionaryGetFloatIfPresent())
    {
      v8 = 0.0;
      if (0.0 <= 1.0e-10)
      {
        v8 = 1.0;
      }

      *(a2 + 28 + 4 * v7) = v8;
      goto LABEL_6;
    }

    FigMotionExtractCameraInfo_cold_1(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_2(&point);
  }

  x_low = LODWORD(point.x);
  if (LODWORD(point.x))
  {
    emitter = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "Fig", "err == 0 ", "bail", 0, "FigMotionProcessingUtilities.c", 2402, x_low);
    return x_low;
  }

LABEL_6:
  Value = CFDictionaryGetValue(a1, kFigCaptureCameraInfoKey_CameraViewMatrix);
  if (Value)
  {
    v10 = Value;
    if (CFDataGetLength(Value) == 48)
    {
      v23.location = 0;
      v23.length = 48;
      CFDataGetBytes(v10, v23, (a2 + 48 * a4 + 108));
      goto LABEL_9;
    }

    FigMotionExtractCameraInfo_cold_3(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_4(&point);
  }

  x_low = LODWORD(point.x);
  if (LODWORD(point.x))
  {
    v21 = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, "Fig", "err == 0 ", "bail", 0, "FigMotionProcessingUtilities.c", 2405, x_low);
    return x_low;
  }

LABEL_9:
  v11 = a2 + 64;
  if (a1)
  {
    if (FigCFDictionaryGetFloatIfPresent())
    {
      x_low = 0;
      *(a2 + 52 + 4 * v7) = 0;
      *(v11 + 4 * v7) = 1;
      goto LABEL_12;
    }

    FigMotionExtractCameraInfo_cold_5(&point);
  }

  else
  {
    FigMotionExtractCameraInfo_cold_6(&point);
  }

  x_low = LODWORD(point.x);
LABEL_12:
  v13 = kFigCaptureCameraInfoKey_OpticalCenterOffsetInPhysicalSensorDimensions;
  if (CFDictionaryContainsKey(a1, kFigCaptureCameraInfoKey_OpticalCenterOffsetInPhysicalSensorDimensions))
  {
    v14 = CFDictionaryGetValue(a1, v13);
    if (v14)
    {
      v15 = a2 + 8 * v7;
      point = CGPointZero;
      CGPointMakeWithDictionaryRepresentation(v14, &point);
      v16 = point;
LABEL_17:
      *(v15 + 4) = vcvt_f32_f64(v16);
      goto LABEL_18;
    }

    FigMotionExtractCameraInfo_cold_7();
  }

  else
  {
    v17 = *(v11 + 4 * v7);
    v18 = CFDictionaryGetValue(a1, kFigCaptureCameraInfoKey_OpticalCenterOffset);
    if (v18)
    {
      v15 = a2 + 8 * v7;
      point = CGPointZero;
      CGPointMakeWithDictionaryRepresentation(v18, &point);
      v16 = vmulq_n_f64(point, v17);
      goto LABEL_17;
    }

    FigMotionExtractCameraInfo_cold_8();
  }

LABEL_18:
  if (x_low)
  {
    FigMotionExtractCameraInfo_cold_9(x_low);
  }

  return x_low;
}

float64_t FigMotionMultiplyQuaternions(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a2[2];
  v8 = a2[3];
  v10 = *a2 * v7 + *a1 * v8 + v3 * v9 - v6 * v4;
  v13 = *a2 * v6 + *a1 * v9 + v7 * v4 - v3 * v8;
  v14 = v10;
  v12.f64[0] = v2 * v5 - v3 * v4 - v6 * v9 - v7 * v8;
  v12.f64[1] = v3 * v5 + v2 * v4 + v6 * v8 - v7 * v9;
  FigMotionNormalizeQuaternion(&v12);
  return v12.f64[0];
}

uint64_t FigMotionNormalizeQuaternion(float64x2_t *a1)
{
  if (a1)
  {
    _Q1 = a1[1];
    _D3 = _Q1.f64[1];
    __asm { FMLA            D2, D3, V1.D[1] }

    v8 = sqrt(_D2);
    if (v8 <= 0.00000001)
    {
      FigMotionNormalizeQuaternion_cold_1(&v12);
      return v12;
    }

    else
    {
      v9 = 0;
      v10 = 1.0 / v8;
      *a1 = vmulq_n_f64(*a1, v10);
      a1[1] = vmulq_n_f64(_Q1, v10);
    }
  }

  else
  {
    FigMotionNormalizeQuaternion_cold_2(&v13);
    return v13;
  }

  return v9;
}

uint64_t FigMotionComputeAverageSpherePosition()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v24 = 0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(v0, kFigCaptureStreamMetadata_ExposureTime);
  if (!Value)
  {
    FigMotionComputeAverageSpherePosition_cold_3(v25);
    return LODWORD(v25[0]);
  }

  CFNumberGetValue(Value, kCFNumberFloat64Type, &valuePtr);
  v7 = CFDictionaryGetValue(v5, kFigCaptureStreamMetadata_FrameRollingShutterSkew);
  if (!v7)
  {
    FigMotionComputeAverageSpherePosition_cold_2(v25);
    return LODWORD(v25[0]);
  }

  CFNumberGetValue(v7, kCFNumberSInt32Type, &v24);
  v8 = v24;
  v9 = valuePtr;
  *v2 = 0;
  v26 = 0;
  *v2 = 0;
  v10 = CFDictionaryGetValue(v5, kFigCaptureStreamMetadata_ISPHallData);
  if (v10)
  {
    ISPHallData = FigMotionGetISPHallData(v10, v25, &v26, 510);
    if (ISPHallData)
    {
      v21 = ISPHallData;
      FigMotionComputeAverageSpherePosition_cold_1(ISPHallData);
      return v21;
    }

    v12 = v26;
    if (v26 >= 1)
    {
      v13 = 0;
      v14 = v4 + v9 * -0.5;
      v15 = v8 / 1000000.0 + v14;
      v16 = &v25[1];
      v17 = v26;
      do
      {
        v18 = *&v16[-1];
        if (v18 >= v14 && v18 <= v15)
        {
          *v2 = vadd_f32(*v16, *v2);
          ++v13;
        }

        v16 += 3;
        --v17;
      }

      while (v17);
      if (v13)
      {
        *&v15 = v13;
        *v2 = vdiv_f32(*v2, vdup_lane_s32(*&v15, 0));
      }

      else
      {
        v20 = v12 - 1;
        if (v25[0] > v15)
        {
          v20 = 0;
        }

        *v2 = *&v25[3 * v20 + 1];
        low_freq_error_logging();
      }
    }
  }

  return 0;
}

float FigMotionAdjustParallaxShiftForScalingFactor(float result, double a2, float a3, float a4)
{
  if (a3 > 0.0 && vabds_f32(a3, a4) > 0.001)
  {
    return result * (a4 / a3);
  }

  return result;
}

uint64_t FigMotionAdjustPointForSphereMovement(uint64_t a1, float64x2_t *a2, float a3, float a4)
{
  if (a1)
  {
    v7 = FigMotionComputeAverageSpherePosition();
    v8 = v7;
    if (v7)
    {
      FigMotionAdjustPointForSphereMovement_cold_1(v7);
    }

    else
    {
      *a2 = vaddq_f64(*a2, vcvtq_f64_f32(vmul_n_f32(0, a3 * a4)));
    }
  }

  else
  {
    FigMotionAdjustPointForSphereMovement_cold_2(&v10);
    return v10;
  }

  return v8;
}

uint64_t FigMotionMapPointFromRawToBuffer(const __CFDictionary *a1, uint64_t a2, int a3, int a4, float64x2_t *a5, float64_t a6, float64_t a7, float a8)
{
  if (a1 && a5)
  {
    size = CGRectZero.size;
    origin = CGRectZero.origin;
    v32 = CGRectZero.origin;
    v33 = size;
    SensorValidCropRect = FigMotionGetSensorValidCropRect(a1, &v32);
    v14 = SensorValidCropRect;
    if (SensorValidCropRect)
    {
      FigMotionMapPointFromRawToBuffer_cold_1(SensorValidCropRect);
    }

    else
    {
      FigCFDictionaryGetCGRectIfPresent();
      v35.origin = origin;
      v35.size = size;
      v36.origin.x = CGRectZero.origin.x;
      v36.origin.y = CGRectZero.origin.y;
      v36.size.width = CGRectZero.size.width;
      v36.size.height = CGRectZero.size.height;
      if (CGRectEqualToRect(v35, v36))
      {
        v15 = -1;
      }

      else
      {
        v15 = 0;
      }

      v16 = vdupq_n_s64(v15);
      v17.i64[0] = a2;
      v17.i64[1] = SHIDWORD(a2);
      v18 = vbslq_s8(v16, vcvtq_f64_s64(v17), size);
      __asm { FMOV            V1.2D, #-1.0 }

      v17.i64[0] = a3;
      v17.i64[1] = a4;
      __asm { FMOV            V5.2D, #0.5 }

      v25 = vmlaq_f64(vbicq_s8(origin, v16), _Q5, vaddq_f64(v18, _Q1));
      v26 = vmlaq_f64(v32, _Q5, vaddq_f64(v33, _Q1));
      _Q5.f64[0] = a6;
      _Q5.f64[1] = a7;
      *a5 = vmlaq_f64(v25, vcvtq_f64_s64(v17), vmulq_n_f64(vsubq_f64(_Q5, v26), a8));
    }
  }

  else
  {
    FigMotionMapPointFromRawToBuffer_cold_2(&v34);
    return v34;
  }

  return v14;
}

uint64_t FigMotionComputeRawSensorCenterInBuffer(const __CFDictionary *a1, uint64_t a2, int a3, int a4, float64x2_t *a5, float a6)
{
  if (a1 && a5)
  {
    FigCFDictionaryGetIntIfPresent();
    FigMotionComputeRawSensorCenterInBuffer_cold_2(&v7);
  }

  else
  {
    FigMotionComputeRawSensorCenterInBuffer_cold_3(&v7);
  }

  return v7;
}

uint64_t FigMotionComputeParallaxShift(uint64_t a1, uint64_t a2, float a3, float a4, float a5, uint64_t a6, int a7, uint64_t a8)
{
  v27 = NAN;
  if (a2)
  {
    v14 = *(a2 + 524);
  }

  else
  {
    v14 = 0.0;
  }

  *a8 = 0;
  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
  v16 = FigCFDictionaryGetFloatIfPresent();
  result = FigCFDictionaryGetFloatIfPresent();
  if (v16)
  {
    v18 = FloatIfPresent == 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = v18 || a7 != 0;
  if (a2 && (v20 & 1) != 0)
  {
    v21 = a2 + 4 * *(a2 + 448);
    v22 = *(v21 + 484);
    v27 = *(v21 + 496);
    v23 = 1.0;
  }

  else
  {
    v23 = 1.0;
    v22 = NAN;
  }

  v24 = v22 + -10.0;
  v25 = 0.0;
  if (v27 > 0.0 && v24 > v27)
  {
    v25 = ((v23 * NAN) * a5) / fmaxf(((v24 * v27) / (v24 - v27)) / 1000.0, v14);
  }

  *a8 = v25 * a3;
  *(a8 + 4) = v25 * a4;
  return result;
}

uint64_t FigMotionHardwareAvailable()
{
  v4 = 0u;
  v5 = 0u;
  *__big = 0u;
  v3 = 0u;
  v1 = 64;
  if ((FigMotionHardwareAvailable_checked & 1) == 0)
  {
    FigMotionHardwareAvailable_available = 1;
    if (!sysctlbyname("hw.model", __big, &v1, 0, 0) && strnstr(__big, "DEV", 0x40uLL))
    {
      FigMotionHardwareAvailable_available = 0;
    }

    FigMotionHardwareAvailable_checked = 1;
  }

  return FigMotionHardwareAvailable_available;
}

uint64_t GVSApplyDistortionToTransforms(int32x2_t *a1, id *a2, uint64_t a3)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, v42, v43, v45, v46, v49, v50, a3);
    v37 = OUTLINED_FUNCTION_2();
    v38 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v37, 4294954516, "(Fig)", 169, v3);
LABEL_26:
    v35 = v38;
    v8 = 0;
    v6 = 0;
    goto LABEL_22;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, v42, v43, v45, v46, v49, v50, a3);
    v39 = OUTLINED_FUNCTION_2();
    v38 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v39, 4294954516, "(Fig)", 170, v3);
    goto LABEL_26;
  }

  if (!a3)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_1();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, v42, v43, v45, v46, v49, v50, 0);
    v40 = OUTLINED_FUNCTION_2();
    v38 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v40, 4294954516, "(Fig)", 171, v3);
    goto LABEL_26;
  }

  v6 = *a2;
  v7 = a2[1];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isValid];
    if (v6)
    {
LABEL_6:
      v10 = [v6 isValid];
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:
  if ((v9 | v10))
  {
    [v8 distortionCenter];
    v52 = v11;
    [v8 distortionCenter];
    v44 = v12;
    [v6 distortionCenter];
    v47 = v13;
    [v6 distortionCenter];
    v15 = a1[7].i32[0];
    if (v15 >= 1)
    {
      v16 = 0;
      v17 = 0;
      v18 = vadd_s32(vadd_s32(a1[1], a1[2]), -1);
      v19 = v52;
      *(&v20 + 1) = *(&v47 + 1);
      v21 = v14;
      v22 = a1[6].i32[1];
      v48 = HIDWORD(*&a1[1]);
      v23 = a1[1];
      do
      {
        if (v22 >= 1)
        {
          v24 = 0;
          v25 = __PAIR64__(v48, v23);
          v26 = (a3 + 36 * v17);
          do
          {
            *&v20 = vmin_s32(v25, v18);
            v53 = v20;
            if (v9)
            {
              [v8 computeInverseScalingAtPoint:COERCE_DOUBLE(vcvt_f32_s32(*&v20))];
              *v27.i64 = v19;
              FigMotionApplyDigitalZoomToTransform(1, v26, v28, v27, v44, v29, v30);
              v20 = v53;
            }

            if (v10)
            {
              v54 = SDWORD1(v20);
              v55 = v20;
              GVSComputePerspectiveProjectedPoint(v26, &v55, &v54, v20, SDWORD1(v20));
              [v6 computeScalingAtPoint:{COERCE_DOUBLE(__PAIR64__(LODWORD(v54), LODWORD(v55)))}];
              *v31.i64 = *&v47;
              FigMotionApplyDigitalZoomToTransform(0, v26, v32, v31, v21, v33, v34);
              v20 = v53;
            }

            ++v24;
            v22 = a1[6].i32[1];
            v25.i32[0] = v20;
            v25.i32[1] = a1[7].i32[1] + DWORD1(v20);
            v26 += 9;
            ++v17;
          }

          while (v24 < v22);
          v15 = a1[7].i32[0];
          v23 = v20;
        }

        ++v16;
        v23 += a1[8].u32[0];
      }

      while (v16 < v15);
    }
  }

  v35 = 0;
LABEL_22:

  return v35;
}

void GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v11, v12, v13, v14);
  OUTLINED_FUNCTION_5();
  *v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
}

void GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v11, v12, v13, v14);
  OUTLINED_FUNCTION_5();
  *v2 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractGDCPolynomialFromCameraInfoByPortType_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSCheckDistortedTransformFits_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSEstimatePaddingForDistortedTransformFits_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSEstimatePaddingForDistortedTransformFits_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_finishPendingProcessing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 24))
  {
    return 0;
  }

  v3 = DerivedStorage;
  v4 = DerivedStorage + 28672;
  *(DerivedStorage + 25) = 1;
  v5 = *(DerivedStorage + 29392);
  v6 = (v5 - 1);
  if (v5 < 1)
  {
    StabilizedSampleBuffer = 0;
LABEL_46:
    v51 = *(v3 + 88);
    if (v51)
    {
      AffineTransformFinish(v51);
      [*(v3 + 30144) forceMetalCachesFlush];
      [*(v3 + 30152) forceMetalCachesFlush];
    }

    v52 = *(v3 + 112);
    if (v52)
    {
      [v52 finishProcessing];
    }

    v53 = *(v3 + 30064);
    if (v53)
    {
      [v53 finishProcessing];
    }

    v54 = *(v3 + 30128);
    if (v54)
    {
      [v54 finishProcessing];
    }

    v55 = *(v3 + 30136);
    if (v55)
    {
      [v55 finishProcessing];
    }

    if (*(v3 + 8))
    {
      sbp_emitPendingFrames(a1, 0, 0);
    }

    if (*(v4 + 720))
    {
      v56 = *(v4 + 724);
      if (v56 >= 1)
      {
        for (i = 0; i < v56; ++i)
        {
          v58 = *(*(v3 + 29368) + 8 * i);
          if (v58)
          {
            CFRelease(v58);
            *(*(v3 + 29368) + 8 * i) = 0;
            v56 = *(v4 + 724);
          }
        }
      }
    }

    _resetFirstFrameParameters(v3);
    *(v3 + 25) = 0;
    v59 = *(v3 + 29696);
    if (v59)
    {
      fclose(v59);
      *(v3 + 29696) = 0;
    }

    return StabilizedSampleBuffer;
  }

  else
  {
    v7 = 0;
    v119 = DerivedStorage + 29824;
    v8 = DerivedStorage + 30024;
    v113 = kFigCaptureVideoStabilizationOverscanAnalyticsKey_AverageLuxValue;
    v9 = DerivedStorage + 29992;
    v123 = kFigCaptureVideoStabilizationOverscanAnalyticsKey_PortIndex;
    v109 = kFigCaptureVideoStabilizationOverscanAnalyticsKey_OverscanArray;
    key = kFigVideoStabilizationSampleBufferAttachmentKey_OverscanAnalytics;
    v107 = kFigCaptureVideoDeghostingStatisticsKey_Enabled;
    v106 = kFigCaptureVideoDeghostingStatisticsKey_Version;
    v105 = kFigCaptureVideoDeghostingStatisticsKey_AverageGhostArea;
    v104 = kFigCaptureVideoDeghostingStatisticsKey_AverageGhostCount;
    v103 = kFigCaptureVideoDeghostingStatisticsKey_OpticalCenterOffsetMag;
    v102 = kFigCaptureVideoDeghostingStatisticsKey_OpticalCenterOffsetX;
    v101 = kFigCaptureVideoDeghostingStatisticsKey_OpticalCenterOffsetY;
    v100 = kFigCaptureVideoDeghostingStatisticsKey_OpticalCenterEstConfidence;
    v99 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector1Precision;
    v98 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector1Recall;
    v97 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector2Precision;
    v96 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector2Recall;
    v95 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector3Precision;
    v94 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector3Recall;
    v93 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector4Precision;
    v92 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector4Recall;
    v91 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector5Precision;
    v90 = kFigCaptureVideoDeghostingStatisticsKey_LightweightDetector5Recall;
    v89 = kFigCaptureVideoDeghostingSampleBufferAttachmentKey_VideoDeghostingStatistics;
    v112 = a1;
    v111 = *(DerivedStorage + 29392);
    v110 = DerivedStorage + 28672;
    v116 = v5 - 1;
    while (1)
    {
      cf = 0;
      if (([*(v3 + 29400) centerIndex] & 0x80000000) != 0)
      {
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_23();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v63, v64, v65, v67, LODWORD(v69), v71, v73, v74);
        v61 = OUTLINED_FUNCTION_42();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v61, 4294954511, "<<<< GyroVideoStabilizationV2 >>>>", 9764, v6);
      }

      v122 = v7;
      v10 = [*(v3 + 29400) centerIndex];
      if (v10 >= [*(v3 + 29400) size])
      {
        break;
      }

      StabilizedSampleBuffer = sbp_gvs_gaussianAverageGetStabilizedSampleBuffer(v3, &cf);
      v11 = v122;
      if (v122 == v6)
      {
        v12 = 0;
        v13 = 0;
        v14 = v119;
        do
        {
          if (*(v8 + 4 * v12))
          {
            v15 = 0;
            v16 = 0;
            do
            {
              v16 = (*(v14 + v15) + v16);
              v15 += 4;
            }

            while (v15 != 28);
            if (v16 >= 1)
            {
              for (j = 0; j != 28; j += 4)
              {
                *(v14 + j) = *(v14 + j) / v16;
              }

              v13 += v16;
            }
          }

          ++v12;
          v14 += 28;
        }

        while (v12 != 6);
        if (v13 >= 1)
        {
          v18 = 0;
          v19 = v13;
          do
          {
            *(v9 + v18) = *(v9 + v18) / v19;
            v18 += 4;
          }

          while (v18 != 28);
          *(v4 + 1348) = *(v4 + 1348) / v19;
        }

        v20 = cf;
        v21 = +[NSMutableDictionary dictionary];
        if (v21)
        {
          target = v20;
          v22 = v21;
          v117 = _createNSArray(v3 + 29992);
          [v22 setObject:? forKeyedSubscript:?];
          v23 = [NSNumber numberWithUnsignedInt:*(v4 + 1348)];
          [v22 setObject:v23 forKeyedSubscript:v113];

          v24 = +[NSMutableArray array];
          if (v24)
          {
            v25 = 0;
            v26 = v119;
            do
            {
              v27 = *(v8 + v25);
              if (v27)
              {
                v28 = +[NSMutableDictionary dictionary];
                if (v28)
                {
                  v29 = (v27 >> 16);
                  v30 = [NSNumber numberWithInt:v27];
                  [v28 setObject:v30 forKeyedSubscript:v123];

                  v31 = [NSNumber numberWithInt:v29];
                  [OUTLINED_FUNCTION_39() setObject:? forKeyedSubscript:?];

                  v32 = _createNSArray(v26);
                  [OUTLINED_FUNCTION_39() setObject:? forKeyedSubscript:?];
                  [v24 addObject:v28];
                }
              }

              v25 += 4;
              v26 += 28;
            }

            while (v25 != 24);
            v4 = v110;
            a1 = v112;
            v5 = v111;
            if ([v24 count])
            {
              [v22 setObject:v24 forKeyedSubscript:v109];
              CMSetAttachment(target, key, v22, 1u);
            }
          }

          v11 = v122;
          v21 = v22;
        }

        v33 = *(v3 + 30064);
        v34 = 30092;
        if (v33 == *(v3 + 30072))
        {
          v34 = 30088;
        }

        v6 = v116;
        if (*(v3 + v34) == 3 && v33 == *(v3 + 30080) && *(v4 + 1376) == 1)
        {
          if (v33)
          {
            v35 = cf;
            objc_msgSend_statistics(v33);
            v36 = v127;
            if (v127 != 0.0)
            {
              v37 = v126;
              v38 = v128;
              v83 = v130;
              v85 = v129;
              v39 = v132;
              v40 = *&v135;
              v66 = *&v136;
              v68 = *&v137;
              v41 = v138;
              v70 = v139;
              v72 = v134;
              v73 = v140;
              v42 = v141;
              v75 = v142;
              v76 = v133;
              v78 = v143;
              v79 = v131;
              v43 = v144;
              v81 = v145;
              v82 = v146;
              v125[0] = v107;
              v120 = [NSNumber numberWithBool:*(v4 + 1376)];
              v126 = *&v120;
              v125[1] = v106;
              [NSNumber numberWithInt:3];
              v118 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v127 = v118;
              v125[2] = v105;
              targeta = [NSNumber numberWithDouble:v37];
              v128 = *&targeta;
              v125[3] = v104;
              v88 = [NSNumber numberWithDouble:v36];
              v129 = *&v88;
              v125[4] = v103;
              v87 = [NSNumber numberWithDouble:v38];
              v130 = *&v87;
              v125[5] = v102;
              v86 = [NSNumber numberWithDouble:v85];
              v131 = *&v86;
              v125[6] = v101;
              [NSNumber numberWithDouble:v83];
              v84 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v132 = v84;
              v125[7] = v100;
              [NSNumber numberWithDouble:v79];
              v80 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v133 = v80;
              v125[8] = v99;
              [NSNumber numberWithDouble:v39 / (v39 + v76)];
              v77 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v134 = v77;
              v125[9] = v98;
              [NSNumber numberWithDouble:v39 / (v39 + v72)];
              *&v71 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v135 = v71;
              v125[10] = v97;
              [NSNumber numberWithDouble:v40 / (v40 + v66)];
              *&v65 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v136 = v65;
              v125[11] = v96;
              [NSNumber numberWithDouble:v40 / (v40 + v68)];
              *&v67 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v137 = v67;
              v125[12] = v95;
              [NSNumber numberWithDouble:v41 / (v41 + v70)];
              v69 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v138 = v69;
              v125[13] = v94;
              [NSNumber numberWithDouble:v41 / (v41 + *&v73)];
              v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v139 = v44;
              v125[14] = v93;
              [NSNumber numberWithDouble:v42 / (v42 + v75)];
              v74 = v35;
              *&v45 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v140 = v45;
              v125[15] = v92;
              [NSNumber numberWithDouble:v42 / (v42 + v78)];
              v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v141 = v46;
              v125[16] = v91;
              [NSNumber numberWithDouble:v43 / (v43 + v81)];
              v47 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v142 = v47;
              v125[17] = v90;
              [NSNumber numberWithDouble:v43 / (v43 + v82)];
              v48 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v143 = v48;
              v49 = [NSDictionary dictionaryWithObjects:&v126 forKeys:v125 count:18];

              v11 = v122;
              v5 = v111;

              a1 = v112;
              CMSetAttachment(v74, v89, v49, 1u);

              v6 = v116;
            }
          }
        }
      }

      v50 = cf;
      if (*(v3 + 8))
      {
        sbp_emitPendingFrames(a1, StabilizedSampleBuffer, cf);
        StabilizedSampleBuffer = 0;
        v50 = cf;
      }

      if (v50)
      {
        CFRelease(v50);
      }

      ++*(v3 + 36);
      v7 = v11 + 1;
      if (v7 == v5)
      {
        goto LABEL_46;
      }
    }

    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_23();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v63, v64, v65, v67, LODWORD(v69), v71, v73, v74);
    v62 = OUTLINED_FUNCTION_42();
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v62, 4294954511, "<<<< GyroVideoStabilizationV2 >>>>", 9765, v6);
  }
}

void *_loadAndConfigureVideoDeghosting(void *a1, void *a2, void *a3, uint64_t a4, unsigned int *a5)
{
  v10 = a1;
  v36 = a2;
  v11 = a3;
  v12 = [v11 objectForKeyedSubscript:@"Version"];
  *a5 = [v12 intValue];

  v13 = [NSString stringWithFormat:@"%@V%d", @"VideoDeghosting", *a5];
  if (a4 < 1 || SHIDWORD(a4) <= 0)
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v29, v33, v35);
    v17 = 0;
    v15 = 0;
    v16 = 0;
    v24 = 0;
    v21 = 0;
LABEL_17:
    v22 = v36;
    goto LABEL_12;
  }

  v15 = [NSString stringWithFormat:@"%@/%@.bundle", @"/System/Library/VideoProcessors", v13];
  v16 = [NSString stringWithFormat:@"CMI%@V%d", @"VideoDeghosting", *a5];
  v17 = [NSBundle bundleWithPath:v15];
  if (!v17)
  {
    v18 = [NSString stringWithFormat:@"./%@.bundle", v13];
    v19 = [NSBundle bundleWithPath:v18];
    if (!v19)
    {
      fig_log_get_emitter();
      LODWORD(v30) = 0;
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_15();
      FigDebugAssert3(v27, v30, v5);

      fig_log_get_emitter();
      LODWORD(v31) = 0;
      v28 = OUTLINED_FUNCTION_39();
      FigDebugAssert3(v28, v31, v5);
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v34, v35);
      v17 = 0;
      v24 = 0;
      v21 = 0;
      goto LABEL_17;
    }

    v17 = v19;
  }

  v37 = 0;
  v20 = [v17 loadAndReturnError:&v37];
  v21 = v37;
  if (!v20)
  {
    v24 = 0;
    goto LABEL_17;
  }

  v22 = v36;
  v23 = [objc_alloc(NSClassFromString(v16)) initWithCommandQueue:v36 imageDimensions:a4 tuningParameters:v11];
  v24 = v23;
  if (!v23 || [v23 prepareToProcess:0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_37();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  else
  {
    [v24 setCameraInfoByPortType:v10];
  }

LABEL_12:
  v25 = v24;

  return v24;
}

uint64_t sbp_setCameraExtrinsicAlignment(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length] == &stru_20.fileoff)
  {
    v4 = [v3 bytes];
    v14 = 0u;
    v15 = 0u;
    v11 = GVSQuaternionFromRotationMatrix(v4, &v14, 0, v5, v6, v7, v8, v9, v10);
    if (!v11)
    {
      v12 = v15;
      *(a1 + 360) = v14;
      *(a1 + 376) = v12;
      *(a1 + 329) = 1;
    }
  }

  else
  {
    fig_log_get_emitter();
    v11 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, DWORD2(v14), v15);
  }

  return v11;
}

void _getPresentationTimeStampForSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  *&v21->value = *&kCMTimeInvalid.value;
  v21->epoch = kCMTimeInvalid.epoch;
  if (v19)
  {
    v24 = kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp;
    v33 = v23;
    v25 = OUTLINED_FUNCTION_29();
    v27 = CMGetAttachment(v25, v26, 0);
    v28 = v33;
    if (!v28)
    {
      v28 = CMGetAttachment(v19, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
    }

    v29 = [v28 objectForKeyedSubscript:v24];

    if (v29)
    {
      v30 = [v28 objectForKeyedSubscript:v24];
      CMTimeMakeFromDictionary(v21, v30);
    }

    else if (v27)
    {
      CMTimeMakeFromDictionary(v21, v27);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(v21, v19);
    }
  }

  OUTLINED_FUNCTION_40();
}

id _shouldBypassSmartStyle(const void *a1)
{
  if (!a1)
  {
    v3 = 0;
    v2 = 0;
    goto LABEL_13;
  }

  v1 = CMGetAttachment(a1, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  v2 = v1;
  if (!v1)
  {
    v3 = 0;
    goto LABEL_13;
  }

  v3 = [v1 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];

  if (!v3)
  {
LABEL_13:
    v7 = &dword_0 + 1;
    goto LABEL_10;
  }

  v4 = CMGetAttachment(v3, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v3 = v4;
  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleRenderingBypassedOverride];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 BOOLValue];
    }

    else
    {
      v8 = [v3 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleIsIdentityCoefficients];
      v7 = [v8 BOOLValue];
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_10:

  return v7;
}

uint64_t _runSmartStyleFilterForwardLearning(uint64_t a1, void *a2)
{
  memset(&timingArrayOut, 0, sizeof(timingArrayOut));
  v52 = 0;
  cf = 0;
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v13 = 0;
LABEL_52:
    PixelBufferFromPool = 4294954516;
    goto LABEL_38;
  }

  v5 = (a1 + 27148);
  if (!*(a1 + 30108))
  {
    v13 = 0;
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_38();
  if (v18)
  {
    _getPresentationTimeStampForSampleBuffer(a2, 0, v6, v7, v8, v9, v10, v11, v44, v47, v49, *v51, *&v51[8], *&v51[16], v52, cf, timingArrayOut.duration.value, *&timingArrayOut.duration.timescale);
    time = *v51;
    CMTimeGetSeconds(&time);
    v42 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_24(v42, 72, v43);
  }

  v12 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v13 = v12;
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v47, v49, *v51, *&v51[8], *&v51[16], v52, cf);
    goto LABEL_52;
  }

  v14 = kFigCaptureSampleBufferMetadata_SmartStyleLearnedCoefficientsAreFiltered;
  v15 = [v12 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleLearnedCoefficientsAreFiltered];
  v16 = [v15 BOOLValue];

  if (v16)
  {
LABEL_50:
    PixelBufferFromPool = 0;
    goto LABEL_38;
  }

  v17 = *v5;
  if (!*v5)
  {
    v24 = _enqueueCoefficientsForSmartStyleFilterForwardLearning(a1, a2);
    if (v24)
    {
LABEL_47:
      PixelBufferFromPool = v24;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      LODWORD(v44) = PixelBufferFromPool;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44);
      goto LABEL_38;
    }

    v26 = 3;
LABEL_25:
    if (*(a1 + 25))
    {
      if (*v5 == 2)
      {
        v27 = 66000;
      }

      else
      {
        v27 = 0;
      }

      if ((*v5 | 2) == 3)
      {
        v28 = 66000;
      }

      else
      {
        v28 = v27;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients;
    v30 = [*(a1 + 48) objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients];
    v31 = [*(a1 + 56) objectForKeyedSubscript:v29];
    PixelBufferFromPool = sbp_gvs_getPixelBufferFromPool(v30, v31, 0, v28, 0, 0, &v52);

    if (PixelBufferFromPool)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_9();
      LODWORD(v44) = PixelBufferFromPool;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v47, v2, *v51, *&v51[8], *&v51[16], v52, cf);
      goto LABEL_38;
    }

    v33 = [*(a1 + 30136) utilities];
    _getPresentationTimeStampForSampleBuffer(a2, v13, v34, v35, v36, v37, v38, v39, v44, v47, v2, *v51, *&v51[8], *&v51[16], v52, cf, timingArrayOut.duration.value, *&timingArrayOut.duration.timescale);
    PixelBufferFromPool = [v33 filterCoefficientsForFrameWithMetadata:v13 pts:&time filterType:v26 toPixelBuffer:v52];

    if (!PixelBufferFromPool)
    {
      SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(a2, 1, &timingArrayOut, 0);
      if (SampleTimingInfoArray)
      {
        PixelBufferFromPool = SampleTimingInfoArray;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_9();
        LODWORD(v45) = PixelBufferFromPool;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45);
        goto LABEL_38;
      }

      PixelBufferFromPool = sbp_internalCreateSampleBufferWithNewPixelBuffer(v52, *(a1 + 64), v29, &timingArrayOut, &cf);
      if (!PixelBufferFromPool)
      {
        [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:v14];
        _setAttachedMediaToSampleBuffer(a2, v29, cf);
        goto LABEL_38;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    LODWORD(v45) = PixelBufferFromPool;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v45);
    goto LABEL_38;
  }

  v18 = v17 == 5 || v17 == 2;
  if (!v18 || (v19 = *(a1 + 30192)) == 0)
  {
LABEL_22:
    v26 = 1;
    goto LABEL_25;
  }

  Count = CFArrayGetCount(v19);
  if (Count < 1)
  {
LABEL_20:
    v25 = *(a1 + 30192);
    if (v25)
    {
      CFRelease(v25);
      *(a1 + 30192) = 0;
    }

    goto LABEL_22;
  }

  v21 = 0;
  v22 = Count & 0x7FFFFFFF;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 30192), v21);
    if (!ValueAtIndex)
    {
      break;
    }

    v24 = _enqueueCoefficientsForSmartStyleFilterForwardLearningFromCoefficientsSampleBuffer(a1, ValueAtIndex, v13);
    if (v24)
    {
      goto LABEL_47;
    }

    if (v22 == ++v21)
    {
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_25();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44, v47, v2, *v51, *&v51[8], *&v51[16], v52, cf);
  OUTLINED_FUNCTION_1();
  PixelBufferFromPool = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v46, v48, v50);
LABEL_38:
  OUTLINED_FUNCTION_38();
  if (v18)
  {
    OUTLINED_FUNCTION_24(822152386, 72, PixelBufferFromPool);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v52)
  {
    CFRelease(v52);
  }

  return PixelBufferFromPool;
}

uint64_t _runSmartStyleApplyOnUnstabilizedImage(uint64_t a1, void *a2)
{
  v4 = v3;
  if (!a1 || !a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    OUTLINED_FUNCTION_31();
    v16 = 0;
LABEL_34:
    v41 = 0;
LABEL_36:
    v31 = 4294954516;
    goto LABEL_23;
  }

  v7 = a1 + 28672;
  OUTLINED_FUNCTION_38();
  if (v14)
  {
    _getPresentationTimeStampForSampleBuffer(a2, 0, v8, v9, v10, v11, v12, v13, v35, v36, v37, v38, v40, *v42, *&v42[8], *&v42[16], time.value, *&time.timescale);
    time = *v42;
    CMTimeGetSeconds(&time);
    v33 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_24(v33, 70, v34);
  }

  if (!*(v7 + 1432))
  {
    OUTLINED_FUNCTION_31();
    v16 = 0;
LABEL_31:
    v41 = 0;
    v31 = 0;
    goto LABEL_23;
  }

  v15 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v16 = v15;
  if (!v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35, v36, v37, v38, v40, *v42, *&v42[8], *&v42[16]);
    v2 = 0;
LABEL_33:
    v4 = 0;
    goto LABEL_34;
  }

  v17 = kFigCaptureSampleBufferMetadata_SmartStyleAppliedOnThisFrame;
  v18 = [v15 objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_SmartStyleAppliedOnThisFrame];
  v2 = [v18 BOOLValue];

  if (v2)
  {
    OUTLINED_FUNCTION_31();
    goto LABEL_31;
  }

  v2 = CMGetAttachment(a2, kFigSampleBufferAttachmentKey_AttachedMedia, 0);
  if (!v2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35, v36, v37, v38, v40, *v42, *&v42[8], *&v42[16]);
    goto LABEL_33;
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  v41 = v2;
  if (!ImageBuffer || (v20 = ImageBuffer, [v2 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingUnstyledThumbnail], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    OUTLINED_FUNCTION_31();
    goto LABEL_36;
  }

  v39 = v16;
  v22 = CMSampleBufferGetImageBuffer(v21);
  if (!v22 || (v23 = v22, [v2 objectForKeyedSubscript:kFigCaptureSampleBufferAttachedMediaKey_SmartStyleStreamingLearnedCoefficients], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24) || (v25 = CMSampleBufferGetImageBuffer(v24)) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_6();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    OUTLINED_FUNCTION_31();
    v31 = 4294954516;
LABEL_39:
    v16 = v39;
    goto LABEL_23;
  }

  v26 = v25;
  v27 = kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent;
  v2 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_SmartStyleMetalEvent, 0);
  v28 = objc_alloc_init(*(a1 + 30160));
  v4 = v28;
  if (!v28)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35, v36, v3, v39, v41, *v42, *&v42[8], *&v42[16]);
    v31 = 4294954510;
    goto LABEL_39;
  }

  [v28 setMetalSharedEvent:v2];
  [v4 setInputUnstyledPixelBuffer:v20];
  [v4 setInputUnstyledThumbnailPixelBuffer:v23];
  v16 = v39;
  [v4 setInputMetadataDict:v39];
  [v4 setInputStyleCoefficientsPixelBuffer:v26];
  [v4 setOutputStyledPixelBuffer:v20];
  updated = _updateSmartStyleGlobalMixFactor(a1, v39);
  if (updated || (LODWORD(v30) = *(v7 + 1540), [v4 setGlobalLinearSystemMixFactor:v30], objc_msgSend(*(a1 + 30136), "setInputOutput:", v4), updated = objc_msgSend(*(a1 + 30136), "process"), updated) || (updated = objc_msgSend(*(a1 + 30136), "finishProcessing"), updated) || (objc_msgSend(v39, "setObject:forKeyedSubscript:", &__kCFBooleanTrue, v17), !*(v7 + 1434)) && (updated = _removeSmartStyleAttachments(a1, a2), updated))
  {
    v31 = updated;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_9();
    LODWORD(v35) = v31;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35);
  }

  else
  {
    if (v2)
    {
      CMRemoveAttachment(a2, v27);
    }

    v31 = 0;
  }

LABEL_23:
  OUTLINED_FUNCTION_38();
  if (v14)
  {
    OUTLINED_FUNCTION_24(822152386, 70, v31);
  }

  return v31;
}

void sbp_gvs_extractDistortionData(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, float64x2_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v14 = v13;
  if (!a5)
  {
    OUTLINED_FUNCTION_17();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_18();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v47, v50, v53, v56, LODWORD(a6.f64[0]), *&a6.f64[1], v59.i64[0], v59.i32[2]);
    OUTLINED_FUNCTION_17();
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<<<< GyroVideoStabilizationV2 >>>>", 5991, 0);
LABEL_41:
    v24 = 0;
    v21 = 0;
    v15 = 0;
    goto LABEL_37;
  }

  if (!v11 || !v12 || !a3)
  {
    OUTLINED_FUNCTION_17();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_18();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v47, v50, v53, v56, LODWORD(a6.f64[0]), *&a6.f64[1], v59.i64[0], v59.i32[2]);
    OUTLINED_FUNCTION_17();
    v44 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 4294954516, "<<<< GyroVideoStabilizationV2 >>>>", 5992, a5);
    goto LABEL_41;
  }

  if (!v13)
  {
    OUTLINED_FUNCTION_17();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_18();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v47, v50, v53, v56, LODWORD(a6.f64[0]), *&a6.f64[1], v59.i64[0], v59.i32[2]);
    OUTLINED_FUNCTION_17();
    v45 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v45, 4294954516, "<<<< GyroVideoStabilizationV2 >>>>", 5993, a5);
    goto LABEL_41;
  }

  v15 = [v12 objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  *(a5 + 208) = 0;
  *(a5 + 224) = 0;
  *(a5 + 232) = 0;
  v16 = [v14 allKeys];
  v17 = [v16 containsObject:v15];

  if (!v17 || !*a5 && !*(a5 + 8))
  {
    goto LABEL_43;
  }

  if (([v15 isEqualToString:kFigCapturePortType_BackFacingSuperWideCamera] & 1) != 0 || objc_msgSend(v15, "isEqualToString:", kFigCapturePortType_FrontFacingSuperWideCamera))
  {
    *v18.i32 = (*(a3 + 96) * 12.0) / 2464.0;
    *(a5 + 224) = vdupq_lane_s32(v18, 0);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  memset(v62, 0, 32);
  memset(v61, 0, sizeof(v61));
  v20 = GVSExtractGDCPolynomialFromCameraInfoByPortType(v11, v12, v61);
  if (v20)
  {
    v46 = v20;
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46, v6, v53, v56, LODWORD(a6.f64[0]), *&a6.f64[1], v59.i64[0], v59.i32[2]);
LABEL_43:
    v24 = 0;
    v21 = 0;
    goto LABEL_37;
  }

  v21 = [v12 objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_SphereScalingFactor];
  [v21 floatValue];
  if (v21 && (v23 = v22, v22 > 0.0))
  {
    v24 = [v12 objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_ScalingFactor];
    [v24 floatValue];
    if (v24 && (v26 = v25, v25 > 0.0))
    {
      v57 = v19;
      v27 = v14;
      v28 = v11;
      v29 = 0.001 / v23;
      v30 = v27;
      v31 = [v27 objectForKeyedSubscript:v15];
      v32 = [v31 unsignedIntValue];

      v34 = *(a5 + 8);
      if (v34 && (v32 & 2) != 0)
      {
        v35 = *(a3 + 20);
        if (v35 <= 0.0)
        {
          *&v33 = 0.001 / v23;
        }

        else
        {
          *&v33 = v29 / v35;
        }

        [v34 updateWithCoefficients:v61 pixelSizeMm:v33 center:COERCE_DOUBLE(vcvt_f32_f64(a6))];
      }

      v11 = v28;
      if (*a5 && (v32 & 1) != 0)
      {
        v60 = 0uLL;
        v36 = v23 / v26;
        v37 = [v12 objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
        v38 = [v37 intValue];

        if (v38 <= 1)
        {
          v39 = 1;
        }

        else
        {
          v39 = v38;
        }

        if (FigMotionComputeOpticalCenterInBuffer(v12, *(a3 + 96), v39, v39, 1, &v60, v36))
        {
          v40 = a6;
          v60 = a6;
        }

        else
        {
          v40 = v60;
        }

        v41 = COERCE_DOUBLE(vcvt_f32_f64(v40));
        *v40.f64 = v29;
        [*a5 updateWithCoefficients:v62 pixelSizeMm:v40.f64[0] center:v41];
        v11 = v28;
        v14 = v30;
        if (v57)
        {
          v42 = objc_alloc_init(GVSDistortionModelEven14);
          [(GVSDistortionModelEven14 *)v42 updateWithCoefficients:v61 pixelSizeMm:COERCE_DOUBLE(__PAIR64__(HIDWORD(v60.f64[0]) center:LODWORD(v29))), COERCE_DOUBLE(vcvt_f32_f64(v60))];
          v59 = 0uLL;
          if (!GVSEstimatePaddingForDistortedTransformFits(v42, (a3 + 104), &v59))
          {
            *(a5 + 224) = v59;
          }
        }
      }

      else
      {
        v14 = v30;
      }
    }

    else
    {
      OUTLINED_FUNCTION_43();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v6, v53, v56, LODWORD(a6.f64[0]), *&a6.f64[1], v59.i64[0], v59.i32[2]);
      OUTLINED_FUNCTION_43();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v49, v52, v55);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v6, v53, v56, LODWORD(a6.f64[0]), *&a6.f64[1], v59.i64[0], v59.i32[2]);
    OUTLINED_FUNCTION_43();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v48, v51, v54);
    v24 = 0;
  }

LABEL_37:
}

uint64_t _enqueueCoefficientsForSmartStyleFilterForwardLearningFromCoefficientsSampleBuffer(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v7 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_MetadataDictionary, 0);
  v48[1] = 0;
  v49 = 0;
  _getPresentationTimeStampForSampleBuffer(a2, v7, v8, v9, v10, v11, v12, v13, v38, v42, time2.value, *&time2.timescale, time2.epoch, v46, time1.value, *&time1.timescale, time1.epoch, 0);
  ImageBuffer = CMSampleBufferGetImageBuffer(a2);
  if (ImageBuffer)
  {
    v22 = ImageBuffer;
    OUTLINED_FUNCTION_36(ImageBuffer, v15, v16, v17, v18, v19, v20, v21, v39, v43, time2.value, *&time2.timescale, time2.epoch, v46, time1.value, *&time1.timescale, time1.epoch, *v48);
    time2 = *(a1 + 30216);
    if (CMTimeCompare(&time1, &time2) < 1)
    {
      v34 = 0;
    }

    else
    {
      v23 = CMGetAttachment(a2, kFigCaptureSampleBufferAttachmentKey_SmartStyleCoefficientStyle, 0);
      v24 = [*(a1 + 30136) utilities];
      *&v32 = OUTLINED_FUNCTION_36(v24, v25, v26, v27, v28, v29, v30, v31, v40, v44, time2.value, *&time2.timescale, time2.epoch, v46, time1.value, *&time1.timescale, time1.epoch, *v48).n128_u64[0];
      v34 = [v33 enqueueCoefficientsForFiltering:v22 withMetadata:v6 pts:&time1 learnedStyle:{v23, v32}];

      if (v34)
      {
        fig_log_get_emitter();
        LODWORD(v41) = v34;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, v3, time2.value, *&time2.timescale, LODWORD(time2.epoch), v46, time1.value, time1.timescale);
      }

      else
      {
        v35 = *(a1 + 30176);
        if ((v35 + 1) < *(a1 + 30172))
        {
          v36 = v35 + 1;
        }

        else
        {
          v36 = *(a1 + 30172);
        }

        *(a1 + 30176) = v36;
        *(a1 + 30216) = *v48;
        *(a1 + 30232) = v49;
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v39, v43, time2.value, *&time2.timescale, LODWORD(time2.epoch), v46, time1.value, time1.timescale);
    v34 = 4294954516;
  }

  return v34;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_5(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v6, v8, v10, v11, v12, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, v9);
  *a2 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_6(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v6, v8, v10, v11, v12, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, v9);
  *a2 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_20()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3(v0);
  OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_21()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3(v0);
  OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_22(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_23(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_24(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_25(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_26(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_28(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_29(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_30(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_31(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

void FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_32()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

BOOL FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_36()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3(v2);
  v3 = *v1;
  *v0 = *v1;
  return v3 == 0;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_49(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

void FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_50()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_58(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_64(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_66(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_67(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_68(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForGyroVideoStabilization_cold_69(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_setProperty_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_processSampleBuffer_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_processSampleBuffer_cold_24(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_25(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_26(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_27(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_30()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_processSampleBuffer_cold_31()
{
  OUTLINED_FUNCTION_2();
  v4 = 0;
  v1 = OUTLINED_FUNCTION_30();
  FigDebugAssert3(v1, v4, v0);
  OUTLINED_FUNCTION_2();
  LODWORD(v5) = -12780;
  v2 = OUTLINED_FUNCTION_30();
  return FigDebugAssert3(v2, v5, v0);
}

uint64_t sbp_gvs_processSampleBuffer_cold_35()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_processSampleBuffer_cold_36()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3(v0);
  OUTLINED_FUNCTION_2();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, v4);
}

uint64_t sbp_gvs_processSampleBuffer_cold_37()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

void sbp_gvs_processSampleBuffer_cold_38(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3(v2);
  sbp_ltm_deallocateLtcCorrectionTexture(a1);
}

void sbp_gvs_processSampleBuffer_cold_39()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  v3 = v1;
  OUTLINED_FUNCTION_15();
  FigDebugAssert3(v2, v3);
  sbp_ltm_deallocateLtcCorrectionTexture(v0);
}

uint64_t sbp_gvs_processSampleBuffer_cold_41()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_processSampleBuffer_cold_49(int a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_0();
  v3 = a1;
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

uint64_t sbp_gvs_processSampleBuffer_cold_55(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v6, v8, v10, v11, v12, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, v9);
  *a2 = result;
  return result;
}

uint64_t sbp_gvs_processSampleBuffer_cold_56(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_enableLongPressMode_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_enableLongPressMode_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_enableP3ToBT2020Conversion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_configureOverscanParameters_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_cinematicAddMetadataToQuaternionAndSphereRingBuffers_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_ltm_checkPerVideoDisablement_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t _runVideoDeghostingDetection_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_2(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_29();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v9, v12, v15, v17, v19, vars0, vars8);
  OUTLINED_FUNCTION_29();
  fig_log_get_emitter();
  v4 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, v10, v13);
  *a3 = v4;
  if (!v4)
  {
    return 1;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_35();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v11, v14, v16, v18, v20, vars0a, vars8a);
  return 0;
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_6(int a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_0();
  v3 = a1;
  return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, vars0, vars8);
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_gaussianAverageGetStabilizedSampleBuffer_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

void sbp_gvs_getPixelBufferFromPool_cold_1(int a1, CFTypeRef *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_10();
  v4 = a1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v5, v6, v7, v8, v9, vars0, vars8);
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_23(uint64_t a1, void *a2)
{
  result = _runSmartStyleFilterForwardLearning(a1, a2);
  if (result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_15();
    return FigDebugAssert3(v3);
  }

  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_25(uint64_t a1, void *a2)
{
  result = _runSmartStyleFilterForwardLearning(a1, a2);
  if (result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_15();
    return FigDebugAssert3(v3);
  }

  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_55(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_56(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v6, v8, v10, v11, v12, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, v9);
  *a2 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_57(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_58(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t sbp_gvs_createStabilizedSampleBuffer_cold_59(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

__n128 _runSmartStyleIntegrate_cold_2()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  FigDebugAssert3(v2);
  *v1 = 0;
  v1[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *v0 = result;
  return result;
}

void _runSmartStyleReverseLearning_cold_2()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

void _runSmartStyleReverseLearning_cold_3()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

void _runSmartStyleReverseLearning_cold_4()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

void _runSmartStyleReverseLearning_cold_5()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  v2 = v1;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
}

void sbp_gvs_createStabilizedPixelBuffer_cold_6()
{
  OUTLINED_FUNCTION_21();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_0();
  v3 = v1;
  OUTLINED_FUNCTION_15();
  FigDebugAssert3(v2, v3);
  sbp_ltm_deallocateLtcCorrectionTexture(v0);
}

uint64_t sbp_gvs_createStabilizedPixelBuffer_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t sbp_gvs_createStabilizedPixelBuffer_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  return FigDebugAssert3(v0);
}

uint64_t GVSQuaternionFromRotationMatrix_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSQuaternionFromRotationMatrix_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractMetadataFromTopToBottomRows_cold_1(uint64_t a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v6, v8, v10, v11, v12, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v5, v7, v9);
  *a2 = result;
  return result;
}

uint64_t GVSExtractMetadataFromTopToBottomRows_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractMetadataFromTopToBottomRows_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractMetadataFromTopToBottomRows_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractMetadataFromTopToBottomRows_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractMetadataFromTopToBottomRows_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractMetadataFromTopToBottomRows_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}

uint64_t GVSExtractMetadataFromTopToBottomRows_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v5, v7, v9, v10, v11, vars0, vars8);
  OUTLINED_FUNCTION_1();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v6, v8);
  *a1 = result;
  return result;
}