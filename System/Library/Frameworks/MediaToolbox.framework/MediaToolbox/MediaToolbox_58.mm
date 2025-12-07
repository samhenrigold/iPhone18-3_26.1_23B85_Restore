double bvc_FullComposition_BGRA_420v709(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v18 = *a2;
  v19 = *a3;
  v21 = *a4;
  v20 = a4[1];
  v153 = 0;
  v154 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v14);
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v149 = 0;
    v150 = 0;
    v29 = *(a1 + 1);
    *&v144.a = *a1;
    *&v144.c = v29;
    *&v144.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v144.a))
    {
      memset(&v143, 0, sizeof(v143));
      v30 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v30;
      *&v144.tx = *(a1 + 2);
      CGAffineTransformInvert(&v143, &v144);
      v130 = *a1;
      v134 = a1[1];
      v125 = a1[3];
      v115 = a1[4];
      v118 = a1[2];
      v121 = a1[5];
      v31 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v31;
      *&v144.tx = *(a1 + 2);
      if (!BVCUtilityGetVectorsFromTransform(&v144.a, &v152, &v151))
      {
        v32 = v152.i32[0];
        if (v152.i32[0] < 0)
        {
          v32 = -v152.i32[0];
        }

        v33 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v33 = -v151.i32[0];
        }

        if (v32 <= v33)
        {
          v32 = v33;
        }

        v117 = v32;
        v144 = v143;
        BVCUtilityGetVectorsFromTransform(&v144.a, &v150, &v149);
        v34 = *(a1 + 1);
        *&v144.a = *a1;
        *&v144.c = v34;
        *&v144.tx = *(a1 + 2);
        if (!BVCUtilityCreateEdgeLists(&v144, &v154, &v153, a6, a7, a8, a9, a10, a11, a12, a13))
        {
          v35 = v154;
          if (v154)
          {
            v36 = v153;
            if (v153)
            {
              v113 = v20;
              v110 = v21;
              v37 = vcvts_n_s32_f32(a14, 8uLL);
              v38 = vcvtd_n_s64_f64(v115 + v118 * 0.0 + v130 * 0.0, 0x10uLL);
              v39 = vcvtd_n_s64_f64(v121 + v125 * 0.0 + v134 * 0.0, 0x10uLL);
              LODWORD(v144.a) = 0;
              v148 = 0;
              v147 = 0;
              v146 = 0;
              v145 = 0;
              v40 = *v154;
              if (*v154 <= *v153)
              {
                v40 = *v153;
              }

              v111 = v38;
              v112 = v39;
              v41 = 0x8000 - v38;
              v136 = v40 + 0x8000;
              v42 = ((v40 + 0x8000) & 0xFFFF0000) - v39 + 0x8000;
              v43 = ((v150.i32[0] * v41) >> 16) - (v149.i32[0] > 0) + ((v149.i32[0] * v42) >> 16);
              v44 = ((v150.i32[1] * v41) >> 16) - (v149.i32[1] > 0) + ((v149.i32[1] * v42) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v40 + 0x8000) >> 16, v117, 1, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v36, 1, v136 >> 16, v117, 1, &v148, &v146 + 1, &v145);
              v45 = v136 >> 16;
              v46 = v36;
              v47 = v35;
              v48 = *a5 + v110 * (v136 >> 16);
              v49 = (0x10101020000 * (v37 << 8)) >> 48;
              do
              {
                v50 = v145;
                v51 = v146;
                if (v146 < v145)
                {
                  v50 = v146;
                }

                v52 = v50 - v45;
                if (v50 > v45)
                {
                  v126 = v47;
                  v53 = 0;
                  v54 = HIDWORD(v146);
                  v137 = v147;
                  v55 = v150.i32[0];
                  v56 = v150.i32[1];
                  v57 = v149.i32[0];
                  v58 = v149.i32[1];
                  a_low = LODWORD(v144.a);
                  v119 = v148;
                  v60 = v148;
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v43 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v19 + ((v62 >> 16) * v18) + ((v63 >> 14) & 0xFFFFFFFC));
                        v65 = v64[3];
                        if (v49 * v65)
                        {
                          *(v48 + v61) = (((2120 * v65 + 2032 * *v64 + 20127 * v64[1] + 5983 * v64[2]) >> 15) * v37 + (((0x10000 - v49 * v65) * *(v48 + v61)) >> 8)) >> 8;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v137;
                    v60 += v54;
                    v43 += v57;
                    v44 += v58;
                    v48 += v110;
                    ++v53;
                  }

                  while (v53 != v52);
                  LODWORD(v144.a) = a_low;
                  v148 = v119 + v54 * v52;
                  v51 = v146;
                  v45 = v50;
                  v47 = v126;
                }

                if (v45 >= v51)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v127 = v47;
                    v131 = v46;
                    v138 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v117, 1, &v144, &v147, &v146);
                    v45 = v138;
                    v47 = v127;
                    v46 = v131;
                  }
                }

                if (v45 >= v145)
                {
                  v66 = *(v46 + 5);
                  if (!v66)
                  {
                    break;
                  }

                  v128 = v47;
                  v132 = v66;
                  v139 = v45;
                  bvc_extractEdgeParameters(v66, 1, v45, v117, 1, &v148, &v146 + 1, &v145);
                  v45 = v139;
                  v47 = v128;
                  v46 = v132;
                }
              }

              while (v47 && v46);
              v67 = v149.i32[0] > 0;
              v68 = 2 * v149.i32[0];
              v69 = vadd_s32(v150, v150);
              v150 = v69;
              v70 = v149.i32[1] > 0;
              v71 = 2 * v149.i32[1];
              v149.i32[0] *= 2;
              v149.i32[1] *= 2;
              v72 = v154;
              v120 = v153;
              v73 = *v154 / 2;
              if (v73 <= *v153 / 2)
              {
                v73 = *v153 / 2;
              }

              v74 = v73 + 0x8000;
              v75 = (((v73 + 0x8000) & 0xFFFF0000) - v112 / 2 + 0x8000);
              v76 = 0x8000 - v111 / 2;
              v77 = ((v69.i32[0] * v76) >> 16) - v67 + ((v75 * v68) >> 16);
              v78 = ((v69.i32[1] * v76) >> 16) - v70 + ((v75 * v71) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v73 + 0x8000) >> 16, v117, 2, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v120, 1, v74 >> 16, v117, 2, &v148, &v146 + 1, &v145);
              v79 = v74 >> 16;
              v80 = v72;
              v81 = a5[1] + v113 * (v74 >> 16);
              v129 = v113;
              do
              {
                v82 = v145;
                v83 = v146;
                if (v146 < v145)
                {
                  v82 = v146;
                }

                v140 = v82 - v79;
                if (v82 > v79)
                {
                  v116 = v82;
                  v122 = v80;
                  v84 = 0;
                  v85 = HIDWORD(v146);
                  v135 = v147;
                  v86 = v150.i32[0];
                  v87 = v150.i32[1];
                  v88 = v149.i32[1];
                  v133 = v149.i32[0];
                  v89 = LODWORD(v144.a);
                  v114 = v148;
                  v90 = v148;
                  do
                  {
                    v91 = v89 >> 16;
                    if (v89 >> 16 < (v90 >> 16))
                    {
                      v92 = v91;
                      v93 = 2 * v91;
                      v94 = v78 + ((v87 * (v89 & 0xFFFF0000)) >> 16);
                      v95 = v77 + ((v86 * (v89 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v96 = (v19 + ((v94 >> 16) * v18) + ((v95 >> 14) & 0xFFFFFFFC));
                        v97 = v96[3];
                        v98 = v49 * v97;
                        if (v49 * v97)
                        {
                          v99 = *v96;
                          v100 = v96[1];
                          v101 = v96[2];
                          v102 = 129 * v97;
                          v103 = (14392 * v99 + (v102 << 7) - 11093 * v100 - 3298 * v101) >> 15;
                          v104 = (-1317 * v99 + (v102 << 7) - 13073 * v100 + 14392 * v101) >> 15;
                          v105 = (v81 + v93);
                          v106 = 0x10000 - v98;
                          *v105 = (v103 * v37 + ((v106 * *(v81 + v93)) >> 8)) >> 8;
                          v105[1] = (v104 * v37 + ((v106 * *(v81 + v93 + 1)) >> 8)) >> 8;
                        }

                        v95 += v86;
                        v94 += v87;
                        ++v92;
                        v93 += 2;
                      }

                      while (v92 < v90 >> 16);
                    }

                    v89 += v135;
                    v90 += v85;
                    v77 += v133;
                    v78 += v88;
                    v81 += v129;
                    ++v84;
                  }

                  while (v84 != v140);
                  LODWORD(v144.a) = v89;
                  v148 = v114 + v85 * v140;
                  v83 = v146;
                  v79 = v116;
                  v80 = v122;
                }

                if (v79 >= v83)
                {
                  v80 = *(v80 + 5);
                  if (v80)
                  {
                    v141 = v79;
                    v123 = v80;
                    bvc_extractEdgeParameters(v80, 0, v79, v117, 2, &v144, &v147, &v146);
                    v79 = v141;
                    v80 = v123;
                  }
                }

                if (v79 >= v145)
                {
                  v107 = *(v120 + 5);
                  if (!v107)
                  {
                    break;
                  }

                  v120 = *(v120 + 5);
                  v124 = v80;
                  v142 = v79;
                  bvc_extractEdgeParameters(v107, 1, v79, v117, 2, &v148, &v146 + 1, &v145);
                  v79 = v142;
                  v80 = v124;
                }
              }

              while (v80 && v120);
            }
          }
        }
      }
    }

    BVCUtilityDestroyEdgeList(v154);
    BVCUtilityDestroyEdgeList(v153);
  }

  return result;
}

double bvc_FullCompositionOpaque_BGRA_420v601(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v16 = *a2;
  v17 = *a3;
  v19 = *a4;
  v18 = a4[1];
  v153 = 0;
  v154 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v13);
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v150 = 0;
    v149 = 0;
    v28 = *(a1 + 1);
    *&v145.a = *a1;
    *&v145.c = v28;
    *&v145.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v145.a))
    {
      memset(&v144, 0, sizeof(v144));
      v29 = *(a1 + 1);
      *&v145.a = *a1;
      *&v145.c = v29;
      *&v145.tx = *(a1 + 2);
      CGAffineTransformInvert(&v144, &v145);
      v134 = *a1;
      v139 = a1[1];
      v129 = a1[3];
      v116 = a1[4];
      v120 = a1[2];
      v123 = a1[5];
      v30 = *(a1 + 1);
      *&v145.a = *a1;
      *&v145.c = v30;
      *&v145.tx = *(a1 + 2);
      if (!BVCUtilityGetVectorsFromTransform(&v145.a, &v152, &v151))
      {
        v31 = v152.i32[0];
        if (v152.i32[0] < 0)
        {
          v31 = -v152.i32[0];
        }

        v32 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v32 = -v151.i32[0];
        }

        if (v31 <= v32)
        {
          v31 = v32;
        }

        v119 = v31;
        v145 = v144;
        BVCUtilityGetVectorsFromTransform(&v145.a, &v150, &v149);
        v33 = *(a1 + 1);
        *&v145.a = *a1;
        *&v145.c = v33;
        *&v145.tx = *(a1 + 2);
        if (!BVCUtilityCreateEdgeLists(&v145, &v154, &v153, a6, a7, a8, a9, a10, a11, a12, a13))
        {
          v34 = v154;
          if (v154)
          {
            v35 = v153;
            if (v153)
            {
              v114 = v18;
              v36 = vcvtd_n_s64_f64(v116 + v120 * 0.0 + v134 * 0.0, 0x10uLL);
              v37 = vcvtd_n_s64_f64(v123 + v129 * 0.0 + v139 * 0.0, 0x10uLL);
              LODWORD(v145.a) = 0;
              v147 = 0;
              v148 = 0;
              v146 = 0;
              v38 = *v154;
              if (*v154 <= *v153)
              {
                v38 = *v153;
              }

              v112 = v36;
              v113 = v37;
              v39 = 0x8000 - v36;
              v140 = v38 + 0x8000;
              v40 = ((v38 + 0x8000) & 0xFFFF0000) - v37 + 0x8000;
              v41 = ((v150.i32[0] * v39) >> 16) - (v149.i32[0] > 0) + ((v149.i32[0] * v40) >> 16);
              v42 = a5;
              v43 = (v38 + 0x8000) >> 16;
              v44 = ((v150.i32[1] * v39) >> 16) - (v149.i32[1] > 0) + ((v149.i32[1] * v40) >> 16);
              bvc_extractEdgeParameters(v154, 0, v43, v119, 1, &v145, &v148, &v147);
              bvc_extractEdgeParameters(v35, 1, v43, v119, 1, &v148 + 1, &v147 + 1, &v146);
              v45 = v43;
              v46 = v35;
              v47 = v34;
              v117 = v42;
              v48 = *v42 + v19 * (v140 >> 16);
              do
              {
                v49 = v146;
                v50 = v147;
                if (v147 < v146)
                {
                  v49 = v147;
                }

                v51 = v49 - v45;
                if (v49 > v45)
                {
                  v130 = v47;
                  v135 = v46;
                  v52 = 0;
                  v53 = HIDWORD(v147);
                  v54 = v148;
                  v55 = v150.i32[0];
                  v56 = v150.i32[1];
                  v57 = v149.i32[0];
                  v58 = v149.i32[1];
                  a_low = LODWORD(v145.a);
                  v121 = HIDWORD(v148);
                  v60 = HIDWORD(v148);
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v41 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v17 + ((v62 >> 16) * v16) + ((v63 >> 14) & 0xFFFFFFFC));
                        v65 = v64[3];
                        if (v64[3])
                        {
                          v66 = (2120 * v65 + 3219 * *v64 + 16508 * v64[1] + 8412 * v64[2]) >> 15;
                          if (v65 != 255)
                          {
                            v66 += ((16776959 * v65 + 0x10000) * *(v48 + v61)) >> 16;
                          }

                          *(v48 + v61) = v66;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v54;
                    v60 += v53;
                    v41 += v57;
                    v44 += v58;
                    v48 += v19;
                    ++v52;
                  }

                  while (v52 != v51);
                  LODWORD(v145.a) = a_low;
                  HIDWORD(v148) = v121 + v53 * v51;
                  v50 = v147;
                  v45 = v49;
                  v47 = v130;
                  v46 = v135;
                }

                if (v45 >= v50)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v131 = v47;
                    v136 = v46;
                    v124 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v119, 1, &v145, &v148, &v147);
                    v45 = v124;
                    v47 = v131;
                    v46 = v136;
                  }
                }

                if (v45 >= v146)
                {
                  v67 = *(v46 + 5);
                  if (!v67)
                  {
                    break;
                  }

                  v132 = v47;
                  v137 = v67;
                  v125 = v45;
                  bvc_extractEdgeParameters(v67, 1, v45, v119, 1, &v148 + 1, &v147 + 1, &v146);
                  v45 = v125;
                  v47 = v132;
                  v46 = v137;
                }
              }

              while (v47 && v46);
              v68 = v149.i32[0] > 0;
              v69 = 2 * v149.i32[0];
              v70 = vadd_s32(v150, v150);
              v150 = v70;
              v71 = v149.i32[1] > 0;
              v72 = 2 * v149.i32[1];
              v149.i32[0] *= 2;
              v149.i32[1] *= 2;
              v73 = v153;
              v74 = v154;
              v75 = *v154 / 2;
              if (v75 <= *v153 / 2)
              {
                v75 = *v153 / 2;
              }

              v76 = v75 + 0x8000;
              v77 = (((v75 + 0x8000) & 0xFFFF0000) - v113 / 2 + 0x8000);
              v78 = 0x8000 - v112 / 2;
              v79 = ((v70.i32[0] * v78) >> 16) - v68 + ((v77 * v69) >> 16);
              v80 = ((v70.i32[1] * v78) >> 16) - v71 + ((v77 * v72) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v75 + 0x8000) >> 16, v119, 2, &v145, &v148, &v147);
              v122 = v73;
              bvc_extractEdgeParameters(v73, 1, v76 >> 16, v119, 2, &v148 + 1, &v147 + 1, &v146);
              v81 = v76 >> 16;
              v82 = v74;
              v83 = v117[1] + v114 * (v76 >> 16);
              v133 = v114;
              do
              {
                v84 = v146;
                v85 = v147;
                if (v147 < v146)
                {
                  v84 = v147;
                }

                v86 = v84 - v81;
                if (v84 > v81)
                {
                  v118 = v84;
                  v126 = v82;
                  v87 = 0;
                  v88 = HIDWORD(v147);
                  v141 = v148;
                  v89 = v150.i32[0];
                  v90 = v150.i32[1];
                  v91 = v149.i32[1];
                  v138 = v149.i32[0];
                  v92 = LODWORD(v145.a);
                  v115 = HIDWORD(v148);
                  v93 = HIDWORD(v148);
                  do
                  {
                    v94 = v92 >> 16;
                    if (v92 >> 16 < (v93 >> 16))
                    {
                      v95 = v94;
                      v96 = 2 * v94;
                      v97 = v80 + ((v90 * (v92 & 0xFFFF0000)) >> 16);
                      v98 = v79 + ((v89 * (v92 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v99 = (v17 + ((v97 >> 16) * v16) + ((v98 >> 14) & 0xFFFFFFFC));
                        v100 = v99[3];
                        if (v99[3])
                        {
                          v101 = *v99;
                          v102 = v99[1];
                          v103 = v99[2];
                          v104 = (14392 * v101 + 16512 * v100 - 9532 * v102 - 4858 * v103) >> 15;
                          v105 = (-2348 * v101 + 16512 * v100 - 12040 * v102 + 14392 * v103) >> 15;
                          if (v100 == 255)
                          {
                            v106 = (v83 + v96);
                            *v106 = v104;
                            v106[1] = v105;
                          }

                          else
                          {
                            v107 = (v83 + v96);
                            v108 = 0x10000 - (v100 | (v100 << 8));
                            *v107 = v104 + ((v108 * *(v83 + v96)) >> 16);
                            v107[1] = v105 + ((v108 * *(v83 + v96 + 1)) >> 16);
                          }
                        }

                        v98 += v89;
                        v97 += v90;
                        ++v95;
                        v96 += 2;
                      }

                      while (v95 < v93 >> 16);
                    }

                    v92 += v141;
                    v93 += v88;
                    v79 += v138;
                    v80 += v91;
                    v83 += v133;
                    ++v87;
                  }

                  while (v87 != v86);
                  LODWORD(v145.a) = v92;
                  HIDWORD(v148) = v115 + v88 * v86;
                  v85 = v147;
                  v81 = v118;
                  v82 = v126;
                }

                if (v81 >= v85)
                {
                  v82 = *(v82 + 5);
                  if (v82)
                  {
                    v142 = v81;
                    v127 = v82;
                    bvc_extractEdgeParameters(v82, 0, v81, v119, 2, &v145, &v148, &v147);
                    v81 = v142;
                    v82 = v127;
                  }
                }

                if (v81 >= v146)
                {
                  v109 = *(v122 + 5);
                  if (!v109)
                  {
                    break;
                  }

                  v122 = *(v122 + 5);
                  v128 = v82;
                  v143 = v81;
                  bvc_extractEdgeParameters(v109, 1, v81, v119, 2, &v148 + 1, &v147 + 1, &v146);
                  v81 = v143;
                  v82 = v128;
                }
              }

              while (v82 && v122);
            }
          }
        }
      }
    }

    BVCUtilityDestroyEdgeList(v154);
    BVCUtilityDestroyEdgeList(v153);
  }

  return result;
}

double bvc_FullComposition_BGRA_420v601(double *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float a14)
{
  v18 = *a2;
  v19 = *a3;
  v21 = *a4;
  v20 = a4[1];
  v153 = 0;
  v154 = 0;
  if (a6 + a8 >= 32767.0 || a7 + a9 >= 32767.0 || a10 + a12 >= 32767.0 || a11 + a13 >= 32767.0)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954792, "<<<< VideoCompositor >>>>", 367, v14);
  }

  else
  {
    v151 = 0;
    v152 = 0;
    v149 = 0;
    v150 = 0;
    v29 = *(a1 + 1);
    *&v144.a = *a1;
    *&v144.c = v29;
    *&v144.tx = *(a1 + 2);
    if (BVCUtilityIsAffineTransformInvertible(&v144.a))
    {
      memset(&v143, 0, sizeof(v143));
      v30 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v30;
      *&v144.tx = *(a1 + 2);
      CGAffineTransformInvert(&v143, &v144);
      v130 = *a1;
      v134 = a1[1];
      v125 = a1[3];
      v115 = a1[4];
      v118 = a1[2];
      v121 = a1[5];
      v31 = *(a1 + 1);
      *&v144.a = *a1;
      *&v144.c = v31;
      *&v144.tx = *(a1 + 2);
      if (!BVCUtilityGetVectorsFromTransform(&v144.a, &v152, &v151))
      {
        v32 = v152.i32[0];
        if (v152.i32[0] < 0)
        {
          v32 = -v152.i32[0];
        }

        v33 = v151.i32[0];
        if (v151.i32[0] < 0)
        {
          v33 = -v151.i32[0];
        }

        if (v32 <= v33)
        {
          v32 = v33;
        }

        v117 = v32;
        v144 = v143;
        BVCUtilityGetVectorsFromTransform(&v144.a, &v150, &v149);
        v34 = *(a1 + 1);
        *&v144.a = *a1;
        *&v144.c = v34;
        *&v144.tx = *(a1 + 2);
        if (!BVCUtilityCreateEdgeLists(&v144, &v154, &v153, a6, a7, a8, a9, a10, a11, a12, a13))
        {
          v35 = v154;
          if (v154)
          {
            v36 = v153;
            if (v153)
            {
              v113 = v20;
              v110 = v21;
              v37 = vcvts_n_s32_f32(a14, 8uLL);
              v38 = vcvtd_n_s64_f64(v115 + v118 * 0.0 + v130 * 0.0, 0x10uLL);
              v39 = vcvtd_n_s64_f64(v121 + v125 * 0.0 + v134 * 0.0, 0x10uLL);
              LODWORD(v144.a) = 0;
              v148 = 0;
              v147 = 0;
              v146 = 0;
              v145 = 0;
              v40 = *v154;
              if (*v154 <= *v153)
              {
                v40 = *v153;
              }

              v111 = v38;
              v112 = v39;
              v41 = 0x8000 - v38;
              v136 = v40 + 0x8000;
              v42 = ((v40 + 0x8000) & 0xFFFF0000) - v39 + 0x8000;
              v43 = ((v150.i32[0] * v41) >> 16) - (v149.i32[0] > 0) + ((v149.i32[0] * v42) >> 16);
              v44 = ((v150.i32[1] * v41) >> 16) - (v149.i32[1] > 0) + ((v149.i32[1] * v42) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v40 + 0x8000) >> 16, v117, 1, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v36, 1, v136 >> 16, v117, 1, &v148, &v146 + 1, &v145);
              v45 = v136 >> 16;
              v46 = v36;
              v47 = v35;
              v48 = *a5 + v110 * (v136 >> 16);
              v49 = (0x10101020000 * (v37 << 8)) >> 48;
              do
              {
                v50 = v145;
                v51 = v146;
                if (v146 < v145)
                {
                  v50 = v146;
                }

                v52 = v50 - v45;
                if (v50 > v45)
                {
                  v126 = v47;
                  v53 = 0;
                  v54 = HIDWORD(v146);
                  v137 = v147;
                  v55 = v150.i32[0];
                  v56 = v150.i32[1];
                  v57 = v149.i32[0];
                  v58 = v149.i32[1];
                  a_low = LODWORD(v144.a);
                  v119 = v148;
                  v60 = v148;
                  do
                  {
                    LODWORD(v61) = a_low >> 16;
                    if (a_low >> 16 < (v60 >> 16))
                    {
                      v61 = v61;
                      v62 = v44 + ((v56 * (a_low & 0xFFFF0000)) >> 16);
                      v63 = v43 + ((v55 * (a_low & 0xFFFF0000)) >> 16);
                      do
                      {
                        v64 = (v19 + ((v62 >> 16) * v18) + ((v63 >> 14) & 0xFFFFFFFC));
                        v65 = v64[3];
                        if (v49 * v65)
                        {
                          *(v48 + v61) = (((2120 * v65 + 3219 * *v64 + 16508 * v64[1] + 8412 * v64[2]) >> 15) * v37 + (((0x10000 - v49 * v65) * *(v48 + v61)) >> 8)) >> 8;
                        }

                        v63 += v55;
                        v62 += v56;
                        ++v61;
                      }

                      while (v61 < v60 >> 16);
                    }

                    a_low += v137;
                    v60 += v54;
                    v43 += v57;
                    v44 += v58;
                    v48 += v110;
                    ++v53;
                  }

                  while (v53 != v52);
                  LODWORD(v144.a) = a_low;
                  v148 = v119 + v54 * v52;
                  v51 = v146;
                  v45 = v50;
                  v47 = v126;
                }

                if (v45 >= v51)
                {
                  v47 = *(v47 + 5);
                  if (v47)
                  {
                    v127 = v47;
                    v131 = v46;
                    v138 = v45;
                    bvc_extractEdgeParameters(v47, 0, v45, v117, 1, &v144, &v147, &v146);
                    v45 = v138;
                    v47 = v127;
                    v46 = v131;
                  }
                }

                if (v45 >= v145)
                {
                  v66 = *(v46 + 5);
                  if (!v66)
                  {
                    break;
                  }

                  v128 = v47;
                  v132 = v66;
                  v139 = v45;
                  bvc_extractEdgeParameters(v66, 1, v45, v117, 1, &v148, &v146 + 1, &v145);
                  v45 = v139;
                  v47 = v128;
                  v46 = v132;
                }
              }

              while (v47 && v46);
              v67 = v149.i32[0] > 0;
              v68 = 2 * v149.i32[0];
              v69 = vadd_s32(v150, v150);
              v150 = v69;
              v70 = v149.i32[1] > 0;
              v71 = 2 * v149.i32[1];
              v149.i32[0] *= 2;
              v149.i32[1] *= 2;
              v72 = v154;
              v120 = v153;
              v73 = *v154 / 2;
              if (v73 <= *v153 / 2)
              {
                v73 = *v153 / 2;
              }

              v74 = v73 + 0x8000;
              v75 = (((v73 + 0x8000) & 0xFFFF0000) - v112 / 2 + 0x8000);
              v76 = 0x8000 - v111 / 2;
              v77 = ((v69.i32[0] * v76) >> 16) - v67 + ((v75 * v68) >> 16);
              v78 = ((v69.i32[1] * v76) >> 16) - v70 + ((v75 * v71) >> 16);
              bvc_extractEdgeParameters(v154, 0, (v73 + 0x8000) >> 16, v117, 2, &v144, &v147, &v146);
              bvc_extractEdgeParameters(v120, 1, v74 >> 16, v117, 2, &v148, &v146 + 1, &v145);
              v79 = v74 >> 16;
              v80 = v72;
              v81 = a5[1] + v113 * (v74 >> 16);
              v129 = v113;
              do
              {
                v82 = v145;
                v83 = v146;
                if (v146 < v145)
                {
                  v82 = v146;
                }

                v140 = v82 - v79;
                if (v82 > v79)
                {
                  v116 = v82;
                  v122 = v80;
                  v84 = 0;
                  v85 = HIDWORD(v146);
                  v135 = v147;
                  v86 = v150.i32[0];
                  v87 = v150.i32[1];
                  v88 = v149.i32[1];
                  v133 = v149.i32[0];
                  v89 = LODWORD(v144.a);
                  v114 = v148;
                  v90 = v148;
                  do
                  {
                    v91 = v89 >> 16;
                    if (v89 >> 16 < (v90 >> 16))
                    {
                      v92 = v91;
                      v93 = 2 * v91;
                      v94 = v78 + ((v87 * (v89 & 0xFFFF0000)) >> 16);
                      v95 = v77 + ((v86 * (v89 & 0xFFFF0000)) >> 16);
                      do
                      {
                        v96 = (v19 + ((v94 >> 16) * v18) + ((v95 >> 14) & 0xFFFFFFFC));
                        v97 = v96[3];
                        v98 = v49 * v97;
                        if (v49 * v97)
                        {
                          v99 = *v96;
                          v100 = v96[1];
                          v101 = v96[2];
                          v102 = 129 * v97;
                          v103 = (14392 * v99 + (v102 << 7) - 9532 * v100 - 4858 * v101) >> 15;
                          v104 = (-2348 * v99 + (v102 << 7) - 12040 * v100 + 14392 * v101) >> 15;
                          v105 = (v81 + v93);
                          v106 = 0x10000 - v98;
                          *v105 = (v103 * v37 + ((v106 * *(v81 + v93)) >> 8)) >> 8;
                          v105[1] = (v104 * v37 + ((v106 * *(v81 + v93 + 1)) >> 8)) >> 8;
                        }

                        v95 += v86;
                        v94 += v87;
                        ++v92;
                        v93 += 2;
                      }

                      while (v92 < v90 >> 16);
                    }

                    v89 += v135;
                    v90 += v85;
                    v77 += v133;
                    v78 += v88;
                    v81 += v129;
                    ++v84;
                  }

                  while (v84 != v140);
                  LODWORD(v144.a) = v89;
                  v148 = v114 + v85 * v140;
                  v83 = v146;
                  v79 = v116;
                  v80 = v122;
                }

                if (v79 >= v83)
                {
                  v80 = *(v80 + 5);
                  if (v80)
                  {
                    v141 = v79;
                    v123 = v80;
                    bvc_extractEdgeParameters(v80, 0, v79, v117, 2, &v144, &v147, &v146);
                    v79 = v141;
                    v80 = v123;
                  }
                }

                if (v79 >= v145)
                {
                  v107 = *(v120 + 5);
                  if (!v107)
                  {
                    break;
                  }

                  v120 = *(v120 + 5);
                  v124 = v80;
                  v142 = v79;
                  bvc_extractEdgeParameters(v107, 1, v79, v117, 2, &v148, &v146 + 1, &v145);
                  v79 = v142;
                  v80 = v124;
                }
              }

              while (v80 && v120);
            }
          }
        }
      }
    }

    BVCUtilityDestroyEdgeList(v154);
    BVCUtilityDestroyEdgeList(v153);
  }

  return result;
}

uint64_t __bvc_blitLayer_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 88);
  v4 = *(a1 + 176);
  v5 = *(a1 + 184);
  v6 = *(a1 + 192);
  v7 = *(a1 + 200);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v10 = *(a1 + 112);
  v11 = *(a1 + 120);
  v12 = *(a1 + 144);
  v14[0] = *(a1 + 128);
  v14[1] = v12;
  v14[2] = *(a1 + 160);
  result = v3(v14, v4, v5, v6, v7, v8, v9, v10, v11, v2);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = -12506;
  }

  return result;
}

_DWORD *bvc_extractEdgeParameters(_DWORD *result, int a2, int a3, int a4, int a5, _DWORD *a6, _DWORD *a7, int *a8)
{
  v8 = result[3];
  v9 = result[1];
  v10 = result[2] / a5 + ((v8 * (((a3 << 16) | 0x8000) - *result / a5)) >> 16);
  v12 = v10 + 0x8000;
  v11 = v10 + 0x8000 < 0;
  v13 = -32768 - v10;
  if (!v11)
  {
    v13 = v12;
  }

  v14 = ((a3 + HIWORD(v13)) * a4 + 0xFFFF) >> 16;
  if (v8 >= 0)
  {
    v15 = result[3];
  }

  else
  {
    v15 = -v8;
  }

  if (a2)
  {
    LODWORD(v14) = -v14;
  }

  v16 = v14 + v12;
  if (a2)
  {
    v17 = -(((((v15 + 0xFFFF) >> 16) + 1) * a4 + 0xFFFF) >> 16);
  }

  else
  {
    v17 = ((((v15 + 0xFFFF) >> 16) + 1) * a4 + 0xFFFF) >> 16;
  }

  *a7 = v17 + v8;
  *a6 = v16;
  *a8 = (v9 / a5 + 0x8000) >> 16;
  return result;
}

uint64_t RegisterFigSecureStopManagerType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSecureStopManagerGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSecureStopManagerGetClassID_sRegisterFigSecureStopManagerTypeOnce, RegisterFigSecureStopManagerType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigSecureStopManagerCreate(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    FigSecureStopManagerCreate_cold_4(&v5);
    return v5;
  }

  *a2 = 0;
  MEMORY[0x19A8D3660](&FigSecureStopManagerGetClassID_sRegisterFigSecureStopManagerTypeOnce, RegisterFigSecureStopManagerType);
  v2 = CMDerivedObjectCreate();
  if (!v2)
  {
    FigSecureStopManagerCreate_cold_3(&v5);
    return v5;
  }

  return v2;
}

uint64_t __FigSecureStopManagerCopyDefaultRuntimeInstance_block_invoke(void *a1)
{
  result = FigSecureStopManagerCreate(a1[6], (*(a1[5] + 8) + 24));
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void fssm_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  v3 = *(DerivedStorage + 24);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 24) = 0;
  }

  dispatch_release(*DerivedStorage);
  v4 = *(DerivedStorage + 8);

  dispatch_release(v4);
}

__CFString *fssm_copyDebugDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = CFGetRetainCount(a1);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigSecureStopManager %p retainCount: %ld allocator: %p>", a1, v4, v5);
  return Mutable;
}

uint64_t fssm_fbo_initialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fssm_fbo_initialize_cold_2();
LABEL_7:
    v8 = v15;
    goto LABEL_4;
  }

  if (!a3)
  {
    fssm_fbo_initialize_cold_1();
    goto LABEL_7;
  }

  v7 = *DerivedStorage;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __fssm_fbo_initialize_block_invoke;
  v10[3] = &unk_1E7490FD8;
  v10[4] = &v11;
  v10[5] = DerivedStorage;
  v10[6] = a3;
  v10[7] = a1;
  v10[8] = a2;
  dispatch_sync(v7, v10);
  v8 = *(v12 + 6);
LABEL_4:
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t fssm_fbo_copyRecords(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = 0;
    v4 = *DerivedStorage;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __fssm_fbo_copyRecords_block_invoke;
    v7[3] = &unk_1E7491000;
    v7[4] = &v8;
    v7[5] = DerivedStorage;
    v7[6] = a2;
    dispatch_sync(v4, v7);
    v5 = *(v9 + 6);
  }

  else
  {
    fssm_fbo_copyRecords_cold_1();
    v5 = v12;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fssm_fbo_removeRecords(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *DerivedStorage;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __fssm_fbo_removeRecords_block_invoke;
    v7[3] = &unk_1E7491028;
    v7[4] = &v8;
    v7[5] = DerivedStorage;
    v7[6] = a2;
    dispatch_sync(v4, v7);
    v5 = *(v9 + 6);
  }

  else
  {
    fssm_fbo_removeRecords_cold_1();
    v5 = v12;
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fssm_fbo_updateRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!(a3 | a4))
  {
    fssm_fbo_updateRecord_cold_2();
LABEL_7:
    v17 = v24;
    goto LABEL_4;
  }

  if (!a8)
  {
    fssm_fbo_updateRecord_cold_1();
    goto LABEL_7;
  }

  v16 = *DerivedStorage;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 0x40000000;
  v19[2] = __fssm_fbo_updateRecord_block_invoke;
  v19[3] = &unk_1E7491050;
  v19[4] = &v20;
  v19[5] = DerivedStorage;
  v19[6] = a2;
  v19[7] = a3;
  v19[8] = a4;
  v19[9] = a5;
  v19[10] = a6;
  v19[11] = a7;
  v19[12] = a8;
  dispatch_sync(v16, v19);
  v17 = *(v21 + 6);
LABEL_4:
  _Block_object_dispose(&v20, 8);
  return v17;
}

uint64_t fssm_fbo_finalizeRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!(a3 | a4))
  {
    fssm_fbo_finalizeRecord_cold_1();
LABEL_9:
    v16 = v23;
    goto LABEL_5;
  }

  if (!a6)
  {
    fssm_fbo_finalizeRecord_cold_3();
    goto LABEL_9;
  }

  if (!(a4 | a7))
  {
    fssm_fbo_finalizeRecord_cold_2();
    goto LABEL_9;
  }

  v15 = *DerivedStorage;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = __fssm_fbo_finalizeRecord_block_invoke;
  v18[3] = &unk_1E7491078;
  v18[4] = &v19;
  v18[5] = DerivedStorage;
  v18[6] = a2;
  v18[7] = a3;
  v18[8] = a4;
  v18[9] = a5;
  v18[10] = a6;
  v18[11] = a7;
  v18[12] = a1;
  dispatch_sync(v15, v18);
  v16 = *(v20 + 6);
LABEL_5:
  _Block_object_dispose(&v19, 8);
  return v16;
}

void __fssm_fbo_initialize_block_invoke(uint64_t a1)
{
  cf = 0;
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v5 = CFURLCreateFilePathURL(*MEMORY[0x1E695E480], *(a1 + 48), 0);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetAllocator(*(a1 + 56));
    v8 = FigSecureStopArchivistCopyInstance(v7, *(a1 + 64), v6, &cf);
    v9 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = v8;
    v10 = *(v9 + 16);
    v11 = cf;
    *(v9 + 16) = cf;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    CFRelease(v6);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    __fssm_fbo_initialize_block_invoke_cold_1(a1);
  }
}

uint64_t OUTLINED_FUNCTION_1_144(uint64_t result)
{
  *v1 = result;
  *(*v2 + 24) = result;
  return result;
}

uint64_t FigServedTrackReaderStateCreate(uint64_t a1, const void *a2, uint64_t *a3)
{
  if (a3)
  {
    if (a2)
    {
      if (qword_1ED4CB530 != -1)
      {
        FigServedTrackReaderStateCreate_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        v7 = Instance;
        *(Instance + 16) = CFRetain(a2);
        *(v7 + 32) = 1;
        v8 = FigPartialSampleTableOutOfBandObjectRegistryCreate(a1, (v7 + 24));
        if (v8)
        {
          CFRelease(v7);
        }

        else
        {
          *a3 = v7;
        }
      }

      else
      {
        FigServedTrackReaderStateCreate_cold_2(&v10);
        return v10;
      }
    }

    else
    {
      FigServedTrackReaderStateCreate_cold_3(&v11);
      return v11;
    }
  }

  else
  {
    FigServedTrackReaderStateCreate_cold_4(&v12);
    return v12;
  }

  return v8;
}

uint64_t FigServedSampleCursorStateCreate(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  if (!a3)
  {
    FigServedSampleCursorStateCreate_cold_6(&v15);
    return v15;
  }

  if (!a3[3])
  {
    FigServedSampleCursorStateCreate_cold_5(&v15);
    return v15;
  }

  if (!a4)
  {
    FigServedSampleCursorStateCreate_cold_4(&v15);
    return v15;
  }

  if (qword_1ED4CB550 != -1)
  {
    FigServedSampleCursorStateCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigServedSampleCursorStateCreate_cold_3(&v15);
    return v15;
  }

  v7 = Instance;
  *(Instance + 16) = CFRetain(a3);
  v8 = a3[3];
  if (v8)
  {
    v8 = CFRetain(v8);
  }

  *(v7 + 24) = v8;
  if (FigSampleCursorServer_copyMemoryPool_sOnceToken != -1)
  {
    FigServedSampleCursorStateCreate_cold_2();
  }

  FigSimpleMutexLock();
  if (!FigSampleCursorServer_copyMemoryPool_sSharedMemoryPoolWeakRef || (v9 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = CMMemoryPoolCreate(Mutable);
    v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v12 = v11;
    v13 = FigSampleCursorServer_copyMemoryPool_sSharedMemoryPoolWeakRef;
    FigSampleCursorServer_copyMemoryPool_sSharedMemoryPoolWeakRef = v11;
    if (v11)
    {
      CFRetain(v11);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  FigSimpleMutexUnlock();
  *(v7 + 40) = v9;
  FigXPCServerCopyMemoryOrigin();
  FigXPCServerCopyMemoryRecipient();
  result = 0;
  *(v7 + 32) = 0;
  *a4 = v7;
  return result;
}

void FigSampleCursorServer_SetSampleCursorProperties(uint64_t a1, CFTypeRef cf, int a3, char a4, __int128 *a5, uint64_t a6, void *a7)
{
  v8 = a6;
  v55 = 0;
  v56[0] = 0;
  v54 = 0;
  if (a6)
  {
    if (FigSampleCursorServer_maximumStepsForBuildingPartialSampleTable_maximumStepsForBuildingPartialSampleTableOnce != -1)
    {
      FigSampleCursorServer_SetSampleCursorProperties_cold_1();
    }

    v14 = FigSampleCursorServer_maximumStepsForBuildingPartialSampleTable_maximumStepsForBuildingPartialSampleTable;
    v15 = 20;
  }

  else
  {
    v15 = 0;
    v14 = 1;
  }

  v16 = CFGetTypeID(cf);
  if (v16 != FigSampleCursorGetTypeID())
  {
    FigSampleCursorServer_SetSampleCursorProperties_cold_2();
    goto LABEL_76;
  }

  if (a3)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 64))
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 80))
    {
      v17 |= 4u;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 144))
    {
      v17 |= 8u;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 152))
    {
      v17 |= 0x10u;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 112))
    {
      v17 |= 0x20u;
    }

    if (*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      v17 |= 0x40u;
    }

    xpc_dictionary_set_uint64(a7, "SampleCursorOptionalMethods", v17);
  }

  if (a4)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    bytes = 0u;
    v50 = 0u;
    v18 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v18)
    {
      if (!v18(cf, &v50 + 8))
      {
        v19 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v19)
        {
          if (!v19(cf, &v52))
          {
            v20 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v20)
            {
              if (!v20(cf, &bytes))
              {
                v45[0] = 0;
                if (!*(*(CMBaseObjectGetVTable() + 16) + 64) || (v21 = *(*(CMBaseObjectGetVTable() + 16) + 64)) != 0 && ((v22 = v21(cf, v45 + 4, v45 + 5, v45, v45 + 6)) == 0 || v22 == -12840))
                {
                  xpc_dictionary_set_data(a7, "SampleCursorSampleTimingInfo", &bytes, 0x48uLL);
                  xpc_dictionary_set_data(a7, "SampleCursorSyncInfo", v45, 8uLL);
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_76;
  }

  memset(capacity, 0, sizeof(capacity));
  value = 0;
  v46 = 0;
  if (v14 != 1 && FigSampleCursorServer_maximumStoragePagesForBuildingPartialSampleTable_maximumStoragePagesForBuildingPartialSampleTableOnce != -1)
  {
    FigSampleCursorServer_SetSampleCursorProperties_cold_3();
  }

  if (FigMemoryPoolCreateBlockBuffer() || (v45[0] = 0, v45[1] = FigSampleCursorServer_TranslateByteStream, v45[2] = FigSampleCursorServer_TranslateDataSource, v45[3] = FigSampleCursorServer_TranslateFormatDescription, FigPartialSampleTableRecommendSampleTableFlagsForCursor(1023, cf, &capacity[1])))
  {
LABEL_76:
    Mutable = 0;
    goto LABEL_77;
  }

  v44[0] = a1;
  v44[1] = a7;
  v23 = *(a1 + 16);
  if (!v23)
  {
    v24 = *&capacity[1];
    if ((a4 & 4) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v24 = *&capacity[1];
  if (!*(v23 + 33))
  {
    v24 = *&capacity[1] & 0xFFFFFFFFFFFFFDFFLL;
    *&capacity[1] &= ~0x200uLL;
  }

  if (!*(v23 + 32))
  {
    v24 &= ~1uLL;
    *&capacity[1] = v24;
  }

  if ((a4 & 4) == 0)
  {
LABEL_46:
    v24 &= ~0x200uLL;
    *&capacity[1] = v24;
  }

LABEL_47:
  v25 = *(*(v23 + 16) + 32);
  v26 = a5[1];
  bytes = *a5;
  v50 = v26;
  v51 = a5[2];
  if (FigPartialSampleTableBuildFromFigSampleCursorAndWriteToBlockBuffer(cf, v56[0], v45, v44, v24, v25, &bytes, v8, v15, v14, &value, capacity, &v46))
  {
    goto LABEL_76;
  }

  if (FigXPCMessageSetBlockBuffer())
  {
    goto LABEL_76;
  }

  xpc_dictionary_set_int64(a7, "SampleCursorSampleIndex", value);
  if (!v46)
  {
    goto LABEL_76;
  }

  *&bytes = 0;
  v27 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity[0], MEMORY[0x1E695E9C0]);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v29 && !v29(cf, &v55))
  {
    v30 = v55;
    v31 = value;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v32)
    {
      v32(v30, -v31, &bytes);
    }

    v33 = bytes + value == 0;
    if (capacity[0] >= 1 && bytes == -value)
    {
      v34 = *MEMORY[0x1E695E738];
      v35 = 1;
      do
      {
        cfa = 0;
        FigSampleCursorGetFigBaseObject();
        v37 = v36;
        v38 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v38)
        {
          v38(v37, @"SampleDependencyAttributes", v27, &cfa);
        }

        v39 = cfa;
        if (!cfa)
        {
          v39 = v34;
        }

        CFArrayAppendValue(Mutable, v39);
        if (cfa)
        {
          CFRelease(cfa);
        }

        v40 = capacity[0];
        if (v35 >= capacity[0])
        {
          v33 = 1;
        }

        else
        {
          v41 = v55;
          v42 = *(*(CMBaseObjectGetVTable() + 16) + 168);
          if (v42)
          {
            v42(v41, 1, &bytes);
          }

          v33 = bytes == 1;
          v40 = capacity[0];
        }

        if (v35 >= v40)
        {
          break;
        }

        ++v35;
      }

      while (v33);
    }

    if (v33 && !FigRemote_CreateSerializedAtomDataBlockBufferWithFlagsForCFType())
    {
      FigXPCMessageSetBlockBuffer();
    }
  }

LABEL_77:
  if (v56[0])
  {
    CFRelease(v56[0]);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v55)
  {
    CFRelease(v55);
  }
}

uint64_t CreateServedFormatReaderState(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1ED4CB540 != -1)
  {
    CreateServedFormatReaderState_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    CreateServedFormatReaderState_cold_3(&v11);
    return v11;
  }

  v5 = Instance;
  v6 = FigSandboxAssertionCreateForPID();
  if (v6)
  {
    v8 = v6;
LABEL_11:
    CFRelease(v5);
    return v8;
  }

  v7 = FigOSTransactionCreate();
  v5[3] = v7;
  if (!v7)
  {
    CreateServedFormatReaderState_cold_2(&v10);
    v8 = v10;
    goto LABEL_11;
  }

  v8 = 0;
  *a3 = v5;
  return v8;
}

uint64_t FigXPCFormatReaderServerAssociateCopiedNeighborFormatReader(_xpc_connection_s *a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  pid = xpc_connection_get_pid(a1);
  v4 = CreateServedFormatReaderState(*MEMORY[0x1E695E480], pid, &v9);
  if (v4)
  {
    v7 = v4;
    v6 = v9;
    if (!v9)
    {
      return v7;
    }

LABEL_5:
    CFRelease(v6);
    return v7;
  }

  v5 = mightFormatReaderBlockOnIOWhenStepping();
  v6 = v9;
  v9[32] = v5;
  v7 = FigXPCServerAssociateCopiedObjectWithNeighborProcess();
  if (v7)
  {
    goto LABEL_5;
  }

  return v7;
}

BOOL mightFormatReaderBlockOnIOWhenStepping()
{
  cf = 0;
  FigFormatReaderGetFigBaseObject();
  v1 = v0;
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  v3 = v2 && !v2(v1, @"Identifier", *MEMORY[0x1E695E480], &cf) && (FigCFEqual() || FigCFEqual() || FigCFEqual());
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

uint64_t FigXPCFormatReaderServerCopyFormatReaderForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == FigFormatReaderGetTypeID())
    {
      return 0;
    }

    FigXPCFormatReaderServerCopyFormatReaderForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigFormatReaderServerStart(uint64_t a1)
{
  if (!FigServer_IsMediaparserd())
  {
    FigServer_IsMediaplaybackd();
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v2 = Mutable;
    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    FigCFDictionarySetInt32();
    v3 = FigXPCServerStart();
    CFRelease(v2);
  }

  else
  {
    FigFormatReaderServerStart_cold_1(&v5);
    return v5;
  }

  return v3;
}

uint64_t FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint(uint64_t a1)
{
  if (FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_sEndpointServer)
  {
    FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_cold_1(&v2);
  }

  else
  {
    FigFormatReaderServerStartLoopbackServerAndCopyXPCEndpoint_cold_2();
  }

  return v2;
}

uint64_t FigXPCFormatReaderServerCopyTrackReaderForID(uint64_t a1, CFTypeRef *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (*a2)
    {
      v4 = CFGetTypeID(*a2);
      if (v4 == FigTrackReaderGetTypeID())
      {
        return 0;
      }
    }

    FigXPCFormatReaderServerCopyTrackReaderForID_cold_1(&v7);
    v5 = v7;
  }

  if (a2 && v5 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v5;
}

uint64_t FigXPCFormatReaderServerCopySampleCursorForID(uint64_t a1, void *a2)
{
  v3 = FigXPCServerRetainNeighborObjectFromID();
  if (v3)
  {
    return v3;
  }

  v4 = 0;
  *a2 = 0;
  return v4;
}

uint64_t registerFigServedTrackReaderStateType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB538 = result;
  return result;
}

void *FigServedTrackReaderState_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void FigServedTrackReaderState_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 16) = 0;
  }
}

__CFString *FigServedTrackReaderState_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigServedTrackReaderState %p>", a1);
  return Mutable;
}

uint64_t __FigServedFormatReaderStateGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB548 = result;
  return result;
}

void *servedFormatReaderState_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void servedFormatReaderState_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    os_release(v3);
    *(a1 + 24) = 0;
  }
}

__CFString *servedFormatReaderState_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"FigServedFormatReaderState %p", a1);
  return Mutable;
}

uint64_t registerFigServedSampleCursorStateType()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED4CB558 = result;
  return result;
}

double FigServedSampleCursorState_Init(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

void FigServedSampleCursorState_Finalize(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    a1[2] = 0;
  }

  v3 = a1[3];
  if (v3)
  {
    CFRelease(v3);
    a1[3] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }
}

__CFString *FigServedSampleCursorState_CopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigServedSampleCursorState %p>", a1);
  return Mutable;
}

uint64_t FigSampleCursorServer_TranslateByteStream(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  if (FigServer_IsMediaparserd())
  {
    result = FigByteStreamRemoteGetObjectID(a2, &v7);
    if (a3 && !result)
    {
      v6 = v7;
LABEL_7:
      result = 0;
      *a3 = v6;
    }
  }

  else
  {
    if (a3)
    {
      v6 = 0;
      goto LABEL_7;
    }

    return 0;
  }

  return result;
}

void HandleSampleCursorMessage(int a1, int a2, const void *a3, const void *a4, const void *a5, int a6, xpc_object_t xdict, _BYTE *a8)
{
  if (xpc_dictionary_get_uint64(xdict, "SampleCursorSecondSampleCursorID"))
  {
    xpc_dictionary_set_value(xdict, "SampleCursorSecondSampleCursorID", 0);
  }

  if (a1 > 1936159592)
  {
    if (a1 > 1936941670)
    {
      if (a1 > 1936944226)
      {
        if (a1 == 1936944227)
        {

          HandleSampleCursorCopySampleLocationMessage(a3, a8);
        }

        else if (a1 == 1936945268)
        {

          HandleSampleCursorStepByPresentationTimeMessage(a3, a4, xdict, a8);
        }
      }

      else if (a1 == 1936941671)
      {

        HandleSampleCursorGetBatchSampleTimingAndSizes(a3, a5, xdict, a8);
      }

      else if (a1 == 1936942196)
      {

        HandleSampleCursorStepByDecodeTimeMessage(a3, a4, xdict, a8);
      }
    }

    else if (a1 > 1936730999)
    {
      if (a1 == 1936731000)
      {

        HandleSampleCursorStepInPresentationOrderAndReportStepsTakenMessage(a3, a4, xdict, a8);
      }

      else if (a1 == 1936941670)
      {

        HandleSampleCursorCreateSampleBufferMessage(a3, a5, a8);
      }
    }

    else if (a1 == 1936159593)
    {

      HandleSampleCursorGetSampleSyncInfoMessage(a3, a8);
    }

    else if (a1 == 1936159849)
    {

      HandleSampleCursorGetSampleTimingInfoMessage(a3, a8);
    }
  }

  else if (a1 > 1935896690)
  {
    if (a1 > 1935944567)
    {
      if (a1 == 1935944568)
      {

        HandleSampleCursorStepInDecodeOrderAndReportStepsTakenMessage(a3, a4, xdict, a8);
      }

      else if (a1 == 1935962979)
      {

        HandleSampleCursorCopyFormatDescriptionMessage(a3, a8);
      }
    }

    else if (a1 == 1935896691)
    {

      HandleSampleCursorCopyMessage(a2, a3, a4, xdict, a8);
    }

    else if (a1 == 1935896697)
    {

      HandleSampleCursorCopyPropertyMessage(a3, xdict, a8);
    }
  }

  else if (a1 > 1935894634)
  {
    if (a1 == 1935894635)
    {

      HandleSampleCursorCopyChunkDetailsMessage(a3, a8);
    }

    else if (a1 == 1935895920)
    {

      HandleSampleCursorCompareInDecodeOrderMessage(a3, a5, a8);
    }
  }

  else if (a1 == 1668492075)
  {

    HandleSampleCursorMaybeCopyAndStepCursorsThenPerformOperationWithCopiesMessage(a2, a3, a4, a5, a6, xdict, a8);
  }

  else if (a1 == 1935830628)
  {

    HandleSampleCursorTestReorderingBoundaryMessage(a3, a5, xdict, a8);
  }
}

uint64_t HandleSampleCursorCopyPropertyMessage(const void *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  cf = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == FigSampleCursorGetTypeID())
  {
    v5 = FigXPCMessageCopyCFString();
    if (!v5)
    {
      emitter = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954512, "<< FigFormatReaderXPCServer >>", 1942, v3);
    }
  }

  else
  {
    v7 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v7, 4294954516, "<< FigFormatReaderXPCServer >>", 1936, v3);
  }

  v9 = v5;
  if (v10)
  {
    CFRelease(v10);
  }

  return v9;
}

uint64_t HandleSampleCursorCopyMessage(int a1, CFTypeRef cf, int a3, void *a4, void *a5)
{
  v8 = cf;
  cfa = 0;
  value[0] = 0;
  v19 = 0;
  v10 = CFGetTypeID(cf);
  if (v10 == FigSampleCursorGetTypeID())
  {
    CopySampleCursorAndReturnObjectID(a1, v8, a3, &v19, &cfa, value, v11, v12, v18, v19, cfa, value[0], value[1], value[2], value[3], value[4], value[5], value[6], value[7], value[8], value[9], value[10]);
    v14 = v13;
    if (!v13)
    {
      v15 = FigSampleCursorServer_obtainCacheOption(a4);
      FigSampleCursorServer_SetSampleCursorProperties(cfa, v19, 0, v15, MEMORY[0x1E6960C98], 0, a5);
      xpc_dictionary_set_uint64(a5, *MEMORY[0x1E69615A0], value[0]);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, cfa);
    v14 = v17;
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v14;
}

double HandleSampleCursorGetSampleTimingInfoMessage(const void *a1, void *a2)
{
  v5 = *(MEMORY[0x1E6960CF0] + 48);
  v14[1] = *(MEMORY[0x1E6960CF0] + 32);
  v15 = v5;
  v16 = *(MEMORY[0x1E6960CF0] + 64);
  v6 = *(MEMORY[0x1E6960CF0] + 16);
  v13 = *MEMORY[0x1E6960CF0];
  v14[0] = v6;
  v7 = CFGetTypeID(a1);
  if (v7 == FigSampleCursorGetTypeID())
  {
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v8)
    {
      if (!v8(a1, v14 + 8))
      {
        v10 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (v10)
        {
          if (!v10(a1, &v15))
          {
            v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
            if (v11)
            {
              if (!v11(a1, &v13))
              {
                xpc_dictionary_set_data(a2, "SampleCursorSampleTimingInfo", &v13, 0x48uLL);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", 2136, v2);
  }

  return result;
}

double HandleSampleCursorGetSampleSyncInfoMessage(const void *a1, void *a2)
{
  bytes = 0;
  v5 = CFGetTypeID(a1);
  if (v5 == FigSampleCursorGetTypeID())
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v6)
    {
      v8 = v6(a1, &bytes + 4, &bytes + 5, &bytes, &bytes + 6);
      if (v8)
      {
        v9 = v8 == -12840;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        xpc_dictionary_set_data(a2, "SampleCursorSyncInfo", &bytes, 8uLL);
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", 2183, v2);
  }

  return result;
}

double HandleSampleCursorStepByDecodeTimeMessage(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  v9 = CFGetTypeID(a1);
  if (v9 == FigSampleCursorGetTypeID())
  {
    if (!FigXPCMessageGetCMTime())
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 120);
      if (v11)
      {
        v18 = v16;
        v19 = v17;
        v12 = v11(a1, &v18);
        if (v12)
        {
          v13 = v12 == -12840;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          xpc_dictionary_set_BOOL(a4, "SampleCursorPositionWasPinned", v12 == -12840);
          v14 = FigSampleCursorServer_obtainCacheOption(a3);
          FigSampleCursorServer_SetSampleCursorProperties(a2, a1, 0, v14, MEMORY[0x1E6960C98], 0, a4);
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", 2220, v4);
  }

  return result;
}

double HandleSampleCursorStepByPresentationTimeMessage(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x1E6960C70];
  v17 = *(MEMORY[0x1E6960C70] + 16);
  v9 = CFGetTypeID(a1);
  if (v9 == FigSampleCursorGetTypeID())
  {
    if (!FigXPCMessageGetCMTime())
    {
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 128);
      if (v11)
      {
        v18 = v16;
        v19 = v17;
        v12 = v11(a1, &v18);
        if (v12)
        {
          v13 = v12 == -12840;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          xpc_dictionary_set_BOOL(a4, "SampleCursorPositionWasPinned", v12 == -12840);
          v14 = FigSampleCursorServer_obtainCacheOption(a3);
          FigSampleCursorServer_SetSampleCursorProperties(a2, a1, 0, v14, MEMORY[0x1E6960C98], 0, a4);
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", 2283, v4);
  }

  return result;
}

uint64_t HandleSampleCursorStepInDecodeOrderAndReportStepsTakenMessage(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v23 = 0;
  v8 = *(MEMORY[0x1E6960C98] + 16);
  v20 = *MEMORY[0x1E6960C98];
  v21 = v8;
  v22 = *(MEMORY[0x1E6960C98] + 32);
  v9 = CFGetTypeID(a1);
  if (v9 == FigSampleCursorGetTypeID())
  {
    int64 = xpc_dictionary_get_int64(a3, "SampleCursorStepCount");
    FigXPCMessageGetCMTimeRange();
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (v11)
    {
      v12 = v11(a1, int64, &v23);
      if (!v12)
      {
        if (int64 > 0)
        {
          v13 = 1;
        }

        else
        {
          v13 = (int64 >> 63);
        }

        v14 = FigSampleCursorServer_obtainCacheOption(a3);
        v17 = v20;
        v18 = v21;
        v19 = v22;
        FigSampleCursorServer_SetSampleCursorProperties(a2, a1, 0, v14, &v17, v13, a4);
      }
    }

    else
    {
      v12 = 4294954514;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, DWORD2(v17), v18);
    v12 = v16;
  }

  xpc_dictionary_set_int64(a4, "SampleCursorStepsTaken", v23);
  return v12;
}

uint64_t HandleSampleCursorStepInPresentationOrderAndReportStepsTakenMessage(const void *a1, uint64_t a2, void *a3, void *a4)
{
  v23 = 0;
  v8 = *(MEMORY[0x1E6960C98] + 16);
  v20 = *MEMORY[0x1E6960C98];
  v21 = v8;
  v22 = *(MEMORY[0x1E6960C98] + 32);
  v9 = CFGetTypeID(a1);
  if (v9 == FigSampleCursorGetTypeID())
  {
    int64 = xpc_dictionary_get_int64(a3, "SampleCursorStepCount");
    FigXPCMessageGetCMTimeRange();
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v11)
    {
      v12 = v11(a1, int64, &v23);
      if (!v12)
      {
        if (int64 > 0)
        {
          v13 = 1;
        }

        else
        {
          v13 = (int64 >> 63);
        }

        v14 = FigSampleCursorServer_obtainCacheOption(a3);
        v17 = v20;
        v18 = v21;
        v19 = v22;
        FigSampleCursorServer_SetSampleCursorProperties(a2, a1, 0, v14, &v17, v13, a4);
      }
    }

    else
    {
      v12 = 4294954514;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, DWORD2(v17), v18);
    v12 = v16;
  }

  xpc_dictionary_set_int64(a4, "SampleCursorStepsTaken", v23);
  return v12;
}

void HandleSampleCursorCompareInDecodeOrderMessage(const void *a1, const void *a2, void *a3)
{
  v7 = CFGetTypeID(a1);
  if (v7 == FigSampleCursorGetTypeID())
  {
    if (a2)
    {
      v11 = CFGetTypeID(a2);
      if (v11 == FigSampleCursorGetTypeID())
      {
        v12 = *(CMBaseObjectGetVTable() + 16);
        if (v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = *(CMBaseObjectGetVTable() + 16);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        if (v13 == v15 && *(v13 + 32))
        {
          v16 = (*(v15 + 32))(a1, a2);
        }

        else
        {
          v16 = 0;
        }

        xpc_dictionary_set_int64(a3, "SampleCursorComparisonResult", v16);
        return;
      }
    }

    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 2480;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v9 = v3;
    v10 = 2479;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", v10, v9);
}

void HandleSampleCursorTestReorderingBoundaryMessage(const void *a1, const void *a2, void *a3, void *a4)
{
  v9 = CFGetTypeID(a1);
  if (v9 == FigSampleCursorGetTypeID())
  {
    if (a2)
    {
      v13 = CFGetTypeID(a2);
      if (v13 == FigSampleCursorGetTypeID())
      {
        int64 = xpc_dictionary_get_int64(a3, "SampleCursorReorderingBoundary");
        v15 = *(CMBaseObjectGetVTable() + 16);
        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16 == *(CMBaseObjectGetVTable() + 16) && (v18 = *(v16 + 80)) != 0 && v18(a1, a2, int64) != 0;
        xpc_dictionary_set_BOOL(a4, "SampleCursorTestReorderingBoundaryResult", v17);
        return;
      }
    }

    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 2515;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v11 = v4;
    v12 = 2514;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", v12, v11);
}

uint64_t HandleSampleCursorCopySampleLocationMessage(const void *a1, void *a2)
{
  cf = 0;
  v14 = 0;
  v4 = CFGetTypeID(a1);
  if (v4 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, cf);
    goto LABEL_19;
  }

  v11 = 0;
  v12 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v5)
  {
    v7 = 4294954514;
    goto LABEL_10;
  }

  v6 = v5(a1, &v11, &v12, &v14, &cf);
  if (v6)
  {
LABEL_19:
    v7 = v6;
    goto LABEL_10;
  }

  xpc_dictionary_set_data(a2, "SampleCursorSampleStorageRange", &v11, 0x10uLL);
  if (v14)
  {
    if (!cf)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &cf);
      }
    }
  }

  else if (!cf)
  {
    return 0;
  }

  FigXPCMessageSetCFURL();
  v7 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v7;
}

uint64_t HandleSampleCursorCopyChunkDetailsMessage(const void *a1, void *a2)
{
  v19 = 0;
  v20 = 0;
  cf = 0;
  v4 = CFGetTypeID(a1);
  if (v4 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    goto LABEL_19;
  }

  bytes = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v5)
  {
    v7 = 4294954514;
    goto LABEL_10;
  }

  v6 = v5(a1, &v19, &cf, &bytes, &v17, &v14, &v20, &v15, &v15 + 1, &v15 + 2);
  if (v6)
  {
LABEL_19:
    v7 = v6;
    goto LABEL_10;
  }

  xpc_dictionary_set_data(a2, "SampleCursorSampleStorageRange", &bytes, 0x10uLL);
  xpc_dictionary_set_data(a2, "SampleCursorChunkInfo", &v14, 0x10uLL);
  xpc_dictionary_set_int64(a2, "SampleCursorSampleIndex", v20);
  if (v19)
  {
    if (!cf)
    {
      CMBaseObject = CMByteStreamGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], &cf);
      }
    }
  }

  else if (!cf)
  {
    return 0;
  }

  FigXPCMessageSetCFURL();
  v7 = 0;
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v7;
}

double HandleSampleCursorCopyFormatDescriptionMessage(const void *a1, uint64_t a2)
{
  cf = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == FigSampleCursorGetTypeID())
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 160);
    if (v5)
    {
      v7 = v5(a1, &cf);
      v8 = cf;
      if (v7)
      {
        if (cf)
        {
          goto LABEL_5;
        }
      }

      else
      {
        FigXPCMessageSetFormatDescription();
        v8 = cf;
        if (cf)
        {
LABEL_5:
          CFRelease(v8);
        }
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", 2693, v2);
  }

  return result;
}

uint64_t HandleSampleCursorCreateSampleBufferMessage(const void *a1, uint64_t a2, uint64_t a3)
{
  theBuffer = 0;
  cf = 0;
  v5 = CFGetTypeID(a1);
  if (v5 != FigSampleCursorGetTypeID())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, blockBufferOut, theBuffer);
    goto LABEL_11;
  }

  v6 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v6)
  {
    SerializedAtomDataBlockBufferForSampleBuffer = v6(a1, a2, &cf);
    if (SerializedAtomDataBlockBufferForSampleBuffer)
    {
      goto LABEL_11;
    }

    v8 = *MEMORY[0x1E695E480];
    SerializedAtomDataBlockBufferForSampleBuffer = FigRemote_CreateSerializedAtomDataBlockBufferForSampleBuffer();
    if (SerializedAtomDataBlockBufferForSampleBuffer)
    {
      goto LABEL_11;
    }

    if (!CMBlockBufferIsRangeContiguous(theBuffer, 0, 0))
    {
      blockBufferOut = 0;
      SerializedAtomDataBlockBufferForSampleBuffer = CMBlockBufferCreateContiguous(v8, theBuffer, v8, 0, 0, 0, 0, &blockBufferOut);
      if (SerializedAtomDataBlockBufferForSampleBuffer)
      {
LABEL_11:
        v9 = SerializedAtomDataBlockBufferForSampleBuffer;
        goto LABEL_13;
      }

      if (theBuffer)
      {
        CFRelease(theBuffer);
      }

      theBuffer = blockBufferOut;
    }

    SerializedAtomDataBlockBufferForSampleBuffer = FigXPCMessageSetBlockBuffer();
    goto LABEL_11;
  }

  v9 = 4294954514;
LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v9;
}

uint64_t HandleSampleCursorGetBatchSampleTimingAndSizes(const void *a1, const void *a2, void *a3, void *a4)
{
  dataPointerOut = 0;
  v31 = 0;
  blockBufferOut = 0;
  theBuffer = 0;
  value = 0;
  v27 = 0;
  v25 = 0;
  v9 = CFGetTypeID(a1);
  if (v9 != FigSampleCursorGetTypeID())
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", 2779, v4);
    goto LABEL_39;
  }

  if (a2)
  {
    v10 = CFGetTypeID(a2);
    if (v10 != FigSampleCursorGetTypeID())
    {
      v24 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, 4294954516, "<< FigFormatReaderXPCServer >>", 2780, v4);
      goto LABEL_39;
    }
  }

  int64 = xpc_dictionary_get_int64(a3, "SampleCursorBatchMaxSamplesToInclude");
  v12 = xpc_dictionary_get_BOOL(a3, "SampleCursorBatchRequiresSampleSizeEntries");
  if (xpc_dictionary_get_BOOL(a3, "SampleCursorBatchRequiresSampleTimingEntries"))
  {
    v13 = &v25;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    p_value = &value;
  }

  else
  {
    p_value = 0;
  }

  BatchSampleTimingAndSizes = FigSampleCursorUtilityGetBatchSampleTimingAndSizes(a1, int64, a2, 0, v13, 0, p_value, 0);
  if (BatchSampleTimingAndSizes)
  {
    goto LABEL_39;
  }

  v16 = v25;
  if (v25 > int64)
  {
    v22 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954447, "<< FigFormatReaderXPCServer >>", 2798, v4);
    goto LABEL_39;
  }

  if (value > int64)
  {
    v23 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, 4294954447, "<< FigFormatReaderXPCServer >>", 2799, v4);
    goto LABEL_39;
  }

  v17 = MEMORY[0x1E695E480];
  if (value)
  {
    BatchSampleTimingAndSizes = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8 * value, *MEMORY[0x1E695E480], 0, 0, 8 * value, 1u, &theBuffer);
    if (BatchSampleTimingAndSizes)
    {
      goto LABEL_39;
    }

    BatchSampleTimingAndSizes = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (BatchSampleTimingAndSizes)
    {
      goto LABEL_39;
    }

    v16 = v25;
  }

  if (v16)
  {
    BatchSampleTimingAndSizes = CMBlockBufferCreateWithMemoryBlock(*v17, 0, 72 * v16, *v17, 0, 0, 72 * v16, 1u, &blockBufferOut);
    if (BatchSampleTimingAndSizes)
    {
      goto LABEL_39;
    }

    BatchSampleTimingAndSizes = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &v31);
    if (BatchSampleTimingAndSizes)
    {
      goto LABEL_39;
    }

    v18 = v31;
  }

  else
  {
    v18 = 0;
  }

  BatchSampleTimingAndSizes = FigSampleCursorUtilityGetBatchSampleTimingAndSizes(a1, int64, a2, &v27, v13, v18, p_value, dataPointerOut);
  if (!BatchSampleTimingAndSizes)
  {
    if (theBuffer)
    {
      BatchSampleTimingAndSizes = FigXPCMessageSetBlockBuffer();
      if (BatchSampleTimingAndSizes)
      {
        goto LABEL_39;
      }

      xpc_dictionary_set_int64(a4, "SampleCursorBatchNumSampleSizeEntries", value);
    }

    if (!blockBufferOut)
    {
LABEL_29:
      xpc_dictionary_set_int64(a4, "SampleCursorBatchNumSamplesIncluded", v27);
      v19 = 0;
      goto LABEL_30;
    }

    BatchSampleTimingAndSizes = FigXPCMessageSetBlockBuffer();
    if (!BatchSampleTimingAndSizes)
    {
      xpc_dictionary_set_int64(a4, "SampleCursorBatchNumSampleTimingEntries", v25);
      goto LABEL_29;
    }
  }

LABEL_39:
  v19 = BatchSampleTimingAndSizes;
LABEL_30:
  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v19;
}

uint64_t HandleSampleCursorMaybeCopyAndStepCursorsThenPerformOperationWithCopiesMessage(int a1, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4, int a5, void *a6, _BYTE *a7)
{
  xdict = a7;
  v12 = cf;
  v42 = 0;
  cfa = 0;
  v40 = 0;
  value = 0;
  v14 = CFGetTypeID(cf);
  if (v14 != FigSampleCursorGetTypeID())
  {
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954516, "<< FigFormatReaderXPCServer >>", 2977, v7);
    goto LABEL_36;
  }

  v15 = xpc_dictionary_get_BOOL(a6, "SampleCursorCursorMustCopy");
  int64 = xpc_dictionary_get_int64(a6, "SampleCursorMatchCacheSteps");
  v37 = v7;
  if (a4)
  {
    v19 = CFGetTypeID(a4);
    if (v19 != FigSampleCursorGetTypeID())
    {
      v32 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, 4294954516, "<< FigFormatReaderXPCServer >>", 2984, v7);
      goto LABEL_36;
    }

    v20 = xpc_dictionary_get_BOOL(a6, "SampleCursorSecondCursorMustCopy");
    v21 = xpc_dictionary_get_int64(a6, "SampleCursorSecondCursorMatchCacheSteps");
    v22 = !v20;
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v21 = 0;
    v22 = 1;
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  CopySampleCursorAndReturnObjectID(a1, v12, a3, &cfa, &v39, &value, v16, v17, v36, v7, xdict, 0, v40, value, v42, cfa, v44, v45, v46, v47, v48, v49);
  if (v24)
  {
    goto LABEL_36;
  }

  xpc_dictionary_set_uint64(xdict, *MEMORY[0x1E69615A0], value);
  v12 = cfa;
  a3 = v39;
  if (v39)
  {
    CFRelease(v39);
  }

LABEL_7:
  if ((v22 & 1) == 0)
  {
    CopySampleCursorAndReturnObjectID(a1, a4, a5, &v42, &v39, &v40, v16, v17, v36, v37, xdict, 0, v40, value, v42, cfa, v44, v45, v46, v47, v48, v49);
    if (v24)
    {
      goto LABEL_36;
    }

    xpc_dictionary_set_uint64(xdict, "SampleCursorSecondSampleCursorID", v40);
    a4 = v42;
    a5 = v39;
    if (v39)
    {
      CFRelease(v39);
    }
  }

  if (int64)
  {
    v39 = 0;
    v23 = *(*(CMBaseObjectGetVTable() + 16) + 168);
    if (!v23)
    {
      goto LABEL_19;
    }

    v24 = v23(v12, int64, &v39);
    if (v24)
    {
LABEL_36:
      v27 = v24;
      goto LABEL_20;
    }

    if (int64 != v39)
    {
      v33 = fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, 4294954447, "<< FigFormatReaderXPCServer >>", 3022, v37);
      goto LABEL_36;
    }
  }

  if (!v21)
  {
    goto LABEL_16;
  }

  v39 = 0;
  v25 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v25)
  {
LABEL_19:
    v27 = 4294954514;
    goto LABEL_20;
  }

  v24 = v25(a4, v21, &v39);
  if (v24)
  {
    goto LABEL_36;
  }

  if (v21 != v39)
  {
    v35 = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, 4294954447, "<< FigFormatReaderXPCServer >>", 3031, v37);
    goto LABEL_36;
  }

LABEL_16:
  v26 = xpc_dictionary_get_value(a6, "SampleCursorAdditionalOperation");
  v27 = v26;
  if (v26)
  {
    uint64 = xpc_dictionary_get_uint64(v26, *MEMORY[0x1E69615A8]);
    empty = xpc_dictionary_create_empty();
    if (empty)
    {
      HandleSampleCursorMessage(uint64, a1, v12, a3, a4, a5, v27, empty);
      FigXPCMessageSetOSStatus();
      xpc_dictionary_set_value(xdict, "SampleCursorAdditionalReply", empty);
      v27 = 0;
    }

    else
    {
      fig_log_get_emitter();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v36, v37, xdict);
      v27 = v34;
    }
  }

LABEL_20:
  FigXPCRelease();
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  return v27;
}

uint64_t FigSampleCursorServer_obtainCacheOption(void *a1)
{
  v1 = xpc_dictionary_get_BOOL(a1, "UseSimpleCache");
  if (FigSampleCursorServer_shouldCacheMinimumUpcomingPTSInPartialSampleTable_shouldCacheMinimumUpcomingPTSInPartialSampleTableOnce != -1)
  {
    FigSampleCursorServer_obtainCacheOption_cold_1();
  }

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (FigSampleCursorServer_shouldCacheMinimumUpcomingPTSInPartialSampleTable_shouldCacheMinimumUpcomingPTSInPartialSampleTable)
  {
    return v2 | 4;
  }

  else
  {
    return v2;
  }
}

uint64_t HandleEditCursorStepMessage(const void *a1, void *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == FigEditCursorGetTypeID())
  {
    int64 = xpc_dictionary_get_int64(a2, "EditCursorStepCount");
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v6)
    {

      return v6(a1, int64);
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    HandleEditCursorStepMessage_cold_1(&v8);
    return v8;
  }
}

uint64_t HandleSampleCursorCopyPropertyFromEventLink(const void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  cf = 0;
  v8 = CFGetTypeID(a1);
  if (v8 != FigSampleCursorGetTypeID())
  {
    HandleSampleCursorCopyPropertyFromEventLink_cold_1(&v14);
    return v14;
  }

  v9 = *(a3 + 336);
  if (v9 > a4)
  {
    HandleSampleCursorCopyPropertyFromEventLink_cold_3(&v14);
    return v14;
  }

  if (!v9 || (v10 = FigInMemoryDeserializerCopyCFString(), !v10))
  {
    HandleSampleCursorCopyPropertyFromEventLink_cold_2(&v14);
    return v14;
  }

  return v10;
}

uint64_t HandleSampleCursorGetSampleSyncInfoFromEventLink(const void *a1, uint64_t a2)
{
  v8 = 0;
  v4 = CFGetTypeID(a1);
  if (v4 == FigSampleCursorGetTypeID())
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v5)
    {
      result = v5(a1, &v8 + 4, &v8 + 5, &v8, &v8 + 6);
      if (result)
      {
        v7 = result == -12840;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        *(a2 + 336) = v8;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  else
  {
    HandleSampleCursorGetSampleSyncInfoFromEventLink_cold_1(&v9);
    return v9;
  }

  return result;
}

uint64_t HandleSampleCursorCompareInDecodeOrderFromEventLink(const void *a1, const void *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == FigSampleCursorGetTypeID())
  {
    if (a2 && (v8 = CFGetTypeID(a2), v8 == FigSampleCursorGetTypeID()))
    {
      v9 = *(CMBaseObjectGetVTable() + 16);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(CMBaseObjectGetVTable() + 16);
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if (v10 == v12 && *(v10 + 32))
      {
        v13 = (*(v12 + 32))(a1, a2);
      }

      else
      {
        v13 = 0;
      }

      result = 0;
      *(a3 + 336) = v13;
    }

    else
    {
      HandleSampleCursorCompareInDecodeOrderFromEventLink_cold_2(&v15);
      return v15;
    }
  }

  else
  {
    HandleSampleCursorCompareInDecodeOrderFromEventLink_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t HandleSampleCursorTestReorderingBoundaryFromEventLink(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v8 = CFGetTypeID(a1);
  if (v8 == FigSampleCursorGetTypeID())
  {
    if (a2 && (v10 = CFGetTypeID(a2), v10 == FigSampleCursorGetTypeID()))
    {
      v11 = *(a3 + 336);
      v12 = *(CMBaseObjectGetVTable() + 16);
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == *(CMBaseObjectGetVTable() + 16))
      {
        v14 = *(v13 + 80);
        if (v14)
        {
          LOBYTE(v14) = v14(a1, a2, v11);
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }

      result = 0;
      *(a4 + 336) = v14;
    }

    else
    {
      HandleSampleCursorTestReorderingBoundaryFromEventLink_cold_2(&v16);
      return v16;
    }
  }

  else
  {
    HandleSampleCursorTestReorderingBoundaryFromEventLink_cold_1(&v15);
    return v15;
  }

  return result;
}

uint64_t FigSampleCursorServer_TranslateDataSourceFromEventLink(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v12 = 0;
  v13 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

  v11 = 0;
  result = FigPartialSampleTableOutOfBandObjectRegistryLookupOrMakeIDForObjectOfType(*(a1 + 24), @"DataSourceURL", a3, &v13, &v11);
  if (result)
  {
    return result;
  }

  if (!v13)
  {
    FigSampleCursorServer_TranslateDataSourceFromEventLink_cold_1(&v14);
    return v14;
  }

  if (v11)
  {
    result = FigInMemorySerializerAppendCFURL();
    if (result)
    {
      return result;
    }

LABEL_6:
    if (!a7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (a7)
  {
LABEL_7:
    *a7 = v13;
  }

LABEL_8:
  result = 0;
  if (a8)
  {
    *a8 = v12;
  }

  return result;
}

CFTypeID OUTLINED_FUNCTION_17_35(int a1, CFTypeRef cf, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  return CFGetTypeID(cf);
}

uint64_t OUTLINED_FUNCTION_18_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return FigXPCServerAssociateObjectWithConnection();
}

CFTypeID OUTLINED_FUNCTION_27_24(int a1, CFTypeRef cf, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, __int16 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20)
{

  return CFGetTypeID(cf);
}

void OUTLINED_FUNCTION_28_24(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t value)
{
  *(v27 - 96) = 0;

  xpc_dictionary_set_uint64(v25, v26, value);
}

uint64_t OUTLINED_FUNCTION_30_22(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return FigXPCServerAssociateObjectWithConnectionWithFlags();
}

void OUTLINED_FUNCTION_31_24(uint64_t a1, const void *a2, uint64_t a3, char a4, __int128 *a5)
{

  FigSampleCursorServer_SetSampleCursorProperties(a1, a2, 1, a4, a5, 0, v5);
}

void OUTLINED_FUNCTION_35_17(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  *(v7 + 336) = v9 == a1;

  FigSampleCursorServer_SetSampleCursorPropertiesFromEventLink(a6, v8, a7, v7);
}

uint64_t OUTLINED_FUNCTION_36_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_42_21()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_43_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{

  return FigXPCServerAssociateCopiedObjectWithConnection();
}

uint64_t OUTLINED_FUNCTION_56_15(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{

  return FigSampleCursorServer_TranslateDataSourceFromEventLink(v10, a2, a3, v9, 0, v8, a7, a8);
}

void OUTLINED_FUNCTION_57_12(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t value)
{

  xpc_dictionary_set_uint64(v10, a2, value);
}

uint64_t OUTLINED_FUNCTION_58_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{

  return FigServedSampleCursorStateCreate(a1, v4, v5, a4);
}

void OUTLINED_FUNCTION_59_13()
{

  bzero((v0 + 24), 0x130uLL);
}

CFTypeID OUTLINED_FUNCTION_60_13(CFTypeRef cf)
{

  return CFGetTypeID(cf);
}

uint64_t FigRemote_CreateEditArrayData(size_t a1, uint64_t a2, const __CFAllocator *a3, __CFData **a4)
{
  v7 = a1;
  v8 = malloc_type_calloc(a1, 8uLL, 0x6004044C4A2DFuLL);
  usedBufLen = 0;
  if (v8)
  {
    v9 = v8;
    if (v7 >= 1)
    {
      v33 = a4;
      v10 = 0;
      v11 = (a2 + 96);
      v12 = v8;
      v13 = v7;
      while (1)
      {
        if (*v11)
        {
          v14 = CFURLCopyAbsoluteURL(*v11);
          *v12 = v14;
          if (!v14)
          {
            FigRemote_CreateEditArrayData_cold_1(&v34);
            goto LABEL_25;
          }

          v15 = CFURLGetString(v14);
          v39.length = CFStringGetLength(v15);
          v39.location = 0;
          CFStringGetBytes(v15, v39, 0x8000100u, 0x2Au, 0, 0, 0, &usedBufLen);
          v10 += usedBufLen + (-usedBufLen & 3);
        }

        ++v12;
        v11 = (v11 + 108);
        if (!--v13)
        {
          Mutable = CFDataCreateMutable(a3, v10 + 104 * v7);
          CFDataSetLength(Mutable, v10 + 104 * v7);
          if (Mutable)
          {
            MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
            v18 = (a2 + 104);
            v19 = v9;
            v20 = v7;
            do
            {
              *v37 = *(v18 - 5);
              v36 = *(v18 - 14);
              *&v37[24] = *(v18 - 2);
              *&v37[8] = *(v18 - 2);
              v34 = *(v18 - 26);
              v21 = v34;
              *v35 = *(v18 - 11);
              *&v35[24] = *(v18 - 8);
              *&v35[8] = *(v18 - 5);
              v23 = *v37;
              v22 = *&v37[16];
              v24 = v36;
              *(MutableBytePtr + 2) = *&v35[16];
              *(MutableBytePtr + 3) = v24;
              *(MutableBytePtr + 4) = v23;
              *(MutableBytePtr + 5) = v22;
              v25 = *v35;
              *MutableBytePtr = v21;
              *(MutableBytePtr + 1) = v25;
              if (*(v18 - 1))
              {
                v26 = CFURLGetString(*v19);
                v40.length = CFStringGetLength(v26);
                v40.location = 0;
                CFStringGetBytes(v26, v40, 0x8000100u, 0x2Au, 0, 0, 0, &usedBufLen);
                *(MutableBytePtr + 24) = usedBufLen;
                v27 = MutableBytePtr + 100;
                v41.length = CFStringGetLength(v26);
                v41.location = 0;
                CFStringGetBytes(v26, v41, 0x8000100u, 0x2Au, 0, v27, usedBufLen, 0);
                v28 = &v27[usedBufLen + (-usedBufLen & 3)];
              }

              else
              {
                *(MutableBytePtr + 24) = 0;
                v28 = MutableBytePtr + 100;
              }

              v29 = *v18;
              v18 += 27;
              *v28 = v29;
              MutableBytePtr = v28 + 4;
              ++v19;
              --v20;
            }

            while (v20);
            a4 = v33;
            goto LABEL_16;
          }

          FigRemote_CreateEditArrayData_cold_2(&v34);
LABEL_25:
          v30 = v34;
          goto LABEL_17;
        }
      }
    }

    Mutable = 0;
LABEL_16:
    v30 = 0;
    *a4 = Mutable;
LABEL_17:
    if (v7 >= 1)
    {
      v31 = v9;
      do
      {
        if (*v31)
        {
          CFRelease(*v31);
        }

        ++v31;
        --v7;
      }

      while (v7);
    }

    free(v9);
  }

  else
  {
    FigRemote_CreateEditArrayData_cold_3(&v34);
    return v34;
  }

  return v30;
}

uint64_t FigMutableCompositionClientServer_CreateFlattenedFormatDescriptionReplacementTable(void *a1, __CFArray **a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a1);
      if (Count)
      {
        v6 = Count;
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2 * Count, MEMORY[0x1E695E9C0]);
        if (v6 < 1)
        {
LABEL_11:
          v16 = 0;
          *a2 = Mutable;
        }

        else
        {
          v8 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
            if (!ValueAtIndex)
            {
              break;
            }

            v10 = ValueAtIndex;
            v11 = CFGetTypeID(ValueAtIndex);
            if (v11 != CFDictionaryGetTypeID())
            {
              break;
            }

            Value = CFDictionaryGetValue(v10, @"MutableCompositionFormatDescriptionReplacementTableKey_OldFormatDescription");
            if (!Value)
            {
              break;
            }

            v13 = Value;
            v14 = CFDictionaryGetValue(v10, @"MutableCompositionFormatDescriptionReplacementTableKey_NewFormatDescription");
            if (!v14)
            {
              break;
            }

            v15 = v14;
            CFArrayAppendValue(Mutable, v13);
            CFArrayAppendValue(Mutable, v15);
            if (v6 == ++v8)
            {
              goto LABEL_11;
            }
          }

          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21[1]);
          v16 = v18;
          if (Mutable)
          {
            CFRelease(Mutable);
          }
        }
      }

      else
      {
        *a2 = a1;
        CFRetain(a1);
        return 0;
      }
    }

    else
    {
      FigMutableCompositionClientServer_CreateFlattenedFormatDescriptionReplacementTable_cold_1(v21);
      return v21[0];
    }
  }

  else
  {
    v16 = 0;
    *a2 = 0;
  }

  return v16;
}

const __CFArray *FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable(const __CFArray *result, const __CFArray **a2)
{
  if (!result)
  {
    *a2 = 0;
    return result;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  if (v4 == CFArrayGetTypeID())
  {
    if (CFArrayGetCount(v3))
    {
      FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_2(&v15);
      return v15;
    }

    else
    {
      Count = CFArrayGetCount(v3);
      if ((Count + 1) <= 2)
      {
        *a2 = v3;
        CFRetain(v3);
        return 0;
      }

      v6 = Count;
      v7 = Count / 2;
      v8 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count / 2, MEMORY[0x1E695E9C0]);
      if (v6 > 1)
      {
        v10 = 0;
        v11 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v3, v11 - 1);
          v13 = CFArrayGetValueAtIndex(v3, v11);
          if (v10)
          {
            CFRelease(v10);
          }

          v10 = CFDictionaryCreateMutable(v8, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(v10, @"MutableCompositionFormatDescriptionReplacementTableKey_OldFormatDescription", ValueAtIndex);
          CFDictionarySetValue(v10, @"MutableCompositionFormatDescriptionReplacementTableKey_NewFormatDescription", v13);
          CFArrayAppendValue(Mutable, v10);
          v11 += 2;
          --v7;
        }

        while (v7);
        *a2 = Mutable;
        if (v10)
        {
          CFRelease(v10);
        }

        return 0;
      }

      result = 0;
      *a2 = Mutable;
    }
  }

  else
  {
    FigMutableCompositionClientServer_CreateUnflattenedFormatDescriptionReplacementTable_cold_1(&v14);
    return v14;
  }

  return result;
}

uint64_t FigNetworkWirelessReportingInterfaceCopyWifiStats(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    FigNetworkWirelessReportingInterfaceCopyWifiStats_cold_1();
  }

  v3 = +[FigNetworkWirelessReportingInterface globalInterface];
  v4 = [v3 wifiManager];
  v5 = [v4 getLatestWiFiStats];

  if (v5)
  {
    v6 = 0;
    *a1 = v5;
  }

  else
  {
    FigNetworkWirelessReportingInterfaceCopyWifiStats_cold_2(&v8);
    v6 = v8;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats_cold_1();
  }

  v3 = +[FigNetworkWirelessReportingInterface globalInterface];
  v4 = [v3 wtePredictionProvider];
  v5 = [v4 copyWTEPredictionStats];

  if (v5)
  {
    v6 = 0;
    *a1 = v5;
  }

  else
  {
    FigNetworkWirelessReportingInterfaceCopyWTEPredictionStats_cold_2(&v8);
    v6 = v8;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t FigNetworkWirelessReportingInterfaceCopyCellStats(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (!a1)
  {
    FigNetworkWirelessReportingInterfaceCopyCellStats_cold_1();
  }

  v3 = +[FigNetworkWirelessReportingInterface globalInterface];
  v4 = [v3 cellManager];
  v5 = [v4 getLatestCellStats];

  if (v5)
  {
    v6 = 0;
    *a1 = v5;
  }

  else
  {
    FigNetworkWirelessReportingInterfaceCopyCellStats_cold_2(&v8);
    v6 = v8;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

void sub_19671BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_19671C450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19671C778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19671CB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_96()
{

  return CMBaseObjectGetVTable();
}

uint64_t OUTLINED_FUNCTION_9_54()
{

  return [v0 setValue:v1 forKey:?];
}

uint64_t OUTLINED_FUNCTION_11_53()
{

  return [v0 setValue:v1 forKey:?];
}

uint64_t OUTLINED_FUNCTION_12_51()
{

  return [v0 setValue:v1 forKey:?];
}

uint64_t FigStreamingPlaylistEnsureMediaURL(uint64_t a1, const __CFURL *a2, const __CFURL *a3, CFTypeRef *a4, CFURLRef *a5)
{
  if (a4)
  {
    if (!*a4)
    {
      CFURLFromCFString = StreamingPlaylistCreateCFURLFromCFString(a1, a2);
      *a4 = CFURLFromCFString;
      if (!CFURLFromCFString)
      {
        FigStreamingPlaylistEnsureMediaURL_cold_1(&v13);
        return v13;
      }
    }
  }

  if (!a5 || *a5)
  {
    return 0;
  }

  if (!FigCFEqual())
  {
    v12 = StreamingPlaylistCreateCFURLFromCFString(a1, a3);
    *a5 = v12;
    if (!v12)
    {
      FigStreamingPlaylistEnsureMediaURL_cold_2(&v14);
      return v14;
    }

    return 0;
  }

  if (*a4)
  {
    v11 = CFRetain(*a4);
  }

  else
  {
    v11 = 0;
  }

  result = 0;
  *a5 = v11;
  return result;
}

CFURLRef StreamingPlaylistCreateCFURLFromCFString(uint64_t a1, const __CFURL *a2)
{
  CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
  if (CStringPtrAndBufferToFree)
  {
    v4 = CStringPtrAndBufferToFree;
    AllocatorForMedia = FigGetAllocatorForMedia();
    v6 = strlen(v4);
    v7 = CFURLCreateWithBytes(AllocatorForMedia, v4, v6, 0x8000100u, a2);
  }

  else
  {
    v7 = 0;
  }

  free(0);
  return v7;
}

const __CFArray *FigStreamPlaylistInitializeIndexValidation(uint64_t a1)
{
  FigMediaPlaylistSetHasEndTag(a1, 0);
  FigMediaPlaylistSetPlaylistActiveDurationSecs(a1, 0.0);
  FigMediaPlaylistSetHasOnlyIFrames(a1, 0);
  for (i = 0; ; ++i)
  {
    MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    if (MediaSegmentSpecifiers)
    {
      MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
    }

    if (i >= MediaSegmentSpecifiers)
    {
      break;
    }

    v4 = FigMediaPlaylistGetMediaSegmentSpecifiers(a1);
    ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
    FigMediaSegmentSpecifierSetIsReadInCurrent(ValueAtIndex, 0);
    FigMediaSegmentSpecifierSetChangedInCurrent(ValueAtIndex, 0);
  }

  for (j = 0; ; ++j)
  {
    MapSegmentSpecifiers = FigMediaPlaylistGetMapSegmentSpecifiers(a1);
    if (MapSegmentSpecifiers)
    {
      MapSegmentSpecifiers = CFArrayGetCount(MapSegmentSpecifiers);
    }

    if (j >= MapSegmentSpecifiers)
    {
      break;
    }

    v8 = FigMediaPlaylistGetMapSegmentSpecifiers(a1);
    v9 = CFArrayGetValueAtIndex(v8, j);
    FigMediaSegmentSpecifierSetIsReadInCurrent(v9, 0);
    FigMediaSegmentSpecifierSetChangedInCurrent(v9, 0);
  }

  for (k = 0; ; ++k)
  {
    result = FigMediaPlaylistGetContentKeySpecifiers(a1);
    if (result)
    {
      result = CFArrayGetCount(result);
    }

    if (k >= result)
    {
      break;
    }

    ContentKeySpecifiers = FigMediaPlaylistGetContentKeySpecifiers(a1);
    v13 = CFArrayGetValueAtIndex(ContentKeySpecifiers, k);
    FigContentKeySpecifierSetIsReadInCurrent(v13, 0);
    FigContentKeySpecifierSetIsChangedInCurrent(v13, 0);
  }

  return result;
}

BOOL FigStreamingPlaylistVerifyM3UPlaylist(CMBlockBufferRef theBuffer, _BYTE *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  if (CMBlockBufferGetDataLength(theBuffer) < 0xB)
  {
    return 0;
  }

  __s1 = 0;
  if (CMBlockBufferAccessDataBytes(theBuffer, 0, 0xBuLL, temporaryBlock, &__s1))
  {
    return 0;
  }

  if (a2)
  {
    *a2 = 1;
  }

  return StreamingPlaylist_VerifyLeadingMagicNumber(__s1, 0) == 0;
}

uint64_t StreamingPlaylist_VerifyLeadingMagicNumber(char *__s1, char **a2)
{
  if (!__s1)
  {
    StreamingPlaylist_VerifyLeadingMagicNumber_cold_1();
    return 4294954650;
  }

  v3 = __s1;
  if (__PAIR64__(__s1[1], *__s1) == 0xBB000000EFLL && __s1[2] == 191)
  {
    v4 = __s1[3];
    if ((v4 & 0x80000000) != 0)
    {
      v5 = __maskrune(v4, 0x500uLL);
    }

    else
    {
      v5 = *(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x500;
    }

    if (!v5)
    {
      v3 += 3;
    }
  }

  if (strncmp(v3, "#EXTM3U", 7uLL))
  {
    return 4294954650;
  }

  v8 = v3[7];
  v7 = v3 + 7;
  v6 = v8;
  if ((v8 & 0x80000000) != 0)
  {
    if (!__maskrune(v6, 0x500uLL))
    {
      goto LABEL_16;
    }

    return 4294954650;
  }

  if ((*(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x500) != 0)
  {
    return 4294954650;
  }

LABEL_16:
  result = 0;
  if (a2)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t FigStreamPlaylistParseInProcess(OpaqueCMBlockBuffer *a1, const __CFURL *a2, const __CFURL *a3, _DWORD *a4, int a5, int a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, const __CFDictionary *a11, const __CFDictionary *a13, const void **a14, CFMutableDictionaryRef *a15)
{
  v683 = *MEMORY[0x1E69E9840];
  *&ii = 0.0;
  dataPointerOut = 0;
  v667 = 0;
  v668 = 0;
  BitRate = 0.0;
  v666 = 0;
  v663 = -1;
  v664 = -1;
  v662 = 0;
  v660 = 0;
  v661 = 0;
  v658 = 0;
  v659 = 0;
  v657 = 0;
  v655 = 0;
  v656 = 0;
  v653 = 0;
  v654 = 0;
  v651 = 0;
  v652 = 0;
  v649 = 0u;
  v650 = 0u;
  v648 = 0u;
  valuePtr = 0;
  v646 = 0;
  v645 = 0.0;
  v644 = 0.0;
  v643 = -1;
  cf = 0;
  v641 = 0;
  v640 = 0;
  v639 = 0;
  v638 = 0;
  value = 0;
  v636 = 0;
  v18 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  v635 = 1;
  theSet = Mutable;
  if (!Mutable)
  {
    FigStreamPlaylistParseInProcess_cold_33(&returnedPointerOut);
    v610 = 0;
    v51 = 0;
    v52 = 0;
    v22 = 0;
    v53 = 0;
    v631 = 0;
    v629 = 0;
    v596 = 0;
LABEL_1245:
    v624 = 0;
    v623 = 0;
    v618 = 0;
    v619 = 0;
    v621 = 0;
    v620 = 0;
    v617 = 0;
    v607 = 0;
    v609 = 0;
LABEL_1246:
    matched = returnedPointerOut;
    goto LABEL_1402;
  }

  baseURL = a2;
  structureAllocator = v18;
  if ((readPref & 1) == 0)
  {
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    readPref = 1;
  }

  if (a3)
  {
    v20 = a3;
  }

  else
  {
    v20 = a2;
  }

  if (*__error())
  {
    v596 = *__error();
    *__error() = 0;
  }

  else
  {
    v596 = 0;
  }

  LOBYTE(temporaryBlock) = 0;
  *&blockBufferOut = 0;
  v675 = 0;
  *&returnedPointerOut = 0.0;
  DataLength = CMBlockBufferGetDataLength(a1);
  v22 = DataLength;
  if (!DataLength)
  {
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v631 = 0;
    v629 = 0;
    v624 = 0;
    v623 = 0;
    v618 = 0;
    v619 = 0;
    v621 = 0;
    v620 = 0;
    v617 = 0;
    v607 = 0;
    v609 = 0;
    v610 = v675;
    matched = 4294954656;
    goto LABEL_1402;
  }

  appended = CMBlockBufferAccessDataBytes(a1, DataLength - 1, 1uLL, &temporaryBlock, &returnedPointerOut);
  if (appended)
  {
    goto LABEL_18;
  }

  if (*&returnedPointerOut != 0.0)
  {
    if (*returnedPointerOut)
    {
      LOBYTE(temporaryBlock) = 0;
      appended = CMBlockBufferCreateWithBufferReference(v18, a1, 0, v22, 0, &blockBufferOut);
      if (appended)
      {
        goto LABEL_18;
      }

      appended = CMBlockBufferAppendMemoryBlock(blockBufferOut, &temporaryBlock, 1uLL, *MEMORY[0x1E695E498], 0, 0, 1uLL, 0);
      if (appended)
      {
        goto LABEL_18;
      }

      a1 = blockBufferOut;
    }

    appended = CMBlockBufferCreateContiguous(v18, a1, v18, 0, 0, 0, 0, &v675);
LABEL_18:
    matched = appended;
    goto LABEL_19;
  }

  matched = 4294954656;
LABEL_19:
  v25 = v675;
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  v610 = v25;
  if (matched)
  {
    goto LABEL_46;
  }

  DataPointer = CMBlockBufferGetDataPointer(v25, 0, 0, 0, &dataPointerOut);
  if (DataPointer)
  {
    goto LABEL_45;
  }

  v27 = dataPointerOut;
  v28 = CMBlockBufferGetDataLength(v25);
  *&v649 = a2;
  BYTE8(v650) = a6;
  *(&v648 + 1) = a9;
  *&v650 = v27;
  BYTE9(v650) = a5;
  *(&v649 + 1) = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!*(&v649 + 1))
  {
    FigStreamPlaylistParseInProcess_cold_32(&returnedPointerOut);
LABEL_1244:
    v51 = 0;
    v52 = 0;
    v22 = 0;
    v53 = 0;
    v631 = 0;
    v629 = 0;
    goto LABEL_1245;
  }

  if (a15 && *a15)
  {
    v661 = CFRetain(*a15);
    FigMediaPlaylistGetMediaSegmentSpecifiers(v661);
    LastValue = FigCFArrayGetLastValue();
    if (LastValue)
    {
      DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(LastValue);
    }

    else
    {
      DiscontinuityDomain = 0;
    }

    for (i = 0; ; ++i)
    {
      DateRangeSpecifiers = FigMediaPlaylistGetDateRangeSpecifiers(v661);
      if (DateRangeSpecifiers)
      {
        DateRangeSpecifiers = CFArrayGetCount(DateRangeSpecifiers);
      }

      if (i >= DateRangeSpecifiers)
      {
        break;
      }

      v46 = FigMediaPlaylistGetDateRangeSpecifiers(v661);
      ValueAtIndex = CFArrayGetValueAtIndex(v46, i);
      FigDateRangeSpecifierSetTempDuration(ValueAtIndex, -1.0);
      FigDateRangeSpecifierSetTempPlannedDuration(ValueAtIndex, -1.0);
      FigDateRangeSpecifierSetReadInCurrent(ValueAtIndex, 0);
      FigDateRangeSpecifierSetTempEndDate(ValueAtIndex, 0);
    }

    FigMediaPlaylistSetRenditionReportSpecifiers(v661, 0);
    if (FigMediaPlaylistGetPreloadHint(v661))
    {
      PreloadHint = FigMediaPlaylistGetPreloadHint(v661);
      FigMediaSegmentSpecifierSetIsReadInCurrent(PreloadHint, 0);
    }

    if (FigMediaPlaylistGetPreloadMapHint(v661))
    {
      PreloadMapHint = FigMediaPlaylistGetPreloadMapHint(v661);
      FigMediaSegmentSpecifierSetIsReadInCurrent(PreloadMapHint, 0);
    }

    PartHoldBackDuration = FigMediaPlaylistGetPartHoldBackDuration(v661);
    HoldBackDuration = FigMediaPlaylistGetHoldBackDuration(v661);
    AllocatorForMedia = FigGetAllocatorForMedia();
    DataPointer = FigMultivariantPlaylistCreateEmpty(AllocatorForMedia, &v636);
    if (DataPointer)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v30 = FigGetAllocatorForMedia();
    DataPointer = FigMediaPlaylistCreateEmpty(v30, &v661);
    if (DataPointer)
    {
LABEL_45:
      matched = DataPointer;
      goto LABEL_46;
    }

    FigMediaPlaylistSetPlaylistType(v661, 0);
    FigMediaPlaylistSetHasDiscontinuitySequence(v661, 0);
    FigMediaPlaylistSetDoesServerSupportsBlockingReload(v661, 0);
    HoldBackDuration = 0.0;
    FigMediaPlaylistSetSkipDeltaBoundary(v661, 0.0);
    if (a14 && *a14)
    {
      v636 = CFRetain(*a14);
      v32 = v661;
      HasIndependentSegments = FigMultivariantPlaylistHasIndependentSegments(v636);
      FigMediaPlaylistSetHasIndependentSegments(v32, HasIndependentSegments);
      v34 = v661;
      StartTimeValue = FigMultivariantPlaylistGetStartTimeValue(v636);
      FigMediaPlaylistSetStartTimeValue(v34, StartTimeValue);
      v36 = v661;
      IsStartTimePrecise = FigMultivariantPlaylistIsStartTimePrecise(v636);
      FigMediaPlaylistSetIsStartTimePrecise(v36, IsStartTimePrecise);
      v38 = v661;
      HasStartTime = FigMultivariantPlaylistHasStartTime(v636);
      FigMediaPlaylistSetHasStartTime(v38, HasStartTime);
      v40 = v661;
      Version = FigMultivariantPlaylistGetVersion(v636);
      FigMediaPlaylistSetVersion(v40, Version);
      DiscontinuityDomain = 0;
      PartHoldBackDuration = 0.0;
    }

    else
    {
      v43 = FigGetAllocatorForMedia();
      DataPointer = FigMultivariantPlaylistCreateEmpty(v43, &v636);
      DiscontinuityDomain = 0;
      PartHoldBackDuration = 0.0;
      if (DataPointer)
      {
        goto LABEL_45;
      }
    }
  }

  FigMediaPlaylistSetHasPartTag(v661, 0);
  FigMediaPlaylistSetDateStampCount(v661, 0);
  v54 = v661;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  FigMediaPlaylistSetLastModifiedTime(v54, UpTimeNanoseconds);
  v56 = FigGetAllocatorForMedia();
  DataPointer = FigMediaSegmentSpecifierCreateEmpty(v56, &v659);
  if (DataPointer)
  {
    goto LABEL_45;
  }

  FigMediaSegmentSpecifierSetTimeInSeconds(v659, 0.0);
  FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v659, 0.0);
  FigStreamPlaylistInitializeIndexValidation(v661);
  v57 = StreamingPlaylist_VerifyLeadingMagicNumber(v27, &ii);
  matched = v57;
  if (a6 == 1 && v57)
  {
    _StreamPlaylistLogError(v57, 4294955027, &v648, @"Missing #EXTM3U");
    goto LABEL_46;
  }

  if (v57)
  {
LABEL_46:
    v51 = 0;
    v52 = 0;
    v22 = 0;
    v53 = 0;
    v631 = 0;
    v629 = 0;
    v624 = 0;
    v623 = 0;
    v618 = 0;
    v619 = 0;
    v621 = 0;
    v620 = 0;
    v617 = 0;
    goto LABEL_1401;
  }

  v58 = ii;
  v59 = &v58[strcspn(ii, "\r\n")];
  v60 = strspn(v59, "\r\n");
  v61 = v661;
  TargetDuration = FigMediaPlaylistGetTargetDuration(v661);
  FigMediaPlaylistSetAvgSegmentDuration(v61, TargetDuration);
  FigMediaPlaylistSetMaxSegmentDuration(v661, 0.0);
  FigMediaPlaylistSetParseDate(v661, 0);
  v63 = FigGetAllocatorForMedia();
  Current = CFAbsoluteTimeGetCurrent();
  v65 = CFDateCreate(v63, Current);
  FigMediaPlaylistSetParseDate(v661, v65);
  if (v65)
  {
    CFRelease(v65);
  }

  if (!FigMediaPlaylistGetParseDate(v661))
  {
    FigStreamPlaylistParseInProcess_cold_31(&returnedPointerOut);
    goto LABEL_1244;
  }

  v560 = v20;
  v577 = 0;
  v579 = 0;
  v587 = 0;
  v572 = 0;
  *v574 = 0;
  v575 = 0;
  v594 = 0;
  v567 = 0;
  v568 = 0;
  v589 = 0;
  v591 = 0;
  v580 = 0;
  v582 = 0;
  v592 = 0;
  v66 = 0;
  v556 = 0;
  v588 = 0;
  v565 = 0;
  v566 = 0;
  v571 = 0;
  v631 = 0;
  key = 0;
  v578 = 0;
  v586 = 0;
  v595 = 0;
  v606 = 0;
  v570 = 0;
  v576 = 0;
  v599 = 0;
  v562 = 0;
  v559 = 0;
  NextSegment = 0;
  v612 = 0;
  v597 = 0;
  v624 = 0;
  v623 = 0;
  v618 = 0;
  v619 = 0;
  v621 = 0;
  v620 = 0;
  v563 = 0;
  v564 = 0;
  v615 = 0;
  v583 = 0;
  v617 = 0;
  v557 = 0;
  v68 = 0;
  v69 = &v59[v60];
  v630 = &v27[v28];
  v70 = 0;
  v71 = -1.0;
  v72 = 0.0;
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  v561 = -2;
  v600 = 1;
  v573 = 1;
  v569 = -1;
  v76 = a5;
  while (1)
  {
    if (v69 >= v630 || !*v69)
    {
      PartialSegments = FigMediaSegmentSpecifierGetPartialSegments(v659);
      if (PartialSegments)
      {
        Count = CFArrayGetCount(PartialSegments);
        v350 = v606;
        v351 = key;
        if (Count < 1)
        {
          v368 = v576;
LABEL_995:
          if (v351 >= 1)
          {
            FigMediaPlaylistSetAvgSegmentDuration(v661, v73 / v351);
          }

          *&v650 = 0;
          v609 = (v70 | HIDWORD(v580) | v580 | v582 | v66) != 0;
          v607 = 1;
          if (!v612)
          {
            v374 = a15;
            if (v368 || v595 || v592 || v591 || v587 || v586 || HIDWORD(v582))
            {
              goto LABEL_1014;
            }

            v607 = 1;
            if (!FigMediaPlaylistHasPartTag(v661) && !v579)
            {
              v374 = a15;
              if (v68 || v350)
              {
                goto LABEL_1014;
              }

              v607 = 1;
              if (!FigMediaPlaylistHasEndTag(v661))
              {
                v374 = a15;
                if (!v572)
                {
                  HasOnlyIFrames = FigMediaPlaylistHasOnlyIFrames(v661);
                  v374 = a15;
                  v607 = (HasOnlyIFrames | v594 | HIDWORD(v567) | v567 | v589 | v568 | HIDWORD(v568)) != 0;
                }

LABEL_1014:
                v376 = (v70 | HIDWORD(v580) | v580 | v582 | v66) == 0;
                if (!v374)
                {
                  v376 = 1;
                }

                if (!v376 && *v374)
                {
                  _StreamPlaylistLogError(0, 4294951065, &v648, @"Multivariant playlist can only be the top-level playlist");
                  if (!v70)
                  {
                    goto LABEL_1020;
                  }
                }

                else if (!v70)
                {
                  goto LABEL_1020;
                }

                if (v612)
                {
                  _StreamPlaylistLogError(0, 4294951066, &v648, @"Alternates found in a media playlist", v542);
                  goto LABEL_1070;
                }

LABEL_1020:
                if (v70)
                {
                  if (v368)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-BYTERANGE");
                  }

                  if (v579)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-TARGETDURATION");
                  }

                  if (v68)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-MEDIA-SEQUENCE");
                  }

                  if (v587)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-PROGRAM-DATE-TIME");
                  }

                  if (v572)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-PLAYLIST-TYPE");
                  }

                  if (FigMediaPlaylistHasEndTag(v661))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-ENDLIST");
                  }

                  if (v595)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-DISCONTINUITY");
                  }

                  if (v350)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-DISCONTINUITY-SEQUENCE");
                  }

                  if (FigMediaPlaylistHasOnlyIFrames(v661))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-I-FRAMES-ONLY");
                  }

                  if (v591)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-MAP");
                  }

                  if (v567)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-DATERANGE");
                  }

                  if (v592)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-KEY");
                  }

                  if (v586)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-GAP");
                  }

                  if (HIDWORD(v582))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-BITRATE");
                  }

                  if (FigMediaPlaylistHasPartTag(v661))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-PART");
                  }

                  if (v594)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-PART-INF");
                  }

                  if (v568)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-PRELOAD-HINT");
                  }

                  if (HIDWORD(v568))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-RENDITION-REPORT");
                  }

                  if (HIDWORD(v567))
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-SERVER-CONTROL");
                  }

                  if (v589)
                  {
                    _StreamPlaylistLogError(0, 4294951065, &v648, @"%s can only be in media playlist", "#EXT-X-SKIP");
                  }

LABEL_1070:
                  if (BYTE4(v576) && v648 < 5 || v575 && v648 < 12 || v657 && v648 < 11 || v589 && v648 < 9 || BYTE10(v650) && v648 < 8 || (!v597 ? (v377 = v570 == 0) : (v377 = 1), v377 ? (v378 = v571 == 0) : (v378 = 0), !v378 && v648 < 6 || v368 | v597 && v648 < 4 || v599 && v648 < 3 || HIDWORD(v565) && v648 < 13 || v562 && v648 <= 1))
                  {
                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294954986, &v648, @"incorrect version number for feature");
                    if (!v76)
                    {
                      goto LABEL_1235;
                    }
                  }

                  if (FigMediaPlaylistHasSkipDeltaBoundary(v661))
                  {
                    SkipDeltaBoundary = FigMediaPlaylistGetSkipDeltaBoundary(v661);
                    if (SkipDeltaBoundary < (6 * FigMediaPlaylistGetTargetDuration(v661)))
                    {
                      matched = 4294954654;
                      _StreamPlaylistLogError(4294954654, 4294949662, &v648, @"CAN-SKIP-UNTIL too small");
                      if (!v76)
                      {
                        goto LABEL_1235;
                      }
                    }
                  }

                  if (FigMediaPlaylistHasSkipDeltaBoundary(v661))
                  {
                    if (NextSegment)
                    {
                      v380 = 0.0;
                      do
                      {
                        v380 = v380 + FigMediaSegmentSpecifierGetTimeInSeconds(NextSegment);
                        NextSegment = FigMediaSegmentSpecifierGetNextSegment(NextSegment);
                      }

                      while (NextSegment);
                      if (v380 < FigMediaPlaylistGetSkipDeltaBoundary(v661))
                      {
                        matched = 4294954654;
                        _StreamPlaylistLogError(4294954654, 4294949661, &v648, @"EXT-X-SKIP too close to live edge");
                        if (!v76)
                        {
                          goto LABEL_1235;
                        }
                      }
                    }
                  }

                  if (v594 == 1)
                  {
                    PartTargetDuration = FigMediaPlaylistGetPartTargetDuration(v661);
                    if (PartTargetDuration > FigMediaPlaylistGetTargetDuration(v661))
                    {
                      v451 = FigMediaPlaylistGetPartTargetDuration(v661);
                      matched = 4294954654;
                      _StreamPlaylistLogError(4294954654, 4294949662, &v648, @"%s Partial Segment target duration %f exceeds %s", "PART-TARGET", *&v451, "#EXT-X-TARGETDURATION");
                      if (!v76)
                      {
                        goto LABEL_1235;
                      }
                    }

                    v382 = v645;
                    if (v382 > FigMediaPlaylistGetPartTargetDuration(v661))
                    {
                      matched = 4294954654;
                      _StreamPlaylistLogError(4294954654, 4294949662, &v648, @"%s Partial Segment duration %f exceeds %s", "#EXT-X-PART", *&v382, "PART-TARGET");
                      if (!v76)
                      {
                        goto LABEL_1235;
                      }
                    }

                    if (FigMediaPlaylistHasPartHoldBackDuration(v661))
                    {
                      goto LABEL_1110;
                    }

                    v543 = "#EXT-X-PART-INF";
                    matched = 4294954650;
                    _StreamPlaylistLogError(4294954650, 4294955032, &v648, @"%s required with %s", "PART-HOLD-BACK");
                  }

                  else
                  {
                    if (!FigMediaPlaylistHasPartTag(v661))
                    {
                      goto LABEL_1110;
                    }

                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294955024, &v648, @"Partial segments, but no part target duration", v542);
                  }

                  if (!v76)
                  {
                    goto LABEL_1235;
                  }

LABEL_1110:
                  if (FigMediaPlaylistGetPlaylistType(v661) == 2 && !FigMediaPlaylistHasEndTag(v661))
                  {
                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294954983, &v648, @"VOD playlist has no ENDLIST tag");
                    if (!v76)
                    {
                      goto LABEL_1235;
                    }
                  }

                  if (a15)
                  {
                    if (*a15)
                    {
                      if (!v68)
                      {
                        if (FigMediaPlaylistHasMediaSequence(v661))
                        {
                          matched = 4294954654;
                          _StreamPlaylistLogError(4294954654, 4294955026, &v648, @"#EXT-X-MEDIA-SEQUENCE suddenly disappeared");
                          if (!v76)
                          {
                            goto LABEL_1235;
                          }
                        }
                      }
                    }

                    FigMediaPlaylistSetHasMediaSequence(v661, v68);
                    if (*a15)
                    {
                      if (!v350)
                      {
                        if (FigMediaPlaylistHasDiscontinuitySequence(v661))
                        {
                          matched = 4294954654;
                          _StreamPlaylistLogError(4294954654, 4294951061, &v648, @"%s is no longer in Media Playlist", "#EXT-X-DISCONTINUITY-SEQUENCE");
                          if (!v76)
                          {
                            goto LABEL_1235;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    FigMediaPlaylistSetHasMediaSequence(v661, v68);
                  }

                  FigMediaPlaylistSetHasDiscontinuitySequence(v661, v350);
                  if (FigMediaPlaylistGetPlaylistType(v661) == 1 && FigMediaPlaylistHasEndTag(v661))
                  {
                    FigMediaPlaylistSetPlaylistType(v661, 2);
                  }

                  if (!(FigMediaPlaylistGetTargetDuration(v661) | v70))
                  {
                    if (v68 == 1)
                    {
                      matched = 4294954654;
                      _StreamPlaylistLogError(4294954654, 4294955024, &v648, @"Media sequence, but no target duration");
                    }

                    else
                    {
                      matched = 4294954650;
                      _StreamPlaylistLogError(4294954650, 4294954985, &v648, @"Stream type unrecognized");
                    }

                    if (!v76)
                    {
                      goto LABEL_1235;
                    }
                  }

                  if (v70)
                  {
                    if (HIDWORD(v571))
                    {
                      if (v565)
                      {
                        matched = 4294954654;
                        _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"Some stream definitions have %s groups while some have opted out", "CLOSED-CAPTIONS");
                        if (!v76)
                        {
                          goto LABEL_1235;
                        }
                      }
                    }
                  }

                  if (FigMediaPlaylistHasHoldBackDuration(v661))
                  {
                    v383 = FigMediaPlaylistGetHoldBackDuration(v661);
                    if (v383 < (3 * FigMediaPlaylistGetTargetDuration(v661)))
                    {
                      matched = 4294954650;
                      _StreamPlaylistLogError(4294954650, 4294955032, &v648, @"%s less than 3 * target-duration", "HOLD-BACK");
                      if (!v76)
                      {
                        goto LABEL_1235;
                      }
                    }
                  }

                  if (FigMediaPlaylistGetPartTargetDuration(v661) > 0.0)
                  {
                    v384 = FigMediaPlaylistGetPartHoldBackDuration(v661);
                    if (v384 < FigMediaPlaylistGetPartTargetDuration(v661))
                    {
                      if (FigMediaPlaylistDoesServerSupportsBlockingReload(v661))
                      {
                        matched = 4294954650;
                        _StreamPlaylistLogError(4294954650, 4294955032, &v648, @"%s less than %s", "PART-HOLD-BACK", "PART-TARGET");
                        if (!v76)
                        {
                          goto LABEL_1235;
                        }
                      }
                    }
                  }

                  FigMediaPlaylistSetHasIndependentParts(v661, SBYTE4(v575));
                  v385 = structureAllocator;
                  if (FigMediaPlaylistGetPreloadHint(v661))
                  {
                    v386 = FigMediaPlaylistGetPreloadHint(v661);
                    if (FigMediaSegmentSpecifierIsReadInCurrent(v386))
                    {
                      FigMediaPlaylistGetMediaSegmentSpecifiers(v661);
                      v387 = FigCFArrayGetLastValue();
                      if (v387)
                      {
                        FigMediaSegmentSpecifierGetPartialSegments(v387);
                        v388 = FigCFArrayGetLastValue();
                        if (v388)
                        {
                          v389 = v388;
                          FigMediaSegmentSpecifierGetURLString(v388);
                          v390 = FigMediaPlaylistGetPreloadHint(v661);
                          FigMediaSegmentSpecifierGetURLString(v390);
                          if (FigCFEqual())
                          {
                            v391 = FigMediaPlaylistGetPreloadHint(v661);
                            StartOffset = FigMediaSegmentSpecifierGetStartOffset(v391);
                            v393 = v70;
                            v394 = FigMediaSegmentSpecifierGetStartOffset(v389);
                            v395 = FigMediaSegmentSpecifierGetBytesToRead(v389) + v394;
                            v70 = v393;
                            if (StartOffset < v395)
                            {
                              v396 = FigMediaPlaylistGetPreloadHint(v661);
                              if (FigMediaSegmentSpecifierGetBytesToRead(v396) >= 1)
                              {
                                v397 = FigMediaPlaylistGetPreloadHint(v661);
                                v398 = FigMediaPlaylistGetPreloadHint(v661);
                                v399 = FigMediaSegmentSpecifierGetBytesToRead(v398);
                                v400 = FigMediaSegmentSpecifierGetStartOffset(v389);
                                v401 = FigMediaSegmentSpecifierGetBytesToRead(v389);
                                v402 = FigMediaPlaylistGetPreloadHint(v661);
                                v403 = FigMediaSegmentSpecifierGetStartOffset(v402);
                                FigMediaSegmentSpecifierSetBytesToRead(v397, v399 - (v400 + v401) + v403);
                              }

                              v404 = FigMediaPlaylistGetPreloadHint(v661);
                              v405 = FigMediaSegmentSpecifierGetStartOffset(v389);
                              v406 = FigMediaSegmentSpecifierGetBytesToRead(v389);
                              FigMediaSegmentSpecifierSetStartOffset(v404, v406 + v405);
                              v70 = v393;
                            }
                          }
                        }
                      }
                    }
                  }

                  *a4 = 0;
                  v605 = v70;
                  if (!v70)
                  {
                    v629 = 0;
                    goto LABEL_1174;
                  }

                  *a4 = 1;
                  FigMultivariantPlaylistGetClosedCaptionGroups(v636);
                  if (FigCFDictionaryGetCount() || (FigMultivariantPlaylistGetSubtitleGroups(v636), FigCFDictionaryGetCount()))
                  {
                    v407 = 0;
                  }

                  else
                  {
                    v407 = 0;
                    v411 = 1;
                    if (!HIBYTE(v646) || v565)
                    {
                      goto LABEL_1150;
                    }

                    v449 = PlaylistAddCharacteristicsForClosedCaptions(&v652);
                    if (v449)
                    {
                      goto LABEL_1207;
                    }

                    v450 = v652;
                    matched = PlaylistAddMediaGroup(v636, 1668047728, @"CC", 0, 0, 0, 0, 0, 0.0, 1, 1, 0, 1, v652, 0, @"UnspecifiedClosedCaptionChannel", 0, 0, &valuePtr);
                    if (v450)
                    {
                      CFRelease(v450);
                      v652 = 0;
                    }

                    if (matched)
                    {
                      goto LABEL_1235;
                    }

                    v407 = 1;
                  }

                  MediaSelectionArray = FigMultivariantPlaylistGetMediaSelectionArray(v636);
                  CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
                  MediaSelectionOptionArrayByMediaType = FindMediaSelectionOptionArrayByMediaType(MediaSelectionArray, CFStringForOSTypeValue);
                  if (MediaSelectionOptionArrayByMediaType && CFArrayGetCount(MediaSelectionOptionArrayByMediaType))
                  {
                    v411 = 1;
                    goto LABEL_1150;
                  }

                  v449 = PlaylistAddMediaGroup(v636, 1936684398, @"AUDIO", 0, 0, 0, 0, 0, 0.0, 1, 1, 0, 0, 0, 0, 0, 0, 0, &valuePtr);
                  v411 = 0;
                  if (v449)
                  {
LABEL_1207:
                    matched = v449;
LABEL_1235:
                    v51 = 0;
                    v52 = 0;
                    v22 = 0;
                    v53 = 0;
                    v629 = 0;
                    goto LABEL_1402;
                  }

LABEL_1150:
                  v412 = 0;
                  v413 = 0;
                  v629 = 0;
                  v414 = 0;
                  for (j = v407 == 0; ; j = 1)
                  {
                    Alternates = FigMultivariantPlaylistGetAlternates(v636);
                    if (Alternates)
                    {
                      Alternates = CFArrayGetCount(Alternates);
                    }

                    if (v414 >= Alternates)
                    {
                      break;
                    }

                    v417 = FigMultivariantPlaylistGetAlternates(v636);
                    v418 = CFArrayGetValueAtIndex(v417, v414);
                    AudioGroupIDString = FigAlternateGetAudioGroupIDString(v418);
                    AudioGroups = FigMultivariantPlaylistGetAudioGroups(v636);
                    SelectionGroupGuts = PlaylistGetSelectionGroupGuts(AudioGroupIDString, 1936684398, AudioGroups, &v648, &v641);
                    if (SelectionGroupGuts || (VideoGroupIDString = FigAlternateGetVideoGroupIDString(v418), VideoGroups = FigMultivariantPlaylistGetVideoGroups(v636), SelectionGroupGuts = PlaylistGetSelectionGroupGuts(VideoGroupIDString, 1986618469, VideoGroups, &v648, &v640), SelectionGroupGuts) || (SubtitleGroupIDString = FigAlternateGetSubtitleGroupIDString(v418), SubtitleGroups = FigMultivariantPlaylistGetSubtitleGroups(v636), SelectionGroupGuts = PlaylistGetSelectionGroupGuts(SubtitleGroupIDString, 1935832172, SubtitleGroups, &v648, &v639), SelectionGroupGuts) || (ClosedCaptionGroupIDString = FigAlternateGetClosedCaptionGroupIDString(v418), ClosedCaptionGroups = FigMultivariantPlaylistGetClosedCaptionGroups(v636), SelectionGroupGuts = PlaylistGetSelectionGroupGuts(ClosedCaptionGroupIDString, 1668047728, ClosedCaptionGroups, &v648, &v638), SelectionGroupGuts) || ((v411 & 1) != 0 ? (v428 = 0) : (v412 = 1, v428 = @"AUDIO"), j ? (v429 = 0) : (v413 = 1, v429 = @"CC"), SelectionGroupGuts = FigAlternateCopy(v418, 0, 0, 0, 0, 0, v428, v412, 0, 0, v429, v413, 0, 0, 0, v641, v640, v639, v638, &value), SelectionGroupGuts))
                    {
                      matched = SelectionGroupGuts;
                      v51 = 0;
                      v52 = 0;
                      v22 = 0;
                      v53 = 0;
                      goto LABEL_1402;
                    }

                    v430 = v629;
                    if (!v629)
                    {
                      v431 = FigGetAllocatorForMedia();
                      v430 = CFArrayCreateMutable(v431, 0, MEMORY[0x1E695E9C0]);
                      if (!v430)
                      {
                        FigStreamPlaylistParseInProcess_cold_21(&returnedPointerOut);
                        v51 = 0;
                        v52 = 0;
                        v22 = 0;
                        v53 = 0;
                        v629 = 0;
                        goto LABEL_1246;
                      }
                    }

                    v629 = v430;
                    CFArrayAppendValue(v430, value);
                    if (value)
                    {
                      CFRelease(value);
                    }

                    value = 0;
                    v641 = 0;
                    v640 = 0;
                    v639 = 0;
                    ++v414;
                    v411 = 1;
                    v638 = 0;
                  }

                  if (v629)
                  {
                    FigMultivariantPlaylistSetAlternates(v636, v629);
                  }

                  FigMultivariantPlaylistSetPlaylistVariables(v636, *(&v649 + 1));
                  v385 = structureAllocator;
                  v70 = v605;
LABEL_1174:
                  if (a10 && v636)
                  {
                    v432 = FigMultivariantPlaylistGetMediaSelectionArray(v636);
                    v433 = CFArrayCreateMutable(v385, 0, MEMORY[0x1E695E9C0]);
                    if (v433)
                    {
                      v434 = v433;
                      if (v432)
                      {
                        v435 = CFArrayGetCount(v432);
                        if (v435 >= 1)
                        {
                          v436 = v435;
                          v437 = 0;
                          v438 = 0;
                          v439 = 0;
                          while (1)
                          {
                            v440 = CFArrayGetValueAtIndex(v432, v437);
                            v441 = v440;
                            if (!v438)
                            {
                              v442 = CFDictionaryGetValue(v440, @"MediaSelectionGroupMediaCharacteristics");
                              v685.length = CFArrayGetCount(v442);
                              v685.location = 0;
                              if (CFArrayContainsValue(v442, v685, @"public.legible"))
                              {
                                CFDictionaryGetValue(v441, @"MediaSelectionGroupOptions");
                                ConcatenationOfTwoArrays = FigCFArrayCreateConcatenationOfTwoArrays();
                                if (!ConcatenationOfTwoArrays)
                                {
                                  FigStreamPlaylistParseInProcess_cold_23(&returnedPointerOut);
                                  matched = returnedPointerOut;
                                  v70 = v605;
                                  if (!returnedPointerOut)
                                  {
                                    goto LABEL_1248;
                                  }

LABEL_1197:
                                  CFRelease(v434);
                                  goto LABEL_1198;
                                }

                                v439 = ConcatenationOfTwoArrays;
                                MutableCopy = FigCFDictionaryCreateMutableCopy();
                                if (!MutableCopy)
                                {
                                  FigStreamPlaylistParseInProcess_cold_22(&returnedPointerOut);
                                  matched = returnedPointerOut;
                                  v70 = v605;
                                  goto LABEL_1195;
                                }

                                v441 = MutableCopy;
                                CFDictionarySetValue(MutableCopy, @"MediaSelectionGroupOptions", v439);
                                v438 = v441;
                              }

                              else
                              {
                                v438 = 0;
                              }
                            }

                            CFArrayAppendValue(v434, v441);
                            if (v436 == ++v437)
                            {
                              v385 = structureAllocator;
                              if (!v438)
                              {
                                goto LABEL_1190;
                              }

LABEL_1193:
                              CFRelease(v438);
                              matched = 0;
                              goto LABEL_1194;
                            }
                          }
                        }
                      }

                      v439 = 0;
LABEL_1190:
                      v445 = CFArrayCreate(v385, kFigStdAssetMediaCharacteristic_Legible, 1, MEMORY[0x1E695E9C0]);
                      if (v445)
                      {
                        v446 = v445;
                        *&returnedPointerOut = COERCE_DOUBLE(@"MediaSelectionGroupMediaType");
                        v447 = FigGetCFStringForOSTypeValue();
                        v448 = *MEMORY[0x1E695E4D0];
                        *&blockBufferOut = v447;
                        *(&blockBufferOut + 1) = v448;
                        v677 = @"MediaSelectionGroupAllowEmptySelection";
                        v678 = @"MediaSelectionGroupOptions";
                        v679 = @"MediaSelectionGroupMediaCharacteristics";
                        v681 = a10;
                        v682 = v446;
                        v438 = CFDictionaryCreate(v385, &returnedPointerOut, &blockBufferOut, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        CFRelease(v446);
                        if (v438)
                        {
                          CFArrayAppendValue(v434, v438);
                          goto LABEL_1193;
                        }
                      }

                      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v542, v543, v544);
                      matched = v538;
LABEL_1194:
                      v70 = v605;
                      if (v439)
                      {
LABEL_1195:
                        CFRelease(v439);
                      }

                      if (matched)
                      {
                        goto LABEL_1197;
                      }

LABEL_1248:
                      FigMultivariantPlaylistSetMediaSelectionArray(v636, v434);
                      CFRelease(v434);
                      v385 = structureAllocator;
                    }

                    else
                    {
                      v70 = v605;
                      if (FigStreamPlaylistParseInProcess_cold_24(&v636, &returnedPointerOut))
                      {
                        goto LABEL_1395;
                      }
                    }
                  }

                  if (!HIDWORD(v566) || !v636)
                  {
                    goto LABEL_1277;
                  }

                  v452 = FigMultivariantPlaylistGetMediaSelectionArray(v636);
                  theArraya = CFArrayCreateMutable(v385, 0, MEMORY[0x1E695E9C0]);
                  if (theArraya)
                  {
                    if (v452)
                    {
                      v616 = CFArrayGetCount(v452);
                      if (v616 >= 1)
                      {
                        v453 = 0;
                        v598 = v452;
                        while (1)
                        {
                          v454 = v70;
                          v455 = CFArrayGetValueAtIndex(v452, v453);
                          v456 = CFDictionaryGetValue(v455, @"MediaSelectionGroupMediaCharacteristics");
                          v686.length = CFArrayGetCount(v456);
                          v686.location = 0;
                          if (CFArrayContainsValue(v456, v686, @"public.audible"))
                          {
                            break;
                          }

                          if (v455)
                          {
                            v458 = CFRetain(v455);
                            v70 = v454;
                            goto LABEL_1272;
                          }

                          CFArrayAppendValue(theArraya, 0);
                          v70 = v454;
LABEL_1275:
                          if (++v453 == v616)
                          {
                            goto LABEL_1276;
                          }
                        }

                        v457 = CFDictionaryGetValue(v455, @"MediaSelectionGroupOptions");
                        v458 = FigCFDictionaryCreateMutableCopy();
                        v459 = FigCFArrayCreateMutableCopy();
                        v460 = v459;
                        if (v458 && v459)
                        {
                          if (!v457 || (v461 = CFArrayGetCount(v457), v461 < 1))
                          {
                            CFDictionarySetValue(v458, @"MediaSelectionGroupOptions", v460);
LABEL_1270:
                            CFRelease(v460);
LABEL_1271:
                            v70 = v454;
                            v452 = v598;
LABEL_1272:
                            CFArrayAppendValue(theArraya, v458);
                            if (v458)
                            {
                              CFRelease(v458);
                            }

                            goto LABEL_1275;
                          }

                          v462 = v461;
                          for (k = 0; k != v462; ++k)
                          {
                            v464 = CFArrayGetValueAtIndex(v457, k);
                            MatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility = FigGetMatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility(v457, v464);
                            if (MatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility)
                            {
                              v466 = MatchingMediaSelectionOptionWithEnhancedSpeechIntelligibility;
                              v467 = FigCFDictionaryCreateMutableCopy();
                              CFDictionarySetValue(v467, @"MediaSelectionOptionsPersistentIDOfMatchingOptionWithEnhancedSpeechIntelligibility", v466);
                              CFArraySetValueAtIndex(v460, k, v467);
                              if (v467)
                              {
                                CFRelease(v467);
                              }
                            }
                          }
                        }

                        CFDictionarySetValue(v458, @"MediaSelectionGroupOptions", v460);
                        if (!v460)
                        {
                          goto LABEL_1271;
                        }

                        goto LABEL_1270;
                      }
                    }

LABEL_1276:
                    FigMultivariantPlaylistSetMediaSelectionArray(v636, theArraya);
                    CFRelease(theArraya);
LABEL_1277:
                    v468 = a4;
                    if (v612)
                    {
                      if (!v597)
                      {
                        v469 = FigMediaPlaylistGetTargetDuration(v661);
                        v468 = a4;
                        if (v72 > (2 * v469))
                        {
                          v539 = FigMediaPlaylistGetTargetDuration(v661);
                          matched = 4294954654;
                          _StreamPlaylistLogError(4294954654, 4294955023, &v648, @"Max extinf duration of %g more than 2 * target duration %d", *&v72, v539);
                          goto LABEL_1198;
                        }
                      }

                      *v468 |= 2u;
                    }

                    v470 = 0;
                    matched = 0;
                    v471 = v661;
                    while (1)
                    {
                      v472 = FigMediaPlaylistGetDateRangeSpecifiers(v471);
                      if (v472)
                      {
                        v472 = CFArrayGetCount(v472);
                      }

                      if (v470 >= v472)
                      {
                        break;
                      }

                      v473 = FigMediaPlaylistGetDateRangeSpecifiers(v471);
                      v474 = CFArrayGetValueAtIndex(v473, v470);
                      if (v631)
                      {
                        v475 = CFArrayGetCount(v631);
                        Identifier = FigDateRangeSpecifierGetIdentifier(v474);
                        v687.location = 0;
                        v687.length = v475;
                        if (CFArrayContainsValue(v631, v687, Identifier))
                        {
                          if (FigDateRangeSpecifierGetReadInCurrent(v474))
                          {
                            matched = 4294954654;
                            _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: %s cannot be present in Playlist and also appear in %s", "#EXT-X-DATERANGE", "ID", "RECENTLY-REMOVED-DATERANGES");
                          }
                        }

                        else
                        {
                          FigDateRangeSpecifierSetReadInCurrent(v474, 1);
                        }
                      }

                      if (FigDateRangeSpecifierGetReadInCurrent(v474))
                      {
                        TempDuration = FigDateRangeSpecifierGetTempDuration(v474);
                        FigDateRangeSpecifierSetDuration(v474, TempDuration);
                        TempEndDate = FigDateRangeSpecifierGetTempEndDate(v474);
                        FigDateRangeSpecifierSetEndDate(v474, TempEndDate);
                        if (FigDateRangeSpecifierGetPlannedDuration(v474) == -1.0)
                        {
                          ParseDate = FigMediaPlaylistGetParseDate(v471);
                          FigDateRangeSpecifierSetValueForTagsFirstFoundDateDict(v474, @"PLANNED-DURATION", ParseDate);
                        }

                        TempPlannedDuration = FigDateRangeSpecifierGetTempPlannedDuration(v474);
                        FigDateRangeSpecifierSetPlannedDuration(v474, TempPlannedDuration);
                        if (FigDateRangeSpecifierGetEndDate(v474) && FigDateRangeSpecifierGetDuration(v474) >= 0.0)
                        {
                          if (v650 || !FigDateRangeSpecifierGetTaggedRangeLine(v474))
                          {
                            v481 = 1;
                          }

                          else
                          {
                            v483 = v651;
                            if (v651)
                            {
                              v651 = 0;
                              free(v483);
                            }

                            FigDateRangeSpecifierGetTaggedRangeLine(v474);
                            v481 = 0;
                            *&v650 = FigCFStringGetCStringPtrAndBufferToFree();
                          }

                          Duration = FigDateRangeSpecifierGetDuration(v474);
                          EndDate = FigDateRangeSpecifierGetEndDate(v474);
                          StartDate = FigDateRangeSpecifierGetStartDate(v474);
                          if (vabdd_f64(Duration, CFDateGetTimeIntervalSinceDate(EndDate, StartDate)) >= 0.001)
                          {
                            FigStreamPlaylistParseInProcess_cold_30();
                            v51 = 0;
                            v52 = 0;
                            v22 = 0;
                            v53 = 0;
                            matched = 4294954654;
                            goto LABEL_1402;
                          }

                          if ((v481 & 1) == 0)
                          {
                            *&v650 = 0;
                          }
                        }
                      }

                      else
                      {
                        MutableDateRangeSpecifiers = FigMediaPlaylistGetMutableDateRangeSpecifiers(v471);
                        CFArrayRemoveValueAtIndex(MutableDateRangeSpecifiers, v470--);
                        LOBYTE(v646) = 1;
                      }

                      ++v470;
                    }

                    if (matched)
                    {
LABEL_1198:
                      v51 = 0;
                      v52 = 0;
                      v22 = 0;
                      v53 = 0;
                      goto LABEL_1402;
                    }

                    v487 = a4;
                    v488 = v605;
                    if (v646)
                    {
                      v489 = v661;
                      v490 = FigMediaPlaylistGetDateRangeSpecifiers(v661);
                      if (!v490 || CFArrayGetCount(v490) < 1)
                      {
                        goto LABEL_1347;
                      }

                      v491 = structureAllocator;
                      theArrayb = CFArrayCreateMutable(structureAllocator, 0, MEMORY[0x1E695E9C0]);
                      if (!theArrayb)
                      {
                        FigStreamPlaylistParseInProcess_cold_29(&blockBufferOut);
                        matched = blockBufferOut;
LABEL_1383:
                        v488 = v605;
                        if (!matched)
                        {
                          goto LABEL_1347;
                        }

                        goto LABEL_1198;
                      }

                      v492 = 0;
                      *&returnedPointerOut = 0.0;
                      v677 = 0;
                      v678 = 0;
                      v590 = *MEMORY[0x1E6960210];
                      v593 = *MEMORY[0x1E6960260];
                      v493 = baseURL;
                      while (1)
                      {
                        v494 = FigMediaPlaylistGetDateRangeSpecifiers(v489);
                        if (v494)
                        {
                          v494 = CFArrayGetCount(v494);
                        }

                        if (v492 >= v494)
                        {
                          break;
                        }

                        v495 = FigMediaPlaylistGetDateRangeSpecifiers(v489);
                        v496 = CFArrayGetValueAtIndex(v495, v492);
                        v497 = CFDictionaryCreateMutable(v491, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                        if (!v497)
                        {
                          FigStreamPlaylistParseInProcess_cold_28(theArrayb, &blockBufferOut);
                          matched = blockBufferOut;
                          goto LABEL_1383;
                        }

                        v498 = v497;
                        *&v499 = COERCE_DOUBLE(CFArrayCreateMutable(v491, 0, MEMORY[0x1E695E9C0]));
                        if (*&v499 == 0.0)
                        {
                          FigStreamPlaylistParseInProcess_cold_27(&blockBufferOut);
                          matched = blockBufferOut;
                          goto LABEL_1344;
                        }

                        DiscoveryTimestamp = FigDateRangeSpecifierGetDiscoveryTimestamp(v496);
                        CFDictionaryAddValue(v498, @"TaggedRangeMetadataKey_DiscoveryTimestamp", DiscoveryTimestamp);
                        ModificationTimestamp = FigDateRangeSpecifierGetModificationTimestamp(v496);
                        CFDictionaryAddValue(v498, @"TaggedRangeMetadataKey_ModificationTimestamp", ModificationTimestamp);
                        v502 = FigDateRangeSpecifierGetIdentifier(v496);
                        CFDictionaryAddValue(v498, @"TaggedRangeMetadataKey_ID", v502);
                        v503 = FigDateRangeSpecifierGetStartDate(v496);
                        CFDictionaryAddValue(v498, @"TaggedRangeMetadataKey_StartDate", v503);
                        if (v493)
                        {
                          v504 = CFURLGetString(v493);
                          CFDictionaryAddValue(v498, @"TaggedRangeMetadataKey_BaseURL", v504);
                        }

                        if (FigDateRangeSpecifierGetEndDate(v496))
                        {
                          v505 = FigDateRangeSpecifierGetEndDate(v496);
                          CFDictionarySetValue(v498, @"TaggedRangeMetadataKey_EndDate", v505);
                        }

                        if (FigDateRangeSpecifierGetDuration(v496) >= 0.0)
                        {
                          FigDateRangeSpecifierGetDuration(v496);
                          FigCFDictionarySetDouble();
                        }

                        *&blockBufferOut = FigDateRangeSpecifierGetPlannedDuration(v496);
                        if (*&blockBufferOut >= 0.0)
                        {
                          TagsFirstFoundDateDict = FigDateRangeSpecifierGetTagsFirstFoundDateDict(v496);
                          v510 = CFDictionaryGetValue(TagsFirstFoundDateDict, @"PLANNED-DURATION");
                          v511 = CFNumberCreate(structureAllocator, kCFNumberDoubleType, &blockBufferOut);
                          if (!v511)
                          {
                            FigStreamPlaylistParseInProcess_cold_26(&v675);
                            matched = v675;
LABEL_1344:
                            v488 = v605;
                            CFRelease(theArrayb);
                            CFRelease(v498);
                            if (*&v499 != 0.0)
                            {
                              CFRelease(v499);
                            }

                            if (!matched)
                            {
LABEL_1347:
                              FigMediaPlaylistSetDateEntryArray(v661, 0);
                              goto LABEL_1349;
                            }

                            goto LABEL_1198;
                          }

                          v512 = v511;
                          CFDictionarySetValue(v498, @"TaggedRangeMetadataKey_PlannedDuration", v511);
                          PlaylistAddTaggedRangeMetadataDictionaryToArray(v499, @"PLANNED-DURATION", v512, v590, v510);
                          matched = v513;
                          CFRelease(v512);
                          if (matched)
                          {
                            goto LABEL_1344;
                          }
                        }

                        if (FigDateRangeSpecifierGetTaggedRangeClass(v496))
                        {
                          TaggedRangeClass = FigDateRangeSpecifierGetTaggedRangeClass(v496);
                          CFDictionaryAddValue(v498, @"TaggedRangeMetadataKey_Class", TaggedRangeClass);
                        }

                        if (FigDateRangeSpecifierGetTaggedRangeCue(v496))
                        {
                          TaggedRangeCue = FigDateRangeSpecifierGetTaggedRangeCue(v496);
                          CFDictionaryAddValue(v498, @"TaggedRangeMetadataKey_Cue", TaggedRangeCue);
                        }

                        LODWORD(v678) = 0;
                        returnedPointerOut = v499;
                        v677 = v496;
                        MetadataDict = FigDateRangeSpecifierGetMetadataDict(v496);
                        CFDictionaryApplyFunction(MetadataDict, TaggedRangeTagApplier, &returnedPointerOut);
                        matched = v678;
                        if (v678)
                        {
                          goto LABEL_1344;
                        }

                        if (FigDateRangeSpecifierGetScte35cmd(v496) && (v514 = FigDateRangeSpecifierGetTagsFirstFoundDateDict(v496), v515 = CFDictionaryGetValue(v514, @"SCTE35-CMD"), Scte35cmd = FigDateRangeSpecifierGetScte35cmd(v496), PlaylistAddTaggedRangeMetadataDictionaryToArray(v499, @"SCTE35-CMD", Scte35cmd, v593, v515), v517) || FigDateRangeSpecifierGetScte35in(v496) && (v518 = FigDateRangeSpecifierGetTagsFirstFoundDateDict(v496), v519 = CFDictionaryGetValue(v518, @"SCTE35-IN"), Scte35in = FigDateRangeSpecifierGetScte35in(v496), PlaylistAddTaggedRangeMetadataDictionaryToArray(v499, @"SCTE35-IN", Scte35in, v593, v519), v517) || FigDateRangeSpecifierGetScte35out(v496) && (v521 = FigDateRangeSpecifierGetTagsFirstFoundDateDict(v496), v522 = CFDictionaryGetValue(v521, @"SCTE35-OUT"), Scte35out = FigDateRangeSpecifierGetScte35out(v496), PlaylistAddTaggedRangeMetadataDictionaryToArray(v499, @"SCTE35-OUT", Scte35out, v593, v522), v517))
                        {
                          matched = v517;
                          goto LABEL_1344;
                        }

                        if (CFArrayGetCount(v499) >= 1)
                        {
                          CFDictionaryAddValue(v498, @"TaggedRangeMetadataKey_MetadataArray", v499);
                        }

                        CFRelease(v499);
                        CFArrayAppendValue(theArrayb, v498);
                        CFRelease(v498);
                        ++v492;
                        v493 = baseURL;
                        v491 = structureAllocator;
                      }

                      FigMediaPlaylistSetDateEntryArray(v661, theArrayb);
                      CFRelease(theArrayb);
                      v488 = v605;
LABEL_1349:
                      v487 = a4;
                      *a4 |= 8u;
                    }

                    if (v600)
                    {
                      *v487 |= 4u;
                    }

                    if (v488)
                    {
                      v524 = FigMultivariantPlaylistGetAlternates(v636);
                      if (v524)
                      {
                        if (CFArrayGetCount(v524) > 1)
                        {
                          LOBYTE(returnedPointerOut) = 0;
                          LOBYTE(blockBufferOut) = 0;
                          v537 = FigMultivariantPlaylistGetAlternates(v636);
                          PlaylistCheckAllAlternatesCarryScore(v537, &returnedPointerOut, &blockBufferOut);
                          if (returnedPointerOut)
                          {
                            _StreamPlaylistLogError(0, 4294949665, &v648, @"Not all non-iframe alternates carry SCORE, SCORE disabled for non-iframe alternates");
                          }

                          if (blockBufferOut)
                          {
                            _StreamPlaylistLogError(0, 4294949665, &v648, @"Not all iframe alternates carry SCORE, SCORE disabled for iframe alternates");
                          }
                        }
                      }
                    }

                    v525 = v661;
                    if (FigMediaPlaylistGetDateStampCount(v661) < 1)
                    {
LABEL_1375:
                      v51 = 0;
                    }

                    else
                    {
                      v526 = 0;
                      do
                      {
                        MediaSegmentSpecifiers = FigMediaPlaylistGetMediaSegmentSpecifiers(v525);
                        if (MediaSegmentSpecifiers)
                        {
                          MediaSegmentSpecifiers = CFArrayGetCount(MediaSegmentSpecifiers);
                        }

                        if (v526 >= MediaSegmentSpecifiers)
                        {
                          goto LABEL_1375;
                        }

                        v528 = FigMediaPlaylistGetMediaSegmentSpecifiers(v525);
                        v22 = CFArrayGetValueAtIndex(v528, v526++);
                      }

                      while (!FigMediaSegmentSpecifierGetDateStamp(v22));
                      if (!v22)
                      {
                        v51 = 0;
                        v52 = 0;
                        goto LABEL_1377;
                      }

                      ImputedDate = FigMediaSegmentSpecifierGetImputedDate(v22);
                      for (m = v22; ; m = v51)
                      {
                        PreviousSegment = FigMediaSegmentSpecifierGetPreviousSegment(m);
                        v51 = PreviousSegment;
                        if (!PreviousSegment)
                        {
                          break;
                        }

                        ImputedDate = ImputedDate - FigMediaSegmentSpecifierGetTimeInSeconds(PreviousSegment);
                        if (FigMediaSegmentSpecifierGetImputedDate(v51) == 0.0)
                        {
                          FigMediaSegmentSpecifierSetImputedDate(v51, ImputedDate);
                        }

                        v532 = FigMediaSegmentSpecifierGetImputedDate(v51);
                        v533 = FigMediaSegmentSpecifierGetPartialSegments(v51);
                        v534 = 0;
                        if (!v533)
                        {
LABEL_1372:
                          v536 = 0;
                          goto LABEL_1373;
                        }

                        while (1)
                        {
                          v536 = CFArrayGetCount(v533);
LABEL_1373:
                          if (v534 >= v536)
                          {
                            break;
                          }

                          v535 = CFArrayGetValueAtIndex(v533, v534);
                          if (FigMediaSegmentSpecifierGetImputedDate(v535) == 0.0)
                          {
                            FigMediaSegmentSpecifierSetImputedDate(v535, v532);
                          }

                          v532 = v532 + FigMediaSegmentSpecifierGetTimeInSeconds(v535);
                          ++v534;
                          if (!v533)
                          {
                            goto LABEL_1372;
                          }
                        }
                      }
                    }

                    v52 = 0;
                    v22 = 0;
LABEL_1377:
                    v53 = 0;
                    matched = 0;
                    goto LABEL_1402;
                  }

                  if ((FigStreamPlaylistParseInProcess_cold_25(&v636, &returnedPointerOut) & 1) == 0)
                  {
                    goto LABEL_1277;
                  }

LABEL_1395:
                  v51 = 0;
                  v52 = 0;
                  v22 = 0;
                  v53 = 0;
                  goto LABEL_1246;
                }

                if (!v612)
                {
                  goto LABEL_1070;
                }

                if (HIDWORD(v580))
                {
                  _StreamPlaylistLogError(0, 4294951066, &v648, @"%s can only be in multivariant playlist", "#EXT-X-MEDIA");
                }

                if (v580)
                {
                  _StreamPlaylistLogError(0, 4294951066, &v648, @"%s can only be in multivariant playlist", "#EXT-X-SESSION-DATA");
                }

                if (v582)
                {
                  _StreamPlaylistLogError(0, 4294951066, &v648, @"%s can only be in multivariant playlist", "#EXT-X-SESSION-KEY");
                  if (!v66)
                  {
                    goto LABEL_1070;
                  }
                }

                else if (!v66)
                {
                  goto LABEL_1070;
                }

                _StreamPlaylistLogError(0, 4294951066, &v648, @"%s can only be in multivariant playlist", "#EXT-X-CONTENT-STEERING");
                goto LABEL_1070;
              }
            }
          }

          v374 = a15;
          goto LABEL_1014;
        }

        LOBYTE(returnedPointerOut) = 0;
        LOBYTE(blockBufferOut) = 0;
        FigMediaSegmentSpecifierSetIsDiscontinuityDomain(v659, DiscontinuityDomain);
        v352 = v667;
        FigMediaSegmentSpecifierSetContentKeySpecifier(v659, v667);
        FigMediaSegmentSpecifierSetMapSegmentSpecifier(v659, v666);
        v353 = v76;
        v354 = v668;
        FigMediaSegmentSpecifierSetMediaSequence(v659, v668);
        v355 = MergeLeadingPartialMediaEntries(v661, v659, &v648, &returnedPointerOut, &blockBufferOut, a8);
        if (!v353)
        {
          matched = v355;
          if (v355)
          {
            goto LABEL_1400;
          }
        }

        v356 = v70;
        if (v612 | blockBufferOut)
        {
          v357 = 1;
        }

        else
        {
          v357 = returnedPointerOut == 0;
        }

        v358 = v357;
        v612 = v358;
        if (!returnedPointerOut)
        {
          v359 = v68;
          v360 = v661;
          v361 = v666;
          v362 = v658;
          IsDiscontinuity = FigMediaSegmentSpecifierIsDiscontinuity(v659);
          MediaFileEntry = CreateMediaFileEntry(v360, 0, 0, v352, v361, v354, DiscontinuityDomain, 0, 0.0, v74, 0, v362, v617, IsDiscontinuity, v574[4]);
          FigMediaSegmentSpecifierSetIsFragment(MediaFileEntry, 1);
          FigStreamPlaylistTransferPartialEntryQueue(v659, MediaFileEntry);
          FigMediaPlaylistAddMediaSegmentSpecifier(v661, MediaFileEntry);
          if (MediaFileEntry)
          {
            CFRelease(MediaFileEntry);
          }

          if (v617)
          {
            CFRelease(v617);
          }

          v617 = 0;
          LOBYTE(v68) = v359;
        }

        FigMediaPlaylistGetMediaSegmentSpecifiers(v661);
        v365 = FigCFArrayGetLastValue();
        v366 = FigMediaSegmentSpecifierGetPartialSegments(v365);
        v367 = 0;
        v368 = v576;
        if (v366)
        {
          goto LABEL_988;
        }

LABEL_989:
        for (n = 0; v367 < n; n = CFArrayGetCount(v366))
        {
          v369 = CFArrayGetValueAtIndex(v366, v367);
          v370 = v661;
          PlaylistActiveDurationSecs = FigMediaPlaylistGetPlaylistActiveDurationSecs(v661);
          TimeInSeconds = FigMediaSegmentSpecifierGetTimeInSeconds(v369);
          FigMediaPlaylistSetPlaylistActiveDurationSecs(v370, PlaylistActiveDurationSecs + TimeInSeconds);
          ++v367;
          if (!v366)
          {
            goto LABEL_989;
          }

LABEL_988:
          ;
        }

        v70 = v356;
        v76 = a5;
        v350 = v606;
      }

      else
      {
        v350 = v606;
        v368 = v576;
      }

      v351 = key;
      goto LABEL_995;
    }

    *&v650 = v69;
    if (*v69 != 35)
    {
      temporaryBlock = 0;
      v675 = 0;
      v673 = 0;
      v675 = StreamingPlaylist_SkipSpacesAndTabs(v69, &v648);
      StringWithReplacement = sp_GetStringWithReplacement(v675, 0, 1, &ii, &v675, &temporaryBlock, &v673, &v648);
      matched = StringWithReplacement;
      if (v76 || !StringWithReplacement)
      {
        v106 = temporaryBlock;
        if (!temporaryBlock)
        {
          v588 = 0;
          v128 = 0;
          v76 = a5;
LABEL_486:
          free(v673);
          v193 = v624;
          v194 = v623;
          goto LABEL_487;
        }

        v107 = FigGetAllocatorForMedia();
        v108 = CFStringCreateWithBytes(v107, v675, v106, 0x8000100u, 0);
        if (!v108)
        {
          FigStreamPlaylistParseInProcess_cold_1(&returnedPointerOut);
          v588 = 0;
          matched = returnedPointerOut;
          v119 = 198;
          goto LABEL_571;
        }

        v109 = v108;
        FigMediaSegmentSpecifierSetURLString(v659, v108);
        CFRelease(v109);
        if (!v615 || !v583)
        {
          v76 = a5;
          if (v583)
          {
LABEL_138:
            *&returnedPointerOut = 0.0;
            *&blockBufferOut = 0;
            URLString = FigMediaSegmentSpecifierGetURLString(v659);
            FigStreamingPlaylistEnsureMediaURL(URLString, baseURL, v560, &returnedPointerOut, &blockBufferOut);
            v112 = blockBufferOut;
            if (*&returnedPointerOut == 0.0 || !blockBufferOut)
            {
              if (*&returnedPointerOut != 0.0)
              {
                CFRelease(returnedPointerOut);
                *&returnedPointerOut = 0.0;
                v112 = blockBufferOut;
              }

              if (v112)
              {
                CFRelease(v112);
                *&blockBufferOut = 0;
              }
            }

            else
            {
              if (matched == -12783)
              {
                matched = 4294954513;
                _StreamPlaylistLogError(4294954513, 4294955033, &v648, @"no media URL", v111);
                goto LABEL_231;
              }

              if (matched != -12642)
              {
                if (matched || v574[0])
                {
                  if (matched)
                  {
                    goto LABEL_231;
                  }
                }

                else if ((v569 - 1) <= 1 && v644 == 0.0)
                {
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294951059, &v648, @"HDR alternate is missing FRAME-RATE", v644);
LABEL_231:
                  if (*&returnedPointerOut != 0.0)
                  {
                    CFRelease(returnedPointerOut);
                    *&returnedPointerOut = 0.0;
                  }

                  if (blockBufferOut)
                  {
                    CFRelease(blockBufferOut);
                  }

                  v588 = 0;
                  goto LABEL_485;
                }

                if (v573 != 1)
                {
LABEL_184:
                  matched = 0;
                  v70 = 1;
                  goto LABEL_231;
                }

                matched = PlaylistProcessAlternate(v636, returnedPointerOut, blockBufferOut, v563, v564, v620, v621, v619, v644, v71, v618, v623, v624, v574[0], v664, v663, v578, v561, v569, v643, cf, v577, &v646 + 1, v635, &v648);
                if (*&returnedPointerOut != 0.0)
                {
                  CFRelease(returnedPointerOut);
                  *&returnedPointerOut = 0.0;
                }

                if (blockBufferOut)
                {
                  CFRelease(blockBufferOut);
                  *&blockBufferOut = 0;
                }

                if (v76 || !matched)
                {
                  if (matched)
                  {
                    goto LABEL_231;
                  }

                  goto LABEL_184;
                }

                goto LABEL_564;
              }
            }

            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955034, &v648, @"URL parse failed", v111);
            goto LABEL_231;
          }

          if (!v615)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294951059, &v648, @"a URI found without leading a EXTINF / EXT-X-STREAM-INF.");
            v588 = 0;
            if (a5)
            {
LABEL_485:
              v128 = 1;
              goto LABEL_486;
            }

LABEL_565:
            v119 = 4;
            goto LABEL_157;
          }

          if (FigMediaSegmentSpecifierGetBytesToRead(v659))
          {
            if (!v559)
            {
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955019, &v648, @"Reading URL, and have byte range but no offset");
              if (!a5)
              {
                v588 = 0;
                v559 = 0;
                goto LABEL_565;
              }
            }
          }

          if (FigMediaSegmentSpecifierGetBytesToRead(v659))
          {
            v129 = FigMediaSegmentSpecifierGetStartOffset(v659);
            v588 = FigMediaSegmentSpecifierGetBytesToRead(v659) + v129;
          }

          else
          {
            FigMediaSegmentSpecifierSetStartOffset(v659, 0);
            v588 = 0;
            v559 = 0;
          }

          v134 = v667;
          FigMediaSegmentSpecifierSetContentKeySpecifier(v659, v667);
          v602 = v70;
          if (!v597 || (v666 || !FigMediaSegmentSpecifierGetStartOffset(v659)) && (!FigMediaSegmentSpecifierIsDiscontinuity(v659) || v566))
          {
            goto LABEL_247;
          }

          v552 = v68;
          v135 = FigMediaSegmentSpecifierGetStartOffset(v659);
          if (v666)
          {
            CFRelease(v666);
            v666 = 0;
          }

          v136 = 0;
          do
          {
            v137 = FigMediaPlaylistGetMediaSegmentSpecifiers(v661);
            if (v137)
            {
              v137 = CFArrayGetCount(v137);
            }

            if (v136 >= v137)
            {
              goto LABEL_237;
            }

            v138 = FigMediaPlaylistGetMediaSegmentSpecifiers(v661);
            v139 = CFArrayGetValueAtIndex(v138, v136);
            FigMediaSegmentSpecifierGetURLString(v139);
            FigMediaSegmentSpecifierGetURLString(v659);
            ++v136;
          }

          while (!FigCFEqual());
          if (FigMediaSegmentSpecifierGetMapSegmentSpecifier(v139))
          {
            v140 = v666;
            MapSegmentSpecifier = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v139);
            v666 = MapSegmentSpecifier;
            if (MapSegmentSpecifier)
            {
              CFRetain(MapSegmentSpecifier);
            }

            v68 = v552;
            if (v140)
            {
              CFRelease(v140);
            }
          }

          else
          {
            v135 = FigMediaSegmentSpecifierGetStartOffset(v139);
LABEL_237:
            v68 = v552;
          }

          if (v666 || v135 < 1)
          {
LABEL_247:
            FigMediaSegmentSpecifierGetPartialSegments(v659);
            v146 = FigCFArrayGetLastValue();
            if (v146)
            {
              v147 = DiscontinuityDomain;
              v70 = v602;
              v76 = a5;
              if (DiscontinuityDomain == FigMediaSegmentSpecifierGetDiscontinuityDomain(v146))
              {
LABEL_253:
                FigMediaSegmentSpecifierSetType(v659, 0);
                FigMediaSegmentSpecifierSetMapSegmentSpecifier(v659, v666);
                FigMediaSegmentSpecifierSetIsDiscontinuityDomain(v659, v147);
                FigMediaSegmentSpecifierSetIsMarkedAsGap(v659, v574[4]);
                if (!a15 || !*a15 || v612)
                {
LABEL_468:
                  v195 = v660;
                  if (v660)
                  {
                    DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(v660);
                    FigStreamPlaylistValidateMediaEntry(v661, v195, v617);
                    if (v617)
                    {
                      CFRelease(v617);
                    }

                    v196 = v660;
                    if (FigMediaSegmentSpecifierGetBytesToRead(v660))
                    {
                      v197 = FigMediaSegmentSpecifierGetStartOffset(v196);
                      v588 = FigMediaSegmentSpecifierGetBytesToRead(v196) + v197;
                      v76 = a5;
                    }

                    v660 = FigMediaSegmentSpecifierGetNextSegment(v196);
                  }

                  else
                  {
                    v550 = v66;
                    v554 = v68;
                    v198 = v661;
                    v199 = FigMediaPlaylistGetPlaylistActiveDurationSecs(v661);
                    v200 = FigMediaSegmentSpecifierGetTimeInSeconds(v659);
                    FigMediaPlaylistSetPlaylistActiveDurationSecs(v198, v199 + v200);
                    if (FigMediaSegmentSpecifierGetImputedDate(v659) == 0.0)
                    {
                      FigMediaSegmentSpecifierSetImputedDate(v659, v74);
                    }

                    v613 = v661;
                    v547 = FigMediaSegmentSpecifierGetURLString(v659);
                    ContentKeySpecifier = FigMediaSegmentSpecifierGetContentKeySpecifier(v659);
                    v201 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(v659);
                    MediaSequence = FigMediaSegmentSpecifierGetMediaSequence(v659);
                    v203 = FigMediaSegmentSpecifierGetStartOffset(v659);
                    v204 = FigMediaSegmentSpecifierGetBytesToRead(v659);
                    v205 = FigMediaSegmentSpecifierGetTimeInSeconds(v659);
                    v206 = v658;
                    v207 = FigMediaSegmentSpecifierIsDiscontinuity(v659);
                    IsMarkedAsGap = FigMediaSegmentSpecifierIsMarkedAsGap(v659);
                    v209 = FigMediaSegmentSpecifierGetImputedDate(v659);
                    v210 = CreateMediaFileEntry(v613, v547, 0, ContentKeySpecifier, v201, MediaSequence, DiscontinuityDomain, v203, v205, v209, v204, v206, v617, v207, IsMarkedAsGap);
                    FigStreamPlaylistTransferPartialEntryQueue(v659, v210);
                    TimeOffsetInSeconds = FigMediaSegmentSpecifierGetTimeOffsetInSeconds(v659);
                    FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v210, TimeOffsetInSeconds);
                    if (!FigMediaSegmentSpecifierGetBytesToRead(v210))
                    {
                      FigMediaSegmentSpecifierSetBitRate(v210, BitRate);
                    }

                    FigMediaPlaylistAddMediaSegmentSpecifier(v661, v210);
                    v70 = v602;
                    v66 = v550;
                    v68 = v554;
                    if (v210)
                    {
                      CFRelease(v210);
                    }

                    v76 = a5;
                    if (v617)
                    {
                      CFRelease(v617);
                    }

                    v612 = 1;
                    v557 = 1;
                  }

                  ++v668;
                  v75 = 0.0;
                  v617 = 0;
                  if (v74 != 0.0)
                  {
                    v74 = v74 + FigMediaSegmentSpecifierGetTimeInSeconds(v659);
                  }

                  goto LABEL_485;
                }

                LOBYTE(returnedPointerOut) = 0;
                LOBYTE(blockBufferOut) = 0;
                v148 = MergeLeadingPartialMediaEntries(v661, v659, &v648, &returnedPointerOut, &blockBufferOut, a8);
                matched = v148;
                if (!v76 && v148)
                {
                  v612 = 0;
                  goto LABEL_565;
                }

                if (returnedPointerOut)
                {
                  FigMediaPlaylistGetMediaSegmentSpecifiers(v661);
                  v660 = FigCFArrayGetLastValue();
                  FigMediaSegmentSpecifierSetIsFragment(v660, 0);
                  v612 = blockBufferOut != 0;
                  goto LABEL_466;
                }

                if (v660)
                {
                  LOBYTE(v672) = 0;
                  matched = DoesMediaFileMatchEntry(v660, v659, &v672, &v648, 0, a8);
                  if (!matched && !LOBYTE(v672))
                  {
                    matched = 4294954984;
                    _StreamPlaylistLogError(4294954984, 4294954984, &v648, @"Media segment doesn't match - sequence %llu", v668, v543);
                  }
                }

                else
                {
                  matched = FindMatchingMediaEntry(v661, v659, &v660, &v648, a8);
                  v612 = 0;
                  if (matched || !v557 || !v660)
                  {
LABEL_466:
                    if (!v76 && matched)
                    {
                      goto LABEL_1400;
                    }

                    goto LABEL_468;
                  }

                  matched = 4294954984;
                  _StreamPlaylistLogError(4294954984, 4294954984, &v648, @"Mismatched media segment.  Found old media segment after added new one.", v542, v543);
                }

                v612 = 0;
                goto LABEL_466;
              }

              v542 = "#EXT-X-DISCONTINUITY";
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s not allowed on partial segment boundaries");
              if (!a5)
              {
                goto LABEL_565;
              }
            }

            else
            {
              v70 = v602;
              v76 = a5;
            }

            v147 = DiscontinuityDomain;
            goto LABEL_253;
          }

          if (v135 > 0x100000)
          {
            v542 = v135;
            _StreamPlaylistLogError(0, 4294951060, &v648, @"implicit map of size %lld too large");
            v135 = 0x100000;
          }

          v142 = v661;
          v143 = FigMediaSegmentSpecifierGetURLString(v659);
          MapEntry = PlaylistCreateMapEntry(v142, v143, 0, v135, v668, &v666);
          matched = MapEntry;
          if (a5 || !MapEntry)
          {
            FigMediaSegmentSpecifierSetContentKeySpecifier(v666, v134);
            v145 = v658;
            FigMediaSegmentSpecifierSetIV(v666, v658);
            if (v134)
            {
              if (FigContentKeySpecifierGetEncryptionMethod(v134) == 3 && !v145)
              {
                _StreamPlaylistLogError(0, 4294949666, &v648, @"Explicit IV is required for implicit map entry for full segment encryption");
                matched = 0;
                if (!a5)
                {
                  if (dword_1EAF17630)
                  {
                    LODWORD(v672) = 0;
                    type[0] = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v220 = LODWORD(v672);
                    v221 = type[0];
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
                    {
                      v222 = v220;
                    }

                    else
                    {
                      v222 = v220 & 0xFFFFFFFE;
                    }

                    if (v222)
                    {
                      LODWORD(blockBufferOut) = 136315138;
                      *(&blockBufferOut + 4) = "FigStreamPlaylistParseInProcess";
                      LODWORD(v543) = 12;
                      _os_log_send_and_compose_impl(v222, 0, &returnedPointerOut, 128, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v221, "<<<< StreamPlaylist >>>> %s: Explicit IV is required for implicit map entry for full segment encryption", &blockBufferOut);
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    matched = 0;
                  }
                }
              }
            }

            goto LABEL_247;
          }

          v119 = 4;
          v70 = v602;
LABEL_571:
          v76 = a5;
          goto LABEL_157;
        }

        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294951065, &v648, @"Segment found in a multivariant playlist");
        v76 = a5;
        if (a5)
        {
          goto LABEL_138;
        }
      }

LABEL_564:
      v588 = 0;
      goto LABEL_565;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-MEDIA-SEQUENCE", 0x15uLL, &ii, &v648))
    {
      if (v68)
      {
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one of each Media Playlist Tag");
        if (!v76)
        {
          goto LABEL_1400;
        }
      }

      v68 = 1;
      matched = sp_strtoull(ii, &ii, &v668, 10, 0, 1, "Media Sequence", &v648);
      if (!matched)
      {
        FigMediaSegmentSpecifierSetMediaSequence(v659, v668);
        goto LABEL_151;
      }

      goto LABEL_149;
    }

    if (sp_MatchTagAndColon(v69, "#EXTINF", 7uLL, &ii, &v648))
    {
      *&returnedPointerOut = 0.0;
      LOBYTE(v675) = 0;
      *&blockBufferOut = 0;
      v77 = sp_strtod(ii, &blockBufferOut, &returnedPointerOut, &v675, "Segment Duration", &v648);
      if (v77 || *&returnedPointerOut >= 0.0)
      {
        if (v77)
        {
          if (v77 == -12642)
          {
            matched = 4294954650;
          }

          else
          {
            matched = v77;
          }
        }

        else
        {
          if (*&returnedPointerOut > v72)
          {
            v72 = *&returnedPointerOut;
          }

          v100 = *&returnedPointerOut != floor(*&returnedPointerOut);
          FigMediaSegmentSpecifierSetTimeInSeconds(v659, *&returnedPointerOut);
          FigMediaSegmentSpecifierSetTimeOffsetInSeconds(v659, v73);
          v101 = returnedPointerOut;
          MaxSegmentDuration = FigMediaPlaylistGetMaxSegmentDuration(v661);
          if (MaxSegmentDuration < *&returnedPointerOut)
          {
            FigMediaPlaylistSetMaxSegmentDuration(v661, *&returnedPointerOut);
          }

          v599 |= v100;
          ++key;
          v73 = v73 + *&v101;
          v600 = (v675 & v600);
          v103 = blockBufferOut;
          ii = *&blockBufferOut;
          if (blockBufferOut && *blockBufferOut == 44)
          {
            matched = 0;
            ii = (v103 + strcspn(blockBufferOut, "\r\n"));
          }

          else
          {
            matched = 0;
          }
        }
      }

      else
      {
        matched = 4294954650;
        _StreamPlaylistLogError(4294954650, 4294955032, &v648, @"Negative number in EXTINF", *&returnedPointerOut);
      }

      v615 = 1;
      goto LABEL_149;
    }

    if (!strncmp(v69, "#EXT-X-I-FRAMES-ONLY", 0x14uLL))
    {
      v120 = v69[20];
      if ((v120 & 0x80000000) != 0)
      {
        if (!__maskrune(v120, 0x500uLL))
        {
LABEL_171:
          ii = (v69 + 20);
          if (v597)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one of each Media Playlist Tag");
            v76 = a5;
            if (!a5)
            {
              goto LABEL_1400;
            }
          }

          else
          {
            matched = 0;
            v76 = a5;
          }

          v597 = 1;
          FigMediaPlaylistSetHasOnlyIFrames(v661, 1);
          goto LABEL_149;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v120 + 60) & 0x500) == 0)
      {
        goto LABEL_171;
      }
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-CONTENT-STEERING", 0x17uLL, &ii, &v648))
    {
      break;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-DISCONTINUITY-SEQUENCE", 0x1DuLL, &ii, &v648))
    {
      *&returnedPointerOut = 0.0;
      v125 = v606;
      v76 = a5;
      if (!v606 || (_StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one of each Media Playlist Tag"), a5))
      {
        v126 = sp_strtoull(ii, &ii, &returnedPointerOut, 10, 0, 0, "Discontinuity Sequence", &v648);
        matched = v126;
        if (!v126)
        {
          v125 = 1;
        }

        v606 = v125;
        v127 = DiscontinuityDomain;
        if (!v126)
        {
          v127 = returnedPointerOut;
        }

        DiscontinuityDomain = v127;
LABEL_149:
        if (!v76 && matched)
        {
          goto LABEL_1400;
        }

        goto LABEL_151;
      }

LABEL_1398:
      v51 = 0;
      v52 = 0;
      v22 = 0;
      v53 = 0;
      v629 = 0;
      v607 = 0;
      v609 = 0;
      matched = 4294954654;
      goto LABEL_1402;
    }

    v76 = a5;
    if (StreamingPlaylist_MatchAlphanumericStringExactly(v69, "#EXT-X-DISCONTINUITY", 0x14uLL, &ii, v121, v122, v123, v124))
    {
      ++DiscontinuityDomain;
      v595 = 1;
      FigMediaSegmentSpecifierSetIsDiscontinuity(v659, 1);
      matched = 0;
      v559 = 0;
      goto LABEL_151;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-TARGETDURATION", 0x15uLL, &ii, &v648))
    {
      LODWORD(returnedPointerOut) = 0;
      if (!v579 || (_StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one of each Media Playlist Tag"), a5))
      {
        if (sp_strtol(ii, &ii, &returnedPointerOut, 1, "target duration", &v648) || (returnedPointerOut & 0x80000000) != 0)
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955025, &v648, @"Illegal target duration (negative)");
        }

        else if (returnedPointerOut)
        {
          FigMediaPlaylistSetTargetDuration(v661, returnedPointerOut);
          matched = 0;
          v579 = 1;
        }

        else
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955025, &v648, @"Illegal target duration (out of range)");
        }

        goto LABEL_149;
      }

      goto LABEL_1398;
    }

    if (StreamingPlaylist_MatchAlphanumericStringExactly(v69, "#EXT-X-ENDLIST", 0xEuLL, &ii, v130, v131, v132, v133))
    {
      if (FigMediaPlaylistHasEndTag(v661))
      {
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one of each Media Playlist Tag");
        if (!a5)
        {
          goto LABEL_1400;
        }
      }

      else
      {
        matched = 0;
      }

      FigMediaPlaylistSetHasEndTag(v661, 1);
      goto LABEL_149;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-ALLOW-CACHE", 0x12uLL, &ii, &v648))
    {
      v542 = "#EXT-X-ALLOW-CACHE";
      _StreamPlaylistLogError(0, 4294955028, &v648, @"%s has been deprecated");
      matched = 0;
      goto LABEL_151;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-KEY", 0xAuLL, &ii, &v648))
    {
      matched = PlaylistProcessKey(0, v661, "#EXT-X-KEY", ii, &v658, &v667, &ii, &v648);
      if (!matched)
      {
        v562 |= v658 != 0;
        v223 = v667;
        if (v667)
        {
          BYTE4(v576) |= FigContentKeySpecifierGetEncryptionMethod(v667) == 1;
          LOBYTE(v571) = v571 | (FigContentKeySpecifierGetEncryptionMethod(v223) == 2);
        }

        v592 = 1;
      }

LABEL_551:
      v225 = ii;
      v216 = &v225[strcspn(ii, "\r\n")];
LABEL_552:
      ii = v216;
      goto LABEL_149;
    }

    if (sp_MatchTagAndColon(v69, "#EXT-X-SESSION-KEY", 0x12uLL, &ii, &v648))
    {
      matched = PlaylistProcessKey(v636, 0, "#EXT-X-SESSION-KEY", ii, &v658, &v667, &ii, &v648);
      if (!matched)
      {
        v224 = v667;
        if (v667)
        {
          LODWORD(v582) = 1;
          FigContentKeySpecifierSetIsReadInCurrent(v667, 1);
          FigContentKeySpecifierSetIsPrefetchKey(v224, 1);
        }
      }

      goto LABEL_551;
    }

    if (!sp_MatchTagAndColon(v69, "#EXT-X-STREAM-INF", 0x11uLL, &ii, &v648) && !sp_MatchTagAndColon(v69, "#EXT-X-I-FRAME-STREAM-INF", 0x19uLL, &ii, &v648))
    {
      if (sp_MatchTagAndColon(v69, "#EXT-X-PROGRAM-DATE-TIME", 0x18uLL, &ii, &v648))
      {
        *&returnedPointerOut = 0.0;
        if (v617)
        {
          CFRelease(v617);
        }

        v213 = FigCFParseISO8601Date();
        matched = v213;
        if (v213)
        {
          v542 = "#EXT-X-PROGRAM-DATE-TIME";
          _StreamPlaylistLogError(v213, 4294955017, &v648, @"%s: ISO8601 Date parse error");
          v617 = 0;
        }

        else
        {
          v617 = CFDateCreate(structureAllocator, *&returnedPointerOut);
          FigMediaSegmentSpecifierSetImputedDate(v659, *&returnedPointerOut);
          v587 = 1;
          v74 = *&returnedPointerOut;
        }

        v214 = ii;
        v215 = strcspn(ii, "\r\n");
        v216 = &v214[v215];
        ii = &v214[v215 - 1];
        v217 = *ii;
        if ((v217 - 48) >= 0xA && v217 != 90)
        {
          v216 = &v214[v215 - 1];
        }

        goto LABEL_552;
      }

      v555 = v68;
      if (sp_MatchTagAndColon(v69, "#EXT-X-VERSION", 0xEuLL, &ii, &v648))
      {
        if (v556)
        {
          v542 = "#EXT-X-VERSION";
          _StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one %s tag");
        }

        LODWORD(v648) = 0;
        if ((*ii - 58) < 0xFFFFFFF6)
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"No Version", v542);
        }

        else
        {
          v226 = 0;
          v227 = ii + 1;
          do
          {
            LODWORD(v648) = 10 * v226;
            v226 = *(v227 - 1) + 10 * v226 - 48;
            LODWORD(v648) = v226;
            ii = v227;
            v228 = *v227++;
          }

          while (v228 - 48 < 0xA);
          if ((v228 & 0x80000000) != 0)
          {
            v229 = __maskrune(v228, 0x500uLL);
          }

          else
          {
            v229 = *(MEMORY[0x1E69E9830] + 4 * v228 + 60) & 0x500;
          }

          if (v229)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294954986, &v648, @"Characters after version", v542);
          }

          else
          {
            if ((v648 - 14) > 0xFFFFFFF2)
            {
              matched = 0;
              v241 = 1;
              goto LABEL_743;
            }

            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294954986, &v648, @"Unsupported version: %u", v648);
          }
        }

        v241 = 0;
LABEL_743:
        FigMediaPlaylistSetVersion(v661, v648);
        if (v636)
        {
          FigMultivariantPlaylistSetVersion(v636, v648);
        }

        v76 = a5;
        if (a5)
        {
          v274 = 1;
        }

        else
        {
          v274 = v241;
        }

        if (v274)
        {
          v556 = 1;
          v68 = v68;
          goto LABEL_149;
        }

        goto LABEL_1486;
      }

      v551 = v66;
      v604 = v70;
      if (sp_MatchTagAndColon(v69, "#EXT-X-PLAYLIST-TYPE", 0x14uLL, &ii, &v648))
      {
        if (v572)
        {
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one of each Media Playlist Tag");
          if (!a5)
          {
            goto LABEL_1486;
          }
        }

        else
        {
          matched = 0;
        }

        if (StreamingPlaylist_MatchAlphanumericStringExactly(ii, "VOD", 3uLL, &ii, v231, v232, v233, v234))
        {
          v239 = v661;
          v240 = 2;
          goto LABEL_578;
        }

        if (StreamingPlaylist_MatchAlphanumericStringExactly(ii, "EVENT", 5uLL, &ii, v235, v236, v237, v238))
        {
          v572 = 1;
          FigMediaPlaylistSetPlaylistType(v661, 1);
        }

        else
        {
          v273 = StreamingPlaylist_MatchAlphanumericStringExactly(ii, "LIVE", 4uLL, &ii, v257, v258, v259, v260);
          if (v273)
          {
            v239 = v661;
            v240 = 0;
LABEL_578:
            FigMediaPlaylistSetPlaylistType(v239, v240);
            v572 = 1;
          }

          else
          {
            _StreamPlaylistLogError(v273, 4294955032, &v648, @"Invalid playlist type");
            v572 = 1;
          }
        }

LABEL_698:
        v70 = v70;
        goto LABEL_855;
      }

      if (sp_MatchTagAndColon(v69, "#EXT-X-BYTERANGE", 0x10uLL, &ii, &v648))
      {
        LOBYTE(v675) = 0;
        *&returnedPointerOut = COERCE_DOUBLE(FigMediaSegmentSpecifierGetStartOffset(v659));
        *&blockBufferOut = 0;
        matched = PlaylistProcessByteRange(&blockBufferOut, &returnedPointerOut, &v675, &ii, 0, &v648);
        FigMediaSegmentSpecifierSetBytesToRead(v659, blockBufferOut);
        FigMediaSegmentSpecifierSetStartOffset(v659, returnedPointerOut);
        if (matched)
        {
          _StreamPlaylistLogError(matched, 4294955021, &v648, @"Couldn't read byte range start offset");
          v278 = v576;
          v279 = v559;
        }

        else
        {
          v278 = 1;
          if (v675)
          {
            v279 = 1;
          }

          else
          {
            v279 = 1;
            if (!v559)
            {
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955021, &v648, @"Initial offset not received");
              v279 = 0;
              v278 = v576;
            }
          }
        }

        v559 = v279;
        LODWORD(v576) = v278;
        goto LABEL_698;
      }

      if (sp_MatchTagAndColon(v69, "#EXT-X-BITRATE", 0xEuLL, &ii, &v648))
      {
        v281 = PlaylistProcessBitRate(&BitRate, &ii, &v648);
        matched = v281;
        if (v281)
        {
          _StreamPlaylistLogError(v281, 4294948093, &v648, @"Couldn't read bitrate value");
          HIDWORD(v582) = 1;
          goto LABEL_698;
        }

        HIDWORD(v582) = 1;
      }

      else
      {
        if (sp_MatchTagAndColon(v69, "#EXT-X-MEDIA", 0xCuLL, &ii, &v648))
        {
          *v545 = 0;
          v546 = 0;
          v242 = 0;
          v548 = 0;
          v53 = 0;
          v22 = 0;
          v52 = 0;
          v51 = 0;
          LOBYTE(v671) = 0;
          *v633 = 0;
          *&blockBufferOut = 0;
          v581 = 1;
          v243 = 0.0;
          while (1)
          {
            v244 = *ii;
            v83 = v244 > 0xD;
            v245 = (1 << v244) & 0x2401;
            if (!v83 && v245 != 0)
            {
              free(blockBufferOut);
              ClosedCaptionTypeAndChannelNumber = FigGetCFStringForOSTypeValue();
              if (v242 && v53 && v51)
              {
                v263 = ClosedCaptionTypeAndChannelNumber;
                if (v633[1] && v545[0] && !v671)
                {
                  FigStreamPlaylistParseInProcess_cold_18();
                }

                else if (v242 == 1668047728)
                {
                  if (v654)
                  {
                    FigStreamPlaylistParseInProcess_cold_15();
                  }

                  else
                  {
                    if (v548)
                    {
                      ClosedCaptionTypeAndChannelNumber = FigClosedCaptionGetClosedCaptionTypeAndChannelNumber(v548, 0, 0);
                      if (!ClosedCaptionTypeAndChannelNumber)
                      {
                        matched = 4294954654;
                        _StreamPlaylistLogError(4294954654, 4294955030, &v648, @"Invalid Entry for %s %@", "INSTREAM-ID", v548);
LABEL_1487:
                        v629 = 0;
                        v607 = 0;
                        v609 = 0;
                        goto LABEL_1402;
                      }

LABEL_819:
                      v297 = v652;
                      if (BYTE8(v650) && v652)
                      {
                        returnedPointerOut = v242;
                        v677 = &v648;
                        v684.length = CFArrayGetCount(v652);
                        v684.location = 0;
                        CFArrayApplyFunction(v297, v684, PlaylistCharacteristicsCheckFn, &returnedPointerOut);
                      }

                      if (v242 == 1668047728)
                      {
                        v298 = PlaylistAddCharacteristicsForClosedCaptions(&v652);
                        if (v298)
                        {
                          matched = v298;
                          goto LABEL_1487;
                        }

                        v299 = v654 == 0;
                        v297 = v652;
                      }

                      else
                      {
                        v299 = 0;
                        if (v242 == 1936684398 && !HIDWORD(v566))
                        {
                          FigMediaCharacteristicsGetTaggedMediaCharacteristicsForEnhancedSpeechIntelligibility(ClosedCaptionTypeAndChannelNumber, v262);
                          HIDWORD(v566) = FigCFArrayContainsAnyValueInArray();
                          v299 = 0;
                        }
                      }

                      matched = PlaylistAddMediaGroup(v636, v242, v53, v52, v51, v654, v653, v578, v243, v633[1], v671, v633[0], v299, v297, v22, v548, v546, v545[1], &valuePtr);
                      if (!matched && v263)
                      {
                        v543 = v51;
                        LODWORD(v544) = v263;
                        v542 = v53;
                        v300 = CFStringCreateWithFormat(structureAllocator, 0, @"%@%@%@");
                        if (!v300)
                        {
                          FigStreamPlaylistParseInProcess_cold_16(&returnedPointerOut);
                          matched = returnedPointerOut;
                          goto LABEL_1487;
                        }

                        v301 = v300;
                        if (CFSetContainsValue(theSet, v300))
                        {
                          v543 = v51;
                          LODWORD(v544) = v53;
                          v542 = "#EXT-X-MEDIA";
                          _StreamPlaylistLogError(4294954654, 4294955031, &v648, @"%s: duplicate name (%@) for rendition group %@");
                        }

                        else
                        {
                          CFSetAddValue(theSet, v301);
                        }

                        CFRelease(v301);
                        matched = 0;
                      }

LABEL_831:
                      if (v546)
                      {
                        CFRelease(v546);
                      }

                      if (v548)
                      {
                        CFRelease(v548);
                      }

                      if (v53)
                      {
                        CFRelease(v53);
                      }

                      if (v52)
                      {
                        CFRelease(v52);
                      }

                      if (v22)
                      {
                        CFRelease(v22);
                      }

                      if (v654)
                      {
                        CFRelease(v654);
                        v654 = 0;
                      }

                      if (v653)
                      {
                        CFRelease(v653);
                        v653 = 0;
                      }

                      if (v51)
                      {
                        CFRelease(v51);
                      }

                      if (v652)
                      {
                        CFRelease(v652);
                        v652 = 0;
                      }

                      if (v578)
                      {
                        CFRelease(v578);
                      }

                      if (a5 || !matched)
                      {
                        v578 = 0;
                        HIDWORD(v580) = 1;
                        goto LABEL_854;
                      }

LABEL_1486:
                      v51 = 0;
                      v52 = 0;
                      v22 = 0;
                      v53 = 0;
                      goto LABEL_1487;
                    }

                    FigStreamPlaylistParseInProcess_cold_17();
                  }
                }

                else if (v242 == 1986618469 && v22)
                {
                  FigStreamPlaylistParseInProcess_cold_19();
                }

                else if (v242 == 1935832172 && !v654)
                {
                  FigStreamPlaylistParseInProcess_cold_14(&v648);
                }

                else if (v242 == 1936684398)
                {
                  if (!v548)
                  {
                    goto LABEL_819;
                  }

                  if (v648 <= 12)
                  {
                    FigStreamPlaylistParseInProcess_cold_12(&v648);
                  }

                  v275 = CFGetTypeID(v548);
                  ClosedCaptionTypeAndChannelNumber = CFStringGetTypeID();
                  if (v275 == ClosedCaptionTypeAndChannelNumber)
                  {
                    ClosedCaptionTypeAndChannelNumber = CFStringGetCharacterAtIndex(v548, 0);
                    HIDWORD(v565) = 1;
                    if (a5 || (ClosedCaptionTypeAndChannelNumber - 58) >= 0xFFFFFFF6)
                    {
                      goto LABEL_819;
                    }
                  }

                  else if (a5)
                  {
                    HIDWORD(v565) = 1;
                    goto LABEL_819;
                  }

                  FigStreamPlaylistParseInProcess_cold_13();
                }

                else
                {
                  if (!v548)
                  {
                    goto LABEL_819;
                  }

                  FigStreamPlaylistParseInProcess_cold_11();
                }
              }

              else
              {
                FigStreamPlaylistParseInProcess_cold_10();
              }

              matched = 4294954654;
              goto LABEL_1487;
            }

            v675 = 0;
            *&returnedPointerOut = 0.0;
            v673 = 0;
            temporaryBlock = 0;
            *type = 0;
            free(blockBufferOut);
            *&blockBufferOut = 0;
            v247 = sp_ParseAttribute("#EXT-X-MEDIA", ii, 1, 0, &returnedPointerOut, &temporaryBlock, &v675, &v673, &ii, type, &blockBufferOut, &v648);
            matched = v247;
            if (!a5 && v247)
            {
              goto LABEL_1487;
            }

            v249 = type[0];
            if ((type[0] & 2) != 0)
            {
              goto LABEL_750;
            }

            v250 = returnedPointerOut;
            if (*&returnedPointerOut != 0.0)
            {
              v251 = v675;
              if (v675)
              {
                break;
              }
            }

LABEL_692:
            if (!v581)
            {
LABEL_750:
              free(blockBufferOut);
              goto LABEL_831;
            }
          }

          if (temporaryBlock > 8)
          {
            if (temporaryBlock <= 13)
            {
              if (temporaryBlock == 9)
              {
                if (!strncmp(returnedPointerOut, "BIT-DEPTH", 9uLL))
                {
                  v672 = 0.0;
                  if (sp_strtod(v251, &v675, &v672, 0, "bit depth", &v648) || (v256 = v672, v672 <= 0.0))
                  {
                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: invalid bit depth", v256, "#EXT-X-MEDIA");
                  }

                  else
                  {
                    matched = 0;
                    v545[1] = v672;
                  }
                }
              }

              else
              {
                if (temporaryBlock != 10)
                {
                  if (temporaryBlock != 11)
                  {
                    goto LABEL_690;
                  }

                  if (strncmp(returnedPointerOut, "INSTREAM-ID", 0xBuLL))
                  {
                    if (!strncmp(v250, "SAMPLE-RATE", 0xBuLL))
                    {
                      v672 = 0.0;
                      if (sp_strtod(v251, &v675, &v672, 0, "sample rate", &v648) || (v252 = v672, v672 <= 0.0))
                      {
                        matched = 4294954654;
                        _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: invalid sample rate", v252, "#EXT-X-MEDIA");
                      }

                      else
                      {
                        matched = 0;
                        v243 = v672;
                      }
                    }

                    goto LABEL_690;
                  }

                  if (v249)
                  {
                    v548 = CFStringCreateWithBytes(structureAllocator, v251, v673, 0x8000100u, 0);
                    goto LABEL_690;
                  }

                  v254 = "INSTREAM-ID";
LABEL_689:
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: missing quotes", v248, v254);
                  goto LABEL_690;
                }

                if (!strncmp(returnedPointerOut, "AUTOSELECT", 0xAuLL))
                {
                  matched = sp_MatchYesOrNo(v250, v251, &v648, &v671);
                  v545[0] = 1;
                }
              }

LABEL_690:
              if (!a5 && matched)
              {
                goto LABEL_1487;
              }

              goto LABEL_692;
            }

            if (temporaryBlock != 14)
            {
              if (temporaryBlock != 15)
              {
                if (temporaryBlock != 19 || strncmp(returnedPointerOut, "STABLE-RENDITION-ID", 0x13uLL))
                {
                  goto LABEL_690;
                }

                if (v578)
                {
                  v542 = "STABLE-RENDITION-ID";
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294955031, &v648, @"%s: duplicate stable stream identifier");
                  if (v249)
                  {
                    goto LABEL_623;
                  }
                }

                else if (v249)
                {
LABEL_623:
                  v578 = CFStringCreateWithBytes(structureAllocator, v675, v673, 0x600u, 1u);
                  goto LABEL_690;
                }

                v254 = "STABLE-RENDITION-ID";
                goto LABEL_689;
              }

              if (strncmp(returnedPointerOut, "CHARACTERISTICS", 0xFuLL))
              {
                goto LABEL_690;
              }

              if ((v249 & 1) == 0)
              {
                v254 = "CHARACTERISTICS";
                goto LABEL_689;
              }

              if (v652)
              {
                CFRelease(v652);
                v652 = 0;
                v251 = v675;
              }

              v255 = PlaylistCreateCharacteristicsArray(v251, v673, &v648, &v652);
LABEL_646:
              matched = v255;
              goto LABEL_690;
            }

            if (strncmp(returnedPointerOut, "ASSOC-LANGUAGE", 0xEuLL))
            {
              goto LABEL_690;
            }

            if (v22)
            {
              v542 = "ASSOC-LANGUAGE";
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955031, &v648, @"%s: duplicate language");
              if (v249)
              {
                goto LABEL_654;
              }
            }

            else if (v249)
            {
LABEL_654:
              v22 = CFStringCreateWithBytes(structureAllocator, v675, v673, 0x600u, 1u);
              goto LABEL_690;
            }

            v254 = "ASSOC-LANGUAGE";
            goto LABEL_689;
          }

          if (temporaryBlock > 5)
          {
            if (temporaryBlock == 6)
            {
              if (strncmp(returnedPointerOut, "FORCED", 6uLL))
              {
                goto LABEL_690;
              }

              v253 = v633;
            }

            else
            {
              if (temporaryBlock != 7)
              {
                if (!strncmp(returnedPointerOut, "GROUP-ID", 8uLL))
                {
                  if ((v249 & 1) == 0)
                  {
                    v254 = "GROUP-ID";
                    goto LABEL_689;
                  }

                  if (v53)
                  {
                    CFRelease(v53);
                    v251 = v675;
                  }

                  v53 = CFStringCreateWithBytes(structureAllocator, v251, v673, 0x600u, 1u);
                  goto LABEL_690;
                }

                if (strncmp(v250, "LANGUAGE", 8uLL))
                {
                  if (strncmp(v250, "CHANNELS", 8uLL))
                  {
                    goto LABEL_690;
                  }

                  if ((v249 & 1) == 0)
                  {
                    v254 = "CHANNELS";
                    goto LABEL_689;
                  }

                  if (v546)
                  {
                    CFRelease(v546);
                    v251 = v675;
                  }

                  v546 = CFStringCreateWithBytes(structureAllocator, v251, v673, 0x600u, 1u);
                  goto LABEL_690;
                }

                if (v52)
                {
                  v542 = "LANGUAGE";
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294955031, &v648, @"%s: duplicate language");
                  if (v249)
                  {
                    goto LABEL_668;
                  }
                }

                else if (v249)
                {
LABEL_668:
                  v52 = CFStringCreateWithBytes(structureAllocator, v675, v673, 0x600u, 1u);
                  goto LABEL_690;
                }

                v254 = "LANGUAGE";
                goto LABEL_689;
              }

              if (strncmp(returnedPointerOut, "DEFAULT", 7uLL))
              {
                goto LABEL_690;
              }

              v253 = &v633[1];
            }

            v255 = sp_MatchYesOrNo(v250, v251, &v648, v253);
            goto LABEL_646;
          }

          if (temporaryBlock == 3)
          {
            if (*returnedPointerOut != 85 || returnedPointerOut[1] != 82 || returnedPointerOut[2] != 73)
            {
              goto LABEL_690;
            }

            if (type[0])
            {
              StreamingPlaylistCreateMediaURLWithBytes(v675, v673, baseURL, v560, &v654, &v653);
              goto LABEL_690;
            }

            v254 = "URI";
            goto LABEL_689;
          }

          if (temporaryBlock != 4)
          {
            goto LABEL_690;
          }

          if (!strncmp(returnedPointerOut, "TYPE", 4uLL))
          {
            if (!strncasecmp(v251, "AUDIO", 5uLL))
            {
              v242 = 1936684398;
            }

            else if (!strncasecmp(v251, "VIDEO", 5uLL))
            {
              v242 = 1986618469;
            }

            else if (!strncasecmp(v251, "SUBTITLES", 9uLL))
            {
              v242 = 1935832172;
            }

            else if (!strncasecmp(v251, "CLOSED-CAPTIONS", 0xFuLL))
            {
              v242 = 1668047728;
            }

            else
            {
              v542 = v251;
              _StreamPlaylistLogError(0, 4294954985, &v648, @"Unknown type %s in EXT-X-MEDIA");
              v581 = 0;
            }

            goto LABEL_690;
          }

          if (strncmp(v250, "NAME", 4uLL))
          {
            goto LABEL_690;
          }

          if (v51)
          {
            v542 = "NAME";
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955031, &v648, @"%s: duplicate name");
            if (v249)
            {
              goto LABEL_630;
            }
          }

          else if (v249)
          {
LABEL_630:
            v51 = CFStringCreateWithBytes(structureAllocator, v675, v673, 0x8000100u, 1u);
            goto LABEL_690;
          }

          v254 = "NAME";
          goto LABEL_689;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-MAP", 0xAuLL, &ii, &v648))
        {
          v264 = 0;
          v265 = 0;
          temporaryBlock = 0;
          v675 = 0;
          v673 = 0;
          while (1)
          {
            v266 = *ii;
            v83 = v266 > 0xD;
            v267 = (1 << v266) & 0x2401;
            if (!v83 && v267 != 0)
            {
              break;
            }

            *&returnedPointerOut = 0.0;
            *&blockBufferOut = 0;
            v672 = 0.0;
            *type = 0.0;
            v671 = 0;
            free(v673);
            v673 = 0;
            v269 = sp_ParseAttribute("#EXT-X-MAP", ii, 1, 0, &returnedPointerOut, &v672, &blockBufferOut, type, &ii, &v671, &v673, &v648);
            matched = v269;
            if (!a5 && v269)
            {
              goto LABEL_1486;
            }

            v270 = v671;
            if ((v671 & 2) != 0)
            {
              v265 = 1;
            }

            else if (*&returnedPointerOut != 0.0)
            {
              v271 = blockBufferOut;
              if (blockBufferOut)
              {
                if (*&v672 == 9)
                {
                  if (!strncmp(returnedPointerOut, "BYTERANGE", 9uLL))
                  {
                    if ((v270 & 1) == 0)
                    {
                      v320 = "BYTERANGE";
                      goto LABEL_913;
                    }

                    matched = PlaylistProcessByteRange(&temporaryBlock, &v675, 0, &blockBufferOut, *type, &v648);
                  }
                }

                else if (*&v672 == 3 && *returnedPointerOut == 85 && returnedPointerOut[1] == 82 && returnedPointerOut[2] == 73)
                {
                  if ((v671 & 1) == 0)
                  {
                    v320 = "URI";
LABEL_913:
                    v543 = v320;
                    matched = 4294954654;
                    _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s %s: missing quotes", "#EXT-X-MAP");
LABEL_765:
                    free(v673);
                    if (!v264)
                    {
LABEL_810:
                      if (!a5 && matched)
                      {
                        goto LABEL_1486;
                      }

                      if (v666)
                      {
                        LODWORD(v566) = 1;
                        FigMediaSegmentSpecifierSetIsReadInCurrent(v666, 1);
                        v294 = v667;
                        FigMediaSegmentSpecifierSetContentKeySpecifier(v666, v667);
                        v295 = v658;
                        FigMediaSegmentSpecifierSetIV(v666, v658);
                        if (v294)
                        {
                          EncryptionMethod = FigContentKeySpecifierGetEncryptionMethod(v294);
                          LODWORD(v566) = 1;
                          if (!v295 && EncryptionMethod == 3)
                          {
                            _StreamPlaylistLogError(0, 4294949666, &v648, @"Explicit IV is required for map entry for full segment encryption");
                            matched = 0;
                            LODWORD(v566) = 1;
                            if (!a5)
                            {
                              if (dword_1EAF17630)
                              {
                                LODWORD(v672) = 0;
                                type[0] = OS_LOG_TYPE_DEFAULT;
                                v306 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                                v307 = LODWORD(v672);
                                v308 = type[0];
                                if (os_log_type_enabled(v306, type[0]))
                                {
                                  v309 = v307;
                                }

                                else
                                {
                                  v309 = v307 & 0xFFFFFFFE;
                                }

                                if (v309)
                                {
                                  LODWORD(blockBufferOut) = 136315138;
                                  *(&blockBufferOut + 4) = "FigStreamPlaylistParseInProcess";
                                  LODWORD(v543) = 12;
                                  _os_log_send_and_compose_impl(v309, 0, &returnedPointerOut, 128, &dword_1962D5000, v306, v308, "<<<< StreamPlaylist >>>> %s: Explicit IV is required for map entry for full segment encryption", &blockBufferOut);
                                }

                                LODWORD(v566) = 1;
                                fig_log_call_emit_and_clean_up_after_send_and_compose();
                                matched = 0;
                              }
                            }
                          }
                        }
                      }

                      v591 = 1;
LABEL_854:
                      v70 = v604;
LABEL_855:
                      v76 = a5;
                      v66 = v551;
                      v68 = v555;
                      goto LABEL_149;
                    }

LABEL_809:
                    CFRelease(v264);
                    goto LABEL_810;
                  }

                  v272 = FigGetAllocatorForMedia();
                  v264 = CFStringCreateWithBytes(v272, v271, *type, 0x8000100u, 0);
                }
              }
            }

            if (matched)
            {
              goto LABEL_765;
            }
          }

          if (v265)
          {
            matched = 0;
            goto LABEL_765;
          }

          if (!v264)
          {
            FigStreamPlaylistParseInProcess_cold_20();
            matched = 4294954654;
            goto LABEL_1486;
          }

          if (v666)
          {
            CFRelease(v666);
            v666 = 0;
          }

          MatchingMapEntry = FindMatchingMapEntry(v661, v264, v675, temporaryBlock);
          v666 = MatchingMapEntry;
          if (MatchingMapEntry && (CFRetain(MatchingMapEntry), v666))
          {
            matched = 0;
          }

          else
          {
            matched = PlaylistCreateMapEntry(v661, v264, v675, temporaryBlock, v668, &v666);
          }

          free(v673);
          v570 = 1;
          goto LABEL_809;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-PART-INF", 0xFuLL, &ii, &v648))
        {
          v276 = PlaylistProcessPartInfTag(v661, ii, &v648);
          matched = v276;
          if (!a5 && v276)
          {
            goto LABEL_1486;
          }

          if (v594)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one of each Media Playlist Tag");
          }

          if (!a5 && matched)
          {
            goto LABEL_1486;
          }

          v277 = ii;
          ii = &v277[strcspn(ii, "\r\n")];
          v594 = 1;
          goto LABEL_698;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-PART", 0xBuLL, &ii, &v648))
        {
          if (!v660)
          {
            v282 = 0;
            do
            {
              v283 = FigMediaPlaylistGetMediaSegmentSpecifiers(v661);
              if (v283)
              {
                v283 = CFArrayGetCount(v283);
              }

              if (v282 >= v283)
              {
                goto LABEL_800;
              }

              v284 = FigMediaPlaylistGetMediaSegmentSpecifiers(v661);
              v285 = CFArrayGetValueAtIndex(v284, v282);
              v286 = FigMediaSegmentSpecifierGetMediaSequence(v285);
              ++v282;
            }

            while (v286 != FigMediaSegmentSpecifierGetMediaSequence(v659));
            DiscontinuityDomain = FigMediaSegmentSpecifierGetMediaSequence(v285);
          }

LABEL_800:
          v287 = v74 + v75;
          if (v74 == 0.0)
          {
            v287 = 0.0;
          }

          v288 = PlaylistProcessPartTag(v661, ii, v659, v667, v666, DiscontinuityDomain, v658, &v648, v287, &v645);
          matched = v288;
          if (!a5 && v288)
          {
            goto LABEL_1486;
          }

          v289 = ii;
          ii = &v289[strcspn(ii, "\r\n")];
          FigMediaPlaylistSetHasPartTag(v661, 1);
          FigMediaSegmentSpecifierGetPartialSegments(v659);
          v290 = FigCFArrayGetLastValue();
          if (v290)
          {
            v291 = v290;
            v292 = FigMediaSegmentSpecifierGetTimeInSeconds(v290);
            if (BYTE4(v575))
            {
              v293 = 1;
            }

            else
            {
              v293 = FigMediaSegmentSpecifierIsMarkedIndependent(v291) != 0;
            }

            BYTE4(v575) = v293;
          }

          else
          {
            BYTE4(v575) = BYTE4(v575) != 0;
            v292 = 0.0;
          }

          v75 = v75 + v292;
          goto LABEL_854;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-RENDITION-REPORT", 0x17uLL, &ii, &v648))
        {
          v302 = PlaylistProcessRenditionReportTag(v661, ii, baseURL, &v648);
          matched = v302;
          if (!a5 && v302)
          {
            goto LABEL_1486;
          }

          v303 = ii;
          ii = &v303[strcspn(ii, "\r\n")];
          HIDWORD(v568) = 1;
          goto LABEL_698;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-PRELOAD-HINT", 0x13uLL, &ii, &v648))
        {
          v304 = PlaylistProcessPreloadHintTag(v661, ii, &v648);
          matched = v304;
          if (!a5 && v304)
          {
            goto LABEL_1486;
          }

          v305 = ii;
          ii = &v305[strcspn(ii, "\r\n")];
          LODWORD(v568) = 1;
          goto LABEL_698;
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-START", 0xCuLL, &ii, &v648))
        {
          v310 = 0;
          v311 = 0;
          *&returnedPointerOut = 0.0;
          v633[1] = 0;
          *&blockBufferOut = 0;
          while (1)
          {
            while (1)
            {
              v312 = *ii;
              v83 = v312 > 0xD;
              v313 = (1 << v312) & 0x2401;
              if (!v83 && v313 != 0)
              {
                matched = 0;
                v318 = 1;
LABEL_907:
                free(blockBufferOut);
                if (!v318 || v310)
                {
                  if (a5)
                  {
                    v325 = 1;
                  }

                  else
                  {
                    v325 = v318;
                  }

                  if ((v325 & 1) == 0)
                  {
                    goto LABEL_1486;
                  }
                }

                else if (v311)
                {
                  if (v636)
                  {
                    FigMultivariantPlaylistSetHasStartTime(v636, 1);
                    FigMultivariantPlaylistSetStartTimeValue(v636, *&returnedPointerOut);
                    v319 = v633[1];
                    FigMultivariantPlaylistSetIsStartTimePrecise(v636, v633[1]);
                  }

                  else
                  {
                    v319 = v633[1];
                  }

                  FigMediaPlaylistSetHasStartTime(v661, 1);
                  FigMediaPlaylistSetStartTimeValue(v661, *&returnedPointerOut);
                  FigMediaPlaylistSetIsStartTimePrecise(v661, v319);
                }

                else
                {
                  v542 = "#EXT-X-START";
                  v543 = "TIME-OFFSET";
                  _StreamPlaylistLogError(4294954654, 4294954977, &v648, @"%s : missing %s");
                }

                goto LABEL_854;
              }

              temporaryBlock = 0;
              v675 = 0;
              v673 = 0;
              v671 = 0;
              free(blockBufferOut);
              *&blockBufferOut = 0;
              v315 = sp_ParseAttribute("#EXT-X-START", ii, 1, 0, &v675, &v673, &temporaryBlock, &v672, &ii, &v671, &blockBufferOut, &v648);
              matched = v315;
              if (!a5 && v315)
              {
                goto LABEL_1486;
              }

              if ((v671 & 2) == 0)
              {
                break;
              }

              v310 = 1;
              if (v315)
              {
LABEL_906:
                v318 = 0;
                goto LABEL_907;
              }
            }

            v316 = v675;
            if (!v675)
            {
              goto LABEL_903;
            }

            v317 = temporaryBlock;
            if (!temporaryBlock)
            {
              goto LABEL_903;
            }

            if (v673 == 7)
            {
              if (!strncmp(v675, "PRECISE", 7uLL))
              {
                matched = sp_MatchYesOrNo(v316, v317, &v648, &v633[1]);
              }

              goto LABEL_903;
            }

            if (v673 == 11 && !strncmp(v675, "TIME-OFFSET", 0xBuLL))
            {
              *type = 0.0;
              matched = sp_strtod(v317, type, &returnedPointerOut, 0, "Time Offset", &v648);
              if (matched)
              {
                goto LABEL_906;
              }

              v311 = 1;
            }

            else
            {
LABEL_903:
              if (matched)
              {
                goto LABEL_906;
              }
            }
          }
        }

        if (sp_MatchTagAndColon(v69, "#EXT-X-SESSION-DATA", 0x13uLL, &ii, &v648) || sp_MatchTagAndColon(v69, "#EXT-X-SESSION-DATA-ITUNES", 0x1AuLL, &ii, &v648))
        {
          matched = PlaylistProcessSessionDataTag(v636, ii, baseURL, &v648);
          v331 = ii;
          ii = &v331[strcspn(ii, "\r\n")];
          LODWORD(v580) = 1;
          goto LABEL_698;
        }

        if (StreamingPlaylist_MatchAlphanumericStringExactly(v69, "#EXT-X-INDEPENDENT-SEGMENTS", 0x1BuLL, &ii, v321, v322, v323, v324))
        {
          FigMediaPlaylistSetHasIndependentSegments(v661, 1);
          if (v636)
          {
            FigMultivariantPlaylistSetHasIndependentSegments(v636, 1);
          }

          matched = 0;
        }

        else
        {
          if (sp_MatchTagAndColon(v69, "#EXT-X-DATERANGE", 0x10uLL, &ii, &v648))
          {
            matched = PlaylistProcessTaggedRangeTag(v661, ii, &v646, &v648);
            v330 = ii;
            ii = &v330[strcspn(ii, "\r\n")];
            LODWORD(v567) = 1;
            goto LABEL_698;
          }

          if (StreamingPlaylist_MatchAlphanumericStringExactly(v69, "#EXT-X-GAP", 0xAuLL, &ii, v326, v327, v328, v329))
          {
            matched = 0;
            ii = &v69[strcspn(v69, "\r\n")];
            v574[4] = 1;
            v586 = 1;
          }

          else
          {
            if (sp_MatchTagAndColon(v69, "#EXT-X-DEFINE", 0xDuLL, &ii, &v648))
            {
              matched = PlaylistProcessVariableTag(ii, a11, a13, &v657, &v648);
              v332 = ii;
              ii = &v332[strcspn(ii, "\r\n")];
              goto LABEL_698;
            }

            if (sp_MatchTagAndColon(v69, "#EXT-X-SERVER-CONTROL", 0x15uLL, &ii, &v648))
            {
              if (HIDWORD(v567))
              {
                matched = 4294954654;
                _StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one of each Media Playlist Tag");
                if (!a5)
                {
                  goto LABEL_1486;
                }
              }

              matched = PlaylistProcessServerControlTag(v661, ii, &v648, PartHoldBackDuration, HoldBackDuration);
              v333 = ii;
              ii = &v333[strcspn(ii, "\r\n")];
              HIDWORD(v567) = 1;
              goto LABEL_698;
            }

            v334 = sp_MatchTagAndColon(v69, "#EXT-X-SKIP", 0xBuLL, &ii, &v648);
            if (v334)
            {
              *&blockBufferOut = 0;
              v675 = 0;
              *&returnedPointerOut = 0.0;
              v335 = v661;
              v336 = ii;
              v337 = FigMediaSegmentSpecifierGetMediaSequence(v659);
              matched = PlaylistProcessSkipTag(v335, v336, &v648, v337, v617, v660, &v660, &returnedPointerOut, &blockBufferOut, &v675);
              v338 = ii;
              ii = &v338[strcspn(ii, "\r\n")];
              if (v660)
              {
                NextSegment = FigMediaSegmentSpecifierGetPreviousSegment(v660);
              }

              else
              {
                NextSegment = 0;
              }

              if (v675)
              {
                if (v631)
                {
                  v339 = FigCFArrayCreateConcatenationOfTwoArrays();
                  v340 = v339;
                  if (v339)
                  {
                    CFRetain(v339);
                  }

                  CFRelease(v631);
                  CFRelease(v675);
                  v631 = v340;
                }

                else
                {
                  v631 = v675;
                }
              }

              v128 = 0;
              if (!matched && NextSegment)
              {
                v341 = FigMediaSegmentSpecifierGetStartOffset(NextSegment);
                v342 = FigMediaSegmentSpecifierGetBytesToRead(NextSegment);
                v343 = v667;
                v344 = FigMediaSegmentSpecifierGetContentKeySpecifier(NextSegment);
                v667 = v344;
                if (v344)
                {
                  CFRetain(v344);
                }

                if (v343)
                {
                  CFRelease(v343);
                }

                v345 = v666;
                v346 = FigMediaSegmentSpecifierGetMapSegmentSpecifier(NextSegment);
                v666 = v346;
                if (v346)
                {
                  CFRetain(v346);
                }

                if (v345)
                {
                  CFRelease(v345);
                }

                BitRate = FigMediaSegmentSpecifierGetBitRate(NextSegment);
                DiscontinuityDomain = FigMediaSegmentSpecifierGetDiscontinuityDomain(NextSegment);
                v574[4] = FigMediaSegmentSpecifierIsMarkedAsGap(NextSegment);
                v668 = FigMediaSegmentSpecifierGetMediaSequence(v660);
                if (v617)
                {
                  CFRelease(v617);
                }

                v617 = 0;
                v588 = v342 + v341;
                key = &key[returnedPointerOut];
                v73 = v73 + *&blockBufferOut;
                v128 = 1;
              }

              v589 = 1;
              v193 = v624;
              v194 = v623;
              v70 = v604;
              v76 = a5;
              v66 = v66;
              v68 = v68;
              goto LABEL_487;
            }

            _StreamPlaylistLogError(v334, 4294955028, &v648, @"Unknown tag in playlist");
            matched = 0;
            ii = &v69[strcspn(v69, "\r\n")];
          }
        }
      }

      v70 = v70;
      v76 = a5;
      v66 = v66;
      v68 = v68;
      goto LABEL_151;
    }

    v603 = v70;
    *&returnedPointerOut = 0.0;
    *&blockBufferOut = 0;
    v635 = 1;
    v149 = sp_MatchTagAndColon(v69, "#EXT-X-I-FRAME-STREAM-INF", 0x19uLL, &returnedPointerOut, &v648);
    v549 = v149;
    if (v149)
    {
      v150 = "#EXT-X-I-FRAME-STREAM-INF";
    }

    else
    {
      v150 = "#EXT-X-STREAM-INF";
    }

    v151 = *v574;
    if (v149)
    {
      v151 = 1;
    }

    *v574 = v151;
    v152 = StreamingPlaylist_SkipSpacesAndTabs(ii, &v648);
    v584 = 0;
    v553 = 0;
    matched = 0;
    for (ii = v152; ; v152 = ii)
    {
      v153 = *v152;
      v83 = v153 > 0xD;
      v154 = (1 << v153) & 0x2401;
      if (!v83 && v154 != 0)
      {
        break;
      }

      temporaryBlock = 0;
      v675 = 0;
      v672 = 0.0;
      v673 = 0;
      v671 = 0;
      free(blockBufferOut);
      *&blockBufferOut = 0;
      v156 = sp_ParseAttribute(v150, ii, 1, 0, &v675, &v673, &temporaryBlock, &v672, &ii, &v671, &blockBufferOut, &v648);
      matched = v156;
      if (!a5 && v156)
      {
        goto LABEL_1400;
      }

      v157 = v671;
      if ((v671 & 2) != 0)
      {
        v573 = 0;
        continue;
      }

      v158 = v66;
      v159 = v675;
      if (!v675)
      {
        goto LABEL_432;
      }

      v160 = temporaryBlock;
      if (!temporaryBlock)
      {
        goto LABEL_432;
      }

      if (v673 > 10)
      {
        if (v673 <= 15)
        {
          if (v673 == 11)
          {
            if (!strncmp(v675, "ALLOWED-CPC", 0xBuLL))
            {
              PlaylistExtractallowedCPCForFairPlayStreaming(v160, *&v672, &v648, &v643, v175, v176, v177, v178);
              matched = v189;
              if (v189)
              {
                v643 = 0;
                if (!a5)
                {
                  goto LABEL_1400;
                }
              }

              goto LABEL_432;
            }

            if (strncmp(v159, "VIDEO-RANGE", 0xBuLL))
            {
              goto LABEL_394;
            }

            if (!strncasecmp(v160, "SDR", 3uLL))
            {
              v569 = 0;
            }

            else
            {
              if (!strncasecmp(v160, "PQ", 2uLL))
              {
                v179 = 2;
              }

              else
              {
                if (strncasecmp(v160, "HLG", 3uLL))
                {
                  v542 = "VIDEO-RANGE";
                  matched = 4294954654;
                  _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: illegal value");
                  goto LABEL_432;
                }

                v179 = 1;
              }

              v569 = v179;
            }

LABEL_432:
            v66 = v158;
            continue;
          }

          if (v673 != 14)
          {
            if (v673 != 15)
            {
              goto LABEL_394;
            }

            if (!strncmp(v675, "CLOSED-CAPTIONS", 0xFuLL))
            {
              if (v157)
              {
                HIDWORD(v571) = 1;
                v624 = CFStringCreateWithBytes(structureAllocator, v160, *&v672, 0x600u, 1u);
              }

              else if (!strncasecmp(v160, "NONE", 4uLL))
              {
                LODWORD(v565) = 1;
              }

              else
              {
                matched = 4294954654;
                _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: missing quotes or illegal value", "CLOSED-CAPTIONS");
              }
            }

            else
            {
              if (!strncmp(v159, "VIDEO-IMMERSIVE", 0xFuLL))
              {
                if (!v553)
                {
                  if (PlaylistExtractVideoImmersiveAttribute(v160, *&v672, &v648, &cf))
                  {
                    FigStreamPlaylistParseInProcess_cold_8();
                    matched = 4294954654;
                    goto LABEL_1400;
                  }

                  v553 = 0;
                  matched = 0;
                }

                goto LABEL_432;
              }

LABEL_394:
              _StreamPlaylistLogError(0, 4294955022, &v648, @"Invalid attribute for %s", v150);
            }

            goto LABEL_432;
          }

          if (strncmp(v675, "_AVG-BANDWIDTH", 0xEuLL))
          {
            if (!strncmp(v159, "DISALLOWED-CPC", 0xEuLL))
            {
              PlaylistExtractDisallowedCPCForFairPlayStreaming(v160, *&v672, &v648, &v635, v170, v171, v172, v173);
              matched = v174;
              if (!a5 && v174)
              {
                goto LABEL_1400;
              }

              goto LABEL_432;
            }

            goto LABEL_394;
          }

LABEL_360:
          *type = 0.0;
          v180 = sp_strtoll(v160, &temporaryBlock, type, 1, "avg_bandwidth", &v648);
          if (*type <= 0)
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955021, &v648, @"Zero average bandwidth", v542);
          }

          else
          {
            matched = v180;
            v181 = v564;
            if (!v180)
            {
              v181 = *type;
            }

            v564 = v181;
          }

          goto LABEL_432;
        }

        if (v673 == 17)
        {
          if (strncmp(v675, "AVERAGE-BANDWIDTH", 0x11uLL))
          {
            if (strncmp(v159, "STABLE-VARIANT-ID", 0x11uLL))
            {
              goto LABEL_394;
            }

            v578 = CFStringCreateWithBytes(structureAllocator, v160, *&v672, 0x600u, 1u);
            goto LABEL_432;
          }

          goto LABEL_360;
        }

        if (v673 != 19)
        {
          if (v673 != 16 || strncmp(v675, "REQ-VIDEO-LAYOUT", 0x10uLL))
          {
            goto LABEL_394;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
            v160 = temporaryBlock;
          }

          if (PlaylistExtractVideoLayoutAttribute(v160, *&v672, &v648, &cf, &v662))
          {
            v542 = "#EXT-X-STREAM-INF";
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: Invalid video layout tag");
            if (!v662)
            {
              goto LABEL_1400;
            }

            v573 = 0;
          }

          matched = 0;
          LODWORD(v575) = 1;
          v553 = 1;
          goto LABEL_432;
        }

        if (strncmp(v675, "SUPPLEMENTAL-CODECS", 0x13uLL))
        {
          goto LABEL_394;
        }

        if (v157)
        {
          v621 = CFStringCreateWithBytes(structureAllocator, v160, *&v672, 0x600u, 1u);
          goto LABEL_432;
        }

        v190 = "SUPPLEMENTAL-CODECS";
LABEL_431:
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: missing quotes", v190);
        goto LABEL_432;
      }

      if (v673 <= 5)
      {
        if (v673 != 3)
        {
          if (v673 != 5)
          {
            goto LABEL_394;
          }

          if (!strncmp(v675, "AUDIO", 5uLL))
          {
            if (v157)
            {
              v619 = CFStringCreateWithBytes(structureAllocator, v160, *&v672, 0x600u, 1u);
              goto LABEL_432;
            }

            v190 = "AUDIO";
          }

          else
          {
            if (strncmp(v159, "VIDEO", 5uLL))
            {
              if (!strncmp(v159, "SCORE", 5uLL))
              {
                *type = -1.0;
                matched = sp_strtod(v160, &temporaryBlock, type, 0, "Alternate score", &v648);
                if (matched || (v168 = *type, *type < 0.0))
                {
                  _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: Invalid ranking score", *&v168, "#EXT-X-STREAM-INF");
                  v168 = *&v71;
                  if (matched)
                  {
                    goto LABEL_1400;
                  }
                }

                matched = 0;
                v71 = *&v168;
                goto LABEL_432;
              }

              goto LABEL_394;
            }

            if (v157)
            {
              v618 = CFStringCreateWithBytes(structureAllocator, v160, *&v672, 0x600u, 1u);
              goto LABEL_432;
            }

            v190 = "VIDEO";
          }

          goto LABEL_431;
        }

        if (*v675 != 85 || *(v675 + 1) != 82 || *(v675 + 2) != 73)
        {
          goto LABEL_394;
        }

        if (!v574[0])
        {
          v542 = v150;
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955018, &v648, @"Use of URI in %s");
          if (!a5)
          {
            goto LABEL_1400;
          }
        }

        v169 = v656;
        v66 = v158;
        if (v656)
        {
          v542 = v150;
          _StreamPlaylistLogError(0, 4294955018, &v648, @"Multiple URL in %s - ignoring old one");
          CFRelease(v169);
          v656 = 0;
          if (v655)
          {
            CFRelease(v655);
            v655 = 0;
          }
        }

        if (v157)
        {
          StreamingPlaylistCreateMediaURLWithBytes(temporaryBlock, *&v672, baseURL, v560, &v656, &v655);
          if (v656)
          {
            continue;
          }
        }

        else
        {
          v542 = "URI";
          _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: missing quotes");
        }

        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955034, &v648, @"Invalid URI");
      }

      else
      {
        if (v673 == 6)
        {
          if (strncmp(v675, "CODECS", 6uLL))
          {
            goto LABEL_394;
          }

          if (v157)
          {
            v620 = CFStringCreateWithBytes(structureAllocator, v160, *&v672, 0x600u, 1u);
            goto LABEL_432;
          }

          v190 = "CODECS";
          goto LABEL_431;
        }

        if (v673 == 9)
        {
          if (!strncmp(v675, "BANDWIDTH", 9uLL))
          {
            *type = 0.0;
            v182 = sp_strtoll(v160, &temporaryBlock, type, 1, "bandwidth", &v648);
            if (*type <= 0)
            {
              matched = 4294954654;
              _StreamPlaylistLogError(4294954654, 4294955021, &v648, @"Zero bandwidth", v542);
            }

            else
            {
              matched = v182;
              v183 = v563;
              if (!v182)
              {
                v183 = *type;
              }

              v563 = v183;
            }

            goto LABEL_432;
          }

          if (strncmp(v159, "SUBTITLES", 9uLL))
          {
            goto LABEL_394;
          }

          if (v157)
          {
            v623 = CFStringCreateWithBytes(structureAllocator, v160, *&v672, 0x600u, 1u);
            goto LABEL_432;
          }

          v190 = "SUBTITLES";
          goto LABEL_431;
        }

        if (v673 != 10)
        {
          goto LABEL_394;
        }

        v161 = strncmp(v675, "PROGRAM-ID", 0xAuLL);
        if (!v161)
        {
          v543 = v150;
          _StreamPlaylistLogError(v161, 4294955022, &v648, @"%s has been deprecated and is no longer a valid attribute for %s", "PROGRAM-ID");
          goto LABEL_432;
        }

        if (!strncmp(v159, "RESOLUTION", 0xAuLL))
        {
          if (!StreamingPlaylist_FindResolution(v160, &v664, &v663, &temporaryBlock, &v648))
          {
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"Could not parse resolution", v542);
          }

          goto LABEL_432;
        }

        if (!strncmp(v159, "FRAME-RATE", 0xAuLL))
        {
          if (v574[0])
          {
            v543 = v150;
            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294951063, &v648, @"%s: illegal attribute in %s", "FRAME-RATE");
          }

          else
          {
            matched = sp_strtod(v160, 0, &v644, 0, "frame rate", &v648);
          }

          goto LABEL_432;
        }

        if (!strncmp(v159, "HDCP-LEVEL", 0xAuLL))
        {
          if (!strncasecmp(v160, "TYPE-0", 6uLL))
          {
            v561 = 0;
          }

          else if (!strncasecmp(v160, "NONE", 4uLL))
          {
            v184 = -1;
LABEL_423:
            v561 = v184;
          }

          else
          {
            if (!strncasecmp(v160, "TYPE-1", 6uLL))
            {
              v184 = 1;
              goto LABEL_423;
            }

            matched = 4294954654;
            _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: illegal value", "HDCP-LEVEL");
          }

          goto LABEL_432;
        }

        if (strncmp(v159, "PATHWAY-ID", 0xAuLL))
        {
          goto LABEL_394;
        }

        if ((v157 & 1) == 0)
        {
          FigStreamPlaylistParseInProcess_cold_9();
          matched = 4294954654;
          goto LABEL_432;
        }

        v162 = *&v672;
        if (v672 != 0.0)
        {
          v163 = *&v672;
          while (1)
          {
            v165 = *v160++;
            v164 = v165;
            v166 = (v165 & 0xFFFFFFDF) - 65;
            v167 = (v165 - 48) >= 0xA && v166 >= 0x1A;
            if (v167 && (v164 - 45) >= 2 && v164 != 95)
            {
              break;
            }

            if (!--v163)
            {
              goto LABEL_396;
            }
          }

          v542 = v150;
          v543 = "PATHWAY-ID";
          matched = 4294954654;
          _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s: attribute %s contains illegal characters");
        }

LABEL_396:
        v66 = v158;
        if (!a5 && matched)
        {
          goto LABEL_1400;
        }

        if (v549)
        {
          v185 = v584;
        }

        else
        {
          v185 = v577;
        }

        if (v185)
        {
          CFRelease(v185);
          v162 = *&v672;
        }

        v186 = CFStringCreateWithBytes(structureAllocator, temporaryBlock, v162, 0x8000100u, 1u);
        v187 = v577;
        if (!v549)
        {
          v187 = v186;
        }

        v577 = v187;
        v188 = v584;
        if (v549)
        {
          v188 = v186;
        }

        v584 = v188;
      }
    }

    free(blockBufferOut);
    v191 = v656;
    if (v656)
    {
      if (v573 != 1)
      {
        v192 = v584;
        goto LABEL_456;
      }

      v230 = v577;
      v192 = v584;
      if (v549)
      {
        v230 = v584;
      }

      matched = PlaylistProcessAlternate(v636, v656, v655, v563, v564, v620, v621, v619, v644, v71, v618, v623, v624, v574[0], v664, v663, v578, v561, v569, v643, cf, v230, &v646 + 1, v635, &v648);
      v191 = v656;
      if (v656)
      {
LABEL_456:
        CFRelease(v191);
        v656 = 0;
      }

      v76 = a5;
      if (v655)
      {
        CFRelease(v655);
        v655 = 0;
      }

      if (v192)
      {
        CFRelease(v192);
      }

      if (matched)
      {
        goto LABEL_1400;
      }

      v128 = 1;
      v70 = 1;
      v193 = v624;
      v194 = v623;
    }

    else
    {
      v193 = v624;
      v194 = v623;
      if (v574[0])
      {
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955033, &v648, @"No URI in I-Frame variant");
        v194 = v623;
        v193 = v624;
      }

      v128 = 0;
      v70 = v603;
      v76 = a5;
    }

    v583 = 1;
LABEL_487:
    v624 = v193;
    v623 = v194;
    if (!v128)
    {
      goto LABEL_149;
    }

    if (v620)
    {
      CFRelease(v620);
      v194 = v623;
      v193 = v624;
    }

    if (v621)
    {
      CFRelease(v621);
      v194 = v623;
      v193 = v624;
    }

    if (v619)
    {
      CFRelease(v619);
      v194 = v623;
      v193 = v624;
    }

    if (v618)
    {
      CFRelease(v618);
      v194 = v623;
      v193 = v624;
    }

    if (v194)
    {
      CFRelease(v194);
      v193 = v624;
    }

    if (v193)
    {
      CFRelease(v193);
    }

    if (v578)
    {
      CFRelease(v578);
    }

    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v577)
    {
      CFRelease(v577);
    }

    v663 = -1;
    v664 = -1;
    v644 = 0.0;
    v643 = -1;
    if (v659)
    {
      CFRelease(v659);
      v659 = 0;
    }

    v212 = FigGetAllocatorForMedia();
    matched = FigMediaSegmentSpecifierCreateEmpty(v212, &v659);
    if (matched)
    {
      v51 = 0;
      v52 = 0;
      v22 = 0;
      v53 = 0;
      v629 = 0;
      v624 = 0;
      v623 = 0;
      v618 = 0;
      v619 = 0;
      v621 = 0;
      v620 = 0;
      goto LABEL_1401;
    }

    FigMediaSegmentSpecifierSetStartOffset(v659, v588);
    FigMediaSegmentSpecifierSetContentKeySpecifier(v659, v667);
    FigMediaSegmentSpecifierSetMapSegmentSpecifier(v659, v666);
    FigMediaSegmentSpecifierSetMediaSequence(v659, v668);
    v583 = 0;
    v615 = 0;
    v563 = 0;
    v564 = 0;
    v620 = 0;
    v621 = 0;
    v619 = 0;
    v618 = 0;
    v623 = 0;
    v624 = 0;
    *v574 = 0;
    v577 = 0;
    v578 = 0;
    LODWORD(v566) = 0;
    v573 = 1;
    v71 = -1.0;
    v561 = -2;
    v569 = -1;
LABEL_151:
    v113 = ii;
    v114 = *ii;
    v83 = v114 > 0xD;
    v115 = (1 << v114) & 0x2401;
    if (v83 || v115 == 0)
    {
      _StreamPlaylistLogError(0, 4294955032, &v648, @"extra characters at end of line");
    }

    v117 = &v113[strcspn(v113, "\r\n")];
    v118 = strspn(v117, "\r\n");
    v119 = 0;
    v69 = &v117[v118];
LABEL_157:
    if (v119)
    {
      if (v119 == 4)
      {
        goto LABEL_1400;
      }

      v51 = 0;
      v52 = 0;
      v22 = 0;
      v53 = 0;
      v629 = 0;
      v347 = 0;
      goto LABEL_1405;
    }
  }

  if (v66)
  {
    v542 = "#EXT-X-CONTENT-STEERING";
    matched = 4294954654;
    _StreamPlaylistLogError(4294954654, 4294949660, &v648, @"Can only have one %s tag");
    v76 = a5;
    goto LABEL_130;
  }

  v601 = v70;
  v78 = 0;
  v79 = 0;
  matched = 0;
  v80 = v636;
  v81 = ii;
  returnedPointerOut = ii;
  *&blockBufferOut = 0;
  while (2)
  {
    v82 = *v81;
    v83 = v82 > 0xD;
    v84 = (1 << v82) & 0x2401;
    if (!v83 && v84 != 0)
    {
      FigMultivariantPlaylistSetContentSteeringServerURL(v80, v78);
      FigMultivariantPlaylistSetContentSteeringInitPathwayID(v80, v79);
      if (!v78)
      {
        FigStreamPlaylistParseInProcess_cold_2();
        matched = 4294954654;
LABEL_562:
        v70 = v601;
        goto LABEL_124;
      }

LABEL_122:
      v70 = v601;
LABEL_123:
      CFRelease(v78);
      goto LABEL_124;
    }

    temporaryBlock = 0;
    v675 = 0;
    v672 = 0.0;
    v673 = 0;
    v671 = 0;
    v86 = blockBufferOut;
    if (blockBufferOut)
    {
      *&blockBufferOut = 0;
      free(v86);
    }

    matched = sp_ParseAttribute("#EXT-X-CONTENT-STEERING", v81, 1, 0, &v675, &v673, &temporaryBlock, &v672, &returnedPointerOut, &v671, &blockBufferOut, &v648);
    if (matched && !BYTE9(v650))
    {
      goto LABEL_213;
    }

    v87 = v671;
    if ((v671 & 2) != 0)
    {
      goto LABEL_213;
    }

    v88 = v68;
    v89 = v675;
    if (!v675)
    {
      goto LABEL_110;
    }

    v90 = temporaryBlock;
    if (!temporaryBlock)
    {
      goto LABEL_110;
    }

    v91 = v673;
    if (v673 != 10)
    {
      goto LABEL_109;
    }

    if (!strncmp(v675, "SERVER-URI", 0xAuLL))
    {
      if ((v87 & 1) == 0)
      {
        FigStreamPlaylistParseInProcess_cold_6();
LABEL_521:
        matched = 4294954654;
        v68 = v88;
        goto LABEL_213;
      }

      v68 = v88;
      if (v78)
      {
        v542 = "#EXT-X-CONTENT-STEERING";
        v543 = "SERVER-URI";
        matched = 4294954654;
        _StreamPlaylistLogError(4294954654, 4294955032, &v648, @"%s has multiple %s attributes");
        goto LABEL_122;
      }

      v98 = CFURLCreateWithBytes(structureAllocator, v90, *&v672, 0x8000100u, v649);
      if (v98)
      {
        v78 = v98;
        matched = 0;
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v542, v543, v544);
        matched = v99;
        if (v99 && !BYTE9(v650))
        {
          goto LABEL_562;
        }

        v78 = 0;
      }

      goto LABEL_111;
    }

    if (strncmp(v89, "PATHWAY-ID", 0xAuLL))
    {
LABEL_109:
      v543 = v89;
      v544 = "#EXT-X-CONTENT-STEERING";
      _StreamPlaylistLogError(0, 4294955022, &v648, @"Unrecognized attribute %.*s in %s", v91);
LABEL_110:
      v68 = v88;
LABEL_111:
      v81 = returnedPointerOut;
      continue;
    }

    break;
  }

  if ((v87 & 1) == 0)
  {
    FigStreamPlaylistParseInProcess_cold_5();
    goto LABEL_521;
  }

  v68 = v88;
  if (v79)
  {
    FigStreamPlaylistParseInProcess_cold_3();
    goto LABEL_212;
  }

  if (v672 == 0.0)
  {
LABEL_100:
    v79 = CFStringCreateWithBytes(structureAllocator, v90, *&v672, 0x8000100u, 1u);
    if (!v79)
    {
      FigStreamPlaylistParseInProcess_cold_4(type);
      matched = *type;
      goto LABEL_213;
    }

    goto LABEL_111;
  }

  v92 = v90;
  v93 = *&v672;
  while (1)
  {
    v95 = *v92++;
    v94 = v95;
    v96 = (v95 & 0xFFFFFFDF) - 65;
    v97 = (v95 - 48) >= 0xA && v96 >= 0x1A;
    if (v97 && (v94 - 45) >= 2 && v94 != 95)
    {
      break;
    }

    if (!--v93)
    {
      goto LABEL_100;
    }
  }

  FigStreamPlaylistParseInProcess_cold_7();
  v79 = 0;
LABEL_212:
  matched = 4294954654;
LABEL_213:
  v70 = v601;
  if (v78)
  {
    goto LABEL_123;
  }

LABEL_124:
  if (v79)
  {
    CFRelease(v79);
  }

  v76 = a5;
  if (blockBufferOut)
  {
    free(blockBufferOut);
  }

  if (a5 || !matched)
  {
LABEL_130:
    v104 = ii;
    ii = &v104[strcspn(ii, "\r\n")];
    v66 = 1;
    goto LABEL_149;
  }

LABEL_1400:
  v51 = 0;
  v52 = 0;
  v22 = 0;
  v53 = 0;
  v629 = 0;
LABEL_1401:
  v607 = 0;
  v609 = 0;
LABEL_1402:
  if (v659)
  {
    CFRelease(v659);
  }

  v347 = !v607 && v609;
LABEL_1405:
  if (*__error())
  {
    if (v347)
    {
      goto LABEL_1414;
    }

LABEL_1409:
    if ((*a4 & 1) == 0)
    {
      if (a15 && !*a15 && !matched)
      {
        *a15 = v661;
        v661 = 0;
      }

LABEL_1418:
      if (v636)
      {
        CFRelease(v636);
      }

      goto LABEL_1420;
    }
  }

  else
  {
    *__error() = v596;
    if (!v347)
    {
      goto LABEL_1409;
    }
  }

LABEL_1414:
  if (!a14 || *a14 || matched)
  {
    goto LABEL_1418;
  }

  *a14 = v636;
  v636 = 0;
LABEL_1420:
  if (v661)
  {
    CFRelease(v661);
  }

  if (v629)
  {
    CFRelease(v629);
  }

  if (v667)
  {
    CFRelease(v667);
  }

  if (v666)
  {
    CFRelease(v666);
  }

  if (v610)
  {
    CFRelease(v610);
  }

  if (v656)
  {
    CFRelease(v656);
    v656 = 0;
  }

  if (v655)
  {
    CFRelease(v655);
    v655 = 0;
  }

  if (v617)
  {
    CFRelease(v617);
  }

  if (v631)
  {
    CFRelease(v631);
  }

  if (v620)
  {
    CFRelease(v620);
  }

  if (v621)
  {
    CFRelease(v621);
  }

  if (v619)
  {
    CFRelease(v619);
  }

  if (v618)
  {
    CFRelease(v618);
  }

  if (v623)
  {
    CFRelease(v623);
  }

  if (v624)
  {
    CFRelease(v624);
  }

  if (v658)
  {
    CFRelease(v658);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v652)
  {
    CFRelease(v652);
    v652 = 0;
  }

  if (v52)
  {
    CFRelease(v52);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v654)
  {
    CFRelease(v654);
    v654 = 0;
  }

  if (v653)
  {
    CFRelease(v653);
    v653 = 0;
  }

  if (v51)
  {
    CFRelease(v51);
  }

  if (*(&v649 + 1))
  {
    CFRelease(*(&v649 + 1));
    *(&v649 + 1) = 0;
  }

  v540 = v651;
  if (v651)
  {
    v651 = 0;
    free(v540);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  if (value)
  {
    CFRelease(value);
  }

  return matched;
}